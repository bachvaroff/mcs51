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
                                    147 	.globl _putchar
                                    148 	.globl _getchar
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
                                    305 ;--------------------------------------------------------
                                    306 ; absolute internal ram data
                                    307 ;--------------------------------------------------------
                                    308 	.area IABS    (ABS,DATA)
                                    309 	.area IABS    (ABS,DATA)
                                    310 ;--------------------------------------------------------
                                    311 ; bit data
                                    312 ;--------------------------------------------------------
                                    313 	.area BSEG    (BIT)
                                    314 ;--------------------------------------------------------
                                    315 ; paged external ram data
                                    316 ;--------------------------------------------------------
                                    317 	.area PSEG    (PAG,XDATA)
                                    318 ;--------------------------------------------------------
                                    319 ; external ram data
                                    320 ;--------------------------------------------------------
                                    321 	.area XSEG    (XDATA)
      009000                        322 _s:
      009000                        323 	.ds 12
      00900C                        324 _c:
      00900C                        325 	.ds 16409
                                    326 ;--------------------------------------------------------
                                    327 ; absolute external ram data
                                    328 ;--------------------------------------------------------
                                    329 	.area XABS    (ABS,XDATA)
                                    330 ;--------------------------------------------------------
                                    331 ; external initialized ram data
                                    332 ;--------------------------------------------------------
                                    333 	.area XISEG   (XDATA)
      00D027                        334 _deltas:
      00D027                        335 	.ds 170
                                    336 	.area HOME    (CODE)
                                    337 	.area GSINIT0 (CODE)
                                    338 	.area GSINIT1 (CODE)
                                    339 	.area GSINIT2 (CODE)
                                    340 	.area GSINIT3 (CODE)
                                    341 	.area GSINIT4 (CODE)
                                    342 	.area GSINIT5 (CODE)
                                    343 	.area GSINIT  (CODE)
                                    344 	.area GSFINAL (CODE)
                                    345 	.area CSEG    (CODE)
                                    346 ;--------------------------------------------------------
                                    347 ; interrupt vector 
                                    348 ;--------------------------------------------------------
                                    349 	.area HOME    (CODE)
      002000                        350 __interrupt_vect:
      002000 02 20 34         [24]  351 	ljmp	__sdcc_gsinit_startup
                                    352 ;--------------------------------------------------------
                                    353 ; global & static initialisations
                                    354 ;--------------------------------------------------------
                                    355 	.area HOME    (CODE)
                                    356 	.area GSINIT  (CODE)
                                    357 	.area GSFINAL (CODE)
                                    358 	.area GSINIT  (CODE)
                                    359 	.globl __sdcc_gsinit_startup
                                    360 	.globl __sdcc_program_startup
                                    361 	.globl __start__stack
                                    362 	.globl __mcs51_genXINIT
                                    363 	.globl __mcs51_genXRAMCLEAR
                                    364 	.globl __mcs51_genRAMCLEAR
                                    365 	.area GSFINAL (CODE)
      00208D 02 20 03         [24]  366 	ljmp	__sdcc_program_startup
                                    367 ;--------------------------------------------------------
                                    368 ; Home
                                    369 ;--------------------------------------------------------
                                    370 	.area HOME    (CODE)
                                    371 	.area HOME    (CODE)
      002003                        372 __sdcc_program_startup:
      002003 02 64 A3         [24]  373 	ljmp	_main
                                    374 ;	return from main will return to caller
                                    375 ;--------------------------------------------------------
                                    376 ; code
                                    377 ;--------------------------------------------------------
                                    378 	.area CSEG    (CODE)
                                    379 ;------------------------------------------------------------
                                    380 ;Allocation info for local variables in function 'putchar'
                                    381 ;------------------------------------------------------------
                                    382 ;c                         Allocated to registers 
                                    383 ;------------------------------------------------------------
                                    384 ;	calc.c:16: int putchar(int c) __naked {
                                    385 ;	-----------------------------------------
                                    386 ;	 function putchar
                                    387 ;	-----------------------------------------
      002BD5                        388 _putchar:
                                    389 ;	naked function: no prologue.
                                    390 ;	calc.c:21: __endasm;
      002BD5 E5 82            [12]  391 	mov	a, dpl
      002BD7 02 00 30         [24]  392 	ljmp	0x0030
                                    393 ;	calc.c:22: }
                                    394 ;	naked function: no epilogue.
                                    395 ;------------------------------------------------------------
                                    396 ;Allocation info for local variables in function 'getchar'
                                    397 ;------------------------------------------------------------
                                    398 ;	calc.c:24: int getchar(void) __naked {
                                    399 ;	-----------------------------------------
                                    400 ;	 function getchar
                                    401 ;	-----------------------------------------
      002BDA                        402 _getchar:
                                    403 ;	naked function: no prologue.
                                    404 ;	calc.c:30: __endasm;
      002BDA 12 00 32         [24]  405 	lcall	0x0032
      002BDD F5 82            [12]  406 	mov	dpl, a
      002BDF 75 83 00         [24]  407 	mov	dph, #0
      002BE2 22               [24]  408 	ret
                                    409 ;	calc.c:31: }
                                    410 ;	naked function: no epilogue.
                                    411 ;------------------------------------------------------------
                                    412 ;Allocation info for local variables in function 'getchar_poll'
                                    413 ;------------------------------------------------------------
                                    414 ;	calc.c:33: int getchar_poll(void) __naked {
                                    415 ;	-----------------------------------------
                                    416 ;	 function getchar_poll
                                    417 ;	-----------------------------------------
      002BE3                        418 _getchar_poll:
                                    419 ;	naked function: no prologue.
                                    420 ;	calc.c:45: __endasm;
      002BE3 74 FF            [12]  421 	mov	a, #0xff
      002BE5 F5 F0            [12]  422 	mov	b, a
      002BE7 30 98 07         [24]  423 	jnb	ri, nochar
      002BEA C2 98            [12]  424 	clr	ri
      002BEC E5 99            [12]  425 	mov	a, sbuf
      002BEE 75 F0 00         [24]  426 	mov	b, #0
      002BF1                        427 	nochar:
      002BF1 F5 82            [12]  428 	mov	dpl, a
      002BF3 85 F0 83         [24]  429 	mov	dph, b
      002BF6 22               [24]  430 	ret
                                    431 ;	calc.c:46: }
                                    432 ;	naked function: no epilogue.
                                    433 ;------------------------------------------------------------
                                    434 ;Allocation info for local variables in function 'accumulate'
                                    435 ;------------------------------------------------------------
                                    436 ;delta                     Allocated to stack - _bp -5
                                    437 ;_ctx                      Allocated to registers r5 r6 r7 
                                    438 ;ctx                       Allocated to stack - _bp +8
                                    439 ;d                         Allocated to stack - _bp +11
                                    440 ;sloc0                     Allocated to stack - _bp +1
                                    441 ;sloc1                     Allocated to stack - _bp +4
                                    442 ;------------------------------------------------------------
                                    443 ;	calc.c:63: static int accumulate(void *_ctx, delta_t *delta) __reentrant {
                                    444 ;	-----------------------------------------
                                    445 ;	 function accumulate
                                    446 ;	-----------------------------------------
      002BF7                        447 _accumulate:
                           000007   448 	ar7 = 0x07
                           000006   449 	ar6 = 0x06
                           000005   450 	ar5 = 0x05
                           000004   451 	ar4 = 0x04
                           000003   452 	ar3 = 0x03
                           000002   453 	ar2 = 0x02
                           000001   454 	ar1 = 0x01
                           000000   455 	ar0 = 0x00
      002BF7 C0 08            [24]  456 	push	_bp
      002BF9 E5 81            [12]  457 	mov	a,sp
      002BFB F5 08            [12]  458 	mov	_bp,a
      002BFD 24 0E            [12]  459 	add	a,#0x0e
      002BFF F5 81            [12]  460 	mov	sp,a
      002C01 AD 82            [24]  461 	mov	r5,dpl
      002C03 AE 83            [24]  462 	mov	r6,dph
      002C05 AF F0            [24]  463 	mov	r7,b
                                    464 ;	calc.c:64: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
      002C07 E5 08            [12]  465 	mov	a,_bp
      002C09 24 08            [12]  466 	add	a,#0x08
      002C0B F8               [12]  467 	mov	r0,a
      002C0C A6 05            [24]  468 	mov	@r0,ar5
      002C0E 08               [12]  469 	inc	r0
      002C0F A6 06            [24]  470 	mov	@r0,ar6
      002C11 08               [12]  471 	inc	r0
      002C12 A6 07            [24]  472 	mov	@r0,ar7
                                    473 ;	calc.c:69: if (!ctx->acc_valid) {
      002C14 E5 08            [12]  474 	mov	a,_bp
      002C16 24 08            [12]  475 	add	a,#0x08
      002C18 F8               [12]  476 	mov	r0,a
      002C19 74 06            [12]  477 	mov	a,#0x06
      002C1B 26               [12]  478 	add	a,@r0
      002C1C FA               [12]  479 	mov	r2,a
      002C1D E4               [12]  480 	clr	a
      002C1E 08               [12]  481 	inc	r0
      002C1F 36               [12]  482 	addc	a,@r0
      002C20 FB               [12]  483 	mov	r3,a
      002C21 08               [12]  484 	inc	r0
      002C22 86 04            [24]  485 	mov	ar4,@r0
      002C24 8A 82            [24]  486 	mov	dpl,r2
      002C26 8B 83            [24]  487 	mov	dph,r3
      002C28 8C F0            [24]  488 	mov	b,r4
      002C2A 12 6F D1         [24]  489 	lcall	__gptrget
      002C2D 70 31            [24]  490 	jnz	00102$
                                    491 ;	calc.c:70: ctx->acc_valid = 1;
      002C2F 8A 82            [24]  492 	mov	dpl,r2
      002C31 8B 83            [24]  493 	mov	dph,r3
      002C33 8C F0            [24]  494 	mov	b,r4
      002C35 74 01            [12]  495 	mov	a,#0x01
      002C37 12 6B 56         [24]  496 	lcall	__gptrput
                                    497 ;	calc.c:71: ctx->acc = 0l;
      002C3A E5 08            [12]  498 	mov	a,_bp
      002C3C 24 08            [12]  499 	add	a,#0x08
      002C3E F8               [12]  500 	mov	r0,a
      002C3F 74 02            [12]  501 	mov	a,#0x02
      002C41 26               [12]  502 	add	a,@r0
      002C42 FA               [12]  503 	mov	r2,a
      002C43 E4               [12]  504 	clr	a
      002C44 08               [12]  505 	inc	r0
      002C45 36               [12]  506 	addc	a,@r0
      002C46 FB               [12]  507 	mov	r3,a
      002C47 08               [12]  508 	inc	r0
      002C48 86 04            [24]  509 	mov	ar4,@r0
      002C4A 8A 82            [24]  510 	mov	dpl,r2
      002C4C 8B 83            [24]  511 	mov	dph,r3
      002C4E 8C F0            [24]  512 	mov	b,r4
      002C50 E4               [12]  513 	clr	a
      002C51 12 6B 56         [24]  514 	lcall	__gptrput
      002C54 A3               [24]  515 	inc	dptr
      002C55 12 6B 56         [24]  516 	lcall	__gptrput
      002C58 A3               [24]  517 	inc	dptr
      002C59 12 6B 56         [24]  518 	lcall	__gptrput
      002C5C A3               [24]  519 	inc	dptr
      002C5D 12 6B 56         [24]  520 	lcall	__gptrput
      002C60                        521 00102$:
                                    522 ;	calc.c:74: d = strtol(ctx->digit, NULL, ctx->base);
      002C60 E5 08            [12]  523 	mov	a,_bp
      002C62 24 08            [12]  524 	add	a,#0x08
      002C64 F8               [12]  525 	mov	r0,a
      002C65 86 82            [24]  526 	mov	dpl,@r0
      002C67 08               [12]  527 	inc	r0
      002C68 86 83            [24]  528 	mov	dph,@r0
      002C6A 08               [12]  529 	inc	r0
      002C6B 86 F0            [24]  530 	mov	b,@r0
      002C6D 12 6F D1         [24]  531 	lcall	__gptrget
      002C70 FB               [12]  532 	mov	r3,a
      002C71 A3               [24]  533 	inc	dptr
      002C72 12 6F D1         [24]  534 	lcall	__gptrget
      002C75 FC               [12]  535 	mov	r4,a
      002C76 E5 08            [12]  536 	mov	a,_bp
      002C78 24 08            [12]  537 	add	a,#0x08
      002C7A F8               [12]  538 	mov	r0,a
      002C7B 74 07            [12]  539 	mov	a,#0x07
      002C7D 26               [12]  540 	add	a,@r0
      002C7E FA               [12]  541 	mov	r2,a
      002C7F E4               [12]  542 	clr	a
      002C80 08               [12]  543 	inc	r0
      002C81 36               [12]  544 	addc	a,@r0
      002C82 FE               [12]  545 	mov	r6,a
      002C83 08               [12]  546 	inc	r0
      002C84 86 07            [24]  547 	mov	ar7,@r0
      002C86 C0 03            [24]  548 	push	ar3
      002C88 C0 04            [24]  549 	push	ar4
      002C8A E4               [12]  550 	clr	a
      002C8B C0 E0            [24]  551 	push	acc
      002C8D C0 E0            [24]  552 	push	acc
      002C8F C0 E0            [24]  553 	push	acc
      002C91 8A 82            [24]  554 	mov	dpl,r2
      002C93 8E 83            [24]  555 	mov	dph,r6
      002C95 8F F0            [24]  556 	mov	b,r7
      002C97 12 69 18         [24]  557 	lcall	_strtol
      002C9A C8               [12]  558 	xch	a,r0
      002C9B E5 08            [12]  559 	mov	a,_bp
      002C9D 24 0B            [12]  560 	add	a,#0x0b
      002C9F C8               [12]  561 	xch	a,r0
      002CA0 A6 82            [24]  562 	mov	@r0,dpl
      002CA2 08               [12]  563 	inc	r0
      002CA3 A6 83            [24]  564 	mov	@r0,dph
      002CA5 08               [12]  565 	inc	r0
      002CA6 A6 F0            [24]  566 	mov	@r0,b
      002CA8 08               [12]  567 	inc	r0
      002CA9 F6               [12]  568 	mov	@r0,a
      002CAA E5 81            [12]  569 	mov	a,sp
      002CAC 24 FB            [12]  570 	add	a,#0xfb
      002CAE F5 81            [12]  571 	mov	sp,a
                                    572 ;	calc.c:75: ctx->acc = ctx->acc * (long)ctx->base + d;
      002CB0 E5 08            [12]  573 	mov	a,_bp
      002CB2 24 08            [12]  574 	add	a,#0x08
      002CB4 F8               [12]  575 	mov	r0,a
      002CB5 A9 08            [24]  576 	mov	r1,_bp
      002CB7 09               [12]  577 	inc	r1
      002CB8 74 02            [12]  578 	mov	a,#0x02
      002CBA 26               [12]  579 	add	a,@r0
      002CBB F7               [12]  580 	mov	@r1,a
      002CBC E4               [12]  581 	clr	a
      002CBD 08               [12]  582 	inc	r0
      002CBE 36               [12]  583 	addc	a,@r0
      002CBF 09               [12]  584 	inc	r1
      002CC0 F7               [12]  585 	mov	@r1,a
      002CC1 08               [12]  586 	inc	r0
      002CC2 09               [12]  587 	inc	r1
      002CC3 E6               [12]  588 	mov	a,@r0
      002CC4 F7               [12]  589 	mov	@r1,a
      002CC5 A8 08            [24]  590 	mov	r0,_bp
      002CC7 08               [12]  591 	inc	r0
      002CC8 86 82            [24]  592 	mov	dpl,@r0
      002CCA 08               [12]  593 	inc	r0
      002CCB 86 83            [24]  594 	mov	dph,@r0
      002CCD 08               [12]  595 	inc	r0
      002CCE 86 F0            [24]  596 	mov	b,@r0
      002CD0 E5 08            [12]  597 	mov	a,_bp
      002CD2 24 04            [12]  598 	add	a,#0x04
      002CD4 F9               [12]  599 	mov	r1,a
      002CD5 12 6F D1         [24]  600 	lcall	__gptrget
      002CD8 F7               [12]  601 	mov	@r1,a
      002CD9 A3               [24]  602 	inc	dptr
      002CDA 12 6F D1         [24]  603 	lcall	__gptrget
      002CDD 09               [12]  604 	inc	r1
      002CDE F7               [12]  605 	mov	@r1,a
      002CDF A3               [24]  606 	inc	dptr
      002CE0 12 6F D1         [24]  607 	lcall	__gptrget
      002CE3 09               [12]  608 	inc	r1
      002CE4 F7               [12]  609 	mov	@r1,a
      002CE5 A3               [24]  610 	inc	dptr
      002CE6 12 6F D1         [24]  611 	lcall	__gptrget
      002CE9 09               [12]  612 	inc	r1
      002CEA F7               [12]  613 	mov	@r1,a
      002CEB E5 08            [12]  614 	mov	a,_bp
      002CED 24 08            [12]  615 	add	a,#0x08
      002CEF F8               [12]  616 	mov	r0,a
      002CF0 86 82            [24]  617 	mov	dpl,@r0
      002CF2 08               [12]  618 	inc	r0
      002CF3 86 83            [24]  619 	mov	dph,@r0
      002CF5 08               [12]  620 	inc	r0
      002CF6 86 F0            [24]  621 	mov	b,@r0
      002CF8 12 6F D1         [24]  622 	lcall	__gptrget
      002CFB FA               [12]  623 	mov	r2,a
      002CFC A3               [24]  624 	inc	dptr
      002CFD 12 6F D1         [24]  625 	lcall	__gptrget
      002D00 FB               [12]  626 	mov	r3,a
      002D01 33               [12]  627 	rlc	a
      002D02 95 E0            [12]  628 	subb	a,acc
      002D04 FE               [12]  629 	mov	r6,a
      002D05 FF               [12]  630 	mov	r7,a
      002D06 C0 02            [24]  631 	push	ar2
      002D08 C0 03            [24]  632 	push	ar3
      002D0A C0 06            [24]  633 	push	ar6
      002D0C C0 07            [24]  634 	push	ar7
      002D0E E5 08            [12]  635 	mov	a,_bp
      002D10 24 04            [12]  636 	add	a,#0x04
      002D12 F8               [12]  637 	mov	r0,a
      002D13 86 82            [24]  638 	mov	dpl,@r0
      002D15 08               [12]  639 	inc	r0
      002D16 86 83            [24]  640 	mov	dph,@r0
      002D18 08               [12]  641 	inc	r0
      002D19 86 F0            [24]  642 	mov	b,@r0
      002D1B 08               [12]  643 	inc	r0
      002D1C E6               [12]  644 	mov	a,@r0
      002D1D 12 73 CA         [24]  645 	lcall	__mullong
      002D20 AC 82            [24]  646 	mov	r4,dpl
      002D22 AD 83            [24]  647 	mov	r5,dph
      002D24 AE F0            [24]  648 	mov	r6,b
      002D26 FF               [12]  649 	mov	r7,a
      002D27 E5 81            [12]  650 	mov	a,sp
      002D29 24 FC            [12]  651 	add	a,#0xfc
      002D2B F5 81            [12]  652 	mov	sp,a
      002D2D E5 08            [12]  653 	mov	a,_bp
      002D2F 24 0B            [12]  654 	add	a,#0x0b
      002D31 F8               [12]  655 	mov	r0,a
      002D32 E6               [12]  656 	mov	a,@r0
      002D33 2C               [12]  657 	add	a,r4
      002D34 FC               [12]  658 	mov	r4,a
      002D35 08               [12]  659 	inc	r0
      002D36 E6               [12]  660 	mov	a,@r0
      002D37 3D               [12]  661 	addc	a,r5
      002D38 FD               [12]  662 	mov	r5,a
      002D39 08               [12]  663 	inc	r0
      002D3A E6               [12]  664 	mov	a,@r0
      002D3B 3E               [12]  665 	addc	a,r6
      002D3C FE               [12]  666 	mov	r6,a
      002D3D 08               [12]  667 	inc	r0
      002D3E E6               [12]  668 	mov	a,@r0
      002D3F 3F               [12]  669 	addc	a,r7
      002D40 FF               [12]  670 	mov	r7,a
      002D41 A8 08            [24]  671 	mov	r0,_bp
      002D43 08               [12]  672 	inc	r0
      002D44 86 82            [24]  673 	mov	dpl,@r0
      002D46 08               [12]  674 	inc	r0
      002D47 86 83            [24]  675 	mov	dph,@r0
      002D49 08               [12]  676 	inc	r0
      002D4A 86 F0            [24]  677 	mov	b,@r0
      002D4C EC               [12]  678 	mov	a,r4
      002D4D 12 6B 56         [24]  679 	lcall	__gptrput
      002D50 A3               [24]  680 	inc	dptr
      002D51 ED               [12]  681 	mov	a,r5
      002D52 12 6B 56         [24]  682 	lcall	__gptrput
      002D55 A3               [24]  683 	inc	dptr
      002D56 EE               [12]  684 	mov	a,r6
      002D57 12 6B 56         [24]  685 	lcall	__gptrput
      002D5A A3               [24]  686 	inc	dptr
      002D5B EF               [12]  687 	mov	a,r7
      002D5C 12 6B 56         [24]  688 	lcall	__gptrput
                                    689 ;	calc.c:77: return 1;
      002D5F 90 00 01         [24]  690 	mov	dptr,#0x0001
                                    691 ;	calc.c:78: }
      002D62 85 08 81         [24]  692 	mov	sp,_bp
      002D65 D0 08            [24]  693 	pop	_bp
      002D67 22               [24]  694 	ret
                                    695 ;------------------------------------------------------------
                                    696 ;Allocation info for local variables in function 'dump_pop'
                                    697 ;------------------------------------------------------------
                                    698 ;delta                     Allocated to stack - _bp -5
                                    699 ;_ctx                      Allocated to registers r5 r6 r7 
                                    700 ;ctx                       Allocated to stack - _bp +11
                                    701 ;d                         Allocated to stack - _bp +14
                                    702 ;r                         Allocated to registers r5 r6 
                                    703 ;__1310720001              Allocated to registers 
                                    704 ;s                         Allocated to registers r5 r6 r7 
                                    705 ;__1966080003              Allocated to registers 
                                    706 ;s                         Allocated to registers r4 r5 r6 
                                    707 ;__1966080005              Allocated to registers 
                                    708 ;s                         Allocated to registers r3 r4 r5 
                                    709 ;__1966080007              Allocated to registers r2 r3 r4 r5 
                                    710 ;d                         Allocated to stack - _bp +18
                                    711 ;mask                      Allocated to stack - _bp +22
                                    712 ;__1966080009              Allocated to registers 
                                    713 ;s                         Allocated to registers r3 r4 r5 
                                    714 ;__1966080011              Allocated to registers 
                                    715 ;s                         Allocated to registers r4 r5 r6 
                                    716 ;__3276800013              Allocated to registers 
                                    717 ;s                         Allocated to registers r5 r3 r2 
                                    718 ;__3276800015              Allocated to registers r2 r3 r4 r7 
                                    719 ;d                         Allocated to stack - _bp +18
                                    720 ;mask                      Allocated to stack - _bp +22
                                    721 ;__3276800017              Allocated to registers 
                                    722 ;s                         Allocated to registers r5 r3 r2 
                                    723 ;sloc0                     Allocated to stack - _bp +1
                                    724 ;sloc1                     Allocated to stack - _bp +2
                                    725 ;sloc2                     Allocated to stack - _bp +5
                                    726 ;sloc3                     Allocated to stack - _bp +8
                                    727 ;------------------------------------------------------------
                                    728 ;	calc.c:80: static int dump_pop(void *_ctx, delta_t *delta) __reentrant {
                                    729 ;	-----------------------------------------
                                    730 ;	 function dump_pop
                                    731 ;	-----------------------------------------
      002D68                        732 _dump_pop:
      002D68 C0 08            [24]  733 	push	_bp
      002D6A E5 81            [12]  734 	mov	a,sp
      002D6C F5 08            [12]  735 	mov	_bp,a
      002D6E 24 19            [12]  736 	add	a,#0x19
      002D70 F5 81            [12]  737 	mov	sp,a
      002D72 AD 82            [24]  738 	mov	r5,dpl
      002D74 AE 83            [24]  739 	mov	r6,dph
      002D76 AF F0            [24]  740 	mov	r7,b
                                    741 ;	calc.c:81: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
      002D78 E5 08            [12]  742 	mov	a,_bp
      002D7A 24 0B            [12]  743 	add	a,#0x0b
      002D7C F8               [12]  744 	mov	r0,a
      002D7D A6 05            [24]  745 	mov	@r0,ar5
      002D7F 08               [12]  746 	inc	r0
      002D80 A6 06            [24]  747 	mov	@r0,ar6
      002D82 08               [12]  748 	inc	r0
      002D83 A6 07            [24]  749 	mov	@r0,ar7
                                    750 ;	calc.c:85: if (delta->event == EVENT_TERM) printstr("\r\nPS\r\n");
      002D85 E5 08            [12]  751 	mov	a,_bp
      002D87 24 FB            [12]  752 	add	a,#0xfb
      002D89 F8               [12]  753 	mov	r0,a
      002D8A 86 02            [24]  754 	mov	ar2,@r0
      002D8C 08               [12]  755 	inc	r0
      002D8D 86 03            [24]  756 	mov	ar3,@r0
      002D8F 08               [12]  757 	inc	r0
      002D90 86 04            [24]  758 	mov	ar4,@r0
      002D92 E5 08            [12]  759 	mov	a,_bp
      002D94 24 08            [12]  760 	add	a,#0x08
      002D96 F8               [12]  761 	mov	r0,a
      002D97 74 02            [12]  762 	mov	a,#0x02
      002D99 2A               [12]  763 	add	a,r2
      002D9A F6               [12]  764 	mov	@r0,a
      002D9B E4               [12]  765 	clr	a
      002D9C 3B               [12]  766 	addc	a,r3
      002D9D 08               [12]  767 	inc	r0
      002D9E F6               [12]  768 	mov	@r0,a
      002D9F 08               [12]  769 	inc	r0
      002DA0 A6 04            [24]  770 	mov	@r0,ar4
      002DA2 E5 08            [12]  771 	mov	a,_bp
      002DA4 24 08            [12]  772 	add	a,#0x08
      002DA6 F8               [12]  773 	mov	r0,a
      002DA7 86 82            [24]  774 	mov	dpl,@r0
      002DA9 08               [12]  775 	inc	r0
      002DAA 86 83            [24]  776 	mov	dph,@r0
      002DAC 08               [12]  777 	inc	r0
      002DAD 86 F0            [24]  778 	mov	b,@r0
      002DAF 12 6F D1         [24]  779 	lcall	__gptrget
      002DB2 FE               [12]  780 	mov	r6,a
      002DB3 A3               [24]  781 	inc	dptr
      002DB4 12 6F D1         [24]  782 	lcall	__gptrget
      002DB7 FF               [12]  783 	mov	r7,a
      002DB8 BE 08 27         [24]  784 	cjne	r6,#0x08,00102$
      002DBB BF 00 24         [24]  785 	cjne	r7,#0x00,00102$
      002DBE 7D 52            [12]  786 	mov	r5,#___str_0
      002DC0 7E 88            [12]  787 	mov	r6,#(___str_0 >> 8)
      002DC2 7F 80            [12]  788 	mov	r7,#0x80
                                    789 ;	calc.c:51: return;
      002DC4                        790 00133$:
                                    791 ;	calc.c:49: for (; *s; s++) putchar(*s);
      002DC4 8D 82            [24]  792 	mov	dpl,r5
      002DC6 8E 83            [24]  793 	mov	dph,r6
      002DC8 8F F0            [24]  794 	mov	b,r7
      002DCA 12 6F D1         [24]  795 	lcall	__gptrget
      002DCD FC               [12]  796 	mov	r4,a
      002DCE 60 12            [24]  797 	jz	00102$
      002DD0 8C 03            [24]  798 	mov	ar3,r4
      002DD2 7C 00            [12]  799 	mov	r4,#0x00
      002DD4 8B 82            [24]  800 	mov	dpl,r3
      002DD6 8C 83            [24]  801 	mov	dph,r4
      002DD8 12 2B D5         [24]  802 	lcall	_putchar
      002DDB 0D               [12]  803 	inc	r5
                                    804 ;	calc.c:85: if (delta->event == EVENT_TERM) printstr("\r\nPS\r\n");
      002DDC BD 00 E5         [24]  805 	cjne	r5,#0x00,00133$
      002DDF 0E               [12]  806 	inc	r6
      002DE0 80 E2            [24]  807 	sjmp	00133$
      002DE2                        808 00102$:
                                    809 ;	calc.c:86: r = stack_pop(ctx->ps, &d);
      002DE2 E5 08            [12]  810 	mov	a,_bp
      002DE4 24 0E            [12]  811 	add	a,#0x0e
      002DE6 FF               [12]  812 	mov	r7,a
      002DE7 E5 08            [12]  813 	mov	a,_bp
      002DE9 24 05            [12]  814 	add	a,#0x05
      002DEB F8               [12]  815 	mov	r0,a
      002DEC A6 07            [24]  816 	mov	@r0,ar7
      002DEE 08               [12]  817 	inc	r0
      002DEF 76 00            [12]  818 	mov	@r0,#0x00
      002DF1 08               [12]  819 	inc	r0
      002DF2 76 40            [12]  820 	mov	@r0,#0x40
      002DF4 E5 08            [12]  821 	mov	a,_bp
      002DF6 24 0B            [12]  822 	add	a,#0x0b
      002DF8 F8               [12]  823 	mov	r0,a
      002DF9 A9 08            [24]  824 	mov	r1,_bp
      002DFB 09               [12]  825 	inc	r1
      002DFC 09               [12]  826 	inc	r1
      002DFD 74 13            [12]  827 	mov	a,#0x13
      002DFF 26               [12]  828 	add	a,@r0
      002E00 F7               [12]  829 	mov	@r1,a
      002E01 74 40            [12]  830 	mov	a,#0x40
      002E03 08               [12]  831 	inc	r0
      002E04 36               [12]  832 	addc	a,@r0
      002E05 09               [12]  833 	inc	r1
      002E06 F7               [12]  834 	mov	@r1,a
      002E07 08               [12]  835 	inc	r0
      002E08 09               [12]  836 	inc	r1
      002E09 E6               [12]  837 	mov	a,@r0
      002E0A F7               [12]  838 	mov	@r1,a
      002E0B A8 08            [24]  839 	mov	r0,_bp
      002E0D 08               [12]  840 	inc	r0
      002E0E 08               [12]  841 	inc	r0
      002E0F 86 82            [24]  842 	mov	dpl,@r0
      002E11 08               [12]  843 	inc	r0
      002E12 86 83            [24]  844 	mov	dph,@r0
      002E14 08               [12]  845 	inc	r0
      002E15 86 F0            [24]  846 	mov	b,@r0
      002E17 12 6F D1         [24]  847 	lcall	__gptrget
      002E1A FA               [12]  848 	mov	r2,a
      002E1B A3               [24]  849 	inc	dptr
      002E1C 12 6F D1         [24]  850 	lcall	__gptrget
      002E1F FB               [12]  851 	mov	r3,a
      002E20 A3               [24]  852 	inc	dptr
      002E21 12 6F D1         [24]  853 	lcall	__gptrget
      002E24 FE               [12]  854 	mov	r6,a
      002E25 C0 07            [24]  855 	push	ar7
      002E27 E5 08            [12]  856 	mov	a,_bp
      002E29 24 05            [12]  857 	add	a,#0x05
      002E2B F8               [12]  858 	mov	r0,a
      002E2C E6               [12]  859 	mov	a,@r0
      002E2D C0 E0            [24]  860 	push	acc
      002E2F 08               [12]  861 	inc	r0
      002E30 E6               [12]  862 	mov	a,@r0
      002E31 C0 E0            [24]  863 	push	acc
      002E33 08               [12]  864 	inc	r0
      002E34 E6               [12]  865 	mov	a,@r0
      002E35 C0 E0            [24]  866 	push	acc
      002E37 8A 82            [24]  867 	mov	dpl,r2
      002E39 8B 83            [24]  868 	mov	dph,r3
      002E3B 8E F0            [24]  869 	mov	b,r6
      002E3D 12 27 B4         [24]  870 	lcall	_stack_pop
      002E40 AE 82            [24]  871 	mov	r6,dpl
      002E42 AD 83            [24]  872 	mov	r5,dph
      002E44 15 81            [12]  873 	dec	sp
      002E46 15 81            [12]  874 	dec	sp
      002E48 15 81            [12]  875 	dec	sp
      002E4A D0 07            [24]  876 	pop	ar7
                                    877 ;	calc.c:87: if (!r) {
      002E4C EE               [12]  878 	mov	a,r6
      002E4D 4D               [12]  879 	orl	a,r5
      002E4E 70 44            [24]  880 	jnz	00181$
                                    881 ;	calc.c:88: if (delta->event != EVENT_TERM) printstr("stack underflow\r\n");
      002E50 E5 08            [12]  882 	mov	a,_bp
      002E52 24 08            [12]  883 	add	a,#0x08
      002E54 F8               [12]  884 	mov	r0,a
      002E55 86 82            [24]  885 	mov	dpl,@r0
      002E57 08               [12]  886 	inc	r0
      002E58 86 83            [24]  887 	mov	dph,@r0
      002E5A 08               [12]  888 	inc	r0
      002E5B 86 F0            [24]  889 	mov	b,@r0
      002E5D 12 6F D1         [24]  890 	lcall	__gptrget
      002E60 FD               [12]  891 	mov	r5,a
      002E61 A3               [24]  892 	inc	dptr
      002E62 12 6F D1         [24]  893 	lcall	__gptrget
      002E65 FE               [12]  894 	mov	r6,a
      002E66 BD 08 06         [24]  895 	cjne	r5,#0x08,00318$
      002E69 BE 00 03         [24]  896 	cjne	r6,#0x00,00318$
      002E6C 02 30 1A         [24]  897 	ljmp	00110$
      002E6F                        898 00318$:
      002E6F 7C 59            [12]  899 	mov	r4,#___str_1
      002E71 7D 88            [12]  900 	mov	r5,#(___str_1 >> 8)
      002E73 7E 80            [12]  901 	mov	r6,#0x80
                                    902 ;	calc.c:51: return;
      002E75                        903 00136$:
                                    904 ;	calc.c:49: for (; *s; s++) putchar(*s);
      002E75 8C 82            [24]  905 	mov	dpl,r4
      002E77 8D 83            [24]  906 	mov	dph,r5
      002E79 8E F0            [24]  907 	mov	b,r6
      002E7B 12 6F D1         [24]  908 	lcall	__gptrget
      002E7E FB               [12]  909 	mov	r3,a
      002E7F 70 03            [24]  910 	jnz	00319$
      002E81 02 30 1A         [24]  911 	ljmp	00110$
      002E84                        912 00319$:
      002E84 7A 00            [12]  913 	mov	r2,#0x00
      002E86 8B 82            [24]  914 	mov	dpl,r3
      002E88 8A 83            [24]  915 	mov	dph,r2
      002E8A 12 2B D5         [24]  916 	lcall	_putchar
      002E8D 0C               [12]  917 	inc	r4
                                    918 ;	calc.c:89: } else while (r > 0) {
      002E8E BC 00 E4         [24]  919 	cjne	r4,#0x00,00136$
      002E91 0D               [12]  920 	inc	r5
      002E92 80 E1            [24]  921 	sjmp	00136$
      002E94                        922 00181$:
      002E94 A8 08            [24]  923 	mov	r0,_bp
      002E96 08               [12]  924 	inc	r0
      002E97 A6 07            [24]  925 	mov	@r0,ar7
      002E99                        926 00105$:
      002E99 C3               [12]  927 	clr	c
      002E9A E4               [12]  928 	clr	a
      002E9B 9E               [12]  929 	subb	a,r6
      002E9C 74 80            [12]  930 	mov	a,#(0x00 ^ 0x80)
      002E9E 8D F0            [24]  931 	mov	b,r5
      002EA0 63 F0 80         [24]  932 	xrl	b,#0x80
      002EA3 95 F0            [12]  933 	subb	a,b
      002EA5 40 03            [24]  934 	jc	00321$
      002EA7 02 30 1A         [24]  935 	ljmp	00110$
      002EAA                        936 00321$:
                                    937 ;	calc.c:90: printstr("VA ");
      002EAA 7B 6B            [12]  938 	mov	r3,#___str_2
      002EAC 7C 88            [12]  939 	mov	r4,#(___str_2 >> 8)
      002EAE 7D 80            [12]  940 	mov	r5,#0x80
                                    941 ;	calc.c:51: return;
      002EB0                        942 00139$:
                                    943 ;	calc.c:49: for (; *s; s++) putchar(*s);
      002EB0 8B 82            [24]  944 	mov	dpl,r3
      002EB2 8C 83            [24]  945 	mov	dph,r4
      002EB4 8D F0            [24]  946 	mov	b,r5
      002EB6 12 6F D1         [24]  947 	lcall	__gptrget
      002EB9 FA               [12]  948 	mov	r2,a
      002EBA 60 10            [24]  949 	jz	00119$
      002EBC 7E 00            [12]  950 	mov	r6,#0x00
      002EBE 8A 82            [24]  951 	mov	dpl,r2
      002EC0 8E 83            [24]  952 	mov	dph,r6
      002EC2 12 2B D5         [24]  953 	lcall	_putchar
      002EC5 0B               [12]  954 	inc	r3
                                    955 ;	calc.c:90: printstr("VA ");
      002EC6 BB 00 E7         [24]  956 	cjne	r3,#0x00,00139$
      002EC9 0C               [12]  957 	inc	r4
      002ECA 80 E4            [24]  958 	sjmp	00139$
      002ECC                        959 00119$:
                                    960 ;	calc.c:91: printf("% 11ld / ", d);
      002ECC C0 07            [24]  961 	push	ar7
      002ECE E5 08            [12]  962 	mov	a,_bp
      002ED0 24 0E            [12]  963 	add	a,#0x0e
      002ED2 F8               [12]  964 	mov	r0,a
      002ED3 E6               [12]  965 	mov	a,@r0
      002ED4 C0 E0            [24]  966 	push	acc
      002ED6 08               [12]  967 	inc	r0
      002ED7 E6               [12]  968 	mov	a,@r0
      002ED8 C0 E0            [24]  969 	push	acc
      002EDA 08               [12]  970 	inc	r0
      002EDB E6               [12]  971 	mov	a,@r0
      002EDC C0 E0            [24]  972 	push	acc
      002EDE 08               [12]  973 	inc	r0
      002EDF E6               [12]  974 	mov	a,@r0
      002EE0 C0 E0            [24]  975 	push	acc
      002EE2 74 6F            [12]  976 	mov	a,#___str_3
      002EE4 C0 E0            [24]  977 	push	acc
      002EE6 74 88            [12]  978 	mov	a,#(___str_3 >> 8)
      002EE8 C0 E0            [24]  979 	push	acc
      002EEA 74 80            [12]  980 	mov	a,#0x80
      002EEC C0 E0            [24]  981 	push	acc
      002EEE 12 6F 98         [24]  982 	lcall	_printf
      002EF1 E5 81            [12]  983 	mov	a,sp
      002EF3 24 F9            [12]  984 	add	a,#0xf9
      002EF5 F5 81            [12]  985 	mov	sp,a
                                    986 ;	calc.c:92: printf("%08lx / ", d);
      002EF7 E5 08            [12]  987 	mov	a,_bp
      002EF9 24 0E            [12]  988 	add	a,#0x0e
      002EFB F8               [12]  989 	mov	r0,a
      002EFC E6               [12]  990 	mov	a,@r0
      002EFD C0 E0            [24]  991 	push	acc
      002EFF 08               [12]  992 	inc	r0
      002F00 E6               [12]  993 	mov	a,@r0
      002F01 C0 E0            [24]  994 	push	acc
      002F03 08               [12]  995 	inc	r0
      002F04 E6               [12]  996 	mov	a,@r0
      002F05 C0 E0            [24]  997 	push	acc
      002F07 08               [12]  998 	inc	r0
      002F08 E6               [12]  999 	mov	a,@r0
      002F09 C0 E0            [24] 1000 	push	acc
      002F0B 74 79            [12] 1001 	mov	a,#___str_4
      002F0D C0 E0            [24] 1002 	push	acc
      002F0F 74 88            [12] 1003 	mov	a,#(___str_4 >> 8)
      002F11 C0 E0            [24] 1004 	push	acc
      002F13 74 80            [12] 1005 	mov	a,#0x80
      002F15 C0 E0            [24] 1006 	push	acc
      002F17 12 6F 98         [24] 1007 	lcall	_printf
      002F1A E5 81            [12] 1008 	mov	a,sp
      002F1C 24 F9            [12] 1009 	add	a,#0xf9
      002F1E F5 81            [12] 1010 	mov	sp,a
      002F20 D0 07            [24] 1011 	pop	ar7
                                   1012 ;	calc.c:93: printbin(d);
      002F22 E5 08            [12] 1013 	mov	a,_bp
      002F24 24 0E            [12] 1014 	add	a,#0x0e
      002F26 F8               [12] 1015 	mov	r0,a
      002F27 86 02            [24] 1016 	mov	ar2,@r0
      002F29 08               [12] 1017 	inc	r0
      002F2A 86 03            [24] 1018 	mov	ar3,@r0
      002F2C 08               [12] 1019 	inc	r0
      002F2D 86 04            [24] 1020 	mov	ar4,@r0
      002F2F 08               [12] 1021 	inc	r0
      002F30 86 05            [24] 1022 	mov	ar5,@r0
      002F32 E5 08            [12] 1023 	mov	a,_bp
      002F34 24 12            [12] 1024 	add	a,#0x12
      002F36 F8               [12] 1025 	mov	r0,a
      002F37 A6 02            [24] 1026 	mov	@r0,ar2
      002F39 08               [12] 1027 	inc	r0
      002F3A A6 03            [24] 1028 	mov	@r0,ar3
      002F3C 08               [12] 1029 	inc	r0
      002F3D A6 04            [24] 1030 	mov	@r0,ar4
      002F3F 08               [12] 1031 	inc	r0
      002F40 A6 05            [24] 1032 	mov	@r0,ar5
                                   1033 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      002F42 E5 08            [12] 1034 	mov	a,_bp
      002F44 24 16            [12] 1035 	add	a,#0x16
      002F46 F8               [12] 1036 	mov	r0,a
      002F47 E4               [12] 1037 	clr	a
      002F48 F6               [12] 1038 	mov	@r0,a
      002F49 08               [12] 1039 	inc	r0
      002F4A F6               [12] 1040 	mov	@r0,a
      002F4B 08               [12] 1041 	inc	r0
      002F4C F6               [12] 1042 	mov	@r0,a
      002F4D 08               [12] 1043 	inc	r0
      002F4E 76 80            [12] 1044 	mov	@r0,#0x80
      002F50                       1045 00141$:
                                   1046 ;	calc.c:58: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      002F50 E5 08            [12] 1047 	mov	a,_bp
      002F52 24 12            [12] 1048 	add	a,#0x12
      002F54 F8               [12] 1049 	mov	r0,a
      002F55 86 03            [24] 1050 	mov	ar3,@r0
      002F57 08               [12] 1051 	inc	r0
      002F58 86 04            [24] 1052 	mov	ar4,@r0
      002F5A 08               [12] 1053 	inc	r0
      002F5B 86 05            [24] 1054 	mov	ar5,@r0
      002F5D 08               [12] 1055 	inc	r0
      002F5E 86 06            [24] 1056 	mov	ar6,@r0
      002F60 E5 08            [12] 1057 	mov	a,_bp
      002F62 24 16            [12] 1058 	add	a,#0x16
      002F64 F8               [12] 1059 	mov	r0,a
      002F65 E6               [12] 1060 	mov	a,@r0
      002F66 52 03            [12] 1061 	anl	ar3,a
      002F68 08               [12] 1062 	inc	r0
      002F69 E6               [12] 1063 	mov	a,@r0
      002F6A 52 04            [12] 1064 	anl	ar4,a
      002F6C 08               [12] 1065 	inc	r0
      002F6D E6               [12] 1066 	mov	a,@r0
      002F6E 52 05            [12] 1067 	anl	ar5,a
      002F70 08               [12] 1068 	inc	r0
      002F71 E6               [12] 1069 	mov	a,@r0
      002F72 52 06            [12] 1070 	anl	ar6,a
      002F74 EB               [12] 1071 	mov	a,r3
      002F75 4C               [12] 1072 	orl	a,r4
      002F76 4D               [12] 1073 	orl	a,r5
      002F77 4E               [12] 1074 	orl	a,r6
      002F78 60 06            [24] 1075 	jz	00162$
      002F7A 7C 31            [12] 1076 	mov	r4,#0x31
      002F7C 7D 00            [12] 1077 	mov	r5,#0x00
      002F7E 80 04            [24] 1078 	sjmp	00163$
      002F80                       1079 00162$:
      002F80 7C 30            [12] 1080 	mov	r4,#0x30
      002F82 7D 00            [12] 1081 	mov	r5,#0x00
      002F84                       1082 00163$:
      002F84 8C 82            [24] 1083 	mov	dpl,r4
      002F86 8D 83            [24] 1084 	mov	dph,r5
      002F88 12 2B D5         [24] 1085 	lcall	_putchar
                                   1086 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      002F8B E5 08            [12] 1087 	mov	a,_bp
      002F8D 24 16            [12] 1088 	add	a,#0x16
      002F8F F8               [12] 1089 	mov	r0,a
      002F90 08               [12] 1090 	inc	r0
      002F91 08               [12] 1091 	inc	r0
      002F92 08               [12] 1092 	inc	r0
      002F93 E6               [12] 1093 	mov	a,@r0
      002F94 C3               [12] 1094 	clr	c
      002F95 13               [12] 1095 	rrc	a
      002F96 F6               [12] 1096 	mov	@r0,a
      002F97 18               [12] 1097 	dec	r0
      002F98 E6               [12] 1098 	mov	a,@r0
      002F99 13               [12] 1099 	rrc	a
      002F9A F6               [12] 1100 	mov	@r0,a
      002F9B 18               [12] 1101 	dec	r0
      002F9C E6               [12] 1102 	mov	a,@r0
      002F9D 13               [12] 1103 	rrc	a
      002F9E F6               [12] 1104 	mov	@r0,a
      002F9F 18               [12] 1105 	dec	r0
      002FA0 E6               [12] 1106 	mov	a,@r0
      002FA1 13               [12] 1107 	rrc	a
      002FA2 F6               [12] 1108 	mov	@r0,a
      002FA3 E5 08            [12] 1109 	mov	a,_bp
      002FA5 24 16            [12] 1110 	add	a,#0x16
      002FA7 F8               [12] 1111 	mov	r0,a
      002FA8 E6               [12] 1112 	mov	a,@r0
      002FA9 08               [12] 1113 	inc	r0
      002FAA 46               [12] 1114 	orl	a,@r0
      002FAB 08               [12] 1115 	inc	r0
      002FAC 46               [12] 1116 	orl	a,@r0
      002FAD 08               [12] 1117 	inc	r0
      002FAE 46               [12] 1118 	orl	a,@r0
      002FAF 70 9F            [24] 1119 	jnz	00141$
                                   1120 ;	calc.c:94: printstr("\r\n");
      002FB1 7B 82            [12] 1121 	mov	r3,#___str_5
      002FB3 7C 88            [12] 1122 	mov	r4,#(___str_5 >> 8)
      002FB5 7D 80            [12] 1123 	mov	r5,#0x80
                                   1124 ;	calc.c:51: return;
      002FB7                       1125 00144$:
                                   1126 ;	calc.c:49: for (; *s; s++) putchar(*s);
      002FB7 8B 82            [24] 1127 	mov	dpl,r3
      002FB9 8C 83            [24] 1128 	mov	dph,r4
      002FBB 8D F0            [24] 1129 	mov	b,r5
      002FBD 12 6F D1         [24] 1130 	lcall	__gptrget
      002FC0 FA               [12] 1131 	mov	r2,a
      002FC1 60 10            [24] 1132 	jz	00123$
      002FC3 7E 00            [12] 1133 	mov	r6,#0x00
      002FC5 8A 82            [24] 1134 	mov	dpl,r2
      002FC7 8E 83            [24] 1135 	mov	dph,r6
      002FC9 12 2B D5         [24] 1136 	lcall	_putchar
      002FCC 0B               [12] 1137 	inc	r3
                                   1138 ;	calc.c:94: printstr("\r\n");
      002FCD BB 00 E7         [24] 1139 	cjne	r3,#0x00,00144$
      002FD0 0C               [12] 1140 	inc	r4
      002FD1 80 E4            [24] 1141 	sjmp	00144$
      002FD3                       1142 00123$:
                                   1143 ;	calc.c:95: r = stack_pop(ctx->ps, &d);
      002FD3 C0 07            [24] 1144 	push	ar7
      002FD5 A8 08            [24] 1145 	mov	r0,_bp
      002FD7 08               [12] 1146 	inc	r0
      002FD8 86 03            [24] 1147 	mov	ar3,@r0
      002FDA 7C 00            [12] 1148 	mov	r4,#0x00
      002FDC 7D 40            [12] 1149 	mov	r5,#0x40
      002FDE A8 08            [24] 1150 	mov	r0,_bp
      002FE0 08               [12] 1151 	inc	r0
      002FE1 08               [12] 1152 	inc	r0
      002FE2 86 82            [24] 1153 	mov	dpl,@r0
      002FE4 08               [12] 1154 	inc	r0
      002FE5 86 83            [24] 1155 	mov	dph,@r0
      002FE7 08               [12] 1156 	inc	r0
      002FE8 86 F0            [24] 1157 	mov	b,@r0
      002FEA 12 6F D1         [24] 1158 	lcall	__gptrget
      002FED FA               [12] 1159 	mov	r2,a
      002FEE A3               [24] 1160 	inc	dptr
      002FEF 12 6F D1         [24] 1161 	lcall	__gptrget
      002FF2 FE               [12] 1162 	mov	r6,a
      002FF3 A3               [24] 1163 	inc	dptr
      002FF4 12 6F D1         [24] 1164 	lcall	__gptrget
      002FF7 FF               [12] 1165 	mov	r7,a
      002FF8 C0 07            [24] 1166 	push	ar7
      002FFA C0 03            [24] 1167 	push	ar3
      002FFC C0 04            [24] 1168 	push	ar4
      002FFE C0 05            [24] 1169 	push	ar5
      003000 8A 82            [24] 1170 	mov	dpl,r2
      003002 8E 83            [24] 1171 	mov	dph,r6
      003004 8F F0            [24] 1172 	mov	b,r7
      003006 12 27 B4         [24] 1173 	lcall	_stack_pop
      003009 AE 82            [24] 1174 	mov	r6,dpl
      00300B AD 83            [24] 1175 	mov	r5,dph
      00300D 15 81            [12] 1176 	dec	sp
      00300F 15 81            [12] 1177 	dec	sp
      003011 15 81            [12] 1178 	dec	sp
      003013 D0 07            [24] 1179 	pop	ar7
      003015 D0 07            [24] 1180 	pop	ar7
      003017 02 2E 99         [24] 1181 	ljmp	00105$
      00301A                       1182 00110$:
                                   1183 ;	calc.c:98: if (delta->event == EVENT_TERM) {
      00301A E5 08            [12] 1184 	mov	a,_bp
      00301C 24 08            [12] 1185 	add	a,#0x08
      00301E F8               [12] 1186 	mov	r0,a
      00301F 86 82            [24] 1187 	mov	dpl,@r0
      003021 08               [12] 1188 	inc	r0
      003022 86 83            [24] 1189 	mov	dph,@r0
      003024 08               [12] 1190 	inc	r0
      003025 86 F0            [24] 1191 	mov	b,@r0
      003027 12 6F D1         [24] 1192 	lcall	__gptrget
      00302A FD               [12] 1193 	mov	r5,a
      00302B A3               [24] 1194 	inc	dptr
      00302C 12 6F D1         [24] 1195 	lcall	__gptrget
      00302F FE               [12] 1196 	mov	r6,a
      003030 BD 08 05         [24] 1197 	cjne	r5,#0x08,00328$
      003033 BE 00 02         [24] 1198 	cjne	r6,#0x00,00328$
      003036 80 03            [24] 1199 	sjmp	00329$
      003038                       1200 00328$:
      003038 02 32 59         [24] 1201 	ljmp	00113$
      00303B                       1202 00329$:
                                   1203 ;	calc.c:99: printstr("SS\r\n");
      00303B 7C 85            [12] 1204 	mov	r4,#___str_6
      00303D 7D 88            [12] 1205 	mov	r5,#(___str_6 >> 8)
      00303F 7E 80            [12] 1206 	mov	r6,#0x80
                                   1207 ;	calc.c:51: return;
      003041                       1208 00147$:
                                   1209 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003041 8C 82            [24] 1210 	mov	dpl,r4
      003043 8D 83            [24] 1211 	mov	dph,r5
      003045 8E F0            [24] 1212 	mov	b,r6
      003047 12 6F D1         [24] 1213 	lcall	__gptrget
      00304A FB               [12] 1214 	mov	r3,a
      00304B 60 10            [24] 1215 	jz	00125$
      00304D 7A 00            [12] 1216 	mov	r2,#0x00
      00304F 8B 82            [24] 1217 	mov	dpl,r3
      003051 8A 83            [24] 1218 	mov	dph,r2
      003053 12 2B D5         [24] 1219 	lcall	_putchar
      003056 0C               [12] 1220 	inc	r4
                                   1221 ;	calc.c:99: printstr("SS\r\n");
      003057 BC 00 E7         [24] 1222 	cjne	r4,#0x00,00147$
      00305A 0D               [12] 1223 	inc	r5
      00305B 80 E4            [24] 1224 	sjmp	00147$
      00305D                       1225 00125$:
                                   1226 ;	calc.c:100: for (r = stack_pop(ctx->ss, &d); r > 0; r = stack_pop(ctx->ss, &d)) {
      00305D 8F 06            [24] 1227 	mov	ar6,r7
      00305F E5 08            [12] 1228 	mov	a,_bp
      003061 24 05            [12] 1229 	add	a,#0x05
      003063 F8               [12] 1230 	mov	r0,a
      003064 A6 06            [24] 1231 	mov	@r0,ar6
      003066 08               [12] 1232 	inc	r0
      003067 76 00            [12] 1233 	mov	@r0,#0x00
      003069 08               [12] 1234 	inc	r0
      00306A 76 40            [12] 1235 	mov	@r0,#0x40
      00306C E5 08            [12] 1236 	mov	a,_bp
      00306E 24 0B            [12] 1237 	add	a,#0x0b
      003070 F8               [12] 1238 	mov	r0,a
      003071 E5 08            [12] 1239 	mov	a,_bp
      003073 24 08            [12] 1240 	add	a,#0x08
      003075 F9               [12] 1241 	mov	r1,a
      003076 74 16            [12] 1242 	mov	a,#0x16
      003078 26               [12] 1243 	add	a,@r0
      003079 F7               [12] 1244 	mov	@r1,a
      00307A 74 40            [12] 1245 	mov	a,#0x40
      00307C 08               [12] 1246 	inc	r0
      00307D 36               [12] 1247 	addc	a,@r0
      00307E 09               [12] 1248 	inc	r1
      00307F F7               [12] 1249 	mov	@r1,a
      003080 08               [12] 1250 	inc	r0
      003081 09               [12] 1251 	inc	r1
      003082 E6               [12] 1252 	mov	a,@r0
      003083 F7               [12] 1253 	mov	@r1,a
      003084 E5 08            [12] 1254 	mov	a,_bp
      003086 24 08            [12] 1255 	add	a,#0x08
      003088 F8               [12] 1256 	mov	r0,a
      003089 86 82            [24] 1257 	mov	dpl,@r0
      00308B 08               [12] 1258 	inc	r0
      00308C 86 83            [24] 1259 	mov	dph,@r0
      00308E 08               [12] 1260 	inc	r0
      00308F 86 F0            [24] 1261 	mov	b,@r0
      003091 12 6F D1         [24] 1262 	lcall	__gptrget
      003094 FA               [12] 1263 	mov	r2,a
      003095 A3               [24] 1264 	inc	dptr
      003096 12 6F D1         [24] 1265 	lcall	__gptrget
      003099 FB               [12] 1266 	mov	r3,a
      00309A A3               [24] 1267 	inc	dptr
      00309B 12 6F D1         [24] 1268 	lcall	__gptrget
      00309E FE               [12] 1269 	mov	r6,a
      00309F C0 07            [24] 1270 	push	ar7
      0030A1 E5 08            [12] 1271 	mov	a,_bp
      0030A3 24 05            [12] 1272 	add	a,#0x05
      0030A5 F8               [12] 1273 	mov	r0,a
      0030A6 E6               [12] 1274 	mov	a,@r0
      0030A7 C0 E0            [24] 1275 	push	acc
      0030A9 08               [12] 1276 	inc	r0
      0030AA E6               [12] 1277 	mov	a,@r0
      0030AB C0 E0            [24] 1278 	push	acc
      0030AD 08               [12] 1279 	inc	r0
      0030AE E6               [12] 1280 	mov	a,@r0
      0030AF C0 E0            [24] 1281 	push	acc
      0030B1 8A 82            [24] 1282 	mov	dpl,r2
      0030B3 8B 83            [24] 1283 	mov	dph,r3
      0030B5 8E F0            [24] 1284 	mov	b,r6
      0030B7 12 27 B4         [24] 1285 	lcall	_stack_pop
      0030BA AD 82            [24] 1286 	mov	r5,dpl
      0030BC AE 83            [24] 1287 	mov	r6,dph
      0030BE 15 81            [12] 1288 	dec	sp
      0030C0 15 81            [12] 1289 	dec	sp
      0030C2 15 81            [12] 1290 	dec	sp
      0030C4 D0 07            [24] 1291 	pop	ar7
      0030C6                       1292 00158$:
      0030C6 C3               [12] 1293 	clr	c
      0030C7 E4               [12] 1294 	clr	a
      0030C8 9D               [12] 1295 	subb	a,r5
      0030C9 74 80            [12] 1296 	mov	a,#(0x00 ^ 0x80)
      0030CB 8E F0            [24] 1297 	mov	b,r6
      0030CD 63 F0 80         [24] 1298 	xrl	b,#0x80
      0030D0 95 F0            [12] 1299 	subb	a,b
      0030D2 40 03            [24] 1300 	jc	00332$
      0030D4 02 32 59         [24] 1301 	ljmp	00113$
      0030D7                       1302 00332$:
                                   1303 ;	calc.c:101: printstr("VA ");
      0030D7 7D 6B            [12] 1304 	mov	r5,#___str_2
      0030D9 7B 88            [12] 1305 	mov	r3,#(___str_2 >> 8)
      0030DB 7A 80            [12] 1306 	mov	r2,#0x80
                                   1307 ;	calc.c:51: return;
      0030DD                       1308 00150$:
                                   1309 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0030DD 8D 82            [24] 1310 	mov	dpl,r5
      0030DF 8B 83            [24] 1311 	mov	dph,r3
      0030E1 8A F0            [24] 1312 	mov	b,r2
      0030E3 12 6F D1         [24] 1313 	lcall	__gptrget
      0030E6 FE               [12] 1314 	mov	r6,a
      0030E7 60 16            [24] 1315 	jz	00127$
      0030E9 C0 07            [24] 1316 	push	ar7
      0030EB 8E 04            [24] 1317 	mov	ar4,r6
      0030ED 7F 00            [12] 1318 	mov	r7,#0x00
      0030EF 8C 82            [24] 1319 	mov	dpl,r4
      0030F1 8F 83            [24] 1320 	mov	dph,r7
      0030F3 12 2B D5         [24] 1321 	lcall	_putchar
      0030F6 0D               [12] 1322 	inc	r5
      0030F7 BD 00 01         [24] 1323 	cjne	r5,#0x00,00334$
      0030FA 0B               [12] 1324 	inc	r3
      0030FB                       1325 00334$:
      0030FB D0 07            [24] 1326 	pop	ar7
                                   1327 ;	calc.c:101: printstr("VA ");
      0030FD 80 DE            [24] 1328 	sjmp	00150$
      0030FF                       1329 00127$:
                                   1330 ;	calc.c:102: printf("% 11ld / ", d);
      0030FF C0 07            [24] 1331 	push	ar7
      003101 C0 07            [24] 1332 	push	ar7
      003103 E5 08            [12] 1333 	mov	a,_bp
      003105 24 0E            [12] 1334 	add	a,#0x0e
      003107 F8               [12] 1335 	mov	r0,a
      003108 E6               [12] 1336 	mov	a,@r0
      003109 C0 E0            [24] 1337 	push	acc
      00310B 08               [12] 1338 	inc	r0
      00310C E6               [12] 1339 	mov	a,@r0
      00310D C0 E0            [24] 1340 	push	acc
      00310F 08               [12] 1341 	inc	r0
      003110 E6               [12] 1342 	mov	a,@r0
      003111 C0 E0            [24] 1343 	push	acc
      003113 08               [12] 1344 	inc	r0
      003114 E6               [12] 1345 	mov	a,@r0
      003115 C0 E0            [24] 1346 	push	acc
      003117 74 6F            [12] 1347 	mov	a,#___str_3
      003119 C0 E0            [24] 1348 	push	acc
      00311B 74 88            [12] 1349 	mov	a,#(___str_3 >> 8)
      00311D C0 E0            [24] 1350 	push	acc
      00311F 74 80            [12] 1351 	mov	a,#0x80
      003121 C0 E0            [24] 1352 	push	acc
      003123 12 6F 98         [24] 1353 	lcall	_printf
      003126 E5 81            [12] 1354 	mov	a,sp
      003128 24 F9            [12] 1355 	add	a,#0xf9
      00312A F5 81            [12] 1356 	mov	sp,a
                                   1357 ;	calc.c:103: printf("%08lx / ", d);
      00312C E5 08            [12] 1358 	mov	a,_bp
      00312E 24 0E            [12] 1359 	add	a,#0x0e
      003130 F8               [12] 1360 	mov	r0,a
      003131 E6               [12] 1361 	mov	a,@r0
      003132 C0 E0            [24] 1362 	push	acc
      003134 08               [12] 1363 	inc	r0
      003135 E6               [12] 1364 	mov	a,@r0
      003136 C0 E0            [24] 1365 	push	acc
      003138 08               [12] 1366 	inc	r0
      003139 E6               [12] 1367 	mov	a,@r0
      00313A C0 E0            [24] 1368 	push	acc
      00313C 08               [12] 1369 	inc	r0
      00313D E6               [12] 1370 	mov	a,@r0
      00313E C0 E0            [24] 1371 	push	acc
      003140 74 79            [12] 1372 	mov	a,#___str_4
      003142 C0 E0            [24] 1373 	push	acc
      003144 74 88            [12] 1374 	mov	a,#(___str_4 >> 8)
      003146 C0 E0            [24] 1375 	push	acc
      003148 74 80            [12] 1376 	mov	a,#0x80
      00314A C0 E0            [24] 1377 	push	acc
      00314C 12 6F 98         [24] 1378 	lcall	_printf
      00314F E5 81            [12] 1379 	mov	a,sp
      003151 24 F9            [12] 1380 	add	a,#0xf9
      003153 F5 81            [12] 1381 	mov	sp,a
      003155 D0 07            [24] 1382 	pop	ar7
                                   1383 ;	calc.c:104: printbin(d);
      003157 E5 08            [12] 1384 	mov	a,_bp
      003159 24 0E            [12] 1385 	add	a,#0x0e
      00315B F8               [12] 1386 	mov	r0,a
      00315C 86 02            [24] 1387 	mov	ar2,@r0
      00315E 08               [12] 1388 	inc	r0
      00315F 86 03            [24] 1389 	mov	ar3,@r0
      003161 08               [12] 1390 	inc	r0
      003162 86 04            [24] 1391 	mov	ar4,@r0
      003164 08               [12] 1392 	inc	r0
      003165 86 07            [24] 1393 	mov	ar7,@r0
      003167 E5 08            [12] 1394 	mov	a,_bp
      003169 24 12            [12] 1395 	add	a,#0x12
      00316B F8               [12] 1396 	mov	r0,a
      00316C A6 02            [24] 1397 	mov	@r0,ar2
      00316E 08               [12] 1398 	inc	r0
      00316F A6 03            [24] 1399 	mov	@r0,ar3
      003171 08               [12] 1400 	inc	r0
      003172 A6 04            [24] 1401 	mov	@r0,ar4
      003174 08               [12] 1402 	inc	r0
      003175 A6 07            [24] 1403 	mov	@r0,ar7
                                   1404 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      003177 E5 08            [12] 1405 	mov	a,_bp
      003179 24 16            [12] 1406 	add	a,#0x16
      00317B F8               [12] 1407 	mov	r0,a
      00317C E4               [12] 1408 	clr	a
      00317D F6               [12] 1409 	mov	@r0,a
      00317E 08               [12] 1410 	inc	r0
      00317F F6               [12] 1411 	mov	@r0,a
      003180 08               [12] 1412 	inc	r0
      003181 F6               [12] 1413 	mov	@r0,a
      003182 08               [12] 1414 	inc	r0
      003183 76 80            [12] 1415 	mov	@r0,#0x80
                                   1416 ;	calc.c:109: return 1;
      003185 D0 07            [24] 1417 	pop	ar7
                                   1418 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      003187                       1419 00152$:
                                   1420 ;	calc.c:58: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      003187 C0 07            [24] 1421 	push	ar7
      003189 E5 08            [12] 1422 	mov	a,_bp
      00318B 24 12            [12] 1423 	add	a,#0x12
      00318D F8               [12] 1424 	mov	r0,a
      00318E 86 02            [24] 1425 	mov	ar2,@r0
      003190 08               [12] 1426 	inc	r0
      003191 86 03            [24] 1427 	mov	ar3,@r0
      003193 08               [12] 1428 	inc	r0
      003194 86 04            [24] 1429 	mov	ar4,@r0
      003196 08               [12] 1430 	inc	r0
      003197 86 07            [24] 1431 	mov	ar7,@r0
      003199 E5 08            [12] 1432 	mov	a,_bp
      00319B 24 16            [12] 1433 	add	a,#0x16
      00319D F8               [12] 1434 	mov	r0,a
      00319E E6               [12] 1435 	mov	a,@r0
      00319F 52 02            [12] 1436 	anl	ar2,a
      0031A1 08               [12] 1437 	inc	r0
      0031A2 E6               [12] 1438 	mov	a,@r0
      0031A3 52 03            [12] 1439 	anl	ar3,a
      0031A5 08               [12] 1440 	inc	r0
      0031A6 E6               [12] 1441 	mov	a,@r0
      0031A7 52 04            [12] 1442 	anl	ar4,a
      0031A9 08               [12] 1443 	inc	r0
      0031AA E6               [12] 1444 	mov	a,@r0
      0031AB 52 07            [12] 1445 	anl	ar7,a
      0031AD EA               [12] 1446 	mov	a,r2
      0031AE 4B               [12] 1447 	orl	a,r3
      0031AF 4C               [12] 1448 	orl	a,r4
      0031B0 4F               [12] 1449 	orl	a,r7
      0031B1 D0 07            [24] 1450 	pop	ar7
      0031B3 60 06            [24] 1451 	jz	00164$
      0031B5 7B 31            [12] 1452 	mov	r3,#0x31
      0031B7 7C 00            [12] 1453 	mov	r4,#0x00
      0031B9 80 04            [24] 1454 	sjmp	00165$
      0031BB                       1455 00164$:
      0031BB 7B 30            [12] 1456 	mov	r3,#0x30
      0031BD 7C 00            [12] 1457 	mov	r4,#0x00
      0031BF                       1458 00165$:
      0031BF 8B 82            [24] 1459 	mov	dpl,r3
      0031C1 8C 83            [24] 1460 	mov	dph,r4
      0031C3 12 2B D5         [24] 1461 	lcall	_putchar
                                   1462 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      0031C6 E5 08            [12] 1463 	mov	a,_bp
      0031C8 24 16            [12] 1464 	add	a,#0x16
      0031CA F8               [12] 1465 	mov	r0,a
      0031CB 08               [12] 1466 	inc	r0
      0031CC 08               [12] 1467 	inc	r0
      0031CD 08               [12] 1468 	inc	r0
      0031CE E6               [12] 1469 	mov	a,@r0
      0031CF C3               [12] 1470 	clr	c
      0031D0 13               [12] 1471 	rrc	a
      0031D1 F6               [12] 1472 	mov	@r0,a
      0031D2 18               [12] 1473 	dec	r0
      0031D3 E6               [12] 1474 	mov	a,@r0
      0031D4 13               [12] 1475 	rrc	a
      0031D5 F6               [12] 1476 	mov	@r0,a
      0031D6 18               [12] 1477 	dec	r0
      0031D7 E6               [12] 1478 	mov	a,@r0
      0031D8 13               [12] 1479 	rrc	a
      0031D9 F6               [12] 1480 	mov	@r0,a
      0031DA 18               [12] 1481 	dec	r0
      0031DB E6               [12] 1482 	mov	a,@r0
      0031DC 13               [12] 1483 	rrc	a
      0031DD F6               [12] 1484 	mov	@r0,a
      0031DE E5 08            [12] 1485 	mov	a,_bp
      0031E0 24 16            [12] 1486 	add	a,#0x16
      0031E2 F8               [12] 1487 	mov	r0,a
      0031E3 E6               [12] 1488 	mov	a,@r0
      0031E4 08               [12] 1489 	inc	r0
      0031E5 46               [12] 1490 	orl	a,@r0
      0031E6 08               [12] 1491 	inc	r0
      0031E7 46               [12] 1492 	orl	a,@r0
      0031E8 08               [12] 1493 	inc	r0
      0031E9 46               [12] 1494 	orl	a,@r0
      0031EA 70 9B            [24] 1495 	jnz	00152$
                                   1496 ;	calc.c:105: printstr("\r\n");
      0031EC 7D 82            [12] 1497 	mov	r5,#___str_5
      0031EE 7B 88            [12] 1498 	mov	r3,#(___str_5 >> 8)
      0031F0 7A 80            [12] 1499 	mov	r2,#0x80
                                   1500 ;	calc.c:51: return;
      0031F2                       1501 00155$:
                                   1502 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0031F2 8D 82            [24] 1503 	mov	dpl,r5
      0031F4 8B 83            [24] 1504 	mov	dph,r3
      0031F6 8A F0            [24] 1505 	mov	b,r2
      0031F8 12 6F D1         [24] 1506 	lcall	__gptrget
      0031FB FE               [12] 1507 	mov	r6,a
      0031FC 60 16            [24] 1508 	jz	00131$
      0031FE C0 07            [24] 1509 	push	ar7
      003200 8E 04            [24] 1510 	mov	ar4,r6
      003202 7F 00            [12] 1511 	mov	r7,#0x00
      003204 8C 82            [24] 1512 	mov	dpl,r4
      003206 8F 83            [24] 1513 	mov	dph,r7
      003208 12 2B D5         [24] 1514 	lcall	_putchar
      00320B 0D               [12] 1515 	inc	r5
      00320C BD 00 01         [24] 1516 	cjne	r5,#0x00,00338$
      00320F 0B               [12] 1517 	inc	r3
      003210                       1518 00338$:
      003210 D0 07            [24] 1519 	pop	ar7
                                   1520 ;	calc.c:105: printstr("\r\n");
      003212 80 DE            [24] 1521 	sjmp	00155$
      003214                       1522 00131$:
                                   1523 ;	calc.c:100: for (r = stack_pop(ctx->ss, &d); r > 0; r = stack_pop(ctx->ss, &d)) {
      003214 8F 06            [24] 1524 	mov	ar6,r7
      003216 7D 00            [12] 1525 	mov	r5,#0x00
      003218 7A 40            [12] 1526 	mov	r2,#0x40
      00321A C0 07            [24] 1527 	push	ar7
      00321C E5 08            [12] 1528 	mov	a,_bp
      00321E 24 08            [12] 1529 	add	a,#0x08
      003220 F8               [12] 1530 	mov	r0,a
      003221 86 82            [24] 1531 	mov	dpl,@r0
      003223 08               [12] 1532 	inc	r0
      003224 86 83            [24] 1533 	mov	dph,@r0
      003226 08               [12] 1534 	inc	r0
      003227 86 F0            [24] 1535 	mov	b,@r0
      003229 12 6F D1         [24] 1536 	lcall	__gptrget
      00322C FB               [12] 1537 	mov	r3,a
      00322D A3               [24] 1538 	inc	dptr
      00322E 12 6F D1         [24] 1539 	lcall	__gptrget
      003231 FC               [12] 1540 	mov	r4,a
      003232 A3               [24] 1541 	inc	dptr
      003233 12 6F D1         [24] 1542 	lcall	__gptrget
      003236 FF               [12] 1543 	mov	r7,a
      003237 C0 06            [24] 1544 	push	ar6
      003239 C0 05            [24] 1545 	push	ar5
      00323B C0 02            [24] 1546 	push	ar2
      00323D 8B 82            [24] 1547 	mov	dpl,r3
      00323F 8C 83            [24] 1548 	mov	dph,r4
      003241 8F F0            [24] 1549 	mov	b,r7
      003243 12 27 B4         [24] 1550 	lcall	_stack_pop
      003246 AC 82            [24] 1551 	mov	r4,dpl
      003248 AF 83            [24] 1552 	mov	r7,dph
      00324A 15 81            [12] 1553 	dec	sp
      00324C 15 81            [12] 1554 	dec	sp
      00324E 15 81            [12] 1555 	dec	sp
      003250 8C 05            [24] 1556 	mov	ar5,r4
      003252 8F 06            [24] 1557 	mov	ar6,r7
      003254 D0 07            [24] 1558 	pop	ar7
      003256 02 30 C6         [24] 1559 	ljmp	00158$
      003259                       1560 00113$:
                                   1561 ;	calc.c:109: return 1;
      003259 90 00 01         [24] 1562 	mov	dptr,#0x0001
                                   1563 ;	calc.c:110: }
      00325C 85 08 81         [24] 1564 	mov	sp,_bp
      00325F D0 08            [24] 1565 	pop	_bp
      003261 22               [24] 1566 	ret
                                   1567 ;------------------------------------------------------------
                                   1568 ;Allocation info for local variables in function 'dump_peek'
                                   1569 ;------------------------------------------------------------
                                   1570 ;d                         Allocated to stack - _bp -6
                                   1571 ;_ctx                      Allocated to registers 
                                   1572 ;__1310720019              Allocated to registers 
                                   1573 ;s                         Allocated to registers r5 r6 r7 
                                   1574 ;__1310720021              Allocated to registers r4 r5 r6 r7 
                                   1575 ;d                         Allocated to stack - _bp +1
                                   1576 ;mask                      Allocated to stack - _bp +5
                                   1577 ;__1310720023              Allocated to registers 
                                   1578 ;s                         Allocated to registers r5 r6 r7 
                                   1579 ;------------------------------------------------------------
                                   1580 ;	calc.c:112: static int dump_peek(void *_ctx, long d) __reentrant {
                                   1581 ;	-----------------------------------------
                                   1582 ;	 function dump_peek
                                   1583 ;	-----------------------------------------
      003262                       1584 _dump_peek:
      003262 C0 08            [24] 1585 	push	_bp
      003264 E5 81            [12] 1586 	mov	a,sp
      003266 F5 08            [12] 1587 	mov	_bp,a
      003268 24 08            [12] 1588 	add	a,#0x08
      00326A F5 81            [12] 1589 	mov	sp,a
                                   1590 ;	calc.c:115: printstr("PA ");
      00326C 7D 8A            [12] 1591 	mov	r5,#___str_7
      00326E 7E 88            [12] 1592 	mov	r6,#(___str_7 >> 8)
      003270 7F 80            [12] 1593 	mov	r7,#0x80
                                   1594 ;	calc.c:51: return;
      003272                       1595 00108$:
                                   1596 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003272 8D 82            [24] 1597 	mov	dpl,r5
      003274 8E 83            [24] 1598 	mov	dph,r6
      003276 8F F0            [24] 1599 	mov	b,r7
      003278 12 6F D1         [24] 1600 	lcall	__gptrget
      00327B FC               [12] 1601 	mov	r4,a
      00327C 60 10            [24] 1602 	jz	00102$
      00327E 7B 00            [12] 1603 	mov	r3,#0x00
      003280 8C 82            [24] 1604 	mov	dpl,r4
      003282 8B 83            [24] 1605 	mov	dph,r3
      003284 12 2B D5         [24] 1606 	lcall	_putchar
      003287 0D               [12] 1607 	inc	r5
                                   1608 ;	calc.c:115: printstr("PA ");
      003288 BD 00 E7         [24] 1609 	cjne	r5,#0x00,00108$
      00328B 0E               [12] 1610 	inc	r6
      00328C 80 E4            [24] 1611 	sjmp	00108$
      00328E                       1612 00102$:
                                   1613 ;	calc.c:116: printf("% 11ld / ", d);
      00328E E5 08            [12] 1614 	mov	a,_bp
      003290 24 FA            [12] 1615 	add	a,#0xfa
      003292 F8               [12] 1616 	mov	r0,a
      003293 E6               [12] 1617 	mov	a,@r0
      003294 C0 E0            [24] 1618 	push	acc
      003296 08               [12] 1619 	inc	r0
      003297 E6               [12] 1620 	mov	a,@r0
      003298 C0 E0            [24] 1621 	push	acc
      00329A 08               [12] 1622 	inc	r0
      00329B E6               [12] 1623 	mov	a,@r0
      00329C C0 E0            [24] 1624 	push	acc
      00329E 08               [12] 1625 	inc	r0
      00329F E6               [12] 1626 	mov	a,@r0
      0032A0 C0 E0            [24] 1627 	push	acc
      0032A2 74 6F            [12] 1628 	mov	a,#___str_3
      0032A4 C0 E0            [24] 1629 	push	acc
      0032A6 74 88            [12] 1630 	mov	a,#(___str_3 >> 8)
      0032A8 C0 E0            [24] 1631 	push	acc
      0032AA 74 80            [12] 1632 	mov	a,#0x80
      0032AC C0 E0            [24] 1633 	push	acc
      0032AE 12 6F 98         [24] 1634 	lcall	_printf
      0032B1 E5 81            [12] 1635 	mov	a,sp
      0032B3 24 F9            [12] 1636 	add	a,#0xf9
      0032B5 F5 81            [12] 1637 	mov	sp,a
                                   1638 ;	calc.c:117: printf("%08lx / ", d);
      0032B7 E5 08            [12] 1639 	mov	a,_bp
      0032B9 24 FA            [12] 1640 	add	a,#0xfa
      0032BB F8               [12] 1641 	mov	r0,a
      0032BC E6               [12] 1642 	mov	a,@r0
      0032BD C0 E0            [24] 1643 	push	acc
      0032BF 08               [12] 1644 	inc	r0
      0032C0 E6               [12] 1645 	mov	a,@r0
      0032C1 C0 E0            [24] 1646 	push	acc
      0032C3 08               [12] 1647 	inc	r0
      0032C4 E6               [12] 1648 	mov	a,@r0
      0032C5 C0 E0            [24] 1649 	push	acc
      0032C7 08               [12] 1650 	inc	r0
      0032C8 E6               [12] 1651 	mov	a,@r0
      0032C9 C0 E0            [24] 1652 	push	acc
      0032CB 74 79            [12] 1653 	mov	a,#___str_4
      0032CD C0 E0            [24] 1654 	push	acc
      0032CF 74 88            [12] 1655 	mov	a,#(___str_4 >> 8)
      0032D1 C0 E0            [24] 1656 	push	acc
      0032D3 74 80            [12] 1657 	mov	a,#0x80
      0032D5 C0 E0            [24] 1658 	push	acc
      0032D7 12 6F 98         [24] 1659 	lcall	_printf
      0032DA E5 81            [12] 1660 	mov	a,sp
      0032DC 24 F9            [12] 1661 	add	a,#0xf9
      0032DE F5 81            [12] 1662 	mov	sp,a
                                   1663 ;	calc.c:118: printbin(d);
      0032E0 E5 08            [12] 1664 	mov	a,_bp
      0032E2 24 FA            [12] 1665 	add	a,#0xfa
      0032E4 F8               [12] 1666 	mov	r0,a
      0032E5 86 04            [24] 1667 	mov	ar4,@r0
      0032E7 08               [12] 1668 	inc	r0
      0032E8 86 05            [24] 1669 	mov	ar5,@r0
      0032EA 08               [12] 1670 	inc	r0
      0032EB 86 06            [24] 1671 	mov	ar6,@r0
      0032ED 08               [12] 1672 	inc	r0
      0032EE 86 07            [24] 1673 	mov	ar7,@r0
      0032F0 A8 08            [24] 1674 	mov	r0,_bp
      0032F2 08               [12] 1675 	inc	r0
      0032F3 A6 04            [24] 1676 	mov	@r0,ar4
      0032F5 08               [12] 1677 	inc	r0
      0032F6 A6 05            [24] 1678 	mov	@r0,ar5
      0032F8 08               [12] 1679 	inc	r0
      0032F9 A6 06            [24] 1680 	mov	@r0,ar6
      0032FB 08               [12] 1681 	inc	r0
      0032FC A6 07            [24] 1682 	mov	@r0,ar7
                                   1683 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      0032FE E5 08            [12] 1684 	mov	a,_bp
      003300 24 05            [12] 1685 	add	a,#0x05
      003302 F8               [12] 1686 	mov	r0,a
      003303 E4               [12] 1687 	clr	a
      003304 F6               [12] 1688 	mov	@r0,a
      003305 08               [12] 1689 	inc	r0
      003306 F6               [12] 1690 	mov	@r0,a
      003307 08               [12] 1691 	inc	r0
      003308 F6               [12] 1692 	mov	@r0,a
      003309 08               [12] 1693 	inc	r0
      00330A 76 80            [12] 1694 	mov	@r0,#0x80
      00330C                       1695 00110$:
                                   1696 ;	calc.c:58: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      00330C A8 08            [24] 1697 	mov	r0,_bp
      00330E 08               [12] 1698 	inc	r0
      00330F 86 04            [24] 1699 	mov	ar4,@r0
      003311 08               [12] 1700 	inc	r0
      003312 86 05            [24] 1701 	mov	ar5,@r0
      003314 08               [12] 1702 	inc	r0
      003315 86 06            [24] 1703 	mov	ar6,@r0
      003317 08               [12] 1704 	inc	r0
      003318 86 07            [24] 1705 	mov	ar7,@r0
      00331A E5 08            [12] 1706 	mov	a,_bp
      00331C 24 05            [12] 1707 	add	a,#0x05
      00331E F8               [12] 1708 	mov	r0,a
      00331F E6               [12] 1709 	mov	a,@r0
      003320 52 04            [12] 1710 	anl	ar4,a
      003322 08               [12] 1711 	inc	r0
      003323 E6               [12] 1712 	mov	a,@r0
      003324 52 05            [12] 1713 	anl	ar5,a
      003326 08               [12] 1714 	inc	r0
      003327 E6               [12] 1715 	mov	a,@r0
      003328 52 06            [12] 1716 	anl	ar6,a
      00332A 08               [12] 1717 	inc	r0
      00332B E6               [12] 1718 	mov	a,@r0
      00332C 52 07            [12] 1719 	anl	ar7,a
      00332E EC               [12] 1720 	mov	a,r4
      00332F 4D               [12] 1721 	orl	a,r5
      003330 4E               [12] 1722 	orl	a,r6
      003331 4F               [12] 1723 	orl	a,r7
      003332 60 06            [24] 1724 	jz	00117$
      003334 7E 31            [12] 1725 	mov	r6,#0x31
      003336 7F 00            [12] 1726 	mov	r7,#0x00
      003338 80 04            [24] 1727 	sjmp	00118$
      00333A                       1728 00117$:
      00333A 7E 30            [12] 1729 	mov	r6,#0x30
      00333C 7F 00            [12] 1730 	mov	r7,#0x00
      00333E                       1731 00118$:
      00333E 8E 82            [24] 1732 	mov	dpl,r6
      003340 8F 83            [24] 1733 	mov	dph,r7
      003342 12 2B D5         [24] 1734 	lcall	_putchar
                                   1735 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      003345 E5 08            [12] 1736 	mov	a,_bp
      003347 24 05            [12] 1737 	add	a,#0x05
      003349 F8               [12] 1738 	mov	r0,a
      00334A 08               [12] 1739 	inc	r0
      00334B 08               [12] 1740 	inc	r0
      00334C 08               [12] 1741 	inc	r0
      00334D E6               [12] 1742 	mov	a,@r0
      00334E C3               [12] 1743 	clr	c
      00334F 13               [12] 1744 	rrc	a
      003350 F6               [12] 1745 	mov	@r0,a
      003351 18               [12] 1746 	dec	r0
      003352 E6               [12] 1747 	mov	a,@r0
      003353 13               [12] 1748 	rrc	a
      003354 F6               [12] 1749 	mov	@r0,a
      003355 18               [12] 1750 	dec	r0
      003356 E6               [12] 1751 	mov	a,@r0
      003357 13               [12] 1752 	rrc	a
      003358 F6               [12] 1753 	mov	@r0,a
      003359 18               [12] 1754 	dec	r0
      00335A E6               [12] 1755 	mov	a,@r0
      00335B 13               [12] 1756 	rrc	a
      00335C F6               [12] 1757 	mov	@r0,a
      00335D E5 08            [12] 1758 	mov	a,_bp
      00335F 24 05            [12] 1759 	add	a,#0x05
      003361 F8               [12] 1760 	mov	r0,a
      003362 E6               [12] 1761 	mov	a,@r0
      003363 08               [12] 1762 	inc	r0
      003364 46               [12] 1763 	orl	a,@r0
      003365 08               [12] 1764 	inc	r0
      003366 46               [12] 1765 	orl	a,@r0
      003367 08               [12] 1766 	inc	r0
      003368 46               [12] 1767 	orl	a,@r0
      003369 70 A1            [24] 1768 	jnz	00110$
                                   1769 ;	calc.c:119: printstr("\r\n");
      00336B 7D 82            [12] 1770 	mov	r5,#___str_5
      00336D 7E 88            [12] 1771 	mov	r6,#(___str_5 >> 8)
      00336F 7F 80            [12] 1772 	mov	r7,#0x80
                                   1773 ;	calc.c:51: return;
      003371                       1774 00113$:
                                   1775 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003371 8D 82            [24] 1776 	mov	dpl,r5
      003373 8E 83            [24] 1777 	mov	dph,r6
      003375 8F F0            [24] 1778 	mov	b,r7
      003377 12 6F D1         [24] 1779 	lcall	__gptrget
      00337A FC               [12] 1780 	mov	r4,a
      00337B 60 10            [24] 1781 	jz	00106$
      00337D 7B 00            [12] 1782 	mov	r3,#0x00
      00337F 8C 82            [24] 1783 	mov	dpl,r4
      003381 8B 83            [24] 1784 	mov	dph,r3
      003383 12 2B D5         [24] 1785 	lcall	_putchar
      003386 0D               [12] 1786 	inc	r5
                                   1787 ;	calc.c:119: printstr("\r\n");
      003387 BD 00 E7         [24] 1788 	cjne	r5,#0x00,00113$
      00338A 0E               [12] 1789 	inc	r6
      00338B 80 E4            [24] 1790 	sjmp	00113$
      00338D                       1791 00106$:
                                   1792 ;	calc.c:121: return 1;
      00338D 90 00 01         [24] 1793 	mov	dptr,#0x0001
                                   1794 ;	calc.c:122: }
      003390 85 08 81         [24] 1795 	mov	sp,_bp
      003393 D0 08            [24] 1796 	pop	_bp
      003395 22               [24] 1797 	ret
                                   1798 ;------------------------------------------------------------
                                   1799 ;Allocation info for local variables in function 'operator'
                                   1800 ;------------------------------------------------------------
                                   1801 ;delta                     Allocated to stack - _bp -5
                                   1802 ;_ctx                      Allocated to stack - _bp +1
                                   1803 ;ctx                       Allocated to stack - _bp +18
                                   1804 ;t0                        Allocated to registers r7 r6 r5 
                                   1805 ;d0                        Allocated to stack - _bp +21
                                   1806 ;d1                        Allocated to stack - _bp +25
                                   1807 ;__1966080025              Allocated to registers 
                                   1808 ;s                         Allocated to registers r7 r6 r5 
                                   1809 ;__1966080027              Allocated to registers 
                                   1810 ;s                         Allocated to registers r7 r6 r5 
                                   1811 ;__2621440029              Allocated to registers 
                                   1812 ;s                         Allocated to registers r7 r6 r5 
                                   1813 ;__2621440031              Allocated to registers r7 r6 r5 r4 
                                   1814 ;d                         Allocated to registers r7 r6 r5 r2 
                                   1815 ;mask                      Allocated to stack - _bp +29
                                   1816 ;__2621440033              Allocated to registers 
                                   1817 ;s                         Allocated to registers r7 r6 r5 
                                   1818 ;__1966080035              Allocated to registers 
                                   1819 ;s                         Allocated to registers r7 r6 r5 
                                   1820 ;__1966080037              Allocated to registers 
                                   1821 ;s                         Allocated to registers r7 r6 r5 
                                   1822 ;__1966080039              Allocated to registers 
                                   1823 ;s                         Allocated to registers r7 r6 r5 
                                   1824 ;__1966080041              Allocated to registers 
                                   1825 ;s                         Allocated to registers r7 r6 r5 
                                   1826 ;__2621440043              Allocated to registers 
                                   1827 ;s                         Allocated to registers r7 r6 r5 
                                   1828 ;__2621440045              Allocated to registers r7 r6 r5 r4 
                                   1829 ;d                         Allocated to registers r7 r6 r5 r2 
                                   1830 ;mask                      Allocated to stack - _bp +29
                                   1831 ;__2621440047              Allocated to registers 
                                   1832 ;s                         Allocated to registers r7 r6 r5 
                                   1833 ;__1966080049              Allocated to registers 
                                   1834 ;s                         Allocated to registers r7 r6 r5 
                                   1835 ;__1966080051              Allocated to registers 
                                   1836 ;s                         Allocated to registers r7 r6 r5 
                                   1837 ;__2621440053              Allocated to registers 
                                   1838 ;s                         Allocated to registers r7 r6 r5 
                                   1839 ;__1966080055              Allocated to registers 
                                   1840 ;s                         Allocated to registers r7 r6 r5 
                                   1841 ;__3276800057              Allocated to registers 
                                   1842 ;s                         Allocated to registers r7 r6 r5 
                                   1843 ;__1966080059              Allocated to registers 
                                   1844 ;s                         Allocated to registers r7 r6 r5 
                                   1845 ;__3276800061              Allocated to registers 
                                   1846 ;s                         Allocated to registers r7 r6 r5 
                                   1847 ;__1966080063              Allocated to registers 
                                   1848 ;s                         Allocated to registers r7 r6 r5 
                                   1849 ;__1966080065              Allocated to registers 
                                   1850 ;s                         Allocated to registers r7 r6 r5 
                                   1851 ;__1966080067              Allocated to registers 
                                   1852 ;s                         Allocated to registers r7 r6 r5 
                                   1853 ;__1966080069              Allocated to registers 
                                   1854 ;s                         Allocated to registers r7 r6 r5 
                                   1855 ;__1966080071              Allocated to registers 
                                   1856 ;s                         Allocated to registers r7 r6 r5 
                                   1857 ;__3276800073              Allocated to registers 
                                   1858 ;s                         Allocated to registers r7 r6 r5 
                                   1859 ;__1966080075              Allocated to registers 
                                   1860 ;s                         Allocated to registers r7 r6 r5 
                                   1861 ;__2621440077              Allocated to registers 
                                   1862 ;s                         Allocated to registers r7 r6 r5 
                                   1863 ;__1966080079              Allocated to registers 
                                   1864 ;s                         Allocated to registers r7 r6 r5 
                                   1865 ;__2621440081              Allocated to registers 
                                   1866 ;s                         Allocated to registers r7 r6 r5 
                                   1867 ;__1966080083              Allocated to registers 
                                   1868 ;s                         Allocated to registers r7 r6 r5 
                                   1869 ;__2621440085              Allocated to registers 
                                   1870 ;s                         Allocated to registers r7 r6 r5 
                                   1871 ;__1966080087              Allocated to registers 
                                   1872 ;s                         Allocated to registers r7 r6 r5 
                                   1873 ;__2621440089              Allocated to registers 
                                   1874 ;s                         Allocated to registers r7 r6 r5 
                                   1875 ;__2621440091              Allocated to registers 
                                   1876 ;s                         Allocated to registers r7 r6 r5 
                                   1877 ;__1966080093              Allocated to registers 
                                   1878 ;s                         Allocated to registers r7 r6 r5 
                                   1879 ;__2621440095              Allocated to registers 
                                   1880 ;s                         Allocated to registers r7 r6 r5 
                                   1881 ;__2621440097              Allocated to registers 
                                   1882 ;s                         Allocated to registers r7 r6 r5 
                                   1883 ;__1966080099              Allocated to registers 
                                   1884 ;s                         Allocated to registers r5 r4 r3 
                                   1885 ;__2621440101              Allocated to registers 
                                   1886 ;s                         Allocated to registers r5 r4 r3 
                                   1887 ;__1966080103              Allocated to registers 
                                   1888 ;s                         Allocated to registers r5 r4 r3 
                                   1889 ;__2621440105              Allocated to registers 
                                   1890 ;s                         Allocated to registers r5 r4 r3 
                                   1891 ;__1966080107              Allocated to registers 
                                   1892 ;s                         Allocated to registers r5 r4 r3 
                                   1893 ;__2621440109              Allocated to registers 
                                   1894 ;s                         Allocated to registers r5 r4 r3 
                                   1895 ;__1966080111              Allocated to registers 
                                   1896 ;s                         Allocated to registers r5 r4 r3 
                                   1897 ;__2621440113              Allocated to registers 
                                   1898 ;s                         Allocated to registers r5 r4 r3 
                                   1899 ;__1966080115              Allocated to registers 
                                   1900 ;s                         Allocated to registers r5 r4 r3 
                                   1901 ;__2621440117              Allocated to registers 
                                   1902 ;s                         Allocated to registers r5 r4 r3 
                                   1903 ;__1966080119              Allocated to registers 
                                   1904 ;s                         Allocated to registers r5 r4 r3 
                                   1905 ;__2621440121              Allocated to registers 
                                   1906 ;s                         Allocated to registers r5 r4 r3 
                                   1907 ;__1966080123              Allocated to registers 
                                   1908 ;s                         Allocated to registers r5 r4 r3 
                                   1909 ;sloc0                     Allocated to stack - _bp +330
                                   1910 ;sloc1                     Allocated to stack - _bp +4
                                   1911 ;sloc2                     Allocated to stack - _bp +7
                                   1912 ;sloc3                     Allocated to stack - _bp +11
                                   1913 ;sloc4                     Allocated to stack - _bp +14
                                   1914 ;------------------------------------------------------------
                                   1915 ;	calc.c:124: static int operator(void *_ctx, delta_t *delta) __reentrant {
                                   1916 ;	-----------------------------------------
                                   1917 ;	 function operator
                                   1918 ;	-----------------------------------------
      003396                       1919 _operator:
      003396 C0 08            [24] 1920 	push	_bp
      003398 85 81 08         [24] 1921 	mov	_bp,sp
      00339B C0 82            [24] 1922 	push	dpl
      00339D C0 83            [24] 1923 	push	dph
      00339F C0 F0            [24] 1924 	push	b
      0033A1 E5 81            [12] 1925 	mov	a,sp
      0033A3 24 1D            [12] 1926 	add	a,#0x1d
      0033A5 F5 81            [12] 1927 	mov	sp,a
                                   1928 ;	calc.c:125: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
      0033A7 A8 08            [24] 1929 	mov	r0,_bp
      0033A9 08               [12] 1930 	inc	r0
      0033AA E5 08            [12] 1931 	mov	a,_bp
      0033AC 24 12            [12] 1932 	add	a,#0x12
      0033AE F9               [12] 1933 	mov	r1,a
      0033AF E6               [12] 1934 	mov	a,@r0
      0033B0 F7               [12] 1935 	mov	@r1,a
      0033B1 08               [12] 1936 	inc	r0
      0033B2 09               [12] 1937 	inc	r1
      0033B3 E6               [12] 1938 	mov	a,@r0
      0033B4 F7               [12] 1939 	mov	@r1,a
      0033B5 08               [12] 1940 	inc	r0
      0033B6 09               [12] 1941 	inc	r1
      0033B7 E6               [12] 1942 	mov	a,@r0
      0033B8 F7               [12] 1943 	mov	@r1,a
                                   1944 ;	calc.c:129: switch (ctx->digit[0]) {
      0033B9 E5 08            [12] 1945 	mov	a,_bp
      0033BB 24 12            [12] 1946 	add	a,#0x12
      0033BD F8               [12] 1947 	mov	r0,a
      0033BE 74 07            [12] 1948 	mov	a,#0x07
      0033C0 26               [12] 1949 	add	a,@r0
      0033C1 FD               [12] 1950 	mov	r5,a
      0033C2 E4               [12] 1951 	clr	a
      0033C3 08               [12] 1952 	inc	r0
      0033C4 36               [12] 1953 	addc	a,@r0
      0033C5 FE               [12] 1954 	mov	r6,a
      0033C6 08               [12] 1955 	inc	r0
      0033C7 86 07            [24] 1956 	mov	ar7,@r0
      0033C9 8D 82            [24] 1957 	mov	dpl,r5
      0033CB 8E 83            [24] 1958 	mov	dph,r6
      0033CD 8F F0            [24] 1959 	mov	b,r7
      0033CF 12 6F D1         [24] 1960 	lcall	__gptrget
      0033D2 FC               [12] 1961 	mov	r4,a
      0033D3 BC 23 03         [24] 1962 	cjne	r4,#0x23,01232$
      0033D6 02 48 8F         [24] 1963 	ljmp	00189$
      0033D9                       1964 01232$:
      0033D9 BC 25 03         [24] 1965 	cjne	r4,#0x25,01233$
      0033DC 02 48 8F         [24] 1966 	ljmp	00189$
      0033DF                       1967 01233$:
      0033DF BC 26 03         [24] 1968 	cjne	r4,#0x26,01234$
      0033E2 02 4B 75         [24] 1969 	ljmp	00202$
      0033E5                       1970 01234$:
      0033E5 BC 2A 03         [24] 1971 	cjne	r4,#0x2a,01235$
      0033E8 02 43 FF         [24] 1972 	ljmp	00167$
      0033EB                       1973 01235$:
      0033EB BC 2B 03         [24] 1974 	cjne	r4,#0x2b,01236$
      0033EE 02 41 00         [24] 1975 	ljmp	00153$
      0033F1                       1976 01236$:
      0033F1 BC 2D 03         [24] 1977 	cjne	r4,#0x2d,01237$
      0033F4 02 42 7F         [24] 1978 	ljmp	00160$
      0033F7                       1979 01237$:
      0033F7 BC 2E 03         [24] 1980 	cjne	r4,#0x2e,01238$
      0033FA 02 36 CD         [24] 1981 	ljmp	00109$
      0033FD                       1982 01238$:
      0033FD BC 2F 03         [24] 1983 	cjne	r4,#0x2f,01239$
      003400 02 45 A5         [24] 1984 	ljmp	00175$
      003403                       1985 01239$:
      003403 BC 3C 03         [24] 1986 	cjne	r4,#0x3c,01240$
      003406 02 53 9A         [24] 1987 	ljmp	00237$
      003409                       1988 01240$:
      003409 BC 3E 03         [24] 1989 	cjne	r4,#0x3e,01241$
      00340C 02 50 43         [24] 1990 	ljmp	00223$
      00340F                       1991 01241$:
      00340F BC 4D 03         [24] 1992 	cjne	r4,#0x4d,01242$
      003412 02 3B A6         [24] 1993 	ljmp	00127$
      003415                       1994 01242$:
      003415 BC 50 03         [24] 1995 	cjne	r4,#0x50,01243$
      003418 02 36 2C         [24] 1996 	ljmp	00105$
      00341B                       1997 01243$:
      00341B BC 54 03         [24] 1998 	cjne	r4,#0x54,01244$
      00341E 02 3E A8         [24] 1999 	ljmp	00145$
      003421                       2000 01244$:
      003421 BC 55 03         [24] 2001 	cjne	r4,#0x55,01245$
      003424 02 3D C1         [24] 2002 	ljmp	00139$
      003427                       2003 01245$:
      003427 BC 56 03         [24] 2004 	cjne	r4,#0x56,01246$
      00342A 02 38 88         [24] 2005 	ljmp	00113$
      00342D                       2006 01246$:
      00342D BC 58 03         [24] 2007 	cjne	r4,#0x58,01247$
      003430 02 40 61         [24] 2008 	ljmp	00152$
      003433                       2009 01247$:
      003433 BC 5C 03         [24] 2010 	cjne	r4,#0x5c,01248$
      003436 02 45 A5         [24] 2011 	ljmp	00175$
      003439                       2012 01248$:
      003439 BC 5D 03         [24] 2013 	cjne	r4,#0x5d,01249$
      00343C 02 51 E6         [24] 2014 	ljmp	00230$
      00343F                       2015 01249$:
      00343F BC 5E 03         [24] 2016 	cjne	r4,#0x5e,01250$
      003442 02 4E A9         [24] 2017 	ljmp	00216$
      003445                       2018 01250$:
      003445 BC 6D 03         [24] 2019 	cjne	r4,#0x6d,01251$
      003448 02 3A 72         [24] 2020 	ljmp	00121$
      00344B                       2021 01251$:
      00344B BC 70 02         [24] 2022 	cjne	r4,#0x70,01252$
      00344E 80 21            [24] 2023 	sjmp	00101$
      003450                       2024 01252$:
      003450 BC 75 03         [24] 2025 	cjne	r4,#0x75,01253$
      003453 02 3C DA         [24] 2026 	ljmp	00133$
      003456                       2027 01253$:
      003456 BC 76 03         [24] 2028 	cjne	r4,#0x76,01254$
      003459 02 36 CD         [24] 2029 	ljmp	00109$
      00345C                       2030 01254$:
      00345C BC 78 03         [24] 2031 	cjne	r4,#0x78,01255$
      00345F 02 38 D1         [24] 2032 	ljmp	00114$
      003462                       2033 01255$:
      003462 BC 7C 03         [24] 2034 	cjne	r4,#0x7c,01256$
      003465 02 4D 0F         [24] 2035 	ljmp	00209$
      003468                       2036 01256$:
      003468 BC 7E 03         [24] 2037 	cjne	r4,#0x7e,01257$
      00346B 02 55 3D         [24] 2038 	ljmp	00244$
      00346E                       2039 01257$:
      00346E 02 56 16         [24] 2040 	ljmp	00248$
                                   2041 ;	calc.c:130: case 'p':
      003471                       2042 00101$:
                                   2043 ;	calc.c:131: printstr("\r\n");
      003471 7F 82            [12] 2044 	mov	r7,#___str_5
      003473 7E 88            [12] 2045 	mov	r6,#(___str_5 >> 8)
      003475 7D 80            [12] 2046 	mov	r5,#0x80
                                   2047 ;	calc.c:51: return;
      003477                       2048 00351$:
                                   2049 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003477 8F 82            [24] 2050 	mov	dpl,r7
      003479 8E 83            [24] 2051 	mov	dph,r6
      00347B 8D F0            [24] 2052 	mov	b,r5
      00347D 12 6F D1         [24] 2053 	lcall	__gptrget
      003480 FC               [12] 2054 	mov	r4,a
      003481 60 10            [24] 2055 	jz	00251$
      003483 7B 00            [12] 2056 	mov	r3,#0x00
      003485 8C 82            [24] 2057 	mov	dpl,r4
      003487 8B 83            [24] 2058 	mov	dph,r3
      003489 12 2B D5         [24] 2059 	lcall	_putchar
      00348C 0F               [12] 2060 	inc	r7
                                   2061 ;	calc.c:131: printstr("\r\n");
      00348D BF 00 E7         [24] 2062 	cjne	r7,#0x00,00351$
      003490 0E               [12] 2063 	inc	r6
      003491 80 E4            [24] 2064 	sjmp	00351$
      003493                       2065 00251$:
                                   2066 ;	calc.c:132: if (!stack_peek(ctx->ps, &d0)) printstr("stack underflow\r\n");
      003493 E5 08            [12] 2067 	mov	a,_bp
      003495 24 15            [12] 2068 	add	a,#0x15
      003497 FF               [12] 2069 	mov	r7,a
      003498 7E 00            [12] 2070 	mov	r6,#0x00
      00349A 7D 40            [12] 2071 	mov	r5,#0x40
      00349C E5 08            [12] 2072 	mov	a,_bp
      00349E 24 12            [12] 2073 	add	a,#0x12
      0034A0 F8               [12] 2074 	mov	r0,a
      0034A1 74 13            [12] 2075 	mov	a,#0x13
      0034A3 26               [12] 2076 	add	a,@r0
      0034A4 FA               [12] 2077 	mov	r2,a
      0034A5 ED               [12] 2078 	mov	a,r5
      0034A6 08               [12] 2079 	inc	r0
      0034A7 36               [12] 2080 	addc	a,@r0
      0034A8 FB               [12] 2081 	mov	r3,a
      0034A9 08               [12] 2082 	inc	r0
      0034AA 86 04            [24] 2083 	mov	ar4,@r0
      0034AC 8A 82            [24] 2084 	mov	dpl,r2
      0034AE 8B 83            [24] 2085 	mov	dph,r3
      0034B0 8C F0            [24] 2086 	mov	b,r4
      0034B2 12 6F D1         [24] 2087 	lcall	__gptrget
      0034B5 FA               [12] 2088 	mov	r2,a
      0034B6 A3               [24] 2089 	inc	dptr
      0034B7 12 6F D1         [24] 2090 	lcall	__gptrget
      0034BA FB               [12] 2091 	mov	r3,a
      0034BB A3               [24] 2092 	inc	dptr
      0034BC 12 6F D1         [24] 2093 	lcall	__gptrget
      0034BF FC               [12] 2094 	mov	r4,a
      0034C0 C0 07            [24] 2095 	push	ar7
      0034C2 C0 06            [24] 2096 	push	ar6
      0034C4 C0 05            [24] 2097 	push	ar5
      0034C6 8A 82            [24] 2098 	mov	dpl,r2
      0034C8 8B 83            [24] 2099 	mov	dph,r3
      0034CA 8C F0            [24] 2100 	mov	b,r4
      0034CC 12 28 D8         [24] 2101 	lcall	_stack_peek
      0034CF AB 82            [24] 2102 	mov	r3,dpl
      0034D1 AC 83            [24] 2103 	mov	r4,dph
      0034D3 15 81            [12] 2104 	dec	sp
      0034D5 15 81            [12] 2105 	dec	sp
      0034D7 15 81            [12] 2106 	dec	sp
      0034D9 EB               [12] 2107 	mov	a,r3
      0034DA 4C               [12] 2108 	orl	a,r4
      0034DB 70 25            [24] 2109 	jnz	00103$
      0034DD 7F 59            [12] 2110 	mov	r7,#___str_1
      0034DF 7E 88            [12] 2111 	mov	r6,#(___str_1 >> 8)
      0034E1 7D 80            [12] 2112 	mov	r5,#0x80
                                   2113 ;	calc.c:51: return;
      0034E3                       2114 00354$:
                                   2115 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0034E3 8F 82            [24] 2116 	mov	dpl,r7
      0034E5 8E 83            [24] 2117 	mov	dph,r6
      0034E7 8D F0            [24] 2118 	mov	b,r5
      0034E9 12 6F D1         [24] 2119 	lcall	__gptrget
      0034EC FC               [12] 2120 	mov	r4,a
      0034ED 70 03            [24] 2121 	jnz	01261$
      0034EF 02 56 1B         [24] 2122 	ljmp	00249$
      0034F2                       2123 01261$:
      0034F2 7B 00            [12] 2124 	mov	r3,#0x00
      0034F4 8C 82            [24] 2125 	mov	dpl,r4
      0034F6 8B 83            [24] 2126 	mov	dph,r3
      0034F8 12 2B D5         [24] 2127 	lcall	_putchar
      0034FB 0F               [12] 2128 	inc	r7
                                   2129 ;	calc.c:132: if (!stack_peek(ctx->ps, &d0)) printstr("stack underflow\r\n");
      0034FC BF 00 E4         [24] 2130 	cjne	r7,#0x00,00354$
      0034FF 0E               [12] 2131 	inc	r6
      003500 80 E1            [24] 2132 	sjmp	00354$
      003502                       2133 00103$:
                                   2134 ;	calc.c:134: printstr("PT ");
      003502 7F 8E            [12] 2135 	mov	r7,#___str_8
      003504 7E 88            [12] 2136 	mov	r6,#(___str_8 >> 8)
      003506 7D 80            [12] 2137 	mov	r5,#0x80
                                   2138 ;	calc.c:51: return;
      003508                       2139 00357$:
                                   2140 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003508 8F 82            [24] 2141 	mov	dpl,r7
      00350A 8E 83            [24] 2142 	mov	dph,r6
      00350C 8D F0            [24] 2143 	mov	b,r5
      00350E 12 6F D1         [24] 2144 	lcall	__gptrget
      003511 FC               [12] 2145 	mov	r4,a
      003512 60 10            [24] 2146 	jz	00255$
      003514 7B 00            [12] 2147 	mov	r3,#0x00
      003516 8C 82            [24] 2148 	mov	dpl,r4
      003518 8B 83            [24] 2149 	mov	dph,r3
      00351A 12 2B D5         [24] 2150 	lcall	_putchar
      00351D 0F               [12] 2151 	inc	r7
                                   2152 ;	calc.c:134: printstr("PT ");
      00351E BF 00 E7         [24] 2153 	cjne	r7,#0x00,00357$
      003521 0E               [12] 2154 	inc	r6
      003522 80 E4            [24] 2155 	sjmp	00357$
      003524                       2156 00255$:
                                   2157 ;	calc.c:135: printf("% 11ld / ", d0);
      003524 E5 08            [12] 2158 	mov	a,_bp
      003526 24 15            [12] 2159 	add	a,#0x15
      003528 F8               [12] 2160 	mov	r0,a
      003529 E6               [12] 2161 	mov	a,@r0
      00352A C0 E0            [24] 2162 	push	acc
      00352C 08               [12] 2163 	inc	r0
      00352D E6               [12] 2164 	mov	a,@r0
      00352E C0 E0            [24] 2165 	push	acc
      003530 08               [12] 2166 	inc	r0
      003531 E6               [12] 2167 	mov	a,@r0
      003532 C0 E0            [24] 2168 	push	acc
      003534 08               [12] 2169 	inc	r0
      003535 E6               [12] 2170 	mov	a,@r0
      003536 C0 E0            [24] 2171 	push	acc
      003538 74 6F            [12] 2172 	mov	a,#___str_3
      00353A C0 E0            [24] 2173 	push	acc
      00353C 74 88            [12] 2174 	mov	a,#(___str_3 >> 8)
      00353E C0 E0            [24] 2175 	push	acc
      003540 74 80            [12] 2176 	mov	a,#0x80
      003542 C0 E0            [24] 2177 	push	acc
      003544 12 6F 98         [24] 2178 	lcall	_printf
      003547 E5 81            [12] 2179 	mov	a,sp
      003549 24 F9            [12] 2180 	add	a,#0xf9
      00354B F5 81            [12] 2181 	mov	sp,a
                                   2182 ;	calc.c:136: printf("%08lx / ", d0);
      00354D E5 08            [12] 2183 	mov	a,_bp
      00354F 24 15            [12] 2184 	add	a,#0x15
      003551 F8               [12] 2185 	mov	r0,a
      003552 E6               [12] 2186 	mov	a,@r0
      003553 C0 E0            [24] 2187 	push	acc
      003555 08               [12] 2188 	inc	r0
      003556 E6               [12] 2189 	mov	a,@r0
      003557 C0 E0            [24] 2190 	push	acc
      003559 08               [12] 2191 	inc	r0
      00355A E6               [12] 2192 	mov	a,@r0
      00355B C0 E0            [24] 2193 	push	acc
      00355D 08               [12] 2194 	inc	r0
      00355E E6               [12] 2195 	mov	a,@r0
      00355F C0 E0            [24] 2196 	push	acc
      003561 74 79            [12] 2197 	mov	a,#___str_4
      003563 C0 E0            [24] 2198 	push	acc
      003565 74 88            [12] 2199 	mov	a,#(___str_4 >> 8)
      003567 C0 E0            [24] 2200 	push	acc
      003569 74 80            [12] 2201 	mov	a,#0x80
      00356B C0 E0            [24] 2202 	push	acc
      00356D 12 6F 98         [24] 2203 	lcall	_printf
      003570 E5 81            [12] 2204 	mov	a,sp
      003572 24 F9            [12] 2205 	add	a,#0xf9
      003574 F5 81            [12] 2206 	mov	sp,a
                                   2207 ;	calc.c:137: printbin(d0);
      003576 E5 08            [12] 2208 	mov	a,_bp
      003578 24 15            [12] 2209 	add	a,#0x15
      00357A F8               [12] 2210 	mov	r0,a
      00357B 86 07            [24] 2211 	mov	ar7,@r0
      00357D 08               [12] 2212 	inc	r0
      00357E 86 06            [24] 2213 	mov	ar6,@r0
      003580 08               [12] 2214 	inc	r0
      003581 86 05            [24] 2215 	mov	ar5,@r0
      003583 08               [12] 2216 	inc	r0
      003584 86 04            [24] 2217 	mov	ar4,@r0
      003586 8C 02            [24] 2218 	mov	ar2,r4
                                   2219 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      003588 E5 08            [12] 2220 	mov	a,_bp
      00358A 24 1D            [12] 2221 	add	a,#0x1d
      00358C F8               [12] 2222 	mov	r0,a
      00358D E4               [12] 2223 	clr	a
      00358E F6               [12] 2224 	mov	@r0,a
      00358F 08               [12] 2225 	inc	r0
      003590 F6               [12] 2226 	mov	@r0,a
      003591 08               [12] 2227 	inc	r0
      003592 F6               [12] 2228 	mov	@r0,a
      003593 08               [12] 2229 	inc	r0
      003594 76 80            [12] 2230 	mov	@r0,#0x80
      003596                       2231 00359$:
                                   2232 ;	calc.c:58: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      003596 E5 08            [12] 2233 	mov	a,_bp
      003598 24 07            [12] 2234 	add	a,#0x07
      00359A F8               [12] 2235 	mov	r0,a
      00359B A6 07            [24] 2236 	mov	@r0,ar7
      00359D 08               [12] 2237 	inc	r0
      00359E A6 06            [24] 2238 	mov	@r0,ar6
      0035A0 08               [12] 2239 	inc	r0
      0035A1 A6 05            [24] 2240 	mov	@r0,ar5
      0035A3 08               [12] 2241 	inc	r0
      0035A4 A6 02            [24] 2242 	mov	@r0,ar2
      0035A6 E5 08            [12] 2243 	mov	a,_bp
      0035A8 24 07            [12] 2244 	add	a,#0x07
      0035AA F8               [12] 2245 	mov	r0,a
      0035AB E5 08            [12] 2246 	mov	a,_bp
      0035AD 24 1D            [12] 2247 	add	a,#0x1d
      0035AF F9               [12] 2248 	mov	r1,a
      0035B0 E7               [12] 2249 	mov	a,@r1
      0035B1 56               [12] 2250 	anl	a,@r0
      0035B2 F6               [12] 2251 	mov	@r0,a
      0035B3 09               [12] 2252 	inc	r1
      0035B4 E7               [12] 2253 	mov	a,@r1
      0035B5 08               [12] 2254 	inc	r0
      0035B6 56               [12] 2255 	anl	a,@r0
      0035B7 F6               [12] 2256 	mov	@r0,a
      0035B8 09               [12] 2257 	inc	r1
      0035B9 E7               [12] 2258 	mov	a,@r1
      0035BA 08               [12] 2259 	inc	r0
      0035BB 56               [12] 2260 	anl	a,@r0
      0035BC F6               [12] 2261 	mov	@r0,a
      0035BD 09               [12] 2262 	inc	r1
      0035BE E7               [12] 2263 	mov	a,@r1
      0035BF 08               [12] 2264 	inc	r0
      0035C0 56               [12] 2265 	anl	a,@r0
      0035C1 F6               [12] 2266 	mov	@r0,a
      0035C2 E5 08            [12] 2267 	mov	a,_bp
      0035C4 24 07            [12] 2268 	add	a,#0x07
      0035C6 F8               [12] 2269 	mov	r0,a
      0035C7 E6               [12] 2270 	mov	a,@r0
      0035C8 08               [12] 2271 	inc	r0
      0035C9 46               [12] 2272 	orl	a,@r0
      0035CA 08               [12] 2273 	inc	r0
      0035CB 46               [12] 2274 	orl	a,@r0
      0035CC 08               [12] 2275 	inc	r0
      0035CD 46               [12] 2276 	orl	a,@r0
      0035CE 60 06            [24] 2277 	jz	00500$
      0035D0 7B 31            [12] 2278 	mov	r3,#0x31
      0035D2 7C 00            [12] 2279 	mov	r4,#0x00
      0035D4 80 04            [24] 2280 	sjmp	00501$
      0035D6                       2281 00500$:
      0035D6 7B 30            [12] 2282 	mov	r3,#0x30
      0035D8 7C 00            [12] 2283 	mov	r4,#0x00
      0035DA                       2284 00501$:
      0035DA 8B 82            [24] 2285 	mov	dpl,r3
      0035DC 8C 83            [24] 2286 	mov	dph,r4
      0035DE 12 2B D5         [24] 2287 	lcall	_putchar
                                   2288 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      0035E1 E5 08            [12] 2289 	mov	a,_bp
      0035E3 24 1D            [12] 2290 	add	a,#0x1d
      0035E5 F8               [12] 2291 	mov	r0,a
      0035E6 08               [12] 2292 	inc	r0
      0035E7 08               [12] 2293 	inc	r0
      0035E8 08               [12] 2294 	inc	r0
      0035E9 E6               [12] 2295 	mov	a,@r0
      0035EA C3               [12] 2296 	clr	c
      0035EB 13               [12] 2297 	rrc	a
      0035EC F6               [12] 2298 	mov	@r0,a
      0035ED 18               [12] 2299 	dec	r0
      0035EE E6               [12] 2300 	mov	a,@r0
      0035EF 13               [12] 2301 	rrc	a
      0035F0 F6               [12] 2302 	mov	@r0,a
      0035F1 18               [12] 2303 	dec	r0
      0035F2 E6               [12] 2304 	mov	a,@r0
      0035F3 13               [12] 2305 	rrc	a
      0035F4 F6               [12] 2306 	mov	@r0,a
      0035F5 18               [12] 2307 	dec	r0
      0035F6 E6               [12] 2308 	mov	a,@r0
      0035F7 13               [12] 2309 	rrc	a
      0035F8 F6               [12] 2310 	mov	@r0,a
      0035F9 E5 08            [12] 2311 	mov	a,_bp
      0035FB 24 1D            [12] 2312 	add	a,#0x1d
      0035FD F8               [12] 2313 	mov	r0,a
      0035FE E6               [12] 2314 	mov	a,@r0
      0035FF 08               [12] 2315 	inc	r0
      003600 46               [12] 2316 	orl	a,@r0
      003601 08               [12] 2317 	inc	r0
      003602 46               [12] 2318 	orl	a,@r0
      003603 08               [12] 2319 	inc	r0
      003604 46               [12] 2320 	orl	a,@r0
      003605 70 8F            [24] 2321 	jnz	00359$
                                   2322 ;	calc.c:138: printstr("\r\n");
      003607 7F 82            [12] 2323 	mov	r7,#___str_5
      003609 7E 88            [12] 2324 	mov	r6,#(___str_5 >> 8)
      00360B 7D 80            [12] 2325 	mov	r5,#0x80
                                   2326 ;	calc.c:51: return;
      00360D                       2327 00362$:
                                   2328 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00360D 8F 82            [24] 2329 	mov	dpl,r7
      00360F 8E 83            [24] 2330 	mov	dph,r6
      003611 8D F0            [24] 2331 	mov	b,r5
      003613 12 6F D1         [24] 2332 	lcall	__gptrget
      003616 FC               [12] 2333 	mov	r4,a
      003617 70 03            [24] 2334 	jnz	01267$
      003619 02 56 1B         [24] 2335 	ljmp	00249$
      00361C                       2336 01267$:
      00361C 7B 00            [12] 2337 	mov	r3,#0x00
      00361E 8C 82            [24] 2338 	mov	dpl,r4
      003620 8B 83            [24] 2339 	mov	dph,r3
      003622 12 2B D5         [24] 2340 	lcall	_putchar
      003625 0F               [12] 2341 	inc	r7
                                   2342 ;	calc.c:141: case 'P':
      003626 BF 00 E4         [24] 2343 	cjne	r7,#0x00,00362$
      003629 0E               [12] 2344 	inc	r6
      00362A 80 E1            [24] 2345 	sjmp	00362$
      00362C                       2346 00105$:
                                   2347 ;	calc.c:142: printstr("\r\n");
      00362C 7F 82            [12] 2348 	mov	r7,#___str_5
      00362E 7E 88            [12] 2349 	mov	r6,#(___str_5 >> 8)
      003630 7D 80            [12] 2350 	mov	r5,#0x80
                                   2351 ;	calc.c:51: return;
      003632                       2352 00365$:
                                   2353 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003632 8F 82            [24] 2354 	mov	dpl,r7
      003634 8E 83            [24] 2355 	mov	dph,r6
      003636 8D F0            [24] 2356 	mov	b,r5
      003638 12 6F D1         [24] 2357 	lcall	__gptrget
      00363B FC               [12] 2358 	mov	r4,a
      00363C 60 10            [24] 2359 	jz	00261$
      00363E 7B 00            [12] 2360 	mov	r3,#0x00
      003640 8C 82            [24] 2361 	mov	dpl,r4
      003642 8B 83            [24] 2362 	mov	dph,r3
      003644 12 2B D5         [24] 2363 	lcall	_putchar
      003647 0F               [12] 2364 	inc	r7
                                   2365 ;	calc.c:142: printstr("\r\n");
      003648 BF 00 E7         [24] 2366 	cjne	r7,#0x00,00365$
      00364B 0E               [12] 2367 	inc	r6
      00364C 80 E4            [24] 2368 	sjmp	00365$
      00364E                       2369 00261$:
                                   2370 ;	calc.c:143: if (!stack_iter_peek(ctx->ps, dump_peek, ctx)) printstr("stack underflow\r\n");
      00364E E5 08            [12] 2371 	mov	a,_bp
      003650 24 12            [12] 2372 	add	a,#0x12
      003652 F8               [12] 2373 	mov	r0,a
      003653 86 07            [24] 2374 	mov	ar7,@r0
      003655 08               [12] 2375 	inc	r0
      003656 86 06            [24] 2376 	mov	ar6,@r0
      003658 08               [12] 2377 	inc	r0
      003659 86 05            [24] 2378 	mov	ar5,@r0
      00365B E5 08            [12] 2379 	mov	a,_bp
      00365D 24 12            [12] 2380 	add	a,#0x12
      00365F F8               [12] 2381 	mov	r0,a
      003660 74 13            [12] 2382 	mov	a,#0x13
      003662 26               [12] 2383 	add	a,@r0
      003663 FA               [12] 2384 	mov	r2,a
      003664 74 40            [12] 2385 	mov	a,#0x40
      003666 08               [12] 2386 	inc	r0
      003667 36               [12] 2387 	addc	a,@r0
      003668 FB               [12] 2388 	mov	r3,a
      003669 08               [12] 2389 	inc	r0
      00366A 86 04            [24] 2390 	mov	ar4,@r0
      00366C 8A 82            [24] 2391 	mov	dpl,r2
      00366E 8B 83            [24] 2392 	mov	dph,r3
      003670 8C F0            [24] 2393 	mov	b,r4
      003672 12 6F D1         [24] 2394 	lcall	__gptrget
      003675 FA               [12] 2395 	mov	r2,a
      003676 A3               [24] 2396 	inc	dptr
      003677 12 6F D1         [24] 2397 	lcall	__gptrget
      00367A FB               [12] 2398 	mov	r3,a
      00367B A3               [24] 2399 	inc	dptr
      00367C 12 6F D1         [24] 2400 	lcall	__gptrget
      00367F FC               [12] 2401 	mov	r4,a
      003680 C0 07            [24] 2402 	push	ar7
      003682 C0 06            [24] 2403 	push	ar6
      003684 C0 05            [24] 2404 	push	ar5
      003686 74 62            [12] 2405 	mov	a,#_dump_peek
      003688 C0 E0            [24] 2406 	push	acc
      00368A 74 32            [12] 2407 	mov	a,#(_dump_peek >> 8)
      00368C C0 E0            [24] 2408 	push	acc
      00368E 8A 82            [24] 2409 	mov	dpl,r2
      003690 8B 83            [24] 2410 	mov	dph,r3
      003692 8C F0            [24] 2411 	mov	b,r4
      003694 12 2A E4         [24] 2412 	lcall	_stack_iter_peek
      003697 AB 82            [24] 2413 	mov	r3,dpl
      003699 AC 83            [24] 2414 	mov	r4,dph
      00369B E5 81            [12] 2415 	mov	a,sp
      00369D 24 FB            [12] 2416 	add	a,#0xfb
      00369F F5 81            [12] 2417 	mov	sp,a
      0036A1 EB               [12] 2418 	mov	a,r3
      0036A2 4C               [12] 2419 	orl	a,r4
      0036A3 60 03            [24] 2420 	jz	01271$
      0036A5 02 56 1B         [24] 2421 	ljmp	00249$
      0036A8                       2422 01271$:
      0036A8 7F 59            [12] 2423 	mov	r7,#___str_1
      0036AA 7E 88            [12] 2424 	mov	r6,#(___str_1 >> 8)
      0036AC 7D 80            [12] 2425 	mov	r5,#0x80
                                   2426 ;	calc.c:51: return;
      0036AE                       2427 00368$:
                                   2428 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0036AE 8F 82            [24] 2429 	mov	dpl,r7
      0036B0 8E 83            [24] 2430 	mov	dph,r6
      0036B2 8D F0            [24] 2431 	mov	b,r5
      0036B4 12 6F D1         [24] 2432 	lcall	__gptrget
      0036B7 FC               [12] 2433 	mov	r4,a
      0036B8 70 03            [24] 2434 	jnz	01272$
      0036BA 02 56 1B         [24] 2435 	ljmp	00249$
      0036BD                       2436 01272$:
      0036BD 7B 00            [12] 2437 	mov	r3,#0x00
      0036BF 8C 82            [24] 2438 	mov	dpl,r4
      0036C1 8B 83            [24] 2439 	mov	dph,r3
      0036C3 12 2B D5         [24] 2440 	lcall	_putchar
      0036C6 0F               [12] 2441 	inc	r7
                                   2442 ;	calc.c:146: case 'v':
      0036C7 BF 00 E4         [24] 2443 	cjne	r7,#0x00,00368$
      0036CA 0E               [12] 2444 	inc	r6
      0036CB 80 E1            [24] 2445 	sjmp	00368$
      0036CD                       2446 00109$:
                                   2447 ;	calc.c:147: printstr("\r\n");
      0036CD 7F 82            [12] 2448 	mov	r7,#___str_5
      0036CF 7E 88            [12] 2449 	mov	r6,#(___str_5 >> 8)
      0036D1 7D 80            [12] 2450 	mov	r5,#0x80
                                   2451 ;	calc.c:51: return;
      0036D3                       2452 00371$:
                                   2453 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0036D3 8F 82            [24] 2454 	mov	dpl,r7
      0036D5 8E 83            [24] 2455 	mov	dph,r6
      0036D7 8D F0            [24] 2456 	mov	b,r5
      0036D9 12 6F D1         [24] 2457 	lcall	__gptrget
      0036DC FC               [12] 2458 	mov	r4,a
      0036DD 60 10            [24] 2459 	jz	00265$
      0036DF 7B 00            [12] 2460 	mov	r3,#0x00
      0036E1 8C 82            [24] 2461 	mov	dpl,r4
      0036E3 8B 83            [24] 2462 	mov	dph,r3
      0036E5 12 2B D5         [24] 2463 	lcall	_putchar
      0036E8 0F               [12] 2464 	inc	r7
                                   2465 ;	calc.c:147: printstr("\r\n");
      0036E9 BF 00 E7         [24] 2466 	cjne	r7,#0x00,00371$
      0036EC 0E               [12] 2467 	inc	r6
      0036ED 80 E4            [24] 2468 	sjmp	00371$
      0036EF                       2469 00265$:
                                   2470 ;	calc.c:148: if (!stack_pop(ctx->ps, &d0)) printstr("stack underflow\r\n");
      0036EF E5 08            [12] 2471 	mov	a,_bp
      0036F1 24 15            [12] 2472 	add	a,#0x15
      0036F3 FF               [12] 2473 	mov	r7,a
      0036F4 7E 00            [12] 2474 	mov	r6,#0x00
      0036F6 7D 40            [12] 2475 	mov	r5,#0x40
      0036F8 E5 08            [12] 2476 	mov	a,_bp
      0036FA 24 12            [12] 2477 	add	a,#0x12
      0036FC F8               [12] 2478 	mov	r0,a
      0036FD 74 13            [12] 2479 	mov	a,#0x13
      0036FF 26               [12] 2480 	add	a,@r0
      003700 FA               [12] 2481 	mov	r2,a
      003701 ED               [12] 2482 	mov	a,r5
      003702 08               [12] 2483 	inc	r0
      003703 36               [12] 2484 	addc	a,@r0
      003704 FB               [12] 2485 	mov	r3,a
      003705 08               [12] 2486 	inc	r0
      003706 86 04            [24] 2487 	mov	ar4,@r0
      003708 8A 82            [24] 2488 	mov	dpl,r2
      00370A 8B 83            [24] 2489 	mov	dph,r3
      00370C 8C F0            [24] 2490 	mov	b,r4
      00370E 12 6F D1         [24] 2491 	lcall	__gptrget
      003711 FA               [12] 2492 	mov	r2,a
      003712 A3               [24] 2493 	inc	dptr
      003713 12 6F D1         [24] 2494 	lcall	__gptrget
      003716 FB               [12] 2495 	mov	r3,a
      003717 A3               [24] 2496 	inc	dptr
      003718 12 6F D1         [24] 2497 	lcall	__gptrget
      00371B FC               [12] 2498 	mov	r4,a
      00371C C0 07            [24] 2499 	push	ar7
      00371E C0 06            [24] 2500 	push	ar6
      003720 C0 05            [24] 2501 	push	ar5
      003722 8A 82            [24] 2502 	mov	dpl,r2
      003724 8B 83            [24] 2503 	mov	dph,r3
      003726 8C F0            [24] 2504 	mov	b,r4
      003728 12 27 B4         [24] 2505 	lcall	_stack_pop
      00372B AB 82            [24] 2506 	mov	r3,dpl
      00372D AC 83            [24] 2507 	mov	r4,dph
      00372F 15 81            [12] 2508 	dec	sp
      003731 15 81            [12] 2509 	dec	sp
      003733 15 81            [12] 2510 	dec	sp
      003735 EB               [12] 2511 	mov	a,r3
      003736 4C               [12] 2512 	orl	a,r4
      003737 70 25            [24] 2513 	jnz	00111$
      003739 7F 59            [12] 2514 	mov	r7,#___str_1
      00373B 7E 88            [12] 2515 	mov	r6,#(___str_1 >> 8)
      00373D 7D 80            [12] 2516 	mov	r5,#0x80
                                   2517 ;	calc.c:51: return;
      00373F                       2518 00374$:
                                   2519 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00373F 8F 82            [24] 2520 	mov	dpl,r7
      003741 8E 83            [24] 2521 	mov	dph,r6
      003743 8D F0            [24] 2522 	mov	b,r5
      003745 12 6F D1         [24] 2523 	lcall	__gptrget
      003748 FC               [12] 2524 	mov	r4,a
      003749 70 03            [24] 2525 	jnz	01277$
      00374B 02 56 1B         [24] 2526 	ljmp	00249$
      00374E                       2527 01277$:
      00374E 7B 00            [12] 2528 	mov	r3,#0x00
      003750 8C 82            [24] 2529 	mov	dpl,r4
      003752 8B 83            [24] 2530 	mov	dph,r3
      003754 12 2B D5         [24] 2531 	lcall	_putchar
      003757 0F               [12] 2532 	inc	r7
                                   2533 ;	calc.c:148: if (!stack_pop(ctx->ps, &d0)) printstr("stack underflow\r\n");
      003758 BF 00 E4         [24] 2534 	cjne	r7,#0x00,00374$
      00375B 0E               [12] 2535 	inc	r6
      00375C 80 E1            [24] 2536 	sjmp	00374$
      00375E                       2537 00111$:
                                   2538 ;	calc.c:150: printstr("VT ");
      00375E 7F 92            [12] 2539 	mov	r7,#___str_9
      003760 7E 88            [12] 2540 	mov	r6,#(___str_9 >> 8)
      003762 7D 80            [12] 2541 	mov	r5,#0x80
                                   2542 ;	calc.c:51: return;
      003764                       2543 00377$:
                                   2544 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003764 8F 82            [24] 2545 	mov	dpl,r7
      003766 8E 83            [24] 2546 	mov	dph,r6
      003768 8D F0            [24] 2547 	mov	b,r5
      00376A 12 6F D1         [24] 2548 	lcall	__gptrget
      00376D FC               [12] 2549 	mov	r4,a
      00376E 60 10            [24] 2550 	jz	00269$
      003770 7B 00            [12] 2551 	mov	r3,#0x00
      003772 8C 82            [24] 2552 	mov	dpl,r4
      003774 8B 83            [24] 2553 	mov	dph,r3
      003776 12 2B D5         [24] 2554 	lcall	_putchar
      003779 0F               [12] 2555 	inc	r7
                                   2556 ;	calc.c:150: printstr("VT ");
      00377A BF 00 E7         [24] 2557 	cjne	r7,#0x00,00377$
      00377D 0E               [12] 2558 	inc	r6
      00377E 80 E4            [24] 2559 	sjmp	00377$
      003780                       2560 00269$:
                                   2561 ;	calc.c:151: printf("% 11ld / ", d0);
      003780 E5 08            [12] 2562 	mov	a,_bp
      003782 24 15            [12] 2563 	add	a,#0x15
      003784 F8               [12] 2564 	mov	r0,a
      003785 E6               [12] 2565 	mov	a,@r0
      003786 C0 E0            [24] 2566 	push	acc
      003788 08               [12] 2567 	inc	r0
      003789 E6               [12] 2568 	mov	a,@r0
      00378A C0 E0            [24] 2569 	push	acc
      00378C 08               [12] 2570 	inc	r0
      00378D E6               [12] 2571 	mov	a,@r0
      00378E C0 E0            [24] 2572 	push	acc
      003790 08               [12] 2573 	inc	r0
      003791 E6               [12] 2574 	mov	a,@r0
      003792 C0 E0            [24] 2575 	push	acc
      003794 74 6F            [12] 2576 	mov	a,#___str_3
      003796 C0 E0            [24] 2577 	push	acc
      003798 74 88            [12] 2578 	mov	a,#(___str_3 >> 8)
      00379A C0 E0            [24] 2579 	push	acc
      00379C 74 80            [12] 2580 	mov	a,#0x80
      00379E C0 E0            [24] 2581 	push	acc
      0037A0 12 6F 98         [24] 2582 	lcall	_printf
      0037A3 E5 81            [12] 2583 	mov	a,sp
      0037A5 24 F9            [12] 2584 	add	a,#0xf9
      0037A7 F5 81            [12] 2585 	mov	sp,a
                                   2586 ;	calc.c:152: printf("%08lx / ", d0);
      0037A9 E5 08            [12] 2587 	mov	a,_bp
      0037AB 24 15            [12] 2588 	add	a,#0x15
      0037AD F8               [12] 2589 	mov	r0,a
      0037AE E6               [12] 2590 	mov	a,@r0
      0037AF C0 E0            [24] 2591 	push	acc
      0037B1 08               [12] 2592 	inc	r0
      0037B2 E6               [12] 2593 	mov	a,@r0
      0037B3 C0 E0            [24] 2594 	push	acc
      0037B5 08               [12] 2595 	inc	r0
      0037B6 E6               [12] 2596 	mov	a,@r0
      0037B7 C0 E0            [24] 2597 	push	acc
      0037B9 08               [12] 2598 	inc	r0
      0037BA E6               [12] 2599 	mov	a,@r0
      0037BB C0 E0            [24] 2600 	push	acc
      0037BD 74 79            [12] 2601 	mov	a,#___str_4
      0037BF C0 E0            [24] 2602 	push	acc
      0037C1 74 88            [12] 2603 	mov	a,#(___str_4 >> 8)
      0037C3 C0 E0            [24] 2604 	push	acc
      0037C5 74 80            [12] 2605 	mov	a,#0x80
      0037C7 C0 E0            [24] 2606 	push	acc
      0037C9 12 6F 98         [24] 2607 	lcall	_printf
      0037CC E5 81            [12] 2608 	mov	a,sp
      0037CE 24 F9            [12] 2609 	add	a,#0xf9
      0037D0 F5 81            [12] 2610 	mov	sp,a
                                   2611 ;	calc.c:153: printbin(d0);
      0037D2 E5 08            [12] 2612 	mov	a,_bp
      0037D4 24 15            [12] 2613 	add	a,#0x15
      0037D6 F8               [12] 2614 	mov	r0,a
      0037D7 86 07            [24] 2615 	mov	ar7,@r0
      0037D9 08               [12] 2616 	inc	r0
      0037DA 86 06            [24] 2617 	mov	ar6,@r0
      0037DC 08               [12] 2618 	inc	r0
      0037DD 86 05            [24] 2619 	mov	ar5,@r0
      0037DF 08               [12] 2620 	inc	r0
      0037E0 86 04            [24] 2621 	mov	ar4,@r0
      0037E2 8C 02            [24] 2622 	mov	ar2,r4
                                   2623 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      0037E4 E5 08            [12] 2624 	mov	a,_bp
      0037E6 24 1D            [12] 2625 	add	a,#0x1d
      0037E8 F8               [12] 2626 	mov	r0,a
      0037E9 E4               [12] 2627 	clr	a
      0037EA F6               [12] 2628 	mov	@r0,a
      0037EB 08               [12] 2629 	inc	r0
      0037EC F6               [12] 2630 	mov	@r0,a
      0037ED 08               [12] 2631 	inc	r0
      0037EE F6               [12] 2632 	mov	@r0,a
      0037EF 08               [12] 2633 	inc	r0
      0037F0 76 80            [12] 2634 	mov	@r0,#0x80
      0037F2                       2635 00379$:
                                   2636 ;	calc.c:58: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      0037F2 E5 08            [12] 2637 	mov	a,_bp
      0037F4 24 07            [12] 2638 	add	a,#0x07
      0037F6 F8               [12] 2639 	mov	r0,a
      0037F7 A6 07            [24] 2640 	mov	@r0,ar7
      0037F9 08               [12] 2641 	inc	r0
      0037FA A6 06            [24] 2642 	mov	@r0,ar6
      0037FC 08               [12] 2643 	inc	r0
      0037FD A6 05            [24] 2644 	mov	@r0,ar5
      0037FF 08               [12] 2645 	inc	r0
      003800 A6 02            [24] 2646 	mov	@r0,ar2
      003802 E5 08            [12] 2647 	mov	a,_bp
      003804 24 07            [12] 2648 	add	a,#0x07
      003806 F8               [12] 2649 	mov	r0,a
      003807 E5 08            [12] 2650 	mov	a,_bp
      003809 24 1D            [12] 2651 	add	a,#0x1d
      00380B F9               [12] 2652 	mov	r1,a
      00380C E7               [12] 2653 	mov	a,@r1
      00380D 56               [12] 2654 	anl	a,@r0
      00380E F6               [12] 2655 	mov	@r0,a
      00380F 09               [12] 2656 	inc	r1
      003810 E7               [12] 2657 	mov	a,@r1
      003811 08               [12] 2658 	inc	r0
      003812 56               [12] 2659 	anl	a,@r0
      003813 F6               [12] 2660 	mov	@r0,a
      003814 09               [12] 2661 	inc	r1
      003815 E7               [12] 2662 	mov	a,@r1
      003816 08               [12] 2663 	inc	r0
      003817 56               [12] 2664 	anl	a,@r0
      003818 F6               [12] 2665 	mov	@r0,a
      003819 09               [12] 2666 	inc	r1
      00381A E7               [12] 2667 	mov	a,@r1
      00381B 08               [12] 2668 	inc	r0
      00381C 56               [12] 2669 	anl	a,@r0
      00381D F6               [12] 2670 	mov	@r0,a
      00381E E5 08            [12] 2671 	mov	a,_bp
      003820 24 07            [12] 2672 	add	a,#0x07
      003822 F8               [12] 2673 	mov	r0,a
      003823 E6               [12] 2674 	mov	a,@r0
      003824 08               [12] 2675 	inc	r0
      003825 46               [12] 2676 	orl	a,@r0
      003826 08               [12] 2677 	inc	r0
      003827 46               [12] 2678 	orl	a,@r0
      003828 08               [12] 2679 	inc	r0
      003829 46               [12] 2680 	orl	a,@r0
      00382A 60 06            [24] 2681 	jz	00502$
      00382C 7B 31            [12] 2682 	mov	r3,#0x31
      00382E 7C 00            [12] 2683 	mov	r4,#0x00
      003830 80 04            [24] 2684 	sjmp	00503$
      003832                       2685 00502$:
      003832 7B 30            [12] 2686 	mov	r3,#0x30
      003834 7C 00            [12] 2687 	mov	r4,#0x00
      003836                       2688 00503$:
      003836 8B 82            [24] 2689 	mov	dpl,r3
      003838 8C 83            [24] 2690 	mov	dph,r4
      00383A 12 2B D5         [24] 2691 	lcall	_putchar
                                   2692 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      00383D E5 08            [12] 2693 	mov	a,_bp
      00383F 24 1D            [12] 2694 	add	a,#0x1d
      003841 F8               [12] 2695 	mov	r0,a
      003842 08               [12] 2696 	inc	r0
      003843 08               [12] 2697 	inc	r0
      003844 08               [12] 2698 	inc	r0
      003845 E6               [12] 2699 	mov	a,@r0
      003846 C3               [12] 2700 	clr	c
      003847 13               [12] 2701 	rrc	a
      003848 F6               [12] 2702 	mov	@r0,a
      003849 18               [12] 2703 	dec	r0
      00384A E6               [12] 2704 	mov	a,@r0
      00384B 13               [12] 2705 	rrc	a
      00384C F6               [12] 2706 	mov	@r0,a
      00384D 18               [12] 2707 	dec	r0
      00384E E6               [12] 2708 	mov	a,@r0
      00384F 13               [12] 2709 	rrc	a
      003850 F6               [12] 2710 	mov	@r0,a
      003851 18               [12] 2711 	dec	r0
      003852 E6               [12] 2712 	mov	a,@r0
      003853 13               [12] 2713 	rrc	a
      003854 F6               [12] 2714 	mov	@r0,a
      003855 E5 08            [12] 2715 	mov	a,_bp
      003857 24 1D            [12] 2716 	add	a,#0x1d
      003859 F8               [12] 2717 	mov	r0,a
      00385A E6               [12] 2718 	mov	a,@r0
      00385B 08               [12] 2719 	inc	r0
      00385C 46               [12] 2720 	orl	a,@r0
      00385D 08               [12] 2721 	inc	r0
      00385E 46               [12] 2722 	orl	a,@r0
      00385F 08               [12] 2723 	inc	r0
      003860 46               [12] 2724 	orl	a,@r0
      003861 70 8F            [24] 2725 	jnz	00379$
                                   2726 ;	calc.c:154: printstr("\r\n");
      003863 7F 82            [12] 2727 	mov	r7,#___str_5
      003865 7E 88            [12] 2728 	mov	r6,#(___str_5 >> 8)
      003867 7D 80            [12] 2729 	mov	r5,#0x80
                                   2730 ;	calc.c:51: return;
      003869                       2731 00382$:
                                   2732 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003869 8F 82            [24] 2733 	mov	dpl,r7
      00386B 8E 83            [24] 2734 	mov	dph,r6
      00386D 8D F0            [24] 2735 	mov	b,r5
      00386F 12 6F D1         [24] 2736 	lcall	__gptrget
      003872 FC               [12] 2737 	mov	r4,a
      003873 70 03            [24] 2738 	jnz	01283$
      003875 02 56 1B         [24] 2739 	ljmp	00249$
      003878                       2740 01283$:
      003878 7B 00            [12] 2741 	mov	r3,#0x00
      00387A 8C 82            [24] 2742 	mov	dpl,r4
      00387C 8B 83            [24] 2743 	mov	dph,r3
      00387E 12 2B D5         [24] 2744 	lcall	_putchar
      003881 0F               [12] 2745 	inc	r7
                                   2746 ;	calc.c:157: case 'V':
      003882 BF 00 E4         [24] 2747 	cjne	r7,#0x00,00382$
      003885 0E               [12] 2748 	inc	r6
      003886 80 E1            [24] 2749 	sjmp	00382$
      003888                       2750 00113$:
                                   2751 ;	calc.c:158: printstr("\r\n");
      003888 7F 82            [12] 2752 	mov	r7,#___str_5
      00388A 7E 88            [12] 2753 	mov	r6,#(___str_5 >> 8)
      00388C 7D 80            [12] 2754 	mov	r5,#0x80
                                   2755 ;	calc.c:51: return;
      00388E                       2756 00385$:
                                   2757 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00388E 8F 82            [24] 2758 	mov	dpl,r7
      003890 8E 83            [24] 2759 	mov	dph,r6
      003892 8D F0            [24] 2760 	mov	b,r5
      003894 12 6F D1         [24] 2761 	lcall	__gptrget
      003897 FC               [12] 2762 	mov	r4,a
      003898 60 10            [24] 2763 	jz	00275$
      00389A 7B 00            [12] 2764 	mov	r3,#0x00
      00389C 8C 82            [24] 2765 	mov	dpl,r4
      00389E 8B 83            [24] 2766 	mov	dph,r3
      0038A0 12 2B D5         [24] 2767 	lcall	_putchar
      0038A3 0F               [12] 2768 	inc	r7
                                   2769 ;	calc.c:158: printstr("\r\n");
      0038A4 BF 00 E7         [24] 2770 	cjne	r7,#0x00,00385$
      0038A7 0E               [12] 2771 	inc	r6
      0038A8 80 E4            [24] 2772 	sjmp	00385$
      0038AA                       2773 00275$:
                                   2774 ;	calc.c:159: (void)dump_pop(_ctx, delta);
      0038AA E5 08            [12] 2775 	mov	a,_bp
      0038AC 24 FB            [12] 2776 	add	a,#0xfb
      0038AE F8               [12] 2777 	mov	r0,a
      0038AF E6               [12] 2778 	mov	a,@r0
      0038B0 C0 E0            [24] 2779 	push	acc
      0038B2 08               [12] 2780 	inc	r0
      0038B3 E6               [12] 2781 	mov	a,@r0
      0038B4 C0 E0            [24] 2782 	push	acc
      0038B6 08               [12] 2783 	inc	r0
      0038B7 E6               [12] 2784 	mov	a,@r0
      0038B8 C0 E0            [24] 2785 	push	acc
      0038BA A8 08            [24] 2786 	mov	r0,_bp
      0038BC 08               [12] 2787 	inc	r0
      0038BD 86 82            [24] 2788 	mov	dpl,@r0
      0038BF 08               [12] 2789 	inc	r0
      0038C0 86 83            [24] 2790 	mov	dph,@r0
      0038C2 08               [12] 2791 	inc	r0
      0038C3 86 F0            [24] 2792 	mov	b,@r0
      0038C5 12 2D 68         [24] 2793 	lcall	_dump_pop
      0038C8 15 81            [12] 2794 	dec	sp
      0038CA 15 81            [12] 2795 	dec	sp
      0038CC 15 81            [12] 2796 	dec	sp
                                   2797 ;	calc.c:160: break;
      0038CE 02 56 1B         [24] 2798 	ljmp	00249$
                                   2799 ;	calc.c:161: case 'x':
      0038D1                       2800 00114$:
                                   2801 ;	calc.c:162: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0038D1 E5 08            [12] 2802 	mov	a,_bp
      0038D3 24 15            [12] 2803 	add	a,#0x15
      0038D5 FF               [12] 2804 	mov	r7,a
      0038D6 7E 00            [12] 2805 	mov	r6,#0x00
      0038D8 7D 40            [12] 2806 	mov	r5,#0x40
      0038DA E5 08            [12] 2807 	mov	a,_bp
      0038DC 24 12            [12] 2808 	add	a,#0x12
      0038DE F8               [12] 2809 	mov	r0,a
      0038DF E5 08            [12] 2810 	mov	a,_bp
      0038E1 24 07            [12] 2811 	add	a,#0x07
      0038E3 F9               [12] 2812 	mov	r1,a
      0038E4 74 13            [12] 2813 	mov	a,#0x13
      0038E6 26               [12] 2814 	add	a,@r0
      0038E7 F7               [12] 2815 	mov	@r1,a
      0038E8 74 40            [12] 2816 	mov	a,#0x40
      0038EA 08               [12] 2817 	inc	r0
      0038EB 36               [12] 2818 	addc	a,@r0
      0038EC 09               [12] 2819 	inc	r1
      0038ED F7               [12] 2820 	mov	@r1,a
      0038EE 08               [12] 2821 	inc	r0
      0038EF 09               [12] 2822 	inc	r1
      0038F0 E6               [12] 2823 	mov	a,@r0
      0038F1 F7               [12] 2824 	mov	@r1,a
      0038F2 E5 08            [12] 2825 	mov	a,_bp
      0038F4 24 07            [12] 2826 	add	a,#0x07
      0038F6 F8               [12] 2827 	mov	r0,a
      0038F7 86 82            [24] 2828 	mov	dpl,@r0
      0038F9 08               [12] 2829 	inc	r0
      0038FA 86 83            [24] 2830 	mov	dph,@r0
      0038FC 08               [12] 2831 	inc	r0
      0038FD 86 F0            [24] 2832 	mov	b,@r0
      0038FF 12 6F D1         [24] 2833 	lcall	__gptrget
      003902 FA               [12] 2834 	mov	r2,a
      003903 A3               [24] 2835 	inc	dptr
      003904 12 6F D1         [24] 2836 	lcall	__gptrget
      003907 FB               [12] 2837 	mov	r3,a
      003908 A3               [24] 2838 	inc	dptr
      003909 12 6F D1         [24] 2839 	lcall	__gptrget
      00390C FC               [12] 2840 	mov	r4,a
      00390D C0 07            [24] 2841 	push	ar7
      00390F C0 06            [24] 2842 	push	ar6
      003911 C0 05            [24] 2843 	push	ar5
      003913 8A 82            [24] 2844 	mov	dpl,r2
      003915 8B 83            [24] 2845 	mov	dph,r3
      003917 8C F0            [24] 2846 	mov	b,r4
      003919 12 27 B4         [24] 2847 	lcall	_stack_pop
      00391C AB 82            [24] 2848 	mov	r3,dpl
      00391E AC 83            [24] 2849 	mov	r4,dph
      003920 15 81            [12] 2850 	dec	sp
      003922 15 81            [12] 2851 	dec	sp
      003924 15 81            [12] 2852 	dec	sp
      003926 EB               [12] 2853 	mov	a,r3
      003927 4C               [12] 2854 	orl	a,r4
      003928 70 25            [24] 2855 	jnz	00119$
      00392A 7F 96            [12] 2856 	mov	r7,#___str_10
      00392C 7E 88            [12] 2857 	mov	r6,#(___str_10 >> 8)
      00392E 7D 80            [12] 2858 	mov	r5,#0x80
                                   2859 ;	calc.c:51: return;
      003930                       2860 00388$:
                                   2861 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003930 8F 82            [24] 2862 	mov	dpl,r7
      003932 8E 83            [24] 2863 	mov	dph,r6
      003934 8D F0            [24] 2864 	mov	b,r5
      003936 12 6F D1         [24] 2865 	lcall	__gptrget
      003939 FC               [12] 2866 	mov	r4,a
      00393A 70 03            [24] 2867 	jnz	01288$
      00393C 02 56 1B         [24] 2868 	ljmp	00249$
      00393F                       2869 01288$:
      00393F 7B 00            [12] 2870 	mov	r3,#0x00
      003941 8C 82            [24] 2871 	mov	dpl,r4
      003943 8B 83            [24] 2872 	mov	dph,r3
      003945 12 2B D5         [24] 2873 	lcall	_putchar
      003948 0F               [12] 2874 	inc	r7
                                   2875 ;	calc.c:162: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003949 BF 00 E4         [24] 2876 	cjne	r7,#0x00,00388$
      00394C 0E               [12] 2877 	inc	r6
      00394D 80 E1            [24] 2878 	sjmp	00388$
      00394F                       2879 00119$:
                                   2880 ;	calc.c:163: else if (!stack_pop(ctx->ps, &d1)) {
      00394F E5 08            [12] 2881 	mov	a,_bp
      003951 24 19            [12] 2882 	add	a,#0x19
      003953 FF               [12] 2883 	mov	r7,a
      003954 7E 00            [12] 2884 	mov	r6,#0x00
      003956 7D 40            [12] 2885 	mov	r5,#0x40
      003958 E5 08            [12] 2886 	mov	a,_bp
      00395A 24 07            [12] 2887 	add	a,#0x07
      00395C F8               [12] 2888 	mov	r0,a
      00395D 86 82            [24] 2889 	mov	dpl,@r0
      00395F 08               [12] 2890 	inc	r0
      003960 86 83            [24] 2891 	mov	dph,@r0
      003962 08               [12] 2892 	inc	r0
      003963 86 F0            [24] 2893 	mov	b,@r0
      003965 12 6F D1         [24] 2894 	lcall	__gptrget
      003968 FA               [12] 2895 	mov	r2,a
      003969 A3               [24] 2896 	inc	dptr
      00396A 12 6F D1         [24] 2897 	lcall	__gptrget
      00396D FB               [12] 2898 	mov	r3,a
      00396E A3               [24] 2899 	inc	dptr
      00396F 12 6F D1         [24] 2900 	lcall	__gptrget
      003972 FC               [12] 2901 	mov	r4,a
      003973 C0 07            [24] 2902 	push	ar7
      003975 C0 06            [24] 2903 	push	ar6
      003977 C0 05            [24] 2904 	push	ar5
      003979 8A 82            [24] 2905 	mov	dpl,r2
      00397B 8B 83            [24] 2906 	mov	dph,r3
      00397D 8C F0            [24] 2907 	mov	b,r4
      00397F 12 27 B4         [24] 2908 	lcall	_stack_pop
      003982 AB 82            [24] 2909 	mov	r3,dpl
      003984 AC 83            [24] 2910 	mov	r4,dph
      003986 15 81            [12] 2911 	dec	sp
      003988 15 81            [12] 2912 	dec	sp
      00398A 15 81            [12] 2913 	dec	sp
      00398C EB               [12] 2914 	mov	a,r3
      00398D 4C               [12] 2915 	orl	a,r4
      00398E 70 63            [24] 2916 	jnz	00116$
                                   2917 ;	calc.c:164: (void)stack_push(ctx->ps, d0);
      003990 E5 08            [12] 2918 	mov	a,_bp
      003992 24 07            [12] 2919 	add	a,#0x07
      003994 F8               [12] 2920 	mov	r0,a
      003995 86 82            [24] 2921 	mov	dpl,@r0
      003997 08               [12] 2922 	inc	r0
      003998 86 83            [24] 2923 	mov	dph,@r0
      00399A 08               [12] 2924 	inc	r0
      00399B 86 F0            [24] 2925 	mov	b,@r0
      00399D 12 6F D1         [24] 2926 	lcall	__gptrget
      0039A0 FA               [12] 2927 	mov	r2,a
      0039A1 A3               [24] 2928 	inc	dptr
      0039A2 12 6F D1         [24] 2929 	lcall	__gptrget
      0039A5 FB               [12] 2930 	mov	r3,a
      0039A6 A3               [24] 2931 	inc	dptr
      0039A7 12 6F D1         [24] 2932 	lcall	__gptrget
      0039AA FC               [12] 2933 	mov	r4,a
      0039AB E5 08            [12] 2934 	mov	a,_bp
      0039AD 24 15            [12] 2935 	add	a,#0x15
      0039AF F8               [12] 2936 	mov	r0,a
      0039B0 E6               [12] 2937 	mov	a,@r0
      0039B1 C0 E0            [24] 2938 	push	acc
      0039B3 08               [12] 2939 	inc	r0
      0039B4 E6               [12] 2940 	mov	a,@r0
      0039B5 C0 E0            [24] 2941 	push	acc
      0039B7 08               [12] 2942 	inc	r0
      0039B8 E6               [12] 2943 	mov	a,@r0
      0039B9 C0 E0            [24] 2944 	push	acc
      0039BB 08               [12] 2945 	inc	r0
      0039BC E6               [12] 2946 	mov	a,@r0
      0039BD C0 E0            [24] 2947 	push	acc
      0039BF 8A 82            [24] 2948 	mov	dpl,r2
      0039C1 8B 83            [24] 2949 	mov	dph,r3
      0039C3 8C F0            [24] 2950 	mov	b,r4
      0039C5 12 26 BA         [24] 2951 	lcall	_stack_push
      0039C8 E5 81            [12] 2952 	mov	a,sp
      0039CA 24 FC            [12] 2953 	add	a,#0xfc
      0039CC F5 81            [12] 2954 	mov	sp,a
                                   2955 ;	calc.c:165: printstr("\r\nstack underflow\r\n");
      0039CE 7F 96            [12] 2956 	mov	r7,#___str_10
      0039D0 7E 88            [12] 2957 	mov	r6,#(___str_10 >> 8)
      0039D2 7D 80            [12] 2958 	mov	r5,#0x80
                                   2959 ;	calc.c:51: return;
      0039D4                       2960 00391$:
                                   2961 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0039D4 8F 82            [24] 2962 	mov	dpl,r7
      0039D6 8E 83            [24] 2963 	mov	dph,r6
      0039D8 8D F0            [24] 2964 	mov	b,r5
      0039DA 12 6F D1         [24] 2965 	lcall	__gptrget
      0039DD FC               [12] 2966 	mov	r4,a
      0039DE 70 03            [24] 2967 	jnz	01291$
      0039E0 02 56 1B         [24] 2968 	ljmp	00249$
      0039E3                       2969 01291$:
      0039E3 7B 00            [12] 2970 	mov	r3,#0x00
      0039E5 8C 82            [24] 2971 	mov	dpl,r4
      0039E7 8B 83            [24] 2972 	mov	dph,r3
      0039E9 12 2B D5         [24] 2973 	lcall	_putchar
      0039EC 0F               [12] 2974 	inc	r7
                                   2975 ;	calc.c:165: printstr("\r\nstack underflow\r\n");
      0039ED BF 00 E4         [24] 2976 	cjne	r7,#0x00,00391$
      0039F0 0E               [12] 2977 	inc	r6
      0039F1 80 E1            [24] 2978 	sjmp	00391$
      0039F3                       2979 00116$:
                                   2980 ;	calc.c:167: (void)stack_push(ctx->ps, d0);
      0039F3 E5 08            [12] 2981 	mov	a,_bp
      0039F5 24 07            [12] 2982 	add	a,#0x07
      0039F7 F8               [12] 2983 	mov	r0,a
      0039F8 86 82            [24] 2984 	mov	dpl,@r0
      0039FA 08               [12] 2985 	inc	r0
      0039FB 86 83            [24] 2986 	mov	dph,@r0
      0039FD 08               [12] 2987 	inc	r0
      0039FE 86 F0            [24] 2988 	mov	b,@r0
      003A00 12 6F D1         [24] 2989 	lcall	__gptrget
      003A03 FA               [12] 2990 	mov	r2,a
      003A04 A3               [24] 2991 	inc	dptr
      003A05 12 6F D1         [24] 2992 	lcall	__gptrget
      003A08 FB               [12] 2993 	mov	r3,a
      003A09 A3               [24] 2994 	inc	dptr
      003A0A 12 6F D1         [24] 2995 	lcall	__gptrget
      003A0D FC               [12] 2996 	mov	r4,a
      003A0E E5 08            [12] 2997 	mov	a,_bp
      003A10 24 15            [12] 2998 	add	a,#0x15
      003A12 F8               [12] 2999 	mov	r0,a
      003A13 E6               [12] 3000 	mov	a,@r0
      003A14 C0 E0            [24] 3001 	push	acc
      003A16 08               [12] 3002 	inc	r0
      003A17 E6               [12] 3003 	mov	a,@r0
      003A18 C0 E0            [24] 3004 	push	acc
      003A1A 08               [12] 3005 	inc	r0
      003A1B E6               [12] 3006 	mov	a,@r0
      003A1C C0 E0            [24] 3007 	push	acc
      003A1E 08               [12] 3008 	inc	r0
      003A1F E6               [12] 3009 	mov	a,@r0
      003A20 C0 E0            [24] 3010 	push	acc
      003A22 8A 82            [24] 3011 	mov	dpl,r2
      003A24 8B 83            [24] 3012 	mov	dph,r3
      003A26 8C F0            [24] 3013 	mov	b,r4
      003A28 12 26 BA         [24] 3014 	lcall	_stack_push
      003A2B E5 81            [12] 3015 	mov	a,sp
      003A2D 24 FC            [12] 3016 	add	a,#0xfc
      003A2F F5 81            [12] 3017 	mov	sp,a
                                   3018 ;	calc.c:168: (void)stack_push(ctx->ps, d1);
      003A31 E5 08            [12] 3019 	mov	a,_bp
      003A33 24 07            [12] 3020 	add	a,#0x07
      003A35 F8               [12] 3021 	mov	r0,a
      003A36 86 82            [24] 3022 	mov	dpl,@r0
      003A38 08               [12] 3023 	inc	r0
      003A39 86 83            [24] 3024 	mov	dph,@r0
      003A3B 08               [12] 3025 	inc	r0
      003A3C 86 F0            [24] 3026 	mov	b,@r0
      003A3E 12 6F D1         [24] 3027 	lcall	__gptrget
      003A41 FA               [12] 3028 	mov	r2,a
      003A42 A3               [24] 3029 	inc	dptr
      003A43 12 6F D1         [24] 3030 	lcall	__gptrget
      003A46 FB               [12] 3031 	mov	r3,a
      003A47 A3               [24] 3032 	inc	dptr
      003A48 12 6F D1         [24] 3033 	lcall	__gptrget
      003A4B FC               [12] 3034 	mov	r4,a
      003A4C E5 08            [12] 3035 	mov	a,_bp
      003A4E 24 19            [12] 3036 	add	a,#0x19
      003A50 F8               [12] 3037 	mov	r0,a
      003A51 E6               [12] 3038 	mov	a,@r0
      003A52 C0 E0            [24] 3039 	push	acc
      003A54 08               [12] 3040 	inc	r0
      003A55 E6               [12] 3041 	mov	a,@r0
      003A56 C0 E0            [24] 3042 	push	acc
      003A58 08               [12] 3043 	inc	r0
      003A59 E6               [12] 3044 	mov	a,@r0
      003A5A C0 E0            [24] 3045 	push	acc
      003A5C 08               [12] 3046 	inc	r0
      003A5D E6               [12] 3047 	mov	a,@r0
      003A5E C0 E0            [24] 3048 	push	acc
      003A60 8A 82            [24] 3049 	mov	dpl,r2
      003A62 8B 83            [24] 3050 	mov	dph,r3
      003A64 8C F0            [24] 3051 	mov	b,r4
      003A66 12 26 BA         [24] 3052 	lcall	_stack_push
      003A69 E5 81            [12] 3053 	mov	a,sp
      003A6B 24 FC            [12] 3054 	add	a,#0xfc
      003A6D F5 81            [12] 3055 	mov	sp,a
                                   3056 ;	calc.c:170: break;
      003A6F 02 56 1B         [24] 3057 	ljmp	00249$
                                   3058 ;	calc.c:171: case 'm':
      003A72                       3059 00121$:
                                   3060 ;	calc.c:172: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003A72 E5 08            [12] 3061 	mov	a,_bp
      003A74 24 15            [12] 3062 	add	a,#0x15
      003A76 FF               [12] 3063 	mov	r7,a
      003A77 7E 00            [12] 3064 	mov	r6,#0x00
      003A79 7D 40            [12] 3065 	mov	r5,#0x40
      003A7B E5 08            [12] 3066 	mov	a,_bp
      003A7D 24 12            [12] 3067 	add	a,#0x12
      003A7F F8               [12] 3068 	mov	r0,a
      003A80 E5 08            [12] 3069 	mov	a,_bp
      003A82 24 07            [12] 3070 	add	a,#0x07
      003A84 F9               [12] 3071 	mov	r1,a
      003A85 74 13            [12] 3072 	mov	a,#0x13
      003A87 26               [12] 3073 	add	a,@r0
      003A88 F7               [12] 3074 	mov	@r1,a
      003A89 74 40            [12] 3075 	mov	a,#0x40
      003A8B 08               [12] 3076 	inc	r0
      003A8C 36               [12] 3077 	addc	a,@r0
      003A8D 09               [12] 3078 	inc	r1
      003A8E F7               [12] 3079 	mov	@r1,a
      003A8F 08               [12] 3080 	inc	r0
      003A90 09               [12] 3081 	inc	r1
      003A91 E6               [12] 3082 	mov	a,@r0
      003A92 F7               [12] 3083 	mov	@r1,a
      003A93 E5 08            [12] 3084 	mov	a,_bp
      003A95 24 07            [12] 3085 	add	a,#0x07
      003A97 F8               [12] 3086 	mov	r0,a
      003A98 86 82            [24] 3087 	mov	dpl,@r0
      003A9A 08               [12] 3088 	inc	r0
      003A9B 86 83            [24] 3089 	mov	dph,@r0
      003A9D 08               [12] 3090 	inc	r0
      003A9E 86 F0            [24] 3091 	mov	b,@r0
      003AA0 12 6F D1         [24] 3092 	lcall	__gptrget
      003AA3 FA               [12] 3093 	mov	r2,a
      003AA4 A3               [24] 3094 	inc	dptr
      003AA5 12 6F D1         [24] 3095 	lcall	__gptrget
      003AA8 FB               [12] 3096 	mov	r3,a
      003AA9 A3               [24] 3097 	inc	dptr
      003AAA 12 6F D1         [24] 3098 	lcall	__gptrget
      003AAD FC               [12] 3099 	mov	r4,a
      003AAE C0 07            [24] 3100 	push	ar7
      003AB0 C0 06            [24] 3101 	push	ar6
      003AB2 C0 05            [24] 3102 	push	ar5
      003AB4 8A 82            [24] 3103 	mov	dpl,r2
      003AB6 8B 83            [24] 3104 	mov	dph,r3
      003AB8 8C F0            [24] 3105 	mov	b,r4
      003ABA 12 27 B4         [24] 3106 	lcall	_stack_pop
      003ABD AB 82            [24] 3107 	mov	r3,dpl
      003ABF AC 83            [24] 3108 	mov	r4,dph
      003AC1 15 81            [12] 3109 	dec	sp
      003AC3 15 81            [12] 3110 	dec	sp
      003AC5 15 81            [12] 3111 	dec	sp
      003AC7 EB               [12] 3112 	mov	a,r3
      003AC8 4C               [12] 3113 	orl	a,r4
      003AC9 70 25            [24] 3114 	jnz	00125$
      003ACB 7F 96            [12] 3115 	mov	r7,#___str_10
      003ACD 7E 88            [12] 3116 	mov	r6,#(___str_10 >> 8)
      003ACF 7D 80            [12] 3117 	mov	r5,#0x80
                                   3118 ;	calc.c:51: return;
      003AD1                       3119 00394$:
                                   3120 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003AD1 8F 82            [24] 3121 	mov	dpl,r7
      003AD3 8E 83            [24] 3122 	mov	dph,r6
      003AD5 8D F0            [24] 3123 	mov	b,r5
      003AD7 12 6F D1         [24] 3124 	lcall	__gptrget
      003ADA FC               [12] 3125 	mov	r4,a
      003ADB 70 03            [24] 3126 	jnz	01294$
      003ADD 02 56 1B         [24] 3127 	ljmp	00249$
      003AE0                       3128 01294$:
      003AE0 7B 00            [12] 3129 	mov	r3,#0x00
      003AE2 8C 82            [24] 3130 	mov	dpl,r4
      003AE4 8B 83            [24] 3131 	mov	dph,r3
      003AE6 12 2B D5         [24] 3132 	lcall	_putchar
      003AE9 0F               [12] 3133 	inc	r7
                                   3134 ;	calc.c:172: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003AEA BF 00 E4         [24] 3135 	cjne	r7,#0x00,00394$
      003AED 0E               [12] 3136 	inc	r6
      003AEE 80 E1            [24] 3137 	sjmp	00394$
      003AF0                       3138 00125$:
                                   3139 ;	calc.c:174: if (!stack_push(ctx->ss, d0)) {
      003AF0 E5 08            [12] 3140 	mov	a,_bp
      003AF2 24 12            [12] 3141 	add	a,#0x12
      003AF4 F8               [12] 3142 	mov	r0,a
      003AF5 74 16            [12] 3143 	mov	a,#0x16
      003AF7 26               [12] 3144 	add	a,@r0
      003AF8 FA               [12] 3145 	mov	r2,a
      003AF9 74 40            [12] 3146 	mov	a,#0x40
      003AFB 08               [12] 3147 	inc	r0
      003AFC 36               [12] 3148 	addc	a,@r0
      003AFD FB               [12] 3149 	mov	r3,a
      003AFE 08               [12] 3150 	inc	r0
      003AFF 86 04            [24] 3151 	mov	ar4,@r0
      003B01 8A 82            [24] 3152 	mov	dpl,r2
      003B03 8B 83            [24] 3153 	mov	dph,r3
      003B05 8C F0            [24] 3154 	mov	b,r4
      003B07 12 6F D1         [24] 3155 	lcall	__gptrget
      003B0A FA               [12] 3156 	mov	r2,a
      003B0B A3               [24] 3157 	inc	dptr
      003B0C 12 6F D1         [24] 3158 	lcall	__gptrget
      003B0F FB               [12] 3159 	mov	r3,a
      003B10 A3               [24] 3160 	inc	dptr
      003B11 12 6F D1         [24] 3161 	lcall	__gptrget
      003B14 FC               [12] 3162 	mov	r4,a
      003B15 E5 08            [12] 3163 	mov	a,_bp
      003B17 24 15            [12] 3164 	add	a,#0x15
      003B19 F8               [12] 3165 	mov	r0,a
      003B1A E6               [12] 3166 	mov	a,@r0
      003B1B C0 E0            [24] 3167 	push	acc
      003B1D 08               [12] 3168 	inc	r0
      003B1E E6               [12] 3169 	mov	a,@r0
      003B1F C0 E0            [24] 3170 	push	acc
      003B21 08               [12] 3171 	inc	r0
      003B22 E6               [12] 3172 	mov	a,@r0
      003B23 C0 E0            [24] 3173 	push	acc
      003B25 08               [12] 3174 	inc	r0
      003B26 E6               [12] 3175 	mov	a,@r0
      003B27 C0 E0            [24] 3176 	push	acc
      003B29 8A 82            [24] 3177 	mov	dpl,r2
      003B2B 8B 83            [24] 3178 	mov	dph,r3
      003B2D 8C F0            [24] 3179 	mov	b,r4
      003B2F 12 26 BA         [24] 3180 	lcall	_stack_push
      003B32 AB 82            [24] 3181 	mov	r3,dpl
      003B34 AC 83            [24] 3182 	mov	r4,dph
      003B36 E5 81            [12] 3183 	mov	a,sp
      003B38 24 FC            [12] 3184 	add	a,#0xfc
      003B3A F5 81            [12] 3185 	mov	sp,a
      003B3C EB               [12] 3186 	mov	a,r3
      003B3D 4C               [12] 3187 	orl	a,r4
      003B3E 60 03            [24] 3188 	jz	01296$
      003B40 02 56 1B         [24] 3189 	ljmp	00249$
      003B43                       3190 01296$:
                                   3191 ;	calc.c:175: printstr("\r\nsecondary stack overflow\r\n");
      003B43 7F AA            [12] 3192 	mov	r7,#___str_11
      003B45 7E 88            [12] 3193 	mov	r6,#(___str_11 >> 8)
      003B47 7D 80            [12] 3194 	mov	r5,#0x80
                                   3195 ;	calc.c:51: return;
      003B49                       3196 00397$:
                                   3197 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003B49 8F 82            [24] 3198 	mov	dpl,r7
      003B4B 8E 83            [24] 3199 	mov	dph,r6
      003B4D 8D F0            [24] 3200 	mov	b,r5
      003B4F 12 6F D1         [24] 3201 	lcall	__gptrget
      003B52 FC               [12] 3202 	mov	r4,a
      003B53 60 10            [24] 3203 	jz	00283$
      003B55 7B 00            [12] 3204 	mov	r3,#0x00
      003B57 8C 82            [24] 3205 	mov	dpl,r4
      003B59 8B 83            [24] 3206 	mov	dph,r3
      003B5B 12 2B D5         [24] 3207 	lcall	_putchar
      003B5E 0F               [12] 3208 	inc	r7
                                   3209 ;	calc.c:175: printstr("\r\nsecondary stack overflow\r\n");
      003B5F BF 00 E7         [24] 3210 	cjne	r7,#0x00,00397$
      003B62 0E               [12] 3211 	inc	r6
      003B63 80 E4            [24] 3212 	sjmp	00397$
      003B65                       3213 00283$:
                                   3214 ;	calc.c:176: (void)stack_push(ctx->ps, d0);
      003B65 E5 08            [12] 3215 	mov	a,_bp
      003B67 24 07            [12] 3216 	add	a,#0x07
      003B69 F8               [12] 3217 	mov	r0,a
      003B6A 86 82            [24] 3218 	mov	dpl,@r0
      003B6C 08               [12] 3219 	inc	r0
      003B6D 86 83            [24] 3220 	mov	dph,@r0
      003B6F 08               [12] 3221 	inc	r0
      003B70 86 F0            [24] 3222 	mov	b,@r0
      003B72 12 6F D1         [24] 3223 	lcall	__gptrget
      003B75 FA               [12] 3224 	mov	r2,a
      003B76 A3               [24] 3225 	inc	dptr
      003B77 12 6F D1         [24] 3226 	lcall	__gptrget
      003B7A FB               [12] 3227 	mov	r3,a
      003B7B A3               [24] 3228 	inc	dptr
      003B7C 12 6F D1         [24] 3229 	lcall	__gptrget
      003B7F FC               [12] 3230 	mov	r4,a
      003B80 E5 08            [12] 3231 	mov	a,_bp
      003B82 24 15            [12] 3232 	add	a,#0x15
      003B84 F8               [12] 3233 	mov	r0,a
      003B85 E6               [12] 3234 	mov	a,@r0
      003B86 C0 E0            [24] 3235 	push	acc
      003B88 08               [12] 3236 	inc	r0
      003B89 E6               [12] 3237 	mov	a,@r0
      003B8A C0 E0            [24] 3238 	push	acc
      003B8C 08               [12] 3239 	inc	r0
      003B8D E6               [12] 3240 	mov	a,@r0
      003B8E C0 E0            [24] 3241 	push	acc
      003B90 08               [12] 3242 	inc	r0
      003B91 E6               [12] 3243 	mov	a,@r0
      003B92 C0 E0            [24] 3244 	push	acc
      003B94 8A 82            [24] 3245 	mov	dpl,r2
      003B96 8B 83            [24] 3246 	mov	dph,r3
      003B98 8C F0            [24] 3247 	mov	b,r4
      003B9A 12 26 BA         [24] 3248 	lcall	_stack_push
      003B9D E5 81            [12] 3249 	mov	a,sp
      003B9F 24 FC            [12] 3250 	add	a,#0xfc
      003BA1 F5 81            [12] 3251 	mov	sp,a
                                   3252 ;	calc.c:179: break;
      003BA3 02 56 1B         [24] 3253 	ljmp	00249$
                                   3254 ;	calc.c:180: case 'M':
      003BA6                       3255 00127$:
                                   3256 ;	calc.c:181: if (!stack_pop(ctx->ss, &d0)) printstr("\r\nsecondary stack underflow\r\n");
      003BA6 E5 08            [12] 3257 	mov	a,_bp
      003BA8 24 15            [12] 3258 	add	a,#0x15
      003BAA FF               [12] 3259 	mov	r7,a
      003BAB 7E 00            [12] 3260 	mov	r6,#0x00
      003BAD 7D 40            [12] 3261 	mov	r5,#0x40
      003BAF E5 08            [12] 3262 	mov	a,_bp
      003BB1 24 12            [12] 3263 	add	a,#0x12
      003BB3 F8               [12] 3264 	mov	r0,a
      003BB4 E5 08            [12] 3265 	mov	a,_bp
      003BB6 24 07            [12] 3266 	add	a,#0x07
      003BB8 F9               [12] 3267 	mov	r1,a
      003BB9 74 16            [12] 3268 	mov	a,#0x16
      003BBB 26               [12] 3269 	add	a,@r0
      003BBC F7               [12] 3270 	mov	@r1,a
      003BBD 74 40            [12] 3271 	mov	a,#0x40
      003BBF 08               [12] 3272 	inc	r0
      003BC0 36               [12] 3273 	addc	a,@r0
      003BC1 09               [12] 3274 	inc	r1
      003BC2 F7               [12] 3275 	mov	@r1,a
      003BC3 08               [12] 3276 	inc	r0
      003BC4 09               [12] 3277 	inc	r1
      003BC5 E6               [12] 3278 	mov	a,@r0
      003BC6 F7               [12] 3279 	mov	@r1,a
      003BC7 E5 08            [12] 3280 	mov	a,_bp
      003BC9 24 07            [12] 3281 	add	a,#0x07
      003BCB F8               [12] 3282 	mov	r0,a
      003BCC 86 82            [24] 3283 	mov	dpl,@r0
      003BCE 08               [12] 3284 	inc	r0
      003BCF 86 83            [24] 3285 	mov	dph,@r0
      003BD1 08               [12] 3286 	inc	r0
      003BD2 86 F0            [24] 3287 	mov	b,@r0
      003BD4 12 6F D1         [24] 3288 	lcall	__gptrget
      003BD7 FA               [12] 3289 	mov	r2,a
      003BD8 A3               [24] 3290 	inc	dptr
      003BD9 12 6F D1         [24] 3291 	lcall	__gptrget
      003BDC FB               [12] 3292 	mov	r3,a
      003BDD A3               [24] 3293 	inc	dptr
      003BDE 12 6F D1         [24] 3294 	lcall	__gptrget
      003BE1 FC               [12] 3295 	mov	r4,a
      003BE2 C0 07            [24] 3296 	push	ar7
      003BE4 C0 06            [24] 3297 	push	ar6
      003BE6 C0 05            [24] 3298 	push	ar5
      003BE8 8A 82            [24] 3299 	mov	dpl,r2
      003BEA 8B 83            [24] 3300 	mov	dph,r3
      003BEC 8C F0            [24] 3301 	mov	b,r4
      003BEE 12 27 B4         [24] 3302 	lcall	_stack_pop
      003BF1 AB 82            [24] 3303 	mov	r3,dpl
      003BF3 AC 83            [24] 3304 	mov	r4,dph
      003BF5 15 81            [12] 3305 	dec	sp
      003BF7 15 81            [12] 3306 	dec	sp
      003BF9 15 81            [12] 3307 	dec	sp
      003BFB EB               [12] 3308 	mov	a,r3
      003BFC 4C               [12] 3309 	orl	a,r4
      003BFD 70 25            [24] 3310 	jnz	00131$
      003BFF 7F C7            [12] 3311 	mov	r7,#___str_12
      003C01 7E 88            [12] 3312 	mov	r6,#(___str_12 >> 8)
      003C03 7D 80            [12] 3313 	mov	r5,#0x80
                                   3314 ;	calc.c:51: return;
      003C05                       3315 00400$:
                                   3316 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003C05 8F 82            [24] 3317 	mov	dpl,r7
      003C07 8E 83            [24] 3318 	mov	dph,r6
      003C09 8D F0            [24] 3319 	mov	b,r5
      003C0B 12 6F D1         [24] 3320 	lcall	__gptrget
      003C0E FC               [12] 3321 	mov	r4,a
      003C0F 70 03            [24] 3322 	jnz	01300$
      003C11 02 56 1B         [24] 3323 	ljmp	00249$
      003C14                       3324 01300$:
      003C14 7B 00            [12] 3325 	mov	r3,#0x00
      003C16 8C 82            [24] 3326 	mov	dpl,r4
      003C18 8B 83            [24] 3327 	mov	dph,r3
      003C1A 12 2B D5         [24] 3328 	lcall	_putchar
      003C1D 0F               [12] 3329 	inc	r7
                                   3330 ;	calc.c:181: if (!stack_pop(ctx->ss, &d0)) printstr("\r\nsecondary stack underflow\r\n");
      003C1E BF 00 E4         [24] 3331 	cjne	r7,#0x00,00400$
      003C21 0E               [12] 3332 	inc	r6
      003C22 80 E1            [24] 3333 	sjmp	00400$
      003C24                       3334 00131$:
                                   3335 ;	calc.c:183: if (!stack_push(ctx->ps, d0)) {
      003C24 E5 08            [12] 3336 	mov	a,_bp
      003C26 24 12            [12] 3337 	add	a,#0x12
      003C28 F8               [12] 3338 	mov	r0,a
      003C29 74 13            [12] 3339 	mov	a,#0x13
      003C2B 26               [12] 3340 	add	a,@r0
      003C2C FA               [12] 3341 	mov	r2,a
      003C2D 74 40            [12] 3342 	mov	a,#0x40
      003C2F 08               [12] 3343 	inc	r0
      003C30 36               [12] 3344 	addc	a,@r0
      003C31 FB               [12] 3345 	mov	r3,a
      003C32 08               [12] 3346 	inc	r0
      003C33 86 04            [24] 3347 	mov	ar4,@r0
      003C35 8A 82            [24] 3348 	mov	dpl,r2
      003C37 8B 83            [24] 3349 	mov	dph,r3
      003C39 8C F0            [24] 3350 	mov	b,r4
      003C3B 12 6F D1         [24] 3351 	lcall	__gptrget
      003C3E FA               [12] 3352 	mov	r2,a
      003C3F A3               [24] 3353 	inc	dptr
      003C40 12 6F D1         [24] 3354 	lcall	__gptrget
      003C43 FB               [12] 3355 	mov	r3,a
      003C44 A3               [24] 3356 	inc	dptr
      003C45 12 6F D1         [24] 3357 	lcall	__gptrget
      003C48 FC               [12] 3358 	mov	r4,a
      003C49 E5 08            [12] 3359 	mov	a,_bp
      003C4B 24 15            [12] 3360 	add	a,#0x15
      003C4D F8               [12] 3361 	mov	r0,a
      003C4E E6               [12] 3362 	mov	a,@r0
      003C4F C0 E0            [24] 3363 	push	acc
      003C51 08               [12] 3364 	inc	r0
      003C52 E6               [12] 3365 	mov	a,@r0
      003C53 C0 E0            [24] 3366 	push	acc
      003C55 08               [12] 3367 	inc	r0
      003C56 E6               [12] 3368 	mov	a,@r0
      003C57 C0 E0            [24] 3369 	push	acc
      003C59 08               [12] 3370 	inc	r0
      003C5A E6               [12] 3371 	mov	a,@r0
      003C5B C0 E0            [24] 3372 	push	acc
      003C5D 8A 82            [24] 3373 	mov	dpl,r2
      003C5F 8B 83            [24] 3374 	mov	dph,r3
      003C61 8C F0            [24] 3375 	mov	b,r4
      003C63 12 26 BA         [24] 3376 	lcall	_stack_push
      003C66 AB 82            [24] 3377 	mov	r3,dpl
      003C68 AC 83            [24] 3378 	mov	r4,dph
      003C6A E5 81            [12] 3379 	mov	a,sp
      003C6C 24 FC            [12] 3380 	add	a,#0xfc
      003C6E F5 81            [12] 3381 	mov	sp,a
      003C70 EB               [12] 3382 	mov	a,r3
      003C71 4C               [12] 3383 	orl	a,r4
      003C72 60 03            [24] 3384 	jz	01302$
      003C74 02 56 1B         [24] 3385 	ljmp	00249$
      003C77                       3386 01302$:
                                   3387 ;	calc.c:184: printstr("\r\nstack overflow\r\n");
      003C77 7F E5            [12] 3388 	mov	r7,#___str_13
      003C79 7E 88            [12] 3389 	mov	r6,#(___str_13 >> 8)
      003C7B 7D 80            [12] 3390 	mov	r5,#0x80
                                   3391 ;	calc.c:51: return;
      003C7D                       3392 00403$:
                                   3393 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003C7D 8F 82            [24] 3394 	mov	dpl,r7
      003C7F 8E 83            [24] 3395 	mov	dph,r6
      003C81 8D F0            [24] 3396 	mov	b,r5
      003C83 12 6F D1         [24] 3397 	lcall	__gptrget
      003C86 FC               [12] 3398 	mov	r4,a
      003C87 60 10            [24] 3399 	jz	00287$
      003C89 7B 00            [12] 3400 	mov	r3,#0x00
      003C8B 8C 82            [24] 3401 	mov	dpl,r4
      003C8D 8B 83            [24] 3402 	mov	dph,r3
      003C8F 12 2B D5         [24] 3403 	lcall	_putchar
      003C92 0F               [12] 3404 	inc	r7
                                   3405 ;	calc.c:184: printstr("\r\nstack overflow\r\n");
      003C93 BF 00 E7         [24] 3406 	cjne	r7,#0x00,00403$
      003C96 0E               [12] 3407 	inc	r6
      003C97 80 E4            [24] 3408 	sjmp	00403$
      003C99                       3409 00287$:
                                   3410 ;	calc.c:185: (void)stack_push(ctx->ss, d0);
      003C99 E5 08            [12] 3411 	mov	a,_bp
      003C9B 24 07            [12] 3412 	add	a,#0x07
      003C9D F8               [12] 3413 	mov	r0,a
      003C9E 86 82            [24] 3414 	mov	dpl,@r0
      003CA0 08               [12] 3415 	inc	r0
      003CA1 86 83            [24] 3416 	mov	dph,@r0
      003CA3 08               [12] 3417 	inc	r0
      003CA4 86 F0            [24] 3418 	mov	b,@r0
      003CA6 12 6F D1         [24] 3419 	lcall	__gptrget
      003CA9 FA               [12] 3420 	mov	r2,a
      003CAA A3               [24] 3421 	inc	dptr
      003CAB 12 6F D1         [24] 3422 	lcall	__gptrget
      003CAE FB               [12] 3423 	mov	r3,a
      003CAF A3               [24] 3424 	inc	dptr
      003CB0 12 6F D1         [24] 3425 	lcall	__gptrget
      003CB3 FC               [12] 3426 	mov	r4,a
      003CB4 E5 08            [12] 3427 	mov	a,_bp
      003CB6 24 15            [12] 3428 	add	a,#0x15
      003CB8 F8               [12] 3429 	mov	r0,a
      003CB9 E6               [12] 3430 	mov	a,@r0
      003CBA C0 E0            [24] 3431 	push	acc
      003CBC 08               [12] 3432 	inc	r0
      003CBD E6               [12] 3433 	mov	a,@r0
      003CBE C0 E0            [24] 3434 	push	acc
      003CC0 08               [12] 3435 	inc	r0
      003CC1 E6               [12] 3436 	mov	a,@r0
      003CC2 C0 E0            [24] 3437 	push	acc
      003CC4 08               [12] 3438 	inc	r0
      003CC5 E6               [12] 3439 	mov	a,@r0
      003CC6 C0 E0            [24] 3440 	push	acc
      003CC8 8A 82            [24] 3441 	mov	dpl,r2
      003CCA 8B 83            [24] 3442 	mov	dph,r3
      003CCC 8C F0            [24] 3443 	mov	b,r4
      003CCE 12 26 BA         [24] 3444 	lcall	_stack_push
      003CD1 E5 81            [12] 3445 	mov	a,sp
      003CD3 24 FC            [12] 3446 	add	a,#0xfc
      003CD5 F5 81            [12] 3447 	mov	sp,a
                                   3448 ;	calc.c:188: break;
      003CD7 02 56 1B         [24] 3449 	ljmp	00249$
                                   3450 ;	calc.c:189: case 'u':
      003CDA                       3451 00133$:
                                   3452 ;	calc.c:190: if (!stack_peek(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003CDA E5 08            [12] 3453 	mov	a,_bp
      003CDC 24 15            [12] 3454 	add	a,#0x15
      003CDE FF               [12] 3455 	mov	r7,a
      003CDF 7E 00            [12] 3456 	mov	r6,#0x00
      003CE1 7D 40            [12] 3457 	mov	r5,#0x40
      003CE3 E5 08            [12] 3458 	mov	a,_bp
      003CE5 24 12            [12] 3459 	add	a,#0x12
      003CE7 F8               [12] 3460 	mov	r0,a
      003CE8 74 13            [12] 3461 	mov	a,#0x13
      003CEA 26               [12] 3462 	add	a,@r0
      003CEB FA               [12] 3463 	mov	r2,a
      003CEC ED               [12] 3464 	mov	a,r5
      003CED 08               [12] 3465 	inc	r0
      003CEE 36               [12] 3466 	addc	a,@r0
      003CEF FB               [12] 3467 	mov	r3,a
      003CF0 08               [12] 3468 	inc	r0
      003CF1 86 04            [24] 3469 	mov	ar4,@r0
      003CF3 8A 82            [24] 3470 	mov	dpl,r2
      003CF5 8B 83            [24] 3471 	mov	dph,r3
      003CF7 8C F0            [24] 3472 	mov	b,r4
      003CF9 12 6F D1         [24] 3473 	lcall	__gptrget
      003CFC FA               [12] 3474 	mov	r2,a
      003CFD A3               [24] 3475 	inc	dptr
      003CFE 12 6F D1         [24] 3476 	lcall	__gptrget
      003D01 FB               [12] 3477 	mov	r3,a
      003D02 A3               [24] 3478 	inc	dptr
      003D03 12 6F D1         [24] 3479 	lcall	__gptrget
      003D06 FC               [12] 3480 	mov	r4,a
      003D07 C0 07            [24] 3481 	push	ar7
      003D09 C0 06            [24] 3482 	push	ar6
      003D0B C0 05            [24] 3483 	push	ar5
      003D0D 8A 82            [24] 3484 	mov	dpl,r2
      003D0F 8B 83            [24] 3485 	mov	dph,r3
      003D11 8C F0            [24] 3486 	mov	b,r4
      003D13 12 28 D8         [24] 3487 	lcall	_stack_peek
      003D16 AB 82            [24] 3488 	mov	r3,dpl
      003D18 AC 83            [24] 3489 	mov	r4,dph
      003D1A 15 81            [12] 3490 	dec	sp
      003D1C 15 81            [12] 3491 	dec	sp
      003D1E 15 81            [12] 3492 	dec	sp
      003D20 EB               [12] 3493 	mov	a,r3
      003D21 4C               [12] 3494 	orl	a,r4
      003D22 70 25            [24] 3495 	jnz	00137$
      003D24 7F 96            [12] 3496 	mov	r7,#___str_10
      003D26 7E 88            [12] 3497 	mov	r6,#(___str_10 >> 8)
      003D28 7D 80            [12] 3498 	mov	r5,#0x80
                                   3499 ;	calc.c:51: return;
      003D2A                       3500 00406$:
                                   3501 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003D2A 8F 82            [24] 3502 	mov	dpl,r7
      003D2C 8E 83            [24] 3503 	mov	dph,r6
      003D2E 8D F0            [24] 3504 	mov	b,r5
      003D30 12 6F D1         [24] 3505 	lcall	__gptrget
      003D33 FC               [12] 3506 	mov	r4,a
      003D34 70 03            [24] 3507 	jnz	01306$
      003D36 02 56 1B         [24] 3508 	ljmp	00249$
      003D39                       3509 01306$:
      003D39 7B 00            [12] 3510 	mov	r3,#0x00
      003D3B 8C 82            [24] 3511 	mov	dpl,r4
      003D3D 8B 83            [24] 3512 	mov	dph,r3
      003D3F 12 2B D5         [24] 3513 	lcall	_putchar
      003D42 0F               [12] 3514 	inc	r7
                                   3515 ;	calc.c:190: if (!stack_peek(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003D43 BF 00 E4         [24] 3516 	cjne	r7,#0x00,00406$
      003D46 0E               [12] 3517 	inc	r6
      003D47 80 E1            [24] 3518 	sjmp	00406$
      003D49                       3519 00137$:
                                   3520 ;	calc.c:191: else if (!stack_push(ctx->ss, d0)) printstr("\r\nsecondary stack overflow\r\n");
      003D49 E5 08            [12] 3521 	mov	a,_bp
      003D4B 24 12            [12] 3522 	add	a,#0x12
      003D4D F8               [12] 3523 	mov	r0,a
      003D4E 74 16            [12] 3524 	mov	a,#0x16
      003D50 26               [12] 3525 	add	a,@r0
      003D51 FA               [12] 3526 	mov	r2,a
      003D52 74 40            [12] 3527 	mov	a,#0x40
      003D54 08               [12] 3528 	inc	r0
      003D55 36               [12] 3529 	addc	a,@r0
      003D56 FB               [12] 3530 	mov	r3,a
      003D57 08               [12] 3531 	inc	r0
      003D58 86 04            [24] 3532 	mov	ar4,@r0
      003D5A 8A 82            [24] 3533 	mov	dpl,r2
      003D5C 8B 83            [24] 3534 	mov	dph,r3
      003D5E 8C F0            [24] 3535 	mov	b,r4
      003D60 12 6F D1         [24] 3536 	lcall	__gptrget
      003D63 FA               [12] 3537 	mov	r2,a
      003D64 A3               [24] 3538 	inc	dptr
      003D65 12 6F D1         [24] 3539 	lcall	__gptrget
      003D68 FB               [12] 3540 	mov	r3,a
      003D69 A3               [24] 3541 	inc	dptr
      003D6A 12 6F D1         [24] 3542 	lcall	__gptrget
      003D6D FC               [12] 3543 	mov	r4,a
      003D6E E5 08            [12] 3544 	mov	a,_bp
      003D70 24 15            [12] 3545 	add	a,#0x15
      003D72 F8               [12] 3546 	mov	r0,a
      003D73 E6               [12] 3547 	mov	a,@r0
      003D74 C0 E0            [24] 3548 	push	acc
      003D76 08               [12] 3549 	inc	r0
      003D77 E6               [12] 3550 	mov	a,@r0
      003D78 C0 E0            [24] 3551 	push	acc
      003D7A 08               [12] 3552 	inc	r0
      003D7B E6               [12] 3553 	mov	a,@r0
      003D7C C0 E0            [24] 3554 	push	acc
      003D7E 08               [12] 3555 	inc	r0
      003D7F E6               [12] 3556 	mov	a,@r0
      003D80 C0 E0            [24] 3557 	push	acc
      003D82 8A 82            [24] 3558 	mov	dpl,r2
      003D84 8B 83            [24] 3559 	mov	dph,r3
      003D86 8C F0            [24] 3560 	mov	b,r4
      003D88 12 26 BA         [24] 3561 	lcall	_stack_push
      003D8B AB 82            [24] 3562 	mov	r3,dpl
      003D8D AC 83            [24] 3563 	mov	r4,dph
      003D8F E5 81            [12] 3564 	mov	a,sp
      003D91 24 FC            [12] 3565 	add	a,#0xfc
      003D93 F5 81            [12] 3566 	mov	sp,a
      003D95 EB               [12] 3567 	mov	a,r3
      003D96 4C               [12] 3568 	orl	a,r4
      003D97 60 03            [24] 3569 	jz	01308$
      003D99 02 56 1B         [24] 3570 	ljmp	00249$
      003D9C                       3571 01308$:
      003D9C 7F AA            [12] 3572 	mov	r7,#___str_11
      003D9E 7E 88            [12] 3573 	mov	r6,#(___str_11 >> 8)
      003DA0 7D 80            [12] 3574 	mov	r5,#0x80
                                   3575 ;	calc.c:51: return;
      003DA2                       3576 00409$:
                                   3577 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003DA2 8F 82            [24] 3578 	mov	dpl,r7
      003DA4 8E 83            [24] 3579 	mov	dph,r6
      003DA6 8D F0            [24] 3580 	mov	b,r5
      003DA8 12 6F D1         [24] 3581 	lcall	__gptrget
      003DAB FC               [12] 3582 	mov	r4,a
      003DAC 70 03            [24] 3583 	jnz	01309$
      003DAE 02 56 1B         [24] 3584 	ljmp	00249$
      003DB1                       3585 01309$:
      003DB1 7B 00            [12] 3586 	mov	r3,#0x00
      003DB3 8C 82            [24] 3587 	mov	dpl,r4
      003DB5 8B 83            [24] 3588 	mov	dph,r3
      003DB7 12 2B D5         [24] 3589 	lcall	_putchar
      003DBA 0F               [12] 3590 	inc	r7
                                   3591 ;	calc.c:193: case 'U':
      003DBB BF 00 E4         [24] 3592 	cjne	r7,#0x00,00409$
      003DBE 0E               [12] 3593 	inc	r6
      003DBF 80 E1            [24] 3594 	sjmp	00409$
      003DC1                       3595 00139$:
                                   3596 ;	calc.c:194: if (!stack_peek(ctx->ss, &d0)) printstr("\r\nsecondary stack underflow\r\n");
      003DC1 E5 08            [12] 3597 	mov	a,_bp
      003DC3 24 15            [12] 3598 	add	a,#0x15
      003DC5 FF               [12] 3599 	mov	r7,a
      003DC6 7E 00            [12] 3600 	mov	r6,#0x00
      003DC8 7D 40            [12] 3601 	mov	r5,#0x40
      003DCA E5 08            [12] 3602 	mov	a,_bp
      003DCC 24 12            [12] 3603 	add	a,#0x12
      003DCE F8               [12] 3604 	mov	r0,a
      003DCF 74 16            [12] 3605 	mov	a,#0x16
      003DD1 26               [12] 3606 	add	a,@r0
      003DD2 FA               [12] 3607 	mov	r2,a
      003DD3 ED               [12] 3608 	mov	a,r5
      003DD4 08               [12] 3609 	inc	r0
      003DD5 36               [12] 3610 	addc	a,@r0
      003DD6 FB               [12] 3611 	mov	r3,a
      003DD7 08               [12] 3612 	inc	r0
      003DD8 86 04            [24] 3613 	mov	ar4,@r0
      003DDA 8A 82            [24] 3614 	mov	dpl,r2
      003DDC 8B 83            [24] 3615 	mov	dph,r3
      003DDE 8C F0            [24] 3616 	mov	b,r4
      003DE0 12 6F D1         [24] 3617 	lcall	__gptrget
      003DE3 FA               [12] 3618 	mov	r2,a
      003DE4 A3               [24] 3619 	inc	dptr
      003DE5 12 6F D1         [24] 3620 	lcall	__gptrget
      003DE8 FB               [12] 3621 	mov	r3,a
      003DE9 A3               [24] 3622 	inc	dptr
      003DEA 12 6F D1         [24] 3623 	lcall	__gptrget
      003DED FC               [12] 3624 	mov	r4,a
      003DEE C0 07            [24] 3625 	push	ar7
      003DF0 C0 06            [24] 3626 	push	ar6
      003DF2 C0 05            [24] 3627 	push	ar5
      003DF4 8A 82            [24] 3628 	mov	dpl,r2
      003DF6 8B 83            [24] 3629 	mov	dph,r3
      003DF8 8C F0            [24] 3630 	mov	b,r4
      003DFA 12 28 D8         [24] 3631 	lcall	_stack_peek
      003DFD AB 82            [24] 3632 	mov	r3,dpl
      003DFF AC 83            [24] 3633 	mov	r4,dph
      003E01 15 81            [12] 3634 	dec	sp
      003E03 15 81            [12] 3635 	dec	sp
      003E05 15 81            [12] 3636 	dec	sp
      003E07 EB               [12] 3637 	mov	a,r3
      003E08 4C               [12] 3638 	orl	a,r4
      003E09 70 25            [24] 3639 	jnz	00143$
      003E0B 7F C7            [12] 3640 	mov	r7,#___str_12
      003E0D 7E 88            [12] 3641 	mov	r6,#(___str_12 >> 8)
      003E0F 7D 80            [12] 3642 	mov	r5,#0x80
                                   3643 ;	calc.c:51: return;
      003E11                       3644 00412$:
                                   3645 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003E11 8F 82            [24] 3646 	mov	dpl,r7
      003E13 8E 83            [24] 3647 	mov	dph,r6
      003E15 8D F0            [24] 3648 	mov	b,r5
      003E17 12 6F D1         [24] 3649 	lcall	__gptrget
      003E1A FC               [12] 3650 	mov	r4,a
      003E1B 70 03            [24] 3651 	jnz	01312$
      003E1D 02 56 1B         [24] 3652 	ljmp	00249$
      003E20                       3653 01312$:
      003E20 7B 00            [12] 3654 	mov	r3,#0x00
      003E22 8C 82            [24] 3655 	mov	dpl,r4
      003E24 8B 83            [24] 3656 	mov	dph,r3
      003E26 12 2B D5         [24] 3657 	lcall	_putchar
      003E29 0F               [12] 3658 	inc	r7
                                   3659 ;	calc.c:194: if (!stack_peek(ctx->ss, &d0)) printstr("\r\nsecondary stack underflow\r\n");
      003E2A BF 00 E4         [24] 3660 	cjne	r7,#0x00,00412$
      003E2D 0E               [12] 3661 	inc	r6
      003E2E 80 E1            [24] 3662 	sjmp	00412$
      003E30                       3663 00143$:
                                   3664 ;	calc.c:195: else if (!stack_push(ctx->ps, d0)) printstr("\r\nstack overflow\r\n");
      003E30 E5 08            [12] 3665 	mov	a,_bp
      003E32 24 12            [12] 3666 	add	a,#0x12
      003E34 F8               [12] 3667 	mov	r0,a
      003E35 74 13            [12] 3668 	mov	a,#0x13
      003E37 26               [12] 3669 	add	a,@r0
      003E38 FA               [12] 3670 	mov	r2,a
      003E39 74 40            [12] 3671 	mov	a,#0x40
      003E3B 08               [12] 3672 	inc	r0
      003E3C 36               [12] 3673 	addc	a,@r0
      003E3D FB               [12] 3674 	mov	r3,a
      003E3E 08               [12] 3675 	inc	r0
      003E3F 86 04            [24] 3676 	mov	ar4,@r0
      003E41 8A 82            [24] 3677 	mov	dpl,r2
      003E43 8B 83            [24] 3678 	mov	dph,r3
      003E45 8C F0            [24] 3679 	mov	b,r4
      003E47 12 6F D1         [24] 3680 	lcall	__gptrget
      003E4A FA               [12] 3681 	mov	r2,a
      003E4B A3               [24] 3682 	inc	dptr
      003E4C 12 6F D1         [24] 3683 	lcall	__gptrget
      003E4F FB               [12] 3684 	mov	r3,a
      003E50 A3               [24] 3685 	inc	dptr
      003E51 12 6F D1         [24] 3686 	lcall	__gptrget
      003E54 FC               [12] 3687 	mov	r4,a
      003E55 E5 08            [12] 3688 	mov	a,_bp
      003E57 24 15            [12] 3689 	add	a,#0x15
      003E59 F8               [12] 3690 	mov	r0,a
      003E5A E6               [12] 3691 	mov	a,@r0
      003E5B C0 E0            [24] 3692 	push	acc
      003E5D 08               [12] 3693 	inc	r0
      003E5E E6               [12] 3694 	mov	a,@r0
      003E5F C0 E0            [24] 3695 	push	acc
      003E61 08               [12] 3696 	inc	r0
      003E62 E6               [12] 3697 	mov	a,@r0
      003E63 C0 E0            [24] 3698 	push	acc
      003E65 08               [12] 3699 	inc	r0
      003E66 E6               [12] 3700 	mov	a,@r0
      003E67 C0 E0            [24] 3701 	push	acc
      003E69 8A 82            [24] 3702 	mov	dpl,r2
      003E6B 8B 83            [24] 3703 	mov	dph,r3
      003E6D 8C F0            [24] 3704 	mov	b,r4
      003E6F 12 26 BA         [24] 3705 	lcall	_stack_push
      003E72 AB 82            [24] 3706 	mov	r3,dpl
      003E74 AC 83            [24] 3707 	mov	r4,dph
      003E76 E5 81            [12] 3708 	mov	a,sp
      003E78 24 FC            [12] 3709 	add	a,#0xfc
      003E7A F5 81            [12] 3710 	mov	sp,a
      003E7C EB               [12] 3711 	mov	a,r3
      003E7D 4C               [12] 3712 	orl	a,r4
      003E7E 60 03            [24] 3713 	jz	01314$
      003E80 02 56 1B         [24] 3714 	ljmp	00249$
      003E83                       3715 01314$:
      003E83 7F E5            [12] 3716 	mov	r7,#___str_13
      003E85 7E 88            [12] 3717 	mov	r6,#(___str_13 >> 8)
      003E87 7D 80            [12] 3718 	mov	r5,#0x80
                                   3719 ;	calc.c:51: return;
      003E89                       3720 00415$:
                                   3721 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003E89 8F 82            [24] 3722 	mov	dpl,r7
      003E8B 8E 83            [24] 3723 	mov	dph,r6
      003E8D 8D F0            [24] 3724 	mov	b,r5
      003E8F 12 6F D1         [24] 3725 	lcall	__gptrget
      003E92 FC               [12] 3726 	mov	r4,a
      003E93 70 03            [24] 3727 	jnz	01315$
      003E95 02 56 1B         [24] 3728 	ljmp	00249$
      003E98                       3729 01315$:
      003E98 7B 00            [12] 3730 	mov	r3,#0x00
      003E9A 8C 82            [24] 3731 	mov	dpl,r4
      003E9C 8B 83            [24] 3732 	mov	dph,r3
      003E9E 12 2B D5         [24] 3733 	lcall	_putchar
      003EA1 0F               [12] 3734 	inc	r7
                                   3735 ;	calc.c:197: case 'T':
      003EA2 BF 00 E4         [24] 3736 	cjne	r7,#0x00,00415$
      003EA5 0E               [12] 3737 	inc	r6
      003EA6 80 E1            [24] 3738 	sjmp	00415$
      003EA8                       3739 00145$:
                                   3740 ;	calc.c:198: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003EA8 E5 08            [12] 3741 	mov	a,_bp
      003EAA 24 15            [12] 3742 	add	a,#0x15
      003EAC FF               [12] 3743 	mov	r7,a
      003EAD 7E 00            [12] 3744 	mov	r6,#0x00
      003EAF 7D 40            [12] 3745 	mov	r5,#0x40
      003EB1 E5 08            [12] 3746 	mov	a,_bp
      003EB3 24 12            [12] 3747 	add	a,#0x12
      003EB5 F8               [12] 3748 	mov	r0,a
      003EB6 E5 08            [12] 3749 	mov	a,_bp
      003EB8 24 07            [12] 3750 	add	a,#0x07
      003EBA F9               [12] 3751 	mov	r1,a
      003EBB 74 13            [12] 3752 	mov	a,#0x13
      003EBD 26               [12] 3753 	add	a,@r0
      003EBE F7               [12] 3754 	mov	@r1,a
      003EBF 74 40            [12] 3755 	mov	a,#0x40
      003EC1 08               [12] 3756 	inc	r0
      003EC2 36               [12] 3757 	addc	a,@r0
      003EC3 09               [12] 3758 	inc	r1
      003EC4 F7               [12] 3759 	mov	@r1,a
      003EC5 08               [12] 3760 	inc	r0
      003EC6 09               [12] 3761 	inc	r1
      003EC7 E6               [12] 3762 	mov	a,@r0
      003EC8 F7               [12] 3763 	mov	@r1,a
      003EC9 E5 08            [12] 3764 	mov	a,_bp
      003ECB 24 07            [12] 3765 	add	a,#0x07
      003ECD F8               [12] 3766 	mov	r0,a
      003ECE 86 82            [24] 3767 	mov	dpl,@r0
      003ED0 08               [12] 3768 	inc	r0
      003ED1 86 83            [24] 3769 	mov	dph,@r0
      003ED3 08               [12] 3770 	inc	r0
      003ED4 86 F0            [24] 3771 	mov	b,@r0
      003ED6 12 6F D1         [24] 3772 	lcall	__gptrget
      003ED9 FA               [12] 3773 	mov	r2,a
      003EDA A3               [24] 3774 	inc	dptr
      003EDB 12 6F D1         [24] 3775 	lcall	__gptrget
      003EDE FB               [12] 3776 	mov	r3,a
      003EDF A3               [24] 3777 	inc	dptr
      003EE0 12 6F D1         [24] 3778 	lcall	__gptrget
      003EE3 FC               [12] 3779 	mov	r4,a
      003EE4 C0 07            [24] 3780 	push	ar7
      003EE6 C0 06            [24] 3781 	push	ar6
      003EE8 C0 05            [24] 3782 	push	ar5
      003EEA 8A 82            [24] 3783 	mov	dpl,r2
      003EEC 8B 83            [24] 3784 	mov	dph,r3
      003EEE 8C F0            [24] 3785 	mov	b,r4
      003EF0 12 27 B4         [24] 3786 	lcall	_stack_pop
      003EF3 AB 82            [24] 3787 	mov	r3,dpl
      003EF5 AC 83            [24] 3788 	mov	r4,dph
      003EF7 15 81            [12] 3789 	dec	sp
      003EF9 15 81            [12] 3790 	dec	sp
      003EFB 15 81            [12] 3791 	dec	sp
      003EFD EB               [12] 3792 	mov	a,r3
      003EFE 4C               [12] 3793 	orl	a,r4
      003EFF 70 25            [24] 3794 	jnz	00150$
      003F01 7F 96            [12] 3795 	mov	r7,#___str_10
      003F03 7E 88            [12] 3796 	mov	r6,#(___str_10 >> 8)
      003F05 7D 80            [12] 3797 	mov	r5,#0x80
                                   3798 ;	calc.c:51: return;
      003F07                       3799 00418$:
                                   3800 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003F07 8F 82            [24] 3801 	mov	dpl,r7
      003F09 8E 83            [24] 3802 	mov	dph,r6
      003F0B 8D F0            [24] 3803 	mov	b,r5
      003F0D 12 6F D1         [24] 3804 	lcall	__gptrget
      003F10 FC               [12] 3805 	mov	r4,a
      003F11 70 03            [24] 3806 	jnz	01318$
      003F13 02 56 1B         [24] 3807 	ljmp	00249$
      003F16                       3808 01318$:
      003F16 7B 00            [12] 3809 	mov	r3,#0x00
      003F18 8C 82            [24] 3810 	mov	dpl,r4
      003F1A 8B 83            [24] 3811 	mov	dph,r3
      003F1C 12 2B D5         [24] 3812 	lcall	_putchar
      003F1F 0F               [12] 3813 	inc	r7
                                   3814 ;	calc.c:198: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003F20 BF 00 E4         [24] 3815 	cjne	r7,#0x00,00418$
      003F23 0E               [12] 3816 	inc	r6
      003F24 80 E1            [24] 3817 	sjmp	00418$
      003F26                       3818 00150$:
                                   3819 ;	calc.c:200: if (!stack_pop(ctx->ss, &d1)) {
      003F26 E5 08            [12] 3820 	mov	a,_bp
      003F28 24 19            [12] 3821 	add	a,#0x19
      003F2A FF               [12] 3822 	mov	r7,a
      003F2B 7E 00            [12] 3823 	mov	r6,#0x00
      003F2D 7D 40            [12] 3824 	mov	r5,#0x40
      003F2F E5 08            [12] 3825 	mov	a,_bp
      003F31 24 12            [12] 3826 	add	a,#0x12
      003F33 F8               [12] 3827 	mov	r0,a
      003F34 E5 08            [12] 3828 	mov	a,_bp
      003F36 24 04            [12] 3829 	add	a,#0x04
      003F38 F9               [12] 3830 	mov	r1,a
      003F39 74 16            [12] 3831 	mov	a,#0x16
      003F3B 26               [12] 3832 	add	a,@r0
      003F3C F7               [12] 3833 	mov	@r1,a
      003F3D 74 40            [12] 3834 	mov	a,#0x40
      003F3F 08               [12] 3835 	inc	r0
      003F40 36               [12] 3836 	addc	a,@r0
      003F41 09               [12] 3837 	inc	r1
      003F42 F7               [12] 3838 	mov	@r1,a
      003F43 08               [12] 3839 	inc	r0
      003F44 09               [12] 3840 	inc	r1
      003F45 E6               [12] 3841 	mov	a,@r0
      003F46 F7               [12] 3842 	mov	@r1,a
      003F47 E5 08            [12] 3843 	mov	a,_bp
      003F49 24 04            [12] 3844 	add	a,#0x04
      003F4B F8               [12] 3845 	mov	r0,a
      003F4C 86 82            [24] 3846 	mov	dpl,@r0
      003F4E 08               [12] 3847 	inc	r0
      003F4F 86 83            [24] 3848 	mov	dph,@r0
      003F51 08               [12] 3849 	inc	r0
      003F52 86 F0            [24] 3850 	mov	b,@r0
      003F54 12 6F D1         [24] 3851 	lcall	__gptrget
      003F57 FA               [12] 3852 	mov	r2,a
      003F58 A3               [24] 3853 	inc	dptr
      003F59 12 6F D1         [24] 3854 	lcall	__gptrget
      003F5C FB               [12] 3855 	mov	r3,a
      003F5D A3               [24] 3856 	inc	dptr
      003F5E 12 6F D1         [24] 3857 	lcall	__gptrget
      003F61 FC               [12] 3858 	mov	r4,a
      003F62 C0 07            [24] 3859 	push	ar7
      003F64 C0 06            [24] 3860 	push	ar6
      003F66 C0 05            [24] 3861 	push	ar5
      003F68 8A 82            [24] 3862 	mov	dpl,r2
      003F6A 8B 83            [24] 3863 	mov	dph,r3
      003F6C 8C F0            [24] 3864 	mov	b,r4
      003F6E 12 27 B4         [24] 3865 	lcall	_stack_pop
      003F71 AB 82            [24] 3866 	mov	r3,dpl
      003F73 AC 83            [24] 3867 	mov	r4,dph
      003F75 15 81            [12] 3868 	dec	sp
      003F77 15 81            [12] 3869 	dec	sp
      003F79 15 81            [12] 3870 	dec	sp
      003F7B EB               [12] 3871 	mov	a,r3
      003F7C 4C               [12] 3872 	orl	a,r4
      003F7D 70 63            [24] 3873 	jnz	00147$
                                   3874 ;	calc.c:201: printstr("\r\nsecondary stack underflow\r\n");
      003F7F 7F C7            [12] 3875 	mov	r7,#___str_12
      003F81 7E 88            [12] 3876 	mov	r6,#(___str_12 >> 8)
      003F83 7D 80            [12] 3877 	mov	r5,#0x80
                                   3878 ;	calc.c:51: return;
      003F85                       3879 00421$:
                                   3880 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003F85 8F 82            [24] 3881 	mov	dpl,r7
      003F87 8E 83            [24] 3882 	mov	dph,r6
      003F89 8D F0            [24] 3883 	mov	b,r5
      003F8B 12 6F D1         [24] 3884 	lcall	__gptrget
      003F8E FC               [12] 3885 	mov	r4,a
      003F8F 60 10            [24] 3886 	jz	00299$
      003F91 7B 00            [12] 3887 	mov	r3,#0x00
      003F93 8C 82            [24] 3888 	mov	dpl,r4
      003F95 8B 83            [24] 3889 	mov	dph,r3
      003F97 12 2B D5         [24] 3890 	lcall	_putchar
      003F9A 0F               [12] 3891 	inc	r7
                                   3892 ;	calc.c:201: printstr("\r\nsecondary stack underflow\r\n");
      003F9B BF 00 E7         [24] 3893 	cjne	r7,#0x00,00421$
      003F9E 0E               [12] 3894 	inc	r6
      003F9F 80 E4            [24] 3895 	sjmp	00421$
      003FA1                       3896 00299$:
                                   3897 ;	calc.c:202: (void)stack_push(ctx->ps, d0);
      003FA1 E5 08            [12] 3898 	mov	a,_bp
      003FA3 24 07            [12] 3899 	add	a,#0x07
      003FA5 F8               [12] 3900 	mov	r0,a
      003FA6 86 82            [24] 3901 	mov	dpl,@r0
      003FA8 08               [12] 3902 	inc	r0
      003FA9 86 83            [24] 3903 	mov	dph,@r0
      003FAB 08               [12] 3904 	inc	r0
      003FAC 86 F0            [24] 3905 	mov	b,@r0
      003FAE 12 6F D1         [24] 3906 	lcall	__gptrget
      003FB1 FA               [12] 3907 	mov	r2,a
      003FB2 A3               [24] 3908 	inc	dptr
      003FB3 12 6F D1         [24] 3909 	lcall	__gptrget
      003FB6 FB               [12] 3910 	mov	r3,a
      003FB7 A3               [24] 3911 	inc	dptr
      003FB8 12 6F D1         [24] 3912 	lcall	__gptrget
      003FBB FC               [12] 3913 	mov	r4,a
      003FBC E5 08            [12] 3914 	mov	a,_bp
      003FBE 24 15            [12] 3915 	add	a,#0x15
      003FC0 F8               [12] 3916 	mov	r0,a
      003FC1 E6               [12] 3917 	mov	a,@r0
      003FC2 C0 E0            [24] 3918 	push	acc
      003FC4 08               [12] 3919 	inc	r0
      003FC5 E6               [12] 3920 	mov	a,@r0
      003FC6 C0 E0            [24] 3921 	push	acc
      003FC8 08               [12] 3922 	inc	r0
      003FC9 E6               [12] 3923 	mov	a,@r0
      003FCA C0 E0            [24] 3924 	push	acc
      003FCC 08               [12] 3925 	inc	r0
      003FCD E6               [12] 3926 	mov	a,@r0
      003FCE C0 E0            [24] 3927 	push	acc
      003FD0 8A 82            [24] 3928 	mov	dpl,r2
      003FD2 8B 83            [24] 3929 	mov	dph,r3
      003FD4 8C F0            [24] 3930 	mov	b,r4
      003FD6 12 26 BA         [24] 3931 	lcall	_stack_push
      003FD9 E5 81            [12] 3932 	mov	a,sp
      003FDB 24 FC            [12] 3933 	add	a,#0xfc
      003FDD F5 81            [12] 3934 	mov	sp,a
      003FDF 02 56 1B         [24] 3935 	ljmp	00249$
      003FE2                       3936 00147$:
                                   3937 ;	calc.c:204: (void)stack_push(ctx->ps, d1);
      003FE2 E5 08            [12] 3938 	mov	a,_bp
      003FE4 24 07            [12] 3939 	add	a,#0x07
      003FE6 F8               [12] 3940 	mov	r0,a
      003FE7 86 82            [24] 3941 	mov	dpl,@r0
      003FE9 08               [12] 3942 	inc	r0
      003FEA 86 83            [24] 3943 	mov	dph,@r0
      003FEC 08               [12] 3944 	inc	r0
      003FED 86 F0            [24] 3945 	mov	b,@r0
      003FEF 12 6F D1         [24] 3946 	lcall	__gptrget
      003FF2 FA               [12] 3947 	mov	r2,a
      003FF3 A3               [24] 3948 	inc	dptr
      003FF4 12 6F D1         [24] 3949 	lcall	__gptrget
      003FF7 FB               [12] 3950 	mov	r3,a
      003FF8 A3               [24] 3951 	inc	dptr
      003FF9 12 6F D1         [24] 3952 	lcall	__gptrget
      003FFC FC               [12] 3953 	mov	r4,a
      003FFD E5 08            [12] 3954 	mov	a,_bp
      003FFF 24 19            [12] 3955 	add	a,#0x19
      004001 F8               [12] 3956 	mov	r0,a
      004002 E6               [12] 3957 	mov	a,@r0
      004003 C0 E0            [24] 3958 	push	acc
      004005 08               [12] 3959 	inc	r0
      004006 E6               [12] 3960 	mov	a,@r0
      004007 C0 E0            [24] 3961 	push	acc
      004009 08               [12] 3962 	inc	r0
      00400A E6               [12] 3963 	mov	a,@r0
      00400B C0 E0            [24] 3964 	push	acc
      00400D 08               [12] 3965 	inc	r0
      00400E E6               [12] 3966 	mov	a,@r0
      00400F C0 E0            [24] 3967 	push	acc
      004011 8A 82            [24] 3968 	mov	dpl,r2
      004013 8B 83            [24] 3969 	mov	dph,r3
      004015 8C F0            [24] 3970 	mov	b,r4
      004017 12 26 BA         [24] 3971 	lcall	_stack_push
      00401A E5 81            [12] 3972 	mov	a,sp
      00401C 24 FC            [12] 3973 	add	a,#0xfc
      00401E F5 81            [12] 3974 	mov	sp,a
                                   3975 ;	calc.c:205: (void)stack_push(ctx->ss, d0);
      004020 E5 08            [12] 3976 	mov	a,_bp
      004022 24 04            [12] 3977 	add	a,#0x04
      004024 F8               [12] 3978 	mov	r0,a
      004025 86 82            [24] 3979 	mov	dpl,@r0
      004027 08               [12] 3980 	inc	r0
      004028 86 83            [24] 3981 	mov	dph,@r0
      00402A 08               [12] 3982 	inc	r0
      00402B 86 F0            [24] 3983 	mov	b,@r0
      00402D 12 6F D1         [24] 3984 	lcall	__gptrget
      004030 FA               [12] 3985 	mov	r2,a
      004031 A3               [24] 3986 	inc	dptr
      004032 12 6F D1         [24] 3987 	lcall	__gptrget
      004035 FB               [12] 3988 	mov	r3,a
      004036 A3               [24] 3989 	inc	dptr
      004037 12 6F D1         [24] 3990 	lcall	__gptrget
      00403A FC               [12] 3991 	mov	r4,a
      00403B E5 08            [12] 3992 	mov	a,_bp
      00403D 24 15            [12] 3993 	add	a,#0x15
      00403F F8               [12] 3994 	mov	r0,a
      004040 E6               [12] 3995 	mov	a,@r0
      004041 C0 E0            [24] 3996 	push	acc
      004043 08               [12] 3997 	inc	r0
      004044 E6               [12] 3998 	mov	a,@r0
      004045 C0 E0            [24] 3999 	push	acc
      004047 08               [12] 4000 	inc	r0
      004048 E6               [12] 4001 	mov	a,@r0
      004049 C0 E0            [24] 4002 	push	acc
      00404B 08               [12] 4003 	inc	r0
      00404C E6               [12] 4004 	mov	a,@r0
      00404D C0 E0            [24] 4005 	push	acc
      00404F 8A 82            [24] 4006 	mov	dpl,r2
      004051 8B 83            [24] 4007 	mov	dph,r3
      004053 8C F0            [24] 4008 	mov	b,r4
      004055 12 26 BA         [24] 4009 	lcall	_stack_push
      004058 E5 81            [12] 4010 	mov	a,sp
      00405A 24 FC            [12] 4011 	add	a,#0xfc
      00405C F5 81            [12] 4012 	mov	sp,a
                                   4013 ;	calc.c:208: break;
      00405E 02 56 1B         [24] 4014 	ljmp	00249$
                                   4015 ;	calc.c:209: case 'X':
      004061                       4016 00152$:
                                   4017 ;	calc.c:210: t0 = ctx->ps;
      004061 E5 08            [12] 4018 	mov	a,_bp
      004063 24 12            [12] 4019 	add	a,#0x12
      004065 F8               [12] 4020 	mov	r0,a
      004066 E5 08            [12] 4021 	mov	a,_bp
      004068 24 0B            [12] 4022 	add	a,#0x0b
      00406A F9               [12] 4023 	mov	r1,a
      00406B 74 13            [12] 4024 	mov	a,#0x13
      00406D 26               [12] 4025 	add	a,@r0
      00406E F7               [12] 4026 	mov	@r1,a
      00406F 74 40            [12] 4027 	mov	a,#0x40
      004071 08               [12] 4028 	inc	r0
      004072 36               [12] 4029 	addc	a,@r0
      004073 09               [12] 4030 	inc	r1
      004074 F7               [12] 4031 	mov	@r1,a
      004075 08               [12] 4032 	inc	r0
      004076 09               [12] 4033 	inc	r1
      004077 E6               [12] 4034 	mov	a,@r0
      004078 F7               [12] 4035 	mov	@r1,a
      004079 E5 08            [12] 4036 	mov	a,_bp
      00407B 24 0B            [12] 4037 	add	a,#0x0b
      00407D F8               [12] 4038 	mov	r0,a
      00407E 86 82            [24] 4039 	mov	dpl,@r0
      004080 08               [12] 4040 	inc	r0
      004081 86 83            [24] 4041 	mov	dph,@r0
      004083 08               [12] 4042 	inc	r0
      004084 86 F0            [24] 4043 	mov	b,@r0
      004086 12 6F D1         [24] 4044 	lcall	__gptrget
      004089 FF               [12] 4045 	mov	r7,a
      00408A A3               [24] 4046 	inc	dptr
      00408B 12 6F D1         [24] 4047 	lcall	__gptrget
      00408E FE               [12] 4048 	mov	r6,a
      00408F A3               [24] 4049 	inc	dptr
      004090 12 6F D1         [24] 4050 	lcall	__gptrget
      004093 FD               [12] 4051 	mov	r5,a
                                   4052 ;	calc.c:211: ctx->ps = ctx->ss;
      004094 E5 08            [12] 4053 	mov	a,_bp
      004096 24 12            [12] 4054 	add	a,#0x12
      004098 F8               [12] 4055 	mov	r0,a
      004099 E5 08            [12] 4056 	mov	a,_bp
      00409B 24 07            [12] 4057 	add	a,#0x07
      00409D F9               [12] 4058 	mov	r1,a
      00409E 74 16            [12] 4059 	mov	a,#0x16
      0040A0 26               [12] 4060 	add	a,@r0
      0040A1 F7               [12] 4061 	mov	@r1,a
      0040A2 74 40            [12] 4062 	mov	a,#0x40
      0040A4 08               [12] 4063 	inc	r0
      0040A5 36               [12] 4064 	addc	a,@r0
      0040A6 09               [12] 4065 	inc	r1
      0040A7 F7               [12] 4066 	mov	@r1,a
      0040A8 08               [12] 4067 	inc	r0
      0040A9 09               [12] 4068 	inc	r1
      0040AA E6               [12] 4069 	mov	a,@r0
      0040AB F7               [12] 4070 	mov	@r1,a
      0040AC E5 08            [12] 4071 	mov	a,_bp
      0040AE 24 07            [12] 4072 	add	a,#0x07
      0040B0 F8               [12] 4073 	mov	r0,a
      0040B1 86 82            [24] 4074 	mov	dpl,@r0
      0040B3 08               [12] 4075 	inc	r0
      0040B4 86 83            [24] 4076 	mov	dph,@r0
      0040B6 08               [12] 4077 	inc	r0
      0040B7 86 F0            [24] 4078 	mov	b,@r0
      0040B9 12 6F D1         [24] 4079 	lcall	__gptrget
      0040BC FA               [12] 4080 	mov	r2,a
      0040BD A3               [24] 4081 	inc	dptr
      0040BE 12 6F D1         [24] 4082 	lcall	__gptrget
      0040C1 FB               [12] 4083 	mov	r3,a
      0040C2 A3               [24] 4084 	inc	dptr
      0040C3 12 6F D1         [24] 4085 	lcall	__gptrget
      0040C6 FC               [12] 4086 	mov	r4,a
      0040C7 E5 08            [12] 4087 	mov	a,_bp
      0040C9 24 0B            [12] 4088 	add	a,#0x0b
      0040CB F8               [12] 4089 	mov	r0,a
      0040CC 86 82            [24] 4090 	mov	dpl,@r0
      0040CE 08               [12] 4091 	inc	r0
      0040CF 86 83            [24] 4092 	mov	dph,@r0
      0040D1 08               [12] 4093 	inc	r0
      0040D2 86 F0            [24] 4094 	mov	b,@r0
      0040D4 EA               [12] 4095 	mov	a,r2
      0040D5 12 6B 56         [24] 4096 	lcall	__gptrput
      0040D8 A3               [24] 4097 	inc	dptr
      0040D9 EB               [12] 4098 	mov	a,r3
      0040DA 12 6B 56         [24] 4099 	lcall	__gptrput
      0040DD A3               [24] 4100 	inc	dptr
      0040DE EC               [12] 4101 	mov	a,r4
      0040DF 12 6B 56         [24] 4102 	lcall	__gptrput
                                   4103 ;	calc.c:212: ctx->ss = t0;
      0040E2 E5 08            [12] 4104 	mov	a,_bp
      0040E4 24 07            [12] 4105 	add	a,#0x07
      0040E6 F8               [12] 4106 	mov	r0,a
      0040E7 86 82            [24] 4107 	mov	dpl,@r0
      0040E9 08               [12] 4108 	inc	r0
      0040EA 86 83            [24] 4109 	mov	dph,@r0
      0040EC 08               [12] 4110 	inc	r0
      0040ED 86 F0            [24] 4111 	mov	b,@r0
      0040EF EF               [12] 4112 	mov	a,r7
      0040F0 12 6B 56         [24] 4113 	lcall	__gptrput
      0040F3 A3               [24] 4114 	inc	dptr
      0040F4 EE               [12] 4115 	mov	a,r6
      0040F5 12 6B 56         [24] 4116 	lcall	__gptrput
      0040F8 A3               [24] 4117 	inc	dptr
      0040F9 ED               [12] 4118 	mov	a,r5
      0040FA 12 6B 56         [24] 4119 	lcall	__gptrput
                                   4120 ;	calc.c:213: break;
      0040FD 02 56 1B         [24] 4121 	ljmp	00249$
                                   4122 ;	calc.c:214: case '+':
      004100                       4123 00153$:
                                   4124 ;	calc.c:215: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004100 E5 08            [12] 4125 	mov	a,_bp
      004102 24 15            [12] 4126 	add	a,#0x15
      004104 FF               [12] 4127 	mov	r7,a
      004105 7E 00            [12] 4128 	mov	r6,#0x00
      004107 7D 40            [12] 4129 	mov	r5,#0x40
      004109 E5 08            [12] 4130 	mov	a,_bp
      00410B 24 12            [12] 4131 	add	a,#0x12
      00410D F8               [12] 4132 	mov	r0,a
      00410E E5 08            [12] 4133 	mov	a,_bp
      004110 24 0B            [12] 4134 	add	a,#0x0b
      004112 F9               [12] 4135 	mov	r1,a
      004113 74 13            [12] 4136 	mov	a,#0x13
      004115 26               [12] 4137 	add	a,@r0
      004116 F7               [12] 4138 	mov	@r1,a
      004117 74 40            [12] 4139 	mov	a,#0x40
      004119 08               [12] 4140 	inc	r0
      00411A 36               [12] 4141 	addc	a,@r0
      00411B 09               [12] 4142 	inc	r1
      00411C F7               [12] 4143 	mov	@r1,a
      00411D 08               [12] 4144 	inc	r0
      00411E 09               [12] 4145 	inc	r1
      00411F E6               [12] 4146 	mov	a,@r0
      004120 F7               [12] 4147 	mov	@r1,a
      004121 E5 08            [12] 4148 	mov	a,_bp
      004123 24 0B            [12] 4149 	add	a,#0x0b
      004125 F8               [12] 4150 	mov	r0,a
      004126 86 82            [24] 4151 	mov	dpl,@r0
      004128 08               [12] 4152 	inc	r0
      004129 86 83            [24] 4153 	mov	dph,@r0
      00412B 08               [12] 4154 	inc	r0
      00412C 86 F0            [24] 4155 	mov	b,@r0
      00412E 12 6F D1         [24] 4156 	lcall	__gptrget
      004131 FA               [12] 4157 	mov	r2,a
      004132 A3               [24] 4158 	inc	dptr
      004133 12 6F D1         [24] 4159 	lcall	__gptrget
      004136 FB               [12] 4160 	mov	r3,a
      004137 A3               [24] 4161 	inc	dptr
      004138 12 6F D1         [24] 4162 	lcall	__gptrget
      00413B FC               [12] 4163 	mov	r4,a
      00413C C0 07            [24] 4164 	push	ar7
      00413E C0 06            [24] 4165 	push	ar6
      004140 C0 05            [24] 4166 	push	ar5
      004142 8A 82            [24] 4167 	mov	dpl,r2
      004144 8B 83            [24] 4168 	mov	dph,r3
      004146 8C F0            [24] 4169 	mov	b,r4
      004148 12 27 B4         [24] 4170 	lcall	_stack_pop
      00414B AB 82            [24] 4171 	mov	r3,dpl
      00414D AC 83            [24] 4172 	mov	r4,dph
      00414F 15 81            [12] 4173 	dec	sp
      004151 15 81            [12] 4174 	dec	sp
      004153 15 81            [12] 4175 	dec	sp
      004155 EB               [12] 4176 	mov	a,r3
      004156 4C               [12] 4177 	orl	a,r4
      004157 70 25            [24] 4178 	jnz	00158$
      004159 7F 96            [12] 4179 	mov	r7,#___str_10
      00415B 7E 88            [12] 4180 	mov	r6,#(___str_10 >> 8)
      00415D 7D 80            [12] 4181 	mov	r5,#0x80
                                   4182 ;	calc.c:51: return;
      00415F                       4183 00424$:
                                   4184 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00415F 8F 82            [24] 4185 	mov	dpl,r7
      004161 8E 83            [24] 4186 	mov	dph,r6
      004163 8D F0            [24] 4187 	mov	b,r5
      004165 12 6F D1         [24] 4188 	lcall	__gptrget
      004168 FC               [12] 4189 	mov	r4,a
      004169 70 03            [24] 4190 	jnz	01324$
      00416B 02 56 1B         [24] 4191 	ljmp	00249$
      00416E                       4192 01324$:
      00416E 7B 00            [12] 4193 	mov	r3,#0x00
      004170 8C 82            [24] 4194 	mov	dpl,r4
      004172 8B 83            [24] 4195 	mov	dph,r3
      004174 12 2B D5         [24] 4196 	lcall	_putchar
      004177 0F               [12] 4197 	inc	r7
                                   4198 ;	calc.c:215: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004178 BF 00 E4         [24] 4199 	cjne	r7,#0x00,00424$
      00417B 0E               [12] 4200 	inc	r6
      00417C 80 E1            [24] 4201 	sjmp	00424$
      00417E                       4202 00158$:
                                   4203 ;	calc.c:216: else if (!stack_pop(ctx->ps, &d1)) {
      00417E E5 08            [12] 4204 	mov	a,_bp
      004180 24 19            [12] 4205 	add	a,#0x19
      004182 FF               [12] 4206 	mov	r7,a
      004183 7E 00            [12] 4207 	mov	r6,#0x00
      004185 7D 40            [12] 4208 	mov	r5,#0x40
      004187 E5 08            [12] 4209 	mov	a,_bp
      004189 24 0B            [12] 4210 	add	a,#0x0b
      00418B F8               [12] 4211 	mov	r0,a
      00418C 86 82            [24] 4212 	mov	dpl,@r0
      00418E 08               [12] 4213 	inc	r0
      00418F 86 83            [24] 4214 	mov	dph,@r0
      004191 08               [12] 4215 	inc	r0
      004192 86 F0            [24] 4216 	mov	b,@r0
      004194 12 6F D1         [24] 4217 	lcall	__gptrget
      004197 FA               [12] 4218 	mov	r2,a
      004198 A3               [24] 4219 	inc	dptr
      004199 12 6F D1         [24] 4220 	lcall	__gptrget
      00419C FB               [12] 4221 	mov	r3,a
      00419D A3               [24] 4222 	inc	dptr
      00419E 12 6F D1         [24] 4223 	lcall	__gptrget
      0041A1 FC               [12] 4224 	mov	r4,a
      0041A2 C0 07            [24] 4225 	push	ar7
      0041A4 C0 06            [24] 4226 	push	ar6
      0041A6 C0 05            [24] 4227 	push	ar5
      0041A8 8A 82            [24] 4228 	mov	dpl,r2
      0041AA 8B 83            [24] 4229 	mov	dph,r3
      0041AC 8C F0            [24] 4230 	mov	b,r4
      0041AE 12 27 B4         [24] 4231 	lcall	_stack_pop
      0041B1 AB 82            [24] 4232 	mov	r3,dpl
      0041B3 AC 83            [24] 4233 	mov	r4,dph
      0041B5 15 81            [12] 4234 	dec	sp
      0041B7 15 81            [12] 4235 	dec	sp
      0041B9 15 81            [12] 4236 	dec	sp
      0041BB EB               [12] 4237 	mov	a,r3
      0041BC 4C               [12] 4238 	orl	a,r4
      0041BD 70 63            [24] 4239 	jnz	00155$
                                   4240 ;	calc.c:217: (void)stack_push(ctx->ps, d0);
      0041BF E5 08            [12] 4241 	mov	a,_bp
      0041C1 24 0B            [12] 4242 	add	a,#0x0b
      0041C3 F8               [12] 4243 	mov	r0,a
      0041C4 86 82            [24] 4244 	mov	dpl,@r0
      0041C6 08               [12] 4245 	inc	r0
      0041C7 86 83            [24] 4246 	mov	dph,@r0
      0041C9 08               [12] 4247 	inc	r0
      0041CA 86 F0            [24] 4248 	mov	b,@r0
      0041CC 12 6F D1         [24] 4249 	lcall	__gptrget
      0041CF FA               [12] 4250 	mov	r2,a
      0041D0 A3               [24] 4251 	inc	dptr
      0041D1 12 6F D1         [24] 4252 	lcall	__gptrget
      0041D4 FB               [12] 4253 	mov	r3,a
      0041D5 A3               [24] 4254 	inc	dptr
      0041D6 12 6F D1         [24] 4255 	lcall	__gptrget
      0041D9 FC               [12] 4256 	mov	r4,a
      0041DA E5 08            [12] 4257 	mov	a,_bp
      0041DC 24 15            [12] 4258 	add	a,#0x15
      0041DE F8               [12] 4259 	mov	r0,a
      0041DF E6               [12] 4260 	mov	a,@r0
      0041E0 C0 E0            [24] 4261 	push	acc
      0041E2 08               [12] 4262 	inc	r0
      0041E3 E6               [12] 4263 	mov	a,@r0
      0041E4 C0 E0            [24] 4264 	push	acc
      0041E6 08               [12] 4265 	inc	r0
      0041E7 E6               [12] 4266 	mov	a,@r0
      0041E8 C0 E0            [24] 4267 	push	acc
      0041EA 08               [12] 4268 	inc	r0
      0041EB E6               [12] 4269 	mov	a,@r0
      0041EC C0 E0            [24] 4270 	push	acc
      0041EE 8A 82            [24] 4271 	mov	dpl,r2
      0041F0 8B 83            [24] 4272 	mov	dph,r3
      0041F2 8C F0            [24] 4273 	mov	b,r4
      0041F4 12 26 BA         [24] 4274 	lcall	_stack_push
      0041F7 E5 81            [12] 4275 	mov	a,sp
      0041F9 24 FC            [12] 4276 	add	a,#0xfc
      0041FB F5 81            [12] 4277 	mov	sp,a
                                   4278 ;	calc.c:218: printstr("\r\nstack underflow\r\n");
      0041FD 7F 96            [12] 4279 	mov	r7,#___str_10
      0041FF 7E 88            [12] 4280 	mov	r6,#(___str_10 >> 8)
      004201 7D 80            [12] 4281 	mov	r5,#0x80
                                   4282 ;	calc.c:51: return;
      004203                       4283 00427$:
                                   4284 ;	calc.c:49: for (; *s; s++) putchar(*s);
      004203 8F 82            [24] 4285 	mov	dpl,r7
      004205 8E 83            [24] 4286 	mov	dph,r6
      004207 8D F0            [24] 4287 	mov	b,r5
      004209 12 6F D1         [24] 4288 	lcall	__gptrget
      00420C FC               [12] 4289 	mov	r4,a
      00420D 70 03            [24] 4290 	jnz	01327$
      00420F 02 56 1B         [24] 4291 	ljmp	00249$
      004212                       4292 01327$:
      004212 7B 00            [12] 4293 	mov	r3,#0x00
      004214 8C 82            [24] 4294 	mov	dpl,r4
      004216 8B 83            [24] 4295 	mov	dph,r3
      004218 12 2B D5         [24] 4296 	lcall	_putchar
      00421B 0F               [12] 4297 	inc	r7
                                   4298 ;	calc.c:218: printstr("\r\nstack underflow\r\n");
      00421C BF 00 E4         [24] 4299 	cjne	r7,#0x00,00427$
      00421F 0E               [12] 4300 	inc	r6
      004220 80 E1            [24] 4301 	sjmp	00427$
      004222                       4302 00155$:
                                   4303 ;	calc.c:220: d1 += d0;
      004222 E5 08            [12] 4304 	mov	a,_bp
      004224 24 19            [12] 4305 	add	a,#0x19
      004226 F8               [12] 4306 	mov	r0,a
      004227 E5 08            [12] 4307 	mov	a,_bp
      004229 24 15            [12] 4308 	add	a,#0x15
      00422B F9               [12] 4309 	mov	r1,a
      00422C E7               [12] 4310 	mov	a,@r1
      00422D 26               [12] 4311 	add	a,@r0
      00422E F6               [12] 4312 	mov	@r0,a
      00422F 09               [12] 4313 	inc	r1
      004230 E7               [12] 4314 	mov	a,@r1
      004231 08               [12] 4315 	inc	r0
      004232 36               [12] 4316 	addc	a,@r0
      004233 F6               [12] 4317 	mov	@r0,a
      004234 09               [12] 4318 	inc	r1
      004235 E7               [12] 4319 	mov	a,@r1
      004236 08               [12] 4320 	inc	r0
      004237 36               [12] 4321 	addc	a,@r0
      004238 F6               [12] 4322 	mov	@r0,a
      004239 09               [12] 4323 	inc	r1
      00423A E7               [12] 4324 	mov	a,@r1
      00423B 08               [12] 4325 	inc	r0
      00423C 36               [12] 4326 	addc	a,@r0
      00423D F6               [12] 4327 	mov	@r0,a
                                   4328 ;	calc.c:221: (void)stack_push(ctx->ps, d1);
      00423E E5 08            [12] 4329 	mov	a,_bp
      004240 24 0B            [12] 4330 	add	a,#0x0b
      004242 F8               [12] 4331 	mov	r0,a
      004243 86 82            [24] 4332 	mov	dpl,@r0
      004245 08               [12] 4333 	inc	r0
      004246 86 83            [24] 4334 	mov	dph,@r0
      004248 08               [12] 4335 	inc	r0
      004249 86 F0            [24] 4336 	mov	b,@r0
      00424B 12 6F D1         [24] 4337 	lcall	__gptrget
      00424E FA               [12] 4338 	mov	r2,a
      00424F A3               [24] 4339 	inc	dptr
      004250 12 6F D1         [24] 4340 	lcall	__gptrget
      004253 FB               [12] 4341 	mov	r3,a
      004254 A3               [24] 4342 	inc	dptr
      004255 12 6F D1         [24] 4343 	lcall	__gptrget
      004258 FC               [12] 4344 	mov	r4,a
      004259 E5 08            [12] 4345 	mov	a,_bp
      00425B 24 19            [12] 4346 	add	a,#0x19
      00425D F8               [12] 4347 	mov	r0,a
      00425E E6               [12] 4348 	mov	a,@r0
      00425F C0 E0            [24] 4349 	push	acc
      004261 08               [12] 4350 	inc	r0
      004262 E6               [12] 4351 	mov	a,@r0
      004263 C0 E0            [24] 4352 	push	acc
      004265 08               [12] 4353 	inc	r0
      004266 E6               [12] 4354 	mov	a,@r0
      004267 C0 E0            [24] 4355 	push	acc
      004269 08               [12] 4356 	inc	r0
      00426A E6               [12] 4357 	mov	a,@r0
      00426B C0 E0            [24] 4358 	push	acc
      00426D 8A 82            [24] 4359 	mov	dpl,r2
      00426F 8B 83            [24] 4360 	mov	dph,r3
      004271 8C F0            [24] 4361 	mov	b,r4
      004273 12 26 BA         [24] 4362 	lcall	_stack_push
      004276 E5 81            [12] 4363 	mov	a,sp
      004278 24 FC            [12] 4364 	add	a,#0xfc
      00427A F5 81            [12] 4365 	mov	sp,a
                                   4366 ;	calc.c:223: break;
      00427C 02 56 1B         [24] 4367 	ljmp	00249$
                                   4368 ;	calc.c:224: case '-':
      00427F                       4369 00160$:
                                   4370 ;	calc.c:225: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      00427F E5 08            [12] 4371 	mov	a,_bp
      004281 24 15            [12] 4372 	add	a,#0x15
      004283 FF               [12] 4373 	mov	r7,a
      004284 7E 00            [12] 4374 	mov	r6,#0x00
      004286 7D 40            [12] 4375 	mov	r5,#0x40
      004288 E5 08            [12] 4376 	mov	a,_bp
      00428A 24 12            [12] 4377 	add	a,#0x12
      00428C F8               [12] 4378 	mov	r0,a
      00428D E5 08            [12] 4379 	mov	a,_bp
      00428F 24 0B            [12] 4380 	add	a,#0x0b
      004291 F9               [12] 4381 	mov	r1,a
      004292 74 13            [12] 4382 	mov	a,#0x13
      004294 26               [12] 4383 	add	a,@r0
      004295 F7               [12] 4384 	mov	@r1,a
      004296 74 40            [12] 4385 	mov	a,#0x40
      004298 08               [12] 4386 	inc	r0
      004299 36               [12] 4387 	addc	a,@r0
      00429A 09               [12] 4388 	inc	r1
      00429B F7               [12] 4389 	mov	@r1,a
      00429C 08               [12] 4390 	inc	r0
      00429D 09               [12] 4391 	inc	r1
      00429E E6               [12] 4392 	mov	a,@r0
      00429F F7               [12] 4393 	mov	@r1,a
      0042A0 E5 08            [12] 4394 	mov	a,_bp
      0042A2 24 0B            [12] 4395 	add	a,#0x0b
      0042A4 F8               [12] 4396 	mov	r0,a
      0042A5 86 82            [24] 4397 	mov	dpl,@r0
      0042A7 08               [12] 4398 	inc	r0
      0042A8 86 83            [24] 4399 	mov	dph,@r0
      0042AA 08               [12] 4400 	inc	r0
      0042AB 86 F0            [24] 4401 	mov	b,@r0
      0042AD 12 6F D1         [24] 4402 	lcall	__gptrget
      0042B0 FA               [12] 4403 	mov	r2,a
      0042B1 A3               [24] 4404 	inc	dptr
      0042B2 12 6F D1         [24] 4405 	lcall	__gptrget
      0042B5 FB               [12] 4406 	mov	r3,a
      0042B6 A3               [24] 4407 	inc	dptr
      0042B7 12 6F D1         [24] 4408 	lcall	__gptrget
      0042BA FC               [12] 4409 	mov	r4,a
      0042BB C0 07            [24] 4410 	push	ar7
      0042BD C0 06            [24] 4411 	push	ar6
      0042BF C0 05            [24] 4412 	push	ar5
      0042C1 8A 82            [24] 4413 	mov	dpl,r2
      0042C3 8B 83            [24] 4414 	mov	dph,r3
      0042C5 8C F0            [24] 4415 	mov	b,r4
      0042C7 12 27 B4         [24] 4416 	lcall	_stack_pop
      0042CA AB 82            [24] 4417 	mov	r3,dpl
      0042CC AC 83            [24] 4418 	mov	r4,dph
      0042CE 15 81            [12] 4419 	dec	sp
      0042D0 15 81            [12] 4420 	dec	sp
      0042D2 15 81            [12] 4421 	dec	sp
      0042D4 EB               [12] 4422 	mov	a,r3
      0042D5 4C               [12] 4423 	orl	a,r4
      0042D6 70 25            [24] 4424 	jnz	00165$
      0042D8 7F 96            [12] 4425 	mov	r7,#___str_10
      0042DA 7E 88            [12] 4426 	mov	r6,#(___str_10 >> 8)
      0042DC 7D 80            [12] 4427 	mov	r5,#0x80
                                   4428 ;	calc.c:51: return;
      0042DE                       4429 00430$:
                                   4430 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0042DE 8F 82            [24] 4431 	mov	dpl,r7
      0042E0 8E 83            [24] 4432 	mov	dph,r6
      0042E2 8D F0            [24] 4433 	mov	b,r5
      0042E4 12 6F D1         [24] 4434 	lcall	__gptrget
      0042E7 FC               [12] 4435 	mov	r4,a
      0042E8 70 03            [24] 4436 	jnz	01330$
      0042EA 02 56 1B         [24] 4437 	ljmp	00249$
      0042ED                       4438 01330$:
      0042ED 7B 00            [12] 4439 	mov	r3,#0x00
      0042EF 8C 82            [24] 4440 	mov	dpl,r4
      0042F1 8B 83            [24] 4441 	mov	dph,r3
      0042F3 12 2B D5         [24] 4442 	lcall	_putchar
      0042F6 0F               [12] 4443 	inc	r7
                                   4444 ;	calc.c:225: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0042F7 BF 00 E4         [24] 4445 	cjne	r7,#0x00,00430$
      0042FA 0E               [12] 4446 	inc	r6
      0042FB 80 E1            [24] 4447 	sjmp	00430$
      0042FD                       4448 00165$:
                                   4449 ;	calc.c:226: else if (!stack_pop(ctx->ps, &d1)) {
      0042FD E5 08            [12] 4450 	mov	a,_bp
      0042FF 24 19            [12] 4451 	add	a,#0x19
      004301 FF               [12] 4452 	mov	r7,a
      004302 7E 00            [12] 4453 	mov	r6,#0x00
      004304 7D 40            [12] 4454 	mov	r5,#0x40
      004306 E5 08            [12] 4455 	mov	a,_bp
      004308 24 0B            [12] 4456 	add	a,#0x0b
      00430A F8               [12] 4457 	mov	r0,a
      00430B 86 82            [24] 4458 	mov	dpl,@r0
      00430D 08               [12] 4459 	inc	r0
      00430E 86 83            [24] 4460 	mov	dph,@r0
      004310 08               [12] 4461 	inc	r0
      004311 86 F0            [24] 4462 	mov	b,@r0
      004313 12 6F D1         [24] 4463 	lcall	__gptrget
      004316 FA               [12] 4464 	mov	r2,a
      004317 A3               [24] 4465 	inc	dptr
      004318 12 6F D1         [24] 4466 	lcall	__gptrget
      00431B FB               [12] 4467 	mov	r3,a
      00431C A3               [24] 4468 	inc	dptr
      00431D 12 6F D1         [24] 4469 	lcall	__gptrget
      004320 FC               [12] 4470 	mov	r4,a
      004321 C0 07            [24] 4471 	push	ar7
      004323 C0 06            [24] 4472 	push	ar6
      004325 C0 05            [24] 4473 	push	ar5
      004327 8A 82            [24] 4474 	mov	dpl,r2
      004329 8B 83            [24] 4475 	mov	dph,r3
      00432B 8C F0            [24] 4476 	mov	b,r4
      00432D 12 27 B4         [24] 4477 	lcall	_stack_pop
      004330 AB 82            [24] 4478 	mov	r3,dpl
      004332 AC 83            [24] 4479 	mov	r4,dph
      004334 15 81            [12] 4480 	dec	sp
      004336 15 81            [12] 4481 	dec	sp
      004338 15 81            [12] 4482 	dec	sp
      00433A EB               [12] 4483 	mov	a,r3
      00433B 4C               [12] 4484 	orl	a,r4
      00433C 70 63            [24] 4485 	jnz	00162$
                                   4486 ;	calc.c:227: (void)stack_push(ctx->ps, d0);
      00433E E5 08            [12] 4487 	mov	a,_bp
      004340 24 0B            [12] 4488 	add	a,#0x0b
      004342 F8               [12] 4489 	mov	r0,a
      004343 86 82            [24] 4490 	mov	dpl,@r0
      004345 08               [12] 4491 	inc	r0
      004346 86 83            [24] 4492 	mov	dph,@r0
      004348 08               [12] 4493 	inc	r0
      004349 86 F0            [24] 4494 	mov	b,@r0
      00434B 12 6F D1         [24] 4495 	lcall	__gptrget
      00434E FA               [12] 4496 	mov	r2,a
      00434F A3               [24] 4497 	inc	dptr
      004350 12 6F D1         [24] 4498 	lcall	__gptrget
      004353 FB               [12] 4499 	mov	r3,a
      004354 A3               [24] 4500 	inc	dptr
      004355 12 6F D1         [24] 4501 	lcall	__gptrget
      004358 FC               [12] 4502 	mov	r4,a
      004359 E5 08            [12] 4503 	mov	a,_bp
      00435B 24 15            [12] 4504 	add	a,#0x15
      00435D F8               [12] 4505 	mov	r0,a
      00435E E6               [12] 4506 	mov	a,@r0
      00435F C0 E0            [24] 4507 	push	acc
      004361 08               [12] 4508 	inc	r0
      004362 E6               [12] 4509 	mov	a,@r0
      004363 C0 E0            [24] 4510 	push	acc
      004365 08               [12] 4511 	inc	r0
      004366 E6               [12] 4512 	mov	a,@r0
      004367 C0 E0            [24] 4513 	push	acc
      004369 08               [12] 4514 	inc	r0
      00436A E6               [12] 4515 	mov	a,@r0
      00436B C0 E0            [24] 4516 	push	acc
      00436D 8A 82            [24] 4517 	mov	dpl,r2
      00436F 8B 83            [24] 4518 	mov	dph,r3
      004371 8C F0            [24] 4519 	mov	b,r4
      004373 12 26 BA         [24] 4520 	lcall	_stack_push
      004376 E5 81            [12] 4521 	mov	a,sp
      004378 24 FC            [12] 4522 	add	a,#0xfc
      00437A F5 81            [12] 4523 	mov	sp,a
                                   4524 ;	calc.c:228: printstr("\r\nstack underflow\r\n");
      00437C 7F 96            [12] 4525 	mov	r7,#___str_10
      00437E 7E 88            [12] 4526 	mov	r6,#(___str_10 >> 8)
      004380 7D 80            [12] 4527 	mov	r5,#0x80
                                   4528 ;	calc.c:51: return;
      004382                       4529 00433$:
                                   4530 ;	calc.c:49: for (; *s; s++) putchar(*s);
      004382 8F 82            [24] 4531 	mov	dpl,r7
      004384 8E 83            [24] 4532 	mov	dph,r6
      004386 8D F0            [24] 4533 	mov	b,r5
      004388 12 6F D1         [24] 4534 	lcall	__gptrget
      00438B FC               [12] 4535 	mov	r4,a
      00438C 70 03            [24] 4536 	jnz	01333$
      00438E 02 56 1B         [24] 4537 	ljmp	00249$
      004391                       4538 01333$:
      004391 7B 00            [12] 4539 	mov	r3,#0x00
      004393 8C 82            [24] 4540 	mov	dpl,r4
      004395 8B 83            [24] 4541 	mov	dph,r3
      004397 12 2B D5         [24] 4542 	lcall	_putchar
      00439A 0F               [12] 4543 	inc	r7
                                   4544 ;	calc.c:228: printstr("\r\nstack underflow\r\n");
      00439B BF 00 E4         [24] 4545 	cjne	r7,#0x00,00433$
      00439E 0E               [12] 4546 	inc	r6
      00439F 80 E1            [24] 4547 	sjmp	00433$
      0043A1                       4548 00162$:
                                   4549 ;	calc.c:230: d1 -= d0;
      0043A1 E5 08            [12] 4550 	mov	a,_bp
      0043A3 24 19            [12] 4551 	add	a,#0x19
      0043A5 F8               [12] 4552 	mov	r0,a
      0043A6 E5 08            [12] 4553 	mov	a,_bp
      0043A8 24 15            [12] 4554 	add	a,#0x15
      0043AA F9               [12] 4555 	mov	r1,a
      0043AB E6               [12] 4556 	mov	a,@r0
      0043AC C3               [12] 4557 	clr	c
      0043AD 97               [12] 4558 	subb	a,@r1
      0043AE F6               [12] 4559 	mov	@r0,a
      0043AF 08               [12] 4560 	inc	r0
      0043B0 E6               [12] 4561 	mov	a,@r0
      0043B1 09               [12] 4562 	inc	r1
      0043B2 97               [12] 4563 	subb	a,@r1
      0043B3 F6               [12] 4564 	mov	@r0,a
      0043B4 08               [12] 4565 	inc	r0
      0043B5 E6               [12] 4566 	mov	a,@r0
      0043B6 09               [12] 4567 	inc	r1
      0043B7 97               [12] 4568 	subb	a,@r1
      0043B8 F6               [12] 4569 	mov	@r0,a
      0043B9 08               [12] 4570 	inc	r0
      0043BA E6               [12] 4571 	mov	a,@r0
      0043BB 09               [12] 4572 	inc	r1
      0043BC 97               [12] 4573 	subb	a,@r1
      0043BD F6               [12] 4574 	mov	@r0,a
                                   4575 ;	calc.c:231: (void)stack_push(ctx->ps, d1);
      0043BE E5 08            [12] 4576 	mov	a,_bp
      0043C0 24 0B            [12] 4577 	add	a,#0x0b
      0043C2 F8               [12] 4578 	mov	r0,a
      0043C3 86 82            [24] 4579 	mov	dpl,@r0
      0043C5 08               [12] 4580 	inc	r0
      0043C6 86 83            [24] 4581 	mov	dph,@r0
      0043C8 08               [12] 4582 	inc	r0
      0043C9 86 F0            [24] 4583 	mov	b,@r0
      0043CB 12 6F D1         [24] 4584 	lcall	__gptrget
      0043CE FA               [12] 4585 	mov	r2,a
      0043CF A3               [24] 4586 	inc	dptr
      0043D0 12 6F D1         [24] 4587 	lcall	__gptrget
      0043D3 FB               [12] 4588 	mov	r3,a
      0043D4 A3               [24] 4589 	inc	dptr
      0043D5 12 6F D1         [24] 4590 	lcall	__gptrget
      0043D8 FC               [12] 4591 	mov	r4,a
      0043D9 E5 08            [12] 4592 	mov	a,_bp
      0043DB 24 19            [12] 4593 	add	a,#0x19
      0043DD F8               [12] 4594 	mov	r0,a
      0043DE E6               [12] 4595 	mov	a,@r0
      0043DF C0 E0            [24] 4596 	push	acc
      0043E1 08               [12] 4597 	inc	r0
      0043E2 E6               [12] 4598 	mov	a,@r0
      0043E3 C0 E0            [24] 4599 	push	acc
      0043E5 08               [12] 4600 	inc	r0
      0043E6 E6               [12] 4601 	mov	a,@r0
      0043E7 C0 E0            [24] 4602 	push	acc
      0043E9 08               [12] 4603 	inc	r0
      0043EA E6               [12] 4604 	mov	a,@r0
      0043EB C0 E0            [24] 4605 	push	acc
      0043ED 8A 82            [24] 4606 	mov	dpl,r2
      0043EF 8B 83            [24] 4607 	mov	dph,r3
      0043F1 8C F0            [24] 4608 	mov	b,r4
      0043F3 12 26 BA         [24] 4609 	lcall	_stack_push
      0043F6 E5 81            [12] 4610 	mov	a,sp
      0043F8 24 FC            [12] 4611 	add	a,#0xfc
      0043FA F5 81            [12] 4612 	mov	sp,a
                                   4613 ;	calc.c:233: break;
      0043FC 02 56 1B         [24] 4614 	ljmp	00249$
                                   4615 ;	calc.c:234: case '*':
      0043FF                       4616 00167$:
                                   4617 ;	calc.c:235: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0043FF E5 08            [12] 4618 	mov	a,_bp
      004401 24 15            [12] 4619 	add	a,#0x15
      004403 FF               [12] 4620 	mov	r7,a
      004404 7E 00            [12] 4621 	mov	r6,#0x00
      004406 7D 40            [12] 4622 	mov	r5,#0x40
      004408 E5 08            [12] 4623 	mov	a,_bp
      00440A 24 12            [12] 4624 	add	a,#0x12
      00440C F8               [12] 4625 	mov	r0,a
      00440D E5 08            [12] 4626 	mov	a,_bp
      00440F 24 0B            [12] 4627 	add	a,#0x0b
      004411 F9               [12] 4628 	mov	r1,a
      004412 74 13            [12] 4629 	mov	a,#0x13
      004414 26               [12] 4630 	add	a,@r0
      004415 F7               [12] 4631 	mov	@r1,a
      004416 74 40            [12] 4632 	mov	a,#0x40
      004418 08               [12] 4633 	inc	r0
      004419 36               [12] 4634 	addc	a,@r0
      00441A 09               [12] 4635 	inc	r1
      00441B F7               [12] 4636 	mov	@r1,a
      00441C 08               [12] 4637 	inc	r0
      00441D 09               [12] 4638 	inc	r1
      00441E E6               [12] 4639 	mov	a,@r0
      00441F F7               [12] 4640 	mov	@r1,a
      004420 E5 08            [12] 4641 	mov	a,_bp
      004422 24 0B            [12] 4642 	add	a,#0x0b
      004424 F8               [12] 4643 	mov	r0,a
      004425 86 82            [24] 4644 	mov	dpl,@r0
      004427 08               [12] 4645 	inc	r0
      004428 86 83            [24] 4646 	mov	dph,@r0
      00442A 08               [12] 4647 	inc	r0
      00442B 86 F0            [24] 4648 	mov	b,@r0
      00442D 12 6F D1         [24] 4649 	lcall	__gptrget
      004430 FA               [12] 4650 	mov	r2,a
      004431 A3               [24] 4651 	inc	dptr
      004432 12 6F D1         [24] 4652 	lcall	__gptrget
      004435 FB               [12] 4653 	mov	r3,a
      004436 A3               [24] 4654 	inc	dptr
      004437 12 6F D1         [24] 4655 	lcall	__gptrget
      00443A FC               [12] 4656 	mov	r4,a
      00443B C0 07            [24] 4657 	push	ar7
      00443D C0 06            [24] 4658 	push	ar6
      00443F C0 05            [24] 4659 	push	ar5
      004441 8A 82            [24] 4660 	mov	dpl,r2
      004443 8B 83            [24] 4661 	mov	dph,r3
      004445 8C F0            [24] 4662 	mov	b,r4
      004447 12 27 B4         [24] 4663 	lcall	_stack_pop
      00444A AB 82            [24] 4664 	mov	r3,dpl
      00444C AC 83            [24] 4665 	mov	r4,dph
      00444E 15 81            [12] 4666 	dec	sp
      004450 15 81            [12] 4667 	dec	sp
      004452 15 81            [12] 4668 	dec	sp
      004454 EB               [12] 4669 	mov	a,r3
      004455 4C               [12] 4670 	orl	a,r4
      004456 70 25            [24] 4671 	jnz	00172$
      004458 7F 96            [12] 4672 	mov	r7,#___str_10
      00445A 7E 88            [12] 4673 	mov	r6,#(___str_10 >> 8)
      00445C 7D 80            [12] 4674 	mov	r5,#0x80
                                   4675 ;	calc.c:51: return;
      00445E                       4676 00436$:
                                   4677 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00445E 8F 82            [24] 4678 	mov	dpl,r7
      004460 8E 83            [24] 4679 	mov	dph,r6
      004462 8D F0            [24] 4680 	mov	b,r5
      004464 12 6F D1         [24] 4681 	lcall	__gptrget
      004467 FC               [12] 4682 	mov	r4,a
      004468 70 03            [24] 4683 	jnz	01336$
      00446A 02 56 1B         [24] 4684 	ljmp	00249$
      00446D                       4685 01336$:
      00446D 7B 00            [12] 4686 	mov	r3,#0x00
      00446F 8C 82            [24] 4687 	mov	dpl,r4
      004471 8B 83            [24] 4688 	mov	dph,r3
      004473 12 2B D5         [24] 4689 	lcall	_putchar
      004476 0F               [12] 4690 	inc	r7
                                   4691 ;	calc.c:235: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004477 BF 00 E4         [24] 4692 	cjne	r7,#0x00,00436$
      00447A 0E               [12] 4693 	inc	r6
      00447B 80 E1            [24] 4694 	sjmp	00436$
      00447D                       4695 00172$:
                                   4696 ;	calc.c:236: else if (!stack_pop(ctx->ps, &d1)) {
      00447D E5 08            [12] 4697 	mov	a,_bp
      00447F 24 19            [12] 4698 	add	a,#0x19
      004481 FF               [12] 4699 	mov	r7,a
      004482 7E 00            [12] 4700 	mov	r6,#0x00
      004484 7D 40            [12] 4701 	mov	r5,#0x40
      004486 E5 08            [12] 4702 	mov	a,_bp
      004488 24 0B            [12] 4703 	add	a,#0x0b
      00448A F8               [12] 4704 	mov	r0,a
      00448B 86 82            [24] 4705 	mov	dpl,@r0
      00448D 08               [12] 4706 	inc	r0
      00448E 86 83            [24] 4707 	mov	dph,@r0
      004490 08               [12] 4708 	inc	r0
      004491 86 F0            [24] 4709 	mov	b,@r0
      004493 12 6F D1         [24] 4710 	lcall	__gptrget
      004496 FA               [12] 4711 	mov	r2,a
      004497 A3               [24] 4712 	inc	dptr
      004498 12 6F D1         [24] 4713 	lcall	__gptrget
      00449B FB               [12] 4714 	mov	r3,a
      00449C A3               [24] 4715 	inc	dptr
      00449D 12 6F D1         [24] 4716 	lcall	__gptrget
      0044A0 FC               [12] 4717 	mov	r4,a
      0044A1 C0 07            [24] 4718 	push	ar7
      0044A3 C0 06            [24] 4719 	push	ar6
      0044A5 C0 05            [24] 4720 	push	ar5
      0044A7 8A 82            [24] 4721 	mov	dpl,r2
      0044A9 8B 83            [24] 4722 	mov	dph,r3
      0044AB 8C F0            [24] 4723 	mov	b,r4
      0044AD 12 27 B4         [24] 4724 	lcall	_stack_pop
      0044B0 AB 82            [24] 4725 	mov	r3,dpl
      0044B2 AC 83            [24] 4726 	mov	r4,dph
      0044B4 15 81            [12] 4727 	dec	sp
      0044B6 15 81            [12] 4728 	dec	sp
      0044B8 15 81            [12] 4729 	dec	sp
      0044BA EB               [12] 4730 	mov	a,r3
      0044BB 4C               [12] 4731 	orl	a,r4
      0044BC 70 63            [24] 4732 	jnz	00169$
                                   4733 ;	calc.c:237: (void)stack_push(ctx->ps, d0);
      0044BE E5 08            [12] 4734 	mov	a,_bp
      0044C0 24 0B            [12] 4735 	add	a,#0x0b
      0044C2 F8               [12] 4736 	mov	r0,a
      0044C3 86 82            [24] 4737 	mov	dpl,@r0
      0044C5 08               [12] 4738 	inc	r0
      0044C6 86 83            [24] 4739 	mov	dph,@r0
      0044C8 08               [12] 4740 	inc	r0
      0044C9 86 F0            [24] 4741 	mov	b,@r0
      0044CB 12 6F D1         [24] 4742 	lcall	__gptrget
      0044CE FA               [12] 4743 	mov	r2,a
      0044CF A3               [24] 4744 	inc	dptr
      0044D0 12 6F D1         [24] 4745 	lcall	__gptrget
      0044D3 FB               [12] 4746 	mov	r3,a
      0044D4 A3               [24] 4747 	inc	dptr
      0044D5 12 6F D1         [24] 4748 	lcall	__gptrget
      0044D8 FC               [12] 4749 	mov	r4,a
      0044D9 E5 08            [12] 4750 	mov	a,_bp
      0044DB 24 15            [12] 4751 	add	a,#0x15
      0044DD F8               [12] 4752 	mov	r0,a
      0044DE E6               [12] 4753 	mov	a,@r0
      0044DF C0 E0            [24] 4754 	push	acc
      0044E1 08               [12] 4755 	inc	r0
      0044E2 E6               [12] 4756 	mov	a,@r0
      0044E3 C0 E0            [24] 4757 	push	acc
      0044E5 08               [12] 4758 	inc	r0
      0044E6 E6               [12] 4759 	mov	a,@r0
      0044E7 C0 E0            [24] 4760 	push	acc
      0044E9 08               [12] 4761 	inc	r0
      0044EA E6               [12] 4762 	mov	a,@r0
      0044EB C0 E0            [24] 4763 	push	acc
      0044ED 8A 82            [24] 4764 	mov	dpl,r2
      0044EF 8B 83            [24] 4765 	mov	dph,r3
      0044F1 8C F0            [24] 4766 	mov	b,r4
      0044F3 12 26 BA         [24] 4767 	lcall	_stack_push
      0044F6 E5 81            [12] 4768 	mov	a,sp
      0044F8 24 FC            [12] 4769 	add	a,#0xfc
      0044FA F5 81            [12] 4770 	mov	sp,a
                                   4771 ;	calc.c:238: printstr("\r\nstack underflow\r\n");
      0044FC 7F 96            [12] 4772 	mov	r7,#___str_10
      0044FE 7E 88            [12] 4773 	mov	r6,#(___str_10 >> 8)
      004500 7D 80            [12] 4774 	mov	r5,#0x80
                                   4775 ;	calc.c:51: return;
      004502                       4776 00439$:
                                   4777 ;	calc.c:49: for (; *s; s++) putchar(*s);
      004502 8F 82            [24] 4778 	mov	dpl,r7
      004504 8E 83            [24] 4779 	mov	dph,r6
      004506 8D F0            [24] 4780 	mov	b,r5
      004508 12 6F D1         [24] 4781 	lcall	__gptrget
      00450B FC               [12] 4782 	mov	r4,a
      00450C 70 03            [24] 4783 	jnz	01339$
      00450E 02 56 1B         [24] 4784 	ljmp	00249$
      004511                       4785 01339$:
      004511 7B 00            [12] 4786 	mov	r3,#0x00
      004513 8C 82            [24] 4787 	mov	dpl,r4
      004515 8B 83            [24] 4788 	mov	dph,r3
      004517 12 2B D5         [24] 4789 	lcall	_putchar
      00451A 0F               [12] 4790 	inc	r7
                                   4791 ;	calc.c:238: printstr("\r\nstack underflow\r\n");
      00451B BF 00 E4         [24] 4792 	cjne	r7,#0x00,00439$
      00451E 0E               [12] 4793 	inc	r6
      00451F 80 E1            [24] 4794 	sjmp	00439$
      004521                       4795 00169$:
                                   4796 ;	calc.c:240: d1 *= d0;
      004521 E5 08            [12] 4797 	mov	a,_bp
      004523 24 15            [12] 4798 	add	a,#0x15
      004525 F8               [12] 4799 	mov	r0,a
      004526 E6               [12] 4800 	mov	a,@r0
      004527 C0 E0            [24] 4801 	push	acc
      004529 08               [12] 4802 	inc	r0
      00452A E6               [12] 4803 	mov	a,@r0
      00452B C0 E0            [24] 4804 	push	acc
      00452D 08               [12] 4805 	inc	r0
      00452E E6               [12] 4806 	mov	a,@r0
      00452F C0 E0            [24] 4807 	push	acc
      004531 08               [12] 4808 	inc	r0
      004532 E6               [12] 4809 	mov	a,@r0
      004533 C0 E0            [24] 4810 	push	acc
      004535 E5 08            [12] 4811 	mov	a,_bp
      004537 24 19            [12] 4812 	add	a,#0x19
      004539 F8               [12] 4813 	mov	r0,a
      00453A 86 82            [24] 4814 	mov	dpl,@r0
      00453C 08               [12] 4815 	inc	r0
      00453D 86 83            [24] 4816 	mov	dph,@r0
      00453F 08               [12] 4817 	inc	r0
      004540 86 F0            [24] 4818 	mov	b,@r0
      004542 08               [12] 4819 	inc	r0
      004543 E6               [12] 4820 	mov	a,@r0
      004544 12 73 CA         [24] 4821 	lcall	__mullong
      004547 AF 82            [24] 4822 	mov	r7,dpl
      004549 AE 83            [24] 4823 	mov	r6,dph
      00454B AD F0            [24] 4824 	mov	r5,b
      00454D FC               [12] 4825 	mov	r4,a
      00454E E5 81            [12] 4826 	mov	a,sp
      004550 24 FC            [12] 4827 	add	a,#0xfc
      004552 F5 81            [12] 4828 	mov	sp,a
      004554 E5 08            [12] 4829 	mov	a,_bp
      004556 24 19            [12] 4830 	add	a,#0x19
      004558 F8               [12] 4831 	mov	r0,a
      004559 A6 07            [24] 4832 	mov	@r0,ar7
      00455B 08               [12] 4833 	inc	r0
      00455C A6 06            [24] 4834 	mov	@r0,ar6
      00455E 08               [12] 4835 	inc	r0
      00455F A6 05            [24] 4836 	mov	@r0,ar5
      004561 08               [12] 4837 	inc	r0
      004562 A6 04            [24] 4838 	mov	@r0,ar4
                                   4839 ;	calc.c:241: (void)stack_push(ctx->ps, d1);
      004564 E5 08            [12] 4840 	mov	a,_bp
      004566 24 0B            [12] 4841 	add	a,#0x0b
      004568 F8               [12] 4842 	mov	r0,a
      004569 86 82            [24] 4843 	mov	dpl,@r0
      00456B 08               [12] 4844 	inc	r0
      00456C 86 83            [24] 4845 	mov	dph,@r0
      00456E 08               [12] 4846 	inc	r0
      00456F 86 F0            [24] 4847 	mov	b,@r0
      004571 12 6F D1         [24] 4848 	lcall	__gptrget
      004574 FA               [12] 4849 	mov	r2,a
      004575 A3               [24] 4850 	inc	dptr
      004576 12 6F D1         [24] 4851 	lcall	__gptrget
      004579 FB               [12] 4852 	mov	r3,a
      00457A A3               [24] 4853 	inc	dptr
      00457B 12 6F D1         [24] 4854 	lcall	__gptrget
      00457E FC               [12] 4855 	mov	r4,a
      00457F E5 08            [12] 4856 	mov	a,_bp
      004581 24 19            [12] 4857 	add	a,#0x19
      004583 F8               [12] 4858 	mov	r0,a
      004584 E6               [12] 4859 	mov	a,@r0
      004585 C0 E0            [24] 4860 	push	acc
      004587 08               [12] 4861 	inc	r0
      004588 E6               [12] 4862 	mov	a,@r0
      004589 C0 E0            [24] 4863 	push	acc
      00458B 08               [12] 4864 	inc	r0
      00458C E6               [12] 4865 	mov	a,@r0
      00458D C0 E0            [24] 4866 	push	acc
      00458F 08               [12] 4867 	inc	r0
      004590 E6               [12] 4868 	mov	a,@r0
      004591 C0 E0            [24] 4869 	push	acc
      004593 8A 82            [24] 4870 	mov	dpl,r2
      004595 8B 83            [24] 4871 	mov	dph,r3
      004597 8C F0            [24] 4872 	mov	b,r4
      004599 12 26 BA         [24] 4873 	lcall	_stack_push
      00459C E5 81            [12] 4874 	mov	a,sp
      00459E 24 FC            [12] 4875 	add	a,#0xfc
      0045A0 F5 81            [12] 4876 	mov	sp,a
                                   4877 ;	calc.c:243: break;
      0045A2 02 56 1B         [24] 4878 	ljmp	00249$
                                   4879 ;	calc.c:245: case '\\':
      0045A5                       4880 00175$:
                                   4881 ;	calc.c:246: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0045A5 C0 05            [24] 4882 	push	ar5
      0045A7 C0 06            [24] 4883 	push	ar6
      0045A9 C0 07            [24] 4884 	push	ar7
      0045AB E5 08            [12] 4885 	mov	a,_bp
      0045AD 24 15            [12] 4886 	add	a,#0x15
      0045AF FC               [12] 4887 	mov	r4,a
      0045B0 7B 00            [12] 4888 	mov	r3,#0x00
      0045B2 7A 40            [12] 4889 	mov	r2,#0x40
      0045B4 E5 08            [12] 4890 	mov	a,_bp
      0045B6 24 12            [12] 4891 	add	a,#0x12
      0045B8 F8               [12] 4892 	mov	r0,a
      0045B9 E5 08            [12] 4893 	mov	a,_bp
      0045BB 24 0B            [12] 4894 	add	a,#0x0b
      0045BD F9               [12] 4895 	mov	r1,a
      0045BE 74 13            [12] 4896 	mov	a,#0x13
      0045C0 26               [12] 4897 	add	a,@r0
      0045C1 F7               [12] 4898 	mov	@r1,a
      0045C2 74 40            [12] 4899 	mov	a,#0x40
      0045C4 08               [12] 4900 	inc	r0
      0045C5 36               [12] 4901 	addc	a,@r0
      0045C6 09               [12] 4902 	inc	r1
      0045C7 F7               [12] 4903 	mov	@r1,a
      0045C8 08               [12] 4904 	inc	r0
      0045C9 09               [12] 4905 	inc	r1
      0045CA E6               [12] 4906 	mov	a,@r0
      0045CB F7               [12] 4907 	mov	@r1,a
      0045CC E5 08            [12] 4908 	mov	a,_bp
      0045CE 24 0B            [12] 4909 	add	a,#0x0b
      0045D0 F8               [12] 4910 	mov	r0,a
      0045D1 86 82            [24] 4911 	mov	dpl,@r0
      0045D3 08               [12] 4912 	inc	r0
      0045D4 86 83            [24] 4913 	mov	dph,@r0
      0045D6 08               [12] 4914 	inc	r0
      0045D7 86 F0            [24] 4915 	mov	b,@r0
      0045D9 12 6F D1         [24] 4916 	lcall	__gptrget
      0045DC FD               [12] 4917 	mov	r5,a
      0045DD A3               [24] 4918 	inc	dptr
      0045DE 12 6F D1         [24] 4919 	lcall	__gptrget
      0045E1 FE               [12] 4920 	mov	r6,a
      0045E2 A3               [24] 4921 	inc	dptr
      0045E3 12 6F D1         [24] 4922 	lcall	__gptrget
      0045E6 FF               [12] 4923 	mov	r7,a
      0045E7 C0 05            [24] 4924 	push	ar5
      0045E9 C0 04            [24] 4925 	push	ar4
      0045EB C0 03            [24] 4926 	push	ar3
      0045ED C0 02            [24] 4927 	push	ar2
      0045EF 8D 82            [24] 4928 	mov	dpl,r5
      0045F1 8E 83            [24] 4929 	mov	dph,r6
      0045F3 8F F0            [24] 4930 	mov	b,r7
      0045F5 12 27 B4         [24] 4931 	lcall	_stack_pop
      0045F8 AE 82            [24] 4932 	mov	r6,dpl
      0045FA AF 83            [24] 4933 	mov	r7,dph
      0045FC 15 81            [12] 4934 	dec	sp
      0045FE 15 81            [12] 4935 	dec	sp
      004600 15 81            [12] 4936 	dec	sp
      004602 D0 05            [24] 4937 	pop	ar5
      004604 EE               [12] 4938 	mov	a,r6
      004605 4F               [12] 4939 	orl	a,r7
      004606 D0 07            [24] 4940 	pop	ar7
      004608 D0 06            [24] 4941 	pop	ar6
      00460A D0 05            [24] 4942 	pop	ar5
      00460C 70 25            [24] 4943 	jnz	00186$
      00460E 7F 96            [12] 4944 	mov	r7,#___str_10
      004610 7E 88            [12] 4945 	mov	r6,#(___str_10 >> 8)
      004612 7D 80            [12] 4946 	mov	r5,#0x80
                                   4947 ;	calc.c:51: return;
      004614                       4948 00442$:
                                   4949 ;	calc.c:49: for (; *s; s++) putchar(*s);
      004614 8F 82            [24] 4950 	mov	dpl,r7
      004616 8E 83            [24] 4951 	mov	dph,r6
      004618 8D F0            [24] 4952 	mov	b,r5
      00461A 12 6F D1         [24] 4953 	lcall	__gptrget
      00461D FC               [12] 4954 	mov	r4,a
      00461E 70 03            [24] 4955 	jnz	01342$
      004620 02 56 1B         [24] 4956 	ljmp	00249$
      004623                       4957 01342$:
      004623 7B 00            [12] 4958 	mov	r3,#0x00
      004625 8C 82            [24] 4959 	mov	dpl,r4
      004627 8B 83            [24] 4960 	mov	dph,r3
      004629 12 2B D5         [24] 4961 	lcall	_putchar
      00462C 0F               [12] 4962 	inc	r7
                                   4963 ;	calc.c:246: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      00462D BF 00 E4         [24] 4964 	cjne	r7,#0x00,00442$
      004630 0E               [12] 4965 	inc	r6
      004631 80 E1            [24] 4966 	sjmp	00442$
      004633                       4967 00186$:
                                   4968 ;	calc.c:247: else if (!stack_pop(ctx->ps, &d1)) {
      004633 C0 05            [24] 4969 	push	ar5
      004635 C0 06            [24] 4970 	push	ar6
      004637 C0 07            [24] 4971 	push	ar7
      004639 E5 08            [12] 4972 	mov	a,_bp
      00463B 24 19            [12] 4973 	add	a,#0x19
      00463D FC               [12] 4974 	mov	r4,a
      00463E 7B 00            [12] 4975 	mov	r3,#0x00
      004640 7A 40            [12] 4976 	mov	r2,#0x40
      004642 E5 08            [12] 4977 	mov	a,_bp
      004644 24 0B            [12] 4978 	add	a,#0x0b
      004646 F8               [12] 4979 	mov	r0,a
      004647 86 82            [24] 4980 	mov	dpl,@r0
      004649 08               [12] 4981 	inc	r0
      00464A 86 83            [24] 4982 	mov	dph,@r0
      00464C 08               [12] 4983 	inc	r0
      00464D 86 F0            [24] 4984 	mov	b,@r0
      00464F 12 6F D1         [24] 4985 	lcall	__gptrget
      004652 FD               [12] 4986 	mov	r5,a
      004653 A3               [24] 4987 	inc	dptr
      004654 12 6F D1         [24] 4988 	lcall	__gptrget
      004657 FE               [12] 4989 	mov	r6,a
      004658 A3               [24] 4990 	inc	dptr
      004659 12 6F D1         [24] 4991 	lcall	__gptrget
      00465C FF               [12] 4992 	mov	r7,a
      00465D C0 05            [24] 4993 	push	ar5
      00465F C0 04            [24] 4994 	push	ar4
      004661 C0 03            [24] 4995 	push	ar3
      004663 C0 02            [24] 4996 	push	ar2
      004665 8D 82            [24] 4997 	mov	dpl,r5
      004667 8E 83            [24] 4998 	mov	dph,r6
      004669 8F F0            [24] 4999 	mov	b,r7
      00466B 12 27 B4         [24] 5000 	lcall	_stack_pop
      00466E AE 82            [24] 5001 	mov	r6,dpl
      004670 AF 83            [24] 5002 	mov	r7,dph
      004672 15 81            [12] 5003 	dec	sp
      004674 15 81            [12] 5004 	dec	sp
      004676 15 81            [12] 5005 	dec	sp
      004678 D0 05            [24] 5006 	pop	ar5
      00467A EE               [12] 5007 	mov	a,r6
      00467B 4F               [12] 5008 	orl	a,r7
      00467C D0 07            [24] 5009 	pop	ar7
      00467E D0 06            [24] 5010 	pop	ar6
      004680 D0 05            [24] 5011 	pop	ar5
      004682 70 63            [24] 5012 	jnz	00183$
                                   5013 ;	calc.c:248: (void)stack_push(ctx->ps, d0);
      004684 E5 08            [12] 5014 	mov	a,_bp
      004686 24 0B            [12] 5015 	add	a,#0x0b
      004688 F8               [12] 5016 	mov	r0,a
      004689 86 82            [24] 5017 	mov	dpl,@r0
      00468B 08               [12] 5018 	inc	r0
      00468C 86 83            [24] 5019 	mov	dph,@r0
      00468E 08               [12] 5020 	inc	r0
      00468F 86 F0            [24] 5021 	mov	b,@r0
      004691 12 6F D1         [24] 5022 	lcall	__gptrget
      004694 FA               [12] 5023 	mov	r2,a
      004695 A3               [24] 5024 	inc	dptr
      004696 12 6F D1         [24] 5025 	lcall	__gptrget
      004699 FB               [12] 5026 	mov	r3,a
      00469A A3               [24] 5027 	inc	dptr
      00469B 12 6F D1         [24] 5028 	lcall	__gptrget
      00469E FC               [12] 5029 	mov	r4,a
      00469F E5 08            [12] 5030 	mov	a,_bp
      0046A1 24 15            [12] 5031 	add	a,#0x15
      0046A3 F8               [12] 5032 	mov	r0,a
      0046A4 E6               [12] 5033 	mov	a,@r0
      0046A5 C0 E0            [24] 5034 	push	acc
      0046A7 08               [12] 5035 	inc	r0
      0046A8 E6               [12] 5036 	mov	a,@r0
      0046A9 C0 E0            [24] 5037 	push	acc
      0046AB 08               [12] 5038 	inc	r0
      0046AC E6               [12] 5039 	mov	a,@r0
      0046AD C0 E0            [24] 5040 	push	acc
      0046AF 08               [12] 5041 	inc	r0
      0046B0 E6               [12] 5042 	mov	a,@r0
      0046B1 C0 E0            [24] 5043 	push	acc
      0046B3 8A 82            [24] 5044 	mov	dpl,r2
      0046B5 8B 83            [24] 5045 	mov	dph,r3
      0046B7 8C F0            [24] 5046 	mov	b,r4
      0046B9 12 26 BA         [24] 5047 	lcall	_stack_push
      0046BC E5 81            [12] 5048 	mov	a,sp
      0046BE 24 FC            [12] 5049 	add	a,#0xfc
      0046C0 F5 81            [12] 5050 	mov	sp,a
                                   5051 ;	calc.c:249: printstr("\r\nstack underflow\r\n");
      0046C2 7F 96            [12] 5052 	mov	r7,#___str_10
      0046C4 7E 88            [12] 5053 	mov	r6,#(___str_10 >> 8)
      0046C6 7D 80            [12] 5054 	mov	r5,#0x80
                                   5055 ;	calc.c:51: return;
      0046C8                       5056 00445$:
                                   5057 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0046C8 8F 82            [24] 5058 	mov	dpl,r7
      0046CA 8E 83            [24] 5059 	mov	dph,r6
      0046CC 8D F0            [24] 5060 	mov	b,r5
      0046CE 12 6F D1         [24] 5061 	lcall	__gptrget
      0046D1 FC               [12] 5062 	mov	r4,a
      0046D2 70 03            [24] 5063 	jnz	01345$
      0046D4 02 56 1B         [24] 5064 	ljmp	00249$
      0046D7                       5065 01345$:
      0046D7 7B 00            [12] 5066 	mov	r3,#0x00
      0046D9 8C 82            [24] 5067 	mov	dpl,r4
      0046DB 8B 83            [24] 5068 	mov	dph,r3
      0046DD 12 2B D5         [24] 5069 	lcall	_putchar
      0046E0 0F               [12] 5070 	inc	r7
                                   5071 ;	calc.c:249: printstr("\r\nstack underflow\r\n");
      0046E1 BF 00 E4         [24] 5072 	cjne	r7,#0x00,00445$
      0046E4 0E               [12] 5073 	inc	r6
      0046E5 80 E1            [24] 5074 	sjmp	00445$
      0046E7                       5075 00183$:
                                   5076 ;	calc.c:250: } else if (!d0) {
      0046E7 E5 08            [12] 5077 	mov	a,_bp
      0046E9 24 15            [12] 5078 	add	a,#0x15
      0046EB F8               [12] 5079 	mov	r0,a
      0046EC E6               [12] 5080 	mov	a,@r0
      0046ED 08               [12] 5081 	inc	r0
      0046EE 46               [12] 5082 	orl	a,@r0
      0046EF 08               [12] 5083 	inc	r0
      0046F0 46               [12] 5084 	orl	a,@r0
      0046F1 08               [12] 5085 	inc	r0
      0046F2 46               [12] 5086 	orl	a,@r0
      0046F3 60 03            [24] 5087 	jz	01347$
      0046F5 02 47 99         [24] 5088 	ljmp	00180$
      0046F8                       5089 01347$:
                                   5090 ;	calc.c:251: (void)stack_push(ctx->ps, d1);
      0046F8 E5 08            [12] 5091 	mov	a,_bp
      0046FA 24 0B            [12] 5092 	add	a,#0x0b
      0046FC F8               [12] 5093 	mov	r0,a
      0046FD 86 82            [24] 5094 	mov	dpl,@r0
      0046FF 08               [12] 5095 	inc	r0
      004700 86 83            [24] 5096 	mov	dph,@r0
      004702 08               [12] 5097 	inc	r0
      004703 86 F0            [24] 5098 	mov	b,@r0
      004705 12 6F D1         [24] 5099 	lcall	__gptrget
      004708 FA               [12] 5100 	mov	r2,a
      004709 A3               [24] 5101 	inc	dptr
      00470A 12 6F D1         [24] 5102 	lcall	__gptrget
      00470D FB               [12] 5103 	mov	r3,a
      00470E A3               [24] 5104 	inc	dptr
      00470F 12 6F D1         [24] 5105 	lcall	__gptrget
      004712 FC               [12] 5106 	mov	r4,a
      004713 E5 08            [12] 5107 	mov	a,_bp
      004715 24 19            [12] 5108 	add	a,#0x19
      004717 F8               [12] 5109 	mov	r0,a
      004718 E6               [12] 5110 	mov	a,@r0
      004719 C0 E0            [24] 5111 	push	acc
      00471B 08               [12] 5112 	inc	r0
      00471C E6               [12] 5113 	mov	a,@r0
      00471D C0 E0            [24] 5114 	push	acc
      00471F 08               [12] 5115 	inc	r0
      004720 E6               [12] 5116 	mov	a,@r0
      004721 C0 E0            [24] 5117 	push	acc
      004723 08               [12] 5118 	inc	r0
      004724 E6               [12] 5119 	mov	a,@r0
      004725 C0 E0            [24] 5120 	push	acc
      004727 8A 82            [24] 5121 	mov	dpl,r2
      004729 8B 83            [24] 5122 	mov	dph,r3
      00472B 8C F0            [24] 5123 	mov	b,r4
      00472D 12 26 BA         [24] 5124 	lcall	_stack_push
      004730 E5 81            [12] 5125 	mov	a,sp
      004732 24 FC            [12] 5126 	add	a,#0xfc
      004734 F5 81            [12] 5127 	mov	sp,a
                                   5128 ;	calc.c:252: (void)stack_push(ctx->ps, d0);			
      004736 E5 08            [12] 5129 	mov	a,_bp
      004738 24 0B            [12] 5130 	add	a,#0x0b
      00473A F8               [12] 5131 	mov	r0,a
      00473B 86 82            [24] 5132 	mov	dpl,@r0
      00473D 08               [12] 5133 	inc	r0
      00473E 86 83            [24] 5134 	mov	dph,@r0
      004740 08               [12] 5135 	inc	r0
      004741 86 F0            [24] 5136 	mov	b,@r0
      004743 12 6F D1         [24] 5137 	lcall	__gptrget
      004746 FA               [12] 5138 	mov	r2,a
      004747 A3               [24] 5139 	inc	dptr
      004748 12 6F D1         [24] 5140 	lcall	__gptrget
      00474B FB               [12] 5141 	mov	r3,a
      00474C A3               [24] 5142 	inc	dptr
      00474D 12 6F D1         [24] 5143 	lcall	__gptrget
      004750 FC               [12] 5144 	mov	r4,a
      004751 E5 08            [12] 5145 	mov	a,_bp
      004753 24 15            [12] 5146 	add	a,#0x15
      004755 F8               [12] 5147 	mov	r0,a
      004756 E6               [12] 5148 	mov	a,@r0
      004757 C0 E0            [24] 5149 	push	acc
      004759 08               [12] 5150 	inc	r0
      00475A E6               [12] 5151 	mov	a,@r0
      00475B C0 E0            [24] 5152 	push	acc
      00475D 08               [12] 5153 	inc	r0
      00475E E6               [12] 5154 	mov	a,@r0
      00475F C0 E0            [24] 5155 	push	acc
      004761 08               [12] 5156 	inc	r0
      004762 E6               [12] 5157 	mov	a,@r0
      004763 C0 E0            [24] 5158 	push	acc
      004765 8A 82            [24] 5159 	mov	dpl,r2
      004767 8B 83            [24] 5160 	mov	dph,r3
      004769 8C F0            [24] 5161 	mov	b,r4
      00476B 12 26 BA         [24] 5162 	lcall	_stack_push
      00476E E5 81            [12] 5163 	mov	a,sp
      004770 24 FC            [12] 5164 	add	a,#0xfc
      004772 F5 81            [12] 5165 	mov	sp,a
                                   5166 ;	calc.c:253: printstr("\r\ndivision by zero\r\n");
      004774 7F F8            [12] 5167 	mov	r7,#___str_14
      004776 7E 88            [12] 5168 	mov	r6,#(___str_14 >> 8)
      004778 7D 80            [12] 5169 	mov	r5,#0x80
                                   5170 ;	calc.c:51: return;
      00477A                       5171 00448$:
                                   5172 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00477A 8F 82            [24] 5173 	mov	dpl,r7
      00477C 8E 83            [24] 5174 	mov	dph,r6
      00477E 8D F0            [24] 5175 	mov	b,r5
      004780 12 6F D1         [24] 5176 	lcall	__gptrget
      004783 FC               [12] 5177 	mov	r4,a
      004784 70 03            [24] 5178 	jnz	01348$
      004786 02 56 1B         [24] 5179 	ljmp	00249$
      004789                       5180 01348$:
      004789 7B 00            [12] 5181 	mov	r3,#0x00
      00478B 8C 82            [24] 5182 	mov	dpl,r4
      00478D 8B 83            [24] 5183 	mov	dph,r3
      00478F 12 2B D5         [24] 5184 	lcall	_putchar
      004792 0F               [12] 5185 	inc	r7
                                   5186 ;	calc.c:253: printstr("\r\ndivision by zero\r\n");
      004793 BF 00 E4         [24] 5187 	cjne	r7,#0x00,00448$
      004796 0E               [12] 5188 	inc	r6
      004797 80 E1            [24] 5189 	sjmp	00448$
      004799                       5190 00180$:
                                   5191 ;	calc.c:255: if (ctx->digit[0] == '/') d1 /= d0;
      004799 8D 82            [24] 5192 	mov	dpl,r5
      00479B 8E 83            [24] 5193 	mov	dph,r6
      00479D 8F F0            [24] 5194 	mov	b,r7
      00479F 12 6F D1         [24] 5195 	lcall	__gptrget
      0047A2 FC               [12] 5196 	mov	r4,a
      0047A3 BC 2F 45         [24] 5197 	cjne	r4,#0x2f,00177$
      0047A6 E5 08            [12] 5198 	mov	a,_bp
      0047A8 24 15            [12] 5199 	add	a,#0x15
      0047AA F8               [12] 5200 	mov	r0,a
      0047AB E6               [12] 5201 	mov	a,@r0
      0047AC C0 E0            [24] 5202 	push	acc
      0047AE 08               [12] 5203 	inc	r0
      0047AF E6               [12] 5204 	mov	a,@r0
      0047B0 C0 E0            [24] 5205 	push	acc
      0047B2 08               [12] 5206 	inc	r0
      0047B3 E6               [12] 5207 	mov	a,@r0
      0047B4 C0 E0            [24] 5208 	push	acc
      0047B6 08               [12] 5209 	inc	r0
      0047B7 E6               [12] 5210 	mov	a,@r0
      0047B8 C0 E0            [24] 5211 	push	acc
      0047BA E5 08            [12] 5212 	mov	a,_bp
      0047BC 24 19            [12] 5213 	add	a,#0x19
      0047BE F8               [12] 5214 	mov	r0,a
      0047BF 86 82            [24] 5215 	mov	dpl,@r0
      0047C1 08               [12] 5216 	inc	r0
      0047C2 86 83            [24] 5217 	mov	dph,@r0
      0047C4 08               [12] 5218 	inc	r0
      0047C5 86 F0            [24] 5219 	mov	b,@r0
      0047C7 08               [12] 5220 	inc	r0
      0047C8 E6               [12] 5221 	mov	a,@r0
      0047C9 12 6D C8         [24] 5222 	lcall	__divslong
      0047CC AF 82            [24] 5223 	mov	r7,dpl
      0047CE AE 83            [24] 5224 	mov	r6,dph
      0047D0 AD F0            [24] 5225 	mov	r5,b
      0047D2 FC               [12] 5226 	mov	r4,a
      0047D3 E5 81            [12] 5227 	mov	a,sp
      0047D5 24 FC            [12] 5228 	add	a,#0xfc
      0047D7 F5 81            [12] 5229 	mov	sp,a
      0047D9 E5 08            [12] 5230 	mov	a,_bp
      0047DB 24 19            [12] 5231 	add	a,#0x19
      0047DD F8               [12] 5232 	mov	r0,a
      0047DE A6 07            [24] 5233 	mov	@r0,ar7
      0047E0 08               [12] 5234 	inc	r0
      0047E1 A6 06            [24] 5235 	mov	@r0,ar6
      0047E3 08               [12] 5236 	inc	r0
      0047E4 A6 05            [24] 5237 	mov	@r0,ar5
      0047E6 08               [12] 5238 	inc	r0
      0047E7 A6 04            [24] 5239 	mov	@r0,ar4
      0047E9 80 63            [24] 5240 	sjmp	00178$
      0047EB                       5241 00177$:
                                   5242 ;	calc.c:256: else d1 = (unsigned long)d1 / (unsigned long)d0;
      0047EB E5 08            [12] 5243 	mov	a,_bp
      0047ED 24 19            [12] 5244 	add	a,#0x19
      0047EF F8               [12] 5245 	mov	r0,a
      0047F0 86 07            [24] 5246 	mov	ar7,@r0
      0047F2 08               [12] 5247 	inc	r0
      0047F3 86 06            [24] 5248 	mov	ar6,@r0
      0047F5 08               [12] 5249 	inc	r0
      0047F6 86 05            [24] 5250 	mov	ar5,@r0
      0047F8 08               [12] 5251 	inc	r0
      0047F9 86 04            [24] 5252 	mov	ar4,@r0
      0047FB E5 08            [12] 5253 	mov	a,_bp
      0047FD 24 15            [12] 5254 	add	a,#0x15
      0047FF F8               [12] 5255 	mov	r0,a
      004800 E5 08            [12] 5256 	mov	a,_bp
      004802 24 0E            [12] 5257 	add	a,#0x0e
      004804 F9               [12] 5258 	mov	r1,a
      004805 E6               [12] 5259 	mov	a,@r0
      004806 F7               [12] 5260 	mov	@r1,a
      004807 08               [12] 5261 	inc	r0
      004808 09               [12] 5262 	inc	r1
      004809 E6               [12] 5263 	mov	a,@r0
      00480A F7               [12] 5264 	mov	@r1,a
      00480B 08               [12] 5265 	inc	r0
      00480C 09               [12] 5266 	inc	r1
      00480D E6               [12] 5267 	mov	a,@r0
      00480E F7               [12] 5268 	mov	@r1,a
      00480F 08               [12] 5269 	inc	r0
      004810 09               [12] 5270 	inc	r1
      004811 E6               [12] 5271 	mov	a,@r0
      004812 F7               [12] 5272 	mov	@r1,a
      004813 E5 08            [12] 5273 	mov	a,_bp
      004815 24 0E            [12] 5274 	add	a,#0x0e
      004817 F8               [12] 5275 	mov	r0,a
      004818 E6               [12] 5276 	mov	a,@r0
      004819 C0 E0            [24] 5277 	push	acc
      00481B 08               [12] 5278 	inc	r0
      00481C E6               [12] 5279 	mov	a,@r0
      00481D C0 E0            [24] 5280 	push	acc
      00481F 08               [12] 5281 	inc	r0
      004820 E6               [12] 5282 	mov	a,@r0
      004821 C0 E0            [24] 5283 	push	acc
      004823 08               [12] 5284 	inc	r0
      004824 E6               [12] 5285 	mov	a,@r0
      004825 C0 E0            [24] 5286 	push	acc
      004827 8F 82            [24] 5287 	mov	dpl,r7
      004829 8E 83            [24] 5288 	mov	dph,r6
      00482B 8D F0            [24] 5289 	mov	b,r5
      00482D EC               [12] 5290 	mov	a,r4
      00482E 12 6E C5         [24] 5291 	lcall	__divulong
      004831 AF 82            [24] 5292 	mov	r7,dpl
      004833 AE 83            [24] 5293 	mov	r6,dph
      004835 AD F0            [24] 5294 	mov	r5,b
      004837 FC               [12] 5295 	mov	r4,a
      004838 E5 81            [12] 5296 	mov	a,sp
      00483A 24 FC            [12] 5297 	add	a,#0xfc
      00483C F5 81            [12] 5298 	mov	sp,a
      00483E E5 08            [12] 5299 	mov	a,_bp
      004840 24 19            [12] 5300 	add	a,#0x19
      004842 F8               [12] 5301 	mov	r0,a
      004843 A6 07            [24] 5302 	mov	@r0,ar7
      004845 08               [12] 5303 	inc	r0
      004846 A6 06            [24] 5304 	mov	@r0,ar6
      004848 08               [12] 5305 	inc	r0
      004849 A6 05            [24] 5306 	mov	@r0,ar5
      00484B 08               [12] 5307 	inc	r0
      00484C A6 04            [24] 5308 	mov	@r0,ar4
      00484E                       5309 00178$:
                                   5310 ;	calc.c:257: (void)stack_push(ctx->ps, d1);
      00484E E5 08            [12] 5311 	mov	a,_bp
      004850 24 0B            [12] 5312 	add	a,#0x0b
      004852 F8               [12] 5313 	mov	r0,a
      004853 86 82            [24] 5314 	mov	dpl,@r0
      004855 08               [12] 5315 	inc	r0
      004856 86 83            [24] 5316 	mov	dph,@r0
      004858 08               [12] 5317 	inc	r0
      004859 86 F0            [24] 5318 	mov	b,@r0
      00485B 12 6F D1         [24] 5319 	lcall	__gptrget
      00485E FA               [12] 5320 	mov	r2,a
      00485F A3               [24] 5321 	inc	dptr
      004860 12 6F D1         [24] 5322 	lcall	__gptrget
      004863 FB               [12] 5323 	mov	r3,a
      004864 A3               [24] 5324 	inc	dptr
      004865 12 6F D1         [24] 5325 	lcall	__gptrget
      004868 FC               [12] 5326 	mov	r4,a
      004869 E5 08            [12] 5327 	mov	a,_bp
      00486B 24 19            [12] 5328 	add	a,#0x19
      00486D F8               [12] 5329 	mov	r0,a
      00486E E6               [12] 5330 	mov	a,@r0
      00486F C0 E0            [24] 5331 	push	acc
      004871 08               [12] 5332 	inc	r0
      004872 E6               [12] 5333 	mov	a,@r0
      004873 C0 E0            [24] 5334 	push	acc
      004875 08               [12] 5335 	inc	r0
      004876 E6               [12] 5336 	mov	a,@r0
      004877 C0 E0            [24] 5337 	push	acc
      004879 08               [12] 5338 	inc	r0
      00487A E6               [12] 5339 	mov	a,@r0
      00487B C0 E0            [24] 5340 	push	acc
      00487D 8A 82            [24] 5341 	mov	dpl,r2
      00487F 8B 83            [24] 5342 	mov	dph,r3
      004881 8C F0            [24] 5343 	mov	b,r4
      004883 12 26 BA         [24] 5344 	lcall	_stack_push
      004886 E5 81            [12] 5345 	mov	a,sp
      004888 24 FC            [12] 5346 	add	a,#0xfc
      00488A F5 81            [12] 5347 	mov	sp,a
                                   5348 ;	calc.c:259: break;
      00488C 02 56 1B         [24] 5349 	ljmp	00249$
                                   5350 ;	calc.c:261: case '#':
      00488F                       5351 00189$:
                                   5352 ;	calc.c:262: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      00488F C0 05            [24] 5353 	push	ar5
      004891 C0 06            [24] 5354 	push	ar6
      004893 C0 07            [24] 5355 	push	ar7
      004895 E5 08            [12] 5356 	mov	a,_bp
      004897 24 15            [12] 5357 	add	a,#0x15
      004899 FC               [12] 5358 	mov	r4,a
      00489A 7B 00            [12] 5359 	mov	r3,#0x00
      00489C 7A 40            [12] 5360 	mov	r2,#0x40
      00489E E5 08            [12] 5361 	mov	a,_bp
      0048A0 24 12            [12] 5362 	add	a,#0x12
      0048A2 F8               [12] 5363 	mov	r0,a
      0048A3 E5 08            [12] 5364 	mov	a,_bp
      0048A5 24 0E            [12] 5365 	add	a,#0x0e
      0048A7 F9               [12] 5366 	mov	r1,a
      0048A8 74 13            [12] 5367 	mov	a,#0x13
      0048AA 26               [12] 5368 	add	a,@r0
      0048AB F7               [12] 5369 	mov	@r1,a
      0048AC 74 40            [12] 5370 	mov	a,#0x40
      0048AE 08               [12] 5371 	inc	r0
      0048AF 36               [12] 5372 	addc	a,@r0
      0048B0 09               [12] 5373 	inc	r1
      0048B1 F7               [12] 5374 	mov	@r1,a
      0048B2 08               [12] 5375 	inc	r0
      0048B3 09               [12] 5376 	inc	r1
      0048B4 E6               [12] 5377 	mov	a,@r0
      0048B5 F7               [12] 5378 	mov	@r1,a
      0048B6 E5 08            [12] 5379 	mov	a,_bp
      0048B8 24 0E            [12] 5380 	add	a,#0x0e
      0048BA F8               [12] 5381 	mov	r0,a
      0048BB 86 82            [24] 5382 	mov	dpl,@r0
      0048BD 08               [12] 5383 	inc	r0
      0048BE 86 83            [24] 5384 	mov	dph,@r0
      0048C0 08               [12] 5385 	inc	r0
      0048C1 86 F0            [24] 5386 	mov	b,@r0
      0048C3 12 6F D1         [24] 5387 	lcall	__gptrget
      0048C6 FD               [12] 5388 	mov	r5,a
      0048C7 A3               [24] 5389 	inc	dptr
      0048C8 12 6F D1         [24] 5390 	lcall	__gptrget
      0048CB FE               [12] 5391 	mov	r6,a
      0048CC A3               [24] 5392 	inc	dptr
      0048CD 12 6F D1         [24] 5393 	lcall	__gptrget
      0048D0 FF               [12] 5394 	mov	r7,a
      0048D1 C0 05            [24] 5395 	push	ar5
      0048D3 C0 04            [24] 5396 	push	ar4
      0048D5 C0 03            [24] 5397 	push	ar3
      0048D7 C0 02            [24] 5398 	push	ar2
      0048D9 8D 82            [24] 5399 	mov	dpl,r5
      0048DB 8E 83            [24] 5400 	mov	dph,r6
      0048DD 8F F0            [24] 5401 	mov	b,r7
      0048DF 12 27 B4         [24] 5402 	lcall	_stack_pop
      0048E2 AE 82            [24] 5403 	mov	r6,dpl
      0048E4 AF 83            [24] 5404 	mov	r7,dph
      0048E6 15 81            [12] 5405 	dec	sp
      0048E8 15 81            [12] 5406 	dec	sp
      0048EA 15 81            [12] 5407 	dec	sp
      0048EC D0 05            [24] 5408 	pop	ar5
      0048EE EE               [12] 5409 	mov	a,r6
      0048EF 4F               [12] 5410 	orl	a,r7
      0048F0 D0 07            [24] 5411 	pop	ar7
      0048F2 D0 06            [24] 5412 	pop	ar6
      0048F4 D0 05            [24] 5413 	pop	ar5
      0048F6 70 25            [24] 5414 	jnz	00200$
      0048F8 7F 96            [12] 5415 	mov	r7,#___str_10
      0048FA 7E 88            [12] 5416 	mov	r6,#(___str_10 >> 8)
      0048FC 7D 80            [12] 5417 	mov	r5,#0x80
                                   5418 ;	calc.c:51: return;
      0048FE                       5419 00451$:
                                   5420 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0048FE 8F 82            [24] 5421 	mov	dpl,r7
      004900 8E 83            [24] 5422 	mov	dph,r6
      004902 8D F0            [24] 5423 	mov	b,r5
      004904 12 6F D1         [24] 5424 	lcall	__gptrget
      004907 FC               [12] 5425 	mov	r4,a
      004908 70 03            [24] 5426 	jnz	01353$
      00490A 02 56 1B         [24] 5427 	ljmp	00249$
      00490D                       5428 01353$:
      00490D 7B 00            [12] 5429 	mov	r3,#0x00
      00490F 8C 82            [24] 5430 	mov	dpl,r4
      004911 8B 83            [24] 5431 	mov	dph,r3
      004913 12 2B D5         [24] 5432 	lcall	_putchar
      004916 0F               [12] 5433 	inc	r7
                                   5434 ;	calc.c:262: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004917 BF 00 E4         [24] 5435 	cjne	r7,#0x00,00451$
      00491A 0E               [12] 5436 	inc	r6
      00491B 80 E1            [24] 5437 	sjmp	00451$
      00491D                       5438 00200$:
                                   5439 ;	calc.c:263: else if (!stack_pop(ctx->ps, &d1)) {
      00491D C0 05            [24] 5440 	push	ar5
      00491F C0 06            [24] 5441 	push	ar6
      004921 C0 07            [24] 5442 	push	ar7
      004923 E5 08            [12] 5443 	mov	a,_bp
      004925 24 19            [12] 5444 	add	a,#0x19
      004927 FC               [12] 5445 	mov	r4,a
      004928 7B 00            [12] 5446 	mov	r3,#0x00
      00492A 7A 40            [12] 5447 	mov	r2,#0x40
      00492C E5 08            [12] 5448 	mov	a,_bp
      00492E 24 0E            [12] 5449 	add	a,#0x0e
      004930 F8               [12] 5450 	mov	r0,a
      004931 86 82            [24] 5451 	mov	dpl,@r0
      004933 08               [12] 5452 	inc	r0
      004934 86 83            [24] 5453 	mov	dph,@r0
      004936 08               [12] 5454 	inc	r0
      004937 86 F0            [24] 5455 	mov	b,@r0
      004939 12 6F D1         [24] 5456 	lcall	__gptrget
      00493C FD               [12] 5457 	mov	r5,a
      00493D A3               [24] 5458 	inc	dptr
      00493E 12 6F D1         [24] 5459 	lcall	__gptrget
      004941 FE               [12] 5460 	mov	r6,a
      004942 A3               [24] 5461 	inc	dptr
      004943 12 6F D1         [24] 5462 	lcall	__gptrget
      004946 FF               [12] 5463 	mov	r7,a
      004947 C0 05            [24] 5464 	push	ar5
      004949 C0 04            [24] 5465 	push	ar4
      00494B C0 03            [24] 5466 	push	ar3
      00494D C0 02            [24] 5467 	push	ar2
      00494F 8D 82            [24] 5468 	mov	dpl,r5
      004951 8E 83            [24] 5469 	mov	dph,r6
      004953 8F F0            [24] 5470 	mov	b,r7
      004955 12 27 B4         [24] 5471 	lcall	_stack_pop
      004958 AE 82            [24] 5472 	mov	r6,dpl
      00495A AF 83            [24] 5473 	mov	r7,dph
      00495C 15 81            [12] 5474 	dec	sp
      00495E 15 81            [12] 5475 	dec	sp
      004960 15 81            [12] 5476 	dec	sp
      004962 D0 05            [24] 5477 	pop	ar5
      004964 EE               [12] 5478 	mov	a,r6
      004965 4F               [12] 5479 	orl	a,r7
      004966 D0 07            [24] 5480 	pop	ar7
      004968 D0 06            [24] 5481 	pop	ar6
      00496A D0 05            [24] 5482 	pop	ar5
      00496C 70 63            [24] 5483 	jnz	00197$
                                   5484 ;	calc.c:264: (void)stack_push(ctx->ps, d0);
      00496E E5 08            [12] 5485 	mov	a,_bp
      004970 24 0E            [12] 5486 	add	a,#0x0e
      004972 F8               [12] 5487 	mov	r0,a
      004973 86 82            [24] 5488 	mov	dpl,@r0
      004975 08               [12] 5489 	inc	r0
      004976 86 83            [24] 5490 	mov	dph,@r0
      004978 08               [12] 5491 	inc	r0
      004979 86 F0            [24] 5492 	mov	b,@r0
      00497B 12 6F D1         [24] 5493 	lcall	__gptrget
      00497E FA               [12] 5494 	mov	r2,a
      00497F A3               [24] 5495 	inc	dptr
      004980 12 6F D1         [24] 5496 	lcall	__gptrget
      004983 FB               [12] 5497 	mov	r3,a
      004984 A3               [24] 5498 	inc	dptr
      004985 12 6F D1         [24] 5499 	lcall	__gptrget
      004988 FC               [12] 5500 	mov	r4,a
      004989 E5 08            [12] 5501 	mov	a,_bp
      00498B 24 15            [12] 5502 	add	a,#0x15
      00498D F8               [12] 5503 	mov	r0,a
      00498E E6               [12] 5504 	mov	a,@r0
      00498F C0 E0            [24] 5505 	push	acc
      004991 08               [12] 5506 	inc	r0
      004992 E6               [12] 5507 	mov	a,@r0
      004993 C0 E0            [24] 5508 	push	acc
      004995 08               [12] 5509 	inc	r0
      004996 E6               [12] 5510 	mov	a,@r0
      004997 C0 E0            [24] 5511 	push	acc
      004999 08               [12] 5512 	inc	r0
      00499A E6               [12] 5513 	mov	a,@r0
      00499B C0 E0            [24] 5514 	push	acc
      00499D 8A 82            [24] 5515 	mov	dpl,r2
      00499F 8B 83            [24] 5516 	mov	dph,r3
      0049A1 8C F0            [24] 5517 	mov	b,r4
      0049A3 12 26 BA         [24] 5518 	lcall	_stack_push
      0049A6 E5 81            [12] 5519 	mov	a,sp
      0049A8 24 FC            [12] 5520 	add	a,#0xfc
      0049AA F5 81            [12] 5521 	mov	sp,a
                                   5522 ;	calc.c:265: printstr("\r\nstack underflow\r\n");
      0049AC 7F 96            [12] 5523 	mov	r7,#___str_10
      0049AE 7E 88            [12] 5524 	mov	r6,#(___str_10 >> 8)
      0049B0 7D 80            [12] 5525 	mov	r5,#0x80
                                   5526 ;	calc.c:51: return;
      0049B2                       5527 00454$:
                                   5528 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0049B2 8F 82            [24] 5529 	mov	dpl,r7
      0049B4 8E 83            [24] 5530 	mov	dph,r6
      0049B6 8D F0            [24] 5531 	mov	b,r5
      0049B8 12 6F D1         [24] 5532 	lcall	__gptrget
      0049BB FC               [12] 5533 	mov	r4,a
      0049BC 70 03            [24] 5534 	jnz	01356$
      0049BE 02 56 1B         [24] 5535 	ljmp	00249$
      0049C1                       5536 01356$:
      0049C1 7B 00            [12] 5537 	mov	r3,#0x00
      0049C3 8C 82            [24] 5538 	mov	dpl,r4
      0049C5 8B 83            [24] 5539 	mov	dph,r3
      0049C7 12 2B D5         [24] 5540 	lcall	_putchar
      0049CA 0F               [12] 5541 	inc	r7
                                   5542 ;	calc.c:265: printstr("\r\nstack underflow\r\n");
      0049CB BF 00 E4         [24] 5543 	cjne	r7,#0x00,00454$
      0049CE 0E               [12] 5544 	inc	r6
      0049CF 80 E1            [24] 5545 	sjmp	00454$
      0049D1                       5546 00197$:
                                   5547 ;	calc.c:266: } else if (!d0) {
      0049D1 E5 08            [12] 5548 	mov	a,_bp
      0049D3 24 15            [12] 5549 	add	a,#0x15
      0049D5 F8               [12] 5550 	mov	r0,a
      0049D6 E6               [12] 5551 	mov	a,@r0
      0049D7 08               [12] 5552 	inc	r0
      0049D8 46               [12] 5553 	orl	a,@r0
      0049D9 08               [12] 5554 	inc	r0
      0049DA 46               [12] 5555 	orl	a,@r0
      0049DB 08               [12] 5556 	inc	r0
      0049DC 46               [12] 5557 	orl	a,@r0
      0049DD 60 03            [24] 5558 	jz	01358$
      0049DF 02 4A 83         [24] 5559 	ljmp	00194$
      0049E2                       5560 01358$:
                                   5561 ;	calc.c:267: (void)stack_push(ctx->ps, d1);
      0049E2 E5 08            [12] 5562 	mov	a,_bp
      0049E4 24 0E            [12] 5563 	add	a,#0x0e
      0049E6 F8               [12] 5564 	mov	r0,a
      0049E7 86 82            [24] 5565 	mov	dpl,@r0
      0049E9 08               [12] 5566 	inc	r0
      0049EA 86 83            [24] 5567 	mov	dph,@r0
      0049EC 08               [12] 5568 	inc	r0
      0049ED 86 F0            [24] 5569 	mov	b,@r0
      0049EF 12 6F D1         [24] 5570 	lcall	__gptrget
      0049F2 FA               [12] 5571 	mov	r2,a
      0049F3 A3               [24] 5572 	inc	dptr
      0049F4 12 6F D1         [24] 5573 	lcall	__gptrget
      0049F7 FB               [12] 5574 	mov	r3,a
      0049F8 A3               [24] 5575 	inc	dptr
      0049F9 12 6F D1         [24] 5576 	lcall	__gptrget
      0049FC FC               [12] 5577 	mov	r4,a
      0049FD E5 08            [12] 5578 	mov	a,_bp
      0049FF 24 19            [12] 5579 	add	a,#0x19
      004A01 F8               [12] 5580 	mov	r0,a
      004A02 E6               [12] 5581 	mov	a,@r0
      004A03 C0 E0            [24] 5582 	push	acc
      004A05 08               [12] 5583 	inc	r0
      004A06 E6               [12] 5584 	mov	a,@r0
      004A07 C0 E0            [24] 5585 	push	acc
      004A09 08               [12] 5586 	inc	r0
      004A0A E6               [12] 5587 	mov	a,@r0
      004A0B C0 E0            [24] 5588 	push	acc
      004A0D 08               [12] 5589 	inc	r0
      004A0E E6               [12] 5590 	mov	a,@r0
      004A0F C0 E0            [24] 5591 	push	acc
      004A11 8A 82            [24] 5592 	mov	dpl,r2
      004A13 8B 83            [24] 5593 	mov	dph,r3
      004A15 8C F0            [24] 5594 	mov	b,r4
      004A17 12 26 BA         [24] 5595 	lcall	_stack_push
      004A1A E5 81            [12] 5596 	mov	a,sp
      004A1C 24 FC            [12] 5597 	add	a,#0xfc
      004A1E F5 81            [12] 5598 	mov	sp,a
                                   5599 ;	calc.c:268: (void)stack_push(ctx->ps, d0);			
      004A20 E5 08            [12] 5600 	mov	a,_bp
      004A22 24 0E            [12] 5601 	add	a,#0x0e
      004A24 F8               [12] 5602 	mov	r0,a
      004A25 86 82            [24] 5603 	mov	dpl,@r0
      004A27 08               [12] 5604 	inc	r0
      004A28 86 83            [24] 5605 	mov	dph,@r0
      004A2A 08               [12] 5606 	inc	r0
      004A2B 86 F0            [24] 5607 	mov	b,@r0
      004A2D 12 6F D1         [24] 5608 	lcall	__gptrget
      004A30 FA               [12] 5609 	mov	r2,a
      004A31 A3               [24] 5610 	inc	dptr
      004A32 12 6F D1         [24] 5611 	lcall	__gptrget
      004A35 FB               [12] 5612 	mov	r3,a
      004A36 A3               [24] 5613 	inc	dptr
      004A37 12 6F D1         [24] 5614 	lcall	__gptrget
      004A3A FC               [12] 5615 	mov	r4,a
      004A3B E5 08            [12] 5616 	mov	a,_bp
      004A3D 24 15            [12] 5617 	add	a,#0x15
      004A3F F8               [12] 5618 	mov	r0,a
      004A40 E6               [12] 5619 	mov	a,@r0
      004A41 C0 E0            [24] 5620 	push	acc
      004A43 08               [12] 5621 	inc	r0
      004A44 E6               [12] 5622 	mov	a,@r0
      004A45 C0 E0            [24] 5623 	push	acc
      004A47 08               [12] 5624 	inc	r0
      004A48 E6               [12] 5625 	mov	a,@r0
      004A49 C0 E0            [24] 5626 	push	acc
      004A4B 08               [12] 5627 	inc	r0
      004A4C E6               [12] 5628 	mov	a,@r0
      004A4D C0 E0            [24] 5629 	push	acc
      004A4F 8A 82            [24] 5630 	mov	dpl,r2
      004A51 8B 83            [24] 5631 	mov	dph,r3
      004A53 8C F0            [24] 5632 	mov	b,r4
      004A55 12 26 BA         [24] 5633 	lcall	_stack_push
      004A58 E5 81            [12] 5634 	mov	a,sp
      004A5A 24 FC            [12] 5635 	add	a,#0xfc
      004A5C F5 81            [12] 5636 	mov	sp,a
                                   5637 ;	calc.c:269: printstr("\r\ndivision by zero\r\n");
      004A5E 7F F8            [12] 5638 	mov	r7,#___str_14
      004A60 7E 88            [12] 5639 	mov	r6,#(___str_14 >> 8)
      004A62 7D 80            [12] 5640 	mov	r5,#0x80
                                   5641 ;	calc.c:51: return;
      004A64                       5642 00457$:
                                   5643 ;	calc.c:49: for (; *s; s++) putchar(*s);
      004A64 8F 82            [24] 5644 	mov	dpl,r7
      004A66 8E 83            [24] 5645 	mov	dph,r6
      004A68 8D F0            [24] 5646 	mov	b,r5
      004A6A 12 6F D1         [24] 5647 	lcall	__gptrget
      004A6D FC               [12] 5648 	mov	r4,a
      004A6E 70 03            [24] 5649 	jnz	01359$
      004A70 02 56 1B         [24] 5650 	ljmp	00249$
      004A73                       5651 01359$:
      004A73 7B 00            [12] 5652 	mov	r3,#0x00
      004A75 8C 82            [24] 5653 	mov	dpl,r4
      004A77 8B 83            [24] 5654 	mov	dph,r3
      004A79 12 2B D5         [24] 5655 	lcall	_putchar
      004A7C 0F               [12] 5656 	inc	r7
                                   5657 ;	calc.c:269: printstr("\r\ndivision by zero\r\n");
      004A7D BF 00 E4         [24] 5658 	cjne	r7,#0x00,00457$
      004A80 0E               [12] 5659 	inc	r6
      004A81 80 E1            [24] 5660 	sjmp	00457$
      004A83                       5661 00194$:
                                   5662 ;	calc.c:271: if (ctx->digit[0] == '%') d1 %= d0;
      004A83 8D 82            [24] 5663 	mov	dpl,r5
      004A85 8E 83            [24] 5664 	mov	dph,r6
      004A87 8F F0            [24] 5665 	mov	b,r7
      004A89 12 6F D1         [24] 5666 	lcall	__gptrget
      004A8C FD               [12] 5667 	mov	r5,a
      004A8D BD 25 45         [24] 5668 	cjne	r5,#0x25,00191$
      004A90 E5 08            [12] 5669 	mov	a,_bp
      004A92 24 15            [12] 5670 	add	a,#0x15
      004A94 F8               [12] 5671 	mov	r0,a
      004A95 E6               [12] 5672 	mov	a,@r0
      004A96 C0 E0            [24] 5673 	push	acc
      004A98 08               [12] 5674 	inc	r0
      004A99 E6               [12] 5675 	mov	a,@r0
      004A9A C0 E0            [24] 5676 	push	acc
      004A9C 08               [12] 5677 	inc	r0
      004A9D E6               [12] 5678 	mov	a,@r0
      004A9E C0 E0            [24] 5679 	push	acc
      004AA0 08               [12] 5680 	inc	r0
      004AA1 E6               [12] 5681 	mov	a,@r0
      004AA2 C0 E0            [24] 5682 	push	acc
      004AA4 E5 08            [12] 5683 	mov	a,_bp
      004AA6 24 19            [12] 5684 	add	a,#0x19
      004AA8 F8               [12] 5685 	mov	r0,a
      004AA9 86 82            [24] 5686 	mov	dpl,@r0
      004AAB 08               [12] 5687 	inc	r0
      004AAC 86 83            [24] 5688 	mov	dph,@r0
      004AAE 08               [12] 5689 	inc	r0
      004AAF 86 F0            [24] 5690 	mov	b,@r0
      004AB1 08               [12] 5691 	inc	r0
      004AB2 E6               [12] 5692 	mov	a,@r0
      004AB3 12 6C 0F         [24] 5693 	lcall	__modslong
      004AB6 AC 82            [24] 5694 	mov	r4,dpl
      004AB8 AD 83            [24] 5695 	mov	r5,dph
      004ABA AE F0            [24] 5696 	mov	r6,b
      004ABC FF               [12] 5697 	mov	r7,a
      004ABD E5 81            [12] 5698 	mov	a,sp
      004ABF 24 FC            [12] 5699 	add	a,#0xfc
      004AC1 F5 81            [12] 5700 	mov	sp,a
      004AC3 E5 08            [12] 5701 	mov	a,_bp
      004AC5 24 19            [12] 5702 	add	a,#0x19
      004AC7 F8               [12] 5703 	mov	r0,a
      004AC8 A6 04            [24] 5704 	mov	@r0,ar4
      004ACA 08               [12] 5705 	inc	r0
      004ACB A6 05            [24] 5706 	mov	@r0,ar5
      004ACD 08               [12] 5707 	inc	r0
      004ACE A6 06            [24] 5708 	mov	@r0,ar6
      004AD0 08               [12] 5709 	inc	r0
      004AD1 A6 07            [24] 5710 	mov	@r0,ar7
      004AD3 80 5F            [24] 5711 	sjmp	00192$
      004AD5                       5712 00191$:
                                   5713 ;	calc.c:272: else d1 = (unsigned long)d1 % (unsigned long)d0;
      004AD5 E5 08            [12] 5714 	mov	a,_bp
      004AD7 24 19            [12] 5715 	add	a,#0x19
      004AD9 F8               [12] 5716 	mov	r0,a
      004ADA E5 08            [12] 5717 	mov	a,_bp
      004ADC 24 07            [12] 5718 	add	a,#0x07
      004ADE F9               [12] 5719 	mov	r1,a
      004ADF E6               [12] 5720 	mov	a,@r0
      004AE0 F7               [12] 5721 	mov	@r1,a
      004AE1 08               [12] 5722 	inc	r0
      004AE2 09               [12] 5723 	inc	r1
      004AE3 E6               [12] 5724 	mov	a,@r0
      004AE4 F7               [12] 5725 	mov	@r1,a
      004AE5 08               [12] 5726 	inc	r0
      004AE6 09               [12] 5727 	inc	r1
      004AE7 E6               [12] 5728 	mov	a,@r0
      004AE8 F7               [12] 5729 	mov	@r1,a
      004AE9 08               [12] 5730 	inc	r0
      004AEA 09               [12] 5731 	inc	r1
      004AEB E6               [12] 5732 	mov	a,@r0
      004AEC F7               [12] 5733 	mov	@r1,a
      004AED E5 08            [12] 5734 	mov	a,_bp
      004AEF 24 15            [12] 5735 	add	a,#0x15
      004AF1 F8               [12] 5736 	mov	r0,a
      004AF2 86 02            [24] 5737 	mov	ar2,@r0
      004AF4 08               [12] 5738 	inc	r0
      004AF5 86 03            [24] 5739 	mov	ar3,@r0
      004AF7 08               [12] 5740 	inc	r0
      004AF8 86 06            [24] 5741 	mov	ar6,@r0
      004AFA 08               [12] 5742 	inc	r0
      004AFB 86 07            [24] 5743 	mov	ar7,@r0
      004AFD C0 02            [24] 5744 	push	ar2
      004AFF C0 03            [24] 5745 	push	ar3
      004B01 C0 06            [24] 5746 	push	ar6
      004B03 C0 07            [24] 5747 	push	ar7
      004B05 E5 08            [12] 5748 	mov	a,_bp
      004B07 24 07            [12] 5749 	add	a,#0x07
      004B09 F8               [12] 5750 	mov	r0,a
      004B0A 86 82            [24] 5751 	mov	dpl,@r0
      004B0C 08               [12] 5752 	inc	r0
      004B0D 86 83            [24] 5753 	mov	dph,@r0
      004B0F 08               [12] 5754 	inc	r0
      004B10 86 F0            [24] 5755 	mov	b,@r0
      004B12 08               [12] 5756 	inc	r0
      004B13 E6               [12] 5757 	mov	a,@r0
      004B14 12 6D 06         [24] 5758 	lcall	__modulong
      004B17 AC 82            [24] 5759 	mov	r4,dpl
      004B19 AD 83            [24] 5760 	mov	r5,dph
      004B1B AE F0            [24] 5761 	mov	r6,b
      004B1D FF               [12] 5762 	mov	r7,a
      004B1E E5 81            [12] 5763 	mov	a,sp
      004B20 24 FC            [12] 5764 	add	a,#0xfc
      004B22 F5 81            [12] 5765 	mov	sp,a
      004B24 E5 08            [12] 5766 	mov	a,_bp
      004B26 24 19            [12] 5767 	add	a,#0x19
      004B28 F8               [12] 5768 	mov	r0,a
      004B29 A6 04            [24] 5769 	mov	@r0,ar4
      004B2B 08               [12] 5770 	inc	r0
      004B2C A6 05            [24] 5771 	mov	@r0,ar5
      004B2E 08               [12] 5772 	inc	r0
      004B2F A6 06            [24] 5773 	mov	@r0,ar6
      004B31 08               [12] 5774 	inc	r0
      004B32 A6 07            [24] 5775 	mov	@r0,ar7
      004B34                       5776 00192$:
                                   5777 ;	calc.c:273: (void)stack_push(ctx->ps, d1);
      004B34 E5 08            [12] 5778 	mov	a,_bp
      004B36 24 0E            [12] 5779 	add	a,#0x0e
      004B38 F8               [12] 5780 	mov	r0,a
      004B39 86 82            [24] 5781 	mov	dpl,@r0
      004B3B 08               [12] 5782 	inc	r0
      004B3C 86 83            [24] 5783 	mov	dph,@r0
      004B3E 08               [12] 5784 	inc	r0
      004B3F 86 F0            [24] 5785 	mov	b,@r0
      004B41 12 6F D1         [24] 5786 	lcall	__gptrget
      004B44 FD               [12] 5787 	mov	r5,a
      004B45 A3               [24] 5788 	inc	dptr
      004B46 12 6F D1         [24] 5789 	lcall	__gptrget
      004B49 FE               [12] 5790 	mov	r6,a
      004B4A A3               [24] 5791 	inc	dptr
      004B4B 12 6F D1         [24] 5792 	lcall	__gptrget
      004B4E FF               [12] 5793 	mov	r7,a
      004B4F E5 08            [12] 5794 	mov	a,_bp
      004B51 24 19            [12] 5795 	add	a,#0x19
      004B53 F8               [12] 5796 	mov	r0,a
      004B54 E6               [12] 5797 	mov	a,@r0
      004B55 C0 E0            [24] 5798 	push	acc
      004B57 08               [12] 5799 	inc	r0
      004B58 E6               [12] 5800 	mov	a,@r0
      004B59 C0 E0            [24] 5801 	push	acc
      004B5B 08               [12] 5802 	inc	r0
      004B5C E6               [12] 5803 	mov	a,@r0
      004B5D C0 E0            [24] 5804 	push	acc
      004B5F 08               [12] 5805 	inc	r0
      004B60 E6               [12] 5806 	mov	a,@r0
      004B61 C0 E0            [24] 5807 	push	acc
      004B63 8D 82            [24] 5808 	mov	dpl,r5
      004B65 8E 83            [24] 5809 	mov	dph,r6
      004B67 8F F0            [24] 5810 	mov	b,r7
      004B69 12 26 BA         [24] 5811 	lcall	_stack_push
      004B6C E5 81            [12] 5812 	mov	a,sp
      004B6E 24 FC            [12] 5813 	add	a,#0xfc
      004B70 F5 81            [12] 5814 	mov	sp,a
                                   5815 ;	calc.c:275: break;
      004B72 02 56 1B         [24] 5816 	ljmp	00249$
                                   5817 ;	calc.c:276: case '&':
      004B75                       5818 00202$:
                                   5819 ;	calc.c:277: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004B75 E5 08            [12] 5820 	mov	a,_bp
      004B77 24 15            [12] 5821 	add	a,#0x15
      004B79 FF               [12] 5822 	mov	r7,a
      004B7A E5 08            [12] 5823 	mov	a,_bp
      004B7C 24 0E            [12] 5824 	add	a,#0x0e
      004B7E F8               [12] 5825 	mov	r0,a
      004B7F A6 07            [24] 5826 	mov	@r0,ar7
      004B81 08               [12] 5827 	inc	r0
      004B82 76 00            [12] 5828 	mov	@r0,#0x00
      004B84 08               [12] 5829 	inc	r0
      004B85 76 40            [12] 5830 	mov	@r0,#0x40
      004B87 E5 08            [12] 5831 	mov	a,_bp
      004B89 24 12            [12] 5832 	add	a,#0x12
      004B8B F8               [12] 5833 	mov	r0,a
      004B8C 74 13            [12] 5834 	mov	a,#0x13
      004B8E 26               [12] 5835 	add	a,@r0
      004B8F FA               [12] 5836 	mov	r2,a
      004B90 74 40            [12] 5837 	mov	a,#0x40
      004B92 08               [12] 5838 	inc	r0
      004B93 36               [12] 5839 	addc	a,@r0
      004B94 FB               [12] 5840 	mov	r3,a
      004B95 08               [12] 5841 	inc	r0
      004B96 86 04            [24] 5842 	mov	ar4,@r0
      004B98 8A 82            [24] 5843 	mov	dpl,r2
      004B9A 8B 83            [24] 5844 	mov	dph,r3
      004B9C 8C F0            [24] 5845 	mov	b,r4
      004B9E 12 6F D1         [24] 5846 	lcall	__gptrget
      004BA1 FD               [12] 5847 	mov	r5,a
      004BA2 A3               [24] 5848 	inc	dptr
      004BA3 12 6F D1         [24] 5849 	lcall	__gptrget
      004BA6 FE               [12] 5850 	mov	r6,a
      004BA7 A3               [24] 5851 	inc	dptr
      004BA8 12 6F D1         [24] 5852 	lcall	__gptrget
      004BAB FF               [12] 5853 	mov	r7,a
      004BAC C0 04            [24] 5854 	push	ar4
      004BAE C0 03            [24] 5855 	push	ar3
      004BB0 C0 02            [24] 5856 	push	ar2
      004BB2 E5 08            [12] 5857 	mov	a,_bp
      004BB4 24 0E            [12] 5858 	add	a,#0x0e
      004BB6 F8               [12] 5859 	mov	r0,a
      004BB7 E6               [12] 5860 	mov	a,@r0
      004BB8 C0 E0            [24] 5861 	push	acc
      004BBA 08               [12] 5862 	inc	r0
      004BBB E6               [12] 5863 	mov	a,@r0
      004BBC C0 E0            [24] 5864 	push	acc
      004BBE 08               [12] 5865 	inc	r0
      004BBF E6               [12] 5866 	mov	a,@r0
      004BC0 C0 E0            [24] 5867 	push	acc
      004BC2 8D 82            [24] 5868 	mov	dpl,r5
      004BC4 8E 83            [24] 5869 	mov	dph,r6
      004BC6 8F F0            [24] 5870 	mov	b,r7
      004BC8 12 27 B4         [24] 5871 	lcall	_stack_pop
      004BCB AE 82            [24] 5872 	mov	r6,dpl
      004BCD AF 83            [24] 5873 	mov	r7,dph
      004BCF 15 81            [12] 5874 	dec	sp
      004BD1 15 81            [12] 5875 	dec	sp
      004BD3 15 81            [12] 5876 	dec	sp
      004BD5 D0 02            [24] 5877 	pop	ar2
      004BD7 D0 03            [24] 5878 	pop	ar3
      004BD9 D0 04            [24] 5879 	pop	ar4
      004BDB EE               [12] 5880 	mov	a,r6
      004BDC 4F               [12] 5881 	orl	a,r7
      004BDD 70 25            [24] 5882 	jnz	00207$
      004BDF 7D 96            [12] 5883 	mov	r5,#___str_10
      004BE1 7C 88            [12] 5884 	mov	r4,#(___str_10 >> 8)
      004BE3 7B 80            [12] 5885 	mov	r3,#0x80
                                   5886 ;	calc.c:51: return;
      004BE5                       5887 00460$:
                                   5888 ;	calc.c:49: for (; *s; s++) putchar(*s);
      004BE5 8D 82            [24] 5889 	mov	dpl,r5
      004BE7 8C 83            [24] 5890 	mov	dph,r4
      004BE9 8B F0            [24] 5891 	mov	b,r3
      004BEB 12 6F D1         [24] 5892 	lcall	__gptrget
      004BEE FF               [12] 5893 	mov	r7,a
      004BEF 70 03            [24] 5894 	jnz	01364$
      004BF1 02 56 1B         [24] 5895 	ljmp	00249$
      004BF4                       5896 01364$:
      004BF4 7E 00            [12] 5897 	mov	r6,#0x00
      004BF6 8F 82            [24] 5898 	mov	dpl,r7
      004BF8 8E 83            [24] 5899 	mov	dph,r6
      004BFA 12 2B D5         [24] 5900 	lcall	_putchar
      004BFD 0D               [12] 5901 	inc	r5
                                   5902 ;	calc.c:277: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004BFE BD 00 E4         [24] 5903 	cjne	r5,#0x00,00460$
      004C01 0C               [12] 5904 	inc	r4
      004C02 80 E1            [24] 5905 	sjmp	00460$
      004C04                       5906 00207$:
                                   5907 ;	calc.c:278: else if (!stack_pop(ctx->ps, &d1)) {
      004C04 E5 08            [12] 5908 	mov	a,_bp
      004C06 24 19            [12] 5909 	add	a,#0x19
      004C08 FF               [12] 5910 	mov	r7,a
      004C09 E5 08            [12] 5911 	mov	a,_bp
      004C0B 24 0E            [12] 5912 	add	a,#0x0e
      004C0D F8               [12] 5913 	mov	r0,a
      004C0E A6 07            [24] 5914 	mov	@r0,ar7
      004C10 08               [12] 5915 	inc	r0
      004C11 76 00            [12] 5916 	mov	@r0,#0x00
      004C13 08               [12] 5917 	inc	r0
      004C14 76 40            [12] 5918 	mov	@r0,#0x40
      004C16 8A 82            [24] 5919 	mov	dpl,r2
      004C18 8B 83            [24] 5920 	mov	dph,r3
      004C1A 8C F0            [24] 5921 	mov	b,r4
      004C1C 12 6F D1         [24] 5922 	lcall	__gptrget
      004C1F FD               [12] 5923 	mov	r5,a
      004C20 A3               [24] 5924 	inc	dptr
      004C21 12 6F D1         [24] 5925 	lcall	__gptrget
      004C24 FE               [12] 5926 	mov	r6,a
      004C25 A3               [24] 5927 	inc	dptr
      004C26 12 6F D1         [24] 5928 	lcall	__gptrget
      004C29 FF               [12] 5929 	mov	r7,a
      004C2A C0 04            [24] 5930 	push	ar4
      004C2C C0 03            [24] 5931 	push	ar3
      004C2E C0 02            [24] 5932 	push	ar2
      004C30 E5 08            [12] 5933 	mov	a,_bp
      004C32 24 0E            [12] 5934 	add	a,#0x0e
      004C34 F8               [12] 5935 	mov	r0,a
      004C35 E6               [12] 5936 	mov	a,@r0
      004C36 C0 E0            [24] 5937 	push	acc
      004C38 08               [12] 5938 	inc	r0
      004C39 E6               [12] 5939 	mov	a,@r0
      004C3A C0 E0            [24] 5940 	push	acc
      004C3C 08               [12] 5941 	inc	r0
      004C3D E6               [12] 5942 	mov	a,@r0
      004C3E C0 E0            [24] 5943 	push	acc
      004C40 8D 82            [24] 5944 	mov	dpl,r5
      004C42 8E 83            [24] 5945 	mov	dph,r6
      004C44 8F F0            [24] 5946 	mov	b,r7
      004C46 12 27 B4         [24] 5947 	lcall	_stack_pop
      004C49 AE 82            [24] 5948 	mov	r6,dpl
      004C4B AF 83            [24] 5949 	mov	r7,dph
      004C4D 15 81            [12] 5950 	dec	sp
      004C4F 15 81            [12] 5951 	dec	sp
      004C51 15 81            [12] 5952 	dec	sp
      004C53 D0 02            [24] 5953 	pop	ar2
      004C55 D0 03            [24] 5954 	pop	ar3
      004C57 D0 04            [24] 5955 	pop	ar4
      004C59 EE               [12] 5956 	mov	a,r6
      004C5A 4F               [12] 5957 	orl	a,r7
      004C5B 70 5C            [24] 5958 	jnz	00204$
                                   5959 ;	calc.c:279: (void)stack_push(ctx->ps, d0);
      004C5D 8A 82            [24] 5960 	mov	dpl,r2
      004C5F 8B 83            [24] 5961 	mov	dph,r3
      004C61 8C F0            [24] 5962 	mov	b,r4
      004C63 12 6F D1         [24] 5963 	lcall	__gptrget
      004C66 FD               [12] 5964 	mov	r5,a
      004C67 A3               [24] 5965 	inc	dptr
      004C68 12 6F D1         [24] 5966 	lcall	__gptrget
      004C6B FE               [12] 5967 	mov	r6,a
      004C6C A3               [24] 5968 	inc	dptr
      004C6D 12 6F D1         [24] 5969 	lcall	__gptrget
      004C70 FF               [12] 5970 	mov	r7,a
      004C71 E5 08            [12] 5971 	mov	a,_bp
      004C73 24 15            [12] 5972 	add	a,#0x15
      004C75 F8               [12] 5973 	mov	r0,a
      004C76 E6               [12] 5974 	mov	a,@r0
      004C77 C0 E0            [24] 5975 	push	acc
      004C79 08               [12] 5976 	inc	r0
      004C7A E6               [12] 5977 	mov	a,@r0
      004C7B C0 E0            [24] 5978 	push	acc
      004C7D 08               [12] 5979 	inc	r0
      004C7E E6               [12] 5980 	mov	a,@r0
      004C7F C0 E0            [24] 5981 	push	acc
      004C81 08               [12] 5982 	inc	r0
      004C82 E6               [12] 5983 	mov	a,@r0
      004C83 C0 E0            [24] 5984 	push	acc
      004C85 8D 82            [24] 5985 	mov	dpl,r5
      004C87 8E 83            [24] 5986 	mov	dph,r6
      004C89 8F F0            [24] 5987 	mov	b,r7
      004C8B 12 26 BA         [24] 5988 	lcall	_stack_push
      004C8E E5 81            [12] 5989 	mov	a,sp
      004C90 24 FC            [12] 5990 	add	a,#0xfc
      004C92 F5 81            [12] 5991 	mov	sp,a
                                   5992 ;	calc.c:280: printstr("\r\nstack underflow\r\n");
      004C94 7D 96            [12] 5993 	mov	r5,#___str_10
      004C96 7C 88            [12] 5994 	mov	r4,#(___str_10 >> 8)
      004C98 7B 80            [12] 5995 	mov	r3,#0x80
                                   5996 ;	calc.c:51: return;
      004C9A                       5997 00463$:
                                   5998 ;	calc.c:49: for (; *s; s++) putchar(*s);
      004C9A 8D 82            [24] 5999 	mov	dpl,r5
      004C9C 8C 83            [24] 6000 	mov	dph,r4
      004C9E 8B F0            [24] 6001 	mov	b,r3
      004CA0 12 6F D1         [24] 6002 	lcall	__gptrget
      004CA3 FF               [12] 6003 	mov	r7,a
      004CA4 70 03            [24] 6004 	jnz	01367$
      004CA6 02 56 1B         [24] 6005 	ljmp	00249$
      004CA9                       6006 01367$:
      004CA9 7E 00            [12] 6007 	mov	r6,#0x00
      004CAB 8F 82            [24] 6008 	mov	dpl,r7
      004CAD 8E 83            [24] 6009 	mov	dph,r6
      004CAF 12 2B D5         [24] 6010 	lcall	_putchar
      004CB2 0D               [12] 6011 	inc	r5
                                   6012 ;	calc.c:280: printstr("\r\nstack underflow\r\n");
      004CB3 BD 00 E4         [24] 6013 	cjne	r5,#0x00,00463$
      004CB6 0C               [12] 6014 	inc	r4
      004CB7 80 E1            [24] 6015 	sjmp	00463$
      004CB9                       6016 00204$:
                                   6017 ;	calc.c:282: d1 &= d0;
      004CB9 E5 08            [12] 6018 	mov	a,_bp
      004CBB 24 19            [12] 6019 	add	a,#0x19
      004CBD F8               [12] 6020 	mov	r0,a
      004CBE E5 08            [12] 6021 	mov	a,_bp
      004CC0 24 15            [12] 6022 	add	a,#0x15
      004CC2 F9               [12] 6023 	mov	r1,a
      004CC3 E7               [12] 6024 	mov	a,@r1
      004CC4 56               [12] 6025 	anl	a,@r0
      004CC5 F6               [12] 6026 	mov	@r0,a
      004CC6 09               [12] 6027 	inc	r1
      004CC7 E7               [12] 6028 	mov	a,@r1
      004CC8 08               [12] 6029 	inc	r0
      004CC9 56               [12] 6030 	anl	a,@r0
      004CCA F6               [12] 6031 	mov	@r0,a
      004CCB 09               [12] 6032 	inc	r1
      004CCC E7               [12] 6033 	mov	a,@r1
      004CCD 08               [12] 6034 	inc	r0
      004CCE 56               [12] 6035 	anl	a,@r0
      004CCF F6               [12] 6036 	mov	@r0,a
      004CD0 09               [12] 6037 	inc	r1
      004CD1 E7               [12] 6038 	mov	a,@r1
      004CD2 08               [12] 6039 	inc	r0
      004CD3 56               [12] 6040 	anl	a,@r0
      004CD4 F6               [12] 6041 	mov	@r0,a
                                   6042 ;	calc.c:283: (void)stack_push(ctx->ps, d1);
      004CD5 8A 82            [24] 6043 	mov	dpl,r2
      004CD7 8B 83            [24] 6044 	mov	dph,r3
      004CD9 8C F0            [24] 6045 	mov	b,r4
      004CDB 12 6F D1         [24] 6046 	lcall	__gptrget
      004CDE FA               [12] 6047 	mov	r2,a
      004CDF A3               [24] 6048 	inc	dptr
      004CE0 12 6F D1         [24] 6049 	lcall	__gptrget
      004CE3 FB               [12] 6050 	mov	r3,a
      004CE4 A3               [24] 6051 	inc	dptr
      004CE5 12 6F D1         [24] 6052 	lcall	__gptrget
      004CE8 FC               [12] 6053 	mov	r4,a
      004CE9 E5 08            [12] 6054 	mov	a,_bp
      004CEB 24 19            [12] 6055 	add	a,#0x19
      004CED F8               [12] 6056 	mov	r0,a
      004CEE E6               [12] 6057 	mov	a,@r0
      004CEF C0 E0            [24] 6058 	push	acc
      004CF1 08               [12] 6059 	inc	r0
      004CF2 E6               [12] 6060 	mov	a,@r0
      004CF3 C0 E0            [24] 6061 	push	acc
      004CF5 08               [12] 6062 	inc	r0
      004CF6 E6               [12] 6063 	mov	a,@r0
      004CF7 C0 E0            [24] 6064 	push	acc
      004CF9 08               [12] 6065 	inc	r0
      004CFA E6               [12] 6066 	mov	a,@r0
      004CFB C0 E0            [24] 6067 	push	acc
      004CFD 8A 82            [24] 6068 	mov	dpl,r2
      004CFF 8B 83            [24] 6069 	mov	dph,r3
      004D01 8C F0            [24] 6070 	mov	b,r4
      004D03 12 26 BA         [24] 6071 	lcall	_stack_push
      004D06 E5 81            [12] 6072 	mov	a,sp
      004D08 24 FC            [12] 6073 	add	a,#0xfc
      004D0A F5 81            [12] 6074 	mov	sp,a
                                   6075 ;	calc.c:285: break;
      004D0C 02 56 1B         [24] 6076 	ljmp	00249$
                                   6077 ;	calc.c:286: case '|':
      004D0F                       6078 00209$:
                                   6079 ;	calc.c:287: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004D0F E5 08            [12] 6080 	mov	a,_bp
      004D11 24 15            [12] 6081 	add	a,#0x15
      004D13 FF               [12] 6082 	mov	r7,a
      004D14 E5 08            [12] 6083 	mov	a,_bp
      004D16 24 0E            [12] 6084 	add	a,#0x0e
      004D18 F8               [12] 6085 	mov	r0,a
      004D19 A6 07            [24] 6086 	mov	@r0,ar7
      004D1B 08               [12] 6087 	inc	r0
      004D1C 76 00            [12] 6088 	mov	@r0,#0x00
      004D1E 08               [12] 6089 	inc	r0
      004D1F 76 40            [12] 6090 	mov	@r0,#0x40
      004D21 E5 08            [12] 6091 	mov	a,_bp
      004D23 24 12            [12] 6092 	add	a,#0x12
      004D25 F8               [12] 6093 	mov	r0,a
      004D26 74 13            [12] 6094 	mov	a,#0x13
      004D28 26               [12] 6095 	add	a,@r0
      004D29 FA               [12] 6096 	mov	r2,a
      004D2A 74 40            [12] 6097 	mov	a,#0x40
      004D2C 08               [12] 6098 	inc	r0
      004D2D 36               [12] 6099 	addc	a,@r0
      004D2E FB               [12] 6100 	mov	r3,a
      004D2F 08               [12] 6101 	inc	r0
      004D30 86 04            [24] 6102 	mov	ar4,@r0
      004D32 8A 82            [24] 6103 	mov	dpl,r2
      004D34 8B 83            [24] 6104 	mov	dph,r3
      004D36 8C F0            [24] 6105 	mov	b,r4
      004D38 12 6F D1         [24] 6106 	lcall	__gptrget
      004D3B FD               [12] 6107 	mov	r5,a
      004D3C A3               [24] 6108 	inc	dptr
      004D3D 12 6F D1         [24] 6109 	lcall	__gptrget
      004D40 FE               [12] 6110 	mov	r6,a
      004D41 A3               [24] 6111 	inc	dptr
      004D42 12 6F D1         [24] 6112 	lcall	__gptrget
      004D45 FF               [12] 6113 	mov	r7,a
      004D46 C0 04            [24] 6114 	push	ar4
      004D48 C0 03            [24] 6115 	push	ar3
      004D4A C0 02            [24] 6116 	push	ar2
      004D4C E5 08            [12] 6117 	mov	a,_bp
      004D4E 24 0E            [12] 6118 	add	a,#0x0e
      004D50 F8               [12] 6119 	mov	r0,a
      004D51 E6               [12] 6120 	mov	a,@r0
      004D52 C0 E0            [24] 6121 	push	acc
      004D54 08               [12] 6122 	inc	r0
      004D55 E6               [12] 6123 	mov	a,@r0
      004D56 C0 E0            [24] 6124 	push	acc
      004D58 08               [12] 6125 	inc	r0
      004D59 E6               [12] 6126 	mov	a,@r0
      004D5A C0 E0            [24] 6127 	push	acc
      004D5C 8D 82            [24] 6128 	mov	dpl,r5
      004D5E 8E 83            [24] 6129 	mov	dph,r6
      004D60 8F F0            [24] 6130 	mov	b,r7
      004D62 12 27 B4         [24] 6131 	lcall	_stack_pop
      004D65 AE 82            [24] 6132 	mov	r6,dpl
      004D67 AF 83            [24] 6133 	mov	r7,dph
      004D69 15 81            [12] 6134 	dec	sp
      004D6B 15 81            [12] 6135 	dec	sp
      004D6D 15 81            [12] 6136 	dec	sp
      004D6F D0 02            [24] 6137 	pop	ar2
      004D71 D0 03            [24] 6138 	pop	ar3
      004D73 D0 04            [24] 6139 	pop	ar4
      004D75 EE               [12] 6140 	mov	a,r6
      004D76 4F               [12] 6141 	orl	a,r7
      004D77 70 25            [24] 6142 	jnz	00214$
      004D79 7D 96            [12] 6143 	mov	r5,#___str_10
      004D7B 7C 88            [12] 6144 	mov	r4,#(___str_10 >> 8)
      004D7D 7B 80            [12] 6145 	mov	r3,#0x80
                                   6146 ;	calc.c:51: return;
      004D7F                       6147 00466$:
                                   6148 ;	calc.c:49: for (; *s; s++) putchar(*s);
      004D7F 8D 82            [24] 6149 	mov	dpl,r5
      004D81 8C 83            [24] 6150 	mov	dph,r4
      004D83 8B F0            [24] 6151 	mov	b,r3
      004D85 12 6F D1         [24] 6152 	lcall	__gptrget
      004D88 FF               [12] 6153 	mov	r7,a
      004D89 70 03            [24] 6154 	jnz	01370$
      004D8B 02 56 1B         [24] 6155 	ljmp	00249$
      004D8E                       6156 01370$:
      004D8E 7E 00            [12] 6157 	mov	r6,#0x00
      004D90 8F 82            [24] 6158 	mov	dpl,r7
      004D92 8E 83            [24] 6159 	mov	dph,r6
      004D94 12 2B D5         [24] 6160 	lcall	_putchar
      004D97 0D               [12] 6161 	inc	r5
                                   6162 ;	calc.c:287: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004D98 BD 00 E4         [24] 6163 	cjne	r5,#0x00,00466$
      004D9B 0C               [12] 6164 	inc	r4
      004D9C 80 E1            [24] 6165 	sjmp	00466$
      004D9E                       6166 00214$:
                                   6167 ;	calc.c:288: else if (!stack_pop(ctx->ps, &d1)) {
      004D9E E5 08            [12] 6168 	mov	a,_bp
      004DA0 24 19            [12] 6169 	add	a,#0x19
      004DA2 FF               [12] 6170 	mov	r7,a
      004DA3 E5 08            [12] 6171 	mov	a,_bp
      004DA5 24 0E            [12] 6172 	add	a,#0x0e
      004DA7 F8               [12] 6173 	mov	r0,a
      004DA8 A6 07            [24] 6174 	mov	@r0,ar7
      004DAA 08               [12] 6175 	inc	r0
      004DAB 76 00            [12] 6176 	mov	@r0,#0x00
      004DAD 08               [12] 6177 	inc	r0
      004DAE 76 40            [12] 6178 	mov	@r0,#0x40
      004DB0 8A 82            [24] 6179 	mov	dpl,r2
      004DB2 8B 83            [24] 6180 	mov	dph,r3
      004DB4 8C F0            [24] 6181 	mov	b,r4
      004DB6 12 6F D1         [24] 6182 	lcall	__gptrget
      004DB9 FD               [12] 6183 	mov	r5,a
      004DBA A3               [24] 6184 	inc	dptr
      004DBB 12 6F D1         [24] 6185 	lcall	__gptrget
      004DBE FE               [12] 6186 	mov	r6,a
      004DBF A3               [24] 6187 	inc	dptr
      004DC0 12 6F D1         [24] 6188 	lcall	__gptrget
      004DC3 FF               [12] 6189 	mov	r7,a
      004DC4 C0 04            [24] 6190 	push	ar4
      004DC6 C0 03            [24] 6191 	push	ar3
      004DC8 C0 02            [24] 6192 	push	ar2
      004DCA E5 08            [12] 6193 	mov	a,_bp
      004DCC 24 0E            [12] 6194 	add	a,#0x0e
      004DCE F8               [12] 6195 	mov	r0,a
      004DCF E6               [12] 6196 	mov	a,@r0
      004DD0 C0 E0            [24] 6197 	push	acc
      004DD2 08               [12] 6198 	inc	r0
      004DD3 E6               [12] 6199 	mov	a,@r0
      004DD4 C0 E0            [24] 6200 	push	acc
      004DD6 08               [12] 6201 	inc	r0
      004DD7 E6               [12] 6202 	mov	a,@r0
      004DD8 C0 E0            [24] 6203 	push	acc
      004DDA 8D 82            [24] 6204 	mov	dpl,r5
      004DDC 8E 83            [24] 6205 	mov	dph,r6
      004DDE 8F F0            [24] 6206 	mov	b,r7
      004DE0 12 27 B4         [24] 6207 	lcall	_stack_pop
      004DE3 AE 82            [24] 6208 	mov	r6,dpl
      004DE5 AF 83            [24] 6209 	mov	r7,dph
      004DE7 15 81            [12] 6210 	dec	sp
      004DE9 15 81            [12] 6211 	dec	sp
      004DEB 15 81            [12] 6212 	dec	sp
      004DED D0 02            [24] 6213 	pop	ar2
      004DEF D0 03            [24] 6214 	pop	ar3
      004DF1 D0 04            [24] 6215 	pop	ar4
      004DF3 EE               [12] 6216 	mov	a,r6
      004DF4 4F               [12] 6217 	orl	a,r7
      004DF5 70 5C            [24] 6218 	jnz	00211$
                                   6219 ;	calc.c:289: (void)stack_push(ctx->ps, d0);
      004DF7 8A 82            [24] 6220 	mov	dpl,r2
      004DF9 8B 83            [24] 6221 	mov	dph,r3
      004DFB 8C F0            [24] 6222 	mov	b,r4
      004DFD 12 6F D1         [24] 6223 	lcall	__gptrget
      004E00 FD               [12] 6224 	mov	r5,a
      004E01 A3               [24] 6225 	inc	dptr
      004E02 12 6F D1         [24] 6226 	lcall	__gptrget
      004E05 FE               [12] 6227 	mov	r6,a
      004E06 A3               [24] 6228 	inc	dptr
      004E07 12 6F D1         [24] 6229 	lcall	__gptrget
      004E0A FF               [12] 6230 	mov	r7,a
      004E0B E5 08            [12] 6231 	mov	a,_bp
      004E0D 24 15            [12] 6232 	add	a,#0x15
      004E0F F8               [12] 6233 	mov	r0,a
      004E10 E6               [12] 6234 	mov	a,@r0
      004E11 C0 E0            [24] 6235 	push	acc
      004E13 08               [12] 6236 	inc	r0
      004E14 E6               [12] 6237 	mov	a,@r0
      004E15 C0 E0            [24] 6238 	push	acc
      004E17 08               [12] 6239 	inc	r0
      004E18 E6               [12] 6240 	mov	a,@r0
      004E19 C0 E0            [24] 6241 	push	acc
      004E1B 08               [12] 6242 	inc	r0
      004E1C E6               [12] 6243 	mov	a,@r0
      004E1D C0 E0            [24] 6244 	push	acc
      004E1F 8D 82            [24] 6245 	mov	dpl,r5
      004E21 8E 83            [24] 6246 	mov	dph,r6
      004E23 8F F0            [24] 6247 	mov	b,r7
      004E25 12 26 BA         [24] 6248 	lcall	_stack_push
      004E28 E5 81            [12] 6249 	mov	a,sp
      004E2A 24 FC            [12] 6250 	add	a,#0xfc
      004E2C F5 81            [12] 6251 	mov	sp,a
                                   6252 ;	calc.c:290: printstr("\r\nstack underflow\r\n");
      004E2E 7D 96            [12] 6253 	mov	r5,#___str_10
      004E30 7C 88            [12] 6254 	mov	r4,#(___str_10 >> 8)
      004E32 7B 80            [12] 6255 	mov	r3,#0x80
                                   6256 ;	calc.c:51: return;
      004E34                       6257 00469$:
                                   6258 ;	calc.c:49: for (; *s; s++) putchar(*s);
      004E34 8D 82            [24] 6259 	mov	dpl,r5
      004E36 8C 83            [24] 6260 	mov	dph,r4
      004E38 8B F0            [24] 6261 	mov	b,r3
      004E3A 12 6F D1         [24] 6262 	lcall	__gptrget
      004E3D FF               [12] 6263 	mov	r7,a
      004E3E 70 03            [24] 6264 	jnz	01373$
      004E40 02 56 1B         [24] 6265 	ljmp	00249$
      004E43                       6266 01373$:
      004E43 7E 00            [12] 6267 	mov	r6,#0x00
      004E45 8F 82            [24] 6268 	mov	dpl,r7
      004E47 8E 83            [24] 6269 	mov	dph,r6
      004E49 12 2B D5         [24] 6270 	lcall	_putchar
      004E4C 0D               [12] 6271 	inc	r5
                                   6272 ;	calc.c:290: printstr("\r\nstack underflow\r\n");
      004E4D BD 00 E4         [24] 6273 	cjne	r5,#0x00,00469$
      004E50 0C               [12] 6274 	inc	r4
      004E51 80 E1            [24] 6275 	sjmp	00469$
      004E53                       6276 00211$:
                                   6277 ;	calc.c:292: d1 |= d0;
      004E53 E5 08            [12] 6278 	mov	a,_bp
      004E55 24 19            [12] 6279 	add	a,#0x19
      004E57 F8               [12] 6280 	mov	r0,a
      004E58 E5 08            [12] 6281 	mov	a,_bp
      004E5A 24 15            [12] 6282 	add	a,#0x15
      004E5C F9               [12] 6283 	mov	r1,a
      004E5D E7               [12] 6284 	mov	a,@r1
      004E5E 46               [12] 6285 	orl	a,@r0
      004E5F F6               [12] 6286 	mov	@r0,a
      004E60 09               [12] 6287 	inc	r1
      004E61 E7               [12] 6288 	mov	a,@r1
      004E62 08               [12] 6289 	inc	r0
      004E63 46               [12] 6290 	orl	a,@r0
      004E64 F6               [12] 6291 	mov	@r0,a
      004E65 09               [12] 6292 	inc	r1
      004E66 E7               [12] 6293 	mov	a,@r1
      004E67 08               [12] 6294 	inc	r0
      004E68 46               [12] 6295 	orl	a,@r0
      004E69 F6               [12] 6296 	mov	@r0,a
      004E6A 09               [12] 6297 	inc	r1
      004E6B E7               [12] 6298 	mov	a,@r1
      004E6C 08               [12] 6299 	inc	r0
      004E6D 46               [12] 6300 	orl	a,@r0
      004E6E F6               [12] 6301 	mov	@r0,a
                                   6302 ;	calc.c:293: (void)stack_push(ctx->ps, d1);
      004E6F 8A 82            [24] 6303 	mov	dpl,r2
      004E71 8B 83            [24] 6304 	mov	dph,r3
      004E73 8C F0            [24] 6305 	mov	b,r4
      004E75 12 6F D1         [24] 6306 	lcall	__gptrget
      004E78 FA               [12] 6307 	mov	r2,a
      004E79 A3               [24] 6308 	inc	dptr
      004E7A 12 6F D1         [24] 6309 	lcall	__gptrget
      004E7D FB               [12] 6310 	mov	r3,a
      004E7E A3               [24] 6311 	inc	dptr
      004E7F 12 6F D1         [24] 6312 	lcall	__gptrget
      004E82 FC               [12] 6313 	mov	r4,a
      004E83 E5 08            [12] 6314 	mov	a,_bp
      004E85 24 19            [12] 6315 	add	a,#0x19
      004E87 F8               [12] 6316 	mov	r0,a
      004E88 E6               [12] 6317 	mov	a,@r0
      004E89 C0 E0            [24] 6318 	push	acc
      004E8B 08               [12] 6319 	inc	r0
      004E8C E6               [12] 6320 	mov	a,@r0
      004E8D C0 E0            [24] 6321 	push	acc
      004E8F 08               [12] 6322 	inc	r0
      004E90 E6               [12] 6323 	mov	a,@r0
      004E91 C0 E0            [24] 6324 	push	acc
      004E93 08               [12] 6325 	inc	r0
      004E94 E6               [12] 6326 	mov	a,@r0
      004E95 C0 E0            [24] 6327 	push	acc
      004E97 8A 82            [24] 6328 	mov	dpl,r2
      004E99 8B 83            [24] 6329 	mov	dph,r3
      004E9B 8C F0            [24] 6330 	mov	b,r4
      004E9D 12 26 BA         [24] 6331 	lcall	_stack_push
      004EA0 E5 81            [12] 6332 	mov	a,sp
      004EA2 24 FC            [12] 6333 	add	a,#0xfc
      004EA4 F5 81            [12] 6334 	mov	sp,a
                                   6335 ;	calc.c:295: break;
      004EA6 02 56 1B         [24] 6336 	ljmp	00249$
                                   6337 ;	calc.c:296: case '^':
      004EA9                       6338 00216$:
                                   6339 ;	calc.c:297: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004EA9 E5 08            [12] 6340 	mov	a,_bp
      004EAB 24 15            [12] 6341 	add	a,#0x15
      004EAD FF               [12] 6342 	mov	r7,a
      004EAE E5 08            [12] 6343 	mov	a,_bp
      004EB0 24 0E            [12] 6344 	add	a,#0x0e
      004EB2 F8               [12] 6345 	mov	r0,a
      004EB3 A6 07            [24] 6346 	mov	@r0,ar7
      004EB5 08               [12] 6347 	inc	r0
      004EB6 76 00            [12] 6348 	mov	@r0,#0x00
      004EB8 08               [12] 6349 	inc	r0
      004EB9 76 40            [12] 6350 	mov	@r0,#0x40
      004EBB E5 08            [12] 6351 	mov	a,_bp
      004EBD 24 12            [12] 6352 	add	a,#0x12
      004EBF F8               [12] 6353 	mov	r0,a
      004EC0 74 13            [12] 6354 	mov	a,#0x13
      004EC2 26               [12] 6355 	add	a,@r0
      004EC3 FA               [12] 6356 	mov	r2,a
      004EC4 74 40            [12] 6357 	mov	a,#0x40
      004EC6 08               [12] 6358 	inc	r0
      004EC7 36               [12] 6359 	addc	a,@r0
      004EC8 FB               [12] 6360 	mov	r3,a
      004EC9 08               [12] 6361 	inc	r0
      004ECA 86 04            [24] 6362 	mov	ar4,@r0
      004ECC 8A 82            [24] 6363 	mov	dpl,r2
      004ECE 8B 83            [24] 6364 	mov	dph,r3
      004ED0 8C F0            [24] 6365 	mov	b,r4
      004ED2 12 6F D1         [24] 6366 	lcall	__gptrget
      004ED5 FD               [12] 6367 	mov	r5,a
      004ED6 A3               [24] 6368 	inc	dptr
      004ED7 12 6F D1         [24] 6369 	lcall	__gptrget
      004EDA FE               [12] 6370 	mov	r6,a
      004EDB A3               [24] 6371 	inc	dptr
      004EDC 12 6F D1         [24] 6372 	lcall	__gptrget
      004EDF FF               [12] 6373 	mov	r7,a
      004EE0 C0 04            [24] 6374 	push	ar4
      004EE2 C0 03            [24] 6375 	push	ar3
      004EE4 C0 02            [24] 6376 	push	ar2
      004EE6 E5 08            [12] 6377 	mov	a,_bp
      004EE8 24 0E            [12] 6378 	add	a,#0x0e
      004EEA F8               [12] 6379 	mov	r0,a
      004EEB E6               [12] 6380 	mov	a,@r0
      004EEC C0 E0            [24] 6381 	push	acc
      004EEE 08               [12] 6382 	inc	r0
      004EEF E6               [12] 6383 	mov	a,@r0
      004EF0 C0 E0            [24] 6384 	push	acc
      004EF2 08               [12] 6385 	inc	r0
      004EF3 E6               [12] 6386 	mov	a,@r0
      004EF4 C0 E0            [24] 6387 	push	acc
      004EF6 8D 82            [24] 6388 	mov	dpl,r5
      004EF8 8E 83            [24] 6389 	mov	dph,r6
      004EFA 8F F0            [24] 6390 	mov	b,r7
      004EFC 12 27 B4         [24] 6391 	lcall	_stack_pop
      004EFF AE 82            [24] 6392 	mov	r6,dpl
      004F01 AF 83            [24] 6393 	mov	r7,dph
      004F03 15 81            [12] 6394 	dec	sp
      004F05 15 81            [12] 6395 	dec	sp
      004F07 15 81            [12] 6396 	dec	sp
      004F09 D0 02            [24] 6397 	pop	ar2
      004F0B D0 03            [24] 6398 	pop	ar3
      004F0D D0 04            [24] 6399 	pop	ar4
      004F0F EE               [12] 6400 	mov	a,r6
      004F10 4F               [12] 6401 	orl	a,r7
      004F11 70 25            [24] 6402 	jnz	00221$
      004F13 7D 96            [12] 6403 	mov	r5,#___str_10
      004F15 7C 88            [12] 6404 	mov	r4,#(___str_10 >> 8)
      004F17 7B 80            [12] 6405 	mov	r3,#0x80
                                   6406 ;	calc.c:51: return;
      004F19                       6407 00472$:
                                   6408 ;	calc.c:49: for (; *s; s++) putchar(*s);
      004F19 8D 82            [24] 6409 	mov	dpl,r5
      004F1B 8C 83            [24] 6410 	mov	dph,r4
      004F1D 8B F0            [24] 6411 	mov	b,r3
      004F1F 12 6F D1         [24] 6412 	lcall	__gptrget
      004F22 FF               [12] 6413 	mov	r7,a
      004F23 70 03            [24] 6414 	jnz	01376$
      004F25 02 56 1B         [24] 6415 	ljmp	00249$
      004F28                       6416 01376$:
      004F28 7E 00            [12] 6417 	mov	r6,#0x00
      004F2A 8F 82            [24] 6418 	mov	dpl,r7
      004F2C 8E 83            [24] 6419 	mov	dph,r6
      004F2E 12 2B D5         [24] 6420 	lcall	_putchar
      004F31 0D               [12] 6421 	inc	r5
                                   6422 ;	calc.c:297: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004F32 BD 00 E4         [24] 6423 	cjne	r5,#0x00,00472$
      004F35 0C               [12] 6424 	inc	r4
      004F36 80 E1            [24] 6425 	sjmp	00472$
      004F38                       6426 00221$:
                                   6427 ;	calc.c:298: else if (!stack_pop(ctx->ps, &d1)) {
      004F38 E5 08            [12] 6428 	mov	a,_bp
      004F3A 24 19            [12] 6429 	add	a,#0x19
      004F3C FF               [12] 6430 	mov	r7,a
      004F3D E5 08            [12] 6431 	mov	a,_bp
      004F3F 24 0E            [12] 6432 	add	a,#0x0e
      004F41 F8               [12] 6433 	mov	r0,a
      004F42 A6 07            [24] 6434 	mov	@r0,ar7
      004F44 08               [12] 6435 	inc	r0
      004F45 76 00            [12] 6436 	mov	@r0,#0x00
      004F47 08               [12] 6437 	inc	r0
      004F48 76 40            [12] 6438 	mov	@r0,#0x40
      004F4A 8A 82            [24] 6439 	mov	dpl,r2
      004F4C 8B 83            [24] 6440 	mov	dph,r3
      004F4E 8C F0            [24] 6441 	mov	b,r4
      004F50 12 6F D1         [24] 6442 	lcall	__gptrget
      004F53 FD               [12] 6443 	mov	r5,a
      004F54 A3               [24] 6444 	inc	dptr
      004F55 12 6F D1         [24] 6445 	lcall	__gptrget
      004F58 FE               [12] 6446 	mov	r6,a
      004F59 A3               [24] 6447 	inc	dptr
      004F5A 12 6F D1         [24] 6448 	lcall	__gptrget
      004F5D FF               [12] 6449 	mov	r7,a
      004F5E C0 04            [24] 6450 	push	ar4
      004F60 C0 03            [24] 6451 	push	ar3
      004F62 C0 02            [24] 6452 	push	ar2
      004F64 E5 08            [12] 6453 	mov	a,_bp
      004F66 24 0E            [12] 6454 	add	a,#0x0e
      004F68 F8               [12] 6455 	mov	r0,a
      004F69 E6               [12] 6456 	mov	a,@r0
      004F6A C0 E0            [24] 6457 	push	acc
      004F6C 08               [12] 6458 	inc	r0
      004F6D E6               [12] 6459 	mov	a,@r0
      004F6E C0 E0            [24] 6460 	push	acc
      004F70 08               [12] 6461 	inc	r0
      004F71 E6               [12] 6462 	mov	a,@r0
      004F72 C0 E0            [24] 6463 	push	acc
      004F74 8D 82            [24] 6464 	mov	dpl,r5
      004F76 8E 83            [24] 6465 	mov	dph,r6
      004F78 8F F0            [24] 6466 	mov	b,r7
      004F7A 12 27 B4         [24] 6467 	lcall	_stack_pop
      004F7D AE 82            [24] 6468 	mov	r6,dpl
      004F7F AF 83            [24] 6469 	mov	r7,dph
      004F81 15 81            [12] 6470 	dec	sp
      004F83 15 81            [12] 6471 	dec	sp
      004F85 15 81            [12] 6472 	dec	sp
      004F87 D0 02            [24] 6473 	pop	ar2
      004F89 D0 03            [24] 6474 	pop	ar3
      004F8B D0 04            [24] 6475 	pop	ar4
      004F8D EE               [12] 6476 	mov	a,r6
      004F8E 4F               [12] 6477 	orl	a,r7
      004F8F 70 5C            [24] 6478 	jnz	00218$
                                   6479 ;	calc.c:299: (void)stack_push(ctx->ps, d0);
      004F91 8A 82            [24] 6480 	mov	dpl,r2
      004F93 8B 83            [24] 6481 	mov	dph,r3
      004F95 8C F0            [24] 6482 	mov	b,r4
      004F97 12 6F D1         [24] 6483 	lcall	__gptrget
      004F9A FD               [12] 6484 	mov	r5,a
      004F9B A3               [24] 6485 	inc	dptr
      004F9C 12 6F D1         [24] 6486 	lcall	__gptrget
      004F9F FE               [12] 6487 	mov	r6,a
      004FA0 A3               [24] 6488 	inc	dptr
      004FA1 12 6F D1         [24] 6489 	lcall	__gptrget
      004FA4 FF               [12] 6490 	mov	r7,a
      004FA5 E5 08            [12] 6491 	mov	a,_bp
      004FA7 24 15            [12] 6492 	add	a,#0x15
      004FA9 F8               [12] 6493 	mov	r0,a
      004FAA E6               [12] 6494 	mov	a,@r0
      004FAB C0 E0            [24] 6495 	push	acc
      004FAD 08               [12] 6496 	inc	r0
      004FAE E6               [12] 6497 	mov	a,@r0
      004FAF C0 E0            [24] 6498 	push	acc
      004FB1 08               [12] 6499 	inc	r0
      004FB2 E6               [12] 6500 	mov	a,@r0
      004FB3 C0 E0            [24] 6501 	push	acc
      004FB5 08               [12] 6502 	inc	r0
      004FB6 E6               [12] 6503 	mov	a,@r0
      004FB7 C0 E0            [24] 6504 	push	acc
      004FB9 8D 82            [24] 6505 	mov	dpl,r5
      004FBB 8E 83            [24] 6506 	mov	dph,r6
      004FBD 8F F0            [24] 6507 	mov	b,r7
      004FBF 12 26 BA         [24] 6508 	lcall	_stack_push
      004FC2 E5 81            [12] 6509 	mov	a,sp
      004FC4 24 FC            [12] 6510 	add	a,#0xfc
      004FC6 F5 81            [12] 6511 	mov	sp,a
                                   6512 ;	calc.c:300: printstr("\r\nstack underflow\r\n");
      004FC8 7D 96            [12] 6513 	mov	r5,#___str_10
      004FCA 7C 88            [12] 6514 	mov	r4,#(___str_10 >> 8)
      004FCC 7B 80            [12] 6515 	mov	r3,#0x80
                                   6516 ;	calc.c:51: return;
      004FCE                       6517 00475$:
                                   6518 ;	calc.c:49: for (; *s; s++) putchar(*s);
      004FCE 8D 82            [24] 6519 	mov	dpl,r5
      004FD0 8C 83            [24] 6520 	mov	dph,r4
      004FD2 8B F0            [24] 6521 	mov	b,r3
      004FD4 12 6F D1         [24] 6522 	lcall	__gptrget
      004FD7 FF               [12] 6523 	mov	r7,a
      004FD8 70 03            [24] 6524 	jnz	01379$
      004FDA 02 56 1B         [24] 6525 	ljmp	00249$
      004FDD                       6526 01379$:
      004FDD 7E 00            [12] 6527 	mov	r6,#0x00
      004FDF 8F 82            [24] 6528 	mov	dpl,r7
      004FE1 8E 83            [24] 6529 	mov	dph,r6
      004FE3 12 2B D5         [24] 6530 	lcall	_putchar
      004FE6 0D               [12] 6531 	inc	r5
                                   6532 ;	calc.c:300: printstr("\r\nstack underflow\r\n");
      004FE7 BD 00 E4         [24] 6533 	cjne	r5,#0x00,00475$
      004FEA 0C               [12] 6534 	inc	r4
      004FEB 80 E1            [24] 6535 	sjmp	00475$
      004FED                       6536 00218$:
                                   6537 ;	calc.c:302: d1 ^= d0;
      004FED E5 08            [12] 6538 	mov	a,_bp
      004FEF 24 19            [12] 6539 	add	a,#0x19
      004FF1 F8               [12] 6540 	mov	r0,a
      004FF2 E5 08            [12] 6541 	mov	a,_bp
      004FF4 24 15            [12] 6542 	add	a,#0x15
      004FF6 F9               [12] 6543 	mov	r1,a
      004FF7 E7               [12] 6544 	mov	a,@r1
      004FF8 66               [12] 6545 	xrl	a,@r0
      004FF9 F6               [12] 6546 	mov	@r0,a
      004FFA 09               [12] 6547 	inc	r1
      004FFB E7               [12] 6548 	mov	a,@r1
      004FFC 08               [12] 6549 	inc	r0
      004FFD 66               [12] 6550 	xrl	a,@r0
      004FFE F6               [12] 6551 	mov	@r0,a
      004FFF 09               [12] 6552 	inc	r1
      005000 E7               [12] 6553 	mov	a,@r1
      005001 08               [12] 6554 	inc	r0
      005002 66               [12] 6555 	xrl	a,@r0
      005003 F6               [12] 6556 	mov	@r0,a
      005004 09               [12] 6557 	inc	r1
      005005 E7               [12] 6558 	mov	a,@r1
      005006 08               [12] 6559 	inc	r0
      005007 66               [12] 6560 	xrl	a,@r0
      005008 F6               [12] 6561 	mov	@r0,a
                                   6562 ;	calc.c:303: (void)stack_push(ctx->ps, d1);
      005009 8A 82            [24] 6563 	mov	dpl,r2
      00500B 8B 83            [24] 6564 	mov	dph,r3
      00500D 8C F0            [24] 6565 	mov	b,r4
      00500F 12 6F D1         [24] 6566 	lcall	__gptrget
      005012 FA               [12] 6567 	mov	r2,a
      005013 A3               [24] 6568 	inc	dptr
      005014 12 6F D1         [24] 6569 	lcall	__gptrget
      005017 FB               [12] 6570 	mov	r3,a
      005018 A3               [24] 6571 	inc	dptr
      005019 12 6F D1         [24] 6572 	lcall	__gptrget
      00501C FC               [12] 6573 	mov	r4,a
      00501D E5 08            [12] 6574 	mov	a,_bp
      00501F 24 19            [12] 6575 	add	a,#0x19
      005021 F8               [12] 6576 	mov	r0,a
      005022 E6               [12] 6577 	mov	a,@r0
      005023 C0 E0            [24] 6578 	push	acc
      005025 08               [12] 6579 	inc	r0
      005026 E6               [12] 6580 	mov	a,@r0
      005027 C0 E0            [24] 6581 	push	acc
      005029 08               [12] 6582 	inc	r0
      00502A E6               [12] 6583 	mov	a,@r0
      00502B C0 E0            [24] 6584 	push	acc
      00502D 08               [12] 6585 	inc	r0
      00502E E6               [12] 6586 	mov	a,@r0
      00502F C0 E0            [24] 6587 	push	acc
      005031 8A 82            [24] 6588 	mov	dpl,r2
      005033 8B 83            [24] 6589 	mov	dph,r3
      005035 8C F0            [24] 6590 	mov	b,r4
      005037 12 26 BA         [24] 6591 	lcall	_stack_push
      00503A E5 81            [12] 6592 	mov	a,sp
      00503C 24 FC            [12] 6593 	add	a,#0xfc
      00503E F5 81            [12] 6594 	mov	sp,a
                                   6595 ;	calc.c:305: break;
      005040 02 56 1B         [24] 6596 	ljmp	00249$
                                   6597 ;	calc.c:306: case '>':
      005043                       6598 00223$:
                                   6599 ;	calc.c:307: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      005043 E5 08            [12] 6600 	mov	a,_bp
      005045 24 15            [12] 6601 	add	a,#0x15
      005047 FC               [12] 6602 	mov	r4,a
      005048 7B 00            [12] 6603 	mov	r3,#0x00
      00504A 7A 40            [12] 6604 	mov	r2,#0x40
      00504C E5 08            [12] 6605 	mov	a,_bp
      00504E 24 12            [12] 6606 	add	a,#0x12
      005050 F8               [12] 6607 	mov	r0,a
      005051 E5 08            [12] 6608 	mov	a,_bp
      005053 24 0B            [12] 6609 	add	a,#0x0b
      005055 F9               [12] 6610 	mov	r1,a
      005056 74 13            [12] 6611 	mov	a,#0x13
      005058 26               [12] 6612 	add	a,@r0
      005059 F7               [12] 6613 	mov	@r1,a
      00505A 74 40            [12] 6614 	mov	a,#0x40
      00505C 08               [12] 6615 	inc	r0
      00505D 36               [12] 6616 	addc	a,@r0
      00505E 09               [12] 6617 	inc	r1
      00505F F7               [12] 6618 	mov	@r1,a
      005060 08               [12] 6619 	inc	r0
      005061 09               [12] 6620 	inc	r1
      005062 E6               [12] 6621 	mov	a,@r0
      005063 F7               [12] 6622 	mov	@r1,a
      005064 E5 08            [12] 6623 	mov	a,_bp
      005066 24 0B            [12] 6624 	add	a,#0x0b
      005068 F8               [12] 6625 	mov	r0,a
      005069 86 82            [24] 6626 	mov	dpl,@r0
      00506B 08               [12] 6627 	inc	r0
      00506C 86 83            [24] 6628 	mov	dph,@r0
      00506E 08               [12] 6629 	inc	r0
      00506F 86 F0            [24] 6630 	mov	b,@r0
      005071 12 6F D1         [24] 6631 	lcall	__gptrget
      005074 FD               [12] 6632 	mov	r5,a
      005075 A3               [24] 6633 	inc	dptr
      005076 12 6F D1         [24] 6634 	lcall	__gptrget
      005079 FE               [12] 6635 	mov	r6,a
      00507A A3               [24] 6636 	inc	dptr
      00507B 12 6F D1         [24] 6637 	lcall	__gptrget
      00507E FF               [12] 6638 	mov	r7,a
      00507F C0 04            [24] 6639 	push	ar4
      005081 C0 03            [24] 6640 	push	ar3
      005083 C0 02            [24] 6641 	push	ar2
      005085 8D 82            [24] 6642 	mov	dpl,r5
      005087 8E 83            [24] 6643 	mov	dph,r6
      005089 8F F0            [24] 6644 	mov	b,r7
      00508B 12 27 B4         [24] 6645 	lcall	_stack_pop
      00508E AE 82            [24] 6646 	mov	r6,dpl
      005090 AF 83            [24] 6647 	mov	r7,dph
      005092 15 81            [12] 6648 	dec	sp
      005094 15 81            [12] 6649 	dec	sp
      005096 15 81            [12] 6650 	dec	sp
      005098 EE               [12] 6651 	mov	a,r6
      005099 4F               [12] 6652 	orl	a,r7
      00509A 70 25            [24] 6653 	jnz	00228$
      00509C 7D 96            [12] 6654 	mov	r5,#___str_10
      00509E 7C 88            [12] 6655 	mov	r4,#(___str_10 >> 8)
      0050A0 7B 80            [12] 6656 	mov	r3,#0x80
                                   6657 ;	calc.c:51: return;
      0050A2                       6658 00478$:
                                   6659 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0050A2 8D 82            [24] 6660 	mov	dpl,r5
      0050A4 8C 83            [24] 6661 	mov	dph,r4
      0050A6 8B F0            [24] 6662 	mov	b,r3
      0050A8 12 6F D1         [24] 6663 	lcall	__gptrget
      0050AB FF               [12] 6664 	mov	r7,a
      0050AC 70 03            [24] 6665 	jnz	01382$
      0050AE 02 56 1B         [24] 6666 	ljmp	00249$
      0050B1                       6667 01382$:
      0050B1 7E 00            [12] 6668 	mov	r6,#0x00
      0050B3 8F 82            [24] 6669 	mov	dpl,r7
      0050B5 8E 83            [24] 6670 	mov	dph,r6
      0050B7 12 2B D5         [24] 6671 	lcall	_putchar
      0050BA 0D               [12] 6672 	inc	r5
                                   6673 ;	calc.c:307: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0050BB BD 00 E4         [24] 6674 	cjne	r5,#0x00,00478$
      0050BE 0C               [12] 6675 	inc	r4
      0050BF 80 E1            [24] 6676 	sjmp	00478$
      0050C1                       6677 00228$:
                                   6678 ;	calc.c:308: else if (!stack_pop(ctx->ps, &d1)) {
      0050C1 E5 08            [12] 6679 	mov	a,_bp
      0050C3 24 19            [12] 6680 	add	a,#0x19
      0050C5 FC               [12] 6681 	mov	r4,a
      0050C6 7B 00            [12] 6682 	mov	r3,#0x00
      0050C8 7A 40            [12] 6683 	mov	r2,#0x40
      0050CA E5 08            [12] 6684 	mov	a,_bp
      0050CC 24 0B            [12] 6685 	add	a,#0x0b
      0050CE F8               [12] 6686 	mov	r0,a
      0050CF 86 82            [24] 6687 	mov	dpl,@r0
      0050D1 08               [12] 6688 	inc	r0
      0050D2 86 83            [24] 6689 	mov	dph,@r0
      0050D4 08               [12] 6690 	inc	r0
      0050D5 86 F0            [24] 6691 	mov	b,@r0
      0050D7 12 6F D1         [24] 6692 	lcall	__gptrget
      0050DA FD               [12] 6693 	mov	r5,a
      0050DB A3               [24] 6694 	inc	dptr
      0050DC 12 6F D1         [24] 6695 	lcall	__gptrget
      0050DF FE               [12] 6696 	mov	r6,a
      0050E0 A3               [24] 6697 	inc	dptr
      0050E1 12 6F D1         [24] 6698 	lcall	__gptrget
      0050E4 FF               [12] 6699 	mov	r7,a
      0050E5 C0 04            [24] 6700 	push	ar4
      0050E7 C0 03            [24] 6701 	push	ar3
      0050E9 C0 02            [24] 6702 	push	ar2
      0050EB 8D 82            [24] 6703 	mov	dpl,r5
      0050ED 8E 83            [24] 6704 	mov	dph,r6
      0050EF 8F F0            [24] 6705 	mov	b,r7
      0050F1 12 27 B4         [24] 6706 	lcall	_stack_pop
      0050F4 AE 82            [24] 6707 	mov	r6,dpl
      0050F6 AF 83            [24] 6708 	mov	r7,dph
      0050F8 15 81            [12] 6709 	dec	sp
      0050FA 15 81            [12] 6710 	dec	sp
      0050FC 15 81            [12] 6711 	dec	sp
      0050FE EE               [12] 6712 	mov	a,r6
      0050FF 4F               [12] 6713 	orl	a,r7
      005100 70 63            [24] 6714 	jnz	00225$
                                   6715 ;	calc.c:309: (void)stack_push(ctx->ps, d0);
      005102 E5 08            [12] 6716 	mov	a,_bp
      005104 24 0B            [12] 6717 	add	a,#0x0b
      005106 F8               [12] 6718 	mov	r0,a
      005107 86 82            [24] 6719 	mov	dpl,@r0
      005109 08               [12] 6720 	inc	r0
      00510A 86 83            [24] 6721 	mov	dph,@r0
      00510C 08               [12] 6722 	inc	r0
      00510D 86 F0            [24] 6723 	mov	b,@r0
      00510F 12 6F D1         [24] 6724 	lcall	__gptrget
      005112 FD               [12] 6725 	mov	r5,a
      005113 A3               [24] 6726 	inc	dptr
      005114 12 6F D1         [24] 6727 	lcall	__gptrget
      005117 FE               [12] 6728 	mov	r6,a
      005118 A3               [24] 6729 	inc	dptr
      005119 12 6F D1         [24] 6730 	lcall	__gptrget
      00511C FF               [12] 6731 	mov	r7,a
      00511D E5 08            [12] 6732 	mov	a,_bp
      00511F 24 15            [12] 6733 	add	a,#0x15
      005121 F8               [12] 6734 	mov	r0,a
      005122 E6               [12] 6735 	mov	a,@r0
      005123 C0 E0            [24] 6736 	push	acc
      005125 08               [12] 6737 	inc	r0
      005126 E6               [12] 6738 	mov	a,@r0
      005127 C0 E0            [24] 6739 	push	acc
      005129 08               [12] 6740 	inc	r0
      00512A E6               [12] 6741 	mov	a,@r0
      00512B C0 E0            [24] 6742 	push	acc
      00512D 08               [12] 6743 	inc	r0
      00512E E6               [12] 6744 	mov	a,@r0
      00512F C0 E0            [24] 6745 	push	acc
      005131 8D 82            [24] 6746 	mov	dpl,r5
      005133 8E 83            [24] 6747 	mov	dph,r6
      005135 8F F0            [24] 6748 	mov	b,r7
      005137 12 26 BA         [24] 6749 	lcall	_stack_push
      00513A E5 81            [12] 6750 	mov	a,sp
      00513C 24 FC            [12] 6751 	add	a,#0xfc
      00513E F5 81            [12] 6752 	mov	sp,a
                                   6753 ;	calc.c:310: printstr("\r\nstack underflow\r\n");
      005140 7D 96            [12] 6754 	mov	r5,#___str_10
      005142 7C 88            [12] 6755 	mov	r4,#(___str_10 >> 8)
      005144 7B 80            [12] 6756 	mov	r3,#0x80
                                   6757 ;	calc.c:51: return;
      005146                       6758 00481$:
                                   6759 ;	calc.c:49: for (; *s; s++) putchar(*s);
      005146 8D 82            [24] 6760 	mov	dpl,r5
      005148 8C 83            [24] 6761 	mov	dph,r4
      00514A 8B F0            [24] 6762 	mov	b,r3
      00514C 12 6F D1         [24] 6763 	lcall	__gptrget
      00514F FF               [12] 6764 	mov	r7,a
      005150 70 03            [24] 6765 	jnz	01385$
      005152 02 56 1B         [24] 6766 	ljmp	00249$
      005155                       6767 01385$:
      005155 7E 00            [12] 6768 	mov	r6,#0x00
      005157 8F 82            [24] 6769 	mov	dpl,r7
      005159 8E 83            [24] 6770 	mov	dph,r6
      00515B 12 2B D5         [24] 6771 	lcall	_putchar
      00515E 0D               [12] 6772 	inc	r5
                                   6773 ;	calc.c:310: printstr("\r\nstack underflow\r\n");
      00515F BD 00 E4         [24] 6774 	cjne	r5,#0x00,00481$
      005162 0C               [12] 6775 	inc	r4
      005163 80 E1            [24] 6776 	sjmp	00481$
      005165                       6777 00225$:
                                   6778 ;	calc.c:312: d1 = (unsigned long)d1 >> ((unsigned long)d0 & 0x0000001flu);
      005165 E5 08            [12] 6779 	mov	a,_bp
      005167 24 19            [12] 6780 	add	a,#0x19
      005169 F8               [12] 6781 	mov	r0,a
      00516A 86 04            [24] 6782 	mov	ar4,@r0
      00516C 08               [12] 6783 	inc	r0
      00516D 86 05            [24] 6784 	mov	ar5,@r0
      00516F 08               [12] 6785 	inc	r0
      005170 86 06            [24] 6786 	mov	ar6,@r0
      005172 08               [12] 6787 	inc	r0
      005173 86 07            [24] 6788 	mov	ar7,@r0
      005175 E5 08            [12] 6789 	mov	a,_bp
      005177 24 15            [12] 6790 	add	a,#0x15
      005179 F8               [12] 6791 	mov	r0,a
      00517A 86 03            [24] 6792 	mov	ar3,@r0
      00517C 53 03 1F         [24] 6793 	anl	ar3,#0x1f
      00517F 8B F0            [24] 6794 	mov	b,r3
      005181 05 F0            [12] 6795 	inc	b
      005183 80 0D            [24] 6796 	sjmp	01388$
      005185                       6797 01387$:
      005185 C3               [12] 6798 	clr	c
      005186 EF               [12] 6799 	mov	a,r7
      005187 13               [12] 6800 	rrc	a
      005188 FF               [12] 6801 	mov	r7,a
      005189 EE               [12] 6802 	mov	a,r6
      00518A 13               [12] 6803 	rrc	a
      00518B FE               [12] 6804 	mov	r6,a
      00518C ED               [12] 6805 	mov	a,r5
      00518D 13               [12] 6806 	rrc	a
      00518E FD               [12] 6807 	mov	r5,a
      00518F EC               [12] 6808 	mov	a,r4
      005190 13               [12] 6809 	rrc	a
      005191 FC               [12] 6810 	mov	r4,a
      005192                       6811 01388$:
      005192 D5 F0 F0         [24] 6812 	djnz	b,01387$
      005195 E5 08            [12] 6813 	mov	a,_bp
      005197 24 19            [12] 6814 	add	a,#0x19
      005199 F8               [12] 6815 	mov	r0,a
      00519A A6 04            [24] 6816 	mov	@r0,ar4
      00519C 08               [12] 6817 	inc	r0
      00519D A6 05            [24] 6818 	mov	@r0,ar5
      00519F 08               [12] 6819 	inc	r0
      0051A0 A6 06            [24] 6820 	mov	@r0,ar6
      0051A2 08               [12] 6821 	inc	r0
      0051A3 A6 07            [24] 6822 	mov	@r0,ar7
                                   6823 ;	calc.c:313: (void)stack_push(ctx->ps, d1);
      0051A5 E5 08            [12] 6824 	mov	a,_bp
      0051A7 24 0B            [12] 6825 	add	a,#0x0b
      0051A9 F8               [12] 6826 	mov	r0,a
      0051AA 86 82            [24] 6827 	mov	dpl,@r0
      0051AC 08               [12] 6828 	inc	r0
      0051AD 86 83            [24] 6829 	mov	dph,@r0
      0051AF 08               [12] 6830 	inc	r0
      0051B0 86 F0            [24] 6831 	mov	b,@r0
      0051B2 12 6F D1         [24] 6832 	lcall	__gptrget
      0051B5 FD               [12] 6833 	mov	r5,a
      0051B6 A3               [24] 6834 	inc	dptr
      0051B7 12 6F D1         [24] 6835 	lcall	__gptrget
      0051BA FE               [12] 6836 	mov	r6,a
      0051BB A3               [24] 6837 	inc	dptr
      0051BC 12 6F D1         [24] 6838 	lcall	__gptrget
      0051BF FF               [12] 6839 	mov	r7,a
      0051C0 E5 08            [12] 6840 	mov	a,_bp
      0051C2 24 19            [12] 6841 	add	a,#0x19
      0051C4 F8               [12] 6842 	mov	r0,a
      0051C5 E6               [12] 6843 	mov	a,@r0
      0051C6 C0 E0            [24] 6844 	push	acc
      0051C8 08               [12] 6845 	inc	r0
      0051C9 E6               [12] 6846 	mov	a,@r0
      0051CA C0 E0            [24] 6847 	push	acc
      0051CC 08               [12] 6848 	inc	r0
      0051CD E6               [12] 6849 	mov	a,@r0
      0051CE C0 E0            [24] 6850 	push	acc
      0051D0 08               [12] 6851 	inc	r0
      0051D1 E6               [12] 6852 	mov	a,@r0
      0051D2 C0 E0            [24] 6853 	push	acc
      0051D4 8D 82            [24] 6854 	mov	dpl,r5
      0051D6 8E 83            [24] 6855 	mov	dph,r6
      0051D8 8F F0            [24] 6856 	mov	b,r7
      0051DA 12 26 BA         [24] 6857 	lcall	_stack_push
      0051DD E5 81            [12] 6858 	mov	a,sp
      0051DF 24 FC            [12] 6859 	add	a,#0xfc
      0051E1 F5 81            [12] 6860 	mov	sp,a
                                   6861 ;	calc.c:315: break;
      0051E3 02 56 1B         [24] 6862 	ljmp	00249$
                                   6863 ;	calc.c:316: case ']':
      0051E6                       6864 00230$:
                                   6865 ;	calc.c:317: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0051E6 E5 08            [12] 6866 	mov	a,_bp
      0051E8 24 15            [12] 6867 	add	a,#0x15
      0051EA FF               [12] 6868 	mov	r7,a
      0051EB E5 08            [12] 6869 	mov	a,_bp
      0051ED 24 0E            [12] 6870 	add	a,#0x0e
      0051EF F8               [12] 6871 	mov	r0,a
      0051F0 A6 07            [24] 6872 	mov	@r0,ar7
      0051F2 08               [12] 6873 	inc	r0
      0051F3 76 00            [12] 6874 	mov	@r0,#0x00
      0051F5 08               [12] 6875 	inc	r0
      0051F6 76 40            [12] 6876 	mov	@r0,#0x40
      0051F8 E5 08            [12] 6877 	mov	a,_bp
      0051FA 24 12            [12] 6878 	add	a,#0x12
      0051FC F8               [12] 6879 	mov	r0,a
      0051FD 74 13            [12] 6880 	mov	a,#0x13
      0051FF 26               [12] 6881 	add	a,@r0
      005200 FA               [12] 6882 	mov	r2,a
      005201 74 40            [12] 6883 	mov	a,#0x40
      005203 08               [12] 6884 	inc	r0
      005204 36               [12] 6885 	addc	a,@r0
      005205 FB               [12] 6886 	mov	r3,a
      005206 08               [12] 6887 	inc	r0
      005207 86 04            [24] 6888 	mov	ar4,@r0
      005209 8A 82            [24] 6889 	mov	dpl,r2
      00520B 8B 83            [24] 6890 	mov	dph,r3
      00520D 8C F0            [24] 6891 	mov	b,r4
      00520F 12 6F D1         [24] 6892 	lcall	__gptrget
      005212 FD               [12] 6893 	mov	r5,a
      005213 A3               [24] 6894 	inc	dptr
      005214 12 6F D1         [24] 6895 	lcall	__gptrget
      005217 FE               [12] 6896 	mov	r6,a
      005218 A3               [24] 6897 	inc	dptr
      005219 12 6F D1         [24] 6898 	lcall	__gptrget
      00521C FF               [12] 6899 	mov	r7,a
      00521D C0 04            [24] 6900 	push	ar4
      00521F C0 03            [24] 6901 	push	ar3
      005221 C0 02            [24] 6902 	push	ar2
      005223 E5 08            [12] 6903 	mov	a,_bp
      005225 24 0E            [12] 6904 	add	a,#0x0e
      005227 F8               [12] 6905 	mov	r0,a
      005228 E6               [12] 6906 	mov	a,@r0
      005229 C0 E0            [24] 6907 	push	acc
      00522B 08               [12] 6908 	inc	r0
      00522C E6               [12] 6909 	mov	a,@r0
      00522D C0 E0            [24] 6910 	push	acc
      00522F 08               [12] 6911 	inc	r0
      005230 E6               [12] 6912 	mov	a,@r0
      005231 C0 E0            [24] 6913 	push	acc
      005233 8D 82            [24] 6914 	mov	dpl,r5
      005235 8E 83            [24] 6915 	mov	dph,r6
      005237 8F F0            [24] 6916 	mov	b,r7
      005239 12 27 B4         [24] 6917 	lcall	_stack_pop
      00523C AE 82            [24] 6918 	mov	r6,dpl
      00523E AF 83            [24] 6919 	mov	r7,dph
      005240 15 81            [12] 6920 	dec	sp
      005242 15 81            [12] 6921 	dec	sp
      005244 15 81            [12] 6922 	dec	sp
      005246 D0 02            [24] 6923 	pop	ar2
      005248 D0 03            [24] 6924 	pop	ar3
      00524A D0 04            [24] 6925 	pop	ar4
      00524C EE               [12] 6926 	mov	a,r6
      00524D 4F               [12] 6927 	orl	a,r7
      00524E 70 25            [24] 6928 	jnz	00235$
      005250 7D 96            [12] 6929 	mov	r5,#___str_10
      005252 7C 88            [12] 6930 	mov	r4,#(___str_10 >> 8)
      005254 7B 80            [12] 6931 	mov	r3,#0x80
                                   6932 ;	calc.c:51: return;
      005256                       6933 00484$:
                                   6934 ;	calc.c:49: for (; *s; s++) putchar(*s);
      005256 8D 82            [24] 6935 	mov	dpl,r5
      005258 8C 83            [24] 6936 	mov	dph,r4
      00525A 8B F0            [24] 6937 	mov	b,r3
      00525C 12 6F D1         [24] 6938 	lcall	__gptrget
      00525F FF               [12] 6939 	mov	r7,a
      005260 70 03            [24] 6940 	jnz	01390$
      005262 02 56 1B         [24] 6941 	ljmp	00249$
      005265                       6942 01390$:
      005265 7E 00            [12] 6943 	mov	r6,#0x00
      005267 8F 82            [24] 6944 	mov	dpl,r7
      005269 8E 83            [24] 6945 	mov	dph,r6
      00526B 12 2B D5         [24] 6946 	lcall	_putchar
      00526E 0D               [12] 6947 	inc	r5
                                   6948 ;	calc.c:317: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      00526F BD 00 E4         [24] 6949 	cjne	r5,#0x00,00484$
      005272 0C               [12] 6950 	inc	r4
      005273 80 E1            [24] 6951 	sjmp	00484$
      005275                       6952 00235$:
                                   6953 ;	calc.c:318: else if (!stack_pop(ctx->ps, &d1)) {
      005275 E5 08            [12] 6954 	mov	a,_bp
      005277 24 19            [12] 6955 	add	a,#0x19
      005279 FF               [12] 6956 	mov	r7,a
      00527A E5 08            [12] 6957 	mov	a,_bp
      00527C 24 0E            [12] 6958 	add	a,#0x0e
      00527E F8               [12] 6959 	mov	r0,a
      00527F A6 07            [24] 6960 	mov	@r0,ar7
      005281 08               [12] 6961 	inc	r0
      005282 76 00            [12] 6962 	mov	@r0,#0x00
      005284 08               [12] 6963 	inc	r0
      005285 76 40            [12] 6964 	mov	@r0,#0x40
      005287 8A 82            [24] 6965 	mov	dpl,r2
      005289 8B 83            [24] 6966 	mov	dph,r3
      00528B 8C F0            [24] 6967 	mov	b,r4
      00528D 12 6F D1         [24] 6968 	lcall	__gptrget
      005290 FD               [12] 6969 	mov	r5,a
      005291 A3               [24] 6970 	inc	dptr
      005292 12 6F D1         [24] 6971 	lcall	__gptrget
      005295 FE               [12] 6972 	mov	r6,a
      005296 A3               [24] 6973 	inc	dptr
      005297 12 6F D1         [24] 6974 	lcall	__gptrget
      00529A FF               [12] 6975 	mov	r7,a
      00529B C0 04            [24] 6976 	push	ar4
      00529D C0 03            [24] 6977 	push	ar3
      00529F C0 02            [24] 6978 	push	ar2
      0052A1 E5 08            [12] 6979 	mov	a,_bp
      0052A3 24 0E            [12] 6980 	add	a,#0x0e
      0052A5 F8               [12] 6981 	mov	r0,a
      0052A6 E6               [12] 6982 	mov	a,@r0
      0052A7 C0 E0            [24] 6983 	push	acc
      0052A9 08               [12] 6984 	inc	r0
      0052AA E6               [12] 6985 	mov	a,@r0
      0052AB C0 E0            [24] 6986 	push	acc
      0052AD 08               [12] 6987 	inc	r0
      0052AE E6               [12] 6988 	mov	a,@r0
      0052AF C0 E0            [24] 6989 	push	acc
      0052B1 8D 82            [24] 6990 	mov	dpl,r5
      0052B3 8E 83            [24] 6991 	mov	dph,r6
      0052B5 8F F0            [24] 6992 	mov	b,r7
      0052B7 12 27 B4         [24] 6993 	lcall	_stack_pop
      0052BA AE 82            [24] 6994 	mov	r6,dpl
      0052BC AF 83            [24] 6995 	mov	r7,dph
      0052BE 15 81            [12] 6996 	dec	sp
      0052C0 15 81            [12] 6997 	dec	sp
      0052C2 15 81            [12] 6998 	dec	sp
      0052C4 D0 02            [24] 6999 	pop	ar2
      0052C6 D0 03            [24] 7000 	pop	ar3
      0052C8 D0 04            [24] 7001 	pop	ar4
      0052CA EE               [12] 7002 	mov	a,r6
      0052CB 4F               [12] 7003 	orl	a,r7
      0052CC 70 5C            [24] 7004 	jnz	00232$
                                   7005 ;	calc.c:319: (void)stack_push(ctx->ps, d0);
      0052CE 8A 82            [24] 7006 	mov	dpl,r2
      0052D0 8B 83            [24] 7007 	mov	dph,r3
      0052D2 8C F0            [24] 7008 	mov	b,r4
      0052D4 12 6F D1         [24] 7009 	lcall	__gptrget
      0052D7 FD               [12] 7010 	mov	r5,a
      0052D8 A3               [24] 7011 	inc	dptr
      0052D9 12 6F D1         [24] 7012 	lcall	__gptrget
      0052DC FE               [12] 7013 	mov	r6,a
      0052DD A3               [24] 7014 	inc	dptr
      0052DE 12 6F D1         [24] 7015 	lcall	__gptrget
      0052E1 FF               [12] 7016 	mov	r7,a
      0052E2 E5 08            [12] 7017 	mov	a,_bp
      0052E4 24 15            [12] 7018 	add	a,#0x15
      0052E6 F8               [12] 7019 	mov	r0,a
      0052E7 E6               [12] 7020 	mov	a,@r0
      0052E8 C0 E0            [24] 7021 	push	acc
      0052EA 08               [12] 7022 	inc	r0
      0052EB E6               [12] 7023 	mov	a,@r0
      0052EC C0 E0            [24] 7024 	push	acc
      0052EE 08               [12] 7025 	inc	r0
      0052EF E6               [12] 7026 	mov	a,@r0
      0052F0 C0 E0            [24] 7027 	push	acc
      0052F2 08               [12] 7028 	inc	r0
      0052F3 E6               [12] 7029 	mov	a,@r0
      0052F4 C0 E0            [24] 7030 	push	acc
      0052F6 8D 82            [24] 7031 	mov	dpl,r5
      0052F8 8E 83            [24] 7032 	mov	dph,r6
      0052FA 8F F0            [24] 7033 	mov	b,r7
      0052FC 12 26 BA         [24] 7034 	lcall	_stack_push
      0052FF E5 81            [12] 7035 	mov	a,sp
      005301 24 FC            [12] 7036 	add	a,#0xfc
      005303 F5 81            [12] 7037 	mov	sp,a
                                   7038 ;	calc.c:320: printstr("\r\nstack underflow\r\n");
      005305 7D 96            [12] 7039 	mov	r5,#___str_10
      005307 7C 88            [12] 7040 	mov	r4,#(___str_10 >> 8)
      005309 7B 80            [12] 7041 	mov	r3,#0x80
                                   7042 ;	calc.c:51: return;
      00530B                       7043 00487$:
                                   7044 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00530B 8D 82            [24] 7045 	mov	dpl,r5
      00530D 8C 83            [24] 7046 	mov	dph,r4
      00530F 8B F0            [24] 7047 	mov	b,r3
      005311 12 6F D1         [24] 7048 	lcall	__gptrget
      005314 FF               [12] 7049 	mov	r7,a
      005315 70 03            [24] 7050 	jnz	01393$
      005317 02 56 1B         [24] 7051 	ljmp	00249$
      00531A                       7052 01393$:
      00531A 7E 00            [12] 7053 	mov	r6,#0x00
      00531C 8F 82            [24] 7054 	mov	dpl,r7
      00531E 8E 83            [24] 7055 	mov	dph,r6
      005320 12 2B D5         [24] 7056 	lcall	_putchar
      005323 0D               [12] 7057 	inc	r5
                                   7058 ;	calc.c:320: printstr("\r\nstack underflow\r\n");
      005324 BD 00 E4         [24] 7059 	cjne	r5,#0x00,00487$
      005327 0C               [12] 7060 	inc	r4
      005328 80 E1            [24] 7061 	sjmp	00487$
      00532A                       7062 00232$:
                                   7063 ;	calc.c:322: d1 >>= ((unsigned long)d0 & 0x0000001flu);
      00532A E5 08            [12] 7064 	mov	a,_bp
      00532C 24 15            [12] 7065 	add	a,#0x15
      00532E F8               [12] 7066 	mov	r0,a
      00532F 86 07            [24] 7067 	mov	ar7,@r0
      005331 53 07 1F         [24] 7068 	anl	ar7,#0x1f
      005334 8F F0            [24] 7069 	mov	b,r7
      005336 05 F0            [12] 7070 	inc	b
      005338 E5 08            [12] 7071 	mov	a,_bp
      00533A 24 19            [12] 7072 	add	a,#0x19
      00533C F8               [12] 7073 	mov	r0,a
      00533D 08               [12] 7074 	inc	r0
      00533E 08               [12] 7075 	inc	r0
      00533F 08               [12] 7076 	inc	r0
      005340 E6               [12] 7077 	mov	a,@r0
      005341 33               [12] 7078 	rlc	a
      005342 92 D2            [24] 7079 	mov	ov,c
      005344 18               [12] 7080 	dec	r0
      005345 18               [12] 7081 	dec	r0
      005346 18               [12] 7082 	dec	r0
      005347 80 14            [24] 7083 	sjmp	01396$
      005349                       7084 01395$:
      005349 A2 D2            [12] 7085 	mov	c,ov
      00534B 08               [12] 7086 	inc	r0
      00534C 08               [12] 7087 	inc	r0
      00534D 08               [12] 7088 	inc	r0
      00534E E6               [12] 7089 	mov	a,@r0
      00534F 13               [12] 7090 	rrc	a
      005350 F6               [12] 7091 	mov	@r0,a
      005351 18               [12] 7092 	dec	r0
      005352 E6               [12] 7093 	mov	a,@r0
      005353 13               [12] 7094 	rrc	a
      005354 F6               [12] 7095 	mov	@r0,a
      005355 18               [12] 7096 	dec	r0
      005356 E6               [12] 7097 	mov	a,@r0
      005357 13               [12] 7098 	rrc	a
      005358 F6               [12] 7099 	mov	@r0,a
      005359 18               [12] 7100 	dec	r0
      00535A E6               [12] 7101 	mov	a,@r0
      00535B 13               [12] 7102 	rrc	a
      00535C F6               [12] 7103 	mov	@r0,a
      00535D                       7104 01396$:
      00535D D5 F0 E9         [24] 7105 	djnz	b,01395$
                                   7106 ;	calc.c:323: (void)stack_push(ctx->ps, d1);
      005360 8A 82            [24] 7107 	mov	dpl,r2
      005362 8B 83            [24] 7108 	mov	dph,r3
      005364 8C F0            [24] 7109 	mov	b,r4
      005366 12 6F D1         [24] 7110 	lcall	__gptrget
      005369 FA               [12] 7111 	mov	r2,a
      00536A A3               [24] 7112 	inc	dptr
      00536B 12 6F D1         [24] 7113 	lcall	__gptrget
      00536E FB               [12] 7114 	mov	r3,a
      00536F A3               [24] 7115 	inc	dptr
      005370 12 6F D1         [24] 7116 	lcall	__gptrget
      005373 FC               [12] 7117 	mov	r4,a
      005374 E5 08            [12] 7118 	mov	a,_bp
      005376 24 19            [12] 7119 	add	a,#0x19
      005378 F8               [12] 7120 	mov	r0,a
      005379 E6               [12] 7121 	mov	a,@r0
      00537A C0 E0            [24] 7122 	push	acc
      00537C 08               [12] 7123 	inc	r0
      00537D E6               [12] 7124 	mov	a,@r0
      00537E C0 E0            [24] 7125 	push	acc
      005380 08               [12] 7126 	inc	r0
      005381 E6               [12] 7127 	mov	a,@r0
      005382 C0 E0            [24] 7128 	push	acc
      005384 08               [12] 7129 	inc	r0
      005385 E6               [12] 7130 	mov	a,@r0
      005386 C0 E0            [24] 7131 	push	acc
      005388 8A 82            [24] 7132 	mov	dpl,r2
      00538A 8B 83            [24] 7133 	mov	dph,r3
      00538C 8C F0            [24] 7134 	mov	b,r4
      00538E 12 26 BA         [24] 7135 	lcall	_stack_push
      005391 E5 81            [12] 7136 	mov	a,sp
      005393 24 FC            [12] 7137 	add	a,#0xfc
      005395 F5 81            [12] 7138 	mov	sp,a
                                   7139 ;	calc.c:325: break;
      005397 02 56 1B         [24] 7140 	ljmp	00249$
                                   7141 ;	calc.c:326: case '<':
      00539A                       7142 00237$:
                                   7143 ;	calc.c:327: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      00539A E5 08            [12] 7144 	mov	a,_bp
      00539C 24 15            [12] 7145 	add	a,#0x15
      00539E FC               [12] 7146 	mov	r4,a
      00539F 7B 00            [12] 7147 	mov	r3,#0x00
      0053A1 7A 40            [12] 7148 	mov	r2,#0x40
      0053A3 E5 08            [12] 7149 	mov	a,_bp
      0053A5 24 12            [12] 7150 	add	a,#0x12
      0053A7 F8               [12] 7151 	mov	r0,a
      0053A8 E5 08            [12] 7152 	mov	a,_bp
      0053AA 24 0B            [12] 7153 	add	a,#0x0b
      0053AC F9               [12] 7154 	mov	r1,a
      0053AD 74 13            [12] 7155 	mov	a,#0x13
      0053AF 26               [12] 7156 	add	a,@r0
      0053B0 F7               [12] 7157 	mov	@r1,a
      0053B1 74 40            [12] 7158 	mov	a,#0x40
      0053B3 08               [12] 7159 	inc	r0
      0053B4 36               [12] 7160 	addc	a,@r0
      0053B5 09               [12] 7161 	inc	r1
      0053B6 F7               [12] 7162 	mov	@r1,a
      0053B7 08               [12] 7163 	inc	r0
      0053B8 09               [12] 7164 	inc	r1
      0053B9 E6               [12] 7165 	mov	a,@r0
      0053BA F7               [12] 7166 	mov	@r1,a
      0053BB E5 08            [12] 7167 	mov	a,_bp
      0053BD 24 0B            [12] 7168 	add	a,#0x0b
      0053BF F8               [12] 7169 	mov	r0,a
      0053C0 86 82            [24] 7170 	mov	dpl,@r0
      0053C2 08               [12] 7171 	inc	r0
      0053C3 86 83            [24] 7172 	mov	dph,@r0
      0053C5 08               [12] 7173 	inc	r0
      0053C6 86 F0            [24] 7174 	mov	b,@r0
      0053C8 12 6F D1         [24] 7175 	lcall	__gptrget
      0053CB FD               [12] 7176 	mov	r5,a
      0053CC A3               [24] 7177 	inc	dptr
      0053CD 12 6F D1         [24] 7178 	lcall	__gptrget
      0053D0 FE               [12] 7179 	mov	r6,a
      0053D1 A3               [24] 7180 	inc	dptr
      0053D2 12 6F D1         [24] 7181 	lcall	__gptrget
      0053D5 FF               [12] 7182 	mov	r7,a
      0053D6 C0 04            [24] 7183 	push	ar4
      0053D8 C0 03            [24] 7184 	push	ar3
      0053DA C0 02            [24] 7185 	push	ar2
      0053DC 8D 82            [24] 7186 	mov	dpl,r5
      0053DE 8E 83            [24] 7187 	mov	dph,r6
      0053E0 8F F0            [24] 7188 	mov	b,r7
      0053E2 12 27 B4         [24] 7189 	lcall	_stack_pop
      0053E5 AE 82            [24] 7190 	mov	r6,dpl
      0053E7 AF 83            [24] 7191 	mov	r7,dph
      0053E9 15 81            [12] 7192 	dec	sp
      0053EB 15 81            [12] 7193 	dec	sp
      0053ED 15 81            [12] 7194 	dec	sp
      0053EF EE               [12] 7195 	mov	a,r6
      0053F0 4F               [12] 7196 	orl	a,r7
      0053F1 70 25            [24] 7197 	jnz	00242$
      0053F3 7D 96            [12] 7198 	mov	r5,#___str_10
      0053F5 7C 88            [12] 7199 	mov	r4,#(___str_10 >> 8)
      0053F7 7B 80            [12] 7200 	mov	r3,#0x80
                                   7201 ;	calc.c:51: return;
      0053F9                       7202 00490$:
                                   7203 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0053F9 8D 82            [24] 7204 	mov	dpl,r5
      0053FB 8C 83            [24] 7205 	mov	dph,r4
      0053FD 8B F0            [24] 7206 	mov	b,r3
      0053FF 12 6F D1         [24] 7207 	lcall	__gptrget
      005402 FF               [12] 7208 	mov	r7,a
      005403 70 03            [24] 7209 	jnz	01398$
      005405 02 56 1B         [24] 7210 	ljmp	00249$
      005408                       7211 01398$:
      005408 7E 00            [12] 7212 	mov	r6,#0x00
      00540A 8F 82            [24] 7213 	mov	dpl,r7
      00540C 8E 83            [24] 7214 	mov	dph,r6
      00540E 12 2B D5         [24] 7215 	lcall	_putchar
      005411 0D               [12] 7216 	inc	r5
                                   7217 ;	calc.c:327: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      005412 BD 00 E4         [24] 7218 	cjne	r5,#0x00,00490$
      005415 0C               [12] 7219 	inc	r4
      005416 80 E1            [24] 7220 	sjmp	00490$
      005418                       7221 00242$:
                                   7222 ;	calc.c:328: else if (!stack_pop(ctx->ps, &d1)) {
      005418 E5 08            [12] 7223 	mov	a,_bp
      00541A 24 19            [12] 7224 	add	a,#0x19
      00541C FC               [12] 7225 	mov	r4,a
      00541D 7B 00            [12] 7226 	mov	r3,#0x00
      00541F 7A 40            [12] 7227 	mov	r2,#0x40
      005421 E5 08            [12] 7228 	mov	a,_bp
      005423 24 0B            [12] 7229 	add	a,#0x0b
      005425 F8               [12] 7230 	mov	r0,a
      005426 86 82            [24] 7231 	mov	dpl,@r0
      005428 08               [12] 7232 	inc	r0
      005429 86 83            [24] 7233 	mov	dph,@r0
      00542B 08               [12] 7234 	inc	r0
      00542C 86 F0            [24] 7235 	mov	b,@r0
      00542E 12 6F D1         [24] 7236 	lcall	__gptrget
      005431 FD               [12] 7237 	mov	r5,a
      005432 A3               [24] 7238 	inc	dptr
      005433 12 6F D1         [24] 7239 	lcall	__gptrget
      005436 FE               [12] 7240 	mov	r6,a
      005437 A3               [24] 7241 	inc	dptr
      005438 12 6F D1         [24] 7242 	lcall	__gptrget
      00543B FF               [12] 7243 	mov	r7,a
      00543C C0 04            [24] 7244 	push	ar4
      00543E C0 03            [24] 7245 	push	ar3
      005440 C0 02            [24] 7246 	push	ar2
      005442 8D 82            [24] 7247 	mov	dpl,r5
      005444 8E 83            [24] 7248 	mov	dph,r6
      005446 8F F0            [24] 7249 	mov	b,r7
      005448 12 27 B4         [24] 7250 	lcall	_stack_pop
      00544B AE 82            [24] 7251 	mov	r6,dpl
      00544D AF 83            [24] 7252 	mov	r7,dph
      00544F 15 81            [12] 7253 	dec	sp
      005451 15 81            [12] 7254 	dec	sp
      005453 15 81            [12] 7255 	dec	sp
      005455 EE               [12] 7256 	mov	a,r6
      005456 4F               [12] 7257 	orl	a,r7
      005457 70 63            [24] 7258 	jnz	00239$
                                   7259 ;	calc.c:329: (void)stack_push(ctx->ps, d0);
      005459 E5 08            [12] 7260 	mov	a,_bp
      00545B 24 0B            [12] 7261 	add	a,#0x0b
      00545D F8               [12] 7262 	mov	r0,a
      00545E 86 82            [24] 7263 	mov	dpl,@r0
      005460 08               [12] 7264 	inc	r0
      005461 86 83            [24] 7265 	mov	dph,@r0
      005463 08               [12] 7266 	inc	r0
      005464 86 F0            [24] 7267 	mov	b,@r0
      005466 12 6F D1         [24] 7268 	lcall	__gptrget
      005469 FD               [12] 7269 	mov	r5,a
      00546A A3               [24] 7270 	inc	dptr
      00546B 12 6F D1         [24] 7271 	lcall	__gptrget
      00546E FE               [12] 7272 	mov	r6,a
      00546F A3               [24] 7273 	inc	dptr
      005470 12 6F D1         [24] 7274 	lcall	__gptrget
      005473 FF               [12] 7275 	mov	r7,a
      005474 E5 08            [12] 7276 	mov	a,_bp
      005476 24 15            [12] 7277 	add	a,#0x15
      005478 F8               [12] 7278 	mov	r0,a
      005479 E6               [12] 7279 	mov	a,@r0
      00547A C0 E0            [24] 7280 	push	acc
      00547C 08               [12] 7281 	inc	r0
      00547D E6               [12] 7282 	mov	a,@r0
      00547E C0 E0            [24] 7283 	push	acc
      005480 08               [12] 7284 	inc	r0
      005481 E6               [12] 7285 	mov	a,@r0
      005482 C0 E0            [24] 7286 	push	acc
      005484 08               [12] 7287 	inc	r0
      005485 E6               [12] 7288 	mov	a,@r0
      005486 C0 E0            [24] 7289 	push	acc
      005488 8D 82            [24] 7290 	mov	dpl,r5
      00548A 8E 83            [24] 7291 	mov	dph,r6
      00548C 8F F0            [24] 7292 	mov	b,r7
      00548E 12 26 BA         [24] 7293 	lcall	_stack_push
      005491 E5 81            [12] 7294 	mov	a,sp
      005493 24 FC            [12] 7295 	add	a,#0xfc
      005495 F5 81            [12] 7296 	mov	sp,a
                                   7297 ;	calc.c:330: printstr("\r\nstack underflow\r\n");
      005497 7D 96            [12] 7298 	mov	r5,#___str_10
      005499 7C 88            [12] 7299 	mov	r4,#(___str_10 >> 8)
      00549B 7B 80            [12] 7300 	mov	r3,#0x80
                                   7301 ;	calc.c:51: return;
      00549D                       7302 00493$:
                                   7303 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00549D 8D 82            [24] 7304 	mov	dpl,r5
      00549F 8C 83            [24] 7305 	mov	dph,r4
      0054A1 8B F0            [24] 7306 	mov	b,r3
      0054A3 12 6F D1         [24] 7307 	lcall	__gptrget
      0054A6 FF               [12] 7308 	mov	r7,a
      0054A7 70 03            [24] 7309 	jnz	01401$
      0054A9 02 56 1B         [24] 7310 	ljmp	00249$
      0054AC                       7311 01401$:
      0054AC 7E 00            [12] 7312 	mov	r6,#0x00
      0054AE 8F 82            [24] 7313 	mov	dpl,r7
      0054B0 8E 83            [24] 7314 	mov	dph,r6
      0054B2 12 2B D5         [24] 7315 	lcall	_putchar
      0054B5 0D               [12] 7316 	inc	r5
                                   7317 ;	calc.c:330: printstr("\r\nstack underflow\r\n");
      0054B6 BD 00 E4         [24] 7318 	cjne	r5,#0x00,00493$
      0054B9 0C               [12] 7319 	inc	r4
      0054BA 80 E1            [24] 7320 	sjmp	00493$
      0054BC                       7321 00239$:
                                   7322 ;	calc.c:332: d1 <<= ((unsigned long)d0 & 0x0000001flu);
      0054BC E5 08            [12] 7323 	mov	a,_bp
      0054BE 24 15            [12] 7324 	add	a,#0x15
      0054C0 F8               [12] 7325 	mov	r0,a
      0054C1 86 07            [24] 7326 	mov	ar7,@r0
      0054C3 74 1F            [12] 7327 	mov	a,#0x1f
      0054C5 5F               [12] 7328 	anl	a,r7
      0054C6 FB               [12] 7329 	mov	r3,a
      0054C7 E5 08            [12] 7330 	mov	a,_bp
      0054C9 24 19            [12] 7331 	add	a,#0x19
      0054CB F8               [12] 7332 	mov	r0,a
      0054CC 86 04            [24] 7333 	mov	ar4,@r0
      0054CE 08               [12] 7334 	inc	r0
      0054CF 86 05            [24] 7335 	mov	ar5,@r0
      0054D1 08               [12] 7336 	inc	r0
      0054D2 86 06            [24] 7337 	mov	ar6,@r0
      0054D4 08               [12] 7338 	inc	r0
      0054D5 86 07            [24] 7339 	mov	ar7,@r0
      0054D7 8B F0            [24] 7340 	mov	b,r3
      0054D9 05 F0            [12] 7341 	inc	b
      0054DB 80 0C            [24] 7342 	sjmp	01404$
      0054DD                       7343 01403$:
      0054DD EC               [12] 7344 	mov	a,r4
      0054DE 2C               [12] 7345 	add	a,r4
      0054DF FC               [12] 7346 	mov	r4,a
      0054E0 ED               [12] 7347 	mov	a,r5
      0054E1 33               [12] 7348 	rlc	a
      0054E2 FD               [12] 7349 	mov	r5,a
      0054E3 EE               [12] 7350 	mov	a,r6
      0054E4 33               [12] 7351 	rlc	a
      0054E5 FE               [12] 7352 	mov	r6,a
      0054E6 EF               [12] 7353 	mov	a,r7
      0054E7 33               [12] 7354 	rlc	a
      0054E8 FF               [12] 7355 	mov	r7,a
      0054E9                       7356 01404$:
      0054E9 D5 F0 F1         [24] 7357 	djnz	b,01403$
      0054EC E5 08            [12] 7358 	mov	a,_bp
      0054EE 24 19            [12] 7359 	add	a,#0x19
      0054F0 F8               [12] 7360 	mov	r0,a
      0054F1 A6 04            [24] 7361 	mov	@r0,ar4
      0054F3 08               [12] 7362 	inc	r0
      0054F4 A6 05            [24] 7363 	mov	@r0,ar5
      0054F6 08               [12] 7364 	inc	r0
      0054F7 A6 06            [24] 7365 	mov	@r0,ar6
      0054F9 08               [12] 7366 	inc	r0
      0054FA A6 07            [24] 7367 	mov	@r0,ar7
                                   7368 ;	calc.c:333: (void)stack_push(ctx->ps, d1);
      0054FC E5 08            [12] 7369 	mov	a,_bp
      0054FE 24 0B            [12] 7370 	add	a,#0x0b
      005500 F8               [12] 7371 	mov	r0,a
      005501 86 82            [24] 7372 	mov	dpl,@r0
      005503 08               [12] 7373 	inc	r0
      005504 86 83            [24] 7374 	mov	dph,@r0
      005506 08               [12] 7375 	inc	r0
      005507 86 F0            [24] 7376 	mov	b,@r0
      005509 12 6F D1         [24] 7377 	lcall	__gptrget
      00550C FD               [12] 7378 	mov	r5,a
      00550D A3               [24] 7379 	inc	dptr
      00550E 12 6F D1         [24] 7380 	lcall	__gptrget
      005511 FE               [12] 7381 	mov	r6,a
      005512 A3               [24] 7382 	inc	dptr
      005513 12 6F D1         [24] 7383 	lcall	__gptrget
      005516 FF               [12] 7384 	mov	r7,a
      005517 E5 08            [12] 7385 	mov	a,_bp
      005519 24 19            [12] 7386 	add	a,#0x19
      00551B F8               [12] 7387 	mov	r0,a
      00551C E6               [12] 7388 	mov	a,@r0
      00551D C0 E0            [24] 7389 	push	acc
      00551F 08               [12] 7390 	inc	r0
      005520 E6               [12] 7391 	mov	a,@r0
      005521 C0 E0            [24] 7392 	push	acc
      005523 08               [12] 7393 	inc	r0
      005524 E6               [12] 7394 	mov	a,@r0
      005525 C0 E0            [24] 7395 	push	acc
      005527 08               [12] 7396 	inc	r0
      005528 E6               [12] 7397 	mov	a,@r0
      005529 C0 E0            [24] 7398 	push	acc
      00552B 8D 82            [24] 7399 	mov	dpl,r5
      00552D 8E 83            [24] 7400 	mov	dph,r6
      00552F 8F F0            [24] 7401 	mov	b,r7
      005531 12 26 BA         [24] 7402 	lcall	_stack_push
      005534 E5 81            [12] 7403 	mov	a,sp
      005536 24 FC            [12] 7404 	add	a,#0xfc
      005538 F5 81            [12] 7405 	mov	sp,a
                                   7406 ;	calc.c:335: break;
      00553A 02 56 1B         [24] 7407 	ljmp	00249$
                                   7408 ;	calc.c:336: case '~':
      00553D                       7409 00244$:
                                   7410 ;	calc.c:337: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      00553D E5 08            [12] 7411 	mov	a,_bp
      00553F 24 15            [12] 7412 	add	a,#0x15
      005541 FF               [12] 7413 	mov	r7,a
      005542 E5 08            [12] 7414 	mov	a,_bp
      005544 24 0E            [12] 7415 	add	a,#0x0e
      005546 F8               [12] 7416 	mov	r0,a
      005547 A6 07            [24] 7417 	mov	@r0,ar7
      005549 08               [12] 7418 	inc	r0
      00554A 76 00            [12] 7419 	mov	@r0,#0x00
      00554C 08               [12] 7420 	inc	r0
      00554D 76 40            [12] 7421 	mov	@r0,#0x40
      00554F E5 08            [12] 7422 	mov	a,_bp
      005551 24 12            [12] 7423 	add	a,#0x12
      005553 F8               [12] 7424 	mov	r0,a
      005554 74 13            [12] 7425 	mov	a,#0x13
      005556 26               [12] 7426 	add	a,@r0
      005557 FA               [12] 7427 	mov	r2,a
      005558 74 40            [12] 7428 	mov	a,#0x40
      00555A 08               [12] 7429 	inc	r0
      00555B 36               [12] 7430 	addc	a,@r0
      00555C FB               [12] 7431 	mov	r3,a
      00555D 08               [12] 7432 	inc	r0
      00555E 86 04            [24] 7433 	mov	ar4,@r0
      005560 8A 82            [24] 7434 	mov	dpl,r2
      005562 8B 83            [24] 7435 	mov	dph,r3
      005564 8C F0            [24] 7436 	mov	b,r4
      005566 12 6F D1         [24] 7437 	lcall	__gptrget
      005569 FD               [12] 7438 	mov	r5,a
      00556A A3               [24] 7439 	inc	dptr
      00556B 12 6F D1         [24] 7440 	lcall	__gptrget
      00556E FE               [12] 7441 	mov	r6,a
      00556F A3               [24] 7442 	inc	dptr
      005570 12 6F D1         [24] 7443 	lcall	__gptrget
      005573 FF               [12] 7444 	mov	r7,a
      005574 C0 04            [24] 7445 	push	ar4
      005576 C0 03            [24] 7446 	push	ar3
      005578 C0 02            [24] 7447 	push	ar2
      00557A E5 08            [12] 7448 	mov	a,_bp
      00557C 24 0E            [12] 7449 	add	a,#0x0e
      00557E F8               [12] 7450 	mov	r0,a
      00557F E6               [12] 7451 	mov	a,@r0
      005580 C0 E0            [24] 7452 	push	acc
      005582 08               [12] 7453 	inc	r0
      005583 E6               [12] 7454 	mov	a,@r0
      005584 C0 E0            [24] 7455 	push	acc
      005586 08               [12] 7456 	inc	r0
      005587 E6               [12] 7457 	mov	a,@r0
      005588 C0 E0            [24] 7458 	push	acc
      00558A 8D 82            [24] 7459 	mov	dpl,r5
      00558C 8E 83            [24] 7460 	mov	dph,r6
      00558E 8F F0            [24] 7461 	mov	b,r7
      005590 12 27 B4         [24] 7462 	lcall	_stack_pop
      005593 AE 82            [24] 7463 	mov	r6,dpl
      005595 AF 83            [24] 7464 	mov	r7,dph
      005597 15 81            [12] 7465 	dec	sp
      005599 15 81            [12] 7466 	dec	sp
      00559B 15 81            [12] 7467 	dec	sp
      00559D D0 02            [24] 7468 	pop	ar2
      00559F D0 03            [24] 7469 	pop	ar3
      0055A1 D0 04            [24] 7470 	pop	ar4
      0055A3 EE               [12] 7471 	mov	a,r6
      0055A4 4F               [12] 7472 	orl	a,r7
      0055A5 70 22            [24] 7473 	jnz	00246$
      0055A7 7D 96            [12] 7474 	mov	r5,#___str_10
      0055A9 7C 88            [12] 7475 	mov	r4,#(___str_10 >> 8)
      0055AB 7B 80            [12] 7476 	mov	r3,#0x80
                                   7477 ;	calc.c:51: return;
      0055AD                       7478 00496$:
                                   7479 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0055AD 8D 82            [24] 7480 	mov	dpl,r5
      0055AF 8C 83            [24] 7481 	mov	dph,r4
      0055B1 8B F0            [24] 7482 	mov	b,r3
      0055B3 12 6F D1         [24] 7483 	lcall	__gptrget
      0055B6 FF               [12] 7484 	mov	r7,a
      0055B7 60 62            [24] 7485 	jz	00249$
      0055B9 7E 00            [12] 7486 	mov	r6,#0x00
      0055BB 8F 82            [24] 7487 	mov	dpl,r7
      0055BD 8E 83            [24] 7488 	mov	dph,r6
      0055BF 12 2B D5         [24] 7489 	lcall	_putchar
      0055C2 0D               [12] 7490 	inc	r5
                                   7491 ;	calc.c:337: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0055C3 BD 00 E7         [24] 7492 	cjne	r5,#0x00,00496$
      0055C6 0C               [12] 7493 	inc	r4
      0055C7 80 E4            [24] 7494 	sjmp	00496$
      0055C9                       7495 00246$:
                                   7496 ;	calc.c:339: d0 = ~d0;
      0055C9 E5 08            [12] 7497 	mov	a,_bp
      0055CB 24 15            [12] 7498 	add	a,#0x15
      0055CD F8               [12] 7499 	mov	r0,a
      0055CE E6               [12] 7500 	mov	a,@r0
      0055CF F4               [12] 7501 	cpl	a
      0055D0 F6               [12] 7502 	mov	@r0,a
      0055D1 08               [12] 7503 	inc	r0
      0055D2 E6               [12] 7504 	mov	a,@r0
      0055D3 F4               [12] 7505 	cpl	a
      0055D4 F6               [12] 7506 	mov	@r0,a
      0055D5 08               [12] 7507 	inc	r0
      0055D6 E6               [12] 7508 	mov	a,@r0
      0055D7 F4               [12] 7509 	cpl	a
      0055D8 F6               [12] 7510 	mov	@r0,a
      0055D9 08               [12] 7511 	inc	r0
      0055DA E6               [12] 7512 	mov	a,@r0
      0055DB F4               [12] 7513 	cpl	a
      0055DC F6               [12] 7514 	mov	@r0,a
                                   7515 ;	calc.c:340: (void)stack_push(ctx->ps, d0);
      0055DD 8A 82            [24] 7516 	mov	dpl,r2
      0055DF 8B 83            [24] 7517 	mov	dph,r3
      0055E1 8C F0            [24] 7518 	mov	b,r4
      0055E3 12 6F D1         [24] 7519 	lcall	__gptrget
      0055E6 FA               [12] 7520 	mov	r2,a
      0055E7 A3               [24] 7521 	inc	dptr
      0055E8 12 6F D1         [24] 7522 	lcall	__gptrget
      0055EB FB               [12] 7523 	mov	r3,a
      0055EC A3               [24] 7524 	inc	dptr
      0055ED 12 6F D1         [24] 7525 	lcall	__gptrget
      0055F0 FC               [12] 7526 	mov	r4,a
      0055F1 E5 08            [12] 7527 	mov	a,_bp
      0055F3 24 15            [12] 7528 	add	a,#0x15
      0055F5 F8               [12] 7529 	mov	r0,a
      0055F6 E6               [12] 7530 	mov	a,@r0
      0055F7 C0 E0            [24] 7531 	push	acc
      0055F9 08               [12] 7532 	inc	r0
      0055FA E6               [12] 7533 	mov	a,@r0
      0055FB C0 E0            [24] 7534 	push	acc
      0055FD 08               [12] 7535 	inc	r0
      0055FE E6               [12] 7536 	mov	a,@r0
      0055FF C0 E0            [24] 7537 	push	acc
      005601 08               [12] 7538 	inc	r0
      005602 E6               [12] 7539 	mov	a,@r0
      005603 C0 E0            [24] 7540 	push	acc
      005605 8A 82            [24] 7541 	mov	dpl,r2
      005607 8B 83            [24] 7542 	mov	dph,r3
      005609 8C F0            [24] 7543 	mov	b,r4
      00560B 12 26 BA         [24] 7544 	lcall	_stack_push
      00560E E5 81            [12] 7545 	mov	a,sp
      005610 24 FC            [12] 7546 	add	a,#0xfc
      005612 F5 81            [12] 7547 	mov	sp,a
                                   7548 ;	calc.c:342: break;
                                   7549 ;	calc.c:343: default:
      005614 80 05            [24] 7550 	sjmp	00249$
      005616                       7551 00248$:
                                   7552 ;	calc.c:344: return UNDEF;
      005616 90 80 00         [24] 7553 	mov	dptr,#0x8000
                                   7554 ;	calc.c:345: }
      005619 80 03            [24] 7555 	sjmp	00498$
      00561B                       7556 00249$:
                                   7557 ;	calc.c:347: return 1;
      00561B 90 00 01         [24] 7558 	mov	dptr,#0x0001
      00561E                       7559 00498$:
                                   7560 ;	calc.c:348: }
      00561E 85 08 81         [24] 7561 	mov	sp,_bp
      005621 D0 08            [24] 7562 	pop	_bp
      005623 22               [24] 7563 	ret
                                   7564 ;------------------------------------------------------------
                                   7565 ;Allocation info for local variables in function 'push_acc'
                                   7566 ;------------------------------------------------------------
                                   7567 ;delta                     Allocated to stack - _bp -5
                                   7568 ;_ctx                      Allocated to stack - _bp +5
                                   7569 ;ctx                       Allocated to registers r2 r3 r4 
                                   7570 ;__1310720125              Allocated to registers 
                                   7571 ;s                         Allocated to registers r5 r6 r7 
                                   7572 ;sloc0                     Allocated to stack - _bp +1
                                   7573 ;------------------------------------------------------------
                                   7574 ;	calc.c:350: static int push_acc(void *_ctx, delta_t *delta) __reentrant {
                                   7575 ;	-----------------------------------------
                                   7576 ;	 function push_acc
                                   7577 ;	-----------------------------------------
      005624                       7578 _push_acc:
      005624 C0 08            [24] 7579 	push	_bp
      005626 E5 81            [12] 7580 	mov	a,sp
      005628 F5 08            [12] 7581 	mov	_bp,a
      00562A 24 07            [12] 7582 	add	a,#0x07
      00562C F5 81            [12] 7583 	mov	sp,a
      00562E C8               [12] 7584 	xch	a,r0
      00562F E5 08            [12] 7585 	mov	a,_bp
      005631 24 05            [12] 7586 	add	a,#0x05
      005633 C8               [12] 7587 	xch	a,r0
      005634 A6 82            [24] 7588 	mov	@r0,dpl
      005636 08               [12] 7589 	inc	r0
      005637 A6 83            [24] 7590 	mov	@r0,dph
      005639 08               [12] 7591 	inc	r0
      00563A A6 F0            [24] 7592 	mov	@r0,b
                                   7593 ;	calc.c:351: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
      00563C E5 08            [12] 7594 	mov	a,_bp
      00563E 24 05            [12] 7595 	add	a,#0x05
      005640 F8               [12] 7596 	mov	r0,a
      005641 86 02            [24] 7597 	mov	ar2,@r0
      005643 08               [12] 7598 	inc	r0
      005644 86 03            [24] 7599 	mov	ar3,@r0
      005646 08               [12] 7600 	inc	r0
      005647 86 04            [24] 7601 	mov	ar4,@r0
                                   7602 ;	calc.c:355: ctx->acc_valid = 0;
      005649 74 06            [12] 7603 	mov	a,#0x06
      00564B 2A               [12] 7604 	add	a,r2
      00564C FD               [12] 7605 	mov	r5,a
      00564D E4               [12] 7606 	clr	a
      00564E 3B               [12] 7607 	addc	a,r3
      00564F FE               [12] 7608 	mov	r6,a
      005650 8C 07            [24] 7609 	mov	ar7,r4
      005652 8D 82            [24] 7610 	mov	dpl,r5
      005654 8E 83            [24] 7611 	mov	dph,r6
      005656 8F F0            [24] 7612 	mov	b,r7
      005658 E4               [12] 7613 	clr	a
      005659 12 6B 56         [24] 7614 	lcall	__gptrput
                                   7615 ;	calc.c:356: if (!stack_push(ctx->ps, ctx->acc)) printstr("\r\nstack overflow\r\n");
      00565C 74 02            [12] 7616 	mov	a,#0x02
      00565E 2A               [12] 7617 	add	a,r2
      00565F FF               [12] 7618 	mov	r7,a
      005660 E4               [12] 7619 	clr	a
      005661 3B               [12] 7620 	addc	a,r3
      005662 FD               [12] 7621 	mov	r5,a
      005663 8C 06            [24] 7622 	mov	ar6,r4
      005665 8F 82            [24] 7623 	mov	dpl,r7
      005667 8D 83            [24] 7624 	mov	dph,r5
      005669 8E F0            [24] 7625 	mov	b,r6
      00566B A8 08            [24] 7626 	mov	r0,_bp
      00566D 08               [12] 7627 	inc	r0
      00566E 12 6F D1         [24] 7628 	lcall	__gptrget
      005671 F6               [12] 7629 	mov	@r0,a
      005672 A3               [24] 7630 	inc	dptr
      005673 12 6F D1         [24] 7631 	lcall	__gptrget
      005676 08               [12] 7632 	inc	r0
      005677 F6               [12] 7633 	mov	@r0,a
      005678 A3               [24] 7634 	inc	dptr
      005679 12 6F D1         [24] 7635 	lcall	__gptrget
      00567C 08               [12] 7636 	inc	r0
      00567D F6               [12] 7637 	mov	@r0,a
      00567E A3               [24] 7638 	inc	dptr
      00567F 12 6F D1         [24] 7639 	lcall	__gptrget
      005682 08               [12] 7640 	inc	r0
      005683 F6               [12] 7641 	mov	@r0,a
      005684 74 13            [12] 7642 	mov	a,#0x13
      005686 2A               [12] 7643 	add	a,r2
      005687 FA               [12] 7644 	mov	r2,a
      005688 74 40            [12] 7645 	mov	a,#0x40
      00568A 3B               [12] 7646 	addc	a,r3
      00568B FB               [12] 7647 	mov	r3,a
      00568C 8C 07            [24] 7648 	mov	ar7,r4
      00568E 8A 82            [24] 7649 	mov	dpl,r2
      005690 8B 83            [24] 7650 	mov	dph,r3
      005692 8F F0            [24] 7651 	mov	b,r7
      005694 12 6F D1         [24] 7652 	lcall	__gptrget
      005697 FA               [12] 7653 	mov	r2,a
      005698 A3               [24] 7654 	inc	dptr
      005699 12 6F D1         [24] 7655 	lcall	__gptrget
      00569C FB               [12] 7656 	mov	r3,a
      00569D A3               [24] 7657 	inc	dptr
      00569E 12 6F D1         [24] 7658 	lcall	__gptrget
      0056A1 FF               [12] 7659 	mov	r7,a
      0056A2 A8 08            [24] 7660 	mov	r0,_bp
      0056A4 08               [12] 7661 	inc	r0
      0056A5 E6               [12] 7662 	mov	a,@r0
      0056A6 C0 E0            [24] 7663 	push	acc
      0056A8 08               [12] 7664 	inc	r0
      0056A9 E6               [12] 7665 	mov	a,@r0
      0056AA C0 E0            [24] 7666 	push	acc
      0056AC 08               [12] 7667 	inc	r0
      0056AD E6               [12] 7668 	mov	a,@r0
      0056AE C0 E0            [24] 7669 	push	acc
      0056B0 08               [12] 7670 	inc	r0
      0056B1 E6               [12] 7671 	mov	a,@r0
      0056B2 C0 E0            [24] 7672 	push	acc
      0056B4 8A 82            [24] 7673 	mov	dpl,r2
      0056B6 8B 83            [24] 7674 	mov	dph,r3
      0056B8 8F F0            [24] 7675 	mov	b,r7
      0056BA 12 26 BA         [24] 7676 	lcall	_stack_push
      0056BD AE 82            [24] 7677 	mov	r6,dpl
      0056BF AF 83            [24] 7678 	mov	r7,dph
      0056C1 E5 81            [12] 7679 	mov	a,sp
      0056C3 24 FC            [12] 7680 	add	a,#0xfc
      0056C5 F5 81            [12] 7681 	mov	sp,a
      0056C7 EE               [12] 7682 	mov	a,r6
      0056C8 4F               [12] 7683 	orl	a,r7
      0056C9 70 22            [24] 7684 	jnz	00102$
      0056CB 7D E5            [12] 7685 	mov	r5,#___str_13
      0056CD 7E 88            [12] 7686 	mov	r6,#(___str_13 >> 8)
      0056CF 7F 80            [12] 7687 	mov	r7,#0x80
                                   7688 ;	calc.c:51: return;
      0056D1                       7689 00109$:
                                   7690 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0056D1 8D 82            [24] 7691 	mov	dpl,r5
      0056D3 8E 83            [24] 7692 	mov	dph,r6
      0056D5 8F F0            [24] 7693 	mov	b,r7
      0056D7 12 6F D1         [24] 7694 	lcall	__gptrget
      0056DA FC               [12] 7695 	mov	r4,a
      0056DB 60 10            [24] 7696 	jz	00102$
      0056DD 7B 00            [12] 7697 	mov	r3,#0x00
      0056DF 8C 82            [24] 7698 	mov	dpl,r4
      0056E1 8B 83            [24] 7699 	mov	dph,r3
      0056E3 12 2B D5         [24] 7700 	lcall	_putchar
      0056E6 0D               [12] 7701 	inc	r5
                                   7702 ;	calc.c:356: if (!stack_push(ctx->ps, ctx->acc)) printstr("\r\nstack overflow\r\n");
      0056E7 BD 00 E7         [24] 7703 	cjne	r5,#0x00,00109$
      0056EA 0E               [12] 7704 	inc	r6
      0056EB 80 E4            [24] 7705 	sjmp	00109$
      0056ED                       7706 00102$:
                                   7707 ;	calc.c:358: if (delta->event == EVENT_OP) return operator(_ctx, delta);
      0056ED E5 08            [12] 7708 	mov	a,_bp
      0056EF 24 FB            [12] 7709 	add	a,#0xfb
      0056F1 F8               [12] 7710 	mov	r0,a
      0056F2 86 05            [24] 7711 	mov	ar5,@r0
      0056F4 08               [12] 7712 	inc	r0
      0056F5 86 06            [24] 7713 	mov	ar6,@r0
      0056F7 08               [12] 7714 	inc	r0
      0056F8 86 07            [24] 7715 	mov	ar7,@r0
      0056FA 74 02            [12] 7716 	mov	a,#0x02
      0056FC 2D               [12] 7717 	add	a,r5
      0056FD FA               [12] 7718 	mov	r2,a
      0056FE E4               [12] 7719 	clr	a
      0056FF 3E               [12] 7720 	addc	a,r6
      005700 FB               [12] 7721 	mov	r3,a
      005701 8F 04            [24] 7722 	mov	ar4,r7
      005703 8A 82            [24] 7723 	mov	dpl,r2
      005705 8B 83            [24] 7724 	mov	dph,r3
      005707 8C F0            [24] 7725 	mov	b,r4
      005709 12 6F D1         [24] 7726 	lcall	__gptrget
      00570C FA               [12] 7727 	mov	r2,a
      00570D A3               [24] 7728 	inc	dptr
      00570E 12 6F D1         [24] 7729 	lcall	__gptrget
      005711 FB               [12] 7730 	mov	r3,a
      005712 BA 02 29         [24] 7731 	cjne	r2,#0x02,00104$
      005715 BB 00 26         [24] 7732 	cjne	r3,#0x00,00104$
      005718 C0 05            [24] 7733 	push	ar5
      00571A C0 06            [24] 7734 	push	ar6
      00571C C0 07            [24] 7735 	push	ar7
      00571E E5 08            [12] 7736 	mov	a,_bp
      005720 24 05            [12] 7737 	add	a,#0x05
      005722 F8               [12] 7738 	mov	r0,a
      005723 86 82            [24] 7739 	mov	dpl,@r0
      005725 08               [12] 7740 	inc	r0
      005726 86 83            [24] 7741 	mov	dph,@r0
      005728 08               [12] 7742 	inc	r0
      005729 86 F0            [24] 7743 	mov	b,@r0
      00572B 12 33 96         [24] 7744 	lcall	_operator
      00572E AE 82            [24] 7745 	mov	r6,dpl
      005730 AF 83            [24] 7746 	mov	r7,dph
      005732 15 81            [12] 7747 	dec	sp
      005734 15 81            [12] 7748 	dec	sp
      005736 15 81            [12] 7749 	dec	sp
      005738 8E 82            [24] 7750 	mov	dpl,r6
      00573A 8F 83            [24] 7751 	mov	dph,r7
      00573C 80 03            [24] 7752 	sjmp	00111$
      00573E                       7753 00104$:
                                   7754 ;	calc.c:359: else return 1;
      00573E 90 00 01         [24] 7755 	mov	dptr,#0x0001
      005741                       7756 00111$:
                                   7757 ;	calc.c:360: }
      005741 85 08 81         [24] 7758 	mov	sp,_bp
      005744 D0 08            [24] 7759 	pop	_bp
      005746 22               [24] 7760 	ret
                                   7761 ;------------------------------------------------------------
                                   7762 ;Allocation info for local variables in function 'reset_acc'
                                   7763 ;------------------------------------------------------------
                                   7764 ;delta                     Allocated to stack - _bp -5
                                   7765 ;_ctx                      Allocated to registers r5 r6 r7 
                                   7766 ;ctx                       Allocated to registers r5 r6 r7 
                                   7767 ;------------------------------------------------------------
                                   7768 ;	calc.c:362: static int reset_acc(void *_ctx, delta_t *delta) __reentrant {
                                   7769 ;	-----------------------------------------
                                   7770 ;	 function reset_acc
                                   7771 ;	-----------------------------------------
      005747                       7772 _reset_acc:
      005747 C0 08            [24] 7773 	push	_bp
      005749 85 81 08         [24] 7774 	mov	_bp,sp
      00574C AD 82            [24] 7775 	mov	r5,dpl
      00574E AE 83            [24] 7776 	mov	r6,dph
      005750 AF F0            [24] 7777 	mov	r7,b
                                   7778 ;	calc.c:363: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
                                   7779 ;	calc.c:365: if (delta->event == EVENT_RSTA_I) ctx->acc_valid = 0;
      005752 E5 08            [12] 7780 	mov	a,_bp
      005754 24 FB            [12] 7781 	add	a,#0xfb
      005756 F8               [12] 7782 	mov	r0,a
      005757 86 02            [24] 7783 	mov	ar2,@r0
      005759 08               [12] 7784 	inc	r0
      00575A 86 03            [24] 7785 	mov	ar3,@r0
      00575C 08               [12] 7786 	inc	r0
      00575D 86 04            [24] 7787 	mov	ar4,@r0
      00575F 74 02            [12] 7788 	mov	a,#0x02
      005761 2A               [12] 7789 	add	a,r2
      005762 FA               [12] 7790 	mov	r2,a
      005763 E4               [12] 7791 	clr	a
      005764 3B               [12] 7792 	addc	a,r3
      005765 FB               [12] 7793 	mov	r3,a
      005766 8A 82            [24] 7794 	mov	dpl,r2
      005768 8B 83            [24] 7795 	mov	dph,r3
      00576A 8C F0            [24] 7796 	mov	b,r4
      00576C 12 6F D1         [24] 7797 	lcall	__gptrget
      00576F FA               [12] 7798 	mov	r2,a
      005770 A3               [24] 7799 	inc	dptr
      005771 12 6F D1         [24] 7800 	lcall	__gptrget
      005774 FB               [12] 7801 	mov	r3,a
      005775 BA 07 16         [24] 7802 	cjne	r2,#0x07,00102$
      005778 BB 00 13         [24] 7803 	cjne	r3,#0x00,00102$
      00577B 74 06            [12] 7804 	mov	a,#0x06
      00577D 2D               [12] 7805 	add	a,r5
      00577E FA               [12] 7806 	mov	r2,a
      00577F E4               [12] 7807 	clr	a
      005780 3E               [12] 7808 	addc	a,r6
      005781 FB               [12] 7809 	mov	r3,a
      005782 8F 04            [24] 7810 	mov	ar4,r7
      005784 8A 82            [24] 7811 	mov	dpl,r2
      005786 8B 83            [24] 7812 	mov	dph,r3
      005788 8C F0            [24] 7813 	mov	b,r4
      00578A E4               [12] 7814 	clr	a
      00578B 12 6B 56         [24] 7815 	lcall	__gptrput
      00578E                       7816 00102$:
                                   7817 ;	calc.c:366: ctx->acc = 0l;
      00578E 74 02            [12] 7818 	mov	a,#0x02
      005790 2D               [12] 7819 	add	a,r5
      005791 FD               [12] 7820 	mov	r5,a
      005792 E4               [12] 7821 	clr	a
      005793 3E               [12] 7822 	addc	a,r6
      005794 FE               [12] 7823 	mov	r6,a
      005795 8D 82            [24] 7824 	mov	dpl,r5
      005797 8E 83            [24] 7825 	mov	dph,r6
      005799 8F F0            [24] 7826 	mov	b,r7
      00579B E4               [12] 7827 	clr	a
      00579C 12 6B 56         [24] 7828 	lcall	__gptrput
      00579F A3               [24] 7829 	inc	dptr
      0057A0 12 6B 56         [24] 7830 	lcall	__gptrput
      0057A3 A3               [24] 7831 	inc	dptr
      0057A4 12 6B 56         [24] 7832 	lcall	__gptrput
      0057A7 A3               [24] 7833 	inc	dptr
      0057A8 12 6B 56         [24] 7834 	lcall	__gptrput
                                   7835 ;	calc.c:368: return 1;
      0057AB 90 00 01         [24] 7836 	mov	dptr,#0x0001
                                   7837 ;	calc.c:369: }
      0057AE D0 08            [24] 7838 	pop	_bp
      0057B0 22               [24] 7839 	ret
                                   7840 ;------------------------------------------------------------
                                   7841 ;Allocation info for local variables in function 'reset_base'
                                   7842 ;------------------------------------------------------------
                                   7843 ;delta                     Allocated to stack - _bp -5
                                   7844 ;_ctx                      Allocated to registers r5 r6 r7 
                                   7845 ;ctx                       Allocated to registers r5 r6 r7 
                                   7846 ;------------------------------------------------------------
                                   7847 ;	calc.c:371: static int reset_base(void *_ctx, delta_t *delta) __reentrant {
                                   7848 ;	-----------------------------------------
                                   7849 ;	 function reset_base
                                   7850 ;	-----------------------------------------
      0057B1                       7851 _reset_base:
      0057B1 C0 08            [24] 7852 	push	_bp
      0057B3 85 81 08         [24] 7853 	mov	_bp,sp
      0057B6 AD 82            [24] 7854 	mov	r5,dpl
      0057B8 AE 83            [24] 7855 	mov	r6,dph
      0057BA AF F0            [24] 7856 	mov	r7,b
                                   7857 ;	calc.c:372: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
                                   7858 ;	calc.c:376: switch (ctx->digit[0]) {
      0057BC 74 07            [12] 7859 	mov	a,#0x07
      0057BE 2D               [12] 7860 	add	a,r5
      0057BF FA               [12] 7861 	mov	r2,a
      0057C0 E4               [12] 7862 	clr	a
      0057C1 3E               [12] 7863 	addc	a,r6
      0057C2 FB               [12] 7864 	mov	r3,a
      0057C3 8F 04            [24] 7865 	mov	ar4,r7
      0057C5 8A 82            [24] 7866 	mov	dpl,r2
      0057C7 8B 83            [24] 7867 	mov	dph,r3
      0057C9 8C F0            [24] 7868 	mov	b,r4
      0057CB 12 6F D1         [24] 7869 	lcall	__gptrget
      0057CE FC               [12] 7870 	mov	r4,a
      0057CF BC 48 02         [24] 7871 	cjne	r4,#0x48,00124$
      0057D2 80 0F            [24] 7872 	sjmp	00101$
      0057D4                       7873 00124$:
      0057D4 BC 4F 02         [24] 7874 	cjne	r4,#0x4f,00125$
      0057D7 80 2E            [24] 7875 	sjmp	00103$
      0057D9                       7876 00125$:
      0057D9 BC 68 02         [24] 7877 	cjne	r4,#0x68,00126$
      0057DC 80 17            [24] 7878 	sjmp	00102$
      0057DE                       7879 00126$:
                                   7880 ;	calc.c:377: case 'H':
      0057DE BC 6F 48         [24] 7881 	cjne	r4,#0x6f,00105$
      0057E1 80 36            [24] 7882 	sjmp	00104$
      0057E3                       7883 00101$:
                                   7884 ;	calc.c:378: ctx->base = 16;
      0057E3 8D 82            [24] 7885 	mov	dpl,r5
      0057E5 8E 83            [24] 7886 	mov	dph,r6
      0057E7 8F F0            [24] 7887 	mov	b,r7
      0057E9 74 10            [12] 7888 	mov	a,#0x10
      0057EB 12 6B 56         [24] 7889 	lcall	__gptrput
      0057EE A3               [24] 7890 	inc	dptr
      0057EF E4               [12] 7891 	clr	a
      0057F0 12 6B 56         [24] 7892 	lcall	__gptrput
                                   7893 ;	calc.c:379: break;
                                   7894 ;	calc.c:380: case 'h':
      0057F3 80 34            [24] 7895 	sjmp	00105$
      0057F5                       7896 00102$:
                                   7897 ;	calc.c:381: ctx->base = 10;
      0057F5 8D 82            [24] 7898 	mov	dpl,r5
      0057F7 8E 83            [24] 7899 	mov	dph,r6
      0057F9 8F F0            [24] 7900 	mov	b,r7
      0057FB 74 0A            [12] 7901 	mov	a,#0x0a
      0057FD 12 6B 56         [24] 7902 	lcall	__gptrput
      005800 A3               [24] 7903 	inc	dptr
      005801 E4               [12] 7904 	clr	a
      005802 12 6B 56         [24] 7905 	lcall	__gptrput
                                   7906 ;	calc.c:382: break;
                                   7907 ;	calc.c:383: case 'O':
      005805 80 22            [24] 7908 	sjmp	00105$
      005807                       7909 00103$:
                                   7910 ;	calc.c:384: ctx->base = 8;
      005807 8D 82            [24] 7911 	mov	dpl,r5
      005809 8E 83            [24] 7912 	mov	dph,r6
      00580B 8F F0            [24] 7913 	mov	b,r7
      00580D 74 08            [12] 7914 	mov	a,#0x08
      00580F 12 6B 56         [24] 7915 	lcall	__gptrput
      005812 A3               [24] 7916 	inc	dptr
      005813 E4               [12] 7917 	clr	a
      005814 12 6B 56         [24] 7918 	lcall	__gptrput
                                   7919 ;	calc.c:385: break;
                                   7920 ;	calc.c:386: case 'o':
      005817 80 10            [24] 7921 	sjmp	00105$
      005819                       7922 00104$:
                                   7923 ;	calc.c:387: ctx->base = 2;
      005819 8D 82            [24] 7924 	mov	dpl,r5
      00581B 8E 83            [24] 7925 	mov	dph,r6
      00581D 8F F0            [24] 7926 	mov	b,r7
      00581F 74 02            [12] 7927 	mov	a,#0x02
      005821 12 6B 56         [24] 7928 	lcall	__gptrput
      005824 A3               [24] 7929 	inc	dptr
      005825 E4               [12] 7930 	clr	a
      005826 12 6B 56         [24] 7931 	lcall	__gptrput
                                   7932 ;	calc.c:389: }
      005829                       7933 00105$:
                                   7934 ;	calc.c:391: return 1;
      005829 90 00 01         [24] 7935 	mov	dptr,#0x0001
                                   7936 ;	calc.c:392: }
      00582C D0 08            [24] 7937 	pop	_bp
      00582E 22               [24] 7938 	ret
                                   7939 ;------------------------------------------------------------
                                   7940 ;Allocation info for local variables in function 'status'
                                   7941 ;------------------------------------------------------------
                                   7942 ;delta                     Allocated to stack - _bp -5
                                   7943 ;_ctx                      Allocated to registers r5 r6 r7 
                                   7944 ;ctx                       Allocated to stack - _bp +7
                                   7945 ;vals                      Allocated to stack - _bp +12
                                   7946 ;n                         Allocated to stack - _bp +10
                                   7947 ;__1310720127              Allocated to registers 
                                   7948 ;d                         Allocated to stack - _bp +20
                                   7949 ;mask                      Allocated to stack - _bp +24
                                   7950 ;__1310720129              Allocated to registers 
                                   7951 ;s                         Allocated to registers r2 r3 r4 
                                   7952 ;__1966080131              Allocated to registers 
                                   7953 ;d                         Allocated to stack - _bp +20
                                   7954 ;mask                      Allocated to stack - _bp +24
                                   7955 ;__1310720133              Allocated to registers 
                                   7956 ;s                         Allocated to registers r2 r3 r4 
                                   7957 ;__1966080135              Allocated to registers 
                                   7958 ;d                         Allocated to stack - _bp +20
                                   7959 ;mask                      Allocated to stack - _bp +24
                                   7960 ;__1310720137              Allocated to registers 
                                   7961 ;s                         Allocated to registers r2 r3 r4 
                                   7962 ;__1310720139              Allocated to registers 
                                   7963 ;s                         Allocated to registers r3 r4 r5 
                                   7964 ;__1966080141              Allocated to registers 
                                   7965 ;d                         Allocated to stack - _bp +20
                                   7966 ;mask                      Allocated to stack - _bp +24
                                   7967 ;__1310720143              Allocated to registers 
                                   7968 ;s                         Allocated to registers r5 r6 r7 
                                   7969 ;__1966080145              Allocated to registers 
                                   7970 ;d                         Allocated to stack - _bp +20
                                   7971 ;mask                      Allocated to stack - _bp +24
                                   7972 ;__1310720147              Allocated to registers 
                                   7973 ;s                         Allocated to registers r5 r6 r7 
                                   7974 ;sloc0                     Allocated to stack - _bp +1
                                   7975 ;sloc1                     Allocated to stack - _bp +4
                                   7976 ;------------------------------------------------------------
                                   7977 ;	calc.c:394: static int status(void *_ctx, delta_t *delta) __reentrant {
                                   7978 ;	-----------------------------------------
                                   7979 ;	 function status
                                   7980 ;	-----------------------------------------
      00582F                       7981 _status:
      00582F C0 08            [24] 7982 	push	_bp
      005831 E5 81            [12] 7983 	mov	a,sp
      005833 F5 08            [12] 7984 	mov	_bp,a
      005835 24 1B            [12] 7985 	add	a,#0x1b
      005837 F5 81            [12] 7986 	mov	sp,a
      005839 AD 82            [24] 7987 	mov	r5,dpl
      00583B AE 83            [24] 7988 	mov	r6,dph
      00583D AF F0            [24] 7989 	mov	r7,b
                                   7990 ;	calc.c:395: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
      00583F E5 08            [12] 7991 	mov	a,_bp
      005841 24 07            [12] 7992 	add	a,#0x07
      005843 F8               [12] 7993 	mov	r0,a
      005844 A6 05            [24] 7994 	mov	@r0,ar5
      005846 08               [12] 7995 	inc	r0
      005847 A6 06            [24] 7996 	mov	@r0,ar6
      005849 08               [12] 7997 	inc	r0
      00584A A6 07            [24] 7998 	mov	@r0,ar7
                                   7999 ;	calc.c:401: printf("\r\nbase = %d, ", ctx->base);
      00584C E5 08            [12] 8000 	mov	a,_bp
      00584E 24 07            [12] 8001 	add	a,#0x07
      005850 F8               [12] 8002 	mov	r0,a
      005851 86 82            [24] 8003 	mov	dpl,@r0
      005853 08               [12] 8004 	inc	r0
      005854 86 83            [24] 8005 	mov	dph,@r0
      005856 08               [12] 8006 	inc	r0
      005857 86 F0            [24] 8007 	mov	b,@r0
      005859 12 6F D1         [24] 8008 	lcall	__gptrget
      00585C FB               [12] 8009 	mov	r3,a
      00585D A3               [24] 8010 	inc	dptr
      00585E 12 6F D1         [24] 8011 	lcall	__gptrget
      005861 FC               [12] 8012 	mov	r4,a
      005862 C0 03            [24] 8013 	push	ar3
      005864 C0 04            [24] 8014 	push	ar4
      005866 74 0D            [12] 8015 	mov	a,#___str_15
      005868 C0 E0            [24] 8016 	push	acc
      00586A 74 89            [12] 8017 	mov	a,#(___str_15 >> 8)
      00586C C0 E0            [24] 8018 	push	acc
      00586E 74 80            [12] 8019 	mov	a,#0x80
      005870 C0 E0            [24] 8020 	push	acc
      005872 12 6F 98         [24] 8021 	lcall	_printf
      005875 E5 81            [12] 8022 	mov	a,sp
      005877 24 FB            [12] 8023 	add	a,#0xfb
      005879 F5 81            [12] 8024 	mov	sp,a
                                   8025 ;	calc.c:402: printf("acc = %ld / ", ctx->acc);
      00587B E5 08            [12] 8026 	mov	a,_bp
      00587D 24 07            [12] 8027 	add	a,#0x07
      00587F F8               [12] 8028 	mov	r0,a
      005880 A9 08            [24] 8029 	mov	r1,_bp
      005882 09               [12] 8030 	inc	r1
      005883 74 02            [12] 8031 	mov	a,#0x02
      005885 26               [12] 8032 	add	a,@r0
      005886 F7               [12] 8033 	mov	@r1,a
      005887 E4               [12] 8034 	clr	a
      005888 08               [12] 8035 	inc	r0
      005889 36               [12] 8036 	addc	a,@r0
      00588A 09               [12] 8037 	inc	r1
      00588B F7               [12] 8038 	mov	@r1,a
      00588C 08               [12] 8039 	inc	r0
      00588D 09               [12] 8040 	inc	r1
      00588E E6               [12] 8041 	mov	a,@r0
      00588F F7               [12] 8042 	mov	@r1,a
      005890 A8 08            [24] 8043 	mov	r0,_bp
      005892 08               [12] 8044 	inc	r0
      005893 86 82            [24] 8045 	mov	dpl,@r0
      005895 08               [12] 8046 	inc	r0
      005896 86 83            [24] 8047 	mov	dph,@r0
      005898 08               [12] 8048 	inc	r0
      005899 86 F0            [24] 8049 	mov	b,@r0
      00589B 12 6F D1         [24] 8050 	lcall	__gptrget
      00589E FC               [12] 8051 	mov	r4,a
      00589F A3               [24] 8052 	inc	dptr
      0058A0 12 6F D1         [24] 8053 	lcall	__gptrget
      0058A3 FD               [12] 8054 	mov	r5,a
      0058A4 A3               [24] 8055 	inc	dptr
      0058A5 12 6F D1         [24] 8056 	lcall	__gptrget
      0058A8 FE               [12] 8057 	mov	r6,a
      0058A9 A3               [24] 8058 	inc	dptr
      0058AA 12 6F D1         [24] 8059 	lcall	__gptrget
      0058AD FF               [12] 8060 	mov	r7,a
      0058AE C0 04            [24] 8061 	push	ar4
      0058B0 C0 05            [24] 8062 	push	ar5
      0058B2 C0 06            [24] 8063 	push	ar6
      0058B4 C0 07            [24] 8064 	push	ar7
      0058B6 74 1B            [12] 8065 	mov	a,#___str_16
      0058B8 C0 E0            [24] 8066 	push	acc
      0058BA 74 89            [12] 8067 	mov	a,#(___str_16 >> 8)
      0058BC C0 E0            [24] 8068 	push	acc
      0058BE 74 80            [12] 8069 	mov	a,#0x80
      0058C0 C0 E0            [24] 8070 	push	acc
      0058C2 12 6F 98         [24] 8071 	lcall	_printf
      0058C5 E5 81            [12] 8072 	mov	a,sp
      0058C7 24 F9            [12] 8073 	add	a,#0xf9
      0058C9 F5 81            [12] 8074 	mov	sp,a
                                   8075 ;	calc.c:403: printf("%08lx / ", ctx->acc);
      0058CB A8 08            [24] 8076 	mov	r0,_bp
      0058CD 08               [12] 8077 	inc	r0
      0058CE 86 82            [24] 8078 	mov	dpl,@r0
      0058D0 08               [12] 8079 	inc	r0
      0058D1 86 83            [24] 8080 	mov	dph,@r0
      0058D3 08               [12] 8081 	inc	r0
      0058D4 86 F0            [24] 8082 	mov	b,@r0
      0058D6 12 6F D1         [24] 8083 	lcall	__gptrget
      0058D9 FC               [12] 8084 	mov	r4,a
      0058DA A3               [24] 8085 	inc	dptr
      0058DB 12 6F D1         [24] 8086 	lcall	__gptrget
      0058DE FD               [12] 8087 	mov	r5,a
      0058DF A3               [24] 8088 	inc	dptr
      0058E0 12 6F D1         [24] 8089 	lcall	__gptrget
      0058E3 FE               [12] 8090 	mov	r6,a
      0058E4 A3               [24] 8091 	inc	dptr
      0058E5 12 6F D1         [24] 8092 	lcall	__gptrget
      0058E8 FF               [12] 8093 	mov	r7,a
      0058E9 C0 04            [24] 8094 	push	ar4
      0058EB C0 05            [24] 8095 	push	ar5
      0058ED C0 06            [24] 8096 	push	ar6
      0058EF C0 07            [24] 8097 	push	ar7
      0058F1 74 79            [12] 8098 	mov	a,#___str_4
      0058F3 C0 E0            [24] 8099 	push	acc
      0058F5 74 88            [12] 8100 	mov	a,#(___str_4 >> 8)
      0058F7 C0 E0            [24] 8101 	push	acc
      0058F9 74 80            [12] 8102 	mov	a,#0x80
      0058FB C0 E0            [24] 8103 	push	acc
      0058FD 12 6F 98         [24] 8104 	lcall	_printf
      005900 E5 81            [12] 8105 	mov	a,sp
      005902 24 F9            [12] 8106 	add	a,#0xf9
      005904 F5 81            [12] 8107 	mov	sp,a
                                   8108 ;	calc.c:404: printbin(ctx->acc);
      005906 A8 08            [24] 8109 	mov	r0,_bp
      005908 08               [12] 8110 	inc	r0
      005909 86 82            [24] 8111 	mov	dpl,@r0
      00590B 08               [12] 8112 	inc	r0
      00590C 86 83            [24] 8113 	mov	dph,@r0
      00590E 08               [12] 8114 	inc	r0
      00590F 86 F0            [24] 8115 	mov	b,@r0
      005911 E5 08            [12] 8116 	mov	a,_bp
      005913 24 14            [12] 8117 	add	a,#0x14
      005915 F9               [12] 8118 	mov	r1,a
      005916 12 6F D1         [24] 8119 	lcall	__gptrget
      005919 F7               [12] 8120 	mov	@r1,a
      00591A A3               [24] 8121 	inc	dptr
      00591B 12 6F D1         [24] 8122 	lcall	__gptrget
      00591E 09               [12] 8123 	inc	r1
      00591F F7               [12] 8124 	mov	@r1,a
      005920 A3               [24] 8125 	inc	dptr
      005921 12 6F D1         [24] 8126 	lcall	__gptrget
      005924 09               [12] 8127 	inc	r1
      005925 F7               [12] 8128 	mov	@r1,a
      005926 A3               [24] 8129 	inc	dptr
      005927 12 6F D1         [24] 8130 	lcall	__gptrget
      00592A 09               [12] 8131 	inc	r1
      00592B F7               [12] 8132 	mov	@r1,a
                                   8133 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      00592C E5 08            [12] 8134 	mov	a,_bp
      00592E 24 18            [12] 8135 	add	a,#0x18
      005930 F8               [12] 8136 	mov	r0,a
      005931 E4               [12] 8137 	clr	a
      005932 F6               [12] 8138 	mov	@r0,a
      005933 08               [12] 8139 	inc	r0
      005934 F6               [12] 8140 	mov	@r0,a
      005935 08               [12] 8141 	inc	r0
      005936 F6               [12] 8142 	mov	@r0,a
      005937 08               [12] 8143 	inc	r0
      005938 76 80            [12] 8144 	mov	@r0,#0x80
      00593A                       8145 00131$:
                                   8146 ;	calc.c:58: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      00593A E5 08            [12] 8147 	mov	a,_bp
      00593C 24 14            [12] 8148 	add	a,#0x14
      00593E F8               [12] 8149 	mov	r0,a
      00593F 86 04            [24] 8150 	mov	ar4,@r0
      005941 08               [12] 8151 	inc	r0
      005942 86 05            [24] 8152 	mov	ar5,@r0
      005944 08               [12] 8153 	inc	r0
      005945 86 06            [24] 8154 	mov	ar6,@r0
      005947 08               [12] 8155 	inc	r0
      005948 86 07            [24] 8156 	mov	ar7,@r0
      00594A E5 08            [12] 8157 	mov	a,_bp
      00594C 24 18            [12] 8158 	add	a,#0x18
      00594E F8               [12] 8159 	mov	r0,a
      00594F E6               [12] 8160 	mov	a,@r0
      005950 52 04            [12] 8161 	anl	ar4,a
      005952 08               [12] 8162 	inc	r0
      005953 E6               [12] 8163 	mov	a,@r0
      005954 52 05            [12] 8164 	anl	ar5,a
      005956 08               [12] 8165 	inc	r0
      005957 E6               [12] 8166 	mov	a,@r0
      005958 52 06            [12] 8167 	anl	ar6,a
      00595A 08               [12] 8168 	inc	r0
      00595B E6               [12] 8169 	mov	a,@r0
      00595C 52 07            [12] 8170 	anl	ar7,a
      00595E EC               [12] 8171 	mov	a,r4
      00595F 4D               [12] 8172 	orl	a,r5
      005960 4E               [12] 8173 	orl	a,r6
      005961 4F               [12] 8174 	orl	a,r7
      005962 60 06            [24] 8175 	jz	00161$
      005964 7E 31            [12] 8176 	mov	r6,#0x31
      005966 7F 00            [12] 8177 	mov	r7,#0x00
      005968 80 04            [24] 8178 	sjmp	00162$
      00596A                       8179 00161$:
      00596A 7E 30            [12] 8180 	mov	r6,#0x30
      00596C 7F 00            [12] 8181 	mov	r7,#0x00
      00596E                       8182 00162$:
      00596E 8E 82            [24] 8183 	mov	dpl,r6
      005970 8F 83            [24] 8184 	mov	dph,r7
      005972 12 2B D5         [24] 8185 	lcall	_putchar
                                   8186 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      005975 E5 08            [12] 8187 	mov	a,_bp
      005977 24 18            [12] 8188 	add	a,#0x18
      005979 F8               [12] 8189 	mov	r0,a
      00597A 08               [12] 8190 	inc	r0
      00597B 08               [12] 8191 	inc	r0
      00597C 08               [12] 8192 	inc	r0
      00597D E6               [12] 8193 	mov	a,@r0
      00597E C3               [12] 8194 	clr	c
      00597F 13               [12] 8195 	rrc	a
      005980 F6               [12] 8196 	mov	@r0,a
      005981 18               [12] 8197 	dec	r0
      005982 E6               [12] 8198 	mov	a,@r0
      005983 13               [12] 8199 	rrc	a
      005984 F6               [12] 8200 	mov	@r0,a
      005985 18               [12] 8201 	dec	r0
      005986 E6               [12] 8202 	mov	a,@r0
      005987 13               [12] 8203 	rrc	a
      005988 F6               [12] 8204 	mov	@r0,a
      005989 18               [12] 8205 	dec	r0
      00598A E6               [12] 8206 	mov	a,@r0
      00598B 13               [12] 8207 	rrc	a
      00598C F6               [12] 8208 	mov	@r0,a
      00598D E5 08            [12] 8209 	mov	a,_bp
      00598F 24 18            [12] 8210 	add	a,#0x18
      005991 F8               [12] 8211 	mov	r0,a
      005992 E6               [12] 8212 	mov	a,@r0
      005993 08               [12] 8213 	inc	r0
      005994 46               [12] 8214 	orl	a,@r0
      005995 08               [12] 8215 	inc	r0
      005996 46               [12] 8216 	orl	a,@r0
      005997 08               [12] 8217 	inc	r0
      005998 46               [12] 8218 	orl	a,@r0
      005999 70 9F            [24] 8219 	jnz	00131$
                                   8220 ;	calc.c:405: printf(", acc_valid = %d\r\n", (int)ctx->acc_valid);
      00599B E5 08            [12] 8221 	mov	a,_bp
      00599D 24 07            [12] 8222 	add	a,#0x07
      00599F F8               [12] 8223 	mov	r0,a
      0059A0 74 06            [12] 8224 	mov	a,#0x06
      0059A2 26               [12] 8225 	add	a,@r0
      0059A3 FD               [12] 8226 	mov	r5,a
      0059A4 E4               [12] 8227 	clr	a
      0059A5 08               [12] 8228 	inc	r0
      0059A6 36               [12] 8229 	addc	a,@r0
      0059A7 FE               [12] 8230 	mov	r6,a
      0059A8 08               [12] 8231 	inc	r0
      0059A9 86 07            [24] 8232 	mov	ar7,@r0
      0059AB 8D 82            [24] 8233 	mov	dpl,r5
      0059AD 8E 83            [24] 8234 	mov	dph,r6
      0059AF 8F F0            [24] 8235 	mov	b,r7
      0059B1 12 6F D1         [24] 8236 	lcall	__gptrget
      0059B4 FD               [12] 8237 	mov	r5,a
      0059B5 7F 00            [12] 8238 	mov	r7,#0x00
      0059B7 C0 05            [24] 8239 	push	ar5
      0059B9 C0 07            [24] 8240 	push	ar7
      0059BB 74 28            [12] 8241 	mov	a,#___str_17
      0059BD C0 E0            [24] 8242 	push	acc
      0059BF 74 89            [12] 8243 	mov	a,#(___str_17 >> 8)
      0059C1 C0 E0            [24] 8244 	push	acc
      0059C3 74 80            [12] 8245 	mov	a,#0x80
      0059C5 C0 E0            [24] 8246 	push	acc
      0059C7 12 6F 98         [24] 8247 	lcall	_printf
      0059CA E5 81            [12] 8248 	mov	a,sp
      0059CC 24 FB            [12] 8249 	add	a,#0xfb
      0059CE F5 81            [12] 8250 	mov	sp,a
                                   8251 ;	calc.c:406: printf("primary = %p, secondary = %p\r\n", ctx->ps, ctx->ss);
      0059D0 E5 08            [12] 8252 	mov	a,_bp
      0059D2 24 07            [12] 8253 	add	a,#0x07
      0059D4 F8               [12] 8254 	mov	r0,a
      0059D5 74 16            [12] 8255 	mov	a,#0x16
      0059D7 26               [12] 8256 	add	a,@r0
      0059D8 FD               [12] 8257 	mov	r5,a
      0059D9 74 40            [12] 8258 	mov	a,#0x40
      0059DB 08               [12] 8259 	inc	r0
      0059DC 36               [12] 8260 	addc	a,@r0
      0059DD FE               [12] 8261 	mov	r6,a
      0059DE 08               [12] 8262 	inc	r0
      0059DF 86 07            [24] 8263 	mov	ar7,@r0
      0059E1 8D 82            [24] 8264 	mov	dpl,r5
      0059E3 8E 83            [24] 8265 	mov	dph,r6
      0059E5 8F F0            [24] 8266 	mov	b,r7
      0059E7 A8 08            [24] 8267 	mov	r0,_bp
      0059E9 08               [12] 8268 	inc	r0
      0059EA 12 6F D1         [24] 8269 	lcall	__gptrget
      0059ED F6               [12] 8270 	mov	@r0,a
      0059EE A3               [24] 8271 	inc	dptr
      0059EF 12 6F D1         [24] 8272 	lcall	__gptrget
      0059F2 08               [12] 8273 	inc	r0
      0059F3 F6               [12] 8274 	mov	@r0,a
      0059F4 A3               [24] 8275 	inc	dptr
      0059F5 12 6F D1         [24] 8276 	lcall	__gptrget
      0059F8 08               [12] 8277 	inc	r0
      0059F9 F6               [12] 8278 	mov	@r0,a
      0059FA E5 08            [12] 8279 	mov	a,_bp
      0059FC 24 07            [12] 8280 	add	a,#0x07
      0059FE F8               [12] 8281 	mov	r0,a
      0059FF E5 08            [12] 8282 	mov	a,_bp
      005A01 24 04            [12] 8283 	add	a,#0x04
      005A03 F9               [12] 8284 	mov	r1,a
      005A04 74 13            [12] 8285 	mov	a,#0x13
      005A06 26               [12] 8286 	add	a,@r0
      005A07 F7               [12] 8287 	mov	@r1,a
      005A08 74 40            [12] 8288 	mov	a,#0x40
      005A0A 08               [12] 8289 	inc	r0
      005A0B 36               [12] 8290 	addc	a,@r0
      005A0C 09               [12] 8291 	inc	r1
      005A0D F7               [12] 8292 	mov	@r1,a
      005A0E 08               [12] 8293 	inc	r0
      005A0F 09               [12] 8294 	inc	r1
      005A10 E6               [12] 8295 	mov	a,@r0
      005A11 F7               [12] 8296 	mov	@r1,a
      005A12 E5 08            [12] 8297 	mov	a,_bp
      005A14 24 04            [12] 8298 	add	a,#0x04
      005A16 F8               [12] 8299 	mov	r0,a
      005A17 86 82            [24] 8300 	mov	dpl,@r0
      005A19 08               [12] 8301 	inc	r0
      005A1A 86 83            [24] 8302 	mov	dph,@r0
      005A1C 08               [12] 8303 	inc	r0
      005A1D 86 F0            [24] 8304 	mov	b,@r0
      005A1F 12 6F D1         [24] 8305 	lcall	__gptrget
      005A22 FA               [12] 8306 	mov	r2,a
      005A23 A3               [24] 8307 	inc	dptr
      005A24 12 6F D1         [24] 8308 	lcall	__gptrget
      005A27 FB               [12] 8309 	mov	r3,a
      005A28 A3               [24] 8310 	inc	dptr
      005A29 12 6F D1         [24] 8311 	lcall	__gptrget
      005A2C FC               [12] 8312 	mov	r4,a
      005A2D C0 07            [24] 8313 	push	ar7
      005A2F C0 06            [24] 8314 	push	ar6
      005A31 C0 05            [24] 8315 	push	ar5
      005A33 A8 08            [24] 8316 	mov	r0,_bp
      005A35 08               [12] 8317 	inc	r0
      005A36 E6               [12] 8318 	mov	a,@r0
      005A37 C0 E0            [24] 8319 	push	acc
      005A39 08               [12] 8320 	inc	r0
      005A3A E6               [12] 8321 	mov	a,@r0
      005A3B C0 E0            [24] 8322 	push	acc
      005A3D 08               [12] 8323 	inc	r0
      005A3E E6               [12] 8324 	mov	a,@r0
      005A3F C0 E0            [24] 8325 	push	acc
      005A41 C0 02            [24] 8326 	push	ar2
      005A43 C0 03            [24] 8327 	push	ar3
      005A45 C0 04            [24] 8328 	push	ar4
      005A47 74 3B            [12] 8329 	mov	a,#___str_18
      005A49 C0 E0            [24] 8330 	push	acc
      005A4B 74 89            [12] 8331 	mov	a,#(___str_18 >> 8)
      005A4D C0 E0            [24] 8332 	push	acc
      005A4F 74 80            [12] 8333 	mov	a,#0x80
      005A51 C0 E0            [24] 8334 	push	acc
      005A53 12 6F 98         [24] 8335 	lcall	_printf
      005A56 E5 81            [12] 8336 	mov	a,sp
      005A58 24 F7            [12] 8337 	add	a,#0xf7
      005A5A F5 81            [12] 8338 	mov	sp,a
                                   8339 ;	calc.c:408: n = stack_peek2(ctx->ps, vals);
      005A5C E5 08            [12] 8340 	mov	a,_bp
      005A5E 24 0C            [12] 8341 	add	a,#0x0c
      005A60 F9               [12] 8342 	mov	r1,a
      005A61 A8 08            [24] 8343 	mov	r0,_bp
      005A63 08               [12] 8344 	inc	r0
      005A64 A6 01            [24] 8345 	mov	@r0,ar1
      005A66 08               [12] 8346 	inc	r0
      005A67 76 00            [12] 8347 	mov	@r0,#0x00
      005A69 08               [12] 8348 	inc	r0
      005A6A 76 40            [12] 8349 	mov	@r0,#0x40
      005A6C E5 08            [12] 8350 	mov	a,_bp
      005A6E 24 04            [12] 8351 	add	a,#0x04
      005A70 F8               [12] 8352 	mov	r0,a
      005A71 86 82            [24] 8353 	mov	dpl,@r0
      005A73 08               [12] 8354 	inc	r0
      005A74 86 83            [24] 8355 	mov	dph,@r0
      005A76 08               [12] 8356 	inc	r0
      005A77 86 F0            [24] 8357 	mov	b,@r0
      005A79 12 6F D1         [24] 8358 	lcall	__gptrget
      005A7C FA               [12] 8359 	mov	r2,a
      005A7D A3               [24] 8360 	inc	dptr
      005A7E 12 6F D1         [24] 8361 	lcall	__gptrget
      005A81 FB               [12] 8362 	mov	r3,a
      005A82 A3               [24] 8363 	inc	dptr
      005A83 12 6F D1         [24] 8364 	lcall	__gptrget
      005A86 FC               [12] 8365 	mov	r4,a
      005A87 C0 01            [24] 8366 	push	ar1
      005A89 A8 08            [24] 8367 	mov	r0,_bp
      005A8B 08               [12] 8368 	inc	r0
      005A8C E6               [12] 8369 	mov	a,@r0
      005A8D C0 E0            [24] 8370 	push	acc
      005A8F 08               [12] 8371 	inc	r0
      005A90 E6               [12] 8372 	mov	a,@r0
      005A91 C0 E0            [24] 8373 	push	acc
      005A93 08               [12] 8374 	inc	r0
      005A94 E6               [12] 8375 	mov	a,@r0
      005A95 C0 E0            [24] 8376 	push	acc
      005A97 8A 82            [24] 8377 	mov	dpl,r2
      005A99 8B 83            [24] 8378 	mov	dph,r3
      005A9B 8C F0            [24] 8379 	mov	b,r4
      005A9D 12 29 73         [24] 8380 	lcall	_stack_peek2
      005AA0 C8               [12] 8381 	xch	a,r0
      005AA1 E5 08            [12] 8382 	mov	a,_bp
      005AA3 24 04            [12] 8383 	add	a,#0x04
      005AA5 C8               [12] 8384 	xch	a,r0
      005AA6 A6 82            [24] 8385 	mov	@r0,dpl
      005AA8 08               [12] 8386 	inc	r0
      005AA9 A6 83            [24] 8387 	mov	@r0,dph
      005AAB 15 81            [12] 8388 	dec	sp
      005AAD 15 81            [12] 8389 	dec	sp
      005AAF 15 81            [12] 8390 	dec	sp
      005AB1 D0 01            [24] 8391 	pop	ar1
      005AB3 D0 05            [24] 8392 	pop	ar5
      005AB5 D0 06            [24] 8393 	pop	ar6
      005AB7 D0 07            [24] 8394 	pop	ar7
                                   8395 ;	calc.c:409: printstr("PSTOP1 = ");
      005AB9 7A 5A            [12] 8396 	mov	r2,#___str_19
      005ABB 7B 89            [12] 8397 	mov	r3,#(___str_19 >> 8)
      005ABD 7C 80            [12] 8398 	mov	r4,#0x80
                                   8399 ;	calc.c:51: return;
      005ABF                       8400 00134$:
                                   8401 ;	calc.c:49: for (; *s; s++) putchar(*s);
      005ABF 8A 82            [24] 8402 	mov	dpl,r2
      005AC1 8B 83            [24] 8403 	mov	dph,r3
      005AC3 8C F0            [24] 8404 	mov	b,r4
      005AC5 A8 08            [24] 8405 	mov	r0,_bp
      005AC7 08               [12] 8406 	inc	r0
      005AC8 12 6F D1         [24] 8407 	lcall	__gptrget
      005ACB F6               [12] 8408 	mov	@r0,a
      005ACC A8 08            [24] 8409 	mov	r0,_bp
      005ACE 08               [12] 8410 	inc	r0
      005ACF E6               [12] 8411 	mov	a,@r0
      005AD0 60 21            [24] 8412 	jz	00112$
      005AD2 C0 05            [24] 8413 	push	ar5
      005AD4 C0 06            [24] 8414 	push	ar6
      005AD6 C0 07            [24] 8415 	push	ar7
      005AD8 A8 08            [24] 8416 	mov	r0,_bp
      005ADA 08               [12] 8417 	inc	r0
      005ADB 86 06            [24] 8418 	mov	ar6,@r0
      005ADD 7F 00            [12] 8419 	mov	r7,#0x00
      005ADF 8E 82            [24] 8420 	mov	dpl,r6
      005AE1 8F 83            [24] 8421 	mov	dph,r7
      005AE3 12 2B D5         [24] 8422 	lcall	_putchar
      005AE6 0A               [12] 8423 	inc	r2
      005AE7 BA 00 01         [24] 8424 	cjne	r2,#0x00,00315$
      005AEA 0B               [12] 8425 	inc	r3
      005AEB                       8426 00315$:
      005AEB D0 07            [24] 8427 	pop	ar7
      005AED D0 06            [24] 8428 	pop	ar6
      005AEF D0 05            [24] 8429 	pop	ar5
                                   8430 ;	calc.c:409: printstr("PSTOP1 = ");
      005AF1 80 CC            [24] 8431 	sjmp	00134$
      005AF3                       8432 00112$:
                                   8433 ;	calc.c:410: if (n > 0) {
      005AF3 E5 08            [12] 8434 	mov	a,_bp
      005AF5 24 04            [12] 8435 	add	a,#0x04
      005AF7 F8               [12] 8436 	mov	r0,a
      005AF8 C3               [12] 8437 	clr	c
      005AF9 E4               [12] 8438 	clr	a
      005AFA 96               [12] 8439 	subb	a,@r0
      005AFB 74 80            [12] 8440 	mov	a,#(0x00 ^ 0x80)
      005AFD 08               [12] 8441 	inc	r0
      005AFE 86 F0            [24] 8442 	mov	b,@r0
      005B00 63 F0 80         [24] 8443 	xrl	b,#0x80
      005B03 95 F0            [12] 8444 	subb	a,b
      005B05 40 03            [24] 8445 	jc	00316$
      005B07 02 5C 2A         [24] 8446 	ljmp	00102$
      005B0A                       8447 00316$:
                                   8448 ;	calc.c:411: printf("% 11ld / ", vals[1]);
      005B0A C0 05            [24] 8449 	push	ar5
      005B0C C0 06            [24] 8450 	push	ar6
      005B0E C0 07            [24] 8451 	push	ar7
      005B10 74 04            [12] 8452 	mov	a,#0x04
      005B12 29               [12] 8453 	add	a,r1
      005B13 F8               [12] 8454 	mov	r0,a
      005B14 86 02            [24] 8455 	mov	ar2,@r0
      005B16 08               [12] 8456 	inc	r0
      005B17 86 03            [24] 8457 	mov	ar3,@r0
      005B19 08               [12] 8458 	inc	r0
      005B1A 86 04            [24] 8459 	mov	ar4,@r0
      005B1C 08               [12] 8460 	inc	r0
      005B1D 86 07            [24] 8461 	mov	ar7,@r0
      005B1F 18               [12] 8462 	dec	r0
      005B20 18               [12] 8463 	dec	r0
      005B21 18               [12] 8464 	dec	r0
      005B22 C0 07            [24] 8465 	push	ar7
      005B24 C0 06            [24] 8466 	push	ar6
      005B26 C0 05            [24] 8467 	push	ar5
      005B28 C0 01            [24] 8468 	push	ar1
      005B2A C0 00            [24] 8469 	push	ar0
      005B2C C0 02            [24] 8470 	push	ar2
      005B2E C0 03            [24] 8471 	push	ar3
      005B30 C0 04            [24] 8472 	push	ar4
      005B32 C0 07            [24] 8473 	push	ar7
      005B34 74 6F            [12] 8474 	mov	a,#___str_3
      005B36 C0 E0            [24] 8475 	push	acc
      005B38 74 88            [12] 8476 	mov	a,#(___str_3 >> 8)
      005B3A C0 E0            [24] 8477 	push	acc
      005B3C 74 80            [12] 8478 	mov	a,#0x80
      005B3E C0 E0            [24] 8479 	push	acc
      005B40 12 6F 98         [24] 8480 	lcall	_printf
      005B43 E5 81            [12] 8481 	mov	a,sp
      005B45 24 F9            [12] 8482 	add	a,#0xf9
      005B47 F5 81            [12] 8483 	mov	sp,a
      005B49 D0 00            [24] 8484 	pop	ar0
      005B4B D0 01            [24] 8485 	pop	ar1
      005B4D D0 05            [24] 8486 	pop	ar5
      005B4F D0 06            [24] 8487 	pop	ar6
      005B51 D0 07            [24] 8488 	pop	ar7
                                   8489 ;	calc.c:412: printf("%08lx / ", vals[1]);
      005B53 86 04            [24] 8490 	mov	ar4,@r0
      005B55 08               [12] 8491 	inc	r0
      005B56 86 05            [24] 8492 	mov	ar5,@r0
      005B58 08               [12] 8493 	inc	r0
      005B59 86 06            [24] 8494 	mov	ar6,@r0
      005B5B 08               [12] 8495 	inc	r0
      005B5C 86 07            [24] 8496 	mov	ar7,@r0
      005B5E 18               [12] 8497 	dec	r0
      005B5F 18               [12] 8498 	dec	r0
      005B60 18               [12] 8499 	dec	r0
      005B61 C0 07            [24] 8500 	push	ar7
      005B63 C0 06            [24] 8501 	push	ar6
      005B65 C0 05            [24] 8502 	push	ar5
      005B67 C0 01            [24] 8503 	push	ar1
      005B69 C0 00            [24] 8504 	push	ar0
      005B6B C0 04            [24] 8505 	push	ar4
      005B6D C0 05            [24] 8506 	push	ar5
      005B6F C0 06            [24] 8507 	push	ar6
      005B71 C0 07            [24] 8508 	push	ar7
      005B73 74 79            [12] 8509 	mov	a,#___str_4
      005B75 C0 E0            [24] 8510 	push	acc
      005B77 74 88            [12] 8511 	mov	a,#(___str_4 >> 8)
      005B79 C0 E0            [24] 8512 	push	acc
      005B7B 74 80            [12] 8513 	mov	a,#0x80
      005B7D C0 E0            [24] 8514 	push	acc
      005B7F 12 6F 98         [24] 8515 	lcall	_printf
      005B82 E5 81            [12] 8516 	mov	a,sp
      005B84 24 F9            [12] 8517 	add	a,#0xf9
      005B86 F5 81            [12] 8518 	mov	sp,a
      005B88 D0 00            [24] 8519 	pop	ar0
      005B8A D0 01            [24] 8520 	pop	ar1
      005B8C D0 05            [24] 8521 	pop	ar5
      005B8E D0 06            [24] 8522 	pop	ar6
      005B90 D0 07            [24] 8523 	pop	ar7
                                   8524 ;	calc.c:413: printbin(vals[1]);
      005B92 C0 01            [24] 8525 	push	ar1
      005B94 E5 08            [12] 8526 	mov	a,_bp
      005B96 24 14            [12] 8527 	add	a,#0x14
      005B98 F9               [12] 8528 	mov	r1,a
      005B99 E6               [12] 8529 	mov	a,@r0
      005B9A F7               [12] 8530 	mov	@r1,a
      005B9B 08               [12] 8531 	inc	r0
      005B9C E6               [12] 8532 	mov	a,@r0
      005B9D 09               [12] 8533 	inc	r1
      005B9E F7               [12] 8534 	mov	@r1,a
      005B9F 08               [12] 8535 	inc	r0
      005BA0 E6               [12] 8536 	mov	a,@r0
      005BA1 09               [12] 8537 	inc	r1
      005BA2 F7               [12] 8538 	mov	@r1,a
      005BA3 08               [12] 8539 	inc	r0
      005BA4 E6               [12] 8540 	mov	a,@r0
      005BA5 09               [12] 8541 	inc	r1
      005BA6 F7               [12] 8542 	mov	@r1,a
      005BA7 D0 01            [24] 8543 	pop	ar1
                                   8544 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      005BA9 E5 08            [12] 8545 	mov	a,_bp
      005BAB 24 18            [12] 8546 	add	a,#0x18
      005BAD F8               [12] 8547 	mov	r0,a
      005BAE E4               [12] 8548 	clr	a
      005BAF F6               [12] 8549 	mov	@r0,a
      005BB0 08               [12] 8550 	inc	r0
      005BB1 F6               [12] 8551 	mov	@r0,a
      005BB2 08               [12] 8552 	inc	r0
      005BB3 F6               [12] 8553 	mov	@r0,a
      005BB4 08               [12] 8554 	inc	r0
      005BB5 76 80            [12] 8555 	mov	@r0,#0x80
                                   8556 ;	calc.c:438: return 1;
      005BB7 D0 07            [24] 8557 	pop	ar7
      005BB9 D0 06            [24] 8558 	pop	ar6
      005BBB D0 05            [24] 8559 	pop	ar5
                                   8560 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      005BBD                       8561 00136$:
                                   8562 ;	calc.c:58: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      005BBD C0 05            [24] 8563 	push	ar5
      005BBF C0 06            [24] 8564 	push	ar6
      005BC1 C0 07            [24] 8565 	push	ar7
      005BC3 E5 08            [12] 8566 	mov	a,_bp
      005BC5 24 14            [12] 8567 	add	a,#0x14
      005BC7 F8               [12] 8568 	mov	r0,a
      005BC8 86 02            [24] 8569 	mov	ar2,@r0
      005BCA 08               [12] 8570 	inc	r0
      005BCB 86 03            [24] 8571 	mov	ar3,@r0
      005BCD 08               [12] 8572 	inc	r0
      005BCE 86 04            [24] 8573 	mov	ar4,@r0
      005BD0 08               [12] 8574 	inc	r0
      005BD1 86 07            [24] 8575 	mov	ar7,@r0
      005BD3 E5 08            [12] 8576 	mov	a,_bp
      005BD5 24 18            [12] 8577 	add	a,#0x18
      005BD7 F8               [12] 8578 	mov	r0,a
      005BD8 E6               [12] 8579 	mov	a,@r0
      005BD9 52 02            [12] 8580 	anl	ar2,a
      005BDB 08               [12] 8581 	inc	r0
      005BDC E6               [12] 8582 	mov	a,@r0
      005BDD 52 03            [12] 8583 	anl	ar3,a
      005BDF 08               [12] 8584 	inc	r0
      005BE0 E6               [12] 8585 	mov	a,@r0
      005BE1 52 04            [12] 8586 	anl	ar4,a
      005BE3 08               [12] 8587 	inc	r0
      005BE4 E6               [12] 8588 	mov	a,@r0
      005BE5 52 07            [12] 8589 	anl	ar7,a
      005BE7 EA               [12] 8590 	mov	a,r2
      005BE8 4B               [12] 8591 	orl	a,r3
      005BE9 4C               [12] 8592 	orl	a,r4
      005BEA 4F               [12] 8593 	orl	a,r7
      005BEB D0 07            [24] 8594 	pop	ar7
      005BED D0 06            [24] 8595 	pop	ar6
      005BEF D0 05            [24] 8596 	pop	ar5
      005BF1 60 06            [24] 8597 	jz	00163$
      005BF3 7B 31            [12] 8598 	mov	r3,#0x31
      005BF5 7C 00            [12] 8599 	mov	r4,#0x00
      005BF7 80 04            [24] 8600 	sjmp	00164$
      005BF9                       8601 00163$:
      005BF9 7B 30            [12] 8602 	mov	r3,#0x30
      005BFB 7C 00            [12] 8603 	mov	r4,#0x00
      005BFD                       8604 00164$:
      005BFD 8B 82            [24] 8605 	mov	dpl,r3
      005BFF 8C 83            [24] 8606 	mov	dph,r4
      005C01 12 2B D5         [24] 8607 	lcall	_putchar
                                   8608 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      005C04 E5 08            [12] 8609 	mov	a,_bp
      005C06 24 18            [12] 8610 	add	a,#0x18
      005C08 F8               [12] 8611 	mov	r0,a
      005C09 08               [12] 8612 	inc	r0
      005C0A 08               [12] 8613 	inc	r0
      005C0B 08               [12] 8614 	inc	r0
      005C0C E6               [12] 8615 	mov	a,@r0
      005C0D C3               [12] 8616 	clr	c
      005C0E 13               [12] 8617 	rrc	a
      005C0F F6               [12] 8618 	mov	@r0,a
      005C10 18               [12] 8619 	dec	r0
      005C11 E6               [12] 8620 	mov	a,@r0
      005C12 13               [12] 8621 	rrc	a
      005C13 F6               [12] 8622 	mov	@r0,a
      005C14 18               [12] 8623 	dec	r0
      005C15 E6               [12] 8624 	mov	a,@r0
      005C16 13               [12] 8625 	rrc	a
      005C17 F6               [12] 8626 	mov	@r0,a
      005C18 18               [12] 8627 	dec	r0
      005C19 E6               [12] 8628 	mov	a,@r0
      005C1A 13               [12] 8629 	rrc	a
      005C1B F6               [12] 8630 	mov	@r0,a
      005C1C E5 08            [12] 8631 	mov	a,_bp
      005C1E 24 18            [12] 8632 	add	a,#0x18
      005C20 F8               [12] 8633 	mov	r0,a
      005C21 E6               [12] 8634 	mov	a,@r0
      005C22 08               [12] 8635 	inc	r0
      005C23 46               [12] 8636 	orl	a,@r0
      005C24 08               [12] 8637 	inc	r0
      005C25 46               [12] 8638 	orl	a,@r0
      005C26 08               [12] 8639 	inc	r0
      005C27 46               [12] 8640 	orl	a,@r0
      005C28 70 93            [24] 8641 	jnz	00136$
                                   8642 ;	calc.c:413: printbin(vals[1]);
      005C2A                       8643 00102$:
                                   8644 ;	calc.c:415: printstr("\r\nPSTOP0 = ");
      005C2A 7A 64            [12] 8645 	mov	r2,#___str_20
      005C2C 7B 89            [12] 8646 	mov	r3,#(___str_20 >> 8)
      005C2E 7C 80            [12] 8647 	mov	r4,#0x80
                                   8648 ;	calc.c:51: return;
      005C30                       8649 00139$:
                                   8650 ;	calc.c:49: for (; *s; s++) putchar(*s);
      005C30 8A 82            [24] 8651 	mov	dpl,r2
      005C32 8B 83            [24] 8652 	mov	dph,r3
      005C34 8C F0            [24] 8653 	mov	b,r4
      005C36 A8 08            [24] 8654 	mov	r0,_bp
      005C38 08               [12] 8655 	inc	r0
      005C39 12 6F D1         [24] 8656 	lcall	__gptrget
      005C3C F6               [12] 8657 	mov	@r0,a
      005C3D A8 08            [24] 8658 	mov	r0,_bp
      005C3F 08               [12] 8659 	inc	r0
      005C40 E6               [12] 8660 	mov	a,@r0
      005C41 60 21            [24] 8661 	jz	00116$
      005C43 C0 05            [24] 8662 	push	ar5
      005C45 C0 06            [24] 8663 	push	ar6
      005C47 C0 07            [24] 8664 	push	ar7
      005C49 A8 08            [24] 8665 	mov	r0,_bp
      005C4B 08               [12] 8666 	inc	r0
      005C4C 86 06            [24] 8667 	mov	ar6,@r0
      005C4E 7F 00            [12] 8668 	mov	r7,#0x00
      005C50 8E 82            [24] 8669 	mov	dpl,r6
      005C52 8F 83            [24] 8670 	mov	dph,r7
      005C54 12 2B D5         [24] 8671 	lcall	_putchar
      005C57 0A               [12] 8672 	inc	r2
      005C58 BA 00 01         [24] 8673 	cjne	r2,#0x00,00320$
      005C5B 0B               [12] 8674 	inc	r3
      005C5C                       8675 00320$:
      005C5C D0 07            [24] 8676 	pop	ar7
      005C5E D0 06            [24] 8677 	pop	ar6
      005C60 D0 05            [24] 8678 	pop	ar5
                                   8679 ;	calc.c:415: printstr("\r\nPSTOP0 = ");
      005C62 80 CC            [24] 8680 	sjmp	00139$
      005C64                       8681 00116$:
                                   8682 ;	calc.c:416: if (n > 1) {
      005C64 E5 08            [12] 8683 	mov	a,_bp
      005C66 24 04            [12] 8684 	add	a,#0x04
      005C68 F8               [12] 8685 	mov	r0,a
      005C69 C3               [12] 8686 	clr	c
      005C6A 74 01            [12] 8687 	mov	a,#0x01
      005C6C 96               [12] 8688 	subb	a,@r0
      005C6D 74 80            [12] 8689 	mov	a,#(0x00 ^ 0x80)
      005C6F 08               [12] 8690 	inc	r0
      005C70 86 F0            [24] 8691 	mov	b,@r0
      005C72 63 F0 80         [24] 8692 	xrl	b,#0x80
      005C75 95 F0            [12] 8693 	subb	a,b
      005C77 40 03            [24] 8694 	jc	00321$
      005C79 02 5D 8F         [24] 8695 	ljmp	00104$
      005C7C                       8696 00321$:
                                   8697 ;	calc.c:417: printf("% 11ld / ", vals[0]);
      005C7C C0 05            [24] 8698 	push	ar5
      005C7E C0 06            [24] 8699 	push	ar6
      005C80 C0 07            [24] 8700 	push	ar7
      005C82 87 02            [24] 8701 	mov	ar2,@r1
      005C84 09               [12] 8702 	inc	r1
      005C85 87 03            [24] 8703 	mov	ar3,@r1
      005C87 09               [12] 8704 	inc	r1
      005C88 87 04            [24] 8705 	mov	ar4,@r1
      005C8A 09               [12] 8706 	inc	r1
      005C8B 87 07            [24] 8707 	mov	ar7,@r1
      005C8D 19               [12] 8708 	dec	r1
      005C8E 19               [12] 8709 	dec	r1
      005C8F 19               [12] 8710 	dec	r1
      005C90 C0 07            [24] 8711 	push	ar7
      005C92 C0 06            [24] 8712 	push	ar6
      005C94 C0 05            [24] 8713 	push	ar5
      005C96 C0 01            [24] 8714 	push	ar1
      005C98 C0 02            [24] 8715 	push	ar2
      005C9A C0 03            [24] 8716 	push	ar3
      005C9C C0 04            [24] 8717 	push	ar4
      005C9E C0 07            [24] 8718 	push	ar7
      005CA0 74 6F            [12] 8719 	mov	a,#___str_3
      005CA2 C0 E0            [24] 8720 	push	acc
      005CA4 74 88            [12] 8721 	mov	a,#(___str_3 >> 8)
      005CA6 C0 E0            [24] 8722 	push	acc
      005CA8 74 80            [12] 8723 	mov	a,#0x80
      005CAA C0 E0            [24] 8724 	push	acc
      005CAC 12 6F 98         [24] 8725 	lcall	_printf
      005CAF E5 81            [12] 8726 	mov	a,sp
      005CB1 24 F9            [12] 8727 	add	a,#0xf9
      005CB3 F5 81            [12] 8728 	mov	sp,a
      005CB5 D0 01            [24] 8729 	pop	ar1
      005CB7 D0 05            [24] 8730 	pop	ar5
      005CB9 D0 06            [24] 8731 	pop	ar6
      005CBB D0 07            [24] 8732 	pop	ar7
                                   8733 ;	calc.c:418: printf("%08lx / ", vals[0]);
      005CBD 87 04            [24] 8734 	mov	ar4,@r1
      005CBF 09               [12] 8735 	inc	r1
      005CC0 87 05            [24] 8736 	mov	ar5,@r1
      005CC2 09               [12] 8737 	inc	r1
      005CC3 87 06            [24] 8738 	mov	ar6,@r1
      005CC5 09               [12] 8739 	inc	r1
      005CC6 87 07            [24] 8740 	mov	ar7,@r1
      005CC8 19               [12] 8741 	dec	r1
      005CC9 19               [12] 8742 	dec	r1
      005CCA 19               [12] 8743 	dec	r1
      005CCB C0 07            [24] 8744 	push	ar7
      005CCD C0 06            [24] 8745 	push	ar6
      005CCF C0 05            [24] 8746 	push	ar5
      005CD1 C0 01            [24] 8747 	push	ar1
      005CD3 C0 04            [24] 8748 	push	ar4
      005CD5 C0 05            [24] 8749 	push	ar5
      005CD7 C0 06            [24] 8750 	push	ar6
      005CD9 C0 07            [24] 8751 	push	ar7
      005CDB 74 79            [12] 8752 	mov	a,#___str_4
      005CDD C0 E0            [24] 8753 	push	acc
      005CDF 74 88            [12] 8754 	mov	a,#(___str_4 >> 8)
      005CE1 C0 E0            [24] 8755 	push	acc
      005CE3 74 80            [12] 8756 	mov	a,#0x80
      005CE5 C0 E0            [24] 8757 	push	acc
      005CE7 12 6F 98         [24] 8758 	lcall	_printf
      005CEA E5 81            [12] 8759 	mov	a,sp
      005CEC 24 F9            [12] 8760 	add	a,#0xf9
      005CEE F5 81            [12] 8761 	mov	sp,a
      005CF0 D0 01            [24] 8762 	pop	ar1
      005CF2 D0 05            [24] 8763 	pop	ar5
      005CF4 D0 06            [24] 8764 	pop	ar6
      005CF6 D0 07            [24] 8765 	pop	ar7
                                   8766 ;	calc.c:419: printbin(vals[0]);
      005CF8 E5 08            [12] 8767 	mov	a,_bp
      005CFA 24 14            [12] 8768 	add	a,#0x14
      005CFC F8               [12] 8769 	mov	r0,a
      005CFD E7               [12] 8770 	mov	a,@r1
      005CFE F6               [12] 8771 	mov	@r0,a
      005CFF 09               [12] 8772 	inc	r1
      005D00 E7               [12] 8773 	mov	a,@r1
      005D01 08               [12] 8774 	inc	r0
      005D02 F6               [12] 8775 	mov	@r0,a
      005D03 09               [12] 8776 	inc	r1
      005D04 E7               [12] 8777 	mov	a,@r1
      005D05 08               [12] 8778 	inc	r0
      005D06 F6               [12] 8779 	mov	@r0,a
      005D07 09               [12] 8780 	inc	r1
      005D08 E7               [12] 8781 	mov	a,@r1
      005D09 08               [12] 8782 	inc	r0
      005D0A F6               [12] 8783 	mov	@r0,a
      005D0B 19               [12] 8784 	dec	r1
      005D0C 19               [12] 8785 	dec	r1
      005D0D 19               [12] 8786 	dec	r1
                                   8787 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      005D0E E5 08            [12] 8788 	mov	a,_bp
      005D10 24 18            [12] 8789 	add	a,#0x18
      005D12 F8               [12] 8790 	mov	r0,a
      005D13 E4               [12] 8791 	clr	a
      005D14 F6               [12] 8792 	mov	@r0,a
      005D15 08               [12] 8793 	inc	r0
      005D16 F6               [12] 8794 	mov	@r0,a
      005D17 08               [12] 8795 	inc	r0
      005D18 F6               [12] 8796 	mov	@r0,a
      005D19 08               [12] 8797 	inc	r0
      005D1A 76 80            [12] 8798 	mov	@r0,#0x80
                                   8799 ;	calc.c:438: return 1;
      005D1C D0 07            [24] 8800 	pop	ar7
      005D1E D0 06            [24] 8801 	pop	ar6
      005D20 D0 05            [24] 8802 	pop	ar5
                                   8803 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      005D22                       8804 00141$:
                                   8805 ;	calc.c:58: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      005D22 C0 05            [24] 8806 	push	ar5
      005D24 C0 06            [24] 8807 	push	ar6
      005D26 C0 07            [24] 8808 	push	ar7
      005D28 E5 08            [12] 8809 	mov	a,_bp
      005D2A 24 14            [12] 8810 	add	a,#0x14
      005D2C F8               [12] 8811 	mov	r0,a
      005D2D 86 02            [24] 8812 	mov	ar2,@r0
      005D2F 08               [12] 8813 	inc	r0
      005D30 86 03            [24] 8814 	mov	ar3,@r0
      005D32 08               [12] 8815 	inc	r0
      005D33 86 04            [24] 8816 	mov	ar4,@r0
      005D35 08               [12] 8817 	inc	r0
      005D36 86 07            [24] 8818 	mov	ar7,@r0
      005D38 E5 08            [12] 8819 	mov	a,_bp
      005D3A 24 18            [12] 8820 	add	a,#0x18
      005D3C F8               [12] 8821 	mov	r0,a
      005D3D E6               [12] 8822 	mov	a,@r0
      005D3E 52 02            [12] 8823 	anl	ar2,a
      005D40 08               [12] 8824 	inc	r0
      005D41 E6               [12] 8825 	mov	a,@r0
      005D42 52 03            [12] 8826 	anl	ar3,a
      005D44 08               [12] 8827 	inc	r0
      005D45 E6               [12] 8828 	mov	a,@r0
      005D46 52 04            [12] 8829 	anl	ar4,a
      005D48 08               [12] 8830 	inc	r0
      005D49 E6               [12] 8831 	mov	a,@r0
      005D4A 52 07            [12] 8832 	anl	ar7,a
      005D4C EA               [12] 8833 	mov	a,r2
      005D4D 4B               [12] 8834 	orl	a,r3
      005D4E 4C               [12] 8835 	orl	a,r4
      005D4F 4F               [12] 8836 	orl	a,r7
      005D50 D0 07            [24] 8837 	pop	ar7
      005D52 D0 06            [24] 8838 	pop	ar6
      005D54 D0 05            [24] 8839 	pop	ar5
      005D56 60 06            [24] 8840 	jz	00165$
      005D58 7B 31            [12] 8841 	mov	r3,#0x31
      005D5A 7C 00            [12] 8842 	mov	r4,#0x00
      005D5C 80 04            [24] 8843 	sjmp	00166$
      005D5E                       8844 00165$:
      005D5E 7B 30            [12] 8845 	mov	r3,#0x30
      005D60 7C 00            [12] 8846 	mov	r4,#0x00
      005D62                       8847 00166$:
      005D62 8B 82            [24] 8848 	mov	dpl,r3
      005D64 8C 83            [24] 8849 	mov	dph,r4
      005D66 12 2B D5         [24] 8850 	lcall	_putchar
                                   8851 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      005D69 E5 08            [12] 8852 	mov	a,_bp
      005D6B 24 18            [12] 8853 	add	a,#0x18
      005D6D F8               [12] 8854 	mov	r0,a
      005D6E 08               [12] 8855 	inc	r0
      005D6F 08               [12] 8856 	inc	r0
      005D70 08               [12] 8857 	inc	r0
      005D71 E6               [12] 8858 	mov	a,@r0
      005D72 C3               [12] 8859 	clr	c
      005D73 13               [12] 8860 	rrc	a
      005D74 F6               [12] 8861 	mov	@r0,a
      005D75 18               [12] 8862 	dec	r0
      005D76 E6               [12] 8863 	mov	a,@r0
      005D77 13               [12] 8864 	rrc	a
      005D78 F6               [12] 8865 	mov	@r0,a
      005D79 18               [12] 8866 	dec	r0
      005D7A E6               [12] 8867 	mov	a,@r0
      005D7B 13               [12] 8868 	rrc	a
      005D7C F6               [12] 8869 	mov	@r0,a
      005D7D 18               [12] 8870 	dec	r0
      005D7E E6               [12] 8871 	mov	a,@r0
      005D7F 13               [12] 8872 	rrc	a
      005D80 F6               [12] 8873 	mov	@r0,a
      005D81 E5 08            [12] 8874 	mov	a,_bp
      005D83 24 18            [12] 8875 	add	a,#0x18
      005D85 F8               [12] 8876 	mov	r0,a
      005D86 E6               [12] 8877 	mov	a,@r0
      005D87 08               [12] 8878 	inc	r0
      005D88 46               [12] 8879 	orl	a,@r0
      005D89 08               [12] 8880 	inc	r0
      005D8A 46               [12] 8881 	orl	a,@r0
      005D8B 08               [12] 8882 	inc	r0
      005D8C 46               [12] 8883 	orl	a,@r0
      005D8D 70 93            [24] 8884 	jnz	00141$
                                   8885 ;	calc.c:419: printbin(vals[0]);
      005D8F                       8886 00104$:
                                   8887 ;	calc.c:421: printstr("\r\n");
      005D8F 7A 82            [12] 8888 	mov	r2,#___str_5
      005D91 7B 88            [12] 8889 	mov	r3,#(___str_5 >> 8)
      005D93 7C 80            [12] 8890 	mov	r4,#0x80
                                   8891 ;	calc.c:51: return;
      005D95                       8892 00144$:
                                   8893 ;	calc.c:49: for (; *s; s++) putchar(*s);
      005D95 8A 82            [24] 8894 	mov	dpl,r2
      005D97 8B 83            [24] 8895 	mov	dph,r3
      005D99 8C F0            [24] 8896 	mov	b,r4
      005D9B E5 08            [12] 8897 	mov	a,_bp
      005D9D 24 04            [12] 8898 	add	a,#0x04
      005D9F F8               [12] 8899 	mov	r0,a
      005DA0 12 6F D1         [24] 8900 	lcall	__gptrget
      005DA3 F6               [12] 8901 	mov	@r0,a
      005DA4 E5 08            [12] 8902 	mov	a,_bp
      005DA6 24 04            [12] 8903 	add	a,#0x04
      005DA8 F8               [12] 8904 	mov	r0,a
      005DA9 E6               [12] 8905 	mov	a,@r0
      005DAA 60 23            [24] 8906 	jz	00120$
      005DAC C0 05            [24] 8907 	push	ar5
      005DAE C0 06            [24] 8908 	push	ar6
      005DB0 C0 07            [24] 8909 	push	ar7
      005DB2 E5 08            [12] 8910 	mov	a,_bp
      005DB4 24 04            [12] 8911 	add	a,#0x04
      005DB6 F8               [12] 8912 	mov	r0,a
      005DB7 86 06            [24] 8913 	mov	ar6,@r0
      005DB9 7F 00            [12] 8914 	mov	r7,#0x00
      005DBB 8E 82            [24] 8915 	mov	dpl,r6
      005DBD 8F 83            [24] 8916 	mov	dph,r7
      005DBF 12 2B D5         [24] 8917 	lcall	_putchar
      005DC2 0A               [12] 8918 	inc	r2
      005DC3 BA 00 01         [24] 8919 	cjne	r2,#0x00,00325$
      005DC6 0B               [12] 8920 	inc	r3
      005DC7                       8921 00325$:
      005DC7 D0 07            [24] 8922 	pop	ar7
      005DC9 D0 06            [24] 8923 	pop	ar6
      005DCB D0 05            [24] 8924 	pop	ar5
                                   8925 ;	calc.c:421: printstr("\r\n");
      005DCD 80 C6            [24] 8926 	sjmp	00144$
      005DCF                       8927 00120$:
                                   8928 ;	calc.c:423: n = stack_peek2(ctx->ss, vals);
      005DCF 89 04            [24] 8929 	mov	ar4,r1
      005DD1 7B 00            [12] 8930 	mov	r3,#0x00
      005DD3 7A 40            [12] 8931 	mov	r2,#0x40
      005DD5 8D 82            [24] 8932 	mov	dpl,r5
      005DD7 8E 83            [24] 8933 	mov	dph,r6
      005DD9 8F F0            [24] 8934 	mov	b,r7
      005DDB 12 6F D1         [24] 8935 	lcall	__gptrget
      005DDE FD               [12] 8936 	mov	r5,a
      005DDF A3               [24] 8937 	inc	dptr
      005DE0 12 6F D1         [24] 8938 	lcall	__gptrget
      005DE3 FE               [12] 8939 	mov	r6,a
      005DE4 A3               [24] 8940 	inc	dptr
      005DE5 12 6F D1         [24] 8941 	lcall	__gptrget
      005DE8 FF               [12] 8942 	mov	r7,a
      005DE9 C0 01            [24] 8943 	push	ar1
      005DEB C0 04            [24] 8944 	push	ar4
      005DED C0 03            [24] 8945 	push	ar3
      005DEF C0 02            [24] 8946 	push	ar2
      005DF1 8D 82            [24] 8947 	mov	dpl,r5
      005DF3 8E 83            [24] 8948 	mov	dph,r6
      005DF5 8F F0            [24] 8949 	mov	b,r7
      005DF7 12 29 73         [24] 8950 	lcall	_stack_peek2
      005DFA AE 82            [24] 8951 	mov	r6,dpl
      005DFC AF 83            [24] 8952 	mov	r7,dph
      005DFE 15 81            [12] 8953 	dec	sp
      005E00 15 81            [12] 8954 	dec	sp
      005E02 15 81            [12] 8955 	dec	sp
      005E04 D0 01            [24] 8956 	pop	ar1
      005E06 E5 08            [12] 8957 	mov	a,_bp
      005E08 24 0A            [12] 8958 	add	a,#0x0a
      005E0A F8               [12] 8959 	mov	r0,a
      005E0B A6 06            [24] 8960 	mov	@r0,ar6
      005E0D 08               [12] 8961 	inc	r0
      005E0E A6 07            [24] 8962 	mov	@r0,ar7
                                   8963 ;	calc.c:424: printstr("SSTOP1 = ");
      005E10 7B 70            [12] 8964 	mov	r3,#___str_21
      005E12 7C 89            [12] 8965 	mov	r4,#(___str_21 >> 8)
      005E14 7D 80            [12] 8966 	mov	r5,#0x80
                                   8967 ;	calc.c:51: return;
      005E16                       8968 00147$:
                                   8969 ;	calc.c:49: for (; *s; s++) putchar(*s);
      005E16 8B 82            [24] 8970 	mov	dpl,r3
      005E18 8C 83            [24] 8971 	mov	dph,r4
      005E1A 8D F0            [24] 8972 	mov	b,r5
      005E1C 12 6F D1         [24] 8973 	lcall	__gptrget
      005E1F FA               [12] 8974 	mov	r2,a
      005E20 60 10            [24] 8975 	jz	00122$
      005E22 7F 00            [12] 8976 	mov	r7,#0x00
      005E24 8A 82            [24] 8977 	mov	dpl,r2
      005E26 8F 83            [24] 8978 	mov	dph,r7
      005E28 12 2B D5         [24] 8979 	lcall	_putchar
      005E2B 0B               [12] 8980 	inc	r3
                                   8981 ;	calc.c:424: printstr("SSTOP1 = ");
      005E2C BB 00 E7         [24] 8982 	cjne	r3,#0x00,00147$
      005E2F 0C               [12] 8983 	inc	r4
      005E30 80 E4            [24] 8984 	sjmp	00147$
      005E32                       8985 00122$:
                                   8986 ;	calc.c:425: if (n > 0) {
      005E32 E5 08            [12] 8987 	mov	a,_bp
      005E34 24 0A            [12] 8988 	add	a,#0x0a
      005E36 F8               [12] 8989 	mov	r0,a
      005E37 C3               [12] 8990 	clr	c
      005E38 E4               [12] 8991 	clr	a
      005E39 96               [12] 8992 	subb	a,@r0
      005E3A 74 80            [12] 8993 	mov	a,#(0x00 ^ 0x80)
      005E3C 08               [12] 8994 	inc	r0
      005E3D 86 F0            [24] 8995 	mov	b,@r0
      005E3F 63 F0 80         [24] 8996 	xrl	b,#0x80
      005E42 95 F0            [12] 8997 	subb	a,b
      005E44 40 03            [24] 8998 	jc	00328$
      005E46 02 5F 35         [24] 8999 	ljmp	00106$
      005E49                       9000 00328$:
                                   9001 ;	calc.c:426: printf("% 11ld / ", vals[1]);
      005E49 74 04            [12] 9002 	mov	a,#0x04
      005E4B 29               [12] 9003 	add	a,r1
      005E4C F8               [12] 9004 	mov	r0,a
      005E4D 86 02            [24] 9005 	mov	ar2,@r0
      005E4F 08               [12] 9006 	inc	r0
      005E50 86 03            [24] 9007 	mov	ar3,@r0
      005E52 08               [12] 9008 	inc	r0
      005E53 86 04            [24] 9009 	mov	ar4,@r0
      005E55 08               [12] 9010 	inc	r0
      005E56 86 05            [24] 9011 	mov	ar5,@r0
      005E58 18               [12] 9012 	dec	r0
      005E59 18               [12] 9013 	dec	r0
      005E5A 18               [12] 9014 	dec	r0
      005E5B C0 01            [24] 9015 	push	ar1
      005E5D C0 00            [24] 9016 	push	ar0
      005E5F C0 02            [24] 9017 	push	ar2
      005E61 C0 03            [24] 9018 	push	ar3
      005E63 C0 04            [24] 9019 	push	ar4
      005E65 C0 05            [24] 9020 	push	ar5
      005E67 74 6F            [12] 9021 	mov	a,#___str_3
      005E69 C0 E0            [24] 9022 	push	acc
      005E6B 74 88            [12] 9023 	mov	a,#(___str_3 >> 8)
      005E6D C0 E0            [24] 9024 	push	acc
      005E6F 74 80            [12] 9025 	mov	a,#0x80
      005E71 C0 E0            [24] 9026 	push	acc
      005E73 12 6F 98         [24] 9027 	lcall	_printf
      005E76 E5 81            [12] 9028 	mov	a,sp
      005E78 24 F9            [12] 9029 	add	a,#0xf9
      005E7A F5 81            [12] 9030 	mov	sp,a
      005E7C D0 00            [24] 9031 	pop	ar0
                                   9032 ;	calc.c:427: printf("%08lx / ", vals[1]);
      005E7E 86 02            [24] 9033 	mov	ar2,@r0
      005E80 08               [12] 9034 	inc	r0
      005E81 86 03            [24] 9035 	mov	ar3,@r0
      005E83 08               [12] 9036 	inc	r0
      005E84 86 04            [24] 9037 	mov	ar4,@r0
      005E86 08               [12] 9038 	inc	r0
      005E87 86 05            [24] 9039 	mov	ar5,@r0
      005E89 18               [12] 9040 	dec	r0
      005E8A 18               [12] 9041 	dec	r0
      005E8B 18               [12] 9042 	dec	r0
      005E8C C0 00            [24] 9043 	push	ar0
      005E8E C0 02            [24] 9044 	push	ar2
      005E90 C0 03            [24] 9045 	push	ar3
      005E92 C0 04            [24] 9046 	push	ar4
      005E94 C0 05            [24] 9047 	push	ar5
      005E96 74 79            [12] 9048 	mov	a,#___str_4
      005E98 C0 E0            [24] 9049 	push	acc
      005E9A 74 88            [12] 9050 	mov	a,#(___str_4 >> 8)
      005E9C C0 E0            [24] 9051 	push	acc
      005E9E 74 80            [12] 9052 	mov	a,#0x80
      005EA0 C0 E0            [24] 9053 	push	acc
      005EA2 12 6F 98         [24] 9054 	lcall	_printf
      005EA5 E5 81            [12] 9055 	mov	a,sp
      005EA7 24 F9            [12] 9056 	add	a,#0xf9
      005EA9 F5 81            [12] 9057 	mov	sp,a
      005EAB D0 00            [24] 9058 	pop	ar0
                                   9059 ;	calc.c:428: printbin(vals[1]);
      005EAD E5 08            [12] 9060 	mov	a,_bp
      005EAF 24 14            [12] 9061 	add	a,#0x14
      005EB1 F9               [12] 9062 	mov	r1,a
      005EB2 E6               [12] 9063 	mov	a,@r0
      005EB3 F7               [12] 9064 	mov	@r1,a
      005EB4 08               [12] 9065 	inc	r0
      005EB5 E6               [12] 9066 	mov	a,@r0
      005EB6 09               [12] 9067 	inc	r1
      005EB7 F7               [12] 9068 	mov	@r1,a
      005EB8 08               [12] 9069 	inc	r0
      005EB9 E6               [12] 9070 	mov	a,@r0
      005EBA 09               [12] 9071 	inc	r1
      005EBB F7               [12] 9072 	mov	@r1,a
      005EBC 08               [12] 9073 	inc	r0
      005EBD E6               [12] 9074 	mov	a,@r0
      005EBE 09               [12] 9075 	inc	r1
      005EBF F7               [12] 9076 	mov	@r1,a
      005EC0 D0 01            [24] 9077 	pop	ar1
                                   9078 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      005EC2 E5 08            [12] 9079 	mov	a,_bp
      005EC4 24 18            [12] 9080 	add	a,#0x18
      005EC6 F8               [12] 9081 	mov	r0,a
      005EC7 E4               [12] 9082 	clr	a
      005EC8 F6               [12] 9083 	mov	@r0,a
      005EC9 08               [12] 9084 	inc	r0
      005ECA F6               [12] 9085 	mov	@r0,a
      005ECB 08               [12] 9086 	inc	r0
      005ECC F6               [12] 9087 	mov	@r0,a
      005ECD 08               [12] 9088 	inc	r0
      005ECE 76 80            [12] 9089 	mov	@r0,#0x80
      005ED0                       9090 00149$:
                                   9091 ;	calc.c:58: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      005ED0 C0 01            [24] 9092 	push	ar1
      005ED2 E5 08            [12] 9093 	mov	a,_bp
      005ED4 24 14            [12] 9094 	add	a,#0x14
      005ED6 F8               [12] 9095 	mov	r0,a
      005ED7 86 02            [24] 9096 	mov	ar2,@r0
      005ED9 08               [12] 9097 	inc	r0
      005EDA 86 03            [24] 9098 	mov	ar3,@r0
      005EDC 08               [12] 9099 	inc	r0
      005EDD 86 05            [24] 9100 	mov	ar5,@r0
      005EDF 08               [12] 9101 	inc	r0
      005EE0 86 07            [24] 9102 	mov	ar7,@r0
      005EE2 E5 08            [12] 9103 	mov	a,_bp
      005EE4 24 18            [12] 9104 	add	a,#0x18
      005EE6 F8               [12] 9105 	mov	r0,a
      005EE7 E6               [12] 9106 	mov	a,@r0
      005EE8 52 02            [12] 9107 	anl	ar2,a
      005EEA 08               [12] 9108 	inc	r0
      005EEB E6               [12] 9109 	mov	a,@r0
      005EEC 52 03            [12] 9110 	anl	ar3,a
      005EEE 08               [12] 9111 	inc	r0
      005EEF E6               [12] 9112 	mov	a,@r0
      005EF0 52 05            [12] 9113 	anl	ar5,a
      005EF2 08               [12] 9114 	inc	r0
      005EF3 E6               [12] 9115 	mov	a,@r0
      005EF4 52 07            [12] 9116 	anl	ar7,a
      005EF6 D0 01            [24] 9117 	pop	ar1
      005EF8 EA               [12] 9118 	mov	a,r2
      005EF9 4B               [12] 9119 	orl	a,r3
      005EFA 4D               [12] 9120 	orl	a,r5
      005EFB 4F               [12] 9121 	orl	a,r7
      005EFC 60 06            [24] 9122 	jz	00167$
      005EFE 7E 31            [12] 9123 	mov	r6,#0x31
      005F00 7F 00            [12] 9124 	mov	r7,#0x00
      005F02 80 04            [24] 9125 	sjmp	00168$
      005F04                       9126 00167$:
      005F04 7E 30            [12] 9127 	mov	r6,#0x30
      005F06 7F 00            [12] 9128 	mov	r7,#0x00
      005F08                       9129 00168$:
      005F08 8E 82            [24] 9130 	mov	dpl,r6
      005F0A 8F 83            [24] 9131 	mov	dph,r7
      005F0C 12 2B D5         [24] 9132 	lcall	_putchar
                                   9133 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      005F0F E5 08            [12] 9134 	mov	a,_bp
      005F11 24 18            [12] 9135 	add	a,#0x18
      005F13 F8               [12] 9136 	mov	r0,a
      005F14 08               [12] 9137 	inc	r0
      005F15 08               [12] 9138 	inc	r0
      005F16 08               [12] 9139 	inc	r0
      005F17 E6               [12] 9140 	mov	a,@r0
      005F18 C3               [12] 9141 	clr	c
      005F19 13               [12] 9142 	rrc	a
      005F1A F6               [12] 9143 	mov	@r0,a
      005F1B 18               [12] 9144 	dec	r0
      005F1C E6               [12] 9145 	mov	a,@r0
      005F1D 13               [12] 9146 	rrc	a
      005F1E F6               [12] 9147 	mov	@r0,a
      005F1F 18               [12] 9148 	dec	r0
      005F20 E6               [12] 9149 	mov	a,@r0
      005F21 13               [12] 9150 	rrc	a
      005F22 F6               [12] 9151 	mov	@r0,a
      005F23 18               [12] 9152 	dec	r0
      005F24 E6               [12] 9153 	mov	a,@r0
      005F25 13               [12] 9154 	rrc	a
      005F26 F6               [12] 9155 	mov	@r0,a
      005F27 E5 08            [12] 9156 	mov	a,_bp
      005F29 24 18            [12] 9157 	add	a,#0x18
      005F2B F8               [12] 9158 	mov	r0,a
      005F2C E6               [12] 9159 	mov	a,@r0
      005F2D 08               [12] 9160 	inc	r0
      005F2E 46               [12] 9161 	orl	a,@r0
      005F2F 08               [12] 9162 	inc	r0
      005F30 46               [12] 9163 	orl	a,@r0
      005F31 08               [12] 9164 	inc	r0
      005F32 46               [12] 9165 	orl	a,@r0
      005F33 70 9B            [24] 9166 	jnz	00149$
                                   9167 ;	calc.c:428: printbin(vals[1]);
      005F35                       9168 00106$:
                                   9169 ;	calc.c:430: printstr("\r\nSSTOP0 = ");
      005F35 7D 7A            [12] 9170 	mov	r5,#___str_22
      005F37 7E 89            [12] 9171 	mov	r6,#(___str_22 >> 8)
      005F39 7F 80            [12] 9172 	mov	r7,#0x80
                                   9173 ;	calc.c:51: return;
      005F3B                       9174 00152$:
                                   9175 ;	calc.c:49: for (; *s; s++) putchar(*s);
      005F3B 8D 82            [24] 9176 	mov	dpl,r5
      005F3D 8E 83            [24] 9177 	mov	dph,r6
      005F3F 8F F0            [24] 9178 	mov	b,r7
      005F41 12 6F D1         [24] 9179 	lcall	__gptrget
      005F44 FC               [12] 9180 	mov	r4,a
      005F45 60 10            [24] 9181 	jz	00126$
      005F47 7B 00            [12] 9182 	mov	r3,#0x00
      005F49 8C 82            [24] 9183 	mov	dpl,r4
      005F4B 8B 83            [24] 9184 	mov	dph,r3
      005F4D 12 2B D5         [24] 9185 	lcall	_putchar
      005F50 0D               [12] 9186 	inc	r5
                                   9187 ;	calc.c:430: printstr("\r\nSSTOP0 = ");
      005F51 BD 00 E7         [24] 9188 	cjne	r5,#0x00,00152$
      005F54 0E               [12] 9189 	inc	r6
      005F55 80 E4            [24] 9190 	sjmp	00152$
      005F57                       9191 00126$:
                                   9192 ;	calc.c:431: if (n > 1) {
      005F57 E5 08            [12] 9193 	mov	a,_bp
      005F59 24 0A            [12] 9194 	add	a,#0x0a
      005F5B F8               [12] 9195 	mov	r0,a
      005F5C C3               [12] 9196 	clr	c
      005F5D 74 01            [12] 9197 	mov	a,#0x01
      005F5F 96               [12] 9198 	subb	a,@r0
      005F60 74 80            [12] 9199 	mov	a,#(0x00 ^ 0x80)
      005F62 08               [12] 9200 	inc	r0
      005F63 86 F0            [24] 9201 	mov	b,@r0
      005F65 63 F0 80         [24] 9202 	xrl	b,#0x80
      005F68 95 F0            [12] 9203 	subb	a,b
      005F6A 40 03            [24] 9204 	jc	00333$
      005F6C 02 60 4F         [24] 9205 	ljmp	00108$
      005F6F                       9206 00333$:
                                   9207 ;	calc.c:432: printf("% 11ld / ", vals[0]);
      005F6F 87 04            [24] 9208 	mov	ar4,@r1
      005F71 09               [12] 9209 	inc	r1
      005F72 87 05            [24] 9210 	mov	ar5,@r1
      005F74 09               [12] 9211 	inc	r1
      005F75 87 06            [24] 9212 	mov	ar6,@r1
      005F77 09               [12] 9213 	inc	r1
      005F78 87 07            [24] 9214 	mov	ar7,@r1
      005F7A 19               [12] 9215 	dec	r1
      005F7B 19               [12] 9216 	dec	r1
      005F7C 19               [12] 9217 	dec	r1
      005F7D C0 01            [24] 9218 	push	ar1
      005F7F C0 04            [24] 9219 	push	ar4
      005F81 C0 05            [24] 9220 	push	ar5
      005F83 C0 06            [24] 9221 	push	ar6
      005F85 C0 07            [24] 9222 	push	ar7
      005F87 74 6F            [12] 9223 	mov	a,#___str_3
      005F89 C0 E0            [24] 9224 	push	acc
      005F8B 74 88            [12] 9225 	mov	a,#(___str_3 >> 8)
      005F8D C0 E0            [24] 9226 	push	acc
      005F8F 74 80            [12] 9227 	mov	a,#0x80
      005F91 C0 E0            [24] 9228 	push	acc
      005F93 12 6F 98         [24] 9229 	lcall	_printf
      005F96 E5 81            [12] 9230 	mov	a,sp
      005F98 24 F9            [12] 9231 	add	a,#0xf9
      005F9A F5 81            [12] 9232 	mov	sp,a
      005F9C D0 01            [24] 9233 	pop	ar1
                                   9234 ;	calc.c:433: printf("%08lx / ", vals[0]);
      005F9E 87 04            [24] 9235 	mov	ar4,@r1
      005FA0 09               [12] 9236 	inc	r1
      005FA1 87 05            [24] 9237 	mov	ar5,@r1
      005FA3 09               [12] 9238 	inc	r1
      005FA4 87 06            [24] 9239 	mov	ar6,@r1
      005FA6 09               [12] 9240 	inc	r1
      005FA7 87 07            [24] 9241 	mov	ar7,@r1
      005FA9 19               [12] 9242 	dec	r1
      005FAA 19               [12] 9243 	dec	r1
      005FAB 19               [12] 9244 	dec	r1
      005FAC C0 01            [24] 9245 	push	ar1
      005FAE C0 04            [24] 9246 	push	ar4
      005FB0 C0 05            [24] 9247 	push	ar5
      005FB2 C0 06            [24] 9248 	push	ar6
      005FB4 C0 07            [24] 9249 	push	ar7
      005FB6 74 79            [12] 9250 	mov	a,#___str_4
      005FB8 C0 E0            [24] 9251 	push	acc
      005FBA 74 88            [12] 9252 	mov	a,#(___str_4 >> 8)
      005FBC C0 E0            [24] 9253 	push	acc
      005FBE 74 80            [12] 9254 	mov	a,#0x80
      005FC0 C0 E0            [24] 9255 	push	acc
      005FC2 12 6F 98         [24] 9256 	lcall	_printf
      005FC5 E5 81            [12] 9257 	mov	a,sp
      005FC7 24 F9            [12] 9258 	add	a,#0xf9
      005FC9 F5 81            [12] 9259 	mov	sp,a
      005FCB D0 01            [24] 9260 	pop	ar1
                                   9261 ;	calc.c:434: printbin(vals[0]);
      005FCD E5 08            [12] 9262 	mov	a,_bp
      005FCF 24 14            [12] 9263 	add	a,#0x14
      005FD1 F8               [12] 9264 	mov	r0,a
      005FD2 E7               [12] 9265 	mov	a,@r1
      005FD3 F6               [12] 9266 	mov	@r0,a
      005FD4 09               [12] 9267 	inc	r1
      005FD5 E7               [12] 9268 	mov	a,@r1
      005FD6 08               [12] 9269 	inc	r0
      005FD7 F6               [12] 9270 	mov	@r0,a
      005FD8 09               [12] 9271 	inc	r1
      005FD9 E7               [12] 9272 	mov	a,@r1
      005FDA 08               [12] 9273 	inc	r0
      005FDB F6               [12] 9274 	mov	@r0,a
      005FDC 09               [12] 9275 	inc	r1
      005FDD E7               [12] 9276 	mov	a,@r1
      005FDE 08               [12] 9277 	inc	r0
      005FDF F6               [12] 9278 	mov	@r0,a
                                   9279 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      005FE0 E5 08            [12] 9280 	mov	a,_bp
      005FE2 24 18            [12] 9281 	add	a,#0x18
      005FE4 F8               [12] 9282 	mov	r0,a
      005FE5 E4               [12] 9283 	clr	a
      005FE6 F6               [12] 9284 	mov	@r0,a
      005FE7 08               [12] 9285 	inc	r0
      005FE8 F6               [12] 9286 	mov	@r0,a
      005FE9 08               [12] 9287 	inc	r0
      005FEA F6               [12] 9288 	mov	@r0,a
      005FEB 08               [12] 9289 	inc	r0
      005FEC 76 80            [12] 9290 	mov	@r0,#0x80
      005FEE                       9291 00154$:
                                   9292 ;	calc.c:58: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      005FEE E5 08            [12] 9293 	mov	a,_bp
      005FF0 24 14            [12] 9294 	add	a,#0x14
      005FF2 F8               [12] 9295 	mov	r0,a
      005FF3 86 04            [24] 9296 	mov	ar4,@r0
      005FF5 08               [12] 9297 	inc	r0
      005FF6 86 05            [24] 9298 	mov	ar5,@r0
      005FF8 08               [12] 9299 	inc	r0
      005FF9 86 06            [24] 9300 	mov	ar6,@r0
      005FFB 08               [12] 9301 	inc	r0
      005FFC 86 07            [24] 9302 	mov	ar7,@r0
      005FFE E5 08            [12] 9303 	mov	a,_bp
      006000 24 18            [12] 9304 	add	a,#0x18
      006002 F8               [12] 9305 	mov	r0,a
      006003 E6               [12] 9306 	mov	a,@r0
      006004 52 04            [12] 9307 	anl	ar4,a
      006006 08               [12] 9308 	inc	r0
      006007 E6               [12] 9309 	mov	a,@r0
      006008 52 05            [12] 9310 	anl	ar5,a
      00600A 08               [12] 9311 	inc	r0
      00600B E6               [12] 9312 	mov	a,@r0
      00600C 52 06            [12] 9313 	anl	ar6,a
      00600E 08               [12] 9314 	inc	r0
      00600F E6               [12] 9315 	mov	a,@r0
      006010 52 07            [12] 9316 	anl	ar7,a
      006012 EC               [12] 9317 	mov	a,r4
      006013 4D               [12] 9318 	orl	a,r5
      006014 4E               [12] 9319 	orl	a,r6
      006015 4F               [12] 9320 	orl	a,r7
      006016 60 06            [24] 9321 	jz	00169$
      006018 7E 31            [12] 9322 	mov	r6,#0x31
      00601A 7F 00            [12] 9323 	mov	r7,#0x00
      00601C 80 04            [24] 9324 	sjmp	00170$
      00601E                       9325 00169$:
      00601E 7E 30            [12] 9326 	mov	r6,#0x30
      006020 7F 00            [12] 9327 	mov	r7,#0x00
      006022                       9328 00170$:
      006022 8E 82            [24] 9329 	mov	dpl,r6
      006024 8F 83            [24] 9330 	mov	dph,r7
      006026 12 2B D5         [24] 9331 	lcall	_putchar
                                   9332 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      006029 E5 08            [12] 9333 	mov	a,_bp
      00602B 24 18            [12] 9334 	add	a,#0x18
      00602D F8               [12] 9335 	mov	r0,a
      00602E 08               [12] 9336 	inc	r0
      00602F 08               [12] 9337 	inc	r0
      006030 08               [12] 9338 	inc	r0
      006031 E6               [12] 9339 	mov	a,@r0
      006032 C3               [12] 9340 	clr	c
      006033 13               [12] 9341 	rrc	a
      006034 F6               [12] 9342 	mov	@r0,a
      006035 18               [12] 9343 	dec	r0
      006036 E6               [12] 9344 	mov	a,@r0
      006037 13               [12] 9345 	rrc	a
      006038 F6               [12] 9346 	mov	@r0,a
      006039 18               [12] 9347 	dec	r0
      00603A E6               [12] 9348 	mov	a,@r0
      00603B 13               [12] 9349 	rrc	a
      00603C F6               [12] 9350 	mov	@r0,a
      00603D 18               [12] 9351 	dec	r0
      00603E E6               [12] 9352 	mov	a,@r0
      00603F 13               [12] 9353 	rrc	a
      006040 F6               [12] 9354 	mov	@r0,a
      006041 E5 08            [12] 9355 	mov	a,_bp
      006043 24 18            [12] 9356 	add	a,#0x18
      006045 F8               [12] 9357 	mov	r0,a
      006046 E6               [12] 9358 	mov	a,@r0
      006047 08               [12] 9359 	inc	r0
      006048 46               [12] 9360 	orl	a,@r0
      006049 08               [12] 9361 	inc	r0
      00604A 46               [12] 9362 	orl	a,@r0
      00604B 08               [12] 9363 	inc	r0
      00604C 46               [12] 9364 	orl	a,@r0
      00604D 70 9F            [24] 9365 	jnz	00154$
                                   9366 ;	calc.c:434: printbin(vals[0]);
      00604F                       9367 00108$:
                                   9368 ;	calc.c:436: printstr("\r\n");
      00604F 7D 82            [12] 9369 	mov	r5,#___str_5
      006051 7E 88            [12] 9370 	mov	r6,#(___str_5 >> 8)
      006053 7F 80            [12] 9371 	mov	r7,#0x80
                                   9372 ;	calc.c:51: return;
      006055                       9373 00157$:
                                   9374 ;	calc.c:49: for (; *s; s++) putchar(*s);
      006055 8D 82            [24] 9375 	mov	dpl,r5
      006057 8E 83            [24] 9376 	mov	dph,r6
      006059 8F F0            [24] 9377 	mov	b,r7
      00605B 12 6F D1         [24] 9378 	lcall	__gptrget
      00605E FC               [12] 9379 	mov	r4,a
      00605F 60 10            [24] 9380 	jz	00130$
      006061 7B 00            [12] 9381 	mov	r3,#0x00
      006063 8C 82            [24] 9382 	mov	dpl,r4
      006065 8B 83            [24] 9383 	mov	dph,r3
      006067 12 2B D5         [24] 9384 	lcall	_putchar
      00606A 0D               [12] 9385 	inc	r5
                                   9386 ;	calc.c:436: printstr("\r\n");
      00606B BD 00 E7         [24] 9387 	cjne	r5,#0x00,00157$
      00606E 0E               [12] 9388 	inc	r6
      00606F 80 E4            [24] 9389 	sjmp	00157$
      006071                       9390 00130$:
                                   9391 ;	calc.c:438: return 1;
      006071 90 00 01         [24] 9392 	mov	dptr,#0x0001
                                   9393 ;	calc.c:439: }
      006074 85 08 81         [24] 9394 	mov	sp,_bp
      006077 D0 08            [24] 9395 	pop	_bp
      006079 22               [24] 9396 	ret
                                   9397 ;------------------------------------------------------------
                                   9398 ;Allocation info for local variables in function 'help'
                                   9399 ;------------------------------------------------------------
                                   9400 ;delta                     Allocated to stack - _bp -5
                                   9401 ;_ctx                      Allocated to registers 
                                   9402 ;__1310720149              Allocated to registers 
                                   9403 ;s                         Allocated to registers r5 r6 r7 
                                   9404 ;__1310720151              Allocated to registers 
                                   9405 ;s                         Allocated to registers r5 r6 r7 
                                   9406 ;__1310720153              Allocated to registers 
                                   9407 ;s                         Allocated to registers r5 r6 r7 
                                   9408 ;__1310720155              Allocated to registers 
                                   9409 ;s                         Allocated to registers r5 r6 r7 
                                   9410 ;__1310720157              Allocated to registers 
                                   9411 ;s                         Allocated to registers r5 r6 r7 
                                   9412 ;__1310720159              Allocated to registers 
                                   9413 ;s                         Allocated to registers r5 r6 r7 
                                   9414 ;__1310720161              Allocated to registers 
                                   9415 ;s                         Allocated to registers r5 r6 r7 
                                   9416 ;__1310720163              Allocated to registers 
                                   9417 ;s                         Allocated to registers r5 r6 r7 
                                   9418 ;__1310720165              Allocated to registers 
                                   9419 ;s                         Allocated to registers r5 r6 r7 
                                   9420 ;__1310720167              Allocated to registers 
                                   9421 ;s                         Allocated to registers r5 r6 r7 
                                   9422 ;__1310720169              Allocated to registers 
                                   9423 ;s                         Allocated to registers r5 r6 r7 
                                   9424 ;__1310720171              Allocated to registers 
                                   9425 ;s                         Allocated to registers r5 r6 r7 
                                   9426 ;__1310720173              Allocated to registers 
                                   9427 ;s                         Allocated to registers r5 r6 r7 
                                   9428 ;__1310720175              Allocated to registers 
                                   9429 ;s                         Allocated to registers r5 r6 r7 
                                   9430 ;__1310720177              Allocated to registers 
                                   9431 ;s                         Allocated to registers r5 r6 r7 
                                   9432 ;__1310720179              Allocated to registers 
                                   9433 ;s                         Allocated to registers r5 r6 r7 
                                   9434 ;__1310720181              Allocated to registers 
                                   9435 ;s                         Allocated to registers r5 r6 r7 
                                   9436 ;__1310720183              Allocated to registers 
                                   9437 ;s                         Allocated to registers r5 r6 r7 
                                   9438 ;__1310720185              Allocated to registers 
                                   9439 ;s                         Allocated to registers r5 r6 r7 
                                   9440 ;__1310720187              Allocated to registers 
                                   9441 ;s                         Allocated to registers r5 r6 r7 
                                   9442 ;__1310720189              Allocated to registers 
                                   9443 ;s                         Allocated to registers r5 r6 r7 
                                   9444 ;__1310720191              Allocated to registers 
                                   9445 ;s                         Allocated to registers r5 r6 r7 
                                   9446 ;__1310720193              Allocated to registers 
                                   9447 ;s                         Allocated to registers r5 r6 r7 
                                   9448 ;__1310720195              Allocated to registers 
                                   9449 ;s                         Allocated to registers r5 r6 r7 
                                   9450 ;__1310720197              Allocated to registers 
                                   9451 ;s                         Allocated to registers r5 r6 r7 
                                   9452 ;__1310720199              Allocated to registers 
                                   9453 ;s                         Allocated to registers r5 r6 r7 
                                   9454 ;__1310720201              Allocated to registers 
                                   9455 ;s                         Allocated to registers r5 r6 r7 
                                   9456 ;__1310720203              Allocated to registers 
                                   9457 ;s                         Allocated to registers r5 r6 r7 
                                   9458 ;__1310720205              Allocated to registers 
                                   9459 ;s                         Allocated to registers r5 r6 r7 
                                   9460 ;__1310720207              Allocated to registers 
                                   9461 ;s                         Allocated to registers r5 r6 r7 
                                   9462 ;__1310720209              Allocated to registers 
                                   9463 ;s                         Allocated to registers r5 r6 r7 
                                   9464 ;------------------------------------------------------------
                                   9465 ;	calc.c:441: static int help(void *_ctx, delta_t *delta) __reentrant {
                                   9466 ;	-----------------------------------------
                                   9467 ;	 function help
                                   9468 ;	-----------------------------------------
      00607A                       9469 _help:
      00607A C0 08            [24] 9470 	push	_bp
      00607C 85 81 08         [24] 9471 	mov	_bp,sp
                                   9472 ;	calc.c:445: printstr("\r\nHhOo\tbase 16 10 8 2\r\n");
      00607F 7D 86            [12] 9473 	mov	r5,#___str_23
      006081 7E 89            [12] 9474 	mov	r6,#(___str_23 >> 8)
      006083 7F 80            [12] 9475 	mov	r7,#0x80
                                   9476 ;	calc.c:51: return;
      006085                       9477 00164$:
                                   9478 ;	calc.c:49: for (; *s; s++) putchar(*s);
      006085 8D 82            [24] 9479 	mov	dpl,r5
      006087 8E 83            [24] 9480 	mov	dph,r6
      006089 8F F0            [24] 9481 	mov	b,r7
      00608B 12 6F D1         [24] 9482 	lcall	__gptrget
      00608E FC               [12] 9483 	mov	r4,a
      00608F 60 10            [24] 9484 	jz	00102$
      006091 7B 00            [12] 9485 	mov	r3,#0x00
      006093 8C 82            [24] 9486 	mov	dpl,r4
      006095 8B 83            [24] 9487 	mov	dph,r3
      006097 12 2B D5         [24] 9488 	lcall	_putchar
      00609A 0D               [12] 9489 	inc	r5
                                   9490 ;	calc.c:445: printstr("\r\nHhOo\tbase 16 10 8 2\r\n");
      00609B BD 00 E7         [24] 9491 	cjne	r5,#0x00,00164$
      00609E 0E               [12] 9492 	inc	r6
      00609F 80 E4            [24] 9493 	sjmp	00164$
      0060A1                       9494 00102$:
                                   9495 ;	calc.c:446: printstr("p\tpeek top\r\n");
      0060A1 7D 9E            [12] 9496 	mov	r5,#___str_24
      0060A3 7E 89            [12] 9497 	mov	r6,#(___str_24 >> 8)
      0060A5 7F 80            [12] 9498 	mov	r7,#0x80
                                   9499 ;	calc.c:51: return;
      0060A7                       9500 00167$:
                                   9501 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0060A7 8D 82            [24] 9502 	mov	dpl,r5
      0060A9 8E 83            [24] 9503 	mov	dph,r6
      0060AB 8F F0            [24] 9504 	mov	b,r7
      0060AD 12 6F D1         [24] 9505 	lcall	__gptrget
      0060B0 FC               [12] 9506 	mov	r4,a
      0060B1 60 10            [24] 9507 	jz	00104$
      0060B3 7B 00            [12] 9508 	mov	r3,#0x00
      0060B5 8C 82            [24] 9509 	mov	dpl,r4
      0060B7 8B 83            [24] 9510 	mov	dph,r3
      0060B9 12 2B D5         [24] 9511 	lcall	_putchar
      0060BC 0D               [12] 9512 	inc	r5
                                   9513 ;	calc.c:446: printstr("p\tpeek top\r\n");
      0060BD BD 00 E7         [24] 9514 	cjne	r5,#0x00,00167$
      0060C0 0E               [12] 9515 	inc	r6
      0060C1 80 E4            [24] 9516 	sjmp	00167$
      0060C3                       9517 00104$:
                                   9518 ;	calc.c:447: printstr("P\tprint stack\r\n");
      0060C3 7D AB            [12] 9519 	mov	r5,#___str_25
      0060C5 7E 89            [12] 9520 	mov	r6,#(___str_25 >> 8)
      0060C7 7F 80            [12] 9521 	mov	r7,#0x80
                                   9522 ;	calc.c:51: return;
      0060C9                       9523 00170$:
                                   9524 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0060C9 8D 82            [24] 9525 	mov	dpl,r5
      0060CB 8E 83            [24] 9526 	mov	dph,r6
      0060CD 8F F0            [24] 9527 	mov	b,r7
      0060CF 12 6F D1         [24] 9528 	lcall	__gptrget
      0060D2 FC               [12] 9529 	mov	r4,a
      0060D3 60 10            [24] 9530 	jz	00106$
      0060D5 7B 00            [12] 9531 	mov	r3,#0x00
      0060D7 8C 82            [24] 9532 	mov	dpl,r4
      0060D9 8B 83            [24] 9533 	mov	dph,r3
      0060DB 12 2B D5         [24] 9534 	lcall	_putchar
      0060DE 0D               [12] 9535 	inc	r5
                                   9536 ;	calc.c:447: printstr("P\tprint stack\r\n");
      0060DF BD 00 E7         [24] 9537 	cjne	r5,#0x00,00170$
      0060E2 0E               [12] 9538 	inc	r6
      0060E3 80 E4            [24] 9539 	sjmp	00170$
      0060E5                       9540 00106$:
                                   9541 ;	calc.c:448: printstr("v.\tpop top\r\n");
      0060E5 7D BB            [12] 9542 	mov	r5,#___str_26
      0060E7 7E 89            [12] 9543 	mov	r6,#(___str_26 >> 8)
      0060E9 7F 80            [12] 9544 	mov	r7,#0x80
                                   9545 ;	calc.c:51: return;
      0060EB                       9546 00173$:
                                   9547 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0060EB 8D 82            [24] 9548 	mov	dpl,r5
      0060ED 8E 83            [24] 9549 	mov	dph,r6
      0060EF 8F F0            [24] 9550 	mov	b,r7
      0060F1 12 6F D1         [24] 9551 	lcall	__gptrget
      0060F4 FC               [12] 9552 	mov	r4,a
      0060F5 60 10            [24] 9553 	jz	00108$
      0060F7 7B 00            [12] 9554 	mov	r3,#0x00
      0060F9 8C 82            [24] 9555 	mov	dpl,r4
      0060FB 8B 83            [24] 9556 	mov	dph,r3
      0060FD 12 2B D5         [24] 9557 	lcall	_putchar
      006100 0D               [12] 9558 	inc	r5
                                   9559 ;	calc.c:448: printstr("v.\tpop top\r\n");
      006101 BD 00 E7         [24] 9560 	cjne	r5,#0x00,00173$
      006104 0E               [12] 9561 	inc	r6
      006105 80 E4            [24] 9562 	sjmp	00173$
      006107                       9563 00108$:
                                   9564 ;	calc.c:449: printstr("V\tpop all\r\n");
      006107 7D C8            [12] 9565 	mov	r5,#___str_27
      006109 7E 89            [12] 9566 	mov	r6,#(___str_27 >> 8)
      00610B 7F 80            [12] 9567 	mov	r7,#0x80
                                   9568 ;	calc.c:51: return;
      00610D                       9569 00176$:
                                   9570 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00610D 8D 82            [24] 9571 	mov	dpl,r5
      00610F 8E 83            [24] 9572 	mov	dph,r6
      006111 8F F0            [24] 9573 	mov	b,r7
      006113 12 6F D1         [24] 9574 	lcall	__gptrget
      006116 FC               [12] 9575 	mov	r4,a
      006117 60 10            [24] 9576 	jz	00110$
      006119 7B 00            [12] 9577 	mov	r3,#0x00
      00611B 8C 82            [24] 9578 	mov	dpl,r4
      00611D 8B 83            [24] 9579 	mov	dph,r3
      00611F 12 2B D5         [24] 9580 	lcall	_putchar
      006122 0D               [12] 9581 	inc	r5
                                   9582 ;	calc.c:449: printstr("V\tpop all\r\n");
      006123 BD 00 E7         [24] 9583 	cjne	r5,#0x00,00176$
      006126 0E               [12] 9584 	inc	r6
      006127 80 E4            [24] 9585 	sjmp	00176$
      006129                       9586 00110$:
                                   9587 ;	calc.c:450: printstr("i\treset acc\r\n");
      006129 7D D4            [12] 9588 	mov	r5,#___str_28
      00612B 7E 89            [12] 9589 	mov	r6,#(___str_28 >> 8)
      00612D 7F 80            [12] 9590 	mov	r7,#0x80
                                   9591 ;	calc.c:51: return;
      00612F                       9592 00179$:
                                   9593 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00612F 8D 82            [24] 9594 	mov	dpl,r5
      006131 8E 83            [24] 9595 	mov	dph,r6
      006133 8F F0            [24] 9596 	mov	b,r7
      006135 12 6F D1         [24] 9597 	lcall	__gptrget
      006138 FC               [12] 9598 	mov	r4,a
      006139 60 10            [24] 9599 	jz	00112$
      00613B 7B 00            [12] 9600 	mov	r3,#0x00
      00613D 8C 82            [24] 9601 	mov	dpl,r4
      00613F 8B 83            [24] 9602 	mov	dph,r3
      006141 12 2B D5         [24] 9603 	lcall	_putchar
      006144 0D               [12] 9604 	inc	r5
                                   9605 ;	calc.c:450: printstr("i\treset acc\r\n");
      006145 BD 00 E7         [24] 9606 	cjne	r5,#0x00,00179$
      006148 0E               [12] 9607 	inc	r6
      006149 80 E4            [24] 9608 	sjmp	00179$
      00614B                       9609 00112$:
                                   9610 ;	calc.c:451: printstr("I\treset and discard acc\r\n");
      00614B 7D E2            [12] 9611 	mov	r5,#___str_29
      00614D 7E 89            [12] 9612 	mov	r6,#(___str_29 >> 8)
      00614F 7F 80            [12] 9613 	mov	r7,#0x80
                                   9614 ;	calc.c:51: return;
      006151                       9615 00182$:
                                   9616 ;	calc.c:49: for (; *s; s++) putchar(*s);
      006151 8D 82            [24] 9617 	mov	dpl,r5
      006153 8E 83            [24] 9618 	mov	dph,r6
      006155 8F F0            [24] 9619 	mov	b,r7
      006157 12 6F D1         [24] 9620 	lcall	__gptrget
      00615A FC               [12] 9621 	mov	r4,a
      00615B 60 10            [24] 9622 	jz	00114$
      00615D 7B 00            [12] 9623 	mov	r3,#0x00
      00615F 8C 82            [24] 9624 	mov	dpl,r4
      006161 8B 83            [24] 9625 	mov	dph,r3
      006163 12 2B D5         [24] 9626 	lcall	_putchar
      006166 0D               [12] 9627 	inc	r5
                                   9628 ;	calc.c:451: printstr("I\treset and discard acc\r\n");
      006167 BD 00 E7         [24] 9629 	cjne	r5,#0x00,00182$
      00616A 0E               [12] 9630 	inc	r6
      00616B 80 E4            [24] 9631 	sjmp	00182$
      00616D                       9632 00114$:
                                   9633 ;	calc.c:452: printstr("x\texchange top 2\r\n");
      00616D 7D FC            [12] 9634 	mov	r5,#___str_30
      00616F 7E 89            [12] 9635 	mov	r6,#(___str_30 >> 8)
      006171 7F 80            [12] 9636 	mov	r7,#0x80
                                   9637 ;	calc.c:51: return;
      006173                       9638 00185$:
                                   9639 ;	calc.c:49: for (; *s; s++) putchar(*s);
      006173 8D 82            [24] 9640 	mov	dpl,r5
      006175 8E 83            [24] 9641 	mov	dph,r6
      006177 8F F0            [24] 9642 	mov	b,r7
      006179 12 6F D1         [24] 9643 	lcall	__gptrget
      00617C FC               [12] 9644 	mov	r4,a
      00617D 60 10            [24] 9645 	jz	00116$
      00617F 7B 00            [12] 9646 	mov	r3,#0x00
      006181 8C 82            [24] 9647 	mov	dpl,r4
      006183 8B 83            [24] 9648 	mov	dph,r3
      006185 12 2B D5         [24] 9649 	lcall	_putchar
      006188 0D               [12] 9650 	inc	r5
                                   9651 ;	calc.c:452: printstr("x\texchange top 2\r\n");
      006189 BD 00 E7         [24] 9652 	cjne	r5,#0x00,00185$
      00618C 0E               [12] 9653 	inc	r6
      00618D 80 E4            [24] 9654 	sjmp	00185$
      00618F                       9655 00116$:
                                   9656 ;	calc.c:453: printstr("X\texchange stacks primary <-> secondary\r\n");
      00618F 7D 0F            [12] 9657 	mov	r5,#___str_31
      006191 7E 8A            [12] 9658 	mov	r6,#(___str_31 >> 8)
      006193 7F 80            [12] 9659 	mov	r7,#0x80
                                   9660 ;	calc.c:51: return;
      006195                       9661 00188$:
                                   9662 ;	calc.c:49: for (; *s; s++) putchar(*s);
      006195 8D 82            [24] 9663 	mov	dpl,r5
      006197 8E 83            [24] 9664 	mov	dph,r6
      006199 8F F0            [24] 9665 	mov	b,r7
      00619B 12 6F D1         [24] 9666 	lcall	__gptrget
      00619E FC               [12] 9667 	mov	r4,a
      00619F 60 10            [24] 9668 	jz	00118$
      0061A1 7B 00            [12] 9669 	mov	r3,#0x00
      0061A3 8C 82            [24] 9670 	mov	dpl,r4
      0061A5 8B 83            [24] 9671 	mov	dph,r3
      0061A7 12 2B D5         [24] 9672 	lcall	_putchar
      0061AA 0D               [12] 9673 	inc	r5
                                   9674 ;	calc.c:453: printstr("X\texchange stacks primary <-> secondary\r\n");
      0061AB BD 00 E7         [24] 9675 	cjne	r5,#0x00,00188$
      0061AE 0E               [12] 9676 	inc	r6
      0061AF 80 E4            [24] 9677 	sjmp	00188$
      0061B1                       9678 00118$:
                                   9679 ;	calc.c:454: printstr("T\texchange tops primary <-> secondary\r\n");
      0061B1 7D 39            [12] 9680 	mov	r5,#___str_32
      0061B3 7E 8A            [12] 9681 	mov	r6,#(___str_32 >> 8)
      0061B5 7F 80            [12] 9682 	mov	r7,#0x80
                                   9683 ;	calc.c:51: return;
      0061B7                       9684 00191$:
                                   9685 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0061B7 8D 82            [24] 9686 	mov	dpl,r5
      0061B9 8E 83            [24] 9687 	mov	dph,r6
      0061BB 8F F0            [24] 9688 	mov	b,r7
      0061BD 12 6F D1         [24] 9689 	lcall	__gptrget
      0061C0 FC               [12] 9690 	mov	r4,a
      0061C1 60 10            [24] 9691 	jz	00120$
      0061C3 7B 00            [12] 9692 	mov	r3,#0x00
      0061C5 8C 82            [24] 9693 	mov	dpl,r4
      0061C7 8B 83            [24] 9694 	mov	dph,r3
      0061C9 12 2B D5         [24] 9695 	lcall	_putchar
      0061CC 0D               [12] 9696 	inc	r5
                                   9697 ;	calc.c:454: printstr("T\texchange tops primary <-> secondary\r\n");
      0061CD BD 00 E7         [24] 9698 	cjne	r5,#0x00,00191$
      0061D0 0E               [12] 9699 	inc	r6
      0061D1 80 E4            [24] 9700 	sjmp	00191$
      0061D3                       9701 00120$:
                                   9702 ;	calc.c:455: printstr("U\tcopy top secondary -> primary\r\n");
      0061D3 7D 61            [12] 9703 	mov	r5,#___str_33
      0061D5 7E 8A            [12] 9704 	mov	r6,#(___str_33 >> 8)
      0061D7 7F 80            [12] 9705 	mov	r7,#0x80
                                   9706 ;	calc.c:51: return;
      0061D9                       9707 00194$:
                                   9708 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0061D9 8D 82            [24] 9709 	mov	dpl,r5
      0061DB 8E 83            [24] 9710 	mov	dph,r6
      0061DD 8F F0            [24] 9711 	mov	b,r7
      0061DF 12 6F D1         [24] 9712 	lcall	__gptrget
      0061E2 FC               [12] 9713 	mov	r4,a
      0061E3 60 10            [24] 9714 	jz	00122$
      0061E5 7B 00            [12] 9715 	mov	r3,#0x00
      0061E7 8C 82            [24] 9716 	mov	dpl,r4
      0061E9 8B 83            [24] 9717 	mov	dph,r3
      0061EB 12 2B D5         [24] 9718 	lcall	_putchar
      0061EE 0D               [12] 9719 	inc	r5
                                   9720 ;	calc.c:455: printstr("U\tcopy top secondary -> primary\r\n");
      0061EF BD 00 E7         [24] 9721 	cjne	r5,#0x00,00194$
      0061F2 0E               [12] 9722 	inc	r6
      0061F3 80 E4            [24] 9723 	sjmp	00194$
      0061F5                       9724 00122$:
                                   9725 ;	calc.c:456: printstr("u\tcopy top primary -> secondary\r\n");
      0061F5 7D 83            [12] 9726 	mov	r5,#___str_34
      0061F7 7E 8A            [12] 9727 	mov	r6,#(___str_34 >> 8)
      0061F9 7F 80            [12] 9728 	mov	r7,#0x80
                                   9729 ;	calc.c:51: return;
      0061FB                       9730 00197$:
                                   9731 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0061FB 8D 82            [24] 9732 	mov	dpl,r5
      0061FD 8E 83            [24] 9733 	mov	dph,r6
      0061FF 8F F0            [24] 9734 	mov	b,r7
      006201 12 6F D1         [24] 9735 	lcall	__gptrget
      006204 FC               [12] 9736 	mov	r4,a
      006205 60 10            [24] 9737 	jz	00124$
      006207 7B 00            [12] 9738 	mov	r3,#0x00
      006209 8C 82            [24] 9739 	mov	dpl,r4
      00620B 8B 83            [24] 9740 	mov	dph,r3
      00620D 12 2B D5         [24] 9741 	lcall	_putchar
      006210 0D               [12] 9742 	inc	r5
                                   9743 ;	calc.c:456: printstr("u\tcopy top primary -> secondary\r\n");
      006211 BD 00 E7         [24] 9744 	cjne	r5,#0x00,00197$
      006214 0E               [12] 9745 	inc	r6
      006215 80 E4            [24] 9746 	sjmp	00197$
      006217                       9747 00124$:
                                   9748 ;	calc.c:457: printstr("M\tmove top secondary -> primary\r\n");
      006217 7D A5            [12] 9749 	mov	r5,#___str_35
      006219 7E 8A            [12] 9750 	mov	r6,#(___str_35 >> 8)
      00621B 7F 80            [12] 9751 	mov	r7,#0x80
                                   9752 ;	calc.c:51: return;
      00621D                       9753 00200$:
                                   9754 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00621D 8D 82            [24] 9755 	mov	dpl,r5
      00621F 8E 83            [24] 9756 	mov	dph,r6
      006221 8F F0            [24] 9757 	mov	b,r7
      006223 12 6F D1         [24] 9758 	lcall	__gptrget
      006226 FC               [12] 9759 	mov	r4,a
      006227 60 10            [24] 9760 	jz	00126$
      006229 7B 00            [12] 9761 	mov	r3,#0x00
      00622B 8C 82            [24] 9762 	mov	dpl,r4
      00622D 8B 83            [24] 9763 	mov	dph,r3
      00622F 12 2B D5         [24] 9764 	lcall	_putchar
      006232 0D               [12] 9765 	inc	r5
                                   9766 ;	calc.c:457: printstr("M\tmove top secondary -> primary\r\n");
      006233 BD 00 E7         [24] 9767 	cjne	r5,#0x00,00200$
      006236 0E               [12] 9768 	inc	r6
      006237 80 E4            [24] 9769 	sjmp	00200$
      006239                       9770 00126$:
                                   9771 ;	calc.c:458: printstr("m\tmove top primary -> secondary\r\n");
      006239 7D C7            [12] 9772 	mov	r5,#___str_36
      00623B 7E 8A            [12] 9773 	mov	r6,#(___str_36 >> 8)
      00623D 7F 80            [12] 9774 	mov	r7,#0x80
                                   9775 ;	calc.c:51: return;
      00623F                       9776 00203$:
                                   9777 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00623F 8D 82            [24] 9778 	mov	dpl,r5
      006241 8E 83            [24] 9779 	mov	dph,r6
      006243 8F F0            [24] 9780 	mov	b,r7
      006245 12 6F D1         [24] 9781 	lcall	__gptrget
      006248 FC               [12] 9782 	mov	r4,a
      006249 60 10            [24] 9783 	jz	00128$
      00624B 7B 00            [12] 9784 	mov	r3,#0x00
      00624D 8C 82            [24] 9785 	mov	dpl,r4
      00624F 8B 83            [24] 9786 	mov	dph,r3
      006251 12 2B D5         [24] 9787 	lcall	_putchar
      006254 0D               [12] 9788 	inc	r5
                                   9789 ;	calc.c:458: printstr("m\tmove top primary -> secondary\r\n");
      006255 BD 00 E7         [24] 9790 	cjne	r5,#0x00,00203$
      006258 0E               [12] 9791 	inc	r6
      006259 80 E4            [24] 9792 	sjmp	00203$
      00625B                       9793 00128$:
                                   9794 ;	calc.c:459: printstr("+\tadd top 2\r\n");
      00625B 7D E9            [12] 9795 	mov	r5,#___str_37
      00625D 7E 8A            [12] 9796 	mov	r6,#(___str_37 >> 8)
      00625F 7F 80            [12] 9797 	mov	r7,#0x80
                                   9798 ;	calc.c:51: return;
      006261                       9799 00206$:
                                   9800 ;	calc.c:49: for (; *s; s++) putchar(*s);
      006261 8D 82            [24] 9801 	mov	dpl,r5
      006263 8E 83            [24] 9802 	mov	dph,r6
      006265 8F F0            [24] 9803 	mov	b,r7
      006267 12 6F D1         [24] 9804 	lcall	__gptrget
      00626A FC               [12] 9805 	mov	r4,a
      00626B 60 10            [24] 9806 	jz	00130$
      00626D 7B 00            [12] 9807 	mov	r3,#0x00
      00626F 8C 82            [24] 9808 	mov	dpl,r4
      006271 8B 83            [24] 9809 	mov	dph,r3
      006273 12 2B D5         [24] 9810 	lcall	_putchar
      006276 0D               [12] 9811 	inc	r5
                                   9812 ;	calc.c:459: printstr("+\tadd top 2\r\n");
      006277 BD 00 E7         [24] 9813 	cjne	r5,#0x00,00206$
      00627A 0E               [12] 9814 	inc	r6
      00627B 80 E4            [24] 9815 	sjmp	00206$
      00627D                       9816 00130$:
                                   9817 ;	calc.c:460: printstr("-\tsubtract top 2\r\n");
      00627D 7D F7            [12] 9818 	mov	r5,#___str_38
      00627F 7E 8A            [12] 9819 	mov	r6,#(___str_38 >> 8)
      006281 7F 80            [12] 9820 	mov	r7,#0x80
                                   9821 ;	calc.c:51: return;
      006283                       9822 00209$:
                                   9823 ;	calc.c:49: for (; *s; s++) putchar(*s);
      006283 8D 82            [24] 9824 	mov	dpl,r5
      006285 8E 83            [24] 9825 	mov	dph,r6
      006287 8F F0            [24] 9826 	mov	b,r7
      006289 12 6F D1         [24] 9827 	lcall	__gptrget
      00628C FC               [12] 9828 	mov	r4,a
      00628D 60 10            [24] 9829 	jz	00132$
      00628F 7B 00            [12] 9830 	mov	r3,#0x00
      006291 8C 82            [24] 9831 	mov	dpl,r4
      006293 8B 83            [24] 9832 	mov	dph,r3
      006295 12 2B D5         [24] 9833 	lcall	_putchar
      006298 0D               [12] 9834 	inc	r5
                                   9835 ;	calc.c:460: printstr("-\tsubtract top 2\r\n");
      006299 BD 00 E7         [24] 9836 	cjne	r5,#0x00,00209$
      00629C 0E               [12] 9837 	inc	r6
      00629D 80 E4            [24] 9838 	sjmp	00209$
      00629F                       9839 00132$:
                                   9840 ;	calc.c:461: printstr("*\tmultiply top 2\r\n");
      00629F 7D 0A            [12] 9841 	mov	r5,#___str_39
      0062A1 7E 8B            [12] 9842 	mov	r6,#(___str_39 >> 8)
      0062A3 7F 80            [12] 9843 	mov	r7,#0x80
                                   9844 ;	calc.c:51: return;
      0062A5                       9845 00212$:
                                   9846 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0062A5 8D 82            [24] 9847 	mov	dpl,r5
      0062A7 8E 83            [24] 9848 	mov	dph,r6
      0062A9 8F F0            [24] 9849 	mov	b,r7
      0062AB 12 6F D1         [24] 9850 	lcall	__gptrget
      0062AE FC               [12] 9851 	mov	r4,a
      0062AF 60 10            [24] 9852 	jz	00134$
      0062B1 7B 00            [12] 9853 	mov	r3,#0x00
      0062B3 8C 82            [24] 9854 	mov	dpl,r4
      0062B5 8B 83            [24] 9855 	mov	dph,r3
      0062B7 12 2B D5         [24] 9856 	lcall	_putchar
      0062BA 0D               [12] 9857 	inc	r5
                                   9858 ;	calc.c:461: printstr("*\tmultiply top 2\r\n");
      0062BB BD 00 E7         [24] 9859 	cjne	r5,#0x00,00212$
      0062BE 0E               [12] 9860 	inc	r6
      0062BF 80 E4            [24] 9861 	sjmp	00212$
      0062C1                       9862 00134$:
                                   9863 ;	calc.c:462: printstr("/\tdivide top 2\r\n");
      0062C1 7D 1D            [12] 9864 	mov	r5,#___str_40
      0062C3 7E 8B            [12] 9865 	mov	r6,#(___str_40 >> 8)
      0062C5 7F 80            [12] 9866 	mov	r7,#0x80
                                   9867 ;	calc.c:51: return;
      0062C7                       9868 00215$:
                                   9869 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0062C7 8D 82            [24] 9870 	mov	dpl,r5
      0062C9 8E 83            [24] 9871 	mov	dph,r6
      0062CB 8F F0            [24] 9872 	mov	b,r7
      0062CD 12 6F D1         [24] 9873 	lcall	__gptrget
      0062D0 FC               [12] 9874 	mov	r4,a
      0062D1 60 10            [24] 9875 	jz	00136$
      0062D3 7B 00            [12] 9876 	mov	r3,#0x00
      0062D5 8C 82            [24] 9877 	mov	dpl,r4
      0062D7 8B 83            [24] 9878 	mov	dph,r3
      0062D9 12 2B D5         [24] 9879 	lcall	_putchar
      0062DC 0D               [12] 9880 	inc	r5
                                   9881 ;	calc.c:462: printstr("/\tdivide top 2\r\n");
      0062DD BD 00 E7         [24] 9882 	cjne	r5,#0x00,00215$
      0062E0 0E               [12] 9883 	inc	r6
      0062E1 80 E4            [24] 9884 	sjmp	00215$
      0062E3                       9885 00136$:
                                   9886 ;	calc.c:463: printstr("\\\tdivide top 2 unsigned\r\n");	
      0062E3 7D 2E            [12] 9887 	mov	r5,#___str_41
      0062E5 7E 8B            [12] 9888 	mov	r6,#(___str_41 >> 8)
      0062E7 7F 80            [12] 9889 	mov	r7,#0x80
                                   9890 ;	calc.c:51: return;
      0062E9                       9891 00218$:
                                   9892 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0062E9 8D 82            [24] 9893 	mov	dpl,r5
      0062EB 8E 83            [24] 9894 	mov	dph,r6
      0062ED 8F F0            [24] 9895 	mov	b,r7
      0062EF 12 6F D1         [24] 9896 	lcall	__gptrget
      0062F2 FC               [12] 9897 	mov	r4,a
      0062F3 60 10            [24] 9898 	jz	00138$
      0062F5 7B 00            [12] 9899 	mov	r3,#0x00
      0062F7 8C 82            [24] 9900 	mov	dpl,r4
      0062F9 8B 83            [24] 9901 	mov	dph,r3
      0062FB 12 2B D5         [24] 9902 	lcall	_putchar
      0062FE 0D               [12] 9903 	inc	r5
                                   9904 ;	calc.c:463: printstr("\\\tdivide top 2 unsigned\r\n");	
      0062FF BD 00 E7         [24] 9905 	cjne	r5,#0x00,00218$
      006302 0E               [12] 9906 	inc	r6
      006303 80 E4            [24] 9907 	sjmp	00218$
      006305                       9908 00138$:
                                   9909 ;	calc.c:464: printstr("%\tmodulus top 2\r\n");
      006305 7D 48            [12] 9910 	mov	r5,#___str_42
      006307 7E 8B            [12] 9911 	mov	r6,#(___str_42 >> 8)
      006309 7F 80            [12] 9912 	mov	r7,#0x80
                                   9913 ;	calc.c:51: return;
      00630B                       9914 00221$:
                                   9915 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00630B 8D 82            [24] 9916 	mov	dpl,r5
      00630D 8E 83            [24] 9917 	mov	dph,r6
      00630F 8F F0            [24] 9918 	mov	b,r7
      006311 12 6F D1         [24] 9919 	lcall	__gptrget
      006314 FC               [12] 9920 	mov	r4,a
      006315 60 10            [24] 9921 	jz	00140$
      006317 7B 00            [12] 9922 	mov	r3,#0x00
      006319 8C 82            [24] 9923 	mov	dpl,r4
      00631B 8B 83            [24] 9924 	mov	dph,r3
      00631D 12 2B D5         [24] 9925 	lcall	_putchar
      006320 0D               [12] 9926 	inc	r5
                                   9927 ;	calc.c:464: printstr("%\tmodulus top 2\r\n");
      006321 BD 00 E7         [24] 9928 	cjne	r5,#0x00,00221$
      006324 0E               [12] 9929 	inc	r6
      006325 80 E4            [24] 9930 	sjmp	00221$
      006327                       9931 00140$:
                                   9932 ;	calc.c:465: printstr("#\tmodulus top 2 unsigned\r\n");
      006327 7D 5A            [12] 9933 	mov	r5,#___str_43
      006329 7E 8B            [12] 9934 	mov	r6,#(___str_43 >> 8)
      00632B 7F 80            [12] 9935 	mov	r7,#0x80
                                   9936 ;	calc.c:51: return;
      00632D                       9937 00224$:
                                   9938 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00632D 8D 82            [24] 9939 	mov	dpl,r5
      00632F 8E 83            [24] 9940 	mov	dph,r6
      006331 8F F0            [24] 9941 	mov	b,r7
      006333 12 6F D1         [24] 9942 	lcall	__gptrget
      006336 FC               [12] 9943 	mov	r4,a
      006337 60 10            [24] 9944 	jz	00142$
      006339 7B 00            [12] 9945 	mov	r3,#0x00
      00633B 8C 82            [24] 9946 	mov	dpl,r4
      00633D 8B 83            [24] 9947 	mov	dph,r3
      00633F 12 2B D5         [24] 9948 	lcall	_putchar
      006342 0D               [12] 9949 	inc	r5
                                   9950 ;	calc.c:465: printstr("#\tmodulus top 2 unsigned\r\n");
      006343 BD 00 E7         [24] 9951 	cjne	r5,#0x00,00224$
      006346 0E               [12] 9952 	inc	r6
      006347 80 E4            [24] 9953 	sjmp	00224$
      006349                       9954 00142$:
                                   9955 ;	calc.c:466: printstr("&\tand top 2\r\n");
      006349 7D 75            [12] 9956 	mov	r5,#___str_44
      00634B 7E 8B            [12] 9957 	mov	r6,#(___str_44 >> 8)
      00634D 7F 80            [12] 9958 	mov	r7,#0x80
                                   9959 ;	calc.c:51: return;
      00634F                       9960 00227$:
                                   9961 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00634F 8D 82            [24] 9962 	mov	dpl,r5
      006351 8E 83            [24] 9963 	mov	dph,r6
      006353 8F F0            [24] 9964 	mov	b,r7
      006355 12 6F D1         [24] 9965 	lcall	__gptrget
      006358 FC               [12] 9966 	mov	r4,a
      006359 60 10            [24] 9967 	jz	00144$
      00635B 7B 00            [12] 9968 	mov	r3,#0x00
      00635D 8C 82            [24] 9969 	mov	dpl,r4
      00635F 8B 83            [24] 9970 	mov	dph,r3
      006361 12 2B D5         [24] 9971 	lcall	_putchar
      006364 0D               [12] 9972 	inc	r5
                                   9973 ;	calc.c:466: printstr("&\tand top 2\r\n");
      006365 BD 00 E7         [24] 9974 	cjne	r5,#0x00,00227$
      006368 0E               [12] 9975 	inc	r6
      006369 80 E4            [24] 9976 	sjmp	00227$
      00636B                       9977 00144$:
                                   9978 ;	calc.c:467: printstr("|\tor top 2\r\n");
      00636B 7D 83            [12] 9979 	mov	r5,#___str_45
      00636D 7E 8B            [12] 9980 	mov	r6,#(___str_45 >> 8)
      00636F 7F 80            [12] 9981 	mov	r7,#0x80
                                   9982 ;	calc.c:51: return;
      006371                       9983 00230$:
                                   9984 ;	calc.c:49: for (; *s; s++) putchar(*s);
      006371 8D 82            [24] 9985 	mov	dpl,r5
      006373 8E 83            [24] 9986 	mov	dph,r6
      006375 8F F0            [24] 9987 	mov	b,r7
      006377 12 6F D1         [24] 9988 	lcall	__gptrget
      00637A FC               [12] 9989 	mov	r4,a
      00637B 60 10            [24] 9990 	jz	00146$
      00637D 7B 00            [12] 9991 	mov	r3,#0x00
      00637F 8C 82            [24] 9992 	mov	dpl,r4
      006381 8B 83            [24] 9993 	mov	dph,r3
      006383 12 2B D5         [24] 9994 	lcall	_putchar
      006386 0D               [12] 9995 	inc	r5
                                   9996 ;	calc.c:467: printstr("|\tor top 2\r\n");
      006387 BD 00 E7         [24] 9997 	cjne	r5,#0x00,00230$
      00638A 0E               [12] 9998 	inc	r6
      00638B 80 E4            [24] 9999 	sjmp	00230$
      00638D                      10000 00146$:
                                  10001 ;	calc.c:468: printstr("^\txor top 2\r\n");
      00638D 7D 90            [12]10002 	mov	r5,#___str_46
      00638F 7E 8B            [12]10003 	mov	r6,#(___str_46 >> 8)
      006391 7F 80            [12]10004 	mov	r7,#0x80
                                  10005 ;	calc.c:51: return;
      006393                      10006 00233$:
                                  10007 ;	calc.c:49: for (; *s; s++) putchar(*s);
      006393 8D 82            [24]10008 	mov	dpl,r5
      006395 8E 83            [24]10009 	mov	dph,r6
      006397 8F F0            [24]10010 	mov	b,r7
      006399 12 6F D1         [24]10011 	lcall	__gptrget
      00639C FC               [12]10012 	mov	r4,a
      00639D 60 10            [24]10013 	jz	00148$
      00639F 7B 00            [12]10014 	mov	r3,#0x00
      0063A1 8C 82            [24]10015 	mov	dpl,r4
      0063A3 8B 83            [24]10016 	mov	dph,r3
      0063A5 12 2B D5         [24]10017 	lcall	_putchar
      0063A8 0D               [12]10018 	inc	r5
                                  10019 ;	calc.c:468: printstr("^\txor top 2\r\n");
      0063A9 BD 00 E7         [24]10020 	cjne	r5,#0x00,00233$
      0063AC 0E               [12]10021 	inc	r6
      0063AD 80 E4            [24]10022 	sjmp	00233$
      0063AF                      10023 00148$:
                                  10024 ;	calc.c:469: printstr(">\tshift right top 2\r\n");
      0063AF 7D 9E            [12]10025 	mov	r5,#___str_47
      0063B1 7E 8B            [12]10026 	mov	r6,#(___str_47 >> 8)
      0063B3 7F 80            [12]10027 	mov	r7,#0x80
                                  10028 ;	calc.c:51: return;
      0063B5                      10029 00236$:
                                  10030 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0063B5 8D 82            [24]10031 	mov	dpl,r5
      0063B7 8E 83            [24]10032 	mov	dph,r6
      0063B9 8F F0            [24]10033 	mov	b,r7
      0063BB 12 6F D1         [24]10034 	lcall	__gptrget
      0063BE FC               [12]10035 	mov	r4,a
      0063BF 60 10            [24]10036 	jz	00150$
      0063C1 7B 00            [12]10037 	mov	r3,#0x00
      0063C3 8C 82            [24]10038 	mov	dpl,r4
      0063C5 8B 83            [24]10039 	mov	dph,r3
      0063C7 12 2B D5         [24]10040 	lcall	_putchar
      0063CA 0D               [12]10041 	inc	r5
                                  10042 ;	calc.c:469: printstr(">\tshift right top 2\r\n");
      0063CB BD 00 E7         [24]10043 	cjne	r5,#0x00,00236$
      0063CE 0E               [12]10044 	inc	r6
      0063CF 80 E4            [24]10045 	sjmp	00236$
      0063D1                      10046 00150$:
                                  10047 ;	calc.c:470: printstr("]\tarithmetic shift right top 2\r\n");
      0063D1 7D B4            [12]10048 	mov	r5,#___str_48
      0063D3 7E 8B            [12]10049 	mov	r6,#(___str_48 >> 8)
      0063D5 7F 80            [12]10050 	mov	r7,#0x80
                                  10051 ;	calc.c:51: return;
      0063D7                      10052 00239$:
                                  10053 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0063D7 8D 82            [24]10054 	mov	dpl,r5
      0063D9 8E 83            [24]10055 	mov	dph,r6
      0063DB 8F F0            [24]10056 	mov	b,r7
      0063DD 12 6F D1         [24]10057 	lcall	__gptrget
      0063E0 FC               [12]10058 	mov	r4,a
      0063E1 60 10            [24]10059 	jz	00152$
      0063E3 7B 00            [12]10060 	mov	r3,#0x00
      0063E5 8C 82            [24]10061 	mov	dpl,r4
      0063E7 8B 83            [24]10062 	mov	dph,r3
      0063E9 12 2B D5         [24]10063 	lcall	_putchar
      0063EC 0D               [12]10064 	inc	r5
                                  10065 ;	calc.c:470: printstr("]\tarithmetic shift right top 2\r\n");
      0063ED BD 00 E7         [24]10066 	cjne	r5,#0x00,00239$
      0063F0 0E               [12]10067 	inc	r6
      0063F1 80 E4            [24]10068 	sjmp	00239$
      0063F3                      10069 00152$:
                                  10070 ;	calc.c:471: printstr("<\tshift left top 2\r\n");
      0063F3 7D D5            [12]10071 	mov	r5,#___str_49
      0063F5 7E 8B            [12]10072 	mov	r6,#(___str_49 >> 8)
      0063F7 7F 80            [12]10073 	mov	r7,#0x80
                                  10074 ;	calc.c:51: return;
      0063F9                      10075 00242$:
                                  10076 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0063F9 8D 82            [24]10077 	mov	dpl,r5
      0063FB 8E 83            [24]10078 	mov	dph,r6
      0063FD 8F F0            [24]10079 	mov	b,r7
      0063FF 12 6F D1         [24]10080 	lcall	__gptrget
      006402 FC               [12]10081 	mov	r4,a
      006403 60 10            [24]10082 	jz	00154$
      006405 7B 00            [12]10083 	mov	r3,#0x00
      006407 8C 82            [24]10084 	mov	dpl,r4
      006409 8B 83            [24]10085 	mov	dph,r3
      00640B 12 2B D5         [24]10086 	lcall	_putchar
      00640E 0D               [12]10087 	inc	r5
                                  10088 ;	calc.c:471: printstr("<\tshift left top 2\r\n");
      00640F BD 00 E7         [24]10089 	cjne	r5,#0x00,00242$
      006412 0E               [12]10090 	inc	r6
      006413 80 E4            [24]10091 	sjmp	00242$
      006415                      10092 00154$:
                                  10093 ;	calc.c:472: printstr("~\tbitwise not top\r\n");
      006415 7D EA            [12]10094 	mov	r5,#___str_50
      006417 7E 8B            [12]10095 	mov	r6,#(___str_50 >> 8)
      006419 7F 80            [12]10096 	mov	r7,#0x80
                                  10097 ;	calc.c:51: return;
      00641B                      10098 00245$:
                                  10099 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00641B 8D 82            [24]10100 	mov	dpl,r5
      00641D 8E 83            [24]10101 	mov	dph,r6
      00641F 8F F0            [24]10102 	mov	b,r7
      006421 12 6F D1         [24]10103 	lcall	__gptrget
      006424 FC               [12]10104 	mov	r4,a
      006425 60 10            [24]10105 	jz	00156$
      006427 7B 00            [12]10106 	mov	r3,#0x00
      006429 8C 82            [24]10107 	mov	dpl,r4
      00642B 8B 83            [24]10108 	mov	dph,r3
      00642D 12 2B D5         [24]10109 	lcall	_putchar
      006430 0D               [12]10110 	inc	r5
                                  10111 ;	calc.c:472: printstr("~\tbitwise not top\r\n");
      006431 BD 00 E7         [24]10112 	cjne	r5,#0x00,00245$
      006434 0E               [12]10113 	inc	r6
      006435 80 E4            [24]10114 	sjmp	00245$
      006437                      10115 00156$:
                                  10116 ;	calc.c:473: printstr("s\tstatus\r\n");
      006437 7D FE            [12]10117 	mov	r5,#___str_51
      006439 7E 8B            [12]10118 	mov	r6,#(___str_51 >> 8)
      00643B 7F 80            [12]10119 	mov	r7,#0x80
                                  10120 ;	calc.c:51: return;
      00643D                      10121 00248$:
                                  10122 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00643D 8D 82            [24]10123 	mov	dpl,r5
      00643F 8E 83            [24]10124 	mov	dph,r6
      006441 8F F0            [24]10125 	mov	b,r7
      006443 12 6F D1         [24]10126 	lcall	__gptrget
      006446 FC               [12]10127 	mov	r4,a
      006447 60 10            [24]10128 	jz	00158$
      006449 7B 00            [12]10129 	mov	r3,#0x00
      00644B 8C 82            [24]10130 	mov	dpl,r4
      00644D 8B 83            [24]10131 	mov	dph,r3
      00644F 12 2B D5         [24]10132 	lcall	_putchar
      006452 0D               [12]10133 	inc	r5
                                  10134 ;	calc.c:473: printstr("s\tstatus\r\n");
      006453 BD 00 E7         [24]10135 	cjne	r5,#0x00,00248$
      006456 0E               [12]10136 	inc	r6
      006457 80 E4            [24]10137 	sjmp	00248$
      006459                      10138 00158$:
                                  10139 ;	calc.c:474: printstr("?\thelp\r\n");
      006459 7D 09            [12]10140 	mov	r5,#___str_52
      00645B 7E 8C            [12]10141 	mov	r6,#(___str_52 >> 8)
      00645D 7F 80            [12]10142 	mov	r7,#0x80
                                  10143 ;	calc.c:51: return;
      00645F                      10144 00251$:
                                  10145 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00645F 8D 82            [24]10146 	mov	dpl,r5
      006461 8E 83            [24]10147 	mov	dph,r6
      006463 8F F0            [24]10148 	mov	b,r7
      006465 12 6F D1         [24]10149 	lcall	__gptrget
      006468 FC               [12]10150 	mov	r4,a
      006469 60 10            [24]10151 	jz	00160$
      00646B 7B 00            [12]10152 	mov	r3,#0x00
      00646D 8C 82            [24]10153 	mov	dpl,r4
      00646F 8B 83            [24]10154 	mov	dph,r3
      006471 12 2B D5         [24]10155 	lcall	_putchar
      006474 0D               [12]10156 	inc	r5
                                  10157 ;	calc.c:474: printstr("?\thelp\r\n");
      006475 BD 00 E7         [24]10158 	cjne	r5,#0x00,00251$
      006478 0E               [12]10159 	inc	r6
      006479 80 E4            [24]10160 	sjmp	00251$
      00647B                      10161 00160$:
                                  10162 ;	calc.c:475: printstr("q\tquit\r\n");
      00647B 7D 12            [12]10163 	mov	r5,#___str_53
      00647D 7E 8C            [12]10164 	mov	r6,#(___str_53 >> 8)
      00647F 7F 80            [12]10165 	mov	r7,#0x80
                                  10166 ;	calc.c:51: return;
      006481                      10167 00254$:
                                  10168 ;	calc.c:49: for (; *s; s++) putchar(*s);
      006481 8D 82            [24]10169 	mov	dpl,r5
      006483 8E 83            [24]10170 	mov	dph,r6
      006485 8F F0            [24]10171 	mov	b,r7
      006487 12 6F D1         [24]10172 	lcall	__gptrget
      00648A FC               [12]10173 	mov	r4,a
      00648B 60 10            [24]10174 	jz	00162$
      00648D 7B 00            [12]10175 	mov	r3,#0x00
      00648F 8C 82            [24]10176 	mov	dpl,r4
      006491 8B 83            [24]10177 	mov	dph,r3
      006493 12 2B D5         [24]10178 	lcall	_putchar
      006496 0D               [12]10179 	inc	r5
                                  10180 ;	calc.c:475: printstr("q\tquit\r\n");
      006497 BD 00 E7         [24]10181 	cjne	r5,#0x00,00254$
      00649A 0E               [12]10182 	inc	r6
      00649B 80 E4            [24]10183 	sjmp	00254$
      00649D                      10184 00162$:
                                  10185 ;	calc.c:477: return 1;
      00649D 90 00 01         [24]10186 	mov	dptr,#0x0001
                                  10187 ;	calc.c:478: }
      0064A0 D0 08            [24]10188 	pop	_bp
      0064A2 22               [24]10189 	ret
                                  10190 ;------------------------------------------------------------
                                  10191 ;Allocation info for local variables in function 'main'
                                  10192 ;------------------------------------------------------------
                                  10193 ;input                     Allocated to registers r6 r7 
                                  10194 ;__1966080211              Allocated to registers 
                                  10195 ;s                         Allocated to registers r2 r3 r4 
                                  10196 ;__1310720213              Allocated to registers 
                                  10197 ;s                         Allocated to registers r5 r6 r7 
                                  10198 ;sloc0                     Allocated to stack - _bp +1
                                  10199 ;------------------------------------------------------------
                                  10200 ;	calc.c:508: void main(void) {
                                  10201 ;	-----------------------------------------
                                  10202 ;	 function main
                                  10203 ;	-----------------------------------------
      0064A3                      10204 _main:
      0064A3 C0 08            [24]10205 	push	_bp
      0064A5 85 81 08         [24]10206 	mov	_bp,sp
      0064A8 05 81            [12]10207 	inc	sp
                                  10208 ;	calc.c:511: c.base = 10;
      0064AA 90 90 0C         [24]10209 	mov	dptr,#_c
      0064AD 74 0A            [12]10210 	mov	a,#0x0a
      0064AF F0               [24]10211 	movx	@dptr,a
      0064B0 E4               [12]10212 	clr	a
      0064B1 A3               [24]10213 	inc	dptr
      0064B2 F0               [24]10214 	movx	@dptr,a
                                  10215 ;	calc.c:512: c.acc = 0l;
      0064B3 90 90 0E         [24]10216 	mov	dptr,#(_c + 0x0002)
      0064B6 F0               [24]10217 	movx	@dptr,a
      0064B7 A3               [24]10218 	inc	dptr
      0064B8 F0               [24]10219 	movx	@dptr,a
      0064B9 A3               [24]10220 	inc	dptr
      0064BA F0               [24]10221 	movx	@dptr,a
      0064BB A3               [24]10222 	inc	dptr
      0064BC F0               [24]10223 	movx	@dptr,a
                                  10224 ;	calc.c:513: c.acc_valid = (char)0;
      0064BD 90 90 12         [24]10225 	mov	dptr,#(_c + 0x0006)
      0064C0 F0               [24]10226 	movx	@dptr,a
                                  10227 ;	calc.c:514: c.digit[0] = c.digit[1] = '\0';
      0064C1 90 90 14         [24]10228 	mov	dptr,#(_c + 0x0008)
      0064C4 F0               [24]10229 	movx	@dptr,a
      0064C5 90 90 13         [24]10230 	mov	dptr,#(_c + 0x0007)
      0064C8 F0               [24]10231 	movx	@dptr,a
                                  10232 ;	calc.c:516: c.ps = &c.s0;
      0064C9 90 D0 1F         [24]10233 	mov	dptr,#(_c + 0x4013)
      0064CC 74 15            [12]10234 	mov	a,#(_c + 0x0009)
      0064CE F0               [24]10235 	movx	@dptr,a
      0064CF 74 90            [12]10236 	mov	a,#((_c + 0x0009) >> 8)
      0064D1 A3               [24]10237 	inc	dptr
      0064D2 F0               [24]10238 	movx	@dptr,a
      0064D3 E4               [12]10239 	clr	a
      0064D4 A3               [24]10240 	inc	dptr
      0064D5 F0               [24]10241 	movx	@dptr,a
                                  10242 ;	calc.c:517: c.ss = &c.s1;
      0064D6 90 D0 22         [24]10243 	mov	dptr,#(_c + 0x4016)
      0064D9 74 1A            [12]10244 	mov	a,#(_c + 0x200e)
      0064DB F0               [24]10245 	movx	@dptr,a
      0064DC 74 B0            [12]10246 	mov	a,#((_c + 0x200e) >> 8)
      0064DE A3               [24]10247 	inc	dptr
      0064DF F0               [24]10248 	movx	@dptr,a
      0064E0 E4               [12]10249 	clr	a
      0064E1 A3               [24]10250 	inc	dptr
      0064E2 F0               [24]10251 	movx	@dptr,a
                                  10252 ;	calc.c:518: stack_init(c.ps);
      0064E3 90 90 15         [24]10253 	mov	dptr,#(_c + 0x0009)
      0064E6 75 F0 00         [24]10254 	mov	b,#0x00
      0064E9 12 26 80         [24]10255 	lcall	_stack_init
                                  10256 ;	calc.c:519: stack_init(c.ss);
      0064EC 90 D0 22         [24]10257 	mov	dptr,#(_c + 0x4016)
      0064EF E0               [24]10258 	movx	a,@dptr
      0064F0 FD               [12]10259 	mov	r5,a
      0064F1 A3               [24]10260 	inc	dptr
      0064F2 E0               [24]10261 	movx	a,@dptr
      0064F3 FE               [12]10262 	mov	r6,a
      0064F4 A3               [24]10263 	inc	dptr
      0064F5 E0               [24]10264 	movx	a,@dptr
      0064F6 FF               [12]10265 	mov	r7,a
      0064F7 8D 82            [24]10266 	mov	dpl,r5
      0064F9 8E 83            [24]10267 	mov	dph,r6
      0064FB 8F F0            [24]10268 	mov	b,r7
      0064FD 12 26 80         [24]10269 	lcall	_stack_init
                                  10270 ;	calc.c:521: state_init(&s, STATE_START, STATE_FINAL, UNDEF, deltas, &c);
      006500 74 0C            [12]10271 	mov	a,#_c
      006502 C0 E0            [24]10272 	push	acc
      006504 74 90            [12]10273 	mov	a,#(_c >> 8)
      006506 C0 E0            [24]10274 	push	acc
      006508 E4               [12]10275 	clr	a
      006509 C0 E0            [24]10276 	push	acc
      00650B 74 27            [12]10277 	mov	a,#_deltas
      00650D C0 E0            [24]10278 	push	acc
      00650F 74 D0            [12]10279 	mov	a,#(_deltas >> 8)
      006511 C0 E0            [24]10280 	push	acc
      006513 E4               [12]10281 	clr	a
      006514 C0 E0            [24]10282 	push	acc
      006516 C0 E0            [24]10283 	push	acc
      006518 74 80            [12]10284 	mov	a,#0x80
      00651A C0 E0            [24]10285 	push	acc
      00651C 74 03            [12]10286 	mov	a,#0x03
      00651E C0 E0            [24]10287 	push	acc
      006520 E4               [12]10288 	clr	a
      006521 C0 E0            [24]10289 	push	acc
      006523 C0 E0            [24]10290 	push	acc
      006525 C0 E0            [24]10291 	push	acc
      006527 90 90 00         [24]10292 	mov	dptr,#_s
      00652A 75 F0 00         [24]10293 	mov	b,#0x00
      00652D 12 20 90         [24]10294 	lcall	_state_init
      006530 E5 81            [12]10295 	mov	a,sp
      006532 24 F4            [12]10296 	add	a,#0xf4
      006534 F5 81            [12]10297 	mov	sp,a
                                  10298 ;	calc.c:523: (void)status(&c, deltas);
      006536 74 27            [12]10299 	mov	a,#_deltas
      006538 C0 E0            [24]10300 	push	acc
      00653A 74 D0            [12]10301 	mov	a,#(_deltas >> 8)
      00653C C0 E0            [24]10302 	push	acc
      00653E E4               [12]10303 	clr	a
      00653F C0 E0            [24]10304 	push	acc
      006541 90 90 0C         [24]10305 	mov	dptr,#_c
      006544 75 F0 00         [24]10306 	mov	b,#0x00
      006547 12 58 2F         [24]10307 	lcall	_status
      00654A 15 81            [12]10308 	dec	sp
      00654C 15 81            [12]10309 	dec	sp
      00654E 15 81            [12]10310 	dec	sp
                                  10311 ;	calc.c:525: while (1) {
      006550                      10312 00192$:
                                  10313 ;	calc.c:526: input = getchar();
      006550 12 2B DA         [24]10314 	lcall	_getchar
      006553 AE 82            [24]10315 	mov	r6,dpl
      006555 AF 83            [24]10316 	mov	r7,dph
                                  10317 ;	calc.c:527: if (((char)input == '\r') || ((char)input == '\n')) printstr("\r\n");
      006557 8E 05            [24]10318 	mov	ar5,r6
      006559 BD 0D 02         [24]10319 	cjne	r5,#0x0d,00400$
      00655C 80 03            [24]10320 	sjmp	00101$
      00655E                      10321 00400$:
      00655E BD 0A 36         [24]10322 	cjne	r5,#0x0a,00102$
      006561                      10323 00101$:
      006561 7A 82            [12]10324 	mov	r2,#___str_5
      006563 7B 88            [12]10325 	mov	r3,#(___str_5 >> 8)
      006565 7C 80            [12]10326 	mov	r4,#0x80
                                  10327 ;	calc.c:51: return;
      006567                      10328 00199$:
                                  10329 ;	calc.c:49: for (; *s; s++) putchar(*s);
      006567 8A 82            [24]10330 	mov	dpl,r2
      006569 8B 83            [24]10331 	mov	dph,r3
      00656B 8C F0            [24]10332 	mov	b,r4
      00656D A8 08            [24]10333 	mov	r0,_bp
      00656F 08               [12]10334 	inc	r0
      006570 12 6F D1         [24]10335 	lcall	__gptrget
      006573 F6               [12]10336 	mov	@r0,a
      006574 A8 08            [24]10337 	mov	r0,_bp
      006576 08               [12]10338 	inc	r0
      006577 E6               [12]10339 	mov	a,@r0
      006578 60 24            [24]10340 	jz	00103$
      00657A C0 06            [24]10341 	push	ar6
      00657C C0 07            [24]10342 	push	ar7
      00657E A8 08            [24]10343 	mov	r0,_bp
      006580 08               [12]10344 	inc	r0
      006581 86 06            [24]10345 	mov	ar6,@r0
      006583 7F 00            [12]10346 	mov	r7,#0x00
      006585 8E 82            [24]10347 	mov	dpl,r6
      006587 8F 83            [24]10348 	mov	dph,r7
      006589 12 2B D5         [24]10349 	lcall	_putchar
      00658C 0A               [12]10350 	inc	r2
      00658D BA 00 01         [24]10351 	cjne	r2,#0x00,00404$
      006590 0B               [12]10352 	inc	r3
      006591                      10353 00404$:
      006591 D0 07            [24]10354 	pop	ar7
      006593 D0 06            [24]10355 	pop	ar6
                                  10356 ;	calc.c:527: if (((char)input == '\r') || ((char)input == '\n')) printstr("\r\n");
      006595 80 D0            [24]10357 	sjmp	00199$
      006597                      10358 00102$:
                                  10359 ;	calc.c:528: else (void)putchar(input);
      006597 8E 82            [24]10360 	mov	dpl,r6
      006599 8F 83            [24]10361 	mov	dph,r7
      00659B 12 2B D5         [24]10362 	lcall	_putchar
      00659E                      10363 00103$:
                                  10364 ;	calc.c:529: c.digit[0] = (char)input;
      00659E 90 90 13         [24]10365 	mov	dptr,#(_c + 0x0007)
      0065A1 ED               [12]10366 	mov	a,r5
      0065A2 F0               [24]10367 	movx	@dptr,a
                                  10368 ;	calc.c:531: if ((char)input == 'q') {
      0065A3 BD 71 29         [24]10369 	cjne	r5,#0x71,00189$
                                  10370 ;	calc.c:532: if (state_exec(&s, EVENT_TERM) <= 0) break;
      0065A6 74 08            [12]10371 	mov	a,#0x08
      0065A8 C0 E0            [24]10372 	push	acc
      0065AA E4               [12]10373 	clr	a
      0065AB C0 E0            [24]10374 	push	acc
      0065AD 90 90 00         [24]10375 	mov	dptr,#_s
      0065B0 75 F0 00         [24]10376 	mov	b,#0x00
      0065B3 12 21 46         [24]10377 	lcall	_state_exec
      0065B6 AB 82            [24]10378 	mov	r3,dpl
      0065B8 AC 83            [24]10379 	mov	r4,dph
      0065BA 15 81            [12]10380 	dec	sp
      0065BC 15 81            [12]10381 	dec	sp
      0065BE C3               [12]10382 	clr	c
      0065BF E4               [12]10383 	clr	a
      0065C0 9B               [12]10384 	subb	a,r3
      0065C1 74 80            [12]10385 	mov	a,#(0x00 ^ 0x80)
      0065C3 8C F0            [24]10386 	mov	b,r4
      0065C5 63 F0 80         [24]10387 	xrl	b,#0x80
      0065C8 95 F0            [12]10388 	subb	a,b
      0065CA 40 84            [24]10389 	jc	00192$
      0065CC 02 68 7E         [24]10390 	ljmp	00193$
      0065CF                      10391 00189$:
                                  10392 ;	calc.c:533: } else if ((char)input == 's') {
      0065CF BD 73 2C         [24]10393 	cjne	r5,#0x73,00186$
                                  10394 ;	calc.c:534: if (state_exec(&s, EVENT_STATUS) <= 0) break;
      0065D2 74 03            [12]10395 	mov	a,#0x03
      0065D4 C0 E0            [24]10396 	push	acc
      0065D6 E4               [12]10397 	clr	a
      0065D7 C0 E0            [24]10398 	push	acc
      0065D9 90 90 00         [24]10399 	mov	dptr,#_s
      0065DC 75 F0 00         [24]10400 	mov	b,#0x00
      0065DF 12 21 46         [24]10401 	lcall	_state_exec
      0065E2 AB 82            [24]10402 	mov	r3,dpl
      0065E4 AC 83            [24]10403 	mov	r4,dph
      0065E6 15 81            [12]10404 	dec	sp
      0065E8 15 81            [12]10405 	dec	sp
      0065EA C3               [12]10406 	clr	c
      0065EB E4               [12]10407 	clr	a
      0065EC 9B               [12]10408 	subb	a,r3
      0065ED 74 80            [12]10409 	mov	a,#(0x00 ^ 0x80)
      0065EF 8C F0            [24]10410 	mov	b,r4
      0065F1 63 F0 80         [24]10411 	xrl	b,#0x80
      0065F4 95 F0            [12]10412 	subb	a,b
      0065F6 50 03            [24]10413 	jnc	00410$
      0065F8 02 65 50         [24]10414 	ljmp	00192$
      0065FB                      10415 00410$:
      0065FB 02 68 7E         [24]10416 	ljmp	00193$
      0065FE                      10417 00186$:
                                  10418 ;	calc.c:535: } else if ((char)input == '?') {
      0065FE BD 3F 2C         [24]10419 	cjne	r5,#0x3f,00183$
                                  10420 ;	calc.c:536: if (state_exec(&s, EVENT_HELP) <= 0) break;
      006601 74 04            [12]10421 	mov	a,#0x04
      006603 C0 E0            [24]10422 	push	acc
      006605 E4               [12]10423 	clr	a
      006606 C0 E0            [24]10424 	push	acc
      006608 90 90 00         [24]10425 	mov	dptr,#_s
      00660B 75 F0 00         [24]10426 	mov	b,#0x00
      00660E 12 21 46         [24]10427 	lcall	_state_exec
      006611 AB 82            [24]10428 	mov	r3,dpl
      006613 AC 83            [24]10429 	mov	r4,dph
      006615 15 81            [12]10430 	dec	sp
      006617 15 81            [12]10431 	dec	sp
      006619 C3               [12]10432 	clr	c
      00661A E4               [12]10433 	clr	a
      00661B 9B               [12]10434 	subb	a,r3
      00661C 74 80            [12]10435 	mov	a,#(0x00 ^ 0x80)
      00661E 8C F0            [24]10436 	mov	b,r4
      006620 63 F0 80         [24]10437 	xrl	b,#0x80
      006623 95 F0            [12]10438 	subb	a,b
      006625 50 03            [24]10439 	jnc	00413$
      006627 02 65 50         [24]10440 	ljmp	00192$
      00662A                      10441 00413$:
      00662A 02 68 7E         [24]10442 	ljmp	00193$
      00662D                      10443 00183$:
                                  10444 ;	calc.c:537: } else if ((char)input == 'i') {
      00662D BD 69 2C         [24]10445 	cjne	r5,#0x69,00180$
                                  10446 ;	calc.c:538: if (state_exec(&s, EVENT_RSTA_i) <= 0) break;
      006630 74 06            [12]10447 	mov	a,#0x06
      006632 C0 E0            [24]10448 	push	acc
      006634 E4               [12]10449 	clr	a
      006635 C0 E0            [24]10450 	push	acc
      006637 90 90 00         [24]10451 	mov	dptr,#_s
      00663A 75 F0 00         [24]10452 	mov	b,#0x00
      00663D 12 21 46         [24]10453 	lcall	_state_exec
      006640 AB 82            [24]10454 	mov	r3,dpl
      006642 AC 83            [24]10455 	mov	r4,dph
      006644 15 81            [12]10456 	dec	sp
      006646 15 81            [12]10457 	dec	sp
      006648 C3               [12]10458 	clr	c
      006649 E4               [12]10459 	clr	a
      00664A 9B               [12]10460 	subb	a,r3
      00664B 74 80            [12]10461 	mov	a,#(0x00 ^ 0x80)
      00664D 8C F0            [24]10462 	mov	b,r4
      00664F 63 F0 80         [24]10463 	xrl	b,#0x80
      006652 95 F0            [12]10464 	subb	a,b
      006654 50 03            [24]10465 	jnc	00416$
      006656 02 65 50         [24]10466 	ljmp	00192$
      006659                      10467 00416$:
      006659 02 68 7E         [24]10468 	ljmp	00193$
      00665C                      10469 00180$:
                                  10470 ;	calc.c:539: } else if ((char)input == 'I') {
      00665C BD 49 2C         [24]10471 	cjne	r5,#0x49,00177$
                                  10472 ;	calc.c:540: if (state_exec(&s, EVENT_RSTA_I) <= 0) break;
      00665F 74 07            [12]10473 	mov	a,#0x07
      006661 C0 E0            [24]10474 	push	acc
      006663 E4               [12]10475 	clr	a
      006664 C0 E0            [24]10476 	push	acc
      006666 90 90 00         [24]10477 	mov	dptr,#_s
      006669 75 F0 00         [24]10478 	mov	b,#0x00
      00666C 12 21 46         [24]10479 	lcall	_state_exec
      00666F AB 82            [24]10480 	mov	r3,dpl
      006671 AC 83            [24]10481 	mov	r4,dph
      006673 15 81            [12]10482 	dec	sp
      006675 15 81            [12]10483 	dec	sp
      006677 C3               [12]10484 	clr	c
      006678 E4               [12]10485 	clr	a
      006679 9B               [12]10486 	subb	a,r3
      00667A 74 80            [12]10487 	mov	a,#(0x00 ^ 0x80)
      00667C 8C F0            [24]10488 	mov	b,r4
      00667E 63 F0 80         [24]10489 	xrl	b,#0x80
      006681 95 F0            [12]10490 	subb	a,b
      006683 50 03            [24]10491 	jnc	00419$
      006685 02 65 50         [24]10492 	ljmp	00192$
      006688                      10493 00419$:
      006688 02 68 7E         [24]10494 	ljmp	00193$
      00668B                      10495 00177$:
                                  10496 ;	calc.c:542: ((char)input == 'h') || ((char)input == 'H') ||
      00668B BD 68 02         [24]10497 	cjne	r5,#0x68,00420$
      00668E 80 0D            [24]10498 	sjmp	00170$
      006690                      10499 00420$:
      006690 BD 48 02         [24]10500 	cjne	r5,#0x48,00421$
      006693 80 08            [24]10501 	sjmp	00170$
      006695                      10502 00421$:
                                  10503 ;	calc.c:543: ((char)input == 'o') || ((char)input == 'O')
      006695 BD 6F 02         [24]10504 	cjne	r5,#0x6f,00422$
      006698 80 03            [24]10505 	sjmp	00170$
      00669A                      10506 00422$:
      00669A BD 4F 2C         [24]10507 	cjne	r5,#0x4f,00171$
      00669D                      10508 00170$:
                                  10509 ;	calc.c:545: if (state_exec(&s, EVENT_BASE) <= 0) break;
      00669D 74 05            [12]10510 	mov	a,#0x05
      00669F C0 E0            [24]10511 	push	acc
      0066A1 E4               [12]10512 	clr	a
      0066A2 C0 E0            [24]10513 	push	acc
      0066A4 90 90 00         [24]10514 	mov	dptr,#_s
      0066A7 75 F0 00         [24]10515 	mov	b,#0x00
      0066AA 12 21 46         [24]10516 	lcall	_state_exec
      0066AD AB 82            [24]10517 	mov	r3,dpl
      0066AF AC 83            [24]10518 	mov	r4,dph
      0066B1 15 81            [12]10519 	dec	sp
      0066B3 15 81            [12]10520 	dec	sp
      0066B5 C3               [12]10521 	clr	c
      0066B6 E4               [12]10522 	clr	a
      0066B7 9B               [12]10523 	subb	a,r3
      0066B8 74 80            [12]10524 	mov	a,#(0x00 ^ 0x80)
      0066BA 8C F0            [24]10525 	mov	b,r4
      0066BC 63 F0 80         [24]10526 	xrl	b,#0x80
      0066BF 95 F0            [12]10527 	subb	a,b
      0066C1 50 03            [24]10528 	jnc	00425$
      0066C3 02 65 50         [24]10529 	ljmp	00192$
      0066C6                      10530 00425$:
      0066C6 02 68 7E         [24]10531 	ljmp	00193$
      0066C9                      10532 00171$:
                                  10533 ;	calc.c:546: } else if (isxdigit(input)) {
      0066C9 8E 82            [24]10534 	mov	dpl,r6
      0066CB 8F 83            [24]10535 	mov	dph,r7
      0066CD C0 05            [24]10536 	push	ar5
      0066CF 12 68 A8         [24]10537 	lcall	_isxdigit
      0066D2 E5 82            [12]10538 	mov	a,dpl
      0066D4 85 83 F0         [24]10539 	mov	b,dph
      0066D7 D0 05            [24]10540 	pop	ar5
      0066D9 45 F0            [12]10541 	orl	a,b
      0066DB 60 2C            [24]10542 	jz	00168$
                                  10543 ;	calc.c:547: if (state_exec(&s, EVENT_DIGIT) <= 0) break;
      0066DD 74 01            [12]10544 	mov	a,#0x01
      0066DF C0 E0            [24]10545 	push	acc
      0066E1 E4               [12]10546 	clr	a
      0066E2 C0 E0            [24]10547 	push	acc
      0066E4 90 90 00         [24]10548 	mov	dptr,#_s
      0066E7 75 F0 00         [24]10549 	mov	b,#0x00
      0066EA 12 21 46         [24]10550 	lcall	_state_exec
      0066ED AE 82            [24]10551 	mov	r6,dpl
      0066EF AF 83            [24]10552 	mov	r7,dph
      0066F1 15 81            [12]10553 	dec	sp
      0066F3 15 81            [12]10554 	dec	sp
      0066F5 C3               [12]10555 	clr	c
      0066F6 E4               [12]10556 	clr	a
      0066F7 9E               [12]10557 	subb	a,r6
      0066F8 74 80            [12]10558 	mov	a,#(0x00 ^ 0x80)
      0066FA 8F F0            [24]10559 	mov	b,r7
      0066FC 63 F0 80         [24]10560 	xrl	b,#0x80
      0066FF 95 F0            [12]10561 	subb	a,b
      006701 50 03            [24]10562 	jnc	00427$
      006703 02 65 50         [24]10563 	ljmp	00192$
      006706                      10564 00427$:
      006706 02 68 7E         [24]10565 	ljmp	00193$
      006709                      10566 00168$:
                                  10567 ;	calc.c:549: ((char)input == 'p') || ((char)input == 'P') ||
      006709 BD 70 02         [24]10568 	cjne	r5,#0x70,00428$
      00670C 80 17            [24]10569 	sjmp	00159$
      00670E                      10570 00428$:
      00670E BD 50 02         [24]10571 	cjne	r5,#0x50,00429$
      006711 80 12            [24]10572 	sjmp	00159$
      006713                      10573 00429$:
                                  10574 ;	calc.c:550: ((char)input == 'v') || ((char)input == 'V') ||
      006713 BD 76 02         [24]10575 	cjne	r5,#0x76,00430$
      006716 80 0D            [24]10576 	sjmp	00159$
      006718                      10577 00430$:
      006718 BD 56 02         [24]10578 	cjne	r5,#0x56,00431$
      00671B 80 08            [24]10579 	sjmp	00159$
      00671D                      10580 00431$:
                                  10581 ;	calc.c:551: ((char)input == '.') ||
      00671D BD 2E 02         [24]10582 	cjne	r5,#0x2e,00432$
      006720 80 03            [24]10583 	sjmp	00159$
      006722                      10584 00432$:
                                  10585 ;	calc.c:552: ((char)input == 'x')
      006722 BD 78 2C         [24]10586 	cjne	r5,#0x78,00160$
      006725                      10587 00159$:
                                  10588 ;	calc.c:554: if (state_exec(&s, EVENT_OP) <= 0) break;
      006725 74 02            [12]10589 	mov	a,#0x02
      006727 C0 E0            [24]10590 	push	acc
      006729 E4               [12]10591 	clr	a
      00672A C0 E0            [24]10592 	push	acc
      00672C 90 90 00         [24]10593 	mov	dptr,#_s
      00672F 75 F0 00         [24]10594 	mov	b,#0x00
      006732 12 21 46         [24]10595 	lcall	_state_exec
      006735 AE 82            [24]10596 	mov	r6,dpl
      006737 AF 83            [24]10597 	mov	r7,dph
      006739 15 81            [12]10598 	dec	sp
      00673B 15 81            [12]10599 	dec	sp
      00673D C3               [12]10600 	clr	c
      00673E E4               [12]10601 	clr	a
      00673F 9E               [12]10602 	subb	a,r6
      006740 74 80            [12]10603 	mov	a,#(0x00 ^ 0x80)
      006742 8F F0            [24]10604 	mov	b,r7
      006744 63 F0 80         [24]10605 	xrl	b,#0x80
      006747 95 F0            [12]10606 	subb	a,b
      006749 50 03            [24]10607 	jnc	00435$
      00674B 02 65 50         [24]10608 	ljmp	00192$
      00674E                      10609 00435$:
      00674E 02 68 7E         [24]10610 	ljmp	00193$
      006751                      10611 00160$:
                                  10612 ;	calc.c:556: ((char)input == 'X') || ((char)input == 'T') ||
      006751 BD 58 02         [24]10613 	cjne	r5,#0x58,00436$
      006754 80 17            [24]10614 	sjmp	00151$
      006756                      10615 00436$:
      006756 BD 54 02         [24]10616 	cjne	r5,#0x54,00437$
      006759 80 12            [24]10617 	sjmp	00151$
      00675B                      10618 00437$:
                                  10619 ;	calc.c:557: ((char)input == 'm') || ((char)input == 'M') ||
      00675B BD 6D 02         [24]10620 	cjne	r5,#0x6d,00438$
      00675E 80 0D            [24]10621 	sjmp	00151$
      006760                      10622 00438$:
      006760 BD 4D 02         [24]10623 	cjne	r5,#0x4d,00439$
      006763 80 08            [24]10624 	sjmp	00151$
      006765                      10625 00439$:
                                  10626 ;	calc.c:558: ((char)input == 'u') || ((char)input == 'U')
      006765 BD 75 02         [24]10627 	cjne	r5,#0x75,00440$
      006768 80 03            [24]10628 	sjmp	00151$
      00676A                      10629 00440$:
      00676A BD 55 2C         [24]10630 	cjne	r5,#0x55,00152$
      00676D                      10631 00151$:
                                  10632 ;	calc.c:560: if (state_exec(&s, EVENT_OP) <= 0) break;
      00676D 74 02            [12]10633 	mov	a,#0x02
      00676F C0 E0            [24]10634 	push	acc
      006771 E4               [12]10635 	clr	a
      006772 C0 E0            [24]10636 	push	acc
      006774 90 90 00         [24]10637 	mov	dptr,#_s
      006777 75 F0 00         [24]10638 	mov	b,#0x00
      00677A 12 21 46         [24]10639 	lcall	_state_exec
      00677D AE 82            [24]10640 	mov	r6,dpl
      00677F AF 83            [24]10641 	mov	r7,dph
      006781 15 81            [12]10642 	dec	sp
      006783 15 81            [12]10643 	dec	sp
      006785 C3               [12]10644 	clr	c
      006786 E4               [12]10645 	clr	a
      006787 9E               [12]10646 	subb	a,r6
      006788 74 80            [12]10647 	mov	a,#(0x00 ^ 0x80)
      00678A 8F F0            [24]10648 	mov	b,r7
      00678C 63 F0 80         [24]10649 	xrl	b,#0x80
      00678F 95 F0            [12]10650 	subb	a,b
      006791 50 03            [24]10651 	jnc	00443$
      006793 02 65 50         [24]10652 	ljmp	00192$
      006796                      10653 00443$:
      006796 02 68 7E         [24]10654 	ljmp	00193$
      006799                      10655 00152$:
                                  10656 ;	calc.c:562: ((char)input == '+') || ((char)input == '-')
      006799 BD 2B 02         [24]10657 	cjne	r5,#0x2b,00444$
      00679C 80 03            [24]10658 	sjmp	00147$
      00679E                      10659 00444$:
      00679E BD 2D 2C         [24]10660 	cjne	r5,#0x2d,00148$
      0067A1                      10661 00147$:
                                  10662 ;	calc.c:564: if (state_exec(&s, EVENT_OP) <= 0) break;
      0067A1 74 02            [12]10663 	mov	a,#0x02
      0067A3 C0 E0            [24]10664 	push	acc
      0067A5 E4               [12]10665 	clr	a
      0067A6 C0 E0            [24]10666 	push	acc
      0067A8 90 90 00         [24]10667 	mov	dptr,#_s
      0067AB 75 F0 00         [24]10668 	mov	b,#0x00
      0067AE 12 21 46         [24]10669 	lcall	_state_exec
      0067B1 AE 82            [24]10670 	mov	r6,dpl
      0067B3 AF 83            [24]10671 	mov	r7,dph
      0067B5 15 81            [12]10672 	dec	sp
      0067B7 15 81            [12]10673 	dec	sp
      0067B9 C3               [12]10674 	clr	c
      0067BA E4               [12]10675 	clr	a
      0067BB 9E               [12]10676 	subb	a,r6
      0067BC 74 80            [12]10677 	mov	a,#(0x00 ^ 0x80)
      0067BE 8F F0            [24]10678 	mov	b,r7
      0067C0 63 F0 80         [24]10679 	xrl	b,#0x80
      0067C3 95 F0            [12]10680 	subb	a,b
      0067C5 50 03            [24]10681 	jnc	00447$
      0067C7 02 65 50         [24]10682 	ljmp	00192$
      0067CA                      10683 00447$:
      0067CA 02 68 7E         [24]10684 	ljmp	00193$
      0067CD                      10685 00148$:
                                  10686 ;	calc.c:566: ((char)input == '*') ||
      0067CD BD 2A 02         [24]10687 	cjne	r5,#0x2a,00448$
      0067D0 80 12            [24]10688 	sjmp	00140$
      0067D2                      10689 00448$:
                                  10690 ;	calc.c:567: ((char)input == '/') || ((char)input == '\\') ||
      0067D2 BD 2F 02         [24]10691 	cjne	r5,#0x2f,00449$
      0067D5 80 0D            [24]10692 	sjmp	00140$
      0067D7                      10693 00449$:
      0067D7 BD 5C 02         [24]10694 	cjne	r5,#0x5c,00450$
      0067DA 80 08            [24]10695 	sjmp	00140$
      0067DC                      10696 00450$:
                                  10697 ;	calc.c:568: ((char)input == '%') || ((char)input == '#')
      0067DC BD 25 02         [24]10698 	cjne	r5,#0x25,00451$
      0067DF 80 03            [24]10699 	sjmp	00140$
      0067E1                      10700 00451$:
      0067E1 BD 23 29         [24]10701 	cjne	r5,#0x23,00141$
      0067E4                      10702 00140$:
                                  10703 ;	calc.c:570: if (state_exec(&s, EVENT_OP) <= 0) break;
      0067E4 74 02            [12]10704 	mov	a,#0x02
      0067E6 C0 E0            [24]10705 	push	acc
      0067E8 E4               [12]10706 	clr	a
      0067E9 C0 E0            [24]10707 	push	acc
      0067EB 90 90 00         [24]10708 	mov	dptr,#_s
      0067EE 75 F0 00         [24]10709 	mov	b,#0x00
      0067F1 12 21 46         [24]10710 	lcall	_state_exec
      0067F4 AE 82            [24]10711 	mov	r6,dpl
      0067F6 AF 83            [24]10712 	mov	r7,dph
      0067F8 15 81            [12]10713 	dec	sp
      0067FA 15 81            [12]10714 	dec	sp
      0067FC C3               [12]10715 	clr	c
      0067FD E4               [12]10716 	clr	a
      0067FE 9E               [12]10717 	subb	a,r6
      0067FF 74 80            [12]10718 	mov	a,#(0x00 ^ 0x80)
      006801 8F F0            [24]10719 	mov	b,r7
      006803 63 F0 80         [24]10720 	xrl	b,#0x80
      006806 95 F0            [12]10721 	subb	a,b
      006808 50 74            [24]10722 	jnc	00193$
      00680A 02 65 50         [24]10723 	ljmp	00192$
      00680D                      10724 00141$:
                                  10725 ;	calc.c:572: ((char)input == '&') ||
      00680D BD 26 02         [24]10726 	cjne	r5,#0x26,00455$
      006810 80 1C            [24]10727 	sjmp	00131$
      006812                      10728 00455$:
                                  10729 ;	calc.c:573: ((char)input == '|') || ((char)input == '^') ||
      006812 BD 7C 02         [24]10730 	cjne	r5,#0x7c,00456$
      006815 80 17            [24]10731 	sjmp	00131$
      006817                      10732 00456$:
      006817 BD 5E 02         [24]10733 	cjne	r5,#0x5e,00457$
      00681A 80 12            [24]10734 	sjmp	00131$
      00681C                      10735 00457$:
                                  10736 ;	calc.c:574: ((char)input == '~') ||
      00681C BD 7E 02         [24]10737 	cjne	r5,#0x7e,00458$
      00681F 80 0D            [24]10738 	sjmp	00131$
      006821                      10739 00458$:
                                  10740 ;	calc.c:575: ((char)input == '>') || ((char)input == ']') ||
      006821 BD 3E 02         [24]10741 	cjne	r5,#0x3e,00459$
      006824 80 08            [24]10742 	sjmp	00131$
      006826                      10743 00459$:
      006826 BD 5D 02         [24]10744 	cjne	r5,#0x5d,00460$
      006829 80 03            [24]10745 	sjmp	00131$
      00682B                      10746 00460$:
                                  10747 ;	calc.c:576: ((char)input == '<')
      00682B BD 3C 29         [24]10748 	cjne	r5,#0x3c,00132$
      00682E                      10749 00131$:
                                  10750 ;	calc.c:578: if (state_exec(&s, EVENT_OP) <= 0) break;
      00682E 74 02            [12]10751 	mov	a,#0x02
      006830 C0 E0            [24]10752 	push	acc
      006832 E4               [12]10753 	clr	a
      006833 C0 E0            [24]10754 	push	acc
      006835 90 90 00         [24]10755 	mov	dptr,#_s
      006838 75 F0 00         [24]10756 	mov	b,#0x00
      00683B 12 21 46         [24]10757 	lcall	_state_exec
      00683E AE 82            [24]10758 	mov	r6,dpl
      006840 AF 83            [24]10759 	mov	r7,dph
      006842 15 81            [12]10760 	dec	sp
      006844 15 81            [12]10761 	dec	sp
      006846 C3               [12]10762 	clr	c
      006847 E4               [12]10763 	clr	a
      006848 9E               [12]10764 	subb	a,r6
      006849 74 80            [12]10765 	mov	a,#(0x00 ^ 0x80)
      00684B 8F F0            [24]10766 	mov	b,r7
      00684D 63 F0 80         [24]10767 	xrl	b,#0x80
      006850 95 F0            [12]10768 	subb	a,b
      006852 50 2A            [24]10769 	jnc	00193$
      006854 02 65 50         [24]10770 	ljmp	00192$
      006857                      10771 00132$:
                                  10772 ;	calc.c:580: if (state_exec(&s, EVENT_DELIM) <= 0) break;
      006857 E4               [12]10773 	clr	a
      006858 C0 E0            [24]10774 	push	acc
      00685A C0 E0            [24]10775 	push	acc
      00685C 90 90 00         [24]10776 	mov	dptr,#_s
      00685F 75 F0 00         [24]10777 	mov	b,#0x00
      006862 12 21 46         [24]10778 	lcall	_state_exec
      006865 AE 82            [24]10779 	mov	r6,dpl
      006867 AF 83            [24]10780 	mov	r7,dph
      006869 15 81            [12]10781 	dec	sp
      00686B 15 81            [12]10782 	dec	sp
      00686D C3               [12]10783 	clr	c
      00686E E4               [12]10784 	clr	a
      00686F 9E               [12]10785 	subb	a,r6
      006870 74 80            [12]10786 	mov	a,#(0x00 ^ 0x80)
      006872 8F F0            [24]10787 	mov	b,r7
      006874 63 F0 80         [24]10788 	xrl	b,#0x80
      006877 95 F0            [12]10789 	subb	a,b
      006879 50 03            [24]10790 	jnc	00464$
      00687B 02 65 50         [24]10791 	ljmp	00192$
      00687E                      10792 00464$:
      00687E                      10793 00193$:
                                  10794 ;	calc.c:584: printstr("TERM\r\n");
      00687E 7D 1B            [12]10795 	mov	r5,#___str_54
      006880 7E 8C            [12]10796 	mov	r6,#(___str_54 >> 8)
      006882 7F 80            [12]10797 	mov	r7,#0x80
                                  10798 ;	calc.c:51: return;
      006884                      10799 00202$:
                                  10800 ;	calc.c:49: for (; *s; s++) putchar(*s);
      006884 8D 82            [24]10801 	mov	dpl,r5
      006886 8E 83            [24]10802 	mov	dph,r6
      006888 8F F0            [24]10803 	mov	b,r7
      00688A 12 6F D1         [24]10804 	lcall	__gptrget
      00688D FC               [12]10805 	mov	r4,a
      00688E 60 10            [24]10806 	jz	00197$
      006890 7B 00            [12]10807 	mov	r3,#0x00
      006892 8C 82            [24]10808 	mov	dpl,r4
      006894 8B 83            [24]10809 	mov	dph,r3
      006896 12 2B D5         [24]10810 	lcall	_putchar
      006899 0D               [12]10811 	inc	r5
                                  10812 ;	calc.c:584: printstr("TERM\r\n");
      00689A BD 00 E7         [24]10813 	cjne	r5,#0x00,00202$
      00689D 0E               [12]10814 	inc	r6
      00689E 80 E4            [24]10815 	sjmp	00202$
      0068A0                      10816 00197$:
                                  10817 ;	calc.c:586: PCON |= 2;
      0068A0 43 87 02         [24]10818 	orl	_PCON,#0x02
                                  10819 ;	calc.c:588: return;
                                  10820 ;	calc.c:589: }
      0068A3 15 81            [12]10821 	dec	sp
      0068A5 D0 08            [24]10822 	pop	_bp
      0068A7 22               [24]10823 	ret
                                  10824 	.area CSEG    (CODE)
                                  10825 	.area CONST   (CODE)
                                  10826 	.area CONST   (CODE)
      008852                      10827 ___str_0:
      008852 0D                   10828 	.db 0x0d
      008853 0A                   10829 	.db 0x0a
      008854 50 53                10830 	.ascii "PS"
      008856 0D                   10831 	.db 0x0d
      008857 0A                   10832 	.db 0x0a
      008858 00                   10833 	.db 0x00
                                  10834 	.area CSEG    (CODE)
                                  10835 	.area CONST   (CODE)
      008859                      10836 ___str_1:
      008859 73 74 61 63 6B 20 75 10837 	.ascii "stack underflow"
             6E 64 65 72 66 6C 6F
             77
      008868 0D                   10838 	.db 0x0d
      008869 0A                   10839 	.db 0x0a
      00886A 00                   10840 	.db 0x00
                                  10841 	.area CSEG    (CODE)
                                  10842 	.area CONST   (CODE)
      00886B                      10843 ___str_2:
      00886B 56 41 20             10844 	.ascii "VA "
      00886E 00                   10845 	.db 0x00
                                  10846 	.area CSEG    (CODE)
                                  10847 	.area CONST   (CODE)
      00886F                      10848 ___str_3:
      00886F 25 20 31 31 6C 64 20 10849 	.ascii "% 11ld / "
             2F 20
      008878 00                   10850 	.db 0x00
                                  10851 	.area CSEG    (CODE)
                                  10852 	.area CONST   (CODE)
      008879                      10853 ___str_4:
      008879 25 30 38 6C 78 20 2F 10854 	.ascii "%08lx / "
             20
      008881 00                   10855 	.db 0x00
                                  10856 	.area CSEG    (CODE)
                                  10857 	.area CONST   (CODE)
      008882                      10858 ___str_5:
      008882 0D                   10859 	.db 0x0d
      008883 0A                   10860 	.db 0x0a
      008884 00                   10861 	.db 0x00
                                  10862 	.area CSEG    (CODE)
                                  10863 	.area CONST   (CODE)
      008885                      10864 ___str_6:
      008885 53 53                10865 	.ascii "SS"
      008887 0D                   10866 	.db 0x0d
      008888 0A                   10867 	.db 0x0a
      008889 00                   10868 	.db 0x00
                                  10869 	.area CSEG    (CODE)
                                  10870 	.area CONST   (CODE)
      00888A                      10871 ___str_7:
      00888A 50 41 20             10872 	.ascii "PA "
      00888D 00                   10873 	.db 0x00
                                  10874 	.area CSEG    (CODE)
                                  10875 	.area CONST   (CODE)
      00888E                      10876 ___str_8:
      00888E 50 54 20             10877 	.ascii "PT "
      008891 00                   10878 	.db 0x00
                                  10879 	.area CSEG    (CODE)
                                  10880 	.area CONST   (CODE)
      008892                      10881 ___str_9:
      008892 56 54 20             10882 	.ascii "VT "
      008895 00                   10883 	.db 0x00
                                  10884 	.area CSEG    (CODE)
                                  10885 	.area CONST   (CODE)
      008896                      10886 ___str_10:
      008896 0D                   10887 	.db 0x0d
      008897 0A                   10888 	.db 0x0a
      008898 73 74 61 63 6B 20 75 10889 	.ascii "stack underflow"
             6E 64 65 72 66 6C 6F
             77
      0088A7 0D                   10890 	.db 0x0d
      0088A8 0A                   10891 	.db 0x0a
      0088A9 00                   10892 	.db 0x00
                                  10893 	.area CSEG    (CODE)
                                  10894 	.area CONST   (CODE)
      0088AA                      10895 ___str_11:
      0088AA 0D                   10896 	.db 0x0d
      0088AB 0A                   10897 	.db 0x0a
      0088AC 73 65 63 6F 6E 64 61 10898 	.ascii "secondary stack overflow"
             72 79 20 73 74 61 63
             6B 20 6F 76 65 72 66
             6C 6F 77
      0088C4 0D                   10899 	.db 0x0d
      0088C5 0A                   10900 	.db 0x0a
      0088C6 00                   10901 	.db 0x00
                                  10902 	.area CSEG    (CODE)
                                  10903 	.area CONST   (CODE)
      0088C7                      10904 ___str_12:
      0088C7 0D                   10905 	.db 0x0d
      0088C8 0A                   10906 	.db 0x0a
      0088C9 73 65 63 6F 6E 64 61 10907 	.ascii "secondary stack underflow"
             72 79 20 73 74 61 63
             6B 20 75 6E 64 65 72
             66 6C 6F 77
      0088E2 0D                   10908 	.db 0x0d
      0088E3 0A                   10909 	.db 0x0a
      0088E4 00                   10910 	.db 0x00
                                  10911 	.area CSEG    (CODE)
                                  10912 	.area CONST   (CODE)
      0088E5                      10913 ___str_13:
      0088E5 0D                   10914 	.db 0x0d
      0088E6 0A                   10915 	.db 0x0a
      0088E7 73 74 61 63 6B 20 6F 10916 	.ascii "stack overflow"
             76 65 72 66 6C 6F 77
      0088F5 0D                   10917 	.db 0x0d
      0088F6 0A                   10918 	.db 0x0a
      0088F7 00                   10919 	.db 0x00
                                  10920 	.area CSEG    (CODE)
                                  10921 	.area CONST   (CODE)
      0088F8                      10922 ___str_14:
      0088F8 0D                   10923 	.db 0x0d
      0088F9 0A                   10924 	.db 0x0a
      0088FA 64 69 76 69 73 69 6F 10925 	.ascii "division by zero"
             6E 20 62 79 20 7A 65
             72 6F
      00890A 0D                   10926 	.db 0x0d
      00890B 0A                   10927 	.db 0x0a
      00890C 00                   10928 	.db 0x00
                                  10929 	.area CSEG    (CODE)
                                  10930 	.area CONST   (CODE)
      00890D                      10931 ___str_15:
      00890D 0D                   10932 	.db 0x0d
      00890E 0A                   10933 	.db 0x0a
      00890F 62 61 73 65 20 3D 20 10934 	.ascii "base = %d, "
             25 64 2C 20
      00891A 00                   10935 	.db 0x00
                                  10936 	.area CSEG    (CODE)
                                  10937 	.area CONST   (CODE)
      00891B                      10938 ___str_16:
      00891B 61 63 63 20 3D 20 25 10939 	.ascii "acc = %ld / "
             6C 64 20 2F 20
      008927 00                   10940 	.db 0x00
                                  10941 	.area CSEG    (CODE)
                                  10942 	.area CONST   (CODE)
      008928                      10943 ___str_17:
      008928 2C 20 61 63 63 5F 76 10944 	.ascii ", acc_valid = %d"
             61 6C 69 64 20 3D 20
             25 64
      008938 0D                   10945 	.db 0x0d
      008939 0A                   10946 	.db 0x0a
      00893A 00                   10947 	.db 0x00
                                  10948 	.area CSEG    (CODE)
                                  10949 	.area CONST   (CODE)
      00893B                      10950 ___str_18:
      00893B 70 72 69 6D 61 72 79 10951 	.ascii "primary = %p, secondary = %p"
             20 3D 20 25 70 2C 20
             73 65 63 6F 6E 64 61
             72 79 20 3D 20 25 70
      008957 0D                   10952 	.db 0x0d
      008958 0A                   10953 	.db 0x0a
      008959 00                   10954 	.db 0x00
                                  10955 	.area CSEG    (CODE)
                                  10956 	.area CONST   (CODE)
      00895A                      10957 ___str_19:
      00895A 50 53 54 4F 50 31 20 10958 	.ascii "PSTOP1 = "
             3D 20
      008963 00                   10959 	.db 0x00
                                  10960 	.area CSEG    (CODE)
                                  10961 	.area CONST   (CODE)
      008964                      10962 ___str_20:
      008964 0D                   10963 	.db 0x0d
      008965 0A                   10964 	.db 0x0a
      008966 50 53 54 4F 50 30 20 10965 	.ascii "PSTOP0 = "
             3D 20
      00896F 00                   10966 	.db 0x00
                                  10967 	.area CSEG    (CODE)
                                  10968 	.area CONST   (CODE)
      008970                      10969 ___str_21:
      008970 53 53 54 4F 50 31 20 10970 	.ascii "SSTOP1 = "
             3D 20
      008979 00                   10971 	.db 0x00
                                  10972 	.area CSEG    (CODE)
                                  10973 	.area CONST   (CODE)
      00897A                      10974 ___str_22:
      00897A 0D                   10975 	.db 0x0d
      00897B 0A                   10976 	.db 0x0a
      00897C 53 53 54 4F 50 30 20 10977 	.ascii "SSTOP0 = "
             3D 20
      008985 00                   10978 	.db 0x00
                                  10979 	.area CSEG    (CODE)
                                  10980 	.area CONST   (CODE)
      008986                      10981 ___str_23:
      008986 0D                   10982 	.db 0x0d
      008987 0A                   10983 	.db 0x0a
      008988 48 68 4F 6F          10984 	.ascii "HhOo"
      00898C 09                   10985 	.db 0x09
      00898D 62 61 73 65 20 31 36 10986 	.ascii "base 16 10 8 2"
             20 31 30 20 38 20 32
      00899B 0D                   10987 	.db 0x0d
      00899C 0A                   10988 	.db 0x0a
      00899D 00                   10989 	.db 0x00
                                  10990 	.area CSEG    (CODE)
                                  10991 	.area CONST   (CODE)
      00899E                      10992 ___str_24:
      00899E 70                   10993 	.ascii "p"
      00899F 09                   10994 	.db 0x09
      0089A0 70 65 65 6B 20 74 6F 10995 	.ascii "peek top"
             70
      0089A8 0D                   10996 	.db 0x0d
      0089A9 0A                   10997 	.db 0x0a
      0089AA 00                   10998 	.db 0x00
                                  10999 	.area CSEG    (CODE)
                                  11000 	.area CONST   (CODE)
      0089AB                      11001 ___str_25:
      0089AB 50                   11002 	.ascii "P"
      0089AC 09                   11003 	.db 0x09
      0089AD 70 72 69 6E 74 20 73 11004 	.ascii "print stack"
             74 61 63 6B
      0089B8 0D                   11005 	.db 0x0d
      0089B9 0A                   11006 	.db 0x0a
      0089BA 00                   11007 	.db 0x00
                                  11008 	.area CSEG    (CODE)
                                  11009 	.area CONST   (CODE)
      0089BB                      11010 ___str_26:
      0089BB 76 2E                11011 	.ascii "v."
      0089BD 09                   11012 	.db 0x09
      0089BE 70 6F 70 20 74 6F 70 11013 	.ascii "pop top"
      0089C5 0D                   11014 	.db 0x0d
      0089C6 0A                   11015 	.db 0x0a
      0089C7 00                   11016 	.db 0x00
                                  11017 	.area CSEG    (CODE)
                                  11018 	.area CONST   (CODE)
      0089C8                      11019 ___str_27:
      0089C8 56                   11020 	.ascii "V"
      0089C9 09                   11021 	.db 0x09
      0089CA 70 6F 70 20 61 6C 6C 11022 	.ascii "pop all"
      0089D1 0D                   11023 	.db 0x0d
      0089D2 0A                   11024 	.db 0x0a
      0089D3 00                   11025 	.db 0x00
                                  11026 	.area CSEG    (CODE)
                                  11027 	.area CONST   (CODE)
      0089D4                      11028 ___str_28:
      0089D4 69                   11029 	.ascii "i"
      0089D5 09                   11030 	.db 0x09
      0089D6 72 65 73 65 74 20 61 11031 	.ascii "reset acc"
             63 63
      0089DF 0D                   11032 	.db 0x0d
      0089E0 0A                   11033 	.db 0x0a
      0089E1 00                   11034 	.db 0x00
                                  11035 	.area CSEG    (CODE)
                                  11036 	.area CONST   (CODE)
      0089E2                      11037 ___str_29:
      0089E2 49                   11038 	.ascii "I"
      0089E3 09                   11039 	.db 0x09
      0089E4 72 65 73 65 74 20 61 11040 	.ascii "reset and discard acc"
             6E 64 20 64 69 73 63
             61 72 64 20 61 63 63
      0089F9 0D                   11041 	.db 0x0d
      0089FA 0A                   11042 	.db 0x0a
      0089FB 00                   11043 	.db 0x00
                                  11044 	.area CSEG    (CODE)
                                  11045 	.area CONST   (CODE)
      0089FC                      11046 ___str_30:
      0089FC 78                   11047 	.ascii "x"
      0089FD 09                   11048 	.db 0x09
      0089FE 65 78 63 68 61 6E 67 11049 	.ascii "exchange top 2"
             65 20 74 6F 70 20 32
      008A0C 0D                   11050 	.db 0x0d
      008A0D 0A                   11051 	.db 0x0a
      008A0E 00                   11052 	.db 0x00
                                  11053 	.area CSEG    (CODE)
                                  11054 	.area CONST   (CODE)
      008A0F                      11055 ___str_31:
      008A0F 58                   11056 	.ascii "X"
      008A10 09                   11057 	.db 0x09
      008A11 65 78 63 68 61 6E 67 11058 	.ascii "exchange stacks primary <-> secondary"
             65 20 73 74 61 63 6B
             73 20 70 72 69 6D 61
             72 79 20 3C 2D 3E 20
             73 65 63 6F 6E 64 61
             72 79
      008A36 0D                   11059 	.db 0x0d
      008A37 0A                   11060 	.db 0x0a
      008A38 00                   11061 	.db 0x00
                                  11062 	.area CSEG    (CODE)
                                  11063 	.area CONST   (CODE)
      008A39                      11064 ___str_32:
      008A39 54                   11065 	.ascii "T"
      008A3A 09                   11066 	.db 0x09
      008A3B 65 78 63 68 61 6E 67 11067 	.ascii "exchange tops primary <-> secondary"
             65 20 74 6F 70 73 20
             70 72 69 6D 61 72 79
             20 3C 2D 3E 20 73 65
             63 6F 6E 64 61 72 79
      008A5E 0D                   11068 	.db 0x0d
      008A5F 0A                   11069 	.db 0x0a
      008A60 00                   11070 	.db 0x00
                                  11071 	.area CSEG    (CODE)
                                  11072 	.area CONST   (CODE)
      008A61                      11073 ___str_33:
      008A61 55                   11074 	.ascii "U"
      008A62 09                   11075 	.db 0x09
      008A63 63 6F 70 79 20 74 6F 11076 	.ascii "copy top secondary -> primary"
             70 20 73 65 63 6F 6E
             64 61 72 79 20 2D 3E
             20 70 72 69 6D 61 72
             79
      008A80 0D                   11077 	.db 0x0d
      008A81 0A                   11078 	.db 0x0a
      008A82 00                   11079 	.db 0x00
                                  11080 	.area CSEG    (CODE)
                                  11081 	.area CONST   (CODE)
      008A83                      11082 ___str_34:
      008A83 75                   11083 	.ascii "u"
      008A84 09                   11084 	.db 0x09
      008A85 63 6F 70 79 20 74 6F 11085 	.ascii "copy top primary -> secondary"
             70 20 70 72 69 6D 61
             72 79 20 2D 3E 20 73
             65 63 6F 6E 64 61 72
             79
      008AA2 0D                   11086 	.db 0x0d
      008AA3 0A                   11087 	.db 0x0a
      008AA4 00                   11088 	.db 0x00
                                  11089 	.area CSEG    (CODE)
                                  11090 	.area CONST   (CODE)
      008AA5                      11091 ___str_35:
      008AA5 4D                   11092 	.ascii "M"
      008AA6 09                   11093 	.db 0x09
      008AA7 6D 6F 76 65 20 74 6F 11094 	.ascii "move top secondary -> primary"
             70 20 73 65 63 6F 6E
             64 61 72 79 20 2D 3E
             20 70 72 69 6D 61 72
             79
      008AC4 0D                   11095 	.db 0x0d
      008AC5 0A                   11096 	.db 0x0a
      008AC6 00                   11097 	.db 0x00
                                  11098 	.area CSEG    (CODE)
                                  11099 	.area CONST   (CODE)
      008AC7                      11100 ___str_36:
      008AC7 6D                   11101 	.ascii "m"
      008AC8 09                   11102 	.db 0x09
      008AC9 6D 6F 76 65 20 74 6F 11103 	.ascii "move top primary -> secondary"
             70 20 70 72 69 6D 61
             72 79 20 2D 3E 20 73
             65 63 6F 6E 64 61 72
             79
      008AE6 0D                   11104 	.db 0x0d
      008AE7 0A                   11105 	.db 0x0a
      008AE8 00                   11106 	.db 0x00
                                  11107 	.area CSEG    (CODE)
                                  11108 	.area CONST   (CODE)
      008AE9                      11109 ___str_37:
      008AE9 2B                   11110 	.ascii "+"
      008AEA 09                   11111 	.db 0x09
      008AEB 61 64 64 20 74 6F 70 11112 	.ascii "add top 2"
             20 32
      008AF4 0D                   11113 	.db 0x0d
      008AF5 0A                   11114 	.db 0x0a
      008AF6 00                   11115 	.db 0x00
                                  11116 	.area CSEG    (CODE)
                                  11117 	.area CONST   (CODE)
      008AF7                      11118 ___str_38:
      008AF7 2D                   11119 	.ascii "-"
      008AF8 09                   11120 	.db 0x09
      008AF9 73 75 62 74 72 61 63 11121 	.ascii "subtract top 2"
             74 20 74 6F 70 20 32
      008B07 0D                   11122 	.db 0x0d
      008B08 0A                   11123 	.db 0x0a
      008B09 00                   11124 	.db 0x00
                                  11125 	.area CSEG    (CODE)
                                  11126 	.area CONST   (CODE)
      008B0A                      11127 ___str_39:
      008B0A 2A                   11128 	.ascii "*"
      008B0B 09                   11129 	.db 0x09
      008B0C 6D 75 6C 74 69 70 6C 11130 	.ascii "multiply top 2"
             79 20 74 6F 70 20 32
      008B1A 0D                   11131 	.db 0x0d
      008B1B 0A                   11132 	.db 0x0a
      008B1C 00                   11133 	.db 0x00
                                  11134 	.area CSEG    (CODE)
                                  11135 	.area CONST   (CODE)
      008B1D                      11136 ___str_40:
      008B1D 2F                   11137 	.ascii "/"
      008B1E 09                   11138 	.db 0x09
      008B1F 64 69 76 69 64 65 20 11139 	.ascii "divide top 2"
             74 6F 70 20 32
      008B2B 0D                   11140 	.db 0x0d
      008B2C 0A                   11141 	.db 0x0a
      008B2D 00                   11142 	.db 0x00
                                  11143 	.area CSEG    (CODE)
                                  11144 	.area CONST   (CODE)
      008B2E                      11145 ___str_41:
      008B2E 5C                   11146 	.db 0x5c
      008B2F 09                   11147 	.db 0x09
      008B30 64 69 76 69 64 65 20 11148 	.ascii "divide top 2 unsigned"
             74 6F 70 20 32 20 75
             6E 73 69 67 6E 65 64
      008B45 0D                   11149 	.db 0x0d
      008B46 0A                   11150 	.db 0x0a
      008B47 00                   11151 	.db 0x00
                                  11152 	.area CSEG    (CODE)
                                  11153 	.area CONST   (CODE)
      008B48                      11154 ___str_42:
      008B48 25                   11155 	.ascii "%"
      008B49 09                   11156 	.db 0x09
      008B4A 6D 6F 64 75 6C 75 73 11157 	.ascii "modulus top 2"
             20 74 6F 70 20 32
      008B57 0D                   11158 	.db 0x0d
      008B58 0A                   11159 	.db 0x0a
      008B59 00                   11160 	.db 0x00
                                  11161 	.area CSEG    (CODE)
                                  11162 	.area CONST   (CODE)
      008B5A                      11163 ___str_43:
      008B5A 23                   11164 	.ascii "#"
      008B5B 09                   11165 	.db 0x09
      008B5C 6D 6F 64 75 6C 75 73 11166 	.ascii "modulus top 2 unsigned"
             20 74 6F 70 20 32 20
             75 6E 73 69 67 6E 65
             64
      008B72 0D                   11167 	.db 0x0d
      008B73 0A                   11168 	.db 0x0a
      008B74 00                   11169 	.db 0x00
                                  11170 	.area CSEG    (CODE)
                                  11171 	.area CONST   (CODE)
      008B75                      11172 ___str_44:
      008B75 26                   11173 	.ascii "&"
      008B76 09                   11174 	.db 0x09
      008B77 61 6E 64 20 74 6F 70 11175 	.ascii "and top 2"
             20 32
      008B80 0D                   11176 	.db 0x0d
      008B81 0A                   11177 	.db 0x0a
      008B82 00                   11178 	.db 0x00
                                  11179 	.area CSEG    (CODE)
                                  11180 	.area CONST   (CODE)
      008B83                      11181 ___str_45:
      008B83 7C                   11182 	.ascii "|"
      008B84 09                   11183 	.db 0x09
      008B85 6F 72 20 74 6F 70 20 11184 	.ascii "or top 2"
             32
      008B8D 0D                   11185 	.db 0x0d
      008B8E 0A                   11186 	.db 0x0a
      008B8F 00                   11187 	.db 0x00
                                  11188 	.area CSEG    (CODE)
                                  11189 	.area CONST   (CODE)
      008B90                      11190 ___str_46:
      008B90 5E                   11191 	.ascii "^"
      008B91 09                   11192 	.db 0x09
      008B92 78 6F 72 20 74 6F 70 11193 	.ascii "xor top 2"
             20 32
      008B9B 0D                   11194 	.db 0x0d
      008B9C 0A                   11195 	.db 0x0a
      008B9D 00                   11196 	.db 0x00
                                  11197 	.area CSEG    (CODE)
                                  11198 	.area CONST   (CODE)
      008B9E                      11199 ___str_47:
      008B9E 3E                   11200 	.ascii ">"
      008B9F 09                   11201 	.db 0x09
      008BA0 73 68 69 66 74 20 72 11202 	.ascii "shift right top 2"
             69 67 68 74 20 74 6F
             70 20 32
      008BB1 0D                   11203 	.db 0x0d
      008BB2 0A                   11204 	.db 0x0a
      008BB3 00                   11205 	.db 0x00
                                  11206 	.area CSEG    (CODE)
                                  11207 	.area CONST   (CODE)
      008BB4                      11208 ___str_48:
      008BB4 5D                   11209 	.ascii "]"
      008BB5 09                   11210 	.db 0x09
      008BB6 61 72 69 74 68 6D 65 11211 	.ascii "arithmetic shift right top 2"
             74 69 63 20 73 68 69
             66 74 20 72 69 67 68
             74 20 74 6F 70 20 32
      008BD2 0D                   11212 	.db 0x0d
      008BD3 0A                   11213 	.db 0x0a
      008BD4 00                   11214 	.db 0x00
                                  11215 	.area CSEG    (CODE)
                                  11216 	.area CONST   (CODE)
      008BD5                      11217 ___str_49:
      008BD5 3C                   11218 	.ascii "<"
      008BD6 09                   11219 	.db 0x09
      008BD7 73 68 69 66 74 20 6C 11220 	.ascii "shift left top 2"
             65 66 74 20 74 6F 70
             20 32
      008BE7 0D                   11221 	.db 0x0d
      008BE8 0A                   11222 	.db 0x0a
      008BE9 00                   11223 	.db 0x00
                                  11224 	.area CSEG    (CODE)
                                  11225 	.area CONST   (CODE)
      008BEA                      11226 ___str_50:
      008BEA 7E                   11227 	.ascii "~"
      008BEB 09                   11228 	.db 0x09
      008BEC 62 69 74 77 69 73 65 11229 	.ascii "bitwise not top"
             20 6E 6F 74 20 74 6F
             70
      008BFB 0D                   11230 	.db 0x0d
      008BFC 0A                   11231 	.db 0x0a
      008BFD 00                   11232 	.db 0x00
                                  11233 	.area CSEG    (CODE)
                                  11234 	.area CONST   (CODE)
      008BFE                      11235 ___str_51:
      008BFE 73                   11236 	.ascii "s"
      008BFF 09                   11237 	.db 0x09
      008C00 73 74 61 74 75 73    11238 	.ascii "status"
      008C06 0D                   11239 	.db 0x0d
      008C07 0A                   11240 	.db 0x0a
      008C08 00                   11241 	.db 0x00
                                  11242 	.area CSEG    (CODE)
                                  11243 	.area CONST   (CODE)
      008C09                      11244 ___str_52:
      008C09 3F                   11245 	.ascii "?"
      008C0A 09                   11246 	.db 0x09
      008C0B 68 65 6C 70          11247 	.ascii "help"
      008C0F 0D                   11248 	.db 0x0d
      008C10 0A                   11249 	.db 0x0a
      008C11 00                   11250 	.db 0x00
                                  11251 	.area CSEG    (CODE)
                                  11252 	.area CONST   (CODE)
      008C12                      11253 ___str_53:
      008C12 71                   11254 	.ascii "q"
      008C13 09                   11255 	.db 0x09
      008C14 71 75 69 74          11256 	.ascii "quit"
      008C18 0D                   11257 	.db 0x0d
      008C19 0A                   11258 	.db 0x0a
      008C1A 00                   11259 	.db 0x00
                                  11260 	.area CSEG    (CODE)
                                  11261 	.area CONST   (CODE)
      008C1B                      11262 ___str_54:
      008C1B 54 45 52 4D          11263 	.ascii "TERM"
      008C1F 0D                   11264 	.db 0x0d
      008C20 0A                   11265 	.db 0x0a
      008C21 00                   11266 	.db 0x00
                                  11267 	.area CSEG    (CODE)
                                  11268 	.area XINIT   (CODE)
      008C33                      11269 __xinit__deltas:
      008C33 00 00                11270 	.byte #0x00, #0x00	;  0
      008C35 00 00                11271 	.byte #0x00, #0x00	;  0
      008C37 00 00                11272 	.byte #0x00, #0x00	;  0
      008C39 00 00                11273 	.byte #0x00,#0x00
      008C3B 00 00                11274 	.byte #0x00,#0x00
      008C3D 00 00                11275 	.byte #0x00, #0x00	;  0
      008C3F 01 00                11276 	.byte #0x01, #0x00	;  1
      008C41 02 00                11277 	.byte #0x02, #0x00	;  2
      008C43 00 00                11278 	.byte #0x00,#0x00
      008C45 F7 2B                11279 	.byte _accumulate, (_accumulate >> 8)
      008C47 00 00                11280 	.byte #0x00, #0x00	;  0
      008C49 02 00                11281 	.byte #0x02, #0x00	;  2
      008C4B 01 00                11282 	.byte #0x01, #0x00	;  1
      008C4D 00 00                11283 	.byte #0x00,#0x00
      008C4F 96 33                11284 	.byte _operator, (_operator >> 8)
      008C51 01 00                11285 	.byte #0x01, #0x00	;  1
      008C53 00 00                11286 	.byte #0x00, #0x00	;  0
      008C55 00 00                11287 	.byte #0x00, #0x00	;  0
      008C57 00 00                11288 	.byte #0x00,#0x00
      008C59 00 00                11289 	.byte #0x00,#0x00
      008C5B 01 00                11290 	.byte #0x01, #0x00	;  1
      008C5D 02 00                11291 	.byte #0x02, #0x00	;  2
      008C5F 01 00                11292 	.byte #0x01, #0x00	;  1
      008C61 00 00                11293 	.byte #0x00,#0x00
      008C63 96 33                11294 	.byte _operator, (_operator >> 8)
      008C65 01 00                11295 	.byte #0x01, #0x00	;  1
      008C67 01 00                11296 	.byte #0x01, #0x00	;  1
      008C69 02 00                11297 	.byte #0x02, #0x00	;  2
      008C6B 00 00                11298 	.byte #0x00,#0x00
      008C6D F7 2B                11299 	.byte _accumulate, (_accumulate >> 8)
      008C6F 02 00                11300 	.byte #0x02, #0x00	;  2
      008C71 00 00                11301 	.byte #0x00, #0x00	;  0
      008C73 00 00                11302 	.byte #0x00, #0x00	;  0
      008C75 00 00                11303 	.byte #0x00,#0x00
      008C77 24 56                11304 	.byte _push_acc, (_push_acc >> 8)
      008C79 02 00                11305 	.byte #0x02, #0x00	;  2
      008C7B 07 00                11306 	.byte #0x07, #0x00	;  7
      008C7D 00 00                11307 	.byte #0x00, #0x00	;  0
      008C7F 00 00                11308 	.byte #0x00,#0x00
      008C81 47 57                11309 	.byte _reset_acc, (_reset_acc >> 8)
      008C83 02 00                11310 	.byte #0x02, #0x00	;  2
      008C85 01 00                11311 	.byte #0x01, #0x00	;  1
      008C87 02 00                11312 	.byte #0x02, #0x00	;  2
      008C89 00 00                11313 	.byte #0x00,#0x00
      008C8B F7 2B                11314 	.byte _accumulate, (_accumulate >> 8)
      008C8D 02 00                11315 	.byte #0x02, #0x00	;  2
      008C8F 02 00                11316 	.byte #0x02, #0x00	;  2
      008C91 01 00                11317 	.byte #0x01, #0x00	;  1
      008C93 00 00                11318 	.byte #0x00,#0x00
      008C95 24 56                11319 	.byte _push_acc, (_push_acc >> 8)
      008C97 FF 7F                11320 	.byte #0xff, #0x7f	;  32767
      008C99 06 00                11321 	.byte #0x06, #0x00	;  6
      008C9B FF 7F                11322 	.byte #0xff, #0x7f	;  32767
      008C9D 00 00                11323 	.byte #0x00,#0x00
      008C9F 47 57                11324 	.byte _reset_acc, (_reset_acc >> 8)
      008CA1 FF 7F                11325 	.byte #0xff, #0x7f	;  32767
      008CA3 07 00                11326 	.byte #0x07, #0x00	;  7
      008CA5 FF 7F                11327 	.byte #0xff, #0x7f	;  32767
      008CA7 00 00                11328 	.byte #0x00,#0x00
      008CA9 00 00                11329 	.byte #0x00,#0x00
      008CAB FF 7F                11330 	.byte #0xff, #0x7f	;  32767
      008CAD 05 00                11331 	.byte #0x05, #0x00	;  5
      008CAF FF 7F                11332 	.byte #0xff, #0x7f	;  32767
      008CB1 00 00                11333 	.byte #0x00,#0x00
      008CB3 B1 57                11334 	.byte _reset_base, (_reset_base >> 8)
      008CB5 FF 7F                11335 	.byte #0xff, #0x7f	;  32767
      008CB7 03 00                11336 	.byte #0x03, #0x00	;  3
      008CB9 FF 7F                11337 	.byte #0xff, #0x7f	;  32767
      008CBB 00 00                11338 	.byte #0x00,#0x00
      008CBD 2F 58                11339 	.byte _status, (_status >> 8)
      008CBF FF 7F                11340 	.byte #0xff, #0x7f	;  32767
      008CC1 04 00                11341 	.byte #0x04, #0x00	;  4
      008CC3 FF 7F                11342 	.byte #0xff, #0x7f	;  32767
      008CC5 00 00                11343 	.byte #0x00,#0x00
      008CC7 7A 60                11344 	.byte _help, (_help >> 8)
      008CC9 FF 7F                11345 	.byte #0xff, #0x7f	;  32767
      008CCB 08 00                11346 	.byte #0x08, #0x00	;  8
      008CCD 03 00                11347 	.byte #0x03, #0x00	;  3
      008CCF 00 00                11348 	.byte #0x00,#0x00
      008CD1 68 2D                11349 	.byte _dump_pop, (_dump_pop >> 8)
      008CD3 00 80                11350 	.byte #0x00, #0x80	; -32768
      008CD5 00 80                11351 	.byte #0x00, #0x80	; -32768
      008CD7 00 80                11352 	.byte #0x00, #0x80	; -32768
      008CD9 00 00                11353 	.byte #0x00,#0x00
      008CDB 00 00                11354 	.byte #0x00,#0x00
                                  11355 	.area CABS    (ABS,CODE)
