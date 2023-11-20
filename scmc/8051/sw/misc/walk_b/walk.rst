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
      002006 02 26 FB         [24]  379 	ljmp	_main
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
      00207F 90 42 3C         [24]  462 	mov	dptr,#___str_0
      002082 75 F0 80         [24]  463 	mov	b,#0x80
      002085 12 2E 83         [24]  464 	lcall	_puts
                                    465 ;	walk.c:35: PCON |= 2;
      002088 43 87 02         [24]  466 	orl	_PCON,#0x02
                                    467 ;	walk.c:42: return;
                                    468 ;	walk.c:43: }
      00208B 22               [24]  469 	ret
                                    470 ;------------------------------------------------------------
                                    471 ;Allocation info for local variables in function 'setOE'
                                    472 ;------------------------------------------------------------
                                    473 ;mask                      Allocated to registers r7 
                                    474 ;------------------------------------------------------------
                                    475 ;	walk.c:85: static void setOE(uint8_t mask) {
                                    476 ;	-----------------------------------------
                                    477 ;	 function setOE
                                    478 ;	-----------------------------------------
      00208C                        479 _setOE:
      00208C AF 82            [24]  480 	mov	r7,dpl
                                    481 ;	walk.c:86: OE76 |= mask;
      00208E 78 12            [12]  482 	mov	r0,#_OE76
      002090 EF               [12]  483 	mov	a,r7
      002091 46               [12]  484 	orl	a,@r0
      002092 F6               [12]  485 	mov	@r0,a
                                    486 ;	walk.c:87: P1_7 = 0;
                                    487 ;	assignBit
      002093 C2 97            [12]  488 	clr	_P1_7
                                    489 ;	walk.c:88: OEreg = OE76;
      002095 78 12            [12]  490 	mov	r0,#_OE76
      002097 90 F0 06         [24]  491 	mov	dptr,#_OEreg
      00209A E6               [12]  492 	mov	a,@r0
      00209B F0               [24]  493 	movx	@dptr,a
                                    494 ;	walk.c:89: P1_7 = 1;
                                    495 ;	assignBit
      00209C D2 97            [12]  496 	setb	_P1_7
                                    497 ;	walk.c:91: return;
                                    498 ;	walk.c:92: }
      00209E 22               [24]  499 	ret
                                    500 ;------------------------------------------------------------
                                    501 ;Allocation info for local variables in function 'unsetOE'
                                    502 ;------------------------------------------------------------
                                    503 ;mask                      Allocated to registers r7 
                                    504 ;------------------------------------------------------------
                                    505 ;	walk.c:94: static void unsetOE(uint8_t mask) {
                                    506 ;	-----------------------------------------
                                    507 ;	 function unsetOE
                                    508 ;	-----------------------------------------
      00209F                        509 _unsetOE:
                                    510 ;	walk.c:95: OE76 &= ~mask;
      00209F E5 82            [12]  511 	mov	a,dpl
      0020A1 F4               [12]  512 	cpl	a
      0020A2 78 12            [12]  513 	mov	r0,#_OE76
      0020A4 56               [12]  514 	anl	a,@r0
      0020A5 F6               [12]  515 	mov	@r0,a
                                    516 ;	walk.c:96: P1_7 = 0;
                                    517 ;	assignBit
      0020A6 C2 97            [12]  518 	clr	_P1_7
                                    519 ;	walk.c:97: OEreg = OE76;
      0020A8 78 12            [12]  520 	mov	r0,#_OE76
      0020AA 90 F0 06         [24]  521 	mov	dptr,#_OEreg
      0020AD E6               [12]  522 	mov	a,@r0
      0020AE F0               [24]  523 	movx	@dptr,a
                                    524 ;	walk.c:98: P1_7 = 1;
                                    525 ;	assignBit
      0020AF D2 97            [12]  526 	setb	_P1_7
                                    527 ;	walk.c:100: return;
                                    528 ;	walk.c:101: }
      0020B1 22               [24]  529 	ret
                                    530 ;------------------------------------------------------------
                                    531 ;Allocation info for local variables in function 'flipOE'
                                    532 ;------------------------------------------------------------
                                    533 ;mask                      Allocated to registers r7 
                                    534 ;------------------------------------------------------------
                                    535 ;	walk.c:103: static void flipOE(uint8_t mask) {
                                    536 ;	-----------------------------------------
                                    537 ;	 function flipOE
                                    538 ;	-----------------------------------------
      0020B2                        539 _flipOE:
      0020B2 AF 82            [24]  540 	mov	r7,dpl
                                    541 ;	walk.c:104: OE76 ^= mask;
      0020B4 78 12            [12]  542 	mov	r0,#_OE76
      0020B6 EF               [12]  543 	mov	a,r7
      0020B7 66               [12]  544 	xrl	a,@r0
      0020B8 F6               [12]  545 	mov	@r0,a
                                    546 ;	walk.c:105: P1_7 = 0;
                                    547 ;	assignBit
      0020B9 C2 97            [12]  548 	clr	_P1_7
                                    549 ;	walk.c:106: OEreg = OE76;
      0020BB 78 12            [12]  550 	mov	r0,#_OE76
      0020BD 90 F0 06         [24]  551 	mov	dptr,#_OEreg
      0020C0 E6               [12]  552 	mov	a,@r0
      0020C1 F0               [24]  553 	movx	@dptr,a
                                    554 ;	walk.c:107: P1_7 = 1;
                                    555 ;	assignBit
      0020C2 D2 97            [12]  556 	setb	_P1_7
                                    557 ;	walk.c:109: return;
                                    558 ;	walk.c:110: }
      0020C4 22               [24]  559 	ret
                                    560 ;------------------------------------------------------------
                                    561 ;Allocation info for local variables in function 'update'
                                    562 ;------------------------------------------------------------
                                    563 ;cur                       Allocated to stack - _bp -5
                                    564 ;j                         Allocated to stack - _bp -6
                                    565 ;t                         Allocated to stack - _bp +1
                                    566 ;sloc0                     Allocated to stack - _bp +4
                                    567 ;sloc1                     Allocated to stack - _bp +6
                                    568 ;sloc2                     Allocated to stack - _bp +8
                                    569 ;------------------------------------------------------------
                                    570 ;	walk.c:112: static uint8_t update(struct node *t, struct node *cur, uint8_t j) {
                                    571 ;	-----------------------------------------
                                    572 ;	 function update
                                    573 ;	-----------------------------------------
      0020C5                        574 _update:
      0020C5 C0 10            [24]  575 	push	_bp
      0020C7 85 81 10         [24]  576 	mov	_bp,sp
      0020CA C0 82            [24]  577 	push	dpl
      0020CC C0 83            [24]  578 	push	dph
      0020CE C0 F0            [24]  579 	push	b
      0020D0 E5 81            [12]  580 	mov	a,sp
      0020D2 24 07            [12]  581 	add	a,#0x07
      0020D4 F5 81            [12]  582 	mov	sp,a
                                    583 ;	walk.c:113: t->r = cur->r + neigh[j].r;
      0020D6 E5 10            [12]  584 	mov	a,_bp
      0020D8 24 FB            [12]  585 	add	a,#0xfb
      0020DA F8               [12]  586 	mov	r0,a
      0020DB 86 02            [24]  587 	mov	ar2,@r0
      0020DD 08               [12]  588 	inc	r0
      0020DE 86 03            [24]  589 	mov	ar3,@r0
      0020E0 08               [12]  590 	inc	r0
      0020E1 86 04            [24]  591 	mov	ar4,@r0
      0020E3 8A 82            [24]  592 	mov	dpl,r2
      0020E5 8B 83            [24]  593 	mov	dph,r3
      0020E7 8C F0            [24]  594 	mov	b,r4
      0020E9 E5 10            [12]  595 	mov	a,_bp
      0020EB 24 04            [12]  596 	add	a,#0x04
      0020ED F8               [12]  597 	mov	r0,a
      0020EE 12 2F 42         [24]  598 	lcall	__gptrget
      0020F1 F6               [12]  599 	mov	@r0,a
      0020F2 A3               [24]  600 	inc	dptr
      0020F3 12 2F 42         [24]  601 	lcall	__gptrget
      0020F6 08               [12]  602 	inc	r0
      0020F7 F6               [12]  603 	mov	@r0,a
      0020F8 E5 10            [12]  604 	mov	a,_bp
      0020FA 24 FA            [12]  605 	add	a,#0xfa
      0020FC F8               [12]  606 	mov	r0,a
      0020FD E5 10            [12]  607 	mov	a,_bp
      0020FF 24 06            [12]  608 	add	a,#0x06
      002101 F9               [12]  609 	mov	r1,a
      002102 E6               [12]  610 	mov	a,@r0
      002103 75 F0 04         [24]  611 	mov	b,#0x04
      002106 A4               [48]  612 	mul	ab
      002107 F7               [12]  613 	mov	@r1,a
      002108 09               [12]  614 	inc	r1
      002109 A7 F0            [24]  615 	mov	@r1,b
      00210B E5 10            [12]  616 	mov	a,_bp
      00210D 24 06            [12]  617 	add	a,#0x06
      00210F F8               [12]  618 	mov	r0,a
      002110 E6               [12]  619 	mov	a,@r0
      002111 24 74            [12]  620 	add	a,#_neigh
      002113 F5 82            [12]  621 	mov	dpl,a
      002115 08               [12]  622 	inc	r0
      002116 E6               [12]  623 	mov	a,@r0
      002117 34 FF            [12]  624 	addc	a,#(_neigh >> 8)
      002119 F5 83            [12]  625 	mov	dph,a
      00211B E0               [24]  626 	movx	a,@dptr
      00211C FF               [12]  627 	mov	r7,a
      00211D A3               [24]  628 	inc	dptr
      00211E E0               [24]  629 	movx	a,@dptr
      00211F FE               [12]  630 	mov	r6,a
      002120 E5 10            [12]  631 	mov	a,_bp
      002122 24 04            [12]  632 	add	a,#0x04
      002124 F8               [12]  633 	mov	r0,a
      002125 EF               [12]  634 	mov	a,r7
      002126 26               [12]  635 	add	a,@r0
      002127 FF               [12]  636 	mov	r7,a
      002128 EE               [12]  637 	mov	a,r6
      002129 08               [12]  638 	inc	r0
      00212A 36               [12]  639 	addc	a,@r0
      00212B FE               [12]  640 	mov	r6,a
      00212C A8 10            [24]  641 	mov	r0,_bp
      00212E 08               [12]  642 	inc	r0
      00212F 86 82            [24]  643 	mov	dpl,@r0
      002131 08               [12]  644 	inc	r0
      002132 86 83            [24]  645 	mov	dph,@r0
      002134 08               [12]  646 	inc	r0
      002135 86 F0            [24]  647 	mov	b,@r0
      002137 EF               [12]  648 	mov	a,r7
      002138 12 2D 37         [24]  649 	lcall	__gptrput
      00213B A3               [24]  650 	inc	dptr
      00213C EE               [12]  651 	mov	a,r6
      00213D 12 2D 37         [24]  652 	lcall	__gptrput
                                    653 ;	walk.c:114: t->c = cur->c + neigh[j].c;
      002140 A8 10            [24]  654 	mov	r0,_bp
      002142 08               [12]  655 	inc	r0
      002143 E5 10            [12]  656 	mov	a,_bp
      002145 24 08            [12]  657 	add	a,#0x08
      002147 F9               [12]  658 	mov	r1,a
      002148 74 02            [12]  659 	mov	a,#0x02
      00214A 26               [12]  660 	add	a,@r0
      00214B F7               [12]  661 	mov	@r1,a
      00214C E4               [12]  662 	clr	a
      00214D 08               [12]  663 	inc	r0
      00214E 36               [12]  664 	addc	a,@r0
      00214F 09               [12]  665 	inc	r1
      002150 F7               [12]  666 	mov	@r1,a
      002151 08               [12]  667 	inc	r0
      002152 09               [12]  668 	inc	r1
      002153 E6               [12]  669 	mov	a,@r0
      002154 F7               [12]  670 	mov	@r1,a
      002155 74 02            [12]  671 	mov	a,#0x02
      002157 2A               [12]  672 	add	a,r2
      002158 FA               [12]  673 	mov	r2,a
      002159 E4               [12]  674 	clr	a
      00215A 3B               [12]  675 	addc	a,r3
      00215B FB               [12]  676 	mov	r3,a
      00215C 8A 82            [24]  677 	mov	dpl,r2
      00215E 8B 83            [24]  678 	mov	dph,r3
      002160 8C F0            [24]  679 	mov	b,r4
      002162 12 2F 42         [24]  680 	lcall	__gptrget
      002165 FA               [12]  681 	mov	r2,a
      002166 A3               [24]  682 	inc	dptr
      002167 12 2F 42         [24]  683 	lcall	__gptrget
      00216A FB               [12]  684 	mov	r3,a
      00216B E5 10            [12]  685 	mov	a,_bp
      00216D 24 06            [12]  686 	add	a,#0x06
      00216F F8               [12]  687 	mov	r0,a
      002170 E6               [12]  688 	mov	a,@r0
      002171 24 74            [12]  689 	add	a,#_neigh
      002173 FC               [12]  690 	mov	r4,a
      002174 08               [12]  691 	inc	r0
      002175 E6               [12]  692 	mov	a,@r0
      002176 34 FF            [12]  693 	addc	a,#(_neigh >> 8)
      002178 FD               [12]  694 	mov	r5,a
      002179 8C 82            [24]  695 	mov	dpl,r4
      00217B 8D 83            [24]  696 	mov	dph,r5
      00217D A3               [24]  697 	inc	dptr
      00217E A3               [24]  698 	inc	dptr
      00217F E0               [24]  699 	movx	a,@dptr
      002180 FC               [12]  700 	mov	r4,a
      002181 A3               [24]  701 	inc	dptr
      002182 E0               [24]  702 	movx	a,@dptr
      002183 FD               [12]  703 	mov	r5,a
      002184 EC               [12]  704 	mov	a,r4
      002185 2A               [12]  705 	add	a,r2
      002186 FA               [12]  706 	mov	r2,a
      002187 ED               [12]  707 	mov	a,r5
      002188 3B               [12]  708 	addc	a,r3
      002189 FB               [12]  709 	mov	r3,a
      00218A E5 10            [12]  710 	mov	a,_bp
      00218C 24 08            [12]  711 	add	a,#0x08
      00218E F8               [12]  712 	mov	r0,a
      00218F 86 82            [24]  713 	mov	dpl,@r0
      002191 08               [12]  714 	inc	r0
      002192 86 83            [24]  715 	mov	dph,@r0
      002194 08               [12]  716 	inc	r0
      002195 86 F0            [24]  717 	mov	b,@r0
      002197 EA               [12]  718 	mov	a,r2
      002198 12 2D 37         [24]  719 	lcall	__gptrput
      00219B A3               [24]  720 	inc	dptr
      00219C EB               [12]  721 	mov	a,r3
      00219D 12 2D 37         [24]  722 	lcall	__gptrput
                                    723 ;	walk.c:116: if (t->r < 0) t->r += ROWS;
      0021A0 A8 10            [24]  724 	mov	r0,_bp
      0021A2 08               [12]  725 	inc	r0
      0021A3 86 82            [24]  726 	mov	dpl,@r0
      0021A5 08               [12]  727 	inc	r0
      0021A6 86 83            [24]  728 	mov	dph,@r0
      0021A8 08               [12]  729 	inc	r0
      0021A9 86 F0            [24]  730 	mov	b,@r0
      0021AB 12 2F 42         [24]  731 	lcall	__gptrget
      0021AE FD               [12]  732 	mov	r5,a
      0021AF A3               [24]  733 	inc	dptr
      0021B0 12 2F 42         [24]  734 	lcall	__gptrget
      0021B3 FC               [12]  735 	mov	r4,a
      0021B4 EE               [12]  736 	mov	a,r6
      0021B5 30 E7 1D         [24]  737 	jnb	acc.7,00104$
      0021B8 74 30            [12]  738 	mov	a,#0x30
      0021BA 2D               [12]  739 	add	a,r5
      0021BB FF               [12]  740 	mov	r7,a
      0021BC E4               [12]  741 	clr	a
      0021BD 3C               [12]  742 	addc	a,r4
      0021BE FE               [12]  743 	mov	r6,a
      0021BF A8 10            [24]  744 	mov	r0,_bp
      0021C1 08               [12]  745 	inc	r0
      0021C2 86 82            [24]  746 	mov	dpl,@r0
      0021C4 08               [12]  747 	inc	r0
      0021C5 86 83            [24]  748 	mov	dph,@r0
      0021C7 08               [12]  749 	inc	r0
      0021C8 86 F0            [24]  750 	mov	b,@r0
      0021CA EF               [12]  751 	mov	a,r7
      0021CB 12 2D 37         [24]  752 	lcall	__gptrput
      0021CE A3               [24]  753 	inc	dptr
      0021CF EE               [12]  754 	mov	a,r6
      0021D0 12 2D 37         [24]  755 	lcall	__gptrput
      0021D3 80 27            [24]  756 	sjmp	00105$
      0021D5                        757 00104$:
                                    758 ;	walk.c:117: else if (t->r >= ROWS) t->r -= ROWS;
      0021D5 C3               [12]  759 	clr	c
      0021D6 ED               [12]  760 	mov	a,r5
      0021D7 94 30            [12]  761 	subb	a,#0x30
      0021D9 EC               [12]  762 	mov	a,r4
      0021DA 64 80            [12]  763 	xrl	a,#0x80
      0021DC 94 80            [12]  764 	subb	a,#0x80
      0021DE 40 1C            [24]  765 	jc	00105$
      0021E0 ED               [12]  766 	mov	a,r5
      0021E1 24 D0            [12]  767 	add	a,#0xd0
      0021E3 FD               [12]  768 	mov	r5,a
      0021E4 EC               [12]  769 	mov	a,r4
      0021E5 34 FF            [12]  770 	addc	a,#0xff
      0021E7 FC               [12]  771 	mov	r4,a
      0021E8 A8 10            [24]  772 	mov	r0,_bp
      0021EA 08               [12]  773 	inc	r0
      0021EB 86 82            [24]  774 	mov	dpl,@r0
      0021ED 08               [12]  775 	inc	r0
      0021EE 86 83            [24]  776 	mov	dph,@r0
      0021F0 08               [12]  777 	inc	r0
      0021F1 86 F0            [24]  778 	mov	b,@r0
      0021F3 ED               [12]  779 	mov	a,r5
      0021F4 12 2D 37         [24]  780 	lcall	__gptrput
      0021F7 A3               [24]  781 	inc	dptr
      0021F8 EC               [12]  782 	mov	a,r4
      0021F9 12 2D 37         [24]  783 	lcall	__gptrput
      0021FC                        784 00105$:
                                    785 ;	walk.c:118: if (t->c < 0) t->c += COLS;
      0021FC E5 10            [12]  786 	mov	a,_bp
      0021FE 24 08            [12]  787 	add	a,#0x08
      002200 F8               [12]  788 	mov	r0,a
      002201 86 82            [24]  789 	mov	dpl,@r0
      002203 08               [12]  790 	inc	r0
      002204 86 83            [24]  791 	mov	dph,@r0
      002206 08               [12]  792 	inc	r0
      002207 86 F0            [24]  793 	mov	b,@r0
      002209 12 2F 42         [24]  794 	lcall	__gptrget
      00220C A3               [24]  795 	inc	dptr
      00220D 12 2F 42         [24]  796 	lcall	__gptrget
      002210 30 E7 35         [24]  797 	jnb	acc.7,00109$
      002213 E5 10            [12]  798 	mov	a,_bp
      002215 24 08            [12]  799 	add	a,#0x08
      002217 F8               [12]  800 	mov	r0,a
      002218 86 82            [24]  801 	mov	dpl,@r0
      00221A 08               [12]  802 	inc	r0
      00221B 86 83            [24]  803 	mov	dph,@r0
      00221D 08               [12]  804 	inc	r0
      00221E 86 F0            [24]  805 	mov	b,@r0
      002220 12 2F 42         [24]  806 	lcall	__gptrget
      002223 FE               [12]  807 	mov	r6,a
      002224 A3               [24]  808 	inc	dptr
      002225 12 2F 42         [24]  809 	lcall	__gptrget
      002228 FF               [12]  810 	mov	r7,a
      002229 74 C9            [12]  811 	mov	a,#0xc9
      00222B 2E               [12]  812 	add	a,r6
      00222C FE               [12]  813 	mov	r6,a
      00222D E4               [12]  814 	clr	a
      00222E 3F               [12]  815 	addc	a,r7
      00222F FF               [12]  816 	mov	r7,a
      002230 E5 10            [12]  817 	mov	a,_bp
      002232 24 08            [12]  818 	add	a,#0x08
      002234 F8               [12]  819 	mov	r0,a
      002235 86 82            [24]  820 	mov	dpl,@r0
      002237 08               [12]  821 	inc	r0
      002238 86 83            [24]  822 	mov	dph,@r0
      00223A 08               [12]  823 	inc	r0
      00223B 86 F0            [24]  824 	mov	b,@r0
      00223D EE               [12]  825 	mov	a,r6
      00223E 12 2D 37         [24]  826 	lcall	__gptrput
      002241 A3               [24]  827 	inc	dptr
      002242 EF               [12]  828 	mov	a,r7
      002243 12 2D 37         [24]  829 	lcall	__gptrput
      002246 80 55            [24]  830 	sjmp	00110$
      002248                        831 00109$:
                                    832 ;	walk.c:119: else if (t->c >= COLS) t->c -= COLS;
      002248 E5 10            [12]  833 	mov	a,_bp
      00224A 24 08            [12]  834 	add	a,#0x08
      00224C F8               [12]  835 	mov	r0,a
      00224D 86 82            [24]  836 	mov	dpl,@r0
      00224F 08               [12]  837 	inc	r0
      002250 86 83            [24]  838 	mov	dph,@r0
      002252 08               [12]  839 	inc	r0
      002253 86 F0            [24]  840 	mov	b,@r0
      002255 12 2F 42         [24]  841 	lcall	__gptrget
      002258 FE               [12]  842 	mov	r6,a
      002259 A3               [24]  843 	inc	dptr
      00225A 12 2F 42         [24]  844 	lcall	__gptrget
      00225D FF               [12]  845 	mov	r7,a
      00225E C3               [12]  846 	clr	c
      00225F EE               [12]  847 	mov	a,r6
      002260 94 C9            [12]  848 	subb	a,#0xc9
      002262 EF               [12]  849 	mov	a,r7
      002263 64 80            [12]  850 	xrl	a,#0x80
      002265 94 80            [12]  851 	subb	a,#0x80
      002267 40 34            [24]  852 	jc	00110$
      002269 E5 10            [12]  853 	mov	a,_bp
      00226B 24 08            [12]  854 	add	a,#0x08
      00226D F8               [12]  855 	mov	r0,a
      00226E 86 82            [24]  856 	mov	dpl,@r0
      002270 08               [12]  857 	inc	r0
      002271 86 83            [24]  858 	mov	dph,@r0
      002273 08               [12]  859 	inc	r0
      002274 86 F0            [24]  860 	mov	b,@r0
      002276 12 2F 42         [24]  861 	lcall	__gptrget
      002279 FE               [12]  862 	mov	r6,a
      00227A A3               [24]  863 	inc	dptr
      00227B 12 2F 42         [24]  864 	lcall	__gptrget
      00227E FF               [12]  865 	mov	r7,a
      00227F EE               [12]  866 	mov	a,r6
      002280 24 37            [12]  867 	add	a,#0x37
      002282 FE               [12]  868 	mov	r6,a
      002283 EF               [12]  869 	mov	a,r7
      002284 34 FF            [12]  870 	addc	a,#0xff
      002286 FF               [12]  871 	mov	r7,a
      002287 E5 10            [12]  872 	mov	a,_bp
      002289 24 08            [12]  873 	add	a,#0x08
      00228B F8               [12]  874 	mov	r0,a
      00228C 86 82            [24]  875 	mov	dpl,@r0
      00228E 08               [12]  876 	inc	r0
      00228F 86 83            [24]  877 	mov	dph,@r0
      002291 08               [12]  878 	inc	r0
      002292 86 F0            [24]  879 	mov	b,@r0
      002294 EE               [12]  880 	mov	a,r6
      002295 12 2D 37         [24]  881 	lcall	__gptrput
      002298 A3               [24]  882 	inc	dptr
      002299 EF               [12]  883 	mov	a,r7
      00229A 12 2D 37         [24]  884 	lcall	__gptrput
      00229D                        885 00110$:
                                    886 ;	walk.c:121: if (g[t->r][t->c] == 0xaau) return 0u;
      00229D A8 10            [24]  887 	mov	r0,_bp
      00229F 08               [12]  888 	inc	r0
      0022A0 86 82            [24]  889 	mov	dpl,@r0
      0022A2 08               [12]  890 	inc	r0
      0022A3 86 83            [24]  891 	mov	dph,@r0
      0022A5 08               [12]  892 	inc	r0
      0022A6 86 F0            [24]  893 	mov	b,@r0
      0022A8 12 2F 42         [24]  894 	lcall	__gptrget
      0022AB FE               [12]  895 	mov	r6,a
      0022AC A3               [24]  896 	inc	dptr
      0022AD 12 2F 42         [24]  897 	lcall	__gptrget
      0022B0 FF               [12]  898 	mov	r7,a
      0022B1 C0 06            [24]  899 	push	ar6
      0022B3 C0 07            [24]  900 	push	ar7
      0022B5 90 00 C9         [24]  901 	mov	dptr,#0x00c9
      0022B8 12 2D 52         [24]  902 	lcall	__mulint
      0022BB AE 82            [24]  903 	mov	r6,dpl
      0022BD AF 83            [24]  904 	mov	r7,dph
      0022BF 15 81            [12]  905 	dec	sp
      0022C1 15 81            [12]  906 	dec	sp
      0022C3 EE               [12]  907 	mov	a,r6
      0022C4 24 00            [12]  908 	add	a,#_g
      0022C6 FE               [12]  909 	mov	r6,a
      0022C7 EF               [12]  910 	mov	a,r7
      0022C8 34 43            [12]  911 	addc	a,#(_g >> 8)
      0022CA FF               [12]  912 	mov	r7,a
      0022CB E5 10            [12]  913 	mov	a,_bp
      0022CD 24 08            [12]  914 	add	a,#0x08
      0022CF F8               [12]  915 	mov	r0,a
      0022D0 86 82            [24]  916 	mov	dpl,@r0
      0022D2 08               [12]  917 	inc	r0
      0022D3 86 83            [24]  918 	mov	dph,@r0
      0022D5 08               [12]  919 	inc	r0
      0022D6 86 F0            [24]  920 	mov	b,@r0
      0022D8 12 2F 42         [24]  921 	lcall	__gptrget
      0022DB FC               [12]  922 	mov	r4,a
      0022DC A3               [24]  923 	inc	dptr
      0022DD 12 2F 42         [24]  924 	lcall	__gptrget
      0022E0 FD               [12]  925 	mov	r5,a
      0022E1 EC               [12]  926 	mov	a,r4
      0022E2 2E               [12]  927 	add	a,r6
      0022E3 F5 82            [12]  928 	mov	dpl,a
      0022E5 ED               [12]  929 	mov	a,r5
      0022E6 3F               [12]  930 	addc	a,r7
      0022E7 F5 83            [12]  931 	mov	dph,a
      0022E9 E0               [24]  932 	movx	a,@dptr
      0022EA FF               [12]  933 	mov	r7,a
      0022EB BF AA 05         [24]  934 	cjne	r7,#0xaa,00114$
      0022EE 75 82 00         [24]  935 	mov	dpl,#0x00
      0022F1 80 59            [24]  936 	sjmp	00116$
      0022F3                        937 00114$:
                                    938 ;	walk.c:122: else if (g[t->r][t->c] != 0x55u) bang();
      0022F3 A8 10            [24]  939 	mov	r0,_bp
      0022F5 08               [12]  940 	inc	r0
      0022F6 86 82            [24]  941 	mov	dpl,@r0
      0022F8 08               [12]  942 	inc	r0
      0022F9 86 83            [24]  943 	mov	dph,@r0
      0022FB 08               [12]  944 	inc	r0
      0022FC 86 F0            [24]  945 	mov	b,@r0
      0022FE 12 2F 42         [24]  946 	lcall	__gptrget
      002301 FE               [12]  947 	mov	r6,a
      002302 A3               [24]  948 	inc	dptr
      002303 12 2F 42         [24]  949 	lcall	__gptrget
      002306 FF               [12]  950 	mov	r7,a
      002307 C0 06            [24]  951 	push	ar6
      002309 C0 07            [24]  952 	push	ar7
      00230B 90 00 C9         [24]  953 	mov	dptr,#0x00c9
      00230E 12 2D 52         [24]  954 	lcall	__mulint
      002311 AE 82            [24]  955 	mov	r6,dpl
      002313 AF 83            [24]  956 	mov	r7,dph
      002315 15 81            [12]  957 	dec	sp
      002317 15 81            [12]  958 	dec	sp
      002319 EE               [12]  959 	mov	a,r6
      00231A 24 00            [12]  960 	add	a,#_g
      00231C FE               [12]  961 	mov	r6,a
      00231D EF               [12]  962 	mov	a,r7
      00231E 34 43            [12]  963 	addc	a,#(_g >> 8)
      002320 FF               [12]  964 	mov	r7,a
      002321 E5 10            [12]  965 	mov	a,_bp
      002323 24 08            [12]  966 	add	a,#0x08
      002325 F8               [12]  967 	mov	r0,a
      002326 86 82            [24]  968 	mov	dpl,@r0
      002328 08               [12]  969 	inc	r0
      002329 86 83            [24]  970 	mov	dph,@r0
      00232B 08               [12]  971 	inc	r0
      00232C 86 F0            [24]  972 	mov	b,@r0
      00232E 12 2F 42         [24]  973 	lcall	__gptrget
      002331 FC               [12]  974 	mov	r4,a
      002332 A3               [24]  975 	inc	dptr
      002333 12 2F 42         [24]  976 	lcall	__gptrget
      002336 FD               [12]  977 	mov	r5,a
      002337 EC               [12]  978 	mov	a,r4
      002338 2E               [12]  979 	add	a,r6
      002339 F5 82            [12]  980 	mov	dpl,a
      00233B ED               [12]  981 	mov	a,r5
      00233C 3F               [12]  982 	addc	a,r7
      00233D F5 83            [12]  983 	mov	dph,a
      00233F E0               [24]  984 	movx	a,@dptr
      002340 FF               [12]  985 	mov	r7,a
      002341 BF 55 02         [24]  986 	cjne	r7,#0x55,00148$
      002344 80 03            [24]  987 	sjmp	00115$
      002346                        988 00148$:
      002346 12 20 7F         [24]  989 	lcall	_bang
      002349                        990 00115$:
                                    991 ;	walk.c:124: return 1u;
      002349 75 82 01         [24]  992 	mov	dpl,#0x01
      00234C                        993 00116$:
                                    994 ;	walk.c:125: }
      00234C 85 10 81         [24]  995 	mov	sp,_bp
      00234F D0 10            [24]  996 	pop	_bp
      002351 22               [24]  997 	ret
                                    998 ;------------------------------------------------------------
                                    999 ;Allocation info for local variables in function 'walk'
                                   1000 ;------------------------------------------------------------
                                   1001 ;nstart                    Allocated to registers r5 r6 r7 
                                   1002 ;cur                       Allocated to stack - _bp +7
                                   1003 ;t                         Allocated to stack - _bp +11
                                   1004 ;scramble                  Allocated to stack - _bp +15
                                   1005 ;ti                        Allocated to registers r2 
                                   1006 ;tj                        Allocated to registers r6 
                                   1007 ;tx                        Allocated to stack - _bp +31
                                   1008 ;j                         Allocated to stack - _bp +32
                                   1009 ;sloc0                     Allocated to stack - _bp +1
                                   1010 ;sloc1                     Allocated to stack - _bp +3
                                   1011 ;sloc2                     Allocated to stack - _bp +35
                                   1012 ;sloc3                     Allocated to stack - _bp +4
                                   1013 ;------------------------------------------------------------
                                   1014 ;	walk.c:127: static void walk(struct node *nstart) {
                                   1015 ;	-----------------------------------------
                                   1016 ;	 function walk
                                   1017 ;	-----------------------------------------
      002352                       1018 _walk:
      002352 C0 10            [24] 1019 	push	_bp
      002354 E5 81            [12] 1020 	mov	a,sp
      002356 F5 10            [12] 1021 	mov	_bp,a
      002358 24 20            [12] 1022 	add	a,#0x20
      00235A F5 81            [12] 1023 	mov	sp,a
                                   1024 ;	walk.c:132: if (!qadd(nstart)) bang();
      00235C AD 82            [24] 1025 	mov	r5,dpl
      00235E AE 83            [24] 1026 	mov	r6,dph
      002360 AF F0            [24] 1027 	mov	r7,b
      002362 C0 07            [24] 1028 	push	ar7
      002364 C0 06            [24] 1029 	push	ar6
      002366 C0 05            [24] 1030 	push	ar5
      002368 12 2A E4         [24] 1031 	lcall	_qadd
      00236B E5 82            [12] 1032 	mov	a,dpl
      00236D D0 05            [24] 1033 	pop	ar5
      00236F D0 06            [24] 1034 	pop	ar6
      002371 D0 07            [24] 1035 	pop	ar7
      002373 70 0F            [24] 1036 	jnz	00102$
      002375 C0 07            [24] 1037 	push	ar7
      002377 C0 06            [24] 1038 	push	ar6
      002379 C0 05            [24] 1039 	push	ar5
      00237B 12 20 7F         [24] 1040 	lcall	_bang
      00237E D0 05            [24] 1041 	pop	ar5
      002380 D0 06            [24] 1042 	pop	ar6
      002382 D0 07            [24] 1043 	pop	ar7
      002384                       1044 00102$:
                                   1045 ;	walk.c:133: g[nstart->r][nstart->c] = 0xaau;
      002384 8D 82            [24] 1046 	mov	dpl,r5
      002386 8E 83            [24] 1047 	mov	dph,r6
      002388 8F F0            [24] 1048 	mov	b,r7
      00238A 12 2F 42         [24] 1049 	lcall	__gptrget
      00238D FB               [12] 1050 	mov	r3,a
      00238E A3               [24] 1051 	inc	dptr
      00238F 12 2F 42         [24] 1052 	lcall	__gptrget
      002392 FC               [12] 1053 	mov	r4,a
      002393 C0 07            [24] 1054 	push	ar7
      002395 C0 06            [24] 1055 	push	ar6
      002397 C0 05            [24] 1056 	push	ar5
      002399 C0 03            [24] 1057 	push	ar3
      00239B C0 04            [24] 1058 	push	ar4
      00239D 90 00 C9         [24] 1059 	mov	dptr,#0x00c9
      0023A0 12 2D 52         [24] 1060 	lcall	__mulint
      0023A3 AB 82            [24] 1061 	mov	r3,dpl
      0023A5 AC 83            [24] 1062 	mov	r4,dph
      0023A7 15 81            [12] 1063 	dec	sp
      0023A9 15 81            [12] 1064 	dec	sp
      0023AB D0 05            [24] 1065 	pop	ar5
      0023AD D0 06            [24] 1066 	pop	ar6
      0023AF D0 07            [24] 1067 	pop	ar7
      0023B1 EB               [12] 1068 	mov	a,r3
      0023B2 24 00            [12] 1069 	add	a,#_g
      0023B4 FB               [12] 1070 	mov	r3,a
      0023B5 EC               [12] 1071 	mov	a,r4
      0023B6 34 43            [12] 1072 	addc	a,#(_g >> 8)
      0023B8 FC               [12] 1073 	mov	r4,a
      0023B9 74 02            [12] 1074 	mov	a,#0x02
      0023BB 2D               [12] 1075 	add	a,r5
      0023BC FD               [12] 1076 	mov	r5,a
      0023BD E4               [12] 1077 	clr	a
      0023BE 3E               [12] 1078 	addc	a,r6
      0023BF FE               [12] 1079 	mov	r6,a
      0023C0 8D 82            [24] 1080 	mov	dpl,r5
      0023C2 8E 83            [24] 1081 	mov	dph,r6
      0023C4 8F F0            [24] 1082 	mov	b,r7
      0023C6 12 2F 42         [24] 1083 	lcall	__gptrget
      0023C9 FD               [12] 1084 	mov	r5,a
      0023CA A3               [24] 1085 	inc	dptr
      0023CB 12 2F 42         [24] 1086 	lcall	__gptrget
      0023CE FE               [12] 1087 	mov	r6,a
      0023CF ED               [12] 1088 	mov	a,r5
      0023D0 2B               [12] 1089 	add	a,r3
      0023D1 F5 82            [12] 1090 	mov	dpl,a
      0023D3 EE               [12] 1091 	mov	a,r6
      0023D4 3C               [12] 1092 	addc	a,r4
      0023D5 F5 83            [12] 1093 	mov	dph,a
      0023D7 74 AA            [12] 1094 	mov	a,#0xaa
      0023D9 F0               [24] 1095 	movx	@dptr,a
                                   1096 ;	walk.c:135: process:
      0023DA E5 10            [12] 1097 	mov	a,_bp
      0023DC 24 0F            [12] 1098 	add	a,#0x0f
      0023DE FF               [12] 1099 	mov	r7,a
      0023DF E5 10            [12] 1100 	mov	a,_bp
      0023E1 24 0B            [12] 1101 	add	a,#0x0b
      0023E3 F9               [12] 1102 	mov	r1,a
      0023E4 E5 10            [12] 1103 	mov	a,_bp
      0023E6 24 03            [12] 1104 	add	a,#0x03
      0023E8 F8               [12] 1105 	mov	r0,a
      0023E9 A6 01            [24] 1106 	mov	@r0,ar1
      0023EB 74 02            [12] 1107 	mov	a,#0x02
      0023ED 29               [12] 1108 	add	a,r1
      0023EE F8               [12] 1109 	mov	r0,a
      0023EF E5 10            [12] 1110 	mov	a,_bp
      0023F1 24 07            [12] 1111 	add	a,#0x07
      0023F3 FD               [12] 1112 	mov	r5,a
      0023F4                       1113 00103$:
                                   1114 ;	walk.c:136: unsetOE(OE76_MASK7 | OE76_MASK6);
      0023F4 75 82 C0         [24] 1115 	mov	dpl,#0xc0
      0023F7 C0 07            [24] 1116 	push	ar7
      0023F9 C0 05            [24] 1117 	push	ar5
      0023FB C0 01            [24] 1118 	push	ar1
      0023FD C0 00            [24] 1119 	push	ar0
      0023FF 12 20 9F         [24] 1120 	lcall	_unsetOE
      002402 D0 00            [24] 1121 	pop	ar0
      002404 D0 01            [24] 1122 	pop	ar1
      002406 D0 05            [24] 1123 	pop	ar5
                                   1124 ;	walk.c:138: if (!qget(&cur)) goto term;
      002408 8D 02            [24] 1125 	mov	ar2,r5
      00240A 7B 00            [12] 1126 	mov	r3,#0x00
      00240C 7C 40            [12] 1127 	mov	r4,#0x40
      00240E 8A 82            [24] 1128 	mov	dpl,r2
      002410 8B 83            [24] 1129 	mov	dph,r3
      002412 8C F0            [24] 1130 	mov	b,r4
      002414 C0 05            [24] 1131 	push	ar5
      002416 C0 01            [24] 1132 	push	ar1
      002418 C0 00            [24] 1133 	push	ar0
      00241A 12 2B D6         [24] 1134 	lcall	_qget
      00241D E5 82            [12] 1135 	mov	a,dpl
      00241F D0 00            [24] 1136 	pop	ar0
      002421 D0 01            [24] 1137 	pop	ar1
      002423 D0 05            [24] 1138 	pop	ar5
      002425 D0 07            [24] 1139 	pop	ar7
      002427 70 03            [24] 1140 	jnz	00184$
      002429 02 26 F5         [24] 1141 	ljmp	00119$
      00242C                       1142 00184$:
                                   1143 ;	walk.c:140: printf("\033[2;1H% 8d% 8d% 8d% 8d", hp, tp, cur.r, cur.c);
      00242C 74 02            [12] 1144 	mov	a,#0x02
      00242E 2D               [12] 1145 	add	a,r5
      00242F FC               [12] 1146 	mov	r4,a
      002430 C0 00            [24] 1147 	push	ar0
      002432 A8 10            [24] 1148 	mov	r0,_bp
      002434 08               [12] 1149 	inc	r0
      002435 C0 01            [24] 1150 	push	ar1
      002437 A9 04            [24] 1151 	mov	r1,ar4
      002439 E7               [12] 1152 	mov	a,@r1
      00243A F6               [12] 1153 	mov	@r0,a
      00243B 09               [12] 1154 	inc	r1
      00243C E7               [12] 1155 	mov	a,@r1
      00243D 08               [12] 1156 	inc	r0
      00243E F6               [12] 1157 	mov	@r0,a
      00243F D0 01            [24] 1158 	pop	ar1
      002441 A8 05            [24] 1159 	mov	r0,ar5
      002443 86 03            [24] 1160 	mov	ar3,@r0
      002445 08               [12] 1161 	inc	r0
      002446 86 06            [24] 1162 	mov	ar6,@r0
      002448 D0 00            [24] 1163 	pop	ar0
      00244A C0 07            [24] 1164 	push	ar7
      00244C C0 05            [24] 1165 	push	ar5
      00244E C0 04            [24] 1166 	push	ar4
      002450 C0 01            [24] 1167 	push	ar1
      002452 C0 00            [24] 1168 	push	ar0
      002454 85 00 F0         [24] 1169 	mov	b,ar0
      002457 A8 10            [24] 1170 	mov	r0,_bp
      002459 08               [12] 1171 	inc	r0
      00245A E6               [12] 1172 	mov	a,@r0
      00245B C0 E0            [24] 1173 	push	acc
      00245D 08               [12] 1174 	inc	r0
      00245E E6               [12] 1175 	mov	a,@r0
      00245F C0 E0            [24] 1176 	push	acc
      002461 C0 03            [24] 1177 	push	ar3
      002463 C0 06            [24] 1178 	push	ar6
      002465 90 FF 72         [24] 1179 	mov	dptr,#_tp
      002468 E0               [24] 1180 	movx	a,@dptr
      002469 C0 E0            [24] 1181 	push	acc
      00246B A3               [24] 1182 	inc	dptr
      00246C E0               [24] 1183 	movx	a,@dptr
      00246D C0 E0            [24] 1184 	push	acc
      00246F 90 FF 70         [24] 1185 	mov	dptr,#_hp
      002472 E0               [24] 1186 	movx	a,@dptr
      002473 C0 E0            [24] 1187 	push	acc
      002475 A3               [24] 1188 	inc	dptr
      002476 E0               [24] 1189 	movx	a,@dptr
      002477 C0 E0            [24] 1190 	push	acc
      002479 74 49            [12] 1191 	mov	a,#___str_1
      00247B C0 E0            [24] 1192 	push	acc
      00247D 74 42            [12] 1193 	mov	a,#(___str_1 >> 8)
      00247F C0 E0            [24] 1194 	push	acc
      002481 74 80            [12] 1195 	mov	a,#0x80
      002483 C0 E0            [24] 1196 	push	acc
      002485 12 2F 09         [24] 1197 	lcall	_printf
      002488 E5 81            [12] 1198 	mov	a,sp
      00248A 24 F5            [12] 1199 	add	a,#0xf5
      00248C F5 81            [12] 1200 	mov	sp,a
      00248E D0 00            [24] 1201 	pop	ar0
      002490 D0 01            [24] 1202 	pop	ar1
      002492 D0 04            [24] 1203 	pop	ar4
      002494 D0 05            [24] 1204 	pop	ar5
      002496 D0 07            [24] 1205 	pop	ar7
                                   1206 ;	walk.c:142: printf("\033[%d;%dH.", cur.r + 4, cur.c + 1);
      002498 C0 00            [24] 1207 	push	ar0
      00249A A8 04            [24] 1208 	mov	r0,ar4
      00249C 86 04            [24] 1209 	mov	ar4,@r0
      00249E 08               [12] 1210 	inc	r0
      00249F 86 06            [24] 1211 	mov	ar6,@r0
      0024A1 D0 00            [24] 1212 	pop	ar0
      0024A3 0C               [12] 1213 	inc	r4
      0024A4 BC 00 01         [24] 1214 	cjne	r4,#0x00,00185$
      0024A7 0E               [12] 1215 	inc	r6
      0024A8                       1216 00185$:
      0024A8 C0 00            [24] 1217 	push	ar0
      0024AA A8 05            [24] 1218 	mov	r0,ar5
      0024AC 86 02            [24] 1219 	mov	ar2,@r0
      0024AE 08               [12] 1220 	inc	r0
      0024AF 86 03            [24] 1221 	mov	ar3,@r0
      0024B1 D0 00            [24] 1222 	pop	ar0
      0024B3 74 04            [12] 1223 	mov	a,#0x04
      0024B5 2A               [12] 1224 	add	a,r2
      0024B6 FA               [12] 1225 	mov	r2,a
      0024B7 E4               [12] 1226 	clr	a
      0024B8 3B               [12] 1227 	addc	a,r3
      0024B9 FB               [12] 1228 	mov	r3,a
      0024BA C0 07            [24] 1229 	push	ar7
      0024BC C0 05            [24] 1230 	push	ar5
      0024BE C0 01            [24] 1231 	push	ar1
      0024C0 C0 00            [24] 1232 	push	ar0
      0024C2 C0 04            [24] 1233 	push	ar4
      0024C4 C0 06            [24] 1234 	push	ar6
      0024C6 C0 02            [24] 1235 	push	ar2
      0024C8 C0 03            [24] 1236 	push	ar3
      0024CA 74 60            [12] 1237 	mov	a,#___str_2
      0024CC C0 E0            [24] 1238 	push	acc
      0024CE 74 42            [12] 1239 	mov	a,#(___str_2 >> 8)
      0024D0 C0 E0            [24] 1240 	push	acc
      0024D2 74 80            [12] 1241 	mov	a,#0x80
      0024D4 C0 E0            [24] 1242 	push	acc
      0024D6 12 2F 09         [24] 1243 	lcall	_printf
      0024D9 E5 81            [12] 1244 	mov	a,sp
      0024DB 24 F9            [12] 1245 	add	a,#0xf9
      0024DD F5 81            [12] 1246 	mov	sp,a
                                   1247 ;	walk.c:143: setOE(OE76_MASK6);
      0024DF 75 82 40         [24] 1248 	mov	dpl,#0x40
      0024E2 12 20 8C         [24] 1249 	lcall	_setOE
      0024E5 D0 00            [24] 1250 	pop	ar0
      0024E7 D0 01            [24] 1251 	pop	ar1
      0024E9 D0 05            [24] 1252 	pop	ar5
      0024EB D0 07            [24] 1253 	pop	ar7
                                   1254 ;	walk.c:145: for (j = 0u; j < NMAX; j++)
      0024ED 7E 00            [12] 1255 	mov	r6,#0x00
                                   1256 ;	walk.c:172: return;
                                   1257 ;	walk.c:145: for (j = 0u; j < NMAX; j++)
      0024EF                       1258 00120$:
                                   1259 ;	walk.c:146: scramble[j] = j;
      0024EF EE               [12] 1260 	mov	a,r6
      0024F0 2F               [12] 1261 	add	a,r7
      0024F1 C0 00            [24] 1262 	push	ar0
      0024F3 F8               [12] 1263 	mov	r0,a
      0024F4 A6 06            [24] 1264 	mov	@r0,ar6
      0024F6 D0 00            [24] 1265 	pop	ar0
                                   1266 ;	walk.c:145: for (j = 0u; j < NMAX; j++)
      0024F8 0E               [12] 1267 	inc	r6
      0024F9 BE 10 00         [24] 1268 	cjne	r6,#0x10,00186$
      0024FC                       1269 00186$:
      0024FC 40 F1            [24] 1270 	jc	00120$
                                   1271 ;	walk.c:148: do ti = (uint8_t)(rand() % NMAX);
      0024FE 7C 00            [12] 1272 	mov	r4,#0x00
      002500                       1273 00107$:
      002500 C0 07            [24] 1274 	push	ar7
      002502 C0 05            [24] 1275 	push	ar5
      002504 C0 04            [24] 1276 	push	ar4
      002506 C0 01            [24] 1277 	push	ar1
      002508 C0 00            [24] 1278 	push	ar0
      00250A 12 2C 5A         [24] 1279 	lcall	_rand
      00250D AA 82            [24] 1280 	mov	r2,dpl
      00250F D0 00            [24] 1281 	pop	ar0
      002511 D0 01            [24] 1282 	pop	ar1
      002513 D0 04            [24] 1283 	pop	ar4
      002515 D0 05            [24] 1284 	pop	ar5
      002517 D0 07            [24] 1285 	pop	ar7
      002519 53 02 0F         [24] 1286 	anl	ar2,#0x0f
      00251C 7B 00            [12] 1287 	mov	r3,#0x00
                                   1288 ;	walk.c:149: while (ti == j);
      00251E EA               [12] 1289 	mov	a,r2
      00251F B5 04 02         [24] 1290 	cjne	a,ar4,00188$
      002522 80 DC            [24] 1291 	sjmp	00107$
      002524                       1292 00188$:
                                   1293 ;	walk.c:150: do tj = (uint8_t)(rand() % NMAX);
      002524                       1294 00110$:
      002524 C0 05            [24] 1295 	push	ar5
      002526 C0 07            [24] 1296 	push	ar7
      002528 C0 04            [24] 1297 	push	ar4
      00252A C0 02            [24] 1298 	push	ar2
      00252C C0 01            [24] 1299 	push	ar1
      00252E C0 00            [24] 1300 	push	ar0
      002530 12 2C 5A         [24] 1301 	lcall	_rand
      002533 AB 82            [24] 1302 	mov	r3,dpl
      002535 D0 00            [24] 1303 	pop	ar0
      002537 D0 01            [24] 1304 	pop	ar1
      002539 D0 02            [24] 1305 	pop	ar2
      00253B D0 04            [24] 1306 	pop	ar4
      00253D D0 07            [24] 1307 	pop	ar7
      00253F 53 03 0F         [24] 1308 	anl	ar3,#0x0f
      002542 8B 06            [24] 1309 	mov	ar6,r3
                                   1310 ;	walk.c:151: while (ti == tj);
      002544 EA               [12] 1311 	mov	a,r2
      002545 B5 06 04         [24] 1312 	cjne	a,ar6,00189$
      002548 D0 05            [24] 1313 	pop	ar5
      00254A 80 D8            [24] 1314 	sjmp	00110$
      00254C                       1315 00189$:
                                   1316 ;	walk.c:152: tx = scramble[ti];
      00254C EA               [12] 1317 	mov	a,r2
      00254D 2F               [12] 1318 	add	a,r7
      00254E FB               [12] 1319 	mov	r3,a
      00254F C0 00            [24] 1320 	push	ar0
      002551 E5 10            [12] 1321 	mov	a,_bp
      002553 24 1F            [12] 1322 	add	a,#0x1f
      002555 F8               [12] 1323 	mov	r0,a
      002556 C0 01            [24] 1324 	push	ar1
      002558 A9 03            [24] 1325 	mov	r1,ar3
      00255A E7               [12] 1326 	mov	a,@r1
      00255B F6               [12] 1327 	mov	@r0,a
                                   1328 ;	walk.c:153: scramble[ti] = scramble[tj];
      00255C EE               [12] 1329 	mov	a,r6
      00255D 2F               [12] 1330 	add	a,r7
      00255E FD               [12] 1331 	mov	r5,a
      00255F A8 05            [24] 1332 	mov	r0,ar5
      002561 86 02            [24] 1333 	mov	ar2,@r0
      002563 A8 03            [24] 1334 	mov	r0,ar3
      002565 A6 02            [24] 1335 	mov	@r0,ar2
                                   1336 ;	walk.c:154: scramble[tj] = tx;
      002567 A8 05            [24] 1337 	mov	r0,ar5
      002569 E5 10            [12] 1338 	mov	a,_bp
      00256B 24 1F            [12] 1339 	add	a,#0x1f
      00256D F9               [12] 1340 	mov	r1,a
      00256E E7               [12] 1341 	mov	a,@r1
      00256F F6               [12] 1342 	mov	@r0,a
      002570 D0 00            [24] 1343 	pop	ar0
      002572 D0 01            [24] 1344 	pop	ar1
                                   1345 ;	walk.c:147: for (j = 0u; j < NMAX; j++) {
      002574 0C               [12] 1346 	inc	r4
      002575 BC 10 00         [24] 1347 	cjne	r4,#0x10,00190$
      002578                       1348 00190$:
      002578 D0 05            [24] 1349 	pop	ar5
      00257A 40 84            [24] 1350 	jc	00107$
                                   1351 ;	walk.c:157: for (j = 0u; j < NMAX; j++) {
      00257C C0 00            [24] 1352 	push	ar0
      00257E A8 10            [24] 1353 	mov	r0,_bp
      002580 08               [12] 1354 	inc	r0
      002581 A6 05            [24] 1355 	mov	@r0,ar5
      002583 E5 10            [12] 1356 	mov	a,_bp
      002585 24 20            [12] 1357 	add	a,#0x20
      002587 F8               [12] 1358 	mov	r0,a
      002588 76 00            [12] 1359 	mov	@r0,#0x00
      00258A D0 00            [24] 1360 	pop	ar0
      00258C                       1361 00124$:
                                   1362 ;	walk.c:158: unsetOE(OE76_MASK7);
      00258C C0 05            [24] 1363 	push	ar5
      00258E 75 82 80         [24] 1364 	mov	dpl,#0x80
      002591 C0 07            [24] 1365 	push	ar7
      002593 C0 05            [24] 1366 	push	ar5
      002595 C0 01            [24] 1367 	push	ar1
      002597 C0 00            [24] 1368 	push	ar0
      002599 12 20 9F         [24] 1369 	lcall	_unsetOE
      00259C D0 00            [24] 1370 	pop	ar0
      00259E D0 01            [24] 1371 	pop	ar1
      0025A0 D0 05            [24] 1372 	pop	ar5
      0025A2 D0 07            [24] 1373 	pop	ar7
                                   1374 ;	walk.c:160: if (update(&t, &cur, scramble[j])) {
      0025A4 C0 00            [24] 1375 	push	ar0
      0025A6 E5 10            [12] 1376 	mov	a,_bp
      0025A8 24 20            [12] 1377 	add	a,#0x20
      0025AA F8               [12] 1378 	mov	r0,a
      0025AB E6               [12] 1379 	mov	a,@r0
      0025AC 2F               [12] 1380 	add	a,r7
      0025AD FA               [12] 1381 	mov	r2,a
      0025AE A8 02            [24] 1382 	mov	r0,ar2
      0025B0 86 03            [24] 1383 	mov	ar3,@r0
      0025B2 A8 10            [24] 1384 	mov	r0,_bp
      0025B4 08               [12] 1385 	inc	r0
      0025B5 C0 01            [24] 1386 	push	ar1
      0025B7 E5 10            [12] 1387 	mov	a,_bp
      0025B9 24 04            [12] 1388 	add	a,#0x04
      0025BB F9               [12] 1389 	mov	r1,a
      0025BC E6               [12] 1390 	mov	a,@r0
      0025BD F7               [12] 1391 	mov	@r1,a
      0025BE 09               [12] 1392 	inc	r1
      0025BF 77 00            [12] 1393 	mov	@r1,#0x00
      0025C1 09               [12] 1394 	inc	r1
      0025C2 77 40            [12] 1395 	mov	@r1,#0x40
      0025C4 D0 01            [24] 1396 	pop	ar1
      0025C6 D0 00            [24] 1397 	pop	ar0
      0025C8 89 02            [24] 1398 	mov	ar2,r1
      0025CA 7C 00            [12] 1399 	mov	r4,#0x00
      0025CC 7E 40            [12] 1400 	mov	r6,#0x40
      0025CE C0 07            [24] 1401 	push	ar7
      0025D0 C0 05            [24] 1402 	push	ar5
      0025D2 C0 01            [24] 1403 	push	ar1
      0025D4 C0 00            [24] 1404 	push	ar0
      0025D6 C0 03            [24] 1405 	push	ar3
      0025D8 85 00 F0         [24] 1406 	mov	b,ar0
      0025DB E5 10            [12] 1407 	mov	a,_bp
      0025DD 24 04            [12] 1408 	add	a,#0x04
      0025DF F8               [12] 1409 	mov	r0,a
      0025E0 E6               [12] 1410 	mov	a,@r0
      0025E1 C0 E0            [24] 1411 	push	acc
      0025E3 08               [12] 1412 	inc	r0
      0025E4 E6               [12] 1413 	mov	a,@r0
      0025E5 C0 E0            [24] 1414 	push	acc
      0025E7 08               [12] 1415 	inc	r0
      0025E8 E6               [12] 1416 	mov	a,@r0
      0025E9 C0 E0            [24] 1417 	push	acc
      0025EB 8A 82            [24] 1418 	mov	dpl,r2
      0025ED 8C 83            [24] 1419 	mov	dph,r4
      0025EF 8E F0            [24] 1420 	mov	b,r6
      0025F1 12 20 C5         [24] 1421 	lcall	_update
      0025F4 AE 82            [24] 1422 	mov	r6,dpl
      0025F6 E5 81            [12] 1423 	mov	a,sp
      0025F8 24 FC            [12] 1424 	add	a,#0xfc
      0025FA F5 81            [12] 1425 	mov	sp,a
      0025FC D0 00            [24] 1426 	pop	ar0
      0025FE D0 01            [24] 1427 	pop	ar1
      002600 D0 05            [24] 1428 	pop	ar5
      002602 D0 07            [24] 1429 	pop	ar7
      002604 D0 05            [24] 1430 	pop	ar5
      002606 EE               [12] 1431 	mov	a,r6
      002607 70 03            [24] 1432 	jnz	00192$
      002609 02 26 DB         [24] 1433 	ljmp	00125$
      00260C                       1434 00192$:
                                   1435 ;	walk.c:161: if (!qadd(&t)) bang();
      00260C C0 00            [24] 1436 	push	ar0
      00260E E5 10            [12] 1437 	mov	a,_bp
      002610 24 03            [12] 1438 	add	a,#0x03
      002612 F8               [12] 1439 	mov	r0,a
      002613 86 03            [24] 1440 	mov	ar3,@r0
      002615 7C 00            [12] 1441 	mov	r4,#0x00
      002617 7E 40            [12] 1442 	mov	r6,#0x40
      002619 D0 00            [24] 1443 	pop	ar0
      00261B 8B 82            [24] 1444 	mov	dpl,r3
      00261D 8C 83            [24] 1445 	mov	dph,r4
      00261F 8E F0            [24] 1446 	mov	b,r6
      002621 C0 07            [24] 1447 	push	ar7
      002623 C0 05            [24] 1448 	push	ar5
      002625 C0 01            [24] 1449 	push	ar1
      002627 C0 00            [24] 1450 	push	ar0
      002629 12 2A E4         [24] 1451 	lcall	_qadd
      00262C E5 82            [12] 1452 	mov	a,dpl
      00262E D0 00            [24] 1453 	pop	ar0
      002630 D0 01            [24] 1454 	pop	ar1
      002632 D0 05            [24] 1455 	pop	ar5
      002634 D0 07            [24] 1456 	pop	ar7
      002636 70 13            [24] 1457 	jnz	00115$
      002638 C0 07            [24] 1458 	push	ar7
      00263A C0 05            [24] 1459 	push	ar5
      00263C C0 01            [24] 1460 	push	ar1
      00263E C0 00            [24] 1461 	push	ar0
      002640 12 20 7F         [24] 1462 	lcall	_bang
      002643 D0 00            [24] 1463 	pop	ar0
      002645 D0 01            [24] 1464 	pop	ar1
      002647 D0 05            [24] 1465 	pop	ar5
      002649 D0 07            [24] 1466 	pop	ar7
      00264B                       1467 00115$:
                                   1468 ;	walk.c:162: g[t.r][t.c] = 0xaau;
      00264B 87 04            [24] 1469 	mov	ar4,@r1
      00264D 09               [12] 1470 	inc	r1
      00264E 87 06            [24] 1471 	mov	ar6,@r1
      002650 19               [12] 1472 	dec	r1
      002651 C0 07            [24] 1473 	push	ar7
      002653 C0 05            [24] 1474 	push	ar5
      002655 C0 01            [24] 1475 	push	ar1
      002657 C0 00            [24] 1476 	push	ar0
      002659 C0 04            [24] 1477 	push	ar4
      00265B C0 06            [24] 1478 	push	ar6
      00265D 90 00 C9         [24] 1479 	mov	dptr,#0x00c9
      002660 12 2D 52         [24] 1480 	lcall	__mulint
      002663 AC 82            [24] 1481 	mov	r4,dpl
      002665 AE 83            [24] 1482 	mov	r6,dph
      002667 15 81            [12] 1483 	dec	sp
      002669 15 81            [12] 1484 	dec	sp
      00266B D0 00            [24] 1485 	pop	ar0
      00266D EC               [12] 1486 	mov	a,r4
      00266E 24 00            [12] 1487 	add	a,#_g
      002670 FC               [12] 1488 	mov	r4,a
      002671 EE               [12] 1489 	mov	a,r6
      002672 34 43            [12] 1490 	addc	a,#(_g >> 8)
      002674 FE               [12] 1491 	mov	r6,a
      002675 86 02            [24] 1492 	mov	ar2,@r0
      002677 08               [12] 1493 	inc	r0
      002678 86 03            [24] 1494 	mov	ar3,@r0
      00267A 18               [12] 1495 	dec	r0
      00267B EA               [12] 1496 	mov	a,r2
      00267C 2C               [12] 1497 	add	a,r4
      00267D F5 82            [12] 1498 	mov	dpl,a
      00267F EB               [12] 1499 	mov	a,r3
      002680 3E               [12] 1500 	addc	a,r6
      002681 F5 83            [12] 1501 	mov	dph,a
      002683 74 AA            [12] 1502 	mov	a,#0xaa
      002685 F0               [24] 1503 	movx	@dptr,a
                                   1504 ;	walk.c:164: setOE(OE76_MASK7);
      002686 75 82 80         [24] 1505 	mov	dpl,#0x80
      002689 C0 00            [24] 1506 	push	ar0
      00268B 12 20 8C         [24] 1507 	lcall	_setOE
      00268E D0 00            [24] 1508 	pop	ar0
      002690 D0 01            [24] 1509 	pop	ar1
      002692 D0 05            [24] 1510 	pop	ar5
      002694 D0 07            [24] 1511 	pop	ar7
                                   1512 ;	walk.c:165: printf("\033[%d;%dHo", t.r + 4, t.c + 1);
      002696 86 04            [24] 1513 	mov	ar4,@r0
      002698 08               [12] 1514 	inc	r0
      002699 86 06            [24] 1515 	mov	ar6,@r0
      00269B 18               [12] 1516 	dec	r0
      00269C 0C               [12] 1517 	inc	r4
      00269D BC 00 01         [24] 1518 	cjne	r4,#0x00,00194$
      0026A0 0E               [12] 1519 	inc	r6
      0026A1                       1520 00194$:
      0026A1 87 02            [24] 1521 	mov	ar2,@r1
      0026A3 09               [12] 1522 	inc	r1
      0026A4 87 03            [24] 1523 	mov	ar3,@r1
      0026A6 19               [12] 1524 	dec	r1
      0026A7 74 04            [12] 1525 	mov	a,#0x04
      0026A9 2A               [12] 1526 	add	a,r2
      0026AA FA               [12] 1527 	mov	r2,a
      0026AB E4               [12] 1528 	clr	a
      0026AC 3B               [12] 1529 	addc	a,r3
      0026AD FB               [12] 1530 	mov	r3,a
      0026AE C0 07            [24] 1531 	push	ar7
      0026B0 C0 05            [24] 1532 	push	ar5
      0026B2 C0 01            [24] 1533 	push	ar1
      0026B4 C0 00            [24] 1534 	push	ar0
      0026B6 C0 04            [24] 1535 	push	ar4
      0026B8 C0 06            [24] 1536 	push	ar6
      0026BA C0 02            [24] 1537 	push	ar2
      0026BC C0 03            [24] 1538 	push	ar3
      0026BE 74 6A            [12] 1539 	mov	a,#___str_3
      0026C0 C0 E0            [24] 1540 	push	acc
      0026C2 74 42            [12] 1541 	mov	a,#(___str_3 >> 8)
      0026C4 C0 E0            [24] 1542 	push	acc
      0026C6 74 80            [12] 1543 	mov	a,#0x80
      0026C8 C0 E0            [24] 1544 	push	acc
      0026CA 12 2F 09         [24] 1545 	lcall	_printf
      0026CD E5 81            [12] 1546 	mov	a,sp
      0026CF 24 F9            [12] 1547 	add	a,#0xf9
      0026D1 F5 81            [12] 1548 	mov	sp,a
      0026D3 D0 00            [24] 1549 	pop	ar0
      0026D5 D0 01            [24] 1550 	pop	ar1
      0026D7 D0 05            [24] 1551 	pop	ar5
      0026D9 D0 07            [24] 1552 	pop	ar7
      0026DB                       1553 00125$:
                                   1554 ;	walk.c:157: for (j = 0u; j < NMAX; j++) {
      0026DB C0 00            [24] 1555 	push	ar0
      0026DD E5 10            [12] 1556 	mov	a,_bp
      0026DF 24 20            [12] 1557 	add	a,#0x20
      0026E1 F8               [12] 1558 	mov	r0,a
      0026E2 06               [12] 1559 	inc	@r0
      0026E3 E5 10            [12] 1560 	mov	a,_bp
      0026E5 24 20            [12] 1561 	add	a,#0x20
      0026E7 F8               [12] 1562 	mov	r0,a
      0026E8 B6 10 00         [24] 1563 	cjne	@r0,#0x10,00195$
      0026EB                       1564 00195$:
      0026EB D0 00            [24] 1565 	pop	ar0
      0026ED 50 03            [24] 1566 	jnc	00196$
      0026EF 02 25 8C         [24] 1567 	ljmp	00124$
      0026F2                       1568 00196$:
                                   1569 ;	walk.c:169: goto process;
      0026F2 02 23 F4         [24] 1570 	ljmp	00103$
                                   1571 ;	walk.c:171: term:
      0026F5                       1572 00119$:
                                   1573 ;	walk.c:172: return;
                                   1574 ;	walk.c:173: }
      0026F5 85 10 81         [24] 1575 	mov	sp,_bp
      0026F8 D0 10            [24] 1576 	pop	_bp
      0026FA 22               [24] 1577 	ret
                                   1578 ;------------------------------------------------------------
                                   1579 ;Allocation info for local variables in function 'main'
                                   1580 ;------------------------------------------------------------
                                   1581 ;initial                   Allocated to stack - _bp +5
                                   1582 ;N                         Allocated to stack - _bp +9
                                   1583 ;i                         Allocated to stack - _bp +11
                                   1584 ;j                         Allocated to registers r2 r6 
                                   1585 ;sloc0                     Allocated to stack - _bp +1
                                   1586 ;sloc1                     Allocated to stack - _bp +3
                                   1587 ;sloc2                     Allocated to stack - _bp +15
                                   1588 ;------------------------------------------------------------
                                   1589 ;	walk.c:175: void main(void) {
                                   1590 ;	-----------------------------------------
                                   1591 ;	 function main
                                   1592 ;	-----------------------------------------
      0026FB                       1593 _main:
      0026FB C0 10            [24] 1594 	push	_bp
      0026FD E5 81            [12] 1595 	mov	a,sp
      0026FF F5 10            [12] 1596 	mov	_bp,a
      002701 24 0C            [12] 1597 	add	a,#0x0c
      002703 F5 81            [12] 1598 	mov	sp,a
                                   1599 ;	walk.c:180: i0 = 1u;
      002705 78 11            [12] 1600 	mov	r0,#_i0
      002707 76 01            [12] 1601 	mov	@r0,#0x01
                                   1602 ;	walk.c:182: P1_7 = 1;
                                   1603 ;	assignBit
      002709 D2 97            [12] 1604 	setb	_P1_7
                                   1605 ;	walk.c:183: IT0 = 1;
                                   1606 ;	assignBit
      00270B D2 88            [12] 1607 	setb	_IT0
                                   1608 ;	walk.c:184: EX0 = 1;
                                   1609 ;	assignBit
      00270D D2 A8            [12] 1610 	setb	_EX0
                                   1611 ;	walk.c:185: EA = 1;
                                   1612 ;	assignBit
      00270F D2 AF            [12] 1613 	setb	_EA
                                   1614 ;	walk.c:187: srand(RND);
      002711 90 80 00         [24] 1615 	mov	dptr,#_RND
      002714 E0               [24] 1616 	movx	a,@dptr
      002715 FE               [12] 1617 	mov	r6,a
      002716 A3               [24] 1618 	inc	dptr
      002717 E0               [24] 1619 	movx	a,@dptr
      002718 FF               [12] 1620 	mov	r7,a
      002719 8E 82            [24] 1621 	mov	dpl,r6
      00271B 8F 83            [24] 1622 	mov	dph,r7
      00271D 12 2D 1E         [24] 1623 	lcall	_srand
                                   1624 ;	walk.c:188: qinit();
      002720 12 2A D6         [24] 1625 	lcall	_qinit
                                   1626 ;	walk.c:190: puts("\033[2J\033[?25l");
      002723 90 42 74         [24] 1627 	mov	dptr,#___str_4
      002726 75 F0 80         [24] 1628 	mov	b,#0x80
      002729 12 2E 83         [24] 1629 	lcall	_puts
                                   1630 ;	walk.c:192: while (i0) {
      00272C E5 10            [12] 1631 	mov	a,_bp
      00272E 24 05            [12] 1632 	add	a,#0x05
      002730 F9               [12] 1633 	mov	r1,a
      002731 FF               [12] 1634 	mov	r7,a
      002732 E5 10            [12] 1635 	mov	a,_bp
      002734 24 09            [12] 1636 	add	a,#0x09
      002736 F8               [12] 1637 	mov	r0,a
      002737 E4               [12] 1638 	clr	a
      002738 F6               [12] 1639 	mov	@r0,a
      002739 08               [12] 1640 	inc	r0
      00273A F6               [12] 1641 	mov	@r0,a
      00273B                       1642 00108$:
      00273B 78 11            [12] 1643 	mov	r0,#_i0
      00273D E6               [12] 1644 	mov	a,@r0
      00273E 70 03            [24] 1645 	jnz	00182$
      002740 02 2A C2         [24] 1646 	ljmp	00110$
      002743                       1647 00182$:
                                   1648 ;	walk.c:193: for (i = 0; i < ROWS; i++)
      002743 7B 00            [12] 1649 	mov	r3,#0x00
      002745 7C 00            [12] 1650 	mov	r4,#0x00
      002747 A8 10            [24] 1651 	mov	r0,_bp
      002749 08               [12] 1652 	inc	r0
      00274A E4               [12] 1653 	clr	a
      00274B F6               [12] 1654 	mov	@r0,a
      00274C 08               [12] 1655 	inc	r0
      00274D F6               [12] 1656 	mov	@r0,a
                                   1657 ;	walk.c:194: for (j = 0; j < COLS; j++)
      00274E                       1658 00125$:
      00274E A8 10            [24] 1659 	mov	r0,_bp
      002750 08               [12] 1660 	inc	r0
      002751 C0 01            [24] 1661 	push	ar1
      002753 E5 10            [12] 1662 	mov	a,_bp
      002755 24 03            [12] 1663 	add	a,#0x03
      002757 F9               [12] 1664 	mov	r1,a
      002758 E6               [12] 1665 	mov	a,@r0
      002759 24 00            [12] 1666 	add	a,#_g
      00275B F7               [12] 1667 	mov	@r1,a
      00275C 08               [12] 1668 	inc	r0
      00275D E6               [12] 1669 	mov	a,@r0
      00275E 34 43            [12] 1670 	addc	a,#(_g >> 8)
      002760 09               [12] 1671 	inc	r1
      002761 F7               [12] 1672 	mov	@r1,a
      002762 D0 01            [24] 1673 	pop	ar1
      002764 7A 00            [12] 1674 	mov	r2,#0x00
      002766 7E 00            [12] 1675 	mov	r6,#0x00
      002768                       1676 00112$:
                                   1677 ;	walk.c:195: g[i][j] = 0x55u;
      002768 E5 10            [12] 1678 	mov	a,_bp
      00276A 24 03            [12] 1679 	add	a,#0x03
      00276C F8               [12] 1680 	mov	r0,a
      00276D EA               [12] 1681 	mov	a,r2
      00276E 26               [12] 1682 	add	a,@r0
      00276F F5 82            [12] 1683 	mov	dpl,a
      002771 EE               [12] 1684 	mov	a,r6
      002772 08               [12] 1685 	inc	r0
      002773 36               [12] 1686 	addc	a,@r0
      002774 F5 83            [12] 1687 	mov	dph,a
      002776 74 55            [12] 1688 	mov	a,#0x55
      002778 F0               [24] 1689 	movx	@dptr,a
                                   1690 ;	walk.c:194: for (j = 0; j < COLS; j++)
      002779 0A               [12] 1691 	inc	r2
      00277A BA 00 01         [24] 1692 	cjne	r2,#0x00,00183$
      00277D 0E               [12] 1693 	inc	r6
      00277E                       1694 00183$:
      00277E C3               [12] 1695 	clr	c
      00277F EA               [12] 1696 	mov	a,r2
      002780 94 C9            [12] 1697 	subb	a,#0xc9
      002782 EE               [12] 1698 	mov	a,r6
      002783 64 80            [12] 1699 	xrl	a,#0x80
      002785 94 80            [12] 1700 	subb	a,#0x80
      002787 40 DF            [24] 1701 	jc	00112$
                                   1702 ;	walk.c:193: for (i = 0; i < ROWS; i++)
      002789 A8 10            [24] 1703 	mov	r0,_bp
      00278B 08               [12] 1704 	inc	r0
      00278C 74 C9            [12] 1705 	mov	a,#0xc9
      00278E 26               [12] 1706 	add	a,@r0
      00278F F6               [12] 1707 	mov	@r0,a
      002790 E4               [12] 1708 	clr	a
      002791 08               [12] 1709 	inc	r0
      002792 36               [12] 1710 	addc	a,@r0
      002793 F6               [12] 1711 	mov	@r0,a
      002794 0B               [12] 1712 	inc	r3
      002795 BB 00 01         [24] 1713 	cjne	r3,#0x00,00185$
      002798 0C               [12] 1714 	inc	r4
      002799                       1715 00185$:
      002799 C3               [12] 1716 	clr	c
      00279A EB               [12] 1717 	mov	a,r3
      00279B 94 30            [12] 1718 	subb	a,#0x30
      00279D EC               [12] 1719 	mov	a,r4
      00279E 64 80            [12] 1720 	xrl	a,#0x80
      0027A0 94 80            [12] 1721 	subb	a,#0x80
      0027A2 40 AA            [24] 1722 	jc	00125$
                                   1723 ;	walk.c:197: initial.r = rand() % ROWS;
      0027A4 E5 10            [12] 1724 	mov	a,_bp
      0027A6 24 05            [12] 1725 	add	a,#0x05
      0027A8 F8               [12] 1726 	mov	r0,a
      0027A9 C0 07            [24] 1727 	push	ar7
      0027AB C0 01            [24] 1728 	push	ar1
      0027AD C0 00            [24] 1729 	push	ar0
      0027AF 12 2C 5A         [24] 1730 	lcall	_rand
      0027B2 AD 82            [24] 1731 	mov	r5,dpl
      0027B4 AE 83            [24] 1732 	mov	r6,dph
      0027B6 74 30            [12] 1733 	mov	a,#0x30
      0027B8 C0 E0            [24] 1734 	push	acc
      0027BA E4               [12] 1735 	clr	a
      0027BB C0 E0            [24] 1736 	push	acc
      0027BD 8D 82            [24] 1737 	mov	dpl,r5
      0027BF 8E 83            [24] 1738 	mov	dph,r6
      0027C1 12 2F 5E         [24] 1739 	lcall	__modsint
      0027C4 AD 82            [24] 1740 	mov	r5,dpl
      0027C6 AE 83            [24] 1741 	mov	r6,dph
      0027C8 15 81            [12] 1742 	dec	sp
      0027CA 15 81            [12] 1743 	dec	sp
      0027CC D0 00            [24] 1744 	pop	ar0
      0027CE D0 01            [24] 1745 	pop	ar1
      0027D0 A6 05            [24] 1746 	mov	@r0,ar5
      0027D2 08               [12] 1747 	inc	r0
      0027D3 A6 06            [24] 1748 	mov	@r0,ar6
      0027D5 18               [12] 1749 	dec	r0
                                   1750 ;	walk.c:198: initial.c = rand() % COLS;
      0027D6 74 02            [12] 1751 	mov	a,#0x02
      0027D8 29               [12] 1752 	add	a,r1
      0027D9 F8               [12] 1753 	mov	r0,a
      0027DA C0 01            [24] 1754 	push	ar1
      0027DC C0 00            [24] 1755 	push	ar0
      0027DE 12 2C 5A         [24] 1756 	lcall	_rand
      0027E1 AD 82            [24] 1757 	mov	r5,dpl
      0027E3 AE 83            [24] 1758 	mov	r6,dph
      0027E5 74 C9            [12] 1759 	mov	a,#0xc9
      0027E7 C0 E0            [24] 1760 	push	acc
      0027E9 E4               [12] 1761 	clr	a
      0027EA C0 E0            [24] 1762 	push	acc
      0027EC 8D 82            [24] 1763 	mov	dpl,r5
      0027EE 8E 83            [24] 1764 	mov	dph,r6
      0027F0 12 2F 5E         [24] 1765 	lcall	__modsint
      0027F3 AD 82            [24] 1766 	mov	r5,dpl
      0027F5 AE 83            [24] 1767 	mov	r6,dph
      0027F7 15 81            [12] 1768 	dec	sp
      0027F9 15 81            [12] 1769 	dec	sp
      0027FB D0 00            [24] 1770 	pop	ar0
      0027FD A6 05            [24] 1771 	mov	@r0,ar5
      0027FF 08               [12] 1772 	inc	r0
      002800 A6 06            [24] 1773 	mov	@r0,ar6
      002802 18               [12] 1774 	dec	r0
                                   1775 ;	walk.c:200: puts("\033[2J\033[?25l");
      002803 90 42 74         [24] 1776 	mov	dptr,#___str_4
      002806 75 F0 80         [24] 1777 	mov	b,#0x80
      002809 C0 00            [24] 1778 	push	ar0
      00280B 12 2E 83         [24] 1779 	lcall	_puts
      00280E D0 00            [24] 1780 	pop	ar0
      002810 D0 01            [24] 1781 	pop	ar1
                                   1782 ;	walk.c:201: printf("\033[1;1H% 8u% 8d% 8d", N, initial.r, initial.c);
      002812 86 05            [24] 1783 	mov	ar5,@r0
      002814 08               [12] 1784 	inc	r0
      002815 86 06            [24] 1785 	mov	ar6,@r0
      002817 18               [12] 1786 	dec	r0
      002818 87 03            [24] 1787 	mov	ar3,@r1
      00281A 09               [12] 1788 	inc	r1
      00281B 87 04            [24] 1789 	mov	ar4,@r1
      00281D 19               [12] 1790 	dec	r1
      00281E C0 01            [24] 1791 	push	ar1
      002820 C0 05            [24] 1792 	push	ar5
      002822 C0 06            [24] 1793 	push	ar6
      002824 C0 03            [24] 1794 	push	ar3
      002826 C0 04            [24] 1795 	push	ar4
      002828 E5 10            [12] 1796 	mov	a,_bp
      00282A 24 09            [12] 1797 	add	a,#0x09
      00282C F8               [12] 1798 	mov	r0,a
      00282D E6               [12] 1799 	mov	a,@r0
      00282E C0 E0            [24] 1800 	push	acc
      002830 08               [12] 1801 	inc	r0
      002831 E6               [12] 1802 	mov	a,@r0
      002832 C0 E0            [24] 1803 	push	acc
      002834 74 7F            [12] 1804 	mov	a,#___str_5
      002836 C0 E0            [24] 1805 	push	acc
      002838 74 42            [12] 1806 	mov	a,#(___str_5 >> 8)
      00283A C0 E0            [24] 1807 	push	acc
      00283C 74 80            [12] 1808 	mov	a,#0x80
      00283E C0 E0            [24] 1809 	push	acc
      002840 12 2F 09         [24] 1810 	lcall	_printf
      002843 E5 81            [12] 1811 	mov	a,sp
      002845 24 F7            [12] 1812 	add	a,#0xf7
      002847 F5 81            [12] 1813 	mov	sp,a
      002849 D0 01            [24] 1814 	pop	ar1
      00284B D0 07            [24] 1815 	pop	ar7
                                   1816 ;	walk.c:203: for (i = 0; i < REG; i++) {
      00284D E5 10            [12] 1817 	mov	a,_bp
      00284F 24 0B            [12] 1818 	add	a,#0x0b
      002851 F8               [12] 1819 	mov	r0,a
      002852 E4               [12] 1820 	clr	a
      002853 F6               [12] 1821 	mov	@r0,a
      002854 08               [12] 1822 	inc	r0
      002855 F6               [12] 1823 	mov	@r0,a
      002856                       1824 00116$:
                                   1825 ;	walk.c:204: neigh[i].r = neigh[REG + i].r * (1 + rand() % 32);
      002856 C0 07            [24] 1826 	push	ar7
      002858 E5 10            [12] 1827 	mov	a,_bp
      00285A 24 0B            [12] 1828 	add	a,#0x0b
      00285C F8               [12] 1829 	mov	r0,a
      00285D E6               [12] 1830 	mov	a,@r0
      00285E 25 E0            [12] 1831 	add	a,acc
      002860 FB               [12] 1832 	mov	r3,a
      002861 08               [12] 1833 	inc	r0
      002862 E6               [12] 1834 	mov	a,@r0
      002863 33               [12] 1835 	rlc	a
      002864 FC               [12] 1836 	mov	r4,a
      002865 EB               [12] 1837 	mov	a,r3
      002866 2B               [12] 1838 	add	a,r3
      002867 FB               [12] 1839 	mov	r3,a
      002868 EC               [12] 1840 	mov	a,r4
      002869 33               [12] 1841 	rlc	a
      00286A FC               [12] 1842 	mov	r4,a
      00286B E5 10            [12] 1843 	mov	a,_bp
      00286D 24 03            [12] 1844 	add	a,#0x03
      00286F F8               [12] 1845 	mov	r0,a
      002870 EB               [12] 1846 	mov	a,r3
      002871 24 74            [12] 1847 	add	a,#_neigh
      002873 F6               [12] 1848 	mov	@r0,a
      002874 EC               [12] 1849 	mov	a,r4
      002875 34 FF            [12] 1850 	addc	a,#(_neigh >> 8)
      002877 08               [12] 1851 	inc	r0
      002878 F6               [12] 1852 	mov	@r0,a
      002879 E5 10            [12] 1853 	mov	a,_bp
      00287B 24 0B            [12] 1854 	add	a,#0x0b
      00287D F8               [12] 1855 	mov	r0,a
      00287E 86 06            [24] 1856 	mov	ar6,@r0
      002880 74 08            [12] 1857 	mov	a,#0x08
      002882 2E               [12] 1858 	add	a,r6
      002883 FE               [12] 1859 	mov	r6,a
      002884 C2 D5            [12] 1860 	clr	F0
      002886 75 F0 04         [24] 1861 	mov	b,#0x04
      002889 EE               [12] 1862 	mov	a,r6
      00288A 30 E7 04         [24] 1863 	jnb	acc.7,00187$
      00288D B2 D5            [12] 1864 	cpl	F0
      00288F F4               [12] 1865 	cpl	a
      002890 04               [12] 1866 	inc	a
      002891                       1867 00187$:
      002891 A4               [48] 1868 	mul	ab
      002892 30 D5 0A         [24] 1869 	jnb	F0,00188$
      002895 F4               [12] 1870 	cpl	a
      002896 24 01            [12] 1871 	add	a,#0x01
      002898 C5 F0            [12] 1872 	xch	a,b
      00289A F4               [12] 1873 	cpl	a
      00289B 34 00            [12] 1874 	addc	a,#0x00
      00289D C5 F0            [12] 1875 	xch	a,b
      00289F                       1876 00188$:
      00289F FE               [12] 1877 	mov	r6,a
      0028A0 AD F0            [24] 1878 	mov	r5,b
      0028A2 24 74            [12] 1879 	add	a,#_neigh
      0028A4 F5 82            [12] 1880 	mov	dpl,a
      0028A6 ED               [12] 1881 	mov	a,r5
      0028A7 34 FF            [12] 1882 	addc	a,#(_neigh >> 8)
      0028A9 F5 83            [12] 1883 	mov	dph,a
      0028AB A8 10            [24] 1884 	mov	r0,_bp
      0028AD 08               [12] 1885 	inc	r0
      0028AE E0               [24] 1886 	movx	a,@dptr
      0028AF F6               [12] 1887 	mov	@r0,a
      0028B0 A3               [24] 1888 	inc	dptr
      0028B1 E0               [24] 1889 	movx	a,@dptr
      0028B2 08               [12] 1890 	inc	r0
      0028B3 F6               [12] 1891 	mov	@r0,a
      0028B4 C0 06            [24] 1892 	push	ar6
      0028B6 C0 05            [24] 1893 	push	ar5
      0028B8 C0 04            [24] 1894 	push	ar4
      0028BA C0 03            [24] 1895 	push	ar3
      0028BC C0 01            [24] 1896 	push	ar1
      0028BE 12 2C 5A         [24] 1897 	lcall	_rand
      0028C1 AA 82            [24] 1898 	mov	r2,dpl
      0028C3 AF 83            [24] 1899 	mov	r7,dph
      0028C5 74 20            [12] 1900 	mov	a,#0x20
      0028C7 C0 E0            [24] 1901 	push	acc
      0028C9 E4               [12] 1902 	clr	a
      0028CA C0 E0            [24] 1903 	push	acc
      0028CC 8A 82            [24] 1904 	mov	dpl,r2
      0028CE 8F 83            [24] 1905 	mov	dph,r7
      0028D0 12 2F 5E         [24] 1906 	lcall	__modsint
      0028D3 AA 82            [24] 1907 	mov	r2,dpl
      0028D5 AF 83            [24] 1908 	mov	r7,dph
      0028D7 15 81            [12] 1909 	dec	sp
      0028D9 15 81            [12] 1910 	dec	sp
      0028DB D0 01            [24] 1911 	pop	ar1
      0028DD D0 03            [24] 1912 	pop	ar3
      0028DF D0 04            [24] 1913 	pop	ar4
      0028E1 D0 05            [24] 1914 	pop	ar5
      0028E3 D0 06            [24] 1915 	pop	ar6
      0028E5 0A               [12] 1916 	inc	r2
      0028E6 BA 00 01         [24] 1917 	cjne	r2,#0x00,00189$
      0028E9 0F               [12] 1918 	inc	r7
      0028EA                       1919 00189$:
      0028EA C0 06            [24] 1920 	push	ar6
      0028EC C0 05            [24] 1921 	push	ar5
      0028EE C0 04            [24] 1922 	push	ar4
      0028F0 C0 03            [24] 1923 	push	ar3
      0028F2 C0 01            [24] 1924 	push	ar1
      0028F4 C0 02            [24] 1925 	push	ar2
      0028F6 C0 07            [24] 1926 	push	ar7
      0028F8 A8 10            [24] 1927 	mov	r0,_bp
      0028FA 08               [12] 1928 	inc	r0
      0028FB 86 82            [24] 1929 	mov	dpl,@r0
      0028FD 08               [12] 1930 	inc	r0
      0028FE 86 83            [24] 1931 	mov	dph,@r0
      002900 12 2D 52         [24] 1932 	lcall	__mulint
      002903 AA 82            [24] 1933 	mov	r2,dpl
      002905 AF 83            [24] 1934 	mov	r7,dph
      002907 15 81            [12] 1935 	dec	sp
      002909 15 81            [12] 1936 	dec	sp
      00290B D0 01            [24] 1937 	pop	ar1
      00290D D0 03            [24] 1938 	pop	ar3
      00290F D0 04            [24] 1939 	pop	ar4
      002911 D0 05            [24] 1940 	pop	ar5
      002913 D0 06            [24] 1941 	pop	ar6
      002915 E5 10            [12] 1942 	mov	a,_bp
      002917 24 03            [12] 1943 	add	a,#0x03
      002919 F8               [12] 1944 	mov	r0,a
      00291A 86 82            [24] 1945 	mov	dpl,@r0
      00291C 08               [12] 1946 	inc	r0
      00291D 86 83            [24] 1947 	mov	dph,@r0
      00291F EA               [12] 1948 	mov	a,r2
      002920 F0               [24] 1949 	movx	@dptr,a
      002921 EF               [12] 1950 	mov	a,r7
      002922 A3               [24] 1951 	inc	dptr
      002923 F0               [24] 1952 	movx	@dptr,a
                                   1953 ;	walk.c:205: neigh[i].c = neigh[REG + i].c * (1 + rand() % 32);
      002924 EB               [12] 1954 	mov	a,r3
      002925 24 74            [12] 1955 	add	a,#_neigh
      002927 FB               [12] 1956 	mov	r3,a
      002928 EC               [12] 1957 	mov	a,r4
      002929 34 FF            [12] 1958 	addc	a,#(_neigh >> 8)
      00292B FC               [12] 1959 	mov	r4,a
      00292C 74 02            [12] 1960 	mov	a,#0x02
      00292E 2B               [12] 1961 	add	a,r3
      00292F FA               [12] 1962 	mov	r2,a
      002930 E4               [12] 1963 	clr	a
      002931 3C               [12] 1964 	addc	a,r4
      002932 FF               [12] 1965 	mov	r7,a
      002933 EE               [12] 1966 	mov	a,r6
      002934 24 74            [12] 1967 	add	a,#_neigh
      002936 FE               [12] 1968 	mov	r6,a
      002937 ED               [12] 1969 	mov	a,r5
      002938 34 FF            [12] 1970 	addc	a,#(_neigh >> 8)
      00293A FD               [12] 1971 	mov	r5,a
      00293B 8E 82            [24] 1972 	mov	dpl,r6
      00293D 8D 83            [24] 1973 	mov	dph,r5
      00293F A3               [24] 1974 	inc	dptr
      002940 A3               [24] 1975 	inc	dptr
      002941 E5 10            [12] 1976 	mov	a,_bp
      002943 24 03            [12] 1977 	add	a,#0x03
      002945 F8               [12] 1978 	mov	r0,a
      002946 E0               [24] 1979 	movx	a,@dptr
      002947 F6               [12] 1980 	mov	@r0,a
      002948 A3               [24] 1981 	inc	dptr
      002949 E0               [24] 1982 	movx	a,@dptr
      00294A 08               [12] 1983 	inc	r0
      00294B F6               [12] 1984 	mov	@r0,a
      00294C C0 07            [24] 1985 	push	ar7
      00294E C0 04            [24] 1986 	push	ar4
      002950 C0 03            [24] 1987 	push	ar3
      002952 C0 02            [24] 1988 	push	ar2
      002954 C0 01            [24] 1989 	push	ar1
      002956 12 2C 5A         [24] 1990 	lcall	_rand
      002959 AD 82            [24] 1991 	mov	r5,dpl
      00295B AE 83            [24] 1992 	mov	r6,dph
      00295D 74 20            [12] 1993 	mov	a,#0x20
      00295F C0 E0            [24] 1994 	push	acc
      002961 E4               [12] 1995 	clr	a
      002962 C0 E0            [24] 1996 	push	acc
      002964 8D 82            [24] 1997 	mov	dpl,r5
      002966 8E 83            [24] 1998 	mov	dph,r6
      002968 12 2F 5E         [24] 1999 	lcall	__modsint
      00296B AD 82            [24] 2000 	mov	r5,dpl
      00296D AE 83            [24] 2001 	mov	r6,dph
      00296F 15 81            [12] 2002 	dec	sp
      002971 15 81            [12] 2003 	dec	sp
      002973 D0 01            [24] 2004 	pop	ar1
      002975 D0 02            [24] 2005 	pop	ar2
      002977 D0 03            [24] 2006 	pop	ar3
      002979 D0 04            [24] 2007 	pop	ar4
      00297B D0 07            [24] 2008 	pop	ar7
      00297D 0D               [12] 2009 	inc	r5
      00297E BD 00 01         [24] 2010 	cjne	r5,#0x00,00190$
      002981 0E               [12] 2011 	inc	r6
      002982                       2012 00190$:
      002982 C0 07            [24] 2013 	push	ar7
      002984 C0 04            [24] 2014 	push	ar4
      002986 C0 03            [24] 2015 	push	ar3
      002988 C0 02            [24] 2016 	push	ar2
      00298A C0 01            [24] 2017 	push	ar1
      00298C C0 05            [24] 2018 	push	ar5
      00298E C0 06            [24] 2019 	push	ar6
      002990 E5 10            [12] 2020 	mov	a,_bp
      002992 24 03            [12] 2021 	add	a,#0x03
      002994 F8               [12] 2022 	mov	r0,a
      002995 86 82            [24] 2023 	mov	dpl,@r0
      002997 08               [12] 2024 	inc	r0
      002998 86 83            [24] 2025 	mov	dph,@r0
      00299A 12 2D 52         [24] 2026 	lcall	__mulint
      00299D AD 82            [24] 2027 	mov	r5,dpl
      00299F AE 83            [24] 2028 	mov	r6,dph
      0029A1 15 81            [12] 2029 	dec	sp
      0029A3 15 81            [12] 2030 	dec	sp
      0029A5 D0 01            [24] 2031 	pop	ar1
      0029A7 D0 02            [24] 2032 	pop	ar2
      0029A9 D0 03            [24] 2033 	pop	ar3
      0029AB D0 04            [24] 2034 	pop	ar4
      0029AD D0 07            [24] 2035 	pop	ar7
      0029AF 8A 82            [24] 2036 	mov	dpl,r2
      0029B1 8F 83            [24] 2037 	mov	dph,r7
      0029B3 ED               [12] 2038 	mov	a,r5
      0029B4 F0               [24] 2039 	movx	@dptr,a
      0029B5 EE               [12] 2040 	mov	a,r6
      0029B6 A3               [24] 2041 	inc	dptr
      0029B7 F0               [24] 2042 	movx	@dptr,a
                                   2043 ;	walk.c:206: printf("% 8d% 8d", neigh[i].r, neigh[i].c);
      0029B8 8B 82            [24] 2044 	mov	dpl,r3
      0029BA 8C 83            [24] 2045 	mov	dph,r4
      0029BC E0               [24] 2046 	movx	a,@dptr
      0029BD FB               [12] 2047 	mov	r3,a
      0029BE A3               [24] 2048 	inc	dptr
      0029BF E0               [24] 2049 	movx	a,@dptr
      0029C0 FC               [12] 2050 	mov	r4,a
      0029C1 C0 07            [24] 2051 	push	ar7
      0029C3 C0 01            [24] 2052 	push	ar1
      0029C5 C0 05            [24] 2053 	push	ar5
      0029C7 C0 06            [24] 2054 	push	ar6
      0029C9 C0 03            [24] 2055 	push	ar3
      0029CB C0 04            [24] 2056 	push	ar4
      0029CD 74 92            [12] 2057 	mov	a,#___str_6
      0029CF C0 E0            [24] 2058 	push	acc
      0029D1 74 42            [12] 2059 	mov	a,#(___str_6 >> 8)
      0029D3 C0 E0            [24] 2060 	push	acc
      0029D5 74 80            [12] 2061 	mov	a,#0x80
      0029D7 C0 E0            [24] 2062 	push	acc
      0029D9 12 2F 09         [24] 2063 	lcall	_printf
      0029DC E5 81            [12] 2064 	mov	a,sp
      0029DE 24 F9            [12] 2065 	add	a,#0xf9
      0029E0 F5 81            [12] 2066 	mov	sp,a
      0029E2 D0 01            [24] 2067 	pop	ar1
      0029E4 D0 07            [24] 2068 	pop	ar7
                                   2069 ;	walk.c:203: for (i = 0; i < REG; i++) {
      0029E6 E5 10            [12] 2070 	mov	a,_bp
      0029E8 24 0B            [12] 2071 	add	a,#0x0b
      0029EA F8               [12] 2072 	mov	r0,a
      0029EB 06               [12] 2073 	inc	@r0
      0029EC B6 00 02         [24] 2074 	cjne	@r0,#0x00,00191$
      0029EF 08               [12] 2075 	inc	r0
      0029F0 06               [12] 2076 	inc	@r0
      0029F1                       2077 00191$:
      0029F1 E5 10            [12] 2078 	mov	a,_bp
      0029F3 24 0B            [12] 2079 	add	a,#0x0b
      0029F5 F8               [12] 2080 	mov	r0,a
      0029F6 86 05            [24] 2081 	mov	ar5,@r0
      0029F8 08               [12] 2082 	inc	r0
      0029F9 86 06            [24] 2083 	mov	ar6,@r0
      0029FB C3               [12] 2084 	clr	c
      0029FC ED               [12] 2085 	mov	a,r5
      0029FD 94 08            [12] 2086 	subb	a,#0x08
      0029FF EE               [12] 2087 	mov	a,r6
      002A00 94 00            [12] 2088 	subb	a,#0x00
      002A02 D0 07            [24] 2089 	pop	ar7
      002A04 50 03            [24] 2090 	jnc	00192$
      002A06 02 28 56         [24] 2091 	ljmp	00116$
      002A09                       2092 00192$:
                                   2093 ;	walk.c:209: OE76 = OE76_0;
      002A09 78 12            [12] 2094 	mov	r0,#_OE76
      002A0B 76 3F            [12] 2095 	mov	@r0,#0x3f
                                   2096 ;	walk.c:210: setOE(OE76_NC);
      002A0D 75 82 00         [24] 2097 	mov	dpl,#0x00
      002A10 C0 07            [24] 2098 	push	ar7
      002A12 C0 01            [24] 2099 	push	ar1
      002A14 12 20 8C         [24] 2100 	lcall	_setOE
      002A17 D0 01            [24] 2101 	pop	ar1
      002A19 D0 07            [24] 2102 	pop	ar7
                                   2103 ;	walk.c:212: walk(&initial);
      002A1B 8F 04            [24] 2104 	mov	ar4,r7
      002A1D 7D 00            [12] 2105 	mov	r5,#0x00
      002A1F 7E 40            [12] 2106 	mov	r6,#0x40
      002A21 8C 82            [24] 2107 	mov	dpl,r4
      002A23 8D 83            [24] 2108 	mov	dph,r5
      002A25 8E F0            [24] 2109 	mov	b,r6
      002A27 C0 07            [24] 2110 	push	ar7
      002A29 C0 01            [24] 2111 	push	ar1
      002A2B 12 23 52         [24] 2112 	lcall	_walk
      002A2E D0 01            [24] 2113 	pop	ar1
      002A30 D0 07            [24] 2114 	pop	ar7
                                   2115 ;	walk.c:214: for (i = 0; i < ROWS; i++)
      002A32 E5 10            [12] 2116 	mov	a,_bp
      002A34 24 0B            [12] 2117 	add	a,#0x0b
      002A36 F8               [12] 2118 	mov	r0,a
      002A37 E4               [12] 2119 	clr	a
      002A38 F6               [12] 2120 	mov	@r0,a
      002A39 08               [12] 2121 	inc	r0
      002A3A F6               [12] 2122 	mov	@r0,a
      002A3B 7B 00            [12] 2123 	mov	r3,#0x00
      002A3D 7C 00            [12] 2124 	mov	r4,#0x00
                                   2125 ;	walk.c:215: for (j = 0; j < COLS; j++)
      002A3F                       2126 00132$:
      002A3F E5 10            [12] 2127 	mov	a,_bp
      002A41 24 03            [12] 2128 	add	a,#0x03
      002A43 F8               [12] 2129 	mov	r0,a
      002A44 EB               [12] 2130 	mov	a,r3
      002A45 24 00            [12] 2131 	add	a,#_g
      002A47 F6               [12] 2132 	mov	@r0,a
      002A48 EC               [12] 2133 	mov	a,r4
      002A49 34 43            [12] 2134 	addc	a,#(_g >> 8)
      002A4B 08               [12] 2135 	inc	r0
      002A4C F6               [12] 2136 	mov	@r0,a
      002A4D 7A 00            [12] 2137 	mov	r2,#0x00
      002A4F 7E 00            [12] 2138 	mov	r6,#0x00
      002A51                       2139 00118$:
                                   2140 ;	walk.c:216: if (g[i][j] != 0xaau) bang();
      002A51 E5 10            [12] 2141 	mov	a,_bp
      002A53 24 03            [12] 2142 	add	a,#0x03
      002A55 F8               [12] 2143 	mov	r0,a
      002A56 EA               [12] 2144 	mov	a,r2
      002A57 26               [12] 2145 	add	a,@r0
      002A58 F5 82            [12] 2146 	mov	dpl,a
      002A5A EE               [12] 2147 	mov	a,r6
      002A5B 08               [12] 2148 	inc	r0
      002A5C 36               [12] 2149 	addc	a,@r0
      002A5D F5 83            [12] 2150 	mov	dph,a
      002A5F E0               [24] 2151 	movx	a,@dptr
      002A60 FD               [12] 2152 	mov	r5,a
      002A61 BD AA 02         [24] 2153 	cjne	r5,#0xaa,00193$
      002A64 80 1B            [24] 2154 	sjmp	00119$
      002A66                       2155 00193$:
      002A66 C0 07            [24] 2156 	push	ar7
      002A68 C0 06            [24] 2157 	push	ar6
      002A6A C0 04            [24] 2158 	push	ar4
      002A6C C0 03            [24] 2159 	push	ar3
      002A6E C0 02            [24] 2160 	push	ar2
      002A70 C0 01            [24] 2161 	push	ar1
      002A72 12 20 7F         [24] 2162 	lcall	_bang
      002A75 D0 01            [24] 2163 	pop	ar1
      002A77 D0 02            [24] 2164 	pop	ar2
      002A79 D0 03            [24] 2165 	pop	ar3
      002A7B D0 04            [24] 2166 	pop	ar4
      002A7D D0 06            [24] 2167 	pop	ar6
      002A7F D0 07            [24] 2168 	pop	ar7
      002A81                       2169 00119$:
                                   2170 ;	walk.c:215: for (j = 0; j < COLS; j++)
      002A81 0A               [12] 2171 	inc	r2
      002A82 BA 00 01         [24] 2172 	cjne	r2,#0x00,00194$
      002A85 0E               [12] 2173 	inc	r6
      002A86                       2174 00194$:
      002A86 C3               [12] 2175 	clr	c
      002A87 EA               [12] 2176 	mov	a,r2
      002A88 94 C9            [12] 2177 	subb	a,#0xc9
      002A8A EE               [12] 2178 	mov	a,r6
      002A8B 64 80            [12] 2179 	xrl	a,#0x80
      002A8D 94 80            [12] 2180 	subb	a,#0x80
      002A8F 40 C0            [24] 2181 	jc	00118$
                                   2182 ;	walk.c:214: for (i = 0; i < ROWS; i++)
      002A91 74 C9            [12] 2183 	mov	a,#0xc9
      002A93 2B               [12] 2184 	add	a,r3
      002A94 FB               [12] 2185 	mov	r3,a
      002A95 E4               [12] 2186 	clr	a
      002A96 3C               [12] 2187 	addc	a,r4
      002A97 FC               [12] 2188 	mov	r4,a
      002A98 E5 10            [12] 2189 	mov	a,_bp
      002A9A 24 0B            [12] 2190 	add	a,#0x0b
      002A9C F8               [12] 2191 	mov	r0,a
      002A9D 06               [12] 2192 	inc	@r0
      002A9E B6 00 02         [24] 2193 	cjne	@r0,#0x00,00196$
      002AA1 08               [12] 2194 	inc	r0
      002AA2 06               [12] 2195 	inc	@r0
      002AA3                       2196 00196$:
      002AA3 E5 10            [12] 2197 	mov	a,_bp
      002AA5 24 0B            [12] 2198 	add	a,#0x0b
      002AA7 F8               [12] 2199 	mov	r0,a
      002AA8 C3               [12] 2200 	clr	c
      002AA9 E6               [12] 2201 	mov	a,@r0
      002AAA 94 30            [12] 2202 	subb	a,#0x30
      002AAC 08               [12] 2203 	inc	r0
      002AAD E6               [12] 2204 	mov	a,@r0
      002AAE 64 80            [12] 2205 	xrl	a,#0x80
      002AB0 94 80            [12] 2206 	subb	a,#0x80
      002AB2 40 8B            [24] 2207 	jc	00132$
                                   2208 ;	walk.c:218: N++;
      002AB4 E5 10            [12] 2209 	mov	a,_bp
      002AB6 24 09            [12] 2210 	add	a,#0x09
      002AB8 F8               [12] 2211 	mov	r0,a
      002AB9 06               [12] 2212 	inc	@r0
      002ABA B6 00 02         [24] 2213 	cjne	@r0,#0x00,00198$
      002ABD 08               [12] 2214 	inc	r0
      002ABE 06               [12] 2215 	inc	@r0
      002ABF                       2216 00198$:
      002ABF 02 27 3B         [24] 2217 	ljmp	00108$
      002AC2                       2218 00110$:
                                   2219 ;	walk.c:221: EA = 0;
                                   2220 ;	assignBit
      002AC2 C2 AF            [12] 2221 	clr	_EA
                                   2222 ;	walk.c:223: puts("\033[2J\033[?25h");
      002AC4 90 42 9B         [24] 2223 	mov	dptr,#___str_7
      002AC7 75 F0 80         [24] 2224 	mov	b,#0x80
      002ACA 12 2E 83         [24] 2225 	lcall	_puts
                                   2226 ;	walk.c:35: PCON |= 2;
      002ACD 43 87 02         [24] 2227 	orl	_PCON,#0x02
                                   2228 ;	walk.c:227: return;
                                   2229 ;	walk.c:228: }
      002AD0 85 10 81         [24] 2230 	mov	sp,_bp
      002AD3 D0 10            [24] 2231 	pop	_bp
      002AD5 22               [24] 2232 	ret
                                   2233 ;------------------------------------------------------------
                                   2234 ;Allocation info for local variables in function 'qinit'
                                   2235 ;------------------------------------------------------------
                                   2236 ;	walk.c:230: static void qinit(void) {
                                   2237 ;	-----------------------------------------
                                   2238 ;	 function qinit
                                   2239 ;	-----------------------------------------
      002AD6                       2240 _qinit:
                                   2241 ;	walk.c:231: hp = tp = 0;
      002AD6 90 FF 72         [24] 2242 	mov	dptr,#_tp
      002AD9 E4               [12] 2243 	clr	a
      002ADA F0               [24] 2244 	movx	@dptr,a
      002ADB A3               [24] 2245 	inc	dptr
      002ADC F0               [24] 2246 	movx	@dptr,a
      002ADD 90 FF 70         [24] 2247 	mov	dptr,#_hp
      002AE0 F0               [24] 2248 	movx	@dptr,a
      002AE1 A3               [24] 2249 	inc	dptr
      002AE2 F0               [24] 2250 	movx	@dptr,a
                                   2251 ;	walk.c:232: return;
                                   2252 ;	walk.c:233: }
      002AE3 22               [24] 2253 	ret
                                   2254 ;------------------------------------------------------------
                                   2255 ;Allocation info for local variables in function 'qadd'
                                   2256 ;------------------------------------------------------------
                                   2257 ;t                         Allocated to registers r7 r5 r6 
                                   2258 ;sloc0                     Allocated to stack - _bp +1
                                   2259 ;sloc1                     Allocated to stack - _bp +3
                                   2260 ;sloc2                     Allocated to stack - _bp +5
                                   2261 ;sloc3                     Allocated to stack - _bp +10
                                   2262 ;------------------------------------------------------------
                                   2263 ;	walk.c:235: static uint8_t qadd(struct node *t) {
                                   2264 ;	-----------------------------------------
                                   2265 ;	 function qadd
                                   2266 ;	-----------------------------------------
      002AE4                       2267 _qadd:
      002AE4 C0 10            [24] 2268 	push	_bp
      002AE6 E5 81            [12] 2269 	mov	a,sp
      002AE8 F5 10            [12] 2270 	mov	_bp,a
      002AEA 24 06            [12] 2271 	add	a,#0x06
      002AEC F5 81            [12] 2272 	mov	sp,a
      002AEE AF 82            [24] 2273 	mov	r7,dpl
      002AF0 AD 83            [24] 2274 	mov	r5,dph
      002AF2 AE F0            [24] 2275 	mov	r6,b
                                   2276 ;	walk.c:236: if (((hp + 1) % QMAX) == tp) return 0u;
      002AF4 90 FF 70         [24] 2277 	mov	dptr,#_hp
      002AF7 E0               [24] 2278 	movx	a,@dptr
      002AF8 FB               [12] 2279 	mov	r3,a
      002AF9 A3               [24] 2280 	inc	dptr
      002AFA E0               [24] 2281 	movx	a,@dptr
      002AFB FC               [12] 2282 	mov	r4,a
      002AFC A8 10            [24] 2283 	mov	r0,_bp
      002AFE 08               [12] 2284 	inc	r0
      002AFF 74 01            [12] 2285 	mov	a,#0x01
      002B01 2B               [12] 2286 	add	a,r3
      002B02 F6               [12] 2287 	mov	@r0,a
      002B03 E4               [12] 2288 	clr	a
      002B04 3C               [12] 2289 	addc	a,r4
      002B05 08               [12] 2290 	inc	r0
      002B06 F6               [12] 2291 	mov	@r0,a
      002B07 C0 07            [24] 2292 	push	ar7
      002B09 C0 06            [24] 2293 	push	ar6
      002B0B C0 05            [24] 2294 	push	ar5
      002B0D C0 04            [24] 2295 	push	ar4
      002B0F C0 03            [24] 2296 	push	ar3
      002B11 74 B0            [12] 2297 	mov	a,#0xb0
      002B13 C0 E0            [24] 2298 	push	acc
      002B15 74 25            [12] 2299 	mov	a,#0x25
      002B17 C0 E0            [24] 2300 	push	acc
      002B19 A8 10            [24] 2301 	mov	r0,_bp
      002B1B 08               [12] 2302 	inc	r0
      002B1C 86 82            [24] 2303 	mov	dpl,@r0
      002B1E 08               [12] 2304 	inc	r0
      002B1F 86 83            [24] 2305 	mov	dph,@r0
      002B21 12 2F 5E         [24] 2306 	lcall	__modsint
      002B24 A8 10            [24] 2307 	mov	r0,_bp
      002B26 08               [12] 2308 	inc	r0
      002B27 08               [12] 2309 	inc	r0
      002B28 08               [12] 2310 	inc	r0
      002B29 A6 82            [24] 2311 	mov	@r0,dpl
      002B2B 08               [12] 2312 	inc	r0
      002B2C A6 83            [24] 2313 	mov	@r0,dph
      002B2E 15 81            [12] 2314 	dec	sp
      002B30 15 81            [12] 2315 	dec	sp
      002B32 D0 03            [24] 2316 	pop	ar3
      002B34 D0 04            [24] 2317 	pop	ar4
      002B36 D0 05            [24] 2318 	pop	ar5
      002B38 D0 06            [24] 2319 	pop	ar6
      002B3A D0 07            [24] 2320 	pop	ar7
      002B3C 90 FF 72         [24] 2321 	mov	dptr,#_tp
      002B3F E5 10            [12] 2322 	mov	a,_bp
      002B41 24 05            [12] 2323 	add	a,#0x05
      002B43 F8               [12] 2324 	mov	r0,a
      002B44 E0               [24] 2325 	movx	a,@dptr
      002B45 F6               [12] 2326 	mov	@r0,a
      002B46 A3               [24] 2327 	inc	dptr
      002B47 E0               [24] 2328 	movx	a,@dptr
      002B48 08               [12] 2329 	inc	r0
      002B49 F6               [12] 2330 	mov	@r0,a
      002B4A E5 10            [12] 2331 	mov	a,_bp
      002B4C 24 03            [12] 2332 	add	a,#0x03
      002B4E F8               [12] 2333 	mov	r0,a
      002B4F E5 10            [12] 2334 	mov	a,_bp
      002B51 24 05            [12] 2335 	add	a,#0x05
      002B53 F9               [12] 2336 	mov	r1,a
      002B54 86 F0            [24] 2337 	mov	b,@r0
      002B56 E7               [12] 2338 	mov	a,@r1
      002B57 B5 F0 0A         [24] 2339 	cjne	a,b,00109$
      002B5A 08               [12] 2340 	inc	r0
      002B5B 86 F0            [24] 2341 	mov	b,@r0
      002B5D 09               [12] 2342 	inc	r1
      002B5E E7               [12] 2343 	mov	a,@r1
      002B5F B5 F0 02         [24] 2344 	cjne	a,b,00109$
      002B62 80 02            [24] 2345 	sjmp	00110$
      002B64                       2346 00109$:
      002B64 80 05            [24] 2347 	sjmp	00102$
      002B66                       2348 00110$:
      002B66 75 82 00         [24] 2349 	mov	dpl,#0x00
      002B69 80 65            [24] 2350 	sjmp	00103$
      002B6B                       2351 00102$:
                                   2352 ;	walk.c:237: queue[hp] = *t;
      002B6B 8F 02            [24] 2353 	mov	ar2,r7
      002B6D 8E 07            [24] 2354 	mov	ar7,r6
      002B6F EB               [12] 2355 	mov	a,r3
      002B70 2B               [12] 2356 	add	a,r3
      002B71 FB               [12] 2357 	mov	r3,a
      002B72 EC               [12] 2358 	mov	a,r4
      002B73 33               [12] 2359 	rlc	a
      002B74 FC               [12] 2360 	mov	r4,a
      002B75 EB               [12] 2361 	mov	a,r3
      002B76 2B               [12] 2362 	add	a,r3
      002B77 FB               [12] 2363 	mov	r3,a
      002B78 EC               [12] 2364 	mov	a,r4
      002B79 33               [12] 2365 	rlc	a
      002B7A FC               [12] 2366 	mov	r4,a
      002B7B EB               [12] 2367 	mov	a,r3
      002B7C 24 B0            [12] 2368 	add	a,#_queue
      002B7E FB               [12] 2369 	mov	r3,a
      002B7F EC               [12] 2370 	mov	a,r4
      002B80 34 68            [12] 2371 	addc	a,#(_queue >> 8)
      002B82 FC               [12] 2372 	mov	r4,a
      002B83 7E 00            [12] 2373 	mov	r6,#0x00
      002B85 74 04            [12] 2374 	mov	a,#0x04
      002B87 C0 E0            [24] 2375 	push	acc
      002B89 E4               [12] 2376 	clr	a
      002B8A C0 E0            [24] 2377 	push	acc
      002B8C C0 02            [24] 2378 	push	ar2
      002B8E C0 05            [24] 2379 	push	ar5
      002B90 C0 07            [24] 2380 	push	ar7
      002B92 8B 82            [24] 2381 	mov	dpl,r3
      002B94 8C 83            [24] 2382 	mov	dph,r4
      002B96 8E F0            [24] 2383 	mov	b,r6
      002B98 12 2D F0         [24] 2384 	lcall	___memcpy
      002B9B E5 81            [12] 2385 	mov	a,sp
      002B9D 24 FB            [12] 2386 	add	a,#0xfb
      002B9F F5 81            [12] 2387 	mov	sp,a
                                   2388 ;	walk.c:238: hp = (hp + 1) % QMAX;
      002BA1 90 FF 70         [24] 2389 	mov	dptr,#_hp
      002BA4 E0               [24] 2390 	movx	a,@dptr
      002BA5 FD               [12] 2391 	mov	r5,a
      002BA6 A3               [24] 2392 	inc	dptr
      002BA7 E0               [24] 2393 	movx	a,@dptr
      002BA8 FE               [12] 2394 	mov	r6,a
      002BA9 0D               [12] 2395 	inc	r5
      002BAA BD 00 01         [24] 2396 	cjne	r5,#0x00,00111$
      002BAD 0E               [12] 2397 	inc	r6
      002BAE                       2398 00111$:
      002BAE 74 B0            [12] 2399 	mov	a,#0xb0
      002BB0 C0 E0            [24] 2400 	push	acc
      002BB2 74 25            [12] 2401 	mov	a,#0x25
      002BB4 C0 E0            [24] 2402 	push	acc
      002BB6 8D 82            [24] 2403 	mov	dpl,r5
      002BB8 8E 83            [24] 2404 	mov	dph,r6
      002BBA 12 2F 5E         [24] 2405 	lcall	__modsint
      002BBD AD 82            [24] 2406 	mov	r5,dpl
      002BBF AE 83            [24] 2407 	mov	r6,dph
      002BC1 15 81            [12] 2408 	dec	sp
      002BC3 15 81            [12] 2409 	dec	sp
      002BC5 90 FF 70         [24] 2410 	mov	dptr,#_hp
      002BC8 ED               [12] 2411 	mov	a,r5
      002BC9 F0               [24] 2412 	movx	@dptr,a
      002BCA EE               [12] 2413 	mov	a,r6
      002BCB A3               [24] 2414 	inc	dptr
      002BCC F0               [24] 2415 	movx	@dptr,a
                                   2416 ;	walk.c:239: return 1u;
      002BCD 75 82 01         [24] 2417 	mov	dpl,#0x01
      002BD0                       2418 00103$:
                                   2419 ;	walk.c:240: }
      002BD0 85 10 81         [24] 2420 	mov	sp,_bp
      002BD3 D0 10            [24] 2421 	pop	_bp
      002BD5 22               [24] 2422 	ret
                                   2423 ;------------------------------------------------------------
                                   2424 ;Allocation info for local variables in function 'qget'
                                   2425 ;------------------------------------------------------------
                                   2426 ;t                         Allocated to registers r5 r6 r7 
                                   2427 ;------------------------------------------------------------
                                   2428 ;	walk.c:242: static uint8_t qget(struct node *t) {
                                   2429 ;	-----------------------------------------
                                   2430 ;	 function qget
                                   2431 ;	-----------------------------------------
      002BD6                       2432 _qget:
      002BD6 AD 82            [24] 2433 	mov	r5,dpl
      002BD8 AE 83            [24] 2434 	mov	r6,dph
      002BDA AF F0            [24] 2435 	mov	r7,b
                                   2436 ;	walk.c:243: if (hp == tp) return 0u;
      002BDC 90 FF 70         [24] 2437 	mov	dptr,#_hp
      002BDF E0               [24] 2438 	movx	a,@dptr
      002BE0 FB               [12] 2439 	mov	r3,a
      002BE1 A3               [24] 2440 	inc	dptr
      002BE2 E0               [24] 2441 	movx	a,@dptr
      002BE3 FC               [12] 2442 	mov	r4,a
      002BE4 90 FF 72         [24] 2443 	mov	dptr,#_tp
      002BE7 E0               [24] 2444 	movx	a,@dptr
      002BE8 F9               [12] 2445 	mov	r1,a
      002BE9 A3               [24] 2446 	inc	dptr
      002BEA E0               [24] 2447 	movx	a,@dptr
      002BEB FA               [12] 2448 	mov	r2,a
      002BEC EB               [12] 2449 	mov	a,r3
      002BED B5 01 08         [24] 2450 	cjne	a,ar1,00102$
      002BF0 EC               [12] 2451 	mov	a,r4
      002BF1 B5 02 04         [24] 2452 	cjne	a,ar2,00102$
      002BF4 75 82 00         [24] 2453 	mov	dpl,#0x00
      002BF7 22               [24] 2454 	ret
      002BF8                       2455 00102$:
                                   2456 ;	walk.c:244: *t = queue[tp];
      002BF8 E9               [12] 2457 	mov	a,r1
      002BF9 29               [12] 2458 	add	a,r1
      002BFA F9               [12] 2459 	mov	r1,a
      002BFB EA               [12] 2460 	mov	a,r2
      002BFC 33               [12] 2461 	rlc	a
      002BFD FA               [12] 2462 	mov	r2,a
      002BFE E9               [12] 2463 	mov	a,r1
      002BFF 29               [12] 2464 	add	a,r1
      002C00 F9               [12] 2465 	mov	r1,a
      002C01 EA               [12] 2466 	mov	a,r2
      002C02 33               [12] 2467 	rlc	a
      002C03 FA               [12] 2468 	mov	r2,a
      002C04 E9               [12] 2469 	mov	a,r1
      002C05 24 B0            [12] 2470 	add	a,#_queue
      002C07 F9               [12] 2471 	mov	r1,a
      002C08 EA               [12] 2472 	mov	a,r2
      002C09 34 68            [12] 2473 	addc	a,#(_queue >> 8)
      002C0B FA               [12] 2474 	mov	r2,a
      002C0C 7C 00            [12] 2475 	mov	r4,#0x00
      002C0E 74 04            [12] 2476 	mov	a,#0x04
      002C10 C0 E0            [24] 2477 	push	acc
      002C12 E4               [12] 2478 	clr	a
      002C13 C0 E0            [24] 2479 	push	acc
      002C15 C0 01            [24] 2480 	push	ar1
      002C17 C0 02            [24] 2481 	push	ar2
      002C19 C0 04            [24] 2482 	push	ar4
      002C1B 8D 82            [24] 2483 	mov	dpl,r5
      002C1D 8E 83            [24] 2484 	mov	dph,r6
      002C1F 8F F0            [24] 2485 	mov	b,r7
      002C21 12 2D F0         [24] 2486 	lcall	___memcpy
      002C24 E5 81            [12] 2487 	mov	a,sp
      002C26 24 FB            [12] 2488 	add	a,#0xfb
      002C28 F5 81            [12] 2489 	mov	sp,a
                                   2490 ;	walk.c:245: tp = (tp + 1) % QMAX;
      002C2A 90 FF 72         [24] 2491 	mov	dptr,#_tp
      002C2D E0               [24] 2492 	movx	a,@dptr
      002C2E FE               [12] 2493 	mov	r6,a
      002C2F A3               [24] 2494 	inc	dptr
      002C30 E0               [24] 2495 	movx	a,@dptr
      002C31 FF               [12] 2496 	mov	r7,a
      002C32 0E               [12] 2497 	inc	r6
      002C33 BE 00 01         [24] 2498 	cjne	r6,#0x00,00111$
      002C36 0F               [12] 2499 	inc	r7
      002C37                       2500 00111$:
      002C37 74 B0            [12] 2501 	mov	a,#0xb0
      002C39 C0 E0            [24] 2502 	push	acc
      002C3B 74 25            [12] 2503 	mov	a,#0x25
      002C3D C0 E0            [24] 2504 	push	acc
      002C3F 8E 82            [24] 2505 	mov	dpl,r6
      002C41 8F 83            [24] 2506 	mov	dph,r7
      002C43 12 2F 5E         [24] 2507 	lcall	__modsint
      002C46 AE 82            [24] 2508 	mov	r6,dpl
      002C48 AF 83            [24] 2509 	mov	r7,dph
      002C4A 15 81            [12] 2510 	dec	sp
      002C4C 15 81            [12] 2511 	dec	sp
      002C4E 90 FF 72         [24] 2512 	mov	dptr,#_tp
      002C51 EE               [12] 2513 	mov	a,r6
      002C52 F0               [24] 2514 	movx	@dptr,a
      002C53 EF               [12] 2515 	mov	a,r7
      002C54 A3               [24] 2516 	inc	dptr
      002C55 F0               [24] 2517 	movx	@dptr,a
                                   2518 ;	walk.c:246: return 1u;
      002C56 75 82 01         [24] 2519 	mov	dpl,#0x01
                                   2520 ;	walk.c:247: }
      002C59 22               [24] 2521 	ret
                                   2522 	.area CSEG    (CODE)
                                   2523 	.area CONST   (CODE)
                                   2524 	.area CONST   (CODE)
      00423C                       2525 ___str_0:
      00423C 4D 65 6D 6F 72 79 20  2526 	.ascii "Memory error"
             65 72 72 6F 72
      004248 00                    2527 	.db 0x00
                                   2528 	.area CSEG    (CODE)
                                   2529 	.area CONST   (CODE)
      004249                       2530 ___str_1:
      004249 1B                    2531 	.db 0x1b
      00424A 5B 32 3B 31 48 25 20  2532 	.ascii "[2;1H% 8d% 8d% 8d% 8d"
             38 64 25 20 38 64 25
             20 38 64 25 20 38 64
      00425F 00                    2533 	.db 0x00
                                   2534 	.area CSEG    (CODE)
                                   2535 	.area CONST   (CODE)
      004260                       2536 ___str_2:
      004260 1B                    2537 	.db 0x1b
      004261 5B 25 64 3B 25 64 48  2538 	.ascii "[%d;%dH."
             2E
      004269 00                    2539 	.db 0x00
                                   2540 	.area CSEG    (CODE)
                                   2541 	.area CONST   (CODE)
      00426A                       2542 ___str_3:
      00426A 1B                    2543 	.db 0x1b
      00426B 5B 25 64 3B 25 64 48  2544 	.ascii "[%d;%dHo"
             6F
      004273 00                    2545 	.db 0x00
                                   2546 	.area CSEG    (CODE)
                                   2547 	.area CONST   (CODE)
      004274                       2548 ___str_4:
      004274 1B                    2549 	.db 0x1b
      004275 5B 32 4A              2550 	.ascii "[2J"
      004278 1B                    2551 	.db 0x1b
      004279 5B 3F 32 35 6C        2552 	.ascii "[?25l"
      00427E 00                    2553 	.db 0x00
                                   2554 	.area CSEG    (CODE)
                                   2555 	.area CONST   (CODE)
      00427F                       2556 ___str_5:
      00427F 1B                    2557 	.db 0x1b
      004280 5B 31 3B 31 48 25 20  2558 	.ascii "[1;1H% 8u% 8d% 8d"
             38 75 25 20 38 64 25
             20 38 64
      004291 00                    2559 	.db 0x00
                                   2560 	.area CSEG    (CODE)
                                   2561 	.area CONST   (CODE)
      004292                       2562 ___str_6:
      004292 25 20 38 64 25 20 38  2563 	.ascii "% 8d% 8d"
             64
      00429A 00                    2564 	.db 0x00
                                   2565 	.area CSEG    (CODE)
                                   2566 	.area CONST   (CODE)
      00429B                       2567 ___str_7:
      00429B 1B                    2568 	.db 0x1b
      00429C 5B 32 4A              2569 	.ascii "[2J"
      00429F 1B                    2570 	.db 0x1b
      0042A0 5B 3F 32 35 68        2571 	.ascii "[?25h"
      0042A5 00                    2572 	.db 0x00
                                   2573 	.area CSEG    (CODE)
                                   2574 	.area XINIT   (CODE)
      0042B1                       2575 __xinit__neigh:
      0042B1 FF FF                 2576 	.byte #0xff, #0xff	; -1
      0042B3 01 00                 2577 	.byte #0x01, #0x00	;  1
      0042B5 FF FF                 2578 	.byte #0xff, #0xff	; -1
      0042B7 FF FF                 2579 	.byte #0xff, #0xff	; -1
      0042B9 01 00                 2580 	.byte #0x01, #0x00	;  1
      0042BB FF FF                 2581 	.byte #0xff, #0xff	; -1
      0042BD 01 00                 2582 	.byte #0x01, #0x00	;  1
      0042BF 01 00                 2583 	.byte #0x01, #0x00	;  1
      0042C1 FF FF                 2584 	.byte #0xff, #0xff	; -1
      0042C3 00 00                 2585 	.byte #0x00, #0x00	;  0
      0042C5 00 00                 2586 	.byte #0x00, #0x00	;  0
      0042C7 FF FF                 2587 	.byte #0xff, #0xff	; -1
      0042C9 01 00                 2588 	.byte #0x01, #0x00	;  1
      0042CB 00 00                 2589 	.byte #0x00, #0x00	;  0
      0042CD 00 00                 2590 	.byte #0x00, #0x00	;  0
      0042CF 01 00                 2591 	.byte #0x01, #0x00	;  1
      0042D1 FF FF                 2592 	.byte #0xff, #0xff	; -1
      0042D3 01 00                 2593 	.byte #0x01, #0x00	;  1
      0042D5 FF FF                 2594 	.byte #0xff, #0xff	; -1
      0042D7 FF FF                 2595 	.byte #0xff, #0xff	; -1
      0042D9 01 00                 2596 	.byte #0x01, #0x00	;  1
      0042DB FF FF                 2597 	.byte #0xff, #0xff	; -1
      0042DD 01 00                 2598 	.byte #0x01, #0x00	;  1
      0042DF 01 00                 2599 	.byte #0x01, #0x00	;  1
      0042E1 FF FF                 2600 	.byte #0xff, #0xff	; -1
      0042E3 00 00                 2601 	.byte #0x00, #0x00	;  0
      0042E5 00 00                 2602 	.byte #0x00, #0x00	;  0
      0042E7 FF FF                 2603 	.byte #0xff, #0xff	; -1
      0042E9 01 00                 2604 	.byte #0x01, #0x00	;  1
      0042EB 00 00                 2605 	.byte #0x00, #0x00	;  0
      0042ED 00 00                 2606 	.byte #0x00, #0x00	;  0
      0042EF 01 00                 2607 	.byte #0x01, #0x00	;  1
                                   2608 	.area CABS    (ABS,CODE)
