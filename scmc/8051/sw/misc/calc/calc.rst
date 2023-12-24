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
      002003 02 64 8A         [24]  373 	ljmp	_main
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
                                    443 ;	calc.c:71: static int accumulate(void *_ctx, delta_t *delta) __reentrant {
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
                                    464 ;	calc.c:72: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
      002C51 E5 08            [12]  465 	mov	a,_bp
      002C53 24 08            [12]  466 	add	a,#0x08
      002C55 F8               [12]  467 	mov	r0,a
      002C56 A6 05            [24]  468 	mov	@r0,ar5
      002C58 08               [12]  469 	inc	r0
      002C59 A6 06            [24]  470 	mov	@r0,ar6
      002C5B 08               [12]  471 	inc	r0
      002C5C A6 07            [24]  472 	mov	@r0,ar7
                                    473 ;	calc.c:77: if (!ctx->acc_valid) {
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
      002C74 12 6F B8         [24]  489 	lcall	__gptrget
      002C77 70 31            [24]  490 	jnz	00102$
                                    491 ;	calc.c:78: ctx->acc_valid = 1;
      002C79 8A 82            [24]  492 	mov	dpl,r2
      002C7B 8B 83            [24]  493 	mov	dph,r3
      002C7D 8C F0            [24]  494 	mov	b,r4
      002C7F 74 01            [12]  495 	mov	a,#0x01
      002C81 12 6B 3D         [24]  496 	lcall	__gptrput
                                    497 ;	calc.c:79: ctx->acc = 0l;
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
      002C9B 12 6B 3D         [24]  514 	lcall	__gptrput
      002C9E A3               [24]  515 	inc	dptr
      002C9F 12 6B 3D         [24]  516 	lcall	__gptrput
      002CA2 A3               [24]  517 	inc	dptr
      002CA3 12 6B 3D         [24]  518 	lcall	__gptrput
      002CA6 A3               [24]  519 	inc	dptr
      002CA7 12 6B 3D         [24]  520 	lcall	__gptrput
      002CAA                        521 00102$:
                                    522 ;	calc.c:82: d = strtol(ctx->digit, NULL, ctx->base);
      002CAA E5 08            [12]  523 	mov	a,_bp
      002CAC 24 08            [12]  524 	add	a,#0x08
      002CAE F8               [12]  525 	mov	r0,a
      002CAF 86 82            [24]  526 	mov	dpl,@r0
      002CB1 08               [12]  527 	inc	r0
      002CB2 86 83            [24]  528 	mov	dph,@r0
      002CB4 08               [12]  529 	inc	r0
      002CB5 86 F0            [24]  530 	mov	b,@r0
      002CB7 12 6F B8         [24]  531 	lcall	__gptrget
      002CBA FB               [12]  532 	mov	r3,a
      002CBB A3               [24]  533 	inc	dptr
      002CBC 12 6F B8         [24]  534 	lcall	__gptrget
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
      002CE1 12 68 FF         [24]  557 	lcall	_strtol
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
                                    572 ;	calc.c:83: ctx->acc = ctx->acc * (long)ctx->base + d;
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
      002D1F 12 6F B8         [24]  600 	lcall	__gptrget
      002D22 F7               [12]  601 	mov	@r1,a
      002D23 A3               [24]  602 	inc	dptr
      002D24 12 6F B8         [24]  603 	lcall	__gptrget
      002D27 09               [12]  604 	inc	r1
      002D28 F7               [12]  605 	mov	@r1,a
      002D29 A3               [24]  606 	inc	dptr
      002D2A 12 6F B8         [24]  607 	lcall	__gptrget
      002D2D 09               [12]  608 	inc	r1
      002D2E F7               [12]  609 	mov	@r1,a
      002D2F A3               [24]  610 	inc	dptr
      002D30 12 6F B8         [24]  611 	lcall	__gptrget
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
      002D42 12 6F B8         [24]  622 	lcall	__gptrget
      002D45 FA               [12]  623 	mov	r2,a
      002D46 A3               [24]  624 	inc	dptr
      002D47 12 6F B8         [24]  625 	lcall	__gptrget
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
      002D67 12 73 B1         [24]  645 	lcall	__mullong
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
      002D97 12 6B 3D         [24]  679 	lcall	__gptrput
      002D9A A3               [24]  680 	inc	dptr
      002D9B ED               [12]  681 	mov	a,r5
      002D9C 12 6B 3D         [24]  682 	lcall	__gptrput
      002D9F A3               [24]  683 	inc	dptr
      002DA0 EE               [12]  684 	mov	a,r6
      002DA1 12 6B 3D         [24]  685 	lcall	__gptrput
      002DA4 A3               [24]  686 	inc	dptr
      002DA5 EF               [12]  687 	mov	a,r7
      002DA6 12 6B 3D         [24]  688 	lcall	__gptrput
                                    689 ;	calc.c:85: return 1;
      002DA9 90 00 01         [24]  690 	mov	dptr,#0x0001
                                    691 ;	calc.c:86: }
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
                                    732 ;	calc.c:88: static int dump_pop(void *_ctx, delta_t *delta) __reentrant {
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
                                    745 ;	calc.c:89: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
      002DC2 E5 08            [12]  746 	mov	a,_bp
      002DC4 24 0B            [12]  747 	add	a,#0x0b
      002DC6 F8               [12]  748 	mov	r0,a
      002DC7 A6 05            [24]  749 	mov	@r0,ar5
      002DC9 08               [12]  750 	inc	r0
      002DCA A6 06            [24]  751 	mov	@r0,ar6
      002DCC 08               [12]  752 	inc	r0
      002DCD A6 07            [24]  753 	mov	@r0,ar7
                                    754 ;	calc.c:93: if (delta->event == EVENT_TERM) printstr("\r\n");
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
      002DF9 12 6F B8         [24]  783 	lcall	__gptrget
      002DFC FE               [12]  784 	mov	r6,a
      002DFD A3               [24]  785 	inc	dptr
      002DFE 12 6F B8         [24]  786 	lcall	__gptrget
      002E01 FF               [12]  787 	mov	r7,a
      002E02 BE 08 27         [24]  788 	cjne	r6,#0x08,00102$
      002E05 BF 00 24         [24]  789 	cjne	r7,#0x00,00102$
      002E08 7D 48            [12]  790 	mov	r5,#___str_2
      002E0A 7E 88            [12]  791 	mov	r6,#(___str_2 >> 8)
      002E0C 7F 80            [12]  792 	mov	r7,#0x80
                                    793 ;	calc.c:51: return;
      002E0E                        794 00135$:
                                    795 ;	calc.c:49: for (; *s; s++) putchar(*s);
      002E0E 8D 82            [24]  796 	mov	dpl,r5
      002E10 8E 83            [24]  797 	mov	dph,r6
      002E12 8F F0            [24]  798 	mov	b,r7
      002E14 12 6F B8         [24]  799 	lcall	__gptrget
      002E17 FC               [12]  800 	mov	r4,a
      002E18 60 12            [24]  801 	jz	00102$
      002E1A 8C 03            [24]  802 	mov	ar3,r4
      002E1C 7C 00            [12]  803 	mov	r4,#0x00
      002E1E 8B 82            [24]  804 	mov	dpl,r3
      002E20 8C 83            [24]  805 	mov	dph,r4
      002E22 12 2C 1F         [24]  806 	lcall	_putchar
      002E25 0D               [12]  807 	inc	r5
                                    808 ;	calc.c:93: if (delta->event == EVENT_TERM) printstr("\r\n");
      002E26 BD 00 E5         [24]  809 	cjne	r5,#0x00,00135$
      002E29 0E               [12]  810 	inc	r6
      002E2A 80 E2            [24]  811 	sjmp	00135$
      002E2C                        812 00102$:
                                    813 ;	calc.c:94: r = stack_pop(ctx->ps, &d);
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
      002E61 12 6F B8         [24]  851 	lcall	__gptrget
      002E64 FA               [12]  852 	mov	r2,a
      002E65 A3               [24]  853 	inc	dptr
      002E66 12 6F B8         [24]  854 	lcall	__gptrget
      002E69 FB               [12]  855 	mov	r3,a
      002E6A A3               [24]  856 	inc	dptr
      002E6B 12 6F B8         [24]  857 	lcall	__gptrget
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
                                    881 ;	calc.c:95: if (!r) {
      002E96 EE               [12]  882 	mov	a,r6
      002E97 4D               [12]  883 	orl	a,r5
      002E98 70 44            [24]  884 	jnz	00183$
                                    885 ;	calc.c:96: if (delta->event != EVENT_TERM) printstr("stack underflow\r\n");
      002E9A E5 08            [12]  886 	mov	a,_bp
      002E9C 24 08            [12]  887 	add	a,#0x08
      002E9E F8               [12]  888 	mov	r0,a
      002E9F 86 82            [24]  889 	mov	dpl,@r0
      002EA1 08               [12]  890 	inc	r0
      002EA2 86 83            [24]  891 	mov	dph,@r0
      002EA4 08               [12]  892 	inc	r0
      002EA5 86 F0            [24]  893 	mov	b,@r0
      002EA7 12 6F B8         [24]  894 	lcall	__gptrget
      002EAA FD               [12]  895 	mov	r5,a
      002EAB A3               [24]  896 	inc	dptr
      002EAC 12 6F B8         [24]  897 	lcall	__gptrget
      002EAF FE               [12]  898 	mov	r6,a
      002EB0 BD 08 06         [24]  899 	cjne	r5,#0x08,00320$
      002EB3 BE 00 03         [24]  900 	cjne	r6,#0x00,00320$
      002EB6 02 30 90         [24]  901 	ljmp	00110$
      002EB9                        902 00320$:
      002EB9 7C 4B            [12]  903 	mov	r4,#___str_3
      002EBB 7D 88            [12]  904 	mov	r5,#(___str_3 >> 8)
      002EBD 7E 80            [12]  905 	mov	r6,#0x80
                                    906 ;	calc.c:51: return;
      002EBF                        907 00138$:
                                    908 ;	calc.c:49: for (; *s; s++) putchar(*s);
      002EBF 8C 82            [24]  909 	mov	dpl,r4
      002EC1 8D 83            [24]  910 	mov	dph,r5
      002EC3 8E F0            [24]  911 	mov	b,r6
      002EC5 12 6F B8         [24]  912 	lcall	__gptrget
      002EC8 FB               [12]  913 	mov	r3,a
      002EC9 70 03            [24]  914 	jnz	00321$
      002ECB 02 30 90         [24]  915 	ljmp	00110$
      002ECE                        916 00321$:
      002ECE 7A 00            [12]  917 	mov	r2,#0x00
      002ED0 8B 82            [24]  918 	mov	dpl,r3
      002ED2 8A 83            [24]  919 	mov	dph,r2
      002ED4 12 2C 1F         [24]  920 	lcall	_putchar
      002ED7 0C               [12]  921 	inc	r4
                                    922 ;	calc.c:97: } else while (r > 0) {
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
      002EF1 02 30 90         [24]  939 	ljmp	00110$
      002EF4                        940 00323$:
                                    941 ;	calc.c:98: printstr("PSPA\t");
      002EF4 7B 5D            [12]  942 	mov	r3,#___str_4
      002EF6 7C 88            [12]  943 	mov	r4,#(___str_4 >> 8)
      002EF8 7D 80            [12]  944 	mov	r5,#0x80
                                    945 ;	calc.c:51: return;
      002EFA                        946 00141$:
                                    947 ;	calc.c:49: for (; *s; s++) putchar(*s);
      002EFA 8B 82            [24]  948 	mov	dpl,r3
      002EFC 8C 83            [24]  949 	mov	dph,r4
      002EFE 8D F0            [24]  950 	mov	b,r5
      002F00 12 6F B8         [24]  951 	lcall	__gptrget
      002F03 FA               [12]  952 	mov	r2,a
      002F04 60 10            [24]  953 	jz	00119$
      002F06 7E 00            [12]  954 	mov	r6,#0x00
      002F08 8A 82            [24]  955 	mov	dpl,r2
      002F0A 8E 83            [24]  956 	mov	dph,r6
      002F0C 12 2C 1F         [24]  957 	lcall	_putchar
      002F0F 0B               [12]  958 	inc	r3
                                    959 ;	calc.c:98: printstr("PSPA\t");
      002F10 BB 00 E7         [24]  960 	cjne	r3,#0x00,00141$
      002F13 0C               [12]  961 	inc	r4
      002F14 80 E4            [24]  962 	sjmp	00141$
      002F16                        963 00119$:
                                    964 ;	calc.c:99: printall(d);
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
                                    995 ;	calc.c:64: printf("% 11ld\t", d);
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
      002F5C 74 39            [12] 1015 	mov	a,#___str_0
      002F5E C0 E0            [24] 1016 	push	acc
      002F60 74 88            [12] 1017 	mov	a,#(___str_0 >> 8)
      002F62 C0 E0            [24] 1018 	push	acc
      002F64 74 80            [12] 1019 	mov	a,#0x80
      002F66 C0 E0            [24] 1020 	push	acc
      002F68 12 6F 7F         [24] 1021 	lcall	_printf
      002F6B E5 81            [12] 1022 	mov	a,sp
      002F6D 24 F9            [12] 1023 	add	a,#0xf9
      002F6F F5 81            [12] 1024 	mov	sp,a
      002F71 D0 03            [24] 1025 	pop	ar3
      002F73 D0 04            [24] 1026 	pop	ar4
      002F75 D0 05            [24] 1027 	pop	ar5
      002F77 D0 06            [24] 1028 	pop	ar6
                                   1029 ;	calc.c:65: printf("%08lx\t", d);
      002F79 C0 06            [24] 1030 	push	ar6
      002F7B C0 05            [24] 1031 	push	ar5
      002F7D C0 04            [24] 1032 	push	ar4
      002F7F C0 03            [24] 1033 	push	ar3
      002F81 C0 03            [24] 1034 	push	ar3
      002F83 C0 04            [24] 1035 	push	ar4
      002F85 C0 05            [24] 1036 	push	ar5
      002F87 C0 06            [24] 1037 	push	ar6
      002F89 74 41            [12] 1038 	mov	a,#___str_1
      002F8B C0 E0            [24] 1039 	push	acc
      002F8D 74 88            [12] 1040 	mov	a,#(___str_1 >> 8)
      002F8F C0 E0            [24] 1041 	push	acc
      002F91 74 80            [12] 1042 	mov	a,#0x80
      002F93 C0 E0            [24] 1043 	push	acc
      002F95 12 6F 7F         [24] 1044 	lcall	_printf
      002F98 E5 81            [12] 1045 	mov	a,sp
      002F9A 24 F9            [12] 1046 	add	a,#0xf9
      002F9C F5 81            [12] 1047 	mov	sp,a
      002F9E D0 03            [24] 1048 	pop	ar3
      002FA0 D0 04            [24] 1049 	pop	ar4
      002FA2 D0 05            [24] 1050 	pop	ar5
      002FA4 D0 06            [24] 1051 	pop	ar6
      002FA6 D0 07            [24] 1052 	pop	ar7
                                   1053 ;	calc.c:66: printbin(d);
      002FA8 E5 08            [12] 1054 	mov	a,_bp
      002FAA 24 16            [12] 1055 	add	a,#0x16
      002FAC F8               [12] 1056 	mov	r0,a
      002FAD A6 03            [24] 1057 	mov	@r0,ar3
      002FAF 08               [12] 1058 	inc	r0
      002FB0 A6 04            [24] 1059 	mov	@r0,ar4
      002FB2 08               [12] 1060 	inc	r0
      002FB3 A6 05            [24] 1061 	mov	@r0,ar5
      002FB5 08               [12] 1062 	inc	r0
      002FB6 A6 06            [24] 1063 	mov	@r0,ar6
                                   1064 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      002FB8 E5 08            [12] 1065 	mov	a,_bp
      002FBA 24 1A            [12] 1066 	add	a,#0x1a
      002FBC F8               [12] 1067 	mov	r0,a
      002FBD E4               [12] 1068 	clr	a
      002FBE F6               [12] 1069 	mov	@r0,a
      002FBF 08               [12] 1070 	inc	r0
      002FC0 F6               [12] 1071 	mov	@r0,a
      002FC1 08               [12] 1072 	inc	r0
      002FC2 F6               [12] 1073 	mov	@r0,a
      002FC3 08               [12] 1074 	inc	r0
      002FC4 76 80            [12] 1075 	mov	@r0,#0x80
                                   1076 ;	calc.c:113: return 1;
                                   1077 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      002FC6                       1078 00143$:
                                   1079 ;	calc.c:58: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      002FC6 E5 08            [12] 1080 	mov	a,_bp
      002FC8 24 16            [12] 1081 	add	a,#0x16
      002FCA F8               [12] 1082 	mov	r0,a
      002FCB 86 02            [24] 1083 	mov	ar2,@r0
      002FCD 08               [12] 1084 	inc	r0
      002FCE 86 03            [24] 1085 	mov	ar3,@r0
      002FD0 08               [12] 1086 	inc	r0
      002FD1 86 04            [24] 1087 	mov	ar4,@r0
      002FD3 08               [12] 1088 	inc	r0
      002FD4 86 05            [24] 1089 	mov	ar5,@r0
      002FD6 E5 08            [12] 1090 	mov	a,_bp
      002FD8 24 1A            [12] 1091 	add	a,#0x1a
      002FDA F8               [12] 1092 	mov	r0,a
      002FDB E6               [12] 1093 	mov	a,@r0
      002FDC 52 02            [12] 1094 	anl	ar2,a
      002FDE 08               [12] 1095 	inc	r0
      002FDF E6               [12] 1096 	mov	a,@r0
      002FE0 52 03            [12] 1097 	anl	ar3,a
      002FE2 08               [12] 1098 	inc	r0
      002FE3 E6               [12] 1099 	mov	a,@r0
      002FE4 52 04            [12] 1100 	anl	ar4,a
      002FE6 08               [12] 1101 	inc	r0
      002FE7 E6               [12] 1102 	mov	a,@r0
      002FE8 52 05            [12] 1103 	anl	ar5,a
      002FEA EA               [12] 1104 	mov	a,r2
      002FEB 4B               [12] 1105 	orl	a,r3
      002FEC 4C               [12] 1106 	orl	a,r4
      002FED 4D               [12] 1107 	orl	a,r5
      002FEE 60 06            [24] 1108 	jz	00164$
      002FF0 7C 31            [12] 1109 	mov	r4,#0x31
      002FF2 7D 00            [12] 1110 	mov	r5,#0x00
      002FF4 80 04            [24] 1111 	sjmp	00165$
      002FF6                       1112 00164$:
      002FF6 7C 30            [12] 1113 	mov	r4,#0x30
      002FF8 7D 00            [12] 1114 	mov	r5,#0x00
      002FFA                       1115 00165$:
      002FFA 8C 82            [24] 1116 	mov	dpl,r4
      002FFC 8D 83            [24] 1117 	mov	dph,r5
      002FFE 12 2C 1F         [24] 1118 	lcall	_putchar
                                   1119 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      003001 E5 08            [12] 1120 	mov	a,_bp
      003003 24 1A            [12] 1121 	add	a,#0x1a
      003005 F8               [12] 1122 	mov	r0,a
      003006 08               [12] 1123 	inc	r0
      003007 08               [12] 1124 	inc	r0
      003008 08               [12] 1125 	inc	r0
      003009 E6               [12] 1126 	mov	a,@r0
      00300A C3               [12] 1127 	clr	c
      00300B 13               [12] 1128 	rrc	a
      00300C F6               [12] 1129 	mov	@r0,a
      00300D 18               [12] 1130 	dec	r0
      00300E E6               [12] 1131 	mov	a,@r0
      00300F 13               [12] 1132 	rrc	a
      003010 F6               [12] 1133 	mov	@r0,a
      003011 18               [12] 1134 	dec	r0
      003012 E6               [12] 1135 	mov	a,@r0
      003013 13               [12] 1136 	rrc	a
      003014 F6               [12] 1137 	mov	@r0,a
      003015 18               [12] 1138 	dec	r0
      003016 E6               [12] 1139 	mov	a,@r0
      003017 13               [12] 1140 	rrc	a
      003018 F6               [12] 1141 	mov	@r0,a
      003019 E5 08            [12] 1142 	mov	a,_bp
      00301B 24 1A            [12] 1143 	add	a,#0x1a
      00301D F8               [12] 1144 	mov	r0,a
      00301E E6               [12] 1145 	mov	a,@r0
      00301F 08               [12] 1146 	inc	r0
      003020 46               [12] 1147 	orl	a,@r0
      003021 08               [12] 1148 	inc	r0
      003022 46               [12] 1149 	orl	a,@r0
      003023 08               [12] 1150 	inc	r0
      003024 46               [12] 1151 	orl	a,@r0
      003025 70 9F            [24] 1152 	jnz	00143$
                                   1153 ;	calc.c:100: printstr("\r\n");
      003027 7B 48            [12] 1154 	mov	r3,#___str_2
      003029 7C 88            [12] 1155 	mov	r4,#(___str_2 >> 8)
      00302B 7D 80            [12] 1156 	mov	r5,#0x80
                                   1157 ;	calc.c:51: return;
      00302D                       1158 00146$:
                                   1159 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00302D 8B 82            [24] 1160 	mov	dpl,r3
      00302F 8C 83            [24] 1161 	mov	dph,r4
      003031 8D F0            [24] 1162 	mov	b,r5
      003033 12 6F B8         [24] 1163 	lcall	__gptrget
      003036 FA               [12] 1164 	mov	r2,a
      003037 60 10            [24] 1165 	jz	00124$
      003039 7E 00            [12] 1166 	mov	r6,#0x00
      00303B 8A 82            [24] 1167 	mov	dpl,r2
      00303D 8E 83            [24] 1168 	mov	dph,r6
      00303F 12 2C 1F         [24] 1169 	lcall	_putchar
      003042 0B               [12] 1170 	inc	r3
                                   1171 ;	calc.c:100: printstr("\r\n");
      003043 BB 00 E7         [24] 1172 	cjne	r3,#0x00,00146$
      003046 0C               [12] 1173 	inc	r4
      003047 80 E4            [24] 1174 	sjmp	00146$
      003049                       1175 00124$:
                                   1176 ;	calc.c:101: r = stack_pop(ctx->ps, &d);
      003049 C0 07            [24] 1177 	push	ar7
      00304B A8 08            [24] 1178 	mov	r0,_bp
      00304D 08               [12] 1179 	inc	r0
      00304E 86 03            [24] 1180 	mov	ar3,@r0
      003050 7C 00            [12] 1181 	mov	r4,#0x00
      003052 7D 40            [12] 1182 	mov	r5,#0x40
      003054 A8 08            [24] 1183 	mov	r0,_bp
      003056 08               [12] 1184 	inc	r0
      003057 08               [12] 1185 	inc	r0
      003058 86 82            [24] 1186 	mov	dpl,@r0
      00305A 08               [12] 1187 	inc	r0
      00305B 86 83            [24] 1188 	mov	dph,@r0
      00305D 08               [12] 1189 	inc	r0
      00305E 86 F0            [24] 1190 	mov	b,@r0
      003060 12 6F B8         [24] 1191 	lcall	__gptrget
      003063 FA               [12] 1192 	mov	r2,a
      003064 A3               [24] 1193 	inc	dptr
      003065 12 6F B8         [24] 1194 	lcall	__gptrget
      003068 FE               [12] 1195 	mov	r6,a
      003069 A3               [24] 1196 	inc	dptr
      00306A 12 6F B8         [24] 1197 	lcall	__gptrget
      00306D FF               [12] 1198 	mov	r7,a
      00306E C0 07            [24] 1199 	push	ar7
      003070 C0 03            [24] 1200 	push	ar3
      003072 C0 04            [24] 1201 	push	ar4
      003074 C0 05            [24] 1202 	push	ar5
      003076 8A 82            [24] 1203 	mov	dpl,r2
      003078 8E 83            [24] 1204 	mov	dph,r6
      00307A 8F F0            [24] 1205 	mov	b,r7
      00307C 12 27 B4         [24] 1206 	lcall	_stack_pop
      00307F AE 82            [24] 1207 	mov	r6,dpl
      003081 AD 83            [24] 1208 	mov	r5,dph
      003083 15 81            [12] 1209 	dec	sp
      003085 15 81            [12] 1210 	dec	sp
      003087 15 81            [12] 1211 	dec	sp
      003089 D0 07            [24] 1212 	pop	ar7
      00308B D0 07            [24] 1213 	pop	ar7
      00308D 02 2E E3         [24] 1214 	ljmp	00105$
      003090                       1215 00110$:
                                   1216 ;	calc.c:104: if (delta->event == EVENT_TERM) {
      003090 E5 08            [12] 1217 	mov	a,_bp
      003092 24 08            [12] 1218 	add	a,#0x08
      003094 F8               [12] 1219 	mov	r0,a
      003095 86 82            [24] 1220 	mov	dpl,@r0
      003097 08               [12] 1221 	inc	r0
      003098 86 83            [24] 1222 	mov	dph,@r0
      00309A 08               [12] 1223 	inc	r0
      00309B 86 F0            [24] 1224 	mov	b,@r0
      00309D 12 6F B8         [24] 1225 	lcall	__gptrget
      0030A0 FD               [12] 1226 	mov	r5,a
      0030A1 A3               [24] 1227 	inc	dptr
      0030A2 12 6F B8         [24] 1228 	lcall	__gptrget
      0030A5 FE               [12] 1229 	mov	r6,a
      0030A6 BD 08 05         [24] 1230 	cjne	r5,#0x08,00330$
      0030A9 BE 00 02         [24] 1231 	cjne	r6,#0x00,00330$
      0030AC 80 03            [24] 1232 	sjmp	00331$
      0030AE                       1233 00330$:
      0030AE 02 32 F7         [24] 1234 	ljmp	00113$
      0030B1                       1235 00331$:
                                   1236 ;	calc.c:105: printstr("\r\n");
      0030B1 7C 48            [12] 1237 	mov	r4,#___str_2
      0030B3 7D 88            [12] 1238 	mov	r5,#(___str_2 >> 8)
      0030B5 7E 80            [12] 1239 	mov	r6,#0x80
                                   1240 ;	calc.c:51: return;
      0030B7                       1241 00149$:
                                   1242 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0030B7 8C 82            [24] 1243 	mov	dpl,r4
      0030B9 8D 83            [24] 1244 	mov	dph,r5
      0030BB 8E F0            [24] 1245 	mov	b,r6
      0030BD 12 6F B8         [24] 1246 	lcall	__gptrget
      0030C0 FB               [12] 1247 	mov	r3,a
      0030C1 60 10            [24] 1248 	jz	00126$
      0030C3 7A 00            [12] 1249 	mov	r2,#0x00
      0030C5 8B 82            [24] 1250 	mov	dpl,r3
      0030C7 8A 83            [24] 1251 	mov	dph,r2
      0030C9 12 2C 1F         [24] 1252 	lcall	_putchar
      0030CC 0C               [12] 1253 	inc	r4
                                   1254 ;	calc.c:105: printstr("\r\n");
      0030CD BC 00 E7         [24] 1255 	cjne	r4,#0x00,00149$
      0030D0 0D               [12] 1256 	inc	r5
      0030D1 80 E4            [24] 1257 	sjmp	00149$
      0030D3                       1258 00126$:
                                   1259 ;	calc.c:106: for (r = stack_pop(ctx->ss, &d); r > 0; r = stack_pop(ctx->ss, &d)) {
      0030D3 8F 06            [24] 1260 	mov	ar6,r7
      0030D5 E5 08            [12] 1261 	mov	a,_bp
      0030D7 24 05            [12] 1262 	add	a,#0x05
      0030D9 F8               [12] 1263 	mov	r0,a
      0030DA A6 06            [24] 1264 	mov	@r0,ar6
      0030DC 08               [12] 1265 	inc	r0
      0030DD 76 00            [12] 1266 	mov	@r0,#0x00
      0030DF 08               [12] 1267 	inc	r0
      0030E0 76 40            [12] 1268 	mov	@r0,#0x40
      0030E2 E5 08            [12] 1269 	mov	a,_bp
      0030E4 24 0B            [12] 1270 	add	a,#0x0b
      0030E6 F8               [12] 1271 	mov	r0,a
      0030E7 E5 08            [12] 1272 	mov	a,_bp
      0030E9 24 08            [12] 1273 	add	a,#0x08
      0030EB F9               [12] 1274 	mov	r1,a
      0030EC 74 16            [12] 1275 	mov	a,#0x16
      0030EE 26               [12] 1276 	add	a,@r0
      0030EF F7               [12] 1277 	mov	@r1,a
      0030F0 74 40            [12] 1278 	mov	a,#0x40
      0030F2 08               [12] 1279 	inc	r0
      0030F3 36               [12] 1280 	addc	a,@r0
      0030F4 09               [12] 1281 	inc	r1
      0030F5 F7               [12] 1282 	mov	@r1,a
      0030F6 08               [12] 1283 	inc	r0
      0030F7 09               [12] 1284 	inc	r1
      0030F8 E6               [12] 1285 	mov	a,@r0
      0030F9 F7               [12] 1286 	mov	@r1,a
      0030FA E5 08            [12] 1287 	mov	a,_bp
      0030FC 24 08            [12] 1288 	add	a,#0x08
      0030FE F8               [12] 1289 	mov	r0,a
      0030FF 86 82            [24] 1290 	mov	dpl,@r0
      003101 08               [12] 1291 	inc	r0
      003102 86 83            [24] 1292 	mov	dph,@r0
      003104 08               [12] 1293 	inc	r0
      003105 86 F0            [24] 1294 	mov	b,@r0
      003107 12 6F B8         [24] 1295 	lcall	__gptrget
      00310A FA               [12] 1296 	mov	r2,a
      00310B A3               [24] 1297 	inc	dptr
      00310C 12 6F B8         [24] 1298 	lcall	__gptrget
      00310F FB               [12] 1299 	mov	r3,a
      003110 A3               [24] 1300 	inc	dptr
      003111 12 6F B8         [24] 1301 	lcall	__gptrget
      003114 FE               [12] 1302 	mov	r6,a
      003115 C0 07            [24] 1303 	push	ar7
      003117 E5 08            [12] 1304 	mov	a,_bp
      003119 24 05            [12] 1305 	add	a,#0x05
      00311B F8               [12] 1306 	mov	r0,a
      00311C E6               [12] 1307 	mov	a,@r0
      00311D C0 E0            [24] 1308 	push	acc
      00311F 08               [12] 1309 	inc	r0
      003120 E6               [12] 1310 	mov	a,@r0
      003121 C0 E0            [24] 1311 	push	acc
      003123 08               [12] 1312 	inc	r0
      003124 E6               [12] 1313 	mov	a,@r0
      003125 C0 E0            [24] 1314 	push	acc
      003127 8A 82            [24] 1315 	mov	dpl,r2
      003129 8B 83            [24] 1316 	mov	dph,r3
      00312B 8E F0            [24] 1317 	mov	b,r6
      00312D 12 27 B4         [24] 1318 	lcall	_stack_pop
      003130 AD 82            [24] 1319 	mov	r5,dpl
      003132 AE 83            [24] 1320 	mov	r6,dph
      003134 15 81            [12] 1321 	dec	sp
      003136 15 81            [12] 1322 	dec	sp
      003138 15 81            [12] 1323 	dec	sp
      00313A D0 07            [24] 1324 	pop	ar7
      00313C                       1325 00160$:
      00313C C3               [12] 1326 	clr	c
      00313D E4               [12] 1327 	clr	a
      00313E 9D               [12] 1328 	subb	a,r5
      00313F 74 80            [12] 1329 	mov	a,#(0x00 ^ 0x80)
      003141 8E F0            [24] 1330 	mov	b,r6
      003143 63 F0 80         [24] 1331 	xrl	b,#0x80
      003146 95 F0            [12] 1332 	subb	a,b
      003148 40 03            [24] 1333 	jc	00334$
      00314A 02 32 F7         [24] 1334 	ljmp	00113$
      00314D                       1335 00334$:
                                   1336 ;	calc.c:107: printstr("SSPA\t");
      00314D 7D 63            [12] 1337 	mov	r5,#___str_5
      00314F 7B 88            [12] 1338 	mov	r3,#(___str_5 >> 8)
      003151 7A 80            [12] 1339 	mov	r2,#0x80
                                   1340 ;	calc.c:51: return;
      003153                       1341 00152$:
                                   1342 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003153 8D 82            [24] 1343 	mov	dpl,r5
      003155 8B 83            [24] 1344 	mov	dph,r3
      003157 8A F0            [24] 1345 	mov	b,r2
      003159 12 6F B8         [24] 1346 	lcall	__gptrget
      00315C FE               [12] 1347 	mov	r6,a
      00315D 60 16            [24] 1348 	jz	00128$
      00315F C0 07            [24] 1349 	push	ar7
      003161 8E 04            [24] 1350 	mov	ar4,r6
      003163 7F 00            [12] 1351 	mov	r7,#0x00
      003165 8C 82            [24] 1352 	mov	dpl,r4
      003167 8F 83            [24] 1353 	mov	dph,r7
      003169 12 2C 1F         [24] 1354 	lcall	_putchar
      00316C 0D               [12] 1355 	inc	r5
      00316D BD 00 01         [24] 1356 	cjne	r5,#0x00,00336$
      003170 0B               [12] 1357 	inc	r3
      003171                       1358 00336$:
      003171 D0 07            [24] 1359 	pop	ar7
                                   1360 ;	calc.c:107: printstr("SSPA\t");
      003173 80 DE            [24] 1361 	sjmp	00152$
      003175                       1362 00128$:
                                   1363 ;	calc.c:108: printall(d);
      003175 C0 07            [24] 1364 	push	ar7
      003177 E5 08            [12] 1365 	mov	a,_bp
      003179 24 0E            [12] 1366 	add	a,#0x0e
      00317B F8               [12] 1367 	mov	r0,a
      00317C E5 08            [12] 1368 	mov	a,_bp
      00317E 24 12            [12] 1369 	add	a,#0x12
      003180 F9               [12] 1370 	mov	r1,a
      003181 E6               [12] 1371 	mov	a,@r0
      003182 F7               [12] 1372 	mov	@r1,a
      003183 08               [12] 1373 	inc	r0
      003184 09               [12] 1374 	inc	r1
      003185 E6               [12] 1375 	mov	a,@r0
      003186 F7               [12] 1376 	mov	@r1,a
      003187 08               [12] 1377 	inc	r0
      003188 09               [12] 1378 	inc	r1
      003189 E6               [12] 1379 	mov	a,@r0
      00318A F7               [12] 1380 	mov	@r1,a
      00318B 08               [12] 1381 	inc	r0
      00318C 09               [12] 1382 	inc	r1
      00318D E6               [12] 1383 	mov	a,@r0
      00318E F7               [12] 1384 	mov	@r1,a
      00318F E5 08            [12] 1385 	mov	a,_bp
      003191 24 12            [12] 1386 	add	a,#0x12
      003193 F8               [12] 1387 	mov	r0,a
      003194 86 02            [24] 1388 	mov	ar2,@r0
      003196 08               [12] 1389 	inc	r0
      003197 86 03            [24] 1390 	mov	ar3,@r0
      003199 08               [12] 1391 	inc	r0
      00319A 86 04            [24] 1392 	mov	ar4,@r0
      00319C 08               [12] 1393 	inc	r0
      00319D 86 07            [24] 1394 	mov	ar7,@r0
                                   1395 ;	calc.c:64: printf("% 11ld\t", d);
      00319F C0 07            [24] 1396 	push	ar7
      0031A1 C0 04            [24] 1397 	push	ar4
      0031A3 C0 03            [24] 1398 	push	ar3
      0031A5 C0 02            [24] 1399 	push	ar2
      0031A7 E5 08            [12] 1400 	mov	a,_bp
      0031A9 24 12            [12] 1401 	add	a,#0x12
      0031AB F8               [12] 1402 	mov	r0,a
      0031AC E6               [12] 1403 	mov	a,@r0
      0031AD C0 E0            [24] 1404 	push	acc
      0031AF 08               [12] 1405 	inc	r0
      0031B0 E6               [12] 1406 	mov	a,@r0
      0031B1 C0 E0            [24] 1407 	push	acc
      0031B3 08               [12] 1408 	inc	r0
      0031B4 E6               [12] 1409 	mov	a,@r0
      0031B5 C0 E0            [24] 1410 	push	acc
      0031B7 08               [12] 1411 	inc	r0
      0031B8 E6               [12] 1412 	mov	a,@r0
      0031B9 C0 E0            [24] 1413 	push	acc
      0031BB 74 39            [12] 1414 	mov	a,#___str_0
      0031BD C0 E0            [24] 1415 	push	acc
      0031BF 74 88            [12] 1416 	mov	a,#(___str_0 >> 8)
      0031C1 C0 E0            [24] 1417 	push	acc
      0031C3 74 80            [12] 1418 	mov	a,#0x80
      0031C5 C0 E0            [24] 1419 	push	acc
      0031C7 12 6F 7F         [24] 1420 	lcall	_printf
      0031CA E5 81            [12] 1421 	mov	a,sp
      0031CC 24 F9            [12] 1422 	add	a,#0xf9
      0031CE F5 81            [12] 1423 	mov	sp,a
      0031D0 D0 02            [24] 1424 	pop	ar2
      0031D2 D0 03            [24] 1425 	pop	ar3
      0031D4 D0 04            [24] 1426 	pop	ar4
      0031D6 D0 07            [24] 1427 	pop	ar7
                                   1428 ;	calc.c:65: printf("%08lx\t", d);
      0031D8 C0 07            [24] 1429 	push	ar7
      0031DA C0 04            [24] 1430 	push	ar4
      0031DC C0 03            [24] 1431 	push	ar3
      0031DE C0 02            [24] 1432 	push	ar2
      0031E0 C0 02            [24] 1433 	push	ar2
      0031E2 C0 03            [24] 1434 	push	ar3
      0031E4 C0 04            [24] 1435 	push	ar4
      0031E6 C0 07            [24] 1436 	push	ar7
      0031E8 74 41            [12] 1437 	mov	a,#___str_1
      0031EA C0 E0            [24] 1438 	push	acc
      0031EC 74 88            [12] 1439 	mov	a,#(___str_1 >> 8)
      0031EE C0 E0            [24] 1440 	push	acc
      0031F0 74 80            [12] 1441 	mov	a,#0x80
      0031F2 C0 E0            [24] 1442 	push	acc
      0031F4 12 6F 7F         [24] 1443 	lcall	_printf
      0031F7 E5 81            [12] 1444 	mov	a,sp
      0031F9 24 F9            [12] 1445 	add	a,#0xf9
      0031FB F5 81            [12] 1446 	mov	sp,a
      0031FD D0 02            [24] 1447 	pop	ar2
      0031FF D0 03            [24] 1448 	pop	ar3
      003201 D0 04            [24] 1449 	pop	ar4
      003203 D0 07            [24] 1450 	pop	ar7
                                   1451 ;	calc.c:66: printbin(d);
      003205 E5 08            [12] 1452 	mov	a,_bp
      003207 24 16            [12] 1453 	add	a,#0x16
      003209 F8               [12] 1454 	mov	r0,a
      00320A A6 02            [24] 1455 	mov	@r0,ar2
      00320C 08               [12] 1456 	inc	r0
      00320D A6 03            [24] 1457 	mov	@r0,ar3
      00320F 08               [12] 1458 	inc	r0
      003210 A6 04            [24] 1459 	mov	@r0,ar4
      003212 08               [12] 1460 	inc	r0
      003213 A6 07            [24] 1461 	mov	@r0,ar7
                                   1462 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      003215 E5 08            [12] 1463 	mov	a,_bp
      003217 24 1A            [12] 1464 	add	a,#0x1a
      003219 F8               [12] 1465 	mov	r0,a
      00321A E4               [12] 1466 	clr	a
      00321B F6               [12] 1467 	mov	@r0,a
      00321C 08               [12] 1468 	inc	r0
      00321D F6               [12] 1469 	mov	@r0,a
      00321E 08               [12] 1470 	inc	r0
      00321F F6               [12] 1471 	mov	@r0,a
      003220 08               [12] 1472 	inc	r0
      003221 76 80            [12] 1473 	mov	@r0,#0x80
                                   1474 ;	calc.c:113: return 1;
      003223 D0 07            [24] 1475 	pop	ar7
                                   1476 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      003225                       1477 00154$:
                                   1478 ;	calc.c:58: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      003225 C0 07            [24] 1479 	push	ar7
      003227 E5 08            [12] 1480 	mov	a,_bp
      003229 24 16            [12] 1481 	add	a,#0x16
      00322B F8               [12] 1482 	mov	r0,a
      00322C 86 02            [24] 1483 	mov	ar2,@r0
      00322E 08               [12] 1484 	inc	r0
      00322F 86 03            [24] 1485 	mov	ar3,@r0
      003231 08               [12] 1486 	inc	r0
      003232 86 04            [24] 1487 	mov	ar4,@r0
      003234 08               [12] 1488 	inc	r0
      003235 86 07            [24] 1489 	mov	ar7,@r0
      003237 E5 08            [12] 1490 	mov	a,_bp
      003239 24 1A            [12] 1491 	add	a,#0x1a
      00323B F8               [12] 1492 	mov	r0,a
      00323C E6               [12] 1493 	mov	a,@r0
      00323D 52 02            [12] 1494 	anl	ar2,a
      00323F 08               [12] 1495 	inc	r0
      003240 E6               [12] 1496 	mov	a,@r0
      003241 52 03            [12] 1497 	anl	ar3,a
      003243 08               [12] 1498 	inc	r0
      003244 E6               [12] 1499 	mov	a,@r0
      003245 52 04            [12] 1500 	anl	ar4,a
      003247 08               [12] 1501 	inc	r0
      003248 E6               [12] 1502 	mov	a,@r0
      003249 52 07            [12] 1503 	anl	ar7,a
      00324B EA               [12] 1504 	mov	a,r2
      00324C 4B               [12] 1505 	orl	a,r3
      00324D 4C               [12] 1506 	orl	a,r4
      00324E 4F               [12] 1507 	orl	a,r7
      00324F D0 07            [24] 1508 	pop	ar7
      003251 60 06            [24] 1509 	jz	00166$
      003253 7B 31            [12] 1510 	mov	r3,#0x31
      003255 7C 00            [12] 1511 	mov	r4,#0x00
      003257 80 04            [24] 1512 	sjmp	00167$
      003259                       1513 00166$:
      003259 7B 30            [12] 1514 	mov	r3,#0x30
      00325B 7C 00            [12] 1515 	mov	r4,#0x00
      00325D                       1516 00167$:
      00325D 8B 82            [24] 1517 	mov	dpl,r3
      00325F 8C 83            [24] 1518 	mov	dph,r4
      003261 12 2C 1F         [24] 1519 	lcall	_putchar
                                   1520 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      003264 E5 08            [12] 1521 	mov	a,_bp
      003266 24 1A            [12] 1522 	add	a,#0x1a
      003268 F8               [12] 1523 	mov	r0,a
      003269 08               [12] 1524 	inc	r0
      00326A 08               [12] 1525 	inc	r0
      00326B 08               [12] 1526 	inc	r0
      00326C E6               [12] 1527 	mov	a,@r0
      00326D C3               [12] 1528 	clr	c
      00326E 13               [12] 1529 	rrc	a
      00326F F6               [12] 1530 	mov	@r0,a
      003270 18               [12] 1531 	dec	r0
      003271 E6               [12] 1532 	mov	a,@r0
      003272 13               [12] 1533 	rrc	a
      003273 F6               [12] 1534 	mov	@r0,a
      003274 18               [12] 1535 	dec	r0
      003275 E6               [12] 1536 	mov	a,@r0
      003276 13               [12] 1537 	rrc	a
      003277 F6               [12] 1538 	mov	@r0,a
      003278 18               [12] 1539 	dec	r0
      003279 E6               [12] 1540 	mov	a,@r0
      00327A 13               [12] 1541 	rrc	a
      00327B F6               [12] 1542 	mov	@r0,a
      00327C E5 08            [12] 1543 	mov	a,_bp
      00327E 24 1A            [12] 1544 	add	a,#0x1a
      003280 F8               [12] 1545 	mov	r0,a
      003281 E6               [12] 1546 	mov	a,@r0
      003282 08               [12] 1547 	inc	r0
      003283 46               [12] 1548 	orl	a,@r0
      003284 08               [12] 1549 	inc	r0
      003285 46               [12] 1550 	orl	a,@r0
      003286 08               [12] 1551 	inc	r0
      003287 46               [12] 1552 	orl	a,@r0
      003288 70 9B            [24] 1553 	jnz	00154$
                                   1554 ;	calc.c:109: printstr("\r\n");
      00328A 7D 48            [12] 1555 	mov	r5,#___str_2
      00328C 7B 88            [12] 1556 	mov	r3,#(___str_2 >> 8)
      00328E 7A 80            [12] 1557 	mov	r2,#0x80
                                   1558 ;	calc.c:51: return;
      003290                       1559 00157$:
                                   1560 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003290 8D 82            [24] 1561 	mov	dpl,r5
      003292 8B 83            [24] 1562 	mov	dph,r3
      003294 8A F0            [24] 1563 	mov	b,r2
      003296 12 6F B8         [24] 1564 	lcall	__gptrget
      003299 FE               [12] 1565 	mov	r6,a
      00329A 60 16            [24] 1566 	jz	00133$
      00329C C0 07            [24] 1567 	push	ar7
      00329E 8E 04            [24] 1568 	mov	ar4,r6
      0032A0 7F 00            [12] 1569 	mov	r7,#0x00
      0032A2 8C 82            [24] 1570 	mov	dpl,r4
      0032A4 8F 83            [24] 1571 	mov	dph,r7
      0032A6 12 2C 1F         [24] 1572 	lcall	_putchar
      0032A9 0D               [12] 1573 	inc	r5
      0032AA BD 00 01         [24] 1574 	cjne	r5,#0x00,00340$
      0032AD 0B               [12] 1575 	inc	r3
      0032AE                       1576 00340$:
      0032AE D0 07            [24] 1577 	pop	ar7
                                   1578 ;	calc.c:109: printstr("\r\n");
      0032B0 80 DE            [24] 1579 	sjmp	00157$
      0032B2                       1580 00133$:
                                   1581 ;	calc.c:106: for (r = stack_pop(ctx->ss, &d); r > 0; r = stack_pop(ctx->ss, &d)) {
      0032B2 8F 06            [24] 1582 	mov	ar6,r7
      0032B4 7D 00            [12] 1583 	mov	r5,#0x00
      0032B6 7A 40            [12] 1584 	mov	r2,#0x40
      0032B8 C0 07            [24] 1585 	push	ar7
      0032BA E5 08            [12] 1586 	mov	a,_bp
      0032BC 24 08            [12] 1587 	add	a,#0x08
      0032BE F8               [12] 1588 	mov	r0,a
      0032BF 86 82            [24] 1589 	mov	dpl,@r0
      0032C1 08               [12] 1590 	inc	r0
      0032C2 86 83            [24] 1591 	mov	dph,@r0
      0032C4 08               [12] 1592 	inc	r0
      0032C5 86 F0            [24] 1593 	mov	b,@r0
      0032C7 12 6F B8         [24] 1594 	lcall	__gptrget
      0032CA FB               [12] 1595 	mov	r3,a
      0032CB A3               [24] 1596 	inc	dptr
      0032CC 12 6F B8         [24] 1597 	lcall	__gptrget
      0032CF FC               [12] 1598 	mov	r4,a
      0032D0 A3               [24] 1599 	inc	dptr
      0032D1 12 6F B8         [24] 1600 	lcall	__gptrget
      0032D4 FF               [12] 1601 	mov	r7,a
      0032D5 C0 06            [24] 1602 	push	ar6
      0032D7 C0 05            [24] 1603 	push	ar5
      0032D9 C0 02            [24] 1604 	push	ar2
      0032DB 8B 82            [24] 1605 	mov	dpl,r3
      0032DD 8C 83            [24] 1606 	mov	dph,r4
      0032DF 8F F0            [24] 1607 	mov	b,r7
      0032E1 12 27 B4         [24] 1608 	lcall	_stack_pop
      0032E4 AC 82            [24] 1609 	mov	r4,dpl
      0032E6 AF 83            [24] 1610 	mov	r7,dph
      0032E8 15 81            [12] 1611 	dec	sp
      0032EA 15 81            [12] 1612 	dec	sp
      0032EC 15 81            [12] 1613 	dec	sp
      0032EE 8C 05            [24] 1614 	mov	ar5,r4
      0032F0 8F 06            [24] 1615 	mov	ar6,r7
      0032F2 D0 07            [24] 1616 	pop	ar7
      0032F4 02 31 3C         [24] 1617 	ljmp	00160$
      0032F7                       1618 00113$:
                                   1619 ;	calc.c:113: return 1;
      0032F7 90 00 01         [24] 1620 	mov	dptr,#0x0001
                                   1621 ;	calc.c:114: }
      0032FA 85 08 81         [24] 1622 	mov	sp,_bp
      0032FD D0 08            [24] 1623 	pop	_bp
      0032FF 22               [24] 1624 	ret
                                   1625 ;------------------------------------------------------------
                                   1626 ;Allocation info for local variables in function 'dump_peek'
                                   1627 ;------------------------------------------------------------
                                   1628 ;d                         Allocated to stack - _bp -6
                                   1629 ;_ctx                      Allocated to registers 
                                   1630 ;__1310720021              Allocated to registers 
                                   1631 ;s                         Allocated to registers r5 r6 r7 
                                   1632 ;__1310720023              Allocated to registers r4 r5 r6 r7 
                                   1633 ;d                         Allocated to registers 
                                   1634 ;__1310720001              Allocated to registers 
                                   1635 ;d                         Allocated to stack - _bp +1
                                   1636 ;mask                      Allocated to stack - _bp +5
                                   1637 ;__1310720025              Allocated to registers 
                                   1638 ;s                         Allocated to registers r5 r6 r7 
                                   1639 ;------------------------------------------------------------
                                   1640 ;	calc.c:116: static int dump_peek(void *_ctx, long d) __reentrant {
                                   1641 ;	-----------------------------------------
                                   1642 ;	 function dump_peek
                                   1643 ;	-----------------------------------------
      003300                       1644 _dump_peek:
      003300 C0 08            [24] 1645 	push	_bp
      003302 E5 81            [12] 1646 	mov	a,sp
      003304 F5 08            [12] 1647 	mov	_bp,a
      003306 24 08            [12] 1648 	add	a,#0x08
      003308 F5 81            [12] 1649 	mov	sp,a
                                   1650 ;	calc.c:119: printstr("PSVA\t");
      00330A 7D 69            [12] 1651 	mov	r5,#___str_6
      00330C 7E 88            [12] 1652 	mov	r6,#(___str_6 >> 8)
      00330E 7F 80            [12] 1653 	mov	r7,#0x80
                                   1654 ;	calc.c:51: return;
      003310                       1655 00109$:
                                   1656 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003310 8D 82            [24] 1657 	mov	dpl,r5
      003312 8E 83            [24] 1658 	mov	dph,r6
      003314 8F F0            [24] 1659 	mov	b,r7
      003316 12 6F B8         [24] 1660 	lcall	__gptrget
      003319 FC               [12] 1661 	mov	r4,a
      00331A 60 10            [24] 1662 	jz	00102$
      00331C 7B 00            [12] 1663 	mov	r3,#0x00
      00331E 8C 82            [24] 1664 	mov	dpl,r4
      003320 8B 83            [24] 1665 	mov	dph,r3
      003322 12 2C 1F         [24] 1666 	lcall	_putchar
      003325 0D               [12] 1667 	inc	r5
                                   1668 ;	calc.c:119: printstr("PSVA\t");
      003326 BD 00 E7         [24] 1669 	cjne	r5,#0x00,00109$
      003329 0E               [12] 1670 	inc	r6
      00332A 80 E4            [24] 1671 	sjmp	00109$
      00332C                       1672 00102$:
                                   1673 ;	calc.c:120: printall(d);
      00332C E5 08            [12] 1674 	mov	a,_bp
      00332E 24 FA            [12] 1675 	add	a,#0xfa
      003330 F8               [12] 1676 	mov	r0,a
      003331 86 04            [24] 1677 	mov	ar4,@r0
      003333 08               [12] 1678 	inc	r0
      003334 86 05            [24] 1679 	mov	ar5,@r0
      003336 08               [12] 1680 	inc	r0
      003337 86 06            [24] 1681 	mov	ar6,@r0
      003339 08               [12] 1682 	inc	r0
      00333A 86 07            [24] 1683 	mov	ar7,@r0
                                   1684 ;	calc.c:64: printf("% 11ld\t", d);
      00333C C0 07            [24] 1685 	push	ar7
      00333E C0 06            [24] 1686 	push	ar6
      003340 C0 05            [24] 1687 	push	ar5
      003342 C0 04            [24] 1688 	push	ar4
      003344 C0 04            [24] 1689 	push	ar4
      003346 C0 05            [24] 1690 	push	ar5
      003348 C0 06            [24] 1691 	push	ar6
      00334A C0 07            [24] 1692 	push	ar7
      00334C 74 39            [12] 1693 	mov	a,#___str_0
      00334E C0 E0            [24] 1694 	push	acc
      003350 74 88            [12] 1695 	mov	a,#(___str_0 >> 8)
      003352 C0 E0            [24] 1696 	push	acc
      003354 74 80            [12] 1697 	mov	a,#0x80
      003356 C0 E0            [24] 1698 	push	acc
      003358 12 6F 7F         [24] 1699 	lcall	_printf
      00335B E5 81            [12] 1700 	mov	a,sp
      00335D 24 F9            [12] 1701 	add	a,#0xf9
      00335F F5 81            [12] 1702 	mov	sp,a
      003361 D0 04            [24] 1703 	pop	ar4
      003363 D0 05            [24] 1704 	pop	ar5
      003365 D0 06            [24] 1705 	pop	ar6
      003367 D0 07            [24] 1706 	pop	ar7
                                   1707 ;	calc.c:65: printf("%08lx\t", d);
      003369 C0 07            [24] 1708 	push	ar7
      00336B C0 06            [24] 1709 	push	ar6
      00336D C0 05            [24] 1710 	push	ar5
      00336F C0 04            [24] 1711 	push	ar4
      003371 C0 04            [24] 1712 	push	ar4
      003373 C0 05            [24] 1713 	push	ar5
      003375 C0 06            [24] 1714 	push	ar6
      003377 C0 07            [24] 1715 	push	ar7
      003379 74 41            [12] 1716 	mov	a,#___str_1
      00337B C0 E0            [24] 1717 	push	acc
      00337D 74 88            [12] 1718 	mov	a,#(___str_1 >> 8)
      00337F C0 E0            [24] 1719 	push	acc
      003381 74 80            [12] 1720 	mov	a,#0x80
      003383 C0 E0            [24] 1721 	push	acc
      003385 12 6F 7F         [24] 1722 	lcall	_printf
      003388 E5 81            [12] 1723 	mov	a,sp
      00338A 24 F9            [12] 1724 	add	a,#0xf9
      00338C F5 81            [12] 1725 	mov	sp,a
      00338E D0 04            [24] 1726 	pop	ar4
      003390 D0 05            [24] 1727 	pop	ar5
      003392 D0 06            [24] 1728 	pop	ar6
      003394 D0 07            [24] 1729 	pop	ar7
                                   1730 ;	calc.c:66: printbin(d);
      003396 A8 08            [24] 1731 	mov	r0,_bp
      003398 08               [12] 1732 	inc	r0
      003399 A6 04            [24] 1733 	mov	@r0,ar4
      00339B 08               [12] 1734 	inc	r0
      00339C A6 05            [24] 1735 	mov	@r0,ar5
      00339E 08               [12] 1736 	inc	r0
      00339F A6 06            [24] 1737 	mov	@r0,ar6
      0033A1 08               [12] 1738 	inc	r0
      0033A2 A6 07            [24] 1739 	mov	@r0,ar7
                                   1740 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      0033A4 E5 08            [12] 1741 	mov	a,_bp
      0033A6 24 05            [12] 1742 	add	a,#0x05
      0033A8 F8               [12] 1743 	mov	r0,a
      0033A9 E4               [12] 1744 	clr	a
      0033AA F6               [12] 1745 	mov	@r0,a
      0033AB 08               [12] 1746 	inc	r0
      0033AC F6               [12] 1747 	mov	@r0,a
      0033AD 08               [12] 1748 	inc	r0
      0033AE F6               [12] 1749 	mov	@r0,a
      0033AF 08               [12] 1750 	inc	r0
      0033B0 76 80            [12] 1751 	mov	@r0,#0x80
      0033B2                       1752 00111$:
                                   1753 ;	calc.c:58: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      0033B2 A8 08            [24] 1754 	mov	r0,_bp
      0033B4 08               [12] 1755 	inc	r0
      0033B5 86 04            [24] 1756 	mov	ar4,@r0
      0033B7 08               [12] 1757 	inc	r0
      0033B8 86 05            [24] 1758 	mov	ar5,@r0
      0033BA 08               [12] 1759 	inc	r0
      0033BB 86 06            [24] 1760 	mov	ar6,@r0
      0033BD 08               [12] 1761 	inc	r0
      0033BE 86 07            [24] 1762 	mov	ar7,@r0
      0033C0 E5 08            [12] 1763 	mov	a,_bp
      0033C2 24 05            [12] 1764 	add	a,#0x05
      0033C4 F8               [12] 1765 	mov	r0,a
      0033C5 E6               [12] 1766 	mov	a,@r0
      0033C6 52 04            [12] 1767 	anl	ar4,a
      0033C8 08               [12] 1768 	inc	r0
      0033C9 E6               [12] 1769 	mov	a,@r0
      0033CA 52 05            [12] 1770 	anl	ar5,a
      0033CC 08               [12] 1771 	inc	r0
      0033CD E6               [12] 1772 	mov	a,@r0
      0033CE 52 06            [12] 1773 	anl	ar6,a
      0033D0 08               [12] 1774 	inc	r0
      0033D1 E6               [12] 1775 	mov	a,@r0
      0033D2 52 07            [12] 1776 	anl	ar7,a
      0033D4 EC               [12] 1777 	mov	a,r4
      0033D5 4D               [12] 1778 	orl	a,r5
      0033D6 4E               [12] 1779 	orl	a,r6
      0033D7 4F               [12] 1780 	orl	a,r7
      0033D8 60 06            [24] 1781 	jz	00118$
      0033DA 7E 31            [12] 1782 	mov	r6,#0x31
      0033DC 7F 00            [12] 1783 	mov	r7,#0x00
      0033DE 80 04            [24] 1784 	sjmp	00119$
      0033E0                       1785 00118$:
      0033E0 7E 30            [12] 1786 	mov	r6,#0x30
      0033E2 7F 00            [12] 1787 	mov	r7,#0x00
      0033E4                       1788 00119$:
      0033E4 8E 82            [24] 1789 	mov	dpl,r6
      0033E6 8F 83            [24] 1790 	mov	dph,r7
      0033E8 12 2C 1F         [24] 1791 	lcall	_putchar
                                   1792 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      0033EB E5 08            [12] 1793 	mov	a,_bp
      0033ED 24 05            [12] 1794 	add	a,#0x05
      0033EF F8               [12] 1795 	mov	r0,a
      0033F0 08               [12] 1796 	inc	r0
      0033F1 08               [12] 1797 	inc	r0
      0033F2 08               [12] 1798 	inc	r0
      0033F3 E6               [12] 1799 	mov	a,@r0
      0033F4 C3               [12] 1800 	clr	c
      0033F5 13               [12] 1801 	rrc	a
      0033F6 F6               [12] 1802 	mov	@r0,a
      0033F7 18               [12] 1803 	dec	r0
      0033F8 E6               [12] 1804 	mov	a,@r0
      0033F9 13               [12] 1805 	rrc	a
      0033FA F6               [12] 1806 	mov	@r0,a
      0033FB 18               [12] 1807 	dec	r0
      0033FC E6               [12] 1808 	mov	a,@r0
      0033FD 13               [12] 1809 	rrc	a
      0033FE F6               [12] 1810 	mov	@r0,a
      0033FF 18               [12] 1811 	dec	r0
      003400 E6               [12] 1812 	mov	a,@r0
      003401 13               [12] 1813 	rrc	a
      003402 F6               [12] 1814 	mov	@r0,a
      003403 E5 08            [12] 1815 	mov	a,_bp
      003405 24 05            [12] 1816 	add	a,#0x05
      003407 F8               [12] 1817 	mov	r0,a
      003408 E6               [12] 1818 	mov	a,@r0
      003409 08               [12] 1819 	inc	r0
      00340A 46               [12] 1820 	orl	a,@r0
      00340B 08               [12] 1821 	inc	r0
      00340C 46               [12] 1822 	orl	a,@r0
      00340D 08               [12] 1823 	inc	r0
      00340E 46               [12] 1824 	orl	a,@r0
      00340F 70 A1            [24] 1825 	jnz	00111$
                                   1826 ;	calc.c:121: printstr("\r\n");
      003411 7D 48            [12] 1827 	mov	r5,#___str_2
      003413 7E 88            [12] 1828 	mov	r6,#(___str_2 >> 8)
      003415 7F 80            [12] 1829 	mov	r7,#0x80
                                   1830 ;	calc.c:51: return;
      003417                       1831 00114$:
                                   1832 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003417 8D 82            [24] 1833 	mov	dpl,r5
      003419 8E 83            [24] 1834 	mov	dph,r6
      00341B 8F F0            [24] 1835 	mov	b,r7
      00341D 12 6F B8         [24] 1836 	lcall	__gptrget
      003420 FC               [12] 1837 	mov	r4,a
      003421 60 10            [24] 1838 	jz	00107$
      003423 7B 00            [12] 1839 	mov	r3,#0x00
      003425 8C 82            [24] 1840 	mov	dpl,r4
      003427 8B 83            [24] 1841 	mov	dph,r3
      003429 12 2C 1F         [24] 1842 	lcall	_putchar
      00342C 0D               [12] 1843 	inc	r5
                                   1844 ;	calc.c:121: printstr("\r\n");
      00342D BD 00 E7         [24] 1845 	cjne	r5,#0x00,00114$
      003430 0E               [12] 1846 	inc	r6
      003431 80 E4            [24] 1847 	sjmp	00114$
      003433                       1848 00107$:
                                   1849 ;	calc.c:123: return 1;
      003433 90 00 01         [24] 1850 	mov	dptr,#0x0001
                                   1851 ;	calc.c:124: }
      003436 85 08 81         [24] 1852 	mov	sp,_bp
      003439 D0 08            [24] 1853 	pop	_bp
      00343B 22               [24] 1854 	ret
                                   1855 ;------------------------------------------------------------
                                   1856 ;Allocation info for local variables in function 'operator'
                                   1857 ;------------------------------------------------------------
                                   1858 ;delta                     Allocated to stack - _bp -5
                                   1859 ;_ctx                      Allocated to stack - _bp +1
                                   1860 ;ctx                       Allocated to stack - _bp +18
                                   1861 ;t0                        Allocated to registers r7 r6 r5 
                                   1862 ;d0                        Allocated to stack - _bp +21
                                   1863 ;d1                        Allocated to stack - _bp +25
                                   1864 ;__1966080027              Allocated to registers 
                                   1865 ;s                         Allocated to registers r7 r6 r5 
                                   1866 ;__1966080029              Allocated to registers 
                                   1867 ;s                         Allocated to registers r7 r6 r5 
                                   1868 ;__2621440031              Allocated to registers 
                                   1869 ;s                         Allocated to registers r7 r6 r5 
                                   1870 ;__2621440033              Allocated to registers r7 r6 r5 r4 
                                   1871 ;d                         Allocated to stack - _bp +29
                                   1872 ;__1310720001              Allocated to registers 
                                   1873 ;d                         Allocated to registers r7 r6 r5 r2 
                                   1874 ;mask                      Allocated to stack - _bp +33
                                   1875 ;__2621440035              Allocated to registers 
                                   1876 ;s                         Allocated to registers r7 r6 r5 
                                   1877 ;__1966080037              Allocated to registers 
                                   1878 ;s                         Allocated to registers r7 r6 r5 
                                   1879 ;__1966080039              Allocated to registers 
                                   1880 ;s                         Allocated to registers r7 r6 r5 
                                   1881 ;__1966080041              Allocated to registers 
                                   1882 ;s                         Allocated to registers r7 r6 r5 
                                   1883 ;__1966080043              Allocated to registers 
                                   1884 ;s                         Allocated to registers r7 r6 r5 
                                   1885 ;__2621440045              Allocated to registers 
                                   1886 ;s                         Allocated to registers r7 r6 r5 
                                   1887 ;__2621440047              Allocated to registers r7 r6 r5 r4 
                                   1888 ;d                         Allocated to stack - _bp +29
                                   1889 ;__1310720001              Allocated to registers 
                                   1890 ;d                         Allocated to registers r7 r6 r5 r2 
                                   1891 ;mask                      Allocated to stack - _bp +33
                                   1892 ;__2621440049              Allocated to registers 
                                   1893 ;s                         Allocated to registers r7 r6 r5 
                                   1894 ;__1966080051              Allocated to registers 
                                   1895 ;s                         Allocated to registers r7 r6 r5 
                                   1896 ;__1966080053              Allocated to registers 
                                   1897 ;s                         Allocated to registers r7 r6 r5 
                                   1898 ;__2621440055              Allocated to registers 
                                   1899 ;s                         Allocated to registers r7 r6 r5 
                                   1900 ;__1966080057              Allocated to registers 
                                   1901 ;s                         Allocated to registers r7 r6 r5 
                                   1902 ;__3276800059              Allocated to registers 
                                   1903 ;s                         Allocated to registers r7 r6 r5 
                                   1904 ;__1966080061              Allocated to registers 
                                   1905 ;s                         Allocated to registers r7 r6 r5 
                                   1906 ;__3276800063              Allocated to registers 
                                   1907 ;s                         Allocated to registers r7 r6 r5 
                                   1908 ;__1966080065              Allocated to registers 
                                   1909 ;s                         Allocated to registers r7 r6 r5 
                                   1910 ;__1966080067              Allocated to registers 
                                   1911 ;s                         Allocated to registers r7 r6 r5 
                                   1912 ;__1966080069              Allocated to registers 
                                   1913 ;s                         Allocated to registers r7 r6 r5 
                                   1914 ;__1966080071              Allocated to registers 
                                   1915 ;s                         Allocated to registers r7 r6 r5 
                                   1916 ;__1966080073              Allocated to registers 
                                   1917 ;s                         Allocated to registers r7 r6 r5 
                                   1918 ;__3276800075              Allocated to registers 
                                   1919 ;s                         Allocated to registers r7 r6 r5 
                                   1920 ;__1966080077              Allocated to registers 
                                   1921 ;s                         Allocated to registers r7 r6 r5 
                                   1922 ;__2621440079              Allocated to registers 
                                   1923 ;s                         Allocated to registers r7 r6 r5 
                                   1924 ;__1966080081              Allocated to registers 
                                   1925 ;s                         Allocated to registers r7 r6 r5 
                                   1926 ;__2621440083              Allocated to registers 
                                   1927 ;s                         Allocated to registers r7 r6 r5 
                                   1928 ;__1966080085              Allocated to registers 
                                   1929 ;s                         Allocated to registers r7 r6 r5 
                                   1930 ;__2621440087              Allocated to registers 
                                   1931 ;s                         Allocated to registers r7 r6 r5 
                                   1932 ;__1966080089              Allocated to registers 
                                   1933 ;s                         Allocated to registers r7 r6 r5 
                                   1934 ;__2621440091              Allocated to registers 
                                   1935 ;s                         Allocated to registers r7 r6 r5 
                                   1936 ;__2621440093              Allocated to registers 
                                   1937 ;s                         Allocated to registers r7 r6 r5 
                                   1938 ;__1966080095              Allocated to registers 
                                   1939 ;s                         Allocated to registers r7 r6 r5 
                                   1940 ;__2621440097              Allocated to registers 
                                   1941 ;s                         Allocated to registers r7 r6 r5 
                                   1942 ;__2621440099              Allocated to registers 
                                   1943 ;s                         Allocated to registers r7 r6 r5 
                                   1944 ;__1966080101              Allocated to registers 
                                   1945 ;s                         Allocated to registers r5 r4 r3 
                                   1946 ;__2621440103              Allocated to registers 
                                   1947 ;s                         Allocated to registers r5 r4 r3 
                                   1948 ;__1966080105              Allocated to registers 
                                   1949 ;s                         Allocated to registers r5 r4 r3 
                                   1950 ;__2621440107              Allocated to registers 
                                   1951 ;s                         Allocated to registers r5 r4 r3 
                                   1952 ;__1966080109              Allocated to registers 
                                   1953 ;s                         Allocated to registers r5 r4 r3 
                                   1954 ;__2621440111              Allocated to registers 
                                   1955 ;s                         Allocated to registers r5 r4 r3 
                                   1956 ;__1966080113              Allocated to registers 
                                   1957 ;s                         Allocated to registers r5 r4 r3 
                                   1958 ;__2621440115              Allocated to registers 
                                   1959 ;s                         Allocated to registers r5 r4 r3 
                                   1960 ;__1966080117              Allocated to registers 
                                   1961 ;s                         Allocated to registers r5 r4 r3 
                                   1962 ;__2621440119              Allocated to registers 
                                   1963 ;s                         Allocated to registers r5 r4 r3 
                                   1964 ;__1966080121              Allocated to registers 
                                   1965 ;s                         Allocated to registers r5 r4 r3 
                                   1966 ;__2621440123              Allocated to registers 
                                   1967 ;s                         Allocated to registers r5 r4 r3 
                                   1968 ;__1966080125              Allocated to registers 
                                   1969 ;s                         Allocated to registers r5 r4 r3 
                                   1970 ;sloc0                     Allocated to stack - _bp +346
                                   1971 ;sloc1                     Allocated to stack - _bp +4
                                   1972 ;sloc2                     Allocated to stack - _bp +7
                                   1973 ;sloc3                     Allocated to stack - _bp +11
                                   1974 ;sloc4                     Allocated to stack - _bp +14
                                   1975 ;------------------------------------------------------------
                                   1976 ;	calc.c:126: static int operator(void *_ctx, delta_t *delta) __reentrant {
                                   1977 ;	-----------------------------------------
                                   1978 ;	 function operator
                                   1979 ;	-----------------------------------------
      00343C                       1980 _operator:
      00343C C0 08            [24] 1981 	push	_bp
      00343E 85 81 08         [24] 1982 	mov	_bp,sp
      003441 C0 82            [24] 1983 	push	dpl
      003443 C0 83            [24] 1984 	push	dph
      003445 C0 F0            [24] 1985 	push	b
      003447 E5 81            [12] 1986 	mov	a,sp
      003449 24 21            [12] 1987 	add	a,#0x21
      00344B F5 81            [12] 1988 	mov	sp,a
                                   1989 ;	calc.c:127: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
      00344D A8 08            [24] 1990 	mov	r0,_bp
      00344F 08               [12] 1991 	inc	r0
      003450 E5 08            [12] 1992 	mov	a,_bp
      003452 24 12            [12] 1993 	add	a,#0x12
      003454 F9               [12] 1994 	mov	r1,a
      003455 E6               [12] 1995 	mov	a,@r0
      003456 F7               [12] 1996 	mov	@r1,a
      003457 08               [12] 1997 	inc	r0
      003458 09               [12] 1998 	inc	r1
      003459 E6               [12] 1999 	mov	a,@r0
      00345A F7               [12] 2000 	mov	@r1,a
      00345B 08               [12] 2001 	inc	r0
      00345C 09               [12] 2002 	inc	r1
      00345D E6               [12] 2003 	mov	a,@r0
      00345E F7               [12] 2004 	mov	@r1,a
                                   2005 ;	calc.c:131: switch (ctx->digit[0]) {
      00345F E5 08            [12] 2006 	mov	a,_bp
      003461 24 12            [12] 2007 	add	a,#0x12
      003463 F8               [12] 2008 	mov	r0,a
      003464 74 07            [12] 2009 	mov	a,#0x07
      003466 26               [12] 2010 	add	a,@r0
      003467 FD               [12] 2011 	mov	r5,a
      003468 E4               [12] 2012 	clr	a
      003469 08               [12] 2013 	inc	r0
      00346A 36               [12] 2014 	addc	a,@r0
      00346B FE               [12] 2015 	mov	r6,a
      00346C 08               [12] 2016 	inc	r0
      00346D 86 07            [24] 2017 	mov	ar7,@r0
      00346F 8D 82            [24] 2018 	mov	dpl,r5
      003471 8E 83            [24] 2019 	mov	dph,r6
      003473 8F F0            [24] 2020 	mov	b,r7
      003475 12 6F B8         [24] 2021 	lcall	__gptrget
      003478 FC               [12] 2022 	mov	r4,a
      003479 BC 23 03         [24] 2023 	cjne	r4,#0x23,01234$
      00347C 02 49 59         [24] 2024 	ljmp	00189$
      00347F                       2025 01234$:
      00347F BC 25 03         [24] 2026 	cjne	r4,#0x25,01235$
      003482 02 49 59         [24] 2027 	ljmp	00189$
      003485                       2028 01235$:
      003485 BC 26 03         [24] 2029 	cjne	r4,#0x26,01236$
      003488 02 4C 3F         [24] 2030 	ljmp	00202$
      00348B                       2031 01236$:
      00348B BC 2A 03         [24] 2032 	cjne	r4,#0x2a,01237$
      00348E 02 44 C9         [24] 2033 	ljmp	00167$
      003491                       2034 01237$:
      003491 BC 2B 03         [24] 2035 	cjne	r4,#0x2b,01238$
      003494 02 41 CA         [24] 2036 	ljmp	00153$
      003497                       2037 01238$:
      003497 BC 2D 03         [24] 2038 	cjne	r4,#0x2d,01239$
      00349A 02 43 49         [24] 2039 	ljmp	00160$
      00349D                       2040 01239$:
      00349D BC 2E 03         [24] 2041 	cjne	r4,#0x2e,01240$
      0034A0 02 37 85         [24] 2042 	ljmp	00109$
      0034A3                       2043 01240$:
      0034A3 BC 2F 03         [24] 2044 	cjne	r4,#0x2f,01241$
      0034A6 02 46 6F         [24] 2045 	ljmp	00175$
      0034A9                       2046 01241$:
      0034A9 BC 3C 03         [24] 2047 	cjne	r4,#0x3c,01242$
      0034AC 02 54 5A         [24] 2048 	ljmp	00237$
      0034AF                       2049 01242$:
      0034AF BC 3E 03         [24] 2050 	cjne	r4,#0x3e,01243$
      0034B2 02 51 0D         [24] 2051 	ljmp	00223$
      0034B5                       2052 01243$:
      0034B5 BC 4D 03         [24] 2053 	cjne	r4,#0x4d,01244$
      0034B8 02 3C 70         [24] 2054 	ljmp	00127$
      0034BB                       2055 01244$:
      0034BB BC 50 03         [24] 2056 	cjne	r4,#0x50,01245$
      0034BE 02 39 52         [24] 2057 	ljmp	00113$
      0034C1                       2058 01245$:
      0034C1 BC 54 03         [24] 2059 	cjne	r4,#0x54,01246$
      0034C4 02 3F 72         [24] 2060 	ljmp	00145$
      0034C7                       2061 01246$:
      0034C7 BC 55 03         [24] 2062 	cjne	r4,#0x55,01247$
      0034CA 02 3E 8B         [24] 2063 	ljmp	00139$
      0034CD                       2064 01247$:
      0034CD BC 56 03         [24] 2065 	cjne	r4,#0x56,01248$
      0034D0 02 36 E4         [24] 2066 	ljmp	00105$
      0034D3                       2067 01248$:
      0034D3 BC 58 03         [24] 2068 	cjne	r4,#0x58,01249$
      0034D6 02 41 2B         [24] 2069 	ljmp	00152$
      0034D9                       2070 01249$:
      0034D9 BC 5C 03         [24] 2071 	cjne	r4,#0x5c,01250$
      0034DC 02 46 6F         [24] 2072 	ljmp	00175$
      0034DF                       2073 01250$:
      0034DF BC 5D 03         [24] 2074 	cjne	r4,#0x5d,01251$
      0034E2 02 52 AB         [24] 2075 	ljmp	00230$
      0034E5                       2076 01251$:
      0034E5 BC 5E 03         [24] 2077 	cjne	r4,#0x5e,01252$
      0034E8 02 4F 73         [24] 2078 	ljmp	00216$
      0034EB                       2079 01252$:
      0034EB BC 6D 03         [24] 2080 	cjne	r4,#0x6d,01253$
      0034EE 02 3B 3C         [24] 2081 	ljmp	00121$
      0034F1                       2082 01253$:
      0034F1 BC 70 03         [24] 2083 	cjne	r4,#0x70,01254$
      0034F4 02 37 85         [24] 2084 	ljmp	00109$
      0034F7                       2085 01254$:
      0034F7 BC 75 03         [24] 2086 	cjne	r4,#0x75,01255$
      0034FA 02 3D A4         [24] 2087 	ljmp	00133$
      0034FD                       2088 01255$:
      0034FD BC 76 02         [24] 2089 	cjne	r4,#0x76,01256$
      003500 80 15            [24] 2090 	sjmp	00101$
      003502                       2091 01256$:
      003502 BC 78 03         [24] 2092 	cjne	r4,#0x78,01257$
      003505 02 39 9B         [24] 2093 	ljmp	00114$
      003508                       2094 01257$:
      003508 BC 7C 03         [24] 2095 	cjne	r4,#0x7c,01258$
      00350B 02 4D D9         [24] 2096 	ljmp	00209$
      00350E                       2097 01258$:
      00350E BC 7E 03         [24] 2098 	cjne	r4,#0x7e,01259$
      003511 02 55 FD         [24] 2099 	ljmp	00244$
      003514                       2100 01259$:
      003514 02 56 D6         [24] 2101 	ljmp	00248$
                                   2102 ;	calc.c:132: case 'v':
      003517                       2103 00101$:
                                   2104 ;	calc.c:133: printstr("\r\n");
      003517 7F 48            [12] 2105 	mov	r7,#___str_2
      003519 7E 88            [12] 2106 	mov	r6,#(___str_2 >> 8)
      00351B 7D 80            [12] 2107 	mov	r5,#0x80
                                   2108 ;	calc.c:51: return;
      00351D                       2109 00353$:
                                   2110 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00351D 8F 82            [24] 2111 	mov	dpl,r7
      00351F 8E 83            [24] 2112 	mov	dph,r6
      003521 8D F0            [24] 2113 	mov	b,r5
      003523 12 6F B8         [24] 2114 	lcall	__gptrget
      003526 FC               [12] 2115 	mov	r4,a
      003527 60 10            [24] 2116 	jz	00251$
      003529 7B 00            [12] 2117 	mov	r3,#0x00
      00352B 8C 82            [24] 2118 	mov	dpl,r4
      00352D 8B 83            [24] 2119 	mov	dph,r3
      00352F 12 2C 1F         [24] 2120 	lcall	_putchar
      003532 0F               [12] 2121 	inc	r7
                                   2122 ;	calc.c:133: printstr("\r\n");
      003533 BF 00 E7         [24] 2123 	cjne	r7,#0x00,00353$
      003536 0E               [12] 2124 	inc	r6
      003537 80 E4            [24] 2125 	sjmp	00353$
      003539                       2126 00251$:
                                   2127 ;	calc.c:134: if (!stack_peek(ctx->ps, &d0)) printstr("stack underflow\r\n");
      003539 E5 08            [12] 2128 	mov	a,_bp
      00353B 24 15            [12] 2129 	add	a,#0x15
      00353D FF               [12] 2130 	mov	r7,a
      00353E 7E 00            [12] 2131 	mov	r6,#0x00
      003540 7D 40            [12] 2132 	mov	r5,#0x40
      003542 E5 08            [12] 2133 	mov	a,_bp
      003544 24 12            [12] 2134 	add	a,#0x12
      003546 F8               [12] 2135 	mov	r0,a
      003547 74 13            [12] 2136 	mov	a,#0x13
      003549 26               [12] 2137 	add	a,@r0
      00354A FA               [12] 2138 	mov	r2,a
      00354B ED               [12] 2139 	mov	a,r5
      00354C 08               [12] 2140 	inc	r0
      00354D 36               [12] 2141 	addc	a,@r0
      00354E FB               [12] 2142 	mov	r3,a
      00354F 08               [12] 2143 	inc	r0
      003550 86 04            [24] 2144 	mov	ar4,@r0
      003552 8A 82            [24] 2145 	mov	dpl,r2
      003554 8B 83            [24] 2146 	mov	dph,r3
      003556 8C F0            [24] 2147 	mov	b,r4
      003558 12 6F B8         [24] 2148 	lcall	__gptrget
      00355B FA               [12] 2149 	mov	r2,a
      00355C A3               [24] 2150 	inc	dptr
      00355D 12 6F B8         [24] 2151 	lcall	__gptrget
      003560 FB               [12] 2152 	mov	r3,a
      003561 A3               [24] 2153 	inc	dptr
      003562 12 6F B8         [24] 2154 	lcall	__gptrget
      003565 FC               [12] 2155 	mov	r4,a
      003566 C0 07            [24] 2156 	push	ar7
      003568 C0 06            [24] 2157 	push	ar6
      00356A C0 05            [24] 2158 	push	ar5
      00356C 8A 82            [24] 2159 	mov	dpl,r2
      00356E 8B 83            [24] 2160 	mov	dph,r3
      003570 8C F0            [24] 2161 	mov	b,r4
      003572 12 28 D8         [24] 2162 	lcall	_stack_peek
      003575 AB 82            [24] 2163 	mov	r3,dpl
      003577 AC 83            [24] 2164 	mov	r4,dph
      003579 15 81            [12] 2165 	dec	sp
      00357B 15 81            [12] 2166 	dec	sp
      00357D 15 81            [12] 2167 	dec	sp
      00357F EB               [12] 2168 	mov	a,r3
      003580 4C               [12] 2169 	orl	a,r4
      003581 70 25            [24] 2170 	jnz	00103$
      003583 7F 4B            [12] 2171 	mov	r7,#___str_3
      003585 7E 88            [12] 2172 	mov	r6,#(___str_3 >> 8)
      003587 7D 80            [12] 2173 	mov	r5,#0x80
                                   2174 ;	calc.c:51: return;
      003589                       2175 00356$:
                                   2176 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003589 8F 82            [24] 2177 	mov	dpl,r7
      00358B 8E 83            [24] 2178 	mov	dph,r6
      00358D 8D F0            [24] 2179 	mov	b,r5
      00358F 12 6F B8         [24] 2180 	lcall	__gptrget
      003592 FC               [12] 2181 	mov	r4,a
      003593 70 03            [24] 2182 	jnz	01263$
      003595 02 56 DB         [24] 2183 	ljmp	00249$
      003598                       2184 01263$:
      003598 7B 00            [12] 2185 	mov	r3,#0x00
      00359A 8C 82            [24] 2186 	mov	dpl,r4
      00359C 8B 83            [24] 2187 	mov	dph,r3
      00359E 12 2C 1F         [24] 2188 	lcall	_putchar
      0035A1 0F               [12] 2189 	inc	r7
                                   2190 ;	calc.c:134: if (!stack_peek(ctx->ps, &d0)) printstr("stack underflow\r\n");
      0035A2 BF 00 E4         [24] 2191 	cjne	r7,#0x00,00356$
      0035A5 0E               [12] 2192 	inc	r6
      0035A6 80 E1            [24] 2193 	sjmp	00356$
      0035A8                       2194 00103$:
                                   2195 ;	calc.c:136: printstr("PSVTOP\t");
      0035A8 7F 6F            [12] 2196 	mov	r7,#___str_7
      0035AA 7E 88            [12] 2197 	mov	r6,#(___str_7 >> 8)
      0035AC 7D 80            [12] 2198 	mov	r5,#0x80
                                   2199 ;	calc.c:51: return;
      0035AE                       2200 00359$:
                                   2201 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0035AE 8F 82            [24] 2202 	mov	dpl,r7
      0035B0 8E 83            [24] 2203 	mov	dph,r6
      0035B2 8D F0            [24] 2204 	mov	b,r5
      0035B4 12 6F B8         [24] 2205 	lcall	__gptrget
      0035B7 FC               [12] 2206 	mov	r4,a
      0035B8 60 10            [24] 2207 	jz	00255$
      0035BA 7B 00            [12] 2208 	mov	r3,#0x00
      0035BC 8C 82            [24] 2209 	mov	dpl,r4
      0035BE 8B 83            [24] 2210 	mov	dph,r3
      0035C0 12 2C 1F         [24] 2211 	lcall	_putchar
      0035C3 0F               [12] 2212 	inc	r7
                                   2213 ;	calc.c:136: printstr("PSVTOP\t");
      0035C4 BF 00 E7         [24] 2214 	cjne	r7,#0x00,00359$
      0035C7 0E               [12] 2215 	inc	r6
      0035C8 80 E4            [24] 2216 	sjmp	00359$
      0035CA                       2217 00255$:
                                   2218 ;	calc.c:137: printall(d0);
      0035CA E5 08            [12] 2219 	mov	a,_bp
      0035CC 24 15            [12] 2220 	add	a,#0x15
      0035CE F8               [12] 2221 	mov	r0,a
      0035CF 86 07            [24] 2222 	mov	ar7,@r0
      0035D1 08               [12] 2223 	inc	r0
      0035D2 86 06            [24] 2224 	mov	ar6,@r0
      0035D4 08               [12] 2225 	inc	r0
      0035D5 86 05            [24] 2226 	mov	ar5,@r0
      0035D7 08               [12] 2227 	inc	r0
      0035D8 86 04            [24] 2228 	mov	ar4,@r0
      0035DA E5 08            [12] 2229 	mov	a,_bp
      0035DC 24 1D            [12] 2230 	add	a,#0x1d
      0035DE F8               [12] 2231 	mov	r0,a
      0035DF A6 07            [24] 2232 	mov	@r0,ar7
      0035E1 08               [12] 2233 	inc	r0
      0035E2 A6 06            [24] 2234 	mov	@r0,ar6
      0035E4 08               [12] 2235 	inc	r0
      0035E5 A6 05            [24] 2236 	mov	@r0,ar5
      0035E7 08               [12] 2237 	inc	r0
      0035E8 A6 04            [24] 2238 	mov	@r0,ar4
                                   2239 ;	calc.c:64: printf("% 11ld\t", d);
      0035EA C0 07            [24] 2240 	push	ar7
      0035EC C0 06            [24] 2241 	push	ar6
      0035EE C0 05            [24] 2242 	push	ar5
      0035F0 C0 04            [24] 2243 	push	ar4
      0035F2 74 39            [12] 2244 	mov	a,#___str_0
      0035F4 C0 E0            [24] 2245 	push	acc
      0035F6 74 88            [12] 2246 	mov	a,#(___str_0 >> 8)
      0035F8 C0 E0            [24] 2247 	push	acc
      0035FA 74 80            [12] 2248 	mov	a,#0x80
      0035FC C0 E0            [24] 2249 	push	acc
      0035FE 12 6F 7F         [24] 2250 	lcall	_printf
      003601 E5 81            [12] 2251 	mov	a,sp
      003603 24 F9            [12] 2252 	add	a,#0xf9
      003605 F5 81            [12] 2253 	mov	sp,a
                                   2254 ;	calc.c:65: printf("%08lx\t", d);
      003607 E5 08            [12] 2255 	mov	a,_bp
      003609 24 1D            [12] 2256 	add	a,#0x1d
      00360B F8               [12] 2257 	mov	r0,a
      00360C E6               [12] 2258 	mov	a,@r0
      00360D C0 E0            [24] 2259 	push	acc
      00360F 08               [12] 2260 	inc	r0
      003610 E6               [12] 2261 	mov	a,@r0
      003611 C0 E0            [24] 2262 	push	acc
      003613 08               [12] 2263 	inc	r0
      003614 E6               [12] 2264 	mov	a,@r0
      003615 C0 E0            [24] 2265 	push	acc
      003617 08               [12] 2266 	inc	r0
      003618 E6               [12] 2267 	mov	a,@r0
      003619 C0 E0            [24] 2268 	push	acc
      00361B 74 41            [12] 2269 	mov	a,#___str_1
      00361D C0 E0            [24] 2270 	push	acc
      00361F 74 88            [12] 2271 	mov	a,#(___str_1 >> 8)
      003621 C0 E0            [24] 2272 	push	acc
      003623 74 80            [12] 2273 	mov	a,#0x80
      003625 C0 E0            [24] 2274 	push	acc
      003627 12 6F 7F         [24] 2275 	lcall	_printf
      00362A E5 81            [12] 2276 	mov	a,sp
      00362C 24 F9            [12] 2277 	add	a,#0xf9
      00362E F5 81            [12] 2278 	mov	sp,a
                                   2279 ;	calc.c:66: printbin(d);
      003630 E5 08            [12] 2280 	mov	a,_bp
      003632 24 1D            [12] 2281 	add	a,#0x1d
      003634 F8               [12] 2282 	mov	r0,a
      003635 86 07            [24] 2283 	mov	ar7,@r0
      003637 08               [12] 2284 	inc	r0
      003638 86 06            [24] 2285 	mov	ar6,@r0
      00363A 08               [12] 2286 	inc	r0
      00363B 86 05            [24] 2287 	mov	ar5,@r0
      00363D 08               [12] 2288 	inc	r0
      00363E 86 02            [24] 2289 	mov	ar2,@r0
                                   2290 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      003640 E5 08            [12] 2291 	mov	a,_bp
      003642 24 21            [12] 2292 	add	a,#0x21
      003644 F8               [12] 2293 	mov	r0,a
      003645 E4               [12] 2294 	clr	a
      003646 F6               [12] 2295 	mov	@r0,a
      003647 08               [12] 2296 	inc	r0
      003648 F6               [12] 2297 	mov	@r0,a
      003649 08               [12] 2298 	inc	r0
      00364A F6               [12] 2299 	mov	@r0,a
      00364B 08               [12] 2300 	inc	r0
      00364C 76 80            [12] 2301 	mov	@r0,#0x80
      00364E                       2302 00361$:
                                   2303 ;	calc.c:58: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      00364E E5 08            [12] 2304 	mov	a,_bp
      003650 24 07            [12] 2305 	add	a,#0x07
      003652 F8               [12] 2306 	mov	r0,a
      003653 A6 07            [24] 2307 	mov	@r0,ar7
      003655 08               [12] 2308 	inc	r0
      003656 A6 06            [24] 2309 	mov	@r0,ar6
      003658 08               [12] 2310 	inc	r0
      003659 A6 05            [24] 2311 	mov	@r0,ar5
      00365B 08               [12] 2312 	inc	r0
      00365C A6 02            [24] 2313 	mov	@r0,ar2
      00365E E5 08            [12] 2314 	mov	a,_bp
      003660 24 07            [12] 2315 	add	a,#0x07
      003662 F8               [12] 2316 	mov	r0,a
      003663 E5 08            [12] 2317 	mov	a,_bp
      003665 24 21            [12] 2318 	add	a,#0x21
      003667 F9               [12] 2319 	mov	r1,a
      003668 E7               [12] 2320 	mov	a,@r1
      003669 56               [12] 2321 	anl	a,@r0
      00366A F6               [12] 2322 	mov	@r0,a
      00366B 09               [12] 2323 	inc	r1
      00366C E7               [12] 2324 	mov	a,@r1
      00366D 08               [12] 2325 	inc	r0
      00366E 56               [12] 2326 	anl	a,@r0
      00366F F6               [12] 2327 	mov	@r0,a
      003670 09               [12] 2328 	inc	r1
      003671 E7               [12] 2329 	mov	a,@r1
      003672 08               [12] 2330 	inc	r0
      003673 56               [12] 2331 	anl	a,@r0
      003674 F6               [12] 2332 	mov	@r0,a
      003675 09               [12] 2333 	inc	r1
      003676 E7               [12] 2334 	mov	a,@r1
      003677 08               [12] 2335 	inc	r0
      003678 56               [12] 2336 	anl	a,@r0
      003679 F6               [12] 2337 	mov	@r0,a
      00367A E5 08            [12] 2338 	mov	a,_bp
      00367C 24 07            [12] 2339 	add	a,#0x07
      00367E F8               [12] 2340 	mov	r0,a
      00367F E6               [12] 2341 	mov	a,@r0
      003680 08               [12] 2342 	inc	r0
      003681 46               [12] 2343 	orl	a,@r0
      003682 08               [12] 2344 	inc	r0
      003683 46               [12] 2345 	orl	a,@r0
      003684 08               [12] 2346 	inc	r0
      003685 46               [12] 2347 	orl	a,@r0
      003686 60 06            [24] 2348 	jz	00502$
      003688 7B 31            [12] 2349 	mov	r3,#0x31
      00368A 7C 00            [12] 2350 	mov	r4,#0x00
      00368C 80 04            [24] 2351 	sjmp	00503$
      00368E                       2352 00502$:
      00368E 7B 30            [12] 2353 	mov	r3,#0x30
      003690 7C 00            [12] 2354 	mov	r4,#0x00
      003692                       2355 00503$:
      003692 8B 82            [24] 2356 	mov	dpl,r3
      003694 8C 83            [24] 2357 	mov	dph,r4
      003696 12 2C 1F         [24] 2358 	lcall	_putchar
                                   2359 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      003699 E5 08            [12] 2360 	mov	a,_bp
      00369B 24 21            [12] 2361 	add	a,#0x21
      00369D F8               [12] 2362 	mov	r0,a
      00369E 08               [12] 2363 	inc	r0
      00369F 08               [12] 2364 	inc	r0
      0036A0 08               [12] 2365 	inc	r0
      0036A1 E6               [12] 2366 	mov	a,@r0
      0036A2 C3               [12] 2367 	clr	c
      0036A3 13               [12] 2368 	rrc	a
      0036A4 F6               [12] 2369 	mov	@r0,a
      0036A5 18               [12] 2370 	dec	r0
      0036A6 E6               [12] 2371 	mov	a,@r0
      0036A7 13               [12] 2372 	rrc	a
      0036A8 F6               [12] 2373 	mov	@r0,a
      0036A9 18               [12] 2374 	dec	r0
      0036AA E6               [12] 2375 	mov	a,@r0
      0036AB 13               [12] 2376 	rrc	a
      0036AC F6               [12] 2377 	mov	@r0,a
      0036AD 18               [12] 2378 	dec	r0
      0036AE E6               [12] 2379 	mov	a,@r0
      0036AF 13               [12] 2380 	rrc	a
      0036B0 F6               [12] 2381 	mov	@r0,a
      0036B1 E5 08            [12] 2382 	mov	a,_bp
      0036B3 24 21            [12] 2383 	add	a,#0x21
      0036B5 F8               [12] 2384 	mov	r0,a
      0036B6 E6               [12] 2385 	mov	a,@r0
      0036B7 08               [12] 2386 	inc	r0
      0036B8 46               [12] 2387 	orl	a,@r0
      0036B9 08               [12] 2388 	inc	r0
      0036BA 46               [12] 2389 	orl	a,@r0
      0036BB 08               [12] 2390 	inc	r0
      0036BC 46               [12] 2391 	orl	a,@r0
      0036BD 70 8F            [24] 2392 	jnz	00361$
                                   2393 ;	calc.c:138: printstr("\r\n");
      0036BF 7F 48            [12] 2394 	mov	r7,#___str_2
      0036C1 7E 88            [12] 2395 	mov	r6,#(___str_2 >> 8)
      0036C3 7D 80            [12] 2396 	mov	r5,#0x80
                                   2397 ;	calc.c:51: return;
      0036C5                       2398 00364$:
                                   2399 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0036C5 8F 82            [24] 2400 	mov	dpl,r7
      0036C7 8E 83            [24] 2401 	mov	dph,r6
      0036C9 8D F0            [24] 2402 	mov	b,r5
      0036CB 12 6F B8         [24] 2403 	lcall	__gptrget
      0036CE FC               [12] 2404 	mov	r4,a
      0036CF 70 03            [24] 2405 	jnz	01269$
      0036D1 02 56 DB         [24] 2406 	ljmp	00249$
      0036D4                       2407 01269$:
      0036D4 7B 00            [12] 2408 	mov	r3,#0x00
      0036D6 8C 82            [24] 2409 	mov	dpl,r4
      0036D8 8B 83            [24] 2410 	mov	dph,r3
      0036DA 12 2C 1F         [24] 2411 	lcall	_putchar
      0036DD 0F               [12] 2412 	inc	r7
                                   2413 ;	calc.c:141: case 'V':
      0036DE BF 00 E4         [24] 2414 	cjne	r7,#0x00,00364$
      0036E1 0E               [12] 2415 	inc	r6
      0036E2 80 E1            [24] 2416 	sjmp	00364$
      0036E4                       2417 00105$:
                                   2418 ;	calc.c:142: printstr("\r\n");
      0036E4 7F 48            [12] 2419 	mov	r7,#___str_2
      0036E6 7E 88            [12] 2420 	mov	r6,#(___str_2 >> 8)
      0036E8 7D 80            [12] 2421 	mov	r5,#0x80
                                   2422 ;	calc.c:51: return;
      0036EA                       2423 00367$:
                                   2424 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0036EA 8F 82            [24] 2425 	mov	dpl,r7
      0036EC 8E 83            [24] 2426 	mov	dph,r6
      0036EE 8D F0            [24] 2427 	mov	b,r5
      0036F0 12 6F B8         [24] 2428 	lcall	__gptrget
      0036F3 FC               [12] 2429 	mov	r4,a
      0036F4 60 10            [24] 2430 	jz	00262$
      0036F6 7B 00            [12] 2431 	mov	r3,#0x00
      0036F8 8C 82            [24] 2432 	mov	dpl,r4
      0036FA 8B 83            [24] 2433 	mov	dph,r3
      0036FC 12 2C 1F         [24] 2434 	lcall	_putchar
      0036FF 0F               [12] 2435 	inc	r7
                                   2436 ;	calc.c:142: printstr("\r\n");
      003700 BF 00 E7         [24] 2437 	cjne	r7,#0x00,00367$
      003703 0E               [12] 2438 	inc	r6
      003704 80 E4            [24] 2439 	sjmp	00367$
      003706                       2440 00262$:
                                   2441 ;	calc.c:143: if (!stack_iter_peek(ctx->ps, dump_peek, ctx)) printstr("stack underflow\r\n");
      003706 E5 08            [12] 2442 	mov	a,_bp
      003708 24 12            [12] 2443 	add	a,#0x12
      00370A F8               [12] 2444 	mov	r0,a
      00370B 86 07            [24] 2445 	mov	ar7,@r0
      00370D 08               [12] 2446 	inc	r0
      00370E 86 06            [24] 2447 	mov	ar6,@r0
      003710 08               [12] 2448 	inc	r0
      003711 86 05            [24] 2449 	mov	ar5,@r0
      003713 E5 08            [12] 2450 	mov	a,_bp
      003715 24 12            [12] 2451 	add	a,#0x12
      003717 F8               [12] 2452 	mov	r0,a
      003718 74 13            [12] 2453 	mov	a,#0x13
      00371A 26               [12] 2454 	add	a,@r0
      00371B FA               [12] 2455 	mov	r2,a
      00371C 74 40            [12] 2456 	mov	a,#0x40
      00371E 08               [12] 2457 	inc	r0
      00371F 36               [12] 2458 	addc	a,@r0
      003720 FB               [12] 2459 	mov	r3,a
      003721 08               [12] 2460 	inc	r0
      003722 86 04            [24] 2461 	mov	ar4,@r0
      003724 8A 82            [24] 2462 	mov	dpl,r2
      003726 8B 83            [24] 2463 	mov	dph,r3
      003728 8C F0            [24] 2464 	mov	b,r4
      00372A 12 6F B8         [24] 2465 	lcall	__gptrget
      00372D FA               [12] 2466 	mov	r2,a
      00372E A3               [24] 2467 	inc	dptr
      00372F 12 6F B8         [24] 2468 	lcall	__gptrget
      003732 FB               [12] 2469 	mov	r3,a
      003733 A3               [24] 2470 	inc	dptr
      003734 12 6F B8         [24] 2471 	lcall	__gptrget
      003737 FC               [12] 2472 	mov	r4,a
      003738 C0 07            [24] 2473 	push	ar7
      00373A C0 06            [24] 2474 	push	ar6
      00373C C0 05            [24] 2475 	push	ar5
      00373E 74 00            [12] 2476 	mov	a,#_dump_peek
      003740 C0 E0            [24] 2477 	push	acc
      003742 74 33            [12] 2478 	mov	a,#(_dump_peek >> 8)
      003744 C0 E0            [24] 2479 	push	acc
      003746 8A 82            [24] 2480 	mov	dpl,r2
      003748 8B 83            [24] 2481 	mov	dph,r3
      00374A 8C F0            [24] 2482 	mov	b,r4
      00374C 12 2B 2E         [24] 2483 	lcall	_stack_iter_peek
      00374F AB 82            [24] 2484 	mov	r3,dpl
      003751 AC 83            [24] 2485 	mov	r4,dph
      003753 E5 81            [12] 2486 	mov	a,sp
      003755 24 FB            [12] 2487 	add	a,#0xfb
      003757 F5 81            [12] 2488 	mov	sp,a
      003759 EB               [12] 2489 	mov	a,r3
      00375A 4C               [12] 2490 	orl	a,r4
      00375B 60 03            [24] 2491 	jz	01273$
      00375D 02 56 DB         [24] 2492 	ljmp	00249$
      003760                       2493 01273$:
      003760 7F 4B            [12] 2494 	mov	r7,#___str_3
      003762 7E 88            [12] 2495 	mov	r6,#(___str_3 >> 8)
      003764 7D 80            [12] 2496 	mov	r5,#0x80
                                   2497 ;	calc.c:51: return;
      003766                       2498 00370$:
                                   2499 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003766 8F 82            [24] 2500 	mov	dpl,r7
      003768 8E 83            [24] 2501 	mov	dph,r6
      00376A 8D F0            [24] 2502 	mov	b,r5
      00376C 12 6F B8         [24] 2503 	lcall	__gptrget
      00376F FC               [12] 2504 	mov	r4,a
      003770 70 03            [24] 2505 	jnz	01274$
      003772 02 56 DB         [24] 2506 	ljmp	00249$
      003775                       2507 01274$:
      003775 7B 00            [12] 2508 	mov	r3,#0x00
      003777 8C 82            [24] 2509 	mov	dpl,r4
      003779 8B 83            [24] 2510 	mov	dph,r3
      00377B 12 2C 1F         [24] 2511 	lcall	_putchar
      00377E 0F               [12] 2512 	inc	r7
                                   2513 ;	calc.c:146: case 'p':
      00377F BF 00 E4         [24] 2514 	cjne	r7,#0x00,00370$
      003782 0E               [12] 2515 	inc	r6
      003783 80 E1            [24] 2516 	sjmp	00370$
      003785                       2517 00109$:
                                   2518 ;	calc.c:147: printstr("\r\n");
      003785 7F 48            [12] 2519 	mov	r7,#___str_2
      003787 7E 88            [12] 2520 	mov	r6,#(___str_2 >> 8)
      003789 7D 80            [12] 2521 	mov	r5,#0x80
                                   2522 ;	calc.c:51: return;
      00378B                       2523 00373$:
                                   2524 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00378B 8F 82            [24] 2525 	mov	dpl,r7
      00378D 8E 83            [24] 2526 	mov	dph,r6
      00378F 8D F0            [24] 2527 	mov	b,r5
      003791 12 6F B8         [24] 2528 	lcall	__gptrget
      003794 FC               [12] 2529 	mov	r4,a
      003795 60 10            [24] 2530 	jz	00266$
      003797 7B 00            [12] 2531 	mov	r3,#0x00
      003799 8C 82            [24] 2532 	mov	dpl,r4
      00379B 8B 83            [24] 2533 	mov	dph,r3
      00379D 12 2C 1F         [24] 2534 	lcall	_putchar
      0037A0 0F               [12] 2535 	inc	r7
                                   2536 ;	calc.c:147: printstr("\r\n");
      0037A1 BF 00 E7         [24] 2537 	cjne	r7,#0x00,00373$
      0037A4 0E               [12] 2538 	inc	r6
      0037A5 80 E4            [24] 2539 	sjmp	00373$
      0037A7                       2540 00266$:
                                   2541 ;	calc.c:148: if (!stack_pop(ctx->ps, &d0)) printstr("stack underflow\r\n");
      0037A7 E5 08            [12] 2542 	mov	a,_bp
      0037A9 24 15            [12] 2543 	add	a,#0x15
      0037AB FF               [12] 2544 	mov	r7,a
      0037AC 7E 00            [12] 2545 	mov	r6,#0x00
      0037AE 7D 40            [12] 2546 	mov	r5,#0x40
      0037B0 E5 08            [12] 2547 	mov	a,_bp
      0037B2 24 12            [12] 2548 	add	a,#0x12
      0037B4 F8               [12] 2549 	mov	r0,a
      0037B5 74 13            [12] 2550 	mov	a,#0x13
      0037B7 26               [12] 2551 	add	a,@r0
      0037B8 FA               [12] 2552 	mov	r2,a
      0037B9 ED               [12] 2553 	mov	a,r5
      0037BA 08               [12] 2554 	inc	r0
      0037BB 36               [12] 2555 	addc	a,@r0
      0037BC FB               [12] 2556 	mov	r3,a
      0037BD 08               [12] 2557 	inc	r0
      0037BE 86 04            [24] 2558 	mov	ar4,@r0
      0037C0 8A 82            [24] 2559 	mov	dpl,r2
      0037C2 8B 83            [24] 2560 	mov	dph,r3
      0037C4 8C F0            [24] 2561 	mov	b,r4
      0037C6 12 6F B8         [24] 2562 	lcall	__gptrget
      0037C9 FA               [12] 2563 	mov	r2,a
      0037CA A3               [24] 2564 	inc	dptr
      0037CB 12 6F B8         [24] 2565 	lcall	__gptrget
      0037CE FB               [12] 2566 	mov	r3,a
      0037CF A3               [24] 2567 	inc	dptr
      0037D0 12 6F B8         [24] 2568 	lcall	__gptrget
      0037D3 FC               [12] 2569 	mov	r4,a
      0037D4 C0 07            [24] 2570 	push	ar7
      0037D6 C0 06            [24] 2571 	push	ar6
      0037D8 C0 05            [24] 2572 	push	ar5
      0037DA 8A 82            [24] 2573 	mov	dpl,r2
      0037DC 8B 83            [24] 2574 	mov	dph,r3
      0037DE 8C F0            [24] 2575 	mov	b,r4
      0037E0 12 27 B4         [24] 2576 	lcall	_stack_pop
      0037E3 AB 82            [24] 2577 	mov	r3,dpl
      0037E5 AC 83            [24] 2578 	mov	r4,dph
      0037E7 15 81            [12] 2579 	dec	sp
      0037E9 15 81            [12] 2580 	dec	sp
      0037EB 15 81            [12] 2581 	dec	sp
      0037ED EB               [12] 2582 	mov	a,r3
      0037EE 4C               [12] 2583 	orl	a,r4
      0037EF 70 25            [24] 2584 	jnz	00111$
      0037F1 7F 4B            [12] 2585 	mov	r7,#___str_3
      0037F3 7E 88            [12] 2586 	mov	r6,#(___str_3 >> 8)
      0037F5 7D 80            [12] 2587 	mov	r5,#0x80
                                   2588 ;	calc.c:51: return;
      0037F7                       2589 00376$:
                                   2590 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0037F7 8F 82            [24] 2591 	mov	dpl,r7
      0037F9 8E 83            [24] 2592 	mov	dph,r6
      0037FB 8D F0            [24] 2593 	mov	b,r5
      0037FD 12 6F B8         [24] 2594 	lcall	__gptrget
      003800 FC               [12] 2595 	mov	r4,a
      003801 70 03            [24] 2596 	jnz	01279$
      003803 02 56 DB         [24] 2597 	ljmp	00249$
      003806                       2598 01279$:
      003806 7B 00            [12] 2599 	mov	r3,#0x00
      003808 8C 82            [24] 2600 	mov	dpl,r4
      00380A 8B 83            [24] 2601 	mov	dph,r3
      00380C 12 2C 1F         [24] 2602 	lcall	_putchar
      00380F 0F               [12] 2603 	inc	r7
                                   2604 ;	calc.c:148: if (!stack_pop(ctx->ps, &d0)) printstr("stack underflow\r\n");
      003810 BF 00 E4         [24] 2605 	cjne	r7,#0x00,00376$
      003813 0E               [12] 2606 	inc	r6
      003814 80 E1            [24] 2607 	sjmp	00376$
      003816                       2608 00111$:
                                   2609 ;	calc.c:150: printstr("PSPTOP\t");
      003816 7F 77            [12] 2610 	mov	r7,#___str_8
      003818 7E 88            [12] 2611 	mov	r6,#(___str_8 >> 8)
      00381A 7D 80            [12] 2612 	mov	r5,#0x80
                                   2613 ;	calc.c:51: return;
      00381C                       2614 00379$:
                                   2615 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00381C 8F 82            [24] 2616 	mov	dpl,r7
      00381E 8E 83            [24] 2617 	mov	dph,r6
      003820 8D F0            [24] 2618 	mov	b,r5
      003822 12 6F B8         [24] 2619 	lcall	__gptrget
      003825 FC               [12] 2620 	mov	r4,a
      003826 60 10            [24] 2621 	jz	00270$
      003828 7B 00            [12] 2622 	mov	r3,#0x00
      00382A 8C 82            [24] 2623 	mov	dpl,r4
      00382C 8B 83            [24] 2624 	mov	dph,r3
      00382E 12 2C 1F         [24] 2625 	lcall	_putchar
      003831 0F               [12] 2626 	inc	r7
                                   2627 ;	calc.c:150: printstr("PSPTOP\t");
      003832 BF 00 E7         [24] 2628 	cjne	r7,#0x00,00379$
      003835 0E               [12] 2629 	inc	r6
      003836 80 E4            [24] 2630 	sjmp	00379$
      003838                       2631 00270$:
                                   2632 ;	calc.c:151: printall(d0);
      003838 E5 08            [12] 2633 	mov	a,_bp
      00383A 24 15            [12] 2634 	add	a,#0x15
      00383C F8               [12] 2635 	mov	r0,a
      00383D 86 07            [24] 2636 	mov	ar7,@r0
      00383F 08               [12] 2637 	inc	r0
      003840 86 06            [24] 2638 	mov	ar6,@r0
      003842 08               [12] 2639 	inc	r0
      003843 86 05            [24] 2640 	mov	ar5,@r0
      003845 08               [12] 2641 	inc	r0
      003846 86 04            [24] 2642 	mov	ar4,@r0
      003848 E5 08            [12] 2643 	mov	a,_bp
      00384A 24 1D            [12] 2644 	add	a,#0x1d
      00384C F8               [12] 2645 	mov	r0,a
      00384D A6 07            [24] 2646 	mov	@r0,ar7
      00384F 08               [12] 2647 	inc	r0
      003850 A6 06            [24] 2648 	mov	@r0,ar6
      003852 08               [12] 2649 	inc	r0
      003853 A6 05            [24] 2650 	mov	@r0,ar5
      003855 08               [12] 2651 	inc	r0
      003856 A6 04            [24] 2652 	mov	@r0,ar4
                                   2653 ;	calc.c:64: printf("% 11ld\t", d);
      003858 C0 07            [24] 2654 	push	ar7
      00385A C0 06            [24] 2655 	push	ar6
      00385C C0 05            [24] 2656 	push	ar5
      00385E C0 04            [24] 2657 	push	ar4
      003860 74 39            [12] 2658 	mov	a,#___str_0
      003862 C0 E0            [24] 2659 	push	acc
      003864 74 88            [12] 2660 	mov	a,#(___str_0 >> 8)
      003866 C0 E0            [24] 2661 	push	acc
      003868 74 80            [12] 2662 	mov	a,#0x80
      00386A C0 E0            [24] 2663 	push	acc
      00386C 12 6F 7F         [24] 2664 	lcall	_printf
      00386F E5 81            [12] 2665 	mov	a,sp
      003871 24 F9            [12] 2666 	add	a,#0xf9
      003873 F5 81            [12] 2667 	mov	sp,a
                                   2668 ;	calc.c:65: printf("%08lx\t", d);
      003875 E5 08            [12] 2669 	mov	a,_bp
      003877 24 1D            [12] 2670 	add	a,#0x1d
      003879 F8               [12] 2671 	mov	r0,a
      00387A E6               [12] 2672 	mov	a,@r0
      00387B C0 E0            [24] 2673 	push	acc
      00387D 08               [12] 2674 	inc	r0
      00387E E6               [12] 2675 	mov	a,@r0
      00387F C0 E0            [24] 2676 	push	acc
      003881 08               [12] 2677 	inc	r0
      003882 E6               [12] 2678 	mov	a,@r0
      003883 C0 E0            [24] 2679 	push	acc
      003885 08               [12] 2680 	inc	r0
      003886 E6               [12] 2681 	mov	a,@r0
      003887 C0 E0            [24] 2682 	push	acc
      003889 74 41            [12] 2683 	mov	a,#___str_1
      00388B C0 E0            [24] 2684 	push	acc
      00388D 74 88            [12] 2685 	mov	a,#(___str_1 >> 8)
      00388F C0 E0            [24] 2686 	push	acc
      003891 74 80            [12] 2687 	mov	a,#0x80
      003893 C0 E0            [24] 2688 	push	acc
      003895 12 6F 7F         [24] 2689 	lcall	_printf
      003898 E5 81            [12] 2690 	mov	a,sp
      00389A 24 F9            [12] 2691 	add	a,#0xf9
      00389C F5 81            [12] 2692 	mov	sp,a
                                   2693 ;	calc.c:66: printbin(d);
      00389E E5 08            [12] 2694 	mov	a,_bp
      0038A0 24 1D            [12] 2695 	add	a,#0x1d
      0038A2 F8               [12] 2696 	mov	r0,a
      0038A3 86 07            [24] 2697 	mov	ar7,@r0
      0038A5 08               [12] 2698 	inc	r0
      0038A6 86 06            [24] 2699 	mov	ar6,@r0
      0038A8 08               [12] 2700 	inc	r0
      0038A9 86 05            [24] 2701 	mov	ar5,@r0
      0038AB 08               [12] 2702 	inc	r0
      0038AC 86 02            [24] 2703 	mov	ar2,@r0
                                   2704 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      0038AE E5 08            [12] 2705 	mov	a,_bp
      0038B0 24 21            [12] 2706 	add	a,#0x21
      0038B2 F8               [12] 2707 	mov	r0,a
      0038B3 E4               [12] 2708 	clr	a
      0038B4 F6               [12] 2709 	mov	@r0,a
      0038B5 08               [12] 2710 	inc	r0
      0038B6 F6               [12] 2711 	mov	@r0,a
      0038B7 08               [12] 2712 	inc	r0
      0038B8 F6               [12] 2713 	mov	@r0,a
      0038B9 08               [12] 2714 	inc	r0
      0038BA 76 80            [12] 2715 	mov	@r0,#0x80
      0038BC                       2716 00381$:
                                   2717 ;	calc.c:58: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      0038BC E5 08            [12] 2718 	mov	a,_bp
      0038BE 24 07            [12] 2719 	add	a,#0x07
      0038C0 F8               [12] 2720 	mov	r0,a
      0038C1 A6 07            [24] 2721 	mov	@r0,ar7
      0038C3 08               [12] 2722 	inc	r0
      0038C4 A6 06            [24] 2723 	mov	@r0,ar6
      0038C6 08               [12] 2724 	inc	r0
      0038C7 A6 05            [24] 2725 	mov	@r0,ar5
      0038C9 08               [12] 2726 	inc	r0
      0038CA A6 02            [24] 2727 	mov	@r0,ar2
      0038CC E5 08            [12] 2728 	mov	a,_bp
      0038CE 24 07            [12] 2729 	add	a,#0x07
      0038D0 F8               [12] 2730 	mov	r0,a
      0038D1 E5 08            [12] 2731 	mov	a,_bp
      0038D3 24 21            [12] 2732 	add	a,#0x21
      0038D5 F9               [12] 2733 	mov	r1,a
      0038D6 E7               [12] 2734 	mov	a,@r1
      0038D7 56               [12] 2735 	anl	a,@r0
      0038D8 F6               [12] 2736 	mov	@r0,a
      0038D9 09               [12] 2737 	inc	r1
      0038DA E7               [12] 2738 	mov	a,@r1
      0038DB 08               [12] 2739 	inc	r0
      0038DC 56               [12] 2740 	anl	a,@r0
      0038DD F6               [12] 2741 	mov	@r0,a
      0038DE 09               [12] 2742 	inc	r1
      0038DF E7               [12] 2743 	mov	a,@r1
      0038E0 08               [12] 2744 	inc	r0
      0038E1 56               [12] 2745 	anl	a,@r0
      0038E2 F6               [12] 2746 	mov	@r0,a
      0038E3 09               [12] 2747 	inc	r1
      0038E4 E7               [12] 2748 	mov	a,@r1
      0038E5 08               [12] 2749 	inc	r0
      0038E6 56               [12] 2750 	anl	a,@r0
      0038E7 F6               [12] 2751 	mov	@r0,a
      0038E8 E5 08            [12] 2752 	mov	a,_bp
      0038EA 24 07            [12] 2753 	add	a,#0x07
      0038EC F8               [12] 2754 	mov	r0,a
      0038ED E6               [12] 2755 	mov	a,@r0
      0038EE 08               [12] 2756 	inc	r0
      0038EF 46               [12] 2757 	orl	a,@r0
      0038F0 08               [12] 2758 	inc	r0
      0038F1 46               [12] 2759 	orl	a,@r0
      0038F2 08               [12] 2760 	inc	r0
      0038F3 46               [12] 2761 	orl	a,@r0
      0038F4 60 06            [24] 2762 	jz	00504$
      0038F6 7B 31            [12] 2763 	mov	r3,#0x31
      0038F8 7C 00            [12] 2764 	mov	r4,#0x00
      0038FA 80 04            [24] 2765 	sjmp	00505$
      0038FC                       2766 00504$:
      0038FC 7B 30            [12] 2767 	mov	r3,#0x30
      0038FE 7C 00            [12] 2768 	mov	r4,#0x00
      003900                       2769 00505$:
      003900 8B 82            [24] 2770 	mov	dpl,r3
      003902 8C 83            [24] 2771 	mov	dph,r4
      003904 12 2C 1F         [24] 2772 	lcall	_putchar
                                   2773 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      003907 E5 08            [12] 2774 	mov	a,_bp
      003909 24 21            [12] 2775 	add	a,#0x21
      00390B F8               [12] 2776 	mov	r0,a
      00390C 08               [12] 2777 	inc	r0
      00390D 08               [12] 2778 	inc	r0
      00390E 08               [12] 2779 	inc	r0
      00390F E6               [12] 2780 	mov	a,@r0
      003910 C3               [12] 2781 	clr	c
      003911 13               [12] 2782 	rrc	a
      003912 F6               [12] 2783 	mov	@r0,a
      003913 18               [12] 2784 	dec	r0
      003914 E6               [12] 2785 	mov	a,@r0
      003915 13               [12] 2786 	rrc	a
      003916 F6               [12] 2787 	mov	@r0,a
      003917 18               [12] 2788 	dec	r0
      003918 E6               [12] 2789 	mov	a,@r0
      003919 13               [12] 2790 	rrc	a
      00391A F6               [12] 2791 	mov	@r0,a
      00391B 18               [12] 2792 	dec	r0
      00391C E6               [12] 2793 	mov	a,@r0
      00391D 13               [12] 2794 	rrc	a
      00391E F6               [12] 2795 	mov	@r0,a
      00391F E5 08            [12] 2796 	mov	a,_bp
      003921 24 21            [12] 2797 	add	a,#0x21
      003923 F8               [12] 2798 	mov	r0,a
      003924 E6               [12] 2799 	mov	a,@r0
      003925 08               [12] 2800 	inc	r0
      003926 46               [12] 2801 	orl	a,@r0
      003927 08               [12] 2802 	inc	r0
      003928 46               [12] 2803 	orl	a,@r0
      003929 08               [12] 2804 	inc	r0
      00392A 46               [12] 2805 	orl	a,@r0
      00392B 70 8F            [24] 2806 	jnz	00381$
                                   2807 ;	calc.c:152: printstr("\r\n");
      00392D 7F 48            [12] 2808 	mov	r7,#___str_2
      00392F 7E 88            [12] 2809 	mov	r6,#(___str_2 >> 8)
      003931 7D 80            [12] 2810 	mov	r5,#0x80
                                   2811 ;	calc.c:51: return;
      003933                       2812 00384$:
                                   2813 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003933 8F 82            [24] 2814 	mov	dpl,r7
      003935 8E 83            [24] 2815 	mov	dph,r6
      003937 8D F0            [24] 2816 	mov	b,r5
      003939 12 6F B8         [24] 2817 	lcall	__gptrget
      00393C FC               [12] 2818 	mov	r4,a
      00393D 70 03            [24] 2819 	jnz	01285$
      00393F 02 56 DB         [24] 2820 	ljmp	00249$
      003942                       2821 01285$:
      003942 7B 00            [12] 2822 	mov	r3,#0x00
      003944 8C 82            [24] 2823 	mov	dpl,r4
      003946 8B 83            [24] 2824 	mov	dph,r3
      003948 12 2C 1F         [24] 2825 	lcall	_putchar
      00394B 0F               [12] 2826 	inc	r7
                                   2827 ;	calc.c:155: case 'P':
      00394C BF 00 E4         [24] 2828 	cjne	r7,#0x00,00384$
      00394F 0E               [12] 2829 	inc	r6
      003950 80 E1            [24] 2830 	sjmp	00384$
      003952                       2831 00113$:
                                   2832 ;	calc.c:156: printstr("\r\n");
      003952 7F 48            [12] 2833 	mov	r7,#___str_2
      003954 7E 88            [12] 2834 	mov	r6,#(___str_2 >> 8)
      003956 7D 80            [12] 2835 	mov	r5,#0x80
                                   2836 ;	calc.c:51: return;
      003958                       2837 00387$:
                                   2838 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003958 8F 82            [24] 2839 	mov	dpl,r7
      00395A 8E 83            [24] 2840 	mov	dph,r6
      00395C 8D F0            [24] 2841 	mov	b,r5
      00395E 12 6F B8         [24] 2842 	lcall	__gptrget
      003961 FC               [12] 2843 	mov	r4,a
      003962 60 10            [24] 2844 	jz	00277$
      003964 7B 00            [12] 2845 	mov	r3,#0x00
      003966 8C 82            [24] 2846 	mov	dpl,r4
      003968 8B 83            [24] 2847 	mov	dph,r3
      00396A 12 2C 1F         [24] 2848 	lcall	_putchar
      00396D 0F               [12] 2849 	inc	r7
                                   2850 ;	calc.c:156: printstr("\r\n");
      00396E BF 00 E7         [24] 2851 	cjne	r7,#0x00,00387$
      003971 0E               [12] 2852 	inc	r6
      003972 80 E4            [24] 2853 	sjmp	00387$
      003974                       2854 00277$:
                                   2855 ;	calc.c:157: (void)dump_pop(_ctx, delta);
      003974 E5 08            [12] 2856 	mov	a,_bp
      003976 24 FB            [12] 2857 	add	a,#0xfb
      003978 F8               [12] 2858 	mov	r0,a
      003979 E6               [12] 2859 	mov	a,@r0
      00397A C0 E0            [24] 2860 	push	acc
      00397C 08               [12] 2861 	inc	r0
      00397D E6               [12] 2862 	mov	a,@r0
      00397E C0 E0            [24] 2863 	push	acc
      003980 08               [12] 2864 	inc	r0
      003981 E6               [12] 2865 	mov	a,@r0
      003982 C0 E0            [24] 2866 	push	acc
      003984 A8 08            [24] 2867 	mov	r0,_bp
      003986 08               [12] 2868 	inc	r0
      003987 86 82            [24] 2869 	mov	dpl,@r0
      003989 08               [12] 2870 	inc	r0
      00398A 86 83            [24] 2871 	mov	dph,@r0
      00398C 08               [12] 2872 	inc	r0
      00398D 86 F0            [24] 2873 	mov	b,@r0
      00398F 12 2D B2         [24] 2874 	lcall	_dump_pop
      003992 15 81            [12] 2875 	dec	sp
      003994 15 81            [12] 2876 	dec	sp
      003996 15 81            [12] 2877 	dec	sp
                                   2878 ;	calc.c:158: break;
      003998 02 56 DB         [24] 2879 	ljmp	00249$
                                   2880 ;	calc.c:159: case 'x':
      00399B                       2881 00114$:
                                   2882 ;	calc.c:160: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      00399B E5 08            [12] 2883 	mov	a,_bp
      00399D 24 15            [12] 2884 	add	a,#0x15
      00399F FF               [12] 2885 	mov	r7,a
      0039A0 7E 00            [12] 2886 	mov	r6,#0x00
      0039A2 7D 40            [12] 2887 	mov	r5,#0x40
      0039A4 E5 08            [12] 2888 	mov	a,_bp
      0039A6 24 12            [12] 2889 	add	a,#0x12
      0039A8 F8               [12] 2890 	mov	r0,a
      0039A9 E5 08            [12] 2891 	mov	a,_bp
      0039AB 24 07            [12] 2892 	add	a,#0x07
      0039AD F9               [12] 2893 	mov	r1,a
      0039AE 74 13            [12] 2894 	mov	a,#0x13
      0039B0 26               [12] 2895 	add	a,@r0
      0039B1 F7               [12] 2896 	mov	@r1,a
      0039B2 74 40            [12] 2897 	mov	a,#0x40
      0039B4 08               [12] 2898 	inc	r0
      0039B5 36               [12] 2899 	addc	a,@r0
      0039B6 09               [12] 2900 	inc	r1
      0039B7 F7               [12] 2901 	mov	@r1,a
      0039B8 08               [12] 2902 	inc	r0
      0039B9 09               [12] 2903 	inc	r1
      0039BA E6               [12] 2904 	mov	a,@r0
      0039BB F7               [12] 2905 	mov	@r1,a
      0039BC E5 08            [12] 2906 	mov	a,_bp
      0039BE 24 07            [12] 2907 	add	a,#0x07
      0039C0 F8               [12] 2908 	mov	r0,a
      0039C1 86 82            [24] 2909 	mov	dpl,@r0
      0039C3 08               [12] 2910 	inc	r0
      0039C4 86 83            [24] 2911 	mov	dph,@r0
      0039C6 08               [12] 2912 	inc	r0
      0039C7 86 F0            [24] 2913 	mov	b,@r0
      0039C9 12 6F B8         [24] 2914 	lcall	__gptrget
      0039CC FA               [12] 2915 	mov	r2,a
      0039CD A3               [24] 2916 	inc	dptr
      0039CE 12 6F B8         [24] 2917 	lcall	__gptrget
      0039D1 FB               [12] 2918 	mov	r3,a
      0039D2 A3               [24] 2919 	inc	dptr
      0039D3 12 6F B8         [24] 2920 	lcall	__gptrget
      0039D6 FC               [12] 2921 	mov	r4,a
      0039D7 C0 07            [24] 2922 	push	ar7
      0039D9 C0 06            [24] 2923 	push	ar6
      0039DB C0 05            [24] 2924 	push	ar5
      0039DD 8A 82            [24] 2925 	mov	dpl,r2
      0039DF 8B 83            [24] 2926 	mov	dph,r3
      0039E1 8C F0            [24] 2927 	mov	b,r4
      0039E3 12 27 B4         [24] 2928 	lcall	_stack_pop
      0039E6 AB 82            [24] 2929 	mov	r3,dpl
      0039E8 AC 83            [24] 2930 	mov	r4,dph
      0039EA 15 81            [12] 2931 	dec	sp
      0039EC 15 81            [12] 2932 	dec	sp
      0039EE 15 81            [12] 2933 	dec	sp
      0039F0 EB               [12] 2934 	mov	a,r3
      0039F1 4C               [12] 2935 	orl	a,r4
      0039F2 70 25            [24] 2936 	jnz	00119$
      0039F4 7F 7F            [12] 2937 	mov	r7,#___str_9
      0039F6 7E 88            [12] 2938 	mov	r6,#(___str_9 >> 8)
      0039F8 7D 80            [12] 2939 	mov	r5,#0x80
                                   2940 ;	calc.c:51: return;
      0039FA                       2941 00390$:
                                   2942 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0039FA 8F 82            [24] 2943 	mov	dpl,r7
      0039FC 8E 83            [24] 2944 	mov	dph,r6
      0039FE 8D F0            [24] 2945 	mov	b,r5
      003A00 12 6F B8         [24] 2946 	lcall	__gptrget
      003A03 FC               [12] 2947 	mov	r4,a
      003A04 70 03            [24] 2948 	jnz	01290$
      003A06 02 56 DB         [24] 2949 	ljmp	00249$
      003A09                       2950 01290$:
      003A09 7B 00            [12] 2951 	mov	r3,#0x00
      003A0B 8C 82            [24] 2952 	mov	dpl,r4
      003A0D 8B 83            [24] 2953 	mov	dph,r3
      003A0F 12 2C 1F         [24] 2954 	lcall	_putchar
      003A12 0F               [12] 2955 	inc	r7
                                   2956 ;	calc.c:160: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003A13 BF 00 E4         [24] 2957 	cjne	r7,#0x00,00390$
      003A16 0E               [12] 2958 	inc	r6
      003A17 80 E1            [24] 2959 	sjmp	00390$
      003A19                       2960 00119$:
                                   2961 ;	calc.c:161: else if (!stack_pop(ctx->ps, &d1)) {
      003A19 E5 08            [12] 2962 	mov	a,_bp
      003A1B 24 19            [12] 2963 	add	a,#0x19
      003A1D FF               [12] 2964 	mov	r7,a
      003A1E 7E 00            [12] 2965 	mov	r6,#0x00
      003A20 7D 40            [12] 2966 	mov	r5,#0x40
      003A22 E5 08            [12] 2967 	mov	a,_bp
      003A24 24 07            [12] 2968 	add	a,#0x07
      003A26 F8               [12] 2969 	mov	r0,a
      003A27 86 82            [24] 2970 	mov	dpl,@r0
      003A29 08               [12] 2971 	inc	r0
      003A2A 86 83            [24] 2972 	mov	dph,@r0
      003A2C 08               [12] 2973 	inc	r0
      003A2D 86 F0            [24] 2974 	mov	b,@r0
      003A2F 12 6F B8         [24] 2975 	lcall	__gptrget
      003A32 FA               [12] 2976 	mov	r2,a
      003A33 A3               [24] 2977 	inc	dptr
      003A34 12 6F B8         [24] 2978 	lcall	__gptrget
      003A37 FB               [12] 2979 	mov	r3,a
      003A38 A3               [24] 2980 	inc	dptr
      003A39 12 6F B8         [24] 2981 	lcall	__gptrget
      003A3C FC               [12] 2982 	mov	r4,a
      003A3D C0 07            [24] 2983 	push	ar7
      003A3F C0 06            [24] 2984 	push	ar6
      003A41 C0 05            [24] 2985 	push	ar5
      003A43 8A 82            [24] 2986 	mov	dpl,r2
      003A45 8B 83            [24] 2987 	mov	dph,r3
      003A47 8C F0            [24] 2988 	mov	b,r4
      003A49 12 27 B4         [24] 2989 	lcall	_stack_pop
      003A4C AB 82            [24] 2990 	mov	r3,dpl
      003A4E AC 83            [24] 2991 	mov	r4,dph
      003A50 15 81            [12] 2992 	dec	sp
      003A52 15 81            [12] 2993 	dec	sp
      003A54 15 81            [12] 2994 	dec	sp
      003A56 EB               [12] 2995 	mov	a,r3
      003A57 4C               [12] 2996 	orl	a,r4
      003A58 70 63            [24] 2997 	jnz	00116$
                                   2998 ;	calc.c:162: (void)stack_push(ctx->ps, d0);
      003A5A E5 08            [12] 2999 	mov	a,_bp
      003A5C 24 07            [12] 3000 	add	a,#0x07
      003A5E F8               [12] 3001 	mov	r0,a
      003A5F 86 82            [24] 3002 	mov	dpl,@r0
      003A61 08               [12] 3003 	inc	r0
      003A62 86 83            [24] 3004 	mov	dph,@r0
      003A64 08               [12] 3005 	inc	r0
      003A65 86 F0            [24] 3006 	mov	b,@r0
      003A67 12 6F B8         [24] 3007 	lcall	__gptrget
      003A6A FA               [12] 3008 	mov	r2,a
      003A6B A3               [24] 3009 	inc	dptr
      003A6C 12 6F B8         [24] 3010 	lcall	__gptrget
      003A6F FB               [12] 3011 	mov	r3,a
      003A70 A3               [24] 3012 	inc	dptr
      003A71 12 6F B8         [24] 3013 	lcall	__gptrget
      003A74 FC               [12] 3014 	mov	r4,a
      003A75 E5 08            [12] 3015 	mov	a,_bp
      003A77 24 15            [12] 3016 	add	a,#0x15
      003A79 F8               [12] 3017 	mov	r0,a
      003A7A E6               [12] 3018 	mov	a,@r0
      003A7B C0 E0            [24] 3019 	push	acc
      003A7D 08               [12] 3020 	inc	r0
      003A7E E6               [12] 3021 	mov	a,@r0
      003A7F C0 E0            [24] 3022 	push	acc
      003A81 08               [12] 3023 	inc	r0
      003A82 E6               [12] 3024 	mov	a,@r0
      003A83 C0 E0            [24] 3025 	push	acc
      003A85 08               [12] 3026 	inc	r0
      003A86 E6               [12] 3027 	mov	a,@r0
      003A87 C0 E0            [24] 3028 	push	acc
      003A89 8A 82            [24] 3029 	mov	dpl,r2
      003A8B 8B 83            [24] 3030 	mov	dph,r3
      003A8D 8C F0            [24] 3031 	mov	b,r4
      003A8F 12 26 BA         [24] 3032 	lcall	_stack_push
      003A92 E5 81            [12] 3033 	mov	a,sp
      003A94 24 FC            [12] 3034 	add	a,#0xfc
      003A96 F5 81            [12] 3035 	mov	sp,a
                                   3036 ;	calc.c:163: printstr("\r\nstack underflow\r\n");
      003A98 7F 7F            [12] 3037 	mov	r7,#___str_9
      003A9A 7E 88            [12] 3038 	mov	r6,#(___str_9 >> 8)
      003A9C 7D 80            [12] 3039 	mov	r5,#0x80
                                   3040 ;	calc.c:51: return;
      003A9E                       3041 00393$:
                                   3042 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003A9E 8F 82            [24] 3043 	mov	dpl,r7
      003AA0 8E 83            [24] 3044 	mov	dph,r6
      003AA2 8D F0            [24] 3045 	mov	b,r5
      003AA4 12 6F B8         [24] 3046 	lcall	__gptrget
      003AA7 FC               [12] 3047 	mov	r4,a
      003AA8 70 03            [24] 3048 	jnz	01293$
      003AAA 02 56 DB         [24] 3049 	ljmp	00249$
      003AAD                       3050 01293$:
      003AAD 7B 00            [12] 3051 	mov	r3,#0x00
      003AAF 8C 82            [24] 3052 	mov	dpl,r4
      003AB1 8B 83            [24] 3053 	mov	dph,r3
      003AB3 12 2C 1F         [24] 3054 	lcall	_putchar
      003AB6 0F               [12] 3055 	inc	r7
                                   3056 ;	calc.c:163: printstr("\r\nstack underflow\r\n");
      003AB7 BF 00 E4         [24] 3057 	cjne	r7,#0x00,00393$
      003ABA 0E               [12] 3058 	inc	r6
      003ABB 80 E1            [24] 3059 	sjmp	00393$
      003ABD                       3060 00116$:
                                   3061 ;	calc.c:165: (void)stack_push(ctx->ps, d0);
      003ABD E5 08            [12] 3062 	mov	a,_bp
      003ABF 24 07            [12] 3063 	add	a,#0x07
      003AC1 F8               [12] 3064 	mov	r0,a
      003AC2 86 82            [24] 3065 	mov	dpl,@r0
      003AC4 08               [12] 3066 	inc	r0
      003AC5 86 83            [24] 3067 	mov	dph,@r0
      003AC7 08               [12] 3068 	inc	r0
      003AC8 86 F0            [24] 3069 	mov	b,@r0
      003ACA 12 6F B8         [24] 3070 	lcall	__gptrget
      003ACD FA               [12] 3071 	mov	r2,a
      003ACE A3               [24] 3072 	inc	dptr
      003ACF 12 6F B8         [24] 3073 	lcall	__gptrget
      003AD2 FB               [12] 3074 	mov	r3,a
      003AD3 A3               [24] 3075 	inc	dptr
      003AD4 12 6F B8         [24] 3076 	lcall	__gptrget
      003AD7 FC               [12] 3077 	mov	r4,a
      003AD8 E5 08            [12] 3078 	mov	a,_bp
      003ADA 24 15            [12] 3079 	add	a,#0x15
      003ADC F8               [12] 3080 	mov	r0,a
      003ADD E6               [12] 3081 	mov	a,@r0
      003ADE C0 E0            [24] 3082 	push	acc
      003AE0 08               [12] 3083 	inc	r0
      003AE1 E6               [12] 3084 	mov	a,@r0
      003AE2 C0 E0            [24] 3085 	push	acc
      003AE4 08               [12] 3086 	inc	r0
      003AE5 E6               [12] 3087 	mov	a,@r0
      003AE6 C0 E0            [24] 3088 	push	acc
      003AE8 08               [12] 3089 	inc	r0
      003AE9 E6               [12] 3090 	mov	a,@r0
      003AEA C0 E0            [24] 3091 	push	acc
      003AEC 8A 82            [24] 3092 	mov	dpl,r2
      003AEE 8B 83            [24] 3093 	mov	dph,r3
      003AF0 8C F0            [24] 3094 	mov	b,r4
      003AF2 12 26 BA         [24] 3095 	lcall	_stack_push
      003AF5 E5 81            [12] 3096 	mov	a,sp
      003AF7 24 FC            [12] 3097 	add	a,#0xfc
      003AF9 F5 81            [12] 3098 	mov	sp,a
                                   3099 ;	calc.c:166: (void)stack_push(ctx->ps, d1);
      003AFB E5 08            [12] 3100 	mov	a,_bp
      003AFD 24 07            [12] 3101 	add	a,#0x07
      003AFF F8               [12] 3102 	mov	r0,a
      003B00 86 82            [24] 3103 	mov	dpl,@r0
      003B02 08               [12] 3104 	inc	r0
      003B03 86 83            [24] 3105 	mov	dph,@r0
      003B05 08               [12] 3106 	inc	r0
      003B06 86 F0            [24] 3107 	mov	b,@r0
      003B08 12 6F B8         [24] 3108 	lcall	__gptrget
      003B0B FA               [12] 3109 	mov	r2,a
      003B0C A3               [24] 3110 	inc	dptr
      003B0D 12 6F B8         [24] 3111 	lcall	__gptrget
      003B10 FB               [12] 3112 	mov	r3,a
      003B11 A3               [24] 3113 	inc	dptr
      003B12 12 6F B8         [24] 3114 	lcall	__gptrget
      003B15 FC               [12] 3115 	mov	r4,a
      003B16 E5 08            [12] 3116 	mov	a,_bp
      003B18 24 19            [12] 3117 	add	a,#0x19
      003B1A F8               [12] 3118 	mov	r0,a
      003B1B E6               [12] 3119 	mov	a,@r0
      003B1C C0 E0            [24] 3120 	push	acc
      003B1E 08               [12] 3121 	inc	r0
      003B1F E6               [12] 3122 	mov	a,@r0
      003B20 C0 E0            [24] 3123 	push	acc
      003B22 08               [12] 3124 	inc	r0
      003B23 E6               [12] 3125 	mov	a,@r0
      003B24 C0 E0            [24] 3126 	push	acc
      003B26 08               [12] 3127 	inc	r0
      003B27 E6               [12] 3128 	mov	a,@r0
      003B28 C0 E0            [24] 3129 	push	acc
      003B2A 8A 82            [24] 3130 	mov	dpl,r2
      003B2C 8B 83            [24] 3131 	mov	dph,r3
      003B2E 8C F0            [24] 3132 	mov	b,r4
      003B30 12 26 BA         [24] 3133 	lcall	_stack_push
      003B33 E5 81            [12] 3134 	mov	a,sp
      003B35 24 FC            [12] 3135 	add	a,#0xfc
      003B37 F5 81            [12] 3136 	mov	sp,a
                                   3137 ;	calc.c:168: break;
      003B39 02 56 DB         [24] 3138 	ljmp	00249$
                                   3139 ;	calc.c:169: case 'm':
      003B3C                       3140 00121$:
                                   3141 ;	calc.c:170: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003B3C E5 08            [12] 3142 	mov	a,_bp
      003B3E 24 15            [12] 3143 	add	a,#0x15
      003B40 FF               [12] 3144 	mov	r7,a
      003B41 7E 00            [12] 3145 	mov	r6,#0x00
      003B43 7D 40            [12] 3146 	mov	r5,#0x40
      003B45 E5 08            [12] 3147 	mov	a,_bp
      003B47 24 12            [12] 3148 	add	a,#0x12
      003B49 F8               [12] 3149 	mov	r0,a
      003B4A E5 08            [12] 3150 	mov	a,_bp
      003B4C 24 07            [12] 3151 	add	a,#0x07
      003B4E F9               [12] 3152 	mov	r1,a
      003B4F 74 13            [12] 3153 	mov	a,#0x13
      003B51 26               [12] 3154 	add	a,@r0
      003B52 F7               [12] 3155 	mov	@r1,a
      003B53 74 40            [12] 3156 	mov	a,#0x40
      003B55 08               [12] 3157 	inc	r0
      003B56 36               [12] 3158 	addc	a,@r0
      003B57 09               [12] 3159 	inc	r1
      003B58 F7               [12] 3160 	mov	@r1,a
      003B59 08               [12] 3161 	inc	r0
      003B5A 09               [12] 3162 	inc	r1
      003B5B E6               [12] 3163 	mov	a,@r0
      003B5C F7               [12] 3164 	mov	@r1,a
      003B5D E5 08            [12] 3165 	mov	a,_bp
      003B5F 24 07            [12] 3166 	add	a,#0x07
      003B61 F8               [12] 3167 	mov	r0,a
      003B62 86 82            [24] 3168 	mov	dpl,@r0
      003B64 08               [12] 3169 	inc	r0
      003B65 86 83            [24] 3170 	mov	dph,@r0
      003B67 08               [12] 3171 	inc	r0
      003B68 86 F0            [24] 3172 	mov	b,@r0
      003B6A 12 6F B8         [24] 3173 	lcall	__gptrget
      003B6D FA               [12] 3174 	mov	r2,a
      003B6E A3               [24] 3175 	inc	dptr
      003B6F 12 6F B8         [24] 3176 	lcall	__gptrget
      003B72 FB               [12] 3177 	mov	r3,a
      003B73 A3               [24] 3178 	inc	dptr
      003B74 12 6F B8         [24] 3179 	lcall	__gptrget
      003B77 FC               [12] 3180 	mov	r4,a
      003B78 C0 07            [24] 3181 	push	ar7
      003B7A C0 06            [24] 3182 	push	ar6
      003B7C C0 05            [24] 3183 	push	ar5
      003B7E 8A 82            [24] 3184 	mov	dpl,r2
      003B80 8B 83            [24] 3185 	mov	dph,r3
      003B82 8C F0            [24] 3186 	mov	b,r4
      003B84 12 27 B4         [24] 3187 	lcall	_stack_pop
      003B87 AB 82            [24] 3188 	mov	r3,dpl
      003B89 AC 83            [24] 3189 	mov	r4,dph
      003B8B 15 81            [12] 3190 	dec	sp
      003B8D 15 81            [12] 3191 	dec	sp
      003B8F 15 81            [12] 3192 	dec	sp
      003B91 EB               [12] 3193 	mov	a,r3
      003B92 4C               [12] 3194 	orl	a,r4
      003B93 70 25            [24] 3195 	jnz	00125$
      003B95 7F 7F            [12] 3196 	mov	r7,#___str_9
      003B97 7E 88            [12] 3197 	mov	r6,#(___str_9 >> 8)
      003B99 7D 80            [12] 3198 	mov	r5,#0x80
                                   3199 ;	calc.c:51: return;
      003B9B                       3200 00396$:
                                   3201 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003B9B 8F 82            [24] 3202 	mov	dpl,r7
      003B9D 8E 83            [24] 3203 	mov	dph,r6
      003B9F 8D F0            [24] 3204 	mov	b,r5
      003BA1 12 6F B8         [24] 3205 	lcall	__gptrget
      003BA4 FC               [12] 3206 	mov	r4,a
      003BA5 70 03            [24] 3207 	jnz	01296$
      003BA7 02 56 DB         [24] 3208 	ljmp	00249$
      003BAA                       3209 01296$:
      003BAA 7B 00            [12] 3210 	mov	r3,#0x00
      003BAC 8C 82            [24] 3211 	mov	dpl,r4
      003BAE 8B 83            [24] 3212 	mov	dph,r3
      003BB0 12 2C 1F         [24] 3213 	lcall	_putchar
      003BB3 0F               [12] 3214 	inc	r7
                                   3215 ;	calc.c:170: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003BB4 BF 00 E4         [24] 3216 	cjne	r7,#0x00,00396$
      003BB7 0E               [12] 3217 	inc	r6
      003BB8 80 E1            [24] 3218 	sjmp	00396$
      003BBA                       3219 00125$:
                                   3220 ;	calc.c:172: if (!stack_push(ctx->ss, d0)) {
      003BBA E5 08            [12] 3221 	mov	a,_bp
      003BBC 24 12            [12] 3222 	add	a,#0x12
      003BBE F8               [12] 3223 	mov	r0,a
      003BBF 74 16            [12] 3224 	mov	a,#0x16
      003BC1 26               [12] 3225 	add	a,@r0
      003BC2 FA               [12] 3226 	mov	r2,a
      003BC3 74 40            [12] 3227 	mov	a,#0x40
      003BC5 08               [12] 3228 	inc	r0
      003BC6 36               [12] 3229 	addc	a,@r0
      003BC7 FB               [12] 3230 	mov	r3,a
      003BC8 08               [12] 3231 	inc	r0
      003BC9 86 04            [24] 3232 	mov	ar4,@r0
      003BCB 8A 82            [24] 3233 	mov	dpl,r2
      003BCD 8B 83            [24] 3234 	mov	dph,r3
      003BCF 8C F0            [24] 3235 	mov	b,r4
      003BD1 12 6F B8         [24] 3236 	lcall	__gptrget
      003BD4 FA               [12] 3237 	mov	r2,a
      003BD5 A3               [24] 3238 	inc	dptr
      003BD6 12 6F B8         [24] 3239 	lcall	__gptrget
      003BD9 FB               [12] 3240 	mov	r3,a
      003BDA A3               [24] 3241 	inc	dptr
      003BDB 12 6F B8         [24] 3242 	lcall	__gptrget
      003BDE FC               [12] 3243 	mov	r4,a
      003BDF E5 08            [12] 3244 	mov	a,_bp
      003BE1 24 15            [12] 3245 	add	a,#0x15
      003BE3 F8               [12] 3246 	mov	r0,a
      003BE4 E6               [12] 3247 	mov	a,@r0
      003BE5 C0 E0            [24] 3248 	push	acc
      003BE7 08               [12] 3249 	inc	r0
      003BE8 E6               [12] 3250 	mov	a,@r0
      003BE9 C0 E0            [24] 3251 	push	acc
      003BEB 08               [12] 3252 	inc	r0
      003BEC E6               [12] 3253 	mov	a,@r0
      003BED C0 E0            [24] 3254 	push	acc
      003BEF 08               [12] 3255 	inc	r0
      003BF0 E6               [12] 3256 	mov	a,@r0
      003BF1 C0 E0            [24] 3257 	push	acc
      003BF3 8A 82            [24] 3258 	mov	dpl,r2
      003BF5 8B 83            [24] 3259 	mov	dph,r3
      003BF7 8C F0            [24] 3260 	mov	b,r4
      003BF9 12 26 BA         [24] 3261 	lcall	_stack_push
      003BFC AB 82            [24] 3262 	mov	r3,dpl
      003BFE AC 83            [24] 3263 	mov	r4,dph
      003C00 E5 81            [12] 3264 	mov	a,sp
      003C02 24 FC            [12] 3265 	add	a,#0xfc
      003C04 F5 81            [12] 3266 	mov	sp,a
      003C06 EB               [12] 3267 	mov	a,r3
      003C07 4C               [12] 3268 	orl	a,r4
      003C08 60 03            [24] 3269 	jz	01298$
      003C0A 02 56 DB         [24] 3270 	ljmp	00249$
      003C0D                       3271 01298$:
                                   3272 ;	calc.c:173: printstr("\r\nsecondary stack overflow\r\n");
      003C0D 7F 93            [12] 3273 	mov	r7,#___str_10
      003C0F 7E 88            [12] 3274 	mov	r6,#(___str_10 >> 8)
      003C11 7D 80            [12] 3275 	mov	r5,#0x80
                                   3276 ;	calc.c:51: return;
      003C13                       3277 00399$:
                                   3278 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003C13 8F 82            [24] 3279 	mov	dpl,r7
      003C15 8E 83            [24] 3280 	mov	dph,r6
      003C17 8D F0            [24] 3281 	mov	b,r5
      003C19 12 6F B8         [24] 3282 	lcall	__gptrget
      003C1C FC               [12] 3283 	mov	r4,a
      003C1D 60 10            [24] 3284 	jz	00285$
      003C1F 7B 00            [12] 3285 	mov	r3,#0x00
      003C21 8C 82            [24] 3286 	mov	dpl,r4
      003C23 8B 83            [24] 3287 	mov	dph,r3
      003C25 12 2C 1F         [24] 3288 	lcall	_putchar
      003C28 0F               [12] 3289 	inc	r7
                                   3290 ;	calc.c:173: printstr("\r\nsecondary stack overflow\r\n");
      003C29 BF 00 E7         [24] 3291 	cjne	r7,#0x00,00399$
      003C2C 0E               [12] 3292 	inc	r6
      003C2D 80 E4            [24] 3293 	sjmp	00399$
      003C2F                       3294 00285$:
                                   3295 ;	calc.c:174: (void)stack_push(ctx->ps, d0);
      003C2F E5 08            [12] 3296 	mov	a,_bp
      003C31 24 07            [12] 3297 	add	a,#0x07
      003C33 F8               [12] 3298 	mov	r0,a
      003C34 86 82            [24] 3299 	mov	dpl,@r0
      003C36 08               [12] 3300 	inc	r0
      003C37 86 83            [24] 3301 	mov	dph,@r0
      003C39 08               [12] 3302 	inc	r0
      003C3A 86 F0            [24] 3303 	mov	b,@r0
      003C3C 12 6F B8         [24] 3304 	lcall	__gptrget
      003C3F FA               [12] 3305 	mov	r2,a
      003C40 A3               [24] 3306 	inc	dptr
      003C41 12 6F B8         [24] 3307 	lcall	__gptrget
      003C44 FB               [12] 3308 	mov	r3,a
      003C45 A3               [24] 3309 	inc	dptr
      003C46 12 6F B8         [24] 3310 	lcall	__gptrget
      003C49 FC               [12] 3311 	mov	r4,a
      003C4A E5 08            [12] 3312 	mov	a,_bp
      003C4C 24 15            [12] 3313 	add	a,#0x15
      003C4E F8               [12] 3314 	mov	r0,a
      003C4F E6               [12] 3315 	mov	a,@r0
      003C50 C0 E0            [24] 3316 	push	acc
      003C52 08               [12] 3317 	inc	r0
      003C53 E6               [12] 3318 	mov	a,@r0
      003C54 C0 E0            [24] 3319 	push	acc
      003C56 08               [12] 3320 	inc	r0
      003C57 E6               [12] 3321 	mov	a,@r0
      003C58 C0 E0            [24] 3322 	push	acc
      003C5A 08               [12] 3323 	inc	r0
      003C5B E6               [12] 3324 	mov	a,@r0
      003C5C C0 E0            [24] 3325 	push	acc
      003C5E 8A 82            [24] 3326 	mov	dpl,r2
      003C60 8B 83            [24] 3327 	mov	dph,r3
      003C62 8C F0            [24] 3328 	mov	b,r4
      003C64 12 26 BA         [24] 3329 	lcall	_stack_push
      003C67 E5 81            [12] 3330 	mov	a,sp
      003C69 24 FC            [12] 3331 	add	a,#0xfc
      003C6B F5 81            [12] 3332 	mov	sp,a
                                   3333 ;	calc.c:177: break;
      003C6D 02 56 DB         [24] 3334 	ljmp	00249$
                                   3335 ;	calc.c:178: case 'M':
      003C70                       3336 00127$:
                                   3337 ;	calc.c:179: if (!stack_pop(ctx->ss, &d0)) printstr("\r\nsecondary stack underflow\r\n");
      003C70 E5 08            [12] 3338 	mov	a,_bp
      003C72 24 15            [12] 3339 	add	a,#0x15
      003C74 FF               [12] 3340 	mov	r7,a
      003C75 7E 00            [12] 3341 	mov	r6,#0x00
      003C77 7D 40            [12] 3342 	mov	r5,#0x40
      003C79 E5 08            [12] 3343 	mov	a,_bp
      003C7B 24 12            [12] 3344 	add	a,#0x12
      003C7D F8               [12] 3345 	mov	r0,a
      003C7E E5 08            [12] 3346 	mov	a,_bp
      003C80 24 07            [12] 3347 	add	a,#0x07
      003C82 F9               [12] 3348 	mov	r1,a
      003C83 74 16            [12] 3349 	mov	a,#0x16
      003C85 26               [12] 3350 	add	a,@r0
      003C86 F7               [12] 3351 	mov	@r1,a
      003C87 74 40            [12] 3352 	mov	a,#0x40
      003C89 08               [12] 3353 	inc	r0
      003C8A 36               [12] 3354 	addc	a,@r0
      003C8B 09               [12] 3355 	inc	r1
      003C8C F7               [12] 3356 	mov	@r1,a
      003C8D 08               [12] 3357 	inc	r0
      003C8E 09               [12] 3358 	inc	r1
      003C8F E6               [12] 3359 	mov	a,@r0
      003C90 F7               [12] 3360 	mov	@r1,a
      003C91 E5 08            [12] 3361 	mov	a,_bp
      003C93 24 07            [12] 3362 	add	a,#0x07
      003C95 F8               [12] 3363 	mov	r0,a
      003C96 86 82            [24] 3364 	mov	dpl,@r0
      003C98 08               [12] 3365 	inc	r0
      003C99 86 83            [24] 3366 	mov	dph,@r0
      003C9B 08               [12] 3367 	inc	r0
      003C9C 86 F0            [24] 3368 	mov	b,@r0
      003C9E 12 6F B8         [24] 3369 	lcall	__gptrget
      003CA1 FA               [12] 3370 	mov	r2,a
      003CA2 A3               [24] 3371 	inc	dptr
      003CA3 12 6F B8         [24] 3372 	lcall	__gptrget
      003CA6 FB               [12] 3373 	mov	r3,a
      003CA7 A3               [24] 3374 	inc	dptr
      003CA8 12 6F B8         [24] 3375 	lcall	__gptrget
      003CAB FC               [12] 3376 	mov	r4,a
      003CAC C0 07            [24] 3377 	push	ar7
      003CAE C0 06            [24] 3378 	push	ar6
      003CB0 C0 05            [24] 3379 	push	ar5
      003CB2 8A 82            [24] 3380 	mov	dpl,r2
      003CB4 8B 83            [24] 3381 	mov	dph,r3
      003CB6 8C F0            [24] 3382 	mov	b,r4
      003CB8 12 27 B4         [24] 3383 	lcall	_stack_pop
      003CBB AB 82            [24] 3384 	mov	r3,dpl
      003CBD AC 83            [24] 3385 	mov	r4,dph
      003CBF 15 81            [12] 3386 	dec	sp
      003CC1 15 81            [12] 3387 	dec	sp
      003CC3 15 81            [12] 3388 	dec	sp
      003CC5 EB               [12] 3389 	mov	a,r3
      003CC6 4C               [12] 3390 	orl	a,r4
      003CC7 70 25            [24] 3391 	jnz	00131$
      003CC9 7F B0            [12] 3392 	mov	r7,#___str_11
      003CCB 7E 88            [12] 3393 	mov	r6,#(___str_11 >> 8)
      003CCD 7D 80            [12] 3394 	mov	r5,#0x80
                                   3395 ;	calc.c:51: return;
      003CCF                       3396 00402$:
                                   3397 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003CCF 8F 82            [24] 3398 	mov	dpl,r7
      003CD1 8E 83            [24] 3399 	mov	dph,r6
      003CD3 8D F0            [24] 3400 	mov	b,r5
      003CD5 12 6F B8         [24] 3401 	lcall	__gptrget
      003CD8 FC               [12] 3402 	mov	r4,a
      003CD9 70 03            [24] 3403 	jnz	01302$
      003CDB 02 56 DB         [24] 3404 	ljmp	00249$
      003CDE                       3405 01302$:
      003CDE 7B 00            [12] 3406 	mov	r3,#0x00
      003CE0 8C 82            [24] 3407 	mov	dpl,r4
      003CE2 8B 83            [24] 3408 	mov	dph,r3
      003CE4 12 2C 1F         [24] 3409 	lcall	_putchar
      003CE7 0F               [12] 3410 	inc	r7
                                   3411 ;	calc.c:179: if (!stack_pop(ctx->ss, &d0)) printstr("\r\nsecondary stack underflow\r\n");
      003CE8 BF 00 E4         [24] 3412 	cjne	r7,#0x00,00402$
      003CEB 0E               [12] 3413 	inc	r6
      003CEC 80 E1            [24] 3414 	sjmp	00402$
      003CEE                       3415 00131$:
                                   3416 ;	calc.c:181: if (!stack_push(ctx->ps, d0)) {
      003CEE E5 08            [12] 3417 	mov	a,_bp
      003CF0 24 12            [12] 3418 	add	a,#0x12
      003CF2 F8               [12] 3419 	mov	r0,a
      003CF3 74 13            [12] 3420 	mov	a,#0x13
      003CF5 26               [12] 3421 	add	a,@r0
      003CF6 FA               [12] 3422 	mov	r2,a
      003CF7 74 40            [12] 3423 	mov	a,#0x40
      003CF9 08               [12] 3424 	inc	r0
      003CFA 36               [12] 3425 	addc	a,@r0
      003CFB FB               [12] 3426 	mov	r3,a
      003CFC 08               [12] 3427 	inc	r0
      003CFD 86 04            [24] 3428 	mov	ar4,@r0
      003CFF 8A 82            [24] 3429 	mov	dpl,r2
      003D01 8B 83            [24] 3430 	mov	dph,r3
      003D03 8C F0            [24] 3431 	mov	b,r4
      003D05 12 6F B8         [24] 3432 	lcall	__gptrget
      003D08 FA               [12] 3433 	mov	r2,a
      003D09 A3               [24] 3434 	inc	dptr
      003D0A 12 6F B8         [24] 3435 	lcall	__gptrget
      003D0D FB               [12] 3436 	mov	r3,a
      003D0E A3               [24] 3437 	inc	dptr
      003D0F 12 6F B8         [24] 3438 	lcall	__gptrget
      003D12 FC               [12] 3439 	mov	r4,a
      003D13 E5 08            [12] 3440 	mov	a,_bp
      003D15 24 15            [12] 3441 	add	a,#0x15
      003D17 F8               [12] 3442 	mov	r0,a
      003D18 E6               [12] 3443 	mov	a,@r0
      003D19 C0 E0            [24] 3444 	push	acc
      003D1B 08               [12] 3445 	inc	r0
      003D1C E6               [12] 3446 	mov	a,@r0
      003D1D C0 E0            [24] 3447 	push	acc
      003D1F 08               [12] 3448 	inc	r0
      003D20 E6               [12] 3449 	mov	a,@r0
      003D21 C0 E0            [24] 3450 	push	acc
      003D23 08               [12] 3451 	inc	r0
      003D24 E6               [12] 3452 	mov	a,@r0
      003D25 C0 E0            [24] 3453 	push	acc
      003D27 8A 82            [24] 3454 	mov	dpl,r2
      003D29 8B 83            [24] 3455 	mov	dph,r3
      003D2B 8C F0            [24] 3456 	mov	b,r4
      003D2D 12 26 BA         [24] 3457 	lcall	_stack_push
      003D30 AB 82            [24] 3458 	mov	r3,dpl
      003D32 AC 83            [24] 3459 	mov	r4,dph
      003D34 E5 81            [12] 3460 	mov	a,sp
      003D36 24 FC            [12] 3461 	add	a,#0xfc
      003D38 F5 81            [12] 3462 	mov	sp,a
      003D3A EB               [12] 3463 	mov	a,r3
      003D3B 4C               [12] 3464 	orl	a,r4
      003D3C 60 03            [24] 3465 	jz	01304$
      003D3E 02 56 DB         [24] 3466 	ljmp	00249$
      003D41                       3467 01304$:
                                   3468 ;	calc.c:182: printstr("\r\nstack overflow\r\n");
      003D41 7F CE            [12] 3469 	mov	r7,#___str_12
      003D43 7E 88            [12] 3470 	mov	r6,#(___str_12 >> 8)
      003D45 7D 80            [12] 3471 	mov	r5,#0x80
                                   3472 ;	calc.c:51: return;
      003D47                       3473 00405$:
                                   3474 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003D47 8F 82            [24] 3475 	mov	dpl,r7
      003D49 8E 83            [24] 3476 	mov	dph,r6
      003D4B 8D F0            [24] 3477 	mov	b,r5
      003D4D 12 6F B8         [24] 3478 	lcall	__gptrget
      003D50 FC               [12] 3479 	mov	r4,a
      003D51 60 10            [24] 3480 	jz	00289$
      003D53 7B 00            [12] 3481 	mov	r3,#0x00
      003D55 8C 82            [24] 3482 	mov	dpl,r4
      003D57 8B 83            [24] 3483 	mov	dph,r3
      003D59 12 2C 1F         [24] 3484 	lcall	_putchar
      003D5C 0F               [12] 3485 	inc	r7
                                   3486 ;	calc.c:182: printstr("\r\nstack overflow\r\n");
      003D5D BF 00 E7         [24] 3487 	cjne	r7,#0x00,00405$
      003D60 0E               [12] 3488 	inc	r6
      003D61 80 E4            [24] 3489 	sjmp	00405$
      003D63                       3490 00289$:
                                   3491 ;	calc.c:183: (void)stack_push(ctx->ss, d0);
      003D63 E5 08            [12] 3492 	mov	a,_bp
      003D65 24 07            [12] 3493 	add	a,#0x07
      003D67 F8               [12] 3494 	mov	r0,a
      003D68 86 82            [24] 3495 	mov	dpl,@r0
      003D6A 08               [12] 3496 	inc	r0
      003D6B 86 83            [24] 3497 	mov	dph,@r0
      003D6D 08               [12] 3498 	inc	r0
      003D6E 86 F0            [24] 3499 	mov	b,@r0
      003D70 12 6F B8         [24] 3500 	lcall	__gptrget
      003D73 FA               [12] 3501 	mov	r2,a
      003D74 A3               [24] 3502 	inc	dptr
      003D75 12 6F B8         [24] 3503 	lcall	__gptrget
      003D78 FB               [12] 3504 	mov	r3,a
      003D79 A3               [24] 3505 	inc	dptr
      003D7A 12 6F B8         [24] 3506 	lcall	__gptrget
      003D7D FC               [12] 3507 	mov	r4,a
      003D7E E5 08            [12] 3508 	mov	a,_bp
      003D80 24 15            [12] 3509 	add	a,#0x15
      003D82 F8               [12] 3510 	mov	r0,a
      003D83 E6               [12] 3511 	mov	a,@r0
      003D84 C0 E0            [24] 3512 	push	acc
      003D86 08               [12] 3513 	inc	r0
      003D87 E6               [12] 3514 	mov	a,@r0
      003D88 C0 E0            [24] 3515 	push	acc
      003D8A 08               [12] 3516 	inc	r0
      003D8B E6               [12] 3517 	mov	a,@r0
      003D8C C0 E0            [24] 3518 	push	acc
      003D8E 08               [12] 3519 	inc	r0
      003D8F E6               [12] 3520 	mov	a,@r0
      003D90 C0 E0            [24] 3521 	push	acc
      003D92 8A 82            [24] 3522 	mov	dpl,r2
      003D94 8B 83            [24] 3523 	mov	dph,r3
      003D96 8C F0            [24] 3524 	mov	b,r4
      003D98 12 26 BA         [24] 3525 	lcall	_stack_push
      003D9B E5 81            [12] 3526 	mov	a,sp
      003D9D 24 FC            [12] 3527 	add	a,#0xfc
      003D9F F5 81            [12] 3528 	mov	sp,a
                                   3529 ;	calc.c:186: break;
      003DA1 02 56 DB         [24] 3530 	ljmp	00249$
                                   3531 ;	calc.c:187: case 'u':
      003DA4                       3532 00133$:
                                   3533 ;	calc.c:188: if (!stack_peek(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003DA4 E5 08            [12] 3534 	mov	a,_bp
      003DA6 24 15            [12] 3535 	add	a,#0x15
      003DA8 FF               [12] 3536 	mov	r7,a
      003DA9 7E 00            [12] 3537 	mov	r6,#0x00
      003DAB 7D 40            [12] 3538 	mov	r5,#0x40
      003DAD E5 08            [12] 3539 	mov	a,_bp
      003DAF 24 12            [12] 3540 	add	a,#0x12
      003DB1 F8               [12] 3541 	mov	r0,a
      003DB2 74 13            [12] 3542 	mov	a,#0x13
      003DB4 26               [12] 3543 	add	a,@r0
      003DB5 FA               [12] 3544 	mov	r2,a
      003DB6 ED               [12] 3545 	mov	a,r5
      003DB7 08               [12] 3546 	inc	r0
      003DB8 36               [12] 3547 	addc	a,@r0
      003DB9 FB               [12] 3548 	mov	r3,a
      003DBA 08               [12] 3549 	inc	r0
      003DBB 86 04            [24] 3550 	mov	ar4,@r0
      003DBD 8A 82            [24] 3551 	mov	dpl,r2
      003DBF 8B 83            [24] 3552 	mov	dph,r3
      003DC1 8C F0            [24] 3553 	mov	b,r4
      003DC3 12 6F B8         [24] 3554 	lcall	__gptrget
      003DC6 FA               [12] 3555 	mov	r2,a
      003DC7 A3               [24] 3556 	inc	dptr
      003DC8 12 6F B8         [24] 3557 	lcall	__gptrget
      003DCB FB               [12] 3558 	mov	r3,a
      003DCC A3               [24] 3559 	inc	dptr
      003DCD 12 6F B8         [24] 3560 	lcall	__gptrget
      003DD0 FC               [12] 3561 	mov	r4,a
      003DD1 C0 07            [24] 3562 	push	ar7
      003DD3 C0 06            [24] 3563 	push	ar6
      003DD5 C0 05            [24] 3564 	push	ar5
      003DD7 8A 82            [24] 3565 	mov	dpl,r2
      003DD9 8B 83            [24] 3566 	mov	dph,r3
      003DDB 8C F0            [24] 3567 	mov	b,r4
      003DDD 12 28 D8         [24] 3568 	lcall	_stack_peek
      003DE0 AB 82            [24] 3569 	mov	r3,dpl
      003DE2 AC 83            [24] 3570 	mov	r4,dph
      003DE4 15 81            [12] 3571 	dec	sp
      003DE6 15 81            [12] 3572 	dec	sp
      003DE8 15 81            [12] 3573 	dec	sp
      003DEA EB               [12] 3574 	mov	a,r3
      003DEB 4C               [12] 3575 	orl	a,r4
      003DEC 70 25            [24] 3576 	jnz	00137$
      003DEE 7F 7F            [12] 3577 	mov	r7,#___str_9
      003DF0 7E 88            [12] 3578 	mov	r6,#(___str_9 >> 8)
      003DF2 7D 80            [12] 3579 	mov	r5,#0x80
                                   3580 ;	calc.c:51: return;
      003DF4                       3581 00408$:
                                   3582 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003DF4 8F 82            [24] 3583 	mov	dpl,r7
      003DF6 8E 83            [24] 3584 	mov	dph,r6
      003DF8 8D F0            [24] 3585 	mov	b,r5
      003DFA 12 6F B8         [24] 3586 	lcall	__gptrget
      003DFD FC               [12] 3587 	mov	r4,a
      003DFE 70 03            [24] 3588 	jnz	01308$
      003E00 02 56 DB         [24] 3589 	ljmp	00249$
      003E03                       3590 01308$:
      003E03 7B 00            [12] 3591 	mov	r3,#0x00
      003E05 8C 82            [24] 3592 	mov	dpl,r4
      003E07 8B 83            [24] 3593 	mov	dph,r3
      003E09 12 2C 1F         [24] 3594 	lcall	_putchar
      003E0C 0F               [12] 3595 	inc	r7
                                   3596 ;	calc.c:188: if (!stack_peek(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003E0D BF 00 E4         [24] 3597 	cjne	r7,#0x00,00408$
      003E10 0E               [12] 3598 	inc	r6
      003E11 80 E1            [24] 3599 	sjmp	00408$
      003E13                       3600 00137$:
                                   3601 ;	calc.c:189: else if (!stack_push(ctx->ss, d0)) printstr("\r\nsecondary stack overflow\r\n");
      003E13 E5 08            [12] 3602 	mov	a,_bp
      003E15 24 12            [12] 3603 	add	a,#0x12
      003E17 F8               [12] 3604 	mov	r0,a
      003E18 74 16            [12] 3605 	mov	a,#0x16
      003E1A 26               [12] 3606 	add	a,@r0
      003E1B FA               [12] 3607 	mov	r2,a
      003E1C 74 40            [12] 3608 	mov	a,#0x40
      003E1E 08               [12] 3609 	inc	r0
      003E1F 36               [12] 3610 	addc	a,@r0
      003E20 FB               [12] 3611 	mov	r3,a
      003E21 08               [12] 3612 	inc	r0
      003E22 86 04            [24] 3613 	mov	ar4,@r0
      003E24 8A 82            [24] 3614 	mov	dpl,r2
      003E26 8B 83            [24] 3615 	mov	dph,r3
      003E28 8C F0            [24] 3616 	mov	b,r4
      003E2A 12 6F B8         [24] 3617 	lcall	__gptrget
      003E2D FA               [12] 3618 	mov	r2,a
      003E2E A3               [24] 3619 	inc	dptr
      003E2F 12 6F B8         [24] 3620 	lcall	__gptrget
      003E32 FB               [12] 3621 	mov	r3,a
      003E33 A3               [24] 3622 	inc	dptr
      003E34 12 6F B8         [24] 3623 	lcall	__gptrget
      003E37 FC               [12] 3624 	mov	r4,a
      003E38 E5 08            [12] 3625 	mov	a,_bp
      003E3A 24 15            [12] 3626 	add	a,#0x15
      003E3C F8               [12] 3627 	mov	r0,a
      003E3D E6               [12] 3628 	mov	a,@r0
      003E3E C0 E0            [24] 3629 	push	acc
      003E40 08               [12] 3630 	inc	r0
      003E41 E6               [12] 3631 	mov	a,@r0
      003E42 C0 E0            [24] 3632 	push	acc
      003E44 08               [12] 3633 	inc	r0
      003E45 E6               [12] 3634 	mov	a,@r0
      003E46 C0 E0            [24] 3635 	push	acc
      003E48 08               [12] 3636 	inc	r0
      003E49 E6               [12] 3637 	mov	a,@r0
      003E4A C0 E0            [24] 3638 	push	acc
      003E4C 8A 82            [24] 3639 	mov	dpl,r2
      003E4E 8B 83            [24] 3640 	mov	dph,r3
      003E50 8C F0            [24] 3641 	mov	b,r4
      003E52 12 26 BA         [24] 3642 	lcall	_stack_push
      003E55 AB 82            [24] 3643 	mov	r3,dpl
      003E57 AC 83            [24] 3644 	mov	r4,dph
      003E59 E5 81            [12] 3645 	mov	a,sp
      003E5B 24 FC            [12] 3646 	add	a,#0xfc
      003E5D F5 81            [12] 3647 	mov	sp,a
      003E5F EB               [12] 3648 	mov	a,r3
      003E60 4C               [12] 3649 	orl	a,r4
      003E61 60 03            [24] 3650 	jz	01310$
      003E63 02 56 DB         [24] 3651 	ljmp	00249$
      003E66                       3652 01310$:
      003E66 7F 93            [12] 3653 	mov	r7,#___str_10
      003E68 7E 88            [12] 3654 	mov	r6,#(___str_10 >> 8)
      003E6A 7D 80            [12] 3655 	mov	r5,#0x80
                                   3656 ;	calc.c:51: return;
      003E6C                       3657 00411$:
                                   3658 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003E6C 8F 82            [24] 3659 	mov	dpl,r7
      003E6E 8E 83            [24] 3660 	mov	dph,r6
      003E70 8D F0            [24] 3661 	mov	b,r5
      003E72 12 6F B8         [24] 3662 	lcall	__gptrget
      003E75 FC               [12] 3663 	mov	r4,a
      003E76 70 03            [24] 3664 	jnz	01311$
      003E78 02 56 DB         [24] 3665 	ljmp	00249$
      003E7B                       3666 01311$:
      003E7B 7B 00            [12] 3667 	mov	r3,#0x00
      003E7D 8C 82            [24] 3668 	mov	dpl,r4
      003E7F 8B 83            [24] 3669 	mov	dph,r3
      003E81 12 2C 1F         [24] 3670 	lcall	_putchar
      003E84 0F               [12] 3671 	inc	r7
                                   3672 ;	calc.c:191: case 'U':
      003E85 BF 00 E4         [24] 3673 	cjne	r7,#0x00,00411$
      003E88 0E               [12] 3674 	inc	r6
      003E89 80 E1            [24] 3675 	sjmp	00411$
      003E8B                       3676 00139$:
                                   3677 ;	calc.c:192: if (!stack_peek(ctx->ss, &d0)) printstr("\r\nsecondary stack underflow\r\n");
      003E8B E5 08            [12] 3678 	mov	a,_bp
      003E8D 24 15            [12] 3679 	add	a,#0x15
      003E8F FF               [12] 3680 	mov	r7,a
      003E90 7E 00            [12] 3681 	mov	r6,#0x00
      003E92 7D 40            [12] 3682 	mov	r5,#0x40
      003E94 E5 08            [12] 3683 	mov	a,_bp
      003E96 24 12            [12] 3684 	add	a,#0x12
      003E98 F8               [12] 3685 	mov	r0,a
      003E99 74 16            [12] 3686 	mov	a,#0x16
      003E9B 26               [12] 3687 	add	a,@r0
      003E9C FA               [12] 3688 	mov	r2,a
      003E9D ED               [12] 3689 	mov	a,r5
      003E9E 08               [12] 3690 	inc	r0
      003E9F 36               [12] 3691 	addc	a,@r0
      003EA0 FB               [12] 3692 	mov	r3,a
      003EA1 08               [12] 3693 	inc	r0
      003EA2 86 04            [24] 3694 	mov	ar4,@r0
      003EA4 8A 82            [24] 3695 	mov	dpl,r2
      003EA6 8B 83            [24] 3696 	mov	dph,r3
      003EA8 8C F0            [24] 3697 	mov	b,r4
      003EAA 12 6F B8         [24] 3698 	lcall	__gptrget
      003EAD FA               [12] 3699 	mov	r2,a
      003EAE A3               [24] 3700 	inc	dptr
      003EAF 12 6F B8         [24] 3701 	lcall	__gptrget
      003EB2 FB               [12] 3702 	mov	r3,a
      003EB3 A3               [24] 3703 	inc	dptr
      003EB4 12 6F B8         [24] 3704 	lcall	__gptrget
      003EB7 FC               [12] 3705 	mov	r4,a
      003EB8 C0 07            [24] 3706 	push	ar7
      003EBA C0 06            [24] 3707 	push	ar6
      003EBC C0 05            [24] 3708 	push	ar5
      003EBE 8A 82            [24] 3709 	mov	dpl,r2
      003EC0 8B 83            [24] 3710 	mov	dph,r3
      003EC2 8C F0            [24] 3711 	mov	b,r4
      003EC4 12 28 D8         [24] 3712 	lcall	_stack_peek
      003EC7 AB 82            [24] 3713 	mov	r3,dpl
      003EC9 AC 83            [24] 3714 	mov	r4,dph
      003ECB 15 81            [12] 3715 	dec	sp
      003ECD 15 81            [12] 3716 	dec	sp
      003ECF 15 81            [12] 3717 	dec	sp
      003ED1 EB               [12] 3718 	mov	a,r3
      003ED2 4C               [12] 3719 	orl	a,r4
      003ED3 70 25            [24] 3720 	jnz	00143$
      003ED5 7F B0            [12] 3721 	mov	r7,#___str_11
      003ED7 7E 88            [12] 3722 	mov	r6,#(___str_11 >> 8)
      003ED9 7D 80            [12] 3723 	mov	r5,#0x80
                                   3724 ;	calc.c:51: return;
      003EDB                       3725 00414$:
                                   3726 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003EDB 8F 82            [24] 3727 	mov	dpl,r7
      003EDD 8E 83            [24] 3728 	mov	dph,r6
      003EDF 8D F0            [24] 3729 	mov	b,r5
      003EE1 12 6F B8         [24] 3730 	lcall	__gptrget
      003EE4 FC               [12] 3731 	mov	r4,a
      003EE5 70 03            [24] 3732 	jnz	01314$
      003EE7 02 56 DB         [24] 3733 	ljmp	00249$
      003EEA                       3734 01314$:
      003EEA 7B 00            [12] 3735 	mov	r3,#0x00
      003EEC 8C 82            [24] 3736 	mov	dpl,r4
      003EEE 8B 83            [24] 3737 	mov	dph,r3
      003EF0 12 2C 1F         [24] 3738 	lcall	_putchar
      003EF3 0F               [12] 3739 	inc	r7
                                   3740 ;	calc.c:192: if (!stack_peek(ctx->ss, &d0)) printstr("\r\nsecondary stack underflow\r\n");
      003EF4 BF 00 E4         [24] 3741 	cjne	r7,#0x00,00414$
      003EF7 0E               [12] 3742 	inc	r6
      003EF8 80 E1            [24] 3743 	sjmp	00414$
      003EFA                       3744 00143$:
                                   3745 ;	calc.c:193: else if (!stack_push(ctx->ps, d0)) printstr("\r\nstack overflow\r\n");
      003EFA E5 08            [12] 3746 	mov	a,_bp
      003EFC 24 12            [12] 3747 	add	a,#0x12
      003EFE F8               [12] 3748 	mov	r0,a
      003EFF 74 13            [12] 3749 	mov	a,#0x13
      003F01 26               [12] 3750 	add	a,@r0
      003F02 FA               [12] 3751 	mov	r2,a
      003F03 74 40            [12] 3752 	mov	a,#0x40
      003F05 08               [12] 3753 	inc	r0
      003F06 36               [12] 3754 	addc	a,@r0
      003F07 FB               [12] 3755 	mov	r3,a
      003F08 08               [12] 3756 	inc	r0
      003F09 86 04            [24] 3757 	mov	ar4,@r0
      003F0B 8A 82            [24] 3758 	mov	dpl,r2
      003F0D 8B 83            [24] 3759 	mov	dph,r3
      003F0F 8C F0            [24] 3760 	mov	b,r4
      003F11 12 6F B8         [24] 3761 	lcall	__gptrget
      003F14 FA               [12] 3762 	mov	r2,a
      003F15 A3               [24] 3763 	inc	dptr
      003F16 12 6F B8         [24] 3764 	lcall	__gptrget
      003F19 FB               [12] 3765 	mov	r3,a
      003F1A A3               [24] 3766 	inc	dptr
      003F1B 12 6F B8         [24] 3767 	lcall	__gptrget
      003F1E FC               [12] 3768 	mov	r4,a
      003F1F E5 08            [12] 3769 	mov	a,_bp
      003F21 24 15            [12] 3770 	add	a,#0x15
      003F23 F8               [12] 3771 	mov	r0,a
      003F24 E6               [12] 3772 	mov	a,@r0
      003F25 C0 E0            [24] 3773 	push	acc
      003F27 08               [12] 3774 	inc	r0
      003F28 E6               [12] 3775 	mov	a,@r0
      003F29 C0 E0            [24] 3776 	push	acc
      003F2B 08               [12] 3777 	inc	r0
      003F2C E6               [12] 3778 	mov	a,@r0
      003F2D C0 E0            [24] 3779 	push	acc
      003F2F 08               [12] 3780 	inc	r0
      003F30 E6               [12] 3781 	mov	a,@r0
      003F31 C0 E0            [24] 3782 	push	acc
      003F33 8A 82            [24] 3783 	mov	dpl,r2
      003F35 8B 83            [24] 3784 	mov	dph,r3
      003F37 8C F0            [24] 3785 	mov	b,r4
      003F39 12 26 BA         [24] 3786 	lcall	_stack_push
      003F3C AB 82            [24] 3787 	mov	r3,dpl
      003F3E AC 83            [24] 3788 	mov	r4,dph
      003F40 E5 81            [12] 3789 	mov	a,sp
      003F42 24 FC            [12] 3790 	add	a,#0xfc
      003F44 F5 81            [12] 3791 	mov	sp,a
      003F46 EB               [12] 3792 	mov	a,r3
      003F47 4C               [12] 3793 	orl	a,r4
      003F48 60 03            [24] 3794 	jz	01316$
      003F4A 02 56 DB         [24] 3795 	ljmp	00249$
      003F4D                       3796 01316$:
      003F4D 7F CE            [12] 3797 	mov	r7,#___str_12
      003F4F 7E 88            [12] 3798 	mov	r6,#(___str_12 >> 8)
      003F51 7D 80            [12] 3799 	mov	r5,#0x80
                                   3800 ;	calc.c:51: return;
      003F53                       3801 00417$:
                                   3802 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003F53 8F 82            [24] 3803 	mov	dpl,r7
      003F55 8E 83            [24] 3804 	mov	dph,r6
      003F57 8D F0            [24] 3805 	mov	b,r5
      003F59 12 6F B8         [24] 3806 	lcall	__gptrget
      003F5C FC               [12] 3807 	mov	r4,a
      003F5D 70 03            [24] 3808 	jnz	01317$
      003F5F 02 56 DB         [24] 3809 	ljmp	00249$
      003F62                       3810 01317$:
      003F62 7B 00            [12] 3811 	mov	r3,#0x00
      003F64 8C 82            [24] 3812 	mov	dpl,r4
      003F66 8B 83            [24] 3813 	mov	dph,r3
      003F68 12 2C 1F         [24] 3814 	lcall	_putchar
      003F6B 0F               [12] 3815 	inc	r7
                                   3816 ;	calc.c:195: case 'T':
      003F6C BF 00 E4         [24] 3817 	cjne	r7,#0x00,00417$
      003F6F 0E               [12] 3818 	inc	r6
      003F70 80 E1            [24] 3819 	sjmp	00417$
      003F72                       3820 00145$:
                                   3821 ;	calc.c:196: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003F72 E5 08            [12] 3822 	mov	a,_bp
      003F74 24 15            [12] 3823 	add	a,#0x15
      003F76 FF               [12] 3824 	mov	r7,a
      003F77 7E 00            [12] 3825 	mov	r6,#0x00
      003F79 7D 40            [12] 3826 	mov	r5,#0x40
      003F7B E5 08            [12] 3827 	mov	a,_bp
      003F7D 24 12            [12] 3828 	add	a,#0x12
      003F7F F8               [12] 3829 	mov	r0,a
      003F80 E5 08            [12] 3830 	mov	a,_bp
      003F82 24 07            [12] 3831 	add	a,#0x07
      003F84 F9               [12] 3832 	mov	r1,a
      003F85 74 13            [12] 3833 	mov	a,#0x13
      003F87 26               [12] 3834 	add	a,@r0
      003F88 F7               [12] 3835 	mov	@r1,a
      003F89 74 40            [12] 3836 	mov	a,#0x40
      003F8B 08               [12] 3837 	inc	r0
      003F8C 36               [12] 3838 	addc	a,@r0
      003F8D 09               [12] 3839 	inc	r1
      003F8E F7               [12] 3840 	mov	@r1,a
      003F8F 08               [12] 3841 	inc	r0
      003F90 09               [12] 3842 	inc	r1
      003F91 E6               [12] 3843 	mov	a,@r0
      003F92 F7               [12] 3844 	mov	@r1,a
      003F93 E5 08            [12] 3845 	mov	a,_bp
      003F95 24 07            [12] 3846 	add	a,#0x07
      003F97 F8               [12] 3847 	mov	r0,a
      003F98 86 82            [24] 3848 	mov	dpl,@r0
      003F9A 08               [12] 3849 	inc	r0
      003F9B 86 83            [24] 3850 	mov	dph,@r0
      003F9D 08               [12] 3851 	inc	r0
      003F9E 86 F0            [24] 3852 	mov	b,@r0
      003FA0 12 6F B8         [24] 3853 	lcall	__gptrget
      003FA3 FA               [12] 3854 	mov	r2,a
      003FA4 A3               [24] 3855 	inc	dptr
      003FA5 12 6F B8         [24] 3856 	lcall	__gptrget
      003FA8 FB               [12] 3857 	mov	r3,a
      003FA9 A3               [24] 3858 	inc	dptr
      003FAA 12 6F B8         [24] 3859 	lcall	__gptrget
      003FAD FC               [12] 3860 	mov	r4,a
      003FAE C0 07            [24] 3861 	push	ar7
      003FB0 C0 06            [24] 3862 	push	ar6
      003FB2 C0 05            [24] 3863 	push	ar5
      003FB4 8A 82            [24] 3864 	mov	dpl,r2
      003FB6 8B 83            [24] 3865 	mov	dph,r3
      003FB8 8C F0            [24] 3866 	mov	b,r4
      003FBA 12 27 B4         [24] 3867 	lcall	_stack_pop
      003FBD AB 82            [24] 3868 	mov	r3,dpl
      003FBF AC 83            [24] 3869 	mov	r4,dph
      003FC1 15 81            [12] 3870 	dec	sp
      003FC3 15 81            [12] 3871 	dec	sp
      003FC5 15 81            [12] 3872 	dec	sp
      003FC7 EB               [12] 3873 	mov	a,r3
      003FC8 4C               [12] 3874 	orl	a,r4
      003FC9 70 25            [24] 3875 	jnz	00150$
      003FCB 7F 7F            [12] 3876 	mov	r7,#___str_9
      003FCD 7E 88            [12] 3877 	mov	r6,#(___str_9 >> 8)
      003FCF 7D 80            [12] 3878 	mov	r5,#0x80
                                   3879 ;	calc.c:51: return;
      003FD1                       3880 00420$:
                                   3881 ;	calc.c:49: for (; *s; s++) putchar(*s);
      003FD1 8F 82            [24] 3882 	mov	dpl,r7
      003FD3 8E 83            [24] 3883 	mov	dph,r6
      003FD5 8D F0            [24] 3884 	mov	b,r5
      003FD7 12 6F B8         [24] 3885 	lcall	__gptrget
      003FDA FC               [12] 3886 	mov	r4,a
      003FDB 70 03            [24] 3887 	jnz	01320$
      003FDD 02 56 DB         [24] 3888 	ljmp	00249$
      003FE0                       3889 01320$:
      003FE0 7B 00            [12] 3890 	mov	r3,#0x00
      003FE2 8C 82            [24] 3891 	mov	dpl,r4
      003FE4 8B 83            [24] 3892 	mov	dph,r3
      003FE6 12 2C 1F         [24] 3893 	lcall	_putchar
      003FE9 0F               [12] 3894 	inc	r7
                                   3895 ;	calc.c:196: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003FEA BF 00 E4         [24] 3896 	cjne	r7,#0x00,00420$
      003FED 0E               [12] 3897 	inc	r6
      003FEE 80 E1            [24] 3898 	sjmp	00420$
      003FF0                       3899 00150$:
                                   3900 ;	calc.c:198: if (!stack_pop(ctx->ss, &d1)) {
      003FF0 E5 08            [12] 3901 	mov	a,_bp
      003FF2 24 19            [12] 3902 	add	a,#0x19
      003FF4 FF               [12] 3903 	mov	r7,a
      003FF5 7E 00            [12] 3904 	mov	r6,#0x00
      003FF7 7D 40            [12] 3905 	mov	r5,#0x40
      003FF9 E5 08            [12] 3906 	mov	a,_bp
      003FFB 24 12            [12] 3907 	add	a,#0x12
      003FFD F8               [12] 3908 	mov	r0,a
      003FFE E5 08            [12] 3909 	mov	a,_bp
      004000 24 04            [12] 3910 	add	a,#0x04
      004002 F9               [12] 3911 	mov	r1,a
      004003 74 16            [12] 3912 	mov	a,#0x16
      004005 26               [12] 3913 	add	a,@r0
      004006 F7               [12] 3914 	mov	@r1,a
      004007 74 40            [12] 3915 	mov	a,#0x40
      004009 08               [12] 3916 	inc	r0
      00400A 36               [12] 3917 	addc	a,@r0
      00400B 09               [12] 3918 	inc	r1
      00400C F7               [12] 3919 	mov	@r1,a
      00400D 08               [12] 3920 	inc	r0
      00400E 09               [12] 3921 	inc	r1
      00400F E6               [12] 3922 	mov	a,@r0
      004010 F7               [12] 3923 	mov	@r1,a
      004011 E5 08            [12] 3924 	mov	a,_bp
      004013 24 04            [12] 3925 	add	a,#0x04
      004015 F8               [12] 3926 	mov	r0,a
      004016 86 82            [24] 3927 	mov	dpl,@r0
      004018 08               [12] 3928 	inc	r0
      004019 86 83            [24] 3929 	mov	dph,@r0
      00401B 08               [12] 3930 	inc	r0
      00401C 86 F0            [24] 3931 	mov	b,@r0
      00401E 12 6F B8         [24] 3932 	lcall	__gptrget
      004021 FA               [12] 3933 	mov	r2,a
      004022 A3               [24] 3934 	inc	dptr
      004023 12 6F B8         [24] 3935 	lcall	__gptrget
      004026 FB               [12] 3936 	mov	r3,a
      004027 A3               [24] 3937 	inc	dptr
      004028 12 6F B8         [24] 3938 	lcall	__gptrget
      00402B FC               [12] 3939 	mov	r4,a
      00402C C0 07            [24] 3940 	push	ar7
      00402E C0 06            [24] 3941 	push	ar6
      004030 C0 05            [24] 3942 	push	ar5
      004032 8A 82            [24] 3943 	mov	dpl,r2
      004034 8B 83            [24] 3944 	mov	dph,r3
      004036 8C F0            [24] 3945 	mov	b,r4
      004038 12 27 B4         [24] 3946 	lcall	_stack_pop
      00403B AB 82            [24] 3947 	mov	r3,dpl
      00403D AC 83            [24] 3948 	mov	r4,dph
      00403F 15 81            [12] 3949 	dec	sp
      004041 15 81            [12] 3950 	dec	sp
      004043 15 81            [12] 3951 	dec	sp
      004045 EB               [12] 3952 	mov	a,r3
      004046 4C               [12] 3953 	orl	a,r4
      004047 70 63            [24] 3954 	jnz	00147$
                                   3955 ;	calc.c:199: printstr("\r\nsecondary stack underflow\r\n");
      004049 7F B0            [12] 3956 	mov	r7,#___str_11
      00404B 7E 88            [12] 3957 	mov	r6,#(___str_11 >> 8)
      00404D 7D 80            [12] 3958 	mov	r5,#0x80
                                   3959 ;	calc.c:51: return;
      00404F                       3960 00423$:
                                   3961 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00404F 8F 82            [24] 3962 	mov	dpl,r7
      004051 8E 83            [24] 3963 	mov	dph,r6
      004053 8D F0            [24] 3964 	mov	b,r5
      004055 12 6F B8         [24] 3965 	lcall	__gptrget
      004058 FC               [12] 3966 	mov	r4,a
      004059 60 10            [24] 3967 	jz	00301$
      00405B 7B 00            [12] 3968 	mov	r3,#0x00
      00405D 8C 82            [24] 3969 	mov	dpl,r4
      00405F 8B 83            [24] 3970 	mov	dph,r3
      004061 12 2C 1F         [24] 3971 	lcall	_putchar
      004064 0F               [12] 3972 	inc	r7
                                   3973 ;	calc.c:199: printstr("\r\nsecondary stack underflow\r\n");
      004065 BF 00 E7         [24] 3974 	cjne	r7,#0x00,00423$
      004068 0E               [12] 3975 	inc	r6
      004069 80 E4            [24] 3976 	sjmp	00423$
      00406B                       3977 00301$:
                                   3978 ;	calc.c:200: (void)stack_push(ctx->ps, d0);
      00406B E5 08            [12] 3979 	mov	a,_bp
      00406D 24 07            [12] 3980 	add	a,#0x07
      00406F F8               [12] 3981 	mov	r0,a
      004070 86 82            [24] 3982 	mov	dpl,@r0
      004072 08               [12] 3983 	inc	r0
      004073 86 83            [24] 3984 	mov	dph,@r0
      004075 08               [12] 3985 	inc	r0
      004076 86 F0            [24] 3986 	mov	b,@r0
      004078 12 6F B8         [24] 3987 	lcall	__gptrget
      00407B FA               [12] 3988 	mov	r2,a
      00407C A3               [24] 3989 	inc	dptr
      00407D 12 6F B8         [24] 3990 	lcall	__gptrget
      004080 FB               [12] 3991 	mov	r3,a
      004081 A3               [24] 3992 	inc	dptr
      004082 12 6F B8         [24] 3993 	lcall	__gptrget
      004085 FC               [12] 3994 	mov	r4,a
      004086 E5 08            [12] 3995 	mov	a,_bp
      004088 24 15            [12] 3996 	add	a,#0x15
      00408A F8               [12] 3997 	mov	r0,a
      00408B E6               [12] 3998 	mov	a,@r0
      00408C C0 E0            [24] 3999 	push	acc
      00408E 08               [12] 4000 	inc	r0
      00408F E6               [12] 4001 	mov	a,@r0
      004090 C0 E0            [24] 4002 	push	acc
      004092 08               [12] 4003 	inc	r0
      004093 E6               [12] 4004 	mov	a,@r0
      004094 C0 E0            [24] 4005 	push	acc
      004096 08               [12] 4006 	inc	r0
      004097 E6               [12] 4007 	mov	a,@r0
      004098 C0 E0            [24] 4008 	push	acc
      00409A 8A 82            [24] 4009 	mov	dpl,r2
      00409C 8B 83            [24] 4010 	mov	dph,r3
      00409E 8C F0            [24] 4011 	mov	b,r4
      0040A0 12 26 BA         [24] 4012 	lcall	_stack_push
      0040A3 E5 81            [12] 4013 	mov	a,sp
      0040A5 24 FC            [12] 4014 	add	a,#0xfc
      0040A7 F5 81            [12] 4015 	mov	sp,a
      0040A9 02 56 DB         [24] 4016 	ljmp	00249$
      0040AC                       4017 00147$:
                                   4018 ;	calc.c:202: (void)stack_push(ctx->ps, d1);
      0040AC E5 08            [12] 4019 	mov	a,_bp
      0040AE 24 07            [12] 4020 	add	a,#0x07
      0040B0 F8               [12] 4021 	mov	r0,a
      0040B1 86 82            [24] 4022 	mov	dpl,@r0
      0040B3 08               [12] 4023 	inc	r0
      0040B4 86 83            [24] 4024 	mov	dph,@r0
      0040B6 08               [12] 4025 	inc	r0
      0040B7 86 F0            [24] 4026 	mov	b,@r0
      0040B9 12 6F B8         [24] 4027 	lcall	__gptrget
      0040BC FA               [12] 4028 	mov	r2,a
      0040BD A3               [24] 4029 	inc	dptr
      0040BE 12 6F B8         [24] 4030 	lcall	__gptrget
      0040C1 FB               [12] 4031 	mov	r3,a
      0040C2 A3               [24] 4032 	inc	dptr
      0040C3 12 6F B8         [24] 4033 	lcall	__gptrget
      0040C6 FC               [12] 4034 	mov	r4,a
      0040C7 E5 08            [12] 4035 	mov	a,_bp
      0040C9 24 19            [12] 4036 	add	a,#0x19
      0040CB F8               [12] 4037 	mov	r0,a
      0040CC E6               [12] 4038 	mov	a,@r0
      0040CD C0 E0            [24] 4039 	push	acc
      0040CF 08               [12] 4040 	inc	r0
      0040D0 E6               [12] 4041 	mov	a,@r0
      0040D1 C0 E0            [24] 4042 	push	acc
      0040D3 08               [12] 4043 	inc	r0
      0040D4 E6               [12] 4044 	mov	a,@r0
      0040D5 C0 E0            [24] 4045 	push	acc
      0040D7 08               [12] 4046 	inc	r0
      0040D8 E6               [12] 4047 	mov	a,@r0
      0040D9 C0 E0            [24] 4048 	push	acc
      0040DB 8A 82            [24] 4049 	mov	dpl,r2
      0040DD 8B 83            [24] 4050 	mov	dph,r3
      0040DF 8C F0            [24] 4051 	mov	b,r4
      0040E1 12 26 BA         [24] 4052 	lcall	_stack_push
      0040E4 E5 81            [12] 4053 	mov	a,sp
      0040E6 24 FC            [12] 4054 	add	a,#0xfc
      0040E8 F5 81            [12] 4055 	mov	sp,a
                                   4056 ;	calc.c:203: (void)stack_push(ctx->ss, d0);
      0040EA E5 08            [12] 4057 	mov	a,_bp
      0040EC 24 04            [12] 4058 	add	a,#0x04
      0040EE F8               [12] 4059 	mov	r0,a
      0040EF 86 82            [24] 4060 	mov	dpl,@r0
      0040F1 08               [12] 4061 	inc	r0
      0040F2 86 83            [24] 4062 	mov	dph,@r0
      0040F4 08               [12] 4063 	inc	r0
      0040F5 86 F0            [24] 4064 	mov	b,@r0
      0040F7 12 6F B8         [24] 4065 	lcall	__gptrget
      0040FA FA               [12] 4066 	mov	r2,a
      0040FB A3               [24] 4067 	inc	dptr
      0040FC 12 6F B8         [24] 4068 	lcall	__gptrget
      0040FF FB               [12] 4069 	mov	r3,a
      004100 A3               [24] 4070 	inc	dptr
      004101 12 6F B8         [24] 4071 	lcall	__gptrget
      004104 FC               [12] 4072 	mov	r4,a
      004105 E5 08            [12] 4073 	mov	a,_bp
      004107 24 15            [12] 4074 	add	a,#0x15
      004109 F8               [12] 4075 	mov	r0,a
      00410A E6               [12] 4076 	mov	a,@r0
      00410B C0 E0            [24] 4077 	push	acc
      00410D 08               [12] 4078 	inc	r0
      00410E E6               [12] 4079 	mov	a,@r0
      00410F C0 E0            [24] 4080 	push	acc
      004111 08               [12] 4081 	inc	r0
      004112 E6               [12] 4082 	mov	a,@r0
      004113 C0 E0            [24] 4083 	push	acc
      004115 08               [12] 4084 	inc	r0
      004116 E6               [12] 4085 	mov	a,@r0
      004117 C0 E0            [24] 4086 	push	acc
      004119 8A 82            [24] 4087 	mov	dpl,r2
      00411B 8B 83            [24] 4088 	mov	dph,r3
      00411D 8C F0            [24] 4089 	mov	b,r4
      00411F 12 26 BA         [24] 4090 	lcall	_stack_push
      004122 E5 81            [12] 4091 	mov	a,sp
      004124 24 FC            [12] 4092 	add	a,#0xfc
      004126 F5 81            [12] 4093 	mov	sp,a
                                   4094 ;	calc.c:206: break;
      004128 02 56 DB         [24] 4095 	ljmp	00249$
                                   4096 ;	calc.c:207: case 'X':
      00412B                       4097 00152$:
                                   4098 ;	calc.c:208: t0 = ctx->ps;
      00412B E5 08            [12] 4099 	mov	a,_bp
      00412D 24 12            [12] 4100 	add	a,#0x12
      00412F F8               [12] 4101 	mov	r0,a
      004130 E5 08            [12] 4102 	mov	a,_bp
      004132 24 0B            [12] 4103 	add	a,#0x0b
      004134 F9               [12] 4104 	mov	r1,a
      004135 74 13            [12] 4105 	mov	a,#0x13
      004137 26               [12] 4106 	add	a,@r0
      004138 F7               [12] 4107 	mov	@r1,a
      004139 74 40            [12] 4108 	mov	a,#0x40
      00413B 08               [12] 4109 	inc	r0
      00413C 36               [12] 4110 	addc	a,@r0
      00413D 09               [12] 4111 	inc	r1
      00413E F7               [12] 4112 	mov	@r1,a
      00413F 08               [12] 4113 	inc	r0
      004140 09               [12] 4114 	inc	r1
      004141 E6               [12] 4115 	mov	a,@r0
      004142 F7               [12] 4116 	mov	@r1,a
      004143 E5 08            [12] 4117 	mov	a,_bp
      004145 24 0B            [12] 4118 	add	a,#0x0b
      004147 F8               [12] 4119 	mov	r0,a
      004148 86 82            [24] 4120 	mov	dpl,@r0
      00414A 08               [12] 4121 	inc	r0
      00414B 86 83            [24] 4122 	mov	dph,@r0
      00414D 08               [12] 4123 	inc	r0
      00414E 86 F0            [24] 4124 	mov	b,@r0
      004150 12 6F B8         [24] 4125 	lcall	__gptrget
      004153 FF               [12] 4126 	mov	r7,a
      004154 A3               [24] 4127 	inc	dptr
      004155 12 6F B8         [24] 4128 	lcall	__gptrget
      004158 FE               [12] 4129 	mov	r6,a
      004159 A3               [24] 4130 	inc	dptr
      00415A 12 6F B8         [24] 4131 	lcall	__gptrget
      00415D FD               [12] 4132 	mov	r5,a
                                   4133 ;	calc.c:209: ctx->ps = ctx->ss;
      00415E E5 08            [12] 4134 	mov	a,_bp
      004160 24 12            [12] 4135 	add	a,#0x12
      004162 F8               [12] 4136 	mov	r0,a
      004163 E5 08            [12] 4137 	mov	a,_bp
      004165 24 07            [12] 4138 	add	a,#0x07
      004167 F9               [12] 4139 	mov	r1,a
      004168 74 16            [12] 4140 	mov	a,#0x16
      00416A 26               [12] 4141 	add	a,@r0
      00416B F7               [12] 4142 	mov	@r1,a
      00416C 74 40            [12] 4143 	mov	a,#0x40
      00416E 08               [12] 4144 	inc	r0
      00416F 36               [12] 4145 	addc	a,@r0
      004170 09               [12] 4146 	inc	r1
      004171 F7               [12] 4147 	mov	@r1,a
      004172 08               [12] 4148 	inc	r0
      004173 09               [12] 4149 	inc	r1
      004174 E6               [12] 4150 	mov	a,@r0
      004175 F7               [12] 4151 	mov	@r1,a
      004176 E5 08            [12] 4152 	mov	a,_bp
      004178 24 07            [12] 4153 	add	a,#0x07
      00417A F8               [12] 4154 	mov	r0,a
      00417B 86 82            [24] 4155 	mov	dpl,@r0
      00417D 08               [12] 4156 	inc	r0
      00417E 86 83            [24] 4157 	mov	dph,@r0
      004180 08               [12] 4158 	inc	r0
      004181 86 F0            [24] 4159 	mov	b,@r0
      004183 12 6F B8         [24] 4160 	lcall	__gptrget
      004186 FA               [12] 4161 	mov	r2,a
      004187 A3               [24] 4162 	inc	dptr
      004188 12 6F B8         [24] 4163 	lcall	__gptrget
      00418B FB               [12] 4164 	mov	r3,a
      00418C A3               [24] 4165 	inc	dptr
      00418D 12 6F B8         [24] 4166 	lcall	__gptrget
      004190 FC               [12] 4167 	mov	r4,a
      004191 E5 08            [12] 4168 	mov	a,_bp
      004193 24 0B            [12] 4169 	add	a,#0x0b
      004195 F8               [12] 4170 	mov	r0,a
      004196 86 82            [24] 4171 	mov	dpl,@r0
      004198 08               [12] 4172 	inc	r0
      004199 86 83            [24] 4173 	mov	dph,@r0
      00419B 08               [12] 4174 	inc	r0
      00419C 86 F0            [24] 4175 	mov	b,@r0
      00419E EA               [12] 4176 	mov	a,r2
      00419F 12 6B 3D         [24] 4177 	lcall	__gptrput
      0041A2 A3               [24] 4178 	inc	dptr
      0041A3 EB               [12] 4179 	mov	a,r3
      0041A4 12 6B 3D         [24] 4180 	lcall	__gptrput
      0041A7 A3               [24] 4181 	inc	dptr
      0041A8 EC               [12] 4182 	mov	a,r4
      0041A9 12 6B 3D         [24] 4183 	lcall	__gptrput
                                   4184 ;	calc.c:210: ctx->ss = t0;
      0041AC E5 08            [12] 4185 	mov	a,_bp
      0041AE 24 07            [12] 4186 	add	a,#0x07
      0041B0 F8               [12] 4187 	mov	r0,a
      0041B1 86 82            [24] 4188 	mov	dpl,@r0
      0041B3 08               [12] 4189 	inc	r0
      0041B4 86 83            [24] 4190 	mov	dph,@r0
      0041B6 08               [12] 4191 	inc	r0
      0041B7 86 F0            [24] 4192 	mov	b,@r0
      0041B9 EF               [12] 4193 	mov	a,r7
      0041BA 12 6B 3D         [24] 4194 	lcall	__gptrput
      0041BD A3               [24] 4195 	inc	dptr
      0041BE EE               [12] 4196 	mov	a,r6
      0041BF 12 6B 3D         [24] 4197 	lcall	__gptrput
      0041C2 A3               [24] 4198 	inc	dptr
      0041C3 ED               [12] 4199 	mov	a,r5
      0041C4 12 6B 3D         [24] 4200 	lcall	__gptrput
                                   4201 ;	calc.c:211: break;
      0041C7 02 56 DB         [24] 4202 	ljmp	00249$
                                   4203 ;	calc.c:212: case '+':
      0041CA                       4204 00153$:
                                   4205 ;	calc.c:213: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0041CA E5 08            [12] 4206 	mov	a,_bp
      0041CC 24 15            [12] 4207 	add	a,#0x15
      0041CE FF               [12] 4208 	mov	r7,a
      0041CF 7E 00            [12] 4209 	mov	r6,#0x00
      0041D1 7D 40            [12] 4210 	mov	r5,#0x40
      0041D3 E5 08            [12] 4211 	mov	a,_bp
      0041D5 24 12            [12] 4212 	add	a,#0x12
      0041D7 F8               [12] 4213 	mov	r0,a
      0041D8 E5 08            [12] 4214 	mov	a,_bp
      0041DA 24 0B            [12] 4215 	add	a,#0x0b
      0041DC F9               [12] 4216 	mov	r1,a
      0041DD 74 13            [12] 4217 	mov	a,#0x13
      0041DF 26               [12] 4218 	add	a,@r0
      0041E0 F7               [12] 4219 	mov	@r1,a
      0041E1 74 40            [12] 4220 	mov	a,#0x40
      0041E3 08               [12] 4221 	inc	r0
      0041E4 36               [12] 4222 	addc	a,@r0
      0041E5 09               [12] 4223 	inc	r1
      0041E6 F7               [12] 4224 	mov	@r1,a
      0041E7 08               [12] 4225 	inc	r0
      0041E8 09               [12] 4226 	inc	r1
      0041E9 E6               [12] 4227 	mov	a,@r0
      0041EA F7               [12] 4228 	mov	@r1,a
      0041EB E5 08            [12] 4229 	mov	a,_bp
      0041ED 24 0B            [12] 4230 	add	a,#0x0b
      0041EF F8               [12] 4231 	mov	r0,a
      0041F0 86 82            [24] 4232 	mov	dpl,@r0
      0041F2 08               [12] 4233 	inc	r0
      0041F3 86 83            [24] 4234 	mov	dph,@r0
      0041F5 08               [12] 4235 	inc	r0
      0041F6 86 F0            [24] 4236 	mov	b,@r0
      0041F8 12 6F B8         [24] 4237 	lcall	__gptrget
      0041FB FA               [12] 4238 	mov	r2,a
      0041FC A3               [24] 4239 	inc	dptr
      0041FD 12 6F B8         [24] 4240 	lcall	__gptrget
      004200 FB               [12] 4241 	mov	r3,a
      004201 A3               [24] 4242 	inc	dptr
      004202 12 6F B8         [24] 4243 	lcall	__gptrget
      004205 FC               [12] 4244 	mov	r4,a
      004206 C0 07            [24] 4245 	push	ar7
      004208 C0 06            [24] 4246 	push	ar6
      00420A C0 05            [24] 4247 	push	ar5
      00420C 8A 82            [24] 4248 	mov	dpl,r2
      00420E 8B 83            [24] 4249 	mov	dph,r3
      004210 8C F0            [24] 4250 	mov	b,r4
      004212 12 27 B4         [24] 4251 	lcall	_stack_pop
      004215 AB 82            [24] 4252 	mov	r3,dpl
      004217 AC 83            [24] 4253 	mov	r4,dph
      004219 15 81            [12] 4254 	dec	sp
      00421B 15 81            [12] 4255 	dec	sp
      00421D 15 81            [12] 4256 	dec	sp
      00421F EB               [12] 4257 	mov	a,r3
      004220 4C               [12] 4258 	orl	a,r4
      004221 70 25            [24] 4259 	jnz	00158$
      004223 7F 7F            [12] 4260 	mov	r7,#___str_9
      004225 7E 88            [12] 4261 	mov	r6,#(___str_9 >> 8)
      004227 7D 80            [12] 4262 	mov	r5,#0x80
                                   4263 ;	calc.c:51: return;
      004229                       4264 00426$:
                                   4265 ;	calc.c:49: for (; *s; s++) putchar(*s);
      004229 8F 82            [24] 4266 	mov	dpl,r7
      00422B 8E 83            [24] 4267 	mov	dph,r6
      00422D 8D F0            [24] 4268 	mov	b,r5
      00422F 12 6F B8         [24] 4269 	lcall	__gptrget
      004232 FC               [12] 4270 	mov	r4,a
      004233 70 03            [24] 4271 	jnz	01326$
      004235 02 56 DB         [24] 4272 	ljmp	00249$
      004238                       4273 01326$:
      004238 7B 00            [12] 4274 	mov	r3,#0x00
      00423A 8C 82            [24] 4275 	mov	dpl,r4
      00423C 8B 83            [24] 4276 	mov	dph,r3
      00423E 12 2C 1F         [24] 4277 	lcall	_putchar
      004241 0F               [12] 4278 	inc	r7
                                   4279 ;	calc.c:213: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004242 BF 00 E4         [24] 4280 	cjne	r7,#0x00,00426$
      004245 0E               [12] 4281 	inc	r6
      004246 80 E1            [24] 4282 	sjmp	00426$
      004248                       4283 00158$:
                                   4284 ;	calc.c:214: else if (!stack_pop(ctx->ps, &d1)) {
      004248 E5 08            [12] 4285 	mov	a,_bp
      00424A 24 19            [12] 4286 	add	a,#0x19
      00424C FF               [12] 4287 	mov	r7,a
      00424D 7E 00            [12] 4288 	mov	r6,#0x00
      00424F 7D 40            [12] 4289 	mov	r5,#0x40
      004251 E5 08            [12] 4290 	mov	a,_bp
      004253 24 0B            [12] 4291 	add	a,#0x0b
      004255 F8               [12] 4292 	mov	r0,a
      004256 86 82            [24] 4293 	mov	dpl,@r0
      004258 08               [12] 4294 	inc	r0
      004259 86 83            [24] 4295 	mov	dph,@r0
      00425B 08               [12] 4296 	inc	r0
      00425C 86 F0            [24] 4297 	mov	b,@r0
      00425E 12 6F B8         [24] 4298 	lcall	__gptrget
      004261 FA               [12] 4299 	mov	r2,a
      004262 A3               [24] 4300 	inc	dptr
      004263 12 6F B8         [24] 4301 	lcall	__gptrget
      004266 FB               [12] 4302 	mov	r3,a
      004267 A3               [24] 4303 	inc	dptr
      004268 12 6F B8         [24] 4304 	lcall	__gptrget
      00426B FC               [12] 4305 	mov	r4,a
      00426C C0 07            [24] 4306 	push	ar7
      00426E C0 06            [24] 4307 	push	ar6
      004270 C0 05            [24] 4308 	push	ar5
      004272 8A 82            [24] 4309 	mov	dpl,r2
      004274 8B 83            [24] 4310 	mov	dph,r3
      004276 8C F0            [24] 4311 	mov	b,r4
      004278 12 27 B4         [24] 4312 	lcall	_stack_pop
      00427B AB 82            [24] 4313 	mov	r3,dpl
      00427D AC 83            [24] 4314 	mov	r4,dph
      00427F 15 81            [12] 4315 	dec	sp
      004281 15 81            [12] 4316 	dec	sp
      004283 15 81            [12] 4317 	dec	sp
      004285 EB               [12] 4318 	mov	a,r3
      004286 4C               [12] 4319 	orl	a,r4
      004287 70 63            [24] 4320 	jnz	00155$
                                   4321 ;	calc.c:215: (void)stack_push(ctx->ps, d0);
      004289 E5 08            [12] 4322 	mov	a,_bp
      00428B 24 0B            [12] 4323 	add	a,#0x0b
      00428D F8               [12] 4324 	mov	r0,a
      00428E 86 82            [24] 4325 	mov	dpl,@r0
      004290 08               [12] 4326 	inc	r0
      004291 86 83            [24] 4327 	mov	dph,@r0
      004293 08               [12] 4328 	inc	r0
      004294 86 F0            [24] 4329 	mov	b,@r0
      004296 12 6F B8         [24] 4330 	lcall	__gptrget
      004299 FA               [12] 4331 	mov	r2,a
      00429A A3               [24] 4332 	inc	dptr
      00429B 12 6F B8         [24] 4333 	lcall	__gptrget
      00429E FB               [12] 4334 	mov	r3,a
      00429F A3               [24] 4335 	inc	dptr
      0042A0 12 6F B8         [24] 4336 	lcall	__gptrget
      0042A3 FC               [12] 4337 	mov	r4,a
      0042A4 E5 08            [12] 4338 	mov	a,_bp
      0042A6 24 15            [12] 4339 	add	a,#0x15
      0042A8 F8               [12] 4340 	mov	r0,a
      0042A9 E6               [12] 4341 	mov	a,@r0
      0042AA C0 E0            [24] 4342 	push	acc
      0042AC 08               [12] 4343 	inc	r0
      0042AD E6               [12] 4344 	mov	a,@r0
      0042AE C0 E0            [24] 4345 	push	acc
      0042B0 08               [12] 4346 	inc	r0
      0042B1 E6               [12] 4347 	mov	a,@r0
      0042B2 C0 E0            [24] 4348 	push	acc
      0042B4 08               [12] 4349 	inc	r0
      0042B5 E6               [12] 4350 	mov	a,@r0
      0042B6 C0 E0            [24] 4351 	push	acc
      0042B8 8A 82            [24] 4352 	mov	dpl,r2
      0042BA 8B 83            [24] 4353 	mov	dph,r3
      0042BC 8C F0            [24] 4354 	mov	b,r4
      0042BE 12 26 BA         [24] 4355 	lcall	_stack_push
      0042C1 E5 81            [12] 4356 	mov	a,sp
      0042C3 24 FC            [12] 4357 	add	a,#0xfc
      0042C5 F5 81            [12] 4358 	mov	sp,a
                                   4359 ;	calc.c:216: printstr("\r\nstack underflow\r\n");
      0042C7 7F 7F            [12] 4360 	mov	r7,#___str_9
      0042C9 7E 88            [12] 4361 	mov	r6,#(___str_9 >> 8)
      0042CB 7D 80            [12] 4362 	mov	r5,#0x80
                                   4363 ;	calc.c:51: return;
      0042CD                       4364 00429$:
                                   4365 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0042CD 8F 82            [24] 4366 	mov	dpl,r7
      0042CF 8E 83            [24] 4367 	mov	dph,r6
      0042D1 8D F0            [24] 4368 	mov	b,r5
      0042D3 12 6F B8         [24] 4369 	lcall	__gptrget
      0042D6 FC               [12] 4370 	mov	r4,a
      0042D7 70 03            [24] 4371 	jnz	01329$
      0042D9 02 56 DB         [24] 4372 	ljmp	00249$
      0042DC                       4373 01329$:
      0042DC 7B 00            [12] 4374 	mov	r3,#0x00
      0042DE 8C 82            [24] 4375 	mov	dpl,r4
      0042E0 8B 83            [24] 4376 	mov	dph,r3
      0042E2 12 2C 1F         [24] 4377 	lcall	_putchar
      0042E5 0F               [12] 4378 	inc	r7
                                   4379 ;	calc.c:216: printstr("\r\nstack underflow\r\n");
      0042E6 BF 00 E4         [24] 4380 	cjne	r7,#0x00,00429$
      0042E9 0E               [12] 4381 	inc	r6
      0042EA 80 E1            [24] 4382 	sjmp	00429$
      0042EC                       4383 00155$:
                                   4384 ;	calc.c:218: d1 += d0;
      0042EC E5 08            [12] 4385 	mov	a,_bp
      0042EE 24 19            [12] 4386 	add	a,#0x19
      0042F0 F8               [12] 4387 	mov	r0,a
      0042F1 E5 08            [12] 4388 	mov	a,_bp
      0042F3 24 15            [12] 4389 	add	a,#0x15
      0042F5 F9               [12] 4390 	mov	r1,a
      0042F6 E7               [12] 4391 	mov	a,@r1
      0042F7 26               [12] 4392 	add	a,@r0
      0042F8 F6               [12] 4393 	mov	@r0,a
      0042F9 09               [12] 4394 	inc	r1
      0042FA E7               [12] 4395 	mov	a,@r1
      0042FB 08               [12] 4396 	inc	r0
      0042FC 36               [12] 4397 	addc	a,@r0
      0042FD F6               [12] 4398 	mov	@r0,a
      0042FE 09               [12] 4399 	inc	r1
      0042FF E7               [12] 4400 	mov	a,@r1
      004300 08               [12] 4401 	inc	r0
      004301 36               [12] 4402 	addc	a,@r0
      004302 F6               [12] 4403 	mov	@r0,a
      004303 09               [12] 4404 	inc	r1
      004304 E7               [12] 4405 	mov	a,@r1
      004305 08               [12] 4406 	inc	r0
      004306 36               [12] 4407 	addc	a,@r0
      004307 F6               [12] 4408 	mov	@r0,a
                                   4409 ;	calc.c:219: (void)stack_push(ctx->ps, d1);
      004308 E5 08            [12] 4410 	mov	a,_bp
      00430A 24 0B            [12] 4411 	add	a,#0x0b
      00430C F8               [12] 4412 	mov	r0,a
      00430D 86 82            [24] 4413 	mov	dpl,@r0
      00430F 08               [12] 4414 	inc	r0
      004310 86 83            [24] 4415 	mov	dph,@r0
      004312 08               [12] 4416 	inc	r0
      004313 86 F0            [24] 4417 	mov	b,@r0
      004315 12 6F B8         [24] 4418 	lcall	__gptrget
      004318 FA               [12] 4419 	mov	r2,a
      004319 A3               [24] 4420 	inc	dptr
      00431A 12 6F B8         [24] 4421 	lcall	__gptrget
      00431D FB               [12] 4422 	mov	r3,a
      00431E A3               [24] 4423 	inc	dptr
      00431F 12 6F B8         [24] 4424 	lcall	__gptrget
      004322 FC               [12] 4425 	mov	r4,a
      004323 E5 08            [12] 4426 	mov	a,_bp
      004325 24 19            [12] 4427 	add	a,#0x19
      004327 F8               [12] 4428 	mov	r0,a
      004328 E6               [12] 4429 	mov	a,@r0
      004329 C0 E0            [24] 4430 	push	acc
      00432B 08               [12] 4431 	inc	r0
      00432C E6               [12] 4432 	mov	a,@r0
      00432D C0 E0            [24] 4433 	push	acc
      00432F 08               [12] 4434 	inc	r0
      004330 E6               [12] 4435 	mov	a,@r0
      004331 C0 E0            [24] 4436 	push	acc
      004333 08               [12] 4437 	inc	r0
      004334 E6               [12] 4438 	mov	a,@r0
      004335 C0 E0            [24] 4439 	push	acc
      004337 8A 82            [24] 4440 	mov	dpl,r2
      004339 8B 83            [24] 4441 	mov	dph,r3
      00433B 8C F0            [24] 4442 	mov	b,r4
      00433D 12 26 BA         [24] 4443 	lcall	_stack_push
      004340 E5 81            [12] 4444 	mov	a,sp
      004342 24 FC            [12] 4445 	add	a,#0xfc
      004344 F5 81            [12] 4446 	mov	sp,a
                                   4447 ;	calc.c:221: break;
      004346 02 56 DB         [24] 4448 	ljmp	00249$
                                   4449 ;	calc.c:222: case '-':
      004349                       4450 00160$:
                                   4451 ;	calc.c:223: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004349 E5 08            [12] 4452 	mov	a,_bp
      00434B 24 15            [12] 4453 	add	a,#0x15
      00434D FF               [12] 4454 	mov	r7,a
      00434E 7E 00            [12] 4455 	mov	r6,#0x00
      004350 7D 40            [12] 4456 	mov	r5,#0x40
      004352 E5 08            [12] 4457 	mov	a,_bp
      004354 24 12            [12] 4458 	add	a,#0x12
      004356 F8               [12] 4459 	mov	r0,a
      004357 E5 08            [12] 4460 	mov	a,_bp
      004359 24 0B            [12] 4461 	add	a,#0x0b
      00435B F9               [12] 4462 	mov	r1,a
      00435C 74 13            [12] 4463 	mov	a,#0x13
      00435E 26               [12] 4464 	add	a,@r0
      00435F F7               [12] 4465 	mov	@r1,a
      004360 74 40            [12] 4466 	mov	a,#0x40
      004362 08               [12] 4467 	inc	r0
      004363 36               [12] 4468 	addc	a,@r0
      004364 09               [12] 4469 	inc	r1
      004365 F7               [12] 4470 	mov	@r1,a
      004366 08               [12] 4471 	inc	r0
      004367 09               [12] 4472 	inc	r1
      004368 E6               [12] 4473 	mov	a,@r0
      004369 F7               [12] 4474 	mov	@r1,a
      00436A E5 08            [12] 4475 	mov	a,_bp
      00436C 24 0B            [12] 4476 	add	a,#0x0b
      00436E F8               [12] 4477 	mov	r0,a
      00436F 86 82            [24] 4478 	mov	dpl,@r0
      004371 08               [12] 4479 	inc	r0
      004372 86 83            [24] 4480 	mov	dph,@r0
      004374 08               [12] 4481 	inc	r0
      004375 86 F0            [24] 4482 	mov	b,@r0
      004377 12 6F B8         [24] 4483 	lcall	__gptrget
      00437A FA               [12] 4484 	mov	r2,a
      00437B A3               [24] 4485 	inc	dptr
      00437C 12 6F B8         [24] 4486 	lcall	__gptrget
      00437F FB               [12] 4487 	mov	r3,a
      004380 A3               [24] 4488 	inc	dptr
      004381 12 6F B8         [24] 4489 	lcall	__gptrget
      004384 FC               [12] 4490 	mov	r4,a
      004385 C0 07            [24] 4491 	push	ar7
      004387 C0 06            [24] 4492 	push	ar6
      004389 C0 05            [24] 4493 	push	ar5
      00438B 8A 82            [24] 4494 	mov	dpl,r2
      00438D 8B 83            [24] 4495 	mov	dph,r3
      00438F 8C F0            [24] 4496 	mov	b,r4
      004391 12 27 B4         [24] 4497 	lcall	_stack_pop
      004394 AB 82            [24] 4498 	mov	r3,dpl
      004396 AC 83            [24] 4499 	mov	r4,dph
      004398 15 81            [12] 4500 	dec	sp
      00439A 15 81            [12] 4501 	dec	sp
      00439C 15 81            [12] 4502 	dec	sp
      00439E EB               [12] 4503 	mov	a,r3
      00439F 4C               [12] 4504 	orl	a,r4
      0043A0 70 25            [24] 4505 	jnz	00165$
      0043A2 7F 7F            [12] 4506 	mov	r7,#___str_9
      0043A4 7E 88            [12] 4507 	mov	r6,#(___str_9 >> 8)
      0043A6 7D 80            [12] 4508 	mov	r5,#0x80
                                   4509 ;	calc.c:51: return;
      0043A8                       4510 00432$:
                                   4511 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0043A8 8F 82            [24] 4512 	mov	dpl,r7
      0043AA 8E 83            [24] 4513 	mov	dph,r6
      0043AC 8D F0            [24] 4514 	mov	b,r5
      0043AE 12 6F B8         [24] 4515 	lcall	__gptrget
      0043B1 FC               [12] 4516 	mov	r4,a
      0043B2 70 03            [24] 4517 	jnz	01332$
      0043B4 02 56 DB         [24] 4518 	ljmp	00249$
      0043B7                       4519 01332$:
      0043B7 7B 00            [12] 4520 	mov	r3,#0x00
      0043B9 8C 82            [24] 4521 	mov	dpl,r4
      0043BB 8B 83            [24] 4522 	mov	dph,r3
      0043BD 12 2C 1F         [24] 4523 	lcall	_putchar
      0043C0 0F               [12] 4524 	inc	r7
                                   4525 ;	calc.c:223: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0043C1 BF 00 E4         [24] 4526 	cjne	r7,#0x00,00432$
      0043C4 0E               [12] 4527 	inc	r6
      0043C5 80 E1            [24] 4528 	sjmp	00432$
      0043C7                       4529 00165$:
                                   4530 ;	calc.c:224: else if (!stack_pop(ctx->ps, &d1)) {
      0043C7 E5 08            [12] 4531 	mov	a,_bp
      0043C9 24 19            [12] 4532 	add	a,#0x19
      0043CB FF               [12] 4533 	mov	r7,a
      0043CC 7E 00            [12] 4534 	mov	r6,#0x00
      0043CE 7D 40            [12] 4535 	mov	r5,#0x40
      0043D0 E5 08            [12] 4536 	mov	a,_bp
      0043D2 24 0B            [12] 4537 	add	a,#0x0b
      0043D4 F8               [12] 4538 	mov	r0,a
      0043D5 86 82            [24] 4539 	mov	dpl,@r0
      0043D7 08               [12] 4540 	inc	r0
      0043D8 86 83            [24] 4541 	mov	dph,@r0
      0043DA 08               [12] 4542 	inc	r0
      0043DB 86 F0            [24] 4543 	mov	b,@r0
      0043DD 12 6F B8         [24] 4544 	lcall	__gptrget
      0043E0 FA               [12] 4545 	mov	r2,a
      0043E1 A3               [24] 4546 	inc	dptr
      0043E2 12 6F B8         [24] 4547 	lcall	__gptrget
      0043E5 FB               [12] 4548 	mov	r3,a
      0043E6 A3               [24] 4549 	inc	dptr
      0043E7 12 6F B8         [24] 4550 	lcall	__gptrget
      0043EA FC               [12] 4551 	mov	r4,a
      0043EB C0 07            [24] 4552 	push	ar7
      0043ED C0 06            [24] 4553 	push	ar6
      0043EF C0 05            [24] 4554 	push	ar5
      0043F1 8A 82            [24] 4555 	mov	dpl,r2
      0043F3 8B 83            [24] 4556 	mov	dph,r3
      0043F5 8C F0            [24] 4557 	mov	b,r4
      0043F7 12 27 B4         [24] 4558 	lcall	_stack_pop
      0043FA AB 82            [24] 4559 	mov	r3,dpl
      0043FC AC 83            [24] 4560 	mov	r4,dph
      0043FE 15 81            [12] 4561 	dec	sp
      004400 15 81            [12] 4562 	dec	sp
      004402 15 81            [12] 4563 	dec	sp
      004404 EB               [12] 4564 	mov	a,r3
      004405 4C               [12] 4565 	orl	a,r4
      004406 70 63            [24] 4566 	jnz	00162$
                                   4567 ;	calc.c:225: (void)stack_push(ctx->ps, d0);
      004408 E5 08            [12] 4568 	mov	a,_bp
      00440A 24 0B            [12] 4569 	add	a,#0x0b
      00440C F8               [12] 4570 	mov	r0,a
      00440D 86 82            [24] 4571 	mov	dpl,@r0
      00440F 08               [12] 4572 	inc	r0
      004410 86 83            [24] 4573 	mov	dph,@r0
      004412 08               [12] 4574 	inc	r0
      004413 86 F0            [24] 4575 	mov	b,@r0
      004415 12 6F B8         [24] 4576 	lcall	__gptrget
      004418 FA               [12] 4577 	mov	r2,a
      004419 A3               [24] 4578 	inc	dptr
      00441A 12 6F B8         [24] 4579 	lcall	__gptrget
      00441D FB               [12] 4580 	mov	r3,a
      00441E A3               [24] 4581 	inc	dptr
      00441F 12 6F B8         [24] 4582 	lcall	__gptrget
      004422 FC               [12] 4583 	mov	r4,a
      004423 E5 08            [12] 4584 	mov	a,_bp
      004425 24 15            [12] 4585 	add	a,#0x15
      004427 F8               [12] 4586 	mov	r0,a
      004428 E6               [12] 4587 	mov	a,@r0
      004429 C0 E0            [24] 4588 	push	acc
      00442B 08               [12] 4589 	inc	r0
      00442C E6               [12] 4590 	mov	a,@r0
      00442D C0 E0            [24] 4591 	push	acc
      00442F 08               [12] 4592 	inc	r0
      004430 E6               [12] 4593 	mov	a,@r0
      004431 C0 E0            [24] 4594 	push	acc
      004433 08               [12] 4595 	inc	r0
      004434 E6               [12] 4596 	mov	a,@r0
      004435 C0 E0            [24] 4597 	push	acc
      004437 8A 82            [24] 4598 	mov	dpl,r2
      004439 8B 83            [24] 4599 	mov	dph,r3
      00443B 8C F0            [24] 4600 	mov	b,r4
      00443D 12 26 BA         [24] 4601 	lcall	_stack_push
      004440 E5 81            [12] 4602 	mov	a,sp
      004442 24 FC            [12] 4603 	add	a,#0xfc
      004444 F5 81            [12] 4604 	mov	sp,a
                                   4605 ;	calc.c:226: printstr("\r\nstack underflow\r\n");
      004446 7F 7F            [12] 4606 	mov	r7,#___str_9
      004448 7E 88            [12] 4607 	mov	r6,#(___str_9 >> 8)
      00444A 7D 80            [12] 4608 	mov	r5,#0x80
                                   4609 ;	calc.c:51: return;
      00444C                       4610 00435$:
                                   4611 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00444C 8F 82            [24] 4612 	mov	dpl,r7
      00444E 8E 83            [24] 4613 	mov	dph,r6
      004450 8D F0            [24] 4614 	mov	b,r5
      004452 12 6F B8         [24] 4615 	lcall	__gptrget
      004455 FC               [12] 4616 	mov	r4,a
      004456 70 03            [24] 4617 	jnz	01335$
      004458 02 56 DB         [24] 4618 	ljmp	00249$
      00445B                       4619 01335$:
      00445B 7B 00            [12] 4620 	mov	r3,#0x00
      00445D 8C 82            [24] 4621 	mov	dpl,r4
      00445F 8B 83            [24] 4622 	mov	dph,r3
      004461 12 2C 1F         [24] 4623 	lcall	_putchar
      004464 0F               [12] 4624 	inc	r7
                                   4625 ;	calc.c:226: printstr("\r\nstack underflow\r\n");
      004465 BF 00 E4         [24] 4626 	cjne	r7,#0x00,00435$
      004468 0E               [12] 4627 	inc	r6
      004469 80 E1            [24] 4628 	sjmp	00435$
      00446B                       4629 00162$:
                                   4630 ;	calc.c:228: d1 -= d0;
      00446B E5 08            [12] 4631 	mov	a,_bp
      00446D 24 19            [12] 4632 	add	a,#0x19
      00446F F8               [12] 4633 	mov	r0,a
      004470 E5 08            [12] 4634 	mov	a,_bp
      004472 24 15            [12] 4635 	add	a,#0x15
      004474 F9               [12] 4636 	mov	r1,a
      004475 E6               [12] 4637 	mov	a,@r0
      004476 C3               [12] 4638 	clr	c
      004477 97               [12] 4639 	subb	a,@r1
      004478 F6               [12] 4640 	mov	@r0,a
      004479 08               [12] 4641 	inc	r0
      00447A E6               [12] 4642 	mov	a,@r0
      00447B 09               [12] 4643 	inc	r1
      00447C 97               [12] 4644 	subb	a,@r1
      00447D F6               [12] 4645 	mov	@r0,a
      00447E 08               [12] 4646 	inc	r0
      00447F E6               [12] 4647 	mov	a,@r0
      004480 09               [12] 4648 	inc	r1
      004481 97               [12] 4649 	subb	a,@r1
      004482 F6               [12] 4650 	mov	@r0,a
      004483 08               [12] 4651 	inc	r0
      004484 E6               [12] 4652 	mov	a,@r0
      004485 09               [12] 4653 	inc	r1
      004486 97               [12] 4654 	subb	a,@r1
      004487 F6               [12] 4655 	mov	@r0,a
                                   4656 ;	calc.c:229: (void)stack_push(ctx->ps, d1);
      004488 E5 08            [12] 4657 	mov	a,_bp
      00448A 24 0B            [12] 4658 	add	a,#0x0b
      00448C F8               [12] 4659 	mov	r0,a
      00448D 86 82            [24] 4660 	mov	dpl,@r0
      00448F 08               [12] 4661 	inc	r0
      004490 86 83            [24] 4662 	mov	dph,@r0
      004492 08               [12] 4663 	inc	r0
      004493 86 F0            [24] 4664 	mov	b,@r0
      004495 12 6F B8         [24] 4665 	lcall	__gptrget
      004498 FA               [12] 4666 	mov	r2,a
      004499 A3               [24] 4667 	inc	dptr
      00449A 12 6F B8         [24] 4668 	lcall	__gptrget
      00449D FB               [12] 4669 	mov	r3,a
      00449E A3               [24] 4670 	inc	dptr
      00449F 12 6F B8         [24] 4671 	lcall	__gptrget
      0044A2 FC               [12] 4672 	mov	r4,a
      0044A3 E5 08            [12] 4673 	mov	a,_bp
      0044A5 24 19            [12] 4674 	add	a,#0x19
      0044A7 F8               [12] 4675 	mov	r0,a
      0044A8 E6               [12] 4676 	mov	a,@r0
      0044A9 C0 E0            [24] 4677 	push	acc
      0044AB 08               [12] 4678 	inc	r0
      0044AC E6               [12] 4679 	mov	a,@r0
      0044AD C0 E0            [24] 4680 	push	acc
      0044AF 08               [12] 4681 	inc	r0
      0044B0 E6               [12] 4682 	mov	a,@r0
      0044B1 C0 E0            [24] 4683 	push	acc
      0044B3 08               [12] 4684 	inc	r0
      0044B4 E6               [12] 4685 	mov	a,@r0
      0044B5 C0 E0            [24] 4686 	push	acc
      0044B7 8A 82            [24] 4687 	mov	dpl,r2
      0044B9 8B 83            [24] 4688 	mov	dph,r3
      0044BB 8C F0            [24] 4689 	mov	b,r4
      0044BD 12 26 BA         [24] 4690 	lcall	_stack_push
      0044C0 E5 81            [12] 4691 	mov	a,sp
      0044C2 24 FC            [12] 4692 	add	a,#0xfc
      0044C4 F5 81            [12] 4693 	mov	sp,a
                                   4694 ;	calc.c:231: break;
      0044C6 02 56 DB         [24] 4695 	ljmp	00249$
                                   4696 ;	calc.c:232: case '*':
      0044C9                       4697 00167$:
                                   4698 ;	calc.c:233: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0044C9 E5 08            [12] 4699 	mov	a,_bp
      0044CB 24 15            [12] 4700 	add	a,#0x15
      0044CD FF               [12] 4701 	mov	r7,a
      0044CE 7E 00            [12] 4702 	mov	r6,#0x00
      0044D0 7D 40            [12] 4703 	mov	r5,#0x40
      0044D2 E5 08            [12] 4704 	mov	a,_bp
      0044D4 24 12            [12] 4705 	add	a,#0x12
      0044D6 F8               [12] 4706 	mov	r0,a
      0044D7 E5 08            [12] 4707 	mov	a,_bp
      0044D9 24 0B            [12] 4708 	add	a,#0x0b
      0044DB F9               [12] 4709 	mov	r1,a
      0044DC 74 13            [12] 4710 	mov	a,#0x13
      0044DE 26               [12] 4711 	add	a,@r0
      0044DF F7               [12] 4712 	mov	@r1,a
      0044E0 74 40            [12] 4713 	mov	a,#0x40
      0044E2 08               [12] 4714 	inc	r0
      0044E3 36               [12] 4715 	addc	a,@r0
      0044E4 09               [12] 4716 	inc	r1
      0044E5 F7               [12] 4717 	mov	@r1,a
      0044E6 08               [12] 4718 	inc	r0
      0044E7 09               [12] 4719 	inc	r1
      0044E8 E6               [12] 4720 	mov	a,@r0
      0044E9 F7               [12] 4721 	mov	@r1,a
      0044EA E5 08            [12] 4722 	mov	a,_bp
      0044EC 24 0B            [12] 4723 	add	a,#0x0b
      0044EE F8               [12] 4724 	mov	r0,a
      0044EF 86 82            [24] 4725 	mov	dpl,@r0
      0044F1 08               [12] 4726 	inc	r0
      0044F2 86 83            [24] 4727 	mov	dph,@r0
      0044F4 08               [12] 4728 	inc	r0
      0044F5 86 F0            [24] 4729 	mov	b,@r0
      0044F7 12 6F B8         [24] 4730 	lcall	__gptrget
      0044FA FA               [12] 4731 	mov	r2,a
      0044FB A3               [24] 4732 	inc	dptr
      0044FC 12 6F B8         [24] 4733 	lcall	__gptrget
      0044FF FB               [12] 4734 	mov	r3,a
      004500 A3               [24] 4735 	inc	dptr
      004501 12 6F B8         [24] 4736 	lcall	__gptrget
      004504 FC               [12] 4737 	mov	r4,a
      004505 C0 07            [24] 4738 	push	ar7
      004507 C0 06            [24] 4739 	push	ar6
      004509 C0 05            [24] 4740 	push	ar5
      00450B 8A 82            [24] 4741 	mov	dpl,r2
      00450D 8B 83            [24] 4742 	mov	dph,r3
      00450F 8C F0            [24] 4743 	mov	b,r4
      004511 12 27 B4         [24] 4744 	lcall	_stack_pop
      004514 AB 82            [24] 4745 	mov	r3,dpl
      004516 AC 83            [24] 4746 	mov	r4,dph
      004518 15 81            [12] 4747 	dec	sp
      00451A 15 81            [12] 4748 	dec	sp
      00451C 15 81            [12] 4749 	dec	sp
      00451E EB               [12] 4750 	mov	a,r3
      00451F 4C               [12] 4751 	orl	a,r4
      004520 70 25            [24] 4752 	jnz	00172$
      004522 7F 7F            [12] 4753 	mov	r7,#___str_9
      004524 7E 88            [12] 4754 	mov	r6,#(___str_9 >> 8)
      004526 7D 80            [12] 4755 	mov	r5,#0x80
                                   4756 ;	calc.c:51: return;
      004528                       4757 00438$:
                                   4758 ;	calc.c:49: for (; *s; s++) putchar(*s);
      004528 8F 82            [24] 4759 	mov	dpl,r7
      00452A 8E 83            [24] 4760 	mov	dph,r6
      00452C 8D F0            [24] 4761 	mov	b,r5
      00452E 12 6F B8         [24] 4762 	lcall	__gptrget
      004531 FC               [12] 4763 	mov	r4,a
      004532 70 03            [24] 4764 	jnz	01338$
      004534 02 56 DB         [24] 4765 	ljmp	00249$
      004537                       4766 01338$:
      004537 7B 00            [12] 4767 	mov	r3,#0x00
      004539 8C 82            [24] 4768 	mov	dpl,r4
      00453B 8B 83            [24] 4769 	mov	dph,r3
      00453D 12 2C 1F         [24] 4770 	lcall	_putchar
      004540 0F               [12] 4771 	inc	r7
                                   4772 ;	calc.c:233: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004541 BF 00 E4         [24] 4773 	cjne	r7,#0x00,00438$
      004544 0E               [12] 4774 	inc	r6
      004545 80 E1            [24] 4775 	sjmp	00438$
      004547                       4776 00172$:
                                   4777 ;	calc.c:234: else if (!stack_pop(ctx->ps, &d1)) {
      004547 E5 08            [12] 4778 	mov	a,_bp
      004549 24 19            [12] 4779 	add	a,#0x19
      00454B FF               [12] 4780 	mov	r7,a
      00454C 7E 00            [12] 4781 	mov	r6,#0x00
      00454E 7D 40            [12] 4782 	mov	r5,#0x40
      004550 E5 08            [12] 4783 	mov	a,_bp
      004552 24 0B            [12] 4784 	add	a,#0x0b
      004554 F8               [12] 4785 	mov	r0,a
      004555 86 82            [24] 4786 	mov	dpl,@r0
      004557 08               [12] 4787 	inc	r0
      004558 86 83            [24] 4788 	mov	dph,@r0
      00455A 08               [12] 4789 	inc	r0
      00455B 86 F0            [24] 4790 	mov	b,@r0
      00455D 12 6F B8         [24] 4791 	lcall	__gptrget
      004560 FA               [12] 4792 	mov	r2,a
      004561 A3               [24] 4793 	inc	dptr
      004562 12 6F B8         [24] 4794 	lcall	__gptrget
      004565 FB               [12] 4795 	mov	r3,a
      004566 A3               [24] 4796 	inc	dptr
      004567 12 6F B8         [24] 4797 	lcall	__gptrget
      00456A FC               [12] 4798 	mov	r4,a
      00456B C0 07            [24] 4799 	push	ar7
      00456D C0 06            [24] 4800 	push	ar6
      00456F C0 05            [24] 4801 	push	ar5
      004571 8A 82            [24] 4802 	mov	dpl,r2
      004573 8B 83            [24] 4803 	mov	dph,r3
      004575 8C F0            [24] 4804 	mov	b,r4
      004577 12 27 B4         [24] 4805 	lcall	_stack_pop
      00457A AB 82            [24] 4806 	mov	r3,dpl
      00457C AC 83            [24] 4807 	mov	r4,dph
      00457E 15 81            [12] 4808 	dec	sp
      004580 15 81            [12] 4809 	dec	sp
      004582 15 81            [12] 4810 	dec	sp
      004584 EB               [12] 4811 	mov	a,r3
      004585 4C               [12] 4812 	orl	a,r4
      004586 70 63            [24] 4813 	jnz	00169$
                                   4814 ;	calc.c:235: (void)stack_push(ctx->ps, d0);
      004588 E5 08            [12] 4815 	mov	a,_bp
      00458A 24 0B            [12] 4816 	add	a,#0x0b
      00458C F8               [12] 4817 	mov	r0,a
      00458D 86 82            [24] 4818 	mov	dpl,@r0
      00458F 08               [12] 4819 	inc	r0
      004590 86 83            [24] 4820 	mov	dph,@r0
      004592 08               [12] 4821 	inc	r0
      004593 86 F0            [24] 4822 	mov	b,@r0
      004595 12 6F B8         [24] 4823 	lcall	__gptrget
      004598 FA               [12] 4824 	mov	r2,a
      004599 A3               [24] 4825 	inc	dptr
      00459A 12 6F B8         [24] 4826 	lcall	__gptrget
      00459D FB               [12] 4827 	mov	r3,a
      00459E A3               [24] 4828 	inc	dptr
      00459F 12 6F B8         [24] 4829 	lcall	__gptrget
      0045A2 FC               [12] 4830 	mov	r4,a
      0045A3 E5 08            [12] 4831 	mov	a,_bp
      0045A5 24 15            [12] 4832 	add	a,#0x15
      0045A7 F8               [12] 4833 	mov	r0,a
      0045A8 E6               [12] 4834 	mov	a,@r0
      0045A9 C0 E0            [24] 4835 	push	acc
      0045AB 08               [12] 4836 	inc	r0
      0045AC E6               [12] 4837 	mov	a,@r0
      0045AD C0 E0            [24] 4838 	push	acc
      0045AF 08               [12] 4839 	inc	r0
      0045B0 E6               [12] 4840 	mov	a,@r0
      0045B1 C0 E0            [24] 4841 	push	acc
      0045B3 08               [12] 4842 	inc	r0
      0045B4 E6               [12] 4843 	mov	a,@r0
      0045B5 C0 E0            [24] 4844 	push	acc
      0045B7 8A 82            [24] 4845 	mov	dpl,r2
      0045B9 8B 83            [24] 4846 	mov	dph,r3
      0045BB 8C F0            [24] 4847 	mov	b,r4
      0045BD 12 26 BA         [24] 4848 	lcall	_stack_push
      0045C0 E5 81            [12] 4849 	mov	a,sp
      0045C2 24 FC            [12] 4850 	add	a,#0xfc
      0045C4 F5 81            [12] 4851 	mov	sp,a
                                   4852 ;	calc.c:236: printstr("\r\nstack underflow\r\n");
      0045C6 7F 7F            [12] 4853 	mov	r7,#___str_9
      0045C8 7E 88            [12] 4854 	mov	r6,#(___str_9 >> 8)
      0045CA 7D 80            [12] 4855 	mov	r5,#0x80
                                   4856 ;	calc.c:51: return;
      0045CC                       4857 00441$:
                                   4858 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0045CC 8F 82            [24] 4859 	mov	dpl,r7
      0045CE 8E 83            [24] 4860 	mov	dph,r6
      0045D0 8D F0            [24] 4861 	mov	b,r5
      0045D2 12 6F B8         [24] 4862 	lcall	__gptrget
      0045D5 FC               [12] 4863 	mov	r4,a
      0045D6 70 03            [24] 4864 	jnz	01341$
      0045D8 02 56 DB         [24] 4865 	ljmp	00249$
      0045DB                       4866 01341$:
      0045DB 7B 00            [12] 4867 	mov	r3,#0x00
      0045DD 8C 82            [24] 4868 	mov	dpl,r4
      0045DF 8B 83            [24] 4869 	mov	dph,r3
      0045E1 12 2C 1F         [24] 4870 	lcall	_putchar
      0045E4 0F               [12] 4871 	inc	r7
                                   4872 ;	calc.c:236: printstr("\r\nstack underflow\r\n");
      0045E5 BF 00 E4         [24] 4873 	cjne	r7,#0x00,00441$
      0045E8 0E               [12] 4874 	inc	r6
      0045E9 80 E1            [24] 4875 	sjmp	00441$
      0045EB                       4876 00169$:
                                   4877 ;	calc.c:238: d1 *= d0;
      0045EB E5 08            [12] 4878 	mov	a,_bp
      0045ED 24 15            [12] 4879 	add	a,#0x15
      0045EF F8               [12] 4880 	mov	r0,a
      0045F0 E6               [12] 4881 	mov	a,@r0
      0045F1 C0 E0            [24] 4882 	push	acc
      0045F3 08               [12] 4883 	inc	r0
      0045F4 E6               [12] 4884 	mov	a,@r0
      0045F5 C0 E0            [24] 4885 	push	acc
      0045F7 08               [12] 4886 	inc	r0
      0045F8 E6               [12] 4887 	mov	a,@r0
      0045F9 C0 E0            [24] 4888 	push	acc
      0045FB 08               [12] 4889 	inc	r0
      0045FC E6               [12] 4890 	mov	a,@r0
      0045FD C0 E0            [24] 4891 	push	acc
      0045FF E5 08            [12] 4892 	mov	a,_bp
      004601 24 19            [12] 4893 	add	a,#0x19
      004603 F8               [12] 4894 	mov	r0,a
      004604 86 82            [24] 4895 	mov	dpl,@r0
      004606 08               [12] 4896 	inc	r0
      004607 86 83            [24] 4897 	mov	dph,@r0
      004609 08               [12] 4898 	inc	r0
      00460A 86 F0            [24] 4899 	mov	b,@r0
      00460C 08               [12] 4900 	inc	r0
      00460D E6               [12] 4901 	mov	a,@r0
      00460E 12 73 B1         [24] 4902 	lcall	__mullong
      004611 AF 82            [24] 4903 	mov	r7,dpl
      004613 AE 83            [24] 4904 	mov	r6,dph
      004615 AD F0            [24] 4905 	mov	r5,b
      004617 FC               [12] 4906 	mov	r4,a
      004618 E5 81            [12] 4907 	mov	a,sp
      00461A 24 FC            [12] 4908 	add	a,#0xfc
      00461C F5 81            [12] 4909 	mov	sp,a
      00461E E5 08            [12] 4910 	mov	a,_bp
      004620 24 19            [12] 4911 	add	a,#0x19
      004622 F8               [12] 4912 	mov	r0,a
      004623 A6 07            [24] 4913 	mov	@r0,ar7
      004625 08               [12] 4914 	inc	r0
      004626 A6 06            [24] 4915 	mov	@r0,ar6
      004628 08               [12] 4916 	inc	r0
      004629 A6 05            [24] 4917 	mov	@r0,ar5
      00462B 08               [12] 4918 	inc	r0
      00462C A6 04            [24] 4919 	mov	@r0,ar4
                                   4920 ;	calc.c:239: (void)stack_push(ctx->ps, d1);
      00462E E5 08            [12] 4921 	mov	a,_bp
      004630 24 0B            [12] 4922 	add	a,#0x0b
      004632 F8               [12] 4923 	mov	r0,a
      004633 86 82            [24] 4924 	mov	dpl,@r0
      004635 08               [12] 4925 	inc	r0
      004636 86 83            [24] 4926 	mov	dph,@r0
      004638 08               [12] 4927 	inc	r0
      004639 86 F0            [24] 4928 	mov	b,@r0
      00463B 12 6F B8         [24] 4929 	lcall	__gptrget
      00463E FA               [12] 4930 	mov	r2,a
      00463F A3               [24] 4931 	inc	dptr
      004640 12 6F B8         [24] 4932 	lcall	__gptrget
      004643 FB               [12] 4933 	mov	r3,a
      004644 A3               [24] 4934 	inc	dptr
      004645 12 6F B8         [24] 4935 	lcall	__gptrget
      004648 FC               [12] 4936 	mov	r4,a
      004649 E5 08            [12] 4937 	mov	a,_bp
      00464B 24 19            [12] 4938 	add	a,#0x19
      00464D F8               [12] 4939 	mov	r0,a
      00464E E6               [12] 4940 	mov	a,@r0
      00464F C0 E0            [24] 4941 	push	acc
      004651 08               [12] 4942 	inc	r0
      004652 E6               [12] 4943 	mov	a,@r0
      004653 C0 E0            [24] 4944 	push	acc
      004655 08               [12] 4945 	inc	r0
      004656 E6               [12] 4946 	mov	a,@r0
      004657 C0 E0            [24] 4947 	push	acc
      004659 08               [12] 4948 	inc	r0
      00465A E6               [12] 4949 	mov	a,@r0
      00465B C0 E0            [24] 4950 	push	acc
      00465D 8A 82            [24] 4951 	mov	dpl,r2
      00465F 8B 83            [24] 4952 	mov	dph,r3
      004661 8C F0            [24] 4953 	mov	b,r4
      004663 12 26 BA         [24] 4954 	lcall	_stack_push
      004666 E5 81            [12] 4955 	mov	a,sp
      004668 24 FC            [12] 4956 	add	a,#0xfc
      00466A F5 81            [12] 4957 	mov	sp,a
                                   4958 ;	calc.c:241: break;
      00466C 02 56 DB         [24] 4959 	ljmp	00249$
                                   4960 ;	calc.c:243: case '\\':
      00466F                       4961 00175$:
                                   4962 ;	calc.c:244: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      00466F C0 05            [24] 4963 	push	ar5
      004671 C0 06            [24] 4964 	push	ar6
      004673 C0 07            [24] 4965 	push	ar7
      004675 E5 08            [12] 4966 	mov	a,_bp
      004677 24 15            [12] 4967 	add	a,#0x15
      004679 FC               [12] 4968 	mov	r4,a
      00467A 7B 00            [12] 4969 	mov	r3,#0x00
      00467C 7A 40            [12] 4970 	mov	r2,#0x40
      00467E E5 08            [12] 4971 	mov	a,_bp
      004680 24 12            [12] 4972 	add	a,#0x12
      004682 F8               [12] 4973 	mov	r0,a
      004683 E5 08            [12] 4974 	mov	a,_bp
      004685 24 0B            [12] 4975 	add	a,#0x0b
      004687 F9               [12] 4976 	mov	r1,a
      004688 74 13            [12] 4977 	mov	a,#0x13
      00468A 26               [12] 4978 	add	a,@r0
      00468B F7               [12] 4979 	mov	@r1,a
      00468C 74 40            [12] 4980 	mov	a,#0x40
      00468E 08               [12] 4981 	inc	r0
      00468F 36               [12] 4982 	addc	a,@r0
      004690 09               [12] 4983 	inc	r1
      004691 F7               [12] 4984 	mov	@r1,a
      004692 08               [12] 4985 	inc	r0
      004693 09               [12] 4986 	inc	r1
      004694 E6               [12] 4987 	mov	a,@r0
      004695 F7               [12] 4988 	mov	@r1,a
      004696 E5 08            [12] 4989 	mov	a,_bp
      004698 24 0B            [12] 4990 	add	a,#0x0b
      00469A F8               [12] 4991 	mov	r0,a
      00469B 86 82            [24] 4992 	mov	dpl,@r0
      00469D 08               [12] 4993 	inc	r0
      00469E 86 83            [24] 4994 	mov	dph,@r0
      0046A0 08               [12] 4995 	inc	r0
      0046A1 86 F0            [24] 4996 	mov	b,@r0
      0046A3 12 6F B8         [24] 4997 	lcall	__gptrget
      0046A6 FD               [12] 4998 	mov	r5,a
      0046A7 A3               [24] 4999 	inc	dptr
      0046A8 12 6F B8         [24] 5000 	lcall	__gptrget
      0046AB FE               [12] 5001 	mov	r6,a
      0046AC A3               [24] 5002 	inc	dptr
      0046AD 12 6F B8         [24] 5003 	lcall	__gptrget
      0046B0 FF               [12] 5004 	mov	r7,a
      0046B1 C0 05            [24] 5005 	push	ar5
      0046B3 C0 04            [24] 5006 	push	ar4
      0046B5 C0 03            [24] 5007 	push	ar3
      0046B7 C0 02            [24] 5008 	push	ar2
      0046B9 8D 82            [24] 5009 	mov	dpl,r5
      0046BB 8E 83            [24] 5010 	mov	dph,r6
      0046BD 8F F0            [24] 5011 	mov	b,r7
      0046BF 12 27 B4         [24] 5012 	lcall	_stack_pop
      0046C2 AE 82            [24] 5013 	mov	r6,dpl
      0046C4 AF 83            [24] 5014 	mov	r7,dph
      0046C6 15 81            [12] 5015 	dec	sp
      0046C8 15 81            [12] 5016 	dec	sp
      0046CA 15 81            [12] 5017 	dec	sp
      0046CC D0 05            [24] 5018 	pop	ar5
      0046CE EE               [12] 5019 	mov	a,r6
      0046CF 4F               [12] 5020 	orl	a,r7
      0046D0 D0 07            [24] 5021 	pop	ar7
      0046D2 D0 06            [24] 5022 	pop	ar6
      0046D4 D0 05            [24] 5023 	pop	ar5
      0046D6 70 25            [24] 5024 	jnz	00186$
      0046D8 7F 7F            [12] 5025 	mov	r7,#___str_9
      0046DA 7E 88            [12] 5026 	mov	r6,#(___str_9 >> 8)
      0046DC 7D 80            [12] 5027 	mov	r5,#0x80
                                   5028 ;	calc.c:51: return;
      0046DE                       5029 00444$:
                                   5030 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0046DE 8F 82            [24] 5031 	mov	dpl,r7
      0046E0 8E 83            [24] 5032 	mov	dph,r6
      0046E2 8D F0            [24] 5033 	mov	b,r5
      0046E4 12 6F B8         [24] 5034 	lcall	__gptrget
      0046E7 FC               [12] 5035 	mov	r4,a
      0046E8 70 03            [24] 5036 	jnz	01344$
      0046EA 02 56 DB         [24] 5037 	ljmp	00249$
      0046ED                       5038 01344$:
      0046ED 7B 00            [12] 5039 	mov	r3,#0x00
      0046EF 8C 82            [24] 5040 	mov	dpl,r4
      0046F1 8B 83            [24] 5041 	mov	dph,r3
      0046F3 12 2C 1F         [24] 5042 	lcall	_putchar
      0046F6 0F               [12] 5043 	inc	r7
                                   5044 ;	calc.c:244: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0046F7 BF 00 E4         [24] 5045 	cjne	r7,#0x00,00444$
      0046FA 0E               [12] 5046 	inc	r6
      0046FB 80 E1            [24] 5047 	sjmp	00444$
      0046FD                       5048 00186$:
                                   5049 ;	calc.c:245: else if (!stack_pop(ctx->ps, &d1)) {
      0046FD C0 05            [24] 5050 	push	ar5
      0046FF C0 06            [24] 5051 	push	ar6
      004701 C0 07            [24] 5052 	push	ar7
      004703 E5 08            [12] 5053 	mov	a,_bp
      004705 24 19            [12] 5054 	add	a,#0x19
      004707 FC               [12] 5055 	mov	r4,a
      004708 7B 00            [12] 5056 	mov	r3,#0x00
      00470A 7A 40            [12] 5057 	mov	r2,#0x40
      00470C E5 08            [12] 5058 	mov	a,_bp
      00470E 24 0B            [12] 5059 	add	a,#0x0b
      004710 F8               [12] 5060 	mov	r0,a
      004711 86 82            [24] 5061 	mov	dpl,@r0
      004713 08               [12] 5062 	inc	r0
      004714 86 83            [24] 5063 	mov	dph,@r0
      004716 08               [12] 5064 	inc	r0
      004717 86 F0            [24] 5065 	mov	b,@r0
      004719 12 6F B8         [24] 5066 	lcall	__gptrget
      00471C FD               [12] 5067 	mov	r5,a
      00471D A3               [24] 5068 	inc	dptr
      00471E 12 6F B8         [24] 5069 	lcall	__gptrget
      004721 FE               [12] 5070 	mov	r6,a
      004722 A3               [24] 5071 	inc	dptr
      004723 12 6F B8         [24] 5072 	lcall	__gptrget
      004726 FF               [12] 5073 	mov	r7,a
      004727 C0 05            [24] 5074 	push	ar5
      004729 C0 04            [24] 5075 	push	ar4
      00472B C0 03            [24] 5076 	push	ar3
      00472D C0 02            [24] 5077 	push	ar2
      00472F 8D 82            [24] 5078 	mov	dpl,r5
      004731 8E 83            [24] 5079 	mov	dph,r6
      004733 8F F0            [24] 5080 	mov	b,r7
      004735 12 27 B4         [24] 5081 	lcall	_stack_pop
      004738 AE 82            [24] 5082 	mov	r6,dpl
      00473A AF 83            [24] 5083 	mov	r7,dph
      00473C 15 81            [12] 5084 	dec	sp
      00473E 15 81            [12] 5085 	dec	sp
      004740 15 81            [12] 5086 	dec	sp
      004742 D0 05            [24] 5087 	pop	ar5
      004744 EE               [12] 5088 	mov	a,r6
      004745 4F               [12] 5089 	orl	a,r7
      004746 D0 07            [24] 5090 	pop	ar7
      004748 D0 06            [24] 5091 	pop	ar6
      00474A D0 05            [24] 5092 	pop	ar5
      00474C 70 63            [24] 5093 	jnz	00183$
                                   5094 ;	calc.c:246: (void)stack_push(ctx->ps, d0);
      00474E E5 08            [12] 5095 	mov	a,_bp
      004750 24 0B            [12] 5096 	add	a,#0x0b
      004752 F8               [12] 5097 	mov	r0,a
      004753 86 82            [24] 5098 	mov	dpl,@r0
      004755 08               [12] 5099 	inc	r0
      004756 86 83            [24] 5100 	mov	dph,@r0
      004758 08               [12] 5101 	inc	r0
      004759 86 F0            [24] 5102 	mov	b,@r0
      00475B 12 6F B8         [24] 5103 	lcall	__gptrget
      00475E FA               [12] 5104 	mov	r2,a
      00475F A3               [24] 5105 	inc	dptr
      004760 12 6F B8         [24] 5106 	lcall	__gptrget
      004763 FB               [12] 5107 	mov	r3,a
      004764 A3               [24] 5108 	inc	dptr
      004765 12 6F B8         [24] 5109 	lcall	__gptrget
      004768 FC               [12] 5110 	mov	r4,a
      004769 E5 08            [12] 5111 	mov	a,_bp
      00476B 24 15            [12] 5112 	add	a,#0x15
      00476D F8               [12] 5113 	mov	r0,a
      00476E E6               [12] 5114 	mov	a,@r0
      00476F C0 E0            [24] 5115 	push	acc
      004771 08               [12] 5116 	inc	r0
      004772 E6               [12] 5117 	mov	a,@r0
      004773 C0 E0            [24] 5118 	push	acc
      004775 08               [12] 5119 	inc	r0
      004776 E6               [12] 5120 	mov	a,@r0
      004777 C0 E0            [24] 5121 	push	acc
      004779 08               [12] 5122 	inc	r0
      00477A E6               [12] 5123 	mov	a,@r0
      00477B C0 E0            [24] 5124 	push	acc
      00477D 8A 82            [24] 5125 	mov	dpl,r2
      00477F 8B 83            [24] 5126 	mov	dph,r3
      004781 8C F0            [24] 5127 	mov	b,r4
      004783 12 26 BA         [24] 5128 	lcall	_stack_push
      004786 E5 81            [12] 5129 	mov	a,sp
      004788 24 FC            [12] 5130 	add	a,#0xfc
      00478A F5 81            [12] 5131 	mov	sp,a
                                   5132 ;	calc.c:247: printstr("\r\nstack underflow\r\n");
      00478C 7F 7F            [12] 5133 	mov	r7,#___str_9
      00478E 7E 88            [12] 5134 	mov	r6,#(___str_9 >> 8)
      004790 7D 80            [12] 5135 	mov	r5,#0x80
                                   5136 ;	calc.c:51: return;
      004792                       5137 00447$:
                                   5138 ;	calc.c:49: for (; *s; s++) putchar(*s);
      004792 8F 82            [24] 5139 	mov	dpl,r7
      004794 8E 83            [24] 5140 	mov	dph,r6
      004796 8D F0            [24] 5141 	mov	b,r5
      004798 12 6F B8         [24] 5142 	lcall	__gptrget
      00479B FC               [12] 5143 	mov	r4,a
      00479C 70 03            [24] 5144 	jnz	01347$
      00479E 02 56 DB         [24] 5145 	ljmp	00249$
      0047A1                       5146 01347$:
      0047A1 7B 00            [12] 5147 	mov	r3,#0x00
      0047A3 8C 82            [24] 5148 	mov	dpl,r4
      0047A5 8B 83            [24] 5149 	mov	dph,r3
      0047A7 12 2C 1F         [24] 5150 	lcall	_putchar
      0047AA 0F               [12] 5151 	inc	r7
                                   5152 ;	calc.c:247: printstr("\r\nstack underflow\r\n");
      0047AB BF 00 E4         [24] 5153 	cjne	r7,#0x00,00447$
      0047AE 0E               [12] 5154 	inc	r6
      0047AF 80 E1            [24] 5155 	sjmp	00447$
      0047B1                       5156 00183$:
                                   5157 ;	calc.c:248: } else if (!d0) {
      0047B1 E5 08            [12] 5158 	mov	a,_bp
      0047B3 24 15            [12] 5159 	add	a,#0x15
      0047B5 F8               [12] 5160 	mov	r0,a
      0047B6 E6               [12] 5161 	mov	a,@r0
      0047B7 08               [12] 5162 	inc	r0
      0047B8 46               [12] 5163 	orl	a,@r0
      0047B9 08               [12] 5164 	inc	r0
      0047BA 46               [12] 5165 	orl	a,@r0
      0047BB 08               [12] 5166 	inc	r0
      0047BC 46               [12] 5167 	orl	a,@r0
      0047BD 60 03            [24] 5168 	jz	01349$
      0047BF 02 48 63         [24] 5169 	ljmp	00180$
      0047C2                       5170 01349$:
                                   5171 ;	calc.c:249: (void)stack_push(ctx->ps, d1);
      0047C2 E5 08            [12] 5172 	mov	a,_bp
      0047C4 24 0B            [12] 5173 	add	a,#0x0b
      0047C6 F8               [12] 5174 	mov	r0,a
      0047C7 86 82            [24] 5175 	mov	dpl,@r0
      0047C9 08               [12] 5176 	inc	r0
      0047CA 86 83            [24] 5177 	mov	dph,@r0
      0047CC 08               [12] 5178 	inc	r0
      0047CD 86 F0            [24] 5179 	mov	b,@r0
      0047CF 12 6F B8         [24] 5180 	lcall	__gptrget
      0047D2 FA               [12] 5181 	mov	r2,a
      0047D3 A3               [24] 5182 	inc	dptr
      0047D4 12 6F B8         [24] 5183 	lcall	__gptrget
      0047D7 FB               [12] 5184 	mov	r3,a
      0047D8 A3               [24] 5185 	inc	dptr
      0047D9 12 6F B8         [24] 5186 	lcall	__gptrget
      0047DC FC               [12] 5187 	mov	r4,a
      0047DD E5 08            [12] 5188 	mov	a,_bp
      0047DF 24 19            [12] 5189 	add	a,#0x19
      0047E1 F8               [12] 5190 	mov	r0,a
      0047E2 E6               [12] 5191 	mov	a,@r0
      0047E3 C0 E0            [24] 5192 	push	acc
      0047E5 08               [12] 5193 	inc	r0
      0047E6 E6               [12] 5194 	mov	a,@r0
      0047E7 C0 E0            [24] 5195 	push	acc
      0047E9 08               [12] 5196 	inc	r0
      0047EA E6               [12] 5197 	mov	a,@r0
      0047EB C0 E0            [24] 5198 	push	acc
      0047ED 08               [12] 5199 	inc	r0
      0047EE E6               [12] 5200 	mov	a,@r0
      0047EF C0 E0            [24] 5201 	push	acc
      0047F1 8A 82            [24] 5202 	mov	dpl,r2
      0047F3 8B 83            [24] 5203 	mov	dph,r3
      0047F5 8C F0            [24] 5204 	mov	b,r4
      0047F7 12 26 BA         [24] 5205 	lcall	_stack_push
      0047FA E5 81            [12] 5206 	mov	a,sp
      0047FC 24 FC            [12] 5207 	add	a,#0xfc
      0047FE F5 81            [12] 5208 	mov	sp,a
                                   5209 ;	calc.c:250: (void)stack_push(ctx->ps, d0);			
      004800 E5 08            [12] 5210 	mov	a,_bp
      004802 24 0B            [12] 5211 	add	a,#0x0b
      004804 F8               [12] 5212 	mov	r0,a
      004805 86 82            [24] 5213 	mov	dpl,@r0
      004807 08               [12] 5214 	inc	r0
      004808 86 83            [24] 5215 	mov	dph,@r0
      00480A 08               [12] 5216 	inc	r0
      00480B 86 F0            [24] 5217 	mov	b,@r0
      00480D 12 6F B8         [24] 5218 	lcall	__gptrget
      004810 FA               [12] 5219 	mov	r2,a
      004811 A3               [24] 5220 	inc	dptr
      004812 12 6F B8         [24] 5221 	lcall	__gptrget
      004815 FB               [12] 5222 	mov	r3,a
      004816 A3               [24] 5223 	inc	dptr
      004817 12 6F B8         [24] 5224 	lcall	__gptrget
      00481A FC               [12] 5225 	mov	r4,a
      00481B E5 08            [12] 5226 	mov	a,_bp
      00481D 24 15            [12] 5227 	add	a,#0x15
      00481F F8               [12] 5228 	mov	r0,a
      004820 E6               [12] 5229 	mov	a,@r0
      004821 C0 E0            [24] 5230 	push	acc
      004823 08               [12] 5231 	inc	r0
      004824 E6               [12] 5232 	mov	a,@r0
      004825 C0 E0            [24] 5233 	push	acc
      004827 08               [12] 5234 	inc	r0
      004828 E6               [12] 5235 	mov	a,@r0
      004829 C0 E0            [24] 5236 	push	acc
      00482B 08               [12] 5237 	inc	r0
      00482C E6               [12] 5238 	mov	a,@r0
      00482D C0 E0            [24] 5239 	push	acc
      00482F 8A 82            [24] 5240 	mov	dpl,r2
      004831 8B 83            [24] 5241 	mov	dph,r3
      004833 8C F0            [24] 5242 	mov	b,r4
      004835 12 26 BA         [24] 5243 	lcall	_stack_push
      004838 E5 81            [12] 5244 	mov	a,sp
      00483A 24 FC            [12] 5245 	add	a,#0xfc
      00483C F5 81            [12] 5246 	mov	sp,a
                                   5247 ;	calc.c:251: printstr("\r\ndivision by zero\r\n");
      00483E 7F E1            [12] 5248 	mov	r7,#___str_13
      004840 7E 88            [12] 5249 	mov	r6,#(___str_13 >> 8)
      004842 7D 80            [12] 5250 	mov	r5,#0x80
                                   5251 ;	calc.c:51: return;
      004844                       5252 00450$:
                                   5253 ;	calc.c:49: for (; *s; s++) putchar(*s);
      004844 8F 82            [24] 5254 	mov	dpl,r7
      004846 8E 83            [24] 5255 	mov	dph,r6
      004848 8D F0            [24] 5256 	mov	b,r5
      00484A 12 6F B8         [24] 5257 	lcall	__gptrget
      00484D FC               [12] 5258 	mov	r4,a
      00484E 70 03            [24] 5259 	jnz	01350$
      004850 02 56 DB         [24] 5260 	ljmp	00249$
      004853                       5261 01350$:
      004853 7B 00            [12] 5262 	mov	r3,#0x00
      004855 8C 82            [24] 5263 	mov	dpl,r4
      004857 8B 83            [24] 5264 	mov	dph,r3
      004859 12 2C 1F         [24] 5265 	lcall	_putchar
      00485C 0F               [12] 5266 	inc	r7
                                   5267 ;	calc.c:251: printstr("\r\ndivision by zero\r\n");
      00485D BF 00 E4         [24] 5268 	cjne	r7,#0x00,00450$
      004860 0E               [12] 5269 	inc	r6
      004861 80 E1            [24] 5270 	sjmp	00450$
      004863                       5271 00180$:
                                   5272 ;	calc.c:253: if (ctx->digit[0] == '/') d1 /= d0;
      004863 8D 82            [24] 5273 	mov	dpl,r5
      004865 8E 83            [24] 5274 	mov	dph,r6
      004867 8F F0            [24] 5275 	mov	b,r7
      004869 12 6F B8         [24] 5276 	lcall	__gptrget
      00486C FC               [12] 5277 	mov	r4,a
      00486D BC 2F 45         [24] 5278 	cjne	r4,#0x2f,00177$
      004870 E5 08            [12] 5279 	mov	a,_bp
      004872 24 15            [12] 5280 	add	a,#0x15
      004874 F8               [12] 5281 	mov	r0,a
      004875 E6               [12] 5282 	mov	a,@r0
      004876 C0 E0            [24] 5283 	push	acc
      004878 08               [12] 5284 	inc	r0
      004879 E6               [12] 5285 	mov	a,@r0
      00487A C0 E0            [24] 5286 	push	acc
      00487C 08               [12] 5287 	inc	r0
      00487D E6               [12] 5288 	mov	a,@r0
      00487E C0 E0            [24] 5289 	push	acc
      004880 08               [12] 5290 	inc	r0
      004881 E6               [12] 5291 	mov	a,@r0
      004882 C0 E0            [24] 5292 	push	acc
      004884 E5 08            [12] 5293 	mov	a,_bp
      004886 24 19            [12] 5294 	add	a,#0x19
      004888 F8               [12] 5295 	mov	r0,a
      004889 86 82            [24] 5296 	mov	dpl,@r0
      00488B 08               [12] 5297 	inc	r0
      00488C 86 83            [24] 5298 	mov	dph,@r0
      00488E 08               [12] 5299 	inc	r0
      00488F 86 F0            [24] 5300 	mov	b,@r0
      004891 08               [12] 5301 	inc	r0
      004892 E6               [12] 5302 	mov	a,@r0
      004893 12 6D AF         [24] 5303 	lcall	__divslong
      004896 AF 82            [24] 5304 	mov	r7,dpl
      004898 AE 83            [24] 5305 	mov	r6,dph
      00489A AD F0            [24] 5306 	mov	r5,b
      00489C FC               [12] 5307 	mov	r4,a
      00489D E5 81            [12] 5308 	mov	a,sp
      00489F 24 FC            [12] 5309 	add	a,#0xfc
      0048A1 F5 81            [12] 5310 	mov	sp,a
      0048A3 E5 08            [12] 5311 	mov	a,_bp
      0048A5 24 19            [12] 5312 	add	a,#0x19
      0048A7 F8               [12] 5313 	mov	r0,a
      0048A8 A6 07            [24] 5314 	mov	@r0,ar7
      0048AA 08               [12] 5315 	inc	r0
      0048AB A6 06            [24] 5316 	mov	@r0,ar6
      0048AD 08               [12] 5317 	inc	r0
      0048AE A6 05            [24] 5318 	mov	@r0,ar5
      0048B0 08               [12] 5319 	inc	r0
      0048B1 A6 04            [24] 5320 	mov	@r0,ar4
      0048B3 80 63            [24] 5321 	sjmp	00178$
      0048B5                       5322 00177$:
                                   5323 ;	calc.c:254: else d1 = (unsigned long)d1 / (unsigned long)d0;
      0048B5 E5 08            [12] 5324 	mov	a,_bp
      0048B7 24 19            [12] 5325 	add	a,#0x19
      0048B9 F8               [12] 5326 	mov	r0,a
      0048BA 86 07            [24] 5327 	mov	ar7,@r0
      0048BC 08               [12] 5328 	inc	r0
      0048BD 86 06            [24] 5329 	mov	ar6,@r0
      0048BF 08               [12] 5330 	inc	r0
      0048C0 86 05            [24] 5331 	mov	ar5,@r0
      0048C2 08               [12] 5332 	inc	r0
      0048C3 86 04            [24] 5333 	mov	ar4,@r0
      0048C5 E5 08            [12] 5334 	mov	a,_bp
      0048C7 24 15            [12] 5335 	add	a,#0x15
      0048C9 F8               [12] 5336 	mov	r0,a
      0048CA E5 08            [12] 5337 	mov	a,_bp
      0048CC 24 0E            [12] 5338 	add	a,#0x0e
      0048CE F9               [12] 5339 	mov	r1,a
      0048CF E6               [12] 5340 	mov	a,@r0
      0048D0 F7               [12] 5341 	mov	@r1,a
      0048D1 08               [12] 5342 	inc	r0
      0048D2 09               [12] 5343 	inc	r1
      0048D3 E6               [12] 5344 	mov	a,@r0
      0048D4 F7               [12] 5345 	mov	@r1,a
      0048D5 08               [12] 5346 	inc	r0
      0048D6 09               [12] 5347 	inc	r1
      0048D7 E6               [12] 5348 	mov	a,@r0
      0048D8 F7               [12] 5349 	mov	@r1,a
      0048D9 08               [12] 5350 	inc	r0
      0048DA 09               [12] 5351 	inc	r1
      0048DB E6               [12] 5352 	mov	a,@r0
      0048DC F7               [12] 5353 	mov	@r1,a
      0048DD E5 08            [12] 5354 	mov	a,_bp
      0048DF 24 0E            [12] 5355 	add	a,#0x0e
      0048E1 F8               [12] 5356 	mov	r0,a
      0048E2 E6               [12] 5357 	mov	a,@r0
      0048E3 C0 E0            [24] 5358 	push	acc
      0048E5 08               [12] 5359 	inc	r0
      0048E6 E6               [12] 5360 	mov	a,@r0
      0048E7 C0 E0            [24] 5361 	push	acc
      0048E9 08               [12] 5362 	inc	r0
      0048EA E6               [12] 5363 	mov	a,@r0
      0048EB C0 E0            [24] 5364 	push	acc
      0048ED 08               [12] 5365 	inc	r0
      0048EE E6               [12] 5366 	mov	a,@r0
      0048EF C0 E0            [24] 5367 	push	acc
      0048F1 8F 82            [24] 5368 	mov	dpl,r7
      0048F3 8E 83            [24] 5369 	mov	dph,r6
      0048F5 8D F0            [24] 5370 	mov	b,r5
      0048F7 EC               [12] 5371 	mov	a,r4
      0048F8 12 6E AC         [24] 5372 	lcall	__divulong
      0048FB AF 82            [24] 5373 	mov	r7,dpl
      0048FD AE 83            [24] 5374 	mov	r6,dph
      0048FF AD F0            [24] 5375 	mov	r5,b
      004901 FC               [12] 5376 	mov	r4,a
      004902 E5 81            [12] 5377 	mov	a,sp
      004904 24 FC            [12] 5378 	add	a,#0xfc
      004906 F5 81            [12] 5379 	mov	sp,a
      004908 E5 08            [12] 5380 	mov	a,_bp
      00490A 24 19            [12] 5381 	add	a,#0x19
      00490C F8               [12] 5382 	mov	r0,a
      00490D A6 07            [24] 5383 	mov	@r0,ar7
      00490F 08               [12] 5384 	inc	r0
      004910 A6 06            [24] 5385 	mov	@r0,ar6
      004912 08               [12] 5386 	inc	r0
      004913 A6 05            [24] 5387 	mov	@r0,ar5
      004915 08               [12] 5388 	inc	r0
      004916 A6 04            [24] 5389 	mov	@r0,ar4
      004918                       5390 00178$:
                                   5391 ;	calc.c:255: (void)stack_push(ctx->ps, d1);
      004918 E5 08            [12] 5392 	mov	a,_bp
      00491A 24 0B            [12] 5393 	add	a,#0x0b
      00491C F8               [12] 5394 	mov	r0,a
      00491D 86 82            [24] 5395 	mov	dpl,@r0
      00491F 08               [12] 5396 	inc	r0
      004920 86 83            [24] 5397 	mov	dph,@r0
      004922 08               [12] 5398 	inc	r0
      004923 86 F0            [24] 5399 	mov	b,@r0
      004925 12 6F B8         [24] 5400 	lcall	__gptrget
      004928 FA               [12] 5401 	mov	r2,a
      004929 A3               [24] 5402 	inc	dptr
      00492A 12 6F B8         [24] 5403 	lcall	__gptrget
      00492D FB               [12] 5404 	mov	r3,a
      00492E A3               [24] 5405 	inc	dptr
      00492F 12 6F B8         [24] 5406 	lcall	__gptrget
      004932 FC               [12] 5407 	mov	r4,a
      004933 E5 08            [12] 5408 	mov	a,_bp
      004935 24 19            [12] 5409 	add	a,#0x19
      004937 F8               [12] 5410 	mov	r0,a
      004938 E6               [12] 5411 	mov	a,@r0
      004939 C0 E0            [24] 5412 	push	acc
      00493B 08               [12] 5413 	inc	r0
      00493C E6               [12] 5414 	mov	a,@r0
      00493D C0 E0            [24] 5415 	push	acc
      00493F 08               [12] 5416 	inc	r0
      004940 E6               [12] 5417 	mov	a,@r0
      004941 C0 E0            [24] 5418 	push	acc
      004943 08               [12] 5419 	inc	r0
      004944 E6               [12] 5420 	mov	a,@r0
      004945 C0 E0            [24] 5421 	push	acc
      004947 8A 82            [24] 5422 	mov	dpl,r2
      004949 8B 83            [24] 5423 	mov	dph,r3
      00494B 8C F0            [24] 5424 	mov	b,r4
      00494D 12 26 BA         [24] 5425 	lcall	_stack_push
      004950 E5 81            [12] 5426 	mov	a,sp
      004952 24 FC            [12] 5427 	add	a,#0xfc
      004954 F5 81            [12] 5428 	mov	sp,a
                                   5429 ;	calc.c:257: break;
      004956 02 56 DB         [24] 5430 	ljmp	00249$
                                   5431 ;	calc.c:259: case '#':
      004959                       5432 00189$:
                                   5433 ;	calc.c:260: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004959 C0 05            [24] 5434 	push	ar5
      00495B C0 06            [24] 5435 	push	ar6
      00495D C0 07            [24] 5436 	push	ar7
      00495F E5 08            [12] 5437 	mov	a,_bp
      004961 24 15            [12] 5438 	add	a,#0x15
      004963 FC               [12] 5439 	mov	r4,a
      004964 7B 00            [12] 5440 	mov	r3,#0x00
      004966 7A 40            [12] 5441 	mov	r2,#0x40
      004968 E5 08            [12] 5442 	mov	a,_bp
      00496A 24 12            [12] 5443 	add	a,#0x12
      00496C F8               [12] 5444 	mov	r0,a
      00496D E5 08            [12] 5445 	mov	a,_bp
      00496F 24 0E            [12] 5446 	add	a,#0x0e
      004971 F9               [12] 5447 	mov	r1,a
      004972 74 13            [12] 5448 	mov	a,#0x13
      004974 26               [12] 5449 	add	a,@r0
      004975 F7               [12] 5450 	mov	@r1,a
      004976 74 40            [12] 5451 	mov	a,#0x40
      004978 08               [12] 5452 	inc	r0
      004979 36               [12] 5453 	addc	a,@r0
      00497A 09               [12] 5454 	inc	r1
      00497B F7               [12] 5455 	mov	@r1,a
      00497C 08               [12] 5456 	inc	r0
      00497D 09               [12] 5457 	inc	r1
      00497E E6               [12] 5458 	mov	a,@r0
      00497F F7               [12] 5459 	mov	@r1,a
      004980 E5 08            [12] 5460 	mov	a,_bp
      004982 24 0E            [12] 5461 	add	a,#0x0e
      004984 F8               [12] 5462 	mov	r0,a
      004985 86 82            [24] 5463 	mov	dpl,@r0
      004987 08               [12] 5464 	inc	r0
      004988 86 83            [24] 5465 	mov	dph,@r0
      00498A 08               [12] 5466 	inc	r0
      00498B 86 F0            [24] 5467 	mov	b,@r0
      00498D 12 6F B8         [24] 5468 	lcall	__gptrget
      004990 FD               [12] 5469 	mov	r5,a
      004991 A3               [24] 5470 	inc	dptr
      004992 12 6F B8         [24] 5471 	lcall	__gptrget
      004995 FE               [12] 5472 	mov	r6,a
      004996 A3               [24] 5473 	inc	dptr
      004997 12 6F B8         [24] 5474 	lcall	__gptrget
      00499A FF               [12] 5475 	mov	r7,a
      00499B C0 05            [24] 5476 	push	ar5
      00499D C0 04            [24] 5477 	push	ar4
      00499F C0 03            [24] 5478 	push	ar3
      0049A1 C0 02            [24] 5479 	push	ar2
      0049A3 8D 82            [24] 5480 	mov	dpl,r5
      0049A5 8E 83            [24] 5481 	mov	dph,r6
      0049A7 8F F0            [24] 5482 	mov	b,r7
      0049A9 12 27 B4         [24] 5483 	lcall	_stack_pop
      0049AC AE 82            [24] 5484 	mov	r6,dpl
      0049AE AF 83            [24] 5485 	mov	r7,dph
      0049B0 15 81            [12] 5486 	dec	sp
      0049B2 15 81            [12] 5487 	dec	sp
      0049B4 15 81            [12] 5488 	dec	sp
      0049B6 D0 05            [24] 5489 	pop	ar5
      0049B8 EE               [12] 5490 	mov	a,r6
      0049B9 4F               [12] 5491 	orl	a,r7
      0049BA D0 07            [24] 5492 	pop	ar7
      0049BC D0 06            [24] 5493 	pop	ar6
      0049BE D0 05            [24] 5494 	pop	ar5
      0049C0 70 25            [24] 5495 	jnz	00200$
      0049C2 7F 7F            [12] 5496 	mov	r7,#___str_9
      0049C4 7E 88            [12] 5497 	mov	r6,#(___str_9 >> 8)
      0049C6 7D 80            [12] 5498 	mov	r5,#0x80
                                   5499 ;	calc.c:51: return;
      0049C8                       5500 00453$:
                                   5501 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0049C8 8F 82            [24] 5502 	mov	dpl,r7
      0049CA 8E 83            [24] 5503 	mov	dph,r6
      0049CC 8D F0            [24] 5504 	mov	b,r5
      0049CE 12 6F B8         [24] 5505 	lcall	__gptrget
      0049D1 FC               [12] 5506 	mov	r4,a
      0049D2 70 03            [24] 5507 	jnz	01355$
      0049D4 02 56 DB         [24] 5508 	ljmp	00249$
      0049D7                       5509 01355$:
      0049D7 7B 00            [12] 5510 	mov	r3,#0x00
      0049D9 8C 82            [24] 5511 	mov	dpl,r4
      0049DB 8B 83            [24] 5512 	mov	dph,r3
      0049DD 12 2C 1F         [24] 5513 	lcall	_putchar
      0049E0 0F               [12] 5514 	inc	r7
                                   5515 ;	calc.c:260: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0049E1 BF 00 E4         [24] 5516 	cjne	r7,#0x00,00453$
      0049E4 0E               [12] 5517 	inc	r6
      0049E5 80 E1            [24] 5518 	sjmp	00453$
      0049E7                       5519 00200$:
                                   5520 ;	calc.c:261: else if (!stack_pop(ctx->ps, &d1)) {
      0049E7 C0 05            [24] 5521 	push	ar5
      0049E9 C0 06            [24] 5522 	push	ar6
      0049EB C0 07            [24] 5523 	push	ar7
      0049ED E5 08            [12] 5524 	mov	a,_bp
      0049EF 24 19            [12] 5525 	add	a,#0x19
      0049F1 FC               [12] 5526 	mov	r4,a
      0049F2 7B 00            [12] 5527 	mov	r3,#0x00
      0049F4 7A 40            [12] 5528 	mov	r2,#0x40
      0049F6 E5 08            [12] 5529 	mov	a,_bp
      0049F8 24 0E            [12] 5530 	add	a,#0x0e
      0049FA F8               [12] 5531 	mov	r0,a
      0049FB 86 82            [24] 5532 	mov	dpl,@r0
      0049FD 08               [12] 5533 	inc	r0
      0049FE 86 83            [24] 5534 	mov	dph,@r0
      004A00 08               [12] 5535 	inc	r0
      004A01 86 F0            [24] 5536 	mov	b,@r0
      004A03 12 6F B8         [24] 5537 	lcall	__gptrget
      004A06 FD               [12] 5538 	mov	r5,a
      004A07 A3               [24] 5539 	inc	dptr
      004A08 12 6F B8         [24] 5540 	lcall	__gptrget
      004A0B FE               [12] 5541 	mov	r6,a
      004A0C A3               [24] 5542 	inc	dptr
      004A0D 12 6F B8         [24] 5543 	lcall	__gptrget
      004A10 FF               [12] 5544 	mov	r7,a
      004A11 C0 05            [24] 5545 	push	ar5
      004A13 C0 04            [24] 5546 	push	ar4
      004A15 C0 03            [24] 5547 	push	ar3
      004A17 C0 02            [24] 5548 	push	ar2
      004A19 8D 82            [24] 5549 	mov	dpl,r5
      004A1B 8E 83            [24] 5550 	mov	dph,r6
      004A1D 8F F0            [24] 5551 	mov	b,r7
      004A1F 12 27 B4         [24] 5552 	lcall	_stack_pop
      004A22 AE 82            [24] 5553 	mov	r6,dpl
      004A24 AF 83            [24] 5554 	mov	r7,dph
      004A26 15 81            [12] 5555 	dec	sp
      004A28 15 81            [12] 5556 	dec	sp
      004A2A 15 81            [12] 5557 	dec	sp
      004A2C D0 05            [24] 5558 	pop	ar5
      004A2E EE               [12] 5559 	mov	a,r6
      004A2F 4F               [12] 5560 	orl	a,r7
      004A30 D0 07            [24] 5561 	pop	ar7
      004A32 D0 06            [24] 5562 	pop	ar6
      004A34 D0 05            [24] 5563 	pop	ar5
      004A36 70 63            [24] 5564 	jnz	00197$
                                   5565 ;	calc.c:262: (void)stack_push(ctx->ps, d0);
      004A38 E5 08            [12] 5566 	mov	a,_bp
      004A3A 24 0E            [12] 5567 	add	a,#0x0e
      004A3C F8               [12] 5568 	mov	r0,a
      004A3D 86 82            [24] 5569 	mov	dpl,@r0
      004A3F 08               [12] 5570 	inc	r0
      004A40 86 83            [24] 5571 	mov	dph,@r0
      004A42 08               [12] 5572 	inc	r0
      004A43 86 F0            [24] 5573 	mov	b,@r0
      004A45 12 6F B8         [24] 5574 	lcall	__gptrget
      004A48 FA               [12] 5575 	mov	r2,a
      004A49 A3               [24] 5576 	inc	dptr
      004A4A 12 6F B8         [24] 5577 	lcall	__gptrget
      004A4D FB               [12] 5578 	mov	r3,a
      004A4E A3               [24] 5579 	inc	dptr
      004A4F 12 6F B8         [24] 5580 	lcall	__gptrget
      004A52 FC               [12] 5581 	mov	r4,a
      004A53 E5 08            [12] 5582 	mov	a,_bp
      004A55 24 15            [12] 5583 	add	a,#0x15
      004A57 F8               [12] 5584 	mov	r0,a
      004A58 E6               [12] 5585 	mov	a,@r0
      004A59 C0 E0            [24] 5586 	push	acc
      004A5B 08               [12] 5587 	inc	r0
      004A5C E6               [12] 5588 	mov	a,@r0
      004A5D C0 E0            [24] 5589 	push	acc
      004A5F 08               [12] 5590 	inc	r0
      004A60 E6               [12] 5591 	mov	a,@r0
      004A61 C0 E0            [24] 5592 	push	acc
      004A63 08               [12] 5593 	inc	r0
      004A64 E6               [12] 5594 	mov	a,@r0
      004A65 C0 E0            [24] 5595 	push	acc
      004A67 8A 82            [24] 5596 	mov	dpl,r2
      004A69 8B 83            [24] 5597 	mov	dph,r3
      004A6B 8C F0            [24] 5598 	mov	b,r4
      004A6D 12 26 BA         [24] 5599 	lcall	_stack_push
      004A70 E5 81            [12] 5600 	mov	a,sp
      004A72 24 FC            [12] 5601 	add	a,#0xfc
      004A74 F5 81            [12] 5602 	mov	sp,a
                                   5603 ;	calc.c:263: printstr("\r\nstack underflow\r\n");
      004A76 7F 7F            [12] 5604 	mov	r7,#___str_9
      004A78 7E 88            [12] 5605 	mov	r6,#(___str_9 >> 8)
      004A7A 7D 80            [12] 5606 	mov	r5,#0x80
                                   5607 ;	calc.c:51: return;
      004A7C                       5608 00456$:
                                   5609 ;	calc.c:49: for (; *s; s++) putchar(*s);
      004A7C 8F 82            [24] 5610 	mov	dpl,r7
      004A7E 8E 83            [24] 5611 	mov	dph,r6
      004A80 8D F0            [24] 5612 	mov	b,r5
      004A82 12 6F B8         [24] 5613 	lcall	__gptrget
      004A85 FC               [12] 5614 	mov	r4,a
      004A86 70 03            [24] 5615 	jnz	01358$
      004A88 02 56 DB         [24] 5616 	ljmp	00249$
      004A8B                       5617 01358$:
      004A8B 7B 00            [12] 5618 	mov	r3,#0x00
      004A8D 8C 82            [24] 5619 	mov	dpl,r4
      004A8F 8B 83            [24] 5620 	mov	dph,r3
      004A91 12 2C 1F         [24] 5621 	lcall	_putchar
      004A94 0F               [12] 5622 	inc	r7
                                   5623 ;	calc.c:263: printstr("\r\nstack underflow\r\n");
      004A95 BF 00 E4         [24] 5624 	cjne	r7,#0x00,00456$
      004A98 0E               [12] 5625 	inc	r6
      004A99 80 E1            [24] 5626 	sjmp	00456$
      004A9B                       5627 00197$:
                                   5628 ;	calc.c:264: } else if (!d0) {
      004A9B E5 08            [12] 5629 	mov	a,_bp
      004A9D 24 15            [12] 5630 	add	a,#0x15
      004A9F F8               [12] 5631 	mov	r0,a
      004AA0 E6               [12] 5632 	mov	a,@r0
      004AA1 08               [12] 5633 	inc	r0
      004AA2 46               [12] 5634 	orl	a,@r0
      004AA3 08               [12] 5635 	inc	r0
      004AA4 46               [12] 5636 	orl	a,@r0
      004AA5 08               [12] 5637 	inc	r0
      004AA6 46               [12] 5638 	orl	a,@r0
      004AA7 60 03            [24] 5639 	jz	01360$
      004AA9 02 4B 4D         [24] 5640 	ljmp	00194$
      004AAC                       5641 01360$:
                                   5642 ;	calc.c:265: (void)stack_push(ctx->ps, d1);
      004AAC E5 08            [12] 5643 	mov	a,_bp
      004AAE 24 0E            [12] 5644 	add	a,#0x0e
      004AB0 F8               [12] 5645 	mov	r0,a
      004AB1 86 82            [24] 5646 	mov	dpl,@r0
      004AB3 08               [12] 5647 	inc	r0
      004AB4 86 83            [24] 5648 	mov	dph,@r0
      004AB6 08               [12] 5649 	inc	r0
      004AB7 86 F0            [24] 5650 	mov	b,@r0
      004AB9 12 6F B8         [24] 5651 	lcall	__gptrget
      004ABC FA               [12] 5652 	mov	r2,a
      004ABD A3               [24] 5653 	inc	dptr
      004ABE 12 6F B8         [24] 5654 	lcall	__gptrget
      004AC1 FB               [12] 5655 	mov	r3,a
      004AC2 A3               [24] 5656 	inc	dptr
      004AC3 12 6F B8         [24] 5657 	lcall	__gptrget
      004AC6 FC               [12] 5658 	mov	r4,a
      004AC7 E5 08            [12] 5659 	mov	a,_bp
      004AC9 24 19            [12] 5660 	add	a,#0x19
      004ACB F8               [12] 5661 	mov	r0,a
      004ACC E6               [12] 5662 	mov	a,@r0
      004ACD C0 E0            [24] 5663 	push	acc
      004ACF 08               [12] 5664 	inc	r0
      004AD0 E6               [12] 5665 	mov	a,@r0
      004AD1 C0 E0            [24] 5666 	push	acc
      004AD3 08               [12] 5667 	inc	r0
      004AD4 E6               [12] 5668 	mov	a,@r0
      004AD5 C0 E0            [24] 5669 	push	acc
      004AD7 08               [12] 5670 	inc	r0
      004AD8 E6               [12] 5671 	mov	a,@r0
      004AD9 C0 E0            [24] 5672 	push	acc
      004ADB 8A 82            [24] 5673 	mov	dpl,r2
      004ADD 8B 83            [24] 5674 	mov	dph,r3
      004ADF 8C F0            [24] 5675 	mov	b,r4
      004AE1 12 26 BA         [24] 5676 	lcall	_stack_push
      004AE4 E5 81            [12] 5677 	mov	a,sp
      004AE6 24 FC            [12] 5678 	add	a,#0xfc
      004AE8 F5 81            [12] 5679 	mov	sp,a
                                   5680 ;	calc.c:266: (void)stack_push(ctx->ps, d0);			
      004AEA E5 08            [12] 5681 	mov	a,_bp
      004AEC 24 0E            [12] 5682 	add	a,#0x0e
      004AEE F8               [12] 5683 	mov	r0,a
      004AEF 86 82            [24] 5684 	mov	dpl,@r0
      004AF1 08               [12] 5685 	inc	r0
      004AF2 86 83            [24] 5686 	mov	dph,@r0
      004AF4 08               [12] 5687 	inc	r0
      004AF5 86 F0            [24] 5688 	mov	b,@r0
      004AF7 12 6F B8         [24] 5689 	lcall	__gptrget
      004AFA FA               [12] 5690 	mov	r2,a
      004AFB A3               [24] 5691 	inc	dptr
      004AFC 12 6F B8         [24] 5692 	lcall	__gptrget
      004AFF FB               [12] 5693 	mov	r3,a
      004B00 A3               [24] 5694 	inc	dptr
      004B01 12 6F B8         [24] 5695 	lcall	__gptrget
      004B04 FC               [12] 5696 	mov	r4,a
      004B05 E5 08            [12] 5697 	mov	a,_bp
      004B07 24 15            [12] 5698 	add	a,#0x15
      004B09 F8               [12] 5699 	mov	r0,a
      004B0A E6               [12] 5700 	mov	a,@r0
      004B0B C0 E0            [24] 5701 	push	acc
      004B0D 08               [12] 5702 	inc	r0
      004B0E E6               [12] 5703 	mov	a,@r0
      004B0F C0 E0            [24] 5704 	push	acc
      004B11 08               [12] 5705 	inc	r0
      004B12 E6               [12] 5706 	mov	a,@r0
      004B13 C0 E0            [24] 5707 	push	acc
      004B15 08               [12] 5708 	inc	r0
      004B16 E6               [12] 5709 	mov	a,@r0
      004B17 C0 E0            [24] 5710 	push	acc
      004B19 8A 82            [24] 5711 	mov	dpl,r2
      004B1B 8B 83            [24] 5712 	mov	dph,r3
      004B1D 8C F0            [24] 5713 	mov	b,r4
      004B1F 12 26 BA         [24] 5714 	lcall	_stack_push
      004B22 E5 81            [12] 5715 	mov	a,sp
      004B24 24 FC            [12] 5716 	add	a,#0xfc
      004B26 F5 81            [12] 5717 	mov	sp,a
                                   5718 ;	calc.c:267: printstr("\r\ndivision by zero\r\n");
      004B28 7F E1            [12] 5719 	mov	r7,#___str_13
      004B2A 7E 88            [12] 5720 	mov	r6,#(___str_13 >> 8)
      004B2C 7D 80            [12] 5721 	mov	r5,#0x80
                                   5722 ;	calc.c:51: return;
      004B2E                       5723 00459$:
                                   5724 ;	calc.c:49: for (; *s; s++) putchar(*s);
      004B2E 8F 82            [24] 5725 	mov	dpl,r7
      004B30 8E 83            [24] 5726 	mov	dph,r6
      004B32 8D F0            [24] 5727 	mov	b,r5
      004B34 12 6F B8         [24] 5728 	lcall	__gptrget
      004B37 FC               [12] 5729 	mov	r4,a
      004B38 70 03            [24] 5730 	jnz	01361$
      004B3A 02 56 DB         [24] 5731 	ljmp	00249$
      004B3D                       5732 01361$:
      004B3D 7B 00            [12] 5733 	mov	r3,#0x00
      004B3F 8C 82            [24] 5734 	mov	dpl,r4
      004B41 8B 83            [24] 5735 	mov	dph,r3
      004B43 12 2C 1F         [24] 5736 	lcall	_putchar
      004B46 0F               [12] 5737 	inc	r7
                                   5738 ;	calc.c:267: printstr("\r\ndivision by zero\r\n");
      004B47 BF 00 E4         [24] 5739 	cjne	r7,#0x00,00459$
      004B4A 0E               [12] 5740 	inc	r6
      004B4B 80 E1            [24] 5741 	sjmp	00459$
      004B4D                       5742 00194$:
                                   5743 ;	calc.c:269: if (ctx->digit[0] == '%') d1 %= d0;
      004B4D 8D 82            [24] 5744 	mov	dpl,r5
      004B4F 8E 83            [24] 5745 	mov	dph,r6
      004B51 8F F0            [24] 5746 	mov	b,r7
      004B53 12 6F B8         [24] 5747 	lcall	__gptrget
      004B56 FD               [12] 5748 	mov	r5,a
      004B57 BD 25 45         [24] 5749 	cjne	r5,#0x25,00191$
      004B5A E5 08            [12] 5750 	mov	a,_bp
      004B5C 24 15            [12] 5751 	add	a,#0x15
      004B5E F8               [12] 5752 	mov	r0,a
      004B5F E6               [12] 5753 	mov	a,@r0
      004B60 C0 E0            [24] 5754 	push	acc
      004B62 08               [12] 5755 	inc	r0
      004B63 E6               [12] 5756 	mov	a,@r0
      004B64 C0 E0            [24] 5757 	push	acc
      004B66 08               [12] 5758 	inc	r0
      004B67 E6               [12] 5759 	mov	a,@r0
      004B68 C0 E0            [24] 5760 	push	acc
      004B6A 08               [12] 5761 	inc	r0
      004B6B E6               [12] 5762 	mov	a,@r0
      004B6C C0 E0            [24] 5763 	push	acc
      004B6E E5 08            [12] 5764 	mov	a,_bp
      004B70 24 19            [12] 5765 	add	a,#0x19
      004B72 F8               [12] 5766 	mov	r0,a
      004B73 86 82            [24] 5767 	mov	dpl,@r0
      004B75 08               [12] 5768 	inc	r0
      004B76 86 83            [24] 5769 	mov	dph,@r0
      004B78 08               [12] 5770 	inc	r0
      004B79 86 F0            [24] 5771 	mov	b,@r0
      004B7B 08               [12] 5772 	inc	r0
      004B7C E6               [12] 5773 	mov	a,@r0
      004B7D 12 6B F6         [24] 5774 	lcall	__modslong
      004B80 AC 82            [24] 5775 	mov	r4,dpl
      004B82 AD 83            [24] 5776 	mov	r5,dph
      004B84 AE F0            [24] 5777 	mov	r6,b
      004B86 FF               [12] 5778 	mov	r7,a
      004B87 E5 81            [12] 5779 	mov	a,sp
      004B89 24 FC            [12] 5780 	add	a,#0xfc
      004B8B F5 81            [12] 5781 	mov	sp,a
      004B8D E5 08            [12] 5782 	mov	a,_bp
      004B8F 24 19            [12] 5783 	add	a,#0x19
      004B91 F8               [12] 5784 	mov	r0,a
      004B92 A6 04            [24] 5785 	mov	@r0,ar4
      004B94 08               [12] 5786 	inc	r0
      004B95 A6 05            [24] 5787 	mov	@r0,ar5
      004B97 08               [12] 5788 	inc	r0
      004B98 A6 06            [24] 5789 	mov	@r0,ar6
      004B9A 08               [12] 5790 	inc	r0
      004B9B A6 07            [24] 5791 	mov	@r0,ar7
      004B9D 80 5F            [24] 5792 	sjmp	00192$
      004B9F                       5793 00191$:
                                   5794 ;	calc.c:270: else d1 = (unsigned long)d1 % (unsigned long)d0;
      004B9F E5 08            [12] 5795 	mov	a,_bp
      004BA1 24 19            [12] 5796 	add	a,#0x19
      004BA3 F8               [12] 5797 	mov	r0,a
      004BA4 E5 08            [12] 5798 	mov	a,_bp
      004BA6 24 07            [12] 5799 	add	a,#0x07
      004BA8 F9               [12] 5800 	mov	r1,a
      004BA9 E6               [12] 5801 	mov	a,@r0
      004BAA F7               [12] 5802 	mov	@r1,a
      004BAB 08               [12] 5803 	inc	r0
      004BAC 09               [12] 5804 	inc	r1
      004BAD E6               [12] 5805 	mov	a,@r0
      004BAE F7               [12] 5806 	mov	@r1,a
      004BAF 08               [12] 5807 	inc	r0
      004BB0 09               [12] 5808 	inc	r1
      004BB1 E6               [12] 5809 	mov	a,@r0
      004BB2 F7               [12] 5810 	mov	@r1,a
      004BB3 08               [12] 5811 	inc	r0
      004BB4 09               [12] 5812 	inc	r1
      004BB5 E6               [12] 5813 	mov	a,@r0
      004BB6 F7               [12] 5814 	mov	@r1,a
      004BB7 E5 08            [12] 5815 	mov	a,_bp
      004BB9 24 15            [12] 5816 	add	a,#0x15
      004BBB F8               [12] 5817 	mov	r0,a
      004BBC 86 02            [24] 5818 	mov	ar2,@r0
      004BBE 08               [12] 5819 	inc	r0
      004BBF 86 03            [24] 5820 	mov	ar3,@r0
      004BC1 08               [12] 5821 	inc	r0
      004BC2 86 06            [24] 5822 	mov	ar6,@r0
      004BC4 08               [12] 5823 	inc	r0
      004BC5 86 07            [24] 5824 	mov	ar7,@r0
      004BC7 C0 02            [24] 5825 	push	ar2
      004BC9 C0 03            [24] 5826 	push	ar3
      004BCB C0 06            [24] 5827 	push	ar6
      004BCD C0 07            [24] 5828 	push	ar7
      004BCF E5 08            [12] 5829 	mov	a,_bp
      004BD1 24 07            [12] 5830 	add	a,#0x07
      004BD3 F8               [12] 5831 	mov	r0,a
      004BD4 86 82            [24] 5832 	mov	dpl,@r0
      004BD6 08               [12] 5833 	inc	r0
      004BD7 86 83            [24] 5834 	mov	dph,@r0
      004BD9 08               [12] 5835 	inc	r0
      004BDA 86 F0            [24] 5836 	mov	b,@r0
      004BDC 08               [12] 5837 	inc	r0
      004BDD E6               [12] 5838 	mov	a,@r0
      004BDE 12 6C ED         [24] 5839 	lcall	__modulong
      004BE1 AC 82            [24] 5840 	mov	r4,dpl
      004BE3 AD 83            [24] 5841 	mov	r5,dph
      004BE5 AE F0            [24] 5842 	mov	r6,b
      004BE7 FF               [12] 5843 	mov	r7,a
      004BE8 E5 81            [12] 5844 	mov	a,sp
      004BEA 24 FC            [12] 5845 	add	a,#0xfc
      004BEC F5 81            [12] 5846 	mov	sp,a
      004BEE E5 08            [12] 5847 	mov	a,_bp
      004BF0 24 19            [12] 5848 	add	a,#0x19
      004BF2 F8               [12] 5849 	mov	r0,a
      004BF3 A6 04            [24] 5850 	mov	@r0,ar4
      004BF5 08               [12] 5851 	inc	r0
      004BF6 A6 05            [24] 5852 	mov	@r0,ar5
      004BF8 08               [12] 5853 	inc	r0
      004BF9 A6 06            [24] 5854 	mov	@r0,ar6
      004BFB 08               [12] 5855 	inc	r0
      004BFC A6 07            [24] 5856 	mov	@r0,ar7
      004BFE                       5857 00192$:
                                   5858 ;	calc.c:271: (void)stack_push(ctx->ps, d1);
      004BFE E5 08            [12] 5859 	mov	a,_bp
      004C00 24 0E            [12] 5860 	add	a,#0x0e
      004C02 F8               [12] 5861 	mov	r0,a
      004C03 86 82            [24] 5862 	mov	dpl,@r0
      004C05 08               [12] 5863 	inc	r0
      004C06 86 83            [24] 5864 	mov	dph,@r0
      004C08 08               [12] 5865 	inc	r0
      004C09 86 F0            [24] 5866 	mov	b,@r0
      004C0B 12 6F B8         [24] 5867 	lcall	__gptrget
      004C0E FD               [12] 5868 	mov	r5,a
      004C0F A3               [24] 5869 	inc	dptr
      004C10 12 6F B8         [24] 5870 	lcall	__gptrget
      004C13 FE               [12] 5871 	mov	r6,a
      004C14 A3               [24] 5872 	inc	dptr
      004C15 12 6F B8         [24] 5873 	lcall	__gptrget
      004C18 FF               [12] 5874 	mov	r7,a
      004C19 E5 08            [12] 5875 	mov	a,_bp
      004C1B 24 19            [12] 5876 	add	a,#0x19
      004C1D F8               [12] 5877 	mov	r0,a
      004C1E E6               [12] 5878 	mov	a,@r0
      004C1F C0 E0            [24] 5879 	push	acc
      004C21 08               [12] 5880 	inc	r0
      004C22 E6               [12] 5881 	mov	a,@r0
      004C23 C0 E0            [24] 5882 	push	acc
      004C25 08               [12] 5883 	inc	r0
      004C26 E6               [12] 5884 	mov	a,@r0
      004C27 C0 E0            [24] 5885 	push	acc
      004C29 08               [12] 5886 	inc	r0
      004C2A E6               [12] 5887 	mov	a,@r0
      004C2B C0 E0            [24] 5888 	push	acc
      004C2D 8D 82            [24] 5889 	mov	dpl,r5
      004C2F 8E 83            [24] 5890 	mov	dph,r6
      004C31 8F F0            [24] 5891 	mov	b,r7
      004C33 12 26 BA         [24] 5892 	lcall	_stack_push
      004C36 E5 81            [12] 5893 	mov	a,sp
      004C38 24 FC            [12] 5894 	add	a,#0xfc
      004C3A F5 81            [12] 5895 	mov	sp,a
                                   5896 ;	calc.c:273: break;
      004C3C 02 56 DB         [24] 5897 	ljmp	00249$
                                   5898 ;	calc.c:274: case '&':
      004C3F                       5899 00202$:
                                   5900 ;	calc.c:275: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004C3F E5 08            [12] 5901 	mov	a,_bp
      004C41 24 15            [12] 5902 	add	a,#0x15
      004C43 FF               [12] 5903 	mov	r7,a
      004C44 E5 08            [12] 5904 	mov	a,_bp
      004C46 24 0E            [12] 5905 	add	a,#0x0e
      004C48 F8               [12] 5906 	mov	r0,a
      004C49 A6 07            [24] 5907 	mov	@r0,ar7
      004C4B 08               [12] 5908 	inc	r0
      004C4C 76 00            [12] 5909 	mov	@r0,#0x00
      004C4E 08               [12] 5910 	inc	r0
      004C4F 76 40            [12] 5911 	mov	@r0,#0x40
      004C51 E5 08            [12] 5912 	mov	a,_bp
      004C53 24 12            [12] 5913 	add	a,#0x12
      004C55 F8               [12] 5914 	mov	r0,a
      004C56 74 13            [12] 5915 	mov	a,#0x13
      004C58 26               [12] 5916 	add	a,@r0
      004C59 FA               [12] 5917 	mov	r2,a
      004C5A 74 40            [12] 5918 	mov	a,#0x40
      004C5C 08               [12] 5919 	inc	r0
      004C5D 36               [12] 5920 	addc	a,@r0
      004C5E FB               [12] 5921 	mov	r3,a
      004C5F 08               [12] 5922 	inc	r0
      004C60 86 04            [24] 5923 	mov	ar4,@r0
      004C62 8A 82            [24] 5924 	mov	dpl,r2
      004C64 8B 83            [24] 5925 	mov	dph,r3
      004C66 8C F0            [24] 5926 	mov	b,r4
      004C68 12 6F B8         [24] 5927 	lcall	__gptrget
      004C6B FD               [12] 5928 	mov	r5,a
      004C6C A3               [24] 5929 	inc	dptr
      004C6D 12 6F B8         [24] 5930 	lcall	__gptrget
      004C70 FE               [12] 5931 	mov	r6,a
      004C71 A3               [24] 5932 	inc	dptr
      004C72 12 6F B8         [24] 5933 	lcall	__gptrget
      004C75 FF               [12] 5934 	mov	r7,a
      004C76 C0 04            [24] 5935 	push	ar4
      004C78 C0 03            [24] 5936 	push	ar3
      004C7A C0 02            [24] 5937 	push	ar2
      004C7C E5 08            [12] 5938 	mov	a,_bp
      004C7E 24 0E            [12] 5939 	add	a,#0x0e
      004C80 F8               [12] 5940 	mov	r0,a
      004C81 E6               [12] 5941 	mov	a,@r0
      004C82 C0 E0            [24] 5942 	push	acc
      004C84 08               [12] 5943 	inc	r0
      004C85 E6               [12] 5944 	mov	a,@r0
      004C86 C0 E0            [24] 5945 	push	acc
      004C88 08               [12] 5946 	inc	r0
      004C89 E6               [12] 5947 	mov	a,@r0
      004C8A C0 E0            [24] 5948 	push	acc
      004C8C 8D 82            [24] 5949 	mov	dpl,r5
      004C8E 8E 83            [24] 5950 	mov	dph,r6
      004C90 8F F0            [24] 5951 	mov	b,r7
      004C92 12 27 B4         [24] 5952 	lcall	_stack_pop
      004C95 AE 82            [24] 5953 	mov	r6,dpl
      004C97 AF 83            [24] 5954 	mov	r7,dph
      004C99 15 81            [12] 5955 	dec	sp
      004C9B 15 81            [12] 5956 	dec	sp
      004C9D 15 81            [12] 5957 	dec	sp
      004C9F D0 02            [24] 5958 	pop	ar2
      004CA1 D0 03            [24] 5959 	pop	ar3
      004CA3 D0 04            [24] 5960 	pop	ar4
      004CA5 EE               [12] 5961 	mov	a,r6
      004CA6 4F               [12] 5962 	orl	a,r7
      004CA7 70 25            [24] 5963 	jnz	00207$
      004CA9 7D 7F            [12] 5964 	mov	r5,#___str_9
      004CAB 7C 88            [12] 5965 	mov	r4,#(___str_9 >> 8)
      004CAD 7B 80            [12] 5966 	mov	r3,#0x80
                                   5967 ;	calc.c:51: return;
      004CAF                       5968 00462$:
                                   5969 ;	calc.c:49: for (; *s; s++) putchar(*s);
      004CAF 8D 82            [24] 5970 	mov	dpl,r5
      004CB1 8C 83            [24] 5971 	mov	dph,r4
      004CB3 8B F0            [24] 5972 	mov	b,r3
      004CB5 12 6F B8         [24] 5973 	lcall	__gptrget
      004CB8 FF               [12] 5974 	mov	r7,a
      004CB9 70 03            [24] 5975 	jnz	01366$
      004CBB 02 56 DB         [24] 5976 	ljmp	00249$
      004CBE                       5977 01366$:
      004CBE 7E 00            [12] 5978 	mov	r6,#0x00
      004CC0 8F 82            [24] 5979 	mov	dpl,r7
      004CC2 8E 83            [24] 5980 	mov	dph,r6
      004CC4 12 2C 1F         [24] 5981 	lcall	_putchar
      004CC7 0D               [12] 5982 	inc	r5
                                   5983 ;	calc.c:275: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004CC8 BD 00 E4         [24] 5984 	cjne	r5,#0x00,00462$
      004CCB 0C               [12] 5985 	inc	r4
      004CCC 80 E1            [24] 5986 	sjmp	00462$
      004CCE                       5987 00207$:
                                   5988 ;	calc.c:276: else if (!stack_pop(ctx->ps, &d1)) {
      004CCE E5 08            [12] 5989 	mov	a,_bp
      004CD0 24 19            [12] 5990 	add	a,#0x19
      004CD2 FF               [12] 5991 	mov	r7,a
      004CD3 E5 08            [12] 5992 	mov	a,_bp
      004CD5 24 0E            [12] 5993 	add	a,#0x0e
      004CD7 F8               [12] 5994 	mov	r0,a
      004CD8 A6 07            [24] 5995 	mov	@r0,ar7
      004CDA 08               [12] 5996 	inc	r0
      004CDB 76 00            [12] 5997 	mov	@r0,#0x00
      004CDD 08               [12] 5998 	inc	r0
      004CDE 76 40            [12] 5999 	mov	@r0,#0x40
      004CE0 8A 82            [24] 6000 	mov	dpl,r2
      004CE2 8B 83            [24] 6001 	mov	dph,r3
      004CE4 8C F0            [24] 6002 	mov	b,r4
      004CE6 12 6F B8         [24] 6003 	lcall	__gptrget
      004CE9 FD               [12] 6004 	mov	r5,a
      004CEA A3               [24] 6005 	inc	dptr
      004CEB 12 6F B8         [24] 6006 	lcall	__gptrget
      004CEE FE               [12] 6007 	mov	r6,a
      004CEF A3               [24] 6008 	inc	dptr
      004CF0 12 6F B8         [24] 6009 	lcall	__gptrget
      004CF3 FF               [12] 6010 	mov	r7,a
      004CF4 C0 04            [24] 6011 	push	ar4
      004CF6 C0 03            [24] 6012 	push	ar3
      004CF8 C0 02            [24] 6013 	push	ar2
      004CFA E5 08            [12] 6014 	mov	a,_bp
      004CFC 24 0E            [12] 6015 	add	a,#0x0e
      004CFE F8               [12] 6016 	mov	r0,a
      004CFF E6               [12] 6017 	mov	a,@r0
      004D00 C0 E0            [24] 6018 	push	acc
      004D02 08               [12] 6019 	inc	r0
      004D03 E6               [12] 6020 	mov	a,@r0
      004D04 C0 E0            [24] 6021 	push	acc
      004D06 08               [12] 6022 	inc	r0
      004D07 E6               [12] 6023 	mov	a,@r0
      004D08 C0 E0            [24] 6024 	push	acc
      004D0A 8D 82            [24] 6025 	mov	dpl,r5
      004D0C 8E 83            [24] 6026 	mov	dph,r6
      004D0E 8F F0            [24] 6027 	mov	b,r7
      004D10 12 27 B4         [24] 6028 	lcall	_stack_pop
      004D13 AE 82            [24] 6029 	mov	r6,dpl
      004D15 AF 83            [24] 6030 	mov	r7,dph
      004D17 15 81            [12] 6031 	dec	sp
      004D19 15 81            [12] 6032 	dec	sp
      004D1B 15 81            [12] 6033 	dec	sp
      004D1D D0 02            [24] 6034 	pop	ar2
      004D1F D0 03            [24] 6035 	pop	ar3
      004D21 D0 04            [24] 6036 	pop	ar4
      004D23 EE               [12] 6037 	mov	a,r6
      004D24 4F               [12] 6038 	orl	a,r7
      004D25 70 5C            [24] 6039 	jnz	00204$
                                   6040 ;	calc.c:277: (void)stack_push(ctx->ps, d0);
      004D27 8A 82            [24] 6041 	mov	dpl,r2
      004D29 8B 83            [24] 6042 	mov	dph,r3
      004D2B 8C F0            [24] 6043 	mov	b,r4
      004D2D 12 6F B8         [24] 6044 	lcall	__gptrget
      004D30 FD               [12] 6045 	mov	r5,a
      004D31 A3               [24] 6046 	inc	dptr
      004D32 12 6F B8         [24] 6047 	lcall	__gptrget
      004D35 FE               [12] 6048 	mov	r6,a
      004D36 A3               [24] 6049 	inc	dptr
      004D37 12 6F B8         [24] 6050 	lcall	__gptrget
      004D3A FF               [12] 6051 	mov	r7,a
      004D3B E5 08            [12] 6052 	mov	a,_bp
      004D3D 24 15            [12] 6053 	add	a,#0x15
      004D3F F8               [12] 6054 	mov	r0,a
      004D40 E6               [12] 6055 	mov	a,@r0
      004D41 C0 E0            [24] 6056 	push	acc
      004D43 08               [12] 6057 	inc	r0
      004D44 E6               [12] 6058 	mov	a,@r0
      004D45 C0 E0            [24] 6059 	push	acc
      004D47 08               [12] 6060 	inc	r0
      004D48 E6               [12] 6061 	mov	a,@r0
      004D49 C0 E0            [24] 6062 	push	acc
      004D4B 08               [12] 6063 	inc	r0
      004D4C E6               [12] 6064 	mov	a,@r0
      004D4D C0 E0            [24] 6065 	push	acc
      004D4F 8D 82            [24] 6066 	mov	dpl,r5
      004D51 8E 83            [24] 6067 	mov	dph,r6
      004D53 8F F0            [24] 6068 	mov	b,r7
      004D55 12 26 BA         [24] 6069 	lcall	_stack_push
      004D58 E5 81            [12] 6070 	mov	a,sp
      004D5A 24 FC            [12] 6071 	add	a,#0xfc
      004D5C F5 81            [12] 6072 	mov	sp,a
                                   6073 ;	calc.c:278: printstr("\r\nstack underflow\r\n");
      004D5E 7D 7F            [12] 6074 	mov	r5,#___str_9
      004D60 7C 88            [12] 6075 	mov	r4,#(___str_9 >> 8)
      004D62 7B 80            [12] 6076 	mov	r3,#0x80
                                   6077 ;	calc.c:51: return;
      004D64                       6078 00465$:
                                   6079 ;	calc.c:49: for (; *s; s++) putchar(*s);
      004D64 8D 82            [24] 6080 	mov	dpl,r5
      004D66 8C 83            [24] 6081 	mov	dph,r4
      004D68 8B F0            [24] 6082 	mov	b,r3
      004D6A 12 6F B8         [24] 6083 	lcall	__gptrget
      004D6D FF               [12] 6084 	mov	r7,a
      004D6E 70 03            [24] 6085 	jnz	01369$
      004D70 02 56 DB         [24] 6086 	ljmp	00249$
      004D73                       6087 01369$:
      004D73 7E 00            [12] 6088 	mov	r6,#0x00
      004D75 8F 82            [24] 6089 	mov	dpl,r7
      004D77 8E 83            [24] 6090 	mov	dph,r6
      004D79 12 2C 1F         [24] 6091 	lcall	_putchar
      004D7C 0D               [12] 6092 	inc	r5
                                   6093 ;	calc.c:278: printstr("\r\nstack underflow\r\n");
      004D7D BD 00 E4         [24] 6094 	cjne	r5,#0x00,00465$
      004D80 0C               [12] 6095 	inc	r4
      004D81 80 E1            [24] 6096 	sjmp	00465$
      004D83                       6097 00204$:
                                   6098 ;	calc.c:280: d1 &= d0;
      004D83 E5 08            [12] 6099 	mov	a,_bp
      004D85 24 19            [12] 6100 	add	a,#0x19
      004D87 F8               [12] 6101 	mov	r0,a
      004D88 E5 08            [12] 6102 	mov	a,_bp
      004D8A 24 15            [12] 6103 	add	a,#0x15
      004D8C F9               [12] 6104 	mov	r1,a
      004D8D E7               [12] 6105 	mov	a,@r1
      004D8E 56               [12] 6106 	anl	a,@r0
      004D8F F6               [12] 6107 	mov	@r0,a
      004D90 09               [12] 6108 	inc	r1
      004D91 E7               [12] 6109 	mov	a,@r1
      004D92 08               [12] 6110 	inc	r0
      004D93 56               [12] 6111 	anl	a,@r0
      004D94 F6               [12] 6112 	mov	@r0,a
      004D95 09               [12] 6113 	inc	r1
      004D96 E7               [12] 6114 	mov	a,@r1
      004D97 08               [12] 6115 	inc	r0
      004D98 56               [12] 6116 	anl	a,@r0
      004D99 F6               [12] 6117 	mov	@r0,a
      004D9A 09               [12] 6118 	inc	r1
      004D9B E7               [12] 6119 	mov	a,@r1
      004D9C 08               [12] 6120 	inc	r0
      004D9D 56               [12] 6121 	anl	a,@r0
      004D9E F6               [12] 6122 	mov	@r0,a
                                   6123 ;	calc.c:281: (void)stack_push(ctx->ps, d1);
      004D9F 8A 82            [24] 6124 	mov	dpl,r2
      004DA1 8B 83            [24] 6125 	mov	dph,r3
      004DA3 8C F0            [24] 6126 	mov	b,r4
      004DA5 12 6F B8         [24] 6127 	lcall	__gptrget
      004DA8 FA               [12] 6128 	mov	r2,a
      004DA9 A3               [24] 6129 	inc	dptr
      004DAA 12 6F B8         [24] 6130 	lcall	__gptrget
      004DAD FB               [12] 6131 	mov	r3,a
      004DAE A3               [24] 6132 	inc	dptr
      004DAF 12 6F B8         [24] 6133 	lcall	__gptrget
      004DB2 FC               [12] 6134 	mov	r4,a
      004DB3 E5 08            [12] 6135 	mov	a,_bp
      004DB5 24 19            [12] 6136 	add	a,#0x19
      004DB7 F8               [12] 6137 	mov	r0,a
      004DB8 E6               [12] 6138 	mov	a,@r0
      004DB9 C0 E0            [24] 6139 	push	acc
      004DBB 08               [12] 6140 	inc	r0
      004DBC E6               [12] 6141 	mov	a,@r0
      004DBD C0 E0            [24] 6142 	push	acc
      004DBF 08               [12] 6143 	inc	r0
      004DC0 E6               [12] 6144 	mov	a,@r0
      004DC1 C0 E0            [24] 6145 	push	acc
      004DC3 08               [12] 6146 	inc	r0
      004DC4 E6               [12] 6147 	mov	a,@r0
      004DC5 C0 E0            [24] 6148 	push	acc
      004DC7 8A 82            [24] 6149 	mov	dpl,r2
      004DC9 8B 83            [24] 6150 	mov	dph,r3
      004DCB 8C F0            [24] 6151 	mov	b,r4
      004DCD 12 26 BA         [24] 6152 	lcall	_stack_push
      004DD0 E5 81            [12] 6153 	mov	a,sp
      004DD2 24 FC            [12] 6154 	add	a,#0xfc
      004DD4 F5 81            [12] 6155 	mov	sp,a
                                   6156 ;	calc.c:283: break;
      004DD6 02 56 DB         [24] 6157 	ljmp	00249$
                                   6158 ;	calc.c:284: case '|':
      004DD9                       6159 00209$:
                                   6160 ;	calc.c:285: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004DD9 E5 08            [12] 6161 	mov	a,_bp
      004DDB 24 15            [12] 6162 	add	a,#0x15
      004DDD FF               [12] 6163 	mov	r7,a
      004DDE E5 08            [12] 6164 	mov	a,_bp
      004DE0 24 0E            [12] 6165 	add	a,#0x0e
      004DE2 F8               [12] 6166 	mov	r0,a
      004DE3 A6 07            [24] 6167 	mov	@r0,ar7
      004DE5 08               [12] 6168 	inc	r0
      004DE6 76 00            [12] 6169 	mov	@r0,#0x00
      004DE8 08               [12] 6170 	inc	r0
      004DE9 76 40            [12] 6171 	mov	@r0,#0x40
      004DEB E5 08            [12] 6172 	mov	a,_bp
      004DED 24 12            [12] 6173 	add	a,#0x12
      004DEF F8               [12] 6174 	mov	r0,a
      004DF0 74 13            [12] 6175 	mov	a,#0x13
      004DF2 26               [12] 6176 	add	a,@r0
      004DF3 FA               [12] 6177 	mov	r2,a
      004DF4 74 40            [12] 6178 	mov	a,#0x40
      004DF6 08               [12] 6179 	inc	r0
      004DF7 36               [12] 6180 	addc	a,@r0
      004DF8 FB               [12] 6181 	mov	r3,a
      004DF9 08               [12] 6182 	inc	r0
      004DFA 86 04            [24] 6183 	mov	ar4,@r0
      004DFC 8A 82            [24] 6184 	mov	dpl,r2
      004DFE 8B 83            [24] 6185 	mov	dph,r3
      004E00 8C F0            [24] 6186 	mov	b,r4
      004E02 12 6F B8         [24] 6187 	lcall	__gptrget
      004E05 FD               [12] 6188 	mov	r5,a
      004E06 A3               [24] 6189 	inc	dptr
      004E07 12 6F B8         [24] 6190 	lcall	__gptrget
      004E0A FE               [12] 6191 	mov	r6,a
      004E0B A3               [24] 6192 	inc	dptr
      004E0C 12 6F B8         [24] 6193 	lcall	__gptrget
      004E0F FF               [12] 6194 	mov	r7,a
      004E10 C0 04            [24] 6195 	push	ar4
      004E12 C0 03            [24] 6196 	push	ar3
      004E14 C0 02            [24] 6197 	push	ar2
      004E16 E5 08            [12] 6198 	mov	a,_bp
      004E18 24 0E            [12] 6199 	add	a,#0x0e
      004E1A F8               [12] 6200 	mov	r0,a
      004E1B E6               [12] 6201 	mov	a,@r0
      004E1C C0 E0            [24] 6202 	push	acc
      004E1E 08               [12] 6203 	inc	r0
      004E1F E6               [12] 6204 	mov	a,@r0
      004E20 C0 E0            [24] 6205 	push	acc
      004E22 08               [12] 6206 	inc	r0
      004E23 E6               [12] 6207 	mov	a,@r0
      004E24 C0 E0            [24] 6208 	push	acc
      004E26 8D 82            [24] 6209 	mov	dpl,r5
      004E28 8E 83            [24] 6210 	mov	dph,r6
      004E2A 8F F0            [24] 6211 	mov	b,r7
      004E2C 12 27 B4         [24] 6212 	lcall	_stack_pop
      004E2F AE 82            [24] 6213 	mov	r6,dpl
      004E31 AF 83            [24] 6214 	mov	r7,dph
      004E33 15 81            [12] 6215 	dec	sp
      004E35 15 81            [12] 6216 	dec	sp
      004E37 15 81            [12] 6217 	dec	sp
      004E39 D0 02            [24] 6218 	pop	ar2
      004E3B D0 03            [24] 6219 	pop	ar3
      004E3D D0 04            [24] 6220 	pop	ar4
      004E3F EE               [12] 6221 	mov	a,r6
      004E40 4F               [12] 6222 	orl	a,r7
      004E41 70 25            [24] 6223 	jnz	00214$
      004E43 7D 7F            [12] 6224 	mov	r5,#___str_9
      004E45 7C 88            [12] 6225 	mov	r4,#(___str_9 >> 8)
      004E47 7B 80            [12] 6226 	mov	r3,#0x80
                                   6227 ;	calc.c:51: return;
      004E49                       6228 00468$:
                                   6229 ;	calc.c:49: for (; *s; s++) putchar(*s);
      004E49 8D 82            [24] 6230 	mov	dpl,r5
      004E4B 8C 83            [24] 6231 	mov	dph,r4
      004E4D 8B F0            [24] 6232 	mov	b,r3
      004E4F 12 6F B8         [24] 6233 	lcall	__gptrget
      004E52 FF               [12] 6234 	mov	r7,a
      004E53 70 03            [24] 6235 	jnz	01372$
      004E55 02 56 DB         [24] 6236 	ljmp	00249$
      004E58                       6237 01372$:
      004E58 7E 00            [12] 6238 	mov	r6,#0x00
      004E5A 8F 82            [24] 6239 	mov	dpl,r7
      004E5C 8E 83            [24] 6240 	mov	dph,r6
      004E5E 12 2C 1F         [24] 6241 	lcall	_putchar
      004E61 0D               [12] 6242 	inc	r5
                                   6243 ;	calc.c:285: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004E62 BD 00 E4         [24] 6244 	cjne	r5,#0x00,00468$
      004E65 0C               [12] 6245 	inc	r4
      004E66 80 E1            [24] 6246 	sjmp	00468$
      004E68                       6247 00214$:
                                   6248 ;	calc.c:286: else if (!stack_pop(ctx->ps, &d1)) {
      004E68 E5 08            [12] 6249 	mov	a,_bp
      004E6A 24 19            [12] 6250 	add	a,#0x19
      004E6C FF               [12] 6251 	mov	r7,a
      004E6D E5 08            [12] 6252 	mov	a,_bp
      004E6F 24 0E            [12] 6253 	add	a,#0x0e
      004E71 F8               [12] 6254 	mov	r0,a
      004E72 A6 07            [24] 6255 	mov	@r0,ar7
      004E74 08               [12] 6256 	inc	r0
      004E75 76 00            [12] 6257 	mov	@r0,#0x00
      004E77 08               [12] 6258 	inc	r0
      004E78 76 40            [12] 6259 	mov	@r0,#0x40
      004E7A 8A 82            [24] 6260 	mov	dpl,r2
      004E7C 8B 83            [24] 6261 	mov	dph,r3
      004E7E 8C F0            [24] 6262 	mov	b,r4
      004E80 12 6F B8         [24] 6263 	lcall	__gptrget
      004E83 FD               [12] 6264 	mov	r5,a
      004E84 A3               [24] 6265 	inc	dptr
      004E85 12 6F B8         [24] 6266 	lcall	__gptrget
      004E88 FE               [12] 6267 	mov	r6,a
      004E89 A3               [24] 6268 	inc	dptr
      004E8A 12 6F B8         [24] 6269 	lcall	__gptrget
      004E8D FF               [12] 6270 	mov	r7,a
      004E8E C0 04            [24] 6271 	push	ar4
      004E90 C0 03            [24] 6272 	push	ar3
      004E92 C0 02            [24] 6273 	push	ar2
      004E94 E5 08            [12] 6274 	mov	a,_bp
      004E96 24 0E            [12] 6275 	add	a,#0x0e
      004E98 F8               [12] 6276 	mov	r0,a
      004E99 E6               [12] 6277 	mov	a,@r0
      004E9A C0 E0            [24] 6278 	push	acc
      004E9C 08               [12] 6279 	inc	r0
      004E9D E6               [12] 6280 	mov	a,@r0
      004E9E C0 E0            [24] 6281 	push	acc
      004EA0 08               [12] 6282 	inc	r0
      004EA1 E6               [12] 6283 	mov	a,@r0
      004EA2 C0 E0            [24] 6284 	push	acc
      004EA4 8D 82            [24] 6285 	mov	dpl,r5
      004EA6 8E 83            [24] 6286 	mov	dph,r6
      004EA8 8F F0            [24] 6287 	mov	b,r7
      004EAA 12 27 B4         [24] 6288 	lcall	_stack_pop
      004EAD AE 82            [24] 6289 	mov	r6,dpl
      004EAF AF 83            [24] 6290 	mov	r7,dph
      004EB1 15 81            [12] 6291 	dec	sp
      004EB3 15 81            [12] 6292 	dec	sp
      004EB5 15 81            [12] 6293 	dec	sp
      004EB7 D0 02            [24] 6294 	pop	ar2
      004EB9 D0 03            [24] 6295 	pop	ar3
      004EBB D0 04            [24] 6296 	pop	ar4
      004EBD EE               [12] 6297 	mov	a,r6
      004EBE 4F               [12] 6298 	orl	a,r7
      004EBF 70 5C            [24] 6299 	jnz	00211$
                                   6300 ;	calc.c:287: (void)stack_push(ctx->ps, d0);
      004EC1 8A 82            [24] 6301 	mov	dpl,r2
      004EC3 8B 83            [24] 6302 	mov	dph,r3
      004EC5 8C F0            [24] 6303 	mov	b,r4
      004EC7 12 6F B8         [24] 6304 	lcall	__gptrget
      004ECA FD               [12] 6305 	mov	r5,a
      004ECB A3               [24] 6306 	inc	dptr
      004ECC 12 6F B8         [24] 6307 	lcall	__gptrget
      004ECF FE               [12] 6308 	mov	r6,a
      004ED0 A3               [24] 6309 	inc	dptr
      004ED1 12 6F B8         [24] 6310 	lcall	__gptrget
      004ED4 FF               [12] 6311 	mov	r7,a
      004ED5 E5 08            [12] 6312 	mov	a,_bp
      004ED7 24 15            [12] 6313 	add	a,#0x15
      004ED9 F8               [12] 6314 	mov	r0,a
      004EDA E6               [12] 6315 	mov	a,@r0
      004EDB C0 E0            [24] 6316 	push	acc
      004EDD 08               [12] 6317 	inc	r0
      004EDE E6               [12] 6318 	mov	a,@r0
      004EDF C0 E0            [24] 6319 	push	acc
      004EE1 08               [12] 6320 	inc	r0
      004EE2 E6               [12] 6321 	mov	a,@r0
      004EE3 C0 E0            [24] 6322 	push	acc
      004EE5 08               [12] 6323 	inc	r0
      004EE6 E6               [12] 6324 	mov	a,@r0
      004EE7 C0 E0            [24] 6325 	push	acc
      004EE9 8D 82            [24] 6326 	mov	dpl,r5
      004EEB 8E 83            [24] 6327 	mov	dph,r6
      004EED 8F F0            [24] 6328 	mov	b,r7
      004EEF 12 26 BA         [24] 6329 	lcall	_stack_push
      004EF2 E5 81            [12] 6330 	mov	a,sp
      004EF4 24 FC            [12] 6331 	add	a,#0xfc
      004EF6 F5 81            [12] 6332 	mov	sp,a
                                   6333 ;	calc.c:288: printstr("\r\nstack underflow\r\n");
      004EF8 7D 7F            [12] 6334 	mov	r5,#___str_9
      004EFA 7C 88            [12] 6335 	mov	r4,#(___str_9 >> 8)
      004EFC 7B 80            [12] 6336 	mov	r3,#0x80
                                   6337 ;	calc.c:51: return;
      004EFE                       6338 00471$:
                                   6339 ;	calc.c:49: for (; *s; s++) putchar(*s);
      004EFE 8D 82            [24] 6340 	mov	dpl,r5
      004F00 8C 83            [24] 6341 	mov	dph,r4
      004F02 8B F0            [24] 6342 	mov	b,r3
      004F04 12 6F B8         [24] 6343 	lcall	__gptrget
      004F07 FF               [12] 6344 	mov	r7,a
      004F08 70 03            [24] 6345 	jnz	01375$
      004F0A 02 56 DB         [24] 6346 	ljmp	00249$
      004F0D                       6347 01375$:
      004F0D 7E 00            [12] 6348 	mov	r6,#0x00
      004F0F 8F 82            [24] 6349 	mov	dpl,r7
      004F11 8E 83            [24] 6350 	mov	dph,r6
      004F13 12 2C 1F         [24] 6351 	lcall	_putchar
      004F16 0D               [12] 6352 	inc	r5
                                   6353 ;	calc.c:288: printstr("\r\nstack underflow\r\n");
      004F17 BD 00 E4         [24] 6354 	cjne	r5,#0x00,00471$
      004F1A 0C               [12] 6355 	inc	r4
      004F1B 80 E1            [24] 6356 	sjmp	00471$
      004F1D                       6357 00211$:
                                   6358 ;	calc.c:290: d1 |= d0;
      004F1D E5 08            [12] 6359 	mov	a,_bp
      004F1F 24 19            [12] 6360 	add	a,#0x19
      004F21 F8               [12] 6361 	mov	r0,a
      004F22 E5 08            [12] 6362 	mov	a,_bp
      004F24 24 15            [12] 6363 	add	a,#0x15
      004F26 F9               [12] 6364 	mov	r1,a
      004F27 E7               [12] 6365 	mov	a,@r1
      004F28 46               [12] 6366 	orl	a,@r0
      004F29 F6               [12] 6367 	mov	@r0,a
      004F2A 09               [12] 6368 	inc	r1
      004F2B E7               [12] 6369 	mov	a,@r1
      004F2C 08               [12] 6370 	inc	r0
      004F2D 46               [12] 6371 	orl	a,@r0
      004F2E F6               [12] 6372 	mov	@r0,a
      004F2F 09               [12] 6373 	inc	r1
      004F30 E7               [12] 6374 	mov	a,@r1
      004F31 08               [12] 6375 	inc	r0
      004F32 46               [12] 6376 	orl	a,@r0
      004F33 F6               [12] 6377 	mov	@r0,a
      004F34 09               [12] 6378 	inc	r1
      004F35 E7               [12] 6379 	mov	a,@r1
      004F36 08               [12] 6380 	inc	r0
      004F37 46               [12] 6381 	orl	a,@r0
      004F38 F6               [12] 6382 	mov	@r0,a
                                   6383 ;	calc.c:291: (void)stack_push(ctx->ps, d1);
      004F39 8A 82            [24] 6384 	mov	dpl,r2
      004F3B 8B 83            [24] 6385 	mov	dph,r3
      004F3D 8C F0            [24] 6386 	mov	b,r4
      004F3F 12 6F B8         [24] 6387 	lcall	__gptrget
      004F42 FA               [12] 6388 	mov	r2,a
      004F43 A3               [24] 6389 	inc	dptr
      004F44 12 6F B8         [24] 6390 	lcall	__gptrget
      004F47 FB               [12] 6391 	mov	r3,a
      004F48 A3               [24] 6392 	inc	dptr
      004F49 12 6F B8         [24] 6393 	lcall	__gptrget
      004F4C FC               [12] 6394 	mov	r4,a
      004F4D E5 08            [12] 6395 	mov	a,_bp
      004F4F 24 19            [12] 6396 	add	a,#0x19
      004F51 F8               [12] 6397 	mov	r0,a
      004F52 E6               [12] 6398 	mov	a,@r0
      004F53 C0 E0            [24] 6399 	push	acc
      004F55 08               [12] 6400 	inc	r0
      004F56 E6               [12] 6401 	mov	a,@r0
      004F57 C0 E0            [24] 6402 	push	acc
      004F59 08               [12] 6403 	inc	r0
      004F5A E6               [12] 6404 	mov	a,@r0
      004F5B C0 E0            [24] 6405 	push	acc
      004F5D 08               [12] 6406 	inc	r0
      004F5E E6               [12] 6407 	mov	a,@r0
      004F5F C0 E0            [24] 6408 	push	acc
      004F61 8A 82            [24] 6409 	mov	dpl,r2
      004F63 8B 83            [24] 6410 	mov	dph,r3
      004F65 8C F0            [24] 6411 	mov	b,r4
      004F67 12 26 BA         [24] 6412 	lcall	_stack_push
      004F6A E5 81            [12] 6413 	mov	a,sp
      004F6C 24 FC            [12] 6414 	add	a,#0xfc
      004F6E F5 81            [12] 6415 	mov	sp,a
                                   6416 ;	calc.c:293: break;
      004F70 02 56 DB         [24] 6417 	ljmp	00249$
                                   6418 ;	calc.c:294: case '^':
      004F73                       6419 00216$:
                                   6420 ;	calc.c:295: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004F73 E5 08            [12] 6421 	mov	a,_bp
      004F75 24 15            [12] 6422 	add	a,#0x15
      004F77 FF               [12] 6423 	mov	r7,a
      004F78 E5 08            [12] 6424 	mov	a,_bp
      004F7A 24 0E            [12] 6425 	add	a,#0x0e
      004F7C F8               [12] 6426 	mov	r0,a
      004F7D A6 07            [24] 6427 	mov	@r0,ar7
      004F7F 08               [12] 6428 	inc	r0
      004F80 76 00            [12] 6429 	mov	@r0,#0x00
      004F82 08               [12] 6430 	inc	r0
      004F83 76 40            [12] 6431 	mov	@r0,#0x40
      004F85 E5 08            [12] 6432 	mov	a,_bp
      004F87 24 12            [12] 6433 	add	a,#0x12
      004F89 F8               [12] 6434 	mov	r0,a
      004F8A 74 13            [12] 6435 	mov	a,#0x13
      004F8C 26               [12] 6436 	add	a,@r0
      004F8D FA               [12] 6437 	mov	r2,a
      004F8E 74 40            [12] 6438 	mov	a,#0x40
      004F90 08               [12] 6439 	inc	r0
      004F91 36               [12] 6440 	addc	a,@r0
      004F92 FB               [12] 6441 	mov	r3,a
      004F93 08               [12] 6442 	inc	r0
      004F94 86 04            [24] 6443 	mov	ar4,@r0
      004F96 8A 82            [24] 6444 	mov	dpl,r2
      004F98 8B 83            [24] 6445 	mov	dph,r3
      004F9A 8C F0            [24] 6446 	mov	b,r4
      004F9C 12 6F B8         [24] 6447 	lcall	__gptrget
      004F9F FD               [12] 6448 	mov	r5,a
      004FA0 A3               [24] 6449 	inc	dptr
      004FA1 12 6F B8         [24] 6450 	lcall	__gptrget
      004FA4 FE               [12] 6451 	mov	r6,a
      004FA5 A3               [24] 6452 	inc	dptr
      004FA6 12 6F B8         [24] 6453 	lcall	__gptrget
      004FA9 FF               [12] 6454 	mov	r7,a
      004FAA C0 04            [24] 6455 	push	ar4
      004FAC C0 03            [24] 6456 	push	ar3
      004FAE C0 02            [24] 6457 	push	ar2
      004FB0 E5 08            [12] 6458 	mov	a,_bp
      004FB2 24 0E            [12] 6459 	add	a,#0x0e
      004FB4 F8               [12] 6460 	mov	r0,a
      004FB5 E6               [12] 6461 	mov	a,@r0
      004FB6 C0 E0            [24] 6462 	push	acc
      004FB8 08               [12] 6463 	inc	r0
      004FB9 E6               [12] 6464 	mov	a,@r0
      004FBA C0 E0            [24] 6465 	push	acc
      004FBC 08               [12] 6466 	inc	r0
      004FBD E6               [12] 6467 	mov	a,@r0
      004FBE C0 E0            [24] 6468 	push	acc
      004FC0 8D 82            [24] 6469 	mov	dpl,r5
      004FC2 8E 83            [24] 6470 	mov	dph,r6
      004FC4 8F F0            [24] 6471 	mov	b,r7
      004FC6 12 27 B4         [24] 6472 	lcall	_stack_pop
      004FC9 AE 82            [24] 6473 	mov	r6,dpl
      004FCB AF 83            [24] 6474 	mov	r7,dph
      004FCD 15 81            [12] 6475 	dec	sp
      004FCF 15 81            [12] 6476 	dec	sp
      004FD1 15 81            [12] 6477 	dec	sp
      004FD3 D0 02            [24] 6478 	pop	ar2
      004FD5 D0 03            [24] 6479 	pop	ar3
      004FD7 D0 04            [24] 6480 	pop	ar4
      004FD9 EE               [12] 6481 	mov	a,r6
      004FDA 4F               [12] 6482 	orl	a,r7
      004FDB 70 25            [24] 6483 	jnz	00221$
      004FDD 7D 7F            [12] 6484 	mov	r5,#___str_9
      004FDF 7C 88            [12] 6485 	mov	r4,#(___str_9 >> 8)
      004FE1 7B 80            [12] 6486 	mov	r3,#0x80
                                   6487 ;	calc.c:51: return;
      004FE3                       6488 00474$:
                                   6489 ;	calc.c:49: for (; *s; s++) putchar(*s);
      004FE3 8D 82            [24] 6490 	mov	dpl,r5
      004FE5 8C 83            [24] 6491 	mov	dph,r4
      004FE7 8B F0            [24] 6492 	mov	b,r3
      004FE9 12 6F B8         [24] 6493 	lcall	__gptrget
      004FEC FF               [12] 6494 	mov	r7,a
      004FED 70 03            [24] 6495 	jnz	01378$
      004FEF 02 56 DB         [24] 6496 	ljmp	00249$
      004FF2                       6497 01378$:
      004FF2 7E 00            [12] 6498 	mov	r6,#0x00
      004FF4 8F 82            [24] 6499 	mov	dpl,r7
      004FF6 8E 83            [24] 6500 	mov	dph,r6
      004FF8 12 2C 1F         [24] 6501 	lcall	_putchar
      004FFB 0D               [12] 6502 	inc	r5
                                   6503 ;	calc.c:295: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004FFC BD 00 E4         [24] 6504 	cjne	r5,#0x00,00474$
      004FFF 0C               [12] 6505 	inc	r4
      005000 80 E1            [24] 6506 	sjmp	00474$
      005002                       6507 00221$:
                                   6508 ;	calc.c:296: else if (!stack_pop(ctx->ps, &d1)) {
      005002 E5 08            [12] 6509 	mov	a,_bp
      005004 24 19            [12] 6510 	add	a,#0x19
      005006 FF               [12] 6511 	mov	r7,a
      005007 E5 08            [12] 6512 	mov	a,_bp
      005009 24 0E            [12] 6513 	add	a,#0x0e
      00500B F8               [12] 6514 	mov	r0,a
      00500C A6 07            [24] 6515 	mov	@r0,ar7
      00500E 08               [12] 6516 	inc	r0
      00500F 76 00            [12] 6517 	mov	@r0,#0x00
      005011 08               [12] 6518 	inc	r0
      005012 76 40            [12] 6519 	mov	@r0,#0x40
      005014 8A 82            [24] 6520 	mov	dpl,r2
      005016 8B 83            [24] 6521 	mov	dph,r3
      005018 8C F0            [24] 6522 	mov	b,r4
      00501A 12 6F B8         [24] 6523 	lcall	__gptrget
      00501D FD               [12] 6524 	mov	r5,a
      00501E A3               [24] 6525 	inc	dptr
      00501F 12 6F B8         [24] 6526 	lcall	__gptrget
      005022 FE               [12] 6527 	mov	r6,a
      005023 A3               [24] 6528 	inc	dptr
      005024 12 6F B8         [24] 6529 	lcall	__gptrget
      005027 FF               [12] 6530 	mov	r7,a
      005028 C0 04            [24] 6531 	push	ar4
      00502A C0 03            [24] 6532 	push	ar3
      00502C C0 02            [24] 6533 	push	ar2
      00502E E5 08            [12] 6534 	mov	a,_bp
      005030 24 0E            [12] 6535 	add	a,#0x0e
      005032 F8               [12] 6536 	mov	r0,a
      005033 E6               [12] 6537 	mov	a,@r0
      005034 C0 E0            [24] 6538 	push	acc
      005036 08               [12] 6539 	inc	r0
      005037 E6               [12] 6540 	mov	a,@r0
      005038 C0 E0            [24] 6541 	push	acc
      00503A 08               [12] 6542 	inc	r0
      00503B E6               [12] 6543 	mov	a,@r0
      00503C C0 E0            [24] 6544 	push	acc
      00503E 8D 82            [24] 6545 	mov	dpl,r5
      005040 8E 83            [24] 6546 	mov	dph,r6
      005042 8F F0            [24] 6547 	mov	b,r7
      005044 12 27 B4         [24] 6548 	lcall	_stack_pop
      005047 AE 82            [24] 6549 	mov	r6,dpl
      005049 AF 83            [24] 6550 	mov	r7,dph
      00504B 15 81            [12] 6551 	dec	sp
      00504D 15 81            [12] 6552 	dec	sp
      00504F 15 81            [12] 6553 	dec	sp
      005051 D0 02            [24] 6554 	pop	ar2
      005053 D0 03            [24] 6555 	pop	ar3
      005055 D0 04            [24] 6556 	pop	ar4
      005057 EE               [12] 6557 	mov	a,r6
      005058 4F               [12] 6558 	orl	a,r7
      005059 70 5C            [24] 6559 	jnz	00218$
                                   6560 ;	calc.c:297: (void)stack_push(ctx->ps, d0);
      00505B 8A 82            [24] 6561 	mov	dpl,r2
      00505D 8B 83            [24] 6562 	mov	dph,r3
      00505F 8C F0            [24] 6563 	mov	b,r4
      005061 12 6F B8         [24] 6564 	lcall	__gptrget
      005064 FD               [12] 6565 	mov	r5,a
      005065 A3               [24] 6566 	inc	dptr
      005066 12 6F B8         [24] 6567 	lcall	__gptrget
      005069 FE               [12] 6568 	mov	r6,a
      00506A A3               [24] 6569 	inc	dptr
      00506B 12 6F B8         [24] 6570 	lcall	__gptrget
      00506E FF               [12] 6571 	mov	r7,a
      00506F E5 08            [12] 6572 	mov	a,_bp
      005071 24 15            [12] 6573 	add	a,#0x15
      005073 F8               [12] 6574 	mov	r0,a
      005074 E6               [12] 6575 	mov	a,@r0
      005075 C0 E0            [24] 6576 	push	acc
      005077 08               [12] 6577 	inc	r0
      005078 E6               [12] 6578 	mov	a,@r0
      005079 C0 E0            [24] 6579 	push	acc
      00507B 08               [12] 6580 	inc	r0
      00507C E6               [12] 6581 	mov	a,@r0
      00507D C0 E0            [24] 6582 	push	acc
      00507F 08               [12] 6583 	inc	r0
      005080 E6               [12] 6584 	mov	a,@r0
      005081 C0 E0            [24] 6585 	push	acc
      005083 8D 82            [24] 6586 	mov	dpl,r5
      005085 8E 83            [24] 6587 	mov	dph,r6
      005087 8F F0            [24] 6588 	mov	b,r7
      005089 12 26 BA         [24] 6589 	lcall	_stack_push
      00508C E5 81            [12] 6590 	mov	a,sp
      00508E 24 FC            [12] 6591 	add	a,#0xfc
      005090 F5 81            [12] 6592 	mov	sp,a
                                   6593 ;	calc.c:298: printstr("\r\nstack underflow\r\n");
      005092 7D 7F            [12] 6594 	mov	r5,#___str_9
      005094 7C 88            [12] 6595 	mov	r4,#(___str_9 >> 8)
      005096 7B 80            [12] 6596 	mov	r3,#0x80
                                   6597 ;	calc.c:51: return;
      005098                       6598 00477$:
                                   6599 ;	calc.c:49: for (; *s; s++) putchar(*s);
      005098 8D 82            [24] 6600 	mov	dpl,r5
      00509A 8C 83            [24] 6601 	mov	dph,r4
      00509C 8B F0            [24] 6602 	mov	b,r3
      00509E 12 6F B8         [24] 6603 	lcall	__gptrget
      0050A1 FF               [12] 6604 	mov	r7,a
      0050A2 70 03            [24] 6605 	jnz	01381$
      0050A4 02 56 DB         [24] 6606 	ljmp	00249$
      0050A7                       6607 01381$:
      0050A7 7E 00            [12] 6608 	mov	r6,#0x00
      0050A9 8F 82            [24] 6609 	mov	dpl,r7
      0050AB 8E 83            [24] 6610 	mov	dph,r6
      0050AD 12 2C 1F         [24] 6611 	lcall	_putchar
      0050B0 0D               [12] 6612 	inc	r5
                                   6613 ;	calc.c:298: printstr("\r\nstack underflow\r\n");
      0050B1 BD 00 E4         [24] 6614 	cjne	r5,#0x00,00477$
      0050B4 0C               [12] 6615 	inc	r4
      0050B5 80 E1            [24] 6616 	sjmp	00477$
      0050B7                       6617 00218$:
                                   6618 ;	calc.c:300: d1 ^= d0;
      0050B7 E5 08            [12] 6619 	mov	a,_bp
      0050B9 24 19            [12] 6620 	add	a,#0x19
      0050BB F8               [12] 6621 	mov	r0,a
      0050BC E5 08            [12] 6622 	mov	a,_bp
      0050BE 24 15            [12] 6623 	add	a,#0x15
      0050C0 F9               [12] 6624 	mov	r1,a
      0050C1 E7               [12] 6625 	mov	a,@r1
      0050C2 66               [12] 6626 	xrl	a,@r0
      0050C3 F6               [12] 6627 	mov	@r0,a
      0050C4 09               [12] 6628 	inc	r1
      0050C5 E7               [12] 6629 	mov	a,@r1
      0050C6 08               [12] 6630 	inc	r0
      0050C7 66               [12] 6631 	xrl	a,@r0
      0050C8 F6               [12] 6632 	mov	@r0,a
      0050C9 09               [12] 6633 	inc	r1
      0050CA E7               [12] 6634 	mov	a,@r1
      0050CB 08               [12] 6635 	inc	r0
      0050CC 66               [12] 6636 	xrl	a,@r0
      0050CD F6               [12] 6637 	mov	@r0,a
      0050CE 09               [12] 6638 	inc	r1
      0050CF E7               [12] 6639 	mov	a,@r1
      0050D0 08               [12] 6640 	inc	r0
      0050D1 66               [12] 6641 	xrl	a,@r0
      0050D2 F6               [12] 6642 	mov	@r0,a
                                   6643 ;	calc.c:301: (void)stack_push(ctx->ps, d1);
      0050D3 8A 82            [24] 6644 	mov	dpl,r2
      0050D5 8B 83            [24] 6645 	mov	dph,r3
      0050D7 8C F0            [24] 6646 	mov	b,r4
      0050D9 12 6F B8         [24] 6647 	lcall	__gptrget
      0050DC FA               [12] 6648 	mov	r2,a
      0050DD A3               [24] 6649 	inc	dptr
      0050DE 12 6F B8         [24] 6650 	lcall	__gptrget
      0050E1 FB               [12] 6651 	mov	r3,a
      0050E2 A3               [24] 6652 	inc	dptr
      0050E3 12 6F B8         [24] 6653 	lcall	__gptrget
      0050E6 FC               [12] 6654 	mov	r4,a
      0050E7 E5 08            [12] 6655 	mov	a,_bp
      0050E9 24 19            [12] 6656 	add	a,#0x19
      0050EB F8               [12] 6657 	mov	r0,a
      0050EC E6               [12] 6658 	mov	a,@r0
      0050ED C0 E0            [24] 6659 	push	acc
      0050EF 08               [12] 6660 	inc	r0
      0050F0 E6               [12] 6661 	mov	a,@r0
      0050F1 C0 E0            [24] 6662 	push	acc
      0050F3 08               [12] 6663 	inc	r0
      0050F4 E6               [12] 6664 	mov	a,@r0
      0050F5 C0 E0            [24] 6665 	push	acc
      0050F7 08               [12] 6666 	inc	r0
      0050F8 E6               [12] 6667 	mov	a,@r0
      0050F9 C0 E0            [24] 6668 	push	acc
      0050FB 8A 82            [24] 6669 	mov	dpl,r2
      0050FD 8B 83            [24] 6670 	mov	dph,r3
      0050FF 8C F0            [24] 6671 	mov	b,r4
      005101 12 26 BA         [24] 6672 	lcall	_stack_push
      005104 E5 81            [12] 6673 	mov	a,sp
      005106 24 FC            [12] 6674 	add	a,#0xfc
      005108 F5 81            [12] 6675 	mov	sp,a
                                   6676 ;	calc.c:303: break;
      00510A 02 56 DB         [24] 6677 	ljmp	00249$
                                   6678 ;	calc.c:304: case '>':
      00510D                       6679 00223$:
                                   6680 ;	calc.c:305: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      00510D E5 08            [12] 6681 	mov	a,_bp
      00510F 24 15            [12] 6682 	add	a,#0x15
      005111 FC               [12] 6683 	mov	r4,a
      005112 7B 00            [12] 6684 	mov	r3,#0x00
      005114 7A 40            [12] 6685 	mov	r2,#0x40
      005116 E5 08            [12] 6686 	mov	a,_bp
      005118 24 12            [12] 6687 	add	a,#0x12
      00511A F8               [12] 6688 	mov	r0,a
      00511B E5 08            [12] 6689 	mov	a,_bp
      00511D 24 0B            [12] 6690 	add	a,#0x0b
      00511F F9               [12] 6691 	mov	r1,a
      005120 74 13            [12] 6692 	mov	a,#0x13
      005122 26               [12] 6693 	add	a,@r0
      005123 F7               [12] 6694 	mov	@r1,a
      005124 74 40            [12] 6695 	mov	a,#0x40
      005126 08               [12] 6696 	inc	r0
      005127 36               [12] 6697 	addc	a,@r0
      005128 09               [12] 6698 	inc	r1
      005129 F7               [12] 6699 	mov	@r1,a
      00512A 08               [12] 6700 	inc	r0
      00512B 09               [12] 6701 	inc	r1
      00512C E6               [12] 6702 	mov	a,@r0
      00512D F7               [12] 6703 	mov	@r1,a
      00512E E5 08            [12] 6704 	mov	a,_bp
      005130 24 0B            [12] 6705 	add	a,#0x0b
      005132 F8               [12] 6706 	mov	r0,a
      005133 86 82            [24] 6707 	mov	dpl,@r0
      005135 08               [12] 6708 	inc	r0
      005136 86 83            [24] 6709 	mov	dph,@r0
      005138 08               [12] 6710 	inc	r0
      005139 86 F0            [24] 6711 	mov	b,@r0
      00513B 12 6F B8         [24] 6712 	lcall	__gptrget
      00513E FD               [12] 6713 	mov	r5,a
      00513F A3               [24] 6714 	inc	dptr
      005140 12 6F B8         [24] 6715 	lcall	__gptrget
      005143 FE               [12] 6716 	mov	r6,a
      005144 A3               [24] 6717 	inc	dptr
      005145 12 6F B8         [24] 6718 	lcall	__gptrget
      005148 FF               [12] 6719 	mov	r7,a
      005149 C0 04            [24] 6720 	push	ar4
      00514B C0 03            [24] 6721 	push	ar3
      00514D C0 02            [24] 6722 	push	ar2
      00514F 8D 82            [24] 6723 	mov	dpl,r5
      005151 8E 83            [24] 6724 	mov	dph,r6
      005153 8F F0            [24] 6725 	mov	b,r7
      005155 12 27 B4         [24] 6726 	lcall	_stack_pop
      005158 AE 82            [24] 6727 	mov	r6,dpl
      00515A AF 83            [24] 6728 	mov	r7,dph
      00515C 15 81            [12] 6729 	dec	sp
      00515E 15 81            [12] 6730 	dec	sp
      005160 15 81            [12] 6731 	dec	sp
      005162 EE               [12] 6732 	mov	a,r6
      005163 4F               [12] 6733 	orl	a,r7
      005164 70 25            [24] 6734 	jnz	00228$
      005166 7D 7F            [12] 6735 	mov	r5,#___str_9
      005168 7C 88            [12] 6736 	mov	r4,#(___str_9 >> 8)
      00516A 7B 80            [12] 6737 	mov	r3,#0x80
                                   6738 ;	calc.c:51: return;
      00516C                       6739 00480$:
                                   6740 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00516C 8D 82            [24] 6741 	mov	dpl,r5
      00516E 8C 83            [24] 6742 	mov	dph,r4
      005170 8B F0            [24] 6743 	mov	b,r3
      005172 12 6F B8         [24] 6744 	lcall	__gptrget
      005175 FF               [12] 6745 	mov	r7,a
      005176 70 03            [24] 6746 	jnz	01384$
      005178 02 56 DB         [24] 6747 	ljmp	00249$
      00517B                       6748 01384$:
      00517B 7E 00            [12] 6749 	mov	r6,#0x00
      00517D 8F 82            [24] 6750 	mov	dpl,r7
      00517F 8E 83            [24] 6751 	mov	dph,r6
      005181 12 2C 1F         [24] 6752 	lcall	_putchar
      005184 0D               [12] 6753 	inc	r5
                                   6754 ;	calc.c:305: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      005185 BD 00 E4         [24] 6755 	cjne	r5,#0x00,00480$
      005188 0C               [12] 6756 	inc	r4
      005189 80 E1            [24] 6757 	sjmp	00480$
      00518B                       6758 00228$:
                                   6759 ;	calc.c:306: else if (!stack_pop(ctx->ps, &d1)) {
      00518B E5 08            [12] 6760 	mov	a,_bp
      00518D 24 19            [12] 6761 	add	a,#0x19
      00518F FC               [12] 6762 	mov	r4,a
      005190 7B 00            [12] 6763 	mov	r3,#0x00
      005192 7A 40            [12] 6764 	mov	r2,#0x40
      005194 E5 08            [12] 6765 	mov	a,_bp
      005196 24 0B            [12] 6766 	add	a,#0x0b
      005198 F8               [12] 6767 	mov	r0,a
      005199 86 82            [24] 6768 	mov	dpl,@r0
      00519B 08               [12] 6769 	inc	r0
      00519C 86 83            [24] 6770 	mov	dph,@r0
      00519E 08               [12] 6771 	inc	r0
      00519F 86 F0            [24] 6772 	mov	b,@r0
      0051A1 12 6F B8         [24] 6773 	lcall	__gptrget
      0051A4 FD               [12] 6774 	mov	r5,a
      0051A5 A3               [24] 6775 	inc	dptr
      0051A6 12 6F B8         [24] 6776 	lcall	__gptrget
      0051A9 FE               [12] 6777 	mov	r6,a
      0051AA A3               [24] 6778 	inc	dptr
      0051AB 12 6F B8         [24] 6779 	lcall	__gptrget
      0051AE FF               [12] 6780 	mov	r7,a
      0051AF C0 04            [24] 6781 	push	ar4
      0051B1 C0 03            [24] 6782 	push	ar3
      0051B3 C0 02            [24] 6783 	push	ar2
      0051B5 8D 82            [24] 6784 	mov	dpl,r5
      0051B7 8E 83            [24] 6785 	mov	dph,r6
      0051B9 8F F0            [24] 6786 	mov	b,r7
      0051BB 12 27 B4         [24] 6787 	lcall	_stack_pop
      0051BE AE 82            [24] 6788 	mov	r6,dpl
      0051C0 AF 83            [24] 6789 	mov	r7,dph
      0051C2 15 81            [12] 6790 	dec	sp
      0051C4 15 81            [12] 6791 	dec	sp
      0051C6 15 81            [12] 6792 	dec	sp
      0051C8 EE               [12] 6793 	mov	a,r6
      0051C9 4F               [12] 6794 	orl	a,r7
      0051CA 70 63            [24] 6795 	jnz	00225$
                                   6796 ;	calc.c:307: (void)stack_push(ctx->ps, d0);
      0051CC E5 08            [12] 6797 	mov	a,_bp
      0051CE 24 0B            [12] 6798 	add	a,#0x0b
      0051D0 F8               [12] 6799 	mov	r0,a
      0051D1 86 82            [24] 6800 	mov	dpl,@r0
      0051D3 08               [12] 6801 	inc	r0
      0051D4 86 83            [24] 6802 	mov	dph,@r0
      0051D6 08               [12] 6803 	inc	r0
      0051D7 86 F0            [24] 6804 	mov	b,@r0
      0051D9 12 6F B8         [24] 6805 	lcall	__gptrget
      0051DC FD               [12] 6806 	mov	r5,a
      0051DD A3               [24] 6807 	inc	dptr
      0051DE 12 6F B8         [24] 6808 	lcall	__gptrget
      0051E1 FE               [12] 6809 	mov	r6,a
      0051E2 A3               [24] 6810 	inc	dptr
      0051E3 12 6F B8         [24] 6811 	lcall	__gptrget
      0051E6 FF               [12] 6812 	mov	r7,a
      0051E7 E5 08            [12] 6813 	mov	a,_bp
      0051E9 24 15            [12] 6814 	add	a,#0x15
      0051EB F8               [12] 6815 	mov	r0,a
      0051EC E6               [12] 6816 	mov	a,@r0
      0051ED C0 E0            [24] 6817 	push	acc
      0051EF 08               [12] 6818 	inc	r0
      0051F0 E6               [12] 6819 	mov	a,@r0
      0051F1 C0 E0            [24] 6820 	push	acc
      0051F3 08               [12] 6821 	inc	r0
      0051F4 E6               [12] 6822 	mov	a,@r0
      0051F5 C0 E0            [24] 6823 	push	acc
      0051F7 08               [12] 6824 	inc	r0
      0051F8 E6               [12] 6825 	mov	a,@r0
      0051F9 C0 E0            [24] 6826 	push	acc
      0051FB 8D 82            [24] 6827 	mov	dpl,r5
      0051FD 8E 83            [24] 6828 	mov	dph,r6
      0051FF 8F F0            [24] 6829 	mov	b,r7
      005201 12 26 BA         [24] 6830 	lcall	_stack_push
      005204 E5 81            [12] 6831 	mov	a,sp
      005206 24 FC            [12] 6832 	add	a,#0xfc
      005208 F5 81            [12] 6833 	mov	sp,a
                                   6834 ;	calc.c:308: printstr("\r\nstack underflow\r\n");
      00520A 7D 7F            [12] 6835 	mov	r5,#___str_9
      00520C 7C 88            [12] 6836 	mov	r4,#(___str_9 >> 8)
      00520E 7B 80            [12] 6837 	mov	r3,#0x80
                                   6838 ;	calc.c:51: return;
      005210                       6839 00483$:
                                   6840 ;	calc.c:49: for (; *s; s++) putchar(*s);
      005210 8D 82            [24] 6841 	mov	dpl,r5
      005212 8C 83            [24] 6842 	mov	dph,r4
      005214 8B F0            [24] 6843 	mov	b,r3
      005216 12 6F B8         [24] 6844 	lcall	__gptrget
      005219 FF               [12] 6845 	mov	r7,a
      00521A 70 03            [24] 6846 	jnz	01387$
      00521C 02 56 DB         [24] 6847 	ljmp	00249$
      00521F                       6848 01387$:
      00521F 7E 00            [12] 6849 	mov	r6,#0x00
      005221 8F 82            [24] 6850 	mov	dpl,r7
      005223 8E 83            [24] 6851 	mov	dph,r6
      005225 12 2C 1F         [24] 6852 	lcall	_putchar
      005228 0D               [12] 6853 	inc	r5
                                   6854 ;	calc.c:308: printstr("\r\nstack underflow\r\n");
      005229 BD 00 E4         [24] 6855 	cjne	r5,#0x00,00483$
      00522C 0C               [12] 6856 	inc	r4
      00522D 80 E1            [24] 6857 	sjmp	00483$
      00522F                       6858 00225$:
                                   6859 ;	calc.c:310: d1 = (unsigned long)d1 >> d0;
      00522F E5 08            [12] 6860 	mov	a,_bp
      005231 24 19            [12] 6861 	add	a,#0x19
      005233 F8               [12] 6862 	mov	r0,a
      005234 86 04            [24] 6863 	mov	ar4,@r0
      005236 08               [12] 6864 	inc	r0
      005237 86 05            [24] 6865 	mov	ar5,@r0
      005239 08               [12] 6866 	inc	r0
      00523A 86 06            [24] 6867 	mov	ar6,@r0
      00523C 08               [12] 6868 	inc	r0
      00523D 86 07            [24] 6869 	mov	ar7,@r0
      00523F E5 08            [12] 6870 	mov	a,_bp
      005241 24 15            [12] 6871 	add	a,#0x15
      005243 F8               [12] 6872 	mov	r0,a
      005244 86 F0            [24] 6873 	mov	b,@r0
      005246 05 F0            [12] 6874 	inc	b
      005248 80 0D            [24] 6875 	sjmp	01390$
      00524A                       6876 01389$:
      00524A C3               [12] 6877 	clr	c
      00524B EF               [12] 6878 	mov	a,r7
      00524C 13               [12] 6879 	rrc	a
      00524D FF               [12] 6880 	mov	r7,a
      00524E EE               [12] 6881 	mov	a,r6
      00524F 13               [12] 6882 	rrc	a
      005250 FE               [12] 6883 	mov	r6,a
      005251 ED               [12] 6884 	mov	a,r5
      005252 13               [12] 6885 	rrc	a
      005253 FD               [12] 6886 	mov	r5,a
      005254 EC               [12] 6887 	mov	a,r4
      005255 13               [12] 6888 	rrc	a
      005256 FC               [12] 6889 	mov	r4,a
      005257                       6890 01390$:
      005257 D5 F0 F0         [24] 6891 	djnz	b,01389$
      00525A E5 08            [12] 6892 	mov	a,_bp
      00525C 24 19            [12] 6893 	add	a,#0x19
      00525E F8               [12] 6894 	mov	r0,a
      00525F A6 04            [24] 6895 	mov	@r0,ar4
      005261 08               [12] 6896 	inc	r0
      005262 A6 05            [24] 6897 	mov	@r0,ar5
      005264 08               [12] 6898 	inc	r0
      005265 A6 06            [24] 6899 	mov	@r0,ar6
      005267 08               [12] 6900 	inc	r0
      005268 A6 07            [24] 6901 	mov	@r0,ar7
                                   6902 ;	calc.c:311: (void)stack_push(ctx->ps, d1);
      00526A E5 08            [12] 6903 	mov	a,_bp
      00526C 24 0B            [12] 6904 	add	a,#0x0b
      00526E F8               [12] 6905 	mov	r0,a
      00526F 86 82            [24] 6906 	mov	dpl,@r0
      005271 08               [12] 6907 	inc	r0
      005272 86 83            [24] 6908 	mov	dph,@r0
      005274 08               [12] 6909 	inc	r0
      005275 86 F0            [24] 6910 	mov	b,@r0
      005277 12 6F B8         [24] 6911 	lcall	__gptrget
      00527A FD               [12] 6912 	mov	r5,a
      00527B A3               [24] 6913 	inc	dptr
      00527C 12 6F B8         [24] 6914 	lcall	__gptrget
      00527F FE               [12] 6915 	mov	r6,a
      005280 A3               [24] 6916 	inc	dptr
      005281 12 6F B8         [24] 6917 	lcall	__gptrget
      005284 FF               [12] 6918 	mov	r7,a
      005285 E5 08            [12] 6919 	mov	a,_bp
      005287 24 19            [12] 6920 	add	a,#0x19
      005289 F8               [12] 6921 	mov	r0,a
      00528A E6               [12] 6922 	mov	a,@r0
      00528B C0 E0            [24] 6923 	push	acc
      00528D 08               [12] 6924 	inc	r0
      00528E E6               [12] 6925 	mov	a,@r0
      00528F C0 E0            [24] 6926 	push	acc
      005291 08               [12] 6927 	inc	r0
      005292 E6               [12] 6928 	mov	a,@r0
      005293 C0 E0            [24] 6929 	push	acc
      005295 08               [12] 6930 	inc	r0
      005296 E6               [12] 6931 	mov	a,@r0
      005297 C0 E0            [24] 6932 	push	acc
      005299 8D 82            [24] 6933 	mov	dpl,r5
      00529B 8E 83            [24] 6934 	mov	dph,r6
      00529D 8F F0            [24] 6935 	mov	b,r7
      00529F 12 26 BA         [24] 6936 	lcall	_stack_push
      0052A2 E5 81            [12] 6937 	mov	a,sp
      0052A4 24 FC            [12] 6938 	add	a,#0xfc
      0052A6 F5 81            [12] 6939 	mov	sp,a
                                   6940 ;	calc.c:313: break;
      0052A8 02 56 DB         [24] 6941 	ljmp	00249$
                                   6942 ;	calc.c:314: case ']':
      0052AB                       6943 00230$:
                                   6944 ;	calc.c:315: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0052AB E5 08            [12] 6945 	mov	a,_bp
      0052AD 24 15            [12] 6946 	add	a,#0x15
      0052AF FF               [12] 6947 	mov	r7,a
      0052B0 E5 08            [12] 6948 	mov	a,_bp
      0052B2 24 0E            [12] 6949 	add	a,#0x0e
      0052B4 F8               [12] 6950 	mov	r0,a
      0052B5 A6 07            [24] 6951 	mov	@r0,ar7
      0052B7 08               [12] 6952 	inc	r0
      0052B8 76 00            [12] 6953 	mov	@r0,#0x00
      0052BA 08               [12] 6954 	inc	r0
      0052BB 76 40            [12] 6955 	mov	@r0,#0x40
      0052BD E5 08            [12] 6956 	mov	a,_bp
      0052BF 24 12            [12] 6957 	add	a,#0x12
      0052C1 F8               [12] 6958 	mov	r0,a
      0052C2 74 13            [12] 6959 	mov	a,#0x13
      0052C4 26               [12] 6960 	add	a,@r0
      0052C5 FA               [12] 6961 	mov	r2,a
      0052C6 74 40            [12] 6962 	mov	a,#0x40
      0052C8 08               [12] 6963 	inc	r0
      0052C9 36               [12] 6964 	addc	a,@r0
      0052CA FB               [12] 6965 	mov	r3,a
      0052CB 08               [12] 6966 	inc	r0
      0052CC 86 04            [24] 6967 	mov	ar4,@r0
      0052CE 8A 82            [24] 6968 	mov	dpl,r2
      0052D0 8B 83            [24] 6969 	mov	dph,r3
      0052D2 8C F0            [24] 6970 	mov	b,r4
      0052D4 12 6F B8         [24] 6971 	lcall	__gptrget
      0052D7 FD               [12] 6972 	mov	r5,a
      0052D8 A3               [24] 6973 	inc	dptr
      0052D9 12 6F B8         [24] 6974 	lcall	__gptrget
      0052DC FE               [12] 6975 	mov	r6,a
      0052DD A3               [24] 6976 	inc	dptr
      0052DE 12 6F B8         [24] 6977 	lcall	__gptrget
      0052E1 FF               [12] 6978 	mov	r7,a
      0052E2 C0 04            [24] 6979 	push	ar4
      0052E4 C0 03            [24] 6980 	push	ar3
      0052E6 C0 02            [24] 6981 	push	ar2
      0052E8 E5 08            [12] 6982 	mov	a,_bp
      0052EA 24 0E            [12] 6983 	add	a,#0x0e
      0052EC F8               [12] 6984 	mov	r0,a
      0052ED E6               [12] 6985 	mov	a,@r0
      0052EE C0 E0            [24] 6986 	push	acc
      0052F0 08               [12] 6987 	inc	r0
      0052F1 E6               [12] 6988 	mov	a,@r0
      0052F2 C0 E0            [24] 6989 	push	acc
      0052F4 08               [12] 6990 	inc	r0
      0052F5 E6               [12] 6991 	mov	a,@r0
      0052F6 C0 E0            [24] 6992 	push	acc
      0052F8 8D 82            [24] 6993 	mov	dpl,r5
      0052FA 8E 83            [24] 6994 	mov	dph,r6
      0052FC 8F F0            [24] 6995 	mov	b,r7
      0052FE 12 27 B4         [24] 6996 	lcall	_stack_pop
      005301 AE 82            [24] 6997 	mov	r6,dpl
      005303 AF 83            [24] 6998 	mov	r7,dph
      005305 15 81            [12] 6999 	dec	sp
      005307 15 81            [12] 7000 	dec	sp
      005309 15 81            [12] 7001 	dec	sp
      00530B D0 02            [24] 7002 	pop	ar2
      00530D D0 03            [24] 7003 	pop	ar3
      00530F D0 04            [24] 7004 	pop	ar4
      005311 EE               [12] 7005 	mov	a,r6
      005312 4F               [12] 7006 	orl	a,r7
      005313 70 25            [24] 7007 	jnz	00235$
      005315 7D 7F            [12] 7008 	mov	r5,#___str_9
      005317 7C 88            [12] 7009 	mov	r4,#(___str_9 >> 8)
      005319 7B 80            [12] 7010 	mov	r3,#0x80
                                   7011 ;	calc.c:51: return;
      00531B                       7012 00486$:
                                   7013 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00531B 8D 82            [24] 7014 	mov	dpl,r5
      00531D 8C 83            [24] 7015 	mov	dph,r4
      00531F 8B F0            [24] 7016 	mov	b,r3
      005321 12 6F B8         [24] 7017 	lcall	__gptrget
      005324 FF               [12] 7018 	mov	r7,a
      005325 70 03            [24] 7019 	jnz	01392$
      005327 02 56 DB         [24] 7020 	ljmp	00249$
      00532A                       7021 01392$:
      00532A 7E 00            [12] 7022 	mov	r6,#0x00
      00532C 8F 82            [24] 7023 	mov	dpl,r7
      00532E 8E 83            [24] 7024 	mov	dph,r6
      005330 12 2C 1F         [24] 7025 	lcall	_putchar
      005333 0D               [12] 7026 	inc	r5
                                   7027 ;	calc.c:315: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      005334 BD 00 E4         [24] 7028 	cjne	r5,#0x00,00486$
      005337 0C               [12] 7029 	inc	r4
      005338 80 E1            [24] 7030 	sjmp	00486$
      00533A                       7031 00235$:
                                   7032 ;	calc.c:316: else if (!stack_pop(ctx->ps, &d1)) {
      00533A E5 08            [12] 7033 	mov	a,_bp
      00533C 24 19            [12] 7034 	add	a,#0x19
      00533E FF               [12] 7035 	mov	r7,a
      00533F E5 08            [12] 7036 	mov	a,_bp
      005341 24 0E            [12] 7037 	add	a,#0x0e
      005343 F8               [12] 7038 	mov	r0,a
      005344 A6 07            [24] 7039 	mov	@r0,ar7
      005346 08               [12] 7040 	inc	r0
      005347 76 00            [12] 7041 	mov	@r0,#0x00
      005349 08               [12] 7042 	inc	r0
      00534A 76 40            [12] 7043 	mov	@r0,#0x40
      00534C 8A 82            [24] 7044 	mov	dpl,r2
      00534E 8B 83            [24] 7045 	mov	dph,r3
      005350 8C F0            [24] 7046 	mov	b,r4
      005352 12 6F B8         [24] 7047 	lcall	__gptrget
      005355 FD               [12] 7048 	mov	r5,a
      005356 A3               [24] 7049 	inc	dptr
      005357 12 6F B8         [24] 7050 	lcall	__gptrget
      00535A FE               [12] 7051 	mov	r6,a
      00535B A3               [24] 7052 	inc	dptr
      00535C 12 6F B8         [24] 7053 	lcall	__gptrget
      00535F FF               [12] 7054 	mov	r7,a
      005360 C0 04            [24] 7055 	push	ar4
      005362 C0 03            [24] 7056 	push	ar3
      005364 C0 02            [24] 7057 	push	ar2
      005366 E5 08            [12] 7058 	mov	a,_bp
      005368 24 0E            [12] 7059 	add	a,#0x0e
      00536A F8               [12] 7060 	mov	r0,a
      00536B E6               [12] 7061 	mov	a,@r0
      00536C C0 E0            [24] 7062 	push	acc
      00536E 08               [12] 7063 	inc	r0
      00536F E6               [12] 7064 	mov	a,@r0
      005370 C0 E0            [24] 7065 	push	acc
      005372 08               [12] 7066 	inc	r0
      005373 E6               [12] 7067 	mov	a,@r0
      005374 C0 E0            [24] 7068 	push	acc
      005376 8D 82            [24] 7069 	mov	dpl,r5
      005378 8E 83            [24] 7070 	mov	dph,r6
      00537A 8F F0            [24] 7071 	mov	b,r7
      00537C 12 27 B4         [24] 7072 	lcall	_stack_pop
      00537F AE 82            [24] 7073 	mov	r6,dpl
      005381 AF 83            [24] 7074 	mov	r7,dph
      005383 15 81            [12] 7075 	dec	sp
      005385 15 81            [12] 7076 	dec	sp
      005387 15 81            [12] 7077 	dec	sp
      005389 D0 02            [24] 7078 	pop	ar2
      00538B D0 03            [24] 7079 	pop	ar3
      00538D D0 04            [24] 7080 	pop	ar4
      00538F EE               [12] 7081 	mov	a,r6
      005390 4F               [12] 7082 	orl	a,r7
      005391 70 5C            [24] 7083 	jnz	00232$
                                   7084 ;	calc.c:317: (void)stack_push(ctx->ps, d0);
      005393 8A 82            [24] 7085 	mov	dpl,r2
      005395 8B 83            [24] 7086 	mov	dph,r3
      005397 8C F0            [24] 7087 	mov	b,r4
      005399 12 6F B8         [24] 7088 	lcall	__gptrget
      00539C FD               [12] 7089 	mov	r5,a
      00539D A3               [24] 7090 	inc	dptr
      00539E 12 6F B8         [24] 7091 	lcall	__gptrget
      0053A1 FE               [12] 7092 	mov	r6,a
      0053A2 A3               [24] 7093 	inc	dptr
      0053A3 12 6F B8         [24] 7094 	lcall	__gptrget
      0053A6 FF               [12] 7095 	mov	r7,a
      0053A7 E5 08            [12] 7096 	mov	a,_bp
      0053A9 24 15            [12] 7097 	add	a,#0x15
      0053AB F8               [12] 7098 	mov	r0,a
      0053AC E6               [12] 7099 	mov	a,@r0
      0053AD C0 E0            [24] 7100 	push	acc
      0053AF 08               [12] 7101 	inc	r0
      0053B0 E6               [12] 7102 	mov	a,@r0
      0053B1 C0 E0            [24] 7103 	push	acc
      0053B3 08               [12] 7104 	inc	r0
      0053B4 E6               [12] 7105 	mov	a,@r0
      0053B5 C0 E0            [24] 7106 	push	acc
      0053B7 08               [12] 7107 	inc	r0
      0053B8 E6               [12] 7108 	mov	a,@r0
      0053B9 C0 E0            [24] 7109 	push	acc
      0053BB 8D 82            [24] 7110 	mov	dpl,r5
      0053BD 8E 83            [24] 7111 	mov	dph,r6
      0053BF 8F F0            [24] 7112 	mov	b,r7
      0053C1 12 26 BA         [24] 7113 	lcall	_stack_push
      0053C4 E5 81            [12] 7114 	mov	a,sp
      0053C6 24 FC            [12] 7115 	add	a,#0xfc
      0053C8 F5 81            [12] 7116 	mov	sp,a
                                   7117 ;	calc.c:318: printstr("\r\nstack underflow\r\n");
      0053CA 7D 7F            [12] 7118 	mov	r5,#___str_9
      0053CC 7C 88            [12] 7119 	mov	r4,#(___str_9 >> 8)
      0053CE 7B 80            [12] 7120 	mov	r3,#0x80
                                   7121 ;	calc.c:51: return;
      0053D0                       7122 00489$:
                                   7123 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0053D0 8D 82            [24] 7124 	mov	dpl,r5
      0053D2 8C 83            [24] 7125 	mov	dph,r4
      0053D4 8B F0            [24] 7126 	mov	b,r3
      0053D6 12 6F B8         [24] 7127 	lcall	__gptrget
      0053D9 FF               [12] 7128 	mov	r7,a
      0053DA 70 03            [24] 7129 	jnz	01395$
      0053DC 02 56 DB         [24] 7130 	ljmp	00249$
      0053DF                       7131 01395$:
      0053DF 7E 00            [12] 7132 	mov	r6,#0x00
      0053E1 8F 82            [24] 7133 	mov	dpl,r7
      0053E3 8E 83            [24] 7134 	mov	dph,r6
      0053E5 12 2C 1F         [24] 7135 	lcall	_putchar
      0053E8 0D               [12] 7136 	inc	r5
                                   7137 ;	calc.c:318: printstr("\r\nstack underflow\r\n");
      0053E9 BD 00 E4         [24] 7138 	cjne	r5,#0x00,00489$
      0053EC 0C               [12] 7139 	inc	r4
      0053ED 80 E1            [24] 7140 	sjmp	00489$
      0053EF                       7141 00232$:
                                   7142 ;	calc.c:320: d1 >>= d0;
      0053EF E5 08            [12] 7143 	mov	a,_bp
      0053F1 24 15            [12] 7144 	add	a,#0x15
      0053F3 F8               [12] 7145 	mov	r0,a
      0053F4 86 F0            [24] 7146 	mov	b,@r0
      0053F6 05 F0            [12] 7147 	inc	b
      0053F8 E5 08            [12] 7148 	mov	a,_bp
      0053FA 24 19            [12] 7149 	add	a,#0x19
      0053FC F8               [12] 7150 	mov	r0,a
      0053FD 08               [12] 7151 	inc	r0
      0053FE 08               [12] 7152 	inc	r0
      0053FF 08               [12] 7153 	inc	r0
      005400 E6               [12] 7154 	mov	a,@r0
      005401 33               [12] 7155 	rlc	a
      005402 92 D2            [24] 7156 	mov	ov,c
      005404 18               [12] 7157 	dec	r0
      005405 18               [12] 7158 	dec	r0
      005406 18               [12] 7159 	dec	r0
      005407 80 14            [24] 7160 	sjmp	01398$
      005409                       7161 01397$:
      005409 A2 D2            [12] 7162 	mov	c,ov
      00540B 08               [12] 7163 	inc	r0
      00540C 08               [12] 7164 	inc	r0
      00540D 08               [12] 7165 	inc	r0
      00540E E6               [12] 7166 	mov	a,@r0
      00540F 13               [12] 7167 	rrc	a
      005410 F6               [12] 7168 	mov	@r0,a
      005411 18               [12] 7169 	dec	r0
      005412 E6               [12] 7170 	mov	a,@r0
      005413 13               [12] 7171 	rrc	a
      005414 F6               [12] 7172 	mov	@r0,a
      005415 18               [12] 7173 	dec	r0
      005416 E6               [12] 7174 	mov	a,@r0
      005417 13               [12] 7175 	rrc	a
      005418 F6               [12] 7176 	mov	@r0,a
      005419 18               [12] 7177 	dec	r0
      00541A E6               [12] 7178 	mov	a,@r0
      00541B 13               [12] 7179 	rrc	a
      00541C F6               [12] 7180 	mov	@r0,a
      00541D                       7181 01398$:
      00541D D5 F0 E9         [24] 7182 	djnz	b,01397$
                                   7183 ;	calc.c:321: (void)stack_push(ctx->ps, d1);
      005420 8A 82            [24] 7184 	mov	dpl,r2
      005422 8B 83            [24] 7185 	mov	dph,r3
      005424 8C F0            [24] 7186 	mov	b,r4
      005426 12 6F B8         [24] 7187 	lcall	__gptrget
      005429 FA               [12] 7188 	mov	r2,a
      00542A A3               [24] 7189 	inc	dptr
      00542B 12 6F B8         [24] 7190 	lcall	__gptrget
      00542E FB               [12] 7191 	mov	r3,a
      00542F A3               [24] 7192 	inc	dptr
      005430 12 6F B8         [24] 7193 	lcall	__gptrget
      005433 FC               [12] 7194 	mov	r4,a
      005434 E5 08            [12] 7195 	mov	a,_bp
      005436 24 19            [12] 7196 	add	a,#0x19
      005438 F8               [12] 7197 	mov	r0,a
      005439 E6               [12] 7198 	mov	a,@r0
      00543A C0 E0            [24] 7199 	push	acc
      00543C 08               [12] 7200 	inc	r0
      00543D E6               [12] 7201 	mov	a,@r0
      00543E C0 E0            [24] 7202 	push	acc
      005440 08               [12] 7203 	inc	r0
      005441 E6               [12] 7204 	mov	a,@r0
      005442 C0 E0            [24] 7205 	push	acc
      005444 08               [12] 7206 	inc	r0
      005445 E6               [12] 7207 	mov	a,@r0
      005446 C0 E0            [24] 7208 	push	acc
      005448 8A 82            [24] 7209 	mov	dpl,r2
      00544A 8B 83            [24] 7210 	mov	dph,r3
      00544C 8C F0            [24] 7211 	mov	b,r4
      00544E 12 26 BA         [24] 7212 	lcall	_stack_push
      005451 E5 81            [12] 7213 	mov	a,sp
      005453 24 FC            [12] 7214 	add	a,#0xfc
      005455 F5 81            [12] 7215 	mov	sp,a
                                   7216 ;	calc.c:323: break;
      005457 02 56 DB         [24] 7217 	ljmp	00249$
                                   7218 ;	calc.c:324: case '<':
      00545A                       7219 00237$:
                                   7220 ;	calc.c:325: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      00545A E5 08            [12] 7221 	mov	a,_bp
      00545C 24 15            [12] 7222 	add	a,#0x15
      00545E FF               [12] 7223 	mov	r7,a
      00545F E5 08            [12] 7224 	mov	a,_bp
      005461 24 0E            [12] 7225 	add	a,#0x0e
      005463 F8               [12] 7226 	mov	r0,a
      005464 A6 07            [24] 7227 	mov	@r0,ar7
      005466 08               [12] 7228 	inc	r0
      005467 76 00            [12] 7229 	mov	@r0,#0x00
      005469 08               [12] 7230 	inc	r0
      00546A 76 40            [12] 7231 	mov	@r0,#0x40
      00546C E5 08            [12] 7232 	mov	a,_bp
      00546E 24 12            [12] 7233 	add	a,#0x12
      005470 F8               [12] 7234 	mov	r0,a
      005471 74 13            [12] 7235 	mov	a,#0x13
      005473 26               [12] 7236 	add	a,@r0
      005474 FA               [12] 7237 	mov	r2,a
      005475 74 40            [12] 7238 	mov	a,#0x40
      005477 08               [12] 7239 	inc	r0
      005478 36               [12] 7240 	addc	a,@r0
      005479 FB               [12] 7241 	mov	r3,a
      00547A 08               [12] 7242 	inc	r0
      00547B 86 04            [24] 7243 	mov	ar4,@r0
      00547D 8A 82            [24] 7244 	mov	dpl,r2
      00547F 8B 83            [24] 7245 	mov	dph,r3
      005481 8C F0            [24] 7246 	mov	b,r4
      005483 12 6F B8         [24] 7247 	lcall	__gptrget
      005486 FD               [12] 7248 	mov	r5,a
      005487 A3               [24] 7249 	inc	dptr
      005488 12 6F B8         [24] 7250 	lcall	__gptrget
      00548B FE               [12] 7251 	mov	r6,a
      00548C A3               [24] 7252 	inc	dptr
      00548D 12 6F B8         [24] 7253 	lcall	__gptrget
      005490 FF               [12] 7254 	mov	r7,a
      005491 C0 04            [24] 7255 	push	ar4
      005493 C0 03            [24] 7256 	push	ar3
      005495 C0 02            [24] 7257 	push	ar2
      005497 E5 08            [12] 7258 	mov	a,_bp
      005499 24 0E            [12] 7259 	add	a,#0x0e
      00549B F8               [12] 7260 	mov	r0,a
      00549C E6               [12] 7261 	mov	a,@r0
      00549D C0 E0            [24] 7262 	push	acc
      00549F 08               [12] 7263 	inc	r0
      0054A0 E6               [12] 7264 	mov	a,@r0
      0054A1 C0 E0            [24] 7265 	push	acc
      0054A3 08               [12] 7266 	inc	r0
      0054A4 E6               [12] 7267 	mov	a,@r0
      0054A5 C0 E0            [24] 7268 	push	acc
      0054A7 8D 82            [24] 7269 	mov	dpl,r5
      0054A9 8E 83            [24] 7270 	mov	dph,r6
      0054AB 8F F0            [24] 7271 	mov	b,r7
      0054AD 12 27 B4         [24] 7272 	lcall	_stack_pop
      0054B0 AE 82            [24] 7273 	mov	r6,dpl
      0054B2 AF 83            [24] 7274 	mov	r7,dph
      0054B4 15 81            [12] 7275 	dec	sp
      0054B6 15 81            [12] 7276 	dec	sp
      0054B8 15 81            [12] 7277 	dec	sp
      0054BA D0 02            [24] 7278 	pop	ar2
      0054BC D0 03            [24] 7279 	pop	ar3
      0054BE D0 04            [24] 7280 	pop	ar4
      0054C0 EE               [12] 7281 	mov	a,r6
      0054C1 4F               [12] 7282 	orl	a,r7
      0054C2 70 25            [24] 7283 	jnz	00242$
      0054C4 7D 7F            [12] 7284 	mov	r5,#___str_9
      0054C6 7C 88            [12] 7285 	mov	r4,#(___str_9 >> 8)
      0054C8 7B 80            [12] 7286 	mov	r3,#0x80
                                   7287 ;	calc.c:51: return;
      0054CA                       7288 00492$:
                                   7289 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0054CA 8D 82            [24] 7290 	mov	dpl,r5
      0054CC 8C 83            [24] 7291 	mov	dph,r4
      0054CE 8B F0            [24] 7292 	mov	b,r3
      0054D0 12 6F B8         [24] 7293 	lcall	__gptrget
      0054D3 FF               [12] 7294 	mov	r7,a
      0054D4 70 03            [24] 7295 	jnz	01400$
      0054D6 02 56 DB         [24] 7296 	ljmp	00249$
      0054D9                       7297 01400$:
      0054D9 7E 00            [12] 7298 	mov	r6,#0x00
      0054DB 8F 82            [24] 7299 	mov	dpl,r7
      0054DD 8E 83            [24] 7300 	mov	dph,r6
      0054DF 12 2C 1F         [24] 7301 	lcall	_putchar
      0054E2 0D               [12] 7302 	inc	r5
                                   7303 ;	calc.c:325: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0054E3 BD 00 E4         [24] 7304 	cjne	r5,#0x00,00492$
      0054E6 0C               [12] 7305 	inc	r4
      0054E7 80 E1            [24] 7306 	sjmp	00492$
      0054E9                       7307 00242$:
                                   7308 ;	calc.c:326: else if (!stack_pop(ctx->ps, &d1)) {
      0054E9 E5 08            [12] 7309 	mov	a,_bp
      0054EB 24 19            [12] 7310 	add	a,#0x19
      0054ED FF               [12] 7311 	mov	r7,a
      0054EE E5 08            [12] 7312 	mov	a,_bp
      0054F0 24 0E            [12] 7313 	add	a,#0x0e
      0054F2 F8               [12] 7314 	mov	r0,a
      0054F3 A6 07            [24] 7315 	mov	@r0,ar7
      0054F5 08               [12] 7316 	inc	r0
      0054F6 76 00            [12] 7317 	mov	@r0,#0x00
      0054F8 08               [12] 7318 	inc	r0
      0054F9 76 40            [12] 7319 	mov	@r0,#0x40
      0054FB 8A 82            [24] 7320 	mov	dpl,r2
      0054FD 8B 83            [24] 7321 	mov	dph,r3
      0054FF 8C F0            [24] 7322 	mov	b,r4
      005501 12 6F B8         [24] 7323 	lcall	__gptrget
      005504 FD               [12] 7324 	mov	r5,a
      005505 A3               [24] 7325 	inc	dptr
      005506 12 6F B8         [24] 7326 	lcall	__gptrget
      005509 FE               [12] 7327 	mov	r6,a
      00550A A3               [24] 7328 	inc	dptr
      00550B 12 6F B8         [24] 7329 	lcall	__gptrget
      00550E FF               [12] 7330 	mov	r7,a
      00550F C0 04            [24] 7331 	push	ar4
      005511 C0 03            [24] 7332 	push	ar3
      005513 C0 02            [24] 7333 	push	ar2
      005515 E5 08            [12] 7334 	mov	a,_bp
      005517 24 0E            [12] 7335 	add	a,#0x0e
      005519 F8               [12] 7336 	mov	r0,a
      00551A E6               [12] 7337 	mov	a,@r0
      00551B C0 E0            [24] 7338 	push	acc
      00551D 08               [12] 7339 	inc	r0
      00551E E6               [12] 7340 	mov	a,@r0
      00551F C0 E0            [24] 7341 	push	acc
      005521 08               [12] 7342 	inc	r0
      005522 E6               [12] 7343 	mov	a,@r0
      005523 C0 E0            [24] 7344 	push	acc
      005525 8D 82            [24] 7345 	mov	dpl,r5
      005527 8E 83            [24] 7346 	mov	dph,r6
      005529 8F F0            [24] 7347 	mov	b,r7
      00552B 12 27 B4         [24] 7348 	lcall	_stack_pop
      00552E AE 82            [24] 7349 	mov	r6,dpl
      005530 AF 83            [24] 7350 	mov	r7,dph
      005532 15 81            [12] 7351 	dec	sp
      005534 15 81            [12] 7352 	dec	sp
      005536 15 81            [12] 7353 	dec	sp
      005538 D0 02            [24] 7354 	pop	ar2
      00553A D0 03            [24] 7355 	pop	ar3
      00553C D0 04            [24] 7356 	pop	ar4
      00553E EE               [12] 7357 	mov	a,r6
      00553F 4F               [12] 7358 	orl	a,r7
      005540 70 5C            [24] 7359 	jnz	00239$
                                   7360 ;	calc.c:327: (void)stack_push(ctx->ps, d0);
      005542 8A 82            [24] 7361 	mov	dpl,r2
      005544 8B 83            [24] 7362 	mov	dph,r3
      005546 8C F0            [24] 7363 	mov	b,r4
      005548 12 6F B8         [24] 7364 	lcall	__gptrget
      00554B FD               [12] 7365 	mov	r5,a
      00554C A3               [24] 7366 	inc	dptr
      00554D 12 6F B8         [24] 7367 	lcall	__gptrget
      005550 FE               [12] 7368 	mov	r6,a
      005551 A3               [24] 7369 	inc	dptr
      005552 12 6F B8         [24] 7370 	lcall	__gptrget
      005555 FF               [12] 7371 	mov	r7,a
      005556 E5 08            [12] 7372 	mov	a,_bp
      005558 24 15            [12] 7373 	add	a,#0x15
      00555A F8               [12] 7374 	mov	r0,a
      00555B E6               [12] 7375 	mov	a,@r0
      00555C C0 E0            [24] 7376 	push	acc
      00555E 08               [12] 7377 	inc	r0
      00555F E6               [12] 7378 	mov	a,@r0
      005560 C0 E0            [24] 7379 	push	acc
      005562 08               [12] 7380 	inc	r0
      005563 E6               [12] 7381 	mov	a,@r0
      005564 C0 E0            [24] 7382 	push	acc
      005566 08               [12] 7383 	inc	r0
      005567 E6               [12] 7384 	mov	a,@r0
      005568 C0 E0            [24] 7385 	push	acc
      00556A 8D 82            [24] 7386 	mov	dpl,r5
      00556C 8E 83            [24] 7387 	mov	dph,r6
      00556E 8F F0            [24] 7388 	mov	b,r7
      005570 12 26 BA         [24] 7389 	lcall	_stack_push
      005573 E5 81            [12] 7390 	mov	a,sp
      005575 24 FC            [12] 7391 	add	a,#0xfc
      005577 F5 81            [12] 7392 	mov	sp,a
                                   7393 ;	calc.c:328: printstr("\r\nstack underflow\r\n");
      005579 7D 7F            [12] 7394 	mov	r5,#___str_9
      00557B 7C 88            [12] 7395 	mov	r4,#(___str_9 >> 8)
      00557D 7B 80            [12] 7396 	mov	r3,#0x80
                                   7397 ;	calc.c:51: return;
      00557F                       7398 00495$:
                                   7399 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00557F 8D 82            [24] 7400 	mov	dpl,r5
      005581 8C 83            [24] 7401 	mov	dph,r4
      005583 8B F0            [24] 7402 	mov	b,r3
      005585 12 6F B8         [24] 7403 	lcall	__gptrget
      005588 FF               [12] 7404 	mov	r7,a
      005589 70 03            [24] 7405 	jnz	01403$
      00558B 02 56 DB         [24] 7406 	ljmp	00249$
      00558E                       7407 01403$:
      00558E 7E 00            [12] 7408 	mov	r6,#0x00
      005590 8F 82            [24] 7409 	mov	dpl,r7
      005592 8E 83            [24] 7410 	mov	dph,r6
      005594 12 2C 1F         [24] 7411 	lcall	_putchar
      005597 0D               [12] 7412 	inc	r5
                                   7413 ;	calc.c:328: printstr("\r\nstack underflow\r\n");
      005598 BD 00 E4         [24] 7414 	cjne	r5,#0x00,00495$
      00559B 0C               [12] 7415 	inc	r4
      00559C 80 E1            [24] 7416 	sjmp	00495$
      00559E                       7417 00239$:
                                   7418 ;	calc.c:330: d1 <<= d0;
      00559E E5 08            [12] 7419 	mov	a,_bp
      0055A0 24 15            [12] 7420 	add	a,#0x15
      0055A2 F8               [12] 7421 	mov	r0,a
      0055A3 86 F0            [24] 7422 	mov	b,@r0
      0055A5 05 F0            [12] 7423 	inc	b
      0055A7 E5 08            [12] 7424 	mov	a,_bp
      0055A9 24 19            [12] 7425 	add	a,#0x19
      0055AB F8               [12] 7426 	mov	r0,a
      0055AC 80 12            [24] 7427 	sjmp	01406$
      0055AE                       7428 01405$:
      0055AE E6               [12] 7429 	mov	a,@r0
      0055AF 26               [12] 7430 	add	a,@r0
      0055B0 F6               [12] 7431 	mov	@r0,a
      0055B1 08               [12] 7432 	inc	r0
      0055B2 E6               [12] 7433 	mov	a,@r0
      0055B3 33               [12] 7434 	rlc	a
      0055B4 F6               [12] 7435 	mov	@r0,a
      0055B5 08               [12] 7436 	inc	r0
      0055B6 E6               [12] 7437 	mov	a,@r0
      0055B7 33               [12] 7438 	rlc	a
      0055B8 F6               [12] 7439 	mov	@r0,a
      0055B9 08               [12] 7440 	inc	r0
      0055BA E6               [12] 7441 	mov	a,@r0
      0055BB 33               [12] 7442 	rlc	a
      0055BC F6               [12] 7443 	mov	@r0,a
      0055BD 18               [12] 7444 	dec	r0
      0055BE 18               [12] 7445 	dec	r0
      0055BF 18               [12] 7446 	dec	r0
      0055C0                       7447 01406$:
      0055C0 D5 F0 EB         [24] 7448 	djnz	b,01405$
                                   7449 ;	calc.c:331: (void)stack_push(ctx->ps, d1);
      0055C3 8A 82            [24] 7450 	mov	dpl,r2
      0055C5 8B 83            [24] 7451 	mov	dph,r3
      0055C7 8C F0            [24] 7452 	mov	b,r4
      0055C9 12 6F B8         [24] 7453 	lcall	__gptrget
      0055CC FA               [12] 7454 	mov	r2,a
      0055CD A3               [24] 7455 	inc	dptr
      0055CE 12 6F B8         [24] 7456 	lcall	__gptrget
      0055D1 FB               [12] 7457 	mov	r3,a
      0055D2 A3               [24] 7458 	inc	dptr
      0055D3 12 6F B8         [24] 7459 	lcall	__gptrget
      0055D6 FC               [12] 7460 	mov	r4,a
      0055D7 E5 08            [12] 7461 	mov	a,_bp
      0055D9 24 19            [12] 7462 	add	a,#0x19
      0055DB F8               [12] 7463 	mov	r0,a
      0055DC E6               [12] 7464 	mov	a,@r0
      0055DD C0 E0            [24] 7465 	push	acc
      0055DF 08               [12] 7466 	inc	r0
      0055E0 E6               [12] 7467 	mov	a,@r0
      0055E1 C0 E0            [24] 7468 	push	acc
      0055E3 08               [12] 7469 	inc	r0
      0055E4 E6               [12] 7470 	mov	a,@r0
      0055E5 C0 E0            [24] 7471 	push	acc
      0055E7 08               [12] 7472 	inc	r0
      0055E8 E6               [12] 7473 	mov	a,@r0
      0055E9 C0 E0            [24] 7474 	push	acc
      0055EB 8A 82            [24] 7475 	mov	dpl,r2
      0055ED 8B 83            [24] 7476 	mov	dph,r3
      0055EF 8C F0            [24] 7477 	mov	b,r4
      0055F1 12 26 BA         [24] 7478 	lcall	_stack_push
      0055F4 E5 81            [12] 7479 	mov	a,sp
      0055F6 24 FC            [12] 7480 	add	a,#0xfc
      0055F8 F5 81            [12] 7481 	mov	sp,a
                                   7482 ;	calc.c:333: break;
      0055FA 02 56 DB         [24] 7483 	ljmp	00249$
                                   7484 ;	calc.c:334: case '~':
      0055FD                       7485 00244$:
                                   7486 ;	calc.c:335: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0055FD E5 08            [12] 7487 	mov	a,_bp
      0055FF 24 15            [12] 7488 	add	a,#0x15
      005601 FF               [12] 7489 	mov	r7,a
      005602 E5 08            [12] 7490 	mov	a,_bp
      005604 24 0E            [12] 7491 	add	a,#0x0e
      005606 F8               [12] 7492 	mov	r0,a
      005607 A6 07            [24] 7493 	mov	@r0,ar7
      005609 08               [12] 7494 	inc	r0
      00560A 76 00            [12] 7495 	mov	@r0,#0x00
      00560C 08               [12] 7496 	inc	r0
      00560D 76 40            [12] 7497 	mov	@r0,#0x40
      00560F E5 08            [12] 7498 	mov	a,_bp
      005611 24 12            [12] 7499 	add	a,#0x12
      005613 F8               [12] 7500 	mov	r0,a
      005614 74 13            [12] 7501 	mov	a,#0x13
      005616 26               [12] 7502 	add	a,@r0
      005617 FA               [12] 7503 	mov	r2,a
      005618 74 40            [12] 7504 	mov	a,#0x40
      00561A 08               [12] 7505 	inc	r0
      00561B 36               [12] 7506 	addc	a,@r0
      00561C FB               [12] 7507 	mov	r3,a
      00561D 08               [12] 7508 	inc	r0
      00561E 86 04            [24] 7509 	mov	ar4,@r0
      005620 8A 82            [24] 7510 	mov	dpl,r2
      005622 8B 83            [24] 7511 	mov	dph,r3
      005624 8C F0            [24] 7512 	mov	b,r4
      005626 12 6F B8         [24] 7513 	lcall	__gptrget
      005629 FD               [12] 7514 	mov	r5,a
      00562A A3               [24] 7515 	inc	dptr
      00562B 12 6F B8         [24] 7516 	lcall	__gptrget
      00562E FE               [12] 7517 	mov	r6,a
      00562F A3               [24] 7518 	inc	dptr
      005630 12 6F B8         [24] 7519 	lcall	__gptrget
      005633 FF               [12] 7520 	mov	r7,a
      005634 C0 04            [24] 7521 	push	ar4
      005636 C0 03            [24] 7522 	push	ar3
      005638 C0 02            [24] 7523 	push	ar2
      00563A E5 08            [12] 7524 	mov	a,_bp
      00563C 24 0E            [12] 7525 	add	a,#0x0e
      00563E F8               [12] 7526 	mov	r0,a
      00563F E6               [12] 7527 	mov	a,@r0
      005640 C0 E0            [24] 7528 	push	acc
      005642 08               [12] 7529 	inc	r0
      005643 E6               [12] 7530 	mov	a,@r0
      005644 C0 E0            [24] 7531 	push	acc
      005646 08               [12] 7532 	inc	r0
      005647 E6               [12] 7533 	mov	a,@r0
      005648 C0 E0            [24] 7534 	push	acc
      00564A 8D 82            [24] 7535 	mov	dpl,r5
      00564C 8E 83            [24] 7536 	mov	dph,r6
      00564E 8F F0            [24] 7537 	mov	b,r7
      005650 12 27 B4         [24] 7538 	lcall	_stack_pop
      005653 AE 82            [24] 7539 	mov	r6,dpl
      005655 AF 83            [24] 7540 	mov	r7,dph
      005657 15 81            [12] 7541 	dec	sp
      005659 15 81            [12] 7542 	dec	sp
      00565B 15 81            [12] 7543 	dec	sp
      00565D D0 02            [24] 7544 	pop	ar2
      00565F D0 03            [24] 7545 	pop	ar3
      005661 D0 04            [24] 7546 	pop	ar4
      005663 EE               [12] 7547 	mov	a,r6
      005664 4F               [12] 7548 	orl	a,r7
      005665 70 22            [24] 7549 	jnz	00246$
      005667 7D 7F            [12] 7550 	mov	r5,#___str_9
      005669 7C 88            [12] 7551 	mov	r4,#(___str_9 >> 8)
      00566B 7B 80            [12] 7552 	mov	r3,#0x80
                                   7553 ;	calc.c:51: return;
      00566D                       7554 00498$:
                                   7555 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00566D 8D 82            [24] 7556 	mov	dpl,r5
      00566F 8C 83            [24] 7557 	mov	dph,r4
      005671 8B F0            [24] 7558 	mov	b,r3
      005673 12 6F B8         [24] 7559 	lcall	__gptrget
      005676 FF               [12] 7560 	mov	r7,a
      005677 60 62            [24] 7561 	jz	00249$
      005679 7E 00            [12] 7562 	mov	r6,#0x00
      00567B 8F 82            [24] 7563 	mov	dpl,r7
      00567D 8E 83            [24] 7564 	mov	dph,r6
      00567F 12 2C 1F         [24] 7565 	lcall	_putchar
      005682 0D               [12] 7566 	inc	r5
                                   7567 ;	calc.c:335: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      005683 BD 00 E7         [24] 7568 	cjne	r5,#0x00,00498$
      005686 0C               [12] 7569 	inc	r4
      005687 80 E4            [24] 7570 	sjmp	00498$
      005689                       7571 00246$:
                                   7572 ;	calc.c:337: d0 = ~d0;
      005689 E5 08            [12] 7573 	mov	a,_bp
      00568B 24 15            [12] 7574 	add	a,#0x15
      00568D F8               [12] 7575 	mov	r0,a
      00568E E6               [12] 7576 	mov	a,@r0
      00568F F4               [12] 7577 	cpl	a
      005690 F6               [12] 7578 	mov	@r0,a
      005691 08               [12] 7579 	inc	r0
      005692 E6               [12] 7580 	mov	a,@r0
      005693 F4               [12] 7581 	cpl	a
      005694 F6               [12] 7582 	mov	@r0,a
      005695 08               [12] 7583 	inc	r0
      005696 E6               [12] 7584 	mov	a,@r0
      005697 F4               [12] 7585 	cpl	a
      005698 F6               [12] 7586 	mov	@r0,a
      005699 08               [12] 7587 	inc	r0
      00569A E6               [12] 7588 	mov	a,@r0
      00569B F4               [12] 7589 	cpl	a
      00569C F6               [12] 7590 	mov	@r0,a
                                   7591 ;	calc.c:338: (void)stack_push(ctx->ps, d0);
      00569D 8A 82            [24] 7592 	mov	dpl,r2
      00569F 8B 83            [24] 7593 	mov	dph,r3
      0056A1 8C F0            [24] 7594 	mov	b,r4
      0056A3 12 6F B8         [24] 7595 	lcall	__gptrget
      0056A6 FA               [12] 7596 	mov	r2,a
      0056A7 A3               [24] 7597 	inc	dptr
      0056A8 12 6F B8         [24] 7598 	lcall	__gptrget
      0056AB FB               [12] 7599 	mov	r3,a
      0056AC A3               [24] 7600 	inc	dptr
      0056AD 12 6F B8         [24] 7601 	lcall	__gptrget
      0056B0 FC               [12] 7602 	mov	r4,a
      0056B1 E5 08            [12] 7603 	mov	a,_bp
      0056B3 24 15            [12] 7604 	add	a,#0x15
      0056B5 F8               [12] 7605 	mov	r0,a
      0056B6 E6               [12] 7606 	mov	a,@r0
      0056B7 C0 E0            [24] 7607 	push	acc
      0056B9 08               [12] 7608 	inc	r0
      0056BA E6               [12] 7609 	mov	a,@r0
      0056BB C0 E0            [24] 7610 	push	acc
      0056BD 08               [12] 7611 	inc	r0
      0056BE E6               [12] 7612 	mov	a,@r0
      0056BF C0 E0            [24] 7613 	push	acc
      0056C1 08               [12] 7614 	inc	r0
      0056C2 E6               [12] 7615 	mov	a,@r0
      0056C3 C0 E0            [24] 7616 	push	acc
      0056C5 8A 82            [24] 7617 	mov	dpl,r2
      0056C7 8B 83            [24] 7618 	mov	dph,r3
      0056C9 8C F0            [24] 7619 	mov	b,r4
      0056CB 12 26 BA         [24] 7620 	lcall	_stack_push
      0056CE E5 81            [12] 7621 	mov	a,sp
      0056D0 24 FC            [12] 7622 	add	a,#0xfc
      0056D2 F5 81            [12] 7623 	mov	sp,a
                                   7624 ;	calc.c:340: break;
                                   7625 ;	calc.c:341: default:
      0056D4 80 05            [24] 7626 	sjmp	00249$
      0056D6                       7627 00248$:
                                   7628 ;	calc.c:342: return UNDEF;
      0056D6 90 80 00         [24] 7629 	mov	dptr,#0x8000
                                   7630 ;	calc.c:343: }
      0056D9 80 03            [24] 7631 	sjmp	00500$
      0056DB                       7632 00249$:
                                   7633 ;	calc.c:345: return 1;
      0056DB 90 00 01         [24] 7634 	mov	dptr,#0x0001
      0056DE                       7635 00500$:
                                   7636 ;	calc.c:346: }
      0056DE 85 08 81         [24] 7637 	mov	sp,_bp
      0056E1 D0 08            [24] 7638 	pop	_bp
      0056E3 22               [24] 7639 	ret
                                   7640 ;------------------------------------------------------------
                                   7641 ;Allocation info for local variables in function 'push_acc'
                                   7642 ;------------------------------------------------------------
                                   7643 ;delta                     Allocated to stack - _bp -5
                                   7644 ;_ctx                      Allocated to stack - _bp +5
                                   7645 ;ctx                       Allocated to registers r2 r3 r4 
                                   7646 ;__1310720127              Allocated to registers 
                                   7647 ;s                         Allocated to registers r5 r6 r7 
                                   7648 ;sloc0                     Allocated to stack - _bp +1
                                   7649 ;------------------------------------------------------------
                                   7650 ;	calc.c:348: static int push_acc(void *_ctx, delta_t *delta) __reentrant {
                                   7651 ;	-----------------------------------------
                                   7652 ;	 function push_acc
                                   7653 ;	-----------------------------------------
      0056E4                       7654 _push_acc:
      0056E4 C0 08            [24] 7655 	push	_bp
      0056E6 E5 81            [12] 7656 	mov	a,sp
      0056E8 F5 08            [12] 7657 	mov	_bp,a
      0056EA 24 07            [12] 7658 	add	a,#0x07
      0056EC F5 81            [12] 7659 	mov	sp,a
      0056EE C8               [12] 7660 	xch	a,r0
      0056EF E5 08            [12] 7661 	mov	a,_bp
      0056F1 24 05            [12] 7662 	add	a,#0x05
      0056F3 C8               [12] 7663 	xch	a,r0
      0056F4 A6 82            [24] 7664 	mov	@r0,dpl
      0056F6 08               [12] 7665 	inc	r0
      0056F7 A6 83            [24] 7666 	mov	@r0,dph
      0056F9 08               [12] 7667 	inc	r0
      0056FA A6 F0            [24] 7668 	mov	@r0,b
                                   7669 ;	calc.c:349: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
      0056FC E5 08            [12] 7670 	mov	a,_bp
      0056FE 24 05            [12] 7671 	add	a,#0x05
      005700 F8               [12] 7672 	mov	r0,a
      005701 86 02            [24] 7673 	mov	ar2,@r0
      005703 08               [12] 7674 	inc	r0
      005704 86 03            [24] 7675 	mov	ar3,@r0
      005706 08               [12] 7676 	inc	r0
      005707 86 04            [24] 7677 	mov	ar4,@r0
                                   7678 ;	calc.c:353: ctx->acc_valid = 0;
      005709 74 06            [12] 7679 	mov	a,#0x06
      00570B 2A               [12] 7680 	add	a,r2
      00570C FD               [12] 7681 	mov	r5,a
      00570D E4               [12] 7682 	clr	a
      00570E 3B               [12] 7683 	addc	a,r3
      00570F FE               [12] 7684 	mov	r6,a
      005710 8C 07            [24] 7685 	mov	ar7,r4
      005712 8D 82            [24] 7686 	mov	dpl,r5
      005714 8E 83            [24] 7687 	mov	dph,r6
      005716 8F F0            [24] 7688 	mov	b,r7
      005718 E4               [12] 7689 	clr	a
      005719 12 6B 3D         [24] 7690 	lcall	__gptrput
                                   7691 ;	calc.c:354: if (!stack_push(ctx->ps, ctx->acc)) printstr("\r\nstack overflow\r\n");
      00571C 74 02            [12] 7692 	mov	a,#0x02
      00571E 2A               [12] 7693 	add	a,r2
      00571F FF               [12] 7694 	mov	r7,a
      005720 E4               [12] 7695 	clr	a
      005721 3B               [12] 7696 	addc	a,r3
      005722 FD               [12] 7697 	mov	r5,a
      005723 8C 06            [24] 7698 	mov	ar6,r4
      005725 8F 82            [24] 7699 	mov	dpl,r7
      005727 8D 83            [24] 7700 	mov	dph,r5
      005729 8E F0            [24] 7701 	mov	b,r6
      00572B A8 08            [24] 7702 	mov	r0,_bp
      00572D 08               [12] 7703 	inc	r0
      00572E 12 6F B8         [24] 7704 	lcall	__gptrget
      005731 F6               [12] 7705 	mov	@r0,a
      005732 A3               [24] 7706 	inc	dptr
      005733 12 6F B8         [24] 7707 	lcall	__gptrget
      005736 08               [12] 7708 	inc	r0
      005737 F6               [12] 7709 	mov	@r0,a
      005738 A3               [24] 7710 	inc	dptr
      005739 12 6F B8         [24] 7711 	lcall	__gptrget
      00573C 08               [12] 7712 	inc	r0
      00573D F6               [12] 7713 	mov	@r0,a
      00573E A3               [24] 7714 	inc	dptr
      00573F 12 6F B8         [24] 7715 	lcall	__gptrget
      005742 08               [12] 7716 	inc	r0
      005743 F6               [12] 7717 	mov	@r0,a
      005744 74 13            [12] 7718 	mov	a,#0x13
      005746 2A               [12] 7719 	add	a,r2
      005747 FA               [12] 7720 	mov	r2,a
      005748 74 40            [12] 7721 	mov	a,#0x40
      00574A 3B               [12] 7722 	addc	a,r3
      00574B FB               [12] 7723 	mov	r3,a
      00574C 8C 07            [24] 7724 	mov	ar7,r4
      00574E 8A 82            [24] 7725 	mov	dpl,r2
      005750 8B 83            [24] 7726 	mov	dph,r3
      005752 8F F0            [24] 7727 	mov	b,r7
      005754 12 6F B8         [24] 7728 	lcall	__gptrget
      005757 FA               [12] 7729 	mov	r2,a
      005758 A3               [24] 7730 	inc	dptr
      005759 12 6F B8         [24] 7731 	lcall	__gptrget
      00575C FB               [12] 7732 	mov	r3,a
      00575D A3               [24] 7733 	inc	dptr
      00575E 12 6F B8         [24] 7734 	lcall	__gptrget
      005761 FF               [12] 7735 	mov	r7,a
      005762 A8 08            [24] 7736 	mov	r0,_bp
      005764 08               [12] 7737 	inc	r0
      005765 E6               [12] 7738 	mov	a,@r0
      005766 C0 E0            [24] 7739 	push	acc
      005768 08               [12] 7740 	inc	r0
      005769 E6               [12] 7741 	mov	a,@r0
      00576A C0 E0            [24] 7742 	push	acc
      00576C 08               [12] 7743 	inc	r0
      00576D E6               [12] 7744 	mov	a,@r0
      00576E C0 E0            [24] 7745 	push	acc
      005770 08               [12] 7746 	inc	r0
      005771 E6               [12] 7747 	mov	a,@r0
      005772 C0 E0            [24] 7748 	push	acc
      005774 8A 82            [24] 7749 	mov	dpl,r2
      005776 8B 83            [24] 7750 	mov	dph,r3
      005778 8F F0            [24] 7751 	mov	b,r7
      00577A 12 26 BA         [24] 7752 	lcall	_stack_push
      00577D AE 82            [24] 7753 	mov	r6,dpl
      00577F AF 83            [24] 7754 	mov	r7,dph
      005781 E5 81            [12] 7755 	mov	a,sp
      005783 24 FC            [12] 7756 	add	a,#0xfc
      005785 F5 81            [12] 7757 	mov	sp,a
      005787 EE               [12] 7758 	mov	a,r6
      005788 4F               [12] 7759 	orl	a,r7
      005789 70 22            [24] 7760 	jnz	00102$
      00578B 7D CE            [12] 7761 	mov	r5,#___str_12
      00578D 7E 88            [12] 7762 	mov	r6,#(___str_12 >> 8)
      00578F 7F 80            [12] 7763 	mov	r7,#0x80
                                   7764 ;	calc.c:51: return;
      005791                       7765 00109$:
                                   7766 ;	calc.c:49: for (; *s; s++) putchar(*s);
      005791 8D 82            [24] 7767 	mov	dpl,r5
      005793 8E 83            [24] 7768 	mov	dph,r6
      005795 8F F0            [24] 7769 	mov	b,r7
      005797 12 6F B8         [24] 7770 	lcall	__gptrget
      00579A FC               [12] 7771 	mov	r4,a
      00579B 60 10            [24] 7772 	jz	00102$
      00579D 7B 00            [12] 7773 	mov	r3,#0x00
      00579F 8C 82            [24] 7774 	mov	dpl,r4
      0057A1 8B 83            [24] 7775 	mov	dph,r3
      0057A3 12 2C 1F         [24] 7776 	lcall	_putchar
      0057A6 0D               [12] 7777 	inc	r5
                                   7778 ;	calc.c:354: if (!stack_push(ctx->ps, ctx->acc)) printstr("\r\nstack overflow\r\n");
      0057A7 BD 00 E7         [24] 7779 	cjne	r5,#0x00,00109$
      0057AA 0E               [12] 7780 	inc	r6
      0057AB 80 E4            [24] 7781 	sjmp	00109$
      0057AD                       7782 00102$:
                                   7783 ;	calc.c:356: if (delta->event == EVENT_OP) return operator(_ctx, delta);
      0057AD E5 08            [12] 7784 	mov	a,_bp
      0057AF 24 FB            [12] 7785 	add	a,#0xfb
      0057B1 F8               [12] 7786 	mov	r0,a
      0057B2 86 05            [24] 7787 	mov	ar5,@r0
      0057B4 08               [12] 7788 	inc	r0
      0057B5 86 06            [24] 7789 	mov	ar6,@r0
      0057B7 08               [12] 7790 	inc	r0
      0057B8 86 07            [24] 7791 	mov	ar7,@r0
      0057BA 74 02            [12] 7792 	mov	a,#0x02
      0057BC 2D               [12] 7793 	add	a,r5
      0057BD FA               [12] 7794 	mov	r2,a
      0057BE E4               [12] 7795 	clr	a
      0057BF 3E               [12] 7796 	addc	a,r6
      0057C0 FB               [12] 7797 	mov	r3,a
      0057C1 8F 04            [24] 7798 	mov	ar4,r7
      0057C3 8A 82            [24] 7799 	mov	dpl,r2
      0057C5 8B 83            [24] 7800 	mov	dph,r3
      0057C7 8C F0            [24] 7801 	mov	b,r4
      0057C9 12 6F B8         [24] 7802 	lcall	__gptrget
      0057CC FA               [12] 7803 	mov	r2,a
      0057CD A3               [24] 7804 	inc	dptr
      0057CE 12 6F B8         [24] 7805 	lcall	__gptrget
      0057D1 FB               [12] 7806 	mov	r3,a
      0057D2 BA 02 29         [24] 7807 	cjne	r2,#0x02,00104$
      0057D5 BB 00 26         [24] 7808 	cjne	r3,#0x00,00104$
      0057D8 C0 05            [24] 7809 	push	ar5
      0057DA C0 06            [24] 7810 	push	ar6
      0057DC C0 07            [24] 7811 	push	ar7
      0057DE E5 08            [12] 7812 	mov	a,_bp
      0057E0 24 05            [12] 7813 	add	a,#0x05
      0057E2 F8               [12] 7814 	mov	r0,a
      0057E3 86 82            [24] 7815 	mov	dpl,@r0
      0057E5 08               [12] 7816 	inc	r0
      0057E6 86 83            [24] 7817 	mov	dph,@r0
      0057E8 08               [12] 7818 	inc	r0
      0057E9 86 F0            [24] 7819 	mov	b,@r0
      0057EB 12 34 3C         [24] 7820 	lcall	_operator
      0057EE AE 82            [24] 7821 	mov	r6,dpl
      0057F0 AF 83            [24] 7822 	mov	r7,dph
      0057F2 15 81            [12] 7823 	dec	sp
      0057F4 15 81            [12] 7824 	dec	sp
      0057F6 15 81            [12] 7825 	dec	sp
      0057F8 8E 82            [24] 7826 	mov	dpl,r6
      0057FA 8F 83            [24] 7827 	mov	dph,r7
      0057FC 80 03            [24] 7828 	sjmp	00111$
      0057FE                       7829 00104$:
                                   7830 ;	calc.c:357: else return 1;
      0057FE 90 00 01         [24] 7831 	mov	dptr,#0x0001
      005801                       7832 00111$:
                                   7833 ;	calc.c:358: }
      005801 85 08 81         [24] 7834 	mov	sp,_bp
      005804 D0 08            [24] 7835 	pop	_bp
      005806 22               [24] 7836 	ret
                                   7837 ;------------------------------------------------------------
                                   7838 ;Allocation info for local variables in function 'reset_acc'
                                   7839 ;------------------------------------------------------------
                                   7840 ;delta                     Allocated to stack - _bp -5
                                   7841 ;_ctx                      Allocated to registers r5 r6 r7 
                                   7842 ;ctx                       Allocated to registers r5 r6 r7 
                                   7843 ;------------------------------------------------------------
                                   7844 ;	calc.c:360: static int reset_acc(void *_ctx, delta_t *delta) __reentrant {
                                   7845 ;	-----------------------------------------
                                   7846 ;	 function reset_acc
                                   7847 ;	-----------------------------------------
      005807                       7848 _reset_acc:
      005807 C0 08            [24] 7849 	push	_bp
      005809 85 81 08         [24] 7850 	mov	_bp,sp
      00580C AD 82            [24] 7851 	mov	r5,dpl
      00580E AE 83            [24] 7852 	mov	r6,dph
      005810 AF F0            [24] 7853 	mov	r7,b
                                   7854 ;	calc.c:361: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
                                   7855 ;	calc.c:363: if (delta->event == EVENT_RSTA_I) ctx->acc_valid = 0;
      005812 E5 08            [12] 7856 	mov	a,_bp
      005814 24 FB            [12] 7857 	add	a,#0xfb
      005816 F8               [12] 7858 	mov	r0,a
      005817 86 02            [24] 7859 	mov	ar2,@r0
      005819 08               [12] 7860 	inc	r0
      00581A 86 03            [24] 7861 	mov	ar3,@r0
      00581C 08               [12] 7862 	inc	r0
      00581D 86 04            [24] 7863 	mov	ar4,@r0
      00581F 74 02            [12] 7864 	mov	a,#0x02
      005821 2A               [12] 7865 	add	a,r2
      005822 FA               [12] 7866 	mov	r2,a
      005823 E4               [12] 7867 	clr	a
      005824 3B               [12] 7868 	addc	a,r3
      005825 FB               [12] 7869 	mov	r3,a
      005826 8A 82            [24] 7870 	mov	dpl,r2
      005828 8B 83            [24] 7871 	mov	dph,r3
      00582A 8C F0            [24] 7872 	mov	b,r4
      00582C 12 6F B8         [24] 7873 	lcall	__gptrget
      00582F FA               [12] 7874 	mov	r2,a
      005830 A3               [24] 7875 	inc	dptr
      005831 12 6F B8         [24] 7876 	lcall	__gptrget
      005834 FB               [12] 7877 	mov	r3,a
      005835 BA 07 16         [24] 7878 	cjne	r2,#0x07,00102$
      005838 BB 00 13         [24] 7879 	cjne	r3,#0x00,00102$
      00583B 74 06            [12] 7880 	mov	a,#0x06
      00583D 2D               [12] 7881 	add	a,r5
      00583E FA               [12] 7882 	mov	r2,a
      00583F E4               [12] 7883 	clr	a
      005840 3E               [12] 7884 	addc	a,r6
      005841 FB               [12] 7885 	mov	r3,a
      005842 8F 04            [24] 7886 	mov	ar4,r7
      005844 8A 82            [24] 7887 	mov	dpl,r2
      005846 8B 83            [24] 7888 	mov	dph,r3
      005848 8C F0            [24] 7889 	mov	b,r4
      00584A E4               [12] 7890 	clr	a
      00584B 12 6B 3D         [24] 7891 	lcall	__gptrput
      00584E                       7892 00102$:
                                   7893 ;	calc.c:364: ctx->acc = 0l;
      00584E 74 02            [12] 7894 	mov	a,#0x02
      005850 2D               [12] 7895 	add	a,r5
      005851 FD               [12] 7896 	mov	r5,a
      005852 E4               [12] 7897 	clr	a
      005853 3E               [12] 7898 	addc	a,r6
      005854 FE               [12] 7899 	mov	r6,a
      005855 8D 82            [24] 7900 	mov	dpl,r5
      005857 8E 83            [24] 7901 	mov	dph,r6
      005859 8F F0            [24] 7902 	mov	b,r7
      00585B E4               [12] 7903 	clr	a
      00585C 12 6B 3D         [24] 7904 	lcall	__gptrput
      00585F A3               [24] 7905 	inc	dptr
      005860 12 6B 3D         [24] 7906 	lcall	__gptrput
      005863 A3               [24] 7907 	inc	dptr
      005864 12 6B 3D         [24] 7908 	lcall	__gptrput
      005867 A3               [24] 7909 	inc	dptr
      005868 12 6B 3D         [24] 7910 	lcall	__gptrput
                                   7911 ;	calc.c:366: return 1;
      00586B 90 00 01         [24] 7912 	mov	dptr,#0x0001
                                   7913 ;	calc.c:367: }
      00586E D0 08            [24] 7914 	pop	_bp
      005870 22               [24] 7915 	ret
                                   7916 ;------------------------------------------------------------
                                   7917 ;Allocation info for local variables in function 'reset_base'
                                   7918 ;------------------------------------------------------------
                                   7919 ;delta                     Allocated to stack - _bp -5
                                   7920 ;_ctx                      Allocated to registers r5 r6 r7 
                                   7921 ;ctx                       Allocated to registers r5 r6 r7 
                                   7922 ;------------------------------------------------------------
                                   7923 ;	calc.c:369: static int reset_base(void *_ctx, delta_t *delta) __reentrant {
                                   7924 ;	-----------------------------------------
                                   7925 ;	 function reset_base
                                   7926 ;	-----------------------------------------
      005871                       7927 _reset_base:
      005871 C0 08            [24] 7928 	push	_bp
      005873 85 81 08         [24] 7929 	mov	_bp,sp
      005876 AD 82            [24] 7930 	mov	r5,dpl
      005878 AE 83            [24] 7931 	mov	r6,dph
      00587A AF F0            [24] 7932 	mov	r7,b
                                   7933 ;	calc.c:370: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
                                   7934 ;	calc.c:374: switch (ctx->digit[0]) {
      00587C 74 07            [12] 7935 	mov	a,#0x07
      00587E 2D               [12] 7936 	add	a,r5
      00587F FA               [12] 7937 	mov	r2,a
      005880 E4               [12] 7938 	clr	a
      005881 3E               [12] 7939 	addc	a,r6
      005882 FB               [12] 7940 	mov	r3,a
      005883 8F 04            [24] 7941 	mov	ar4,r7
      005885 8A 82            [24] 7942 	mov	dpl,r2
      005887 8B 83            [24] 7943 	mov	dph,r3
      005889 8C F0            [24] 7944 	mov	b,r4
      00588B 12 6F B8         [24] 7945 	lcall	__gptrget
      00588E FC               [12] 7946 	mov	r4,a
      00588F BC 48 02         [24] 7947 	cjne	r4,#0x48,00124$
      005892 80 0F            [24] 7948 	sjmp	00101$
      005894                       7949 00124$:
      005894 BC 4F 02         [24] 7950 	cjne	r4,#0x4f,00125$
      005897 80 2E            [24] 7951 	sjmp	00103$
      005899                       7952 00125$:
      005899 BC 68 02         [24] 7953 	cjne	r4,#0x68,00126$
      00589C 80 17            [24] 7954 	sjmp	00102$
      00589E                       7955 00126$:
                                   7956 ;	calc.c:375: case 'H':
      00589E BC 6F 48         [24] 7957 	cjne	r4,#0x6f,00105$
      0058A1 80 36            [24] 7958 	sjmp	00104$
      0058A3                       7959 00101$:
                                   7960 ;	calc.c:376: ctx->base = 16;
      0058A3 8D 82            [24] 7961 	mov	dpl,r5
      0058A5 8E 83            [24] 7962 	mov	dph,r6
      0058A7 8F F0            [24] 7963 	mov	b,r7
      0058A9 74 10            [12] 7964 	mov	a,#0x10
      0058AB 12 6B 3D         [24] 7965 	lcall	__gptrput
      0058AE A3               [24] 7966 	inc	dptr
      0058AF E4               [12] 7967 	clr	a
      0058B0 12 6B 3D         [24] 7968 	lcall	__gptrput
                                   7969 ;	calc.c:377: break;
                                   7970 ;	calc.c:378: case 'h':
      0058B3 80 34            [24] 7971 	sjmp	00105$
      0058B5                       7972 00102$:
                                   7973 ;	calc.c:379: ctx->base = 10;
      0058B5 8D 82            [24] 7974 	mov	dpl,r5
      0058B7 8E 83            [24] 7975 	mov	dph,r6
      0058B9 8F F0            [24] 7976 	mov	b,r7
      0058BB 74 0A            [12] 7977 	mov	a,#0x0a
      0058BD 12 6B 3D         [24] 7978 	lcall	__gptrput
      0058C0 A3               [24] 7979 	inc	dptr
      0058C1 E4               [12] 7980 	clr	a
      0058C2 12 6B 3D         [24] 7981 	lcall	__gptrput
                                   7982 ;	calc.c:380: break;
                                   7983 ;	calc.c:381: case 'O':
      0058C5 80 22            [24] 7984 	sjmp	00105$
      0058C7                       7985 00103$:
                                   7986 ;	calc.c:382: ctx->base = 8;
      0058C7 8D 82            [24] 7987 	mov	dpl,r5
      0058C9 8E 83            [24] 7988 	mov	dph,r6
      0058CB 8F F0            [24] 7989 	mov	b,r7
      0058CD 74 08            [12] 7990 	mov	a,#0x08
      0058CF 12 6B 3D         [24] 7991 	lcall	__gptrput
      0058D2 A3               [24] 7992 	inc	dptr
      0058D3 E4               [12] 7993 	clr	a
      0058D4 12 6B 3D         [24] 7994 	lcall	__gptrput
                                   7995 ;	calc.c:383: break;
                                   7996 ;	calc.c:384: case 'o':
      0058D7 80 10            [24] 7997 	sjmp	00105$
      0058D9                       7998 00104$:
                                   7999 ;	calc.c:385: ctx->base = 2;
      0058D9 8D 82            [24] 8000 	mov	dpl,r5
      0058DB 8E 83            [24] 8001 	mov	dph,r6
      0058DD 8F F0            [24] 8002 	mov	b,r7
      0058DF 74 02            [12] 8003 	mov	a,#0x02
      0058E1 12 6B 3D         [24] 8004 	lcall	__gptrput
      0058E4 A3               [24] 8005 	inc	dptr
      0058E5 E4               [12] 8006 	clr	a
      0058E6 12 6B 3D         [24] 8007 	lcall	__gptrput
                                   8008 ;	calc.c:387: }
      0058E9                       8009 00105$:
                                   8010 ;	calc.c:389: return 1;
      0058E9 90 00 01         [24] 8011 	mov	dptr,#0x0001
                                   8012 ;	calc.c:390: }
      0058EC D0 08            [24] 8013 	pop	_bp
      0058EE 22               [24] 8014 	ret
                                   8015 ;------------------------------------------------------------
                                   8016 ;Allocation info for local variables in function 'status'
                                   8017 ;------------------------------------------------------------
                                   8018 ;delta                     Allocated to stack - _bp -5
                                   8019 ;_ctx                      Allocated to registers r5 r6 r7 
                                   8020 ;ctx                       Allocated to stack - _bp +17
                                   8021 ;vals                      Allocated to stack - _bp +9
                                   8022 ;n                         Allocated to stack - _bp +20
                                   8023 ;__1310720129              Allocated to registers 
                                   8024 ;s                         Allocated to registers r5 r6 r7 
                                   8025 ;__1310720131              Allocated to registers r5 r6 r7 r4 
                                   8026 ;d                         Allocated to registers 
                                   8027 ;__1310720001              Allocated to registers 
                                   8028 ;d                         Allocated to stack - _bp +22
                                   8029 ;mask                      Allocated to stack - _bp +26
                                   8030 ;__1310720133              Allocated to registers 
                                   8031 ;s                         Allocated to registers r3 r4 r5 
                                   8032 ;__1310720135              Allocated to registers r2 r3 r4 r5 
                                   8033 ;d                         Allocated to registers 
                                   8034 ;__1310720001              Allocated to registers 
                                   8035 ;d                         Allocated to stack - _bp +22
                                   8036 ;mask                      Allocated to stack - _bp +26
                                   8037 ;__1310720137              Allocated to registers 
                                   8038 ;s                         Allocated to registers r3 r4 r5 
                                   8039 ;__1310720139              Allocated to registers r4 r5 r6 r7 
                                   8040 ;d                         Allocated to registers 
                                   8041 ;__1310720001              Allocated to registers 
                                   8042 ;d                         Allocated to stack - _bp +22
                                   8043 ;mask                      Allocated to stack - _bp +26
                                   8044 ;__1310720141              Allocated to registers 
                                   8045 ;s                         Allocated to registers r3 r4 r5 
                                   8046 ;__1310720143              Allocated to registers r2 r3 r4 r5 
                                   8047 ;d                         Allocated to registers 
                                   8048 ;__1310720001              Allocated to registers 
                                   8049 ;d                         Allocated to stack - _bp +22
                                   8050 ;mask                      Allocated to stack - _bp +26
                                   8051 ;__1310720145              Allocated to registers 
                                   8052 ;s                         Allocated to registers r5 r6 r7 
                                   8053 ;__1310720147              Allocated to registers r4 r5 r6 r7 
                                   8054 ;d                         Allocated to registers 
                                   8055 ;__1310720001              Allocated to registers 
                                   8056 ;d                         Allocated to stack - _bp +22
                                   8057 ;mask                      Allocated to stack - _bp +26
                                   8058 ;__1310720149              Allocated to registers 
                                   8059 ;s                         Allocated to registers r5 r6 r7 
                                   8060 ;sloc0                     Allocated to stack - _bp +1
                                   8061 ;sloc1                     Allocated to stack - _bp +4
                                   8062 ;sloc2                     Allocated to stack - _bp +7
                                   8063 ;------------------------------------------------------------
                                   8064 ;	calc.c:392: static int status(void *_ctx, delta_t *delta) __reentrant {
                                   8065 ;	-----------------------------------------
                                   8066 ;	 function status
                                   8067 ;	-----------------------------------------
      0058EF                       8068 _status:
      0058EF C0 08            [24] 8069 	push	_bp
      0058F1 E5 81            [12] 8070 	mov	a,sp
      0058F3 F5 08            [12] 8071 	mov	_bp,a
      0058F5 24 1D            [12] 8072 	add	a,#0x1d
      0058F7 F5 81            [12] 8073 	mov	sp,a
      0058F9 AD 82            [24] 8074 	mov	r5,dpl
      0058FB AE 83            [24] 8075 	mov	r6,dph
      0058FD AF F0            [24] 8076 	mov	r7,b
                                   8077 ;	calc.c:393: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
      0058FF E5 08            [12] 8078 	mov	a,_bp
      005901 24 11            [12] 8079 	add	a,#0x11
      005903 F8               [12] 8080 	mov	r0,a
      005904 A6 05            [24] 8081 	mov	@r0,ar5
      005906 08               [12] 8082 	inc	r0
      005907 A6 06            [24] 8083 	mov	@r0,ar6
      005909 08               [12] 8084 	inc	r0
      00590A A6 07            [24] 8085 	mov	@r0,ar7
                                   8086 ;	calc.c:399: printf("\r\nPS = %p, SS = %p, base = %d\r\n", ctx->ps, ctx->ss, ctx->base);
      00590C E5 08            [12] 8087 	mov	a,_bp
      00590E 24 11            [12] 8088 	add	a,#0x11
      005910 F8               [12] 8089 	mov	r0,a
      005911 86 82            [24] 8090 	mov	dpl,@r0
      005913 08               [12] 8091 	inc	r0
      005914 86 83            [24] 8092 	mov	dph,@r0
      005916 08               [12] 8093 	inc	r0
      005917 86 F0            [24] 8094 	mov	b,@r0
      005919 E5 08            [12] 8095 	mov	a,_bp
      00591B 24 07            [12] 8096 	add	a,#0x07
      00591D F9               [12] 8097 	mov	r1,a
      00591E 12 6F B8         [24] 8098 	lcall	__gptrget
      005921 F7               [12] 8099 	mov	@r1,a
      005922 A3               [24] 8100 	inc	dptr
      005923 12 6F B8         [24] 8101 	lcall	__gptrget
      005926 09               [12] 8102 	inc	r1
      005927 F7               [12] 8103 	mov	@r1,a
      005928 E5 08            [12] 8104 	mov	a,_bp
      00592A 24 11            [12] 8105 	add	a,#0x11
      00592C F8               [12] 8106 	mov	r0,a
      00592D A9 08            [24] 8107 	mov	r1,_bp
      00592F 09               [12] 8108 	inc	r1
      005930 74 16            [12] 8109 	mov	a,#0x16
      005932 26               [12] 8110 	add	a,@r0
      005933 F7               [12] 8111 	mov	@r1,a
      005934 74 40            [12] 8112 	mov	a,#0x40
      005936 08               [12] 8113 	inc	r0
      005937 36               [12] 8114 	addc	a,@r0
      005938 09               [12] 8115 	inc	r1
      005939 F7               [12] 8116 	mov	@r1,a
      00593A 08               [12] 8117 	inc	r0
      00593B 09               [12] 8118 	inc	r1
      00593C E6               [12] 8119 	mov	a,@r0
      00593D F7               [12] 8120 	mov	@r1,a
      00593E A8 08            [24] 8121 	mov	r0,_bp
      005940 08               [12] 8122 	inc	r0
      005941 86 82            [24] 8123 	mov	dpl,@r0
      005943 08               [12] 8124 	inc	r0
      005944 86 83            [24] 8125 	mov	dph,@r0
      005946 08               [12] 8126 	inc	r0
      005947 86 F0            [24] 8127 	mov	b,@r0
      005949 12 6F B8         [24] 8128 	lcall	__gptrget
      00594C FA               [12] 8129 	mov	r2,a
      00594D A3               [24] 8130 	inc	dptr
      00594E 12 6F B8         [24] 8131 	lcall	__gptrget
      005951 FE               [12] 8132 	mov	r6,a
      005952 A3               [24] 8133 	inc	dptr
      005953 12 6F B8         [24] 8134 	lcall	__gptrget
      005956 FF               [12] 8135 	mov	r7,a
      005957 E5 08            [12] 8136 	mov	a,_bp
      005959 24 11            [12] 8137 	add	a,#0x11
      00595B F8               [12] 8138 	mov	r0,a
      00595C E5 08            [12] 8139 	mov	a,_bp
      00595E 24 04            [12] 8140 	add	a,#0x04
      005960 F9               [12] 8141 	mov	r1,a
      005961 74 13            [12] 8142 	mov	a,#0x13
      005963 26               [12] 8143 	add	a,@r0
      005964 F7               [12] 8144 	mov	@r1,a
      005965 74 40            [12] 8145 	mov	a,#0x40
      005967 08               [12] 8146 	inc	r0
      005968 36               [12] 8147 	addc	a,@r0
      005969 09               [12] 8148 	inc	r1
      00596A F7               [12] 8149 	mov	@r1,a
      00596B 08               [12] 8150 	inc	r0
      00596C 09               [12] 8151 	inc	r1
      00596D E6               [12] 8152 	mov	a,@r0
      00596E F7               [12] 8153 	mov	@r1,a
      00596F E5 08            [12] 8154 	mov	a,_bp
      005971 24 04            [12] 8155 	add	a,#0x04
      005973 F8               [12] 8156 	mov	r0,a
      005974 86 82            [24] 8157 	mov	dpl,@r0
      005976 08               [12] 8158 	inc	r0
      005977 86 83            [24] 8159 	mov	dph,@r0
      005979 08               [12] 8160 	inc	r0
      00597A 86 F0            [24] 8161 	mov	b,@r0
      00597C 12 6F B8         [24] 8162 	lcall	__gptrget
      00597F FB               [12] 8163 	mov	r3,a
      005980 A3               [24] 8164 	inc	dptr
      005981 12 6F B8         [24] 8165 	lcall	__gptrget
      005984 FC               [12] 8166 	mov	r4,a
      005985 A3               [24] 8167 	inc	dptr
      005986 12 6F B8         [24] 8168 	lcall	__gptrget
      005989 FD               [12] 8169 	mov	r5,a
      00598A E5 08            [12] 8170 	mov	a,_bp
      00598C 24 07            [12] 8171 	add	a,#0x07
      00598E F8               [12] 8172 	mov	r0,a
      00598F E6               [12] 8173 	mov	a,@r0
      005990 C0 E0            [24] 8174 	push	acc
      005992 08               [12] 8175 	inc	r0
      005993 E6               [12] 8176 	mov	a,@r0
      005994 C0 E0            [24] 8177 	push	acc
      005996 C0 02            [24] 8178 	push	ar2
      005998 C0 06            [24] 8179 	push	ar6
      00599A C0 07            [24] 8180 	push	ar7
      00599C C0 03            [24] 8181 	push	ar3
      00599E C0 04            [24] 8182 	push	ar4
      0059A0 C0 05            [24] 8183 	push	ar5
      0059A2 74 F6            [12] 8184 	mov	a,#___str_14
      0059A4 C0 E0            [24] 8185 	push	acc
      0059A6 74 88            [12] 8186 	mov	a,#(___str_14 >> 8)
      0059A8 C0 E0            [24] 8187 	push	acc
      0059AA 74 80            [12] 8188 	mov	a,#0x80
      0059AC C0 E0            [24] 8189 	push	acc
      0059AE 12 6F 7F         [24] 8190 	lcall	_printf
      0059B1 E5 81            [12] 8191 	mov	a,sp
      0059B3 24 F5            [12] 8192 	add	a,#0xf5
      0059B5 F5 81            [12] 8193 	mov	sp,a
                                   8194 ;	calc.c:401: printstr("ACC\t");
      0059B7 7D 16            [12] 8195 	mov	r5,#___str_15
      0059B9 7E 89            [12] 8196 	mov	r6,#(___str_15 >> 8)
      0059BB 7F 80            [12] 8197 	mov	r7,#0x80
                                   8198 ;	calc.c:51: return;
      0059BD                       8199 00139$:
                                   8200 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0059BD 8D 82            [24] 8201 	mov	dpl,r5
      0059BF 8E 83            [24] 8202 	mov	dph,r6
      0059C1 8F F0            [24] 8203 	mov	b,r7
      0059C3 12 6F B8         [24] 8204 	lcall	__gptrget
      0059C6 FC               [12] 8205 	mov	r4,a
      0059C7 60 10            [24] 8206 	jz	00112$
      0059C9 7B 00            [12] 8207 	mov	r3,#0x00
      0059CB 8C 82            [24] 8208 	mov	dpl,r4
      0059CD 8B 83            [24] 8209 	mov	dph,r3
      0059CF 12 2C 1F         [24] 8210 	lcall	_putchar
      0059D2 0D               [12] 8211 	inc	r5
                                   8212 ;	calc.c:401: printstr("ACC\t");
      0059D3 BD 00 E7         [24] 8213 	cjne	r5,#0x00,00139$
      0059D6 0E               [12] 8214 	inc	r6
      0059D7 80 E4            [24] 8215 	sjmp	00139$
      0059D9                       8216 00112$:
                                   8217 ;	calc.c:402: if (ctx->acc_valid) printall(ctx->acc);
      0059D9 E5 08            [12] 8218 	mov	a,_bp
      0059DB 24 11            [12] 8219 	add	a,#0x11
      0059DD F8               [12] 8220 	mov	r0,a
      0059DE 74 06            [12] 8221 	mov	a,#0x06
      0059E0 26               [12] 8222 	add	a,@r0
      0059E1 FD               [12] 8223 	mov	r5,a
      0059E2 E4               [12] 8224 	clr	a
      0059E3 08               [12] 8225 	inc	r0
      0059E4 36               [12] 8226 	addc	a,@r0
      0059E5 FE               [12] 8227 	mov	r6,a
      0059E6 08               [12] 8228 	inc	r0
      0059E7 86 07            [24] 8229 	mov	ar7,@r0
      0059E9 8D 82            [24] 8230 	mov	dpl,r5
      0059EB 8E 83            [24] 8231 	mov	dph,r6
      0059ED 8F F0            [24] 8232 	mov	b,r7
      0059EF 12 6F B8         [24] 8233 	lcall	__gptrget
      0059F2 70 03            [24] 8234 	jnz	00321$
      0059F4 02 5A F9         [24] 8235 	ljmp	00102$
      0059F7                       8236 00321$:
      0059F7 E5 08            [12] 8237 	mov	a,_bp
      0059F9 24 11            [12] 8238 	add	a,#0x11
      0059FB F8               [12] 8239 	mov	r0,a
      0059FC 74 02            [12] 8240 	mov	a,#0x02
      0059FE 26               [12] 8241 	add	a,@r0
      0059FF FD               [12] 8242 	mov	r5,a
      005A00 E4               [12] 8243 	clr	a
      005A01 08               [12] 8244 	inc	r0
      005A02 36               [12] 8245 	addc	a,@r0
      005A03 FE               [12] 8246 	mov	r6,a
      005A04 08               [12] 8247 	inc	r0
      005A05 86 07            [24] 8248 	mov	ar7,@r0
      005A07 8D 82            [24] 8249 	mov	dpl,r5
      005A09 8E 83            [24] 8250 	mov	dph,r6
      005A0B 8F F0            [24] 8251 	mov	b,r7
      005A0D 12 6F B8         [24] 8252 	lcall	__gptrget
      005A10 FD               [12] 8253 	mov	r5,a
      005A11 A3               [24] 8254 	inc	dptr
      005A12 12 6F B8         [24] 8255 	lcall	__gptrget
      005A15 FE               [12] 8256 	mov	r6,a
      005A16 A3               [24] 8257 	inc	dptr
      005A17 12 6F B8         [24] 8258 	lcall	__gptrget
      005A1A FF               [12] 8259 	mov	r7,a
      005A1B A3               [24] 8260 	inc	dptr
      005A1C 12 6F B8         [24] 8261 	lcall	__gptrget
      005A1F FC               [12] 8262 	mov	r4,a
                                   8263 ;	calc.c:64: printf("% 11ld\t", d);
      005A20 C0 07            [24] 8264 	push	ar7
      005A22 C0 06            [24] 8265 	push	ar6
      005A24 C0 05            [24] 8266 	push	ar5
      005A26 C0 04            [24] 8267 	push	ar4
      005A28 C0 05            [24] 8268 	push	ar5
      005A2A C0 06            [24] 8269 	push	ar6
      005A2C C0 07            [24] 8270 	push	ar7
      005A2E C0 04            [24] 8271 	push	ar4
      005A30 74 39            [12] 8272 	mov	a,#___str_0
      005A32 C0 E0            [24] 8273 	push	acc
      005A34 74 88            [12] 8274 	mov	a,#(___str_0 >> 8)
      005A36 C0 E0            [24] 8275 	push	acc
      005A38 74 80            [12] 8276 	mov	a,#0x80
      005A3A C0 E0            [24] 8277 	push	acc
      005A3C 12 6F 7F         [24] 8278 	lcall	_printf
      005A3F E5 81            [12] 8279 	mov	a,sp
      005A41 24 F9            [12] 8280 	add	a,#0xf9
      005A43 F5 81            [12] 8281 	mov	sp,a
      005A45 D0 04            [24] 8282 	pop	ar4
      005A47 D0 05            [24] 8283 	pop	ar5
      005A49 D0 06            [24] 8284 	pop	ar6
      005A4B D0 07            [24] 8285 	pop	ar7
                                   8286 ;	calc.c:65: printf("%08lx\t", d);
      005A4D C0 07            [24] 8287 	push	ar7
      005A4F C0 06            [24] 8288 	push	ar6
      005A51 C0 05            [24] 8289 	push	ar5
      005A53 C0 04            [24] 8290 	push	ar4
      005A55 C0 05            [24] 8291 	push	ar5
      005A57 C0 06            [24] 8292 	push	ar6
      005A59 C0 07            [24] 8293 	push	ar7
      005A5B C0 04            [24] 8294 	push	ar4
      005A5D 74 41            [12] 8295 	mov	a,#___str_1
      005A5F C0 E0            [24] 8296 	push	acc
      005A61 74 88            [12] 8297 	mov	a,#(___str_1 >> 8)
      005A63 C0 E0            [24] 8298 	push	acc
      005A65 74 80            [12] 8299 	mov	a,#0x80
      005A67 C0 E0            [24] 8300 	push	acc
      005A69 12 6F 7F         [24] 8301 	lcall	_printf
      005A6C E5 81            [12] 8302 	mov	a,sp
      005A6E 24 F9            [12] 8303 	add	a,#0xf9
      005A70 F5 81            [12] 8304 	mov	sp,a
      005A72 D0 04            [24] 8305 	pop	ar4
      005A74 D0 05            [24] 8306 	pop	ar5
      005A76 D0 06            [24] 8307 	pop	ar6
      005A78 D0 07            [24] 8308 	pop	ar7
                                   8309 ;	calc.c:66: printbin(d);
      005A7A E5 08            [12] 8310 	mov	a,_bp
      005A7C 24 16            [12] 8311 	add	a,#0x16
      005A7E F8               [12] 8312 	mov	r0,a
      005A7F A6 05            [24] 8313 	mov	@r0,ar5
      005A81 08               [12] 8314 	inc	r0
      005A82 A6 06            [24] 8315 	mov	@r0,ar6
      005A84 08               [12] 8316 	inc	r0
      005A85 A6 07            [24] 8317 	mov	@r0,ar7
      005A87 08               [12] 8318 	inc	r0
      005A88 A6 04            [24] 8319 	mov	@r0,ar4
                                   8320 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      005A8A E5 08            [12] 8321 	mov	a,_bp
      005A8C 24 1A            [12] 8322 	add	a,#0x1a
      005A8E F8               [12] 8323 	mov	r0,a
      005A8F E4               [12] 8324 	clr	a
      005A90 F6               [12] 8325 	mov	@r0,a
      005A91 08               [12] 8326 	inc	r0
      005A92 F6               [12] 8327 	mov	@r0,a
      005A93 08               [12] 8328 	inc	r0
      005A94 F6               [12] 8329 	mov	@r0,a
      005A95 08               [12] 8330 	inc	r0
      005A96 76 80            [12] 8331 	mov	@r0,#0x80
      005A98                       8332 00141$:
                                   8333 ;	calc.c:58: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      005A98 E5 08            [12] 8334 	mov	a,_bp
      005A9A 24 16            [12] 8335 	add	a,#0x16
      005A9C F8               [12] 8336 	mov	r0,a
      005A9D 86 04            [24] 8337 	mov	ar4,@r0
      005A9F 08               [12] 8338 	inc	r0
      005AA0 86 05            [24] 8339 	mov	ar5,@r0
      005AA2 08               [12] 8340 	inc	r0
      005AA3 86 06            [24] 8341 	mov	ar6,@r0
      005AA5 08               [12] 8342 	inc	r0
      005AA6 86 07            [24] 8343 	mov	ar7,@r0
      005AA8 E5 08            [12] 8344 	mov	a,_bp
      005AAA 24 1A            [12] 8345 	add	a,#0x1a
      005AAC F8               [12] 8346 	mov	r0,a
      005AAD E6               [12] 8347 	mov	a,@r0
      005AAE 52 04            [12] 8348 	anl	ar4,a
      005AB0 08               [12] 8349 	inc	r0
      005AB1 E6               [12] 8350 	mov	a,@r0
      005AB2 52 05            [12] 8351 	anl	ar5,a
      005AB4 08               [12] 8352 	inc	r0
      005AB5 E6               [12] 8353 	mov	a,@r0
      005AB6 52 06            [12] 8354 	anl	ar6,a
      005AB8 08               [12] 8355 	inc	r0
      005AB9 E6               [12] 8356 	mov	a,@r0
      005ABA 52 07            [12] 8357 	anl	ar7,a
      005ABC EC               [12] 8358 	mov	a,r4
      005ABD 4D               [12] 8359 	orl	a,r5
      005ABE 4E               [12] 8360 	orl	a,r6
      005ABF 4F               [12] 8361 	orl	a,r7
      005AC0 60 06            [24] 8362 	jz	00168$
      005AC2 7E 31            [12] 8363 	mov	r6,#0x31
      005AC4 7F 00            [12] 8364 	mov	r7,#0x00
      005AC6 80 04            [24] 8365 	sjmp	00169$
      005AC8                       8366 00168$:
      005AC8 7E 30            [12] 8367 	mov	r6,#0x30
      005ACA 7F 00            [12] 8368 	mov	r7,#0x00
      005ACC                       8369 00169$:
      005ACC 8E 82            [24] 8370 	mov	dpl,r6
      005ACE 8F 83            [24] 8371 	mov	dph,r7
      005AD0 12 2C 1F         [24] 8372 	lcall	_putchar
                                   8373 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      005AD3 E5 08            [12] 8374 	mov	a,_bp
      005AD5 24 1A            [12] 8375 	add	a,#0x1a
      005AD7 F8               [12] 8376 	mov	r0,a
      005AD8 08               [12] 8377 	inc	r0
      005AD9 08               [12] 8378 	inc	r0
      005ADA 08               [12] 8379 	inc	r0
      005ADB E6               [12] 8380 	mov	a,@r0
      005ADC C3               [12] 8381 	clr	c
      005ADD 13               [12] 8382 	rrc	a
      005ADE F6               [12] 8383 	mov	@r0,a
      005ADF 18               [12] 8384 	dec	r0
      005AE0 E6               [12] 8385 	mov	a,@r0
      005AE1 13               [12] 8386 	rrc	a
      005AE2 F6               [12] 8387 	mov	@r0,a
      005AE3 18               [12] 8388 	dec	r0
      005AE4 E6               [12] 8389 	mov	a,@r0
      005AE5 13               [12] 8390 	rrc	a
      005AE6 F6               [12] 8391 	mov	@r0,a
      005AE7 18               [12] 8392 	dec	r0
      005AE8 E6               [12] 8393 	mov	a,@r0
      005AE9 13               [12] 8394 	rrc	a
      005AEA F6               [12] 8395 	mov	@r0,a
      005AEB E5 08            [12] 8396 	mov	a,_bp
      005AED 24 1A            [12] 8397 	add	a,#0x1a
      005AEF F8               [12] 8398 	mov	r0,a
      005AF0 E6               [12] 8399 	mov	a,@r0
      005AF1 08               [12] 8400 	inc	r0
      005AF2 46               [12] 8401 	orl	a,@r0
      005AF3 08               [12] 8402 	inc	r0
      005AF4 46               [12] 8403 	orl	a,@r0
      005AF5 08               [12] 8404 	inc	r0
      005AF6 46               [12] 8405 	orl	a,@r0
      005AF7 70 9F            [24] 8406 	jnz	00141$
                                   8407 ;	calc.c:402: if (ctx->acc_valid) printall(ctx->acc);
      005AF9                       8408 00102$:
                                   8409 ;	calc.c:404: n = stack_peek2(ctx->ps, vals);
      005AF9 E5 08            [12] 8410 	mov	a,_bp
      005AFB 24 09            [12] 8411 	add	a,#0x09
      005AFD F9               [12] 8412 	mov	r1,a
      005AFE FD               [12] 8413 	mov	r5,a
      005AFF 7E 00            [12] 8414 	mov	r6,#0x00
      005B01 7F 40            [12] 8415 	mov	r7,#0x40
      005B03 E5 08            [12] 8416 	mov	a,_bp
      005B05 24 04            [12] 8417 	add	a,#0x04
      005B07 F8               [12] 8418 	mov	r0,a
      005B08 86 82            [24] 8419 	mov	dpl,@r0
      005B0A 08               [12] 8420 	inc	r0
      005B0B 86 83            [24] 8421 	mov	dph,@r0
      005B0D 08               [12] 8422 	inc	r0
      005B0E 86 F0            [24] 8423 	mov	b,@r0
      005B10 12 6F B8         [24] 8424 	lcall	__gptrget
      005B13 FA               [12] 8425 	mov	r2,a
      005B14 A3               [24] 8426 	inc	dptr
      005B15 12 6F B8         [24] 8427 	lcall	__gptrget
      005B18 FB               [12] 8428 	mov	r3,a
      005B19 A3               [24] 8429 	inc	dptr
      005B1A 12 6F B8         [24] 8430 	lcall	__gptrget
      005B1D FC               [12] 8431 	mov	r4,a
      005B1E C0 01            [24] 8432 	push	ar1
      005B20 C0 05            [24] 8433 	push	ar5
      005B22 C0 06            [24] 8434 	push	ar6
      005B24 C0 07            [24] 8435 	push	ar7
      005B26 8A 82            [24] 8436 	mov	dpl,r2
      005B28 8B 83            [24] 8437 	mov	dph,r3
      005B2A 8C F0            [24] 8438 	mov	b,r4
      005B2C 12 29 73         [24] 8439 	lcall	_stack_peek2
      005B2F AE 82            [24] 8440 	mov	r6,dpl
      005B31 AF 83            [24] 8441 	mov	r7,dph
      005B33 15 81            [12] 8442 	dec	sp
      005B35 15 81            [12] 8443 	dec	sp
      005B37 15 81            [12] 8444 	dec	sp
      005B39 D0 01            [24] 8445 	pop	ar1
                                   8446 ;	calc.c:405: printstr("\r\nPSTOP1\t");
      005B3B 7B 1B            [12] 8447 	mov	r3,#___str_16
      005B3D 7C 89            [12] 8448 	mov	r4,#(___str_16 >> 8)
      005B3F 7D 80            [12] 8449 	mov	r5,#0x80
                                   8450 ;	calc.c:51: return;
      005B41                       8451 00144$:
                                   8452 ;	calc.c:49: for (; *s; s++) putchar(*s);
      005B41 8B 82            [24] 8453 	mov	dpl,r3
      005B43 8C 83            [24] 8454 	mov	dph,r4
      005B45 8D F0            [24] 8455 	mov	b,r5
      005B47 12 6F B8         [24] 8456 	lcall	__gptrget
      005B4A FA               [12] 8457 	mov	r2,a
      005B4B 60 18            [24] 8458 	jz	00117$
      005B4D C0 06            [24] 8459 	push	ar6
      005B4F C0 07            [24] 8460 	push	ar7
      005B51 7F 00            [12] 8461 	mov	r7,#0x00
      005B53 8A 82            [24] 8462 	mov	dpl,r2
      005B55 8F 83            [24] 8463 	mov	dph,r7
      005B57 12 2C 1F         [24] 8464 	lcall	_putchar
      005B5A 0B               [12] 8465 	inc	r3
      005B5B BB 00 01         [24] 8466 	cjne	r3,#0x00,00325$
      005B5E 0C               [12] 8467 	inc	r4
      005B5F                       8468 00325$:
      005B5F D0 07            [24] 8469 	pop	ar7
      005B61 D0 06            [24] 8470 	pop	ar6
                                   8471 ;	calc.c:405: printstr("\r\nPSTOP1\t");
      005B63 80 DC            [24] 8472 	sjmp	00144$
      005B65                       8473 00117$:
                                   8474 ;	calc.c:406: if (n > 0) printall(vals[1]);
      005B65 C3               [12] 8475 	clr	c
      005B66 E4               [12] 8476 	clr	a
      005B67 9E               [12] 8477 	subb	a,r6
      005B68 74 80            [12] 8478 	mov	a,#(0x00 ^ 0x80)
      005B6A 8F F0            [24] 8479 	mov	b,r7
      005B6C 63 F0 80         [24] 8480 	xrl	b,#0x80
      005B6F 95 F0            [12] 8481 	subb	a,b
      005B71 40 03            [24] 8482 	jc	00326$
      005B73 02 5C 76         [24] 8483 	ljmp	00104$
      005B76                       8484 00326$:
      005B76 74 04            [12] 8485 	mov	a,#0x04
      005B78 29               [12] 8486 	add	a,r1
      005B79 F8               [12] 8487 	mov	r0,a
      005B7A 86 02            [24] 8488 	mov	ar2,@r0
      005B7C 08               [12] 8489 	inc	r0
      005B7D 86 03            [24] 8490 	mov	ar3,@r0
      005B7F 08               [12] 8491 	inc	r0
      005B80 86 04            [24] 8492 	mov	ar4,@r0
      005B82 08               [12] 8493 	inc	r0
      005B83 86 05            [24] 8494 	mov	ar5,@r0
                                   8495 ;	calc.c:64: printf("% 11ld\t", d);
      005B85 C0 07            [24] 8496 	push	ar7
      005B87 C0 06            [24] 8497 	push	ar6
      005B89 C0 05            [24] 8498 	push	ar5
      005B8B C0 04            [24] 8499 	push	ar4
      005B8D C0 03            [24] 8500 	push	ar3
      005B8F C0 02            [24] 8501 	push	ar2
      005B91 C0 01            [24] 8502 	push	ar1
      005B93 C0 02            [24] 8503 	push	ar2
      005B95 C0 03            [24] 8504 	push	ar3
      005B97 C0 04            [24] 8505 	push	ar4
      005B99 C0 05            [24] 8506 	push	ar5
      005B9B 74 39            [12] 8507 	mov	a,#___str_0
      005B9D C0 E0            [24] 8508 	push	acc
      005B9F 74 88            [12] 8509 	mov	a,#(___str_0 >> 8)
      005BA1 C0 E0            [24] 8510 	push	acc
      005BA3 74 80            [12] 8511 	mov	a,#0x80
      005BA5 C0 E0            [24] 8512 	push	acc
      005BA7 12 6F 7F         [24] 8513 	lcall	_printf
      005BAA E5 81            [12] 8514 	mov	a,sp
      005BAC 24 F9            [12] 8515 	add	a,#0xf9
      005BAE F5 81            [12] 8516 	mov	sp,a
      005BB0 D0 01            [24] 8517 	pop	ar1
      005BB2 D0 02            [24] 8518 	pop	ar2
      005BB4 D0 03            [24] 8519 	pop	ar3
      005BB6 D0 04            [24] 8520 	pop	ar4
      005BB8 D0 05            [24] 8521 	pop	ar5
                                   8522 ;	calc.c:65: printf("%08lx\t", d);
      005BBA C0 05            [24] 8523 	push	ar5
      005BBC C0 04            [24] 8524 	push	ar4
      005BBE C0 03            [24] 8525 	push	ar3
      005BC0 C0 02            [24] 8526 	push	ar2
      005BC2 C0 01            [24] 8527 	push	ar1
      005BC4 C0 02            [24] 8528 	push	ar2
      005BC6 C0 03            [24] 8529 	push	ar3
      005BC8 C0 04            [24] 8530 	push	ar4
      005BCA C0 05            [24] 8531 	push	ar5
      005BCC 74 41            [12] 8532 	mov	a,#___str_1
      005BCE C0 E0            [24] 8533 	push	acc
      005BD0 74 88            [12] 8534 	mov	a,#(___str_1 >> 8)
      005BD2 C0 E0            [24] 8535 	push	acc
      005BD4 74 80            [12] 8536 	mov	a,#0x80
      005BD6 C0 E0            [24] 8537 	push	acc
      005BD8 12 6F 7F         [24] 8538 	lcall	_printf
      005BDB E5 81            [12] 8539 	mov	a,sp
      005BDD 24 F9            [12] 8540 	add	a,#0xf9
      005BDF F5 81            [12] 8541 	mov	sp,a
      005BE1 D0 01            [24] 8542 	pop	ar1
      005BE3 D0 02            [24] 8543 	pop	ar2
      005BE5 D0 03            [24] 8544 	pop	ar3
      005BE7 D0 04            [24] 8545 	pop	ar4
      005BE9 D0 05            [24] 8546 	pop	ar5
      005BEB D0 06            [24] 8547 	pop	ar6
      005BED D0 07            [24] 8548 	pop	ar7
                                   8549 ;	calc.c:66: printbin(d);
      005BEF E5 08            [12] 8550 	mov	a,_bp
      005BF1 24 16            [12] 8551 	add	a,#0x16
      005BF3 F8               [12] 8552 	mov	r0,a
      005BF4 A6 02            [24] 8553 	mov	@r0,ar2
      005BF6 08               [12] 8554 	inc	r0
      005BF7 A6 03            [24] 8555 	mov	@r0,ar3
      005BF9 08               [12] 8556 	inc	r0
      005BFA A6 04            [24] 8557 	mov	@r0,ar4
      005BFC 08               [12] 8558 	inc	r0
      005BFD A6 05            [24] 8559 	mov	@r0,ar5
                                   8560 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      005BFF E5 08            [12] 8561 	mov	a,_bp
      005C01 24 1A            [12] 8562 	add	a,#0x1a
      005C03 F8               [12] 8563 	mov	r0,a
      005C04 E4               [12] 8564 	clr	a
      005C05 F6               [12] 8565 	mov	@r0,a
      005C06 08               [12] 8566 	inc	r0
      005C07 F6               [12] 8567 	mov	@r0,a
      005C08 08               [12] 8568 	inc	r0
      005C09 F6               [12] 8569 	mov	@r0,a
      005C0A 08               [12] 8570 	inc	r0
      005C0B 76 80            [12] 8571 	mov	@r0,#0x80
      005C0D                       8572 00146$:
                                   8573 ;	calc.c:58: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      005C0D C0 06            [24] 8574 	push	ar6
      005C0F C0 07            [24] 8575 	push	ar7
      005C11 E5 08            [12] 8576 	mov	a,_bp
      005C13 24 16            [12] 8577 	add	a,#0x16
      005C15 F8               [12] 8578 	mov	r0,a
      005C16 86 04            [24] 8579 	mov	ar4,@r0
      005C18 08               [12] 8580 	inc	r0
      005C19 86 05            [24] 8581 	mov	ar5,@r0
      005C1B 08               [12] 8582 	inc	r0
      005C1C 86 06            [24] 8583 	mov	ar6,@r0
      005C1E 08               [12] 8584 	inc	r0
      005C1F 86 07            [24] 8585 	mov	ar7,@r0
      005C21 E5 08            [12] 8586 	mov	a,_bp
      005C23 24 1A            [12] 8587 	add	a,#0x1a
      005C25 F8               [12] 8588 	mov	r0,a
      005C26 E6               [12] 8589 	mov	a,@r0
      005C27 52 04            [12] 8590 	anl	ar4,a
      005C29 08               [12] 8591 	inc	r0
      005C2A E6               [12] 8592 	mov	a,@r0
      005C2B 52 05            [12] 8593 	anl	ar5,a
      005C2D 08               [12] 8594 	inc	r0
      005C2E E6               [12] 8595 	mov	a,@r0
      005C2F 52 06            [12] 8596 	anl	ar6,a
      005C31 08               [12] 8597 	inc	r0
      005C32 E6               [12] 8598 	mov	a,@r0
      005C33 52 07            [12] 8599 	anl	ar7,a
      005C35 EC               [12] 8600 	mov	a,r4
      005C36 4D               [12] 8601 	orl	a,r5
      005C37 4E               [12] 8602 	orl	a,r6
      005C38 4F               [12] 8603 	orl	a,r7
      005C39 D0 07            [24] 8604 	pop	ar7
      005C3B D0 06            [24] 8605 	pop	ar6
      005C3D 60 06            [24] 8606 	jz	00170$
      005C3F 7C 31            [12] 8607 	mov	r4,#0x31
      005C41 7D 00            [12] 8608 	mov	r5,#0x00
      005C43 80 04            [24] 8609 	sjmp	00171$
      005C45                       8610 00170$:
      005C45 7C 30            [12] 8611 	mov	r4,#0x30
      005C47 7D 00            [12] 8612 	mov	r5,#0x00
      005C49                       8613 00171$:
      005C49 8C 82            [24] 8614 	mov	dpl,r4
      005C4B 8D 83            [24] 8615 	mov	dph,r5
      005C4D 12 2C 1F         [24] 8616 	lcall	_putchar
                                   8617 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      005C50 E5 08            [12] 8618 	mov	a,_bp
      005C52 24 1A            [12] 8619 	add	a,#0x1a
      005C54 F8               [12] 8620 	mov	r0,a
      005C55 08               [12] 8621 	inc	r0
      005C56 08               [12] 8622 	inc	r0
      005C57 08               [12] 8623 	inc	r0
      005C58 E6               [12] 8624 	mov	a,@r0
      005C59 C3               [12] 8625 	clr	c
      005C5A 13               [12] 8626 	rrc	a
      005C5B F6               [12] 8627 	mov	@r0,a
      005C5C 18               [12] 8628 	dec	r0
      005C5D E6               [12] 8629 	mov	a,@r0
      005C5E 13               [12] 8630 	rrc	a
      005C5F F6               [12] 8631 	mov	@r0,a
      005C60 18               [12] 8632 	dec	r0
      005C61 E6               [12] 8633 	mov	a,@r0
      005C62 13               [12] 8634 	rrc	a
      005C63 F6               [12] 8635 	mov	@r0,a
      005C64 18               [12] 8636 	dec	r0
      005C65 E6               [12] 8637 	mov	a,@r0
      005C66 13               [12] 8638 	rrc	a
      005C67 F6               [12] 8639 	mov	@r0,a
      005C68 E5 08            [12] 8640 	mov	a,_bp
      005C6A 24 1A            [12] 8641 	add	a,#0x1a
      005C6C F8               [12] 8642 	mov	r0,a
      005C6D E6               [12] 8643 	mov	a,@r0
      005C6E 08               [12] 8644 	inc	r0
      005C6F 46               [12] 8645 	orl	a,@r0
      005C70 08               [12] 8646 	inc	r0
      005C71 46               [12] 8647 	orl	a,@r0
      005C72 08               [12] 8648 	inc	r0
      005C73 46               [12] 8649 	orl	a,@r0
      005C74 70 97            [24] 8650 	jnz	00146$
                                   8651 ;	calc.c:406: if (n > 0) printall(vals[1]);
      005C76                       8652 00104$:
                                   8653 ;	calc.c:407: printstr("\r\nPSTOP0\t");
      005C76 7B 25            [12] 8654 	mov	r3,#___str_17
      005C78 7C 89            [12] 8655 	mov	r4,#(___str_17 >> 8)
      005C7A 7D 80            [12] 8656 	mov	r5,#0x80
                                   8657 ;	calc.c:51: return;
      005C7C                       8658 00149$:
                                   8659 ;	calc.c:49: for (; *s; s++) putchar(*s);
      005C7C 8B 82            [24] 8660 	mov	dpl,r3
      005C7E 8C 83            [24] 8661 	mov	dph,r4
      005C80 8D F0            [24] 8662 	mov	b,r5
      005C82 12 6F B8         [24] 8663 	lcall	__gptrget
      005C85 FA               [12] 8664 	mov	r2,a
      005C86 60 18            [24] 8665 	jz	00122$
      005C88 C0 06            [24] 8666 	push	ar6
      005C8A C0 07            [24] 8667 	push	ar7
      005C8C 7F 00            [12] 8668 	mov	r7,#0x00
      005C8E 8A 82            [24] 8669 	mov	dpl,r2
      005C90 8F 83            [24] 8670 	mov	dph,r7
      005C92 12 2C 1F         [24] 8671 	lcall	_putchar
      005C95 0B               [12] 8672 	inc	r3
      005C96 BB 00 01         [24] 8673 	cjne	r3,#0x00,00330$
      005C99 0C               [12] 8674 	inc	r4
      005C9A                       8675 00330$:
      005C9A D0 07            [24] 8676 	pop	ar7
      005C9C D0 06            [24] 8677 	pop	ar6
                                   8678 ;	calc.c:407: printstr("\r\nPSTOP0\t");
      005C9E 80 DC            [24] 8679 	sjmp	00149$
      005CA0                       8680 00122$:
                                   8681 ;	calc.c:408: if (n > 1) printall(vals[0]);
      005CA0 C3               [12] 8682 	clr	c
      005CA1 74 01            [12] 8683 	mov	a,#0x01
      005CA3 9E               [12] 8684 	subb	a,r6
      005CA4 74 80            [12] 8685 	mov	a,#(0x00 ^ 0x80)
      005CA6 8F F0            [24] 8686 	mov	b,r7
      005CA8 63 F0 80         [24] 8687 	xrl	b,#0x80
      005CAB 95 F0            [12] 8688 	subb	a,b
      005CAD 40 03            [24] 8689 	jc	00331$
      005CAF 02 5D A5         [24] 8690 	ljmp	00106$
      005CB2                       8691 00331$:
      005CB2 87 04            [24] 8692 	mov	ar4,@r1
      005CB4 09               [12] 8693 	inc	r1
      005CB5 87 05            [24] 8694 	mov	ar5,@r1
      005CB7 09               [12] 8695 	inc	r1
      005CB8 87 06            [24] 8696 	mov	ar6,@r1
      005CBA 09               [12] 8697 	inc	r1
      005CBB 87 07            [24] 8698 	mov	ar7,@r1
      005CBD 19               [12] 8699 	dec	r1
      005CBE 19               [12] 8700 	dec	r1
      005CBF 19               [12] 8701 	dec	r1
                                   8702 ;	calc.c:64: printf("% 11ld\t", d);
      005CC0 C0 07            [24] 8703 	push	ar7
      005CC2 C0 06            [24] 8704 	push	ar6
      005CC4 C0 05            [24] 8705 	push	ar5
      005CC6 C0 04            [24] 8706 	push	ar4
      005CC8 C0 01            [24] 8707 	push	ar1
      005CCA C0 04            [24] 8708 	push	ar4
      005CCC C0 05            [24] 8709 	push	ar5
      005CCE C0 06            [24] 8710 	push	ar6
      005CD0 C0 07            [24] 8711 	push	ar7
      005CD2 74 39            [12] 8712 	mov	a,#___str_0
      005CD4 C0 E0            [24] 8713 	push	acc
      005CD6 74 88            [12] 8714 	mov	a,#(___str_0 >> 8)
      005CD8 C0 E0            [24] 8715 	push	acc
      005CDA 74 80            [12] 8716 	mov	a,#0x80
      005CDC C0 E0            [24] 8717 	push	acc
      005CDE 12 6F 7F         [24] 8718 	lcall	_printf
      005CE1 E5 81            [12] 8719 	mov	a,sp
      005CE3 24 F9            [12] 8720 	add	a,#0xf9
      005CE5 F5 81            [12] 8721 	mov	sp,a
      005CE7 D0 01            [24] 8722 	pop	ar1
      005CE9 D0 04            [24] 8723 	pop	ar4
      005CEB D0 05            [24] 8724 	pop	ar5
      005CED D0 06            [24] 8725 	pop	ar6
      005CEF D0 07            [24] 8726 	pop	ar7
                                   8727 ;	calc.c:65: printf("%08lx\t", d);
      005CF1 C0 07            [24] 8728 	push	ar7
      005CF3 C0 06            [24] 8729 	push	ar6
      005CF5 C0 05            [24] 8730 	push	ar5
      005CF7 C0 04            [24] 8731 	push	ar4
      005CF9 C0 01            [24] 8732 	push	ar1
      005CFB C0 04            [24] 8733 	push	ar4
      005CFD C0 05            [24] 8734 	push	ar5
      005CFF C0 06            [24] 8735 	push	ar6
      005D01 C0 07            [24] 8736 	push	ar7
      005D03 74 41            [12] 8737 	mov	a,#___str_1
      005D05 C0 E0            [24] 8738 	push	acc
      005D07 74 88            [12] 8739 	mov	a,#(___str_1 >> 8)
      005D09 C0 E0            [24] 8740 	push	acc
      005D0B 74 80            [12] 8741 	mov	a,#0x80
      005D0D C0 E0            [24] 8742 	push	acc
      005D0F 12 6F 7F         [24] 8743 	lcall	_printf
      005D12 E5 81            [12] 8744 	mov	a,sp
      005D14 24 F9            [12] 8745 	add	a,#0xf9
      005D16 F5 81            [12] 8746 	mov	sp,a
      005D18 D0 01            [24] 8747 	pop	ar1
      005D1A D0 04            [24] 8748 	pop	ar4
      005D1C D0 05            [24] 8749 	pop	ar5
      005D1E D0 06            [24] 8750 	pop	ar6
      005D20 D0 07            [24] 8751 	pop	ar7
                                   8752 ;	calc.c:66: printbin(d);
      005D22 E5 08            [12] 8753 	mov	a,_bp
      005D24 24 16            [12] 8754 	add	a,#0x16
      005D26 F8               [12] 8755 	mov	r0,a
      005D27 A6 04            [24] 8756 	mov	@r0,ar4
      005D29 08               [12] 8757 	inc	r0
      005D2A A6 05            [24] 8758 	mov	@r0,ar5
      005D2C 08               [12] 8759 	inc	r0
      005D2D A6 06            [24] 8760 	mov	@r0,ar6
      005D2F 08               [12] 8761 	inc	r0
      005D30 A6 07            [24] 8762 	mov	@r0,ar7
                                   8763 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      005D32 E5 08            [12] 8764 	mov	a,_bp
      005D34 24 1A            [12] 8765 	add	a,#0x1a
      005D36 F8               [12] 8766 	mov	r0,a
      005D37 E4               [12] 8767 	clr	a
      005D38 F6               [12] 8768 	mov	@r0,a
      005D39 08               [12] 8769 	inc	r0
      005D3A F6               [12] 8770 	mov	@r0,a
      005D3B 08               [12] 8771 	inc	r0
      005D3C F6               [12] 8772 	mov	@r0,a
      005D3D 08               [12] 8773 	inc	r0
      005D3E 76 80            [12] 8774 	mov	@r0,#0x80
      005D40                       8775 00151$:
                                   8776 ;	calc.c:58: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      005D40 C0 01            [24] 8777 	push	ar1
      005D42 E5 08            [12] 8778 	mov	a,_bp
      005D44 24 16            [12] 8779 	add	a,#0x16
      005D46 F8               [12] 8780 	mov	r0,a
      005D47 86 04            [24] 8781 	mov	ar4,@r0
      005D49 08               [12] 8782 	inc	r0
      005D4A 86 05            [24] 8783 	mov	ar5,@r0
      005D4C 08               [12] 8784 	inc	r0
      005D4D 86 06            [24] 8785 	mov	ar6,@r0
      005D4F 08               [12] 8786 	inc	r0
      005D50 86 07            [24] 8787 	mov	ar7,@r0
      005D52 E5 08            [12] 8788 	mov	a,_bp
      005D54 24 1A            [12] 8789 	add	a,#0x1a
      005D56 F8               [12] 8790 	mov	r0,a
      005D57 E6               [12] 8791 	mov	a,@r0
      005D58 52 04            [12] 8792 	anl	ar4,a
      005D5A 08               [12] 8793 	inc	r0
      005D5B E6               [12] 8794 	mov	a,@r0
      005D5C 52 05            [12] 8795 	anl	ar5,a
      005D5E 08               [12] 8796 	inc	r0
      005D5F E6               [12] 8797 	mov	a,@r0
      005D60 52 06            [12] 8798 	anl	ar6,a
      005D62 08               [12] 8799 	inc	r0
      005D63 E6               [12] 8800 	mov	a,@r0
      005D64 52 07            [12] 8801 	anl	ar7,a
      005D66 D0 01            [24] 8802 	pop	ar1
      005D68 EC               [12] 8803 	mov	a,r4
      005D69 4D               [12] 8804 	orl	a,r5
      005D6A 4E               [12] 8805 	orl	a,r6
      005D6B 4F               [12] 8806 	orl	a,r7
      005D6C 60 06            [24] 8807 	jz	00172$
      005D6E 7E 31            [12] 8808 	mov	r6,#0x31
      005D70 7F 00            [12] 8809 	mov	r7,#0x00
      005D72 80 04            [24] 8810 	sjmp	00173$
      005D74                       8811 00172$:
      005D74 7E 30            [12] 8812 	mov	r6,#0x30
      005D76 7F 00            [12] 8813 	mov	r7,#0x00
      005D78                       8814 00173$:
      005D78 8E 82            [24] 8815 	mov	dpl,r6
      005D7A 8F 83            [24] 8816 	mov	dph,r7
      005D7C 12 2C 1F         [24] 8817 	lcall	_putchar
                                   8818 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      005D7F E5 08            [12] 8819 	mov	a,_bp
      005D81 24 1A            [12] 8820 	add	a,#0x1a
      005D83 F8               [12] 8821 	mov	r0,a
      005D84 08               [12] 8822 	inc	r0
      005D85 08               [12] 8823 	inc	r0
      005D86 08               [12] 8824 	inc	r0
      005D87 E6               [12] 8825 	mov	a,@r0
      005D88 C3               [12] 8826 	clr	c
      005D89 13               [12] 8827 	rrc	a
      005D8A F6               [12] 8828 	mov	@r0,a
      005D8B 18               [12] 8829 	dec	r0
      005D8C E6               [12] 8830 	mov	a,@r0
      005D8D 13               [12] 8831 	rrc	a
      005D8E F6               [12] 8832 	mov	@r0,a
      005D8F 18               [12] 8833 	dec	r0
      005D90 E6               [12] 8834 	mov	a,@r0
      005D91 13               [12] 8835 	rrc	a
      005D92 F6               [12] 8836 	mov	@r0,a
      005D93 18               [12] 8837 	dec	r0
      005D94 E6               [12] 8838 	mov	a,@r0
      005D95 13               [12] 8839 	rrc	a
      005D96 F6               [12] 8840 	mov	@r0,a
      005D97 E5 08            [12] 8841 	mov	a,_bp
      005D99 24 1A            [12] 8842 	add	a,#0x1a
      005D9B F8               [12] 8843 	mov	r0,a
      005D9C E6               [12] 8844 	mov	a,@r0
      005D9D 08               [12] 8845 	inc	r0
      005D9E 46               [12] 8846 	orl	a,@r0
      005D9F 08               [12] 8847 	inc	r0
      005DA0 46               [12] 8848 	orl	a,@r0
      005DA1 08               [12] 8849 	inc	r0
      005DA2 46               [12] 8850 	orl	a,@r0
      005DA3 70 9B            [24] 8851 	jnz	00151$
                                   8852 ;	calc.c:408: if (n > 1) printall(vals[0]);
      005DA5                       8853 00106$:
                                   8854 ;	calc.c:410: n = stack_peek2(ctx->ss, vals);
      005DA5 89 07            [24] 8855 	mov	ar7,r1
      005DA7 7E 00            [12] 8856 	mov	r6,#0x00
      005DA9 7D 40            [12] 8857 	mov	r5,#0x40
      005DAB A8 08            [24] 8858 	mov	r0,_bp
      005DAD 08               [12] 8859 	inc	r0
      005DAE 86 82            [24] 8860 	mov	dpl,@r0
      005DB0 08               [12] 8861 	inc	r0
      005DB1 86 83            [24] 8862 	mov	dph,@r0
      005DB3 08               [12] 8863 	inc	r0
      005DB4 86 F0            [24] 8864 	mov	b,@r0
      005DB6 12 6F B8         [24] 8865 	lcall	__gptrget
      005DB9 FA               [12] 8866 	mov	r2,a
      005DBA A3               [24] 8867 	inc	dptr
      005DBB 12 6F B8         [24] 8868 	lcall	__gptrget
      005DBE FB               [12] 8869 	mov	r3,a
      005DBF A3               [24] 8870 	inc	dptr
      005DC0 12 6F B8         [24] 8871 	lcall	__gptrget
      005DC3 FC               [12] 8872 	mov	r4,a
      005DC4 C0 01            [24] 8873 	push	ar1
      005DC6 C0 07            [24] 8874 	push	ar7
      005DC8 C0 06            [24] 8875 	push	ar6
      005DCA C0 05            [24] 8876 	push	ar5
      005DCC 8A 82            [24] 8877 	mov	dpl,r2
      005DCE 8B 83            [24] 8878 	mov	dph,r3
      005DD0 8C F0            [24] 8879 	mov	b,r4
      005DD2 12 29 73         [24] 8880 	lcall	_stack_peek2
      005DD5 AE 82            [24] 8881 	mov	r6,dpl
      005DD7 AF 83            [24] 8882 	mov	r7,dph
      005DD9 15 81            [12] 8883 	dec	sp
      005DDB 15 81            [12] 8884 	dec	sp
      005DDD 15 81            [12] 8885 	dec	sp
      005DDF D0 01            [24] 8886 	pop	ar1
      005DE1 E5 08            [12] 8887 	mov	a,_bp
      005DE3 24 14            [12] 8888 	add	a,#0x14
      005DE5 F8               [12] 8889 	mov	r0,a
      005DE6 A6 06            [24] 8890 	mov	@r0,ar6
      005DE8 08               [12] 8891 	inc	r0
      005DE9 A6 07            [24] 8892 	mov	@r0,ar7
                                   8893 ;	calc.c:411: printstr("\r\nSSTOP1\t");
      005DEB 7B 2F            [12] 8894 	mov	r3,#___str_18
      005DED 7C 89            [12] 8895 	mov	r4,#(___str_18 >> 8)
      005DEF 7D 80            [12] 8896 	mov	r5,#0x80
                                   8897 ;	calc.c:51: return;
      005DF1                       8898 00154$:
                                   8899 ;	calc.c:49: for (; *s; s++) putchar(*s);
      005DF1 8B 82            [24] 8900 	mov	dpl,r3
      005DF3 8C 83            [24] 8901 	mov	dph,r4
      005DF5 8D F0            [24] 8902 	mov	b,r5
      005DF7 12 6F B8         [24] 8903 	lcall	__gptrget
      005DFA FA               [12] 8904 	mov	r2,a
      005DFB 60 10            [24] 8905 	jz	00127$
      005DFD 7F 00            [12] 8906 	mov	r7,#0x00
      005DFF 8A 82            [24] 8907 	mov	dpl,r2
      005E01 8F 83            [24] 8908 	mov	dph,r7
      005E03 12 2C 1F         [24] 8909 	lcall	_putchar
      005E06 0B               [12] 8910 	inc	r3
                                   8911 ;	calc.c:411: printstr("\r\nSSTOP1\t");
      005E07 BB 00 E7         [24] 8912 	cjne	r3,#0x00,00154$
      005E0A 0C               [12] 8913 	inc	r4
      005E0B 80 E4            [24] 8914 	sjmp	00154$
      005E0D                       8915 00127$:
                                   8916 ;	calc.c:412: if (n > 0) printall(vals[1]);
      005E0D E5 08            [12] 8917 	mov	a,_bp
      005E0F 24 14            [12] 8918 	add	a,#0x14
      005E11 F8               [12] 8919 	mov	r0,a
      005E12 C3               [12] 8920 	clr	c
      005E13 E4               [12] 8921 	clr	a
      005E14 96               [12] 8922 	subb	a,@r0
      005E15 74 80            [12] 8923 	mov	a,#(0x00 ^ 0x80)
      005E17 08               [12] 8924 	inc	r0
      005E18 86 F0            [24] 8925 	mov	b,@r0
      005E1A 63 F0 80         [24] 8926 	xrl	b,#0x80
      005E1D 95 F0            [12] 8927 	subb	a,b
      005E1F 40 03            [24] 8928 	jc	00336$
      005E21 02 5F 18         [24] 8929 	ljmp	00108$
      005E24                       8930 00336$:
      005E24 74 04            [12] 8931 	mov	a,#0x04
      005E26 29               [12] 8932 	add	a,r1
      005E27 F8               [12] 8933 	mov	r0,a
      005E28 86 02            [24] 8934 	mov	ar2,@r0
      005E2A 08               [12] 8935 	inc	r0
      005E2B 86 03            [24] 8936 	mov	ar3,@r0
      005E2D 08               [12] 8937 	inc	r0
      005E2E 86 04            [24] 8938 	mov	ar4,@r0
      005E30 08               [12] 8939 	inc	r0
      005E31 86 05            [24] 8940 	mov	ar5,@r0
                                   8941 ;	calc.c:64: printf("% 11ld\t", d);
      005E33 C0 05            [24] 8942 	push	ar5
      005E35 C0 04            [24] 8943 	push	ar4
      005E37 C0 03            [24] 8944 	push	ar3
      005E39 C0 02            [24] 8945 	push	ar2
      005E3B C0 01            [24] 8946 	push	ar1
      005E3D C0 02            [24] 8947 	push	ar2
      005E3F C0 03            [24] 8948 	push	ar3
      005E41 C0 04            [24] 8949 	push	ar4
      005E43 C0 05            [24] 8950 	push	ar5
      005E45 74 39            [12] 8951 	mov	a,#___str_0
      005E47 C0 E0            [24] 8952 	push	acc
      005E49 74 88            [12] 8953 	mov	a,#(___str_0 >> 8)
      005E4B C0 E0            [24] 8954 	push	acc
      005E4D 74 80            [12] 8955 	mov	a,#0x80
      005E4F C0 E0            [24] 8956 	push	acc
      005E51 12 6F 7F         [24] 8957 	lcall	_printf
      005E54 E5 81            [12] 8958 	mov	a,sp
      005E56 24 F9            [12] 8959 	add	a,#0xf9
      005E58 F5 81            [12] 8960 	mov	sp,a
      005E5A D0 01            [24] 8961 	pop	ar1
      005E5C D0 02            [24] 8962 	pop	ar2
      005E5E D0 03            [24] 8963 	pop	ar3
      005E60 D0 04            [24] 8964 	pop	ar4
      005E62 D0 05            [24] 8965 	pop	ar5
                                   8966 ;	calc.c:65: printf("%08lx\t", d);
      005E64 C0 05            [24] 8967 	push	ar5
      005E66 C0 04            [24] 8968 	push	ar4
      005E68 C0 03            [24] 8969 	push	ar3
      005E6A C0 02            [24] 8970 	push	ar2
      005E6C C0 01            [24] 8971 	push	ar1
      005E6E C0 02            [24] 8972 	push	ar2
      005E70 C0 03            [24] 8973 	push	ar3
      005E72 C0 04            [24] 8974 	push	ar4
      005E74 C0 05            [24] 8975 	push	ar5
      005E76 74 41            [12] 8976 	mov	a,#___str_1
      005E78 C0 E0            [24] 8977 	push	acc
      005E7A 74 88            [12] 8978 	mov	a,#(___str_1 >> 8)
      005E7C C0 E0            [24] 8979 	push	acc
      005E7E 74 80            [12] 8980 	mov	a,#0x80
      005E80 C0 E0            [24] 8981 	push	acc
      005E82 12 6F 7F         [24] 8982 	lcall	_printf
      005E85 E5 81            [12] 8983 	mov	a,sp
      005E87 24 F9            [12] 8984 	add	a,#0xf9
      005E89 F5 81            [12] 8985 	mov	sp,a
      005E8B D0 01            [24] 8986 	pop	ar1
      005E8D D0 02            [24] 8987 	pop	ar2
      005E8F D0 03            [24] 8988 	pop	ar3
      005E91 D0 04            [24] 8989 	pop	ar4
      005E93 D0 05            [24] 8990 	pop	ar5
                                   8991 ;	calc.c:66: printbin(d);
      005E95 E5 08            [12] 8992 	mov	a,_bp
      005E97 24 16            [12] 8993 	add	a,#0x16
      005E99 F8               [12] 8994 	mov	r0,a
      005E9A A6 02            [24] 8995 	mov	@r0,ar2
      005E9C 08               [12] 8996 	inc	r0
      005E9D A6 03            [24] 8997 	mov	@r0,ar3
      005E9F 08               [12] 8998 	inc	r0
      005EA0 A6 04            [24] 8999 	mov	@r0,ar4
      005EA2 08               [12] 9000 	inc	r0
      005EA3 A6 05            [24] 9001 	mov	@r0,ar5
                                   9002 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      005EA5 E5 08            [12] 9003 	mov	a,_bp
      005EA7 24 1A            [12] 9004 	add	a,#0x1a
      005EA9 F8               [12] 9005 	mov	r0,a
      005EAA E4               [12] 9006 	clr	a
      005EAB F6               [12] 9007 	mov	@r0,a
      005EAC 08               [12] 9008 	inc	r0
      005EAD F6               [12] 9009 	mov	@r0,a
      005EAE 08               [12] 9010 	inc	r0
      005EAF F6               [12] 9011 	mov	@r0,a
      005EB0 08               [12] 9012 	inc	r0
      005EB1 76 80            [12] 9013 	mov	@r0,#0x80
      005EB3                       9014 00156$:
                                   9015 ;	calc.c:58: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      005EB3 C0 01            [24] 9016 	push	ar1
      005EB5 E5 08            [12] 9017 	mov	a,_bp
      005EB7 24 16            [12] 9018 	add	a,#0x16
      005EB9 F8               [12] 9019 	mov	r0,a
      005EBA 86 02            [24] 9020 	mov	ar2,@r0
      005EBC 08               [12] 9021 	inc	r0
      005EBD 86 03            [24] 9022 	mov	ar3,@r0
      005EBF 08               [12] 9023 	inc	r0
      005EC0 86 05            [24] 9024 	mov	ar5,@r0
      005EC2 08               [12] 9025 	inc	r0
      005EC3 86 07            [24] 9026 	mov	ar7,@r0
      005EC5 E5 08            [12] 9027 	mov	a,_bp
      005EC7 24 1A            [12] 9028 	add	a,#0x1a
      005EC9 F8               [12] 9029 	mov	r0,a
      005ECA E6               [12] 9030 	mov	a,@r0
      005ECB 52 02            [12] 9031 	anl	ar2,a
      005ECD 08               [12] 9032 	inc	r0
      005ECE E6               [12] 9033 	mov	a,@r0
      005ECF 52 03            [12] 9034 	anl	ar3,a
      005ED1 08               [12] 9035 	inc	r0
      005ED2 E6               [12] 9036 	mov	a,@r0
      005ED3 52 05            [12] 9037 	anl	ar5,a
      005ED5 08               [12] 9038 	inc	r0
      005ED6 E6               [12] 9039 	mov	a,@r0
      005ED7 52 07            [12] 9040 	anl	ar7,a
      005ED9 D0 01            [24] 9041 	pop	ar1
      005EDB EA               [12] 9042 	mov	a,r2
      005EDC 4B               [12] 9043 	orl	a,r3
      005EDD 4D               [12] 9044 	orl	a,r5
      005EDE 4F               [12] 9045 	orl	a,r7
      005EDF 60 06            [24] 9046 	jz	00174$
      005EE1 7E 31            [12] 9047 	mov	r6,#0x31
      005EE3 7F 00            [12] 9048 	mov	r7,#0x00
      005EE5 80 04            [24] 9049 	sjmp	00175$
      005EE7                       9050 00174$:
      005EE7 7E 30            [12] 9051 	mov	r6,#0x30
      005EE9 7F 00            [12] 9052 	mov	r7,#0x00
      005EEB                       9053 00175$:
      005EEB 8E 82            [24] 9054 	mov	dpl,r6
      005EED 8F 83            [24] 9055 	mov	dph,r7
      005EEF 12 2C 1F         [24] 9056 	lcall	_putchar
                                   9057 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      005EF2 E5 08            [12] 9058 	mov	a,_bp
      005EF4 24 1A            [12] 9059 	add	a,#0x1a
      005EF6 F8               [12] 9060 	mov	r0,a
      005EF7 08               [12] 9061 	inc	r0
      005EF8 08               [12] 9062 	inc	r0
      005EF9 08               [12] 9063 	inc	r0
      005EFA E6               [12] 9064 	mov	a,@r0
      005EFB C3               [12] 9065 	clr	c
      005EFC 13               [12] 9066 	rrc	a
      005EFD F6               [12] 9067 	mov	@r0,a
      005EFE 18               [12] 9068 	dec	r0
      005EFF E6               [12] 9069 	mov	a,@r0
      005F00 13               [12] 9070 	rrc	a
      005F01 F6               [12] 9071 	mov	@r0,a
      005F02 18               [12] 9072 	dec	r0
      005F03 E6               [12] 9073 	mov	a,@r0
      005F04 13               [12] 9074 	rrc	a
      005F05 F6               [12] 9075 	mov	@r0,a
      005F06 18               [12] 9076 	dec	r0
      005F07 E6               [12] 9077 	mov	a,@r0
      005F08 13               [12] 9078 	rrc	a
      005F09 F6               [12] 9079 	mov	@r0,a
      005F0A E5 08            [12] 9080 	mov	a,_bp
      005F0C 24 1A            [12] 9081 	add	a,#0x1a
      005F0E F8               [12] 9082 	mov	r0,a
      005F0F E6               [12] 9083 	mov	a,@r0
      005F10 08               [12] 9084 	inc	r0
      005F11 46               [12] 9085 	orl	a,@r0
      005F12 08               [12] 9086 	inc	r0
      005F13 46               [12] 9087 	orl	a,@r0
      005F14 08               [12] 9088 	inc	r0
      005F15 46               [12] 9089 	orl	a,@r0
      005F16 70 9B            [24] 9090 	jnz	00156$
                                   9091 ;	calc.c:412: if (n > 0) printall(vals[1]);
      005F18                       9092 00108$:
                                   9093 ;	calc.c:413: printstr("\r\nSSTOP0\t");
      005F18 7D 39            [12] 9094 	mov	r5,#___str_19
      005F1A 7E 89            [12] 9095 	mov	r6,#(___str_19 >> 8)
      005F1C 7F 80            [12] 9096 	mov	r7,#0x80
                                   9097 ;	calc.c:51: return;
      005F1E                       9098 00159$:
                                   9099 ;	calc.c:49: for (; *s; s++) putchar(*s);
      005F1E 8D 82            [24] 9100 	mov	dpl,r5
      005F20 8E 83            [24] 9101 	mov	dph,r6
      005F22 8F F0            [24] 9102 	mov	b,r7
      005F24 12 6F B8         [24] 9103 	lcall	__gptrget
      005F27 FC               [12] 9104 	mov	r4,a
      005F28 60 10            [24] 9105 	jz	00132$
      005F2A 7B 00            [12] 9106 	mov	r3,#0x00
      005F2C 8C 82            [24] 9107 	mov	dpl,r4
      005F2E 8B 83            [24] 9108 	mov	dph,r3
      005F30 12 2C 1F         [24] 9109 	lcall	_putchar
      005F33 0D               [12] 9110 	inc	r5
                                   9111 ;	calc.c:413: printstr("\r\nSSTOP0\t");
      005F34 BD 00 E7         [24] 9112 	cjne	r5,#0x00,00159$
      005F37 0E               [12] 9113 	inc	r6
      005F38 80 E4            [24] 9114 	sjmp	00159$
      005F3A                       9115 00132$:
                                   9116 ;	calc.c:414: if (n > 1) printall(vals[0]);
      005F3A E5 08            [12] 9117 	mov	a,_bp
      005F3C 24 14            [12] 9118 	add	a,#0x14
      005F3E F8               [12] 9119 	mov	r0,a
      005F3F C3               [12] 9120 	clr	c
      005F40 74 01            [12] 9121 	mov	a,#0x01
      005F42 96               [12] 9122 	subb	a,@r0
      005F43 74 80            [12] 9123 	mov	a,#(0x00 ^ 0x80)
      005F45 08               [12] 9124 	inc	r0
      005F46 86 F0            [24] 9125 	mov	b,@r0
      005F48 63 F0 80         [24] 9126 	xrl	b,#0x80
      005F4B 95 F0            [12] 9127 	subb	a,b
      005F4D 40 03            [24] 9128 	jc	00341$
      005F4F 02 60 36         [24] 9129 	ljmp	00110$
      005F52                       9130 00341$:
      005F52 87 04            [24] 9131 	mov	ar4,@r1
      005F54 09               [12] 9132 	inc	r1
      005F55 87 05            [24] 9133 	mov	ar5,@r1
      005F57 09               [12] 9134 	inc	r1
      005F58 87 06            [24] 9135 	mov	ar6,@r1
      005F5A 09               [12] 9136 	inc	r1
      005F5B 87 07            [24] 9137 	mov	ar7,@r1
                                   9138 ;	calc.c:64: printf("% 11ld\t", d);
      005F5D C0 07            [24] 9139 	push	ar7
      005F5F C0 06            [24] 9140 	push	ar6
      005F61 C0 05            [24] 9141 	push	ar5
      005F63 C0 04            [24] 9142 	push	ar4
      005F65 C0 04            [24] 9143 	push	ar4
      005F67 C0 05            [24] 9144 	push	ar5
      005F69 C0 06            [24] 9145 	push	ar6
      005F6B C0 07            [24] 9146 	push	ar7
      005F6D 74 39            [12] 9147 	mov	a,#___str_0
      005F6F C0 E0            [24] 9148 	push	acc
      005F71 74 88            [12] 9149 	mov	a,#(___str_0 >> 8)
      005F73 C0 E0            [24] 9150 	push	acc
      005F75 74 80            [12] 9151 	mov	a,#0x80
      005F77 C0 E0            [24] 9152 	push	acc
      005F79 12 6F 7F         [24] 9153 	lcall	_printf
      005F7C E5 81            [12] 9154 	mov	a,sp
      005F7E 24 F9            [12] 9155 	add	a,#0xf9
      005F80 F5 81            [12] 9156 	mov	sp,a
      005F82 D0 04            [24] 9157 	pop	ar4
      005F84 D0 05            [24] 9158 	pop	ar5
      005F86 D0 06            [24] 9159 	pop	ar6
      005F88 D0 07            [24] 9160 	pop	ar7
                                   9161 ;	calc.c:65: printf("%08lx\t", d);
      005F8A C0 07            [24] 9162 	push	ar7
      005F8C C0 06            [24] 9163 	push	ar6
      005F8E C0 05            [24] 9164 	push	ar5
      005F90 C0 04            [24] 9165 	push	ar4
      005F92 C0 04            [24] 9166 	push	ar4
      005F94 C0 05            [24] 9167 	push	ar5
      005F96 C0 06            [24] 9168 	push	ar6
      005F98 C0 07            [24] 9169 	push	ar7
      005F9A 74 41            [12] 9170 	mov	a,#___str_1
      005F9C C0 E0            [24] 9171 	push	acc
      005F9E 74 88            [12] 9172 	mov	a,#(___str_1 >> 8)
      005FA0 C0 E0            [24] 9173 	push	acc
      005FA2 74 80            [12] 9174 	mov	a,#0x80
      005FA4 C0 E0            [24] 9175 	push	acc
      005FA6 12 6F 7F         [24] 9176 	lcall	_printf
      005FA9 E5 81            [12] 9177 	mov	a,sp
      005FAB 24 F9            [12] 9178 	add	a,#0xf9
      005FAD F5 81            [12] 9179 	mov	sp,a
      005FAF D0 04            [24] 9180 	pop	ar4
      005FB1 D0 05            [24] 9181 	pop	ar5
      005FB3 D0 06            [24] 9182 	pop	ar6
      005FB5 D0 07            [24] 9183 	pop	ar7
                                   9184 ;	calc.c:66: printbin(d);
      005FB7 E5 08            [12] 9185 	mov	a,_bp
      005FB9 24 16            [12] 9186 	add	a,#0x16
      005FBB F8               [12] 9187 	mov	r0,a
      005FBC A6 04            [24] 9188 	mov	@r0,ar4
      005FBE 08               [12] 9189 	inc	r0
      005FBF A6 05            [24] 9190 	mov	@r0,ar5
      005FC1 08               [12] 9191 	inc	r0
      005FC2 A6 06            [24] 9192 	mov	@r0,ar6
      005FC4 08               [12] 9193 	inc	r0
      005FC5 A6 07            [24] 9194 	mov	@r0,ar7
                                   9195 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      005FC7 E5 08            [12] 9196 	mov	a,_bp
      005FC9 24 1A            [12] 9197 	add	a,#0x1a
      005FCB F8               [12] 9198 	mov	r0,a
      005FCC E4               [12] 9199 	clr	a
      005FCD F6               [12] 9200 	mov	@r0,a
      005FCE 08               [12] 9201 	inc	r0
      005FCF F6               [12] 9202 	mov	@r0,a
      005FD0 08               [12] 9203 	inc	r0
      005FD1 F6               [12] 9204 	mov	@r0,a
      005FD2 08               [12] 9205 	inc	r0
      005FD3 76 80            [12] 9206 	mov	@r0,#0x80
      005FD5                       9207 00161$:
                                   9208 ;	calc.c:58: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      005FD5 E5 08            [12] 9209 	mov	a,_bp
      005FD7 24 16            [12] 9210 	add	a,#0x16
      005FD9 F8               [12] 9211 	mov	r0,a
      005FDA 86 04            [24] 9212 	mov	ar4,@r0
      005FDC 08               [12] 9213 	inc	r0
      005FDD 86 05            [24] 9214 	mov	ar5,@r0
      005FDF 08               [12] 9215 	inc	r0
      005FE0 86 06            [24] 9216 	mov	ar6,@r0
      005FE2 08               [12] 9217 	inc	r0
      005FE3 86 07            [24] 9218 	mov	ar7,@r0
      005FE5 E5 08            [12] 9219 	mov	a,_bp
      005FE7 24 1A            [12] 9220 	add	a,#0x1a
      005FE9 F8               [12] 9221 	mov	r0,a
      005FEA E6               [12] 9222 	mov	a,@r0
      005FEB 52 04            [12] 9223 	anl	ar4,a
      005FED 08               [12] 9224 	inc	r0
      005FEE E6               [12] 9225 	mov	a,@r0
      005FEF 52 05            [12] 9226 	anl	ar5,a
      005FF1 08               [12] 9227 	inc	r0
      005FF2 E6               [12] 9228 	mov	a,@r0
      005FF3 52 06            [12] 9229 	anl	ar6,a
      005FF5 08               [12] 9230 	inc	r0
      005FF6 E6               [12] 9231 	mov	a,@r0
      005FF7 52 07            [12] 9232 	anl	ar7,a
      005FF9 EC               [12] 9233 	mov	a,r4
      005FFA 4D               [12] 9234 	orl	a,r5
      005FFB 4E               [12] 9235 	orl	a,r6
      005FFC 4F               [12] 9236 	orl	a,r7
      005FFD 60 06            [24] 9237 	jz	00176$
      005FFF 7E 31            [12] 9238 	mov	r6,#0x31
      006001 7F 00            [12] 9239 	mov	r7,#0x00
      006003 80 04            [24] 9240 	sjmp	00177$
      006005                       9241 00176$:
      006005 7E 30            [12] 9242 	mov	r6,#0x30
      006007 7F 00            [12] 9243 	mov	r7,#0x00
      006009                       9244 00177$:
      006009 8E 82            [24] 9245 	mov	dpl,r6
      00600B 8F 83            [24] 9246 	mov	dph,r7
      00600D 12 2C 1F         [24] 9247 	lcall	_putchar
                                   9248 ;	calc.c:57: for (mask = 0x80000000lu; mask; mask >>= 1)
      006010 E5 08            [12] 9249 	mov	a,_bp
      006012 24 1A            [12] 9250 	add	a,#0x1a
      006014 F8               [12] 9251 	mov	r0,a
      006015 08               [12] 9252 	inc	r0
      006016 08               [12] 9253 	inc	r0
      006017 08               [12] 9254 	inc	r0
      006018 E6               [12] 9255 	mov	a,@r0
      006019 C3               [12] 9256 	clr	c
      00601A 13               [12] 9257 	rrc	a
      00601B F6               [12] 9258 	mov	@r0,a
      00601C 18               [12] 9259 	dec	r0
      00601D E6               [12] 9260 	mov	a,@r0
      00601E 13               [12] 9261 	rrc	a
      00601F F6               [12] 9262 	mov	@r0,a
      006020 18               [12] 9263 	dec	r0
      006021 E6               [12] 9264 	mov	a,@r0
      006022 13               [12] 9265 	rrc	a
      006023 F6               [12] 9266 	mov	@r0,a
      006024 18               [12] 9267 	dec	r0
      006025 E6               [12] 9268 	mov	a,@r0
      006026 13               [12] 9269 	rrc	a
      006027 F6               [12] 9270 	mov	@r0,a
      006028 E5 08            [12] 9271 	mov	a,_bp
      00602A 24 1A            [12] 9272 	add	a,#0x1a
      00602C F8               [12] 9273 	mov	r0,a
      00602D E6               [12] 9274 	mov	a,@r0
      00602E 08               [12] 9275 	inc	r0
      00602F 46               [12] 9276 	orl	a,@r0
      006030 08               [12] 9277 	inc	r0
      006031 46               [12] 9278 	orl	a,@r0
      006032 08               [12] 9279 	inc	r0
      006033 46               [12] 9280 	orl	a,@r0
      006034 70 9F            [24] 9281 	jnz	00161$
                                   9282 ;	calc.c:414: if (n > 1) printall(vals[0]);
      006036                       9283 00110$:
                                   9284 ;	calc.c:415: printstr("\r\n");
      006036 7D 48            [12] 9285 	mov	r5,#___str_2
      006038 7E 88            [12] 9286 	mov	r6,#(___str_2 >> 8)
      00603A 7F 80            [12] 9287 	mov	r7,#0x80
                                   9288 ;	calc.c:51: return;
      00603C                       9289 00164$:
                                   9290 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00603C 8D 82            [24] 9291 	mov	dpl,r5
      00603E 8E 83            [24] 9292 	mov	dph,r6
      006040 8F F0            [24] 9293 	mov	b,r7
      006042 12 6F B8         [24] 9294 	lcall	__gptrget
      006045 FC               [12] 9295 	mov	r4,a
      006046 60 10            [24] 9296 	jz	00137$
      006048 7B 00            [12] 9297 	mov	r3,#0x00
      00604A 8C 82            [24] 9298 	mov	dpl,r4
      00604C 8B 83            [24] 9299 	mov	dph,r3
      00604E 12 2C 1F         [24] 9300 	lcall	_putchar
      006051 0D               [12] 9301 	inc	r5
                                   9302 ;	calc.c:415: printstr("\r\n");
      006052 BD 00 E7         [24] 9303 	cjne	r5,#0x00,00164$
      006055 0E               [12] 9304 	inc	r6
      006056 80 E4            [24] 9305 	sjmp	00164$
      006058                       9306 00137$:
                                   9307 ;	calc.c:417: return 1;
      006058 90 00 01         [24] 9308 	mov	dptr,#0x0001
                                   9309 ;	calc.c:418: }
      00605B 85 08 81         [24] 9310 	mov	sp,_bp
      00605E D0 08            [24] 9311 	pop	_bp
      006060 22               [24] 9312 	ret
                                   9313 ;------------------------------------------------------------
                                   9314 ;Allocation info for local variables in function 'help'
                                   9315 ;------------------------------------------------------------
                                   9316 ;delta                     Allocated to stack - _bp -5
                                   9317 ;_ctx                      Allocated to registers 
                                   9318 ;__1310720151              Allocated to registers 
                                   9319 ;s                         Allocated to registers r5 r6 r7 
                                   9320 ;__1310720153              Allocated to registers 
                                   9321 ;s                         Allocated to registers r5 r6 r7 
                                   9322 ;__1310720155              Allocated to registers 
                                   9323 ;s                         Allocated to registers r5 r6 r7 
                                   9324 ;__1310720157              Allocated to registers 
                                   9325 ;s                         Allocated to registers r5 r6 r7 
                                   9326 ;__1310720159              Allocated to registers 
                                   9327 ;s                         Allocated to registers r5 r6 r7 
                                   9328 ;__1310720161              Allocated to registers 
                                   9329 ;s                         Allocated to registers r5 r6 r7 
                                   9330 ;__1310720163              Allocated to registers 
                                   9331 ;s                         Allocated to registers r5 r6 r7 
                                   9332 ;__1310720165              Allocated to registers 
                                   9333 ;s                         Allocated to registers r5 r6 r7 
                                   9334 ;__1310720167              Allocated to registers 
                                   9335 ;s                         Allocated to registers r5 r6 r7 
                                   9336 ;__1310720169              Allocated to registers 
                                   9337 ;s                         Allocated to registers r5 r6 r7 
                                   9338 ;__1310720171              Allocated to registers 
                                   9339 ;s                         Allocated to registers r5 r6 r7 
                                   9340 ;__1310720173              Allocated to registers 
                                   9341 ;s                         Allocated to registers r5 r6 r7 
                                   9342 ;__1310720175              Allocated to registers 
                                   9343 ;s                         Allocated to registers r5 r6 r7 
                                   9344 ;__1310720177              Allocated to registers 
                                   9345 ;s                         Allocated to registers r5 r6 r7 
                                   9346 ;__1310720179              Allocated to registers 
                                   9347 ;s                         Allocated to registers r5 r6 r7 
                                   9348 ;__1310720181              Allocated to registers 
                                   9349 ;s                         Allocated to registers r5 r6 r7 
                                   9350 ;__1310720183              Allocated to registers 
                                   9351 ;s                         Allocated to registers r5 r6 r7 
                                   9352 ;__1310720185              Allocated to registers 
                                   9353 ;s                         Allocated to registers r5 r6 r7 
                                   9354 ;__1310720187              Allocated to registers 
                                   9355 ;s                         Allocated to registers r5 r6 r7 
                                   9356 ;__1310720189              Allocated to registers 
                                   9357 ;s                         Allocated to registers r5 r6 r7 
                                   9358 ;__1310720191              Allocated to registers 
                                   9359 ;s                         Allocated to registers r5 r6 r7 
                                   9360 ;__1310720193              Allocated to registers 
                                   9361 ;s                         Allocated to registers r5 r6 r7 
                                   9362 ;__1310720195              Allocated to registers 
                                   9363 ;s                         Allocated to registers r5 r6 r7 
                                   9364 ;__1310720197              Allocated to registers 
                                   9365 ;s                         Allocated to registers r5 r6 r7 
                                   9366 ;__1310720199              Allocated to registers 
                                   9367 ;s                         Allocated to registers r5 r6 r7 
                                   9368 ;__1310720201              Allocated to registers 
                                   9369 ;s                         Allocated to registers r5 r6 r7 
                                   9370 ;__1310720203              Allocated to registers 
                                   9371 ;s                         Allocated to registers r5 r6 r7 
                                   9372 ;__1310720205              Allocated to registers 
                                   9373 ;s                         Allocated to registers r5 r6 r7 
                                   9374 ;__1310720207              Allocated to registers 
                                   9375 ;s                         Allocated to registers r5 r6 r7 
                                   9376 ;__1310720209              Allocated to registers 
                                   9377 ;s                         Allocated to registers r5 r6 r7 
                                   9378 ;__1310720211              Allocated to registers 
                                   9379 ;s                         Allocated to registers r5 r6 r7 
                                   9380 ;------------------------------------------------------------
                                   9381 ;	calc.c:420: static int help(void *_ctx, delta_t *delta) __reentrant {
                                   9382 ;	-----------------------------------------
                                   9383 ;	 function help
                                   9384 ;	-----------------------------------------
      006061                       9385 _help:
      006061 C0 08            [24] 9386 	push	_bp
      006063 85 81 08         [24] 9387 	mov	_bp,sp
                                   9388 ;	calc.c:424: printstr("\r\nHhOo\tbase 16 10 8 2\r\n");
      006066 7D 43            [12] 9389 	mov	r5,#___str_20
      006068 7E 89            [12] 9390 	mov	r6,#(___str_20 >> 8)
      00606A 7F 80            [12] 9391 	mov	r7,#0x80
                                   9392 ;	calc.c:51: return;
      00606C                       9393 00164$:
                                   9394 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00606C 8D 82            [24] 9395 	mov	dpl,r5
      00606E 8E 83            [24] 9396 	mov	dph,r6
      006070 8F F0            [24] 9397 	mov	b,r7
      006072 12 6F B8         [24] 9398 	lcall	__gptrget
      006075 FC               [12] 9399 	mov	r4,a
      006076 60 10            [24] 9400 	jz	00102$
      006078 7B 00            [12] 9401 	mov	r3,#0x00
      00607A 8C 82            [24] 9402 	mov	dpl,r4
      00607C 8B 83            [24] 9403 	mov	dph,r3
      00607E 12 2C 1F         [24] 9404 	lcall	_putchar
      006081 0D               [12] 9405 	inc	r5
                                   9406 ;	calc.c:424: printstr("\r\nHhOo\tbase 16 10 8 2\r\n");
      006082 BD 00 E7         [24] 9407 	cjne	r5,#0x00,00164$
      006085 0E               [12] 9408 	inc	r6
      006086 80 E4            [24] 9409 	sjmp	00164$
      006088                       9410 00102$:
                                   9411 ;	calc.c:425: printstr("p.\tpop top\r\n");
      006088 7D 5B            [12] 9412 	mov	r5,#___str_21
      00608A 7E 89            [12] 9413 	mov	r6,#(___str_21 >> 8)
      00608C 7F 80            [12] 9414 	mov	r7,#0x80
                                   9415 ;	calc.c:51: return;
      00608E                       9416 00167$:
                                   9417 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00608E 8D 82            [24] 9418 	mov	dpl,r5
      006090 8E 83            [24] 9419 	mov	dph,r6
      006092 8F F0            [24] 9420 	mov	b,r7
      006094 12 6F B8         [24] 9421 	lcall	__gptrget
      006097 FC               [12] 9422 	mov	r4,a
      006098 60 10            [24] 9423 	jz	00104$
      00609A 7B 00            [12] 9424 	mov	r3,#0x00
      00609C 8C 82            [24] 9425 	mov	dpl,r4
      00609E 8B 83            [24] 9426 	mov	dph,r3
      0060A0 12 2C 1F         [24] 9427 	lcall	_putchar
      0060A3 0D               [12] 9428 	inc	r5
                                   9429 ;	calc.c:425: printstr("p.\tpop top\r\n");
      0060A4 BD 00 E7         [24] 9430 	cjne	r5,#0x00,00167$
      0060A7 0E               [12] 9431 	inc	r6
      0060A8 80 E4            [24] 9432 	sjmp	00167$
      0060AA                       9433 00104$:
                                   9434 ;	calc.c:426: printstr("P\tpop stack\r\n");
      0060AA 7D 68            [12] 9435 	mov	r5,#___str_22
      0060AC 7E 89            [12] 9436 	mov	r6,#(___str_22 >> 8)
      0060AE 7F 80            [12] 9437 	mov	r7,#0x80
                                   9438 ;	calc.c:51: return;
      0060B0                       9439 00170$:
                                   9440 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0060B0 8D 82            [24] 9441 	mov	dpl,r5
      0060B2 8E 83            [24] 9442 	mov	dph,r6
      0060B4 8F F0            [24] 9443 	mov	b,r7
      0060B6 12 6F B8         [24] 9444 	lcall	__gptrget
      0060B9 FC               [12] 9445 	mov	r4,a
      0060BA 60 10            [24] 9446 	jz	00106$
      0060BC 7B 00            [12] 9447 	mov	r3,#0x00
      0060BE 8C 82            [24] 9448 	mov	dpl,r4
      0060C0 8B 83            [24] 9449 	mov	dph,r3
      0060C2 12 2C 1F         [24] 9450 	lcall	_putchar
      0060C5 0D               [12] 9451 	inc	r5
                                   9452 ;	calc.c:426: printstr("P\tpop stack\r\n");
      0060C6 BD 00 E7         [24] 9453 	cjne	r5,#0x00,00170$
      0060C9 0E               [12] 9454 	inc	r6
      0060CA 80 E4            [24] 9455 	sjmp	00170$
      0060CC                       9456 00106$:
                                   9457 ;	calc.c:427: printstr("v\tpeek top\r\n");
      0060CC 7D 76            [12] 9458 	mov	r5,#___str_23
      0060CE 7E 89            [12] 9459 	mov	r6,#(___str_23 >> 8)
      0060D0 7F 80            [12] 9460 	mov	r7,#0x80
                                   9461 ;	calc.c:51: return;
      0060D2                       9462 00173$:
                                   9463 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0060D2 8D 82            [24] 9464 	mov	dpl,r5
      0060D4 8E 83            [24] 9465 	mov	dph,r6
      0060D6 8F F0            [24] 9466 	mov	b,r7
      0060D8 12 6F B8         [24] 9467 	lcall	__gptrget
      0060DB FC               [12] 9468 	mov	r4,a
      0060DC 60 10            [24] 9469 	jz	00108$
      0060DE 7B 00            [12] 9470 	mov	r3,#0x00
      0060E0 8C 82            [24] 9471 	mov	dpl,r4
      0060E2 8B 83            [24] 9472 	mov	dph,r3
      0060E4 12 2C 1F         [24] 9473 	lcall	_putchar
      0060E7 0D               [12] 9474 	inc	r5
                                   9475 ;	calc.c:427: printstr("v\tpeek top\r\n");
      0060E8 BD 00 E7         [24] 9476 	cjne	r5,#0x00,00173$
      0060EB 0E               [12] 9477 	inc	r6
      0060EC 80 E4            [24] 9478 	sjmp	00173$
      0060EE                       9479 00108$:
                                   9480 ;	calc.c:428: printstr("V\tpeek stack\r\n");
      0060EE 7D 83            [12] 9481 	mov	r5,#___str_24
      0060F0 7E 89            [12] 9482 	mov	r6,#(___str_24 >> 8)
      0060F2 7F 80            [12] 9483 	mov	r7,#0x80
                                   9484 ;	calc.c:51: return;
      0060F4                       9485 00176$:
                                   9486 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0060F4 8D 82            [24] 9487 	mov	dpl,r5
      0060F6 8E 83            [24] 9488 	mov	dph,r6
      0060F8 8F F0            [24] 9489 	mov	b,r7
      0060FA 12 6F B8         [24] 9490 	lcall	__gptrget
      0060FD FC               [12] 9491 	mov	r4,a
      0060FE 60 10            [24] 9492 	jz	00110$
      006100 7B 00            [12] 9493 	mov	r3,#0x00
      006102 8C 82            [24] 9494 	mov	dpl,r4
      006104 8B 83            [24] 9495 	mov	dph,r3
      006106 12 2C 1F         [24] 9496 	lcall	_putchar
      006109 0D               [12] 9497 	inc	r5
                                   9498 ;	calc.c:428: printstr("V\tpeek stack\r\n");
      00610A BD 00 E7         [24] 9499 	cjne	r5,#0x00,00176$
      00610D 0E               [12] 9500 	inc	r6
      00610E 80 E4            [24] 9501 	sjmp	00176$
      006110                       9502 00110$:
                                   9503 ;	calc.c:429: printstr("i\treset acc\r\n");
      006110 7D 92            [12] 9504 	mov	r5,#___str_25
      006112 7E 89            [12] 9505 	mov	r6,#(___str_25 >> 8)
      006114 7F 80            [12] 9506 	mov	r7,#0x80
                                   9507 ;	calc.c:51: return;
      006116                       9508 00179$:
                                   9509 ;	calc.c:49: for (; *s; s++) putchar(*s);
      006116 8D 82            [24] 9510 	mov	dpl,r5
      006118 8E 83            [24] 9511 	mov	dph,r6
      00611A 8F F0            [24] 9512 	mov	b,r7
      00611C 12 6F B8         [24] 9513 	lcall	__gptrget
      00611F FC               [12] 9514 	mov	r4,a
      006120 60 10            [24] 9515 	jz	00112$
      006122 7B 00            [12] 9516 	mov	r3,#0x00
      006124 8C 82            [24] 9517 	mov	dpl,r4
      006126 8B 83            [24] 9518 	mov	dph,r3
      006128 12 2C 1F         [24] 9519 	lcall	_putchar
      00612B 0D               [12] 9520 	inc	r5
                                   9521 ;	calc.c:429: printstr("i\treset acc\r\n");
      00612C BD 00 E7         [24] 9522 	cjne	r5,#0x00,00179$
      00612F 0E               [12] 9523 	inc	r6
      006130 80 E4            [24] 9524 	sjmp	00179$
      006132                       9525 00112$:
                                   9526 ;	calc.c:430: printstr("I\treset and discard acc\r\n");
      006132 7D A0            [12] 9527 	mov	r5,#___str_26
      006134 7E 89            [12] 9528 	mov	r6,#(___str_26 >> 8)
      006136 7F 80            [12] 9529 	mov	r7,#0x80
                                   9530 ;	calc.c:51: return;
      006138                       9531 00182$:
                                   9532 ;	calc.c:49: for (; *s; s++) putchar(*s);
      006138 8D 82            [24] 9533 	mov	dpl,r5
      00613A 8E 83            [24] 9534 	mov	dph,r6
      00613C 8F F0            [24] 9535 	mov	b,r7
      00613E 12 6F B8         [24] 9536 	lcall	__gptrget
      006141 FC               [12] 9537 	mov	r4,a
      006142 60 10            [24] 9538 	jz	00114$
      006144 7B 00            [12] 9539 	mov	r3,#0x00
      006146 8C 82            [24] 9540 	mov	dpl,r4
      006148 8B 83            [24] 9541 	mov	dph,r3
      00614A 12 2C 1F         [24] 9542 	lcall	_putchar
      00614D 0D               [12] 9543 	inc	r5
                                   9544 ;	calc.c:430: printstr("I\treset and discard acc\r\n");
      00614E BD 00 E7         [24] 9545 	cjne	r5,#0x00,00182$
      006151 0E               [12] 9546 	inc	r6
      006152 80 E4            [24] 9547 	sjmp	00182$
      006154                       9548 00114$:
                                   9549 ;	calc.c:431: printstr("x\texchange top 2\r\n");
      006154 7D BA            [12] 9550 	mov	r5,#___str_27
      006156 7E 89            [12] 9551 	mov	r6,#(___str_27 >> 8)
      006158 7F 80            [12] 9552 	mov	r7,#0x80
                                   9553 ;	calc.c:51: return;
      00615A                       9554 00185$:
                                   9555 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00615A 8D 82            [24] 9556 	mov	dpl,r5
      00615C 8E 83            [24] 9557 	mov	dph,r6
      00615E 8F F0            [24] 9558 	mov	b,r7
      006160 12 6F B8         [24] 9559 	lcall	__gptrget
      006163 FC               [12] 9560 	mov	r4,a
      006164 60 10            [24] 9561 	jz	00116$
      006166 7B 00            [12] 9562 	mov	r3,#0x00
      006168 8C 82            [24] 9563 	mov	dpl,r4
      00616A 8B 83            [24] 9564 	mov	dph,r3
      00616C 12 2C 1F         [24] 9565 	lcall	_putchar
      00616F 0D               [12] 9566 	inc	r5
                                   9567 ;	calc.c:431: printstr("x\texchange top 2\r\n");
      006170 BD 00 E7         [24] 9568 	cjne	r5,#0x00,00185$
      006173 0E               [12] 9569 	inc	r6
      006174 80 E4            [24] 9570 	sjmp	00185$
      006176                       9571 00116$:
                                   9572 ;	calc.c:432: printstr("X\texchange stacks primary <-> secondary\r\n");
      006176 7D CD            [12] 9573 	mov	r5,#___str_28
      006178 7E 89            [12] 9574 	mov	r6,#(___str_28 >> 8)
      00617A 7F 80            [12] 9575 	mov	r7,#0x80
                                   9576 ;	calc.c:51: return;
      00617C                       9577 00188$:
                                   9578 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00617C 8D 82            [24] 9579 	mov	dpl,r5
      00617E 8E 83            [24] 9580 	mov	dph,r6
      006180 8F F0            [24] 9581 	mov	b,r7
      006182 12 6F B8         [24] 9582 	lcall	__gptrget
      006185 FC               [12] 9583 	mov	r4,a
      006186 60 10            [24] 9584 	jz	00118$
      006188 7B 00            [12] 9585 	mov	r3,#0x00
      00618A 8C 82            [24] 9586 	mov	dpl,r4
      00618C 8B 83            [24] 9587 	mov	dph,r3
      00618E 12 2C 1F         [24] 9588 	lcall	_putchar
      006191 0D               [12] 9589 	inc	r5
                                   9590 ;	calc.c:432: printstr("X\texchange stacks primary <-> secondary\r\n");
      006192 BD 00 E7         [24] 9591 	cjne	r5,#0x00,00188$
      006195 0E               [12] 9592 	inc	r6
      006196 80 E4            [24] 9593 	sjmp	00188$
      006198                       9594 00118$:
                                   9595 ;	calc.c:433: printstr("T\texchange tops primary <-> secondary\r\n");
      006198 7D F7            [12] 9596 	mov	r5,#___str_29
      00619A 7E 89            [12] 9597 	mov	r6,#(___str_29 >> 8)
      00619C 7F 80            [12] 9598 	mov	r7,#0x80
                                   9599 ;	calc.c:51: return;
      00619E                       9600 00191$:
                                   9601 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00619E 8D 82            [24] 9602 	mov	dpl,r5
      0061A0 8E 83            [24] 9603 	mov	dph,r6
      0061A2 8F F0            [24] 9604 	mov	b,r7
      0061A4 12 6F B8         [24] 9605 	lcall	__gptrget
      0061A7 FC               [12] 9606 	mov	r4,a
      0061A8 60 10            [24] 9607 	jz	00120$
      0061AA 7B 00            [12] 9608 	mov	r3,#0x00
      0061AC 8C 82            [24] 9609 	mov	dpl,r4
      0061AE 8B 83            [24] 9610 	mov	dph,r3
      0061B0 12 2C 1F         [24] 9611 	lcall	_putchar
      0061B3 0D               [12] 9612 	inc	r5
                                   9613 ;	calc.c:433: printstr("T\texchange tops primary <-> secondary\r\n");
      0061B4 BD 00 E7         [24] 9614 	cjne	r5,#0x00,00191$
      0061B7 0E               [12] 9615 	inc	r6
      0061B8 80 E4            [24] 9616 	sjmp	00191$
      0061BA                       9617 00120$:
                                   9618 ;	calc.c:434: printstr("U\tcopy top secondary -> primary\r\n");
      0061BA 7D 1F            [12] 9619 	mov	r5,#___str_30
      0061BC 7E 8A            [12] 9620 	mov	r6,#(___str_30 >> 8)
      0061BE 7F 80            [12] 9621 	mov	r7,#0x80
                                   9622 ;	calc.c:51: return;
      0061C0                       9623 00194$:
                                   9624 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0061C0 8D 82            [24] 9625 	mov	dpl,r5
      0061C2 8E 83            [24] 9626 	mov	dph,r6
      0061C4 8F F0            [24] 9627 	mov	b,r7
      0061C6 12 6F B8         [24] 9628 	lcall	__gptrget
      0061C9 FC               [12] 9629 	mov	r4,a
      0061CA 60 10            [24] 9630 	jz	00122$
      0061CC 7B 00            [12] 9631 	mov	r3,#0x00
      0061CE 8C 82            [24] 9632 	mov	dpl,r4
      0061D0 8B 83            [24] 9633 	mov	dph,r3
      0061D2 12 2C 1F         [24] 9634 	lcall	_putchar
      0061D5 0D               [12] 9635 	inc	r5
                                   9636 ;	calc.c:434: printstr("U\tcopy top secondary -> primary\r\n");
      0061D6 BD 00 E7         [24] 9637 	cjne	r5,#0x00,00194$
      0061D9 0E               [12] 9638 	inc	r6
      0061DA 80 E4            [24] 9639 	sjmp	00194$
      0061DC                       9640 00122$:
                                   9641 ;	calc.c:435: printstr("u\tcopy top primary -> secondary\r\n");
      0061DC 7D 41            [12] 9642 	mov	r5,#___str_31
      0061DE 7E 8A            [12] 9643 	mov	r6,#(___str_31 >> 8)
      0061E0 7F 80            [12] 9644 	mov	r7,#0x80
                                   9645 ;	calc.c:51: return;
      0061E2                       9646 00197$:
                                   9647 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0061E2 8D 82            [24] 9648 	mov	dpl,r5
      0061E4 8E 83            [24] 9649 	mov	dph,r6
      0061E6 8F F0            [24] 9650 	mov	b,r7
      0061E8 12 6F B8         [24] 9651 	lcall	__gptrget
      0061EB FC               [12] 9652 	mov	r4,a
      0061EC 60 10            [24] 9653 	jz	00124$
      0061EE 7B 00            [12] 9654 	mov	r3,#0x00
      0061F0 8C 82            [24] 9655 	mov	dpl,r4
      0061F2 8B 83            [24] 9656 	mov	dph,r3
      0061F4 12 2C 1F         [24] 9657 	lcall	_putchar
      0061F7 0D               [12] 9658 	inc	r5
                                   9659 ;	calc.c:435: printstr("u\tcopy top primary -> secondary\r\n");
      0061F8 BD 00 E7         [24] 9660 	cjne	r5,#0x00,00197$
      0061FB 0E               [12] 9661 	inc	r6
      0061FC 80 E4            [24] 9662 	sjmp	00197$
      0061FE                       9663 00124$:
                                   9664 ;	calc.c:436: printstr("M\tmove top secondary -> primary\r\n");
      0061FE 7D 63            [12] 9665 	mov	r5,#___str_32
      006200 7E 8A            [12] 9666 	mov	r6,#(___str_32 >> 8)
      006202 7F 80            [12] 9667 	mov	r7,#0x80
                                   9668 ;	calc.c:51: return;
      006204                       9669 00200$:
                                   9670 ;	calc.c:49: for (; *s; s++) putchar(*s);
      006204 8D 82            [24] 9671 	mov	dpl,r5
      006206 8E 83            [24] 9672 	mov	dph,r6
      006208 8F F0            [24] 9673 	mov	b,r7
      00620A 12 6F B8         [24] 9674 	lcall	__gptrget
      00620D FC               [12] 9675 	mov	r4,a
      00620E 60 10            [24] 9676 	jz	00126$
      006210 7B 00            [12] 9677 	mov	r3,#0x00
      006212 8C 82            [24] 9678 	mov	dpl,r4
      006214 8B 83            [24] 9679 	mov	dph,r3
      006216 12 2C 1F         [24] 9680 	lcall	_putchar
      006219 0D               [12] 9681 	inc	r5
                                   9682 ;	calc.c:436: printstr("M\tmove top secondary -> primary\r\n");
      00621A BD 00 E7         [24] 9683 	cjne	r5,#0x00,00200$
      00621D 0E               [12] 9684 	inc	r6
      00621E 80 E4            [24] 9685 	sjmp	00200$
      006220                       9686 00126$:
                                   9687 ;	calc.c:437: printstr("m\tmove top primary -> secondary\r\n");
      006220 7D 85            [12] 9688 	mov	r5,#___str_33
      006222 7E 8A            [12] 9689 	mov	r6,#(___str_33 >> 8)
      006224 7F 80            [12] 9690 	mov	r7,#0x80
                                   9691 ;	calc.c:51: return;
      006226                       9692 00203$:
                                   9693 ;	calc.c:49: for (; *s; s++) putchar(*s);
      006226 8D 82            [24] 9694 	mov	dpl,r5
      006228 8E 83            [24] 9695 	mov	dph,r6
      00622A 8F F0            [24] 9696 	mov	b,r7
      00622C 12 6F B8         [24] 9697 	lcall	__gptrget
      00622F FC               [12] 9698 	mov	r4,a
      006230 60 10            [24] 9699 	jz	00128$
      006232 7B 00            [12] 9700 	mov	r3,#0x00
      006234 8C 82            [24] 9701 	mov	dpl,r4
      006236 8B 83            [24] 9702 	mov	dph,r3
      006238 12 2C 1F         [24] 9703 	lcall	_putchar
      00623B 0D               [12] 9704 	inc	r5
                                   9705 ;	calc.c:437: printstr("m\tmove top primary -> secondary\r\n");
      00623C BD 00 E7         [24] 9706 	cjne	r5,#0x00,00203$
      00623F 0E               [12] 9707 	inc	r6
      006240 80 E4            [24] 9708 	sjmp	00203$
      006242                       9709 00128$:
                                   9710 ;	calc.c:438: printstr("+\tadd top 2\r\n");
      006242 7D A7            [12] 9711 	mov	r5,#___str_34
      006244 7E 8A            [12] 9712 	mov	r6,#(___str_34 >> 8)
      006246 7F 80            [12] 9713 	mov	r7,#0x80
                                   9714 ;	calc.c:51: return;
      006248                       9715 00206$:
                                   9716 ;	calc.c:49: for (; *s; s++) putchar(*s);
      006248 8D 82            [24] 9717 	mov	dpl,r5
      00624A 8E 83            [24] 9718 	mov	dph,r6
      00624C 8F F0            [24] 9719 	mov	b,r7
      00624E 12 6F B8         [24] 9720 	lcall	__gptrget
      006251 FC               [12] 9721 	mov	r4,a
      006252 60 10            [24] 9722 	jz	00130$
      006254 7B 00            [12] 9723 	mov	r3,#0x00
      006256 8C 82            [24] 9724 	mov	dpl,r4
      006258 8B 83            [24] 9725 	mov	dph,r3
      00625A 12 2C 1F         [24] 9726 	lcall	_putchar
      00625D 0D               [12] 9727 	inc	r5
                                   9728 ;	calc.c:438: printstr("+\tadd top 2\r\n");
      00625E BD 00 E7         [24] 9729 	cjne	r5,#0x00,00206$
      006261 0E               [12] 9730 	inc	r6
      006262 80 E4            [24] 9731 	sjmp	00206$
      006264                       9732 00130$:
                                   9733 ;	calc.c:439: printstr("-\tsubtract top 2\r\n");
      006264 7D B5            [12] 9734 	mov	r5,#___str_35
      006266 7E 8A            [12] 9735 	mov	r6,#(___str_35 >> 8)
      006268 7F 80            [12] 9736 	mov	r7,#0x80
                                   9737 ;	calc.c:51: return;
      00626A                       9738 00209$:
                                   9739 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00626A 8D 82            [24] 9740 	mov	dpl,r5
      00626C 8E 83            [24] 9741 	mov	dph,r6
      00626E 8F F0            [24] 9742 	mov	b,r7
      006270 12 6F B8         [24] 9743 	lcall	__gptrget
      006273 FC               [12] 9744 	mov	r4,a
      006274 60 10            [24] 9745 	jz	00132$
      006276 7B 00            [12] 9746 	mov	r3,#0x00
      006278 8C 82            [24] 9747 	mov	dpl,r4
      00627A 8B 83            [24] 9748 	mov	dph,r3
      00627C 12 2C 1F         [24] 9749 	lcall	_putchar
      00627F 0D               [12] 9750 	inc	r5
                                   9751 ;	calc.c:439: printstr("-\tsubtract top 2\r\n");
      006280 BD 00 E7         [24] 9752 	cjne	r5,#0x00,00209$
      006283 0E               [12] 9753 	inc	r6
      006284 80 E4            [24] 9754 	sjmp	00209$
      006286                       9755 00132$:
                                   9756 ;	calc.c:440: printstr("*\tmultiply top 2\r\n");
      006286 7D C8            [12] 9757 	mov	r5,#___str_36
      006288 7E 8A            [12] 9758 	mov	r6,#(___str_36 >> 8)
      00628A 7F 80            [12] 9759 	mov	r7,#0x80
                                   9760 ;	calc.c:51: return;
      00628C                       9761 00212$:
                                   9762 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00628C 8D 82            [24] 9763 	mov	dpl,r5
      00628E 8E 83            [24] 9764 	mov	dph,r6
      006290 8F F0            [24] 9765 	mov	b,r7
      006292 12 6F B8         [24] 9766 	lcall	__gptrget
      006295 FC               [12] 9767 	mov	r4,a
      006296 60 10            [24] 9768 	jz	00134$
      006298 7B 00            [12] 9769 	mov	r3,#0x00
      00629A 8C 82            [24] 9770 	mov	dpl,r4
      00629C 8B 83            [24] 9771 	mov	dph,r3
      00629E 12 2C 1F         [24] 9772 	lcall	_putchar
      0062A1 0D               [12] 9773 	inc	r5
                                   9774 ;	calc.c:440: printstr("*\tmultiply top 2\r\n");
      0062A2 BD 00 E7         [24] 9775 	cjne	r5,#0x00,00212$
      0062A5 0E               [12] 9776 	inc	r6
      0062A6 80 E4            [24] 9777 	sjmp	00212$
      0062A8                       9778 00134$:
                                   9779 ;	calc.c:441: printstr("/\tdivide top 2\r\n");
      0062A8 7D DB            [12] 9780 	mov	r5,#___str_37
      0062AA 7E 8A            [12] 9781 	mov	r6,#(___str_37 >> 8)
      0062AC 7F 80            [12] 9782 	mov	r7,#0x80
                                   9783 ;	calc.c:51: return;
      0062AE                       9784 00215$:
                                   9785 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0062AE 8D 82            [24] 9786 	mov	dpl,r5
      0062B0 8E 83            [24] 9787 	mov	dph,r6
      0062B2 8F F0            [24] 9788 	mov	b,r7
      0062B4 12 6F B8         [24] 9789 	lcall	__gptrget
      0062B7 FC               [12] 9790 	mov	r4,a
      0062B8 60 10            [24] 9791 	jz	00136$
      0062BA 7B 00            [12] 9792 	mov	r3,#0x00
      0062BC 8C 82            [24] 9793 	mov	dpl,r4
      0062BE 8B 83            [24] 9794 	mov	dph,r3
      0062C0 12 2C 1F         [24] 9795 	lcall	_putchar
      0062C3 0D               [12] 9796 	inc	r5
                                   9797 ;	calc.c:441: printstr("/\tdivide top 2\r\n");
      0062C4 BD 00 E7         [24] 9798 	cjne	r5,#0x00,00215$
      0062C7 0E               [12] 9799 	inc	r6
      0062C8 80 E4            [24] 9800 	sjmp	00215$
      0062CA                       9801 00136$:
                                   9802 ;	calc.c:442: printstr("\\\tdivide top 2 unsigned\r\n");	
      0062CA 7D EC            [12] 9803 	mov	r5,#___str_38
      0062CC 7E 8A            [12] 9804 	mov	r6,#(___str_38 >> 8)
      0062CE 7F 80            [12] 9805 	mov	r7,#0x80
                                   9806 ;	calc.c:51: return;
      0062D0                       9807 00218$:
                                   9808 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0062D0 8D 82            [24] 9809 	mov	dpl,r5
      0062D2 8E 83            [24] 9810 	mov	dph,r6
      0062D4 8F F0            [24] 9811 	mov	b,r7
      0062D6 12 6F B8         [24] 9812 	lcall	__gptrget
      0062D9 FC               [12] 9813 	mov	r4,a
      0062DA 60 10            [24] 9814 	jz	00138$
      0062DC 7B 00            [12] 9815 	mov	r3,#0x00
      0062DE 8C 82            [24] 9816 	mov	dpl,r4
      0062E0 8B 83            [24] 9817 	mov	dph,r3
      0062E2 12 2C 1F         [24] 9818 	lcall	_putchar
      0062E5 0D               [12] 9819 	inc	r5
                                   9820 ;	calc.c:442: printstr("\\\tdivide top 2 unsigned\r\n");	
      0062E6 BD 00 E7         [24] 9821 	cjne	r5,#0x00,00218$
      0062E9 0E               [12] 9822 	inc	r6
      0062EA 80 E4            [24] 9823 	sjmp	00218$
      0062EC                       9824 00138$:
                                   9825 ;	calc.c:443: printstr("%\tmodulus top 2\r\n");
      0062EC 7D 06            [12] 9826 	mov	r5,#___str_39
      0062EE 7E 8B            [12] 9827 	mov	r6,#(___str_39 >> 8)
      0062F0 7F 80            [12] 9828 	mov	r7,#0x80
                                   9829 ;	calc.c:51: return;
      0062F2                       9830 00221$:
                                   9831 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0062F2 8D 82            [24] 9832 	mov	dpl,r5
      0062F4 8E 83            [24] 9833 	mov	dph,r6
      0062F6 8F F0            [24] 9834 	mov	b,r7
      0062F8 12 6F B8         [24] 9835 	lcall	__gptrget
      0062FB FC               [12] 9836 	mov	r4,a
      0062FC 60 10            [24] 9837 	jz	00140$
      0062FE 7B 00            [12] 9838 	mov	r3,#0x00
      006300 8C 82            [24] 9839 	mov	dpl,r4
      006302 8B 83            [24] 9840 	mov	dph,r3
      006304 12 2C 1F         [24] 9841 	lcall	_putchar
      006307 0D               [12] 9842 	inc	r5
                                   9843 ;	calc.c:443: printstr("%\tmodulus top 2\r\n");
      006308 BD 00 E7         [24] 9844 	cjne	r5,#0x00,00221$
      00630B 0E               [12] 9845 	inc	r6
      00630C 80 E4            [24] 9846 	sjmp	00221$
      00630E                       9847 00140$:
                                   9848 ;	calc.c:444: printstr("#\tmodulus top 2 unsigned\r\n");
      00630E 7D 18            [12] 9849 	mov	r5,#___str_40
      006310 7E 8B            [12] 9850 	mov	r6,#(___str_40 >> 8)
      006312 7F 80            [12] 9851 	mov	r7,#0x80
                                   9852 ;	calc.c:51: return;
      006314                       9853 00224$:
                                   9854 ;	calc.c:49: for (; *s; s++) putchar(*s);
      006314 8D 82            [24] 9855 	mov	dpl,r5
      006316 8E 83            [24] 9856 	mov	dph,r6
      006318 8F F0            [24] 9857 	mov	b,r7
      00631A 12 6F B8         [24] 9858 	lcall	__gptrget
      00631D FC               [12] 9859 	mov	r4,a
      00631E 60 10            [24] 9860 	jz	00142$
      006320 7B 00            [12] 9861 	mov	r3,#0x00
      006322 8C 82            [24] 9862 	mov	dpl,r4
      006324 8B 83            [24] 9863 	mov	dph,r3
      006326 12 2C 1F         [24] 9864 	lcall	_putchar
      006329 0D               [12] 9865 	inc	r5
                                   9866 ;	calc.c:444: printstr("#\tmodulus top 2 unsigned\r\n");
      00632A BD 00 E7         [24] 9867 	cjne	r5,#0x00,00224$
      00632D 0E               [12] 9868 	inc	r6
      00632E 80 E4            [24] 9869 	sjmp	00224$
      006330                       9870 00142$:
                                   9871 ;	calc.c:445: printstr("&\tand top 2\r\n");
      006330 7D 33            [12] 9872 	mov	r5,#___str_41
      006332 7E 8B            [12] 9873 	mov	r6,#(___str_41 >> 8)
      006334 7F 80            [12] 9874 	mov	r7,#0x80
                                   9875 ;	calc.c:51: return;
      006336                       9876 00227$:
                                   9877 ;	calc.c:49: for (; *s; s++) putchar(*s);
      006336 8D 82            [24] 9878 	mov	dpl,r5
      006338 8E 83            [24] 9879 	mov	dph,r6
      00633A 8F F0            [24] 9880 	mov	b,r7
      00633C 12 6F B8         [24] 9881 	lcall	__gptrget
      00633F FC               [12] 9882 	mov	r4,a
      006340 60 10            [24] 9883 	jz	00144$
      006342 7B 00            [12] 9884 	mov	r3,#0x00
      006344 8C 82            [24] 9885 	mov	dpl,r4
      006346 8B 83            [24] 9886 	mov	dph,r3
      006348 12 2C 1F         [24] 9887 	lcall	_putchar
      00634B 0D               [12] 9888 	inc	r5
                                   9889 ;	calc.c:445: printstr("&\tand top 2\r\n");
      00634C BD 00 E7         [24] 9890 	cjne	r5,#0x00,00227$
      00634F 0E               [12] 9891 	inc	r6
      006350 80 E4            [24] 9892 	sjmp	00227$
      006352                       9893 00144$:
                                   9894 ;	calc.c:446: printstr("|\tor top 2\r\n");
      006352 7D 41            [12] 9895 	mov	r5,#___str_42
      006354 7E 8B            [12] 9896 	mov	r6,#(___str_42 >> 8)
      006356 7F 80            [12] 9897 	mov	r7,#0x80
                                   9898 ;	calc.c:51: return;
      006358                       9899 00230$:
                                   9900 ;	calc.c:49: for (; *s; s++) putchar(*s);
      006358 8D 82            [24] 9901 	mov	dpl,r5
      00635A 8E 83            [24] 9902 	mov	dph,r6
      00635C 8F F0            [24] 9903 	mov	b,r7
      00635E 12 6F B8         [24] 9904 	lcall	__gptrget
      006361 FC               [12] 9905 	mov	r4,a
      006362 60 10            [24] 9906 	jz	00146$
      006364 7B 00            [12] 9907 	mov	r3,#0x00
      006366 8C 82            [24] 9908 	mov	dpl,r4
      006368 8B 83            [24] 9909 	mov	dph,r3
      00636A 12 2C 1F         [24] 9910 	lcall	_putchar
      00636D 0D               [12] 9911 	inc	r5
                                   9912 ;	calc.c:446: printstr("|\tor top 2\r\n");
      00636E BD 00 E7         [24] 9913 	cjne	r5,#0x00,00230$
      006371 0E               [12] 9914 	inc	r6
      006372 80 E4            [24] 9915 	sjmp	00230$
      006374                       9916 00146$:
                                   9917 ;	calc.c:447: printstr("^\txor top 2\r\n");
      006374 7D 4E            [12] 9918 	mov	r5,#___str_43
      006376 7E 8B            [12] 9919 	mov	r6,#(___str_43 >> 8)
      006378 7F 80            [12] 9920 	mov	r7,#0x80
                                   9921 ;	calc.c:51: return;
      00637A                       9922 00233$:
                                   9923 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00637A 8D 82            [24] 9924 	mov	dpl,r5
      00637C 8E 83            [24] 9925 	mov	dph,r6
      00637E 8F F0            [24] 9926 	mov	b,r7
      006380 12 6F B8         [24] 9927 	lcall	__gptrget
      006383 FC               [12] 9928 	mov	r4,a
      006384 60 10            [24] 9929 	jz	00148$
      006386 7B 00            [12] 9930 	mov	r3,#0x00
      006388 8C 82            [24] 9931 	mov	dpl,r4
      00638A 8B 83            [24] 9932 	mov	dph,r3
      00638C 12 2C 1F         [24] 9933 	lcall	_putchar
      00638F 0D               [12] 9934 	inc	r5
                                   9935 ;	calc.c:447: printstr("^\txor top 2\r\n");
      006390 BD 00 E7         [24] 9936 	cjne	r5,#0x00,00233$
      006393 0E               [12] 9937 	inc	r6
      006394 80 E4            [24] 9938 	sjmp	00233$
      006396                       9939 00148$:
                                   9940 ;	calc.c:448: printstr(">\tshift right top 2\r\n");
      006396 7D 5C            [12] 9941 	mov	r5,#___str_44
      006398 7E 8B            [12] 9942 	mov	r6,#(___str_44 >> 8)
      00639A 7F 80            [12] 9943 	mov	r7,#0x80
                                   9944 ;	calc.c:51: return;
      00639C                       9945 00236$:
                                   9946 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00639C 8D 82            [24] 9947 	mov	dpl,r5
      00639E 8E 83            [24] 9948 	mov	dph,r6
      0063A0 8F F0            [24] 9949 	mov	b,r7
      0063A2 12 6F B8         [24] 9950 	lcall	__gptrget
      0063A5 FC               [12] 9951 	mov	r4,a
      0063A6 60 10            [24] 9952 	jz	00150$
      0063A8 7B 00            [12] 9953 	mov	r3,#0x00
      0063AA 8C 82            [24] 9954 	mov	dpl,r4
      0063AC 8B 83            [24] 9955 	mov	dph,r3
      0063AE 12 2C 1F         [24] 9956 	lcall	_putchar
      0063B1 0D               [12] 9957 	inc	r5
                                   9958 ;	calc.c:448: printstr(">\tshift right top 2\r\n");
      0063B2 BD 00 E7         [24] 9959 	cjne	r5,#0x00,00236$
      0063B5 0E               [12] 9960 	inc	r6
      0063B6 80 E4            [24] 9961 	sjmp	00236$
      0063B8                       9962 00150$:
                                   9963 ;	calc.c:449: printstr("]\tarithmetic shift right top 2\r\n");
      0063B8 7D 72            [12] 9964 	mov	r5,#___str_45
      0063BA 7E 8B            [12] 9965 	mov	r6,#(___str_45 >> 8)
      0063BC 7F 80            [12] 9966 	mov	r7,#0x80
                                   9967 ;	calc.c:51: return;
      0063BE                       9968 00239$:
                                   9969 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0063BE 8D 82            [24] 9970 	mov	dpl,r5
      0063C0 8E 83            [24] 9971 	mov	dph,r6
      0063C2 8F F0            [24] 9972 	mov	b,r7
      0063C4 12 6F B8         [24] 9973 	lcall	__gptrget
      0063C7 FC               [12] 9974 	mov	r4,a
      0063C8 60 10            [24] 9975 	jz	00152$
      0063CA 7B 00            [12] 9976 	mov	r3,#0x00
      0063CC 8C 82            [24] 9977 	mov	dpl,r4
      0063CE 8B 83            [24] 9978 	mov	dph,r3
      0063D0 12 2C 1F         [24] 9979 	lcall	_putchar
      0063D3 0D               [12] 9980 	inc	r5
                                   9981 ;	calc.c:449: printstr("]\tarithmetic shift right top 2\r\n");
      0063D4 BD 00 E7         [24] 9982 	cjne	r5,#0x00,00239$
      0063D7 0E               [12] 9983 	inc	r6
      0063D8 80 E4            [24] 9984 	sjmp	00239$
      0063DA                       9985 00152$:
                                   9986 ;	calc.c:450: printstr("<\tshift left top 2\r\n");
      0063DA 7D 93            [12] 9987 	mov	r5,#___str_46
      0063DC 7E 8B            [12] 9988 	mov	r6,#(___str_46 >> 8)
      0063DE 7F 80            [12] 9989 	mov	r7,#0x80
                                   9990 ;	calc.c:51: return;
      0063E0                       9991 00242$:
                                   9992 ;	calc.c:49: for (; *s; s++) putchar(*s);
      0063E0 8D 82            [24] 9993 	mov	dpl,r5
      0063E2 8E 83            [24] 9994 	mov	dph,r6
      0063E4 8F F0            [24] 9995 	mov	b,r7
      0063E6 12 6F B8         [24] 9996 	lcall	__gptrget
      0063E9 FC               [12] 9997 	mov	r4,a
      0063EA 60 10            [24] 9998 	jz	00154$
      0063EC 7B 00            [12] 9999 	mov	r3,#0x00
      0063EE 8C 82            [24]10000 	mov	dpl,r4
      0063F0 8B 83            [24]10001 	mov	dph,r3
      0063F2 12 2C 1F         [24]10002 	lcall	_putchar
      0063F5 0D               [12]10003 	inc	r5
                                  10004 ;	calc.c:450: printstr("<\tshift left top 2\r\n");
      0063F6 BD 00 E7         [24]10005 	cjne	r5,#0x00,00242$
      0063F9 0E               [12]10006 	inc	r6
      0063FA 80 E4            [24]10007 	sjmp	00242$
      0063FC                      10008 00154$:
                                  10009 ;	calc.c:451: printstr("~\tbitwise not top\r\n");
      0063FC 7D A8            [12]10010 	mov	r5,#___str_47
      0063FE 7E 8B            [12]10011 	mov	r6,#(___str_47 >> 8)
      006400 7F 80            [12]10012 	mov	r7,#0x80
                                  10013 ;	calc.c:51: return;
      006402                      10014 00245$:
                                  10015 ;	calc.c:49: for (; *s; s++) putchar(*s);
      006402 8D 82            [24]10016 	mov	dpl,r5
      006404 8E 83            [24]10017 	mov	dph,r6
      006406 8F F0            [24]10018 	mov	b,r7
      006408 12 6F B8         [24]10019 	lcall	__gptrget
      00640B FC               [12]10020 	mov	r4,a
      00640C 60 10            [24]10021 	jz	00156$
      00640E 7B 00            [12]10022 	mov	r3,#0x00
      006410 8C 82            [24]10023 	mov	dpl,r4
      006412 8B 83            [24]10024 	mov	dph,r3
      006414 12 2C 1F         [24]10025 	lcall	_putchar
      006417 0D               [12]10026 	inc	r5
                                  10027 ;	calc.c:451: printstr("~\tbitwise not top\r\n");
      006418 BD 00 E7         [24]10028 	cjne	r5,#0x00,00245$
      00641B 0E               [12]10029 	inc	r6
      00641C 80 E4            [24]10030 	sjmp	00245$
      00641E                      10031 00156$:
                                  10032 ;	calc.c:452: printstr("s\tstatus\r\n");
      00641E 7D BC            [12]10033 	mov	r5,#___str_48
      006420 7E 8B            [12]10034 	mov	r6,#(___str_48 >> 8)
      006422 7F 80            [12]10035 	mov	r7,#0x80
                                  10036 ;	calc.c:51: return;
      006424                      10037 00248$:
                                  10038 ;	calc.c:49: for (; *s; s++) putchar(*s);
      006424 8D 82            [24]10039 	mov	dpl,r5
      006426 8E 83            [24]10040 	mov	dph,r6
      006428 8F F0            [24]10041 	mov	b,r7
      00642A 12 6F B8         [24]10042 	lcall	__gptrget
      00642D FC               [12]10043 	mov	r4,a
      00642E 60 10            [24]10044 	jz	00158$
      006430 7B 00            [12]10045 	mov	r3,#0x00
      006432 8C 82            [24]10046 	mov	dpl,r4
      006434 8B 83            [24]10047 	mov	dph,r3
      006436 12 2C 1F         [24]10048 	lcall	_putchar
      006439 0D               [12]10049 	inc	r5
                                  10050 ;	calc.c:452: printstr("s\tstatus\r\n");
      00643A BD 00 E7         [24]10051 	cjne	r5,#0x00,00248$
      00643D 0E               [12]10052 	inc	r6
      00643E 80 E4            [24]10053 	sjmp	00248$
      006440                      10054 00158$:
                                  10055 ;	calc.c:453: printstr("?\thelp\r\n");
      006440 7D C7            [12]10056 	mov	r5,#___str_49
      006442 7E 8B            [12]10057 	mov	r6,#(___str_49 >> 8)
      006444 7F 80            [12]10058 	mov	r7,#0x80
                                  10059 ;	calc.c:51: return;
      006446                      10060 00251$:
                                  10061 ;	calc.c:49: for (; *s; s++) putchar(*s);
      006446 8D 82            [24]10062 	mov	dpl,r5
      006448 8E 83            [24]10063 	mov	dph,r6
      00644A 8F F0            [24]10064 	mov	b,r7
      00644C 12 6F B8         [24]10065 	lcall	__gptrget
      00644F FC               [12]10066 	mov	r4,a
      006450 60 10            [24]10067 	jz	00160$
      006452 7B 00            [12]10068 	mov	r3,#0x00
      006454 8C 82            [24]10069 	mov	dpl,r4
      006456 8B 83            [24]10070 	mov	dph,r3
      006458 12 2C 1F         [24]10071 	lcall	_putchar
      00645B 0D               [12]10072 	inc	r5
                                  10073 ;	calc.c:453: printstr("?\thelp\r\n");
      00645C BD 00 E7         [24]10074 	cjne	r5,#0x00,00251$
      00645F 0E               [12]10075 	inc	r6
      006460 80 E4            [24]10076 	sjmp	00251$
      006462                      10077 00160$:
                                  10078 ;	calc.c:454: printstr("q\tquit\r\n");
      006462 7D D0            [12]10079 	mov	r5,#___str_50
      006464 7E 8B            [12]10080 	mov	r6,#(___str_50 >> 8)
      006466 7F 80            [12]10081 	mov	r7,#0x80
                                  10082 ;	calc.c:51: return;
      006468                      10083 00254$:
                                  10084 ;	calc.c:49: for (; *s; s++) putchar(*s);
      006468 8D 82            [24]10085 	mov	dpl,r5
      00646A 8E 83            [24]10086 	mov	dph,r6
      00646C 8F F0            [24]10087 	mov	b,r7
      00646E 12 6F B8         [24]10088 	lcall	__gptrget
      006471 FC               [12]10089 	mov	r4,a
      006472 60 10            [24]10090 	jz	00162$
      006474 7B 00            [12]10091 	mov	r3,#0x00
      006476 8C 82            [24]10092 	mov	dpl,r4
      006478 8B 83            [24]10093 	mov	dph,r3
      00647A 12 2C 1F         [24]10094 	lcall	_putchar
      00647D 0D               [12]10095 	inc	r5
                                  10096 ;	calc.c:454: printstr("q\tquit\r\n");
      00647E BD 00 E7         [24]10097 	cjne	r5,#0x00,00254$
      006481 0E               [12]10098 	inc	r6
      006482 80 E4            [24]10099 	sjmp	00254$
      006484                      10100 00162$:
                                  10101 ;	calc.c:456: return 1;
      006484 90 00 01         [24]10102 	mov	dptr,#0x0001
                                  10103 ;	calc.c:457: }
      006487 D0 08            [24]10104 	pop	_bp
      006489 22               [24]10105 	ret
                                  10106 ;------------------------------------------------------------
                                  10107 ;Allocation info for local variables in function 'main'
                                  10108 ;------------------------------------------------------------
                                  10109 ;input                     Allocated to registers r6 r7 
                                  10110 ;__1966080213              Allocated to registers 
                                  10111 ;s                         Allocated to registers r2 r3 r4 
                                  10112 ;__1310720215              Allocated to registers 
                                  10113 ;s                         Allocated to registers r5 r6 r7 
                                  10114 ;sloc0                     Allocated to stack - _bp +1
                                  10115 ;------------------------------------------------------------
                                  10116 ;	calc.c:487: void main(void) {
                                  10117 ;	-----------------------------------------
                                  10118 ;	 function main
                                  10119 ;	-----------------------------------------
      00648A                      10120 _main:
      00648A C0 08            [24]10121 	push	_bp
      00648C 85 81 08         [24]10122 	mov	_bp,sp
      00648F 05 81            [12]10123 	inc	sp
                                  10124 ;	calc.c:490: c.base = 10;
      006491 90 90 0C         [24]10125 	mov	dptr,#_c
      006494 74 0A            [12]10126 	mov	a,#0x0a
      006496 F0               [24]10127 	movx	@dptr,a
      006497 E4               [12]10128 	clr	a
      006498 A3               [24]10129 	inc	dptr
      006499 F0               [24]10130 	movx	@dptr,a
                                  10131 ;	calc.c:491: c.acc = 0l;
      00649A 90 90 0E         [24]10132 	mov	dptr,#(_c + 0x0002)
      00649D F0               [24]10133 	movx	@dptr,a
      00649E A3               [24]10134 	inc	dptr
      00649F F0               [24]10135 	movx	@dptr,a
      0064A0 A3               [24]10136 	inc	dptr
      0064A1 F0               [24]10137 	movx	@dptr,a
      0064A2 A3               [24]10138 	inc	dptr
      0064A3 F0               [24]10139 	movx	@dptr,a
                                  10140 ;	calc.c:492: c.acc_valid = (char)0;
      0064A4 90 90 12         [24]10141 	mov	dptr,#(_c + 0x0006)
      0064A7 F0               [24]10142 	movx	@dptr,a
                                  10143 ;	calc.c:493: c.digit[0] = c.digit[1] = '\0';
      0064A8 90 90 14         [24]10144 	mov	dptr,#(_c + 0x0008)
      0064AB F0               [24]10145 	movx	@dptr,a
      0064AC 90 90 13         [24]10146 	mov	dptr,#(_c + 0x0007)
      0064AF F0               [24]10147 	movx	@dptr,a
                                  10148 ;	calc.c:495: c.ps = &c.s0;
      0064B0 90 D0 1F         [24]10149 	mov	dptr,#(_c + 0x4013)
      0064B3 74 15            [12]10150 	mov	a,#(_c + 0x0009)
      0064B5 F0               [24]10151 	movx	@dptr,a
      0064B6 74 90            [12]10152 	mov	a,#((_c + 0x0009) >> 8)
      0064B8 A3               [24]10153 	inc	dptr
      0064B9 F0               [24]10154 	movx	@dptr,a
      0064BA E4               [12]10155 	clr	a
      0064BB A3               [24]10156 	inc	dptr
      0064BC F0               [24]10157 	movx	@dptr,a
                                  10158 ;	calc.c:496: c.ss = &c.s1;
      0064BD 90 D0 22         [24]10159 	mov	dptr,#(_c + 0x4016)
      0064C0 74 1A            [12]10160 	mov	a,#(_c + 0x200e)
      0064C2 F0               [24]10161 	movx	@dptr,a
      0064C3 74 B0            [12]10162 	mov	a,#((_c + 0x200e) >> 8)
      0064C5 A3               [24]10163 	inc	dptr
      0064C6 F0               [24]10164 	movx	@dptr,a
      0064C7 E4               [12]10165 	clr	a
      0064C8 A3               [24]10166 	inc	dptr
      0064C9 F0               [24]10167 	movx	@dptr,a
                                  10168 ;	calc.c:497: stack_init(c.ps);
      0064CA 90 90 15         [24]10169 	mov	dptr,#(_c + 0x0009)
      0064CD 75 F0 00         [24]10170 	mov	b,#0x00
      0064D0 12 26 80         [24]10171 	lcall	_stack_init
                                  10172 ;	calc.c:498: stack_init(c.ss);
      0064D3 90 D0 22         [24]10173 	mov	dptr,#(_c + 0x4016)
      0064D6 E0               [24]10174 	movx	a,@dptr
      0064D7 FD               [12]10175 	mov	r5,a
      0064D8 A3               [24]10176 	inc	dptr
      0064D9 E0               [24]10177 	movx	a,@dptr
      0064DA FE               [12]10178 	mov	r6,a
      0064DB A3               [24]10179 	inc	dptr
      0064DC E0               [24]10180 	movx	a,@dptr
      0064DD FF               [12]10181 	mov	r7,a
      0064DE 8D 82            [24]10182 	mov	dpl,r5
      0064E0 8E 83            [24]10183 	mov	dph,r6
      0064E2 8F F0            [24]10184 	mov	b,r7
      0064E4 12 26 80         [24]10185 	lcall	_stack_init
                                  10186 ;	calc.c:500: state_init(&s, STATE_START, STATE_FINAL, UNDEF, deltas, &c);
      0064E7 74 0C            [12]10187 	mov	a,#_c
      0064E9 C0 E0            [24]10188 	push	acc
      0064EB 74 90            [12]10189 	mov	a,#(_c >> 8)
      0064ED C0 E0            [24]10190 	push	acc
      0064EF E4               [12]10191 	clr	a
      0064F0 C0 E0            [24]10192 	push	acc
      0064F2 74 27            [12]10193 	mov	a,#_deltas
      0064F4 C0 E0            [24]10194 	push	acc
      0064F6 74 D0            [12]10195 	mov	a,#(_deltas >> 8)
      0064F8 C0 E0            [24]10196 	push	acc
      0064FA E4               [12]10197 	clr	a
      0064FB C0 E0            [24]10198 	push	acc
      0064FD C0 E0            [24]10199 	push	acc
      0064FF 74 80            [12]10200 	mov	a,#0x80
      006501 C0 E0            [24]10201 	push	acc
      006503 74 03            [12]10202 	mov	a,#0x03
      006505 C0 E0            [24]10203 	push	acc
      006507 E4               [12]10204 	clr	a
      006508 C0 E0            [24]10205 	push	acc
      00650A C0 E0            [24]10206 	push	acc
      00650C C0 E0            [24]10207 	push	acc
      00650E 90 90 00         [24]10208 	mov	dptr,#_s
      006511 75 F0 00         [24]10209 	mov	b,#0x00
      006514 12 20 90         [24]10210 	lcall	_state_init
      006517 E5 81            [12]10211 	mov	a,sp
      006519 24 F4            [12]10212 	add	a,#0xf4
      00651B F5 81            [12]10213 	mov	sp,a
                                  10214 ;	calc.c:502: (void)status(&c, deltas);
      00651D 74 27            [12]10215 	mov	a,#_deltas
      00651F C0 E0            [24]10216 	push	acc
      006521 74 D0            [12]10217 	mov	a,#(_deltas >> 8)
      006523 C0 E0            [24]10218 	push	acc
      006525 E4               [12]10219 	clr	a
      006526 C0 E0            [24]10220 	push	acc
      006528 90 90 0C         [24]10221 	mov	dptr,#_c
      00652B 75 F0 00         [24]10222 	mov	b,#0x00
      00652E 12 58 EF         [24]10223 	lcall	_status
      006531 15 81            [12]10224 	dec	sp
      006533 15 81            [12]10225 	dec	sp
      006535 15 81            [12]10226 	dec	sp
                                  10227 ;	calc.c:504: while (1) {
      006537                      10228 00192$:
                                  10229 ;	calc.c:505: input = getchar();
      006537 12 2C 24         [24]10230 	lcall	_getchar
      00653A AE 82            [24]10231 	mov	r6,dpl
      00653C AF 83            [24]10232 	mov	r7,dph
                                  10233 ;	calc.c:506: if (((char)input == '\r') || ((char)input == '\n')) printstr("\r\n");
      00653E 8E 05            [24]10234 	mov	ar5,r6
      006540 BD 0D 02         [24]10235 	cjne	r5,#0x0d,00400$
      006543 80 03            [24]10236 	sjmp	00101$
      006545                      10237 00400$:
      006545 BD 0A 36         [24]10238 	cjne	r5,#0x0a,00102$
      006548                      10239 00101$:
      006548 7A 48            [12]10240 	mov	r2,#___str_2
      00654A 7B 88            [12]10241 	mov	r3,#(___str_2 >> 8)
      00654C 7C 80            [12]10242 	mov	r4,#0x80
                                  10243 ;	calc.c:51: return;
      00654E                      10244 00199$:
                                  10245 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00654E 8A 82            [24]10246 	mov	dpl,r2
      006550 8B 83            [24]10247 	mov	dph,r3
      006552 8C F0            [24]10248 	mov	b,r4
      006554 A8 08            [24]10249 	mov	r0,_bp
      006556 08               [12]10250 	inc	r0
      006557 12 6F B8         [24]10251 	lcall	__gptrget
      00655A F6               [12]10252 	mov	@r0,a
      00655B A8 08            [24]10253 	mov	r0,_bp
      00655D 08               [12]10254 	inc	r0
      00655E E6               [12]10255 	mov	a,@r0
      00655F 60 24            [24]10256 	jz	00103$
      006561 C0 06            [24]10257 	push	ar6
      006563 C0 07            [24]10258 	push	ar7
      006565 A8 08            [24]10259 	mov	r0,_bp
      006567 08               [12]10260 	inc	r0
      006568 86 06            [24]10261 	mov	ar6,@r0
      00656A 7F 00            [12]10262 	mov	r7,#0x00
      00656C 8E 82            [24]10263 	mov	dpl,r6
      00656E 8F 83            [24]10264 	mov	dph,r7
      006570 12 2C 1F         [24]10265 	lcall	_putchar
      006573 0A               [12]10266 	inc	r2
      006574 BA 00 01         [24]10267 	cjne	r2,#0x00,00404$
      006577 0B               [12]10268 	inc	r3
      006578                      10269 00404$:
      006578 D0 07            [24]10270 	pop	ar7
      00657A D0 06            [24]10271 	pop	ar6
                                  10272 ;	calc.c:506: if (((char)input == '\r') || ((char)input == '\n')) printstr("\r\n");
      00657C 80 D0            [24]10273 	sjmp	00199$
      00657E                      10274 00102$:
                                  10275 ;	calc.c:507: else (void)putchar(input);
      00657E 8E 82            [24]10276 	mov	dpl,r6
      006580 8F 83            [24]10277 	mov	dph,r7
      006582 12 2C 1F         [24]10278 	lcall	_putchar
      006585                      10279 00103$:
                                  10280 ;	calc.c:508: c.digit[0] = (char)input;
      006585 90 90 13         [24]10281 	mov	dptr,#(_c + 0x0007)
      006588 ED               [12]10282 	mov	a,r5
      006589 F0               [24]10283 	movx	@dptr,a
                                  10284 ;	calc.c:510: if ((char)input == 'q') {
      00658A BD 71 29         [24]10285 	cjne	r5,#0x71,00189$
                                  10286 ;	calc.c:511: if (state_exec(&s, EVENT_TERM) <= 0) break;
      00658D 74 08            [12]10287 	mov	a,#0x08
      00658F C0 E0            [24]10288 	push	acc
      006591 E4               [12]10289 	clr	a
      006592 C0 E0            [24]10290 	push	acc
      006594 90 90 00         [24]10291 	mov	dptr,#_s
      006597 75 F0 00         [24]10292 	mov	b,#0x00
      00659A 12 21 46         [24]10293 	lcall	_state_exec
      00659D AB 82            [24]10294 	mov	r3,dpl
      00659F AC 83            [24]10295 	mov	r4,dph
      0065A1 15 81            [12]10296 	dec	sp
      0065A3 15 81            [12]10297 	dec	sp
      0065A5 C3               [12]10298 	clr	c
      0065A6 E4               [12]10299 	clr	a
      0065A7 9B               [12]10300 	subb	a,r3
      0065A8 74 80            [12]10301 	mov	a,#(0x00 ^ 0x80)
      0065AA 8C F0            [24]10302 	mov	b,r4
      0065AC 63 F0 80         [24]10303 	xrl	b,#0x80
      0065AF 95 F0            [12]10304 	subb	a,b
      0065B1 40 84            [24]10305 	jc	00192$
      0065B3 02 68 65         [24]10306 	ljmp	00193$
      0065B6                      10307 00189$:
                                  10308 ;	calc.c:512: } else if ((char)input == 's') {
      0065B6 BD 73 2C         [24]10309 	cjne	r5,#0x73,00186$
                                  10310 ;	calc.c:513: if (state_exec(&s, EVENT_STATUS) <= 0) break;
      0065B9 74 03            [12]10311 	mov	a,#0x03
      0065BB C0 E0            [24]10312 	push	acc
      0065BD E4               [12]10313 	clr	a
      0065BE C0 E0            [24]10314 	push	acc
      0065C0 90 90 00         [24]10315 	mov	dptr,#_s
      0065C3 75 F0 00         [24]10316 	mov	b,#0x00
      0065C6 12 21 46         [24]10317 	lcall	_state_exec
      0065C9 AB 82            [24]10318 	mov	r3,dpl
      0065CB AC 83            [24]10319 	mov	r4,dph
      0065CD 15 81            [12]10320 	dec	sp
      0065CF 15 81            [12]10321 	dec	sp
      0065D1 C3               [12]10322 	clr	c
      0065D2 E4               [12]10323 	clr	a
      0065D3 9B               [12]10324 	subb	a,r3
      0065D4 74 80            [12]10325 	mov	a,#(0x00 ^ 0x80)
      0065D6 8C F0            [24]10326 	mov	b,r4
      0065D8 63 F0 80         [24]10327 	xrl	b,#0x80
      0065DB 95 F0            [12]10328 	subb	a,b
      0065DD 50 03            [24]10329 	jnc	00410$
      0065DF 02 65 37         [24]10330 	ljmp	00192$
      0065E2                      10331 00410$:
      0065E2 02 68 65         [24]10332 	ljmp	00193$
      0065E5                      10333 00186$:
                                  10334 ;	calc.c:514: } else if ((char)input == '?') {
      0065E5 BD 3F 2C         [24]10335 	cjne	r5,#0x3f,00183$
                                  10336 ;	calc.c:515: if (state_exec(&s, EVENT_HELP) <= 0) break;
      0065E8 74 04            [12]10337 	mov	a,#0x04
      0065EA C0 E0            [24]10338 	push	acc
      0065EC E4               [12]10339 	clr	a
      0065ED C0 E0            [24]10340 	push	acc
      0065EF 90 90 00         [24]10341 	mov	dptr,#_s
      0065F2 75 F0 00         [24]10342 	mov	b,#0x00
      0065F5 12 21 46         [24]10343 	lcall	_state_exec
      0065F8 AB 82            [24]10344 	mov	r3,dpl
      0065FA AC 83            [24]10345 	mov	r4,dph
      0065FC 15 81            [12]10346 	dec	sp
      0065FE 15 81            [12]10347 	dec	sp
      006600 C3               [12]10348 	clr	c
      006601 E4               [12]10349 	clr	a
      006602 9B               [12]10350 	subb	a,r3
      006603 74 80            [12]10351 	mov	a,#(0x00 ^ 0x80)
      006605 8C F0            [24]10352 	mov	b,r4
      006607 63 F0 80         [24]10353 	xrl	b,#0x80
      00660A 95 F0            [12]10354 	subb	a,b
      00660C 50 03            [24]10355 	jnc	00413$
      00660E 02 65 37         [24]10356 	ljmp	00192$
      006611                      10357 00413$:
      006611 02 68 65         [24]10358 	ljmp	00193$
      006614                      10359 00183$:
                                  10360 ;	calc.c:516: } else if ((char)input == 'i') {
      006614 BD 69 2C         [24]10361 	cjne	r5,#0x69,00180$
                                  10362 ;	calc.c:517: if (state_exec(&s, EVENT_RSTA_i) <= 0) break;
      006617 74 06            [12]10363 	mov	a,#0x06
      006619 C0 E0            [24]10364 	push	acc
      00661B E4               [12]10365 	clr	a
      00661C C0 E0            [24]10366 	push	acc
      00661E 90 90 00         [24]10367 	mov	dptr,#_s
      006621 75 F0 00         [24]10368 	mov	b,#0x00
      006624 12 21 46         [24]10369 	lcall	_state_exec
      006627 AB 82            [24]10370 	mov	r3,dpl
      006629 AC 83            [24]10371 	mov	r4,dph
      00662B 15 81            [12]10372 	dec	sp
      00662D 15 81            [12]10373 	dec	sp
      00662F C3               [12]10374 	clr	c
      006630 E4               [12]10375 	clr	a
      006631 9B               [12]10376 	subb	a,r3
      006632 74 80            [12]10377 	mov	a,#(0x00 ^ 0x80)
      006634 8C F0            [24]10378 	mov	b,r4
      006636 63 F0 80         [24]10379 	xrl	b,#0x80
      006639 95 F0            [12]10380 	subb	a,b
      00663B 50 03            [24]10381 	jnc	00416$
      00663D 02 65 37         [24]10382 	ljmp	00192$
      006640                      10383 00416$:
      006640 02 68 65         [24]10384 	ljmp	00193$
      006643                      10385 00180$:
                                  10386 ;	calc.c:518: } else if ((char)input == 'I') {
      006643 BD 49 2C         [24]10387 	cjne	r5,#0x49,00177$
                                  10388 ;	calc.c:519: if (state_exec(&s, EVENT_RSTA_I) <= 0) break;
      006646 74 07            [12]10389 	mov	a,#0x07
      006648 C0 E0            [24]10390 	push	acc
      00664A E4               [12]10391 	clr	a
      00664B C0 E0            [24]10392 	push	acc
      00664D 90 90 00         [24]10393 	mov	dptr,#_s
      006650 75 F0 00         [24]10394 	mov	b,#0x00
      006653 12 21 46         [24]10395 	lcall	_state_exec
      006656 AB 82            [24]10396 	mov	r3,dpl
      006658 AC 83            [24]10397 	mov	r4,dph
      00665A 15 81            [12]10398 	dec	sp
      00665C 15 81            [12]10399 	dec	sp
      00665E C3               [12]10400 	clr	c
      00665F E4               [12]10401 	clr	a
      006660 9B               [12]10402 	subb	a,r3
      006661 74 80            [12]10403 	mov	a,#(0x00 ^ 0x80)
      006663 8C F0            [24]10404 	mov	b,r4
      006665 63 F0 80         [24]10405 	xrl	b,#0x80
      006668 95 F0            [12]10406 	subb	a,b
      00666A 50 03            [24]10407 	jnc	00419$
      00666C 02 65 37         [24]10408 	ljmp	00192$
      00666F                      10409 00419$:
      00666F 02 68 65         [24]10410 	ljmp	00193$
      006672                      10411 00177$:
                                  10412 ;	calc.c:521: ((char)input == 'h') || ((char)input == 'H') ||
      006672 BD 68 02         [24]10413 	cjne	r5,#0x68,00420$
      006675 80 0D            [24]10414 	sjmp	00170$
      006677                      10415 00420$:
      006677 BD 48 02         [24]10416 	cjne	r5,#0x48,00421$
      00667A 80 08            [24]10417 	sjmp	00170$
      00667C                      10418 00421$:
                                  10419 ;	calc.c:522: ((char)input == 'o') || ((char)input == 'O')
      00667C BD 6F 02         [24]10420 	cjne	r5,#0x6f,00422$
      00667F 80 03            [24]10421 	sjmp	00170$
      006681                      10422 00422$:
      006681 BD 4F 2C         [24]10423 	cjne	r5,#0x4f,00171$
      006684                      10424 00170$:
                                  10425 ;	calc.c:524: if (state_exec(&s, EVENT_BASE) <= 0) break;
      006684 74 05            [12]10426 	mov	a,#0x05
      006686 C0 E0            [24]10427 	push	acc
      006688 E4               [12]10428 	clr	a
      006689 C0 E0            [24]10429 	push	acc
      00668B 90 90 00         [24]10430 	mov	dptr,#_s
      00668E 75 F0 00         [24]10431 	mov	b,#0x00
      006691 12 21 46         [24]10432 	lcall	_state_exec
      006694 AB 82            [24]10433 	mov	r3,dpl
      006696 AC 83            [24]10434 	mov	r4,dph
      006698 15 81            [12]10435 	dec	sp
      00669A 15 81            [12]10436 	dec	sp
      00669C C3               [12]10437 	clr	c
      00669D E4               [12]10438 	clr	a
      00669E 9B               [12]10439 	subb	a,r3
      00669F 74 80            [12]10440 	mov	a,#(0x00 ^ 0x80)
      0066A1 8C F0            [24]10441 	mov	b,r4
      0066A3 63 F0 80         [24]10442 	xrl	b,#0x80
      0066A6 95 F0            [12]10443 	subb	a,b
      0066A8 50 03            [24]10444 	jnc	00425$
      0066AA 02 65 37         [24]10445 	ljmp	00192$
      0066AD                      10446 00425$:
      0066AD 02 68 65         [24]10447 	ljmp	00193$
      0066B0                      10448 00171$:
                                  10449 ;	calc.c:525: } else if (isxdigit(input)) {
      0066B0 8E 82            [24]10450 	mov	dpl,r6
      0066B2 8F 83            [24]10451 	mov	dph,r7
      0066B4 C0 05            [24]10452 	push	ar5
      0066B6 12 68 8F         [24]10453 	lcall	_isxdigit
      0066B9 E5 82            [12]10454 	mov	a,dpl
      0066BB 85 83 F0         [24]10455 	mov	b,dph
      0066BE D0 05            [24]10456 	pop	ar5
      0066C0 45 F0            [12]10457 	orl	a,b
      0066C2 60 2C            [24]10458 	jz	00168$
                                  10459 ;	calc.c:526: if (state_exec(&s, EVENT_DIGIT) <= 0) break;
      0066C4 74 01            [12]10460 	mov	a,#0x01
      0066C6 C0 E0            [24]10461 	push	acc
      0066C8 E4               [12]10462 	clr	a
      0066C9 C0 E0            [24]10463 	push	acc
      0066CB 90 90 00         [24]10464 	mov	dptr,#_s
      0066CE 75 F0 00         [24]10465 	mov	b,#0x00
      0066D1 12 21 46         [24]10466 	lcall	_state_exec
      0066D4 AE 82            [24]10467 	mov	r6,dpl
      0066D6 AF 83            [24]10468 	mov	r7,dph
      0066D8 15 81            [12]10469 	dec	sp
      0066DA 15 81            [12]10470 	dec	sp
      0066DC C3               [12]10471 	clr	c
      0066DD E4               [12]10472 	clr	a
      0066DE 9E               [12]10473 	subb	a,r6
      0066DF 74 80            [12]10474 	mov	a,#(0x00 ^ 0x80)
      0066E1 8F F0            [24]10475 	mov	b,r7
      0066E3 63 F0 80         [24]10476 	xrl	b,#0x80
      0066E6 95 F0            [12]10477 	subb	a,b
      0066E8 50 03            [24]10478 	jnc	00427$
      0066EA 02 65 37         [24]10479 	ljmp	00192$
      0066ED                      10480 00427$:
      0066ED 02 68 65         [24]10481 	ljmp	00193$
      0066F0                      10482 00168$:
                                  10483 ;	calc.c:528: ((char)input == 'p') || ((char)input == 'P') ||
      0066F0 BD 70 02         [24]10484 	cjne	r5,#0x70,00428$
      0066F3 80 17            [24]10485 	sjmp	00159$
      0066F5                      10486 00428$:
      0066F5 BD 50 02         [24]10487 	cjne	r5,#0x50,00429$
      0066F8 80 12            [24]10488 	sjmp	00159$
      0066FA                      10489 00429$:
                                  10490 ;	calc.c:529: ((char)input == 'v') || ((char)input == 'V') ||
      0066FA BD 76 02         [24]10491 	cjne	r5,#0x76,00430$
      0066FD 80 0D            [24]10492 	sjmp	00159$
      0066FF                      10493 00430$:
      0066FF BD 56 02         [24]10494 	cjne	r5,#0x56,00431$
      006702 80 08            [24]10495 	sjmp	00159$
      006704                      10496 00431$:
                                  10497 ;	calc.c:530: ((char)input == '.') ||
      006704 BD 2E 02         [24]10498 	cjne	r5,#0x2e,00432$
      006707 80 03            [24]10499 	sjmp	00159$
      006709                      10500 00432$:
                                  10501 ;	calc.c:531: ((char)input == 'x')
      006709 BD 78 2C         [24]10502 	cjne	r5,#0x78,00160$
      00670C                      10503 00159$:
                                  10504 ;	calc.c:533: if (state_exec(&s, EVENT_OP) <= 0) break;
      00670C 74 02            [12]10505 	mov	a,#0x02
      00670E C0 E0            [24]10506 	push	acc
      006710 E4               [12]10507 	clr	a
      006711 C0 E0            [24]10508 	push	acc
      006713 90 90 00         [24]10509 	mov	dptr,#_s
      006716 75 F0 00         [24]10510 	mov	b,#0x00
      006719 12 21 46         [24]10511 	lcall	_state_exec
      00671C AE 82            [24]10512 	mov	r6,dpl
      00671E AF 83            [24]10513 	mov	r7,dph
      006720 15 81            [12]10514 	dec	sp
      006722 15 81            [12]10515 	dec	sp
      006724 C3               [12]10516 	clr	c
      006725 E4               [12]10517 	clr	a
      006726 9E               [12]10518 	subb	a,r6
      006727 74 80            [12]10519 	mov	a,#(0x00 ^ 0x80)
      006729 8F F0            [24]10520 	mov	b,r7
      00672B 63 F0 80         [24]10521 	xrl	b,#0x80
      00672E 95 F0            [12]10522 	subb	a,b
      006730 50 03            [24]10523 	jnc	00435$
      006732 02 65 37         [24]10524 	ljmp	00192$
      006735                      10525 00435$:
      006735 02 68 65         [24]10526 	ljmp	00193$
      006738                      10527 00160$:
                                  10528 ;	calc.c:535: ((char)input == 'X') || ((char)input == 'T') ||
      006738 BD 58 02         [24]10529 	cjne	r5,#0x58,00436$
      00673B 80 17            [24]10530 	sjmp	00151$
      00673D                      10531 00436$:
      00673D BD 54 02         [24]10532 	cjne	r5,#0x54,00437$
      006740 80 12            [24]10533 	sjmp	00151$
      006742                      10534 00437$:
                                  10535 ;	calc.c:536: ((char)input == 'm') || ((char)input == 'M') ||
      006742 BD 6D 02         [24]10536 	cjne	r5,#0x6d,00438$
      006745 80 0D            [24]10537 	sjmp	00151$
      006747                      10538 00438$:
      006747 BD 4D 02         [24]10539 	cjne	r5,#0x4d,00439$
      00674A 80 08            [24]10540 	sjmp	00151$
      00674C                      10541 00439$:
                                  10542 ;	calc.c:537: ((char)input == 'u') || ((char)input == 'U')
      00674C BD 75 02         [24]10543 	cjne	r5,#0x75,00440$
      00674F 80 03            [24]10544 	sjmp	00151$
      006751                      10545 00440$:
      006751 BD 55 2C         [24]10546 	cjne	r5,#0x55,00152$
      006754                      10547 00151$:
                                  10548 ;	calc.c:539: if (state_exec(&s, EVENT_OP) <= 0) break;
      006754 74 02            [12]10549 	mov	a,#0x02
      006756 C0 E0            [24]10550 	push	acc
      006758 E4               [12]10551 	clr	a
      006759 C0 E0            [24]10552 	push	acc
      00675B 90 90 00         [24]10553 	mov	dptr,#_s
      00675E 75 F0 00         [24]10554 	mov	b,#0x00
      006761 12 21 46         [24]10555 	lcall	_state_exec
      006764 AE 82            [24]10556 	mov	r6,dpl
      006766 AF 83            [24]10557 	mov	r7,dph
      006768 15 81            [12]10558 	dec	sp
      00676A 15 81            [12]10559 	dec	sp
      00676C C3               [12]10560 	clr	c
      00676D E4               [12]10561 	clr	a
      00676E 9E               [12]10562 	subb	a,r6
      00676F 74 80            [12]10563 	mov	a,#(0x00 ^ 0x80)
      006771 8F F0            [24]10564 	mov	b,r7
      006773 63 F0 80         [24]10565 	xrl	b,#0x80
      006776 95 F0            [12]10566 	subb	a,b
      006778 50 03            [24]10567 	jnc	00443$
      00677A 02 65 37         [24]10568 	ljmp	00192$
      00677D                      10569 00443$:
      00677D 02 68 65         [24]10570 	ljmp	00193$
      006780                      10571 00152$:
                                  10572 ;	calc.c:541: ((char)input == '+') || ((char)input == '-')
      006780 BD 2B 02         [24]10573 	cjne	r5,#0x2b,00444$
      006783 80 03            [24]10574 	sjmp	00147$
      006785                      10575 00444$:
      006785 BD 2D 2C         [24]10576 	cjne	r5,#0x2d,00148$
      006788                      10577 00147$:
                                  10578 ;	calc.c:543: if (state_exec(&s, EVENT_OP) <= 0) break;
      006788 74 02            [12]10579 	mov	a,#0x02
      00678A C0 E0            [24]10580 	push	acc
      00678C E4               [12]10581 	clr	a
      00678D C0 E0            [24]10582 	push	acc
      00678F 90 90 00         [24]10583 	mov	dptr,#_s
      006792 75 F0 00         [24]10584 	mov	b,#0x00
      006795 12 21 46         [24]10585 	lcall	_state_exec
      006798 AE 82            [24]10586 	mov	r6,dpl
      00679A AF 83            [24]10587 	mov	r7,dph
      00679C 15 81            [12]10588 	dec	sp
      00679E 15 81            [12]10589 	dec	sp
      0067A0 C3               [12]10590 	clr	c
      0067A1 E4               [12]10591 	clr	a
      0067A2 9E               [12]10592 	subb	a,r6
      0067A3 74 80            [12]10593 	mov	a,#(0x00 ^ 0x80)
      0067A5 8F F0            [24]10594 	mov	b,r7
      0067A7 63 F0 80         [24]10595 	xrl	b,#0x80
      0067AA 95 F0            [12]10596 	subb	a,b
      0067AC 50 03            [24]10597 	jnc	00447$
      0067AE 02 65 37         [24]10598 	ljmp	00192$
      0067B1                      10599 00447$:
      0067B1 02 68 65         [24]10600 	ljmp	00193$
      0067B4                      10601 00148$:
                                  10602 ;	calc.c:545: ((char)input == '*') ||
      0067B4 BD 2A 02         [24]10603 	cjne	r5,#0x2a,00448$
      0067B7 80 12            [24]10604 	sjmp	00140$
      0067B9                      10605 00448$:
                                  10606 ;	calc.c:546: ((char)input == '/') || ((char)input == '\\') ||
      0067B9 BD 2F 02         [24]10607 	cjne	r5,#0x2f,00449$
      0067BC 80 0D            [24]10608 	sjmp	00140$
      0067BE                      10609 00449$:
      0067BE BD 5C 02         [24]10610 	cjne	r5,#0x5c,00450$
      0067C1 80 08            [24]10611 	sjmp	00140$
      0067C3                      10612 00450$:
                                  10613 ;	calc.c:547: ((char)input == '%') || ((char)input == '#')
      0067C3 BD 25 02         [24]10614 	cjne	r5,#0x25,00451$
      0067C6 80 03            [24]10615 	sjmp	00140$
      0067C8                      10616 00451$:
      0067C8 BD 23 29         [24]10617 	cjne	r5,#0x23,00141$
      0067CB                      10618 00140$:
                                  10619 ;	calc.c:549: if (state_exec(&s, EVENT_OP) <= 0) break;
      0067CB 74 02            [12]10620 	mov	a,#0x02
      0067CD C0 E0            [24]10621 	push	acc
      0067CF E4               [12]10622 	clr	a
      0067D0 C0 E0            [24]10623 	push	acc
      0067D2 90 90 00         [24]10624 	mov	dptr,#_s
      0067D5 75 F0 00         [24]10625 	mov	b,#0x00
      0067D8 12 21 46         [24]10626 	lcall	_state_exec
      0067DB AE 82            [24]10627 	mov	r6,dpl
      0067DD AF 83            [24]10628 	mov	r7,dph
      0067DF 15 81            [12]10629 	dec	sp
      0067E1 15 81            [12]10630 	dec	sp
      0067E3 C3               [12]10631 	clr	c
      0067E4 E4               [12]10632 	clr	a
      0067E5 9E               [12]10633 	subb	a,r6
      0067E6 74 80            [12]10634 	mov	a,#(0x00 ^ 0x80)
      0067E8 8F F0            [24]10635 	mov	b,r7
      0067EA 63 F0 80         [24]10636 	xrl	b,#0x80
      0067ED 95 F0            [12]10637 	subb	a,b
      0067EF 50 74            [24]10638 	jnc	00193$
      0067F1 02 65 37         [24]10639 	ljmp	00192$
      0067F4                      10640 00141$:
                                  10641 ;	calc.c:551: ((char)input == '&') ||
      0067F4 BD 26 02         [24]10642 	cjne	r5,#0x26,00455$
      0067F7 80 1C            [24]10643 	sjmp	00131$
      0067F9                      10644 00455$:
                                  10645 ;	calc.c:552: ((char)input == '|') || ((char)input == '^') ||
      0067F9 BD 7C 02         [24]10646 	cjne	r5,#0x7c,00456$
      0067FC 80 17            [24]10647 	sjmp	00131$
      0067FE                      10648 00456$:
      0067FE BD 5E 02         [24]10649 	cjne	r5,#0x5e,00457$
      006801 80 12            [24]10650 	sjmp	00131$
      006803                      10651 00457$:
                                  10652 ;	calc.c:553: ((char)input == '~') ||
      006803 BD 7E 02         [24]10653 	cjne	r5,#0x7e,00458$
      006806 80 0D            [24]10654 	sjmp	00131$
      006808                      10655 00458$:
                                  10656 ;	calc.c:554: ((char)input == '>') || ((char)input == ']') ||
      006808 BD 3E 02         [24]10657 	cjne	r5,#0x3e,00459$
      00680B 80 08            [24]10658 	sjmp	00131$
      00680D                      10659 00459$:
      00680D BD 5D 02         [24]10660 	cjne	r5,#0x5d,00460$
      006810 80 03            [24]10661 	sjmp	00131$
      006812                      10662 00460$:
                                  10663 ;	calc.c:555: ((char)input == '<')
      006812 BD 3C 29         [24]10664 	cjne	r5,#0x3c,00132$
      006815                      10665 00131$:
                                  10666 ;	calc.c:557: if (state_exec(&s, EVENT_OP) <= 0) break;
      006815 74 02            [12]10667 	mov	a,#0x02
      006817 C0 E0            [24]10668 	push	acc
      006819 E4               [12]10669 	clr	a
      00681A C0 E0            [24]10670 	push	acc
      00681C 90 90 00         [24]10671 	mov	dptr,#_s
      00681F 75 F0 00         [24]10672 	mov	b,#0x00
      006822 12 21 46         [24]10673 	lcall	_state_exec
      006825 AE 82            [24]10674 	mov	r6,dpl
      006827 AF 83            [24]10675 	mov	r7,dph
      006829 15 81            [12]10676 	dec	sp
      00682B 15 81            [12]10677 	dec	sp
      00682D C3               [12]10678 	clr	c
      00682E E4               [12]10679 	clr	a
      00682F 9E               [12]10680 	subb	a,r6
      006830 74 80            [12]10681 	mov	a,#(0x00 ^ 0x80)
      006832 8F F0            [24]10682 	mov	b,r7
      006834 63 F0 80         [24]10683 	xrl	b,#0x80
      006837 95 F0            [12]10684 	subb	a,b
      006839 50 2A            [24]10685 	jnc	00193$
      00683B 02 65 37         [24]10686 	ljmp	00192$
      00683E                      10687 00132$:
                                  10688 ;	calc.c:559: if (state_exec(&s, EVENT_DELIM) <= 0) break;
      00683E E4               [12]10689 	clr	a
      00683F C0 E0            [24]10690 	push	acc
      006841 C0 E0            [24]10691 	push	acc
      006843 90 90 00         [24]10692 	mov	dptr,#_s
      006846 75 F0 00         [24]10693 	mov	b,#0x00
      006849 12 21 46         [24]10694 	lcall	_state_exec
      00684C AE 82            [24]10695 	mov	r6,dpl
      00684E AF 83            [24]10696 	mov	r7,dph
      006850 15 81            [12]10697 	dec	sp
      006852 15 81            [12]10698 	dec	sp
      006854 C3               [12]10699 	clr	c
      006855 E4               [12]10700 	clr	a
      006856 9E               [12]10701 	subb	a,r6
      006857 74 80            [12]10702 	mov	a,#(0x00 ^ 0x80)
      006859 8F F0            [24]10703 	mov	b,r7
      00685B 63 F0 80         [24]10704 	xrl	b,#0x80
      00685E 95 F0            [12]10705 	subb	a,b
      006860 50 03            [24]10706 	jnc	00464$
      006862 02 65 37         [24]10707 	ljmp	00192$
      006865                      10708 00464$:
      006865                      10709 00193$:
                                  10710 ;	calc.c:563: printstr("TERM\r\n");
      006865 7D D9            [12]10711 	mov	r5,#___str_51
      006867 7E 8B            [12]10712 	mov	r6,#(___str_51 >> 8)
      006869 7F 80            [12]10713 	mov	r7,#0x80
                                  10714 ;	calc.c:51: return;
      00686B                      10715 00202$:
                                  10716 ;	calc.c:49: for (; *s; s++) putchar(*s);
      00686B 8D 82            [24]10717 	mov	dpl,r5
      00686D 8E 83            [24]10718 	mov	dph,r6
      00686F 8F F0            [24]10719 	mov	b,r7
      006871 12 6F B8         [24]10720 	lcall	__gptrget
      006874 FC               [12]10721 	mov	r4,a
      006875 60 10            [24]10722 	jz	00197$
      006877 7B 00            [12]10723 	mov	r3,#0x00
      006879 8C 82            [24]10724 	mov	dpl,r4
      00687B 8B 83            [24]10725 	mov	dph,r3
      00687D 12 2C 1F         [24]10726 	lcall	_putchar
      006880 0D               [12]10727 	inc	r5
                                  10728 ;	calc.c:563: printstr("TERM\r\n");
      006881 BD 00 E7         [24]10729 	cjne	r5,#0x00,00202$
      006884 0E               [12]10730 	inc	r6
      006885 80 E4            [24]10731 	sjmp	00202$
      006887                      10732 00197$:
                                  10733 ;	calc.c:565: PCON |= 2;
      006887 43 87 02         [24]10734 	orl	_PCON,#0x02
                                  10735 ;	calc.c:567: return;
                                  10736 ;	calc.c:568: }
      00688A 15 81            [12]10737 	dec	sp
      00688C D0 08            [24]10738 	pop	_bp
      00688E 22               [24]10739 	ret
                                  10740 	.area CSEG    (CODE)
                                  10741 	.area CONST   (CODE)
                                  10742 	.area CONST   (CODE)
      008839                      10743 ___str_0:
      008839 25 20 31 31 6C 64    10744 	.ascii "% 11ld"
      00883F 09                   10745 	.db 0x09
      008840 00                   10746 	.db 0x00
                                  10747 	.area CSEG    (CODE)
                                  10748 	.area CONST   (CODE)
      008841                      10749 ___str_1:
      008841 25 30 38 6C 78       10750 	.ascii "%08lx"
      008846 09                   10751 	.db 0x09
      008847 00                   10752 	.db 0x00
                                  10753 	.area CSEG    (CODE)
                                  10754 	.area CONST   (CODE)
      008848                      10755 ___str_2:
      008848 0D                   10756 	.db 0x0d
      008849 0A                   10757 	.db 0x0a
      00884A 00                   10758 	.db 0x00
                                  10759 	.area CSEG    (CODE)
                                  10760 	.area CONST   (CODE)
      00884B                      10761 ___str_3:
      00884B 73 74 61 63 6B 20 75 10762 	.ascii "stack underflow"
             6E 64 65 72 66 6C 6F
             77
      00885A 0D                   10763 	.db 0x0d
      00885B 0A                   10764 	.db 0x0a
      00885C 00                   10765 	.db 0x00
                                  10766 	.area CSEG    (CODE)
                                  10767 	.area CONST   (CODE)
      00885D                      10768 ___str_4:
      00885D 50 53 50 41          10769 	.ascii "PSPA"
      008861 09                   10770 	.db 0x09
      008862 00                   10771 	.db 0x00
                                  10772 	.area CSEG    (CODE)
                                  10773 	.area CONST   (CODE)
      008863                      10774 ___str_5:
      008863 53 53 50 41          10775 	.ascii "SSPA"
      008867 09                   10776 	.db 0x09
      008868 00                   10777 	.db 0x00
                                  10778 	.area CSEG    (CODE)
                                  10779 	.area CONST   (CODE)
      008869                      10780 ___str_6:
      008869 50 53 56 41          10781 	.ascii "PSVA"
      00886D 09                   10782 	.db 0x09
      00886E 00                   10783 	.db 0x00
                                  10784 	.area CSEG    (CODE)
                                  10785 	.area CONST   (CODE)
      00886F                      10786 ___str_7:
      00886F 50 53 56 54 4F 50    10787 	.ascii "PSVTOP"
      008875 09                   10788 	.db 0x09
      008876 00                   10789 	.db 0x00
                                  10790 	.area CSEG    (CODE)
                                  10791 	.area CONST   (CODE)
      008877                      10792 ___str_8:
      008877 50 53 50 54 4F 50    10793 	.ascii "PSPTOP"
      00887D 09                   10794 	.db 0x09
      00887E 00                   10795 	.db 0x00
                                  10796 	.area CSEG    (CODE)
                                  10797 	.area CONST   (CODE)
      00887F                      10798 ___str_9:
      00887F 0D                   10799 	.db 0x0d
      008880 0A                   10800 	.db 0x0a
      008881 73 74 61 63 6B 20 75 10801 	.ascii "stack underflow"
             6E 64 65 72 66 6C 6F
             77
      008890 0D                   10802 	.db 0x0d
      008891 0A                   10803 	.db 0x0a
      008892 00                   10804 	.db 0x00
                                  10805 	.area CSEG    (CODE)
                                  10806 	.area CONST   (CODE)
      008893                      10807 ___str_10:
      008893 0D                   10808 	.db 0x0d
      008894 0A                   10809 	.db 0x0a
      008895 73 65 63 6F 6E 64 61 10810 	.ascii "secondary stack overflow"
             72 79 20 73 74 61 63
             6B 20 6F 76 65 72 66
             6C 6F 77
      0088AD 0D                   10811 	.db 0x0d
      0088AE 0A                   10812 	.db 0x0a
      0088AF 00                   10813 	.db 0x00
                                  10814 	.area CSEG    (CODE)
                                  10815 	.area CONST   (CODE)
      0088B0                      10816 ___str_11:
      0088B0 0D                   10817 	.db 0x0d
      0088B1 0A                   10818 	.db 0x0a
      0088B2 73 65 63 6F 6E 64 61 10819 	.ascii "secondary stack underflow"
             72 79 20 73 74 61 63
             6B 20 75 6E 64 65 72
             66 6C 6F 77
      0088CB 0D                   10820 	.db 0x0d
      0088CC 0A                   10821 	.db 0x0a
      0088CD 00                   10822 	.db 0x00
                                  10823 	.area CSEG    (CODE)
                                  10824 	.area CONST   (CODE)
      0088CE                      10825 ___str_12:
      0088CE 0D                   10826 	.db 0x0d
      0088CF 0A                   10827 	.db 0x0a
      0088D0 73 74 61 63 6B 20 6F 10828 	.ascii "stack overflow"
             76 65 72 66 6C 6F 77
      0088DE 0D                   10829 	.db 0x0d
      0088DF 0A                   10830 	.db 0x0a
      0088E0 00                   10831 	.db 0x00
                                  10832 	.area CSEG    (CODE)
                                  10833 	.area CONST   (CODE)
      0088E1                      10834 ___str_13:
      0088E1 0D                   10835 	.db 0x0d
      0088E2 0A                   10836 	.db 0x0a
      0088E3 64 69 76 69 73 69 6F 10837 	.ascii "division by zero"
             6E 20 62 79 20 7A 65
             72 6F
      0088F3 0D                   10838 	.db 0x0d
      0088F4 0A                   10839 	.db 0x0a
      0088F5 00                   10840 	.db 0x00
                                  10841 	.area CSEG    (CODE)
                                  10842 	.area CONST   (CODE)
      0088F6                      10843 ___str_14:
      0088F6 0D                   10844 	.db 0x0d
      0088F7 0A                   10845 	.db 0x0a
      0088F8 50 53 20 3D 20 25 70 10846 	.ascii "PS = %p, SS = %p, base = %d"
             2C 20 53 53 20 3D 20
             25 70 2C 20 62 61 73
             65 20 3D 20 25 64
      008913 0D                   10847 	.db 0x0d
      008914 0A                   10848 	.db 0x0a
      008915 00                   10849 	.db 0x00
                                  10850 	.area CSEG    (CODE)
                                  10851 	.area CONST   (CODE)
      008916                      10852 ___str_15:
      008916 41 43 43             10853 	.ascii "ACC"
      008919 09                   10854 	.db 0x09
      00891A 00                   10855 	.db 0x00
                                  10856 	.area CSEG    (CODE)
                                  10857 	.area CONST   (CODE)
      00891B                      10858 ___str_16:
      00891B 0D                   10859 	.db 0x0d
      00891C 0A                   10860 	.db 0x0a
      00891D 50 53 54 4F 50 31    10861 	.ascii "PSTOP1"
      008923 09                   10862 	.db 0x09
      008924 00                   10863 	.db 0x00
                                  10864 	.area CSEG    (CODE)
                                  10865 	.area CONST   (CODE)
      008925                      10866 ___str_17:
      008925 0D                   10867 	.db 0x0d
      008926 0A                   10868 	.db 0x0a
      008927 50 53 54 4F 50 30    10869 	.ascii "PSTOP0"
      00892D 09                   10870 	.db 0x09
      00892E 00                   10871 	.db 0x00
                                  10872 	.area CSEG    (CODE)
                                  10873 	.area CONST   (CODE)
      00892F                      10874 ___str_18:
      00892F 0D                   10875 	.db 0x0d
      008930 0A                   10876 	.db 0x0a
      008931 53 53 54 4F 50 31    10877 	.ascii "SSTOP1"
      008937 09                   10878 	.db 0x09
      008938 00                   10879 	.db 0x00
                                  10880 	.area CSEG    (CODE)
                                  10881 	.area CONST   (CODE)
      008939                      10882 ___str_19:
      008939 0D                   10883 	.db 0x0d
      00893A 0A                   10884 	.db 0x0a
      00893B 53 53 54 4F 50 30    10885 	.ascii "SSTOP0"
      008941 09                   10886 	.db 0x09
      008942 00                   10887 	.db 0x00
                                  10888 	.area CSEG    (CODE)
                                  10889 	.area CONST   (CODE)
      008943                      10890 ___str_20:
      008943 0D                   10891 	.db 0x0d
      008944 0A                   10892 	.db 0x0a
      008945 48 68 4F 6F          10893 	.ascii "HhOo"
      008949 09                   10894 	.db 0x09
      00894A 62 61 73 65 20 31 36 10895 	.ascii "base 16 10 8 2"
             20 31 30 20 38 20 32
      008958 0D                   10896 	.db 0x0d
      008959 0A                   10897 	.db 0x0a
      00895A 00                   10898 	.db 0x00
                                  10899 	.area CSEG    (CODE)
                                  10900 	.area CONST   (CODE)
      00895B                      10901 ___str_21:
      00895B 70 2E                10902 	.ascii "p."
      00895D 09                   10903 	.db 0x09
      00895E 70 6F 70 20 74 6F 70 10904 	.ascii "pop top"
      008965 0D                   10905 	.db 0x0d
      008966 0A                   10906 	.db 0x0a
      008967 00                   10907 	.db 0x00
                                  10908 	.area CSEG    (CODE)
                                  10909 	.area CONST   (CODE)
      008968                      10910 ___str_22:
      008968 50                   10911 	.ascii "P"
      008969 09                   10912 	.db 0x09
      00896A 70 6F 70 20 73 74 61 10913 	.ascii "pop stack"
             63 6B
      008973 0D                   10914 	.db 0x0d
      008974 0A                   10915 	.db 0x0a
      008975 00                   10916 	.db 0x00
                                  10917 	.area CSEG    (CODE)
                                  10918 	.area CONST   (CODE)
      008976                      10919 ___str_23:
      008976 76                   10920 	.ascii "v"
      008977 09                   10921 	.db 0x09
      008978 70 65 65 6B 20 74 6F 10922 	.ascii "peek top"
             70
      008980 0D                   10923 	.db 0x0d
      008981 0A                   10924 	.db 0x0a
      008982 00                   10925 	.db 0x00
                                  10926 	.area CSEG    (CODE)
                                  10927 	.area CONST   (CODE)
      008983                      10928 ___str_24:
      008983 56                   10929 	.ascii "V"
      008984 09                   10930 	.db 0x09
      008985 70 65 65 6B 20 73 74 10931 	.ascii "peek stack"
             61 63 6B
      00898F 0D                   10932 	.db 0x0d
      008990 0A                   10933 	.db 0x0a
      008991 00                   10934 	.db 0x00
                                  10935 	.area CSEG    (CODE)
                                  10936 	.area CONST   (CODE)
      008992                      10937 ___str_25:
      008992 69                   10938 	.ascii "i"
      008993 09                   10939 	.db 0x09
      008994 72 65 73 65 74 20 61 10940 	.ascii "reset acc"
             63 63
      00899D 0D                   10941 	.db 0x0d
      00899E 0A                   10942 	.db 0x0a
      00899F 00                   10943 	.db 0x00
                                  10944 	.area CSEG    (CODE)
                                  10945 	.area CONST   (CODE)
      0089A0                      10946 ___str_26:
      0089A0 49                   10947 	.ascii "I"
      0089A1 09                   10948 	.db 0x09
      0089A2 72 65 73 65 74 20 61 10949 	.ascii "reset and discard acc"
             6E 64 20 64 69 73 63
             61 72 64 20 61 63 63
      0089B7 0D                   10950 	.db 0x0d
      0089B8 0A                   10951 	.db 0x0a
      0089B9 00                   10952 	.db 0x00
                                  10953 	.area CSEG    (CODE)
                                  10954 	.area CONST   (CODE)
      0089BA                      10955 ___str_27:
      0089BA 78                   10956 	.ascii "x"
      0089BB 09                   10957 	.db 0x09
      0089BC 65 78 63 68 61 6E 67 10958 	.ascii "exchange top 2"
             65 20 74 6F 70 20 32
      0089CA 0D                   10959 	.db 0x0d
      0089CB 0A                   10960 	.db 0x0a
      0089CC 00                   10961 	.db 0x00
                                  10962 	.area CSEG    (CODE)
                                  10963 	.area CONST   (CODE)
      0089CD                      10964 ___str_28:
      0089CD 58                   10965 	.ascii "X"
      0089CE 09                   10966 	.db 0x09
      0089CF 65 78 63 68 61 6E 67 10967 	.ascii "exchange stacks primary <-> secondary"
             65 20 73 74 61 63 6B
             73 20 70 72 69 6D 61
             72 79 20 3C 2D 3E 20
             73 65 63 6F 6E 64 61
             72 79
      0089F4 0D                   10968 	.db 0x0d
      0089F5 0A                   10969 	.db 0x0a
      0089F6 00                   10970 	.db 0x00
                                  10971 	.area CSEG    (CODE)
                                  10972 	.area CONST   (CODE)
      0089F7                      10973 ___str_29:
      0089F7 54                   10974 	.ascii "T"
      0089F8 09                   10975 	.db 0x09
      0089F9 65 78 63 68 61 6E 67 10976 	.ascii "exchange tops primary <-> secondary"
             65 20 74 6F 70 73 20
             70 72 69 6D 61 72 79
             20 3C 2D 3E 20 73 65
             63 6F 6E 64 61 72 79
      008A1C 0D                   10977 	.db 0x0d
      008A1D 0A                   10978 	.db 0x0a
      008A1E 00                   10979 	.db 0x00
                                  10980 	.area CSEG    (CODE)
                                  10981 	.area CONST   (CODE)
      008A1F                      10982 ___str_30:
      008A1F 55                   10983 	.ascii "U"
      008A20 09                   10984 	.db 0x09
      008A21 63 6F 70 79 20 74 6F 10985 	.ascii "copy top secondary -> primary"
             70 20 73 65 63 6F 6E
             64 61 72 79 20 2D 3E
             20 70 72 69 6D 61 72
             79
      008A3E 0D                   10986 	.db 0x0d
      008A3F 0A                   10987 	.db 0x0a
      008A40 00                   10988 	.db 0x00
                                  10989 	.area CSEG    (CODE)
                                  10990 	.area CONST   (CODE)
      008A41                      10991 ___str_31:
      008A41 75                   10992 	.ascii "u"
      008A42 09                   10993 	.db 0x09
      008A43 63 6F 70 79 20 74 6F 10994 	.ascii "copy top primary -> secondary"
             70 20 70 72 69 6D 61
             72 79 20 2D 3E 20 73
             65 63 6F 6E 64 61 72
             79
      008A60 0D                   10995 	.db 0x0d
      008A61 0A                   10996 	.db 0x0a
      008A62 00                   10997 	.db 0x00
                                  10998 	.area CSEG    (CODE)
                                  10999 	.area CONST   (CODE)
      008A63                      11000 ___str_32:
      008A63 4D                   11001 	.ascii "M"
      008A64 09                   11002 	.db 0x09
      008A65 6D 6F 76 65 20 74 6F 11003 	.ascii "move top secondary -> primary"
             70 20 73 65 63 6F 6E
             64 61 72 79 20 2D 3E
             20 70 72 69 6D 61 72
             79
      008A82 0D                   11004 	.db 0x0d
      008A83 0A                   11005 	.db 0x0a
      008A84 00                   11006 	.db 0x00
                                  11007 	.area CSEG    (CODE)
                                  11008 	.area CONST   (CODE)
      008A85                      11009 ___str_33:
      008A85 6D                   11010 	.ascii "m"
      008A86 09                   11011 	.db 0x09
      008A87 6D 6F 76 65 20 74 6F 11012 	.ascii "move top primary -> secondary"
             70 20 70 72 69 6D 61
             72 79 20 2D 3E 20 73
             65 63 6F 6E 64 61 72
             79
      008AA4 0D                   11013 	.db 0x0d
      008AA5 0A                   11014 	.db 0x0a
      008AA6 00                   11015 	.db 0x00
                                  11016 	.area CSEG    (CODE)
                                  11017 	.area CONST   (CODE)
      008AA7                      11018 ___str_34:
      008AA7 2B                   11019 	.ascii "+"
      008AA8 09                   11020 	.db 0x09
      008AA9 61 64 64 20 74 6F 70 11021 	.ascii "add top 2"
             20 32
      008AB2 0D                   11022 	.db 0x0d
      008AB3 0A                   11023 	.db 0x0a
      008AB4 00                   11024 	.db 0x00
                                  11025 	.area CSEG    (CODE)
                                  11026 	.area CONST   (CODE)
      008AB5                      11027 ___str_35:
      008AB5 2D                   11028 	.ascii "-"
      008AB6 09                   11029 	.db 0x09
      008AB7 73 75 62 74 72 61 63 11030 	.ascii "subtract top 2"
             74 20 74 6F 70 20 32
      008AC5 0D                   11031 	.db 0x0d
      008AC6 0A                   11032 	.db 0x0a
      008AC7 00                   11033 	.db 0x00
                                  11034 	.area CSEG    (CODE)
                                  11035 	.area CONST   (CODE)
      008AC8                      11036 ___str_36:
      008AC8 2A                   11037 	.ascii "*"
      008AC9 09                   11038 	.db 0x09
      008ACA 6D 75 6C 74 69 70 6C 11039 	.ascii "multiply top 2"
             79 20 74 6F 70 20 32
      008AD8 0D                   11040 	.db 0x0d
      008AD9 0A                   11041 	.db 0x0a
      008ADA 00                   11042 	.db 0x00
                                  11043 	.area CSEG    (CODE)
                                  11044 	.area CONST   (CODE)
      008ADB                      11045 ___str_37:
      008ADB 2F                   11046 	.ascii "/"
      008ADC 09                   11047 	.db 0x09
      008ADD 64 69 76 69 64 65 20 11048 	.ascii "divide top 2"
             74 6F 70 20 32
      008AE9 0D                   11049 	.db 0x0d
      008AEA 0A                   11050 	.db 0x0a
      008AEB 00                   11051 	.db 0x00
                                  11052 	.area CSEG    (CODE)
                                  11053 	.area CONST   (CODE)
      008AEC                      11054 ___str_38:
      008AEC 5C                   11055 	.db 0x5c
      008AED 09                   11056 	.db 0x09
      008AEE 64 69 76 69 64 65 20 11057 	.ascii "divide top 2 unsigned"
             74 6F 70 20 32 20 75
             6E 73 69 67 6E 65 64
      008B03 0D                   11058 	.db 0x0d
      008B04 0A                   11059 	.db 0x0a
      008B05 00                   11060 	.db 0x00
                                  11061 	.area CSEG    (CODE)
                                  11062 	.area CONST   (CODE)
      008B06                      11063 ___str_39:
      008B06 25                   11064 	.ascii "%"
      008B07 09                   11065 	.db 0x09
      008B08 6D 6F 64 75 6C 75 73 11066 	.ascii "modulus top 2"
             20 74 6F 70 20 32
      008B15 0D                   11067 	.db 0x0d
      008B16 0A                   11068 	.db 0x0a
      008B17 00                   11069 	.db 0x00
                                  11070 	.area CSEG    (CODE)
                                  11071 	.area CONST   (CODE)
      008B18                      11072 ___str_40:
      008B18 23                   11073 	.ascii "#"
      008B19 09                   11074 	.db 0x09
      008B1A 6D 6F 64 75 6C 75 73 11075 	.ascii "modulus top 2 unsigned"
             20 74 6F 70 20 32 20
             75 6E 73 69 67 6E 65
             64
      008B30 0D                   11076 	.db 0x0d
      008B31 0A                   11077 	.db 0x0a
      008B32 00                   11078 	.db 0x00
                                  11079 	.area CSEG    (CODE)
                                  11080 	.area CONST   (CODE)
      008B33                      11081 ___str_41:
      008B33 26                   11082 	.ascii "&"
      008B34 09                   11083 	.db 0x09
      008B35 61 6E 64 20 74 6F 70 11084 	.ascii "and top 2"
             20 32
      008B3E 0D                   11085 	.db 0x0d
      008B3F 0A                   11086 	.db 0x0a
      008B40 00                   11087 	.db 0x00
                                  11088 	.area CSEG    (CODE)
                                  11089 	.area CONST   (CODE)
      008B41                      11090 ___str_42:
      008B41 7C                   11091 	.ascii "|"
      008B42 09                   11092 	.db 0x09
      008B43 6F 72 20 74 6F 70 20 11093 	.ascii "or top 2"
             32
      008B4B 0D                   11094 	.db 0x0d
      008B4C 0A                   11095 	.db 0x0a
      008B4D 00                   11096 	.db 0x00
                                  11097 	.area CSEG    (CODE)
                                  11098 	.area CONST   (CODE)
      008B4E                      11099 ___str_43:
      008B4E 5E                   11100 	.ascii "^"
      008B4F 09                   11101 	.db 0x09
      008B50 78 6F 72 20 74 6F 70 11102 	.ascii "xor top 2"
             20 32
      008B59 0D                   11103 	.db 0x0d
      008B5A 0A                   11104 	.db 0x0a
      008B5B 00                   11105 	.db 0x00
                                  11106 	.area CSEG    (CODE)
                                  11107 	.area CONST   (CODE)
      008B5C                      11108 ___str_44:
      008B5C 3E                   11109 	.ascii ">"
      008B5D 09                   11110 	.db 0x09
      008B5E 73 68 69 66 74 20 72 11111 	.ascii "shift right top 2"
             69 67 68 74 20 74 6F
             70 20 32
      008B6F 0D                   11112 	.db 0x0d
      008B70 0A                   11113 	.db 0x0a
      008B71 00                   11114 	.db 0x00
                                  11115 	.area CSEG    (CODE)
                                  11116 	.area CONST   (CODE)
      008B72                      11117 ___str_45:
      008B72 5D                   11118 	.ascii "]"
      008B73 09                   11119 	.db 0x09
      008B74 61 72 69 74 68 6D 65 11120 	.ascii "arithmetic shift right top 2"
             74 69 63 20 73 68 69
             66 74 20 72 69 67 68
             74 20 74 6F 70 20 32
      008B90 0D                   11121 	.db 0x0d
      008B91 0A                   11122 	.db 0x0a
      008B92 00                   11123 	.db 0x00
                                  11124 	.area CSEG    (CODE)
                                  11125 	.area CONST   (CODE)
      008B93                      11126 ___str_46:
      008B93 3C                   11127 	.ascii "<"
      008B94 09                   11128 	.db 0x09
      008B95 73 68 69 66 74 20 6C 11129 	.ascii "shift left top 2"
             65 66 74 20 74 6F 70
             20 32
      008BA5 0D                   11130 	.db 0x0d
      008BA6 0A                   11131 	.db 0x0a
      008BA7 00                   11132 	.db 0x00
                                  11133 	.area CSEG    (CODE)
                                  11134 	.area CONST   (CODE)
      008BA8                      11135 ___str_47:
      008BA8 7E                   11136 	.ascii "~"
      008BA9 09                   11137 	.db 0x09
      008BAA 62 69 74 77 69 73 65 11138 	.ascii "bitwise not top"
             20 6E 6F 74 20 74 6F
             70
      008BB9 0D                   11139 	.db 0x0d
      008BBA 0A                   11140 	.db 0x0a
      008BBB 00                   11141 	.db 0x00
                                  11142 	.area CSEG    (CODE)
                                  11143 	.area CONST   (CODE)
      008BBC                      11144 ___str_48:
      008BBC 73                   11145 	.ascii "s"
      008BBD 09                   11146 	.db 0x09
      008BBE 73 74 61 74 75 73    11147 	.ascii "status"
      008BC4 0D                   11148 	.db 0x0d
      008BC5 0A                   11149 	.db 0x0a
      008BC6 00                   11150 	.db 0x00
                                  11151 	.area CSEG    (CODE)
                                  11152 	.area CONST   (CODE)
      008BC7                      11153 ___str_49:
      008BC7 3F                   11154 	.ascii "?"
      008BC8 09                   11155 	.db 0x09
      008BC9 68 65 6C 70          11156 	.ascii "help"
      008BCD 0D                   11157 	.db 0x0d
      008BCE 0A                   11158 	.db 0x0a
      008BCF 00                   11159 	.db 0x00
                                  11160 	.area CSEG    (CODE)
                                  11161 	.area CONST   (CODE)
      008BD0                      11162 ___str_50:
      008BD0 71                   11163 	.ascii "q"
      008BD1 09                   11164 	.db 0x09
      008BD2 71 75 69 74          11165 	.ascii "quit"
      008BD6 0D                   11166 	.db 0x0d
      008BD7 0A                   11167 	.db 0x0a
      008BD8 00                   11168 	.db 0x00
                                  11169 	.area CSEG    (CODE)
                                  11170 	.area CONST   (CODE)
      008BD9                      11171 ___str_51:
      008BD9 54 45 52 4D          11172 	.ascii "TERM"
      008BDD 0D                   11173 	.db 0x0d
      008BDE 0A                   11174 	.db 0x0a
      008BDF 00                   11175 	.db 0x00
                                  11176 	.area CSEG    (CODE)
                                  11177 	.area XINIT   (CODE)
      008BF1                      11178 __xinit__deltas:
      008BF1 00 00                11179 	.byte #0x00, #0x00	;  0
      008BF3 00 00                11180 	.byte #0x00, #0x00	;  0
      008BF5 00 00                11181 	.byte #0x00, #0x00	;  0
      008BF7 00 00                11182 	.byte #0x00,#0x00
      008BF9 00 00                11183 	.byte #0x00,#0x00
      008BFB 00 00                11184 	.byte #0x00, #0x00	;  0
      008BFD 01 00                11185 	.byte #0x01, #0x00	;  1
      008BFF 02 00                11186 	.byte #0x02, #0x00	;  2
      008C01 00 00                11187 	.byte #0x00,#0x00
      008C03 41 2C                11188 	.byte _accumulate, (_accumulate >> 8)
      008C05 00 00                11189 	.byte #0x00, #0x00	;  0
      008C07 02 00                11190 	.byte #0x02, #0x00	;  2
      008C09 01 00                11191 	.byte #0x01, #0x00	;  1
      008C0B 00 00                11192 	.byte #0x00,#0x00
      008C0D 3C 34                11193 	.byte _operator, (_operator >> 8)
      008C0F 01 00                11194 	.byte #0x01, #0x00	;  1
      008C11 00 00                11195 	.byte #0x00, #0x00	;  0
      008C13 00 00                11196 	.byte #0x00, #0x00	;  0
      008C15 00 00                11197 	.byte #0x00,#0x00
      008C17 00 00                11198 	.byte #0x00,#0x00
      008C19 01 00                11199 	.byte #0x01, #0x00	;  1
      008C1B 02 00                11200 	.byte #0x02, #0x00	;  2
      008C1D 01 00                11201 	.byte #0x01, #0x00	;  1
      008C1F 00 00                11202 	.byte #0x00,#0x00
      008C21 3C 34                11203 	.byte _operator, (_operator >> 8)
      008C23 01 00                11204 	.byte #0x01, #0x00	;  1
      008C25 01 00                11205 	.byte #0x01, #0x00	;  1
      008C27 02 00                11206 	.byte #0x02, #0x00	;  2
      008C29 00 00                11207 	.byte #0x00,#0x00
      008C2B 41 2C                11208 	.byte _accumulate, (_accumulate >> 8)
      008C2D 02 00                11209 	.byte #0x02, #0x00	;  2
      008C2F 00 00                11210 	.byte #0x00, #0x00	;  0
      008C31 00 00                11211 	.byte #0x00, #0x00	;  0
      008C33 00 00                11212 	.byte #0x00,#0x00
      008C35 E4 56                11213 	.byte _push_acc, (_push_acc >> 8)
      008C37 02 00                11214 	.byte #0x02, #0x00	;  2
      008C39 07 00                11215 	.byte #0x07, #0x00	;  7
      008C3B 00 00                11216 	.byte #0x00, #0x00	;  0
      008C3D 00 00                11217 	.byte #0x00,#0x00
      008C3F 07 58                11218 	.byte _reset_acc, (_reset_acc >> 8)
      008C41 02 00                11219 	.byte #0x02, #0x00	;  2
      008C43 01 00                11220 	.byte #0x01, #0x00	;  1
      008C45 02 00                11221 	.byte #0x02, #0x00	;  2
      008C47 00 00                11222 	.byte #0x00,#0x00
      008C49 41 2C                11223 	.byte _accumulate, (_accumulate >> 8)
      008C4B 02 00                11224 	.byte #0x02, #0x00	;  2
      008C4D 02 00                11225 	.byte #0x02, #0x00	;  2
      008C4F 01 00                11226 	.byte #0x01, #0x00	;  1
      008C51 00 00                11227 	.byte #0x00,#0x00
      008C53 E4 56                11228 	.byte _push_acc, (_push_acc >> 8)
      008C55 FF 7F                11229 	.byte #0xff, #0x7f	;  32767
      008C57 06 00                11230 	.byte #0x06, #0x00	;  6
      008C59 FF 7F                11231 	.byte #0xff, #0x7f	;  32767
      008C5B 00 00                11232 	.byte #0x00,#0x00
      008C5D 07 58                11233 	.byte _reset_acc, (_reset_acc >> 8)
      008C5F FF 7F                11234 	.byte #0xff, #0x7f	;  32767
      008C61 07 00                11235 	.byte #0x07, #0x00	;  7
      008C63 FF 7F                11236 	.byte #0xff, #0x7f	;  32767
      008C65 00 00                11237 	.byte #0x00,#0x00
      008C67 00 00                11238 	.byte #0x00,#0x00
      008C69 FF 7F                11239 	.byte #0xff, #0x7f	;  32767
      008C6B 05 00                11240 	.byte #0x05, #0x00	;  5
      008C6D FF 7F                11241 	.byte #0xff, #0x7f	;  32767
      008C6F 00 00                11242 	.byte #0x00,#0x00
      008C71 71 58                11243 	.byte _reset_base, (_reset_base >> 8)
      008C73 FF 7F                11244 	.byte #0xff, #0x7f	;  32767
      008C75 03 00                11245 	.byte #0x03, #0x00	;  3
      008C77 FF 7F                11246 	.byte #0xff, #0x7f	;  32767
      008C79 00 00                11247 	.byte #0x00,#0x00
      008C7B EF 58                11248 	.byte _status, (_status >> 8)
      008C7D FF 7F                11249 	.byte #0xff, #0x7f	;  32767
      008C7F 04 00                11250 	.byte #0x04, #0x00	;  4
      008C81 FF 7F                11251 	.byte #0xff, #0x7f	;  32767
      008C83 00 00                11252 	.byte #0x00,#0x00
      008C85 61 60                11253 	.byte _help, (_help >> 8)
      008C87 FF 7F                11254 	.byte #0xff, #0x7f	;  32767
      008C89 08 00                11255 	.byte #0x08, #0x00	;  8
      008C8B 03 00                11256 	.byte #0x03, #0x00	;  3
      008C8D 00 00                11257 	.byte #0x00,#0x00
      008C8F B2 2D                11258 	.byte _dump_pop, (_dump_pop >> 8)
      008C91 00 80                11259 	.byte #0x00, #0x80	; -32768
      008C93 00 80                11260 	.byte #0x00, #0x80	; -32768
      008C95 00 80                11261 	.byte #0x00, #0x80	; -32768
      008C97 00 00                11262 	.byte #0x00,#0x00
      008C99 00 00                11263 	.byte #0x00,#0x00
                                  11264 	.area CABS    (ABS,CODE)
