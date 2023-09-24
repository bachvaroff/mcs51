                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module walk
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _int0
                                     13 	.globl _srand
                                     14 	.globl _rand
                                     15 	.globl _puts
                                     16 	.globl _printf
                                     17 	.globl _CY
                                     18 	.globl _AC
                                     19 	.globl _F0
                                     20 	.globl _RS1
                                     21 	.globl _RS0
                                     22 	.globl _OV
                                     23 	.globl _FL
                                     24 	.globl _P
                                     25 	.globl _TF2
                                     26 	.globl _EXF2
                                     27 	.globl _RCLK
                                     28 	.globl _TCLK
                                     29 	.globl _EXEN2
                                     30 	.globl _TR2
                                     31 	.globl _C_T2
                                     32 	.globl _CP_RL2
                                     33 	.globl _T2CON_7
                                     34 	.globl _T2CON_6
                                     35 	.globl _T2CON_5
                                     36 	.globl _T2CON_4
                                     37 	.globl _T2CON_3
                                     38 	.globl _T2CON_2
                                     39 	.globl _T2CON_1
                                     40 	.globl _T2CON_0
                                     41 	.globl _PT2
                                     42 	.globl _PS
                                     43 	.globl _PT1
                                     44 	.globl _PX1
                                     45 	.globl _PT0
                                     46 	.globl _PX0
                                     47 	.globl _RD
                                     48 	.globl _WR
                                     49 	.globl _T1
                                     50 	.globl _T0
                                     51 	.globl _INT1
                                     52 	.globl _INT0
                                     53 	.globl _TXD
                                     54 	.globl _RXD
                                     55 	.globl _P3_7
                                     56 	.globl _P3_6
                                     57 	.globl _P3_5
                                     58 	.globl _P3_4
                                     59 	.globl _P3_3
                                     60 	.globl _P3_2
                                     61 	.globl _P3_1
                                     62 	.globl _P3_0
                                     63 	.globl _EA
                                     64 	.globl _ET2
                                     65 	.globl _ES
                                     66 	.globl _ET1
                                     67 	.globl _EX1
                                     68 	.globl _ET0
                                     69 	.globl _EX0
                                     70 	.globl _P2_7
                                     71 	.globl _P2_6
                                     72 	.globl _P2_5
                                     73 	.globl _P2_4
                                     74 	.globl _P2_3
                                     75 	.globl _P2_2
                                     76 	.globl _P2_1
                                     77 	.globl _P2_0
                                     78 	.globl _SM0
                                     79 	.globl _SM1
                                     80 	.globl _SM2
                                     81 	.globl _REN
                                     82 	.globl _TB8
                                     83 	.globl _RB8
                                     84 	.globl _TI
                                     85 	.globl _RI
                                     86 	.globl _T2EX
                                     87 	.globl _T2
                                     88 	.globl _P1_7
                                     89 	.globl _P1_6
                                     90 	.globl _P1_5
                                     91 	.globl _P1_4
                                     92 	.globl _P1_3
                                     93 	.globl _P1_2
                                     94 	.globl _P1_1
                                     95 	.globl _P1_0
                                     96 	.globl _TF1
                                     97 	.globl _TR1
                                     98 	.globl _TF0
                                     99 	.globl _TR0
                                    100 	.globl _IE1
                                    101 	.globl _IT1
                                    102 	.globl _IE0
                                    103 	.globl _IT0
                                    104 	.globl _P0_7
                                    105 	.globl _P0_6
                                    106 	.globl _P0_5
                                    107 	.globl _P0_4
                                    108 	.globl _P0_3
                                    109 	.globl _P0_2
                                    110 	.globl _P0_1
                                    111 	.globl _P0_0
                                    112 	.globl _B
                                    113 	.globl _A
                                    114 	.globl _ACC
                                    115 	.globl _PSW
                                    116 	.globl _TH2
                                    117 	.globl _TL2
                                    118 	.globl _RCAP2H
                                    119 	.globl _RCAP2L
                                    120 	.globl _T2MOD
                                    121 	.globl _T2CON
                                    122 	.globl _IP
                                    123 	.globl _P3
                                    124 	.globl _IE
                                    125 	.globl _P2
                                    126 	.globl _SBUF
                                    127 	.globl _SCON
                                    128 	.globl _P1
                                    129 	.globl _TH1
                                    130 	.globl _TH0
                                    131 	.globl _TL1
                                    132 	.globl _TL0
                                    133 	.globl _TMOD
                                    134 	.globl _TCON
                                    135 	.globl _PCON
                                    136 	.globl _DPH
                                    137 	.globl _DPL
                                    138 	.globl _SP
                                    139 	.globl _P0
                                    140 	.globl _putchar
                                    141 	.globl _getchar
                                    142 ;--------------------------------------------------------
                                    143 ; special function registers
                                    144 ;--------------------------------------------------------
                                    145 	.area RSEG    (ABS,DATA)
      000000                        146 	.org 0x0000
                           000080   147 _P0	=	0x0080
                           000081   148 _SP	=	0x0081
                           000082   149 _DPL	=	0x0082
                           000083   150 _DPH	=	0x0083
                           000087   151 _PCON	=	0x0087
                           000088   152 _TCON	=	0x0088
                           000089   153 _TMOD	=	0x0089
                           00008A   154 _TL0	=	0x008a
                           00008B   155 _TL1	=	0x008b
                           00008C   156 _TH0	=	0x008c
                           00008D   157 _TH1	=	0x008d
                           000090   158 _P1	=	0x0090
                           000098   159 _SCON	=	0x0098
                           000099   160 _SBUF	=	0x0099
                           0000A0   161 _P2	=	0x00a0
                           0000A8   162 _IE	=	0x00a8
                           0000B0   163 _P3	=	0x00b0
                           0000B8   164 _IP	=	0x00b8
                           0000C8   165 _T2CON	=	0x00c8
                           0000C9   166 _T2MOD	=	0x00c9
                           0000CA   167 _RCAP2L	=	0x00ca
                           0000CB   168 _RCAP2H	=	0x00cb
                           0000CC   169 _TL2	=	0x00cc
                           0000CD   170 _TH2	=	0x00cd
                           0000D0   171 _PSW	=	0x00d0
                           0000E0   172 _ACC	=	0x00e0
                           0000E0   173 _A	=	0x00e0
                           0000F0   174 _B	=	0x00f0
                                    175 ;--------------------------------------------------------
                                    176 ; special function bits
                                    177 ;--------------------------------------------------------
                                    178 	.area RSEG    (ABS,DATA)
      000000                        179 	.org 0x0000
                           000080   180 _P0_0	=	0x0080
                           000081   181 _P0_1	=	0x0081
                           000082   182 _P0_2	=	0x0082
                           000083   183 _P0_3	=	0x0083
                           000084   184 _P0_4	=	0x0084
                           000085   185 _P0_5	=	0x0085
                           000086   186 _P0_6	=	0x0086
                           000087   187 _P0_7	=	0x0087
                           000088   188 _IT0	=	0x0088
                           000089   189 _IE0	=	0x0089
                           00008A   190 _IT1	=	0x008a
                           00008B   191 _IE1	=	0x008b
                           00008C   192 _TR0	=	0x008c
                           00008D   193 _TF0	=	0x008d
                           00008E   194 _TR1	=	0x008e
                           00008F   195 _TF1	=	0x008f
                           000090   196 _P1_0	=	0x0090
                           000091   197 _P1_1	=	0x0091
                           000092   198 _P1_2	=	0x0092
                           000093   199 _P1_3	=	0x0093
                           000094   200 _P1_4	=	0x0094
                           000095   201 _P1_5	=	0x0095
                           000096   202 _P1_6	=	0x0096
                           000097   203 _P1_7	=	0x0097
                           000090   204 _T2	=	0x0090
                           000091   205 _T2EX	=	0x0091
                           000098   206 _RI	=	0x0098
                           000099   207 _TI	=	0x0099
                           00009A   208 _RB8	=	0x009a
                           00009B   209 _TB8	=	0x009b
                           00009C   210 _REN	=	0x009c
                           00009D   211 _SM2	=	0x009d
                           00009E   212 _SM1	=	0x009e
                           00009F   213 _SM0	=	0x009f
                           0000A0   214 _P2_0	=	0x00a0
                           0000A1   215 _P2_1	=	0x00a1
                           0000A2   216 _P2_2	=	0x00a2
                           0000A3   217 _P2_3	=	0x00a3
                           0000A4   218 _P2_4	=	0x00a4
                           0000A5   219 _P2_5	=	0x00a5
                           0000A6   220 _P2_6	=	0x00a6
                           0000A7   221 _P2_7	=	0x00a7
                           0000A8   222 _EX0	=	0x00a8
                           0000A9   223 _ET0	=	0x00a9
                           0000AA   224 _EX1	=	0x00aa
                           0000AB   225 _ET1	=	0x00ab
                           0000AC   226 _ES	=	0x00ac
                           0000AD   227 _ET2	=	0x00ad
                           0000AF   228 _EA	=	0x00af
                           0000B0   229 _P3_0	=	0x00b0
                           0000B1   230 _P3_1	=	0x00b1
                           0000B2   231 _P3_2	=	0x00b2
                           0000B3   232 _P3_3	=	0x00b3
                           0000B4   233 _P3_4	=	0x00b4
                           0000B5   234 _P3_5	=	0x00b5
                           0000B6   235 _P3_6	=	0x00b6
                           0000B7   236 _P3_7	=	0x00b7
                           0000B0   237 _RXD	=	0x00b0
                           0000B1   238 _TXD	=	0x00b1
                           0000B2   239 _INT0	=	0x00b2
                           0000B3   240 _INT1	=	0x00b3
                           0000B4   241 _T0	=	0x00b4
                           0000B5   242 _T1	=	0x00b5
                           0000B6   243 _WR	=	0x00b6
                           0000B7   244 _RD	=	0x00b7
                           0000B8   245 _PX0	=	0x00b8
                           0000B9   246 _PT0	=	0x00b9
                           0000BA   247 _PX1	=	0x00ba
                           0000BB   248 _PT1	=	0x00bb
                           0000BC   249 _PS	=	0x00bc
                           0000BD   250 _PT2	=	0x00bd
                           0000C8   251 _T2CON_0	=	0x00c8
                           0000C9   252 _T2CON_1	=	0x00c9
                           0000CA   253 _T2CON_2	=	0x00ca
                           0000CB   254 _T2CON_3	=	0x00cb
                           0000CC   255 _T2CON_4	=	0x00cc
                           0000CD   256 _T2CON_5	=	0x00cd
                           0000CE   257 _T2CON_6	=	0x00ce
                           0000CF   258 _T2CON_7	=	0x00cf
                           0000C8   259 _CP_RL2	=	0x00c8
                           0000C9   260 _C_T2	=	0x00c9
                           0000CA   261 _TR2	=	0x00ca
                           0000CB   262 _EXEN2	=	0x00cb
                           0000CC   263 _TCLK	=	0x00cc
                           0000CD   264 _RCLK	=	0x00cd
                           0000CE   265 _EXF2	=	0x00ce
                           0000CF   266 _TF2	=	0x00cf
                           0000D0   267 _P	=	0x00d0
                           0000D1   268 _FL	=	0x00d1
                           0000D2   269 _OV	=	0x00d2
                           0000D3   270 _RS0	=	0x00d3
                           0000D4   271 _RS1	=	0x00d4
                           0000D5   272 _F0	=	0x00d5
                           0000D6   273 _AC	=	0x00d6
                           0000D7   274 _CY	=	0x00d7
                                    275 ;--------------------------------------------------------
                                    276 ; overlayable register banks
                                    277 ;--------------------------------------------------------
                                    278 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        279 	.ds 8
                                    280 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        281 	.ds 8
                                    282 ;--------------------------------------------------------
                                    283 ; internal ram data
                                    284 ;--------------------------------------------------------
                                    285 	.area DSEG    (DATA)
                                    286 ;--------------------------------------------------------
                                    287 ; overlayable items in internal ram 
                                    288 ;--------------------------------------------------------
                                    289 ;--------------------------------------------------------
                                    290 ; Stack segment in internal ram 
                                    291 ;--------------------------------------------------------
                                    292 	.area	SSEG
      000021                        293 __start__stack:
      000021                        294 	.ds	1
                                    295 
                                    296 ;--------------------------------------------------------
                                    297 ; indirectly addressable internal ram data
                                    298 ;--------------------------------------------------------
                                    299 	.area ISEG    (DATA)
      000011                        300 _i0:
      000011                        301 	.ds 1
      000012                        302 _OE76:
      000012                        303 	.ds 1
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
      004280                        321 _g:
      004280                        322 	.ds 9648
      006830                        323 _stack:
      006830                        324 	.ds 38592
      00FEF0                        325 _sp:
      00FEF0                        326 	.ds 2
                                    327 ;--------------------------------------------------------
                                    328 ; absolute external ram data
                                    329 ;--------------------------------------------------------
                                    330 	.area XABS    (ABS,XDATA)
                                    331 ;--------------------------------------------------------
                                    332 ; external initialized ram data
                                    333 ;--------------------------------------------------------
                                    334 	.area XISEG   (XDATA)
      00FEF2                        335 _neigh:
      00FEF2                        336 	.ds 64
                                    337 	.area HOME    (CODE)
                                    338 	.area GSINIT0 (CODE)
                                    339 	.area GSINIT1 (CODE)
                                    340 	.area GSINIT2 (CODE)
                                    341 	.area GSINIT3 (CODE)
                                    342 	.area GSINIT4 (CODE)
                                    343 	.area GSINIT5 (CODE)
                                    344 	.area GSINIT  (CODE)
                                    345 	.area GSFINAL (CODE)
                                    346 	.area CSEG    (CODE)
                                    347 ;--------------------------------------------------------
                                    348 ; interrupt vector 
                                    349 ;--------------------------------------------------------
                                    350 	.area HOME    (CODE)
      002000                        351 __interrupt_vect:
      002000 02 20 09         [24]  352 	ljmp	__sdcc_gsinit_startup
      002003 02 20 73         [24]  353 	ljmp	_int0
                                    354 ;--------------------------------------------------------
                                    355 ; global & static initialisations
                                    356 ;--------------------------------------------------------
                                    357 	.area HOME    (CODE)
                                    358 	.area GSINIT  (CODE)
                                    359 	.area GSFINAL (CODE)
                                    360 	.area GSINIT  (CODE)
                                    361 	.globl __sdcc_gsinit_startup
                                    362 	.globl __sdcc_program_startup
                                    363 	.globl __start__stack
                                    364 	.globl __mcs51_genXINIT
                                    365 	.globl __mcs51_genXRAMCLEAR
                                    366 	.globl __mcs51_genRAMCLEAR
                                    367 	.area GSFINAL (CODE)
      002062 02 20 06         [24]  368 	ljmp	__sdcc_program_startup
                                    369 ;--------------------------------------------------------
                                    370 ; Home
                                    371 ;--------------------------------------------------------
                                    372 	.area HOME    (CODE)
                                    373 	.area HOME    (CODE)
      002006                        374 __sdcc_program_startup:
      002006 02 26 A8         [24]  375 	ljmp	_main
                                    376 ;	return from main will return to caller
                                    377 ;--------------------------------------------------------
                                    378 ; code
                                    379 ;--------------------------------------------------------
                                    380 	.area CSEG    (CODE)
                                    381 ;------------------------------------------------------------
                                    382 ;Allocation info for local variables in function 'putchar'
                                    383 ;------------------------------------------------------------
                                    384 ;c                         Allocated to registers 
                                    385 ;------------------------------------------------------------
                                    386 ;	walk.c:9: int putchar(int c) __naked {
                                    387 ;	-----------------------------------------
                                    388 ;	 function putchar
                                    389 ;	-----------------------------------------
      002065                        390 _putchar:
                                    391 ;	naked function: no prologue.
                                    392 ;	walk.c:14: __endasm;
      002065 E5 82            [12]  393 	mov	a, dpl
      002067 02 00 30         [24]  394 	ljmp	0x0030
                                    395 ;	walk.c:15: }
                                    396 ;	naked function: no epilogue.
                                    397 ;------------------------------------------------------------
                                    398 ;Allocation info for local variables in function 'getchar'
                                    399 ;------------------------------------------------------------
                                    400 ;	walk.c:17: int getchar(void) __naked {
                                    401 ;	-----------------------------------------
                                    402 ;	 function getchar
                                    403 ;	-----------------------------------------
      00206A                        404 _getchar:
                                    405 ;	naked function: no prologue.
                                    406 ;	walk.c:23: __endasm;
      00206A 12 00 32         [24]  407 	lcall	0x0032
      00206D F5 82            [12]  408 	mov	dpl, a
      00206F 75 83 00         [24]  409 	mov	dph, #0
      002072 22               [24]  410 	ret
                                    411 ;	walk.c:24: }
                                    412 ;	naked function: no epilogue.
                                    413 ;------------------------------------------------------------
                                    414 ;Allocation info for local variables in function 'int0'
                                    415 ;------------------------------------------------------------
                                    416 ;	walk.c:28: void int0(void) __interrupt IE0_VECTOR __using 1 {
                                    417 ;	-----------------------------------------
                                    418 ;	 function int0
                                    419 ;	-----------------------------------------
      002073                        420 _int0:
                           00000F   421 	ar7 = 0x0f
                           00000E   422 	ar6 = 0x0e
                           00000D   423 	ar5 = 0x0d
                           00000C   424 	ar4 = 0x0c
                           00000B   425 	ar3 = 0x0b
                           00000A   426 	ar2 = 0x0a
                           000009   427 	ar1 = 0x09
                           000008   428 	ar0 = 0x08
      002073 C0 D0            [24]  429 	push	psw
      002075 75 D0 08         [24]  430 	mov	psw,#0x08
                                    431 ;	walk.c:29: i0 = 0u;
      002078 78 11            [12]  432 	mov	r0,#_i0
      00207A 76 00            [12]  433 	mov	@r0,#0x00
                                    434 ;	walk.c:30: }
      00207C D0 D0            [24]  435 	pop	psw
      00207E 32               [24]  436 	reti
                                    437 ;	eliminated unneeded push/pop dpl
                                    438 ;	eliminated unneeded push/pop dph
                                    439 ;	eliminated unneeded push/pop b
                                    440 ;	eliminated unneeded push/pop acc
                                    441 ;------------------------------------------------------------
                                    442 ;Allocation info for local variables in function 'reset'
                                    443 ;------------------------------------------------------------
                                    444 ;	walk.c:32: static void reset(void) __naked {
                                    445 ;	-----------------------------------------
                                    446 ;	 function reset
                                    447 ;	-----------------------------------------
      00207F                        448 _reset:
                                    449 ;	naked function: no prologue.
                                    450 ;	walk.c:35: __endasm;
      00207F 43 87 02         [24]  451 	orl	pcon, #2
                                    452 ;	walk.c:36: }
                                    453 ;	naked function: no epilogue.
                                    454 ;------------------------------------------------------------
                                    455 ;Allocation info for local variables in function 'bang'
                                    456 ;------------------------------------------------------------
                                    457 ;	walk.c:38: static void bang(void) {
                                    458 ;	-----------------------------------------
                                    459 ;	 function bang
                                    460 ;	-----------------------------------------
      002082                        461 _bang:
                           000007   462 	ar7 = 0x07
                           000006   463 	ar6 = 0x06
                           000005   464 	ar5 = 0x05
                           000004   465 	ar4 = 0x04
                           000003   466 	ar3 = 0x03
                           000002   467 	ar2 = 0x02
                           000001   468 	ar1 = 0x01
                           000000   469 	ar0 = 0x00
                                    470 ;	walk.c:39: (void)puts("Memory error");
      002082 90 41 34         [24]  471 	mov	dptr,#___str_0
      002085 75 F0 80         [24]  472 	mov	b,#0x80
      002088 12 2D 7B         [24]  473 	lcall	_puts
                                    474 ;	walk.c:40: reset();
                                    475 ;	walk.c:42: return;
                                    476 ;	walk.c:43: }
      00208B 02 20 7F         [24]  477 	ljmp	_reset
                                    478 ;------------------------------------------------------------
                                    479 ;Allocation info for local variables in function 'flashOE'
                                    480 ;------------------------------------------------------------
                                    481 ;mask                      Allocated to registers r7 
                                    482 ;OEreg                     Allocated to stack - _bp +1
                                    483 ;------------------------------------------------------------
                                    484 ;	walk.c:84: static void flashOE(uint8_t mask) {
                                    485 ;	-----------------------------------------
                                    486 ;	 function flashOE
                                    487 ;	-----------------------------------------
      00208E                        488 _flashOE:
      00208E C0 10            [24]  489 	push	_bp
      002090 85 81 10         [24]  490 	mov	_bp,sp
      002093 05 81            [12]  491 	inc	sp
      002095 05 81            [12]  492 	inc	sp
      002097 AF 82            [24]  493 	mov	r7,dpl
                                    494 ;	walk.c:87: P1_7 = 0;
                                    495 ;	assignBit
      002099 C2 97            [12]  496 	clr	_P1_7
                                    497 ;	walk.c:88: *OEreg = OE76;
      00209B 90 F0 06         [24]  498 	mov	dptr,#0xf006
      00209E 78 12            [12]  499 	mov	r0,#_OE76
      0020A0 E6               [12]  500 	mov	a,@r0
      0020A1 F0               [24]  501 	movx	@dptr,a
                                    502 ;	walk.c:89: P1_7 = 1;
                                    503 ;	assignBit
      0020A2 D2 97            [12]  504 	setb	_P1_7
                                    505 ;	walk.c:90: OE76 ^= mask;
      0020A4 78 12            [12]  506 	mov	r0,#_OE76
      0020A6 EF               [12]  507 	mov	a,r7
      0020A7 66               [12]  508 	xrl	a,@r0
      0020A8 F6               [12]  509 	mov	@r0,a
                                    510 ;	walk.c:92: return;
                                    511 ;	walk.c:93: }
      0020A9 85 10 81         [24]  512 	mov	sp,_bp
      0020AC D0 10            [24]  513 	pop	_bp
      0020AE 22               [24]  514 	ret
                                    515 ;------------------------------------------------------------
                                    516 ;Allocation info for local variables in function 'update'
                                    517 ;------------------------------------------------------------
                                    518 ;cur                       Allocated to stack - _bp -5
                                    519 ;j                         Allocated to stack - _bp -6
                                    520 ;t                         Allocated to stack - _bp +1
                                    521 ;sloc0                     Allocated to stack - _bp +4
                                    522 ;sloc1                     Allocated to stack - _bp +6
                                    523 ;sloc2                     Allocated to stack - _bp +8
                                    524 ;------------------------------------------------------------
                                    525 ;	walk.c:95: static uint8_t update(struct node *t, struct node *cur, uint8_t j) {
                                    526 ;	-----------------------------------------
                                    527 ;	 function update
                                    528 ;	-----------------------------------------
      0020AF                        529 _update:
      0020AF C0 10            [24]  530 	push	_bp
      0020B1 85 81 10         [24]  531 	mov	_bp,sp
      0020B4 C0 82            [24]  532 	push	dpl
      0020B6 C0 83            [24]  533 	push	dph
      0020B8 C0 F0            [24]  534 	push	b
      0020BA E5 81            [12]  535 	mov	a,sp
      0020BC 24 07            [12]  536 	add	a,#0x07
      0020BE F5 81            [12]  537 	mov	sp,a
                                    538 ;	walk.c:96: t->r = cur->r + neigh[j].r;
      0020C0 E5 10            [12]  539 	mov	a,_bp
      0020C2 24 FB            [12]  540 	add	a,#0xfb
      0020C4 F8               [12]  541 	mov	r0,a
      0020C5 86 02            [24]  542 	mov	ar2,@r0
      0020C7 08               [12]  543 	inc	r0
      0020C8 86 03            [24]  544 	mov	ar3,@r0
      0020CA 08               [12]  545 	inc	r0
      0020CB 86 04            [24]  546 	mov	ar4,@r0
      0020CD 8A 82            [24]  547 	mov	dpl,r2
      0020CF 8B 83            [24]  548 	mov	dph,r3
      0020D1 8C F0            [24]  549 	mov	b,r4
      0020D3 E5 10            [12]  550 	mov	a,_bp
      0020D5 24 04            [12]  551 	add	a,#0x04
      0020D7 F8               [12]  552 	mov	r0,a
      0020D8 12 2E 3A         [24]  553 	lcall	__gptrget
      0020DB F6               [12]  554 	mov	@r0,a
      0020DC A3               [24]  555 	inc	dptr
      0020DD 12 2E 3A         [24]  556 	lcall	__gptrget
      0020E0 08               [12]  557 	inc	r0
      0020E1 F6               [12]  558 	mov	@r0,a
      0020E2 E5 10            [12]  559 	mov	a,_bp
      0020E4 24 FA            [12]  560 	add	a,#0xfa
      0020E6 F8               [12]  561 	mov	r0,a
      0020E7 E5 10            [12]  562 	mov	a,_bp
      0020E9 24 06            [12]  563 	add	a,#0x06
      0020EB F9               [12]  564 	mov	r1,a
      0020EC E6               [12]  565 	mov	a,@r0
      0020ED 75 F0 04         [24]  566 	mov	b,#0x04
      0020F0 A4               [48]  567 	mul	ab
      0020F1 F7               [12]  568 	mov	@r1,a
      0020F2 09               [12]  569 	inc	r1
      0020F3 A7 F0            [24]  570 	mov	@r1,b
      0020F5 E5 10            [12]  571 	mov	a,_bp
      0020F7 24 06            [12]  572 	add	a,#0x06
      0020F9 F8               [12]  573 	mov	r0,a
      0020FA E6               [12]  574 	mov	a,@r0
      0020FB 24 F2            [12]  575 	add	a,#_neigh
      0020FD F5 82            [12]  576 	mov	dpl,a
      0020FF 08               [12]  577 	inc	r0
      002100 E6               [12]  578 	mov	a,@r0
      002101 34 FE            [12]  579 	addc	a,#(_neigh >> 8)
      002103 F5 83            [12]  580 	mov	dph,a
      002105 E0               [24]  581 	movx	a,@dptr
      002106 FF               [12]  582 	mov	r7,a
      002107 A3               [24]  583 	inc	dptr
      002108 E0               [24]  584 	movx	a,@dptr
      002109 FE               [12]  585 	mov	r6,a
      00210A E5 10            [12]  586 	mov	a,_bp
      00210C 24 04            [12]  587 	add	a,#0x04
      00210E F8               [12]  588 	mov	r0,a
      00210F EF               [12]  589 	mov	a,r7
      002110 26               [12]  590 	add	a,@r0
      002111 FF               [12]  591 	mov	r7,a
      002112 EE               [12]  592 	mov	a,r6
      002113 08               [12]  593 	inc	r0
      002114 36               [12]  594 	addc	a,@r0
      002115 FE               [12]  595 	mov	r6,a
      002116 A8 10            [24]  596 	mov	r0,_bp
      002118 08               [12]  597 	inc	r0
      002119 86 82            [24]  598 	mov	dpl,@r0
      00211B 08               [12]  599 	inc	r0
      00211C 86 83            [24]  600 	mov	dph,@r0
      00211E 08               [12]  601 	inc	r0
      00211F 86 F0            [24]  602 	mov	b,@r0
      002121 EF               [12]  603 	mov	a,r7
      002122 12 2C 2F         [24]  604 	lcall	__gptrput
      002125 A3               [24]  605 	inc	dptr
      002126 EE               [12]  606 	mov	a,r6
      002127 12 2C 2F         [24]  607 	lcall	__gptrput
                                    608 ;	walk.c:97: t->c = cur->c + neigh[j].c;
      00212A A8 10            [24]  609 	mov	r0,_bp
      00212C 08               [12]  610 	inc	r0
      00212D E5 10            [12]  611 	mov	a,_bp
      00212F 24 08            [12]  612 	add	a,#0x08
      002131 F9               [12]  613 	mov	r1,a
      002132 74 02            [12]  614 	mov	a,#0x02
      002134 26               [12]  615 	add	a,@r0
      002135 F7               [12]  616 	mov	@r1,a
      002136 E4               [12]  617 	clr	a
      002137 08               [12]  618 	inc	r0
      002138 36               [12]  619 	addc	a,@r0
      002139 09               [12]  620 	inc	r1
      00213A F7               [12]  621 	mov	@r1,a
      00213B 08               [12]  622 	inc	r0
      00213C 09               [12]  623 	inc	r1
      00213D E6               [12]  624 	mov	a,@r0
      00213E F7               [12]  625 	mov	@r1,a
      00213F 74 02            [12]  626 	mov	a,#0x02
      002141 2A               [12]  627 	add	a,r2
      002142 FA               [12]  628 	mov	r2,a
      002143 E4               [12]  629 	clr	a
      002144 3B               [12]  630 	addc	a,r3
      002145 FB               [12]  631 	mov	r3,a
      002146 8A 82            [24]  632 	mov	dpl,r2
      002148 8B 83            [24]  633 	mov	dph,r3
      00214A 8C F0            [24]  634 	mov	b,r4
      00214C 12 2E 3A         [24]  635 	lcall	__gptrget
      00214F FA               [12]  636 	mov	r2,a
      002150 A3               [24]  637 	inc	dptr
      002151 12 2E 3A         [24]  638 	lcall	__gptrget
      002154 FB               [12]  639 	mov	r3,a
      002155 E5 10            [12]  640 	mov	a,_bp
      002157 24 06            [12]  641 	add	a,#0x06
      002159 F8               [12]  642 	mov	r0,a
      00215A E6               [12]  643 	mov	a,@r0
      00215B 24 F2            [12]  644 	add	a,#_neigh
      00215D FC               [12]  645 	mov	r4,a
      00215E 08               [12]  646 	inc	r0
      00215F E6               [12]  647 	mov	a,@r0
      002160 34 FE            [12]  648 	addc	a,#(_neigh >> 8)
      002162 FD               [12]  649 	mov	r5,a
      002163 8C 82            [24]  650 	mov	dpl,r4
      002165 8D 83            [24]  651 	mov	dph,r5
      002167 A3               [24]  652 	inc	dptr
      002168 A3               [24]  653 	inc	dptr
      002169 E0               [24]  654 	movx	a,@dptr
      00216A FC               [12]  655 	mov	r4,a
      00216B A3               [24]  656 	inc	dptr
      00216C E0               [24]  657 	movx	a,@dptr
      00216D FD               [12]  658 	mov	r5,a
      00216E EC               [12]  659 	mov	a,r4
      00216F 2A               [12]  660 	add	a,r2
      002170 FA               [12]  661 	mov	r2,a
      002171 ED               [12]  662 	mov	a,r5
      002172 3B               [12]  663 	addc	a,r3
      002173 FB               [12]  664 	mov	r3,a
      002174 E5 10            [12]  665 	mov	a,_bp
      002176 24 08            [12]  666 	add	a,#0x08
      002178 F8               [12]  667 	mov	r0,a
      002179 86 82            [24]  668 	mov	dpl,@r0
      00217B 08               [12]  669 	inc	r0
      00217C 86 83            [24]  670 	mov	dph,@r0
      00217E 08               [12]  671 	inc	r0
      00217F 86 F0            [24]  672 	mov	b,@r0
      002181 EA               [12]  673 	mov	a,r2
      002182 12 2C 2F         [24]  674 	lcall	__gptrput
      002185 A3               [24]  675 	inc	dptr
      002186 EB               [12]  676 	mov	a,r3
      002187 12 2C 2F         [24]  677 	lcall	__gptrput
                                    678 ;	walk.c:99: if (t->r < 0) t->r += ROWS;
      00218A A8 10            [24]  679 	mov	r0,_bp
      00218C 08               [12]  680 	inc	r0
      00218D 86 82            [24]  681 	mov	dpl,@r0
      00218F 08               [12]  682 	inc	r0
      002190 86 83            [24]  683 	mov	dph,@r0
      002192 08               [12]  684 	inc	r0
      002193 86 F0            [24]  685 	mov	b,@r0
      002195 12 2E 3A         [24]  686 	lcall	__gptrget
      002198 FD               [12]  687 	mov	r5,a
      002199 A3               [24]  688 	inc	dptr
      00219A 12 2E 3A         [24]  689 	lcall	__gptrget
      00219D FC               [12]  690 	mov	r4,a
      00219E EE               [12]  691 	mov	a,r6
      00219F 30 E7 1D         [24]  692 	jnb	acc.7,00104$
      0021A2 74 30            [12]  693 	mov	a,#0x30
      0021A4 2D               [12]  694 	add	a,r5
      0021A5 FF               [12]  695 	mov	r7,a
      0021A6 E4               [12]  696 	clr	a
      0021A7 3C               [12]  697 	addc	a,r4
      0021A8 FE               [12]  698 	mov	r6,a
      0021A9 A8 10            [24]  699 	mov	r0,_bp
      0021AB 08               [12]  700 	inc	r0
      0021AC 86 82            [24]  701 	mov	dpl,@r0
      0021AE 08               [12]  702 	inc	r0
      0021AF 86 83            [24]  703 	mov	dph,@r0
      0021B1 08               [12]  704 	inc	r0
      0021B2 86 F0            [24]  705 	mov	b,@r0
      0021B4 EF               [12]  706 	mov	a,r7
      0021B5 12 2C 2F         [24]  707 	lcall	__gptrput
      0021B8 A3               [24]  708 	inc	dptr
      0021B9 EE               [12]  709 	mov	a,r6
      0021BA 12 2C 2F         [24]  710 	lcall	__gptrput
      0021BD 80 27            [24]  711 	sjmp	00105$
      0021BF                        712 00104$:
                                    713 ;	walk.c:100: else if (t->r >= ROWS) t->r -= ROWS;
      0021BF C3               [12]  714 	clr	c
      0021C0 ED               [12]  715 	mov	a,r5
      0021C1 94 30            [12]  716 	subb	a,#0x30
      0021C3 EC               [12]  717 	mov	a,r4
      0021C4 64 80            [12]  718 	xrl	a,#0x80
      0021C6 94 80            [12]  719 	subb	a,#0x80
      0021C8 40 1C            [24]  720 	jc	00105$
      0021CA ED               [12]  721 	mov	a,r5
      0021CB 24 D0            [12]  722 	add	a,#0xd0
      0021CD FD               [12]  723 	mov	r5,a
      0021CE EC               [12]  724 	mov	a,r4
      0021CF 34 FF            [12]  725 	addc	a,#0xff
      0021D1 FC               [12]  726 	mov	r4,a
      0021D2 A8 10            [24]  727 	mov	r0,_bp
      0021D4 08               [12]  728 	inc	r0
      0021D5 86 82            [24]  729 	mov	dpl,@r0
      0021D7 08               [12]  730 	inc	r0
      0021D8 86 83            [24]  731 	mov	dph,@r0
      0021DA 08               [12]  732 	inc	r0
      0021DB 86 F0            [24]  733 	mov	b,@r0
      0021DD ED               [12]  734 	mov	a,r5
      0021DE 12 2C 2F         [24]  735 	lcall	__gptrput
      0021E1 A3               [24]  736 	inc	dptr
      0021E2 EC               [12]  737 	mov	a,r4
      0021E3 12 2C 2F         [24]  738 	lcall	__gptrput
      0021E6                        739 00105$:
                                    740 ;	walk.c:101: if (t->c < 0) t->c += COLS;
      0021E6 E5 10            [12]  741 	mov	a,_bp
      0021E8 24 08            [12]  742 	add	a,#0x08
      0021EA F8               [12]  743 	mov	r0,a
      0021EB 86 82            [24]  744 	mov	dpl,@r0
      0021ED 08               [12]  745 	inc	r0
      0021EE 86 83            [24]  746 	mov	dph,@r0
      0021F0 08               [12]  747 	inc	r0
      0021F1 86 F0            [24]  748 	mov	b,@r0
      0021F3 12 2E 3A         [24]  749 	lcall	__gptrget
      0021F6 A3               [24]  750 	inc	dptr
      0021F7 12 2E 3A         [24]  751 	lcall	__gptrget
      0021FA 30 E7 35         [24]  752 	jnb	acc.7,00109$
      0021FD E5 10            [12]  753 	mov	a,_bp
      0021FF 24 08            [12]  754 	add	a,#0x08
      002201 F8               [12]  755 	mov	r0,a
      002202 86 82            [24]  756 	mov	dpl,@r0
      002204 08               [12]  757 	inc	r0
      002205 86 83            [24]  758 	mov	dph,@r0
      002207 08               [12]  759 	inc	r0
      002208 86 F0            [24]  760 	mov	b,@r0
      00220A 12 2E 3A         [24]  761 	lcall	__gptrget
      00220D FE               [12]  762 	mov	r6,a
      00220E A3               [24]  763 	inc	dptr
      00220F 12 2E 3A         [24]  764 	lcall	__gptrget
      002212 FF               [12]  765 	mov	r7,a
      002213 74 C9            [12]  766 	mov	a,#0xc9
      002215 2E               [12]  767 	add	a,r6
      002216 FE               [12]  768 	mov	r6,a
      002217 E4               [12]  769 	clr	a
      002218 3F               [12]  770 	addc	a,r7
      002219 FF               [12]  771 	mov	r7,a
      00221A E5 10            [12]  772 	mov	a,_bp
      00221C 24 08            [12]  773 	add	a,#0x08
      00221E F8               [12]  774 	mov	r0,a
      00221F 86 82            [24]  775 	mov	dpl,@r0
      002221 08               [12]  776 	inc	r0
      002222 86 83            [24]  777 	mov	dph,@r0
      002224 08               [12]  778 	inc	r0
      002225 86 F0            [24]  779 	mov	b,@r0
      002227 EE               [12]  780 	mov	a,r6
      002228 12 2C 2F         [24]  781 	lcall	__gptrput
      00222B A3               [24]  782 	inc	dptr
      00222C EF               [12]  783 	mov	a,r7
      00222D 12 2C 2F         [24]  784 	lcall	__gptrput
      002230 80 55            [24]  785 	sjmp	00110$
      002232                        786 00109$:
                                    787 ;	walk.c:102: else if (t->c >= COLS) t->c -= COLS;
      002232 E5 10            [12]  788 	mov	a,_bp
      002234 24 08            [12]  789 	add	a,#0x08
      002236 F8               [12]  790 	mov	r0,a
      002237 86 82            [24]  791 	mov	dpl,@r0
      002239 08               [12]  792 	inc	r0
      00223A 86 83            [24]  793 	mov	dph,@r0
      00223C 08               [12]  794 	inc	r0
      00223D 86 F0            [24]  795 	mov	b,@r0
      00223F 12 2E 3A         [24]  796 	lcall	__gptrget
      002242 FE               [12]  797 	mov	r6,a
      002243 A3               [24]  798 	inc	dptr
      002244 12 2E 3A         [24]  799 	lcall	__gptrget
      002247 FF               [12]  800 	mov	r7,a
      002248 C3               [12]  801 	clr	c
      002249 EE               [12]  802 	mov	a,r6
      00224A 94 C9            [12]  803 	subb	a,#0xc9
      00224C EF               [12]  804 	mov	a,r7
      00224D 64 80            [12]  805 	xrl	a,#0x80
      00224F 94 80            [12]  806 	subb	a,#0x80
      002251 40 34            [24]  807 	jc	00110$
      002253 E5 10            [12]  808 	mov	a,_bp
      002255 24 08            [12]  809 	add	a,#0x08
      002257 F8               [12]  810 	mov	r0,a
      002258 86 82            [24]  811 	mov	dpl,@r0
      00225A 08               [12]  812 	inc	r0
      00225B 86 83            [24]  813 	mov	dph,@r0
      00225D 08               [12]  814 	inc	r0
      00225E 86 F0            [24]  815 	mov	b,@r0
      002260 12 2E 3A         [24]  816 	lcall	__gptrget
      002263 FE               [12]  817 	mov	r6,a
      002264 A3               [24]  818 	inc	dptr
      002265 12 2E 3A         [24]  819 	lcall	__gptrget
      002268 FF               [12]  820 	mov	r7,a
      002269 EE               [12]  821 	mov	a,r6
      00226A 24 37            [12]  822 	add	a,#0x37
      00226C FE               [12]  823 	mov	r6,a
      00226D EF               [12]  824 	mov	a,r7
      00226E 34 FF            [12]  825 	addc	a,#0xff
      002270 FF               [12]  826 	mov	r7,a
      002271 E5 10            [12]  827 	mov	a,_bp
      002273 24 08            [12]  828 	add	a,#0x08
      002275 F8               [12]  829 	mov	r0,a
      002276 86 82            [24]  830 	mov	dpl,@r0
      002278 08               [12]  831 	inc	r0
      002279 86 83            [24]  832 	mov	dph,@r0
      00227B 08               [12]  833 	inc	r0
      00227C 86 F0            [24]  834 	mov	b,@r0
      00227E EE               [12]  835 	mov	a,r6
      00227F 12 2C 2F         [24]  836 	lcall	__gptrput
      002282 A3               [24]  837 	inc	dptr
      002283 EF               [12]  838 	mov	a,r7
      002284 12 2C 2F         [24]  839 	lcall	__gptrput
      002287                        840 00110$:
                                    841 ;	walk.c:104: if (g[t->r][t->c] == 0xaau) return 0u;
      002287 A8 10            [24]  842 	mov	r0,_bp
      002289 08               [12]  843 	inc	r0
      00228A 86 82            [24]  844 	mov	dpl,@r0
      00228C 08               [12]  845 	inc	r0
      00228D 86 83            [24]  846 	mov	dph,@r0
      00228F 08               [12]  847 	inc	r0
      002290 86 F0            [24]  848 	mov	b,@r0
      002292 12 2E 3A         [24]  849 	lcall	__gptrget
      002295 FE               [12]  850 	mov	r6,a
      002296 A3               [24]  851 	inc	dptr
      002297 12 2E 3A         [24]  852 	lcall	__gptrget
      00229A FF               [12]  853 	mov	r7,a
      00229B C0 06            [24]  854 	push	ar6
      00229D C0 07            [24]  855 	push	ar7
      00229F 90 00 C9         [24]  856 	mov	dptr,#0x00c9
      0022A2 12 2C 4A         [24]  857 	lcall	__mulint
      0022A5 AE 82            [24]  858 	mov	r6,dpl
      0022A7 AF 83            [24]  859 	mov	r7,dph
      0022A9 15 81            [12]  860 	dec	sp
      0022AB 15 81            [12]  861 	dec	sp
      0022AD EE               [12]  862 	mov	a,r6
      0022AE 24 80            [12]  863 	add	a,#_g
      0022B0 FE               [12]  864 	mov	r6,a
      0022B1 EF               [12]  865 	mov	a,r7
      0022B2 34 42            [12]  866 	addc	a,#(_g >> 8)
      0022B4 FF               [12]  867 	mov	r7,a
      0022B5 E5 10            [12]  868 	mov	a,_bp
      0022B7 24 08            [12]  869 	add	a,#0x08
      0022B9 F8               [12]  870 	mov	r0,a
      0022BA 86 82            [24]  871 	mov	dpl,@r0
      0022BC 08               [12]  872 	inc	r0
      0022BD 86 83            [24]  873 	mov	dph,@r0
      0022BF 08               [12]  874 	inc	r0
      0022C0 86 F0            [24]  875 	mov	b,@r0
      0022C2 12 2E 3A         [24]  876 	lcall	__gptrget
      0022C5 FC               [12]  877 	mov	r4,a
      0022C6 A3               [24]  878 	inc	dptr
      0022C7 12 2E 3A         [24]  879 	lcall	__gptrget
      0022CA FD               [12]  880 	mov	r5,a
      0022CB EC               [12]  881 	mov	a,r4
      0022CC 2E               [12]  882 	add	a,r6
      0022CD F5 82            [12]  883 	mov	dpl,a
      0022CF ED               [12]  884 	mov	a,r5
      0022D0 3F               [12]  885 	addc	a,r7
      0022D1 F5 83            [12]  886 	mov	dph,a
      0022D3 E0               [24]  887 	movx	a,@dptr
      0022D4 FF               [12]  888 	mov	r7,a
      0022D5 BF AA 05         [24]  889 	cjne	r7,#0xaa,00114$
      0022D8 75 82 00         [24]  890 	mov	dpl,#0x00
      0022DB 80 59            [24]  891 	sjmp	00116$
      0022DD                        892 00114$:
                                    893 ;	walk.c:105: else if (g[t->r][t->c] != 0x55u) bang();
      0022DD A8 10            [24]  894 	mov	r0,_bp
      0022DF 08               [12]  895 	inc	r0
      0022E0 86 82            [24]  896 	mov	dpl,@r0
      0022E2 08               [12]  897 	inc	r0
      0022E3 86 83            [24]  898 	mov	dph,@r0
      0022E5 08               [12]  899 	inc	r0
      0022E6 86 F0            [24]  900 	mov	b,@r0
      0022E8 12 2E 3A         [24]  901 	lcall	__gptrget
      0022EB FE               [12]  902 	mov	r6,a
      0022EC A3               [24]  903 	inc	dptr
      0022ED 12 2E 3A         [24]  904 	lcall	__gptrget
      0022F0 FF               [12]  905 	mov	r7,a
      0022F1 C0 06            [24]  906 	push	ar6
      0022F3 C0 07            [24]  907 	push	ar7
      0022F5 90 00 C9         [24]  908 	mov	dptr,#0x00c9
      0022F8 12 2C 4A         [24]  909 	lcall	__mulint
      0022FB AE 82            [24]  910 	mov	r6,dpl
      0022FD AF 83            [24]  911 	mov	r7,dph
      0022FF 15 81            [12]  912 	dec	sp
      002301 15 81            [12]  913 	dec	sp
      002303 EE               [12]  914 	mov	a,r6
      002304 24 80            [12]  915 	add	a,#_g
      002306 FE               [12]  916 	mov	r6,a
      002307 EF               [12]  917 	mov	a,r7
      002308 34 42            [12]  918 	addc	a,#(_g >> 8)
      00230A FF               [12]  919 	mov	r7,a
      00230B E5 10            [12]  920 	mov	a,_bp
      00230D 24 08            [12]  921 	add	a,#0x08
      00230F F8               [12]  922 	mov	r0,a
      002310 86 82            [24]  923 	mov	dpl,@r0
      002312 08               [12]  924 	inc	r0
      002313 86 83            [24]  925 	mov	dph,@r0
      002315 08               [12]  926 	inc	r0
      002316 86 F0            [24]  927 	mov	b,@r0
      002318 12 2E 3A         [24]  928 	lcall	__gptrget
      00231B FC               [12]  929 	mov	r4,a
      00231C A3               [24]  930 	inc	dptr
      00231D 12 2E 3A         [24]  931 	lcall	__gptrget
      002320 FD               [12]  932 	mov	r5,a
      002321 EC               [12]  933 	mov	a,r4
      002322 2E               [12]  934 	add	a,r6
      002323 F5 82            [12]  935 	mov	dpl,a
      002325 ED               [12]  936 	mov	a,r5
      002326 3F               [12]  937 	addc	a,r7
      002327 F5 83            [12]  938 	mov	dph,a
      002329 E0               [24]  939 	movx	a,@dptr
      00232A FF               [12]  940 	mov	r7,a
      00232B BF 55 02         [24]  941 	cjne	r7,#0x55,00148$
      00232E 80 03            [24]  942 	sjmp	00115$
      002330                        943 00148$:
      002330 12 20 82         [24]  944 	lcall	_bang
      002333                        945 00115$:
                                    946 ;	walk.c:107: return 1u;
      002333 75 82 01         [24]  947 	mov	dpl,#0x01
      002336                        948 00116$:
                                    949 ;	walk.c:108: }
      002336 85 10 81         [24]  950 	mov	sp,_bp
      002339 D0 10            [24]  951 	pop	_bp
      00233B 22               [24]  952 	ret
                                    953 ;------------------------------------------------------------
                                    954 ;Allocation info for local variables in function 'walk'
                                    955 ;------------------------------------------------------------
                                    956 ;nstart                    Allocated to registers 
                                    957 ;cur                       Allocated to stack - _bp +10
                                    958 ;t                         Allocated to stack - _bp +14
                                    959 ;j                         Allocated to stack - _bp +18
                                    960 ;f                         Allocated to registers r3 
                                    961 ;sloc0                     Allocated to stack - _bp +1
                                    962 ;sloc1                     Allocated to stack - _bp +2
                                    963 ;sloc2                     Allocated to stack - _bp +3
                                    964 ;sloc3                     Allocated to stack - _bp +17
                                    965 ;sloc4                     Allocated to stack - _bp +4
                                    966 ;sloc5                     Allocated to stack - _bp +5
                                    967 ;sloc6                     Allocated to stack - _bp +6
                                    968 ;sloc7                     Allocated to stack - _bp +7
                                    969 ;------------------------------------------------------------
                                    970 ;	walk.c:110: static void walk(struct node *nstart) {
                                    971 ;	-----------------------------------------
                                    972 ;	 function walk
                                    973 ;	-----------------------------------------
      00233C                        974 _walk:
      00233C C0 10            [24]  975 	push	_bp
      00233E E5 81            [12]  976 	mov	a,sp
      002340 F5 10            [12]  977 	mov	_bp,a
      002342 24 12            [12]  978 	add	a,#0x12
      002344 F5 81            [12]  979 	mov	sp,a
      002346 AD 82            [24]  980 	mov	r5,dpl
      002348 AE 83            [24]  981 	mov	r6,dph
      00234A AF F0            [24]  982 	mov	r7,b
                                    983 ;	walk.c:114: cur = *nstart;
      00234C E5 10            [12]  984 	mov	a,_bp
      00234E 24 0A            [12]  985 	add	a,#0x0a
      002350 F9               [12]  986 	mov	r1,a
      002351 FA               [12]  987 	mov	r2,a
      002352 7B 00            [12]  988 	mov	r3,#0x00
      002354 7C 40            [12]  989 	mov	r4,#0x40
      002356 C0 01            [24]  990 	push	ar1
      002358 74 04            [12]  991 	mov	a,#0x04
      00235A C0 E0            [24]  992 	push	acc
      00235C E4               [12]  993 	clr	a
      00235D C0 E0            [24]  994 	push	acc
      00235F C0 05            [24]  995 	push	ar5
      002361 C0 06            [24]  996 	push	ar6
      002363 C0 07            [24]  997 	push	ar7
      002365 8A 82            [24]  998 	mov	dpl,r2
      002367 8B 83            [24]  999 	mov	dph,r3
      002369 8C F0            [24] 1000 	mov	b,r4
      00236B 12 2C E8         [24] 1001 	lcall	___memcpy
      00236E E5 81            [12] 1002 	mov	a,sp
      002370 24 FB            [12] 1003 	add	a,#0xfb
      002372 F5 81            [12] 1004 	mov	sp,a
      002374 D0 01            [24] 1005 	pop	ar1
                                   1006 ;	walk.c:116: process:
      002376 E5 10            [12] 1007 	mov	a,_bp
      002378 24 06            [12] 1008 	add	a,#0x06
      00237A F8               [12] 1009 	mov	r0,a
      00237B A6 01            [24] 1010 	mov	@r0,ar1
      00237D E5 10            [12] 1011 	mov	a,_bp
      00237F 24 0E            [12] 1012 	add	a,#0x0e
      002381 FE               [12] 1013 	mov	r6,a
      002382 E5 10            [12] 1014 	mov	a,_bp
      002384 24 03            [12] 1015 	add	a,#0x03
      002386 F8               [12] 1016 	mov	r0,a
      002387 A6 01            [24] 1017 	mov	@r0,ar1
      002389 E5 10            [12] 1018 	mov	a,_bp
      00238B 24 05            [12] 1019 	add	a,#0x05
      00238D F8               [12] 1020 	mov	r0,a
      00238E A6 01            [24] 1021 	mov	@r0,ar1
      002390 E5 10            [12] 1022 	mov	a,_bp
      002392 24 04            [12] 1023 	add	a,#0x04
      002394 F8               [12] 1024 	mov	r0,a
      002395 A6 06            [24] 1025 	mov	@r0,ar6
      002397 89 02            [24] 1026 	mov	ar2,r1
      002399 A8 10            [24] 1027 	mov	r0,_bp
      00239B 08               [12] 1028 	inc	r0
      00239C A6 06            [24] 1029 	mov	@r0,ar6
      00239E A8 10            [24] 1030 	mov	r0,_bp
      0023A0 08               [12] 1031 	inc	r0
      0023A1 08               [12] 1032 	inc	r0
      0023A2 A6 01            [24] 1033 	mov	@r0,ar1
      0023A4 74 02            [12] 1034 	mov	a,#0x02
      0023A6 29               [12] 1035 	add	a,r1
      0023A7 F8               [12] 1036 	mov	r0,a
      0023A8                       1037 00101$:
                                   1038 ;	walk.c:117: g[cur.r][cur.c] = 0xaau;
      0023A8 C0 02            [24] 1039 	push	ar2
      0023AA 87 02            [24] 1040 	mov	ar2,@r1
      0023AC 09               [12] 1041 	inc	r1
      0023AD 87 05            [24] 1042 	mov	ar5,@r1
      0023AF 19               [12] 1043 	dec	r1
      0023B0 C0 06            [24] 1044 	push	ar6
      0023B2 C0 01            [24] 1045 	push	ar1
      0023B4 C0 00            [24] 1046 	push	ar0
      0023B6 C0 02            [24] 1047 	push	ar2
      0023B8 C0 05            [24] 1048 	push	ar5
      0023BA 90 00 C9         [24] 1049 	mov	dptr,#0x00c9
      0023BD 12 2C 4A         [24] 1050 	lcall	__mulint
      0023C0 AA 82            [24] 1051 	mov	r2,dpl
      0023C2 AD 83            [24] 1052 	mov	r5,dph
      0023C4 15 81            [12] 1053 	dec	sp
      0023C6 15 81            [12] 1054 	dec	sp
      0023C8 D0 00            [24] 1055 	pop	ar0
      0023CA D0 01            [24] 1056 	pop	ar1
      0023CC EA               [12] 1057 	mov	a,r2
      0023CD 24 80            [12] 1058 	add	a,#_g
      0023CF FF               [12] 1059 	mov	r7,a
      0023D0 ED               [12] 1060 	mov	a,r5
      0023D1 34 42            [12] 1061 	addc	a,#(_g >> 8)
      0023D3 FC               [12] 1062 	mov	r4,a
      0023D4 86 02            [24] 1063 	mov	ar2,@r0
      0023D6 08               [12] 1064 	inc	r0
      0023D7 86 05            [24] 1065 	mov	ar5,@r0
      0023D9 18               [12] 1066 	dec	r0
      0023DA EA               [12] 1067 	mov	a,r2
      0023DB 2F               [12] 1068 	add	a,r7
      0023DC F5 82            [12] 1069 	mov	dpl,a
      0023DE ED               [12] 1070 	mov	a,r5
      0023DF 3C               [12] 1071 	addc	a,r4
      0023E0 F5 83            [12] 1072 	mov	dph,a
      0023E2 74 AA            [12] 1073 	mov	a,#0xaa
      0023E4 F0               [24] 1074 	movx	@dptr,a
                                   1075 ;	walk.c:119: printf("\033[%d;%dHo", cur.r + 4, cur.c + 1);
      0023E5 86 02            [24] 1076 	mov	ar2,@r0
      0023E7 08               [12] 1077 	inc	r0
      0023E8 86 05            [24] 1078 	mov	ar5,@r0
      0023EA 18               [12] 1079 	dec	r0
      0023EB 74 01            [12] 1080 	mov	a,#0x01
      0023ED 2A               [12] 1081 	add	a,r2
      0023EE FF               [12] 1082 	mov	r7,a
      0023EF E4               [12] 1083 	clr	a
      0023F0 3D               [12] 1084 	addc	a,r5
      0023F1 FC               [12] 1085 	mov	r4,a
      0023F2 87 02            [24] 1086 	mov	ar2,@r1
      0023F4 09               [12] 1087 	inc	r1
      0023F5 87 05            [24] 1088 	mov	ar5,@r1
      0023F7 19               [12] 1089 	dec	r1
      0023F8 74 04            [12] 1090 	mov	a,#0x04
      0023FA 2A               [12] 1091 	add	a,r2
      0023FB FA               [12] 1092 	mov	r2,a
      0023FC E4               [12] 1093 	clr	a
      0023FD 3D               [12] 1094 	addc	a,r5
      0023FE FD               [12] 1095 	mov	r5,a
      0023FF C0 02            [24] 1096 	push	ar2
      002401 C0 01            [24] 1097 	push	ar1
      002403 C0 00            [24] 1098 	push	ar0
      002405 C0 07            [24] 1099 	push	ar7
      002407 C0 04            [24] 1100 	push	ar4
      002409 C0 02            [24] 1101 	push	ar2
      00240B C0 05            [24] 1102 	push	ar5
      00240D 74 41            [12] 1103 	mov	a,#___str_1
      00240F C0 E0            [24] 1104 	push	acc
      002411 74 41            [12] 1105 	mov	a,#(___str_1 >> 8)
      002413 C0 E0            [24] 1106 	push	acc
      002415 74 80            [12] 1107 	mov	a,#0x80
      002417 C0 E0            [24] 1108 	push	acc
      002419 12 2E 01         [24] 1109 	lcall	_printf
      00241C E5 81            [12] 1110 	mov	a,sp
      00241E 24 F9            [12] 1111 	add	a,#0xf9
      002420 F5 81            [12] 1112 	mov	sp,a
                                   1113 ;	walk.c:120: flashOE(OE76_MASK7);
      002422 75 82 80         [24] 1114 	mov	dpl,#0x80
      002425 12 20 8E         [24] 1115 	lcall	_flashOE
      002428 D0 00            [24] 1116 	pop	ar0
      00242A D0 01            [24] 1117 	pop	ar1
      00242C D0 02            [24] 1118 	pop	ar2
      00242E D0 06            [24] 1119 	pop	ar6
                                   1120 ;	walk.c:145: return;
      002430 D0 02            [24] 1121 	pop	ar2
                                   1122 ;	walk.c:122: next:
      002432                       1123 00102$:
                                   1124 ;	walk.c:123: printf("\033[2;1H% 8d% 8d% 8d", sp, cur.r, cur.c);
      002432 C0 02            [24] 1125 	push	ar2
      002434 86 07            [24] 1126 	mov	ar7,@r0
      002436 08               [12] 1127 	inc	r0
      002437 86 04            [24] 1128 	mov	ar4,@r0
      002439 18               [12] 1129 	dec	r0
      00243A 87 02            [24] 1130 	mov	ar2,@r1
      00243C 09               [12] 1131 	inc	r1
      00243D 87 05            [24] 1132 	mov	ar5,@r1
      00243F 19               [12] 1133 	dec	r1
      002440 C0 06            [24] 1134 	push	ar6
      002442 C0 02            [24] 1135 	push	ar2
      002444 C0 01            [24] 1136 	push	ar1
      002446 C0 00            [24] 1137 	push	ar0
      002448 C0 07            [24] 1138 	push	ar7
      00244A C0 04            [24] 1139 	push	ar4
      00244C C0 02            [24] 1140 	push	ar2
      00244E C0 05            [24] 1141 	push	ar5
      002450 90 FE F0         [24] 1142 	mov	dptr,#_sp
      002453 E0               [24] 1143 	movx	a,@dptr
      002454 C0 E0            [24] 1144 	push	acc
      002456 A3               [24] 1145 	inc	dptr
      002457 E0               [24] 1146 	movx	a,@dptr
      002458 C0 E0            [24] 1147 	push	acc
      00245A 74 4B            [12] 1148 	mov	a,#___str_2
      00245C C0 E0            [24] 1149 	push	acc
      00245E 74 41            [12] 1150 	mov	a,#(___str_2 >> 8)
      002460 C0 E0            [24] 1151 	push	acc
      002462 74 80            [12] 1152 	mov	a,#0x80
      002464 C0 E0            [24] 1153 	push	acc
      002466 12 2E 01         [24] 1154 	lcall	_printf
      002469 E5 81            [12] 1155 	mov	a,sp
      00246B 24 F7            [12] 1156 	add	a,#0xf7
      00246D F5 81            [12] 1157 	mov	sp,a
      00246F D0 00            [24] 1158 	pop	ar0
      002471 D0 01            [24] 1159 	pop	ar1
      002473 D0 02            [24] 1160 	pop	ar2
      002475 D0 06            [24] 1161 	pop	ar6
                                   1162 ;	walk.c:125: for (j = 0u, f = 0u; j < NMAX; j++) {
      002477 7B 00            [12] 1163 	mov	r3,#0x00
      002479 C0 00            [24] 1164 	push	ar0
      00247B E5 10            [12] 1165 	mov	a,_bp
      00247D 24 12            [12] 1166 	add	a,#0x12
      00247F F8               [12] 1167 	mov	r0,a
      002480 76 00            [12] 1168 	mov	@r0,#0x00
      002482 D0 00            [24] 1169 	pop	ar0
                                   1170 ;	walk.c:145: return;
      002484 D0 02            [24] 1171 	pop	ar2
                                   1172 ;	walk.c:125: for (j = 0u, f = 0u; j < NMAX; j++) {
      002486                       1173 00119$:
      002486 C0 00            [24] 1174 	push	ar0
      002488 E5 10            [12] 1175 	mov	a,_bp
      00248A 24 12            [12] 1176 	add	a,#0x12
      00248C F8               [12] 1177 	mov	r0,a
      00248D B6 10 00         [24] 1178 	cjne	@r0,#0x10,00159$
      002490                       1179 00159$:
      002490 D0 00            [24] 1180 	pop	ar0
      002492 50 7A            [24] 1181 	jnc	00106$
                                   1182 ;	walk.c:126: if (!update(&t, &cur, j)) continue;
      002494 C0 02            [24] 1183 	push	ar2
      002496 C0 00            [24] 1184 	push	ar0
      002498 E5 10            [12] 1185 	mov	a,_bp
      00249A 24 06            [12] 1186 	add	a,#0x06
      00249C F8               [12] 1187 	mov	r0,a
      00249D C0 01            [24] 1188 	push	ar1
      00249F E5 10            [12] 1189 	mov	a,_bp
      0024A1 24 07            [12] 1190 	add	a,#0x07
      0024A3 F9               [12] 1191 	mov	r1,a
      0024A4 E6               [12] 1192 	mov	a,@r0
      0024A5 F7               [12] 1193 	mov	@r1,a
      0024A6 09               [12] 1194 	inc	r1
      0024A7 77 00            [12] 1195 	mov	@r1,#0x00
      0024A9 09               [12] 1196 	inc	r1
      0024AA 77 40            [12] 1197 	mov	@r1,#0x40
      0024AC D0 01            [24] 1198 	pop	ar1
      0024AE D0 00            [24] 1199 	pop	ar0
      0024B0 8E 04            [24] 1200 	mov	ar4,r6
      0024B2 7D 00            [12] 1201 	mov	r5,#0x00
      0024B4 7F 40            [12] 1202 	mov	r7,#0x40
      0024B6 C0 06            [24] 1203 	push	ar6
      0024B8 C0 03            [24] 1204 	push	ar3
      0024BA C0 02            [24] 1205 	push	ar2
      0024BC C0 01            [24] 1206 	push	ar1
      0024BE C0 00            [24] 1207 	push	ar0
      0024C0 85 00 F0         [24] 1208 	mov	b,ar0
      0024C3 E5 10            [12] 1209 	mov	a,_bp
      0024C5 24 12            [12] 1210 	add	a,#0x12
      0024C7 F8               [12] 1211 	mov	r0,a
      0024C8 E6               [12] 1212 	mov	a,@r0
      0024C9 C0 E0            [24] 1213 	push	acc
      0024CB A8 F0            [24] 1214 	mov	r0,b
      0024CD 85 00 F0         [24] 1215 	mov	b,ar0
      0024D0 E5 10            [12] 1216 	mov	a,_bp
      0024D2 24 07            [12] 1217 	add	a,#0x07
      0024D4 F8               [12] 1218 	mov	r0,a
      0024D5 E6               [12] 1219 	mov	a,@r0
      0024D6 C0 E0            [24] 1220 	push	acc
      0024D8 08               [12] 1221 	inc	r0
      0024D9 E6               [12] 1222 	mov	a,@r0
      0024DA C0 E0            [24] 1223 	push	acc
      0024DC 08               [12] 1224 	inc	r0
      0024DD E6               [12] 1225 	mov	a,@r0
      0024DE C0 E0            [24] 1226 	push	acc
      0024E0 8C 82            [24] 1227 	mov	dpl,r4
      0024E2 8D 83            [24] 1228 	mov	dph,r5
      0024E4 8F F0            [24] 1229 	mov	b,r7
      0024E6 12 20 AF         [24] 1230 	lcall	_update
      0024E9 AF 82            [24] 1231 	mov	r7,dpl
      0024EB E5 81            [12] 1232 	mov	a,sp
      0024ED 24 FC            [12] 1233 	add	a,#0xfc
      0024EF F5 81            [12] 1234 	mov	sp,a
      0024F1 D0 00            [24] 1235 	pop	ar0
      0024F3 D0 01            [24] 1236 	pop	ar1
      0024F5 D0 02            [24] 1237 	pop	ar2
      0024F7 D0 03            [24] 1238 	pop	ar3
      0024F9 D0 06            [24] 1239 	pop	ar6
      0024FB D0 02            [24] 1240 	pop	ar2
      0024FD EF               [12] 1241 	mov	a,r7
      0024FE 60 01            [24] 1242 	jz	00105$
                                   1243 ;	walk.c:127: f++;
      002500 0B               [12] 1244 	inc	r3
      002501                       1245 00105$:
                                   1246 ;	walk.c:125: for (j = 0u, f = 0u; j < NMAX; j++) {
      002501 C0 00            [24] 1247 	push	ar0
      002503 E5 10            [12] 1248 	mov	a,_bp
      002505 24 12            [12] 1249 	add	a,#0x12
      002507 F8               [12] 1250 	mov	r0,a
      002508 06               [12] 1251 	inc	@r0
      002509 D0 00            [24] 1252 	pop	ar0
      00250B 02 24 86         [24] 1253 	ljmp	00119$
      00250E                       1254 00106$:
                                   1255 ;	walk.c:130: if (f) {
      00250E EB               [12] 1256 	mov	a,r3
      00250F 70 03            [24] 1257 	jnz	00162$
      002511 02 26 28         [24] 1258 	ljmp	00115$
      002514                       1259 00162$:
                                   1260 ;	walk.c:131: while (1) {
      002514                       1261 00112$:
                                   1262 ;	walk.c:132: j = (uint8_t)(rand() % NMAX);
      002514 C0 02            [24] 1263 	push	ar2
      002516 C0 06            [24] 1264 	push	ar6
      002518 C0 02            [24] 1265 	push	ar2
      00251A C0 01            [24] 1266 	push	ar1
      00251C C0 00            [24] 1267 	push	ar0
      00251E 12 2B 52         [24] 1268 	lcall	_rand
      002521 AD 82            [24] 1269 	mov	r5,dpl
      002523 D0 00            [24] 1270 	pop	ar0
      002525 D0 01            [24] 1271 	pop	ar1
      002527 D0 02            [24] 1272 	pop	ar2
      002529 D0 06            [24] 1273 	pop	ar6
      00252B 53 05 0F         [24] 1274 	anl	ar5,#0x0f
      00252E 8D 04            [24] 1275 	mov	ar4,r5
                                   1276 ;	walk.c:133: if (!update(&t, &cur, j)) continue;
      002530 C0 00            [24] 1277 	push	ar0
      002532 E5 10            [12] 1278 	mov	a,_bp
      002534 24 05            [12] 1279 	add	a,#0x05
      002536 F8               [12] 1280 	mov	r0,a
      002537 C0 01            [24] 1281 	push	ar1
      002539 E5 10            [12] 1282 	mov	a,_bp
      00253B 24 07            [12] 1283 	add	a,#0x07
      00253D F9               [12] 1284 	mov	r1,a
      00253E E6               [12] 1285 	mov	a,@r0
      00253F F7               [12] 1286 	mov	@r1,a
      002540 09               [12] 1287 	inc	r1
      002541 77 00            [12] 1288 	mov	@r1,#0x00
      002543 09               [12] 1289 	inc	r1
      002544 77 40            [12] 1290 	mov	@r1,#0x40
      002546 D0 01            [24] 1291 	pop	ar1
      002548 E5 10            [12] 1292 	mov	a,_bp
      00254A 24 04            [12] 1293 	add	a,#0x04
      00254C F8               [12] 1294 	mov	r0,a
      00254D 86 02            [24] 1295 	mov	ar2,@r0
      00254F 7D 00            [12] 1296 	mov	r5,#0x00
      002551 7F 40            [12] 1297 	mov	r7,#0x40
      002553 D0 00            [24] 1298 	pop	ar0
      002555 C0 06            [24] 1299 	push	ar6
      002557 C0 02            [24] 1300 	push	ar2
      002559 C0 01            [24] 1301 	push	ar1
      00255B C0 00            [24] 1302 	push	ar0
      00255D C0 04            [24] 1303 	push	ar4
      00255F 85 00 F0         [24] 1304 	mov	b,ar0
      002562 E5 10            [12] 1305 	mov	a,_bp
      002564 24 07            [12] 1306 	add	a,#0x07
      002566 F8               [12] 1307 	mov	r0,a
      002567 E6               [12] 1308 	mov	a,@r0
      002568 C0 E0            [24] 1309 	push	acc
      00256A 08               [12] 1310 	inc	r0
      00256B E6               [12] 1311 	mov	a,@r0
      00256C C0 E0            [24] 1312 	push	acc
      00256E 08               [12] 1313 	inc	r0
      00256F E6               [12] 1314 	mov	a,@r0
      002570 C0 E0            [24] 1315 	push	acc
      002572 8A 82            [24] 1316 	mov	dpl,r2
      002574 8D 83            [24] 1317 	mov	dph,r5
      002576 8F F0            [24] 1318 	mov	b,r7
      002578 12 20 AF         [24] 1319 	lcall	_update
      00257B AF 82            [24] 1320 	mov	r7,dpl
      00257D E5 81            [12] 1321 	mov	a,sp
      00257F 24 FC            [12] 1322 	add	a,#0xfc
      002581 F5 81            [12] 1323 	mov	sp,a
      002583 D0 00            [24] 1324 	pop	ar0
      002585 D0 01            [24] 1325 	pop	ar1
      002587 D0 02            [24] 1326 	pop	ar2
      002589 D0 06            [24] 1327 	pop	ar6
      00258B D0 02            [24] 1328 	pop	ar2
      00258D EF               [12] 1329 	mov	a,r7
      00258E 60 84            [24] 1330 	jz	00112$
                                   1331 ;	walk.c:134: if (!stpush(&cur)) bang();
      002590 8A 04            [24] 1332 	mov	ar4,r2
      002592 7D 00            [12] 1333 	mov	r5,#0x00
      002594 7F 40            [12] 1334 	mov	r7,#0x40
      002596 8C 82            [24] 1335 	mov	dpl,r4
      002598 8D 83            [24] 1336 	mov	dph,r5
      00259A 8F F0            [24] 1337 	mov	b,r7
      00259C C0 06            [24] 1338 	push	ar6
      00259E C0 02            [24] 1339 	push	ar2
      0025A0 C0 01            [24] 1340 	push	ar1
      0025A2 C0 00            [24] 1341 	push	ar0
      0025A4 12 2A 8F         [24] 1342 	lcall	_stpush
      0025A7 E5 82            [12] 1343 	mov	a,dpl
      0025A9 D0 00            [24] 1344 	pop	ar0
      0025AB D0 01            [24] 1345 	pop	ar1
      0025AD D0 02            [24] 1346 	pop	ar2
      0025AF D0 06            [24] 1347 	pop	ar6
      0025B1 70 13            [24] 1348 	jnz	00110$
      0025B3 C0 06            [24] 1349 	push	ar6
      0025B5 C0 02            [24] 1350 	push	ar2
      0025B7 C0 01            [24] 1351 	push	ar1
      0025B9 C0 00            [24] 1352 	push	ar0
      0025BB 12 20 82         [24] 1353 	lcall	_bang
      0025BE D0 00            [24] 1354 	pop	ar0
      0025C0 D0 01            [24] 1355 	pop	ar1
      0025C2 D0 02            [24] 1356 	pop	ar2
      0025C4 D0 06            [24] 1357 	pop	ar6
      0025C6                       1358 00110$:
                                   1359 ;	walk.c:135: cur = t;
      0025C6 C0 02            [24] 1360 	push	ar2
      0025C8 C0 00            [24] 1361 	push	ar0
      0025CA A8 10            [24] 1362 	mov	r0,_bp
      0025CC 08               [12] 1363 	inc	r0
      0025CD C0 01            [24] 1364 	push	ar1
      0025CF E5 10            [12] 1365 	mov	a,_bp
      0025D1 24 07            [12] 1366 	add	a,#0x07
      0025D3 F9               [12] 1367 	mov	r1,a
      0025D4 E6               [12] 1368 	mov	a,@r0
      0025D5 F7               [12] 1369 	mov	@r1,a
      0025D6 09               [12] 1370 	inc	r1
      0025D7 77 00            [12] 1371 	mov	@r1,#0x00
      0025D9 09               [12] 1372 	inc	r1
      0025DA 77 40            [12] 1373 	mov	@r1,#0x40
      0025DC D0 01            [24] 1374 	pop	ar1
      0025DE A8 10            [24] 1375 	mov	r0,_bp
      0025E0 08               [12] 1376 	inc	r0
      0025E1 08               [12] 1377 	inc	r0
      0025E2 86 02            [24] 1378 	mov	ar2,@r0
      0025E4 7B 00            [12] 1379 	mov	r3,#0x00
      0025E6 7F 40            [12] 1380 	mov	r7,#0x40
      0025E8 D0 00            [24] 1381 	pop	ar0
      0025EA C0 06            [24] 1382 	push	ar6
      0025EC C0 02            [24] 1383 	push	ar2
      0025EE C0 01            [24] 1384 	push	ar1
      0025F0 C0 00            [24] 1385 	push	ar0
      0025F2 74 04            [12] 1386 	mov	a,#0x04
      0025F4 C0 E0            [24] 1387 	push	acc
      0025F6 E4               [12] 1388 	clr	a
      0025F7 C0 E0            [24] 1389 	push	acc
      0025F9 85 00 F0         [24] 1390 	mov	b,ar0
      0025FC E5 10            [12] 1391 	mov	a,_bp
      0025FE 24 07            [12] 1392 	add	a,#0x07
      002600 F8               [12] 1393 	mov	r0,a
      002601 E6               [12] 1394 	mov	a,@r0
      002602 C0 E0            [24] 1395 	push	acc
      002604 08               [12] 1396 	inc	r0
      002605 E6               [12] 1397 	mov	a,@r0
      002606 C0 E0            [24] 1398 	push	acc
      002608 08               [12] 1399 	inc	r0
      002609 E6               [12] 1400 	mov	a,@r0
      00260A C0 E0            [24] 1401 	push	acc
      00260C 8A 82            [24] 1402 	mov	dpl,r2
      00260E 8B 83            [24] 1403 	mov	dph,r3
      002610 8F F0            [24] 1404 	mov	b,r7
      002612 12 2C E8         [24] 1405 	lcall	___memcpy
      002615 E5 81            [12] 1406 	mov	a,sp
      002617 24 FB            [12] 1407 	add	a,#0xfb
      002619 F5 81            [12] 1408 	mov	sp,a
      00261B D0 00            [24] 1409 	pop	ar0
      00261D D0 01            [24] 1410 	pop	ar1
      00261F D0 02            [24] 1411 	pop	ar2
      002621 D0 06            [24] 1412 	pop	ar6
                                   1413 ;	walk.c:136: goto process;
      002623 D0 02            [24] 1414 	pop	ar2
      002625 02 23 A8         [24] 1415 	ljmp	00101$
      002628                       1416 00115$:
                                   1417 ;	walk.c:140: printf("\033[%d;%dH.", cur.r + 4, cur.c + 1);
      002628 86 05            [24] 1418 	mov	ar5,@r0
      00262A 08               [12] 1419 	inc	r0
      00262B 86 07            [24] 1420 	mov	ar7,@r0
      00262D 18               [12] 1421 	dec	r0
      00262E 0D               [12] 1422 	inc	r5
      00262F BD 00 01         [24] 1423 	cjne	r5,#0x00,00165$
      002632 0F               [12] 1424 	inc	r7
      002633                       1425 00165$:
      002633 87 03            [24] 1426 	mov	ar3,@r1
      002635 09               [12] 1427 	inc	r1
      002636 87 04            [24] 1428 	mov	ar4,@r1
      002638 19               [12] 1429 	dec	r1
      002639 74 04            [12] 1430 	mov	a,#0x04
      00263B 2B               [12] 1431 	add	a,r3
      00263C FB               [12] 1432 	mov	r3,a
      00263D E4               [12] 1433 	clr	a
      00263E 3C               [12] 1434 	addc	a,r4
      00263F FC               [12] 1435 	mov	r4,a
      002640 C0 06            [24] 1436 	push	ar6
      002642 C0 02            [24] 1437 	push	ar2
      002644 C0 01            [24] 1438 	push	ar1
      002646 C0 00            [24] 1439 	push	ar0
      002648 C0 05            [24] 1440 	push	ar5
      00264A C0 07            [24] 1441 	push	ar7
      00264C C0 03            [24] 1442 	push	ar3
      00264E C0 04            [24] 1443 	push	ar4
      002650 74 5E            [12] 1444 	mov	a,#___str_3
      002652 C0 E0            [24] 1445 	push	acc
      002654 74 41            [12] 1446 	mov	a,#(___str_3 >> 8)
      002656 C0 E0            [24] 1447 	push	acc
      002658 74 80            [12] 1448 	mov	a,#0x80
      00265A C0 E0            [24] 1449 	push	acc
      00265C 12 2E 01         [24] 1450 	lcall	_printf
      00265F E5 81            [12] 1451 	mov	a,sp
      002661 24 F9            [12] 1452 	add	a,#0xf9
      002663 F5 81            [12] 1453 	mov	sp,a
                                   1454 ;	walk.c:141: flashOE(OE76_MASK6);
      002665 75 82 40         [24] 1455 	mov	dpl,#0x40
      002668 12 20 8E         [24] 1456 	lcall	_flashOE
      00266B D0 00            [24] 1457 	pop	ar0
      00266D D0 01            [24] 1458 	pop	ar1
      00266F D0 02            [24] 1459 	pop	ar2
      002671 D0 06            [24] 1460 	pop	ar6
                                   1461 ;	walk.c:143: if (stpop(&cur)) goto next;
      002673 C0 00            [24] 1462 	push	ar0
      002675 E5 10            [12] 1463 	mov	a,_bp
      002677 24 03            [12] 1464 	add	a,#0x03
      002679 F8               [12] 1465 	mov	r0,a
      00267A 86 04            [24] 1466 	mov	ar4,@r0
      00267C 7D 00            [12] 1467 	mov	r5,#0x00
      00267E 7F 40            [12] 1468 	mov	r7,#0x40
      002680 D0 00            [24] 1469 	pop	ar0
      002682 8C 82            [24] 1470 	mov	dpl,r4
      002684 8D 83            [24] 1471 	mov	dph,r5
      002686 8F F0            [24] 1472 	mov	b,r7
      002688 C0 06            [24] 1473 	push	ar6
      00268A C0 02            [24] 1474 	push	ar2
      00268C C0 01            [24] 1475 	push	ar1
      00268E C0 00            [24] 1476 	push	ar0
      002690 12 2A F0         [24] 1477 	lcall	_stpop
      002693 E5 82            [12] 1478 	mov	a,dpl
      002695 D0 00            [24] 1479 	pop	ar0
      002697 D0 01            [24] 1480 	pop	ar1
      002699 D0 02            [24] 1481 	pop	ar2
      00269B D0 06            [24] 1482 	pop	ar6
      00269D 60 03            [24] 1483 	jz	00166$
      00269F 02 24 32         [24] 1484 	ljmp	00102$
      0026A2                       1485 00166$:
                                   1486 ;	walk.c:145: return;
                                   1487 ;	walk.c:146: }
      0026A2 85 10 81         [24] 1488 	mov	sp,_bp
      0026A5 D0 10            [24] 1489 	pop	_bp
      0026A7 22               [24] 1490 	ret
                                   1491 ;------------------------------------------------------------
                                   1492 ;Allocation info for local variables in function 'main'
                                   1493 ;------------------------------------------------------------
                                   1494 ;R                         Allocated to stack - _bp +13
                                   1495 ;initial                   Allocated to stack - _bp +5
                                   1496 ;N                         Allocated to stack - _bp +9
                                   1497 ;i                         Allocated to stack - _bp +11
                                   1498 ;j                         Allocated to registers r2 r6 
                                   1499 ;sloc0                     Allocated to stack - _bp +1
                                   1500 ;sloc1                     Allocated to stack - _bp +3
                                   1501 ;sloc2                     Allocated to stack - _bp +17
                                   1502 ;------------------------------------------------------------
                                   1503 ;	walk.c:148: int main(void) {
                                   1504 ;	-----------------------------------------
                                   1505 ;	 function main
                                   1506 ;	-----------------------------------------
      0026A8                       1507 _main:
      0026A8 C0 10            [24] 1508 	push	_bp
      0026AA E5 81            [12] 1509 	mov	a,sp
      0026AC F5 10            [12] 1510 	mov	_bp,a
      0026AE 24 0E            [12] 1511 	add	a,#0x0e
      0026B0 F5 81            [12] 1512 	mov	sp,a
                                   1513 ;	walk.c:154: i0 = 1u;
      0026B2 78 11            [12] 1514 	mov	r0,#_i0
      0026B4 76 01            [12] 1515 	mov	@r0,#0x01
                                   1516 ;	walk.c:156: P1_7 = 1;
                                   1517 ;	assignBit
      0026B6 D2 97            [12] 1518 	setb	_P1_7
                                   1519 ;	walk.c:157: IT0 = 1;
                                   1520 ;	assignBit
      0026B8 D2 88            [12] 1521 	setb	_IT0
                                   1522 ;	walk.c:158: EX0 = 1;
                                   1523 ;	assignBit
      0026BA D2 A8            [12] 1524 	setb	_EX0
                                   1525 ;	walk.c:159: EA = 1;
                                   1526 ;	assignBit
      0026BC D2 AF            [12] 1527 	setb	_EA
                                   1528 ;	walk.c:161: srand(*R);
      0026BE 90 FF FE         [24] 1529 	mov	dptr,#0xfffe
      0026C1 E0               [24] 1530 	movx	a,@dptr
      0026C2 FE               [12] 1531 	mov	r6,a
      0026C3 A3               [24] 1532 	inc	dptr
      0026C4 E0               [24] 1533 	movx	a,@dptr
      0026C5 FF               [12] 1534 	mov	r7,a
      0026C6 8E 82            [24] 1535 	mov	dpl,r6
      0026C8 8F 83            [24] 1536 	mov	dph,r7
      0026CA 12 2C 16         [24] 1537 	lcall	_srand
                                   1538 ;	walk.c:162: stinit();
      0026CD 12 2A 86         [24] 1539 	lcall	_stinit
                                   1540 ;	walk.c:164: puts("\033[2J\033[?25l");
      0026D0 90 41 68         [24] 1541 	mov	dptr,#___str_4
      0026D3 75 F0 80         [24] 1542 	mov	b,#0x80
      0026D6 12 2D 7B         [24] 1543 	lcall	_puts
                                   1544 ;	walk.c:166: while (i0) {
      0026D9 E5 10            [12] 1545 	mov	a,_bp
      0026DB 24 05            [12] 1546 	add	a,#0x05
      0026DD F9               [12] 1547 	mov	r1,a
      0026DE FF               [12] 1548 	mov	r7,a
      0026DF E5 10            [12] 1549 	mov	a,_bp
      0026E1 24 09            [12] 1550 	add	a,#0x09
      0026E3 F8               [12] 1551 	mov	r0,a
      0026E4 E4               [12] 1552 	clr	a
      0026E5 F6               [12] 1553 	mov	@r0,a
      0026E6 08               [12] 1554 	inc	r0
      0026E7 F6               [12] 1555 	mov	@r0,a
      0026E8                       1556 00108$:
      0026E8 78 11            [12] 1557 	mov	r0,#_i0
      0026EA E6               [12] 1558 	mov	a,@r0
      0026EB 70 03            [24] 1559 	jnz	00181$
      0026ED 02 2A 6F         [24] 1560 	ljmp	00110$
      0026F0                       1561 00181$:
                                   1562 ;	walk.c:167: for (i = 0; i < ROWS; i++)
      0026F0 7B 00            [12] 1563 	mov	r3,#0x00
      0026F2 7C 00            [12] 1564 	mov	r4,#0x00
      0026F4 A8 10            [24] 1565 	mov	r0,_bp
      0026F6 08               [12] 1566 	inc	r0
      0026F7 E4               [12] 1567 	clr	a
      0026F8 F6               [12] 1568 	mov	@r0,a
      0026F9 08               [12] 1569 	inc	r0
      0026FA F6               [12] 1570 	mov	@r0,a
                                   1571 ;	walk.c:168: for (j = 0; j < COLS; j++)
      0026FB                       1572 00124$:
      0026FB A8 10            [24] 1573 	mov	r0,_bp
      0026FD 08               [12] 1574 	inc	r0
      0026FE C0 01            [24] 1575 	push	ar1
      002700 E5 10            [12] 1576 	mov	a,_bp
      002702 24 03            [12] 1577 	add	a,#0x03
      002704 F9               [12] 1578 	mov	r1,a
      002705 E6               [12] 1579 	mov	a,@r0
      002706 24 80            [12] 1580 	add	a,#_g
      002708 F7               [12] 1581 	mov	@r1,a
      002709 08               [12] 1582 	inc	r0
      00270A E6               [12] 1583 	mov	a,@r0
      00270B 34 42            [12] 1584 	addc	a,#(_g >> 8)
      00270D 09               [12] 1585 	inc	r1
      00270E F7               [12] 1586 	mov	@r1,a
      00270F D0 01            [24] 1587 	pop	ar1
      002711 7A 00            [12] 1588 	mov	r2,#0x00
      002713 7E 00            [12] 1589 	mov	r6,#0x00
      002715                       1590 00111$:
                                   1591 ;	walk.c:169: g[i][j] = 0x55u;
      002715 E5 10            [12] 1592 	mov	a,_bp
      002717 24 03            [12] 1593 	add	a,#0x03
      002719 F8               [12] 1594 	mov	r0,a
      00271A EA               [12] 1595 	mov	a,r2
      00271B 26               [12] 1596 	add	a,@r0
      00271C F5 82            [12] 1597 	mov	dpl,a
      00271E EE               [12] 1598 	mov	a,r6
      00271F 08               [12] 1599 	inc	r0
      002720 36               [12] 1600 	addc	a,@r0
      002721 F5 83            [12] 1601 	mov	dph,a
      002723 74 55            [12] 1602 	mov	a,#0x55
      002725 F0               [24] 1603 	movx	@dptr,a
                                   1604 ;	walk.c:168: for (j = 0; j < COLS; j++)
      002726 0A               [12] 1605 	inc	r2
      002727 BA 00 01         [24] 1606 	cjne	r2,#0x00,00182$
      00272A 0E               [12] 1607 	inc	r6
      00272B                       1608 00182$:
      00272B C3               [12] 1609 	clr	c
      00272C EA               [12] 1610 	mov	a,r2
      00272D 94 C9            [12] 1611 	subb	a,#0xc9
      00272F EE               [12] 1612 	mov	a,r6
      002730 64 80            [12] 1613 	xrl	a,#0x80
      002732 94 80            [12] 1614 	subb	a,#0x80
      002734 40 DF            [24] 1615 	jc	00111$
                                   1616 ;	walk.c:167: for (i = 0; i < ROWS; i++)
      002736 A8 10            [24] 1617 	mov	r0,_bp
      002738 08               [12] 1618 	inc	r0
      002739 74 C9            [12] 1619 	mov	a,#0xc9
      00273B 26               [12] 1620 	add	a,@r0
      00273C F6               [12] 1621 	mov	@r0,a
      00273D E4               [12] 1622 	clr	a
      00273E 08               [12] 1623 	inc	r0
      00273F 36               [12] 1624 	addc	a,@r0
      002740 F6               [12] 1625 	mov	@r0,a
      002741 0B               [12] 1626 	inc	r3
      002742 BB 00 01         [24] 1627 	cjne	r3,#0x00,00184$
      002745 0C               [12] 1628 	inc	r4
      002746                       1629 00184$:
      002746 C3               [12] 1630 	clr	c
      002747 EB               [12] 1631 	mov	a,r3
      002748 94 30            [12] 1632 	subb	a,#0x30
      00274A EC               [12] 1633 	mov	a,r4
      00274B 64 80            [12] 1634 	xrl	a,#0x80
      00274D 94 80            [12] 1635 	subb	a,#0x80
      00274F 40 AA            [24] 1636 	jc	00124$
                                   1637 ;	walk.c:171: initial.r = rand() % ROWS;
      002751 E5 10            [12] 1638 	mov	a,_bp
      002753 24 05            [12] 1639 	add	a,#0x05
      002755 F8               [12] 1640 	mov	r0,a
      002756 C0 07            [24] 1641 	push	ar7
      002758 C0 01            [24] 1642 	push	ar1
      00275A C0 00            [24] 1643 	push	ar0
      00275C 12 2B 52         [24] 1644 	lcall	_rand
      00275F AD 82            [24] 1645 	mov	r5,dpl
      002761 AE 83            [24] 1646 	mov	r6,dph
      002763 74 30            [12] 1647 	mov	a,#0x30
      002765 C0 E0            [24] 1648 	push	acc
      002767 E4               [12] 1649 	clr	a
      002768 C0 E0            [24] 1650 	push	acc
      00276A 8D 82            [24] 1651 	mov	dpl,r5
      00276C 8E 83            [24] 1652 	mov	dph,r6
      00276E 12 2E 56         [24] 1653 	lcall	__modsint
      002771 AD 82            [24] 1654 	mov	r5,dpl
      002773 AE 83            [24] 1655 	mov	r6,dph
      002775 15 81            [12] 1656 	dec	sp
      002777 15 81            [12] 1657 	dec	sp
      002779 D0 00            [24] 1658 	pop	ar0
      00277B D0 01            [24] 1659 	pop	ar1
      00277D A6 05            [24] 1660 	mov	@r0,ar5
      00277F 08               [12] 1661 	inc	r0
      002780 A6 06            [24] 1662 	mov	@r0,ar6
      002782 18               [12] 1663 	dec	r0
                                   1664 ;	walk.c:172: initial.c = rand() % COLS;
      002783 74 02            [12] 1665 	mov	a,#0x02
      002785 29               [12] 1666 	add	a,r1
      002786 F8               [12] 1667 	mov	r0,a
      002787 C0 01            [24] 1668 	push	ar1
      002789 C0 00            [24] 1669 	push	ar0
      00278B 12 2B 52         [24] 1670 	lcall	_rand
      00278E AD 82            [24] 1671 	mov	r5,dpl
      002790 AE 83            [24] 1672 	mov	r6,dph
      002792 74 C9            [12] 1673 	mov	a,#0xc9
      002794 C0 E0            [24] 1674 	push	acc
      002796 E4               [12] 1675 	clr	a
      002797 C0 E0            [24] 1676 	push	acc
      002799 8D 82            [24] 1677 	mov	dpl,r5
      00279B 8E 83            [24] 1678 	mov	dph,r6
      00279D 12 2E 56         [24] 1679 	lcall	__modsint
      0027A0 AD 82            [24] 1680 	mov	r5,dpl
      0027A2 AE 83            [24] 1681 	mov	r6,dph
      0027A4 15 81            [12] 1682 	dec	sp
      0027A6 15 81            [12] 1683 	dec	sp
      0027A8 D0 00            [24] 1684 	pop	ar0
      0027AA A6 05            [24] 1685 	mov	@r0,ar5
      0027AC 08               [12] 1686 	inc	r0
      0027AD A6 06            [24] 1687 	mov	@r0,ar6
      0027AF 18               [12] 1688 	dec	r0
                                   1689 ;	walk.c:174: puts("\033[2J\033[?25l");
      0027B0 90 41 68         [24] 1690 	mov	dptr,#___str_4
      0027B3 75 F0 80         [24] 1691 	mov	b,#0x80
      0027B6 C0 00            [24] 1692 	push	ar0
      0027B8 12 2D 7B         [24] 1693 	lcall	_puts
      0027BB D0 00            [24] 1694 	pop	ar0
      0027BD D0 01            [24] 1695 	pop	ar1
                                   1696 ;	walk.c:175: printf("\033[1;1H% 8u% 8d% 8d", N, initial.r, initial.c);
      0027BF 86 05            [24] 1697 	mov	ar5,@r0
      0027C1 08               [12] 1698 	inc	r0
      0027C2 86 06            [24] 1699 	mov	ar6,@r0
      0027C4 18               [12] 1700 	dec	r0
      0027C5 87 03            [24] 1701 	mov	ar3,@r1
      0027C7 09               [12] 1702 	inc	r1
      0027C8 87 04            [24] 1703 	mov	ar4,@r1
      0027CA 19               [12] 1704 	dec	r1
      0027CB C0 01            [24] 1705 	push	ar1
      0027CD C0 05            [24] 1706 	push	ar5
      0027CF C0 06            [24] 1707 	push	ar6
      0027D1 C0 03            [24] 1708 	push	ar3
      0027D3 C0 04            [24] 1709 	push	ar4
      0027D5 E5 10            [12] 1710 	mov	a,_bp
      0027D7 24 09            [12] 1711 	add	a,#0x09
      0027D9 F8               [12] 1712 	mov	r0,a
      0027DA E6               [12] 1713 	mov	a,@r0
      0027DB C0 E0            [24] 1714 	push	acc
      0027DD 08               [12] 1715 	inc	r0
      0027DE E6               [12] 1716 	mov	a,@r0
      0027DF C0 E0            [24] 1717 	push	acc
      0027E1 74 73            [12] 1718 	mov	a,#___str_5
      0027E3 C0 E0            [24] 1719 	push	acc
      0027E5 74 41            [12] 1720 	mov	a,#(___str_5 >> 8)
      0027E7 C0 E0            [24] 1721 	push	acc
      0027E9 74 80            [12] 1722 	mov	a,#0x80
      0027EB C0 E0            [24] 1723 	push	acc
      0027ED 12 2E 01         [24] 1724 	lcall	_printf
      0027F0 E5 81            [12] 1725 	mov	a,sp
      0027F2 24 F7            [12] 1726 	add	a,#0xf7
      0027F4 F5 81            [12] 1727 	mov	sp,a
      0027F6 D0 01            [24] 1728 	pop	ar1
      0027F8 D0 07            [24] 1729 	pop	ar7
                                   1730 ;	walk.c:177: for (i = 0; i < REG; i++) {
      0027FA E5 10            [12] 1731 	mov	a,_bp
      0027FC 24 0B            [12] 1732 	add	a,#0x0b
      0027FE F8               [12] 1733 	mov	r0,a
      0027FF E4               [12] 1734 	clr	a
      002800 F6               [12] 1735 	mov	@r0,a
      002801 08               [12] 1736 	inc	r0
      002802 F6               [12] 1737 	mov	@r0,a
      002803                       1738 00115$:
                                   1739 ;	walk.c:178: neigh[i].r = neigh[REG + i].r * (1 + rand() % 8);
      002803 C0 07            [24] 1740 	push	ar7
      002805 E5 10            [12] 1741 	mov	a,_bp
      002807 24 0B            [12] 1742 	add	a,#0x0b
      002809 F8               [12] 1743 	mov	r0,a
      00280A E6               [12] 1744 	mov	a,@r0
      00280B 25 E0            [12] 1745 	add	a,acc
      00280D FB               [12] 1746 	mov	r3,a
      00280E 08               [12] 1747 	inc	r0
      00280F E6               [12] 1748 	mov	a,@r0
      002810 33               [12] 1749 	rlc	a
      002811 FC               [12] 1750 	mov	r4,a
      002812 EB               [12] 1751 	mov	a,r3
      002813 2B               [12] 1752 	add	a,r3
      002814 FB               [12] 1753 	mov	r3,a
      002815 EC               [12] 1754 	mov	a,r4
      002816 33               [12] 1755 	rlc	a
      002817 FC               [12] 1756 	mov	r4,a
      002818 E5 10            [12] 1757 	mov	a,_bp
      00281A 24 03            [12] 1758 	add	a,#0x03
      00281C F8               [12] 1759 	mov	r0,a
      00281D EB               [12] 1760 	mov	a,r3
      00281E 24 F2            [12] 1761 	add	a,#_neigh
      002820 F6               [12] 1762 	mov	@r0,a
      002821 EC               [12] 1763 	mov	a,r4
      002822 34 FE            [12] 1764 	addc	a,#(_neigh >> 8)
      002824 08               [12] 1765 	inc	r0
      002825 F6               [12] 1766 	mov	@r0,a
      002826 E5 10            [12] 1767 	mov	a,_bp
      002828 24 0B            [12] 1768 	add	a,#0x0b
      00282A F8               [12] 1769 	mov	r0,a
      00282B 86 06            [24] 1770 	mov	ar6,@r0
      00282D 74 08            [12] 1771 	mov	a,#0x08
      00282F 2E               [12] 1772 	add	a,r6
      002830 FE               [12] 1773 	mov	r6,a
      002831 C2 D5            [12] 1774 	clr	F0
      002833 75 F0 04         [24] 1775 	mov	b,#0x04
      002836 EE               [12] 1776 	mov	a,r6
      002837 30 E7 04         [24] 1777 	jnb	acc.7,00186$
      00283A B2 D5            [12] 1778 	cpl	F0
      00283C F4               [12] 1779 	cpl	a
      00283D 04               [12] 1780 	inc	a
      00283E                       1781 00186$:
      00283E A4               [48] 1782 	mul	ab
      00283F 30 D5 0A         [24] 1783 	jnb	F0,00187$
      002842 F4               [12] 1784 	cpl	a
      002843 24 01            [12] 1785 	add	a,#0x01
      002845 C5 F0            [12] 1786 	xch	a,b
      002847 F4               [12] 1787 	cpl	a
      002848 34 00            [12] 1788 	addc	a,#0x00
      00284A C5 F0            [12] 1789 	xch	a,b
      00284C                       1790 00187$:
      00284C FE               [12] 1791 	mov	r6,a
      00284D AD F0            [24] 1792 	mov	r5,b
      00284F 24 F2            [12] 1793 	add	a,#_neigh
      002851 F5 82            [12] 1794 	mov	dpl,a
      002853 ED               [12] 1795 	mov	a,r5
      002854 34 FE            [12] 1796 	addc	a,#(_neigh >> 8)
      002856 F5 83            [12] 1797 	mov	dph,a
      002858 A8 10            [24] 1798 	mov	r0,_bp
      00285A 08               [12] 1799 	inc	r0
      00285B E0               [24] 1800 	movx	a,@dptr
      00285C F6               [12] 1801 	mov	@r0,a
      00285D A3               [24] 1802 	inc	dptr
      00285E E0               [24] 1803 	movx	a,@dptr
      00285F 08               [12] 1804 	inc	r0
      002860 F6               [12] 1805 	mov	@r0,a
      002861 C0 06            [24] 1806 	push	ar6
      002863 C0 05            [24] 1807 	push	ar5
      002865 C0 04            [24] 1808 	push	ar4
      002867 C0 03            [24] 1809 	push	ar3
      002869 C0 01            [24] 1810 	push	ar1
      00286B 12 2B 52         [24] 1811 	lcall	_rand
      00286E AA 82            [24] 1812 	mov	r2,dpl
      002870 AF 83            [24] 1813 	mov	r7,dph
      002872 74 08            [12] 1814 	mov	a,#0x08
      002874 C0 E0            [24] 1815 	push	acc
      002876 E4               [12] 1816 	clr	a
      002877 C0 E0            [24] 1817 	push	acc
      002879 8A 82            [24] 1818 	mov	dpl,r2
      00287B 8F 83            [24] 1819 	mov	dph,r7
      00287D 12 2E 56         [24] 1820 	lcall	__modsint
      002880 AA 82            [24] 1821 	mov	r2,dpl
      002882 AF 83            [24] 1822 	mov	r7,dph
      002884 15 81            [12] 1823 	dec	sp
      002886 15 81            [12] 1824 	dec	sp
      002888 D0 01            [24] 1825 	pop	ar1
      00288A D0 03            [24] 1826 	pop	ar3
      00288C D0 04            [24] 1827 	pop	ar4
      00288E D0 05            [24] 1828 	pop	ar5
      002890 D0 06            [24] 1829 	pop	ar6
      002892 0A               [12] 1830 	inc	r2
      002893 BA 00 01         [24] 1831 	cjne	r2,#0x00,00188$
      002896 0F               [12] 1832 	inc	r7
      002897                       1833 00188$:
      002897 C0 06            [24] 1834 	push	ar6
      002899 C0 05            [24] 1835 	push	ar5
      00289B C0 04            [24] 1836 	push	ar4
      00289D C0 03            [24] 1837 	push	ar3
      00289F C0 01            [24] 1838 	push	ar1
      0028A1 C0 02            [24] 1839 	push	ar2
      0028A3 C0 07            [24] 1840 	push	ar7
      0028A5 A8 10            [24] 1841 	mov	r0,_bp
      0028A7 08               [12] 1842 	inc	r0
      0028A8 86 82            [24] 1843 	mov	dpl,@r0
      0028AA 08               [12] 1844 	inc	r0
      0028AB 86 83            [24] 1845 	mov	dph,@r0
      0028AD 12 2C 4A         [24] 1846 	lcall	__mulint
      0028B0 AA 82            [24] 1847 	mov	r2,dpl
      0028B2 AF 83            [24] 1848 	mov	r7,dph
      0028B4 15 81            [12] 1849 	dec	sp
      0028B6 15 81            [12] 1850 	dec	sp
      0028B8 D0 01            [24] 1851 	pop	ar1
      0028BA D0 03            [24] 1852 	pop	ar3
      0028BC D0 04            [24] 1853 	pop	ar4
      0028BE D0 05            [24] 1854 	pop	ar5
      0028C0 D0 06            [24] 1855 	pop	ar6
      0028C2 E5 10            [12] 1856 	mov	a,_bp
      0028C4 24 03            [12] 1857 	add	a,#0x03
      0028C6 F8               [12] 1858 	mov	r0,a
      0028C7 86 82            [24] 1859 	mov	dpl,@r0
      0028C9 08               [12] 1860 	inc	r0
      0028CA 86 83            [24] 1861 	mov	dph,@r0
      0028CC EA               [12] 1862 	mov	a,r2
      0028CD F0               [24] 1863 	movx	@dptr,a
      0028CE EF               [12] 1864 	mov	a,r7
      0028CF A3               [24] 1865 	inc	dptr
      0028D0 F0               [24] 1866 	movx	@dptr,a
                                   1867 ;	walk.c:179: neigh[i].c = neigh[REG + i].c * (1 + rand() % 8);
      0028D1 EB               [12] 1868 	mov	a,r3
      0028D2 24 F2            [12] 1869 	add	a,#_neigh
      0028D4 FB               [12] 1870 	mov	r3,a
      0028D5 EC               [12] 1871 	mov	a,r4
      0028D6 34 FE            [12] 1872 	addc	a,#(_neigh >> 8)
      0028D8 FC               [12] 1873 	mov	r4,a
      0028D9 74 02            [12] 1874 	mov	a,#0x02
      0028DB 2B               [12] 1875 	add	a,r3
      0028DC FA               [12] 1876 	mov	r2,a
      0028DD E4               [12] 1877 	clr	a
      0028DE 3C               [12] 1878 	addc	a,r4
      0028DF FF               [12] 1879 	mov	r7,a
      0028E0 EE               [12] 1880 	mov	a,r6
      0028E1 24 F2            [12] 1881 	add	a,#_neigh
      0028E3 FE               [12] 1882 	mov	r6,a
      0028E4 ED               [12] 1883 	mov	a,r5
      0028E5 34 FE            [12] 1884 	addc	a,#(_neigh >> 8)
      0028E7 FD               [12] 1885 	mov	r5,a
      0028E8 8E 82            [24] 1886 	mov	dpl,r6
      0028EA 8D 83            [24] 1887 	mov	dph,r5
      0028EC A3               [24] 1888 	inc	dptr
      0028ED A3               [24] 1889 	inc	dptr
      0028EE E5 10            [12] 1890 	mov	a,_bp
      0028F0 24 03            [12] 1891 	add	a,#0x03
      0028F2 F8               [12] 1892 	mov	r0,a
      0028F3 E0               [24] 1893 	movx	a,@dptr
      0028F4 F6               [12] 1894 	mov	@r0,a
      0028F5 A3               [24] 1895 	inc	dptr
      0028F6 E0               [24] 1896 	movx	a,@dptr
      0028F7 08               [12] 1897 	inc	r0
      0028F8 F6               [12] 1898 	mov	@r0,a
      0028F9 C0 07            [24] 1899 	push	ar7
      0028FB C0 04            [24] 1900 	push	ar4
      0028FD C0 03            [24] 1901 	push	ar3
      0028FF C0 02            [24] 1902 	push	ar2
      002901 C0 01            [24] 1903 	push	ar1
      002903 12 2B 52         [24] 1904 	lcall	_rand
      002906 AD 82            [24] 1905 	mov	r5,dpl
      002908 AE 83            [24] 1906 	mov	r6,dph
      00290A 74 08            [12] 1907 	mov	a,#0x08
      00290C C0 E0            [24] 1908 	push	acc
      00290E E4               [12] 1909 	clr	a
      00290F C0 E0            [24] 1910 	push	acc
      002911 8D 82            [24] 1911 	mov	dpl,r5
      002913 8E 83            [24] 1912 	mov	dph,r6
      002915 12 2E 56         [24] 1913 	lcall	__modsint
      002918 AD 82            [24] 1914 	mov	r5,dpl
      00291A AE 83            [24] 1915 	mov	r6,dph
      00291C 15 81            [12] 1916 	dec	sp
      00291E 15 81            [12] 1917 	dec	sp
      002920 D0 01            [24] 1918 	pop	ar1
      002922 D0 02            [24] 1919 	pop	ar2
      002924 D0 03            [24] 1920 	pop	ar3
      002926 D0 04            [24] 1921 	pop	ar4
      002928 D0 07            [24] 1922 	pop	ar7
      00292A 0D               [12] 1923 	inc	r5
      00292B BD 00 01         [24] 1924 	cjne	r5,#0x00,00189$
      00292E 0E               [12] 1925 	inc	r6
      00292F                       1926 00189$:
      00292F C0 07            [24] 1927 	push	ar7
      002931 C0 04            [24] 1928 	push	ar4
      002933 C0 03            [24] 1929 	push	ar3
      002935 C0 02            [24] 1930 	push	ar2
      002937 C0 01            [24] 1931 	push	ar1
      002939 C0 05            [24] 1932 	push	ar5
      00293B C0 06            [24] 1933 	push	ar6
      00293D E5 10            [12] 1934 	mov	a,_bp
      00293F 24 03            [12] 1935 	add	a,#0x03
      002941 F8               [12] 1936 	mov	r0,a
      002942 86 82            [24] 1937 	mov	dpl,@r0
      002944 08               [12] 1938 	inc	r0
      002945 86 83            [24] 1939 	mov	dph,@r0
      002947 12 2C 4A         [24] 1940 	lcall	__mulint
      00294A AD 82            [24] 1941 	mov	r5,dpl
      00294C AE 83            [24] 1942 	mov	r6,dph
      00294E 15 81            [12] 1943 	dec	sp
      002950 15 81            [12] 1944 	dec	sp
      002952 D0 01            [24] 1945 	pop	ar1
      002954 D0 02            [24] 1946 	pop	ar2
      002956 D0 03            [24] 1947 	pop	ar3
      002958 D0 04            [24] 1948 	pop	ar4
      00295A D0 07            [24] 1949 	pop	ar7
      00295C 8A 82            [24] 1950 	mov	dpl,r2
      00295E 8F 83            [24] 1951 	mov	dph,r7
      002960 ED               [12] 1952 	mov	a,r5
      002961 F0               [24] 1953 	movx	@dptr,a
      002962 EE               [12] 1954 	mov	a,r6
      002963 A3               [24] 1955 	inc	dptr
      002964 F0               [24] 1956 	movx	@dptr,a
                                   1957 ;	walk.c:180: printf("% 8d% 8d", neigh[i].r, neigh[i].c);
      002965 8B 82            [24] 1958 	mov	dpl,r3
      002967 8C 83            [24] 1959 	mov	dph,r4
      002969 E0               [24] 1960 	movx	a,@dptr
      00296A FB               [12] 1961 	mov	r3,a
      00296B A3               [24] 1962 	inc	dptr
      00296C E0               [24] 1963 	movx	a,@dptr
      00296D FC               [12] 1964 	mov	r4,a
      00296E C0 07            [24] 1965 	push	ar7
      002970 C0 01            [24] 1966 	push	ar1
      002972 C0 05            [24] 1967 	push	ar5
      002974 C0 06            [24] 1968 	push	ar6
      002976 C0 03            [24] 1969 	push	ar3
      002978 C0 04            [24] 1970 	push	ar4
      00297A 74 86            [12] 1971 	mov	a,#___str_6
      00297C C0 E0            [24] 1972 	push	acc
      00297E 74 41            [12] 1973 	mov	a,#(___str_6 >> 8)
      002980 C0 E0            [24] 1974 	push	acc
      002982 74 80            [12] 1975 	mov	a,#0x80
      002984 C0 E0            [24] 1976 	push	acc
      002986 12 2E 01         [24] 1977 	lcall	_printf
      002989 E5 81            [12] 1978 	mov	a,sp
      00298B 24 F9            [12] 1979 	add	a,#0xf9
      00298D F5 81            [12] 1980 	mov	sp,a
      00298F D0 01            [24] 1981 	pop	ar1
      002991 D0 07            [24] 1982 	pop	ar7
                                   1983 ;	walk.c:177: for (i = 0; i < REG; i++) {
      002993 E5 10            [12] 1984 	mov	a,_bp
      002995 24 0B            [12] 1985 	add	a,#0x0b
      002997 F8               [12] 1986 	mov	r0,a
      002998 06               [12] 1987 	inc	@r0
      002999 B6 00 02         [24] 1988 	cjne	@r0,#0x00,00190$
      00299C 08               [12] 1989 	inc	r0
      00299D 06               [12] 1990 	inc	@r0
      00299E                       1991 00190$:
      00299E E5 10            [12] 1992 	mov	a,_bp
      0029A0 24 0B            [12] 1993 	add	a,#0x0b
      0029A2 F8               [12] 1994 	mov	r0,a
      0029A3 86 05            [24] 1995 	mov	ar5,@r0
      0029A5 08               [12] 1996 	inc	r0
      0029A6 86 06            [24] 1997 	mov	ar6,@r0
      0029A8 C3               [12] 1998 	clr	c
      0029A9 ED               [12] 1999 	mov	a,r5
      0029AA 94 08            [12] 2000 	subb	a,#0x08
      0029AC EE               [12] 2001 	mov	a,r6
      0029AD 94 00            [12] 2002 	subb	a,#0x00
      0029AF D0 07            [24] 2003 	pop	ar7
      0029B1 50 03            [24] 2004 	jnc	00191$
      0029B3 02 28 03         [24] 2005 	ljmp	00115$
      0029B6                       2006 00191$:
                                   2007 ;	walk.c:183: OE76 = OE76_0;
      0029B6 78 12            [12] 2008 	mov	r0,#_OE76
      0029B8 76 3F            [12] 2009 	mov	@r0,#0x3f
                                   2010 ;	walk.c:184: flashOE(OE76_NC);
      0029BA 75 82 00         [24] 2011 	mov	dpl,#0x00
      0029BD C0 07            [24] 2012 	push	ar7
      0029BF C0 01            [24] 2013 	push	ar1
      0029C1 12 20 8E         [24] 2014 	lcall	_flashOE
      0029C4 D0 01            [24] 2015 	pop	ar1
      0029C6 D0 07            [24] 2016 	pop	ar7
                                   2017 ;	walk.c:186: walk(&initial);
      0029C8 8F 04            [24] 2018 	mov	ar4,r7
      0029CA 7D 00            [12] 2019 	mov	r5,#0x00
      0029CC 7E 40            [12] 2020 	mov	r6,#0x40
      0029CE 8C 82            [24] 2021 	mov	dpl,r4
      0029D0 8D 83            [24] 2022 	mov	dph,r5
      0029D2 8E F0            [24] 2023 	mov	b,r6
      0029D4 C0 07            [24] 2024 	push	ar7
      0029D6 C0 01            [24] 2025 	push	ar1
      0029D8 12 23 3C         [24] 2026 	lcall	_walk
      0029DB D0 01            [24] 2027 	pop	ar1
      0029DD D0 07            [24] 2028 	pop	ar7
                                   2029 ;	walk.c:188: for (i = 0; i < ROWS; i++)
      0029DF E5 10            [12] 2030 	mov	a,_bp
      0029E1 24 0B            [12] 2031 	add	a,#0x0b
      0029E3 F8               [12] 2032 	mov	r0,a
      0029E4 E4               [12] 2033 	clr	a
      0029E5 F6               [12] 2034 	mov	@r0,a
      0029E6 08               [12] 2035 	inc	r0
      0029E7 F6               [12] 2036 	mov	@r0,a
      0029E8 7B 00            [12] 2037 	mov	r3,#0x00
      0029EA 7C 00            [12] 2038 	mov	r4,#0x00
                                   2039 ;	walk.c:189: for (j = 0; j < COLS; j++)
      0029EC                       2040 00131$:
      0029EC E5 10            [12] 2041 	mov	a,_bp
      0029EE 24 03            [12] 2042 	add	a,#0x03
      0029F0 F8               [12] 2043 	mov	r0,a
      0029F1 EB               [12] 2044 	mov	a,r3
      0029F2 24 80            [12] 2045 	add	a,#_g
      0029F4 F6               [12] 2046 	mov	@r0,a
      0029F5 EC               [12] 2047 	mov	a,r4
      0029F6 34 42            [12] 2048 	addc	a,#(_g >> 8)
      0029F8 08               [12] 2049 	inc	r0
      0029F9 F6               [12] 2050 	mov	@r0,a
      0029FA 7A 00            [12] 2051 	mov	r2,#0x00
      0029FC 7E 00            [12] 2052 	mov	r6,#0x00
      0029FE                       2053 00117$:
                                   2054 ;	walk.c:190: if (g[i][j] != 0xaau) bang();
      0029FE E5 10            [12] 2055 	mov	a,_bp
      002A00 24 03            [12] 2056 	add	a,#0x03
      002A02 F8               [12] 2057 	mov	r0,a
      002A03 EA               [12] 2058 	mov	a,r2
      002A04 26               [12] 2059 	add	a,@r0
      002A05 F5 82            [12] 2060 	mov	dpl,a
      002A07 EE               [12] 2061 	mov	a,r6
      002A08 08               [12] 2062 	inc	r0
      002A09 36               [12] 2063 	addc	a,@r0
      002A0A F5 83            [12] 2064 	mov	dph,a
      002A0C E0               [24] 2065 	movx	a,@dptr
      002A0D FD               [12] 2066 	mov	r5,a
      002A0E BD AA 02         [24] 2067 	cjne	r5,#0xaa,00192$
      002A11 80 1B            [24] 2068 	sjmp	00118$
      002A13                       2069 00192$:
      002A13 C0 07            [24] 2070 	push	ar7
      002A15 C0 06            [24] 2071 	push	ar6
      002A17 C0 04            [24] 2072 	push	ar4
      002A19 C0 03            [24] 2073 	push	ar3
      002A1B C0 02            [24] 2074 	push	ar2
      002A1D C0 01            [24] 2075 	push	ar1
      002A1F 12 20 82         [24] 2076 	lcall	_bang
      002A22 D0 01            [24] 2077 	pop	ar1
      002A24 D0 02            [24] 2078 	pop	ar2
      002A26 D0 03            [24] 2079 	pop	ar3
      002A28 D0 04            [24] 2080 	pop	ar4
      002A2A D0 06            [24] 2081 	pop	ar6
      002A2C D0 07            [24] 2082 	pop	ar7
      002A2E                       2083 00118$:
                                   2084 ;	walk.c:189: for (j = 0; j < COLS; j++)
      002A2E 0A               [12] 2085 	inc	r2
      002A2F BA 00 01         [24] 2086 	cjne	r2,#0x00,00193$
      002A32 0E               [12] 2087 	inc	r6
      002A33                       2088 00193$:
      002A33 C3               [12] 2089 	clr	c
      002A34 EA               [12] 2090 	mov	a,r2
      002A35 94 C9            [12] 2091 	subb	a,#0xc9
      002A37 EE               [12] 2092 	mov	a,r6
      002A38 64 80            [12] 2093 	xrl	a,#0x80
      002A3A 94 80            [12] 2094 	subb	a,#0x80
      002A3C 40 C0            [24] 2095 	jc	00117$
                                   2096 ;	walk.c:188: for (i = 0; i < ROWS; i++)
      002A3E 74 C9            [12] 2097 	mov	a,#0xc9
      002A40 2B               [12] 2098 	add	a,r3
      002A41 FB               [12] 2099 	mov	r3,a
      002A42 E4               [12] 2100 	clr	a
      002A43 3C               [12] 2101 	addc	a,r4
      002A44 FC               [12] 2102 	mov	r4,a
      002A45 E5 10            [12] 2103 	mov	a,_bp
      002A47 24 0B            [12] 2104 	add	a,#0x0b
      002A49 F8               [12] 2105 	mov	r0,a
      002A4A 06               [12] 2106 	inc	@r0
      002A4B B6 00 02         [24] 2107 	cjne	@r0,#0x00,00195$
      002A4E 08               [12] 2108 	inc	r0
      002A4F 06               [12] 2109 	inc	@r0
      002A50                       2110 00195$:
      002A50 E5 10            [12] 2111 	mov	a,_bp
      002A52 24 0B            [12] 2112 	add	a,#0x0b
      002A54 F8               [12] 2113 	mov	r0,a
      002A55 C3               [12] 2114 	clr	c
      002A56 E6               [12] 2115 	mov	a,@r0
      002A57 94 30            [12] 2116 	subb	a,#0x30
      002A59 08               [12] 2117 	inc	r0
      002A5A E6               [12] 2118 	mov	a,@r0
      002A5B 64 80            [12] 2119 	xrl	a,#0x80
      002A5D 94 80            [12] 2120 	subb	a,#0x80
      002A5F 40 8B            [24] 2121 	jc	00131$
                                   2122 ;	walk.c:192: N++;
      002A61 E5 10            [12] 2123 	mov	a,_bp
      002A63 24 09            [12] 2124 	add	a,#0x09
      002A65 F8               [12] 2125 	mov	r0,a
      002A66 06               [12] 2126 	inc	@r0
      002A67 B6 00 02         [24] 2127 	cjne	@r0,#0x00,00197$
      002A6A 08               [12] 2128 	inc	r0
      002A6B 06               [12] 2129 	inc	@r0
      002A6C                       2130 00197$:
      002A6C 02 26 E8         [24] 2131 	ljmp	00108$
      002A6F                       2132 00110$:
                                   2133 ;	walk.c:195: EA = 0;
                                   2134 ;	assignBit
      002A6F C2 AF            [12] 2135 	clr	_EA
                                   2136 ;	walk.c:197: puts("\033[2J\033[?25h");
      002A71 90 41 8F         [24] 2137 	mov	dptr,#___str_7
      002A74 75 F0 80         [24] 2138 	mov	b,#0x80
      002A77 12 2D 7B         [24] 2139 	lcall	_puts
                                   2140 ;	walk.c:201: __endasm;
      002A7A 02 00 00         [24] 2141 	ljmp	0
                                   2142 ;	walk.c:203: return 0;
      002A7D 90 00 00         [24] 2143 	mov	dptr,#0x0000
                                   2144 ;	walk.c:204: }
      002A80 85 10 81         [24] 2145 	mov	sp,_bp
      002A83 D0 10            [24] 2146 	pop	_bp
      002A85 22               [24] 2147 	ret
                                   2148 ;------------------------------------------------------------
                                   2149 ;Allocation info for local variables in function 'stinit'
                                   2150 ;------------------------------------------------------------
                                   2151 ;	walk.c:206: static void stinit(void) {
                                   2152 ;	-----------------------------------------
                                   2153 ;	 function stinit
                                   2154 ;	-----------------------------------------
      002A86                       2155 _stinit:
                                   2156 ;	walk.c:207: sp = -1;
      002A86 90 FE F0         [24] 2157 	mov	dptr,#_sp
      002A89 74 FF            [12] 2158 	mov	a,#0xff
      002A8B F0               [24] 2159 	movx	@dptr,a
      002A8C A3               [24] 2160 	inc	dptr
      002A8D F0               [24] 2161 	movx	@dptr,a
                                   2162 ;	walk.c:208: return;
                                   2163 ;	walk.c:209: }
      002A8E 22               [24] 2164 	ret
                                   2165 ;------------------------------------------------------------
                                   2166 ;Allocation info for local variables in function 'stpush'
                                   2167 ;------------------------------------------------------------
                                   2168 ;t                         Allocated to registers r5 r6 r7 
                                   2169 ;------------------------------------------------------------
                                   2170 ;	walk.c:211: static uint8_t stpush(struct node *t) {
                                   2171 ;	-----------------------------------------
                                   2172 ;	 function stpush
                                   2173 ;	-----------------------------------------
      002A8F                       2174 _stpush:
      002A8F AD 82            [24] 2175 	mov	r5,dpl
      002A91 AE 83            [24] 2176 	mov	r6,dph
      002A93 AF F0            [24] 2177 	mov	r7,b
                                   2178 ;	walk.c:212: if (sp == (SMAX - 1)) return 0u;
      002A95 90 FE F0         [24] 2179 	mov	dptr,#_sp
      002A98 E0               [24] 2180 	movx	a,@dptr
      002A99 FB               [12] 2181 	mov	r3,a
      002A9A A3               [24] 2182 	inc	dptr
      002A9B E0               [24] 2183 	movx	a,@dptr
      002A9C FC               [12] 2184 	mov	r4,a
      002A9D BB AF 07         [24] 2185 	cjne	r3,#0xaf,00102$
      002AA0 BC 25 04         [24] 2186 	cjne	r4,#0x25,00102$
      002AA3 75 82 00         [24] 2187 	mov	dpl,#0x00
      002AA6 22               [24] 2188 	ret
      002AA7                       2189 00102$:
                                   2190 ;	walk.c:213: sp++;
      002AA7 90 FE F0         [24] 2191 	mov	dptr,#_sp
      002AAA 74 01            [12] 2192 	mov	a,#0x01
      002AAC 2B               [12] 2193 	add	a,r3
      002AAD F0               [24] 2194 	movx	@dptr,a
      002AAE E4               [12] 2195 	clr	a
      002AAF 3C               [12] 2196 	addc	a,r4
      002AB0 A3               [24] 2197 	inc	dptr
      002AB1 F0               [24] 2198 	movx	@dptr,a
                                   2199 ;	walk.c:214: stack[sp] = *t;
      002AB2 90 FE F0         [24] 2200 	mov	dptr,#_sp
      002AB5 E0               [24] 2201 	movx	a,@dptr
      002AB6 FB               [12] 2202 	mov	r3,a
      002AB7 A3               [24] 2203 	inc	dptr
      002AB8 E0               [24] 2204 	movx	a,@dptr
      002AB9 FC               [12] 2205 	mov	r4,a
      002ABA EB               [12] 2206 	mov	a,r3
      002ABB 2B               [12] 2207 	add	a,r3
      002ABC FB               [12] 2208 	mov	r3,a
      002ABD EC               [12] 2209 	mov	a,r4
      002ABE 33               [12] 2210 	rlc	a
      002ABF FC               [12] 2211 	mov	r4,a
      002AC0 EB               [12] 2212 	mov	a,r3
      002AC1 2B               [12] 2213 	add	a,r3
      002AC2 FB               [12] 2214 	mov	r3,a
      002AC3 EC               [12] 2215 	mov	a,r4
      002AC4 33               [12] 2216 	rlc	a
      002AC5 FC               [12] 2217 	mov	r4,a
      002AC6 EB               [12] 2218 	mov	a,r3
      002AC7 24 30            [12] 2219 	add	a,#_stack
      002AC9 FB               [12] 2220 	mov	r3,a
      002ACA EC               [12] 2221 	mov	a,r4
      002ACB 34 68            [12] 2222 	addc	a,#(_stack >> 8)
      002ACD FC               [12] 2223 	mov	r4,a
      002ACE 7A 00            [12] 2224 	mov	r2,#0x00
      002AD0 74 04            [12] 2225 	mov	a,#0x04
      002AD2 C0 E0            [24] 2226 	push	acc
      002AD4 E4               [12] 2227 	clr	a
      002AD5 C0 E0            [24] 2228 	push	acc
      002AD7 C0 05            [24] 2229 	push	ar5
      002AD9 C0 06            [24] 2230 	push	ar6
      002ADB C0 07            [24] 2231 	push	ar7
      002ADD 8B 82            [24] 2232 	mov	dpl,r3
      002ADF 8C 83            [24] 2233 	mov	dph,r4
      002AE1 8A F0            [24] 2234 	mov	b,r2
      002AE3 12 2C E8         [24] 2235 	lcall	___memcpy
      002AE6 E5 81            [12] 2236 	mov	a,sp
      002AE8 24 FB            [12] 2237 	add	a,#0xfb
      002AEA F5 81            [12] 2238 	mov	sp,a
                                   2239 ;	walk.c:215: return 1u;
      002AEC 75 82 01         [24] 2240 	mov	dpl,#0x01
                                   2241 ;	walk.c:216: }
      002AEF 22               [24] 2242 	ret
                                   2243 ;------------------------------------------------------------
                                   2244 ;Allocation info for local variables in function 'stpop'
                                   2245 ;------------------------------------------------------------
                                   2246 ;t                         Allocated to registers r5 r6 r7 
                                   2247 ;------------------------------------------------------------
                                   2248 ;	walk.c:218: static uint8_t stpop(struct node *t) {
                                   2249 ;	-----------------------------------------
                                   2250 ;	 function stpop
                                   2251 ;	-----------------------------------------
      002AF0                       2252 _stpop:
      002AF0 AD 82            [24] 2253 	mov	r5,dpl
      002AF2 AE 83            [24] 2254 	mov	r6,dph
      002AF4 AF F0            [24] 2255 	mov	r7,b
                                   2256 ;	walk.c:219: if (sp == -1) return 0u;
      002AF6 90 FE F0         [24] 2257 	mov	dptr,#_sp
      002AF9 E0               [24] 2258 	movx	a,@dptr
      002AFA FB               [12] 2259 	mov	r3,a
      002AFB A3               [24] 2260 	inc	dptr
      002AFC E0               [24] 2261 	movx	a,@dptr
      002AFD FC               [12] 2262 	mov	r4,a
      002AFE BB FF 07         [24] 2263 	cjne	r3,#0xff,00102$
      002B01 BC FF 04         [24] 2264 	cjne	r4,#0xff,00102$
      002B04 75 82 00         [24] 2265 	mov	dpl,#0x00
      002B07 22               [24] 2266 	ret
      002B08                       2267 00102$:
                                   2268 ;	walk.c:220: *t = stack[sp];
      002B08 EB               [12] 2269 	mov	a,r3
      002B09 2B               [12] 2270 	add	a,r3
      002B0A FB               [12] 2271 	mov	r3,a
      002B0B EC               [12] 2272 	mov	a,r4
      002B0C 33               [12] 2273 	rlc	a
      002B0D FC               [12] 2274 	mov	r4,a
      002B0E EB               [12] 2275 	mov	a,r3
      002B0F 2B               [12] 2276 	add	a,r3
      002B10 FB               [12] 2277 	mov	r3,a
      002B11 EC               [12] 2278 	mov	a,r4
      002B12 33               [12] 2279 	rlc	a
      002B13 FC               [12] 2280 	mov	r4,a
      002B14 EB               [12] 2281 	mov	a,r3
      002B15 24 30            [12] 2282 	add	a,#_stack
      002B17 FB               [12] 2283 	mov	r3,a
      002B18 EC               [12] 2284 	mov	a,r4
      002B19 34 68            [12] 2285 	addc	a,#(_stack >> 8)
      002B1B FC               [12] 2286 	mov	r4,a
      002B1C 7A 00            [12] 2287 	mov	r2,#0x00
      002B1E 74 04            [12] 2288 	mov	a,#0x04
      002B20 C0 E0            [24] 2289 	push	acc
      002B22 E4               [12] 2290 	clr	a
      002B23 C0 E0            [24] 2291 	push	acc
      002B25 C0 03            [24] 2292 	push	ar3
      002B27 C0 04            [24] 2293 	push	ar4
      002B29 C0 02            [24] 2294 	push	ar2
      002B2B 8D 82            [24] 2295 	mov	dpl,r5
      002B2D 8E 83            [24] 2296 	mov	dph,r6
      002B2F 8F F0            [24] 2297 	mov	b,r7
      002B31 12 2C E8         [24] 2298 	lcall	___memcpy
      002B34 E5 81            [12] 2299 	mov	a,sp
      002B36 24 FB            [12] 2300 	add	a,#0xfb
      002B38 F5 81            [12] 2301 	mov	sp,a
                                   2302 ;	walk.c:221: sp--;
      002B3A 90 FE F0         [24] 2303 	mov	dptr,#_sp
      002B3D E0               [24] 2304 	movx	a,@dptr
      002B3E 24 FF            [12] 2305 	add	a,#0xff
      002B40 FE               [12] 2306 	mov	r6,a
      002B41 A3               [24] 2307 	inc	dptr
      002B42 E0               [24] 2308 	movx	a,@dptr
      002B43 34 FF            [12] 2309 	addc	a,#0xff
      002B45 FF               [12] 2310 	mov	r7,a
      002B46 90 FE F0         [24] 2311 	mov	dptr,#_sp
      002B49 EE               [12] 2312 	mov	a,r6
      002B4A F0               [24] 2313 	movx	@dptr,a
      002B4B EF               [12] 2314 	mov	a,r7
      002B4C A3               [24] 2315 	inc	dptr
      002B4D F0               [24] 2316 	movx	@dptr,a
                                   2317 ;	walk.c:222: return 1u;
      002B4E 75 82 01         [24] 2318 	mov	dpl,#0x01
                                   2319 ;	walk.c:223: }
      002B51 22               [24] 2320 	ret
                                   2321 	.area CSEG    (CODE)
                                   2322 	.area CONST   (CODE)
                                   2323 	.area CONST   (CODE)
      004134                       2324 ___str_0:
      004134 4D 65 6D 6F 72 79 20  2325 	.ascii "Memory error"
             65 72 72 6F 72
      004140 00                    2326 	.db 0x00
                                   2327 	.area CSEG    (CODE)
                                   2328 	.area CONST   (CODE)
      004141                       2329 ___str_1:
      004141 1B                    2330 	.db 0x1b
      004142 5B 25 64 3B 25 64 48  2331 	.ascii "[%d;%dHo"
             6F
      00414A 00                    2332 	.db 0x00
                                   2333 	.area CSEG    (CODE)
                                   2334 	.area CONST   (CODE)
      00414B                       2335 ___str_2:
      00414B 1B                    2336 	.db 0x1b
      00414C 5B 32 3B 31 48 25 20  2337 	.ascii "[2;1H% 8d% 8d% 8d"
             38 64 25 20 38 64 25
             20 38 64
      00415D 00                    2338 	.db 0x00
                                   2339 	.area CSEG    (CODE)
                                   2340 	.area CONST   (CODE)
      00415E                       2341 ___str_3:
      00415E 1B                    2342 	.db 0x1b
      00415F 5B 25 64 3B 25 64 48  2343 	.ascii "[%d;%dH."
             2E
      004167 00                    2344 	.db 0x00
                                   2345 	.area CSEG    (CODE)
                                   2346 	.area CONST   (CODE)
      004168                       2347 ___str_4:
      004168 1B                    2348 	.db 0x1b
      004169 5B 32 4A              2349 	.ascii "[2J"
      00416C 1B                    2350 	.db 0x1b
      00416D 5B 3F 32 35 6C        2351 	.ascii "[?25l"
      004172 00                    2352 	.db 0x00
                                   2353 	.area CSEG    (CODE)
                                   2354 	.area CONST   (CODE)
      004173                       2355 ___str_5:
      004173 1B                    2356 	.db 0x1b
      004174 5B 31 3B 31 48 25 20  2357 	.ascii "[1;1H% 8u% 8d% 8d"
             38 75 25 20 38 64 25
             20 38 64
      004185 00                    2358 	.db 0x00
                                   2359 	.area CSEG    (CODE)
                                   2360 	.area CONST   (CODE)
      004186                       2361 ___str_6:
      004186 25 20 38 64 25 20 38  2362 	.ascii "% 8d% 8d"
             64
      00418E 00                    2363 	.db 0x00
                                   2364 	.area CSEG    (CODE)
                                   2365 	.area CONST   (CODE)
      00418F                       2366 ___str_7:
      00418F 1B                    2367 	.db 0x1b
      004190 5B 32 4A              2368 	.ascii "[2J"
      004193 1B                    2369 	.db 0x1b
      004194 5B 3F 32 35 68        2370 	.ascii "[?25h"
      004199 00                    2371 	.db 0x00
                                   2372 	.area CSEG    (CODE)
                                   2373 	.area XINIT   (CODE)
      0041A5                       2374 __xinit__neigh:
      0041A5 FF FF                 2375 	.byte #0xff, #0xff	; -1
      0041A7 01 00                 2376 	.byte #0x01, #0x00	;  1
      0041A9 FF FF                 2377 	.byte #0xff, #0xff	; -1
      0041AB FF FF                 2378 	.byte #0xff, #0xff	; -1
      0041AD 01 00                 2379 	.byte #0x01, #0x00	;  1
      0041AF FF FF                 2380 	.byte #0xff, #0xff	; -1
      0041B1 01 00                 2381 	.byte #0x01, #0x00	;  1
      0041B3 01 00                 2382 	.byte #0x01, #0x00	;  1
      0041B5 FF FF                 2383 	.byte #0xff, #0xff	; -1
      0041B7 00 00                 2384 	.byte #0x00, #0x00	;  0
      0041B9 00 00                 2385 	.byte #0x00, #0x00	;  0
      0041BB FF FF                 2386 	.byte #0xff, #0xff	; -1
      0041BD 01 00                 2387 	.byte #0x01, #0x00	;  1
      0041BF 00 00                 2388 	.byte #0x00, #0x00	;  0
      0041C1 00 00                 2389 	.byte #0x00, #0x00	;  0
      0041C3 01 00                 2390 	.byte #0x01, #0x00	;  1
      0041C5 FF FF                 2391 	.byte #0xff, #0xff	; -1
      0041C7 01 00                 2392 	.byte #0x01, #0x00	;  1
      0041C9 FF FF                 2393 	.byte #0xff, #0xff	; -1
      0041CB FF FF                 2394 	.byte #0xff, #0xff	; -1
      0041CD 01 00                 2395 	.byte #0x01, #0x00	;  1
      0041CF FF FF                 2396 	.byte #0xff, #0xff	; -1
      0041D1 01 00                 2397 	.byte #0x01, #0x00	;  1
      0041D3 01 00                 2398 	.byte #0x01, #0x00	;  1
      0041D5 FF FF                 2399 	.byte #0xff, #0xff	; -1
      0041D7 00 00                 2400 	.byte #0x00, #0x00	;  0
      0041D9 00 00                 2401 	.byte #0x00, #0x00	;  0
      0041DB FF FF                 2402 	.byte #0xff, #0xff	; -1
      0041DD 01 00                 2403 	.byte #0x01, #0x00	;  1
      0041DF 00 00                 2404 	.byte #0x00, #0x00	;  0
      0041E1 00 00                 2405 	.byte #0x00, #0x00	;  0
      0041E3 01 00                 2406 	.byte #0x01, #0x00	;  1
                                   2407 	.area CABS    (ABS,CODE)
