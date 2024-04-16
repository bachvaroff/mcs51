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
                           008000   321 _RND	=	0x8000
      004300                        322 _g:
      004300                        323 	.ds 9648
      0068B0                        324 _stack:
      0068B0                        325 	.ds 38592
      00FF70                        326 _sp:
      00FF70                        327 	.ds 2
                           00F006   328 _OEreg	=	0xf006
                                    329 ;--------------------------------------------------------
                                    330 ; absolute external ram data
                                    331 ;--------------------------------------------------------
                                    332 	.area XABS    (ABS,XDATA)
                                    333 ;--------------------------------------------------------
                                    334 ; external initialized ram data
                                    335 ;--------------------------------------------------------
                                    336 	.area XISEG   (XDATA)
      00FF72                        337 _neigh:
      00FF72                        338 	.ds 64
                                    339 	.area HOME    (CODE)
                                    340 	.area GSINIT0 (CODE)
                                    341 	.area GSINIT1 (CODE)
                                    342 	.area GSINIT2 (CODE)
                                    343 	.area GSINIT3 (CODE)
                                    344 	.area GSINIT4 (CODE)
                                    345 	.area GSINIT5 (CODE)
                                    346 	.area GSINIT  (CODE)
                                    347 	.area GSFINAL (CODE)
                                    348 	.area CSEG    (CODE)
                                    349 ;--------------------------------------------------------
                                    350 ; interrupt vector 
                                    351 ;--------------------------------------------------------
                                    352 	.area HOME    (CODE)
      002000                        353 __interrupt_vect:
      002000 02 20 09         [24]  354 	ljmp	__sdcc_gsinit_startup
      002003 02 20 7B         [24]  355 	ljmp	_int0
                                    356 ;--------------------------------------------------------
                                    357 ; global & static initialisations
                                    358 ;--------------------------------------------------------
                                    359 	.area HOME    (CODE)
                                    360 	.area GSINIT  (CODE)
                                    361 	.area GSFINAL (CODE)
                                    362 	.area GSINIT  (CODE)
                                    363 	.globl __sdcc_gsinit_startup
                                    364 	.globl __sdcc_program_startup
                                    365 	.globl __start__stack
                                    366 	.globl __mcs51_genXINIT
                                    367 	.globl __mcs51_genXRAMCLEAR
                                    368 	.globl __mcs51_genRAMCLEAR
                                    369 	.area GSFINAL (CODE)
      002062 02 20 06         [24]  370 	ljmp	__sdcc_program_startup
                                    371 ;--------------------------------------------------------
                                    372 ; Home
                                    373 ;--------------------------------------------------------
                                    374 	.area HOME    (CODE)
                                    375 	.area HOME    (CODE)
      002006                        376 __sdcc_program_startup:
      002006 02 26 E5         [24]  377 	ljmp	_main
                                    378 ;	return from main will return to caller
                                    379 ;--------------------------------------------------------
                                    380 ; code
                                    381 ;--------------------------------------------------------
                                    382 	.area CSEG    (CODE)
                                    383 ;------------------------------------------------------------
                                    384 ;Allocation info for local variables in function 'putchar'
                                    385 ;------------------------------------------------------------
                                    386 ;c                         Allocated to registers 
                                    387 ;------------------------------------------------------------
                                    388 ;	walk.c:7: int putchar(int c) __naked {
                                    389 ;	-----------------------------------------
                                    390 ;	 function putchar
                                    391 ;	-----------------------------------------
      002065                        392 _putchar:
                                    393 ;	naked function: no prologue.
                                    394 ;	walk.c:14: __endasm;
      002065 C0 E0            [24]  395 	push	acc
      002067 E5 82            [12]  396 	mov	a, dpl
      002069 12 00 3C         [24]  397 	lcall	0x003c
      00206C D0 E0            [24]  398 	pop	acc
                                    399 ;	walk.c:15: }
                                    400 ;	naked function: no epilogue.
                                    401 ;------------------------------------------------------------
                                    402 ;Allocation info for local variables in function 'getchar'
                                    403 ;------------------------------------------------------------
                                    404 ;	walk.c:17: int getchar(void) __naked {
                                    405 ;	-----------------------------------------
                                    406 ;	 function getchar
                                    407 ;	-----------------------------------------
      00206E                        408 _getchar:
                                    409 ;	naked function: no prologue.
                                    410 ;	walk.c:25: __endasm;
      00206E C0 E0            [24]  411 	push	acc
      002070 12 00 36         [24]  412 	lcall	0x0036
      002073 F5 82            [12]  413 	mov	dpl, a
      002075 75 83 00         [24]  414 	mov	dph, #0
      002078 D0 E0            [24]  415 	pop	acc
      00207A 22               [24]  416 	ret
                                    417 ;	walk.c:26: }
                                    418 ;	naked function: no epilogue.
                                    419 ;------------------------------------------------------------
                                    420 ;Allocation info for local variables in function 'int0'
                                    421 ;------------------------------------------------------------
                                    422 ;	walk.c:32: void int0(void) __interrupt IE0_VECTOR __using 1 {
                                    423 ;	-----------------------------------------
                                    424 ;	 function int0
                                    425 ;	-----------------------------------------
      00207B                        426 _int0:
                           00000F   427 	ar7 = 0x0f
                           00000E   428 	ar6 = 0x0e
                           00000D   429 	ar5 = 0x0d
                           00000C   430 	ar4 = 0x0c
                           00000B   431 	ar3 = 0x0b
                           00000A   432 	ar2 = 0x0a
                           000009   433 	ar1 = 0x09
                           000008   434 	ar0 = 0x08
      00207B C0 D0            [24]  435 	push	psw
      00207D 75 D0 08         [24]  436 	mov	psw,#0x08
                                    437 ;	walk.c:33: i0 = 0u;
      002080 78 11            [12]  438 	mov	r0,#_i0
      002082 76 00            [12]  439 	mov	@r0,#0x00
                                    440 ;	walk.c:34: }
      002084 D0 D0            [24]  441 	pop	psw
      002086 32               [24]  442 	reti
                                    443 ;	eliminated unneeded push/pop dpl
                                    444 ;	eliminated unneeded push/pop dph
                                    445 ;	eliminated unneeded push/pop b
                                    446 ;	eliminated unneeded push/pop acc
                                    447 ;------------------------------------------------------------
                                    448 ;Allocation info for local variables in function 'bang'
                                    449 ;------------------------------------------------------------
                                    450 ;	walk.c:40: static void bang(void) {
                                    451 ;	-----------------------------------------
                                    452 ;	 function bang
                                    453 ;	-----------------------------------------
      002087                        454 _bang:
                           000007   455 	ar7 = 0x07
                           000006   456 	ar6 = 0x06
                           000005   457 	ar5 = 0x05
                           000004   458 	ar4 = 0x04
                           000003   459 	ar3 = 0x03
                           000002   460 	ar2 = 0x02
                           000001   461 	ar1 = 0x01
                           000000   462 	ar0 = 0x00
                                    463 ;	walk.c:41: (void)puts("Memory error");
      002087 90 41 6E         [24]  464 	mov	dptr,#___str_0
      00208A 75 F0 80         [24]  465 	mov	b,#0x80
      00208D 12 2D B5         [24]  466 	lcall	_puts
                                    467 ;	walk.c:37: PCON |= 2;
      002090 43 87 02         [24]  468 	orl	_PCON,#0x02
                                    469 ;	walk.c:44: return;
                                    470 ;	walk.c:45: }
      002093 22               [24]  471 	ret
                                    472 ;------------------------------------------------------------
                                    473 ;Allocation info for local variables in function 'setOE'
                                    474 ;------------------------------------------------------------
                                    475 ;mask                      Allocated to registers r7 
                                    476 ;------------------------------------------------------------
                                    477 ;	walk.c:87: static void setOE(uint8_t mask) {
                                    478 ;	-----------------------------------------
                                    479 ;	 function setOE
                                    480 ;	-----------------------------------------
      002094                        481 _setOE:
      002094 AF 82            [24]  482 	mov	r7,dpl
                                    483 ;	walk.c:88: OE76 |= mask;
      002096 78 12            [12]  484 	mov	r0,#_OE76
      002098 EF               [12]  485 	mov	a,r7
      002099 46               [12]  486 	orl	a,@r0
      00209A F6               [12]  487 	mov	@r0,a
                                    488 ;	walk.c:89: P1_7 = 0;
                                    489 ;	assignBit
      00209B C2 97            [12]  490 	clr	_P1_7
                                    491 ;	walk.c:94: __endasm;
      00209D 00               [12]  492 	nop
      00209E 00               [12]  493 	nop
      00209F 00               [12]  494 	nop
                                    495 ;	walk.c:95: OEreg = OE76;
      0020A0 78 12            [12]  496 	mov	r0,#_OE76
      0020A2 90 F0 06         [24]  497 	mov	dptr,#_OEreg
      0020A5 E6               [12]  498 	mov	a,@r0
      0020A6 F0               [24]  499 	movx	@dptr,a
                                    500 ;	walk.c:96: P1_7 = 1;
                                    501 ;	assignBit
      0020A7 D2 97            [12]  502 	setb	_P1_7
                                    503 ;	walk.c:101: __endasm;
      0020A9 00               [12]  504 	nop
      0020AA 00               [12]  505 	nop
      0020AB 00               [12]  506 	nop
                                    507 ;	walk.c:103: return;
                                    508 ;	walk.c:104: }
      0020AC 22               [24]  509 	ret
                                    510 ;------------------------------------------------------------
                                    511 ;Allocation info for local variables in function 'unsetOE'
                                    512 ;------------------------------------------------------------
                                    513 ;mask                      Allocated to registers r7 
                                    514 ;------------------------------------------------------------
                                    515 ;	walk.c:106: static void unsetOE(uint8_t mask) {
                                    516 ;	-----------------------------------------
                                    517 ;	 function unsetOE
                                    518 ;	-----------------------------------------
      0020AD                        519 _unsetOE:
                                    520 ;	walk.c:107: OE76 &= ~mask;
      0020AD E5 82            [12]  521 	mov	a,dpl
      0020AF F4               [12]  522 	cpl	a
      0020B0 FF               [12]  523 	mov	r7,a
      0020B1 78 12            [12]  524 	mov	r0,#_OE76
      0020B3 56               [12]  525 	anl	a,@r0
      0020B4 F6               [12]  526 	mov	@r0,a
                                    527 ;	walk.c:108: P1_7 = 0;
                                    528 ;	assignBit
      0020B5 C2 97            [12]  529 	clr	_P1_7
                                    530 ;	walk.c:113: __endasm;
      0020B7 00               [12]  531 	nop
      0020B8 00               [12]  532 	nop
      0020B9 00               [12]  533 	nop
                                    534 ;	walk.c:114: OEreg = OE76;
      0020BA 78 12            [12]  535 	mov	r0,#_OE76
      0020BC 90 F0 06         [24]  536 	mov	dptr,#_OEreg
      0020BF E6               [12]  537 	mov	a,@r0
      0020C0 F0               [24]  538 	movx	@dptr,a
                                    539 ;	walk.c:115: P1_7 = 1;
                                    540 ;	assignBit
      0020C1 D2 97            [12]  541 	setb	_P1_7
                                    542 ;	walk.c:120: __endasm;
      0020C3 00               [12]  543 	nop
      0020C4 00               [12]  544 	nop
      0020C5 00               [12]  545 	nop
                                    546 ;	walk.c:122: return;
                                    547 ;	walk.c:123: }
      0020C6 22               [24]  548 	ret
                                    549 ;------------------------------------------------------------
                                    550 ;Allocation info for local variables in function 'flipOE'
                                    551 ;------------------------------------------------------------
                                    552 ;mask                      Allocated to registers r7 
                                    553 ;------------------------------------------------------------
                                    554 ;	walk.c:125: static void flipOE(uint8_t mask) {
                                    555 ;	-----------------------------------------
                                    556 ;	 function flipOE
                                    557 ;	-----------------------------------------
      0020C7                        558 _flipOE:
      0020C7 AF 82            [24]  559 	mov	r7,dpl
                                    560 ;	walk.c:126: OE76 ^= mask;
      0020C9 78 12            [12]  561 	mov	r0,#_OE76
      0020CB EF               [12]  562 	mov	a,r7
      0020CC 66               [12]  563 	xrl	a,@r0
      0020CD F6               [12]  564 	mov	@r0,a
                                    565 ;	walk.c:127: P1_7 = 0;
                                    566 ;	assignBit
      0020CE C2 97            [12]  567 	clr	_P1_7
                                    568 ;	walk.c:132: __endasm;
      0020D0 00               [12]  569 	nop
      0020D1 00               [12]  570 	nop
      0020D2 00               [12]  571 	nop
                                    572 ;	walk.c:133: OEreg = OE76;
      0020D3 78 12            [12]  573 	mov	r0,#_OE76
      0020D5 90 F0 06         [24]  574 	mov	dptr,#_OEreg
      0020D8 E6               [12]  575 	mov	a,@r0
      0020D9 F0               [24]  576 	movx	@dptr,a
                                    577 ;	walk.c:134: P1_7 = 1;
                                    578 ;	assignBit
      0020DA D2 97            [12]  579 	setb	_P1_7
                                    580 ;	walk.c:139: __endasm;
      0020DC 00               [12]  581 	nop
      0020DD 00               [12]  582 	nop
      0020DE 00               [12]  583 	nop
                                    584 ;	walk.c:141: return;
                                    585 ;	walk.c:142: }
      0020DF 22               [24]  586 	ret
                                    587 ;------------------------------------------------------------
                                    588 ;Allocation info for local variables in function 'update'
                                    589 ;------------------------------------------------------------
                                    590 ;cur                       Allocated to stack - _bp -5
                                    591 ;j                         Allocated to stack - _bp -6
                                    592 ;t                         Allocated to stack - _bp +1
                                    593 ;sloc0                     Allocated to stack - _bp +4
                                    594 ;sloc1                     Allocated to stack - _bp +6
                                    595 ;sloc2                     Allocated to stack - _bp +8
                                    596 ;------------------------------------------------------------
                                    597 ;	walk.c:144: static uint8_t update(struct node *t, struct node *cur, uint8_t j) {
                                    598 ;	-----------------------------------------
                                    599 ;	 function update
                                    600 ;	-----------------------------------------
      0020E0                        601 _update:
      0020E0 C0 10            [24]  602 	push	_bp
      0020E2 85 81 10         [24]  603 	mov	_bp,sp
      0020E5 C0 82            [24]  604 	push	dpl
      0020E7 C0 83            [24]  605 	push	dph
      0020E9 C0 F0            [24]  606 	push	b
      0020EB E5 81            [12]  607 	mov	a,sp
      0020ED 24 07            [12]  608 	add	a,#0x07
      0020EF F5 81            [12]  609 	mov	sp,a
                                    610 ;	walk.c:145: t->r = cur->r + neigh[j].r;
      0020F1 E5 10            [12]  611 	mov	a,_bp
      0020F3 24 FB            [12]  612 	add	a,#0xfb
      0020F5 F8               [12]  613 	mov	r0,a
      0020F6 86 02            [24]  614 	mov	ar2,@r0
      0020F8 08               [12]  615 	inc	r0
      0020F9 86 03            [24]  616 	mov	ar3,@r0
      0020FB 08               [12]  617 	inc	r0
      0020FC 86 04            [24]  618 	mov	ar4,@r0
      0020FE 8A 82            [24]  619 	mov	dpl,r2
      002100 8B 83            [24]  620 	mov	dph,r3
      002102 8C F0            [24]  621 	mov	b,r4
      002104 E5 10            [12]  622 	mov	a,_bp
      002106 24 04            [12]  623 	add	a,#0x04
      002108 F8               [12]  624 	mov	r0,a
      002109 12 2E 74         [24]  625 	lcall	__gptrget
      00210C F6               [12]  626 	mov	@r0,a
      00210D A3               [24]  627 	inc	dptr
      00210E 12 2E 74         [24]  628 	lcall	__gptrget
      002111 08               [12]  629 	inc	r0
      002112 F6               [12]  630 	mov	@r0,a
      002113 E5 10            [12]  631 	mov	a,_bp
      002115 24 FA            [12]  632 	add	a,#0xfa
      002117 F8               [12]  633 	mov	r0,a
      002118 E5 10            [12]  634 	mov	a,_bp
      00211A 24 06            [12]  635 	add	a,#0x06
      00211C F9               [12]  636 	mov	r1,a
      00211D E6               [12]  637 	mov	a,@r0
      00211E 75 F0 04         [24]  638 	mov	b,#0x04
      002121 A4               [48]  639 	mul	ab
      002122 F7               [12]  640 	mov	@r1,a
      002123 09               [12]  641 	inc	r1
      002124 A7 F0            [24]  642 	mov	@r1,b
      002126 E5 10            [12]  643 	mov	a,_bp
      002128 24 06            [12]  644 	add	a,#0x06
      00212A F8               [12]  645 	mov	r0,a
      00212B E6               [12]  646 	mov	a,@r0
      00212C 24 72            [12]  647 	add	a,#_neigh
      00212E F5 82            [12]  648 	mov	dpl,a
      002130 08               [12]  649 	inc	r0
      002131 E6               [12]  650 	mov	a,@r0
      002132 34 FF            [12]  651 	addc	a,#(_neigh >> 8)
      002134 F5 83            [12]  652 	mov	dph,a
      002136 E0               [24]  653 	movx	a,@dptr
      002137 FF               [12]  654 	mov	r7,a
      002138 A3               [24]  655 	inc	dptr
      002139 E0               [24]  656 	movx	a,@dptr
      00213A FE               [12]  657 	mov	r6,a
      00213B E5 10            [12]  658 	mov	a,_bp
      00213D 24 04            [12]  659 	add	a,#0x04
      00213F F8               [12]  660 	mov	r0,a
      002140 EF               [12]  661 	mov	a,r7
      002141 26               [12]  662 	add	a,@r0
      002142 FF               [12]  663 	mov	r7,a
      002143 EE               [12]  664 	mov	a,r6
      002144 08               [12]  665 	inc	r0
      002145 36               [12]  666 	addc	a,@r0
      002146 FE               [12]  667 	mov	r6,a
      002147 A8 10            [24]  668 	mov	r0,_bp
      002149 08               [12]  669 	inc	r0
      00214A 86 82            [24]  670 	mov	dpl,@r0
      00214C 08               [12]  671 	inc	r0
      00214D 86 83            [24]  672 	mov	dph,@r0
      00214F 08               [12]  673 	inc	r0
      002150 86 F0            [24]  674 	mov	b,@r0
      002152 EF               [12]  675 	mov	a,r7
      002153 12 2C 69         [24]  676 	lcall	__gptrput
      002156 A3               [24]  677 	inc	dptr
      002157 EE               [12]  678 	mov	a,r6
      002158 12 2C 69         [24]  679 	lcall	__gptrput
                                    680 ;	walk.c:146: t->c = cur->c + neigh[j].c;
      00215B A8 10            [24]  681 	mov	r0,_bp
      00215D 08               [12]  682 	inc	r0
      00215E E5 10            [12]  683 	mov	a,_bp
      002160 24 08            [12]  684 	add	a,#0x08
      002162 F9               [12]  685 	mov	r1,a
      002163 74 02            [12]  686 	mov	a,#0x02
      002165 26               [12]  687 	add	a,@r0
      002166 F7               [12]  688 	mov	@r1,a
      002167 E4               [12]  689 	clr	a
      002168 08               [12]  690 	inc	r0
      002169 36               [12]  691 	addc	a,@r0
      00216A 09               [12]  692 	inc	r1
      00216B F7               [12]  693 	mov	@r1,a
      00216C 08               [12]  694 	inc	r0
      00216D 09               [12]  695 	inc	r1
      00216E E6               [12]  696 	mov	a,@r0
      00216F F7               [12]  697 	mov	@r1,a
      002170 74 02            [12]  698 	mov	a,#0x02
      002172 2A               [12]  699 	add	a,r2
      002173 FA               [12]  700 	mov	r2,a
      002174 E4               [12]  701 	clr	a
      002175 3B               [12]  702 	addc	a,r3
      002176 FB               [12]  703 	mov	r3,a
      002177 8A 82            [24]  704 	mov	dpl,r2
      002179 8B 83            [24]  705 	mov	dph,r3
      00217B 8C F0            [24]  706 	mov	b,r4
      00217D 12 2E 74         [24]  707 	lcall	__gptrget
      002180 FA               [12]  708 	mov	r2,a
      002181 A3               [24]  709 	inc	dptr
      002182 12 2E 74         [24]  710 	lcall	__gptrget
      002185 FB               [12]  711 	mov	r3,a
      002186 E5 10            [12]  712 	mov	a,_bp
      002188 24 06            [12]  713 	add	a,#0x06
      00218A F8               [12]  714 	mov	r0,a
      00218B E6               [12]  715 	mov	a,@r0
      00218C 24 72            [12]  716 	add	a,#_neigh
      00218E FC               [12]  717 	mov	r4,a
      00218F 08               [12]  718 	inc	r0
      002190 E6               [12]  719 	mov	a,@r0
      002191 34 FF            [12]  720 	addc	a,#(_neigh >> 8)
      002193 FD               [12]  721 	mov	r5,a
      002194 8C 82            [24]  722 	mov	dpl,r4
      002196 8D 83            [24]  723 	mov	dph,r5
      002198 A3               [24]  724 	inc	dptr
      002199 A3               [24]  725 	inc	dptr
      00219A E0               [24]  726 	movx	a,@dptr
      00219B FC               [12]  727 	mov	r4,a
      00219C A3               [24]  728 	inc	dptr
      00219D E0               [24]  729 	movx	a,@dptr
      00219E FD               [12]  730 	mov	r5,a
      00219F EC               [12]  731 	mov	a,r4
      0021A0 2A               [12]  732 	add	a,r2
      0021A1 FA               [12]  733 	mov	r2,a
      0021A2 ED               [12]  734 	mov	a,r5
      0021A3 3B               [12]  735 	addc	a,r3
      0021A4 FB               [12]  736 	mov	r3,a
      0021A5 E5 10            [12]  737 	mov	a,_bp
      0021A7 24 08            [12]  738 	add	a,#0x08
      0021A9 F8               [12]  739 	mov	r0,a
      0021AA 86 82            [24]  740 	mov	dpl,@r0
      0021AC 08               [12]  741 	inc	r0
      0021AD 86 83            [24]  742 	mov	dph,@r0
      0021AF 08               [12]  743 	inc	r0
      0021B0 86 F0            [24]  744 	mov	b,@r0
      0021B2 EA               [12]  745 	mov	a,r2
      0021B3 12 2C 69         [24]  746 	lcall	__gptrput
      0021B6 A3               [24]  747 	inc	dptr
      0021B7 EB               [12]  748 	mov	a,r3
      0021B8 12 2C 69         [24]  749 	lcall	__gptrput
                                    750 ;	walk.c:148: if (t->r < 0) t->r += ROWS;
      0021BB A8 10            [24]  751 	mov	r0,_bp
      0021BD 08               [12]  752 	inc	r0
      0021BE 86 82            [24]  753 	mov	dpl,@r0
      0021C0 08               [12]  754 	inc	r0
      0021C1 86 83            [24]  755 	mov	dph,@r0
      0021C3 08               [12]  756 	inc	r0
      0021C4 86 F0            [24]  757 	mov	b,@r0
      0021C6 12 2E 74         [24]  758 	lcall	__gptrget
      0021C9 FD               [12]  759 	mov	r5,a
      0021CA A3               [24]  760 	inc	dptr
      0021CB 12 2E 74         [24]  761 	lcall	__gptrget
      0021CE FC               [12]  762 	mov	r4,a
      0021CF EE               [12]  763 	mov	a,r6
      0021D0 30 E7 1D         [24]  764 	jnb	acc.7,00104$
      0021D3 74 30            [12]  765 	mov	a,#0x30
      0021D5 2D               [12]  766 	add	a,r5
      0021D6 FF               [12]  767 	mov	r7,a
      0021D7 E4               [12]  768 	clr	a
      0021D8 3C               [12]  769 	addc	a,r4
      0021D9 FE               [12]  770 	mov	r6,a
      0021DA A8 10            [24]  771 	mov	r0,_bp
      0021DC 08               [12]  772 	inc	r0
      0021DD 86 82            [24]  773 	mov	dpl,@r0
      0021DF 08               [12]  774 	inc	r0
      0021E0 86 83            [24]  775 	mov	dph,@r0
      0021E2 08               [12]  776 	inc	r0
      0021E3 86 F0            [24]  777 	mov	b,@r0
      0021E5 EF               [12]  778 	mov	a,r7
      0021E6 12 2C 69         [24]  779 	lcall	__gptrput
      0021E9 A3               [24]  780 	inc	dptr
      0021EA EE               [12]  781 	mov	a,r6
      0021EB 12 2C 69         [24]  782 	lcall	__gptrput
      0021EE 80 27            [24]  783 	sjmp	00105$
      0021F0                        784 00104$:
                                    785 ;	walk.c:149: else if (t->r >= ROWS) t->r -= ROWS;
      0021F0 C3               [12]  786 	clr	c
      0021F1 ED               [12]  787 	mov	a,r5
      0021F2 94 30            [12]  788 	subb	a,#0x30
      0021F4 EC               [12]  789 	mov	a,r4
      0021F5 64 80            [12]  790 	xrl	a,#0x80
      0021F7 94 80            [12]  791 	subb	a,#0x80
      0021F9 40 1C            [24]  792 	jc	00105$
      0021FB ED               [12]  793 	mov	a,r5
      0021FC 24 D0            [12]  794 	add	a,#0xd0
      0021FE FD               [12]  795 	mov	r5,a
      0021FF EC               [12]  796 	mov	a,r4
      002200 34 FF            [12]  797 	addc	a,#0xff
      002202 FC               [12]  798 	mov	r4,a
      002203 A8 10            [24]  799 	mov	r0,_bp
      002205 08               [12]  800 	inc	r0
      002206 86 82            [24]  801 	mov	dpl,@r0
      002208 08               [12]  802 	inc	r0
      002209 86 83            [24]  803 	mov	dph,@r0
      00220B 08               [12]  804 	inc	r0
      00220C 86 F0            [24]  805 	mov	b,@r0
      00220E ED               [12]  806 	mov	a,r5
      00220F 12 2C 69         [24]  807 	lcall	__gptrput
      002212 A3               [24]  808 	inc	dptr
      002213 EC               [12]  809 	mov	a,r4
      002214 12 2C 69         [24]  810 	lcall	__gptrput
      002217                        811 00105$:
                                    812 ;	walk.c:150: if (t->c < 0) t->c += COLS;
      002217 E5 10            [12]  813 	mov	a,_bp
      002219 24 08            [12]  814 	add	a,#0x08
      00221B F8               [12]  815 	mov	r0,a
      00221C 86 82            [24]  816 	mov	dpl,@r0
      00221E 08               [12]  817 	inc	r0
      00221F 86 83            [24]  818 	mov	dph,@r0
      002221 08               [12]  819 	inc	r0
      002222 86 F0            [24]  820 	mov	b,@r0
      002224 12 2E 74         [24]  821 	lcall	__gptrget
      002227 A3               [24]  822 	inc	dptr
      002228 12 2E 74         [24]  823 	lcall	__gptrget
      00222B 30 E7 35         [24]  824 	jnb	acc.7,00109$
      00222E E5 10            [12]  825 	mov	a,_bp
      002230 24 08            [12]  826 	add	a,#0x08
      002232 F8               [12]  827 	mov	r0,a
      002233 86 82            [24]  828 	mov	dpl,@r0
      002235 08               [12]  829 	inc	r0
      002236 86 83            [24]  830 	mov	dph,@r0
      002238 08               [12]  831 	inc	r0
      002239 86 F0            [24]  832 	mov	b,@r0
      00223B 12 2E 74         [24]  833 	lcall	__gptrget
      00223E FE               [12]  834 	mov	r6,a
      00223F A3               [24]  835 	inc	dptr
      002240 12 2E 74         [24]  836 	lcall	__gptrget
      002243 FF               [12]  837 	mov	r7,a
      002244 74 C9            [12]  838 	mov	a,#0xc9
      002246 2E               [12]  839 	add	a,r6
      002247 FE               [12]  840 	mov	r6,a
      002248 E4               [12]  841 	clr	a
      002249 3F               [12]  842 	addc	a,r7
      00224A FF               [12]  843 	mov	r7,a
      00224B E5 10            [12]  844 	mov	a,_bp
      00224D 24 08            [12]  845 	add	a,#0x08
      00224F F8               [12]  846 	mov	r0,a
      002250 86 82            [24]  847 	mov	dpl,@r0
      002252 08               [12]  848 	inc	r0
      002253 86 83            [24]  849 	mov	dph,@r0
      002255 08               [12]  850 	inc	r0
      002256 86 F0            [24]  851 	mov	b,@r0
      002258 EE               [12]  852 	mov	a,r6
      002259 12 2C 69         [24]  853 	lcall	__gptrput
      00225C A3               [24]  854 	inc	dptr
      00225D EF               [12]  855 	mov	a,r7
      00225E 12 2C 69         [24]  856 	lcall	__gptrput
      002261 80 55            [24]  857 	sjmp	00110$
      002263                        858 00109$:
                                    859 ;	walk.c:151: else if (t->c >= COLS) t->c -= COLS;
      002263 E5 10            [12]  860 	mov	a,_bp
      002265 24 08            [12]  861 	add	a,#0x08
      002267 F8               [12]  862 	mov	r0,a
      002268 86 82            [24]  863 	mov	dpl,@r0
      00226A 08               [12]  864 	inc	r0
      00226B 86 83            [24]  865 	mov	dph,@r0
      00226D 08               [12]  866 	inc	r0
      00226E 86 F0            [24]  867 	mov	b,@r0
      002270 12 2E 74         [24]  868 	lcall	__gptrget
      002273 FE               [12]  869 	mov	r6,a
      002274 A3               [24]  870 	inc	dptr
      002275 12 2E 74         [24]  871 	lcall	__gptrget
      002278 FF               [12]  872 	mov	r7,a
      002279 C3               [12]  873 	clr	c
      00227A EE               [12]  874 	mov	a,r6
      00227B 94 C9            [12]  875 	subb	a,#0xc9
      00227D EF               [12]  876 	mov	a,r7
      00227E 64 80            [12]  877 	xrl	a,#0x80
      002280 94 80            [12]  878 	subb	a,#0x80
      002282 40 34            [24]  879 	jc	00110$
      002284 E5 10            [12]  880 	mov	a,_bp
      002286 24 08            [12]  881 	add	a,#0x08
      002288 F8               [12]  882 	mov	r0,a
      002289 86 82            [24]  883 	mov	dpl,@r0
      00228B 08               [12]  884 	inc	r0
      00228C 86 83            [24]  885 	mov	dph,@r0
      00228E 08               [12]  886 	inc	r0
      00228F 86 F0            [24]  887 	mov	b,@r0
      002291 12 2E 74         [24]  888 	lcall	__gptrget
      002294 FE               [12]  889 	mov	r6,a
      002295 A3               [24]  890 	inc	dptr
      002296 12 2E 74         [24]  891 	lcall	__gptrget
      002299 FF               [12]  892 	mov	r7,a
      00229A EE               [12]  893 	mov	a,r6
      00229B 24 37            [12]  894 	add	a,#0x37
      00229D FE               [12]  895 	mov	r6,a
      00229E EF               [12]  896 	mov	a,r7
      00229F 34 FF            [12]  897 	addc	a,#0xff
      0022A1 FF               [12]  898 	mov	r7,a
      0022A2 E5 10            [12]  899 	mov	a,_bp
      0022A4 24 08            [12]  900 	add	a,#0x08
      0022A6 F8               [12]  901 	mov	r0,a
      0022A7 86 82            [24]  902 	mov	dpl,@r0
      0022A9 08               [12]  903 	inc	r0
      0022AA 86 83            [24]  904 	mov	dph,@r0
      0022AC 08               [12]  905 	inc	r0
      0022AD 86 F0            [24]  906 	mov	b,@r0
      0022AF EE               [12]  907 	mov	a,r6
      0022B0 12 2C 69         [24]  908 	lcall	__gptrput
      0022B3 A3               [24]  909 	inc	dptr
      0022B4 EF               [12]  910 	mov	a,r7
      0022B5 12 2C 69         [24]  911 	lcall	__gptrput
      0022B8                        912 00110$:
                                    913 ;	walk.c:153: if (g[t->r][t->c] == 0xaau) return 0u;
      0022B8 A8 10            [24]  914 	mov	r0,_bp
      0022BA 08               [12]  915 	inc	r0
      0022BB 86 82            [24]  916 	mov	dpl,@r0
      0022BD 08               [12]  917 	inc	r0
      0022BE 86 83            [24]  918 	mov	dph,@r0
      0022C0 08               [12]  919 	inc	r0
      0022C1 86 F0            [24]  920 	mov	b,@r0
      0022C3 12 2E 74         [24]  921 	lcall	__gptrget
      0022C6 FE               [12]  922 	mov	r6,a
      0022C7 A3               [24]  923 	inc	dptr
      0022C8 12 2E 74         [24]  924 	lcall	__gptrget
      0022CB FF               [12]  925 	mov	r7,a
      0022CC C0 06            [24]  926 	push	ar6
      0022CE C0 07            [24]  927 	push	ar7
      0022D0 90 00 C9         [24]  928 	mov	dptr,#0x00c9
      0022D3 12 2C 84         [24]  929 	lcall	__mulint
      0022D6 AE 82            [24]  930 	mov	r6,dpl
      0022D8 AF 83            [24]  931 	mov	r7,dph
      0022DA 15 81            [12]  932 	dec	sp
      0022DC 15 81            [12]  933 	dec	sp
      0022DE EE               [12]  934 	mov	a,r6
      0022DF 24 00            [12]  935 	add	a,#_g
      0022E1 FE               [12]  936 	mov	r6,a
      0022E2 EF               [12]  937 	mov	a,r7
      0022E3 34 43            [12]  938 	addc	a,#(_g >> 8)
      0022E5 FF               [12]  939 	mov	r7,a
      0022E6 E5 10            [12]  940 	mov	a,_bp
      0022E8 24 08            [12]  941 	add	a,#0x08
      0022EA F8               [12]  942 	mov	r0,a
      0022EB 86 82            [24]  943 	mov	dpl,@r0
      0022ED 08               [12]  944 	inc	r0
      0022EE 86 83            [24]  945 	mov	dph,@r0
      0022F0 08               [12]  946 	inc	r0
      0022F1 86 F0            [24]  947 	mov	b,@r0
      0022F3 12 2E 74         [24]  948 	lcall	__gptrget
      0022F6 FC               [12]  949 	mov	r4,a
      0022F7 A3               [24]  950 	inc	dptr
      0022F8 12 2E 74         [24]  951 	lcall	__gptrget
      0022FB FD               [12]  952 	mov	r5,a
      0022FC EC               [12]  953 	mov	a,r4
      0022FD 2E               [12]  954 	add	a,r6
      0022FE F5 82            [12]  955 	mov	dpl,a
      002300 ED               [12]  956 	mov	a,r5
      002301 3F               [12]  957 	addc	a,r7
      002302 F5 83            [12]  958 	mov	dph,a
      002304 E0               [24]  959 	movx	a,@dptr
      002305 FF               [12]  960 	mov	r7,a
      002306 BF AA 05         [24]  961 	cjne	r7,#0xaa,00114$
      002309 75 82 00         [24]  962 	mov	dpl,#0x00
      00230C 80 59            [24]  963 	sjmp	00116$
      00230E                        964 00114$:
                                    965 ;	walk.c:154: else if (g[t->r][t->c] != 0x55u) bang();
      00230E A8 10            [24]  966 	mov	r0,_bp
      002310 08               [12]  967 	inc	r0
      002311 86 82            [24]  968 	mov	dpl,@r0
      002313 08               [12]  969 	inc	r0
      002314 86 83            [24]  970 	mov	dph,@r0
      002316 08               [12]  971 	inc	r0
      002317 86 F0            [24]  972 	mov	b,@r0
      002319 12 2E 74         [24]  973 	lcall	__gptrget
      00231C FE               [12]  974 	mov	r6,a
      00231D A3               [24]  975 	inc	dptr
      00231E 12 2E 74         [24]  976 	lcall	__gptrget
      002321 FF               [12]  977 	mov	r7,a
      002322 C0 06            [24]  978 	push	ar6
      002324 C0 07            [24]  979 	push	ar7
      002326 90 00 C9         [24]  980 	mov	dptr,#0x00c9
      002329 12 2C 84         [24]  981 	lcall	__mulint
      00232C AE 82            [24]  982 	mov	r6,dpl
      00232E AF 83            [24]  983 	mov	r7,dph
      002330 15 81            [12]  984 	dec	sp
      002332 15 81            [12]  985 	dec	sp
      002334 EE               [12]  986 	mov	a,r6
      002335 24 00            [12]  987 	add	a,#_g
      002337 FE               [12]  988 	mov	r6,a
      002338 EF               [12]  989 	mov	a,r7
      002339 34 43            [12]  990 	addc	a,#(_g >> 8)
      00233B FF               [12]  991 	mov	r7,a
      00233C E5 10            [12]  992 	mov	a,_bp
      00233E 24 08            [12]  993 	add	a,#0x08
      002340 F8               [12]  994 	mov	r0,a
      002341 86 82            [24]  995 	mov	dpl,@r0
      002343 08               [12]  996 	inc	r0
      002344 86 83            [24]  997 	mov	dph,@r0
      002346 08               [12]  998 	inc	r0
      002347 86 F0            [24]  999 	mov	b,@r0
      002349 12 2E 74         [24] 1000 	lcall	__gptrget
      00234C FC               [12] 1001 	mov	r4,a
      00234D A3               [24] 1002 	inc	dptr
      00234E 12 2E 74         [24] 1003 	lcall	__gptrget
      002351 FD               [12] 1004 	mov	r5,a
      002352 EC               [12] 1005 	mov	a,r4
      002353 2E               [12] 1006 	add	a,r6
      002354 F5 82            [12] 1007 	mov	dpl,a
      002356 ED               [12] 1008 	mov	a,r5
      002357 3F               [12] 1009 	addc	a,r7
      002358 F5 83            [12] 1010 	mov	dph,a
      00235A E0               [24] 1011 	movx	a,@dptr
      00235B FF               [12] 1012 	mov	r7,a
      00235C BF 55 02         [24] 1013 	cjne	r7,#0x55,00148$
      00235F 80 03            [24] 1014 	sjmp	00115$
      002361                       1015 00148$:
      002361 12 20 87         [24] 1016 	lcall	_bang
      002364                       1017 00115$:
                                   1018 ;	walk.c:156: return 1u;
      002364 75 82 01         [24] 1019 	mov	dpl,#0x01
      002367                       1020 00116$:
                                   1021 ;	walk.c:157: }
      002367 85 10 81         [24] 1022 	mov	sp,_bp
      00236A D0 10            [24] 1023 	pop	_bp
      00236C 22               [24] 1024 	ret
                                   1025 ;------------------------------------------------------------
                                   1026 ;Allocation info for local variables in function 'walk'
                                   1027 ;------------------------------------------------------------
                                   1028 ;nstart                    Allocated to registers 
                                   1029 ;cur                       Allocated to stack - _bp +10
                                   1030 ;t                         Allocated to stack - _bp +14
                                   1031 ;j                         Allocated to stack - _bp +18
                                   1032 ;f                         Allocated to registers r3 
                                   1033 ;sloc0                     Allocated to stack - _bp +1
                                   1034 ;sloc1                     Allocated to stack - _bp +2
                                   1035 ;sloc2                     Allocated to stack - _bp +3
                                   1036 ;sloc3                     Allocated to stack - _bp +17
                                   1037 ;sloc4                     Allocated to stack - _bp +4
                                   1038 ;sloc5                     Allocated to stack - _bp +5
                                   1039 ;sloc6                     Allocated to stack - _bp +6
                                   1040 ;sloc7                     Allocated to stack - _bp +7
                                   1041 ;------------------------------------------------------------
                                   1042 ;	walk.c:159: static void walk(struct node *nstart) {
                                   1043 ;	-----------------------------------------
                                   1044 ;	 function walk
                                   1045 ;	-----------------------------------------
      00236D                       1046 _walk:
      00236D C0 10            [24] 1047 	push	_bp
      00236F E5 81            [12] 1048 	mov	a,sp
      002371 F5 10            [12] 1049 	mov	_bp,a
      002373 24 12            [12] 1050 	add	a,#0x12
      002375 F5 81            [12] 1051 	mov	sp,a
      002377 AD 82            [24] 1052 	mov	r5,dpl
      002379 AE 83            [24] 1053 	mov	r6,dph
      00237B AF F0            [24] 1054 	mov	r7,b
                                   1055 ;	walk.c:163: cur = *nstart;
      00237D E5 10            [12] 1056 	mov	a,_bp
      00237F 24 0A            [12] 1057 	add	a,#0x0a
      002381 F9               [12] 1058 	mov	r1,a
      002382 FA               [12] 1059 	mov	r2,a
      002383 7B 00            [12] 1060 	mov	r3,#0x00
      002385 7C 40            [12] 1061 	mov	r4,#0x40
      002387 C0 01            [24] 1062 	push	ar1
      002389 74 04            [12] 1063 	mov	a,#0x04
      00238B C0 E0            [24] 1064 	push	acc
      00238D E4               [12] 1065 	clr	a
      00238E C0 E0            [24] 1066 	push	acc
      002390 C0 05            [24] 1067 	push	ar5
      002392 C0 06            [24] 1068 	push	ar6
      002394 C0 07            [24] 1069 	push	ar7
      002396 8A 82            [24] 1070 	mov	dpl,r2
      002398 8B 83            [24] 1071 	mov	dph,r3
      00239A 8C F0            [24] 1072 	mov	b,r4
      00239C 12 2D 22         [24] 1073 	lcall	___memcpy
      00239F E5 81            [12] 1074 	mov	a,sp
      0023A1 24 FB            [12] 1075 	add	a,#0xfb
      0023A3 F5 81            [12] 1076 	mov	sp,a
      0023A5 D0 01            [24] 1077 	pop	ar1
                                   1078 ;	walk.c:165: process:
      0023A7 E5 10            [12] 1079 	mov	a,_bp
      0023A9 24 06            [12] 1080 	add	a,#0x06
      0023AB F8               [12] 1081 	mov	r0,a
      0023AC A6 01            [24] 1082 	mov	@r0,ar1
      0023AE E5 10            [12] 1083 	mov	a,_bp
      0023B0 24 0E            [12] 1084 	add	a,#0x0e
      0023B2 FE               [12] 1085 	mov	r6,a
      0023B3 E5 10            [12] 1086 	mov	a,_bp
      0023B5 24 03            [12] 1087 	add	a,#0x03
      0023B7 F8               [12] 1088 	mov	r0,a
      0023B8 A6 01            [24] 1089 	mov	@r0,ar1
      0023BA E5 10            [12] 1090 	mov	a,_bp
      0023BC 24 05            [12] 1091 	add	a,#0x05
      0023BE F8               [12] 1092 	mov	r0,a
      0023BF A6 01            [24] 1093 	mov	@r0,ar1
      0023C1 E5 10            [12] 1094 	mov	a,_bp
      0023C3 24 04            [12] 1095 	add	a,#0x04
      0023C5 F8               [12] 1096 	mov	r0,a
      0023C6 A6 06            [24] 1097 	mov	@r0,ar6
      0023C8 89 02            [24] 1098 	mov	ar2,r1
      0023CA A8 10            [24] 1099 	mov	r0,_bp
      0023CC 08               [12] 1100 	inc	r0
      0023CD A6 06            [24] 1101 	mov	@r0,ar6
      0023CF A8 10            [24] 1102 	mov	r0,_bp
      0023D1 08               [12] 1103 	inc	r0
      0023D2 08               [12] 1104 	inc	r0
      0023D3 A6 01            [24] 1105 	mov	@r0,ar1
      0023D5 74 02            [12] 1106 	mov	a,#0x02
      0023D7 29               [12] 1107 	add	a,r1
      0023D8 F8               [12] 1108 	mov	r0,a
      0023D9                       1109 00101$:
                                   1110 ;	walk.c:166: g[cur.r][cur.c] = 0xaau;
      0023D9 C0 02            [24] 1111 	push	ar2
      0023DB 87 02            [24] 1112 	mov	ar2,@r1
      0023DD 09               [12] 1113 	inc	r1
      0023DE 87 05            [24] 1114 	mov	ar5,@r1
      0023E0 19               [12] 1115 	dec	r1
      0023E1 C0 06            [24] 1116 	push	ar6
      0023E3 C0 01            [24] 1117 	push	ar1
      0023E5 C0 00            [24] 1118 	push	ar0
      0023E7 C0 02            [24] 1119 	push	ar2
      0023E9 C0 05            [24] 1120 	push	ar5
      0023EB 90 00 C9         [24] 1121 	mov	dptr,#0x00c9
      0023EE 12 2C 84         [24] 1122 	lcall	__mulint
      0023F1 AA 82            [24] 1123 	mov	r2,dpl
      0023F3 AD 83            [24] 1124 	mov	r5,dph
      0023F5 15 81            [12] 1125 	dec	sp
      0023F7 15 81            [12] 1126 	dec	sp
      0023F9 D0 00            [24] 1127 	pop	ar0
      0023FB D0 01            [24] 1128 	pop	ar1
      0023FD EA               [12] 1129 	mov	a,r2
      0023FE 24 00            [12] 1130 	add	a,#_g
      002400 FF               [12] 1131 	mov	r7,a
      002401 ED               [12] 1132 	mov	a,r5
      002402 34 43            [12] 1133 	addc	a,#(_g >> 8)
      002404 FC               [12] 1134 	mov	r4,a
      002405 86 02            [24] 1135 	mov	ar2,@r0
      002407 08               [12] 1136 	inc	r0
      002408 86 05            [24] 1137 	mov	ar5,@r0
      00240A 18               [12] 1138 	dec	r0
      00240B EA               [12] 1139 	mov	a,r2
      00240C 2F               [12] 1140 	add	a,r7
      00240D F5 82            [12] 1141 	mov	dpl,a
      00240F ED               [12] 1142 	mov	a,r5
      002410 3C               [12] 1143 	addc	a,r4
      002411 F5 83            [12] 1144 	mov	dph,a
      002413 74 AA            [12] 1145 	mov	a,#0xaa
      002415 F0               [24] 1146 	movx	@dptr,a
                                   1147 ;	walk.c:168: printf("\033[%d;%dHo", cur.r + 4, cur.c + 1);
      002416 86 02            [24] 1148 	mov	ar2,@r0
      002418 08               [12] 1149 	inc	r0
      002419 86 05            [24] 1150 	mov	ar5,@r0
      00241B 18               [12] 1151 	dec	r0
      00241C 74 01            [12] 1152 	mov	a,#0x01
      00241E 2A               [12] 1153 	add	a,r2
      00241F FF               [12] 1154 	mov	r7,a
      002420 E4               [12] 1155 	clr	a
      002421 3D               [12] 1156 	addc	a,r5
      002422 FC               [12] 1157 	mov	r4,a
      002423 87 02            [24] 1158 	mov	ar2,@r1
      002425 09               [12] 1159 	inc	r1
      002426 87 05            [24] 1160 	mov	ar5,@r1
      002428 19               [12] 1161 	dec	r1
      002429 74 04            [12] 1162 	mov	a,#0x04
      00242B 2A               [12] 1163 	add	a,r2
      00242C FA               [12] 1164 	mov	r2,a
      00242D E4               [12] 1165 	clr	a
      00242E 3D               [12] 1166 	addc	a,r5
      00242F FD               [12] 1167 	mov	r5,a
      002430 C0 02            [24] 1168 	push	ar2
      002432 C0 01            [24] 1169 	push	ar1
      002434 C0 00            [24] 1170 	push	ar0
      002436 C0 07            [24] 1171 	push	ar7
      002438 C0 04            [24] 1172 	push	ar4
      00243A C0 02            [24] 1173 	push	ar2
      00243C C0 05            [24] 1174 	push	ar5
      00243E 74 7B            [12] 1175 	mov	a,#___str_1
      002440 C0 E0            [24] 1176 	push	acc
      002442 74 41            [12] 1177 	mov	a,#(___str_1 >> 8)
      002444 C0 E0            [24] 1178 	push	acc
      002446 74 80            [12] 1179 	mov	a,#0x80
      002448 C0 E0            [24] 1180 	push	acc
      00244A 12 2E 3B         [24] 1181 	lcall	_printf
      00244D E5 81            [12] 1182 	mov	a,sp
      00244F 24 F9            [12] 1183 	add	a,#0xf9
      002451 F5 81            [12] 1184 	mov	sp,a
                                   1185 ;	walk.c:169: setOE(OE76_MASK7);
      002453 75 82 80         [24] 1186 	mov	dpl,#0x80
      002456 12 20 94         [24] 1187 	lcall	_setOE
      002459 D0 00            [24] 1188 	pop	ar0
      00245B D0 01            [24] 1189 	pop	ar1
      00245D D0 02            [24] 1190 	pop	ar2
      00245F D0 06            [24] 1191 	pop	ar6
                                   1192 ;	walk.c:197: return;
      002461 D0 02            [24] 1193 	pop	ar2
                                   1194 ;	walk.c:171: next:
      002463                       1195 00102$:
                                   1196 ;	walk.c:172: printf("\033[2;1H% 8d% 8d% 8d", sp, cur.r, cur.c);
      002463 C0 02            [24] 1197 	push	ar2
      002465 86 07            [24] 1198 	mov	ar7,@r0
      002467 08               [12] 1199 	inc	r0
      002468 86 04            [24] 1200 	mov	ar4,@r0
      00246A 18               [12] 1201 	dec	r0
      00246B 87 02            [24] 1202 	mov	ar2,@r1
      00246D 09               [12] 1203 	inc	r1
      00246E 87 05            [24] 1204 	mov	ar5,@r1
      002470 19               [12] 1205 	dec	r1
      002471 C0 06            [24] 1206 	push	ar6
      002473 C0 02            [24] 1207 	push	ar2
      002475 C0 01            [24] 1208 	push	ar1
      002477 C0 00            [24] 1209 	push	ar0
      002479 C0 07            [24] 1210 	push	ar7
      00247B C0 04            [24] 1211 	push	ar4
      00247D C0 02            [24] 1212 	push	ar2
      00247F C0 05            [24] 1213 	push	ar5
      002481 90 FF 70         [24] 1214 	mov	dptr,#_sp
      002484 E0               [24] 1215 	movx	a,@dptr
      002485 C0 E0            [24] 1216 	push	acc
      002487 A3               [24] 1217 	inc	dptr
      002488 E0               [24] 1218 	movx	a,@dptr
      002489 C0 E0            [24] 1219 	push	acc
      00248B 74 85            [12] 1220 	mov	a,#___str_2
      00248D C0 E0            [24] 1221 	push	acc
      00248F 74 41            [12] 1222 	mov	a,#(___str_2 >> 8)
      002491 C0 E0            [24] 1223 	push	acc
      002493 74 80            [12] 1224 	mov	a,#0x80
      002495 C0 E0            [24] 1225 	push	acc
      002497 12 2E 3B         [24] 1226 	lcall	_printf
      00249A E5 81            [12] 1227 	mov	a,sp
      00249C 24 F7            [12] 1228 	add	a,#0xf7
      00249E F5 81            [12] 1229 	mov	sp,a
                                   1230 ;	walk.c:173: unsetOE(OE76_MASK7 | OE76_MASK6);
      0024A0 75 82 C0         [24] 1231 	mov	dpl,#0xc0
      0024A3 12 20 AD         [24] 1232 	lcall	_unsetOE
      0024A6 D0 00            [24] 1233 	pop	ar0
      0024A8 D0 01            [24] 1234 	pop	ar1
      0024AA D0 02            [24] 1235 	pop	ar2
      0024AC D0 06            [24] 1236 	pop	ar6
                                   1237 ;	walk.c:175: for (j = 0u, f = 0u; j < NMAX; j++) {
      0024AE 7B 00            [12] 1238 	mov	r3,#0x00
      0024B0 C0 00            [24] 1239 	push	ar0
      0024B2 E5 10            [12] 1240 	mov	a,_bp
      0024B4 24 12            [12] 1241 	add	a,#0x12
      0024B6 F8               [12] 1242 	mov	r0,a
      0024B7 76 00            [12] 1243 	mov	@r0,#0x00
      0024B9 D0 00            [24] 1244 	pop	ar0
                                   1245 ;	walk.c:197: return;
      0024BB D0 02            [24] 1246 	pop	ar2
                                   1247 ;	walk.c:175: for (j = 0u, f = 0u; j < NMAX; j++) {
      0024BD                       1248 00119$:
      0024BD C0 00            [24] 1249 	push	ar0
      0024BF E5 10            [12] 1250 	mov	a,_bp
      0024C1 24 12            [12] 1251 	add	a,#0x12
      0024C3 F8               [12] 1252 	mov	r0,a
      0024C4 B6 10 00         [24] 1253 	cjne	@r0,#0x10,00159$
      0024C7                       1254 00159$:
      0024C7 D0 00            [24] 1255 	pop	ar0
      0024C9 50 7A            [24] 1256 	jnc	00106$
                                   1257 ;	walk.c:176: if (!update(&t, &cur, j)) continue;
      0024CB C0 02            [24] 1258 	push	ar2
      0024CD C0 00            [24] 1259 	push	ar0
      0024CF E5 10            [12] 1260 	mov	a,_bp
      0024D1 24 06            [12] 1261 	add	a,#0x06
      0024D3 F8               [12] 1262 	mov	r0,a
      0024D4 C0 01            [24] 1263 	push	ar1
      0024D6 E5 10            [12] 1264 	mov	a,_bp
      0024D8 24 07            [12] 1265 	add	a,#0x07
      0024DA F9               [12] 1266 	mov	r1,a
      0024DB E6               [12] 1267 	mov	a,@r0
      0024DC F7               [12] 1268 	mov	@r1,a
      0024DD 09               [12] 1269 	inc	r1
      0024DE 77 00            [12] 1270 	mov	@r1,#0x00
      0024E0 09               [12] 1271 	inc	r1
      0024E1 77 40            [12] 1272 	mov	@r1,#0x40
      0024E3 D0 01            [24] 1273 	pop	ar1
      0024E5 D0 00            [24] 1274 	pop	ar0
      0024E7 8E 04            [24] 1275 	mov	ar4,r6
      0024E9 7D 00            [12] 1276 	mov	r5,#0x00
      0024EB 7F 40            [12] 1277 	mov	r7,#0x40
      0024ED C0 06            [24] 1278 	push	ar6
      0024EF C0 03            [24] 1279 	push	ar3
      0024F1 C0 02            [24] 1280 	push	ar2
      0024F3 C0 01            [24] 1281 	push	ar1
      0024F5 C0 00            [24] 1282 	push	ar0
      0024F7 85 00 F0         [24] 1283 	mov	b,ar0
      0024FA E5 10            [12] 1284 	mov	a,_bp
      0024FC 24 12            [12] 1285 	add	a,#0x12
      0024FE F8               [12] 1286 	mov	r0,a
      0024FF E6               [12] 1287 	mov	a,@r0
      002500 C0 E0            [24] 1288 	push	acc
      002502 A8 F0            [24] 1289 	mov	r0,b
      002504 85 00 F0         [24] 1290 	mov	b,ar0
      002507 E5 10            [12] 1291 	mov	a,_bp
      002509 24 07            [12] 1292 	add	a,#0x07
      00250B F8               [12] 1293 	mov	r0,a
      00250C E6               [12] 1294 	mov	a,@r0
      00250D C0 E0            [24] 1295 	push	acc
      00250F 08               [12] 1296 	inc	r0
      002510 E6               [12] 1297 	mov	a,@r0
      002511 C0 E0            [24] 1298 	push	acc
      002513 08               [12] 1299 	inc	r0
      002514 E6               [12] 1300 	mov	a,@r0
      002515 C0 E0            [24] 1301 	push	acc
      002517 8C 82            [24] 1302 	mov	dpl,r4
      002519 8D 83            [24] 1303 	mov	dph,r5
      00251B 8F F0            [24] 1304 	mov	b,r7
      00251D 12 20 E0         [24] 1305 	lcall	_update
      002520 AF 82            [24] 1306 	mov	r7,dpl
      002522 E5 81            [12] 1307 	mov	a,sp
      002524 24 FC            [12] 1308 	add	a,#0xfc
      002526 F5 81            [12] 1309 	mov	sp,a
      002528 D0 00            [24] 1310 	pop	ar0
      00252A D0 01            [24] 1311 	pop	ar1
      00252C D0 02            [24] 1312 	pop	ar2
      00252E D0 03            [24] 1313 	pop	ar3
      002530 D0 06            [24] 1314 	pop	ar6
      002532 D0 02            [24] 1315 	pop	ar2
      002534 EF               [12] 1316 	mov	a,r7
      002535 60 01            [24] 1317 	jz	00105$
                                   1318 ;	walk.c:177: f++;
      002537 0B               [12] 1319 	inc	r3
      002538                       1320 00105$:
                                   1321 ;	walk.c:175: for (j = 0u, f = 0u; j < NMAX; j++) {
      002538 C0 00            [24] 1322 	push	ar0
      00253A E5 10            [12] 1323 	mov	a,_bp
      00253C 24 12            [12] 1324 	add	a,#0x12
      00253E F8               [12] 1325 	mov	r0,a
      00253F 06               [12] 1326 	inc	@r0
      002540 D0 00            [24] 1327 	pop	ar0
      002542 02 24 BD         [24] 1328 	ljmp	00119$
      002545                       1329 00106$:
                                   1330 ;	walk.c:180: if (f) {
      002545 EB               [12] 1331 	mov	a,r3
      002546 70 03            [24] 1332 	jnz	00162$
      002548 02 26 5F         [24] 1333 	ljmp	00115$
      00254B                       1334 00162$:
                                   1335 ;	walk.c:181: while (1) {
      00254B                       1336 00112$:
                                   1337 ;	walk.c:182: j = (uint8_t)(rand() % NMAX);
      00254B C0 02            [24] 1338 	push	ar2
      00254D C0 06            [24] 1339 	push	ar6
      00254F C0 02            [24] 1340 	push	ar2
      002551 C0 01            [24] 1341 	push	ar1
      002553 C0 00            [24] 1342 	push	ar0
      002555 12 2B 8C         [24] 1343 	lcall	_rand
      002558 AD 82            [24] 1344 	mov	r5,dpl
      00255A D0 00            [24] 1345 	pop	ar0
      00255C D0 01            [24] 1346 	pop	ar1
      00255E D0 02            [24] 1347 	pop	ar2
      002560 D0 06            [24] 1348 	pop	ar6
      002562 53 05 0F         [24] 1349 	anl	ar5,#0x0f
      002565 8D 04            [24] 1350 	mov	ar4,r5
                                   1351 ;	walk.c:183: if (!update(&t, &cur, j)) continue;
      002567 C0 00            [24] 1352 	push	ar0
      002569 E5 10            [12] 1353 	mov	a,_bp
      00256B 24 05            [12] 1354 	add	a,#0x05
      00256D F8               [12] 1355 	mov	r0,a
      00256E C0 01            [24] 1356 	push	ar1
      002570 E5 10            [12] 1357 	mov	a,_bp
      002572 24 07            [12] 1358 	add	a,#0x07
      002574 F9               [12] 1359 	mov	r1,a
      002575 E6               [12] 1360 	mov	a,@r0
      002576 F7               [12] 1361 	mov	@r1,a
      002577 09               [12] 1362 	inc	r1
      002578 77 00            [12] 1363 	mov	@r1,#0x00
      00257A 09               [12] 1364 	inc	r1
      00257B 77 40            [12] 1365 	mov	@r1,#0x40
      00257D D0 01            [24] 1366 	pop	ar1
      00257F E5 10            [12] 1367 	mov	a,_bp
      002581 24 04            [12] 1368 	add	a,#0x04
      002583 F8               [12] 1369 	mov	r0,a
      002584 86 02            [24] 1370 	mov	ar2,@r0
      002586 7D 00            [12] 1371 	mov	r5,#0x00
      002588 7F 40            [12] 1372 	mov	r7,#0x40
      00258A D0 00            [24] 1373 	pop	ar0
      00258C C0 06            [24] 1374 	push	ar6
      00258E C0 02            [24] 1375 	push	ar2
      002590 C0 01            [24] 1376 	push	ar1
      002592 C0 00            [24] 1377 	push	ar0
      002594 C0 04            [24] 1378 	push	ar4
      002596 85 00 F0         [24] 1379 	mov	b,ar0
      002599 E5 10            [12] 1380 	mov	a,_bp
      00259B 24 07            [12] 1381 	add	a,#0x07
      00259D F8               [12] 1382 	mov	r0,a
      00259E E6               [12] 1383 	mov	a,@r0
      00259F C0 E0            [24] 1384 	push	acc
      0025A1 08               [12] 1385 	inc	r0
      0025A2 E6               [12] 1386 	mov	a,@r0
      0025A3 C0 E0            [24] 1387 	push	acc
      0025A5 08               [12] 1388 	inc	r0
      0025A6 E6               [12] 1389 	mov	a,@r0
      0025A7 C0 E0            [24] 1390 	push	acc
      0025A9 8A 82            [24] 1391 	mov	dpl,r2
      0025AB 8D 83            [24] 1392 	mov	dph,r5
      0025AD 8F F0            [24] 1393 	mov	b,r7
      0025AF 12 20 E0         [24] 1394 	lcall	_update
      0025B2 AF 82            [24] 1395 	mov	r7,dpl
      0025B4 E5 81            [12] 1396 	mov	a,sp
      0025B6 24 FC            [12] 1397 	add	a,#0xfc
      0025B8 F5 81            [12] 1398 	mov	sp,a
      0025BA D0 00            [24] 1399 	pop	ar0
      0025BC D0 01            [24] 1400 	pop	ar1
      0025BE D0 02            [24] 1401 	pop	ar2
      0025C0 D0 06            [24] 1402 	pop	ar6
      0025C2 D0 02            [24] 1403 	pop	ar2
      0025C4 EF               [12] 1404 	mov	a,r7
      0025C5 60 84            [24] 1405 	jz	00112$
                                   1406 ;	walk.c:184: if (!stpush(&cur)) bang();
      0025C7 8A 04            [24] 1407 	mov	ar4,r2
      0025C9 7D 00            [12] 1408 	mov	r5,#0x00
      0025CB 7F 40            [12] 1409 	mov	r7,#0x40
      0025CD 8C 82            [24] 1410 	mov	dpl,r4
      0025CF 8D 83            [24] 1411 	mov	dph,r5
      0025D1 8F F0            [24] 1412 	mov	b,r7
      0025D3 C0 06            [24] 1413 	push	ar6
      0025D5 C0 02            [24] 1414 	push	ar2
      0025D7 C0 01            [24] 1415 	push	ar1
      0025D9 C0 00            [24] 1416 	push	ar0
      0025DB 12 2A C9         [24] 1417 	lcall	_stpush
      0025DE E5 82            [12] 1418 	mov	a,dpl
      0025E0 D0 00            [24] 1419 	pop	ar0
      0025E2 D0 01            [24] 1420 	pop	ar1
      0025E4 D0 02            [24] 1421 	pop	ar2
      0025E6 D0 06            [24] 1422 	pop	ar6
      0025E8 70 13            [24] 1423 	jnz	00110$
      0025EA C0 06            [24] 1424 	push	ar6
      0025EC C0 02            [24] 1425 	push	ar2
      0025EE C0 01            [24] 1426 	push	ar1
      0025F0 C0 00            [24] 1427 	push	ar0
      0025F2 12 20 87         [24] 1428 	lcall	_bang
      0025F5 D0 00            [24] 1429 	pop	ar0
      0025F7 D0 01            [24] 1430 	pop	ar1
      0025F9 D0 02            [24] 1431 	pop	ar2
      0025FB D0 06            [24] 1432 	pop	ar6
      0025FD                       1433 00110$:
                                   1434 ;	walk.c:185: cur = t;
      0025FD C0 02            [24] 1435 	push	ar2
      0025FF C0 00            [24] 1436 	push	ar0
      002601 A8 10            [24] 1437 	mov	r0,_bp
      002603 08               [12] 1438 	inc	r0
      002604 C0 01            [24] 1439 	push	ar1
      002606 E5 10            [12] 1440 	mov	a,_bp
      002608 24 07            [12] 1441 	add	a,#0x07
      00260A F9               [12] 1442 	mov	r1,a
      00260B E6               [12] 1443 	mov	a,@r0
      00260C F7               [12] 1444 	mov	@r1,a
      00260D 09               [12] 1445 	inc	r1
      00260E 77 00            [12] 1446 	mov	@r1,#0x00
      002610 09               [12] 1447 	inc	r1
      002611 77 40            [12] 1448 	mov	@r1,#0x40
      002613 D0 01            [24] 1449 	pop	ar1
      002615 A8 10            [24] 1450 	mov	r0,_bp
      002617 08               [12] 1451 	inc	r0
      002618 08               [12] 1452 	inc	r0
      002619 86 02            [24] 1453 	mov	ar2,@r0
      00261B 7B 00            [12] 1454 	mov	r3,#0x00
      00261D 7F 40            [12] 1455 	mov	r7,#0x40
      00261F D0 00            [24] 1456 	pop	ar0
      002621 C0 06            [24] 1457 	push	ar6
      002623 C0 02            [24] 1458 	push	ar2
      002625 C0 01            [24] 1459 	push	ar1
      002627 C0 00            [24] 1460 	push	ar0
      002629 74 04            [12] 1461 	mov	a,#0x04
      00262B C0 E0            [24] 1462 	push	acc
      00262D E4               [12] 1463 	clr	a
      00262E C0 E0            [24] 1464 	push	acc
      002630 85 00 F0         [24] 1465 	mov	b,ar0
      002633 E5 10            [12] 1466 	mov	a,_bp
      002635 24 07            [12] 1467 	add	a,#0x07
      002637 F8               [12] 1468 	mov	r0,a
      002638 E6               [12] 1469 	mov	a,@r0
      002639 C0 E0            [24] 1470 	push	acc
      00263B 08               [12] 1471 	inc	r0
      00263C E6               [12] 1472 	mov	a,@r0
      00263D C0 E0            [24] 1473 	push	acc
      00263F 08               [12] 1474 	inc	r0
      002640 E6               [12] 1475 	mov	a,@r0
      002641 C0 E0            [24] 1476 	push	acc
      002643 8A 82            [24] 1477 	mov	dpl,r2
      002645 8B 83            [24] 1478 	mov	dph,r3
      002647 8F F0            [24] 1479 	mov	b,r7
      002649 12 2D 22         [24] 1480 	lcall	___memcpy
      00264C E5 81            [12] 1481 	mov	a,sp
      00264E 24 FB            [12] 1482 	add	a,#0xfb
      002650 F5 81            [12] 1483 	mov	sp,a
      002652 D0 00            [24] 1484 	pop	ar0
      002654 D0 01            [24] 1485 	pop	ar1
      002656 D0 02            [24] 1486 	pop	ar2
      002658 D0 06            [24] 1487 	pop	ar6
                                   1488 ;	walk.c:186: goto process;
      00265A D0 02            [24] 1489 	pop	ar2
      00265C 02 23 D9         [24] 1490 	ljmp	00101$
      00265F                       1491 00115$:
                                   1492 ;	walk.c:190: printf("\033[%d;%dH.", cur.r + 4, cur.c + 1);
      00265F 86 05            [24] 1493 	mov	ar5,@r0
      002661 08               [12] 1494 	inc	r0
      002662 86 07            [24] 1495 	mov	ar7,@r0
      002664 18               [12] 1496 	dec	r0
      002665 0D               [12] 1497 	inc	r5
      002666 BD 00 01         [24] 1498 	cjne	r5,#0x00,00165$
      002669 0F               [12] 1499 	inc	r7
      00266A                       1500 00165$:
      00266A 87 03            [24] 1501 	mov	ar3,@r1
      00266C 09               [12] 1502 	inc	r1
      00266D 87 04            [24] 1503 	mov	ar4,@r1
      00266F 19               [12] 1504 	dec	r1
      002670 74 04            [12] 1505 	mov	a,#0x04
      002672 2B               [12] 1506 	add	a,r3
      002673 FB               [12] 1507 	mov	r3,a
      002674 E4               [12] 1508 	clr	a
      002675 3C               [12] 1509 	addc	a,r4
      002676 FC               [12] 1510 	mov	r4,a
      002677 C0 06            [24] 1511 	push	ar6
      002679 C0 02            [24] 1512 	push	ar2
      00267B C0 01            [24] 1513 	push	ar1
      00267D C0 00            [24] 1514 	push	ar0
      00267F C0 05            [24] 1515 	push	ar5
      002681 C0 07            [24] 1516 	push	ar7
      002683 C0 03            [24] 1517 	push	ar3
      002685 C0 04            [24] 1518 	push	ar4
      002687 74 98            [12] 1519 	mov	a,#___str_3
      002689 C0 E0            [24] 1520 	push	acc
      00268B 74 41            [12] 1521 	mov	a,#(___str_3 >> 8)
      00268D C0 E0            [24] 1522 	push	acc
      00268F 74 80            [12] 1523 	mov	a,#0x80
      002691 C0 E0            [24] 1524 	push	acc
      002693 12 2E 3B         [24] 1525 	lcall	_printf
      002696 E5 81            [12] 1526 	mov	a,sp
      002698 24 F9            [12] 1527 	add	a,#0xf9
      00269A F5 81            [12] 1528 	mov	sp,a
                                   1529 ;	walk.c:191: setOE(OE76_MASK6);
      00269C 75 82 40         [24] 1530 	mov	dpl,#0x40
      00269F 12 20 94         [24] 1531 	lcall	_setOE
      0026A2 D0 00            [24] 1532 	pop	ar0
      0026A4 D0 01            [24] 1533 	pop	ar1
      0026A6 D0 02            [24] 1534 	pop	ar2
      0026A8 D0 06            [24] 1535 	pop	ar6
                                   1536 ;	walk.c:193: if (stpop(&cur)) goto next;
      0026AA C0 00            [24] 1537 	push	ar0
      0026AC E5 10            [12] 1538 	mov	a,_bp
      0026AE 24 03            [12] 1539 	add	a,#0x03
      0026B0 F8               [12] 1540 	mov	r0,a
      0026B1 86 04            [24] 1541 	mov	ar4,@r0
      0026B3 7D 00            [12] 1542 	mov	r5,#0x00
      0026B5 7F 40            [12] 1543 	mov	r7,#0x40
      0026B7 D0 00            [24] 1544 	pop	ar0
      0026B9 8C 82            [24] 1545 	mov	dpl,r4
      0026BB 8D 83            [24] 1546 	mov	dph,r5
      0026BD 8F F0            [24] 1547 	mov	b,r7
      0026BF C0 06            [24] 1548 	push	ar6
      0026C1 C0 02            [24] 1549 	push	ar2
      0026C3 C0 01            [24] 1550 	push	ar1
      0026C5 C0 00            [24] 1551 	push	ar0
      0026C7 12 2B 2A         [24] 1552 	lcall	_stpop
      0026CA E5 82            [12] 1553 	mov	a,dpl
      0026CC D0 00            [24] 1554 	pop	ar0
      0026CE D0 01            [24] 1555 	pop	ar1
      0026D0 D0 02            [24] 1556 	pop	ar2
      0026D2 D0 06            [24] 1557 	pop	ar6
      0026D4 60 03            [24] 1558 	jz	00166$
      0026D6 02 24 63         [24] 1559 	ljmp	00102$
      0026D9                       1560 00166$:
                                   1561 ;	walk.c:195: unsetOE(OE76_MASK7 | OE76_MASK6);
      0026D9 75 82 C0         [24] 1562 	mov	dpl,#0xc0
      0026DC 12 20 AD         [24] 1563 	lcall	_unsetOE
                                   1564 ;	walk.c:197: return;
                                   1565 ;	walk.c:198: }
      0026DF 85 10 81         [24] 1566 	mov	sp,_bp
      0026E2 D0 10            [24] 1567 	pop	_bp
      0026E4 22               [24] 1568 	ret
                                   1569 ;------------------------------------------------------------
                                   1570 ;Allocation info for local variables in function 'main'
                                   1571 ;------------------------------------------------------------
                                   1572 ;initial                   Allocated to stack - _bp +7
                                   1573 ;N                         Allocated to stack - _bp +11
                                   1574 ;i                         Allocated to stack - _bp +5
                                   1575 ;j                         Allocated to registers r2 r6 
                                   1576 ;sloc0                     Allocated to stack - _bp +1
                                   1577 ;sloc1                     Allocated to stack - _bp +3
                                   1578 ;sloc2                     Allocated to stack - _bp +15
                                   1579 ;------------------------------------------------------------
                                   1580 ;	walk.c:200: void main(void) {
                                   1581 ;	-----------------------------------------
                                   1582 ;	 function main
                                   1583 ;	-----------------------------------------
      0026E5                       1584 _main:
      0026E5 C0 10            [24] 1585 	push	_bp
      0026E7 E5 81            [12] 1586 	mov	a,sp
      0026E9 F5 10            [12] 1587 	mov	_bp,a
      0026EB 24 0C            [12] 1588 	add	a,#0x0c
      0026ED F5 81            [12] 1589 	mov	sp,a
                                   1590 ;	walk.c:205: i0 = 1u;
      0026EF 78 11            [12] 1591 	mov	r0,#_i0
      0026F1 76 01            [12] 1592 	mov	@r0,#0x01
                                   1593 ;	walk.c:207: P1_7 = 1;
                                   1594 ;	assignBit
      0026F3 D2 97            [12] 1595 	setb	_P1_7
                                   1596 ;	walk.c:208: IT0 = 1;
                                   1597 ;	assignBit
      0026F5 D2 88            [12] 1598 	setb	_IT0
                                   1599 ;	walk.c:209: EX0 = 1;
                                   1600 ;	assignBit
      0026F7 D2 A8            [12] 1601 	setb	_EX0
                                   1602 ;	walk.c:210: EA = 1;
                                   1603 ;	assignBit
      0026F9 D2 AF            [12] 1604 	setb	_EA
                                   1605 ;	walk.c:212: srand(RND);
      0026FB 90 80 00         [24] 1606 	mov	dptr,#_RND
      0026FE E0               [24] 1607 	movx	a,@dptr
      0026FF FE               [12] 1608 	mov	r6,a
      002700 A3               [24] 1609 	inc	dptr
      002701 E0               [24] 1610 	movx	a,@dptr
      002702 FF               [12] 1611 	mov	r7,a
      002703 8E 82            [24] 1612 	mov	dpl,r6
      002705 8F 83            [24] 1613 	mov	dph,r7
      002707 12 2C 50         [24] 1614 	lcall	_srand
                                   1615 ;	walk.c:213: stinit();
      00270A 12 2A C0         [24] 1616 	lcall	_stinit
                                   1617 ;	walk.c:215: puts("\033[2J\033[?25l");
      00270D 90 41 A2         [24] 1618 	mov	dptr,#___str_4
      002710 75 F0 80         [24] 1619 	mov	b,#0x80
      002713 12 2D B5         [24] 1620 	lcall	_puts
                                   1621 ;	walk.c:217: while (i0) {
      002716 E5 10            [12] 1622 	mov	a,_bp
      002718 24 07            [12] 1623 	add	a,#0x07
      00271A F9               [12] 1624 	mov	r1,a
      00271B FF               [12] 1625 	mov	r7,a
      00271C E5 10            [12] 1626 	mov	a,_bp
      00271E 24 0B            [12] 1627 	add	a,#0x0b
      002720 F8               [12] 1628 	mov	r0,a
      002721 E4               [12] 1629 	clr	a
      002722 F6               [12] 1630 	mov	@r0,a
      002723 08               [12] 1631 	inc	r0
      002724 F6               [12] 1632 	mov	@r0,a
      002725                       1633 00108$:
      002725 78 11            [12] 1634 	mov	r0,#_i0
      002727 E6               [12] 1635 	mov	a,@r0
      002728 70 03            [24] 1636 	jnz	00182$
      00272A 02 2A AC         [24] 1637 	ljmp	00110$
      00272D                       1638 00182$:
                                   1639 ;	walk.c:218: for (i = 0; i < ROWS; i++)
      00272D 7B 00            [12] 1640 	mov	r3,#0x00
      00272F 7C 00            [12] 1641 	mov	r4,#0x00
      002731 A8 10            [24] 1642 	mov	r0,_bp
      002733 08               [12] 1643 	inc	r0
      002734 E4               [12] 1644 	clr	a
      002735 F6               [12] 1645 	mov	@r0,a
      002736 08               [12] 1646 	inc	r0
      002737 F6               [12] 1647 	mov	@r0,a
                                   1648 ;	walk.c:219: for (j = 0; j < COLS; j++)
      002738                       1649 00125$:
      002738 A8 10            [24] 1650 	mov	r0,_bp
      00273A 08               [12] 1651 	inc	r0
      00273B C0 01            [24] 1652 	push	ar1
      00273D E5 10            [12] 1653 	mov	a,_bp
      00273F 24 03            [12] 1654 	add	a,#0x03
      002741 F9               [12] 1655 	mov	r1,a
      002742 E6               [12] 1656 	mov	a,@r0
      002743 24 00            [12] 1657 	add	a,#_g
      002745 F7               [12] 1658 	mov	@r1,a
      002746 08               [12] 1659 	inc	r0
      002747 E6               [12] 1660 	mov	a,@r0
      002748 34 43            [12] 1661 	addc	a,#(_g >> 8)
      00274A 09               [12] 1662 	inc	r1
      00274B F7               [12] 1663 	mov	@r1,a
      00274C D0 01            [24] 1664 	pop	ar1
      00274E 7A 00            [12] 1665 	mov	r2,#0x00
      002750 7E 00            [12] 1666 	mov	r6,#0x00
      002752                       1667 00112$:
                                   1668 ;	walk.c:220: g[i][j] = 0x55u;
      002752 E5 10            [12] 1669 	mov	a,_bp
      002754 24 03            [12] 1670 	add	a,#0x03
      002756 F8               [12] 1671 	mov	r0,a
      002757 EA               [12] 1672 	mov	a,r2
      002758 26               [12] 1673 	add	a,@r0
      002759 F5 82            [12] 1674 	mov	dpl,a
      00275B EE               [12] 1675 	mov	a,r6
      00275C 08               [12] 1676 	inc	r0
      00275D 36               [12] 1677 	addc	a,@r0
      00275E F5 83            [12] 1678 	mov	dph,a
      002760 74 55            [12] 1679 	mov	a,#0x55
      002762 F0               [24] 1680 	movx	@dptr,a
                                   1681 ;	walk.c:219: for (j = 0; j < COLS; j++)
      002763 0A               [12] 1682 	inc	r2
      002764 BA 00 01         [24] 1683 	cjne	r2,#0x00,00183$
      002767 0E               [12] 1684 	inc	r6
      002768                       1685 00183$:
      002768 C3               [12] 1686 	clr	c
      002769 EA               [12] 1687 	mov	a,r2
      00276A 94 C9            [12] 1688 	subb	a,#0xc9
      00276C EE               [12] 1689 	mov	a,r6
      00276D 64 80            [12] 1690 	xrl	a,#0x80
      00276F 94 80            [12] 1691 	subb	a,#0x80
      002771 40 DF            [24] 1692 	jc	00112$
                                   1693 ;	walk.c:218: for (i = 0; i < ROWS; i++)
      002773 A8 10            [24] 1694 	mov	r0,_bp
      002775 08               [12] 1695 	inc	r0
      002776 74 C9            [12] 1696 	mov	a,#0xc9
      002778 26               [12] 1697 	add	a,@r0
      002779 F6               [12] 1698 	mov	@r0,a
      00277A E4               [12] 1699 	clr	a
      00277B 08               [12] 1700 	inc	r0
      00277C 36               [12] 1701 	addc	a,@r0
      00277D F6               [12] 1702 	mov	@r0,a
      00277E 0B               [12] 1703 	inc	r3
      00277F BB 00 01         [24] 1704 	cjne	r3,#0x00,00185$
      002782 0C               [12] 1705 	inc	r4
      002783                       1706 00185$:
      002783 C3               [12] 1707 	clr	c
      002784 EB               [12] 1708 	mov	a,r3
      002785 94 30            [12] 1709 	subb	a,#0x30
      002787 EC               [12] 1710 	mov	a,r4
      002788 64 80            [12] 1711 	xrl	a,#0x80
      00278A 94 80            [12] 1712 	subb	a,#0x80
      00278C 40 AA            [24] 1713 	jc	00125$
                                   1714 ;	walk.c:222: initial.r = rand() % ROWS;
      00278E E5 10            [12] 1715 	mov	a,_bp
      002790 24 07            [12] 1716 	add	a,#0x07
      002792 F8               [12] 1717 	mov	r0,a
      002793 C0 07            [24] 1718 	push	ar7
      002795 C0 01            [24] 1719 	push	ar1
      002797 C0 00            [24] 1720 	push	ar0
      002799 12 2B 8C         [24] 1721 	lcall	_rand
      00279C AD 82            [24] 1722 	mov	r5,dpl
      00279E AE 83            [24] 1723 	mov	r6,dph
      0027A0 74 30            [12] 1724 	mov	a,#0x30
      0027A2 C0 E0            [24] 1725 	push	acc
      0027A4 E4               [12] 1726 	clr	a
      0027A5 C0 E0            [24] 1727 	push	acc
      0027A7 8D 82            [24] 1728 	mov	dpl,r5
      0027A9 8E 83            [24] 1729 	mov	dph,r6
      0027AB 12 2E 90         [24] 1730 	lcall	__modsint
      0027AE AD 82            [24] 1731 	mov	r5,dpl
      0027B0 AE 83            [24] 1732 	mov	r6,dph
      0027B2 15 81            [12] 1733 	dec	sp
      0027B4 15 81            [12] 1734 	dec	sp
      0027B6 D0 00            [24] 1735 	pop	ar0
      0027B8 D0 01            [24] 1736 	pop	ar1
      0027BA A6 05            [24] 1737 	mov	@r0,ar5
      0027BC 08               [12] 1738 	inc	r0
      0027BD A6 06            [24] 1739 	mov	@r0,ar6
      0027BF 18               [12] 1740 	dec	r0
                                   1741 ;	walk.c:223: initial.c = rand() % COLS;
      0027C0 74 02            [12] 1742 	mov	a,#0x02
      0027C2 29               [12] 1743 	add	a,r1
      0027C3 F8               [12] 1744 	mov	r0,a
      0027C4 C0 01            [24] 1745 	push	ar1
      0027C6 C0 00            [24] 1746 	push	ar0
      0027C8 12 2B 8C         [24] 1747 	lcall	_rand
      0027CB AD 82            [24] 1748 	mov	r5,dpl
      0027CD AE 83            [24] 1749 	mov	r6,dph
      0027CF 74 C9            [12] 1750 	mov	a,#0xc9
      0027D1 C0 E0            [24] 1751 	push	acc
      0027D3 E4               [12] 1752 	clr	a
      0027D4 C0 E0            [24] 1753 	push	acc
      0027D6 8D 82            [24] 1754 	mov	dpl,r5
      0027D8 8E 83            [24] 1755 	mov	dph,r6
      0027DA 12 2E 90         [24] 1756 	lcall	__modsint
      0027DD AD 82            [24] 1757 	mov	r5,dpl
      0027DF AE 83            [24] 1758 	mov	r6,dph
      0027E1 15 81            [12] 1759 	dec	sp
      0027E3 15 81            [12] 1760 	dec	sp
      0027E5 D0 00            [24] 1761 	pop	ar0
      0027E7 A6 05            [24] 1762 	mov	@r0,ar5
      0027E9 08               [12] 1763 	inc	r0
      0027EA A6 06            [24] 1764 	mov	@r0,ar6
      0027EC 18               [12] 1765 	dec	r0
                                   1766 ;	walk.c:225: puts("\033[2J\033[?25l");
      0027ED 90 41 A2         [24] 1767 	mov	dptr,#___str_4
      0027F0 75 F0 80         [24] 1768 	mov	b,#0x80
      0027F3 C0 00            [24] 1769 	push	ar0
      0027F5 12 2D B5         [24] 1770 	lcall	_puts
      0027F8 D0 00            [24] 1771 	pop	ar0
      0027FA D0 01            [24] 1772 	pop	ar1
                                   1773 ;	walk.c:226: printf("\033[1;1H% 8u% 8d% 8d", N, initial.r, initial.c);
      0027FC 86 05            [24] 1774 	mov	ar5,@r0
      0027FE 08               [12] 1775 	inc	r0
      0027FF 86 06            [24] 1776 	mov	ar6,@r0
      002801 18               [12] 1777 	dec	r0
      002802 87 03            [24] 1778 	mov	ar3,@r1
      002804 09               [12] 1779 	inc	r1
      002805 87 04            [24] 1780 	mov	ar4,@r1
      002807 19               [12] 1781 	dec	r1
      002808 C0 01            [24] 1782 	push	ar1
      00280A C0 05            [24] 1783 	push	ar5
      00280C C0 06            [24] 1784 	push	ar6
      00280E C0 03            [24] 1785 	push	ar3
      002810 C0 04            [24] 1786 	push	ar4
      002812 E5 10            [12] 1787 	mov	a,_bp
      002814 24 0B            [12] 1788 	add	a,#0x0b
      002816 F8               [12] 1789 	mov	r0,a
      002817 E6               [12] 1790 	mov	a,@r0
      002818 C0 E0            [24] 1791 	push	acc
      00281A 08               [12] 1792 	inc	r0
      00281B E6               [12] 1793 	mov	a,@r0
      00281C C0 E0            [24] 1794 	push	acc
      00281E 74 AD            [12] 1795 	mov	a,#___str_5
      002820 C0 E0            [24] 1796 	push	acc
      002822 74 41            [12] 1797 	mov	a,#(___str_5 >> 8)
      002824 C0 E0            [24] 1798 	push	acc
      002826 74 80            [12] 1799 	mov	a,#0x80
      002828 C0 E0            [24] 1800 	push	acc
      00282A 12 2E 3B         [24] 1801 	lcall	_printf
      00282D E5 81            [12] 1802 	mov	a,sp
      00282F 24 F7            [12] 1803 	add	a,#0xf7
      002831 F5 81            [12] 1804 	mov	sp,a
      002833 D0 01            [24] 1805 	pop	ar1
      002835 D0 07            [24] 1806 	pop	ar7
                                   1807 ;	walk.c:228: for (i = 0; i < REG; i++) {
      002837 E5 10            [12] 1808 	mov	a,_bp
      002839 24 05            [12] 1809 	add	a,#0x05
      00283B F8               [12] 1810 	mov	r0,a
      00283C E4               [12] 1811 	clr	a
      00283D F6               [12] 1812 	mov	@r0,a
      00283E 08               [12] 1813 	inc	r0
      00283F F6               [12] 1814 	mov	@r0,a
      002840                       1815 00116$:
                                   1816 ;	walk.c:229: neigh[i].r = neigh[REG + i].r * (1 + rand() % 8);
      002840 C0 07            [24] 1817 	push	ar7
      002842 E5 10            [12] 1818 	mov	a,_bp
      002844 24 05            [12] 1819 	add	a,#0x05
      002846 F8               [12] 1820 	mov	r0,a
      002847 E6               [12] 1821 	mov	a,@r0
      002848 25 E0            [12] 1822 	add	a,acc
      00284A FB               [12] 1823 	mov	r3,a
      00284B 08               [12] 1824 	inc	r0
      00284C E6               [12] 1825 	mov	a,@r0
      00284D 33               [12] 1826 	rlc	a
      00284E FC               [12] 1827 	mov	r4,a
      00284F EB               [12] 1828 	mov	a,r3
      002850 2B               [12] 1829 	add	a,r3
      002851 FB               [12] 1830 	mov	r3,a
      002852 EC               [12] 1831 	mov	a,r4
      002853 33               [12] 1832 	rlc	a
      002854 FC               [12] 1833 	mov	r4,a
      002855 E5 10            [12] 1834 	mov	a,_bp
      002857 24 03            [12] 1835 	add	a,#0x03
      002859 F8               [12] 1836 	mov	r0,a
      00285A EB               [12] 1837 	mov	a,r3
      00285B 24 72            [12] 1838 	add	a,#_neigh
      00285D F6               [12] 1839 	mov	@r0,a
      00285E EC               [12] 1840 	mov	a,r4
      00285F 34 FF            [12] 1841 	addc	a,#(_neigh >> 8)
      002861 08               [12] 1842 	inc	r0
      002862 F6               [12] 1843 	mov	@r0,a
      002863 E5 10            [12] 1844 	mov	a,_bp
      002865 24 05            [12] 1845 	add	a,#0x05
      002867 F8               [12] 1846 	mov	r0,a
      002868 86 06            [24] 1847 	mov	ar6,@r0
      00286A 74 08            [12] 1848 	mov	a,#0x08
      00286C 2E               [12] 1849 	add	a,r6
      00286D FE               [12] 1850 	mov	r6,a
      00286E C2 D5            [12] 1851 	clr	F0
      002870 75 F0 04         [24] 1852 	mov	b,#0x04
      002873 EE               [12] 1853 	mov	a,r6
      002874 30 E7 04         [24] 1854 	jnb	acc.7,00187$
      002877 B2 D5            [12] 1855 	cpl	F0
      002879 F4               [12] 1856 	cpl	a
      00287A 04               [12] 1857 	inc	a
      00287B                       1858 00187$:
      00287B A4               [48] 1859 	mul	ab
      00287C 30 D5 0A         [24] 1860 	jnb	F0,00188$
      00287F F4               [12] 1861 	cpl	a
      002880 24 01            [12] 1862 	add	a,#0x01
      002882 C5 F0            [12] 1863 	xch	a,b
      002884 F4               [12] 1864 	cpl	a
      002885 34 00            [12] 1865 	addc	a,#0x00
      002887 C5 F0            [12] 1866 	xch	a,b
      002889                       1867 00188$:
      002889 FE               [12] 1868 	mov	r6,a
      00288A AD F0            [24] 1869 	mov	r5,b
      00288C 24 72            [12] 1870 	add	a,#_neigh
      00288E F5 82            [12] 1871 	mov	dpl,a
      002890 ED               [12] 1872 	mov	a,r5
      002891 34 FF            [12] 1873 	addc	a,#(_neigh >> 8)
      002893 F5 83            [12] 1874 	mov	dph,a
      002895 A8 10            [24] 1875 	mov	r0,_bp
      002897 08               [12] 1876 	inc	r0
      002898 E0               [24] 1877 	movx	a,@dptr
      002899 F6               [12] 1878 	mov	@r0,a
      00289A A3               [24] 1879 	inc	dptr
      00289B E0               [24] 1880 	movx	a,@dptr
      00289C 08               [12] 1881 	inc	r0
      00289D F6               [12] 1882 	mov	@r0,a
      00289E C0 06            [24] 1883 	push	ar6
      0028A0 C0 05            [24] 1884 	push	ar5
      0028A2 C0 04            [24] 1885 	push	ar4
      0028A4 C0 03            [24] 1886 	push	ar3
      0028A6 C0 01            [24] 1887 	push	ar1
      0028A8 12 2B 8C         [24] 1888 	lcall	_rand
      0028AB AA 82            [24] 1889 	mov	r2,dpl
      0028AD AF 83            [24] 1890 	mov	r7,dph
      0028AF 74 08            [12] 1891 	mov	a,#0x08
      0028B1 C0 E0            [24] 1892 	push	acc
      0028B3 E4               [12] 1893 	clr	a
      0028B4 C0 E0            [24] 1894 	push	acc
      0028B6 8A 82            [24] 1895 	mov	dpl,r2
      0028B8 8F 83            [24] 1896 	mov	dph,r7
      0028BA 12 2E 90         [24] 1897 	lcall	__modsint
      0028BD AA 82            [24] 1898 	mov	r2,dpl
      0028BF AF 83            [24] 1899 	mov	r7,dph
      0028C1 15 81            [12] 1900 	dec	sp
      0028C3 15 81            [12] 1901 	dec	sp
      0028C5 D0 01            [24] 1902 	pop	ar1
      0028C7 D0 03            [24] 1903 	pop	ar3
      0028C9 D0 04            [24] 1904 	pop	ar4
      0028CB D0 05            [24] 1905 	pop	ar5
      0028CD D0 06            [24] 1906 	pop	ar6
      0028CF 0A               [12] 1907 	inc	r2
      0028D0 BA 00 01         [24] 1908 	cjne	r2,#0x00,00189$
      0028D3 0F               [12] 1909 	inc	r7
      0028D4                       1910 00189$:
      0028D4 C0 06            [24] 1911 	push	ar6
      0028D6 C0 05            [24] 1912 	push	ar5
      0028D8 C0 04            [24] 1913 	push	ar4
      0028DA C0 03            [24] 1914 	push	ar3
      0028DC C0 01            [24] 1915 	push	ar1
      0028DE C0 02            [24] 1916 	push	ar2
      0028E0 C0 07            [24] 1917 	push	ar7
      0028E2 A8 10            [24] 1918 	mov	r0,_bp
      0028E4 08               [12] 1919 	inc	r0
      0028E5 86 82            [24] 1920 	mov	dpl,@r0
      0028E7 08               [12] 1921 	inc	r0
      0028E8 86 83            [24] 1922 	mov	dph,@r0
      0028EA 12 2C 84         [24] 1923 	lcall	__mulint
      0028ED AA 82            [24] 1924 	mov	r2,dpl
      0028EF AF 83            [24] 1925 	mov	r7,dph
      0028F1 15 81            [12] 1926 	dec	sp
      0028F3 15 81            [12] 1927 	dec	sp
      0028F5 D0 01            [24] 1928 	pop	ar1
      0028F7 D0 03            [24] 1929 	pop	ar3
      0028F9 D0 04            [24] 1930 	pop	ar4
      0028FB D0 05            [24] 1931 	pop	ar5
      0028FD D0 06            [24] 1932 	pop	ar6
      0028FF E5 10            [12] 1933 	mov	a,_bp
      002901 24 03            [12] 1934 	add	a,#0x03
      002903 F8               [12] 1935 	mov	r0,a
      002904 86 82            [24] 1936 	mov	dpl,@r0
      002906 08               [12] 1937 	inc	r0
      002907 86 83            [24] 1938 	mov	dph,@r0
      002909 EA               [12] 1939 	mov	a,r2
      00290A F0               [24] 1940 	movx	@dptr,a
      00290B EF               [12] 1941 	mov	a,r7
      00290C A3               [24] 1942 	inc	dptr
      00290D F0               [24] 1943 	movx	@dptr,a
                                   1944 ;	walk.c:230: neigh[i].c = neigh[REG + i].c * (1 + rand() % 8);
      00290E EB               [12] 1945 	mov	a,r3
      00290F 24 72            [12] 1946 	add	a,#_neigh
      002911 FB               [12] 1947 	mov	r3,a
      002912 EC               [12] 1948 	mov	a,r4
      002913 34 FF            [12] 1949 	addc	a,#(_neigh >> 8)
      002915 FC               [12] 1950 	mov	r4,a
      002916 74 02            [12] 1951 	mov	a,#0x02
      002918 2B               [12] 1952 	add	a,r3
      002919 FA               [12] 1953 	mov	r2,a
      00291A E4               [12] 1954 	clr	a
      00291B 3C               [12] 1955 	addc	a,r4
      00291C FF               [12] 1956 	mov	r7,a
      00291D EE               [12] 1957 	mov	a,r6
      00291E 24 72            [12] 1958 	add	a,#_neigh
      002920 FE               [12] 1959 	mov	r6,a
      002921 ED               [12] 1960 	mov	a,r5
      002922 34 FF            [12] 1961 	addc	a,#(_neigh >> 8)
      002924 FD               [12] 1962 	mov	r5,a
      002925 8E 82            [24] 1963 	mov	dpl,r6
      002927 8D 83            [24] 1964 	mov	dph,r5
      002929 A3               [24] 1965 	inc	dptr
      00292A A3               [24] 1966 	inc	dptr
      00292B E5 10            [12] 1967 	mov	a,_bp
      00292D 24 03            [12] 1968 	add	a,#0x03
      00292F F8               [12] 1969 	mov	r0,a
      002930 E0               [24] 1970 	movx	a,@dptr
      002931 F6               [12] 1971 	mov	@r0,a
      002932 A3               [24] 1972 	inc	dptr
      002933 E0               [24] 1973 	movx	a,@dptr
      002934 08               [12] 1974 	inc	r0
      002935 F6               [12] 1975 	mov	@r0,a
      002936 C0 07            [24] 1976 	push	ar7
      002938 C0 04            [24] 1977 	push	ar4
      00293A C0 03            [24] 1978 	push	ar3
      00293C C0 02            [24] 1979 	push	ar2
      00293E C0 01            [24] 1980 	push	ar1
      002940 12 2B 8C         [24] 1981 	lcall	_rand
      002943 AD 82            [24] 1982 	mov	r5,dpl
      002945 AE 83            [24] 1983 	mov	r6,dph
      002947 74 08            [12] 1984 	mov	a,#0x08
      002949 C0 E0            [24] 1985 	push	acc
      00294B E4               [12] 1986 	clr	a
      00294C C0 E0            [24] 1987 	push	acc
      00294E 8D 82            [24] 1988 	mov	dpl,r5
      002950 8E 83            [24] 1989 	mov	dph,r6
      002952 12 2E 90         [24] 1990 	lcall	__modsint
      002955 AD 82            [24] 1991 	mov	r5,dpl
      002957 AE 83            [24] 1992 	mov	r6,dph
      002959 15 81            [12] 1993 	dec	sp
      00295B 15 81            [12] 1994 	dec	sp
      00295D D0 01            [24] 1995 	pop	ar1
      00295F D0 02            [24] 1996 	pop	ar2
      002961 D0 03            [24] 1997 	pop	ar3
      002963 D0 04            [24] 1998 	pop	ar4
      002965 D0 07            [24] 1999 	pop	ar7
      002967 0D               [12] 2000 	inc	r5
      002968 BD 00 01         [24] 2001 	cjne	r5,#0x00,00190$
      00296B 0E               [12] 2002 	inc	r6
      00296C                       2003 00190$:
      00296C C0 07            [24] 2004 	push	ar7
      00296E C0 04            [24] 2005 	push	ar4
      002970 C0 03            [24] 2006 	push	ar3
      002972 C0 02            [24] 2007 	push	ar2
      002974 C0 01            [24] 2008 	push	ar1
      002976 C0 05            [24] 2009 	push	ar5
      002978 C0 06            [24] 2010 	push	ar6
      00297A E5 10            [12] 2011 	mov	a,_bp
      00297C 24 03            [12] 2012 	add	a,#0x03
      00297E F8               [12] 2013 	mov	r0,a
      00297F 86 82            [24] 2014 	mov	dpl,@r0
      002981 08               [12] 2015 	inc	r0
      002982 86 83            [24] 2016 	mov	dph,@r0
      002984 12 2C 84         [24] 2017 	lcall	__mulint
      002987 AD 82            [24] 2018 	mov	r5,dpl
      002989 AE 83            [24] 2019 	mov	r6,dph
      00298B 15 81            [12] 2020 	dec	sp
      00298D 15 81            [12] 2021 	dec	sp
      00298F D0 01            [24] 2022 	pop	ar1
      002991 D0 02            [24] 2023 	pop	ar2
      002993 D0 03            [24] 2024 	pop	ar3
      002995 D0 04            [24] 2025 	pop	ar4
      002997 D0 07            [24] 2026 	pop	ar7
      002999 8A 82            [24] 2027 	mov	dpl,r2
      00299B 8F 83            [24] 2028 	mov	dph,r7
      00299D ED               [12] 2029 	mov	a,r5
      00299E F0               [24] 2030 	movx	@dptr,a
      00299F EE               [12] 2031 	mov	a,r6
      0029A0 A3               [24] 2032 	inc	dptr
      0029A1 F0               [24] 2033 	movx	@dptr,a
                                   2034 ;	walk.c:231: printf("% 8d% 8d", neigh[i].r, neigh[i].c);
      0029A2 8B 82            [24] 2035 	mov	dpl,r3
      0029A4 8C 83            [24] 2036 	mov	dph,r4
      0029A6 E0               [24] 2037 	movx	a,@dptr
      0029A7 FB               [12] 2038 	mov	r3,a
      0029A8 A3               [24] 2039 	inc	dptr
      0029A9 E0               [24] 2040 	movx	a,@dptr
      0029AA FC               [12] 2041 	mov	r4,a
      0029AB C0 07            [24] 2042 	push	ar7
      0029AD C0 01            [24] 2043 	push	ar1
      0029AF C0 05            [24] 2044 	push	ar5
      0029B1 C0 06            [24] 2045 	push	ar6
      0029B3 C0 03            [24] 2046 	push	ar3
      0029B5 C0 04            [24] 2047 	push	ar4
      0029B7 74 C0            [12] 2048 	mov	a,#___str_6
      0029B9 C0 E0            [24] 2049 	push	acc
      0029BB 74 41            [12] 2050 	mov	a,#(___str_6 >> 8)
      0029BD C0 E0            [24] 2051 	push	acc
      0029BF 74 80            [12] 2052 	mov	a,#0x80
      0029C1 C0 E0            [24] 2053 	push	acc
      0029C3 12 2E 3B         [24] 2054 	lcall	_printf
      0029C6 E5 81            [12] 2055 	mov	a,sp
      0029C8 24 F9            [12] 2056 	add	a,#0xf9
      0029CA F5 81            [12] 2057 	mov	sp,a
      0029CC D0 01            [24] 2058 	pop	ar1
      0029CE D0 07            [24] 2059 	pop	ar7
                                   2060 ;	walk.c:228: for (i = 0; i < REG; i++) {
      0029D0 E5 10            [12] 2061 	mov	a,_bp
      0029D2 24 05            [12] 2062 	add	a,#0x05
      0029D4 F8               [12] 2063 	mov	r0,a
      0029D5 06               [12] 2064 	inc	@r0
      0029D6 B6 00 02         [24] 2065 	cjne	@r0,#0x00,00191$
      0029D9 08               [12] 2066 	inc	r0
      0029DA 06               [12] 2067 	inc	@r0
      0029DB                       2068 00191$:
      0029DB E5 10            [12] 2069 	mov	a,_bp
      0029DD 24 05            [12] 2070 	add	a,#0x05
      0029DF F8               [12] 2071 	mov	r0,a
      0029E0 86 05            [24] 2072 	mov	ar5,@r0
      0029E2 08               [12] 2073 	inc	r0
      0029E3 86 06            [24] 2074 	mov	ar6,@r0
      0029E5 C3               [12] 2075 	clr	c
      0029E6 ED               [12] 2076 	mov	a,r5
      0029E7 94 08            [12] 2077 	subb	a,#0x08
      0029E9 EE               [12] 2078 	mov	a,r6
      0029EA 94 00            [12] 2079 	subb	a,#0x00
      0029EC D0 07            [24] 2080 	pop	ar7
      0029EE 50 03            [24] 2081 	jnc	00192$
      0029F0 02 28 40         [24] 2082 	ljmp	00116$
      0029F3                       2083 00192$:
                                   2084 ;	walk.c:234: OE76 = OE76_0;
      0029F3 78 12            [12] 2085 	mov	r0,#_OE76
      0029F5 76 3F            [12] 2086 	mov	@r0,#0x3f
                                   2087 ;	walk.c:235: setOE(OE76_NC);
      0029F7 75 82 00         [24] 2088 	mov	dpl,#0x00
      0029FA C0 07            [24] 2089 	push	ar7
      0029FC C0 01            [24] 2090 	push	ar1
      0029FE 12 20 94         [24] 2091 	lcall	_setOE
      002A01 D0 01            [24] 2092 	pop	ar1
      002A03 D0 07            [24] 2093 	pop	ar7
                                   2094 ;	walk.c:237: walk(&initial);
      002A05 8F 04            [24] 2095 	mov	ar4,r7
      002A07 7D 00            [12] 2096 	mov	r5,#0x00
      002A09 7E 40            [12] 2097 	mov	r6,#0x40
      002A0B 8C 82            [24] 2098 	mov	dpl,r4
      002A0D 8D 83            [24] 2099 	mov	dph,r5
      002A0F 8E F0            [24] 2100 	mov	b,r6
      002A11 C0 07            [24] 2101 	push	ar7
      002A13 C0 01            [24] 2102 	push	ar1
      002A15 12 23 6D         [24] 2103 	lcall	_walk
      002A18 D0 01            [24] 2104 	pop	ar1
      002A1A D0 07            [24] 2105 	pop	ar7
                                   2106 ;	walk.c:239: for (i = 0; i < ROWS; i++)
      002A1C E5 10            [12] 2107 	mov	a,_bp
      002A1E 24 05            [12] 2108 	add	a,#0x05
      002A20 F8               [12] 2109 	mov	r0,a
      002A21 E4               [12] 2110 	clr	a
      002A22 F6               [12] 2111 	mov	@r0,a
      002A23 08               [12] 2112 	inc	r0
      002A24 F6               [12] 2113 	mov	@r0,a
      002A25 7B 00            [12] 2114 	mov	r3,#0x00
      002A27 7C 00            [12] 2115 	mov	r4,#0x00
                                   2116 ;	walk.c:240: for (j = 0; j < COLS; j++)
      002A29                       2117 00132$:
      002A29 E5 10            [12] 2118 	mov	a,_bp
      002A2B 24 03            [12] 2119 	add	a,#0x03
      002A2D F8               [12] 2120 	mov	r0,a
      002A2E EB               [12] 2121 	mov	a,r3
      002A2F 24 00            [12] 2122 	add	a,#_g
      002A31 F6               [12] 2123 	mov	@r0,a
      002A32 EC               [12] 2124 	mov	a,r4
      002A33 34 43            [12] 2125 	addc	a,#(_g >> 8)
      002A35 08               [12] 2126 	inc	r0
      002A36 F6               [12] 2127 	mov	@r0,a
      002A37 7A 00            [12] 2128 	mov	r2,#0x00
      002A39 7E 00            [12] 2129 	mov	r6,#0x00
      002A3B                       2130 00118$:
                                   2131 ;	walk.c:241: if (g[i][j] != 0xaau) bang();
      002A3B E5 10            [12] 2132 	mov	a,_bp
      002A3D 24 03            [12] 2133 	add	a,#0x03
      002A3F F8               [12] 2134 	mov	r0,a
      002A40 EA               [12] 2135 	mov	a,r2
      002A41 26               [12] 2136 	add	a,@r0
      002A42 F5 82            [12] 2137 	mov	dpl,a
      002A44 EE               [12] 2138 	mov	a,r6
      002A45 08               [12] 2139 	inc	r0
      002A46 36               [12] 2140 	addc	a,@r0
      002A47 F5 83            [12] 2141 	mov	dph,a
      002A49 E0               [24] 2142 	movx	a,@dptr
      002A4A FD               [12] 2143 	mov	r5,a
      002A4B BD AA 02         [24] 2144 	cjne	r5,#0xaa,00193$
      002A4E 80 1B            [24] 2145 	sjmp	00119$
      002A50                       2146 00193$:
      002A50 C0 07            [24] 2147 	push	ar7
      002A52 C0 06            [24] 2148 	push	ar6
      002A54 C0 04            [24] 2149 	push	ar4
      002A56 C0 03            [24] 2150 	push	ar3
      002A58 C0 02            [24] 2151 	push	ar2
      002A5A C0 01            [24] 2152 	push	ar1
      002A5C 12 20 87         [24] 2153 	lcall	_bang
      002A5F D0 01            [24] 2154 	pop	ar1
      002A61 D0 02            [24] 2155 	pop	ar2
      002A63 D0 03            [24] 2156 	pop	ar3
      002A65 D0 04            [24] 2157 	pop	ar4
      002A67 D0 06            [24] 2158 	pop	ar6
      002A69 D0 07            [24] 2159 	pop	ar7
      002A6B                       2160 00119$:
                                   2161 ;	walk.c:240: for (j = 0; j < COLS; j++)
      002A6B 0A               [12] 2162 	inc	r2
      002A6C BA 00 01         [24] 2163 	cjne	r2,#0x00,00194$
      002A6F 0E               [12] 2164 	inc	r6
      002A70                       2165 00194$:
      002A70 C3               [12] 2166 	clr	c
      002A71 EA               [12] 2167 	mov	a,r2
      002A72 94 C9            [12] 2168 	subb	a,#0xc9
      002A74 EE               [12] 2169 	mov	a,r6
      002A75 64 80            [12] 2170 	xrl	a,#0x80
      002A77 94 80            [12] 2171 	subb	a,#0x80
      002A79 40 C0            [24] 2172 	jc	00118$
                                   2173 ;	walk.c:239: for (i = 0; i < ROWS; i++)
      002A7B 74 C9            [12] 2174 	mov	a,#0xc9
      002A7D 2B               [12] 2175 	add	a,r3
      002A7E FB               [12] 2176 	mov	r3,a
      002A7F E4               [12] 2177 	clr	a
      002A80 3C               [12] 2178 	addc	a,r4
      002A81 FC               [12] 2179 	mov	r4,a
      002A82 E5 10            [12] 2180 	mov	a,_bp
      002A84 24 05            [12] 2181 	add	a,#0x05
      002A86 F8               [12] 2182 	mov	r0,a
      002A87 06               [12] 2183 	inc	@r0
      002A88 B6 00 02         [24] 2184 	cjne	@r0,#0x00,00196$
      002A8B 08               [12] 2185 	inc	r0
      002A8C 06               [12] 2186 	inc	@r0
      002A8D                       2187 00196$:
      002A8D E5 10            [12] 2188 	mov	a,_bp
      002A8F 24 05            [12] 2189 	add	a,#0x05
      002A91 F8               [12] 2190 	mov	r0,a
      002A92 C3               [12] 2191 	clr	c
      002A93 E6               [12] 2192 	mov	a,@r0
      002A94 94 30            [12] 2193 	subb	a,#0x30
      002A96 08               [12] 2194 	inc	r0
      002A97 E6               [12] 2195 	mov	a,@r0
      002A98 64 80            [12] 2196 	xrl	a,#0x80
      002A9A 94 80            [12] 2197 	subb	a,#0x80
      002A9C 40 8B            [24] 2198 	jc	00132$
                                   2199 ;	walk.c:243: N++;
      002A9E E5 10            [12] 2200 	mov	a,_bp
      002AA0 24 0B            [12] 2201 	add	a,#0x0b
      002AA2 F8               [12] 2202 	mov	r0,a
      002AA3 06               [12] 2203 	inc	@r0
      002AA4 B6 00 02         [24] 2204 	cjne	@r0,#0x00,00198$
      002AA7 08               [12] 2205 	inc	r0
      002AA8 06               [12] 2206 	inc	@r0
      002AA9                       2207 00198$:
      002AA9 02 27 25         [24] 2208 	ljmp	00108$
      002AAC                       2209 00110$:
                                   2210 ;	walk.c:246: EA = 0;
                                   2211 ;	assignBit
      002AAC C2 AF            [12] 2212 	clr	_EA
                                   2213 ;	walk.c:248: puts("\033[2J\033[?25h");
      002AAE 90 41 C9         [24] 2214 	mov	dptr,#___str_7
      002AB1 75 F0 80         [24] 2215 	mov	b,#0x80
      002AB4 12 2D B5         [24] 2216 	lcall	_puts
                                   2217 ;	walk.c:37: PCON |= 2;
      002AB7 43 87 02         [24] 2218 	orl	_PCON,#0x02
                                   2219 ;	walk.c:252: return;
                                   2220 ;	walk.c:253: }
      002ABA 85 10 81         [24] 2221 	mov	sp,_bp
      002ABD D0 10            [24] 2222 	pop	_bp
      002ABF 22               [24] 2223 	ret
                                   2224 ;------------------------------------------------------------
                                   2225 ;Allocation info for local variables in function 'stinit'
                                   2226 ;------------------------------------------------------------
                                   2227 ;	walk.c:255: static void stinit(void) {
                                   2228 ;	-----------------------------------------
                                   2229 ;	 function stinit
                                   2230 ;	-----------------------------------------
      002AC0                       2231 _stinit:
                                   2232 ;	walk.c:256: sp = -1;
      002AC0 90 FF 70         [24] 2233 	mov	dptr,#_sp
      002AC3 74 FF            [12] 2234 	mov	a,#0xff
      002AC5 F0               [24] 2235 	movx	@dptr,a
      002AC6 A3               [24] 2236 	inc	dptr
      002AC7 F0               [24] 2237 	movx	@dptr,a
                                   2238 ;	walk.c:257: return;
                                   2239 ;	walk.c:258: }
      002AC8 22               [24] 2240 	ret
                                   2241 ;------------------------------------------------------------
                                   2242 ;Allocation info for local variables in function 'stpush'
                                   2243 ;------------------------------------------------------------
                                   2244 ;t                         Allocated to registers r5 r6 r7 
                                   2245 ;------------------------------------------------------------
                                   2246 ;	walk.c:260: static uint8_t stpush(struct node *t) {
                                   2247 ;	-----------------------------------------
                                   2248 ;	 function stpush
                                   2249 ;	-----------------------------------------
      002AC9                       2250 _stpush:
      002AC9 AD 82            [24] 2251 	mov	r5,dpl
      002ACB AE 83            [24] 2252 	mov	r6,dph
      002ACD AF F0            [24] 2253 	mov	r7,b
                                   2254 ;	walk.c:261: if (sp == (SMAX - 1)) return 0u;
      002ACF 90 FF 70         [24] 2255 	mov	dptr,#_sp
      002AD2 E0               [24] 2256 	movx	a,@dptr
      002AD3 FB               [12] 2257 	mov	r3,a
      002AD4 A3               [24] 2258 	inc	dptr
      002AD5 E0               [24] 2259 	movx	a,@dptr
      002AD6 FC               [12] 2260 	mov	r4,a
      002AD7 BB AF 07         [24] 2261 	cjne	r3,#0xaf,00102$
      002ADA BC 25 04         [24] 2262 	cjne	r4,#0x25,00102$
      002ADD 75 82 00         [24] 2263 	mov	dpl,#0x00
      002AE0 22               [24] 2264 	ret
      002AE1                       2265 00102$:
                                   2266 ;	walk.c:262: sp++;
      002AE1 90 FF 70         [24] 2267 	mov	dptr,#_sp
      002AE4 74 01            [12] 2268 	mov	a,#0x01
      002AE6 2B               [12] 2269 	add	a,r3
      002AE7 F0               [24] 2270 	movx	@dptr,a
      002AE8 E4               [12] 2271 	clr	a
      002AE9 3C               [12] 2272 	addc	a,r4
      002AEA A3               [24] 2273 	inc	dptr
      002AEB F0               [24] 2274 	movx	@dptr,a
                                   2275 ;	walk.c:263: stack[sp] = *t;
      002AEC 90 FF 70         [24] 2276 	mov	dptr,#_sp
      002AEF E0               [24] 2277 	movx	a,@dptr
      002AF0 FB               [12] 2278 	mov	r3,a
      002AF1 A3               [24] 2279 	inc	dptr
      002AF2 E0               [24] 2280 	movx	a,@dptr
      002AF3 FC               [12] 2281 	mov	r4,a
      002AF4 EB               [12] 2282 	mov	a,r3
      002AF5 2B               [12] 2283 	add	a,r3
      002AF6 FB               [12] 2284 	mov	r3,a
      002AF7 EC               [12] 2285 	mov	a,r4
      002AF8 33               [12] 2286 	rlc	a
      002AF9 FC               [12] 2287 	mov	r4,a
      002AFA EB               [12] 2288 	mov	a,r3
      002AFB 2B               [12] 2289 	add	a,r3
      002AFC FB               [12] 2290 	mov	r3,a
      002AFD EC               [12] 2291 	mov	a,r4
      002AFE 33               [12] 2292 	rlc	a
      002AFF FC               [12] 2293 	mov	r4,a
      002B00 EB               [12] 2294 	mov	a,r3
      002B01 24 B0            [12] 2295 	add	a,#_stack
      002B03 FB               [12] 2296 	mov	r3,a
      002B04 EC               [12] 2297 	mov	a,r4
      002B05 34 68            [12] 2298 	addc	a,#(_stack >> 8)
      002B07 FC               [12] 2299 	mov	r4,a
      002B08 7A 00            [12] 2300 	mov	r2,#0x00
      002B0A 74 04            [12] 2301 	mov	a,#0x04
      002B0C C0 E0            [24] 2302 	push	acc
      002B0E E4               [12] 2303 	clr	a
      002B0F C0 E0            [24] 2304 	push	acc
      002B11 C0 05            [24] 2305 	push	ar5
      002B13 C0 06            [24] 2306 	push	ar6
      002B15 C0 07            [24] 2307 	push	ar7
      002B17 8B 82            [24] 2308 	mov	dpl,r3
      002B19 8C 83            [24] 2309 	mov	dph,r4
      002B1B 8A F0            [24] 2310 	mov	b,r2
      002B1D 12 2D 22         [24] 2311 	lcall	___memcpy
      002B20 E5 81            [12] 2312 	mov	a,sp
      002B22 24 FB            [12] 2313 	add	a,#0xfb
      002B24 F5 81            [12] 2314 	mov	sp,a
                                   2315 ;	walk.c:264: return 1u;
      002B26 75 82 01         [24] 2316 	mov	dpl,#0x01
                                   2317 ;	walk.c:265: }
      002B29 22               [24] 2318 	ret
                                   2319 ;------------------------------------------------------------
                                   2320 ;Allocation info for local variables in function 'stpop'
                                   2321 ;------------------------------------------------------------
                                   2322 ;t                         Allocated to registers r5 r6 r7 
                                   2323 ;------------------------------------------------------------
                                   2324 ;	walk.c:267: static uint8_t stpop(struct node *t) {
                                   2325 ;	-----------------------------------------
                                   2326 ;	 function stpop
                                   2327 ;	-----------------------------------------
      002B2A                       2328 _stpop:
      002B2A AD 82            [24] 2329 	mov	r5,dpl
      002B2C AE 83            [24] 2330 	mov	r6,dph
      002B2E AF F0            [24] 2331 	mov	r7,b
                                   2332 ;	walk.c:268: if (sp == -1) return 0u;
      002B30 90 FF 70         [24] 2333 	mov	dptr,#_sp
      002B33 E0               [24] 2334 	movx	a,@dptr
      002B34 FB               [12] 2335 	mov	r3,a
      002B35 A3               [24] 2336 	inc	dptr
      002B36 E0               [24] 2337 	movx	a,@dptr
      002B37 FC               [12] 2338 	mov	r4,a
      002B38 BB FF 07         [24] 2339 	cjne	r3,#0xff,00102$
      002B3B BC FF 04         [24] 2340 	cjne	r4,#0xff,00102$
      002B3E 75 82 00         [24] 2341 	mov	dpl,#0x00
      002B41 22               [24] 2342 	ret
      002B42                       2343 00102$:
                                   2344 ;	walk.c:269: *t = stack[sp];
      002B42 EB               [12] 2345 	mov	a,r3
      002B43 2B               [12] 2346 	add	a,r3
      002B44 FB               [12] 2347 	mov	r3,a
      002B45 EC               [12] 2348 	mov	a,r4
      002B46 33               [12] 2349 	rlc	a
      002B47 FC               [12] 2350 	mov	r4,a
      002B48 EB               [12] 2351 	mov	a,r3
      002B49 2B               [12] 2352 	add	a,r3
      002B4A FB               [12] 2353 	mov	r3,a
      002B4B EC               [12] 2354 	mov	a,r4
      002B4C 33               [12] 2355 	rlc	a
      002B4D FC               [12] 2356 	mov	r4,a
      002B4E EB               [12] 2357 	mov	a,r3
      002B4F 24 B0            [12] 2358 	add	a,#_stack
      002B51 FB               [12] 2359 	mov	r3,a
      002B52 EC               [12] 2360 	mov	a,r4
      002B53 34 68            [12] 2361 	addc	a,#(_stack >> 8)
      002B55 FC               [12] 2362 	mov	r4,a
      002B56 7A 00            [12] 2363 	mov	r2,#0x00
      002B58 74 04            [12] 2364 	mov	a,#0x04
      002B5A C0 E0            [24] 2365 	push	acc
      002B5C E4               [12] 2366 	clr	a
      002B5D C0 E0            [24] 2367 	push	acc
      002B5F C0 03            [24] 2368 	push	ar3
      002B61 C0 04            [24] 2369 	push	ar4
      002B63 C0 02            [24] 2370 	push	ar2
      002B65 8D 82            [24] 2371 	mov	dpl,r5
      002B67 8E 83            [24] 2372 	mov	dph,r6
      002B69 8F F0            [24] 2373 	mov	b,r7
      002B6B 12 2D 22         [24] 2374 	lcall	___memcpy
      002B6E E5 81            [12] 2375 	mov	a,sp
      002B70 24 FB            [12] 2376 	add	a,#0xfb
      002B72 F5 81            [12] 2377 	mov	sp,a
                                   2378 ;	walk.c:270: sp--;
      002B74 90 FF 70         [24] 2379 	mov	dptr,#_sp
      002B77 E0               [24] 2380 	movx	a,@dptr
      002B78 24 FF            [12] 2381 	add	a,#0xff
      002B7A FE               [12] 2382 	mov	r6,a
      002B7B A3               [24] 2383 	inc	dptr
      002B7C E0               [24] 2384 	movx	a,@dptr
      002B7D 34 FF            [12] 2385 	addc	a,#0xff
      002B7F FF               [12] 2386 	mov	r7,a
      002B80 90 FF 70         [24] 2387 	mov	dptr,#_sp
      002B83 EE               [12] 2388 	mov	a,r6
      002B84 F0               [24] 2389 	movx	@dptr,a
      002B85 EF               [12] 2390 	mov	a,r7
      002B86 A3               [24] 2391 	inc	dptr
      002B87 F0               [24] 2392 	movx	@dptr,a
                                   2393 ;	walk.c:271: return 1u;
      002B88 75 82 01         [24] 2394 	mov	dpl,#0x01
                                   2395 ;	walk.c:272: }
      002B8B 22               [24] 2396 	ret
                                   2397 	.area CSEG    (CODE)
                                   2398 	.area CONST   (CODE)
                                   2399 	.area CONST   (CODE)
      00416E                       2400 ___str_0:
      00416E 4D 65 6D 6F 72 79 20  2401 	.ascii "Memory error"
             65 72 72 6F 72
      00417A 00                    2402 	.db 0x00
                                   2403 	.area CSEG    (CODE)
                                   2404 	.area CONST   (CODE)
      00417B                       2405 ___str_1:
      00417B 1B                    2406 	.db 0x1b
      00417C 5B 25 64 3B 25 64 48  2407 	.ascii "[%d;%dHo"
             6F
      004184 00                    2408 	.db 0x00
                                   2409 	.area CSEG    (CODE)
                                   2410 	.area CONST   (CODE)
      004185                       2411 ___str_2:
      004185 1B                    2412 	.db 0x1b
      004186 5B 32 3B 31 48 25 20  2413 	.ascii "[2;1H% 8d% 8d% 8d"
             38 64 25 20 38 64 25
             20 38 64
      004197 00                    2414 	.db 0x00
                                   2415 	.area CSEG    (CODE)
                                   2416 	.area CONST   (CODE)
      004198                       2417 ___str_3:
      004198 1B                    2418 	.db 0x1b
      004199 5B 25 64 3B 25 64 48  2419 	.ascii "[%d;%dH."
             2E
      0041A1 00                    2420 	.db 0x00
                                   2421 	.area CSEG    (CODE)
                                   2422 	.area CONST   (CODE)
      0041A2                       2423 ___str_4:
      0041A2 1B                    2424 	.db 0x1b
      0041A3 5B 32 4A              2425 	.ascii "[2J"
      0041A6 1B                    2426 	.db 0x1b
      0041A7 5B 3F 32 35 6C        2427 	.ascii "[?25l"
      0041AC 00                    2428 	.db 0x00
                                   2429 	.area CSEG    (CODE)
                                   2430 	.area CONST   (CODE)
      0041AD                       2431 ___str_5:
      0041AD 1B                    2432 	.db 0x1b
      0041AE 5B 31 3B 31 48 25 20  2433 	.ascii "[1;1H% 8u% 8d% 8d"
             38 75 25 20 38 64 25
             20 38 64
      0041BF 00                    2434 	.db 0x00
                                   2435 	.area CSEG    (CODE)
                                   2436 	.area CONST   (CODE)
      0041C0                       2437 ___str_6:
      0041C0 25 20 38 64 25 20 38  2438 	.ascii "% 8d% 8d"
             64
      0041C8 00                    2439 	.db 0x00
                                   2440 	.area CSEG    (CODE)
                                   2441 	.area CONST   (CODE)
      0041C9                       2442 ___str_7:
      0041C9 1B                    2443 	.db 0x1b
      0041CA 5B 32 4A              2444 	.ascii "[2J"
      0041CD 1B                    2445 	.db 0x1b
      0041CE 5B 3F 32 35 68        2446 	.ascii "[?25h"
      0041D3 00                    2447 	.db 0x00
                                   2448 	.area CSEG    (CODE)
                                   2449 	.area XINIT   (CODE)
      0041DF                       2450 __xinit__neigh:
      0041DF FF FF                 2451 	.byte #0xff, #0xff	; -1
      0041E1 01 00                 2452 	.byte #0x01, #0x00	;  1
      0041E3 FF FF                 2453 	.byte #0xff, #0xff	; -1
      0041E5 FF FF                 2454 	.byte #0xff, #0xff	; -1
      0041E7 01 00                 2455 	.byte #0x01, #0x00	;  1
      0041E9 FF FF                 2456 	.byte #0xff, #0xff	; -1
      0041EB 01 00                 2457 	.byte #0x01, #0x00	;  1
      0041ED 01 00                 2458 	.byte #0x01, #0x00	;  1
      0041EF FF FF                 2459 	.byte #0xff, #0xff	; -1
      0041F1 00 00                 2460 	.byte #0x00, #0x00	;  0
      0041F3 00 00                 2461 	.byte #0x00, #0x00	;  0
      0041F5 FF FF                 2462 	.byte #0xff, #0xff	; -1
      0041F7 01 00                 2463 	.byte #0x01, #0x00	;  1
      0041F9 00 00                 2464 	.byte #0x00, #0x00	;  0
      0041FB 00 00                 2465 	.byte #0x00, #0x00	;  0
      0041FD 01 00                 2466 	.byte #0x01, #0x00	;  1
      0041FF FF FF                 2467 	.byte #0xff, #0xff	; -1
      004201 01 00                 2468 	.byte #0x01, #0x00	;  1
      004203 FF FF                 2469 	.byte #0xff, #0xff	; -1
      004205 FF FF                 2470 	.byte #0xff, #0xff	; -1
      004207 01 00                 2471 	.byte #0x01, #0x00	;  1
      004209 FF FF                 2472 	.byte #0xff, #0xff	; -1
      00420B 01 00                 2473 	.byte #0x01, #0x00	;  1
      00420D 01 00                 2474 	.byte #0x01, #0x00	;  1
      00420F FF FF                 2475 	.byte #0xff, #0xff	; -1
      004211 00 00                 2476 	.byte #0x00, #0x00	;  0
      004213 00 00                 2477 	.byte #0x00, #0x00	;  0
      004215 FF FF                 2478 	.byte #0xff, #0xff	; -1
      004217 01 00                 2479 	.byte #0x01, #0x00	;  1
      004219 00 00                 2480 	.byte #0x00, #0x00	;  0
      00421B 00 00                 2481 	.byte #0x00, #0x00	;  0
      00421D 01 00                 2482 	.byte #0x01, #0x00	;  1
                                   2483 	.area CABS    (ABS,CODE)
