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
      002003 02 65 4B         [24]  373 	ljmp	_main
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
                                    443 ;	calc.c:63: static int accumulate(void *_ctx, delta_t *delta) __reentrant {
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
                                    464 ;	calc.c:64: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
      002C51 E5 08            [12]  465 	mov	a,_bp
      002C53 24 08            [12]  466 	add	a,#0x08
      002C55 F8               [12]  467 	mov	r0,a
      002C56 A6 05            [24]  468 	mov	@r0,ar5
      002C58 08               [12]  469 	inc	r0
      002C59 A6 06            [24]  470 	mov	@r0,ar6
      002C5B 08               [12]  471 	inc	r0
      002C5C A6 07            [24]  472 	mov	@r0,ar7
                                    473 ;	calc.c:69: if (!ctx->acc_valid) {
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
      002C74 12 70 79         [24]  489 	lcall	__gptrget
      002C77 70 31            [24]  490 	jnz	00102$
                                    491 ;	calc.c:70: ctx->acc_valid = 1;
      002C79 8A 82            [24]  492 	mov	dpl,r2
      002C7B 8B 83            [24]  493 	mov	dph,r3
      002C7D 8C F0            [24]  494 	mov	b,r4
      002C7F 74 01            [12]  495 	mov	a,#0x01
      002C81 12 6B FE         [24]  496 	lcall	__gptrput
                                    497 ;	calc.c:71: ctx->acc = 0l;
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
      002C9B 12 6B FE         [24]  514 	lcall	__gptrput
      002C9E A3               [24]  515 	inc	dptr
      002C9F 12 6B FE         [24]  516 	lcall	__gptrput
      002CA2 A3               [24]  517 	inc	dptr
      002CA3 12 6B FE         [24]  518 	lcall	__gptrput
      002CA6 A3               [24]  519 	inc	dptr
      002CA7 12 6B FE         [24]  520 	lcall	__gptrput
      002CAA                        521 00102$:
                                    522 ;	calc.c:74: d = strtol(ctx->digit, NULL, ctx->base);
      002CAA E5 08            [12]  523 	mov	a,_bp
      002CAC 24 08            [12]  524 	add	a,#0x08
      002CAE F8               [12]  525 	mov	r0,a
      002CAF 86 82            [24]  526 	mov	dpl,@r0
      002CB1 08               [12]  527 	inc	r0
      002CB2 86 83            [24]  528 	mov	dph,@r0
      002CB4 08               [12]  529 	inc	r0
      002CB5 86 F0            [24]  530 	mov	b,@r0
      002CB7 12 70 79         [24]  531 	lcall	__gptrget
      002CBA FB               [12]  532 	mov	r3,a
      002CBB A3               [24]  533 	inc	dptr
      002CBC 12 70 79         [24]  534 	lcall	__gptrget
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
      002CE1 12 69 C0         [24]  557 	lcall	_strtol
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
                                    572 ;	calc.c:75: ctx->acc = ctx->acc * (long)ctx->base + d;
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
      002D1F 12 70 79         [24]  600 	lcall	__gptrget
      002D22 F7               [12]  601 	mov	@r1,a
      002D23 A3               [24]  602 	inc	dptr
      002D24 12 70 79         [24]  603 	lcall	__gptrget
      002D27 09               [12]  604 	inc	r1
      002D28 F7               [12]  605 	mov	@r1,a
      002D29 A3               [24]  606 	inc	dptr
      002D2A 12 70 79         [24]  607 	lcall	__gptrget
      002D2D 09               [12]  608 	inc	r1
      002D2E F7               [12]  609 	mov	@r1,a
      002D2F A3               [24]  610 	inc	dptr
      002D30 12 70 79         [24]  611 	lcall	__gptrget
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
      002D42 12 70 79         [24]  622 	lcall	__gptrget
      002D45 FA               [12]  623 	mov	r2,a
      002D46 A3               [24]  624 	inc	dptr
      002D47 12 70 79         [24]  625 	lcall	__gptrget
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
      002D67 12 74 72         [24]  645 	lcall	__mullong
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
      002D97 12 6B FE         [24]  679 	lcall	__gptrput
      002D9A A3               [24]  680 	inc	dptr
      002D9B ED               [12]  681 	mov	a,r5
      002D9C 12 6B FE         [24]  682 	lcall	__gptrput
      002D9F A3               [24]  683 	inc	dptr
      002DA0 EE               [12]  684 	mov	a,r6
      002DA1 12 6B FE         [24]  685 	lcall	__gptrput
      002DA4 A3               [24]  686 	inc	dptr
      002DA5 EF               [12]  687 	mov	a,r7
      002DA6 12 6B FE         [24]  688 	lcall	__gptrput
                                    689 ;	calc.c:77: return 1;
      002DA9 90 00 01         [24]  690 	mov	dptr,#0x0001
                                    691 ;	calc.c:78: }
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
      002DB2                        732 _dump_pop:
      002DB2 C0 08            [24]  733 	push	_bp
      002DB4 E5 81            [12]  734 	mov	a,sp
      002DB6 F5 08            [12]  735 	mov	_bp,a
      002DB8 24 19            [12]  736 	add	a,#0x19
      002DBA F5 81            [12]  737 	mov	sp,a
      002DBC AD 82            [24]  738 	mov	r5,dpl
      002DBE AE 83            [24]  739 	mov	r6,dph
      002DC0 AF F0            [24]  740 	mov	r7,b
                                    741 ;	calc.c:81: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
      002DC2 E5 08            [12]  742 	mov	a,_bp
      002DC4 24 0B            [12]  743 	add	a,#0x0b
      002DC6 F8               [12]  744 	mov	r0,a
      002DC7 A6 05            [24]  745 	mov	@r0,ar5
      002DC9 08               [12]  746 	inc	r0
      002DCA A6 06            [24]  747 	mov	@r0,ar6
      002DCC 08               [12]  748 	inc	r0
      002DCD A6 07            [24]  749 	mov	@r0,ar7
                                    750 ;	calc.c:85: if (delta->event == EVENT_TERM) printstr("\r\nPS\r\n");
      002DCF E5 08            [12]  751 	mov	a,_bp
      002DD1 24 FB            [12]  752 	add	a,#0xfb
      002DD3 F8               [12]  753 	mov	r0,a
      002DD4 86 02            [24]  754 	mov	ar2,@r0
      002DD6 08               [12]  755 	inc	r0
      002DD7 86 03            [24]  756 	mov	ar3,@r0
      002DD9 08               [12]  757 	inc	r0
      002DDA 86 04            [24]  758 	mov	ar4,@r0
      002DDC E5 08            [12]  759 	mov	a,_bp
      002DDE 24 08            [12]  760 	add	a,#0x08
      002DE0 F8               [12]  761 	mov	r0,a
      002DE1 74 02            [12]  762 	mov	a,#0x02
      002DE3 2A               [12]  763 	add	a,r2
      002DE4 F6               [12]  764 	mov	@r0,a
      002DE5 E4               [12]  765 	clr	a
      002DE6 3B               [12]  766 	addc	a,r3
      002DE7 08               [12]  767 	inc	r0
      002DE8 F6               [12]  768 	mov	@r0,a
      002DE9 08               [12]  769 	inc	r0
      002DEA A6 04            [24]  770 	mov	@r0,ar4
      002DEC E5 08            [12]  771 	mov	a,_bp
      002DEE 24 08            [12]  772 	add	a,#0x08
      002DF0 F8               [12]  773 	mov	r0,a
      002DF1 86 82            [24]  774 	mov	dpl,@r0
      002DF3 08               [12]  775 	inc	r0
      002DF4 86 83            [24]  776 	mov	dph,@r0
      002DF6 08               [12]  777 	inc	r0
      002DF7 86 F0            [24]  778 	mov	b,@r0
      002DF9 12 70 79         [24]  779 	lcall	__gptrget
      002DFC FE               [12]  780 	mov	r6,a
      002DFD A3               [24]  781 	inc	dptr
      002DFE 12 70 79         [24]  782 	lcall	__gptrget
      002E01 FF               [12]  783 	mov	r7,a
      002E02 BE 08 27         [24]  784 	cjne	r6,#0x08,00102$
      002E05 BF 00 24         [24]  785 	cjne	r7,#0x00,00102$
      002E08 7D FA            [12]  786 	mov	r5,#___str_0
      002E0A 7E 88            [12]  787 	mov	r6,#(___str_0 >> 8)
      002E0C 7F 80            [12]  788 	mov	r7,#0x80
                                    789 ;	calc.c:51: return;
      002E0E                        790 00133$:
                                    791 ;	calc.c:49: for (; *s; s++) putchar(*s);
      002E0E 8D 82            [24]  792 	mov	dpl,r5
      002E10 8E 83            [24]  793 	mov	dph,r6
      002E12 8F F0            [24]  794 	mov	b,r7
      002E14 12 70 79         [24]  795 	lcall	__gptrget
      002E17 FC               [12]  796 	mov	r4,a
      002E18 60 12            [24]  797 	jz	00102$
      002E1A 8C 03            [24]  798 	mov	ar3,r4
      002E1C 7C 00            [12]  799 	mov	r4,#0x00
      002E1E 8B 82            [24]  800 	mov	dpl,r3
      002E20 8C 83            [24]  801 	mov	dph,r4
      002E22 12 2C 1F         [24]  802 	lcall	_putchar
      002E25 0D               [12]  803 	inc	r5
                                    804 ;	calc.c:85: if (delta->event == EVENT_TERM) printstr("\r\nPS\r\n");
      002E26 BD 00 E5         [24]  805 	cjne	r5,#0x00,00133$
      002E29 0E               [12]  806 	inc	r6
      002E2A 80 E2            [24]  807 	sjmp	00133$
      002E2C                        808 00102$:
                                    809 ;	calc.c:86: r = stack_pop(ctx->ps, &d);
      002E2C E5 08            [12]  810 	mov	a,_bp
      002E2E 24 0E            [12]  811 	add	a,#0x0e
      002E30 FF               [12]  812 	mov	r7,a
      002E31 E5 08            [12]  813 	mov	a,_bp
      002E33 24 05            [12]  814 	add	a,#0x05
      002E35 F8               [12]  815 	mov	r0,a
      002E36 A6 07            [24]  816 	mov	@r0,ar7
      002E38 08               [12]  817 	inc	r0
      002E39 76 00            [12]  818 	mov	@r0,#0x00
      002E3B 08               [12]  819 	inc	r0
      002E3C 76 40            [12]  820 	mov	@r0,#0x40
      002E3E E5 08            [12]  821 	mov	a,_bp
      002E40 24 0B            [12]  822 	add	a,#0x0b
      002E42 F8               [12]  823 	mov	r0,a
      002E43 A9 08            [24]  824 	mov	r1,_bp
      002E45 09               [12]  825 	inc	r1
      002E46 09               [12]  826 	inc	r1
      002E47 74 13            [12]  827 	mov	a,#0x13
      002E49 26               [12]  828 	add	a,@r0
      002E4A F7               [12]  829 	mov	@r1,a
      002E4B 74 40            [12]  830 	mov	a,#0x40
      002E4D 08               [12]  831 	inc	r0
      002E4E 36               [12]  832 	addc	a,@r0
      002E4F 09               [12]  833 	inc	r1
      002E50 F7               [12]  834 	mov	@r1,a
      002E51 08               [12]  835 	inc	r0
      002E52 09               [12]  836 	inc	r1
      002E53 E6               [12]  837 	mov	a,@r0
      002E54 F7               [12]  838 	mov	@r1,a
      002E55 A8 08            [24]  839 	mov	r0,_bp
      002E57 08               [12]  840 	inc	r0
      002E58 08               [12]  841 	inc	r0
      002E59 86 82            [24]  842 	mov	dpl,@r0
      002E5B 08               [12]  843 	inc	r0
      002E5C 86 83            [24]  844 	mov	dph,@r0
      002E5E 08               [12]  845 	inc	r0
      002E5F 86 F0            [24]  846 	mov	b,@r0
      002E61 12 70 79         [24]  847 	lcall	__gptrget
      002E64 FA               [12]  848 	mov	r2,a
      002E65 A3               [24]  849 	inc	dptr
      002E66 12 70 79         [24]  850 	lcall	__gptrget
      002E69 FB               [12]  851 	mov	r3,a
      002E6A A3               [24]  852 	inc	dptr
      002E6B 12 70 79         [24]  853 	lcall	__gptrget
      002E6E FE               [12]  854 	mov	r6,a
      002E6F C0 07            [24]  855 	push	ar7
      002E71 E5 08            [12]  856 	mov	a,_bp
      002E73 24 05            [12]  857 	add	a,#0x05
      002E75 F8               [12]  858 	mov	r0,a
      002E76 E6               [12]  859 	mov	a,@r0
      002E77 C0 E0            [24]  860 	push	acc
      002E79 08               [12]  861 	inc	r0
      002E7A E6               [12]  862 	mov	a,@r0
      002E7B C0 E0            [24]  863 	push	acc
      002E7D 08               [12]  864 	inc	r0
      002E7E E6               [12]  865 	mov	a,@r0
      002E7F C0 E0            [24]  866 	push	acc
      002E81 8A 82            [24]  867 	mov	dpl,r2
      002E83 8B 83            [24]  868 	mov	dph,r3
      002E85 8E F0            [24]  869 	mov	b,r6
      002E87 12 27 B4         [24]  870 	lcall	_stack_pop
      002E8A AE 82            [24]  871 	mov	r6,dpl
      002E8C AD 83            [24]  872 	mov	r5,dph
      002E8E 15 81            [12]  873 	dec	sp
      002E90 15 81            [12]  874 	dec	sp
      002E92 15 81            [12]  875 	dec	sp
      002E94 D0 07            [24]  876 	pop	ar7
                                    877 ;	calc.c:87: if (!r) {
      002E96 EE               [12]  878 	mov	a,r6
      002E97 4D               [12]  879 	orl	a,r5
      002E98 70 44            [24]  880 	jnz	00181$
                                    881 ;	calc.c:88: if (delta->event != EVENT_TERM) printstr("stack underflow\r\n");
      002E9A E5 08            [12]  882 	mov	a,_bp
      002E9C 24 08            [12]  883 	add	a,#0x08
      002E9E F8               [12]  884 	mov	r0,a
      002E9F 86 82            [24]  885 	mov	dpl,@r0
      002EA1 08               [12]  886 	inc	r0
      002EA2 86 83            [24]  887 	mov	dph,@r0
      002EA4 08               [12]  888 	inc	r0
      002EA5 86 F0            [24]  889 	mov	b,@r0
      002EA7 12 70 79         [24]  890 	lcall	__gptrget
      002EAA FD               [12]  891 	mov	r5,a
      002EAB A3               [24]  892 	inc	dptr
      002EAC 12 70 79         [24]  893 	lcall	__gptrget
      002EAF FE               [12]  894 	mov	r6,a
      002EB0 BD 08 06         [24]  895 	cjne	r5,#0x08,00318$
      002EB3 BE 00 03         [24]  896 	cjne	r6,#0x00,00318$
      002EB6 02 30 64         [24]  897 	ljmp	00110$
      002EB9                        898 00318$:
      002EB9 7C 01            [12]  899 	mov	r4,#___str_1
      002EBB 7D 89            [12]  900 	mov	r5,#(___str_1 >> 8)
      002EBD 7E 80            [12]  901 	mov	r6,#0x80
                                    902 ;	calc.c:51: return;
      002EBF                        903 00136$:
                                    904 ;	calc.c:49: for (; *s; s++) putchar(*s);
      002EBF 8C 82            [24]  905 	mov	dpl,r4
      002EC1 8D 83            [24]  906 	mov	dph,r5
      002EC3 8E F0            [24]  907 	mov	b,r6
      002EC5 12 70 79         [24]  908 	lcall	__gptrget
      002EC8 FB               [12]  909 	mov	r3,a
      002EC9 70 03            [24]  910 	jnz	00319$
      002ECB 02 30 64         [24]  911 	ljmp	00110$
      002ECE                        912 00319$:
      002ECE 7A 00            [12]  913 	mov	r2,#0x00
      002ED0 8B 82            [24]  914 	mov	dpl,r3
      002ED2 8A 83            [24]  915 	mov	dph,r2
      002ED4 12 2C 1F         [24]  916 	lcall	_putchar
      002ED7 0C               [12]  917 	inc	r4
                                    918 ;	calc.c:89: } else while (r > 0) {
      002ED8 BC 00 E4         [24]  919 	cjne	r4,#0x00,00136$
      002EDB 0D               [12]  920 	inc	r5
      002EDC 80 E1            [24]  921 	sjmp	00136$
      002EDE                        922 00181$:
      002EDE A8 08            [24]  923 	mov	r0,_bp
      002EE0 08               [12]  924 	inc	r0
      002EE1 A6 07            [24]  925 	mov	@r0,ar7
      002EE3                        926 00105$:
      002EE3 C3               [12]  927 	clr	c
      002EE4 E4               [12]  928 	clr	a
      002EE5 9E               [12]  929 	subb	a,r6
      002EE6 74 80            [12]  930 	mov	a,#(0x00 ^ 0x80)
      002EE8 8D F0            [24]  931 	mov	b,r5
      002EEA 63 F0 80         [24]  932 	xrl	b,#0x80
      002EED 95 F0            [12]  933 	subb	a,b
      002EEF 40 03            [24]  934 	jc	00321$
      002EF1 02 30 64         [24]  935 	ljmp	00110$
      002EF4                        936 00321$:
                                    937 ;	calc.c:90: printstr("VA ");
      002EF4 7B 13            [12]  938 	mov	r3,#___str_2
      002EF6 7C 89            [12]  939 	mov	r4,#(___str_2 >> 8)
      002EF8 7D 80            [12]  940 	mov	r5,#0x80
                                    941 ;	calc.c:51: return;
      002EFA                        942 00139$:
                                    943 ;	calc.c:49: for (; *s; s++) putchar(*s);
      002EFA 8B 82            [24]  944 	mov	dpl,r3
      002EFC 8C 83            [24]  945 	mov	dph,r4
      002EFE 8D F0            [24]  946 	mov	b,r5
      002F00 12 70 79         [24]  947 	lcall	__gptrget
      002F03 FA               [12]  948 	mov	r2,a
      002F04 60 10            [24]  949 	jz	00119$
      002F06 7E 00            [12]  950 	mov	r6,#0x00
      002F08 8A 82            [24]  951 	mov	dpl,r2
      002F0A 8E 83            [24]  952 	mov	dph,r6
      002F0C 12 2C 1F         [24]  953 	lcall	_putchar
      002F0F 0B               [12]  954 	inc	r3
                                    955 ;	calc.c:90: printstr("VA ");
      002F10 BB 00 E7         [24]  956 	cjne	r3,#0x00,00139$
      002F13 0C               [12]  957 	inc	r4
      002F14 80 E4            [24]  958 	sjmp	00139$
      002F16                        959 00119$:
                                    960 ;	calc.c:91: printf("% 11ld / ", d);
      002F16 C0 07            [24]  961 	push	ar7
      002F18 E5 08            [12]  962 	mov	a,_bp
      002F1A 24 0E            [12]  963 	add	a,#0x0e
      002F1C F8               [12]  964 	mov	r0,a
      002F1D E6               [12]  965 	mov	a,@r0
      002F1E C0 E0            [24]  966 	push	acc
      002F20 08               [12]  967 	inc	r0
      002F21 E6               [12]  968 	mov	a,@r0
      002F22 C0 E0            [24]  969 	push	acc
      002F24 08               [12]  970 	inc	r0
      002F25 E6               [12]  971 	mov	a,@r0
      002F26 C0 E0            [24]  972 	push	acc
      002F28 08               [12]  973 	inc	r0
      002F29 E6               [12]  974 	mov	a,@r0
      002F2A C0 E0            [24]  975 	push	acc
      002F2C 74 17            [12]  976 	mov	a,#___str_3
      002F2E C0 E0            [24]  977 	push	acc
      002F30 74 89            [12]  978 	mov	a,#(___str_3 >> 8)
      002F32 C0 E0            [24]  979 	push	acc
      002F34 74 80            [12]  980 	mov	a,#0x80
      002F36 C0 E0            [24]  981 	push	acc
      002F38 12 70 40         [24]  982 	lcall	_printf
      002F3B E5 81            [12]  983 	mov	a,sp
      002F3D 24 F9            [12]  984 	add	a,#0xf9
      002F3F F5 81            [12]  985 	mov	sp,a
                                    986 ;	calc.c:92: printf("%08lx / ", d);
      002F41 E5 08            [12]  987 	mov	a,_bp
      002F43 24 0E            [12]  988 	add	a,#0x0e
      002F45 F8               [12]  989 	mov	r0,a
      002F46 E6               [12]  990 	mov	a,@r0
      002F47 C0 E0            [24]  991 	push	acc
      002F49 08               [12]  992 	inc	r0
      002F4A E6               [12]  993 	mov	a,@r0
      002F4B C0 E0            [24]  994 	push	acc
      002F4D 08               [12]  995 	inc	r0
      002F4E E6               [12]  996 	mov	a,@r0
      002F4F C0 E0            [24]  997 	push	acc
      002F51 08               [12]  998 	inc	r0
      002F52 E6               [12]  999 	mov	a,@r0
      002F53 C0 E0            [24] 1000 	push	acc
      002F55 74 21            [12] 1001 	mov	a,#___str_4
      002F57 C0 E0            [24] 1002 	push	acc
      002F59 74 89            [12] 1003 	mov	a,#(___str_4 >> 8)
      002F5B C0 E0            [24] 1004 	push	acc
      002F5D 74 80            [12] 1005 	mov	a,#0x80
      002F5F C0 E0            [24] 1006 	push	acc
      002F61 12 70 40         [24] 1007 	lcall	_printf
      002F64 E5 81            [12] 1008 	mov	a,sp
      002F66 24 F9            [12] 1009 	add	a,#0xf9
      002F68 F5 81            [12] 1010 	mov	sp,a
      002F6A D0 07            [24] 1011 	pop	ar7
                                   1012 ;	calc.c:93: printbin(d);
      002F6C E5 08            [12] 1013 	mov	a,_bp
      002F6E 24 0E            [12] 1014 	add	a,#0x0e
      002F70 F8               [12] 1015 	mov	r0,a
      002F71 86 02            [24] 1016 	mov	ar2,@r0
      002F73 08               [12] 1017 	inc	r0
      002F74 86 03            [24] 1018 	mov	ar3,@r0
      002F76 08               [12] 1019 	inc	r0
      002F77 86 04            [24] 1020 	mov	ar4,@r0
      002F79 08               [12] 1021 	inc	r0
      002F7A 86 05            [24] 1022 	mov	ar5,@r0
      002F7C E5 08            [12] 1023 	mov	a,_bp
      002F7E 24 12            [12] 1024 	add	a,#0x12
      002F80 F8               [12] 1025 	mov	r0,a
      002F81 A6 02            [24] 1026 	mov	@r0,ar2
      002F83 08               [12] 1027 	inc	r0
      002F84 A6 03            [24] 1028 	mov	@r0,ar3
      002F86 08               [12] 1029 	inc	r0
      002F87 A6 04            [24] 1030 	mov	@r0,ar4
      002F89 08               [12] 1031 	inc	r0
      002F8A A6 05            [24] 1032 	mov	@r0,ar5
                                   1033 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      002F8C E5 08            [12] 1034 	mov	a,_bp
      002F8E 24 16            [12] 1035 	add	a,#0x16
      002F90 F8               [12] 1036 	mov	r0,a
      002F91 E4               [12] 1037 	clr	a
      002F92 F6               [12] 1038 	mov	@r0,a
      002F93 08               [12] 1039 	inc	r0
      002F94 F6               [12] 1040 	mov	@r0,a
      002F95 08               [12] 1041 	inc	r0
      002F96 F6               [12] 1042 	mov	@r0,a
      002F97 08               [12] 1043 	inc	r0
      002F98 76 80            [12] 1044 	mov	@r0,#0x80
      002F9A                       1045 00141$:
                                   1046 ;	calc.c:58: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      002F9A E5 08            [12] 1047 	mov	a,_bp
      002F9C 24 12            [12] 1048 	add	a,#0x12
      002F9E F8               [12] 1049 	mov	r0,a
      002F9F 86 03            [24] 1050 	mov	ar3,@r0
      002FA1 08               [12] 1051 	inc	r0
      002FA2 86 04            [24] 1052 	mov	ar4,@r0
      002FA4 08               [12] 1053 	inc	r0
      002FA5 86 05            [24] 1054 	mov	ar5,@r0
      002FA7 08               [12] 1055 	inc	r0
      002FA8 86 06            [24] 1056 	mov	ar6,@r0
      002FAA E5 08            [12] 1057 	mov	a,_bp
      002FAC 24 16            [12] 1058 	add	a,#0x16
      002FAE F8               [12] 1059 	mov	r0,a
      002FAF E6               [12] 1060 	mov	a,@r0
      002FB0 52 03            [12] 1061 	anl	ar3,a
      002FB2 08               [12] 1062 	inc	r0
      002FB3 E6               [12] 1063 	mov	a,@r0
      002FB4 52 04            [12] 1064 	anl	ar4,a
      002FB6 08               [12] 1065 	inc	r0
      002FB7 E6               [12] 1066 	mov	a,@r0
      002FB8 52 05            [12] 1067 	anl	ar5,a
      002FBA 08               [12] 1068 	inc	r0
      002FBB E6               [12] 1069 	mov	a,@r0
      002FBC 52 06            [12] 1070 	anl	ar6,a
      002FBE EB               [12] 1071 	mov	a,r3
      002FBF 4C               [12] 1072 	orl	a,r4
      002FC0 4D               [12] 1073 	orl	a,r5
      002FC1 4E               [12] 1074 	orl	a,r6
      002FC2 60 06            [24] 1075 	jz	00162$
      002FC4 7C 31            [12] 1076 	mov	r4,#0x31
      002FC6 7D 00            [12] 1077 	mov	r5,#0x00
      002FC8 80 04            [24] 1078 	sjmp	00163$
      002FCA                       1079 00162$:
      002FCA 7C 30            [12] 1080 	mov	r4,#0x30
      002FCC 7D 00            [12] 1081 	mov	r5,#0x00
      002FCE                       1082 00163$:
      002FCE 8C 82            [24] 1083 	mov	dpl,r4
      002FD0 8D 83            [24] 1084 	mov	dph,r5
      002FD2 12 2C 1F         [24] 1085 	lcall	_putchar
                                   1086 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      002FD5 E5 08            [12] 1087 	mov	a,_bp
      002FD7 24 16            [12] 1088 	add	a,#0x16
      002FD9 F8               [12] 1089 	mov	r0,a
      002FDA 08               [12] 1090 	inc	r0
      002FDB 08               [12] 1091 	inc	r0
      002FDC 08               [12] 1092 	inc	r0
      002FDD E6               [12] 1093 	mov	a,@r0
      002FDE C3               [12] 1094 	clr	c
      002FDF 13               [12] 1095 	rrc	a
      002FE0 F6               [12] 1096 	mov	@r0,a
      002FE1 18               [12] 1097 	dec	r0
      002FE2 E6               [12] 1098 	mov	a,@r0
      002FE3 13               [12] 1099 	rrc	a
      002FE4 F6               [12] 1100 	mov	@r0,a
      002FE5 18               [12] 1101 	dec	r0
      002FE6 E6               [12] 1102 	mov	a,@r0
      002FE7 13               [12] 1103 	rrc	a
      002FE8 F6               [12] 1104 	mov	@r0,a
      002FE9 18               [12] 1105 	dec	r0
      002FEA E6               [12] 1106 	mov	a,@r0
      002FEB 13               [12] 1107 	rrc	a
      002FEC F6               [12] 1108 	mov	@r0,a
      002FED E5 08            [12] 1109 	mov	a,_bp
      002FEF 24 16            [12] 1110 	add	a,#0x16
      002FF1 F8               [12] 1111 	mov	r0,a
      002FF2 E6               [12] 1112 	mov	a,@r0
      002FF3 08               [12] 1113 	inc	r0
      002FF4 46               [12] 1114 	orl	a,@r0
      002FF5 08               [12] 1115 	inc	r0
      002FF6 46               [12] 1116 	orl	a,@r0
      002FF7 08               [12] 1117 	inc	r0
      002FF8 46               [12] 1118 	orl	a,@r0
      002FF9 70 9F            [24] 1119 	jnz	00141$
                                   1120 ;	calc.c:94: printstr("\r\n");
      002FFB 7B 2A            [12] 1121 	mov	r3,#___str_5
      002FFD 7C 89            [12] 1122 	mov	r4,#(___str_5 >> 8)
      002FFF 7D 80            [12] 1123 	mov	r5,#0x80
                                   1124 ;	calc.c:51: return;
      003001                       1125 00144$:
                                   1126 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003001 8B 82            [24] 1127 	mov	dpl,r3
      003003 8C 83            [24] 1128 	mov	dph,r4
      003005 8D F0            [24] 1129 	mov	b,r5
      003007 12 70 79         [24] 1130 	lcall	__gptrget
      00300A FA               [12] 1131 	mov	r2,a
      00300B 60 10            [24] 1132 	jz	00123$
      00300D 7E 00            [12] 1133 	mov	r6,#0x00
      00300F 8A 82            [24] 1134 	mov	dpl,r2
      003011 8E 83            [24] 1135 	mov	dph,r6
      003013 12 2C 1F         [24] 1136 	lcall	_putchar
      003016 0B               [12] 1137 	inc	r3
                                   1138 ;	calc.c:94: printstr("\r\n");
      003017 BB 00 E7         [24] 1139 	cjne	r3,#0x00,00144$
      00301A 0C               [12] 1140 	inc	r4
      00301B 80 E4            [24] 1141 	sjmp	00144$
      00301D                       1142 00123$:
                                   1143 ;	calc.c:95: r = stack_pop(ctx->ps, &d);
      00301D C0 07            [24] 1144 	push	ar7
      00301F A8 08            [24] 1145 	mov	r0,_bp
      003021 08               [12] 1146 	inc	r0
      003022 86 03            [24] 1147 	mov	ar3,@r0
      003024 7C 00            [12] 1148 	mov	r4,#0x00
      003026 7D 40            [12] 1149 	mov	r5,#0x40
      003028 A8 08            [24] 1150 	mov	r0,_bp
      00302A 08               [12] 1151 	inc	r0
      00302B 08               [12] 1152 	inc	r0
      00302C 86 82            [24] 1153 	mov	dpl,@r0
      00302E 08               [12] 1154 	inc	r0
      00302F 86 83            [24] 1155 	mov	dph,@r0
      003031 08               [12] 1156 	inc	r0
      003032 86 F0            [24] 1157 	mov	b,@r0
      003034 12 70 79         [24] 1158 	lcall	__gptrget
      003037 FA               [12] 1159 	mov	r2,a
      003038 A3               [24] 1160 	inc	dptr
      003039 12 70 79         [24] 1161 	lcall	__gptrget
      00303C FE               [12] 1162 	mov	r6,a
      00303D A3               [24] 1163 	inc	dptr
      00303E 12 70 79         [24] 1164 	lcall	__gptrget
      003041 FF               [12] 1165 	mov	r7,a
      003042 C0 07            [24] 1166 	push	ar7
      003044 C0 03            [24] 1167 	push	ar3
      003046 C0 04            [24] 1168 	push	ar4
      003048 C0 05            [24] 1169 	push	ar5
      00304A 8A 82            [24] 1170 	mov	dpl,r2
      00304C 8E 83            [24] 1171 	mov	dph,r6
      00304E 8F F0            [24] 1172 	mov	b,r7
      003050 12 27 B4         [24] 1173 	lcall	_stack_pop
      003053 AE 82            [24] 1174 	mov	r6,dpl
      003055 AD 83            [24] 1175 	mov	r5,dph
      003057 15 81            [12] 1176 	dec	sp
      003059 15 81            [12] 1177 	dec	sp
      00305B 15 81            [12] 1178 	dec	sp
      00305D D0 07            [24] 1179 	pop	ar7
      00305F D0 07            [24] 1180 	pop	ar7
      003061 02 2E E3         [24] 1181 	ljmp	00105$
      003064                       1182 00110$:
                                   1183 ;	calc.c:98: if (delta->event == EVENT_TERM) {
      003064 E5 08            [12] 1184 	mov	a,_bp
      003066 24 08            [12] 1185 	add	a,#0x08
      003068 F8               [12] 1186 	mov	r0,a
      003069 86 82            [24] 1187 	mov	dpl,@r0
      00306B 08               [12] 1188 	inc	r0
      00306C 86 83            [24] 1189 	mov	dph,@r0
      00306E 08               [12] 1190 	inc	r0
      00306F 86 F0            [24] 1191 	mov	b,@r0
      003071 12 70 79         [24] 1192 	lcall	__gptrget
      003074 FD               [12] 1193 	mov	r5,a
      003075 A3               [24] 1194 	inc	dptr
      003076 12 70 79         [24] 1195 	lcall	__gptrget
      003079 FE               [12] 1196 	mov	r6,a
      00307A BD 08 05         [24] 1197 	cjne	r5,#0x08,00328$
      00307D BE 00 02         [24] 1198 	cjne	r6,#0x00,00328$
      003080 80 03            [24] 1199 	sjmp	00329$
      003082                       1200 00328$:
      003082 02 32 A3         [24] 1201 	ljmp	00113$
      003085                       1202 00329$:
                                   1203 ;	calc.c:99: printstr("SS\r\n");
      003085 7C 2D            [12] 1204 	mov	r4,#___str_6
      003087 7D 89            [12] 1205 	mov	r5,#(___str_6 >> 8)
      003089 7E 80            [12] 1206 	mov	r6,#0x80
                                   1207 ;	calc.c:51: return;
      00308B                       1208 00147$:
                                   1209 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00308B 8C 82            [24] 1210 	mov	dpl,r4
      00308D 8D 83            [24] 1211 	mov	dph,r5
      00308F 8E F0            [24] 1212 	mov	b,r6
      003091 12 70 79         [24] 1213 	lcall	__gptrget
      003094 FB               [12] 1214 	mov	r3,a
      003095 60 10            [24] 1215 	jz	00125$
      003097 7A 00            [12] 1216 	mov	r2,#0x00
      003099 8B 82            [24] 1217 	mov	dpl,r3
      00309B 8A 83            [24] 1218 	mov	dph,r2
      00309D 12 2C 1F         [24] 1219 	lcall	_putchar
      0030A0 0C               [12] 1220 	inc	r4
                                   1221 ;	calc.c:99: printstr("SS\r\n");
      0030A1 BC 00 E7         [24] 1222 	cjne	r4,#0x00,00147$
      0030A4 0D               [12] 1223 	inc	r5
      0030A5 80 E4            [24] 1224 	sjmp	00147$
      0030A7                       1225 00125$:
                                   1226 ;	calc.c:100: for (r = stack_pop(ctx->ss, &d); r > 0; r = stack_pop(ctx->ss, &d)) {
      0030A7 8F 06            [24] 1227 	mov	ar6,r7
      0030A9 E5 08            [12] 1228 	mov	a,_bp
      0030AB 24 05            [12] 1229 	add	a,#0x05
      0030AD F8               [12] 1230 	mov	r0,a
      0030AE A6 06            [24] 1231 	mov	@r0,ar6
      0030B0 08               [12] 1232 	inc	r0
      0030B1 76 00            [12] 1233 	mov	@r0,#0x00
      0030B3 08               [12] 1234 	inc	r0
      0030B4 76 40            [12] 1235 	mov	@r0,#0x40
      0030B6 E5 08            [12] 1236 	mov	a,_bp
      0030B8 24 0B            [12] 1237 	add	a,#0x0b
      0030BA F8               [12] 1238 	mov	r0,a
      0030BB E5 08            [12] 1239 	mov	a,_bp
      0030BD 24 08            [12] 1240 	add	a,#0x08
      0030BF F9               [12] 1241 	mov	r1,a
      0030C0 74 16            [12] 1242 	mov	a,#0x16
      0030C2 26               [12] 1243 	add	a,@r0
      0030C3 F7               [12] 1244 	mov	@r1,a
      0030C4 74 40            [12] 1245 	mov	a,#0x40
      0030C6 08               [12] 1246 	inc	r0
      0030C7 36               [12] 1247 	addc	a,@r0
      0030C8 09               [12] 1248 	inc	r1
      0030C9 F7               [12] 1249 	mov	@r1,a
      0030CA 08               [12] 1250 	inc	r0
      0030CB 09               [12] 1251 	inc	r1
      0030CC E6               [12] 1252 	mov	a,@r0
      0030CD F7               [12] 1253 	mov	@r1,a
      0030CE E5 08            [12] 1254 	mov	a,_bp
      0030D0 24 08            [12] 1255 	add	a,#0x08
      0030D2 F8               [12] 1256 	mov	r0,a
      0030D3 86 82            [24] 1257 	mov	dpl,@r0
      0030D5 08               [12] 1258 	inc	r0
      0030D6 86 83            [24] 1259 	mov	dph,@r0
      0030D8 08               [12] 1260 	inc	r0
      0030D9 86 F0            [24] 1261 	mov	b,@r0
      0030DB 12 70 79         [24] 1262 	lcall	__gptrget
      0030DE FA               [12] 1263 	mov	r2,a
      0030DF A3               [24] 1264 	inc	dptr
      0030E0 12 70 79         [24] 1265 	lcall	__gptrget
      0030E3 FB               [12] 1266 	mov	r3,a
      0030E4 A3               [24] 1267 	inc	dptr
      0030E5 12 70 79         [24] 1268 	lcall	__gptrget
      0030E8 FE               [12] 1269 	mov	r6,a
      0030E9 C0 07            [24] 1270 	push	ar7
      0030EB E5 08            [12] 1271 	mov	a,_bp
      0030ED 24 05            [12] 1272 	add	a,#0x05
      0030EF F8               [12] 1273 	mov	r0,a
      0030F0 E6               [12] 1274 	mov	a,@r0
      0030F1 C0 E0            [24] 1275 	push	acc
      0030F3 08               [12] 1276 	inc	r0
      0030F4 E6               [12] 1277 	mov	a,@r0
      0030F5 C0 E0            [24] 1278 	push	acc
      0030F7 08               [12] 1279 	inc	r0
      0030F8 E6               [12] 1280 	mov	a,@r0
      0030F9 C0 E0            [24] 1281 	push	acc
      0030FB 8A 82            [24] 1282 	mov	dpl,r2
      0030FD 8B 83            [24] 1283 	mov	dph,r3
      0030FF 8E F0            [24] 1284 	mov	b,r6
      003101 12 27 B4         [24] 1285 	lcall	_stack_pop
      003104 AD 82            [24] 1286 	mov	r5,dpl
      003106 AE 83            [24] 1287 	mov	r6,dph
      003108 15 81            [12] 1288 	dec	sp
      00310A 15 81            [12] 1289 	dec	sp
      00310C 15 81            [12] 1290 	dec	sp
      00310E D0 07            [24] 1291 	pop	ar7
      003110                       1292 00158$:
      003110 C3               [12] 1293 	clr	c
      003111 E4               [12] 1294 	clr	a
      003112 9D               [12] 1295 	subb	a,r5
      003113 74 80            [12] 1296 	mov	a,#(0x00 ^ 0x80)
      003115 8E F0            [24] 1297 	mov	b,r6
      003117 63 F0 80         [24] 1298 	xrl	b,#0x80
      00311A 95 F0            [12] 1299 	subb	a,b
      00311C 40 03            [24] 1300 	jc	00332$
      00311E 02 32 A3         [24] 1301 	ljmp	00113$
      003121                       1302 00332$:
                                   1303 ;	calc.c:101: printstr("VA ");
      003121 7D 13            [12] 1304 	mov	r5,#___str_2
      003123 7B 89            [12] 1305 	mov	r3,#(___str_2 >> 8)
      003125 7A 80            [12] 1306 	mov	r2,#0x80
                                   1307 ;	calc.c:51: return;
      003127                       1308 00150$:
                                   1309 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003127 8D 82            [24] 1310 	mov	dpl,r5
      003129 8B 83            [24] 1311 	mov	dph,r3
      00312B 8A F0            [24] 1312 	mov	b,r2
      00312D 12 70 79         [24] 1313 	lcall	__gptrget
      003130 FE               [12] 1314 	mov	r6,a
      003131 60 16            [24] 1315 	jz	00127$
      003133 C0 07            [24] 1316 	push	ar7
      003135 8E 04            [24] 1317 	mov	ar4,r6
      003137 7F 00            [12] 1318 	mov	r7,#0x00
      003139 8C 82            [24] 1319 	mov	dpl,r4
      00313B 8F 83            [24] 1320 	mov	dph,r7
      00313D 12 2C 1F         [24] 1321 	lcall	_putchar
      003140 0D               [12] 1322 	inc	r5
      003141 BD 00 01         [24] 1323 	cjne	r5,#0x00,00334$
      003144 0B               [12] 1324 	inc	r3
      003145                       1325 00334$:
      003145 D0 07            [24] 1326 	pop	ar7
                                   1327 ;	calc.c:101: printstr("VA ");
      003147 80 DE            [24] 1328 	sjmp	00150$
      003149                       1329 00127$:
                                   1330 ;	calc.c:102: printf("% 11ld / ", d);
      003149 C0 07            [24] 1331 	push	ar7
      00314B C0 07            [24] 1332 	push	ar7
      00314D E5 08            [12] 1333 	mov	a,_bp
      00314F 24 0E            [12] 1334 	add	a,#0x0e
      003151 F8               [12] 1335 	mov	r0,a
      003152 E6               [12] 1336 	mov	a,@r0
      003153 C0 E0            [24] 1337 	push	acc
      003155 08               [12] 1338 	inc	r0
      003156 E6               [12] 1339 	mov	a,@r0
      003157 C0 E0            [24] 1340 	push	acc
      003159 08               [12] 1341 	inc	r0
      00315A E6               [12] 1342 	mov	a,@r0
      00315B C0 E0            [24] 1343 	push	acc
      00315D 08               [12] 1344 	inc	r0
      00315E E6               [12] 1345 	mov	a,@r0
      00315F C0 E0            [24] 1346 	push	acc
      003161 74 17            [12] 1347 	mov	a,#___str_3
      003163 C0 E0            [24] 1348 	push	acc
      003165 74 89            [12] 1349 	mov	a,#(___str_3 >> 8)
      003167 C0 E0            [24] 1350 	push	acc
      003169 74 80            [12] 1351 	mov	a,#0x80
      00316B C0 E0            [24] 1352 	push	acc
      00316D 12 70 40         [24] 1353 	lcall	_printf
      003170 E5 81            [12] 1354 	mov	a,sp
      003172 24 F9            [12] 1355 	add	a,#0xf9
      003174 F5 81            [12] 1356 	mov	sp,a
                                   1357 ;	calc.c:103: printf("%08lx / ", d);
      003176 E5 08            [12] 1358 	mov	a,_bp
      003178 24 0E            [12] 1359 	add	a,#0x0e
      00317A F8               [12] 1360 	mov	r0,a
      00317B E6               [12] 1361 	mov	a,@r0
      00317C C0 E0            [24] 1362 	push	acc
      00317E 08               [12] 1363 	inc	r0
      00317F E6               [12] 1364 	mov	a,@r0
      003180 C0 E0            [24] 1365 	push	acc
      003182 08               [12] 1366 	inc	r0
      003183 E6               [12] 1367 	mov	a,@r0
      003184 C0 E0            [24] 1368 	push	acc
      003186 08               [12] 1369 	inc	r0
      003187 E6               [12] 1370 	mov	a,@r0
      003188 C0 E0            [24] 1371 	push	acc
      00318A 74 21            [12] 1372 	mov	a,#___str_4
      00318C C0 E0            [24] 1373 	push	acc
      00318E 74 89            [12] 1374 	mov	a,#(___str_4 >> 8)
      003190 C0 E0            [24] 1375 	push	acc
      003192 74 80            [12] 1376 	mov	a,#0x80
      003194 C0 E0            [24] 1377 	push	acc
      003196 12 70 40         [24] 1378 	lcall	_printf
      003199 E5 81            [12] 1379 	mov	a,sp
      00319B 24 F9            [12] 1380 	add	a,#0xf9
      00319D F5 81            [12] 1381 	mov	sp,a
      00319F D0 07            [24] 1382 	pop	ar7
                                   1383 ;	calc.c:104: printbin(d);
      0031A1 E5 08            [12] 1384 	mov	a,_bp
      0031A3 24 0E            [12] 1385 	add	a,#0x0e
      0031A5 F8               [12] 1386 	mov	r0,a
      0031A6 86 02            [24] 1387 	mov	ar2,@r0
      0031A8 08               [12] 1388 	inc	r0
      0031A9 86 03            [24] 1389 	mov	ar3,@r0
      0031AB 08               [12] 1390 	inc	r0
      0031AC 86 04            [24] 1391 	mov	ar4,@r0
      0031AE 08               [12] 1392 	inc	r0
      0031AF 86 07            [24] 1393 	mov	ar7,@r0
      0031B1 E5 08            [12] 1394 	mov	a,_bp
      0031B3 24 12            [12] 1395 	add	a,#0x12
      0031B5 F8               [12] 1396 	mov	r0,a
      0031B6 A6 02            [24] 1397 	mov	@r0,ar2
      0031B8 08               [12] 1398 	inc	r0
      0031B9 A6 03            [24] 1399 	mov	@r0,ar3
      0031BB 08               [12] 1400 	inc	r0
      0031BC A6 04            [24] 1401 	mov	@r0,ar4
      0031BE 08               [12] 1402 	inc	r0
      0031BF A6 07            [24] 1403 	mov	@r0,ar7
                                   1404 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      0031C1 E5 08            [12] 1405 	mov	a,_bp
      0031C3 24 16            [12] 1406 	add	a,#0x16
      0031C5 F8               [12] 1407 	mov	r0,a
      0031C6 E4               [12] 1408 	clr	a
      0031C7 F6               [12] 1409 	mov	@r0,a
      0031C8 08               [12] 1410 	inc	r0
      0031C9 F6               [12] 1411 	mov	@r0,a
      0031CA 08               [12] 1412 	inc	r0
      0031CB F6               [12] 1413 	mov	@r0,a
      0031CC 08               [12] 1414 	inc	r0
      0031CD 76 80            [12] 1415 	mov	@r0,#0x80
                                   1416 ;	calc.c:109: return 1;
      0031CF D0 07            [24] 1417 	pop	ar7
                                   1418 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      0031D1                       1419 00152$:
                                   1420 ;	calc.c:58: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      0031D1 C0 07            [24] 1421 	push	ar7
      0031D3 E5 08            [12] 1422 	mov	a,_bp
      0031D5 24 12            [12] 1423 	add	a,#0x12
      0031D7 F8               [12] 1424 	mov	r0,a
      0031D8 86 02            [24] 1425 	mov	ar2,@r0
      0031DA 08               [12] 1426 	inc	r0
      0031DB 86 03            [24] 1427 	mov	ar3,@r0
      0031DD 08               [12] 1428 	inc	r0
      0031DE 86 04            [24] 1429 	mov	ar4,@r0
      0031E0 08               [12] 1430 	inc	r0
      0031E1 86 07            [24] 1431 	mov	ar7,@r0
      0031E3 E5 08            [12] 1432 	mov	a,_bp
      0031E5 24 16            [12] 1433 	add	a,#0x16
      0031E7 F8               [12] 1434 	mov	r0,a
      0031E8 E6               [12] 1435 	mov	a,@r0
      0031E9 52 02            [12] 1436 	anl	ar2,a
      0031EB 08               [12] 1437 	inc	r0
      0031EC E6               [12] 1438 	mov	a,@r0
      0031ED 52 03            [12] 1439 	anl	ar3,a
      0031EF 08               [12] 1440 	inc	r0
      0031F0 E6               [12] 1441 	mov	a,@r0
      0031F1 52 04            [12] 1442 	anl	ar4,a
      0031F3 08               [12] 1443 	inc	r0
      0031F4 E6               [12] 1444 	mov	a,@r0
      0031F5 52 07            [12] 1445 	anl	ar7,a
      0031F7 EA               [12] 1446 	mov	a,r2
      0031F8 4B               [12] 1447 	orl	a,r3
      0031F9 4C               [12] 1448 	orl	a,r4
      0031FA 4F               [12] 1449 	orl	a,r7
      0031FB D0 07            [24] 1450 	pop	ar7
      0031FD 60 06            [24] 1451 	jz	00164$
      0031FF 7B 31            [12] 1452 	mov	r3,#0x31
      003201 7C 00            [12] 1453 	mov	r4,#0x00
      003203 80 04            [24] 1454 	sjmp	00165$
      003205                       1455 00164$:
      003205 7B 30            [12] 1456 	mov	r3,#0x30
      003207 7C 00            [12] 1457 	mov	r4,#0x00
      003209                       1458 00165$:
      003209 8B 82            [24] 1459 	mov	dpl,r3
      00320B 8C 83            [24] 1460 	mov	dph,r4
      00320D 12 2C 1F         [24] 1461 	lcall	_putchar
                                   1462 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      003210 E5 08            [12] 1463 	mov	a,_bp
      003212 24 16            [12] 1464 	add	a,#0x16
      003214 F8               [12] 1465 	mov	r0,a
      003215 08               [12] 1466 	inc	r0
      003216 08               [12] 1467 	inc	r0
      003217 08               [12] 1468 	inc	r0
      003218 E6               [12] 1469 	mov	a,@r0
      003219 C3               [12] 1470 	clr	c
      00321A 13               [12] 1471 	rrc	a
      00321B F6               [12] 1472 	mov	@r0,a
      00321C 18               [12] 1473 	dec	r0
      00321D E6               [12] 1474 	mov	a,@r0
      00321E 13               [12] 1475 	rrc	a
      00321F F6               [12] 1476 	mov	@r0,a
      003220 18               [12] 1477 	dec	r0
      003221 E6               [12] 1478 	mov	a,@r0
      003222 13               [12] 1479 	rrc	a
      003223 F6               [12] 1480 	mov	@r0,a
      003224 18               [12] 1481 	dec	r0
      003225 E6               [12] 1482 	mov	a,@r0
      003226 13               [12] 1483 	rrc	a
      003227 F6               [12] 1484 	mov	@r0,a
      003228 E5 08            [12] 1485 	mov	a,_bp
      00322A 24 16            [12] 1486 	add	a,#0x16
      00322C F8               [12] 1487 	mov	r0,a
      00322D E6               [12] 1488 	mov	a,@r0
      00322E 08               [12] 1489 	inc	r0
      00322F 46               [12] 1490 	orl	a,@r0
      003230 08               [12] 1491 	inc	r0
      003231 46               [12] 1492 	orl	a,@r0
      003232 08               [12] 1493 	inc	r0
      003233 46               [12] 1494 	orl	a,@r0
      003234 70 9B            [24] 1495 	jnz	00152$
                                   1496 ;	calc.c:105: printstr("\r\n");
      003236 7D 2A            [12] 1497 	mov	r5,#___str_5
      003238 7B 89            [12] 1498 	mov	r3,#(___str_5 >> 8)
      00323A 7A 80            [12] 1499 	mov	r2,#0x80
                                   1500 ;	calc.c:51: return;
      00323C                       1501 00155$:
                                   1502 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00323C 8D 82            [24] 1503 	mov	dpl,r5
      00323E 8B 83            [24] 1504 	mov	dph,r3
      003240 8A F0            [24] 1505 	mov	b,r2
      003242 12 70 79         [24] 1506 	lcall	__gptrget
      003245 FE               [12] 1507 	mov	r6,a
      003246 60 16            [24] 1508 	jz	00131$
      003248 C0 07            [24] 1509 	push	ar7
      00324A 8E 04            [24] 1510 	mov	ar4,r6
      00324C 7F 00            [12] 1511 	mov	r7,#0x00
      00324E 8C 82            [24] 1512 	mov	dpl,r4
      003250 8F 83            [24] 1513 	mov	dph,r7
      003252 12 2C 1F         [24] 1514 	lcall	_putchar
      003255 0D               [12] 1515 	inc	r5
      003256 BD 00 01         [24] 1516 	cjne	r5,#0x00,00338$
      003259 0B               [12] 1517 	inc	r3
      00325A                       1518 00338$:
      00325A D0 07            [24] 1519 	pop	ar7
                                   1520 ;	calc.c:105: printstr("\r\n");
      00325C 80 DE            [24] 1521 	sjmp	00155$
      00325E                       1522 00131$:
                                   1523 ;	calc.c:100: for (r = stack_pop(ctx->ss, &d); r > 0; r = stack_pop(ctx->ss, &d)) {
      00325E 8F 06            [24] 1524 	mov	ar6,r7
      003260 7D 00            [12] 1525 	mov	r5,#0x00
      003262 7A 40            [12] 1526 	mov	r2,#0x40
      003264 C0 07            [24] 1527 	push	ar7
      003266 E5 08            [12] 1528 	mov	a,_bp
      003268 24 08            [12] 1529 	add	a,#0x08
      00326A F8               [12] 1530 	mov	r0,a
      00326B 86 82            [24] 1531 	mov	dpl,@r0
      00326D 08               [12] 1532 	inc	r0
      00326E 86 83            [24] 1533 	mov	dph,@r0
      003270 08               [12] 1534 	inc	r0
      003271 86 F0            [24] 1535 	mov	b,@r0
      003273 12 70 79         [24] 1536 	lcall	__gptrget
      003276 FB               [12] 1537 	mov	r3,a
      003277 A3               [24] 1538 	inc	dptr
      003278 12 70 79         [24] 1539 	lcall	__gptrget
      00327B FC               [12] 1540 	mov	r4,a
      00327C A3               [24] 1541 	inc	dptr
      00327D 12 70 79         [24] 1542 	lcall	__gptrget
      003280 FF               [12] 1543 	mov	r7,a
      003281 C0 06            [24] 1544 	push	ar6
      003283 C0 05            [24] 1545 	push	ar5
      003285 C0 02            [24] 1546 	push	ar2
      003287 8B 82            [24] 1547 	mov	dpl,r3
      003289 8C 83            [24] 1548 	mov	dph,r4
      00328B 8F F0            [24] 1549 	mov	b,r7
      00328D 12 27 B4         [24] 1550 	lcall	_stack_pop
      003290 AC 82            [24] 1551 	mov	r4,dpl
      003292 AF 83            [24] 1552 	mov	r7,dph
      003294 15 81            [12] 1553 	dec	sp
      003296 15 81            [12] 1554 	dec	sp
      003298 15 81            [12] 1555 	dec	sp
      00329A 8C 05            [24] 1556 	mov	ar5,r4
      00329C 8F 06            [24] 1557 	mov	ar6,r7
      00329E D0 07            [24] 1558 	pop	ar7
      0032A0 02 31 10         [24] 1559 	ljmp	00158$
      0032A3                       1560 00113$:
                                   1561 ;	calc.c:109: return 1;
      0032A3 90 00 01         [24] 1562 	mov	dptr,#0x0001
                                   1563 ;	calc.c:110: }
      0032A6 85 08 81         [24] 1564 	mov	sp,_bp
      0032A9 D0 08            [24] 1565 	pop	_bp
      0032AB 22               [24] 1566 	ret
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
      0032AC                       1584 _dump_peek:
      0032AC C0 08            [24] 1585 	push	_bp
      0032AE E5 81            [12] 1586 	mov	a,sp
      0032B0 F5 08            [12] 1587 	mov	_bp,a
      0032B2 24 08            [12] 1588 	add	a,#0x08
      0032B4 F5 81            [12] 1589 	mov	sp,a
                                   1590 ;	calc.c:115: printstr("PA ");
      0032B6 7D 32            [12] 1591 	mov	r5,#___str_7
      0032B8 7E 89            [12] 1592 	mov	r6,#(___str_7 >> 8)
      0032BA 7F 80            [12] 1593 	mov	r7,#0x80
                                   1594 ;	calc.c:51: return;
      0032BC                       1595 00108$:
                                   1596 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0032BC 8D 82            [24] 1597 	mov	dpl,r5
      0032BE 8E 83            [24] 1598 	mov	dph,r6
      0032C0 8F F0            [24] 1599 	mov	b,r7
      0032C2 12 70 79         [24] 1600 	lcall	__gptrget
      0032C5 FC               [12] 1601 	mov	r4,a
      0032C6 60 10            [24] 1602 	jz	00102$
      0032C8 7B 00            [12] 1603 	mov	r3,#0x00
      0032CA 8C 82            [24] 1604 	mov	dpl,r4
      0032CC 8B 83            [24] 1605 	mov	dph,r3
      0032CE 12 2C 1F         [24] 1606 	lcall	_putchar
      0032D1 0D               [12] 1607 	inc	r5
                                   1608 ;	calc.c:115: printstr("PA ");
      0032D2 BD 00 E7         [24] 1609 	cjne	r5,#0x00,00108$
      0032D5 0E               [12] 1610 	inc	r6
      0032D6 80 E4            [24] 1611 	sjmp	00108$
      0032D8                       1612 00102$:
                                   1613 ;	calc.c:116: printf("% 11ld / ", d);
      0032D8 E5 08            [12] 1614 	mov	a,_bp
      0032DA 24 FA            [12] 1615 	add	a,#0xfa
      0032DC F8               [12] 1616 	mov	r0,a
      0032DD E6               [12] 1617 	mov	a,@r0
      0032DE C0 E0            [24] 1618 	push	acc
      0032E0 08               [12] 1619 	inc	r0
      0032E1 E6               [12] 1620 	mov	a,@r0
      0032E2 C0 E0            [24] 1621 	push	acc
      0032E4 08               [12] 1622 	inc	r0
      0032E5 E6               [12] 1623 	mov	a,@r0
      0032E6 C0 E0            [24] 1624 	push	acc
      0032E8 08               [12] 1625 	inc	r0
      0032E9 E6               [12] 1626 	mov	a,@r0
      0032EA C0 E0            [24] 1627 	push	acc
      0032EC 74 17            [12] 1628 	mov	a,#___str_3
      0032EE C0 E0            [24] 1629 	push	acc
      0032F0 74 89            [12] 1630 	mov	a,#(___str_3 >> 8)
      0032F2 C0 E0            [24] 1631 	push	acc
      0032F4 74 80            [12] 1632 	mov	a,#0x80
      0032F6 C0 E0            [24] 1633 	push	acc
      0032F8 12 70 40         [24] 1634 	lcall	_printf
      0032FB E5 81            [12] 1635 	mov	a,sp
      0032FD 24 F9            [12] 1636 	add	a,#0xf9
      0032FF F5 81            [12] 1637 	mov	sp,a
                                   1638 ;	calc.c:117: printf("%08lx / ", d);
      003301 E5 08            [12] 1639 	mov	a,_bp
      003303 24 FA            [12] 1640 	add	a,#0xfa
      003305 F8               [12] 1641 	mov	r0,a
      003306 E6               [12] 1642 	mov	a,@r0
      003307 C0 E0            [24] 1643 	push	acc
      003309 08               [12] 1644 	inc	r0
      00330A E6               [12] 1645 	mov	a,@r0
      00330B C0 E0            [24] 1646 	push	acc
      00330D 08               [12] 1647 	inc	r0
      00330E E6               [12] 1648 	mov	a,@r0
      00330F C0 E0            [24] 1649 	push	acc
      003311 08               [12] 1650 	inc	r0
      003312 E6               [12] 1651 	mov	a,@r0
      003313 C0 E0            [24] 1652 	push	acc
      003315 74 21            [12] 1653 	mov	a,#___str_4
      003317 C0 E0            [24] 1654 	push	acc
      003319 74 89            [12] 1655 	mov	a,#(___str_4 >> 8)
      00331B C0 E0            [24] 1656 	push	acc
      00331D 74 80            [12] 1657 	mov	a,#0x80
      00331F C0 E0            [24] 1658 	push	acc
      003321 12 70 40         [24] 1659 	lcall	_printf
      003324 E5 81            [12] 1660 	mov	a,sp
      003326 24 F9            [12] 1661 	add	a,#0xf9
      003328 F5 81            [12] 1662 	mov	sp,a
                                   1663 ;	calc.c:118: printbin(d);
      00332A E5 08            [12] 1664 	mov	a,_bp
      00332C 24 FA            [12] 1665 	add	a,#0xfa
      00332E F8               [12] 1666 	mov	r0,a
      00332F 86 04            [24] 1667 	mov	ar4,@r0
      003331 08               [12] 1668 	inc	r0
      003332 86 05            [24] 1669 	mov	ar5,@r0
      003334 08               [12] 1670 	inc	r0
      003335 86 06            [24] 1671 	mov	ar6,@r0
      003337 08               [12] 1672 	inc	r0
      003338 86 07            [24] 1673 	mov	ar7,@r0
      00333A A8 08            [24] 1674 	mov	r0,_bp
      00333C 08               [12] 1675 	inc	r0
      00333D A6 04            [24] 1676 	mov	@r0,ar4
      00333F 08               [12] 1677 	inc	r0
      003340 A6 05            [24] 1678 	mov	@r0,ar5
      003342 08               [12] 1679 	inc	r0
      003343 A6 06            [24] 1680 	mov	@r0,ar6
      003345 08               [12] 1681 	inc	r0
      003346 A6 07            [24] 1682 	mov	@r0,ar7
                                   1683 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      003348 E5 08            [12] 1684 	mov	a,_bp
      00334A 24 05            [12] 1685 	add	a,#0x05
      00334C F8               [12] 1686 	mov	r0,a
      00334D E4               [12] 1687 	clr	a
      00334E F6               [12] 1688 	mov	@r0,a
      00334F 08               [12] 1689 	inc	r0
      003350 F6               [12] 1690 	mov	@r0,a
      003351 08               [12] 1691 	inc	r0
      003352 F6               [12] 1692 	mov	@r0,a
      003353 08               [12] 1693 	inc	r0
      003354 76 80            [12] 1694 	mov	@r0,#0x80
      003356                       1695 00110$:
                                   1696 ;	calc.c:58: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      003356 A8 08            [24] 1697 	mov	r0,_bp
      003358 08               [12] 1698 	inc	r0
      003359 86 04            [24] 1699 	mov	ar4,@r0
      00335B 08               [12] 1700 	inc	r0
      00335C 86 05            [24] 1701 	mov	ar5,@r0
      00335E 08               [12] 1702 	inc	r0
      00335F 86 06            [24] 1703 	mov	ar6,@r0
      003361 08               [12] 1704 	inc	r0
      003362 86 07            [24] 1705 	mov	ar7,@r0
      003364 E5 08            [12] 1706 	mov	a,_bp
      003366 24 05            [12] 1707 	add	a,#0x05
      003368 F8               [12] 1708 	mov	r0,a
      003369 E6               [12] 1709 	mov	a,@r0
      00336A 52 04            [12] 1710 	anl	ar4,a
      00336C 08               [12] 1711 	inc	r0
      00336D E6               [12] 1712 	mov	a,@r0
      00336E 52 05            [12] 1713 	anl	ar5,a
      003370 08               [12] 1714 	inc	r0
      003371 E6               [12] 1715 	mov	a,@r0
      003372 52 06            [12] 1716 	anl	ar6,a
      003374 08               [12] 1717 	inc	r0
      003375 E6               [12] 1718 	mov	a,@r0
      003376 52 07            [12] 1719 	anl	ar7,a
      003378 EC               [12] 1720 	mov	a,r4
      003379 4D               [12] 1721 	orl	a,r5
      00337A 4E               [12] 1722 	orl	a,r6
      00337B 4F               [12] 1723 	orl	a,r7
      00337C 60 06            [24] 1724 	jz	00117$
      00337E 7E 31            [12] 1725 	mov	r6,#0x31
      003380 7F 00            [12] 1726 	mov	r7,#0x00
      003382 80 04            [24] 1727 	sjmp	00118$
      003384                       1728 00117$:
      003384 7E 30            [12] 1729 	mov	r6,#0x30
      003386 7F 00            [12] 1730 	mov	r7,#0x00
      003388                       1731 00118$:
      003388 8E 82            [24] 1732 	mov	dpl,r6
      00338A 8F 83            [24] 1733 	mov	dph,r7
      00338C 12 2C 1F         [24] 1734 	lcall	_putchar
                                   1735 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      00338F E5 08            [12] 1736 	mov	a,_bp
      003391 24 05            [12] 1737 	add	a,#0x05
      003393 F8               [12] 1738 	mov	r0,a
      003394 08               [12] 1739 	inc	r0
      003395 08               [12] 1740 	inc	r0
      003396 08               [12] 1741 	inc	r0
      003397 E6               [12] 1742 	mov	a,@r0
      003398 C3               [12] 1743 	clr	c
      003399 13               [12] 1744 	rrc	a
      00339A F6               [12] 1745 	mov	@r0,a
      00339B 18               [12] 1746 	dec	r0
      00339C E6               [12] 1747 	mov	a,@r0
      00339D 13               [12] 1748 	rrc	a
      00339E F6               [12] 1749 	mov	@r0,a
      00339F 18               [12] 1750 	dec	r0
      0033A0 E6               [12] 1751 	mov	a,@r0
      0033A1 13               [12] 1752 	rrc	a
      0033A2 F6               [12] 1753 	mov	@r0,a
      0033A3 18               [12] 1754 	dec	r0
      0033A4 E6               [12] 1755 	mov	a,@r0
      0033A5 13               [12] 1756 	rrc	a
      0033A6 F6               [12] 1757 	mov	@r0,a
      0033A7 E5 08            [12] 1758 	mov	a,_bp
      0033A9 24 05            [12] 1759 	add	a,#0x05
      0033AB F8               [12] 1760 	mov	r0,a
      0033AC E6               [12] 1761 	mov	a,@r0
      0033AD 08               [12] 1762 	inc	r0
      0033AE 46               [12] 1763 	orl	a,@r0
      0033AF 08               [12] 1764 	inc	r0
      0033B0 46               [12] 1765 	orl	a,@r0
      0033B1 08               [12] 1766 	inc	r0
      0033B2 46               [12] 1767 	orl	a,@r0
      0033B3 70 A1            [24] 1768 	jnz	00110$
                                   1769 ;	calc.c:119: printstr("\r\n");
      0033B5 7D 2A            [12] 1770 	mov	r5,#___str_5
      0033B7 7E 89            [12] 1771 	mov	r6,#(___str_5 >> 8)
      0033B9 7F 80            [12] 1772 	mov	r7,#0x80
                                   1773 ;	calc.c:51: return;
      0033BB                       1774 00113$:
                                   1775 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0033BB 8D 82            [24] 1776 	mov	dpl,r5
      0033BD 8E 83            [24] 1777 	mov	dph,r6
      0033BF 8F F0            [24] 1778 	mov	b,r7
      0033C1 12 70 79         [24] 1779 	lcall	__gptrget
      0033C4 FC               [12] 1780 	mov	r4,a
      0033C5 60 10            [24] 1781 	jz	00106$
      0033C7 7B 00            [12] 1782 	mov	r3,#0x00
      0033C9 8C 82            [24] 1783 	mov	dpl,r4
      0033CB 8B 83            [24] 1784 	mov	dph,r3
      0033CD 12 2C 1F         [24] 1785 	lcall	_putchar
      0033D0 0D               [12] 1786 	inc	r5
                                   1787 ;	calc.c:119: printstr("\r\n");
      0033D1 BD 00 E7         [24] 1788 	cjne	r5,#0x00,00113$
      0033D4 0E               [12] 1789 	inc	r6
      0033D5 80 E4            [24] 1790 	sjmp	00113$
      0033D7                       1791 00106$:
                                   1792 ;	calc.c:121: return 1;
      0033D7 90 00 01         [24] 1793 	mov	dptr,#0x0001
                                   1794 ;	calc.c:122: }
      0033DA 85 08 81         [24] 1795 	mov	sp,_bp
      0033DD D0 08            [24] 1796 	pop	_bp
      0033DF 22               [24] 1797 	ret
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
      0033E0                       1919 _operator:
      0033E0 C0 08            [24] 1920 	push	_bp
      0033E2 85 81 08         [24] 1921 	mov	_bp,sp
      0033E5 C0 82            [24] 1922 	push	dpl
      0033E7 C0 83            [24] 1923 	push	dph
      0033E9 C0 F0            [24] 1924 	push	b
      0033EB E5 81            [12] 1925 	mov	a,sp
      0033ED 24 1D            [12] 1926 	add	a,#0x1d
      0033EF F5 81            [12] 1927 	mov	sp,a
                                   1928 ;	calc.c:125: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
      0033F1 A8 08            [24] 1929 	mov	r0,_bp
      0033F3 08               [12] 1930 	inc	r0
      0033F4 E5 08            [12] 1931 	mov	a,_bp
      0033F6 24 12            [12] 1932 	add	a,#0x12
      0033F8 F9               [12] 1933 	mov	r1,a
      0033F9 E6               [12] 1934 	mov	a,@r0
      0033FA F7               [12] 1935 	mov	@r1,a
      0033FB 08               [12] 1936 	inc	r0
      0033FC 09               [12] 1937 	inc	r1
      0033FD E6               [12] 1938 	mov	a,@r0
      0033FE F7               [12] 1939 	mov	@r1,a
      0033FF 08               [12] 1940 	inc	r0
      003400 09               [12] 1941 	inc	r1
      003401 E6               [12] 1942 	mov	a,@r0
      003402 F7               [12] 1943 	mov	@r1,a
                                   1944 ;	calc.c:129: switch (ctx->digit[0]) {
      003403 E5 08            [12] 1945 	mov	a,_bp
      003405 24 12            [12] 1946 	add	a,#0x12
      003407 F8               [12] 1947 	mov	r0,a
      003408 74 07            [12] 1948 	mov	a,#0x07
      00340A 26               [12] 1949 	add	a,@r0
      00340B FD               [12] 1950 	mov	r5,a
      00340C E4               [12] 1951 	clr	a
      00340D 08               [12] 1952 	inc	r0
      00340E 36               [12] 1953 	addc	a,@r0
      00340F FE               [12] 1954 	mov	r6,a
      003410 08               [12] 1955 	inc	r0
      003411 86 07            [24] 1956 	mov	ar7,@r0
      003413 8D 82            [24] 1957 	mov	dpl,r5
      003415 8E 83            [24] 1958 	mov	dph,r6
      003417 8F F0            [24] 1959 	mov	b,r7
      003419 12 70 79         [24] 1960 	lcall	__gptrget
      00341C FC               [12] 1961 	mov	r4,a
      00341D BC 23 03         [24] 1962 	cjne	r4,#0x23,01232$
      003420 02 48 D9         [24] 1963 	ljmp	00189$
      003423                       1964 01232$:
      003423 BC 25 03         [24] 1965 	cjne	r4,#0x25,01233$
      003426 02 48 D9         [24] 1966 	ljmp	00189$
      003429                       1967 01233$:
      003429 BC 26 03         [24] 1968 	cjne	r4,#0x26,01234$
      00342C 02 4B BF         [24] 1969 	ljmp	00202$
      00342F                       1970 01234$:
      00342F BC 2A 03         [24] 1971 	cjne	r4,#0x2a,01235$
      003432 02 44 49         [24] 1972 	ljmp	00167$
      003435                       1973 01235$:
      003435 BC 2B 03         [24] 1974 	cjne	r4,#0x2b,01236$
      003438 02 41 4A         [24] 1975 	ljmp	00153$
      00343B                       1976 01236$:
      00343B BC 2D 03         [24] 1977 	cjne	r4,#0x2d,01237$
      00343E 02 42 C9         [24] 1978 	ljmp	00160$
      003441                       1979 01237$:
      003441 BC 2E 03         [24] 1980 	cjne	r4,#0x2e,01238$
      003444 02 37 17         [24] 1981 	ljmp	00109$
      003447                       1982 01238$:
      003447 BC 2F 03         [24] 1983 	cjne	r4,#0x2f,01239$
      00344A 02 45 EF         [24] 1984 	ljmp	00175$
      00344D                       1985 01239$:
      00344D BC 3C 03         [24] 1986 	cjne	r4,#0x3c,01240$
      003450 02 53 E4         [24] 1987 	ljmp	00237$
      003453                       1988 01240$:
      003453 BC 3E 03         [24] 1989 	cjne	r4,#0x3e,01241$
      003456 02 50 8D         [24] 1990 	ljmp	00223$
      003459                       1991 01241$:
      003459 BC 4D 03         [24] 1992 	cjne	r4,#0x4d,01242$
      00345C 02 3B F0         [24] 1993 	ljmp	00127$
      00345F                       1994 01242$:
      00345F BC 50 03         [24] 1995 	cjne	r4,#0x50,01243$
      003462 02 36 76         [24] 1996 	ljmp	00105$
      003465                       1997 01243$:
      003465 BC 54 03         [24] 1998 	cjne	r4,#0x54,01244$
      003468 02 3E F2         [24] 1999 	ljmp	00145$
      00346B                       2000 01244$:
      00346B BC 55 03         [24] 2001 	cjne	r4,#0x55,01245$
      00346E 02 3E 0B         [24] 2002 	ljmp	00139$
      003471                       2003 01245$:
      003471 BC 56 03         [24] 2004 	cjne	r4,#0x56,01246$
      003474 02 38 D2         [24] 2005 	ljmp	00113$
      003477                       2006 01246$:
      003477 BC 58 03         [24] 2007 	cjne	r4,#0x58,01247$
      00347A 02 40 AB         [24] 2008 	ljmp	00152$
      00347D                       2009 01247$:
      00347D BC 5C 03         [24] 2010 	cjne	r4,#0x5c,01248$
      003480 02 45 EF         [24] 2011 	ljmp	00175$
      003483                       2012 01248$:
      003483 BC 5D 03         [24] 2013 	cjne	r4,#0x5d,01249$
      003486 02 52 30         [24] 2014 	ljmp	00230$
      003489                       2015 01249$:
      003489 BC 5E 03         [24] 2016 	cjne	r4,#0x5e,01250$
      00348C 02 4E F3         [24] 2017 	ljmp	00216$
      00348F                       2018 01250$:
      00348F BC 6D 03         [24] 2019 	cjne	r4,#0x6d,01251$
      003492 02 3A BC         [24] 2020 	ljmp	00121$
      003495                       2021 01251$:
      003495 BC 70 02         [24] 2022 	cjne	r4,#0x70,01252$
      003498 80 21            [24] 2023 	sjmp	00101$
      00349A                       2024 01252$:
      00349A BC 75 03         [24] 2025 	cjne	r4,#0x75,01253$
      00349D 02 3D 24         [24] 2026 	ljmp	00133$
      0034A0                       2027 01253$:
      0034A0 BC 76 03         [24] 2028 	cjne	r4,#0x76,01254$
      0034A3 02 37 17         [24] 2029 	ljmp	00109$
      0034A6                       2030 01254$:
      0034A6 BC 78 03         [24] 2031 	cjne	r4,#0x78,01255$
      0034A9 02 39 1B         [24] 2032 	ljmp	00114$
      0034AC                       2033 01255$:
      0034AC BC 7C 03         [24] 2034 	cjne	r4,#0x7c,01256$
      0034AF 02 4D 59         [24] 2035 	ljmp	00209$
      0034B2                       2036 01256$:
      0034B2 BC 7E 03         [24] 2037 	cjne	r4,#0x7e,01257$
      0034B5 02 55 87         [24] 2038 	ljmp	00244$
      0034B8                       2039 01257$:
      0034B8 02 56 60         [24] 2040 	ljmp	00248$
                                   2041 ;	calc.c:130: case 'p':
      0034BB                       2042 00101$:
                                   2043 ;	calc.c:131: printstr("\r\n");
      0034BB 7F 2A            [12] 2044 	mov	r7,#___str_5
      0034BD 7E 89            [12] 2045 	mov	r6,#(___str_5 >> 8)
      0034BF 7D 80            [12] 2046 	mov	r5,#0x80
                                   2047 ;	calc.c:51: return;
      0034C1                       2048 00351$:
                                   2049 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0034C1 8F 82            [24] 2050 	mov	dpl,r7
      0034C3 8E 83            [24] 2051 	mov	dph,r6
      0034C5 8D F0            [24] 2052 	mov	b,r5
      0034C7 12 70 79         [24] 2053 	lcall	__gptrget
      0034CA FC               [12] 2054 	mov	r4,a
      0034CB 60 10            [24] 2055 	jz	00251$
      0034CD 7B 00            [12] 2056 	mov	r3,#0x00
      0034CF 8C 82            [24] 2057 	mov	dpl,r4
      0034D1 8B 83            [24] 2058 	mov	dph,r3
      0034D3 12 2C 1F         [24] 2059 	lcall	_putchar
      0034D6 0F               [12] 2060 	inc	r7
                                   2061 ;	calc.c:131: printstr("\r\n");
      0034D7 BF 00 E7         [24] 2062 	cjne	r7,#0x00,00351$
      0034DA 0E               [12] 2063 	inc	r6
      0034DB 80 E4            [24] 2064 	sjmp	00351$
      0034DD                       2065 00251$:
                                   2066 ;	calc.c:132: if (!stack_peek(ctx->ps, &d0)) printstr("stack underflow\r\n");
      0034DD E5 08            [12] 2067 	mov	a,_bp
      0034DF 24 15            [12] 2068 	add	a,#0x15
      0034E1 FF               [12] 2069 	mov	r7,a
      0034E2 7E 00            [12] 2070 	mov	r6,#0x00
      0034E4 7D 40            [12] 2071 	mov	r5,#0x40
      0034E6 E5 08            [12] 2072 	mov	a,_bp
      0034E8 24 12            [12] 2073 	add	a,#0x12
      0034EA F8               [12] 2074 	mov	r0,a
      0034EB 74 13            [12] 2075 	mov	a,#0x13
      0034ED 26               [12] 2076 	add	a,@r0
      0034EE FA               [12] 2077 	mov	r2,a
      0034EF ED               [12] 2078 	mov	a,r5
      0034F0 08               [12] 2079 	inc	r0
      0034F1 36               [12] 2080 	addc	a,@r0
      0034F2 FB               [12] 2081 	mov	r3,a
      0034F3 08               [12] 2082 	inc	r0
      0034F4 86 04            [24] 2083 	mov	ar4,@r0
      0034F6 8A 82            [24] 2084 	mov	dpl,r2
      0034F8 8B 83            [24] 2085 	mov	dph,r3
      0034FA 8C F0            [24] 2086 	mov	b,r4
      0034FC 12 70 79         [24] 2087 	lcall	__gptrget
      0034FF FA               [12] 2088 	mov	r2,a
      003500 A3               [24] 2089 	inc	dptr
      003501 12 70 79         [24] 2090 	lcall	__gptrget
      003504 FB               [12] 2091 	mov	r3,a
      003505 A3               [24] 2092 	inc	dptr
      003506 12 70 79         [24] 2093 	lcall	__gptrget
      003509 FC               [12] 2094 	mov	r4,a
      00350A C0 07            [24] 2095 	push	ar7
      00350C C0 06            [24] 2096 	push	ar6
      00350E C0 05            [24] 2097 	push	ar5
      003510 8A 82            [24] 2098 	mov	dpl,r2
      003512 8B 83            [24] 2099 	mov	dph,r3
      003514 8C F0            [24] 2100 	mov	b,r4
      003516 12 28 D8         [24] 2101 	lcall	_stack_peek
      003519 AB 82            [24] 2102 	mov	r3,dpl
      00351B AC 83            [24] 2103 	mov	r4,dph
      00351D 15 81            [12] 2104 	dec	sp
      00351F 15 81            [12] 2105 	dec	sp
      003521 15 81            [12] 2106 	dec	sp
      003523 EB               [12] 2107 	mov	a,r3
      003524 4C               [12] 2108 	orl	a,r4
      003525 70 25            [24] 2109 	jnz	00103$
      003527 7F 01            [12] 2110 	mov	r7,#___str_1
      003529 7E 89            [12] 2111 	mov	r6,#(___str_1 >> 8)
      00352B 7D 80            [12] 2112 	mov	r5,#0x80
                                   2113 ;	calc.c:51: return;
      00352D                       2114 00354$:
                                   2115 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00352D 8F 82            [24] 2116 	mov	dpl,r7
      00352F 8E 83            [24] 2117 	mov	dph,r6
      003531 8D F0            [24] 2118 	mov	b,r5
      003533 12 70 79         [24] 2119 	lcall	__gptrget
      003536 FC               [12] 2120 	mov	r4,a
      003537 70 03            [24] 2121 	jnz	01261$
      003539 02 56 65         [24] 2122 	ljmp	00249$
      00353C                       2123 01261$:
      00353C 7B 00            [12] 2124 	mov	r3,#0x00
      00353E 8C 82            [24] 2125 	mov	dpl,r4
      003540 8B 83            [24] 2126 	mov	dph,r3
      003542 12 2C 1F         [24] 2127 	lcall	_putchar
      003545 0F               [12] 2128 	inc	r7
                                   2129 ;	calc.c:132: if (!stack_peek(ctx->ps, &d0)) printstr("stack underflow\r\n");
      003546 BF 00 E4         [24] 2130 	cjne	r7,#0x00,00354$
      003549 0E               [12] 2131 	inc	r6
      00354A 80 E1            [24] 2132 	sjmp	00354$
      00354C                       2133 00103$:
                                   2134 ;	calc.c:134: printstr("PT ");
      00354C 7F 36            [12] 2135 	mov	r7,#___str_8
      00354E 7E 89            [12] 2136 	mov	r6,#(___str_8 >> 8)
      003550 7D 80            [12] 2137 	mov	r5,#0x80
                                   2138 ;	calc.c:51: return;
      003552                       2139 00357$:
                                   2140 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003552 8F 82            [24] 2141 	mov	dpl,r7
      003554 8E 83            [24] 2142 	mov	dph,r6
      003556 8D F0            [24] 2143 	mov	b,r5
      003558 12 70 79         [24] 2144 	lcall	__gptrget
      00355B FC               [12] 2145 	mov	r4,a
      00355C 60 10            [24] 2146 	jz	00255$
      00355E 7B 00            [12] 2147 	mov	r3,#0x00
      003560 8C 82            [24] 2148 	mov	dpl,r4
      003562 8B 83            [24] 2149 	mov	dph,r3
      003564 12 2C 1F         [24] 2150 	lcall	_putchar
      003567 0F               [12] 2151 	inc	r7
                                   2152 ;	calc.c:134: printstr("PT ");
      003568 BF 00 E7         [24] 2153 	cjne	r7,#0x00,00357$
      00356B 0E               [12] 2154 	inc	r6
      00356C 80 E4            [24] 2155 	sjmp	00357$
      00356E                       2156 00255$:
                                   2157 ;	calc.c:135: printf("% 11ld / ", d0);
      00356E E5 08            [12] 2158 	mov	a,_bp
      003570 24 15            [12] 2159 	add	a,#0x15
      003572 F8               [12] 2160 	mov	r0,a
      003573 E6               [12] 2161 	mov	a,@r0
      003574 C0 E0            [24] 2162 	push	acc
      003576 08               [12] 2163 	inc	r0
      003577 E6               [12] 2164 	mov	a,@r0
      003578 C0 E0            [24] 2165 	push	acc
      00357A 08               [12] 2166 	inc	r0
      00357B E6               [12] 2167 	mov	a,@r0
      00357C C0 E0            [24] 2168 	push	acc
      00357E 08               [12] 2169 	inc	r0
      00357F E6               [12] 2170 	mov	a,@r0
      003580 C0 E0            [24] 2171 	push	acc
      003582 74 17            [12] 2172 	mov	a,#___str_3
      003584 C0 E0            [24] 2173 	push	acc
      003586 74 89            [12] 2174 	mov	a,#(___str_3 >> 8)
      003588 C0 E0            [24] 2175 	push	acc
      00358A 74 80            [12] 2176 	mov	a,#0x80
      00358C C0 E0            [24] 2177 	push	acc
      00358E 12 70 40         [24] 2178 	lcall	_printf
      003591 E5 81            [12] 2179 	mov	a,sp
      003593 24 F9            [12] 2180 	add	a,#0xf9
      003595 F5 81            [12] 2181 	mov	sp,a
                                   2182 ;	calc.c:136: printf("%08lx / ", d0);
      003597 E5 08            [12] 2183 	mov	a,_bp
      003599 24 15            [12] 2184 	add	a,#0x15
      00359B F8               [12] 2185 	mov	r0,a
      00359C E6               [12] 2186 	mov	a,@r0
      00359D C0 E0            [24] 2187 	push	acc
      00359F 08               [12] 2188 	inc	r0
      0035A0 E6               [12] 2189 	mov	a,@r0
      0035A1 C0 E0            [24] 2190 	push	acc
      0035A3 08               [12] 2191 	inc	r0
      0035A4 E6               [12] 2192 	mov	a,@r0
      0035A5 C0 E0            [24] 2193 	push	acc
      0035A7 08               [12] 2194 	inc	r0
      0035A8 E6               [12] 2195 	mov	a,@r0
      0035A9 C0 E0            [24] 2196 	push	acc
      0035AB 74 21            [12] 2197 	mov	a,#___str_4
      0035AD C0 E0            [24] 2198 	push	acc
      0035AF 74 89            [12] 2199 	mov	a,#(___str_4 >> 8)
      0035B1 C0 E0            [24] 2200 	push	acc
      0035B3 74 80            [12] 2201 	mov	a,#0x80
      0035B5 C0 E0            [24] 2202 	push	acc
      0035B7 12 70 40         [24] 2203 	lcall	_printf
      0035BA E5 81            [12] 2204 	mov	a,sp
      0035BC 24 F9            [12] 2205 	add	a,#0xf9
      0035BE F5 81            [12] 2206 	mov	sp,a
                                   2207 ;	calc.c:137: printbin(d0);
      0035C0 E5 08            [12] 2208 	mov	a,_bp
      0035C2 24 15            [12] 2209 	add	a,#0x15
      0035C4 F8               [12] 2210 	mov	r0,a
      0035C5 86 07            [24] 2211 	mov	ar7,@r0
      0035C7 08               [12] 2212 	inc	r0
      0035C8 86 06            [24] 2213 	mov	ar6,@r0
      0035CA 08               [12] 2214 	inc	r0
      0035CB 86 05            [24] 2215 	mov	ar5,@r0
      0035CD 08               [12] 2216 	inc	r0
      0035CE 86 04            [24] 2217 	mov	ar4,@r0
      0035D0 8C 02            [24] 2218 	mov	ar2,r4
                                   2219 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      0035D2 E5 08            [12] 2220 	mov	a,_bp
      0035D4 24 1D            [12] 2221 	add	a,#0x1d
      0035D6 F8               [12] 2222 	mov	r0,a
      0035D7 E4               [12] 2223 	clr	a
      0035D8 F6               [12] 2224 	mov	@r0,a
      0035D9 08               [12] 2225 	inc	r0
      0035DA F6               [12] 2226 	mov	@r0,a
      0035DB 08               [12] 2227 	inc	r0
      0035DC F6               [12] 2228 	mov	@r0,a
      0035DD 08               [12] 2229 	inc	r0
      0035DE 76 80            [12] 2230 	mov	@r0,#0x80
      0035E0                       2231 00359$:
                                   2232 ;	calc.c:58: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      0035E0 E5 08            [12] 2233 	mov	a,_bp
      0035E2 24 07            [12] 2234 	add	a,#0x07
      0035E4 F8               [12] 2235 	mov	r0,a
      0035E5 A6 07            [24] 2236 	mov	@r0,ar7
      0035E7 08               [12] 2237 	inc	r0
      0035E8 A6 06            [24] 2238 	mov	@r0,ar6
      0035EA 08               [12] 2239 	inc	r0
      0035EB A6 05            [24] 2240 	mov	@r0,ar5
      0035ED 08               [12] 2241 	inc	r0
      0035EE A6 02            [24] 2242 	mov	@r0,ar2
      0035F0 E5 08            [12] 2243 	mov	a,_bp
      0035F2 24 07            [12] 2244 	add	a,#0x07
      0035F4 F8               [12] 2245 	mov	r0,a
      0035F5 E5 08            [12] 2246 	mov	a,_bp
      0035F7 24 1D            [12] 2247 	add	a,#0x1d
      0035F9 F9               [12] 2248 	mov	r1,a
      0035FA E7               [12] 2249 	mov	a,@r1
      0035FB 56               [12] 2250 	anl	a,@r0
      0035FC F6               [12] 2251 	mov	@r0,a
      0035FD 09               [12] 2252 	inc	r1
      0035FE E7               [12] 2253 	mov	a,@r1
      0035FF 08               [12] 2254 	inc	r0
      003600 56               [12] 2255 	anl	a,@r0
      003601 F6               [12] 2256 	mov	@r0,a
      003602 09               [12] 2257 	inc	r1
      003603 E7               [12] 2258 	mov	a,@r1
      003604 08               [12] 2259 	inc	r0
      003605 56               [12] 2260 	anl	a,@r0
      003606 F6               [12] 2261 	mov	@r0,a
      003607 09               [12] 2262 	inc	r1
      003608 E7               [12] 2263 	mov	a,@r1
      003609 08               [12] 2264 	inc	r0
      00360A 56               [12] 2265 	anl	a,@r0
      00360B F6               [12] 2266 	mov	@r0,a
      00360C E5 08            [12] 2267 	mov	a,_bp
      00360E 24 07            [12] 2268 	add	a,#0x07
      003610 F8               [12] 2269 	mov	r0,a
      003611 E6               [12] 2270 	mov	a,@r0
      003612 08               [12] 2271 	inc	r0
      003613 46               [12] 2272 	orl	a,@r0
      003614 08               [12] 2273 	inc	r0
      003615 46               [12] 2274 	orl	a,@r0
      003616 08               [12] 2275 	inc	r0
      003617 46               [12] 2276 	orl	a,@r0
      003618 60 06            [24] 2277 	jz	00500$
      00361A 7B 31            [12] 2278 	mov	r3,#0x31
      00361C 7C 00            [12] 2279 	mov	r4,#0x00
      00361E 80 04            [24] 2280 	sjmp	00501$
      003620                       2281 00500$:
      003620 7B 30            [12] 2282 	mov	r3,#0x30
      003622 7C 00            [12] 2283 	mov	r4,#0x00
      003624                       2284 00501$:
      003624 8B 82            [24] 2285 	mov	dpl,r3
      003626 8C 83            [24] 2286 	mov	dph,r4
      003628 12 2C 1F         [24] 2287 	lcall	_putchar
                                   2288 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      00362B E5 08            [12] 2289 	mov	a,_bp
      00362D 24 1D            [12] 2290 	add	a,#0x1d
      00362F F8               [12] 2291 	mov	r0,a
      003630 08               [12] 2292 	inc	r0
      003631 08               [12] 2293 	inc	r0
      003632 08               [12] 2294 	inc	r0
      003633 E6               [12] 2295 	mov	a,@r0
      003634 C3               [12] 2296 	clr	c
      003635 13               [12] 2297 	rrc	a
      003636 F6               [12] 2298 	mov	@r0,a
      003637 18               [12] 2299 	dec	r0
      003638 E6               [12] 2300 	mov	a,@r0
      003639 13               [12] 2301 	rrc	a
      00363A F6               [12] 2302 	mov	@r0,a
      00363B 18               [12] 2303 	dec	r0
      00363C E6               [12] 2304 	mov	a,@r0
      00363D 13               [12] 2305 	rrc	a
      00363E F6               [12] 2306 	mov	@r0,a
      00363F 18               [12] 2307 	dec	r0
      003640 E6               [12] 2308 	mov	a,@r0
      003641 13               [12] 2309 	rrc	a
      003642 F6               [12] 2310 	mov	@r0,a
      003643 E5 08            [12] 2311 	mov	a,_bp
      003645 24 1D            [12] 2312 	add	a,#0x1d
      003647 F8               [12] 2313 	mov	r0,a
      003648 E6               [12] 2314 	mov	a,@r0
      003649 08               [12] 2315 	inc	r0
      00364A 46               [12] 2316 	orl	a,@r0
      00364B 08               [12] 2317 	inc	r0
      00364C 46               [12] 2318 	orl	a,@r0
      00364D 08               [12] 2319 	inc	r0
      00364E 46               [12] 2320 	orl	a,@r0
      00364F 70 8F            [24] 2321 	jnz	00359$
                                   2322 ;	calc.c:138: printstr("\r\n");
      003651 7F 2A            [12] 2323 	mov	r7,#___str_5
      003653 7E 89            [12] 2324 	mov	r6,#(___str_5 >> 8)
      003655 7D 80            [12] 2325 	mov	r5,#0x80
                                   2326 ;	calc.c:51: return;
      003657                       2327 00362$:
                                   2328 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003657 8F 82            [24] 2329 	mov	dpl,r7
      003659 8E 83            [24] 2330 	mov	dph,r6
      00365B 8D F0            [24] 2331 	mov	b,r5
      00365D 12 70 79         [24] 2332 	lcall	__gptrget
      003660 FC               [12] 2333 	mov	r4,a
      003661 70 03            [24] 2334 	jnz	01267$
      003663 02 56 65         [24] 2335 	ljmp	00249$
      003666                       2336 01267$:
      003666 7B 00            [12] 2337 	mov	r3,#0x00
      003668 8C 82            [24] 2338 	mov	dpl,r4
      00366A 8B 83            [24] 2339 	mov	dph,r3
      00366C 12 2C 1F         [24] 2340 	lcall	_putchar
      00366F 0F               [12] 2341 	inc	r7
                                   2342 ;	calc.c:141: case 'P':
      003670 BF 00 E4         [24] 2343 	cjne	r7,#0x00,00362$
      003673 0E               [12] 2344 	inc	r6
      003674 80 E1            [24] 2345 	sjmp	00362$
      003676                       2346 00105$:
                                   2347 ;	calc.c:142: printstr("\r\n");
      003676 7F 2A            [12] 2348 	mov	r7,#___str_5
      003678 7E 89            [12] 2349 	mov	r6,#(___str_5 >> 8)
      00367A 7D 80            [12] 2350 	mov	r5,#0x80
                                   2351 ;	calc.c:51: return;
      00367C                       2352 00365$:
                                   2353 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00367C 8F 82            [24] 2354 	mov	dpl,r7
      00367E 8E 83            [24] 2355 	mov	dph,r6
      003680 8D F0            [24] 2356 	mov	b,r5
      003682 12 70 79         [24] 2357 	lcall	__gptrget
      003685 FC               [12] 2358 	mov	r4,a
      003686 60 10            [24] 2359 	jz	00261$
      003688 7B 00            [12] 2360 	mov	r3,#0x00
      00368A 8C 82            [24] 2361 	mov	dpl,r4
      00368C 8B 83            [24] 2362 	mov	dph,r3
      00368E 12 2C 1F         [24] 2363 	lcall	_putchar
      003691 0F               [12] 2364 	inc	r7
                                   2365 ;	calc.c:142: printstr("\r\n");
      003692 BF 00 E7         [24] 2366 	cjne	r7,#0x00,00365$
      003695 0E               [12] 2367 	inc	r6
      003696 80 E4            [24] 2368 	sjmp	00365$
      003698                       2369 00261$:
                                   2370 ;	calc.c:143: if (!stack_iter_peek(ctx->ps, dump_peek, ctx)) printstr("stack underflow\r\n");
      003698 E5 08            [12] 2371 	mov	a,_bp
      00369A 24 12            [12] 2372 	add	a,#0x12
      00369C F8               [12] 2373 	mov	r0,a
      00369D 86 07            [24] 2374 	mov	ar7,@r0
      00369F 08               [12] 2375 	inc	r0
      0036A0 86 06            [24] 2376 	mov	ar6,@r0
      0036A2 08               [12] 2377 	inc	r0
      0036A3 86 05            [24] 2378 	mov	ar5,@r0
      0036A5 E5 08            [12] 2379 	mov	a,_bp
      0036A7 24 12            [12] 2380 	add	a,#0x12
      0036A9 F8               [12] 2381 	mov	r0,a
      0036AA 74 13            [12] 2382 	mov	a,#0x13
      0036AC 26               [12] 2383 	add	a,@r0
      0036AD FA               [12] 2384 	mov	r2,a
      0036AE 74 40            [12] 2385 	mov	a,#0x40
      0036B0 08               [12] 2386 	inc	r0
      0036B1 36               [12] 2387 	addc	a,@r0
      0036B2 FB               [12] 2388 	mov	r3,a
      0036B3 08               [12] 2389 	inc	r0
      0036B4 86 04            [24] 2390 	mov	ar4,@r0
      0036B6 8A 82            [24] 2391 	mov	dpl,r2
      0036B8 8B 83            [24] 2392 	mov	dph,r3
      0036BA 8C F0            [24] 2393 	mov	b,r4
      0036BC 12 70 79         [24] 2394 	lcall	__gptrget
      0036BF FA               [12] 2395 	mov	r2,a
      0036C0 A3               [24] 2396 	inc	dptr
      0036C1 12 70 79         [24] 2397 	lcall	__gptrget
      0036C4 FB               [12] 2398 	mov	r3,a
      0036C5 A3               [24] 2399 	inc	dptr
      0036C6 12 70 79         [24] 2400 	lcall	__gptrget
      0036C9 FC               [12] 2401 	mov	r4,a
      0036CA C0 07            [24] 2402 	push	ar7
      0036CC C0 06            [24] 2403 	push	ar6
      0036CE C0 05            [24] 2404 	push	ar5
      0036D0 74 AC            [12] 2405 	mov	a,#_dump_peek
      0036D2 C0 E0            [24] 2406 	push	acc
      0036D4 74 32            [12] 2407 	mov	a,#(_dump_peek >> 8)
      0036D6 C0 E0            [24] 2408 	push	acc
      0036D8 8A 82            [24] 2409 	mov	dpl,r2
      0036DA 8B 83            [24] 2410 	mov	dph,r3
      0036DC 8C F0            [24] 2411 	mov	b,r4
      0036DE 12 2B 2E         [24] 2412 	lcall	_stack_iter_peek
      0036E1 AB 82            [24] 2413 	mov	r3,dpl
      0036E3 AC 83            [24] 2414 	mov	r4,dph
      0036E5 E5 81            [12] 2415 	mov	a,sp
      0036E7 24 FB            [12] 2416 	add	a,#0xfb
      0036E9 F5 81            [12] 2417 	mov	sp,a
      0036EB EB               [12] 2418 	mov	a,r3
      0036EC 4C               [12] 2419 	orl	a,r4
      0036ED 60 03            [24] 2420 	jz	01271$
      0036EF 02 56 65         [24] 2421 	ljmp	00249$
      0036F2                       2422 01271$:
      0036F2 7F 01            [12] 2423 	mov	r7,#___str_1
      0036F4 7E 89            [12] 2424 	mov	r6,#(___str_1 >> 8)
      0036F6 7D 80            [12] 2425 	mov	r5,#0x80
                                   2426 ;	calc.c:51: return;
      0036F8                       2427 00368$:
                                   2428 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0036F8 8F 82            [24] 2429 	mov	dpl,r7
      0036FA 8E 83            [24] 2430 	mov	dph,r6
      0036FC 8D F0            [24] 2431 	mov	b,r5
      0036FE 12 70 79         [24] 2432 	lcall	__gptrget
      003701 FC               [12] 2433 	mov	r4,a
      003702 70 03            [24] 2434 	jnz	01272$
      003704 02 56 65         [24] 2435 	ljmp	00249$
      003707                       2436 01272$:
      003707 7B 00            [12] 2437 	mov	r3,#0x00
      003709 8C 82            [24] 2438 	mov	dpl,r4
      00370B 8B 83            [24] 2439 	mov	dph,r3
      00370D 12 2C 1F         [24] 2440 	lcall	_putchar
      003710 0F               [12] 2441 	inc	r7
                                   2442 ;	calc.c:146: case 'v':
      003711 BF 00 E4         [24] 2443 	cjne	r7,#0x00,00368$
      003714 0E               [12] 2444 	inc	r6
      003715 80 E1            [24] 2445 	sjmp	00368$
      003717                       2446 00109$:
                                   2447 ;	calc.c:147: printstr("\r\n");
      003717 7F 2A            [12] 2448 	mov	r7,#___str_5
      003719 7E 89            [12] 2449 	mov	r6,#(___str_5 >> 8)
      00371B 7D 80            [12] 2450 	mov	r5,#0x80
                                   2451 ;	calc.c:51: return;
      00371D                       2452 00371$:
                                   2453 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00371D 8F 82            [24] 2454 	mov	dpl,r7
      00371F 8E 83            [24] 2455 	mov	dph,r6
      003721 8D F0            [24] 2456 	mov	b,r5
      003723 12 70 79         [24] 2457 	lcall	__gptrget
      003726 FC               [12] 2458 	mov	r4,a
      003727 60 10            [24] 2459 	jz	00265$
      003729 7B 00            [12] 2460 	mov	r3,#0x00
      00372B 8C 82            [24] 2461 	mov	dpl,r4
      00372D 8B 83            [24] 2462 	mov	dph,r3
      00372F 12 2C 1F         [24] 2463 	lcall	_putchar
      003732 0F               [12] 2464 	inc	r7
                                   2465 ;	calc.c:147: printstr("\r\n");
      003733 BF 00 E7         [24] 2466 	cjne	r7,#0x00,00371$
      003736 0E               [12] 2467 	inc	r6
      003737 80 E4            [24] 2468 	sjmp	00371$
      003739                       2469 00265$:
                                   2470 ;	calc.c:148: if (!stack_pop(ctx->ps, &d0)) printstr("stack underflow\r\n");
      003739 E5 08            [12] 2471 	mov	a,_bp
      00373B 24 15            [12] 2472 	add	a,#0x15
      00373D FF               [12] 2473 	mov	r7,a
      00373E 7E 00            [12] 2474 	mov	r6,#0x00
      003740 7D 40            [12] 2475 	mov	r5,#0x40
      003742 E5 08            [12] 2476 	mov	a,_bp
      003744 24 12            [12] 2477 	add	a,#0x12
      003746 F8               [12] 2478 	mov	r0,a
      003747 74 13            [12] 2479 	mov	a,#0x13
      003749 26               [12] 2480 	add	a,@r0
      00374A FA               [12] 2481 	mov	r2,a
      00374B ED               [12] 2482 	mov	a,r5
      00374C 08               [12] 2483 	inc	r0
      00374D 36               [12] 2484 	addc	a,@r0
      00374E FB               [12] 2485 	mov	r3,a
      00374F 08               [12] 2486 	inc	r0
      003750 86 04            [24] 2487 	mov	ar4,@r0
      003752 8A 82            [24] 2488 	mov	dpl,r2
      003754 8B 83            [24] 2489 	mov	dph,r3
      003756 8C F0            [24] 2490 	mov	b,r4
      003758 12 70 79         [24] 2491 	lcall	__gptrget
      00375B FA               [12] 2492 	mov	r2,a
      00375C A3               [24] 2493 	inc	dptr
      00375D 12 70 79         [24] 2494 	lcall	__gptrget
      003760 FB               [12] 2495 	mov	r3,a
      003761 A3               [24] 2496 	inc	dptr
      003762 12 70 79         [24] 2497 	lcall	__gptrget
      003765 FC               [12] 2498 	mov	r4,a
      003766 C0 07            [24] 2499 	push	ar7
      003768 C0 06            [24] 2500 	push	ar6
      00376A C0 05            [24] 2501 	push	ar5
      00376C 8A 82            [24] 2502 	mov	dpl,r2
      00376E 8B 83            [24] 2503 	mov	dph,r3
      003770 8C F0            [24] 2504 	mov	b,r4
      003772 12 27 B4         [24] 2505 	lcall	_stack_pop
      003775 AB 82            [24] 2506 	mov	r3,dpl
      003777 AC 83            [24] 2507 	mov	r4,dph
      003779 15 81            [12] 2508 	dec	sp
      00377B 15 81            [12] 2509 	dec	sp
      00377D 15 81            [12] 2510 	dec	sp
      00377F EB               [12] 2511 	mov	a,r3
      003780 4C               [12] 2512 	orl	a,r4
      003781 70 25            [24] 2513 	jnz	00111$
      003783 7F 01            [12] 2514 	mov	r7,#___str_1
      003785 7E 89            [12] 2515 	mov	r6,#(___str_1 >> 8)
      003787 7D 80            [12] 2516 	mov	r5,#0x80
                                   2517 ;	calc.c:51: return;
      003789                       2518 00374$:
                                   2519 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003789 8F 82            [24] 2520 	mov	dpl,r7
      00378B 8E 83            [24] 2521 	mov	dph,r6
      00378D 8D F0            [24] 2522 	mov	b,r5
      00378F 12 70 79         [24] 2523 	lcall	__gptrget
      003792 FC               [12] 2524 	mov	r4,a
      003793 70 03            [24] 2525 	jnz	01277$
      003795 02 56 65         [24] 2526 	ljmp	00249$
      003798                       2527 01277$:
      003798 7B 00            [12] 2528 	mov	r3,#0x00
      00379A 8C 82            [24] 2529 	mov	dpl,r4
      00379C 8B 83            [24] 2530 	mov	dph,r3
      00379E 12 2C 1F         [24] 2531 	lcall	_putchar
      0037A1 0F               [12] 2532 	inc	r7
                                   2533 ;	calc.c:148: if (!stack_pop(ctx->ps, &d0)) printstr("stack underflow\r\n");
      0037A2 BF 00 E4         [24] 2534 	cjne	r7,#0x00,00374$
      0037A5 0E               [12] 2535 	inc	r6
      0037A6 80 E1            [24] 2536 	sjmp	00374$
      0037A8                       2537 00111$:
                                   2538 ;	calc.c:150: printstr("VT ");
      0037A8 7F 3A            [12] 2539 	mov	r7,#___str_9
      0037AA 7E 89            [12] 2540 	mov	r6,#(___str_9 >> 8)
      0037AC 7D 80            [12] 2541 	mov	r5,#0x80
                                   2542 ;	calc.c:51: return;
      0037AE                       2543 00377$:
                                   2544 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0037AE 8F 82            [24] 2545 	mov	dpl,r7
      0037B0 8E 83            [24] 2546 	mov	dph,r6
      0037B2 8D F0            [24] 2547 	mov	b,r5
      0037B4 12 70 79         [24] 2548 	lcall	__gptrget
      0037B7 FC               [12] 2549 	mov	r4,a
      0037B8 60 10            [24] 2550 	jz	00269$
      0037BA 7B 00            [12] 2551 	mov	r3,#0x00
      0037BC 8C 82            [24] 2552 	mov	dpl,r4
      0037BE 8B 83            [24] 2553 	mov	dph,r3
      0037C0 12 2C 1F         [24] 2554 	lcall	_putchar
      0037C3 0F               [12] 2555 	inc	r7
                                   2556 ;	calc.c:150: printstr("VT ");
      0037C4 BF 00 E7         [24] 2557 	cjne	r7,#0x00,00377$
      0037C7 0E               [12] 2558 	inc	r6
      0037C8 80 E4            [24] 2559 	sjmp	00377$
      0037CA                       2560 00269$:
                                   2561 ;	calc.c:151: printf("% 11ld / ", d0);
      0037CA E5 08            [12] 2562 	mov	a,_bp
      0037CC 24 15            [12] 2563 	add	a,#0x15
      0037CE F8               [12] 2564 	mov	r0,a
      0037CF E6               [12] 2565 	mov	a,@r0
      0037D0 C0 E0            [24] 2566 	push	acc
      0037D2 08               [12] 2567 	inc	r0
      0037D3 E6               [12] 2568 	mov	a,@r0
      0037D4 C0 E0            [24] 2569 	push	acc
      0037D6 08               [12] 2570 	inc	r0
      0037D7 E6               [12] 2571 	mov	a,@r0
      0037D8 C0 E0            [24] 2572 	push	acc
      0037DA 08               [12] 2573 	inc	r0
      0037DB E6               [12] 2574 	mov	a,@r0
      0037DC C0 E0            [24] 2575 	push	acc
      0037DE 74 17            [12] 2576 	mov	a,#___str_3
      0037E0 C0 E0            [24] 2577 	push	acc
      0037E2 74 89            [12] 2578 	mov	a,#(___str_3 >> 8)
      0037E4 C0 E0            [24] 2579 	push	acc
      0037E6 74 80            [12] 2580 	mov	a,#0x80
      0037E8 C0 E0            [24] 2581 	push	acc
      0037EA 12 70 40         [24] 2582 	lcall	_printf
      0037ED E5 81            [12] 2583 	mov	a,sp
      0037EF 24 F9            [12] 2584 	add	a,#0xf9
      0037F1 F5 81            [12] 2585 	mov	sp,a
                                   2586 ;	calc.c:152: printf("%08lx / ", d0);
      0037F3 E5 08            [12] 2587 	mov	a,_bp
      0037F5 24 15            [12] 2588 	add	a,#0x15
      0037F7 F8               [12] 2589 	mov	r0,a
      0037F8 E6               [12] 2590 	mov	a,@r0
      0037F9 C0 E0            [24] 2591 	push	acc
      0037FB 08               [12] 2592 	inc	r0
      0037FC E6               [12] 2593 	mov	a,@r0
      0037FD C0 E0            [24] 2594 	push	acc
      0037FF 08               [12] 2595 	inc	r0
      003800 E6               [12] 2596 	mov	a,@r0
      003801 C0 E0            [24] 2597 	push	acc
      003803 08               [12] 2598 	inc	r0
      003804 E6               [12] 2599 	mov	a,@r0
      003805 C0 E0            [24] 2600 	push	acc
      003807 74 21            [12] 2601 	mov	a,#___str_4
      003809 C0 E0            [24] 2602 	push	acc
      00380B 74 89            [12] 2603 	mov	a,#(___str_4 >> 8)
      00380D C0 E0            [24] 2604 	push	acc
      00380F 74 80            [12] 2605 	mov	a,#0x80
      003811 C0 E0            [24] 2606 	push	acc
      003813 12 70 40         [24] 2607 	lcall	_printf
      003816 E5 81            [12] 2608 	mov	a,sp
      003818 24 F9            [12] 2609 	add	a,#0xf9
      00381A F5 81            [12] 2610 	mov	sp,a
                                   2611 ;	calc.c:153: printbin(d0);
      00381C E5 08            [12] 2612 	mov	a,_bp
      00381E 24 15            [12] 2613 	add	a,#0x15
      003820 F8               [12] 2614 	mov	r0,a
      003821 86 07            [24] 2615 	mov	ar7,@r0
      003823 08               [12] 2616 	inc	r0
      003824 86 06            [24] 2617 	mov	ar6,@r0
      003826 08               [12] 2618 	inc	r0
      003827 86 05            [24] 2619 	mov	ar5,@r0
      003829 08               [12] 2620 	inc	r0
      00382A 86 04            [24] 2621 	mov	ar4,@r0
      00382C 8C 02            [24] 2622 	mov	ar2,r4
                                   2623 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      00382E E5 08            [12] 2624 	mov	a,_bp
      003830 24 1D            [12] 2625 	add	a,#0x1d
      003832 F8               [12] 2626 	mov	r0,a
      003833 E4               [12] 2627 	clr	a
      003834 F6               [12] 2628 	mov	@r0,a
      003835 08               [12] 2629 	inc	r0
      003836 F6               [12] 2630 	mov	@r0,a
      003837 08               [12] 2631 	inc	r0
      003838 F6               [12] 2632 	mov	@r0,a
      003839 08               [12] 2633 	inc	r0
      00383A 76 80            [12] 2634 	mov	@r0,#0x80
      00383C                       2635 00379$:
                                   2636 ;	calc.c:58: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      00383C E5 08            [12] 2637 	mov	a,_bp
      00383E 24 07            [12] 2638 	add	a,#0x07
      003840 F8               [12] 2639 	mov	r0,a
      003841 A6 07            [24] 2640 	mov	@r0,ar7
      003843 08               [12] 2641 	inc	r0
      003844 A6 06            [24] 2642 	mov	@r0,ar6
      003846 08               [12] 2643 	inc	r0
      003847 A6 05            [24] 2644 	mov	@r0,ar5
      003849 08               [12] 2645 	inc	r0
      00384A A6 02            [24] 2646 	mov	@r0,ar2
      00384C E5 08            [12] 2647 	mov	a,_bp
      00384E 24 07            [12] 2648 	add	a,#0x07
      003850 F8               [12] 2649 	mov	r0,a
      003851 E5 08            [12] 2650 	mov	a,_bp
      003853 24 1D            [12] 2651 	add	a,#0x1d
      003855 F9               [12] 2652 	mov	r1,a
      003856 E7               [12] 2653 	mov	a,@r1
      003857 56               [12] 2654 	anl	a,@r0
      003858 F6               [12] 2655 	mov	@r0,a
      003859 09               [12] 2656 	inc	r1
      00385A E7               [12] 2657 	mov	a,@r1
      00385B 08               [12] 2658 	inc	r0
      00385C 56               [12] 2659 	anl	a,@r0
      00385D F6               [12] 2660 	mov	@r0,a
      00385E 09               [12] 2661 	inc	r1
      00385F E7               [12] 2662 	mov	a,@r1
      003860 08               [12] 2663 	inc	r0
      003861 56               [12] 2664 	anl	a,@r0
      003862 F6               [12] 2665 	mov	@r0,a
      003863 09               [12] 2666 	inc	r1
      003864 E7               [12] 2667 	mov	a,@r1
      003865 08               [12] 2668 	inc	r0
      003866 56               [12] 2669 	anl	a,@r0
      003867 F6               [12] 2670 	mov	@r0,a
      003868 E5 08            [12] 2671 	mov	a,_bp
      00386A 24 07            [12] 2672 	add	a,#0x07
      00386C F8               [12] 2673 	mov	r0,a
      00386D E6               [12] 2674 	mov	a,@r0
      00386E 08               [12] 2675 	inc	r0
      00386F 46               [12] 2676 	orl	a,@r0
      003870 08               [12] 2677 	inc	r0
      003871 46               [12] 2678 	orl	a,@r0
      003872 08               [12] 2679 	inc	r0
      003873 46               [12] 2680 	orl	a,@r0
      003874 60 06            [24] 2681 	jz	00502$
      003876 7B 31            [12] 2682 	mov	r3,#0x31
      003878 7C 00            [12] 2683 	mov	r4,#0x00
      00387A 80 04            [24] 2684 	sjmp	00503$
      00387C                       2685 00502$:
      00387C 7B 30            [12] 2686 	mov	r3,#0x30
      00387E 7C 00            [12] 2687 	mov	r4,#0x00
      003880                       2688 00503$:
      003880 8B 82            [24] 2689 	mov	dpl,r3
      003882 8C 83            [24] 2690 	mov	dph,r4
      003884 12 2C 1F         [24] 2691 	lcall	_putchar
                                   2692 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      003887 E5 08            [12] 2693 	mov	a,_bp
      003889 24 1D            [12] 2694 	add	a,#0x1d
      00388B F8               [12] 2695 	mov	r0,a
      00388C 08               [12] 2696 	inc	r0
      00388D 08               [12] 2697 	inc	r0
      00388E 08               [12] 2698 	inc	r0
      00388F E6               [12] 2699 	mov	a,@r0
      003890 C3               [12] 2700 	clr	c
      003891 13               [12] 2701 	rrc	a
      003892 F6               [12] 2702 	mov	@r0,a
      003893 18               [12] 2703 	dec	r0
      003894 E6               [12] 2704 	mov	a,@r0
      003895 13               [12] 2705 	rrc	a
      003896 F6               [12] 2706 	mov	@r0,a
      003897 18               [12] 2707 	dec	r0
      003898 E6               [12] 2708 	mov	a,@r0
      003899 13               [12] 2709 	rrc	a
      00389A F6               [12] 2710 	mov	@r0,a
      00389B 18               [12] 2711 	dec	r0
      00389C E6               [12] 2712 	mov	a,@r0
      00389D 13               [12] 2713 	rrc	a
      00389E F6               [12] 2714 	mov	@r0,a
      00389F E5 08            [12] 2715 	mov	a,_bp
      0038A1 24 1D            [12] 2716 	add	a,#0x1d
      0038A3 F8               [12] 2717 	mov	r0,a
      0038A4 E6               [12] 2718 	mov	a,@r0
      0038A5 08               [12] 2719 	inc	r0
      0038A6 46               [12] 2720 	orl	a,@r0
      0038A7 08               [12] 2721 	inc	r0
      0038A8 46               [12] 2722 	orl	a,@r0
      0038A9 08               [12] 2723 	inc	r0
      0038AA 46               [12] 2724 	orl	a,@r0
      0038AB 70 8F            [24] 2725 	jnz	00379$
                                   2726 ;	calc.c:154: printstr("\r\n");
      0038AD 7F 2A            [12] 2727 	mov	r7,#___str_5
      0038AF 7E 89            [12] 2728 	mov	r6,#(___str_5 >> 8)
      0038B1 7D 80            [12] 2729 	mov	r5,#0x80
                                   2730 ;	calc.c:51: return;
      0038B3                       2731 00382$:
                                   2732 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0038B3 8F 82            [24] 2733 	mov	dpl,r7
      0038B5 8E 83            [24] 2734 	mov	dph,r6
      0038B7 8D F0            [24] 2735 	mov	b,r5
      0038B9 12 70 79         [24] 2736 	lcall	__gptrget
      0038BC FC               [12] 2737 	mov	r4,a
      0038BD 70 03            [24] 2738 	jnz	01283$
      0038BF 02 56 65         [24] 2739 	ljmp	00249$
      0038C2                       2740 01283$:
      0038C2 7B 00            [12] 2741 	mov	r3,#0x00
      0038C4 8C 82            [24] 2742 	mov	dpl,r4
      0038C6 8B 83            [24] 2743 	mov	dph,r3
      0038C8 12 2C 1F         [24] 2744 	lcall	_putchar
      0038CB 0F               [12] 2745 	inc	r7
                                   2746 ;	calc.c:157: case 'V':
      0038CC BF 00 E4         [24] 2747 	cjne	r7,#0x00,00382$
      0038CF 0E               [12] 2748 	inc	r6
      0038D0 80 E1            [24] 2749 	sjmp	00382$
      0038D2                       2750 00113$:
                                   2751 ;	calc.c:158: printstr("\r\n");
      0038D2 7F 2A            [12] 2752 	mov	r7,#___str_5
      0038D4 7E 89            [12] 2753 	mov	r6,#(___str_5 >> 8)
      0038D6 7D 80            [12] 2754 	mov	r5,#0x80
                                   2755 ;	calc.c:51: return;
      0038D8                       2756 00385$:
                                   2757 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0038D8 8F 82            [24] 2758 	mov	dpl,r7
      0038DA 8E 83            [24] 2759 	mov	dph,r6
      0038DC 8D F0            [24] 2760 	mov	b,r5
      0038DE 12 70 79         [24] 2761 	lcall	__gptrget
      0038E1 FC               [12] 2762 	mov	r4,a
      0038E2 60 10            [24] 2763 	jz	00275$
      0038E4 7B 00            [12] 2764 	mov	r3,#0x00
      0038E6 8C 82            [24] 2765 	mov	dpl,r4
      0038E8 8B 83            [24] 2766 	mov	dph,r3
      0038EA 12 2C 1F         [24] 2767 	lcall	_putchar
      0038ED 0F               [12] 2768 	inc	r7
                                   2769 ;	calc.c:158: printstr("\r\n");
      0038EE BF 00 E7         [24] 2770 	cjne	r7,#0x00,00385$
      0038F1 0E               [12] 2771 	inc	r6
      0038F2 80 E4            [24] 2772 	sjmp	00385$
      0038F4                       2773 00275$:
                                   2774 ;	calc.c:159: (void)dump_pop(_ctx, delta);
      0038F4 E5 08            [12] 2775 	mov	a,_bp
      0038F6 24 FB            [12] 2776 	add	a,#0xfb
      0038F8 F8               [12] 2777 	mov	r0,a
      0038F9 E6               [12] 2778 	mov	a,@r0
      0038FA C0 E0            [24] 2779 	push	acc
      0038FC 08               [12] 2780 	inc	r0
      0038FD E6               [12] 2781 	mov	a,@r0
      0038FE C0 E0            [24] 2782 	push	acc
      003900 08               [12] 2783 	inc	r0
      003901 E6               [12] 2784 	mov	a,@r0
      003902 C0 E0            [24] 2785 	push	acc
      003904 A8 08            [24] 2786 	mov	r0,_bp
      003906 08               [12] 2787 	inc	r0
      003907 86 82            [24] 2788 	mov	dpl,@r0
      003909 08               [12] 2789 	inc	r0
      00390A 86 83            [24] 2790 	mov	dph,@r0
      00390C 08               [12] 2791 	inc	r0
      00390D 86 F0            [24] 2792 	mov	b,@r0
      00390F 12 2D B2         [24] 2793 	lcall	_dump_pop
      003912 15 81            [12] 2794 	dec	sp
      003914 15 81            [12] 2795 	dec	sp
      003916 15 81            [12] 2796 	dec	sp
                                   2797 ;	calc.c:160: break;
      003918 02 56 65         [24] 2798 	ljmp	00249$
                                   2799 ;	calc.c:161: case 'x':
      00391B                       2800 00114$:
                                   2801 ;	calc.c:162: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      00391B E5 08            [12] 2802 	mov	a,_bp
      00391D 24 15            [12] 2803 	add	a,#0x15
      00391F FF               [12] 2804 	mov	r7,a
      003920 7E 00            [12] 2805 	mov	r6,#0x00
      003922 7D 40            [12] 2806 	mov	r5,#0x40
      003924 E5 08            [12] 2807 	mov	a,_bp
      003926 24 12            [12] 2808 	add	a,#0x12
      003928 F8               [12] 2809 	mov	r0,a
      003929 E5 08            [12] 2810 	mov	a,_bp
      00392B 24 07            [12] 2811 	add	a,#0x07
      00392D F9               [12] 2812 	mov	r1,a
      00392E 74 13            [12] 2813 	mov	a,#0x13
      003930 26               [12] 2814 	add	a,@r0
      003931 F7               [12] 2815 	mov	@r1,a
      003932 74 40            [12] 2816 	mov	a,#0x40
      003934 08               [12] 2817 	inc	r0
      003935 36               [12] 2818 	addc	a,@r0
      003936 09               [12] 2819 	inc	r1
      003937 F7               [12] 2820 	mov	@r1,a
      003938 08               [12] 2821 	inc	r0
      003939 09               [12] 2822 	inc	r1
      00393A E6               [12] 2823 	mov	a,@r0
      00393B F7               [12] 2824 	mov	@r1,a
      00393C E5 08            [12] 2825 	mov	a,_bp
      00393E 24 07            [12] 2826 	add	a,#0x07
      003940 F8               [12] 2827 	mov	r0,a
      003941 86 82            [24] 2828 	mov	dpl,@r0
      003943 08               [12] 2829 	inc	r0
      003944 86 83            [24] 2830 	mov	dph,@r0
      003946 08               [12] 2831 	inc	r0
      003947 86 F0            [24] 2832 	mov	b,@r0
      003949 12 70 79         [24] 2833 	lcall	__gptrget
      00394C FA               [12] 2834 	mov	r2,a
      00394D A3               [24] 2835 	inc	dptr
      00394E 12 70 79         [24] 2836 	lcall	__gptrget
      003951 FB               [12] 2837 	mov	r3,a
      003952 A3               [24] 2838 	inc	dptr
      003953 12 70 79         [24] 2839 	lcall	__gptrget
      003956 FC               [12] 2840 	mov	r4,a
      003957 C0 07            [24] 2841 	push	ar7
      003959 C0 06            [24] 2842 	push	ar6
      00395B C0 05            [24] 2843 	push	ar5
      00395D 8A 82            [24] 2844 	mov	dpl,r2
      00395F 8B 83            [24] 2845 	mov	dph,r3
      003961 8C F0            [24] 2846 	mov	b,r4
      003963 12 27 B4         [24] 2847 	lcall	_stack_pop
      003966 AB 82            [24] 2848 	mov	r3,dpl
      003968 AC 83            [24] 2849 	mov	r4,dph
      00396A 15 81            [12] 2850 	dec	sp
      00396C 15 81            [12] 2851 	dec	sp
      00396E 15 81            [12] 2852 	dec	sp
      003970 EB               [12] 2853 	mov	a,r3
      003971 4C               [12] 2854 	orl	a,r4
      003972 70 25            [24] 2855 	jnz	00119$
      003974 7F 3E            [12] 2856 	mov	r7,#___str_10
      003976 7E 89            [12] 2857 	mov	r6,#(___str_10 >> 8)
      003978 7D 80            [12] 2858 	mov	r5,#0x80
                                   2859 ;	calc.c:51: return;
      00397A                       2860 00388$:
                                   2861 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00397A 8F 82            [24] 2862 	mov	dpl,r7
      00397C 8E 83            [24] 2863 	mov	dph,r6
      00397E 8D F0            [24] 2864 	mov	b,r5
      003980 12 70 79         [24] 2865 	lcall	__gptrget
      003983 FC               [12] 2866 	mov	r4,a
      003984 70 03            [24] 2867 	jnz	01288$
      003986 02 56 65         [24] 2868 	ljmp	00249$
      003989                       2869 01288$:
      003989 7B 00            [12] 2870 	mov	r3,#0x00
      00398B 8C 82            [24] 2871 	mov	dpl,r4
      00398D 8B 83            [24] 2872 	mov	dph,r3
      00398F 12 2C 1F         [24] 2873 	lcall	_putchar
      003992 0F               [12] 2874 	inc	r7
                                   2875 ;	calc.c:162: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003993 BF 00 E4         [24] 2876 	cjne	r7,#0x00,00388$
      003996 0E               [12] 2877 	inc	r6
      003997 80 E1            [24] 2878 	sjmp	00388$
      003999                       2879 00119$:
                                   2880 ;	calc.c:163: else if (!stack_pop(ctx->ps, &d1)) {
      003999 E5 08            [12] 2881 	mov	a,_bp
      00399B 24 19            [12] 2882 	add	a,#0x19
      00399D FF               [12] 2883 	mov	r7,a
      00399E 7E 00            [12] 2884 	mov	r6,#0x00
      0039A0 7D 40            [12] 2885 	mov	r5,#0x40
      0039A2 E5 08            [12] 2886 	mov	a,_bp
      0039A4 24 07            [12] 2887 	add	a,#0x07
      0039A6 F8               [12] 2888 	mov	r0,a
      0039A7 86 82            [24] 2889 	mov	dpl,@r0
      0039A9 08               [12] 2890 	inc	r0
      0039AA 86 83            [24] 2891 	mov	dph,@r0
      0039AC 08               [12] 2892 	inc	r0
      0039AD 86 F0            [24] 2893 	mov	b,@r0
      0039AF 12 70 79         [24] 2894 	lcall	__gptrget
      0039B2 FA               [12] 2895 	mov	r2,a
      0039B3 A3               [24] 2896 	inc	dptr
      0039B4 12 70 79         [24] 2897 	lcall	__gptrget
      0039B7 FB               [12] 2898 	mov	r3,a
      0039B8 A3               [24] 2899 	inc	dptr
      0039B9 12 70 79         [24] 2900 	lcall	__gptrget
      0039BC FC               [12] 2901 	mov	r4,a
      0039BD C0 07            [24] 2902 	push	ar7
      0039BF C0 06            [24] 2903 	push	ar6
      0039C1 C0 05            [24] 2904 	push	ar5
      0039C3 8A 82            [24] 2905 	mov	dpl,r2
      0039C5 8B 83            [24] 2906 	mov	dph,r3
      0039C7 8C F0            [24] 2907 	mov	b,r4
      0039C9 12 27 B4         [24] 2908 	lcall	_stack_pop
      0039CC AB 82            [24] 2909 	mov	r3,dpl
      0039CE AC 83            [24] 2910 	mov	r4,dph
      0039D0 15 81            [12] 2911 	dec	sp
      0039D2 15 81            [12] 2912 	dec	sp
      0039D4 15 81            [12] 2913 	dec	sp
      0039D6 EB               [12] 2914 	mov	a,r3
      0039D7 4C               [12] 2915 	orl	a,r4
      0039D8 70 63            [24] 2916 	jnz	00116$
                                   2917 ;	calc.c:164: (void)stack_push(ctx->ps, d0);
      0039DA E5 08            [12] 2918 	mov	a,_bp
      0039DC 24 07            [12] 2919 	add	a,#0x07
      0039DE F8               [12] 2920 	mov	r0,a
      0039DF 86 82            [24] 2921 	mov	dpl,@r0
      0039E1 08               [12] 2922 	inc	r0
      0039E2 86 83            [24] 2923 	mov	dph,@r0
      0039E4 08               [12] 2924 	inc	r0
      0039E5 86 F0            [24] 2925 	mov	b,@r0
      0039E7 12 70 79         [24] 2926 	lcall	__gptrget
      0039EA FA               [12] 2927 	mov	r2,a
      0039EB A3               [24] 2928 	inc	dptr
      0039EC 12 70 79         [24] 2929 	lcall	__gptrget
      0039EF FB               [12] 2930 	mov	r3,a
      0039F0 A3               [24] 2931 	inc	dptr
      0039F1 12 70 79         [24] 2932 	lcall	__gptrget
      0039F4 FC               [12] 2933 	mov	r4,a
      0039F5 E5 08            [12] 2934 	mov	a,_bp
      0039F7 24 15            [12] 2935 	add	a,#0x15
      0039F9 F8               [12] 2936 	mov	r0,a
      0039FA E6               [12] 2937 	mov	a,@r0
      0039FB C0 E0            [24] 2938 	push	acc
      0039FD 08               [12] 2939 	inc	r0
      0039FE E6               [12] 2940 	mov	a,@r0
      0039FF C0 E0            [24] 2941 	push	acc
      003A01 08               [12] 2942 	inc	r0
      003A02 E6               [12] 2943 	mov	a,@r0
      003A03 C0 E0            [24] 2944 	push	acc
      003A05 08               [12] 2945 	inc	r0
      003A06 E6               [12] 2946 	mov	a,@r0
      003A07 C0 E0            [24] 2947 	push	acc
      003A09 8A 82            [24] 2948 	mov	dpl,r2
      003A0B 8B 83            [24] 2949 	mov	dph,r3
      003A0D 8C F0            [24] 2950 	mov	b,r4
      003A0F 12 26 BA         [24] 2951 	lcall	_stack_push
      003A12 E5 81            [12] 2952 	mov	a,sp
      003A14 24 FC            [12] 2953 	add	a,#0xfc
      003A16 F5 81            [12] 2954 	mov	sp,a
                                   2955 ;	calc.c:165: printstr("\r\nstack underflow\r\n");
      003A18 7F 3E            [12] 2956 	mov	r7,#___str_10
      003A1A 7E 89            [12] 2957 	mov	r6,#(___str_10 >> 8)
      003A1C 7D 80            [12] 2958 	mov	r5,#0x80
                                   2959 ;	calc.c:51: return;
      003A1E                       2960 00391$:
                                   2961 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003A1E 8F 82            [24] 2962 	mov	dpl,r7
      003A20 8E 83            [24] 2963 	mov	dph,r6
      003A22 8D F0            [24] 2964 	mov	b,r5
      003A24 12 70 79         [24] 2965 	lcall	__gptrget
      003A27 FC               [12] 2966 	mov	r4,a
      003A28 70 03            [24] 2967 	jnz	01291$
      003A2A 02 56 65         [24] 2968 	ljmp	00249$
      003A2D                       2969 01291$:
      003A2D 7B 00            [12] 2970 	mov	r3,#0x00
      003A2F 8C 82            [24] 2971 	mov	dpl,r4
      003A31 8B 83            [24] 2972 	mov	dph,r3
      003A33 12 2C 1F         [24] 2973 	lcall	_putchar
      003A36 0F               [12] 2974 	inc	r7
                                   2975 ;	calc.c:165: printstr("\r\nstack underflow\r\n");
      003A37 BF 00 E4         [24] 2976 	cjne	r7,#0x00,00391$
      003A3A 0E               [12] 2977 	inc	r6
      003A3B 80 E1            [24] 2978 	sjmp	00391$
      003A3D                       2979 00116$:
                                   2980 ;	calc.c:167: (void)stack_push(ctx->ps, d0);
      003A3D E5 08            [12] 2981 	mov	a,_bp
      003A3F 24 07            [12] 2982 	add	a,#0x07
      003A41 F8               [12] 2983 	mov	r0,a
      003A42 86 82            [24] 2984 	mov	dpl,@r0
      003A44 08               [12] 2985 	inc	r0
      003A45 86 83            [24] 2986 	mov	dph,@r0
      003A47 08               [12] 2987 	inc	r0
      003A48 86 F0            [24] 2988 	mov	b,@r0
      003A4A 12 70 79         [24] 2989 	lcall	__gptrget
      003A4D FA               [12] 2990 	mov	r2,a
      003A4E A3               [24] 2991 	inc	dptr
      003A4F 12 70 79         [24] 2992 	lcall	__gptrget
      003A52 FB               [12] 2993 	mov	r3,a
      003A53 A3               [24] 2994 	inc	dptr
      003A54 12 70 79         [24] 2995 	lcall	__gptrget
      003A57 FC               [12] 2996 	mov	r4,a
      003A58 E5 08            [12] 2997 	mov	a,_bp
      003A5A 24 15            [12] 2998 	add	a,#0x15
      003A5C F8               [12] 2999 	mov	r0,a
      003A5D E6               [12] 3000 	mov	a,@r0
      003A5E C0 E0            [24] 3001 	push	acc
      003A60 08               [12] 3002 	inc	r0
      003A61 E6               [12] 3003 	mov	a,@r0
      003A62 C0 E0            [24] 3004 	push	acc
      003A64 08               [12] 3005 	inc	r0
      003A65 E6               [12] 3006 	mov	a,@r0
      003A66 C0 E0            [24] 3007 	push	acc
      003A68 08               [12] 3008 	inc	r0
      003A69 E6               [12] 3009 	mov	a,@r0
      003A6A C0 E0            [24] 3010 	push	acc
      003A6C 8A 82            [24] 3011 	mov	dpl,r2
      003A6E 8B 83            [24] 3012 	mov	dph,r3
      003A70 8C F0            [24] 3013 	mov	b,r4
      003A72 12 26 BA         [24] 3014 	lcall	_stack_push
      003A75 E5 81            [12] 3015 	mov	a,sp
      003A77 24 FC            [12] 3016 	add	a,#0xfc
      003A79 F5 81            [12] 3017 	mov	sp,a
                                   3018 ;	calc.c:168: (void)stack_push(ctx->ps, d1);
      003A7B E5 08            [12] 3019 	mov	a,_bp
      003A7D 24 07            [12] 3020 	add	a,#0x07
      003A7F F8               [12] 3021 	mov	r0,a
      003A80 86 82            [24] 3022 	mov	dpl,@r0
      003A82 08               [12] 3023 	inc	r0
      003A83 86 83            [24] 3024 	mov	dph,@r0
      003A85 08               [12] 3025 	inc	r0
      003A86 86 F0            [24] 3026 	mov	b,@r0
      003A88 12 70 79         [24] 3027 	lcall	__gptrget
      003A8B FA               [12] 3028 	mov	r2,a
      003A8C A3               [24] 3029 	inc	dptr
      003A8D 12 70 79         [24] 3030 	lcall	__gptrget
      003A90 FB               [12] 3031 	mov	r3,a
      003A91 A3               [24] 3032 	inc	dptr
      003A92 12 70 79         [24] 3033 	lcall	__gptrget
      003A95 FC               [12] 3034 	mov	r4,a
      003A96 E5 08            [12] 3035 	mov	a,_bp
      003A98 24 19            [12] 3036 	add	a,#0x19
      003A9A F8               [12] 3037 	mov	r0,a
      003A9B E6               [12] 3038 	mov	a,@r0
      003A9C C0 E0            [24] 3039 	push	acc
      003A9E 08               [12] 3040 	inc	r0
      003A9F E6               [12] 3041 	mov	a,@r0
      003AA0 C0 E0            [24] 3042 	push	acc
      003AA2 08               [12] 3043 	inc	r0
      003AA3 E6               [12] 3044 	mov	a,@r0
      003AA4 C0 E0            [24] 3045 	push	acc
      003AA6 08               [12] 3046 	inc	r0
      003AA7 E6               [12] 3047 	mov	a,@r0
      003AA8 C0 E0            [24] 3048 	push	acc
      003AAA 8A 82            [24] 3049 	mov	dpl,r2
      003AAC 8B 83            [24] 3050 	mov	dph,r3
      003AAE 8C F0            [24] 3051 	mov	b,r4
      003AB0 12 26 BA         [24] 3052 	lcall	_stack_push
      003AB3 E5 81            [12] 3053 	mov	a,sp
      003AB5 24 FC            [12] 3054 	add	a,#0xfc
      003AB7 F5 81            [12] 3055 	mov	sp,a
                                   3056 ;	calc.c:170: break;
      003AB9 02 56 65         [24] 3057 	ljmp	00249$
                                   3058 ;	calc.c:171: case 'm':
      003ABC                       3059 00121$:
                                   3060 ;	calc.c:172: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003ABC E5 08            [12] 3061 	mov	a,_bp
      003ABE 24 15            [12] 3062 	add	a,#0x15
      003AC0 FF               [12] 3063 	mov	r7,a
      003AC1 7E 00            [12] 3064 	mov	r6,#0x00
      003AC3 7D 40            [12] 3065 	mov	r5,#0x40
      003AC5 E5 08            [12] 3066 	mov	a,_bp
      003AC7 24 12            [12] 3067 	add	a,#0x12
      003AC9 F8               [12] 3068 	mov	r0,a
      003ACA E5 08            [12] 3069 	mov	a,_bp
      003ACC 24 07            [12] 3070 	add	a,#0x07
      003ACE F9               [12] 3071 	mov	r1,a
      003ACF 74 13            [12] 3072 	mov	a,#0x13
      003AD1 26               [12] 3073 	add	a,@r0
      003AD2 F7               [12] 3074 	mov	@r1,a
      003AD3 74 40            [12] 3075 	mov	a,#0x40
      003AD5 08               [12] 3076 	inc	r0
      003AD6 36               [12] 3077 	addc	a,@r0
      003AD7 09               [12] 3078 	inc	r1
      003AD8 F7               [12] 3079 	mov	@r1,a
      003AD9 08               [12] 3080 	inc	r0
      003ADA 09               [12] 3081 	inc	r1
      003ADB E6               [12] 3082 	mov	a,@r0
      003ADC F7               [12] 3083 	mov	@r1,a
      003ADD E5 08            [12] 3084 	mov	a,_bp
      003ADF 24 07            [12] 3085 	add	a,#0x07
      003AE1 F8               [12] 3086 	mov	r0,a
      003AE2 86 82            [24] 3087 	mov	dpl,@r0
      003AE4 08               [12] 3088 	inc	r0
      003AE5 86 83            [24] 3089 	mov	dph,@r0
      003AE7 08               [12] 3090 	inc	r0
      003AE8 86 F0            [24] 3091 	mov	b,@r0
      003AEA 12 70 79         [24] 3092 	lcall	__gptrget
      003AED FA               [12] 3093 	mov	r2,a
      003AEE A3               [24] 3094 	inc	dptr
      003AEF 12 70 79         [24] 3095 	lcall	__gptrget
      003AF2 FB               [12] 3096 	mov	r3,a
      003AF3 A3               [24] 3097 	inc	dptr
      003AF4 12 70 79         [24] 3098 	lcall	__gptrget
      003AF7 FC               [12] 3099 	mov	r4,a
      003AF8 C0 07            [24] 3100 	push	ar7
      003AFA C0 06            [24] 3101 	push	ar6
      003AFC C0 05            [24] 3102 	push	ar5
      003AFE 8A 82            [24] 3103 	mov	dpl,r2
      003B00 8B 83            [24] 3104 	mov	dph,r3
      003B02 8C F0            [24] 3105 	mov	b,r4
      003B04 12 27 B4         [24] 3106 	lcall	_stack_pop
      003B07 AB 82            [24] 3107 	mov	r3,dpl
      003B09 AC 83            [24] 3108 	mov	r4,dph
      003B0B 15 81            [12] 3109 	dec	sp
      003B0D 15 81            [12] 3110 	dec	sp
      003B0F 15 81            [12] 3111 	dec	sp
      003B11 EB               [12] 3112 	mov	a,r3
      003B12 4C               [12] 3113 	orl	a,r4
      003B13 70 25            [24] 3114 	jnz	00125$
      003B15 7F 3E            [12] 3115 	mov	r7,#___str_10
      003B17 7E 89            [12] 3116 	mov	r6,#(___str_10 >> 8)
      003B19 7D 80            [12] 3117 	mov	r5,#0x80
                                   3118 ;	calc.c:51: return;
      003B1B                       3119 00394$:
                                   3120 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003B1B 8F 82            [24] 3121 	mov	dpl,r7
      003B1D 8E 83            [24] 3122 	mov	dph,r6
      003B1F 8D F0            [24] 3123 	mov	b,r5
      003B21 12 70 79         [24] 3124 	lcall	__gptrget
      003B24 FC               [12] 3125 	mov	r4,a
      003B25 70 03            [24] 3126 	jnz	01294$
      003B27 02 56 65         [24] 3127 	ljmp	00249$
      003B2A                       3128 01294$:
      003B2A 7B 00            [12] 3129 	mov	r3,#0x00
      003B2C 8C 82            [24] 3130 	mov	dpl,r4
      003B2E 8B 83            [24] 3131 	mov	dph,r3
      003B30 12 2C 1F         [24] 3132 	lcall	_putchar
      003B33 0F               [12] 3133 	inc	r7
                                   3134 ;	calc.c:172: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003B34 BF 00 E4         [24] 3135 	cjne	r7,#0x00,00394$
      003B37 0E               [12] 3136 	inc	r6
      003B38 80 E1            [24] 3137 	sjmp	00394$
      003B3A                       3138 00125$:
                                   3139 ;	calc.c:174: if (!stack_push(ctx->ss, d0)) {
      003B3A E5 08            [12] 3140 	mov	a,_bp
      003B3C 24 12            [12] 3141 	add	a,#0x12
      003B3E F8               [12] 3142 	mov	r0,a
      003B3F 74 16            [12] 3143 	mov	a,#0x16
      003B41 26               [12] 3144 	add	a,@r0
      003B42 FA               [12] 3145 	mov	r2,a
      003B43 74 40            [12] 3146 	mov	a,#0x40
      003B45 08               [12] 3147 	inc	r0
      003B46 36               [12] 3148 	addc	a,@r0
      003B47 FB               [12] 3149 	mov	r3,a
      003B48 08               [12] 3150 	inc	r0
      003B49 86 04            [24] 3151 	mov	ar4,@r0
      003B4B 8A 82            [24] 3152 	mov	dpl,r2
      003B4D 8B 83            [24] 3153 	mov	dph,r3
      003B4F 8C F0            [24] 3154 	mov	b,r4
      003B51 12 70 79         [24] 3155 	lcall	__gptrget
      003B54 FA               [12] 3156 	mov	r2,a
      003B55 A3               [24] 3157 	inc	dptr
      003B56 12 70 79         [24] 3158 	lcall	__gptrget
      003B59 FB               [12] 3159 	mov	r3,a
      003B5A A3               [24] 3160 	inc	dptr
      003B5B 12 70 79         [24] 3161 	lcall	__gptrget
      003B5E FC               [12] 3162 	mov	r4,a
      003B5F E5 08            [12] 3163 	mov	a,_bp
      003B61 24 15            [12] 3164 	add	a,#0x15
      003B63 F8               [12] 3165 	mov	r0,a
      003B64 E6               [12] 3166 	mov	a,@r0
      003B65 C0 E0            [24] 3167 	push	acc
      003B67 08               [12] 3168 	inc	r0
      003B68 E6               [12] 3169 	mov	a,@r0
      003B69 C0 E0            [24] 3170 	push	acc
      003B6B 08               [12] 3171 	inc	r0
      003B6C E6               [12] 3172 	mov	a,@r0
      003B6D C0 E0            [24] 3173 	push	acc
      003B6F 08               [12] 3174 	inc	r0
      003B70 E6               [12] 3175 	mov	a,@r0
      003B71 C0 E0            [24] 3176 	push	acc
      003B73 8A 82            [24] 3177 	mov	dpl,r2
      003B75 8B 83            [24] 3178 	mov	dph,r3
      003B77 8C F0            [24] 3179 	mov	b,r4
      003B79 12 26 BA         [24] 3180 	lcall	_stack_push
      003B7C AB 82            [24] 3181 	mov	r3,dpl
      003B7E AC 83            [24] 3182 	mov	r4,dph
      003B80 E5 81            [12] 3183 	mov	a,sp
      003B82 24 FC            [12] 3184 	add	a,#0xfc
      003B84 F5 81            [12] 3185 	mov	sp,a
      003B86 EB               [12] 3186 	mov	a,r3
      003B87 4C               [12] 3187 	orl	a,r4
      003B88 60 03            [24] 3188 	jz	01296$
      003B8A 02 56 65         [24] 3189 	ljmp	00249$
      003B8D                       3190 01296$:
                                   3191 ;	calc.c:175: printstr("\r\nsecondary stack overflow\r\n");
      003B8D 7F 52            [12] 3192 	mov	r7,#___str_11
      003B8F 7E 89            [12] 3193 	mov	r6,#(___str_11 >> 8)
      003B91 7D 80            [12] 3194 	mov	r5,#0x80
                                   3195 ;	calc.c:51: return;
      003B93                       3196 00397$:
                                   3197 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003B93 8F 82            [24] 3198 	mov	dpl,r7
      003B95 8E 83            [24] 3199 	mov	dph,r6
      003B97 8D F0            [24] 3200 	mov	b,r5
      003B99 12 70 79         [24] 3201 	lcall	__gptrget
      003B9C FC               [12] 3202 	mov	r4,a
      003B9D 60 10            [24] 3203 	jz	00283$
      003B9F 7B 00            [12] 3204 	mov	r3,#0x00
      003BA1 8C 82            [24] 3205 	mov	dpl,r4
      003BA3 8B 83            [24] 3206 	mov	dph,r3
      003BA5 12 2C 1F         [24] 3207 	lcall	_putchar
      003BA8 0F               [12] 3208 	inc	r7
                                   3209 ;	calc.c:175: printstr("\r\nsecondary stack overflow\r\n");
      003BA9 BF 00 E7         [24] 3210 	cjne	r7,#0x00,00397$
      003BAC 0E               [12] 3211 	inc	r6
      003BAD 80 E4            [24] 3212 	sjmp	00397$
      003BAF                       3213 00283$:
                                   3214 ;	calc.c:176: (void)stack_push(ctx->ps, d0);
      003BAF E5 08            [12] 3215 	mov	a,_bp
      003BB1 24 07            [12] 3216 	add	a,#0x07
      003BB3 F8               [12] 3217 	mov	r0,a
      003BB4 86 82            [24] 3218 	mov	dpl,@r0
      003BB6 08               [12] 3219 	inc	r0
      003BB7 86 83            [24] 3220 	mov	dph,@r0
      003BB9 08               [12] 3221 	inc	r0
      003BBA 86 F0            [24] 3222 	mov	b,@r0
      003BBC 12 70 79         [24] 3223 	lcall	__gptrget
      003BBF FA               [12] 3224 	mov	r2,a
      003BC0 A3               [24] 3225 	inc	dptr
      003BC1 12 70 79         [24] 3226 	lcall	__gptrget
      003BC4 FB               [12] 3227 	mov	r3,a
      003BC5 A3               [24] 3228 	inc	dptr
      003BC6 12 70 79         [24] 3229 	lcall	__gptrget
      003BC9 FC               [12] 3230 	mov	r4,a
      003BCA E5 08            [12] 3231 	mov	a,_bp
      003BCC 24 15            [12] 3232 	add	a,#0x15
      003BCE F8               [12] 3233 	mov	r0,a
      003BCF E6               [12] 3234 	mov	a,@r0
      003BD0 C0 E0            [24] 3235 	push	acc
      003BD2 08               [12] 3236 	inc	r0
      003BD3 E6               [12] 3237 	mov	a,@r0
      003BD4 C0 E0            [24] 3238 	push	acc
      003BD6 08               [12] 3239 	inc	r0
      003BD7 E6               [12] 3240 	mov	a,@r0
      003BD8 C0 E0            [24] 3241 	push	acc
      003BDA 08               [12] 3242 	inc	r0
      003BDB E6               [12] 3243 	mov	a,@r0
      003BDC C0 E0            [24] 3244 	push	acc
      003BDE 8A 82            [24] 3245 	mov	dpl,r2
      003BE0 8B 83            [24] 3246 	mov	dph,r3
      003BE2 8C F0            [24] 3247 	mov	b,r4
      003BE4 12 26 BA         [24] 3248 	lcall	_stack_push
      003BE7 E5 81            [12] 3249 	mov	a,sp
      003BE9 24 FC            [12] 3250 	add	a,#0xfc
      003BEB F5 81            [12] 3251 	mov	sp,a
                                   3252 ;	calc.c:179: break;
      003BED 02 56 65         [24] 3253 	ljmp	00249$
                                   3254 ;	calc.c:180: case 'M':
      003BF0                       3255 00127$:
                                   3256 ;	calc.c:181: if (!stack_pop(ctx->ss, &d0)) printstr("\r\nsecondary stack underflow\r\n");
      003BF0 E5 08            [12] 3257 	mov	a,_bp
      003BF2 24 15            [12] 3258 	add	a,#0x15
      003BF4 FF               [12] 3259 	mov	r7,a
      003BF5 7E 00            [12] 3260 	mov	r6,#0x00
      003BF7 7D 40            [12] 3261 	mov	r5,#0x40
      003BF9 E5 08            [12] 3262 	mov	a,_bp
      003BFB 24 12            [12] 3263 	add	a,#0x12
      003BFD F8               [12] 3264 	mov	r0,a
      003BFE E5 08            [12] 3265 	mov	a,_bp
      003C00 24 07            [12] 3266 	add	a,#0x07
      003C02 F9               [12] 3267 	mov	r1,a
      003C03 74 16            [12] 3268 	mov	a,#0x16
      003C05 26               [12] 3269 	add	a,@r0
      003C06 F7               [12] 3270 	mov	@r1,a
      003C07 74 40            [12] 3271 	mov	a,#0x40
      003C09 08               [12] 3272 	inc	r0
      003C0A 36               [12] 3273 	addc	a,@r0
      003C0B 09               [12] 3274 	inc	r1
      003C0C F7               [12] 3275 	mov	@r1,a
      003C0D 08               [12] 3276 	inc	r0
      003C0E 09               [12] 3277 	inc	r1
      003C0F E6               [12] 3278 	mov	a,@r0
      003C10 F7               [12] 3279 	mov	@r1,a
      003C11 E5 08            [12] 3280 	mov	a,_bp
      003C13 24 07            [12] 3281 	add	a,#0x07
      003C15 F8               [12] 3282 	mov	r0,a
      003C16 86 82            [24] 3283 	mov	dpl,@r0
      003C18 08               [12] 3284 	inc	r0
      003C19 86 83            [24] 3285 	mov	dph,@r0
      003C1B 08               [12] 3286 	inc	r0
      003C1C 86 F0            [24] 3287 	mov	b,@r0
      003C1E 12 70 79         [24] 3288 	lcall	__gptrget
      003C21 FA               [12] 3289 	mov	r2,a
      003C22 A3               [24] 3290 	inc	dptr
      003C23 12 70 79         [24] 3291 	lcall	__gptrget
      003C26 FB               [12] 3292 	mov	r3,a
      003C27 A3               [24] 3293 	inc	dptr
      003C28 12 70 79         [24] 3294 	lcall	__gptrget
      003C2B FC               [12] 3295 	mov	r4,a
      003C2C C0 07            [24] 3296 	push	ar7
      003C2E C0 06            [24] 3297 	push	ar6
      003C30 C0 05            [24] 3298 	push	ar5
      003C32 8A 82            [24] 3299 	mov	dpl,r2
      003C34 8B 83            [24] 3300 	mov	dph,r3
      003C36 8C F0            [24] 3301 	mov	b,r4
      003C38 12 27 B4         [24] 3302 	lcall	_stack_pop
      003C3B AB 82            [24] 3303 	mov	r3,dpl
      003C3D AC 83            [24] 3304 	mov	r4,dph
      003C3F 15 81            [12] 3305 	dec	sp
      003C41 15 81            [12] 3306 	dec	sp
      003C43 15 81            [12] 3307 	dec	sp
      003C45 EB               [12] 3308 	mov	a,r3
      003C46 4C               [12] 3309 	orl	a,r4
      003C47 70 25            [24] 3310 	jnz	00131$
      003C49 7F 6F            [12] 3311 	mov	r7,#___str_12
      003C4B 7E 89            [12] 3312 	mov	r6,#(___str_12 >> 8)
      003C4D 7D 80            [12] 3313 	mov	r5,#0x80
                                   3314 ;	calc.c:51: return;
      003C4F                       3315 00400$:
                                   3316 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003C4F 8F 82            [24] 3317 	mov	dpl,r7
      003C51 8E 83            [24] 3318 	mov	dph,r6
      003C53 8D F0            [24] 3319 	mov	b,r5
      003C55 12 70 79         [24] 3320 	lcall	__gptrget
      003C58 FC               [12] 3321 	mov	r4,a
      003C59 70 03            [24] 3322 	jnz	01300$
      003C5B 02 56 65         [24] 3323 	ljmp	00249$
      003C5E                       3324 01300$:
      003C5E 7B 00            [12] 3325 	mov	r3,#0x00
      003C60 8C 82            [24] 3326 	mov	dpl,r4
      003C62 8B 83            [24] 3327 	mov	dph,r3
      003C64 12 2C 1F         [24] 3328 	lcall	_putchar
      003C67 0F               [12] 3329 	inc	r7
                                   3330 ;	calc.c:181: if (!stack_pop(ctx->ss, &d0)) printstr("\r\nsecondary stack underflow\r\n");
      003C68 BF 00 E4         [24] 3331 	cjne	r7,#0x00,00400$
      003C6B 0E               [12] 3332 	inc	r6
      003C6C 80 E1            [24] 3333 	sjmp	00400$
      003C6E                       3334 00131$:
                                   3335 ;	calc.c:183: if (!stack_push(ctx->ps, d0)) {
      003C6E E5 08            [12] 3336 	mov	a,_bp
      003C70 24 12            [12] 3337 	add	a,#0x12
      003C72 F8               [12] 3338 	mov	r0,a
      003C73 74 13            [12] 3339 	mov	a,#0x13
      003C75 26               [12] 3340 	add	a,@r0
      003C76 FA               [12] 3341 	mov	r2,a
      003C77 74 40            [12] 3342 	mov	a,#0x40
      003C79 08               [12] 3343 	inc	r0
      003C7A 36               [12] 3344 	addc	a,@r0
      003C7B FB               [12] 3345 	mov	r3,a
      003C7C 08               [12] 3346 	inc	r0
      003C7D 86 04            [24] 3347 	mov	ar4,@r0
      003C7F 8A 82            [24] 3348 	mov	dpl,r2
      003C81 8B 83            [24] 3349 	mov	dph,r3
      003C83 8C F0            [24] 3350 	mov	b,r4
      003C85 12 70 79         [24] 3351 	lcall	__gptrget
      003C88 FA               [12] 3352 	mov	r2,a
      003C89 A3               [24] 3353 	inc	dptr
      003C8A 12 70 79         [24] 3354 	lcall	__gptrget
      003C8D FB               [12] 3355 	mov	r3,a
      003C8E A3               [24] 3356 	inc	dptr
      003C8F 12 70 79         [24] 3357 	lcall	__gptrget
      003C92 FC               [12] 3358 	mov	r4,a
      003C93 E5 08            [12] 3359 	mov	a,_bp
      003C95 24 15            [12] 3360 	add	a,#0x15
      003C97 F8               [12] 3361 	mov	r0,a
      003C98 E6               [12] 3362 	mov	a,@r0
      003C99 C0 E0            [24] 3363 	push	acc
      003C9B 08               [12] 3364 	inc	r0
      003C9C E6               [12] 3365 	mov	a,@r0
      003C9D C0 E0            [24] 3366 	push	acc
      003C9F 08               [12] 3367 	inc	r0
      003CA0 E6               [12] 3368 	mov	a,@r0
      003CA1 C0 E0            [24] 3369 	push	acc
      003CA3 08               [12] 3370 	inc	r0
      003CA4 E6               [12] 3371 	mov	a,@r0
      003CA5 C0 E0            [24] 3372 	push	acc
      003CA7 8A 82            [24] 3373 	mov	dpl,r2
      003CA9 8B 83            [24] 3374 	mov	dph,r3
      003CAB 8C F0            [24] 3375 	mov	b,r4
      003CAD 12 26 BA         [24] 3376 	lcall	_stack_push
      003CB0 AB 82            [24] 3377 	mov	r3,dpl
      003CB2 AC 83            [24] 3378 	mov	r4,dph
      003CB4 E5 81            [12] 3379 	mov	a,sp
      003CB6 24 FC            [12] 3380 	add	a,#0xfc
      003CB8 F5 81            [12] 3381 	mov	sp,a
      003CBA EB               [12] 3382 	mov	a,r3
      003CBB 4C               [12] 3383 	orl	a,r4
      003CBC 60 03            [24] 3384 	jz	01302$
      003CBE 02 56 65         [24] 3385 	ljmp	00249$
      003CC1                       3386 01302$:
                                   3387 ;	calc.c:184: printstr("\r\nstack overflow\r\n");
      003CC1 7F 8D            [12] 3388 	mov	r7,#___str_13
      003CC3 7E 89            [12] 3389 	mov	r6,#(___str_13 >> 8)
      003CC5 7D 80            [12] 3390 	mov	r5,#0x80
                                   3391 ;	calc.c:51: return;
      003CC7                       3392 00403$:
                                   3393 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003CC7 8F 82            [24] 3394 	mov	dpl,r7
      003CC9 8E 83            [24] 3395 	mov	dph,r6
      003CCB 8D F0            [24] 3396 	mov	b,r5
      003CCD 12 70 79         [24] 3397 	lcall	__gptrget
      003CD0 FC               [12] 3398 	mov	r4,a
      003CD1 60 10            [24] 3399 	jz	00287$
      003CD3 7B 00            [12] 3400 	mov	r3,#0x00
      003CD5 8C 82            [24] 3401 	mov	dpl,r4
      003CD7 8B 83            [24] 3402 	mov	dph,r3
      003CD9 12 2C 1F         [24] 3403 	lcall	_putchar
      003CDC 0F               [12] 3404 	inc	r7
                                   3405 ;	calc.c:184: printstr("\r\nstack overflow\r\n");
      003CDD BF 00 E7         [24] 3406 	cjne	r7,#0x00,00403$
      003CE0 0E               [12] 3407 	inc	r6
      003CE1 80 E4            [24] 3408 	sjmp	00403$
      003CE3                       3409 00287$:
                                   3410 ;	calc.c:185: (void)stack_push(ctx->ss, d0);
      003CE3 E5 08            [12] 3411 	mov	a,_bp
      003CE5 24 07            [12] 3412 	add	a,#0x07
      003CE7 F8               [12] 3413 	mov	r0,a
      003CE8 86 82            [24] 3414 	mov	dpl,@r0
      003CEA 08               [12] 3415 	inc	r0
      003CEB 86 83            [24] 3416 	mov	dph,@r0
      003CED 08               [12] 3417 	inc	r0
      003CEE 86 F0            [24] 3418 	mov	b,@r0
      003CF0 12 70 79         [24] 3419 	lcall	__gptrget
      003CF3 FA               [12] 3420 	mov	r2,a
      003CF4 A3               [24] 3421 	inc	dptr
      003CF5 12 70 79         [24] 3422 	lcall	__gptrget
      003CF8 FB               [12] 3423 	mov	r3,a
      003CF9 A3               [24] 3424 	inc	dptr
      003CFA 12 70 79         [24] 3425 	lcall	__gptrget
      003CFD FC               [12] 3426 	mov	r4,a
      003CFE E5 08            [12] 3427 	mov	a,_bp
      003D00 24 15            [12] 3428 	add	a,#0x15
      003D02 F8               [12] 3429 	mov	r0,a
      003D03 E6               [12] 3430 	mov	a,@r0
      003D04 C0 E0            [24] 3431 	push	acc
      003D06 08               [12] 3432 	inc	r0
      003D07 E6               [12] 3433 	mov	a,@r0
      003D08 C0 E0            [24] 3434 	push	acc
      003D0A 08               [12] 3435 	inc	r0
      003D0B E6               [12] 3436 	mov	a,@r0
      003D0C C0 E0            [24] 3437 	push	acc
      003D0E 08               [12] 3438 	inc	r0
      003D0F E6               [12] 3439 	mov	a,@r0
      003D10 C0 E0            [24] 3440 	push	acc
      003D12 8A 82            [24] 3441 	mov	dpl,r2
      003D14 8B 83            [24] 3442 	mov	dph,r3
      003D16 8C F0            [24] 3443 	mov	b,r4
      003D18 12 26 BA         [24] 3444 	lcall	_stack_push
      003D1B E5 81            [12] 3445 	mov	a,sp
      003D1D 24 FC            [12] 3446 	add	a,#0xfc
      003D1F F5 81            [12] 3447 	mov	sp,a
                                   3448 ;	calc.c:188: break;
      003D21 02 56 65         [24] 3449 	ljmp	00249$
                                   3450 ;	calc.c:189: case 'u':
      003D24                       3451 00133$:
                                   3452 ;	calc.c:190: if (!stack_peek(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003D24 E5 08            [12] 3453 	mov	a,_bp
      003D26 24 15            [12] 3454 	add	a,#0x15
      003D28 FF               [12] 3455 	mov	r7,a
      003D29 7E 00            [12] 3456 	mov	r6,#0x00
      003D2B 7D 40            [12] 3457 	mov	r5,#0x40
      003D2D E5 08            [12] 3458 	mov	a,_bp
      003D2F 24 12            [12] 3459 	add	a,#0x12
      003D31 F8               [12] 3460 	mov	r0,a
      003D32 74 13            [12] 3461 	mov	a,#0x13
      003D34 26               [12] 3462 	add	a,@r0
      003D35 FA               [12] 3463 	mov	r2,a
      003D36 ED               [12] 3464 	mov	a,r5
      003D37 08               [12] 3465 	inc	r0
      003D38 36               [12] 3466 	addc	a,@r0
      003D39 FB               [12] 3467 	mov	r3,a
      003D3A 08               [12] 3468 	inc	r0
      003D3B 86 04            [24] 3469 	mov	ar4,@r0
      003D3D 8A 82            [24] 3470 	mov	dpl,r2
      003D3F 8B 83            [24] 3471 	mov	dph,r3
      003D41 8C F0            [24] 3472 	mov	b,r4
      003D43 12 70 79         [24] 3473 	lcall	__gptrget
      003D46 FA               [12] 3474 	mov	r2,a
      003D47 A3               [24] 3475 	inc	dptr
      003D48 12 70 79         [24] 3476 	lcall	__gptrget
      003D4B FB               [12] 3477 	mov	r3,a
      003D4C A3               [24] 3478 	inc	dptr
      003D4D 12 70 79         [24] 3479 	lcall	__gptrget
      003D50 FC               [12] 3480 	mov	r4,a
      003D51 C0 07            [24] 3481 	push	ar7
      003D53 C0 06            [24] 3482 	push	ar6
      003D55 C0 05            [24] 3483 	push	ar5
      003D57 8A 82            [24] 3484 	mov	dpl,r2
      003D59 8B 83            [24] 3485 	mov	dph,r3
      003D5B 8C F0            [24] 3486 	mov	b,r4
      003D5D 12 28 D8         [24] 3487 	lcall	_stack_peek
      003D60 AB 82            [24] 3488 	mov	r3,dpl
      003D62 AC 83            [24] 3489 	mov	r4,dph
      003D64 15 81            [12] 3490 	dec	sp
      003D66 15 81            [12] 3491 	dec	sp
      003D68 15 81            [12] 3492 	dec	sp
      003D6A EB               [12] 3493 	mov	a,r3
      003D6B 4C               [12] 3494 	orl	a,r4
      003D6C 70 25            [24] 3495 	jnz	00137$
      003D6E 7F 3E            [12] 3496 	mov	r7,#___str_10
      003D70 7E 89            [12] 3497 	mov	r6,#(___str_10 >> 8)
      003D72 7D 80            [12] 3498 	mov	r5,#0x80
                                   3499 ;	calc.c:51: return;
      003D74                       3500 00406$:
                                   3501 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003D74 8F 82            [24] 3502 	mov	dpl,r7
      003D76 8E 83            [24] 3503 	mov	dph,r6
      003D78 8D F0            [24] 3504 	mov	b,r5
      003D7A 12 70 79         [24] 3505 	lcall	__gptrget
      003D7D FC               [12] 3506 	mov	r4,a
      003D7E 70 03            [24] 3507 	jnz	01306$
      003D80 02 56 65         [24] 3508 	ljmp	00249$
      003D83                       3509 01306$:
      003D83 7B 00            [12] 3510 	mov	r3,#0x00
      003D85 8C 82            [24] 3511 	mov	dpl,r4
      003D87 8B 83            [24] 3512 	mov	dph,r3
      003D89 12 2C 1F         [24] 3513 	lcall	_putchar
      003D8C 0F               [12] 3514 	inc	r7
                                   3515 ;	calc.c:190: if (!stack_peek(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003D8D BF 00 E4         [24] 3516 	cjne	r7,#0x00,00406$
      003D90 0E               [12] 3517 	inc	r6
      003D91 80 E1            [24] 3518 	sjmp	00406$
      003D93                       3519 00137$:
                                   3520 ;	calc.c:191: else if (!stack_push(ctx->ss, d0)) printstr("\r\nsecondary stack overflow\r\n");
      003D93 E5 08            [12] 3521 	mov	a,_bp
      003D95 24 12            [12] 3522 	add	a,#0x12
      003D97 F8               [12] 3523 	mov	r0,a
      003D98 74 16            [12] 3524 	mov	a,#0x16
      003D9A 26               [12] 3525 	add	a,@r0
      003D9B FA               [12] 3526 	mov	r2,a
      003D9C 74 40            [12] 3527 	mov	a,#0x40
      003D9E 08               [12] 3528 	inc	r0
      003D9F 36               [12] 3529 	addc	a,@r0
      003DA0 FB               [12] 3530 	mov	r3,a
      003DA1 08               [12] 3531 	inc	r0
      003DA2 86 04            [24] 3532 	mov	ar4,@r0
      003DA4 8A 82            [24] 3533 	mov	dpl,r2
      003DA6 8B 83            [24] 3534 	mov	dph,r3
      003DA8 8C F0            [24] 3535 	mov	b,r4
      003DAA 12 70 79         [24] 3536 	lcall	__gptrget
      003DAD FA               [12] 3537 	mov	r2,a
      003DAE A3               [24] 3538 	inc	dptr
      003DAF 12 70 79         [24] 3539 	lcall	__gptrget
      003DB2 FB               [12] 3540 	mov	r3,a
      003DB3 A3               [24] 3541 	inc	dptr
      003DB4 12 70 79         [24] 3542 	lcall	__gptrget
      003DB7 FC               [12] 3543 	mov	r4,a
      003DB8 E5 08            [12] 3544 	mov	a,_bp
      003DBA 24 15            [12] 3545 	add	a,#0x15
      003DBC F8               [12] 3546 	mov	r0,a
      003DBD E6               [12] 3547 	mov	a,@r0
      003DBE C0 E0            [24] 3548 	push	acc
      003DC0 08               [12] 3549 	inc	r0
      003DC1 E6               [12] 3550 	mov	a,@r0
      003DC2 C0 E0            [24] 3551 	push	acc
      003DC4 08               [12] 3552 	inc	r0
      003DC5 E6               [12] 3553 	mov	a,@r0
      003DC6 C0 E0            [24] 3554 	push	acc
      003DC8 08               [12] 3555 	inc	r0
      003DC9 E6               [12] 3556 	mov	a,@r0
      003DCA C0 E0            [24] 3557 	push	acc
      003DCC 8A 82            [24] 3558 	mov	dpl,r2
      003DCE 8B 83            [24] 3559 	mov	dph,r3
      003DD0 8C F0            [24] 3560 	mov	b,r4
      003DD2 12 26 BA         [24] 3561 	lcall	_stack_push
      003DD5 AB 82            [24] 3562 	mov	r3,dpl
      003DD7 AC 83            [24] 3563 	mov	r4,dph
      003DD9 E5 81            [12] 3564 	mov	a,sp
      003DDB 24 FC            [12] 3565 	add	a,#0xfc
      003DDD F5 81            [12] 3566 	mov	sp,a
      003DDF EB               [12] 3567 	mov	a,r3
      003DE0 4C               [12] 3568 	orl	a,r4
      003DE1 60 03            [24] 3569 	jz	01308$
      003DE3 02 56 65         [24] 3570 	ljmp	00249$
      003DE6                       3571 01308$:
      003DE6 7F 52            [12] 3572 	mov	r7,#___str_11
      003DE8 7E 89            [12] 3573 	mov	r6,#(___str_11 >> 8)
      003DEA 7D 80            [12] 3574 	mov	r5,#0x80
                                   3575 ;	calc.c:51: return;
      003DEC                       3576 00409$:
                                   3577 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003DEC 8F 82            [24] 3578 	mov	dpl,r7
      003DEE 8E 83            [24] 3579 	mov	dph,r6
      003DF0 8D F0            [24] 3580 	mov	b,r5
      003DF2 12 70 79         [24] 3581 	lcall	__gptrget
      003DF5 FC               [12] 3582 	mov	r4,a
      003DF6 70 03            [24] 3583 	jnz	01309$
      003DF8 02 56 65         [24] 3584 	ljmp	00249$
      003DFB                       3585 01309$:
      003DFB 7B 00            [12] 3586 	mov	r3,#0x00
      003DFD 8C 82            [24] 3587 	mov	dpl,r4
      003DFF 8B 83            [24] 3588 	mov	dph,r3
      003E01 12 2C 1F         [24] 3589 	lcall	_putchar
      003E04 0F               [12] 3590 	inc	r7
                                   3591 ;	calc.c:193: case 'U':
      003E05 BF 00 E4         [24] 3592 	cjne	r7,#0x00,00409$
      003E08 0E               [12] 3593 	inc	r6
      003E09 80 E1            [24] 3594 	sjmp	00409$
      003E0B                       3595 00139$:
                                   3596 ;	calc.c:194: if (!stack_peek(ctx->ss, &d0)) printstr("\r\nsecondary stack underflow\r\n");
      003E0B E5 08            [12] 3597 	mov	a,_bp
      003E0D 24 15            [12] 3598 	add	a,#0x15
      003E0F FF               [12] 3599 	mov	r7,a
      003E10 7E 00            [12] 3600 	mov	r6,#0x00
      003E12 7D 40            [12] 3601 	mov	r5,#0x40
      003E14 E5 08            [12] 3602 	mov	a,_bp
      003E16 24 12            [12] 3603 	add	a,#0x12
      003E18 F8               [12] 3604 	mov	r0,a
      003E19 74 16            [12] 3605 	mov	a,#0x16
      003E1B 26               [12] 3606 	add	a,@r0
      003E1C FA               [12] 3607 	mov	r2,a
      003E1D ED               [12] 3608 	mov	a,r5
      003E1E 08               [12] 3609 	inc	r0
      003E1F 36               [12] 3610 	addc	a,@r0
      003E20 FB               [12] 3611 	mov	r3,a
      003E21 08               [12] 3612 	inc	r0
      003E22 86 04            [24] 3613 	mov	ar4,@r0
      003E24 8A 82            [24] 3614 	mov	dpl,r2
      003E26 8B 83            [24] 3615 	mov	dph,r3
      003E28 8C F0            [24] 3616 	mov	b,r4
      003E2A 12 70 79         [24] 3617 	lcall	__gptrget
      003E2D FA               [12] 3618 	mov	r2,a
      003E2E A3               [24] 3619 	inc	dptr
      003E2F 12 70 79         [24] 3620 	lcall	__gptrget
      003E32 FB               [12] 3621 	mov	r3,a
      003E33 A3               [24] 3622 	inc	dptr
      003E34 12 70 79         [24] 3623 	lcall	__gptrget
      003E37 FC               [12] 3624 	mov	r4,a
      003E38 C0 07            [24] 3625 	push	ar7
      003E3A C0 06            [24] 3626 	push	ar6
      003E3C C0 05            [24] 3627 	push	ar5
      003E3E 8A 82            [24] 3628 	mov	dpl,r2
      003E40 8B 83            [24] 3629 	mov	dph,r3
      003E42 8C F0            [24] 3630 	mov	b,r4
      003E44 12 28 D8         [24] 3631 	lcall	_stack_peek
      003E47 AB 82            [24] 3632 	mov	r3,dpl
      003E49 AC 83            [24] 3633 	mov	r4,dph
      003E4B 15 81            [12] 3634 	dec	sp
      003E4D 15 81            [12] 3635 	dec	sp
      003E4F 15 81            [12] 3636 	dec	sp
      003E51 EB               [12] 3637 	mov	a,r3
      003E52 4C               [12] 3638 	orl	a,r4
      003E53 70 25            [24] 3639 	jnz	00143$
      003E55 7F 6F            [12] 3640 	mov	r7,#___str_12
      003E57 7E 89            [12] 3641 	mov	r6,#(___str_12 >> 8)
      003E59 7D 80            [12] 3642 	mov	r5,#0x80
                                   3643 ;	calc.c:51: return;
      003E5B                       3644 00412$:
                                   3645 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003E5B 8F 82            [24] 3646 	mov	dpl,r7
      003E5D 8E 83            [24] 3647 	mov	dph,r6
      003E5F 8D F0            [24] 3648 	mov	b,r5
      003E61 12 70 79         [24] 3649 	lcall	__gptrget
      003E64 FC               [12] 3650 	mov	r4,a
      003E65 70 03            [24] 3651 	jnz	01312$
      003E67 02 56 65         [24] 3652 	ljmp	00249$
      003E6A                       3653 01312$:
      003E6A 7B 00            [12] 3654 	mov	r3,#0x00
      003E6C 8C 82            [24] 3655 	mov	dpl,r4
      003E6E 8B 83            [24] 3656 	mov	dph,r3
      003E70 12 2C 1F         [24] 3657 	lcall	_putchar
      003E73 0F               [12] 3658 	inc	r7
                                   3659 ;	calc.c:194: if (!stack_peek(ctx->ss, &d0)) printstr("\r\nsecondary stack underflow\r\n");
      003E74 BF 00 E4         [24] 3660 	cjne	r7,#0x00,00412$
      003E77 0E               [12] 3661 	inc	r6
      003E78 80 E1            [24] 3662 	sjmp	00412$
      003E7A                       3663 00143$:
                                   3664 ;	calc.c:195: else if (!stack_push(ctx->ps, d0)) printstr("\r\nstack overflow\r\n");
      003E7A E5 08            [12] 3665 	mov	a,_bp
      003E7C 24 12            [12] 3666 	add	a,#0x12
      003E7E F8               [12] 3667 	mov	r0,a
      003E7F 74 13            [12] 3668 	mov	a,#0x13
      003E81 26               [12] 3669 	add	a,@r0
      003E82 FA               [12] 3670 	mov	r2,a
      003E83 74 40            [12] 3671 	mov	a,#0x40
      003E85 08               [12] 3672 	inc	r0
      003E86 36               [12] 3673 	addc	a,@r0
      003E87 FB               [12] 3674 	mov	r3,a
      003E88 08               [12] 3675 	inc	r0
      003E89 86 04            [24] 3676 	mov	ar4,@r0
      003E8B 8A 82            [24] 3677 	mov	dpl,r2
      003E8D 8B 83            [24] 3678 	mov	dph,r3
      003E8F 8C F0            [24] 3679 	mov	b,r4
      003E91 12 70 79         [24] 3680 	lcall	__gptrget
      003E94 FA               [12] 3681 	mov	r2,a
      003E95 A3               [24] 3682 	inc	dptr
      003E96 12 70 79         [24] 3683 	lcall	__gptrget
      003E99 FB               [12] 3684 	mov	r3,a
      003E9A A3               [24] 3685 	inc	dptr
      003E9B 12 70 79         [24] 3686 	lcall	__gptrget
      003E9E FC               [12] 3687 	mov	r4,a
      003E9F E5 08            [12] 3688 	mov	a,_bp
      003EA1 24 15            [12] 3689 	add	a,#0x15
      003EA3 F8               [12] 3690 	mov	r0,a
      003EA4 E6               [12] 3691 	mov	a,@r0
      003EA5 C0 E0            [24] 3692 	push	acc
      003EA7 08               [12] 3693 	inc	r0
      003EA8 E6               [12] 3694 	mov	a,@r0
      003EA9 C0 E0            [24] 3695 	push	acc
      003EAB 08               [12] 3696 	inc	r0
      003EAC E6               [12] 3697 	mov	a,@r0
      003EAD C0 E0            [24] 3698 	push	acc
      003EAF 08               [12] 3699 	inc	r0
      003EB0 E6               [12] 3700 	mov	a,@r0
      003EB1 C0 E0            [24] 3701 	push	acc
      003EB3 8A 82            [24] 3702 	mov	dpl,r2
      003EB5 8B 83            [24] 3703 	mov	dph,r3
      003EB7 8C F0            [24] 3704 	mov	b,r4
      003EB9 12 26 BA         [24] 3705 	lcall	_stack_push
      003EBC AB 82            [24] 3706 	mov	r3,dpl
      003EBE AC 83            [24] 3707 	mov	r4,dph
      003EC0 E5 81            [12] 3708 	mov	a,sp
      003EC2 24 FC            [12] 3709 	add	a,#0xfc
      003EC4 F5 81            [12] 3710 	mov	sp,a
      003EC6 EB               [12] 3711 	mov	a,r3
      003EC7 4C               [12] 3712 	orl	a,r4
      003EC8 60 03            [24] 3713 	jz	01314$
      003ECA 02 56 65         [24] 3714 	ljmp	00249$
      003ECD                       3715 01314$:
      003ECD 7F 8D            [12] 3716 	mov	r7,#___str_13
      003ECF 7E 89            [12] 3717 	mov	r6,#(___str_13 >> 8)
      003ED1 7D 80            [12] 3718 	mov	r5,#0x80
                                   3719 ;	calc.c:51: return;
      003ED3                       3720 00415$:
                                   3721 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003ED3 8F 82            [24] 3722 	mov	dpl,r7
      003ED5 8E 83            [24] 3723 	mov	dph,r6
      003ED7 8D F0            [24] 3724 	mov	b,r5
      003ED9 12 70 79         [24] 3725 	lcall	__gptrget
      003EDC FC               [12] 3726 	mov	r4,a
      003EDD 70 03            [24] 3727 	jnz	01315$
      003EDF 02 56 65         [24] 3728 	ljmp	00249$
      003EE2                       3729 01315$:
      003EE2 7B 00            [12] 3730 	mov	r3,#0x00
      003EE4 8C 82            [24] 3731 	mov	dpl,r4
      003EE6 8B 83            [24] 3732 	mov	dph,r3
      003EE8 12 2C 1F         [24] 3733 	lcall	_putchar
      003EEB 0F               [12] 3734 	inc	r7
                                   3735 ;	calc.c:197: case 'T':
      003EEC BF 00 E4         [24] 3736 	cjne	r7,#0x00,00415$
      003EEF 0E               [12] 3737 	inc	r6
      003EF0 80 E1            [24] 3738 	sjmp	00415$
      003EF2                       3739 00145$:
                                   3740 ;	calc.c:198: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003EF2 E5 08            [12] 3741 	mov	a,_bp
      003EF4 24 15            [12] 3742 	add	a,#0x15
      003EF6 FF               [12] 3743 	mov	r7,a
      003EF7 7E 00            [12] 3744 	mov	r6,#0x00
      003EF9 7D 40            [12] 3745 	mov	r5,#0x40
      003EFB E5 08            [12] 3746 	mov	a,_bp
      003EFD 24 12            [12] 3747 	add	a,#0x12
      003EFF F8               [12] 3748 	mov	r0,a
      003F00 E5 08            [12] 3749 	mov	a,_bp
      003F02 24 07            [12] 3750 	add	a,#0x07
      003F04 F9               [12] 3751 	mov	r1,a
      003F05 74 13            [12] 3752 	mov	a,#0x13
      003F07 26               [12] 3753 	add	a,@r0
      003F08 F7               [12] 3754 	mov	@r1,a
      003F09 74 40            [12] 3755 	mov	a,#0x40
      003F0B 08               [12] 3756 	inc	r0
      003F0C 36               [12] 3757 	addc	a,@r0
      003F0D 09               [12] 3758 	inc	r1
      003F0E F7               [12] 3759 	mov	@r1,a
      003F0F 08               [12] 3760 	inc	r0
      003F10 09               [12] 3761 	inc	r1
      003F11 E6               [12] 3762 	mov	a,@r0
      003F12 F7               [12] 3763 	mov	@r1,a
      003F13 E5 08            [12] 3764 	mov	a,_bp
      003F15 24 07            [12] 3765 	add	a,#0x07
      003F17 F8               [12] 3766 	mov	r0,a
      003F18 86 82            [24] 3767 	mov	dpl,@r0
      003F1A 08               [12] 3768 	inc	r0
      003F1B 86 83            [24] 3769 	mov	dph,@r0
      003F1D 08               [12] 3770 	inc	r0
      003F1E 86 F0            [24] 3771 	mov	b,@r0
      003F20 12 70 79         [24] 3772 	lcall	__gptrget
      003F23 FA               [12] 3773 	mov	r2,a
      003F24 A3               [24] 3774 	inc	dptr
      003F25 12 70 79         [24] 3775 	lcall	__gptrget
      003F28 FB               [12] 3776 	mov	r3,a
      003F29 A3               [24] 3777 	inc	dptr
      003F2A 12 70 79         [24] 3778 	lcall	__gptrget
      003F2D FC               [12] 3779 	mov	r4,a
      003F2E C0 07            [24] 3780 	push	ar7
      003F30 C0 06            [24] 3781 	push	ar6
      003F32 C0 05            [24] 3782 	push	ar5
      003F34 8A 82            [24] 3783 	mov	dpl,r2
      003F36 8B 83            [24] 3784 	mov	dph,r3
      003F38 8C F0            [24] 3785 	mov	b,r4
      003F3A 12 27 B4         [24] 3786 	lcall	_stack_pop
      003F3D AB 82            [24] 3787 	mov	r3,dpl
      003F3F AC 83            [24] 3788 	mov	r4,dph
      003F41 15 81            [12] 3789 	dec	sp
      003F43 15 81            [12] 3790 	dec	sp
      003F45 15 81            [12] 3791 	dec	sp
      003F47 EB               [12] 3792 	mov	a,r3
      003F48 4C               [12] 3793 	orl	a,r4
      003F49 70 25            [24] 3794 	jnz	00150$
      003F4B 7F 3E            [12] 3795 	mov	r7,#___str_10
      003F4D 7E 89            [12] 3796 	mov	r6,#(___str_10 >> 8)
      003F4F 7D 80            [12] 3797 	mov	r5,#0x80
                                   3798 ;	calc.c:51: return;
      003F51                       3799 00418$:
                                   3800 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003F51 8F 82            [24] 3801 	mov	dpl,r7
      003F53 8E 83            [24] 3802 	mov	dph,r6
      003F55 8D F0            [24] 3803 	mov	b,r5
      003F57 12 70 79         [24] 3804 	lcall	__gptrget
      003F5A FC               [12] 3805 	mov	r4,a
      003F5B 70 03            [24] 3806 	jnz	01318$
      003F5D 02 56 65         [24] 3807 	ljmp	00249$
      003F60                       3808 01318$:
      003F60 7B 00            [12] 3809 	mov	r3,#0x00
      003F62 8C 82            [24] 3810 	mov	dpl,r4
      003F64 8B 83            [24] 3811 	mov	dph,r3
      003F66 12 2C 1F         [24] 3812 	lcall	_putchar
      003F69 0F               [12] 3813 	inc	r7
                                   3814 ;	calc.c:198: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003F6A BF 00 E4         [24] 3815 	cjne	r7,#0x00,00418$
      003F6D 0E               [12] 3816 	inc	r6
      003F6E 80 E1            [24] 3817 	sjmp	00418$
      003F70                       3818 00150$:
                                   3819 ;	calc.c:200: if (!stack_pop(ctx->ss, &d1)) {
      003F70 E5 08            [12] 3820 	mov	a,_bp
      003F72 24 19            [12] 3821 	add	a,#0x19
      003F74 FF               [12] 3822 	mov	r7,a
      003F75 7E 00            [12] 3823 	mov	r6,#0x00
      003F77 7D 40            [12] 3824 	mov	r5,#0x40
      003F79 E5 08            [12] 3825 	mov	a,_bp
      003F7B 24 12            [12] 3826 	add	a,#0x12
      003F7D F8               [12] 3827 	mov	r0,a
      003F7E E5 08            [12] 3828 	mov	a,_bp
      003F80 24 04            [12] 3829 	add	a,#0x04
      003F82 F9               [12] 3830 	mov	r1,a
      003F83 74 16            [12] 3831 	mov	a,#0x16
      003F85 26               [12] 3832 	add	a,@r0
      003F86 F7               [12] 3833 	mov	@r1,a
      003F87 74 40            [12] 3834 	mov	a,#0x40
      003F89 08               [12] 3835 	inc	r0
      003F8A 36               [12] 3836 	addc	a,@r0
      003F8B 09               [12] 3837 	inc	r1
      003F8C F7               [12] 3838 	mov	@r1,a
      003F8D 08               [12] 3839 	inc	r0
      003F8E 09               [12] 3840 	inc	r1
      003F8F E6               [12] 3841 	mov	a,@r0
      003F90 F7               [12] 3842 	mov	@r1,a
      003F91 E5 08            [12] 3843 	mov	a,_bp
      003F93 24 04            [12] 3844 	add	a,#0x04
      003F95 F8               [12] 3845 	mov	r0,a
      003F96 86 82            [24] 3846 	mov	dpl,@r0
      003F98 08               [12] 3847 	inc	r0
      003F99 86 83            [24] 3848 	mov	dph,@r0
      003F9B 08               [12] 3849 	inc	r0
      003F9C 86 F0            [24] 3850 	mov	b,@r0
      003F9E 12 70 79         [24] 3851 	lcall	__gptrget
      003FA1 FA               [12] 3852 	mov	r2,a
      003FA2 A3               [24] 3853 	inc	dptr
      003FA3 12 70 79         [24] 3854 	lcall	__gptrget
      003FA6 FB               [12] 3855 	mov	r3,a
      003FA7 A3               [24] 3856 	inc	dptr
      003FA8 12 70 79         [24] 3857 	lcall	__gptrget
      003FAB FC               [12] 3858 	mov	r4,a
      003FAC C0 07            [24] 3859 	push	ar7
      003FAE C0 06            [24] 3860 	push	ar6
      003FB0 C0 05            [24] 3861 	push	ar5
      003FB2 8A 82            [24] 3862 	mov	dpl,r2
      003FB4 8B 83            [24] 3863 	mov	dph,r3
      003FB6 8C F0            [24] 3864 	mov	b,r4
      003FB8 12 27 B4         [24] 3865 	lcall	_stack_pop
      003FBB AB 82            [24] 3866 	mov	r3,dpl
      003FBD AC 83            [24] 3867 	mov	r4,dph
      003FBF 15 81            [12] 3868 	dec	sp
      003FC1 15 81            [12] 3869 	dec	sp
      003FC3 15 81            [12] 3870 	dec	sp
      003FC5 EB               [12] 3871 	mov	a,r3
      003FC6 4C               [12] 3872 	orl	a,r4
      003FC7 70 63            [24] 3873 	jnz	00147$
                                   3874 ;	calc.c:201: printstr("\r\nsecondary stack underflow\r\n");
      003FC9 7F 6F            [12] 3875 	mov	r7,#___str_12
      003FCB 7E 89            [12] 3876 	mov	r6,#(___str_12 >> 8)
      003FCD 7D 80            [12] 3877 	mov	r5,#0x80
                                   3878 ;	calc.c:51: return;
      003FCF                       3879 00421$:
                                   3880 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003FCF 8F 82            [24] 3881 	mov	dpl,r7
      003FD1 8E 83            [24] 3882 	mov	dph,r6
      003FD3 8D F0            [24] 3883 	mov	b,r5
      003FD5 12 70 79         [24] 3884 	lcall	__gptrget
      003FD8 FC               [12] 3885 	mov	r4,a
      003FD9 60 10            [24] 3886 	jz	00299$
      003FDB 7B 00            [12] 3887 	mov	r3,#0x00
      003FDD 8C 82            [24] 3888 	mov	dpl,r4
      003FDF 8B 83            [24] 3889 	mov	dph,r3
      003FE1 12 2C 1F         [24] 3890 	lcall	_putchar
      003FE4 0F               [12] 3891 	inc	r7
                                   3892 ;	calc.c:201: printstr("\r\nsecondary stack underflow\r\n");
      003FE5 BF 00 E7         [24] 3893 	cjne	r7,#0x00,00421$
      003FE8 0E               [12] 3894 	inc	r6
      003FE9 80 E4            [24] 3895 	sjmp	00421$
      003FEB                       3896 00299$:
                                   3897 ;	calc.c:202: (void)stack_push(ctx->ps, d0);
      003FEB E5 08            [12] 3898 	mov	a,_bp
      003FED 24 07            [12] 3899 	add	a,#0x07
      003FEF F8               [12] 3900 	mov	r0,a
      003FF0 86 82            [24] 3901 	mov	dpl,@r0
      003FF2 08               [12] 3902 	inc	r0
      003FF3 86 83            [24] 3903 	mov	dph,@r0
      003FF5 08               [12] 3904 	inc	r0
      003FF6 86 F0            [24] 3905 	mov	b,@r0
      003FF8 12 70 79         [24] 3906 	lcall	__gptrget
      003FFB FA               [12] 3907 	mov	r2,a
      003FFC A3               [24] 3908 	inc	dptr
      003FFD 12 70 79         [24] 3909 	lcall	__gptrget
      004000 FB               [12] 3910 	mov	r3,a
      004001 A3               [24] 3911 	inc	dptr
      004002 12 70 79         [24] 3912 	lcall	__gptrget
      004005 FC               [12] 3913 	mov	r4,a
      004006 E5 08            [12] 3914 	mov	a,_bp
      004008 24 15            [12] 3915 	add	a,#0x15
      00400A F8               [12] 3916 	mov	r0,a
      00400B E6               [12] 3917 	mov	a,@r0
      00400C C0 E0            [24] 3918 	push	acc
      00400E 08               [12] 3919 	inc	r0
      00400F E6               [12] 3920 	mov	a,@r0
      004010 C0 E0            [24] 3921 	push	acc
      004012 08               [12] 3922 	inc	r0
      004013 E6               [12] 3923 	mov	a,@r0
      004014 C0 E0            [24] 3924 	push	acc
      004016 08               [12] 3925 	inc	r0
      004017 E6               [12] 3926 	mov	a,@r0
      004018 C0 E0            [24] 3927 	push	acc
      00401A 8A 82            [24] 3928 	mov	dpl,r2
      00401C 8B 83            [24] 3929 	mov	dph,r3
      00401E 8C F0            [24] 3930 	mov	b,r4
      004020 12 26 BA         [24] 3931 	lcall	_stack_push
      004023 E5 81            [12] 3932 	mov	a,sp
      004025 24 FC            [12] 3933 	add	a,#0xfc
      004027 F5 81            [12] 3934 	mov	sp,a
      004029 02 56 65         [24] 3935 	ljmp	00249$
      00402C                       3936 00147$:
                                   3937 ;	calc.c:204: (void)stack_push(ctx->ps, d1);
      00402C E5 08            [12] 3938 	mov	a,_bp
      00402E 24 07            [12] 3939 	add	a,#0x07
      004030 F8               [12] 3940 	mov	r0,a
      004031 86 82            [24] 3941 	mov	dpl,@r0
      004033 08               [12] 3942 	inc	r0
      004034 86 83            [24] 3943 	mov	dph,@r0
      004036 08               [12] 3944 	inc	r0
      004037 86 F0            [24] 3945 	mov	b,@r0
      004039 12 70 79         [24] 3946 	lcall	__gptrget
      00403C FA               [12] 3947 	mov	r2,a
      00403D A3               [24] 3948 	inc	dptr
      00403E 12 70 79         [24] 3949 	lcall	__gptrget
      004041 FB               [12] 3950 	mov	r3,a
      004042 A3               [24] 3951 	inc	dptr
      004043 12 70 79         [24] 3952 	lcall	__gptrget
      004046 FC               [12] 3953 	mov	r4,a
      004047 E5 08            [12] 3954 	mov	a,_bp
      004049 24 19            [12] 3955 	add	a,#0x19
      00404B F8               [12] 3956 	mov	r0,a
      00404C E6               [12] 3957 	mov	a,@r0
      00404D C0 E0            [24] 3958 	push	acc
      00404F 08               [12] 3959 	inc	r0
      004050 E6               [12] 3960 	mov	a,@r0
      004051 C0 E0            [24] 3961 	push	acc
      004053 08               [12] 3962 	inc	r0
      004054 E6               [12] 3963 	mov	a,@r0
      004055 C0 E0            [24] 3964 	push	acc
      004057 08               [12] 3965 	inc	r0
      004058 E6               [12] 3966 	mov	a,@r0
      004059 C0 E0            [24] 3967 	push	acc
      00405B 8A 82            [24] 3968 	mov	dpl,r2
      00405D 8B 83            [24] 3969 	mov	dph,r3
      00405F 8C F0            [24] 3970 	mov	b,r4
      004061 12 26 BA         [24] 3971 	lcall	_stack_push
      004064 E5 81            [12] 3972 	mov	a,sp
      004066 24 FC            [12] 3973 	add	a,#0xfc
      004068 F5 81            [12] 3974 	mov	sp,a
                                   3975 ;	calc.c:205: (void)stack_push(ctx->ss, d0);
      00406A E5 08            [12] 3976 	mov	a,_bp
      00406C 24 04            [12] 3977 	add	a,#0x04
      00406E F8               [12] 3978 	mov	r0,a
      00406F 86 82            [24] 3979 	mov	dpl,@r0
      004071 08               [12] 3980 	inc	r0
      004072 86 83            [24] 3981 	mov	dph,@r0
      004074 08               [12] 3982 	inc	r0
      004075 86 F0            [24] 3983 	mov	b,@r0
      004077 12 70 79         [24] 3984 	lcall	__gptrget
      00407A FA               [12] 3985 	mov	r2,a
      00407B A3               [24] 3986 	inc	dptr
      00407C 12 70 79         [24] 3987 	lcall	__gptrget
      00407F FB               [12] 3988 	mov	r3,a
      004080 A3               [24] 3989 	inc	dptr
      004081 12 70 79         [24] 3990 	lcall	__gptrget
      004084 FC               [12] 3991 	mov	r4,a
      004085 E5 08            [12] 3992 	mov	a,_bp
      004087 24 15            [12] 3993 	add	a,#0x15
      004089 F8               [12] 3994 	mov	r0,a
      00408A E6               [12] 3995 	mov	a,@r0
      00408B C0 E0            [24] 3996 	push	acc
      00408D 08               [12] 3997 	inc	r0
      00408E E6               [12] 3998 	mov	a,@r0
      00408F C0 E0            [24] 3999 	push	acc
      004091 08               [12] 4000 	inc	r0
      004092 E6               [12] 4001 	mov	a,@r0
      004093 C0 E0            [24] 4002 	push	acc
      004095 08               [12] 4003 	inc	r0
      004096 E6               [12] 4004 	mov	a,@r0
      004097 C0 E0            [24] 4005 	push	acc
      004099 8A 82            [24] 4006 	mov	dpl,r2
      00409B 8B 83            [24] 4007 	mov	dph,r3
      00409D 8C F0            [24] 4008 	mov	b,r4
      00409F 12 26 BA         [24] 4009 	lcall	_stack_push
      0040A2 E5 81            [12] 4010 	mov	a,sp
      0040A4 24 FC            [12] 4011 	add	a,#0xfc
      0040A6 F5 81            [12] 4012 	mov	sp,a
                                   4013 ;	calc.c:208: break;
      0040A8 02 56 65         [24] 4014 	ljmp	00249$
                                   4015 ;	calc.c:209: case 'X':
      0040AB                       4016 00152$:
                                   4017 ;	calc.c:210: t0 = ctx->ps;
      0040AB E5 08            [12] 4018 	mov	a,_bp
      0040AD 24 12            [12] 4019 	add	a,#0x12
      0040AF F8               [12] 4020 	mov	r0,a
      0040B0 E5 08            [12] 4021 	mov	a,_bp
      0040B2 24 0B            [12] 4022 	add	a,#0x0b
      0040B4 F9               [12] 4023 	mov	r1,a
      0040B5 74 13            [12] 4024 	mov	a,#0x13
      0040B7 26               [12] 4025 	add	a,@r0
      0040B8 F7               [12] 4026 	mov	@r1,a
      0040B9 74 40            [12] 4027 	mov	a,#0x40
      0040BB 08               [12] 4028 	inc	r0
      0040BC 36               [12] 4029 	addc	a,@r0
      0040BD 09               [12] 4030 	inc	r1
      0040BE F7               [12] 4031 	mov	@r1,a
      0040BF 08               [12] 4032 	inc	r0
      0040C0 09               [12] 4033 	inc	r1
      0040C1 E6               [12] 4034 	mov	a,@r0
      0040C2 F7               [12] 4035 	mov	@r1,a
      0040C3 E5 08            [12] 4036 	mov	a,_bp
      0040C5 24 0B            [12] 4037 	add	a,#0x0b
      0040C7 F8               [12] 4038 	mov	r0,a
      0040C8 86 82            [24] 4039 	mov	dpl,@r0
      0040CA 08               [12] 4040 	inc	r0
      0040CB 86 83            [24] 4041 	mov	dph,@r0
      0040CD 08               [12] 4042 	inc	r0
      0040CE 86 F0            [24] 4043 	mov	b,@r0
      0040D0 12 70 79         [24] 4044 	lcall	__gptrget
      0040D3 FF               [12] 4045 	mov	r7,a
      0040D4 A3               [24] 4046 	inc	dptr
      0040D5 12 70 79         [24] 4047 	lcall	__gptrget
      0040D8 FE               [12] 4048 	mov	r6,a
      0040D9 A3               [24] 4049 	inc	dptr
      0040DA 12 70 79         [24] 4050 	lcall	__gptrget
      0040DD FD               [12] 4051 	mov	r5,a
                                   4052 ;	calc.c:211: ctx->ps = ctx->ss;
      0040DE E5 08            [12] 4053 	mov	a,_bp
      0040E0 24 12            [12] 4054 	add	a,#0x12
      0040E2 F8               [12] 4055 	mov	r0,a
      0040E3 E5 08            [12] 4056 	mov	a,_bp
      0040E5 24 07            [12] 4057 	add	a,#0x07
      0040E7 F9               [12] 4058 	mov	r1,a
      0040E8 74 16            [12] 4059 	mov	a,#0x16
      0040EA 26               [12] 4060 	add	a,@r0
      0040EB F7               [12] 4061 	mov	@r1,a
      0040EC 74 40            [12] 4062 	mov	a,#0x40
      0040EE 08               [12] 4063 	inc	r0
      0040EF 36               [12] 4064 	addc	a,@r0
      0040F0 09               [12] 4065 	inc	r1
      0040F1 F7               [12] 4066 	mov	@r1,a
      0040F2 08               [12] 4067 	inc	r0
      0040F3 09               [12] 4068 	inc	r1
      0040F4 E6               [12] 4069 	mov	a,@r0
      0040F5 F7               [12] 4070 	mov	@r1,a
      0040F6 E5 08            [12] 4071 	mov	a,_bp
      0040F8 24 07            [12] 4072 	add	a,#0x07
      0040FA F8               [12] 4073 	mov	r0,a
      0040FB 86 82            [24] 4074 	mov	dpl,@r0
      0040FD 08               [12] 4075 	inc	r0
      0040FE 86 83            [24] 4076 	mov	dph,@r0
      004100 08               [12] 4077 	inc	r0
      004101 86 F0            [24] 4078 	mov	b,@r0
      004103 12 70 79         [24] 4079 	lcall	__gptrget
      004106 FA               [12] 4080 	mov	r2,a
      004107 A3               [24] 4081 	inc	dptr
      004108 12 70 79         [24] 4082 	lcall	__gptrget
      00410B FB               [12] 4083 	mov	r3,a
      00410C A3               [24] 4084 	inc	dptr
      00410D 12 70 79         [24] 4085 	lcall	__gptrget
      004110 FC               [12] 4086 	mov	r4,a
      004111 E5 08            [12] 4087 	mov	a,_bp
      004113 24 0B            [12] 4088 	add	a,#0x0b
      004115 F8               [12] 4089 	mov	r0,a
      004116 86 82            [24] 4090 	mov	dpl,@r0
      004118 08               [12] 4091 	inc	r0
      004119 86 83            [24] 4092 	mov	dph,@r0
      00411B 08               [12] 4093 	inc	r0
      00411C 86 F0            [24] 4094 	mov	b,@r0
      00411E EA               [12] 4095 	mov	a,r2
      00411F 12 6B FE         [24] 4096 	lcall	__gptrput
      004122 A3               [24] 4097 	inc	dptr
      004123 EB               [12] 4098 	mov	a,r3
      004124 12 6B FE         [24] 4099 	lcall	__gptrput
      004127 A3               [24] 4100 	inc	dptr
      004128 EC               [12] 4101 	mov	a,r4
      004129 12 6B FE         [24] 4102 	lcall	__gptrput
                                   4103 ;	calc.c:212: ctx->ss = t0;
      00412C E5 08            [12] 4104 	mov	a,_bp
      00412E 24 07            [12] 4105 	add	a,#0x07
      004130 F8               [12] 4106 	mov	r0,a
      004131 86 82            [24] 4107 	mov	dpl,@r0
      004133 08               [12] 4108 	inc	r0
      004134 86 83            [24] 4109 	mov	dph,@r0
      004136 08               [12] 4110 	inc	r0
      004137 86 F0            [24] 4111 	mov	b,@r0
      004139 EF               [12] 4112 	mov	a,r7
      00413A 12 6B FE         [24] 4113 	lcall	__gptrput
      00413D A3               [24] 4114 	inc	dptr
      00413E EE               [12] 4115 	mov	a,r6
      00413F 12 6B FE         [24] 4116 	lcall	__gptrput
      004142 A3               [24] 4117 	inc	dptr
      004143 ED               [12] 4118 	mov	a,r5
      004144 12 6B FE         [24] 4119 	lcall	__gptrput
                                   4120 ;	calc.c:213: break;
      004147 02 56 65         [24] 4121 	ljmp	00249$
                                   4122 ;	calc.c:214: case '+':
      00414A                       4123 00153$:
                                   4124 ;	calc.c:215: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      00414A E5 08            [12] 4125 	mov	a,_bp
      00414C 24 15            [12] 4126 	add	a,#0x15
      00414E FF               [12] 4127 	mov	r7,a
      00414F 7E 00            [12] 4128 	mov	r6,#0x00
      004151 7D 40            [12] 4129 	mov	r5,#0x40
      004153 E5 08            [12] 4130 	mov	a,_bp
      004155 24 12            [12] 4131 	add	a,#0x12
      004157 F8               [12] 4132 	mov	r0,a
      004158 E5 08            [12] 4133 	mov	a,_bp
      00415A 24 0B            [12] 4134 	add	a,#0x0b
      00415C F9               [12] 4135 	mov	r1,a
      00415D 74 13            [12] 4136 	mov	a,#0x13
      00415F 26               [12] 4137 	add	a,@r0
      004160 F7               [12] 4138 	mov	@r1,a
      004161 74 40            [12] 4139 	mov	a,#0x40
      004163 08               [12] 4140 	inc	r0
      004164 36               [12] 4141 	addc	a,@r0
      004165 09               [12] 4142 	inc	r1
      004166 F7               [12] 4143 	mov	@r1,a
      004167 08               [12] 4144 	inc	r0
      004168 09               [12] 4145 	inc	r1
      004169 E6               [12] 4146 	mov	a,@r0
      00416A F7               [12] 4147 	mov	@r1,a
      00416B E5 08            [12] 4148 	mov	a,_bp
      00416D 24 0B            [12] 4149 	add	a,#0x0b
      00416F F8               [12] 4150 	mov	r0,a
      004170 86 82            [24] 4151 	mov	dpl,@r0
      004172 08               [12] 4152 	inc	r0
      004173 86 83            [24] 4153 	mov	dph,@r0
      004175 08               [12] 4154 	inc	r0
      004176 86 F0            [24] 4155 	mov	b,@r0
      004178 12 70 79         [24] 4156 	lcall	__gptrget
      00417B FA               [12] 4157 	mov	r2,a
      00417C A3               [24] 4158 	inc	dptr
      00417D 12 70 79         [24] 4159 	lcall	__gptrget
      004180 FB               [12] 4160 	mov	r3,a
      004181 A3               [24] 4161 	inc	dptr
      004182 12 70 79         [24] 4162 	lcall	__gptrget
      004185 FC               [12] 4163 	mov	r4,a
      004186 C0 07            [24] 4164 	push	ar7
      004188 C0 06            [24] 4165 	push	ar6
      00418A C0 05            [24] 4166 	push	ar5
      00418C 8A 82            [24] 4167 	mov	dpl,r2
      00418E 8B 83            [24] 4168 	mov	dph,r3
      004190 8C F0            [24] 4169 	mov	b,r4
      004192 12 27 B4         [24] 4170 	lcall	_stack_pop
      004195 AB 82            [24] 4171 	mov	r3,dpl
      004197 AC 83            [24] 4172 	mov	r4,dph
      004199 15 81            [12] 4173 	dec	sp
      00419B 15 81            [12] 4174 	dec	sp
      00419D 15 81            [12] 4175 	dec	sp
      00419F EB               [12] 4176 	mov	a,r3
      0041A0 4C               [12] 4177 	orl	a,r4
      0041A1 70 25            [24] 4178 	jnz	00158$
      0041A3 7F 3E            [12] 4179 	mov	r7,#___str_10
      0041A5 7E 89            [12] 4180 	mov	r6,#(___str_10 >> 8)
      0041A7 7D 80            [12] 4181 	mov	r5,#0x80
                                   4182 ;	calc.c:51: return;
      0041A9                       4183 00424$:
                                   4184 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0041A9 8F 82            [24] 4185 	mov	dpl,r7
      0041AB 8E 83            [24] 4186 	mov	dph,r6
      0041AD 8D F0            [24] 4187 	mov	b,r5
      0041AF 12 70 79         [24] 4188 	lcall	__gptrget
      0041B2 FC               [12] 4189 	mov	r4,a
      0041B3 70 03            [24] 4190 	jnz	01324$
      0041B5 02 56 65         [24] 4191 	ljmp	00249$
      0041B8                       4192 01324$:
      0041B8 7B 00            [12] 4193 	mov	r3,#0x00
      0041BA 8C 82            [24] 4194 	mov	dpl,r4
      0041BC 8B 83            [24] 4195 	mov	dph,r3
      0041BE 12 2C 1F         [24] 4196 	lcall	_putchar
      0041C1 0F               [12] 4197 	inc	r7
                                   4198 ;	calc.c:215: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0041C2 BF 00 E4         [24] 4199 	cjne	r7,#0x00,00424$
      0041C5 0E               [12] 4200 	inc	r6
      0041C6 80 E1            [24] 4201 	sjmp	00424$
      0041C8                       4202 00158$:
                                   4203 ;	calc.c:216: else if (!stack_pop(ctx->ps, &d1)) {
      0041C8 E5 08            [12] 4204 	mov	a,_bp
      0041CA 24 19            [12] 4205 	add	a,#0x19
      0041CC FF               [12] 4206 	mov	r7,a
      0041CD 7E 00            [12] 4207 	mov	r6,#0x00
      0041CF 7D 40            [12] 4208 	mov	r5,#0x40
      0041D1 E5 08            [12] 4209 	mov	a,_bp
      0041D3 24 0B            [12] 4210 	add	a,#0x0b
      0041D5 F8               [12] 4211 	mov	r0,a
      0041D6 86 82            [24] 4212 	mov	dpl,@r0
      0041D8 08               [12] 4213 	inc	r0
      0041D9 86 83            [24] 4214 	mov	dph,@r0
      0041DB 08               [12] 4215 	inc	r0
      0041DC 86 F0            [24] 4216 	mov	b,@r0
      0041DE 12 70 79         [24] 4217 	lcall	__gptrget
      0041E1 FA               [12] 4218 	mov	r2,a
      0041E2 A3               [24] 4219 	inc	dptr
      0041E3 12 70 79         [24] 4220 	lcall	__gptrget
      0041E6 FB               [12] 4221 	mov	r3,a
      0041E7 A3               [24] 4222 	inc	dptr
      0041E8 12 70 79         [24] 4223 	lcall	__gptrget
      0041EB FC               [12] 4224 	mov	r4,a
      0041EC C0 07            [24] 4225 	push	ar7
      0041EE C0 06            [24] 4226 	push	ar6
      0041F0 C0 05            [24] 4227 	push	ar5
      0041F2 8A 82            [24] 4228 	mov	dpl,r2
      0041F4 8B 83            [24] 4229 	mov	dph,r3
      0041F6 8C F0            [24] 4230 	mov	b,r4
      0041F8 12 27 B4         [24] 4231 	lcall	_stack_pop
      0041FB AB 82            [24] 4232 	mov	r3,dpl
      0041FD AC 83            [24] 4233 	mov	r4,dph
      0041FF 15 81            [12] 4234 	dec	sp
      004201 15 81            [12] 4235 	dec	sp
      004203 15 81            [12] 4236 	dec	sp
      004205 EB               [12] 4237 	mov	a,r3
      004206 4C               [12] 4238 	orl	a,r4
      004207 70 63            [24] 4239 	jnz	00155$
                                   4240 ;	calc.c:217: (void)stack_push(ctx->ps, d0);
      004209 E5 08            [12] 4241 	mov	a,_bp
      00420B 24 0B            [12] 4242 	add	a,#0x0b
      00420D F8               [12] 4243 	mov	r0,a
      00420E 86 82            [24] 4244 	mov	dpl,@r0
      004210 08               [12] 4245 	inc	r0
      004211 86 83            [24] 4246 	mov	dph,@r0
      004213 08               [12] 4247 	inc	r0
      004214 86 F0            [24] 4248 	mov	b,@r0
      004216 12 70 79         [24] 4249 	lcall	__gptrget
      004219 FA               [12] 4250 	mov	r2,a
      00421A A3               [24] 4251 	inc	dptr
      00421B 12 70 79         [24] 4252 	lcall	__gptrget
      00421E FB               [12] 4253 	mov	r3,a
      00421F A3               [24] 4254 	inc	dptr
      004220 12 70 79         [24] 4255 	lcall	__gptrget
      004223 FC               [12] 4256 	mov	r4,a
      004224 E5 08            [12] 4257 	mov	a,_bp
      004226 24 15            [12] 4258 	add	a,#0x15
      004228 F8               [12] 4259 	mov	r0,a
      004229 E6               [12] 4260 	mov	a,@r0
      00422A C0 E0            [24] 4261 	push	acc
      00422C 08               [12] 4262 	inc	r0
      00422D E6               [12] 4263 	mov	a,@r0
      00422E C0 E0            [24] 4264 	push	acc
      004230 08               [12] 4265 	inc	r0
      004231 E6               [12] 4266 	mov	a,@r0
      004232 C0 E0            [24] 4267 	push	acc
      004234 08               [12] 4268 	inc	r0
      004235 E6               [12] 4269 	mov	a,@r0
      004236 C0 E0            [24] 4270 	push	acc
      004238 8A 82            [24] 4271 	mov	dpl,r2
      00423A 8B 83            [24] 4272 	mov	dph,r3
      00423C 8C F0            [24] 4273 	mov	b,r4
      00423E 12 26 BA         [24] 4274 	lcall	_stack_push
      004241 E5 81            [12] 4275 	mov	a,sp
      004243 24 FC            [12] 4276 	add	a,#0xfc
      004245 F5 81            [12] 4277 	mov	sp,a
                                   4278 ;	calc.c:218: printstr("\r\nstack underflow\r\n");
      004247 7F 3E            [12] 4279 	mov	r7,#___str_10
      004249 7E 89            [12] 4280 	mov	r6,#(___str_10 >> 8)
      00424B 7D 80            [12] 4281 	mov	r5,#0x80
                                   4282 ;	calc.c:51: return;
      00424D                       4283 00427$:
                                   4284 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00424D 8F 82            [24] 4285 	mov	dpl,r7
      00424F 8E 83            [24] 4286 	mov	dph,r6
      004251 8D F0            [24] 4287 	mov	b,r5
      004253 12 70 79         [24] 4288 	lcall	__gptrget
      004256 FC               [12] 4289 	mov	r4,a
      004257 70 03            [24] 4290 	jnz	01327$
      004259 02 56 65         [24] 4291 	ljmp	00249$
      00425C                       4292 01327$:
      00425C 7B 00            [12] 4293 	mov	r3,#0x00
      00425E 8C 82            [24] 4294 	mov	dpl,r4
      004260 8B 83            [24] 4295 	mov	dph,r3
      004262 12 2C 1F         [24] 4296 	lcall	_putchar
      004265 0F               [12] 4297 	inc	r7
                                   4298 ;	calc.c:218: printstr("\r\nstack underflow\r\n");
      004266 BF 00 E4         [24] 4299 	cjne	r7,#0x00,00427$
      004269 0E               [12] 4300 	inc	r6
      00426A 80 E1            [24] 4301 	sjmp	00427$
      00426C                       4302 00155$:
                                   4303 ;	calc.c:220: d1 += d0;
      00426C E5 08            [12] 4304 	mov	a,_bp
      00426E 24 19            [12] 4305 	add	a,#0x19
      004270 F8               [12] 4306 	mov	r0,a
      004271 E5 08            [12] 4307 	mov	a,_bp
      004273 24 15            [12] 4308 	add	a,#0x15
      004275 F9               [12] 4309 	mov	r1,a
      004276 E7               [12] 4310 	mov	a,@r1
      004277 26               [12] 4311 	add	a,@r0
      004278 F6               [12] 4312 	mov	@r0,a
      004279 09               [12] 4313 	inc	r1
      00427A E7               [12] 4314 	mov	a,@r1
      00427B 08               [12] 4315 	inc	r0
      00427C 36               [12] 4316 	addc	a,@r0
      00427D F6               [12] 4317 	mov	@r0,a
      00427E 09               [12] 4318 	inc	r1
      00427F E7               [12] 4319 	mov	a,@r1
      004280 08               [12] 4320 	inc	r0
      004281 36               [12] 4321 	addc	a,@r0
      004282 F6               [12] 4322 	mov	@r0,a
      004283 09               [12] 4323 	inc	r1
      004284 E7               [12] 4324 	mov	a,@r1
      004285 08               [12] 4325 	inc	r0
      004286 36               [12] 4326 	addc	a,@r0
      004287 F6               [12] 4327 	mov	@r0,a
                                   4328 ;	calc.c:221: (void)stack_push(ctx->ps, d1);
      004288 E5 08            [12] 4329 	mov	a,_bp
      00428A 24 0B            [12] 4330 	add	a,#0x0b
      00428C F8               [12] 4331 	mov	r0,a
      00428D 86 82            [24] 4332 	mov	dpl,@r0
      00428F 08               [12] 4333 	inc	r0
      004290 86 83            [24] 4334 	mov	dph,@r0
      004292 08               [12] 4335 	inc	r0
      004293 86 F0            [24] 4336 	mov	b,@r0
      004295 12 70 79         [24] 4337 	lcall	__gptrget
      004298 FA               [12] 4338 	mov	r2,a
      004299 A3               [24] 4339 	inc	dptr
      00429A 12 70 79         [24] 4340 	lcall	__gptrget
      00429D FB               [12] 4341 	mov	r3,a
      00429E A3               [24] 4342 	inc	dptr
      00429F 12 70 79         [24] 4343 	lcall	__gptrget
      0042A2 FC               [12] 4344 	mov	r4,a
      0042A3 E5 08            [12] 4345 	mov	a,_bp
      0042A5 24 19            [12] 4346 	add	a,#0x19
      0042A7 F8               [12] 4347 	mov	r0,a
      0042A8 E6               [12] 4348 	mov	a,@r0
      0042A9 C0 E0            [24] 4349 	push	acc
      0042AB 08               [12] 4350 	inc	r0
      0042AC E6               [12] 4351 	mov	a,@r0
      0042AD C0 E0            [24] 4352 	push	acc
      0042AF 08               [12] 4353 	inc	r0
      0042B0 E6               [12] 4354 	mov	a,@r0
      0042B1 C0 E0            [24] 4355 	push	acc
      0042B3 08               [12] 4356 	inc	r0
      0042B4 E6               [12] 4357 	mov	a,@r0
      0042B5 C0 E0            [24] 4358 	push	acc
      0042B7 8A 82            [24] 4359 	mov	dpl,r2
      0042B9 8B 83            [24] 4360 	mov	dph,r3
      0042BB 8C F0            [24] 4361 	mov	b,r4
      0042BD 12 26 BA         [24] 4362 	lcall	_stack_push
      0042C0 E5 81            [12] 4363 	mov	a,sp
      0042C2 24 FC            [12] 4364 	add	a,#0xfc
      0042C4 F5 81            [12] 4365 	mov	sp,a
                                   4366 ;	calc.c:223: break;
      0042C6 02 56 65         [24] 4367 	ljmp	00249$
                                   4368 ;	calc.c:224: case '-':
      0042C9                       4369 00160$:
                                   4370 ;	calc.c:225: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0042C9 E5 08            [12] 4371 	mov	a,_bp
      0042CB 24 15            [12] 4372 	add	a,#0x15
      0042CD FF               [12] 4373 	mov	r7,a
      0042CE 7E 00            [12] 4374 	mov	r6,#0x00
      0042D0 7D 40            [12] 4375 	mov	r5,#0x40
      0042D2 E5 08            [12] 4376 	mov	a,_bp
      0042D4 24 12            [12] 4377 	add	a,#0x12
      0042D6 F8               [12] 4378 	mov	r0,a
      0042D7 E5 08            [12] 4379 	mov	a,_bp
      0042D9 24 0B            [12] 4380 	add	a,#0x0b
      0042DB F9               [12] 4381 	mov	r1,a
      0042DC 74 13            [12] 4382 	mov	a,#0x13
      0042DE 26               [12] 4383 	add	a,@r0
      0042DF F7               [12] 4384 	mov	@r1,a
      0042E0 74 40            [12] 4385 	mov	a,#0x40
      0042E2 08               [12] 4386 	inc	r0
      0042E3 36               [12] 4387 	addc	a,@r0
      0042E4 09               [12] 4388 	inc	r1
      0042E5 F7               [12] 4389 	mov	@r1,a
      0042E6 08               [12] 4390 	inc	r0
      0042E7 09               [12] 4391 	inc	r1
      0042E8 E6               [12] 4392 	mov	a,@r0
      0042E9 F7               [12] 4393 	mov	@r1,a
      0042EA E5 08            [12] 4394 	mov	a,_bp
      0042EC 24 0B            [12] 4395 	add	a,#0x0b
      0042EE F8               [12] 4396 	mov	r0,a
      0042EF 86 82            [24] 4397 	mov	dpl,@r0
      0042F1 08               [12] 4398 	inc	r0
      0042F2 86 83            [24] 4399 	mov	dph,@r0
      0042F4 08               [12] 4400 	inc	r0
      0042F5 86 F0            [24] 4401 	mov	b,@r0
      0042F7 12 70 79         [24] 4402 	lcall	__gptrget
      0042FA FA               [12] 4403 	mov	r2,a
      0042FB A3               [24] 4404 	inc	dptr
      0042FC 12 70 79         [24] 4405 	lcall	__gptrget
      0042FF FB               [12] 4406 	mov	r3,a
      004300 A3               [24] 4407 	inc	dptr
      004301 12 70 79         [24] 4408 	lcall	__gptrget
      004304 FC               [12] 4409 	mov	r4,a
      004305 C0 07            [24] 4410 	push	ar7
      004307 C0 06            [24] 4411 	push	ar6
      004309 C0 05            [24] 4412 	push	ar5
      00430B 8A 82            [24] 4413 	mov	dpl,r2
      00430D 8B 83            [24] 4414 	mov	dph,r3
      00430F 8C F0            [24] 4415 	mov	b,r4
      004311 12 27 B4         [24] 4416 	lcall	_stack_pop
      004314 AB 82            [24] 4417 	mov	r3,dpl
      004316 AC 83            [24] 4418 	mov	r4,dph
      004318 15 81            [12] 4419 	dec	sp
      00431A 15 81            [12] 4420 	dec	sp
      00431C 15 81            [12] 4421 	dec	sp
      00431E EB               [12] 4422 	mov	a,r3
      00431F 4C               [12] 4423 	orl	a,r4
      004320 70 25            [24] 4424 	jnz	00165$
      004322 7F 3E            [12] 4425 	mov	r7,#___str_10
      004324 7E 89            [12] 4426 	mov	r6,#(___str_10 >> 8)
      004326 7D 80            [12] 4427 	mov	r5,#0x80
                                   4428 ;	calc.c:51: return;
      004328                       4429 00430$:
                                   4430 ;	calc.c:49: for (; *s; s++) putchar(*s);
      004328 8F 82            [24] 4431 	mov	dpl,r7
      00432A 8E 83            [24] 4432 	mov	dph,r6
      00432C 8D F0            [24] 4433 	mov	b,r5
      00432E 12 70 79         [24] 4434 	lcall	__gptrget
      004331 FC               [12] 4435 	mov	r4,a
      004332 70 03            [24] 4436 	jnz	01330$
      004334 02 56 65         [24] 4437 	ljmp	00249$
      004337                       4438 01330$:
      004337 7B 00            [12] 4439 	mov	r3,#0x00
      004339 8C 82            [24] 4440 	mov	dpl,r4
      00433B 8B 83            [24] 4441 	mov	dph,r3
      00433D 12 2C 1F         [24] 4442 	lcall	_putchar
      004340 0F               [12] 4443 	inc	r7
                                   4444 ;	calc.c:225: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004341 BF 00 E4         [24] 4445 	cjne	r7,#0x00,00430$
      004344 0E               [12] 4446 	inc	r6
      004345 80 E1            [24] 4447 	sjmp	00430$
      004347                       4448 00165$:
                                   4449 ;	calc.c:226: else if (!stack_pop(ctx->ps, &d1)) {
      004347 E5 08            [12] 4450 	mov	a,_bp
      004349 24 19            [12] 4451 	add	a,#0x19
      00434B FF               [12] 4452 	mov	r7,a
      00434C 7E 00            [12] 4453 	mov	r6,#0x00
      00434E 7D 40            [12] 4454 	mov	r5,#0x40
      004350 E5 08            [12] 4455 	mov	a,_bp
      004352 24 0B            [12] 4456 	add	a,#0x0b
      004354 F8               [12] 4457 	mov	r0,a
      004355 86 82            [24] 4458 	mov	dpl,@r0
      004357 08               [12] 4459 	inc	r0
      004358 86 83            [24] 4460 	mov	dph,@r0
      00435A 08               [12] 4461 	inc	r0
      00435B 86 F0            [24] 4462 	mov	b,@r0
      00435D 12 70 79         [24] 4463 	lcall	__gptrget
      004360 FA               [12] 4464 	mov	r2,a
      004361 A3               [24] 4465 	inc	dptr
      004362 12 70 79         [24] 4466 	lcall	__gptrget
      004365 FB               [12] 4467 	mov	r3,a
      004366 A3               [24] 4468 	inc	dptr
      004367 12 70 79         [24] 4469 	lcall	__gptrget
      00436A FC               [12] 4470 	mov	r4,a
      00436B C0 07            [24] 4471 	push	ar7
      00436D C0 06            [24] 4472 	push	ar6
      00436F C0 05            [24] 4473 	push	ar5
      004371 8A 82            [24] 4474 	mov	dpl,r2
      004373 8B 83            [24] 4475 	mov	dph,r3
      004375 8C F0            [24] 4476 	mov	b,r4
      004377 12 27 B4         [24] 4477 	lcall	_stack_pop
      00437A AB 82            [24] 4478 	mov	r3,dpl
      00437C AC 83            [24] 4479 	mov	r4,dph
      00437E 15 81            [12] 4480 	dec	sp
      004380 15 81            [12] 4481 	dec	sp
      004382 15 81            [12] 4482 	dec	sp
      004384 EB               [12] 4483 	mov	a,r3
      004385 4C               [12] 4484 	orl	a,r4
      004386 70 63            [24] 4485 	jnz	00162$
                                   4486 ;	calc.c:227: (void)stack_push(ctx->ps, d0);
      004388 E5 08            [12] 4487 	mov	a,_bp
      00438A 24 0B            [12] 4488 	add	a,#0x0b
      00438C F8               [12] 4489 	mov	r0,a
      00438D 86 82            [24] 4490 	mov	dpl,@r0
      00438F 08               [12] 4491 	inc	r0
      004390 86 83            [24] 4492 	mov	dph,@r0
      004392 08               [12] 4493 	inc	r0
      004393 86 F0            [24] 4494 	mov	b,@r0
      004395 12 70 79         [24] 4495 	lcall	__gptrget
      004398 FA               [12] 4496 	mov	r2,a
      004399 A3               [24] 4497 	inc	dptr
      00439A 12 70 79         [24] 4498 	lcall	__gptrget
      00439D FB               [12] 4499 	mov	r3,a
      00439E A3               [24] 4500 	inc	dptr
      00439F 12 70 79         [24] 4501 	lcall	__gptrget
      0043A2 FC               [12] 4502 	mov	r4,a
      0043A3 E5 08            [12] 4503 	mov	a,_bp
      0043A5 24 15            [12] 4504 	add	a,#0x15
      0043A7 F8               [12] 4505 	mov	r0,a
      0043A8 E6               [12] 4506 	mov	a,@r0
      0043A9 C0 E0            [24] 4507 	push	acc
      0043AB 08               [12] 4508 	inc	r0
      0043AC E6               [12] 4509 	mov	a,@r0
      0043AD C0 E0            [24] 4510 	push	acc
      0043AF 08               [12] 4511 	inc	r0
      0043B0 E6               [12] 4512 	mov	a,@r0
      0043B1 C0 E0            [24] 4513 	push	acc
      0043B3 08               [12] 4514 	inc	r0
      0043B4 E6               [12] 4515 	mov	a,@r0
      0043B5 C0 E0            [24] 4516 	push	acc
      0043B7 8A 82            [24] 4517 	mov	dpl,r2
      0043B9 8B 83            [24] 4518 	mov	dph,r3
      0043BB 8C F0            [24] 4519 	mov	b,r4
      0043BD 12 26 BA         [24] 4520 	lcall	_stack_push
      0043C0 E5 81            [12] 4521 	mov	a,sp
      0043C2 24 FC            [12] 4522 	add	a,#0xfc
      0043C4 F5 81            [12] 4523 	mov	sp,a
                                   4524 ;	calc.c:228: printstr("\r\nstack underflow\r\n");
      0043C6 7F 3E            [12] 4525 	mov	r7,#___str_10
      0043C8 7E 89            [12] 4526 	mov	r6,#(___str_10 >> 8)
      0043CA 7D 80            [12] 4527 	mov	r5,#0x80
                                   4528 ;	calc.c:51: return;
      0043CC                       4529 00433$:
                                   4530 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0043CC 8F 82            [24] 4531 	mov	dpl,r7
      0043CE 8E 83            [24] 4532 	mov	dph,r6
      0043D0 8D F0            [24] 4533 	mov	b,r5
      0043D2 12 70 79         [24] 4534 	lcall	__gptrget
      0043D5 FC               [12] 4535 	mov	r4,a
      0043D6 70 03            [24] 4536 	jnz	01333$
      0043D8 02 56 65         [24] 4537 	ljmp	00249$
      0043DB                       4538 01333$:
      0043DB 7B 00            [12] 4539 	mov	r3,#0x00
      0043DD 8C 82            [24] 4540 	mov	dpl,r4
      0043DF 8B 83            [24] 4541 	mov	dph,r3
      0043E1 12 2C 1F         [24] 4542 	lcall	_putchar
      0043E4 0F               [12] 4543 	inc	r7
                                   4544 ;	calc.c:228: printstr("\r\nstack underflow\r\n");
      0043E5 BF 00 E4         [24] 4545 	cjne	r7,#0x00,00433$
      0043E8 0E               [12] 4546 	inc	r6
      0043E9 80 E1            [24] 4547 	sjmp	00433$
      0043EB                       4548 00162$:
                                   4549 ;	calc.c:230: d1 -= d0;
      0043EB E5 08            [12] 4550 	mov	a,_bp
      0043ED 24 19            [12] 4551 	add	a,#0x19
      0043EF F8               [12] 4552 	mov	r0,a
      0043F0 E5 08            [12] 4553 	mov	a,_bp
      0043F2 24 15            [12] 4554 	add	a,#0x15
      0043F4 F9               [12] 4555 	mov	r1,a
      0043F5 E6               [12] 4556 	mov	a,@r0
      0043F6 C3               [12] 4557 	clr	c
      0043F7 97               [12] 4558 	subb	a,@r1
      0043F8 F6               [12] 4559 	mov	@r0,a
      0043F9 08               [12] 4560 	inc	r0
      0043FA E6               [12] 4561 	mov	a,@r0
      0043FB 09               [12] 4562 	inc	r1
      0043FC 97               [12] 4563 	subb	a,@r1
      0043FD F6               [12] 4564 	mov	@r0,a
      0043FE 08               [12] 4565 	inc	r0
      0043FF E6               [12] 4566 	mov	a,@r0
      004400 09               [12] 4567 	inc	r1
      004401 97               [12] 4568 	subb	a,@r1
      004402 F6               [12] 4569 	mov	@r0,a
      004403 08               [12] 4570 	inc	r0
      004404 E6               [12] 4571 	mov	a,@r0
      004405 09               [12] 4572 	inc	r1
      004406 97               [12] 4573 	subb	a,@r1
      004407 F6               [12] 4574 	mov	@r0,a
                                   4575 ;	calc.c:231: (void)stack_push(ctx->ps, d1);
      004408 E5 08            [12] 4576 	mov	a,_bp
      00440A 24 0B            [12] 4577 	add	a,#0x0b
      00440C F8               [12] 4578 	mov	r0,a
      00440D 86 82            [24] 4579 	mov	dpl,@r0
      00440F 08               [12] 4580 	inc	r0
      004410 86 83            [24] 4581 	mov	dph,@r0
      004412 08               [12] 4582 	inc	r0
      004413 86 F0            [24] 4583 	mov	b,@r0
      004415 12 70 79         [24] 4584 	lcall	__gptrget
      004418 FA               [12] 4585 	mov	r2,a
      004419 A3               [24] 4586 	inc	dptr
      00441A 12 70 79         [24] 4587 	lcall	__gptrget
      00441D FB               [12] 4588 	mov	r3,a
      00441E A3               [24] 4589 	inc	dptr
      00441F 12 70 79         [24] 4590 	lcall	__gptrget
      004422 FC               [12] 4591 	mov	r4,a
      004423 E5 08            [12] 4592 	mov	a,_bp
      004425 24 19            [12] 4593 	add	a,#0x19
      004427 F8               [12] 4594 	mov	r0,a
      004428 E6               [12] 4595 	mov	a,@r0
      004429 C0 E0            [24] 4596 	push	acc
      00442B 08               [12] 4597 	inc	r0
      00442C E6               [12] 4598 	mov	a,@r0
      00442D C0 E0            [24] 4599 	push	acc
      00442F 08               [12] 4600 	inc	r0
      004430 E6               [12] 4601 	mov	a,@r0
      004431 C0 E0            [24] 4602 	push	acc
      004433 08               [12] 4603 	inc	r0
      004434 E6               [12] 4604 	mov	a,@r0
      004435 C0 E0            [24] 4605 	push	acc
      004437 8A 82            [24] 4606 	mov	dpl,r2
      004439 8B 83            [24] 4607 	mov	dph,r3
      00443B 8C F0            [24] 4608 	mov	b,r4
      00443D 12 26 BA         [24] 4609 	lcall	_stack_push
      004440 E5 81            [12] 4610 	mov	a,sp
      004442 24 FC            [12] 4611 	add	a,#0xfc
      004444 F5 81            [12] 4612 	mov	sp,a
                                   4613 ;	calc.c:233: break;
      004446 02 56 65         [24] 4614 	ljmp	00249$
                                   4615 ;	calc.c:234: case '*':
      004449                       4616 00167$:
                                   4617 ;	calc.c:235: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004449 E5 08            [12] 4618 	mov	a,_bp
      00444B 24 15            [12] 4619 	add	a,#0x15
      00444D FF               [12] 4620 	mov	r7,a
      00444E 7E 00            [12] 4621 	mov	r6,#0x00
      004450 7D 40            [12] 4622 	mov	r5,#0x40
      004452 E5 08            [12] 4623 	mov	a,_bp
      004454 24 12            [12] 4624 	add	a,#0x12
      004456 F8               [12] 4625 	mov	r0,a
      004457 E5 08            [12] 4626 	mov	a,_bp
      004459 24 0B            [12] 4627 	add	a,#0x0b
      00445B F9               [12] 4628 	mov	r1,a
      00445C 74 13            [12] 4629 	mov	a,#0x13
      00445E 26               [12] 4630 	add	a,@r0
      00445F F7               [12] 4631 	mov	@r1,a
      004460 74 40            [12] 4632 	mov	a,#0x40
      004462 08               [12] 4633 	inc	r0
      004463 36               [12] 4634 	addc	a,@r0
      004464 09               [12] 4635 	inc	r1
      004465 F7               [12] 4636 	mov	@r1,a
      004466 08               [12] 4637 	inc	r0
      004467 09               [12] 4638 	inc	r1
      004468 E6               [12] 4639 	mov	a,@r0
      004469 F7               [12] 4640 	mov	@r1,a
      00446A E5 08            [12] 4641 	mov	a,_bp
      00446C 24 0B            [12] 4642 	add	a,#0x0b
      00446E F8               [12] 4643 	mov	r0,a
      00446F 86 82            [24] 4644 	mov	dpl,@r0
      004471 08               [12] 4645 	inc	r0
      004472 86 83            [24] 4646 	mov	dph,@r0
      004474 08               [12] 4647 	inc	r0
      004475 86 F0            [24] 4648 	mov	b,@r0
      004477 12 70 79         [24] 4649 	lcall	__gptrget
      00447A FA               [12] 4650 	mov	r2,a
      00447B A3               [24] 4651 	inc	dptr
      00447C 12 70 79         [24] 4652 	lcall	__gptrget
      00447F FB               [12] 4653 	mov	r3,a
      004480 A3               [24] 4654 	inc	dptr
      004481 12 70 79         [24] 4655 	lcall	__gptrget
      004484 FC               [12] 4656 	mov	r4,a
      004485 C0 07            [24] 4657 	push	ar7
      004487 C0 06            [24] 4658 	push	ar6
      004489 C0 05            [24] 4659 	push	ar5
      00448B 8A 82            [24] 4660 	mov	dpl,r2
      00448D 8B 83            [24] 4661 	mov	dph,r3
      00448F 8C F0            [24] 4662 	mov	b,r4
      004491 12 27 B4         [24] 4663 	lcall	_stack_pop
      004494 AB 82            [24] 4664 	mov	r3,dpl
      004496 AC 83            [24] 4665 	mov	r4,dph
      004498 15 81            [12] 4666 	dec	sp
      00449A 15 81            [12] 4667 	dec	sp
      00449C 15 81            [12] 4668 	dec	sp
      00449E EB               [12] 4669 	mov	a,r3
      00449F 4C               [12] 4670 	orl	a,r4
      0044A0 70 25            [24] 4671 	jnz	00172$
      0044A2 7F 3E            [12] 4672 	mov	r7,#___str_10
      0044A4 7E 89            [12] 4673 	mov	r6,#(___str_10 >> 8)
      0044A6 7D 80            [12] 4674 	mov	r5,#0x80
                                   4675 ;	calc.c:51: return;
      0044A8                       4676 00436$:
                                   4677 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0044A8 8F 82            [24] 4678 	mov	dpl,r7
      0044AA 8E 83            [24] 4679 	mov	dph,r6
      0044AC 8D F0            [24] 4680 	mov	b,r5
      0044AE 12 70 79         [24] 4681 	lcall	__gptrget
      0044B1 FC               [12] 4682 	mov	r4,a
      0044B2 70 03            [24] 4683 	jnz	01336$
      0044B4 02 56 65         [24] 4684 	ljmp	00249$
      0044B7                       4685 01336$:
      0044B7 7B 00            [12] 4686 	mov	r3,#0x00
      0044B9 8C 82            [24] 4687 	mov	dpl,r4
      0044BB 8B 83            [24] 4688 	mov	dph,r3
      0044BD 12 2C 1F         [24] 4689 	lcall	_putchar
      0044C0 0F               [12] 4690 	inc	r7
                                   4691 ;	calc.c:235: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0044C1 BF 00 E4         [24] 4692 	cjne	r7,#0x00,00436$
      0044C4 0E               [12] 4693 	inc	r6
      0044C5 80 E1            [24] 4694 	sjmp	00436$
      0044C7                       4695 00172$:
                                   4696 ;	calc.c:236: else if (!stack_pop(ctx->ps, &d1)) {
      0044C7 E5 08            [12] 4697 	mov	a,_bp
      0044C9 24 19            [12] 4698 	add	a,#0x19
      0044CB FF               [12] 4699 	mov	r7,a
      0044CC 7E 00            [12] 4700 	mov	r6,#0x00
      0044CE 7D 40            [12] 4701 	mov	r5,#0x40
      0044D0 E5 08            [12] 4702 	mov	a,_bp
      0044D2 24 0B            [12] 4703 	add	a,#0x0b
      0044D4 F8               [12] 4704 	mov	r0,a
      0044D5 86 82            [24] 4705 	mov	dpl,@r0
      0044D7 08               [12] 4706 	inc	r0
      0044D8 86 83            [24] 4707 	mov	dph,@r0
      0044DA 08               [12] 4708 	inc	r0
      0044DB 86 F0            [24] 4709 	mov	b,@r0
      0044DD 12 70 79         [24] 4710 	lcall	__gptrget
      0044E0 FA               [12] 4711 	mov	r2,a
      0044E1 A3               [24] 4712 	inc	dptr
      0044E2 12 70 79         [24] 4713 	lcall	__gptrget
      0044E5 FB               [12] 4714 	mov	r3,a
      0044E6 A3               [24] 4715 	inc	dptr
      0044E7 12 70 79         [24] 4716 	lcall	__gptrget
      0044EA FC               [12] 4717 	mov	r4,a
      0044EB C0 07            [24] 4718 	push	ar7
      0044ED C0 06            [24] 4719 	push	ar6
      0044EF C0 05            [24] 4720 	push	ar5
      0044F1 8A 82            [24] 4721 	mov	dpl,r2
      0044F3 8B 83            [24] 4722 	mov	dph,r3
      0044F5 8C F0            [24] 4723 	mov	b,r4
      0044F7 12 27 B4         [24] 4724 	lcall	_stack_pop
      0044FA AB 82            [24] 4725 	mov	r3,dpl
      0044FC AC 83            [24] 4726 	mov	r4,dph
      0044FE 15 81            [12] 4727 	dec	sp
      004500 15 81            [12] 4728 	dec	sp
      004502 15 81            [12] 4729 	dec	sp
      004504 EB               [12] 4730 	mov	a,r3
      004505 4C               [12] 4731 	orl	a,r4
      004506 70 63            [24] 4732 	jnz	00169$
                                   4733 ;	calc.c:237: (void)stack_push(ctx->ps, d0);
      004508 E5 08            [12] 4734 	mov	a,_bp
      00450A 24 0B            [12] 4735 	add	a,#0x0b
      00450C F8               [12] 4736 	mov	r0,a
      00450D 86 82            [24] 4737 	mov	dpl,@r0
      00450F 08               [12] 4738 	inc	r0
      004510 86 83            [24] 4739 	mov	dph,@r0
      004512 08               [12] 4740 	inc	r0
      004513 86 F0            [24] 4741 	mov	b,@r0
      004515 12 70 79         [24] 4742 	lcall	__gptrget
      004518 FA               [12] 4743 	mov	r2,a
      004519 A3               [24] 4744 	inc	dptr
      00451A 12 70 79         [24] 4745 	lcall	__gptrget
      00451D FB               [12] 4746 	mov	r3,a
      00451E A3               [24] 4747 	inc	dptr
      00451F 12 70 79         [24] 4748 	lcall	__gptrget
      004522 FC               [12] 4749 	mov	r4,a
      004523 E5 08            [12] 4750 	mov	a,_bp
      004525 24 15            [12] 4751 	add	a,#0x15
      004527 F8               [12] 4752 	mov	r0,a
      004528 E6               [12] 4753 	mov	a,@r0
      004529 C0 E0            [24] 4754 	push	acc
      00452B 08               [12] 4755 	inc	r0
      00452C E6               [12] 4756 	mov	a,@r0
      00452D C0 E0            [24] 4757 	push	acc
      00452F 08               [12] 4758 	inc	r0
      004530 E6               [12] 4759 	mov	a,@r0
      004531 C0 E0            [24] 4760 	push	acc
      004533 08               [12] 4761 	inc	r0
      004534 E6               [12] 4762 	mov	a,@r0
      004535 C0 E0            [24] 4763 	push	acc
      004537 8A 82            [24] 4764 	mov	dpl,r2
      004539 8B 83            [24] 4765 	mov	dph,r3
      00453B 8C F0            [24] 4766 	mov	b,r4
      00453D 12 26 BA         [24] 4767 	lcall	_stack_push
      004540 E5 81            [12] 4768 	mov	a,sp
      004542 24 FC            [12] 4769 	add	a,#0xfc
      004544 F5 81            [12] 4770 	mov	sp,a
                                   4771 ;	calc.c:238: printstr("\r\nstack underflow\r\n");
      004546 7F 3E            [12] 4772 	mov	r7,#___str_10
      004548 7E 89            [12] 4773 	mov	r6,#(___str_10 >> 8)
      00454A 7D 80            [12] 4774 	mov	r5,#0x80
                                   4775 ;	calc.c:51: return;
      00454C                       4776 00439$:
                                   4777 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00454C 8F 82            [24] 4778 	mov	dpl,r7
      00454E 8E 83            [24] 4779 	mov	dph,r6
      004550 8D F0            [24] 4780 	mov	b,r5
      004552 12 70 79         [24] 4781 	lcall	__gptrget
      004555 FC               [12] 4782 	mov	r4,a
      004556 70 03            [24] 4783 	jnz	01339$
      004558 02 56 65         [24] 4784 	ljmp	00249$
      00455B                       4785 01339$:
      00455B 7B 00            [12] 4786 	mov	r3,#0x00
      00455D 8C 82            [24] 4787 	mov	dpl,r4
      00455F 8B 83            [24] 4788 	mov	dph,r3
      004561 12 2C 1F         [24] 4789 	lcall	_putchar
      004564 0F               [12] 4790 	inc	r7
                                   4791 ;	calc.c:238: printstr("\r\nstack underflow\r\n");
      004565 BF 00 E4         [24] 4792 	cjne	r7,#0x00,00439$
      004568 0E               [12] 4793 	inc	r6
      004569 80 E1            [24] 4794 	sjmp	00439$
      00456B                       4795 00169$:
                                   4796 ;	calc.c:240: d1 *= d0;
      00456B E5 08            [12] 4797 	mov	a,_bp
      00456D 24 15            [12] 4798 	add	a,#0x15
      00456F F8               [12] 4799 	mov	r0,a
      004570 E6               [12] 4800 	mov	a,@r0
      004571 C0 E0            [24] 4801 	push	acc
      004573 08               [12] 4802 	inc	r0
      004574 E6               [12] 4803 	mov	a,@r0
      004575 C0 E0            [24] 4804 	push	acc
      004577 08               [12] 4805 	inc	r0
      004578 E6               [12] 4806 	mov	a,@r0
      004579 C0 E0            [24] 4807 	push	acc
      00457B 08               [12] 4808 	inc	r0
      00457C E6               [12] 4809 	mov	a,@r0
      00457D C0 E0            [24] 4810 	push	acc
      00457F E5 08            [12] 4811 	mov	a,_bp
      004581 24 19            [12] 4812 	add	a,#0x19
      004583 F8               [12] 4813 	mov	r0,a
      004584 86 82            [24] 4814 	mov	dpl,@r0
      004586 08               [12] 4815 	inc	r0
      004587 86 83            [24] 4816 	mov	dph,@r0
      004589 08               [12] 4817 	inc	r0
      00458A 86 F0            [24] 4818 	mov	b,@r0
      00458C 08               [12] 4819 	inc	r0
      00458D E6               [12] 4820 	mov	a,@r0
      00458E 12 74 72         [24] 4821 	lcall	__mullong
      004591 AF 82            [24] 4822 	mov	r7,dpl
      004593 AE 83            [24] 4823 	mov	r6,dph
      004595 AD F0            [24] 4824 	mov	r5,b
      004597 FC               [12] 4825 	mov	r4,a
      004598 E5 81            [12] 4826 	mov	a,sp
      00459A 24 FC            [12] 4827 	add	a,#0xfc
      00459C F5 81            [12] 4828 	mov	sp,a
      00459E E5 08            [12] 4829 	mov	a,_bp
      0045A0 24 19            [12] 4830 	add	a,#0x19
      0045A2 F8               [12] 4831 	mov	r0,a
      0045A3 A6 07            [24] 4832 	mov	@r0,ar7
      0045A5 08               [12] 4833 	inc	r0
      0045A6 A6 06            [24] 4834 	mov	@r0,ar6
      0045A8 08               [12] 4835 	inc	r0
      0045A9 A6 05            [24] 4836 	mov	@r0,ar5
      0045AB 08               [12] 4837 	inc	r0
      0045AC A6 04            [24] 4838 	mov	@r0,ar4
                                   4839 ;	calc.c:241: (void)stack_push(ctx->ps, d1);
      0045AE E5 08            [12] 4840 	mov	a,_bp
      0045B0 24 0B            [12] 4841 	add	a,#0x0b
      0045B2 F8               [12] 4842 	mov	r0,a
      0045B3 86 82            [24] 4843 	mov	dpl,@r0
      0045B5 08               [12] 4844 	inc	r0
      0045B6 86 83            [24] 4845 	mov	dph,@r0
      0045B8 08               [12] 4846 	inc	r0
      0045B9 86 F0            [24] 4847 	mov	b,@r0
      0045BB 12 70 79         [24] 4848 	lcall	__gptrget
      0045BE FA               [12] 4849 	mov	r2,a
      0045BF A3               [24] 4850 	inc	dptr
      0045C0 12 70 79         [24] 4851 	lcall	__gptrget
      0045C3 FB               [12] 4852 	mov	r3,a
      0045C4 A3               [24] 4853 	inc	dptr
      0045C5 12 70 79         [24] 4854 	lcall	__gptrget
      0045C8 FC               [12] 4855 	mov	r4,a
      0045C9 E5 08            [12] 4856 	mov	a,_bp
      0045CB 24 19            [12] 4857 	add	a,#0x19
      0045CD F8               [12] 4858 	mov	r0,a
      0045CE E6               [12] 4859 	mov	a,@r0
      0045CF C0 E0            [24] 4860 	push	acc
      0045D1 08               [12] 4861 	inc	r0
      0045D2 E6               [12] 4862 	mov	a,@r0
      0045D3 C0 E0            [24] 4863 	push	acc
      0045D5 08               [12] 4864 	inc	r0
      0045D6 E6               [12] 4865 	mov	a,@r0
      0045D7 C0 E0            [24] 4866 	push	acc
      0045D9 08               [12] 4867 	inc	r0
      0045DA E6               [12] 4868 	mov	a,@r0
      0045DB C0 E0            [24] 4869 	push	acc
      0045DD 8A 82            [24] 4870 	mov	dpl,r2
      0045DF 8B 83            [24] 4871 	mov	dph,r3
      0045E1 8C F0            [24] 4872 	mov	b,r4
      0045E3 12 26 BA         [24] 4873 	lcall	_stack_push
      0045E6 E5 81            [12] 4874 	mov	a,sp
      0045E8 24 FC            [12] 4875 	add	a,#0xfc
      0045EA F5 81            [12] 4876 	mov	sp,a
                                   4877 ;	calc.c:243: break;
      0045EC 02 56 65         [24] 4878 	ljmp	00249$
                                   4879 ;	calc.c:245: case '\\':
      0045EF                       4880 00175$:
                                   4881 ;	calc.c:246: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0045EF C0 05            [24] 4882 	push	ar5
      0045F1 C0 06            [24] 4883 	push	ar6
      0045F3 C0 07            [24] 4884 	push	ar7
      0045F5 E5 08            [12] 4885 	mov	a,_bp
      0045F7 24 15            [12] 4886 	add	a,#0x15
      0045F9 FC               [12] 4887 	mov	r4,a
      0045FA 7B 00            [12] 4888 	mov	r3,#0x00
      0045FC 7A 40            [12] 4889 	mov	r2,#0x40
      0045FE E5 08            [12] 4890 	mov	a,_bp
      004600 24 12            [12] 4891 	add	a,#0x12
      004602 F8               [12] 4892 	mov	r0,a
      004603 E5 08            [12] 4893 	mov	a,_bp
      004605 24 0B            [12] 4894 	add	a,#0x0b
      004607 F9               [12] 4895 	mov	r1,a
      004608 74 13            [12] 4896 	mov	a,#0x13
      00460A 26               [12] 4897 	add	a,@r0
      00460B F7               [12] 4898 	mov	@r1,a
      00460C 74 40            [12] 4899 	mov	a,#0x40
      00460E 08               [12] 4900 	inc	r0
      00460F 36               [12] 4901 	addc	a,@r0
      004610 09               [12] 4902 	inc	r1
      004611 F7               [12] 4903 	mov	@r1,a
      004612 08               [12] 4904 	inc	r0
      004613 09               [12] 4905 	inc	r1
      004614 E6               [12] 4906 	mov	a,@r0
      004615 F7               [12] 4907 	mov	@r1,a
      004616 E5 08            [12] 4908 	mov	a,_bp
      004618 24 0B            [12] 4909 	add	a,#0x0b
      00461A F8               [12] 4910 	mov	r0,a
      00461B 86 82            [24] 4911 	mov	dpl,@r0
      00461D 08               [12] 4912 	inc	r0
      00461E 86 83            [24] 4913 	mov	dph,@r0
      004620 08               [12] 4914 	inc	r0
      004621 86 F0            [24] 4915 	mov	b,@r0
      004623 12 70 79         [24] 4916 	lcall	__gptrget
      004626 FD               [12] 4917 	mov	r5,a
      004627 A3               [24] 4918 	inc	dptr
      004628 12 70 79         [24] 4919 	lcall	__gptrget
      00462B FE               [12] 4920 	mov	r6,a
      00462C A3               [24] 4921 	inc	dptr
      00462D 12 70 79         [24] 4922 	lcall	__gptrget
      004630 FF               [12] 4923 	mov	r7,a
      004631 C0 05            [24] 4924 	push	ar5
      004633 C0 04            [24] 4925 	push	ar4
      004635 C0 03            [24] 4926 	push	ar3
      004637 C0 02            [24] 4927 	push	ar2
      004639 8D 82            [24] 4928 	mov	dpl,r5
      00463B 8E 83            [24] 4929 	mov	dph,r6
      00463D 8F F0            [24] 4930 	mov	b,r7
      00463F 12 27 B4         [24] 4931 	lcall	_stack_pop
      004642 AE 82            [24] 4932 	mov	r6,dpl
      004644 AF 83            [24] 4933 	mov	r7,dph
      004646 15 81            [12] 4934 	dec	sp
      004648 15 81            [12] 4935 	dec	sp
      00464A 15 81            [12] 4936 	dec	sp
      00464C D0 05            [24] 4937 	pop	ar5
      00464E EE               [12] 4938 	mov	a,r6
      00464F 4F               [12] 4939 	orl	a,r7
      004650 D0 07            [24] 4940 	pop	ar7
      004652 D0 06            [24] 4941 	pop	ar6
      004654 D0 05            [24] 4942 	pop	ar5
      004656 70 25            [24] 4943 	jnz	00186$
      004658 7F 3E            [12] 4944 	mov	r7,#___str_10
      00465A 7E 89            [12] 4945 	mov	r6,#(___str_10 >> 8)
      00465C 7D 80            [12] 4946 	mov	r5,#0x80
                                   4947 ;	calc.c:51: return;
      00465E                       4948 00442$:
                                   4949 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00465E 8F 82            [24] 4950 	mov	dpl,r7
      004660 8E 83            [24] 4951 	mov	dph,r6
      004662 8D F0            [24] 4952 	mov	b,r5
      004664 12 70 79         [24] 4953 	lcall	__gptrget
      004667 FC               [12] 4954 	mov	r4,a
      004668 70 03            [24] 4955 	jnz	01342$
      00466A 02 56 65         [24] 4956 	ljmp	00249$
      00466D                       4957 01342$:
      00466D 7B 00            [12] 4958 	mov	r3,#0x00
      00466F 8C 82            [24] 4959 	mov	dpl,r4
      004671 8B 83            [24] 4960 	mov	dph,r3
      004673 12 2C 1F         [24] 4961 	lcall	_putchar
      004676 0F               [12] 4962 	inc	r7
                                   4963 ;	calc.c:246: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004677 BF 00 E4         [24] 4964 	cjne	r7,#0x00,00442$
      00467A 0E               [12] 4965 	inc	r6
      00467B 80 E1            [24] 4966 	sjmp	00442$
      00467D                       4967 00186$:
                                   4968 ;	calc.c:247: else if (!stack_pop(ctx->ps, &d1)) {
      00467D C0 05            [24] 4969 	push	ar5
      00467F C0 06            [24] 4970 	push	ar6
      004681 C0 07            [24] 4971 	push	ar7
      004683 E5 08            [12] 4972 	mov	a,_bp
      004685 24 19            [12] 4973 	add	a,#0x19
      004687 FC               [12] 4974 	mov	r4,a
      004688 7B 00            [12] 4975 	mov	r3,#0x00
      00468A 7A 40            [12] 4976 	mov	r2,#0x40
      00468C E5 08            [12] 4977 	mov	a,_bp
      00468E 24 0B            [12] 4978 	add	a,#0x0b
      004690 F8               [12] 4979 	mov	r0,a
      004691 86 82            [24] 4980 	mov	dpl,@r0
      004693 08               [12] 4981 	inc	r0
      004694 86 83            [24] 4982 	mov	dph,@r0
      004696 08               [12] 4983 	inc	r0
      004697 86 F0            [24] 4984 	mov	b,@r0
      004699 12 70 79         [24] 4985 	lcall	__gptrget
      00469C FD               [12] 4986 	mov	r5,a
      00469D A3               [24] 4987 	inc	dptr
      00469E 12 70 79         [24] 4988 	lcall	__gptrget
      0046A1 FE               [12] 4989 	mov	r6,a
      0046A2 A3               [24] 4990 	inc	dptr
      0046A3 12 70 79         [24] 4991 	lcall	__gptrget
      0046A6 FF               [12] 4992 	mov	r7,a
      0046A7 C0 05            [24] 4993 	push	ar5
      0046A9 C0 04            [24] 4994 	push	ar4
      0046AB C0 03            [24] 4995 	push	ar3
      0046AD C0 02            [24] 4996 	push	ar2
      0046AF 8D 82            [24] 4997 	mov	dpl,r5
      0046B1 8E 83            [24] 4998 	mov	dph,r6
      0046B3 8F F0            [24] 4999 	mov	b,r7
      0046B5 12 27 B4         [24] 5000 	lcall	_stack_pop
      0046B8 AE 82            [24] 5001 	mov	r6,dpl
      0046BA AF 83            [24] 5002 	mov	r7,dph
      0046BC 15 81            [12] 5003 	dec	sp
      0046BE 15 81            [12] 5004 	dec	sp
      0046C0 15 81            [12] 5005 	dec	sp
      0046C2 D0 05            [24] 5006 	pop	ar5
      0046C4 EE               [12] 5007 	mov	a,r6
      0046C5 4F               [12] 5008 	orl	a,r7
      0046C6 D0 07            [24] 5009 	pop	ar7
      0046C8 D0 06            [24] 5010 	pop	ar6
      0046CA D0 05            [24] 5011 	pop	ar5
      0046CC 70 63            [24] 5012 	jnz	00183$
                                   5013 ;	calc.c:248: (void)stack_push(ctx->ps, d0);
      0046CE E5 08            [12] 5014 	mov	a,_bp
      0046D0 24 0B            [12] 5015 	add	a,#0x0b
      0046D2 F8               [12] 5016 	mov	r0,a
      0046D3 86 82            [24] 5017 	mov	dpl,@r0
      0046D5 08               [12] 5018 	inc	r0
      0046D6 86 83            [24] 5019 	mov	dph,@r0
      0046D8 08               [12] 5020 	inc	r0
      0046D9 86 F0            [24] 5021 	mov	b,@r0
      0046DB 12 70 79         [24] 5022 	lcall	__gptrget
      0046DE FA               [12] 5023 	mov	r2,a
      0046DF A3               [24] 5024 	inc	dptr
      0046E0 12 70 79         [24] 5025 	lcall	__gptrget
      0046E3 FB               [12] 5026 	mov	r3,a
      0046E4 A3               [24] 5027 	inc	dptr
      0046E5 12 70 79         [24] 5028 	lcall	__gptrget
      0046E8 FC               [12] 5029 	mov	r4,a
      0046E9 E5 08            [12] 5030 	mov	a,_bp
      0046EB 24 15            [12] 5031 	add	a,#0x15
      0046ED F8               [12] 5032 	mov	r0,a
      0046EE E6               [12] 5033 	mov	a,@r0
      0046EF C0 E0            [24] 5034 	push	acc
      0046F1 08               [12] 5035 	inc	r0
      0046F2 E6               [12] 5036 	mov	a,@r0
      0046F3 C0 E0            [24] 5037 	push	acc
      0046F5 08               [12] 5038 	inc	r0
      0046F6 E6               [12] 5039 	mov	a,@r0
      0046F7 C0 E0            [24] 5040 	push	acc
      0046F9 08               [12] 5041 	inc	r0
      0046FA E6               [12] 5042 	mov	a,@r0
      0046FB C0 E0            [24] 5043 	push	acc
      0046FD 8A 82            [24] 5044 	mov	dpl,r2
      0046FF 8B 83            [24] 5045 	mov	dph,r3
      004701 8C F0            [24] 5046 	mov	b,r4
      004703 12 26 BA         [24] 5047 	lcall	_stack_push
      004706 E5 81            [12] 5048 	mov	a,sp
      004708 24 FC            [12] 5049 	add	a,#0xfc
      00470A F5 81            [12] 5050 	mov	sp,a
                                   5051 ;	calc.c:249: printstr("\r\nstack underflow\r\n");
      00470C 7F 3E            [12] 5052 	mov	r7,#___str_10
      00470E 7E 89            [12] 5053 	mov	r6,#(___str_10 >> 8)
      004710 7D 80            [12] 5054 	mov	r5,#0x80
                                   5055 ;	calc.c:51: return;
      004712                       5056 00445$:
                                   5057 ;	calc.c:49: for (; *s; s++) putchar(*s);
      004712 8F 82            [24] 5058 	mov	dpl,r7
      004714 8E 83            [24] 5059 	mov	dph,r6
      004716 8D F0            [24] 5060 	mov	b,r5
      004718 12 70 79         [24] 5061 	lcall	__gptrget
      00471B FC               [12] 5062 	mov	r4,a
      00471C 70 03            [24] 5063 	jnz	01345$
      00471E 02 56 65         [24] 5064 	ljmp	00249$
      004721                       5065 01345$:
      004721 7B 00            [12] 5066 	mov	r3,#0x00
      004723 8C 82            [24] 5067 	mov	dpl,r4
      004725 8B 83            [24] 5068 	mov	dph,r3
      004727 12 2C 1F         [24] 5069 	lcall	_putchar
      00472A 0F               [12] 5070 	inc	r7
                                   5071 ;	calc.c:249: printstr("\r\nstack underflow\r\n");
      00472B BF 00 E4         [24] 5072 	cjne	r7,#0x00,00445$
      00472E 0E               [12] 5073 	inc	r6
      00472F 80 E1            [24] 5074 	sjmp	00445$
      004731                       5075 00183$:
                                   5076 ;	calc.c:250: } else if (!d0) {
      004731 E5 08            [12] 5077 	mov	a,_bp
      004733 24 15            [12] 5078 	add	a,#0x15
      004735 F8               [12] 5079 	mov	r0,a
      004736 E6               [12] 5080 	mov	a,@r0
      004737 08               [12] 5081 	inc	r0
      004738 46               [12] 5082 	orl	a,@r0
      004739 08               [12] 5083 	inc	r0
      00473A 46               [12] 5084 	orl	a,@r0
      00473B 08               [12] 5085 	inc	r0
      00473C 46               [12] 5086 	orl	a,@r0
      00473D 60 03            [24] 5087 	jz	01347$
      00473F 02 47 E3         [24] 5088 	ljmp	00180$
      004742                       5089 01347$:
                                   5090 ;	calc.c:251: (void)stack_push(ctx->ps, d1);
      004742 E5 08            [12] 5091 	mov	a,_bp
      004744 24 0B            [12] 5092 	add	a,#0x0b
      004746 F8               [12] 5093 	mov	r0,a
      004747 86 82            [24] 5094 	mov	dpl,@r0
      004749 08               [12] 5095 	inc	r0
      00474A 86 83            [24] 5096 	mov	dph,@r0
      00474C 08               [12] 5097 	inc	r0
      00474D 86 F0            [24] 5098 	mov	b,@r0
      00474F 12 70 79         [24] 5099 	lcall	__gptrget
      004752 FA               [12] 5100 	mov	r2,a
      004753 A3               [24] 5101 	inc	dptr
      004754 12 70 79         [24] 5102 	lcall	__gptrget
      004757 FB               [12] 5103 	mov	r3,a
      004758 A3               [24] 5104 	inc	dptr
      004759 12 70 79         [24] 5105 	lcall	__gptrget
      00475C FC               [12] 5106 	mov	r4,a
      00475D E5 08            [12] 5107 	mov	a,_bp
      00475F 24 19            [12] 5108 	add	a,#0x19
      004761 F8               [12] 5109 	mov	r0,a
      004762 E6               [12] 5110 	mov	a,@r0
      004763 C0 E0            [24] 5111 	push	acc
      004765 08               [12] 5112 	inc	r0
      004766 E6               [12] 5113 	mov	a,@r0
      004767 C0 E0            [24] 5114 	push	acc
      004769 08               [12] 5115 	inc	r0
      00476A E6               [12] 5116 	mov	a,@r0
      00476B C0 E0            [24] 5117 	push	acc
      00476D 08               [12] 5118 	inc	r0
      00476E E6               [12] 5119 	mov	a,@r0
      00476F C0 E0            [24] 5120 	push	acc
      004771 8A 82            [24] 5121 	mov	dpl,r2
      004773 8B 83            [24] 5122 	mov	dph,r3
      004775 8C F0            [24] 5123 	mov	b,r4
      004777 12 26 BA         [24] 5124 	lcall	_stack_push
      00477A E5 81            [12] 5125 	mov	a,sp
      00477C 24 FC            [12] 5126 	add	a,#0xfc
      00477E F5 81            [12] 5127 	mov	sp,a
                                   5128 ;	calc.c:252: (void)stack_push(ctx->ps, d0);			
      004780 E5 08            [12] 5129 	mov	a,_bp
      004782 24 0B            [12] 5130 	add	a,#0x0b
      004784 F8               [12] 5131 	mov	r0,a
      004785 86 82            [24] 5132 	mov	dpl,@r0
      004787 08               [12] 5133 	inc	r0
      004788 86 83            [24] 5134 	mov	dph,@r0
      00478A 08               [12] 5135 	inc	r0
      00478B 86 F0            [24] 5136 	mov	b,@r0
      00478D 12 70 79         [24] 5137 	lcall	__gptrget
      004790 FA               [12] 5138 	mov	r2,a
      004791 A3               [24] 5139 	inc	dptr
      004792 12 70 79         [24] 5140 	lcall	__gptrget
      004795 FB               [12] 5141 	mov	r3,a
      004796 A3               [24] 5142 	inc	dptr
      004797 12 70 79         [24] 5143 	lcall	__gptrget
      00479A FC               [12] 5144 	mov	r4,a
      00479B E5 08            [12] 5145 	mov	a,_bp
      00479D 24 15            [12] 5146 	add	a,#0x15
      00479F F8               [12] 5147 	mov	r0,a
      0047A0 E6               [12] 5148 	mov	a,@r0
      0047A1 C0 E0            [24] 5149 	push	acc
      0047A3 08               [12] 5150 	inc	r0
      0047A4 E6               [12] 5151 	mov	a,@r0
      0047A5 C0 E0            [24] 5152 	push	acc
      0047A7 08               [12] 5153 	inc	r0
      0047A8 E6               [12] 5154 	mov	a,@r0
      0047A9 C0 E0            [24] 5155 	push	acc
      0047AB 08               [12] 5156 	inc	r0
      0047AC E6               [12] 5157 	mov	a,@r0
      0047AD C0 E0            [24] 5158 	push	acc
      0047AF 8A 82            [24] 5159 	mov	dpl,r2
      0047B1 8B 83            [24] 5160 	mov	dph,r3
      0047B3 8C F0            [24] 5161 	mov	b,r4
      0047B5 12 26 BA         [24] 5162 	lcall	_stack_push
      0047B8 E5 81            [12] 5163 	mov	a,sp
      0047BA 24 FC            [12] 5164 	add	a,#0xfc
      0047BC F5 81            [12] 5165 	mov	sp,a
                                   5166 ;	calc.c:253: printstr("\r\ndivision by zero\r\n");
      0047BE 7F A0            [12] 5167 	mov	r7,#___str_14
      0047C0 7E 89            [12] 5168 	mov	r6,#(___str_14 >> 8)
      0047C2 7D 80            [12] 5169 	mov	r5,#0x80
                                   5170 ;	calc.c:51: return;
      0047C4                       5171 00448$:
                                   5172 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0047C4 8F 82            [24] 5173 	mov	dpl,r7
      0047C6 8E 83            [24] 5174 	mov	dph,r6
      0047C8 8D F0            [24] 5175 	mov	b,r5
      0047CA 12 70 79         [24] 5176 	lcall	__gptrget
      0047CD FC               [12] 5177 	mov	r4,a
      0047CE 70 03            [24] 5178 	jnz	01348$
      0047D0 02 56 65         [24] 5179 	ljmp	00249$
      0047D3                       5180 01348$:
      0047D3 7B 00            [12] 5181 	mov	r3,#0x00
      0047D5 8C 82            [24] 5182 	mov	dpl,r4
      0047D7 8B 83            [24] 5183 	mov	dph,r3
      0047D9 12 2C 1F         [24] 5184 	lcall	_putchar
      0047DC 0F               [12] 5185 	inc	r7
                                   5186 ;	calc.c:253: printstr("\r\ndivision by zero\r\n");
      0047DD BF 00 E4         [24] 5187 	cjne	r7,#0x00,00448$
      0047E0 0E               [12] 5188 	inc	r6
      0047E1 80 E1            [24] 5189 	sjmp	00448$
      0047E3                       5190 00180$:
                                   5191 ;	calc.c:255: if (ctx->digit[0] == '/') d1 /= d0;
      0047E3 8D 82            [24] 5192 	mov	dpl,r5
      0047E5 8E 83            [24] 5193 	mov	dph,r6
      0047E7 8F F0            [24] 5194 	mov	b,r7
      0047E9 12 70 79         [24] 5195 	lcall	__gptrget
      0047EC FC               [12] 5196 	mov	r4,a
      0047ED BC 2F 45         [24] 5197 	cjne	r4,#0x2f,00177$
      0047F0 E5 08            [12] 5198 	mov	a,_bp
      0047F2 24 15            [12] 5199 	add	a,#0x15
      0047F4 F8               [12] 5200 	mov	r0,a
      0047F5 E6               [12] 5201 	mov	a,@r0
      0047F6 C0 E0            [24] 5202 	push	acc
      0047F8 08               [12] 5203 	inc	r0
      0047F9 E6               [12] 5204 	mov	a,@r0
      0047FA C0 E0            [24] 5205 	push	acc
      0047FC 08               [12] 5206 	inc	r0
      0047FD E6               [12] 5207 	mov	a,@r0
      0047FE C0 E0            [24] 5208 	push	acc
      004800 08               [12] 5209 	inc	r0
      004801 E6               [12] 5210 	mov	a,@r0
      004802 C0 E0            [24] 5211 	push	acc
      004804 E5 08            [12] 5212 	mov	a,_bp
      004806 24 19            [12] 5213 	add	a,#0x19
      004808 F8               [12] 5214 	mov	r0,a
      004809 86 82            [24] 5215 	mov	dpl,@r0
      00480B 08               [12] 5216 	inc	r0
      00480C 86 83            [24] 5217 	mov	dph,@r0
      00480E 08               [12] 5218 	inc	r0
      00480F 86 F0            [24] 5219 	mov	b,@r0
      004811 08               [12] 5220 	inc	r0
      004812 E6               [12] 5221 	mov	a,@r0
      004813 12 6E 70         [24] 5222 	lcall	__divslong
      004816 AF 82            [24] 5223 	mov	r7,dpl
      004818 AE 83            [24] 5224 	mov	r6,dph
      00481A AD F0            [24] 5225 	mov	r5,b
      00481C FC               [12] 5226 	mov	r4,a
      00481D E5 81            [12] 5227 	mov	a,sp
      00481F 24 FC            [12] 5228 	add	a,#0xfc
      004821 F5 81            [12] 5229 	mov	sp,a
      004823 E5 08            [12] 5230 	mov	a,_bp
      004825 24 19            [12] 5231 	add	a,#0x19
      004827 F8               [12] 5232 	mov	r0,a
      004828 A6 07            [24] 5233 	mov	@r0,ar7
      00482A 08               [12] 5234 	inc	r0
      00482B A6 06            [24] 5235 	mov	@r0,ar6
      00482D 08               [12] 5236 	inc	r0
      00482E A6 05            [24] 5237 	mov	@r0,ar5
      004830 08               [12] 5238 	inc	r0
      004831 A6 04            [24] 5239 	mov	@r0,ar4
      004833 80 63            [24] 5240 	sjmp	00178$
      004835                       5241 00177$:
                                   5242 ;	calc.c:256: else d1 = (unsigned long)d1 / (unsigned long)d0;
      004835 E5 08            [12] 5243 	mov	a,_bp
      004837 24 19            [12] 5244 	add	a,#0x19
      004839 F8               [12] 5245 	mov	r0,a
      00483A 86 07            [24] 5246 	mov	ar7,@r0
      00483C 08               [12] 5247 	inc	r0
      00483D 86 06            [24] 5248 	mov	ar6,@r0
      00483F 08               [12] 5249 	inc	r0
      004840 86 05            [24] 5250 	mov	ar5,@r0
      004842 08               [12] 5251 	inc	r0
      004843 86 04            [24] 5252 	mov	ar4,@r0
      004845 E5 08            [12] 5253 	mov	a,_bp
      004847 24 15            [12] 5254 	add	a,#0x15
      004849 F8               [12] 5255 	mov	r0,a
      00484A E5 08            [12] 5256 	mov	a,_bp
      00484C 24 0E            [12] 5257 	add	a,#0x0e
      00484E F9               [12] 5258 	mov	r1,a
      00484F E6               [12] 5259 	mov	a,@r0
      004850 F7               [12] 5260 	mov	@r1,a
      004851 08               [12] 5261 	inc	r0
      004852 09               [12] 5262 	inc	r1
      004853 E6               [12] 5263 	mov	a,@r0
      004854 F7               [12] 5264 	mov	@r1,a
      004855 08               [12] 5265 	inc	r0
      004856 09               [12] 5266 	inc	r1
      004857 E6               [12] 5267 	mov	a,@r0
      004858 F7               [12] 5268 	mov	@r1,a
      004859 08               [12] 5269 	inc	r0
      00485A 09               [12] 5270 	inc	r1
      00485B E6               [12] 5271 	mov	a,@r0
      00485C F7               [12] 5272 	mov	@r1,a
      00485D E5 08            [12] 5273 	mov	a,_bp
      00485F 24 0E            [12] 5274 	add	a,#0x0e
      004861 F8               [12] 5275 	mov	r0,a
      004862 E6               [12] 5276 	mov	a,@r0
      004863 C0 E0            [24] 5277 	push	acc
      004865 08               [12] 5278 	inc	r0
      004866 E6               [12] 5279 	mov	a,@r0
      004867 C0 E0            [24] 5280 	push	acc
      004869 08               [12] 5281 	inc	r0
      00486A E6               [12] 5282 	mov	a,@r0
      00486B C0 E0            [24] 5283 	push	acc
      00486D 08               [12] 5284 	inc	r0
      00486E E6               [12] 5285 	mov	a,@r0
      00486F C0 E0            [24] 5286 	push	acc
      004871 8F 82            [24] 5287 	mov	dpl,r7
      004873 8E 83            [24] 5288 	mov	dph,r6
      004875 8D F0            [24] 5289 	mov	b,r5
      004877 EC               [12] 5290 	mov	a,r4
      004878 12 6F 6D         [24] 5291 	lcall	__divulong
      00487B AF 82            [24] 5292 	mov	r7,dpl
      00487D AE 83            [24] 5293 	mov	r6,dph
      00487F AD F0            [24] 5294 	mov	r5,b
      004881 FC               [12] 5295 	mov	r4,a
      004882 E5 81            [12] 5296 	mov	a,sp
      004884 24 FC            [12] 5297 	add	a,#0xfc
      004886 F5 81            [12] 5298 	mov	sp,a
      004888 E5 08            [12] 5299 	mov	a,_bp
      00488A 24 19            [12] 5300 	add	a,#0x19
      00488C F8               [12] 5301 	mov	r0,a
      00488D A6 07            [24] 5302 	mov	@r0,ar7
      00488F 08               [12] 5303 	inc	r0
      004890 A6 06            [24] 5304 	mov	@r0,ar6
      004892 08               [12] 5305 	inc	r0
      004893 A6 05            [24] 5306 	mov	@r0,ar5
      004895 08               [12] 5307 	inc	r0
      004896 A6 04            [24] 5308 	mov	@r0,ar4
      004898                       5309 00178$:
                                   5310 ;	calc.c:257: (void)stack_push(ctx->ps, d1);
      004898 E5 08            [12] 5311 	mov	a,_bp
      00489A 24 0B            [12] 5312 	add	a,#0x0b
      00489C F8               [12] 5313 	mov	r0,a
      00489D 86 82            [24] 5314 	mov	dpl,@r0
      00489F 08               [12] 5315 	inc	r0
      0048A0 86 83            [24] 5316 	mov	dph,@r0
      0048A2 08               [12] 5317 	inc	r0
      0048A3 86 F0            [24] 5318 	mov	b,@r0
      0048A5 12 70 79         [24] 5319 	lcall	__gptrget
      0048A8 FA               [12] 5320 	mov	r2,a
      0048A9 A3               [24] 5321 	inc	dptr
      0048AA 12 70 79         [24] 5322 	lcall	__gptrget
      0048AD FB               [12] 5323 	mov	r3,a
      0048AE A3               [24] 5324 	inc	dptr
      0048AF 12 70 79         [24] 5325 	lcall	__gptrget
      0048B2 FC               [12] 5326 	mov	r4,a
      0048B3 E5 08            [12] 5327 	mov	a,_bp
      0048B5 24 19            [12] 5328 	add	a,#0x19
      0048B7 F8               [12] 5329 	mov	r0,a
      0048B8 E6               [12] 5330 	mov	a,@r0
      0048B9 C0 E0            [24] 5331 	push	acc
      0048BB 08               [12] 5332 	inc	r0
      0048BC E6               [12] 5333 	mov	a,@r0
      0048BD C0 E0            [24] 5334 	push	acc
      0048BF 08               [12] 5335 	inc	r0
      0048C0 E6               [12] 5336 	mov	a,@r0
      0048C1 C0 E0            [24] 5337 	push	acc
      0048C3 08               [12] 5338 	inc	r0
      0048C4 E6               [12] 5339 	mov	a,@r0
      0048C5 C0 E0            [24] 5340 	push	acc
      0048C7 8A 82            [24] 5341 	mov	dpl,r2
      0048C9 8B 83            [24] 5342 	mov	dph,r3
      0048CB 8C F0            [24] 5343 	mov	b,r4
      0048CD 12 26 BA         [24] 5344 	lcall	_stack_push
      0048D0 E5 81            [12] 5345 	mov	a,sp
      0048D2 24 FC            [12] 5346 	add	a,#0xfc
      0048D4 F5 81            [12] 5347 	mov	sp,a
                                   5348 ;	calc.c:259: break;
      0048D6 02 56 65         [24] 5349 	ljmp	00249$
                                   5350 ;	calc.c:261: case '#':
      0048D9                       5351 00189$:
                                   5352 ;	calc.c:262: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0048D9 C0 05            [24] 5353 	push	ar5
      0048DB C0 06            [24] 5354 	push	ar6
      0048DD C0 07            [24] 5355 	push	ar7
      0048DF E5 08            [12] 5356 	mov	a,_bp
      0048E1 24 15            [12] 5357 	add	a,#0x15
      0048E3 FC               [12] 5358 	mov	r4,a
      0048E4 7B 00            [12] 5359 	mov	r3,#0x00
      0048E6 7A 40            [12] 5360 	mov	r2,#0x40
      0048E8 E5 08            [12] 5361 	mov	a,_bp
      0048EA 24 12            [12] 5362 	add	a,#0x12
      0048EC F8               [12] 5363 	mov	r0,a
      0048ED E5 08            [12] 5364 	mov	a,_bp
      0048EF 24 0E            [12] 5365 	add	a,#0x0e
      0048F1 F9               [12] 5366 	mov	r1,a
      0048F2 74 13            [12] 5367 	mov	a,#0x13
      0048F4 26               [12] 5368 	add	a,@r0
      0048F5 F7               [12] 5369 	mov	@r1,a
      0048F6 74 40            [12] 5370 	mov	a,#0x40
      0048F8 08               [12] 5371 	inc	r0
      0048F9 36               [12] 5372 	addc	a,@r0
      0048FA 09               [12] 5373 	inc	r1
      0048FB F7               [12] 5374 	mov	@r1,a
      0048FC 08               [12] 5375 	inc	r0
      0048FD 09               [12] 5376 	inc	r1
      0048FE E6               [12] 5377 	mov	a,@r0
      0048FF F7               [12] 5378 	mov	@r1,a
      004900 E5 08            [12] 5379 	mov	a,_bp
      004902 24 0E            [12] 5380 	add	a,#0x0e
      004904 F8               [12] 5381 	mov	r0,a
      004905 86 82            [24] 5382 	mov	dpl,@r0
      004907 08               [12] 5383 	inc	r0
      004908 86 83            [24] 5384 	mov	dph,@r0
      00490A 08               [12] 5385 	inc	r0
      00490B 86 F0            [24] 5386 	mov	b,@r0
      00490D 12 70 79         [24] 5387 	lcall	__gptrget
      004910 FD               [12] 5388 	mov	r5,a
      004911 A3               [24] 5389 	inc	dptr
      004912 12 70 79         [24] 5390 	lcall	__gptrget
      004915 FE               [12] 5391 	mov	r6,a
      004916 A3               [24] 5392 	inc	dptr
      004917 12 70 79         [24] 5393 	lcall	__gptrget
      00491A FF               [12] 5394 	mov	r7,a
      00491B C0 05            [24] 5395 	push	ar5
      00491D C0 04            [24] 5396 	push	ar4
      00491F C0 03            [24] 5397 	push	ar3
      004921 C0 02            [24] 5398 	push	ar2
      004923 8D 82            [24] 5399 	mov	dpl,r5
      004925 8E 83            [24] 5400 	mov	dph,r6
      004927 8F F0            [24] 5401 	mov	b,r7
      004929 12 27 B4         [24] 5402 	lcall	_stack_pop
      00492C AE 82            [24] 5403 	mov	r6,dpl
      00492E AF 83            [24] 5404 	mov	r7,dph
      004930 15 81            [12] 5405 	dec	sp
      004932 15 81            [12] 5406 	dec	sp
      004934 15 81            [12] 5407 	dec	sp
      004936 D0 05            [24] 5408 	pop	ar5
      004938 EE               [12] 5409 	mov	a,r6
      004939 4F               [12] 5410 	orl	a,r7
      00493A D0 07            [24] 5411 	pop	ar7
      00493C D0 06            [24] 5412 	pop	ar6
      00493E D0 05            [24] 5413 	pop	ar5
      004940 70 25            [24] 5414 	jnz	00200$
      004942 7F 3E            [12] 5415 	mov	r7,#___str_10
      004944 7E 89            [12] 5416 	mov	r6,#(___str_10 >> 8)
      004946 7D 80            [12] 5417 	mov	r5,#0x80
                                   5418 ;	calc.c:51: return;
      004948                       5419 00451$:
                                   5420 ;	calc.c:49: for (; *s; s++) putchar(*s);
      004948 8F 82            [24] 5421 	mov	dpl,r7
      00494A 8E 83            [24] 5422 	mov	dph,r6
      00494C 8D F0            [24] 5423 	mov	b,r5
      00494E 12 70 79         [24] 5424 	lcall	__gptrget
      004951 FC               [12] 5425 	mov	r4,a
      004952 70 03            [24] 5426 	jnz	01353$
      004954 02 56 65         [24] 5427 	ljmp	00249$
      004957                       5428 01353$:
      004957 7B 00            [12] 5429 	mov	r3,#0x00
      004959 8C 82            [24] 5430 	mov	dpl,r4
      00495B 8B 83            [24] 5431 	mov	dph,r3
      00495D 12 2C 1F         [24] 5432 	lcall	_putchar
      004960 0F               [12] 5433 	inc	r7
                                   5434 ;	calc.c:262: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004961 BF 00 E4         [24] 5435 	cjne	r7,#0x00,00451$
      004964 0E               [12] 5436 	inc	r6
      004965 80 E1            [24] 5437 	sjmp	00451$
      004967                       5438 00200$:
                                   5439 ;	calc.c:263: else if (!stack_pop(ctx->ps, &d1)) {
      004967 C0 05            [24] 5440 	push	ar5
      004969 C0 06            [24] 5441 	push	ar6
      00496B C0 07            [24] 5442 	push	ar7
      00496D E5 08            [12] 5443 	mov	a,_bp
      00496F 24 19            [12] 5444 	add	a,#0x19
      004971 FC               [12] 5445 	mov	r4,a
      004972 7B 00            [12] 5446 	mov	r3,#0x00
      004974 7A 40            [12] 5447 	mov	r2,#0x40
      004976 E5 08            [12] 5448 	mov	a,_bp
      004978 24 0E            [12] 5449 	add	a,#0x0e
      00497A F8               [12] 5450 	mov	r0,a
      00497B 86 82            [24] 5451 	mov	dpl,@r0
      00497D 08               [12] 5452 	inc	r0
      00497E 86 83            [24] 5453 	mov	dph,@r0
      004980 08               [12] 5454 	inc	r0
      004981 86 F0            [24] 5455 	mov	b,@r0
      004983 12 70 79         [24] 5456 	lcall	__gptrget
      004986 FD               [12] 5457 	mov	r5,a
      004987 A3               [24] 5458 	inc	dptr
      004988 12 70 79         [24] 5459 	lcall	__gptrget
      00498B FE               [12] 5460 	mov	r6,a
      00498C A3               [24] 5461 	inc	dptr
      00498D 12 70 79         [24] 5462 	lcall	__gptrget
      004990 FF               [12] 5463 	mov	r7,a
      004991 C0 05            [24] 5464 	push	ar5
      004993 C0 04            [24] 5465 	push	ar4
      004995 C0 03            [24] 5466 	push	ar3
      004997 C0 02            [24] 5467 	push	ar2
      004999 8D 82            [24] 5468 	mov	dpl,r5
      00499B 8E 83            [24] 5469 	mov	dph,r6
      00499D 8F F0            [24] 5470 	mov	b,r7
      00499F 12 27 B4         [24] 5471 	lcall	_stack_pop
      0049A2 AE 82            [24] 5472 	mov	r6,dpl
      0049A4 AF 83            [24] 5473 	mov	r7,dph
      0049A6 15 81            [12] 5474 	dec	sp
      0049A8 15 81            [12] 5475 	dec	sp
      0049AA 15 81            [12] 5476 	dec	sp
      0049AC D0 05            [24] 5477 	pop	ar5
      0049AE EE               [12] 5478 	mov	a,r6
      0049AF 4F               [12] 5479 	orl	a,r7
      0049B0 D0 07            [24] 5480 	pop	ar7
      0049B2 D0 06            [24] 5481 	pop	ar6
      0049B4 D0 05            [24] 5482 	pop	ar5
      0049B6 70 63            [24] 5483 	jnz	00197$
                                   5484 ;	calc.c:264: (void)stack_push(ctx->ps, d0);
      0049B8 E5 08            [12] 5485 	mov	a,_bp
      0049BA 24 0E            [12] 5486 	add	a,#0x0e
      0049BC F8               [12] 5487 	mov	r0,a
      0049BD 86 82            [24] 5488 	mov	dpl,@r0
      0049BF 08               [12] 5489 	inc	r0
      0049C0 86 83            [24] 5490 	mov	dph,@r0
      0049C2 08               [12] 5491 	inc	r0
      0049C3 86 F0            [24] 5492 	mov	b,@r0
      0049C5 12 70 79         [24] 5493 	lcall	__gptrget
      0049C8 FA               [12] 5494 	mov	r2,a
      0049C9 A3               [24] 5495 	inc	dptr
      0049CA 12 70 79         [24] 5496 	lcall	__gptrget
      0049CD FB               [12] 5497 	mov	r3,a
      0049CE A3               [24] 5498 	inc	dptr
      0049CF 12 70 79         [24] 5499 	lcall	__gptrget
      0049D2 FC               [12] 5500 	mov	r4,a
      0049D3 E5 08            [12] 5501 	mov	a,_bp
      0049D5 24 15            [12] 5502 	add	a,#0x15
      0049D7 F8               [12] 5503 	mov	r0,a
      0049D8 E6               [12] 5504 	mov	a,@r0
      0049D9 C0 E0            [24] 5505 	push	acc
      0049DB 08               [12] 5506 	inc	r0
      0049DC E6               [12] 5507 	mov	a,@r0
      0049DD C0 E0            [24] 5508 	push	acc
      0049DF 08               [12] 5509 	inc	r0
      0049E0 E6               [12] 5510 	mov	a,@r0
      0049E1 C0 E0            [24] 5511 	push	acc
      0049E3 08               [12] 5512 	inc	r0
      0049E4 E6               [12] 5513 	mov	a,@r0
      0049E5 C0 E0            [24] 5514 	push	acc
      0049E7 8A 82            [24] 5515 	mov	dpl,r2
      0049E9 8B 83            [24] 5516 	mov	dph,r3
      0049EB 8C F0            [24] 5517 	mov	b,r4
      0049ED 12 26 BA         [24] 5518 	lcall	_stack_push
      0049F0 E5 81            [12] 5519 	mov	a,sp
      0049F2 24 FC            [12] 5520 	add	a,#0xfc
      0049F4 F5 81            [12] 5521 	mov	sp,a
                                   5522 ;	calc.c:265: printstr("\r\nstack underflow\r\n");
      0049F6 7F 3E            [12] 5523 	mov	r7,#___str_10
      0049F8 7E 89            [12] 5524 	mov	r6,#(___str_10 >> 8)
      0049FA 7D 80            [12] 5525 	mov	r5,#0x80
                                   5526 ;	calc.c:51: return;
      0049FC                       5527 00454$:
                                   5528 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0049FC 8F 82            [24] 5529 	mov	dpl,r7
      0049FE 8E 83            [24] 5530 	mov	dph,r6
      004A00 8D F0            [24] 5531 	mov	b,r5
      004A02 12 70 79         [24] 5532 	lcall	__gptrget
      004A05 FC               [12] 5533 	mov	r4,a
      004A06 70 03            [24] 5534 	jnz	01356$
      004A08 02 56 65         [24] 5535 	ljmp	00249$
      004A0B                       5536 01356$:
      004A0B 7B 00            [12] 5537 	mov	r3,#0x00
      004A0D 8C 82            [24] 5538 	mov	dpl,r4
      004A0F 8B 83            [24] 5539 	mov	dph,r3
      004A11 12 2C 1F         [24] 5540 	lcall	_putchar
      004A14 0F               [12] 5541 	inc	r7
                                   5542 ;	calc.c:265: printstr("\r\nstack underflow\r\n");
      004A15 BF 00 E4         [24] 5543 	cjne	r7,#0x00,00454$
      004A18 0E               [12] 5544 	inc	r6
      004A19 80 E1            [24] 5545 	sjmp	00454$
      004A1B                       5546 00197$:
                                   5547 ;	calc.c:266: } else if (!d0) {
      004A1B E5 08            [12] 5548 	mov	a,_bp
      004A1D 24 15            [12] 5549 	add	a,#0x15
      004A1F F8               [12] 5550 	mov	r0,a
      004A20 E6               [12] 5551 	mov	a,@r0
      004A21 08               [12] 5552 	inc	r0
      004A22 46               [12] 5553 	orl	a,@r0
      004A23 08               [12] 5554 	inc	r0
      004A24 46               [12] 5555 	orl	a,@r0
      004A25 08               [12] 5556 	inc	r0
      004A26 46               [12] 5557 	orl	a,@r0
      004A27 60 03            [24] 5558 	jz	01358$
      004A29 02 4A CD         [24] 5559 	ljmp	00194$
      004A2C                       5560 01358$:
                                   5561 ;	calc.c:267: (void)stack_push(ctx->ps, d1);
      004A2C E5 08            [12] 5562 	mov	a,_bp
      004A2E 24 0E            [12] 5563 	add	a,#0x0e
      004A30 F8               [12] 5564 	mov	r0,a
      004A31 86 82            [24] 5565 	mov	dpl,@r0
      004A33 08               [12] 5566 	inc	r0
      004A34 86 83            [24] 5567 	mov	dph,@r0
      004A36 08               [12] 5568 	inc	r0
      004A37 86 F0            [24] 5569 	mov	b,@r0
      004A39 12 70 79         [24] 5570 	lcall	__gptrget
      004A3C FA               [12] 5571 	mov	r2,a
      004A3D A3               [24] 5572 	inc	dptr
      004A3E 12 70 79         [24] 5573 	lcall	__gptrget
      004A41 FB               [12] 5574 	mov	r3,a
      004A42 A3               [24] 5575 	inc	dptr
      004A43 12 70 79         [24] 5576 	lcall	__gptrget
      004A46 FC               [12] 5577 	mov	r4,a
      004A47 E5 08            [12] 5578 	mov	a,_bp
      004A49 24 19            [12] 5579 	add	a,#0x19
      004A4B F8               [12] 5580 	mov	r0,a
      004A4C E6               [12] 5581 	mov	a,@r0
      004A4D C0 E0            [24] 5582 	push	acc
      004A4F 08               [12] 5583 	inc	r0
      004A50 E6               [12] 5584 	mov	a,@r0
      004A51 C0 E0            [24] 5585 	push	acc
      004A53 08               [12] 5586 	inc	r0
      004A54 E6               [12] 5587 	mov	a,@r0
      004A55 C0 E0            [24] 5588 	push	acc
      004A57 08               [12] 5589 	inc	r0
      004A58 E6               [12] 5590 	mov	a,@r0
      004A59 C0 E0            [24] 5591 	push	acc
      004A5B 8A 82            [24] 5592 	mov	dpl,r2
      004A5D 8B 83            [24] 5593 	mov	dph,r3
      004A5F 8C F0            [24] 5594 	mov	b,r4
      004A61 12 26 BA         [24] 5595 	lcall	_stack_push
      004A64 E5 81            [12] 5596 	mov	a,sp
      004A66 24 FC            [12] 5597 	add	a,#0xfc
      004A68 F5 81            [12] 5598 	mov	sp,a
                                   5599 ;	calc.c:268: (void)stack_push(ctx->ps, d0);			
      004A6A E5 08            [12] 5600 	mov	a,_bp
      004A6C 24 0E            [12] 5601 	add	a,#0x0e
      004A6E F8               [12] 5602 	mov	r0,a
      004A6F 86 82            [24] 5603 	mov	dpl,@r0
      004A71 08               [12] 5604 	inc	r0
      004A72 86 83            [24] 5605 	mov	dph,@r0
      004A74 08               [12] 5606 	inc	r0
      004A75 86 F0            [24] 5607 	mov	b,@r0
      004A77 12 70 79         [24] 5608 	lcall	__gptrget
      004A7A FA               [12] 5609 	mov	r2,a
      004A7B A3               [24] 5610 	inc	dptr
      004A7C 12 70 79         [24] 5611 	lcall	__gptrget
      004A7F FB               [12] 5612 	mov	r3,a
      004A80 A3               [24] 5613 	inc	dptr
      004A81 12 70 79         [24] 5614 	lcall	__gptrget
      004A84 FC               [12] 5615 	mov	r4,a
      004A85 E5 08            [12] 5616 	mov	a,_bp
      004A87 24 15            [12] 5617 	add	a,#0x15
      004A89 F8               [12] 5618 	mov	r0,a
      004A8A E6               [12] 5619 	mov	a,@r0
      004A8B C0 E0            [24] 5620 	push	acc
      004A8D 08               [12] 5621 	inc	r0
      004A8E E6               [12] 5622 	mov	a,@r0
      004A8F C0 E0            [24] 5623 	push	acc
      004A91 08               [12] 5624 	inc	r0
      004A92 E6               [12] 5625 	mov	a,@r0
      004A93 C0 E0            [24] 5626 	push	acc
      004A95 08               [12] 5627 	inc	r0
      004A96 E6               [12] 5628 	mov	a,@r0
      004A97 C0 E0            [24] 5629 	push	acc
      004A99 8A 82            [24] 5630 	mov	dpl,r2
      004A9B 8B 83            [24] 5631 	mov	dph,r3
      004A9D 8C F0            [24] 5632 	mov	b,r4
      004A9F 12 26 BA         [24] 5633 	lcall	_stack_push
      004AA2 E5 81            [12] 5634 	mov	a,sp
      004AA4 24 FC            [12] 5635 	add	a,#0xfc
      004AA6 F5 81            [12] 5636 	mov	sp,a
                                   5637 ;	calc.c:269: printstr("\r\ndivision by zero\r\n");
      004AA8 7F A0            [12] 5638 	mov	r7,#___str_14
      004AAA 7E 89            [12] 5639 	mov	r6,#(___str_14 >> 8)
      004AAC 7D 80            [12] 5640 	mov	r5,#0x80
                                   5641 ;	calc.c:51: return;
      004AAE                       5642 00457$:
                                   5643 ;	calc.c:49: for (; *s; s++) putchar(*s);
      004AAE 8F 82            [24] 5644 	mov	dpl,r7
      004AB0 8E 83            [24] 5645 	mov	dph,r6
      004AB2 8D F0            [24] 5646 	mov	b,r5
      004AB4 12 70 79         [24] 5647 	lcall	__gptrget
      004AB7 FC               [12] 5648 	mov	r4,a
      004AB8 70 03            [24] 5649 	jnz	01359$
      004ABA 02 56 65         [24] 5650 	ljmp	00249$
      004ABD                       5651 01359$:
      004ABD 7B 00            [12] 5652 	mov	r3,#0x00
      004ABF 8C 82            [24] 5653 	mov	dpl,r4
      004AC1 8B 83            [24] 5654 	mov	dph,r3
      004AC3 12 2C 1F         [24] 5655 	lcall	_putchar
      004AC6 0F               [12] 5656 	inc	r7
                                   5657 ;	calc.c:269: printstr("\r\ndivision by zero\r\n");
      004AC7 BF 00 E4         [24] 5658 	cjne	r7,#0x00,00457$
      004ACA 0E               [12] 5659 	inc	r6
      004ACB 80 E1            [24] 5660 	sjmp	00457$
      004ACD                       5661 00194$:
                                   5662 ;	calc.c:271: if (ctx->digit[0] == '%') d1 %= d0;
      004ACD 8D 82            [24] 5663 	mov	dpl,r5
      004ACF 8E 83            [24] 5664 	mov	dph,r6
      004AD1 8F F0            [24] 5665 	mov	b,r7
      004AD3 12 70 79         [24] 5666 	lcall	__gptrget
      004AD6 FD               [12] 5667 	mov	r5,a
      004AD7 BD 25 45         [24] 5668 	cjne	r5,#0x25,00191$
      004ADA E5 08            [12] 5669 	mov	a,_bp
      004ADC 24 15            [12] 5670 	add	a,#0x15
      004ADE F8               [12] 5671 	mov	r0,a
      004ADF E6               [12] 5672 	mov	a,@r0
      004AE0 C0 E0            [24] 5673 	push	acc
      004AE2 08               [12] 5674 	inc	r0
      004AE3 E6               [12] 5675 	mov	a,@r0
      004AE4 C0 E0            [24] 5676 	push	acc
      004AE6 08               [12] 5677 	inc	r0
      004AE7 E6               [12] 5678 	mov	a,@r0
      004AE8 C0 E0            [24] 5679 	push	acc
      004AEA 08               [12] 5680 	inc	r0
      004AEB E6               [12] 5681 	mov	a,@r0
      004AEC C0 E0            [24] 5682 	push	acc
      004AEE E5 08            [12] 5683 	mov	a,_bp
      004AF0 24 19            [12] 5684 	add	a,#0x19
      004AF2 F8               [12] 5685 	mov	r0,a
      004AF3 86 82            [24] 5686 	mov	dpl,@r0
      004AF5 08               [12] 5687 	inc	r0
      004AF6 86 83            [24] 5688 	mov	dph,@r0
      004AF8 08               [12] 5689 	inc	r0
      004AF9 86 F0            [24] 5690 	mov	b,@r0
      004AFB 08               [12] 5691 	inc	r0
      004AFC E6               [12] 5692 	mov	a,@r0
      004AFD 12 6C B7         [24] 5693 	lcall	__modslong
      004B00 AC 82            [24] 5694 	mov	r4,dpl
      004B02 AD 83            [24] 5695 	mov	r5,dph
      004B04 AE F0            [24] 5696 	mov	r6,b
      004B06 FF               [12] 5697 	mov	r7,a
      004B07 E5 81            [12] 5698 	mov	a,sp
      004B09 24 FC            [12] 5699 	add	a,#0xfc
      004B0B F5 81            [12] 5700 	mov	sp,a
      004B0D E5 08            [12] 5701 	mov	a,_bp
      004B0F 24 19            [12] 5702 	add	a,#0x19
      004B11 F8               [12] 5703 	mov	r0,a
      004B12 A6 04            [24] 5704 	mov	@r0,ar4
      004B14 08               [12] 5705 	inc	r0
      004B15 A6 05            [24] 5706 	mov	@r0,ar5
      004B17 08               [12] 5707 	inc	r0
      004B18 A6 06            [24] 5708 	mov	@r0,ar6
      004B1A 08               [12] 5709 	inc	r0
      004B1B A6 07            [24] 5710 	mov	@r0,ar7
      004B1D 80 5F            [24] 5711 	sjmp	00192$
      004B1F                       5712 00191$:
                                   5713 ;	calc.c:272: else d1 = (unsigned long)d1 % (unsigned long)d0;
      004B1F E5 08            [12] 5714 	mov	a,_bp
      004B21 24 19            [12] 5715 	add	a,#0x19
      004B23 F8               [12] 5716 	mov	r0,a
      004B24 E5 08            [12] 5717 	mov	a,_bp
      004B26 24 07            [12] 5718 	add	a,#0x07
      004B28 F9               [12] 5719 	mov	r1,a
      004B29 E6               [12] 5720 	mov	a,@r0
      004B2A F7               [12] 5721 	mov	@r1,a
      004B2B 08               [12] 5722 	inc	r0
      004B2C 09               [12] 5723 	inc	r1
      004B2D E6               [12] 5724 	mov	a,@r0
      004B2E F7               [12] 5725 	mov	@r1,a
      004B2F 08               [12] 5726 	inc	r0
      004B30 09               [12] 5727 	inc	r1
      004B31 E6               [12] 5728 	mov	a,@r0
      004B32 F7               [12] 5729 	mov	@r1,a
      004B33 08               [12] 5730 	inc	r0
      004B34 09               [12] 5731 	inc	r1
      004B35 E6               [12] 5732 	mov	a,@r0
      004B36 F7               [12] 5733 	mov	@r1,a
      004B37 E5 08            [12] 5734 	mov	a,_bp
      004B39 24 15            [12] 5735 	add	a,#0x15
      004B3B F8               [12] 5736 	mov	r0,a
      004B3C 86 02            [24] 5737 	mov	ar2,@r0
      004B3E 08               [12] 5738 	inc	r0
      004B3F 86 03            [24] 5739 	mov	ar3,@r0
      004B41 08               [12] 5740 	inc	r0
      004B42 86 06            [24] 5741 	mov	ar6,@r0
      004B44 08               [12] 5742 	inc	r0
      004B45 86 07            [24] 5743 	mov	ar7,@r0
      004B47 C0 02            [24] 5744 	push	ar2
      004B49 C0 03            [24] 5745 	push	ar3
      004B4B C0 06            [24] 5746 	push	ar6
      004B4D C0 07            [24] 5747 	push	ar7
      004B4F E5 08            [12] 5748 	mov	a,_bp
      004B51 24 07            [12] 5749 	add	a,#0x07
      004B53 F8               [12] 5750 	mov	r0,a
      004B54 86 82            [24] 5751 	mov	dpl,@r0
      004B56 08               [12] 5752 	inc	r0
      004B57 86 83            [24] 5753 	mov	dph,@r0
      004B59 08               [12] 5754 	inc	r0
      004B5A 86 F0            [24] 5755 	mov	b,@r0
      004B5C 08               [12] 5756 	inc	r0
      004B5D E6               [12] 5757 	mov	a,@r0
      004B5E 12 6D AE         [24] 5758 	lcall	__modulong
      004B61 AC 82            [24] 5759 	mov	r4,dpl
      004B63 AD 83            [24] 5760 	mov	r5,dph
      004B65 AE F0            [24] 5761 	mov	r6,b
      004B67 FF               [12] 5762 	mov	r7,a
      004B68 E5 81            [12] 5763 	mov	a,sp
      004B6A 24 FC            [12] 5764 	add	a,#0xfc
      004B6C F5 81            [12] 5765 	mov	sp,a
      004B6E E5 08            [12] 5766 	mov	a,_bp
      004B70 24 19            [12] 5767 	add	a,#0x19
      004B72 F8               [12] 5768 	mov	r0,a
      004B73 A6 04            [24] 5769 	mov	@r0,ar4
      004B75 08               [12] 5770 	inc	r0
      004B76 A6 05            [24] 5771 	mov	@r0,ar5
      004B78 08               [12] 5772 	inc	r0
      004B79 A6 06            [24] 5773 	mov	@r0,ar6
      004B7B 08               [12] 5774 	inc	r0
      004B7C A6 07            [24] 5775 	mov	@r0,ar7
      004B7E                       5776 00192$:
                                   5777 ;	calc.c:273: (void)stack_push(ctx->ps, d1);
      004B7E E5 08            [12] 5778 	mov	a,_bp
      004B80 24 0E            [12] 5779 	add	a,#0x0e
      004B82 F8               [12] 5780 	mov	r0,a
      004B83 86 82            [24] 5781 	mov	dpl,@r0
      004B85 08               [12] 5782 	inc	r0
      004B86 86 83            [24] 5783 	mov	dph,@r0
      004B88 08               [12] 5784 	inc	r0
      004B89 86 F0            [24] 5785 	mov	b,@r0
      004B8B 12 70 79         [24] 5786 	lcall	__gptrget
      004B8E FD               [12] 5787 	mov	r5,a
      004B8F A3               [24] 5788 	inc	dptr
      004B90 12 70 79         [24] 5789 	lcall	__gptrget
      004B93 FE               [12] 5790 	mov	r6,a
      004B94 A3               [24] 5791 	inc	dptr
      004B95 12 70 79         [24] 5792 	lcall	__gptrget
      004B98 FF               [12] 5793 	mov	r7,a
      004B99 E5 08            [12] 5794 	mov	a,_bp
      004B9B 24 19            [12] 5795 	add	a,#0x19
      004B9D F8               [12] 5796 	mov	r0,a
      004B9E E6               [12] 5797 	mov	a,@r0
      004B9F C0 E0            [24] 5798 	push	acc
      004BA1 08               [12] 5799 	inc	r0
      004BA2 E6               [12] 5800 	mov	a,@r0
      004BA3 C0 E0            [24] 5801 	push	acc
      004BA5 08               [12] 5802 	inc	r0
      004BA6 E6               [12] 5803 	mov	a,@r0
      004BA7 C0 E0            [24] 5804 	push	acc
      004BA9 08               [12] 5805 	inc	r0
      004BAA E6               [12] 5806 	mov	a,@r0
      004BAB C0 E0            [24] 5807 	push	acc
      004BAD 8D 82            [24] 5808 	mov	dpl,r5
      004BAF 8E 83            [24] 5809 	mov	dph,r6
      004BB1 8F F0            [24] 5810 	mov	b,r7
      004BB3 12 26 BA         [24] 5811 	lcall	_stack_push
      004BB6 E5 81            [12] 5812 	mov	a,sp
      004BB8 24 FC            [12] 5813 	add	a,#0xfc
      004BBA F5 81            [12] 5814 	mov	sp,a
                                   5815 ;	calc.c:275: break;
      004BBC 02 56 65         [24] 5816 	ljmp	00249$
                                   5817 ;	calc.c:276: case '&':
      004BBF                       5818 00202$:
                                   5819 ;	calc.c:277: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004BBF E5 08            [12] 5820 	mov	a,_bp
      004BC1 24 15            [12] 5821 	add	a,#0x15
      004BC3 FF               [12] 5822 	mov	r7,a
      004BC4 E5 08            [12] 5823 	mov	a,_bp
      004BC6 24 0E            [12] 5824 	add	a,#0x0e
      004BC8 F8               [12] 5825 	mov	r0,a
      004BC9 A6 07            [24] 5826 	mov	@r0,ar7
      004BCB 08               [12] 5827 	inc	r0
      004BCC 76 00            [12] 5828 	mov	@r0,#0x00
      004BCE 08               [12] 5829 	inc	r0
      004BCF 76 40            [12] 5830 	mov	@r0,#0x40
      004BD1 E5 08            [12] 5831 	mov	a,_bp
      004BD3 24 12            [12] 5832 	add	a,#0x12
      004BD5 F8               [12] 5833 	mov	r0,a
      004BD6 74 13            [12] 5834 	mov	a,#0x13
      004BD8 26               [12] 5835 	add	a,@r0
      004BD9 FA               [12] 5836 	mov	r2,a
      004BDA 74 40            [12] 5837 	mov	a,#0x40
      004BDC 08               [12] 5838 	inc	r0
      004BDD 36               [12] 5839 	addc	a,@r0
      004BDE FB               [12] 5840 	mov	r3,a
      004BDF 08               [12] 5841 	inc	r0
      004BE0 86 04            [24] 5842 	mov	ar4,@r0
      004BE2 8A 82            [24] 5843 	mov	dpl,r2
      004BE4 8B 83            [24] 5844 	mov	dph,r3
      004BE6 8C F0            [24] 5845 	mov	b,r4
      004BE8 12 70 79         [24] 5846 	lcall	__gptrget
      004BEB FD               [12] 5847 	mov	r5,a
      004BEC A3               [24] 5848 	inc	dptr
      004BED 12 70 79         [24] 5849 	lcall	__gptrget
      004BF0 FE               [12] 5850 	mov	r6,a
      004BF1 A3               [24] 5851 	inc	dptr
      004BF2 12 70 79         [24] 5852 	lcall	__gptrget
      004BF5 FF               [12] 5853 	mov	r7,a
      004BF6 C0 04            [24] 5854 	push	ar4
      004BF8 C0 03            [24] 5855 	push	ar3
      004BFA C0 02            [24] 5856 	push	ar2
      004BFC E5 08            [12] 5857 	mov	a,_bp
      004BFE 24 0E            [12] 5858 	add	a,#0x0e
      004C00 F8               [12] 5859 	mov	r0,a
      004C01 E6               [12] 5860 	mov	a,@r0
      004C02 C0 E0            [24] 5861 	push	acc
      004C04 08               [12] 5862 	inc	r0
      004C05 E6               [12] 5863 	mov	a,@r0
      004C06 C0 E0            [24] 5864 	push	acc
      004C08 08               [12] 5865 	inc	r0
      004C09 E6               [12] 5866 	mov	a,@r0
      004C0A C0 E0            [24] 5867 	push	acc
      004C0C 8D 82            [24] 5868 	mov	dpl,r5
      004C0E 8E 83            [24] 5869 	mov	dph,r6
      004C10 8F F0            [24] 5870 	mov	b,r7
      004C12 12 27 B4         [24] 5871 	lcall	_stack_pop
      004C15 AE 82            [24] 5872 	mov	r6,dpl
      004C17 AF 83            [24] 5873 	mov	r7,dph
      004C19 15 81            [12] 5874 	dec	sp
      004C1B 15 81            [12] 5875 	dec	sp
      004C1D 15 81            [12] 5876 	dec	sp
      004C1F D0 02            [24] 5877 	pop	ar2
      004C21 D0 03            [24] 5878 	pop	ar3
      004C23 D0 04            [24] 5879 	pop	ar4
      004C25 EE               [12] 5880 	mov	a,r6
      004C26 4F               [12] 5881 	orl	a,r7
      004C27 70 25            [24] 5882 	jnz	00207$
      004C29 7D 3E            [12] 5883 	mov	r5,#___str_10
      004C2B 7C 89            [12] 5884 	mov	r4,#(___str_10 >> 8)
      004C2D 7B 80            [12] 5885 	mov	r3,#0x80
                                   5886 ;	calc.c:51: return;
      004C2F                       5887 00460$:
                                   5888 ;	calc.c:49: for (; *s; s++) putchar(*s);
      004C2F 8D 82            [24] 5889 	mov	dpl,r5
      004C31 8C 83            [24] 5890 	mov	dph,r4
      004C33 8B F0            [24] 5891 	mov	b,r3
      004C35 12 70 79         [24] 5892 	lcall	__gptrget
      004C38 FF               [12] 5893 	mov	r7,a
      004C39 70 03            [24] 5894 	jnz	01364$
      004C3B 02 56 65         [24] 5895 	ljmp	00249$
      004C3E                       5896 01364$:
      004C3E 7E 00            [12] 5897 	mov	r6,#0x00
      004C40 8F 82            [24] 5898 	mov	dpl,r7
      004C42 8E 83            [24] 5899 	mov	dph,r6
      004C44 12 2C 1F         [24] 5900 	lcall	_putchar
      004C47 0D               [12] 5901 	inc	r5
                                   5902 ;	calc.c:277: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004C48 BD 00 E4         [24] 5903 	cjne	r5,#0x00,00460$
      004C4B 0C               [12] 5904 	inc	r4
      004C4C 80 E1            [24] 5905 	sjmp	00460$
      004C4E                       5906 00207$:
                                   5907 ;	calc.c:278: else if (!stack_pop(ctx->ps, &d1)) {
      004C4E E5 08            [12] 5908 	mov	a,_bp
      004C50 24 19            [12] 5909 	add	a,#0x19
      004C52 FF               [12] 5910 	mov	r7,a
      004C53 E5 08            [12] 5911 	mov	a,_bp
      004C55 24 0E            [12] 5912 	add	a,#0x0e
      004C57 F8               [12] 5913 	mov	r0,a
      004C58 A6 07            [24] 5914 	mov	@r0,ar7
      004C5A 08               [12] 5915 	inc	r0
      004C5B 76 00            [12] 5916 	mov	@r0,#0x00
      004C5D 08               [12] 5917 	inc	r0
      004C5E 76 40            [12] 5918 	mov	@r0,#0x40
      004C60 8A 82            [24] 5919 	mov	dpl,r2
      004C62 8B 83            [24] 5920 	mov	dph,r3
      004C64 8C F0            [24] 5921 	mov	b,r4
      004C66 12 70 79         [24] 5922 	lcall	__gptrget
      004C69 FD               [12] 5923 	mov	r5,a
      004C6A A3               [24] 5924 	inc	dptr
      004C6B 12 70 79         [24] 5925 	lcall	__gptrget
      004C6E FE               [12] 5926 	mov	r6,a
      004C6F A3               [24] 5927 	inc	dptr
      004C70 12 70 79         [24] 5928 	lcall	__gptrget
      004C73 FF               [12] 5929 	mov	r7,a
      004C74 C0 04            [24] 5930 	push	ar4
      004C76 C0 03            [24] 5931 	push	ar3
      004C78 C0 02            [24] 5932 	push	ar2
      004C7A E5 08            [12] 5933 	mov	a,_bp
      004C7C 24 0E            [12] 5934 	add	a,#0x0e
      004C7E F8               [12] 5935 	mov	r0,a
      004C7F E6               [12] 5936 	mov	a,@r0
      004C80 C0 E0            [24] 5937 	push	acc
      004C82 08               [12] 5938 	inc	r0
      004C83 E6               [12] 5939 	mov	a,@r0
      004C84 C0 E0            [24] 5940 	push	acc
      004C86 08               [12] 5941 	inc	r0
      004C87 E6               [12] 5942 	mov	a,@r0
      004C88 C0 E0            [24] 5943 	push	acc
      004C8A 8D 82            [24] 5944 	mov	dpl,r5
      004C8C 8E 83            [24] 5945 	mov	dph,r6
      004C8E 8F F0            [24] 5946 	mov	b,r7
      004C90 12 27 B4         [24] 5947 	lcall	_stack_pop
      004C93 AE 82            [24] 5948 	mov	r6,dpl
      004C95 AF 83            [24] 5949 	mov	r7,dph
      004C97 15 81            [12] 5950 	dec	sp
      004C99 15 81            [12] 5951 	dec	sp
      004C9B 15 81            [12] 5952 	dec	sp
      004C9D D0 02            [24] 5953 	pop	ar2
      004C9F D0 03            [24] 5954 	pop	ar3
      004CA1 D0 04            [24] 5955 	pop	ar4
      004CA3 EE               [12] 5956 	mov	a,r6
      004CA4 4F               [12] 5957 	orl	a,r7
      004CA5 70 5C            [24] 5958 	jnz	00204$
                                   5959 ;	calc.c:279: (void)stack_push(ctx->ps, d0);
      004CA7 8A 82            [24] 5960 	mov	dpl,r2
      004CA9 8B 83            [24] 5961 	mov	dph,r3
      004CAB 8C F0            [24] 5962 	mov	b,r4
      004CAD 12 70 79         [24] 5963 	lcall	__gptrget
      004CB0 FD               [12] 5964 	mov	r5,a
      004CB1 A3               [24] 5965 	inc	dptr
      004CB2 12 70 79         [24] 5966 	lcall	__gptrget
      004CB5 FE               [12] 5967 	mov	r6,a
      004CB6 A3               [24] 5968 	inc	dptr
      004CB7 12 70 79         [24] 5969 	lcall	__gptrget
      004CBA FF               [12] 5970 	mov	r7,a
      004CBB E5 08            [12] 5971 	mov	a,_bp
      004CBD 24 15            [12] 5972 	add	a,#0x15
      004CBF F8               [12] 5973 	mov	r0,a
      004CC0 E6               [12] 5974 	mov	a,@r0
      004CC1 C0 E0            [24] 5975 	push	acc
      004CC3 08               [12] 5976 	inc	r0
      004CC4 E6               [12] 5977 	mov	a,@r0
      004CC5 C0 E0            [24] 5978 	push	acc
      004CC7 08               [12] 5979 	inc	r0
      004CC8 E6               [12] 5980 	mov	a,@r0
      004CC9 C0 E0            [24] 5981 	push	acc
      004CCB 08               [12] 5982 	inc	r0
      004CCC E6               [12] 5983 	mov	a,@r0
      004CCD C0 E0            [24] 5984 	push	acc
      004CCF 8D 82            [24] 5985 	mov	dpl,r5
      004CD1 8E 83            [24] 5986 	mov	dph,r6
      004CD3 8F F0            [24] 5987 	mov	b,r7
      004CD5 12 26 BA         [24] 5988 	lcall	_stack_push
      004CD8 E5 81            [12] 5989 	mov	a,sp
      004CDA 24 FC            [12] 5990 	add	a,#0xfc
      004CDC F5 81            [12] 5991 	mov	sp,a
                                   5992 ;	calc.c:280: printstr("\r\nstack underflow\r\n");
      004CDE 7D 3E            [12] 5993 	mov	r5,#___str_10
      004CE0 7C 89            [12] 5994 	mov	r4,#(___str_10 >> 8)
      004CE2 7B 80            [12] 5995 	mov	r3,#0x80
                                   5996 ;	calc.c:51: return;
      004CE4                       5997 00463$:
                                   5998 ;	calc.c:49: for (; *s; s++) putchar(*s);
      004CE4 8D 82            [24] 5999 	mov	dpl,r5
      004CE6 8C 83            [24] 6000 	mov	dph,r4
      004CE8 8B F0            [24] 6001 	mov	b,r3
      004CEA 12 70 79         [24] 6002 	lcall	__gptrget
      004CED FF               [12] 6003 	mov	r7,a
      004CEE 70 03            [24] 6004 	jnz	01367$
      004CF0 02 56 65         [24] 6005 	ljmp	00249$
      004CF3                       6006 01367$:
      004CF3 7E 00            [12] 6007 	mov	r6,#0x00
      004CF5 8F 82            [24] 6008 	mov	dpl,r7
      004CF7 8E 83            [24] 6009 	mov	dph,r6
      004CF9 12 2C 1F         [24] 6010 	lcall	_putchar
      004CFC 0D               [12] 6011 	inc	r5
                                   6012 ;	calc.c:280: printstr("\r\nstack underflow\r\n");
      004CFD BD 00 E4         [24] 6013 	cjne	r5,#0x00,00463$
      004D00 0C               [12] 6014 	inc	r4
      004D01 80 E1            [24] 6015 	sjmp	00463$
      004D03                       6016 00204$:
                                   6017 ;	calc.c:282: d1 &= d0;
      004D03 E5 08            [12] 6018 	mov	a,_bp
      004D05 24 19            [12] 6019 	add	a,#0x19
      004D07 F8               [12] 6020 	mov	r0,a
      004D08 E5 08            [12] 6021 	mov	a,_bp
      004D0A 24 15            [12] 6022 	add	a,#0x15
      004D0C F9               [12] 6023 	mov	r1,a
      004D0D E7               [12] 6024 	mov	a,@r1
      004D0E 56               [12] 6025 	anl	a,@r0
      004D0F F6               [12] 6026 	mov	@r0,a
      004D10 09               [12] 6027 	inc	r1
      004D11 E7               [12] 6028 	mov	a,@r1
      004D12 08               [12] 6029 	inc	r0
      004D13 56               [12] 6030 	anl	a,@r0
      004D14 F6               [12] 6031 	mov	@r0,a
      004D15 09               [12] 6032 	inc	r1
      004D16 E7               [12] 6033 	mov	a,@r1
      004D17 08               [12] 6034 	inc	r0
      004D18 56               [12] 6035 	anl	a,@r0
      004D19 F6               [12] 6036 	mov	@r0,a
      004D1A 09               [12] 6037 	inc	r1
      004D1B E7               [12] 6038 	mov	a,@r1
      004D1C 08               [12] 6039 	inc	r0
      004D1D 56               [12] 6040 	anl	a,@r0
      004D1E F6               [12] 6041 	mov	@r0,a
                                   6042 ;	calc.c:283: (void)stack_push(ctx->ps, d1);
      004D1F 8A 82            [24] 6043 	mov	dpl,r2
      004D21 8B 83            [24] 6044 	mov	dph,r3
      004D23 8C F0            [24] 6045 	mov	b,r4
      004D25 12 70 79         [24] 6046 	lcall	__gptrget
      004D28 FA               [12] 6047 	mov	r2,a
      004D29 A3               [24] 6048 	inc	dptr
      004D2A 12 70 79         [24] 6049 	lcall	__gptrget
      004D2D FB               [12] 6050 	mov	r3,a
      004D2E A3               [24] 6051 	inc	dptr
      004D2F 12 70 79         [24] 6052 	lcall	__gptrget
      004D32 FC               [12] 6053 	mov	r4,a
      004D33 E5 08            [12] 6054 	mov	a,_bp
      004D35 24 19            [12] 6055 	add	a,#0x19
      004D37 F8               [12] 6056 	mov	r0,a
      004D38 E6               [12] 6057 	mov	a,@r0
      004D39 C0 E0            [24] 6058 	push	acc
      004D3B 08               [12] 6059 	inc	r0
      004D3C E6               [12] 6060 	mov	a,@r0
      004D3D C0 E0            [24] 6061 	push	acc
      004D3F 08               [12] 6062 	inc	r0
      004D40 E6               [12] 6063 	mov	a,@r0
      004D41 C0 E0            [24] 6064 	push	acc
      004D43 08               [12] 6065 	inc	r0
      004D44 E6               [12] 6066 	mov	a,@r0
      004D45 C0 E0            [24] 6067 	push	acc
      004D47 8A 82            [24] 6068 	mov	dpl,r2
      004D49 8B 83            [24] 6069 	mov	dph,r3
      004D4B 8C F0            [24] 6070 	mov	b,r4
      004D4D 12 26 BA         [24] 6071 	lcall	_stack_push
      004D50 E5 81            [12] 6072 	mov	a,sp
      004D52 24 FC            [12] 6073 	add	a,#0xfc
      004D54 F5 81            [12] 6074 	mov	sp,a
                                   6075 ;	calc.c:285: break;
      004D56 02 56 65         [24] 6076 	ljmp	00249$
                                   6077 ;	calc.c:286: case '|':
      004D59                       6078 00209$:
                                   6079 ;	calc.c:287: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004D59 E5 08            [12] 6080 	mov	a,_bp
      004D5B 24 15            [12] 6081 	add	a,#0x15
      004D5D FF               [12] 6082 	mov	r7,a
      004D5E E5 08            [12] 6083 	mov	a,_bp
      004D60 24 0E            [12] 6084 	add	a,#0x0e
      004D62 F8               [12] 6085 	mov	r0,a
      004D63 A6 07            [24] 6086 	mov	@r0,ar7
      004D65 08               [12] 6087 	inc	r0
      004D66 76 00            [12] 6088 	mov	@r0,#0x00
      004D68 08               [12] 6089 	inc	r0
      004D69 76 40            [12] 6090 	mov	@r0,#0x40
      004D6B E5 08            [12] 6091 	mov	a,_bp
      004D6D 24 12            [12] 6092 	add	a,#0x12
      004D6F F8               [12] 6093 	mov	r0,a
      004D70 74 13            [12] 6094 	mov	a,#0x13
      004D72 26               [12] 6095 	add	a,@r0
      004D73 FA               [12] 6096 	mov	r2,a
      004D74 74 40            [12] 6097 	mov	a,#0x40
      004D76 08               [12] 6098 	inc	r0
      004D77 36               [12] 6099 	addc	a,@r0
      004D78 FB               [12] 6100 	mov	r3,a
      004D79 08               [12] 6101 	inc	r0
      004D7A 86 04            [24] 6102 	mov	ar4,@r0
      004D7C 8A 82            [24] 6103 	mov	dpl,r2
      004D7E 8B 83            [24] 6104 	mov	dph,r3
      004D80 8C F0            [24] 6105 	mov	b,r4
      004D82 12 70 79         [24] 6106 	lcall	__gptrget
      004D85 FD               [12] 6107 	mov	r5,a
      004D86 A3               [24] 6108 	inc	dptr
      004D87 12 70 79         [24] 6109 	lcall	__gptrget
      004D8A FE               [12] 6110 	mov	r6,a
      004D8B A3               [24] 6111 	inc	dptr
      004D8C 12 70 79         [24] 6112 	lcall	__gptrget
      004D8F FF               [12] 6113 	mov	r7,a
      004D90 C0 04            [24] 6114 	push	ar4
      004D92 C0 03            [24] 6115 	push	ar3
      004D94 C0 02            [24] 6116 	push	ar2
      004D96 E5 08            [12] 6117 	mov	a,_bp
      004D98 24 0E            [12] 6118 	add	a,#0x0e
      004D9A F8               [12] 6119 	mov	r0,a
      004D9B E6               [12] 6120 	mov	a,@r0
      004D9C C0 E0            [24] 6121 	push	acc
      004D9E 08               [12] 6122 	inc	r0
      004D9F E6               [12] 6123 	mov	a,@r0
      004DA0 C0 E0            [24] 6124 	push	acc
      004DA2 08               [12] 6125 	inc	r0
      004DA3 E6               [12] 6126 	mov	a,@r0
      004DA4 C0 E0            [24] 6127 	push	acc
      004DA6 8D 82            [24] 6128 	mov	dpl,r5
      004DA8 8E 83            [24] 6129 	mov	dph,r6
      004DAA 8F F0            [24] 6130 	mov	b,r7
      004DAC 12 27 B4         [24] 6131 	lcall	_stack_pop
      004DAF AE 82            [24] 6132 	mov	r6,dpl
      004DB1 AF 83            [24] 6133 	mov	r7,dph
      004DB3 15 81            [12] 6134 	dec	sp
      004DB5 15 81            [12] 6135 	dec	sp
      004DB7 15 81            [12] 6136 	dec	sp
      004DB9 D0 02            [24] 6137 	pop	ar2
      004DBB D0 03            [24] 6138 	pop	ar3
      004DBD D0 04            [24] 6139 	pop	ar4
      004DBF EE               [12] 6140 	mov	a,r6
      004DC0 4F               [12] 6141 	orl	a,r7
      004DC1 70 25            [24] 6142 	jnz	00214$
      004DC3 7D 3E            [12] 6143 	mov	r5,#___str_10
      004DC5 7C 89            [12] 6144 	mov	r4,#(___str_10 >> 8)
      004DC7 7B 80            [12] 6145 	mov	r3,#0x80
                                   6146 ;	calc.c:51: return;
      004DC9                       6147 00466$:
                                   6148 ;	calc.c:49: for (; *s; s++) putchar(*s);
      004DC9 8D 82            [24] 6149 	mov	dpl,r5
      004DCB 8C 83            [24] 6150 	mov	dph,r4
      004DCD 8B F0            [24] 6151 	mov	b,r3
      004DCF 12 70 79         [24] 6152 	lcall	__gptrget
      004DD2 FF               [12] 6153 	mov	r7,a
      004DD3 70 03            [24] 6154 	jnz	01370$
      004DD5 02 56 65         [24] 6155 	ljmp	00249$
      004DD8                       6156 01370$:
      004DD8 7E 00            [12] 6157 	mov	r6,#0x00
      004DDA 8F 82            [24] 6158 	mov	dpl,r7
      004DDC 8E 83            [24] 6159 	mov	dph,r6
      004DDE 12 2C 1F         [24] 6160 	lcall	_putchar
      004DE1 0D               [12] 6161 	inc	r5
                                   6162 ;	calc.c:287: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004DE2 BD 00 E4         [24] 6163 	cjne	r5,#0x00,00466$
      004DE5 0C               [12] 6164 	inc	r4
      004DE6 80 E1            [24] 6165 	sjmp	00466$
      004DE8                       6166 00214$:
                                   6167 ;	calc.c:288: else if (!stack_pop(ctx->ps, &d1)) {
      004DE8 E5 08            [12] 6168 	mov	a,_bp
      004DEA 24 19            [12] 6169 	add	a,#0x19
      004DEC FF               [12] 6170 	mov	r7,a
      004DED E5 08            [12] 6171 	mov	a,_bp
      004DEF 24 0E            [12] 6172 	add	a,#0x0e
      004DF1 F8               [12] 6173 	mov	r0,a
      004DF2 A6 07            [24] 6174 	mov	@r0,ar7
      004DF4 08               [12] 6175 	inc	r0
      004DF5 76 00            [12] 6176 	mov	@r0,#0x00
      004DF7 08               [12] 6177 	inc	r0
      004DF8 76 40            [12] 6178 	mov	@r0,#0x40
      004DFA 8A 82            [24] 6179 	mov	dpl,r2
      004DFC 8B 83            [24] 6180 	mov	dph,r3
      004DFE 8C F0            [24] 6181 	mov	b,r4
      004E00 12 70 79         [24] 6182 	lcall	__gptrget
      004E03 FD               [12] 6183 	mov	r5,a
      004E04 A3               [24] 6184 	inc	dptr
      004E05 12 70 79         [24] 6185 	lcall	__gptrget
      004E08 FE               [12] 6186 	mov	r6,a
      004E09 A3               [24] 6187 	inc	dptr
      004E0A 12 70 79         [24] 6188 	lcall	__gptrget
      004E0D FF               [12] 6189 	mov	r7,a
      004E0E C0 04            [24] 6190 	push	ar4
      004E10 C0 03            [24] 6191 	push	ar3
      004E12 C0 02            [24] 6192 	push	ar2
      004E14 E5 08            [12] 6193 	mov	a,_bp
      004E16 24 0E            [12] 6194 	add	a,#0x0e
      004E18 F8               [12] 6195 	mov	r0,a
      004E19 E6               [12] 6196 	mov	a,@r0
      004E1A C0 E0            [24] 6197 	push	acc
      004E1C 08               [12] 6198 	inc	r0
      004E1D E6               [12] 6199 	mov	a,@r0
      004E1E C0 E0            [24] 6200 	push	acc
      004E20 08               [12] 6201 	inc	r0
      004E21 E6               [12] 6202 	mov	a,@r0
      004E22 C0 E0            [24] 6203 	push	acc
      004E24 8D 82            [24] 6204 	mov	dpl,r5
      004E26 8E 83            [24] 6205 	mov	dph,r6
      004E28 8F F0            [24] 6206 	mov	b,r7
      004E2A 12 27 B4         [24] 6207 	lcall	_stack_pop
      004E2D AE 82            [24] 6208 	mov	r6,dpl
      004E2F AF 83            [24] 6209 	mov	r7,dph
      004E31 15 81            [12] 6210 	dec	sp
      004E33 15 81            [12] 6211 	dec	sp
      004E35 15 81            [12] 6212 	dec	sp
      004E37 D0 02            [24] 6213 	pop	ar2
      004E39 D0 03            [24] 6214 	pop	ar3
      004E3B D0 04            [24] 6215 	pop	ar4
      004E3D EE               [12] 6216 	mov	a,r6
      004E3E 4F               [12] 6217 	orl	a,r7
      004E3F 70 5C            [24] 6218 	jnz	00211$
                                   6219 ;	calc.c:289: (void)stack_push(ctx->ps, d0);
      004E41 8A 82            [24] 6220 	mov	dpl,r2
      004E43 8B 83            [24] 6221 	mov	dph,r3
      004E45 8C F0            [24] 6222 	mov	b,r4
      004E47 12 70 79         [24] 6223 	lcall	__gptrget
      004E4A FD               [12] 6224 	mov	r5,a
      004E4B A3               [24] 6225 	inc	dptr
      004E4C 12 70 79         [24] 6226 	lcall	__gptrget
      004E4F FE               [12] 6227 	mov	r6,a
      004E50 A3               [24] 6228 	inc	dptr
      004E51 12 70 79         [24] 6229 	lcall	__gptrget
      004E54 FF               [12] 6230 	mov	r7,a
      004E55 E5 08            [12] 6231 	mov	a,_bp
      004E57 24 15            [12] 6232 	add	a,#0x15
      004E59 F8               [12] 6233 	mov	r0,a
      004E5A E6               [12] 6234 	mov	a,@r0
      004E5B C0 E0            [24] 6235 	push	acc
      004E5D 08               [12] 6236 	inc	r0
      004E5E E6               [12] 6237 	mov	a,@r0
      004E5F C0 E0            [24] 6238 	push	acc
      004E61 08               [12] 6239 	inc	r0
      004E62 E6               [12] 6240 	mov	a,@r0
      004E63 C0 E0            [24] 6241 	push	acc
      004E65 08               [12] 6242 	inc	r0
      004E66 E6               [12] 6243 	mov	a,@r0
      004E67 C0 E0            [24] 6244 	push	acc
      004E69 8D 82            [24] 6245 	mov	dpl,r5
      004E6B 8E 83            [24] 6246 	mov	dph,r6
      004E6D 8F F0            [24] 6247 	mov	b,r7
      004E6F 12 26 BA         [24] 6248 	lcall	_stack_push
      004E72 E5 81            [12] 6249 	mov	a,sp
      004E74 24 FC            [12] 6250 	add	a,#0xfc
      004E76 F5 81            [12] 6251 	mov	sp,a
                                   6252 ;	calc.c:290: printstr("\r\nstack underflow\r\n");
      004E78 7D 3E            [12] 6253 	mov	r5,#___str_10
      004E7A 7C 89            [12] 6254 	mov	r4,#(___str_10 >> 8)
      004E7C 7B 80            [12] 6255 	mov	r3,#0x80
                                   6256 ;	calc.c:51: return;
      004E7E                       6257 00469$:
                                   6258 ;	calc.c:49: for (; *s; s++) putchar(*s);
      004E7E 8D 82            [24] 6259 	mov	dpl,r5
      004E80 8C 83            [24] 6260 	mov	dph,r4
      004E82 8B F0            [24] 6261 	mov	b,r3
      004E84 12 70 79         [24] 6262 	lcall	__gptrget
      004E87 FF               [12] 6263 	mov	r7,a
      004E88 70 03            [24] 6264 	jnz	01373$
      004E8A 02 56 65         [24] 6265 	ljmp	00249$
      004E8D                       6266 01373$:
      004E8D 7E 00            [12] 6267 	mov	r6,#0x00
      004E8F 8F 82            [24] 6268 	mov	dpl,r7
      004E91 8E 83            [24] 6269 	mov	dph,r6
      004E93 12 2C 1F         [24] 6270 	lcall	_putchar
      004E96 0D               [12] 6271 	inc	r5
                                   6272 ;	calc.c:290: printstr("\r\nstack underflow\r\n");
      004E97 BD 00 E4         [24] 6273 	cjne	r5,#0x00,00469$
      004E9A 0C               [12] 6274 	inc	r4
      004E9B 80 E1            [24] 6275 	sjmp	00469$
      004E9D                       6276 00211$:
                                   6277 ;	calc.c:292: d1 |= d0;
      004E9D E5 08            [12] 6278 	mov	a,_bp
      004E9F 24 19            [12] 6279 	add	a,#0x19
      004EA1 F8               [12] 6280 	mov	r0,a
      004EA2 E5 08            [12] 6281 	mov	a,_bp
      004EA4 24 15            [12] 6282 	add	a,#0x15
      004EA6 F9               [12] 6283 	mov	r1,a
      004EA7 E7               [12] 6284 	mov	a,@r1
      004EA8 46               [12] 6285 	orl	a,@r0
      004EA9 F6               [12] 6286 	mov	@r0,a
      004EAA 09               [12] 6287 	inc	r1
      004EAB E7               [12] 6288 	mov	a,@r1
      004EAC 08               [12] 6289 	inc	r0
      004EAD 46               [12] 6290 	orl	a,@r0
      004EAE F6               [12] 6291 	mov	@r0,a
      004EAF 09               [12] 6292 	inc	r1
      004EB0 E7               [12] 6293 	mov	a,@r1
      004EB1 08               [12] 6294 	inc	r0
      004EB2 46               [12] 6295 	orl	a,@r0
      004EB3 F6               [12] 6296 	mov	@r0,a
      004EB4 09               [12] 6297 	inc	r1
      004EB5 E7               [12] 6298 	mov	a,@r1
      004EB6 08               [12] 6299 	inc	r0
      004EB7 46               [12] 6300 	orl	a,@r0
      004EB8 F6               [12] 6301 	mov	@r0,a
                                   6302 ;	calc.c:293: (void)stack_push(ctx->ps, d1);
      004EB9 8A 82            [24] 6303 	mov	dpl,r2
      004EBB 8B 83            [24] 6304 	mov	dph,r3
      004EBD 8C F0            [24] 6305 	mov	b,r4
      004EBF 12 70 79         [24] 6306 	lcall	__gptrget
      004EC2 FA               [12] 6307 	mov	r2,a
      004EC3 A3               [24] 6308 	inc	dptr
      004EC4 12 70 79         [24] 6309 	lcall	__gptrget
      004EC7 FB               [12] 6310 	mov	r3,a
      004EC8 A3               [24] 6311 	inc	dptr
      004EC9 12 70 79         [24] 6312 	lcall	__gptrget
      004ECC FC               [12] 6313 	mov	r4,a
      004ECD E5 08            [12] 6314 	mov	a,_bp
      004ECF 24 19            [12] 6315 	add	a,#0x19
      004ED1 F8               [12] 6316 	mov	r0,a
      004ED2 E6               [12] 6317 	mov	a,@r0
      004ED3 C0 E0            [24] 6318 	push	acc
      004ED5 08               [12] 6319 	inc	r0
      004ED6 E6               [12] 6320 	mov	a,@r0
      004ED7 C0 E0            [24] 6321 	push	acc
      004ED9 08               [12] 6322 	inc	r0
      004EDA E6               [12] 6323 	mov	a,@r0
      004EDB C0 E0            [24] 6324 	push	acc
      004EDD 08               [12] 6325 	inc	r0
      004EDE E6               [12] 6326 	mov	a,@r0
      004EDF C0 E0            [24] 6327 	push	acc
      004EE1 8A 82            [24] 6328 	mov	dpl,r2
      004EE3 8B 83            [24] 6329 	mov	dph,r3
      004EE5 8C F0            [24] 6330 	mov	b,r4
      004EE7 12 26 BA         [24] 6331 	lcall	_stack_push
      004EEA E5 81            [12] 6332 	mov	a,sp
      004EEC 24 FC            [12] 6333 	add	a,#0xfc
      004EEE F5 81            [12] 6334 	mov	sp,a
                                   6335 ;	calc.c:295: break;
      004EF0 02 56 65         [24] 6336 	ljmp	00249$
                                   6337 ;	calc.c:296: case '^':
      004EF3                       6338 00216$:
                                   6339 ;	calc.c:297: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004EF3 E5 08            [12] 6340 	mov	a,_bp
      004EF5 24 15            [12] 6341 	add	a,#0x15
      004EF7 FF               [12] 6342 	mov	r7,a
      004EF8 E5 08            [12] 6343 	mov	a,_bp
      004EFA 24 0E            [12] 6344 	add	a,#0x0e
      004EFC F8               [12] 6345 	mov	r0,a
      004EFD A6 07            [24] 6346 	mov	@r0,ar7
      004EFF 08               [12] 6347 	inc	r0
      004F00 76 00            [12] 6348 	mov	@r0,#0x00
      004F02 08               [12] 6349 	inc	r0
      004F03 76 40            [12] 6350 	mov	@r0,#0x40
      004F05 E5 08            [12] 6351 	mov	a,_bp
      004F07 24 12            [12] 6352 	add	a,#0x12
      004F09 F8               [12] 6353 	mov	r0,a
      004F0A 74 13            [12] 6354 	mov	a,#0x13
      004F0C 26               [12] 6355 	add	a,@r0
      004F0D FA               [12] 6356 	mov	r2,a
      004F0E 74 40            [12] 6357 	mov	a,#0x40
      004F10 08               [12] 6358 	inc	r0
      004F11 36               [12] 6359 	addc	a,@r0
      004F12 FB               [12] 6360 	mov	r3,a
      004F13 08               [12] 6361 	inc	r0
      004F14 86 04            [24] 6362 	mov	ar4,@r0
      004F16 8A 82            [24] 6363 	mov	dpl,r2
      004F18 8B 83            [24] 6364 	mov	dph,r3
      004F1A 8C F0            [24] 6365 	mov	b,r4
      004F1C 12 70 79         [24] 6366 	lcall	__gptrget
      004F1F FD               [12] 6367 	mov	r5,a
      004F20 A3               [24] 6368 	inc	dptr
      004F21 12 70 79         [24] 6369 	lcall	__gptrget
      004F24 FE               [12] 6370 	mov	r6,a
      004F25 A3               [24] 6371 	inc	dptr
      004F26 12 70 79         [24] 6372 	lcall	__gptrget
      004F29 FF               [12] 6373 	mov	r7,a
      004F2A C0 04            [24] 6374 	push	ar4
      004F2C C0 03            [24] 6375 	push	ar3
      004F2E C0 02            [24] 6376 	push	ar2
      004F30 E5 08            [12] 6377 	mov	a,_bp
      004F32 24 0E            [12] 6378 	add	a,#0x0e
      004F34 F8               [12] 6379 	mov	r0,a
      004F35 E6               [12] 6380 	mov	a,@r0
      004F36 C0 E0            [24] 6381 	push	acc
      004F38 08               [12] 6382 	inc	r0
      004F39 E6               [12] 6383 	mov	a,@r0
      004F3A C0 E0            [24] 6384 	push	acc
      004F3C 08               [12] 6385 	inc	r0
      004F3D E6               [12] 6386 	mov	a,@r0
      004F3E C0 E0            [24] 6387 	push	acc
      004F40 8D 82            [24] 6388 	mov	dpl,r5
      004F42 8E 83            [24] 6389 	mov	dph,r6
      004F44 8F F0            [24] 6390 	mov	b,r7
      004F46 12 27 B4         [24] 6391 	lcall	_stack_pop
      004F49 AE 82            [24] 6392 	mov	r6,dpl
      004F4B AF 83            [24] 6393 	mov	r7,dph
      004F4D 15 81            [12] 6394 	dec	sp
      004F4F 15 81            [12] 6395 	dec	sp
      004F51 15 81            [12] 6396 	dec	sp
      004F53 D0 02            [24] 6397 	pop	ar2
      004F55 D0 03            [24] 6398 	pop	ar3
      004F57 D0 04            [24] 6399 	pop	ar4
      004F59 EE               [12] 6400 	mov	a,r6
      004F5A 4F               [12] 6401 	orl	a,r7
      004F5B 70 25            [24] 6402 	jnz	00221$
      004F5D 7D 3E            [12] 6403 	mov	r5,#___str_10
      004F5F 7C 89            [12] 6404 	mov	r4,#(___str_10 >> 8)
      004F61 7B 80            [12] 6405 	mov	r3,#0x80
                                   6406 ;	calc.c:51: return;
      004F63                       6407 00472$:
                                   6408 ;	calc.c:49: for (; *s; s++) putchar(*s);
      004F63 8D 82            [24] 6409 	mov	dpl,r5
      004F65 8C 83            [24] 6410 	mov	dph,r4
      004F67 8B F0            [24] 6411 	mov	b,r3
      004F69 12 70 79         [24] 6412 	lcall	__gptrget
      004F6C FF               [12] 6413 	mov	r7,a
      004F6D 70 03            [24] 6414 	jnz	01376$
      004F6F 02 56 65         [24] 6415 	ljmp	00249$
      004F72                       6416 01376$:
      004F72 7E 00            [12] 6417 	mov	r6,#0x00
      004F74 8F 82            [24] 6418 	mov	dpl,r7
      004F76 8E 83            [24] 6419 	mov	dph,r6
      004F78 12 2C 1F         [24] 6420 	lcall	_putchar
      004F7B 0D               [12] 6421 	inc	r5
                                   6422 ;	calc.c:297: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004F7C BD 00 E4         [24] 6423 	cjne	r5,#0x00,00472$
      004F7F 0C               [12] 6424 	inc	r4
      004F80 80 E1            [24] 6425 	sjmp	00472$
      004F82                       6426 00221$:
                                   6427 ;	calc.c:298: else if (!stack_pop(ctx->ps, &d1)) {
      004F82 E5 08            [12] 6428 	mov	a,_bp
      004F84 24 19            [12] 6429 	add	a,#0x19
      004F86 FF               [12] 6430 	mov	r7,a
      004F87 E5 08            [12] 6431 	mov	a,_bp
      004F89 24 0E            [12] 6432 	add	a,#0x0e
      004F8B F8               [12] 6433 	mov	r0,a
      004F8C A6 07            [24] 6434 	mov	@r0,ar7
      004F8E 08               [12] 6435 	inc	r0
      004F8F 76 00            [12] 6436 	mov	@r0,#0x00
      004F91 08               [12] 6437 	inc	r0
      004F92 76 40            [12] 6438 	mov	@r0,#0x40
      004F94 8A 82            [24] 6439 	mov	dpl,r2
      004F96 8B 83            [24] 6440 	mov	dph,r3
      004F98 8C F0            [24] 6441 	mov	b,r4
      004F9A 12 70 79         [24] 6442 	lcall	__gptrget
      004F9D FD               [12] 6443 	mov	r5,a
      004F9E A3               [24] 6444 	inc	dptr
      004F9F 12 70 79         [24] 6445 	lcall	__gptrget
      004FA2 FE               [12] 6446 	mov	r6,a
      004FA3 A3               [24] 6447 	inc	dptr
      004FA4 12 70 79         [24] 6448 	lcall	__gptrget
      004FA7 FF               [12] 6449 	mov	r7,a
      004FA8 C0 04            [24] 6450 	push	ar4
      004FAA C0 03            [24] 6451 	push	ar3
      004FAC C0 02            [24] 6452 	push	ar2
      004FAE E5 08            [12] 6453 	mov	a,_bp
      004FB0 24 0E            [12] 6454 	add	a,#0x0e
      004FB2 F8               [12] 6455 	mov	r0,a
      004FB3 E6               [12] 6456 	mov	a,@r0
      004FB4 C0 E0            [24] 6457 	push	acc
      004FB6 08               [12] 6458 	inc	r0
      004FB7 E6               [12] 6459 	mov	a,@r0
      004FB8 C0 E0            [24] 6460 	push	acc
      004FBA 08               [12] 6461 	inc	r0
      004FBB E6               [12] 6462 	mov	a,@r0
      004FBC C0 E0            [24] 6463 	push	acc
      004FBE 8D 82            [24] 6464 	mov	dpl,r5
      004FC0 8E 83            [24] 6465 	mov	dph,r6
      004FC2 8F F0            [24] 6466 	mov	b,r7
      004FC4 12 27 B4         [24] 6467 	lcall	_stack_pop
      004FC7 AE 82            [24] 6468 	mov	r6,dpl
      004FC9 AF 83            [24] 6469 	mov	r7,dph
      004FCB 15 81            [12] 6470 	dec	sp
      004FCD 15 81            [12] 6471 	dec	sp
      004FCF 15 81            [12] 6472 	dec	sp
      004FD1 D0 02            [24] 6473 	pop	ar2
      004FD3 D0 03            [24] 6474 	pop	ar3
      004FD5 D0 04            [24] 6475 	pop	ar4
      004FD7 EE               [12] 6476 	mov	a,r6
      004FD8 4F               [12] 6477 	orl	a,r7
      004FD9 70 5C            [24] 6478 	jnz	00218$
                                   6479 ;	calc.c:299: (void)stack_push(ctx->ps, d0);
      004FDB 8A 82            [24] 6480 	mov	dpl,r2
      004FDD 8B 83            [24] 6481 	mov	dph,r3
      004FDF 8C F0            [24] 6482 	mov	b,r4
      004FE1 12 70 79         [24] 6483 	lcall	__gptrget
      004FE4 FD               [12] 6484 	mov	r5,a
      004FE5 A3               [24] 6485 	inc	dptr
      004FE6 12 70 79         [24] 6486 	lcall	__gptrget
      004FE9 FE               [12] 6487 	mov	r6,a
      004FEA A3               [24] 6488 	inc	dptr
      004FEB 12 70 79         [24] 6489 	lcall	__gptrget
      004FEE FF               [12] 6490 	mov	r7,a
      004FEF E5 08            [12] 6491 	mov	a,_bp
      004FF1 24 15            [12] 6492 	add	a,#0x15
      004FF3 F8               [12] 6493 	mov	r0,a
      004FF4 E6               [12] 6494 	mov	a,@r0
      004FF5 C0 E0            [24] 6495 	push	acc
      004FF7 08               [12] 6496 	inc	r0
      004FF8 E6               [12] 6497 	mov	a,@r0
      004FF9 C0 E0            [24] 6498 	push	acc
      004FFB 08               [12] 6499 	inc	r0
      004FFC E6               [12] 6500 	mov	a,@r0
      004FFD C0 E0            [24] 6501 	push	acc
      004FFF 08               [12] 6502 	inc	r0
      005000 E6               [12] 6503 	mov	a,@r0
      005001 C0 E0            [24] 6504 	push	acc
      005003 8D 82            [24] 6505 	mov	dpl,r5
      005005 8E 83            [24] 6506 	mov	dph,r6
      005007 8F F0            [24] 6507 	mov	b,r7
      005009 12 26 BA         [24] 6508 	lcall	_stack_push
      00500C E5 81            [12] 6509 	mov	a,sp
      00500E 24 FC            [12] 6510 	add	a,#0xfc
      005010 F5 81            [12] 6511 	mov	sp,a
                                   6512 ;	calc.c:300: printstr("\r\nstack underflow\r\n");
      005012 7D 3E            [12] 6513 	mov	r5,#___str_10
      005014 7C 89            [12] 6514 	mov	r4,#(___str_10 >> 8)
      005016 7B 80            [12] 6515 	mov	r3,#0x80
                                   6516 ;	calc.c:51: return;
      005018                       6517 00475$:
                                   6518 ;	calc.c:49: for (; *s; s++) putchar(*s);
      005018 8D 82            [24] 6519 	mov	dpl,r5
      00501A 8C 83            [24] 6520 	mov	dph,r4
      00501C 8B F0            [24] 6521 	mov	b,r3
      00501E 12 70 79         [24] 6522 	lcall	__gptrget
      005021 FF               [12] 6523 	mov	r7,a
      005022 70 03            [24] 6524 	jnz	01379$
      005024 02 56 65         [24] 6525 	ljmp	00249$
      005027                       6526 01379$:
      005027 7E 00            [12] 6527 	mov	r6,#0x00
      005029 8F 82            [24] 6528 	mov	dpl,r7
      00502B 8E 83            [24] 6529 	mov	dph,r6
      00502D 12 2C 1F         [24] 6530 	lcall	_putchar
      005030 0D               [12] 6531 	inc	r5
                                   6532 ;	calc.c:300: printstr("\r\nstack underflow\r\n");
      005031 BD 00 E4         [24] 6533 	cjne	r5,#0x00,00475$
      005034 0C               [12] 6534 	inc	r4
      005035 80 E1            [24] 6535 	sjmp	00475$
      005037                       6536 00218$:
                                   6537 ;	calc.c:302: d1 ^= d0;
      005037 E5 08            [12] 6538 	mov	a,_bp
      005039 24 19            [12] 6539 	add	a,#0x19
      00503B F8               [12] 6540 	mov	r0,a
      00503C E5 08            [12] 6541 	mov	a,_bp
      00503E 24 15            [12] 6542 	add	a,#0x15
      005040 F9               [12] 6543 	mov	r1,a
      005041 E7               [12] 6544 	mov	a,@r1
      005042 66               [12] 6545 	xrl	a,@r0
      005043 F6               [12] 6546 	mov	@r0,a
      005044 09               [12] 6547 	inc	r1
      005045 E7               [12] 6548 	mov	a,@r1
      005046 08               [12] 6549 	inc	r0
      005047 66               [12] 6550 	xrl	a,@r0
      005048 F6               [12] 6551 	mov	@r0,a
      005049 09               [12] 6552 	inc	r1
      00504A E7               [12] 6553 	mov	a,@r1
      00504B 08               [12] 6554 	inc	r0
      00504C 66               [12] 6555 	xrl	a,@r0
      00504D F6               [12] 6556 	mov	@r0,a
      00504E 09               [12] 6557 	inc	r1
      00504F E7               [12] 6558 	mov	a,@r1
      005050 08               [12] 6559 	inc	r0
      005051 66               [12] 6560 	xrl	a,@r0
      005052 F6               [12] 6561 	mov	@r0,a
                                   6562 ;	calc.c:303: (void)stack_push(ctx->ps, d1);
      005053 8A 82            [24] 6563 	mov	dpl,r2
      005055 8B 83            [24] 6564 	mov	dph,r3
      005057 8C F0            [24] 6565 	mov	b,r4
      005059 12 70 79         [24] 6566 	lcall	__gptrget
      00505C FA               [12] 6567 	mov	r2,a
      00505D A3               [24] 6568 	inc	dptr
      00505E 12 70 79         [24] 6569 	lcall	__gptrget
      005061 FB               [12] 6570 	mov	r3,a
      005062 A3               [24] 6571 	inc	dptr
      005063 12 70 79         [24] 6572 	lcall	__gptrget
      005066 FC               [12] 6573 	mov	r4,a
      005067 E5 08            [12] 6574 	mov	a,_bp
      005069 24 19            [12] 6575 	add	a,#0x19
      00506B F8               [12] 6576 	mov	r0,a
      00506C E6               [12] 6577 	mov	a,@r0
      00506D C0 E0            [24] 6578 	push	acc
      00506F 08               [12] 6579 	inc	r0
      005070 E6               [12] 6580 	mov	a,@r0
      005071 C0 E0            [24] 6581 	push	acc
      005073 08               [12] 6582 	inc	r0
      005074 E6               [12] 6583 	mov	a,@r0
      005075 C0 E0            [24] 6584 	push	acc
      005077 08               [12] 6585 	inc	r0
      005078 E6               [12] 6586 	mov	a,@r0
      005079 C0 E0            [24] 6587 	push	acc
      00507B 8A 82            [24] 6588 	mov	dpl,r2
      00507D 8B 83            [24] 6589 	mov	dph,r3
      00507F 8C F0            [24] 6590 	mov	b,r4
      005081 12 26 BA         [24] 6591 	lcall	_stack_push
      005084 E5 81            [12] 6592 	mov	a,sp
      005086 24 FC            [12] 6593 	add	a,#0xfc
      005088 F5 81            [12] 6594 	mov	sp,a
                                   6595 ;	calc.c:305: break;
      00508A 02 56 65         [24] 6596 	ljmp	00249$
                                   6597 ;	calc.c:306: case '>':
      00508D                       6598 00223$:
                                   6599 ;	calc.c:307: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      00508D E5 08            [12] 6600 	mov	a,_bp
      00508F 24 15            [12] 6601 	add	a,#0x15
      005091 FC               [12] 6602 	mov	r4,a
      005092 7B 00            [12] 6603 	mov	r3,#0x00
      005094 7A 40            [12] 6604 	mov	r2,#0x40
      005096 E5 08            [12] 6605 	mov	a,_bp
      005098 24 12            [12] 6606 	add	a,#0x12
      00509A F8               [12] 6607 	mov	r0,a
      00509B E5 08            [12] 6608 	mov	a,_bp
      00509D 24 0B            [12] 6609 	add	a,#0x0b
      00509F F9               [12] 6610 	mov	r1,a
      0050A0 74 13            [12] 6611 	mov	a,#0x13
      0050A2 26               [12] 6612 	add	a,@r0
      0050A3 F7               [12] 6613 	mov	@r1,a
      0050A4 74 40            [12] 6614 	mov	a,#0x40
      0050A6 08               [12] 6615 	inc	r0
      0050A7 36               [12] 6616 	addc	a,@r0
      0050A8 09               [12] 6617 	inc	r1
      0050A9 F7               [12] 6618 	mov	@r1,a
      0050AA 08               [12] 6619 	inc	r0
      0050AB 09               [12] 6620 	inc	r1
      0050AC E6               [12] 6621 	mov	a,@r0
      0050AD F7               [12] 6622 	mov	@r1,a
      0050AE E5 08            [12] 6623 	mov	a,_bp
      0050B0 24 0B            [12] 6624 	add	a,#0x0b
      0050B2 F8               [12] 6625 	mov	r0,a
      0050B3 86 82            [24] 6626 	mov	dpl,@r0
      0050B5 08               [12] 6627 	inc	r0
      0050B6 86 83            [24] 6628 	mov	dph,@r0
      0050B8 08               [12] 6629 	inc	r0
      0050B9 86 F0            [24] 6630 	mov	b,@r0
      0050BB 12 70 79         [24] 6631 	lcall	__gptrget
      0050BE FD               [12] 6632 	mov	r5,a
      0050BF A3               [24] 6633 	inc	dptr
      0050C0 12 70 79         [24] 6634 	lcall	__gptrget
      0050C3 FE               [12] 6635 	mov	r6,a
      0050C4 A3               [24] 6636 	inc	dptr
      0050C5 12 70 79         [24] 6637 	lcall	__gptrget
      0050C8 FF               [12] 6638 	mov	r7,a
      0050C9 C0 04            [24] 6639 	push	ar4
      0050CB C0 03            [24] 6640 	push	ar3
      0050CD C0 02            [24] 6641 	push	ar2
      0050CF 8D 82            [24] 6642 	mov	dpl,r5
      0050D1 8E 83            [24] 6643 	mov	dph,r6
      0050D3 8F F0            [24] 6644 	mov	b,r7
      0050D5 12 27 B4         [24] 6645 	lcall	_stack_pop
      0050D8 AE 82            [24] 6646 	mov	r6,dpl
      0050DA AF 83            [24] 6647 	mov	r7,dph
      0050DC 15 81            [12] 6648 	dec	sp
      0050DE 15 81            [12] 6649 	dec	sp
      0050E0 15 81            [12] 6650 	dec	sp
      0050E2 EE               [12] 6651 	mov	a,r6
      0050E3 4F               [12] 6652 	orl	a,r7
      0050E4 70 25            [24] 6653 	jnz	00228$
      0050E6 7D 3E            [12] 6654 	mov	r5,#___str_10
      0050E8 7C 89            [12] 6655 	mov	r4,#(___str_10 >> 8)
      0050EA 7B 80            [12] 6656 	mov	r3,#0x80
                                   6657 ;	calc.c:51: return;
      0050EC                       6658 00478$:
                                   6659 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0050EC 8D 82            [24] 6660 	mov	dpl,r5
      0050EE 8C 83            [24] 6661 	mov	dph,r4
      0050F0 8B F0            [24] 6662 	mov	b,r3
      0050F2 12 70 79         [24] 6663 	lcall	__gptrget
      0050F5 FF               [12] 6664 	mov	r7,a
      0050F6 70 03            [24] 6665 	jnz	01382$
      0050F8 02 56 65         [24] 6666 	ljmp	00249$
      0050FB                       6667 01382$:
      0050FB 7E 00            [12] 6668 	mov	r6,#0x00
      0050FD 8F 82            [24] 6669 	mov	dpl,r7
      0050FF 8E 83            [24] 6670 	mov	dph,r6
      005101 12 2C 1F         [24] 6671 	lcall	_putchar
      005104 0D               [12] 6672 	inc	r5
                                   6673 ;	calc.c:307: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      005105 BD 00 E4         [24] 6674 	cjne	r5,#0x00,00478$
      005108 0C               [12] 6675 	inc	r4
      005109 80 E1            [24] 6676 	sjmp	00478$
      00510B                       6677 00228$:
                                   6678 ;	calc.c:308: else if (!stack_pop(ctx->ps, &d1)) {
      00510B E5 08            [12] 6679 	mov	a,_bp
      00510D 24 19            [12] 6680 	add	a,#0x19
      00510F FC               [12] 6681 	mov	r4,a
      005110 7B 00            [12] 6682 	mov	r3,#0x00
      005112 7A 40            [12] 6683 	mov	r2,#0x40
      005114 E5 08            [12] 6684 	mov	a,_bp
      005116 24 0B            [12] 6685 	add	a,#0x0b
      005118 F8               [12] 6686 	mov	r0,a
      005119 86 82            [24] 6687 	mov	dpl,@r0
      00511B 08               [12] 6688 	inc	r0
      00511C 86 83            [24] 6689 	mov	dph,@r0
      00511E 08               [12] 6690 	inc	r0
      00511F 86 F0            [24] 6691 	mov	b,@r0
      005121 12 70 79         [24] 6692 	lcall	__gptrget
      005124 FD               [12] 6693 	mov	r5,a
      005125 A3               [24] 6694 	inc	dptr
      005126 12 70 79         [24] 6695 	lcall	__gptrget
      005129 FE               [12] 6696 	mov	r6,a
      00512A A3               [24] 6697 	inc	dptr
      00512B 12 70 79         [24] 6698 	lcall	__gptrget
      00512E FF               [12] 6699 	mov	r7,a
      00512F C0 04            [24] 6700 	push	ar4
      005131 C0 03            [24] 6701 	push	ar3
      005133 C0 02            [24] 6702 	push	ar2
      005135 8D 82            [24] 6703 	mov	dpl,r5
      005137 8E 83            [24] 6704 	mov	dph,r6
      005139 8F F0            [24] 6705 	mov	b,r7
      00513B 12 27 B4         [24] 6706 	lcall	_stack_pop
      00513E AE 82            [24] 6707 	mov	r6,dpl
      005140 AF 83            [24] 6708 	mov	r7,dph
      005142 15 81            [12] 6709 	dec	sp
      005144 15 81            [12] 6710 	dec	sp
      005146 15 81            [12] 6711 	dec	sp
      005148 EE               [12] 6712 	mov	a,r6
      005149 4F               [12] 6713 	orl	a,r7
      00514A 70 63            [24] 6714 	jnz	00225$
                                   6715 ;	calc.c:309: (void)stack_push(ctx->ps, d0);
      00514C E5 08            [12] 6716 	mov	a,_bp
      00514E 24 0B            [12] 6717 	add	a,#0x0b
      005150 F8               [12] 6718 	mov	r0,a
      005151 86 82            [24] 6719 	mov	dpl,@r0
      005153 08               [12] 6720 	inc	r0
      005154 86 83            [24] 6721 	mov	dph,@r0
      005156 08               [12] 6722 	inc	r0
      005157 86 F0            [24] 6723 	mov	b,@r0
      005159 12 70 79         [24] 6724 	lcall	__gptrget
      00515C FD               [12] 6725 	mov	r5,a
      00515D A3               [24] 6726 	inc	dptr
      00515E 12 70 79         [24] 6727 	lcall	__gptrget
      005161 FE               [12] 6728 	mov	r6,a
      005162 A3               [24] 6729 	inc	dptr
      005163 12 70 79         [24] 6730 	lcall	__gptrget
      005166 FF               [12] 6731 	mov	r7,a
      005167 E5 08            [12] 6732 	mov	a,_bp
      005169 24 15            [12] 6733 	add	a,#0x15
      00516B F8               [12] 6734 	mov	r0,a
      00516C E6               [12] 6735 	mov	a,@r0
      00516D C0 E0            [24] 6736 	push	acc
      00516F 08               [12] 6737 	inc	r0
      005170 E6               [12] 6738 	mov	a,@r0
      005171 C0 E0            [24] 6739 	push	acc
      005173 08               [12] 6740 	inc	r0
      005174 E6               [12] 6741 	mov	a,@r0
      005175 C0 E0            [24] 6742 	push	acc
      005177 08               [12] 6743 	inc	r0
      005178 E6               [12] 6744 	mov	a,@r0
      005179 C0 E0            [24] 6745 	push	acc
      00517B 8D 82            [24] 6746 	mov	dpl,r5
      00517D 8E 83            [24] 6747 	mov	dph,r6
      00517F 8F F0            [24] 6748 	mov	b,r7
      005181 12 26 BA         [24] 6749 	lcall	_stack_push
      005184 E5 81            [12] 6750 	mov	a,sp
      005186 24 FC            [12] 6751 	add	a,#0xfc
      005188 F5 81            [12] 6752 	mov	sp,a
                                   6753 ;	calc.c:310: printstr("\r\nstack underflow\r\n");
      00518A 7D 3E            [12] 6754 	mov	r5,#___str_10
      00518C 7C 89            [12] 6755 	mov	r4,#(___str_10 >> 8)
      00518E 7B 80            [12] 6756 	mov	r3,#0x80
                                   6757 ;	calc.c:51: return;
      005190                       6758 00481$:
                                   6759 ;	calc.c:49: for (; *s; s++) putchar(*s);
      005190 8D 82            [24] 6760 	mov	dpl,r5
      005192 8C 83            [24] 6761 	mov	dph,r4
      005194 8B F0            [24] 6762 	mov	b,r3
      005196 12 70 79         [24] 6763 	lcall	__gptrget
      005199 FF               [12] 6764 	mov	r7,a
      00519A 70 03            [24] 6765 	jnz	01385$
      00519C 02 56 65         [24] 6766 	ljmp	00249$
      00519F                       6767 01385$:
      00519F 7E 00            [12] 6768 	mov	r6,#0x00
      0051A1 8F 82            [24] 6769 	mov	dpl,r7
      0051A3 8E 83            [24] 6770 	mov	dph,r6
      0051A5 12 2C 1F         [24] 6771 	lcall	_putchar
      0051A8 0D               [12] 6772 	inc	r5
                                   6773 ;	calc.c:310: printstr("\r\nstack underflow\r\n");
      0051A9 BD 00 E4         [24] 6774 	cjne	r5,#0x00,00481$
      0051AC 0C               [12] 6775 	inc	r4
      0051AD 80 E1            [24] 6776 	sjmp	00481$
      0051AF                       6777 00225$:
                                   6778 ;	calc.c:312: d1 = (unsigned long)d1 >> ((unsigned long)d0 & 0x0000001flu);
      0051AF E5 08            [12] 6779 	mov	a,_bp
      0051B1 24 19            [12] 6780 	add	a,#0x19
      0051B3 F8               [12] 6781 	mov	r0,a
      0051B4 86 04            [24] 6782 	mov	ar4,@r0
      0051B6 08               [12] 6783 	inc	r0
      0051B7 86 05            [24] 6784 	mov	ar5,@r0
      0051B9 08               [12] 6785 	inc	r0
      0051BA 86 06            [24] 6786 	mov	ar6,@r0
      0051BC 08               [12] 6787 	inc	r0
      0051BD 86 07            [24] 6788 	mov	ar7,@r0
      0051BF E5 08            [12] 6789 	mov	a,_bp
      0051C1 24 15            [12] 6790 	add	a,#0x15
      0051C3 F8               [12] 6791 	mov	r0,a
      0051C4 86 03            [24] 6792 	mov	ar3,@r0
      0051C6 53 03 1F         [24] 6793 	anl	ar3,#0x1f
      0051C9 8B F0            [24] 6794 	mov	b,r3
      0051CB 05 F0            [12] 6795 	inc	b
      0051CD 80 0D            [24] 6796 	sjmp	01388$
      0051CF                       6797 01387$:
      0051CF C3               [12] 6798 	clr	c
      0051D0 EF               [12] 6799 	mov	a,r7
      0051D1 13               [12] 6800 	rrc	a
      0051D2 FF               [12] 6801 	mov	r7,a
      0051D3 EE               [12] 6802 	mov	a,r6
      0051D4 13               [12] 6803 	rrc	a
      0051D5 FE               [12] 6804 	mov	r6,a
      0051D6 ED               [12] 6805 	mov	a,r5
      0051D7 13               [12] 6806 	rrc	a
      0051D8 FD               [12] 6807 	mov	r5,a
      0051D9 EC               [12] 6808 	mov	a,r4
      0051DA 13               [12] 6809 	rrc	a
      0051DB FC               [12] 6810 	mov	r4,a
      0051DC                       6811 01388$:
      0051DC D5 F0 F0         [24] 6812 	djnz	b,01387$
      0051DF E5 08            [12] 6813 	mov	a,_bp
      0051E1 24 19            [12] 6814 	add	a,#0x19
      0051E3 F8               [12] 6815 	mov	r0,a
      0051E4 A6 04            [24] 6816 	mov	@r0,ar4
      0051E6 08               [12] 6817 	inc	r0
      0051E7 A6 05            [24] 6818 	mov	@r0,ar5
      0051E9 08               [12] 6819 	inc	r0
      0051EA A6 06            [24] 6820 	mov	@r0,ar6
      0051EC 08               [12] 6821 	inc	r0
      0051ED A6 07            [24] 6822 	mov	@r0,ar7
                                   6823 ;	calc.c:313: (void)stack_push(ctx->ps, d1);
      0051EF E5 08            [12] 6824 	mov	a,_bp
      0051F1 24 0B            [12] 6825 	add	a,#0x0b
      0051F3 F8               [12] 6826 	mov	r0,a
      0051F4 86 82            [24] 6827 	mov	dpl,@r0
      0051F6 08               [12] 6828 	inc	r0
      0051F7 86 83            [24] 6829 	mov	dph,@r0
      0051F9 08               [12] 6830 	inc	r0
      0051FA 86 F0            [24] 6831 	mov	b,@r0
      0051FC 12 70 79         [24] 6832 	lcall	__gptrget
      0051FF FD               [12] 6833 	mov	r5,a
      005200 A3               [24] 6834 	inc	dptr
      005201 12 70 79         [24] 6835 	lcall	__gptrget
      005204 FE               [12] 6836 	mov	r6,a
      005205 A3               [24] 6837 	inc	dptr
      005206 12 70 79         [24] 6838 	lcall	__gptrget
      005209 FF               [12] 6839 	mov	r7,a
      00520A E5 08            [12] 6840 	mov	a,_bp
      00520C 24 19            [12] 6841 	add	a,#0x19
      00520E F8               [12] 6842 	mov	r0,a
      00520F E6               [12] 6843 	mov	a,@r0
      005210 C0 E0            [24] 6844 	push	acc
      005212 08               [12] 6845 	inc	r0
      005213 E6               [12] 6846 	mov	a,@r0
      005214 C0 E0            [24] 6847 	push	acc
      005216 08               [12] 6848 	inc	r0
      005217 E6               [12] 6849 	mov	a,@r0
      005218 C0 E0            [24] 6850 	push	acc
      00521A 08               [12] 6851 	inc	r0
      00521B E6               [12] 6852 	mov	a,@r0
      00521C C0 E0            [24] 6853 	push	acc
      00521E 8D 82            [24] 6854 	mov	dpl,r5
      005220 8E 83            [24] 6855 	mov	dph,r6
      005222 8F F0            [24] 6856 	mov	b,r7
      005224 12 26 BA         [24] 6857 	lcall	_stack_push
      005227 E5 81            [12] 6858 	mov	a,sp
      005229 24 FC            [12] 6859 	add	a,#0xfc
      00522B F5 81            [12] 6860 	mov	sp,a
                                   6861 ;	calc.c:315: break;
      00522D 02 56 65         [24] 6862 	ljmp	00249$
                                   6863 ;	calc.c:316: case ']':
      005230                       6864 00230$:
                                   6865 ;	calc.c:317: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      005230 E5 08            [12] 6866 	mov	a,_bp
      005232 24 15            [12] 6867 	add	a,#0x15
      005234 FF               [12] 6868 	mov	r7,a
      005235 E5 08            [12] 6869 	mov	a,_bp
      005237 24 0E            [12] 6870 	add	a,#0x0e
      005239 F8               [12] 6871 	mov	r0,a
      00523A A6 07            [24] 6872 	mov	@r0,ar7
      00523C 08               [12] 6873 	inc	r0
      00523D 76 00            [12] 6874 	mov	@r0,#0x00
      00523F 08               [12] 6875 	inc	r0
      005240 76 40            [12] 6876 	mov	@r0,#0x40
      005242 E5 08            [12] 6877 	mov	a,_bp
      005244 24 12            [12] 6878 	add	a,#0x12
      005246 F8               [12] 6879 	mov	r0,a
      005247 74 13            [12] 6880 	mov	a,#0x13
      005249 26               [12] 6881 	add	a,@r0
      00524A FA               [12] 6882 	mov	r2,a
      00524B 74 40            [12] 6883 	mov	a,#0x40
      00524D 08               [12] 6884 	inc	r0
      00524E 36               [12] 6885 	addc	a,@r0
      00524F FB               [12] 6886 	mov	r3,a
      005250 08               [12] 6887 	inc	r0
      005251 86 04            [24] 6888 	mov	ar4,@r0
      005253 8A 82            [24] 6889 	mov	dpl,r2
      005255 8B 83            [24] 6890 	mov	dph,r3
      005257 8C F0            [24] 6891 	mov	b,r4
      005259 12 70 79         [24] 6892 	lcall	__gptrget
      00525C FD               [12] 6893 	mov	r5,a
      00525D A3               [24] 6894 	inc	dptr
      00525E 12 70 79         [24] 6895 	lcall	__gptrget
      005261 FE               [12] 6896 	mov	r6,a
      005262 A3               [24] 6897 	inc	dptr
      005263 12 70 79         [24] 6898 	lcall	__gptrget
      005266 FF               [12] 6899 	mov	r7,a
      005267 C0 04            [24] 6900 	push	ar4
      005269 C0 03            [24] 6901 	push	ar3
      00526B C0 02            [24] 6902 	push	ar2
      00526D E5 08            [12] 6903 	mov	a,_bp
      00526F 24 0E            [12] 6904 	add	a,#0x0e
      005271 F8               [12] 6905 	mov	r0,a
      005272 E6               [12] 6906 	mov	a,@r0
      005273 C0 E0            [24] 6907 	push	acc
      005275 08               [12] 6908 	inc	r0
      005276 E6               [12] 6909 	mov	a,@r0
      005277 C0 E0            [24] 6910 	push	acc
      005279 08               [12] 6911 	inc	r0
      00527A E6               [12] 6912 	mov	a,@r0
      00527B C0 E0            [24] 6913 	push	acc
      00527D 8D 82            [24] 6914 	mov	dpl,r5
      00527F 8E 83            [24] 6915 	mov	dph,r6
      005281 8F F0            [24] 6916 	mov	b,r7
      005283 12 27 B4         [24] 6917 	lcall	_stack_pop
      005286 AE 82            [24] 6918 	mov	r6,dpl
      005288 AF 83            [24] 6919 	mov	r7,dph
      00528A 15 81            [12] 6920 	dec	sp
      00528C 15 81            [12] 6921 	dec	sp
      00528E 15 81            [12] 6922 	dec	sp
      005290 D0 02            [24] 6923 	pop	ar2
      005292 D0 03            [24] 6924 	pop	ar3
      005294 D0 04            [24] 6925 	pop	ar4
      005296 EE               [12] 6926 	mov	a,r6
      005297 4F               [12] 6927 	orl	a,r7
      005298 70 25            [24] 6928 	jnz	00235$
      00529A 7D 3E            [12] 6929 	mov	r5,#___str_10
      00529C 7C 89            [12] 6930 	mov	r4,#(___str_10 >> 8)
      00529E 7B 80            [12] 6931 	mov	r3,#0x80
                                   6932 ;	calc.c:51: return;
      0052A0                       6933 00484$:
                                   6934 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0052A0 8D 82            [24] 6935 	mov	dpl,r5
      0052A2 8C 83            [24] 6936 	mov	dph,r4
      0052A4 8B F0            [24] 6937 	mov	b,r3
      0052A6 12 70 79         [24] 6938 	lcall	__gptrget
      0052A9 FF               [12] 6939 	mov	r7,a
      0052AA 70 03            [24] 6940 	jnz	01390$
      0052AC 02 56 65         [24] 6941 	ljmp	00249$
      0052AF                       6942 01390$:
      0052AF 7E 00            [12] 6943 	mov	r6,#0x00
      0052B1 8F 82            [24] 6944 	mov	dpl,r7
      0052B3 8E 83            [24] 6945 	mov	dph,r6
      0052B5 12 2C 1F         [24] 6946 	lcall	_putchar
      0052B8 0D               [12] 6947 	inc	r5
                                   6948 ;	calc.c:317: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0052B9 BD 00 E4         [24] 6949 	cjne	r5,#0x00,00484$
      0052BC 0C               [12] 6950 	inc	r4
      0052BD 80 E1            [24] 6951 	sjmp	00484$
      0052BF                       6952 00235$:
                                   6953 ;	calc.c:318: else if (!stack_pop(ctx->ps, &d1)) {
      0052BF E5 08            [12] 6954 	mov	a,_bp
      0052C1 24 19            [12] 6955 	add	a,#0x19
      0052C3 FF               [12] 6956 	mov	r7,a
      0052C4 E5 08            [12] 6957 	mov	a,_bp
      0052C6 24 0E            [12] 6958 	add	a,#0x0e
      0052C8 F8               [12] 6959 	mov	r0,a
      0052C9 A6 07            [24] 6960 	mov	@r0,ar7
      0052CB 08               [12] 6961 	inc	r0
      0052CC 76 00            [12] 6962 	mov	@r0,#0x00
      0052CE 08               [12] 6963 	inc	r0
      0052CF 76 40            [12] 6964 	mov	@r0,#0x40
      0052D1 8A 82            [24] 6965 	mov	dpl,r2
      0052D3 8B 83            [24] 6966 	mov	dph,r3
      0052D5 8C F0            [24] 6967 	mov	b,r4
      0052D7 12 70 79         [24] 6968 	lcall	__gptrget
      0052DA FD               [12] 6969 	mov	r5,a
      0052DB A3               [24] 6970 	inc	dptr
      0052DC 12 70 79         [24] 6971 	lcall	__gptrget
      0052DF FE               [12] 6972 	mov	r6,a
      0052E0 A3               [24] 6973 	inc	dptr
      0052E1 12 70 79         [24] 6974 	lcall	__gptrget
      0052E4 FF               [12] 6975 	mov	r7,a
      0052E5 C0 04            [24] 6976 	push	ar4
      0052E7 C0 03            [24] 6977 	push	ar3
      0052E9 C0 02            [24] 6978 	push	ar2
      0052EB E5 08            [12] 6979 	mov	a,_bp
      0052ED 24 0E            [12] 6980 	add	a,#0x0e
      0052EF F8               [12] 6981 	mov	r0,a
      0052F0 E6               [12] 6982 	mov	a,@r0
      0052F1 C0 E0            [24] 6983 	push	acc
      0052F3 08               [12] 6984 	inc	r0
      0052F4 E6               [12] 6985 	mov	a,@r0
      0052F5 C0 E0            [24] 6986 	push	acc
      0052F7 08               [12] 6987 	inc	r0
      0052F8 E6               [12] 6988 	mov	a,@r0
      0052F9 C0 E0            [24] 6989 	push	acc
      0052FB 8D 82            [24] 6990 	mov	dpl,r5
      0052FD 8E 83            [24] 6991 	mov	dph,r6
      0052FF 8F F0            [24] 6992 	mov	b,r7
      005301 12 27 B4         [24] 6993 	lcall	_stack_pop
      005304 AE 82            [24] 6994 	mov	r6,dpl
      005306 AF 83            [24] 6995 	mov	r7,dph
      005308 15 81            [12] 6996 	dec	sp
      00530A 15 81            [12] 6997 	dec	sp
      00530C 15 81            [12] 6998 	dec	sp
      00530E D0 02            [24] 6999 	pop	ar2
      005310 D0 03            [24] 7000 	pop	ar3
      005312 D0 04            [24] 7001 	pop	ar4
      005314 EE               [12] 7002 	mov	a,r6
      005315 4F               [12] 7003 	orl	a,r7
      005316 70 5C            [24] 7004 	jnz	00232$
                                   7005 ;	calc.c:319: (void)stack_push(ctx->ps, d0);
      005318 8A 82            [24] 7006 	mov	dpl,r2
      00531A 8B 83            [24] 7007 	mov	dph,r3
      00531C 8C F0            [24] 7008 	mov	b,r4
      00531E 12 70 79         [24] 7009 	lcall	__gptrget
      005321 FD               [12] 7010 	mov	r5,a
      005322 A3               [24] 7011 	inc	dptr
      005323 12 70 79         [24] 7012 	lcall	__gptrget
      005326 FE               [12] 7013 	mov	r6,a
      005327 A3               [24] 7014 	inc	dptr
      005328 12 70 79         [24] 7015 	lcall	__gptrget
      00532B FF               [12] 7016 	mov	r7,a
      00532C E5 08            [12] 7017 	mov	a,_bp
      00532E 24 15            [12] 7018 	add	a,#0x15
      005330 F8               [12] 7019 	mov	r0,a
      005331 E6               [12] 7020 	mov	a,@r0
      005332 C0 E0            [24] 7021 	push	acc
      005334 08               [12] 7022 	inc	r0
      005335 E6               [12] 7023 	mov	a,@r0
      005336 C0 E0            [24] 7024 	push	acc
      005338 08               [12] 7025 	inc	r0
      005339 E6               [12] 7026 	mov	a,@r0
      00533A C0 E0            [24] 7027 	push	acc
      00533C 08               [12] 7028 	inc	r0
      00533D E6               [12] 7029 	mov	a,@r0
      00533E C0 E0            [24] 7030 	push	acc
      005340 8D 82            [24] 7031 	mov	dpl,r5
      005342 8E 83            [24] 7032 	mov	dph,r6
      005344 8F F0            [24] 7033 	mov	b,r7
      005346 12 26 BA         [24] 7034 	lcall	_stack_push
      005349 E5 81            [12] 7035 	mov	a,sp
      00534B 24 FC            [12] 7036 	add	a,#0xfc
      00534D F5 81            [12] 7037 	mov	sp,a
                                   7038 ;	calc.c:320: printstr("\r\nstack underflow\r\n");
      00534F 7D 3E            [12] 7039 	mov	r5,#___str_10
      005351 7C 89            [12] 7040 	mov	r4,#(___str_10 >> 8)
      005353 7B 80            [12] 7041 	mov	r3,#0x80
                                   7042 ;	calc.c:51: return;
      005355                       7043 00487$:
                                   7044 ;	calc.c:49: for (; *s; s++) putchar(*s);
      005355 8D 82            [24] 7045 	mov	dpl,r5
      005357 8C 83            [24] 7046 	mov	dph,r4
      005359 8B F0            [24] 7047 	mov	b,r3
      00535B 12 70 79         [24] 7048 	lcall	__gptrget
      00535E FF               [12] 7049 	mov	r7,a
      00535F 70 03            [24] 7050 	jnz	01393$
      005361 02 56 65         [24] 7051 	ljmp	00249$
      005364                       7052 01393$:
      005364 7E 00            [12] 7053 	mov	r6,#0x00
      005366 8F 82            [24] 7054 	mov	dpl,r7
      005368 8E 83            [24] 7055 	mov	dph,r6
      00536A 12 2C 1F         [24] 7056 	lcall	_putchar
      00536D 0D               [12] 7057 	inc	r5
                                   7058 ;	calc.c:320: printstr("\r\nstack underflow\r\n");
      00536E BD 00 E4         [24] 7059 	cjne	r5,#0x00,00487$
      005371 0C               [12] 7060 	inc	r4
      005372 80 E1            [24] 7061 	sjmp	00487$
      005374                       7062 00232$:
                                   7063 ;	calc.c:322: d1 >>= ((unsigned long)d0 & 0x0000001flu);
      005374 E5 08            [12] 7064 	mov	a,_bp
      005376 24 15            [12] 7065 	add	a,#0x15
      005378 F8               [12] 7066 	mov	r0,a
      005379 86 07            [24] 7067 	mov	ar7,@r0
      00537B 53 07 1F         [24] 7068 	anl	ar7,#0x1f
      00537E 8F F0            [24] 7069 	mov	b,r7
      005380 05 F0            [12] 7070 	inc	b
      005382 E5 08            [12] 7071 	mov	a,_bp
      005384 24 19            [12] 7072 	add	a,#0x19
      005386 F8               [12] 7073 	mov	r0,a
      005387 08               [12] 7074 	inc	r0
      005388 08               [12] 7075 	inc	r0
      005389 08               [12] 7076 	inc	r0
      00538A E6               [12] 7077 	mov	a,@r0
      00538B 33               [12] 7078 	rlc	a
      00538C 92 D2            [24] 7079 	mov	ov,c
      00538E 18               [12] 7080 	dec	r0
      00538F 18               [12] 7081 	dec	r0
      005390 18               [12] 7082 	dec	r0
      005391 80 14            [24] 7083 	sjmp	01396$
      005393                       7084 01395$:
      005393 A2 D2            [12] 7085 	mov	c,ov
      005395 08               [12] 7086 	inc	r0
      005396 08               [12] 7087 	inc	r0
      005397 08               [12] 7088 	inc	r0
      005398 E6               [12] 7089 	mov	a,@r0
      005399 13               [12] 7090 	rrc	a
      00539A F6               [12] 7091 	mov	@r0,a
      00539B 18               [12] 7092 	dec	r0
      00539C E6               [12] 7093 	mov	a,@r0
      00539D 13               [12] 7094 	rrc	a
      00539E F6               [12] 7095 	mov	@r0,a
      00539F 18               [12] 7096 	dec	r0
      0053A0 E6               [12] 7097 	mov	a,@r0
      0053A1 13               [12] 7098 	rrc	a
      0053A2 F6               [12] 7099 	mov	@r0,a
      0053A3 18               [12] 7100 	dec	r0
      0053A4 E6               [12] 7101 	mov	a,@r0
      0053A5 13               [12] 7102 	rrc	a
      0053A6 F6               [12] 7103 	mov	@r0,a
      0053A7                       7104 01396$:
      0053A7 D5 F0 E9         [24] 7105 	djnz	b,01395$
                                   7106 ;	calc.c:323: (void)stack_push(ctx->ps, d1);
      0053AA 8A 82            [24] 7107 	mov	dpl,r2
      0053AC 8B 83            [24] 7108 	mov	dph,r3
      0053AE 8C F0            [24] 7109 	mov	b,r4
      0053B0 12 70 79         [24] 7110 	lcall	__gptrget
      0053B3 FA               [12] 7111 	mov	r2,a
      0053B4 A3               [24] 7112 	inc	dptr
      0053B5 12 70 79         [24] 7113 	lcall	__gptrget
      0053B8 FB               [12] 7114 	mov	r3,a
      0053B9 A3               [24] 7115 	inc	dptr
      0053BA 12 70 79         [24] 7116 	lcall	__gptrget
      0053BD FC               [12] 7117 	mov	r4,a
      0053BE E5 08            [12] 7118 	mov	a,_bp
      0053C0 24 19            [12] 7119 	add	a,#0x19
      0053C2 F8               [12] 7120 	mov	r0,a
      0053C3 E6               [12] 7121 	mov	a,@r0
      0053C4 C0 E0            [24] 7122 	push	acc
      0053C6 08               [12] 7123 	inc	r0
      0053C7 E6               [12] 7124 	mov	a,@r0
      0053C8 C0 E0            [24] 7125 	push	acc
      0053CA 08               [12] 7126 	inc	r0
      0053CB E6               [12] 7127 	mov	a,@r0
      0053CC C0 E0            [24] 7128 	push	acc
      0053CE 08               [12] 7129 	inc	r0
      0053CF E6               [12] 7130 	mov	a,@r0
      0053D0 C0 E0            [24] 7131 	push	acc
      0053D2 8A 82            [24] 7132 	mov	dpl,r2
      0053D4 8B 83            [24] 7133 	mov	dph,r3
      0053D6 8C F0            [24] 7134 	mov	b,r4
      0053D8 12 26 BA         [24] 7135 	lcall	_stack_push
      0053DB E5 81            [12] 7136 	mov	a,sp
      0053DD 24 FC            [12] 7137 	add	a,#0xfc
      0053DF F5 81            [12] 7138 	mov	sp,a
                                   7139 ;	calc.c:325: break;
      0053E1 02 56 65         [24] 7140 	ljmp	00249$
                                   7141 ;	calc.c:326: case '<':
      0053E4                       7142 00237$:
                                   7143 ;	calc.c:327: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0053E4 E5 08            [12] 7144 	mov	a,_bp
      0053E6 24 15            [12] 7145 	add	a,#0x15
      0053E8 FC               [12] 7146 	mov	r4,a
      0053E9 7B 00            [12] 7147 	mov	r3,#0x00
      0053EB 7A 40            [12] 7148 	mov	r2,#0x40
      0053ED E5 08            [12] 7149 	mov	a,_bp
      0053EF 24 12            [12] 7150 	add	a,#0x12
      0053F1 F8               [12] 7151 	mov	r0,a
      0053F2 E5 08            [12] 7152 	mov	a,_bp
      0053F4 24 0B            [12] 7153 	add	a,#0x0b
      0053F6 F9               [12] 7154 	mov	r1,a
      0053F7 74 13            [12] 7155 	mov	a,#0x13
      0053F9 26               [12] 7156 	add	a,@r0
      0053FA F7               [12] 7157 	mov	@r1,a
      0053FB 74 40            [12] 7158 	mov	a,#0x40
      0053FD 08               [12] 7159 	inc	r0
      0053FE 36               [12] 7160 	addc	a,@r0
      0053FF 09               [12] 7161 	inc	r1
      005400 F7               [12] 7162 	mov	@r1,a
      005401 08               [12] 7163 	inc	r0
      005402 09               [12] 7164 	inc	r1
      005403 E6               [12] 7165 	mov	a,@r0
      005404 F7               [12] 7166 	mov	@r1,a
      005405 E5 08            [12] 7167 	mov	a,_bp
      005407 24 0B            [12] 7168 	add	a,#0x0b
      005409 F8               [12] 7169 	mov	r0,a
      00540A 86 82            [24] 7170 	mov	dpl,@r0
      00540C 08               [12] 7171 	inc	r0
      00540D 86 83            [24] 7172 	mov	dph,@r0
      00540F 08               [12] 7173 	inc	r0
      005410 86 F0            [24] 7174 	mov	b,@r0
      005412 12 70 79         [24] 7175 	lcall	__gptrget
      005415 FD               [12] 7176 	mov	r5,a
      005416 A3               [24] 7177 	inc	dptr
      005417 12 70 79         [24] 7178 	lcall	__gptrget
      00541A FE               [12] 7179 	mov	r6,a
      00541B A3               [24] 7180 	inc	dptr
      00541C 12 70 79         [24] 7181 	lcall	__gptrget
      00541F FF               [12] 7182 	mov	r7,a
      005420 C0 04            [24] 7183 	push	ar4
      005422 C0 03            [24] 7184 	push	ar3
      005424 C0 02            [24] 7185 	push	ar2
      005426 8D 82            [24] 7186 	mov	dpl,r5
      005428 8E 83            [24] 7187 	mov	dph,r6
      00542A 8F F0            [24] 7188 	mov	b,r7
      00542C 12 27 B4         [24] 7189 	lcall	_stack_pop
      00542F AE 82            [24] 7190 	mov	r6,dpl
      005431 AF 83            [24] 7191 	mov	r7,dph
      005433 15 81            [12] 7192 	dec	sp
      005435 15 81            [12] 7193 	dec	sp
      005437 15 81            [12] 7194 	dec	sp
      005439 EE               [12] 7195 	mov	a,r6
      00543A 4F               [12] 7196 	orl	a,r7
      00543B 70 25            [24] 7197 	jnz	00242$
      00543D 7D 3E            [12] 7198 	mov	r5,#___str_10
      00543F 7C 89            [12] 7199 	mov	r4,#(___str_10 >> 8)
      005441 7B 80            [12] 7200 	mov	r3,#0x80
                                   7201 ;	calc.c:51: return;
      005443                       7202 00490$:
                                   7203 ;	calc.c:49: for (; *s; s++) putchar(*s);
      005443 8D 82            [24] 7204 	mov	dpl,r5
      005445 8C 83            [24] 7205 	mov	dph,r4
      005447 8B F0            [24] 7206 	mov	b,r3
      005449 12 70 79         [24] 7207 	lcall	__gptrget
      00544C FF               [12] 7208 	mov	r7,a
      00544D 70 03            [24] 7209 	jnz	01398$
      00544F 02 56 65         [24] 7210 	ljmp	00249$
      005452                       7211 01398$:
      005452 7E 00            [12] 7212 	mov	r6,#0x00
      005454 8F 82            [24] 7213 	mov	dpl,r7
      005456 8E 83            [24] 7214 	mov	dph,r6
      005458 12 2C 1F         [24] 7215 	lcall	_putchar
      00545B 0D               [12] 7216 	inc	r5
                                   7217 ;	calc.c:327: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      00545C BD 00 E4         [24] 7218 	cjne	r5,#0x00,00490$
      00545F 0C               [12] 7219 	inc	r4
      005460 80 E1            [24] 7220 	sjmp	00490$
      005462                       7221 00242$:
                                   7222 ;	calc.c:328: else if (!stack_pop(ctx->ps, &d1)) {
      005462 E5 08            [12] 7223 	mov	a,_bp
      005464 24 19            [12] 7224 	add	a,#0x19
      005466 FC               [12] 7225 	mov	r4,a
      005467 7B 00            [12] 7226 	mov	r3,#0x00
      005469 7A 40            [12] 7227 	mov	r2,#0x40
      00546B E5 08            [12] 7228 	mov	a,_bp
      00546D 24 0B            [12] 7229 	add	a,#0x0b
      00546F F8               [12] 7230 	mov	r0,a
      005470 86 82            [24] 7231 	mov	dpl,@r0
      005472 08               [12] 7232 	inc	r0
      005473 86 83            [24] 7233 	mov	dph,@r0
      005475 08               [12] 7234 	inc	r0
      005476 86 F0            [24] 7235 	mov	b,@r0
      005478 12 70 79         [24] 7236 	lcall	__gptrget
      00547B FD               [12] 7237 	mov	r5,a
      00547C A3               [24] 7238 	inc	dptr
      00547D 12 70 79         [24] 7239 	lcall	__gptrget
      005480 FE               [12] 7240 	mov	r6,a
      005481 A3               [24] 7241 	inc	dptr
      005482 12 70 79         [24] 7242 	lcall	__gptrget
      005485 FF               [12] 7243 	mov	r7,a
      005486 C0 04            [24] 7244 	push	ar4
      005488 C0 03            [24] 7245 	push	ar3
      00548A C0 02            [24] 7246 	push	ar2
      00548C 8D 82            [24] 7247 	mov	dpl,r5
      00548E 8E 83            [24] 7248 	mov	dph,r6
      005490 8F F0            [24] 7249 	mov	b,r7
      005492 12 27 B4         [24] 7250 	lcall	_stack_pop
      005495 AE 82            [24] 7251 	mov	r6,dpl
      005497 AF 83            [24] 7252 	mov	r7,dph
      005499 15 81            [12] 7253 	dec	sp
      00549B 15 81            [12] 7254 	dec	sp
      00549D 15 81            [12] 7255 	dec	sp
      00549F EE               [12] 7256 	mov	a,r6
      0054A0 4F               [12] 7257 	orl	a,r7
      0054A1 70 63            [24] 7258 	jnz	00239$
                                   7259 ;	calc.c:329: (void)stack_push(ctx->ps, d0);
      0054A3 E5 08            [12] 7260 	mov	a,_bp
      0054A5 24 0B            [12] 7261 	add	a,#0x0b
      0054A7 F8               [12] 7262 	mov	r0,a
      0054A8 86 82            [24] 7263 	mov	dpl,@r0
      0054AA 08               [12] 7264 	inc	r0
      0054AB 86 83            [24] 7265 	mov	dph,@r0
      0054AD 08               [12] 7266 	inc	r0
      0054AE 86 F0            [24] 7267 	mov	b,@r0
      0054B0 12 70 79         [24] 7268 	lcall	__gptrget
      0054B3 FD               [12] 7269 	mov	r5,a
      0054B4 A3               [24] 7270 	inc	dptr
      0054B5 12 70 79         [24] 7271 	lcall	__gptrget
      0054B8 FE               [12] 7272 	mov	r6,a
      0054B9 A3               [24] 7273 	inc	dptr
      0054BA 12 70 79         [24] 7274 	lcall	__gptrget
      0054BD FF               [12] 7275 	mov	r7,a
      0054BE E5 08            [12] 7276 	mov	a,_bp
      0054C0 24 15            [12] 7277 	add	a,#0x15
      0054C2 F8               [12] 7278 	mov	r0,a
      0054C3 E6               [12] 7279 	mov	a,@r0
      0054C4 C0 E0            [24] 7280 	push	acc
      0054C6 08               [12] 7281 	inc	r0
      0054C7 E6               [12] 7282 	mov	a,@r0
      0054C8 C0 E0            [24] 7283 	push	acc
      0054CA 08               [12] 7284 	inc	r0
      0054CB E6               [12] 7285 	mov	a,@r0
      0054CC C0 E0            [24] 7286 	push	acc
      0054CE 08               [12] 7287 	inc	r0
      0054CF E6               [12] 7288 	mov	a,@r0
      0054D0 C0 E0            [24] 7289 	push	acc
      0054D2 8D 82            [24] 7290 	mov	dpl,r5
      0054D4 8E 83            [24] 7291 	mov	dph,r6
      0054D6 8F F0            [24] 7292 	mov	b,r7
      0054D8 12 26 BA         [24] 7293 	lcall	_stack_push
      0054DB E5 81            [12] 7294 	mov	a,sp
      0054DD 24 FC            [12] 7295 	add	a,#0xfc
      0054DF F5 81            [12] 7296 	mov	sp,a
                                   7297 ;	calc.c:330: printstr("\r\nstack underflow\r\n");
      0054E1 7D 3E            [12] 7298 	mov	r5,#___str_10
      0054E3 7C 89            [12] 7299 	mov	r4,#(___str_10 >> 8)
      0054E5 7B 80            [12] 7300 	mov	r3,#0x80
                                   7301 ;	calc.c:51: return;
      0054E7                       7302 00493$:
                                   7303 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0054E7 8D 82            [24] 7304 	mov	dpl,r5
      0054E9 8C 83            [24] 7305 	mov	dph,r4
      0054EB 8B F0            [24] 7306 	mov	b,r3
      0054ED 12 70 79         [24] 7307 	lcall	__gptrget
      0054F0 FF               [12] 7308 	mov	r7,a
      0054F1 70 03            [24] 7309 	jnz	01401$
      0054F3 02 56 65         [24] 7310 	ljmp	00249$
      0054F6                       7311 01401$:
      0054F6 7E 00            [12] 7312 	mov	r6,#0x00
      0054F8 8F 82            [24] 7313 	mov	dpl,r7
      0054FA 8E 83            [24] 7314 	mov	dph,r6
      0054FC 12 2C 1F         [24] 7315 	lcall	_putchar
      0054FF 0D               [12] 7316 	inc	r5
                                   7317 ;	calc.c:330: printstr("\r\nstack underflow\r\n");
      005500 BD 00 E4         [24] 7318 	cjne	r5,#0x00,00493$
      005503 0C               [12] 7319 	inc	r4
      005504 80 E1            [24] 7320 	sjmp	00493$
      005506                       7321 00239$:
                                   7322 ;	calc.c:332: d1 <<= ((unsigned long)d0 & 0x0000001flu);
      005506 E5 08            [12] 7323 	mov	a,_bp
      005508 24 15            [12] 7324 	add	a,#0x15
      00550A F8               [12] 7325 	mov	r0,a
      00550B 86 07            [24] 7326 	mov	ar7,@r0
      00550D 74 1F            [12] 7327 	mov	a,#0x1f
      00550F 5F               [12] 7328 	anl	a,r7
      005510 FB               [12] 7329 	mov	r3,a
      005511 E5 08            [12] 7330 	mov	a,_bp
      005513 24 19            [12] 7331 	add	a,#0x19
      005515 F8               [12] 7332 	mov	r0,a
      005516 86 04            [24] 7333 	mov	ar4,@r0
      005518 08               [12] 7334 	inc	r0
      005519 86 05            [24] 7335 	mov	ar5,@r0
      00551B 08               [12] 7336 	inc	r0
      00551C 86 06            [24] 7337 	mov	ar6,@r0
      00551E 08               [12] 7338 	inc	r0
      00551F 86 07            [24] 7339 	mov	ar7,@r0
      005521 8B F0            [24] 7340 	mov	b,r3
      005523 05 F0            [12] 7341 	inc	b
      005525 80 0C            [24] 7342 	sjmp	01404$
      005527                       7343 01403$:
      005527 EC               [12] 7344 	mov	a,r4
      005528 2C               [12] 7345 	add	a,r4
      005529 FC               [12] 7346 	mov	r4,a
      00552A ED               [12] 7347 	mov	a,r5
      00552B 33               [12] 7348 	rlc	a
      00552C FD               [12] 7349 	mov	r5,a
      00552D EE               [12] 7350 	mov	a,r6
      00552E 33               [12] 7351 	rlc	a
      00552F FE               [12] 7352 	mov	r6,a
      005530 EF               [12] 7353 	mov	a,r7
      005531 33               [12] 7354 	rlc	a
      005532 FF               [12] 7355 	mov	r7,a
      005533                       7356 01404$:
      005533 D5 F0 F1         [24] 7357 	djnz	b,01403$
      005536 E5 08            [12] 7358 	mov	a,_bp
      005538 24 19            [12] 7359 	add	a,#0x19
      00553A F8               [12] 7360 	mov	r0,a
      00553B A6 04            [24] 7361 	mov	@r0,ar4
      00553D 08               [12] 7362 	inc	r0
      00553E A6 05            [24] 7363 	mov	@r0,ar5
      005540 08               [12] 7364 	inc	r0
      005541 A6 06            [24] 7365 	mov	@r0,ar6
      005543 08               [12] 7366 	inc	r0
      005544 A6 07            [24] 7367 	mov	@r0,ar7
                                   7368 ;	calc.c:333: (void)stack_push(ctx->ps, d1);
      005546 E5 08            [12] 7369 	mov	a,_bp
      005548 24 0B            [12] 7370 	add	a,#0x0b
      00554A F8               [12] 7371 	mov	r0,a
      00554B 86 82            [24] 7372 	mov	dpl,@r0
      00554D 08               [12] 7373 	inc	r0
      00554E 86 83            [24] 7374 	mov	dph,@r0
      005550 08               [12] 7375 	inc	r0
      005551 86 F0            [24] 7376 	mov	b,@r0
      005553 12 70 79         [24] 7377 	lcall	__gptrget
      005556 FD               [12] 7378 	mov	r5,a
      005557 A3               [24] 7379 	inc	dptr
      005558 12 70 79         [24] 7380 	lcall	__gptrget
      00555B FE               [12] 7381 	mov	r6,a
      00555C A3               [24] 7382 	inc	dptr
      00555D 12 70 79         [24] 7383 	lcall	__gptrget
      005560 FF               [12] 7384 	mov	r7,a
      005561 E5 08            [12] 7385 	mov	a,_bp
      005563 24 19            [12] 7386 	add	a,#0x19
      005565 F8               [12] 7387 	mov	r0,a
      005566 E6               [12] 7388 	mov	a,@r0
      005567 C0 E0            [24] 7389 	push	acc
      005569 08               [12] 7390 	inc	r0
      00556A E6               [12] 7391 	mov	a,@r0
      00556B C0 E0            [24] 7392 	push	acc
      00556D 08               [12] 7393 	inc	r0
      00556E E6               [12] 7394 	mov	a,@r0
      00556F C0 E0            [24] 7395 	push	acc
      005571 08               [12] 7396 	inc	r0
      005572 E6               [12] 7397 	mov	a,@r0
      005573 C0 E0            [24] 7398 	push	acc
      005575 8D 82            [24] 7399 	mov	dpl,r5
      005577 8E 83            [24] 7400 	mov	dph,r6
      005579 8F F0            [24] 7401 	mov	b,r7
      00557B 12 26 BA         [24] 7402 	lcall	_stack_push
      00557E E5 81            [12] 7403 	mov	a,sp
      005580 24 FC            [12] 7404 	add	a,#0xfc
      005582 F5 81            [12] 7405 	mov	sp,a
                                   7406 ;	calc.c:335: break;
      005584 02 56 65         [24] 7407 	ljmp	00249$
                                   7408 ;	calc.c:336: case '~':
      005587                       7409 00244$:
                                   7410 ;	calc.c:337: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      005587 E5 08            [12] 7411 	mov	a,_bp
      005589 24 15            [12] 7412 	add	a,#0x15
      00558B FF               [12] 7413 	mov	r7,a
      00558C E5 08            [12] 7414 	mov	a,_bp
      00558E 24 0E            [12] 7415 	add	a,#0x0e
      005590 F8               [12] 7416 	mov	r0,a
      005591 A6 07            [24] 7417 	mov	@r0,ar7
      005593 08               [12] 7418 	inc	r0
      005594 76 00            [12] 7419 	mov	@r0,#0x00
      005596 08               [12] 7420 	inc	r0
      005597 76 40            [12] 7421 	mov	@r0,#0x40
      005599 E5 08            [12] 7422 	mov	a,_bp
      00559B 24 12            [12] 7423 	add	a,#0x12
      00559D F8               [12] 7424 	mov	r0,a
      00559E 74 13            [12] 7425 	mov	a,#0x13
      0055A0 26               [12] 7426 	add	a,@r0
      0055A1 FA               [12] 7427 	mov	r2,a
      0055A2 74 40            [12] 7428 	mov	a,#0x40
      0055A4 08               [12] 7429 	inc	r0
      0055A5 36               [12] 7430 	addc	a,@r0
      0055A6 FB               [12] 7431 	mov	r3,a
      0055A7 08               [12] 7432 	inc	r0
      0055A8 86 04            [24] 7433 	mov	ar4,@r0
      0055AA 8A 82            [24] 7434 	mov	dpl,r2
      0055AC 8B 83            [24] 7435 	mov	dph,r3
      0055AE 8C F0            [24] 7436 	mov	b,r4
      0055B0 12 70 79         [24] 7437 	lcall	__gptrget
      0055B3 FD               [12] 7438 	mov	r5,a
      0055B4 A3               [24] 7439 	inc	dptr
      0055B5 12 70 79         [24] 7440 	lcall	__gptrget
      0055B8 FE               [12] 7441 	mov	r6,a
      0055B9 A3               [24] 7442 	inc	dptr
      0055BA 12 70 79         [24] 7443 	lcall	__gptrget
      0055BD FF               [12] 7444 	mov	r7,a
      0055BE C0 04            [24] 7445 	push	ar4
      0055C0 C0 03            [24] 7446 	push	ar3
      0055C2 C0 02            [24] 7447 	push	ar2
      0055C4 E5 08            [12] 7448 	mov	a,_bp
      0055C6 24 0E            [12] 7449 	add	a,#0x0e
      0055C8 F8               [12] 7450 	mov	r0,a
      0055C9 E6               [12] 7451 	mov	a,@r0
      0055CA C0 E0            [24] 7452 	push	acc
      0055CC 08               [12] 7453 	inc	r0
      0055CD E6               [12] 7454 	mov	a,@r0
      0055CE C0 E0            [24] 7455 	push	acc
      0055D0 08               [12] 7456 	inc	r0
      0055D1 E6               [12] 7457 	mov	a,@r0
      0055D2 C0 E0            [24] 7458 	push	acc
      0055D4 8D 82            [24] 7459 	mov	dpl,r5
      0055D6 8E 83            [24] 7460 	mov	dph,r6
      0055D8 8F F0            [24] 7461 	mov	b,r7
      0055DA 12 27 B4         [24] 7462 	lcall	_stack_pop
      0055DD AE 82            [24] 7463 	mov	r6,dpl
      0055DF AF 83            [24] 7464 	mov	r7,dph
      0055E1 15 81            [12] 7465 	dec	sp
      0055E3 15 81            [12] 7466 	dec	sp
      0055E5 15 81            [12] 7467 	dec	sp
      0055E7 D0 02            [24] 7468 	pop	ar2
      0055E9 D0 03            [24] 7469 	pop	ar3
      0055EB D0 04            [24] 7470 	pop	ar4
      0055ED EE               [12] 7471 	mov	a,r6
      0055EE 4F               [12] 7472 	orl	a,r7
      0055EF 70 22            [24] 7473 	jnz	00246$
      0055F1 7D 3E            [12] 7474 	mov	r5,#___str_10
      0055F3 7C 89            [12] 7475 	mov	r4,#(___str_10 >> 8)
      0055F5 7B 80            [12] 7476 	mov	r3,#0x80
                                   7477 ;	calc.c:51: return;
      0055F7                       7478 00496$:
                                   7479 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0055F7 8D 82            [24] 7480 	mov	dpl,r5
      0055F9 8C 83            [24] 7481 	mov	dph,r4
      0055FB 8B F0            [24] 7482 	mov	b,r3
      0055FD 12 70 79         [24] 7483 	lcall	__gptrget
      005600 FF               [12] 7484 	mov	r7,a
      005601 60 62            [24] 7485 	jz	00249$
      005603 7E 00            [12] 7486 	mov	r6,#0x00
      005605 8F 82            [24] 7487 	mov	dpl,r7
      005607 8E 83            [24] 7488 	mov	dph,r6
      005609 12 2C 1F         [24] 7489 	lcall	_putchar
      00560C 0D               [12] 7490 	inc	r5
                                   7491 ;	calc.c:337: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      00560D BD 00 E7         [24] 7492 	cjne	r5,#0x00,00496$
      005610 0C               [12] 7493 	inc	r4
      005611 80 E4            [24] 7494 	sjmp	00496$
      005613                       7495 00246$:
                                   7496 ;	calc.c:339: d0 = ~d0;
      005613 E5 08            [12] 7497 	mov	a,_bp
      005615 24 15            [12] 7498 	add	a,#0x15
      005617 F8               [12] 7499 	mov	r0,a
      005618 E6               [12] 7500 	mov	a,@r0
      005619 F4               [12] 7501 	cpl	a
      00561A F6               [12] 7502 	mov	@r0,a
      00561B 08               [12] 7503 	inc	r0
      00561C E6               [12] 7504 	mov	a,@r0
      00561D F4               [12] 7505 	cpl	a
      00561E F6               [12] 7506 	mov	@r0,a
      00561F 08               [12] 7507 	inc	r0
      005620 E6               [12] 7508 	mov	a,@r0
      005621 F4               [12] 7509 	cpl	a
      005622 F6               [12] 7510 	mov	@r0,a
      005623 08               [12] 7511 	inc	r0
      005624 E6               [12] 7512 	mov	a,@r0
      005625 F4               [12] 7513 	cpl	a
      005626 F6               [12] 7514 	mov	@r0,a
                                   7515 ;	calc.c:340: (void)stack_push(ctx->ps, d0);
      005627 8A 82            [24] 7516 	mov	dpl,r2
      005629 8B 83            [24] 7517 	mov	dph,r3
      00562B 8C F0            [24] 7518 	mov	b,r4
      00562D 12 70 79         [24] 7519 	lcall	__gptrget
      005630 FA               [12] 7520 	mov	r2,a
      005631 A3               [24] 7521 	inc	dptr
      005632 12 70 79         [24] 7522 	lcall	__gptrget
      005635 FB               [12] 7523 	mov	r3,a
      005636 A3               [24] 7524 	inc	dptr
      005637 12 70 79         [24] 7525 	lcall	__gptrget
      00563A FC               [12] 7526 	mov	r4,a
      00563B E5 08            [12] 7527 	mov	a,_bp
      00563D 24 15            [12] 7528 	add	a,#0x15
      00563F F8               [12] 7529 	mov	r0,a
      005640 E6               [12] 7530 	mov	a,@r0
      005641 C0 E0            [24] 7531 	push	acc
      005643 08               [12] 7532 	inc	r0
      005644 E6               [12] 7533 	mov	a,@r0
      005645 C0 E0            [24] 7534 	push	acc
      005647 08               [12] 7535 	inc	r0
      005648 E6               [12] 7536 	mov	a,@r0
      005649 C0 E0            [24] 7537 	push	acc
      00564B 08               [12] 7538 	inc	r0
      00564C E6               [12] 7539 	mov	a,@r0
      00564D C0 E0            [24] 7540 	push	acc
      00564F 8A 82            [24] 7541 	mov	dpl,r2
      005651 8B 83            [24] 7542 	mov	dph,r3
      005653 8C F0            [24] 7543 	mov	b,r4
      005655 12 26 BA         [24] 7544 	lcall	_stack_push
      005658 E5 81            [12] 7545 	mov	a,sp
      00565A 24 FC            [12] 7546 	add	a,#0xfc
      00565C F5 81            [12] 7547 	mov	sp,a
                                   7548 ;	calc.c:342: break;
                                   7549 ;	calc.c:343: default:
      00565E 80 05            [24] 7550 	sjmp	00249$
      005660                       7551 00248$:
                                   7552 ;	calc.c:344: return UNDEF;
      005660 90 80 00         [24] 7553 	mov	dptr,#0x8000
                                   7554 ;	calc.c:345: }
      005663 80 03            [24] 7555 	sjmp	00498$
      005665                       7556 00249$:
                                   7557 ;	calc.c:347: return 1;
      005665 90 00 01         [24] 7558 	mov	dptr,#0x0001
      005668                       7559 00498$:
                                   7560 ;	calc.c:348: }
      005668 85 08 81         [24] 7561 	mov	sp,_bp
      00566B D0 08            [24] 7562 	pop	_bp
      00566D 22               [24] 7563 	ret
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
      00566E                       7578 _push_acc:
      00566E C0 08            [24] 7579 	push	_bp
      005670 E5 81            [12] 7580 	mov	a,sp
      005672 F5 08            [12] 7581 	mov	_bp,a
      005674 24 07            [12] 7582 	add	a,#0x07
      005676 F5 81            [12] 7583 	mov	sp,a
      005678 C8               [12] 7584 	xch	a,r0
      005679 E5 08            [12] 7585 	mov	a,_bp
      00567B 24 05            [12] 7586 	add	a,#0x05
      00567D C8               [12] 7587 	xch	a,r0
      00567E A6 82            [24] 7588 	mov	@r0,dpl
      005680 08               [12] 7589 	inc	r0
      005681 A6 83            [24] 7590 	mov	@r0,dph
      005683 08               [12] 7591 	inc	r0
      005684 A6 F0            [24] 7592 	mov	@r0,b
                                   7593 ;	calc.c:351: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
      005686 E5 08            [12] 7594 	mov	a,_bp
      005688 24 05            [12] 7595 	add	a,#0x05
      00568A F8               [12] 7596 	mov	r0,a
      00568B 86 02            [24] 7597 	mov	ar2,@r0
      00568D 08               [12] 7598 	inc	r0
      00568E 86 03            [24] 7599 	mov	ar3,@r0
      005690 08               [12] 7600 	inc	r0
      005691 86 04            [24] 7601 	mov	ar4,@r0
                                   7602 ;	calc.c:355: ctx->acc_valid = 0;
      005693 74 06            [12] 7603 	mov	a,#0x06
      005695 2A               [12] 7604 	add	a,r2
      005696 FD               [12] 7605 	mov	r5,a
      005697 E4               [12] 7606 	clr	a
      005698 3B               [12] 7607 	addc	a,r3
      005699 FE               [12] 7608 	mov	r6,a
      00569A 8C 07            [24] 7609 	mov	ar7,r4
      00569C 8D 82            [24] 7610 	mov	dpl,r5
      00569E 8E 83            [24] 7611 	mov	dph,r6
      0056A0 8F F0            [24] 7612 	mov	b,r7
      0056A2 E4               [12] 7613 	clr	a
      0056A3 12 6B FE         [24] 7614 	lcall	__gptrput
                                   7615 ;	calc.c:356: if (!stack_push(ctx->ps, ctx->acc)) printstr("\r\nstack overflow\r\n");
      0056A6 74 02            [12] 7616 	mov	a,#0x02
      0056A8 2A               [12] 7617 	add	a,r2
      0056A9 FF               [12] 7618 	mov	r7,a
      0056AA E4               [12] 7619 	clr	a
      0056AB 3B               [12] 7620 	addc	a,r3
      0056AC FD               [12] 7621 	mov	r5,a
      0056AD 8C 06            [24] 7622 	mov	ar6,r4
      0056AF 8F 82            [24] 7623 	mov	dpl,r7
      0056B1 8D 83            [24] 7624 	mov	dph,r5
      0056B3 8E F0            [24] 7625 	mov	b,r6
      0056B5 A8 08            [24] 7626 	mov	r0,_bp
      0056B7 08               [12] 7627 	inc	r0
      0056B8 12 70 79         [24] 7628 	lcall	__gptrget
      0056BB F6               [12] 7629 	mov	@r0,a
      0056BC A3               [24] 7630 	inc	dptr
      0056BD 12 70 79         [24] 7631 	lcall	__gptrget
      0056C0 08               [12] 7632 	inc	r0
      0056C1 F6               [12] 7633 	mov	@r0,a
      0056C2 A3               [24] 7634 	inc	dptr
      0056C3 12 70 79         [24] 7635 	lcall	__gptrget
      0056C6 08               [12] 7636 	inc	r0
      0056C7 F6               [12] 7637 	mov	@r0,a
      0056C8 A3               [24] 7638 	inc	dptr
      0056C9 12 70 79         [24] 7639 	lcall	__gptrget
      0056CC 08               [12] 7640 	inc	r0
      0056CD F6               [12] 7641 	mov	@r0,a
      0056CE 74 13            [12] 7642 	mov	a,#0x13
      0056D0 2A               [12] 7643 	add	a,r2
      0056D1 FA               [12] 7644 	mov	r2,a
      0056D2 74 40            [12] 7645 	mov	a,#0x40
      0056D4 3B               [12] 7646 	addc	a,r3
      0056D5 FB               [12] 7647 	mov	r3,a
      0056D6 8C 07            [24] 7648 	mov	ar7,r4
      0056D8 8A 82            [24] 7649 	mov	dpl,r2
      0056DA 8B 83            [24] 7650 	mov	dph,r3
      0056DC 8F F0            [24] 7651 	mov	b,r7
      0056DE 12 70 79         [24] 7652 	lcall	__gptrget
      0056E1 FA               [12] 7653 	mov	r2,a
      0056E2 A3               [24] 7654 	inc	dptr
      0056E3 12 70 79         [24] 7655 	lcall	__gptrget
      0056E6 FB               [12] 7656 	mov	r3,a
      0056E7 A3               [24] 7657 	inc	dptr
      0056E8 12 70 79         [24] 7658 	lcall	__gptrget
      0056EB FF               [12] 7659 	mov	r7,a
      0056EC A8 08            [24] 7660 	mov	r0,_bp
      0056EE 08               [12] 7661 	inc	r0
      0056EF E6               [12] 7662 	mov	a,@r0
      0056F0 C0 E0            [24] 7663 	push	acc
      0056F2 08               [12] 7664 	inc	r0
      0056F3 E6               [12] 7665 	mov	a,@r0
      0056F4 C0 E0            [24] 7666 	push	acc
      0056F6 08               [12] 7667 	inc	r0
      0056F7 E6               [12] 7668 	mov	a,@r0
      0056F8 C0 E0            [24] 7669 	push	acc
      0056FA 08               [12] 7670 	inc	r0
      0056FB E6               [12] 7671 	mov	a,@r0
      0056FC C0 E0            [24] 7672 	push	acc
      0056FE 8A 82            [24] 7673 	mov	dpl,r2
      005700 8B 83            [24] 7674 	mov	dph,r3
      005702 8F F0            [24] 7675 	mov	b,r7
      005704 12 26 BA         [24] 7676 	lcall	_stack_push
      005707 AE 82            [24] 7677 	mov	r6,dpl
      005709 AF 83            [24] 7678 	mov	r7,dph
      00570B E5 81            [12] 7679 	mov	a,sp
      00570D 24 FC            [12] 7680 	add	a,#0xfc
      00570F F5 81            [12] 7681 	mov	sp,a
      005711 EE               [12] 7682 	mov	a,r6
      005712 4F               [12] 7683 	orl	a,r7
      005713 70 22            [24] 7684 	jnz	00102$
      005715 7D 8D            [12] 7685 	mov	r5,#___str_13
      005717 7E 89            [12] 7686 	mov	r6,#(___str_13 >> 8)
      005719 7F 80            [12] 7687 	mov	r7,#0x80
                                   7688 ;	calc.c:51: return;
      00571B                       7689 00109$:
                                   7690 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00571B 8D 82            [24] 7691 	mov	dpl,r5
      00571D 8E 83            [24] 7692 	mov	dph,r6
      00571F 8F F0            [24] 7693 	mov	b,r7
      005721 12 70 79         [24] 7694 	lcall	__gptrget
      005724 FC               [12] 7695 	mov	r4,a
      005725 60 10            [24] 7696 	jz	00102$
      005727 7B 00            [12] 7697 	mov	r3,#0x00
      005729 8C 82            [24] 7698 	mov	dpl,r4
      00572B 8B 83            [24] 7699 	mov	dph,r3
      00572D 12 2C 1F         [24] 7700 	lcall	_putchar
      005730 0D               [12] 7701 	inc	r5
                                   7702 ;	calc.c:356: if (!stack_push(ctx->ps, ctx->acc)) printstr("\r\nstack overflow\r\n");
      005731 BD 00 E7         [24] 7703 	cjne	r5,#0x00,00109$
      005734 0E               [12] 7704 	inc	r6
      005735 80 E4            [24] 7705 	sjmp	00109$
      005737                       7706 00102$:
                                   7707 ;	calc.c:358: if (delta->event == EVENT_OP) return operator(_ctx, delta);
      005737 E5 08            [12] 7708 	mov	a,_bp
      005739 24 FB            [12] 7709 	add	a,#0xfb
      00573B F8               [12] 7710 	mov	r0,a
      00573C 86 05            [24] 7711 	mov	ar5,@r0
      00573E 08               [12] 7712 	inc	r0
      00573F 86 06            [24] 7713 	mov	ar6,@r0
      005741 08               [12] 7714 	inc	r0
      005742 86 07            [24] 7715 	mov	ar7,@r0
      005744 74 02            [12] 7716 	mov	a,#0x02
      005746 2D               [12] 7717 	add	a,r5
      005747 FA               [12] 7718 	mov	r2,a
      005748 E4               [12] 7719 	clr	a
      005749 3E               [12] 7720 	addc	a,r6
      00574A FB               [12] 7721 	mov	r3,a
      00574B 8F 04            [24] 7722 	mov	ar4,r7
      00574D 8A 82            [24] 7723 	mov	dpl,r2
      00574F 8B 83            [24] 7724 	mov	dph,r3
      005751 8C F0            [24] 7725 	mov	b,r4
      005753 12 70 79         [24] 7726 	lcall	__gptrget
      005756 FA               [12] 7727 	mov	r2,a
      005757 A3               [24] 7728 	inc	dptr
      005758 12 70 79         [24] 7729 	lcall	__gptrget
      00575B FB               [12] 7730 	mov	r3,a
      00575C BA 02 29         [24] 7731 	cjne	r2,#0x02,00104$
      00575F BB 00 26         [24] 7732 	cjne	r3,#0x00,00104$
      005762 C0 05            [24] 7733 	push	ar5
      005764 C0 06            [24] 7734 	push	ar6
      005766 C0 07            [24] 7735 	push	ar7
      005768 E5 08            [12] 7736 	mov	a,_bp
      00576A 24 05            [12] 7737 	add	a,#0x05
      00576C F8               [12] 7738 	mov	r0,a
      00576D 86 82            [24] 7739 	mov	dpl,@r0
      00576F 08               [12] 7740 	inc	r0
      005770 86 83            [24] 7741 	mov	dph,@r0
      005772 08               [12] 7742 	inc	r0
      005773 86 F0            [24] 7743 	mov	b,@r0
      005775 12 33 E0         [24] 7744 	lcall	_operator
      005778 AE 82            [24] 7745 	mov	r6,dpl
      00577A AF 83            [24] 7746 	mov	r7,dph
      00577C 15 81            [12] 7747 	dec	sp
      00577E 15 81            [12] 7748 	dec	sp
      005780 15 81            [12] 7749 	dec	sp
      005782 8E 82            [24] 7750 	mov	dpl,r6
      005784 8F 83            [24] 7751 	mov	dph,r7
      005786 80 03            [24] 7752 	sjmp	00111$
      005788                       7753 00104$:
                                   7754 ;	calc.c:359: else return 1;
      005788 90 00 01         [24] 7755 	mov	dptr,#0x0001
      00578B                       7756 00111$:
                                   7757 ;	calc.c:360: }
      00578B 85 08 81         [24] 7758 	mov	sp,_bp
      00578E D0 08            [24] 7759 	pop	_bp
      005790 22               [24] 7760 	ret
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
      005791                       7772 _reset_acc:
      005791 C0 08            [24] 7773 	push	_bp
      005793 85 81 08         [24] 7774 	mov	_bp,sp
      005796 AD 82            [24] 7775 	mov	r5,dpl
      005798 AE 83            [24] 7776 	mov	r6,dph
      00579A AF F0            [24] 7777 	mov	r7,b
                                   7778 ;	calc.c:363: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
                                   7779 ;	calc.c:365: if (delta->event == EVENT_RSTA_I) ctx->acc_valid = 0;
      00579C E5 08            [12] 7780 	mov	a,_bp
      00579E 24 FB            [12] 7781 	add	a,#0xfb
      0057A0 F8               [12] 7782 	mov	r0,a
      0057A1 86 02            [24] 7783 	mov	ar2,@r0
      0057A3 08               [12] 7784 	inc	r0
      0057A4 86 03            [24] 7785 	mov	ar3,@r0
      0057A6 08               [12] 7786 	inc	r0
      0057A7 86 04            [24] 7787 	mov	ar4,@r0
      0057A9 74 02            [12] 7788 	mov	a,#0x02
      0057AB 2A               [12] 7789 	add	a,r2
      0057AC FA               [12] 7790 	mov	r2,a
      0057AD E4               [12] 7791 	clr	a
      0057AE 3B               [12] 7792 	addc	a,r3
      0057AF FB               [12] 7793 	mov	r3,a
      0057B0 8A 82            [24] 7794 	mov	dpl,r2
      0057B2 8B 83            [24] 7795 	mov	dph,r3
      0057B4 8C F0            [24] 7796 	mov	b,r4
      0057B6 12 70 79         [24] 7797 	lcall	__gptrget
      0057B9 FA               [12] 7798 	mov	r2,a
      0057BA A3               [24] 7799 	inc	dptr
      0057BB 12 70 79         [24] 7800 	lcall	__gptrget
      0057BE FB               [12] 7801 	mov	r3,a
      0057BF BA 07 16         [24] 7802 	cjne	r2,#0x07,00102$
      0057C2 BB 00 13         [24] 7803 	cjne	r3,#0x00,00102$
      0057C5 74 06            [12] 7804 	mov	a,#0x06
      0057C7 2D               [12] 7805 	add	a,r5
      0057C8 FA               [12] 7806 	mov	r2,a
      0057C9 E4               [12] 7807 	clr	a
      0057CA 3E               [12] 7808 	addc	a,r6
      0057CB FB               [12] 7809 	mov	r3,a
      0057CC 8F 04            [24] 7810 	mov	ar4,r7
      0057CE 8A 82            [24] 7811 	mov	dpl,r2
      0057D0 8B 83            [24] 7812 	mov	dph,r3
      0057D2 8C F0            [24] 7813 	mov	b,r4
      0057D4 E4               [12] 7814 	clr	a
      0057D5 12 6B FE         [24] 7815 	lcall	__gptrput
      0057D8                       7816 00102$:
                                   7817 ;	calc.c:366: ctx->acc = 0l;
      0057D8 74 02            [12] 7818 	mov	a,#0x02
      0057DA 2D               [12] 7819 	add	a,r5
      0057DB FD               [12] 7820 	mov	r5,a
      0057DC E4               [12] 7821 	clr	a
      0057DD 3E               [12] 7822 	addc	a,r6
      0057DE FE               [12] 7823 	mov	r6,a
      0057DF 8D 82            [24] 7824 	mov	dpl,r5
      0057E1 8E 83            [24] 7825 	mov	dph,r6
      0057E3 8F F0            [24] 7826 	mov	b,r7
      0057E5 E4               [12] 7827 	clr	a
      0057E6 12 6B FE         [24] 7828 	lcall	__gptrput
      0057E9 A3               [24] 7829 	inc	dptr
      0057EA 12 6B FE         [24] 7830 	lcall	__gptrput
      0057ED A3               [24] 7831 	inc	dptr
      0057EE 12 6B FE         [24] 7832 	lcall	__gptrput
      0057F1 A3               [24] 7833 	inc	dptr
      0057F2 12 6B FE         [24] 7834 	lcall	__gptrput
                                   7835 ;	calc.c:368: return 1;
      0057F5 90 00 01         [24] 7836 	mov	dptr,#0x0001
                                   7837 ;	calc.c:369: }
      0057F8 D0 08            [24] 7838 	pop	_bp
      0057FA 22               [24] 7839 	ret
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
      0057FB                       7851 _reset_base:
      0057FB C0 08            [24] 7852 	push	_bp
      0057FD 85 81 08         [24] 7853 	mov	_bp,sp
      005800 AD 82            [24] 7854 	mov	r5,dpl
      005802 AE 83            [24] 7855 	mov	r6,dph
      005804 AF F0            [24] 7856 	mov	r7,b
                                   7857 ;	calc.c:372: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
                                   7858 ;	calc.c:376: switch (ctx->digit[0]) {
      005806 74 07            [12] 7859 	mov	a,#0x07
      005808 2D               [12] 7860 	add	a,r5
      005809 FA               [12] 7861 	mov	r2,a
      00580A E4               [12] 7862 	clr	a
      00580B 3E               [12] 7863 	addc	a,r6
      00580C FB               [12] 7864 	mov	r3,a
      00580D 8F 04            [24] 7865 	mov	ar4,r7
      00580F 8A 82            [24] 7866 	mov	dpl,r2
      005811 8B 83            [24] 7867 	mov	dph,r3
      005813 8C F0            [24] 7868 	mov	b,r4
      005815 12 70 79         [24] 7869 	lcall	__gptrget
      005818 FC               [12] 7870 	mov	r4,a
      005819 BC 48 02         [24] 7871 	cjne	r4,#0x48,00124$
      00581C 80 0F            [24] 7872 	sjmp	00101$
      00581E                       7873 00124$:
      00581E BC 4F 02         [24] 7874 	cjne	r4,#0x4f,00125$
      005821 80 2E            [24] 7875 	sjmp	00103$
      005823                       7876 00125$:
      005823 BC 68 02         [24] 7877 	cjne	r4,#0x68,00126$
      005826 80 17            [24] 7878 	sjmp	00102$
      005828                       7879 00126$:
                                   7880 ;	calc.c:377: case 'H':
      005828 BC 6F 48         [24] 7881 	cjne	r4,#0x6f,00105$
      00582B 80 36            [24] 7882 	sjmp	00104$
      00582D                       7883 00101$:
                                   7884 ;	calc.c:378: ctx->base = 16;
      00582D 8D 82            [24] 7885 	mov	dpl,r5
      00582F 8E 83            [24] 7886 	mov	dph,r6
      005831 8F F0            [24] 7887 	mov	b,r7
      005833 74 10            [12] 7888 	mov	a,#0x10
      005835 12 6B FE         [24] 7889 	lcall	__gptrput
      005838 A3               [24] 7890 	inc	dptr
      005839 E4               [12] 7891 	clr	a
      00583A 12 6B FE         [24] 7892 	lcall	__gptrput
                                   7893 ;	calc.c:379: break;
                                   7894 ;	calc.c:380: case 'h':
      00583D 80 34            [24] 7895 	sjmp	00105$
      00583F                       7896 00102$:
                                   7897 ;	calc.c:381: ctx->base = 10;
      00583F 8D 82            [24] 7898 	mov	dpl,r5
      005841 8E 83            [24] 7899 	mov	dph,r6
      005843 8F F0            [24] 7900 	mov	b,r7
      005845 74 0A            [12] 7901 	mov	a,#0x0a
      005847 12 6B FE         [24] 7902 	lcall	__gptrput
      00584A A3               [24] 7903 	inc	dptr
      00584B E4               [12] 7904 	clr	a
      00584C 12 6B FE         [24] 7905 	lcall	__gptrput
                                   7906 ;	calc.c:382: break;
                                   7907 ;	calc.c:383: case 'O':
      00584F 80 22            [24] 7908 	sjmp	00105$
      005851                       7909 00103$:
                                   7910 ;	calc.c:384: ctx->base = 8;
      005851 8D 82            [24] 7911 	mov	dpl,r5
      005853 8E 83            [24] 7912 	mov	dph,r6
      005855 8F F0            [24] 7913 	mov	b,r7
      005857 74 08            [12] 7914 	mov	a,#0x08
      005859 12 6B FE         [24] 7915 	lcall	__gptrput
      00585C A3               [24] 7916 	inc	dptr
      00585D E4               [12] 7917 	clr	a
      00585E 12 6B FE         [24] 7918 	lcall	__gptrput
                                   7919 ;	calc.c:385: break;
                                   7920 ;	calc.c:386: case 'o':
      005861 80 10            [24] 7921 	sjmp	00105$
      005863                       7922 00104$:
                                   7923 ;	calc.c:387: ctx->base = 2;
      005863 8D 82            [24] 7924 	mov	dpl,r5
      005865 8E 83            [24] 7925 	mov	dph,r6
      005867 8F F0            [24] 7926 	mov	b,r7
      005869 74 02            [12] 7927 	mov	a,#0x02
      00586B 12 6B FE         [24] 7928 	lcall	__gptrput
      00586E A3               [24] 7929 	inc	dptr
      00586F E4               [12] 7930 	clr	a
      005870 12 6B FE         [24] 7931 	lcall	__gptrput
                                   7932 ;	calc.c:389: }
      005873                       7933 00105$:
                                   7934 ;	calc.c:391: return 1;
      005873 90 00 01         [24] 7935 	mov	dptr,#0x0001
                                   7936 ;	calc.c:392: }
      005876 D0 08            [24] 7937 	pop	_bp
      005878 22               [24] 7938 	ret
                                   7939 ;------------------------------------------------------------
                                   7940 ;Allocation info for local variables in function 'status'
                                   7941 ;------------------------------------------------------------
                                   7942 ;delta                     Allocated to stack - _bp -5
                                   7943 ;_ctx                      Allocated to registers r5 r6 r7 
                                   7944 ;ctx                       Allocated to stack - _bp +9
                                   7945 ;vals                      Allocated to stack - _bp +14
                                   7946 ;n                         Allocated to stack - _bp +12
                                   7947 ;__1310720127              Allocated to registers 
                                   7948 ;s                         Allocated to registers r5 r6 r7 
                                   7949 ;__1966080129              Allocated to registers 
                                   7950 ;d                         Allocated to stack - _bp +22
                                   7951 ;mask                      Allocated to stack - _bp +26
                                   7952 ;__1310720131              Allocated to registers 
                                   7953 ;s                         Allocated to stack - _bp +22
                                   7954 ;__1966080133              Allocated to registers 
                                   7955 ;d                         Allocated to stack - _bp +22
                                   7956 ;mask                      Allocated to stack - _bp +26
                                   7957 ;__1310720135              Allocated to registers 
                                   7958 ;s                         Allocated to registers r5 r6 r7 
                                   7959 ;__1966080137              Allocated to registers 
                                   7960 ;d                         Allocated to stack - _bp +22
                                   7961 ;mask                      Allocated to stack - _bp +26
                                   7962 ;__1310720139              Allocated to registers 
                                   7963 ;s                         Allocated to registers r3 r4 r5 
                                   7964 ;__1966080141              Allocated to registers 
                                   7965 ;d                         Allocated to stack - _bp +22
                                   7966 ;mask                      Allocated to stack - _bp +26
                                   7967 ;__1310720143              Allocated to registers 
                                   7968 ;s                         Allocated to registers r5 r6 r7 
                                   7969 ;__1966080145              Allocated to registers 
                                   7970 ;d                         Allocated to stack - _bp +22
                                   7971 ;mask                      Allocated to stack - _bp +26
                                   7972 ;__1310720147              Allocated to registers 
                                   7973 ;s                         Allocated to registers r5 r6 r7 
                                   7974 ;sloc0                     Allocated to stack - _bp +1
                                   7975 ;sloc1                     Allocated to stack - _bp +4
                                   7976 ;sloc2                     Allocated to stack - _bp +7
                                   7977 ;------------------------------------------------------------
                                   7978 ;	calc.c:394: static int status(void *_ctx, delta_t *delta) __reentrant {
                                   7979 ;	-----------------------------------------
                                   7980 ;	 function status
                                   7981 ;	-----------------------------------------
      005879                       7982 _status:
      005879 C0 08            [24] 7983 	push	_bp
      00587B E5 81            [12] 7984 	mov	a,sp
      00587D F5 08            [12] 7985 	mov	_bp,a
      00587F 24 1D            [12] 7986 	add	a,#0x1d
      005881 F5 81            [12] 7987 	mov	sp,a
      005883 AD 82            [24] 7988 	mov	r5,dpl
      005885 AE 83            [24] 7989 	mov	r6,dph
      005887 AF F0            [24] 7990 	mov	r7,b
                                   7991 ;	calc.c:395: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
      005889 E5 08            [12] 7992 	mov	a,_bp
      00588B 24 09            [12] 7993 	add	a,#0x09
      00588D F8               [12] 7994 	mov	r0,a
      00588E A6 05            [24] 7995 	mov	@r0,ar5
      005890 08               [12] 7996 	inc	r0
      005891 A6 06            [24] 7997 	mov	@r0,ar6
      005893 08               [12] 7998 	inc	r0
      005894 A6 07            [24] 7999 	mov	@r0,ar7
                                   8000 ;	calc.c:401: printf("\r\nprimary = %p, secondary = %p\r\n", ctx->ps, ctx->ss);
      005896 E5 08            [12] 8001 	mov	a,_bp
      005898 24 09            [12] 8002 	add	a,#0x09
      00589A F8               [12] 8003 	mov	r0,a
      00589B 74 16            [12] 8004 	mov	a,#0x16
      00589D 26               [12] 8005 	add	a,@r0
      00589E FA               [12] 8006 	mov	r2,a
      00589F 74 40            [12] 8007 	mov	a,#0x40
      0058A1 08               [12] 8008 	inc	r0
      0058A2 36               [12] 8009 	addc	a,@r0
      0058A3 FB               [12] 8010 	mov	r3,a
      0058A4 08               [12] 8011 	inc	r0
      0058A5 86 04            [24] 8012 	mov	ar4,@r0
      0058A7 8A 82            [24] 8013 	mov	dpl,r2
      0058A9 8B 83            [24] 8014 	mov	dph,r3
      0058AB 8C F0            [24] 8015 	mov	b,r4
      0058AD E5 08            [12] 8016 	mov	a,_bp
      0058AF 24 04            [12] 8017 	add	a,#0x04
      0058B1 F8               [12] 8018 	mov	r0,a
      0058B2 12 70 79         [24] 8019 	lcall	__gptrget
      0058B5 F6               [12] 8020 	mov	@r0,a
      0058B6 A3               [24] 8021 	inc	dptr
      0058B7 12 70 79         [24] 8022 	lcall	__gptrget
      0058BA 08               [12] 8023 	inc	r0
      0058BB F6               [12] 8024 	mov	@r0,a
      0058BC A3               [24] 8025 	inc	dptr
      0058BD 12 70 79         [24] 8026 	lcall	__gptrget
      0058C0 08               [12] 8027 	inc	r0
      0058C1 F6               [12] 8028 	mov	@r0,a
      0058C2 E5 08            [12] 8029 	mov	a,_bp
      0058C4 24 09            [12] 8030 	add	a,#0x09
      0058C6 F8               [12] 8031 	mov	r0,a
      0058C7 A9 08            [24] 8032 	mov	r1,_bp
      0058C9 09               [12] 8033 	inc	r1
      0058CA 74 13            [12] 8034 	mov	a,#0x13
      0058CC 26               [12] 8035 	add	a,@r0
      0058CD F7               [12] 8036 	mov	@r1,a
      0058CE 74 40            [12] 8037 	mov	a,#0x40
      0058D0 08               [12] 8038 	inc	r0
      0058D1 36               [12] 8039 	addc	a,@r0
      0058D2 09               [12] 8040 	inc	r1
      0058D3 F7               [12] 8041 	mov	@r1,a
      0058D4 08               [12] 8042 	inc	r0
      0058D5 09               [12] 8043 	inc	r1
      0058D6 E6               [12] 8044 	mov	a,@r0
      0058D7 F7               [12] 8045 	mov	@r1,a
      0058D8 A8 08            [24] 8046 	mov	r0,_bp
      0058DA 08               [12] 8047 	inc	r0
      0058DB 86 82            [24] 8048 	mov	dpl,@r0
      0058DD 08               [12] 8049 	inc	r0
      0058DE 86 83            [24] 8050 	mov	dph,@r0
      0058E0 08               [12] 8051 	inc	r0
      0058E1 86 F0            [24] 8052 	mov	b,@r0
      0058E3 12 70 79         [24] 8053 	lcall	__gptrget
      0058E6 FD               [12] 8054 	mov	r5,a
      0058E7 A3               [24] 8055 	inc	dptr
      0058E8 12 70 79         [24] 8056 	lcall	__gptrget
      0058EB FE               [12] 8057 	mov	r6,a
      0058EC A3               [24] 8058 	inc	dptr
      0058ED 12 70 79         [24] 8059 	lcall	__gptrget
      0058F0 FF               [12] 8060 	mov	r7,a
      0058F1 C0 04            [24] 8061 	push	ar4
      0058F3 C0 03            [24] 8062 	push	ar3
      0058F5 C0 02            [24] 8063 	push	ar2
      0058F7 E5 08            [12] 8064 	mov	a,_bp
      0058F9 24 04            [12] 8065 	add	a,#0x04
      0058FB F8               [12] 8066 	mov	r0,a
      0058FC E6               [12] 8067 	mov	a,@r0
      0058FD C0 E0            [24] 8068 	push	acc
      0058FF 08               [12] 8069 	inc	r0
      005900 E6               [12] 8070 	mov	a,@r0
      005901 C0 E0            [24] 8071 	push	acc
      005903 08               [12] 8072 	inc	r0
      005904 E6               [12] 8073 	mov	a,@r0
      005905 C0 E0            [24] 8074 	push	acc
      005907 C0 05            [24] 8075 	push	ar5
      005909 C0 06            [24] 8076 	push	ar6
      00590B C0 07            [24] 8077 	push	ar7
      00590D 74 B5            [12] 8078 	mov	a,#___str_15
      00590F C0 E0            [24] 8079 	push	acc
      005911 74 89            [12] 8080 	mov	a,#(___str_15 >> 8)
      005913 C0 E0            [24] 8081 	push	acc
      005915 74 80            [12] 8082 	mov	a,#0x80
      005917 C0 E0            [24] 8083 	push	acc
      005919 12 70 40         [24] 8084 	lcall	_printf
      00591C E5 81            [12] 8085 	mov	a,sp
      00591E 24 F7            [12] 8086 	add	a,#0xf7
      005920 F5 81            [12] 8087 	mov	sp,a
                                   8088 ;	calc.c:402: printf("acc_valid = %d, base = %d\r\n", (int)ctx->acc_valid, ctx->base);
      005922 E5 08            [12] 8089 	mov	a,_bp
      005924 24 09            [12] 8090 	add	a,#0x09
      005926 F8               [12] 8091 	mov	r0,a
      005927 86 82            [24] 8092 	mov	dpl,@r0
      005929 08               [12] 8093 	inc	r0
      00592A 86 83            [24] 8094 	mov	dph,@r0
      00592C 08               [12] 8095 	inc	r0
      00592D 86 F0            [24] 8096 	mov	b,@r0
      00592F E5 08            [12] 8097 	mov	a,_bp
      005931 24 07            [12] 8098 	add	a,#0x07
      005933 F9               [12] 8099 	mov	r1,a
      005934 12 70 79         [24] 8100 	lcall	__gptrget
      005937 F7               [12] 8101 	mov	@r1,a
      005938 A3               [24] 8102 	inc	dptr
      005939 12 70 79         [24] 8103 	lcall	__gptrget
      00593C 09               [12] 8104 	inc	r1
      00593D F7               [12] 8105 	mov	@r1,a
      00593E E5 08            [12] 8106 	mov	a,_bp
      005940 24 09            [12] 8107 	add	a,#0x09
      005942 F8               [12] 8108 	mov	r0,a
      005943 E5 08            [12] 8109 	mov	a,_bp
      005945 24 04            [12] 8110 	add	a,#0x04
      005947 F9               [12] 8111 	mov	r1,a
      005948 74 06            [12] 8112 	mov	a,#0x06
      00594A 26               [12] 8113 	add	a,@r0
      00594B F7               [12] 8114 	mov	@r1,a
      00594C E4               [12] 8115 	clr	a
      00594D 08               [12] 8116 	inc	r0
      00594E 36               [12] 8117 	addc	a,@r0
      00594F 09               [12] 8118 	inc	r1
      005950 F7               [12] 8119 	mov	@r1,a
      005951 08               [12] 8120 	inc	r0
      005952 09               [12] 8121 	inc	r1
      005953 E6               [12] 8122 	mov	a,@r0
      005954 F7               [12] 8123 	mov	@r1,a
      005955 E5 08            [12] 8124 	mov	a,_bp
      005957 24 04            [12] 8125 	add	a,#0x04
      005959 F8               [12] 8126 	mov	r0,a
      00595A 86 82            [24] 8127 	mov	dpl,@r0
      00595C 08               [12] 8128 	inc	r0
      00595D 86 83            [24] 8129 	mov	dph,@r0
      00595F 08               [12] 8130 	inc	r0
      005960 86 F0            [24] 8131 	mov	b,@r0
      005962 12 70 79         [24] 8132 	lcall	__gptrget
      005965 FD               [12] 8133 	mov	r5,a
      005966 7F 00            [12] 8134 	mov	r7,#0x00
      005968 E5 08            [12] 8135 	mov	a,_bp
      00596A 24 07            [12] 8136 	add	a,#0x07
      00596C F8               [12] 8137 	mov	r0,a
      00596D E6               [12] 8138 	mov	a,@r0
      00596E C0 E0            [24] 8139 	push	acc
      005970 08               [12] 8140 	inc	r0
      005971 E6               [12] 8141 	mov	a,@r0
      005972 C0 E0            [24] 8142 	push	acc
      005974 C0 05            [24] 8143 	push	ar5
      005976 C0 07            [24] 8144 	push	ar7
      005978 74 D6            [12] 8145 	mov	a,#___str_16
      00597A C0 E0            [24] 8146 	push	acc
      00597C 74 89            [12] 8147 	mov	a,#(___str_16 >> 8)
      00597E C0 E0            [24] 8148 	push	acc
      005980 74 80            [12] 8149 	mov	a,#0x80
      005982 C0 E0            [24] 8150 	push	acc
      005984 12 70 40         [24] 8151 	lcall	_printf
      005987 E5 81            [12] 8152 	mov	a,sp
      005989 24 F9            [12] 8153 	add	a,#0xf9
      00598B F5 81            [12] 8154 	mov	sp,a
      00598D D0 02            [24] 8155 	pop	ar2
      00598F D0 03            [24] 8156 	pop	ar3
      005991 D0 04            [24] 8157 	pop	ar4
                                   8158 ;	calc.c:404: printstr("acc    = ");
      005993 7D F2            [12] 8159 	mov	r5,#___str_17
      005995 7E 89            [12] 8160 	mov	r6,#(___str_17 >> 8)
      005997 7F 80            [12] 8161 	mov	r7,#0x80
                                   8162 ;	calc.c:51: return;
      005999                       8163 00134$:
                                   8164 ;	calc.c:49: for (; *s; s++) putchar(*s);
      005999 8D 82            [24] 8165 	mov	dpl,r5
      00599B 8E 83            [24] 8166 	mov	dph,r6
      00599D 8F F0            [24] 8167 	mov	b,r7
      00599F E5 08            [12] 8168 	mov	a,_bp
      0059A1 24 07            [12] 8169 	add	a,#0x07
      0059A3 F8               [12] 8170 	mov	r0,a
      0059A4 12 70 79         [24] 8171 	lcall	__gptrget
      0059A7 F6               [12] 8172 	mov	@r0,a
      0059A8 E5 08            [12] 8173 	mov	a,_bp
      0059AA 24 07            [12] 8174 	add	a,#0x07
      0059AC F8               [12] 8175 	mov	r0,a
      0059AD E6               [12] 8176 	mov	a,@r0
      0059AE 60 23            [24] 8177 	jz	00112$
      0059B0 C0 02            [24] 8178 	push	ar2
      0059B2 C0 03            [24] 8179 	push	ar3
      0059B4 C0 04            [24] 8180 	push	ar4
      0059B6 E5 08            [12] 8181 	mov	a,_bp
      0059B8 24 07            [12] 8182 	add	a,#0x07
      0059BA F8               [12] 8183 	mov	r0,a
      0059BB 86 03            [24] 8184 	mov	ar3,@r0
      0059BD 7C 00            [12] 8185 	mov	r4,#0x00
      0059BF 8B 82            [24] 8186 	mov	dpl,r3
      0059C1 8C 83            [24] 8187 	mov	dph,r4
      0059C3 12 2C 1F         [24] 8188 	lcall	_putchar
      0059C6 0D               [12] 8189 	inc	r5
      0059C7 BD 00 01         [24] 8190 	cjne	r5,#0x00,00315$
      0059CA 0E               [12] 8191 	inc	r6
      0059CB                       8192 00315$:
      0059CB D0 04            [24] 8193 	pop	ar4
      0059CD D0 03            [24] 8194 	pop	ar3
      0059CF D0 02            [24] 8195 	pop	ar2
                                   8196 ;	calc.c:404: printstr("acc    = ");
      0059D1 80 C6            [24] 8197 	sjmp	00134$
      0059D3                       8198 00112$:
                                   8199 ;	calc.c:405: if (ctx->acc_valid) {
      0059D3 E5 08            [12] 8200 	mov	a,_bp
      0059D5 24 04            [12] 8201 	add	a,#0x04
      0059D7 F8               [12] 8202 	mov	r0,a
      0059D8 86 82            [24] 8203 	mov	dpl,@r0
      0059DA 08               [12] 8204 	inc	r0
      0059DB 86 83            [24] 8205 	mov	dph,@r0
      0059DD 08               [12] 8206 	inc	r0
      0059DE 86 F0            [24] 8207 	mov	b,@r0
      0059E0 12 70 79         [24] 8208 	lcall	__gptrget
      0059E3 70 03            [24] 8209 	jnz	00316$
      0059E5 02 5B 40         [24] 8210 	ljmp	00102$
      0059E8                       8211 00316$:
                                   8212 ;	calc.c:406: printf("% 11ld / ", ctx->acc);
      0059E8 C0 02            [24] 8213 	push	ar2
      0059EA C0 03            [24] 8214 	push	ar3
      0059EC C0 04            [24] 8215 	push	ar4
      0059EE E5 08            [12] 8216 	mov	a,_bp
      0059F0 24 09            [12] 8217 	add	a,#0x09
      0059F2 F8               [12] 8218 	mov	r0,a
      0059F3 E5 08            [12] 8219 	mov	a,_bp
      0059F5 24 04            [12] 8220 	add	a,#0x04
      0059F7 F9               [12] 8221 	mov	r1,a
      0059F8 74 02            [12] 8222 	mov	a,#0x02
      0059FA 26               [12] 8223 	add	a,@r0
      0059FB F7               [12] 8224 	mov	@r1,a
      0059FC E4               [12] 8225 	clr	a
      0059FD 08               [12] 8226 	inc	r0
      0059FE 36               [12] 8227 	addc	a,@r0
      0059FF 09               [12] 8228 	inc	r1
      005A00 F7               [12] 8229 	mov	@r1,a
      005A01 08               [12] 8230 	inc	r0
      005A02 09               [12] 8231 	inc	r1
      005A03 E6               [12] 8232 	mov	a,@r0
      005A04 F7               [12] 8233 	mov	@r1,a
      005A05 E5 08            [12] 8234 	mov	a,_bp
      005A07 24 04            [12] 8235 	add	a,#0x04
      005A09 F8               [12] 8236 	mov	r0,a
      005A0A 86 82            [24] 8237 	mov	dpl,@r0
      005A0C 08               [12] 8238 	inc	r0
      005A0D 86 83            [24] 8239 	mov	dph,@r0
      005A0F 08               [12] 8240 	inc	r0
      005A10 86 F0            [24] 8241 	mov	b,@r0
      005A12 12 70 79         [24] 8242 	lcall	__gptrget
      005A15 FA               [12] 8243 	mov	r2,a
      005A16 A3               [24] 8244 	inc	dptr
      005A17 12 70 79         [24] 8245 	lcall	__gptrget
      005A1A FB               [12] 8246 	mov	r3,a
      005A1B A3               [24] 8247 	inc	dptr
      005A1C 12 70 79         [24] 8248 	lcall	__gptrget
      005A1F FC               [12] 8249 	mov	r4,a
      005A20 A3               [24] 8250 	inc	dptr
      005A21 12 70 79         [24] 8251 	lcall	__gptrget
      005A24 FF               [12] 8252 	mov	r7,a
      005A25 C0 04            [24] 8253 	push	ar4
      005A27 C0 03            [24] 8254 	push	ar3
      005A29 C0 02            [24] 8255 	push	ar2
      005A2B C0 02            [24] 8256 	push	ar2
      005A2D C0 03            [24] 8257 	push	ar3
      005A2F C0 04            [24] 8258 	push	ar4
      005A31 C0 07            [24] 8259 	push	ar7
      005A33 74 17            [12] 8260 	mov	a,#___str_3
      005A35 C0 E0            [24] 8261 	push	acc
      005A37 74 89            [12] 8262 	mov	a,#(___str_3 >> 8)
      005A39 C0 E0            [24] 8263 	push	acc
      005A3B 74 80            [12] 8264 	mov	a,#0x80
      005A3D C0 E0            [24] 8265 	push	acc
      005A3F 12 70 40         [24] 8266 	lcall	_printf
      005A42 E5 81            [12] 8267 	mov	a,sp
      005A44 24 F9            [12] 8268 	add	a,#0xf9
      005A46 F5 81            [12] 8269 	mov	sp,a
      005A48 D0 02            [24] 8270 	pop	ar2
      005A4A D0 03            [24] 8271 	pop	ar3
      005A4C D0 04            [24] 8272 	pop	ar4
                                   8273 ;	calc.c:407: printf("%08lx / ", ctx->acc);
      005A4E E5 08            [12] 8274 	mov	a,_bp
      005A50 24 04            [12] 8275 	add	a,#0x04
      005A52 F8               [12] 8276 	mov	r0,a
      005A53 86 82            [24] 8277 	mov	dpl,@r0
      005A55 08               [12] 8278 	inc	r0
      005A56 86 83            [24] 8279 	mov	dph,@r0
      005A58 08               [12] 8280 	inc	r0
      005A59 86 F0            [24] 8281 	mov	b,@r0
      005A5B 12 70 79         [24] 8282 	lcall	__gptrget
      005A5E FC               [12] 8283 	mov	r4,a
      005A5F A3               [24] 8284 	inc	dptr
      005A60 12 70 79         [24] 8285 	lcall	__gptrget
      005A63 FD               [12] 8286 	mov	r5,a
      005A64 A3               [24] 8287 	inc	dptr
      005A65 12 70 79         [24] 8288 	lcall	__gptrget
      005A68 FE               [12] 8289 	mov	r6,a
      005A69 A3               [24] 8290 	inc	dptr
      005A6A 12 70 79         [24] 8291 	lcall	__gptrget
      005A6D FF               [12] 8292 	mov	r7,a
      005A6E C0 04            [24] 8293 	push	ar4
      005A70 C0 03            [24] 8294 	push	ar3
      005A72 C0 02            [24] 8295 	push	ar2
      005A74 C0 04            [24] 8296 	push	ar4
      005A76 C0 05            [24] 8297 	push	ar5
      005A78 C0 06            [24] 8298 	push	ar6
      005A7A C0 07            [24] 8299 	push	ar7
      005A7C 74 21            [12] 8300 	mov	a,#___str_4
      005A7E C0 E0            [24] 8301 	push	acc
      005A80 74 89            [12] 8302 	mov	a,#(___str_4 >> 8)
      005A82 C0 E0            [24] 8303 	push	acc
      005A84 74 80            [12] 8304 	mov	a,#0x80
      005A86 C0 E0            [24] 8305 	push	acc
      005A88 12 70 40         [24] 8306 	lcall	_printf
      005A8B E5 81            [12] 8307 	mov	a,sp
      005A8D 24 F9            [12] 8308 	add	a,#0xf9
      005A8F F5 81            [12] 8309 	mov	sp,a
      005A91 D0 02            [24] 8310 	pop	ar2
      005A93 D0 03            [24] 8311 	pop	ar3
      005A95 D0 04            [24] 8312 	pop	ar4
                                   8313 ;	calc.c:408: printbin(ctx->acc);
      005A97 E5 08            [12] 8314 	mov	a,_bp
      005A99 24 04            [12] 8315 	add	a,#0x04
      005A9B F8               [12] 8316 	mov	r0,a
      005A9C 86 82            [24] 8317 	mov	dpl,@r0
      005A9E 08               [12] 8318 	inc	r0
      005A9F 86 83            [24] 8319 	mov	dph,@r0
      005AA1 08               [12] 8320 	inc	r0
      005AA2 86 F0            [24] 8321 	mov	b,@r0
      005AA4 E5 08            [12] 8322 	mov	a,_bp
      005AA6 24 16            [12] 8323 	add	a,#0x16
      005AA8 F9               [12] 8324 	mov	r1,a
      005AA9 12 70 79         [24] 8325 	lcall	__gptrget
      005AAC F7               [12] 8326 	mov	@r1,a
      005AAD A3               [24] 8327 	inc	dptr
      005AAE 12 70 79         [24] 8328 	lcall	__gptrget
      005AB1 09               [12] 8329 	inc	r1
      005AB2 F7               [12] 8330 	mov	@r1,a
      005AB3 A3               [24] 8331 	inc	dptr
      005AB4 12 70 79         [24] 8332 	lcall	__gptrget
      005AB7 09               [12] 8333 	inc	r1
      005AB8 F7               [12] 8334 	mov	@r1,a
      005AB9 A3               [24] 8335 	inc	dptr
      005ABA 12 70 79         [24] 8336 	lcall	__gptrget
      005ABD 09               [12] 8337 	inc	r1
      005ABE F7               [12] 8338 	mov	@r1,a
                                   8339 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      005ABF E5 08            [12] 8340 	mov	a,_bp
      005AC1 24 1A            [12] 8341 	add	a,#0x1a
      005AC3 F8               [12] 8342 	mov	r0,a
      005AC4 E4               [12] 8343 	clr	a
      005AC5 F6               [12] 8344 	mov	@r0,a
      005AC6 08               [12] 8345 	inc	r0
      005AC7 F6               [12] 8346 	mov	@r0,a
      005AC8 08               [12] 8347 	inc	r0
      005AC9 F6               [12] 8348 	mov	@r0,a
      005ACA 08               [12] 8349 	inc	r0
      005ACB 76 80            [12] 8350 	mov	@r0,#0x80
                                   8351 ;	calc.c:440: return 1;
      005ACD D0 04            [24] 8352 	pop	ar4
      005ACF D0 03            [24] 8353 	pop	ar3
      005AD1 D0 02            [24] 8354 	pop	ar2
                                   8355 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      005AD3                       8356 00136$:
                                   8357 ;	calc.c:58: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      005AD3 C0 02            [24] 8358 	push	ar2
      005AD5 C0 03            [24] 8359 	push	ar3
      005AD7 C0 04            [24] 8360 	push	ar4
      005AD9 E5 08            [12] 8361 	mov	a,_bp
      005ADB 24 16            [12] 8362 	add	a,#0x16
      005ADD F8               [12] 8363 	mov	r0,a
      005ADE 86 04            [24] 8364 	mov	ar4,@r0
      005AE0 08               [12] 8365 	inc	r0
      005AE1 86 05            [24] 8366 	mov	ar5,@r0
      005AE3 08               [12] 8367 	inc	r0
      005AE4 86 06            [24] 8368 	mov	ar6,@r0
      005AE6 08               [12] 8369 	inc	r0
      005AE7 86 07            [24] 8370 	mov	ar7,@r0
      005AE9 E5 08            [12] 8371 	mov	a,_bp
      005AEB 24 1A            [12] 8372 	add	a,#0x1a
      005AED F8               [12] 8373 	mov	r0,a
      005AEE E6               [12] 8374 	mov	a,@r0
      005AEF 52 04            [12] 8375 	anl	ar4,a
      005AF1 08               [12] 8376 	inc	r0
      005AF2 E6               [12] 8377 	mov	a,@r0
      005AF3 52 05            [12] 8378 	anl	ar5,a
      005AF5 08               [12] 8379 	inc	r0
      005AF6 E6               [12] 8380 	mov	a,@r0
      005AF7 52 06            [12] 8381 	anl	ar6,a
      005AF9 08               [12] 8382 	inc	r0
      005AFA E6               [12] 8383 	mov	a,@r0
      005AFB 52 07            [12] 8384 	anl	ar7,a
      005AFD EC               [12] 8385 	mov	a,r4
      005AFE 4D               [12] 8386 	orl	a,r5
      005AFF 4E               [12] 8387 	orl	a,r6
      005B00 4F               [12] 8388 	orl	a,r7
      005B01 D0 04            [24] 8389 	pop	ar4
      005B03 D0 03            [24] 8390 	pop	ar3
      005B05 D0 02            [24] 8391 	pop	ar2
      005B07 60 06            [24] 8392 	jz	00163$
      005B09 7E 31            [12] 8393 	mov	r6,#0x31
      005B0B 7F 00            [12] 8394 	mov	r7,#0x00
      005B0D 80 04            [24] 8395 	sjmp	00164$
      005B0F                       8396 00163$:
      005B0F 7E 30            [12] 8397 	mov	r6,#0x30
      005B11 7F 00            [12] 8398 	mov	r7,#0x00
      005B13                       8399 00164$:
      005B13 8E 82            [24] 8400 	mov	dpl,r6
      005B15 8F 83            [24] 8401 	mov	dph,r7
      005B17 12 2C 1F         [24] 8402 	lcall	_putchar
                                   8403 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      005B1A E5 08            [12] 8404 	mov	a,_bp
      005B1C 24 1A            [12] 8405 	add	a,#0x1a
      005B1E F8               [12] 8406 	mov	r0,a
      005B1F 08               [12] 8407 	inc	r0
      005B20 08               [12] 8408 	inc	r0
      005B21 08               [12] 8409 	inc	r0
      005B22 E6               [12] 8410 	mov	a,@r0
      005B23 C3               [12] 8411 	clr	c
      005B24 13               [12] 8412 	rrc	a
      005B25 F6               [12] 8413 	mov	@r0,a
      005B26 18               [12] 8414 	dec	r0
      005B27 E6               [12] 8415 	mov	a,@r0
      005B28 13               [12] 8416 	rrc	a
      005B29 F6               [12] 8417 	mov	@r0,a
      005B2A 18               [12] 8418 	dec	r0
      005B2B E6               [12] 8419 	mov	a,@r0
      005B2C 13               [12] 8420 	rrc	a
      005B2D F6               [12] 8421 	mov	@r0,a
      005B2E 18               [12] 8422 	dec	r0
      005B2F E6               [12] 8423 	mov	a,@r0
      005B30 13               [12] 8424 	rrc	a
      005B31 F6               [12] 8425 	mov	@r0,a
      005B32 E5 08            [12] 8426 	mov	a,_bp
      005B34 24 1A            [12] 8427 	add	a,#0x1a
      005B36 F8               [12] 8428 	mov	r0,a
      005B37 E6               [12] 8429 	mov	a,@r0
      005B38 08               [12] 8430 	inc	r0
      005B39 46               [12] 8431 	orl	a,@r0
      005B3A 08               [12] 8432 	inc	r0
      005B3B 46               [12] 8433 	orl	a,@r0
      005B3C 08               [12] 8434 	inc	r0
      005B3D 46               [12] 8435 	orl	a,@r0
      005B3E 70 93            [24] 8436 	jnz	00136$
                                   8437 ;	calc.c:408: printbin(ctx->acc);
      005B40                       8438 00102$:
                                   8439 ;	calc.c:411: n = stack_peek2(ctx->ps, vals);
      005B40 C0 02            [24] 8440 	push	ar2
      005B42 C0 03            [24] 8441 	push	ar3
      005B44 C0 04            [24] 8442 	push	ar4
      005B46 E5 08            [12] 8443 	mov	a,_bp
      005B48 24 0E            [12] 8444 	add	a,#0x0e
      005B4A F9               [12] 8445 	mov	r1,a
      005B4B FD               [12] 8446 	mov	r5,a
      005B4C 7E 00            [12] 8447 	mov	r6,#0x00
      005B4E 7F 40            [12] 8448 	mov	r7,#0x40
      005B50 A8 08            [24] 8449 	mov	r0,_bp
      005B52 08               [12] 8450 	inc	r0
      005B53 86 82            [24] 8451 	mov	dpl,@r0
      005B55 08               [12] 8452 	inc	r0
      005B56 86 83            [24] 8453 	mov	dph,@r0
      005B58 08               [12] 8454 	inc	r0
      005B59 86 F0            [24] 8455 	mov	b,@r0
      005B5B 12 70 79         [24] 8456 	lcall	__gptrget
      005B5E FA               [12] 8457 	mov	r2,a
      005B5F A3               [24] 8458 	inc	dptr
      005B60 12 70 79         [24] 8459 	lcall	__gptrget
      005B63 FB               [12] 8460 	mov	r3,a
      005B64 A3               [24] 8461 	inc	dptr
      005B65 12 70 79         [24] 8462 	lcall	__gptrget
      005B68 FC               [12] 8463 	mov	r4,a
      005B69 C0 04            [24] 8464 	push	ar4
      005B6B C0 03            [24] 8465 	push	ar3
      005B6D C0 02            [24] 8466 	push	ar2
      005B6F C0 01            [24] 8467 	push	ar1
      005B71 C0 05            [24] 8468 	push	ar5
      005B73 C0 06            [24] 8469 	push	ar6
      005B75 C0 07            [24] 8470 	push	ar7
      005B77 8A 82            [24] 8471 	mov	dpl,r2
      005B79 8B 83            [24] 8472 	mov	dph,r3
      005B7B 8C F0            [24] 8473 	mov	b,r4
      005B7D 12 29 73         [24] 8474 	lcall	_stack_peek2
      005B80 C8               [12] 8475 	xch	a,r0
      005B81 E5 08            [12] 8476 	mov	a,_bp
      005B83 24 07            [12] 8477 	add	a,#0x07
      005B85 C8               [12] 8478 	xch	a,r0
      005B86 A6 82            [24] 8479 	mov	@r0,dpl
      005B88 08               [12] 8480 	inc	r0
      005B89 A6 83            [24] 8481 	mov	@r0,dph
      005B8B 15 81            [12] 8482 	dec	sp
      005B8D 15 81            [12] 8483 	dec	sp
      005B8F 15 81            [12] 8484 	dec	sp
      005B91 D0 01            [24] 8485 	pop	ar1
      005B93 D0 02            [24] 8486 	pop	ar2
      005B95 D0 03            [24] 8487 	pop	ar3
      005B97 D0 04            [24] 8488 	pop	ar4
                                   8489 ;	calc.c:412: printstr("\r\nPSTOP1 = ");
      005B99 E5 08            [12] 8490 	mov	a,_bp
      005B9B 24 16            [12] 8491 	add	a,#0x16
      005B9D F8               [12] 8492 	mov	r0,a
      005B9E 76 FC            [12] 8493 	mov	@r0,#___str_18
      005BA0 08               [12] 8494 	inc	r0
      005BA1 76 89            [12] 8495 	mov	@r0,#(___str_18 >> 8)
      005BA3 08               [12] 8496 	inc	r0
      005BA4 76 80            [12] 8497 	mov	@r0,#0x80
                                   8498 ;	calc.c:440: return 1;
      005BA6 D0 04            [24] 8499 	pop	ar4
      005BA8 D0 03            [24] 8500 	pop	ar3
      005BAA D0 02            [24] 8501 	pop	ar2
                                   8502 ;	calc.c:51: return;
      005BAC                       8503 00139$:
                                   8504 ;	calc.c:49: for (; *s; s++) putchar(*s);
      005BAC E5 08            [12] 8505 	mov	a,_bp
      005BAE 24 16            [12] 8506 	add	a,#0x16
      005BB0 F8               [12] 8507 	mov	r0,a
      005BB1 86 82            [24] 8508 	mov	dpl,@r0
      005BB3 08               [12] 8509 	inc	r0
      005BB4 86 83            [24] 8510 	mov	dph,@r0
      005BB6 08               [12] 8511 	inc	r0
      005BB7 86 F0            [24] 8512 	mov	b,@r0
      005BB9 12 70 79         [24] 8513 	lcall	__gptrget
      005BBC FF               [12] 8514 	mov	r7,a
      005BBD 60 16            [24] 8515 	jz	00116$
      005BBF 7E 00            [12] 8516 	mov	r6,#0x00
      005BC1 8F 82            [24] 8517 	mov	dpl,r7
      005BC3 8E 83            [24] 8518 	mov	dph,r6
      005BC5 12 2C 1F         [24] 8519 	lcall	_putchar
      005BC8 E5 08            [12] 8520 	mov	a,_bp
      005BCA 24 16            [12] 8521 	add	a,#0x16
      005BCC F8               [12] 8522 	mov	r0,a
      005BCD 06               [12] 8523 	inc	@r0
      005BCE B6 00 02         [24] 8524 	cjne	@r0,#0x00,00320$
      005BD1 08               [12] 8525 	inc	r0
      005BD2 06               [12] 8526 	inc	@r0
      005BD3                       8527 00320$:
                                   8528 ;	calc.c:412: printstr("\r\nPSTOP1 = ");
      005BD3 80 D7            [24] 8529 	sjmp	00139$
      005BD5                       8530 00116$:
                                   8531 ;	calc.c:413: if (n > 0) {
      005BD5 E5 08            [12] 8532 	mov	a,_bp
      005BD7 24 07            [12] 8533 	add	a,#0x07
      005BD9 F8               [12] 8534 	mov	r0,a
      005BDA C3               [12] 8535 	clr	c
      005BDB E4               [12] 8536 	clr	a
      005BDC 96               [12] 8537 	subb	a,@r0
      005BDD 74 80            [12] 8538 	mov	a,#(0x00 ^ 0x80)
      005BDF 08               [12] 8539 	inc	r0
      005BE0 86 F0            [24] 8540 	mov	b,@r0
      005BE2 63 F0 80         [24] 8541 	xrl	b,#0x80
      005BE5 95 F0            [12] 8542 	subb	a,b
      005BE7 40 03            [24] 8543 	jc	00321$
      005BE9 02 5D 0C         [24] 8544 	ljmp	00104$
      005BEC                       8545 00321$:
                                   8546 ;	calc.c:414: printf("% 11ld / ", vals[1]);
      005BEC C0 02            [24] 8547 	push	ar2
      005BEE C0 03            [24] 8548 	push	ar3
      005BF0 C0 04            [24] 8549 	push	ar4
      005BF2 74 04            [12] 8550 	mov	a,#0x04
      005BF4 29               [12] 8551 	add	a,r1
      005BF5 F8               [12] 8552 	mov	r0,a
      005BF6 86 04            [24] 8553 	mov	ar4,@r0
      005BF8 08               [12] 8554 	inc	r0
      005BF9 86 05            [24] 8555 	mov	ar5,@r0
      005BFB 08               [12] 8556 	inc	r0
      005BFC 86 06            [24] 8557 	mov	ar6,@r0
      005BFE 08               [12] 8558 	inc	r0
      005BFF 86 07            [24] 8559 	mov	ar7,@r0
      005C01 18               [12] 8560 	dec	r0
      005C02 18               [12] 8561 	dec	r0
      005C03 18               [12] 8562 	dec	r0
      005C04 C0 04            [24] 8563 	push	ar4
      005C06 C0 03            [24] 8564 	push	ar3
      005C08 C0 02            [24] 8565 	push	ar2
      005C0A C0 01            [24] 8566 	push	ar1
      005C0C C0 00            [24] 8567 	push	ar0
      005C0E C0 04            [24] 8568 	push	ar4
      005C10 C0 05            [24] 8569 	push	ar5
      005C12 C0 06            [24] 8570 	push	ar6
      005C14 C0 07            [24] 8571 	push	ar7
      005C16 74 17            [12] 8572 	mov	a,#___str_3
      005C18 C0 E0            [24] 8573 	push	acc
      005C1A 74 89            [12] 8574 	mov	a,#(___str_3 >> 8)
      005C1C C0 E0            [24] 8575 	push	acc
      005C1E 74 80            [12] 8576 	mov	a,#0x80
      005C20 C0 E0            [24] 8577 	push	acc
      005C22 12 70 40         [24] 8578 	lcall	_printf
      005C25 E5 81            [12] 8579 	mov	a,sp
      005C27 24 F9            [12] 8580 	add	a,#0xf9
      005C29 F5 81            [12] 8581 	mov	sp,a
      005C2B D0 00            [24] 8582 	pop	ar0
      005C2D D0 01            [24] 8583 	pop	ar1
      005C2F D0 02            [24] 8584 	pop	ar2
      005C31 D0 03            [24] 8585 	pop	ar3
      005C33 D0 04            [24] 8586 	pop	ar4
                                   8587 ;	calc.c:415: printf("%08lx / ", vals[1]);
      005C35 86 04            [24] 8588 	mov	ar4,@r0
      005C37 08               [12] 8589 	inc	r0
      005C38 86 05            [24] 8590 	mov	ar5,@r0
      005C3A 08               [12] 8591 	inc	r0
      005C3B 86 06            [24] 8592 	mov	ar6,@r0
      005C3D 08               [12] 8593 	inc	r0
      005C3E 86 07            [24] 8594 	mov	ar7,@r0
      005C40 18               [12] 8595 	dec	r0
      005C41 18               [12] 8596 	dec	r0
      005C42 18               [12] 8597 	dec	r0
      005C43 C0 04            [24] 8598 	push	ar4
      005C45 C0 03            [24] 8599 	push	ar3
      005C47 C0 02            [24] 8600 	push	ar2
      005C49 C0 01            [24] 8601 	push	ar1
      005C4B C0 00            [24] 8602 	push	ar0
      005C4D C0 04            [24] 8603 	push	ar4
      005C4F C0 05            [24] 8604 	push	ar5
      005C51 C0 06            [24] 8605 	push	ar6
      005C53 C0 07            [24] 8606 	push	ar7
      005C55 74 21            [12] 8607 	mov	a,#___str_4
      005C57 C0 E0            [24] 8608 	push	acc
      005C59 74 89            [12] 8609 	mov	a,#(___str_4 >> 8)
      005C5B C0 E0            [24] 8610 	push	acc
      005C5D 74 80            [12] 8611 	mov	a,#0x80
      005C5F C0 E0            [24] 8612 	push	acc
      005C61 12 70 40         [24] 8613 	lcall	_printf
      005C64 E5 81            [12] 8614 	mov	a,sp
      005C66 24 F9            [12] 8615 	add	a,#0xf9
      005C68 F5 81            [12] 8616 	mov	sp,a
      005C6A D0 00            [24] 8617 	pop	ar0
      005C6C D0 01            [24] 8618 	pop	ar1
      005C6E D0 02            [24] 8619 	pop	ar2
      005C70 D0 03            [24] 8620 	pop	ar3
      005C72 D0 04            [24] 8621 	pop	ar4
                                   8622 ;	calc.c:416: printbin(vals[1]);
      005C74 C0 01            [24] 8623 	push	ar1
      005C76 E5 08            [12] 8624 	mov	a,_bp
      005C78 24 16            [12] 8625 	add	a,#0x16
      005C7A F9               [12] 8626 	mov	r1,a
      005C7B E6               [12] 8627 	mov	a,@r0
      005C7C F7               [12] 8628 	mov	@r1,a
      005C7D 08               [12] 8629 	inc	r0
      005C7E E6               [12] 8630 	mov	a,@r0
      005C7F 09               [12] 8631 	inc	r1
      005C80 F7               [12] 8632 	mov	@r1,a
      005C81 08               [12] 8633 	inc	r0
      005C82 E6               [12] 8634 	mov	a,@r0
      005C83 09               [12] 8635 	inc	r1
      005C84 F7               [12] 8636 	mov	@r1,a
      005C85 08               [12] 8637 	inc	r0
      005C86 E6               [12] 8638 	mov	a,@r0
      005C87 09               [12] 8639 	inc	r1
      005C88 F7               [12] 8640 	mov	@r1,a
      005C89 D0 01            [24] 8641 	pop	ar1
                                   8642 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      005C8B E5 08            [12] 8643 	mov	a,_bp
      005C8D 24 1A            [12] 8644 	add	a,#0x1a
      005C8F F8               [12] 8645 	mov	r0,a
      005C90 E4               [12] 8646 	clr	a
      005C91 F6               [12] 8647 	mov	@r0,a
      005C92 08               [12] 8648 	inc	r0
      005C93 F6               [12] 8649 	mov	@r0,a
      005C94 08               [12] 8650 	inc	r0
      005C95 F6               [12] 8651 	mov	@r0,a
      005C96 08               [12] 8652 	inc	r0
      005C97 76 80            [12] 8653 	mov	@r0,#0x80
                                   8654 ;	calc.c:440: return 1;
      005C99 D0 04            [24] 8655 	pop	ar4
      005C9B D0 03            [24] 8656 	pop	ar3
      005C9D D0 02            [24] 8657 	pop	ar2
                                   8658 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      005C9F                       8659 00141$:
                                   8660 ;	calc.c:58: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      005C9F C0 02            [24] 8661 	push	ar2
      005CA1 C0 03            [24] 8662 	push	ar3
      005CA3 C0 04            [24] 8663 	push	ar4
      005CA5 E5 08            [12] 8664 	mov	a,_bp
      005CA7 24 16            [12] 8665 	add	a,#0x16
      005CA9 F8               [12] 8666 	mov	r0,a
      005CAA 86 04            [24] 8667 	mov	ar4,@r0
      005CAC 08               [12] 8668 	inc	r0
      005CAD 86 05            [24] 8669 	mov	ar5,@r0
      005CAF 08               [12] 8670 	inc	r0
      005CB0 86 06            [24] 8671 	mov	ar6,@r0
      005CB2 08               [12] 8672 	inc	r0
      005CB3 86 07            [24] 8673 	mov	ar7,@r0
      005CB5 E5 08            [12] 8674 	mov	a,_bp
      005CB7 24 1A            [12] 8675 	add	a,#0x1a
      005CB9 F8               [12] 8676 	mov	r0,a
      005CBA E6               [12] 8677 	mov	a,@r0
      005CBB 52 04            [12] 8678 	anl	ar4,a
      005CBD 08               [12] 8679 	inc	r0
      005CBE E6               [12] 8680 	mov	a,@r0
      005CBF 52 05            [12] 8681 	anl	ar5,a
      005CC1 08               [12] 8682 	inc	r0
      005CC2 E6               [12] 8683 	mov	a,@r0
      005CC3 52 06            [12] 8684 	anl	ar6,a
      005CC5 08               [12] 8685 	inc	r0
      005CC6 E6               [12] 8686 	mov	a,@r0
      005CC7 52 07            [12] 8687 	anl	ar7,a
      005CC9 EC               [12] 8688 	mov	a,r4
      005CCA 4D               [12] 8689 	orl	a,r5
      005CCB 4E               [12] 8690 	orl	a,r6
      005CCC 4F               [12] 8691 	orl	a,r7
      005CCD D0 04            [24] 8692 	pop	ar4
      005CCF D0 03            [24] 8693 	pop	ar3
      005CD1 D0 02            [24] 8694 	pop	ar2
      005CD3 60 06            [24] 8695 	jz	00165$
      005CD5 7E 31            [12] 8696 	mov	r6,#0x31
      005CD7 7F 00            [12] 8697 	mov	r7,#0x00
      005CD9 80 04            [24] 8698 	sjmp	00166$
      005CDB                       8699 00165$:
      005CDB 7E 30            [12] 8700 	mov	r6,#0x30
      005CDD 7F 00            [12] 8701 	mov	r7,#0x00
      005CDF                       8702 00166$:
      005CDF 8E 82            [24] 8703 	mov	dpl,r6
      005CE1 8F 83            [24] 8704 	mov	dph,r7
      005CE3 12 2C 1F         [24] 8705 	lcall	_putchar
                                   8706 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      005CE6 E5 08            [12] 8707 	mov	a,_bp
      005CE8 24 1A            [12] 8708 	add	a,#0x1a
      005CEA F8               [12] 8709 	mov	r0,a
      005CEB 08               [12] 8710 	inc	r0
      005CEC 08               [12] 8711 	inc	r0
      005CED 08               [12] 8712 	inc	r0
      005CEE E6               [12] 8713 	mov	a,@r0
      005CEF C3               [12] 8714 	clr	c
      005CF0 13               [12] 8715 	rrc	a
      005CF1 F6               [12] 8716 	mov	@r0,a
      005CF2 18               [12] 8717 	dec	r0
      005CF3 E6               [12] 8718 	mov	a,@r0
      005CF4 13               [12] 8719 	rrc	a
      005CF5 F6               [12] 8720 	mov	@r0,a
      005CF6 18               [12] 8721 	dec	r0
      005CF7 E6               [12] 8722 	mov	a,@r0
      005CF8 13               [12] 8723 	rrc	a
      005CF9 F6               [12] 8724 	mov	@r0,a
      005CFA 18               [12] 8725 	dec	r0
      005CFB E6               [12] 8726 	mov	a,@r0
      005CFC 13               [12] 8727 	rrc	a
      005CFD F6               [12] 8728 	mov	@r0,a
      005CFE E5 08            [12] 8729 	mov	a,_bp
      005D00 24 1A            [12] 8730 	add	a,#0x1a
      005D02 F8               [12] 8731 	mov	r0,a
      005D03 E6               [12] 8732 	mov	a,@r0
      005D04 08               [12] 8733 	inc	r0
      005D05 46               [12] 8734 	orl	a,@r0
      005D06 08               [12] 8735 	inc	r0
      005D07 46               [12] 8736 	orl	a,@r0
      005D08 08               [12] 8737 	inc	r0
      005D09 46               [12] 8738 	orl	a,@r0
      005D0A 70 93            [24] 8739 	jnz	00141$
                                   8740 ;	calc.c:416: printbin(vals[1]);
      005D0C                       8741 00104$:
                                   8742 ;	calc.c:418: printstr("\r\nPSTOP0 = ");
      005D0C 7D 08            [12] 8743 	mov	r5,#___str_19
      005D0E 7E 8A            [12] 8744 	mov	r6,#(___str_19 >> 8)
      005D10 7F 80            [12] 8745 	mov	r7,#0x80
                                   8746 ;	calc.c:51: return;
      005D12                       8747 00144$:
                                   8748 ;	calc.c:49: for (; *s; s++) putchar(*s);
      005D12 8D 82            [24] 8749 	mov	dpl,r5
      005D14 8E 83            [24] 8750 	mov	dph,r6
      005D16 8F F0            [24] 8751 	mov	b,r7
      005D18 E5 08            [12] 8752 	mov	a,_bp
      005D1A 24 04            [12] 8753 	add	a,#0x04
      005D1C F8               [12] 8754 	mov	r0,a
      005D1D 12 70 79         [24] 8755 	lcall	__gptrget
      005D20 F6               [12] 8756 	mov	@r0,a
      005D21 E5 08            [12] 8757 	mov	a,_bp
      005D23 24 04            [12] 8758 	add	a,#0x04
      005D25 F8               [12] 8759 	mov	r0,a
      005D26 E6               [12] 8760 	mov	a,@r0
      005D27 60 23            [24] 8761 	jz	00120$
      005D29 C0 02            [24] 8762 	push	ar2
      005D2B C0 03            [24] 8763 	push	ar3
      005D2D C0 04            [24] 8764 	push	ar4
      005D2F E5 08            [12] 8765 	mov	a,_bp
      005D31 24 04            [12] 8766 	add	a,#0x04
      005D33 F8               [12] 8767 	mov	r0,a
      005D34 86 03            [24] 8768 	mov	ar3,@r0
      005D36 7C 00            [12] 8769 	mov	r4,#0x00
      005D38 8B 82            [24] 8770 	mov	dpl,r3
      005D3A 8C 83            [24] 8771 	mov	dph,r4
      005D3C 12 2C 1F         [24] 8772 	lcall	_putchar
      005D3F 0D               [12] 8773 	inc	r5
      005D40 BD 00 01         [24] 8774 	cjne	r5,#0x00,00325$
      005D43 0E               [12] 8775 	inc	r6
      005D44                       8776 00325$:
      005D44 D0 04            [24] 8777 	pop	ar4
      005D46 D0 03            [24] 8778 	pop	ar3
      005D48 D0 02            [24] 8779 	pop	ar2
                                   8780 ;	calc.c:418: printstr("\r\nPSTOP0 = ");
      005D4A 80 C6            [24] 8781 	sjmp	00144$
      005D4C                       8782 00120$:
                                   8783 ;	calc.c:419: if (n > 1) {
      005D4C E5 08            [12] 8784 	mov	a,_bp
      005D4E 24 07            [12] 8785 	add	a,#0x07
      005D50 F8               [12] 8786 	mov	r0,a
      005D51 C3               [12] 8787 	clr	c
      005D52 74 01            [12] 8788 	mov	a,#0x01
      005D54 96               [12] 8789 	subb	a,@r0
      005D55 74 80            [12] 8790 	mov	a,#(0x00 ^ 0x80)
      005D57 08               [12] 8791 	inc	r0
      005D58 86 F0            [24] 8792 	mov	b,@r0
      005D5A 63 F0 80         [24] 8793 	xrl	b,#0x80
      005D5D 95 F0            [12] 8794 	subb	a,b
      005D5F 40 03            [24] 8795 	jc	00326$
      005D61 02 5E 77         [24] 8796 	ljmp	00106$
      005D64                       8797 00326$:
                                   8798 ;	calc.c:420: printf("% 11ld / ", vals[0]);
      005D64 C0 02            [24] 8799 	push	ar2
      005D66 C0 03            [24] 8800 	push	ar3
      005D68 C0 04            [24] 8801 	push	ar4
      005D6A 87 04            [24] 8802 	mov	ar4,@r1
      005D6C 09               [12] 8803 	inc	r1
      005D6D 87 05            [24] 8804 	mov	ar5,@r1
      005D6F 09               [12] 8805 	inc	r1
      005D70 87 06            [24] 8806 	mov	ar6,@r1
      005D72 09               [12] 8807 	inc	r1
      005D73 87 07            [24] 8808 	mov	ar7,@r1
      005D75 19               [12] 8809 	dec	r1
      005D76 19               [12] 8810 	dec	r1
      005D77 19               [12] 8811 	dec	r1
      005D78 C0 04            [24] 8812 	push	ar4
      005D7A C0 03            [24] 8813 	push	ar3
      005D7C C0 02            [24] 8814 	push	ar2
      005D7E C0 01            [24] 8815 	push	ar1
      005D80 C0 04            [24] 8816 	push	ar4
      005D82 C0 05            [24] 8817 	push	ar5
      005D84 C0 06            [24] 8818 	push	ar6
      005D86 C0 07            [24] 8819 	push	ar7
      005D88 74 17            [12] 8820 	mov	a,#___str_3
      005D8A C0 E0            [24] 8821 	push	acc
      005D8C 74 89            [12] 8822 	mov	a,#(___str_3 >> 8)
      005D8E C0 E0            [24] 8823 	push	acc
      005D90 74 80            [12] 8824 	mov	a,#0x80
      005D92 C0 E0            [24] 8825 	push	acc
      005D94 12 70 40         [24] 8826 	lcall	_printf
      005D97 E5 81            [12] 8827 	mov	a,sp
      005D99 24 F9            [12] 8828 	add	a,#0xf9
      005D9B F5 81            [12] 8829 	mov	sp,a
      005D9D D0 01            [24] 8830 	pop	ar1
      005D9F D0 02            [24] 8831 	pop	ar2
      005DA1 D0 03            [24] 8832 	pop	ar3
      005DA3 D0 04            [24] 8833 	pop	ar4
                                   8834 ;	calc.c:421: printf("%08lx / ", vals[0]);
      005DA5 87 04            [24] 8835 	mov	ar4,@r1
      005DA7 09               [12] 8836 	inc	r1
      005DA8 87 05            [24] 8837 	mov	ar5,@r1
      005DAA 09               [12] 8838 	inc	r1
      005DAB 87 06            [24] 8839 	mov	ar6,@r1
      005DAD 09               [12] 8840 	inc	r1
      005DAE 87 07            [24] 8841 	mov	ar7,@r1
      005DB0 19               [12] 8842 	dec	r1
      005DB1 19               [12] 8843 	dec	r1
      005DB2 19               [12] 8844 	dec	r1
      005DB3 C0 04            [24] 8845 	push	ar4
      005DB5 C0 03            [24] 8846 	push	ar3
      005DB7 C0 02            [24] 8847 	push	ar2
      005DB9 C0 01            [24] 8848 	push	ar1
      005DBB C0 04            [24] 8849 	push	ar4
      005DBD C0 05            [24] 8850 	push	ar5
      005DBF C0 06            [24] 8851 	push	ar6
      005DC1 C0 07            [24] 8852 	push	ar7
      005DC3 74 21            [12] 8853 	mov	a,#___str_4
      005DC5 C0 E0            [24] 8854 	push	acc
      005DC7 74 89            [12] 8855 	mov	a,#(___str_4 >> 8)
      005DC9 C0 E0            [24] 8856 	push	acc
      005DCB 74 80            [12] 8857 	mov	a,#0x80
      005DCD C0 E0            [24] 8858 	push	acc
      005DCF 12 70 40         [24] 8859 	lcall	_printf
      005DD2 E5 81            [12] 8860 	mov	a,sp
      005DD4 24 F9            [12] 8861 	add	a,#0xf9
      005DD6 F5 81            [12] 8862 	mov	sp,a
      005DD8 D0 01            [24] 8863 	pop	ar1
      005DDA D0 02            [24] 8864 	pop	ar2
      005DDC D0 03            [24] 8865 	pop	ar3
      005DDE D0 04            [24] 8866 	pop	ar4
                                   8867 ;	calc.c:422: printbin(vals[0]);
      005DE0 E5 08            [12] 8868 	mov	a,_bp
      005DE2 24 16            [12] 8869 	add	a,#0x16
      005DE4 F8               [12] 8870 	mov	r0,a
      005DE5 E7               [12] 8871 	mov	a,@r1
      005DE6 F6               [12] 8872 	mov	@r0,a
      005DE7 09               [12] 8873 	inc	r1
      005DE8 E7               [12] 8874 	mov	a,@r1
      005DE9 08               [12] 8875 	inc	r0
      005DEA F6               [12] 8876 	mov	@r0,a
      005DEB 09               [12] 8877 	inc	r1
      005DEC E7               [12] 8878 	mov	a,@r1
      005DED 08               [12] 8879 	inc	r0
      005DEE F6               [12] 8880 	mov	@r0,a
      005DEF 09               [12] 8881 	inc	r1
      005DF0 E7               [12] 8882 	mov	a,@r1
      005DF1 08               [12] 8883 	inc	r0
      005DF2 F6               [12] 8884 	mov	@r0,a
      005DF3 19               [12] 8885 	dec	r1
      005DF4 19               [12] 8886 	dec	r1
      005DF5 19               [12] 8887 	dec	r1
                                   8888 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      005DF6 E5 08            [12] 8889 	mov	a,_bp
      005DF8 24 1A            [12] 8890 	add	a,#0x1a
      005DFA F8               [12] 8891 	mov	r0,a
      005DFB E4               [12] 8892 	clr	a
      005DFC F6               [12] 8893 	mov	@r0,a
      005DFD 08               [12] 8894 	inc	r0
      005DFE F6               [12] 8895 	mov	@r0,a
      005DFF 08               [12] 8896 	inc	r0
      005E00 F6               [12] 8897 	mov	@r0,a
      005E01 08               [12] 8898 	inc	r0
      005E02 76 80            [12] 8899 	mov	@r0,#0x80
                                   8900 ;	calc.c:440: return 1;
      005E04 D0 04            [24] 8901 	pop	ar4
      005E06 D0 03            [24] 8902 	pop	ar3
      005E08 D0 02            [24] 8903 	pop	ar2
                                   8904 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      005E0A                       8905 00146$:
                                   8906 ;	calc.c:58: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      005E0A C0 02            [24] 8907 	push	ar2
      005E0C C0 03            [24] 8908 	push	ar3
      005E0E C0 04            [24] 8909 	push	ar4
      005E10 E5 08            [12] 8910 	mov	a,_bp
      005E12 24 16            [12] 8911 	add	a,#0x16
      005E14 F8               [12] 8912 	mov	r0,a
      005E15 86 04            [24] 8913 	mov	ar4,@r0
      005E17 08               [12] 8914 	inc	r0
      005E18 86 05            [24] 8915 	mov	ar5,@r0
      005E1A 08               [12] 8916 	inc	r0
      005E1B 86 06            [24] 8917 	mov	ar6,@r0
      005E1D 08               [12] 8918 	inc	r0
      005E1E 86 07            [24] 8919 	mov	ar7,@r0
      005E20 E5 08            [12] 8920 	mov	a,_bp
      005E22 24 1A            [12] 8921 	add	a,#0x1a
      005E24 F8               [12] 8922 	mov	r0,a
      005E25 E6               [12] 8923 	mov	a,@r0
      005E26 52 04            [12] 8924 	anl	ar4,a
      005E28 08               [12] 8925 	inc	r0
      005E29 E6               [12] 8926 	mov	a,@r0
      005E2A 52 05            [12] 8927 	anl	ar5,a
      005E2C 08               [12] 8928 	inc	r0
      005E2D E6               [12] 8929 	mov	a,@r0
      005E2E 52 06            [12] 8930 	anl	ar6,a
      005E30 08               [12] 8931 	inc	r0
      005E31 E6               [12] 8932 	mov	a,@r0
      005E32 52 07            [12] 8933 	anl	ar7,a
      005E34 EC               [12] 8934 	mov	a,r4
      005E35 4D               [12] 8935 	orl	a,r5
      005E36 4E               [12] 8936 	orl	a,r6
      005E37 4F               [12] 8937 	orl	a,r7
      005E38 D0 04            [24] 8938 	pop	ar4
      005E3A D0 03            [24] 8939 	pop	ar3
      005E3C D0 02            [24] 8940 	pop	ar2
      005E3E 60 06            [24] 8941 	jz	00167$
      005E40 7E 31            [12] 8942 	mov	r6,#0x31
      005E42 7F 00            [12] 8943 	mov	r7,#0x00
      005E44 80 04            [24] 8944 	sjmp	00168$
      005E46                       8945 00167$:
      005E46 7E 30            [12] 8946 	mov	r6,#0x30
      005E48 7F 00            [12] 8947 	mov	r7,#0x00
      005E4A                       8948 00168$:
      005E4A 8E 82            [24] 8949 	mov	dpl,r6
      005E4C 8F 83            [24] 8950 	mov	dph,r7
      005E4E 12 2C 1F         [24] 8951 	lcall	_putchar
                                   8952 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      005E51 E5 08            [12] 8953 	mov	a,_bp
      005E53 24 1A            [12] 8954 	add	a,#0x1a
      005E55 F8               [12] 8955 	mov	r0,a
      005E56 08               [12] 8956 	inc	r0
      005E57 08               [12] 8957 	inc	r0
      005E58 08               [12] 8958 	inc	r0
      005E59 E6               [12] 8959 	mov	a,@r0
      005E5A C3               [12] 8960 	clr	c
      005E5B 13               [12] 8961 	rrc	a
      005E5C F6               [12] 8962 	mov	@r0,a
      005E5D 18               [12] 8963 	dec	r0
      005E5E E6               [12] 8964 	mov	a,@r0
      005E5F 13               [12] 8965 	rrc	a
      005E60 F6               [12] 8966 	mov	@r0,a
      005E61 18               [12] 8967 	dec	r0
      005E62 E6               [12] 8968 	mov	a,@r0
      005E63 13               [12] 8969 	rrc	a
      005E64 F6               [12] 8970 	mov	@r0,a
      005E65 18               [12] 8971 	dec	r0
      005E66 E6               [12] 8972 	mov	a,@r0
      005E67 13               [12] 8973 	rrc	a
      005E68 F6               [12] 8974 	mov	@r0,a
      005E69 E5 08            [12] 8975 	mov	a,_bp
      005E6B 24 1A            [12] 8976 	add	a,#0x1a
      005E6D F8               [12] 8977 	mov	r0,a
      005E6E E6               [12] 8978 	mov	a,@r0
      005E6F 08               [12] 8979 	inc	r0
      005E70 46               [12] 8980 	orl	a,@r0
      005E71 08               [12] 8981 	inc	r0
      005E72 46               [12] 8982 	orl	a,@r0
      005E73 08               [12] 8983 	inc	r0
      005E74 46               [12] 8984 	orl	a,@r0
      005E75 70 93            [24] 8985 	jnz	00146$
                                   8986 ;	calc.c:422: printbin(vals[0]);
      005E77                       8987 00106$:
                                   8988 ;	calc.c:425: n = stack_peek2(ctx->ss, vals);
      005E77 89 07            [24] 8989 	mov	ar7,r1
      005E79 7E 00            [12] 8990 	mov	r6,#0x00
      005E7B 7D 40            [12] 8991 	mov	r5,#0x40
      005E7D 8A 82            [24] 8992 	mov	dpl,r2
      005E7F 8B 83            [24] 8993 	mov	dph,r3
      005E81 8C F0            [24] 8994 	mov	b,r4
      005E83 12 70 79         [24] 8995 	lcall	__gptrget
      005E86 FA               [12] 8996 	mov	r2,a
      005E87 A3               [24] 8997 	inc	dptr
      005E88 12 70 79         [24] 8998 	lcall	__gptrget
      005E8B FB               [12] 8999 	mov	r3,a
      005E8C A3               [24] 9000 	inc	dptr
      005E8D 12 70 79         [24] 9001 	lcall	__gptrget
      005E90 FC               [12] 9002 	mov	r4,a
      005E91 C0 01            [24] 9003 	push	ar1
      005E93 C0 07            [24] 9004 	push	ar7
      005E95 C0 06            [24] 9005 	push	ar6
      005E97 C0 05            [24] 9006 	push	ar5
      005E99 8A 82            [24] 9007 	mov	dpl,r2
      005E9B 8B 83            [24] 9008 	mov	dph,r3
      005E9D 8C F0            [24] 9009 	mov	b,r4
      005E9F 12 29 73         [24] 9010 	lcall	_stack_peek2
      005EA2 AE 82            [24] 9011 	mov	r6,dpl
      005EA4 AF 83            [24] 9012 	mov	r7,dph
      005EA6 15 81            [12] 9013 	dec	sp
      005EA8 15 81            [12] 9014 	dec	sp
      005EAA 15 81            [12] 9015 	dec	sp
      005EAC D0 01            [24] 9016 	pop	ar1
      005EAE E5 08            [12] 9017 	mov	a,_bp
      005EB0 24 0C            [12] 9018 	add	a,#0x0c
      005EB2 F8               [12] 9019 	mov	r0,a
      005EB3 A6 06            [24] 9020 	mov	@r0,ar6
      005EB5 08               [12] 9021 	inc	r0
      005EB6 A6 07            [24] 9022 	mov	@r0,ar7
                                   9023 ;	calc.c:426: printstr("\r\nSSTOP1 = ");
      005EB8 7B 14            [12] 9024 	mov	r3,#___str_20
      005EBA 7C 8A            [12] 9025 	mov	r4,#(___str_20 >> 8)
      005EBC 7D 80            [12] 9026 	mov	r5,#0x80
                                   9027 ;	calc.c:51: return;
      005EBE                       9028 00149$:
                                   9029 ;	calc.c:49: for (; *s; s++) putchar(*s);
      005EBE 8B 82            [24] 9030 	mov	dpl,r3
      005EC0 8C 83            [24] 9031 	mov	dph,r4
      005EC2 8D F0            [24] 9032 	mov	b,r5
      005EC4 12 70 79         [24] 9033 	lcall	__gptrget
      005EC7 FA               [12] 9034 	mov	r2,a
      005EC8 60 10            [24] 9035 	jz	00124$
      005ECA 7F 00            [12] 9036 	mov	r7,#0x00
      005ECC 8A 82            [24] 9037 	mov	dpl,r2
      005ECE 8F 83            [24] 9038 	mov	dph,r7
      005ED0 12 2C 1F         [24] 9039 	lcall	_putchar
      005ED3 0B               [12] 9040 	inc	r3
                                   9041 ;	calc.c:426: printstr("\r\nSSTOP1 = ");
      005ED4 BB 00 E7         [24] 9042 	cjne	r3,#0x00,00149$
      005ED7 0C               [12] 9043 	inc	r4
      005ED8 80 E4            [24] 9044 	sjmp	00149$
      005EDA                       9045 00124$:
                                   9046 ;	calc.c:427: if (n > 0) {
      005EDA E5 08            [12] 9047 	mov	a,_bp
      005EDC 24 0C            [12] 9048 	add	a,#0x0c
      005EDE F8               [12] 9049 	mov	r0,a
      005EDF C3               [12] 9050 	clr	c
      005EE0 E4               [12] 9051 	clr	a
      005EE1 96               [12] 9052 	subb	a,@r0
      005EE2 74 80            [12] 9053 	mov	a,#(0x00 ^ 0x80)
      005EE4 08               [12] 9054 	inc	r0
      005EE5 86 F0            [24] 9055 	mov	b,@r0
      005EE7 63 F0 80         [24] 9056 	xrl	b,#0x80
      005EEA 95 F0            [12] 9057 	subb	a,b
      005EEC 40 03            [24] 9058 	jc	00331$
      005EEE 02 5F DD         [24] 9059 	ljmp	00108$
      005EF1                       9060 00331$:
                                   9061 ;	calc.c:428: printf("% 11ld / ", vals[1]);
      005EF1 74 04            [12] 9062 	mov	a,#0x04
      005EF3 29               [12] 9063 	add	a,r1
      005EF4 F8               [12] 9064 	mov	r0,a
      005EF5 86 02            [24] 9065 	mov	ar2,@r0
      005EF7 08               [12] 9066 	inc	r0
      005EF8 86 03            [24] 9067 	mov	ar3,@r0
      005EFA 08               [12] 9068 	inc	r0
      005EFB 86 04            [24] 9069 	mov	ar4,@r0
      005EFD 08               [12] 9070 	inc	r0
      005EFE 86 05            [24] 9071 	mov	ar5,@r0
      005F00 18               [12] 9072 	dec	r0
      005F01 18               [12] 9073 	dec	r0
      005F02 18               [12] 9074 	dec	r0
      005F03 C0 01            [24] 9075 	push	ar1
      005F05 C0 00            [24] 9076 	push	ar0
      005F07 C0 02            [24] 9077 	push	ar2
      005F09 C0 03            [24] 9078 	push	ar3
      005F0B C0 04            [24] 9079 	push	ar4
      005F0D C0 05            [24] 9080 	push	ar5
      005F0F 74 17            [12] 9081 	mov	a,#___str_3
      005F11 C0 E0            [24] 9082 	push	acc
      005F13 74 89            [12] 9083 	mov	a,#(___str_3 >> 8)
      005F15 C0 E0            [24] 9084 	push	acc
      005F17 74 80            [12] 9085 	mov	a,#0x80
      005F19 C0 E0            [24] 9086 	push	acc
      005F1B 12 70 40         [24] 9087 	lcall	_printf
      005F1E E5 81            [12] 9088 	mov	a,sp
      005F20 24 F9            [12] 9089 	add	a,#0xf9
      005F22 F5 81            [12] 9090 	mov	sp,a
      005F24 D0 00            [24] 9091 	pop	ar0
                                   9092 ;	calc.c:429: printf("%08lx / ", vals[1]);
      005F26 86 02            [24] 9093 	mov	ar2,@r0
      005F28 08               [12] 9094 	inc	r0
      005F29 86 03            [24] 9095 	mov	ar3,@r0
      005F2B 08               [12] 9096 	inc	r0
      005F2C 86 04            [24] 9097 	mov	ar4,@r0
      005F2E 08               [12] 9098 	inc	r0
      005F2F 86 05            [24] 9099 	mov	ar5,@r0
      005F31 18               [12] 9100 	dec	r0
      005F32 18               [12] 9101 	dec	r0
      005F33 18               [12] 9102 	dec	r0
      005F34 C0 00            [24] 9103 	push	ar0
      005F36 C0 02            [24] 9104 	push	ar2
      005F38 C0 03            [24] 9105 	push	ar3
      005F3A C0 04            [24] 9106 	push	ar4
      005F3C C0 05            [24] 9107 	push	ar5
      005F3E 74 21            [12] 9108 	mov	a,#___str_4
      005F40 C0 E0            [24] 9109 	push	acc
      005F42 74 89            [12] 9110 	mov	a,#(___str_4 >> 8)
      005F44 C0 E0            [24] 9111 	push	acc
      005F46 74 80            [12] 9112 	mov	a,#0x80
      005F48 C0 E0            [24] 9113 	push	acc
      005F4A 12 70 40         [24] 9114 	lcall	_printf
      005F4D E5 81            [12] 9115 	mov	a,sp
      005F4F 24 F9            [12] 9116 	add	a,#0xf9
      005F51 F5 81            [12] 9117 	mov	sp,a
      005F53 D0 00            [24] 9118 	pop	ar0
                                   9119 ;	calc.c:430: printbin(vals[1]);
      005F55 E5 08            [12] 9120 	mov	a,_bp
      005F57 24 16            [12] 9121 	add	a,#0x16
      005F59 F9               [12] 9122 	mov	r1,a
      005F5A E6               [12] 9123 	mov	a,@r0
      005F5B F7               [12] 9124 	mov	@r1,a
      005F5C 08               [12] 9125 	inc	r0
      005F5D E6               [12] 9126 	mov	a,@r0
      005F5E 09               [12] 9127 	inc	r1
      005F5F F7               [12] 9128 	mov	@r1,a
      005F60 08               [12] 9129 	inc	r0
      005F61 E6               [12] 9130 	mov	a,@r0
      005F62 09               [12] 9131 	inc	r1
      005F63 F7               [12] 9132 	mov	@r1,a
      005F64 08               [12] 9133 	inc	r0
      005F65 E6               [12] 9134 	mov	a,@r0
      005F66 09               [12] 9135 	inc	r1
      005F67 F7               [12] 9136 	mov	@r1,a
      005F68 D0 01            [24] 9137 	pop	ar1
                                   9138 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      005F6A E5 08            [12] 9139 	mov	a,_bp
      005F6C 24 1A            [12] 9140 	add	a,#0x1a
      005F6E F8               [12] 9141 	mov	r0,a
      005F6F E4               [12] 9142 	clr	a
      005F70 F6               [12] 9143 	mov	@r0,a
      005F71 08               [12] 9144 	inc	r0
      005F72 F6               [12] 9145 	mov	@r0,a
      005F73 08               [12] 9146 	inc	r0
      005F74 F6               [12] 9147 	mov	@r0,a
      005F75 08               [12] 9148 	inc	r0
      005F76 76 80            [12] 9149 	mov	@r0,#0x80
      005F78                       9150 00151$:
                                   9151 ;	calc.c:58: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      005F78 C0 01            [24] 9152 	push	ar1
      005F7A E5 08            [12] 9153 	mov	a,_bp
      005F7C 24 16            [12] 9154 	add	a,#0x16
      005F7E F8               [12] 9155 	mov	r0,a
      005F7F 86 02            [24] 9156 	mov	ar2,@r0
      005F81 08               [12] 9157 	inc	r0
      005F82 86 03            [24] 9158 	mov	ar3,@r0
      005F84 08               [12] 9159 	inc	r0
      005F85 86 05            [24] 9160 	mov	ar5,@r0
      005F87 08               [12] 9161 	inc	r0
      005F88 86 07            [24] 9162 	mov	ar7,@r0
      005F8A E5 08            [12] 9163 	mov	a,_bp
      005F8C 24 1A            [12] 9164 	add	a,#0x1a
      005F8E F8               [12] 9165 	mov	r0,a
      005F8F E6               [12] 9166 	mov	a,@r0
      005F90 52 02            [12] 9167 	anl	ar2,a
      005F92 08               [12] 9168 	inc	r0
      005F93 E6               [12] 9169 	mov	a,@r0
      005F94 52 03            [12] 9170 	anl	ar3,a
      005F96 08               [12] 9171 	inc	r0
      005F97 E6               [12] 9172 	mov	a,@r0
      005F98 52 05            [12] 9173 	anl	ar5,a
      005F9A 08               [12] 9174 	inc	r0
      005F9B E6               [12] 9175 	mov	a,@r0
      005F9C 52 07            [12] 9176 	anl	ar7,a
      005F9E D0 01            [24] 9177 	pop	ar1
      005FA0 EA               [12] 9178 	mov	a,r2
      005FA1 4B               [12] 9179 	orl	a,r3
      005FA2 4D               [12] 9180 	orl	a,r5
      005FA3 4F               [12] 9181 	orl	a,r7
      005FA4 60 06            [24] 9182 	jz	00169$
      005FA6 7E 31            [12] 9183 	mov	r6,#0x31
      005FA8 7F 00            [12] 9184 	mov	r7,#0x00
      005FAA 80 04            [24] 9185 	sjmp	00170$
      005FAC                       9186 00169$:
      005FAC 7E 30            [12] 9187 	mov	r6,#0x30
      005FAE 7F 00            [12] 9188 	mov	r7,#0x00
      005FB0                       9189 00170$:
      005FB0 8E 82            [24] 9190 	mov	dpl,r6
      005FB2 8F 83            [24] 9191 	mov	dph,r7
      005FB4 12 2C 1F         [24] 9192 	lcall	_putchar
                                   9193 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      005FB7 E5 08            [12] 9194 	mov	a,_bp
      005FB9 24 1A            [12] 9195 	add	a,#0x1a
      005FBB F8               [12] 9196 	mov	r0,a
      005FBC 08               [12] 9197 	inc	r0
      005FBD 08               [12] 9198 	inc	r0
      005FBE 08               [12] 9199 	inc	r0
      005FBF E6               [12] 9200 	mov	a,@r0
      005FC0 C3               [12] 9201 	clr	c
      005FC1 13               [12] 9202 	rrc	a
      005FC2 F6               [12] 9203 	mov	@r0,a
      005FC3 18               [12] 9204 	dec	r0
      005FC4 E6               [12] 9205 	mov	a,@r0
      005FC5 13               [12] 9206 	rrc	a
      005FC6 F6               [12] 9207 	mov	@r0,a
      005FC7 18               [12] 9208 	dec	r0
      005FC8 E6               [12] 9209 	mov	a,@r0
      005FC9 13               [12] 9210 	rrc	a
      005FCA F6               [12] 9211 	mov	@r0,a
      005FCB 18               [12] 9212 	dec	r0
      005FCC E6               [12] 9213 	mov	a,@r0
      005FCD 13               [12] 9214 	rrc	a
      005FCE F6               [12] 9215 	mov	@r0,a
      005FCF E5 08            [12] 9216 	mov	a,_bp
      005FD1 24 1A            [12] 9217 	add	a,#0x1a
      005FD3 F8               [12] 9218 	mov	r0,a
      005FD4 E6               [12] 9219 	mov	a,@r0
      005FD5 08               [12] 9220 	inc	r0
      005FD6 46               [12] 9221 	orl	a,@r0
      005FD7 08               [12] 9222 	inc	r0
      005FD8 46               [12] 9223 	orl	a,@r0
      005FD9 08               [12] 9224 	inc	r0
      005FDA 46               [12] 9225 	orl	a,@r0
      005FDB 70 9B            [24] 9226 	jnz	00151$
                                   9227 ;	calc.c:430: printbin(vals[1]);
      005FDD                       9228 00108$:
                                   9229 ;	calc.c:432: printstr("\r\nSSTOP0 = ");
      005FDD 7D 20            [12] 9230 	mov	r5,#___str_21
      005FDF 7E 8A            [12] 9231 	mov	r6,#(___str_21 >> 8)
      005FE1 7F 80            [12] 9232 	mov	r7,#0x80
                                   9233 ;	calc.c:51: return;
      005FE3                       9234 00154$:
                                   9235 ;	calc.c:49: for (; *s; s++) putchar(*s);
      005FE3 8D 82            [24] 9236 	mov	dpl,r5
      005FE5 8E 83            [24] 9237 	mov	dph,r6
      005FE7 8F F0            [24] 9238 	mov	b,r7
      005FE9 12 70 79         [24] 9239 	lcall	__gptrget
      005FEC FC               [12] 9240 	mov	r4,a
      005FED 60 10            [24] 9241 	jz	00128$
      005FEF 7B 00            [12] 9242 	mov	r3,#0x00
      005FF1 8C 82            [24] 9243 	mov	dpl,r4
      005FF3 8B 83            [24] 9244 	mov	dph,r3
      005FF5 12 2C 1F         [24] 9245 	lcall	_putchar
      005FF8 0D               [12] 9246 	inc	r5
                                   9247 ;	calc.c:432: printstr("\r\nSSTOP0 = ");
      005FF9 BD 00 E7         [24] 9248 	cjne	r5,#0x00,00154$
      005FFC 0E               [12] 9249 	inc	r6
      005FFD 80 E4            [24] 9250 	sjmp	00154$
      005FFF                       9251 00128$:
                                   9252 ;	calc.c:433: if (n > 1) {
      005FFF E5 08            [12] 9253 	mov	a,_bp
      006001 24 0C            [12] 9254 	add	a,#0x0c
      006003 F8               [12] 9255 	mov	r0,a
      006004 C3               [12] 9256 	clr	c
      006005 74 01            [12] 9257 	mov	a,#0x01
      006007 96               [12] 9258 	subb	a,@r0
      006008 74 80            [12] 9259 	mov	a,#(0x00 ^ 0x80)
      00600A 08               [12] 9260 	inc	r0
      00600B 86 F0            [24] 9261 	mov	b,@r0
      00600D 63 F0 80         [24] 9262 	xrl	b,#0x80
      006010 95 F0            [12] 9263 	subb	a,b
      006012 40 03            [24] 9264 	jc	00336$
      006014 02 60 F7         [24] 9265 	ljmp	00110$
      006017                       9266 00336$:
                                   9267 ;	calc.c:434: printf("% 11ld / ", vals[0]);
      006017 87 04            [24] 9268 	mov	ar4,@r1
      006019 09               [12] 9269 	inc	r1
      00601A 87 05            [24] 9270 	mov	ar5,@r1
      00601C 09               [12] 9271 	inc	r1
      00601D 87 06            [24] 9272 	mov	ar6,@r1
      00601F 09               [12] 9273 	inc	r1
      006020 87 07            [24] 9274 	mov	ar7,@r1
      006022 19               [12] 9275 	dec	r1
      006023 19               [12] 9276 	dec	r1
      006024 19               [12] 9277 	dec	r1
      006025 C0 01            [24] 9278 	push	ar1
      006027 C0 04            [24] 9279 	push	ar4
      006029 C0 05            [24] 9280 	push	ar5
      00602B C0 06            [24] 9281 	push	ar6
      00602D C0 07            [24] 9282 	push	ar7
      00602F 74 17            [12] 9283 	mov	a,#___str_3
      006031 C0 E0            [24] 9284 	push	acc
      006033 74 89            [12] 9285 	mov	a,#(___str_3 >> 8)
      006035 C0 E0            [24] 9286 	push	acc
      006037 74 80            [12] 9287 	mov	a,#0x80
      006039 C0 E0            [24] 9288 	push	acc
      00603B 12 70 40         [24] 9289 	lcall	_printf
      00603E E5 81            [12] 9290 	mov	a,sp
      006040 24 F9            [12] 9291 	add	a,#0xf9
      006042 F5 81            [12] 9292 	mov	sp,a
      006044 D0 01            [24] 9293 	pop	ar1
                                   9294 ;	calc.c:435: printf("%08lx / ", vals[0]);
      006046 87 04            [24] 9295 	mov	ar4,@r1
      006048 09               [12] 9296 	inc	r1
      006049 87 05            [24] 9297 	mov	ar5,@r1
      00604B 09               [12] 9298 	inc	r1
      00604C 87 06            [24] 9299 	mov	ar6,@r1
      00604E 09               [12] 9300 	inc	r1
      00604F 87 07            [24] 9301 	mov	ar7,@r1
      006051 19               [12] 9302 	dec	r1
      006052 19               [12] 9303 	dec	r1
      006053 19               [12] 9304 	dec	r1
      006054 C0 01            [24] 9305 	push	ar1
      006056 C0 04            [24] 9306 	push	ar4
      006058 C0 05            [24] 9307 	push	ar5
      00605A C0 06            [24] 9308 	push	ar6
      00605C C0 07            [24] 9309 	push	ar7
      00605E 74 21            [12] 9310 	mov	a,#___str_4
      006060 C0 E0            [24] 9311 	push	acc
      006062 74 89            [12] 9312 	mov	a,#(___str_4 >> 8)
      006064 C0 E0            [24] 9313 	push	acc
      006066 74 80            [12] 9314 	mov	a,#0x80
      006068 C0 E0            [24] 9315 	push	acc
      00606A 12 70 40         [24] 9316 	lcall	_printf
      00606D E5 81            [12] 9317 	mov	a,sp
      00606F 24 F9            [12] 9318 	add	a,#0xf9
      006071 F5 81            [12] 9319 	mov	sp,a
      006073 D0 01            [24] 9320 	pop	ar1
                                   9321 ;	calc.c:436: printbin(vals[0]);
      006075 E5 08            [12] 9322 	mov	a,_bp
      006077 24 16            [12] 9323 	add	a,#0x16
      006079 F8               [12] 9324 	mov	r0,a
      00607A E7               [12] 9325 	mov	a,@r1
      00607B F6               [12] 9326 	mov	@r0,a
      00607C 09               [12] 9327 	inc	r1
      00607D E7               [12] 9328 	mov	a,@r1
      00607E 08               [12] 9329 	inc	r0
      00607F F6               [12] 9330 	mov	@r0,a
      006080 09               [12] 9331 	inc	r1
      006081 E7               [12] 9332 	mov	a,@r1
      006082 08               [12] 9333 	inc	r0
      006083 F6               [12] 9334 	mov	@r0,a
      006084 09               [12] 9335 	inc	r1
      006085 E7               [12] 9336 	mov	a,@r1
      006086 08               [12] 9337 	inc	r0
      006087 F6               [12] 9338 	mov	@r0,a
                                   9339 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      006088 E5 08            [12] 9340 	mov	a,_bp
      00608A 24 1A            [12] 9341 	add	a,#0x1a
      00608C F8               [12] 9342 	mov	r0,a
      00608D E4               [12] 9343 	clr	a
      00608E F6               [12] 9344 	mov	@r0,a
      00608F 08               [12] 9345 	inc	r0
      006090 F6               [12] 9346 	mov	@r0,a
      006091 08               [12] 9347 	inc	r0
      006092 F6               [12] 9348 	mov	@r0,a
      006093 08               [12] 9349 	inc	r0
      006094 76 80            [12] 9350 	mov	@r0,#0x80
      006096                       9351 00156$:
                                   9352 ;	calc.c:58: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      006096 E5 08            [12] 9353 	mov	a,_bp
      006098 24 16            [12] 9354 	add	a,#0x16
      00609A F8               [12] 9355 	mov	r0,a
      00609B 86 04            [24] 9356 	mov	ar4,@r0
      00609D 08               [12] 9357 	inc	r0
      00609E 86 05            [24] 9358 	mov	ar5,@r0
      0060A0 08               [12] 9359 	inc	r0
      0060A1 86 06            [24] 9360 	mov	ar6,@r0
      0060A3 08               [12] 9361 	inc	r0
      0060A4 86 07            [24] 9362 	mov	ar7,@r0
      0060A6 E5 08            [12] 9363 	mov	a,_bp
      0060A8 24 1A            [12] 9364 	add	a,#0x1a
      0060AA F8               [12] 9365 	mov	r0,a
      0060AB E6               [12] 9366 	mov	a,@r0
      0060AC 52 04            [12] 9367 	anl	ar4,a
      0060AE 08               [12] 9368 	inc	r0
      0060AF E6               [12] 9369 	mov	a,@r0
      0060B0 52 05            [12] 9370 	anl	ar5,a
      0060B2 08               [12] 9371 	inc	r0
      0060B3 E6               [12] 9372 	mov	a,@r0
      0060B4 52 06            [12] 9373 	anl	ar6,a
      0060B6 08               [12] 9374 	inc	r0
      0060B7 E6               [12] 9375 	mov	a,@r0
      0060B8 52 07            [12] 9376 	anl	ar7,a
      0060BA EC               [12] 9377 	mov	a,r4
      0060BB 4D               [12] 9378 	orl	a,r5
      0060BC 4E               [12] 9379 	orl	a,r6
      0060BD 4F               [12] 9380 	orl	a,r7
      0060BE 60 06            [24] 9381 	jz	00171$
      0060C0 7E 31            [12] 9382 	mov	r6,#0x31
      0060C2 7F 00            [12] 9383 	mov	r7,#0x00
      0060C4 80 04            [24] 9384 	sjmp	00172$
      0060C6                       9385 00171$:
      0060C6 7E 30            [12] 9386 	mov	r6,#0x30
      0060C8 7F 00            [12] 9387 	mov	r7,#0x00
      0060CA                       9388 00172$:
      0060CA 8E 82            [24] 9389 	mov	dpl,r6
      0060CC 8F 83            [24] 9390 	mov	dph,r7
      0060CE 12 2C 1F         [24] 9391 	lcall	_putchar
                                   9392 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      0060D1 E5 08            [12] 9393 	mov	a,_bp
      0060D3 24 1A            [12] 9394 	add	a,#0x1a
      0060D5 F8               [12] 9395 	mov	r0,a
      0060D6 08               [12] 9396 	inc	r0
      0060D7 08               [12] 9397 	inc	r0
      0060D8 08               [12] 9398 	inc	r0
      0060D9 E6               [12] 9399 	mov	a,@r0
      0060DA C3               [12] 9400 	clr	c
      0060DB 13               [12] 9401 	rrc	a
      0060DC F6               [12] 9402 	mov	@r0,a
      0060DD 18               [12] 9403 	dec	r0
      0060DE E6               [12] 9404 	mov	a,@r0
      0060DF 13               [12] 9405 	rrc	a
      0060E0 F6               [12] 9406 	mov	@r0,a
      0060E1 18               [12] 9407 	dec	r0
      0060E2 E6               [12] 9408 	mov	a,@r0
      0060E3 13               [12] 9409 	rrc	a
      0060E4 F6               [12] 9410 	mov	@r0,a
      0060E5 18               [12] 9411 	dec	r0
      0060E6 E6               [12] 9412 	mov	a,@r0
      0060E7 13               [12] 9413 	rrc	a
      0060E8 F6               [12] 9414 	mov	@r0,a
      0060E9 E5 08            [12] 9415 	mov	a,_bp
      0060EB 24 1A            [12] 9416 	add	a,#0x1a
      0060ED F8               [12] 9417 	mov	r0,a
      0060EE E6               [12] 9418 	mov	a,@r0
      0060EF 08               [12] 9419 	inc	r0
      0060F0 46               [12] 9420 	orl	a,@r0
      0060F1 08               [12] 9421 	inc	r0
      0060F2 46               [12] 9422 	orl	a,@r0
      0060F3 08               [12] 9423 	inc	r0
      0060F4 46               [12] 9424 	orl	a,@r0
      0060F5 70 9F            [24] 9425 	jnz	00156$
                                   9426 ;	calc.c:436: printbin(vals[0]);
      0060F7                       9427 00110$:
                                   9428 ;	calc.c:438: printstr("\r\n");
      0060F7 7D 2A            [12] 9429 	mov	r5,#___str_5
      0060F9 7E 89            [12] 9430 	mov	r6,#(___str_5 >> 8)
      0060FB 7F 80            [12] 9431 	mov	r7,#0x80
                                   9432 ;	calc.c:51: return;
      0060FD                       9433 00159$:
                                   9434 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0060FD 8D 82            [24] 9435 	mov	dpl,r5
      0060FF 8E 83            [24] 9436 	mov	dph,r6
      006101 8F F0            [24] 9437 	mov	b,r7
      006103 12 70 79         [24] 9438 	lcall	__gptrget
      006106 FC               [12] 9439 	mov	r4,a
      006107 60 10            [24] 9440 	jz	00132$
      006109 7B 00            [12] 9441 	mov	r3,#0x00
      00610B 8C 82            [24] 9442 	mov	dpl,r4
      00610D 8B 83            [24] 9443 	mov	dph,r3
      00610F 12 2C 1F         [24] 9444 	lcall	_putchar
      006112 0D               [12] 9445 	inc	r5
                                   9446 ;	calc.c:438: printstr("\r\n");
      006113 BD 00 E7         [24] 9447 	cjne	r5,#0x00,00159$
      006116 0E               [12] 9448 	inc	r6
      006117 80 E4            [24] 9449 	sjmp	00159$
      006119                       9450 00132$:
                                   9451 ;	calc.c:440: return 1;
      006119 90 00 01         [24] 9452 	mov	dptr,#0x0001
                                   9453 ;	calc.c:441: }
      00611C 85 08 81         [24] 9454 	mov	sp,_bp
      00611F D0 08            [24] 9455 	pop	_bp
      006121 22               [24] 9456 	ret
                                   9457 ;------------------------------------------------------------
                                   9458 ;Allocation info for local variables in function 'help'
                                   9459 ;------------------------------------------------------------
                                   9460 ;delta                     Allocated to stack - _bp -5
                                   9461 ;_ctx                      Allocated to registers 
                                   9462 ;__1310720149              Allocated to registers 
                                   9463 ;s                         Allocated to registers r5 r6 r7 
                                   9464 ;__1310720151              Allocated to registers 
                                   9465 ;s                         Allocated to registers r5 r6 r7 
                                   9466 ;__1310720153              Allocated to registers 
                                   9467 ;s                         Allocated to registers r5 r6 r7 
                                   9468 ;__1310720155              Allocated to registers 
                                   9469 ;s                         Allocated to registers r5 r6 r7 
                                   9470 ;__1310720157              Allocated to registers 
                                   9471 ;s                         Allocated to registers r5 r6 r7 
                                   9472 ;__1310720159              Allocated to registers 
                                   9473 ;s                         Allocated to registers r5 r6 r7 
                                   9474 ;__1310720161              Allocated to registers 
                                   9475 ;s                         Allocated to registers r5 r6 r7 
                                   9476 ;__1310720163              Allocated to registers 
                                   9477 ;s                         Allocated to registers r5 r6 r7 
                                   9478 ;__1310720165              Allocated to registers 
                                   9479 ;s                         Allocated to registers r5 r6 r7 
                                   9480 ;__1310720167              Allocated to registers 
                                   9481 ;s                         Allocated to registers r5 r6 r7 
                                   9482 ;__1310720169              Allocated to registers 
                                   9483 ;s                         Allocated to registers r5 r6 r7 
                                   9484 ;__1310720171              Allocated to registers 
                                   9485 ;s                         Allocated to registers r5 r6 r7 
                                   9486 ;__1310720173              Allocated to registers 
                                   9487 ;s                         Allocated to registers r5 r6 r7 
                                   9488 ;__1310720175              Allocated to registers 
                                   9489 ;s                         Allocated to registers r5 r6 r7 
                                   9490 ;__1310720177              Allocated to registers 
                                   9491 ;s                         Allocated to registers r5 r6 r7 
                                   9492 ;__1310720179              Allocated to registers 
                                   9493 ;s                         Allocated to registers r5 r6 r7 
                                   9494 ;__1310720181              Allocated to registers 
                                   9495 ;s                         Allocated to registers r5 r6 r7 
                                   9496 ;__1310720183              Allocated to registers 
                                   9497 ;s                         Allocated to registers r5 r6 r7 
                                   9498 ;__1310720185              Allocated to registers 
                                   9499 ;s                         Allocated to registers r5 r6 r7 
                                   9500 ;__1310720187              Allocated to registers 
                                   9501 ;s                         Allocated to registers r5 r6 r7 
                                   9502 ;__1310720189              Allocated to registers 
                                   9503 ;s                         Allocated to registers r5 r6 r7 
                                   9504 ;__1310720191              Allocated to registers 
                                   9505 ;s                         Allocated to registers r5 r6 r7 
                                   9506 ;__1310720193              Allocated to registers 
                                   9507 ;s                         Allocated to registers r5 r6 r7 
                                   9508 ;__1310720195              Allocated to registers 
                                   9509 ;s                         Allocated to registers r5 r6 r7 
                                   9510 ;__1310720197              Allocated to registers 
                                   9511 ;s                         Allocated to registers r5 r6 r7 
                                   9512 ;__1310720199              Allocated to registers 
                                   9513 ;s                         Allocated to registers r5 r6 r7 
                                   9514 ;__1310720201              Allocated to registers 
                                   9515 ;s                         Allocated to registers r5 r6 r7 
                                   9516 ;__1310720203              Allocated to registers 
                                   9517 ;s                         Allocated to registers r5 r6 r7 
                                   9518 ;__1310720205              Allocated to registers 
                                   9519 ;s                         Allocated to registers r5 r6 r7 
                                   9520 ;__1310720207              Allocated to registers 
                                   9521 ;s                         Allocated to registers r5 r6 r7 
                                   9522 ;__1310720209              Allocated to registers 
                                   9523 ;s                         Allocated to registers r5 r6 r7 
                                   9524 ;------------------------------------------------------------
                                   9525 ;	calc.c:443: static int help(void *_ctx, delta_t *delta) __reentrant {
                                   9526 ;	-----------------------------------------
                                   9527 ;	 function help
                                   9528 ;	-----------------------------------------
      006122                       9529 _help:
      006122 C0 08            [24] 9530 	push	_bp
      006124 85 81 08         [24] 9531 	mov	_bp,sp
                                   9532 ;	calc.c:447: printstr("\r\nHhOo\tbase 16 10 8 2\r\n");
      006127 7D 2C            [12] 9533 	mov	r5,#___str_22
      006129 7E 8A            [12] 9534 	mov	r6,#(___str_22 >> 8)
      00612B 7F 80            [12] 9535 	mov	r7,#0x80
                                   9536 ;	calc.c:51: return;
      00612D                       9537 00164$:
                                   9538 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00612D 8D 82            [24] 9539 	mov	dpl,r5
      00612F 8E 83            [24] 9540 	mov	dph,r6
      006131 8F F0            [24] 9541 	mov	b,r7
      006133 12 70 79         [24] 9542 	lcall	__gptrget
      006136 FC               [12] 9543 	mov	r4,a
      006137 60 10            [24] 9544 	jz	00102$
      006139 7B 00            [12] 9545 	mov	r3,#0x00
      00613B 8C 82            [24] 9546 	mov	dpl,r4
      00613D 8B 83            [24] 9547 	mov	dph,r3
      00613F 12 2C 1F         [24] 9548 	lcall	_putchar
      006142 0D               [12] 9549 	inc	r5
                                   9550 ;	calc.c:447: printstr("\r\nHhOo\tbase 16 10 8 2\r\n");
      006143 BD 00 E7         [24] 9551 	cjne	r5,#0x00,00164$
      006146 0E               [12] 9552 	inc	r6
      006147 80 E4            [24] 9553 	sjmp	00164$
      006149                       9554 00102$:
                                   9555 ;	calc.c:448: printstr("p\tpeek top\r\n");
      006149 7D 44            [12] 9556 	mov	r5,#___str_23
      00614B 7E 8A            [12] 9557 	mov	r6,#(___str_23 >> 8)
      00614D 7F 80            [12] 9558 	mov	r7,#0x80
                                   9559 ;	calc.c:51: return;
      00614F                       9560 00167$:
                                   9561 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00614F 8D 82            [24] 9562 	mov	dpl,r5
      006151 8E 83            [24] 9563 	mov	dph,r6
      006153 8F F0            [24] 9564 	mov	b,r7
      006155 12 70 79         [24] 9565 	lcall	__gptrget
      006158 FC               [12] 9566 	mov	r4,a
      006159 60 10            [24] 9567 	jz	00104$
      00615B 7B 00            [12] 9568 	mov	r3,#0x00
      00615D 8C 82            [24] 9569 	mov	dpl,r4
      00615F 8B 83            [24] 9570 	mov	dph,r3
      006161 12 2C 1F         [24] 9571 	lcall	_putchar
      006164 0D               [12] 9572 	inc	r5
                                   9573 ;	calc.c:448: printstr("p\tpeek top\r\n");
      006165 BD 00 E7         [24] 9574 	cjne	r5,#0x00,00167$
      006168 0E               [12] 9575 	inc	r6
      006169 80 E4            [24] 9576 	sjmp	00167$
      00616B                       9577 00104$:
                                   9578 ;	calc.c:449: printstr("P\tprint stack\r\n");
      00616B 7D 51            [12] 9579 	mov	r5,#___str_24
      00616D 7E 8A            [12] 9580 	mov	r6,#(___str_24 >> 8)
      00616F 7F 80            [12] 9581 	mov	r7,#0x80
                                   9582 ;	calc.c:51: return;
      006171                       9583 00170$:
                                   9584 ;	calc.c:49: for (; *s; s++) putchar(*s);
      006171 8D 82            [24] 9585 	mov	dpl,r5
      006173 8E 83            [24] 9586 	mov	dph,r6
      006175 8F F0            [24] 9587 	mov	b,r7
      006177 12 70 79         [24] 9588 	lcall	__gptrget
      00617A FC               [12] 9589 	mov	r4,a
      00617B 60 10            [24] 9590 	jz	00106$
      00617D 7B 00            [12] 9591 	mov	r3,#0x00
      00617F 8C 82            [24] 9592 	mov	dpl,r4
      006181 8B 83            [24] 9593 	mov	dph,r3
      006183 12 2C 1F         [24] 9594 	lcall	_putchar
      006186 0D               [12] 9595 	inc	r5
                                   9596 ;	calc.c:449: printstr("P\tprint stack\r\n");
      006187 BD 00 E7         [24] 9597 	cjne	r5,#0x00,00170$
      00618A 0E               [12] 9598 	inc	r6
      00618B 80 E4            [24] 9599 	sjmp	00170$
      00618D                       9600 00106$:
                                   9601 ;	calc.c:450: printstr("v.\tpop top\r\n");
      00618D 7D 61            [12] 9602 	mov	r5,#___str_25
      00618F 7E 8A            [12] 9603 	mov	r6,#(___str_25 >> 8)
      006191 7F 80            [12] 9604 	mov	r7,#0x80
                                   9605 ;	calc.c:51: return;
      006193                       9606 00173$:
                                   9607 ;	calc.c:49: for (; *s; s++) putchar(*s);
      006193 8D 82            [24] 9608 	mov	dpl,r5
      006195 8E 83            [24] 9609 	mov	dph,r6
      006197 8F F0            [24] 9610 	mov	b,r7
      006199 12 70 79         [24] 9611 	lcall	__gptrget
      00619C FC               [12] 9612 	mov	r4,a
      00619D 60 10            [24] 9613 	jz	00108$
      00619F 7B 00            [12] 9614 	mov	r3,#0x00
      0061A1 8C 82            [24] 9615 	mov	dpl,r4
      0061A3 8B 83            [24] 9616 	mov	dph,r3
      0061A5 12 2C 1F         [24] 9617 	lcall	_putchar
      0061A8 0D               [12] 9618 	inc	r5
                                   9619 ;	calc.c:450: printstr("v.\tpop top\r\n");
      0061A9 BD 00 E7         [24] 9620 	cjne	r5,#0x00,00173$
      0061AC 0E               [12] 9621 	inc	r6
      0061AD 80 E4            [24] 9622 	sjmp	00173$
      0061AF                       9623 00108$:
                                   9624 ;	calc.c:451: printstr("V\tpop all\r\n");
      0061AF 7D 6E            [12] 9625 	mov	r5,#___str_26
      0061B1 7E 8A            [12] 9626 	mov	r6,#(___str_26 >> 8)
      0061B3 7F 80            [12] 9627 	mov	r7,#0x80
                                   9628 ;	calc.c:51: return;
      0061B5                       9629 00176$:
                                   9630 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0061B5 8D 82            [24] 9631 	mov	dpl,r5
      0061B7 8E 83            [24] 9632 	mov	dph,r6
      0061B9 8F F0            [24] 9633 	mov	b,r7
      0061BB 12 70 79         [24] 9634 	lcall	__gptrget
      0061BE FC               [12] 9635 	mov	r4,a
      0061BF 60 10            [24] 9636 	jz	00110$
      0061C1 7B 00            [12] 9637 	mov	r3,#0x00
      0061C3 8C 82            [24] 9638 	mov	dpl,r4
      0061C5 8B 83            [24] 9639 	mov	dph,r3
      0061C7 12 2C 1F         [24] 9640 	lcall	_putchar
      0061CA 0D               [12] 9641 	inc	r5
                                   9642 ;	calc.c:451: printstr("V\tpop all\r\n");
      0061CB BD 00 E7         [24] 9643 	cjne	r5,#0x00,00176$
      0061CE 0E               [12] 9644 	inc	r6
      0061CF 80 E4            [24] 9645 	sjmp	00176$
      0061D1                       9646 00110$:
                                   9647 ;	calc.c:452: printstr("i\treset acc\r\n");
      0061D1 7D 7A            [12] 9648 	mov	r5,#___str_27
      0061D3 7E 8A            [12] 9649 	mov	r6,#(___str_27 >> 8)
      0061D5 7F 80            [12] 9650 	mov	r7,#0x80
                                   9651 ;	calc.c:51: return;
      0061D7                       9652 00179$:
                                   9653 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0061D7 8D 82            [24] 9654 	mov	dpl,r5
      0061D9 8E 83            [24] 9655 	mov	dph,r6
      0061DB 8F F0            [24] 9656 	mov	b,r7
      0061DD 12 70 79         [24] 9657 	lcall	__gptrget
      0061E0 FC               [12] 9658 	mov	r4,a
      0061E1 60 10            [24] 9659 	jz	00112$
      0061E3 7B 00            [12] 9660 	mov	r3,#0x00
      0061E5 8C 82            [24] 9661 	mov	dpl,r4
      0061E7 8B 83            [24] 9662 	mov	dph,r3
      0061E9 12 2C 1F         [24] 9663 	lcall	_putchar
      0061EC 0D               [12] 9664 	inc	r5
                                   9665 ;	calc.c:452: printstr("i\treset acc\r\n");
      0061ED BD 00 E7         [24] 9666 	cjne	r5,#0x00,00179$
      0061F0 0E               [12] 9667 	inc	r6
      0061F1 80 E4            [24] 9668 	sjmp	00179$
      0061F3                       9669 00112$:
                                   9670 ;	calc.c:453: printstr("I\treset and discard acc\r\n");
      0061F3 7D 88            [12] 9671 	mov	r5,#___str_28
      0061F5 7E 8A            [12] 9672 	mov	r6,#(___str_28 >> 8)
      0061F7 7F 80            [12] 9673 	mov	r7,#0x80
                                   9674 ;	calc.c:51: return;
      0061F9                       9675 00182$:
                                   9676 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0061F9 8D 82            [24] 9677 	mov	dpl,r5
      0061FB 8E 83            [24] 9678 	mov	dph,r6
      0061FD 8F F0            [24] 9679 	mov	b,r7
      0061FF 12 70 79         [24] 9680 	lcall	__gptrget
      006202 FC               [12] 9681 	mov	r4,a
      006203 60 10            [24] 9682 	jz	00114$
      006205 7B 00            [12] 9683 	mov	r3,#0x00
      006207 8C 82            [24] 9684 	mov	dpl,r4
      006209 8B 83            [24] 9685 	mov	dph,r3
      00620B 12 2C 1F         [24] 9686 	lcall	_putchar
      00620E 0D               [12] 9687 	inc	r5
                                   9688 ;	calc.c:453: printstr("I\treset and discard acc\r\n");
      00620F BD 00 E7         [24] 9689 	cjne	r5,#0x00,00182$
      006212 0E               [12] 9690 	inc	r6
      006213 80 E4            [24] 9691 	sjmp	00182$
      006215                       9692 00114$:
                                   9693 ;	calc.c:454: printstr("x\texchange top 2\r\n");
      006215 7D A2            [12] 9694 	mov	r5,#___str_29
      006217 7E 8A            [12] 9695 	mov	r6,#(___str_29 >> 8)
      006219 7F 80            [12] 9696 	mov	r7,#0x80
                                   9697 ;	calc.c:51: return;
      00621B                       9698 00185$:
                                   9699 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00621B 8D 82            [24] 9700 	mov	dpl,r5
      00621D 8E 83            [24] 9701 	mov	dph,r6
      00621F 8F F0            [24] 9702 	mov	b,r7
      006221 12 70 79         [24] 9703 	lcall	__gptrget
      006224 FC               [12] 9704 	mov	r4,a
      006225 60 10            [24] 9705 	jz	00116$
      006227 7B 00            [12] 9706 	mov	r3,#0x00
      006229 8C 82            [24] 9707 	mov	dpl,r4
      00622B 8B 83            [24] 9708 	mov	dph,r3
      00622D 12 2C 1F         [24] 9709 	lcall	_putchar
      006230 0D               [12] 9710 	inc	r5
                                   9711 ;	calc.c:454: printstr("x\texchange top 2\r\n");
      006231 BD 00 E7         [24] 9712 	cjne	r5,#0x00,00185$
      006234 0E               [12] 9713 	inc	r6
      006235 80 E4            [24] 9714 	sjmp	00185$
      006237                       9715 00116$:
                                   9716 ;	calc.c:455: printstr("X\texchange stacks primary <-> secondary\r\n");
      006237 7D B5            [12] 9717 	mov	r5,#___str_30
      006239 7E 8A            [12] 9718 	mov	r6,#(___str_30 >> 8)
      00623B 7F 80            [12] 9719 	mov	r7,#0x80
                                   9720 ;	calc.c:51: return;
      00623D                       9721 00188$:
                                   9722 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00623D 8D 82            [24] 9723 	mov	dpl,r5
      00623F 8E 83            [24] 9724 	mov	dph,r6
      006241 8F F0            [24] 9725 	mov	b,r7
      006243 12 70 79         [24] 9726 	lcall	__gptrget
      006246 FC               [12] 9727 	mov	r4,a
      006247 60 10            [24] 9728 	jz	00118$
      006249 7B 00            [12] 9729 	mov	r3,#0x00
      00624B 8C 82            [24] 9730 	mov	dpl,r4
      00624D 8B 83            [24] 9731 	mov	dph,r3
      00624F 12 2C 1F         [24] 9732 	lcall	_putchar
      006252 0D               [12] 9733 	inc	r5
                                   9734 ;	calc.c:455: printstr("X\texchange stacks primary <-> secondary\r\n");
      006253 BD 00 E7         [24] 9735 	cjne	r5,#0x00,00188$
      006256 0E               [12] 9736 	inc	r6
      006257 80 E4            [24] 9737 	sjmp	00188$
      006259                       9738 00118$:
                                   9739 ;	calc.c:456: printstr("T\texchange tops primary <-> secondary\r\n");
      006259 7D DF            [12] 9740 	mov	r5,#___str_31
      00625B 7E 8A            [12] 9741 	mov	r6,#(___str_31 >> 8)
      00625D 7F 80            [12] 9742 	mov	r7,#0x80
                                   9743 ;	calc.c:51: return;
      00625F                       9744 00191$:
                                   9745 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00625F 8D 82            [24] 9746 	mov	dpl,r5
      006261 8E 83            [24] 9747 	mov	dph,r6
      006263 8F F0            [24] 9748 	mov	b,r7
      006265 12 70 79         [24] 9749 	lcall	__gptrget
      006268 FC               [12] 9750 	mov	r4,a
      006269 60 10            [24] 9751 	jz	00120$
      00626B 7B 00            [12] 9752 	mov	r3,#0x00
      00626D 8C 82            [24] 9753 	mov	dpl,r4
      00626F 8B 83            [24] 9754 	mov	dph,r3
      006271 12 2C 1F         [24] 9755 	lcall	_putchar
      006274 0D               [12] 9756 	inc	r5
                                   9757 ;	calc.c:456: printstr("T\texchange tops primary <-> secondary\r\n");
      006275 BD 00 E7         [24] 9758 	cjne	r5,#0x00,00191$
      006278 0E               [12] 9759 	inc	r6
      006279 80 E4            [24] 9760 	sjmp	00191$
      00627B                       9761 00120$:
                                   9762 ;	calc.c:457: printstr("U\tcopy top secondary -> primary\r\n");
      00627B 7D 07            [12] 9763 	mov	r5,#___str_32
      00627D 7E 8B            [12] 9764 	mov	r6,#(___str_32 >> 8)
      00627F 7F 80            [12] 9765 	mov	r7,#0x80
                                   9766 ;	calc.c:51: return;
      006281                       9767 00194$:
                                   9768 ;	calc.c:49: for (; *s; s++) putchar(*s);
      006281 8D 82            [24] 9769 	mov	dpl,r5
      006283 8E 83            [24] 9770 	mov	dph,r6
      006285 8F F0            [24] 9771 	mov	b,r7
      006287 12 70 79         [24] 9772 	lcall	__gptrget
      00628A FC               [12] 9773 	mov	r4,a
      00628B 60 10            [24] 9774 	jz	00122$
      00628D 7B 00            [12] 9775 	mov	r3,#0x00
      00628F 8C 82            [24] 9776 	mov	dpl,r4
      006291 8B 83            [24] 9777 	mov	dph,r3
      006293 12 2C 1F         [24] 9778 	lcall	_putchar
      006296 0D               [12] 9779 	inc	r5
                                   9780 ;	calc.c:457: printstr("U\tcopy top secondary -> primary\r\n");
      006297 BD 00 E7         [24] 9781 	cjne	r5,#0x00,00194$
      00629A 0E               [12] 9782 	inc	r6
      00629B 80 E4            [24] 9783 	sjmp	00194$
      00629D                       9784 00122$:
                                   9785 ;	calc.c:458: printstr("u\tcopy top primary -> secondary\r\n");
      00629D 7D 29            [12] 9786 	mov	r5,#___str_33
      00629F 7E 8B            [12] 9787 	mov	r6,#(___str_33 >> 8)
      0062A1 7F 80            [12] 9788 	mov	r7,#0x80
                                   9789 ;	calc.c:51: return;
      0062A3                       9790 00197$:
                                   9791 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0062A3 8D 82            [24] 9792 	mov	dpl,r5
      0062A5 8E 83            [24] 9793 	mov	dph,r6
      0062A7 8F F0            [24] 9794 	mov	b,r7
      0062A9 12 70 79         [24] 9795 	lcall	__gptrget
      0062AC FC               [12] 9796 	mov	r4,a
      0062AD 60 10            [24] 9797 	jz	00124$
      0062AF 7B 00            [12] 9798 	mov	r3,#0x00
      0062B1 8C 82            [24] 9799 	mov	dpl,r4
      0062B3 8B 83            [24] 9800 	mov	dph,r3
      0062B5 12 2C 1F         [24] 9801 	lcall	_putchar
      0062B8 0D               [12] 9802 	inc	r5
                                   9803 ;	calc.c:458: printstr("u\tcopy top primary -> secondary\r\n");
      0062B9 BD 00 E7         [24] 9804 	cjne	r5,#0x00,00197$
      0062BC 0E               [12] 9805 	inc	r6
      0062BD 80 E4            [24] 9806 	sjmp	00197$
      0062BF                       9807 00124$:
                                   9808 ;	calc.c:459: printstr("M\tmove top secondary -> primary\r\n");
      0062BF 7D 4B            [12] 9809 	mov	r5,#___str_34
      0062C1 7E 8B            [12] 9810 	mov	r6,#(___str_34 >> 8)
      0062C3 7F 80            [12] 9811 	mov	r7,#0x80
                                   9812 ;	calc.c:51: return;
      0062C5                       9813 00200$:
                                   9814 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0062C5 8D 82            [24] 9815 	mov	dpl,r5
      0062C7 8E 83            [24] 9816 	mov	dph,r6
      0062C9 8F F0            [24] 9817 	mov	b,r7
      0062CB 12 70 79         [24] 9818 	lcall	__gptrget
      0062CE FC               [12] 9819 	mov	r4,a
      0062CF 60 10            [24] 9820 	jz	00126$
      0062D1 7B 00            [12] 9821 	mov	r3,#0x00
      0062D3 8C 82            [24] 9822 	mov	dpl,r4
      0062D5 8B 83            [24] 9823 	mov	dph,r3
      0062D7 12 2C 1F         [24] 9824 	lcall	_putchar
      0062DA 0D               [12] 9825 	inc	r5
                                   9826 ;	calc.c:459: printstr("M\tmove top secondary -> primary\r\n");
      0062DB BD 00 E7         [24] 9827 	cjne	r5,#0x00,00200$
      0062DE 0E               [12] 9828 	inc	r6
      0062DF 80 E4            [24] 9829 	sjmp	00200$
      0062E1                       9830 00126$:
                                   9831 ;	calc.c:460: printstr("m\tmove top primary -> secondary\r\n");
      0062E1 7D 6D            [12] 9832 	mov	r5,#___str_35
      0062E3 7E 8B            [12] 9833 	mov	r6,#(___str_35 >> 8)
      0062E5 7F 80            [12] 9834 	mov	r7,#0x80
                                   9835 ;	calc.c:51: return;
      0062E7                       9836 00203$:
                                   9837 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0062E7 8D 82            [24] 9838 	mov	dpl,r5
      0062E9 8E 83            [24] 9839 	mov	dph,r6
      0062EB 8F F0            [24] 9840 	mov	b,r7
      0062ED 12 70 79         [24] 9841 	lcall	__gptrget
      0062F0 FC               [12] 9842 	mov	r4,a
      0062F1 60 10            [24] 9843 	jz	00128$
      0062F3 7B 00            [12] 9844 	mov	r3,#0x00
      0062F5 8C 82            [24] 9845 	mov	dpl,r4
      0062F7 8B 83            [24] 9846 	mov	dph,r3
      0062F9 12 2C 1F         [24] 9847 	lcall	_putchar
      0062FC 0D               [12] 9848 	inc	r5
                                   9849 ;	calc.c:460: printstr("m\tmove top primary -> secondary\r\n");
      0062FD BD 00 E7         [24] 9850 	cjne	r5,#0x00,00203$
      006300 0E               [12] 9851 	inc	r6
      006301 80 E4            [24] 9852 	sjmp	00203$
      006303                       9853 00128$:
                                   9854 ;	calc.c:461: printstr("+\tadd top 2\r\n");
      006303 7D 8F            [12] 9855 	mov	r5,#___str_36
      006305 7E 8B            [12] 9856 	mov	r6,#(___str_36 >> 8)
      006307 7F 80            [12] 9857 	mov	r7,#0x80
                                   9858 ;	calc.c:51: return;
      006309                       9859 00206$:
                                   9860 ;	calc.c:49: for (; *s; s++) putchar(*s);
      006309 8D 82            [24] 9861 	mov	dpl,r5
      00630B 8E 83            [24] 9862 	mov	dph,r6
      00630D 8F F0            [24] 9863 	mov	b,r7
      00630F 12 70 79         [24] 9864 	lcall	__gptrget
      006312 FC               [12] 9865 	mov	r4,a
      006313 60 10            [24] 9866 	jz	00130$
      006315 7B 00            [12] 9867 	mov	r3,#0x00
      006317 8C 82            [24] 9868 	mov	dpl,r4
      006319 8B 83            [24] 9869 	mov	dph,r3
      00631B 12 2C 1F         [24] 9870 	lcall	_putchar
      00631E 0D               [12] 9871 	inc	r5
                                   9872 ;	calc.c:461: printstr("+\tadd top 2\r\n");
      00631F BD 00 E7         [24] 9873 	cjne	r5,#0x00,00206$
      006322 0E               [12] 9874 	inc	r6
      006323 80 E4            [24] 9875 	sjmp	00206$
      006325                       9876 00130$:
                                   9877 ;	calc.c:462: printstr("-\tsubtract top 2\r\n");
      006325 7D 9D            [12] 9878 	mov	r5,#___str_37
      006327 7E 8B            [12] 9879 	mov	r6,#(___str_37 >> 8)
      006329 7F 80            [12] 9880 	mov	r7,#0x80
                                   9881 ;	calc.c:51: return;
      00632B                       9882 00209$:
                                   9883 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00632B 8D 82            [24] 9884 	mov	dpl,r5
      00632D 8E 83            [24] 9885 	mov	dph,r6
      00632F 8F F0            [24] 9886 	mov	b,r7
      006331 12 70 79         [24] 9887 	lcall	__gptrget
      006334 FC               [12] 9888 	mov	r4,a
      006335 60 10            [24] 9889 	jz	00132$
      006337 7B 00            [12] 9890 	mov	r3,#0x00
      006339 8C 82            [24] 9891 	mov	dpl,r4
      00633B 8B 83            [24] 9892 	mov	dph,r3
      00633D 12 2C 1F         [24] 9893 	lcall	_putchar
      006340 0D               [12] 9894 	inc	r5
                                   9895 ;	calc.c:462: printstr("-\tsubtract top 2\r\n");
      006341 BD 00 E7         [24] 9896 	cjne	r5,#0x00,00209$
      006344 0E               [12] 9897 	inc	r6
      006345 80 E4            [24] 9898 	sjmp	00209$
      006347                       9899 00132$:
                                   9900 ;	calc.c:463: printstr("*\tmultiply top 2\r\n");
      006347 7D B0            [12] 9901 	mov	r5,#___str_38
      006349 7E 8B            [12] 9902 	mov	r6,#(___str_38 >> 8)
      00634B 7F 80            [12] 9903 	mov	r7,#0x80
                                   9904 ;	calc.c:51: return;
      00634D                       9905 00212$:
                                   9906 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00634D 8D 82            [24] 9907 	mov	dpl,r5
      00634F 8E 83            [24] 9908 	mov	dph,r6
      006351 8F F0            [24] 9909 	mov	b,r7
      006353 12 70 79         [24] 9910 	lcall	__gptrget
      006356 FC               [12] 9911 	mov	r4,a
      006357 60 10            [24] 9912 	jz	00134$
      006359 7B 00            [12] 9913 	mov	r3,#0x00
      00635B 8C 82            [24] 9914 	mov	dpl,r4
      00635D 8B 83            [24] 9915 	mov	dph,r3
      00635F 12 2C 1F         [24] 9916 	lcall	_putchar
      006362 0D               [12] 9917 	inc	r5
                                   9918 ;	calc.c:463: printstr("*\tmultiply top 2\r\n");
      006363 BD 00 E7         [24] 9919 	cjne	r5,#0x00,00212$
      006366 0E               [12] 9920 	inc	r6
      006367 80 E4            [24] 9921 	sjmp	00212$
      006369                       9922 00134$:
                                   9923 ;	calc.c:464: printstr("/\tdivide top 2\r\n");
      006369 7D C3            [12] 9924 	mov	r5,#___str_39
      00636B 7E 8B            [12] 9925 	mov	r6,#(___str_39 >> 8)
      00636D 7F 80            [12] 9926 	mov	r7,#0x80
                                   9927 ;	calc.c:51: return;
      00636F                       9928 00215$:
                                   9929 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00636F 8D 82            [24] 9930 	mov	dpl,r5
      006371 8E 83            [24] 9931 	mov	dph,r6
      006373 8F F0            [24] 9932 	mov	b,r7
      006375 12 70 79         [24] 9933 	lcall	__gptrget
      006378 FC               [12] 9934 	mov	r4,a
      006379 60 10            [24] 9935 	jz	00136$
      00637B 7B 00            [12] 9936 	mov	r3,#0x00
      00637D 8C 82            [24] 9937 	mov	dpl,r4
      00637F 8B 83            [24] 9938 	mov	dph,r3
      006381 12 2C 1F         [24] 9939 	lcall	_putchar
      006384 0D               [12] 9940 	inc	r5
                                   9941 ;	calc.c:464: printstr("/\tdivide top 2\r\n");
      006385 BD 00 E7         [24] 9942 	cjne	r5,#0x00,00215$
      006388 0E               [12] 9943 	inc	r6
      006389 80 E4            [24] 9944 	sjmp	00215$
      00638B                       9945 00136$:
                                   9946 ;	calc.c:465: printstr("\\\tdivide top 2 unsigned\r\n");	
      00638B 7D D4            [12] 9947 	mov	r5,#___str_40
      00638D 7E 8B            [12] 9948 	mov	r6,#(___str_40 >> 8)
      00638F 7F 80            [12] 9949 	mov	r7,#0x80
                                   9950 ;	calc.c:51: return;
      006391                       9951 00218$:
                                   9952 ;	calc.c:49: for (; *s; s++) putchar(*s);
      006391 8D 82            [24] 9953 	mov	dpl,r5
      006393 8E 83            [24] 9954 	mov	dph,r6
      006395 8F F0            [24] 9955 	mov	b,r7
      006397 12 70 79         [24] 9956 	lcall	__gptrget
      00639A FC               [12] 9957 	mov	r4,a
      00639B 60 10            [24] 9958 	jz	00138$
      00639D 7B 00            [12] 9959 	mov	r3,#0x00
      00639F 8C 82            [24] 9960 	mov	dpl,r4
      0063A1 8B 83            [24] 9961 	mov	dph,r3
      0063A3 12 2C 1F         [24] 9962 	lcall	_putchar
      0063A6 0D               [12] 9963 	inc	r5
                                   9964 ;	calc.c:465: printstr("\\\tdivide top 2 unsigned\r\n");	
      0063A7 BD 00 E7         [24] 9965 	cjne	r5,#0x00,00218$
      0063AA 0E               [12] 9966 	inc	r6
      0063AB 80 E4            [24] 9967 	sjmp	00218$
      0063AD                       9968 00138$:
                                   9969 ;	calc.c:466: printstr("%\tmodulus top 2\r\n");
      0063AD 7D EE            [12] 9970 	mov	r5,#___str_41
      0063AF 7E 8B            [12] 9971 	mov	r6,#(___str_41 >> 8)
      0063B1 7F 80            [12] 9972 	mov	r7,#0x80
                                   9973 ;	calc.c:51: return;
      0063B3                       9974 00221$:
                                   9975 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0063B3 8D 82            [24] 9976 	mov	dpl,r5
      0063B5 8E 83            [24] 9977 	mov	dph,r6
      0063B7 8F F0            [24] 9978 	mov	b,r7
      0063B9 12 70 79         [24] 9979 	lcall	__gptrget
      0063BC FC               [12] 9980 	mov	r4,a
      0063BD 60 10            [24] 9981 	jz	00140$
      0063BF 7B 00            [12] 9982 	mov	r3,#0x00
      0063C1 8C 82            [24] 9983 	mov	dpl,r4
      0063C3 8B 83            [24] 9984 	mov	dph,r3
      0063C5 12 2C 1F         [24] 9985 	lcall	_putchar
      0063C8 0D               [12] 9986 	inc	r5
                                   9987 ;	calc.c:466: printstr("%\tmodulus top 2\r\n");
      0063C9 BD 00 E7         [24] 9988 	cjne	r5,#0x00,00221$
      0063CC 0E               [12] 9989 	inc	r6
      0063CD 80 E4            [24] 9990 	sjmp	00221$
      0063CF                       9991 00140$:
                                   9992 ;	calc.c:467: printstr("#\tmodulus top 2 unsigned\r\n");
      0063CF 7D 00            [12] 9993 	mov	r5,#___str_42
      0063D1 7E 8C            [12] 9994 	mov	r6,#(___str_42 >> 8)
      0063D3 7F 80            [12] 9995 	mov	r7,#0x80
                                   9996 ;	calc.c:51: return;
      0063D5                       9997 00224$:
                                   9998 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0063D5 8D 82            [24] 9999 	mov	dpl,r5
      0063D7 8E 83            [24]10000 	mov	dph,r6
      0063D9 8F F0            [24]10001 	mov	b,r7
      0063DB 12 70 79         [24]10002 	lcall	__gptrget
      0063DE FC               [12]10003 	mov	r4,a
      0063DF 60 10            [24]10004 	jz	00142$
      0063E1 7B 00            [12]10005 	mov	r3,#0x00
      0063E3 8C 82            [24]10006 	mov	dpl,r4
      0063E5 8B 83            [24]10007 	mov	dph,r3
      0063E7 12 2C 1F         [24]10008 	lcall	_putchar
      0063EA 0D               [12]10009 	inc	r5
                                  10010 ;	calc.c:467: printstr("#\tmodulus top 2 unsigned\r\n");
      0063EB BD 00 E7         [24]10011 	cjne	r5,#0x00,00224$
      0063EE 0E               [12]10012 	inc	r6
      0063EF 80 E4            [24]10013 	sjmp	00224$
      0063F1                      10014 00142$:
                                  10015 ;	calc.c:468: printstr("&\tand top 2\r\n");
      0063F1 7D 1B            [12]10016 	mov	r5,#___str_43
      0063F3 7E 8C            [12]10017 	mov	r6,#(___str_43 >> 8)
      0063F5 7F 80            [12]10018 	mov	r7,#0x80
                                  10019 ;	calc.c:51: return;
      0063F7                      10020 00227$:
                                  10021 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0063F7 8D 82            [24]10022 	mov	dpl,r5
      0063F9 8E 83            [24]10023 	mov	dph,r6
      0063FB 8F F0            [24]10024 	mov	b,r7
      0063FD 12 70 79         [24]10025 	lcall	__gptrget
      006400 FC               [12]10026 	mov	r4,a
      006401 60 10            [24]10027 	jz	00144$
      006403 7B 00            [12]10028 	mov	r3,#0x00
      006405 8C 82            [24]10029 	mov	dpl,r4
      006407 8B 83            [24]10030 	mov	dph,r3
      006409 12 2C 1F         [24]10031 	lcall	_putchar
      00640C 0D               [12]10032 	inc	r5
                                  10033 ;	calc.c:468: printstr("&\tand top 2\r\n");
      00640D BD 00 E7         [24]10034 	cjne	r5,#0x00,00227$
      006410 0E               [12]10035 	inc	r6
      006411 80 E4            [24]10036 	sjmp	00227$
      006413                      10037 00144$:
                                  10038 ;	calc.c:469: printstr("|\tor top 2\r\n");
      006413 7D 29            [12]10039 	mov	r5,#___str_44
      006415 7E 8C            [12]10040 	mov	r6,#(___str_44 >> 8)
      006417 7F 80            [12]10041 	mov	r7,#0x80
                                  10042 ;	calc.c:51: return;
      006419                      10043 00230$:
                                  10044 ;	calc.c:49: for (; *s; s++) putchar(*s);
      006419 8D 82            [24]10045 	mov	dpl,r5
      00641B 8E 83            [24]10046 	mov	dph,r6
      00641D 8F F0            [24]10047 	mov	b,r7
      00641F 12 70 79         [24]10048 	lcall	__gptrget
      006422 FC               [12]10049 	mov	r4,a
      006423 60 10            [24]10050 	jz	00146$
      006425 7B 00            [12]10051 	mov	r3,#0x00
      006427 8C 82            [24]10052 	mov	dpl,r4
      006429 8B 83            [24]10053 	mov	dph,r3
      00642B 12 2C 1F         [24]10054 	lcall	_putchar
      00642E 0D               [12]10055 	inc	r5
                                  10056 ;	calc.c:469: printstr("|\tor top 2\r\n");
      00642F BD 00 E7         [24]10057 	cjne	r5,#0x00,00230$
      006432 0E               [12]10058 	inc	r6
      006433 80 E4            [24]10059 	sjmp	00230$
      006435                      10060 00146$:
                                  10061 ;	calc.c:470: printstr("^\txor top 2\r\n");
      006435 7D 36            [12]10062 	mov	r5,#___str_45
      006437 7E 8C            [12]10063 	mov	r6,#(___str_45 >> 8)
      006439 7F 80            [12]10064 	mov	r7,#0x80
                                  10065 ;	calc.c:51: return;
      00643B                      10066 00233$:
                                  10067 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00643B 8D 82            [24]10068 	mov	dpl,r5
      00643D 8E 83            [24]10069 	mov	dph,r6
      00643F 8F F0            [24]10070 	mov	b,r7
      006441 12 70 79         [24]10071 	lcall	__gptrget
      006444 FC               [12]10072 	mov	r4,a
      006445 60 10            [24]10073 	jz	00148$
      006447 7B 00            [12]10074 	mov	r3,#0x00
      006449 8C 82            [24]10075 	mov	dpl,r4
      00644B 8B 83            [24]10076 	mov	dph,r3
      00644D 12 2C 1F         [24]10077 	lcall	_putchar
      006450 0D               [12]10078 	inc	r5
                                  10079 ;	calc.c:470: printstr("^\txor top 2\r\n");
      006451 BD 00 E7         [24]10080 	cjne	r5,#0x00,00233$
      006454 0E               [12]10081 	inc	r6
      006455 80 E4            [24]10082 	sjmp	00233$
      006457                      10083 00148$:
                                  10084 ;	calc.c:471: printstr(">\tshift right top 2\r\n");
      006457 7D 44            [12]10085 	mov	r5,#___str_46
      006459 7E 8C            [12]10086 	mov	r6,#(___str_46 >> 8)
      00645B 7F 80            [12]10087 	mov	r7,#0x80
                                  10088 ;	calc.c:51: return;
      00645D                      10089 00236$:
                                  10090 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00645D 8D 82            [24]10091 	mov	dpl,r5
      00645F 8E 83            [24]10092 	mov	dph,r6
      006461 8F F0            [24]10093 	mov	b,r7
      006463 12 70 79         [24]10094 	lcall	__gptrget
      006466 FC               [12]10095 	mov	r4,a
      006467 60 10            [24]10096 	jz	00150$
      006469 7B 00            [12]10097 	mov	r3,#0x00
      00646B 8C 82            [24]10098 	mov	dpl,r4
      00646D 8B 83            [24]10099 	mov	dph,r3
      00646F 12 2C 1F         [24]10100 	lcall	_putchar
      006472 0D               [12]10101 	inc	r5
                                  10102 ;	calc.c:471: printstr(">\tshift right top 2\r\n");
      006473 BD 00 E7         [24]10103 	cjne	r5,#0x00,00236$
      006476 0E               [12]10104 	inc	r6
      006477 80 E4            [24]10105 	sjmp	00236$
      006479                      10106 00150$:
                                  10107 ;	calc.c:472: printstr("]\tarithmetic shift right top 2\r\n");
      006479 7D 5A            [12]10108 	mov	r5,#___str_47
      00647B 7E 8C            [12]10109 	mov	r6,#(___str_47 >> 8)
      00647D 7F 80            [12]10110 	mov	r7,#0x80
                                  10111 ;	calc.c:51: return;
      00647F                      10112 00239$:
                                  10113 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00647F 8D 82            [24]10114 	mov	dpl,r5
      006481 8E 83            [24]10115 	mov	dph,r6
      006483 8F F0            [24]10116 	mov	b,r7
      006485 12 70 79         [24]10117 	lcall	__gptrget
      006488 FC               [12]10118 	mov	r4,a
      006489 60 10            [24]10119 	jz	00152$
      00648B 7B 00            [12]10120 	mov	r3,#0x00
      00648D 8C 82            [24]10121 	mov	dpl,r4
      00648F 8B 83            [24]10122 	mov	dph,r3
      006491 12 2C 1F         [24]10123 	lcall	_putchar
      006494 0D               [12]10124 	inc	r5
                                  10125 ;	calc.c:472: printstr("]\tarithmetic shift right top 2\r\n");
      006495 BD 00 E7         [24]10126 	cjne	r5,#0x00,00239$
      006498 0E               [12]10127 	inc	r6
      006499 80 E4            [24]10128 	sjmp	00239$
      00649B                      10129 00152$:
                                  10130 ;	calc.c:473: printstr("<\tshift left top 2\r\n");
      00649B 7D 7B            [12]10131 	mov	r5,#___str_48
      00649D 7E 8C            [12]10132 	mov	r6,#(___str_48 >> 8)
      00649F 7F 80            [12]10133 	mov	r7,#0x80
                                  10134 ;	calc.c:51: return;
      0064A1                      10135 00242$:
                                  10136 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0064A1 8D 82            [24]10137 	mov	dpl,r5
      0064A3 8E 83            [24]10138 	mov	dph,r6
      0064A5 8F F0            [24]10139 	mov	b,r7
      0064A7 12 70 79         [24]10140 	lcall	__gptrget
      0064AA FC               [12]10141 	mov	r4,a
      0064AB 60 10            [24]10142 	jz	00154$
      0064AD 7B 00            [12]10143 	mov	r3,#0x00
      0064AF 8C 82            [24]10144 	mov	dpl,r4
      0064B1 8B 83            [24]10145 	mov	dph,r3
      0064B3 12 2C 1F         [24]10146 	lcall	_putchar
      0064B6 0D               [12]10147 	inc	r5
                                  10148 ;	calc.c:473: printstr("<\tshift left top 2\r\n");
      0064B7 BD 00 E7         [24]10149 	cjne	r5,#0x00,00242$
      0064BA 0E               [12]10150 	inc	r6
      0064BB 80 E4            [24]10151 	sjmp	00242$
      0064BD                      10152 00154$:
                                  10153 ;	calc.c:474: printstr("~\tbitwise not top\r\n");
      0064BD 7D 90            [12]10154 	mov	r5,#___str_49
      0064BF 7E 8C            [12]10155 	mov	r6,#(___str_49 >> 8)
      0064C1 7F 80            [12]10156 	mov	r7,#0x80
                                  10157 ;	calc.c:51: return;
      0064C3                      10158 00245$:
                                  10159 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0064C3 8D 82            [24]10160 	mov	dpl,r5
      0064C5 8E 83            [24]10161 	mov	dph,r6
      0064C7 8F F0            [24]10162 	mov	b,r7
      0064C9 12 70 79         [24]10163 	lcall	__gptrget
      0064CC FC               [12]10164 	mov	r4,a
      0064CD 60 10            [24]10165 	jz	00156$
      0064CF 7B 00            [12]10166 	mov	r3,#0x00
      0064D1 8C 82            [24]10167 	mov	dpl,r4
      0064D3 8B 83            [24]10168 	mov	dph,r3
      0064D5 12 2C 1F         [24]10169 	lcall	_putchar
      0064D8 0D               [12]10170 	inc	r5
                                  10171 ;	calc.c:474: printstr("~\tbitwise not top\r\n");
      0064D9 BD 00 E7         [24]10172 	cjne	r5,#0x00,00245$
      0064DC 0E               [12]10173 	inc	r6
      0064DD 80 E4            [24]10174 	sjmp	00245$
      0064DF                      10175 00156$:
                                  10176 ;	calc.c:475: printstr("s\tstatus\r\n");
      0064DF 7D A4            [12]10177 	mov	r5,#___str_50
      0064E1 7E 8C            [12]10178 	mov	r6,#(___str_50 >> 8)
      0064E3 7F 80            [12]10179 	mov	r7,#0x80
                                  10180 ;	calc.c:51: return;
      0064E5                      10181 00248$:
                                  10182 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0064E5 8D 82            [24]10183 	mov	dpl,r5
      0064E7 8E 83            [24]10184 	mov	dph,r6
      0064E9 8F F0            [24]10185 	mov	b,r7
      0064EB 12 70 79         [24]10186 	lcall	__gptrget
      0064EE FC               [12]10187 	mov	r4,a
      0064EF 60 10            [24]10188 	jz	00158$
      0064F1 7B 00            [12]10189 	mov	r3,#0x00
      0064F3 8C 82            [24]10190 	mov	dpl,r4
      0064F5 8B 83            [24]10191 	mov	dph,r3
      0064F7 12 2C 1F         [24]10192 	lcall	_putchar
      0064FA 0D               [12]10193 	inc	r5
                                  10194 ;	calc.c:475: printstr("s\tstatus\r\n");
      0064FB BD 00 E7         [24]10195 	cjne	r5,#0x00,00248$
      0064FE 0E               [12]10196 	inc	r6
      0064FF 80 E4            [24]10197 	sjmp	00248$
      006501                      10198 00158$:
                                  10199 ;	calc.c:476: printstr("?\thelp\r\n");
      006501 7D AF            [12]10200 	mov	r5,#___str_51
      006503 7E 8C            [12]10201 	mov	r6,#(___str_51 >> 8)
      006505 7F 80            [12]10202 	mov	r7,#0x80
                                  10203 ;	calc.c:51: return;
      006507                      10204 00251$:
                                  10205 ;	calc.c:49: for (; *s; s++) putchar(*s);
      006507 8D 82            [24]10206 	mov	dpl,r5
      006509 8E 83            [24]10207 	mov	dph,r6
      00650B 8F F0            [24]10208 	mov	b,r7
      00650D 12 70 79         [24]10209 	lcall	__gptrget
      006510 FC               [12]10210 	mov	r4,a
      006511 60 10            [24]10211 	jz	00160$
      006513 7B 00            [12]10212 	mov	r3,#0x00
      006515 8C 82            [24]10213 	mov	dpl,r4
      006517 8B 83            [24]10214 	mov	dph,r3
      006519 12 2C 1F         [24]10215 	lcall	_putchar
      00651C 0D               [12]10216 	inc	r5
                                  10217 ;	calc.c:476: printstr("?\thelp\r\n");
      00651D BD 00 E7         [24]10218 	cjne	r5,#0x00,00251$
      006520 0E               [12]10219 	inc	r6
      006521 80 E4            [24]10220 	sjmp	00251$
      006523                      10221 00160$:
                                  10222 ;	calc.c:477: printstr("q\tquit\r\n");
      006523 7D B8            [12]10223 	mov	r5,#___str_52
      006525 7E 8C            [12]10224 	mov	r6,#(___str_52 >> 8)
      006527 7F 80            [12]10225 	mov	r7,#0x80
                                  10226 ;	calc.c:51: return;
      006529                      10227 00254$:
                                  10228 ;	calc.c:49: for (; *s; s++) putchar(*s);
      006529 8D 82            [24]10229 	mov	dpl,r5
      00652B 8E 83            [24]10230 	mov	dph,r6
      00652D 8F F0            [24]10231 	mov	b,r7
      00652F 12 70 79         [24]10232 	lcall	__gptrget
      006532 FC               [12]10233 	mov	r4,a
      006533 60 10            [24]10234 	jz	00162$
      006535 7B 00            [12]10235 	mov	r3,#0x00
      006537 8C 82            [24]10236 	mov	dpl,r4
      006539 8B 83            [24]10237 	mov	dph,r3
      00653B 12 2C 1F         [24]10238 	lcall	_putchar
      00653E 0D               [12]10239 	inc	r5
                                  10240 ;	calc.c:477: printstr("q\tquit\r\n");
      00653F BD 00 E7         [24]10241 	cjne	r5,#0x00,00254$
      006542 0E               [12]10242 	inc	r6
      006543 80 E4            [24]10243 	sjmp	00254$
      006545                      10244 00162$:
                                  10245 ;	calc.c:479: return 1;
      006545 90 00 01         [24]10246 	mov	dptr,#0x0001
                                  10247 ;	calc.c:480: }
      006548 D0 08            [24]10248 	pop	_bp
      00654A 22               [24]10249 	ret
                                  10250 ;------------------------------------------------------------
                                  10251 ;Allocation info for local variables in function 'main'
                                  10252 ;------------------------------------------------------------
                                  10253 ;input                     Allocated to registers r6 r7 
                                  10254 ;__1966080211              Allocated to registers 
                                  10255 ;s                         Allocated to registers r2 r3 r4 
                                  10256 ;__1310720213              Allocated to registers 
                                  10257 ;s                         Allocated to registers r5 r6 r7 
                                  10258 ;sloc0                     Allocated to stack - _bp +1
                                  10259 ;------------------------------------------------------------
                                  10260 ;	calc.c:510: void main(void) {
                                  10261 ;	-----------------------------------------
                                  10262 ;	 function main
                                  10263 ;	-----------------------------------------
      00654B                      10264 _main:
      00654B C0 08            [24]10265 	push	_bp
      00654D 85 81 08         [24]10266 	mov	_bp,sp
      006550 05 81            [12]10267 	inc	sp
                                  10268 ;	calc.c:513: c.base = 10;
      006552 90 90 0C         [24]10269 	mov	dptr,#_c
      006555 74 0A            [12]10270 	mov	a,#0x0a
      006557 F0               [24]10271 	movx	@dptr,a
      006558 E4               [12]10272 	clr	a
      006559 A3               [24]10273 	inc	dptr
      00655A F0               [24]10274 	movx	@dptr,a
                                  10275 ;	calc.c:514: c.acc = 0l;
      00655B 90 90 0E         [24]10276 	mov	dptr,#(_c + 0x0002)
      00655E F0               [24]10277 	movx	@dptr,a
      00655F A3               [24]10278 	inc	dptr
      006560 F0               [24]10279 	movx	@dptr,a
      006561 A3               [24]10280 	inc	dptr
      006562 F0               [24]10281 	movx	@dptr,a
      006563 A3               [24]10282 	inc	dptr
      006564 F0               [24]10283 	movx	@dptr,a
                                  10284 ;	calc.c:515: c.acc_valid = (char)0;
      006565 90 90 12         [24]10285 	mov	dptr,#(_c + 0x0006)
      006568 F0               [24]10286 	movx	@dptr,a
                                  10287 ;	calc.c:516: c.digit[0] = c.digit[1] = '\0';
      006569 90 90 14         [24]10288 	mov	dptr,#(_c + 0x0008)
      00656C F0               [24]10289 	movx	@dptr,a
      00656D 90 90 13         [24]10290 	mov	dptr,#(_c + 0x0007)
      006570 F0               [24]10291 	movx	@dptr,a
                                  10292 ;	calc.c:518: c.ps = &c.s0;
      006571 90 D0 1F         [24]10293 	mov	dptr,#(_c + 0x4013)
      006574 74 15            [12]10294 	mov	a,#(_c + 0x0009)
      006576 F0               [24]10295 	movx	@dptr,a
      006577 74 90            [12]10296 	mov	a,#((_c + 0x0009) >> 8)
      006579 A3               [24]10297 	inc	dptr
      00657A F0               [24]10298 	movx	@dptr,a
      00657B E4               [12]10299 	clr	a
      00657C A3               [24]10300 	inc	dptr
      00657D F0               [24]10301 	movx	@dptr,a
                                  10302 ;	calc.c:519: c.ss = &c.s1;
      00657E 90 D0 22         [24]10303 	mov	dptr,#(_c + 0x4016)
      006581 74 1A            [12]10304 	mov	a,#(_c + 0x200e)
      006583 F0               [24]10305 	movx	@dptr,a
      006584 74 B0            [12]10306 	mov	a,#((_c + 0x200e) >> 8)
      006586 A3               [24]10307 	inc	dptr
      006587 F0               [24]10308 	movx	@dptr,a
      006588 E4               [12]10309 	clr	a
      006589 A3               [24]10310 	inc	dptr
      00658A F0               [24]10311 	movx	@dptr,a
                                  10312 ;	calc.c:520: stack_init(c.ps);
      00658B 90 90 15         [24]10313 	mov	dptr,#(_c + 0x0009)
      00658E 75 F0 00         [24]10314 	mov	b,#0x00
      006591 12 26 80         [24]10315 	lcall	_stack_init
                                  10316 ;	calc.c:521: stack_init(c.ss);
      006594 90 D0 22         [24]10317 	mov	dptr,#(_c + 0x4016)
      006597 E0               [24]10318 	movx	a,@dptr
      006598 FD               [12]10319 	mov	r5,a
      006599 A3               [24]10320 	inc	dptr
      00659A E0               [24]10321 	movx	a,@dptr
      00659B FE               [12]10322 	mov	r6,a
      00659C A3               [24]10323 	inc	dptr
      00659D E0               [24]10324 	movx	a,@dptr
      00659E FF               [12]10325 	mov	r7,a
      00659F 8D 82            [24]10326 	mov	dpl,r5
      0065A1 8E 83            [24]10327 	mov	dph,r6
      0065A3 8F F0            [24]10328 	mov	b,r7
      0065A5 12 26 80         [24]10329 	lcall	_stack_init
                                  10330 ;	calc.c:523: state_init(&s, STATE_START, STATE_FINAL, UNDEF, deltas, &c);
      0065A8 74 0C            [12]10331 	mov	a,#_c
      0065AA C0 E0            [24]10332 	push	acc
      0065AC 74 90            [12]10333 	mov	a,#(_c >> 8)
      0065AE C0 E0            [24]10334 	push	acc
      0065B0 E4               [12]10335 	clr	a
      0065B1 C0 E0            [24]10336 	push	acc
      0065B3 74 27            [12]10337 	mov	a,#_deltas
      0065B5 C0 E0            [24]10338 	push	acc
      0065B7 74 D0            [12]10339 	mov	a,#(_deltas >> 8)
      0065B9 C0 E0            [24]10340 	push	acc
      0065BB E4               [12]10341 	clr	a
      0065BC C0 E0            [24]10342 	push	acc
      0065BE C0 E0            [24]10343 	push	acc
      0065C0 74 80            [12]10344 	mov	a,#0x80
      0065C2 C0 E0            [24]10345 	push	acc
      0065C4 74 03            [12]10346 	mov	a,#0x03
      0065C6 C0 E0            [24]10347 	push	acc
      0065C8 E4               [12]10348 	clr	a
      0065C9 C0 E0            [24]10349 	push	acc
      0065CB C0 E0            [24]10350 	push	acc
      0065CD C0 E0            [24]10351 	push	acc
      0065CF 90 90 00         [24]10352 	mov	dptr,#_s
      0065D2 75 F0 00         [24]10353 	mov	b,#0x00
      0065D5 12 20 90         [24]10354 	lcall	_state_init
      0065D8 E5 81            [12]10355 	mov	a,sp
      0065DA 24 F4            [12]10356 	add	a,#0xf4
      0065DC F5 81            [12]10357 	mov	sp,a
                                  10358 ;	calc.c:525: (void)status(&c, deltas);
      0065DE 74 27            [12]10359 	mov	a,#_deltas
      0065E0 C0 E0            [24]10360 	push	acc
      0065E2 74 D0            [12]10361 	mov	a,#(_deltas >> 8)
      0065E4 C0 E0            [24]10362 	push	acc
      0065E6 E4               [12]10363 	clr	a
      0065E7 C0 E0            [24]10364 	push	acc
      0065E9 90 90 0C         [24]10365 	mov	dptr,#_c
      0065EC 75 F0 00         [24]10366 	mov	b,#0x00
      0065EF 12 58 79         [24]10367 	lcall	_status
      0065F2 15 81            [12]10368 	dec	sp
      0065F4 15 81            [12]10369 	dec	sp
      0065F6 15 81            [12]10370 	dec	sp
                                  10371 ;	calc.c:527: while (1) {
      0065F8                      10372 00192$:
                                  10373 ;	calc.c:528: input = getchar();
      0065F8 12 2C 24         [24]10374 	lcall	_getchar
      0065FB AE 82            [24]10375 	mov	r6,dpl
      0065FD AF 83            [24]10376 	mov	r7,dph
                                  10377 ;	calc.c:529: if (((char)input == '\r') || ((char)input == '\n')) printstr("\r\n");
      0065FF 8E 05            [24]10378 	mov	ar5,r6
      006601 BD 0D 02         [24]10379 	cjne	r5,#0x0d,00400$
      006604 80 03            [24]10380 	sjmp	00101$
      006606                      10381 00400$:
      006606 BD 0A 36         [24]10382 	cjne	r5,#0x0a,00102$
      006609                      10383 00101$:
      006609 7A 2A            [12]10384 	mov	r2,#___str_5
      00660B 7B 89            [12]10385 	mov	r3,#(___str_5 >> 8)
      00660D 7C 80            [12]10386 	mov	r4,#0x80
                                  10387 ;	calc.c:51: return;
      00660F                      10388 00199$:
                                  10389 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00660F 8A 82            [24]10390 	mov	dpl,r2
      006611 8B 83            [24]10391 	mov	dph,r3
      006613 8C F0            [24]10392 	mov	b,r4
      006615 A8 08            [24]10393 	mov	r0,_bp
      006617 08               [12]10394 	inc	r0
      006618 12 70 79         [24]10395 	lcall	__gptrget
      00661B F6               [12]10396 	mov	@r0,a
      00661C A8 08            [24]10397 	mov	r0,_bp
      00661E 08               [12]10398 	inc	r0
      00661F E6               [12]10399 	mov	a,@r0
      006620 60 24            [24]10400 	jz	00103$
      006622 C0 06            [24]10401 	push	ar6
      006624 C0 07            [24]10402 	push	ar7
      006626 A8 08            [24]10403 	mov	r0,_bp
      006628 08               [12]10404 	inc	r0
      006629 86 06            [24]10405 	mov	ar6,@r0
      00662B 7F 00            [12]10406 	mov	r7,#0x00
      00662D 8E 82            [24]10407 	mov	dpl,r6
      00662F 8F 83            [24]10408 	mov	dph,r7
      006631 12 2C 1F         [24]10409 	lcall	_putchar
      006634 0A               [12]10410 	inc	r2
      006635 BA 00 01         [24]10411 	cjne	r2,#0x00,00404$
      006638 0B               [12]10412 	inc	r3
      006639                      10413 00404$:
      006639 D0 07            [24]10414 	pop	ar7
      00663B D0 06            [24]10415 	pop	ar6
                                  10416 ;	calc.c:529: if (((char)input == '\r') || ((char)input == '\n')) printstr("\r\n");
      00663D 80 D0            [24]10417 	sjmp	00199$
      00663F                      10418 00102$:
                                  10419 ;	calc.c:530: else (void)putchar(input);
      00663F 8E 82            [24]10420 	mov	dpl,r6
      006641 8F 83            [24]10421 	mov	dph,r7
      006643 12 2C 1F         [24]10422 	lcall	_putchar
      006646                      10423 00103$:
                                  10424 ;	calc.c:531: c.digit[0] = (char)input;
      006646 90 90 13         [24]10425 	mov	dptr,#(_c + 0x0007)
      006649 ED               [12]10426 	mov	a,r5
      00664A F0               [24]10427 	movx	@dptr,a
                                  10428 ;	calc.c:533: if ((char)input == 'q') {
      00664B BD 71 29         [24]10429 	cjne	r5,#0x71,00189$
                                  10430 ;	calc.c:534: if (state_exec(&s, EVENT_TERM) <= 0) break;
      00664E 74 08            [12]10431 	mov	a,#0x08
      006650 C0 E0            [24]10432 	push	acc
      006652 E4               [12]10433 	clr	a
      006653 C0 E0            [24]10434 	push	acc
      006655 90 90 00         [24]10435 	mov	dptr,#_s
      006658 75 F0 00         [24]10436 	mov	b,#0x00
      00665B 12 21 46         [24]10437 	lcall	_state_exec
      00665E AB 82            [24]10438 	mov	r3,dpl
      006660 AC 83            [24]10439 	mov	r4,dph
      006662 15 81            [12]10440 	dec	sp
      006664 15 81            [12]10441 	dec	sp
      006666 C3               [12]10442 	clr	c
      006667 E4               [12]10443 	clr	a
      006668 9B               [12]10444 	subb	a,r3
      006669 74 80            [12]10445 	mov	a,#(0x00 ^ 0x80)
      00666B 8C F0            [24]10446 	mov	b,r4
      00666D 63 F0 80         [24]10447 	xrl	b,#0x80
      006670 95 F0            [12]10448 	subb	a,b
      006672 40 84            [24]10449 	jc	00192$
      006674 02 69 26         [24]10450 	ljmp	00193$
      006677                      10451 00189$:
                                  10452 ;	calc.c:535: } else if ((char)input == 's') {
      006677 BD 73 2C         [24]10453 	cjne	r5,#0x73,00186$
                                  10454 ;	calc.c:536: if (state_exec(&s, EVENT_STATUS) <= 0) break;
      00667A 74 03            [12]10455 	mov	a,#0x03
      00667C C0 E0            [24]10456 	push	acc
      00667E E4               [12]10457 	clr	a
      00667F C0 E0            [24]10458 	push	acc
      006681 90 90 00         [24]10459 	mov	dptr,#_s
      006684 75 F0 00         [24]10460 	mov	b,#0x00
      006687 12 21 46         [24]10461 	lcall	_state_exec
      00668A AB 82            [24]10462 	mov	r3,dpl
      00668C AC 83            [24]10463 	mov	r4,dph
      00668E 15 81            [12]10464 	dec	sp
      006690 15 81            [12]10465 	dec	sp
      006692 C3               [12]10466 	clr	c
      006693 E4               [12]10467 	clr	a
      006694 9B               [12]10468 	subb	a,r3
      006695 74 80            [12]10469 	mov	a,#(0x00 ^ 0x80)
      006697 8C F0            [24]10470 	mov	b,r4
      006699 63 F0 80         [24]10471 	xrl	b,#0x80
      00669C 95 F0            [12]10472 	subb	a,b
      00669E 50 03            [24]10473 	jnc	00410$
      0066A0 02 65 F8         [24]10474 	ljmp	00192$
      0066A3                      10475 00410$:
      0066A3 02 69 26         [24]10476 	ljmp	00193$
      0066A6                      10477 00186$:
                                  10478 ;	calc.c:537: } else if ((char)input == '?') {
      0066A6 BD 3F 2C         [24]10479 	cjne	r5,#0x3f,00183$
                                  10480 ;	calc.c:538: if (state_exec(&s, EVENT_HELP) <= 0) break;
      0066A9 74 04            [12]10481 	mov	a,#0x04
      0066AB C0 E0            [24]10482 	push	acc
      0066AD E4               [12]10483 	clr	a
      0066AE C0 E0            [24]10484 	push	acc
      0066B0 90 90 00         [24]10485 	mov	dptr,#_s
      0066B3 75 F0 00         [24]10486 	mov	b,#0x00
      0066B6 12 21 46         [24]10487 	lcall	_state_exec
      0066B9 AB 82            [24]10488 	mov	r3,dpl
      0066BB AC 83            [24]10489 	mov	r4,dph
      0066BD 15 81            [12]10490 	dec	sp
      0066BF 15 81            [12]10491 	dec	sp
      0066C1 C3               [12]10492 	clr	c
      0066C2 E4               [12]10493 	clr	a
      0066C3 9B               [12]10494 	subb	a,r3
      0066C4 74 80            [12]10495 	mov	a,#(0x00 ^ 0x80)
      0066C6 8C F0            [24]10496 	mov	b,r4
      0066C8 63 F0 80         [24]10497 	xrl	b,#0x80
      0066CB 95 F0            [12]10498 	subb	a,b
      0066CD 50 03            [24]10499 	jnc	00413$
      0066CF 02 65 F8         [24]10500 	ljmp	00192$
      0066D2                      10501 00413$:
      0066D2 02 69 26         [24]10502 	ljmp	00193$
      0066D5                      10503 00183$:
                                  10504 ;	calc.c:539: } else if ((char)input == 'i') {
      0066D5 BD 69 2C         [24]10505 	cjne	r5,#0x69,00180$
                                  10506 ;	calc.c:540: if (state_exec(&s, EVENT_RSTA_i) <= 0) break;
      0066D8 74 06            [12]10507 	mov	a,#0x06
      0066DA C0 E0            [24]10508 	push	acc
      0066DC E4               [12]10509 	clr	a
      0066DD C0 E0            [24]10510 	push	acc
      0066DF 90 90 00         [24]10511 	mov	dptr,#_s
      0066E2 75 F0 00         [24]10512 	mov	b,#0x00
      0066E5 12 21 46         [24]10513 	lcall	_state_exec
      0066E8 AB 82            [24]10514 	mov	r3,dpl
      0066EA AC 83            [24]10515 	mov	r4,dph
      0066EC 15 81            [12]10516 	dec	sp
      0066EE 15 81            [12]10517 	dec	sp
      0066F0 C3               [12]10518 	clr	c
      0066F1 E4               [12]10519 	clr	a
      0066F2 9B               [12]10520 	subb	a,r3
      0066F3 74 80            [12]10521 	mov	a,#(0x00 ^ 0x80)
      0066F5 8C F0            [24]10522 	mov	b,r4
      0066F7 63 F0 80         [24]10523 	xrl	b,#0x80
      0066FA 95 F0            [12]10524 	subb	a,b
      0066FC 50 03            [24]10525 	jnc	00416$
      0066FE 02 65 F8         [24]10526 	ljmp	00192$
      006701                      10527 00416$:
      006701 02 69 26         [24]10528 	ljmp	00193$
      006704                      10529 00180$:
                                  10530 ;	calc.c:541: } else if ((char)input == 'I') {
      006704 BD 49 2C         [24]10531 	cjne	r5,#0x49,00177$
                                  10532 ;	calc.c:542: if (state_exec(&s, EVENT_RSTA_I) <= 0) break;
      006707 74 07            [12]10533 	mov	a,#0x07
      006709 C0 E0            [24]10534 	push	acc
      00670B E4               [12]10535 	clr	a
      00670C C0 E0            [24]10536 	push	acc
      00670E 90 90 00         [24]10537 	mov	dptr,#_s
      006711 75 F0 00         [24]10538 	mov	b,#0x00
      006714 12 21 46         [24]10539 	lcall	_state_exec
      006717 AB 82            [24]10540 	mov	r3,dpl
      006719 AC 83            [24]10541 	mov	r4,dph
      00671B 15 81            [12]10542 	dec	sp
      00671D 15 81            [12]10543 	dec	sp
      00671F C3               [12]10544 	clr	c
      006720 E4               [12]10545 	clr	a
      006721 9B               [12]10546 	subb	a,r3
      006722 74 80            [12]10547 	mov	a,#(0x00 ^ 0x80)
      006724 8C F0            [24]10548 	mov	b,r4
      006726 63 F0 80         [24]10549 	xrl	b,#0x80
      006729 95 F0            [12]10550 	subb	a,b
      00672B 50 03            [24]10551 	jnc	00419$
      00672D 02 65 F8         [24]10552 	ljmp	00192$
      006730                      10553 00419$:
      006730 02 69 26         [24]10554 	ljmp	00193$
      006733                      10555 00177$:
                                  10556 ;	calc.c:544: ((char)input == 'h') || ((char)input == 'H') ||
      006733 BD 68 02         [24]10557 	cjne	r5,#0x68,00420$
      006736 80 0D            [24]10558 	sjmp	00170$
      006738                      10559 00420$:
      006738 BD 48 02         [24]10560 	cjne	r5,#0x48,00421$
      00673B 80 08            [24]10561 	sjmp	00170$
      00673D                      10562 00421$:
                                  10563 ;	calc.c:545: ((char)input == 'o') || ((char)input == 'O')
      00673D BD 6F 02         [24]10564 	cjne	r5,#0x6f,00422$
      006740 80 03            [24]10565 	sjmp	00170$
      006742                      10566 00422$:
      006742 BD 4F 2C         [24]10567 	cjne	r5,#0x4f,00171$
      006745                      10568 00170$:
                                  10569 ;	calc.c:547: if (state_exec(&s, EVENT_BASE) <= 0) break;
      006745 74 05            [12]10570 	mov	a,#0x05
      006747 C0 E0            [24]10571 	push	acc
      006749 E4               [12]10572 	clr	a
      00674A C0 E0            [24]10573 	push	acc
      00674C 90 90 00         [24]10574 	mov	dptr,#_s
      00674F 75 F0 00         [24]10575 	mov	b,#0x00
      006752 12 21 46         [24]10576 	lcall	_state_exec
      006755 AB 82            [24]10577 	mov	r3,dpl
      006757 AC 83            [24]10578 	mov	r4,dph
      006759 15 81            [12]10579 	dec	sp
      00675B 15 81            [12]10580 	dec	sp
      00675D C3               [12]10581 	clr	c
      00675E E4               [12]10582 	clr	a
      00675F 9B               [12]10583 	subb	a,r3
      006760 74 80            [12]10584 	mov	a,#(0x00 ^ 0x80)
      006762 8C F0            [24]10585 	mov	b,r4
      006764 63 F0 80         [24]10586 	xrl	b,#0x80
      006767 95 F0            [12]10587 	subb	a,b
      006769 50 03            [24]10588 	jnc	00425$
      00676B 02 65 F8         [24]10589 	ljmp	00192$
      00676E                      10590 00425$:
      00676E 02 69 26         [24]10591 	ljmp	00193$
      006771                      10592 00171$:
                                  10593 ;	calc.c:548: } else if (isxdigit(input)) {
      006771 8E 82            [24]10594 	mov	dpl,r6
      006773 8F 83            [24]10595 	mov	dph,r7
      006775 C0 05            [24]10596 	push	ar5
      006777 12 69 50         [24]10597 	lcall	_isxdigit
      00677A E5 82            [12]10598 	mov	a,dpl
      00677C 85 83 F0         [24]10599 	mov	b,dph
      00677F D0 05            [24]10600 	pop	ar5
      006781 45 F0            [12]10601 	orl	a,b
      006783 60 2C            [24]10602 	jz	00168$
                                  10603 ;	calc.c:549: if (state_exec(&s, EVENT_DIGIT) <= 0) break;
      006785 74 01            [12]10604 	mov	a,#0x01
      006787 C0 E0            [24]10605 	push	acc
      006789 E4               [12]10606 	clr	a
      00678A C0 E0            [24]10607 	push	acc
      00678C 90 90 00         [24]10608 	mov	dptr,#_s
      00678F 75 F0 00         [24]10609 	mov	b,#0x00
      006792 12 21 46         [24]10610 	lcall	_state_exec
      006795 AE 82            [24]10611 	mov	r6,dpl
      006797 AF 83            [24]10612 	mov	r7,dph
      006799 15 81            [12]10613 	dec	sp
      00679B 15 81            [12]10614 	dec	sp
      00679D C3               [12]10615 	clr	c
      00679E E4               [12]10616 	clr	a
      00679F 9E               [12]10617 	subb	a,r6
      0067A0 74 80            [12]10618 	mov	a,#(0x00 ^ 0x80)
      0067A2 8F F0            [24]10619 	mov	b,r7
      0067A4 63 F0 80         [24]10620 	xrl	b,#0x80
      0067A7 95 F0            [12]10621 	subb	a,b
      0067A9 50 03            [24]10622 	jnc	00427$
      0067AB 02 65 F8         [24]10623 	ljmp	00192$
      0067AE                      10624 00427$:
      0067AE 02 69 26         [24]10625 	ljmp	00193$
      0067B1                      10626 00168$:
                                  10627 ;	calc.c:551: ((char)input == 'p') || ((char)input == 'P') ||
      0067B1 BD 70 02         [24]10628 	cjne	r5,#0x70,00428$
      0067B4 80 17            [24]10629 	sjmp	00159$
      0067B6                      10630 00428$:
      0067B6 BD 50 02         [24]10631 	cjne	r5,#0x50,00429$
      0067B9 80 12            [24]10632 	sjmp	00159$
      0067BB                      10633 00429$:
                                  10634 ;	calc.c:552: ((char)input == 'v') || ((char)input == 'V') ||
      0067BB BD 76 02         [24]10635 	cjne	r5,#0x76,00430$
      0067BE 80 0D            [24]10636 	sjmp	00159$
      0067C0                      10637 00430$:
      0067C0 BD 56 02         [24]10638 	cjne	r5,#0x56,00431$
      0067C3 80 08            [24]10639 	sjmp	00159$
      0067C5                      10640 00431$:
                                  10641 ;	calc.c:553: ((char)input == '.') ||
      0067C5 BD 2E 02         [24]10642 	cjne	r5,#0x2e,00432$
      0067C8 80 03            [24]10643 	sjmp	00159$
      0067CA                      10644 00432$:
                                  10645 ;	calc.c:554: ((char)input == 'x')
      0067CA BD 78 2C         [24]10646 	cjne	r5,#0x78,00160$
      0067CD                      10647 00159$:
                                  10648 ;	calc.c:556: if (state_exec(&s, EVENT_OP) <= 0) break;
      0067CD 74 02            [12]10649 	mov	a,#0x02
      0067CF C0 E0            [24]10650 	push	acc
      0067D1 E4               [12]10651 	clr	a
      0067D2 C0 E0            [24]10652 	push	acc
      0067D4 90 90 00         [24]10653 	mov	dptr,#_s
      0067D7 75 F0 00         [24]10654 	mov	b,#0x00
      0067DA 12 21 46         [24]10655 	lcall	_state_exec
      0067DD AE 82            [24]10656 	mov	r6,dpl
      0067DF AF 83            [24]10657 	mov	r7,dph
      0067E1 15 81            [12]10658 	dec	sp
      0067E3 15 81            [12]10659 	dec	sp
      0067E5 C3               [12]10660 	clr	c
      0067E6 E4               [12]10661 	clr	a
      0067E7 9E               [12]10662 	subb	a,r6
      0067E8 74 80            [12]10663 	mov	a,#(0x00 ^ 0x80)
      0067EA 8F F0            [24]10664 	mov	b,r7
      0067EC 63 F0 80         [24]10665 	xrl	b,#0x80
      0067EF 95 F0            [12]10666 	subb	a,b
      0067F1 50 03            [24]10667 	jnc	00435$
      0067F3 02 65 F8         [24]10668 	ljmp	00192$
      0067F6                      10669 00435$:
      0067F6 02 69 26         [24]10670 	ljmp	00193$
      0067F9                      10671 00160$:
                                  10672 ;	calc.c:558: ((char)input == 'X') || ((char)input == 'T') ||
      0067F9 BD 58 02         [24]10673 	cjne	r5,#0x58,00436$
      0067FC 80 17            [24]10674 	sjmp	00151$
      0067FE                      10675 00436$:
      0067FE BD 54 02         [24]10676 	cjne	r5,#0x54,00437$
      006801 80 12            [24]10677 	sjmp	00151$
      006803                      10678 00437$:
                                  10679 ;	calc.c:559: ((char)input == 'm') || ((char)input == 'M') ||
      006803 BD 6D 02         [24]10680 	cjne	r5,#0x6d,00438$
      006806 80 0D            [24]10681 	sjmp	00151$
      006808                      10682 00438$:
      006808 BD 4D 02         [24]10683 	cjne	r5,#0x4d,00439$
      00680B 80 08            [24]10684 	sjmp	00151$
      00680D                      10685 00439$:
                                  10686 ;	calc.c:560: ((char)input == 'u') || ((char)input == 'U')
      00680D BD 75 02         [24]10687 	cjne	r5,#0x75,00440$
      006810 80 03            [24]10688 	sjmp	00151$
      006812                      10689 00440$:
      006812 BD 55 2C         [24]10690 	cjne	r5,#0x55,00152$
      006815                      10691 00151$:
                                  10692 ;	calc.c:562: if (state_exec(&s, EVENT_OP) <= 0) break;
      006815 74 02            [12]10693 	mov	a,#0x02
      006817 C0 E0            [24]10694 	push	acc
      006819 E4               [12]10695 	clr	a
      00681A C0 E0            [24]10696 	push	acc
      00681C 90 90 00         [24]10697 	mov	dptr,#_s
      00681F 75 F0 00         [24]10698 	mov	b,#0x00
      006822 12 21 46         [24]10699 	lcall	_state_exec
      006825 AE 82            [24]10700 	mov	r6,dpl
      006827 AF 83            [24]10701 	mov	r7,dph
      006829 15 81            [12]10702 	dec	sp
      00682B 15 81            [12]10703 	dec	sp
      00682D C3               [12]10704 	clr	c
      00682E E4               [12]10705 	clr	a
      00682F 9E               [12]10706 	subb	a,r6
      006830 74 80            [12]10707 	mov	a,#(0x00 ^ 0x80)
      006832 8F F0            [24]10708 	mov	b,r7
      006834 63 F0 80         [24]10709 	xrl	b,#0x80
      006837 95 F0            [12]10710 	subb	a,b
      006839 50 03            [24]10711 	jnc	00443$
      00683B 02 65 F8         [24]10712 	ljmp	00192$
      00683E                      10713 00443$:
      00683E 02 69 26         [24]10714 	ljmp	00193$
      006841                      10715 00152$:
                                  10716 ;	calc.c:564: ((char)input == '+') || ((char)input == '-')
      006841 BD 2B 02         [24]10717 	cjne	r5,#0x2b,00444$
      006844 80 03            [24]10718 	sjmp	00147$
      006846                      10719 00444$:
      006846 BD 2D 2C         [24]10720 	cjne	r5,#0x2d,00148$
      006849                      10721 00147$:
                                  10722 ;	calc.c:566: if (state_exec(&s, EVENT_OP) <= 0) break;
      006849 74 02            [12]10723 	mov	a,#0x02
      00684B C0 E0            [24]10724 	push	acc
      00684D E4               [12]10725 	clr	a
      00684E C0 E0            [24]10726 	push	acc
      006850 90 90 00         [24]10727 	mov	dptr,#_s
      006853 75 F0 00         [24]10728 	mov	b,#0x00
      006856 12 21 46         [24]10729 	lcall	_state_exec
      006859 AE 82            [24]10730 	mov	r6,dpl
      00685B AF 83            [24]10731 	mov	r7,dph
      00685D 15 81            [12]10732 	dec	sp
      00685F 15 81            [12]10733 	dec	sp
      006861 C3               [12]10734 	clr	c
      006862 E4               [12]10735 	clr	a
      006863 9E               [12]10736 	subb	a,r6
      006864 74 80            [12]10737 	mov	a,#(0x00 ^ 0x80)
      006866 8F F0            [24]10738 	mov	b,r7
      006868 63 F0 80         [24]10739 	xrl	b,#0x80
      00686B 95 F0            [12]10740 	subb	a,b
      00686D 50 03            [24]10741 	jnc	00447$
      00686F 02 65 F8         [24]10742 	ljmp	00192$
      006872                      10743 00447$:
      006872 02 69 26         [24]10744 	ljmp	00193$
      006875                      10745 00148$:
                                  10746 ;	calc.c:568: ((char)input == '*') ||
      006875 BD 2A 02         [24]10747 	cjne	r5,#0x2a,00448$
      006878 80 12            [24]10748 	sjmp	00140$
      00687A                      10749 00448$:
                                  10750 ;	calc.c:569: ((char)input == '/') || ((char)input == '\\') ||
      00687A BD 2F 02         [24]10751 	cjne	r5,#0x2f,00449$
      00687D 80 0D            [24]10752 	sjmp	00140$
      00687F                      10753 00449$:
      00687F BD 5C 02         [24]10754 	cjne	r5,#0x5c,00450$
      006882 80 08            [24]10755 	sjmp	00140$
      006884                      10756 00450$:
                                  10757 ;	calc.c:570: ((char)input == '%') || ((char)input == '#')
      006884 BD 25 02         [24]10758 	cjne	r5,#0x25,00451$
      006887 80 03            [24]10759 	sjmp	00140$
      006889                      10760 00451$:
      006889 BD 23 29         [24]10761 	cjne	r5,#0x23,00141$
      00688C                      10762 00140$:
                                  10763 ;	calc.c:572: if (state_exec(&s, EVENT_OP) <= 0) break;
      00688C 74 02            [12]10764 	mov	a,#0x02
      00688E C0 E0            [24]10765 	push	acc
      006890 E4               [12]10766 	clr	a
      006891 C0 E0            [24]10767 	push	acc
      006893 90 90 00         [24]10768 	mov	dptr,#_s
      006896 75 F0 00         [24]10769 	mov	b,#0x00
      006899 12 21 46         [24]10770 	lcall	_state_exec
      00689C AE 82            [24]10771 	mov	r6,dpl
      00689E AF 83            [24]10772 	mov	r7,dph
      0068A0 15 81            [12]10773 	dec	sp
      0068A2 15 81            [12]10774 	dec	sp
      0068A4 C3               [12]10775 	clr	c
      0068A5 E4               [12]10776 	clr	a
      0068A6 9E               [12]10777 	subb	a,r6
      0068A7 74 80            [12]10778 	mov	a,#(0x00 ^ 0x80)
      0068A9 8F F0            [24]10779 	mov	b,r7
      0068AB 63 F0 80         [24]10780 	xrl	b,#0x80
      0068AE 95 F0            [12]10781 	subb	a,b
      0068B0 50 74            [24]10782 	jnc	00193$
      0068B2 02 65 F8         [24]10783 	ljmp	00192$
      0068B5                      10784 00141$:
                                  10785 ;	calc.c:574: ((char)input == '&') ||
      0068B5 BD 26 02         [24]10786 	cjne	r5,#0x26,00455$
      0068B8 80 1C            [24]10787 	sjmp	00131$
      0068BA                      10788 00455$:
                                  10789 ;	calc.c:575: ((char)input == '|') || ((char)input == '^') ||
      0068BA BD 7C 02         [24]10790 	cjne	r5,#0x7c,00456$
      0068BD 80 17            [24]10791 	sjmp	00131$
      0068BF                      10792 00456$:
      0068BF BD 5E 02         [24]10793 	cjne	r5,#0x5e,00457$
      0068C2 80 12            [24]10794 	sjmp	00131$
      0068C4                      10795 00457$:
                                  10796 ;	calc.c:576: ((char)input == '~') ||
      0068C4 BD 7E 02         [24]10797 	cjne	r5,#0x7e,00458$
      0068C7 80 0D            [24]10798 	sjmp	00131$
      0068C9                      10799 00458$:
                                  10800 ;	calc.c:577: ((char)input == '>') || ((char)input == ']') ||
      0068C9 BD 3E 02         [24]10801 	cjne	r5,#0x3e,00459$
      0068CC 80 08            [24]10802 	sjmp	00131$
      0068CE                      10803 00459$:
      0068CE BD 5D 02         [24]10804 	cjne	r5,#0x5d,00460$
      0068D1 80 03            [24]10805 	sjmp	00131$
      0068D3                      10806 00460$:
                                  10807 ;	calc.c:578: ((char)input == '<')
      0068D3 BD 3C 29         [24]10808 	cjne	r5,#0x3c,00132$
      0068D6                      10809 00131$:
                                  10810 ;	calc.c:580: if (state_exec(&s, EVENT_OP) <= 0) break;
      0068D6 74 02            [12]10811 	mov	a,#0x02
      0068D8 C0 E0            [24]10812 	push	acc
      0068DA E4               [12]10813 	clr	a
      0068DB C0 E0            [24]10814 	push	acc
      0068DD 90 90 00         [24]10815 	mov	dptr,#_s
      0068E0 75 F0 00         [24]10816 	mov	b,#0x00
      0068E3 12 21 46         [24]10817 	lcall	_state_exec
      0068E6 AE 82            [24]10818 	mov	r6,dpl
      0068E8 AF 83            [24]10819 	mov	r7,dph
      0068EA 15 81            [12]10820 	dec	sp
      0068EC 15 81            [12]10821 	dec	sp
      0068EE C3               [12]10822 	clr	c
      0068EF E4               [12]10823 	clr	a
      0068F0 9E               [12]10824 	subb	a,r6
      0068F1 74 80            [12]10825 	mov	a,#(0x00 ^ 0x80)
      0068F3 8F F0            [24]10826 	mov	b,r7
      0068F5 63 F0 80         [24]10827 	xrl	b,#0x80
      0068F8 95 F0            [12]10828 	subb	a,b
      0068FA 50 2A            [24]10829 	jnc	00193$
      0068FC 02 65 F8         [24]10830 	ljmp	00192$
      0068FF                      10831 00132$:
                                  10832 ;	calc.c:582: if (state_exec(&s, EVENT_DELIM) <= 0) break;
      0068FF E4               [12]10833 	clr	a
      006900 C0 E0            [24]10834 	push	acc
      006902 C0 E0            [24]10835 	push	acc
      006904 90 90 00         [24]10836 	mov	dptr,#_s
      006907 75 F0 00         [24]10837 	mov	b,#0x00
      00690A 12 21 46         [24]10838 	lcall	_state_exec
      00690D AE 82            [24]10839 	mov	r6,dpl
      00690F AF 83            [24]10840 	mov	r7,dph
      006911 15 81            [12]10841 	dec	sp
      006913 15 81            [12]10842 	dec	sp
      006915 C3               [12]10843 	clr	c
      006916 E4               [12]10844 	clr	a
      006917 9E               [12]10845 	subb	a,r6
      006918 74 80            [12]10846 	mov	a,#(0x00 ^ 0x80)
      00691A 8F F0            [24]10847 	mov	b,r7
      00691C 63 F0 80         [24]10848 	xrl	b,#0x80
      00691F 95 F0            [12]10849 	subb	a,b
      006921 50 03            [24]10850 	jnc	00464$
      006923 02 65 F8         [24]10851 	ljmp	00192$
      006926                      10852 00464$:
      006926                      10853 00193$:
                                  10854 ;	calc.c:586: printstr("TERM\r\n");
      006926 7D C1            [12]10855 	mov	r5,#___str_53
      006928 7E 8C            [12]10856 	mov	r6,#(___str_53 >> 8)
      00692A 7F 80            [12]10857 	mov	r7,#0x80
                                  10858 ;	calc.c:51: return;
      00692C                      10859 00202$:
                                  10860 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00692C 8D 82            [24]10861 	mov	dpl,r5
      00692E 8E 83            [24]10862 	mov	dph,r6
      006930 8F F0            [24]10863 	mov	b,r7
      006932 12 70 79         [24]10864 	lcall	__gptrget
      006935 FC               [12]10865 	mov	r4,a
      006936 60 10            [24]10866 	jz	00197$
      006938 7B 00            [12]10867 	mov	r3,#0x00
      00693A 8C 82            [24]10868 	mov	dpl,r4
      00693C 8B 83            [24]10869 	mov	dph,r3
      00693E 12 2C 1F         [24]10870 	lcall	_putchar
      006941 0D               [12]10871 	inc	r5
                                  10872 ;	calc.c:586: printstr("TERM\r\n");
      006942 BD 00 E7         [24]10873 	cjne	r5,#0x00,00202$
      006945 0E               [12]10874 	inc	r6
      006946 80 E4            [24]10875 	sjmp	00202$
      006948                      10876 00197$:
                                  10877 ;	calc.c:588: PCON |= 2;
      006948 43 87 02         [24]10878 	orl	_PCON,#0x02
                                  10879 ;	calc.c:590: return;
                                  10880 ;	calc.c:591: }
      00694B 15 81            [12]10881 	dec	sp
      00694D D0 08            [24]10882 	pop	_bp
      00694F 22               [24]10883 	ret
                                  10884 	.area CSEG    (CODE)
                                  10885 	.area CONST   (CODE)
                                  10886 	.area CONST   (CODE)
      0088FA                      10887 ___str_0:
      0088FA 0D                   10888 	.db 0x0d
      0088FB 0A                   10889 	.db 0x0a
      0088FC 50 53                10890 	.ascii "PS"
      0088FE 0D                   10891 	.db 0x0d
      0088FF 0A                   10892 	.db 0x0a
      008900 00                   10893 	.db 0x00
                                  10894 	.area CSEG    (CODE)
                                  10895 	.area CONST   (CODE)
      008901                      10896 ___str_1:
      008901 73 74 61 63 6B 20 75 10897 	.ascii "stack underflow"
             6E 64 65 72 66 6C 6F
             77
      008910 0D                   10898 	.db 0x0d
      008911 0A                   10899 	.db 0x0a
      008912 00                   10900 	.db 0x00
                                  10901 	.area CSEG    (CODE)
                                  10902 	.area CONST   (CODE)
      008913                      10903 ___str_2:
      008913 56 41 20             10904 	.ascii "VA "
      008916 00                   10905 	.db 0x00
                                  10906 	.area CSEG    (CODE)
                                  10907 	.area CONST   (CODE)
      008917                      10908 ___str_3:
      008917 25 20 31 31 6C 64 20 10909 	.ascii "% 11ld / "
             2F 20
      008920 00                   10910 	.db 0x00
                                  10911 	.area CSEG    (CODE)
                                  10912 	.area CONST   (CODE)
      008921                      10913 ___str_4:
      008921 25 30 38 6C 78 20 2F 10914 	.ascii "%08lx / "
             20
      008929 00                   10915 	.db 0x00
                                  10916 	.area CSEG    (CODE)
                                  10917 	.area CONST   (CODE)
      00892A                      10918 ___str_5:
      00892A 0D                   10919 	.db 0x0d
      00892B 0A                   10920 	.db 0x0a
      00892C 00                   10921 	.db 0x00
                                  10922 	.area CSEG    (CODE)
                                  10923 	.area CONST   (CODE)
      00892D                      10924 ___str_6:
      00892D 53 53                10925 	.ascii "SS"
      00892F 0D                   10926 	.db 0x0d
      008930 0A                   10927 	.db 0x0a
      008931 00                   10928 	.db 0x00
                                  10929 	.area CSEG    (CODE)
                                  10930 	.area CONST   (CODE)
      008932                      10931 ___str_7:
      008932 50 41 20             10932 	.ascii "PA "
      008935 00                   10933 	.db 0x00
                                  10934 	.area CSEG    (CODE)
                                  10935 	.area CONST   (CODE)
      008936                      10936 ___str_8:
      008936 50 54 20             10937 	.ascii "PT "
      008939 00                   10938 	.db 0x00
                                  10939 	.area CSEG    (CODE)
                                  10940 	.area CONST   (CODE)
      00893A                      10941 ___str_9:
      00893A 56 54 20             10942 	.ascii "VT "
      00893D 00                   10943 	.db 0x00
                                  10944 	.area CSEG    (CODE)
                                  10945 	.area CONST   (CODE)
      00893E                      10946 ___str_10:
      00893E 0D                   10947 	.db 0x0d
      00893F 0A                   10948 	.db 0x0a
      008940 73 74 61 63 6B 20 75 10949 	.ascii "stack underflow"
             6E 64 65 72 66 6C 6F
             77
      00894F 0D                   10950 	.db 0x0d
      008950 0A                   10951 	.db 0x0a
      008951 00                   10952 	.db 0x00
                                  10953 	.area CSEG    (CODE)
                                  10954 	.area CONST   (CODE)
      008952                      10955 ___str_11:
      008952 0D                   10956 	.db 0x0d
      008953 0A                   10957 	.db 0x0a
      008954 73 65 63 6F 6E 64 61 10958 	.ascii "secondary stack overflow"
             72 79 20 73 74 61 63
             6B 20 6F 76 65 72 66
             6C 6F 77
      00896C 0D                   10959 	.db 0x0d
      00896D 0A                   10960 	.db 0x0a
      00896E 00                   10961 	.db 0x00
                                  10962 	.area CSEG    (CODE)
                                  10963 	.area CONST   (CODE)
      00896F                      10964 ___str_12:
      00896F 0D                   10965 	.db 0x0d
      008970 0A                   10966 	.db 0x0a
      008971 73 65 63 6F 6E 64 61 10967 	.ascii "secondary stack underflow"
             72 79 20 73 74 61 63
             6B 20 75 6E 64 65 72
             66 6C 6F 77
      00898A 0D                   10968 	.db 0x0d
      00898B 0A                   10969 	.db 0x0a
      00898C 00                   10970 	.db 0x00
                                  10971 	.area CSEG    (CODE)
                                  10972 	.area CONST   (CODE)
      00898D                      10973 ___str_13:
      00898D 0D                   10974 	.db 0x0d
      00898E 0A                   10975 	.db 0x0a
      00898F 73 74 61 63 6B 20 6F 10976 	.ascii "stack overflow"
             76 65 72 66 6C 6F 77
      00899D 0D                   10977 	.db 0x0d
      00899E 0A                   10978 	.db 0x0a
      00899F 00                   10979 	.db 0x00
                                  10980 	.area CSEG    (CODE)
                                  10981 	.area CONST   (CODE)
      0089A0                      10982 ___str_14:
      0089A0 0D                   10983 	.db 0x0d
      0089A1 0A                   10984 	.db 0x0a
      0089A2 64 69 76 69 73 69 6F 10985 	.ascii "division by zero"
             6E 20 62 79 20 7A 65
             72 6F
      0089B2 0D                   10986 	.db 0x0d
      0089B3 0A                   10987 	.db 0x0a
      0089B4 00                   10988 	.db 0x00
                                  10989 	.area CSEG    (CODE)
                                  10990 	.area CONST   (CODE)
      0089B5                      10991 ___str_15:
      0089B5 0D                   10992 	.db 0x0d
      0089B6 0A                   10993 	.db 0x0a
      0089B7 70 72 69 6D 61 72 79 10994 	.ascii "primary = %p, secondary = %p"
             20 3D 20 25 70 2C 20
             73 65 63 6F 6E 64 61
             72 79 20 3D 20 25 70
      0089D3 0D                   10995 	.db 0x0d
      0089D4 0A                   10996 	.db 0x0a
      0089D5 00                   10997 	.db 0x00
                                  10998 	.area CSEG    (CODE)
                                  10999 	.area CONST   (CODE)
      0089D6                      11000 ___str_16:
      0089D6 61 63 63 5F 76 61 6C 11001 	.ascii "acc_valid = %d, base = %d"
             69 64 20 3D 20 25 64
             2C 20 62 61 73 65 20
             3D 20 25 64
      0089EF 0D                   11002 	.db 0x0d
      0089F0 0A                   11003 	.db 0x0a
      0089F1 00                   11004 	.db 0x00
                                  11005 	.area CSEG    (CODE)
                                  11006 	.area CONST   (CODE)
      0089F2                      11007 ___str_17:
      0089F2 61 63 63 20 20 20 20 11008 	.ascii "acc    = "
             3D 20
      0089FB 00                   11009 	.db 0x00
                                  11010 	.area CSEG    (CODE)
                                  11011 	.area CONST   (CODE)
      0089FC                      11012 ___str_18:
      0089FC 0D                   11013 	.db 0x0d
      0089FD 0A                   11014 	.db 0x0a
      0089FE 50 53 54 4F 50 31 20 11015 	.ascii "PSTOP1 = "
             3D 20
      008A07 00                   11016 	.db 0x00
                                  11017 	.area CSEG    (CODE)
                                  11018 	.area CONST   (CODE)
      008A08                      11019 ___str_19:
      008A08 0D                   11020 	.db 0x0d
      008A09 0A                   11021 	.db 0x0a
      008A0A 50 53 54 4F 50 30 20 11022 	.ascii "PSTOP0 = "
             3D 20
      008A13 00                   11023 	.db 0x00
                                  11024 	.area CSEG    (CODE)
                                  11025 	.area CONST   (CODE)
      008A14                      11026 ___str_20:
      008A14 0D                   11027 	.db 0x0d
      008A15 0A                   11028 	.db 0x0a
      008A16 53 53 54 4F 50 31 20 11029 	.ascii "SSTOP1 = "
             3D 20
      008A1F 00                   11030 	.db 0x00
                                  11031 	.area CSEG    (CODE)
                                  11032 	.area CONST   (CODE)
      008A20                      11033 ___str_21:
      008A20 0D                   11034 	.db 0x0d
      008A21 0A                   11035 	.db 0x0a
      008A22 53 53 54 4F 50 30 20 11036 	.ascii "SSTOP0 = "
             3D 20
      008A2B 00                   11037 	.db 0x00
                                  11038 	.area CSEG    (CODE)
                                  11039 	.area CONST   (CODE)
      008A2C                      11040 ___str_22:
      008A2C 0D                   11041 	.db 0x0d
      008A2D 0A                   11042 	.db 0x0a
      008A2E 48 68 4F 6F          11043 	.ascii "HhOo"
      008A32 09                   11044 	.db 0x09
      008A33 62 61 73 65 20 31 36 11045 	.ascii "base 16 10 8 2"
             20 31 30 20 38 20 32
      008A41 0D                   11046 	.db 0x0d
      008A42 0A                   11047 	.db 0x0a
      008A43 00                   11048 	.db 0x00
                                  11049 	.area CSEG    (CODE)
                                  11050 	.area CONST   (CODE)
      008A44                      11051 ___str_23:
      008A44 70                   11052 	.ascii "p"
      008A45 09                   11053 	.db 0x09
      008A46 70 65 65 6B 20 74 6F 11054 	.ascii "peek top"
             70
      008A4E 0D                   11055 	.db 0x0d
      008A4F 0A                   11056 	.db 0x0a
      008A50 00                   11057 	.db 0x00
                                  11058 	.area CSEG    (CODE)
                                  11059 	.area CONST   (CODE)
      008A51                      11060 ___str_24:
      008A51 50                   11061 	.ascii "P"
      008A52 09                   11062 	.db 0x09
      008A53 70 72 69 6E 74 20 73 11063 	.ascii "print stack"
             74 61 63 6B
      008A5E 0D                   11064 	.db 0x0d
      008A5F 0A                   11065 	.db 0x0a
      008A60 00                   11066 	.db 0x00
                                  11067 	.area CSEG    (CODE)
                                  11068 	.area CONST   (CODE)
      008A61                      11069 ___str_25:
      008A61 76 2E                11070 	.ascii "v."
      008A63 09                   11071 	.db 0x09
      008A64 70 6F 70 20 74 6F 70 11072 	.ascii "pop top"
      008A6B 0D                   11073 	.db 0x0d
      008A6C 0A                   11074 	.db 0x0a
      008A6D 00                   11075 	.db 0x00
                                  11076 	.area CSEG    (CODE)
                                  11077 	.area CONST   (CODE)
      008A6E                      11078 ___str_26:
      008A6E 56                   11079 	.ascii "V"
      008A6F 09                   11080 	.db 0x09
      008A70 70 6F 70 20 61 6C 6C 11081 	.ascii "pop all"
      008A77 0D                   11082 	.db 0x0d
      008A78 0A                   11083 	.db 0x0a
      008A79 00                   11084 	.db 0x00
                                  11085 	.area CSEG    (CODE)
                                  11086 	.area CONST   (CODE)
      008A7A                      11087 ___str_27:
      008A7A 69                   11088 	.ascii "i"
      008A7B 09                   11089 	.db 0x09
      008A7C 72 65 73 65 74 20 61 11090 	.ascii "reset acc"
             63 63
      008A85 0D                   11091 	.db 0x0d
      008A86 0A                   11092 	.db 0x0a
      008A87 00                   11093 	.db 0x00
                                  11094 	.area CSEG    (CODE)
                                  11095 	.area CONST   (CODE)
      008A88                      11096 ___str_28:
      008A88 49                   11097 	.ascii "I"
      008A89 09                   11098 	.db 0x09
      008A8A 72 65 73 65 74 20 61 11099 	.ascii "reset and discard acc"
             6E 64 20 64 69 73 63
             61 72 64 20 61 63 63
      008A9F 0D                   11100 	.db 0x0d
      008AA0 0A                   11101 	.db 0x0a
      008AA1 00                   11102 	.db 0x00
                                  11103 	.area CSEG    (CODE)
                                  11104 	.area CONST   (CODE)
      008AA2                      11105 ___str_29:
      008AA2 78                   11106 	.ascii "x"
      008AA3 09                   11107 	.db 0x09
      008AA4 65 78 63 68 61 6E 67 11108 	.ascii "exchange top 2"
             65 20 74 6F 70 20 32
      008AB2 0D                   11109 	.db 0x0d
      008AB3 0A                   11110 	.db 0x0a
      008AB4 00                   11111 	.db 0x00
                                  11112 	.area CSEG    (CODE)
                                  11113 	.area CONST   (CODE)
      008AB5                      11114 ___str_30:
      008AB5 58                   11115 	.ascii "X"
      008AB6 09                   11116 	.db 0x09
      008AB7 65 78 63 68 61 6E 67 11117 	.ascii "exchange stacks primary <-> secondary"
             65 20 73 74 61 63 6B
             73 20 70 72 69 6D 61
             72 79 20 3C 2D 3E 20
             73 65 63 6F 6E 64 61
             72 79
      008ADC 0D                   11118 	.db 0x0d
      008ADD 0A                   11119 	.db 0x0a
      008ADE 00                   11120 	.db 0x00
                                  11121 	.area CSEG    (CODE)
                                  11122 	.area CONST   (CODE)
      008ADF                      11123 ___str_31:
      008ADF 54                   11124 	.ascii "T"
      008AE0 09                   11125 	.db 0x09
      008AE1 65 78 63 68 61 6E 67 11126 	.ascii "exchange tops primary <-> secondary"
             65 20 74 6F 70 73 20
             70 72 69 6D 61 72 79
             20 3C 2D 3E 20 73 65
             63 6F 6E 64 61 72 79
      008B04 0D                   11127 	.db 0x0d
      008B05 0A                   11128 	.db 0x0a
      008B06 00                   11129 	.db 0x00
                                  11130 	.area CSEG    (CODE)
                                  11131 	.area CONST   (CODE)
      008B07                      11132 ___str_32:
      008B07 55                   11133 	.ascii "U"
      008B08 09                   11134 	.db 0x09
      008B09 63 6F 70 79 20 74 6F 11135 	.ascii "copy top secondary -> primary"
             70 20 73 65 63 6F 6E
             64 61 72 79 20 2D 3E
             20 70 72 69 6D 61 72
             79
      008B26 0D                   11136 	.db 0x0d
      008B27 0A                   11137 	.db 0x0a
      008B28 00                   11138 	.db 0x00
                                  11139 	.area CSEG    (CODE)
                                  11140 	.area CONST   (CODE)
      008B29                      11141 ___str_33:
      008B29 75                   11142 	.ascii "u"
      008B2A 09                   11143 	.db 0x09
      008B2B 63 6F 70 79 20 74 6F 11144 	.ascii "copy top primary -> secondary"
             70 20 70 72 69 6D 61
             72 79 20 2D 3E 20 73
             65 63 6F 6E 64 61 72
             79
      008B48 0D                   11145 	.db 0x0d
      008B49 0A                   11146 	.db 0x0a
      008B4A 00                   11147 	.db 0x00
                                  11148 	.area CSEG    (CODE)
                                  11149 	.area CONST   (CODE)
      008B4B                      11150 ___str_34:
      008B4B 4D                   11151 	.ascii "M"
      008B4C 09                   11152 	.db 0x09
      008B4D 6D 6F 76 65 20 74 6F 11153 	.ascii "move top secondary -> primary"
             70 20 73 65 63 6F 6E
             64 61 72 79 20 2D 3E
             20 70 72 69 6D 61 72
             79
      008B6A 0D                   11154 	.db 0x0d
      008B6B 0A                   11155 	.db 0x0a
      008B6C 00                   11156 	.db 0x00
                                  11157 	.area CSEG    (CODE)
                                  11158 	.area CONST   (CODE)
      008B6D                      11159 ___str_35:
      008B6D 6D                   11160 	.ascii "m"
      008B6E 09                   11161 	.db 0x09
      008B6F 6D 6F 76 65 20 74 6F 11162 	.ascii "move top primary -> secondary"
             70 20 70 72 69 6D 61
             72 79 20 2D 3E 20 73
             65 63 6F 6E 64 61 72
             79
      008B8C 0D                   11163 	.db 0x0d
      008B8D 0A                   11164 	.db 0x0a
      008B8E 00                   11165 	.db 0x00
                                  11166 	.area CSEG    (CODE)
                                  11167 	.area CONST   (CODE)
      008B8F                      11168 ___str_36:
      008B8F 2B                   11169 	.ascii "+"
      008B90 09                   11170 	.db 0x09
      008B91 61 64 64 20 74 6F 70 11171 	.ascii "add top 2"
             20 32
      008B9A 0D                   11172 	.db 0x0d
      008B9B 0A                   11173 	.db 0x0a
      008B9C 00                   11174 	.db 0x00
                                  11175 	.area CSEG    (CODE)
                                  11176 	.area CONST   (CODE)
      008B9D                      11177 ___str_37:
      008B9D 2D                   11178 	.ascii "-"
      008B9E 09                   11179 	.db 0x09
      008B9F 73 75 62 74 72 61 63 11180 	.ascii "subtract top 2"
             74 20 74 6F 70 20 32
      008BAD 0D                   11181 	.db 0x0d
      008BAE 0A                   11182 	.db 0x0a
      008BAF 00                   11183 	.db 0x00
                                  11184 	.area CSEG    (CODE)
                                  11185 	.area CONST   (CODE)
      008BB0                      11186 ___str_38:
      008BB0 2A                   11187 	.ascii "*"
      008BB1 09                   11188 	.db 0x09
      008BB2 6D 75 6C 74 69 70 6C 11189 	.ascii "multiply top 2"
             79 20 74 6F 70 20 32
      008BC0 0D                   11190 	.db 0x0d
      008BC1 0A                   11191 	.db 0x0a
      008BC2 00                   11192 	.db 0x00
                                  11193 	.area CSEG    (CODE)
                                  11194 	.area CONST   (CODE)
      008BC3                      11195 ___str_39:
      008BC3 2F                   11196 	.ascii "/"
      008BC4 09                   11197 	.db 0x09
      008BC5 64 69 76 69 64 65 20 11198 	.ascii "divide top 2"
             74 6F 70 20 32
      008BD1 0D                   11199 	.db 0x0d
      008BD2 0A                   11200 	.db 0x0a
      008BD3 00                   11201 	.db 0x00
                                  11202 	.area CSEG    (CODE)
                                  11203 	.area CONST   (CODE)
      008BD4                      11204 ___str_40:
      008BD4 5C                   11205 	.db 0x5c
      008BD5 09                   11206 	.db 0x09
      008BD6 64 69 76 69 64 65 20 11207 	.ascii "divide top 2 unsigned"
             74 6F 70 20 32 20 75
             6E 73 69 67 6E 65 64
      008BEB 0D                   11208 	.db 0x0d
      008BEC 0A                   11209 	.db 0x0a
      008BED 00                   11210 	.db 0x00
                                  11211 	.area CSEG    (CODE)
                                  11212 	.area CONST   (CODE)
      008BEE                      11213 ___str_41:
      008BEE 25                   11214 	.ascii "%"
      008BEF 09                   11215 	.db 0x09
      008BF0 6D 6F 64 75 6C 75 73 11216 	.ascii "modulus top 2"
             20 74 6F 70 20 32
      008BFD 0D                   11217 	.db 0x0d
      008BFE 0A                   11218 	.db 0x0a
      008BFF 00                   11219 	.db 0x00
                                  11220 	.area CSEG    (CODE)
                                  11221 	.area CONST   (CODE)
      008C00                      11222 ___str_42:
      008C00 23                   11223 	.ascii "#"
      008C01 09                   11224 	.db 0x09
      008C02 6D 6F 64 75 6C 75 73 11225 	.ascii "modulus top 2 unsigned"
             20 74 6F 70 20 32 20
             75 6E 73 69 67 6E 65
             64
      008C18 0D                   11226 	.db 0x0d
      008C19 0A                   11227 	.db 0x0a
      008C1A 00                   11228 	.db 0x00
                                  11229 	.area CSEG    (CODE)
                                  11230 	.area CONST   (CODE)
      008C1B                      11231 ___str_43:
      008C1B 26                   11232 	.ascii "&"
      008C1C 09                   11233 	.db 0x09
      008C1D 61 6E 64 20 74 6F 70 11234 	.ascii "and top 2"
             20 32
      008C26 0D                   11235 	.db 0x0d
      008C27 0A                   11236 	.db 0x0a
      008C28 00                   11237 	.db 0x00
                                  11238 	.area CSEG    (CODE)
                                  11239 	.area CONST   (CODE)
      008C29                      11240 ___str_44:
      008C29 7C                   11241 	.ascii "|"
      008C2A 09                   11242 	.db 0x09
      008C2B 6F 72 20 74 6F 70 20 11243 	.ascii "or top 2"
             32
      008C33 0D                   11244 	.db 0x0d
      008C34 0A                   11245 	.db 0x0a
      008C35 00                   11246 	.db 0x00
                                  11247 	.area CSEG    (CODE)
                                  11248 	.area CONST   (CODE)
      008C36                      11249 ___str_45:
      008C36 5E                   11250 	.ascii "^"
      008C37 09                   11251 	.db 0x09
      008C38 78 6F 72 20 74 6F 70 11252 	.ascii "xor top 2"
             20 32
      008C41 0D                   11253 	.db 0x0d
      008C42 0A                   11254 	.db 0x0a
      008C43 00                   11255 	.db 0x00
                                  11256 	.area CSEG    (CODE)
                                  11257 	.area CONST   (CODE)
      008C44                      11258 ___str_46:
      008C44 3E                   11259 	.ascii ">"
      008C45 09                   11260 	.db 0x09
      008C46 73 68 69 66 74 20 72 11261 	.ascii "shift right top 2"
             69 67 68 74 20 74 6F
             70 20 32
      008C57 0D                   11262 	.db 0x0d
      008C58 0A                   11263 	.db 0x0a
      008C59 00                   11264 	.db 0x00
                                  11265 	.area CSEG    (CODE)
                                  11266 	.area CONST   (CODE)
      008C5A                      11267 ___str_47:
      008C5A 5D                   11268 	.ascii "]"
      008C5B 09                   11269 	.db 0x09
      008C5C 61 72 69 74 68 6D 65 11270 	.ascii "arithmetic shift right top 2"
             74 69 63 20 73 68 69
             66 74 20 72 69 67 68
             74 20 74 6F 70 20 32
      008C78 0D                   11271 	.db 0x0d
      008C79 0A                   11272 	.db 0x0a
      008C7A 00                   11273 	.db 0x00
                                  11274 	.area CSEG    (CODE)
                                  11275 	.area CONST   (CODE)
      008C7B                      11276 ___str_48:
      008C7B 3C                   11277 	.ascii "<"
      008C7C 09                   11278 	.db 0x09
      008C7D 73 68 69 66 74 20 6C 11279 	.ascii "shift left top 2"
             65 66 74 20 74 6F 70
             20 32
      008C8D 0D                   11280 	.db 0x0d
      008C8E 0A                   11281 	.db 0x0a
      008C8F 00                   11282 	.db 0x00
                                  11283 	.area CSEG    (CODE)
                                  11284 	.area CONST   (CODE)
      008C90                      11285 ___str_49:
      008C90 7E                   11286 	.ascii "~"
      008C91 09                   11287 	.db 0x09
      008C92 62 69 74 77 69 73 65 11288 	.ascii "bitwise not top"
             20 6E 6F 74 20 74 6F
             70
      008CA1 0D                   11289 	.db 0x0d
      008CA2 0A                   11290 	.db 0x0a
      008CA3 00                   11291 	.db 0x00
                                  11292 	.area CSEG    (CODE)
                                  11293 	.area CONST   (CODE)
      008CA4                      11294 ___str_50:
      008CA4 73                   11295 	.ascii "s"
      008CA5 09                   11296 	.db 0x09
      008CA6 73 74 61 74 75 73    11297 	.ascii "status"
      008CAC 0D                   11298 	.db 0x0d
      008CAD 0A                   11299 	.db 0x0a
      008CAE 00                   11300 	.db 0x00
                                  11301 	.area CSEG    (CODE)
                                  11302 	.area CONST   (CODE)
      008CAF                      11303 ___str_51:
      008CAF 3F                   11304 	.ascii "?"
      008CB0 09                   11305 	.db 0x09
      008CB1 68 65 6C 70          11306 	.ascii "help"
      008CB5 0D                   11307 	.db 0x0d
      008CB6 0A                   11308 	.db 0x0a
      008CB7 00                   11309 	.db 0x00
                                  11310 	.area CSEG    (CODE)
                                  11311 	.area CONST   (CODE)
      008CB8                      11312 ___str_52:
      008CB8 71                   11313 	.ascii "q"
      008CB9 09                   11314 	.db 0x09
      008CBA 71 75 69 74          11315 	.ascii "quit"
      008CBE 0D                   11316 	.db 0x0d
      008CBF 0A                   11317 	.db 0x0a
      008CC0 00                   11318 	.db 0x00
                                  11319 	.area CSEG    (CODE)
                                  11320 	.area CONST   (CODE)
      008CC1                      11321 ___str_53:
      008CC1 54 45 52 4D          11322 	.ascii "TERM"
      008CC5 0D                   11323 	.db 0x0d
      008CC6 0A                   11324 	.db 0x0a
      008CC7 00                   11325 	.db 0x00
                                  11326 	.area CSEG    (CODE)
                                  11327 	.area XINIT   (CODE)
      008CD9                      11328 __xinit__deltas:
      008CD9 00 00                11329 	.byte #0x00, #0x00	;  0
      008CDB 00 00                11330 	.byte #0x00, #0x00	;  0
      008CDD 00 00                11331 	.byte #0x00, #0x00	;  0
      008CDF 00 00                11332 	.byte #0x00,#0x00
      008CE1 00 00                11333 	.byte #0x00,#0x00
      008CE3 00 00                11334 	.byte #0x00, #0x00	;  0
      008CE5 01 00                11335 	.byte #0x01, #0x00	;  1
      008CE7 02 00                11336 	.byte #0x02, #0x00	;  2
      008CE9 00 00                11337 	.byte #0x00,#0x00
      008CEB 41 2C                11338 	.byte _accumulate, (_accumulate >> 8)
      008CED 00 00                11339 	.byte #0x00, #0x00	;  0
      008CEF 02 00                11340 	.byte #0x02, #0x00	;  2
      008CF1 01 00                11341 	.byte #0x01, #0x00	;  1
      008CF3 00 00                11342 	.byte #0x00,#0x00
      008CF5 E0 33                11343 	.byte _operator, (_operator >> 8)
      008CF7 01 00                11344 	.byte #0x01, #0x00	;  1
      008CF9 00 00                11345 	.byte #0x00, #0x00	;  0
      008CFB 00 00                11346 	.byte #0x00, #0x00	;  0
      008CFD 00 00                11347 	.byte #0x00,#0x00
      008CFF 00 00                11348 	.byte #0x00,#0x00
      008D01 01 00                11349 	.byte #0x01, #0x00	;  1
      008D03 02 00                11350 	.byte #0x02, #0x00	;  2
      008D05 01 00                11351 	.byte #0x01, #0x00	;  1
      008D07 00 00                11352 	.byte #0x00,#0x00
      008D09 E0 33                11353 	.byte _operator, (_operator >> 8)
      008D0B 01 00                11354 	.byte #0x01, #0x00	;  1
      008D0D 01 00                11355 	.byte #0x01, #0x00	;  1
      008D0F 02 00                11356 	.byte #0x02, #0x00	;  2
      008D11 00 00                11357 	.byte #0x00,#0x00
      008D13 41 2C                11358 	.byte _accumulate, (_accumulate >> 8)
      008D15 02 00                11359 	.byte #0x02, #0x00	;  2
      008D17 00 00                11360 	.byte #0x00, #0x00	;  0
      008D19 00 00                11361 	.byte #0x00, #0x00	;  0
      008D1B 00 00                11362 	.byte #0x00,#0x00
      008D1D 6E 56                11363 	.byte _push_acc, (_push_acc >> 8)
      008D1F 02 00                11364 	.byte #0x02, #0x00	;  2
      008D21 07 00                11365 	.byte #0x07, #0x00	;  7
      008D23 00 00                11366 	.byte #0x00, #0x00	;  0
      008D25 00 00                11367 	.byte #0x00,#0x00
      008D27 91 57                11368 	.byte _reset_acc, (_reset_acc >> 8)
      008D29 02 00                11369 	.byte #0x02, #0x00	;  2
      008D2B 01 00                11370 	.byte #0x01, #0x00	;  1
      008D2D 02 00                11371 	.byte #0x02, #0x00	;  2
      008D2F 00 00                11372 	.byte #0x00,#0x00
      008D31 41 2C                11373 	.byte _accumulate, (_accumulate >> 8)
      008D33 02 00                11374 	.byte #0x02, #0x00	;  2
      008D35 02 00                11375 	.byte #0x02, #0x00	;  2
      008D37 01 00                11376 	.byte #0x01, #0x00	;  1
      008D39 00 00                11377 	.byte #0x00,#0x00
      008D3B 6E 56                11378 	.byte _push_acc, (_push_acc >> 8)
      008D3D FF 7F                11379 	.byte #0xff, #0x7f	;  32767
      008D3F 06 00                11380 	.byte #0x06, #0x00	;  6
      008D41 FF 7F                11381 	.byte #0xff, #0x7f	;  32767
      008D43 00 00                11382 	.byte #0x00,#0x00
      008D45 91 57                11383 	.byte _reset_acc, (_reset_acc >> 8)
      008D47 FF 7F                11384 	.byte #0xff, #0x7f	;  32767
      008D49 07 00                11385 	.byte #0x07, #0x00	;  7
      008D4B FF 7F                11386 	.byte #0xff, #0x7f	;  32767
      008D4D 00 00                11387 	.byte #0x00,#0x00
      008D4F 00 00                11388 	.byte #0x00,#0x00
      008D51 FF 7F                11389 	.byte #0xff, #0x7f	;  32767
      008D53 05 00                11390 	.byte #0x05, #0x00	;  5
      008D55 FF 7F                11391 	.byte #0xff, #0x7f	;  32767
      008D57 00 00                11392 	.byte #0x00,#0x00
      008D59 FB 57                11393 	.byte _reset_base, (_reset_base >> 8)
      008D5B FF 7F                11394 	.byte #0xff, #0x7f	;  32767
      008D5D 03 00                11395 	.byte #0x03, #0x00	;  3
      008D5F FF 7F                11396 	.byte #0xff, #0x7f	;  32767
      008D61 00 00                11397 	.byte #0x00,#0x00
      008D63 79 58                11398 	.byte _status, (_status >> 8)
      008D65 FF 7F                11399 	.byte #0xff, #0x7f	;  32767
      008D67 04 00                11400 	.byte #0x04, #0x00	;  4
      008D69 FF 7F                11401 	.byte #0xff, #0x7f	;  32767
      008D6B 00 00                11402 	.byte #0x00,#0x00
      008D6D 22 61                11403 	.byte _help, (_help >> 8)
      008D6F FF 7F                11404 	.byte #0xff, #0x7f	;  32767
      008D71 08 00                11405 	.byte #0x08, #0x00	;  8
      008D73 03 00                11406 	.byte #0x03, #0x00	;  3
      008D75 00 00                11407 	.byte #0x00,#0x00
      008D77 B2 2D                11408 	.byte _dump_pop, (_dump_pop >> 8)
      008D79 00 80                11409 	.byte #0x00, #0x80	; -32768
      008D7B 00 80                11410 	.byte #0x00, #0x80	; -32768
      008D7D 00 80                11411 	.byte #0x00, #0x80	; -32768
      008D7F 00 00                11412 	.byte #0x00,#0x00
      008D81 00 00                11413 	.byte #0x00,#0x00
                                  11414 	.area CABS    (ABS,CODE)
