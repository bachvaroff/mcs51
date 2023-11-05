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
      0068B0                        324 _queue:
      0068B0                        325 	.ds 38592
      00FF70                        326 _hp:
      00FF70                        327 	.ds 2
      00FF72                        328 _tp:
      00FF72                        329 	.ds 2
                           00F006   330 _OEreg	=	0xf006
                                    331 ;--------------------------------------------------------
                                    332 ; absolute external ram data
                                    333 ;--------------------------------------------------------
                                    334 	.area XABS    (ABS,XDATA)
                                    335 ;--------------------------------------------------------
                                    336 ; external initialized ram data
                                    337 ;--------------------------------------------------------
                                    338 	.area XISEG   (XDATA)
      00FF74                        339 _neigh:
      00FF74                        340 	.ds 64
                                    341 	.area HOME    (CODE)
                                    342 	.area GSINIT0 (CODE)
                                    343 	.area GSINIT1 (CODE)
                                    344 	.area GSINIT2 (CODE)
                                    345 	.area GSINIT3 (CODE)
                                    346 	.area GSINIT4 (CODE)
                                    347 	.area GSINIT5 (CODE)
                                    348 	.area GSINIT  (CODE)
                                    349 	.area GSFINAL (CODE)
                                    350 	.area CSEG    (CODE)
                                    351 ;--------------------------------------------------------
                                    352 ; interrupt vector 
                                    353 ;--------------------------------------------------------
                                    354 	.area HOME    (CODE)
      002000                        355 __interrupt_vect:
      002000 02 20 09         [24]  356 	ljmp	__sdcc_gsinit_startup
      002003 02 20 73         [24]  357 	ljmp	_int0
                                    358 ;--------------------------------------------------------
                                    359 ; global & static initialisations
                                    360 ;--------------------------------------------------------
                                    361 	.area HOME    (CODE)
                                    362 	.area GSINIT  (CODE)
                                    363 	.area GSFINAL (CODE)
                                    364 	.area GSINIT  (CODE)
                                    365 	.globl __sdcc_gsinit_startup
                                    366 	.globl __sdcc_program_startup
                                    367 	.globl __start__stack
                                    368 	.globl __mcs51_genXINIT
                                    369 	.globl __mcs51_genXRAMCLEAR
                                    370 	.globl __mcs51_genRAMCLEAR
                                    371 	.area GSFINAL (CODE)
      002062 02 20 06         [24]  372 	ljmp	__sdcc_program_startup
                                    373 ;--------------------------------------------------------
                                    374 ; Home
                                    375 ;--------------------------------------------------------
                                    376 	.area HOME    (CODE)
                                    377 	.area HOME    (CODE)
      002006                        378 __sdcc_program_startup:
      002006 02 26 A9         [24]  379 	ljmp	_main
                                    380 ;	return from main will return to caller
                                    381 ;--------------------------------------------------------
                                    382 ; code
                                    383 ;--------------------------------------------------------
                                    384 	.area CSEG    (CODE)
                                    385 ;------------------------------------------------------------
                                    386 ;Allocation info for local variables in function 'putchar'
                                    387 ;------------------------------------------------------------
                                    388 ;c                         Allocated to registers 
                                    389 ;------------------------------------------------------------
                                    390 ;	walk.c:9: int putchar(int c) __naked {
                                    391 ;	-----------------------------------------
                                    392 ;	 function putchar
                                    393 ;	-----------------------------------------
      002065                        394 _putchar:
                                    395 ;	naked function: no prologue.
                                    396 ;	walk.c:14: __endasm;
      002065 E5 82            [12]  397 	mov	a, dpl
      002067 02 00 30         [24]  398 	ljmp	0x0030
                                    399 ;	walk.c:15: }
                                    400 ;	naked function: no epilogue.
                                    401 ;------------------------------------------------------------
                                    402 ;Allocation info for local variables in function 'getchar'
                                    403 ;------------------------------------------------------------
                                    404 ;	walk.c:17: int getchar(void) __naked {
                                    405 ;	-----------------------------------------
                                    406 ;	 function getchar
                                    407 ;	-----------------------------------------
      00206A                        408 _getchar:
                                    409 ;	naked function: no prologue.
                                    410 ;	walk.c:23: __endasm;
      00206A 12 00 32         [24]  411 	lcall	0x0032
      00206D F5 82            [12]  412 	mov	dpl, a
      00206F 75 83 00         [24]  413 	mov	dph, #0
      002072 22               [24]  414 	ret
                                    415 ;	walk.c:24: }
                                    416 ;	naked function: no epilogue.
                                    417 ;------------------------------------------------------------
                                    418 ;Allocation info for local variables in function 'int0'
                                    419 ;------------------------------------------------------------
                                    420 ;	walk.c:30: void int0(void) __interrupt IE0_VECTOR __using 1 {
                                    421 ;	-----------------------------------------
                                    422 ;	 function int0
                                    423 ;	-----------------------------------------
      002073                        424 _int0:
                           00000F   425 	ar7 = 0x0f
                           00000E   426 	ar6 = 0x0e
                           00000D   427 	ar5 = 0x0d
                           00000C   428 	ar4 = 0x0c
                           00000B   429 	ar3 = 0x0b
                           00000A   430 	ar2 = 0x0a
                           000009   431 	ar1 = 0x09
                           000008   432 	ar0 = 0x08
      002073 C0 D0            [24]  433 	push	psw
      002075 75 D0 08         [24]  434 	mov	psw,#0x08
                                    435 ;	walk.c:31: i0 = 0u;
      002078 78 11            [12]  436 	mov	r0,#_i0
      00207A 76 00            [12]  437 	mov	@r0,#0x00
                                    438 ;	walk.c:32: }
      00207C D0 D0            [24]  439 	pop	psw
      00207E 32               [24]  440 	reti
                                    441 ;	eliminated unneeded push/pop dpl
                                    442 ;	eliminated unneeded push/pop dph
                                    443 ;	eliminated unneeded push/pop b
                                    444 ;	eliminated unneeded push/pop acc
                                    445 ;------------------------------------------------------------
                                    446 ;Allocation info for local variables in function 'bang'
                                    447 ;------------------------------------------------------------
                                    448 ;	walk.c:38: static void bang(void) {
                                    449 ;	-----------------------------------------
                                    450 ;	 function bang
                                    451 ;	-----------------------------------------
      00207F                        452 _bang:
                           000007   453 	ar7 = 0x07
                           000006   454 	ar6 = 0x06
                           000005   455 	ar5 = 0x05
                           000004   456 	ar4 = 0x04
                           000003   457 	ar3 = 0x03
                           000002   458 	ar2 = 0x02
                           000001   459 	ar1 = 0x01
                           000000   460 	ar0 = 0x00
                                    461 ;	walk.c:39: (void)puts("Memory error");
      00207F 90 41 EA         [24]  462 	mov	dptr,#___str_0
      002082 75 F0 80         [24]  463 	mov	b,#0x80
      002085 12 2E 31         [24]  464 	lcall	_puts
                                    465 ;	walk.c:35: PCON |= 2;
      002088 43 87 02         [24]  466 	orl	_PCON,#0x02
                                    467 ;	walk.c:42: return;
                                    468 ;	walk.c:43: }
      00208B 22               [24]  469 	ret
                                    470 ;------------------------------------------------------------
                                    471 ;Allocation info for local variables in function 'flashOE'
                                    472 ;------------------------------------------------------------
                                    473 ;mask                      Allocated to registers r7 
                                    474 ;------------------------------------------------------------
                                    475 ;	walk.c:85: static void flashOE(uint8_t mask) {
                                    476 ;	-----------------------------------------
                                    477 ;	 function flashOE
                                    478 ;	-----------------------------------------
      00208C                        479 _flashOE:
      00208C AF 82            [24]  480 	mov	r7,dpl
                                    481 ;	walk.c:86: P1_7 = 0;
                                    482 ;	assignBit
      00208E C2 97            [12]  483 	clr	_P1_7
                                    484 ;	walk.c:87: OEreg = OE76;
      002090 78 12            [12]  485 	mov	r0,#_OE76
      002092 90 F0 06         [24]  486 	mov	dptr,#_OEreg
      002095 E6               [12]  487 	mov	a,@r0
      002096 F0               [24]  488 	movx	@dptr,a
                                    489 ;	walk.c:88: P1_7 = 1;
                                    490 ;	assignBit
      002097 D2 97            [12]  491 	setb	_P1_7
                                    492 ;	walk.c:89: OE76 ^= mask;
      002099 78 12            [12]  493 	mov	r0,#_OE76
      00209B EF               [12]  494 	mov	a,r7
      00209C 66               [12]  495 	xrl	a,@r0
      00209D F6               [12]  496 	mov	@r0,a
                                    497 ;	walk.c:91: return;
                                    498 ;	walk.c:92: }
      00209E 22               [24]  499 	ret
                                    500 ;------------------------------------------------------------
                                    501 ;Allocation info for local variables in function 'update'
                                    502 ;------------------------------------------------------------
                                    503 ;cur                       Allocated to stack - _bp -5
                                    504 ;j                         Allocated to stack - _bp -6
                                    505 ;t                         Allocated to stack - _bp +1
                                    506 ;sloc0                     Allocated to stack - _bp +4
                                    507 ;sloc1                     Allocated to stack - _bp +6
                                    508 ;sloc2                     Allocated to stack - _bp +8
                                    509 ;------------------------------------------------------------
                                    510 ;	walk.c:94: static uint8_t update(struct node *t, struct node *cur, uint8_t j) {
                                    511 ;	-----------------------------------------
                                    512 ;	 function update
                                    513 ;	-----------------------------------------
      00209F                        514 _update:
      00209F C0 10            [24]  515 	push	_bp
      0020A1 85 81 10         [24]  516 	mov	_bp,sp
      0020A4 C0 82            [24]  517 	push	dpl
      0020A6 C0 83            [24]  518 	push	dph
      0020A8 C0 F0            [24]  519 	push	b
      0020AA E5 81            [12]  520 	mov	a,sp
      0020AC 24 07            [12]  521 	add	a,#0x07
      0020AE F5 81            [12]  522 	mov	sp,a
                                    523 ;	walk.c:95: t->r = cur->r + neigh[j].r;
      0020B0 E5 10            [12]  524 	mov	a,_bp
      0020B2 24 FB            [12]  525 	add	a,#0xfb
      0020B4 F8               [12]  526 	mov	r0,a
      0020B5 86 02            [24]  527 	mov	ar2,@r0
      0020B7 08               [12]  528 	inc	r0
      0020B8 86 03            [24]  529 	mov	ar3,@r0
      0020BA 08               [12]  530 	inc	r0
      0020BB 86 04            [24]  531 	mov	ar4,@r0
      0020BD 8A 82            [24]  532 	mov	dpl,r2
      0020BF 8B 83            [24]  533 	mov	dph,r3
      0020C1 8C F0            [24]  534 	mov	b,r4
      0020C3 E5 10            [12]  535 	mov	a,_bp
      0020C5 24 04            [12]  536 	add	a,#0x04
      0020C7 F8               [12]  537 	mov	r0,a
      0020C8 12 2E F0         [24]  538 	lcall	__gptrget
      0020CB F6               [12]  539 	mov	@r0,a
      0020CC A3               [24]  540 	inc	dptr
      0020CD 12 2E F0         [24]  541 	lcall	__gptrget
      0020D0 08               [12]  542 	inc	r0
      0020D1 F6               [12]  543 	mov	@r0,a
      0020D2 E5 10            [12]  544 	mov	a,_bp
      0020D4 24 FA            [12]  545 	add	a,#0xfa
      0020D6 F8               [12]  546 	mov	r0,a
      0020D7 E5 10            [12]  547 	mov	a,_bp
      0020D9 24 06            [12]  548 	add	a,#0x06
      0020DB F9               [12]  549 	mov	r1,a
      0020DC E6               [12]  550 	mov	a,@r0
      0020DD 75 F0 04         [24]  551 	mov	b,#0x04
      0020E0 A4               [48]  552 	mul	ab
      0020E1 F7               [12]  553 	mov	@r1,a
      0020E2 09               [12]  554 	inc	r1
      0020E3 A7 F0            [24]  555 	mov	@r1,b
      0020E5 E5 10            [12]  556 	mov	a,_bp
      0020E7 24 06            [12]  557 	add	a,#0x06
      0020E9 F8               [12]  558 	mov	r0,a
      0020EA E6               [12]  559 	mov	a,@r0
      0020EB 24 74            [12]  560 	add	a,#_neigh
      0020ED F5 82            [12]  561 	mov	dpl,a
      0020EF 08               [12]  562 	inc	r0
      0020F0 E6               [12]  563 	mov	a,@r0
      0020F1 34 FF            [12]  564 	addc	a,#(_neigh >> 8)
      0020F3 F5 83            [12]  565 	mov	dph,a
      0020F5 E0               [24]  566 	movx	a,@dptr
      0020F6 FF               [12]  567 	mov	r7,a
      0020F7 A3               [24]  568 	inc	dptr
      0020F8 E0               [24]  569 	movx	a,@dptr
      0020F9 FE               [12]  570 	mov	r6,a
      0020FA E5 10            [12]  571 	mov	a,_bp
      0020FC 24 04            [12]  572 	add	a,#0x04
      0020FE F8               [12]  573 	mov	r0,a
      0020FF EF               [12]  574 	mov	a,r7
      002100 26               [12]  575 	add	a,@r0
      002101 FF               [12]  576 	mov	r7,a
      002102 EE               [12]  577 	mov	a,r6
      002103 08               [12]  578 	inc	r0
      002104 36               [12]  579 	addc	a,@r0
      002105 FE               [12]  580 	mov	r6,a
      002106 A8 10            [24]  581 	mov	r0,_bp
      002108 08               [12]  582 	inc	r0
      002109 86 82            [24]  583 	mov	dpl,@r0
      00210B 08               [12]  584 	inc	r0
      00210C 86 83            [24]  585 	mov	dph,@r0
      00210E 08               [12]  586 	inc	r0
      00210F 86 F0            [24]  587 	mov	b,@r0
      002111 EF               [12]  588 	mov	a,r7
      002112 12 2C E5         [24]  589 	lcall	__gptrput
      002115 A3               [24]  590 	inc	dptr
      002116 EE               [12]  591 	mov	a,r6
      002117 12 2C E5         [24]  592 	lcall	__gptrput
                                    593 ;	walk.c:96: t->c = cur->c + neigh[j].c;
      00211A A8 10            [24]  594 	mov	r0,_bp
      00211C 08               [12]  595 	inc	r0
      00211D E5 10            [12]  596 	mov	a,_bp
      00211F 24 08            [12]  597 	add	a,#0x08
      002121 F9               [12]  598 	mov	r1,a
      002122 74 02            [12]  599 	mov	a,#0x02
      002124 26               [12]  600 	add	a,@r0
      002125 F7               [12]  601 	mov	@r1,a
      002126 E4               [12]  602 	clr	a
      002127 08               [12]  603 	inc	r0
      002128 36               [12]  604 	addc	a,@r0
      002129 09               [12]  605 	inc	r1
      00212A F7               [12]  606 	mov	@r1,a
      00212B 08               [12]  607 	inc	r0
      00212C 09               [12]  608 	inc	r1
      00212D E6               [12]  609 	mov	a,@r0
      00212E F7               [12]  610 	mov	@r1,a
      00212F 74 02            [12]  611 	mov	a,#0x02
      002131 2A               [12]  612 	add	a,r2
      002132 FA               [12]  613 	mov	r2,a
      002133 E4               [12]  614 	clr	a
      002134 3B               [12]  615 	addc	a,r3
      002135 FB               [12]  616 	mov	r3,a
      002136 8A 82            [24]  617 	mov	dpl,r2
      002138 8B 83            [24]  618 	mov	dph,r3
      00213A 8C F0            [24]  619 	mov	b,r4
      00213C 12 2E F0         [24]  620 	lcall	__gptrget
      00213F FA               [12]  621 	mov	r2,a
      002140 A3               [24]  622 	inc	dptr
      002141 12 2E F0         [24]  623 	lcall	__gptrget
      002144 FB               [12]  624 	mov	r3,a
      002145 E5 10            [12]  625 	mov	a,_bp
      002147 24 06            [12]  626 	add	a,#0x06
      002149 F8               [12]  627 	mov	r0,a
      00214A E6               [12]  628 	mov	a,@r0
      00214B 24 74            [12]  629 	add	a,#_neigh
      00214D FC               [12]  630 	mov	r4,a
      00214E 08               [12]  631 	inc	r0
      00214F E6               [12]  632 	mov	a,@r0
      002150 34 FF            [12]  633 	addc	a,#(_neigh >> 8)
      002152 FD               [12]  634 	mov	r5,a
      002153 8C 82            [24]  635 	mov	dpl,r4
      002155 8D 83            [24]  636 	mov	dph,r5
      002157 A3               [24]  637 	inc	dptr
      002158 A3               [24]  638 	inc	dptr
      002159 E0               [24]  639 	movx	a,@dptr
      00215A FC               [12]  640 	mov	r4,a
      00215B A3               [24]  641 	inc	dptr
      00215C E0               [24]  642 	movx	a,@dptr
      00215D FD               [12]  643 	mov	r5,a
      00215E EC               [12]  644 	mov	a,r4
      00215F 2A               [12]  645 	add	a,r2
      002160 FA               [12]  646 	mov	r2,a
      002161 ED               [12]  647 	mov	a,r5
      002162 3B               [12]  648 	addc	a,r3
      002163 FB               [12]  649 	mov	r3,a
      002164 E5 10            [12]  650 	mov	a,_bp
      002166 24 08            [12]  651 	add	a,#0x08
      002168 F8               [12]  652 	mov	r0,a
      002169 86 82            [24]  653 	mov	dpl,@r0
      00216B 08               [12]  654 	inc	r0
      00216C 86 83            [24]  655 	mov	dph,@r0
      00216E 08               [12]  656 	inc	r0
      00216F 86 F0            [24]  657 	mov	b,@r0
      002171 EA               [12]  658 	mov	a,r2
      002172 12 2C E5         [24]  659 	lcall	__gptrput
      002175 A3               [24]  660 	inc	dptr
      002176 EB               [12]  661 	mov	a,r3
      002177 12 2C E5         [24]  662 	lcall	__gptrput
                                    663 ;	walk.c:98: if (t->r < 0) t->r += ROWS;
      00217A A8 10            [24]  664 	mov	r0,_bp
      00217C 08               [12]  665 	inc	r0
      00217D 86 82            [24]  666 	mov	dpl,@r0
      00217F 08               [12]  667 	inc	r0
      002180 86 83            [24]  668 	mov	dph,@r0
      002182 08               [12]  669 	inc	r0
      002183 86 F0            [24]  670 	mov	b,@r0
      002185 12 2E F0         [24]  671 	lcall	__gptrget
      002188 FD               [12]  672 	mov	r5,a
      002189 A3               [24]  673 	inc	dptr
      00218A 12 2E F0         [24]  674 	lcall	__gptrget
      00218D FC               [12]  675 	mov	r4,a
      00218E EE               [12]  676 	mov	a,r6
      00218F 30 E7 1D         [24]  677 	jnb	acc.7,00104$
      002192 74 30            [12]  678 	mov	a,#0x30
      002194 2D               [12]  679 	add	a,r5
      002195 FF               [12]  680 	mov	r7,a
      002196 E4               [12]  681 	clr	a
      002197 3C               [12]  682 	addc	a,r4
      002198 FE               [12]  683 	mov	r6,a
      002199 A8 10            [24]  684 	mov	r0,_bp
      00219B 08               [12]  685 	inc	r0
      00219C 86 82            [24]  686 	mov	dpl,@r0
      00219E 08               [12]  687 	inc	r0
      00219F 86 83            [24]  688 	mov	dph,@r0
      0021A1 08               [12]  689 	inc	r0
      0021A2 86 F0            [24]  690 	mov	b,@r0
      0021A4 EF               [12]  691 	mov	a,r7
      0021A5 12 2C E5         [24]  692 	lcall	__gptrput
      0021A8 A3               [24]  693 	inc	dptr
      0021A9 EE               [12]  694 	mov	a,r6
      0021AA 12 2C E5         [24]  695 	lcall	__gptrput
      0021AD 80 27            [24]  696 	sjmp	00105$
      0021AF                        697 00104$:
                                    698 ;	walk.c:99: else if (t->r >= ROWS) t->r -= ROWS;
      0021AF C3               [12]  699 	clr	c
      0021B0 ED               [12]  700 	mov	a,r5
      0021B1 94 30            [12]  701 	subb	a,#0x30
      0021B3 EC               [12]  702 	mov	a,r4
      0021B4 64 80            [12]  703 	xrl	a,#0x80
      0021B6 94 80            [12]  704 	subb	a,#0x80
      0021B8 40 1C            [24]  705 	jc	00105$
      0021BA ED               [12]  706 	mov	a,r5
      0021BB 24 D0            [12]  707 	add	a,#0xd0
      0021BD FD               [12]  708 	mov	r5,a
      0021BE EC               [12]  709 	mov	a,r4
      0021BF 34 FF            [12]  710 	addc	a,#0xff
      0021C1 FC               [12]  711 	mov	r4,a
      0021C2 A8 10            [24]  712 	mov	r0,_bp
      0021C4 08               [12]  713 	inc	r0
      0021C5 86 82            [24]  714 	mov	dpl,@r0
      0021C7 08               [12]  715 	inc	r0
      0021C8 86 83            [24]  716 	mov	dph,@r0
      0021CA 08               [12]  717 	inc	r0
      0021CB 86 F0            [24]  718 	mov	b,@r0
      0021CD ED               [12]  719 	mov	a,r5
      0021CE 12 2C E5         [24]  720 	lcall	__gptrput
      0021D1 A3               [24]  721 	inc	dptr
      0021D2 EC               [12]  722 	mov	a,r4
      0021D3 12 2C E5         [24]  723 	lcall	__gptrput
      0021D6                        724 00105$:
                                    725 ;	walk.c:100: if (t->c < 0) t->c += COLS;
      0021D6 E5 10            [12]  726 	mov	a,_bp
      0021D8 24 08            [12]  727 	add	a,#0x08
      0021DA F8               [12]  728 	mov	r0,a
      0021DB 86 82            [24]  729 	mov	dpl,@r0
      0021DD 08               [12]  730 	inc	r0
      0021DE 86 83            [24]  731 	mov	dph,@r0
      0021E0 08               [12]  732 	inc	r0
      0021E1 86 F0            [24]  733 	mov	b,@r0
      0021E3 12 2E F0         [24]  734 	lcall	__gptrget
      0021E6 A3               [24]  735 	inc	dptr
      0021E7 12 2E F0         [24]  736 	lcall	__gptrget
      0021EA 30 E7 35         [24]  737 	jnb	acc.7,00109$
      0021ED E5 10            [12]  738 	mov	a,_bp
      0021EF 24 08            [12]  739 	add	a,#0x08
      0021F1 F8               [12]  740 	mov	r0,a
      0021F2 86 82            [24]  741 	mov	dpl,@r0
      0021F4 08               [12]  742 	inc	r0
      0021F5 86 83            [24]  743 	mov	dph,@r0
      0021F7 08               [12]  744 	inc	r0
      0021F8 86 F0            [24]  745 	mov	b,@r0
      0021FA 12 2E F0         [24]  746 	lcall	__gptrget
      0021FD FE               [12]  747 	mov	r6,a
      0021FE A3               [24]  748 	inc	dptr
      0021FF 12 2E F0         [24]  749 	lcall	__gptrget
      002202 FF               [12]  750 	mov	r7,a
      002203 74 C9            [12]  751 	mov	a,#0xc9
      002205 2E               [12]  752 	add	a,r6
      002206 FE               [12]  753 	mov	r6,a
      002207 E4               [12]  754 	clr	a
      002208 3F               [12]  755 	addc	a,r7
      002209 FF               [12]  756 	mov	r7,a
      00220A E5 10            [12]  757 	mov	a,_bp
      00220C 24 08            [12]  758 	add	a,#0x08
      00220E F8               [12]  759 	mov	r0,a
      00220F 86 82            [24]  760 	mov	dpl,@r0
      002211 08               [12]  761 	inc	r0
      002212 86 83            [24]  762 	mov	dph,@r0
      002214 08               [12]  763 	inc	r0
      002215 86 F0            [24]  764 	mov	b,@r0
      002217 EE               [12]  765 	mov	a,r6
      002218 12 2C E5         [24]  766 	lcall	__gptrput
      00221B A3               [24]  767 	inc	dptr
      00221C EF               [12]  768 	mov	a,r7
      00221D 12 2C E5         [24]  769 	lcall	__gptrput
      002220 80 55            [24]  770 	sjmp	00110$
      002222                        771 00109$:
                                    772 ;	walk.c:101: else if (t->c >= COLS) t->c -= COLS;
      002222 E5 10            [12]  773 	mov	a,_bp
      002224 24 08            [12]  774 	add	a,#0x08
      002226 F8               [12]  775 	mov	r0,a
      002227 86 82            [24]  776 	mov	dpl,@r0
      002229 08               [12]  777 	inc	r0
      00222A 86 83            [24]  778 	mov	dph,@r0
      00222C 08               [12]  779 	inc	r0
      00222D 86 F0            [24]  780 	mov	b,@r0
      00222F 12 2E F0         [24]  781 	lcall	__gptrget
      002232 FE               [12]  782 	mov	r6,a
      002233 A3               [24]  783 	inc	dptr
      002234 12 2E F0         [24]  784 	lcall	__gptrget
      002237 FF               [12]  785 	mov	r7,a
      002238 C3               [12]  786 	clr	c
      002239 EE               [12]  787 	mov	a,r6
      00223A 94 C9            [12]  788 	subb	a,#0xc9
      00223C EF               [12]  789 	mov	a,r7
      00223D 64 80            [12]  790 	xrl	a,#0x80
      00223F 94 80            [12]  791 	subb	a,#0x80
      002241 40 34            [24]  792 	jc	00110$
      002243 E5 10            [12]  793 	mov	a,_bp
      002245 24 08            [12]  794 	add	a,#0x08
      002247 F8               [12]  795 	mov	r0,a
      002248 86 82            [24]  796 	mov	dpl,@r0
      00224A 08               [12]  797 	inc	r0
      00224B 86 83            [24]  798 	mov	dph,@r0
      00224D 08               [12]  799 	inc	r0
      00224E 86 F0            [24]  800 	mov	b,@r0
      002250 12 2E F0         [24]  801 	lcall	__gptrget
      002253 FE               [12]  802 	mov	r6,a
      002254 A3               [24]  803 	inc	dptr
      002255 12 2E F0         [24]  804 	lcall	__gptrget
      002258 FF               [12]  805 	mov	r7,a
      002259 EE               [12]  806 	mov	a,r6
      00225A 24 37            [12]  807 	add	a,#0x37
      00225C FE               [12]  808 	mov	r6,a
      00225D EF               [12]  809 	mov	a,r7
      00225E 34 FF            [12]  810 	addc	a,#0xff
      002260 FF               [12]  811 	mov	r7,a
      002261 E5 10            [12]  812 	mov	a,_bp
      002263 24 08            [12]  813 	add	a,#0x08
      002265 F8               [12]  814 	mov	r0,a
      002266 86 82            [24]  815 	mov	dpl,@r0
      002268 08               [12]  816 	inc	r0
      002269 86 83            [24]  817 	mov	dph,@r0
      00226B 08               [12]  818 	inc	r0
      00226C 86 F0            [24]  819 	mov	b,@r0
      00226E EE               [12]  820 	mov	a,r6
      00226F 12 2C E5         [24]  821 	lcall	__gptrput
      002272 A3               [24]  822 	inc	dptr
      002273 EF               [12]  823 	mov	a,r7
      002274 12 2C E5         [24]  824 	lcall	__gptrput
      002277                        825 00110$:
                                    826 ;	walk.c:103: if (g[t->r][t->c] == 0xaau) return 0u;
      002277 A8 10            [24]  827 	mov	r0,_bp
      002279 08               [12]  828 	inc	r0
      00227A 86 82            [24]  829 	mov	dpl,@r0
      00227C 08               [12]  830 	inc	r0
      00227D 86 83            [24]  831 	mov	dph,@r0
      00227F 08               [12]  832 	inc	r0
      002280 86 F0            [24]  833 	mov	b,@r0
      002282 12 2E F0         [24]  834 	lcall	__gptrget
      002285 FE               [12]  835 	mov	r6,a
      002286 A3               [24]  836 	inc	dptr
      002287 12 2E F0         [24]  837 	lcall	__gptrget
      00228A FF               [12]  838 	mov	r7,a
      00228B C0 06            [24]  839 	push	ar6
      00228D C0 07            [24]  840 	push	ar7
      00228F 90 00 C9         [24]  841 	mov	dptr,#0x00c9
      002292 12 2D 00         [24]  842 	lcall	__mulint
      002295 AE 82            [24]  843 	mov	r6,dpl
      002297 AF 83            [24]  844 	mov	r7,dph
      002299 15 81            [12]  845 	dec	sp
      00229B 15 81            [12]  846 	dec	sp
      00229D EE               [12]  847 	mov	a,r6
      00229E 24 00            [12]  848 	add	a,#_g
      0022A0 FE               [12]  849 	mov	r6,a
      0022A1 EF               [12]  850 	mov	a,r7
      0022A2 34 43            [12]  851 	addc	a,#(_g >> 8)
      0022A4 FF               [12]  852 	mov	r7,a
      0022A5 E5 10            [12]  853 	mov	a,_bp
      0022A7 24 08            [12]  854 	add	a,#0x08
      0022A9 F8               [12]  855 	mov	r0,a
      0022AA 86 82            [24]  856 	mov	dpl,@r0
      0022AC 08               [12]  857 	inc	r0
      0022AD 86 83            [24]  858 	mov	dph,@r0
      0022AF 08               [12]  859 	inc	r0
      0022B0 86 F0            [24]  860 	mov	b,@r0
      0022B2 12 2E F0         [24]  861 	lcall	__gptrget
      0022B5 FC               [12]  862 	mov	r4,a
      0022B6 A3               [24]  863 	inc	dptr
      0022B7 12 2E F0         [24]  864 	lcall	__gptrget
      0022BA FD               [12]  865 	mov	r5,a
      0022BB EC               [12]  866 	mov	a,r4
      0022BC 2E               [12]  867 	add	a,r6
      0022BD F5 82            [12]  868 	mov	dpl,a
      0022BF ED               [12]  869 	mov	a,r5
      0022C0 3F               [12]  870 	addc	a,r7
      0022C1 F5 83            [12]  871 	mov	dph,a
      0022C3 E0               [24]  872 	movx	a,@dptr
      0022C4 FF               [12]  873 	mov	r7,a
      0022C5 BF AA 05         [24]  874 	cjne	r7,#0xaa,00114$
      0022C8 75 82 00         [24]  875 	mov	dpl,#0x00
      0022CB 80 59            [24]  876 	sjmp	00116$
      0022CD                        877 00114$:
                                    878 ;	walk.c:104: else if (g[t->r][t->c] != 0x55u) bang();
      0022CD A8 10            [24]  879 	mov	r0,_bp
      0022CF 08               [12]  880 	inc	r0
      0022D0 86 82            [24]  881 	mov	dpl,@r0
      0022D2 08               [12]  882 	inc	r0
      0022D3 86 83            [24]  883 	mov	dph,@r0
      0022D5 08               [12]  884 	inc	r0
      0022D6 86 F0            [24]  885 	mov	b,@r0
      0022D8 12 2E F0         [24]  886 	lcall	__gptrget
      0022DB FE               [12]  887 	mov	r6,a
      0022DC A3               [24]  888 	inc	dptr
      0022DD 12 2E F0         [24]  889 	lcall	__gptrget
      0022E0 FF               [12]  890 	mov	r7,a
      0022E1 C0 06            [24]  891 	push	ar6
      0022E3 C0 07            [24]  892 	push	ar7
      0022E5 90 00 C9         [24]  893 	mov	dptr,#0x00c9
      0022E8 12 2D 00         [24]  894 	lcall	__mulint
      0022EB AE 82            [24]  895 	mov	r6,dpl
      0022ED AF 83            [24]  896 	mov	r7,dph
      0022EF 15 81            [12]  897 	dec	sp
      0022F1 15 81            [12]  898 	dec	sp
      0022F3 EE               [12]  899 	mov	a,r6
      0022F4 24 00            [12]  900 	add	a,#_g
      0022F6 FE               [12]  901 	mov	r6,a
      0022F7 EF               [12]  902 	mov	a,r7
      0022F8 34 43            [12]  903 	addc	a,#(_g >> 8)
      0022FA FF               [12]  904 	mov	r7,a
      0022FB E5 10            [12]  905 	mov	a,_bp
      0022FD 24 08            [12]  906 	add	a,#0x08
      0022FF F8               [12]  907 	mov	r0,a
      002300 86 82            [24]  908 	mov	dpl,@r0
      002302 08               [12]  909 	inc	r0
      002303 86 83            [24]  910 	mov	dph,@r0
      002305 08               [12]  911 	inc	r0
      002306 86 F0            [24]  912 	mov	b,@r0
      002308 12 2E F0         [24]  913 	lcall	__gptrget
      00230B FC               [12]  914 	mov	r4,a
      00230C A3               [24]  915 	inc	dptr
      00230D 12 2E F0         [24]  916 	lcall	__gptrget
      002310 FD               [12]  917 	mov	r5,a
      002311 EC               [12]  918 	mov	a,r4
      002312 2E               [12]  919 	add	a,r6
      002313 F5 82            [12]  920 	mov	dpl,a
      002315 ED               [12]  921 	mov	a,r5
      002316 3F               [12]  922 	addc	a,r7
      002317 F5 83            [12]  923 	mov	dph,a
      002319 E0               [24]  924 	movx	a,@dptr
      00231A FF               [12]  925 	mov	r7,a
      00231B BF 55 02         [24]  926 	cjne	r7,#0x55,00148$
      00231E 80 03            [24]  927 	sjmp	00115$
      002320                        928 00148$:
      002320 12 20 7F         [24]  929 	lcall	_bang
      002323                        930 00115$:
                                    931 ;	walk.c:106: return 1u;
      002323 75 82 01         [24]  932 	mov	dpl,#0x01
      002326                        933 00116$:
                                    934 ;	walk.c:107: }
      002326 85 10 81         [24]  935 	mov	sp,_bp
      002329 D0 10            [24]  936 	pop	_bp
      00232B 22               [24]  937 	ret
                                    938 ;------------------------------------------------------------
                                    939 ;Allocation info for local variables in function 'walk'
                                    940 ;------------------------------------------------------------
                                    941 ;nstart                    Allocated to registers r5 r6 r7 
                                    942 ;cur                       Allocated to stack - _bp +7
                                    943 ;t                         Allocated to stack - _bp +11
                                    944 ;scramble                  Allocated to stack - _bp +15
                                    945 ;ti                        Allocated to registers r2 
                                    946 ;tj                        Allocated to registers r6 
                                    947 ;tx                        Allocated to stack - _bp +31
                                    948 ;j                         Allocated to stack - _bp +32
                                    949 ;sloc0                     Allocated to stack - _bp +1
                                    950 ;sloc1                     Allocated to stack - _bp +3
                                    951 ;sloc2                     Allocated to stack - _bp +35
                                    952 ;sloc3                     Allocated to stack - _bp +4
                                    953 ;------------------------------------------------------------
                                    954 ;	walk.c:109: static void walk(struct node *nstart) {
                                    955 ;	-----------------------------------------
                                    956 ;	 function walk
                                    957 ;	-----------------------------------------
      00232C                        958 _walk:
      00232C C0 10            [24]  959 	push	_bp
      00232E E5 81            [12]  960 	mov	a,sp
      002330 F5 10            [12]  961 	mov	_bp,a
      002332 24 20            [12]  962 	add	a,#0x20
      002334 F5 81            [12]  963 	mov	sp,a
                                    964 ;	walk.c:114: if (!qadd(nstart)) bang();
      002336 AD 82            [24]  965 	mov	r5,dpl
      002338 AE 83            [24]  966 	mov	r6,dph
      00233A AF F0            [24]  967 	mov	r7,b
      00233C C0 07            [24]  968 	push	ar7
      00233E C0 06            [24]  969 	push	ar6
      002340 C0 05            [24]  970 	push	ar5
      002342 12 2A 92         [24]  971 	lcall	_qadd
      002345 E5 82            [12]  972 	mov	a,dpl
      002347 D0 05            [24]  973 	pop	ar5
      002349 D0 06            [24]  974 	pop	ar6
      00234B D0 07            [24]  975 	pop	ar7
      00234D 70 0F            [24]  976 	jnz	00102$
      00234F C0 07            [24]  977 	push	ar7
      002351 C0 06            [24]  978 	push	ar6
      002353 C0 05            [24]  979 	push	ar5
      002355 12 20 7F         [24]  980 	lcall	_bang
      002358 D0 05            [24]  981 	pop	ar5
      00235A D0 06            [24]  982 	pop	ar6
      00235C D0 07            [24]  983 	pop	ar7
      00235E                        984 00102$:
                                    985 ;	walk.c:115: g[nstart->r][nstart->c] = 0xaau;
      00235E 8D 82            [24]  986 	mov	dpl,r5
      002360 8E 83            [24]  987 	mov	dph,r6
      002362 8F F0            [24]  988 	mov	b,r7
      002364 12 2E F0         [24]  989 	lcall	__gptrget
      002367 FB               [12]  990 	mov	r3,a
      002368 A3               [24]  991 	inc	dptr
      002369 12 2E F0         [24]  992 	lcall	__gptrget
      00236C FC               [12]  993 	mov	r4,a
      00236D C0 07            [24]  994 	push	ar7
      00236F C0 06            [24]  995 	push	ar6
      002371 C0 05            [24]  996 	push	ar5
      002373 C0 03            [24]  997 	push	ar3
      002375 C0 04            [24]  998 	push	ar4
      002377 90 00 C9         [24]  999 	mov	dptr,#0x00c9
      00237A 12 2D 00         [24] 1000 	lcall	__mulint
      00237D AB 82            [24] 1001 	mov	r3,dpl
      00237F AC 83            [24] 1002 	mov	r4,dph
      002381 15 81            [12] 1003 	dec	sp
      002383 15 81            [12] 1004 	dec	sp
      002385 D0 05            [24] 1005 	pop	ar5
      002387 D0 06            [24] 1006 	pop	ar6
      002389 D0 07            [24] 1007 	pop	ar7
      00238B EB               [12] 1008 	mov	a,r3
      00238C 24 00            [12] 1009 	add	a,#_g
      00238E FB               [12] 1010 	mov	r3,a
      00238F EC               [12] 1011 	mov	a,r4
      002390 34 43            [12] 1012 	addc	a,#(_g >> 8)
      002392 FC               [12] 1013 	mov	r4,a
      002393 74 02            [12] 1014 	mov	a,#0x02
      002395 2D               [12] 1015 	add	a,r5
      002396 FD               [12] 1016 	mov	r5,a
      002397 E4               [12] 1017 	clr	a
      002398 3E               [12] 1018 	addc	a,r6
      002399 FE               [12] 1019 	mov	r6,a
      00239A 8D 82            [24] 1020 	mov	dpl,r5
      00239C 8E 83            [24] 1021 	mov	dph,r6
      00239E 8F F0            [24] 1022 	mov	b,r7
      0023A0 12 2E F0         [24] 1023 	lcall	__gptrget
      0023A3 FD               [12] 1024 	mov	r5,a
      0023A4 A3               [24] 1025 	inc	dptr
      0023A5 12 2E F0         [24] 1026 	lcall	__gptrget
      0023A8 FE               [12] 1027 	mov	r6,a
      0023A9 ED               [12] 1028 	mov	a,r5
      0023AA 2B               [12] 1029 	add	a,r3
      0023AB F5 82            [12] 1030 	mov	dpl,a
      0023AD EE               [12] 1031 	mov	a,r6
      0023AE 3C               [12] 1032 	addc	a,r4
      0023AF F5 83            [12] 1033 	mov	dph,a
      0023B1 74 AA            [12] 1034 	mov	a,#0xaa
      0023B3 F0               [24] 1035 	movx	@dptr,a
                                   1036 ;	walk.c:117: process:
      0023B4 E5 10            [12] 1037 	mov	a,_bp
      0023B6 24 0F            [12] 1038 	add	a,#0x0f
      0023B8 FF               [12] 1039 	mov	r7,a
      0023B9 E5 10            [12] 1040 	mov	a,_bp
      0023BB 24 0B            [12] 1041 	add	a,#0x0b
      0023BD F9               [12] 1042 	mov	r1,a
      0023BE E5 10            [12] 1043 	mov	a,_bp
      0023C0 24 03            [12] 1044 	add	a,#0x03
      0023C2 F8               [12] 1045 	mov	r0,a
      0023C3 A6 01            [24] 1046 	mov	@r0,ar1
      0023C5 74 02            [12] 1047 	mov	a,#0x02
      0023C7 29               [12] 1048 	add	a,r1
      0023C8 F8               [12] 1049 	mov	r0,a
      0023C9 E5 10            [12] 1050 	mov	a,_bp
      0023CB 24 07            [12] 1051 	add	a,#0x07
      0023CD FD               [12] 1052 	mov	r5,a
      0023CE                       1053 00103$:
                                   1054 ;	walk.c:118: if (!qget(&cur)) goto term;
      0023CE 8D 02            [24] 1055 	mov	ar2,r5
      0023D0 7B 00            [12] 1056 	mov	r3,#0x00
      0023D2 7C 40            [12] 1057 	mov	r4,#0x40
      0023D4 8A 82            [24] 1058 	mov	dpl,r2
      0023D6 8B 83            [24] 1059 	mov	dph,r3
      0023D8 8C F0            [24] 1060 	mov	b,r4
      0023DA C0 07            [24] 1061 	push	ar7
      0023DC C0 05            [24] 1062 	push	ar5
      0023DE C0 01            [24] 1063 	push	ar1
      0023E0 C0 00            [24] 1064 	push	ar0
      0023E2 12 2B 84         [24] 1065 	lcall	_qget
      0023E5 E5 82            [12] 1066 	mov	a,dpl
      0023E7 D0 00            [24] 1067 	pop	ar0
      0023E9 D0 01            [24] 1068 	pop	ar1
      0023EB D0 05            [24] 1069 	pop	ar5
      0023ED D0 07            [24] 1070 	pop	ar7
      0023EF 70 03            [24] 1071 	jnz	00184$
      0023F1 02 26 A3         [24] 1072 	ljmp	00119$
      0023F4                       1073 00184$:
                                   1074 ;	walk.c:120: printf("\033[2;1H% 8d% 8d% 8d% 8d", hp, tp, cur.r, cur.c);
      0023F4 74 02            [12] 1075 	mov	a,#0x02
      0023F6 2D               [12] 1076 	add	a,r5
      0023F7 FC               [12] 1077 	mov	r4,a
      0023F8 C0 00            [24] 1078 	push	ar0
      0023FA A8 10            [24] 1079 	mov	r0,_bp
      0023FC 08               [12] 1080 	inc	r0
      0023FD C0 01            [24] 1081 	push	ar1
      0023FF A9 04            [24] 1082 	mov	r1,ar4
      002401 E7               [12] 1083 	mov	a,@r1
      002402 F6               [12] 1084 	mov	@r0,a
      002403 09               [12] 1085 	inc	r1
      002404 E7               [12] 1086 	mov	a,@r1
      002405 08               [12] 1087 	inc	r0
      002406 F6               [12] 1088 	mov	@r0,a
      002407 D0 01            [24] 1089 	pop	ar1
      002409 A8 05            [24] 1090 	mov	r0,ar5
      00240B 86 03            [24] 1091 	mov	ar3,@r0
      00240D 08               [12] 1092 	inc	r0
      00240E 86 06            [24] 1093 	mov	ar6,@r0
      002410 D0 00            [24] 1094 	pop	ar0
      002412 C0 07            [24] 1095 	push	ar7
      002414 C0 05            [24] 1096 	push	ar5
      002416 C0 04            [24] 1097 	push	ar4
      002418 C0 01            [24] 1098 	push	ar1
      00241A C0 00            [24] 1099 	push	ar0
      00241C 85 00 F0         [24] 1100 	mov	b,ar0
      00241F A8 10            [24] 1101 	mov	r0,_bp
      002421 08               [12] 1102 	inc	r0
      002422 E6               [12] 1103 	mov	a,@r0
      002423 C0 E0            [24] 1104 	push	acc
      002425 08               [12] 1105 	inc	r0
      002426 E6               [12] 1106 	mov	a,@r0
      002427 C0 E0            [24] 1107 	push	acc
      002429 C0 03            [24] 1108 	push	ar3
      00242B C0 06            [24] 1109 	push	ar6
      00242D 90 FF 72         [24] 1110 	mov	dptr,#_tp
      002430 E0               [24] 1111 	movx	a,@dptr
      002431 C0 E0            [24] 1112 	push	acc
      002433 A3               [24] 1113 	inc	dptr
      002434 E0               [24] 1114 	movx	a,@dptr
      002435 C0 E0            [24] 1115 	push	acc
      002437 90 FF 70         [24] 1116 	mov	dptr,#_hp
      00243A E0               [24] 1117 	movx	a,@dptr
      00243B C0 E0            [24] 1118 	push	acc
      00243D A3               [24] 1119 	inc	dptr
      00243E E0               [24] 1120 	movx	a,@dptr
      00243F C0 E0            [24] 1121 	push	acc
      002441 74 F7            [12] 1122 	mov	a,#___str_1
      002443 C0 E0            [24] 1123 	push	acc
      002445 74 41            [12] 1124 	mov	a,#(___str_1 >> 8)
      002447 C0 E0            [24] 1125 	push	acc
      002449 74 80            [12] 1126 	mov	a,#0x80
      00244B C0 E0            [24] 1127 	push	acc
      00244D 12 2E B7         [24] 1128 	lcall	_printf
      002450 E5 81            [12] 1129 	mov	a,sp
      002452 24 F5            [12] 1130 	add	a,#0xf5
      002454 F5 81            [12] 1131 	mov	sp,a
      002456 D0 00            [24] 1132 	pop	ar0
      002458 D0 01            [24] 1133 	pop	ar1
      00245A D0 04            [24] 1134 	pop	ar4
      00245C D0 05            [24] 1135 	pop	ar5
      00245E D0 07            [24] 1136 	pop	ar7
                                   1137 ;	walk.c:122: printf("\033[%d;%dH.", cur.r + 4, cur.c + 1);
      002460 C0 00            [24] 1138 	push	ar0
      002462 A8 04            [24] 1139 	mov	r0,ar4
      002464 86 04            [24] 1140 	mov	ar4,@r0
      002466 08               [12] 1141 	inc	r0
      002467 86 06            [24] 1142 	mov	ar6,@r0
      002469 D0 00            [24] 1143 	pop	ar0
      00246B 0C               [12] 1144 	inc	r4
      00246C BC 00 01         [24] 1145 	cjne	r4,#0x00,00185$
      00246F 0E               [12] 1146 	inc	r6
      002470                       1147 00185$:
      002470 C0 00            [24] 1148 	push	ar0
      002472 A8 05            [24] 1149 	mov	r0,ar5
      002474 86 02            [24] 1150 	mov	ar2,@r0
      002476 08               [12] 1151 	inc	r0
      002477 86 03            [24] 1152 	mov	ar3,@r0
      002479 D0 00            [24] 1153 	pop	ar0
      00247B 74 04            [12] 1154 	mov	a,#0x04
      00247D 2A               [12] 1155 	add	a,r2
      00247E FA               [12] 1156 	mov	r2,a
      00247F E4               [12] 1157 	clr	a
      002480 3B               [12] 1158 	addc	a,r3
      002481 FB               [12] 1159 	mov	r3,a
      002482 C0 07            [24] 1160 	push	ar7
      002484 C0 05            [24] 1161 	push	ar5
      002486 C0 01            [24] 1162 	push	ar1
      002488 C0 00            [24] 1163 	push	ar0
      00248A C0 04            [24] 1164 	push	ar4
      00248C C0 06            [24] 1165 	push	ar6
      00248E C0 02            [24] 1166 	push	ar2
      002490 C0 03            [24] 1167 	push	ar3
      002492 74 0E            [12] 1168 	mov	a,#___str_2
      002494 C0 E0            [24] 1169 	push	acc
      002496 74 42            [12] 1170 	mov	a,#(___str_2 >> 8)
      002498 C0 E0            [24] 1171 	push	acc
      00249A 74 80            [12] 1172 	mov	a,#0x80
      00249C C0 E0            [24] 1173 	push	acc
      00249E 12 2E B7         [24] 1174 	lcall	_printf
      0024A1 E5 81            [12] 1175 	mov	a,sp
      0024A3 24 F9            [12] 1176 	add	a,#0xf9
      0024A5 F5 81            [12] 1177 	mov	sp,a
                                   1178 ;	walk.c:123: flashOE(OE76_MASK6);
      0024A7 75 82 40         [24] 1179 	mov	dpl,#0x40
      0024AA 12 20 8C         [24] 1180 	lcall	_flashOE
      0024AD D0 00            [24] 1181 	pop	ar0
      0024AF D0 01            [24] 1182 	pop	ar1
      0024B1 D0 05            [24] 1183 	pop	ar5
      0024B3 D0 07            [24] 1184 	pop	ar7
                                   1185 ;	walk.c:125: for (j = 0u; j < NMAX; j++)
      0024B5 7E 00            [12] 1186 	mov	r6,#0x00
                                   1187 ;	walk.c:149: return;
                                   1188 ;	walk.c:125: for (j = 0u; j < NMAX; j++)
      0024B7                       1189 00120$:
                                   1190 ;	walk.c:126: scramble[j] = j;
      0024B7 EE               [12] 1191 	mov	a,r6
      0024B8 2F               [12] 1192 	add	a,r7
      0024B9 C0 00            [24] 1193 	push	ar0
      0024BB F8               [12] 1194 	mov	r0,a
      0024BC A6 06            [24] 1195 	mov	@r0,ar6
      0024BE D0 00            [24] 1196 	pop	ar0
                                   1197 ;	walk.c:125: for (j = 0u; j < NMAX; j++)
      0024C0 0E               [12] 1198 	inc	r6
      0024C1 BE 10 00         [24] 1199 	cjne	r6,#0x10,00186$
      0024C4                       1200 00186$:
      0024C4 40 F1            [24] 1201 	jc	00120$
                                   1202 ;	walk.c:128: do ti = (uint8_t)(rand() % NMAX);
      0024C6 7C 00            [12] 1203 	mov	r4,#0x00
      0024C8                       1204 00107$:
      0024C8 C0 07            [24] 1205 	push	ar7
      0024CA C0 05            [24] 1206 	push	ar5
      0024CC C0 04            [24] 1207 	push	ar4
      0024CE C0 01            [24] 1208 	push	ar1
      0024D0 C0 00            [24] 1209 	push	ar0
      0024D2 12 2C 08         [24] 1210 	lcall	_rand
      0024D5 AA 82            [24] 1211 	mov	r2,dpl
      0024D7 D0 00            [24] 1212 	pop	ar0
      0024D9 D0 01            [24] 1213 	pop	ar1
      0024DB D0 04            [24] 1214 	pop	ar4
      0024DD D0 05            [24] 1215 	pop	ar5
      0024DF D0 07            [24] 1216 	pop	ar7
      0024E1 53 02 0F         [24] 1217 	anl	ar2,#0x0f
      0024E4 7B 00            [12] 1218 	mov	r3,#0x00
                                   1219 ;	walk.c:129: while (ti == j);
      0024E6 EA               [12] 1220 	mov	a,r2
      0024E7 B5 04 02         [24] 1221 	cjne	a,ar4,00188$
      0024EA 80 DC            [24] 1222 	sjmp	00107$
      0024EC                       1223 00188$:
                                   1224 ;	walk.c:130: do tj = (uint8_t)(rand() % NMAX);
      0024EC                       1225 00110$:
      0024EC C0 05            [24] 1226 	push	ar5
      0024EE C0 07            [24] 1227 	push	ar7
      0024F0 C0 04            [24] 1228 	push	ar4
      0024F2 C0 02            [24] 1229 	push	ar2
      0024F4 C0 01            [24] 1230 	push	ar1
      0024F6 C0 00            [24] 1231 	push	ar0
      0024F8 12 2C 08         [24] 1232 	lcall	_rand
      0024FB AB 82            [24] 1233 	mov	r3,dpl
      0024FD D0 00            [24] 1234 	pop	ar0
      0024FF D0 01            [24] 1235 	pop	ar1
      002501 D0 02            [24] 1236 	pop	ar2
      002503 D0 04            [24] 1237 	pop	ar4
      002505 D0 07            [24] 1238 	pop	ar7
      002507 53 03 0F         [24] 1239 	anl	ar3,#0x0f
      00250A 8B 06            [24] 1240 	mov	ar6,r3
                                   1241 ;	walk.c:131: while (ti == tj);
      00250C EA               [12] 1242 	mov	a,r2
      00250D B5 06 04         [24] 1243 	cjne	a,ar6,00189$
      002510 D0 05            [24] 1244 	pop	ar5
      002512 80 D8            [24] 1245 	sjmp	00110$
      002514                       1246 00189$:
                                   1247 ;	walk.c:132: tx = scramble[ti];
      002514 EA               [12] 1248 	mov	a,r2
      002515 2F               [12] 1249 	add	a,r7
      002516 FB               [12] 1250 	mov	r3,a
      002517 C0 00            [24] 1251 	push	ar0
      002519 E5 10            [12] 1252 	mov	a,_bp
      00251B 24 1F            [12] 1253 	add	a,#0x1f
      00251D F8               [12] 1254 	mov	r0,a
      00251E C0 01            [24] 1255 	push	ar1
      002520 A9 03            [24] 1256 	mov	r1,ar3
      002522 E7               [12] 1257 	mov	a,@r1
      002523 F6               [12] 1258 	mov	@r0,a
                                   1259 ;	walk.c:133: scramble[ti] = scramble[tj];
      002524 EE               [12] 1260 	mov	a,r6
      002525 2F               [12] 1261 	add	a,r7
      002526 FD               [12] 1262 	mov	r5,a
      002527 A8 05            [24] 1263 	mov	r0,ar5
      002529 86 02            [24] 1264 	mov	ar2,@r0
      00252B A8 03            [24] 1265 	mov	r0,ar3
      00252D A6 02            [24] 1266 	mov	@r0,ar2
                                   1267 ;	walk.c:134: scramble[tj] = tx;
      00252F A8 05            [24] 1268 	mov	r0,ar5
      002531 E5 10            [12] 1269 	mov	a,_bp
      002533 24 1F            [12] 1270 	add	a,#0x1f
      002535 F9               [12] 1271 	mov	r1,a
      002536 E7               [12] 1272 	mov	a,@r1
      002537 F6               [12] 1273 	mov	@r0,a
      002538 D0 00            [24] 1274 	pop	ar0
      00253A D0 01            [24] 1275 	pop	ar1
                                   1276 ;	walk.c:127: for (j = 0u; j < NMAX; j++) {
      00253C 0C               [12] 1277 	inc	r4
      00253D BC 10 00         [24] 1278 	cjne	r4,#0x10,00190$
      002540                       1279 00190$:
      002540 D0 05            [24] 1280 	pop	ar5
      002542 40 84            [24] 1281 	jc	00107$
                                   1282 ;	walk.c:137: for (j = 0u; j < NMAX; j++)
      002544 C0 00            [24] 1283 	push	ar0
      002546 A8 10            [24] 1284 	mov	r0,_bp
      002548 08               [12] 1285 	inc	r0
      002549 A6 05            [24] 1286 	mov	@r0,ar5
      00254B E5 10            [12] 1287 	mov	a,_bp
      00254D 24 20            [12] 1288 	add	a,#0x20
      00254F F8               [12] 1289 	mov	r0,a
      002550 76 00            [12] 1290 	mov	@r0,#0x00
      002552 D0 00            [24] 1291 	pop	ar0
      002554                       1292 00124$:
                                   1293 ;	walk.c:138: if (update(&t, &cur, scramble[j])) {
      002554 C0 05            [24] 1294 	push	ar5
      002556 C0 00            [24] 1295 	push	ar0
      002558 E5 10            [12] 1296 	mov	a,_bp
      00255A 24 20            [12] 1297 	add	a,#0x20
      00255C F8               [12] 1298 	mov	r0,a
      00255D E6               [12] 1299 	mov	a,@r0
      00255E 2F               [12] 1300 	add	a,r7
      00255F FA               [12] 1301 	mov	r2,a
      002560 A8 02            [24] 1302 	mov	r0,ar2
      002562 86 03            [24] 1303 	mov	ar3,@r0
      002564 A8 10            [24] 1304 	mov	r0,_bp
      002566 08               [12] 1305 	inc	r0
      002567 C0 01            [24] 1306 	push	ar1
      002569 E5 10            [12] 1307 	mov	a,_bp
      00256B 24 04            [12] 1308 	add	a,#0x04
      00256D F9               [12] 1309 	mov	r1,a
      00256E E6               [12] 1310 	mov	a,@r0
      00256F F7               [12] 1311 	mov	@r1,a
      002570 09               [12] 1312 	inc	r1
      002571 77 00            [12] 1313 	mov	@r1,#0x00
      002573 09               [12] 1314 	inc	r1
      002574 77 40            [12] 1315 	mov	@r1,#0x40
      002576 D0 01            [24] 1316 	pop	ar1
      002578 D0 00            [24] 1317 	pop	ar0
      00257A 89 02            [24] 1318 	mov	ar2,r1
      00257C 7C 00            [12] 1319 	mov	r4,#0x00
      00257E 7E 40            [12] 1320 	mov	r6,#0x40
      002580 C0 07            [24] 1321 	push	ar7
      002582 C0 05            [24] 1322 	push	ar5
      002584 C0 01            [24] 1323 	push	ar1
      002586 C0 00            [24] 1324 	push	ar0
      002588 C0 03            [24] 1325 	push	ar3
      00258A 85 00 F0         [24] 1326 	mov	b,ar0
      00258D E5 10            [12] 1327 	mov	a,_bp
      00258F 24 04            [12] 1328 	add	a,#0x04
      002591 F8               [12] 1329 	mov	r0,a
      002592 E6               [12] 1330 	mov	a,@r0
      002593 C0 E0            [24] 1331 	push	acc
      002595 08               [12] 1332 	inc	r0
      002596 E6               [12] 1333 	mov	a,@r0
      002597 C0 E0            [24] 1334 	push	acc
      002599 08               [12] 1335 	inc	r0
      00259A E6               [12] 1336 	mov	a,@r0
      00259B C0 E0            [24] 1337 	push	acc
      00259D 8A 82            [24] 1338 	mov	dpl,r2
      00259F 8C 83            [24] 1339 	mov	dph,r4
      0025A1 8E F0            [24] 1340 	mov	b,r6
      0025A3 12 20 9F         [24] 1341 	lcall	_update
      0025A6 AE 82            [24] 1342 	mov	r6,dpl
      0025A8 E5 81            [12] 1343 	mov	a,sp
      0025AA 24 FC            [12] 1344 	add	a,#0xfc
      0025AC F5 81            [12] 1345 	mov	sp,a
      0025AE D0 00            [24] 1346 	pop	ar0
      0025B0 D0 01            [24] 1347 	pop	ar1
      0025B2 D0 05            [24] 1348 	pop	ar5
      0025B4 D0 07            [24] 1349 	pop	ar7
      0025B6 D0 05            [24] 1350 	pop	ar5
      0025B8 EE               [12] 1351 	mov	a,r6
      0025B9 70 03            [24] 1352 	jnz	00192$
      0025BB 02 26 89         [24] 1353 	ljmp	00125$
      0025BE                       1354 00192$:
                                   1355 ;	walk.c:139: if (!qadd(&t)) bang();
      0025BE C0 00            [24] 1356 	push	ar0
      0025C0 E5 10            [12] 1357 	mov	a,_bp
      0025C2 24 03            [12] 1358 	add	a,#0x03
      0025C4 F8               [12] 1359 	mov	r0,a
      0025C5 86 03            [24] 1360 	mov	ar3,@r0
      0025C7 7C 00            [12] 1361 	mov	r4,#0x00
      0025C9 7E 40            [12] 1362 	mov	r6,#0x40
      0025CB D0 00            [24] 1363 	pop	ar0
      0025CD 8B 82            [24] 1364 	mov	dpl,r3
      0025CF 8C 83            [24] 1365 	mov	dph,r4
      0025D1 8E F0            [24] 1366 	mov	b,r6
      0025D3 C0 07            [24] 1367 	push	ar7
      0025D5 C0 05            [24] 1368 	push	ar5
      0025D7 C0 01            [24] 1369 	push	ar1
      0025D9 C0 00            [24] 1370 	push	ar0
      0025DB 12 2A 92         [24] 1371 	lcall	_qadd
      0025DE E5 82            [12] 1372 	mov	a,dpl
      0025E0 D0 00            [24] 1373 	pop	ar0
      0025E2 D0 01            [24] 1374 	pop	ar1
      0025E4 D0 05            [24] 1375 	pop	ar5
      0025E6 D0 07            [24] 1376 	pop	ar7
      0025E8 70 13            [24] 1377 	jnz	00115$
      0025EA C0 07            [24] 1378 	push	ar7
      0025EC C0 05            [24] 1379 	push	ar5
      0025EE C0 01            [24] 1380 	push	ar1
      0025F0 C0 00            [24] 1381 	push	ar0
      0025F2 12 20 7F         [24] 1382 	lcall	_bang
      0025F5 D0 00            [24] 1383 	pop	ar0
      0025F7 D0 01            [24] 1384 	pop	ar1
      0025F9 D0 05            [24] 1385 	pop	ar5
      0025FB D0 07            [24] 1386 	pop	ar7
      0025FD                       1387 00115$:
                                   1388 ;	walk.c:140: g[t.r][t.c] = 0xaau;
      0025FD 87 04            [24] 1389 	mov	ar4,@r1
      0025FF 09               [12] 1390 	inc	r1
      002600 87 06            [24] 1391 	mov	ar6,@r1
      002602 19               [12] 1392 	dec	r1
      002603 C0 07            [24] 1393 	push	ar7
      002605 C0 05            [24] 1394 	push	ar5
      002607 C0 01            [24] 1395 	push	ar1
      002609 C0 00            [24] 1396 	push	ar0
      00260B C0 04            [24] 1397 	push	ar4
      00260D C0 06            [24] 1398 	push	ar6
      00260F 90 00 C9         [24] 1399 	mov	dptr,#0x00c9
      002612 12 2D 00         [24] 1400 	lcall	__mulint
      002615 AC 82            [24] 1401 	mov	r4,dpl
      002617 AE 83            [24] 1402 	mov	r6,dph
      002619 15 81            [12] 1403 	dec	sp
      00261B 15 81            [12] 1404 	dec	sp
      00261D D0 00            [24] 1405 	pop	ar0
      00261F D0 01            [24] 1406 	pop	ar1
      002621 D0 05            [24] 1407 	pop	ar5
      002623 D0 07            [24] 1408 	pop	ar7
      002625 EC               [12] 1409 	mov	a,r4
      002626 24 00            [12] 1410 	add	a,#_g
      002628 FC               [12] 1411 	mov	r4,a
      002629 EE               [12] 1412 	mov	a,r6
      00262A 34 43            [12] 1413 	addc	a,#(_g >> 8)
      00262C FE               [12] 1414 	mov	r6,a
      00262D 86 02            [24] 1415 	mov	ar2,@r0
      00262F 08               [12] 1416 	inc	r0
      002630 86 03            [24] 1417 	mov	ar3,@r0
      002632 18               [12] 1418 	dec	r0
      002633 EA               [12] 1419 	mov	a,r2
      002634 2C               [12] 1420 	add	a,r4
      002635 F5 82            [12] 1421 	mov	dpl,a
      002637 EB               [12] 1422 	mov	a,r3
      002638 3E               [12] 1423 	addc	a,r6
      002639 F5 83            [12] 1424 	mov	dph,a
      00263B 74 AA            [12] 1425 	mov	a,#0xaa
      00263D F0               [24] 1426 	movx	@dptr,a
                                   1427 ;	walk.c:142: printf("\033[%d;%dHo", t.r + 4, t.c + 1);
      00263E 86 04            [24] 1428 	mov	ar4,@r0
      002640 08               [12] 1429 	inc	r0
      002641 86 06            [24] 1430 	mov	ar6,@r0
      002643 18               [12] 1431 	dec	r0
      002644 0C               [12] 1432 	inc	r4
      002645 BC 00 01         [24] 1433 	cjne	r4,#0x00,00194$
      002648 0E               [12] 1434 	inc	r6
      002649                       1435 00194$:
      002649 87 02            [24] 1436 	mov	ar2,@r1
      00264B 09               [12] 1437 	inc	r1
      00264C 87 03            [24] 1438 	mov	ar3,@r1
      00264E 19               [12] 1439 	dec	r1
      00264F 74 04            [12] 1440 	mov	a,#0x04
      002651 2A               [12] 1441 	add	a,r2
      002652 FA               [12] 1442 	mov	r2,a
      002653 E4               [12] 1443 	clr	a
      002654 3B               [12] 1444 	addc	a,r3
      002655 FB               [12] 1445 	mov	r3,a
      002656 C0 07            [24] 1446 	push	ar7
      002658 C0 05            [24] 1447 	push	ar5
      00265A C0 01            [24] 1448 	push	ar1
      00265C C0 00            [24] 1449 	push	ar0
      00265E C0 04            [24] 1450 	push	ar4
      002660 C0 06            [24] 1451 	push	ar6
      002662 C0 02            [24] 1452 	push	ar2
      002664 C0 03            [24] 1453 	push	ar3
      002666 74 18            [12] 1454 	mov	a,#___str_3
      002668 C0 E0            [24] 1455 	push	acc
      00266A 74 42            [12] 1456 	mov	a,#(___str_3 >> 8)
      00266C C0 E0            [24] 1457 	push	acc
      00266E 74 80            [12] 1458 	mov	a,#0x80
      002670 C0 E0            [24] 1459 	push	acc
      002672 12 2E B7         [24] 1460 	lcall	_printf
      002675 E5 81            [12] 1461 	mov	a,sp
      002677 24 F9            [12] 1462 	add	a,#0xf9
      002679 F5 81            [12] 1463 	mov	sp,a
                                   1464 ;	walk.c:143: flashOE(OE76_MASK7);
      00267B 75 82 80         [24] 1465 	mov	dpl,#0x80
      00267E 12 20 8C         [24] 1466 	lcall	_flashOE
      002681 D0 00            [24] 1467 	pop	ar0
      002683 D0 01            [24] 1468 	pop	ar1
      002685 D0 05            [24] 1469 	pop	ar5
      002687 D0 07            [24] 1470 	pop	ar7
      002689                       1471 00125$:
                                   1472 ;	walk.c:137: for (j = 0u; j < NMAX; j++)
      002689 C0 00            [24] 1473 	push	ar0
      00268B E5 10            [12] 1474 	mov	a,_bp
      00268D 24 20            [12] 1475 	add	a,#0x20
      00268F F8               [12] 1476 	mov	r0,a
      002690 06               [12] 1477 	inc	@r0
      002691 E5 10            [12] 1478 	mov	a,_bp
      002693 24 20            [12] 1479 	add	a,#0x20
      002695 F8               [12] 1480 	mov	r0,a
      002696 B6 10 00         [24] 1481 	cjne	@r0,#0x10,00195$
      002699                       1482 00195$:
      002699 D0 00            [24] 1483 	pop	ar0
      00269B 50 03            [24] 1484 	jnc	00196$
      00269D 02 25 54         [24] 1485 	ljmp	00124$
      0026A0                       1486 00196$:
                                   1487 ;	walk.c:146: goto process;
      0026A0 02 23 CE         [24] 1488 	ljmp	00103$
                                   1489 ;	walk.c:148: term:
      0026A3                       1490 00119$:
                                   1491 ;	walk.c:149: return;
                                   1492 ;	walk.c:150: }
      0026A3 85 10 81         [24] 1493 	mov	sp,_bp
      0026A6 D0 10            [24] 1494 	pop	_bp
      0026A8 22               [24] 1495 	ret
                                   1496 ;------------------------------------------------------------
                                   1497 ;Allocation info for local variables in function 'main'
                                   1498 ;------------------------------------------------------------
                                   1499 ;initial                   Allocated to stack - _bp +5
                                   1500 ;N                         Allocated to stack - _bp +9
                                   1501 ;i                         Allocated to stack - _bp +11
                                   1502 ;j                         Allocated to registers r2 r6 
                                   1503 ;sloc0                     Allocated to stack - _bp +1
                                   1504 ;sloc1                     Allocated to stack - _bp +3
                                   1505 ;sloc2                     Allocated to stack - _bp +15
                                   1506 ;------------------------------------------------------------
                                   1507 ;	walk.c:152: void main(void) {
                                   1508 ;	-----------------------------------------
                                   1509 ;	 function main
                                   1510 ;	-----------------------------------------
      0026A9                       1511 _main:
      0026A9 C0 10            [24] 1512 	push	_bp
      0026AB E5 81            [12] 1513 	mov	a,sp
      0026AD F5 10            [12] 1514 	mov	_bp,a
      0026AF 24 0C            [12] 1515 	add	a,#0x0c
      0026B1 F5 81            [12] 1516 	mov	sp,a
                                   1517 ;	walk.c:157: i0 = 1u;
      0026B3 78 11            [12] 1518 	mov	r0,#_i0
      0026B5 76 01            [12] 1519 	mov	@r0,#0x01
                                   1520 ;	walk.c:159: P1_7 = 1;
                                   1521 ;	assignBit
      0026B7 D2 97            [12] 1522 	setb	_P1_7
                                   1523 ;	walk.c:160: IT0 = 1;
                                   1524 ;	assignBit
      0026B9 D2 88            [12] 1525 	setb	_IT0
                                   1526 ;	walk.c:161: EX0 = 1;
                                   1527 ;	assignBit
      0026BB D2 A8            [12] 1528 	setb	_EX0
                                   1529 ;	walk.c:162: EA = 1;
                                   1530 ;	assignBit
      0026BD D2 AF            [12] 1531 	setb	_EA
                                   1532 ;	walk.c:164: srand(RND);
      0026BF 90 80 00         [24] 1533 	mov	dptr,#_RND
      0026C2 E0               [24] 1534 	movx	a,@dptr
      0026C3 FE               [12] 1535 	mov	r6,a
      0026C4 A3               [24] 1536 	inc	dptr
      0026C5 E0               [24] 1537 	movx	a,@dptr
      0026C6 FF               [12] 1538 	mov	r7,a
      0026C7 8E 82            [24] 1539 	mov	dpl,r6
      0026C9 8F 83            [24] 1540 	mov	dph,r7
      0026CB 12 2C CC         [24] 1541 	lcall	_srand
                                   1542 ;	walk.c:165: qinit();
      0026CE 12 2A 84         [24] 1543 	lcall	_qinit
                                   1544 ;	walk.c:167: puts("\033[2J\033[?25l");
      0026D1 90 42 22         [24] 1545 	mov	dptr,#___str_4
      0026D4 75 F0 80         [24] 1546 	mov	b,#0x80
      0026D7 12 2E 31         [24] 1547 	lcall	_puts
                                   1548 ;	walk.c:169: while (i0) {
      0026DA E5 10            [12] 1549 	mov	a,_bp
      0026DC 24 05            [12] 1550 	add	a,#0x05
      0026DE F9               [12] 1551 	mov	r1,a
      0026DF FF               [12] 1552 	mov	r7,a
      0026E0 E5 10            [12] 1553 	mov	a,_bp
      0026E2 24 09            [12] 1554 	add	a,#0x09
      0026E4 F8               [12] 1555 	mov	r0,a
      0026E5 E4               [12] 1556 	clr	a
      0026E6 F6               [12] 1557 	mov	@r0,a
      0026E7 08               [12] 1558 	inc	r0
      0026E8 F6               [12] 1559 	mov	@r0,a
      0026E9                       1560 00108$:
      0026E9 78 11            [12] 1561 	mov	r0,#_i0
      0026EB E6               [12] 1562 	mov	a,@r0
      0026EC 70 03            [24] 1563 	jnz	00182$
      0026EE 02 2A 70         [24] 1564 	ljmp	00110$
      0026F1                       1565 00182$:
                                   1566 ;	walk.c:170: for (i = 0; i < ROWS; i++)
      0026F1 7B 00            [12] 1567 	mov	r3,#0x00
      0026F3 7C 00            [12] 1568 	mov	r4,#0x00
      0026F5 A8 10            [24] 1569 	mov	r0,_bp
      0026F7 08               [12] 1570 	inc	r0
      0026F8 E4               [12] 1571 	clr	a
      0026F9 F6               [12] 1572 	mov	@r0,a
      0026FA 08               [12] 1573 	inc	r0
      0026FB F6               [12] 1574 	mov	@r0,a
                                   1575 ;	walk.c:171: for (j = 0; j < COLS; j++)
      0026FC                       1576 00125$:
      0026FC A8 10            [24] 1577 	mov	r0,_bp
      0026FE 08               [12] 1578 	inc	r0
      0026FF C0 01            [24] 1579 	push	ar1
      002701 E5 10            [12] 1580 	mov	a,_bp
      002703 24 03            [12] 1581 	add	a,#0x03
      002705 F9               [12] 1582 	mov	r1,a
      002706 E6               [12] 1583 	mov	a,@r0
      002707 24 00            [12] 1584 	add	a,#_g
      002709 F7               [12] 1585 	mov	@r1,a
      00270A 08               [12] 1586 	inc	r0
      00270B E6               [12] 1587 	mov	a,@r0
      00270C 34 43            [12] 1588 	addc	a,#(_g >> 8)
      00270E 09               [12] 1589 	inc	r1
      00270F F7               [12] 1590 	mov	@r1,a
      002710 D0 01            [24] 1591 	pop	ar1
      002712 7A 00            [12] 1592 	mov	r2,#0x00
      002714 7E 00            [12] 1593 	mov	r6,#0x00
      002716                       1594 00112$:
                                   1595 ;	walk.c:172: g[i][j] = 0x55u;
      002716 E5 10            [12] 1596 	mov	a,_bp
      002718 24 03            [12] 1597 	add	a,#0x03
      00271A F8               [12] 1598 	mov	r0,a
      00271B EA               [12] 1599 	mov	a,r2
      00271C 26               [12] 1600 	add	a,@r0
      00271D F5 82            [12] 1601 	mov	dpl,a
      00271F EE               [12] 1602 	mov	a,r6
      002720 08               [12] 1603 	inc	r0
      002721 36               [12] 1604 	addc	a,@r0
      002722 F5 83            [12] 1605 	mov	dph,a
      002724 74 55            [12] 1606 	mov	a,#0x55
      002726 F0               [24] 1607 	movx	@dptr,a
                                   1608 ;	walk.c:171: for (j = 0; j < COLS; j++)
      002727 0A               [12] 1609 	inc	r2
      002728 BA 00 01         [24] 1610 	cjne	r2,#0x00,00183$
      00272B 0E               [12] 1611 	inc	r6
      00272C                       1612 00183$:
      00272C C3               [12] 1613 	clr	c
      00272D EA               [12] 1614 	mov	a,r2
      00272E 94 C9            [12] 1615 	subb	a,#0xc9
      002730 EE               [12] 1616 	mov	a,r6
      002731 64 80            [12] 1617 	xrl	a,#0x80
      002733 94 80            [12] 1618 	subb	a,#0x80
      002735 40 DF            [24] 1619 	jc	00112$
                                   1620 ;	walk.c:170: for (i = 0; i < ROWS; i++)
      002737 A8 10            [24] 1621 	mov	r0,_bp
      002739 08               [12] 1622 	inc	r0
      00273A 74 C9            [12] 1623 	mov	a,#0xc9
      00273C 26               [12] 1624 	add	a,@r0
      00273D F6               [12] 1625 	mov	@r0,a
      00273E E4               [12] 1626 	clr	a
      00273F 08               [12] 1627 	inc	r0
      002740 36               [12] 1628 	addc	a,@r0
      002741 F6               [12] 1629 	mov	@r0,a
      002742 0B               [12] 1630 	inc	r3
      002743 BB 00 01         [24] 1631 	cjne	r3,#0x00,00185$
      002746 0C               [12] 1632 	inc	r4
      002747                       1633 00185$:
      002747 C3               [12] 1634 	clr	c
      002748 EB               [12] 1635 	mov	a,r3
      002749 94 30            [12] 1636 	subb	a,#0x30
      00274B EC               [12] 1637 	mov	a,r4
      00274C 64 80            [12] 1638 	xrl	a,#0x80
      00274E 94 80            [12] 1639 	subb	a,#0x80
      002750 40 AA            [24] 1640 	jc	00125$
                                   1641 ;	walk.c:174: initial.r = rand() % ROWS;
      002752 E5 10            [12] 1642 	mov	a,_bp
      002754 24 05            [12] 1643 	add	a,#0x05
      002756 F8               [12] 1644 	mov	r0,a
      002757 C0 07            [24] 1645 	push	ar7
      002759 C0 01            [24] 1646 	push	ar1
      00275B C0 00            [24] 1647 	push	ar0
      00275D 12 2C 08         [24] 1648 	lcall	_rand
      002760 AD 82            [24] 1649 	mov	r5,dpl
      002762 AE 83            [24] 1650 	mov	r6,dph
      002764 74 30            [12] 1651 	mov	a,#0x30
      002766 C0 E0            [24] 1652 	push	acc
      002768 E4               [12] 1653 	clr	a
      002769 C0 E0            [24] 1654 	push	acc
      00276B 8D 82            [24] 1655 	mov	dpl,r5
      00276D 8E 83            [24] 1656 	mov	dph,r6
      00276F 12 2F 0C         [24] 1657 	lcall	__modsint
      002772 AD 82            [24] 1658 	mov	r5,dpl
      002774 AE 83            [24] 1659 	mov	r6,dph
      002776 15 81            [12] 1660 	dec	sp
      002778 15 81            [12] 1661 	dec	sp
      00277A D0 00            [24] 1662 	pop	ar0
      00277C D0 01            [24] 1663 	pop	ar1
      00277E A6 05            [24] 1664 	mov	@r0,ar5
      002780 08               [12] 1665 	inc	r0
      002781 A6 06            [24] 1666 	mov	@r0,ar6
      002783 18               [12] 1667 	dec	r0
                                   1668 ;	walk.c:175: initial.c = rand() % COLS;
      002784 74 02            [12] 1669 	mov	a,#0x02
      002786 29               [12] 1670 	add	a,r1
      002787 F8               [12] 1671 	mov	r0,a
      002788 C0 01            [24] 1672 	push	ar1
      00278A C0 00            [24] 1673 	push	ar0
      00278C 12 2C 08         [24] 1674 	lcall	_rand
      00278F AD 82            [24] 1675 	mov	r5,dpl
      002791 AE 83            [24] 1676 	mov	r6,dph
      002793 74 C9            [12] 1677 	mov	a,#0xc9
      002795 C0 E0            [24] 1678 	push	acc
      002797 E4               [12] 1679 	clr	a
      002798 C0 E0            [24] 1680 	push	acc
      00279A 8D 82            [24] 1681 	mov	dpl,r5
      00279C 8E 83            [24] 1682 	mov	dph,r6
      00279E 12 2F 0C         [24] 1683 	lcall	__modsint
      0027A1 AD 82            [24] 1684 	mov	r5,dpl
      0027A3 AE 83            [24] 1685 	mov	r6,dph
      0027A5 15 81            [12] 1686 	dec	sp
      0027A7 15 81            [12] 1687 	dec	sp
      0027A9 D0 00            [24] 1688 	pop	ar0
      0027AB A6 05            [24] 1689 	mov	@r0,ar5
      0027AD 08               [12] 1690 	inc	r0
      0027AE A6 06            [24] 1691 	mov	@r0,ar6
      0027B0 18               [12] 1692 	dec	r0
                                   1693 ;	walk.c:177: puts("\033[2J\033[?25l");
      0027B1 90 42 22         [24] 1694 	mov	dptr,#___str_4
      0027B4 75 F0 80         [24] 1695 	mov	b,#0x80
      0027B7 C0 00            [24] 1696 	push	ar0
      0027B9 12 2E 31         [24] 1697 	lcall	_puts
      0027BC D0 00            [24] 1698 	pop	ar0
      0027BE D0 01            [24] 1699 	pop	ar1
                                   1700 ;	walk.c:178: printf("\033[1;1H% 8u% 8d% 8d", N, initial.r, initial.c);
      0027C0 86 05            [24] 1701 	mov	ar5,@r0
      0027C2 08               [12] 1702 	inc	r0
      0027C3 86 06            [24] 1703 	mov	ar6,@r0
      0027C5 18               [12] 1704 	dec	r0
      0027C6 87 03            [24] 1705 	mov	ar3,@r1
      0027C8 09               [12] 1706 	inc	r1
      0027C9 87 04            [24] 1707 	mov	ar4,@r1
      0027CB 19               [12] 1708 	dec	r1
      0027CC C0 01            [24] 1709 	push	ar1
      0027CE C0 05            [24] 1710 	push	ar5
      0027D0 C0 06            [24] 1711 	push	ar6
      0027D2 C0 03            [24] 1712 	push	ar3
      0027D4 C0 04            [24] 1713 	push	ar4
      0027D6 E5 10            [12] 1714 	mov	a,_bp
      0027D8 24 09            [12] 1715 	add	a,#0x09
      0027DA F8               [12] 1716 	mov	r0,a
      0027DB E6               [12] 1717 	mov	a,@r0
      0027DC C0 E0            [24] 1718 	push	acc
      0027DE 08               [12] 1719 	inc	r0
      0027DF E6               [12] 1720 	mov	a,@r0
      0027E0 C0 E0            [24] 1721 	push	acc
      0027E2 74 2D            [12] 1722 	mov	a,#___str_5
      0027E4 C0 E0            [24] 1723 	push	acc
      0027E6 74 42            [12] 1724 	mov	a,#(___str_5 >> 8)
      0027E8 C0 E0            [24] 1725 	push	acc
      0027EA 74 80            [12] 1726 	mov	a,#0x80
      0027EC C0 E0            [24] 1727 	push	acc
      0027EE 12 2E B7         [24] 1728 	lcall	_printf
      0027F1 E5 81            [12] 1729 	mov	a,sp
      0027F3 24 F7            [12] 1730 	add	a,#0xf7
      0027F5 F5 81            [12] 1731 	mov	sp,a
      0027F7 D0 01            [24] 1732 	pop	ar1
      0027F9 D0 07            [24] 1733 	pop	ar7
                                   1734 ;	walk.c:180: for (i = 0; i < REG; i++) {
      0027FB E5 10            [12] 1735 	mov	a,_bp
      0027FD 24 0B            [12] 1736 	add	a,#0x0b
      0027FF F8               [12] 1737 	mov	r0,a
      002800 E4               [12] 1738 	clr	a
      002801 F6               [12] 1739 	mov	@r0,a
      002802 08               [12] 1740 	inc	r0
      002803 F6               [12] 1741 	mov	@r0,a
      002804                       1742 00116$:
                                   1743 ;	walk.c:181: neigh[i].r = neigh[REG + i].r * (1 + rand() % 32);
      002804 C0 07            [24] 1744 	push	ar7
      002806 E5 10            [12] 1745 	mov	a,_bp
      002808 24 0B            [12] 1746 	add	a,#0x0b
      00280A F8               [12] 1747 	mov	r0,a
      00280B E6               [12] 1748 	mov	a,@r0
      00280C 25 E0            [12] 1749 	add	a,acc
      00280E FB               [12] 1750 	mov	r3,a
      00280F 08               [12] 1751 	inc	r0
      002810 E6               [12] 1752 	mov	a,@r0
      002811 33               [12] 1753 	rlc	a
      002812 FC               [12] 1754 	mov	r4,a
      002813 EB               [12] 1755 	mov	a,r3
      002814 2B               [12] 1756 	add	a,r3
      002815 FB               [12] 1757 	mov	r3,a
      002816 EC               [12] 1758 	mov	a,r4
      002817 33               [12] 1759 	rlc	a
      002818 FC               [12] 1760 	mov	r4,a
      002819 E5 10            [12] 1761 	mov	a,_bp
      00281B 24 03            [12] 1762 	add	a,#0x03
      00281D F8               [12] 1763 	mov	r0,a
      00281E EB               [12] 1764 	mov	a,r3
      00281F 24 74            [12] 1765 	add	a,#_neigh
      002821 F6               [12] 1766 	mov	@r0,a
      002822 EC               [12] 1767 	mov	a,r4
      002823 34 FF            [12] 1768 	addc	a,#(_neigh >> 8)
      002825 08               [12] 1769 	inc	r0
      002826 F6               [12] 1770 	mov	@r0,a
      002827 E5 10            [12] 1771 	mov	a,_bp
      002829 24 0B            [12] 1772 	add	a,#0x0b
      00282B F8               [12] 1773 	mov	r0,a
      00282C 86 06            [24] 1774 	mov	ar6,@r0
      00282E 74 08            [12] 1775 	mov	a,#0x08
      002830 2E               [12] 1776 	add	a,r6
      002831 FE               [12] 1777 	mov	r6,a
      002832 C2 D5            [12] 1778 	clr	F0
      002834 75 F0 04         [24] 1779 	mov	b,#0x04
      002837 EE               [12] 1780 	mov	a,r6
      002838 30 E7 04         [24] 1781 	jnb	acc.7,00187$
      00283B B2 D5            [12] 1782 	cpl	F0
      00283D F4               [12] 1783 	cpl	a
      00283E 04               [12] 1784 	inc	a
      00283F                       1785 00187$:
      00283F A4               [48] 1786 	mul	ab
      002840 30 D5 0A         [24] 1787 	jnb	F0,00188$
      002843 F4               [12] 1788 	cpl	a
      002844 24 01            [12] 1789 	add	a,#0x01
      002846 C5 F0            [12] 1790 	xch	a,b
      002848 F4               [12] 1791 	cpl	a
      002849 34 00            [12] 1792 	addc	a,#0x00
      00284B C5 F0            [12] 1793 	xch	a,b
      00284D                       1794 00188$:
      00284D FE               [12] 1795 	mov	r6,a
      00284E AD F0            [24] 1796 	mov	r5,b
      002850 24 74            [12] 1797 	add	a,#_neigh
      002852 F5 82            [12] 1798 	mov	dpl,a
      002854 ED               [12] 1799 	mov	a,r5
      002855 34 FF            [12] 1800 	addc	a,#(_neigh >> 8)
      002857 F5 83            [12] 1801 	mov	dph,a
      002859 A8 10            [24] 1802 	mov	r0,_bp
      00285B 08               [12] 1803 	inc	r0
      00285C E0               [24] 1804 	movx	a,@dptr
      00285D F6               [12] 1805 	mov	@r0,a
      00285E A3               [24] 1806 	inc	dptr
      00285F E0               [24] 1807 	movx	a,@dptr
      002860 08               [12] 1808 	inc	r0
      002861 F6               [12] 1809 	mov	@r0,a
      002862 C0 06            [24] 1810 	push	ar6
      002864 C0 05            [24] 1811 	push	ar5
      002866 C0 04            [24] 1812 	push	ar4
      002868 C0 03            [24] 1813 	push	ar3
      00286A C0 01            [24] 1814 	push	ar1
      00286C 12 2C 08         [24] 1815 	lcall	_rand
      00286F AA 82            [24] 1816 	mov	r2,dpl
      002871 AF 83            [24] 1817 	mov	r7,dph
      002873 74 20            [12] 1818 	mov	a,#0x20
      002875 C0 E0            [24] 1819 	push	acc
      002877 E4               [12] 1820 	clr	a
      002878 C0 E0            [24] 1821 	push	acc
      00287A 8A 82            [24] 1822 	mov	dpl,r2
      00287C 8F 83            [24] 1823 	mov	dph,r7
      00287E 12 2F 0C         [24] 1824 	lcall	__modsint
      002881 AA 82            [24] 1825 	mov	r2,dpl
      002883 AF 83            [24] 1826 	mov	r7,dph
      002885 15 81            [12] 1827 	dec	sp
      002887 15 81            [12] 1828 	dec	sp
      002889 D0 01            [24] 1829 	pop	ar1
      00288B D0 03            [24] 1830 	pop	ar3
      00288D D0 04            [24] 1831 	pop	ar4
      00288F D0 05            [24] 1832 	pop	ar5
      002891 D0 06            [24] 1833 	pop	ar6
      002893 0A               [12] 1834 	inc	r2
      002894 BA 00 01         [24] 1835 	cjne	r2,#0x00,00189$
      002897 0F               [12] 1836 	inc	r7
      002898                       1837 00189$:
      002898 C0 06            [24] 1838 	push	ar6
      00289A C0 05            [24] 1839 	push	ar5
      00289C C0 04            [24] 1840 	push	ar4
      00289E C0 03            [24] 1841 	push	ar3
      0028A0 C0 01            [24] 1842 	push	ar1
      0028A2 C0 02            [24] 1843 	push	ar2
      0028A4 C0 07            [24] 1844 	push	ar7
      0028A6 A8 10            [24] 1845 	mov	r0,_bp
      0028A8 08               [12] 1846 	inc	r0
      0028A9 86 82            [24] 1847 	mov	dpl,@r0
      0028AB 08               [12] 1848 	inc	r0
      0028AC 86 83            [24] 1849 	mov	dph,@r0
      0028AE 12 2D 00         [24] 1850 	lcall	__mulint
      0028B1 AA 82            [24] 1851 	mov	r2,dpl
      0028B3 AF 83            [24] 1852 	mov	r7,dph
      0028B5 15 81            [12] 1853 	dec	sp
      0028B7 15 81            [12] 1854 	dec	sp
      0028B9 D0 01            [24] 1855 	pop	ar1
      0028BB D0 03            [24] 1856 	pop	ar3
      0028BD D0 04            [24] 1857 	pop	ar4
      0028BF D0 05            [24] 1858 	pop	ar5
      0028C1 D0 06            [24] 1859 	pop	ar6
      0028C3 E5 10            [12] 1860 	mov	a,_bp
      0028C5 24 03            [12] 1861 	add	a,#0x03
      0028C7 F8               [12] 1862 	mov	r0,a
      0028C8 86 82            [24] 1863 	mov	dpl,@r0
      0028CA 08               [12] 1864 	inc	r0
      0028CB 86 83            [24] 1865 	mov	dph,@r0
      0028CD EA               [12] 1866 	mov	a,r2
      0028CE F0               [24] 1867 	movx	@dptr,a
      0028CF EF               [12] 1868 	mov	a,r7
      0028D0 A3               [24] 1869 	inc	dptr
      0028D1 F0               [24] 1870 	movx	@dptr,a
                                   1871 ;	walk.c:182: neigh[i].c = neigh[REG + i].c * (1 + rand() % 32);
      0028D2 EB               [12] 1872 	mov	a,r3
      0028D3 24 74            [12] 1873 	add	a,#_neigh
      0028D5 FB               [12] 1874 	mov	r3,a
      0028D6 EC               [12] 1875 	mov	a,r4
      0028D7 34 FF            [12] 1876 	addc	a,#(_neigh >> 8)
      0028D9 FC               [12] 1877 	mov	r4,a
      0028DA 74 02            [12] 1878 	mov	a,#0x02
      0028DC 2B               [12] 1879 	add	a,r3
      0028DD FA               [12] 1880 	mov	r2,a
      0028DE E4               [12] 1881 	clr	a
      0028DF 3C               [12] 1882 	addc	a,r4
      0028E0 FF               [12] 1883 	mov	r7,a
      0028E1 EE               [12] 1884 	mov	a,r6
      0028E2 24 74            [12] 1885 	add	a,#_neigh
      0028E4 FE               [12] 1886 	mov	r6,a
      0028E5 ED               [12] 1887 	mov	a,r5
      0028E6 34 FF            [12] 1888 	addc	a,#(_neigh >> 8)
      0028E8 FD               [12] 1889 	mov	r5,a
      0028E9 8E 82            [24] 1890 	mov	dpl,r6
      0028EB 8D 83            [24] 1891 	mov	dph,r5
      0028ED A3               [24] 1892 	inc	dptr
      0028EE A3               [24] 1893 	inc	dptr
      0028EF E5 10            [12] 1894 	mov	a,_bp
      0028F1 24 03            [12] 1895 	add	a,#0x03
      0028F3 F8               [12] 1896 	mov	r0,a
      0028F4 E0               [24] 1897 	movx	a,@dptr
      0028F5 F6               [12] 1898 	mov	@r0,a
      0028F6 A3               [24] 1899 	inc	dptr
      0028F7 E0               [24] 1900 	movx	a,@dptr
      0028F8 08               [12] 1901 	inc	r0
      0028F9 F6               [12] 1902 	mov	@r0,a
      0028FA C0 07            [24] 1903 	push	ar7
      0028FC C0 04            [24] 1904 	push	ar4
      0028FE C0 03            [24] 1905 	push	ar3
      002900 C0 02            [24] 1906 	push	ar2
      002902 C0 01            [24] 1907 	push	ar1
      002904 12 2C 08         [24] 1908 	lcall	_rand
      002907 AD 82            [24] 1909 	mov	r5,dpl
      002909 AE 83            [24] 1910 	mov	r6,dph
      00290B 74 20            [12] 1911 	mov	a,#0x20
      00290D C0 E0            [24] 1912 	push	acc
      00290F E4               [12] 1913 	clr	a
      002910 C0 E0            [24] 1914 	push	acc
      002912 8D 82            [24] 1915 	mov	dpl,r5
      002914 8E 83            [24] 1916 	mov	dph,r6
      002916 12 2F 0C         [24] 1917 	lcall	__modsint
      002919 AD 82            [24] 1918 	mov	r5,dpl
      00291B AE 83            [24] 1919 	mov	r6,dph
      00291D 15 81            [12] 1920 	dec	sp
      00291F 15 81            [12] 1921 	dec	sp
      002921 D0 01            [24] 1922 	pop	ar1
      002923 D0 02            [24] 1923 	pop	ar2
      002925 D0 03            [24] 1924 	pop	ar3
      002927 D0 04            [24] 1925 	pop	ar4
      002929 D0 07            [24] 1926 	pop	ar7
      00292B 0D               [12] 1927 	inc	r5
      00292C BD 00 01         [24] 1928 	cjne	r5,#0x00,00190$
      00292F 0E               [12] 1929 	inc	r6
      002930                       1930 00190$:
      002930 C0 07            [24] 1931 	push	ar7
      002932 C0 04            [24] 1932 	push	ar4
      002934 C0 03            [24] 1933 	push	ar3
      002936 C0 02            [24] 1934 	push	ar2
      002938 C0 01            [24] 1935 	push	ar1
      00293A C0 05            [24] 1936 	push	ar5
      00293C C0 06            [24] 1937 	push	ar6
      00293E E5 10            [12] 1938 	mov	a,_bp
      002940 24 03            [12] 1939 	add	a,#0x03
      002942 F8               [12] 1940 	mov	r0,a
      002943 86 82            [24] 1941 	mov	dpl,@r0
      002945 08               [12] 1942 	inc	r0
      002946 86 83            [24] 1943 	mov	dph,@r0
      002948 12 2D 00         [24] 1944 	lcall	__mulint
      00294B AD 82            [24] 1945 	mov	r5,dpl
      00294D AE 83            [24] 1946 	mov	r6,dph
      00294F 15 81            [12] 1947 	dec	sp
      002951 15 81            [12] 1948 	dec	sp
      002953 D0 01            [24] 1949 	pop	ar1
      002955 D0 02            [24] 1950 	pop	ar2
      002957 D0 03            [24] 1951 	pop	ar3
      002959 D0 04            [24] 1952 	pop	ar4
      00295B D0 07            [24] 1953 	pop	ar7
      00295D 8A 82            [24] 1954 	mov	dpl,r2
      00295F 8F 83            [24] 1955 	mov	dph,r7
      002961 ED               [12] 1956 	mov	a,r5
      002962 F0               [24] 1957 	movx	@dptr,a
      002963 EE               [12] 1958 	mov	a,r6
      002964 A3               [24] 1959 	inc	dptr
      002965 F0               [24] 1960 	movx	@dptr,a
                                   1961 ;	walk.c:183: printf("% 8d% 8d", neigh[i].r, neigh[i].c);
      002966 8B 82            [24] 1962 	mov	dpl,r3
      002968 8C 83            [24] 1963 	mov	dph,r4
      00296A E0               [24] 1964 	movx	a,@dptr
      00296B FB               [12] 1965 	mov	r3,a
      00296C A3               [24] 1966 	inc	dptr
      00296D E0               [24] 1967 	movx	a,@dptr
      00296E FC               [12] 1968 	mov	r4,a
      00296F C0 07            [24] 1969 	push	ar7
      002971 C0 01            [24] 1970 	push	ar1
      002973 C0 05            [24] 1971 	push	ar5
      002975 C0 06            [24] 1972 	push	ar6
      002977 C0 03            [24] 1973 	push	ar3
      002979 C0 04            [24] 1974 	push	ar4
      00297B 74 40            [12] 1975 	mov	a,#___str_6
      00297D C0 E0            [24] 1976 	push	acc
      00297F 74 42            [12] 1977 	mov	a,#(___str_6 >> 8)
      002981 C0 E0            [24] 1978 	push	acc
      002983 74 80            [12] 1979 	mov	a,#0x80
      002985 C0 E0            [24] 1980 	push	acc
      002987 12 2E B7         [24] 1981 	lcall	_printf
      00298A E5 81            [12] 1982 	mov	a,sp
      00298C 24 F9            [12] 1983 	add	a,#0xf9
      00298E F5 81            [12] 1984 	mov	sp,a
      002990 D0 01            [24] 1985 	pop	ar1
      002992 D0 07            [24] 1986 	pop	ar7
                                   1987 ;	walk.c:180: for (i = 0; i < REG; i++) {
      002994 E5 10            [12] 1988 	mov	a,_bp
      002996 24 0B            [12] 1989 	add	a,#0x0b
      002998 F8               [12] 1990 	mov	r0,a
      002999 06               [12] 1991 	inc	@r0
      00299A B6 00 02         [24] 1992 	cjne	@r0,#0x00,00191$
      00299D 08               [12] 1993 	inc	r0
      00299E 06               [12] 1994 	inc	@r0
      00299F                       1995 00191$:
      00299F E5 10            [12] 1996 	mov	a,_bp
      0029A1 24 0B            [12] 1997 	add	a,#0x0b
      0029A3 F8               [12] 1998 	mov	r0,a
      0029A4 86 05            [24] 1999 	mov	ar5,@r0
      0029A6 08               [12] 2000 	inc	r0
      0029A7 86 06            [24] 2001 	mov	ar6,@r0
      0029A9 C3               [12] 2002 	clr	c
      0029AA ED               [12] 2003 	mov	a,r5
      0029AB 94 08            [12] 2004 	subb	a,#0x08
      0029AD EE               [12] 2005 	mov	a,r6
      0029AE 94 00            [12] 2006 	subb	a,#0x00
      0029B0 D0 07            [24] 2007 	pop	ar7
      0029B2 50 03            [24] 2008 	jnc	00192$
      0029B4 02 28 04         [24] 2009 	ljmp	00116$
      0029B7                       2010 00192$:
                                   2011 ;	walk.c:186: OE76 = OE76_0;
      0029B7 78 12            [12] 2012 	mov	r0,#_OE76
      0029B9 76 3F            [12] 2013 	mov	@r0,#0x3f
                                   2014 ;	walk.c:187: flashOE(OE76_NC);
      0029BB 75 82 00         [24] 2015 	mov	dpl,#0x00
      0029BE C0 07            [24] 2016 	push	ar7
      0029C0 C0 01            [24] 2017 	push	ar1
      0029C2 12 20 8C         [24] 2018 	lcall	_flashOE
      0029C5 D0 01            [24] 2019 	pop	ar1
      0029C7 D0 07            [24] 2020 	pop	ar7
                                   2021 ;	walk.c:189: walk(&initial);
      0029C9 8F 04            [24] 2022 	mov	ar4,r7
      0029CB 7D 00            [12] 2023 	mov	r5,#0x00
      0029CD 7E 40            [12] 2024 	mov	r6,#0x40
      0029CF 8C 82            [24] 2025 	mov	dpl,r4
      0029D1 8D 83            [24] 2026 	mov	dph,r5
      0029D3 8E F0            [24] 2027 	mov	b,r6
      0029D5 C0 07            [24] 2028 	push	ar7
      0029D7 C0 01            [24] 2029 	push	ar1
      0029D9 12 23 2C         [24] 2030 	lcall	_walk
      0029DC D0 01            [24] 2031 	pop	ar1
      0029DE D0 07            [24] 2032 	pop	ar7
                                   2033 ;	walk.c:191: for (i = 0; i < ROWS; i++)
      0029E0 E5 10            [12] 2034 	mov	a,_bp
      0029E2 24 0B            [12] 2035 	add	a,#0x0b
      0029E4 F8               [12] 2036 	mov	r0,a
      0029E5 E4               [12] 2037 	clr	a
      0029E6 F6               [12] 2038 	mov	@r0,a
      0029E7 08               [12] 2039 	inc	r0
      0029E8 F6               [12] 2040 	mov	@r0,a
      0029E9 7B 00            [12] 2041 	mov	r3,#0x00
      0029EB 7C 00            [12] 2042 	mov	r4,#0x00
                                   2043 ;	walk.c:192: for (j = 0; j < COLS; j++)
      0029ED                       2044 00132$:
      0029ED E5 10            [12] 2045 	mov	a,_bp
      0029EF 24 03            [12] 2046 	add	a,#0x03
      0029F1 F8               [12] 2047 	mov	r0,a
      0029F2 EB               [12] 2048 	mov	a,r3
      0029F3 24 00            [12] 2049 	add	a,#_g
      0029F5 F6               [12] 2050 	mov	@r0,a
      0029F6 EC               [12] 2051 	mov	a,r4
      0029F7 34 43            [12] 2052 	addc	a,#(_g >> 8)
      0029F9 08               [12] 2053 	inc	r0
      0029FA F6               [12] 2054 	mov	@r0,a
      0029FB 7A 00            [12] 2055 	mov	r2,#0x00
      0029FD 7E 00            [12] 2056 	mov	r6,#0x00
      0029FF                       2057 00118$:
                                   2058 ;	walk.c:193: if (g[i][j] != 0xaau) bang();
      0029FF E5 10            [12] 2059 	mov	a,_bp
      002A01 24 03            [12] 2060 	add	a,#0x03
      002A03 F8               [12] 2061 	mov	r0,a
      002A04 EA               [12] 2062 	mov	a,r2
      002A05 26               [12] 2063 	add	a,@r0
      002A06 F5 82            [12] 2064 	mov	dpl,a
      002A08 EE               [12] 2065 	mov	a,r6
      002A09 08               [12] 2066 	inc	r0
      002A0A 36               [12] 2067 	addc	a,@r0
      002A0B F5 83            [12] 2068 	mov	dph,a
      002A0D E0               [24] 2069 	movx	a,@dptr
      002A0E FD               [12] 2070 	mov	r5,a
      002A0F BD AA 02         [24] 2071 	cjne	r5,#0xaa,00193$
      002A12 80 1B            [24] 2072 	sjmp	00119$
      002A14                       2073 00193$:
      002A14 C0 07            [24] 2074 	push	ar7
      002A16 C0 06            [24] 2075 	push	ar6
      002A18 C0 04            [24] 2076 	push	ar4
      002A1A C0 03            [24] 2077 	push	ar3
      002A1C C0 02            [24] 2078 	push	ar2
      002A1E C0 01            [24] 2079 	push	ar1
      002A20 12 20 7F         [24] 2080 	lcall	_bang
      002A23 D0 01            [24] 2081 	pop	ar1
      002A25 D0 02            [24] 2082 	pop	ar2
      002A27 D0 03            [24] 2083 	pop	ar3
      002A29 D0 04            [24] 2084 	pop	ar4
      002A2B D0 06            [24] 2085 	pop	ar6
      002A2D D0 07            [24] 2086 	pop	ar7
      002A2F                       2087 00119$:
                                   2088 ;	walk.c:192: for (j = 0; j < COLS; j++)
      002A2F 0A               [12] 2089 	inc	r2
      002A30 BA 00 01         [24] 2090 	cjne	r2,#0x00,00194$
      002A33 0E               [12] 2091 	inc	r6
      002A34                       2092 00194$:
      002A34 C3               [12] 2093 	clr	c
      002A35 EA               [12] 2094 	mov	a,r2
      002A36 94 C9            [12] 2095 	subb	a,#0xc9
      002A38 EE               [12] 2096 	mov	a,r6
      002A39 64 80            [12] 2097 	xrl	a,#0x80
      002A3B 94 80            [12] 2098 	subb	a,#0x80
      002A3D 40 C0            [24] 2099 	jc	00118$
                                   2100 ;	walk.c:191: for (i = 0; i < ROWS; i++)
      002A3F 74 C9            [12] 2101 	mov	a,#0xc9
      002A41 2B               [12] 2102 	add	a,r3
      002A42 FB               [12] 2103 	mov	r3,a
      002A43 E4               [12] 2104 	clr	a
      002A44 3C               [12] 2105 	addc	a,r4
      002A45 FC               [12] 2106 	mov	r4,a
      002A46 E5 10            [12] 2107 	mov	a,_bp
      002A48 24 0B            [12] 2108 	add	a,#0x0b
      002A4A F8               [12] 2109 	mov	r0,a
      002A4B 06               [12] 2110 	inc	@r0
      002A4C B6 00 02         [24] 2111 	cjne	@r0,#0x00,00196$
      002A4F 08               [12] 2112 	inc	r0
      002A50 06               [12] 2113 	inc	@r0
      002A51                       2114 00196$:
      002A51 E5 10            [12] 2115 	mov	a,_bp
      002A53 24 0B            [12] 2116 	add	a,#0x0b
      002A55 F8               [12] 2117 	mov	r0,a
      002A56 C3               [12] 2118 	clr	c
      002A57 E6               [12] 2119 	mov	a,@r0
      002A58 94 30            [12] 2120 	subb	a,#0x30
      002A5A 08               [12] 2121 	inc	r0
      002A5B E6               [12] 2122 	mov	a,@r0
      002A5C 64 80            [12] 2123 	xrl	a,#0x80
      002A5E 94 80            [12] 2124 	subb	a,#0x80
      002A60 40 8B            [24] 2125 	jc	00132$
                                   2126 ;	walk.c:195: N++;
      002A62 E5 10            [12] 2127 	mov	a,_bp
      002A64 24 09            [12] 2128 	add	a,#0x09
      002A66 F8               [12] 2129 	mov	r0,a
      002A67 06               [12] 2130 	inc	@r0
      002A68 B6 00 02         [24] 2131 	cjne	@r0,#0x00,00198$
      002A6B 08               [12] 2132 	inc	r0
      002A6C 06               [12] 2133 	inc	@r0
      002A6D                       2134 00198$:
      002A6D 02 26 E9         [24] 2135 	ljmp	00108$
      002A70                       2136 00110$:
                                   2137 ;	walk.c:198: EA = 0;
                                   2138 ;	assignBit
      002A70 C2 AF            [12] 2139 	clr	_EA
                                   2140 ;	walk.c:200: puts("\033[2J\033[?25h");
      002A72 90 42 49         [24] 2141 	mov	dptr,#___str_7
      002A75 75 F0 80         [24] 2142 	mov	b,#0x80
      002A78 12 2E 31         [24] 2143 	lcall	_puts
                                   2144 ;	walk.c:35: PCON |= 2;
      002A7B 43 87 02         [24] 2145 	orl	_PCON,#0x02
                                   2146 ;	walk.c:202: reset();
                                   2147 ;	walk.c:203: }
      002A7E 85 10 81         [24] 2148 	mov	sp,_bp
      002A81 D0 10            [24] 2149 	pop	_bp
      002A83 22               [24] 2150 	ret
                                   2151 ;------------------------------------------------------------
                                   2152 ;Allocation info for local variables in function 'qinit'
                                   2153 ;------------------------------------------------------------
                                   2154 ;	walk.c:205: static void qinit(void) {
                                   2155 ;	-----------------------------------------
                                   2156 ;	 function qinit
                                   2157 ;	-----------------------------------------
      002A84                       2158 _qinit:
                                   2159 ;	walk.c:206: hp = tp = 0;
      002A84 90 FF 72         [24] 2160 	mov	dptr,#_tp
      002A87 E4               [12] 2161 	clr	a
      002A88 F0               [24] 2162 	movx	@dptr,a
      002A89 A3               [24] 2163 	inc	dptr
      002A8A F0               [24] 2164 	movx	@dptr,a
      002A8B 90 FF 70         [24] 2165 	mov	dptr,#_hp
      002A8E F0               [24] 2166 	movx	@dptr,a
      002A8F A3               [24] 2167 	inc	dptr
      002A90 F0               [24] 2168 	movx	@dptr,a
                                   2169 ;	walk.c:207: return;
                                   2170 ;	walk.c:208: }
      002A91 22               [24] 2171 	ret
                                   2172 ;------------------------------------------------------------
                                   2173 ;Allocation info for local variables in function 'qadd'
                                   2174 ;------------------------------------------------------------
                                   2175 ;t                         Allocated to registers r7 r5 r6 
                                   2176 ;sloc0                     Allocated to stack - _bp +1
                                   2177 ;sloc1                     Allocated to stack - _bp +3
                                   2178 ;sloc2                     Allocated to stack - _bp +5
                                   2179 ;sloc3                     Allocated to stack - _bp +10
                                   2180 ;------------------------------------------------------------
                                   2181 ;	walk.c:210: static uint8_t qadd(struct node *t) {
                                   2182 ;	-----------------------------------------
                                   2183 ;	 function qadd
                                   2184 ;	-----------------------------------------
      002A92                       2185 _qadd:
      002A92 C0 10            [24] 2186 	push	_bp
      002A94 E5 81            [12] 2187 	mov	a,sp
      002A96 F5 10            [12] 2188 	mov	_bp,a
      002A98 24 06            [12] 2189 	add	a,#0x06
      002A9A F5 81            [12] 2190 	mov	sp,a
      002A9C AF 82            [24] 2191 	mov	r7,dpl
      002A9E AD 83            [24] 2192 	mov	r5,dph
      002AA0 AE F0            [24] 2193 	mov	r6,b
                                   2194 ;	walk.c:211: if (((hp + 1) % QMAX) == tp) return 0u;
      002AA2 90 FF 70         [24] 2195 	mov	dptr,#_hp
      002AA5 E0               [24] 2196 	movx	a,@dptr
      002AA6 FB               [12] 2197 	mov	r3,a
      002AA7 A3               [24] 2198 	inc	dptr
      002AA8 E0               [24] 2199 	movx	a,@dptr
      002AA9 FC               [12] 2200 	mov	r4,a
      002AAA A8 10            [24] 2201 	mov	r0,_bp
      002AAC 08               [12] 2202 	inc	r0
      002AAD 74 01            [12] 2203 	mov	a,#0x01
      002AAF 2B               [12] 2204 	add	a,r3
      002AB0 F6               [12] 2205 	mov	@r0,a
      002AB1 E4               [12] 2206 	clr	a
      002AB2 3C               [12] 2207 	addc	a,r4
      002AB3 08               [12] 2208 	inc	r0
      002AB4 F6               [12] 2209 	mov	@r0,a
      002AB5 C0 07            [24] 2210 	push	ar7
      002AB7 C0 06            [24] 2211 	push	ar6
      002AB9 C0 05            [24] 2212 	push	ar5
      002ABB C0 04            [24] 2213 	push	ar4
      002ABD C0 03            [24] 2214 	push	ar3
      002ABF 74 B0            [12] 2215 	mov	a,#0xb0
      002AC1 C0 E0            [24] 2216 	push	acc
      002AC3 74 25            [12] 2217 	mov	a,#0x25
      002AC5 C0 E0            [24] 2218 	push	acc
      002AC7 A8 10            [24] 2219 	mov	r0,_bp
      002AC9 08               [12] 2220 	inc	r0
      002ACA 86 82            [24] 2221 	mov	dpl,@r0
      002ACC 08               [12] 2222 	inc	r0
      002ACD 86 83            [24] 2223 	mov	dph,@r0
      002ACF 12 2F 0C         [24] 2224 	lcall	__modsint
      002AD2 A8 10            [24] 2225 	mov	r0,_bp
      002AD4 08               [12] 2226 	inc	r0
      002AD5 08               [12] 2227 	inc	r0
      002AD6 08               [12] 2228 	inc	r0
      002AD7 A6 82            [24] 2229 	mov	@r0,dpl
      002AD9 08               [12] 2230 	inc	r0
      002ADA A6 83            [24] 2231 	mov	@r0,dph
      002ADC 15 81            [12] 2232 	dec	sp
      002ADE 15 81            [12] 2233 	dec	sp
      002AE0 D0 03            [24] 2234 	pop	ar3
      002AE2 D0 04            [24] 2235 	pop	ar4
      002AE4 D0 05            [24] 2236 	pop	ar5
      002AE6 D0 06            [24] 2237 	pop	ar6
      002AE8 D0 07            [24] 2238 	pop	ar7
      002AEA 90 FF 72         [24] 2239 	mov	dptr,#_tp
      002AED E5 10            [12] 2240 	mov	a,_bp
      002AEF 24 05            [12] 2241 	add	a,#0x05
      002AF1 F8               [12] 2242 	mov	r0,a
      002AF2 E0               [24] 2243 	movx	a,@dptr
      002AF3 F6               [12] 2244 	mov	@r0,a
      002AF4 A3               [24] 2245 	inc	dptr
      002AF5 E0               [24] 2246 	movx	a,@dptr
      002AF6 08               [12] 2247 	inc	r0
      002AF7 F6               [12] 2248 	mov	@r0,a
      002AF8 E5 10            [12] 2249 	mov	a,_bp
      002AFA 24 03            [12] 2250 	add	a,#0x03
      002AFC F8               [12] 2251 	mov	r0,a
      002AFD E5 10            [12] 2252 	mov	a,_bp
      002AFF 24 05            [12] 2253 	add	a,#0x05
      002B01 F9               [12] 2254 	mov	r1,a
      002B02 86 F0            [24] 2255 	mov	b,@r0
      002B04 E7               [12] 2256 	mov	a,@r1
      002B05 B5 F0 0A         [24] 2257 	cjne	a,b,00109$
      002B08 08               [12] 2258 	inc	r0
      002B09 86 F0            [24] 2259 	mov	b,@r0
      002B0B 09               [12] 2260 	inc	r1
      002B0C E7               [12] 2261 	mov	a,@r1
      002B0D B5 F0 02         [24] 2262 	cjne	a,b,00109$
      002B10 80 02            [24] 2263 	sjmp	00110$
      002B12                       2264 00109$:
      002B12 80 05            [24] 2265 	sjmp	00102$
      002B14                       2266 00110$:
      002B14 75 82 00         [24] 2267 	mov	dpl,#0x00
      002B17 80 65            [24] 2268 	sjmp	00103$
      002B19                       2269 00102$:
                                   2270 ;	walk.c:212: queue[hp] = *t;
      002B19 8F 02            [24] 2271 	mov	ar2,r7
      002B1B 8E 07            [24] 2272 	mov	ar7,r6
      002B1D EB               [12] 2273 	mov	a,r3
      002B1E 2B               [12] 2274 	add	a,r3
      002B1F FB               [12] 2275 	mov	r3,a
      002B20 EC               [12] 2276 	mov	a,r4
      002B21 33               [12] 2277 	rlc	a
      002B22 FC               [12] 2278 	mov	r4,a
      002B23 EB               [12] 2279 	mov	a,r3
      002B24 2B               [12] 2280 	add	a,r3
      002B25 FB               [12] 2281 	mov	r3,a
      002B26 EC               [12] 2282 	mov	a,r4
      002B27 33               [12] 2283 	rlc	a
      002B28 FC               [12] 2284 	mov	r4,a
      002B29 EB               [12] 2285 	mov	a,r3
      002B2A 24 B0            [12] 2286 	add	a,#_queue
      002B2C FB               [12] 2287 	mov	r3,a
      002B2D EC               [12] 2288 	mov	a,r4
      002B2E 34 68            [12] 2289 	addc	a,#(_queue >> 8)
      002B30 FC               [12] 2290 	mov	r4,a
      002B31 7E 00            [12] 2291 	mov	r6,#0x00
      002B33 74 04            [12] 2292 	mov	a,#0x04
      002B35 C0 E0            [24] 2293 	push	acc
      002B37 E4               [12] 2294 	clr	a
      002B38 C0 E0            [24] 2295 	push	acc
      002B3A C0 02            [24] 2296 	push	ar2
      002B3C C0 05            [24] 2297 	push	ar5
      002B3E C0 07            [24] 2298 	push	ar7
      002B40 8B 82            [24] 2299 	mov	dpl,r3
      002B42 8C 83            [24] 2300 	mov	dph,r4
      002B44 8E F0            [24] 2301 	mov	b,r6
      002B46 12 2D 9E         [24] 2302 	lcall	___memcpy
      002B49 E5 81            [12] 2303 	mov	a,sp
      002B4B 24 FB            [12] 2304 	add	a,#0xfb
      002B4D F5 81            [12] 2305 	mov	sp,a
                                   2306 ;	walk.c:213: hp = (hp + 1) % QMAX;
      002B4F 90 FF 70         [24] 2307 	mov	dptr,#_hp
      002B52 E0               [24] 2308 	movx	a,@dptr
      002B53 FD               [12] 2309 	mov	r5,a
      002B54 A3               [24] 2310 	inc	dptr
      002B55 E0               [24] 2311 	movx	a,@dptr
      002B56 FE               [12] 2312 	mov	r6,a
      002B57 0D               [12] 2313 	inc	r5
      002B58 BD 00 01         [24] 2314 	cjne	r5,#0x00,00111$
      002B5B 0E               [12] 2315 	inc	r6
      002B5C                       2316 00111$:
      002B5C 74 B0            [12] 2317 	mov	a,#0xb0
      002B5E C0 E0            [24] 2318 	push	acc
      002B60 74 25            [12] 2319 	mov	a,#0x25
      002B62 C0 E0            [24] 2320 	push	acc
      002B64 8D 82            [24] 2321 	mov	dpl,r5
      002B66 8E 83            [24] 2322 	mov	dph,r6
      002B68 12 2F 0C         [24] 2323 	lcall	__modsint
      002B6B AD 82            [24] 2324 	mov	r5,dpl
      002B6D AE 83            [24] 2325 	mov	r6,dph
      002B6F 15 81            [12] 2326 	dec	sp
      002B71 15 81            [12] 2327 	dec	sp
      002B73 90 FF 70         [24] 2328 	mov	dptr,#_hp
      002B76 ED               [12] 2329 	mov	a,r5
      002B77 F0               [24] 2330 	movx	@dptr,a
      002B78 EE               [12] 2331 	mov	a,r6
      002B79 A3               [24] 2332 	inc	dptr
      002B7A F0               [24] 2333 	movx	@dptr,a
                                   2334 ;	walk.c:214: return 1u;
      002B7B 75 82 01         [24] 2335 	mov	dpl,#0x01
      002B7E                       2336 00103$:
                                   2337 ;	walk.c:215: }
      002B7E 85 10 81         [24] 2338 	mov	sp,_bp
      002B81 D0 10            [24] 2339 	pop	_bp
      002B83 22               [24] 2340 	ret
                                   2341 ;------------------------------------------------------------
                                   2342 ;Allocation info for local variables in function 'qget'
                                   2343 ;------------------------------------------------------------
                                   2344 ;t                         Allocated to registers r5 r6 r7 
                                   2345 ;------------------------------------------------------------
                                   2346 ;	walk.c:217: static uint8_t qget(struct node *t) {
                                   2347 ;	-----------------------------------------
                                   2348 ;	 function qget
                                   2349 ;	-----------------------------------------
      002B84                       2350 _qget:
      002B84 AD 82            [24] 2351 	mov	r5,dpl
      002B86 AE 83            [24] 2352 	mov	r6,dph
      002B88 AF F0            [24] 2353 	mov	r7,b
                                   2354 ;	walk.c:218: if (hp == tp) return 0u;
      002B8A 90 FF 70         [24] 2355 	mov	dptr,#_hp
      002B8D E0               [24] 2356 	movx	a,@dptr
      002B8E FB               [12] 2357 	mov	r3,a
      002B8F A3               [24] 2358 	inc	dptr
      002B90 E0               [24] 2359 	movx	a,@dptr
      002B91 FC               [12] 2360 	mov	r4,a
      002B92 90 FF 72         [24] 2361 	mov	dptr,#_tp
      002B95 E0               [24] 2362 	movx	a,@dptr
      002B96 F9               [12] 2363 	mov	r1,a
      002B97 A3               [24] 2364 	inc	dptr
      002B98 E0               [24] 2365 	movx	a,@dptr
      002B99 FA               [12] 2366 	mov	r2,a
      002B9A EB               [12] 2367 	mov	a,r3
      002B9B B5 01 08         [24] 2368 	cjne	a,ar1,00102$
      002B9E EC               [12] 2369 	mov	a,r4
      002B9F B5 02 04         [24] 2370 	cjne	a,ar2,00102$
      002BA2 75 82 00         [24] 2371 	mov	dpl,#0x00
      002BA5 22               [24] 2372 	ret
      002BA6                       2373 00102$:
                                   2374 ;	walk.c:219: *t = queue[tp];
      002BA6 E9               [12] 2375 	mov	a,r1
      002BA7 29               [12] 2376 	add	a,r1
      002BA8 F9               [12] 2377 	mov	r1,a
      002BA9 EA               [12] 2378 	mov	a,r2
      002BAA 33               [12] 2379 	rlc	a
      002BAB FA               [12] 2380 	mov	r2,a
      002BAC E9               [12] 2381 	mov	a,r1
      002BAD 29               [12] 2382 	add	a,r1
      002BAE F9               [12] 2383 	mov	r1,a
      002BAF EA               [12] 2384 	mov	a,r2
      002BB0 33               [12] 2385 	rlc	a
      002BB1 FA               [12] 2386 	mov	r2,a
      002BB2 E9               [12] 2387 	mov	a,r1
      002BB3 24 B0            [12] 2388 	add	a,#_queue
      002BB5 F9               [12] 2389 	mov	r1,a
      002BB6 EA               [12] 2390 	mov	a,r2
      002BB7 34 68            [12] 2391 	addc	a,#(_queue >> 8)
      002BB9 FA               [12] 2392 	mov	r2,a
      002BBA 7C 00            [12] 2393 	mov	r4,#0x00
      002BBC 74 04            [12] 2394 	mov	a,#0x04
      002BBE C0 E0            [24] 2395 	push	acc
      002BC0 E4               [12] 2396 	clr	a
      002BC1 C0 E0            [24] 2397 	push	acc
      002BC3 C0 01            [24] 2398 	push	ar1
      002BC5 C0 02            [24] 2399 	push	ar2
      002BC7 C0 04            [24] 2400 	push	ar4
      002BC9 8D 82            [24] 2401 	mov	dpl,r5
      002BCB 8E 83            [24] 2402 	mov	dph,r6
      002BCD 8F F0            [24] 2403 	mov	b,r7
      002BCF 12 2D 9E         [24] 2404 	lcall	___memcpy
      002BD2 E5 81            [12] 2405 	mov	a,sp
      002BD4 24 FB            [12] 2406 	add	a,#0xfb
      002BD6 F5 81            [12] 2407 	mov	sp,a
                                   2408 ;	walk.c:220: tp = (tp + 1) % QMAX;
      002BD8 90 FF 72         [24] 2409 	mov	dptr,#_tp
      002BDB E0               [24] 2410 	movx	a,@dptr
      002BDC FE               [12] 2411 	mov	r6,a
      002BDD A3               [24] 2412 	inc	dptr
      002BDE E0               [24] 2413 	movx	a,@dptr
      002BDF FF               [12] 2414 	mov	r7,a
      002BE0 0E               [12] 2415 	inc	r6
      002BE1 BE 00 01         [24] 2416 	cjne	r6,#0x00,00111$
      002BE4 0F               [12] 2417 	inc	r7
      002BE5                       2418 00111$:
      002BE5 74 B0            [12] 2419 	mov	a,#0xb0
      002BE7 C0 E0            [24] 2420 	push	acc
      002BE9 74 25            [12] 2421 	mov	a,#0x25
      002BEB C0 E0            [24] 2422 	push	acc
      002BED 8E 82            [24] 2423 	mov	dpl,r6
      002BEF 8F 83            [24] 2424 	mov	dph,r7
      002BF1 12 2F 0C         [24] 2425 	lcall	__modsint
      002BF4 AE 82            [24] 2426 	mov	r6,dpl
      002BF6 AF 83            [24] 2427 	mov	r7,dph
      002BF8 15 81            [12] 2428 	dec	sp
      002BFA 15 81            [12] 2429 	dec	sp
      002BFC 90 FF 72         [24] 2430 	mov	dptr,#_tp
      002BFF EE               [12] 2431 	mov	a,r6
      002C00 F0               [24] 2432 	movx	@dptr,a
      002C01 EF               [12] 2433 	mov	a,r7
      002C02 A3               [24] 2434 	inc	dptr
      002C03 F0               [24] 2435 	movx	@dptr,a
                                   2436 ;	walk.c:221: return 1u;
      002C04 75 82 01         [24] 2437 	mov	dpl,#0x01
                                   2438 ;	walk.c:222: }
      002C07 22               [24] 2439 	ret
                                   2440 	.area CSEG    (CODE)
                                   2441 	.area CONST   (CODE)
                                   2442 	.area CONST   (CODE)
      0041EA                       2443 ___str_0:
      0041EA 4D 65 6D 6F 72 79 20  2444 	.ascii "Memory error"
             65 72 72 6F 72
      0041F6 00                    2445 	.db 0x00
                                   2446 	.area CSEG    (CODE)
                                   2447 	.area CONST   (CODE)
      0041F7                       2448 ___str_1:
      0041F7 1B                    2449 	.db 0x1b
      0041F8 5B 32 3B 31 48 25 20  2450 	.ascii "[2;1H% 8d% 8d% 8d% 8d"
             38 64 25 20 38 64 25
             20 38 64 25 20 38 64
      00420D 00                    2451 	.db 0x00
                                   2452 	.area CSEG    (CODE)
                                   2453 	.area CONST   (CODE)
      00420E                       2454 ___str_2:
      00420E 1B                    2455 	.db 0x1b
      00420F 5B 25 64 3B 25 64 48  2456 	.ascii "[%d;%dH."
             2E
      004217 00                    2457 	.db 0x00
                                   2458 	.area CSEG    (CODE)
                                   2459 	.area CONST   (CODE)
      004218                       2460 ___str_3:
      004218 1B                    2461 	.db 0x1b
      004219 5B 25 64 3B 25 64 48  2462 	.ascii "[%d;%dHo"
             6F
      004221 00                    2463 	.db 0x00
                                   2464 	.area CSEG    (CODE)
                                   2465 	.area CONST   (CODE)
      004222                       2466 ___str_4:
      004222 1B                    2467 	.db 0x1b
      004223 5B 32 4A              2468 	.ascii "[2J"
      004226 1B                    2469 	.db 0x1b
      004227 5B 3F 32 35 6C        2470 	.ascii "[?25l"
      00422C 00                    2471 	.db 0x00
                                   2472 	.area CSEG    (CODE)
                                   2473 	.area CONST   (CODE)
      00422D                       2474 ___str_5:
      00422D 1B                    2475 	.db 0x1b
      00422E 5B 31 3B 31 48 25 20  2476 	.ascii "[1;1H% 8u% 8d% 8d"
             38 75 25 20 38 64 25
             20 38 64
      00423F 00                    2477 	.db 0x00
                                   2478 	.area CSEG    (CODE)
                                   2479 	.area CONST   (CODE)
      004240                       2480 ___str_6:
      004240 25 20 38 64 25 20 38  2481 	.ascii "% 8d% 8d"
             64
      004248 00                    2482 	.db 0x00
                                   2483 	.area CSEG    (CODE)
                                   2484 	.area CONST   (CODE)
      004249                       2485 ___str_7:
      004249 1B                    2486 	.db 0x1b
      00424A 5B 32 4A              2487 	.ascii "[2J"
      00424D 1B                    2488 	.db 0x1b
      00424E 5B 3F 32 35 68        2489 	.ascii "[?25h"
      004253 00                    2490 	.db 0x00
                                   2491 	.area CSEG    (CODE)
                                   2492 	.area XINIT   (CODE)
      00425F                       2493 __xinit__neigh:
      00425F FF FF                 2494 	.byte #0xff, #0xff	; -1
      004261 01 00                 2495 	.byte #0x01, #0x00	;  1
      004263 FF FF                 2496 	.byte #0xff, #0xff	; -1
      004265 FF FF                 2497 	.byte #0xff, #0xff	; -1
      004267 01 00                 2498 	.byte #0x01, #0x00	;  1
      004269 FF FF                 2499 	.byte #0xff, #0xff	; -1
      00426B 01 00                 2500 	.byte #0x01, #0x00	;  1
      00426D 01 00                 2501 	.byte #0x01, #0x00	;  1
      00426F FF FF                 2502 	.byte #0xff, #0xff	; -1
      004271 00 00                 2503 	.byte #0x00, #0x00	;  0
      004273 00 00                 2504 	.byte #0x00, #0x00	;  0
      004275 FF FF                 2505 	.byte #0xff, #0xff	; -1
      004277 01 00                 2506 	.byte #0x01, #0x00	;  1
      004279 00 00                 2507 	.byte #0x00, #0x00	;  0
      00427B 00 00                 2508 	.byte #0x00, #0x00	;  0
      00427D 01 00                 2509 	.byte #0x01, #0x00	;  1
      00427F FF FF                 2510 	.byte #0xff, #0xff	; -1
      004281 01 00                 2511 	.byte #0x01, #0x00	;  1
      004283 FF FF                 2512 	.byte #0xff, #0xff	; -1
      004285 FF FF                 2513 	.byte #0xff, #0xff	; -1
      004287 01 00                 2514 	.byte #0x01, #0x00	;  1
      004289 FF FF                 2515 	.byte #0xff, #0xff	; -1
      00428B 01 00                 2516 	.byte #0x01, #0x00	;  1
      00428D 01 00                 2517 	.byte #0x01, #0x00	;  1
      00428F FF FF                 2518 	.byte #0xff, #0xff	; -1
      004291 00 00                 2519 	.byte #0x00, #0x00	;  0
      004293 00 00                 2520 	.byte #0x00, #0x00	;  0
      004295 FF FF                 2521 	.byte #0xff, #0xff	; -1
      004297 01 00                 2522 	.byte #0x01, #0x00	;  1
      004299 00 00                 2523 	.byte #0x00, #0x00	;  0
      00429B 00 00                 2524 	.byte #0x00, #0x00	;  0
      00429D 01 00                 2525 	.byte #0x01, #0x00	;  1
                                   2526 	.area CABS    (ABS,CODE)
