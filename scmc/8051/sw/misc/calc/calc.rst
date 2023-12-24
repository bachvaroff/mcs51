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
      002003 02 66 50         [24]  373 	ljmp	_main
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
      002C1F                        388 _putchar:
                                    389 ;	naked function: no prologue.
                                    390 ;	calc.c:21: __endasm;
      002C1F E5 82            [12]  391 	mov	a, dpl
      002C21 02 00 30         [24]  392 	ljmp	0x0030
                                    393 ;	calc.c:22: }
                                    394 ;	naked function: no epilogue.
                                    395 ;------------------------------------------------------------
                                    396 ;Allocation info for local variables in function 'getchar'
                                    397 ;------------------------------------------------------------
                                    398 ;	calc.c:24: int getchar(void) __naked {
                                    399 ;	-----------------------------------------
                                    400 ;	 function getchar
                                    401 ;	-----------------------------------------
      002C24                        402 _getchar:
                                    403 ;	naked function: no prologue.
                                    404 ;	calc.c:30: __endasm;
      002C24 12 00 32         [24]  405 	lcall	0x0032
      002C27 F5 82            [12]  406 	mov	dpl, a
      002C29 75 83 00         [24]  407 	mov	dph, #0
      002C2C 22               [24]  408 	ret
                                    409 ;	calc.c:31: }
                                    410 ;	naked function: no epilogue.
                                    411 ;------------------------------------------------------------
                                    412 ;Allocation info for local variables in function 'getchar_poll'
                                    413 ;------------------------------------------------------------
                                    414 ;	calc.c:33: int getchar_poll(void) __naked {
                                    415 ;	-----------------------------------------
                                    416 ;	 function getchar_poll
                                    417 ;	-----------------------------------------
      002C2D                        418 _getchar_poll:
                                    419 ;	naked function: no prologue.
                                    420 ;	calc.c:45: __endasm;
      002C2D 74 FF            [12]  421 	mov	a, #0xff
      002C2F F5 F0            [12]  422 	mov	b, a
      002C31 30 98 07         [24]  423 	jnb	ri, nochar
      002C34 C2 98            [12]  424 	clr	ri
      002C36 E5 99            [12]  425 	mov	a, sbuf
      002C38 75 F0 00         [24]  426 	mov	b, #0
      002C3B                        427 	nochar:
      002C3B F5 82            [12]  428 	mov	dpl, a
      002C3D 85 F0 83         [24]  429 	mov	dph, b
      002C40 22               [24]  430 	ret
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
                                    443 ;	calc.c:72: static int accumulate(void *_ctx, delta_t *delta) __reentrant {
                                    444 ;	-----------------------------------------
                                    445 ;	 function accumulate
                                    446 ;	-----------------------------------------
      002C41                        447 _accumulate:
                           000007   448 	ar7 = 0x07
                           000006   449 	ar6 = 0x06
                           000005   450 	ar5 = 0x05
                           000004   451 	ar4 = 0x04
                           000003   452 	ar3 = 0x03
                           000002   453 	ar2 = 0x02
                           000001   454 	ar1 = 0x01
                           000000   455 	ar0 = 0x00
      002C41 C0 08            [24]  456 	push	_bp
      002C43 E5 81            [12]  457 	mov	a,sp
      002C45 F5 08            [12]  458 	mov	_bp,a
      002C47 24 0E            [12]  459 	add	a,#0x0e
      002C49 F5 81            [12]  460 	mov	sp,a
      002C4B AD 82            [24]  461 	mov	r5,dpl
      002C4D AE 83            [24]  462 	mov	r6,dph
      002C4F AF F0            [24]  463 	mov	r7,b
                                    464 ;	calc.c:73: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
      002C51 E5 08            [12]  465 	mov	a,_bp
      002C53 24 08            [12]  466 	add	a,#0x08
      002C55 F8               [12]  467 	mov	r0,a
      002C56 A6 05            [24]  468 	mov	@r0,ar5
      002C58 08               [12]  469 	inc	r0
      002C59 A6 06            [24]  470 	mov	@r0,ar6
      002C5B 08               [12]  471 	inc	r0
      002C5C A6 07            [24]  472 	mov	@r0,ar7
                                    473 ;	calc.c:78: if (!ctx->acc_valid) {
      002C5E E5 08            [12]  474 	mov	a,_bp
      002C60 24 08            [12]  475 	add	a,#0x08
      002C62 F8               [12]  476 	mov	r0,a
      002C63 74 06            [12]  477 	mov	a,#0x06
      002C65 26               [12]  478 	add	a,@r0
      002C66 FA               [12]  479 	mov	r2,a
      002C67 E4               [12]  480 	clr	a
      002C68 08               [12]  481 	inc	r0
      002C69 36               [12]  482 	addc	a,@r0
      002C6A FB               [12]  483 	mov	r3,a
      002C6B 08               [12]  484 	inc	r0
      002C6C 86 04            [24]  485 	mov	ar4,@r0
      002C6E 8A 82            [24]  486 	mov	dpl,r2
      002C70 8B 83            [24]  487 	mov	dph,r3
      002C72 8C F0            [24]  488 	mov	b,r4
      002C74 12 71 7E         [24]  489 	lcall	__gptrget
      002C77 70 31            [24]  490 	jnz	00102$
                                    491 ;	calc.c:79: ctx->acc_valid = 1;
      002C79 8A 82            [24]  492 	mov	dpl,r2
      002C7B 8B 83            [24]  493 	mov	dph,r3
      002C7D 8C F0            [24]  494 	mov	b,r4
      002C7F 74 01            [12]  495 	mov	a,#0x01
      002C81 12 6D 03         [24]  496 	lcall	__gptrput
                                    497 ;	calc.c:80: ctx->acc = 0l;
      002C84 E5 08            [12]  498 	mov	a,_bp
      002C86 24 08            [12]  499 	add	a,#0x08
      002C88 F8               [12]  500 	mov	r0,a
      002C89 74 02            [12]  501 	mov	a,#0x02
      002C8B 26               [12]  502 	add	a,@r0
      002C8C FA               [12]  503 	mov	r2,a
      002C8D E4               [12]  504 	clr	a
      002C8E 08               [12]  505 	inc	r0
      002C8F 36               [12]  506 	addc	a,@r0
      002C90 FB               [12]  507 	mov	r3,a
      002C91 08               [12]  508 	inc	r0
      002C92 86 04            [24]  509 	mov	ar4,@r0
      002C94 8A 82            [24]  510 	mov	dpl,r2
      002C96 8B 83            [24]  511 	mov	dph,r3
      002C98 8C F0            [24]  512 	mov	b,r4
      002C9A E4               [12]  513 	clr	a
      002C9B 12 6D 03         [24]  514 	lcall	__gptrput
      002C9E A3               [24]  515 	inc	dptr
      002C9F 12 6D 03         [24]  516 	lcall	__gptrput
      002CA2 A3               [24]  517 	inc	dptr
      002CA3 12 6D 03         [24]  518 	lcall	__gptrput
      002CA6 A3               [24]  519 	inc	dptr
      002CA7 12 6D 03         [24]  520 	lcall	__gptrput
      002CAA                        521 00102$:
                                    522 ;	calc.c:83: d = strtol(ctx->digit, NULL, ctx->base);
      002CAA E5 08            [12]  523 	mov	a,_bp
      002CAC 24 08            [12]  524 	add	a,#0x08
      002CAE F8               [12]  525 	mov	r0,a
      002CAF 86 82            [24]  526 	mov	dpl,@r0
      002CB1 08               [12]  527 	inc	r0
      002CB2 86 83            [24]  528 	mov	dph,@r0
      002CB4 08               [12]  529 	inc	r0
      002CB5 86 F0            [24]  530 	mov	b,@r0
      002CB7 12 71 7E         [24]  531 	lcall	__gptrget
      002CBA FB               [12]  532 	mov	r3,a
      002CBB A3               [24]  533 	inc	dptr
      002CBC 12 71 7E         [24]  534 	lcall	__gptrget
      002CBF FC               [12]  535 	mov	r4,a
      002CC0 E5 08            [12]  536 	mov	a,_bp
      002CC2 24 08            [12]  537 	add	a,#0x08
      002CC4 F8               [12]  538 	mov	r0,a
      002CC5 74 07            [12]  539 	mov	a,#0x07
      002CC7 26               [12]  540 	add	a,@r0
      002CC8 FA               [12]  541 	mov	r2,a
      002CC9 E4               [12]  542 	clr	a
      002CCA 08               [12]  543 	inc	r0
      002CCB 36               [12]  544 	addc	a,@r0
      002CCC FE               [12]  545 	mov	r6,a
      002CCD 08               [12]  546 	inc	r0
      002CCE 86 07            [24]  547 	mov	ar7,@r0
      002CD0 C0 03            [24]  548 	push	ar3
      002CD2 C0 04            [24]  549 	push	ar4
      002CD4 E4               [12]  550 	clr	a
      002CD5 C0 E0            [24]  551 	push	acc
      002CD7 C0 E0            [24]  552 	push	acc
      002CD9 C0 E0            [24]  553 	push	acc
      002CDB 8A 82            [24]  554 	mov	dpl,r2
      002CDD 8E 83            [24]  555 	mov	dph,r6
      002CDF 8F F0            [24]  556 	mov	b,r7
      002CE1 12 6A C5         [24]  557 	lcall	_strtol
      002CE4 C8               [12]  558 	xch	a,r0
      002CE5 E5 08            [12]  559 	mov	a,_bp
      002CE7 24 0B            [12]  560 	add	a,#0x0b
      002CE9 C8               [12]  561 	xch	a,r0
      002CEA A6 82            [24]  562 	mov	@r0,dpl
      002CEC 08               [12]  563 	inc	r0
      002CED A6 83            [24]  564 	mov	@r0,dph
      002CEF 08               [12]  565 	inc	r0
      002CF0 A6 F0            [24]  566 	mov	@r0,b
      002CF2 08               [12]  567 	inc	r0
      002CF3 F6               [12]  568 	mov	@r0,a
      002CF4 E5 81            [12]  569 	mov	a,sp
      002CF6 24 FB            [12]  570 	add	a,#0xfb
      002CF8 F5 81            [12]  571 	mov	sp,a
                                    572 ;	calc.c:84: ctx->acc = ctx->acc * (long)ctx->base + d;
      002CFA E5 08            [12]  573 	mov	a,_bp
      002CFC 24 08            [12]  574 	add	a,#0x08
      002CFE F8               [12]  575 	mov	r0,a
      002CFF A9 08            [24]  576 	mov	r1,_bp
      002D01 09               [12]  577 	inc	r1
      002D02 74 02            [12]  578 	mov	a,#0x02
      002D04 26               [12]  579 	add	a,@r0
      002D05 F7               [12]  580 	mov	@r1,a
      002D06 E4               [12]  581 	clr	a
      002D07 08               [12]  582 	inc	r0
      002D08 36               [12]  583 	addc	a,@r0
      002D09 09               [12]  584 	inc	r1
      002D0A F7               [12]  585 	mov	@r1,a
      002D0B 08               [12]  586 	inc	r0
      002D0C 09               [12]  587 	inc	r1
      002D0D E6               [12]  588 	mov	a,@r0
      002D0E F7               [12]  589 	mov	@r1,a
      002D0F A8 08            [24]  590 	mov	r0,_bp
      002D11 08               [12]  591 	inc	r0
      002D12 86 82            [24]  592 	mov	dpl,@r0
      002D14 08               [12]  593 	inc	r0
      002D15 86 83            [24]  594 	mov	dph,@r0
      002D17 08               [12]  595 	inc	r0
      002D18 86 F0            [24]  596 	mov	b,@r0
      002D1A E5 08            [12]  597 	mov	a,_bp
      002D1C 24 04            [12]  598 	add	a,#0x04
      002D1E F9               [12]  599 	mov	r1,a
      002D1F 12 71 7E         [24]  600 	lcall	__gptrget
      002D22 F7               [12]  601 	mov	@r1,a
      002D23 A3               [24]  602 	inc	dptr
      002D24 12 71 7E         [24]  603 	lcall	__gptrget
      002D27 09               [12]  604 	inc	r1
      002D28 F7               [12]  605 	mov	@r1,a
      002D29 A3               [24]  606 	inc	dptr
      002D2A 12 71 7E         [24]  607 	lcall	__gptrget
      002D2D 09               [12]  608 	inc	r1
      002D2E F7               [12]  609 	mov	@r1,a
      002D2F A3               [24]  610 	inc	dptr
      002D30 12 71 7E         [24]  611 	lcall	__gptrget
      002D33 09               [12]  612 	inc	r1
      002D34 F7               [12]  613 	mov	@r1,a
      002D35 E5 08            [12]  614 	mov	a,_bp
      002D37 24 08            [12]  615 	add	a,#0x08
      002D39 F8               [12]  616 	mov	r0,a
      002D3A 86 82            [24]  617 	mov	dpl,@r0
      002D3C 08               [12]  618 	inc	r0
      002D3D 86 83            [24]  619 	mov	dph,@r0
      002D3F 08               [12]  620 	inc	r0
      002D40 86 F0            [24]  621 	mov	b,@r0
      002D42 12 71 7E         [24]  622 	lcall	__gptrget
      002D45 FA               [12]  623 	mov	r2,a
      002D46 A3               [24]  624 	inc	dptr
      002D47 12 71 7E         [24]  625 	lcall	__gptrget
      002D4A FB               [12]  626 	mov	r3,a
      002D4B 33               [12]  627 	rlc	a
      002D4C 95 E0            [12]  628 	subb	a,acc
      002D4E FE               [12]  629 	mov	r6,a
      002D4F FF               [12]  630 	mov	r7,a
      002D50 C0 02            [24]  631 	push	ar2
      002D52 C0 03            [24]  632 	push	ar3
      002D54 C0 06            [24]  633 	push	ar6
      002D56 C0 07            [24]  634 	push	ar7
      002D58 E5 08            [12]  635 	mov	a,_bp
      002D5A 24 04            [12]  636 	add	a,#0x04
      002D5C F8               [12]  637 	mov	r0,a
      002D5D 86 82            [24]  638 	mov	dpl,@r0
      002D5F 08               [12]  639 	inc	r0
      002D60 86 83            [24]  640 	mov	dph,@r0
      002D62 08               [12]  641 	inc	r0
      002D63 86 F0            [24]  642 	mov	b,@r0
      002D65 08               [12]  643 	inc	r0
      002D66 E6               [12]  644 	mov	a,@r0
      002D67 12 75 77         [24]  645 	lcall	__mullong
      002D6A AC 82            [24]  646 	mov	r4,dpl
      002D6C AD 83            [24]  647 	mov	r5,dph
      002D6E AE F0            [24]  648 	mov	r6,b
      002D70 FF               [12]  649 	mov	r7,a
      002D71 E5 81            [12]  650 	mov	a,sp
      002D73 24 FC            [12]  651 	add	a,#0xfc
      002D75 F5 81            [12]  652 	mov	sp,a
      002D77 E5 08            [12]  653 	mov	a,_bp
      002D79 24 0B            [12]  654 	add	a,#0x0b
      002D7B F8               [12]  655 	mov	r0,a
      002D7C E6               [12]  656 	mov	a,@r0
      002D7D 2C               [12]  657 	add	a,r4
      002D7E FC               [12]  658 	mov	r4,a
      002D7F 08               [12]  659 	inc	r0
      002D80 E6               [12]  660 	mov	a,@r0
      002D81 3D               [12]  661 	addc	a,r5
      002D82 FD               [12]  662 	mov	r5,a
      002D83 08               [12]  663 	inc	r0
      002D84 E6               [12]  664 	mov	a,@r0
      002D85 3E               [12]  665 	addc	a,r6
      002D86 FE               [12]  666 	mov	r6,a
      002D87 08               [12]  667 	inc	r0
      002D88 E6               [12]  668 	mov	a,@r0
      002D89 3F               [12]  669 	addc	a,r7
      002D8A FF               [12]  670 	mov	r7,a
      002D8B A8 08            [24]  671 	mov	r0,_bp
      002D8D 08               [12]  672 	inc	r0
      002D8E 86 82            [24]  673 	mov	dpl,@r0
      002D90 08               [12]  674 	inc	r0
      002D91 86 83            [24]  675 	mov	dph,@r0
      002D93 08               [12]  676 	inc	r0
      002D94 86 F0            [24]  677 	mov	b,@r0
      002D96 EC               [12]  678 	mov	a,r4
      002D97 12 6D 03         [24]  679 	lcall	__gptrput
      002D9A A3               [24]  680 	inc	dptr
      002D9B ED               [12]  681 	mov	a,r5
      002D9C 12 6D 03         [24]  682 	lcall	__gptrput
      002D9F A3               [24]  683 	inc	dptr
      002DA0 EE               [12]  684 	mov	a,r6
      002DA1 12 6D 03         [24]  685 	lcall	__gptrput
      002DA4 A3               [24]  686 	inc	dptr
      002DA5 EF               [12]  687 	mov	a,r7
      002DA6 12 6D 03         [24]  688 	lcall	__gptrput
                                    689 ;	calc.c:86: return 1;
      002DA9 90 00 01         [24]  690 	mov	dptr,#0x0001
                                    691 ;	calc.c:87: }
      002DAC 85 08 81         [24]  692 	mov	sp,_bp
      002DAF D0 08            [24]  693 	pop	_bp
      002DB1 22               [24]  694 	ret
                                    695 ;------------------------------------------------------------
                                    696 ;Allocation info for local variables in function 'dump_pop'
                                    697 ;------------------------------------------------------------
                                    698 ;delta                     Allocated to stack - _bp -5
                                    699 ;_ctx                      Allocated to registers r5 r6 r7 
                                    700 ;ctx                       Allocated to stack - _bp +11
                                    701 ;d                         Allocated to stack - _bp +14
                                    702 ;r                         Allocated to registers r5 r6 
                                    703 ;__1310720003              Allocated to registers 
                                    704 ;s                         Allocated to registers r5 r6 r7 
                                    705 ;__1966080005              Allocated to registers 
                                    706 ;s                         Allocated to registers r4 r5 r6 
                                    707 ;__1966080007              Allocated to registers 
                                    708 ;s                         Allocated to registers r3 r4 r5 
                                    709 ;__1966080009              Allocated to stack - _bp +18
                                    710 ;d                         Allocated to registers r3 r4 r5 r6 
                                    711 ;__1310720001              Allocated to registers 
                                    712 ;d                         Allocated to stack - _bp +22
                                    713 ;mask                      Allocated to stack - _bp +26
                                    714 ;__1966080011              Allocated to registers 
                                    715 ;s                         Allocated to registers r3 r4 r5 
                                    716 ;__1966080013              Allocated to registers 
                                    717 ;s                         Allocated to registers r4 r5 r6 
                                    718 ;__3276800015              Allocated to registers 
                                    719 ;s                         Allocated to registers r5 r3 r2 
                                    720 ;__3276800017              Allocated to stack - _bp +18
                                    721 ;d                         Allocated to registers r2 r3 r4 r7 
                                    722 ;__1310720001              Allocated to registers 
                                    723 ;d                         Allocated to stack - _bp +22
                                    724 ;mask                      Allocated to stack - _bp +26
                                    725 ;__3276800019              Allocated to registers 
                                    726 ;s                         Allocated to registers r5 r3 r2 
                                    727 ;sloc0                     Allocated to stack - _bp +1
                                    728 ;sloc1                     Allocated to stack - _bp +2
                                    729 ;sloc2                     Allocated to stack - _bp +5
                                    730 ;sloc3                     Allocated to stack - _bp +8
                                    731 ;------------------------------------------------------------
                                    732 ;	calc.c:89: static int dump_pop(void *_ctx, delta_t *delta) __reentrant {
                                    733 ;	-----------------------------------------
                                    734 ;	 function dump_pop
                                    735 ;	-----------------------------------------
      002DB2                        736 _dump_pop:
      002DB2 C0 08            [24]  737 	push	_bp
      002DB4 E5 81            [12]  738 	mov	a,sp
      002DB6 F5 08            [12]  739 	mov	_bp,a
      002DB8 24 1D            [12]  740 	add	a,#0x1d
      002DBA F5 81            [12]  741 	mov	sp,a
      002DBC AD 82            [24]  742 	mov	r5,dpl
      002DBE AE 83            [24]  743 	mov	r6,dph
      002DC0 AF F0            [24]  744 	mov	r7,b
                                    745 ;	calc.c:90: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
      002DC2 E5 08            [12]  746 	mov	a,_bp
      002DC4 24 0B            [12]  747 	add	a,#0x0b
      002DC6 F8               [12]  748 	mov	r0,a
      002DC7 A6 05            [24]  749 	mov	@r0,ar5
      002DC9 08               [12]  750 	inc	r0
      002DCA A6 06            [24]  751 	mov	@r0,ar6
      002DCC 08               [12]  752 	inc	r0
      002DCD A6 07            [24]  753 	mov	@r0,ar7
                                    754 ;	calc.c:94: if (delta->event == EVENT_TERM) printstr("\r\n");
      002DCF E5 08            [12]  755 	mov	a,_bp
      002DD1 24 FB            [12]  756 	add	a,#0xfb
      002DD3 F8               [12]  757 	mov	r0,a
      002DD4 86 02            [24]  758 	mov	ar2,@r0
      002DD6 08               [12]  759 	inc	r0
      002DD7 86 03            [24]  760 	mov	ar3,@r0
      002DD9 08               [12]  761 	inc	r0
      002DDA 86 04            [24]  762 	mov	ar4,@r0
      002DDC E5 08            [12]  763 	mov	a,_bp
      002DDE 24 08            [12]  764 	add	a,#0x08
      002DE0 F8               [12]  765 	mov	r0,a
      002DE1 74 02            [12]  766 	mov	a,#0x02
      002DE3 2A               [12]  767 	add	a,r2
      002DE4 F6               [12]  768 	mov	@r0,a
      002DE5 E4               [12]  769 	clr	a
      002DE6 3B               [12]  770 	addc	a,r3
      002DE7 08               [12]  771 	inc	r0
      002DE8 F6               [12]  772 	mov	@r0,a
      002DE9 08               [12]  773 	inc	r0
      002DEA A6 04            [24]  774 	mov	@r0,ar4
      002DEC E5 08            [12]  775 	mov	a,_bp
      002DEE 24 08            [12]  776 	add	a,#0x08
      002DF0 F8               [12]  777 	mov	r0,a
      002DF1 86 82            [24]  778 	mov	dpl,@r0
      002DF3 08               [12]  779 	inc	r0
      002DF4 86 83            [24]  780 	mov	dph,@r0
      002DF6 08               [12]  781 	inc	r0
      002DF7 86 F0            [24]  782 	mov	b,@r0
      002DF9 12 71 7E         [24]  783 	lcall	__gptrget
      002DFC FE               [12]  784 	mov	r6,a
      002DFD A3               [24]  785 	inc	dptr
      002DFE 12 71 7E         [24]  786 	lcall	__gptrget
      002E01 FF               [12]  787 	mov	r7,a
      002E02 BE 08 27         [24]  788 	cjne	r6,#0x08,00102$
      002E05 BF 00 24         [24]  789 	cjne	r7,#0x00,00102$
      002E08 7D 16            [12]  790 	mov	r5,#___str_3
      002E0A 7E 8A            [12]  791 	mov	r6,#(___str_3 >> 8)
      002E0C 7F 80            [12]  792 	mov	r7,#0x80
                                    793 ;	calc.c:51: return;
      002E0E                        794 00135$:
                                    795 ;	calc.c:49: for (; *s; s++) putchar(*s);
      002E0E 8D 82            [24]  796 	mov	dpl,r5
      002E10 8E 83            [24]  797 	mov	dph,r6
      002E12 8F F0            [24]  798 	mov	b,r7
      002E14 12 71 7E         [24]  799 	lcall	__gptrget
      002E17 FC               [12]  800 	mov	r4,a
      002E18 60 12            [24]  801 	jz	00102$
      002E1A 8C 03            [24]  802 	mov	ar3,r4
      002E1C 7C 00            [12]  803 	mov	r4,#0x00
      002E1E 8B 82            [24]  804 	mov	dpl,r3
      002E20 8C 83            [24]  805 	mov	dph,r4
      002E22 12 2C 1F         [24]  806 	lcall	_putchar
      002E25 0D               [12]  807 	inc	r5
                                    808 ;	calc.c:94: if (delta->event == EVENT_TERM) printstr("\r\n");
      002E26 BD 00 E5         [24]  809 	cjne	r5,#0x00,00135$
      002E29 0E               [12]  810 	inc	r6
      002E2A 80 E2            [24]  811 	sjmp	00135$
      002E2C                        812 00102$:
                                    813 ;	calc.c:95: r = stack_pop(ctx->ps, &d);
      002E2C E5 08            [12]  814 	mov	a,_bp
      002E2E 24 0E            [12]  815 	add	a,#0x0e
      002E30 FF               [12]  816 	mov	r7,a
      002E31 E5 08            [12]  817 	mov	a,_bp
      002E33 24 05            [12]  818 	add	a,#0x05
      002E35 F8               [12]  819 	mov	r0,a
      002E36 A6 07            [24]  820 	mov	@r0,ar7
      002E38 08               [12]  821 	inc	r0
      002E39 76 00            [12]  822 	mov	@r0,#0x00
      002E3B 08               [12]  823 	inc	r0
      002E3C 76 40            [12]  824 	mov	@r0,#0x40
      002E3E E5 08            [12]  825 	mov	a,_bp
      002E40 24 0B            [12]  826 	add	a,#0x0b
      002E42 F8               [12]  827 	mov	r0,a
      002E43 A9 08            [24]  828 	mov	r1,_bp
      002E45 09               [12]  829 	inc	r1
      002E46 09               [12]  830 	inc	r1
      002E47 74 13            [12]  831 	mov	a,#0x13
      002E49 26               [12]  832 	add	a,@r0
      002E4A F7               [12]  833 	mov	@r1,a
      002E4B 74 40            [12]  834 	mov	a,#0x40
      002E4D 08               [12]  835 	inc	r0
      002E4E 36               [12]  836 	addc	a,@r0
      002E4F 09               [12]  837 	inc	r1
      002E50 F7               [12]  838 	mov	@r1,a
      002E51 08               [12]  839 	inc	r0
      002E52 09               [12]  840 	inc	r1
      002E53 E6               [12]  841 	mov	a,@r0
      002E54 F7               [12]  842 	mov	@r1,a
      002E55 A8 08            [24]  843 	mov	r0,_bp
      002E57 08               [12]  844 	inc	r0
      002E58 08               [12]  845 	inc	r0
      002E59 86 82            [24]  846 	mov	dpl,@r0
      002E5B 08               [12]  847 	inc	r0
      002E5C 86 83            [24]  848 	mov	dph,@r0
      002E5E 08               [12]  849 	inc	r0
      002E5F 86 F0            [24]  850 	mov	b,@r0
      002E61 12 71 7E         [24]  851 	lcall	__gptrget
      002E64 FA               [12]  852 	mov	r2,a
      002E65 A3               [24]  853 	inc	dptr
      002E66 12 71 7E         [24]  854 	lcall	__gptrget
      002E69 FB               [12]  855 	mov	r3,a
      002E6A A3               [24]  856 	inc	dptr
      002E6B 12 71 7E         [24]  857 	lcall	__gptrget
      002E6E FE               [12]  858 	mov	r6,a
      002E6F C0 07            [24]  859 	push	ar7
      002E71 E5 08            [12]  860 	mov	a,_bp
      002E73 24 05            [12]  861 	add	a,#0x05
      002E75 F8               [12]  862 	mov	r0,a
      002E76 E6               [12]  863 	mov	a,@r0
      002E77 C0 E0            [24]  864 	push	acc
      002E79 08               [12]  865 	inc	r0
      002E7A E6               [12]  866 	mov	a,@r0
      002E7B C0 E0            [24]  867 	push	acc
      002E7D 08               [12]  868 	inc	r0
      002E7E E6               [12]  869 	mov	a,@r0
      002E7F C0 E0            [24]  870 	push	acc
      002E81 8A 82            [24]  871 	mov	dpl,r2
      002E83 8B 83            [24]  872 	mov	dph,r3
      002E85 8E F0            [24]  873 	mov	b,r6
      002E87 12 27 B4         [24]  874 	lcall	_stack_pop
      002E8A AE 82            [24]  875 	mov	r6,dpl
      002E8C AD 83            [24]  876 	mov	r5,dph
      002E8E 15 81            [12]  877 	dec	sp
      002E90 15 81            [12]  878 	dec	sp
      002E92 15 81            [12]  879 	dec	sp
      002E94 D0 07            [24]  880 	pop	ar7
                                    881 ;	calc.c:96: if (!r) {
      002E96 EE               [12]  882 	mov	a,r6
      002E97 4D               [12]  883 	orl	a,r5
      002E98 70 44            [24]  884 	jnz	00183$
                                    885 ;	calc.c:97: if (delta->event != EVENT_TERM) printstr("stack underflow\r\n");
      002E9A E5 08            [12]  886 	mov	a,_bp
      002E9C 24 08            [12]  887 	add	a,#0x08
      002E9E F8               [12]  888 	mov	r0,a
      002E9F 86 82            [24]  889 	mov	dpl,@r0
      002EA1 08               [12]  890 	inc	r0
      002EA2 86 83            [24]  891 	mov	dph,@r0
      002EA4 08               [12]  892 	inc	r0
      002EA5 86 F0            [24]  893 	mov	b,@r0
      002EA7 12 71 7E         [24]  894 	lcall	__gptrget
      002EAA FD               [12]  895 	mov	r5,a
      002EAB A3               [24]  896 	inc	dptr
      002EAC 12 71 7E         [24]  897 	lcall	__gptrget
      002EAF FE               [12]  898 	mov	r6,a
      002EB0 BD 08 06         [24]  899 	cjne	r5,#0x08,00320$
      002EB3 BE 00 03         [24]  900 	cjne	r6,#0x00,00320$
      002EB6 02 30 BD         [24]  901 	ljmp	00110$
      002EB9                        902 00320$:
      002EB9 7C 19            [12]  903 	mov	r4,#___str_4
      002EBB 7D 8A            [12]  904 	mov	r5,#(___str_4 >> 8)
      002EBD 7E 80            [12]  905 	mov	r6,#0x80
                                    906 ;	calc.c:51: return;
      002EBF                        907 00138$:
                                    908 ;	calc.c:49: for (; *s; s++) putchar(*s);
      002EBF 8C 82            [24]  909 	mov	dpl,r4
      002EC1 8D 83            [24]  910 	mov	dph,r5
      002EC3 8E F0            [24]  911 	mov	b,r6
      002EC5 12 71 7E         [24]  912 	lcall	__gptrget
      002EC8 FB               [12]  913 	mov	r3,a
      002EC9 70 03            [24]  914 	jnz	00321$
      002ECB 02 30 BD         [24]  915 	ljmp	00110$
      002ECE                        916 00321$:
      002ECE 7A 00            [12]  917 	mov	r2,#0x00
      002ED0 8B 82            [24]  918 	mov	dpl,r3
      002ED2 8A 83            [24]  919 	mov	dph,r2
      002ED4 12 2C 1F         [24]  920 	lcall	_putchar
      002ED7 0C               [12]  921 	inc	r4
                                    922 ;	calc.c:98: } else while (r > 0) {
      002ED8 BC 00 E4         [24]  923 	cjne	r4,#0x00,00138$
      002EDB 0D               [12]  924 	inc	r5
      002EDC 80 E1            [24]  925 	sjmp	00138$
      002EDE                        926 00183$:
      002EDE A8 08            [24]  927 	mov	r0,_bp
      002EE0 08               [12]  928 	inc	r0
      002EE1 A6 07            [24]  929 	mov	@r0,ar7
      002EE3                        930 00105$:
      002EE3 C3               [12]  931 	clr	c
      002EE4 E4               [12]  932 	clr	a
      002EE5 9E               [12]  933 	subb	a,r6
      002EE6 74 80            [12]  934 	mov	a,#(0x00 ^ 0x80)
      002EE8 8D F0            [24]  935 	mov	b,r5
      002EEA 63 F0 80         [24]  936 	xrl	b,#0x80
      002EED 95 F0            [12]  937 	subb	a,b
      002EEF 40 03            [24]  938 	jc	00323$
      002EF1 02 30 BD         [24]  939 	ljmp	00110$
      002EF4                        940 00323$:
                                    941 ;	calc.c:99: printstr("PSPA\t");
      002EF4 7B 2B            [12]  942 	mov	r3,#___str_5
      002EF6 7C 8A            [12]  943 	mov	r4,#(___str_5 >> 8)
      002EF8 7D 80            [12]  944 	mov	r5,#0x80
                                    945 ;	calc.c:51: return;
      002EFA                        946 00141$:
                                    947 ;	calc.c:49: for (; *s; s++) putchar(*s);
      002EFA 8B 82            [24]  948 	mov	dpl,r3
      002EFC 8C 83            [24]  949 	mov	dph,r4
      002EFE 8D F0            [24]  950 	mov	b,r5
      002F00 12 71 7E         [24]  951 	lcall	__gptrget
      002F03 FA               [12]  952 	mov	r2,a
      002F04 60 10            [24]  953 	jz	00119$
      002F06 7E 00            [12]  954 	mov	r6,#0x00
      002F08 8A 82            [24]  955 	mov	dpl,r2
      002F0A 8E 83            [24]  956 	mov	dph,r6
      002F0C 12 2C 1F         [24]  957 	lcall	_putchar
      002F0F 0B               [12]  958 	inc	r3
                                    959 ;	calc.c:99: printstr("PSPA\t");
      002F10 BB 00 E7         [24]  960 	cjne	r3,#0x00,00141$
      002F13 0C               [12]  961 	inc	r4
      002F14 80 E4            [24]  962 	sjmp	00141$
      002F16                        963 00119$:
                                    964 ;	calc.c:100: printall(d);
      002F16 E5 08            [12]  965 	mov	a,_bp
      002F18 24 0E            [12]  966 	add	a,#0x0e
      002F1A F8               [12]  967 	mov	r0,a
      002F1B E5 08            [12]  968 	mov	a,_bp
      002F1D 24 12            [12]  969 	add	a,#0x12
      002F1F F9               [12]  970 	mov	r1,a
      002F20 E6               [12]  971 	mov	a,@r0
      002F21 F7               [12]  972 	mov	@r1,a
      002F22 08               [12]  973 	inc	r0
      002F23 09               [12]  974 	inc	r1
      002F24 E6               [12]  975 	mov	a,@r0
      002F25 F7               [12]  976 	mov	@r1,a
      002F26 08               [12]  977 	inc	r0
      002F27 09               [12]  978 	inc	r1
      002F28 E6               [12]  979 	mov	a,@r0
      002F29 F7               [12]  980 	mov	@r1,a
      002F2A 08               [12]  981 	inc	r0
      002F2B 09               [12]  982 	inc	r1
      002F2C E6               [12]  983 	mov	a,@r0
      002F2D F7               [12]  984 	mov	@r1,a
      002F2E E5 08            [12]  985 	mov	a,_bp
      002F30 24 12            [12]  986 	add	a,#0x12
      002F32 F8               [12]  987 	mov	r0,a
      002F33 86 03            [24]  988 	mov	ar3,@r0
      002F35 08               [12]  989 	inc	r0
      002F36 86 04            [24]  990 	mov	ar4,@r0
      002F38 08               [12]  991 	inc	r0
      002F39 86 05            [24]  992 	mov	ar5,@r0
      002F3B 08               [12]  993 	inc	r0
      002F3C 86 06            [24]  994 	mov	ar6,@r0
                                    995 ;	calc.c:64: printf("%08lx\t", d);
      002F3E C0 07            [24]  996 	push	ar7
      002F40 C0 06            [24]  997 	push	ar6
      002F42 C0 05            [24]  998 	push	ar5
      002F44 C0 04            [24]  999 	push	ar4
      002F46 C0 03            [24] 1000 	push	ar3
      002F48 E5 08            [12] 1001 	mov	a,_bp
      002F4A 24 12            [12] 1002 	add	a,#0x12
      002F4C F8               [12] 1003 	mov	r0,a
      002F4D E6               [12] 1004 	mov	a,@r0
      002F4E C0 E0            [24] 1005 	push	acc
      002F50 08               [12] 1006 	inc	r0
      002F51 E6               [12] 1007 	mov	a,@r0
      002F52 C0 E0            [24] 1008 	push	acc
      002F54 08               [12] 1009 	inc	r0
      002F55 E6               [12] 1010 	mov	a,@r0
      002F56 C0 E0            [24] 1011 	push	acc
      002F58 08               [12] 1012 	inc	r0
      002F59 E6               [12] 1013 	mov	a,@r0
      002F5A C0 E0            [24] 1014 	push	acc
      002F5C 74 FF            [12] 1015 	mov	a,#___str_0
      002F5E C0 E0            [24] 1016 	push	acc
      002F60 74 89            [12] 1017 	mov	a,#(___str_0 >> 8)
      002F62 C0 E0            [24] 1018 	push	acc
      002F64 74 80            [12] 1019 	mov	a,#0x80
      002F66 C0 E0            [24] 1020 	push	acc
      002F68 12 71 45         [24] 1021 	lcall	_printf
      002F6B E5 81            [12] 1022 	mov	a,sp
      002F6D 24 F9            [12] 1023 	add	a,#0xf9
      002F6F F5 81            [12] 1024 	mov	sp,a
      002F71 D0 03            [24] 1025 	pop	ar3
      002F73 D0 04            [24] 1026 	pop	ar4
      002F75 D0 05            [24] 1027 	pop	ar5
      002F77 D0 06            [24] 1028 	pop	ar6
                                   1029 ;	calc.c:65: printf("% 11ld\t", d);
      002F79 C0 06            [24] 1030 	push	ar6
      002F7B C0 05            [24] 1031 	push	ar5
      002F7D C0 04            [24] 1032 	push	ar4
      002F7F C0 03            [24] 1033 	push	ar3
      002F81 C0 03            [24] 1034 	push	ar3
      002F83 C0 04            [24] 1035 	push	ar4
      002F85 C0 05            [24] 1036 	push	ar5
      002F87 C0 06            [24] 1037 	push	ar6
      002F89 74 06            [12] 1038 	mov	a,#___str_1
      002F8B C0 E0            [24] 1039 	push	acc
      002F8D 74 8A            [12] 1040 	mov	a,#(___str_1 >> 8)
      002F8F C0 E0            [24] 1041 	push	acc
      002F91 74 80            [12] 1042 	mov	a,#0x80
      002F93 C0 E0            [24] 1043 	push	acc
      002F95 12 71 45         [24] 1044 	lcall	_printf
      002F98 E5 81            [12] 1045 	mov	a,sp
      002F9A 24 F9            [12] 1046 	add	a,#0xf9
      002F9C F5 81            [12] 1047 	mov	sp,a
      002F9E D0 03            [24] 1048 	pop	ar3
      002FA0 D0 04            [24] 1049 	pop	ar4
      002FA2 D0 05            [24] 1050 	pop	ar5
      002FA4 D0 06            [24] 1051 	pop	ar6
                                   1052 ;	calc.c:66: printf("%011lo\t", d);
      002FA6 C0 06            [24] 1053 	push	ar6
      002FA8 C0 05            [24] 1054 	push	ar5
      002FAA C0 04            [24] 1055 	push	ar4
      002FAC C0 03            [24] 1056 	push	ar3
      002FAE C0 03            [24] 1057 	push	ar3
      002FB0 C0 04            [24] 1058 	push	ar4
      002FB2 C0 05            [24] 1059 	push	ar5
      002FB4 C0 06            [24] 1060 	push	ar6
      002FB6 74 0E            [12] 1061 	mov	a,#___str_2
      002FB8 C0 E0            [24] 1062 	push	acc
      002FBA 74 8A            [12] 1063 	mov	a,#(___str_2 >> 8)
      002FBC C0 E0            [24] 1064 	push	acc
      002FBE 74 80            [12] 1065 	mov	a,#0x80
      002FC0 C0 E0            [24] 1066 	push	acc
      002FC2 12 71 45         [24] 1067 	lcall	_printf
      002FC5 E5 81            [12] 1068 	mov	a,sp
      002FC7 24 F9            [12] 1069 	add	a,#0xf9
      002FC9 F5 81            [12] 1070 	mov	sp,a
      002FCB D0 03            [24] 1071 	pop	ar3
      002FCD D0 04            [24] 1072 	pop	ar4
      002FCF D0 05            [24] 1073 	pop	ar5
      002FD1 D0 06            [24] 1074 	pop	ar6
      002FD3 D0 07            [24] 1075 	pop	ar7
                                   1076 ;	calc.c:67: printbin(d);
      002FD5 E5 08            [12] 1077 	mov	a,_bp
      002FD7 24 16            [12] 1078 	add	a,#0x16
      002FD9 F8               [12] 1079 	mov	r0,a
      002FDA A6 03            [24] 1080 	mov	@r0,ar3
      002FDC 08               [12] 1081 	inc	r0
      002FDD A6 04            [24] 1082 	mov	@r0,ar4
      002FDF 08               [12] 1083 	inc	r0
      002FE0 A6 05            [24] 1084 	mov	@r0,ar5
      002FE2 08               [12] 1085 	inc	r0
      002FE3 A6 06            [24] 1086 	mov	@r0,ar6
                                   1087 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      002FE5 E5 08            [12] 1088 	mov	a,_bp
      002FE7 24 1A            [12] 1089 	add	a,#0x1a
      002FE9 F8               [12] 1090 	mov	r0,a
      002FEA E4               [12] 1091 	clr	a
      002FEB F6               [12] 1092 	mov	@r0,a
      002FEC 08               [12] 1093 	inc	r0
      002FED F6               [12] 1094 	mov	@r0,a
      002FEE 08               [12] 1095 	inc	r0
      002FEF F6               [12] 1096 	mov	@r0,a
      002FF0 08               [12] 1097 	inc	r0
      002FF1 76 80            [12] 1098 	mov	@r0,#0x80
                                   1099 ;	calc.c:114: return 1;
                                   1100 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      002FF3                       1101 00143$:
                                   1102 ;	calc.c:58: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      002FF3 E5 08            [12] 1103 	mov	a,_bp
      002FF5 24 16            [12] 1104 	add	a,#0x16
      002FF7 F8               [12] 1105 	mov	r0,a
      002FF8 86 02            [24] 1106 	mov	ar2,@r0
      002FFA 08               [12] 1107 	inc	r0
      002FFB 86 03            [24] 1108 	mov	ar3,@r0
      002FFD 08               [12] 1109 	inc	r0
      002FFE 86 04            [24] 1110 	mov	ar4,@r0
      003000 08               [12] 1111 	inc	r0
      003001 86 05            [24] 1112 	mov	ar5,@r0
      003003 E5 08            [12] 1113 	mov	a,_bp
      003005 24 1A            [12] 1114 	add	a,#0x1a
      003007 F8               [12] 1115 	mov	r0,a
      003008 E6               [12] 1116 	mov	a,@r0
      003009 52 02            [12] 1117 	anl	ar2,a
      00300B 08               [12] 1118 	inc	r0
      00300C E6               [12] 1119 	mov	a,@r0
      00300D 52 03            [12] 1120 	anl	ar3,a
      00300F 08               [12] 1121 	inc	r0
      003010 E6               [12] 1122 	mov	a,@r0
      003011 52 04            [12] 1123 	anl	ar4,a
      003013 08               [12] 1124 	inc	r0
      003014 E6               [12] 1125 	mov	a,@r0
      003015 52 05            [12] 1126 	anl	ar5,a
      003017 EA               [12] 1127 	mov	a,r2
      003018 4B               [12] 1128 	orl	a,r3
      003019 4C               [12] 1129 	orl	a,r4
      00301A 4D               [12] 1130 	orl	a,r5
      00301B 60 06            [24] 1131 	jz	00164$
      00301D 7C 31            [12] 1132 	mov	r4,#0x31
      00301F 7D 00            [12] 1133 	mov	r5,#0x00
      003021 80 04            [24] 1134 	sjmp	00165$
      003023                       1135 00164$:
      003023 7C 30            [12] 1136 	mov	r4,#0x30
      003025 7D 00            [12] 1137 	mov	r5,#0x00
      003027                       1138 00165$:
      003027 8C 82            [24] 1139 	mov	dpl,r4
      003029 8D 83            [24] 1140 	mov	dph,r5
      00302B 12 2C 1F         [24] 1141 	lcall	_putchar
                                   1142 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      00302E E5 08            [12] 1143 	mov	a,_bp
      003030 24 1A            [12] 1144 	add	a,#0x1a
      003032 F8               [12] 1145 	mov	r0,a
      003033 08               [12] 1146 	inc	r0
      003034 08               [12] 1147 	inc	r0
      003035 08               [12] 1148 	inc	r0
      003036 E6               [12] 1149 	mov	a,@r0
      003037 C3               [12] 1150 	clr	c
      003038 13               [12] 1151 	rrc	a
      003039 F6               [12] 1152 	mov	@r0,a
      00303A 18               [12] 1153 	dec	r0
      00303B E6               [12] 1154 	mov	a,@r0
      00303C 13               [12] 1155 	rrc	a
      00303D F6               [12] 1156 	mov	@r0,a
      00303E 18               [12] 1157 	dec	r0
      00303F E6               [12] 1158 	mov	a,@r0
      003040 13               [12] 1159 	rrc	a
      003041 F6               [12] 1160 	mov	@r0,a
      003042 18               [12] 1161 	dec	r0
      003043 E6               [12] 1162 	mov	a,@r0
      003044 13               [12] 1163 	rrc	a
      003045 F6               [12] 1164 	mov	@r0,a
      003046 E5 08            [12] 1165 	mov	a,_bp
      003048 24 1A            [12] 1166 	add	a,#0x1a
      00304A F8               [12] 1167 	mov	r0,a
      00304B E6               [12] 1168 	mov	a,@r0
      00304C 08               [12] 1169 	inc	r0
      00304D 46               [12] 1170 	orl	a,@r0
      00304E 08               [12] 1171 	inc	r0
      00304F 46               [12] 1172 	orl	a,@r0
      003050 08               [12] 1173 	inc	r0
      003051 46               [12] 1174 	orl	a,@r0
      003052 70 9F            [24] 1175 	jnz	00143$
                                   1176 ;	calc.c:101: printstr("\r\n");
      003054 7B 16            [12] 1177 	mov	r3,#___str_3
      003056 7C 8A            [12] 1178 	mov	r4,#(___str_3 >> 8)
      003058 7D 80            [12] 1179 	mov	r5,#0x80
                                   1180 ;	calc.c:51: return;
      00305A                       1181 00146$:
                                   1182 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00305A 8B 82            [24] 1183 	mov	dpl,r3
      00305C 8C 83            [24] 1184 	mov	dph,r4
      00305E 8D F0            [24] 1185 	mov	b,r5
      003060 12 71 7E         [24] 1186 	lcall	__gptrget
      003063 FA               [12] 1187 	mov	r2,a
      003064 60 10            [24] 1188 	jz	00124$
      003066 7E 00            [12] 1189 	mov	r6,#0x00
      003068 8A 82            [24] 1190 	mov	dpl,r2
      00306A 8E 83            [24] 1191 	mov	dph,r6
      00306C 12 2C 1F         [24] 1192 	lcall	_putchar
      00306F 0B               [12] 1193 	inc	r3
                                   1194 ;	calc.c:101: printstr("\r\n");
      003070 BB 00 E7         [24] 1195 	cjne	r3,#0x00,00146$
      003073 0C               [12] 1196 	inc	r4
      003074 80 E4            [24] 1197 	sjmp	00146$
      003076                       1198 00124$:
                                   1199 ;	calc.c:102: r = stack_pop(ctx->ps, &d);
      003076 C0 07            [24] 1200 	push	ar7
      003078 A8 08            [24] 1201 	mov	r0,_bp
      00307A 08               [12] 1202 	inc	r0
      00307B 86 03            [24] 1203 	mov	ar3,@r0
      00307D 7C 00            [12] 1204 	mov	r4,#0x00
      00307F 7D 40            [12] 1205 	mov	r5,#0x40
      003081 A8 08            [24] 1206 	mov	r0,_bp
      003083 08               [12] 1207 	inc	r0
      003084 08               [12] 1208 	inc	r0
      003085 86 82            [24] 1209 	mov	dpl,@r0
      003087 08               [12] 1210 	inc	r0
      003088 86 83            [24] 1211 	mov	dph,@r0
      00308A 08               [12] 1212 	inc	r0
      00308B 86 F0            [24] 1213 	mov	b,@r0
      00308D 12 71 7E         [24] 1214 	lcall	__gptrget
      003090 FA               [12] 1215 	mov	r2,a
      003091 A3               [24] 1216 	inc	dptr
      003092 12 71 7E         [24] 1217 	lcall	__gptrget
      003095 FE               [12] 1218 	mov	r6,a
      003096 A3               [24] 1219 	inc	dptr
      003097 12 71 7E         [24] 1220 	lcall	__gptrget
      00309A FF               [12] 1221 	mov	r7,a
      00309B C0 07            [24] 1222 	push	ar7
      00309D C0 03            [24] 1223 	push	ar3
      00309F C0 04            [24] 1224 	push	ar4
      0030A1 C0 05            [24] 1225 	push	ar5
      0030A3 8A 82            [24] 1226 	mov	dpl,r2
      0030A5 8E 83            [24] 1227 	mov	dph,r6
      0030A7 8F F0            [24] 1228 	mov	b,r7
      0030A9 12 27 B4         [24] 1229 	lcall	_stack_pop
      0030AC AE 82            [24] 1230 	mov	r6,dpl
      0030AE AD 83            [24] 1231 	mov	r5,dph
      0030B0 15 81            [12] 1232 	dec	sp
      0030B2 15 81            [12] 1233 	dec	sp
      0030B4 15 81            [12] 1234 	dec	sp
      0030B6 D0 07            [24] 1235 	pop	ar7
      0030B8 D0 07            [24] 1236 	pop	ar7
      0030BA 02 2E E3         [24] 1237 	ljmp	00105$
      0030BD                       1238 00110$:
                                   1239 ;	calc.c:105: if (delta->event == EVENT_TERM) {
      0030BD E5 08            [12] 1240 	mov	a,_bp
      0030BF 24 08            [12] 1241 	add	a,#0x08
      0030C1 F8               [12] 1242 	mov	r0,a
      0030C2 86 82            [24] 1243 	mov	dpl,@r0
      0030C4 08               [12] 1244 	inc	r0
      0030C5 86 83            [24] 1245 	mov	dph,@r0
      0030C7 08               [12] 1246 	inc	r0
      0030C8 86 F0            [24] 1247 	mov	b,@r0
      0030CA 12 71 7E         [24] 1248 	lcall	__gptrget
      0030CD FD               [12] 1249 	mov	r5,a
      0030CE A3               [24] 1250 	inc	dptr
      0030CF 12 71 7E         [24] 1251 	lcall	__gptrget
      0030D2 FE               [12] 1252 	mov	r6,a
      0030D3 BD 08 05         [24] 1253 	cjne	r5,#0x08,00330$
      0030D6 BE 00 02         [24] 1254 	cjne	r6,#0x00,00330$
      0030D9 80 03            [24] 1255 	sjmp	00331$
      0030DB                       1256 00330$:
      0030DB 02 33 51         [24] 1257 	ljmp	00113$
      0030DE                       1258 00331$:
                                   1259 ;	calc.c:106: printstr("\r\n");
      0030DE 7C 16            [12] 1260 	mov	r4,#___str_3
      0030E0 7D 8A            [12] 1261 	mov	r5,#(___str_3 >> 8)
      0030E2 7E 80            [12] 1262 	mov	r6,#0x80
                                   1263 ;	calc.c:51: return;
      0030E4                       1264 00149$:
                                   1265 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0030E4 8C 82            [24] 1266 	mov	dpl,r4
      0030E6 8D 83            [24] 1267 	mov	dph,r5
      0030E8 8E F0            [24] 1268 	mov	b,r6
      0030EA 12 71 7E         [24] 1269 	lcall	__gptrget
      0030ED FB               [12] 1270 	mov	r3,a
      0030EE 60 10            [24] 1271 	jz	00126$
      0030F0 7A 00            [12] 1272 	mov	r2,#0x00
      0030F2 8B 82            [24] 1273 	mov	dpl,r3
      0030F4 8A 83            [24] 1274 	mov	dph,r2
      0030F6 12 2C 1F         [24] 1275 	lcall	_putchar
      0030F9 0C               [12] 1276 	inc	r4
                                   1277 ;	calc.c:106: printstr("\r\n");
      0030FA BC 00 E7         [24] 1278 	cjne	r4,#0x00,00149$
      0030FD 0D               [12] 1279 	inc	r5
      0030FE 80 E4            [24] 1280 	sjmp	00149$
      003100                       1281 00126$:
                                   1282 ;	calc.c:107: for (r = stack_pop(ctx->ss, &d); r > 0; r = stack_pop(ctx->ss, &d)) {
      003100 8F 06            [24] 1283 	mov	ar6,r7
      003102 E5 08            [12] 1284 	mov	a,_bp
      003104 24 05            [12] 1285 	add	a,#0x05
      003106 F8               [12] 1286 	mov	r0,a
      003107 A6 06            [24] 1287 	mov	@r0,ar6
      003109 08               [12] 1288 	inc	r0
      00310A 76 00            [12] 1289 	mov	@r0,#0x00
      00310C 08               [12] 1290 	inc	r0
      00310D 76 40            [12] 1291 	mov	@r0,#0x40
      00310F E5 08            [12] 1292 	mov	a,_bp
      003111 24 0B            [12] 1293 	add	a,#0x0b
      003113 F8               [12] 1294 	mov	r0,a
      003114 E5 08            [12] 1295 	mov	a,_bp
      003116 24 08            [12] 1296 	add	a,#0x08
      003118 F9               [12] 1297 	mov	r1,a
      003119 74 16            [12] 1298 	mov	a,#0x16
      00311B 26               [12] 1299 	add	a,@r0
      00311C F7               [12] 1300 	mov	@r1,a
      00311D 74 40            [12] 1301 	mov	a,#0x40
      00311F 08               [12] 1302 	inc	r0
      003120 36               [12] 1303 	addc	a,@r0
      003121 09               [12] 1304 	inc	r1
      003122 F7               [12] 1305 	mov	@r1,a
      003123 08               [12] 1306 	inc	r0
      003124 09               [12] 1307 	inc	r1
      003125 E6               [12] 1308 	mov	a,@r0
      003126 F7               [12] 1309 	mov	@r1,a
      003127 E5 08            [12] 1310 	mov	a,_bp
      003129 24 08            [12] 1311 	add	a,#0x08
      00312B F8               [12] 1312 	mov	r0,a
      00312C 86 82            [24] 1313 	mov	dpl,@r0
      00312E 08               [12] 1314 	inc	r0
      00312F 86 83            [24] 1315 	mov	dph,@r0
      003131 08               [12] 1316 	inc	r0
      003132 86 F0            [24] 1317 	mov	b,@r0
      003134 12 71 7E         [24] 1318 	lcall	__gptrget
      003137 FA               [12] 1319 	mov	r2,a
      003138 A3               [24] 1320 	inc	dptr
      003139 12 71 7E         [24] 1321 	lcall	__gptrget
      00313C FB               [12] 1322 	mov	r3,a
      00313D A3               [24] 1323 	inc	dptr
      00313E 12 71 7E         [24] 1324 	lcall	__gptrget
      003141 FE               [12] 1325 	mov	r6,a
      003142 C0 07            [24] 1326 	push	ar7
      003144 E5 08            [12] 1327 	mov	a,_bp
      003146 24 05            [12] 1328 	add	a,#0x05
      003148 F8               [12] 1329 	mov	r0,a
      003149 E6               [12] 1330 	mov	a,@r0
      00314A C0 E0            [24] 1331 	push	acc
      00314C 08               [12] 1332 	inc	r0
      00314D E6               [12] 1333 	mov	a,@r0
      00314E C0 E0            [24] 1334 	push	acc
      003150 08               [12] 1335 	inc	r0
      003151 E6               [12] 1336 	mov	a,@r0
      003152 C0 E0            [24] 1337 	push	acc
      003154 8A 82            [24] 1338 	mov	dpl,r2
      003156 8B 83            [24] 1339 	mov	dph,r3
      003158 8E F0            [24] 1340 	mov	b,r6
      00315A 12 27 B4         [24] 1341 	lcall	_stack_pop
      00315D AD 82            [24] 1342 	mov	r5,dpl
      00315F AE 83            [24] 1343 	mov	r6,dph
      003161 15 81            [12] 1344 	dec	sp
      003163 15 81            [12] 1345 	dec	sp
      003165 15 81            [12] 1346 	dec	sp
      003167 D0 07            [24] 1347 	pop	ar7
      003169                       1348 00160$:
      003169 C3               [12] 1349 	clr	c
      00316A E4               [12] 1350 	clr	a
      00316B 9D               [12] 1351 	subb	a,r5
      00316C 74 80            [12] 1352 	mov	a,#(0x00 ^ 0x80)
      00316E 8E F0            [24] 1353 	mov	b,r6
      003170 63 F0 80         [24] 1354 	xrl	b,#0x80
      003173 95 F0            [12] 1355 	subb	a,b
      003175 40 03            [24] 1356 	jc	00334$
      003177 02 33 51         [24] 1357 	ljmp	00113$
      00317A                       1358 00334$:
                                   1359 ;	calc.c:108: printstr("SSPA\t");
      00317A 7D 31            [12] 1360 	mov	r5,#___str_6
      00317C 7B 8A            [12] 1361 	mov	r3,#(___str_6 >> 8)
      00317E 7A 80            [12] 1362 	mov	r2,#0x80
                                   1363 ;	calc.c:51: return;
      003180                       1364 00152$:
                                   1365 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003180 8D 82            [24] 1366 	mov	dpl,r5
      003182 8B 83            [24] 1367 	mov	dph,r3
      003184 8A F0            [24] 1368 	mov	b,r2
      003186 12 71 7E         [24] 1369 	lcall	__gptrget
      003189 FE               [12] 1370 	mov	r6,a
      00318A 60 16            [24] 1371 	jz	00128$
      00318C C0 07            [24] 1372 	push	ar7
      00318E 8E 04            [24] 1373 	mov	ar4,r6
      003190 7F 00            [12] 1374 	mov	r7,#0x00
      003192 8C 82            [24] 1375 	mov	dpl,r4
      003194 8F 83            [24] 1376 	mov	dph,r7
      003196 12 2C 1F         [24] 1377 	lcall	_putchar
      003199 0D               [12] 1378 	inc	r5
      00319A BD 00 01         [24] 1379 	cjne	r5,#0x00,00336$
      00319D 0B               [12] 1380 	inc	r3
      00319E                       1381 00336$:
      00319E D0 07            [24] 1382 	pop	ar7
                                   1383 ;	calc.c:108: printstr("SSPA\t");
      0031A0 80 DE            [24] 1384 	sjmp	00152$
      0031A2                       1385 00128$:
                                   1386 ;	calc.c:109: printall(d);
      0031A2 C0 07            [24] 1387 	push	ar7
      0031A4 E5 08            [12] 1388 	mov	a,_bp
      0031A6 24 0E            [12] 1389 	add	a,#0x0e
      0031A8 F8               [12] 1390 	mov	r0,a
      0031A9 E5 08            [12] 1391 	mov	a,_bp
      0031AB 24 12            [12] 1392 	add	a,#0x12
      0031AD F9               [12] 1393 	mov	r1,a
      0031AE E6               [12] 1394 	mov	a,@r0
      0031AF F7               [12] 1395 	mov	@r1,a
      0031B0 08               [12] 1396 	inc	r0
      0031B1 09               [12] 1397 	inc	r1
      0031B2 E6               [12] 1398 	mov	a,@r0
      0031B3 F7               [12] 1399 	mov	@r1,a
      0031B4 08               [12] 1400 	inc	r0
      0031B5 09               [12] 1401 	inc	r1
      0031B6 E6               [12] 1402 	mov	a,@r0
      0031B7 F7               [12] 1403 	mov	@r1,a
      0031B8 08               [12] 1404 	inc	r0
      0031B9 09               [12] 1405 	inc	r1
      0031BA E6               [12] 1406 	mov	a,@r0
      0031BB F7               [12] 1407 	mov	@r1,a
      0031BC E5 08            [12] 1408 	mov	a,_bp
      0031BE 24 12            [12] 1409 	add	a,#0x12
      0031C0 F8               [12] 1410 	mov	r0,a
      0031C1 86 02            [24] 1411 	mov	ar2,@r0
      0031C3 08               [12] 1412 	inc	r0
      0031C4 86 03            [24] 1413 	mov	ar3,@r0
      0031C6 08               [12] 1414 	inc	r0
      0031C7 86 04            [24] 1415 	mov	ar4,@r0
      0031C9 08               [12] 1416 	inc	r0
      0031CA 86 07            [24] 1417 	mov	ar7,@r0
                                   1418 ;	calc.c:64: printf("%08lx\t", d);
      0031CC C0 07            [24] 1419 	push	ar7
      0031CE C0 04            [24] 1420 	push	ar4
      0031D0 C0 03            [24] 1421 	push	ar3
      0031D2 C0 02            [24] 1422 	push	ar2
      0031D4 E5 08            [12] 1423 	mov	a,_bp
      0031D6 24 12            [12] 1424 	add	a,#0x12
      0031D8 F8               [12] 1425 	mov	r0,a
      0031D9 E6               [12] 1426 	mov	a,@r0
      0031DA C0 E0            [24] 1427 	push	acc
      0031DC 08               [12] 1428 	inc	r0
      0031DD E6               [12] 1429 	mov	a,@r0
      0031DE C0 E0            [24] 1430 	push	acc
      0031E0 08               [12] 1431 	inc	r0
      0031E1 E6               [12] 1432 	mov	a,@r0
      0031E2 C0 E0            [24] 1433 	push	acc
      0031E4 08               [12] 1434 	inc	r0
      0031E5 E6               [12] 1435 	mov	a,@r0
      0031E6 C0 E0            [24] 1436 	push	acc
      0031E8 74 FF            [12] 1437 	mov	a,#___str_0
      0031EA C0 E0            [24] 1438 	push	acc
      0031EC 74 89            [12] 1439 	mov	a,#(___str_0 >> 8)
      0031EE C0 E0            [24] 1440 	push	acc
      0031F0 74 80            [12] 1441 	mov	a,#0x80
      0031F2 C0 E0            [24] 1442 	push	acc
      0031F4 12 71 45         [24] 1443 	lcall	_printf
      0031F7 E5 81            [12] 1444 	mov	a,sp
      0031F9 24 F9            [12] 1445 	add	a,#0xf9
      0031FB F5 81            [12] 1446 	mov	sp,a
      0031FD D0 02            [24] 1447 	pop	ar2
      0031FF D0 03            [24] 1448 	pop	ar3
      003201 D0 04            [24] 1449 	pop	ar4
      003203 D0 07            [24] 1450 	pop	ar7
                                   1451 ;	calc.c:65: printf("% 11ld\t", d);
      003205 C0 07            [24] 1452 	push	ar7
      003207 C0 04            [24] 1453 	push	ar4
      003209 C0 03            [24] 1454 	push	ar3
      00320B C0 02            [24] 1455 	push	ar2
      00320D C0 02            [24] 1456 	push	ar2
      00320F C0 03            [24] 1457 	push	ar3
      003211 C0 04            [24] 1458 	push	ar4
      003213 C0 07            [24] 1459 	push	ar7
      003215 74 06            [12] 1460 	mov	a,#___str_1
      003217 C0 E0            [24] 1461 	push	acc
      003219 74 8A            [12] 1462 	mov	a,#(___str_1 >> 8)
      00321B C0 E0            [24] 1463 	push	acc
      00321D 74 80            [12] 1464 	mov	a,#0x80
      00321F C0 E0            [24] 1465 	push	acc
      003221 12 71 45         [24] 1466 	lcall	_printf
      003224 E5 81            [12] 1467 	mov	a,sp
      003226 24 F9            [12] 1468 	add	a,#0xf9
      003228 F5 81            [12] 1469 	mov	sp,a
      00322A D0 02            [24] 1470 	pop	ar2
      00322C D0 03            [24] 1471 	pop	ar3
      00322E D0 04            [24] 1472 	pop	ar4
      003230 D0 07            [24] 1473 	pop	ar7
                                   1474 ;	calc.c:66: printf("%011lo\t", d);
      003232 C0 07            [24] 1475 	push	ar7
      003234 C0 04            [24] 1476 	push	ar4
      003236 C0 03            [24] 1477 	push	ar3
      003238 C0 02            [24] 1478 	push	ar2
      00323A C0 02            [24] 1479 	push	ar2
      00323C C0 03            [24] 1480 	push	ar3
      00323E C0 04            [24] 1481 	push	ar4
      003240 C0 07            [24] 1482 	push	ar7
      003242 74 0E            [12] 1483 	mov	a,#___str_2
      003244 C0 E0            [24] 1484 	push	acc
      003246 74 8A            [12] 1485 	mov	a,#(___str_2 >> 8)
      003248 C0 E0            [24] 1486 	push	acc
      00324A 74 80            [12] 1487 	mov	a,#0x80
      00324C C0 E0            [24] 1488 	push	acc
      00324E 12 71 45         [24] 1489 	lcall	_printf
      003251 E5 81            [12] 1490 	mov	a,sp
      003253 24 F9            [12] 1491 	add	a,#0xf9
      003255 F5 81            [12] 1492 	mov	sp,a
      003257 D0 02            [24] 1493 	pop	ar2
      003259 D0 03            [24] 1494 	pop	ar3
      00325B D0 04            [24] 1495 	pop	ar4
      00325D D0 07            [24] 1496 	pop	ar7
                                   1497 ;	calc.c:67: printbin(d);
      00325F E5 08            [12] 1498 	mov	a,_bp
      003261 24 16            [12] 1499 	add	a,#0x16
      003263 F8               [12] 1500 	mov	r0,a
      003264 A6 02            [24] 1501 	mov	@r0,ar2
      003266 08               [12] 1502 	inc	r0
      003267 A6 03            [24] 1503 	mov	@r0,ar3
      003269 08               [12] 1504 	inc	r0
      00326A A6 04            [24] 1505 	mov	@r0,ar4
      00326C 08               [12] 1506 	inc	r0
      00326D A6 07            [24] 1507 	mov	@r0,ar7
                                   1508 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      00326F E5 08            [12] 1509 	mov	a,_bp
      003271 24 1A            [12] 1510 	add	a,#0x1a
      003273 F8               [12] 1511 	mov	r0,a
      003274 E4               [12] 1512 	clr	a
      003275 F6               [12] 1513 	mov	@r0,a
      003276 08               [12] 1514 	inc	r0
      003277 F6               [12] 1515 	mov	@r0,a
      003278 08               [12] 1516 	inc	r0
      003279 F6               [12] 1517 	mov	@r0,a
      00327A 08               [12] 1518 	inc	r0
      00327B 76 80            [12] 1519 	mov	@r0,#0x80
                                   1520 ;	calc.c:114: return 1;
      00327D D0 07            [24] 1521 	pop	ar7
                                   1522 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      00327F                       1523 00154$:
                                   1524 ;	calc.c:58: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      00327F C0 07            [24] 1525 	push	ar7
      003281 E5 08            [12] 1526 	mov	a,_bp
      003283 24 16            [12] 1527 	add	a,#0x16
      003285 F8               [12] 1528 	mov	r0,a
      003286 86 02            [24] 1529 	mov	ar2,@r0
      003288 08               [12] 1530 	inc	r0
      003289 86 03            [24] 1531 	mov	ar3,@r0
      00328B 08               [12] 1532 	inc	r0
      00328C 86 04            [24] 1533 	mov	ar4,@r0
      00328E 08               [12] 1534 	inc	r0
      00328F 86 07            [24] 1535 	mov	ar7,@r0
      003291 E5 08            [12] 1536 	mov	a,_bp
      003293 24 1A            [12] 1537 	add	a,#0x1a
      003295 F8               [12] 1538 	mov	r0,a
      003296 E6               [12] 1539 	mov	a,@r0
      003297 52 02            [12] 1540 	anl	ar2,a
      003299 08               [12] 1541 	inc	r0
      00329A E6               [12] 1542 	mov	a,@r0
      00329B 52 03            [12] 1543 	anl	ar3,a
      00329D 08               [12] 1544 	inc	r0
      00329E E6               [12] 1545 	mov	a,@r0
      00329F 52 04            [12] 1546 	anl	ar4,a
      0032A1 08               [12] 1547 	inc	r0
      0032A2 E6               [12] 1548 	mov	a,@r0
      0032A3 52 07            [12] 1549 	anl	ar7,a
      0032A5 EA               [12] 1550 	mov	a,r2
      0032A6 4B               [12] 1551 	orl	a,r3
      0032A7 4C               [12] 1552 	orl	a,r4
      0032A8 4F               [12] 1553 	orl	a,r7
      0032A9 D0 07            [24] 1554 	pop	ar7
      0032AB 60 06            [24] 1555 	jz	00166$
      0032AD 7B 31            [12] 1556 	mov	r3,#0x31
      0032AF 7C 00            [12] 1557 	mov	r4,#0x00
      0032B1 80 04            [24] 1558 	sjmp	00167$
      0032B3                       1559 00166$:
      0032B3 7B 30            [12] 1560 	mov	r3,#0x30
      0032B5 7C 00            [12] 1561 	mov	r4,#0x00
      0032B7                       1562 00167$:
      0032B7 8B 82            [24] 1563 	mov	dpl,r3
      0032B9 8C 83            [24] 1564 	mov	dph,r4
      0032BB 12 2C 1F         [24] 1565 	lcall	_putchar
                                   1566 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      0032BE E5 08            [12] 1567 	mov	a,_bp
      0032C0 24 1A            [12] 1568 	add	a,#0x1a
      0032C2 F8               [12] 1569 	mov	r0,a
      0032C3 08               [12] 1570 	inc	r0
      0032C4 08               [12] 1571 	inc	r0
      0032C5 08               [12] 1572 	inc	r0
      0032C6 E6               [12] 1573 	mov	a,@r0
      0032C7 C3               [12] 1574 	clr	c
      0032C8 13               [12] 1575 	rrc	a
      0032C9 F6               [12] 1576 	mov	@r0,a
      0032CA 18               [12] 1577 	dec	r0
      0032CB E6               [12] 1578 	mov	a,@r0
      0032CC 13               [12] 1579 	rrc	a
      0032CD F6               [12] 1580 	mov	@r0,a
      0032CE 18               [12] 1581 	dec	r0
      0032CF E6               [12] 1582 	mov	a,@r0
      0032D0 13               [12] 1583 	rrc	a
      0032D1 F6               [12] 1584 	mov	@r0,a
      0032D2 18               [12] 1585 	dec	r0
      0032D3 E6               [12] 1586 	mov	a,@r0
      0032D4 13               [12] 1587 	rrc	a
      0032D5 F6               [12] 1588 	mov	@r0,a
      0032D6 E5 08            [12] 1589 	mov	a,_bp
      0032D8 24 1A            [12] 1590 	add	a,#0x1a
      0032DA F8               [12] 1591 	mov	r0,a
      0032DB E6               [12] 1592 	mov	a,@r0
      0032DC 08               [12] 1593 	inc	r0
      0032DD 46               [12] 1594 	orl	a,@r0
      0032DE 08               [12] 1595 	inc	r0
      0032DF 46               [12] 1596 	orl	a,@r0
      0032E0 08               [12] 1597 	inc	r0
      0032E1 46               [12] 1598 	orl	a,@r0
      0032E2 70 9B            [24] 1599 	jnz	00154$
                                   1600 ;	calc.c:110: printstr("\r\n");
      0032E4 7D 16            [12] 1601 	mov	r5,#___str_3
      0032E6 7B 8A            [12] 1602 	mov	r3,#(___str_3 >> 8)
      0032E8 7A 80            [12] 1603 	mov	r2,#0x80
                                   1604 ;	calc.c:51: return;
      0032EA                       1605 00157$:
                                   1606 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0032EA 8D 82            [24] 1607 	mov	dpl,r5
      0032EC 8B 83            [24] 1608 	mov	dph,r3
      0032EE 8A F0            [24] 1609 	mov	b,r2
      0032F0 12 71 7E         [24] 1610 	lcall	__gptrget
      0032F3 FE               [12] 1611 	mov	r6,a
      0032F4 60 16            [24] 1612 	jz	00133$
      0032F6 C0 07            [24] 1613 	push	ar7
      0032F8 8E 04            [24] 1614 	mov	ar4,r6
      0032FA 7F 00            [12] 1615 	mov	r7,#0x00
      0032FC 8C 82            [24] 1616 	mov	dpl,r4
      0032FE 8F 83            [24] 1617 	mov	dph,r7
      003300 12 2C 1F         [24] 1618 	lcall	_putchar
      003303 0D               [12] 1619 	inc	r5
      003304 BD 00 01         [24] 1620 	cjne	r5,#0x00,00340$
      003307 0B               [12] 1621 	inc	r3
      003308                       1622 00340$:
      003308 D0 07            [24] 1623 	pop	ar7
                                   1624 ;	calc.c:110: printstr("\r\n");
      00330A 80 DE            [24] 1625 	sjmp	00157$
      00330C                       1626 00133$:
                                   1627 ;	calc.c:107: for (r = stack_pop(ctx->ss, &d); r > 0; r = stack_pop(ctx->ss, &d)) {
      00330C 8F 06            [24] 1628 	mov	ar6,r7
      00330E 7D 00            [12] 1629 	mov	r5,#0x00
      003310 7A 40            [12] 1630 	mov	r2,#0x40
      003312 C0 07            [24] 1631 	push	ar7
      003314 E5 08            [12] 1632 	mov	a,_bp
      003316 24 08            [12] 1633 	add	a,#0x08
      003318 F8               [12] 1634 	mov	r0,a
      003319 86 82            [24] 1635 	mov	dpl,@r0
      00331B 08               [12] 1636 	inc	r0
      00331C 86 83            [24] 1637 	mov	dph,@r0
      00331E 08               [12] 1638 	inc	r0
      00331F 86 F0            [24] 1639 	mov	b,@r0
      003321 12 71 7E         [24] 1640 	lcall	__gptrget
      003324 FB               [12] 1641 	mov	r3,a
      003325 A3               [24] 1642 	inc	dptr
      003326 12 71 7E         [24] 1643 	lcall	__gptrget
      003329 FC               [12] 1644 	mov	r4,a
      00332A A3               [24] 1645 	inc	dptr
      00332B 12 71 7E         [24] 1646 	lcall	__gptrget
      00332E FF               [12] 1647 	mov	r7,a
      00332F C0 06            [24] 1648 	push	ar6
      003331 C0 05            [24] 1649 	push	ar5
      003333 C0 02            [24] 1650 	push	ar2
      003335 8B 82            [24] 1651 	mov	dpl,r3
      003337 8C 83            [24] 1652 	mov	dph,r4
      003339 8F F0            [24] 1653 	mov	b,r7
      00333B 12 27 B4         [24] 1654 	lcall	_stack_pop
      00333E AC 82            [24] 1655 	mov	r4,dpl
      003340 AF 83            [24] 1656 	mov	r7,dph
      003342 15 81            [12] 1657 	dec	sp
      003344 15 81            [12] 1658 	dec	sp
      003346 15 81            [12] 1659 	dec	sp
      003348 8C 05            [24] 1660 	mov	ar5,r4
      00334A 8F 06            [24] 1661 	mov	ar6,r7
      00334C D0 07            [24] 1662 	pop	ar7
      00334E 02 31 69         [24] 1663 	ljmp	00160$
      003351                       1664 00113$:
                                   1665 ;	calc.c:114: return 1;
      003351 90 00 01         [24] 1666 	mov	dptr,#0x0001
                                   1667 ;	calc.c:115: }
      003354 85 08 81         [24] 1668 	mov	sp,_bp
      003357 D0 08            [24] 1669 	pop	_bp
      003359 22               [24] 1670 	ret
                                   1671 ;------------------------------------------------------------
                                   1672 ;Allocation info for local variables in function 'dump_peek'
                                   1673 ;------------------------------------------------------------
                                   1674 ;d                         Allocated to stack - _bp -6
                                   1675 ;_ctx                      Allocated to registers 
                                   1676 ;__1310720021              Allocated to registers 
                                   1677 ;s                         Allocated to registers r5 r6 r7 
                                   1678 ;__1310720023              Allocated to registers r4 r5 r6 r7 
                                   1679 ;d                         Allocated to registers 
                                   1680 ;__1310720001              Allocated to registers 
                                   1681 ;d                         Allocated to stack - _bp +1
                                   1682 ;mask                      Allocated to stack - _bp +5
                                   1683 ;__1310720025              Allocated to registers 
                                   1684 ;s                         Allocated to registers r5 r6 r7 
                                   1685 ;------------------------------------------------------------
                                   1686 ;	calc.c:117: static int dump_peek(void *_ctx, long d) __reentrant {
                                   1687 ;	-----------------------------------------
                                   1688 ;	 function dump_peek
                                   1689 ;	-----------------------------------------
      00335A                       1690 _dump_peek:
      00335A C0 08            [24] 1691 	push	_bp
      00335C E5 81            [12] 1692 	mov	a,sp
      00335E F5 08            [12] 1693 	mov	_bp,a
      003360 24 08            [12] 1694 	add	a,#0x08
      003362 F5 81            [12] 1695 	mov	sp,a
                                   1696 ;	calc.c:120: printstr("PSVA\t");
      003364 7D 37            [12] 1697 	mov	r5,#___str_7
      003366 7E 8A            [12] 1698 	mov	r6,#(___str_7 >> 8)
      003368 7F 80            [12] 1699 	mov	r7,#0x80
                                   1700 ;	calc.c:51: return;
      00336A                       1701 00109$:
                                   1702 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00336A 8D 82            [24] 1703 	mov	dpl,r5
      00336C 8E 83            [24] 1704 	mov	dph,r6
      00336E 8F F0            [24] 1705 	mov	b,r7
      003370 12 71 7E         [24] 1706 	lcall	__gptrget
      003373 FC               [12] 1707 	mov	r4,a
      003374 60 10            [24] 1708 	jz	00102$
      003376 7B 00            [12] 1709 	mov	r3,#0x00
      003378 8C 82            [24] 1710 	mov	dpl,r4
      00337A 8B 83            [24] 1711 	mov	dph,r3
      00337C 12 2C 1F         [24] 1712 	lcall	_putchar
      00337F 0D               [12] 1713 	inc	r5
                                   1714 ;	calc.c:120: printstr("PSVA\t");
      003380 BD 00 E7         [24] 1715 	cjne	r5,#0x00,00109$
      003383 0E               [12] 1716 	inc	r6
      003384 80 E4            [24] 1717 	sjmp	00109$
      003386                       1718 00102$:
                                   1719 ;	calc.c:121: printall(d);
      003386 E5 08            [12] 1720 	mov	a,_bp
      003388 24 FA            [12] 1721 	add	a,#0xfa
      00338A F8               [12] 1722 	mov	r0,a
      00338B 86 04            [24] 1723 	mov	ar4,@r0
      00338D 08               [12] 1724 	inc	r0
      00338E 86 05            [24] 1725 	mov	ar5,@r0
      003390 08               [12] 1726 	inc	r0
      003391 86 06            [24] 1727 	mov	ar6,@r0
      003393 08               [12] 1728 	inc	r0
      003394 86 07            [24] 1729 	mov	ar7,@r0
                                   1730 ;	calc.c:64: printf("%08lx\t", d);
      003396 C0 07            [24] 1731 	push	ar7
      003398 C0 06            [24] 1732 	push	ar6
      00339A C0 05            [24] 1733 	push	ar5
      00339C C0 04            [24] 1734 	push	ar4
      00339E C0 04            [24] 1735 	push	ar4
      0033A0 C0 05            [24] 1736 	push	ar5
      0033A2 C0 06            [24] 1737 	push	ar6
      0033A4 C0 07            [24] 1738 	push	ar7
      0033A6 74 FF            [12] 1739 	mov	a,#___str_0
      0033A8 C0 E0            [24] 1740 	push	acc
      0033AA 74 89            [12] 1741 	mov	a,#(___str_0 >> 8)
      0033AC C0 E0            [24] 1742 	push	acc
      0033AE 74 80            [12] 1743 	mov	a,#0x80
      0033B0 C0 E0            [24] 1744 	push	acc
      0033B2 12 71 45         [24] 1745 	lcall	_printf
      0033B5 E5 81            [12] 1746 	mov	a,sp
      0033B7 24 F9            [12] 1747 	add	a,#0xf9
      0033B9 F5 81            [12] 1748 	mov	sp,a
      0033BB D0 04            [24] 1749 	pop	ar4
      0033BD D0 05            [24] 1750 	pop	ar5
      0033BF D0 06            [24] 1751 	pop	ar6
      0033C1 D0 07            [24] 1752 	pop	ar7
                                   1753 ;	calc.c:65: printf("% 11ld\t", d);
      0033C3 C0 07            [24] 1754 	push	ar7
      0033C5 C0 06            [24] 1755 	push	ar6
      0033C7 C0 05            [24] 1756 	push	ar5
      0033C9 C0 04            [24] 1757 	push	ar4
      0033CB C0 04            [24] 1758 	push	ar4
      0033CD C0 05            [24] 1759 	push	ar5
      0033CF C0 06            [24] 1760 	push	ar6
      0033D1 C0 07            [24] 1761 	push	ar7
      0033D3 74 06            [12] 1762 	mov	a,#___str_1
      0033D5 C0 E0            [24] 1763 	push	acc
      0033D7 74 8A            [12] 1764 	mov	a,#(___str_1 >> 8)
      0033D9 C0 E0            [24] 1765 	push	acc
      0033DB 74 80            [12] 1766 	mov	a,#0x80
      0033DD C0 E0            [24] 1767 	push	acc
      0033DF 12 71 45         [24] 1768 	lcall	_printf
      0033E2 E5 81            [12] 1769 	mov	a,sp
      0033E4 24 F9            [12] 1770 	add	a,#0xf9
      0033E6 F5 81            [12] 1771 	mov	sp,a
      0033E8 D0 04            [24] 1772 	pop	ar4
      0033EA D0 05            [24] 1773 	pop	ar5
      0033EC D0 06            [24] 1774 	pop	ar6
      0033EE D0 07            [24] 1775 	pop	ar7
                                   1776 ;	calc.c:66: printf("%011lo\t", d);
      0033F0 C0 07            [24] 1777 	push	ar7
      0033F2 C0 06            [24] 1778 	push	ar6
      0033F4 C0 05            [24] 1779 	push	ar5
      0033F6 C0 04            [24] 1780 	push	ar4
      0033F8 C0 04            [24] 1781 	push	ar4
      0033FA C0 05            [24] 1782 	push	ar5
      0033FC C0 06            [24] 1783 	push	ar6
      0033FE C0 07            [24] 1784 	push	ar7
      003400 74 0E            [12] 1785 	mov	a,#___str_2
      003402 C0 E0            [24] 1786 	push	acc
      003404 74 8A            [12] 1787 	mov	a,#(___str_2 >> 8)
      003406 C0 E0            [24] 1788 	push	acc
      003408 74 80            [12] 1789 	mov	a,#0x80
      00340A C0 E0            [24] 1790 	push	acc
      00340C 12 71 45         [24] 1791 	lcall	_printf
      00340F E5 81            [12] 1792 	mov	a,sp
      003411 24 F9            [12] 1793 	add	a,#0xf9
      003413 F5 81            [12] 1794 	mov	sp,a
      003415 D0 04            [24] 1795 	pop	ar4
      003417 D0 05            [24] 1796 	pop	ar5
      003419 D0 06            [24] 1797 	pop	ar6
      00341B D0 07            [24] 1798 	pop	ar7
                                   1799 ;	calc.c:67: printbin(d);
      00341D A8 08            [24] 1800 	mov	r0,_bp
      00341F 08               [12] 1801 	inc	r0
      003420 A6 04            [24] 1802 	mov	@r0,ar4
      003422 08               [12] 1803 	inc	r0
      003423 A6 05            [24] 1804 	mov	@r0,ar5
      003425 08               [12] 1805 	inc	r0
      003426 A6 06            [24] 1806 	mov	@r0,ar6
      003428 08               [12] 1807 	inc	r0
      003429 A6 07            [24] 1808 	mov	@r0,ar7
                                   1809 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      00342B E5 08            [12] 1810 	mov	a,_bp
      00342D 24 05            [12] 1811 	add	a,#0x05
      00342F F8               [12] 1812 	mov	r0,a
      003430 E4               [12] 1813 	clr	a
      003431 F6               [12] 1814 	mov	@r0,a
      003432 08               [12] 1815 	inc	r0
      003433 F6               [12] 1816 	mov	@r0,a
      003434 08               [12] 1817 	inc	r0
      003435 F6               [12] 1818 	mov	@r0,a
      003436 08               [12] 1819 	inc	r0
      003437 76 80            [12] 1820 	mov	@r0,#0x80
      003439                       1821 00111$:
                                   1822 ;	calc.c:58: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      003439 A8 08            [24] 1823 	mov	r0,_bp
      00343B 08               [12] 1824 	inc	r0
      00343C 86 04            [24] 1825 	mov	ar4,@r0
      00343E 08               [12] 1826 	inc	r0
      00343F 86 05            [24] 1827 	mov	ar5,@r0
      003441 08               [12] 1828 	inc	r0
      003442 86 06            [24] 1829 	mov	ar6,@r0
      003444 08               [12] 1830 	inc	r0
      003445 86 07            [24] 1831 	mov	ar7,@r0
      003447 E5 08            [12] 1832 	mov	a,_bp
      003449 24 05            [12] 1833 	add	a,#0x05
      00344B F8               [12] 1834 	mov	r0,a
      00344C E6               [12] 1835 	mov	a,@r0
      00344D 52 04            [12] 1836 	anl	ar4,a
      00344F 08               [12] 1837 	inc	r0
      003450 E6               [12] 1838 	mov	a,@r0
      003451 52 05            [12] 1839 	anl	ar5,a
      003453 08               [12] 1840 	inc	r0
      003454 E6               [12] 1841 	mov	a,@r0
      003455 52 06            [12] 1842 	anl	ar6,a
      003457 08               [12] 1843 	inc	r0
      003458 E6               [12] 1844 	mov	a,@r0
      003459 52 07            [12] 1845 	anl	ar7,a
      00345B EC               [12] 1846 	mov	a,r4
      00345C 4D               [12] 1847 	orl	a,r5
      00345D 4E               [12] 1848 	orl	a,r6
      00345E 4F               [12] 1849 	orl	a,r7
      00345F 60 06            [24] 1850 	jz	00118$
      003461 7E 31            [12] 1851 	mov	r6,#0x31
      003463 7F 00            [12] 1852 	mov	r7,#0x00
      003465 80 04            [24] 1853 	sjmp	00119$
      003467                       1854 00118$:
      003467 7E 30            [12] 1855 	mov	r6,#0x30
      003469 7F 00            [12] 1856 	mov	r7,#0x00
      00346B                       1857 00119$:
      00346B 8E 82            [24] 1858 	mov	dpl,r6
      00346D 8F 83            [24] 1859 	mov	dph,r7
      00346F 12 2C 1F         [24] 1860 	lcall	_putchar
                                   1861 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      003472 E5 08            [12] 1862 	mov	a,_bp
      003474 24 05            [12] 1863 	add	a,#0x05
      003476 F8               [12] 1864 	mov	r0,a
      003477 08               [12] 1865 	inc	r0
      003478 08               [12] 1866 	inc	r0
      003479 08               [12] 1867 	inc	r0
      00347A E6               [12] 1868 	mov	a,@r0
      00347B C3               [12] 1869 	clr	c
      00347C 13               [12] 1870 	rrc	a
      00347D F6               [12] 1871 	mov	@r0,a
      00347E 18               [12] 1872 	dec	r0
      00347F E6               [12] 1873 	mov	a,@r0
      003480 13               [12] 1874 	rrc	a
      003481 F6               [12] 1875 	mov	@r0,a
      003482 18               [12] 1876 	dec	r0
      003483 E6               [12] 1877 	mov	a,@r0
      003484 13               [12] 1878 	rrc	a
      003485 F6               [12] 1879 	mov	@r0,a
      003486 18               [12] 1880 	dec	r0
      003487 E6               [12] 1881 	mov	a,@r0
      003488 13               [12] 1882 	rrc	a
      003489 F6               [12] 1883 	mov	@r0,a
      00348A E5 08            [12] 1884 	mov	a,_bp
      00348C 24 05            [12] 1885 	add	a,#0x05
      00348E F8               [12] 1886 	mov	r0,a
      00348F E6               [12] 1887 	mov	a,@r0
      003490 08               [12] 1888 	inc	r0
      003491 46               [12] 1889 	orl	a,@r0
      003492 08               [12] 1890 	inc	r0
      003493 46               [12] 1891 	orl	a,@r0
      003494 08               [12] 1892 	inc	r0
      003495 46               [12] 1893 	orl	a,@r0
      003496 70 A1            [24] 1894 	jnz	00111$
                                   1895 ;	calc.c:122: printstr("\r\n");
      003498 7D 16            [12] 1896 	mov	r5,#___str_3
      00349A 7E 8A            [12] 1897 	mov	r6,#(___str_3 >> 8)
      00349C 7F 80            [12] 1898 	mov	r7,#0x80
                                   1899 ;	calc.c:51: return;
      00349E                       1900 00114$:
                                   1901 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00349E 8D 82            [24] 1902 	mov	dpl,r5
      0034A0 8E 83            [24] 1903 	mov	dph,r6
      0034A2 8F F0            [24] 1904 	mov	b,r7
      0034A4 12 71 7E         [24] 1905 	lcall	__gptrget
      0034A7 FC               [12] 1906 	mov	r4,a
      0034A8 60 10            [24] 1907 	jz	00107$
      0034AA 7B 00            [12] 1908 	mov	r3,#0x00
      0034AC 8C 82            [24] 1909 	mov	dpl,r4
      0034AE 8B 83            [24] 1910 	mov	dph,r3
      0034B0 12 2C 1F         [24] 1911 	lcall	_putchar
      0034B3 0D               [12] 1912 	inc	r5
                                   1913 ;	calc.c:122: printstr("\r\n");
      0034B4 BD 00 E7         [24] 1914 	cjne	r5,#0x00,00114$
      0034B7 0E               [12] 1915 	inc	r6
      0034B8 80 E4            [24] 1916 	sjmp	00114$
      0034BA                       1917 00107$:
                                   1918 ;	calc.c:124: return 1;
      0034BA 90 00 01         [24] 1919 	mov	dptr,#0x0001
                                   1920 ;	calc.c:125: }
      0034BD 85 08 81         [24] 1921 	mov	sp,_bp
      0034C0 D0 08            [24] 1922 	pop	_bp
      0034C2 22               [24] 1923 	ret
                                   1924 ;------------------------------------------------------------
                                   1925 ;Allocation info for local variables in function 'operator'
                                   1926 ;------------------------------------------------------------
                                   1927 ;delta                     Allocated to stack - _bp -5
                                   1928 ;_ctx                      Allocated to stack - _bp +1
                                   1929 ;ctx                       Allocated to stack - _bp +18
                                   1930 ;t0                        Allocated to registers r7 r6 r5 
                                   1931 ;d0                        Allocated to stack - _bp +21
                                   1932 ;d1                        Allocated to stack - _bp +25
                                   1933 ;__1966080027              Allocated to registers 
                                   1934 ;s                         Allocated to registers r7 r6 r5 
                                   1935 ;__1966080029              Allocated to registers 
                                   1936 ;s                         Allocated to registers r7 r6 r5 
                                   1937 ;__2621440031              Allocated to registers 
                                   1938 ;s                         Allocated to registers r7 r6 r5 
                                   1939 ;__2621440033              Allocated to registers r7 r6 r5 r4 
                                   1940 ;d                         Allocated to stack - _bp +29
                                   1941 ;__1310720001              Allocated to registers 
                                   1942 ;d                         Allocated to registers r7 r6 r5 r2 
                                   1943 ;mask                      Allocated to stack - _bp +33
                                   1944 ;__2621440035              Allocated to registers 
                                   1945 ;s                         Allocated to registers r7 r6 r5 
                                   1946 ;__1966080037              Allocated to registers 
                                   1947 ;s                         Allocated to registers r7 r6 r5 
                                   1948 ;__1966080039              Allocated to registers 
                                   1949 ;s                         Allocated to registers r7 r6 r5 
                                   1950 ;__1966080041              Allocated to registers 
                                   1951 ;s                         Allocated to registers r7 r6 r5 
                                   1952 ;__1966080043              Allocated to registers 
                                   1953 ;s                         Allocated to registers r7 r6 r5 
                                   1954 ;__2621440045              Allocated to registers 
                                   1955 ;s                         Allocated to registers r7 r6 r5 
                                   1956 ;__2621440047              Allocated to registers r7 r6 r5 r4 
                                   1957 ;d                         Allocated to stack - _bp +29
                                   1958 ;__1310720001              Allocated to registers 
                                   1959 ;d                         Allocated to registers r7 r6 r5 r2 
                                   1960 ;mask                      Allocated to stack - _bp +33
                                   1961 ;__2621440049              Allocated to registers 
                                   1962 ;s                         Allocated to registers r7 r6 r5 
                                   1963 ;__1966080051              Allocated to registers 
                                   1964 ;s                         Allocated to registers r7 r6 r5 
                                   1965 ;__1966080053              Allocated to registers 
                                   1966 ;s                         Allocated to registers r7 r6 r5 
                                   1967 ;__2621440055              Allocated to registers 
                                   1968 ;s                         Allocated to registers r7 r6 r5 
                                   1969 ;__1966080057              Allocated to registers 
                                   1970 ;s                         Allocated to registers r7 r6 r5 
                                   1971 ;__3276800059              Allocated to registers 
                                   1972 ;s                         Allocated to registers r7 r6 r5 
                                   1973 ;__1966080061              Allocated to registers 
                                   1974 ;s                         Allocated to registers r7 r6 r5 
                                   1975 ;__3276800063              Allocated to registers 
                                   1976 ;s                         Allocated to registers r7 r6 r5 
                                   1977 ;__1966080065              Allocated to registers 
                                   1978 ;s                         Allocated to registers r7 r6 r5 
                                   1979 ;__1966080067              Allocated to registers 
                                   1980 ;s                         Allocated to registers r7 r6 r5 
                                   1981 ;__1966080069              Allocated to registers 
                                   1982 ;s                         Allocated to registers r7 r6 r5 
                                   1983 ;__1966080071              Allocated to registers 
                                   1984 ;s                         Allocated to registers r7 r6 r5 
                                   1985 ;__1966080073              Allocated to registers 
                                   1986 ;s                         Allocated to registers r7 r6 r5 
                                   1987 ;__3276800075              Allocated to registers 
                                   1988 ;s                         Allocated to registers r7 r6 r5 
                                   1989 ;__1966080077              Allocated to registers 
                                   1990 ;s                         Allocated to registers r7 r6 r5 
                                   1991 ;__2621440079              Allocated to registers 
                                   1992 ;s                         Allocated to registers r7 r6 r5 
                                   1993 ;__1966080081              Allocated to registers 
                                   1994 ;s                         Allocated to registers r7 r6 r5 
                                   1995 ;__2621440083              Allocated to registers 
                                   1996 ;s                         Allocated to registers r7 r6 r5 
                                   1997 ;__1966080085              Allocated to registers 
                                   1998 ;s                         Allocated to registers r7 r6 r5 
                                   1999 ;__2621440087              Allocated to registers 
                                   2000 ;s                         Allocated to registers r7 r6 r5 
                                   2001 ;__1966080089              Allocated to registers 
                                   2002 ;s                         Allocated to registers r7 r6 r5 
                                   2003 ;__2621440091              Allocated to registers 
                                   2004 ;s                         Allocated to registers r7 r6 r5 
                                   2005 ;__2621440093              Allocated to registers 
                                   2006 ;s                         Allocated to registers r7 r6 r5 
                                   2007 ;__1966080095              Allocated to registers 
                                   2008 ;s                         Allocated to registers r7 r6 r5 
                                   2009 ;__2621440097              Allocated to registers 
                                   2010 ;s                         Allocated to registers r7 r6 r5 
                                   2011 ;__2621440099              Allocated to registers 
                                   2012 ;s                         Allocated to registers r7 r6 r5 
                                   2013 ;__1966080101              Allocated to registers 
                                   2014 ;s                         Allocated to registers r5 r4 r3 
                                   2015 ;__2621440103              Allocated to registers 
                                   2016 ;s                         Allocated to registers r5 r4 r3 
                                   2017 ;__1966080105              Allocated to registers 
                                   2018 ;s                         Allocated to registers r5 r4 r3 
                                   2019 ;__2621440107              Allocated to registers 
                                   2020 ;s                         Allocated to registers r5 r4 r3 
                                   2021 ;__1966080109              Allocated to registers 
                                   2022 ;s                         Allocated to registers r5 r4 r3 
                                   2023 ;__2621440111              Allocated to registers 
                                   2024 ;s                         Allocated to registers r5 r4 r3 
                                   2025 ;__1966080113              Allocated to registers 
                                   2026 ;s                         Allocated to registers r5 r4 r3 
                                   2027 ;__2621440115              Allocated to registers 
                                   2028 ;s                         Allocated to registers r5 r4 r3 
                                   2029 ;__1966080117              Allocated to registers 
                                   2030 ;s                         Allocated to registers r5 r4 r3 
                                   2031 ;__2621440119              Allocated to registers 
                                   2032 ;s                         Allocated to registers r5 r4 r3 
                                   2033 ;__1966080121              Allocated to registers 
                                   2034 ;s                         Allocated to registers r5 r4 r3 
                                   2035 ;__2621440123              Allocated to registers 
                                   2036 ;s                         Allocated to registers r5 r4 r3 
                                   2037 ;__1966080125              Allocated to registers 
                                   2038 ;s                         Allocated to registers r5 r4 r3 
                                   2039 ;sloc0                     Allocated to stack - _bp +346
                                   2040 ;sloc1                     Allocated to stack - _bp +4
                                   2041 ;sloc2                     Allocated to stack - _bp +7
                                   2042 ;sloc3                     Allocated to stack - _bp +11
                                   2043 ;sloc4                     Allocated to stack - _bp +14
                                   2044 ;------------------------------------------------------------
                                   2045 ;	calc.c:127: static int operator(void *_ctx, delta_t *delta) __reentrant {
                                   2046 ;	-----------------------------------------
                                   2047 ;	 function operator
                                   2048 ;	-----------------------------------------
      0034C3                       2049 _operator:
      0034C3 C0 08            [24] 2050 	push	_bp
      0034C5 85 81 08         [24] 2051 	mov	_bp,sp
      0034C8 C0 82            [24] 2052 	push	dpl
      0034CA C0 83            [24] 2053 	push	dph
      0034CC C0 F0            [24] 2054 	push	b
      0034CE E5 81            [12] 2055 	mov	a,sp
      0034D0 24 21            [12] 2056 	add	a,#0x21
      0034D2 F5 81            [12] 2057 	mov	sp,a
                                   2058 ;	calc.c:128: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
      0034D4 A8 08            [24] 2059 	mov	r0,_bp
      0034D6 08               [12] 2060 	inc	r0
      0034D7 E5 08            [12] 2061 	mov	a,_bp
      0034D9 24 12            [12] 2062 	add	a,#0x12
      0034DB F9               [12] 2063 	mov	r1,a
      0034DC E6               [12] 2064 	mov	a,@r0
      0034DD F7               [12] 2065 	mov	@r1,a
      0034DE 08               [12] 2066 	inc	r0
      0034DF 09               [12] 2067 	inc	r1
      0034E0 E6               [12] 2068 	mov	a,@r0
      0034E1 F7               [12] 2069 	mov	@r1,a
      0034E2 08               [12] 2070 	inc	r0
      0034E3 09               [12] 2071 	inc	r1
      0034E4 E6               [12] 2072 	mov	a,@r0
      0034E5 F7               [12] 2073 	mov	@r1,a
                                   2074 ;	calc.c:132: switch (ctx->digit[0]) {
      0034E6 E5 08            [12] 2075 	mov	a,_bp
      0034E8 24 12            [12] 2076 	add	a,#0x12
      0034EA F8               [12] 2077 	mov	r0,a
      0034EB 74 07            [12] 2078 	mov	a,#0x07
      0034ED 26               [12] 2079 	add	a,@r0
      0034EE FD               [12] 2080 	mov	r5,a
      0034EF E4               [12] 2081 	clr	a
      0034F0 08               [12] 2082 	inc	r0
      0034F1 36               [12] 2083 	addc	a,@r0
      0034F2 FE               [12] 2084 	mov	r6,a
      0034F3 08               [12] 2085 	inc	r0
      0034F4 86 07            [24] 2086 	mov	ar7,@r0
      0034F6 8D 82            [24] 2087 	mov	dpl,r5
      0034F8 8E 83            [24] 2088 	mov	dph,r6
      0034FA 8F F0            [24] 2089 	mov	b,r7
      0034FC 12 71 7E         [24] 2090 	lcall	__gptrget
      0034FF FC               [12] 2091 	mov	r4,a
      003500 BC 23 03         [24] 2092 	cjne	r4,#0x23,01234$
      003503 02 4A 32         [24] 2093 	ljmp	00189$
      003506                       2094 01234$:
      003506 BC 25 03         [24] 2095 	cjne	r4,#0x25,01235$
      003509 02 4A 32         [24] 2096 	ljmp	00189$
      00350C                       2097 01235$:
      00350C BC 26 03         [24] 2098 	cjne	r4,#0x26,01236$
      00350F 02 4D 18         [24] 2099 	ljmp	00202$
      003512                       2100 01236$:
      003512 BC 2A 03         [24] 2101 	cjne	r4,#0x2a,01237$
      003515 02 45 A2         [24] 2102 	ljmp	00167$
      003518                       2103 01237$:
      003518 BC 2B 03         [24] 2104 	cjne	r4,#0x2b,01238$
      00351B 02 42 A3         [24] 2105 	ljmp	00153$
      00351E                       2106 01238$:
      00351E BC 2D 03         [24] 2107 	cjne	r4,#0x2d,01239$
      003521 02 44 22         [24] 2108 	ljmp	00160$
      003524                       2109 01239$:
      003524 BC 2E 03         [24] 2110 	cjne	r4,#0x2e,01240$
      003527 02 38 35         [24] 2111 	ljmp	00109$
      00352A                       2112 01240$:
      00352A BC 2F 03         [24] 2113 	cjne	r4,#0x2f,01241$
      00352D 02 47 48         [24] 2114 	ljmp	00175$
      003530                       2115 01241$:
      003530 BC 3C 03         [24] 2116 	cjne	r4,#0x3c,01242$
      003533 02 55 33         [24] 2117 	ljmp	00237$
      003536                       2118 01242$:
      003536 BC 3E 03         [24] 2119 	cjne	r4,#0x3e,01243$
      003539 02 51 E6         [24] 2120 	ljmp	00223$
      00353C                       2121 01243$:
      00353C BC 4D 03         [24] 2122 	cjne	r4,#0x4d,01244$
      00353F 02 3D 49         [24] 2123 	ljmp	00127$
      003542                       2124 01244$:
      003542 BC 50 03         [24] 2125 	cjne	r4,#0x50,01245$
      003545 02 3A 2B         [24] 2126 	ljmp	00113$
      003548                       2127 01245$:
      003548 BC 54 03         [24] 2128 	cjne	r4,#0x54,01246$
      00354B 02 40 4B         [24] 2129 	ljmp	00145$
      00354E                       2130 01246$:
      00354E BC 55 03         [24] 2131 	cjne	r4,#0x55,01247$
      003551 02 3F 64         [24] 2132 	ljmp	00139$
      003554                       2133 01247$:
      003554 BC 56 03         [24] 2134 	cjne	r4,#0x56,01248$
      003557 02 37 94         [24] 2135 	ljmp	00105$
      00355A                       2136 01248$:
      00355A BC 58 03         [24] 2137 	cjne	r4,#0x58,01249$
      00355D 02 42 04         [24] 2138 	ljmp	00152$
      003560                       2139 01249$:
      003560 BC 5C 03         [24] 2140 	cjne	r4,#0x5c,01250$
      003563 02 47 48         [24] 2141 	ljmp	00175$
      003566                       2142 01250$:
      003566 BC 5D 03         [24] 2143 	cjne	r4,#0x5d,01251$
      003569 02 53 84         [24] 2144 	ljmp	00230$
      00356C                       2145 01251$:
      00356C BC 5E 03         [24] 2146 	cjne	r4,#0x5e,01252$
      00356F 02 50 4C         [24] 2147 	ljmp	00216$
      003572                       2148 01252$:
      003572 BC 6D 03         [24] 2149 	cjne	r4,#0x6d,01253$
      003575 02 3C 15         [24] 2150 	ljmp	00121$
      003578                       2151 01253$:
      003578 BC 70 03         [24] 2152 	cjne	r4,#0x70,01254$
      00357B 02 38 35         [24] 2153 	ljmp	00109$
      00357E                       2154 01254$:
      00357E BC 75 03         [24] 2155 	cjne	r4,#0x75,01255$
      003581 02 3E 7D         [24] 2156 	ljmp	00133$
      003584                       2157 01255$:
      003584 BC 76 02         [24] 2158 	cjne	r4,#0x76,01256$
      003587 80 15            [24] 2159 	sjmp	00101$
      003589                       2160 01256$:
      003589 BC 78 03         [24] 2161 	cjne	r4,#0x78,01257$
      00358C 02 3A 74         [24] 2162 	ljmp	00114$
      00358F                       2163 01257$:
      00358F BC 7C 03         [24] 2164 	cjne	r4,#0x7c,01258$
      003592 02 4E B2         [24] 2165 	ljmp	00209$
      003595                       2166 01258$:
      003595 BC 7E 03         [24] 2167 	cjne	r4,#0x7e,01259$
      003598 02 56 D6         [24] 2168 	ljmp	00244$
      00359B                       2169 01259$:
      00359B 02 57 AF         [24] 2170 	ljmp	00248$
                                   2171 ;	calc.c:133: case 'v':
      00359E                       2172 00101$:
                                   2173 ;	calc.c:134: printstr("\r\n");
      00359E 7F 16            [12] 2174 	mov	r7,#___str_3
      0035A0 7E 8A            [12] 2175 	mov	r6,#(___str_3 >> 8)
      0035A2 7D 80            [12] 2176 	mov	r5,#0x80
                                   2177 ;	calc.c:51: return;
      0035A4                       2178 00353$:
                                   2179 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0035A4 8F 82            [24] 2180 	mov	dpl,r7
      0035A6 8E 83            [24] 2181 	mov	dph,r6
      0035A8 8D F0            [24] 2182 	mov	b,r5
      0035AA 12 71 7E         [24] 2183 	lcall	__gptrget
      0035AD FC               [12] 2184 	mov	r4,a
      0035AE 60 10            [24] 2185 	jz	00251$
      0035B0 7B 00            [12] 2186 	mov	r3,#0x00
      0035B2 8C 82            [24] 2187 	mov	dpl,r4
      0035B4 8B 83            [24] 2188 	mov	dph,r3
      0035B6 12 2C 1F         [24] 2189 	lcall	_putchar
      0035B9 0F               [12] 2190 	inc	r7
                                   2191 ;	calc.c:134: printstr("\r\n");
      0035BA BF 00 E7         [24] 2192 	cjne	r7,#0x00,00353$
      0035BD 0E               [12] 2193 	inc	r6
      0035BE 80 E4            [24] 2194 	sjmp	00353$
      0035C0                       2195 00251$:
                                   2196 ;	calc.c:135: if (!stack_peek(ctx->ps, &d0)) printstr("stack underflow\r\n");
      0035C0 E5 08            [12] 2197 	mov	a,_bp
      0035C2 24 15            [12] 2198 	add	a,#0x15
      0035C4 FF               [12] 2199 	mov	r7,a
      0035C5 7E 00            [12] 2200 	mov	r6,#0x00
      0035C7 7D 40            [12] 2201 	mov	r5,#0x40
      0035C9 E5 08            [12] 2202 	mov	a,_bp
      0035CB 24 12            [12] 2203 	add	a,#0x12
      0035CD F8               [12] 2204 	mov	r0,a
      0035CE 74 13            [12] 2205 	mov	a,#0x13
      0035D0 26               [12] 2206 	add	a,@r0
      0035D1 FA               [12] 2207 	mov	r2,a
      0035D2 ED               [12] 2208 	mov	a,r5
      0035D3 08               [12] 2209 	inc	r0
      0035D4 36               [12] 2210 	addc	a,@r0
      0035D5 FB               [12] 2211 	mov	r3,a
      0035D6 08               [12] 2212 	inc	r0
      0035D7 86 04            [24] 2213 	mov	ar4,@r0
      0035D9 8A 82            [24] 2214 	mov	dpl,r2
      0035DB 8B 83            [24] 2215 	mov	dph,r3
      0035DD 8C F0            [24] 2216 	mov	b,r4
      0035DF 12 71 7E         [24] 2217 	lcall	__gptrget
      0035E2 FA               [12] 2218 	mov	r2,a
      0035E3 A3               [24] 2219 	inc	dptr
      0035E4 12 71 7E         [24] 2220 	lcall	__gptrget
      0035E7 FB               [12] 2221 	mov	r3,a
      0035E8 A3               [24] 2222 	inc	dptr
      0035E9 12 71 7E         [24] 2223 	lcall	__gptrget
      0035EC FC               [12] 2224 	mov	r4,a
      0035ED C0 07            [24] 2225 	push	ar7
      0035EF C0 06            [24] 2226 	push	ar6
      0035F1 C0 05            [24] 2227 	push	ar5
      0035F3 8A 82            [24] 2228 	mov	dpl,r2
      0035F5 8B 83            [24] 2229 	mov	dph,r3
      0035F7 8C F0            [24] 2230 	mov	b,r4
      0035F9 12 28 D8         [24] 2231 	lcall	_stack_peek
      0035FC AB 82            [24] 2232 	mov	r3,dpl
      0035FE AC 83            [24] 2233 	mov	r4,dph
      003600 15 81            [12] 2234 	dec	sp
      003602 15 81            [12] 2235 	dec	sp
      003604 15 81            [12] 2236 	dec	sp
      003606 EB               [12] 2237 	mov	a,r3
      003607 4C               [12] 2238 	orl	a,r4
      003608 70 25            [24] 2239 	jnz	00103$
      00360A 7F 19            [12] 2240 	mov	r7,#___str_4
      00360C 7E 8A            [12] 2241 	mov	r6,#(___str_4 >> 8)
      00360E 7D 80            [12] 2242 	mov	r5,#0x80
                                   2243 ;	calc.c:51: return;
      003610                       2244 00356$:
                                   2245 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003610 8F 82            [24] 2246 	mov	dpl,r7
      003612 8E 83            [24] 2247 	mov	dph,r6
      003614 8D F0            [24] 2248 	mov	b,r5
      003616 12 71 7E         [24] 2249 	lcall	__gptrget
      003619 FC               [12] 2250 	mov	r4,a
      00361A 70 03            [24] 2251 	jnz	01263$
      00361C 02 57 B4         [24] 2252 	ljmp	00249$
      00361F                       2253 01263$:
      00361F 7B 00            [12] 2254 	mov	r3,#0x00
      003621 8C 82            [24] 2255 	mov	dpl,r4
      003623 8B 83            [24] 2256 	mov	dph,r3
      003625 12 2C 1F         [24] 2257 	lcall	_putchar
      003628 0F               [12] 2258 	inc	r7
                                   2259 ;	calc.c:135: if (!stack_peek(ctx->ps, &d0)) printstr("stack underflow\r\n");
      003629 BF 00 E4         [24] 2260 	cjne	r7,#0x00,00356$
      00362C 0E               [12] 2261 	inc	r6
      00362D 80 E1            [24] 2262 	sjmp	00356$
      00362F                       2263 00103$:
                                   2264 ;	calc.c:137: printstr("PSVTOP\t");
      00362F 7F 3D            [12] 2265 	mov	r7,#___str_8
      003631 7E 8A            [12] 2266 	mov	r6,#(___str_8 >> 8)
      003633 7D 80            [12] 2267 	mov	r5,#0x80
                                   2268 ;	calc.c:51: return;
      003635                       2269 00359$:
                                   2270 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003635 8F 82            [24] 2271 	mov	dpl,r7
      003637 8E 83            [24] 2272 	mov	dph,r6
      003639 8D F0            [24] 2273 	mov	b,r5
      00363B 12 71 7E         [24] 2274 	lcall	__gptrget
      00363E FC               [12] 2275 	mov	r4,a
      00363F 60 10            [24] 2276 	jz	00255$
      003641 7B 00            [12] 2277 	mov	r3,#0x00
      003643 8C 82            [24] 2278 	mov	dpl,r4
      003645 8B 83            [24] 2279 	mov	dph,r3
      003647 12 2C 1F         [24] 2280 	lcall	_putchar
      00364A 0F               [12] 2281 	inc	r7
                                   2282 ;	calc.c:137: printstr("PSVTOP\t");
      00364B BF 00 E7         [24] 2283 	cjne	r7,#0x00,00359$
      00364E 0E               [12] 2284 	inc	r6
      00364F 80 E4            [24] 2285 	sjmp	00359$
      003651                       2286 00255$:
                                   2287 ;	calc.c:138: printall(d0);
      003651 E5 08            [12] 2288 	mov	a,_bp
      003653 24 15            [12] 2289 	add	a,#0x15
      003655 F8               [12] 2290 	mov	r0,a
      003656 86 07            [24] 2291 	mov	ar7,@r0
      003658 08               [12] 2292 	inc	r0
      003659 86 06            [24] 2293 	mov	ar6,@r0
      00365B 08               [12] 2294 	inc	r0
      00365C 86 05            [24] 2295 	mov	ar5,@r0
      00365E 08               [12] 2296 	inc	r0
      00365F 86 04            [24] 2297 	mov	ar4,@r0
      003661 E5 08            [12] 2298 	mov	a,_bp
      003663 24 1D            [12] 2299 	add	a,#0x1d
      003665 F8               [12] 2300 	mov	r0,a
      003666 A6 07            [24] 2301 	mov	@r0,ar7
      003668 08               [12] 2302 	inc	r0
      003669 A6 06            [24] 2303 	mov	@r0,ar6
      00366B 08               [12] 2304 	inc	r0
      00366C A6 05            [24] 2305 	mov	@r0,ar5
      00366E 08               [12] 2306 	inc	r0
      00366F A6 04            [24] 2307 	mov	@r0,ar4
                                   2308 ;	calc.c:64: printf("%08lx\t", d);
      003671 C0 07            [24] 2309 	push	ar7
      003673 C0 06            [24] 2310 	push	ar6
      003675 C0 05            [24] 2311 	push	ar5
      003677 C0 04            [24] 2312 	push	ar4
      003679 74 FF            [12] 2313 	mov	a,#___str_0
      00367B C0 E0            [24] 2314 	push	acc
      00367D 74 89            [12] 2315 	mov	a,#(___str_0 >> 8)
      00367F C0 E0            [24] 2316 	push	acc
      003681 74 80            [12] 2317 	mov	a,#0x80
      003683 C0 E0            [24] 2318 	push	acc
      003685 12 71 45         [24] 2319 	lcall	_printf
      003688 E5 81            [12] 2320 	mov	a,sp
      00368A 24 F9            [12] 2321 	add	a,#0xf9
      00368C F5 81            [12] 2322 	mov	sp,a
                                   2323 ;	calc.c:65: printf("% 11ld\t", d);
      00368E E5 08            [12] 2324 	mov	a,_bp
      003690 24 1D            [12] 2325 	add	a,#0x1d
      003692 F8               [12] 2326 	mov	r0,a
      003693 E6               [12] 2327 	mov	a,@r0
      003694 C0 E0            [24] 2328 	push	acc
      003696 08               [12] 2329 	inc	r0
      003697 E6               [12] 2330 	mov	a,@r0
      003698 C0 E0            [24] 2331 	push	acc
      00369A 08               [12] 2332 	inc	r0
      00369B E6               [12] 2333 	mov	a,@r0
      00369C C0 E0            [24] 2334 	push	acc
      00369E 08               [12] 2335 	inc	r0
      00369F E6               [12] 2336 	mov	a,@r0
      0036A0 C0 E0            [24] 2337 	push	acc
      0036A2 74 06            [12] 2338 	mov	a,#___str_1
      0036A4 C0 E0            [24] 2339 	push	acc
      0036A6 74 8A            [12] 2340 	mov	a,#(___str_1 >> 8)
      0036A8 C0 E0            [24] 2341 	push	acc
      0036AA 74 80            [12] 2342 	mov	a,#0x80
      0036AC C0 E0            [24] 2343 	push	acc
      0036AE 12 71 45         [24] 2344 	lcall	_printf
      0036B1 E5 81            [12] 2345 	mov	a,sp
      0036B3 24 F9            [12] 2346 	add	a,#0xf9
      0036B5 F5 81            [12] 2347 	mov	sp,a
                                   2348 ;	calc.c:66: printf("%011lo\t", d);
      0036B7 E5 08            [12] 2349 	mov	a,_bp
      0036B9 24 1D            [12] 2350 	add	a,#0x1d
      0036BB F8               [12] 2351 	mov	r0,a
      0036BC E6               [12] 2352 	mov	a,@r0
      0036BD C0 E0            [24] 2353 	push	acc
      0036BF 08               [12] 2354 	inc	r0
      0036C0 E6               [12] 2355 	mov	a,@r0
      0036C1 C0 E0            [24] 2356 	push	acc
      0036C3 08               [12] 2357 	inc	r0
      0036C4 E6               [12] 2358 	mov	a,@r0
      0036C5 C0 E0            [24] 2359 	push	acc
      0036C7 08               [12] 2360 	inc	r0
      0036C8 E6               [12] 2361 	mov	a,@r0
      0036C9 C0 E0            [24] 2362 	push	acc
      0036CB 74 0E            [12] 2363 	mov	a,#___str_2
      0036CD C0 E0            [24] 2364 	push	acc
      0036CF 74 8A            [12] 2365 	mov	a,#(___str_2 >> 8)
      0036D1 C0 E0            [24] 2366 	push	acc
      0036D3 74 80            [12] 2367 	mov	a,#0x80
      0036D5 C0 E0            [24] 2368 	push	acc
      0036D7 12 71 45         [24] 2369 	lcall	_printf
      0036DA E5 81            [12] 2370 	mov	a,sp
      0036DC 24 F9            [12] 2371 	add	a,#0xf9
      0036DE F5 81            [12] 2372 	mov	sp,a
                                   2373 ;	calc.c:67: printbin(d);
      0036E0 E5 08            [12] 2374 	mov	a,_bp
      0036E2 24 1D            [12] 2375 	add	a,#0x1d
      0036E4 F8               [12] 2376 	mov	r0,a
      0036E5 86 07            [24] 2377 	mov	ar7,@r0
      0036E7 08               [12] 2378 	inc	r0
      0036E8 86 06            [24] 2379 	mov	ar6,@r0
      0036EA 08               [12] 2380 	inc	r0
      0036EB 86 05            [24] 2381 	mov	ar5,@r0
      0036ED 08               [12] 2382 	inc	r0
      0036EE 86 02            [24] 2383 	mov	ar2,@r0
                                   2384 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      0036F0 E5 08            [12] 2385 	mov	a,_bp
      0036F2 24 21            [12] 2386 	add	a,#0x21
      0036F4 F8               [12] 2387 	mov	r0,a
      0036F5 E4               [12] 2388 	clr	a
      0036F6 F6               [12] 2389 	mov	@r0,a
      0036F7 08               [12] 2390 	inc	r0
      0036F8 F6               [12] 2391 	mov	@r0,a
      0036F9 08               [12] 2392 	inc	r0
      0036FA F6               [12] 2393 	mov	@r0,a
      0036FB 08               [12] 2394 	inc	r0
      0036FC 76 80            [12] 2395 	mov	@r0,#0x80
      0036FE                       2396 00361$:
                                   2397 ;	calc.c:58: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      0036FE E5 08            [12] 2398 	mov	a,_bp
      003700 24 07            [12] 2399 	add	a,#0x07
      003702 F8               [12] 2400 	mov	r0,a
      003703 A6 07            [24] 2401 	mov	@r0,ar7
      003705 08               [12] 2402 	inc	r0
      003706 A6 06            [24] 2403 	mov	@r0,ar6
      003708 08               [12] 2404 	inc	r0
      003709 A6 05            [24] 2405 	mov	@r0,ar5
      00370B 08               [12] 2406 	inc	r0
      00370C A6 02            [24] 2407 	mov	@r0,ar2
      00370E E5 08            [12] 2408 	mov	a,_bp
      003710 24 07            [12] 2409 	add	a,#0x07
      003712 F8               [12] 2410 	mov	r0,a
      003713 E5 08            [12] 2411 	mov	a,_bp
      003715 24 21            [12] 2412 	add	a,#0x21
      003717 F9               [12] 2413 	mov	r1,a
      003718 E7               [12] 2414 	mov	a,@r1
      003719 56               [12] 2415 	anl	a,@r0
      00371A F6               [12] 2416 	mov	@r0,a
      00371B 09               [12] 2417 	inc	r1
      00371C E7               [12] 2418 	mov	a,@r1
      00371D 08               [12] 2419 	inc	r0
      00371E 56               [12] 2420 	anl	a,@r0
      00371F F6               [12] 2421 	mov	@r0,a
      003720 09               [12] 2422 	inc	r1
      003721 E7               [12] 2423 	mov	a,@r1
      003722 08               [12] 2424 	inc	r0
      003723 56               [12] 2425 	anl	a,@r0
      003724 F6               [12] 2426 	mov	@r0,a
      003725 09               [12] 2427 	inc	r1
      003726 E7               [12] 2428 	mov	a,@r1
      003727 08               [12] 2429 	inc	r0
      003728 56               [12] 2430 	anl	a,@r0
      003729 F6               [12] 2431 	mov	@r0,a
      00372A E5 08            [12] 2432 	mov	a,_bp
      00372C 24 07            [12] 2433 	add	a,#0x07
      00372E F8               [12] 2434 	mov	r0,a
      00372F E6               [12] 2435 	mov	a,@r0
      003730 08               [12] 2436 	inc	r0
      003731 46               [12] 2437 	orl	a,@r0
      003732 08               [12] 2438 	inc	r0
      003733 46               [12] 2439 	orl	a,@r0
      003734 08               [12] 2440 	inc	r0
      003735 46               [12] 2441 	orl	a,@r0
      003736 60 06            [24] 2442 	jz	00502$
      003738 7B 31            [12] 2443 	mov	r3,#0x31
      00373A 7C 00            [12] 2444 	mov	r4,#0x00
      00373C 80 04            [24] 2445 	sjmp	00503$
      00373E                       2446 00502$:
      00373E 7B 30            [12] 2447 	mov	r3,#0x30
      003740 7C 00            [12] 2448 	mov	r4,#0x00
      003742                       2449 00503$:
      003742 8B 82            [24] 2450 	mov	dpl,r3
      003744 8C 83            [24] 2451 	mov	dph,r4
      003746 12 2C 1F         [24] 2452 	lcall	_putchar
                                   2453 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      003749 E5 08            [12] 2454 	mov	a,_bp
      00374B 24 21            [12] 2455 	add	a,#0x21
      00374D F8               [12] 2456 	mov	r0,a
      00374E 08               [12] 2457 	inc	r0
      00374F 08               [12] 2458 	inc	r0
      003750 08               [12] 2459 	inc	r0
      003751 E6               [12] 2460 	mov	a,@r0
      003752 C3               [12] 2461 	clr	c
      003753 13               [12] 2462 	rrc	a
      003754 F6               [12] 2463 	mov	@r0,a
      003755 18               [12] 2464 	dec	r0
      003756 E6               [12] 2465 	mov	a,@r0
      003757 13               [12] 2466 	rrc	a
      003758 F6               [12] 2467 	mov	@r0,a
      003759 18               [12] 2468 	dec	r0
      00375A E6               [12] 2469 	mov	a,@r0
      00375B 13               [12] 2470 	rrc	a
      00375C F6               [12] 2471 	mov	@r0,a
      00375D 18               [12] 2472 	dec	r0
      00375E E6               [12] 2473 	mov	a,@r0
      00375F 13               [12] 2474 	rrc	a
      003760 F6               [12] 2475 	mov	@r0,a
      003761 E5 08            [12] 2476 	mov	a,_bp
      003763 24 21            [12] 2477 	add	a,#0x21
      003765 F8               [12] 2478 	mov	r0,a
      003766 E6               [12] 2479 	mov	a,@r0
      003767 08               [12] 2480 	inc	r0
      003768 46               [12] 2481 	orl	a,@r0
      003769 08               [12] 2482 	inc	r0
      00376A 46               [12] 2483 	orl	a,@r0
      00376B 08               [12] 2484 	inc	r0
      00376C 46               [12] 2485 	orl	a,@r0
      00376D 70 8F            [24] 2486 	jnz	00361$
                                   2487 ;	calc.c:139: printstr("\r\n");
      00376F 7F 16            [12] 2488 	mov	r7,#___str_3
      003771 7E 8A            [12] 2489 	mov	r6,#(___str_3 >> 8)
      003773 7D 80            [12] 2490 	mov	r5,#0x80
                                   2491 ;	calc.c:51: return;
      003775                       2492 00364$:
                                   2493 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003775 8F 82            [24] 2494 	mov	dpl,r7
      003777 8E 83            [24] 2495 	mov	dph,r6
      003779 8D F0            [24] 2496 	mov	b,r5
      00377B 12 71 7E         [24] 2497 	lcall	__gptrget
      00377E FC               [12] 2498 	mov	r4,a
      00377F 70 03            [24] 2499 	jnz	01269$
      003781 02 57 B4         [24] 2500 	ljmp	00249$
      003784                       2501 01269$:
      003784 7B 00            [12] 2502 	mov	r3,#0x00
      003786 8C 82            [24] 2503 	mov	dpl,r4
      003788 8B 83            [24] 2504 	mov	dph,r3
      00378A 12 2C 1F         [24] 2505 	lcall	_putchar
      00378D 0F               [12] 2506 	inc	r7
                                   2507 ;	calc.c:142: case 'V':
      00378E BF 00 E4         [24] 2508 	cjne	r7,#0x00,00364$
      003791 0E               [12] 2509 	inc	r6
      003792 80 E1            [24] 2510 	sjmp	00364$
      003794                       2511 00105$:
                                   2512 ;	calc.c:143: printstr("\r\n");
      003794 7F 16            [12] 2513 	mov	r7,#___str_3
      003796 7E 8A            [12] 2514 	mov	r6,#(___str_3 >> 8)
      003798 7D 80            [12] 2515 	mov	r5,#0x80
                                   2516 ;	calc.c:51: return;
      00379A                       2517 00367$:
                                   2518 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00379A 8F 82            [24] 2519 	mov	dpl,r7
      00379C 8E 83            [24] 2520 	mov	dph,r6
      00379E 8D F0            [24] 2521 	mov	b,r5
      0037A0 12 71 7E         [24] 2522 	lcall	__gptrget
      0037A3 FC               [12] 2523 	mov	r4,a
      0037A4 60 10            [24] 2524 	jz	00262$
      0037A6 7B 00            [12] 2525 	mov	r3,#0x00
      0037A8 8C 82            [24] 2526 	mov	dpl,r4
      0037AA 8B 83            [24] 2527 	mov	dph,r3
      0037AC 12 2C 1F         [24] 2528 	lcall	_putchar
      0037AF 0F               [12] 2529 	inc	r7
                                   2530 ;	calc.c:143: printstr("\r\n");
      0037B0 BF 00 E7         [24] 2531 	cjne	r7,#0x00,00367$
      0037B3 0E               [12] 2532 	inc	r6
      0037B4 80 E4            [24] 2533 	sjmp	00367$
      0037B6                       2534 00262$:
                                   2535 ;	calc.c:144: if (!stack_iter_peek(ctx->ps, dump_peek, ctx)) printstr("stack underflow\r\n");
      0037B6 E5 08            [12] 2536 	mov	a,_bp
      0037B8 24 12            [12] 2537 	add	a,#0x12
      0037BA F8               [12] 2538 	mov	r0,a
      0037BB 86 07            [24] 2539 	mov	ar7,@r0
      0037BD 08               [12] 2540 	inc	r0
      0037BE 86 06            [24] 2541 	mov	ar6,@r0
      0037C0 08               [12] 2542 	inc	r0
      0037C1 86 05            [24] 2543 	mov	ar5,@r0
      0037C3 E5 08            [12] 2544 	mov	a,_bp
      0037C5 24 12            [12] 2545 	add	a,#0x12
      0037C7 F8               [12] 2546 	mov	r0,a
      0037C8 74 13            [12] 2547 	mov	a,#0x13
      0037CA 26               [12] 2548 	add	a,@r0
      0037CB FA               [12] 2549 	mov	r2,a
      0037CC 74 40            [12] 2550 	mov	a,#0x40
      0037CE 08               [12] 2551 	inc	r0
      0037CF 36               [12] 2552 	addc	a,@r0
      0037D0 FB               [12] 2553 	mov	r3,a
      0037D1 08               [12] 2554 	inc	r0
      0037D2 86 04            [24] 2555 	mov	ar4,@r0
      0037D4 8A 82            [24] 2556 	mov	dpl,r2
      0037D6 8B 83            [24] 2557 	mov	dph,r3
      0037D8 8C F0            [24] 2558 	mov	b,r4
      0037DA 12 71 7E         [24] 2559 	lcall	__gptrget
      0037DD FA               [12] 2560 	mov	r2,a
      0037DE A3               [24] 2561 	inc	dptr
      0037DF 12 71 7E         [24] 2562 	lcall	__gptrget
      0037E2 FB               [12] 2563 	mov	r3,a
      0037E3 A3               [24] 2564 	inc	dptr
      0037E4 12 71 7E         [24] 2565 	lcall	__gptrget
      0037E7 FC               [12] 2566 	mov	r4,a
      0037E8 C0 07            [24] 2567 	push	ar7
      0037EA C0 06            [24] 2568 	push	ar6
      0037EC C0 05            [24] 2569 	push	ar5
      0037EE 74 5A            [12] 2570 	mov	a,#_dump_peek
      0037F0 C0 E0            [24] 2571 	push	acc
      0037F2 74 33            [12] 2572 	mov	a,#(_dump_peek >> 8)
      0037F4 C0 E0            [24] 2573 	push	acc
      0037F6 8A 82            [24] 2574 	mov	dpl,r2
      0037F8 8B 83            [24] 2575 	mov	dph,r3
      0037FA 8C F0            [24] 2576 	mov	b,r4
      0037FC 12 2B 2E         [24] 2577 	lcall	_stack_iter_peek
      0037FF AB 82            [24] 2578 	mov	r3,dpl
      003801 AC 83            [24] 2579 	mov	r4,dph
      003803 E5 81            [12] 2580 	mov	a,sp
      003805 24 FB            [12] 2581 	add	a,#0xfb
      003807 F5 81            [12] 2582 	mov	sp,a
      003809 EB               [12] 2583 	mov	a,r3
      00380A 4C               [12] 2584 	orl	a,r4
      00380B 60 03            [24] 2585 	jz	01273$
      00380D 02 57 B4         [24] 2586 	ljmp	00249$
      003810                       2587 01273$:
      003810 7F 19            [12] 2588 	mov	r7,#___str_4
      003812 7E 8A            [12] 2589 	mov	r6,#(___str_4 >> 8)
      003814 7D 80            [12] 2590 	mov	r5,#0x80
                                   2591 ;	calc.c:51: return;
      003816                       2592 00370$:
                                   2593 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003816 8F 82            [24] 2594 	mov	dpl,r7
      003818 8E 83            [24] 2595 	mov	dph,r6
      00381A 8D F0            [24] 2596 	mov	b,r5
      00381C 12 71 7E         [24] 2597 	lcall	__gptrget
      00381F FC               [12] 2598 	mov	r4,a
      003820 70 03            [24] 2599 	jnz	01274$
      003822 02 57 B4         [24] 2600 	ljmp	00249$
      003825                       2601 01274$:
      003825 7B 00            [12] 2602 	mov	r3,#0x00
      003827 8C 82            [24] 2603 	mov	dpl,r4
      003829 8B 83            [24] 2604 	mov	dph,r3
      00382B 12 2C 1F         [24] 2605 	lcall	_putchar
      00382E 0F               [12] 2606 	inc	r7
                                   2607 ;	calc.c:147: case 'p':
      00382F BF 00 E4         [24] 2608 	cjne	r7,#0x00,00370$
      003832 0E               [12] 2609 	inc	r6
      003833 80 E1            [24] 2610 	sjmp	00370$
      003835                       2611 00109$:
                                   2612 ;	calc.c:148: printstr("\r\n");
      003835 7F 16            [12] 2613 	mov	r7,#___str_3
      003837 7E 8A            [12] 2614 	mov	r6,#(___str_3 >> 8)
      003839 7D 80            [12] 2615 	mov	r5,#0x80
                                   2616 ;	calc.c:51: return;
      00383B                       2617 00373$:
                                   2618 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00383B 8F 82            [24] 2619 	mov	dpl,r7
      00383D 8E 83            [24] 2620 	mov	dph,r6
      00383F 8D F0            [24] 2621 	mov	b,r5
      003841 12 71 7E         [24] 2622 	lcall	__gptrget
      003844 FC               [12] 2623 	mov	r4,a
      003845 60 10            [24] 2624 	jz	00266$
      003847 7B 00            [12] 2625 	mov	r3,#0x00
      003849 8C 82            [24] 2626 	mov	dpl,r4
      00384B 8B 83            [24] 2627 	mov	dph,r3
      00384D 12 2C 1F         [24] 2628 	lcall	_putchar
      003850 0F               [12] 2629 	inc	r7
                                   2630 ;	calc.c:148: printstr("\r\n");
      003851 BF 00 E7         [24] 2631 	cjne	r7,#0x00,00373$
      003854 0E               [12] 2632 	inc	r6
      003855 80 E4            [24] 2633 	sjmp	00373$
      003857                       2634 00266$:
                                   2635 ;	calc.c:149: if (!stack_pop(ctx->ps, &d0)) printstr("stack underflow\r\n");
      003857 E5 08            [12] 2636 	mov	a,_bp
      003859 24 15            [12] 2637 	add	a,#0x15
      00385B FF               [12] 2638 	mov	r7,a
      00385C 7E 00            [12] 2639 	mov	r6,#0x00
      00385E 7D 40            [12] 2640 	mov	r5,#0x40
      003860 E5 08            [12] 2641 	mov	a,_bp
      003862 24 12            [12] 2642 	add	a,#0x12
      003864 F8               [12] 2643 	mov	r0,a
      003865 74 13            [12] 2644 	mov	a,#0x13
      003867 26               [12] 2645 	add	a,@r0
      003868 FA               [12] 2646 	mov	r2,a
      003869 ED               [12] 2647 	mov	a,r5
      00386A 08               [12] 2648 	inc	r0
      00386B 36               [12] 2649 	addc	a,@r0
      00386C FB               [12] 2650 	mov	r3,a
      00386D 08               [12] 2651 	inc	r0
      00386E 86 04            [24] 2652 	mov	ar4,@r0
      003870 8A 82            [24] 2653 	mov	dpl,r2
      003872 8B 83            [24] 2654 	mov	dph,r3
      003874 8C F0            [24] 2655 	mov	b,r4
      003876 12 71 7E         [24] 2656 	lcall	__gptrget
      003879 FA               [12] 2657 	mov	r2,a
      00387A A3               [24] 2658 	inc	dptr
      00387B 12 71 7E         [24] 2659 	lcall	__gptrget
      00387E FB               [12] 2660 	mov	r3,a
      00387F A3               [24] 2661 	inc	dptr
      003880 12 71 7E         [24] 2662 	lcall	__gptrget
      003883 FC               [12] 2663 	mov	r4,a
      003884 C0 07            [24] 2664 	push	ar7
      003886 C0 06            [24] 2665 	push	ar6
      003888 C0 05            [24] 2666 	push	ar5
      00388A 8A 82            [24] 2667 	mov	dpl,r2
      00388C 8B 83            [24] 2668 	mov	dph,r3
      00388E 8C F0            [24] 2669 	mov	b,r4
      003890 12 27 B4         [24] 2670 	lcall	_stack_pop
      003893 AB 82            [24] 2671 	mov	r3,dpl
      003895 AC 83            [24] 2672 	mov	r4,dph
      003897 15 81            [12] 2673 	dec	sp
      003899 15 81            [12] 2674 	dec	sp
      00389B 15 81            [12] 2675 	dec	sp
      00389D EB               [12] 2676 	mov	a,r3
      00389E 4C               [12] 2677 	orl	a,r4
      00389F 70 25            [24] 2678 	jnz	00111$
      0038A1 7F 19            [12] 2679 	mov	r7,#___str_4
      0038A3 7E 8A            [12] 2680 	mov	r6,#(___str_4 >> 8)
      0038A5 7D 80            [12] 2681 	mov	r5,#0x80
                                   2682 ;	calc.c:51: return;
      0038A7                       2683 00376$:
                                   2684 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0038A7 8F 82            [24] 2685 	mov	dpl,r7
      0038A9 8E 83            [24] 2686 	mov	dph,r6
      0038AB 8D F0            [24] 2687 	mov	b,r5
      0038AD 12 71 7E         [24] 2688 	lcall	__gptrget
      0038B0 FC               [12] 2689 	mov	r4,a
      0038B1 70 03            [24] 2690 	jnz	01279$
      0038B3 02 57 B4         [24] 2691 	ljmp	00249$
      0038B6                       2692 01279$:
      0038B6 7B 00            [12] 2693 	mov	r3,#0x00
      0038B8 8C 82            [24] 2694 	mov	dpl,r4
      0038BA 8B 83            [24] 2695 	mov	dph,r3
      0038BC 12 2C 1F         [24] 2696 	lcall	_putchar
      0038BF 0F               [12] 2697 	inc	r7
                                   2698 ;	calc.c:149: if (!stack_pop(ctx->ps, &d0)) printstr("stack underflow\r\n");
      0038C0 BF 00 E4         [24] 2699 	cjne	r7,#0x00,00376$
      0038C3 0E               [12] 2700 	inc	r6
      0038C4 80 E1            [24] 2701 	sjmp	00376$
      0038C6                       2702 00111$:
                                   2703 ;	calc.c:151: printstr("PSPTOP\t");
      0038C6 7F 45            [12] 2704 	mov	r7,#___str_9
      0038C8 7E 8A            [12] 2705 	mov	r6,#(___str_9 >> 8)
      0038CA 7D 80            [12] 2706 	mov	r5,#0x80
                                   2707 ;	calc.c:51: return;
      0038CC                       2708 00379$:
                                   2709 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0038CC 8F 82            [24] 2710 	mov	dpl,r7
      0038CE 8E 83            [24] 2711 	mov	dph,r6
      0038D0 8D F0            [24] 2712 	mov	b,r5
      0038D2 12 71 7E         [24] 2713 	lcall	__gptrget
      0038D5 FC               [12] 2714 	mov	r4,a
      0038D6 60 10            [24] 2715 	jz	00270$
      0038D8 7B 00            [12] 2716 	mov	r3,#0x00
      0038DA 8C 82            [24] 2717 	mov	dpl,r4
      0038DC 8B 83            [24] 2718 	mov	dph,r3
      0038DE 12 2C 1F         [24] 2719 	lcall	_putchar
      0038E1 0F               [12] 2720 	inc	r7
                                   2721 ;	calc.c:151: printstr("PSPTOP\t");
      0038E2 BF 00 E7         [24] 2722 	cjne	r7,#0x00,00379$
      0038E5 0E               [12] 2723 	inc	r6
      0038E6 80 E4            [24] 2724 	sjmp	00379$
      0038E8                       2725 00270$:
                                   2726 ;	calc.c:152: printall(d0);
      0038E8 E5 08            [12] 2727 	mov	a,_bp
      0038EA 24 15            [12] 2728 	add	a,#0x15
      0038EC F8               [12] 2729 	mov	r0,a
      0038ED 86 07            [24] 2730 	mov	ar7,@r0
      0038EF 08               [12] 2731 	inc	r0
      0038F0 86 06            [24] 2732 	mov	ar6,@r0
      0038F2 08               [12] 2733 	inc	r0
      0038F3 86 05            [24] 2734 	mov	ar5,@r0
      0038F5 08               [12] 2735 	inc	r0
      0038F6 86 04            [24] 2736 	mov	ar4,@r0
      0038F8 E5 08            [12] 2737 	mov	a,_bp
      0038FA 24 1D            [12] 2738 	add	a,#0x1d
      0038FC F8               [12] 2739 	mov	r0,a
      0038FD A6 07            [24] 2740 	mov	@r0,ar7
      0038FF 08               [12] 2741 	inc	r0
      003900 A6 06            [24] 2742 	mov	@r0,ar6
      003902 08               [12] 2743 	inc	r0
      003903 A6 05            [24] 2744 	mov	@r0,ar5
      003905 08               [12] 2745 	inc	r0
      003906 A6 04            [24] 2746 	mov	@r0,ar4
                                   2747 ;	calc.c:64: printf("%08lx\t", d);
      003908 C0 07            [24] 2748 	push	ar7
      00390A C0 06            [24] 2749 	push	ar6
      00390C C0 05            [24] 2750 	push	ar5
      00390E C0 04            [24] 2751 	push	ar4
      003910 74 FF            [12] 2752 	mov	a,#___str_0
      003912 C0 E0            [24] 2753 	push	acc
      003914 74 89            [12] 2754 	mov	a,#(___str_0 >> 8)
      003916 C0 E0            [24] 2755 	push	acc
      003918 74 80            [12] 2756 	mov	a,#0x80
      00391A C0 E0            [24] 2757 	push	acc
      00391C 12 71 45         [24] 2758 	lcall	_printf
      00391F E5 81            [12] 2759 	mov	a,sp
      003921 24 F9            [12] 2760 	add	a,#0xf9
      003923 F5 81            [12] 2761 	mov	sp,a
                                   2762 ;	calc.c:65: printf("% 11ld\t", d);
      003925 E5 08            [12] 2763 	mov	a,_bp
      003927 24 1D            [12] 2764 	add	a,#0x1d
      003929 F8               [12] 2765 	mov	r0,a
      00392A E6               [12] 2766 	mov	a,@r0
      00392B C0 E0            [24] 2767 	push	acc
      00392D 08               [12] 2768 	inc	r0
      00392E E6               [12] 2769 	mov	a,@r0
      00392F C0 E0            [24] 2770 	push	acc
      003931 08               [12] 2771 	inc	r0
      003932 E6               [12] 2772 	mov	a,@r0
      003933 C0 E0            [24] 2773 	push	acc
      003935 08               [12] 2774 	inc	r0
      003936 E6               [12] 2775 	mov	a,@r0
      003937 C0 E0            [24] 2776 	push	acc
      003939 74 06            [12] 2777 	mov	a,#___str_1
      00393B C0 E0            [24] 2778 	push	acc
      00393D 74 8A            [12] 2779 	mov	a,#(___str_1 >> 8)
      00393F C0 E0            [24] 2780 	push	acc
      003941 74 80            [12] 2781 	mov	a,#0x80
      003943 C0 E0            [24] 2782 	push	acc
      003945 12 71 45         [24] 2783 	lcall	_printf
      003948 E5 81            [12] 2784 	mov	a,sp
      00394A 24 F9            [12] 2785 	add	a,#0xf9
      00394C F5 81            [12] 2786 	mov	sp,a
                                   2787 ;	calc.c:66: printf("%011lo\t", d);
      00394E E5 08            [12] 2788 	mov	a,_bp
      003950 24 1D            [12] 2789 	add	a,#0x1d
      003952 F8               [12] 2790 	mov	r0,a
      003953 E6               [12] 2791 	mov	a,@r0
      003954 C0 E0            [24] 2792 	push	acc
      003956 08               [12] 2793 	inc	r0
      003957 E6               [12] 2794 	mov	a,@r0
      003958 C0 E0            [24] 2795 	push	acc
      00395A 08               [12] 2796 	inc	r0
      00395B E6               [12] 2797 	mov	a,@r0
      00395C C0 E0            [24] 2798 	push	acc
      00395E 08               [12] 2799 	inc	r0
      00395F E6               [12] 2800 	mov	a,@r0
      003960 C0 E0            [24] 2801 	push	acc
      003962 74 0E            [12] 2802 	mov	a,#___str_2
      003964 C0 E0            [24] 2803 	push	acc
      003966 74 8A            [12] 2804 	mov	a,#(___str_2 >> 8)
      003968 C0 E0            [24] 2805 	push	acc
      00396A 74 80            [12] 2806 	mov	a,#0x80
      00396C C0 E0            [24] 2807 	push	acc
      00396E 12 71 45         [24] 2808 	lcall	_printf
      003971 E5 81            [12] 2809 	mov	a,sp
      003973 24 F9            [12] 2810 	add	a,#0xf9
      003975 F5 81            [12] 2811 	mov	sp,a
                                   2812 ;	calc.c:67: printbin(d);
      003977 E5 08            [12] 2813 	mov	a,_bp
      003979 24 1D            [12] 2814 	add	a,#0x1d
      00397B F8               [12] 2815 	mov	r0,a
      00397C 86 07            [24] 2816 	mov	ar7,@r0
      00397E 08               [12] 2817 	inc	r0
      00397F 86 06            [24] 2818 	mov	ar6,@r0
      003981 08               [12] 2819 	inc	r0
      003982 86 05            [24] 2820 	mov	ar5,@r0
      003984 08               [12] 2821 	inc	r0
      003985 86 02            [24] 2822 	mov	ar2,@r0
                                   2823 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      003987 E5 08            [12] 2824 	mov	a,_bp
      003989 24 21            [12] 2825 	add	a,#0x21
      00398B F8               [12] 2826 	mov	r0,a
      00398C E4               [12] 2827 	clr	a
      00398D F6               [12] 2828 	mov	@r0,a
      00398E 08               [12] 2829 	inc	r0
      00398F F6               [12] 2830 	mov	@r0,a
      003990 08               [12] 2831 	inc	r0
      003991 F6               [12] 2832 	mov	@r0,a
      003992 08               [12] 2833 	inc	r0
      003993 76 80            [12] 2834 	mov	@r0,#0x80
      003995                       2835 00381$:
                                   2836 ;	calc.c:58: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      003995 E5 08            [12] 2837 	mov	a,_bp
      003997 24 07            [12] 2838 	add	a,#0x07
      003999 F8               [12] 2839 	mov	r0,a
      00399A A6 07            [24] 2840 	mov	@r0,ar7
      00399C 08               [12] 2841 	inc	r0
      00399D A6 06            [24] 2842 	mov	@r0,ar6
      00399F 08               [12] 2843 	inc	r0
      0039A0 A6 05            [24] 2844 	mov	@r0,ar5
      0039A2 08               [12] 2845 	inc	r0
      0039A3 A6 02            [24] 2846 	mov	@r0,ar2
      0039A5 E5 08            [12] 2847 	mov	a,_bp
      0039A7 24 07            [12] 2848 	add	a,#0x07
      0039A9 F8               [12] 2849 	mov	r0,a
      0039AA E5 08            [12] 2850 	mov	a,_bp
      0039AC 24 21            [12] 2851 	add	a,#0x21
      0039AE F9               [12] 2852 	mov	r1,a
      0039AF E7               [12] 2853 	mov	a,@r1
      0039B0 56               [12] 2854 	anl	a,@r0
      0039B1 F6               [12] 2855 	mov	@r0,a
      0039B2 09               [12] 2856 	inc	r1
      0039B3 E7               [12] 2857 	mov	a,@r1
      0039B4 08               [12] 2858 	inc	r0
      0039B5 56               [12] 2859 	anl	a,@r0
      0039B6 F6               [12] 2860 	mov	@r0,a
      0039B7 09               [12] 2861 	inc	r1
      0039B8 E7               [12] 2862 	mov	a,@r1
      0039B9 08               [12] 2863 	inc	r0
      0039BA 56               [12] 2864 	anl	a,@r0
      0039BB F6               [12] 2865 	mov	@r0,a
      0039BC 09               [12] 2866 	inc	r1
      0039BD E7               [12] 2867 	mov	a,@r1
      0039BE 08               [12] 2868 	inc	r0
      0039BF 56               [12] 2869 	anl	a,@r0
      0039C0 F6               [12] 2870 	mov	@r0,a
      0039C1 E5 08            [12] 2871 	mov	a,_bp
      0039C3 24 07            [12] 2872 	add	a,#0x07
      0039C5 F8               [12] 2873 	mov	r0,a
      0039C6 E6               [12] 2874 	mov	a,@r0
      0039C7 08               [12] 2875 	inc	r0
      0039C8 46               [12] 2876 	orl	a,@r0
      0039C9 08               [12] 2877 	inc	r0
      0039CA 46               [12] 2878 	orl	a,@r0
      0039CB 08               [12] 2879 	inc	r0
      0039CC 46               [12] 2880 	orl	a,@r0
      0039CD 60 06            [24] 2881 	jz	00504$
      0039CF 7B 31            [12] 2882 	mov	r3,#0x31
      0039D1 7C 00            [12] 2883 	mov	r4,#0x00
      0039D3 80 04            [24] 2884 	sjmp	00505$
      0039D5                       2885 00504$:
      0039D5 7B 30            [12] 2886 	mov	r3,#0x30
      0039D7 7C 00            [12] 2887 	mov	r4,#0x00
      0039D9                       2888 00505$:
      0039D9 8B 82            [24] 2889 	mov	dpl,r3
      0039DB 8C 83            [24] 2890 	mov	dph,r4
      0039DD 12 2C 1F         [24] 2891 	lcall	_putchar
                                   2892 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      0039E0 E5 08            [12] 2893 	mov	a,_bp
      0039E2 24 21            [12] 2894 	add	a,#0x21
      0039E4 F8               [12] 2895 	mov	r0,a
      0039E5 08               [12] 2896 	inc	r0
      0039E6 08               [12] 2897 	inc	r0
      0039E7 08               [12] 2898 	inc	r0
      0039E8 E6               [12] 2899 	mov	a,@r0
      0039E9 C3               [12] 2900 	clr	c
      0039EA 13               [12] 2901 	rrc	a
      0039EB F6               [12] 2902 	mov	@r0,a
      0039EC 18               [12] 2903 	dec	r0
      0039ED E6               [12] 2904 	mov	a,@r0
      0039EE 13               [12] 2905 	rrc	a
      0039EF F6               [12] 2906 	mov	@r0,a
      0039F0 18               [12] 2907 	dec	r0
      0039F1 E6               [12] 2908 	mov	a,@r0
      0039F2 13               [12] 2909 	rrc	a
      0039F3 F6               [12] 2910 	mov	@r0,a
      0039F4 18               [12] 2911 	dec	r0
      0039F5 E6               [12] 2912 	mov	a,@r0
      0039F6 13               [12] 2913 	rrc	a
      0039F7 F6               [12] 2914 	mov	@r0,a
      0039F8 E5 08            [12] 2915 	mov	a,_bp
      0039FA 24 21            [12] 2916 	add	a,#0x21
      0039FC F8               [12] 2917 	mov	r0,a
      0039FD E6               [12] 2918 	mov	a,@r0
      0039FE 08               [12] 2919 	inc	r0
      0039FF 46               [12] 2920 	orl	a,@r0
      003A00 08               [12] 2921 	inc	r0
      003A01 46               [12] 2922 	orl	a,@r0
      003A02 08               [12] 2923 	inc	r0
      003A03 46               [12] 2924 	orl	a,@r0
      003A04 70 8F            [24] 2925 	jnz	00381$
                                   2926 ;	calc.c:153: printstr("\r\n");
      003A06 7F 16            [12] 2927 	mov	r7,#___str_3
      003A08 7E 8A            [12] 2928 	mov	r6,#(___str_3 >> 8)
      003A0A 7D 80            [12] 2929 	mov	r5,#0x80
                                   2930 ;	calc.c:51: return;
      003A0C                       2931 00384$:
                                   2932 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003A0C 8F 82            [24] 2933 	mov	dpl,r7
      003A0E 8E 83            [24] 2934 	mov	dph,r6
      003A10 8D F0            [24] 2935 	mov	b,r5
      003A12 12 71 7E         [24] 2936 	lcall	__gptrget
      003A15 FC               [12] 2937 	mov	r4,a
      003A16 70 03            [24] 2938 	jnz	01285$
      003A18 02 57 B4         [24] 2939 	ljmp	00249$
      003A1B                       2940 01285$:
      003A1B 7B 00            [12] 2941 	mov	r3,#0x00
      003A1D 8C 82            [24] 2942 	mov	dpl,r4
      003A1F 8B 83            [24] 2943 	mov	dph,r3
      003A21 12 2C 1F         [24] 2944 	lcall	_putchar
      003A24 0F               [12] 2945 	inc	r7
                                   2946 ;	calc.c:156: case 'P':
      003A25 BF 00 E4         [24] 2947 	cjne	r7,#0x00,00384$
      003A28 0E               [12] 2948 	inc	r6
      003A29 80 E1            [24] 2949 	sjmp	00384$
      003A2B                       2950 00113$:
                                   2951 ;	calc.c:157: printstr("\r\n");
      003A2B 7F 16            [12] 2952 	mov	r7,#___str_3
      003A2D 7E 8A            [12] 2953 	mov	r6,#(___str_3 >> 8)
      003A2F 7D 80            [12] 2954 	mov	r5,#0x80
                                   2955 ;	calc.c:51: return;
      003A31                       2956 00387$:
                                   2957 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003A31 8F 82            [24] 2958 	mov	dpl,r7
      003A33 8E 83            [24] 2959 	mov	dph,r6
      003A35 8D F0            [24] 2960 	mov	b,r5
      003A37 12 71 7E         [24] 2961 	lcall	__gptrget
      003A3A FC               [12] 2962 	mov	r4,a
      003A3B 60 10            [24] 2963 	jz	00277$
      003A3D 7B 00            [12] 2964 	mov	r3,#0x00
      003A3F 8C 82            [24] 2965 	mov	dpl,r4
      003A41 8B 83            [24] 2966 	mov	dph,r3
      003A43 12 2C 1F         [24] 2967 	lcall	_putchar
      003A46 0F               [12] 2968 	inc	r7
                                   2969 ;	calc.c:157: printstr("\r\n");
      003A47 BF 00 E7         [24] 2970 	cjne	r7,#0x00,00387$
      003A4A 0E               [12] 2971 	inc	r6
      003A4B 80 E4            [24] 2972 	sjmp	00387$
      003A4D                       2973 00277$:
                                   2974 ;	calc.c:158: (void)dump_pop(_ctx, delta);
      003A4D E5 08            [12] 2975 	mov	a,_bp
      003A4F 24 FB            [12] 2976 	add	a,#0xfb
      003A51 F8               [12] 2977 	mov	r0,a
      003A52 E6               [12] 2978 	mov	a,@r0
      003A53 C0 E0            [24] 2979 	push	acc
      003A55 08               [12] 2980 	inc	r0
      003A56 E6               [12] 2981 	mov	a,@r0
      003A57 C0 E0            [24] 2982 	push	acc
      003A59 08               [12] 2983 	inc	r0
      003A5A E6               [12] 2984 	mov	a,@r0
      003A5B C0 E0            [24] 2985 	push	acc
      003A5D A8 08            [24] 2986 	mov	r0,_bp
      003A5F 08               [12] 2987 	inc	r0
      003A60 86 82            [24] 2988 	mov	dpl,@r0
      003A62 08               [12] 2989 	inc	r0
      003A63 86 83            [24] 2990 	mov	dph,@r0
      003A65 08               [12] 2991 	inc	r0
      003A66 86 F0            [24] 2992 	mov	b,@r0
      003A68 12 2D B2         [24] 2993 	lcall	_dump_pop
      003A6B 15 81            [12] 2994 	dec	sp
      003A6D 15 81            [12] 2995 	dec	sp
      003A6F 15 81            [12] 2996 	dec	sp
                                   2997 ;	calc.c:159: break;
      003A71 02 57 B4         [24] 2998 	ljmp	00249$
                                   2999 ;	calc.c:160: case 'x':
      003A74                       3000 00114$:
                                   3001 ;	calc.c:161: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003A74 E5 08            [12] 3002 	mov	a,_bp
      003A76 24 15            [12] 3003 	add	a,#0x15
      003A78 FF               [12] 3004 	mov	r7,a
      003A79 7E 00            [12] 3005 	mov	r6,#0x00
      003A7B 7D 40            [12] 3006 	mov	r5,#0x40
      003A7D E5 08            [12] 3007 	mov	a,_bp
      003A7F 24 12            [12] 3008 	add	a,#0x12
      003A81 F8               [12] 3009 	mov	r0,a
      003A82 E5 08            [12] 3010 	mov	a,_bp
      003A84 24 07            [12] 3011 	add	a,#0x07
      003A86 F9               [12] 3012 	mov	r1,a
      003A87 74 13            [12] 3013 	mov	a,#0x13
      003A89 26               [12] 3014 	add	a,@r0
      003A8A F7               [12] 3015 	mov	@r1,a
      003A8B 74 40            [12] 3016 	mov	a,#0x40
      003A8D 08               [12] 3017 	inc	r0
      003A8E 36               [12] 3018 	addc	a,@r0
      003A8F 09               [12] 3019 	inc	r1
      003A90 F7               [12] 3020 	mov	@r1,a
      003A91 08               [12] 3021 	inc	r0
      003A92 09               [12] 3022 	inc	r1
      003A93 E6               [12] 3023 	mov	a,@r0
      003A94 F7               [12] 3024 	mov	@r1,a
      003A95 E5 08            [12] 3025 	mov	a,_bp
      003A97 24 07            [12] 3026 	add	a,#0x07
      003A99 F8               [12] 3027 	mov	r0,a
      003A9A 86 82            [24] 3028 	mov	dpl,@r0
      003A9C 08               [12] 3029 	inc	r0
      003A9D 86 83            [24] 3030 	mov	dph,@r0
      003A9F 08               [12] 3031 	inc	r0
      003AA0 86 F0            [24] 3032 	mov	b,@r0
      003AA2 12 71 7E         [24] 3033 	lcall	__gptrget
      003AA5 FA               [12] 3034 	mov	r2,a
      003AA6 A3               [24] 3035 	inc	dptr
      003AA7 12 71 7E         [24] 3036 	lcall	__gptrget
      003AAA FB               [12] 3037 	mov	r3,a
      003AAB A3               [24] 3038 	inc	dptr
      003AAC 12 71 7E         [24] 3039 	lcall	__gptrget
      003AAF FC               [12] 3040 	mov	r4,a
      003AB0 C0 07            [24] 3041 	push	ar7
      003AB2 C0 06            [24] 3042 	push	ar6
      003AB4 C0 05            [24] 3043 	push	ar5
      003AB6 8A 82            [24] 3044 	mov	dpl,r2
      003AB8 8B 83            [24] 3045 	mov	dph,r3
      003ABA 8C F0            [24] 3046 	mov	b,r4
      003ABC 12 27 B4         [24] 3047 	lcall	_stack_pop
      003ABF AB 82            [24] 3048 	mov	r3,dpl
      003AC1 AC 83            [24] 3049 	mov	r4,dph
      003AC3 15 81            [12] 3050 	dec	sp
      003AC5 15 81            [12] 3051 	dec	sp
      003AC7 15 81            [12] 3052 	dec	sp
      003AC9 EB               [12] 3053 	mov	a,r3
      003ACA 4C               [12] 3054 	orl	a,r4
      003ACB 70 25            [24] 3055 	jnz	00119$
      003ACD 7F 4D            [12] 3056 	mov	r7,#___str_10
      003ACF 7E 8A            [12] 3057 	mov	r6,#(___str_10 >> 8)
      003AD1 7D 80            [12] 3058 	mov	r5,#0x80
                                   3059 ;	calc.c:51: return;
      003AD3                       3060 00390$:
                                   3061 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003AD3 8F 82            [24] 3062 	mov	dpl,r7
      003AD5 8E 83            [24] 3063 	mov	dph,r6
      003AD7 8D F0            [24] 3064 	mov	b,r5
      003AD9 12 71 7E         [24] 3065 	lcall	__gptrget
      003ADC FC               [12] 3066 	mov	r4,a
      003ADD 70 03            [24] 3067 	jnz	01290$
      003ADF 02 57 B4         [24] 3068 	ljmp	00249$
      003AE2                       3069 01290$:
      003AE2 7B 00            [12] 3070 	mov	r3,#0x00
      003AE4 8C 82            [24] 3071 	mov	dpl,r4
      003AE6 8B 83            [24] 3072 	mov	dph,r3
      003AE8 12 2C 1F         [24] 3073 	lcall	_putchar
      003AEB 0F               [12] 3074 	inc	r7
                                   3075 ;	calc.c:161: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003AEC BF 00 E4         [24] 3076 	cjne	r7,#0x00,00390$
      003AEF 0E               [12] 3077 	inc	r6
      003AF0 80 E1            [24] 3078 	sjmp	00390$
      003AF2                       3079 00119$:
                                   3080 ;	calc.c:162: else if (!stack_pop(ctx->ps, &d1)) {
      003AF2 E5 08            [12] 3081 	mov	a,_bp
      003AF4 24 19            [12] 3082 	add	a,#0x19
      003AF6 FF               [12] 3083 	mov	r7,a
      003AF7 7E 00            [12] 3084 	mov	r6,#0x00
      003AF9 7D 40            [12] 3085 	mov	r5,#0x40
      003AFB E5 08            [12] 3086 	mov	a,_bp
      003AFD 24 07            [12] 3087 	add	a,#0x07
      003AFF F8               [12] 3088 	mov	r0,a
      003B00 86 82            [24] 3089 	mov	dpl,@r0
      003B02 08               [12] 3090 	inc	r0
      003B03 86 83            [24] 3091 	mov	dph,@r0
      003B05 08               [12] 3092 	inc	r0
      003B06 86 F0            [24] 3093 	mov	b,@r0
      003B08 12 71 7E         [24] 3094 	lcall	__gptrget
      003B0B FA               [12] 3095 	mov	r2,a
      003B0C A3               [24] 3096 	inc	dptr
      003B0D 12 71 7E         [24] 3097 	lcall	__gptrget
      003B10 FB               [12] 3098 	mov	r3,a
      003B11 A3               [24] 3099 	inc	dptr
      003B12 12 71 7E         [24] 3100 	lcall	__gptrget
      003B15 FC               [12] 3101 	mov	r4,a
      003B16 C0 07            [24] 3102 	push	ar7
      003B18 C0 06            [24] 3103 	push	ar6
      003B1A C0 05            [24] 3104 	push	ar5
      003B1C 8A 82            [24] 3105 	mov	dpl,r2
      003B1E 8B 83            [24] 3106 	mov	dph,r3
      003B20 8C F0            [24] 3107 	mov	b,r4
      003B22 12 27 B4         [24] 3108 	lcall	_stack_pop
      003B25 AB 82            [24] 3109 	mov	r3,dpl
      003B27 AC 83            [24] 3110 	mov	r4,dph
      003B29 15 81            [12] 3111 	dec	sp
      003B2B 15 81            [12] 3112 	dec	sp
      003B2D 15 81            [12] 3113 	dec	sp
      003B2F EB               [12] 3114 	mov	a,r3
      003B30 4C               [12] 3115 	orl	a,r4
      003B31 70 63            [24] 3116 	jnz	00116$
                                   3117 ;	calc.c:163: (void)stack_push(ctx->ps, d0);
      003B33 E5 08            [12] 3118 	mov	a,_bp
      003B35 24 07            [12] 3119 	add	a,#0x07
      003B37 F8               [12] 3120 	mov	r0,a
      003B38 86 82            [24] 3121 	mov	dpl,@r0
      003B3A 08               [12] 3122 	inc	r0
      003B3B 86 83            [24] 3123 	mov	dph,@r0
      003B3D 08               [12] 3124 	inc	r0
      003B3E 86 F0            [24] 3125 	mov	b,@r0
      003B40 12 71 7E         [24] 3126 	lcall	__gptrget
      003B43 FA               [12] 3127 	mov	r2,a
      003B44 A3               [24] 3128 	inc	dptr
      003B45 12 71 7E         [24] 3129 	lcall	__gptrget
      003B48 FB               [12] 3130 	mov	r3,a
      003B49 A3               [24] 3131 	inc	dptr
      003B4A 12 71 7E         [24] 3132 	lcall	__gptrget
      003B4D FC               [12] 3133 	mov	r4,a
      003B4E E5 08            [12] 3134 	mov	a,_bp
      003B50 24 15            [12] 3135 	add	a,#0x15
      003B52 F8               [12] 3136 	mov	r0,a
      003B53 E6               [12] 3137 	mov	a,@r0
      003B54 C0 E0            [24] 3138 	push	acc
      003B56 08               [12] 3139 	inc	r0
      003B57 E6               [12] 3140 	mov	a,@r0
      003B58 C0 E0            [24] 3141 	push	acc
      003B5A 08               [12] 3142 	inc	r0
      003B5B E6               [12] 3143 	mov	a,@r0
      003B5C C0 E0            [24] 3144 	push	acc
      003B5E 08               [12] 3145 	inc	r0
      003B5F E6               [12] 3146 	mov	a,@r0
      003B60 C0 E0            [24] 3147 	push	acc
      003B62 8A 82            [24] 3148 	mov	dpl,r2
      003B64 8B 83            [24] 3149 	mov	dph,r3
      003B66 8C F0            [24] 3150 	mov	b,r4
      003B68 12 26 BA         [24] 3151 	lcall	_stack_push
      003B6B E5 81            [12] 3152 	mov	a,sp
      003B6D 24 FC            [12] 3153 	add	a,#0xfc
      003B6F F5 81            [12] 3154 	mov	sp,a
                                   3155 ;	calc.c:164: printstr("\r\nstack underflow\r\n");
      003B71 7F 4D            [12] 3156 	mov	r7,#___str_10
      003B73 7E 8A            [12] 3157 	mov	r6,#(___str_10 >> 8)
      003B75 7D 80            [12] 3158 	mov	r5,#0x80
                                   3159 ;	calc.c:51: return;
      003B77                       3160 00393$:
                                   3161 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003B77 8F 82            [24] 3162 	mov	dpl,r7
      003B79 8E 83            [24] 3163 	mov	dph,r6
      003B7B 8D F0            [24] 3164 	mov	b,r5
      003B7D 12 71 7E         [24] 3165 	lcall	__gptrget
      003B80 FC               [12] 3166 	mov	r4,a
      003B81 70 03            [24] 3167 	jnz	01293$
      003B83 02 57 B4         [24] 3168 	ljmp	00249$
      003B86                       3169 01293$:
      003B86 7B 00            [12] 3170 	mov	r3,#0x00
      003B88 8C 82            [24] 3171 	mov	dpl,r4
      003B8A 8B 83            [24] 3172 	mov	dph,r3
      003B8C 12 2C 1F         [24] 3173 	lcall	_putchar
      003B8F 0F               [12] 3174 	inc	r7
                                   3175 ;	calc.c:164: printstr("\r\nstack underflow\r\n");
      003B90 BF 00 E4         [24] 3176 	cjne	r7,#0x00,00393$
      003B93 0E               [12] 3177 	inc	r6
      003B94 80 E1            [24] 3178 	sjmp	00393$
      003B96                       3179 00116$:
                                   3180 ;	calc.c:166: (void)stack_push(ctx->ps, d0);
      003B96 E5 08            [12] 3181 	mov	a,_bp
      003B98 24 07            [12] 3182 	add	a,#0x07
      003B9A F8               [12] 3183 	mov	r0,a
      003B9B 86 82            [24] 3184 	mov	dpl,@r0
      003B9D 08               [12] 3185 	inc	r0
      003B9E 86 83            [24] 3186 	mov	dph,@r0
      003BA0 08               [12] 3187 	inc	r0
      003BA1 86 F0            [24] 3188 	mov	b,@r0
      003BA3 12 71 7E         [24] 3189 	lcall	__gptrget
      003BA6 FA               [12] 3190 	mov	r2,a
      003BA7 A3               [24] 3191 	inc	dptr
      003BA8 12 71 7E         [24] 3192 	lcall	__gptrget
      003BAB FB               [12] 3193 	mov	r3,a
      003BAC A3               [24] 3194 	inc	dptr
      003BAD 12 71 7E         [24] 3195 	lcall	__gptrget
      003BB0 FC               [12] 3196 	mov	r4,a
      003BB1 E5 08            [12] 3197 	mov	a,_bp
      003BB3 24 15            [12] 3198 	add	a,#0x15
      003BB5 F8               [12] 3199 	mov	r0,a
      003BB6 E6               [12] 3200 	mov	a,@r0
      003BB7 C0 E0            [24] 3201 	push	acc
      003BB9 08               [12] 3202 	inc	r0
      003BBA E6               [12] 3203 	mov	a,@r0
      003BBB C0 E0            [24] 3204 	push	acc
      003BBD 08               [12] 3205 	inc	r0
      003BBE E6               [12] 3206 	mov	a,@r0
      003BBF C0 E0            [24] 3207 	push	acc
      003BC1 08               [12] 3208 	inc	r0
      003BC2 E6               [12] 3209 	mov	a,@r0
      003BC3 C0 E0            [24] 3210 	push	acc
      003BC5 8A 82            [24] 3211 	mov	dpl,r2
      003BC7 8B 83            [24] 3212 	mov	dph,r3
      003BC9 8C F0            [24] 3213 	mov	b,r4
      003BCB 12 26 BA         [24] 3214 	lcall	_stack_push
      003BCE E5 81            [12] 3215 	mov	a,sp
      003BD0 24 FC            [12] 3216 	add	a,#0xfc
      003BD2 F5 81            [12] 3217 	mov	sp,a
                                   3218 ;	calc.c:167: (void)stack_push(ctx->ps, d1);
      003BD4 E5 08            [12] 3219 	mov	a,_bp
      003BD6 24 07            [12] 3220 	add	a,#0x07
      003BD8 F8               [12] 3221 	mov	r0,a
      003BD9 86 82            [24] 3222 	mov	dpl,@r0
      003BDB 08               [12] 3223 	inc	r0
      003BDC 86 83            [24] 3224 	mov	dph,@r0
      003BDE 08               [12] 3225 	inc	r0
      003BDF 86 F0            [24] 3226 	mov	b,@r0
      003BE1 12 71 7E         [24] 3227 	lcall	__gptrget
      003BE4 FA               [12] 3228 	mov	r2,a
      003BE5 A3               [24] 3229 	inc	dptr
      003BE6 12 71 7E         [24] 3230 	lcall	__gptrget
      003BE9 FB               [12] 3231 	mov	r3,a
      003BEA A3               [24] 3232 	inc	dptr
      003BEB 12 71 7E         [24] 3233 	lcall	__gptrget
      003BEE FC               [12] 3234 	mov	r4,a
      003BEF E5 08            [12] 3235 	mov	a,_bp
      003BF1 24 19            [12] 3236 	add	a,#0x19
      003BF3 F8               [12] 3237 	mov	r0,a
      003BF4 E6               [12] 3238 	mov	a,@r0
      003BF5 C0 E0            [24] 3239 	push	acc
      003BF7 08               [12] 3240 	inc	r0
      003BF8 E6               [12] 3241 	mov	a,@r0
      003BF9 C0 E0            [24] 3242 	push	acc
      003BFB 08               [12] 3243 	inc	r0
      003BFC E6               [12] 3244 	mov	a,@r0
      003BFD C0 E0            [24] 3245 	push	acc
      003BFF 08               [12] 3246 	inc	r0
      003C00 E6               [12] 3247 	mov	a,@r0
      003C01 C0 E0            [24] 3248 	push	acc
      003C03 8A 82            [24] 3249 	mov	dpl,r2
      003C05 8B 83            [24] 3250 	mov	dph,r3
      003C07 8C F0            [24] 3251 	mov	b,r4
      003C09 12 26 BA         [24] 3252 	lcall	_stack_push
      003C0C E5 81            [12] 3253 	mov	a,sp
      003C0E 24 FC            [12] 3254 	add	a,#0xfc
      003C10 F5 81            [12] 3255 	mov	sp,a
                                   3256 ;	calc.c:169: break;
      003C12 02 57 B4         [24] 3257 	ljmp	00249$
                                   3258 ;	calc.c:170: case 'm':
      003C15                       3259 00121$:
                                   3260 ;	calc.c:171: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003C15 E5 08            [12] 3261 	mov	a,_bp
      003C17 24 15            [12] 3262 	add	a,#0x15
      003C19 FF               [12] 3263 	mov	r7,a
      003C1A 7E 00            [12] 3264 	mov	r6,#0x00
      003C1C 7D 40            [12] 3265 	mov	r5,#0x40
      003C1E E5 08            [12] 3266 	mov	a,_bp
      003C20 24 12            [12] 3267 	add	a,#0x12
      003C22 F8               [12] 3268 	mov	r0,a
      003C23 E5 08            [12] 3269 	mov	a,_bp
      003C25 24 07            [12] 3270 	add	a,#0x07
      003C27 F9               [12] 3271 	mov	r1,a
      003C28 74 13            [12] 3272 	mov	a,#0x13
      003C2A 26               [12] 3273 	add	a,@r0
      003C2B F7               [12] 3274 	mov	@r1,a
      003C2C 74 40            [12] 3275 	mov	a,#0x40
      003C2E 08               [12] 3276 	inc	r0
      003C2F 36               [12] 3277 	addc	a,@r0
      003C30 09               [12] 3278 	inc	r1
      003C31 F7               [12] 3279 	mov	@r1,a
      003C32 08               [12] 3280 	inc	r0
      003C33 09               [12] 3281 	inc	r1
      003C34 E6               [12] 3282 	mov	a,@r0
      003C35 F7               [12] 3283 	mov	@r1,a
      003C36 E5 08            [12] 3284 	mov	a,_bp
      003C38 24 07            [12] 3285 	add	a,#0x07
      003C3A F8               [12] 3286 	mov	r0,a
      003C3B 86 82            [24] 3287 	mov	dpl,@r0
      003C3D 08               [12] 3288 	inc	r0
      003C3E 86 83            [24] 3289 	mov	dph,@r0
      003C40 08               [12] 3290 	inc	r0
      003C41 86 F0            [24] 3291 	mov	b,@r0
      003C43 12 71 7E         [24] 3292 	lcall	__gptrget
      003C46 FA               [12] 3293 	mov	r2,a
      003C47 A3               [24] 3294 	inc	dptr
      003C48 12 71 7E         [24] 3295 	lcall	__gptrget
      003C4B FB               [12] 3296 	mov	r3,a
      003C4C A3               [24] 3297 	inc	dptr
      003C4D 12 71 7E         [24] 3298 	lcall	__gptrget
      003C50 FC               [12] 3299 	mov	r4,a
      003C51 C0 07            [24] 3300 	push	ar7
      003C53 C0 06            [24] 3301 	push	ar6
      003C55 C0 05            [24] 3302 	push	ar5
      003C57 8A 82            [24] 3303 	mov	dpl,r2
      003C59 8B 83            [24] 3304 	mov	dph,r3
      003C5B 8C F0            [24] 3305 	mov	b,r4
      003C5D 12 27 B4         [24] 3306 	lcall	_stack_pop
      003C60 AB 82            [24] 3307 	mov	r3,dpl
      003C62 AC 83            [24] 3308 	mov	r4,dph
      003C64 15 81            [12] 3309 	dec	sp
      003C66 15 81            [12] 3310 	dec	sp
      003C68 15 81            [12] 3311 	dec	sp
      003C6A EB               [12] 3312 	mov	a,r3
      003C6B 4C               [12] 3313 	orl	a,r4
      003C6C 70 25            [24] 3314 	jnz	00125$
      003C6E 7F 4D            [12] 3315 	mov	r7,#___str_10
      003C70 7E 8A            [12] 3316 	mov	r6,#(___str_10 >> 8)
      003C72 7D 80            [12] 3317 	mov	r5,#0x80
                                   3318 ;	calc.c:51: return;
      003C74                       3319 00396$:
                                   3320 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003C74 8F 82            [24] 3321 	mov	dpl,r7
      003C76 8E 83            [24] 3322 	mov	dph,r6
      003C78 8D F0            [24] 3323 	mov	b,r5
      003C7A 12 71 7E         [24] 3324 	lcall	__gptrget
      003C7D FC               [12] 3325 	mov	r4,a
      003C7E 70 03            [24] 3326 	jnz	01296$
      003C80 02 57 B4         [24] 3327 	ljmp	00249$
      003C83                       3328 01296$:
      003C83 7B 00            [12] 3329 	mov	r3,#0x00
      003C85 8C 82            [24] 3330 	mov	dpl,r4
      003C87 8B 83            [24] 3331 	mov	dph,r3
      003C89 12 2C 1F         [24] 3332 	lcall	_putchar
      003C8C 0F               [12] 3333 	inc	r7
                                   3334 ;	calc.c:171: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003C8D BF 00 E4         [24] 3335 	cjne	r7,#0x00,00396$
      003C90 0E               [12] 3336 	inc	r6
      003C91 80 E1            [24] 3337 	sjmp	00396$
      003C93                       3338 00125$:
                                   3339 ;	calc.c:173: if (!stack_push(ctx->ss, d0)) {
      003C93 E5 08            [12] 3340 	mov	a,_bp
      003C95 24 12            [12] 3341 	add	a,#0x12
      003C97 F8               [12] 3342 	mov	r0,a
      003C98 74 16            [12] 3343 	mov	a,#0x16
      003C9A 26               [12] 3344 	add	a,@r0
      003C9B FA               [12] 3345 	mov	r2,a
      003C9C 74 40            [12] 3346 	mov	a,#0x40
      003C9E 08               [12] 3347 	inc	r0
      003C9F 36               [12] 3348 	addc	a,@r0
      003CA0 FB               [12] 3349 	mov	r3,a
      003CA1 08               [12] 3350 	inc	r0
      003CA2 86 04            [24] 3351 	mov	ar4,@r0
      003CA4 8A 82            [24] 3352 	mov	dpl,r2
      003CA6 8B 83            [24] 3353 	mov	dph,r3
      003CA8 8C F0            [24] 3354 	mov	b,r4
      003CAA 12 71 7E         [24] 3355 	lcall	__gptrget
      003CAD FA               [12] 3356 	mov	r2,a
      003CAE A3               [24] 3357 	inc	dptr
      003CAF 12 71 7E         [24] 3358 	lcall	__gptrget
      003CB2 FB               [12] 3359 	mov	r3,a
      003CB3 A3               [24] 3360 	inc	dptr
      003CB4 12 71 7E         [24] 3361 	lcall	__gptrget
      003CB7 FC               [12] 3362 	mov	r4,a
      003CB8 E5 08            [12] 3363 	mov	a,_bp
      003CBA 24 15            [12] 3364 	add	a,#0x15
      003CBC F8               [12] 3365 	mov	r0,a
      003CBD E6               [12] 3366 	mov	a,@r0
      003CBE C0 E0            [24] 3367 	push	acc
      003CC0 08               [12] 3368 	inc	r0
      003CC1 E6               [12] 3369 	mov	a,@r0
      003CC2 C0 E0            [24] 3370 	push	acc
      003CC4 08               [12] 3371 	inc	r0
      003CC5 E6               [12] 3372 	mov	a,@r0
      003CC6 C0 E0            [24] 3373 	push	acc
      003CC8 08               [12] 3374 	inc	r0
      003CC9 E6               [12] 3375 	mov	a,@r0
      003CCA C0 E0            [24] 3376 	push	acc
      003CCC 8A 82            [24] 3377 	mov	dpl,r2
      003CCE 8B 83            [24] 3378 	mov	dph,r3
      003CD0 8C F0            [24] 3379 	mov	b,r4
      003CD2 12 26 BA         [24] 3380 	lcall	_stack_push
      003CD5 AB 82            [24] 3381 	mov	r3,dpl
      003CD7 AC 83            [24] 3382 	mov	r4,dph
      003CD9 E5 81            [12] 3383 	mov	a,sp
      003CDB 24 FC            [12] 3384 	add	a,#0xfc
      003CDD F5 81            [12] 3385 	mov	sp,a
      003CDF EB               [12] 3386 	mov	a,r3
      003CE0 4C               [12] 3387 	orl	a,r4
      003CE1 60 03            [24] 3388 	jz	01298$
      003CE3 02 57 B4         [24] 3389 	ljmp	00249$
      003CE6                       3390 01298$:
                                   3391 ;	calc.c:174: printstr("\r\nsecondary stack overflow\r\n");
      003CE6 7F 61            [12] 3392 	mov	r7,#___str_11
      003CE8 7E 8A            [12] 3393 	mov	r6,#(___str_11 >> 8)
      003CEA 7D 80            [12] 3394 	mov	r5,#0x80
                                   3395 ;	calc.c:51: return;
      003CEC                       3396 00399$:
                                   3397 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003CEC 8F 82            [24] 3398 	mov	dpl,r7
      003CEE 8E 83            [24] 3399 	mov	dph,r6
      003CF0 8D F0            [24] 3400 	mov	b,r5
      003CF2 12 71 7E         [24] 3401 	lcall	__gptrget
      003CF5 FC               [12] 3402 	mov	r4,a
      003CF6 60 10            [24] 3403 	jz	00285$
      003CF8 7B 00            [12] 3404 	mov	r3,#0x00
      003CFA 8C 82            [24] 3405 	mov	dpl,r4
      003CFC 8B 83            [24] 3406 	mov	dph,r3
      003CFE 12 2C 1F         [24] 3407 	lcall	_putchar
      003D01 0F               [12] 3408 	inc	r7
                                   3409 ;	calc.c:174: printstr("\r\nsecondary stack overflow\r\n");
      003D02 BF 00 E7         [24] 3410 	cjne	r7,#0x00,00399$
      003D05 0E               [12] 3411 	inc	r6
      003D06 80 E4            [24] 3412 	sjmp	00399$
      003D08                       3413 00285$:
                                   3414 ;	calc.c:175: (void)stack_push(ctx->ps, d0);
      003D08 E5 08            [12] 3415 	mov	a,_bp
      003D0A 24 07            [12] 3416 	add	a,#0x07
      003D0C F8               [12] 3417 	mov	r0,a
      003D0D 86 82            [24] 3418 	mov	dpl,@r0
      003D0F 08               [12] 3419 	inc	r0
      003D10 86 83            [24] 3420 	mov	dph,@r0
      003D12 08               [12] 3421 	inc	r0
      003D13 86 F0            [24] 3422 	mov	b,@r0
      003D15 12 71 7E         [24] 3423 	lcall	__gptrget
      003D18 FA               [12] 3424 	mov	r2,a
      003D19 A3               [24] 3425 	inc	dptr
      003D1A 12 71 7E         [24] 3426 	lcall	__gptrget
      003D1D FB               [12] 3427 	mov	r3,a
      003D1E A3               [24] 3428 	inc	dptr
      003D1F 12 71 7E         [24] 3429 	lcall	__gptrget
      003D22 FC               [12] 3430 	mov	r4,a
      003D23 E5 08            [12] 3431 	mov	a,_bp
      003D25 24 15            [12] 3432 	add	a,#0x15
      003D27 F8               [12] 3433 	mov	r0,a
      003D28 E6               [12] 3434 	mov	a,@r0
      003D29 C0 E0            [24] 3435 	push	acc
      003D2B 08               [12] 3436 	inc	r0
      003D2C E6               [12] 3437 	mov	a,@r0
      003D2D C0 E0            [24] 3438 	push	acc
      003D2F 08               [12] 3439 	inc	r0
      003D30 E6               [12] 3440 	mov	a,@r0
      003D31 C0 E0            [24] 3441 	push	acc
      003D33 08               [12] 3442 	inc	r0
      003D34 E6               [12] 3443 	mov	a,@r0
      003D35 C0 E0            [24] 3444 	push	acc
      003D37 8A 82            [24] 3445 	mov	dpl,r2
      003D39 8B 83            [24] 3446 	mov	dph,r3
      003D3B 8C F0            [24] 3447 	mov	b,r4
      003D3D 12 26 BA         [24] 3448 	lcall	_stack_push
      003D40 E5 81            [12] 3449 	mov	a,sp
      003D42 24 FC            [12] 3450 	add	a,#0xfc
      003D44 F5 81            [12] 3451 	mov	sp,a
                                   3452 ;	calc.c:178: break;
      003D46 02 57 B4         [24] 3453 	ljmp	00249$
                                   3454 ;	calc.c:179: case 'M':
      003D49                       3455 00127$:
                                   3456 ;	calc.c:180: if (!stack_pop(ctx->ss, &d0)) printstr("\r\nsecondary stack underflow\r\n");
      003D49 E5 08            [12] 3457 	mov	a,_bp
      003D4B 24 15            [12] 3458 	add	a,#0x15
      003D4D FF               [12] 3459 	mov	r7,a
      003D4E 7E 00            [12] 3460 	mov	r6,#0x00
      003D50 7D 40            [12] 3461 	mov	r5,#0x40
      003D52 E5 08            [12] 3462 	mov	a,_bp
      003D54 24 12            [12] 3463 	add	a,#0x12
      003D56 F8               [12] 3464 	mov	r0,a
      003D57 E5 08            [12] 3465 	mov	a,_bp
      003D59 24 07            [12] 3466 	add	a,#0x07
      003D5B F9               [12] 3467 	mov	r1,a
      003D5C 74 16            [12] 3468 	mov	a,#0x16
      003D5E 26               [12] 3469 	add	a,@r0
      003D5F F7               [12] 3470 	mov	@r1,a
      003D60 74 40            [12] 3471 	mov	a,#0x40
      003D62 08               [12] 3472 	inc	r0
      003D63 36               [12] 3473 	addc	a,@r0
      003D64 09               [12] 3474 	inc	r1
      003D65 F7               [12] 3475 	mov	@r1,a
      003D66 08               [12] 3476 	inc	r0
      003D67 09               [12] 3477 	inc	r1
      003D68 E6               [12] 3478 	mov	a,@r0
      003D69 F7               [12] 3479 	mov	@r1,a
      003D6A E5 08            [12] 3480 	mov	a,_bp
      003D6C 24 07            [12] 3481 	add	a,#0x07
      003D6E F8               [12] 3482 	mov	r0,a
      003D6F 86 82            [24] 3483 	mov	dpl,@r0
      003D71 08               [12] 3484 	inc	r0
      003D72 86 83            [24] 3485 	mov	dph,@r0
      003D74 08               [12] 3486 	inc	r0
      003D75 86 F0            [24] 3487 	mov	b,@r0
      003D77 12 71 7E         [24] 3488 	lcall	__gptrget
      003D7A FA               [12] 3489 	mov	r2,a
      003D7B A3               [24] 3490 	inc	dptr
      003D7C 12 71 7E         [24] 3491 	lcall	__gptrget
      003D7F FB               [12] 3492 	mov	r3,a
      003D80 A3               [24] 3493 	inc	dptr
      003D81 12 71 7E         [24] 3494 	lcall	__gptrget
      003D84 FC               [12] 3495 	mov	r4,a
      003D85 C0 07            [24] 3496 	push	ar7
      003D87 C0 06            [24] 3497 	push	ar6
      003D89 C0 05            [24] 3498 	push	ar5
      003D8B 8A 82            [24] 3499 	mov	dpl,r2
      003D8D 8B 83            [24] 3500 	mov	dph,r3
      003D8F 8C F0            [24] 3501 	mov	b,r4
      003D91 12 27 B4         [24] 3502 	lcall	_stack_pop
      003D94 AB 82            [24] 3503 	mov	r3,dpl
      003D96 AC 83            [24] 3504 	mov	r4,dph
      003D98 15 81            [12] 3505 	dec	sp
      003D9A 15 81            [12] 3506 	dec	sp
      003D9C 15 81            [12] 3507 	dec	sp
      003D9E EB               [12] 3508 	mov	a,r3
      003D9F 4C               [12] 3509 	orl	a,r4
      003DA0 70 25            [24] 3510 	jnz	00131$
      003DA2 7F 7E            [12] 3511 	mov	r7,#___str_12
      003DA4 7E 8A            [12] 3512 	mov	r6,#(___str_12 >> 8)
      003DA6 7D 80            [12] 3513 	mov	r5,#0x80
                                   3514 ;	calc.c:51: return;
      003DA8                       3515 00402$:
                                   3516 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003DA8 8F 82            [24] 3517 	mov	dpl,r7
      003DAA 8E 83            [24] 3518 	mov	dph,r6
      003DAC 8D F0            [24] 3519 	mov	b,r5
      003DAE 12 71 7E         [24] 3520 	lcall	__gptrget
      003DB1 FC               [12] 3521 	mov	r4,a
      003DB2 70 03            [24] 3522 	jnz	01302$
      003DB4 02 57 B4         [24] 3523 	ljmp	00249$
      003DB7                       3524 01302$:
      003DB7 7B 00            [12] 3525 	mov	r3,#0x00
      003DB9 8C 82            [24] 3526 	mov	dpl,r4
      003DBB 8B 83            [24] 3527 	mov	dph,r3
      003DBD 12 2C 1F         [24] 3528 	lcall	_putchar
      003DC0 0F               [12] 3529 	inc	r7
                                   3530 ;	calc.c:180: if (!stack_pop(ctx->ss, &d0)) printstr("\r\nsecondary stack underflow\r\n");
      003DC1 BF 00 E4         [24] 3531 	cjne	r7,#0x00,00402$
      003DC4 0E               [12] 3532 	inc	r6
      003DC5 80 E1            [24] 3533 	sjmp	00402$
      003DC7                       3534 00131$:
                                   3535 ;	calc.c:182: if (!stack_push(ctx->ps, d0)) {
      003DC7 E5 08            [12] 3536 	mov	a,_bp
      003DC9 24 12            [12] 3537 	add	a,#0x12
      003DCB F8               [12] 3538 	mov	r0,a
      003DCC 74 13            [12] 3539 	mov	a,#0x13
      003DCE 26               [12] 3540 	add	a,@r0
      003DCF FA               [12] 3541 	mov	r2,a
      003DD0 74 40            [12] 3542 	mov	a,#0x40
      003DD2 08               [12] 3543 	inc	r0
      003DD3 36               [12] 3544 	addc	a,@r0
      003DD4 FB               [12] 3545 	mov	r3,a
      003DD5 08               [12] 3546 	inc	r0
      003DD6 86 04            [24] 3547 	mov	ar4,@r0
      003DD8 8A 82            [24] 3548 	mov	dpl,r2
      003DDA 8B 83            [24] 3549 	mov	dph,r3
      003DDC 8C F0            [24] 3550 	mov	b,r4
      003DDE 12 71 7E         [24] 3551 	lcall	__gptrget
      003DE1 FA               [12] 3552 	mov	r2,a
      003DE2 A3               [24] 3553 	inc	dptr
      003DE3 12 71 7E         [24] 3554 	lcall	__gptrget
      003DE6 FB               [12] 3555 	mov	r3,a
      003DE7 A3               [24] 3556 	inc	dptr
      003DE8 12 71 7E         [24] 3557 	lcall	__gptrget
      003DEB FC               [12] 3558 	mov	r4,a
      003DEC E5 08            [12] 3559 	mov	a,_bp
      003DEE 24 15            [12] 3560 	add	a,#0x15
      003DF0 F8               [12] 3561 	mov	r0,a
      003DF1 E6               [12] 3562 	mov	a,@r0
      003DF2 C0 E0            [24] 3563 	push	acc
      003DF4 08               [12] 3564 	inc	r0
      003DF5 E6               [12] 3565 	mov	a,@r0
      003DF6 C0 E0            [24] 3566 	push	acc
      003DF8 08               [12] 3567 	inc	r0
      003DF9 E6               [12] 3568 	mov	a,@r0
      003DFA C0 E0            [24] 3569 	push	acc
      003DFC 08               [12] 3570 	inc	r0
      003DFD E6               [12] 3571 	mov	a,@r0
      003DFE C0 E0            [24] 3572 	push	acc
      003E00 8A 82            [24] 3573 	mov	dpl,r2
      003E02 8B 83            [24] 3574 	mov	dph,r3
      003E04 8C F0            [24] 3575 	mov	b,r4
      003E06 12 26 BA         [24] 3576 	lcall	_stack_push
      003E09 AB 82            [24] 3577 	mov	r3,dpl
      003E0B AC 83            [24] 3578 	mov	r4,dph
      003E0D E5 81            [12] 3579 	mov	a,sp
      003E0F 24 FC            [12] 3580 	add	a,#0xfc
      003E11 F5 81            [12] 3581 	mov	sp,a
      003E13 EB               [12] 3582 	mov	a,r3
      003E14 4C               [12] 3583 	orl	a,r4
      003E15 60 03            [24] 3584 	jz	01304$
      003E17 02 57 B4         [24] 3585 	ljmp	00249$
      003E1A                       3586 01304$:
                                   3587 ;	calc.c:183: printstr("\r\nstack overflow\r\n");
      003E1A 7F 9C            [12] 3588 	mov	r7,#___str_13
      003E1C 7E 8A            [12] 3589 	mov	r6,#(___str_13 >> 8)
      003E1E 7D 80            [12] 3590 	mov	r5,#0x80
                                   3591 ;	calc.c:51: return;
      003E20                       3592 00405$:
                                   3593 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003E20 8F 82            [24] 3594 	mov	dpl,r7
      003E22 8E 83            [24] 3595 	mov	dph,r6
      003E24 8D F0            [24] 3596 	mov	b,r5
      003E26 12 71 7E         [24] 3597 	lcall	__gptrget
      003E29 FC               [12] 3598 	mov	r4,a
      003E2A 60 10            [24] 3599 	jz	00289$
      003E2C 7B 00            [12] 3600 	mov	r3,#0x00
      003E2E 8C 82            [24] 3601 	mov	dpl,r4
      003E30 8B 83            [24] 3602 	mov	dph,r3
      003E32 12 2C 1F         [24] 3603 	lcall	_putchar
      003E35 0F               [12] 3604 	inc	r7
                                   3605 ;	calc.c:183: printstr("\r\nstack overflow\r\n");
      003E36 BF 00 E7         [24] 3606 	cjne	r7,#0x00,00405$
      003E39 0E               [12] 3607 	inc	r6
      003E3A 80 E4            [24] 3608 	sjmp	00405$
      003E3C                       3609 00289$:
                                   3610 ;	calc.c:184: (void)stack_push(ctx->ss, d0);
      003E3C E5 08            [12] 3611 	mov	a,_bp
      003E3E 24 07            [12] 3612 	add	a,#0x07
      003E40 F8               [12] 3613 	mov	r0,a
      003E41 86 82            [24] 3614 	mov	dpl,@r0
      003E43 08               [12] 3615 	inc	r0
      003E44 86 83            [24] 3616 	mov	dph,@r0
      003E46 08               [12] 3617 	inc	r0
      003E47 86 F0            [24] 3618 	mov	b,@r0
      003E49 12 71 7E         [24] 3619 	lcall	__gptrget
      003E4C FA               [12] 3620 	mov	r2,a
      003E4D A3               [24] 3621 	inc	dptr
      003E4E 12 71 7E         [24] 3622 	lcall	__gptrget
      003E51 FB               [12] 3623 	mov	r3,a
      003E52 A3               [24] 3624 	inc	dptr
      003E53 12 71 7E         [24] 3625 	lcall	__gptrget
      003E56 FC               [12] 3626 	mov	r4,a
      003E57 E5 08            [12] 3627 	mov	a,_bp
      003E59 24 15            [12] 3628 	add	a,#0x15
      003E5B F8               [12] 3629 	mov	r0,a
      003E5C E6               [12] 3630 	mov	a,@r0
      003E5D C0 E0            [24] 3631 	push	acc
      003E5F 08               [12] 3632 	inc	r0
      003E60 E6               [12] 3633 	mov	a,@r0
      003E61 C0 E0            [24] 3634 	push	acc
      003E63 08               [12] 3635 	inc	r0
      003E64 E6               [12] 3636 	mov	a,@r0
      003E65 C0 E0            [24] 3637 	push	acc
      003E67 08               [12] 3638 	inc	r0
      003E68 E6               [12] 3639 	mov	a,@r0
      003E69 C0 E0            [24] 3640 	push	acc
      003E6B 8A 82            [24] 3641 	mov	dpl,r2
      003E6D 8B 83            [24] 3642 	mov	dph,r3
      003E6F 8C F0            [24] 3643 	mov	b,r4
      003E71 12 26 BA         [24] 3644 	lcall	_stack_push
      003E74 E5 81            [12] 3645 	mov	a,sp
      003E76 24 FC            [12] 3646 	add	a,#0xfc
      003E78 F5 81            [12] 3647 	mov	sp,a
                                   3648 ;	calc.c:187: break;
      003E7A 02 57 B4         [24] 3649 	ljmp	00249$
                                   3650 ;	calc.c:188: case 'u':
      003E7D                       3651 00133$:
                                   3652 ;	calc.c:189: if (!stack_peek(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003E7D E5 08            [12] 3653 	mov	a,_bp
      003E7F 24 15            [12] 3654 	add	a,#0x15
      003E81 FF               [12] 3655 	mov	r7,a
      003E82 7E 00            [12] 3656 	mov	r6,#0x00
      003E84 7D 40            [12] 3657 	mov	r5,#0x40
      003E86 E5 08            [12] 3658 	mov	a,_bp
      003E88 24 12            [12] 3659 	add	a,#0x12
      003E8A F8               [12] 3660 	mov	r0,a
      003E8B 74 13            [12] 3661 	mov	a,#0x13
      003E8D 26               [12] 3662 	add	a,@r0
      003E8E FA               [12] 3663 	mov	r2,a
      003E8F ED               [12] 3664 	mov	a,r5
      003E90 08               [12] 3665 	inc	r0
      003E91 36               [12] 3666 	addc	a,@r0
      003E92 FB               [12] 3667 	mov	r3,a
      003E93 08               [12] 3668 	inc	r0
      003E94 86 04            [24] 3669 	mov	ar4,@r0
      003E96 8A 82            [24] 3670 	mov	dpl,r2
      003E98 8B 83            [24] 3671 	mov	dph,r3
      003E9A 8C F0            [24] 3672 	mov	b,r4
      003E9C 12 71 7E         [24] 3673 	lcall	__gptrget
      003E9F FA               [12] 3674 	mov	r2,a
      003EA0 A3               [24] 3675 	inc	dptr
      003EA1 12 71 7E         [24] 3676 	lcall	__gptrget
      003EA4 FB               [12] 3677 	mov	r3,a
      003EA5 A3               [24] 3678 	inc	dptr
      003EA6 12 71 7E         [24] 3679 	lcall	__gptrget
      003EA9 FC               [12] 3680 	mov	r4,a
      003EAA C0 07            [24] 3681 	push	ar7
      003EAC C0 06            [24] 3682 	push	ar6
      003EAE C0 05            [24] 3683 	push	ar5
      003EB0 8A 82            [24] 3684 	mov	dpl,r2
      003EB2 8B 83            [24] 3685 	mov	dph,r3
      003EB4 8C F0            [24] 3686 	mov	b,r4
      003EB6 12 28 D8         [24] 3687 	lcall	_stack_peek
      003EB9 AB 82            [24] 3688 	mov	r3,dpl
      003EBB AC 83            [24] 3689 	mov	r4,dph
      003EBD 15 81            [12] 3690 	dec	sp
      003EBF 15 81            [12] 3691 	dec	sp
      003EC1 15 81            [12] 3692 	dec	sp
      003EC3 EB               [12] 3693 	mov	a,r3
      003EC4 4C               [12] 3694 	orl	a,r4
      003EC5 70 25            [24] 3695 	jnz	00137$
      003EC7 7F 4D            [12] 3696 	mov	r7,#___str_10
      003EC9 7E 8A            [12] 3697 	mov	r6,#(___str_10 >> 8)
      003ECB 7D 80            [12] 3698 	mov	r5,#0x80
                                   3699 ;	calc.c:51: return;
      003ECD                       3700 00408$:
                                   3701 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003ECD 8F 82            [24] 3702 	mov	dpl,r7
      003ECF 8E 83            [24] 3703 	mov	dph,r6
      003ED1 8D F0            [24] 3704 	mov	b,r5
      003ED3 12 71 7E         [24] 3705 	lcall	__gptrget
      003ED6 FC               [12] 3706 	mov	r4,a
      003ED7 70 03            [24] 3707 	jnz	01308$
      003ED9 02 57 B4         [24] 3708 	ljmp	00249$
      003EDC                       3709 01308$:
      003EDC 7B 00            [12] 3710 	mov	r3,#0x00
      003EDE 8C 82            [24] 3711 	mov	dpl,r4
      003EE0 8B 83            [24] 3712 	mov	dph,r3
      003EE2 12 2C 1F         [24] 3713 	lcall	_putchar
      003EE5 0F               [12] 3714 	inc	r7
                                   3715 ;	calc.c:189: if (!stack_peek(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003EE6 BF 00 E4         [24] 3716 	cjne	r7,#0x00,00408$
      003EE9 0E               [12] 3717 	inc	r6
      003EEA 80 E1            [24] 3718 	sjmp	00408$
      003EEC                       3719 00137$:
                                   3720 ;	calc.c:190: else if (!stack_push(ctx->ss, d0)) printstr("\r\nsecondary stack overflow\r\n");
      003EEC E5 08            [12] 3721 	mov	a,_bp
      003EEE 24 12            [12] 3722 	add	a,#0x12
      003EF0 F8               [12] 3723 	mov	r0,a
      003EF1 74 16            [12] 3724 	mov	a,#0x16
      003EF3 26               [12] 3725 	add	a,@r0
      003EF4 FA               [12] 3726 	mov	r2,a
      003EF5 74 40            [12] 3727 	mov	a,#0x40
      003EF7 08               [12] 3728 	inc	r0
      003EF8 36               [12] 3729 	addc	a,@r0
      003EF9 FB               [12] 3730 	mov	r3,a
      003EFA 08               [12] 3731 	inc	r0
      003EFB 86 04            [24] 3732 	mov	ar4,@r0
      003EFD 8A 82            [24] 3733 	mov	dpl,r2
      003EFF 8B 83            [24] 3734 	mov	dph,r3
      003F01 8C F0            [24] 3735 	mov	b,r4
      003F03 12 71 7E         [24] 3736 	lcall	__gptrget
      003F06 FA               [12] 3737 	mov	r2,a
      003F07 A3               [24] 3738 	inc	dptr
      003F08 12 71 7E         [24] 3739 	lcall	__gptrget
      003F0B FB               [12] 3740 	mov	r3,a
      003F0C A3               [24] 3741 	inc	dptr
      003F0D 12 71 7E         [24] 3742 	lcall	__gptrget
      003F10 FC               [12] 3743 	mov	r4,a
      003F11 E5 08            [12] 3744 	mov	a,_bp
      003F13 24 15            [12] 3745 	add	a,#0x15
      003F15 F8               [12] 3746 	mov	r0,a
      003F16 E6               [12] 3747 	mov	a,@r0
      003F17 C0 E0            [24] 3748 	push	acc
      003F19 08               [12] 3749 	inc	r0
      003F1A E6               [12] 3750 	mov	a,@r0
      003F1B C0 E0            [24] 3751 	push	acc
      003F1D 08               [12] 3752 	inc	r0
      003F1E E6               [12] 3753 	mov	a,@r0
      003F1F C0 E0            [24] 3754 	push	acc
      003F21 08               [12] 3755 	inc	r0
      003F22 E6               [12] 3756 	mov	a,@r0
      003F23 C0 E0            [24] 3757 	push	acc
      003F25 8A 82            [24] 3758 	mov	dpl,r2
      003F27 8B 83            [24] 3759 	mov	dph,r3
      003F29 8C F0            [24] 3760 	mov	b,r4
      003F2B 12 26 BA         [24] 3761 	lcall	_stack_push
      003F2E AB 82            [24] 3762 	mov	r3,dpl
      003F30 AC 83            [24] 3763 	mov	r4,dph
      003F32 E5 81            [12] 3764 	mov	a,sp
      003F34 24 FC            [12] 3765 	add	a,#0xfc
      003F36 F5 81            [12] 3766 	mov	sp,a
      003F38 EB               [12] 3767 	mov	a,r3
      003F39 4C               [12] 3768 	orl	a,r4
      003F3A 60 03            [24] 3769 	jz	01310$
      003F3C 02 57 B4         [24] 3770 	ljmp	00249$
      003F3F                       3771 01310$:
      003F3F 7F 61            [12] 3772 	mov	r7,#___str_11
      003F41 7E 8A            [12] 3773 	mov	r6,#(___str_11 >> 8)
      003F43 7D 80            [12] 3774 	mov	r5,#0x80
                                   3775 ;	calc.c:51: return;
      003F45                       3776 00411$:
                                   3777 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003F45 8F 82            [24] 3778 	mov	dpl,r7
      003F47 8E 83            [24] 3779 	mov	dph,r6
      003F49 8D F0            [24] 3780 	mov	b,r5
      003F4B 12 71 7E         [24] 3781 	lcall	__gptrget
      003F4E FC               [12] 3782 	mov	r4,a
      003F4F 70 03            [24] 3783 	jnz	01311$
      003F51 02 57 B4         [24] 3784 	ljmp	00249$
      003F54                       3785 01311$:
      003F54 7B 00            [12] 3786 	mov	r3,#0x00
      003F56 8C 82            [24] 3787 	mov	dpl,r4
      003F58 8B 83            [24] 3788 	mov	dph,r3
      003F5A 12 2C 1F         [24] 3789 	lcall	_putchar
      003F5D 0F               [12] 3790 	inc	r7
                                   3791 ;	calc.c:192: case 'U':
      003F5E BF 00 E4         [24] 3792 	cjne	r7,#0x00,00411$
      003F61 0E               [12] 3793 	inc	r6
      003F62 80 E1            [24] 3794 	sjmp	00411$
      003F64                       3795 00139$:
                                   3796 ;	calc.c:193: if (!stack_peek(ctx->ss, &d0)) printstr("\r\nsecondary stack underflow\r\n");
      003F64 E5 08            [12] 3797 	mov	a,_bp
      003F66 24 15            [12] 3798 	add	a,#0x15
      003F68 FF               [12] 3799 	mov	r7,a
      003F69 7E 00            [12] 3800 	mov	r6,#0x00
      003F6B 7D 40            [12] 3801 	mov	r5,#0x40
      003F6D E5 08            [12] 3802 	mov	a,_bp
      003F6F 24 12            [12] 3803 	add	a,#0x12
      003F71 F8               [12] 3804 	mov	r0,a
      003F72 74 16            [12] 3805 	mov	a,#0x16
      003F74 26               [12] 3806 	add	a,@r0
      003F75 FA               [12] 3807 	mov	r2,a
      003F76 ED               [12] 3808 	mov	a,r5
      003F77 08               [12] 3809 	inc	r0
      003F78 36               [12] 3810 	addc	a,@r0
      003F79 FB               [12] 3811 	mov	r3,a
      003F7A 08               [12] 3812 	inc	r0
      003F7B 86 04            [24] 3813 	mov	ar4,@r0
      003F7D 8A 82            [24] 3814 	mov	dpl,r2
      003F7F 8B 83            [24] 3815 	mov	dph,r3
      003F81 8C F0            [24] 3816 	mov	b,r4
      003F83 12 71 7E         [24] 3817 	lcall	__gptrget
      003F86 FA               [12] 3818 	mov	r2,a
      003F87 A3               [24] 3819 	inc	dptr
      003F88 12 71 7E         [24] 3820 	lcall	__gptrget
      003F8B FB               [12] 3821 	mov	r3,a
      003F8C A3               [24] 3822 	inc	dptr
      003F8D 12 71 7E         [24] 3823 	lcall	__gptrget
      003F90 FC               [12] 3824 	mov	r4,a
      003F91 C0 07            [24] 3825 	push	ar7
      003F93 C0 06            [24] 3826 	push	ar6
      003F95 C0 05            [24] 3827 	push	ar5
      003F97 8A 82            [24] 3828 	mov	dpl,r2
      003F99 8B 83            [24] 3829 	mov	dph,r3
      003F9B 8C F0            [24] 3830 	mov	b,r4
      003F9D 12 28 D8         [24] 3831 	lcall	_stack_peek
      003FA0 AB 82            [24] 3832 	mov	r3,dpl
      003FA2 AC 83            [24] 3833 	mov	r4,dph
      003FA4 15 81            [12] 3834 	dec	sp
      003FA6 15 81            [12] 3835 	dec	sp
      003FA8 15 81            [12] 3836 	dec	sp
      003FAA EB               [12] 3837 	mov	a,r3
      003FAB 4C               [12] 3838 	orl	a,r4
      003FAC 70 25            [24] 3839 	jnz	00143$
      003FAE 7F 7E            [12] 3840 	mov	r7,#___str_12
      003FB0 7E 8A            [12] 3841 	mov	r6,#(___str_12 >> 8)
      003FB2 7D 80            [12] 3842 	mov	r5,#0x80
                                   3843 ;	calc.c:51: return;
      003FB4                       3844 00414$:
                                   3845 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003FB4 8F 82            [24] 3846 	mov	dpl,r7
      003FB6 8E 83            [24] 3847 	mov	dph,r6
      003FB8 8D F0            [24] 3848 	mov	b,r5
      003FBA 12 71 7E         [24] 3849 	lcall	__gptrget
      003FBD FC               [12] 3850 	mov	r4,a
      003FBE 70 03            [24] 3851 	jnz	01314$
      003FC0 02 57 B4         [24] 3852 	ljmp	00249$
      003FC3                       3853 01314$:
      003FC3 7B 00            [12] 3854 	mov	r3,#0x00
      003FC5 8C 82            [24] 3855 	mov	dpl,r4
      003FC7 8B 83            [24] 3856 	mov	dph,r3
      003FC9 12 2C 1F         [24] 3857 	lcall	_putchar
      003FCC 0F               [12] 3858 	inc	r7
                                   3859 ;	calc.c:193: if (!stack_peek(ctx->ss, &d0)) printstr("\r\nsecondary stack underflow\r\n");
      003FCD BF 00 E4         [24] 3860 	cjne	r7,#0x00,00414$
      003FD0 0E               [12] 3861 	inc	r6
      003FD1 80 E1            [24] 3862 	sjmp	00414$
      003FD3                       3863 00143$:
                                   3864 ;	calc.c:194: else if (!stack_push(ctx->ps, d0)) printstr("\r\nstack overflow\r\n");
      003FD3 E5 08            [12] 3865 	mov	a,_bp
      003FD5 24 12            [12] 3866 	add	a,#0x12
      003FD7 F8               [12] 3867 	mov	r0,a
      003FD8 74 13            [12] 3868 	mov	a,#0x13
      003FDA 26               [12] 3869 	add	a,@r0
      003FDB FA               [12] 3870 	mov	r2,a
      003FDC 74 40            [12] 3871 	mov	a,#0x40
      003FDE 08               [12] 3872 	inc	r0
      003FDF 36               [12] 3873 	addc	a,@r0
      003FE0 FB               [12] 3874 	mov	r3,a
      003FE1 08               [12] 3875 	inc	r0
      003FE2 86 04            [24] 3876 	mov	ar4,@r0
      003FE4 8A 82            [24] 3877 	mov	dpl,r2
      003FE6 8B 83            [24] 3878 	mov	dph,r3
      003FE8 8C F0            [24] 3879 	mov	b,r4
      003FEA 12 71 7E         [24] 3880 	lcall	__gptrget
      003FED FA               [12] 3881 	mov	r2,a
      003FEE A3               [24] 3882 	inc	dptr
      003FEF 12 71 7E         [24] 3883 	lcall	__gptrget
      003FF2 FB               [12] 3884 	mov	r3,a
      003FF3 A3               [24] 3885 	inc	dptr
      003FF4 12 71 7E         [24] 3886 	lcall	__gptrget
      003FF7 FC               [12] 3887 	mov	r4,a
      003FF8 E5 08            [12] 3888 	mov	a,_bp
      003FFA 24 15            [12] 3889 	add	a,#0x15
      003FFC F8               [12] 3890 	mov	r0,a
      003FFD E6               [12] 3891 	mov	a,@r0
      003FFE C0 E0            [24] 3892 	push	acc
      004000 08               [12] 3893 	inc	r0
      004001 E6               [12] 3894 	mov	a,@r0
      004002 C0 E0            [24] 3895 	push	acc
      004004 08               [12] 3896 	inc	r0
      004005 E6               [12] 3897 	mov	a,@r0
      004006 C0 E0            [24] 3898 	push	acc
      004008 08               [12] 3899 	inc	r0
      004009 E6               [12] 3900 	mov	a,@r0
      00400A C0 E0            [24] 3901 	push	acc
      00400C 8A 82            [24] 3902 	mov	dpl,r2
      00400E 8B 83            [24] 3903 	mov	dph,r3
      004010 8C F0            [24] 3904 	mov	b,r4
      004012 12 26 BA         [24] 3905 	lcall	_stack_push
      004015 AB 82            [24] 3906 	mov	r3,dpl
      004017 AC 83            [24] 3907 	mov	r4,dph
      004019 E5 81            [12] 3908 	mov	a,sp
      00401B 24 FC            [12] 3909 	add	a,#0xfc
      00401D F5 81            [12] 3910 	mov	sp,a
      00401F EB               [12] 3911 	mov	a,r3
      004020 4C               [12] 3912 	orl	a,r4
      004021 60 03            [24] 3913 	jz	01316$
      004023 02 57 B4         [24] 3914 	ljmp	00249$
      004026                       3915 01316$:
      004026 7F 9C            [12] 3916 	mov	r7,#___str_13
      004028 7E 8A            [12] 3917 	mov	r6,#(___str_13 >> 8)
      00402A 7D 80            [12] 3918 	mov	r5,#0x80
                                   3919 ;	calc.c:51: return;
      00402C                       3920 00417$:
                                   3921 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00402C 8F 82            [24] 3922 	mov	dpl,r7
      00402E 8E 83            [24] 3923 	mov	dph,r6
      004030 8D F0            [24] 3924 	mov	b,r5
      004032 12 71 7E         [24] 3925 	lcall	__gptrget
      004035 FC               [12] 3926 	mov	r4,a
      004036 70 03            [24] 3927 	jnz	01317$
      004038 02 57 B4         [24] 3928 	ljmp	00249$
      00403B                       3929 01317$:
      00403B 7B 00            [12] 3930 	mov	r3,#0x00
      00403D 8C 82            [24] 3931 	mov	dpl,r4
      00403F 8B 83            [24] 3932 	mov	dph,r3
      004041 12 2C 1F         [24] 3933 	lcall	_putchar
      004044 0F               [12] 3934 	inc	r7
                                   3935 ;	calc.c:196: case 'T':
      004045 BF 00 E4         [24] 3936 	cjne	r7,#0x00,00417$
      004048 0E               [12] 3937 	inc	r6
      004049 80 E1            [24] 3938 	sjmp	00417$
      00404B                       3939 00145$:
                                   3940 ;	calc.c:197: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      00404B E5 08            [12] 3941 	mov	a,_bp
      00404D 24 15            [12] 3942 	add	a,#0x15
      00404F FF               [12] 3943 	mov	r7,a
      004050 7E 00            [12] 3944 	mov	r6,#0x00
      004052 7D 40            [12] 3945 	mov	r5,#0x40
      004054 E5 08            [12] 3946 	mov	a,_bp
      004056 24 12            [12] 3947 	add	a,#0x12
      004058 F8               [12] 3948 	mov	r0,a
      004059 E5 08            [12] 3949 	mov	a,_bp
      00405B 24 07            [12] 3950 	add	a,#0x07
      00405D F9               [12] 3951 	mov	r1,a
      00405E 74 13            [12] 3952 	mov	a,#0x13
      004060 26               [12] 3953 	add	a,@r0
      004061 F7               [12] 3954 	mov	@r1,a
      004062 74 40            [12] 3955 	mov	a,#0x40
      004064 08               [12] 3956 	inc	r0
      004065 36               [12] 3957 	addc	a,@r0
      004066 09               [12] 3958 	inc	r1
      004067 F7               [12] 3959 	mov	@r1,a
      004068 08               [12] 3960 	inc	r0
      004069 09               [12] 3961 	inc	r1
      00406A E6               [12] 3962 	mov	a,@r0
      00406B F7               [12] 3963 	mov	@r1,a
      00406C E5 08            [12] 3964 	mov	a,_bp
      00406E 24 07            [12] 3965 	add	a,#0x07
      004070 F8               [12] 3966 	mov	r0,a
      004071 86 82            [24] 3967 	mov	dpl,@r0
      004073 08               [12] 3968 	inc	r0
      004074 86 83            [24] 3969 	mov	dph,@r0
      004076 08               [12] 3970 	inc	r0
      004077 86 F0            [24] 3971 	mov	b,@r0
      004079 12 71 7E         [24] 3972 	lcall	__gptrget
      00407C FA               [12] 3973 	mov	r2,a
      00407D A3               [24] 3974 	inc	dptr
      00407E 12 71 7E         [24] 3975 	lcall	__gptrget
      004081 FB               [12] 3976 	mov	r3,a
      004082 A3               [24] 3977 	inc	dptr
      004083 12 71 7E         [24] 3978 	lcall	__gptrget
      004086 FC               [12] 3979 	mov	r4,a
      004087 C0 07            [24] 3980 	push	ar7
      004089 C0 06            [24] 3981 	push	ar6
      00408B C0 05            [24] 3982 	push	ar5
      00408D 8A 82            [24] 3983 	mov	dpl,r2
      00408F 8B 83            [24] 3984 	mov	dph,r3
      004091 8C F0            [24] 3985 	mov	b,r4
      004093 12 27 B4         [24] 3986 	lcall	_stack_pop
      004096 AB 82            [24] 3987 	mov	r3,dpl
      004098 AC 83            [24] 3988 	mov	r4,dph
      00409A 15 81            [12] 3989 	dec	sp
      00409C 15 81            [12] 3990 	dec	sp
      00409E 15 81            [12] 3991 	dec	sp
      0040A0 EB               [12] 3992 	mov	a,r3
      0040A1 4C               [12] 3993 	orl	a,r4
      0040A2 70 25            [24] 3994 	jnz	00150$
      0040A4 7F 4D            [12] 3995 	mov	r7,#___str_10
      0040A6 7E 8A            [12] 3996 	mov	r6,#(___str_10 >> 8)
      0040A8 7D 80            [12] 3997 	mov	r5,#0x80
                                   3998 ;	calc.c:51: return;
      0040AA                       3999 00420$:
                                   4000 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0040AA 8F 82            [24] 4001 	mov	dpl,r7
      0040AC 8E 83            [24] 4002 	mov	dph,r6
      0040AE 8D F0            [24] 4003 	mov	b,r5
      0040B0 12 71 7E         [24] 4004 	lcall	__gptrget
      0040B3 FC               [12] 4005 	mov	r4,a
      0040B4 70 03            [24] 4006 	jnz	01320$
      0040B6 02 57 B4         [24] 4007 	ljmp	00249$
      0040B9                       4008 01320$:
      0040B9 7B 00            [12] 4009 	mov	r3,#0x00
      0040BB 8C 82            [24] 4010 	mov	dpl,r4
      0040BD 8B 83            [24] 4011 	mov	dph,r3
      0040BF 12 2C 1F         [24] 4012 	lcall	_putchar
      0040C2 0F               [12] 4013 	inc	r7
                                   4014 ;	calc.c:197: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0040C3 BF 00 E4         [24] 4015 	cjne	r7,#0x00,00420$
      0040C6 0E               [12] 4016 	inc	r6
      0040C7 80 E1            [24] 4017 	sjmp	00420$
      0040C9                       4018 00150$:
                                   4019 ;	calc.c:199: if (!stack_pop(ctx->ss, &d1)) {
      0040C9 E5 08            [12] 4020 	mov	a,_bp
      0040CB 24 19            [12] 4021 	add	a,#0x19
      0040CD FF               [12] 4022 	mov	r7,a
      0040CE 7E 00            [12] 4023 	mov	r6,#0x00
      0040D0 7D 40            [12] 4024 	mov	r5,#0x40
      0040D2 E5 08            [12] 4025 	mov	a,_bp
      0040D4 24 12            [12] 4026 	add	a,#0x12
      0040D6 F8               [12] 4027 	mov	r0,a
      0040D7 E5 08            [12] 4028 	mov	a,_bp
      0040D9 24 04            [12] 4029 	add	a,#0x04
      0040DB F9               [12] 4030 	mov	r1,a
      0040DC 74 16            [12] 4031 	mov	a,#0x16
      0040DE 26               [12] 4032 	add	a,@r0
      0040DF F7               [12] 4033 	mov	@r1,a
      0040E0 74 40            [12] 4034 	mov	a,#0x40
      0040E2 08               [12] 4035 	inc	r0
      0040E3 36               [12] 4036 	addc	a,@r0
      0040E4 09               [12] 4037 	inc	r1
      0040E5 F7               [12] 4038 	mov	@r1,a
      0040E6 08               [12] 4039 	inc	r0
      0040E7 09               [12] 4040 	inc	r1
      0040E8 E6               [12] 4041 	mov	a,@r0
      0040E9 F7               [12] 4042 	mov	@r1,a
      0040EA E5 08            [12] 4043 	mov	a,_bp
      0040EC 24 04            [12] 4044 	add	a,#0x04
      0040EE F8               [12] 4045 	mov	r0,a
      0040EF 86 82            [24] 4046 	mov	dpl,@r0
      0040F1 08               [12] 4047 	inc	r0
      0040F2 86 83            [24] 4048 	mov	dph,@r0
      0040F4 08               [12] 4049 	inc	r0
      0040F5 86 F0            [24] 4050 	mov	b,@r0
      0040F7 12 71 7E         [24] 4051 	lcall	__gptrget
      0040FA FA               [12] 4052 	mov	r2,a
      0040FB A3               [24] 4053 	inc	dptr
      0040FC 12 71 7E         [24] 4054 	lcall	__gptrget
      0040FF FB               [12] 4055 	mov	r3,a
      004100 A3               [24] 4056 	inc	dptr
      004101 12 71 7E         [24] 4057 	lcall	__gptrget
      004104 FC               [12] 4058 	mov	r4,a
      004105 C0 07            [24] 4059 	push	ar7
      004107 C0 06            [24] 4060 	push	ar6
      004109 C0 05            [24] 4061 	push	ar5
      00410B 8A 82            [24] 4062 	mov	dpl,r2
      00410D 8B 83            [24] 4063 	mov	dph,r3
      00410F 8C F0            [24] 4064 	mov	b,r4
      004111 12 27 B4         [24] 4065 	lcall	_stack_pop
      004114 AB 82            [24] 4066 	mov	r3,dpl
      004116 AC 83            [24] 4067 	mov	r4,dph
      004118 15 81            [12] 4068 	dec	sp
      00411A 15 81            [12] 4069 	dec	sp
      00411C 15 81            [12] 4070 	dec	sp
      00411E EB               [12] 4071 	mov	a,r3
      00411F 4C               [12] 4072 	orl	a,r4
      004120 70 63            [24] 4073 	jnz	00147$
                                   4074 ;	calc.c:200: printstr("\r\nsecondary stack underflow\r\n");
      004122 7F 7E            [12] 4075 	mov	r7,#___str_12
      004124 7E 8A            [12] 4076 	mov	r6,#(___str_12 >> 8)
      004126 7D 80            [12] 4077 	mov	r5,#0x80
                                   4078 ;	calc.c:51: return;
      004128                       4079 00423$:
                                   4080 ;	calc.c:49: for (; *s; s++) putchar(*s);
      004128 8F 82            [24] 4081 	mov	dpl,r7
      00412A 8E 83            [24] 4082 	mov	dph,r6
      00412C 8D F0            [24] 4083 	mov	b,r5
      00412E 12 71 7E         [24] 4084 	lcall	__gptrget
      004131 FC               [12] 4085 	mov	r4,a
      004132 60 10            [24] 4086 	jz	00301$
      004134 7B 00            [12] 4087 	mov	r3,#0x00
      004136 8C 82            [24] 4088 	mov	dpl,r4
      004138 8B 83            [24] 4089 	mov	dph,r3
      00413A 12 2C 1F         [24] 4090 	lcall	_putchar
      00413D 0F               [12] 4091 	inc	r7
                                   4092 ;	calc.c:200: printstr("\r\nsecondary stack underflow\r\n");
      00413E BF 00 E7         [24] 4093 	cjne	r7,#0x00,00423$
      004141 0E               [12] 4094 	inc	r6
      004142 80 E4            [24] 4095 	sjmp	00423$
      004144                       4096 00301$:
                                   4097 ;	calc.c:201: (void)stack_push(ctx->ps, d0);
      004144 E5 08            [12] 4098 	mov	a,_bp
      004146 24 07            [12] 4099 	add	a,#0x07
      004148 F8               [12] 4100 	mov	r0,a
      004149 86 82            [24] 4101 	mov	dpl,@r0
      00414B 08               [12] 4102 	inc	r0
      00414C 86 83            [24] 4103 	mov	dph,@r0
      00414E 08               [12] 4104 	inc	r0
      00414F 86 F0            [24] 4105 	mov	b,@r0
      004151 12 71 7E         [24] 4106 	lcall	__gptrget
      004154 FA               [12] 4107 	mov	r2,a
      004155 A3               [24] 4108 	inc	dptr
      004156 12 71 7E         [24] 4109 	lcall	__gptrget
      004159 FB               [12] 4110 	mov	r3,a
      00415A A3               [24] 4111 	inc	dptr
      00415B 12 71 7E         [24] 4112 	lcall	__gptrget
      00415E FC               [12] 4113 	mov	r4,a
      00415F E5 08            [12] 4114 	mov	a,_bp
      004161 24 15            [12] 4115 	add	a,#0x15
      004163 F8               [12] 4116 	mov	r0,a
      004164 E6               [12] 4117 	mov	a,@r0
      004165 C0 E0            [24] 4118 	push	acc
      004167 08               [12] 4119 	inc	r0
      004168 E6               [12] 4120 	mov	a,@r0
      004169 C0 E0            [24] 4121 	push	acc
      00416B 08               [12] 4122 	inc	r0
      00416C E6               [12] 4123 	mov	a,@r0
      00416D C0 E0            [24] 4124 	push	acc
      00416F 08               [12] 4125 	inc	r0
      004170 E6               [12] 4126 	mov	a,@r0
      004171 C0 E0            [24] 4127 	push	acc
      004173 8A 82            [24] 4128 	mov	dpl,r2
      004175 8B 83            [24] 4129 	mov	dph,r3
      004177 8C F0            [24] 4130 	mov	b,r4
      004179 12 26 BA         [24] 4131 	lcall	_stack_push
      00417C E5 81            [12] 4132 	mov	a,sp
      00417E 24 FC            [12] 4133 	add	a,#0xfc
      004180 F5 81            [12] 4134 	mov	sp,a
      004182 02 57 B4         [24] 4135 	ljmp	00249$
      004185                       4136 00147$:
                                   4137 ;	calc.c:203: (void)stack_push(ctx->ps, d1);
      004185 E5 08            [12] 4138 	mov	a,_bp
      004187 24 07            [12] 4139 	add	a,#0x07
      004189 F8               [12] 4140 	mov	r0,a
      00418A 86 82            [24] 4141 	mov	dpl,@r0
      00418C 08               [12] 4142 	inc	r0
      00418D 86 83            [24] 4143 	mov	dph,@r0
      00418F 08               [12] 4144 	inc	r0
      004190 86 F0            [24] 4145 	mov	b,@r0
      004192 12 71 7E         [24] 4146 	lcall	__gptrget
      004195 FA               [12] 4147 	mov	r2,a
      004196 A3               [24] 4148 	inc	dptr
      004197 12 71 7E         [24] 4149 	lcall	__gptrget
      00419A FB               [12] 4150 	mov	r3,a
      00419B A3               [24] 4151 	inc	dptr
      00419C 12 71 7E         [24] 4152 	lcall	__gptrget
      00419F FC               [12] 4153 	mov	r4,a
      0041A0 E5 08            [12] 4154 	mov	a,_bp
      0041A2 24 19            [12] 4155 	add	a,#0x19
      0041A4 F8               [12] 4156 	mov	r0,a
      0041A5 E6               [12] 4157 	mov	a,@r0
      0041A6 C0 E0            [24] 4158 	push	acc
      0041A8 08               [12] 4159 	inc	r0
      0041A9 E6               [12] 4160 	mov	a,@r0
      0041AA C0 E0            [24] 4161 	push	acc
      0041AC 08               [12] 4162 	inc	r0
      0041AD E6               [12] 4163 	mov	a,@r0
      0041AE C0 E0            [24] 4164 	push	acc
      0041B0 08               [12] 4165 	inc	r0
      0041B1 E6               [12] 4166 	mov	a,@r0
      0041B2 C0 E0            [24] 4167 	push	acc
      0041B4 8A 82            [24] 4168 	mov	dpl,r2
      0041B6 8B 83            [24] 4169 	mov	dph,r3
      0041B8 8C F0            [24] 4170 	mov	b,r4
      0041BA 12 26 BA         [24] 4171 	lcall	_stack_push
      0041BD E5 81            [12] 4172 	mov	a,sp
      0041BF 24 FC            [12] 4173 	add	a,#0xfc
      0041C1 F5 81            [12] 4174 	mov	sp,a
                                   4175 ;	calc.c:204: (void)stack_push(ctx->ss, d0);
      0041C3 E5 08            [12] 4176 	mov	a,_bp
      0041C5 24 04            [12] 4177 	add	a,#0x04
      0041C7 F8               [12] 4178 	mov	r0,a
      0041C8 86 82            [24] 4179 	mov	dpl,@r0
      0041CA 08               [12] 4180 	inc	r0
      0041CB 86 83            [24] 4181 	mov	dph,@r0
      0041CD 08               [12] 4182 	inc	r0
      0041CE 86 F0            [24] 4183 	mov	b,@r0
      0041D0 12 71 7E         [24] 4184 	lcall	__gptrget
      0041D3 FA               [12] 4185 	mov	r2,a
      0041D4 A3               [24] 4186 	inc	dptr
      0041D5 12 71 7E         [24] 4187 	lcall	__gptrget
      0041D8 FB               [12] 4188 	mov	r3,a
      0041D9 A3               [24] 4189 	inc	dptr
      0041DA 12 71 7E         [24] 4190 	lcall	__gptrget
      0041DD FC               [12] 4191 	mov	r4,a
      0041DE E5 08            [12] 4192 	mov	a,_bp
      0041E0 24 15            [12] 4193 	add	a,#0x15
      0041E2 F8               [12] 4194 	mov	r0,a
      0041E3 E6               [12] 4195 	mov	a,@r0
      0041E4 C0 E0            [24] 4196 	push	acc
      0041E6 08               [12] 4197 	inc	r0
      0041E7 E6               [12] 4198 	mov	a,@r0
      0041E8 C0 E0            [24] 4199 	push	acc
      0041EA 08               [12] 4200 	inc	r0
      0041EB E6               [12] 4201 	mov	a,@r0
      0041EC C0 E0            [24] 4202 	push	acc
      0041EE 08               [12] 4203 	inc	r0
      0041EF E6               [12] 4204 	mov	a,@r0
      0041F0 C0 E0            [24] 4205 	push	acc
      0041F2 8A 82            [24] 4206 	mov	dpl,r2
      0041F4 8B 83            [24] 4207 	mov	dph,r3
      0041F6 8C F0            [24] 4208 	mov	b,r4
      0041F8 12 26 BA         [24] 4209 	lcall	_stack_push
      0041FB E5 81            [12] 4210 	mov	a,sp
      0041FD 24 FC            [12] 4211 	add	a,#0xfc
      0041FF F5 81            [12] 4212 	mov	sp,a
                                   4213 ;	calc.c:207: break;
      004201 02 57 B4         [24] 4214 	ljmp	00249$
                                   4215 ;	calc.c:208: case 'X':
      004204                       4216 00152$:
                                   4217 ;	calc.c:209: t0 = ctx->ps;
      004204 E5 08            [12] 4218 	mov	a,_bp
      004206 24 12            [12] 4219 	add	a,#0x12
      004208 F8               [12] 4220 	mov	r0,a
      004209 E5 08            [12] 4221 	mov	a,_bp
      00420B 24 0B            [12] 4222 	add	a,#0x0b
      00420D F9               [12] 4223 	mov	r1,a
      00420E 74 13            [12] 4224 	mov	a,#0x13
      004210 26               [12] 4225 	add	a,@r0
      004211 F7               [12] 4226 	mov	@r1,a
      004212 74 40            [12] 4227 	mov	a,#0x40
      004214 08               [12] 4228 	inc	r0
      004215 36               [12] 4229 	addc	a,@r0
      004216 09               [12] 4230 	inc	r1
      004217 F7               [12] 4231 	mov	@r1,a
      004218 08               [12] 4232 	inc	r0
      004219 09               [12] 4233 	inc	r1
      00421A E6               [12] 4234 	mov	a,@r0
      00421B F7               [12] 4235 	mov	@r1,a
      00421C E5 08            [12] 4236 	mov	a,_bp
      00421E 24 0B            [12] 4237 	add	a,#0x0b
      004220 F8               [12] 4238 	mov	r0,a
      004221 86 82            [24] 4239 	mov	dpl,@r0
      004223 08               [12] 4240 	inc	r0
      004224 86 83            [24] 4241 	mov	dph,@r0
      004226 08               [12] 4242 	inc	r0
      004227 86 F0            [24] 4243 	mov	b,@r0
      004229 12 71 7E         [24] 4244 	lcall	__gptrget
      00422C FF               [12] 4245 	mov	r7,a
      00422D A3               [24] 4246 	inc	dptr
      00422E 12 71 7E         [24] 4247 	lcall	__gptrget
      004231 FE               [12] 4248 	mov	r6,a
      004232 A3               [24] 4249 	inc	dptr
      004233 12 71 7E         [24] 4250 	lcall	__gptrget
      004236 FD               [12] 4251 	mov	r5,a
                                   4252 ;	calc.c:210: ctx->ps = ctx->ss;
      004237 E5 08            [12] 4253 	mov	a,_bp
      004239 24 12            [12] 4254 	add	a,#0x12
      00423B F8               [12] 4255 	mov	r0,a
      00423C E5 08            [12] 4256 	mov	a,_bp
      00423E 24 07            [12] 4257 	add	a,#0x07
      004240 F9               [12] 4258 	mov	r1,a
      004241 74 16            [12] 4259 	mov	a,#0x16
      004243 26               [12] 4260 	add	a,@r0
      004244 F7               [12] 4261 	mov	@r1,a
      004245 74 40            [12] 4262 	mov	a,#0x40
      004247 08               [12] 4263 	inc	r0
      004248 36               [12] 4264 	addc	a,@r0
      004249 09               [12] 4265 	inc	r1
      00424A F7               [12] 4266 	mov	@r1,a
      00424B 08               [12] 4267 	inc	r0
      00424C 09               [12] 4268 	inc	r1
      00424D E6               [12] 4269 	mov	a,@r0
      00424E F7               [12] 4270 	mov	@r1,a
      00424F E5 08            [12] 4271 	mov	a,_bp
      004251 24 07            [12] 4272 	add	a,#0x07
      004253 F8               [12] 4273 	mov	r0,a
      004254 86 82            [24] 4274 	mov	dpl,@r0
      004256 08               [12] 4275 	inc	r0
      004257 86 83            [24] 4276 	mov	dph,@r0
      004259 08               [12] 4277 	inc	r0
      00425A 86 F0            [24] 4278 	mov	b,@r0
      00425C 12 71 7E         [24] 4279 	lcall	__gptrget
      00425F FA               [12] 4280 	mov	r2,a
      004260 A3               [24] 4281 	inc	dptr
      004261 12 71 7E         [24] 4282 	lcall	__gptrget
      004264 FB               [12] 4283 	mov	r3,a
      004265 A3               [24] 4284 	inc	dptr
      004266 12 71 7E         [24] 4285 	lcall	__gptrget
      004269 FC               [12] 4286 	mov	r4,a
      00426A E5 08            [12] 4287 	mov	a,_bp
      00426C 24 0B            [12] 4288 	add	a,#0x0b
      00426E F8               [12] 4289 	mov	r0,a
      00426F 86 82            [24] 4290 	mov	dpl,@r0
      004271 08               [12] 4291 	inc	r0
      004272 86 83            [24] 4292 	mov	dph,@r0
      004274 08               [12] 4293 	inc	r0
      004275 86 F0            [24] 4294 	mov	b,@r0
      004277 EA               [12] 4295 	mov	a,r2
      004278 12 6D 03         [24] 4296 	lcall	__gptrput
      00427B A3               [24] 4297 	inc	dptr
      00427C EB               [12] 4298 	mov	a,r3
      00427D 12 6D 03         [24] 4299 	lcall	__gptrput
      004280 A3               [24] 4300 	inc	dptr
      004281 EC               [12] 4301 	mov	a,r4
      004282 12 6D 03         [24] 4302 	lcall	__gptrput
                                   4303 ;	calc.c:211: ctx->ss = t0;
      004285 E5 08            [12] 4304 	mov	a,_bp
      004287 24 07            [12] 4305 	add	a,#0x07
      004289 F8               [12] 4306 	mov	r0,a
      00428A 86 82            [24] 4307 	mov	dpl,@r0
      00428C 08               [12] 4308 	inc	r0
      00428D 86 83            [24] 4309 	mov	dph,@r0
      00428F 08               [12] 4310 	inc	r0
      004290 86 F0            [24] 4311 	mov	b,@r0
      004292 EF               [12] 4312 	mov	a,r7
      004293 12 6D 03         [24] 4313 	lcall	__gptrput
      004296 A3               [24] 4314 	inc	dptr
      004297 EE               [12] 4315 	mov	a,r6
      004298 12 6D 03         [24] 4316 	lcall	__gptrput
      00429B A3               [24] 4317 	inc	dptr
      00429C ED               [12] 4318 	mov	a,r5
      00429D 12 6D 03         [24] 4319 	lcall	__gptrput
                                   4320 ;	calc.c:212: break;
      0042A0 02 57 B4         [24] 4321 	ljmp	00249$
                                   4322 ;	calc.c:213: case '+':
      0042A3                       4323 00153$:
                                   4324 ;	calc.c:214: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0042A3 E5 08            [12] 4325 	mov	a,_bp
      0042A5 24 15            [12] 4326 	add	a,#0x15
      0042A7 FF               [12] 4327 	mov	r7,a
      0042A8 7E 00            [12] 4328 	mov	r6,#0x00
      0042AA 7D 40            [12] 4329 	mov	r5,#0x40
      0042AC E5 08            [12] 4330 	mov	a,_bp
      0042AE 24 12            [12] 4331 	add	a,#0x12
      0042B0 F8               [12] 4332 	mov	r0,a
      0042B1 E5 08            [12] 4333 	mov	a,_bp
      0042B3 24 0B            [12] 4334 	add	a,#0x0b
      0042B5 F9               [12] 4335 	mov	r1,a
      0042B6 74 13            [12] 4336 	mov	a,#0x13
      0042B8 26               [12] 4337 	add	a,@r0
      0042B9 F7               [12] 4338 	mov	@r1,a
      0042BA 74 40            [12] 4339 	mov	a,#0x40
      0042BC 08               [12] 4340 	inc	r0
      0042BD 36               [12] 4341 	addc	a,@r0
      0042BE 09               [12] 4342 	inc	r1
      0042BF F7               [12] 4343 	mov	@r1,a
      0042C0 08               [12] 4344 	inc	r0
      0042C1 09               [12] 4345 	inc	r1
      0042C2 E6               [12] 4346 	mov	a,@r0
      0042C3 F7               [12] 4347 	mov	@r1,a
      0042C4 E5 08            [12] 4348 	mov	a,_bp
      0042C6 24 0B            [12] 4349 	add	a,#0x0b
      0042C8 F8               [12] 4350 	mov	r0,a
      0042C9 86 82            [24] 4351 	mov	dpl,@r0
      0042CB 08               [12] 4352 	inc	r0
      0042CC 86 83            [24] 4353 	mov	dph,@r0
      0042CE 08               [12] 4354 	inc	r0
      0042CF 86 F0            [24] 4355 	mov	b,@r0
      0042D1 12 71 7E         [24] 4356 	lcall	__gptrget
      0042D4 FA               [12] 4357 	mov	r2,a
      0042D5 A3               [24] 4358 	inc	dptr
      0042D6 12 71 7E         [24] 4359 	lcall	__gptrget
      0042D9 FB               [12] 4360 	mov	r3,a
      0042DA A3               [24] 4361 	inc	dptr
      0042DB 12 71 7E         [24] 4362 	lcall	__gptrget
      0042DE FC               [12] 4363 	mov	r4,a
      0042DF C0 07            [24] 4364 	push	ar7
      0042E1 C0 06            [24] 4365 	push	ar6
      0042E3 C0 05            [24] 4366 	push	ar5
      0042E5 8A 82            [24] 4367 	mov	dpl,r2
      0042E7 8B 83            [24] 4368 	mov	dph,r3
      0042E9 8C F0            [24] 4369 	mov	b,r4
      0042EB 12 27 B4         [24] 4370 	lcall	_stack_pop
      0042EE AB 82            [24] 4371 	mov	r3,dpl
      0042F0 AC 83            [24] 4372 	mov	r4,dph
      0042F2 15 81            [12] 4373 	dec	sp
      0042F4 15 81            [12] 4374 	dec	sp
      0042F6 15 81            [12] 4375 	dec	sp
      0042F8 EB               [12] 4376 	mov	a,r3
      0042F9 4C               [12] 4377 	orl	a,r4
      0042FA 70 25            [24] 4378 	jnz	00158$
      0042FC 7F 4D            [12] 4379 	mov	r7,#___str_10
      0042FE 7E 8A            [12] 4380 	mov	r6,#(___str_10 >> 8)
      004300 7D 80            [12] 4381 	mov	r5,#0x80
                                   4382 ;	calc.c:51: return;
      004302                       4383 00426$:
                                   4384 ;	calc.c:49: for (; *s; s++) putchar(*s);
      004302 8F 82            [24] 4385 	mov	dpl,r7
      004304 8E 83            [24] 4386 	mov	dph,r6
      004306 8D F0            [24] 4387 	mov	b,r5
      004308 12 71 7E         [24] 4388 	lcall	__gptrget
      00430B FC               [12] 4389 	mov	r4,a
      00430C 70 03            [24] 4390 	jnz	01326$
      00430E 02 57 B4         [24] 4391 	ljmp	00249$
      004311                       4392 01326$:
      004311 7B 00            [12] 4393 	mov	r3,#0x00
      004313 8C 82            [24] 4394 	mov	dpl,r4
      004315 8B 83            [24] 4395 	mov	dph,r3
      004317 12 2C 1F         [24] 4396 	lcall	_putchar
      00431A 0F               [12] 4397 	inc	r7
                                   4398 ;	calc.c:214: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      00431B BF 00 E4         [24] 4399 	cjne	r7,#0x00,00426$
      00431E 0E               [12] 4400 	inc	r6
      00431F 80 E1            [24] 4401 	sjmp	00426$
      004321                       4402 00158$:
                                   4403 ;	calc.c:215: else if (!stack_pop(ctx->ps, &d1)) {
      004321 E5 08            [12] 4404 	mov	a,_bp
      004323 24 19            [12] 4405 	add	a,#0x19
      004325 FF               [12] 4406 	mov	r7,a
      004326 7E 00            [12] 4407 	mov	r6,#0x00
      004328 7D 40            [12] 4408 	mov	r5,#0x40
      00432A E5 08            [12] 4409 	mov	a,_bp
      00432C 24 0B            [12] 4410 	add	a,#0x0b
      00432E F8               [12] 4411 	mov	r0,a
      00432F 86 82            [24] 4412 	mov	dpl,@r0
      004331 08               [12] 4413 	inc	r0
      004332 86 83            [24] 4414 	mov	dph,@r0
      004334 08               [12] 4415 	inc	r0
      004335 86 F0            [24] 4416 	mov	b,@r0
      004337 12 71 7E         [24] 4417 	lcall	__gptrget
      00433A FA               [12] 4418 	mov	r2,a
      00433B A3               [24] 4419 	inc	dptr
      00433C 12 71 7E         [24] 4420 	lcall	__gptrget
      00433F FB               [12] 4421 	mov	r3,a
      004340 A3               [24] 4422 	inc	dptr
      004341 12 71 7E         [24] 4423 	lcall	__gptrget
      004344 FC               [12] 4424 	mov	r4,a
      004345 C0 07            [24] 4425 	push	ar7
      004347 C0 06            [24] 4426 	push	ar6
      004349 C0 05            [24] 4427 	push	ar5
      00434B 8A 82            [24] 4428 	mov	dpl,r2
      00434D 8B 83            [24] 4429 	mov	dph,r3
      00434F 8C F0            [24] 4430 	mov	b,r4
      004351 12 27 B4         [24] 4431 	lcall	_stack_pop
      004354 AB 82            [24] 4432 	mov	r3,dpl
      004356 AC 83            [24] 4433 	mov	r4,dph
      004358 15 81            [12] 4434 	dec	sp
      00435A 15 81            [12] 4435 	dec	sp
      00435C 15 81            [12] 4436 	dec	sp
      00435E EB               [12] 4437 	mov	a,r3
      00435F 4C               [12] 4438 	orl	a,r4
      004360 70 63            [24] 4439 	jnz	00155$
                                   4440 ;	calc.c:216: (void)stack_push(ctx->ps, d0);
      004362 E5 08            [12] 4441 	mov	a,_bp
      004364 24 0B            [12] 4442 	add	a,#0x0b
      004366 F8               [12] 4443 	mov	r0,a
      004367 86 82            [24] 4444 	mov	dpl,@r0
      004369 08               [12] 4445 	inc	r0
      00436A 86 83            [24] 4446 	mov	dph,@r0
      00436C 08               [12] 4447 	inc	r0
      00436D 86 F0            [24] 4448 	mov	b,@r0
      00436F 12 71 7E         [24] 4449 	lcall	__gptrget
      004372 FA               [12] 4450 	mov	r2,a
      004373 A3               [24] 4451 	inc	dptr
      004374 12 71 7E         [24] 4452 	lcall	__gptrget
      004377 FB               [12] 4453 	mov	r3,a
      004378 A3               [24] 4454 	inc	dptr
      004379 12 71 7E         [24] 4455 	lcall	__gptrget
      00437C FC               [12] 4456 	mov	r4,a
      00437D E5 08            [12] 4457 	mov	a,_bp
      00437F 24 15            [12] 4458 	add	a,#0x15
      004381 F8               [12] 4459 	mov	r0,a
      004382 E6               [12] 4460 	mov	a,@r0
      004383 C0 E0            [24] 4461 	push	acc
      004385 08               [12] 4462 	inc	r0
      004386 E6               [12] 4463 	mov	a,@r0
      004387 C0 E0            [24] 4464 	push	acc
      004389 08               [12] 4465 	inc	r0
      00438A E6               [12] 4466 	mov	a,@r0
      00438B C0 E0            [24] 4467 	push	acc
      00438D 08               [12] 4468 	inc	r0
      00438E E6               [12] 4469 	mov	a,@r0
      00438F C0 E0            [24] 4470 	push	acc
      004391 8A 82            [24] 4471 	mov	dpl,r2
      004393 8B 83            [24] 4472 	mov	dph,r3
      004395 8C F0            [24] 4473 	mov	b,r4
      004397 12 26 BA         [24] 4474 	lcall	_stack_push
      00439A E5 81            [12] 4475 	mov	a,sp
      00439C 24 FC            [12] 4476 	add	a,#0xfc
      00439E F5 81            [12] 4477 	mov	sp,a
                                   4478 ;	calc.c:217: printstr("\r\nstack underflow\r\n");
      0043A0 7F 4D            [12] 4479 	mov	r7,#___str_10
      0043A2 7E 8A            [12] 4480 	mov	r6,#(___str_10 >> 8)
      0043A4 7D 80            [12] 4481 	mov	r5,#0x80
                                   4482 ;	calc.c:51: return;
      0043A6                       4483 00429$:
                                   4484 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0043A6 8F 82            [24] 4485 	mov	dpl,r7
      0043A8 8E 83            [24] 4486 	mov	dph,r6
      0043AA 8D F0            [24] 4487 	mov	b,r5
      0043AC 12 71 7E         [24] 4488 	lcall	__gptrget
      0043AF FC               [12] 4489 	mov	r4,a
      0043B0 70 03            [24] 4490 	jnz	01329$
      0043B2 02 57 B4         [24] 4491 	ljmp	00249$
      0043B5                       4492 01329$:
      0043B5 7B 00            [12] 4493 	mov	r3,#0x00
      0043B7 8C 82            [24] 4494 	mov	dpl,r4
      0043B9 8B 83            [24] 4495 	mov	dph,r3
      0043BB 12 2C 1F         [24] 4496 	lcall	_putchar
      0043BE 0F               [12] 4497 	inc	r7
                                   4498 ;	calc.c:217: printstr("\r\nstack underflow\r\n");
      0043BF BF 00 E4         [24] 4499 	cjne	r7,#0x00,00429$
      0043C2 0E               [12] 4500 	inc	r6
      0043C3 80 E1            [24] 4501 	sjmp	00429$
      0043C5                       4502 00155$:
                                   4503 ;	calc.c:219: d1 += d0;
      0043C5 E5 08            [12] 4504 	mov	a,_bp
      0043C7 24 19            [12] 4505 	add	a,#0x19
      0043C9 F8               [12] 4506 	mov	r0,a
      0043CA E5 08            [12] 4507 	mov	a,_bp
      0043CC 24 15            [12] 4508 	add	a,#0x15
      0043CE F9               [12] 4509 	mov	r1,a
      0043CF E7               [12] 4510 	mov	a,@r1
      0043D0 26               [12] 4511 	add	a,@r0
      0043D1 F6               [12] 4512 	mov	@r0,a
      0043D2 09               [12] 4513 	inc	r1
      0043D3 E7               [12] 4514 	mov	a,@r1
      0043D4 08               [12] 4515 	inc	r0
      0043D5 36               [12] 4516 	addc	a,@r0
      0043D6 F6               [12] 4517 	mov	@r0,a
      0043D7 09               [12] 4518 	inc	r1
      0043D8 E7               [12] 4519 	mov	a,@r1
      0043D9 08               [12] 4520 	inc	r0
      0043DA 36               [12] 4521 	addc	a,@r0
      0043DB F6               [12] 4522 	mov	@r0,a
      0043DC 09               [12] 4523 	inc	r1
      0043DD E7               [12] 4524 	mov	a,@r1
      0043DE 08               [12] 4525 	inc	r0
      0043DF 36               [12] 4526 	addc	a,@r0
      0043E0 F6               [12] 4527 	mov	@r0,a
                                   4528 ;	calc.c:220: (void)stack_push(ctx->ps, d1);
      0043E1 E5 08            [12] 4529 	mov	a,_bp
      0043E3 24 0B            [12] 4530 	add	a,#0x0b
      0043E5 F8               [12] 4531 	mov	r0,a
      0043E6 86 82            [24] 4532 	mov	dpl,@r0
      0043E8 08               [12] 4533 	inc	r0
      0043E9 86 83            [24] 4534 	mov	dph,@r0
      0043EB 08               [12] 4535 	inc	r0
      0043EC 86 F0            [24] 4536 	mov	b,@r0
      0043EE 12 71 7E         [24] 4537 	lcall	__gptrget
      0043F1 FA               [12] 4538 	mov	r2,a
      0043F2 A3               [24] 4539 	inc	dptr
      0043F3 12 71 7E         [24] 4540 	lcall	__gptrget
      0043F6 FB               [12] 4541 	mov	r3,a
      0043F7 A3               [24] 4542 	inc	dptr
      0043F8 12 71 7E         [24] 4543 	lcall	__gptrget
      0043FB FC               [12] 4544 	mov	r4,a
      0043FC E5 08            [12] 4545 	mov	a,_bp
      0043FE 24 19            [12] 4546 	add	a,#0x19
      004400 F8               [12] 4547 	mov	r0,a
      004401 E6               [12] 4548 	mov	a,@r0
      004402 C0 E0            [24] 4549 	push	acc
      004404 08               [12] 4550 	inc	r0
      004405 E6               [12] 4551 	mov	a,@r0
      004406 C0 E0            [24] 4552 	push	acc
      004408 08               [12] 4553 	inc	r0
      004409 E6               [12] 4554 	mov	a,@r0
      00440A C0 E0            [24] 4555 	push	acc
      00440C 08               [12] 4556 	inc	r0
      00440D E6               [12] 4557 	mov	a,@r0
      00440E C0 E0            [24] 4558 	push	acc
      004410 8A 82            [24] 4559 	mov	dpl,r2
      004412 8B 83            [24] 4560 	mov	dph,r3
      004414 8C F0            [24] 4561 	mov	b,r4
      004416 12 26 BA         [24] 4562 	lcall	_stack_push
      004419 E5 81            [12] 4563 	mov	a,sp
      00441B 24 FC            [12] 4564 	add	a,#0xfc
      00441D F5 81            [12] 4565 	mov	sp,a
                                   4566 ;	calc.c:222: break;
      00441F 02 57 B4         [24] 4567 	ljmp	00249$
                                   4568 ;	calc.c:223: case '-':
      004422                       4569 00160$:
                                   4570 ;	calc.c:224: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004422 E5 08            [12] 4571 	mov	a,_bp
      004424 24 15            [12] 4572 	add	a,#0x15
      004426 FF               [12] 4573 	mov	r7,a
      004427 7E 00            [12] 4574 	mov	r6,#0x00
      004429 7D 40            [12] 4575 	mov	r5,#0x40
      00442B E5 08            [12] 4576 	mov	a,_bp
      00442D 24 12            [12] 4577 	add	a,#0x12
      00442F F8               [12] 4578 	mov	r0,a
      004430 E5 08            [12] 4579 	mov	a,_bp
      004432 24 0B            [12] 4580 	add	a,#0x0b
      004434 F9               [12] 4581 	mov	r1,a
      004435 74 13            [12] 4582 	mov	a,#0x13
      004437 26               [12] 4583 	add	a,@r0
      004438 F7               [12] 4584 	mov	@r1,a
      004439 74 40            [12] 4585 	mov	a,#0x40
      00443B 08               [12] 4586 	inc	r0
      00443C 36               [12] 4587 	addc	a,@r0
      00443D 09               [12] 4588 	inc	r1
      00443E F7               [12] 4589 	mov	@r1,a
      00443F 08               [12] 4590 	inc	r0
      004440 09               [12] 4591 	inc	r1
      004441 E6               [12] 4592 	mov	a,@r0
      004442 F7               [12] 4593 	mov	@r1,a
      004443 E5 08            [12] 4594 	mov	a,_bp
      004445 24 0B            [12] 4595 	add	a,#0x0b
      004447 F8               [12] 4596 	mov	r0,a
      004448 86 82            [24] 4597 	mov	dpl,@r0
      00444A 08               [12] 4598 	inc	r0
      00444B 86 83            [24] 4599 	mov	dph,@r0
      00444D 08               [12] 4600 	inc	r0
      00444E 86 F0            [24] 4601 	mov	b,@r0
      004450 12 71 7E         [24] 4602 	lcall	__gptrget
      004453 FA               [12] 4603 	mov	r2,a
      004454 A3               [24] 4604 	inc	dptr
      004455 12 71 7E         [24] 4605 	lcall	__gptrget
      004458 FB               [12] 4606 	mov	r3,a
      004459 A3               [24] 4607 	inc	dptr
      00445A 12 71 7E         [24] 4608 	lcall	__gptrget
      00445D FC               [12] 4609 	mov	r4,a
      00445E C0 07            [24] 4610 	push	ar7
      004460 C0 06            [24] 4611 	push	ar6
      004462 C0 05            [24] 4612 	push	ar5
      004464 8A 82            [24] 4613 	mov	dpl,r2
      004466 8B 83            [24] 4614 	mov	dph,r3
      004468 8C F0            [24] 4615 	mov	b,r4
      00446A 12 27 B4         [24] 4616 	lcall	_stack_pop
      00446D AB 82            [24] 4617 	mov	r3,dpl
      00446F AC 83            [24] 4618 	mov	r4,dph
      004471 15 81            [12] 4619 	dec	sp
      004473 15 81            [12] 4620 	dec	sp
      004475 15 81            [12] 4621 	dec	sp
      004477 EB               [12] 4622 	mov	a,r3
      004478 4C               [12] 4623 	orl	a,r4
      004479 70 25            [24] 4624 	jnz	00165$
      00447B 7F 4D            [12] 4625 	mov	r7,#___str_10
      00447D 7E 8A            [12] 4626 	mov	r6,#(___str_10 >> 8)
      00447F 7D 80            [12] 4627 	mov	r5,#0x80
                                   4628 ;	calc.c:51: return;
      004481                       4629 00432$:
                                   4630 ;	calc.c:49: for (; *s; s++) putchar(*s);
      004481 8F 82            [24] 4631 	mov	dpl,r7
      004483 8E 83            [24] 4632 	mov	dph,r6
      004485 8D F0            [24] 4633 	mov	b,r5
      004487 12 71 7E         [24] 4634 	lcall	__gptrget
      00448A FC               [12] 4635 	mov	r4,a
      00448B 70 03            [24] 4636 	jnz	01332$
      00448D 02 57 B4         [24] 4637 	ljmp	00249$
      004490                       4638 01332$:
      004490 7B 00            [12] 4639 	mov	r3,#0x00
      004492 8C 82            [24] 4640 	mov	dpl,r4
      004494 8B 83            [24] 4641 	mov	dph,r3
      004496 12 2C 1F         [24] 4642 	lcall	_putchar
      004499 0F               [12] 4643 	inc	r7
                                   4644 ;	calc.c:224: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      00449A BF 00 E4         [24] 4645 	cjne	r7,#0x00,00432$
      00449D 0E               [12] 4646 	inc	r6
      00449E 80 E1            [24] 4647 	sjmp	00432$
      0044A0                       4648 00165$:
                                   4649 ;	calc.c:225: else if (!stack_pop(ctx->ps, &d1)) {
      0044A0 E5 08            [12] 4650 	mov	a,_bp
      0044A2 24 19            [12] 4651 	add	a,#0x19
      0044A4 FF               [12] 4652 	mov	r7,a
      0044A5 7E 00            [12] 4653 	mov	r6,#0x00
      0044A7 7D 40            [12] 4654 	mov	r5,#0x40
      0044A9 E5 08            [12] 4655 	mov	a,_bp
      0044AB 24 0B            [12] 4656 	add	a,#0x0b
      0044AD F8               [12] 4657 	mov	r0,a
      0044AE 86 82            [24] 4658 	mov	dpl,@r0
      0044B0 08               [12] 4659 	inc	r0
      0044B1 86 83            [24] 4660 	mov	dph,@r0
      0044B3 08               [12] 4661 	inc	r0
      0044B4 86 F0            [24] 4662 	mov	b,@r0
      0044B6 12 71 7E         [24] 4663 	lcall	__gptrget
      0044B9 FA               [12] 4664 	mov	r2,a
      0044BA A3               [24] 4665 	inc	dptr
      0044BB 12 71 7E         [24] 4666 	lcall	__gptrget
      0044BE FB               [12] 4667 	mov	r3,a
      0044BF A3               [24] 4668 	inc	dptr
      0044C0 12 71 7E         [24] 4669 	lcall	__gptrget
      0044C3 FC               [12] 4670 	mov	r4,a
      0044C4 C0 07            [24] 4671 	push	ar7
      0044C6 C0 06            [24] 4672 	push	ar6
      0044C8 C0 05            [24] 4673 	push	ar5
      0044CA 8A 82            [24] 4674 	mov	dpl,r2
      0044CC 8B 83            [24] 4675 	mov	dph,r3
      0044CE 8C F0            [24] 4676 	mov	b,r4
      0044D0 12 27 B4         [24] 4677 	lcall	_stack_pop
      0044D3 AB 82            [24] 4678 	mov	r3,dpl
      0044D5 AC 83            [24] 4679 	mov	r4,dph
      0044D7 15 81            [12] 4680 	dec	sp
      0044D9 15 81            [12] 4681 	dec	sp
      0044DB 15 81            [12] 4682 	dec	sp
      0044DD EB               [12] 4683 	mov	a,r3
      0044DE 4C               [12] 4684 	orl	a,r4
      0044DF 70 63            [24] 4685 	jnz	00162$
                                   4686 ;	calc.c:226: (void)stack_push(ctx->ps, d0);
      0044E1 E5 08            [12] 4687 	mov	a,_bp
      0044E3 24 0B            [12] 4688 	add	a,#0x0b
      0044E5 F8               [12] 4689 	mov	r0,a
      0044E6 86 82            [24] 4690 	mov	dpl,@r0
      0044E8 08               [12] 4691 	inc	r0
      0044E9 86 83            [24] 4692 	mov	dph,@r0
      0044EB 08               [12] 4693 	inc	r0
      0044EC 86 F0            [24] 4694 	mov	b,@r0
      0044EE 12 71 7E         [24] 4695 	lcall	__gptrget
      0044F1 FA               [12] 4696 	mov	r2,a
      0044F2 A3               [24] 4697 	inc	dptr
      0044F3 12 71 7E         [24] 4698 	lcall	__gptrget
      0044F6 FB               [12] 4699 	mov	r3,a
      0044F7 A3               [24] 4700 	inc	dptr
      0044F8 12 71 7E         [24] 4701 	lcall	__gptrget
      0044FB FC               [12] 4702 	mov	r4,a
      0044FC E5 08            [12] 4703 	mov	a,_bp
      0044FE 24 15            [12] 4704 	add	a,#0x15
      004500 F8               [12] 4705 	mov	r0,a
      004501 E6               [12] 4706 	mov	a,@r0
      004502 C0 E0            [24] 4707 	push	acc
      004504 08               [12] 4708 	inc	r0
      004505 E6               [12] 4709 	mov	a,@r0
      004506 C0 E0            [24] 4710 	push	acc
      004508 08               [12] 4711 	inc	r0
      004509 E6               [12] 4712 	mov	a,@r0
      00450A C0 E0            [24] 4713 	push	acc
      00450C 08               [12] 4714 	inc	r0
      00450D E6               [12] 4715 	mov	a,@r0
      00450E C0 E0            [24] 4716 	push	acc
      004510 8A 82            [24] 4717 	mov	dpl,r2
      004512 8B 83            [24] 4718 	mov	dph,r3
      004514 8C F0            [24] 4719 	mov	b,r4
      004516 12 26 BA         [24] 4720 	lcall	_stack_push
      004519 E5 81            [12] 4721 	mov	a,sp
      00451B 24 FC            [12] 4722 	add	a,#0xfc
      00451D F5 81            [12] 4723 	mov	sp,a
                                   4724 ;	calc.c:227: printstr("\r\nstack underflow\r\n");
      00451F 7F 4D            [12] 4725 	mov	r7,#___str_10
      004521 7E 8A            [12] 4726 	mov	r6,#(___str_10 >> 8)
      004523 7D 80            [12] 4727 	mov	r5,#0x80
                                   4728 ;	calc.c:51: return;
      004525                       4729 00435$:
                                   4730 ;	calc.c:49: for (; *s; s++) putchar(*s);
      004525 8F 82            [24] 4731 	mov	dpl,r7
      004527 8E 83            [24] 4732 	mov	dph,r6
      004529 8D F0            [24] 4733 	mov	b,r5
      00452B 12 71 7E         [24] 4734 	lcall	__gptrget
      00452E FC               [12] 4735 	mov	r4,a
      00452F 70 03            [24] 4736 	jnz	01335$
      004531 02 57 B4         [24] 4737 	ljmp	00249$
      004534                       4738 01335$:
      004534 7B 00            [12] 4739 	mov	r3,#0x00
      004536 8C 82            [24] 4740 	mov	dpl,r4
      004538 8B 83            [24] 4741 	mov	dph,r3
      00453A 12 2C 1F         [24] 4742 	lcall	_putchar
      00453D 0F               [12] 4743 	inc	r7
                                   4744 ;	calc.c:227: printstr("\r\nstack underflow\r\n");
      00453E BF 00 E4         [24] 4745 	cjne	r7,#0x00,00435$
      004541 0E               [12] 4746 	inc	r6
      004542 80 E1            [24] 4747 	sjmp	00435$
      004544                       4748 00162$:
                                   4749 ;	calc.c:229: d1 -= d0;
      004544 E5 08            [12] 4750 	mov	a,_bp
      004546 24 19            [12] 4751 	add	a,#0x19
      004548 F8               [12] 4752 	mov	r0,a
      004549 E5 08            [12] 4753 	mov	a,_bp
      00454B 24 15            [12] 4754 	add	a,#0x15
      00454D F9               [12] 4755 	mov	r1,a
      00454E E6               [12] 4756 	mov	a,@r0
      00454F C3               [12] 4757 	clr	c
      004550 97               [12] 4758 	subb	a,@r1
      004551 F6               [12] 4759 	mov	@r0,a
      004552 08               [12] 4760 	inc	r0
      004553 E6               [12] 4761 	mov	a,@r0
      004554 09               [12] 4762 	inc	r1
      004555 97               [12] 4763 	subb	a,@r1
      004556 F6               [12] 4764 	mov	@r0,a
      004557 08               [12] 4765 	inc	r0
      004558 E6               [12] 4766 	mov	a,@r0
      004559 09               [12] 4767 	inc	r1
      00455A 97               [12] 4768 	subb	a,@r1
      00455B F6               [12] 4769 	mov	@r0,a
      00455C 08               [12] 4770 	inc	r0
      00455D E6               [12] 4771 	mov	a,@r0
      00455E 09               [12] 4772 	inc	r1
      00455F 97               [12] 4773 	subb	a,@r1
      004560 F6               [12] 4774 	mov	@r0,a
                                   4775 ;	calc.c:230: (void)stack_push(ctx->ps, d1);
      004561 E5 08            [12] 4776 	mov	a,_bp
      004563 24 0B            [12] 4777 	add	a,#0x0b
      004565 F8               [12] 4778 	mov	r0,a
      004566 86 82            [24] 4779 	mov	dpl,@r0
      004568 08               [12] 4780 	inc	r0
      004569 86 83            [24] 4781 	mov	dph,@r0
      00456B 08               [12] 4782 	inc	r0
      00456C 86 F0            [24] 4783 	mov	b,@r0
      00456E 12 71 7E         [24] 4784 	lcall	__gptrget
      004571 FA               [12] 4785 	mov	r2,a
      004572 A3               [24] 4786 	inc	dptr
      004573 12 71 7E         [24] 4787 	lcall	__gptrget
      004576 FB               [12] 4788 	mov	r3,a
      004577 A3               [24] 4789 	inc	dptr
      004578 12 71 7E         [24] 4790 	lcall	__gptrget
      00457B FC               [12] 4791 	mov	r4,a
      00457C E5 08            [12] 4792 	mov	a,_bp
      00457E 24 19            [12] 4793 	add	a,#0x19
      004580 F8               [12] 4794 	mov	r0,a
      004581 E6               [12] 4795 	mov	a,@r0
      004582 C0 E0            [24] 4796 	push	acc
      004584 08               [12] 4797 	inc	r0
      004585 E6               [12] 4798 	mov	a,@r0
      004586 C0 E0            [24] 4799 	push	acc
      004588 08               [12] 4800 	inc	r0
      004589 E6               [12] 4801 	mov	a,@r0
      00458A C0 E0            [24] 4802 	push	acc
      00458C 08               [12] 4803 	inc	r0
      00458D E6               [12] 4804 	mov	a,@r0
      00458E C0 E0            [24] 4805 	push	acc
      004590 8A 82            [24] 4806 	mov	dpl,r2
      004592 8B 83            [24] 4807 	mov	dph,r3
      004594 8C F0            [24] 4808 	mov	b,r4
      004596 12 26 BA         [24] 4809 	lcall	_stack_push
      004599 E5 81            [12] 4810 	mov	a,sp
      00459B 24 FC            [12] 4811 	add	a,#0xfc
      00459D F5 81            [12] 4812 	mov	sp,a
                                   4813 ;	calc.c:232: break;
      00459F 02 57 B4         [24] 4814 	ljmp	00249$
                                   4815 ;	calc.c:233: case '*':
      0045A2                       4816 00167$:
                                   4817 ;	calc.c:234: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0045A2 E5 08            [12] 4818 	mov	a,_bp
      0045A4 24 15            [12] 4819 	add	a,#0x15
      0045A6 FF               [12] 4820 	mov	r7,a
      0045A7 7E 00            [12] 4821 	mov	r6,#0x00
      0045A9 7D 40            [12] 4822 	mov	r5,#0x40
      0045AB E5 08            [12] 4823 	mov	a,_bp
      0045AD 24 12            [12] 4824 	add	a,#0x12
      0045AF F8               [12] 4825 	mov	r0,a
      0045B0 E5 08            [12] 4826 	mov	a,_bp
      0045B2 24 0B            [12] 4827 	add	a,#0x0b
      0045B4 F9               [12] 4828 	mov	r1,a
      0045B5 74 13            [12] 4829 	mov	a,#0x13
      0045B7 26               [12] 4830 	add	a,@r0
      0045B8 F7               [12] 4831 	mov	@r1,a
      0045B9 74 40            [12] 4832 	mov	a,#0x40
      0045BB 08               [12] 4833 	inc	r0
      0045BC 36               [12] 4834 	addc	a,@r0
      0045BD 09               [12] 4835 	inc	r1
      0045BE F7               [12] 4836 	mov	@r1,a
      0045BF 08               [12] 4837 	inc	r0
      0045C0 09               [12] 4838 	inc	r1
      0045C1 E6               [12] 4839 	mov	a,@r0
      0045C2 F7               [12] 4840 	mov	@r1,a
      0045C3 E5 08            [12] 4841 	mov	a,_bp
      0045C5 24 0B            [12] 4842 	add	a,#0x0b
      0045C7 F8               [12] 4843 	mov	r0,a
      0045C8 86 82            [24] 4844 	mov	dpl,@r0
      0045CA 08               [12] 4845 	inc	r0
      0045CB 86 83            [24] 4846 	mov	dph,@r0
      0045CD 08               [12] 4847 	inc	r0
      0045CE 86 F0            [24] 4848 	mov	b,@r0
      0045D0 12 71 7E         [24] 4849 	lcall	__gptrget
      0045D3 FA               [12] 4850 	mov	r2,a
      0045D4 A3               [24] 4851 	inc	dptr
      0045D5 12 71 7E         [24] 4852 	lcall	__gptrget
      0045D8 FB               [12] 4853 	mov	r3,a
      0045D9 A3               [24] 4854 	inc	dptr
      0045DA 12 71 7E         [24] 4855 	lcall	__gptrget
      0045DD FC               [12] 4856 	mov	r4,a
      0045DE C0 07            [24] 4857 	push	ar7
      0045E0 C0 06            [24] 4858 	push	ar6
      0045E2 C0 05            [24] 4859 	push	ar5
      0045E4 8A 82            [24] 4860 	mov	dpl,r2
      0045E6 8B 83            [24] 4861 	mov	dph,r3
      0045E8 8C F0            [24] 4862 	mov	b,r4
      0045EA 12 27 B4         [24] 4863 	lcall	_stack_pop
      0045ED AB 82            [24] 4864 	mov	r3,dpl
      0045EF AC 83            [24] 4865 	mov	r4,dph
      0045F1 15 81            [12] 4866 	dec	sp
      0045F3 15 81            [12] 4867 	dec	sp
      0045F5 15 81            [12] 4868 	dec	sp
      0045F7 EB               [12] 4869 	mov	a,r3
      0045F8 4C               [12] 4870 	orl	a,r4
      0045F9 70 25            [24] 4871 	jnz	00172$
      0045FB 7F 4D            [12] 4872 	mov	r7,#___str_10
      0045FD 7E 8A            [12] 4873 	mov	r6,#(___str_10 >> 8)
      0045FF 7D 80            [12] 4874 	mov	r5,#0x80
                                   4875 ;	calc.c:51: return;
      004601                       4876 00438$:
                                   4877 ;	calc.c:49: for (; *s; s++) putchar(*s);
      004601 8F 82            [24] 4878 	mov	dpl,r7
      004603 8E 83            [24] 4879 	mov	dph,r6
      004605 8D F0            [24] 4880 	mov	b,r5
      004607 12 71 7E         [24] 4881 	lcall	__gptrget
      00460A FC               [12] 4882 	mov	r4,a
      00460B 70 03            [24] 4883 	jnz	01338$
      00460D 02 57 B4         [24] 4884 	ljmp	00249$
      004610                       4885 01338$:
      004610 7B 00            [12] 4886 	mov	r3,#0x00
      004612 8C 82            [24] 4887 	mov	dpl,r4
      004614 8B 83            [24] 4888 	mov	dph,r3
      004616 12 2C 1F         [24] 4889 	lcall	_putchar
      004619 0F               [12] 4890 	inc	r7
                                   4891 ;	calc.c:234: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      00461A BF 00 E4         [24] 4892 	cjne	r7,#0x00,00438$
      00461D 0E               [12] 4893 	inc	r6
      00461E 80 E1            [24] 4894 	sjmp	00438$
      004620                       4895 00172$:
                                   4896 ;	calc.c:235: else if (!stack_pop(ctx->ps, &d1)) {
      004620 E5 08            [12] 4897 	mov	a,_bp
      004622 24 19            [12] 4898 	add	a,#0x19
      004624 FF               [12] 4899 	mov	r7,a
      004625 7E 00            [12] 4900 	mov	r6,#0x00
      004627 7D 40            [12] 4901 	mov	r5,#0x40
      004629 E5 08            [12] 4902 	mov	a,_bp
      00462B 24 0B            [12] 4903 	add	a,#0x0b
      00462D F8               [12] 4904 	mov	r0,a
      00462E 86 82            [24] 4905 	mov	dpl,@r0
      004630 08               [12] 4906 	inc	r0
      004631 86 83            [24] 4907 	mov	dph,@r0
      004633 08               [12] 4908 	inc	r0
      004634 86 F0            [24] 4909 	mov	b,@r0
      004636 12 71 7E         [24] 4910 	lcall	__gptrget
      004639 FA               [12] 4911 	mov	r2,a
      00463A A3               [24] 4912 	inc	dptr
      00463B 12 71 7E         [24] 4913 	lcall	__gptrget
      00463E FB               [12] 4914 	mov	r3,a
      00463F A3               [24] 4915 	inc	dptr
      004640 12 71 7E         [24] 4916 	lcall	__gptrget
      004643 FC               [12] 4917 	mov	r4,a
      004644 C0 07            [24] 4918 	push	ar7
      004646 C0 06            [24] 4919 	push	ar6
      004648 C0 05            [24] 4920 	push	ar5
      00464A 8A 82            [24] 4921 	mov	dpl,r2
      00464C 8B 83            [24] 4922 	mov	dph,r3
      00464E 8C F0            [24] 4923 	mov	b,r4
      004650 12 27 B4         [24] 4924 	lcall	_stack_pop
      004653 AB 82            [24] 4925 	mov	r3,dpl
      004655 AC 83            [24] 4926 	mov	r4,dph
      004657 15 81            [12] 4927 	dec	sp
      004659 15 81            [12] 4928 	dec	sp
      00465B 15 81            [12] 4929 	dec	sp
      00465D EB               [12] 4930 	mov	a,r3
      00465E 4C               [12] 4931 	orl	a,r4
      00465F 70 63            [24] 4932 	jnz	00169$
                                   4933 ;	calc.c:236: (void)stack_push(ctx->ps, d0);
      004661 E5 08            [12] 4934 	mov	a,_bp
      004663 24 0B            [12] 4935 	add	a,#0x0b
      004665 F8               [12] 4936 	mov	r0,a
      004666 86 82            [24] 4937 	mov	dpl,@r0
      004668 08               [12] 4938 	inc	r0
      004669 86 83            [24] 4939 	mov	dph,@r0
      00466B 08               [12] 4940 	inc	r0
      00466C 86 F0            [24] 4941 	mov	b,@r0
      00466E 12 71 7E         [24] 4942 	lcall	__gptrget
      004671 FA               [12] 4943 	mov	r2,a
      004672 A3               [24] 4944 	inc	dptr
      004673 12 71 7E         [24] 4945 	lcall	__gptrget
      004676 FB               [12] 4946 	mov	r3,a
      004677 A3               [24] 4947 	inc	dptr
      004678 12 71 7E         [24] 4948 	lcall	__gptrget
      00467B FC               [12] 4949 	mov	r4,a
      00467C E5 08            [12] 4950 	mov	a,_bp
      00467E 24 15            [12] 4951 	add	a,#0x15
      004680 F8               [12] 4952 	mov	r0,a
      004681 E6               [12] 4953 	mov	a,@r0
      004682 C0 E0            [24] 4954 	push	acc
      004684 08               [12] 4955 	inc	r0
      004685 E6               [12] 4956 	mov	a,@r0
      004686 C0 E0            [24] 4957 	push	acc
      004688 08               [12] 4958 	inc	r0
      004689 E6               [12] 4959 	mov	a,@r0
      00468A C0 E0            [24] 4960 	push	acc
      00468C 08               [12] 4961 	inc	r0
      00468D E6               [12] 4962 	mov	a,@r0
      00468E C0 E0            [24] 4963 	push	acc
      004690 8A 82            [24] 4964 	mov	dpl,r2
      004692 8B 83            [24] 4965 	mov	dph,r3
      004694 8C F0            [24] 4966 	mov	b,r4
      004696 12 26 BA         [24] 4967 	lcall	_stack_push
      004699 E5 81            [12] 4968 	mov	a,sp
      00469B 24 FC            [12] 4969 	add	a,#0xfc
      00469D F5 81            [12] 4970 	mov	sp,a
                                   4971 ;	calc.c:237: printstr("\r\nstack underflow\r\n");
      00469F 7F 4D            [12] 4972 	mov	r7,#___str_10
      0046A1 7E 8A            [12] 4973 	mov	r6,#(___str_10 >> 8)
      0046A3 7D 80            [12] 4974 	mov	r5,#0x80
                                   4975 ;	calc.c:51: return;
      0046A5                       4976 00441$:
                                   4977 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0046A5 8F 82            [24] 4978 	mov	dpl,r7
      0046A7 8E 83            [24] 4979 	mov	dph,r6
      0046A9 8D F0            [24] 4980 	mov	b,r5
      0046AB 12 71 7E         [24] 4981 	lcall	__gptrget
      0046AE FC               [12] 4982 	mov	r4,a
      0046AF 70 03            [24] 4983 	jnz	01341$
      0046B1 02 57 B4         [24] 4984 	ljmp	00249$
      0046B4                       4985 01341$:
      0046B4 7B 00            [12] 4986 	mov	r3,#0x00
      0046B6 8C 82            [24] 4987 	mov	dpl,r4
      0046B8 8B 83            [24] 4988 	mov	dph,r3
      0046BA 12 2C 1F         [24] 4989 	lcall	_putchar
      0046BD 0F               [12] 4990 	inc	r7
                                   4991 ;	calc.c:237: printstr("\r\nstack underflow\r\n");
      0046BE BF 00 E4         [24] 4992 	cjne	r7,#0x00,00441$
      0046C1 0E               [12] 4993 	inc	r6
      0046C2 80 E1            [24] 4994 	sjmp	00441$
      0046C4                       4995 00169$:
                                   4996 ;	calc.c:239: d1 *= d0;
      0046C4 E5 08            [12] 4997 	mov	a,_bp
      0046C6 24 15            [12] 4998 	add	a,#0x15
      0046C8 F8               [12] 4999 	mov	r0,a
      0046C9 E6               [12] 5000 	mov	a,@r0
      0046CA C0 E0            [24] 5001 	push	acc
      0046CC 08               [12] 5002 	inc	r0
      0046CD E6               [12] 5003 	mov	a,@r0
      0046CE C0 E0            [24] 5004 	push	acc
      0046D0 08               [12] 5005 	inc	r0
      0046D1 E6               [12] 5006 	mov	a,@r0
      0046D2 C0 E0            [24] 5007 	push	acc
      0046D4 08               [12] 5008 	inc	r0
      0046D5 E6               [12] 5009 	mov	a,@r0
      0046D6 C0 E0            [24] 5010 	push	acc
      0046D8 E5 08            [12] 5011 	mov	a,_bp
      0046DA 24 19            [12] 5012 	add	a,#0x19
      0046DC F8               [12] 5013 	mov	r0,a
      0046DD 86 82            [24] 5014 	mov	dpl,@r0
      0046DF 08               [12] 5015 	inc	r0
      0046E0 86 83            [24] 5016 	mov	dph,@r0
      0046E2 08               [12] 5017 	inc	r0
      0046E3 86 F0            [24] 5018 	mov	b,@r0
      0046E5 08               [12] 5019 	inc	r0
      0046E6 E6               [12] 5020 	mov	a,@r0
      0046E7 12 75 77         [24] 5021 	lcall	__mullong
      0046EA AF 82            [24] 5022 	mov	r7,dpl
      0046EC AE 83            [24] 5023 	mov	r6,dph
      0046EE AD F0            [24] 5024 	mov	r5,b
      0046F0 FC               [12] 5025 	mov	r4,a
      0046F1 E5 81            [12] 5026 	mov	a,sp
      0046F3 24 FC            [12] 5027 	add	a,#0xfc
      0046F5 F5 81            [12] 5028 	mov	sp,a
      0046F7 E5 08            [12] 5029 	mov	a,_bp
      0046F9 24 19            [12] 5030 	add	a,#0x19
      0046FB F8               [12] 5031 	mov	r0,a
      0046FC A6 07            [24] 5032 	mov	@r0,ar7
      0046FE 08               [12] 5033 	inc	r0
      0046FF A6 06            [24] 5034 	mov	@r0,ar6
      004701 08               [12] 5035 	inc	r0
      004702 A6 05            [24] 5036 	mov	@r0,ar5
      004704 08               [12] 5037 	inc	r0
      004705 A6 04            [24] 5038 	mov	@r0,ar4
                                   5039 ;	calc.c:240: (void)stack_push(ctx->ps, d1);
      004707 E5 08            [12] 5040 	mov	a,_bp
      004709 24 0B            [12] 5041 	add	a,#0x0b
      00470B F8               [12] 5042 	mov	r0,a
      00470C 86 82            [24] 5043 	mov	dpl,@r0
      00470E 08               [12] 5044 	inc	r0
      00470F 86 83            [24] 5045 	mov	dph,@r0
      004711 08               [12] 5046 	inc	r0
      004712 86 F0            [24] 5047 	mov	b,@r0
      004714 12 71 7E         [24] 5048 	lcall	__gptrget
      004717 FA               [12] 5049 	mov	r2,a
      004718 A3               [24] 5050 	inc	dptr
      004719 12 71 7E         [24] 5051 	lcall	__gptrget
      00471C FB               [12] 5052 	mov	r3,a
      00471D A3               [24] 5053 	inc	dptr
      00471E 12 71 7E         [24] 5054 	lcall	__gptrget
      004721 FC               [12] 5055 	mov	r4,a
      004722 E5 08            [12] 5056 	mov	a,_bp
      004724 24 19            [12] 5057 	add	a,#0x19
      004726 F8               [12] 5058 	mov	r0,a
      004727 E6               [12] 5059 	mov	a,@r0
      004728 C0 E0            [24] 5060 	push	acc
      00472A 08               [12] 5061 	inc	r0
      00472B E6               [12] 5062 	mov	a,@r0
      00472C C0 E0            [24] 5063 	push	acc
      00472E 08               [12] 5064 	inc	r0
      00472F E6               [12] 5065 	mov	a,@r0
      004730 C0 E0            [24] 5066 	push	acc
      004732 08               [12] 5067 	inc	r0
      004733 E6               [12] 5068 	mov	a,@r0
      004734 C0 E0            [24] 5069 	push	acc
      004736 8A 82            [24] 5070 	mov	dpl,r2
      004738 8B 83            [24] 5071 	mov	dph,r3
      00473A 8C F0            [24] 5072 	mov	b,r4
      00473C 12 26 BA         [24] 5073 	lcall	_stack_push
      00473F E5 81            [12] 5074 	mov	a,sp
      004741 24 FC            [12] 5075 	add	a,#0xfc
      004743 F5 81            [12] 5076 	mov	sp,a
                                   5077 ;	calc.c:242: break;
      004745 02 57 B4         [24] 5078 	ljmp	00249$
                                   5079 ;	calc.c:244: case '\\':
      004748                       5080 00175$:
                                   5081 ;	calc.c:245: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004748 C0 05            [24] 5082 	push	ar5
      00474A C0 06            [24] 5083 	push	ar6
      00474C C0 07            [24] 5084 	push	ar7
      00474E E5 08            [12] 5085 	mov	a,_bp
      004750 24 15            [12] 5086 	add	a,#0x15
      004752 FC               [12] 5087 	mov	r4,a
      004753 7B 00            [12] 5088 	mov	r3,#0x00
      004755 7A 40            [12] 5089 	mov	r2,#0x40
      004757 E5 08            [12] 5090 	mov	a,_bp
      004759 24 12            [12] 5091 	add	a,#0x12
      00475B F8               [12] 5092 	mov	r0,a
      00475C E5 08            [12] 5093 	mov	a,_bp
      00475E 24 0B            [12] 5094 	add	a,#0x0b
      004760 F9               [12] 5095 	mov	r1,a
      004761 74 13            [12] 5096 	mov	a,#0x13
      004763 26               [12] 5097 	add	a,@r0
      004764 F7               [12] 5098 	mov	@r1,a
      004765 74 40            [12] 5099 	mov	a,#0x40
      004767 08               [12] 5100 	inc	r0
      004768 36               [12] 5101 	addc	a,@r0
      004769 09               [12] 5102 	inc	r1
      00476A F7               [12] 5103 	mov	@r1,a
      00476B 08               [12] 5104 	inc	r0
      00476C 09               [12] 5105 	inc	r1
      00476D E6               [12] 5106 	mov	a,@r0
      00476E F7               [12] 5107 	mov	@r1,a
      00476F E5 08            [12] 5108 	mov	a,_bp
      004771 24 0B            [12] 5109 	add	a,#0x0b
      004773 F8               [12] 5110 	mov	r0,a
      004774 86 82            [24] 5111 	mov	dpl,@r0
      004776 08               [12] 5112 	inc	r0
      004777 86 83            [24] 5113 	mov	dph,@r0
      004779 08               [12] 5114 	inc	r0
      00477A 86 F0            [24] 5115 	mov	b,@r0
      00477C 12 71 7E         [24] 5116 	lcall	__gptrget
      00477F FD               [12] 5117 	mov	r5,a
      004780 A3               [24] 5118 	inc	dptr
      004781 12 71 7E         [24] 5119 	lcall	__gptrget
      004784 FE               [12] 5120 	mov	r6,a
      004785 A3               [24] 5121 	inc	dptr
      004786 12 71 7E         [24] 5122 	lcall	__gptrget
      004789 FF               [12] 5123 	mov	r7,a
      00478A C0 05            [24] 5124 	push	ar5
      00478C C0 04            [24] 5125 	push	ar4
      00478E C0 03            [24] 5126 	push	ar3
      004790 C0 02            [24] 5127 	push	ar2
      004792 8D 82            [24] 5128 	mov	dpl,r5
      004794 8E 83            [24] 5129 	mov	dph,r6
      004796 8F F0            [24] 5130 	mov	b,r7
      004798 12 27 B4         [24] 5131 	lcall	_stack_pop
      00479B AE 82            [24] 5132 	mov	r6,dpl
      00479D AF 83            [24] 5133 	mov	r7,dph
      00479F 15 81            [12] 5134 	dec	sp
      0047A1 15 81            [12] 5135 	dec	sp
      0047A3 15 81            [12] 5136 	dec	sp
      0047A5 D0 05            [24] 5137 	pop	ar5
      0047A7 EE               [12] 5138 	mov	a,r6
      0047A8 4F               [12] 5139 	orl	a,r7
      0047A9 D0 07            [24] 5140 	pop	ar7
      0047AB D0 06            [24] 5141 	pop	ar6
      0047AD D0 05            [24] 5142 	pop	ar5
      0047AF 70 25            [24] 5143 	jnz	00186$
      0047B1 7F 4D            [12] 5144 	mov	r7,#___str_10
      0047B3 7E 8A            [12] 5145 	mov	r6,#(___str_10 >> 8)
      0047B5 7D 80            [12] 5146 	mov	r5,#0x80
                                   5147 ;	calc.c:51: return;
      0047B7                       5148 00444$:
                                   5149 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0047B7 8F 82            [24] 5150 	mov	dpl,r7
      0047B9 8E 83            [24] 5151 	mov	dph,r6
      0047BB 8D F0            [24] 5152 	mov	b,r5
      0047BD 12 71 7E         [24] 5153 	lcall	__gptrget
      0047C0 FC               [12] 5154 	mov	r4,a
      0047C1 70 03            [24] 5155 	jnz	01344$
      0047C3 02 57 B4         [24] 5156 	ljmp	00249$
      0047C6                       5157 01344$:
      0047C6 7B 00            [12] 5158 	mov	r3,#0x00
      0047C8 8C 82            [24] 5159 	mov	dpl,r4
      0047CA 8B 83            [24] 5160 	mov	dph,r3
      0047CC 12 2C 1F         [24] 5161 	lcall	_putchar
      0047CF 0F               [12] 5162 	inc	r7
                                   5163 ;	calc.c:245: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0047D0 BF 00 E4         [24] 5164 	cjne	r7,#0x00,00444$
      0047D3 0E               [12] 5165 	inc	r6
      0047D4 80 E1            [24] 5166 	sjmp	00444$
      0047D6                       5167 00186$:
                                   5168 ;	calc.c:246: else if (!stack_pop(ctx->ps, &d1)) {
      0047D6 C0 05            [24] 5169 	push	ar5
      0047D8 C0 06            [24] 5170 	push	ar6
      0047DA C0 07            [24] 5171 	push	ar7
      0047DC E5 08            [12] 5172 	mov	a,_bp
      0047DE 24 19            [12] 5173 	add	a,#0x19
      0047E0 FC               [12] 5174 	mov	r4,a
      0047E1 7B 00            [12] 5175 	mov	r3,#0x00
      0047E3 7A 40            [12] 5176 	mov	r2,#0x40
      0047E5 E5 08            [12] 5177 	mov	a,_bp
      0047E7 24 0B            [12] 5178 	add	a,#0x0b
      0047E9 F8               [12] 5179 	mov	r0,a
      0047EA 86 82            [24] 5180 	mov	dpl,@r0
      0047EC 08               [12] 5181 	inc	r0
      0047ED 86 83            [24] 5182 	mov	dph,@r0
      0047EF 08               [12] 5183 	inc	r0
      0047F0 86 F0            [24] 5184 	mov	b,@r0
      0047F2 12 71 7E         [24] 5185 	lcall	__gptrget
      0047F5 FD               [12] 5186 	mov	r5,a
      0047F6 A3               [24] 5187 	inc	dptr
      0047F7 12 71 7E         [24] 5188 	lcall	__gptrget
      0047FA FE               [12] 5189 	mov	r6,a
      0047FB A3               [24] 5190 	inc	dptr
      0047FC 12 71 7E         [24] 5191 	lcall	__gptrget
      0047FF FF               [12] 5192 	mov	r7,a
      004800 C0 05            [24] 5193 	push	ar5
      004802 C0 04            [24] 5194 	push	ar4
      004804 C0 03            [24] 5195 	push	ar3
      004806 C0 02            [24] 5196 	push	ar2
      004808 8D 82            [24] 5197 	mov	dpl,r5
      00480A 8E 83            [24] 5198 	mov	dph,r6
      00480C 8F F0            [24] 5199 	mov	b,r7
      00480E 12 27 B4         [24] 5200 	lcall	_stack_pop
      004811 AE 82            [24] 5201 	mov	r6,dpl
      004813 AF 83            [24] 5202 	mov	r7,dph
      004815 15 81            [12] 5203 	dec	sp
      004817 15 81            [12] 5204 	dec	sp
      004819 15 81            [12] 5205 	dec	sp
      00481B D0 05            [24] 5206 	pop	ar5
      00481D EE               [12] 5207 	mov	a,r6
      00481E 4F               [12] 5208 	orl	a,r7
      00481F D0 07            [24] 5209 	pop	ar7
      004821 D0 06            [24] 5210 	pop	ar6
      004823 D0 05            [24] 5211 	pop	ar5
      004825 70 63            [24] 5212 	jnz	00183$
                                   5213 ;	calc.c:247: (void)stack_push(ctx->ps, d0);
      004827 E5 08            [12] 5214 	mov	a,_bp
      004829 24 0B            [12] 5215 	add	a,#0x0b
      00482B F8               [12] 5216 	mov	r0,a
      00482C 86 82            [24] 5217 	mov	dpl,@r0
      00482E 08               [12] 5218 	inc	r0
      00482F 86 83            [24] 5219 	mov	dph,@r0
      004831 08               [12] 5220 	inc	r0
      004832 86 F0            [24] 5221 	mov	b,@r0
      004834 12 71 7E         [24] 5222 	lcall	__gptrget
      004837 FA               [12] 5223 	mov	r2,a
      004838 A3               [24] 5224 	inc	dptr
      004839 12 71 7E         [24] 5225 	lcall	__gptrget
      00483C FB               [12] 5226 	mov	r3,a
      00483D A3               [24] 5227 	inc	dptr
      00483E 12 71 7E         [24] 5228 	lcall	__gptrget
      004841 FC               [12] 5229 	mov	r4,a
      004842 E5 08            [12] 5230 	mov	a,_bp
      004844 24 15            [12] 5231 	add	a,#0x15
      004846 F8               [12] 5232 	mov	r0,a
      004847 E6               [12] 5233 	mov	a,@r0
      004848 C0 E0            [24] 5234 	push	acc
      00484A 08               [12] 5235 	inc	r0
      00484B E6               [12] 5236 	mov	a,@r0
      00484C C0 E0            [24] 5237 	push	acc
      00484E 08               [12] 5238 	inc	r0
      00484F E6               [12] 5239 	mov	a,@r0
      004850 C0 E0            [24] 5240 	push	acc
      004852 08               [12] 5241 	inc	r0
      004853 E6               [12] 5242 	mov	a,@r0
      004854 C0 E0            [24] 5243 	push	acc
      004856 8A 82            [24] 5244 	mov	dpl,r2
      004858 8B 83            [24] 5245 	mov	dph,r3
      00485A 8C F0            [24] 5246 	mov	b,r4
      00485C 12 26 BA         [24] 5247 	lcall	_stack_push
      00485F E5 81            [12] 5248 	mov	a,sp
      004861 24 FC            [12] 5249 	add	a,#0xfc
      004863 F5 81            [12] 5250 	mov	sp,a
                                   5251 ;	calc.c:248: printstr("\r\nstack underflow\r\n");
      004865 7F 4D            [12] 5252 	mov	r7,#___str_10
      004867 7E 8A            [12] 5253 	mov	r6,#(___str_10 >> 8)
      004869 7D 80            [12] 5254 	mov	r5,#0x80
                                   5255 ;	calc.c:51: return;
      00486B                       5256 00447$:
                                   5257 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00486B 8F 82            [24] 5258 	mov	dpl,r7
      00486D 8E 83            [24] 5259 	mov	dph,r6
      00486F 8D F0            [24] 5260 	mov	b,r5
      004871 12 71 7E         [24] 5261 	lcall	__gptrget
      004874 FC               [12] 5262 	mov	r4,a
      004875 70 03            [24] 5263 	jnz	01347$
      004877 02 57 B4         [24] 5264 	ljmp	00249$
      00487A                       5265 01347$:
      00487A 7B 00            [12] 5266 	mov	r3,#0x00
      00487C 8C 82            [24] 5267 	mov	dpl,r4
      00487E 8B 83            [24] 5268 	mov	dph,r3
      004880 12 2C 1F         [24] 5269 	lcall	_putchar
      004883 0F               [12] 5270 	inc	r7
                                   5271 ;	calc.c:248: printstr("\r\nstack underflow\r\n");
      004884 BF 00 E4         [24] 5272 	cjne	r7,#0x00,00447$
      004887 0E               [12] 5273 	inc	r6
      004888 80 E1            [24] 5274 	sjmp	00447$
      00488A                       5275 00183$:
                                   5276 ;	calc.c:249: } else if (!d0) {
      00488A E5 08            [12] 5277 	mov	a,_bp
      00488C 24 15            [12] 5278 	add	a,#0x15
      00488E F8               [12] 5279 	mov	r0,a
      00488F E6               [12] 5280 	mov	a,@r0
      004890 08               [12] 5281 	inc	r0
      004891 46               [12] 5282 	orl	a,@r0
      004892 08               [12] 5283 	inc	r0
      004893 46               [12] 5284 	orl	a,@r0
      004894 08               [12] 5285 	inc	r0
      004895 46               [12] 5286 	orl	a,@r0
      004896 60 03            [24] 5287 	jz	01349$
      004898 02 49 3C         [24] 5288 	ljmp	00180$
      00489B                       5289 01349$:
                                   5290 ;	calc.c:250: (void)stack_push(ctx->ps, d1);
      00489B E5 08            [12] 5291 	mov	a,_bp
      00489D 24 0B            [12] 5292 	add	a,#0x0b
      00489F F8               [12] 5293 	mov	r0,a
      0048A0 86 82            [24] 5294 	mov	dpl,@r0
      0048A2 08               [12] 5295 	inc	r0
      0048A3 86 83            [24] 5296 	mov	dph,@r0
      0048A5 08               [12] 5297 	inc	r0
      0048A6 86 F0            [24] 5298 	mov	b,@r0
      0048A8 12 71 7E         [24] 5299 	lcall	__gptrget
      0048AB FA               [12] 5300 	mov	r2,a
      0048AC A3               [24] 5301 	inc	dptr
      0048AD 12 71 7E         [24] 5302 	lcall	__gptrget
      0048B0 FB               [12] 5303 	mov	r3,a
      0048B1 A3               [24] 5304 	inc	dptr
      0048B2 12 71 7E         [24] 5305 	lcall	__gptrget
      0048B5 FC               [12] 5306 	mov	r4,a
      0048B6 E5 08            [12] 5307 	mov	a,_bp
      0048B8 24 19            [12] 5308 	add	a,#0x19
      0048BA F8               [12] 5309 	mov	r0,a
      0048BB E6               [12] 5310 	mov	a,@r0
      0048BC C0 E0            [24] 5311 	push	acc
      0048BE 08               [12] 5312 	inc	r0
      0048BF E6               [12] 5313 	mov	a,@r0
      0048C0 C0 E0            [24] 5314 	push	acc
      0048C2 08               [12] 5315 	inc	r0
      0048C3 E6               [12] 5316 	mov	a,@r0
      0048C4 C0 E0            [24] 5317 	push	acc
      0048C6 08               [12] 5318 	inc	r0
      0048C7 E6               [12] 5319 	mov	a,@r0
      0048C8 C0 E0            [24] 5320 	push	acc
      0048CA 8A 82            [24] 5321 	mov	dpl,r2
      0048CC 8B 83            [24] 5322 	mov	dph,r3
      0048CE 8C F0            [24] 5323 	mov	b,r4
      0048D0 12 26 BA         [24] 5324 	lcall	_stack_push
      0048D3 E5 81            [12] 5325 	mov	a,sp
      0048D5 24 FC            [12] 5326 	add	a,#0xfc
      0048D7 F5 81            [12] 5327 	mov	sp,a
                                   5328 ;	calc.c:251: (void)stack_push(ctx->ps, d0);			
      0048D9 E5 08            [12] 5329 	mov	a,_bp
      0048DB 24 0B            [12] 5330 	add	a,#0x0b
      0048DD F8               [12] 5331 	mov	r0,a
      0048DE 86 82            [24] 5332 	mov	dpl,@r0
      0048E0 08               [12] 5333 	inc	r0
      0048E1 86 83            [24] 5334 	mov	dph,@r0
      0048E3 08               [12] 5335 	inc	r0
      0048E4 86 F0            [24] 5336 	mov	b,@r0
      0048E6 12 71 7E         [24] 5337 	lcall	__gptrget
      0048E9 FA               [12] 5338 	mov	r2,a
      0048EA A3               [24] 5339 	inc	dptr
      0048EB 12 71 7E         [24] 5340 	lcall	__gptrget
      0048EE FB               [12] 5341 	mov	r3,a
      0048EF A3               [24] 5342 	inc	dptr
      0048F0 12 71 7E         [24] 5343 	lcall	__gptrget
      0048F3 FC               [12] 5344 	mov	r4,a
      0048F4 E5 08            [12] 5345 	mov	a,_bp
      0048F6 24 15            [12] 5346 	add	a,#0x15
      0048F8 F8               [12] 5347 	mov	r0,a
      0048F9 E6               [12] 5348 	mov	a,@r0
      0048FA C0 E0            [24] 5349 	push	acc
      0048FC 08               [12] 5350 	inc	r0
      0048FD E6               [12] 5351 	mov	a,@r0
      0048FE C0 E0            [24] 5352 	push	acc
      004900 08               [12] 5353 	inc	r0
      004901 E6               [12] 5354 	mov	a,@r0
      004902 C0 E0            [24] 5355 	push	acc
      004904 08               [12] 5356 	inc	r0
      004905 E6               [12] 5357 	mov	a,@r0
      004906 C0 E0            [24] 5358 	push	acc
      004908 8A 82            [24] 5359 	mov	dpl,r2
      00490A 8B 83            [24] 5360 	mov	dph,r3
      00490C 8C F0            [24] 5361 	mov	b,r4
      00490E 12 26 BA         [24] 5362 	lcall	_stack_push
      004911 E5 81            [12] 5363 	mov	a,sp
      004913 24 FC            [12] 5364 	add	a,#0xfc
      004915 F5 81            [12] 5365 	mov	sp,a
                                   5366 ;	calc.c:252: printstr("\r\ndivision by zero\r\n");
      004917 7F AF            [12] 5367 	mov	r7,#___str_14
      004919 7E 8A            [12] 5368 	mov	r6,#(___str_14 >> 8)
      00491B 7D 80            [12] 5369 	mov	r5,#0x80
                                   5370 ;	calc.c:51: return;
      00491D                       5371 00450$:
                                   5372 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00491D 8F 82            [24] 5373 	mov	dpl,r7
      00491F 8E 83            [24] 5374 	mov	dph,r6
      004921 8D F0            [24] 5375 	mov	b,r5
      004923 12 71 7E         [24] 5376 	lcall	__gptrget
      004926 FC               [12] 5377 	mov	r4,a
      004927 70 03            [24] 5378 	jnz	01350$
      004929 02 57 B4         [24] 5379 	ljmp	00249$
      00492C                       5380 01350$:
      00492C 7B 00            [12] 5381 	mov	r3,#0x00
      00492E 8C 82            [24] 5382 	mov	dpl,r4
      004930 8B 83            [24] 5383 	mov	dph,r3
      004932 12 2C 1F         [24] 5384 	lcall	_putchar
      004935 0F               [12] 5385 	inc	r7
                                   5386 ;	calc.c:252: printstr("\r\ndivision by zero\r\n");
      004936 BF 00 E4         [24] 5387 	cjne	r7,#0x00,00450$
      004939 0E               [12] 5388 	inc	r6
      00493A 80 E1            [24] 5389 	sjmp	00450$
      00493C                       5390 00180$:
                                   5391 ;	calc.c:254: if (ctx->digit[0] == '/') d1 /= d0;
      00493C 8D 82            [24] 5392 	mov	dpl,r5
      00493E 8E 83            [24] 5393 	mov	dph,r6
      004940 8F F0            [24] 5394 	mov	b,r7
      004942 12 71 7E         [24] 5395 	lcall	__gptrget
      004945 FC               [12] 5396 	mov	r4,a
      004946 BC 2F 45         [24] 5397 	cjne	r4,#0x2f,00177$
      004949 E5 08            [12] 5398 	mov	a,_bp
      00494B 24 15            [12] 5399 	add	a,#0x15
      00494D F8               [12] 5400 	mov	r0,a
      00494E E6               [12] 5401 	mov	a,@r0
      00494F C0 E0            [24] 5402 	push	acc
      004951 08               [12] 5403 	inc	r0
      004952 E6               [12] 5404 	mov	a,@r0
      004953 C0 E0            [24] 5405 	push	acc
      004955 08               [12] 5406 	inc	r0
      004956 E6               [12] 5407 	mov	a,@r0
      004957 C0 E0            [24] 5408 	push	acc
      004959 08               [12] 5409 	inc	r0
      00495A E6               [12] 5410 	mov	a,@r0
      00495B C0 E0            [24] 5411 	push	acc
      00495D E5 08            [12] 5412 	mov	a,_bp
      00495F 24 19            [12] 5413 	add	a,#0x19
      004961 F8               [12] 5414 	mov	r0,a
      004962 86 82            [24] 5415 	mov	dpl,@r0
      004964 08               [12] 5416 	inc	r0
      004965 86 83            [24] 5417 	mov	dph,@r0
      004967 08               [12] 5418 	inc	r0
      004968 86 F0            [24] 5419 	mov	b,@r0
      00496A 08               [12] 5420 	inc	r0
      00496B E6               [12] 5421 	mov	a,@r0
      00496C 12 6F 75         [24] 5422 	lcall	__divslong
      00496F AF 82            [24] 5423 	mov	r7,dpl
      004971 AE 83            [24] 5424 	mov	r6,dph
      004973 AD F0            [24] 5425 	mov	r5,b
      004975 FC               [12] 5426 	mov	r4,a
      004976 E5 81            [12] 5427 	mov	a,sp
      004978 24 FC            [12] 5428 	add	a,#0xfc
      00497A F5 81            [12] 5429 	mov	sp,a
      00497C E5 08            [12] 5430 	mov	a,_bp
      00497E 24 19            [12] 5431 	add	a,#0x19
      004980 F8               [12] 5432 	mov	r0,a
      004981 A6 07            [24] 5433 	mov	@r0,ar7
      004983 08               [12] 5434 	inc	r0
      004984 A6 06            [24] 5435 	mov	@r0,ar6
      004986 08               [12] 5436 	inc	r0
      004987 A6 05            [24] 5437 	mov	@r0,ar5
      004989 08               [12] 5438 	inc	r0
      00498A A6 04            [24] 5439 	mov	@r0,ar4
      00498C 80 63            [24] 5440 	sjmp	00178$
      00498E                       5441 00177$:
                                   5442 ;	calc.c:255: else d1 = (unsigned long)d1 / (unsigned long)d0;
      00498E E5 08            [12] 5443 	mov	a,_bp
      004990 24 19            [12] 5444 	add	a,#0x19
      004992 F8               [12] 5445 	mov	r0,a
      004993 86 07            [24] 5446 	mov	ar7,@r0
      004995 08               [12] 5447 	inc	r0
      004996 86 06            [24] 5448 	mov	ar6,@r0
      004998 08               [12] 5449 	inc	r0
      004999 86 05            [24] 5450 	mov	ar5,@r0
      00499B 08               [12] 5451 	inc	r0
      00499C 86 04            [24] 5452 	mov	ar4,@r0
      00499E E5 08            [12] 5453 	mov	a,_bp
      0049A0 24 15            [12] 5454 	add	a,#0x15
      0049A2 F8               [12] 5455 	mov	r0,a
      0049A3 E5 08            [12] 5456 	mov	a,_bp
      0049A5 24 0E            [12] 5457 	add	a,#0x0e
      0049A7 F9               [12] 5458 	mov	r1,a
      0049A8 E6               [12] 5459 	mov	a,@r0
      0049A9 F7               [12] 5460 	mov	@r1,a
      0049AA 08               [12] 5461 	inc	r0
      0049AB 09               [12] 5462 	inc	r1
      0049AC E6               [12] 5463 	mov	a,@r0
      0049AD F7               [12] 5464 	mov	@r1,a
      0049AE 08               [12] 5465 	inc	r0
      0049AF 09               [12] 5466 	inc	r1
      0049B0 E6               [12] 5467 	mov	a,@r0
      0049B1 F7               [12] 5468 	mov	@r1,a
      0049B2 08               [12] 5469 	inc	r0
      0049B3 09               [12] 5470 	inc	r1
      0049B4 E6               [12] 5471 	mov	a,@r0
      0049B5 F7               [12] 5472 	mov	@r1,a
      0049B6 E5 08            [12] 5473 	mov	a,_bp
      0049B8 24 0E            [12] 5474 	add	a,#0x0e
      0049BA F8               [12] 5475 	mov	r0,a
      0049BB E6               [12] 5476 	mov	a,@r0
      0049BC C0 E0            [24] 5477 	push	acc
      0049BE 08               [12] 5478 	inc	r0
      0049BF E6               [12] 5479 	mov	a,@r0
      0049C0 C0 E0            [24] 5480 	push	acc
      0049C2 08               [12] 5481 	inc	r0
      0049C3 E6               [12] 5482 	mov	a,@r0
      0049C4 C0 E0            [24] 5483 	push	acc
      0049C6 08               [12] 5484 	inc	r0
      0049C7 E6               [12] 5485 	mov	a,@r0
      0049C8 C0 E0            [24] 5486 	push	acc
      0049CA 8F 82            [24] 5487 	mov	dpl,r7
      0049CC 8E 83            [24] 5488 	mov	dph,r6
      0049CE 8D F0            [24] 5489 	mov	b,r5
      0049D0 EC               [12] 5490 	mov	a,r4
      0049D1 12 70 72         [24] 5491 	lcall	__divulong
      0049D4 AF 82            [24] 5492 	mov	r7,dpl
      0049D6 AE 83            [24] 5493 	mov	r6,dph
      0049D8 AD F0            [24] 5494 	mov	r5,b
      0049DA FC               [12] 5495 	mov	r4,a
      0049DB E5 81            [12] 5496 	mov	a,sp
      0049DD 24 FC            [12] 5497 	add	a,#0xfc
      0049DF F5 81            [12] 5498 	mov	sp,a
      0049E1 E5 08            [12] 5499 	mov	a,_bp
      0049E3 24 19            [12] 5500 	add	a,#0x19
      0049E5 F8               [12] 5501 	mov	r0,a
      0049E6 A6 07            [24] 5502 	mov	@r0,ar7
      0049E8 08               [12] 5503 	inc	r0
      0049E9 A6 06            [24] 5504 	mov	@r0,ar6
      0049EB 08               [12] 5505 	inc	r0
      0049EC A6 05            [24] 5506 	mov	@r0,ar5
      0049EE 08               [12] 5507 	inc	r0
      0049EF A6 04            [24] 5508 	mov	@r0,ar4
      0049F1                       5509 00178$:
                                   5510 ;	calc.c:256: (void)stack_push(ctx->ps, d1);
      0049F1 E5 08            [12] 5511 	mov	a,_bp
      0049F3 24 0B            [12] 5512 	add	a,#0x0b
      0049F5 F8               [12] 5513 	mov	r0,a
      0049F6 86 82            [24] 5514 	mov	dpl,@r0
      0049F8 08               [12] 5515 	inc	r0
      0049F9 86 83            [24] 5516 	mov	dph,@r0
      0049FB 08               [12] 5517 	inc	r0
      0049FC 86 F0            [24] 5518 	mov	b,@r0
      0049FE 12 71 7E         [24] 5519 	lcall	__gptrget
      004A01 FA               [12] 5520 	mov	r2,a
      004A02 A3               [24] 5521 	inc	dptr
      004A03 12 71 7E         [24] 5522 	lcall	__gptrget
      004A06 FB               [12] 5523 	mov	r3,a
      004A07 A3               [24] 5524 	inc	dptr
      004A08 12 71 7E         [24] 5525 	lcall	__gptrget
      004A0B FC               [12] 5526 	mov	r4,a
      004A0C E5 08            [12] 5527 	mov	a,_bp
      004A0E 24 19            [12] 5528 	add	a,#0x19
      004A10 F8               [12] 5529 	mov	r0,a
      004A11 E6               [12] 5530 	mov	a,@r0
      004A12 C0 E0            [24] 5531 	push	acc
      004A14 08               [12] 5532 	inc	r0
      004A15 E6               [12] 5533 	mov	a,@r0
      004A16 C0 E0            [24] 5534 	push	acc
      004A18 08               [12] 5535 	inc	r0
      004A19 E6               [12] 5536 	mov	a,@r0
      004A1A C0 E0            [24] 5537 	push	acc
      004A1C 08               [12] 5538 	inc	r0
      004A1D E6               [12] 5539 	mov	a,@r0
      004A1E C0 E0            [24] 5540 	push	acc
      004A20 8A 82            [24] 5541 	mov	dpl,r2
      004A22 8B 83            [24] 5542 	mov	dph,r3
      004A24 8C F0            [24] 5543 	mov	b,r4
      004A26 12 26 BA         [24] 5544 	lcall	_stack_push
      004A29 E5 81            [12] 5545 	mov	a,sp
      004A2B 24 FC            [12] 5546 	add	a,#0xfc
      004A2D F5 81            [12] 5547 	mov	sp,a
                                   5548 ;	calc.c:258: break;
      004A2F 02 57 B4         [24] 5549 	ljmp	00249$
                                   5550 ;	calc.c:260: case '#':
      004A32                       5551 00189$:
                                   5552 ;	calc.c:261: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004A32 C0 05            [24] 5553 	push	ar5
      004A34 C0 06            [24] 5554 	push	ar6
      004A36 C0 07            [24] 5555 	push	ar7
      004A38 E5 08            [12] 5556 	mov	a,_bp
      004A3A 24 15            [12] 5557 	add	a,#0x15
      004A3C FC               [12] 5558 	mov	r4,a
      004A3D 7B 00            [12] 5559 	mov	r3,#0x00
      004A3F 7A 40            [12] 5560 	mov	r2,#0x40
      004A41 E5 08            [12] 5561 	mov	a,_bp
      004A43 24 12            [12] 5562 	add	a,#0x12
      004A45 F8               [12] 5563 	mov	r0,a
      004A46 E5 08            [12] 5564 	mov	a,_bp
      004A48 24 0E            [12] 5565 	add	a,#0x0e
      004A4A F9               [12] 5566 	mov	r1,a
      004A4B 74 13            [12] 5567 	mov	a,#0x13
      004A4D 26               [12] 5568 	add	a,@r0
      004A4E F7               [12] 5569 	mov	@r1,a
      004A4F 74 40            [12] 5570 	mov	a,#0x40
      004A51 08               [12] 5571 	inc	r0
      004A52 36               [12] 5572 	addc	a,@r0
      004A53 09               [12] 5573 	inc	r1
      004A54 F7               [12] 5574 	mov	@r1,a
      004A55 08               [12] 5575 	inc	r0
      004A56 09               [12] 5576 	inc	r1
      004A57 E6               [12] 5577 	mov	a,@r0
      004A58 F7               [12] 5578 	mov	@r1,a
      004A59 E5 08            [12] 5579 	mov	a,_bp
      004A5B 24 0E            [12] 5580 	add	a,#0x0e
      004A5D F8               [12] 5581 	mov	r0,a
      004A5E 86 82            [24] 5582 	mov	dpl,@r0
      004A60 08               [12] 5583 	inc	r0
      004A61 86 83            [24] 5584 	mov	dph,@r0
      004A63 08               [12] 5585 	inc	r0
      004A64 86 F0            [24] 5586 	mov	b,@r0
      004A66 12 71 7E         [24] 5587 	lcall	__gptrget
      004A69 FD               [12] 5588 	mov	r5,a
      004A6A A3               [24] 5589 	inc	dptr
      004A6B 12 71 7E         [24] 5590 	lcall	__gptrget
      004A6E FE               [12] 5591 	mov	r6,a
      004A6F A3               [24] 5592 	inc	dptr
      004A70 12 71 7E         [24] 5593 	lcall	__gptrget
      004A73 FF               [12] 5594 	mov	r7,a
      004A74 C0 05            [24] 5595 	push	ar5
      004A76 C0 04            [24] 5596 	push	ar4
      004A78 C0 03            [24] 5597 	push	ar3
      004A7A C0 02            [24] 5598 	push	ar2
      004A7C 8D 82            [24] 5599 	mov	dpl,r5
      004A7E 8E 83            [24] 5600 	mov	dph,r6
      004A80 8F F0            [24] 5601 	mov	b,r7
      004A82 12 27 B4         [24] 5602 	lcall	_stack_pop
      004A85 AE 82            [24] 5603 	mov	r6,dpl
      004A87 AF 83            [24] 5604 	mov	r7,dph
      004A89 15 81            [12] 5605 	dec	sp
      004A8B 15 81            [12] 5606 	dec	sp
      004A8D 15 81            [12] 5607 	dec	sp
      004A8F D0 05            [24] 5608 	pop	ar5
      004A91 EE               [12] 5609 	mov	a,r6
      004A92 4F               [12] 5610 	orl	a,r7
      004A93 D0 07            [24] 5611 	pop	ar7
      004A95 D0 06            [24] 5612 	pop	ar6
      004A97 D0 05            [24] 5613 	pop	ar5
      004A99 70 25            [24] 5614 	jnz	00200$
      004A9B 7F 4D            [12] 5615 	mov	r7,#___str_10
      004A9D 7E 8A            [12] 5616 	mov	r6,#(___str_10 >> 8)
      004A9F 7D 80            [12] 5617 	mov	r5,#0x80
                                   5618 ;	calc.c:51: return;
      004AA1                       5619 00453$:
                                   5620 ;	calc.c:49: for (; *s; s++) putchar(*s);
      004AA1 8F 82            [24] 5621 	mov	dpl,r7
      004AA3 8E 83            [24] 5622 	mov	dph,r6
      004AA5 8D F0            [24] 5623 	mov	b,r5
      004AA7 12 71 7E         [24] 5624 	lcall	__gptrget
      004AAA FC               [12] 5625 	mov	r4,a
      004AAB 70 03            [24] 5626 	jnz	01355$
      004AAD 02 57 B4         [24] 5627 	ljmp	00249$
      004AB0                       5628 01355$:
      004AB0 7B 00            [12] 5629 	mov	r3,#0x00
      004AB2 8C 82            [24] 5630 	mov	dpl,r4
      004AB4 8B 83            [24] 5631 	mov	dph,r3
      004AB6 12 2C 1F         [24] 5632 	lcall	_putchar
      004AB9 0F               [12] 5633 	inc	r7
                                   5634 ;	calc.c:261: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004ABA BF 00 E4         [24] 5635 	cjne	r7,#0x00,00453$
      004ABD 0E               [12] 5636 	inc	r6
      004ABE 80 E1            [24] 5637 	sjmp	00453$
      004AC0                       5638 00200$:
                                   5639 ;	calc.c:262: else if (!stack_pop(ctx->ps, &d1)) {
      004AC0 C0 05            [24] 5640 	push	ar5
      004AC2 C0 06            [24] 5641 	push	ar6
      004AC4 C0 07            [24] 5642 	push	ar7
      004AC6 E5 08            [12] 5643 	mov	a,_bp
      004AC8 24 19            [12] 5644 	add	a,#0x19
      004ACA FC               [12] 5645 	mov	r4,a
      004ACB 7B 00            [12] 5646 	mov	r3,#0x00
      004ACD 7A 40            [12] 5647 	mov	r2,#0x40
      004ACF E5 08            [12] 5648 	mov	a,_bp
      004AD1 24 0E            [12] 5649 	add	a,#0x0e
      004AD3 F8               [12] 5650 	mov	r0,a
      004AD4 86 82            [24] 5651 	mov	dpl,@r0
      004AD6 08               [12] 5652 	inc	r0
      004AD7 86 83            [24] 5653 	mov	dph,@r0
      004AD9 08               [12] 5654 	inc	r0
      004ADA 86 F0            [24] 5655 	mov	b,@r0
      004ADC 12 71 7E         [24] 5656 	lcall	__gptrget
      004ADF FD               [12] 5657 	mov	r5,a
      004AE0 A3               [24] 5658 	inc	dptr
      004AE1 12 71 7E         [24] 5659 	lcall	__gptrget
      004AE4 FE               [12] 5660 	mov	r6,a
      004AE5 A3               [24] 5661 	inc	dptr
      004AE6 12 71 7E         [24] 5662 	lcall	__gptrget
      004AE9 FF               [12] 5663 	mov	r7,a
      004AEA C0 05            [24] 5664 	push	ar5
      004AEC C0 04            [24] 5665 	push	ar4
      004AEE C0 03            [24] 5666 	push	ar3
      004AF0 C0 02            [24] 5667 	push	ar2
      004AF2 8D 82            [24] 5668 	mov	dpl,r5
      004AF4 8E 83            [24] 5669 	mov	dph,r6
      004AF6 8F F0            [24] 5670 	mov	b,r7
      004AF8 12 27 B4         [24] 5671 	lcall	_stack_pop
      004AFB AE 82            [24] 5672 	mov	r6,dpl
      004AFD AF 83            [24] 5673 	mov	r7,dph
      004AFF 15 81            [12] 5674 	dec	sp
      004B01 15 81            [12] 5675 	dec	sp
      004B03 15 81            [12] 5676 	dec	sp
      004B05 D0 05            [24] 5677 	pop	ar5
      004B07 EE               [12] 5678 	mov	a,r6
      004B08 4F               [12] 5679 	orl	a,r7
      004B09 D0 07            [24] 5680 	pop	ar7
      004B0B D0 06            [24] 5681 	pop	ar6
      004B0D D0 05            [24] 5682 	pop	ar5
      004B0F 70 63            [24] 5683 	jnz	00197$
                                   5684 ;	calc.c:263: (void)stack_push(ctx->ps, d0);
      004B11 E5 08            [12] 5685 	mov	a,_bp
      004B13 24 0E            [12] 5686 	add	a,#0x0e
      004B15 F8               [12] 5687 	mov	r0,a
      004B16 86 82            [24] 5688 	mov	dpl,@r0
      004B18 08               [12] 5689 	inc	r0
      004B19 86 83            [24] 5690 	mov	dph,@r0
      004B1B 08               [12] 5691 	inc	r0
      004B1C 86 F0            [24] 5692 	mov	b,@r0
      004B1E 12 71 7E         [24] 5693 	lcall	__gptrget
      004B21 FA               [12] 5694 	mov	r2,a
      004B22 A3               [24] 5695 	inc	dptr
      004B23 12 71 7E         [24] 5696 	lcall	__gptrget
      004B26 FB               [12] 5697 	mov	r3,a
      004B27 A3               [24] 5698 	inc	dptr
      004B28 12 71 7E         [24] 5699 	lcall	__gptrget
      004B2B FC               [12] 5700 	mov	r4,a
      004B2C E5 08            [12] 5701 	mov	a,_bp
      004B2E 24 15            [12] 5702 	add	a,#0x15
      004B30 F8               [12] 5703 	mov	r0,a
      004B31 E6               [12] 5704 	mov	a,@r0
      004B32 C0 E0            [24] 5705 	push	acc
      004B34 08               [12] 5706 	inc	r0
      004B35 E6               [12] 5707 	mov	a,@r0
      004B36 C0 E0            [24] 5708 	push	acc
      004B38 08               [12] 5709 	inc	r0
      004B39 E6               [12] 5710 	mov	a,@r0
      004B3A C0 E0            [24] 5711 	push	acc
      004B3C 08               [12] 5712 	inc	r0
      004B3D E6               [12] 5713 	mov	a,@r0
      004B3E C0 E0            [24] 5714 	push	acc
      004B40 8A 82            [24] 5715 	mov	dpl,r2
      004B42 8B 83            [24] 5716 	mov	dph,r3
      004B44 8C F0            [24] 5717 	mov	b,r4
      004B46 12 26 BA         [24] 5718 	lcall	_stack_push
      004B49 E5 81            [12] 5719 	mov	a,sp
      004B4B 24 FC            [12] 5720 	add	a,#0xfc
      004B4D F5 81            [12] 5721 	mov	sp,a
                                   5722 ;	calc.c:264: printstr("\r\nstack underflow\r\n");
      004B4F 7F 4D            [12] 5723 	mov	r7,#___str_10
      004B51 7E 8A            [12] 5724 	mov	r6,#(___str_10 >> 8)
      004B53 7D 80            [12] 5725 	mov	r5,#0x80
                                   5726 ;	calc.c:51: return;
      004B55                       5727 00456$:
                                   5728 ;	calc.c:49: for (; *s; s++) putchar(*s);
      004B55 8F 82            [24] 5729 	mov	dpl,r7
      004B57 8E 83            [24] 5730 	mov	dph,r6
      004B59 8D F0            [24] 5731 	mov	b,r5
      004B5B 12 71 7E         [24] 5732 	lcall	__gptrget
      004B5E FC               [12] 5733 	mov	r4,a
      004B5F 70 03            [24] 5734 	jnz	01358$
      004B61 02 57 B4         [24] 5735 	ljmp	00249$
      004B64                       5736 01358$:
      004B64 7B 00            [12] 5737 	mov	r3,#0x00
      004B66 8C 82            [24] 5738 	mov	dpl,r4
      004B68 8B 83            [24] 5739 	mov	dph,r3
      004B6A 12 2C 1F         [24] 5740 	lcall	_putchar
      004B6D 0F               [12] 5741 	inc	r7
                                   5742 ;	calc.c:264: printstr("\r\nstack underflow\r\n");
      004B6E BF 00 E4         [24] 5743 	cjne	r7,#0x00,00456$
      004B71 0E               [12] 5744 	inc	r6
      004B72 80 E1            [24] 5745 	sjmp	00456$
      004B74                       5746 00197$:
                                   5747 ;	calc.c:265: } else if (!d0) {
      004B74 E5 08            [12] 5748 	mov	a,_bp
      004B76 24 15            [12] 5749 	add	a,#0x15
      004B78 F8               [12] 5750 	mov	r0,a
      004B79 E6               [12] 5751 	mov	a,@r0
      004B7A 08               [12] 5752 	inc	r0
      004B7B 46               [12] 5753 	orl	a,@r0
      004B7C 08               [12] 5754 	inc	r0
      004B7D 46               [12] 5755 	orl	a,@r0
      004B7E 08               [12] 5756 	inc	r0
      004B7F 46               [12] 5757 	orl	a,@r0
      004B80 60 03            [24] 5758 	jz	01360$
      004B82 02 4C 26         [24] 5759 	ljmp	00194$
      004B85                       5760 01360$:
                                   5761 ;	calc.c:266: (void)stack_push(ctx->ps, d1);
      004B85 E5 08            [12] 5762 	mov	a,_bp
      004B87 24 0E            [12] 5763 	add	a,#0x0e
      004B89 F8               [12] 5764 	mov	r0,a
      004B8A 86 82            [24] 5765 	mov	dpl,@r0
      004B8C 08               [12] 5766 	inc	r0
      004B8D 86 83            [24] 5767 	mov	dph,@r0
      004B8F 08               [12] 5768 	inc	r0
      004B90 86 F0            [24] 5769 	mov	b,@r0
      004B92 12 71 7E         [24] 5770 	lcall	__gptrget
      004B95 FA               [12] 5771 	mov	r2,a
      004B96 A3               [24] 5772 	inc	dptr
      004B97 12 71 7E         [24] 5773 	lcall	__gptrget
      004B9A FB               [12] 5774 	mov	r3,a
      004B9B A3               [24] 5775 	inc	dptr
      004B9C 12 71 7E         [24] 5776 	lcall	__gptrget
      004B9F FC               [12] 5777 	mov	r4,a
      004BA0 E5 08            [12] 5778 	mov	a,_bp
      004BA2 24 19            [12] 5779 	add	a,#0x19
      004BA4 F8               [12] 5780 	mov	r0,a
      004BA5 E6               [12] 5781 	mov	a,@r0
      004BA6 C0 E0            [24] 5782 	push	acc
      004BA8 08               [12] 5783 	inc	r0
      004BA9 E6               [12] 5784 	mov	a,@r0
      004BAA C0 E0            [24] 5785 	push	acc
      004BAC 08               [12] 5786 	inc	r0
      004BAD E6               [12] 5787 	mov	a,@r0
      004BAE C0 E0            [24] 5788 	push	acc
      004BB0 08               [12] 5789 	inc	r0
      004BB1 E6               [12] 5790 	mov	a,@r0
      004BB2 C0 E0            [24] 5791 	push	acc
      004BB4 8A 82            [24] 5792 	mov	dpl,r2
      004BB6 8B 83            [24] 5793 	mov	dph,r3
      004BB8 8C F0            [24] 5794 	mov	b,r4
      004BBA 12 26 BA         [24] 5795 	lcall	_stack_push
      004BBD E5 81            [12] 5796 	mov	a,sp
      004BBF 24 FC            [12] 5797 	add	a,#0xfc
      004BC1 F5 81            [12] 5798 	mov	sp,a
                                   5799 ;	calc.c:267: (void)stack_push(ctx->ps, d0);			
      004BC3 E5 08            [12] 5800 	mov	a,_bp
      004BC5 24 0E            [12] 5801 	add	a,#0x0e
      004BC7 F8               [12] 5802 	mov	r0,a
      004BC8 86 82            [24] 5803 	mov	dpl,@r0
      004BCA 08               [12] 5804 	inc	r0
      004BCB 86 83            [24] 5805 	mov	dph,@r0
      004BCD 08               [12] 5806 	inc	r0
      004BCE 86 F0            [24] 5807 	mov	b,@r0
      004BD0 12 71 7E         [24] 5808 	lcall	__gptrget
      004BD3 FA               [12] 5809 	mov	r2,a
      004BD4 A3               [24] 5810 	inc	dptr
      004BD5 12 71 7E         [24] 5811 	lcall	__gptrget
      004BD8 FB               [12] 5812 	mov	r3,a
      004BD9 A3               [24] 5813 	inc	dptr
      004BDA 12 71 7E         [24] 5814 	lcall	__gptrget
      004BDD FC               [12] 5815 	mov	r4,a
      004BDE E5 08            [12] 5816 	mov	a,_bp
      004BE0 24 15            [12] 5817 	add	a,#0x15
      004BE2 F8               [12] 5818 	mov	r0,a
      004BE3 E6               [12] 5819 	mov	a,@r0
      004BE4 C0 E0            [24] 5820 	push	acc
      004BE6 08               [12] 5821 	inc	r0
      004BE7 E6               [12] 5822 	mov	a,@r0
      004BE8 C0 E0            [24] 5823 	push	acc
      004BEA 08               [12] 5824 	inc	r0
      004BEB E6               [12] 5825 	mov	a,@r0
      004BEC C0 E0            [24] 5826 	push	acc
      004BEE 08               [12] 5827 	inc	r0
      004BEF E6               [12] 5828 	mov	a,@r0
      004BF0 C0 E0            [24] 5829 	push	acc
      004BF2 8A 82            [24] 5830 	mov	dpl,r2
      004BF4 8B 83            [24] 5831 	mov	dph,r3
      004BF6 8C F0            [24] 5832 	mov	b,r4
      004BF8 12 26 BA         [24] 5833 	lcall	_stack_push
      004BFB E5 81            [12] 5834 	mov	a,sp
      004BFD 24 FC            [12] 5835 	add	a,#0xfc
      004BFF F5 81            [12] 5836 	mov	sp,a
                                   5837 ;	calc.c:268: printstr("\r\ndivision by zero\r\n");
      004C01 7F AF            [12] 5838 	mov	r7,#___str_14
      004C03 7E 8A            [12] 5839 	mov	r6,#(___str_14 >> 8)
      004C05 7D 80            [12] 5840 	mov	r5,#0x80
                                   5841 ;	calc.c:51: return;
      004C07                       5842 00459$:
                                   5843 ;	calc.c:49: for (; *s; s++) putchar(*s);
      004C07 8F 82            [24] 5844 	mov	dpl,r7
      004C09 8E 83            [24] 5845 	mov	dph,r6
      004C0B 8D F0            [24] 5846 	mov	b,r5
      004C0D 12 71 7E         [24] 5847 	lcall	__gptrget
      004C10 FC               [12] 5848 	mov	r4,a
      004C11 70 03            [24] 5849 	jnz	01361$
      004C13 02 57 B4         [24] 5850 	ljmp	00249$
      004C16                       5851 01361$:
      004C16 7B 00            [12] 5852 	mov	r3,#0x00
      004C18 8C 82            [24] 5853 	mov	dpl,r4
      004C1A 8B 83            [24] 5854 	mov	dph,r3
      004C1C 12 2C 1F         [24] 5855 	lcall	_putchar
      004C1F 0F               [12] 5856 	inc	r7
                                   5857 ;	calc.c:268: printstr("\r\ndivision by zero\r\n");
      004C20 BF 00 E4         [24] 5858 	cjne	r7,#0x00,00459$
      004C23 0E               [12] 5859 	inc	r6
      004C24 80 E1            [24] 5860 	sjmp	00459$
      004C26                       5861 00194$:
                                   5862 ;	calc.c:270: if (ctx->digit[0] == '%') d1 %= d0;
      004C26 8D 82            [24] 5863 	mov	dpl,r5
      004C28 8E 83            [24] 5864 	mov	dph,r6
      004C2A 8F F0            [24] 5865 	mov	b,r7
      004C2C 12 71 7E         [24] 5866 	lcall	__gptrget
      004C2F FD               [12] 5867 	mov	r5,a
      004C30 BD 25 45         [24] 5868 	cjne	r5,#0x25,00191$
      004C33 E5 08            [12] 5869 	mov	a,_bp
      004C35 24 15            [12] 5870 	add	a,#0x15
      004C37 F8               [12] 5871 	mov	r0,a
      004C38 E6               [12] 5872 	mov	a,@r0
      004C39 C0 E0            [24] 5873 	push	acc
      004C3B 08               [12] 5874 	inc	r0
      004C3C E6               [12] 5875 	mov	a,@r0
      004C3D C0 E0            [24] 5876 	push	acc
      004C3F 08               [12] 5877 	inc	r0
      004C40 E6               [12] 5878 	mov	a,@r0
      004C41 C0 E0            [24] 5879 	push	acc
      004C43 08               [12] 5880 	inc	r0
      004C44 E6               [12] 5881 	mov	a,@r0
      004C45 C0 E0            [24] 5882 	push	acc
      004C47 E5 08            [12] 5883 	mov	a,_bp
      004C49 24 19            [12] 5884 	add	a,#0x19
      004C4B F8               [12] 5885 	mov	r0,a
      004C4C 86 82            [24] 5886 	mov	dpl,@r0
      004C4E 08               [12] 5887 	inc	r0
      004C4F 86 83            [24] 5888 	mov	dph,@r0
      004C51 08               [12] 5889 	inc	r0
      004C52 86 F0            [24] 5890 	mov	b,@r0
      004C54 08               [12] 5891 	inc	r0
      004C55 E6               [12] 5892 	mov	a,@r0
      004C56 12 6D BC         [24] 5893 	lcall	__modslong
      004C59 AC 82            [24] 5894 	mov	r4,dpl
      004C5B AD 83            [24] 5895 	mov	r5,dph
      004C5D AE F0            [24] 5896 	mov	r6,b
      004C5F FF               [12] 5897 	mov	r7,a
      004C60 E5 81            [12] 5898 	mov	a,sp
      004C62 24 FC            [12] 5899 	add	a,#0xfc
      004C64 F5 81            [12] 5900 	mov	sp,a
      004C66 E5 08            [12] 5901 	mov	a,_bp
      004C68 24 19            [12] 5902 	add	a,#0x19
      004C6A F8               [12] 5903 	mov	r0,a
      004C6B A6 04            [24] 5904 	mov	@r0,ar4
      004C6D 08               [12] 5905 	inc	r0
      004C6E A6 05            [24] 5906 	mov	@r0,ar5
      004C70 08               [12] 5907 	inc	r0
      004C71 A6 06            [24] 5908 	mov	@r0,ar6
      004C73 08               [12] 5909 	inc	r0
      004C74 A6 07            [24] 5910 	mov	@r0,ar7
      004C76 80 5F            [24] 5911 	sjmp	00192$
      004C78                       5912 00191$:
                                   5913 ;	calc.c:271: else d1 = (unsigned long)d1 % (unsigned long)d0;
      004C78 E5 08            [12] 5914 	mov	a,_bp
      004C7A 24 19            [12] 5915 	add	a,#0x19
      004C7C F8               [12] 5916 	mov	r0,a
      004C7D E5 08            [12] 5917 	mov	a,_bp
      004C7F 24 07            [12] 5918 	add	a,#0x07
      004C81 F9               [12] 5919 	mov	r1,a
      004C82 E6               [12] 5920 	mov	a,@r0
      004C83 F7               [12] 5921 	mov	@r1,a
      004C84 08               [12] 5922 	inc	r0
      004C85 09               [12] 5923 	inc	r1
      004C86 E6               [12] 5924 	mov	a,@r0
      004C87 F7               [12] 5925 	mov	@r1,a
      004C88 08               [12] 5926 	inc	r0
      004C89 09               [12] 5927 	inc	r1
      004C8A E6               [12] 5928 	mov	a,@r0
      004C8B F7               [12] 5929 	mov	@r1,a
      004C8C 08               [12] 5930 	inc	r0
      004C8D 09               [12] 5931 	inc	r1
      004C8E E6               [12] 5932 	mov	a,@r0
      004C8F F7               [12] 5933 	mov	@r1,a
      004C90 E5 08            [12] 5934 	mov	a,_bp
      004C92 24 15            [12] 5935 	add	a,#0x15
      004C94 F8               [12] 5936 	mov	r0,a
      004C95 86 02            [24] 5937 	mov	ar2,@r0
      004C97 08               [12] 5938 	inc	r0
      004C98 86 03            [24] 5939 	mov	ar3,@r0
      004C9A 08               [12] 5940 	inc	r0
      004C9B 86 06            [24] 5941 	mov	ar6,@r0
      004C9D 08               [12] 5942 	inc	r0
      004C9E 86 07            [24] 5943 	mov	ar7,@r0
      004CA0 C0 02            [24] 5944 	push	ar2
      004CA2 C0 03            [24] 5945 	push	ar3
      004CA4 C0 06            [24] 5946 	push	ar6
      004CA6 C0 07            [24] 5947 	push	ar7
      004CA8 E5 08            [12] 5948 	mov	a,_bp
      004CAA 24 07            [12] 5949 	add	a,#0x07
      004CAC F8               [12] 5950 	mov	r0,a
      004CAD 86 82            [24] 5951 	mov	dpl,@r0
      004CAF 08               [12] 5952 	inc	r0
      004CB0 86 83            [24] 5953 	mov	dph,@r0
      004CB2 08               [12] 5954 	inc	r0
      004CB3 86 F0            [24] 5955 	mov	b,@r0
      004CB5 08               [12] 5956 	inc	r0
      004CB6 E6               [12] 5957 	mov	a,@r0
      004CB7 12 6E B3         [24] 5958 	lcall	__modulong
      004CBA AC 82            [24] 5959 	mov	r4,dpl
      004CBC AD 83            [24] 5960 	mov	r5,dph
      004CBE AE F0            [24] 5961 	mov	r6,b
      004CC0 FF               [12] 5962 	mov	r7,a
      004CC1 E5 81            [12] 5963 	mov	a,sp
      004CC3 24 FC            [12] 5964 	add	a,#0xfc
      004CC5 F5 81            [12] 5965 	mov	sp,a
      004CC7 E5 08            [12] 5966 	mov	a,_bp
      004CC9 24 19            [12] 5967 	add	a,#0x19
      004CCB F8               [12] 5968 	mov	r0,a
      004CCC A6 04            [24] 5969 	mov	@r0,ar4
      004CCE 08               [12] 5970 	inc	r0
      004CCF A6 05            [24] 5971 	mov	@r0,ar5
      004CD1 08               [12] 5972 	inc	r0
      004CD2 A6 06            [24] 5973 	mov	@r0,ar6
      004CD4 08               [12] 5974 	inc	r0
      004CD5 A6 07            [24] 5975 	mov	@r0,ar7
      004CD7                       5976 00192$:
                                   5977 ;	calc.c:272: (void)stack_push(ctx->ps, d1);
      004CD7 E5 08            [12] 5978 	mov	a,_bp
      004CD9 24 0E            [12] 5979 	add	a,#0x0e
      004CDB F8               [12] 5980 	mov	r0,a
      004CDC 86 82            [24] 5981 	mov	dpl,@r0
      004CDE 08               [12] 5982 	inc	r0
      004CDF 86 83            [24] 5983 	mov	dph,@r0
      004CE1 08               [12] 5984 	inc	r0
      004CE2 86 F0            [24] 5985 	mov	b,@r0
      004CE4 12 71 7E         [24] 5986 	lcall	__gptrget
      004CE7 FD               [12] 5987 	mov	r5,a
      004CE8 A3               [24] 5988 	inc	dptr
      004CE9 12 71 7E         [24] 5989 	lcall	__gptrget
      004CEC FE               [12] 5990 	mov	r6,a
      004CED A3               [24] 5991 	inc	dptr
      004CEE 12 71 7E         [24] 5992 	lcall	__gptrget
      004CF1 FF               [12] 5993 	mov	r7,a
      004CF2 E5 08            [12] 5994 	mov	a,_bp
      004CF4 24 19            [12] 5995 	add	a,#0x19
      004CF6 F8               [12] 5996 	mov	r0,a
      004CF7 E6               [12] 5997 	mov	a,@r0
      004CF8 C0 E0            [24] 5998 	push	acc
      004CFA 08               [12] 5999 	inc	r0
      004CFB E6               [12] 6000 	mov	a,@r0
      004CFC C0 E0            [24] 6001 	push	acc
      004CFE 08               [12] 6002 	inc	r0
      004CFF E6               [12] 6003 	mov	a,@r0
      004D00 C0 E0            [24] 6004 	push	acc
      004D02 08               [12] 6005 	inc	r0
      004D03 E6               [12] 6006 	mov	a,@r0
      004D04 C0 E0            [24] 6007 	push	acc
      004D06 8D 82            [24] 6008 	mov	dpl,r5
      004D08 8E 83            [24] 6009 	mov	dph,r6
      004D0A 8F F0            [24] 6010 	mov	b,r7
      004D0C 12 26 BA         [24] 6011 	lcall	_stack_push
      004D0F E5 81            [12] 6012 	mov	a,sp
      004D11 24 FC            [12] 6013 	add	a,#0xfc
      004D13 F5 81            [12] 6014 	mov	sp,a
                                   6015 ;	calc.c:274: break;
      004D15 02 57 B4         [24] 6016 	ljmp	00249$
                                   6017 ;	calc.c:275: case '&':
      004D18                       6018 00202$:
                                   6019 ;	calc.c:276: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004D18 E5 08            [12] 6020 	mov	a,_bp
      004D1A 24 15            [12] 6021 	add	a,#0x15
      004D1C FF               [12] 6022 	mov	r7,a
      004D1D E5 08            [12] 6023 	mov	a,_bp
      004D1F 24 0E            [12] 6024 	add	a,#0x0e
      004D21 F8               [12] 6025 	mov	r0,a
      004D22 A6 07            [24] 6026 	mov	@r0,ar7
      004D24 08               [12] 6027 	inc	r0
      004D25 76 00            [12] 6028 	mov	@r0,#0x00
      004D27 08               [12] 6029 	inc	r0
      004D28 76 40            [12] 6030 	mov	@r0,#0x40
      004D2A E5 08            [12] 6031 	mov	a,_bp
      004D2C 24 12            [12] 6032 	add	a,#0x12
      004D2E F8               [12] 6033 	mov	r0,a
      004D2F 74 13            [12] 6034 	mov	a,#0x13
      004D31 26               [12] 6035 	add	a,@r0
      004D32 FA               [12] 6036 	mov	r2,a
      004D33 74 40            [12] 6037 	mov	a,#0x40
      004D35 08               [12] 6038 	inc	r0
      004D36 36               [12] 6039 	addc	a,@r0
      004D37 FB               [12] 6040 	mov	r3,a
      004D38 08               [12] 6041 	inc	r0
      004D39 86 04            [24] 6042 	mov	ar4,@r0
      004D3B 8A 82            [24] 6043 	mov	dpl,r2
      004D3D 8B 83            [24] 6044 	mov	dph,r3
      004D3F 8C F0            [24] 6045 	mov	b,r4
      004D41 12 71 7E         [24] 6046 	lcall	__gptrget
      004D44 FD               [12] 6047 	mov	r5,a
      004D45 A3               [24] 6048 	inc	dptr
      004D46 12 71 7E         [24] 6049 	lcall	__gptrget
      004D49 FE               [12] 6050 	mov	r6,a
      004D4A A3               [24] 6051 	inc	dptr
      004D4B 12 71 7E         [24] 6052 	lcall	__gptrget
      004D4E FF               [12] 6053 	mov	r7,a
      004D4F C0 04            [24] 6054 	push	ar4
      004D51 C0 03            [24] 6055 	push	ar3
      004D53 C0 02            [24] 6056 	push	ar2
      004D55 E5 08            [12] 6057 	mov	a,_bp
      004D57 24 0E            [12] 6058 	add	a,#0x0e
      004D59 F8               [12] 6059 	mov	r0,a
      004D5A E6               [12] 6060 	mov	a,@r0
      004D5B C0 E0            [24] 6061 	push	acc
      004D5D 08               [12] 6062 	inc	r0
      004D5E E6               [12] 6063 	mov	a,@r0
      004D5F C0 E0            [24] 6064 	push	acc
      004D61 08               [12] 6065 	inc	r0
      004D62 E6               [12] 6066 	mov	a,@r0
      004D63 C0 E0            [24] 6067 	push	acc
      004D65 8D 82            [24] 6068 	mov	dpl,r5
      004D67 8E 83            [24] 6069 	mov	dph,r6
      004D69 8F F0            [24] 6070 	mov	b,r7
      004D6B 12 27 B4         [24] 6071 	lcall	_stack_pop
      004D6E AE 82            [24] 6072 	mov	r6,dpl
      004D70 AF 83            [24] 6073 	mov	r7,dph
      004D72 15 81            [12] 6074 	dec	sp
      004D74 15 81            [12] 6075 	dec	sp
      004D76 15 81            [12] 6076 	dec	sp
      004D78 D0 02            [24] 6077 	pop	ar2
      004D7A D0 03            [24] 6078 	pop	ar3
      004D7C D0 04            [24] 6079 	pop	ar4
      004D7E EE               [12] 6080 	mov	a,r6
      004D7F 4F               [12] 6081 	orl	a,r7
      004D80 70 25            [24] 6082 	jnz	00207$
      004D82 7D 4D            [12] 6083 	mov	r5,#___str_10
      004D84 7C 8A            [12] 6084 	mov	r4,#(___str_10 >> 8)
      004D86 7B 80            [12] 6085 	mov	r3,#0x80
                                   6086 ;	calc.c:51: return;
      004D88                       6087 00462$:
                                   6088 ;	calc.c:49: for (; *s; s++) putchar(*s);
      004D88 8D 82            [24] 6089 	mov	dpl,r5
      004D8A 8C 83            [24] 6090 	mov	dph,r4
      004D8C 8B F0            [24] 6091 	mov	b,r3
      004D8E 12 71 7E         [24] 6092 	lcall	__gptrget
      004D91 FF               [12] 6093 	mov	r7,a
      004D92 70 03            [24] 6094 	jnz	01366$
      004D94 02 57 B4         [24] 6095 	ljmp	00249$
      004D97                       6096 01366$:
      004D97 7E 00            [12] 6097 	mov	r6,#0x00
      004D99 8F 82            [24] 6098 	mov	dpl,r7
      004D9B 8E 83            [24] 6099 	mov	dph,r6
      004D9D 12 2C 1F         [24] 6100 	lcall	_putchar
      004DA0 0D               [12] 6101 	inc	r5
                                   6102 ;	calc.c:276: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004DA1 BD 00 E4         [24] 6103 	cjne	r5,#0x00,00462$
      004DA4 0C               [12] 6104 	inc	r4
      004DA5 80 E1            [24] 6105 	sjmp	00462$
      004DA7                       6106 00207$:
                                   6107 ;	calc.c:277: else if (!stack_pop(ctx->ps, &d1)) {
      004DA7 E5 08            [12] 6108 	mov	a,_bp
      004DA9 24 19            [12] 6109 	add	a,#0x19
      004DAB FF               [12] 6110 	mov	r7,a
      004DAC E5 08            [12] 6111 	mov	a,_bp
      004DAE 24 0E            [12] 6112 	add	a,#0x0e
      004DB0 F8               [12] 6113 	mov	r0,a
      004DB1 A6 07            [24] 6114 	mov	@r0,ar7
      004DB3 08               [12] 6115 	inc	r0
      004DB4 76 00            [12] 6116 	mov	@r0,#0x00
      004DB6 08               [12] 6117 	inc	r0
      004DB7 76 40            [12] 6118 	mov	@r0,#0x40
      004DB9 8A 82            [24] 6119 	mov	dpl,r2
      004DBB 8B 83            [24] 6120 	mov	dph,r3
      004DBD 8C F0            [24] 6121 	mov	b,r4
      004DBF 12 71 7E         [24] 6122 	lcall	__gptrget
      004DC2 FD               [12] 6123 	mov	r5,a
      004DC3 A3               [24] 6124 	inc	dptr
      004DC4 12 71 7E         [24] 6125 	lcall	__gptrget
      004DC7 FE               [12] 6126 	mov	r6,a
      004DC8 A3               [24] 6127 	inc	dptr
      004DC9 12 71 7E         [24] 6128 	lcall	__gptrget
      004DCC FF               [12] 6129 	mov	r7,a
      004DCD C0 04            [24] 6130 	push	ar4
      004DCF C0 03            [24] 6131 	push	ar3
      004DD1 C0 02            [24] 6132 	push	ar2
      004DD3 E5 08            [12] 6133 	mov	a,_bp
      004DD5 24 0E            [12] 6134 	add	a,#0x0e
      004DD7 F8               [12] 6135 	mov	r0,a
      004DD8 E6               [12] 6136 	mov	a,@r0
      004DD9 C0 E0            [24] 6137 	push	acc
      004DDB 08               [12] 6138 	inc	r0
      004DDC E6               [12] 6139 	mov	a,@r0
      004DDD C0 E0            [24] 6140 	push	acc
      004DDF 08               [12] 6141 	inc	r0
      004DE0 E6               [12] 6142 	mov	a,@r0
      004DE1 C0 E0            [24] 6143 	push	acc
      004DE3 8D 82            [24] 6144 	mov	dpl,r5
      004DE5 8E 83            [24] 6145 	mov	dph,r6
      004DE7 8F F0            [24] 6146 	mov	b,r7
      004DE9 12 27 B4         [24] 6147 	lcall	_stack_pop
      004DEC AE 82            [24] 6148 	mov	r6,dpl
      004DEE AF 83            [24] 6149 	mov	r7,dph
      004DF0 15 81            [12] 6150 	dec	sp
      004DF2 15 81            [12] 6151 	dec	sp
      004DF4 15 81            [12] 6152 	dec	sp
      004DF6 D0 02            [24] 6153 	pop	ar2
      004DF8 D0 03            [24] 6154 	pop	ar3
      004DFA D0 04            [24] 6155 	pop	ar4
      004DFC EE               [12] 6156 	mov	a,r6
      004DFD 4F               [12] 6157 	orl	a,r7
      004DFE 70 5C            [24] 6158 	jnz	00204$
                                   6159 ;	calc.c:278: (void)stack_push(ctx->ps, d0);
      004E00 8A 82            [24] 6160 	mov	dpl,r2
      004E02 8B 83            [24] 6161 	mov	dph,r3
      004E04 8C F0            [24] 6162 	mov	b,r4
      004E06 12 71 7E         [24] 6163 	lcall	__gptrget
      004E09 FD               [12] 6164 	mov	r5,a
      004E0A A3               [24] 6165 	inc	dptr
      004E0B 12 71 7E         [24] 6166 	lcall	__gptrget
      004E0E FE               [12] 6167 	mov	r6,a
      004E0F A3               [24] 6168 	inc	dptr
      004E10 12 71 7E         [24] 6169 	lcall	__gptrget
      004E13 FF               [12] 6170 	mov	r7,a
      004E14 E5 08            [12] 6171 	mov	a,_bp
      004E16 24 15            [12] 6172 	add	a,#0x15
      004E18 F8               [12] 6173 	mov	r0,a
      004E19 E6               [12] 6174 	mov	a,@r0
      004E1A C0 E0            [24] 6175 	push	acc
      004E1C 08               [12] 6176 	inc	r0
      004E1D E6               [12] 6177 	mov	a,@r0
      004E1E C0 E0            [24] 6178 	push	acc
      004E20 08               [12] 6179 	inc	r0
      004E21 E6               [12] 6180 	mov	a,@r0
      004E22 C0 E0            [24] 6181 	push	acc
      004E24 08               [12] 6182 	inc	r0
      004E25 E6               [12] 6183 	mov	a,@r0
      004E26 C0 E0            [24] 6184 	push	acc
      004E28 8D 82            [24] 6185 	mov	dpl,r5
      004E2A 8E 83            [24] 6186 	mov	dph,r6
      004E2C 8F F0            [24] 6187 	mov	b,r7
      004E2E 12 26 BA         [24] 6188 	lcall	_stack_push
      004E31 E5 81            [12] 6189 	mov	a,sp
      004E33 24 FC            [12] 6190 	add	a,#0xfc
      004E35 F5 81            [12] 6191 	mov	sp,a
                                   6192 ;	calc.c:279: printstr("\r\nstack underflow\r\n");
      004E37 7D 4D            [12] 6193 	mov	r5,#___str_10
      004E39 7C 8A            [12] 6194 	mov	r4,#(___str_10 >> 8)
      004E3B 7B 80            [12] 6195 	mov	r3,#0x80
                                   6196 ;	calc.c:51: return;
      004E3D                       6197 00465$:
                                   6198 ;	calc.c:49: for (; *s; s++) putchar(*s);
      004E3D 8D 82            [24] 6199 	mov	dpl,r5
      004E3F 8C 83            [24] 6200 	mov	dph,r4
      004E41 8B F0            [24] 6201 	mov	b,r3
      004E43 12 71 7E         [24] 6202 	lcall	__gptrget
      004E46 FF               [12] 6203 	mov	r7,a
      004E47 70 03            [24] 6204 	jnz	01369$
      004E49 02 57 B4         [24] 6205 	ljmp	00249$
      004E4C                       6206 01369$:
      004E4C 7E 00            [12] 6207 	mov	r6,#0x00
      004E4E 8F 82            [24] 6208 	mov	dpl,r7
      004E50 8E 83            [24] 6209 	mov	dph,r6
      004E52 12 2C 1F         [24] 6210 	lcall	_putchar
      004E55 0D               [12] 6211 	inc	r5
                                   6212 ;	calc.c:279: printstr("\r\nstack underflow\r\n");
      004E56 BD 00 E4         [24] 6213 	cjne	r5,#0x00,00465$
      004E59 0C               [12] 6214 	inc	r4
      004E5A 80 E1            [24] 6215 	sjmp	00465$
      004E5C                       6216 00204$:
                                   6217 ;	calc.c:281: d1 &= d0;
      004E5C E5 08            [12] 6218 	mov	a,_bp
      004E5E 24 19            [12] 6219 	add	a,#0x19
      004E60 F8               [12] 6220 	mov	r0,a
      004E61 E5 08            [12] 6221 	mov	a,_bp
      004E63 24 15            [12] 6222 	add	a,#0x15
      004E65 F9               [12] 6223 	mov	r1,a
      004E66 E7               [12] 6224 	mov	a,@r1
      004E67 56               [12] 6225 	anl	a,@r0
      004E68 F6               [12] 6226 	mov	@r0,a
      004E69 09               [12] 6227 	inc	r1
      004E6A E7               [12] 6228 	mov	a,@r1
      004E6B 08               [12] 6229 	inc	r0
      004E6C 56               [12] 6230 	anl	a,@r0
      004E6D F6               [12] 6231 	mov	@r0,a
      004E6E 09               [12] 6232 	inc	r1
      004E6F E7               [12] 6233 	mov	a,@r1
      004E70 08               [12] 6234 	inc	r0
      004E71 56               [12] 6235 	anl	a,@r0
      004E72 F6               [12] 6236 	mov	@r0,a
      004E73 09               [12] 6237 	inc	r1
      004E74 E7               [12] 6238 	mov	a,@r1
      004E75 08               [12] 6239 	inc	r0
      004E76 56               [12] 6240 	anl	a,@r0
      004E77 F6               [12] 6241 	mov	@r0,a
                                   6242 ;	calc.c:282: (void)stack_push(ctx->ps, d1);
      004E78 8A 82            [24] 6243 	mov	dpl,r2
      004E7A 8B 83            [24] 6244 	mov	dph,r3
      004E7C 8C F0            [24] 6245 	mov	b,r4
      004E7E 12 71 7E         [24] 6246 	lcall	__gptrget
      004E81 FA               [12] 6247 	mov	r2,a
      004E82 A3               [24] 6248 	inc	dptr
      004E83 12 71 7E         [24] 6249 	lcall	__gptrget
      004E86 FB               [12] 6250 	mov	r3,a
      004E87 A3               [24] 6251 	inc	dptr
      004E88 12 71 7E         [24] 6252 	lcall	__gptrget
      004E8B FC               [12] 6253 	mov	r4,a
      004E8C E5 08            [12] 6254 	mov	a,_bp
      004E8E 24 19            [12] 6255 	add	a,#0x19
      004E90 F8               [12] 6256 	mov	r0,a
      004E91 E6               [12] 6257 	mov	a,@r0
      004E92 C0 E0            [24] 6258 	push	acc
      004E94 08               [12] 6259 	inc	r0
      004E95 E6               [12] 6260 	mov	a,@r0
      004E96 C0 E0            [24] 6261 	push	acc
      004E98 08               [12] 6262 	inc	r0
      004E99 E6               [12] 6263 	mov	a,@r0
      004E9A C0 E0            [24] 6264 	push	acc
      004E9C 08               [12] 6265 	inc	r0
      004E9D E6               [12] 6266 	mov	a,@r0
      004E9E C0 E0            [24] 6267 	push	acc
      004EA0 8A 82            [24] 6268 	mov	dpl,r2
      004EA2 8B 83            [24] 6269 	mov	dph,r3
      004EA4 8C F0            [24] 6270 	mov	b,r4
      004EA6 12 26 BA         [24] 6271 	lcall	_stack_push
      004EA9 E5 81            [12] 6272 	mov	a,sp
      004EAB 24 FC            [12] 6273 	add	a,#0xfc
      004EAD F5 81            [12] 6274 	mov	sp,a
                                   6275 ;	calc.c:284: break;
      004EAF 02 57 B4         [24] 6276 	ljmp	00249$
                                   6277 ;	calc.c:285: case '|':
      004EB2                       6278 00209$:
                                   6279 ;	calc.c:286: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004EB2 E5 08            [12] 6280 	mov	a,_bp
      004EB4 24 15            [12] 6281 	add	a,#0x15
      004EB6 FF               [12] 6282 	mov	r7,a
      004EB7 E5 08            [12] 6283 	mov	a,_bp
      004EB9 24 0E            [12] 6284 	add	a,#0x0e
      004EBB F8               [12] 6285 	mov	r0,a
      004EBC A6 07            [24] 6286 	mov	@r0,ar7
      004EBE 08               [12] 6287 	inc	r0
      004EBF 76 00            [12] 6288 	mov	@r0,#0x00
      004EC1 08               [12] 6289 	inc	r0
      004EC2 76 40            [12] 6290 	mov	@r0,#0x40
      004EC4 E5 08            [12] 6291 	mov	a,_bp
      004EC6 24 12            [12] 6292 	add	a,#0x12
      004EC8 F8               [12] 6293 	mov	r0,a
      004EC9 74 13            [12] 6294 	mov	a,#0x13
      004ECB 26               [12] 6295 	add	a,@r0
      004ECC FA               [12] 6296 	mov	r2,a
      004ECD 74 40            [12] 6297 	mov	a,#0x40
      004ECF 08               [12] 6298 	inc	r0
      004ED0 36               [12] 6299 	addc	a,@r0
      004ED1 FB               [12] 6300 	mov	r3,a
      004ED2 08               [12] 6301 	inc	r0
      004ED3 86 04            [24] 6302 	mov	ar4,@r0
      004ED5 8A 82            [24] 6303 	mov	dpl,r2
      004ED7 8B 83            [24] 6304 	mov	dph,r3
      004ED9 8C F0            [24] 6305 	mov	b,r4
      004EDB 12 71 7E         [24] 6306 	lcall	__gptrget
      004EDE FD               [12] 6307 	mov	r5,a
      004EDF A3               [24] 6308 	inc	dptr
      004EE0 12 71 7E         [24] 6309 	lcall	__gptrget
      004EE3 FE               [12] 6310 	mov	r6,a
      004EE4 A3               [24] 6311 	inc	dptr
      004EE5 12 71 7E         [24] 6312 	lcall	__gptrget
      004EE8 FF               [12] 6313 	mov	r7,a
      004EE9 C0 04            [24] 6314 	push	ar4
      004EEB C0 03            [24] 6315 	push	ar3
      004EED C0 02            [24] 6316 	push	ar2
      004EEF E5 08            [12] 6317 	mov	a,_bp
      004EF1 24 0E            [12] 6318 	add	a,#0x0e
      004EF3 F8               [12] 6319 	mov	r0,a
      004EF4 E6               [12] 6320 	mov	a,@r0
      004EF5 C0 E0            [24] 6321 	push	acc
      004EF7 08               [12] 6322 	inc	r0
      004EF8 E6               [12] 6323 	mov	a,@r0
      004EF9 C0 E0            [24] 6324 	push	acc
      004EFB 08               [12] 6325 	inc	r0
      004EFC E6               [12] 6326 	mov	a,@r0
      004EFD C0 E0            [24] 6327 	push	acc
      004EFF 8D 82            [24] 6328 	mov	dpl,r5
      004F01 8E 83            [24] 6329 	mov	dph,r6
      004F03 8F F0            [24] 6330 	mov	b,r7
      004F05 12 27 B4         [24] 6331 	lcall	_stack_pop
      004F08 AE 82            [24] 6332 	mov	r6,dpl
      004F0A AF 83            [24] 6333 	mov	r7,dph
      004F0C 15 81            [12] 6334 	dec	sp
      004F0E 15 81            [12] 6335 	dec	sp
      004F10 15 81            [12] 6336 	dec	sp
      004F12 D0 02            [24] 6337 	pop	ar2
      004F14 D0 03            [24] 6338 	pop	ar3
      004F16 D0 04            [24] 6339 	pop	ar4
      004F18 EE               [12] 6340 	mov	a,r6
      004F19 4F               [12] 6341 	orl	a,r7
      004F1A 70 25            [24] 6342 	jnz	00214$
      004F1C 7D 4D            [12] 6343 	mov	r5,#___str_10
      004F1E 7C 8A            [12] 6344 	mov	r4,#(___str_10 >> 8)
      004F20 7B 80            [12] 6345 	mov	r3,#0x80
                                   6346 ;	calc.c:51: return;
      004F22                       6347 00468$:
                                   6348 ;	calc.c:49: for (; *s; s++) putchar(*s);
      004F22 8D 82            [24] 6349 	mov	dpl,r5
      004F24 8C 83            [24] 6350 	mov	dph,r4
      004F26 8B F0            [24] 6351 	mov	b,r3
      004F28 12 71 7E         [24] 6352 	lcall	__gptrget
      004F2B FF               [12] 6353 	mov	r7,a
      004F2C 70 03            [24] 6354 	jnz	01372$
      004F2E 02 57 B4         [24] 6355 	ljmp	00249$
      004F31                       6356 01372$:
      004F31 7E 00            [12] 6357 	mov	r6,#0x00
      004F33 8F 82            [24] 6358 	mov	dpl,r7
      004F35 8E 83            [24] 6359 	mov	dph,r6
      004F37 12 2C 1F         [24] 6360 	lcall	_putchar
      004F3A 0D               [12] 6361 	inc	r5
                                   6362 ;	calc.c:286: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004F3B BD 00 E4         [24] 6363 	cjne	r5,#0x00,00468$
      004F3E 0C               [12] 6364 	inc	r4
      004F3F 80 E1            [24] 6365 	sjmp	00468$
      004F41                       6366 00214$:
                                   6367 ;	calc.c:287: else if (!stack_pop(ctx->ps, &d1)) {
      004F41 E5 08            [12] 6368 	mov	a,_bp
      004F43 24 19            [12] 6369 	add	a,#0x19
      004F45 FF               [12] 6370 	mov	r7,a
      004F46 E5 08            [12] 6371 	mov	a,_bp
      004F48 24 0E            [12] 6372 	add	a,#0x0e
      004F4A F8               [12] 6373 	mov	r0,a
      004F4B A6 07            [24] 6374 	mov	@r0,ar7
      004F4D 08               [12] 6375 	inc	r0
      004F4E 76 00            [12] 6376 	mov	@r0,#0x00
      004F50 08               [12] 6377 	inc	r0
      004F51 76 40            [12] 6378 	mov	@r0,#0x40
      004F53 8A 82            [24] 6379 	mov	dpl,r2
      004F55 8B 83            [24] 6380 	mov	dph,r3
      004F57 8C F0            [24] 6381 	mov	b,r4
      004F59 12 71 7E         [24] 6382 	lcall	__gptrget
      004F5C FD               [12] 6383 	mov	r5,a
      004F5D A3               [24] 6384 	inc	dptr
      004F5E 12 71 7E         [24] 6385 	lcall	__gptrget
      004F61 FE               [12] 6386 	mov	r6,a
      004F62 A3               [24] 6387 	inc	dptr
      004F63 12 71 7E         [24] 6388 	lcall	__gptrget
      004F66 FF               [12] 6389 	mov	r7,a
      004F67 C0 04            [24] 6390 	push	ar4
      004F69 C0 03            [24] 6391 	push	ar3
      004F6B C0 02            [24] 6392 	push	ar2
      004F6D E5 08            [12] 6393 	mov	a,_bp
      004F6F 24 0E            [12] 6394 	add	a,#0x0e
      004F71 F8               [12] 6395 	mov	r0,a
      004F72 E6               [12] 6396 	mov	a,@r0
      004F73 C0 E0            [24] 6397 	push	acc
      004F75 08               [12] 6398 	inc	r0
      004F76 E6               [12] 6399 	mov	a,@r0
      004F77 C0 E0            [24] 6400 	push	acc
      004F79 08               [12] 6401 	inc	r0
      004F7A E6               [12] 6402 	mov	a,@r0
      004F7B C0 E0            [24] 6403 	push	acc
      004F7D 8D 82            [24] 6404 	mov	dpl,r5
      004F7F 8E 83            [24] 6405 	mov	dph,r6
      004F81 8F F0            [24] 6406 	mov	b,r7
      004F83 12 27 B4         [24] 6407 	lcall	_stack_pop
      004F86 AE 82            [24] 6408 	mov	r6,dpl
      004F88 AF 83            [24] 6409 	mov	r7,dph
      004F8A 15 81            [12] 6410 	dec	sp
      004F8C 15 81            [12] 6411 	dec	sp
      004F8E 15 81            [12] 6412 	dec	sp
      004F90 D0 02            [24] 6413 	pop	ar2
      004F92 D0 03            [24] 6414 	pop	ar3
      004F94 D0 04            [24] 6415 	pop	ar4
      004F96 EE               [12] 6416 	mov	a,r6
      004F97 4F               [12] 6417 	orl	a,r7
      004F98 70 5C            [24] 6418 	jnz	00211$
                                   6419 ;	calc.c:288: (void)stack_push(ctx->ps, d0);
      004F9A 8A 82            [24] 6420 	mov	dpl,r2
      004F9C 8B 83            [24] 6421 	mov	dph,r3
      004F9E 8C F0            [24] 6422 	mov	b,r4
      004FA0 12 71 7E         [24] 6423 	lcall	__gptrget
      004FA3 FD               [12] 6424 	mov	r5,a
      004FA4 A3               [24] 6425 	inc	dptr
      004FA5 12 71 7E         [24] 6426 	lcall	__gptrget
      004FA8 FE               [12] 6427 	mov	r6,a
      004FA9 A3               [24] 6428 	inc	dptr
      004FAA 12 71 7E         [24] 6429 	lcall	__gptrget
      004FAD FF               [12] 6430 	mov	r7,a
      004FAE E5 08            [12] 6431 	mov	a,_bp
      004FB0 24 15            [12] 6432 	add	a,#0x15
      004FB2 F8               [12] 6433 	mov	r0,a
      004FB3 E6               [12] 6434 	mov	a,@r0
      004FB4 C0 E0            [24] 6435 	push	acc
      004FB6 08               [12] 6436 	inc	r0
      004FB7 E6               [12] 6437 	mov	a,@r0
      004FB8 C0 E0            [24] 6438 	push	acc
      004FBA 08               [12] 6439 	inc	r0
      004FBB E6               [12] 6440 	mov	a,@r0
      004FBC C0 E0            [24] 6441 	push	acc
      004FBE 08               [12] 6442 	inc	r0
      004FBF E6               [12] 6443 	mov	a,@r0
      004FC0 C0 E0            [24] 6444 	push	acc
      004FC2 8D 82            [24] 6445 	mov	dpl,r5
      004FC4 8E 83            [24] 6446 	mov	dph,r6
      004FC6 8F F0            [24] 6447 	mov	b,r7
      004FC8 12 26 BA         [24] 6448 	lcall	_stack_push
      004FCB E5 81            [12] 6449 	mov	a,sp
      004FCD 24 FC            [12] 6450 	add	a,#0xfc
      004FCF F5 81            [12] 6451 	mov	sp,a
                                   6452 ;	calc.c:289: printstr("\r\nstack underflow\r\n");
      004FD1 7D 4D            [12] 6453 	mov	r5,#___str_10
      004FD3 7C 8A            [12] 6454 	mov	r4,#(___str_10 >> 8)
      004FD5 7B 80            [12] 6455 	mov	r3,#0x80
                                   6456 ;	calc.c:51: return;
      004FD7                       6457 00471$:
                                   6458 ;	calc.c:49: for (; *s; s++) putchar(*s);
      004FD7 8D 82            [24] 6459 	mov	dpl,r5
      004FD9 8C 83            [24] 6460 	mov	dph,r4
      004FDB 8B F0            [24] 6461 	mov	b,r3
      004FDD 12 71 7E         [24] 6462 	lcall	__gptrget
      004FE0 FF               [12] 6463 	mov	r7,a
      004FE1 70 03            [24] 6464 	jnz	01375$
      004FE3 02 57 B4         [24] 6465 	ljmp	00249$
      004FE6                       6466 01375$:
      004FE6 7E 00            [12] 6467 	mov	r6,#0x00
      004FE8 8F 82            [24] 6468 	mov	dpl,r7
      004FEA 8E 83            [24] 6469 	mov	dph,r6
      004FEC 12 2C 1F         [24] 6470 	lcall	_putchar
      004FEF 0D               [12] 6471 	inc	r5
                                   6472 ;	calc.c:289: printstr("\r\nstack underflow\r\n");
      004FF0 BD 00 E4         [24] 6473 	cjne	r5,#0x00,00471$
      004FF3 0C               [12] 6474 	inc	r4
      004FF4 80 E1            [24] 6475 	sjmp	00471$
      004FF6                       6476 00211$:
                                   6477 ;	calc.c:291: d1 |= d0;
      004FF6 E5 08            [12] 6478 	mov	a,_bp
      004FF8 24 19            [12] 6479 	add	a,#0x19
      004FFA F8               [12] 6480 	mov	r0,a
      004FFB E5 08            [12] 6481 	mov	a,_bp
      004FFD 24 15            [12] 6482 	add	a,#0x15
      004FFF F9               [12] 6483 	mov	r1,a
      005000 E7               [12] 6484 	mov	a,@r1
      005001 46               [12] 6485 	orl	a,@r0
      005002 F6               [12] 6486 	mov	@r0,a
      005003 09               [12] 6487 	inc	r1
      005004 E7               [12] 6488 	mov	a,@r1
      005005 08               [12] 6489 	inc	r0
      005006 46               [12] 6490 	orl	a,@r0
      005007 F6               [12] 6491 	mov	@r0,a
      005008 09               [12] 6492 	inc	r1
      005009 E7               [12] 6493 	mov	a,@r1
      00500A 08               [12] 6494 	inc	r0
      00500B 46               [12] 6495 	orl	a,@r0
      00500C F6               [12] 6496 	mov	@r0,a
      00500D 09               [12] 6497 	inc	r1
      00500E E7               [12] 6498 	mov	a,@r1
      00500F 08               [12] 6499 	inc	r0
      005010 46               [12] 6500 	orl	a,@r0
      005011 F6               [12] 6501 	mov	@r0,a
                                   6502 ;	calc.c:292: (void)stack_push(ctx->ps, d1);
      005012 8A 82            [24] 6503 	mov	dpl,r2
      005014 8B 83            [24] 6504 	mov	dph,r3
      005016 8C F0            [24] 6505 	mov	b,r4
      005018 12 71 7E         [24] 6506 	lcall	__gptrget
      00501B FA               [12] 6507 	mov	r2,a
      00501C A3               [24] 6508 	inc	dptr
      00501D 12 71 7E         [24] 6509 	lcall	__gptrget
      005020 FB               [12] 6510 	mov	r3,a
      005021 A3               [24] 6511 	inc	dptr
      005022 12 71 7E         [24] 6512 	lcall	__gptrget
      005025 FC               [12] 6513 	mov	r4,a
      005026 E5 08            [12] 6514 	mov	a,_bp
      005028 24 19            [12] 6515 	add	a,#0x19
      00502A F8               [12] 6516 	mov	r0,a
      00502B E6               [12] 6517 	mov	a,@r0
      00502C C0 E0            [24] 6518 	push	acc
      00502E 08               [12] 6519 	inc	r0
      00502F E6               [12] 6520 	mov	a,@r0
      005030 C0 E0            [24] 6521 	push	acc
      005032 08               [12] 6522 	inc	r0
      005033 E6               [12] 6523 	mov	a,@r0
      005034 C0 E0            [24] 6524 	push	acc
      005036 08               [12] 6525 	inc	r0
      005037 E6               [12] 6526 	mov	a,@r0
      005038 C0 E0            [24] 6527 	push	acc
      00503A 8A 82            [24] 6528 	mov	dpl,r2
      00503C 8B 83            [24] 6529 	mov	dph,r3
      00503E 8C F0            [24] 6530 	mov	b,r4
      005040 12 26 BA         [24] 6531 	lcall	_stack_push
      005043 E5 81            [12] 6532 	mov	a,sp
      005045 24 FC            [12] 6533 	add	a,#0xfc
      005047 F5 81            [12] 6534 	mov	sp,a
                                   6535 ;	calc.c:294: break;
      005049 02 57 B4         [24] 6536 	ljmp	00249$
                                   6537 ;	calc.c:295: case '^':
      00504C                       6538 00216$:
                                   6539 ;	calc.c:296: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      00504C E5 08            [12] 6540 	mov	a,_bp
      00504E 24 15            [12] 6541 	add	a,#0x15
      005050 FF               [12] 6542 	mov	r7,a
      005051 E5 08            [12] 6543 	mov	a,_bp
      005053 24 0E            [12] 6544 	add	a,#0x0e
      005055 F8               [12] 6545 	mov	r0,a
      005056 A6 07            [24] 6546 	mov	@r0,ar7
      005058 08               [12] 6547 	inc	r0
      005059 76 00            [12] 6548 	mov	@r0,#0x00
      00505B 08               [12] 6549 	inc	r0
      00505C 76 40            [12] 6550 	mov	@r0,#0x40
      00505E E5 08            [12] 6551 	mov	a,_bp
      005060 24 12            [12] 6552 	add	a,#0x12
      005062 F8               [12] 6553 	mov	r0,a
      005063 74 13            [12] 6554 	mov	a,#0x13
      005065 26               [12] 6555 	add	a,@r0
      005066 FA               [12] 6556 	mov	r2,a
      005067 74 40            [12] 6557 	mov	a,#0x40
      005069 08               [12] 6558 	inc	r0
      00506A 36               [12] 6559 	addc	a,@r0
      00506B FB               [12] 6560 	mov	r3,a
      00506C 08               [12] 6561 	inc	r0
      00506D 86 04            [24] 6562 	mov	ar4,@r0
      00506F 8A 82            [24] 6563 	mov	dpl,r2
      005071 8B 83            [24] 6564 	mov	dph,r3
      005073 8C F0            [24] 6565 	mov	b,r4
      005075 12 71 7E         [24] 6566 	lcall	__gptrget
      005078 FD               [12] 6567 	mov	r5,a
      005079 A3               [24] 6568 	inc	dptr
      00507A 12 71 7E         [24] 6569 	lcall	__gptrget
      00507D FE               [12] 6570 	mov	r6,a
      00507E A3               [24] 6571 	inc	dptr
      00507F 12 71 7E         [24] 6572 	lcall	__gptrget
      005082 FF               [12] 6573 	mov	r7,a
      005083 C0 04            [24] 6574 	push	ar4
      005085 C0 03            [24] 6575 	push	ar3
      005087 C0 02            [24] 6576 	push	ar2
      005089 E5 08            [12] 6577 	mov	a,_bp
      00508B 24 0E            [12] 6578 	add	a,#0x0e
      00508D F8               [12] 6579 	mov	r0,a
      00508E E6               [12] 6580 	mov	a,@r0
      00508F C0 E0            [24] 6581 	push	acc
      005091 08               [12] 6582 	inc	r0
      005092 E6               [12] 6583 	mov	a,@r0
      005093 C0 E0            [24] 6584 	push	acc
      005095 08               [12] 6585 	inc	r0
      005096 E6               [12] 6586 	mov	a,@r0
      005097 C0 E0            [24] 6587 	push	acc
      005099 8D 82            [24] 6588 	mov	dpl,r5
      00509B 8E 83            [24] 6589 	mov	dph,r6
      00509D 8F F0            [24] 6590 	mov	b,r7
      00509F 12 27 B4         [24] 6591 	lcall	_stack_pop
      0050A2 AE 82            [24] 6592 	mov	r6,dpl
      0050A4 AF 83            [24] 6593 	mov	r7,dph
      0050A6 15 81            [12] 6594 	dec	sp
      0050A8 15 81            [12] 6595 	dec	sp
      0050AA 15 81            [12] 6596 	dec	sp
      0050AC D0 02            [24] 6597 	pop	ar2
      0050AE D0 03            [24] 6598 	pop	ar3
      0050B0 D0 04            [24] 6599 	pop	ar4
      0050B2 EE               [12] 6600 	mov	a,r6
      0050B3 4F               [12] 6601 	orl	a,r7
      0050B4 70 25            [24] 6602 	jnz	00221$
      0050B6 7D 4D            [12] 6603 	mov	r5,#___str_10
      0050B8 7C 8A            [12] 6604 	mov	r4,#(___str_10 >> 8)
      0050BA 7B 80            [12] 6605 	mov	r3,#0x80
                                   6606 ;	calc.c:51: return;
      0050BC                       6607 00474$:
                                   6608 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0050BC 8D 82            [24] 6609 	mov	dpl,r5
      0050BE 8C 83            [24] 6610 	mov	dph,r4
      0050C0 8B F0            [24] 6611 	mov	b,r3
      0050C2 12 71 7E         [24] 6612 	lcall	__gptrget
      0050C5 FF               [12] 6613 	mov	r7,a
      0050C6 70 03            [24] 6614 	jnz	01378$
      0050C8 02 57 B4         [24] 6615 	ljmp	00249$
      0050CB                       6616 01378$:
      0050CB 7E 00            [12] 6617 	mov	r6,#0x00
      0050CD 8F 82            [24] 6618 	mov	dpl,r7
      0050CF 8E 83            [24] 6619 	mov	dph,r6
      0050D1 12 2C 1F         [24] 6620 	lcall	_putchar
      0050D4 0D               [12] 6621 	inc	r5
                                   6622 ;	calc.c:296: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0050D5 BD 00 E4         [24] 6623 	cjne	r5,#0x00,00474$
      0050D8 0C               [12] 6624 	inc	r4
      0050D9 80 E1            [24] 6625 	sjmp	00474$
      0050DB                       6626 00221$:
                                   6627 ;	calc.c:297: else if (!stack_pop(ctx->ps, &d1)) {
      0050DB E5 08            [12] 6628 	mov	a,_bp
      0050DD 24 19            [12] 6629 	add	a,#0x19
      0050DF FF               [12] 6630 	mov	r7,a
      0050E0 E5 08            [12] 6631 	mov	a,_bp
      0050E2 24 0E            [12] 6632 	add	a,#0x0e
      0050E4 F8               [12] 6633 	mov	r0,a
      0050E5 A6 07            [24] 6634 	mov	@r0,ar7
      0050E7 08               [12] 6635 	inc	r0
      0050E8 76 00            [12] 6636 	mov	@r0,#0x00
      0050EA 08               [12] 6637 	inc	r0
      0050EB 76 40            [12] 6638 	mov	@r0,#0x40
      0050ED 8A 82            [24] 6639 	mov	dpl,r2
      0050EF 8B 83            [24] 6640 	mov	dph,r3
      0050F1 8C F0            [24] 6641 	mov	b,r4
      0050F3 12 71 7E         [24] 6642 	lcall	__gptrget
      0050F6 FD               [12] 6643 	mov	r5,a
      0050F7 A3               [24] 6644 	inc	dptr
      0050F8 12 71 7E         [24] 6645 	lcall	__gptrget
      0050FB FE               [12] 6646 	mov	r6,a
      0050FC A3               [24] 6647 	inc	dptr
      0050FD 12 71 7E         [24] 6648 	lcall	__gptrget
      005100 FF               [12] 6649 	mov	r7,a
      005101 C0 04            [24] 6650 	push	ar4
      005103 C0 03            [24] 6651 	push	ar3
      005105 C0 02            [24] 6652 	push	ar2
      005107 E5 08            [12] 6653 	mov	a,_bp
      005109 24 0E            [12] 6654 	add	a,#0x0e
      00510B F8               [12] 6655 	mov	r0,a
      00510C E6               [12] 6656 	mov	a,@r0
      00510D C0 E0            [24] 6657 	push	acc
      00510F 08               [12] 6658 	inc	r0
      005110 E6               [12] 6659 	mov	a,@r0
      005111 C0 E0            [24] 6660 	push	acc
      005113 08               [12] 6661 	inc	r0
      005114 E6               [12] 6662 	mov	a,@r0
      005115 C0 E0            [24] 6663 	push	acc
      005117 8D 82            [24] 6664 	mov	dpl,r5
      005119 8E 83            [24] 6665 	mov	dph,r6
      00511B 8F F0            [24] 6666 	mov	b,r7
      00511D 12 27 B4         [24] 6667 	lcall	_stack_pop
      005120 AE 82            [24] 6668 	mov	r6,dpl
      005122 AF 83            [24] 6669 	mov	r7,dph
      005124 15 81            [12] 6670 	dec	sp
      005126 15 81            [12] 6671 	dec	sp
      005128 15 81            [12] 6672 	dec	sp
      00512A D0 02            [24] 6673 	pop	ar2
      00512C D0 03            [24] 6674 	pop	ar3
      00512E D0 04            [24] 6675 	pop	ar4
      005130 EE               [12] 6676 	mov	a,r6
      005131 4F               [12] 6677 	orl	a,r7
      005132 70 5C            [24] 6678 	jnz	00218$
                                   6679 ;	calc.c:298: (void)stack_push(ctx->ps, d0);
      005134 8A 82            [24] 6680 	mov	dpl,r2
      005136 8B 83            [24] 6681 	mov	dph,r3
      005138 8C F0            [24] 6682 	mov	b,r4
      00513A 12 71 7E         [24] 6683 	lcall	__gptrget
      00513D FD               [12] 6684 	mov	r5,a
      00513E A3               [24] 6685 	inc	dptr
      00513F 12 71 7E         [24] 6686 	lcall	__gptrget
      005142 FE               [12] 6687 	mov	r6,a
      005143 A3               [24] 6688 	inc	dptr
      005144 12 71 7E         [24] 6689 	lcall	__gptrget
      005147 FF               [12] 6690 	mov	r7,a
      005148 E5 08            [12] 6691 	mov	a,_bp
      00514A 24 15            [12] 6692 	add	a,#0x15
      00514C F8               [12] 6693 	mov	r0,a
      00514D E6               [12] 6694 	mov	a,@r0
      00514E C0 E0            [24] 6695 	push	acc
      005150 08               [12] 6696 	inc	r0
      005151 E6               [12] 6697 	mov	a,@r0
      005152 C0 E0            [24] 6698 	push	acc
      005154 08               [12] 6699 	inc	r0
      005155 E6               [12] 6700 	mov	a,@r0
      005156 C0 E0            [24] 6701 	push	acc
      005158 08               [12] 6702 	inc	r0
      005159 E6               [12] 6703 	mov	a,@r0
      00515A C0 E0            [24] 6704 	push	acc
      00515C 8D 82            [24] 6705 	mov	dpl,r5
      00515E 8E 83            [24] 6706 	mov	dph,r6
      005160 8F F0            [24] 6707 	mov	b,r7
      005162 12 26 BA         [24] 6708 	lcall	_stack_push
      005165 E5 81            [12] 6709 	mov	a,sp
      005167 24 FC            [12] 6710 	add	a,#0xfc
      005169 F5 81            [12] 6711 	mov	sp,a
                                   6712 ;	calc.c:299: printstr("\r\nstack underflow\r\n");
      00516B 7D 4D            [12] 6713 	mov	r5,#___str_10
      00516D 7C 8A            [12] 6714 	mov	r4,#(___str_10 >> 8)
      00516F 7B 80            [12] 6715 	mov	r3,#0x80
                                   6716 ;	calc.c:51: return;
      005171                       6717 00477$:
                                   6718 ;	calc.c:49: for (; *s; s++) putchar(*s);
      005171 8D 82            [24] 6719 	mov	dpl,r5
      005173 8C 83            [24] 6720 	mov	dph,r4
      005175 8B F0            [24] 6721 	mov	b,r3
      005177 12 71 7E         [24] 6722 	lcall	__gptrget
      00517A FF               [12] 6723 	mov	r7,a
      00517B 70 03            [24] 6724 	jnz	01381$
      00517D 02 57 B4         [24] 6725 	ljmp	00249$
      005180                       6726 01381$:
      005180 7E 00            [12] 6727 	mov	r6,#0x00
      005182 8F 82            [24] 6728 	mov	dpl,r7
      005184 8E 83            [24] 6729 	mov	dph,r6
      005186 12 2C 1F         [24] 6730 	lcall	_putchar
      005189 0D               [12] 6731 	inc	r5
                                   6732 ;	calc.c:299: printstr("\r\nstack underflow\r\n");
      00518A BD 00 E4         [24] 6733 	cjne	r5,#0x00,00477$
      00518D 0C               [12] 6734 	inc	r4
      00518E 80 E1            [24] 6735 	sjmp	00477$
      005190                       6736 00218$:
                                   6737 ;	calc.c:301: d1 ^= d0;
      005190 E5 08            [12] 6738 	mov	a,_bp
      005192 24 19            [12] 6739 	add	a,#0x19
      005194 F8               [12] 6740 	mov	r0,a
      005195 E5 08            [12] 6741 	mov	a,_bp
      005197 24 15            [12] 6742 	add	a,#0x15
      005199 F9               [12] 6743 	mov	r1,a
      00519A E7               [12] 6744 	mov	a,@r1
      00519B 66               [12] 6745 	xrl	a,@r0
      00519C F6               [12] 6746 	mov	@r0,a
      00519D 09               [12] 6747 	inc	r1
      00519E E7               [12] 6748 	mov	a,@r1
      00519F 08               [12] 6749 	inc	r0
      0051A0 66               [12] 6750 	xrl	a,@r0
      0051A1 F6               [12] 6751 	mov	@r0,a
      0051A2 09               [12] 6752 	inc	r1
      0051A3 E7               [12] 6753 	mov	a,@r1
      0051A4 08               [12] 6754 	inc	r0
      0051A5 66               [12] 6755 	xrl	a,@r0
      0051A6 F6               [12] 6756 	mov	@r0,a
      0051A7 09               [12] 6757 	inc	r1
      0051A8 E7               [12] 6758 	mov	a,@r1
      0051A9 08               [12] 6759 	inc	r0
      0051AA 66               [12] 6760 	xrl	a,@r0
      0051AB F6               [12] 6761 	mov	@r0,a
                                   6762 ;	calc.c:302: (void)stack_push(ctx->ps, d1);
      0051AC 8A 82            [24] 6763 	mov	dpl,r2
      0051AE 8B 83            [24] 6764 	mov	dph,r3
      0051B0 8C F0            [24] 6765 	mov	b,r4
      0051B2 12 71 7E         [24] 6766 	lcall	__gptrget
      0051B5 FA               [12] 6767 	mov	r2,a
      0051B6 A3               [24] 6768 	inc	dptr
      0051B7 12 71 7E         [24] 6769 	lcall	__gptrget
      0051BA FB               [12] 6770 	mov	r3,a
      0051BB A3               [24] 6771 	inc	dptr
      0051BC 12 71 7E         [24] 6772 	lcall	__gptrget
      0051BF FC               [12] 6773 	mov	r4,a
      0051C0 E5 08            [12] 6774 	mov	a,_bp
      0051C2 24 19            [12] 6775 	add	a,#0x19
      0051C4 F8               [12] 6776 	mov	r0,a
      0051C5 E6               [12] 6777 	mov	a,@r0
      0051C6 C0 E0            [24] 6778 	push	acc
      0051C8 08               [12] 6779 	inc	r0
      0051C9 E6               [12] 6780 	mov	a,@r0
      0051CA C0 E0            [24] 6781 	push	acc
      0051CC 08               [12] 6782 	inc	r0
      0051CD E6               [12] 6783 	mov	a,@r0
      0051CE C0 E0            [24] 6784 	push	acc
      0051D0 08               [12] 6785 	inc	r0
      0051D1 E6               [12] 6786 	mov	a,@r0
      0051D2 C0 E0            [24] 6787 	push	acc
      0051D4 8A 82            [24] 6788 	mov	dpl,r2
      0051D6 8B 83            [24] 6789 	mov	dph,r3
      0051D8 8C F0            [24] 6790 	mov	b,r4
      0051DA 12 26 BA         [24] 6791 	lcall	_stack_push
      0051DD E5 81            [12] 6792 	mov	a,sp
      0051DF 24 FC            [12] 6793 	add	a,#0xfc
      0051E1 F5 81            [12] 6794 	mov	sp,a
                                   6795 ;	calc.c:304: break;
      0051E3 02 57 B4         [24] 6796 	ljmp	00249$
                                   6797 ;	calc.c:305: case '>':
      0051E6                       6798 00223$:
                                   6799 ;	calc.c:306: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0051E6 E5 08            [12] 6800 	mov	a,_bp
      0051E8 24 15            [12] 6801 	add	a,#0x15
      0051EA FC               [12] 6802 	mov	r4,a
      0051EB 7B 00            [12] 6803 	mov	r3,#0x00
      0051ED 7A 40            [12] 6804 	mov	r2,#0x40
      0051EF E5 08            [12] 6805 	mov	a,_bp
      0051F1 24 12            [12] 6806 	add	a,#0x12
      0051F3 F8               [12] 6807 	mov	r0,a
      0051F4 E5 08            [12] 6808 	mov	a,_bp
      0051F6 24 0B            [12] 6809 	add	a,#0x0b
      0051F8 F9               [12] 6810 	mov	r1,a
      0051F9 74 13            [12] 6811 	mov	a,#0x13
      0051FB 26               [12] 6812 	add	a,@r0
      0051FC F7               [12] 6813 	mov	@r1,a
      0051FD 74 40            [12] 6814 	mov	a,#0x40
      0051FF 08               [12] 6815 	inc	r0
      005200 36               [12] 6816 	addc	a,@r0
      005201 09               [12] 6817 	inc	r1
      005202 F7               [12] 6818 	mov	@r1,a
      005203 08               [12] 6819 	inc	r0
      005204 09               [12] 6820 	inc	r1
      005205 E6               [12] 6821 	mov	a,@r0
      005206 F7               [12] 6822 	mov	@r1,a
      005207 E5 08            [12] 6823 	mov	a,_bp
      005209 24 0B            [12] 6824 	add	a,#0x0b
      00520B F8               [12] 6825 	mov	r0,a
      00520C 86 82            [24] 6826 	mov	dpl,@r0
      00520E 08               [12] 6827 	inc	r0
      00520F 86 83            [24] 6828 	mov	dph,@r0
      005211 08               [12] 6829 	inc	r0
      005212 86 F0            [24] 6830 	mov	b,@r0
      005214 12 71 7E         [24] 6831 	lcall	__gptrget
      005217 FD               [12] 6832 	mov	r5,a
      005218 A3               [24] 6833 	inc	dptr
      005219 12 71 7E         [24] 6834 	lcall	__gptrget
      00521C FE               [12] 6835 	mov	r6,a
      00521D A3               [24] 6836 	inc	dptr
      00521E 12 71 7E         [24] 6837 	lcall	__gptrget
      005221 FF               [12] 6838 	mov	r7,a
      005222 C0 04            [24] 6839 	push	ar4
      005224 C0 03            [24] 6840 	push	ar3
      005226 C0 02            [24] 6841 	push	ar2
      005228 8D 82            [24] 6842 	mov	dpl,r5
      00522A 8E 83            [24] 6843 	mov	dph,r6
      00522C 8F F0            [24] 6844 	mov	b,r7
      00522E 12 27 B4         [24] 6845 	lcall	_stack_pop
      005231 AE 82            [24] 6846 	mov	r6,dpl
      005233 AF 83            [24] 6847 	mov	r7,dph
      005235 15 81            [12] 6848 	dec	sp
      005237 15 81            [12] 6849 	dec	sp
      005239 15 81            [12] 6850 	dec	sp
      00523B EE               [12] 6851 	mov	a,r6
      00523C 4F               [12] 6852 	orl	a,r7
      00523D 70 25            [24] 6853 	jnz	00228$
      00523F 7D 4D            [12] 6854 	mov	r5,#___str_10
      005241 7C 8A            [12] 6855 	mov	r4,#(___str_10 >> 8)
      005243 7B 80            [12] 6856 	mov	r3,#0x80
                                   6857 ;	calc.c:51: return;
      005245                       6858 00480$:
                                   6859 ;	calc.c:49: for (; *s; s++) putchar(*s);
      005245 8D 82            [24] 6860 	mov	dpl,r5
      005247 8C 83            [24] 6861 	mov	dph,r4
      005249 8B F0            [24] 6862 	mov	b,r3
      00524B 12 71 7E         [24] 6863 	lcall	__gptrget
      00524E FF               [12] 6864 	mov	r7,a
      00524F 70 03            [24] 6865 	jnz	01384$
      005251 02 57 B4         [24] 6866 	ljmp	00249$
      005254                       6867 01384$:
      005254 7E 00            [12] 6868 	mov	r6,#0x00
      005256 8F 82            [24] 6869 	mov	dpl,r7
      005258 8E 83            [24] 6870 	mov	dph,r6
      00525A 12 2C 1F         [24] 6871 	lcall	_putchar
      00525D 0D               [12] 6872 	inc	r5
                                   6873 ;	calc.c:306: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      00525E BD 00 E4         [24] 6874 	cjne	r5,#0x00,00480$
      005261 0C               [12] 6875 	inc	r4
      005262 80 E1            [24] 6876 	sjmp	00480$
      005264                       6877 00228$:
                                   6878 ;	calc.c:307: else if (!stack_pop(ctx->ps, &d1)) {
      005264 E5 08            [12] 6879 	mov	a,_bp
      005266 24 19            [12] 6880 	add	a,#0x19
      005268 FC               [12] 6881 	mov	r4,a
      005269 7B 00            [12] 6882 	mov	r3,#0x00
      00526B 7A 40            [12] 6883 	mov	r2,#0x40
      00526D E5 08            [12] 6884 	mov	a,_bp
      00526F 24 0B            [12] 6885 	add	a,#0x0b
      005271 F8               [12] 6886 	mov	r0,a
      005272 86 82            [24] 6887 	mov	dpl,@r0
      005274 08               [12] 6888 	inc	r0
      005275 86 83            [24] 6889 	mov	dph,@r0
      005277 08               [12] 6890 	inc	r0
      005278 86 F0            [24] 6891 	mov	b,@r0
      00527A 12 71 7E         [24] 6892 	lcall	__gptrget
      00527D FD               [12] 6893 	mov	r5,a
      00527E A3               [24] 6894 	inc	dptr
      00527F 12 71 7E         [24] 6895 	lcall	__gptrget
      005282 FE               [12] 6896 	mov	r6,a
      005283 A3               [24] 6897 	inc	dptr
      005284 12 71 7E         [24] 6898 	lcall	__gptrget
      005287 FF               [12] 6899 	mov	r7,a
      005288 C0 04            [24] 6900 	push	ar4
      00528A C0 03            [24] 6901 	push	ar3
      00528C C0 02            [24] 6902 	push	ar2
      00528E 8D 82            [24] 6903 	mov	dpl,r5
      005290 8E 83            [24] 6904 	mov	dph,r6
      005292 8F F0            [24] 6905 	mov	b,r7
      005294 12 27 B4         [24] 6906 	lcall	_stack_pop
      005297 AE 82            [24] 6907 	mov	r6,dpl
      005299 AF 83            [24] 6908 	mov	r7,dph
      00529B 15 81            [12] 6909 	dec	sp
      00529D 15 81            [12] 6910 	dec	sp
      00529F 15 81            [12] 6911 	dec	sp
      0052A1 EE               [12] 6912 	mov	a,r6
      0052A2 4F               [12] 6913 	orl	a,r7
      0052A3 70 63            [24] 6914 	jnz	00225$
                                   6915 ;	calc.c:308: (void)stack_push(ctx->ps, d0);
      0052A5 E5 08            [12] 6916 	mov	a,_bp
      0052A7 24 0B            [12] 6917 	add	a,#0x0b
      0052A9 F8               [12] 6918 	mov	r0,a
      0052AA 86 82            [24] 6919 	mov	dpl,@r0
      0052AC 08               [12] 6920 	inc	r0
      0052AD 86 83            [24] 6921 	mov	dph,@r0
      0052AF 08               [12] 6922 	inc	r0
      0052B0 86 F0            [24] 6923 	mov	b,@r0
      0052B2 12 71 7E         [24] 6924 	lcall	__gptrget
      0052B5 FD               [12] 6925 	mov	r5,a
      0052B6 A3               [24] 6926 	inc	dptr
      0052B7 12 71 7E         [24] 6927 	lcall	__gptrget
      0052BA FE               [12] 6928 	mov	r6,a
      0052BB A3               [24] 6929 	inc	dptr
      0052BC 12 71 7E         [24] 6930 	lcall	__gptrget
      0052BF FF               [12] 6931 	mov	r7,a
      0052C0 E5 08            [12] 6932 	mov	a,_bp
      0052C2 24 15            [12] 6933 	add	a,#0x15
      0052C4 F8               [12] 6934 	mov	r0,a
      0052C5 E6               [12] 6935 	mov	a,@r0
      0052C6 C0 E0            [24] 6936 	push	acc
      0052C8 08               [12] 6937 	inc	r0
      0052C9 E6               [12] 6938 	mov	a,@r0
      0052CA C0 E0            [24] 6939 	push	acc
      0052CC 08               [12] 6940 	inc	r0
      0052CD E6               [12] 6941 	mov	a,@r0
      0052CE C0 E0            [24] 6942 	push	acc
      0052D0 08               [12] 6943 	inc	r0
      0052D1 E6               [12] 6944 	mov	a,@r0
      0052D2 C0 E0            [24] 6945 	push	acc
      0052D4 8D 82            [24] 6946 	mov	dpl,r5
      0052D6 8E 83            [24] 6947 	mov	dph,r6
      0052D8 8F F0            [24] 6948 	mov	b,r7
      0052DA 12 26 BA         [24] 6949 	lcall	_stack_push
      0052DD E5 81            [12] 6950 	mov	a,sp
      0052DF 24 FC            [12] 6951 	add	a,#0xfc
      0052E1 F5 81            [12] 6952 	mov	sp,a
                                   6953 ;	calc.c:309: printstr("\r\nstack underflow\r\n");
      0052E3 7D 4D            [12] 6954 	mov	r5,#___str_10
      0052E5 7C 8A            [12] 6955 	mov	r4,#(___str_10 >> 8)
      0052E7 7B 80            [12] 6956 	mov	r3,#0x80
                                   6957 ;	calc.c:51: return;
      0052E9                       6958 00483$:
                                   6959 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0052E9 8D 82            [24] 6960 	mov	dpl,r5
      0052EB 8C 83            [24] 6961 	mov	dph,r4
      0052ED 8B F0            [24] 6962 	mov	b,r3
      0052EF 12 71 7E         [24] 6963 	lcall	__gptrget
      0052F2 FF               [12] 6964 	mov	r7,a
      0052F3 70 03            [24] 6965 	jnz	01387$
      0052F5 02 57 B4         [24] 6966 	ljmp	00249$
      0052F8                       6967 01387$:
      0052F8 7E 00            [12] 6968 	mov	r6,#0x00
      0052FA 8F 82            [24] 6969 	mov	dpl,r7
      0052FC 8E 83            [24] 6970 	mov	dph,r6
      0052FE 12 2C 1F         [24] 6971 	lcall	_putchar
      005301 0D               [12] 6972 	inc	r5
                                   6973 ;	calc.c:309: printstr("\r\nstack underflow\r\n");
      005302 BD 00 E4         [24] 6974 	cjne	r5,#0x00,00483$
      005305 0C               [12] 6975 	inc	r4
      005306 80 E1            [24] 6976 	sjmp	00483$
      005308                       6977 00225$:
                                   6978 ;	calc.c:311: d1 = (unsigned long)d1 >> d0;
      005308 E5 08            [12] 6979 	mov	a,_bp
      00530A 24 19            [12] 6980 	add	a,#0x19
      00530C F8               [12] 6981 	mov	r0,a
      00530D 86 04            [24] 6982 	mov	ar4,@r0
      00530F 08               [12] 6983 	inc	r0
      005310 86 05            [24] 6984 	mov	ar5,@r0
      005312 08               [12] 6985 	inc	r0
      005313 86 06            [24] 6986 	mov	ar6,@r0
      005315 08               [12] 6987 	inc	r0
      005316 86 07            [24] 6988 	mov	ar7,@r0
      005318 E5 08            [12] 6989 	mov	a,_bp
      00531A 24 15            [12] 6990 	add	a,#0x15
      00531C F8               [12] 6991 	mov	r0,a
      00531D 86 F0            [24] 6992 	mov	b,@r0
      00531F 05 F0            [12] 6993 	inc	b
      005321 80 0D            [24] 6994 	sjmp	01390$
      005323                       6995 01389$:
      005323 C3               [12] 6996 	clr	c
      005324 EF               [12] 6997 	mov	a,r7
      005325 13               [12] 6998 	rrc	a
      005326 FF               [12] 6999 	mov	r7,a
      005327 EE               [12] 7000 	mov	a,r6
      005328 13               [12] 7001 	rrc	a
      005329 FE               [12] 7002 	mov	r6,a
      00532A ED               [12] 7003 	mov	a,r5
      00532B 13               [12] 7004 	rrc	a
      00532C FD               [12] 7005 	mov	r5,a
      00532D EC               [12] 7006 	mov	a,r4
      00532E 13               [12] 7007 	rrc	a
      00532F FC               [12] 7008 	mov	r4,a
      005330                       7009 01390$:
      005330 D5 F0 F0         [24] 7010 	djnz	b,01389$
      005333 E5 08            [12] 7011 	mov	a,_bp
      005335 24 19            [12] 7012 	add	a,#0x19
      005337 F8               [12] 7013 	mov	r0,a
      005338 A6 04            [24] 7014 	mov	@r0,ar4
      00533A 08               [12] 7015 	inc	r0
      00533B A6 05            [24] 7016 	mov	@r0,ar5
      00533D 08               [12] 7017 	inc	r0
      00533E A6 06            [24] 7018 	mov	@r0,ar6
      005340 08               [12] 7019 	inc	r0
      005341 A6 07            [24] 7020 	mov	@r0,ar7
                                   7021 ;	calc.c:312: (void)stack_push(ctx->ps, d1);
      005343 E5 08            [12] 7022 	mov	a,_bp
      005345 24 0B            [12] 7023 	add	a,#0x0b
      005347 F8               [12] 7024 	mov	r0,a
      005348 86 82            [24] 7025 	mov	dpl,@r0
      00534A 08               [12] 7026 	inc	r0
      00534B 86 83            [24] 7027 	mov	dph,@r0
      00534D 08               [12] 7028 	inc	r0
      00534E 86 F0            [24] 7029 	mov	b,@r0
      005350 12 71 7E         [24] 7030 	lcall	__gptrget
      005353 FD               [12] 7031 	mov	r5,a
      005354 A3               [24] 7032 	inc	dptr
      005355 12 71 7E         [24] 7033 	lcall	__gptrget
      005358 FE               [12] 7034 	mov	r6,a
      005359 A3               [24] 7035 	inc	dptr
      00535A 12 71 7E         [24] 7036 	lcall	__gptrget
      00535D FF               [12] 7037 	mov	r7,a
      00535E E5 08            [12] 7038 	mov	a,_bp
      005360 24 19            [12] 7039 	add	a,#0x19
      005362 F8               [12] 7040 	mov	r0,a
      005363 E6               [12] 7041 	mov	a,@r0
      005364 C0 E0            [24] 7042 	push	acc
      005366 08               [12] 7043 	inc	r0
      005367 E6               [12] 7044 	mov	a,@r0
      005368 C0 E0            [24] 7045 	push	acc
      00536A 08               [12] 7046 	inc	r0
      00536B E6               [12] 7047 	mov	a,@r0
      00536C C0 E0            [24] 7048 	push	acc
      00536E 08               [12] 7049 	inc	r0
      00536F E6               [12] 7050 	mov	a,@r0
      005370 C0 E0            [24] 7051 	push	acc
      005372 8D 82            [24] 7052 	mov	dpl,r5
      005374 8E 83            [24] 7053 	mov	dph,r6
      005376 8F F0            [24] 7054 	mov	b,r7
      005378 12 26 BA         [24] 7055 	lcall	_stack_push
      00537B E5 81            [12] 7056 	mov	a,sp
      00537D 24 FC            [12] 7057 	add	a,#0xfc
      00537F F5 81            [12] 7058 	mov	sp,a
                                   7059 ;	calc.c:314: break;
      005381 02 57 B4         [24] 7060 	ljmp	00249$
                                   7061 ;	calc.c:315: case ']':
      005384                       7062 00230$:
                                   7063 ;	calc.c:316: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      005384 E5 08            [12] 7064 	mov	a,_bp
      005386 24 15            [12] 7065 	add	a,#0x15
      005388 FF               [12] 7066 	mov	r7,a
      005389 E5 08            [12] 7067 	mov	a,_bp
      00538B 24 0E            [12] 7068 	add	a,#0x0e
      00538D F8               [12] 7069 	mov	r0,a
      00538E A6 07            [24] 7070 	mov	@r0,ar7
      005390 08               [12] 7071 	inc	r0
      005391 76 00            [12] 7072 	mov	@r0,#0x00
      005393 08               [12] 7073 	inc	r0
      005394 76 40            [12] 7074 	mov	@r0,#0x40
      005396 E5 08            [12] 7075 	mov	a,_bp
      005398 24 12            [12] 7076 	add	a,#0x12
      00539A F8               [12] 7077 	mov	r0,a
      00539B 74 13            [12] 7078 	mov	a,#0x13
      00539D 26               [12] 7079 	add	a,@r0
      00539E FA               [12] 7080 	mov	r2,a
      00539F 74 40            [12] 7081 	mov	a,#0x40
      0053A1 08               [12] 7082 	inc	r0
      0053A2 36               [12] 7083 	addc	a,@r0
      0053A3 FB               [12] 7084 	mov	r3,a
      0053A4 08               [12] 7085 	inc	r0
      0053A5 86 04            [24] 7086 	mov	ar4,@r0
      0053A7 8A 82            [24] 7087 	mov	dpl,r2
      0053A9 8B 83            [24] 7088 	mov	dph,r3
      0053AB 8C F0            [24] 7089 	mov	b,r4
      0053AD 12 71 7E         [24] 7090 	lcall	__gptrget
      0053B0 FD               [12] 7091 	mov	r5,a
      0053B1 A3               [24] 7092 	inc	dptr
      0053B2 12 71 7E         [24] 7093 	lcall	__gptrget
      0053B5 FE               [12] 7094 	mov	r6,a
      0053B6 A3               [24] 7095 	inc	dptr
      0053B7 12 71 7E         [24] 7096 	lcall	__gptrget
      0053BA FF               [12] 7097 	mov	r7,a
      0053BB C0 04            [24] 7098 	push	ar4
      0053BD C0 03            [24] 7099 	push	ar3
      0053BF C0 02            [24] 7100 	push	ar2
      0053C1 E5 08            [12] 7101 	mov	a,_bp
      0053C3 24 0E            [12] 7102 	add	a,#0x0e
      0053C5 F8               [12] 7103 	mov	r0,a
      0053C6 E6               [12] 7104 	mov	a,@r0
      0053C7 C0 E0            [24] 7105 	push	acc
      0053C9 08               [12] 7106 	inc	r0
      0053CA E6               [12] 7107 	mov	a,@r0
      0053CB C0 E0            [24] 7108 	push	acc
      0053CD 08               [12] 7109 	inc	r0
      0053CE E6               [12] 7110 	mov	a,@r0
      0053CF C0 E0            [24] 7111 	push	acc
      0053D1 8D 82            [24] 7112 	mov	dpl,r5
      0053D3 8E 83            [24] 7113 	mov	dph,r6
      0053D5 8F F0            [24] 7114 	mov	b,r7
      0053D7 12 27 B4         [24] 7115 	lcall	_stack_pop
      0053DA AE 82            [24] 7116 	mov	r6,dpl
      0053DC AF 83            [24] 7117 	mov	r7,dph
      0053DE 15 81            [12] 7118 	dec	sp
      0053E0 15 81            [12] 7119 	dec	sp
      0053E2 15 81            [12] 7120 	dec	sp
      0053E4 D0 02            [24] 7121 	pop	ar2
      0053E6 D0 03            [24] 7122 	pop	ar3
      0053E8 D0 04            [24] 7123 	pop	ar4
      0053EA EE               [12] 7124 	mov	a,r6
      0053EB 4F               [12] 7125 	orl	a,r7
      0053EC 70 25            [24] 7126 	jnz	00235$
      0053EE 7D 4D            [12] 7127 	mov	r5,#___str_10
      0053F0 7C 8A            [12] 7128 	mov	r4,#(___str_10 >> 8)
      0053F2 7B 80            [12] 7129 	mov	r3,#0x80
                                   7130 ;	calc.c:51: return;
      0053F4                       7131 00486$:
                                   7132 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0053F4 8D 82            [24] 7133 	mov	dpl,r5
      0053F6 8C 83            [24] 7134 	mov	dph,r4
      0053F8 8B F0            [24] 7135 	mov	b,r3
      0053FA 12 71 7E         [24] 7136 	lcall	__gptrget
      0053FD FF               [12] 7137 	mov	r7,a
      0053FE 70 03            [24] 7138 	jnz	01392$
      005400 02 57 B4         [24] 7139 	ljmp	00249$
      005403                       7140 01392$:
      005403 7E 00            [12] 7141 	mov	r6,#0x00
      005405 8F 82            [24] 7142 	mov	dpl,r7
      005407 8E 83            [24] 7143 	mov	dph,r6
      005409 12 2C 1F         [24] 7144 	lcall	_putchar
      00540C 0D               [12] 7145 	inc	r5
                                   7146 ;	calc.c:316: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      00540D BD 00 E4         [24] 7147 	cjne	r5,#0x00,00486$
      005410 0C               [12] 7148 	inc	r4
      005411 80 E1            [24] 7149 	sjmp	00486$
      005413                       7150 00235$:
                                   7151 ;	calc.c:317: else if (!stack_pop(ctx->ps, &d1)) {
      005413 E5 08            [12] 7152 	mov	a,_bp
      005415 24 19            [12] 7153 	add	a,#0x19
      005417 FF               [12] 7154 	mov	r7,a
      005418 E5 08            [12] 7155 	mov	a,_bp
      00541A 24 0E            [12] 7156 	add	a,#0x0e
      00541C F8               [12] 7157 	mov	r0,a
      00541D A6 07            [24] 7158 	mov	@r0,ar7
      00541F 08               [12] 7159 	inc	r0
      005420 76 00            [12] 7160 	mov	@r0,#0x00
      005422 08               [12] 7161 	inc	r0
      005423 76 40            [12] 7162 	mov	@r0,#0x40
      005425 8A 82            [24] 7163 	mov	dpl,r2
      005427 8B 83            [24] 7164 	mov	dph,r3
      005429 8C F0            [24] 7165 	mov	b,r4
      00542B 12 71 7E         [24] 7166 	lcall	__gptrget
      00542E FD               [12] 7167 	mov	r5,a
      00542F A3               [24] 7168 	inc	dptr
      005430 12 71 7E         [24] 7169 	lcall	__gptrget
      005433 FE               [12] 7170 	mov	r6,a
      005434 A3               [24] 7171 	inc	dptr
      005435 12 71 7E         [24] 7172 	lcall	__gptrget
      005438 FF               [12] 7173 	mov	r7,a
      005439 C0 04            [24] 7174 	push	ar4
      00543B C0 03            [24] 7175 	push	ar3
      00543D C0 02            [24] 7176 	push	ar2
      00543F E5 08            [12] 7177 	mov	a,_bp
      005441 24 0E            [12] 7178 	add	a,#0x0e
      005443 F8               [12] 7179 	mov	r0,a
      005444 E6               [12] 7180 	mov	a,@r0
      005445 C0 E0            [24] 7181 	push	acc
      005447 08               [12] 7182 	inc	r0
      005448 E6               [12] 7183 	mov	a,@r0
      005449 C0 E0            [24] 7184 	push	acc
      00544B 08               [12] 7185 	inc	r0
      00544C E6               [12] 7186 	mov	a,@r0
      00544D C0 E0            [24] 7187 	push	acc
      00544F 8D 82            [24] 7188 	mov	dpl,r5
      005451 8E 83            [24] 7189 	mov	dph,r6
      005453 8F F0            [24] 7190 	mov	b,r7
      005455 12 27 B4         [24] 7191 	lcall	_stack_pop
      005458 AE 82            [24] 7192 	mov	r6,dpl
      00545A AF 83            [24] 7193 	mov	r7,dph
      00545C 15 81            [12] 7194 	dec	sp
      00545E 15 81            [12] 7195 	dec	sp
      005460 15 81            [12] 7196 	dec	sp
      005462 D0 02            [24] 7197 	pop	ar2
      005464 D0 03            [24] 7198 	pop	ar3
      005466 D0 04            [24] 7199 	pop	ar4
      005468 EE               [12] 7200 	mov	a,r6
      005469 4F               [12] 7201 	orl	a,r7
      00546A 70 5C            [24] 7202 	jnz	00232$
                                   7203 ;	calc.c:318: (void)stack_push(ctx->ps, d0);
      00546C 8A 82            [24] 7204 	mov	dpl,r2
      00546E 8B 83            [24] 7205 	mov	dph,r3
      005470 8C F0            [24] 7206 	mov	b,r4
      005472 12 71 7E         [24] 7207 	lcall	__gptrget
      005475 FD               [12] 7208 	mov	r5,a
      005476 A3               [24] 7209 	inc	dptr
      005477 12 71 7E         [24] 7210 	lcall	__gptrget
      00547A FE               [12] 7211 	mov	r6,a
      00547B A3               [24] 7212 	inc	dptr
      00547C 12 71 7E         [24] 7213 	lcall	__gptrget
      00547F FF               [12] 7214 	mov	r7,a
      005480 E5 08            [12] 7215 	mov	a,_bp
      005482 24 15            [12] 7216 	add	a,#0x15
      005484 F8               [12] 7217 	mov	r0,a
      005485 E6               [12] 7218 	mov	a,@r0
      005486 C0 E0            [24] 7219 	push	acc
      005488 08               [12] 7220 	inc	r0
      005489 E6               [12] 7221 	mov	a,@r0
      00548A C0 E0            [24] 7222 	push	acc
      00548C 08               [12] 7223 	inc	r0
      00548D E6               [12] 7224 	mov	a,@r0
      00548E C0 E0            [24] 7225 	push	acc
      005490 08               [12] 7226 	inc	r0
      005491 E6               [12] 7227 	mov	a,@r0
      005492 C0 E0            [24] 7228 	push	acc
      005494 8D 82            [24] 7229 	mov	dpl,r5
      005496 8E 83            [24] 7230 	mov	dph,r6
      005498 8F F0            [24] 7231 	mov	b,r7
      00549A 12 26 BA         [24] 7232 	lcall	_stack_push
      00549D E5 81            [12] 7233 	mov	a,sp
      00549F 24 FC            [12] 7234 	add	a,#0xfc
      0054A1 F5 81            [12] 7235 	mov	sp,a
                                   7236 ;	calc.c:319: printstr("\r\nstack underflow\r\n");
      0054A3 7D 4D            [12] 7237 	mov	r5,#___str_10
      0054A5 7C 8A            [12] 7238 	mov	r4,#(___str_10 >> 8)
      0054A7 7B 80            [12] 7239 	mov	r3,#0x80
                                   7240 ;	calc.c:51: return;
      0054A9                       7241 00489$:
                                   7242 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0054A9 8D 82            [24] 7243 	mov	dpl,r5
      0054AB 8C 83            [24] 7244 	mov	dph,r4
      0054AD 8B F0            [24] 7245 	mov	b,r3
      0054AF 12 71 7E         [24] 7246 	lcall	__gptrget
      0054B2 FF               [12] 7247 	mov	r7,a
      0054B3 70 03            [24] 7248 	jnz	01395$
      0054B5 02 57 B4         [24] 7249 	ljmp	00249$
      0054B8                       7250 01395$:
      0054B8 7E 00            [12] 7251 	mov	r6,#0x00
      0054BA 8F 82            [24] 7252 	mov	dpl,r7
      0054BC 8E 83            [24] 7253 	mov	dph,r6
      0054BE 12 2C 1F         [24] 7254 	lcall	_putchar
      0054C1 0D               [12] 7255 	inc	r5
                                   7256 ;	calc.c:319: printstr("\r\nstack underflow\r\n");
      0054C2 BD 00 E4         [24] 7257 	cjne	r5,#0x00,00489$
      0054C5 0C               [12] 7258 	inc	r4
      0054C6 80 E1            [24] 7259 	sjmp	00489$
      0054C8                       7260 00232$:
                                   7261 ;	calc.c:321: d1 >>= d0;
      0054C8 E5 08            [12] 7262 	mov	a,_bp
      0054CA 24 15            [12] 7263 	add	a,#0x15
      0054CC F8               [12] 7264 	mov	r0,a
      0054CD 86 F0            [24] 7265 	mov	b,@r0
      0054CF 05 F0            [12] 7266 	inc	b
      0054D1 E5 08            [12] 7267 	mov	a,_bp
      0054D3 24 19            [12] 7268 	add	a,#0x19
      0054D5 F8               [12] 7269 	mov	r0,a
      0054D6 08               [12] 7270 	inc	r0
      0054D7 08               [12] 7271 	inc	r0
      0054D8 08               [12] 7272 	inc	r0
      0054D9 E6               [12] 7273 	mov	a,@r0
      0054DA 33               [12] 7274 	rlc	a
      0054DB 92 D2            [24] 7275 	mov	ov,c
      0054DD 18               [12] 7276 	dec	r0
      0054DE 18               [12] 7277 	dec	r0
      0054DF 18               [12] 7278 	dec	r0
      0054E0 80 14            [24] 7279 	sjmp	01398$
      0054E2                       7280 01397$:
      0054E2 A2 D2            [12] 7281 	mov	c,ov
      0054E4 08               [12] 7282 	inc	r0
      0054E5 08               [12] 7283 	inc	r0
      0054E6 08               [12] 7284 	inc	r0
      0054E7 E6               [12] 7285 	mov	a,@r0
      0054E8 13               [12] 7286 	rrc	a
      0054E9 F6               [12] 7287 	mov	@r0,a
      0054EA 18               [12] 7288 	dec	r0
      0054EB E6               [12] 7289 	mov	a,@r0
      0054EC 13               [12] 7290 	rrc	a
      0054ED F6               [12] 7291 	mov	@r0,a
      0054EE 18               [12] 7292 	dec	r0
      0054EF E6               [12] 7293 	mov	a,@r0
      0054F0 13               [12] 7294 	rrc	a
      0054F1 F6               [12] 7295 	mov	@r0,a
      0054F2 18               [12] 7296 	dec	r0
      0054F3 E6               [12] 7297 	mov	a,@r0
      0054F4 13               [12] 7298 	rrc	a
      0054F5 F6               [12] 7299 	mov	@r0,a
      0054F6                       7300 01398$:
      0054F6 D5 F0 E9         [24] 7301 	djnz	b,01397$
                                   7302 ;	calc.c:322: (void)stack_push(ctx->ps, d1);
      0054F9 8A 82            [24] 7303 	mov	dpl,r2
      0054FB 8B 83            [24] 7304 	mov	dph,r3
      0054FD 8C F0            [24] 7305 	mov	b,r4
      0054FF 12 71 7E         [24] 7306 	lcall	__gptrget
      005502 FA               [12] 7307 	mov	r2,a
      005503 A3               [24] 7308 	inc	dptr
      005504 12 71 7E         [24] 7309 	lcall	__gptrget
      005507 FB               [12] 7310 	mov	r3,a
      005508 A3               [24] 7311 	inc	dptr
      005509 12 71 7E         [24] 7312 	lcall	__gptrget
      00550C FC               [12] 7313 	mov	r4,a
      00550D E5 08            [12] 7314 	mov	a,_bp
      00550F 24 19            [12] 7315 	add	a,#0x19
      005511 F8               [12] 7316 	mov	r0,a
      005512 E6               [12] 7317 	mov	a,@r0
      005513 C0 E0            [24] 7318 	push	acc
      005515 08               [12] 7319 	inc	r0
      005516 E6               [12] 7320 	mov	a,@r0
      005517 C0 E0            [24] 7321 	push	acc
      005519 08               [12] 7322 	inc	r0
      00551A E6               [12] 7323 	mov	a,@r0
      00551B C0 E0            [24] 7324 	push	acc
      00551D 08               [12] 7325 	inc	r0
      00551E E6               [12] 7326 	mov	a,@r0
      00551F C0 E0            [24] 7327 	push	acc
      005521 8A 82            [24] 7328 	mov	dpl,r2
      005523 8B 83            [24] 7329 	mov	dph,r3
      005525 8C F0            [24] 7330 	mov	b,r4
      005527 12 26 BA         [24] 7331 	lcall	_stack_push
      00552A E5 81            [12] 7332 	mov	a,sp
      00552C 24 FC            [12] 7333 	add	a,#0xfc
      00552E F5 81            [12] 7334 	mov	sp,a
                                   7335 ;	calc.c:324: break;
      005530 02 57 B4         [24] 7336 	ljmp	00249$
                                   7337 ;	calc.c:325: case '<':
      005533                       7338 00237$:
                                   7339 ;	calc.c:326: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      005533 E5 08            [12] 7340 	mov	a,_bp
      005535 24 15            [12] 7341 	add	a,#0x15
      005537 FF               [12] 7342 	mov	r7,a
      005538 E5 08            [12] 7343 	mov	a,_bp
      00553A 24 0E            [12] 7344 	add	a,#0x0e
      00553C F8               [12] 7345 	mov	r0,a
      00553D A6 07            [24] 7346 	mov	@r0,ar7
      00553F 08               [12] 7347 	inc	r0
      005540 76 00            [12] 7348 	mov	@r0,#0x00
      005542 08               [12] 7349 	inc	r0
      005543 76 40            [12] 7350 	mov	@r0,#0x40
      005545 E5 08            [12] 7351 	mov	a,_bp
      005547 24 12            [12] 7352 	add	a,#0x12
      005549 F8               [12] 7353 	mov	r0,a
      00554A 74 13            [12] 7354 	mov	a,#0x13
      00554C 26               [12] 7355 	add	a,@r0
      00554D FA               [12] 7356 	mov	r2,a
      00554E 74 40            [12] 7357 	mov	a,#0x40
      005550 08               [12] 7358 	inc	r0
      005551 36               [12] 7359 	addc	a,@r0
      005552 FB               [12] 7360 	mov	r3,a
      005553 08               [12] 7361 	inc	r0
      005554 86 04            [24] 7362 	mov	ar4,@r0
      005556 8A 82            [24] 7363 	mov	dpl,r2
      005558 8B 83            [24] 7364 	mov	dph,r3
      00555A 8C F0            [24] 7365 	mov	b,r4
      00555C 12 71 7E         [24] 7366 	lcall	__gptrget
      00555F FD               [12] 7367 	mov	r5,a
      005560 A3               [24] 7368 	inc	dptr
      005561 12 71 7E         [24] 7369 	lcall	__gptrget
      005564 FE               [12] 7370 	mov	r6,a
      005565 A3               [24] 7371 	inc	dptr
      005566 12 71 7E         [24] 7372 	lcall	__gptrget
      005569 FF               [12] 7373 	mov	r7,a
      00556A C0 04            [24] 7374 	push	ar4
      00556C C0 03            [24] 7375 	push	ar3
      00556E C0 02            [24] 7376 	push	ar2
      005570 E5 08            [12] 7377 	mov	a,_bp
      005572 24 0E            [12] 7378 	add	a,#0x0e
      005574 F8               [12] 7379 	mov	r0,a
      005575 E6               [12] 7380 	mov	a,@r0
      005576 C0 E0            [24] 7381 	push	acc
      005578 08               [12] 7382 	inc	r0
      005579 E6               [12] 7383 	mov	a,@r0
      00557A C0 E0            [24] 7384 	push	acc
      00557C 08               [12] 7385 	inc	r0
      00557D E6               [12] 7386 	mov	a,@r0
      00557E C0 E0            [24] 7387 	push	acc
      005580 8D 82            [24] 7388 	mov	dpl,r5
      005582 8E 83            [24] 7389 	mov	dph,r6
      005584 8F F0            [24] 7390 	mov	b,r7
      005586 12 27 B4         [24] 7391 	lcall	_stack_pop
      005589 AE 82            [24] 7392 	mov	r6,dpl
      00558B AF 83            [24] 7393 	mov	r7,dph
      00558D 15 81            [12] 7394 	dec	sp
      00558F 15 81            [12] 7395 	dec	sp
      005591 15 81            [12] 7396 	dec	sp
      005593 D0 02            [24] 7397 	pop	ar2
      005595 D0 03            [24] 7398 	pop	ar3
      005597 D0 04            [24] 7399 	pop	ar4
      005599 EE               [12] 7400 	mov	a,r6
      00559A 4F               [12] 7401 	orl	a,r7
      00559B 70 25            [24] 7402 	jnz	00242$
      00559D 7D 4D            [12] 7403 	mov	r5,#___str_10
      00559F 7C 8A            [12] 7404 	mov	r4,#(___str_10 >> 8)
      0055A1 7B 80            [12] 7405 	mov	r3,#0x80
                                   7406 ;	calc.c:51: return;
      0055A3                       7407 00492$:
                                   7408 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0055A3 8D 82            [24] 7409 	mov	dpl,r5
      0055A5 8C 83            [24] 7410 	mov	dph,r4
      0055A7 8B F0            [24] 7411 	mov	b,r3
      0055A9 12 71 7E         [24] 7412 	lcall	__gptrget
      0055AC FF               [12] 7413 	mov	r7,a
      0055AD 70 03            [24] 7414 	jnz	01400$
      0055AF 02 57 B4         [24] 7415 	ljmp	00249$
      0055B2                       7416 01400$:
      0055B2 7E 00            [12] 7417 	mov	r6,#0x00
      0055B4 8F 82            [24] 7418 	mov	dpl,r7
      0055B6 8E 83            [24] 7419 	mov	dph,r6
      0055B8 12 2C 1F         [24] 7420 	lcall	_putchar
      0055BB 0D               [12] 7421 	inc	r5
                                   7422 ;	calc.c:326: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0055BC BD 00 E4         [24] 7423 	cjne	r5,#0x00,00492$
      0055BF 0C               [12] 7424 	inc	r4
      0055C0 80 E1            [24] 7425 	sjmp	00492$
      0055C2                       7426 00242$:
                                   7427 ;	calc.c:327: else if (!stack_pop(ctx->ps, &d1)) {
      0055C2 E5 08            [12] 7428 	mov	a,_bp
      0055C4 24 19            [12] 7429 	add	a,#0x19
      0055C6 FF               [12] 7430 	mov	r7,a
      0055C7 E5 08            [12] 7431 	mov	a,_bp
      0055C9 24 0E            [12] 7432 	add	a,#0x0e
      0055CB F8               [12] 7433 	mov	r0,a
      0055CC A6 07            [24] 7434 	mov	@r0,ar7
      0055CE 08               [12] 7435 	inc	r0
      0055CF 76 00            [12] 7436 	mov	@r0,#0x00
      0055D1 08               [12] 7437 	inc	r0
      0055D2 76 40            [12] 7438 	mov	@r0,#0x40
      0055D4 8A 82            [24] 7439 	mov	dpl,r2
      0055D6 8B 83            [24] 7440 	mov	dph,r3
      0055D8 8C F0            [24] 7441 	mov	b,r4
      0055DA 12 71 7E         [24] 7442 	lcall	__gptrget
      0055DD FD               [12] 7443 	mov	r5,a
      0055DE A3               [24] 7444 	inc	dptr
      0055DF 12 71 7E         [24] 7445 	lcall	__gptrget
      0055E2 FE               [12] 7446 	mov	r6,a
      0055E3 A3               [24] 7447 	inc	dptr
      0055E4 12 71 7E         [24] 7448 	lcall	__gptrget
      0055E7 FF               [12] 7449 	mov	r7,a
      0055E8 C0 04            [24] 7450 	push	ar4
      0055EA C0 03            [24] 7451 	push	ar3
      0055EC C0 02            [24] 7452 	push	ar2
      0055EE E5 08            [12] 7453 	mov	a,_bp
      0055F0 24 0E            [12] 7454 	add	a,#0x0e
      0055F2 F8               [12] 7455 	mov	r0,a
      0055F3 E6               [12] 7456 	mov	a,@r0
      0055F4 C0 E0            [24] 7457 	push	acc
      0055F6 08               [12] 7458 	inc	r0
      0055F7 E6               [12] 7459 	mov	a,@r0
      0055F8 C0 E0            [24] 7460 	push	acc
      0055FA 08               [12] 7461 	inc	r0
      0055FB E6               [12] 7462 	mov	a,@r0
      0055FC C0 E0            [24] 7463 	push	acc
      0055FE 8D 82            [24] 7464 	mov	dpl,r5
      005600 8E 83            [24] 7465 	mov	dph,r6
      005602 8F F0            [24] 7466 	mov	b,r7
      005604 12 27 B4         [24] 7467 	lcall	_stack_pop
      005607 AE 82            [24] 7468 	mov	r6,dpl
      005609 AF 83            [24] 7469 	mov	r7,dph
      00560B 15 81            [12] 7470 	dec	sp
      00560D 15 81            [12] 7471 	dec	sp
      00560F 15 81            [12] 7472 	dec	sp
      005611 D0 02            [24] 7473 	pop	ar2
      005613 D0 03            [24] 7474 	pop	ar3
      005615 D0 04            [24] 7475 	pop	ar4
      005617 EE               [12] 7476 	mov	a,r6
      005618 4F               [12] 7477 	orl	a,r7
      005619 70 5C            [24] 7478 	jnz	00239$
                                   7479 ;	calc.c:328: (void)stack_push(ctx->ps, d0);
      00561B 8A 82            [24] 7480 	mov	dpl,r2
      00561D 8B 83            [24] 7481 	mov	dph,r3
      00561F 8C F0            [24] 7482 	mov	b,r4
      005621 12 71 7E         [24] 7483 	lcall	__gptrget
      005624 FD               [12] 7484 	mov	r5,a
      005625 A3               [24] 7485 	inc	dptr
      005626 12 71 7E         [24] 7486 	lcall	__gptrget
      005629 FE               [12] 7487 	mov	r6,a
      00562A A3               [24] 7488 	inc	dptr
      00562B 12 71 7E         [24] 7489 	lcall	__gptrget
      00562E FF               [12] 7490 	mov	r7,a
      00562F E5 08            [12] 7491 	mov	a,_bp
      005631 24 15            [12] 7492 	add	a,#0x15
      005633 F8               [12] 7493 	mov	r0,a
      005634 E6               [12] 7494 	mov	a,@r0
      005635 C0 E0            [24] 7495 	push	acc
      005637 08               [12] 7496 	inc	r0
      005638 E6               [12] 7497 	mov	a,@r0
      005639 C0 E0            [24] 7498 	push	acc
      00563B 08               [12] 7499 	inc	r0
      00563C E6               [12] 7500 	mov	a,@r0
      00563D C0 E0            [24] 7501 	push	acc
      00563F 08               [12] 7502 	inc	r0
      005640 E6               [12] 7503 	mov	a,@r0
      005641 C0 E0            [24] 7504 	push	acc
      005643 8D 82            [24] 7505 	mov	dpl,r5
      005645 8E 83            [24] 7506 	mov	dph,r6
      005647 8F F0            [24] 7507 	mov	b,r7
      005649 12 26 BA         [24] 7508 	lcall	_stack_push
      00564C E5 81            [12] 7509 	mov	a,sp
      00564E 24 FC            [12] 7510 	add	a,#0xfc
      005650 F5 81            [12] 7511 	mov	sp,a
                                   7512 ;	calc.c:329: printstr("\r\nstack underflow\r\n");
      005652 7D 4D            [12] 7513 	mov	r5,#___str_10
      005654 7C 8A            [12] 7514 	mov	r4,#(___str_10 >> 8)
      005656 7B 80            [12] 7515 	mov	r3,#0x80
                                   7516 ;	calc.c:51: return;
      005658                       7517 00495$:
                                   7518 ;	calc.c:49: for (; *s; s++) putchar(*s);
      005658 8D 82            [24] 7519 	mov	dpl,r5
      00565A 8C 83            [24] 7520 	mov	dph,r4
      00565C 8B F0            [24] 7521 	mov	b,r3
      00565E 12 71 7E         [24] 7522 	lcall	__gptrget
      005661 FF               [12] 7523 	mov	r7,a
      005662 70 03            [24] 7524 	jnz	01403$
      005664 02 57 B4         [24] 7525 	ljmp	00249$
      005667                       7526 01403$:
      005667 7E 00            [12] 7527 	mov	r6,#0x00
      005669 8F 82            [24] 7528 	mov	dpl,r7
      00566B 8E 83            [24] 7529 	mov	dph,r6
      00566D 12 2C 1F         [24] 7530 	lcall	_putchar
      005670 0D               [12] 7531 	inc	r5
                                   7532 ;	calc.c:329: printstr("\r\nstack underflow\r\n");
      005671 BD 00 E4         [24] 7533 	cjne	r5,#0x00,00495$
      005674 0C               [12] 7534 	inc	r4
      005675 80 E1            [24] 7535 	sjmp	00495$
      005677                       7536 00239$:
                                   7537 ;	calc.c:331: d1 <<= d0;
      005677 E5 08            [12] 7538 	mov	a,_bp
      005679 24 15            [12] 7539 	add	a,#0x15
      00567B F8               [12] 7540 	mov	r0,a
      00567C 86 F0            [24] 7541 	mov	b,@r0
      00567E 05 F0            [12] 7542 	inc	b
      005680 E5 08            [12] 7543 	mov	a,_bp
      005682 24 19            [12] 7544 	add	a,#0x19
      005684 F8               [12] 7545 	mov	r0,a
      005685 80 12            [24] 7546 	sjmp	01406$
      005687                       7547 01405$:
      005687 E6               [12] 7548 	mov	a,@r0
      005688 26               [12] 7549 	add	a,@r0
      005689 F6               [12] 7550 	mov	@r0,a
      00568A 08               [12] 7551 	inc	r0
      00568B E6               [12] 7552 	mov	a,@r0
      00568C 33               [12] 7553 	rlc	a
      00568D F6               [12] 7554 	mov	@r0,a
      00568E 08               [12] 7555 	inc	r0
      00568F E6               [12] 7556 	mov	a,@r0
      005690 33               [12] 7557 	rlc	a
      005691 F6               [12] 7558 	mov	@r0,a
      005692 08               [12] 7559 	inc	r0
      005693 E6               [12] 7560 	mov	a,@r0
      005694 33               [12] 7561 	rlc	a
      005695 F6               [12] 7562 	mov	@r0,a
      005696 18               [12] 7563 	dec	r0
      005697 18               [12] 7564 	dec	r0
      005698 18               [12] 7565 	dec	r0
      005699                       7566 01406$:
      005699 D5 F0 EB         [24] 7567 	djnz	b,01405$
                                   7568 ;	calc.c:332: (void)stack_push(ctx->ps, d1);
      00569C 8A 82            [24] 7569 	mov	dpl,r2
      00569E 8B 83            [24] 7570 	mov	dph,r3
      0056A0 8C F0            [24] 7571 	mov	b,r4
      0056A2 12 71 7E         [24] 7572 	lcall	__gptrget
      0056A5 FA               [12] 7573 	mov	r2,a
      0056A6 A3               [24] 7574 	inc	dptr
      0056A7 12 71 7E         [24] 7575 	lcall	__gptrget
      0056AA FB               [12] 7576 	mov	r3,a
      0056AB A3               [24] 7577 	inc	dptr
      0056AC 12 71 7E         [24] 7578 	lcall	__gptrget
      0056AF FC               [12] 7579 	mov	r4,a
      0056B0 E5 08            [12] 7580 	mov	a,_bp
      0056B2 24 19            [12] 7581 	add	a,#0x19
      0056B4 F8               [12] 7582 	mov	r0,a
      0056B5 E6               [12] 7583 	mov	a,@r0
      0056B6 C0 E0            [24] 7584 	push	acc
      0056B8 08               [12] 7585 	inc	r0
      0056B9 E6               [12] 7586 	mov	a,@r0
      0056BA C0 E0            [24] 7587 	push	acc
      0056BC 08               [12] 7588 	inc	r0
      0056BD E6               [12] 7589 	mov	a,@r0
      0056BE C0 E0            [24] 7590 	push	acc
      0056C0 08               [12] 7591 	inc	r0
      0056C1 E6               [12] 7592 	mov	a,@r0
      0056C2 C0 E0            [24] 7593 	push	acc
      0056C4 8A 82            [24] 7594 	mov	dpl,r2
      0056C6 8B 83            [24] 7595 	mov	dph,r3
      0056C8 8C F0            [24] 7596 	mov	b,r4
      0056CA 12 26 BA         [24] 7597 	lcall	_stack_push
      0056CD E5 81            [12] 7598 	mov	a,sp
      0056CF 24 FC            [12] 7599 	add	a,#0xfc
      0056D1 F5 81            [12] 7600 	mov	sp,a
                                   7601 ;	calc.c:334: break;
      0056D3 02 57 B4         [24] 7602 	ljmp	00249$
                                   7603 ;	calc.c:335: case '~':
      0056D6                       7604 00244$:
                                   7605 ;	calc.c:336: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0056D6 E5 08            [12] 7606 	mov	a,_bp
      0056D8 24 15            [12] 7607 	add	a,#0x15
      0056DA FF               [12] 7608 	mov	r7,a
      0056DB E5 08            [12] 7609 	mov	a,_bp
      0056DD 24 0E            [12] 7610 	add	a,#0x0e
      0056DF F8               [12] 7611 	mov	r0,a
      0056E0 A6 07            [24] 7612 	mov	@r0,ar7
      0056E2 08               [12] 7613 	inc	r0
      0056E3 76 00            [12] 7614 	mov	@r0,#0x00
      0056E5 08               [12] 7615 	inc	r0
      0056E6 76 40            [12] 7616 	mov	@r0,#0x40
      0056E8 E5 08            [12] 7617 	mov	a,_bp
      0056EA 24 12            [12] 7618 	add	a,#0x12
      0056EC F8               [12] 7619 	mov	r0,a
      0056ED 74 13            [12] 7620 	mov	a,#0x13
      0056EF 26               [12] 7621 	add	a,@r0
      0056F0 FA               [12] 7622 	mov	r2,a
      0056F1 74 40            [12] 7623 	mov	a,#0x40
      0056F3 08               [12] 7624 	inc	r0
      0056F4 36               [12] 7625 	addc	a,@r0
      0056F5 FB               [12] 7626 	mov	r3,a
      0056F6 08               [12] 7627 	inc	r0
      0056F7 86 04            [24] 7628 	mov	ar4,@r0
      0056F9 8A 82            [24] 7629 	mov	dpl,r2
      0056FB 8B 83            [24] 7630 	mov	dph,r3
      0056FD 8C F0            [24] 7631 	mov	b,r4
      0056FF 12 71 7E         [24] 7632 	lcall	__gptrget
      005702 FD               [12] 7633 	mov	r5,a
      005703 A3               [24] 7634 	inc	dptr
      005704 12 71 7E         [24] 7635 	lcall	__gptrget
      005707 FE               [12] 7636 	mov	r6,a
      005708 A3               [24] 7637 	inc	dptr
      005709 12 71 7E         [24] 7638 	lcall	__gptrget
      00570C FF               [12] 7639 	mov	r7,a
      00570D C0 04            [24] 7640 	push	ar4
      00570F C0 03            [24] 7641 	push	ar3
      005711 C0 02            [24] 7642 	push	ar2
      005713 E5 08            [12] 7643 	mov	a,_bp
      005715 24 0E            [12] 7644 	add	a,#0x0e
      005717 F8               [12] 7645 	mov	r0,a
      005718 E6               [12] 7646 	mov	a,@r0
      005719 C0 E0            [24] 7647 	push	acc
      00571B 08               [12] 7648 	inc	r0
      00571C E6               [12] 7649 	mov	a,@r0
      00571D C0 E0            [24] 7650 	push	acc
      00571F 08               [12] 7651 	inc	r0
      005720 E6               [12] 7652 	mov	a,@r0
      005721 C0 E0            [24] 7653 	push	acc
      005723 8D 82            [24] 7654 	mov	dpl,r5
      005725 8E 83            [24] 7655 	mov	dph,r6
      005727 8F F0            [24] 7656 	mov	b,r7
      005729 12 27 B4         [24] 7657 	lcall	_stack_pop
      00572C AE 82            [24] 7658 	mov	r6,dpl
      00572E AF 83            [24] 7659 	mov	r7,dph
      005730 15 81            [12] 7660 	dec	sp
      005732 15 81            [12] 7661 	dec	sp
      005734 15 81            [12] 7662 	dec	sp
      005736 D0 02            [24] 7663 	pop	ar2
      005738 D0 03            [24] 7664 	pop	ar3
      00573A D0 04            [24] 7665 	pop	ar4
      00573C EE               [12] 7666 	mov	a,r6
      00573D 4F               [12] 7667 	orl	a,r7
      00573E 70 22            [24] 7668 	jnz	00246$
      005740 7D 4D            [12] 7669 	mov	r5,#___str_10
      005742 7C 8A            [12] 7670 	mov	r4,#(___str_10 >> 8)
      005744 7B 80            [12] 7671 	mov	r3,#0x80
                                   7672 ;	calc.c:51: return;
      005746                       7673 00498$:
                                   7674 ;	calc.c:49: for (; *s; s++) putchar(*s);
      005746 8D 82            [24] 7675 	mov	dpl,r5
      005748 8C 83            [24] 7676 	mov	dph,r4
      00574A 8B F0            [24] 7677 	mov	b,r3
      00574C 12 71 7E         [24] 7678 	lcall	__gptrget
      00574F FF               [12] 7679 	mov	r7,a
      005750 60 62            [24] 7680 	jz	00249$
      005752 7E 00            [12] 7681 	mov	r6,#0x00
      005754 8F 82            [24] 7682 	mov	dpl,r7
      005756 8E 83            [24] 7683 	mov	dph,r6
      005758 12 2C 1F         [24] 7684 	lcall	_putchar
      00575B 0D               [12] 7685 	inc	r5
                                   7686 ;	calc.c:336: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      00575C BD 00 E7         [24] 7687 	cjne	r5,#0x00,00498$
      00575F 0C               [12] 7688 	inc	r4
      005760 80 E4            [24] 7689 	sjmp	00498$
      005762                       7690 00246$:
                                   7691 ;	calc.c:338: d0 = ~d0;
      005762 E5 08            [12] 7692 	mov	a,_bp
      005764 24 15            [12] 7693 	add	a,#0x15
      005766 F8               [12] 7694 	mov	r0,a
      005767 E6               [12] 7695 	mov	a,@r0
      005768 F4               [12] 7696 	cpl	a
      005769 F6               [12] 7697 	mov	@r0,a
      00576A 08               [12] 7698 	inc	r0
      00576B E6               [12] 7699 	mov	a,@r0
      00576C F4               [12] 7700 	cpl	a
      00576D F6               [12] 7701 	mov	@r0,a
      00576E 08               [12] 7702 	inc	r0
      00576F E6               [12] 7703 	mov	a,@r0
      005770 F4               [12] 7704 	cpl	a
      005771 F6               [12] 7705 	mov	@r0,a
      005772 08               [12] 7706 	inc	r0
      005773 E6               [12] 7707 	mov	a,@r0
      005774 F4               [12] 7708 	cpl	a
      005775 F6               [12] 7709 	mov	@r0,a
                                   7710 ;	calc.c:339: (void)stack_push(ctx->ps, d0);
      005776 8A 82            [24] 7711 	mov	dpl,r2
      005778 8B 83            [24] 7712 	mov	dph,r3
      00577A 8C F0            [24] 7713 	mov	b,r4
      00577C 12 71 7E         [24] 7714 	lcall	__gptrget
      00577F FA               [12] 7715 	mov	r2,a
      005780 A3               [24] 7716 	inc	dptr
      005781 12 71 7E         [24] 7717 	lcall	__gptrget
      005784 FB               [12] 7718 	mov	r3,a
      005785 A3               [24] 7719 	inc	dptr
      005786 12 71 7E         [24] 7720 	lcall	__gptrget
      005789 FC               [12] 7721 	mov	r4,a
      00578A E5 08            [12] 7722 	mov	a,_bp
      00578C 24 15            [12] 7723 	add	a,#0x15
      00578E F8               [12] 7724 	mov	r0,a
      00578F E6               [12] 7725 	mov	a,@r0
      005790 C0 E0            [24] 7726 	push	acc
      005792 08               [12] 7727 	inc	r0
      005793 E6               [12] 7728 	mov	a,@r0
      005794 C0 E0            [24] 7729 	push	acc
      005796 08               [12] 7730 	inc	r0
      005797 E6               [12] 7731 	mov	a,@r0
      005798 C0 E0            [24] 7732 	push	acc
      00579A 08               [12] 7733 	inc	r0
      00579B E6               [12] 7734 	mov	a,@r0
      00579C C0 E0            [24] 7735 	push	acc
      00579E 8A 82            [24] 7736 	mov	dpl,r2
      0057A0 8B 83            [24] 7737 	mov	dph,r3
      0057A2 8C F0            [24] 7738 	mov	b,r4
      0057A4 12 26 BA         [24] 7739 	lcall	_stack_push
      0057A7 E5 81            [12] 7740 	mov	a,sp
      0057A9 24 FC            [12] 7741 	add	a,#0xfc
      0057AB F5 81            [12] 7742 	mov	sp,a
                                   7743 ;	calc.c:341: break;
                                   7744 ;	calc.c:342: default:
      0057AD 80 05            [24] 7745 	sjmp	00249$
      0057AF                       7746 00248$:
                                   7747 ;	calc.c:343: return UNDEF;
      0057AF 90 80 00         [24] 7748 	mov	dptr,#0x8000
                                   7749 ;	calc.c:344: }
      0057B2 80 03            [24] 7750 	sjmp	00500$
      0057B4                       7751 00249$:
                                   7752 ;	calc.c:346: return 1;
      0057B4 90 00 01         [24] 7753 	mov	dptr,#0x0001
      0057B7                       7754 00500$:
                                   7755 ;	calc.c:347: }
      0057B7 85 08 81         [24] 7756 	mov	sp,_bp
      0057BA D0 08            [24] 7757 	pop	_bp
      0057BC 22               [24] 7758 	ret
                                   7759 ;------------------------------------------------------------
                                   7760 ;Allocation info for local variables in function 'push_acc'
                                   7761 ;------------------------------------------------------------
                                   7762 ;delta                     Allocated to stack - _bp -5
                                   7763 ;_ctx                      Allocated to stack - _bp +5
                                   7764 ;ctx                       Allocated to registers r2 r3 r4 
                                   7765 ;__1310720127              Allocated to registers 
                                   7766 ;s                         Allocated to registers r5 r6 r7 
                                   7767 ;sloc0                     Allocated to stack - _bp +1
                                   7768 ;------------------------------------------------------------
                                   7769 ;	calc.c:349: static int push_acc(void *_ctx, delta_t *delta) __reentrant {
                                   7770 ;	-----------------------------------------
                                   7771 ;	 function push_acc
                                   7772 ;	-----------------------------------------
      0057BD                       7773 _push_acc:
      0057BD C0 08            [24] 7774 	push	_bp
      0057BF E5 81            [12] 7775 	mov	a,sp
      0057C1 F5 08            [12] 7776 	mov	_bp,a
      0057C3 24 07            [12] 7777 	add	a,#0x07
      0057C5 F5 81            [12] 7778 	mov	sp,a
      0057C7 C8               [12] 7779 	xch	a,r0
      0057C8 E5 08            [12] 7780 	mov	a,_bp
      0057CA 24 05            [12] 7781 	add	a,#0x05
      0057CC C8               [12] 7782 	xch	a,r0
      0057CD A6 82            [24] 7783 	mov	@r0,dpl
      0057CF 08               [12] 7784 	inc	r0
      0057D0 A6 83            [24] 7785 	mov	@r0,dph
      0057D2 08               [12] 7786 	inc	r0
      0057D3 A6 F0            [24] 7787 	mov	@r0,b
                                   7788 ;	calc.c:350: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
      0057D5 E5 08            [12] 7789 	mov	a,_bp
      0057D7 24 05            [12] 7790 	add	a,#0x05
      0057D9 F8               [12] 7791 	mov	r0,a
      0057DA 86 02            [24] 7792 	mov	ar2,@r0
      0057DC 08               [12] 7793 	inc	r0
      0057DD 86 03            [24] 7794 	mov	ar3,@r0
      0057DF 08               [12] 7795 	inc	r0
      0057E0 86 04            [24] 7796 	mov	ar4,@r0
                                   7797 ;	calc.c:354: ctx->acc_valid = 0;
      0057E2 74 06            [12] 7798 	mov	a,#0x06
      0057E4 2A               [12] 7799 	add	a,r2
      0057E5 FD               [12] 7800 	mov	r5,a
      0057E6 E4               [12] 7801 	clr	a
      0057E7 3B               [12] 7802 	addc	a,r3
      0057E8 FE               [12] 7803 	mov	r6,a
      0057E9 8C 07            [24] 7804 	mov	ar7,r4
      0057EB 8D 82            [24] 7805 	mov	dpl,r5
      0057ED 8E 83            [24] 7806 	mov	dph,r6
      0057EF 8F F0            [24] 7807 	mov	b,r7
      0057F1 E4               [12] 7808 	clr	a
      0057F2 12 6D 03         [24] 7809 	lcall	__gptrput
                                   7810 ;	calc.c:355: if (!stack_push(ctx->ps, ctx->acc)) printstr("\r\nstack overflow\r\n");
      0057F5 74 02            [12] 7811 	mov	a,#0x02
      0057F7 2A               [12] 7812 	add	a,r2
      0057F8 FF               [12] 7813 	mov	r7,a
      0057F9 E4               [12] 7814 	clr	a
      0057FA 3B               [12] 7815 	addc	a,r3
      0057FB FD               [12] 7816 	mov	r5,a
      0057FC 8C 06            [24] 7817 	mov	ar6,r4
      0057FE 8F 82            [24] 7818 	mov	dpl,r7
      005800 8D 83            [24] 7819 	mov	dph,r5
      005802 8E F0            [24] 7820 	mov	b,r6
      005804 A8 08            [24] 7821 	mov	r0,_bp
      005806 08               [12] 7822 	inc	r0
      005807 12 71 7E         [24] 7823 	lcall	__gptrget
      00580A F6               [12] 7824 	mov	@r0,a
      00580B A3               [24] 7825 	inc	dptr
      00580C 12 71 7E         [24] 7826 	lcall	__gptrget
      00580F 08               [12] 7827 	inc	r0
      005810 F6               [12] 7828 	mov	@r0,a
      005811 A3               [24] 7829 	inc	dptr
      005812 12 71 7E         [24] 7830 	lcall	__gptrget
      005815 08               [12] 7831 	inc	r0
      005816 F6               [12] 7832 	mov	@r0,a
      005817 A3               [24] 7833 	inc	dptr
      005818 12 71 7E         [24] 7834 	lcall	__gptrget
      00581B 08               [12] 7835 	inc	r0
      00581C F6               [12] 7836 	mov	@r0,a
      00581D 74 13            [12] 7837 	mov	a,#0x13
      00581F 2A               [12] 7838 	add	a,r2
      005820 FA               [12] 7839 	mov	r2,a
      005821 74 40            [12] 7840 	mov	a,#0x40
      005823 3B               [12] 7841 	addc	a,r3
      005824 FB               [12] 7842 	mov	r3,a
      005825 8C 07            [24] 7843 	mov	ar7,r4
      005827 8A 82            [24] 7844 	mov	dpl,r2
      005829 8B 83            [24] 7845 	mov	dph,r3
      00582B 8F F0            [24] 7846 	mov	b,r7
      00582D 12 71 7E         [24] 7847 	lcall	__gptrget
      005830 FA               [12] 7848 	mov	r2,a
      005831 A3               [24] 7849 	inc	dptr
      005832 12 71 7E         [24] 7850 	lcall	__gptrget
      005835 FB               [12] 7851 	mov	r3,a
      005836 A3               [24] 7852 	inc	dptr
      005837 12 71 7E         [24] 7853 	lcall	__gptrget
      00583A FF               [12] 7854 	mov	r7,a
      00583B A8 08            [24] 7855 	mov	r0,_bp
      00583D 08               [12] 7856 	inc	r0
      00583E E6               [12] 7857 	mov	a,@r0
      00583F C0 E0            [24] 7858 	push	acc
      005841 08               [12] 7859 	inc	r0
      005842 E6               [12] 7860 	mov	a,@r0
      005843 C0 E0            [24] 7861 	push	acc
      005845 08               [12] 7862 	inc	r0
      005846 E6               [12] 7863 	mov	a,@r0
      005847 C0 E0            [24] 7864 	push	acc
      005849 08               [12] 7865 	inc	r0
      00584A E6               [12] 7866 	mov	a,@r0
      00584B C0 E0            [24] 7867 	push	acc
      00584D 8A 82            [24] 7868 	mov	dpl,r2
      00584F 8B 83            [24] 7869 	mov	dph,r3
      005851 8F F0            [24] 7870 	mov	b,r7
      005853 12 26 BA         [24] 7871 	lcall	_stack_push
      005856 AE 82            [24] 7872 	mov	r6,dpl
      005858 AF 83            [24] 7873 	mov	r7,dph
      00585A E5 81            [12] 7874 	mov	a,sp
      00585C 24 FC            [12] 7875 	add	a,#0xfc
      00585E F5 81            [12] 7876 	mov	sp,a
      005860 EE               [12] 7877 	mov	a,r6
      005861 4F               [12] 7878 	orl	a,r7
      005862 70 22            [24] 7879 	jnz	00102$
      005864 7D 9C            [12] 7880 	mov	r5,#___str_13
      005866 7E 8A            [12] 7881 	mov	r6,#(___str_13 >> 8)
      005868 7F 80            [12] 7882 	mov	r7,#0x80
                                   7883 ;	calc.c:51: return;
      00586A                       7884 00109$:
                                   7885 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00586A 8D 82            [24] 7886 	mov	dpl,r5
      00586C 8E 83            [24] 7887 	mov	dph,r6
      00586E 8F F0            [24] 7888 	mov	b,r7
      005870 12 71 7E         [24] 7889 	lcall	__gptrget
      005873 FC               [12] 7890 	mov	r4,a
      005874 60 10            [24] 7891 	jz	00102$
      005876 7B 00            [12] 7892 	mov	r3,#0x00
      005878 8C 82            [24] 7893 	mov	dpl,r4
      00587A 8B 83            [24] 7894 	mov	dph,r3
      00587C 12 2C 1F         [24] 7895 	lcall	_putchar
      00587F 0D               [12] 7896 	inc	r5
                                   7897 ;	calc.c:355: if (!stack_push(ctx->ps, ctx->acc)) printstr("\r\nstack overflow\r\n");
      005880 BD 00 E7         [24] 7898 	cjne	r5,#0x00,00109$
      005883 0E               [12] 7899 	inc	r6
      005884 80 E4            [24] 7900 	sjmp	00109$
      005886                       7901 00102$:
                                   7902 ;	calc.c:357: if (delta->event == EVENT_OP) return operator(_ctx, delta);
      005886 E5 08            [12] 7903 	mov	a,_bp
      005888 24 FB            [12] 7904 	add	a,#0xfb
      00588A F8               [12] 7905 	mov	r0,a
      00588B 86 05            [24] 7906 	mov	ar5,@r0
      00588D 08               [12] 7907 	inc	r0
      00588E 86 06            [24] 7908 	mov	ar6,@r0
      005890 08               [12] 7909 	inc	r0
      005891 86 07            [24] 7910 	mov	ar7,@r0
      005893 74 02            [12] 7911 	mov	a,#0x02
      005895 2D               [12] 7912 	add	a,r5
      005896 FA               [12] 7913 	mov	r2,a
      005897 E4               [12] 7914 	clr	a
      005898 3E               [12] 7915 	addc	a,r6
      005899 FB               [12] 7916 	mov	r3,a
      00589A 8F 04            [24] 7917 	mov	ar4,r7
      00589C 8A 82            [24] 7918 	mov	dpl,r2
      00589E 8B 83            [24] 7919 	mov	dph,r3
      0058A0 8C F0            [24] 7920 	mov	b,r4
      0058A2 12 71 7E         [24] 7921 	lcall	__gptrget
      0058A5 FA               [12] 7922 	mov	r2,a
      0058A6 A3               [24] 7923 	inc	dptr
      0058A7 12 71 7E         [24] 7924 	lcall	__gptrget
      0058AA FB               [12] 7925 	mov	r3,a
      0058AB BA 02 29         [24] 7926 	cjne	r2,#0x02,00104$
      0058AE BB 00 26         [24] 7927 	cjne	r3,#0x00,00104$
      0058B1 C0 05            [24] 7928 	push	ar5
      0058B3 C0 06            [24] 7929 	push	ar6
      0058B5 C0 07            [24] 7930 	push	ar7
      0058B7 E5 08            [12] 7931 	mov	a,_bp
      0058B9 24 05            [12] 7932 	add	a,#0x05
      0058BB F8               [12] 7933 	mov	r0,a
      0058BC 86 82            [24] 7934 	mov	dpl,@r0
      0058BE 08               [12] 7935 	inc	r0
      0058BF 86 83            [24] 7936 	mov	dph,@r0
      0058C1 08               [12] 7937 	inc	r0
      0058C2 86 F0            [24] 7938 	mov	b,@r0
      0058C4 12 34 C3         [24] 7939 	lcall	_operator
      0058C7 AE 82            [24] 7940 	mov	r6,dpl
      0058C9 AF 83            [24] 7941 	mov	r7,dph
      0058CB 15 81            [12] 7942 	dec	sp
      0058CD 15 81            [12] 7943 	dec	sp
      0058CF 15 81            [12] 7944 	dec	sp
      0058D1 8E 82            [24] 7945 	mov	dpl,r6
      0058D3 8F 83            [24] 7946 	mov	dph,r7
      0058D5 80 03            [24] 7947 	sjmp	00111$
      0058D7                       7948 00104$:
                                   7949 ;	calc.c:358: else return 1;
      0058D7 90 00 01         [24] 7950 	mov	dptr,#0x0001
      0058DA                       7951 00111$:
                                   7952 ;	calc.c:359: }
      0058DA 85 08 81         [24] 7953 	mov	sp,_bp
      0058DD D0 08            [24] 7954 	pop	_bp
      0058DF 22               [24] 7955 	ret
                                   7956 ;------------------------------------------------------------
                                   7957 ;Allocation info for local variables in function 'reset_acc'
                                   7958 ;------------------------------------------------------------
                                   7959 ;delta                     Allocated to stack - _bp -5
                                   7960 ;_ctx                      Allocated to registers r5 r6 r7 
                                   7961 ;ctx                       Allocated to registers r5 r6 r7 
                                   7962 ;------------------------------------------------------------
                                   7963 ;	calc.c:361: static int reset_acc(void *_ctx, delta_t *delta) __reentrant {
                                   7964 ;	-----------------------------------------
                                   7965 ;	 function reset_acc
                                   7966 ;	-----------------------------------------
      0058E0                       7967 _reset_acc:
      0058E0 C0 08            [24] 7968 	push	_bp
      0058E2 85 81 08         [24] 7969 	mov	_bp,sp
      0058E5 AD 82            [24] 7970 	mov	r5,dpl
      0058E7 AE 83            [24] 7971 	mov	r6,dph
      0058E9 AF F0            [24] 7972 	mov	r7,b
                                   7973 ;	calc.c:362: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
                                   7974 ;	calc.c:364: if (delta->event == EVENT_RSTA_I) ctx->acc_valid = 0;
      0058EB E5 08            [12] 7975 	mov	a,_bp
      0058ED 24 FB            [12] 7976 	add	a,#0xfb
      0058EF F8               [12] 7977 	mov	r0,a
      0058F0 86 02            [24] 7978 	mov	ar2,@r0
      0058F2 08               [12] 7979 	inc	r0
      0058F3 86 03            [24] 7980 	mov	ar3,@r0
      0058F5 08               [12] 7981 	inc	r0
      0058F6 86 04            [24] 7982 	mov	ar4,@r0
      0058F8 74 02            [12] 7983 	mov	a,#0x02
      0058FA 2A               [12] 7984 	add	a,r2
      0058FB FA               [12] 7985 	mov	r2,a
      0058FC E4               [12] 7986 	clr	a
      0058FD 3B               [12] 7987 	addc	a,r3
      0058FE FB               [12] 7988 	mov	r3,a
      0058FF 8A 82            [24] 7989 	mov	dpl,r2
      005901 8B 83            [24] 7990 	mov	dph,r3
      005903 8C F0            [24] 7991 	mov	b,r4
      005905 12 71 7E         [24] 7992 	lcall	__gptrget
      005908 FA               [12] 7993 	mov	r2,a
      005909 A3               [24] 7994 	inc	dptr
      00590A 12 71 7E         [24] 7995 	lcall	__gptrget
      00590D FB               [12] 7996 	mov	r3,a
      00590E BA 07 16         [24] 7997 	cjne	r2,#0x07,00102$
      005911 BB 00 13         [24] 7998 	cjne	r3,#0x00,00102$
      005914 74 06            [12] 7999 	mov	a,#0x06
      005916 2D               [12] 8000 	add	a,r5
      005917 FA               [12] 8001 	mov	r2,a
      005918 E4               [12] 8002 	clr	a
      005919 3E               [12] 8003 	addc	a,r6
      00591A FB               [12] 8004 	mov	r3,a
      00591B 8F 04            [24] 8005 	mov	ar4,r7
      00591D 8A 82            [24] 8006 	mov	dpl,r2
      00591F 8B 83            [24] 8007 	mov	dph,r3
      005921 8C F0            [24] 8008 	mov	b,r4
      005923 E4               [12] 8009 	clr	a
      005924 12 6D 03         [24] 8010 	lcall	__gptrput
      005927                       8011 00102$:
                                   8012 ;	calc.c:365: ctx->acc = 0l;
      005927 74 02            [12] 8013 	mov	a,#0x02
      005929 2D               [12] 8014 	add	a,r5
      00592A FD               [12] 8015 	mov	r5,a
      00592B E4               [12] 8016 	clr	a
      00592C 3E               [12] 8017 	addc	a,r6
      00592D FE               [12] 8018 	mov	r6,a
      00592E 8D 82            [24] 8019 	mov	dpl,r5
      005930 8E 83            [24] 8020 	mov	dph,r6
      005932 8F F0            [24] 8021 	mov	b,r7
      005934 E4               [12] 8022 	clr	a
      005935 12 6D 03         [24] 8023 	lcall	__gptrput
      005938 A3               [24] 8024 	inc	dptr
      005939 12 6D 03         [24] 8025 	lcall	__gptrput
      00593C A3               [24] 8026 	inc	dptr
      00593D 12 6D 03         [24] 8027 	lcall	__gptrput
      005940 A3               [24] 8028 	inc	dptr
      005941 12 6D 03         [24] 8029 	lcall	__gptrput
                                   8030 ;	calc.c:367: return 1;
      005944 90 00 01         [24] 8031 	mov	dptr,#0x0001
                                   8032 ;	calc.c:368: }
      005947 D0 08            [24] 8033 	pop	_bp
      005949 22               [24] 8034 	ret
                                   8035 ;------------------------------------------------------------
                                   8036 ;Allocation info for local variables in function 'reset_base'
                                   8037 ;------------------------------------------------------------
                                   8038 ;delta                     Allocated to stack - _bp -5
                                   8039 ;_ctx                      Allocated to registers r5 r6 r7 
                                   8040 ;ctx                       Allocated to registers r5 r6 r7 
                                   8041 ;------------------------------------------------------------
                                   8042 ;	calc.c:370: static int reset_base(void *_ctx, delta_t *delta) __reentrant {
                                   8043 ;	-----------------------------------------
                                   8044 ;	 function reset_base
                                   8045 ;	-----------------------------------------
      00594A                       8046 _reset_base:
      00594A C0 08            [24] 8047 	push	_bp
      00594C 85 81 08         [24] 8048 	mov	_bp,sp
      00594F AD 82            [24] 8049 	mov	r5,dpl
      005951 AE 83            [24] 8050 	mov	r6,dph
      005953 AF F0            [24] 8051 	mov	r7,b
                                   8052 ;	calc.c:371: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
                                   8053 ;	calc.c:375: switch (ctx->digit[0]) {
      005955 74 07            [12] 8054 	mov	a,#0x07
      005957 2D               [12] 8055 	add	a,r5
      005958 FA               [12] 8056 	mov	r2,a
      005959 E4               [12] 8057 	clr	a
      00595A 3E               [12] 8058 	addc	a,r6
      00595B FB               [12] 8059 	mov	r3,a
      00595C 8F 04            [24] 8060 	mov	ar4,r7
      00595E 8A 82            [24] 8061 	mov	dpl,r2
      005960 8B 83            [24] 8062 	mov	dph,r3
      005962 8C F0            [24] 8063 	mov	b,r4
      005964 12 71 7E         [24] 8064 	lcall	__gptrget
      005967 FC               [12] 8065 	mov	r4,a
      005968 BC 48 02         [24] 8066 	cjne	r4,#0x48,00124$
      00596B 80 0F            [24] 8067 	sjmp	00101$
      00596D                       8068 00124$:
      00596D BC 4F 02         [24] 8069 	cjne	r4,#0x4f,00125$
      005970 80 2E            [24] 8070 	sjmp	00103$
      005972                       8071 00125$:
      005972 BC 68 02         [24] 8072 	cjne	r4,#0x68,00126$
      005975 80 17            [24] 8073 	sjmp	00102$
      005977                       8074 00126$:
                                   8075 ;	calc.c:376: case 'H':
      005977 BC 6F 48         [24] 8076 	cjne	r4,#0x6f,00105$
      00597A 80 36            [24] 8077 	sjmp	00104$
      00597C                       8078 00101$:
                                   8079 ;	calc.c:377: ctx->base = 16;
      00597C 8D 82            [24] 8080 	mov	dpl,r5
      00597E 8E 83            [24] 8081 	mov	dph,r6
      005980 8F F0            [24] 8082 	mov	b,r7
      005982 74 10            [12] 8083 	mov	a,#0x10
      005984 12 6D 03         [24] 8084 	lcall	__gptrput
      005987 A3               [24] 8085 	inc	dptr
      005988 E4               [12] 8086 	clr	a
      005989 12 6D 03         [24] 8087 	lcall	__gptrput
                                   8088 ;	calc.c:378: break;
                                   8089 ;	calc.c:379: case 'h':
      00598C 80 34            [24] 8090 	sjmp	00105$
      00598E                       8091 00102$:
                                   8092 ;	calc.c:380: ctx->base = 10;
      00598E 8D 82            [24] 8093 	mov	dpl,r5
      005990 8E 83            [24] 8094 	mov	dph,r6
      005992 8F F0            [24] 8095 	mov	b,r7
      005994 74 0A            [12] 8096 	mov	a,#0x0a
      005996 12 6D 03         [24] 8097 	lcall	__gptrput
      005999 A3               [24] 8098 	inc	dptr
      00599A E4               [12] 8099 	clr	a
      00599B 12 6D 03         [24] 8100 	lcall	__gptrput
                                   8101 ;	calc.c:381: break;
                                   8102 ;	calc.c:382: case 'O':
      00599E 80 22            [24] 8103 	sjmp	00105$
      0059A0                       8104 00103$:
                                   8105 ;	calc.c:383: ctx->base = 8;
      0059A0 8D 82            [24] 8106 	mov	dpl,r5
      0059A2 8E 83            [24] 8107 	mov	dph,r6
      0059A4 8F F0            [24] 8108 	mov	b,r7
      0059A6 74 08            [12] 8109 	mov	a,#0x08
      0059A8 12 6D 03         [24] 8110 	lcall	__gptrput
      0059AB A3               [24] 8111 	inc	dptr
      0059AC E4               [12] 8112 	clr	a
      0059AD 12 6D 03         [24] 8113 	lcall	__gptrput
                                   8114 ;	calc.c:384: break;
                                   8115 ;	calc.c:385: case 'o':
      0059B0 80 10            [24] 8116 	sjmp	00105$
      0059B2                       8117 00104$:
                                   8118 ;	calc.c:386: ctx->base = 2;
      0059B2 8D 82            [24] 8119 	mov	dpl,r5
      0059B4 8E 83            [24] 8120 	mov	dph,r6
      0059B6 8F F0            [24] 8121 	mov	b,r7
      0059B8 74 02            [12] 8122 	mov	a,#0x02
      0059BA 12 6D 03         [24] 8123 	lcall	__gptrput
      0059BD A3               [24] 8124 	inc	dptr
      0059BE E4               [12] 8125 	clr	a
      0059BF 12 6D 03         [24] 8126 	lcall	__gptrput
                                   8127 ;	calc.c:388: }
      0059C2                       8128 00105$:
                                   8129 ;	calc.c:390: return 1;
      0059C2 90 00 01         [24] 8130 	mov	dptr,#0x0001
                                   8131 ;	calc.c:391: }
      0059C5 D0 08            [24] 8132 	pop	_bp
      0059C7 22               [24] 8133 	ret
                                   8134 ;------------------------------------------------------------
                                   8135 ;Allocation info for local variables in function 'status'
                                   8136 ;------------------------------------------------------------
                                   8137 ;delta                     Allocated to stack - _bp -5
                                   8138 ;_ctx                      Allocated to registers r5 r6 r7 
                                   8139 ;ctx                       Allocated to stack - _bp +9
                                   8140 ;vals                      Allocated to stack - _bp +14
                                   8141 ;n                         Allocated to stack - _bp +12
                                   8142 ;__1310720129              Allocated to registers 
                                   8143 ;s                         Allocated to registers r5 r6 r7 
                                   8144 ;__1310720131              Allocated to registers r5 r6 r7 r4 
                                   8145 ;d                         Allocated to registers 
                                   8146 ;__1310720001              Allocated to registers 
                                   8147 ;d                         Allocated to stack - _bp +22
                                   8148 ;mask                      Allocated to stack - _bp +26
                                   8149 ;__1310720133              Allocated to registers 
                                   8150 ;s                         Allocated to registers r3 r4 r5 
                                   8151 ;__1310720135              Allocated to registers r2 r3 r4 r5 
                                   8152 ;d                         Allocated to registers 
                                   8153 ;__1310720001              Allocated to registers 
                                   8154 ;d                         Allocated to stack - _bp +22
                                   8155 ;mask                      Allocated to stack - _bp +26
                                   8156 ;__1310720137              Allocated to registers 
                                   8157 ;s                         Allocated to registers r3 r4 r5 
                                   8158 ;__1310720139              Allocated to registers r4 r5 r6 r7 
                                   8159 ;d                         Allocated to registers 
                                   8160 ;__1310720001              Allocated to registers 
                                   8161 ;d                         Allocated to stack - _bp +22
                                   8162 ;mask                      Allocated to stack - _bp +26
                                   8163 ;__1310720141              Allocated to registers 
                                   8164 ;s                         Allocated to registers r3 r4 r5 
                                   8165 ;__1310720143              Allocated to registers r2 r3 r4 r5 
                                   8166 ;d                         Allocated to registers 
                                   8167 ;__1310720001              Allocated to registers 
                                   8168 ;d                         Allocated to stack - _bp +22
                                   8169 ;mask                      Allocated to stack - _bp +26
                                   8170 ;__1310720145              Allocated to registers 
                                   8171 ;s                         Allocated to registers r5 r6 r7 
                                   8172 ;__1310720147              Allocated to registers r4 r5 r6 r7 
                                   8173 ;d                         Allocated to registers 
                                   8174 ;__1310720001              Allocated to registers 
                                   8175 ;d                         Allocated to stack - _bp +22
                                   8176 ;mask                      Allocated to stack - _bp +26
                                   8177 ;__1310720149              Allocated to registers 
                                   8178 ;s                         Allocated to registers r5 r6 r7 
                                   8179 ;sloc0                     Allocated to stack - _bp +1
                                   8180 ;sloc1                     Allocated to stack - _bp +4
                                   8181 ;sloc2                     Allocated to stack - _bp +7
                                   8182 ;------------------------------------------------------------
                                   8183 ;	calc.c:393: static int status(void *_ctx, delta_t *delta) __reentrant {
                                   8184 ;	-----------------------------------------
                                   8185 ;	 function status
                                   8186 ;	-----------------------------------------
      0059C8                       8187 _status:
      0059C8 C0 08            [24] 8188 	push	_bp
      0059CA E5 81            [12] 8189 	mov	a,sp
      0059CC F5 08            [12] 8190 	mov	_bp,a
      0059CE 24 1D            [12] 8191 	add	a,#0x1d
      0059D0 F5 81            [12] 8192 	mov	sp,a
      0059D2 AD 82            [24] 8193 	mov	r5,dpl
      0059D4 AE 83            [24] 8194 	mov	r6,dph
      0059D6 AF F0            [24] 8195 	mov	r7,b
                                   8196 ;	calc.c:394: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
      0059D8 E5 08            [12] 8197 	mov	a,_bp
      0059DA 24 09            [12] 8198 	add	a,#0x09
      0059DC F8               [12] 8199 	mov	r0,a
      0059DD A6 05            [24] 8200 	mov	@r0,ar5
      0059DF 08               [12] 8201 	inc	r0
      0059E0 A6 06            [24] 8202 	mov	@r0,ar6
      0059E2 08               [12] 8203 	inc	r0
      0059E3 A6 07            [24] 8204 	mov	@r0,ar7
                                   8205 ;	calc.c:400: printf("\r\nPS = %p, SS = %p, base = %d\r\n", ctx->ps, ctx->ss, ctx->base);
      0059E5 E5 08            [12] 8206 	mov	a,_bp
      0059E7 24 09            [12] 8207 	add	a,#0x09
      0059E9 F8               [12] 8208 	mov	r0,a
      0059EA 86 82            [24] 8209 	mov	dpl,@r0
      0059EC 08               [12] 8210 	inc	r0
      0059ED 86 83            [24] 8211 	mov	dph,@r0
      0059EF 08               [12] 8212 	inc	r0
      0059F0 86 F0            [24] 8213 	mov	b,@r0
      0059F2 E5 08            [12] 8214 	mov	a,_bp
      0059F4 24 07            [12] 8215 	add	a,#0x07
      0059F6 F9               [12] 8216 	mov	r1,a
      0059F7 12 71 7E         [24] 8217 	lcall	__gptrget
      0059FA F7               [12] 8218 	mov	@r1,a
      0059FB A3               [24] 8219 	inc	dptr
      0059FC 12 71 7E         [24] 8220 	lcall	__gptrget
      0059FF 09               [12] 8221 	inc	r1
      005A00 F7               [12] 8222 	mov	@r1,a
      005A01 E5 08            [12] 8223 	mov	a,_bp
      005A03 24 09            [12] 8224 	add	a,#0x09
      005A05 F8               [12] 8225 	mov	r0,a
      005A06 A9 08            [24] 8226 	mov	r1,_bp
      005A08 09               [12] 8227 	inc	r1
      005A09 74 16            [12] 8228 	mov	a,#0x16
      005A0B 26               [12] 8229 	add	a,@r0
      005A0C F7               [12] 8230 	mov	@r1,a
      005A0D 74 40            [12] 8231 	mov	a,#0x40
      005A0F 08               [12] 8232 	inc	r0
      005A10 36               [12] 8233 	addc	a,@r0
      005A11 09               [12] 8234 	inc	r1
      005A12 F7               [12] 8235 	mov	@r1,a
      005A13 08               [12] 8236 	inc	r0
      005A14 09               [12] 8237 	inc	r1
      005A15 E6               [12] 8238 	mov	a,@r0
      005A16 F7               [12] 8239 	mov	@r1,a
      005A17 A8 08            [24] 8240 	mov	r0,_bp
      005A19 08               [12] 8241 	inc	r0
      005A1A 86 82            [24] 8242 	mov	dpl,@r0
      005A1C 08               [12] 8243 	inc	r0
      005A1D 86 83            [24] 8244 	mov	dph,@r0
      005A1F 08               [12] 8245 	inc	r0
      005A20 86 F0            [24] 8246 	mov	b,@r0
      005A22 12 71 7E         [24] 8247 	lcall	__gptrget
      005A25 FA               [12] 8248 	mov	r2,a
      005A26 A3               [24] 8249 	inc	dptr
      005A27 12 71 7E         [24] 8250 	lcall	__gptrget
      005A2A FE               [12] 8251 	mov	r6,a
      005A2B A3               [24] 8252 	inc	dptr
      005A2C 12 71 7E         [24] 8253 	lcall	__gptrget
      005A2F FF               [12] 8254 	mov	r7,a
      005A30 E5 08            [12] 8255 	mov	a,_bp
      005A32 24 09            [12] 8256 	add	a,#0x09
      005A34 F8               [12] 8257 	mov	r0,a
      005A35 E5 08            [12] 8258 	mov	a,_bp
      005A37 24 04            [12] 8259 	add	a,#0x04
      005A39 F9               [12] 8260 	mov	r1,a
      005A3A 74 13            [12] 8261 	mov	a,#0x13
      005A3C 26               [12] 8262 	add	a,@r0
      005A3D F7               [12] 8263 	mov	@r1,a
      005A3E 74 40            [12] 8264 	mov	a,#0x40
      005A40 08               [12] 8265 	inc	r0
      005A41 36               [12] 8266 	addc	a,@r0
      005A42 09               [12] 8267 	inc	r1
      005A43 F7               [12] 8268 	mov	@r1,a
      005A44 08               [12] 8269 	inc	r0
      005A45 09               [12] 8270 	inc	r1
      005A46 E6               [12] 8271 	mov	a,@r0
      005A47 F7               [12] 8272 	mov	@r1,a
      005A48 E5 08            [12] 8273 	mov	a,_bp
      005A4A 24 04            [12] 8274 	add	a,#0x04
      005A4C F8               [12] 8275 	mov	r0,a
      005A4D 86 82            [24] 8276 	mov	dpl,@r0
      005A4F 08               [12] 8277 	inc	r0
      005A50 86 83            [24] 8278 	mov	dph,@r0
      005A52 08               [12] 8279 	inc	r0
      005A53 86 F0            [24] 8280 	mov	b,@r0
      005A55 12 71 7E         [24] 8281 	lcall	__gptrget
      005A58 FB               [12] 8282 	mov	r3,a
      005A59 A3               [24] 8283 	inc	dptr
      005A5A 12 71 7E         [24] 8284 	lcall	__gptrget
      005A5D FC               [12] 8285 	mov	r4,a
      005A5E A3               [24] 8286 	inc	dptr
      005A5F 12 71 7E         [24] 8287 	lcall	__gptrget
      005A62 FD               [12] 8288 	mov	r5,a
      005A63 E5 08            [12] 8289 	mov	a,_bp
      005A65 24 07            [12] 8290 	add	a,#0x07
      005A67 F8               [12] 8291 	mov	r0,a
      005A68 E6               [12] 8292 	mov	a,@r0
      005A69 C0 E0            [24] 8293 	push	acc
      005A6B 08               [12] 8294 	inc	r0
      005A6C E6               [12] 8295 	mov	a,@r0
      005A6D C0 E0            [24] 8296 	push	acc
      005A6F C0 02            [24] 8297 	push	ar2
      005A71 C0 06            [24] 8298 	push	ar6
      005A73 C0 07            [24] 8299 	push	ar7
      005A75 C0 03            [24] 8300 	push	ar3
      005A77 C0 04            [24] 8301 	push	ar4
      005A79 C0 05            [24] 8302 	push	ar5
      005A7B 74 C4            [12] 8303 	mov	a,#___str_15
      005A7D C0 E0            [24] 8304 	push	acc
      005A7F 74 8A            [12] 8305 	mov	a,#(___str_15 >> 8)
      005A81 C0 E0            [24] 8306 	push	acc
      005A83 74 80            [12] 8307 	mov	a,#0x80
      005A85 C0 E0            [24] 8308 	push	acc
      005A87 12 71 45         [24] 8309 	lcall	_printf
      005A8A E5 81            [12] 8310 	mov	a,sp
      005A8C 24 F5            [12] 8311 	add	a,#0xf5
      005A8E F5 81            [12] 8312 	mov	sp,a
                                   8313 ;	calc.c:402: printstr("ACC\t");
      005A90 7D E4            [12] 8314 	mov	r5,#___str_16
      005A92 7E 8A            [12] 8315 	mov	r6,#(___str_16 >> 8)
      005A94 7F 80            [12] 8316 	mov	r7,#0x80
                                   8317 ;	calc.c:51: return;
      005A96                       8318 00139$:
                                   8319 ;	calc.c:49: for (; *s; s++) putchar(*s);
      005A96 8D 82            [24] 8320 	mov	dpl,r5
      005A98 8E 83            [24] 8321 	mov	dph,r6
      005A9A 8F F0            [24] 8322 	mov	b,r7
      005A9C 12 71 7E         [24] 8323 	lcall	__gptrget
      005A9F FC               [12] 8324 	mov	r4,a
      005AA0 60 10            [24] 8325 	jz	00112$
      005AA2 7B 00            [12] 8326 	mov	r3,#0x00
      005AA4 8C 82            [24] 8327 	mov	dpl,r4
      005AA6 8B 83            [24] 8328 	mov	dph,r3
      005AA8 12 2C 1F         [24] 8329 	lcall	_putchar
      005AAB 0D               [12] 8330 	inc	r5
                                   8331 ;	calc.c:402: printstr("ACC\t");
      005AAC BD 00 E7         [24] 8332 	cjne	r5,#0x00,00139$
      005AAF 0E               [12] 8333 	inc	r6
      005AB0 80 E4            [24] 8334 	sjmp	00139$
      005AB2                       8335 00112$:
                                   8336 ;	calc.c:403: if (ctx->acc_valid) printall(ctx->acc);
      005AB2 E5 08            [12] 8337 	mov	a,_bp
      005AB4 24 09            [12] 8338 	add	a,#0x09
      005AB6 F8               [12] 8339 	mov	r0,a
      005AB7 74 06            [12] 8340 	mov	a,#0x06
      005AB9 26               [12] 8341 	add	a,@r0
      005ABA FD               [12] 8342 	mov	r5,a
      005ABB E4               [12] 8343 	clr	a
      005ABC 08               [12] 8344 	inc	r0
      005ABD 36               [12] 8345 	addc	a,@r0
      005ABE FE               [12] 8346 	mov	r6,a
      005ABF 08               [12] 8347 	inc	r0
      005AC0 86 07            [24] 8348 	mov	ar7,@r0
      005AC2 8D 82            [24] 8349 	mov	dpl,r5
      005AC4 8E 83            [24] 8350 	mov	dph,r6
      005AC6 8F F0            [24] 8351 	mov	b,r7
      005AC8 12 71 7E         [24] 8352 	lcall	__gptrget
      005ACB 70 03            [24] 8353 	jnz	00321$
      005ACD 02 5B FF         [24] 8354 	ljmp	00102$
      005AD0                       8355 00321$:
      005AD0 E5 08            [12] 8356 	mov	a,_bp
      005AD2 24 09            [12] 8357 	add	a,#0x09
      005AD4 F8               [12] 8358 	mov	r0,a
      005AD5 74 02            [12] 8359 	mov	a,#0x02
      005AD7 26               [12] 8360 	add	a,@r0
      005AD8 FD               [12] 8361 	mov	r5,a
      005AD9 E4               [12] 8362 	clr	a
      005ADA 08               [12] 8363 	inc	r0
      005ADB 36               [12] 8364 	addc	a,@r0
      005ADC FE               [12] 8365 	mov	r6,a
      005ADD 08               [12] 8366 	inc	r0
      005ADE 86 07            [24] 8367 	mov	ar7,@r0
      005AE0 8D 82            [24] 8368 	mov	dpl,r5
      005AE2 8E 83            [24] 8369 	mov	dph,r6
      005AE4 8F F0            [24] 8370 	mov	b,r7
      005AE6 12 71 7E         [24] 8371 	lcall	__gptrget
      005AE9 FD               [12] 8372 	mov	r5,a
      005AEA A3               [24] 8373 	inc	dptr
      005AEB 12 71 7E         [24] 8374 	lcall	__gptrget
      005AEE FE               [12] 8375 	mov	r6,a
      005AEF A3               [24] 8376 	inc	dptr
      005AF0 12 71 7E         [24] 8377 	lcall	__gptrget
      005AF3 FF               [12] 8378 	mov	r7,a
      005AF4 A3               [24] 8379 	inc	dptr
      005AF5 12 71 7E         [24] 8380 	lcall	__gptrget
      005AF8 FC               [12] 8381 	mov	r4,a
                                   8382 ;	calc.c:64: printf("%08lx\t", d);
      005AF9 C0 07            [24] 8383 	push	ar7
      005AFB C0 06            [24] 8384 	push	ar6
      005AFD C0 05            [24] 8385 	push	ar5
      005AFF C0 04            [24] 8386 	push	ar4
      005B01 C0 05            [24] 8387 	push	ar5
      005B03 C0 06            [24] 8388 	push	ar6
      005B05 C0 07            [24] 8389 	push	ar7
      005B07 C0 04            [24] 8390 	push	ar4
      005B09 74 FF            [12] 8391 	mov	a,#___str_0
      005B0B C0 E0            [24] 8392 	push	acc
      005B0D 74 89            [12] 8393 	mov	a,#(___str_0 >> 8)
      005B0F C0 E0            [24] 8394 	push	acc
      005B11 74 80            [12] 8395 	mov	a,#0x80
      005B13 C0 E0            [24] 8396 	push	acc
      005B15 12 71 45         [24] 8397 	lcall	_printf
      005B18 E5 81            [12] 8398 	mov	a,sp
      005B1A 24 F9            [12] 8399 	add	a,#0xf9
      005B1C F5 81            [12] 8400 	mov	sp,a
      005B1E D0 04            [24] 8401 	pop	ar4
      005B20 D0 05            [24] 8402 	pop	ar5
      005B22 D0 06            [24] 8403 	pop	ar6
      005B24 D0 07            [24] 8404 	pop	ar7
                                   8405 ;	calc.c:65: printf("% 11ld\t", d);
      005B26 C0 07            [24] 8406 	push	ar7
      005B28 C0 06            [24] 8407 	push	ar6
      005B2A C0 05            [24] 8408 	push	ar5
      005B2C C0 04            [24] 8409 	push	ar4
      005B2E C0 05            [24] 8410 	push	ar5
      005B30 C0 06            [24] 8411 	push	ar6
      005B32 C0 07            [24] 8412 	push	ar7
      005B34 C0 04            [24] 8413 	push	ar4
      005B36 74 06            [12] 8414 	mov	a,#___str_1
      005B38 C0 E0            [24] 8415 	push	acc
      005B3A 74 8A            [12] 8416 	mov	a,#(___str_1 >> 8)
      005B3C C0 E0            [24] 8417 	push	acc
      005B3E 74 80            [12] 8418 	mov	a,#0x80
      005B40 C0 E0            [24] 8419 	push	acc
      005B42 12 71 45         [24] 8420 	lcall	_printf
      005B45 E5 81            [12] 8421 	mov	a,sp
      005B47 24 F9            [12] 8422 	add	a,#0xf9
      005B49 F5 81            [12] 8423 	mov	sp,a
      005B4B D0 04            [24] 8424 	pop	ar4
      005B4D D0 05            [24] 8425 	pop	ar5
      005B4F D0 06            [24] 8426 	pop	ar6
      005B51 D0 07            [24] 8427 	pop	ar7
                                   8428 ;	calc.c:66: printf("%011lo\t", d);
      005B53 C0 07            [24] 8429 	push	ar7
      005B55 C0 06            [24] 8430 	push	ar6
      005B57 C0 05            [24] 8431 	push	ar5
      005B59 C0 04            [24] 8432 	push	ar4
      005B5B C0 05            [24] 8433 	push	ar5
      005B5D C0 06            [24] 8434 	push	ar6
      005B5F C0 07            [24] 8435 	push	ar7
      005B61 C0 04            [24] 8436 	push	ar4
      005B63 74 0E            [12] 8437 	mov	a,#___str_2
      005B65 C0 E0            [24] 8438 	push	acc
      005B67 74 8A            [12] 8439 	mov	a,#(___str_2 >> 8)
      005B69 C0 E0            [24] 8440 	push	acc
      005B6B 74 80            [12] 8441 	mov	a,#0x80
      005B6D C0 E0            [24] 8442 	push	acc
      005B6F 12 71 45         [24] 8443 	lcall	_printf
      005B72 E5 81            [12] 8444 	mov	a,sp
      005B74 24 F9            [12] 8445 	add	a,#0xf9
      005B76 F5 81            [12] 8446 	mov	sp,a
      005B78 D0 04            [24] 8447 	pop	ar4
      005B7A D0 05            [24] 8448 	pop	ar5
      005B7C D0 06            [24] 8449 	pop	ar6
      005B7E D0 07            [24] 8450 	pop	ar7
                                   8451 ;	calc.c:67: printbin(d);
      005B80 E5 08            [12] 8452 	mov	a,_bp
      005B82 24 16            [12] 8453 	add	a,#0x16
      005B84 F8               [12] 8454 	mov	r0,a
      005B85 A6 05            [24] 8455 	mov	@r0,ar5
      005B87 08               [12] 8456 	inc	r0
      005B88 A6 06            [24] 8457 	mov	@r0,ar6
      005B8A 08               [12] 8458 	inc	r0
      005B8B A6 07            [24] 8459 	mov	@r0,ar7
      005B8D 08               [12] 8460 	inc	r0
      005B8E A6 04            [24] 8461 	mov	@r0,ar4
                                   8462 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      005B90 E5 08            [12] 8463 	mov	a,_bp
      005B92 24 1A            [12] 8464 	add	a,#0x1a
      005B94 F8               [12] 8465 	mov	r0,a
      005B95 E4               [12] 8466 	clr	a
      005B96 F6               [12] 8467 	mov	@r0,a
      005B97 08               [12] 8468 	inc	r0
      005B98 F6               [12] 8469 	mov	@r0,a
      005B99 08               [12] 8470 	inc	r0
      005B9A F6               [12] 8471 	mov	@r0,a
      005B9B 08               [12] 8472 	inc	r0
      005B9C 76 80            [12] 8473 	mov	@r0,#0x80
      005B9E                       8474 00141$:
                                   8475 ;	calc.c:58: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      005B9E E5 08            [12] 8476 	mov	a,_bp
      005BA0 24 16            [12] 8477 	add	a,#0x16
      005BA2 F8               [12] 8478 	mov	r0,a
      005BA3 86 04            [24] 8479 	mov	ar4,@r0
      005BA5 08               [12] 8480 	inc	r0
      005BA6 86 05            [24] 8481 	mov	ar5,@r0
      005BA8 08               [12] 8482 	inc	r0
      005BA9 86 06            [24] 8483 	mov	ar6,@r0
      005BAB 08               [12] 8484 	inc	r0
      005BAC 86 07            [24] 8485 	mov	ar7,@r0
      005BAE E5 08            [12] 8486 	mov	a,_bp
      005BB0 24 1A            [12] 8487 	add	a,#0x1a
      005BB2 F8               [12] 8488 	mov	r0,a
      005BB3 E6               [12] 8489 	mov	a,@r0
      005BB4 52 04            [12] 8490 	anl	ar4,a
      005BB6 08               [12] 8491 	inc	r0
      005BB7 E6               [12] 8492 	mov	a,@r0
      005BB8 52 05            [12] 8493 	anl	ar5,a
      005BBA 08               [12] 8494 	inc	r0
      005BBB E6               [12] 8495 	mov	a,@r0
      005BBC 52 06            [12] 8496 	anl	ar6,a
      005BBE 08               [12] 8497 	inc	r0
      005BBF E6               [12] 8498 	mov	a,@r0
      005BC0 52 07            [12] 8499 	anl	ar7,a
      005BC2 EC               [12] 8500 	mov	a,r4
      005BC3 4D               [12] 8501 	orl	a,r5
      005BC4 4E               [12] 8502 	orl	a,r6
      005BC5 4F               [12] 8503 	orl	a,r7
      005BC6 60 06            [24] 8504 	jz	00168$
      005BC8 7E 31            [12] 8505 	mov	r6,#0x31
      005BCA 7F 00            [12] 8506 	mov	r7,#0x00
      005BCC 80 04            [24] 8507 	sjmp	00169$
      005BCE                       8508 00168$:
      005BCE 7E 30            [12] 8509 	mov	r6,#0x30
      005BD0 7F 00            [12] 8510 	mov	r7,#0x00
      005BD2                       8511 00169$:
      005BD2 8E 82            [24] 8512 	mov	dpl,r6
      005BD4 8F 83            [24] 8513 	mov	dph,r7
      005BD6 12 2C 1F         [24] 8514 	lcall	_putchar
                                   8515 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      005BD9 E5 08            [12] 8516 	mov	a,_bp
      005BDB 24 1A            [12] 8517 	add	a,#0x1a
      005BDD F8               [12] 8518 	mov	r0,a
      005BDE 08               [12] 8519 	inc	r0
      005BDF 08               [12] 8520 	inc	r0
      005BE0 08               [12] 8521 	inc	r0
      005BE1 E6               [12] 8522 	mov	a,@r0
      005BE2 C3               [12] 8523 	clr	c
      005BE3 13               [12] 8524 	rrc	a
      005BE4 F6               [12] 8525 	mov	@r0,a
      005BE5 18               [12] 8526 	dec	r0
      005BE6 E6               [12] 8527 	mov	a,@r0
      005BE7 13               [12] 8528 	rrc	a
      005BE8 F6               [12] 8529 	mov	@r0,a
      005BE9 18               [12] 8530 	dec	r0
      005BEA E6               [12] 8531 	mov	a,@r0
      005BEB 13               [12] 8532 	rrc	a
      005BEC F6               [12] 8533 	mov	@r0,a
      005BED 18               [12] 8534 	dec	r0
      005BEE E6               [12] 8535 	mov	a,@r0
      005BEF 13               [12] 8536 	rrc	a
      005BF0 F6               [12] 8537 	mov	@r0,a
      005BF1 E5 08            [12] 8538 	mov	a,_bp
      005BF3 24 1A            [12] 8539 	add	a,#0x1a
      005BF5 F8               [12] 8540 	mov	r0,a
      005BF6 E6               [12] 8541 	mov	a,@r0
      005BF7 08               [12] 8542 	inc	r0
      005BF8 46               [12] 8543 	orl	a,@r0
      005BF9 08               [12] 8544 	inc	r0
      005BFA 46               [12] 8545 	orl	a,@r0
      005BFB 08               [12] 8546 	inc	r0
      005BFC 46               [12] 8547 	orl	a,@r0
      005BFD 70 9F            [24] 8548 	jnz	00141$
                                   8549 ;	calc.c:403: if (ctx->acc_valid) printall(ctx->acc);
      005BFF                       8550 00102$:
                                   8551 ;	calc.c:405: n = stack_peek2(ctx->ps, vals);
      005BFF E5 08            [12] 8552 	mov	a,_bp
      005C01 24 0E            [12] 8553 	add	a,#0x0e
      005C03 F9               [12] 8554 	mov	r1,a
      005C04 FD               [12] 8555 	mov	r5,a
      005C05 7E 00            [12] 8556 	mov	r6,#0x00
      005C07 7F 40            [12] 8557 	mov	r7,#0x40
      005C09 E5 08            [12] 8558 	mov	a,_bp
      005C0B 24 04            [12] 8559 	add	a,#0x04
      005C0D F8               [12] 8560 	mov	r0,a
      005C0E 86 82            [24] 8561 	mov	dpl,@r0
      005C10 08               [12] 8562 	inc	r0
      005C11 86 83            [24] 8563 	mov	dph,@r0
      005C13 08               [12] 8564 	inc	r0
      005C14 86 F0            [24] 8565 	mov	b,@r0
      005C16 12 71 7E         [24] 8566 	lcall	__gptrget
      005C19 FA               [12] 8567 	mov	r2,a
      005C1A A3               [24] 8568 	inc	dptr
      005C1B 12 71 7E         [24] 8569 	lcall	__gptrget
      005C1E FB               [12] 8570 	mov	r3,a
      005C1F A3               [24] 8571 	inc	dptr
      005C20 12 71 7E         [24] 8572 	lcall	__gptrget
      005C23 FC               [12] 8573 	mov	r4,a
      005C24 C0 01            [24] 8574 	push	ar1
      005C26 C0 05            [24] 8575 	push	ar5
      005C28 C0 06            [24] 8576 	push	ar6
      005C2A C0 07            [24] 8577 	push	ar7
      005C2C 8A 82            [24] 8578 	mov	dpl,r2
      005C2E 8B 83            [24] 8579 	mov	dph,r3
      005C30 8C F0            [24] 8580 	mov	b,r4
      005C32 12 29 73         [24] 8581 	lcall	_stack_peek2
      005C35 AE 82            [24] 8582 	mov	r6,dpl
      005C37 AF 83            [24] 8583 	mov	r7,dph
      005C39 15 81            [12] 8584 	dec	sp
      005C3B 15 81            [12] 8585 	dec	sp
      005C3D 15 81            [12] 8586 	dec	sp
      005C3F D0 01            [24] 8587 	pop	ar1
                                   8588 ;	calc.c:406: printstr("\r\nPSTOP1\t");
      005C41 7B E9            [12] 8589 	mov	r3,#___str_17
      005C43 7C 8A            [12] 8590 	mov	r4,#(___str_17 >> 8)
      005C45 7D 80            [12] 8591 	mov	r5,#0x80
                                   8592 ;	calc.c:51: return;
      005C47                       8593 00144$:
                                   8594 ;	calc.c:49: for (; *s; s++) putchar(*s);
      005C47 8B 82            [24] 8595 	mov	dpl,r3
      005C49 8C 83            [24] 8596 	mov	dph,r4
      005C4B 8D F0            [24] 8597 	mov	b,r5
      005C4D 12 71 7E         [24] 8598 	lcall	__gptrget
      005C50 FA               [12] 8599 	mov	r2,a
      005C51 60 18            [24] 8600 	jz	00117$
      005C53 C0 06            [24] 8601 	push	ar6
      005C55 C0 07            [24] 8602 	push	ar7
      005C57 7F 00            [12] 8603 	mov	r7,#0x00
      005C59 8A 82            [24] 8604 	mov	dpl,r2
      005C5B 8F 83            [24] 8605 	mov	dph,r7
      005C5D 12 2C 1F         [24] 8606 	lcall	_putchar
      005C60 0B               [12] 8607 	inc	r3
      005C61 BB 00 01         [24] 8608 	cjne	r3,#0x00,00325$
      005C64 0C               [12] 8609 	inc	r4
      005C65                       8610 00325$:
      005C65 D0 07            [24] 8611 	pop	ar7
      005C67 D0 06            [24] 8612 	pop	ar6
                                   8613 ;	calc.c:406: printstr("\r\nPSTOP1\t");
      005C69 80 DC            [24] 8614 	sjmp	00144$
      005C6B                       8615 00117$:
                                   8616 ;	calc.c:407: if (n > 0) printall(vals[1]);
      005C6B C3               [12] 8617 	clr	c
      005C6C E4               [12] 8618 	clr	a
      005C6D 9E               [12] 8619 	subb	a,r6
      005C6E 74 80            [12] 8620 	mov	a,#(0x00 ^ 0x80)
      005C70 8F F0            [24] 8621 	mov	b,r7
      005C72 63 F0 80         [24] 8622 	xrl	b,#0x80
      005C75 95 F0            [12] 8623 	subb	a,b
      005C77 40 03            [24] 8624 	jc	00326$
      005C79 02 5D AD         [24] 8625 	ljmp	00104$
      005C7C                       8626 00326$:
      005C7C 74 04            [12] 8627 	mov	a,#0x04
      005C7E 29               [12] 8628 	add	a,r1
      005C7F F8               [12] 8629 	mov	r0,a
      005C80 86 02            [24] 8630 	mov	ar2,@r0
      005C82 08               [12] 8631 	inc	r0
      005C83 86 03            [24] 8632 	mov	ar3,@r0
      005C85 08               [12] 8633 	inc	r0
      005C86 86 04            [24] 8634 	mov	ar4,@r0
      005C88 08               [12] 8635 	inc	r0
      005C89 86 05            [24] 8636 	mov	ar5,@r0
                                   8637 ;	calc.c:64: printf("%08lx\t", d);
      005C8B C0 07            [24] 8638 	push	ar7
      005C8D C0 06            [24] 8639 	push	ar6
      005C8F C0 05            [24] 8640 	push	ar5
      005C91 C0 04            [24] 8641 	push	ar4
      005C93 C0 03            [24] 8642 	push	ar3
      005C95 C0 02            [24] 8643 	push	ar2
      005C97 C0 01            [24] 8644 	push	ar1
      005C99 C0 02            [24] 8645 	push	ar2
      005C9B C0 03            [24] 8646 	push	ar3
      005C9D C0 04            [24] 8647 	push	ar4
      005C9F C0 05            [24] 8648 	push	ar5
      005CA1 74 FF            [12] 8649 	mov	a,#___str_0
      005CA3 C0 E0            [24] 8650 	push	acc
      005CA5 74 89            [12] 8651 	mov	a,#(___str_0 >> 8)
      005CA7 C0 E0            [24] 8652 	push	acc
      005CA9 74 80            [12] 8653 	mov	a,#0x80
      005CAB C0 E0            [24] 8654 	push	acc
      005CAD 12 71 45         [24] 8655 	lcall	_printf
      005CB0 E5 81            [12] 8656 	mov	a,sp
      005CB2 24 F9            [12] 8657 	add	a,#0xf9
      005CB4 F5 81            [12] 8658 	mov	sp,a
      005CB6 D0 01            [24] 8659 	pop	ar1
      005CB8 D0 02            [24] 8660 	pop	ar2
      005CBA D0 03            [24] 8661 	pop	ar3
      005CBC D0 04            [24] 8662 	pop	ar4
      005CBE D0 05            [24] 8663 	pop	ar5
                                   8664 ;	calc.c:65: printf("% 11ld\t", d);
      005CC0 C0 05            [24] 8665 	push	ar5
      005CC2 C0 04            [24] 8666 	push	ar4
      005CC4 C0 03            [24] 8667 	push	ar3
      005CC6 C0 02            [24] 8668 	push	ar2
      005CC8 C0 01            [24] 8669 	push	ar1
      005CCA C0 02            [24] 8670 	push	ar2
      005CCC C0 03            [24] 8671 	push	ar3
      005CCE C0 04            [24] 8672 	push	ar4
      005CD0 C0 05            [24] 8673 	push	ar5
      005CD2 74 06            [12] 8674 	mov	a,#___str_1
      005CD4 C0 E0            [24] 8675 	push	acc
      005CD6 74 8A            [12] 8676 	mov	a,#(___str_1 >> 8)
      005CD8 C0 E0            [24] 8677 	push	acc
      005CDA 74 80            [12] 8678 	mov	a,#0x80
      005CDC C0 E0            [24] 8679 	push	acc
      005CDE 12 71 45         [24] 8680 	lcall	_printf
      005CE1 E5 81            [12] 8681 	mov	a,sp
      005CE3 24 F9            [12] 8682 	add	a,#0xf9
      005CE5 F5 81            [12] 8683 	mov	sp,a
      005CE7 D0 01            [24] 8684 	pop	ar1
      005CE9 D0 02            [24] 8685 	pop	ar2
      005CEB D0 03            [24] 8686 	pop	ar3
      005CED D0 04            [24] 8687 	pop	ar4
      005CEF D0 05            [24] 8688 	pop	ar5
                                   8689 ;	calc.c:66: printf("%011lo\t", d);
      005CF1 C0 05            [24] 8690 	push	ar5
      005CF3 C0 04            [24] 8691 	push	ar4
      005CF5 C0 03            [24] 8692 	push	ar3
      005CF7 C0 02            [24] 8693 	push	ar2
      005CF9 C0 01            [24] 8694 	push	ar1
      005CFB C0 02            [24] 8695 	push	ar2
      005CFD C0 03            [24] 8696 	push	ar3
      005CFF C0 04            [24] 8697 	push	ar4
      005D01 C0 05            [24] 8698 	push	ar5
      005D03 74 0E            [12] 8699 	mov	a,#___str_2
      005D05 C0 E0            [24] 8700 	push	acc
      005D07 74 8A            [12] 8701 	mov	a,#(___str_2 >> 8)
      005D09 C0 E0            [24] 8702 	push	acc
      005D0B 74 80            [12] 8703 	mov	a,#0x80
      005D0D C0 E0            [24] 8704 	push	acc
      005D0F 12 71 45         [24] 8705 	lcall	_printf
      005D12 E5 81            [12] 8706 	mov	a,sp
      005D14 24 F9            [12] 8707 	add	a,#0xf9
      005D16 F5 81            [12] 8708 	mov	sp,a
      005D18 D0 01            [24] 8709 	pop	ar1
      005D1A D0 02            [24] 8710 	pop	ar2
      005D1C D0 03            [24] 8711 	pop	ar3
      005D1E D0 04            [24] 8712 	pop	ar4
      005D20 D0 05            [24] 8713 	pop	ar5
      005D22 D0 06            [24] 8714 	pop	ar6
      005D24 D0 07            [24] 8715 	pop	ar7
                                   8716 ;	calc.c:67: printbin(d);
      005D26 E5 08            [12] 8717 	mov	a,_bp
      005D28 24 16            [12] 8718 	add	a,#0x16
      005D2A F8               [12] 8719 	mov	r0,a
      005D2B A6 02            [24] 8720 	mov	@r0,ar2
      005D2D 08               [12] 8721 	inc	r0
      005D2E A6 03            [24] 8722 	mov	@r0,ar3
      005D30 08               [12] 8723 	inc	r0
      005D31 A6 04            [24] 8724 	mov	@r0,ar4
      005D33 08               [12] 8725 	inc	r0
      005D34 A6 05            [24] 8726 	mov	@r0,ar5
                                   8727 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      005D36 E5 08            [12] 8728 	mov	a,_bp
      005D38 24 1A            [12] 8729 	add	a,#0x1a
      005D3A F8               [12] 8730 	mov	r0,a
      005D3B E4               [12] 8731 	clr	a
      005D3C F6               [12] 8732 	mov	@r0,a
      005D3D 08               [12] 8733 	inc	r0
      005D3E F6               [12] 8734 	mov	@r0,a
      005D3F 08               [12] 8735 	inc	r0
      005D40 F6               [12] 8736 	mov	@r0,a
      005D41 08               [12] 8737 	inc	r0
      005D42 76 80            [12] 8738 	mov	@r0,#0x80
      005D44                       8739 00146$:
                                   8740 ;	calc.c:58: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      005D44 C0 06            [24] 8741 	push	ar6
      005D46 C0 07            [24] 8742 	push	ar7
      005D48 E5 08            [12] 8743 	mov	a,_bp
      005D4A 24 16            [12] 8744 	add	a,#0x16
      005D4C F8               [12] 8745 	mov	r0,a
      005D4D 86 04            [24] 8746 	mov	ar4,@r0
      005D4F 08               [12] 8747 	inc	r0
      005D50 86 05            [24] 8748 	mov	ar5,@r0
      005D52 08               [12] 8749 	inc	r0
      005D53 86 06            [24] 8750 	mov	ar6,@r0
      005D55 08               [12] 8751 	inc	r0
      005D56 86 07            [24] 8752 	mov	ar7,@r0
      005D58 E5 08            [12] 8753 	mov	a,_bp
      005D5A 24 1A            [12] 8754 	add	a,#0x1a
      005D5C F8               [12] 8755 	mov	r0,a
      005D5D E6               [12] 8756 	mov	a,@r0
      005D5E 52 04            [12] 8757 	anl	ar4,a
      005D60 08               [12] 8758 	inc	r0
      005D61 E6               [12] 8759 	mov	a,@r0
      005D62 52 05            [12] 8760 	anl	ar5,a
      005D64 08               [12] 8761 	inc	r0
      005D65 E6               [12] 8762 	mov	a,@r0
      005D66 52 06            [12] 8763 	anl	ar6,a
      005D68 08               [12] 8764 	inc	r0
      005D69 E6               [12] 8765 	mov	a,@r0
      005D6A 52 07            [12] 8766 	anl	ar7,a
      005D6C EC               [12] 8767 	mov	a,r4
      005D6D 4D               [12] 8768 	orl	a,r5
      005D6E 4E               [12] 8769 	orl	a,r6
      005D6F 4F               [12] 8770 	orl	a,r7
      005D70 D0 07            [24] 8771 	pop	ar7
      005D72 D0 06            [24] 8772 	pop	ar6
      005D74 60 06            [24] 8773 	jz	00170$
      005D76 7C 31            [12] 8774 	mov	r4,#0x31
      005D78 7D 00            [12] 8775 	mov	r5,#0x00
      005D7A 80 04            [24] 8776 	sjmp	00171$
      005D7C                       8777 00170$:
      005D7C 7C 30            [12] 8778 	mov	r4,#0x30
      005D7E 7D 00            [12] 8779 	mov	r5,#0x00
      005D80                       8780 00171$:
      005D80 8C 82            [24] 8781 	mov	dpl,r4
      005D82 8D 83            [24] 8782 	mov	dph,r5
      005D84 12 2C 1F         [24] 8783 	lcall	_putchar
                                   8784 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      005D87 E5 08            [12] 8785 	mov	a,_bp
      005D89 24 1A            [12] 8786 	add	a,#0x1a
      005D8B F8               [12] 8787 	mov	r0,a
      005D8C 08               [12] 8788 	inc	r0
      005D8D 08               [12] 8789 	inc	r0
      005D8E 08               [12] 8790 	inc	r0
      005D8F E6               [12] 8791 	mov	a,@r0
      005D90 C3               [12] 8792 	clr	c
      005D91 13               [12] 8793 	rrc	a
      005D92 F6               [12] 8794 	mov	@r0,a
      005D93 18               [12] 8795 	dec	r0
      005D94 E6               [12] 8796 	mov	a,@r0
      005D95 13               [12] 8797 	rrc	a
      005D96 F6               [12] 8798 	mov	@r0,a
      005D97 18               [12] 8799 	dec	r0
      005D98 E6               [12] 8800 	mov	a,@r0
      005D99 13               [12] 8801 	rrc	a
      005D9A F6               [12] 8802 	mov	@r0,a
      005D9B 18               [12] 8803 	dec	r0
      005D9C E6               [12] 8804 	mov	a,@r0
      005D9D 13               [12] 8805 	rrc	a
      005D9E F6               [12] 8806 	mov	@r0,a
      005D9F E5 08            [12] 8807 	mov	a,_bp
      005DA1 24 1A            [12] 8808 	add	a,#0x1a
      005DA3 F8               [12] 8809 	mov	r0,a
      005DA4 E6               [12] 8810 	mov	a,@r0
      005DA5 08               [12] 8811 	inc	r0
      005DA6 46               [12] 8812 	orl	a,@r0
      005DA7 08               [12] 8813 	inc	r0
      005DA8 46               [12] 8814 	orl	a,@r0
      005DA9 08               [12] 8815 	inc	r0
      005DAA 46               [12] 8816 	orl	a,@r0
      005DAB 70 97            [24] 8817 	jnz	00146$
                                   8818 ;	calc.c:407: if (n > 0) printall(vals[1]);
      005DAD                       8819 00104$:
                                   8820 ;	calc.c:408: printstr("\r\nPSTOP0\t");
      005DAD 7B F3            [12] 8821 	mov	r3,#___str_18
      005DAF 7C 8A            [12] 8822 	mov	r4,#(___str_18 >> 8)
      005DB1 7D 80            [12] 8823 	mov	r5,#0x80
                                   8824 ;	calc.c:51: return;
      005DB3                       8825 00149$:
                                   8826 ;	calc.c:49: for (; *s; s++) putchar(*s);
      005DB3 8B 82            [24] 8827 	mov	dpl,r3
      005DB5 8C 83            [24] 8828 	mov	dph,r4
      005DB7 8D F0            [24] 8829 	mov	b,r5
      005DB9 12 71 7E         [24] 8830 	lcall	__gptrget
      005DBC FA               [12] 8831 	mov	r2,a
      005DBD 60 18            [24] 8832 	jz	00122$
      005DBF C0 06            [24] 8833 	push	ar6
      005DC1 C0 07            [24] 8834 	push	ar7
      005DC3 7F 00            [12] 8835 	mov	r7,#0x00
      005DC5 8A 82            [24] 8836 	mov	dpl,r2
      005DC7 8F 83            [24] 8837 	mov	dph,r7
      005DC9 12 2C 1F         [24] 8838 	lcall	_putchar
      005DCC 0B               [12] 8839 	inc	r3
      005DCD BB 00 01         [24] 8840 	cjne	r3,#0x00,00330$
      005DD0 0C               [12] 8841 	inc	r4
      005DD1                       8842 00330$:
      005DD1 D0 07            [24] 8843 	pop	ar7
      005DD3 D0 06            [24] 8844 	pop	ar6
                                   8845 ;	calc.c:408: printstr("\r\nPSTOP0\t");
      005DD5 80 DC            [24] 8846 	sjmp	00149$
      005DD7                       8847 00122$:
                                   8848 ;	calc.c:409: if (n > 1) printall(vals[0]);
      005DD7 C3               [12] 8849 	clr	c
      005DD8 74 01            [12] 8850 	mov	a,#0x01
      005DDA 9E               [12] 8851 	subb	a,r6
      005DDB 74 80            [12] 8852 	mov	a,#(0x00 ^ 0x80)
      005DDD 8F F0            [24] 8853 	mov	b,r7
      005DDF 63 F0 80         [24] 8854 	xrl	b,#0x80
      005DE2 95 F0            [12] 8855 	subb	a,b
      005DE4 40 03            [24] 8856 	jc	00331$
      005DE6 02 5F 0D         [24] 8857 	ljmp	00106$
      005DE9                       8858 00331$:
      005DE9 87 04            [24] 8859 	mov	ar4,@r1
      005DEB 09               [12] 8860 	inc	r1
      005DEC 87 05            [24] 8861 	mov	ar5,@r1
      005DEE 09               [12] 8862 	inc	r1
      005DEF 87 06            [24] 8863 	mov	ar6,@r1
      005DF1 09               [12] 8864 	inc	r1
      005DF2 87 07            [24] 8865 	mov	ar7,@r1
      005DF4 19               [12] 8866 	dec	r1
      005DF5 19               [12] 8867 	dec	r1
      005DF6 19               [12] 8868 	dec	r1
                                   8869 ;	calc.c:64: printf("%08lx\t", d);
      005DF7 C0 07            [24] 8870 	push	ar7
      005DF9 C0 06            [24] 8871 	push	ar6
      005DFB C0 05            [24] 8872 	push	ar5
      005DFD C0 04            [24] 8873 	push	ar4
      005DFF C0 01            [24] 8874 	push	ar1
      005E01 C0 04            [24] 8875 	push	ar4
      005E03 C0 05            [24] 8876 	push	ar5
      005E05 C0 06            [24] 8877 	push	ar6
      005E07 C0 07            [24] 8878 	push	ar7
      005E09 74 FF            [12] 8879 	mov	a,#___str_0
      005E0B C0 E0            [24] 8880 	push	acc
      005E0D 74 89            [12] 8881 	mov	a,#(___str_0 >> 8)
      005E0F C0 E0            [24] 8882 	push	acc
      005E11 74 80            [12] 8883 	mov	a,#0x80
      005E13 C0 E0            [24] 8884 	push	acc
      005E15 12 71 45         [24] 8885 	lcall	_printf
      005E18 E5 81            [12] 8886 	mov	a,sp
      005E1A 24 F9            [12] 8887 	add	a,#0xf9
      005E1C F5 81            [12] 8888 	mov	sp,a
      005E1E D0 01            [24] 8889 	pop	ar1
      005E20 D0 04            [24] 8890 	pop	ar4
      005E22 D0 05            [24] 8891 	pop	ar5
      005E24 D0 06            [24] 8892 	pop	ar6
      005E26 D0 07            [24] 8893 	pop	ar7
                                   8894 ;	calc.c:65: printf("% 11ld\t", d);
      005E28 C0 07            [24] 8895 	push	ar7
      005E2A C0 06            [24] 8896 	push	ar6
      005E2C C0 05            [24] 8897 	push	ar5
      005E2E C0 04            [24] 8898 	push	ar4
      005E30 C0 01            [24] 8899 	push	ar1
      005E32 C0 04            [24] 8900 	push	ar4
      005E34 C0 05            [24] 8901 	push	ar5
      005E36 C0 06            [24] 8902 	push	ar6
      005E38 C0 07            [24] 8903 	push	ar7
      005E3A 74 06            [12] 8904 	mov	a,#___str_1
      005E3C C0 E0            [24] 8905 	push	acc
      005E3E 74 8A            [12] 8906 	mov	a,#(___str_1 >> 8)
      005E40 C0 E0            [24] 8907 	push	acc
      005E42 74 80            [12] 8908 	mov	a,#0x80
      005E44 C0 E0            [24] 8909 	push	acc
      005E46 12 71 45         [24] 8910 	lcall	_printf
      005E49 E5 81            [12] 8911 	mov	a,sp
      005E4B 24 F9            [12] 8912 	add	a,#0xf9
      005E4D F5 81            [12] 8913 	mov	sp,a
      005E4F D0 01            [24] 8914 	pop	ar1
      005E51 D0 04            [24] 8915 	pop	ar4
      005E53 D0 05            [24] 8916 	pop	ar5
      005E55 D0 06            [24] 8917 	pop	ar6
      005E57 D0 07            [24] 8918 	pop	ar7
                                   8919 ;	calc.c:66: printf("%011lo\t", d);
      005E59 C0 07            [24] 8920 	push	ar7
      005E5B C0 06            [24] 8921 	push	ar6
      005E5D C0 05            [24] 8922 	push	ar5
      005E5F C0 04            [24] 8923 	push	ar4
      005E61 C0 01            [24] 8924 	push	ar1
      005E63 C0 04            [24] 8925 	push	ar4
      005E65 C0 05            [24] 8926 	push	ar5
      005E67 C0 06            [24] 8927 	push	ar6
      005E69 C0 07            [24] 8928 	push	ar7
      005E6B 74 0E            [12] 8929 	mov	a,#___str_2
      005E6D C0 E0            [24] 8930 	push	acc
      005E6F 74 8A            [12] 8931 	mov	a,#(___str_2 >> 8)
      005E71 C0 E0            [24] 8932 	push	acc
      005E73 74 80            [12] 8933 	mov	a,#0x80
      005E75 C0 E0            [24] 8934 	push	acc
      005E77 12 71 45         [24] 8935 	lcall	_printf
      005E7A E5 81            [12] 8936 	mov	a,sp
      005E7C 24 F9            [12] 8937 	add	a,#0xf9
      005E7E F5 81            [12] 8938 	mov	sp,a
      005E80 D0 01            [24] 8939 	pop	ar1
      005E82 D0 04            [24] 8940 	pop	ar4
      005E84 D0 05            [24] 8941 	pop	ar5
      005E86 D0 06            [24] 8942 	pop	ar6
      005E88 D0 07            [24] 8943 	pop	ar7
                                   8944 ;	calc.c:67: printbin(d);
      005E8A E5 08            [12] 8945 	mov	a,_bp
      005E8C 24 16            [12] 8946 	add	a,#0x16
      005E8E F8               [12] 8947 	mov	r0,a
      005E8F A6 04            [24] 8948 	mov	@r0,ar4
      005E91 08               [12] 8949 	inc	r0
      005E92 A6 05            [24] 8950 	mov	@r0,ar5
      005E94 08               [12] 8951 	inc	r0
      005E95 A6 06            [24] 8952 	mov	@r0,ar6
      005E97 08               [12] 8953 	inc	r0
      005E98 A6 07            [24] 8954 	mov	@r0,ar7
                                   8955 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      005E9A E5 08            [12] 8956 	mov	a,_bp
      005E9C 24 1A            [12] 8957 	add	a,#0x1a
      005E9E F8               [12] 8958 	mov	r0,a
      005E9F E4               [12] 8959 	clr	a
      005EA0 F6               [12] 8960 	mov	@r0,a
      005EA1 08               [12] 8961 	inc	r0
      005EA2 F6               [12] 8962 	mov	@r0,a
      005EA3 08               [12] 8963 	inc	r0
      005EA4 F6               [12] 8964 	mov	@r0,a
      005EA5 08               [12] 8965 	inc	r0
      005EA6 76 80            [12] 8966 	mov	@r0,#0x80
      005EA8                       8967 00151$:
                                   8968 ;	calc.c:58: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      005EA8 C0 01            [24] 8969 	push	ar1
      005EAA E5 08            [12] 8970 	mov	a,_bp
      005EAC 24 16            [12] 8971 	add	a,#0x16
      005EAE F8               [12] 8972 	mov	r0,a
      005EAF 86 04            [24] 8973 	mov	ar4,@r0
      005EB1 08               [12] 8974 	inc	r0
      005EB2 86 05            [24] 8975 	mov	ar5,@r0
      005EB4 08               [12] 8976 	inc	r0
      005EB5 86 06            [24] 8977 	mov	ar6,@r0
      005EB7 08               [12] 8978 	inc	r0
      005EB8 86 07            [24] 8979 	mov	ar7,@r0
      005EBA E5 08            [12] 8980 	mov	a,_bp
      005EBC 24 1A            [12] 8981 	add	a,#0x1a
      005EBE F8               [12] 8982 	mov	r0,a
      005EBF E6               [12] 8983 	mov	a,@r0
      005EC0 52 04            [12] 8984 	anl	ar4,a
      005EC2 08               [12] 8985 	inc	r0
      005EC3 E6               [12] 8986 	mov	a,@r0
      005EC4 52 05            [12] 8987 	anl	ar5,a
      005EC6 08               [12] 8988 	inc	r0
      005EC7 E6               [12] 8989 	mov	a,@r0
      005EC8 52 06            [12] 8990 	anl	ar6,a
      005ECA 08               [12] 8991 	inc	r0
      005ECB E6               [12] 8992 	mov	a,@r0
      005ECC 52 07            [12] 8993 	anl	ar7,a
      005ECE D0 01            [24] 8994 	pop	ar1
      005ED0 EC               [12] 8995 	mov	a,r4
      005ED1 4D               [12] 8996 	orl	a,r5
      005ED2 4E               [12] 8997 	orl	a,r6
      005ED3 4F               [12] 8998 	orl	a,r7
      005ED4 60 06            [24] 8999 	jz	00172$
      005ED6 7E 31            [12] 9000 	mov	r6,#0x31
      005ED8 7F 00            [12] 9001 	mov	r7,#0x00
      005EDA 80 04            [24] 9002 	sjmp	00173$
      005EDC                       9003 00172$:
      005EDC 7E 30            [12] 9004 	mov	r6,#0x30
      005EDE 7F 00            [12] 9005 	mov	r7,#0x00
      005EE0                       9006 00173$:
      005EE0 8E 82            [24] 9007 	mov	dpl,r6
      005EE2 8F 83            [24] 9008 	mov	dph,r7
      005EE4 12 2C 1F         [24] 9009 	lcall	_putchar
                                   9010 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      005EE7 E5 08            [12] 9011 	mov	a,_bp
      005EE9 24 1A            [12] 9012 	add	a,#0x1a
      005EEB F8               [12] 9013 	mov	r0,a
      005EEC 08               [12] 9014 	inc	r0
      005EED 08               [12] 9015 	inc	r0
      005EEE 08               [12] 9016 	inc	r0
      005EEF E6               [12] 9017 	mov	a,@r0
      005EF0 C3               [12] 9018 	clr	c
      005EF1 13               [12] 9019 	rrc	a
      005EF2 F6               [12] 9020 	mov	@r0,a
      005EF3 18               [12] 9021 	dec	r0
      005EF4 E6               [12] 9022 	mov	a,@r0
      005EF5 13               [12] 9023 	rrc	a
      005EF6 F6               [12] 9024 	mov	@r0,a
      005EF7 18               [12] 9025 	dec	r0
      005EF8 E6               [12] 9026 	mov	a,@r0
      005EF9 13               [12] 9027 	rrc	a
      005EFA F6               [12] 9028 	mov	@r0,a
      005EFB 18               [12] 9029 	dec	r0
      005EFC E6               [12] 9030 	mov	a,@r0
      005EFD 13               [12] 9031 	rrc	a
      005EFE F6               [12] 9032 	mov	@r0,a
      005EFF E5 08            [12] 9033 	mov	a,_bp
      005F01 24 1A            [12] 9034 	add	a,#0x1a
      005F03 F8               [12] 9035 	mov	r0,a
      005F04 E6               [12] 9036 	mov	a,@r0
      005F05 08               [12] 9037 	inc	r0
      005F06 46               [12] 9038 	orl	a,@r0
      005F07 08               [12] 9039 	inc	r0
      005F08 46               [12] 9040 	orl	a,@r0
      005F09 08               [12] 9041 	inc	r0
      005F0A 46               [12] 9042 	orl	a,@r0
      005F0B 70 9B            [24] 9043 	jnz	00151$
                                   9044 ;	calc.c:409: if (n > 1) printall(vals[0]);
      005F0D                       9045 00106$:
                                   9046 ;	calc.c:411: n = stack_peek2(ctx->ss, vals);
      005F0D 89 07            [24] 9047 	mov	ar7,r1
      005F0F 7E 00            [12] 9048 	mov	r6,#0x00
      005F11 7D 40            [12] 9049 	mov	r5,#0x40
      005F13 A8 08            [24] 9050 	mov	r0,_bp
      005F15 08               [12] 9051 	inc	r0
      005F16 86 82            [24] 9052 	mov	dpl,@r0
      005F18 08               [12] 9053 	inc	r0
      005F19 86 83            [24] 9054 	mov	dph,@r0
      005F1B 08               [12] 9055 	inc	r0
      005F1C 86 F0            [24] 9056 	mov	b,@r0
      005F1E 12 71 7E         [24] 9057 	lcall	__gptrget
      005F21 FA               [12] 9058 	mov	r2,a
      005F22 A3               [24] 9059 	inc	dptr
      005F23 12 71 7E         [24] 9060 	lcall	__gptrget
      005F26 FB               [12] 9061 	mov	r3,a
      005F27 A3               [24] 9062 	inc	dptr
      005F28 12 71 7E         [24] 9063 	lcall	__gptrget
      005F2B FC               [12] 9064 	mov	r4,a
      005F2C C0 01            [24] 9065 	push	ar1
      005F2E C0 07            [24] 9066 	push	ar7
      005F30 C0 06            [24] 9067 	push	ar6
      005F32 C0 05            [24] 9068 	push	ar5
      005F34 8A 82            [24] 9069 	mov	dpl,r2
      005F36 8B 83            [24] 9070 	mov	dph,r3
      005F38 8C F0            [24] 9071 	mov	b,r4
      005F3A 12 29 73         [24] 9072 	lcall	_stack_peek2
      005F3D AE 82            [24] 9073 	mov	r6,dpl
      005F3F AF 83            [24] 9074 	mov	r7,dph
      005F41 15 81            [12] 9075 	dec	sp
      005F43 15 81            [12] 9076 	dec	sp
      005F45 15 81            [12] 9077 	dec	sp
      005F47 D0 01            [24] 9078 	pop	ar1
      005F49 E5 08            [12] 9079 	mov	a,_bp
      005F4B 24 0C            [12] 9080 	add	a,#0x0c
      005F4D F8               [12] 9081 	mov	r0,a
      005F4E A6 06            [24] 9082 	mov	@r0,ar6
      005F50 08               [12] 9083 	inc	r0
      005F51 A6 07            [24] 9084 	mov	@r0,ar7
                                   9085 ;	calc.c:412: printstr("\r\nSSTOP1\t");
      005F53 7B FD            [12] 9086 	mov	r3,#___str_19
      005F55 7C 8A            [12] 9087 	mov	r4,#(___str_19 >> 8)
      005F57 7D 80            [12] 9088 	mov	r5,#0x80
                                   9089 ;	calc.c:51: return;
      005F59                       9090 00154$:
                                   9091 ;	calc.c:49: for (; *s; s++) putchar(*s);
      005F59 8B 82            [24] 9092 	mov	dpl,r3
      005F5B 8C 83            [24] 9093 	mov	dph,r4
      005F5D 8D F0            [24] 9094 	mov	b,r5
      005F5F 12 71 7E         [24] 9095 	lcall	__gptrget
      005F62 FA               [12] 9096 	mov	r2,a
      005F63 60 10            [24] 9097 	jz	00127$
      005F65 7F 00            [12] 9098 	mov	r7,#0x00
      005F67 8A 82            [24] 9099 	mov	dpl,r2
      005F69 8F 83            [24] 9100 	mov	dph,r7
      005F6B 12 2C 1F         [24] 9101 	lcall	_putchar
      005F6E 0B               [12] 9102 	inc	r3
                                   9103 ;	calc.c:412: printstr("\r\nSSTOP1\t");
      005F6F BB 00 E7         [24] 9104 	cjne	r3,#0x00,00154$
      005F72 0C               [12] 9105 	inc	r4
      005F73 80 E4            [24] 9106 	sjmp	00154$
      005F75                       9107 00127$:
                                   9108 ;	calc.c:413: if (n > 0) printall(vals[1]);
      005F75 E5 08            [12] 9109 	mov	a,_bp
      005F77 24 0C            [12] 9110 	add	a,#0x0c
      005F79 F8               [12] 9111 	mov	r0,a
      005F7A C3               [12] 9112 	clr	c
      005F7B E4               [12] 9113 	clr	a
      005F7C 96               [12] 9114 	subb	a,@r0
      005F7D 74 80            [12] 9115 	mov	a,#(0x00 ^ 0x80)
      005F7F 08               [12] 9116 	inc	r0
      005F80 86 F0            [24] 9117 	mov	b,@r0
      005F82 63 F0 80         [24] 9118 	xrl	b,#0x80
      005F85 95 F0            [12] 9119 	subb	a,b
      005F87 40 03            [24] 9120 	jc	00336$
      005F89 02 60 B1         [24] 9121 	ljmp	00108$
      005F8C                       9122 00336$:
      005F8C 74 04            [12] 9123 	mov	a,#0x04
      005F8E 29               [12] 9124 	add	a,r1
      005F8F F8               [12] 9125 	mov	r0,a
      005F90 86 02            [24] 9126 	mov	ar2,@r0
      005F92 08               [12] 9127 	inc	r0
      005F93 86 03            [24] 9128 	mov	ar3,@r0
      005F95 08               [12] 9129 	inc	r0
      005F96 86 04            [24] 9130 	mov	ar4,@r0
      005F98 08               [12] 9131 	inc	r0
      005F99 86 05            [24] 9132 	mov	ar5,@r0
                                   9133 ;	calc.c:64: printf("%08lx\t", d);
      005F9B C0 05            [24] 9134 	push	ar5
      005F9D C0 04            [24] 9135 	push	ar4
      005F9F C0 03            [24] 9136 	push	ar3
      005FA1 C0 02            [24] 9137 	push	ar2
      005FA3 C0 01            [24] 9138 	push	ar1
      005FA5 C0 02            [24] 9139 	push	ar2
      005FA7 C0 03            [24] 9140 	push	ar3
      005FA9 C0 04            [24] 9141 	push	ar4
      005FAB C0 05            [24] 9142 	push	ar5
      005FAD 74 FF            [12] 9143 	mov	a,#___str_0
      005FAF C0 E0            [24] 9144 	push	acc
      005FB1 74 89            [12] 9145 	mov	a,#(___str_0 >> 8)
      005FB3 C0 E0            [24] 9146 	push	acc
      005FB5 74 80            [12] 9147 	mov	a,#0x80
      005FB7 C0 E0            [24] 9148 	push	acc
      005FB9 12 71 45         [24] 9149 	lcall	_printf
      005FBC E5 81            [12] 9150 	mov	a,sp
      005FBE 24 F9            [12] 9151 	add	a,#0xf9
      005FC0 F5 81            [12] 9152 	mov	sp,a
      005FC2 D0 01            [24] 9153 	pop	ar1
      005FC4 D0 02            [24] 9154 	pop	ar2
      005FC6 D0 03            [24] 9155 	pop	ar3
      005FC8 D0 04            [24] 9156 	pop	ar4
      005FCA D0 05            [24] 9157 	pop	ar5
                                   9158 ;	calc.c:65: printf("% 11ld\t", d);
      005FCC C0 05            [24] 9159 	push	ar5
      005FCE C0 04            [24] 9160 	push	ar4
      005FD0 C0 03            [24] 9161 	push	ar3
      005FD2 C0 02            [24] 9162 	push	ar2
      005FD4 C0 01            [24] 9163 	push	ar1
      005FD6 C0 02            [24] 9164 	push	ar2
      005FD8 C0 03            [24] 9165 	push	ar3
      005FDA C0 04            [24] 9166 	push	ar4
      005FDC C0 05            [24] 9167 	push	ar5
      005FDE 74 06            [12] 9168 	mov	a,#___str_1
      005FE0 C0 E0            [24] 9169 	push	acc
      005FE2 74 8A            [12] 9170 	mov	a,#(___str_1 >> 8)
      005FE4 C0 E0            [24] 9171 	push	acc
      005FE6 74 80            [12] 9172 	mov	a,#0x80
      005FE8 C0 E0            [24] 9173 	push	acc
      005FEA 12 71 45         [24] 9174 	lcall	_printf
      005FED E5 81            [12] 9175 	mov	a,sp
      005FEF 24 F9            [12] 9176 	add	a,#0xf9
      005FF1 F5 81            [12] 9177 	mov	sp,a
      005FF3 D0 01            [24] 9178 	pop	ar1
      005FF5 D0 02            [24] 9179 	pop	ar2
      005FF7 D0 03            [24] 9180 	pop	ar3
      005FF9 D0 04            [24] 9181 	pop	ar4
      005FFB D0 05            [24] 9182 	pop	ar5
                                   9183 ;	calc.c:66: printf("%011lo\t", d);
      005FFD C0 05            [24] 9184 	push	ar5
      005FFF C0 04            [24] 9185 	push	ar4
      006001 C0 03            [24] 9186 	push	ar3
      006003 C0 02            [24] 9187 	push	ar2
      006005 C0 01            [24] 9188 	push	ar1
      006007 C0 02            [24] 9189 	push	ar2
      006009 C0 03            [24] 9190 	push	ar3
      00600B C0 04            [24] 9191 	push	ar4
      00600D C0 05            [24] 9192 	push	ar5
      00600F 74 0E            [12] 9193 	mov	a,#___str_2
      006011 C0 E0            [24] 9194 	push	acc
      006013 74 8A            [12] 9195 	mov	a,#(___str_2 >> 8)
      006015 C0 E0            [24] 9196 	push	acc
      006017 74 80            [12] 9197 	mov	a,#0x80
      006019 C0 E0            [24] 9198 	push	acc
      00601B 12 71 45         [24] 9199 	lcall	_printf
      00601E E5 81            [12] 9200 	mov	a,sp
      006020 24 F9            [12] 9201 	add	a,#0xf9
      006022 F5 81            [12] 9202 	mov	sp,a
      006024 D0 01            [24] 9203 	pop	ar1
      006026 D0 02            [24] 9204 	pop	ar2
      006028 D0 03            [24] 9205 	pop	ar3
      00602A D0 04            [24] 9206 	pop	ar4
      00602C D0 05            [24] 9207 	pop	ar5
                                   9208 ;	calc.c:67: printbin(d);
      00602E E5 08            [12] 9209 	mov	a,_bp
      006030 24 16            [12] 9210 	add	a,#0x16
      006032 F8               [12] 9211 	mov	r0,a
      006033 A6 02            [24] 9212 	mov	@r0,ar2
      006035 08               [12] 9213 	inc	r0
      006036 A6 03            [24] 9214 	mov	@r0,ar3
      006038 08               [12] 9215 	inc	r0
      006039 A6 04            [24] 9216 	mov	@r0,ar4
      00603B 08               [12] 9217 	inc	r0
      00603C A6 05            [24] 9218 	mov	@r0,ar5
                                   9219 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      00603E E5 08            [12] 9220 	mov	a,_bp
      006040 24 1A            [12] 9221 	add	a,#0x1a
      006042 F8               [12] 9222 	mov	r0,a
      006043 E4               [12] 9223 	clr	a
      006044 F6               [12] 9224 	mov	@r0,a
      006045 08               [12] 9225 	inc	r0
      006046 F6               [12] 9226 	mov	@r0,a
      006047 08               [12] 9227 	inc	r0
      006048 F6               [12] 9228 	mov	@r0,a
      006049 08               [12] 9229 	inc	r0
      00604A 76 80            [12] 9230 	mov	@r0,#0x80
      00604C                       9231 00156$:
                                   9232 ;	calc.c:58: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      00604C C0 01            [24] 9233 	push	ar1
      00604E E5 08            [12] 9234 	mov	a,_bp
      006050 24 16            [12] 9235 	add	a,#0x16
      006052 F8               [12] 9236 	mov	r0,a
      006053 86 02            [24] 9237 	mov	ar2,@r0
      006055 08               [12] 9238 	inc	r0
      006056 86 03            [24] 9239 	mov	ar3,@r0
      006058 08               [12] 9240 	inc	r0
      006059 86 05            [24] 9241 	mov	ar5,@r0
      00605B 08               [12] 9242 	inc	r0
      00605C 86 07            [24] 9243 	mov	ar7,@r0
      00605E E5 08            [12] 9244 	mov	a,_bp
      006060 24 1A            [12] 9245 	add	a,#0x1a
      006062 F8               [12] 9246 	mov	r0,a
      006063 E6               [12] 9247 	mov	a,@r0
      006064 52 02            [12] 9248 	anl	ar2,a
      006066 08               [12] 9249 	inc	r0
      006067 E6               [12] 9250 	mov	a,@r0
      006068 52 03            [12] 9251 	anl	ar3,a
      00606A 08               [12] 9252 	inc	r0
      00606B E6               [12] 9253 	mov	a,@r0
      00606C 52 05            [12] 9254 	anl	ar5,a
      00606E 08               [12] 9255 	inc	r0
      00606F E6               [12] 9256 	mov	a,@r0
      006070 52 07            [12] 9257 	anl	ar7,a
      006072 D0 01            [24] 9258 	pop	ar1
      006074 EA               [12] 9259 	mov	a,r2
      006075 4B               [12] 9260 	orl	a,r3
      006076 4D               [12] 9261 	orl	a,r5
      006077 4F               [12] 9262 	orl	a,r7
      006078 60 06            [24] 9263 	jz	00174$
      00607A 7E 31            [12] 9264 	mov	r6,#0x31
      00607C 7F 00            [12] 9265 	mov	r7,#0x00
      00607E 80 04            [24] 9266 	sjmp	00175$
      006080                       9267 00174$:
      006080 7E 30            [12] 9268 	mov	r6,#0x30
      006082 7F 00            [12] 9269 	mov	r7,#0x00
      006084                       9270 00175$:
      006084 8E 82            [24] 9271 	mov	dpl,r6
      006086 8F 83            [24] 9272 	mov	dph,r7
      006088 12 2C 1F         [24] 9273 	lcall	_putchar
                                   9274 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      00608B E5 08            [12] 9275 	mov	a,_bp
      00608D 24 1A            [12] 9276 	add	a,#0x1a
      00608F F8               [12] 9277 	mov	r0,a
      006090 08               [12] 9278 	inc	r0
      006091 08               [12] 9279 	inc	r0
      006092 08               [12] 9280 	inc	r0
      006093 E6               [12] 9281 	mov	a,@r0
      006094 C3               [12] 9282 	clr	c
      006095 13               [12] 9283 	rrc	a
      006096 F6               [12] 9284 	mov	@r0,a
      006097 18               [12] 9285 	dec	r0
      006098 E6               [12] 9286 	mov	a,@r0
      006099 13               [12] 9287 	rrc	a
      00609A F6               [12] 9288 	mov	@r0,a
      00609B 18               [12] 9289 	dec	r0
      00609C E6               [12] 9290 	mov	a,@r0
      00609D 13               [12] 9291 	rrc	a
      00609E F6               [12] 9292 	mov	@r0,a
      00609F 18               [12] 9293 	dec	r0
      0060A0 E6               [12] 9294 	mov	a,@r0
      0060A1 13               [12] 9295 	rrc	a
      0060A2 F6               [12] 9296 	mov	@r0,a
      0060A3 E5 08            [12] 9297 	mov	a,_bp
      0060A5 24 1A            [12] 9298 	add	a,#0x1a
      0060A7 F8               [12] 9299 	mov	r0,a
      0060A8 E6               [12] 9300 	mov	a,@r0
      0060A9 08               [12] 9301 	inc	r0
      0060AA 46               [12] 9302 	orl	a,@r0
      0060AB 08               [12] 9303 	inc	r0
      0060AC 46               [12] 9304 	orl	a,@r0
      0060AD 08               [12] 9305 	inc	r0
      0060AE 46               [12] 9306 	orl	a,@r0
      0060AF 70 9B            [24] 9307 	jnz	00156$
                                   9308 ;	calc.c:413: if (n > 0) printall(vals[1]);
      0060B1                       9309 00108$:
                                   9310 ;	calc.c:414: printstr("\r\nSSTOP0\t");
      0060B1 7D 07            [12] 9311 	mov	r5,#___str_20
      0060B3 7E 8B            [12] 9312 	mov	r6,#(___str_20 >> 8)
      0060B5 7F 80            [12] 9313 	mov	r7,#0x80
                                   9314 ;	calc.c:51: return;
      0060B7                       9315 00159$:
                                   9316 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0060B7 8D 82            [24] 9317 	mov	dpl,r5
      0060B9 8E 83            [24] 9318 	mov	dph,r6
      0060BB 8F F0            [24] 9319 	mov	b,r7
      0060BD 12 71 7E         [24] 9320 	lcall	__gptrget
      0060C0 FC               [12] 9321 	mov	r4,a
      0060C1 60 10            [24] 9322 	jz	00132$
      0060C3 7B 00            [12] 9323 	mov	r3,#0x00
      0060C5 8C 82            [24] 9324 	mov	dpl,r4
      0060C7 8B 83            [24] 9325 	mov	dph,r3
      0060C9 12 2C 1F         [24] 9326 	lcall	_putchar
      0060CC 0D               [12] 9327 	inc	r5
                                   9328 ;	calc.c:414: printstr("\r\nSSTOP0\t");
      0060CD BD 00 E7         [24] 9329 	cjne	r5,#0x00,00159$
      0060D0 0E               [12] 9330 	inc	r6
      0060D1 80 E4            [24] 9331 	sjmp	00159$
      0060D3                       9332 00132$:
                                   9333 ;	calc.c:415: if (n > 1) printall(vals[0]);
      0060D3 E5 08            [12] 9334 	mov	a,_bp
      0060D5 24 0C            [12] 9335 	add	a,#0x0c
      0060D7 F8               [12] 9336 	mov	r0,a
      0060D8 C3               [12] 9337 	clr	c
      0060D9 74 01            [12] 9338 	mov	a,#0x01
      0060DB 96               [12] 9339 	subb	a,@r0
      0060DC 74 80            [12] 9340 	mov	a,#(0x00 ^ 0x80)
      0060DE 08               [12] 9341 	inc	r0
      0060DF 86 F0            [24] 9342 	mov	b,@r0
      0060E1 63 F0 80         [24] 9343 	xrl	b,#0x80
      0060E4 95 F0            [12] 9344 	subb	a,b
      0060E6 40 03            [24] 9345 	jc	00341$
      0060E8 02 61 FC         [24] 9346 	ljmp	00110$
      0060EB                       9347 00341$:
      0060EB 87 04            [24] 9348 	mov	ar4,@r1
      0060ED 09               [12] 9349 	inc	r1
      0060EE 87 05            [24] 9350 	mov	ar5,@r1
      0060F0 09               [12] 9351 	inc	r1
      0060F1 87 06            [24] 9352 	mov	ar6,@r1
      0060F3 09               [12] 9353 	inc	r1
      0060F4 87 07            [24] 9354 	mov	ar7,@r1
                                   9355 ;	calc.c:64: printf("%08lx\t", d);
      0060F6 C0 07            [24] 9356 	push	ar7
      0060F8 C0 06            [24] 9357 	push	ar6
      0060FA C0 05            [24] 9358 	push	ar5
      0060FC C0 04            [24] 9359 	push	ar4
      0060FE C0 04            [24] 9360 	push	ar4
      006100 C0 05            [24] 9361 	push	ar5
      006102 C0 06            [24] 9362 	push	ar6
      006104 C0 07            [24] 9363 	push	ar7
      006106 74 FF            [12] 9364 	mov	a,#___str_0
      006108 C0 E0            [24] 9365 	push	acc
      00610A 74 89            [12] 9366 	mov	a,#(___str_0 >> 8)
      00610C C0 E0            [24] 9367 	push	acc
      00610E 74 80            [12] 9368 	mov	a,#0x80
      006110 C0 E0            [24] 9369 	push	acc
      006112 12 71 45         [24] 9370 	lcall	_printf
      006115 E5 81            [12] 9371 	mov	a,sp
      006117 24 F9            [12] 9372 	add	a,#0xf9
      006119 F5 81            [12] 9373 	mov	sp,a
      00611B D0 04            [24] 9374 	pop	ar4
      00611D D0 05            [24] 9375 	pop	ar5
      00611F D0 06            [24] 9376 	pop	ar6
      006121 D0 07            [24] 9377 	pop	ar7
                                   9378 ;	calc.c:65: printf("% 11ld\t", d);
      006123 C0 07            [24] 9379 	push	ar7
      006125 C0 06            [24] 9380 	push	ar6
      006127 C0 05            [24] 9381 	push	ar5
      006129 C0 04            [24] 9382 	push	ar4
      00612B C0 04            [24] 9383 	push	ar4
      00612D C0 05            [24] 9384 	push	ar5
      00612F C0 06            [24] 9385 	push	ar6
      006131 C0 07            [24] 9386 	push	ar7
      006133 74 06            [12] 9387 	mov	a,#___str_1
      006135 C0 E0            [24] 9388 	push	acc
      006137 74 8A            [12] 9389 	mov	a,#(___str_1 >> 8)
      006139 C0 E0            [24] 9390 	push	acc
      00613B 74 80            [12] 9391 	mov	a,#0x80
      00613D C0 E0            [24] 9392 	push	acc
      00613F 12 71 45         [24] 9393 	lcall	_printf
      006142 E5 81            [12] 9394 	mov	a,sp
      006144 24 F9            [12] 9395 	add	a,#0xf9
      006146 F5 81            [12] 9396 	mov	sp,a
      006148 D0 04            [24] 9397 	pop	ar4
      00614A D0 05            [24] 9398 	pop	ar5
      00614C D0 06            [24] 9399 	pop	ar6
      00614E D0 07            [24] 9400 	pop	ar7
                                   9401 ;	calc.c:66: printf("%011lo\t", d);
      006150 C0 07            [24] 9402 	push	ar7
      006152 C0 06            [24] 9403 	push	ar6
      006154 C0 05            [24] 9404 	push	ar5
      006156 C0 04            [24] 9405 	push	ar4
      006158 C0 04            [24] 9406 	push	ar4
      00615A C0 05            [24] 9407 	push	ar5
      00615C C0 06            [24] 9408 	push	ar6
      00615E C0 07            [24] 9409 	push	ar7
      006160 74 0E            [12] 9410 	mov	a,#___str_2
      006162 C0 E0            [24] 9411 	push	acc
      006164 74 8A            [12] 9412 	mov	a,#(___str_2 >> 8)
      006166 C0 E0            [24] 9413 	push	acc
      006168 74 80            [12] 9414 	mov	a,#0x80
      00616A C0 E0            [24] 9415 	push	acc
      00616C 12 71 45         [24] 9416 	lcall	_printf
      00616F E5 81            [12] 9417 	mov	a,sp
      006171 24 F9            [12] 9418 	add	a,#0xf9
      006173 F5 81            [12] 9419 	mov	sp,a
      006175 D0 04            [24] 9420 	pop	ar4
      006177 D0 05            [24] 9421 	pop	ar5
      006179 D0 06            [24] 9422 	pop	ar6
      00617B D0 07            [24] 9423 	pop	ar7
                                   9424 ;	calc.c:67: printbin(d);
      00617D E5 08            [12] 9425 	mov	a,_bp
      00617F 24 16            [12] 9426 	add	a,#0x16
      006181 F8               [12] 9427 	mov	r0,a
      006182 A6 04            [24] 9428 	mov	@r0,ar4
      006184 08               [12] 9429 	inc	r0
      006185 A6 05            [24] 9430 	mov	@r0,ar5
      006187 08               [12] 9431 	inc	r0
      006188 A6 06            [24] 9432 	mov	@r0,ar6
      00618A 08               [12] 9433 	inc	r0
      00618B A6 07            [24] 9434 	mov	@r0,ar7
                                   9435 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      00618D E5 08            [12] 9436 	mov	a,_bp
      00618F 24 1A            [12] 9437 	add	a,#0x1a
      006191 F8               [12] 9438 	mov	r0,a
      006192 E4               [12] 9439 	clr	a
      006193 F6               [12] 9440 	mov	@r0,a
      006194 08               [12] 9441 	inc	r0
      006195 F6               [12] 9442 	mov	@r0,a
      006196 08               [12] 9443 	inc	r0
      006197 F6               [12] 9444 	mov	@r0,a
      006198 08               [12] 9445 	inc	r0
      006199 76 80            [12] 9446 	mov	@r0,#0x80
      00619B                       9447 00161$:
                                   9448 ;	calc.c:58: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      00619B E5 08            [12] 9449 	mov	a,_bp
      00619D 24 16            [12] 9450 	add	a,#0x16
      00619F F8               [12] 9451 	mov	r0,a
      0061A0 86 04            [24] 9452 	mov	ar4,@r0
      0061A2 08               [12] 9453 	inc	r0
      0061A3 86 05            [24] 9454 	mov	ar5,@r0
      0061A5 08               [12] 9455 	inc	r0
      0061A6 86 06            [24] 9456 	mov	ar6,@r0
      0061A8 08               [12] 9457 	inc	r0
      0061A9 86 07            [24] 9458 	mov	ar7,@r0
      0061AB E5 08            [12] 9459 	mov	a,_bp
      0061AD 24 1A            [12] 9460 	add	a,#0x1a
      0061AF F8               [12] 9461 	mov	r0,a
      0061B0 E6               [12] 9462 	mov	a,@r0
      0061B1 52 04            [12] 9463 	anl	ar4,a
      0061B3 08               [12] 9464 	inc	r0
      0061B4 E6               [12] 9465 	mov	a,@r0
      0061B5 52 05            [12] 9466 	anl	ar5,a
      0061B7 08               [12] 9467 	inc	r0
      0061B8 E6               [12] 9468 	mov	a,@r0
      0061B9 52 06            [12] 9469 	anl	ar6,a
      0061BB 08               [12] 9470 	inc	r0
      0061BC E6               [12] 9471 	mov	a,@r0
      0061BD 52 07            [12] 9472 	anl	ar7,a
      0061BF EC               [12] 9473 	mov	a,r4
      0061C0 4D               [12] 9474 	orl	a,r5
      0061C1 4E               [12] 9475 	orl	a,r6
      0061C2 4F               [12] 9476 	orl	a,r7
      0061C3 60 06            [24] 9477 	jz	00176$
      0061C5 7E 31            [12] 9478 	mov	r6,#0x31
      0061C7 7F 00            [12] 9479 	mov	r7,#0x00
      0061C9 80 04            [24] 9480 	sjmp	00177$
      0061CB                       9481 00176$:
      0061CB 7E 30            [12] 9482 	mov	r6,#0x30
      0061CD 7F 00            [12] 9483 	mov	r7,#0x00
      0061CF                       9484 00177$:
      0061CF 8E 82            [24] 9485 	mov	dpl,r6
      0061D1 8F 83            [24] 9486 	mov	dph,r7
      0061D3 12 2C 1F         [24] 9487 	lcall	_putchar
                                   9488 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      0061D6 E5 08            [12] 9489 	mov	a,_bp
      0061D8 24 1A            [12] 9490 	add	a,#0x1a
      0061DA F8               [12] 9491 	mov	r0,a
      0061DB 08               [12] 9492 	inc	r0
      0061DC 08               [12] 9493 	inc	r0
      0061DD 08               [12] 9494 	inc	r0
      0061DE E6               [12] 9495 	mov	a,@r0
      0061DF C3               [12] 9496 	clr	c
      0061E0 13               [12] 9497 	rrc	a
      0061E1 F6               [12] 9498 	mov	@r0,a
      0061E2 18               [12] 9499 	dec	r0
      0061E3 E6               [12] 9500 	mov	a,@r0
      0061E4 13               [12] 9501 	rrc	a
      0061E5 F6               [12] 9502 	mov	@r0,a
      0061E6 18               [12] 9503 	dec	r0
      0061E7 E6               [12] 9504 	mov	a,@r0
      0061E8 13               [12] 9505 	rrc	a
      0061E9 F6               [12] 9506 	mov	@r0,a
      0061EA 18               [12] 9507 	dec	r0
      0061EB E6               [12] 9508 	mov	a,@r0
      0061EC 13               [12] 9509 	rrc	a
      0061ED F6               [12] 9510 	mov	@r0,a
      0061EE E5 08            [12] 9511 	mov	a,_bp
      0061F0 24 1A            [12] 9512 	add	a,#0x1a
      0061F2 F8               [12] 9513 	mov	r0,a
      0061F3 E6               [12] 9514 	mov	a,@r0
      0061F4 08               [12] 9515 	inc	r0
      0061F5 46               [12] 9516 	orl	a,@r0
      0061F6 08               [12] 9517 	inc	r0
      0061F7 46               [12] 9518 	orl	a,@r0
      0061F8 08               [12] 9519 	inc	r0
      0061F9 46               [12] 9520 	orl	a,@r0
      0061FA 70 9F            [24] 9521 	jnz	00161$
                                   9522 ;	calc.c:415: if (n > 1) printall(vals[0]);
      0061FC                       9523 00110$:
                                   9524 ;	calc.c:416: printstr("\r\n");
      0061FC 7D 16            [12] 9525 	mov	r5,#___str_3
      0061FE 7E 8A            [12] 9526 	mov	r6,#(___str_3 >> 8)
      006200 7F 80            [12] 9527 	mov	r7,#0x80
                                   9528 ;	calc.c:51: return;
      006202                       9529 00164$:
                                   9530 ;	calc.c:49: for (; *s; s++) putchar(*s);
      006202 8D 82            [24] 9531 	mov	dpl,r5
      006204 8E 83            [24] 9532 	mov	dph,r6
      006206 8F F0            [24] 9533 	mov	b,r7
      006208 12 71 7E         [24] 9534 	lcall	__gptrget
      00620B FC               [12] 9535 	mov	r4,a
      00620C 60 10            [24] 9536 	jz	00137$
      00620E 7B 00            [12] 9537 	mov	r3,#0x00
      006210 8C 82            [24] 9538 	mov	dpl,r4
      006212 8B 83            [24] 9539 	mov	dph,r3
      006214 12 2C 1F         [24] 9540 	lcall	_putchar
      006217 0D               [12] 9541 	inc	r5
                                   9542 ;	calc.c:416: printstr("\r\n");
      006218 BD 00 E7         [24] 9543 	cjne	r5,#0x00,00164$
      00621B 0E               [12] 9544 	inc	r6
      00621C 80 E4            [24] 9545 	sjmp	00164$
      00621E                       9546 00137$:
                                   9547 ;	calc.c:418: return 1;
      00621E 90 00 01         [24] 9548 	mov	dptr,#0x0001
                                   9549 ;	calc.c:419: }
      006221 85 08 81         [24] 9550 	mov	sp,_bp
      006224 D0 08            [24] 9551 	pop	_bp
      006226 22               [24] 9552 	ret
                                   9553 ;------------------------------------------------------------
                                   9554 ;Allocation info for local variables in function 'help'
                                   9555 ;------------------------------------------------------------
                                   9556 ;delta                     Allocated to stack - _bp -5
                                   9557 ;_ctx                      Allocated to registers 
                                   9558 ;__1310720151              Allocated to registers 
                                   9559 ;s                         Allocated to registers r5 r6 r7 
                                   9560 ;__1310720153              Allocated to registers 
                                   9561 ;s                         Allocated to registers r5 r6 r7 
                                   9562 ;__1310720155              Allocated to registers 
                                   9563 ;s                         Allocated to registers r5 r6 r7 
                                   9564 ;__1310720157              Allocated to registers 
                                   9565 ;s                         Allocated to registers r5 r6 r7 
                                   9566 ;__1310720159              Allocated to registers 
                                   9567 ;s                         Allocated to registers r5 r6 r7 
                                   9568 ;__1310720161              Allocated to registers 
                                   9569 ;s                         Allocated to registers r5 r6 r7 
                                   9570 ;__1310720163              Allocated to registers 
                                   9571 ;s                         Allocated to registers r5 r6 r7 
                                   9572 ;__1310720165              Allocated to registers 
                                   9573 ;s                         Allocated to registers r5 r6 r7 
                                   9574 ;__1310720167              Allocated to registers 
                                   9575 ;s                         Allocated to registers r5 r6 r7 
                                   9576 ;__1310720169              Allocated to registers 
                                   9577 ;s                         Allocated to registers r5 r6 r7 
                                   9578 ;__1310720171              Allocated to registers 
                                   9579 ;s                         Allocated to registers r5 r6 r7 
                                   9580 ;__1310720173              Allocated to registers 
                                   9581 ;s                         Allocated to registers r5 r6 r7 
                                   9582 ;__1310720175              Allocated to registers 
                                   9583 ;s                         Allocated to registers r5 r6 r7 
                                   9584 ;__1310720177              Allocated to registers 
                                   9585 ;s                         Allocated to registers r5 r6 r7 
                                   9586 ;__1310720179              Allocated to registers 
                                   9587 ;s                         Allocated to registers r5 r6 r7 
                                   9588 ;__1310720181              Allocated to registers 
                                   9589 ;s                         Allocated to registers r5 r6 r7 
                                   9590 ;__1310720183              Allocated to registers 
                                   9591 ;s                         Allocated to registers r5 r6 r7 
                                   9592 ;__1310720185              Allocated to registers 
                                   9593 ;s                         Allocated to registers r5 r6 r7 
                                   9594 ;__1310720187              Allocated to registers 
                                   9595 ;s                         Allocated to registers r5 r6 r7 
                                   9596 ;__1310720189              Allocated to registers 
                                   9597 ;s                         Allocated to registers r5 r6 r7 
                                   9598 ;__1310720191              Allocated to registers 
                                   9599 ;s                         Allocated to registers r5 r6 r7 
                                   9600 ;__1310720193              Allocated to registers 
                                   9601 ;s                         Allocated to registers r5 r6 r7 
                                   9602 ;__1310720195              Allocated to registers 
                                   9603 ;s                         Allocated to registers r5 r6 r7 
                                   9604 ;__1310720197              Allocated to registers 
                                   9605 ;s                         Allocated to registers r5 r6 r7 
                                   9606 ;__1310720199              Allocated to registers 
                                   9607 ;s                         Allocated to registers r5 r6 r7 
                                   9608 ;__1310720201              Allocated to registers 
                                   9609 ;s                         Allocated to registers r5 r6 r7 
                                   9610 ;__1310720203              Allocated to registers 
                                   9611 ;s                         Allocated to registers r5 r6 r7 
                                   9612 ;__1310720205              Allocated to registers 
                                   9613 ;s                         Allocated to registers r5 r6 r7 
                                   9614 ;__1310720207              Allocated to registers 
                                   9615 ;s                         Allocated to registers r5 r6 r7 
                                   9616 ;__1310720209              Allocated to registers 
                                   9617 ;s                         Allocated to registers r5 r6 r7 
                                   9618 ;__1310720211              Allocated to registers 
                                   9619 ;s                         Allocated to registers r5 r6 r7 
                                   9620 ;------------------------------------------------------------
                                   9621 ;	calc.c:421: static int help(void *_ctx, delta_t *delta) __reentrant {
                                   9622 ;	-----------------------------------------
                                   9623 ;	 function help
                                   9624 ;	-----------------------------------------
      006227                       9625 _help:
      006227 C0 08            [24] 9626 	push	_bp
      006229 85 81 08         [24] 9627 	mov	_bp,sp
                                   9628 ;	calc.c:425: printstr("\r\nHhOo\tbase 16 10 8 2\r\n");
      00622C 7D 11            [12] 9629 	mov	r5,#___str_21
      00622E 7E 8B            [12] 9630 	mov	r6,#(___str_21 >> 8)
      006230 7F 80            [12] 9631 	mov	r7,#0x80
                                   9632 ;	calc.c:51: return;
      006232                       9633 00164$:
                                   9634 ;	calc.c:49: for (; *s; s++) putchar(*s);
      006232 8D 82            [24] 9635 	mov	dpl,r5
      006234 8E 83            [24] 9636 	mov	dph,r6
      006236 8F F0            [24] 9637 	mov	b,r7
      006238 12 71 7E         [24] 9638 	lcall	__gptrget
      00623B FC               [12] 9639 	mov	r4,a
      00623C 60 10            [24] 9640 	jz	00102$
      00623E 7B 00            [12] 9641 	mov	r3,#0x00
      006240 8C 82            [24] 9642 	mov	dpl,r4
      006242 8B 83            [24] 9643 	mov	dph,r3
      006244 12 2C 1F         [24] 9644 	lcall	_putchar
      006247 0D               [12] 9645 	inc	r5
                                   9646 ;	calc.c:425: printstr("\r\nHhOo\tbase 16 10 8 2\r\n");
      006248 BD 00 E7         [24] 9647 	cjne	r5,#0x00,00164$
      00624B 0E               [12] 9648 	inc	r6
      00624C 80 E4            [24] 9649 	sjmp	00164$
      00624E                       9650 00102$:
                                   9651 ;	calc.c:426: printstr("p.\tpop top\r\n");
      00624E 7D 29            [12] 9652 	mov	r5,#___str_22
      006250 7E 8B            [12] 9653 	mov	r6,#(___str_22 >> 8)
      006252 7F 80            [12] 9654 	mov	r7,#0x80
                                   9655 ;	calc.c:51: return;
      006254                       9656 00167$:
                                   9657 ;	calc.c:49: for (; *s; s++) putchar(*s);
      006254 8D 82            [24] 9658 	mov	dpl,r5
      006256 8E 83            [24] 9659 	mov	dph,r6
      006258 8F F0            [24] 9660 	mov	b,r7
      00625A 12 71 7E         [24] 9661 	lcall	__gptrget
      00625D FC               [12] 9662 	mov	r4,a
      00625E 60 10            [24] 9663 	jz	00104$
      006260 7B 00            [12] 9664 	mov	r3,#0x00
      006262 8C 82            [24] 9665 	mov	dpl,r4
      006264 8B 83            [24] 9666 	mov	dph,r3
      006266 12 2C 1F         [24] 9667 	lcall	_putchar
      006269 0D               [12] 9668 	inc	r5
                                   9669 ;	calc.c:426: printstr("p.\tpop top\r\n");
      00626A BD 00 E7         [24] 9670 	cjne	r5,#0x00,00167$
      00626D 0E               [12] 9671 	inc	r6
      00626E 80 E4            [24] 9672 	sjmp	00167$
      006270                       9673 00104$:
                                   9674 ;	calc.c:427: printstr("P\tpop stack\r\n");
      006270 7D 36            [12] 9675 	mov	r5,#___str_23
      006272 7E 8B            [12] 9676 	mov	r6,#(___str_23 >> 8)
      006274 7F 80            [12] 9677 	mov	r7,#0x80
                                   9678 ;	calc.c:51: return;
      006276                       9679 00170$:
                                   9680 ;	calc.c:49: for (; *s; s++) putchar(*s);
      006276 8D 82            [24] 9681 	mov	dpl,r5
      006278 8E 83            [24] 9682 	mov	dph,r6
      00627A 8F F0            [24] 9683 	mov	b,r7
      00627C 12 71 7E         [24] 9684 	lcall	__gptrget
      00627F FC               [12] 9685 	mov	r4,a
      006280 60 10            [24] 9686 	jz	00106$
      006282 7B 00            [12] 9687 	mov	r3,#0x00
      006284 8C 82            [24] 9688 	mov	dpl,r4
      006286 8B 83            [24] 9689 	mov	dph,r3
      006288 12 2C 1F         [24] 9690 	lcall	_putchar
      00628B 0D               [12] 9691 	inc	r5
                                   9692 ;	calc.c:427: printstr("P\tpop stack\r\n");
      00628C BD 00 E7         [24] 9693 	cjne	r5,#0x00,00170$
      00628F 0E               [12] 9694 	inc	r6
      006290 80 E4            [24] 9695 	sjmp	00170$
      006292                       9696 00106$:
                                   9697 ;	calc.c:428: printstr("v\tpeek top\r\n");
      006292 7D 44            [12] 9698 	mov	r5,#___str_24
      006294 7E 8B            [12] 9699 	mov	r6,#(___str_24 >> 8)
      006296 7F 80            [12] 9700 	mov	r7,#0x80
                                   9701 ;	calc.c:51: return;
      006298                       9702 00173$:
                                   9703 ;	calc.c:49: for (; *s; s++) putchar(*s);
      006298 8D 82            [24] 9704 	mov	dpl,r5
      00629A 8E 83            [24] 9705 	mov	dph,r6
      00629C 8F F0            [24] 9706 	mov	b,r7
      00629E 12 71 7E         [24] 9707 	lcall	__gptrget
      0062A1 FC               [12] 9708 	mov	r4,a
      0062A2 60 10            [24] 9709 	jz	00108$
      0062A4 7B 00            [12] 9710 	mov	r3,#0x00
      0062A6 8C 82            [24] 9711 	mov	dpl,r4
      0062A8 8B 83            [24] 9712 	mov	dph,r3
      0062AA 12 2C 1F         [24] 9713 	lcall	_putchar
      0062AD 0D               [12] 9714 	inc	r5
                                   9715 ;	calc.c:428: printstr("v\tpeek top\r\n");
      0062AE BD 00 E7         [24] 9716 	cjne	r5,#0x00,00173$
      0062B1 0E               [12] 9717 	inc	r6
      0062B2 80 E4            [24] 9718 	sjmp	00173$
      0062B4                       9719 00108$:
                                   9720 ;	calc.c:429: printstr("V\tpeek stack\r\n");
      0062B4 7D 51            [12] 9721 	mov	r5,#___str_25
      0062B6 7E 8B            [12] 9722 	mov	r6,#(___str_25 >> 8)
      0062B8 7F 80            [12] 9723 	mov	r7,#0x80
                                   9724 ;	calc.c:51: return;
      0062BA                       9725 00176$:
                                   9726 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0062BA 8D 82            [24] 9727 	mov	dpl,r5
      0062BC 8E 83            [24] 9728 	mov	dph,r6
      0062BE 8F F0            [24] 9729 	mov	b,r7
      0062C0 12 71 7E         [24] 9730 	lcall	__gptrget
      0062C3 FC               [12] 9731 	mov	r4,a
      0062C4 60 10            [24] 9732 	jz	00110$
      0062C6 7B 00            [12] 9733 	mov	r3,#0x00
      0062C8 8C 82            [24] 9734 	mov	dpl,r4
      0062CA 8B 83            [24] 9735 	mov	dph,r3
      0062CC 12 2C 1F         [24] 9736 	lcall	_putchar
      0062CF 0D               [12] 9737 	inc	r5
                                   9738 ;	calc.c:429: printstr("V\tpeek stack\r\n");
      0062D0 BD 00 E7         [24] 9739 	cjne	r5,#0x00,00176$
      0062D3 0E               [12] 9740 	inc	r6
      0062D4 80 E4            [24] 9741 	sjmp	00176$
      0062D6                       9742 00110$:
                                   9743 ;	calc.c:430: printstr("i\treset acc\r\n");
      0062D6 7D 60            [12] 9744 	mov	r5,#___str_26
      0062D8 7E 8B            [12] 9745 	mov	r6,#(___str_26 >> 8)
      0062DA 7F 80            [12] 9746 	mov	r7,#0x80
                                   9747 ;	calc.c:51: return;
      0062DC                       9748 00179$:
                                   9749 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0062DC 8D 82            [24] 9750 	mov	dpl,r5
      0062DE 8E 83            [24] 9751 	mov	dph,r6
      0062E0 8F F0            [24] 9752 	mov	b,r7
      0062E2 12 71 7E         [24] 9753 	lcall	__gptrget
      0062E5 FC               [12] 9754 	mov	r4,a
      0062E6 60 10            [24] 9755 	jz	00112$
      0062E8 7B 00            [12] 9756 	mov	r3,#0x00
      0062EA 8C 82            [24] 9757 	mov	dpl,r4
      0062EC 8B 83            [24] 9758 	mov	dph,r3
      0062EE 12 2C 1F         [24] 9759 	lcall	_putchar
      0062F1 0D               [12] 9760 	inc	r5
                                   9761 ;	calc.c:430: printstr("i\treset acc\r\n");
      0062F2 BD 00 E7         [24] 9762 	cjne	r5,#0x00,00179$
      0062F5 0E               [12] 9763 	inc	r6
      0062F6 80 E4            [24] 9764 	sjmp	00179$
      0062F8                       9765 00112$:
                                   9766 ;	calc.c:431: printstr("I\treset and discard acc\r\n");
      0062F8 7D 6E            [12] 9767 	mov	r5,#___str_27
      0062FA 7E 8B            [12] 9768 	mov	r6,#(___str_27 >> 8)
      0062FC 7F 80            [12] 9769 	mov	r7,#0x80
                                   9770 ;	calc.c:51: return;
      0062FE                       9771 00182$:
                                   9772 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0062FE 8D 82            [24] 9773 	mov	dpl,r5
      006300 8E 83            [24] 9774 	mov	dph,r6
      006302 8F F0            [24] 9775 	mov	b,r7
      006304 12 71 7E         [24] 9776 	lcall	__gptrget
      006307 FC               [12] 9777 	mov	r4,a
      006308 60 10            [24] 9778 	jz	00114$
      00630A 7B 00            [12] 9779 	mov	r3,#0x00
      00630C 8C 82            [24] 9780 	mov	dpl,r4
      00630E 8B 83            [24] 9781 	mov	dph,r3
      006310 12 2C 1F         [24] 9782 	lcall	_putchar
      006313 0D               [12] 9783 	inc	r5
                                   9784 ;	calc.c:431: printstr("I\treset and discard acc\r\n");
      006314 BD 00 E7         [24] 9785 	cjne	r5,#0x00,00182$
      006317 0E               [12] 9786 	inc	r6
      006318 80 E4            [24] 9787 	sjmp	00182$
      00631A                       9788 00114$:
                                   9789 ;	calc.c:432: printstr("x\texchange top 2\r\n");
      00631A 7D 88            [12] 9790 	mov	r5,#___str_28
      00631C 7E 8B            [12] 9791 	mov	r6,#(___str_28 >> 8)
      00631E 7F 80            [12] 9792 	mov	r7,#0x80
                                   9793 ;	calc.c:51: return;
      006320                       9794 00185$:
                                   9795 ;	calc.c:49: for (; *s; s++) putchar(*s);
      006320 8D 82            [24] 9796 	mov	dpl,r5
      006322 8E 83            [24] 9797 	mov	dph,r6
      006324 8F F0            [24] 9798 	mov	b,r7
      006326 12 71 7E         [24] 9799 	lcall	__gptrget
      006329 FC               [12] 9800 	mov	r4,a
      00632A 60 10            [24] 9801 	jz	00116$
      00632C 7B 00            [12] 9802 	mov	r3,#0x00
      00632E 8C 82            [24] 9803 	mov	dpl,r4
      006330 8B 83            [24] 9804 	mov	dph,r3
      006332 12 2C 1F         [24] 9805 	lcall	_putchar
      006335 0D               [12] 9806 	inc	r5
                                   9807 ;	calc.c:432: printstr("x\texchange top 2\r\n");
      006336 BD 00 E7         [24] 9808 	cjne	r5,#0x00,00185$
      006339 0E               [12] 9809 	inc	r6
      00633A 80 E4            [24] 9810 	sjmp	00185$
      00633C                       9811 00116$:
                                   9812 ;	calc.c:433: printstr("X\texchange stacks primary <-> secondary\r\n");
      00633C 7D 9B            [12] 9813 	mov	r5,#___str_29
      00633E 7E 8B            [12] 9814 	mov	r6,#(___str_29 >> 8)
      006340 7F 80            [12] 9815 	mov	r7,#0x80
                                   9816 ;	calc.c:51: return;
      006342                       9817 00188$:
                                   9818 ;	calc.c:49: for (; *s; s++) putchar(*s);
      006342 8D 82            [24] 9819 	mov	dpl,r5
      006344 8E 83            [24] 9820 	mov	dph,r6
      006346 8F F0            [24] 9821 	mov	b,r7
      006348 12 71 7E         [24] 9822 	lcall	__gptrget
      00634B FC               [12] 9823 	mov	r4,a
      00634C 60 10            [24] 9824 	jz	00118$
      00634E 7B 00            [12] 9825 	mov	r3,#0x00
      006350 8C 82            [24] 9826 	mov	dpl,r4
      006352 8B 83            [24] 9827 	mov	dph,r3
      006354 12 2C 1F         [24] 9828 	lcall	_putchar
      006357 0D               [12] 9829 	inc	r5
                                   9830 ;	calc.c:433: printstr("X\texchange stacks primary <-> secondary\r\n");
      006358 BD 00 E7         [24] 9831 	cjne	r5,#0x00,00188$
      00635B 0E               [12] 9832 	inc	r6
      00635C 80 E4            [24] 9833 	sjmp	00188$
      00635E                       9834 00118$:
                                   9835 ;	calc.c:434: printstr("T\texchange tops primary <-> secondary\r\n");
      00635E 7D C5            [12] 9836 	mov	r5,#___str_30
      006360 7E 8B            [12] 9837 	mov	r6,#(___str_30 >> 8)
      006362 7F 80            [12] 9838 	mov	r7,#0x80
                                   9839 ;	calc.c:51: return;
      006364                       9840 00191$:
                                   9841 ;	calc.c:49: for (; *s; s++) putchar(*s);
      006364 8D 82            [24] 9842 	mov	dpl,r5
      006366 8E 83            [24] 9843 	mov	dph,r6
      006368 8F F0            [24] 9844 	mov	b,r7
      00636A 12 71 7E         [24] 9845 	lcall	__gptrget
      00636D FC               [12] 9846 	mov	r4,a
      00636E 60 10            [24] 9847 	jz	00120$
      006370 7B 00            [12] 9848 	mov	r3,#0x00
      006372 8C 82            [24] 9849 	mov	dpl,r4
      006374 8B 83            [24] 9850 	mov	dph,r3
      006376 12 2C 1F         [24] 9851 	lcall	_putchar
      006379 0D               [12] 9852 	inc	r5
                                   9853 ;	calc.c:434: printstr("T\texchange tops primary <-> secondary\r\n");
      00637A BD 00 E7         [24] 9854 	cjne	r5,#0x00,00191$
      00637D 0E               [12] 9855 	inc	r6
      00637E 80 E4            [24] 9856 	sjmp	00191$
      006380                       9857 00120$:
                                   9858 ;	calc.c:435: printstr("U\tcopy top secondary -> primary\r\n");
      006380 7D ED            [12] 9859 	mov	r5,#___str_31
      006382 7E 8B            [12] 9860 	mov	r6,#(___str_31 >> 8)
      006384 7F 80            [12] 9861 	mov	r7,#0x80
                                   9862 ;	calc.c:51: return;
      006386                       9863 00194$:
                                   9864 ;	calc.c:49: for (; *s; s++) putchar(*s);
      006386 8D 82            [24] 9865 	mov	dpl,r5
      006388 8E 83            [24] 9866 	mov	dph,r6
      00638A 8F F0            [24] 9867 	mov	b,r7
      00638C 12 71 7E         [24] 9868 	lcall	__gptrget
      00638F FC               [12] 9869 	mov	r4,a
      006390 60 10            [24] 9870 	jz	00122$
      006392 7B 00            [12] 9871 	mov	r3,#0x00
      006394 8C 82            [24] 9872 	mov	dpl,r4
      006396 8B 83            [24] 9873 	mov	dph,r3
      006398 12 2C 1F         [24] 9874 	lcall	_putchar
      00639B 0D               [12] 9875 	inc	r5
                                   9876 ;	calc.c:435: printstr("U\tcopy top secondary -> primary\r\n");
      00639C BD 00 E7         [24] 9877 	cjne	r5,#0x00,00194$
      00639F 0E               [12] 9878 	inc	r6
      0063A0 80 E4            [24] 9879 	sjmp	00194$
      0063A2                       9880 00122$:
                                   9881 ;	calc.c:436: printstr("u\tcopy top primary -> secondary\r\n");
      0063A2 7D 0F            [12] 9882 	mov	r5,#___str_32
      0063A4 7E 8C            [12] 9883 	mov	r6,#(___str_32 >> 8)
      0063A6 7F 80            [12] 9884 	mov	r7,#0x80
                                   9885 ;	calc.c:51: return;
      0063A8                       9886 00197$:
                                   9887 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0063A8 8D 82            [24] 9888 	mov	dpl,r5
      0063AA 8E 83            [24] 9889 	mov	dph,r6
      0063AC 8F F0            [24] 9890 	mov	b,r7
      0063AE 12 71 7E         [24] 9891 	lcall	__gptrget
      0063B1 FC               [12] 9892 	mov	r4,a
      0063B2 60 10            [24] 9893 	jz	00124$
      0063B4 7B 00            [12] 9894 	mov	r3,#0x00
      0063B6 8C 82            [24] 9895 	mov	dpl,r4
      0063B8 8B 83            [24] 9896 	mov	dph,r3
      0063BA 12 2C 1F         [24] 9897 	lcall	_putchar
      0063BD 0D               [12] 9898 	inc	r5
                                   9899 ;	calc.c:436: printstr("u\tcopy top primary -> secondary\r\n");
      0063BE BD 00 E7         [24] 9900 	cjne	r5,#0x00,00197$
      0063C1 0E               [12] 9901 	inc	r6
      0063C2 80 E4            [24] 9902 	sjmp	00197$
      0063C4                       9903 00124$:
                                   9904 ;	calc.c:437: printstr("M\tmove top secondary -> primary\r\n");
      0063C4 7D 31            [12] 9905 	mov	r5,#___str_33
      0063C6 7E 8C            [12] 9906 	mov	r6,#(___str_33 >> 8)
      0063C8 7F 80            [12] 9907 	mov	r7,#0x80
                                   9908 ;	calc.c:51: return;
      0063CA                       9909 00200$:
                                   9910 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0063CA 8D 82            [24] 9911 	mov	dpl,r5
      0063CC 8E 83            [24] 9912 	mov	dph,r6
      0063CE 8F F0            [24] 9913 	mov	b,r7
      0063D0 12 71 7E         [24] 9914 	lcall	__gptrget
      0063D3 FC               [12] 9915 	mov	r4,a
      0063D4 60 10            [24] 9916 	jz	00126$
      0063D6 7B 00            [12] 9917 	mov	r3,#0x00
      0063D8 8C 82            [24] 9918 	mov	dpl,r4
      0063DA 8B 83            [24] 9919 	mov	dph,r3
      0063DC 12 2C 1F         [24] 9920 	lcall	_putchar
      0063DF 0D               [12] 9921 	inc	r5
                                   9922 ;	calc.c:437: printstr("M\tmove top secondary -> primary\r\n");
      0063E0 BD 00 E7         [24] 9923 	cjne	r5,#0x00,00200$
      0063E3 0E               [12] 9924 	inc	r6
      0063E4 80 E4            [24] 9925 	sjmp	00200$
      0063E6                       9926 00126$:
                                   9927 ;	calc.c:438: printstr("m\tmove top primary -> secondary\r\n");
      0063E6 7D 53            [12] 9928 	mov	r5,#___str_34
      0063E8 7E 8C            [12] 9929 	mov	r6,#(___str_34 >> 8)
      0063EA 7F 80            [12] 9930 	mov	r7,#0x80
                                   9931 ;	calc.c:51: return;
      0063EC                       9932 00203$:
                                   9933 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0063EC 8D 82            [24] 9934 	mov	dpl,r5
      0063EE 8E 83            [24] 9935 	mov	dph,r6
      0063F0 8F F0            [24] 9936 	mov	b,r7
      0063F2 12 71 7E         [24] 9937 	lcall	__gptrget
      0063F5 FC               [12] 9938 	mov	r4,a
      0063F6 60 10            [24] 9939 	jz	00128$
      0063F8 7B 00            [12] 9940 	mov	r3,#0x00
      0063FA 8C 82            [24] 9941 	mov	dpl,r4
      0063FC 8B 83            [24] 9942 	mov	dph,r3
      0063FE 12 2C 1F         [24] 9943 	lcall	_putchar
      006401 0D               [12] 9944 	inc	r5
                                   9945 ;	calc.c:438: printstr("m\tmove top primary -> secondary\r\n");
      006402 BD 00 E7         [24] 9946 	cjne	r5,#0x00,00203$
      006405 0E               [12] 9947 	inc	r6
      006406 80 E4            [24] 9948 	sjmp	00203$
      006408                       9949 00128$:
                                   9950 ;	calc.c:439: printstr("+\tadd top 2\r\n");
      006408 7D 75            [12] 9951 	mov	r5,#___str_35
      00640A 7E 8C            [12] 9952 	mov	r6,#(___str_35 >> 8)
      00640C 7F 80            [12] 9953 	mov	r7,#0x80
                                   9954 ;	calc.c:51: return;
      00640E                       9955 00206$:
                                   9956 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00640E 8D 82            [24] 9957 	mov	dpl,r5
      006410 8E 83            [24] 9958 	mov	dph,r6
      006412 8F F0            [24] 9959 	mov	b,r7
      006414 12 71 7E         [24] 9960 	lcall	__gptrget
      006417 FC               [12] 9961 	mov	r4,a
      006418 60 10            [24] 9962 	jz	00130$
      00641A 7B 00            [12] 9963 	mov	r3,#0x00
      00641C 8C 82            [24] 9964 	mov	dpl,r4
      00641E 8B 83            [24] 9965 	mov	dph,r3
      006420 12 2C 1F         [24] 9966 	lcall	_putchar
      006423 0D               [12] 9967 	inc	r5
                                   9968 ;	calc.c:439: printstr("+\tadd top 2\r\n");
      006424 BD 00 E7         [24] 9969 	cjne	r5,#0x00,00206$
      006427 0E               [12] 9970 	inc	r6
      006428 80 E4            [24] 9971 	sjmp	00206$
      00642A                       9972 00130$:
                                   9973 ;	calc.c:440: printstr("-\tsubtract top 2\r\n");
      00642A 7D 83            [12] 9974 	mov	r5,#___str_36
      00642C 7E 8C            [12] 9975 	mov	r6,#(___str_36 >> 8)
      00642E 7F 80            [12] 9976 	mov	r7,#0x80
                                   9977 ;	calc.c:51: return;
      006430                       9978 00209$:
                                   9979 ;	calc.c:49: for (; *s; s++) putchar(*s);
      006430 8D 82            [24] 9980 	mov	dpl,r5
      006432 8E 83            [24] 9981 	mov	dph,r6
      006434 8F F0            [24] 9982 	mov	b,r7
      006436 12 71 7E         [24] 9983 	lcall	__gptrget
      006439 FC               [12] 9984 	mov	r4,a
      00643A 60 10            [24] 9985 	jz	00132$
      00643C 7B 00            [12] 9986 	mov	r3,#0x00
      00643E 8C 82            [24] 9987 	mov	dpl,r4
      006440 8B 83            [24] 9988 	mov	dph,r3
      006442 12 2C 1F         [24] 9989 	lcall	_putchar
      006445 0D               [12] 9990 	inc	r5
                                   9991 ;	calc.c:440: printstr("-\tsubtract top 2\r\n");
      006446 BD 00 E7         [24] 9992 	cjne	r5,#0x00,00209$
      006449 0E               [12] 9993 	inc	r6
      00644A 80 E4            [24] 9994 	sjmp	00209$
      00644C                       9995 00132$:
                                   9996 ;	calc.c:441: printstr("*\tmultiply top 2\r\n");
      00644C 7D 96            [12] 9997 	mov	r5,#___str_37
      00644E 7E 8C            [12] 9998 	mov	r6,#(___str_37 >> 8)
      006450 7F 80            [12] 9999 	mov	r7,#0x80
                                  10000 ;	calc.c:51: return;
      006452                      10001 00212$:
                                  10002 ;	calc.c:49: for (; *s; s++) putchar(*s);
      006452 8D 82            [24]10003 	mov	dpl,r5
      006454 8E 83            [24]10004 	mov	dph,r6
      006456 8F F0            [24]10005 	mov	b,r7
      006458 12 71 7E         [24]10006 	lcall	__gptrget
      00645B FC               [12]10007 	mov	r4,a
      00645C 60 10            [24]10008 	jz	00134$
      00645E 7B 00            [12]10009 	mov	r3,#0x00
      006460 8C 82            [24]10010 	mov	dpl,r4
      006462 8B 83            [24]10011 	mov	dph,r3
      006464 12 2C 1F         [24]10012 	lcall	_putchar
      006467 0D               [12]10013 	inc	r5
                                  10014 ;	calc.c:441: printstr("*\tmultiply top 2\r\n");
      006468 BD 00 E7         [24]10015 	cjne	r5,#0x00,00212$
      00646B 0E               [12]10016 	inc	r6
      00646C 80 E4            [24]10017 	sjmp	00212$
      00646E                      10018 00134$:
                                  10019 ;	calc.c:442: printstr("/\tdivide top 2\r\n");
      00646E 7D A9            [12]10020 	mov	r5,#___str_38
      006470 7E 8C            [12]10021 	mov	r6,#(___str_38 >> 8)
      006472 7F 80            [12]10022 	mov	r7,#0x80
                                  10023 ;	calc.c:51: return;
      006474                      10024 00215$:
                                  10025 ;	calc.c:49: for (; *s; s++) putchar(*s);
      006474 8D 82            [24]10026 	mov	dpl,r5
      006476 8E 83            [24]10027 	mov	dph,r6
      006478 8F F0            [24]10028 	mov	b,r7
      00647A 12 71 7E         [24]10029 	lcall	__gptrget
      00647D FC               [12]10030 	mov	r4,a
      00647E 60 10            [24]10031 	jz	00136$
      006480 7B 00            [12]10032 	mov	r3,#0x00
      006482 8C 82            [24]10033 	mov	dpl,r4
      006484 8B 83            [24]10034 	mov	dph,r3
      006486 12 2C 1F         [24]10035 	lcall	_putchar
      006489 0D               [12]10036 	inc	r5
                                  10037 ;	calc.c:442: printstr("/\tdivide top 2\r\n");
      00648A BD 00 E7         [24]10038 	cjne	r5,#0x00,00215$
      00648D 0E               [12]10039 	inc	r6
      00648E 80 E4            [24]10040 	sjmp	00215$
      006490                      10041 00136$:
                                  10042 ;	calc.c:443: printstr("\\\tdivide top 2 unsigned\r\n");	
      006490 7D BA            [12]10043 	mov	r5,#___str_39
      006492 7E 8C            [12]10044 	mov	r6,#(___str_39 >> 8)
      006494 7F 80            [12]10045 	mov	r7,#0x80
                                  10046 ;	calc.c:51: return;
      006496                      10047 00218$:
                                  10048 ;	calc.c:49: for (; *s; s++) putchar(*s);
      006496 8D 82            [24]10049 	mov	dpl,r5
      006498 8E 83            [24]10050 	mov	dph,r6
      00649A 8F F0            [24]10051 	mov	b,r7
      00649C 12 71 7E         [24]10052 	lcall	__gptrget
      00649F FC               [12]10053 	mov	r4,a
      0064A0 60 10            [24]10054 	jz	00138$
      0064A2 7B 00            [12]10055 	mov	r3,#0x00
      0064A4 8C 82            [24]10056 	mov	dpl,r4
      0064A6 8B 83            [24]10057 	mov	dph,r3
      0064A8 12 2C 1F         [24]10058 	lcall	_putchar
      0064AB 0D               [12]10059 	inc	r5
                                  10060 ;	calc.c:443: printstr("\\\tdivide top 2 unsigned\r\n");	
      0064AC BD 00 E7         [24]10061 	cjne	r5,#0x00,00218$
      0064AF 0E               [12]10062 	inc	r6
      0064B0 80 E4            [24]10063 	sjmp	00218$
      0064B2                      10064 00138$:
                                  10065 ;	calc.c:444: printstr("%\tmodulus top 2\r\n");
      0064B2 7D D4            [12]10066 	mov	r5,#___str_40
      0064B4 7E 8C            [12]10067 	mov	r6,#(___str_40 >> 8)
      0064B6 7F 80            [12]10068 	mov	r7,#0x80
                                  10069 ;	calc.c:51: return;
      0064B8                      10070 00221$:
                                  10071 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0064B8 8D 82            [24]10072 	mov	dpl,r5
      0064BA 8E 83            [24]10073 	mov	dph,r6
      0064BC 8F F0            [24]10074 	mov	b,r7
      0064BE 12 71 7E         [24]10075 	lcall	__gptrget
      0064C1 FC               [12]10076 	mov	r4,a
      0064C2 60 10            [24]10077 	jz	00140$
      0064C4 7B 00            [12]10078 	mov	r3,#0x00
      0064C6 8C 82            [24]10079 	mov	dpl,r4
      0064C8 8B 83            [24]10080 	mov	dph,r3
      0064CA 12 2C 1F         [24]10081 	lcall	_putchar
      0064CD 0D               [12]10082 	inc	r5
                                  10083 ;	calc.c:444: printstr("%\tmodulus top 2\r\n");
      0064CE BD 00 E7         [24]10084 	cjne	r5,#0x00,00221$
      0064D1 0E               [12]10085 	inc	r6
      0064D2 80 E4            [24]10086 	sjmp	00221$
      0064D4                      10087 00140$:
                                  10088 ;	calc.c:445: printstr("#\tmodulus top 2 unsigned\r\n");
      0064D4 7D E6            [12]10089 	mov	r5,#___str_41
      0064D6 7E 8C            [12]10090 	mov	r6,#(___str_41 >> 8)
      0064D8 7F 80            [12]10091 	mov	r7,#0x80
                                  10092 ;	calc.c:51: return;
      0064DA                      10093 00224$:
                                  10094 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0064DA 8D 82            [24]10095 	mov	dpl,r5
      0064DC 8E 83            [24]10096 	mov	dph,r6
      0064DE 8F F0            [24]10097 	mov	b,r7
      0064E0 12 71 7E         [24]10098 	lcall	__gptrget
      0064E3 FC               [12]10099 	mov	r4,a
      0064E4 60 10            [24]10100 	jz	00142$
      0064E6 7B 00            [12]10101 	mov	r3,#0x00
      0064E8 8C 82            [24]10102 	mov	dpl,r4
      0064EA 8B 83            [24]10103 	mov	dph,r3
      0064EC 12 2C 1F         [24]10104 	lcall	_putchar
      0064EF 0D               [12]10105 	inc	r5
                                  10106 ;	calc.c:445: printstr("#\tmodulus top 2 unsigned\r\n");
      0064F0 BD 00 E7         [24]10107 	cjne	r5,#0x00,00224$
      0064F3 0E               [12]10108 	inc	r6
      0064F4 80 E4            [24]10109 	sjmp	00224$
      0064F6                      10110 00142$:
                                  10111 ;	calc.c:446: printstr("&\tand top 2\r\n");
      0064F6 7D 01            [12]10112 	mov	r5,#___str_42
      0064F8 7E 8D            [12]10113 	mov	r6,#(___str_42 >> 8)
      0064FA 7F 80            [12]10114 	mov	r7,#0x80
                                  10115 ;	calc.c:51: return;
      0064FC                      10116 00227$:
                                  10117 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0064FC 8D 82            [24]10118 	mov	dpl,r5
      0064FE 8E 83            [24]10119 	mov	dph,r6
      006500 8F F0            [24]10120 	mov	b,r7
      006502 12 71 7E         [24]10121 	lcall	__gptrget
      006505 FC               [12]10122 	mov	r4,a
      006506 60 10            [24]10123 	jz	00144$
      006508 7B 00            [12]10124 	mov	r3,#0x00
      00650A 8C 82            [24]10125 	mov	dpl,r4
      00650C 8B 83            [24]10126 	mov	dph,r3
      00650E 12 2C 1F         [24]10127 	lcall	_putchar
      006511 0D               [12]10128 	inc	r5
                                  10129 ;	calc.c:446: printstr("&\tand top 2\r\n");
      006512 BD 00 E7         [24]10130 	cjne	r5,#0x00,00227$
      006515 0E               [12]10131 	inc	r6
      006516 80 E4            [24]10132 	sjmp	00227$
      006518                      10133 00144$:
                                  10134 ;	calc.c:447: printstr("|\tor top 2\r\n");
      006518 7D 0F            [12]10135 	mov	r5,#___str_43
      00651A 7E 8D            [12]10136 	mov	r6,#(___str_43 >> 8)
      00651C 7F 80            [12]10137 	mov	r7,#0x80
                                  10138 ;	calc.c:51: return;
      00651E                      10139 00230$:
                                  10140 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00651E 8D 82            [24]10141 	mov	dpl,r5
      006520 8E 83            [24]10142 	mov	dph,r6
      006522 8F F0            [24]10143 	mov	b,r7
      006524 12 71 7E         [24]10144 	lcall	__gptrget
      006527 FC               [12]10145 	mov	r4,a
      006528 60 10            [24]10146 	jz	00146$
      00652A 7B 00            [12]10147 	mov	r3,#0x00
      00652C 8C 82            [24]10148 	mov	dpl,r4
      00652E 8B 83            [24]10149 	mov	dph,r3
      006530 12 2C 1F         [24]10150 	lcall	_putchar
      006533 0D               [12]10151 	inc	r5
                                  10152 ;	calc.c:447: printstr("|\tor top 2\r\n");
      006534 BD 00 E7         [24]10153 	cjne	r5,#0x00,00230$
      006537 0E               [12]10154 	inc	r6
      006538 80 E4            [24]10155 	sjmp	00230$
      00653A                      10156 00146$:
                                  10157 ;	calc.c:448: printstr("^\txor top 2\r\n");
      00653A 7D 1C            [12]10158 	mov	r5,#___str_44
      00653C 7E 8D            [12]10159 	mov	r6,#(___str_44 >> 8)
      00653E 7F 80            [12]10160 	mov	r7,#0x80
                                  10161 ;	calc.c:51: return;
      006540                      10162 00233$:
                                  10163 ;	calc.c:49: for (; *s; s++) putchar(*s);
      006540 8D 82            [24]10164 	mov	dpl,r5
      006542 8E 83            [24]10165 	mov	dph,r6
      006544 8F F0            [24]10166 	mov	b,r7
      006546 12 71 7E         [24]10167 	lcall	__gptrget
      006549 FC               [12]10168 	mov	r4,a
      00654A 60 10            [24]10169 	jz	00148$
      00654C 7B 00            [12]10170 	mov	r3,#0x00
      00654E 8C 82            [24]10171 	mov	dpl,r4
      006550 8B 83            [24]10172 	mov	dph,r3
      006552 12 2C 1F         [24]10173 	lcall	_putchar
      006555 0D               [12]10174 	inc	r5
                                  10175 ;	calc.c:448: printstr("^\txor top 2\r\n");
      006556 BD 00 E7         [24]10176 	cjne	r5,#0x00,00233$
      006559 0E               [12]10177 	inc	r6
      00655A 80 E4            [24]10178 	sjmp	00233$
      00655C                      10179 00148$:
                                  10180 ;	calc.c:449: printstr(">\tshift right top 2\r\n");
      00655C 7D 2A            [12]10181 	mov	r5,#___str_45
      00655E 7E 8D            [12]10182 	mov	r6,#(___str_45 >> 8)
      006560 7F 80            [12]10183 	mov	r7,#0x80
                                  10184 ;	calc.c:51: return;
      006562                      10185 00236$:
                                  10186 ;	calc.c:49: for (; *s; s++) putchar(*s);
      006562 8D 82            [24]10187 	mov	dpl,r5
      006564 8E 83            [24]10188 	mov	dph,r6
      006566 8F F0            [24]10189 	mov	b,r7
      006568 12 71 7E         [24]10190 	lcall	__gptrget
      00656B FC               [12]10191 	mov	r4,a
      00656C 60 10            [24]10192 	jz	00150$
      00656E 7B 00            [12]10193 	mov	r3,#0x00
      006570 8C 82            [24]10194 	mov	dpl,r4
      006572 8B 83            [24]10195 	mov	dph,r3
      006574 12 2C 1F         [24]10196 	lcall	_putchar
      006577 0D               [12]10197 	inc	r5
                                  10198 ;	calc.c:449: printstr(">\tshift right top 2\r\n");
      006578 BD 00 E7         [24]10199 	cjne	r5,#0x00,00236$
      00657B 0E               [12]10200 	inc	r6
      00657C 80 E4            [24]10201 	sjmp	00236$
      00657E                      10202 00150$:
                                  10203 ;	calc.c:450: printstr("]\tarithmetic shift right top 2\r\n");
      00657E 7D 40            [12]10204 	mov	r5,#___str_46
      006580 7E 8D            [12]10205 	mov	r6,#(___str_46 >> 8)
      006582 7F 80            [12]10206 	mov	r7,#0x80
                                  10207 ;	calc.c:51: return;
      006584                      10208 00239$:
                                  10209 ;	calc.c:49: for (; *s; s++) putchar(*s);
      006584 8D 82            [24]10210 	mov	dpl,r5
      006586 8E 83            [24]10211 	mov	dph,r6
      006588 8F F0            [24]10212 	mov	b,r7
      00658A 12 71 7E         [24]10213 	lcall	__gptrget
      00658D FC               [12]10214 	mov	r4,a
      00658E 60 10            [24]10215 	jz	00152$
      006590 7B 00            [12]10216 	mov	r3,#0x00
      006592 8C 82            [24]10217 	mov	dpl,r4
      006594 8B 83            [24]10218 	mov	dph,r3
      006596 12 2C 1F         [24]10219 	lcall	_putchar
      006599 0D               [12]10220 	inc	r5
                                  10221 ;	calc.c:450: printstr("]\tarithmetic shift right top 2\r\n");
      00659A BD 00 E7         [24]10222 	cjne	r5,#0x00,00239$
      00659D 0E               [12]10223 	inc	r6
      00659E 80 E4            [24]10224 	sjmp	00239$
      0065A0                      10225 00152$:
                                  10226 ;	calc.c:451: printstr("<\tshift left top 2\r\n");
      0065A0 7D 61            [12]10227 	mov	r5,#___str_47
      0065A2 7E 8D            [12]10228 	mov	r6,#(___str_47 >> 8)
      0065A4 7F 80            [12]10229 	mov	r7,#0x80
                                  10230 ;	calc.c:51: return;
      0065A6                      10231 00242$:
                                  10232 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0065A6 8D 82            [24]10233 	mov	dpl,r5
      0065A8 8E 83            [24]10234 	mov	dph,r6
      0065AA 8F F0            [24]10235 	mov	b,r7
      0065AC 12 71 7E         [24]10236 	lcall	__gptrget
      0065AF FC               [12]10237 	mov	r4,a
      0065B0 60 10            [24]10238 	jz	00154$
      0065B2 7B 00            [12]10239 	mov	r3,#0x00
      0065B4 8C 82            [24]10240 	mov	dpl,r4
      0065B6 8B 83            [24]10241 	mov	dph,r3
      0065B8 12 2C 1F         [24]10242 	lcall	_putchar
      0065BB 0D               [12]10243 	inc	r5
                                  10244 ;	calc.c:451: printstr("<\tshift left top 2\r\n");
      0065BC BD 00 E7         [24]10245 	cjne	r5,#0x00,00242$
      0065BF 0E               [12]10246 	inc	r6
      0065C0 80 E4            [24]10247 	sjmp	00242$
      0065C2                      10248 00154$:
                                  10249 ;	calc.c:452: printstr("~\tbitwise not top\r\n");
      0065C2 7D 76            [12]10250 	mov	r5,#___str_48
      0065C4 7E 8D            [12]10251 	mov	r6,#(___str_48 >> 8)
      0065C6 7F 80            [12]10252 	mov	r7,#0x80
                                  10253 ;	calc.c:51: return;
      0065C8                      10254 00245$:
                                  10255 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0065C8 8D 82            [24]10256 	mov	dpl,r5
      0065CA 8E 83            [24]10257 	mov	dph,r6
      0065CC 8F F0            [24]10258 	mov	b,r7
      0065CE 12 71 7E         [24]10259 	lcall	__gptrget
      0065D1 FC               [12]10260 	mov	r4,a
      0065D2 60 10            [24]10261 	jz	00156$
      0065D4 7B 00            [12]10262 	mov	r3,#0x00
      0065D6 8C 82            [24]10263 	mov	dpl,r4
      0065D8 8B 83            [24]10264 	mov	dph,r3
      0065DA 12 2C 1F         [24]10265 	lcall	_putchar
      0065DD 0D               [12]10266 	inc	r5
                                  10267 ;	calc.c:452: printstr("~\tbitwise not top\r\n");
      0065DE BD 00 E7         [24]10268 	cjne	r5,#0x00,00245$
      0065E1 0E               [12]10269 	inc	r6
      0065E2 80 E4            [24]10270 	sjmp	00245$
      0065E4                      10271 00156$:
                                  10272 ;	calc.c:453: printstr("s\tstatus\r\n");
      0065E4 7D 8A            [12]10273 	mov	r5,#___str_49
      0065E6 7E 8D            [12]10274 	mov	r6,#(___str_49 >> 8)
      0065E8 7F 80            [12]10275 	mov	r7,#0x80
                                  10276 ;	calc.c:51: return;
      0065EA                      10277 00248$:
                                  10278 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0065EA 8D 82            [24]10279 	mov	dpl,r5
      0065EC 8E 83            [24]10280 	mov	dph,r6
      0065EE 8F F0            [24]10281 	mov	b,r7
      0065F0 12 71 7E         [24]10282 	lcall	__gptrget
      0065F3 FC               [12]10283 	mov	r4,a
      0065F4 60 10            [24]10284 	jz	00158$
      0065F6 7B 00            [12]10285 	mov	r3,#0x00
      0065F8 8C 82            [24]10286 	mov	dpl,r4
      0065FA 8B 83            [24]10287 	mov	dph,r3
      0065FC 12 2C 1F         [24]10288 	lcall	_putchar
      0065FF 0D               [12]10289 	inc	r5
                                  10290 ;	calc.c:453: printstr("s\tstatus\r\n");
      006600 BD 00 E7         [24]10291 	cjne	r5,#0x00,00248$
      006603 0E               [12]10292 	inc	r6
      006604 80 E4            [24]10293 	sjmp	00248$
      006606                      10294 00158$:
                                  10295 ;	calc.c:454: printstr("?\thelp\r\n");
      006606 7D 95            [12]10296 	mov	r5,#___str_50
      006608 7E 8D            [12]10297 	mov	r6,#(___str_50 >> 8)
      00660A 7F 80            [12]10298 	mov	r7,#0x80
                                  10299 ;	calc.c:51: return;
      00660C                      10300 00251$:
                                  10301 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00660C 8D 82            [24]10302 	mov	dpl,r5
      00660E 8E 83            [24]10303 	mov	dph,r6
      006610 8F F0            [24]10304 	mov	b,r7
      006612 12 71 7E         [24]10305 	lcall	__gptrget
      006615 FC               [12]10306 	mov	r4,a
      006616 60 10            [24]10307 	jz	00160$
      006618 7B 00            [12]10308 	mov	r3,#0x00
      00661A 8C 82            [24]10309 	mov	dpl,r4
      00661C 8B 83            [24]10310 	mov	dph,r3
      00661E 12 2C 1F         [24]10311 	lcall	_putchar
      006621 0D               [12]10312 	inc	r5
                                  10313 ;	calc.c:454: printstr("?\thelp\r\n");
      006622 BD 00 E7         [24]10314 	cjne	r5,#0x00,00251$
      006625 0E               [12]10315 	inc	r6
      006626 80 E4            [24]10316 	sjmp	00251$
      006628                      10317 00160$:
                                  10318 ;	calc.c:455: printstr("q\tquit\r\n");
      006628 7D 9E            [12]10319 	mov	r5,#___str_51
      00662A 7E 8D            [12]10320 	mov	r6,#(___str_51 >> 8)
      00662C 7F 80            [12]10321 	mov	r7,#0x80
                                  10322 ;	calc.c:51: return;
      00662E                      10323 00254$:
                                  10324 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00662E 8D 82            [24]10325 	mov	dpl,r5
      006630 8E 83            [24]10326 	mov	dph,r6
      006632 8F F0            [24]10327 	mov	b,r7
      006634 12 71 7E         [24]10328 	lcall	__gptrget
      006637 FC               [12]10329 	mov	r4,a
      006638 60 10            [24]10330 	jz	00162$
      00663A 7B 00            [12]10331 	mov	r3,#0x00
      00663C 8C 82            [24]10332 	mov	dpl,r4
      00663E 8B 83            [24]10333 	mov	dph,r3
      006640 12 2C 1F         [24]10334 	lcall	_putchar
      006643 0D               [12]10335 	inc	r5
                                  10336 ;	calc.c:455: printstr("q\tquit\r\n");
      006644 BD 00 E7         [24]10337 	cjne	r5,#0x00,00254$
      006647 0E               [12]10338 	inc	r6
      006648 80 E4            [24]10339 	sjmp	00254$
      00664A                      10340 00162$:
                                  10341 ;	calc.c:457: return 1;
      00664A 90 00 01         [24]10342 	mov	dptr,#0x0001
                                  10343 ;	calc.c:458: }
      00664D D0 08            [24]10344 	pop	_bp
      00664F 22               [24]10345 	ret
                                  10346 ;------------------------------------------------------------
                                  10347 ;Allocation info for local variables in function 'main'
                                  10348 ;------------------------------------------------------------
                                  10349 ;input                     Allocated to registers r6 r7 
                                  10350 ;__1966080213              Allocated to registers 
                                  10351 ;s                         Allocated to registers r2 r3 r4 
                                  10352 ;__1310720215              Allocated to registers 
                                  10353 ;s                         Allocated to registers r5 r6 r7 
                                  10354 ;sloc0                     Allocated to stack - _bp +1
                                  10355 ;------------------------------------------------------------
                                  10356 ;	calc.c:488: void main(void) {
                                  10357 ;	-----------------------------------------
                                  10358 ;	 function main
                                  10359 ;	-----------------------------------------
      006650                      10360 _main:
      006650 C0 08            [24]10361 	push	_bp
      006652 85 81 08         [24]10362 	mov	_bp,sp
      006655 05 81            [12]10363 	inc	sp
                                  10364 ;	calc.c:491: c.base = 10;
      006657 90 90 0C         [24]10365 	mov	dptr,#_c
      00665A 74 0A            [12]10366 	mov	a,#0x0a
      00665C F0               [24]10367 	movx	@dptr,a
      00665D E4               [12]10368 	clr	a
      00665E A3               [24]10369 	inc	dptr
      00665F F0               [24]10370 	movx	@dptr,a
                                  10371 ;	calc.c:492: c.acc = 0l;
      006660 90 90 0E         [24]10372 	mov	dptr,#(_c + 0x0002)
      006663 F0               [24]10373 	movx	@dptr,a
      006664 A3               [24]10374 	inc	dptr
      006665 F0               [24]10375 	movx	@dptr,a
      006666 A3               [24]10376 	inc	dptr
      006667 F0               [24]10377 	movx	@dptr,a
      006668 A3               [24]10378 	inc	dptr
      006669 F0               [24]10379 	movx	@dptr,a
                                  10380 ;	calc.c:493: c.acc_valid = (char)0;
      00666A 90 90 12         [24]10381 	mov	dptr,#(_c + 0x0006)
      00666D F0               [24]10382 	movx	@dptr,a
                                  10383 ;	calc.c:494: c.digit[0] = c.digit[1] = '\0';
      00666E 90 90 14         [24]10384 	mov	dptr,#(_c + 0x0008)
      006671 F0               [24]10385 	movx	@dptr,a
      006672 90 90 13         [24]10386 	mov	dptr,#(_c + 0x0007)
      006675 F0               [24]10387 	movx	@dptr,a
                                  10388 ;	calc.c:496: c.ps = &c.s0;
      006676 90 D0 1F         [24]10389 	mov	dptr,#(_c + 0x4013)
      006679 74 15            [12]10390 	mov	a,#(_c + 0x0009)
      00667B F0               [24]10391 	movx	@dptr,a
      00667C 74 90            [12]10392 	mov	a,#((_c + 0x0009) >> 8)
      00667E A3               [24]10393 	inc	dptr
      00667F F0               [24]10394 	movx	@dptr,a
      006680 E4               [12]10395 	clr	a
      006681 A3               [24]10396 	inc	dptr
      006682 F0               [24]10397 	movx	@dptr,a
                                  10398 ;	calc.c:497: c.ss = &c.s1;
      006683 90 D0 22         [24]10399 	mov	dptr,#(_c + 0x4016)
      006686 74 1A            [12]10400 	mov	a,#(_c + 0x200e)
      006688 F0               [24]10401 	movx	@dptr,a
      006689 74 B0            [12]10402 	mov	a,#((_c + 0x200e) >> 8)
      00668B A3               [24]10403 	inc	dptr
      00668C F0               [24]10404 	movx	@dptr,a
      00668D E4               [12]10405 	clr	a
      00668E A3               [24]10406 	inc	dptr
      00668F F0               [24]10407 	movx	@dptr,a
                                  10408 ;	calc.c:498: stack_init(c.ps);
      006690 90 90 15         [24]10409 	mov	dptr,#(_c + 0x0009)
      006693 75 F0 00         [24]10410 	mov	b,#0x00
      006696 12 26 80         [24]10411 	lcall	_stack_init
                                  10412 ;	calc.c:499: stack_init(c.ss);
      006699 90 D0 22         [24]10413 	mov	dptr,#(_c + 0x4016)
      00669C E0               [24]10414 	movx	a,@dptr
      00669D FD               [12]10415 	mov	r5,a
      00669E A3               [24]10416 	inc	dptr
      00669F E0               [24]10417 	movx	a,@dptr
      0066A0 FE               [12]10418 	mov	r6,a
      0066A1 A3               [24]10419 	inc	dptr
      0066A2 E0               [24]10420 	movx	a,@dptr
      0066A3 FF               [12]10421 	mov	r7,a
      0066A4 8D 82            [24]10422 	mov	dpl,r5
      0066A6 8E 83            [24]10423 	mov	dph,r6
      0066A8 8F F0            [24]10424 	mov	b,r7
      0066AA 12 26 80         [24]10425 	lcall	_stack_init
                                  10426 ;	calc.c:501: state_init(&s, STATE_START, STATE_FINAL, UNDEF, deltas, &c);
      0066AD 74 0C            [12]10427 	mov	a,#_c
      0066AF C0 E0            [24]10428 	push	acc
      0066B1 74 90            [12]10429 	mov	a,#(_c >> 8)
      0066B3 C0 E0            [24]10430 	push	acc
      0066B5 E4               [12]10431 	clr	a
      0066B6 C0 E0            [24]10432 	push	acc
      0066B8 74 27            [12]10433 	mov	a,#_deltas
      0066BA C0 E0            [24]10434 	push	acc
      0066BC 74 D0            [12]10435 	mov	a,#(_deltas >> 8)
      0066BE C0 E0            [24]10436 	push	acc
      0066C0 E4               [12]10437 	clr	a
      0066C1 C0 E0            [24]10438 	push	acc
      0066C3 C0 E0            [24]10439 	push	acc
      0066C5 74 80            [12]10440 	mov	a,#0x80
      0066C7 C0 E0            [24]10441 	push	acc
      0066C9 74 03            [12]10442 	mov	a,#0x03
      0066CB C0 E0            [24]10443 	push	acc
      0066CD E4               [12]10444 	clr	a
      0066CE C0 E0            [24]10445 	push	acc
      0066D0 C0 E0            [24]10446 	push	acc
      0066D2 C0 E0            [24]10447 	push	acc
      0066D4 90 90 00         [24]10448 	mov	dptr,#_s
      0066D7 75 F0 00         [24]10449 	mov	b,#0x00
      0066DA 12 20 90         [24]10450 	lcall	_state_init
      0066DD E5 81            [12]10451 	mov	a,sp
      0066DF 24 F4            [12]10452 	add	a,#0xf4
      0066E1 F5 81            [12]10453 	mov	sp,a
                                  10454 ;	calc.c:503: (void)status(&c, deltas);
      0066E3 74 27            [12]10455 	mov	a,#_deltas
      0066E5 C0 E0            [24]10456 	push	acc
      0066E7 74 D0            [12]10457 	mov	a,#(_deltas >> 8)
      0066E9 C0 E0            [24]10458 	push	acc
      0066EB E4               [12]10459 	clr	a
      0066EC C0 E0            [24]10460 	push	acc
      0066EE 90 90 0C         [24]10461 	mov	dptr,#_c
      0066F1 75 F0 00         [24]10462 	mov	b,#0x00
      0066F4 12 59 C8         [24]10463 	lcall	_status
      0066F7 15 81            [12]10464 	dec	sp
      0066F9 15 81            [12]10465 	dec	sp
      0066FB 15 81            [12]10466 	dec	sp
                                  10467 ;	calc.c:505: while (1) {
      0066FD                      10468 00192$:
                                  10469 ;	calc.c:506: input = getchar();
      0066FD 12 2C 24         [24]10470 	lcall	_getchar
      006700 AE 82            [24]10471 	mov	r6,dpl
      006702 AF 83            [24]10472 	mov	r7,dph
                                  10473 ;	calc.c:507: if (((char)input == '\r') || ((char)input == '\n')) printstr("\r\n");
      006704 8E 05            [24]10474 	mov	ar5,r6
      006706 BD 0D 02         [24]10475 	cjne	r5,#0x0d,00400$
      006709 80 03            [24]10476 	sjmp	00101$
      00670B                      10477 00400$:
      00670B BD 0A 36         [24]10478 	cjne	r5,#0x0a,00102$
      00670E                      10479 00101$:
      00670E 7A 16            [12]10480 	mov	r2,#___str_3
      006710 7B 8A            [12]10481 	mov	r3,#(___str_3 >> 8)
      006712 7C 80            [12]10482 	mov	r4,#0x80
                                  10483 ;	calc.c:51: return;
      006714                      10484 00199$:
                                  10485 ;	calc.c:49: for (; *s; s++) putchar(*s);
      006714 8A 82            [24]10486 	mov	dpl,r2
      006716 8B 83            [24]10487 	mov	dph,r3
      006718 8C F0            [24]10488 	mov	b,r4
      00671A A8 08            [24]10489 	mov	r0,_bp
      00671C 08               [12]10490 	inc	r0
      00671D 12 71 7E         [24]10491 	lcall	__gptrget
      006720 F6               [12]10492 	mov	@r0,a
      006721 A8 08            [24]10493 	mov	r0,_bp
      006723 08               [12]10494 	inc	r0
      006724 E6               [12]10495 	mov	a,@r0
      006725 60 24            [24]10496 	jz	00103$
      006727 C0 06            [24]10497 	push	ar6
      006729 C0 07            [24]10498 	push	ar7
      00672B A8 08            [24]10499 	mov	r0,_bp
      00672D 08               [12]10500 	inc	r0
      00672E 86 06            [24]10501 	mov	ar6,@r0
      006730 7F 00            [12]10502 	mov	r7,#0x00
      006732 8E 82            [24]10503 	mov	dpl,r6
      006734 8F 83            [24]10504 	mov	dph,r7
      006736 12 2C 1F         [24]10505 	lcall	_putchar
      006739 0A               [12]10506 	inc	r2
      00673A BA 00 01         [24]10507 	cjne	r2,#0x00,00404$
      00673D 0B               [12]10508 	inc	r3
      00673E                      10509 00404$:
      00673E D0 07            [24]10510 	pop	ar7
      006740 D0 06            [24]10511 	pop	ar6
                                  10512 ;	calc.c:507: if (((char)input == '\r') || ((char)input == '\n')) printstr("\r\n");
      006742 80 D0            [24]10513 	sjmp	00199$
      006744                      10514 00102$:
                                  10515 ;	calc.c:508: else (void)putchar(input);
      006744 8E 82            [24]10516 	mov	dpl,r6
      006746 8F 83            [24]10517 	mov	dph,r7
      006748 12 2C 1F         [24]10518 	lcall	_putchar
      00674B                      10519 00103$:
                                  10520 ;	calc.c:509: c.digit[0] = (char)input;
      00674B 90 90 13         [24]10521 	mov	dptr,#(_c + 0x0007)
      00674E ED               [12]10522 	mov	a,r5
      00674F F0               [24]10523 	movx	@dptr,a
                                  10524 ;	calc.c:511: if ((char)input == 'q') {
      006750 BD 71 29         [24]10525 	cjne	r5,#0x71,00189$
                                  10526 ;	calc.c:512: if (state_exec(&s, EVENT_TERM) <= 0) break;
      006753 74 08            [12]10527 	mov	a,#0x08
      006755 C0 E0            [24]10528 	push	acc
      006757 E4               [12]10529 	clr	a
      006758 C0 E0            [24]10530 	push	acc
      00675A 90 90 00         [24]10531 	mov	dptr,#_s
      00675D 75 F0 00         [24]10532 	mov	b,#0x00
      006760 12 21 46         [24]10533 	lcall	_state_exec
      006763 AB 82            [24]10534 	mov	r3,dpl
      006765 AC 83            [24]10535 	mov	r4,dph
      006767 15 81            [12]10536 	dec	sp
      006769 15 81            [12]10537 	dec	sp
      00676B C3               [12]10538 	clr	c
      00676C E4               [12]10539 	clr	a
      00676D 9B               [12]10540 	subb	a,r3
      00676E 74 80            [12]10541 	mov	a,#(0x00 ^ 0x80)
      006770 8C F0            [24]10542 	mov	b,r4
      006772 63 F0 80         [24]10543 	xrl	b,#0x80
      006775 95 F0            [12]10544 	subb	a,b
      006777 40 84            [24]10545 	jc	00192$
      006779 02 6A 2B         [24]10546 	ljmp	00193$
      00677C                      10547 00189$:
                                  10548 ;	calc.c:513: } else if ((char)input == 's') {
      00677C BD 73 2C         [24]10549 	cjne	r5,#0x73,00186$
                                  10550 ;	calc.c:514: if (state_exec(&s, EVENT_STATUS) <= 0) break;
      00677F 74 03            [12]10551 	mov	a,#0x03
      006781 C0 E0            [24]10552 	push	acc
      006783 E4               [12]10553 	clr	a
      006784 C0 E0            [24]10554 	push	acc
      006786 90 90 00         [24]10555 	mov	dptr,#_s
      006789 75 F0 00         [24]10556 	mov	b,#0x00
      00678C 12 21 46         [24]10557 	lcall	_state_exec
      00678F AB 82            [24]10558 	mov	r3,dpl
      006791 AC 83            [24]10559 	mov	r4,dph
      006793 15 81            [12]10560 	dec	sp
      006795 15 81            [12]10561 	dec	sp
      006797 C3               [12]10562 	clr	c
      006798 E4               [12]10563 	clr	a
      006799 9B               [12]10564 	subb	a,r3
      00679A 74 80            [12]10565 	mov	a,#(0x00 ^ 0x80)
      00679C 8C F0            [24]10566 	mov	b,r4
      00679E 63 F0 80         [24]10567 	xrl	b,#0x80
      0067A1 95 F0            [12]10568 	subb	a,b
      0067A3 50 03            [24]10569 	jnc	00410$
      0067A5 02 66 FD         [24]10570 	ljmp	00192$
      0067A8                      10571 00410$:
      0067A8 02 6A 2B         [24]10572 	ljmp	00193$
      0067AB                      10573 00186$:
                                  10574 ;	calc.c:515: } else if ((char)input == '?') {
      0067AB BD 3F 2C         [24]10575 	cjne	r5,#0x3f,00183$
                                  10576 ;	calc.c:516: if (state_exec(&s, EVENT_HELP) <= 0) break;
      0067AE 74 04            [12]10577 	mov	a,#0x04
      0067B0 C0 E0            [24]10578 	push	acc
      0067B2 E4               [12]10579 	clr	a
      0067B3 C0 E0            [24]10580 	push	acc
      0067B5 90 90 00         [24]10581 	mov	dptr,#_s
      0067B8 75 F0 00         [24]10582 	mov	b,#0x00
      0067BB 12 21 46         [24]10583 	lcall	_state_exec
      0067BE AB 82            [24]10584 	mov	r3,dpl
      0067C0 AC 83            [24]10585 	mov	r4,dph
      0067C2 15 81            [12]10586 	dec	sp
      0067C4 15 81            [12]10587 	dec	sp
      0067C6 C3               [12]10588 	clr	c
      0067C7 E4               [12]10589 	clr	a
      0067C8 9B               [12]10590 	subb	a,r3
      0067C9 74 80            [12]10591 	mov	a,#(0x00 ^ 0x80)
      0067CB 8C F0            [24]10592 	mov	b,r4
      0067CD 63 F0 80         [24]10593 	xrl	b,#0x80
      0067D0 95 F0            [12]10594 	subb	a,b
      0067D2 50 03            [24]10595 	jnc	00413$
      0067D4 02 66 FD         [24]10596 	ljmp	00192$
      0067D7                      10597 00413$:
      0067D7 02 6A 2B         [24]10598 	ljmp	00193$
      0067DA                      10599 00183$:
                                  10600 ;	calc.c:517: } else if ((char)input == 'i') {
      0067DA BD 69 2C         [24]10601 	cjne	r5,#0x69,00180$
                                  10602 ;	calc.c:518: if (state_exec(&s, EVENT_RSTA_i) <= 0) break;
      0067DD 74 06            [12]10603 	mov	a,#0x06
      0067DF C0 E0            [24]10604 	push	acc
      0067E1 E4               [12]10605 	clr	a
      0067E2 C0 E0            [24]10606 	push	acc
      0067E4 90 90 00         [24]10607 	mov	dptr,#_s
      0067E7 75 F0 00         [24]10608 	mov	b,#0x00
      0067EA 12 21 46         [24]10609 	lcall	_state_exec
      0067ED AB 82            [24]10610 	mov	r3,dpl
      0067EF AC 83            [24]10611 	mov	r4,dph
      0067F1 15 81            [12]10612 	dec	sp
      0067F3 15 81            [12]10613 	dec	sp
      0067F5 C3               [12]10614 	clr	c
      0067F6 E4               [12]10615 	clr	a
      0067F7 9B               [12]10616 	subb	a,r3
      0067F8 74 80            [12]10617 	mov	a,#(0x00 ^ 0x80)
      0067FA 8C F0            [24]10618 	mov	b,r4
      0067FC 63 F0 80         [24]10619 	xrl	b,#0x80
      0067FF 95 F0            [12]10620 	subb	a,b
      006801 50 03            [24]10621 	jnc	00416$
      006803 02 66 FD         [24]10622 	ljmp	00192$
      006806                      10623 00416$:
      006806 02 6A 2B         [24]10624 	ljmp	00193$
      006809                      10625 00180$:
                                  10626 ;	calc.c:519: } else if ((char)input == 'I') {
      006809 BD 49 2C         [24]10627 	cjne	r5,#0x49,00177$
                                  10628 ;	calc.c:520: if (state_exec(&s, EVENT_RSTA_I) <= 0) break;
      00680C 74 07            [12]10629 	mov	a,#0x07
      00680E C0 E0            [24]10630 	push	acc
      006810 E4               [12]10631 	clr	a
      006811 C0 E0            [24]10632 	push	acc
      006813 90 90 00         [24]10633 	mov	dptr,#_s
      006816 75 F0 00         [24]10634 	mov	b,#0x00
      006819 12 21 46         [24]10635 	lcall	_state_exec
      00681C AB 82            [24]10636 	mov	r3,dpl
      00681E AC 83            [24]10637 	mov	r4,dph
      006820 15 81            [12]10638 	dec	sp
      006822 15 81            [12]10639 	dec	sp
      006824 C3               [12]10640 	clr	c
      006825 E4               [12]10641 	clr	a
      006826 9B               [12]10642 	subb	a,r3
      006827 74 80            [12]10643 	mov	a,#(0x00 ^ 0x80)
      006829 8C F0            [24]10644 	mov	b,r4
      00682B 63 F0 80         [24]10645 	xrl	b,#0x80
      00682E 95 F0            [12]10646 	subb	a,b
      006830 50 03            [24]10647 	jnc	00419$
      006832 02 66 FD         [24]10648 	ljmp	00192$
      006835                      10649 00419$:
      006835 02 6A 2B         [24]10650 	ljmp	00193$
      006838                      10651 00177$:
                                  10652 ;	calc.c:522: ((char)input == 'h') || ((char)input == 'H') ||
      006838 BD 68 02         [24]10653 	cjne	r5,#0x68,00420$
      00683B 80 0D            [24]10654 	sjmp	00170$
      00683D                      10655 00420$:
      00683D BD 48 02         [24]10656 	cjne	r5,#0x48,00421$
      006840 80 08            [24]10657 	sjmp	00170$
      006842                      10658 00421$:
                                  10659 ;	calc.c:523: ((char)input == 'o') || ((char)input == 'O')
      006842 BD 6F 02         [24]10660 	cjne	r5,#0x6f,00422$
      006845 80 03            [24]10661 	sjmp	00170$
      006847                      10662 00422$:
      006847 BD 4F 2C         [24]10663 	cjne	r5,#0x4f,00171$
      00684A                      10664 00170$:
                                  10665 ;	calc.c:525: if (state_exec(&s, EVENT_BASE) <= 0) break;
      00684A 74 05            [12]10666 	mov	a,#0x05
      00684C C0 E0            [24]10667 	push	acc
      00684E E4               [12]10668 	clr	a
      00684F C0 E0            [24]10669 	push	acc
      006851 90 90 00         [24]10670 	mov	dptr,#_s
      006854 75 F0 00         [24]10671 	mov	b,#0x00
      006857 12 21 46         [24]10672 	lcall	_state_exec
      00685A AB 82            [24]10673 	mov	r3,dpl
      00685C AC 83            [24]10674 	mov	r4,dph
      00685E 15 81            [12]10675 	dec	sp
      006860 15 81            [12]10676 	dec	sp
      006862 C3               [12]10677 	clr	c
      006863 E4               [12]10678 	clr	a
      006864 9B               [12]10679 	subb	a,r3
      006865 74 80            [12]10680 	mov	a,#(0x00 ^ 0x80)
      006867 8C F0            [24]10681 	mov	b,r4
      006869 63 F0 80         [24]10682 	xrl	b,#0x80
      00686C 95 F0            [12]10683 	subb	a,b
      00686E 50 03            [24]10684 	jnc	00425$
      006870 02 66 FD         [24]10685 	ljmp	00192$
      006873                      10686 00425$:
      006873 02 6A 2B         [24]10687 	ljmp	00193$
      006876                      10688 00171$:
                                  10689 ;	calc.c:526: } else if (isxdigit(input)) {
      006876 8E 82            [24]10690 	mov	dpl,r6
      006878 8F 83            [24]10691 	mov	dph,r7
      00687A C0 05            [24]10692 	push	ar5
      00687C 12 6A 55         [24]10693 	lcall	_isxdigit
      00687F E5 82            [12]10694 	mov	a,dpl
      006881 85 83 F0         [24]10695 	mov	b,dph
      006884 D0 05            [24]10696 	pop	ar5
      006886 45 F0            [12]10697 	orl	a,b
      006888 60 2C            [24]10698 	jz	00168$
                                  10699 ;	calc.c:527: if (state_exec(&s, EVENT_DIGIT) <= 0) break;
      00688A 74 01            [12]10700 	mov	a,#0x01
      00688C C0 E0            [24]10701 	push	acc
      00688E E4               [12]10702 	clr	a
      00688F C0 E0            [24]10703 	push	acc
      006891 90 90 00         [24]10704 	mov	dptr,#_s
      006894 75 F0 00         [24]10705 	mov	b,#0x00
      006897 12 21 46         [24]10706 	lcall	_state_exec
      00689A AE 82            [24]10707 	mov	r6,dpl
      00689C AF 83            [24]10708 	mov	r7,dph
      00689E 15 81            [12]10709 	dec	sp
      0068A0 15 81            [12]10710 	dec	sp
      0068A2 C3               [12]10711 	clr	c
      0068A3 E4               [12]10712 	clr	a
      0068A4 9E               [12]10713 	subb	a,r6
      0068A5 74 80            [12]10714 	mov	a,#(0x00 ^ 0x80)
      0068A7 8F F0            [24]10715 	mov	b,r7
      0068A9 63 F0 80         [24]10716 	xrl	b,#0x80
      0068AC 95 F0            [12]10717 	subb	a,b
      0068AE 50 03            [24]10718 	jnc	00427$
      0068B0 02 66 FD         [24]10719 	ljmp	00192$
      0068B3                      10720 00427$:
      0068B3 02 6A 2B         [24]10721 	ljmp	00193$
      0068B6                      10722 00168$:
                                  10723 ;	calc.c:529: ((char)input == 'p') || ((char)input == 'P') ||
      0068B6 BD 70 02         [24]10724 	cjne	r5,#0x70,00428$
      0068B9 80 17            [24]10725 	sjmp	00159$
      0068BB                      10726 00428$:
      0068BB BD 50 02         [24]10727 	cjne	r5,#0x50,00429$
      0068BE 80 12            [24]10728 	sjmp	00159$
      0068C0                      10729 00429$:
                                  10730 ;	calc.c:530: ((char)input == 'v') || ((char)input == 'V') ||
      0068C0 BD 76 02         [24]10731 	cjne	r5,#0x76,00430$
      0068C3 80 0D            [24]10732 	sjmp	00159$
      0068C5                      10733 00430$:
      0068C5 BD 56 02         [24]10734 	cjne	r5,#0x56,00431$
      0068C8 80 08            [24]10735 	sjmp	00159$
      0068CA                      10736 00431$:
                                  10737 ;	calc.c:531: ((char)input == '.') ||
      0068CA BD 2E 02         [24]10738 	cjne	r5,#0x2e,00432$
      0068CD 80 03            [24]10739 	sjmp	00159$
      0068CF                      10740 00432$:
                                  10741 ;	calc.c:532: ((char)input == 'x')
      0068CF BD 78 2C         [24]10742 	cjne	r5,#0x78,00160$
      0068D2                      10743 00159$:
                                  10744 ;	calc.c:534: if (state_exec(&s, EVENT_OP) <= 0) break;
      0068D2 74 02            [12]10745 	mov	a,#0x02
      0068D4 C0 E0            [24]10746 	push	acc
      0068D6 E4               [12]10747 	clr	a
      0068D7 C0 E0            [24]10748 	push	acc
      0068D9 90 90 00         [24]10749 	mov	dptr,#_s
      0068DC 75 F0 00         [24]10750 	mov	b,#0x00
      0068DF 12 21 46         [24]10751 	lcall	_state_exec
      0068E2 AE 82            [24]10752 	mov	r6,dpl
      0068E4 AF 83            [24]10753 	mov	r7,dph
      0068E6 15 81            [12]10754 	dec	sp
      0068E8 15 81            [12]10755 	dec	sp
      0068EA C3               [12]10756 	clr	c
      0068EB E4               [12]10757 	clr	a
      0068EC 9E               [12]10758 	subb	a,r6
      0068ED 74 80            [12]10759 	mov	a,#(0x00 ^ 0x80)
      0068EF 8F F0            [24]10760 	mov	b,r7
      0068F1 63 F0 80         [24]10761 	xrl	b,#0x80
      0068F4 95 F0            [12]10762 	subb	a,b
      0068F6 50 03            [24]10763 	jnc	00435$
      0068F8 02 66 FD         [24]10764 	ljmp	00192$
      0068FB                      10765 00435$:
      0068FB 02 6A 2B         [24]10766 	ljmp	00193$
      0068FE                      10767 00160$:
                                  10768 ;	calc.c:536: ((char)input == 'X') || ((char)input == 'T') ||
      0068FE BD 58 02         [24]10769 	cjne	r5,#0x58,00436$
      006901 80 17            [24]10770 	sjmp	00151$
      006903                      10771 00436$:
      006903 BD 54 02         [24]10772 	cjne	r5,#0x54,00437$
      006906 80 12            [24]10773 	sjmp	00151$
      006908                      10774 00437$:
                                  10775 ;	calc.c:537: ((char)input == 'm') || ((char)input == 'M') ||
      006908 BD 6D 02         [24]10776 	cjne	r5,#0x6d,00438$
      00690B 80 0D            [24]10777 	sjmp	00151$
      00690D                      10778 00438$:
      00690D BD 4D 02         [24]10779 	cjne	r5,#0x4d,00439$
      006910 80 08            [24]10780 	sjmp	00151$
      006912                      10781 00439$:
                                  10782 ;	calc.c:538: ((char)input == 'u') || ((char)input == 'U')
      006912 BD 75 02         [24]10783 	cjne	r5,#0x75,00440$
      006915 80 03            [24]10784 	sjmp	00151$
      006917                      10785 00440$:
      006917 BD 55 2C         [24]10786 	cjne	r5,#0x55,00152$
      00691A                      10787 00151$:
                                  10788 ;	calc.c:540: if (state_exec(&s, EVENT_OP) <= 0) break;
      00691A 74 02            [12]10789 	mov	a,#0x02
      00691C C0 E0            [24]10790 	push	acc
      00691E E4               [12]10791 	clr	a
      00691F C0 E0            [24]10792 	push	acc
      006921 90 90 00         [24]10793 	mov	dptr,#_s
      006924 75 F0 00         [24]10794 	mov	b,#0x00
      006927 12 21 46         [24]10795 	lcall	_state_exec
      00692A AE 82            [24]10796 	mov	r6,dpl
      00692C AF 83            [24]10797 	mov	r7,dph
      00692E 15 81            [12]10798 	dec	sp
      006930 15 81            [12]10799 	dec	sp
      006932 C3               [12]10800 	clr	c
      006933 E4               [12]10801 	clr	a
      006934 9E               [12]10802 	subb	a,r6
      006935 74 80            [12]10803 	mov	a,#(0x00 ^ 0x80)
      006937 8F F0            [24]10804 	mov	b,r7
      006939 63 F0 80         [24]10805 	xrl	b,#0x80
      00693C 95 F0            [12]10806 	subb	a,b
      00693E 50 03            [24]10807 	jnc	00443$
      006940 02 66 FD         [24]10808 	ljmp	00192$
      006943                      10809 00443$:
      006943 02 6A 2B         [24]10810 	ljmp	00193$
      006946                      10811 00152$:
                                  10812 ;	calc.c:542: ((char)input == '+') || ((char)input == '-')
      006946 BD 2B 02         [24]10813 	cjne	r5,#0x2b,00444$
      006949 80 03            [24]10814 	sjmp	00147$
      00694B                      10815 00444$:
      00694B BD 2D 2C         [24]10816 	cjne	r5,#0x2d,00148$
      00694E                      10817 00147$:
                                  10818 ;	calc.c:544: if (state_exec(&s, EVENT_OP) <= 0) break;
      00694E 74 02            [12]10819 	mov	a,#0x02
      006950 C0 E0            [24]10820 	push	acc
      006952 E4               [12]10821 	clr	a
      006953 C0 E0            [24]10822 	push	acc
      006955 90 90 00         [24]10823 	mov	dptr,#_s
      006958 75 F0 00         [24]10824 	mov	b,#0x00
      00695B 12 21 46         [24]10825 	lcall	_state_exec
      00695E AE 82            [24]10826 	mov	r6,dpl
      006960 AF 83            [24]10827 	mov	r7,dph
      006962 15 81            [12]10828 	dec	sp
      006964 15 81            [12]10829 	dec	sp
      006966 C3               [12]10830 	clr	c
      006967 E4               [12]10831 	clr	a
      006968 9E               [12]10832 	subb	a,r6
      006969 74 80            [12]10833 	mov	a,#(0x00 ^ 0x80)
      00696B 8F F0            [24]10834 	mov	b,r7
      00696D 63 F0 80         [24]10835 	xrl	b,#0x80
      006970 95 F0            [12]10836 	subb	a,b
      006972 50 03            [24]10837 	jnc	00447$
      006974 02 66 FD         [24]10838 	ljmp	00192$
      006977                      10839 00447$:
      006977 02 6A 2B         [24]10840 	ljmp	00193$
      00697A                      10841 00148$:
                                  10842 ;	calc.c:546: ((char)input == '*') ||
      00697A BD 2A 02         [24]10843 	cjne	r5,#0x2a,00448$
      00697D 80 12            [24]10844 	sjmp	00140$
      00697F                      10845 00448$:
                                  10846 ;	calc.c:547: ((char)input == '/') || ((char)input == '\\') ||
      00697F BD 2F 02         [24]10847 	cjne	r5,#0x2f,00449$
      006982 80 0D            [24]10848 	sjmp	00140$
      006984                      10849 00449$:
      006984 BD 5C 02         [24]10850 	cjne	r5,#0x5c,00450$
      006987 80 08            [24]10851 	sjmp	00140$
      006989                      10852 00450$:
                                  10853 ;	calc.c:548: ((char)input == '%') || ((char)input == '#')
      006989 BD 25 02         [24]10854 	cjne	r5,#0x25,00451$
      00698C 80 03            [24]10855 	sjmp	00140$
      00698E                      10856 00451$:
      00698E BD 23 29         [24]10857 	cjne	r5,#0x23,00141$
      006991                      10858 00140$:
                                  10859 ;	calc.c:550: if (state_exec(&s, EVENT_OP) <= 0) break;
      006991 74 02            [12]10860 	mov	a,#0x02
      006993 C0 E0            [24]10861 	push	acc
      006995 E4               [12]10862 	clr	a
      006996 C0 E0            [24]10863 	push	acc
      006998 90 90 00         [24]10864 	mov	dptr,#_s
      00699B 75 F0 00         [24]10865 	mov	b,#0x00
      00699E 12 21 46         [24]10866 	lcall	_state_exec
      0069A1 AE 82            [24]10867 	mov	r6,dpl
      0069A3 AF 83            [24]10868 	mov	r7,dph
      0069A5 15 81            [12]10869 	dec	sp
      0069A7 15 81            [12]10870 	dec	sp
      0069A9 C3               [12]10871 	clr	c
      0069AA E4               [12]10872 	clr	a
      0069AB 9E               [12]10873 	subb	a,r6
      0069AC 74 80            [12]10874 	mov	a,#(0x00 ^ 0x80)
      0069AE 8F F0            [24]10875 	mov	b,r7
      0069B0 63 F0 80         [24]10876 	xrl	b,#0x80
      0069B3 95 F0            [12]10877 	subb	a,b
      0069B5 50 74            [24]10878 	jnc	00193$
      0069B7 02 66 FD         [24]10879 	ljmp	00192$
      0069BA                      10880 00141$:
                                  10881 ;	calc.c:552: ((char)input == '&') ||
      0069BA BD 26 02         [24]10882 	cjne	r5,#0x26,00455$
      0069BD 80 1C            [24]10883 	sjmp	00131$
      0069BF                      10884 00455$:
                                  10885 ;	calc.c:553: ((char)input == '|') || ((char)input == '^') ||
      0069BF BD 7C 02         [24]10886 	cjne	r5,#0x7c,00456$
      0069C2 80 17            [24]10887 	sjmp	00131$
      0069C4                      10888 00456$:
      0069C4 BD 5E 02         [24]10889 	cjne	r5,#0x5e,00457$
      0069C7 80 12            [24]10890 	sjmp	00131$
      0069C9                      10891 00457$:
                                  10892 ;	calc.c:554: ((char)input == '~') ||
      0069C9 BD 7E 02         [24]10893 	cjne	r5,#0x7e,00458$
      0069CC 80 0D            [24]10894 	sjmp	00131$
      0069CE                      10895 00458$:
                                  10896 ;	calc.c:555: ((char)input == '>') || ((char)input == ']') ||
      0069CE BD 3E 02         [24]10897 	cjne	r5,#0x3e,00459$
      0069D1 80 08            [24]10898 	sjmp	00131$
      0069D3                      10899 00459$:
      0069D3 BD 5D 02         [24]10900 	cjne	r5,#0x5d,00460$
      0069D6 80 03            [24]10901 	sjmp	00131$
      0069D8                      10902 00460$:
                                  10903 ;	calc.c:556: ((char)input == '<')
      0069D8 BD 3C 29         [24]10904 	cjne	r5,#0x3c,00132$
      0069DB                      10905 00131$:
                                  10906 ;	calc.c:558: if (state_exec(&s, EVENT_OP) <= 0) break;
      0069DB 74 02            [12]10907 	mov	a,#0x02
      0069DD C0 E0            [24]10908 	push	acc
      0069DF E4               [12]10909 	clr	a
      0069E0 C0 E0            [24]10910 	push	acc
      0069E2 90 90 00         [24]10911 	mov	dptr,#_s
      0069E5 75 F0 00         [24]10912 	mov	b,#0x00
      0069E8 12 21 46         [24]10913 	lcall	_state_exec
      0069EB AE 82            [24]10914 	mov	r6,dpl
      0069ED AF 83            [24]10915 	mov	r7,dph
      0069EF 15 81            [12]10916 	dec	sp
      0069F1 15 81            [12]10917 	dec	sp
      0069F3 C3               [12]10918 	clr	c
      0069F4 E4               [12]10919 	clr	a
      0069F5 9E               [12]10920 	subb	a,r6
      0069F6 74 80            [12]10921 	mov	a,#(0x00 ^ 0x80)
      0069F8 8F F0            [24]10922 	mov	b,r7
      0069FA 63 F0 80         [24]10923 	xrl	b,#0x80
      0069FD 95 F0            [12]10924 	subb	a,b
      0069FF 50 2A            [24]10925 	jnc	00193$
      006A01 02 66 FD         [24]10926 	ljmp	00192$
      006A04                      10927 00132$:
                                  10928 ;	calc.c:560: if (state_exec(&s, EVENT_DELIM) <= 0) break;
      006A04 E4               [12]10929 	clr	a
      006A05 C0 E0            [24]10930 	push	acc
      006A07 C0 E0            [24]10931 	push	acc
      006A09 90 90 00         [24]10932 	mov	dptr,#_s
      006A0C 75 F0 00         [24]10933 	mov	b,#0x00
      006A0F 12 21 46         [24]10934 	lcall	_state_exec
      006A12 AE 82            [24]10935 	mov	r6,dpl
      006A14 AF 83            [24]10936 	mov	r7,dph
      006A16 15 81            [12]10937 	dec	sp
      006A18 15 81            [12]10938 	dec	sp
      006A1A C3               [12]10939 	clr	c
      006A1B E4               [12]10940 	clr	a
      006A1C 9E               [12]10941 	subb	a,r6
      006A1D 74 80            [12]10942 	mov	a,#(0x00 ^ 0x80)
      006A1F 8F F0            [24]10943 	mov	b,r7
      006A21 63 F0 80         [24]10944 	xrl	b,#0x80
      006A24 95 F0            [12]10945 	subb	a,b
      006A26 50 03            [24]10946 	jnc	00464$
      006A28 02 66 FD         [24]10947 	ljmp	00192$
      006A2B                      10948 00464$:
      006A2B                      10949 00193$:
                                  10950 ;	calc.c:564: printstr("TERM\r\n");
      006A2B 7D A7            [12]10951 	mov	r5,#___str_52
      006A2D 7E 8D            [12]10952 	mov	r6,#(___str_52 >> 8)
      006A2F 7F 80            [12]10953 	mov	r7,#0x80
                                  10954 ;	calc.c:51: return;
      006A31                      10955 00202$:
                                  10956 ;	calc.c:49: for (; *s; s++) putchar(*s);
      006A31 8D 82            [24]10957 	mov	dpl,r5
      006A33 8E 83            [24]10958 	mov	dph,r6
      006A35 8F F0            [24]10959 	mov	b,r7
      006A37 12 71 7E         [24]10960 	lcall	__gptrget
      006A3A FC               [12]10961 	mov	r4,a
      006A3B 60 10            [24]10962 	jz	00197$
      006A3D 7B 00            [12]10963 	mov	r3,#0x00
      006A3F 8C 82            [24]10964 	mov	dpl,r4
      006A41 8B 83            [24]10965 	mov	dph,r3
      006A43 12 2C 1F         [24]10966 	lcall	_putchar
      006A46 0D               [12]10967 	inc	r5
                                  10968 ;	calc.c:564: printstr("TERM\r\n");
      006A47 BD 00 E7         [24]10969 	cjne	r5,#0x00,00202$
      006A4A 0E               [12]10970 	inc	r6
      006A4B 80 E4            [24]10971 	sjmp	00202$
      006A4D                      10972 00197$:
                                  10973 ;	calc.c:566: PCON |= 2;
      006A4D 43 87 02         [24]10974 	orl	_PCON,#0x02
                                  10975 ;	calc.c:568: return;
                                  10976 ;	calc.c:569: }
      006A50 15 81            [12]10977 	dec	sp
      006A52 D0 08            [24]10978 	pop	_bp
      006A54 22               [24]10979 	ret
                                  10980 	.area CSEG    (CODE)
                                  10981 	.area CONST   (CODE)
                                  10982 	.area CONST   (CODE)
      0089FF                      10983 ___str_0:
      0089FF 25 30 38 6C 78       10984 	.ascii "%08lx"
      008A04 09                   10985 	.db 0x09
      008A05 00                   10986 	.db 0x00
                                  10987 	.area CSEG    (CODE)
                                  10988 	.area CONST   (CODE)
      008A06                      10989 ___str_1:
      008A06 25 20 31 31 6C 64    10990 	.ascii "% 11ld"
      008A0C 09                   10991 	.db 0x09
      008A0D 00                   10992 	.db 0x00
                                  10993 	.area CSEG    (CODE)
                                  10994 	.area CONST   (CODE)
      008A0E                      10995 ___str_2:
      008A0E 25 30 31 31 6C 6F    10996 	.ascii "%011lo"
      008A14 09                   10997 	.db 0x09
      008A15 00                   10998 	.db 0x00
                                  10999 	.area CSEG    (CODE)
                                  11000 	.area CONST   (CODE)
      008A16                      11001 ___str_3:
      008A16 0D                   11002 	.db 0x0d
      008A17 0A                   11003 	.db 0x0a
      008A18 00                   11004 	.db 0x00
                                  11005 	.area CSEG    (CODE)
                                  11006 	.area CONST   (CODE)
      008A19                      11007 ___str_4:
      008A19 73 74 61 63 6B 20 75 11008 	.ascii "stack underflow"
             6E 64 65 72 66 6C 6F
             77
      008A28 0D                   11009 	.db 0x0d
      008A29 0A                   11010 	.db 0x0a
      008A2A 00                   11011 	.db 0x00
                                  11012 	.area CSEG    (CODE)
                                  11013 	.area CONST   (CODE)
      008A2B                      11014 ___str_5:
      008A2B 50 53 50 41          11015 	.ascii "PSPA"
      008A2F 09                   11016 	.db 0x09
      008A30 00                   11017 	.db 0x00
                                  11018 	.area CSEG    (CODE)
                                  11019 	.area CONST   (CODE)
      008A31                      11020 ___str_6:
      008A31 53 53 50 41          11021 	.ascii "SSPA"
      008A35 09                   11022 	.db 0x09
      008A36 00                   11023 	.db 0x00
                                  11024 	.area CSEG    (CODE)
                                  11025 	.area CONST   (CODE)
      008A37                      11026 ___str_7:
      008A37 50 53 56 41          11027 	.ascii "PSVA"
      008A3B 09                   11028 	.db 0x09
      008A3C 00                   11029 	.db 0x00
                                  11030 	.area CSEG    (CODE)
                                  11031 	.area CONST   (CODE)
      008A3D                      11032 ___str_8:
      008A3D 50 53 56 54 4F 50    11033 	.ascii "PSVTOP"
      008A43 09                   11034 	.db 0x09
      008A44 00                   11035 	.db 0x00
                                  11036 	.area CSEG    (CODE)
                                  11037 	.area CONST   (CODE)
      008A45                      11038 ___str_9:
      008A45 50 53 50 54 4F 50    11039 	.ascii "PSPTOP"
      008A4B 09                   11040 	.db 0x09
      008A4C 00                   11041 	.db 0x00
                                  11042 	.area CSEG    (CODE)
                                  11043 	.area CONST   (CODE)
      008A4D                      11044 ___str_10:
      008A4D 0D                   11045 	.db 0x0d
      008A4E 0A                   11046 	.db 0x0a
      008A4F 73 74 61 63 6B 20 75 11047 	.ascii "stack underflow"
             6E 64 65 72 66 6C 6F
             77
      008A5E 0D                   11048 	.db 0x0d
      008A5F 0A                   11049 	.db 0x0a
      008A60 00                   11050 	.db 0x00
                                  11051 	.area CSEG    (CODE)
                                  11052 	.area CONST   (CODE)
      008A61                      11053 ___str_11:
      008A61 0D                   11054 	.db 0x0d
      008A62 0A                   11055 	.db 0x0a
      008A63 73 65 63 6F 6E 64 61 11056 	.ascii "secondary stack overflow"
             72 79 20 73 74 61 63
             6B 20 6F 76 65 72 66
             6C 6F 77
      008A7B 0D                   11057 	.db 0x0d
      008A7C 0A                   11058 	.db 0x0a
      008A7D 00                   11059 	.db 0x00
                                  11060 	.area CSEG    (CODE)
                                  11061 	.area CONST   (CODE)
      008A7E                      11062 ___str_12:
      008A7E 0D                   11063 	.db 0x0d
      008A7F 0A                   11064 	.db 0x0a
      008A80 73 65 63 6F 6E 64 61 11065 	.ascii "secondary stack underflow"
             72 79 20 73 74 61 63
             6B 20 75 6E 64 65 72
             66 6C 6F 77
      008A99 0D                   11066 	.db 0x0d
      008A9A 0A                   11067 	.db 0x0a
      008A9B 00                   11068 	.db 0x00
                                  11069 	.area CSEG    (CODE)
                                  11070 	.area CONST   (CODE)
      008A9C                      11071 ___str_13:
      008A9C 0D                   11072 	.db 0x0d
      008A9D 0A                   11073 	.db 0x0a
      008A9E 73 74 61 63 6B 20 6F 11074 	.ascii "stack overflow"
             76 65 72 66 6C 6F 77
      008AAC 0D                   11075 	.db 0x0d
      008AAD 0A                   11076 	.db 0x0a
      008AAE 00                   11077 	.db 0x00
                                  11078 	.area CSEG    (CODE)
                                  11079 	.area CONST   (CODE)
      008AAF                      11080 ___str_14:
      008AAF 0D                   11081 	.db 0x0d
      008AB0 0A                   11082 	.db 0x0a
      008AB1 64 69 76 69 73 69 6F 11083 	.ascii "division by zero"
             6E 20 62 79 20 7A 65
             72 6F
      008AC1 0D                   11084 	.db 0x0d
      008AC2 0A                   11085 	.db 0x0a
      008AC3 00                   11086 	.db 0x00
                                  11087 	.area CSEG    (CODE)
                                  11088 	.area CONST   (CODE)
      008AC4                      11089 ___str_15:
      008AC4 0D                   11090 	.db 0x0d
      008AC5 0A                   11091 	.db 0x0a
      008AC6 50 53 20 3D 20 25 70 11092 	.ascii "PS = %p, SS = %p, base = %d"
             2C 20 53 53 20 3D 20
             25 70 2C 20 62 61 73
             65 20 3D 20 25 64
      008AE1 0D                   11093 	.db 0x0d
      008AE2 0A                   11094 	.db 0x0a
      008AE3 00                   11095 	.db 0x00
                                  11096 	.area CSEG    (CODE)
                                  11097 	.area CONST   (CODE)
      008AE4                      11098 ___str_16:
      008AE4 41 43 43             11099 	.ascii "ACC"
      008AE7 09                   11100 	.db 0x09
      008AE8 00                   11101 	.db 0x00
                                  11102 	.area CSEG    (CODE)
                                  11103 	.area CONST   (CODE)
      008AE9                      11104 ___str_17:
      008AE9 0D                   11105 	.db 0x0d
      008AEA 0A                   11106 	.db 0x0a
      008AEB 50 53 54 4F 50 31    11107 	.ascii "PSTOP1"
      008AF1 09                   11108 	.db 0x09
      008AF2 00                   11109 	.db 0x00
                                  11110 	.area CSEG    (CODE)
                                  11111 	.area CONST   (CODE)
      008AF3                      11112 ___str_18:
      008AF3 0D                   11113 	.db 0x0d
      008AF4 0A                   11114 	.db 0x0a
      008AF5 50 53 54 4F 50 30    11115 	.ascii "PSTOP0"
      008AFB 09                   11116 	.db 0x09
      008AFC 00                   11117 	.db 0x00
                                  11118 	.area CSEG    (CODE)
                                  11119 	.area CONST   (CODE)
      008AFD                      11120 ___str_19:
      008AFD 0D                   11121 	.db 0x0d
      008AFE 0A                   11122 	.db 0x0a
      008AFF 53 53 54 4F 50 31    11123 	.ascii "SSTOP1"
      008B05 09                   11124 	.db 0x09
      008B06 00                   11125 	.db 0x00
                                  11126 	.area CSEG    (CODE)
                                  11127 	.area CONST   (CODE)
      008B07                      11128 ___str_20:
      008B07 0D                   11129 	.db 0x0d
      008B08 0A                   11130 	.db 0x0a
      008B09 53 53 54 4F 50 30    11131 	.ascii "SSTOP0"
      008B0F 09                   11132 	.db 0x09
      008B10 00                   11133 	.db 0x00
                                  11134 	.area CSEG    (CODE)
                                  11135 	.area CONST   (CODE)
      008B11                      11136 ___str_21:
      008B11 0D                   11137 	.db 0x0d
      008B12 0A                   11138 	.db 0x0a
      008B13 48 68 4F 6F          11139 	.ascii "HhOo"
      008B17 09                   11140 	.db 0x09
      008B18 62 61 73 65 20 31 36 11141 	.ascii "base 16 10 8 2"
             20 31 30 20 38 20 32
      008B26 0D                   11142 	.db 0x0d
      008B27 0A                   11143 	.db 0x0a
      008B28 00                   11144 	.db 0x00
                                  11145 	.area CSEG    (CODE)
                                  11146 	.area CONST   (CODE)
      008B29                      11147 ___str_22:
      008B29 70 2E                11148 	.ascii "p."
      008B2B 09                   11149 	.db 0x09
      008B2C 70 6F 70 20 74 6F 70 11150 	.ascii "pop top"
      008B33 0D                   11151 	.db 0x0d
      008B34 0A                   11152 	.db 0x0a
      008B35 00                   11153 	.db 0x00
                                  11154 	.area CSEG    (CODE)
                                  11155 	.area CONST   (CODE)
      008B36                      11156 ___str_23:
      008B36 50                   11157 	.ascii "P"
      008B37 09                   11158 	.db 0x09
      008B38 70 6F 70 20 73 74 61 11159 	.ascii "pop stack"
             63 6B
      008B41 0D                   11160 	.db 0x0d
      008B42 0A                   11161 	.db 0x0a
      008B43 00                   11162 	.db 0x00
                                  11163 	.area CSEG    (CODE)
                                  11164 	.area CONST   (CODE)
      008B44                      11165 ___str_24:
      008B44 76                   11166 	.ascii "v"
      008B45 09                   11167 	.db 0x09
      008B46 70 65 65 6B 20 74 6F 11168 	.ascii "peek top"
             70
      008B4E 0D                   11169 	.db 0x0d
      008B4F 0A                   11170 	.db 0x0a
      008B50 00                   11171 	.db 0x00
                                  11172 	.area CSEG    (CODE)
                                  11173 	.area CONST   (CODE)
      008B51                      11174 ___str_25:
      008B51 56                   11175 	.ascii "V"
      008B52 09                   11176 	.db 0x09
      008B53 70 65 65 6B 20 73 74 11177 	.ascii "peek stack"
             61 63 6B
      008B5D 0D                   11178 	.db 0x0d
      008B5E 0A                   11179 	.db 0x0a
      008B5F 00                   11180 	.db 0x00
                                  11181 	.area CSEG    (CODE)
                                  11182 	.area CONST   (CODE)
      008B60                      11183 ___str_26:
      008B60 69                   11184 	.ascii "i"
      008B61 09                   11185 	.db 0x09
      008B62 72 65 73 65 74 20 61 11186 	.ascii "reset acc"
             63 63
      008B6B 0D                   11187 	.db 0x0d
      008B6C 0A                   11188 	.db 0x0a
      008B6D 00                   11189 	.db 0x00
                                  11190 	.area CSEG    (CODE)
                                  11191 	.area CONST   (CODE)
      008B6E                      11192 ___str_27:
      008B6E 49                   11193 	.ascii "I"
      008B6F 09                   11194 	.db 0x09
      008B70 72 65 73 65 74 20 61 11195 	.ascii "reset and discard acc"
             6E 64 20 64 69 73 63
             61 72 64 20 61 63 63
      008B85 0D                   11196 	.db 0x0d
      008B86 0A                   11197 	.db 0x0a
      008B87 00                   11198 	.db 0x00
                                  11199 	.area CSEG    (CODE)
                                  11200 	.area CONST   (CODE)
      008B88                      11201 ___str_28:
      008B88 78                   11202 	.ascii "x"
      008B89 09                   11203 	.db 0x09
      008B8A 65 78 63 68 61 6E 67 11204 	.ascii "exchange top 2"
             65 20 74 6F 70 20 32
      008B98 0D                   11205 	.db 0x0d
      008B99 0A                   11206 	.db 0x0a
      008B9A 00                   11207 	.db 0x00
                                  11208 	.area CSEG    (CODE)
                                  11209 	.area CONST   (CODE)
      008B9B                      11210 ___str_29:
      008B9B 58                   11211 	.ascii "X"
      008B9C 09                   11212 	.db 0x09
      008B9D 65 78 63 68 61 6E 67 11213 	.ascii "exchange stacks primary <-> secondary"
             65 20 73 74 61 63 6B
             73 20 70 72 69 6D 61
             72 79 20 3C 2D 3E 20
             73 65 63 6F 6E 64 61
             72 79
      008BC2 0D                   11214 	.db 0x0d
      008BC3 0A                   11215 	.db 0x0a
      008BC4 00                   11216 	.db 0x00
                                  11217 	.area CSEG    (CODE)
                                  11218 	.area CONST   (CODE)
      008BC5                      11219 ___str_30:
      008BC5 54                   11220 	.ascii "T"
      008BC6 09                   11221 	.db 0x09
      008BC7 65 78 63 68 61 6E 67 11222 	.ascii "exchange tops primary <-> secondary"
             65 20 74 6F 70 73 20
             70 72 69 6D 61 72 79
             20 3C 2D 3E 20 73 65
             63 6F 6E 64 61 72 79
      008BEA 0D                   11223 	.db 0x0d
      008BEB 0A                   11224 	.db 0x0a
      008BEC 00                   11225 	.db 0x00
                                  11226 	.area CSEG    (CODE)
                                  11227 	.area CONST   (CODE)
      008BED                      11228 ___str_31:
      008BED 55                   11229 	.ascii "U"
      008BEE 09                   11230 	.db 0x09
      008BEF 63 6F 70 79 20 74 6F 11231 	.ascii "copy top secondary -> primary"
             70 20 73 65 63 6F 6E
             64 61 72 79 20 2D 3E
             20 70 72 69 6D 61 72
             79
      008C0C 0D                   11232 	.db 0x0d
      008C0D 0A                   11233 	.db 0x0a
      008C0E 00                   11234 	.db 0x00
                                  11235 	.area CSEG    (CODE)
                                  11236 	.area CONST   (CODE)
      008C0F                      11237 ___str_32:
      008C0F 75                   11238 	.ascii "u"
      008C10 09                   11239 	.db 0x09
      008C11 63 6F 70 79 20 74 6F 11240 	.ascii "copy top primary -> secondary"
             70 20 70 72 69 6D 61
             72 79 20 2D 3E 20 73
             65 63 6F 6E 64 61 72
             79
      008C2E 0D                   11241 	.db 0x0d
      008C2F 0A                   11242 	.db 0x0a
      008C30 00                   11243 	.db 0x00
                                  11244 	.area CSEG    (CODE)
                                  11245 	.area CONST   (CODE)
      008C31                      11246 ___str_33:
      008C31 4D                   11247 	.ascii "M"
      008C32 09                   11248 	.db 0x09
      008C33 6D 6F 76 65 20 74 6F 11249 	.ascii "move top secondary -> primary"
             70 20 73 65 63 6F 6E
             64 61 72 79 20 2D 3E
             20 70 72 69 6D 61 72
             79
      008C50 0D                   11250 	.db 0x0d
      008C51 0A                   11251 	.db 0x0a
      008C52 00                   11252 	.db 0x00
                                  11253 	.area CSEG    (CODE)
                                  11254 	.area CONST   (CODE)
      008C53                      11255 ___str_34:
      008C53 6D                   11256 	.ascii "m"
      008C54 09                   11257 	.db 0x09
      008C55 6D 6F 76 65 20 74 6F 11258 	.ascii "move top primary -> secondary"
             70 20 70 72 69 6D 61
             72 79 20 2D 3E 20 73
             65 63 6F 6E 64 61 72
             79
      008C72 0D                   11259 	.db 0x0d
      008C73 0A                   11260 	.db 0x0a
      008C74 00                   11261 	.db 0x00
                                  11262 	.area CSEG    (CODE)
                                  11263 	.area CONST   (CODE)
      008C75                      11264 ___str_35:
      008C75 2B                   11265 	.ascii "+"
      008C76 09                   11266 	.db 0x09
      008C77 61 64 64 20 74 6F 70 11267 	.ascii "add top 2"
             20 32
      008C80 0D                   11268 	.db 0x0d
      008C81 0A                   11269 	.db 0x0a
      008C82 00                   11270 	.db 0x00
                                  11271 	.area CSEG    (CODE)
                                  11272 	.area CONST   (CODE)
      008C83                      11273 ___str_36:
      008C83 2D                   11274 	.ascii "-"
      008C84 09                   11275 	.db 0x09
      008C85 73 75 62 74 72 61 63 11276 	.ascii "subtract top 2"
             74 20 74 6F 70 20 32
      008C93 0D                   11277 	.db 0x0d
      008C94 0A                   11278 	.db 0x0a
      008C95 00                   11279 	.db 0x00
                                  11280 	.area CSEG    (CODE)
                                  11281 	.area CONST   (CODE)
      008C96                      11282 ___str_37:
      008C96 2A                   11283 	.ascii "*"
      008C97 09                   11284 	.db 0x09
      008C98 6D 75 6C 74 69 70 6C 11285 	.ascii "multiply top 2"
             79 20 74 6F 70 20 32
      008CA6 0D                   11286 	.db 0x0d
      008CA7 0A                   11287 	.db 0x0a
      008CA8 00                   11288 	.db 0x00
                                  11289 	.area CSEG    (CODE)
                                  11290 	.area CONST   (CODE)
      008CA9                      11291 ___str_38:
      008CA9 2F                   11292 	.ascii "/"
      008CAA 09                   11293 	.db 0x09
      008CAB 64 69 76 69 64 65 20 11294 	.ascii "divide top 2"
             74 6F 70 20 32
      008CB7 0D                   11295 	.db 0x0d
      008CB8 0A                   11296 	.db 0x0a
      008CB9 00                   11297 	.db 0x00
                                  11298 	.area CSEG    (CODE)
                                  11299 	.area CONST   (CODE)
      008CBA                      11300 ___str_39:
      008CBA 5C                   11301 	.db 0x5c
      008CBB 09                   11302 	.db 0x09
      008CBC 64 69 76 69 64 65 20 11303 	.ascii "divide top 2 unsigned"
             74 6F 70 20 32 20 75
             6E 73 69 67 6E 65 64
      008CD1 0D                   11304 	.db 0x0d
      008CD2 0A                   11305 	.db 0x0a
      008CD3 00                   11306 	.db 0x00
                                  11307 	.area CSEG    (CODE)
                                  11308 	.area CONST   (CODE)
      008CD4                      11309 ___str_40:
      008CD4 25                   11310 	.ascii "%"
      008CD5 09                   11311 	.db 0x09
      008CD6 6D 6F 64 75 6C 75 73 11312 	.ascii "modulus top 2"
             20 74 6F 70 20 32
      008CE3 0D                   11313 	.db 0x0d
      008CE4 0A                   11314 	.db 0x0a
      008CE5 00                   11315 	.db 0x00
                                  11316 	.area CSEG    (CODE)
                                  11317 	.area CONST   (CODE)
      008CE6                      11318 ___str_41:
      008CE6 23                   11319 	.ascii "#"
      008CE7 09                   11320 	.db 0x09
      008CE8 6D 6F 64 75 6C 75 73 11321 	.ascii "modulus top 2 unsigned"
             20 74 6F 70 20 32 20
             75 6E 73 69 67 6E 65
             64
      008CFE 0D                   11322 	.db 0x0d
      008CFF 0A                   11323 	.db 0x0a
      008D00 00                   11324 	.db 0x00
                                  11325 	.area CSEG    (CODE)
                                  11326 	.area CONST   (CODE)
      008D01                      11327 ___str_42:
      008D01 26                   11328 	.ascii "&"
      008D02 09                   11329 	.db 0x09
      008D03 61 6E 64 20 74 6F 70 11330 	.ascii "and top 2"
             20 32
      008D0C 0D                   11331 	.db 0x0d
      008D0D 0A                   11332 	.db 0x0a
      008D0E 00                   11333 	.db 0x00
                                  11334 	.area CSEG    (CODE)
                                  11335 	.area CONST   (CODE)
      008D0F                      11336 ___str_43:
      008D0F 7C                   11337 	.ascii "|"
      008D10 09                   11338 	.db 0x09
      008D11 6F 72 20 74 6F 70 20 11339 	.ascii "or top 2"
             32
      008D19 0D                   11340 	.db 0x0d
      008D1A 0A                   11341 	.db 0x0a
      008D1B 00                   11342 	.db 0x00
                                  11343 	.area CSEG    (CODE)
                                  11344 	.area CONST   (CODE)
      008D1C                      11345 ___str_44:
      008D1C 5E                   11346 	.ascii "^"
      008D1D 09                   11347 	.db 0x09
      008D1E 78 6F 72 20 74 6F 70 11348 	.ascii "xor top 2"
             20 32
      008D27 0D                   11349 	.db 0x0d
      008D28 0A                   11350 	.db 0x0a
      008D29 00                   11351 	.db 0x00
                                  11352 	.area CSEG    (CODE)
                                  11353 	.area CONST   (CODE)
      008D2A                      11354 ___str_45:
      008D2A 3E                   11355 	.ascii ">"
      008D2B 09                   11356 	.db 0x09
      008D2C 73 68 69 66 74 20 72 11357 	.ascii "shift right top 2"
             69 67 68 74 20 74 6F
             70 20 32
      008D3D 0D                   11358 	.db 0x0d
      008D3E 0A                   11359 	.db 0x0a
      008D3F 00                   11360 	.db 0x00
                                  11361 	.area CSEG    (CODE)
                                  11362 	.area CONST   (CODE)
      008D40                      11363 ___str_46:
      008D40 5D                   11364 	.ascii "]"
      008D41 09                   11365 	.db 0x09
      008D42 61 72 69 74 68 6D 65 11366 	.ascii "arithmetic shift right top 2"
             74 69 63 20 73 68 69
             66 74 20 72 69 67 68
             74 20 74 6F 70 20 32
      008D5E 0D                   11367 	.db 0x0d
      008D5F 0A                   11368 	.db 0x0a
      008D60 00                   11369 	.db 0x00
                                  11370 	.area CSEG    (CODE)
                                  11371 	.area CONST   (CODE)
      008D61                      11372 ___str_47:
      008D61 3C                   11373 	.ascii "<"
      008D62 09                   11374 	.db 0x09
      008D63 73 68 69 66 74 20 6C 11375 	.ascii "shift left top 2"
             65 66 74 20 74 6F 70
             20 32
      008D73 0D                   11376 	.db 0x0d
      008D74 0A                   11377 	.db 0x0a
      008D75 00                   11378 	.db 0x00
                                  11379 	.area CSEG    (CODE)
                                  11380 	.area CONST   (CODE)
      008D76                      11381 ___str_48:
      008D76 7E                   11382 	.ascii "~"
      008D77 09                   11383 	.db 0x09
      008D78 62 69 74 77 69 73 65 11384 	.ascii "bitwise not top"
             20 6E 6F 74 20 74 6F
             70
      008D87 0D                   11385 	.db 0x0d
      008D88 0A                   11386 	.db 0x0a
      008D89 00                   11387 	.db 0x00
                                  11388 	.area CSEG    (CODE)
                                  11389 	.area CONST   (CODE)
      008D8A                      11390 ___str_49:
      008D8A 73                   11391 	.ascii "s"
      008D8B 09                   11392 	.db 0x09
      008D8C 73 74 61 74 75 73    11393 	.ascii "status"
      008D92 0D                   11394 	.db 0x0d
      008D93 0A                   11395 	.db 0x0a
      008D94 00                   11396 	.db 0x00
                                  11397 	.area CSEG    (CODE)
                                  11398 	.area CONST   (CODE)
      008D95                      11399 ___str_50:
      008D95 3F                   11400 	.ascii "?"
      008D96 09                   11401 	.db 0x09
      008D97 68 65 6C 70          11402 	.ascii "help"
      008D9B 0D                   11403 	.db 0x0d
      008D9C 0A                   11404 	.db 0x0a
      008D9D 00                   11405 	.db 0x00
                                  11406 	.area CSEG    (CODE)
                                  11407 	.area CONST   (CODE)
      008D9E                      11408 ___str_51:
      008D9E 71                   11409 	.ascii "q"
      008D9F 09                   11410 	.db 0x09
      008DA0 71 75 69 74          11411 	.ascii "quit"
      008DA4 0D                   11412 	.db 0x0d
      008DA5 0A                   11413 	.db 0x0a
      008DA6 00                   11414 	.db 0x00
                                  11415 	.area CSEG    (CODE)
                                  11416 	.area CONST   (CODE)
      008DA7                      11417 ___str_52:
      008DA7 54 45 52 4D          11418 	.ascii "TERM"
      008DAB 0D                   11419 	.db 0x0d
      008DAC 0A                   11420 	.db 0x0a
      008DAD 00                   11421 	.db 0x00
                                  11422 	.area CSEG    (CODE)
                                  11423 	.area XINIT   (CODE)
      008DBF                      11424 __xinit__deltas:
      008DBF 00 00                11425 	.byte #0x00, #0x00	;  0
      008DC1 00 00                11426 	.byte #0x00, #0x00	;  0
      008DC3 00 00                11427 	.byte #0x00, #0x00	;  0
      008DC5 00 00                11428 	.byte #0x00,#0x00
      008DC7 00 00                11429 	.byte #0x00,#0x00
      008DC9 00 00                11430 	.byte #0x00, #0x00	;  0
      008DCB 01 00                11431 	.byte #0x01, #0x00	;  1
      008DCD 02 00                11432 	.byte #0x02, #0x00	;  2
      008DCF 00 00                11433 	.byte #0x00,#0x00
      008DD1 41 2C                11434 	.byte _accumulate, (_accumulate >> 8)
      008DD3 00 00                11435 	.byte #0x00, #0x00	;  0
      008DD5 02 00                11436 	.byte #0x02, #0x00	;  2
      008DD7 01 00                11437 	.byte #0x01, #0x00	;  1
      008DD9 00 00                11438 	.byte #0x00,#0x00
      008DDB C3 34                11439 	.byte _operator, (_operator >> 8)
      008DDD 01 00                11440 	.byte #0x01, #0x00	;  1
      008DDF 00 00                11441 	.byte #0x00, #0x00	;  0
      008DE1 00 00                11442 	.byte #0x00, #0x00	;  0
      008DE3 00 00                11443 	.byte #0x00,#0x00
      008DE5 00 00                11444 	.byte #0x00,#0x00
      008DE7 01 00                11445 	.byte #0x01, #0x00	;  1
      008DE9 02 00                11446 	.byte #0x02, #0x00	;  2
      008DEB 01 00                11447 	.byte #0x01, #0x00	;  1
      008DED 00 00                11448 	.byte #0x00,#0x00
      008DEF C3 34                11449 	.byte _operator, (_operator >> 8)
      008DF1 01 00                11450 	.byte #0x01, #0x00	;  1
      008DF3 01 00                11451 	.byte #0x01, #0x00	;  1
      008DF5 02 00                11452 	.byte #0x02, #0x00	;  2
      008DF7 00 00                11453 	.byte #0x00,#0x00
      008DF9 41 2C                11454 	.byte _accumulate, (_accumulate >> 8)
      008DFB 02 00                11455 	.byte #0x02, #0x00	;  2
      008DFD 00 00                11456 	.byte #0x00, #0x00	;  0
      008DFF 00 00                11457 	.byte #0x00, #0x00	;  0
      008E01 00 00                11458 	.byte #0x00,#0x00
      008E03 BD 57                11459 	.byte _push_acc, (_push_acc >> 8)
      008E05 02 00                11460 	.byte #0x02, #0x00	;  2
      008E07 07 00                11461 	.byte #0x07, #0x00	;  7
      008E09 00 00                11462 	.byte #0x00, #0x00	;  0
      008E0B 00 00                11463 	.byte #0x00,#0x00
      008E0D E0 58                11464 	.byte _reset_acc, (_reset_acc >> 8)
      008E0F 02 00                11465 	.byte #0x02, #0x00	;  2
      008E11 01 00                11466 	.byte #0x01, #0x00	;  1
      008E13 02 00                11467 	.byte #0x02, #0x00	;  2
      008E15 00 00                11468 	.byte #0x00,#0x00
      008E17 41 2C                11469 	.byte _accumulate, (_accumulate >> 8)
      008E19 02 00                11470 	.byte #0x02, #0x00	;  2
      008E1B 02 00                11471 	.byte #0x02, #0x00	;  2
      008E1D 01 00                11472 	.byte #0x01, #0x00	;  1
      008E1F 00 00                11473 	.byte #0x00,#0x00
      008E21 BD 57                11474 	.byte _push_acc, (_push_acc >> 8)
      008E23 FF 7F                11475 	.byte #0xff, #0x7f	;  32767
      008E25 06 00                11476 	.byte #0x06, #0x00	;  6
      008E27 FF 7F                11477 	.byte #0xff, #0x7f	;  32767
      008E29 00 00                11478 	.byte #0x00,#0x00
      008E2B E0 58                11479 	.byte _reset_acc, (_reset_acc >> 8)
      008E2D FF 7F                11480 	.byte #0xff, #0x7f	;  32767
      008E2F 07 00                11481 	.byte #0x07, #0x00	;  7
      008E31 FF 7F                11482 	.byte #0xff, #0x7f	;  32767
      008E33 00 00                11483 	.byte #0x00,#0x00
      008E35 00 00                11484 	.byte #0x00,#0x00
      008E37 FF 7F                11485 	.byte #0xff, #0x7f	;  32767
      008E39 05 00                11486 	.byte #0x05, #0x00	;  5
      008E3B FF 7F                11487 	.byte #0xff, #0x7f	;  32767
      008E3D 00 00                11488 	.byte #0x00,#0x00
      008E3F 4A 59                11489 	.byte _reset_base, (_reset_base >> 8)
      008E41 FF 7F                11490 	.byte #0xff, #0x7f	;  32767
      008E43 03 00                11491 	.byte #0x03, #0x00	;  3
      008E45 FF 7F                11492 	.byte #0xff, #0x7f	;  32767
      008E47 00 00                11493 	.byte #0x00,#0x00
      008E49 C8 59                11494 	.byte _status, (_status >> 8)
      008E4B FF 7F                11495 	.byte #0xff, #0x7f	;  32767
      008E4D 04 00                11496 	.byte #0x04, #0x00	;  4
      008E4F FF 7F                11497 	.byte #0xff, #0x7f	;  32767
      008E51 00 00                11498 	.byte #0x00,#0x00
      008E53 27 62                11499 	.byte _help, (_help >> 8)
      008E55 FF 7F                11500 	.byte #0xff, #0x7f	;  32767
      008E57 08 00                11501 	.byte #0x08, #0x00	;  8
      008E59 03 00                11502 	.byte #0x03, #0x00	;  3
      008E5B 00 00                11503 	.byte #0x00,#0x00
      008E5D B2 2D                11504 	.byte _dump_pop, (_dump_pop >> 8)
      008E5F 00 80                11505 	.byte #0x00, #0x80	; -32768
      008E61 00 80                11506 	.byte #0x00, #0x80	; -32768
      008E63 00 80                11507 	.byte #0x00, #0x80	; -32768
      008E65 00 00                11508 	.byte #0x00,#0x00
      008E67 00 00                11509 	.byte #0x00,#0x00
                                  11510 	.area CABS    (ABS,CODE)
