                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module life
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _show
                                     13 	.globl _int1
                                     14 	.globl _int0
                                     15 	.globl _print32x
                                     16 	.globl _print16x
                                     17 	.globl _printstr
                                     18 	.globl _getchar_poll
                                     19 	.globl _getchar
                                     20 	.globl _putchar
                                     21 	.globl _toupper
                                     22 	.globl ___memcpy
                                     23 	.globl _memset
                                     24 	.globl _srand
                                     25 	.globl _rand
                                     26 	.globl _CY
                                     27 	.globl _AC
                                     28 	.globl _F0
                                     29 	.globl _RS1
                                     30 	.globl _RS0
                                     31 	.globl _OV
                                     32 	.globl _FL
                                     33 	.globl _P
                                     34 	.globl _TF2
                                     35 	.globl _EXF2
                                     36 	.globl _RCLK
                                     37 	.globl _TCLK
                                     38 	.globl _EXEN2
                                     39 	.globl _TR2
                                     40 	.globl _C_T2
                                     41 	.globl _CP_RL2
                                     42 	.globl _T2CON_7
                                     43 	.globl _T2CON_6
                                     44 	.globl _T2CON_5
                                     45 	.globl _T2CON_4
                                     46 	.globl _T2CON_3
                                     47 	.globl _T2CON_2
                                     48 	.globl _T2CON_1
                                     49 	.globl _T2CON_0
                                     50 	.globl _PT2
                                     51 	.globl _PS
                                     52 	.globl _PT1
                                     53 	.globl _PX1
                                     54 	.globl _PT0
                                     55 	.globl _PX0
                                     56 	.globl _RD
                                     57 	.globl _WR
                                     58 	.globl _T1
                                     59 	.globl _T0
                                     60 	.globl _INT1
                                     61 	.globl _INT0
                                     62 	.globl _TXD
                                     63 	.globl _RXD
                                     64 	.globl _P3_7
                                     65 	.globl _P3_6
                                     66 	.globl _P3_5
                                     67 	.globl _P3_4
                                     68 	.globl _P3_3
                                     69 	.globl _P3_2
                                     70 	.globl _P3_1
                                     71 	.globl _P3_0
                                     72 	.globl _EA
                                     73 	.globl _ET2
                                     74 	.globl _ES
                                     75 	.globl _ET1
                                     76 	.globl _EX1
                                     77 	.globl _ET0
                                     78 	.globl _EX0
                                     79 	.globl _P2_7
                                     80 	.globl _P2_6
                                     81 	.globl _P2_5
                                     82 	.globl _P2_4
                                     83 	.globl _P2_3
                                     84 	.globl _P2_2
                                     85 	.globl _P2_1
                                     86 	.globl _P2_0
                                     87 	.globl _SM0
                                     88 	.globl _SM1
                                     89 	.globl _SM2
                                     90 	.globl _REN
                                     91 	.globl _TB8
                                     92 	.globl _RB8
                                     93 	.globl _TI
                                     94 	.globl _RI
                                     95 	.globl _T2EX
                                     96 	.globl _T2
                                     97 	.globl _P1_7
                                     98 	.globl _P1_6
                                     99 	.globl _P1_5
                                    100 	.globl _P1_4
                                    101 	.globl _P1_3
                                    102 	.globl _P1_2
                                    103 	.globl _P1_1
                                    104 	.globl _P1_0
                                    105 	.globl _TF1
                                    106 	.globl _TR1
                                    107 	.globl _TF0
                                    108 	.globl _TR0
                                    109 	.globl _IE1
                                    110 	.globl _IT1
                                    111 	.globl _IE0
                                    112 	.globl _IT0
                                    113 	.globl _P0_7
                                    114 	.globl _P0_6
                                    115 	.globl _P0_5
                                    116 	.globl _P0_4
                                    117 	.globl _P0_3
                                    118 	.globl _P0_2
                                    119 	.globl _P0_1
                                    120 	.globl _P0_0
                                    121 	.globl _B
                                    122 	.globl _A
                                    123 	.globl _ACC
                                    124 	.globl _PSW
                                    125 	.globl _TH2
                                    126 	.globl _TL2
                                    127 	.globl _RCAP2H
                                    128 	.globl _RCAP2L
                                    129 	.globl _T2MOD
                                    130 	.globl _T2CON
                                    131 	.globl _IP
                                    132 	.globl _P3
                                    133 	.globl _IE
                                    134 	.globl _P2
                                    135 	.globl _SBUF
                                    136 	.globl _SCON
                                    137 	.globl _P1
                                    138 	.globl _TH1
                                    139 	.globl _TH0
                                    140 	.globl _TL1
                                    141 	.globl _TL0
                                    142 	.globl _TMOD
                                    143 	.globl _TCON
                                    144 	.globl _PCON
                                    145 	.globl _DPH
                                    146 	.globl _DPL
                                    147 	.globl _SP
                                    148 	.globl _P0
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
                                    287 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        288 	.ds 8
                                    289 ;--------------------------------------------------------
                                    290 ; overlayable bit register bank
                                    291 ;--------------------------------------------------------
                                    292 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        293 bits:
      000020                        294 	.ds 1
                           008000   295 	b0 = bits[0]
                           008100   296 	b1 = bits[1]
                           008200   297 	b2 = bits[2]
                           008300   298 	b3 = bits[3]
                           008400   299 	b4 = bits[4]
                           008500   300 	b5 = bits[5]
                           008600   301 	b6 = bits[6]
                           008700   302 	b7 = bits[7]
                                    303 ;--------------------------------------------------------
                                    304 ; internal ram data
                                    305 ;--------------------------------------------------------
                                    306 	.area DSEG    (DATA)
                                    307 ;--------------------------------------------------------
                                    308 ; overlayable items in internal ram 
                                    309 ;--------------------------------------------------------
                                    310 ;--------------------------------------------------------
                                    311 ; Stack segment in internal ram 
                                    312 ;--------------------------------------------------------
                                    313 	.area	SSEG
      000035                        314 __start__stack:
      000035                        315 	.ds	1
                                    316 
                                    317 ;--------------------------------------------------------
                                    318 ; indirectly addressable internal ram data
                                    319 ;--------------------------------------------------------
                                    320 	.area ISEG    (DATA)
      000021                        321 _i0:
      000021                        322 	.ds 1
      000022                        323 _i1:
      000022                        324 	.ds 1
      000023                        325 _OE76:
      000023                        326 	.ds 1
      000024                        327 _x:
      000024                        328 	.ds 2
      000026                        329 _y:
      000026                        330 	.ds 2
      000028                        331 _n:
      000028                        332 	.ds 1
      000029                        333 _fixed:
      000029                        334 	.ds 1
      00002A                        335 _cycle2:
      00002A                        336 	.ds 1
      00002B                        337 _gen:
      00002B                        338 	.ds 4
      00002F                        339 _genc2:
      00002F                        340 	.ds 4
      000033                        341 _c2set:
      000033                        342 	.ds 1
      000034                        343 _pruni:
      000034                        344 	.ds 1
                                    345 ;--------------------------------------------------------
                                    346 ; absolute internal ram data
                                    347 ;--------------------------------------------------------
                                    348 	.area IABS    (ABS,DATA)
                                    349 	.area IABS    (ABS,DATA)
                                    350 ;--------------------------------------------------------
                                    351 ; bit data
                                    352 ;--------------------------------------------------------
                                    353 	.area BSEG    (BIT)
                                    354 ;--------------------------------------------------------
                                    355 ; paged external ram data
                                    356 ;--------------------------------------------------------
                                    357 	.area PSEG    (PAG,XDATA)
                                    358 ;--------------------------------------------------------
                                    359 ; external ram data
                                    360 ;--------------------------------------------------------
                                    361 	.area XSEG    (XDATA)
                           008000   362 _RND	=	0x8000
                           00F006   363 _OEreg	=	0xf006
      004000                        364 _iu:
      004000                        365 	.ds 9216
      006400                        366 _pu:
      006400                        367 	.ds 9216
      008800                        368 _u:
      008800                        369 	.ds 9216
      00AC00                        370 _nu:
      00AC00                        371 	.ds 9216
                                    372 ;--------------------------------------------------------
                                    373 ; absolute external ram data
                                    374 ;--------------------------------------------------------
                                    375 	.area XABS    (ABS,XDATA)
                                    376 ;--------------------------------------------------------
                                    377 ; external initialized ram data
                                    378 ;--------------------------------------------------------
                                    379 	.area XISEG   (XDATA)
                                    380 	.area HOME    (CODE)
                                    381 	.area GSINIT0 (CODE)
                                    382 	.area GSINIT1 (CODE)
                                    383 	.area GSINIT2 (CODE)
                                    384 	.area GSINIT3 (CODE)
                                    385 	.area GSINIT4 (CODE)
                                    386 	.area GSINIT5 (CODE)
                                    387 	.area GSINIT  (CODE)
                                    388 	.area GSFINAL (CODE)
                                    389 	.area CSEG    (CODE)
                                    390 ;--------------------------------------------------------
                                    391 ; interrupt vector 
                                    392 ;--------------------------------------------------------
                                    393 	.area HOME    (CODE)
      002000                        394 __interrupt_vect:
      002000 02 20 19         [24]  395 	ljmp	__sdcc_gsinit_startup
      002003 02 20 75         [24]  396 	ljmp	_int0
      002006                        397 	.ds	5
      00200B 32               [24]  398 	reti
      00200C                        399 	.ds	7
      002013 02 20 81         [24]  400 	ljmp	_int1
                                    401 ;--------------------------------------------------------
                                    402 ; global & static initialisations
                                    403 ;--------------------------------------------------------
                                    404 	.area HOME    (CODE)
                                    405 	.area GSINIT  (CODE)
                                    406 	.area GSFINAL (CODE)
                                    407 	.area GSINIT  (CODE)
                                    408 	.globl __sdcc_gsinit_startup
                                    409 	.globl __sdcc_program_startup
                                    410 	.globl __start__stack
                                    411 	.globl __mcs51_genXINIT
                                    412 	.globl __mcs51_genXRAMCLEAR
                                    413 	.globl __mcs51_genRAMCLEAR
                                    414 	.area GSFINAL (CODE)
      002072 02 20 16         [24]  415 	ljmp	__sdcc_program_startup
                                    416 ;--------------------------------------------------------
                                    417 ; Home
                                    418 ;--------------------------------------------------------
                                    419 	.area HOME    (CODE)
                                    420 	.area HOME    (CODE)
      002016                        421 __sdcc_program_startup:
      002016 02 21 AD         [24]  422 	ljmp	_main
                                    423 ;	return from main will return to caller
                                    424 ;--------------------------------------------------------
                                    425 ; code
                                    426 ;--------------------------------------------------------
                                    427 	.area CSEG    (CODE)
                                    428 ;------------------------------------------------------------
                                    429 ;Allocation info for local variables in function 'int0'
                                    430 ;------------------------------------------------------------
                                    431 ;	life.c:13: void int0(void) __interrupt IE0_VECTOR __using 1 {
                                    432 ;	-----------------------------------------
                                    433 ;	 function int0
                                    434 ;	-----------------------------------------
      002075                        435 _int0:
                           00000F   436 	ar7 = 0x0f
                           00000E   437 	ar6 = 0x0e
                           00000D   438 	ar5 = 0x0d
                           00000C   439 	ar4 = 0x0c
                           00000B   440 	ar3 = 0x0b
                           00000A   441 	ar2 = 0x0a
                           000009   442 	ar1 = 0x09
                           000008   443 	ar0 = 0x08
      002075 C0 D0            [24]  444 	push	psw
      002077 75 D0 08         [24]  445 	mov	psw,#0x08
                                    446 ;	life.c:14: i0 = 1;
      00207A 78 21            [12]  447 	mov	r0,#_i0
      00207C 76 01            [12]  448 	mov	@r0,#0x01
                                    449 ;	life.c:15: }
      00207E D0 D0            [24]  450 	pop	psw
      002080 32               [24]  451 	reti
                                    452 ;	eliminated unneeded push/pop dpl
                                    453 ;	eliminated unneeded push/pop dph
                                    454 ;	eliminated unneeded push/pop b
                                    455 ;	eliminated unneeded push/pop acc
                                    456 ;------------------------------------------------------------
                                    457 ;Allocation info for local variables in function 'int1'
                                    458 ;------------------------------------------------------------
                                    459 ;	life.c:17: void int1(void) __interrupt IE1_VECTOR __using 1 {
                                    460 ;	-----------------------------------------
                                    461 ;	 function int1
                                    462 ;	-----------------------------------------
      002081                        463 _int1:
      002081 C0 D0            [24]  464 	push	psw
      002083 75 D0 08         [24]  465 	mov	psw,#0x08
                                    466 ;	life.c:18: i1 = 1;
      002086 78 22            [12]  467 	mov	r0,#_i1
      002088 76 01            [12]  468 	mov	@r0,#0x01
                                    469 ;	life.c:19: }
      00208A D0 D0            [24]  470 	pop	psw
      00208C 32               [24]  471 	reti
                                    472 ;	eliminated unneeded push/pop dpl
                                    473 ;	eliminated unneeded push/pop dph
                                    474 ;	eliminated unneeded push/pop b
                                    475 ;	eliminated unneeded push/pop acc
                                    476 ;------------------------------------------------------------
                                    477 ;Allocation info for local variables in function 'flashOE'
                                    478 ;------------------------------------------------------------
                                    479 ;	life.c:29: static void flashOE(void) {
                                    480 ;	-----------------------------------------
                                    481 ;	 function flashOE
                                    482 ;	-----------------------------------------
      00208D                        483 _flashOE:
                           000007   484 	ar7 = 0x07
                           000006   485 	ar6 = 0x06
                           000005   486 	ar5 = 0x05
                           000004   487 	ar4 = 0x04
                           000003   488 	ar3 = 0x03
                           000002   489 	ar2 = 0x02
                           000001   490 	ar1 = 0x01
                           000000   491 	ar0 = 0x00
                                    492 ;	life.c:30: P1_7 = 0;
                                    493 ;	assignBit
      00208D C2 97            [12]  494 	clr	_P1_7
                                    495 ;	life.c:35: __endasm;
      00208F 00               [12]  496 	nop
      002090 00               [12]  497 	nop
      002091 00               [12]  498 	nop
                                    499 ;	life.c:36: OEreg = OE76;
      002092 78 23            [12]  500 	mov	r0,#_OE76
      002094 90 F0 06         [24]  501 	mov	dptr,#_OEreg
      002097 E6               [12]  502 	mov	a,@r0
      002098 F0               [24]  503 	movx	@dptr,a
                                    504 ;	life.c:37: P1_7 = 1;
                                    505 ;	assignBit
      002099 D2 97            [12]  506 	setb	_P1_7
                                    507 ;	life.c:42: __endasm;
      00209B 00               [12]  508 	nop
      00209C 00               [12]  509 	nop
      00209D 00               [12]  510 	nop
                                    511 ;	life.c:44: return;
                                    512 ;	life.c:45: }
      00209E 22               [24]  513 	ret
                                    514 ;------------------------------------------------------------
                                    515 ;Allocation info for local variables in function 'show'
                                    516 ;------------------------------------------------------------
                                    517 ;universe                  Allocated to stack - _bp -5
                                    518 ;prflags                   Allocated to registers r7 
                                    519 ;------------------------------------------------------------
                                    520 ;	life.c:79: void show(char prflags, char *universe) {
                                    521 ;	-----------------------------------------
                                    522 ;	 function show
                                    523 ;	-----------------------------------------
      00209F                        524 _show:
      00209F C0 10            [24]  525 	push	_bp
      0020A1 85 81 10         [24]  526 	mov	_bp,sp
                                    527 ;	life.c:80: if (prflags & PRCLR) printstr("\033[2J");
      0020A4 E5 82            [12]  528 	mov	a,dpl
      0020A6 FF               [12]  529 	mov	r7,a
      0020A7 30 E0 0D         [24]  530 	jnb	acc.0,00102$
      0020AA 90 30 F9         [24]  531 	mov	dptr,#___str_0
      0020AD 75 F0 80         [24]  532 	mov	b,#0x80
      0020B0 C0 07            [24]  533 	push	ar7
      0020B2 12 2B 2A         [24]  534 	lcall	_printstr
      0020B5 D0 07            [24]  535 	pop	ar7
      0020B7                        536 00102$:
                                    537 ;	life.c:81: if (prflags & PRHDR) {
      0020B7 EF               [12]  538 	mov	a,r7
      0020B8 30 E1 4A         [24]  539 	jnb	acc.1,00106$
                                    540 ;	life.c:82: printstr("GEN ");
      0020BB 90 30 FE         [24]  541 	mov	dptr,#___str_1
      0020BE 75 F0 80         [24]  542 	mov	b,#0x80
      0020C1 C0 07            [24]  543 	push	ar7
      0020C3 12 2B 2A         [24]  544 	lcall	_printstr
                                    545 ;	life.c:83: print32x(gen);
      0020C6 78 2B            [12]  546 	mov	r0,#_gen
      0020C8 86 82            [24]  547 	mov	dpl,@r0
      0020CA 08               [12]  548 	inc	r0
      0020CB 86 83            [24]  549 	mov	dph,@r0
      0020CD 08               [12]  550 	inc	r0
      0020CE 86 F0            [24]  551 	mov	b,@r0
      0020D0 08               [12]  552 	inc	r0
      0020D1 E6               [12]  553 	mov	a,@r0
      0020D2 12 2C DA         [24]  554 	lcall	_print32x
      0020D5 D0 07            [24]  555 	pop	ar7
                                    556 ;	life.c:84: if (c2set) {
      0020D7 78 33            [12]  557 	mov	r0,#_c2set
      0020D9 E6               [12]  558 	mov	a,@r0
      0020DA 60 1C            [24]  559 	jz	00104$
                                    560 ;	life.c:85: printstr(" CYCLE2 ");
      0020DC 90 31 03         [24]  561 	mov	dptr,#___str_2
      0020DF 75 F0 80         [24]  562 	mov	b,#0x80
      0020E2 C0 07            [24]  563 	push	ar7
      0020E4 12 2B 2A         [24]  564 	lcall	_printstr
                                    565 ;	life.c:86: print32x(genc2);
      0020E7 78 2F            [12]  566 	mov	r0,#_genc2
      0020E9 86 82            [24]  567 	mov	dpl,@r0
      0020EB 08               [12]  568 	inc	r0
      0020EC 86 83            [24]  569 	mov	dph,@r0
      0020EE 08               [12]  570 	inc	r0
      0020EF 86 F0            [24]  571 	mov	b,@r0
      0020F1 08               [12]  572 	inc	r0
      0020F2 E6               [12]  573 	mov	a,@r0
      0020F3 12 2C DA         [24]  574 	lcall	_print32x
      0020F6 D0 07            [24]  575 	pop	ar7
      0020F8                        576 00104$:
                                    577 ;	life.c:88: printstr("\r\n");
      0020F8 90 31 0C         [24]  578 	mov	dptr,#___str_3
      0020FB 75 F0 80         [24]  579 	mov	b,#0x80
      0020FE C0 07            [24]  580 	push	ar7
      002100 12 2B 2A         [24]  581 	lcall	_printstr
      002103 D0 07            [24]  582 	pop	ar7
      002105                        583 00106$:
                                    584 ;	life.c:90: if (prflags & PRUNI) {
      002105 EF               [12]  585 	mov	a,r7
      002106 20 E2 03         [24]  586 	jb	acc.2,00159$
      002109 02 21 AA         [24]  587 	ljmp	00113$
      00210C                        588 00159$:
                                    589 ;	life.c:91: printstr("\033[?25l");
      00210C 90 31 0F         [24]  590 	mov	dptr,#___str_4
      00210F 75 F0 80         [24]  591 	mov	b,#0x80
      002112 12 2B 2A         [24]  592 	lcall	_printstr
                                    593 ;	life.c:92: for (x = 0; x < W; x++) {
      002115 78 24            [12]  594 	mov	r0,#_x
      002117 E4               [12]  595 	clr	a
      002118 F6               [12]  596 	mov	@r0,a
      002119 08               [12]  597 	inc	r0
      00211A F6               [12]  598 	mov	@r0,a
      00211B                        599 00116$:
                                    600 ;	life.c:93: for (y = 0; y < H; y++)
      00211B 78 26            [12]  601 	mov	r0,#_y
      00211D E4               [12]  602 	clr	a
      00211E F6               [12]  603 	mov	@r0,a
      00211F 08               [12]  604 	inc	r0
      002120 F6               [12]  605 	mov	@r0,a
      002121                        606 00114$:
                                    607 ;	life.c:94: if (universe[A2D(W, y, x)]) putchar((int)'1');
      002121 78 26            [12]  608 	mov	r0,#_y
      002123 E6               [12]  609 	mov	a,@r0
      002124 C0 E0            [24]  610 	push	acc
      002126 08               [12]  611 	inc	r0
      002127 E6               [12]  612 	mov	a,@r0
      002128 C0 E0            [24]  613 	push	acc
      00212A 90 00 30         [24]  614 	mov	dptr,#0x0030
      00212D 12 2E 0F         [24]  615 	lcall	__mulint
      002130 AE 82            [24]  616 	mov	r6,dpl
      002132 AF 83            [24]  617 	mov	r7,dph
      002134 15 81            [12]  618 	dec	sp
      002136 15 81            [12]  619 	dec	sp
      002138 78 24            [12]  620 	mov	r0,#_x
      00213A E6               [12]  621 	mov	a,@r0
      00213B 2E               [12]  622 	add	a,r6
      00213C FE               [12]  623 	mov	r6,a
      00213D 08               [12]  624 	inc	r0
      00213E E6               [12]  625 	mov	a,@r0
      00213F 3F               [12]  626 	addc	a,r7
      002140 FF               [12]  627 	mov	r7,a
      002141 E5 10            [12]  628 	mov	a,_bp
      002143 24 FB            [12]  629 	add	a,#0xfb
      002145 F8               [12]  630 	mov	r0,a
      002146 EE               [12]  631 	mov	a,r6
      002147 26               [12]  632 	add	a,@r0
      002148 FE               [12]  633 	mov	r6,a
      002149 EF               [12]  634 	mov	a,r7
      00214A 08               [12]  635 	inc	r0
      00214B 36               [12]  636 	addc	a,@r0
      00214C FF               [12]  637 	mov	r7,a
      00214D 08               [12]  638 	inc	r0
      00214E 86 05            [24]  639 	mov	ar5,@r0
      002150 8E 82            [24]  640 	mov	dpl,r6
      002152 8F 83            [24]  641 	mov	dph,r7
      002154 8D F0            [24]  642 	mov	b,r5
      002156 12 2F D1         [24]  643 	lcall	__gptrget
      002159 60 08            [24]  644 	jz	00108$
      00215B 90 00 31         [24]  645 	mov	dptr,#0x0031
      00215E 12 2A F9         [24]  646 	lcall	_putchar
      002161 80 06            [24]  647 	sjmp	00115$
      002163                        648 00108$:
                                    649 ;	life.c:95: else putchar((int)'0');
      002163 90 00 30         [24]  650 	mov	dptr,#0x0030
      002166 12 2A F9         [24]  651 	lcall	_putchar
      002169                        652 00115$:
                                    653 ;	life.c:93: for (y = 0; y < H; y++)
      002169 78 26            [12]  654 	mov	r0,#_y
      00216B 06               [12]  655 	inc	@r0
      00216C B6 00 02         [24]  656 	cjne	@r0,#0x00,00161$
      00216F 08               [12]  657 	inc	r0
      002170 06               [12]  658 	inc	@r0
      002171                        659 00161$:
      002171 78 26            [12]  660 	mov	r0,#_y
      002173 C3               [12]  661 	clr	c
      002174 E6               [12]  662 	mov	a,@r0
      002175 94 C0            [12]  663 	subb	a,#0xc0
      002177 08               [12]  664 	inc	r0
      002178 E6               [12]  665 	mov	a,@r0
      002179 64 80            [12]  666 	xrl	a,#0x80
      00217B 94 80            [12]  667 	subb	a,#0x80
      00217D 40 A2            [24]  668 	jc	00114$
                                    669 ;	life.c:96: printstr("\r\n");
      00217F 90 31 0C         [24]  670 	mov	dptr,#___str_3
      002182 75 F0 80         [24]  671 	mov	b,#0x80
      002185 12 2B 2A         [24]  672 	lcall	_printstr
                                    673 ;	life.c:92: for (x = 0; x < W; x++) {
      002188 78 24            [12]  674 	mov	r0,#_x
      00218A 06               [12]  675 	inc	@r0
      00218B B6 00 02         [24]  676 	cjne	@r0,#0x00,00163$
      00218E 08               [12]  677 	inc	r0
      00218F 06               [12]  678 	inc	@r0
      002190                        679 00163$:
      002190 78 24            [12]  680 	mov	r0,#_x
      002192 C3               [12]  681 	clr	c
      002193 E6               [12]  682 	mov	a,@r0
      002194 94 30            [12]  683 	subb	a,#0x30
      002196 08               [12]  684 	inc	r0
      002197 E6               [12]  685 	mov	a,@r0
      002198 64 80            [12]  686 	xrl	a,#0x80
      00219A 94 80            [12]  687 	subb	a,#0x80
      00219C 50 03            [24]  688 	jnc	00164$
      00219E 02 21 1B         [24]  689 	ljmp	00116$
      0021A1                        690 00164$:
                                    691 ;	life.c:98: printstr("\033[?25h");
      0021A1 90 31 16         [24]  692 	mov	dptr,#___str_5
      0021A4 75 F0 80         [24]  693 	mov	b,#0x80
      0021A7 12 2B 2A         [24]  694 	lcall	_printstr
      0021AA                        695 00113$:
                                    696 ;	life.c:101: return;
                                    697 ;	life.c:102: }
      0021AA D0 10            [24]  698 	pop	_bp
      0021AC 22               [24]  699 	ret
                                    700 ;------------------------------------------------------------
                                    701 ;Allocation info for local variables in function 'main'
                                    702 ;------------------------------------------------------------
                                    703 ;c                         Allocated to registers r6 r7 
                                    704 ;nbits                     Allocated to registers r4 r5 
                                    705 ;c                         Allocated to stack - _bp +10
                                    706 ;sloc0                     Allocated to stack - _bp +1
                                    707 ;sloc1                     Allocated to stack - _bp +2
                                    708 ;sloc2                     Allocated to stack - _bp +4
                                    709 ;sloc3                     Allocated to stack - _bp +6
                                    710 ;sloc4                     Allocated to stack - _bp +8
                                    711 ;------------------------------------------------------------
                                    712 ;	life.c:206: void main(void) {
                                    713 ;	-----------------------------------------
                                    714 ;	 function main
                                    715 ;	-----------------------------------------
      0021AD                        716 _main:
      0021AD C0 10            [24]  717 	push	_bp
      0021AF E5 81            [12]  718 	mov	a,sp
      0021B1 F5 10            [12]  719 	mov	_bp,a
      0021B3 24 0B            [12]  720 	add	a,#0x0b
      0021B5 F5 81            [12]  721 	mov	sp,a
                                    722 ;	life.c:209: IT0 = 1;
                                    723 ;	assignBit
      0021B7 D2 88            [12]  724 	setb	_IT0
                                    725 ;	life.c:210: IT1 = 1;
                                    726 ;	assignBit
      0021B9 D2 8A            [12]  727 	setb	_IT1
                                    728 ;	life.c:211: EX0 = 1;
                                    729 ;	assignBit
      0021BB D2 A8            [12]  730 	setb	_EX0
                                    731 ;	life.c:212: EX1 = 1;
                                    732 ;	assignBit
      0021BD D2 AA            [12]  733 	setb	_EX1
                                    734 ;	life.c:213: EA = 1;	
                                    735 ;	assignBit
      0021BF D2 AF            [12]  736 	setb	_EA
                                    737 ;	life.c:214: P1_7 = 1;
                                    738 ;	assignBit
      0021C1 D2 97            [12]  739 	setb	_P1_7
                                    740 ;	life.c:219: __endasm;
      0021C3 00               [12]  741 	nop
      0021C4 00               [12]  742 	nop
      0021C5 00               [12]  743 	nop
                                    744 ;	life.c:221: srand(RND);
      0021C6 90 80 00         [24]  745 	mov	dptr,#_RND
      0021C9 E0               [24]  746 	movx	a,@dptr
      0021CA FE               [12]  747 	mov	r6,a
      0021CB A3               [24]  748 	inc	dptr
      0021CC E0               [24]  749 	movx	a,@dptr
      0021CD FF               [12]  750 	mov	r7,a
      0021CE 8E 82            [24]  751 	mov	dpl,r6
      0021D0 8F 83            [24]  752 	mov	dph,r7
      0021D2 12 2A E0         [24]  753 	lcall	_srand
                                    754 ;	life.c:223: OE76 = OE76_0;
      0021D5 78 23            [12]  755 	mov	r0,#_OE76
      0021D7 76 3F            [12]  756 	mov	@r0,#0x3f
                                    757 ;	life.c:224: flashOE();
      0021D9 12 20 8D         [24]  758 	lcall	_flashOE
                                    759 ;	life.c:61: gen = 0ul;
      0021DC 78 2B            [12]  760 	mov	r0,#_gen
      0021DE E4               [12]  761 	clr	a
      0021DF F6               [12]  762 	mov	@r0,a
      0021E0 08               [12]  763 	inc	r0
      0021E1 F6               [12]  764 	mov	@r0,a
      0021E2 08               [12]  765 	inc	r0
      0021E3 F6               [12]  766 	mov	@r0,a
      0021E4 08               [12]  767 	inc	r0
      0021E5 F6               [12]  768 	mov	@r0,a
                                    769 ;	life.c:62: genc2 = 0ul;
      0021E6 78 2F            [12]  770 	mov	r0,#_genc2
      0021E8 F6               [12]  771 	mov	@r0,a
      0021E9 08               [12]  772 	inc	r0
      0021EA F6               [12]  773 	mov	@r0,a
      0021EB 08               [12]  774 	inc	r0
      0021EC F6               [12]  775 	mov	@r0,a
      0021ED 08               [12]  776 	inc	r0
      0021EE F6               [12]  777 	mov	@r0,a
                                    778 ;	life.c:63: c2set = 0;
      0021EF 78 33            [12]  779 	mov	r0,#_c2set
      0021F1 76 00            [12]  780 	mov	@r0,#0x00
                                    781 ;	life.c:228: printstr("\033[?25h\033[m");
      0021F3 90 31 37         [24]  782 	mov	dptr,#___str_9
      0021F6 75 F0 80         [24]  783 	mov	b,#0x80
      0021F9 12 2B 2A         [24]  784 	lcall	_printstr
                                    785 ;	life.c:230: for (i0 = 0; !i0; ) {
      0021FC 78 21            [12]  786 	mov	r0,#_i0
      0021FE 76 00            [12]  787 	mov	@r0,#0x00
      002200                        788 00236$:
                                    789 ;	life.c:231: pruni = 1;
      002200 78 34            [12]  790 	mov	r0,#_pruni
      002202 76 01            [12]  791 	mov	@r0,#0x01
                                    792 ;	life.c:232: while (1) {
      002204                        793 00127$:
                                    794 ;	life.c:233: printstr("LIFE I L R O P S U B T\r\n");
      002204 90 31 41         [24]  795 	mov	dptr,#___str_10
      002207 75 F0 80         [24]  796 	mov	b,#0x80
      00220A 12 2B 2A         [24]  797 	lcall	_printstr
                                    798 ;	life.c:234: c = toupper(getchar());
      00220D 12 2B 03         [24]  799 	lcall	_getchar
      002210 12 2F AA         [24]  800 	lcall	_toupper
      002213 AE 82            [24]  801 	mov	r6,dpl
      002215 AF 83            [24]  802 	mov	r7,dph
                                    803 ;	life.c:235: if (i0 || (c == (int)'T')) goto term;
      002217 78 21            [12]  804 	mov	r0,#_i0
      002219 E6               [12]  805 	mov	a,@r0
      00221A 60 03            [24]  806 	jz	00463$
      00221C 02 2A 08         [24]  807 	ljmp	00154$
      00221F                        808 00463$:
      00221F BE 54 06         [24]  809 	cjne	r6,#0x54,00464$
      002222 BF 00 03         [24]  810 	cjne	r7,#0x00,00464$
      002225 02 2A 08         [24]  811 	ljmp	00154$
      002228                        812 00464$:
                                    813 ;	life.c:236: else if ((c == (int)'I') || (c == (int)'L') || (c == (int)'R')) {
      002228 BE 49 05         [24]  814 	cjne	r6,#0x49,00465$
      00222B BF 00 02         [24]  815 	cjne	r7,#0x00,00465$
      00222E 80 13            [24]  816 	sjmp	00117$
      002230                        817 00465$:
      002230 BE 4C 05         [24]  818 	cjne	r6,#0x4c,00466$
      002233 BF 00 02         [24]  819 	cjne	r7,#0x00,00466$
      002236 80 0B            [24]  820 	sjmp	00117$
      002238                        821 00466$:
      002238 BE 52 05         [24]  822 	cjne	r6,#0x52,00467$
      00223B BF 00 02         [24]  823 	cjne	r7,#0x00,00467$
      00223E 80 03            [24]  824 	sjmp	00468$
      002240                        825 00467$:
      002240 02 24 6B         [24]  826 	ljmp	00118$
      002243                        827 00468$:
      002243                        828 00117$:
                                    829 ;	life.c:237: if (c == (int)'L') loadiu();
      002243 BE 4C 05         [24]  830 	cjne	r6,#0x4c,00469$
      002246 BF 00 02         [24]  831 	cjne	r7,#0x00,00469$
      002249 80 03            [24]  832 	sjmp	00470$
      00224B                        833 00469$:
      00224B 02 23 6F         [24]  834 	ljmp	00104$
      00224E                        835 00470$:
                                    836 ;	life.c:114: printstr("LOAD 0 1 ~ # <");
      00224E 90 31 1D         [24]  837 	mov	dptr,#___str_6
      002251 75 F0 80         [24]  838 	mov	b,#0x80
      002254 12 2B 2A         [24]  839 	lcall	_printstr
                                    840 ;	life.c:116: for (nbits = 0, y = 0; y < (H * W); y += W) {
      002257 7C 00            [12]  841 	mov	r4,#0x00
      002259 7D 00            [12]  842 	mov	r5,#0x00
      00225B 78 26            [12]  843 	mov	r0,#_y
      00225D E4               [12]  844 	clr	a
      00225E F6               [12]  845 	mov	@r0,a
      00225F 08               [12]  846 	inc	r0
      002260 F6               [12]  847 	mov	@r0,a
      002261                        848 00222$:
      002261 78 26            [12]  849 	mov	r0,#_y
      002263 C3               [12]  850 	clr	c
      002264 08               [12]  851 	inc	r0
      002265 E6               [12]  852 	mov	a,@r0
      002266 64 80            [12]  853 	xrl	a,#0x80
      002268 94 A4            [12]  854 	subb	a,#0xa4
      00226A 40 03            [24]  855 	jc	00471$
      00226C 02 23 2A         [24]  856 	ljmp	00181$
      00226F                        857 00471$:
                                    858 ;	life.c:117: for (x = 0; x < W; x++) {
      00226F 78 24            [12]  859 	mov	r0,#_x
      002271 E4               [12]  860 	clr	a
      002272 F6               [12]  861 	mov	@r0,a
      002273 08               [12]  862 	inc	r0
      002274 F6               [12]  863 	mov	@r0,a
                                    864 ;	life.c:118: while (1) {
      002275                        865 00168$:
                                    866 ;	life.c:119: c = getchar();
      002275 C0 05            [24]  867 	push	ar5
      002277 C0 04            [24]  868 	push	ar4
      002279 12 2B 03         [24]  869 	lcall	_getchar
      00227C AA 82            [24]  870 	mov	r2,dpl
      00227E AB 83            [24]  871 	mov	r3,dph
      002280 D0 04            [24]  872 	pop	ar4
      002282 D0 05            [24]  873 	pop	ar5
      002284 E5 10            [12]  874 	mov	a,_bp
      002286 24 0A            [12]  875 	add	a,#0x0a
      002288 F8               [12]  876 	mov	r0,a
      002289 A6 02            [24]  877 	mov	@r0,ar2
      00228B 08               [12]  878 	inc	r0
      00228C A6 03            [24]  879 	mov	@r0,ar3
                                    880 ;	life.c:120: if (c == (int)'0') {
      00228E E5 10            [12]  881 	mov	a,_bp
      002290 24 0A            [12]  882 	add	a,#0x0a
      002292 F8               [12]  883 	mov	r0,a
      002293 B6 30 23         [24]  884 	cjne	@r0,#0x30,00166$
      002296 08               [12]  885 	inc	r0
      002297 B6 00 1F         [24]  886 	cjne	@r0,#0x00,00166$
                                    887 ;	life.c:121: iu[y + x] = 0;
      00229A 78 26            [12]  888 	mov	r0,#_y
      00229C 79 24            [12]  889 	mov	r1,#_x
      00229E E7               [12]  890 	mov	a,@r1
      00229F 26               [12]  891 	add	a,@r0
      0022A0 FA               [12]  892 	mov	r2,a
      0022A1 09               [12]  893 	inc	r1
      0022A2 E7               [12]  894 	mov	a,@r1
      0022A3 08               [12]  895 	inc	r0
      0022A4 36               [12]  896 	addc	a,@r0
      0022A5 FB               [12]  897 	mov	r3,a
      0022A6 EA               [12]  898 	mov	a,r2
      0022A7 24 00            [12]  899 	add	a,#_iu
      0022A9 F5 82            [12]  900 	mov	dpl,a
      0022AB EB               [12]  901 	mov	a,r3
      0022AC 34 40            [12]  902 	addc	a,#(_iu >> 8)
      0022AE F5 83            [12]  903 	mov	dph,a
      0022B0 E4               [12]  904 	clr	a
      0022B1 F0               [24]  905 	movx	@dptr,a
                                    906 ;	life.c:122: nbits++;
      0022B2 0C               [12]  907 	inc	r4
                                    908 ;	life.c:123: break;
      0022B3 BC 00 4E         [24]  909 	cjne	r4,#0x00,00171$
      0022B6 0D               [12]  910 	inc	r5
      0022B7 80 4B            [24]  911 	sjmp	00171$
      0022B9                        912 00166$:
                                    913 ;	life.c:124: } else if (c == (int)'1') {
      0022B9 E5 10            [12]  914 	mov	a,_bp
      0022BB 24 0A            [12]  915 	add	a,#0x0a
      0022BD F8               [12]  916 	mov	r0,a
      0022BE B6 31 24         [24]  917 	cjne	@r0,#0x31,00164$
      0022C1 08               [12]  918 	inc	r0
      0022C2 B6 00 20         [24]  919 	cjne	@r0,#0x00,00164$
                                    920 ;	life.c:125: iu[y + x] = 1;
      0022C5 78 26            [12]  921 	mov	r0,#_y
      0022C7 79 24            [12]  922 	mov	r1,#_x
      0022C9 E7               [12]  923 	mov	a,@r1
      0022CA 26               [12]  924 	add	a,@r0
      0022CB FA               [12]  925 	mov	r2,a
      0022CC 09               [12]  926 	inc	r1
      0022CD E7               [12]  927 	mov	a,@r1
      0022CE 08               [12]  928 	inc	r0
      0022CF 36               [12]  929 	addc	a,@r0
      0022D0 FB               [12]  930 	mov	r3,a
      0022D1 EA               [12]  931 	mov	a,r2
      0022D2 24 00            [12]  932 	add	a,#_iu
      0022D4 F5 82            [12]  933 	mov	dpl,a
      0022D6 EB               [12]  934 	mov	a,r3
      0022D7 34 40            [12]  935 	addc	a,#(_iu >> 8)
      0022D9 F5 83            [12]  936 	mov	dph,a
      0022DB 74 01            [12]  937 	mov	a,#0x01
      0022DD F0               [24]  938 	movx	@dptr,a
                                    939 ;	life.c:126: nbits++;
      0022DE 0C               [12]  940 	inc	r4
                                    941 ;	life.c:127: break;
      0022DF BC 00 22         [24]  942 	cjne	r4,#0x00,00171$
      0022E2 0D               [12]  943 	inc	r5
      0022E3 80 1F            [24]  944 	sjmp	00171$
      0022E5                        945 00164$:
                                    946 ;	life.c:128: } else if (c == (int)'~') goto br_inner;
      0022E5 E5 10            [12]  947 	mov	a,_bp
      0022E7 24 0A            [12]  948 	add	a,#0x0a
      0022E9 F8               [12]  949 	mov	r0,a
      0022EA B6 7E 06         [24]  950 	cjne	@r0,#0x7e,00478$
      0022ED 08               [12]  951 	inc	r0
      0022EE B6 00 02         [24]  952 	cjne	@r0,#0x00,00478$
      0022F1 80 2A            [24]  953 	sjmp	00223$
      0022F3                        954 00478$:
                                    955 ;	life.c:129: else if (c == (int)'#') goto out;
      0022F3 E5 10            [12]  956 	mov	a,_bp
      0022F5 24 0A            [12]  957 	add	a,#0x0a
      0022F7 F8               [12]  958 	mov	r0,a
      0022F8 B6 23 06         [24]  959 	cjne	@r0,#0x23,00479$
      0022FB 08               [12]  960 	inc	r0
      0022FC B6 00 02         [24]  961 	cjne	@r0,#0x00,00479$
      0022FF 80 29            [24]  962 	sjmp	00181$
      002301                        963 00479$:
      002301 02 22 75         [24]  964 	ljmp	00168$
                                    965 ;	life.c:133: break;
      002304                        966 00171$:
                                    967 ;	life.c:117: for (x = 0; x < W; x++) {
      002304 78 24            [12]  968 	mov	r0,#_x
      002306 06               [12]  969 	inc	@r0
      002307 B6 00 02         [24]  970 	cjne	@r0,#0x00,00480$
      00230A 08               [12]  971 	inc	r0
      00230B 06               [12]  972 	inc	@r0
      00230C                        973 00480$:
      00230C 78 24            [12]  974 	mov	r0,#_x
      00230E C3               [12]  975 	clr	c
      00230F E6               [12]  976 	mov	a,@r0
      002310 94 30            [12]  977 	subb	a,#0x30
      002312 08               [12]  978 	inc	r0
      002313 E6               [12]  979 	mov	a,@r0
      002314 64 80            [12]  980 	xrl	a,#0x80
      002316 94 80            [12]  981 	subb	a,#0x80
      002318 50 03            [24]  982 	jnc	00481$
      00231A 02 22 75         [24]  983 	ljmp	00168$
      00231D                        984 00481$:
      00231D                        985 00223$:
                                    986 ;	life.c:116: for (nbits = 0, y = 0; y < (H * W); y += W) {
      00231D 78 26            [12]  987 	mov	r0,#_y
      00231F 74 30            [12]  988 	mov	a,#0x30
      002321 26               [12]  989 	add	a,@r0
      002322 F6               [12]  990 	mov	@r0,a
      002323 E4               [12]  991 	clr	a
      002324 08               [12]  992 	inc	r0
      002325 36               [12]  993 	addc	a,@r0
      002326 F6               [12]  994 	mov	@r0,a
      002327 02 22 61         [24]  995 	ljmp	00222$
                                    996 ;	life.c:137: out:
      00232A                        997 00181$:
                                    998 ;	life.c:138: if (c != (int)'#')
      00232A E5 10            [12]  999 	mov	a,_bp
      00232C 24 0A            [12] 1000 	add	a,#0x0a
      00232E F8               [12] 1001 	mov	r0,a
      00232F B6 23 06         [24] 1002 	cjne	@r0,#0x23,00482$
      002332 08               [12] 1003 	inc	r0
      002333 B6 00 02         [24] 1004 	cjne	@r0,#0x00,00482$
      002336 80 25            [24] 1005 	sjmp	00180$
      002338                       1006 00482$:
                                   1007 ;	life.c:139: while (1) {
      002338                       1008 00177$:
                                   1009 ;	life.c:140: c = getchar();
      002338 C0 05            [24] 1010 	push	ar5
      00233A C0 04            [24] 1011 	push	ar4
      00233C 12 2B 03         [24] 1012 	lcall	_getchar
      00233F AA 82            [24] 1013 	mov	r2,dpl
      002341 AB 83            [24] 1014 	mov	r3,dph
      002343 D0 04            [24] 1015 	pop	ar4
      002345 D0 05            [24] 1016 	pop	ar5
      002347 E5 10            [12] 1017 	mov	a,_bp
      002349 24 0A            [12] 1018 	add	a,#0x0a
      00234B F8               [12] 1019 	mov	r0,a
      00234C A6 02            [24] 1020 	mov	@r0,ar2
      00234E 08               [12] 1021 	inc	r0
      00234F A6 03            [24] 1022 	mov	@r0,ar3
                                   1023 ;	life.c:141: if (c == (int)'#') break;
      002351 E5 10            [12] 1024 	mov	a,_bp
      002353 24 0A            [12] 1025 	add	a,#0x0a
      002355 F8               [12] 1026 	mov	r0,a
      002356 B6 23 DF         [24] 1027 	cjne	@r0,#0x23,00177$
      002359 08               [12] 1028 	inc	r0
      00235A B6 00 DB         [24] 1029 	cjne	@r0,#0x00,00177$
      00235D                       1030 00180$:
                                   1031 ;	life.c:143: print16x(nbits);
      00235D 8C 82            [24] 1032 	mov	dpl,r4
      00235F 8D 83            [24] 1033 	mov	dph,r5
      002361 12 2C 54         [24] 1034 	lcall	_print16x
                                   1035 ;	life.c:144: printstr(">\r\n");
      002364 90 31 2C         [24] 1036 	mov	dptr,#___str_7
      002367 75 F0 80         [24] 1037 	mov	b,#0x80
      00236A 12 2B 2A         [24] 1038 	lcall	_printstr
                                   1039 ;	life.c:237: if (c == (int)'L') loadiu();
      00236D 80 79            [24] 1040 	sjmp	00105$
      00236F                       1041 00104$:
                                   1042 ;	life.c:238: else if (c == (int)'R') loadriu();
      00236F BE 52 76         [24] 1043 	cjne	r6,#0x52,00105$
      002372 BF 00 73         [24] 1044 	cjne	r7,#0x00,00105$
                                   1045 ;	life.c:150: printstr("RANDOM");
      002375 90 31 30         [24] 1046 	mov	dptr,#___str_8
      002378 75 F0 80         [24] 1047 	mov	b,#0x80
      00237B 12 2B 2A         [24] 1048 	lcall	_printstr
                                   1049 ;	life.c:152: for (y = 0; y < (H * W); y += W)
      00237E 78 26            [12] 1050 	mov	r0,#_y
      002380 E4               [12] 1051 	clr	a
      002381 F6               [12] 1052 	mov	@r0,a
      002382 08               [12] 1053 	inc	r0
      002383 F6               [12] 1054 	mov	@r0,a
      002384                       1055 00226$:
                                   1056 ;	life.c:153: for (x = 0; x < W; x++)
      002384 78 24            [12] 1057 	mov	r0,#_x
      002386 E4               [12] 1058 	clr	a
      002387 F6               [12] 1059 	mov	@r0,a
      002388 08               [12] 1060 	inc	r0
      002389 F6               [12] 1061 	mov	@r0,a
      00238A                       1062 00224$:
                                   1063 ;	life.c:154: iu[y + x] = rand() & 1;
      00238A 78 26            [12] 1064 	mov	r0,#_y
      00238C 79 24            [12] 1065 	mov	r1,#_x
      00238E E7               [12] 1066 	mov	a,@r1
      00238F 26               [12] 1067 	add	a,@r0
      002390 FC               [12] 1068 	mov	r4,a
      002391 09               [12] 1069 	inc	r1
      002392 E7               [12] 1070 	mov	a,@r1
      002393 08               [12] 1071 	inc	r0
      002394 36               [12] 1072 	addc	a,@r0
      002395 FD               [12] 1073 	mov	r5,a
      002396 EC               [12] 1074 	mov	a,r4
      002397 24 00            [12] 1075 	add	a,#_iu
      002399 FC               [12] 1076 	mov	r4,a
      00239A ED               [12] 1077 	mov	a,r5
      00239B 34 40            [12] 1078 	addc	a,#(_iu >> 8)
      00239D FD               [12] 1079 	mov	r5,a
      00239E C0 05            [24] 1080 	push	ar5
      0023A0 C0 04            [24] 1081 	push	ar4
      0023A2 12 2A 1C         [24] 1082 	lcall	_rand
      0023A5 AA 82            [24] 1083 	mov	r2,dpl
      0023A7 D0 04            [24] 1084 	pop	ar4
      0023A9 D0 05            [24] 1085 	pop	ar5
      0023AB 53 02 01         [24] 1086 	anl	ar2,#0x01
      0023AE 8C 82            [24] 1087 	mov	dpl,r4
      0023B0 8D 83            [24] 1088 	mov	dph,r5
      0023B2 EA               [12] 1089 	mov	a,r2
      0023B3 F0               [24] 1090 	movx	@dptr,a
                                   1091 ;	life.c:153: for (x = 0; x < W; x++)
      0023B4 78 24            [12] 1092 	mov	r0,#_x
      0023B6 06               [12] 1093 	inc	@r0
      0023B7 B6 00 02         [24] 1094 	cjne	@r0,#0x00,00487$
      0023BA 08               [12] 1095 	inc	r0
      0023BB 06               [12] 1096 	inc	@r0
      0023BC                       1097 00487$:
      0023BC 78 24            [12] 1098 	mov	r0,#_x
      0023BE C3               [12] 1099 	clr	c
      0023BF E6               [12] 1100 	mov	a,@r0
      0023C0 94 30            [12] 1101 	subb	a,#0x30
      0023C2 08               [12] 1102 	inc	r0
      0023C3 E6               [12] 1103 	mov	a,@r0
      0023C4 64 80            [12] 1104 	xrl	a,#0x80
      0023C6 94 80            [12] 1105 	subb	a,#0x80
      0023C8 40 C0            [24] 1106 	jc	00224$
                                   1107 ;	life.c:152: for (y = 0; y < (H * W); y += W)
      0023CA 78 26            [12] 1108 	mov	r0,#_y
      0023CC 74 30            [12] 1109 	mov	a,#0x30
      0023CE 26               [12] 1110 	add	a,@r0
      0023CF F6               [12] 1111 	mov	@r0,a
      0023D0 E4               [12] 1112 	clr	a
      0023D1 08               [12] 1113 	inc	r0
      0023D2 36               [12] 1114 	addc	a,@r0
      0023D3 F6               [12] 1115 	mov	@r0,a
      0023D4 78 26            [12] 1116 	mov	r0,#_y
      0023D6 C3               [12] 1117 	clr	c
      0023D7 08               [12] 1118 	inc	r0
      0023D8 E6               [12] 1119 	mov	a,@r0
      0023D9 64 80            [12] 1120 	xrl	a,#0x80
      0023DB 94 A4            [12] 1121 	subb	a,#0xa4
      0023DD 40 A5            [24] 1122 	jc	00226$
                                   1123 ;	life.c:156: printstr("\r\n");
      0023DF 90 31 0C         [24] 1124 	mov	dptr,#___str_3
      0023E2 75 F0 80         [24] 1125 	mov	b,#0x80
      0023E5 12 2B 2A         [24] 1126 	lcall	_printstr
                                   1127 ;	life.c:238: else if (c == (int)'R') loadriu();
      0023E8                       1128 00105$:
                                   1129 ;	life.c:105: memset(u, 0, sizeof (u));
      0023E8 E4               [12] 1130 	clr	a
      0023E9 C0 E0            [24] 1131 	push	acc
      0023EB 74 24            [12] 1132 	mov	a,#0x24
      0023ED C0 E0            [24] 1133 	push	acc
      0023EF E4               [12] 1134 	clr	a
      0023F0 C0 E0            [24] 1135 	push	acc
      0023F2 90 88 00         [24] 1136 	mov	dptr,#_u
      0023F5 75 F0 00         [24] 1137 	mov	b,#0x00
      0023F8 12 2F 40         [24] 1138 	lcall	_memset
      0023FB 15 81            [12] 1139 	dec	sp
      0023FD 15 81            [12] 1140 	dec	sp
      0023FF 15 81            [12] 1141 	dec	sp
                                   1142 ;	life.c:106: memset(pu, 0, sizeof (pu));
      002401 E4               [12] 1143 	clr	a
      002402 C0 E0            [24] 1144 	push	acc
      002404 74 24            [12] 1145 	mov	a,#0x24
      002406 C0 E0            [24] 1146 	push	acc
      002408 E4               [12] 1147 	clr	a
      002409 C0 E0            [24] 1148 	push	acc
      00240B 90 64 00         [24] 1149 	mov	dptr,#_pu
      00240E 75 F0 00         [24] 1150 	mov	b,#0x00
      002411 12 2F 40         [24] 1151 	lcall	_memset
      002414 15 81            [12] 1152 	dec	sp
      002416 15 81            [12] 1153 	dec	sp
      002418 15 81            [12] 1154 	dec	sp
                                   1155 ;	life.c:61: gen = 0ul;
      00241A 78 2B            [12] 1156 	mov	r0,#_gen
      00241C E4               [12] 1157 	clr	a
      00241D F6               [12] 1158 	mov	@r0,a
      00241E 08               [12] 1159 	inc	r0
      00241F F6               [12] 1160 	mov	@r0,a
      002420 08               [12] 1161 	inc	r0
      002421 F6               [12] 1162 	mov	@r0,a
      002422 08               [12] 1163 	inc	r0
      002423 F6               [12] 1164 	mov	@r0,a
                                   1165 ;	life.c:62: genc2 = 0ul;
      002424 78 2F            [12] 1166 	mov	r0,#_genc2
      002426 F6               [12] 1167 	mov	@r0,a
      002427 08               [12] 1168 	inc	r0
      002428 F6               [12] 1169 	mov	@r0,a
      002429 08               [12] 1170 	inc	r0
      00242A F6               [12] 1171 	mov	@r0,a
      00242B 08               [12] 1172 	inc	r0
      00242C F6               [12] 1173 	mov	@r0,a
                                   1174 ;	life.c:63: c2set = 0;
      00242D 78 33            [12] 1175 	mov	r0,#_c2set
      00242F 76 00            [12] 1176 	mov	@r0,#0x00
                                   1177 ;	life.c:241: memcpy(u, iu, sizeof (iu));
      002431 C0 E0            [24] 1178 	push	acc
      002433 74 24            [12] 1179 	mov	a,#0x24
      002435 C0 E0            [24] 1180 	push	acc
      002437 74 00            [12] 1181 	mov	a,#_iu
      002439 C0 E0            [24] 1182 	push	acc
      00243B 74 40            [12] 1183 	mov	a,#(_iu >> 8)
      00243D C0 E0            [24] 1184 	push	acc
      00243F E4               [12] 1185 	clr	a
      002440 C0 E0            [24] 1186 	push	acc
      002442 90 88 00         [24] 1187 	mov	dptr,#_u
      002445 75 F0 00         [24] 1188 	mov	b,#0x00
      002448 12 2E AD         [24] 1189 	lcall	___memcpy
      00244B E5 81            [12] 1190 	mov	a,sp
      00244D 24 FB            [12] 1191 	add	a,#0xfb
      00244F F5 81            [12] 1192 	mov	sp,a
                                   1193 ;	life.c:242: show(PRUNI, u);
      002451 74 00            [12] 1194 	mov	a,#_u
      002453 C0 E0            [24] 1195 	push	acc
      002455 74 88            [12] 1196 	mov	a,#(_u >> 8)
      002457 C0 E0            [24] 1197 	push	acc
      002459 E4               [12] 1198 	clr	a
      00245A C0 E0            [24] 1199 	push	acc
      00245C 75 82 04         [24] 1200 	mov	dpl,#0x04
      00245F 12 20 9F         [24] 1201 	lcall	_show
      002462 15 81            [12] 1202 	dec	sp
      002464 15 81            [12] 1203 	dec	sp
      002466 15 81            [12] 1204 	dec	sp
      002468 02 22 04         [24] 1205 	ljmp	00127$
      00246B                       1206 00118$:
                                   1207 ;	life.c:243: } else if (c == (int)'O') show(PRUNI, iu);
      00246B BE 4F 1D         [24] 1208 	cjne	r6,#0x4f,00115$
      00246E BF 00 1A         [24] 1209 	cjne	r7,#0x00,00115$
      002471 74 00            [12] 1210 	mov	a,#_iu
      002473 C0 E0            [24] 1211 	push	acc
      002475 74 40            [12] 1212 	mov	a,#(_iu >> 8)
      002477 C0 E0            [24] 1213 	push	acc
      002479 E4               [12] 1214 	clr	a
      00247A C0 E0            [24] 1215 	push	acc
      00247C 75 82 04         [24] 1216 	mov	dpl,#0x04
      00247F 12 20 9F         [24] 1217 	lcall	_show
      002482 15 81            [12] 1218 	dec	sp
      002484 15 81            [12] 1219 	dec	sp
      002486 15 81            [12] 1220 	dec	sp
      002488 02 22 04         [24] 1221 	ljmp	00127$
      00248B                       1222 00115$:
                                   1223 ;	life.c:244: else if (c == (int)'P') show(PRHDR | PRUNI, u);
      00248B BE 50 1D         [24] 1224 	cjne	r6,#0x50,00112$
      00248E BF 00 1A         [24] 1225 	cjne	r7,#0x00,00112$
      002491 74 00            [12] 1226 	mov	a,#_u
      002493 C0 E0            [24] 1227 	push	acc
      002495 74 88            [12] 1228 	mov	a,#(_u >> 8)
      002497 C0 E0            [24] 1229 	push	acc
      002499 E4               [12] 1230 	clr	a
      00249A C0 E0            [24] 1231 	push	acc
      00249C 75 82 06         [24] 1232 	mov	dpl,#0x06
      00249F 12 20 9F         [24] 1233 	lcall	_show
      0024A2 15 81            [12] 1234 	dec	sp
      0024A4 15 81            [12] 1235 	dec	sp
      0024A6 15 81            [12] 1236 	dec	sp
      0024A8 02 22 04         [24] 1237 	ljmp	00127$
      0024AB                       1238 00112$:
                                   1239 ;	life.c:245: else if (c == (int)'U') {
      0024AB BE 55 3B         [24] 1240 	cjne	r6,#0x55,00109$
      0024AE BF 00 38         [24] 1241 	cjne	r7,#0x00,00109$
                                   1242 ;	life.c:246: pruni = !pruni;
      0024B1 78 34            [12] 1243 	mov	r0,#_pruni
      0024B3 E6               [12] 1244 	mov	a,@r0
      0024B4 B4 01 00         [24] 1245 	cjne	a,#0x01,00496$
      0024B7                       1246 00496$:
      0024B7 92 00            [24] 1247 	mov	b0,c
      0024B9 78 34            [12] 1248 	mov	r0,#_pruni
      0024BB E4               [12] 1249 	clr	a
      0024BC 33               [12] 1250 	rlc	a
      0024BD F6               [12] 1251 	mov	@r0,a
                                   1252 ;	life.c:247: printstr("U");
      0024BE 90 31 5A         [24] 1253 	mov	dptr,#___str_11
      0024C1 75 F0 80         [24] 1254 	mov	b,#0x80
      0024C4 12 2B 2A         [24] 1255 	lcall	_printstr
                                   1256 ;	life.c:248: putchar(pruni ? (int)'1' : (int)'0');
      0024C7 78 34            [12] 1257 	mov	r0,#_pruni
      0024C9 E6               [12] 1258 	mov	a,@r0
      0024CA 60 06            [24] 1259 	jz	00240$
      0024CC 7C 31            [12] 1260 	mov	r4,#0x31
      0024CE 7D 00            [12] 1261 	mov	r5,#0x00
      0024D0 80 04            [24] 1262 	sjmp	00241$
      0024D2                       1263 00240$:
      0024D2 7C 30            [12] 1264 	mov	r4,#0x30
      0024D4 7D 00            [12] 1265 	mov	r5,#0x00
      0024D6                       1266 00241$:
      0024D6 8C 82            [24] 1267 	mov	dpl,r4
      0024D8 8D 83            [24] 1268 	mov	dph,r5
      0024DA 12 2A F9         [24] 1269 	lcall	_putchar
                                   1270 ;	life.c:249: printstr("\r\n");
      0024DD 90 31 0C         [24] 1271 	mov	dptr,#___str_3
      0024E0 75 F0 80         [24] 1272 	mov	b,#0x80
      0024E3 12 2B 2A         [24] 1273 	lcall	_printstr
      0024E6 02 22 04         [24] 1274 	ljmp	00127$
      0024E9                       1275 00109$:
                                   1276 ;	life.c:250: } else if (c == (int)'S') break;
      0024E9 BE 53 05         [24] 1277 	cjne	r6,#0x53,00498$
      0024EC BF 00 02         [24] 1278 	cjne	r7,#0x00,00498$
      0024EF 80 03            [24] 1279 	sjmp	00499$
      0024F1                       1280 00498$:
      0024F1 02 22 04         [24] 1281 	ljmp	00127$
      0024F4                       1282 00499$:
                                   1283 ;	life.c:61: gen = 0ul;
      0024F4 78 2B            [12] 1284 	mov	r0,#_gen
      0024F6 E4               [12] 1285 	clr	a
      0024F7 F6               [12] 1286 	mov	@r0,a
      0024F8 08               [12] 1287 	inc	r0
      0024F9 F6               [12] 1288 	mov	@r0,a
      0024FA 08               [12] 1289 	inc	r0
      0024FB F6               [12] 1290 	mov	@r0,a
      0024FC 08               [12] 1291 	inc	r0
      0024FD F6               [12] 1292 	mov	@r0,a
                                   1293 ;	life.c:62: genc2 = 0ul;
      0024FE 78 2F            [12] 1294 	mov	r0,#_genc2
      002500 F6               [12] 1295 	mov	@r0,a
      002501 08               [12] 1296 	inc	r0
      002502 F6               [12] 1297 	mov	@r0,a
      002503 08               [12] 1298 	inc	r0
      002504 F6               [12] 1299 	mov	@r0,a
      002505 08               [12] 1300 	inc	r0
      002506 F6               [12] 1301 	mov	@r0,a
                                   1302 ;	life.c:63: c2set = 0;
      002507 78 33            [12] 1303 	mov	r0,#_c2set
      002509 76 00            [12] 1304 	mov	@r0,#0x00
                                   1305 ;	life.c:255: for (i1 = 0; !i0 && !i1; ) {
      00250B 78 22            [12] 1306 	mov	r0,#_i1
      00250D 76 00            [12] 1307 	mov	@r0,#0x00
      00250F                       1308 00234$:
      00250F 78 21            [12] 1309 	mov	r0,#_i0
      002511 E6               [12] 1310 	mov	a,@r0
      002512 60 03            [24] 1311 	jz	00500$
      002514 02 29 F2         [24] 1312 	ljmp	00150$
      002517                       1313 00500$:
      002517 78 22            [12] 1314 	mov	r0,#_i1
      002519 E6               [12] 1315 	mov	a,@r0
      00251A 60 03            [24] 1316 	jz	00501$
      00251C 02 29 F2         [24] 1317 	ljmp	00150$
      00251F                       1318 00501$:
                                   1319 ;	life.c:256: if (pruni) show(PRCLR | PRHDR | PRUNI, u);
      00251F 78 34            [12] 1320 	mov	r0,#_pruni
      002521 E6               [12] 1321 	mov	a,@r0
      002522 60 19            [24] 1322 	jz	00130$
      002524 74 00            [12] 1323 	mov	a,#_u
      002526 C0 E0            [24] 1324 	push	acc
      002528 74 88            [12] 1325 	mov	a,#(_u >> 8)
      00252A C0 E0            [24] 1326 	push	acc
      00252C E4               [12] 1327 	clr	a
      00252D C0 E0            [24] 1328 	push	acc
      00252F 75 82 07         [24] 1329 	mov	dpl,#0x07
      002532 12 20 9F         [24] 1330 	lcall	_show
      002535 15 81            [12] 1331 	dec	sp
      002537 15 81            [12] 1332 	dec	sp
      002539 15 81            [12] 1333 	dec	sp
      00253B 80 17            [24] 1334 	sjmp	00131$
      00253D                       1335 00130$:
                                   1336 ;	life.c:257: else show(PRHDR, u);
      00253D 74 00            [12] 1337 	mov	a,#_u
      00253F C0 E0            [24] 1338 	push	acc
      002541 74 88            [12] 1339 	mov	a,#(_u >> 8)
      002543 C0 E0            [24] 1340 	push	acc
      002545 E4               [12] 1341 	clr	a
      002546 C0 E0            [24] 1342 	push	acc
      002548 75 82 02         [24] 1343 	mov	dpl,#0x02
      00254B 12 20 9F         [24] 1344 	lcall	_show
      00254E 15 81            [12] 1345 	dec	sp
      002550 15 81            [12] 1346 	dec	sp
      002552 15 81            [12] 1347 	dec	sp
      002554                       1348 00131$:
                                   1349 ;	life.c:69: gen++;
      002554 78 2B            [12] 1350 	mov	r0,#_gen
      002556 06               [12] 1351 	inc	@r0
      002557 B6 00 0C         [24] 1352 	cjne	@r0,#0x00,00503$
      00255A 08               [12] 1353 	inc	r0
      00255B 06               [12] 1354 	inc	@r0
      00255C B6 00 07         [24] 1355 	cjne	@r0,#0x00,00503$
      00255F 08               [12] 1356 	inc	r0
      002560 06               [12] 1357 	inc	@r0
      002561 B6 00 02         [24] 1358 	cjne	@r0,#0x00,00503$
      002564 08               [12] 1359 	inc	r0
      002565 06               [12] 1360 	inc	@r0
      002566                       1361 00503$:
                                   1362 ;	life.c:162: fixed = 0;
      002566 78 29            [12] 1363 	mov	r0,#_fixed
      002568 76 00            [12] 1364 	mov	@r0,#0x00
                                   1365 ;	life.c:163: cycle2 = 0;
      00256A 78 2A            [12] 1366 	mov	r0,#_cycle2
      00256C 76 00            [12] 1367 	mov	@r0,#0x00
                                   1368 ;	life.c:165: OE76 = OE76_0;
      00256E 78 23            [12] 1369 	mov	r0,#_OE76
      002570 76 3F            [12] 1370 	mov	@r0,#0x3f
                                   1371 ;	life.c:166: flashOE();
      002572 12 20 8D         [24] 1372 	lcall	_flashOE
                                   1373 ;	life.c:168: for (y = 0; y < H; y++) {
      002575 78 26            [12] 1374 	mov	r0,#_y
      002577 E4               [12] 1375 	clr	a
      002578 F6               [12] 1376 	mov	@r0,a
      002579 08               [12] 1377 	inc	r0
      00257A F6               [12] 1378 	mov	@r0,a
      00257B                       1379 00230$:
                                   1380 ;	life.c:169: OE76 = OE76_0 | ((y & 0x0003u) << 6);
      00257B 78 26            [12] 1381 	mov	r0,#_y
      00257D 86 07            [24] 1382 	mov	ar7,@r0
      00257F 53 07 03         [24] 1383 	anl	ar7,#0x03
      002582 EF               [12] 1384 	mov	a,r7
      002583 03               [12] 1385 	rr	a
      002584 03               [12] 1386 	rr	a
      002585 54 C0            [12] 1387 	anl	a,#0xc0
      002587 FF               [12] 1388 	mov	r7,a
      002588 78 23            [12] 1389 	mov	r0,#_OE76
      00258A 74 3F            [12] 1390 	mov	a,#0x3f
      00258C 4F               [12] 1391 	orl	a,r7
      00258D F6               [12] 1392 	mov	@r0,a
                                   1393 ;	life.c:170: flashOE();
      00258E 12 20 8D         [24] 1394 	lcall	_flashOE
                                   1395 ;	life.c:171: for (x = 0; x < W; x++) {
      002591 78 24            [12] 1396 	mov	r0,#_x
      002593 E4               [12] 1397 	clr	a
      002594 F6               [12] 1398 	mov	@r0,a
      002595 08               [12] 1399 	inc	r0
      002596 F6               [12] 1400 	mov	@r0,a
      002597                       1401 00228$:
                                   1402 ;	life.c:172: n = -u[A2D(W, y, x)];
      002597 78 26            [12] 1403 	mov	r0,#_y
      002599 E6               [12] 1404 	mov	a,@r0
      00259A C0 E0            [24] 1405 	push	acc
      00259C 08               [12] 1406 	inc	r0
      00259D E6               [12] 1407 	mov	a,@r0
      00259E C0 E0            [24] 1408 	push	acc
      0025A0 90 00 30         [24] 1409 	mov	dptr,#0x0030
      0025A3 12 2E 0F         [24] 1410 	lcall	__mulint
      0025A6 C8               [12] 1411 	xch	a,r0
      0025A7 E5 10            [12] 1412 	mov	a,_bp
      0025A9 24 04            [12] 1413 	add	a,#0x04
      0025AB C8               [12] 1414 	xch	a,r0
      0025AC A6 82            [24] 1415 	mov	@r0,dpl
      0025AE 08               [12] 1416 	inc	r0
      0025AF A6 83            [24] 1417 	mov	@r0,dph
      0025B1 15 81            [12] 1418 	dec	sp
      0025B3 15 81            [12] 1419 	dec	sp
      0025B5 E5 10            [12] 1420 	mov	a,_bp
      0025B7 24 04            [12] 1421 	add	a,#0x04
      0025B9 F8               [12] 1422 	mov	r0,a
      0025BA 79 24            [12] 1423 	mov	r1,#_x
      0025BC E7               [12] 1424 	mov	a,@r1
      0025BD 26               [12] 1425 	add	a,@r0
      0025BE C0 E0            [24] 1426 	push	acc
      0025C0 09               [12] 1427 	inc	r1
      0025C1 E7               [12] 1428 	mov	a,@r1
      0025C2 08               [12] 1429 	inc	r0
      0025C3 36               [12] 1430 	addc	a,@r0
      0025C4 C0 E0            [24] 1431 	push	acc
      0025C6 E5 10            [12] 1432 	mov	a,_bp
      0025C8 24 03            [12] 1433 	add	a,#0x03
      0025CA F8               [12] 1434 	mov	r0,a
      0025CB D0 E0            [24] 1435 	pop	acc
      0025CD F6               [12] 1436 	mov	@r0,a
      0025CE 18               [12] 1437 	dec	r0
      0025CF D0 E0            [24] 1438 	pop	acc
      0025D1 F6               [12] 1439 	mov	@r0,a
      0025D2 A8 10            [24] 1440 	mov	r0,_bp
      0025D4 08               [12] 1441 	inc	r0
      0025D5 08               [12] 1442 	inc	r0
      0025D6 E6               [12] 1443 	mov	a,@r0
      0025D7 24 00            [12] 1444 	add	a,#_u
      0025D9 F5 82            [12] 1445 	mov	dpl,a
      0025DB 08               [12] 1446 	inc	r0
      0025DC E6               [12] 1447 	mov	a,@r0
      0025DD 34 88            [12] 1448 	addc	a,#(_u >> 8)
      0025DF F5 83            [12] 1449 	mov	dph,a
      0025E1 E0               [24] 1450 	movx	a,@dptr
      0025E2 FB               [12] 1451 	mov	r3,a
      0025E3 A8 10            [24] 1452 	mov	r0,_bp
      0025E5 08               [12] 1453 	inc	r0
      0025E6 C3               [12] 1454 	clr	c
      0025E7 E4               [12] 1455 	clr	a
      0025E8 9B               [12] 1456 	subb	a,r3
      0025E9 F6               [12] 1457 	mov	@r0,a
                                   1458 ;	life.c:177: UPDN(-1, -1);
      0025EA 78 26            [12] 1459 	mov	r0,#_y
      0025EC 74 BF            [12] 1460 	mov	a,#0xbf
      0025EE 26               [12] 1461 	add	a,@r0
      0025EF FA               [12] 1462 	mov	r2,a
      0025F0 E4               [12] 1463 	clr	a
      0025F1 08               [12] 1464 	inc	r0
      0025F2 36               [12] 1465 	addc	a,@r0
      0025F3 FB               [12] 1466 	mov	r3,a
      0025F4 74 C0            [12] 1467 	mov	a,#0xc0
      0025F6 C0 E0            [24] 1468 	push	acc
      0025F8 E4               [12] 1469 	clr	a
      0025F9 C0 E0            [24] 1470 	push	acc
      0025FB 8A 82            [24] 1471 	mov	dpl,r2
      0025FD 8B 83            [24] 1472 	mov	dph,r3
      0025FF 12 2F ED         [24] 1473 	lcall	__modsint
      002602 AA 82            [24] 1474 	mov	r2,dpl
      002604 AB 83            [24] 1475 	mov	r3,dph
      002606 15 81            [12] 1476 	dec	sp
      002608 15 81            [12] 1477 	dec	sp
      00260A C0 02            [24] 1478 	push	ar2
      00260C C0 03            [24] 1479 	push	ar3
      00260E 90 00 30         [24] 1480 	mov	dptr,#0x0030
      002611 12 2E 0F         [24] 1481 	lcall	__mulint
      002614 AA 82            [24] 1482 	mov	r2,dpl
      002616 AB 83            [24] 1483 	mov	r3,dph
      002618 15 81            [12] 1484 	dec	sp
      00261A 15 81            [12] 1485 	dec	sp
      00261C 78 24            [12] 1486 	mov	r0,#_x
      00261E 74 2F            [12] 1487 	mov	a,#0x2f
      002620 26               [12] 1488 	add	a,@r0
      002621 FC               [12] 1489 	mov	r4,a
      002622 E4               [12] 1490 	clr	a
      002623 08               [12] 1491 	inc	r0
      002624 36               [12] 1492 	addc	a,@r0
      002625 FD               [12] 1493 	mov	r5,a
      002626 C0 03            [24] 1494 	push	ar3
      002628 C0 02            [24] 1495 	push	ar2
      00262A 74 30            [12] 1496 	mov	a,#0x30
      00262C C0 E0            [24] 1497 	push	acc
      00262E E4               [12] 1498 	clr	a
      00262F C0 E0            [24] 1499 	push	acc
      002631 8C 82            [24] 1500 	mov	dpl,r4
      002633 8D 83            [24] 1501 	mov	dph,r5
      002635 12 2F ED         [24] 1502 	lcall	__modsint
      002638 AC 82            [24] 1503 	mov	r4,dpl
      00263A AD 83            [24] 1504 	mov	r5,dph
      00263C 15 81            [12] 1505 	dec	sp
      00263E 15 81            [12] 1506 	dec	sp
      002640 D0 02            [24] 1507 	pop	ar2
      002642 D0 03            [24] 1508 	pop	ar3
      002644 EC               [12] 1509 	mov	a,r4
      002645 2A               [12] 1510 	add	a,r2
      002646 FE               [12] 1511 	mov	r6,a
      002647 ED               [12] 1512 	mov	a,r5
      002648 3B               [12] 1513 	addc	a,r3
      002649 FF               [12] 1514 	mov	r7,a
      00264A EE               [12] 1515 	mov	a,r6
      00264B 24 00            [12] 1516 	add	a,#_u
      00264D F5 82            [12] 1517 	mov	dpl,a
      00264F EF               [12] 1518 	mov	a,r7
      002650 34 88            [12] 1519 	addc	a,#(_u >> 8)
      002652 F5 83            [12] 1520 	mov	dph,a
      002654 E0               [24] 1521 	movx	a,@dptr
      002655 FF               [12] 1522 	mov	r7,a
      002656 A8 10            [24] 1523 	mov	r0,_bp
      002658 08               [12] 1524 	inc	r0
      002659 EF               [12] 1525 	mov	a,r7
      00265A 26               [12] 1526 	add	a,@r0
      00265B F6               [12] 1527 	mov	@r0,a
                                   1528 ;	life.c:178: UPDN(-1, 0);
      00265C 78 24            [12] 1529 	mov	r0,#_x
      00265E 74 30            [12] 1530 	mov	a,#0x30
      002660 26               [12] 1531 	add	a,@r0
      002661 FE               [12] 1532 	mov	r6,a
      002662 E4               [12] 1533 	clr	a
      002663 08               [12] 1534 	inc	r0
      002664 36               [12] 1535 	addc	a,@r0
      002665 FF               [12] 1536 	mov	r7,a
      002666 C0 05            [24] 1537 	push	ar5
      002668 C0 04            [24] 1538 	push	ar4
      00266A C0 03            [24] 1539 	push	ar3
      00266C C0 02            [24] 1540 	push	ar2
      00266E 74 30            [12] 1541 	mov	a,#0x30
      002670 C0 E0            [24] 1542 	push	acc
      002672 E4               [12] 1543 	clr	a
      002673 C0 E0            [24] 1544 	push	acc
      002675 8E 82            [24] 1545 	mov	dpl,r6
      002677 8F 83            [24] 1546 	mov	dph,r7
      002679 12 2F ED         [24] 1547 	lcall	__modsint
      00267C C8               [12] 1548 	xch	a,r0
      00267D E5 10            [12] 1549 	mov	a,_bp
      00267F 24 06            [12] 1550 	add	a,#0x06
      002681 C8               [12] 1551 	xch	a,r0
      002682 A6 82            [24] 1552 	mov	@r0,dpl
      002684 08               [12] 1553 	inc	r0
      002685 A6 83            [24] 1554 	mov	@r0,dph
      002687 15 81            [12] 1555 	dec	sp
      002689 15 81            [12] 1556 	dec	sp
      00268B D0 02            [24] 1557 	pop	ar2
      00268D D0 03            [24] 1558 	pop	ar3
      00268F E5 10            [12] 1559 	mov	a,_bp
      002691 24 06            [12] 1560 	add	a,#0x06
      002693 F8               [12] 1561 	mov	r0,a
      002694 E6               [12] 1562 	mov	a,@r0
      002695 2A               [12] 1563 	add	a,r2
      002696 FE               [12] 1564 	mov	r6,a
      002697 08               [12] 1565 	inc	r0
      002698 E6               [12] 1566 	mov	a,@r0
      002699 3B               [12] 1567 	addc	a,r3
      00269A FF               [12] 1568 	mov	r7,a
      00269B EE               [12] 1569 	mov	a,r6
      00269C 24 00            [12] 1570 	add	a,#_u
      00269E F5 82            [12] 1571 	mov	dpl,a
      0026A0 EF               [12] 1572 	mov	a,r7
      0026A1 34 88            [12] 1573 	addc	a,#(_u >> 8)
      0026A3 F5 83            [12] 1574 	mov	dph,a
      0026A5 E0               [24] 1575 	movx	a,@dptr
      0026A6 FF               [12] 1576 	mov	r7,a
      0026A7 A8 10            [24] 1577 	mov	r0,_bp
      0026A9 08               [12] 1578 	inc	r0
      0026AA EF               [12] 1579 	mov	a,r7
      0026AB 26               [12] 1580 	add	a,@r0
      0026AC F6               [12] 1581 	mov	@r0,a
                                   1582 ;	life.c:179: UPDN(-1, 1);
      0026AD 78 24            [12] 1583 	mov	r0,#_x
      0026AF 74 31            [12] 1584 	mov	a,#0x31
      0026B1 26               [12] 1585 	add	a,@r0
      0026B2 FE               [12] 1586 	mov	r6,a
      0026B3 E4               [12] 1587 	clr	a
      0026B4 08               [12] 1588 	inc	r0
      0026B5 36               [12] 1589 	addc	a,@r0
      0026B6 FF               [12] 1590 	mov	r7,a
      0026B7 C0 03            [24] 1591 	push	ar3
      0026B9 C0 02            [24] 1592 	push	ar2
      0026BB 74 30            [12] 1593 	mov	a,#0x30
      0026BD C0 E0            [24] 1594 	push	acc
      0026BF E4               [12] 1595 	clr	a
      0026C0 C0 E0            [24] 1596 	push	acc
      0026C2 8E 82            [24] 1597 	mov	dpl,r6
      0026C4 8F 83            [24] 1598 	mov	dph,r7
      0026C6 12 2F ED         [24] 1599 	lcall	__modsint
      0026C9 AE 82            [24] 1600 	mov	r6,dpl
      0026CB AF 83            [24] 1601 	mov	r7,dph
      0026CD 15 81            [12] 1602 	dec	sp
      0026CF 15 81            [12] 1603 	dec	sp
      0026D1 D0 02            [24] 1604 	pop	ar2
      0026D3 D0 03            [24] 1605 	pop	ar3
      0026D5 D0 04            [24] 1606 	pop	ar4
      0026D7 D0 05            [24] 1607 	pop	ar5
      0026D9 EE               [12] 1608 	mov	a,r6
      0026DA 2A               [12] 1609 	add	a,r2
      0026DB FA               [12] 1610 	mov	r2,a
      0026DC EF               [12] 1611 	mov	a,r7
      0026DD 3B               [12] 1612 	addc	a,r3
      0026DE FB               [12] 1613 	mov	r3,a
      0026DF EA               [12] 1614 	mov	a,r2
      0026E0 24 00            [12] 1615 	add	a,#_u
      0026E2 F5 82            [12] 1616 	mov	dpl,a
      0026E4 EB               [12] 1617 	mov	a,r3
      0026E5 34 88            [12] 1618 	addc	a,#(_u >> 8)
      0026E7 F5 83            [12] 1619 	mov	dph,a
      0026E9 E0               [24] 1620 	movx	a,@dptr
      0026EA FB               [12] 1621 	mov	r3,a
      0026EB A8 10            [24] 1622 	mov	r0,_bp
      0026ED 08               [12] 1623 	inc	r0
      0026EE EB               [12] 1624 	mov	a,r3
      0026EF 26               [12] 1625 	add	a,@r0
      0026F0 F6               [12] 1626 	mov	@r0,a
                                   1627 ;	life.c:180: UPDN(0, -1);
      0026F1 78 26            [12] 1628 	mov	r0,#_y
      0026F3 74 C0            [12] 1629 	mov	a,#0xc0
      0026F5 26               [12] 1630 	add	a,@r0
      0026F6 FA               [12] 1631 	mov	r2,a
      0026F7 E4               [12] 1632 	clr	a
      0026F8 08               [12] 1633 	inc	r0
      0026F9 36               [12] 1634 	addc	a,@r0
      0026FA FB               [12] 1635 	mov	r3,a
      0026FB C0 07            [24] 1636 	push	ar7
      0026FD C0 06            [24] 1637 	push	ar6
      0026FF C0 05            [24] 1638 	push	ar5
      002701 C0 04            [24] 1639 	push	ar4
      002703 74 C0            [12] 1640 	mov	a,#0xc0
      002705 C0 E0            [24] 1641 	push	acc
      002707 E4               [12] 1642 	clr	a
      002708 C0 E0            [24] 1643 	push	acc
      00270A 8A 82            [24] 1644 	mov	dpl,r2
      00270C 8B 83            [24] 1645 	mov	dph,r3
      00270E 12 2F ED         [24] 1646 	lcall	__modsint
      002711 AA 82            [24] 1647 	mov	r2,dpl
      002713 AB 83            [24] 1648 	mov	r3,dph
      002715 15 81            [12] 1649 	dec	sp
      002717 15 81            [12] 1650 	dec	sp
      002719 C0 02            [24] 1651 	push	ar2
      00271B C0 03            [24] 1652 	push	ar3
      00271D 90 00 30         [24] 1653 	mov	dptr,#0x0030
      002720 12 2E 0F         [24] 1654 	lcall	__mulint
      002723 C8               [12] 1655 	xch	a,r0
      002724 E5 10            [12] 1656 	mov	a,_bp
      002726 24 08            [12] 1657 	add	a,#0x08
      002728 C8               [12] 1658 	xch	a,r0
      002729 A6 82            [24] 1659 	mov	@r0,dpl
      00272B 08               [12] 1660 	inc	r0
      00272C A6 83            [24] 1661 	mov	@r0,dph
      00272E 15 81            [12] 1662 	dec	sp
      002730 15 81            [12] 1663 	dec	sp
      002732 D0 04            [24] 1664 	pop	ar4
      002734 D0 05            [24] 1665 	pop	ar5
      002736 D0 06            [24] 1666 	pop	ar6
      002738 D0 07            [24] 1667 	pop	ar7
      00273A E5 10            [12] 1668 	mov	a,_bp
      00273C 24 08            [12] 1669 	add	a,#0x08
      00273E F8               [12] 1670 	mov	r0,a
      00273F EC               [12] 1671 	mov	a,r4
      002740 26               [12] 1672 	add	a,@r0
      002741 FA               [12] 1673 	mov	r2,a
      002742 ED               [12] 1674 	mov	a,r5
      002743 08               [12] 1675 	inc	r0
      002744 36               [12] 1676 	addc	a,@r0
      002745 FB               [12] 1677 	mov	r3,a
      002746 EA               [12] 1678 	mov	a,r2
      002747 24 00            [12] 1679 	add	a,#_u
      002749 F5 82            [12] 1680 	mov	dpl,a
      00274B EB               [12] 1681 	mov	a,r3
      00274C 34 88            [12] 1682 	addc	a,#(_u >> 8)
      00274E F5 83            [12] 1683 	mov	dph,a
      002750 E0               [24] 1684 	movx	a,@dptr
      002751 FB               [12] 1685 	mov	r3,a
      002752 A8 10            [24] 1686 	mov	r0,_bp
      002754 08               [12] 1687 	inc	r0
      002755 EB               [12] 1688 	mov	a,r3
      002756 26               [12] 1689 	add	a,@r0
      002757 F6               [12] 1690 	mov	@r0,a
                                   1691 ;	life.c:181: UPDN(0, 0);
      002758 E5 10            [12] 1692 	mov	a,_bp
      00275A 24 08            [12] 1693 	add	a,#0x08
      00275C F8               [12] 1694 	mov	r0,a
      00275D E5 10            [12] 1695 	mov	a,_bp
      00275F 24 06            [12] 1696 	add	a,#0x06
      002761 F9               [12] 1697 	mov	r1,a
      002762 E7               [12] 1698 	mov	a,@r1
      002763 26               [12] 1699 	add	a,@r0
      002764 FA               [12] 1700 	mov	r2,a
      002765 09               [12] 1701 	inc	r1
      002766 E7               [12] 1702 	mov	a,@r1
      002767 08               [12] 1703 	inc	r0
      002768 36               [12] 1704 	addc	a,@r0
      002769 FB               [12] 1705 	mov	r3,a
      00276A EA               [12] 1706 	mov	a,r2
      00276B 24 00            [12] 1707 	add	a,#_u
      00276D F5 82            [12] 1708 	mov	dpl,a
      00276F EB               [12] 1709 	mov	a,r3
      002770 34 88            [12] 1710 	addc	a,#(_u >> 8)
      002772 F5 83            [12] 1711 	mov	dph,a
      002774 E0               [24] 1712 	movx	a,@dptr
      002775 FB               [12] 1713 	mov	r3,a
      002776 A8 10            [24] 1714 	mov	r0,_bp
      002778 08               [12] 1715 	inc	r0
      002779 EB               [12] 1716 	mov	a,r3
      00277A 26               [12] 1717 	add	a,@r0
      00277B F6               [12] 1718 	mov	@r0,a
                                   1719 ;	life.c:182: UPDN(0, 1);
      00277C E5 10            [12] 1720 	mov	a,_bp
      00277E 24 08            [12] 1721 	add	a,#0x08
      002780 F8               [12] 1722 	mov	r0,a
      002781 EE               [12] 1723 	mov	a,r6
      002782 26               [12] 1724 	add	a,@r0
      002783 FA               [12] 1725 	mov	r2,a
      002784 EF               [12] 1726 	mov	a,r7
      002785 08               [12] 1727 	inc	r0
      002786 36               [12] 1728 	addc	a,@r0
      002787 FB               [12] 1729 	mov	r3,a
      002788 EA               [12] 1730 	mov	a,r2
      002789 24 00            [12] 1731 	add	a,#_u
      00278B F5 82            [12] 1732 	mov	dpl,a
      00278D EB               [12] 1733 	mov	a,r3
      00278E 34 88            [12] 1734 	addc	a,#(_u >> 8)
      002790 F5 83            [12] 1735 	mov	dph,a
      002792 E0               [24] 1736 	movx	a,@dptr
      002793 FB               [12] 1737 	mov	r3,a
      002794 A8 10            [24] 1738 	mov	r0,_bp
      002796 08               [12] 1739 	inc	r0
      002797 E5 10            [12] 1740 	mov	a,_bp
      002799 24 08            [12] 1741 	add	a,#0x08
      00279B F9               [12] 1742 	mov	r1,a
      00279C EB               [12] 1743 	mov	a,r3
      00279D 26               [12] 1744 	add	a,@r0
      00279E F7               [12] 1745 	mov	@r1,a
                                   1746 ;	life.c:183: UPDN(1, -1);
      00279F 78 26            [12] 1747 	mov	r0,#_y
      0027A1 74 C1            [12] 1748 	mov	a,#0xc1
      0027A3 26               [12] 1749 	add	a,@r0
      0027A4 FA               [12] 1750 	mov	r2,a
      0027A5 E4               [12] 1751 	clr	a
      0027A6 08               [12] 1752 	inc	r0
      0027A7 36               [12] 1753 	addc	a,@r0
      0027A8 FB               [12] 1754 	mov	r3,a
      0027A9 C0 07            [24] 1755 	push	ar7
      0027AB C0 06            [24] 1756 	push	ar6
      0027AD C0 05            [24] 1757 	push	ar5
      0027AF C0 04            [24] 1758 	push	ar4
      0027B1 74 C0            [12] 1759 	mov	a,#0xc0
      0027B3 C0 E0            [24] 1760 	push	acc
      0027B5 E4               [12] 1761 	clr	a
      0027B6 C0 E0            [24] 1762 	push	acc
      0027B8 8A 82            [24] 1763 	mov	dpl,r2
      0027BA 8B 83            [24] 1764 	mov	dph,r3
      0027BC 12 2F ED         [24] 1765 	lcall	__modsint
      0027BF AA 82            [24] 1766 	mov	r2,dpl
      0027C1 AB 83            [24] 1767 	mov	r3,dph
      0027C3 15 81            [12] 1768 	dec	sp
      0027C5 15 81            [12] 1769 	dec	sp
      0027C7 C0 02            [24] 1770 	push	ar2
      0027C9 C0 03            [24] 1771 	push	ar3
      0027CB 90 00 30         [24] 1772 	mov	dptr,#0x0030
      0027CE 12 2E 0F         [24] 1773 	lcall	__mulint
      0027D1 AA 82            [24] 1774 	mov	r2,dpl
      0027D3 AB 83            [24] 1775 	mov	r3,dph
      0027D5 15 81            [12] 1776 	dec	sp
      0027D7 15 81            [12] 1777 	dec	sp
      0027D9 D0 04            [24] 1778 	pop	ar4
      0027DB D0 05            [24] 1779 	pop	ar5
      0027DD D0 06            [24] 1780 	pop	ar6
      0027DF D0 07            [24] 1781 	pop	ar7
      0027E1 EC               [12] 1782 	mov	a,r4
      0027E2 2A               [12] 1783 	add	a,r2
      0027E3 FC               [12] 1784 	mov	r4,a
      0027E4 ED               [12] 1785 	mov	a,r5
      0027E5 3B               [12] 1786 	addc	a,r3
      0027E6 FD               [12] 1787 	mov	r5,a
      0027E7 EC               [12] 1788 	mov	a,r4
      0027E8 24 00            [12] 1789 	add	a,#_u
      0027EA F5 82            [12] 1790 	mov	dpl,a
      0027EC ED               [12] 1791 	mov	a,r5
      0027ED 34 88            [12] 1792 	addc	a,#(_u >> 8)
      0027EF F5 83            [12] 1793 	mov	dph,a
      0027F1 E0               [24] 1794 	movx	a,@dptr
      0027F2 FD               [12] 1795 	mov	r5,a
      0027F3 E5 10            [12] 1796 	mov	a,_bp
      0027F5 24 08            [12] 1797 	add	a,#0x08
      0027F7 F8               [12] 1798 	mov	r0,a
      0027F8 E5 10            [12] 1799 	mov	a,_bp
      0027FA 24 08            [12] 1800 	add	a,#0x08
      0027FC F9               [12] 1801 	mov	r1,a
      0027FD ED               [12] 1802 	mov	a,r5
      0027FE 26               [12] 1803 	add	a,@r0
      0027FF F7               [12] 1804 	mov	@r1,a
                                   1805 ;	life.c:184: UPDN(1, 0);
      002800 E5 10            [12] 1806 	mov	a,_bp
      002802 24 06            [12] 1807 	add	a,#0x06
      002804 F8               [12] 1808 	mov	r0,a
      002805 E6               [12] 1809 	mov	a,@r0
      002806 2A               [12] 1810 	add	a,r2
      002807 FC               [12] 1811 	mov	r4,a
      002808 08               [12] 1812 	inc	r0
      002809 E6               [12] 1813 	mov	a,@r0
      00280A 3B               [12] 1814 	addc	a,r3
      00280B FD               [12] 1815 	mov	r5,a
      00280C EC               [12] 1816 	mov	a,r4
      00280D 24 00            [12] 1817 	add	a,#_u
      00280F F5 82            [12] 1818 	mov	dpl,a
      002811 ED               [12] 1819 	mov	a,r5
      002812 34 88            [12] 1820 	addc	a,#(_u >> 8)
      002814 F5 83            [12] 1821 	mov	dph,a
      002816 E0               [24] 1822 	movx	a,@dptr
      002817 FD               [12] 1823 	mov	r5,a
      002818 E5 10            [12] 1824 	mov	a,_bp
      00281A 24 08            [12] 1825 	add	a,#0x08
      00281C F8               [12] 1826 	mov	r0,a
      00281D ED               [12] 1827 	mov	a,r5
      00281E 26               [12] 1828 	add	a,@r0
      00281F FD               [12] 1829 	mov	r5,a
                                   1830 ;	life.c:185: UPDN(1, 1);
      002820 EE               [12] 1831 	mov	a,r6
      002821 2A               [12] 1832 	add	a,r2
      002822 FE               [12] 1833 	mov	r6,a
      002823 EF               [12] 1834 	mov	a,r7
      002824 3B               [12] 1835 	addc	a,r3
      002825 FF               [12] 1836 	mov	r7,a
      002826 EE               [12] 1837 	mov	a,r6
      002827 24 00            [12] 1838 	add	a,#_u
      002829 F5 82            [12] 1839 	mov	dpl,a
      00282B EF               [12] 1840 	mov	a,r7
      00282C 34 88            [12] 1841 	addc	a,#(_u >> 8)
      00282E F5 83            [12] 1842 	mov	dph,a
      002830 E0               [24] 1843 	movx	a,@dptr
      002831 2D               [12] 1844 	add	a,r5
      002832 FF               [12] 1845 	mov	r7,a
      002833 78 28            [12] 1846 	mov	r0,#_n
      002835 A6 07            [24] 1847 	mov	@r0,ar7
                                   1848 ;	life.c:188: nu[A2D(W, y, x)] = (n == 3) || ((n == 2) && u[A2D(W, y, x)]);
      002837 A8 10            [24] 1849 	mov	r0,_bp
      002839 08               [12] 1850 	inc	r0
      00283A 08               [12] 1851 	inc	r0
      00283B E6               [12] 1852 	mov	a,@r0
      00283C 24 00            [12] 1853 	add	a,#_nu
      00283E FD               [12] 1854 	mov	r5,a
      00283F 08               [12] 1855 	inc	r0
      002840 E6               [12] 1856 	mov	a,@r0
      002841 34 AC            [12] 1857 	addc	a,#(_nu >> 8)
      002843 FE               [12] 1858 	mov	r6,a
      002844 BF 03 02         [24] 1859 	cjne	r7,#0x03,00504$
      002847 80 25            [24] 1860 	sjmp	00243$
      002849                       1861 00504$:
      002849 BF 02 1E         [24] 1862 	cjne	r7,#0x02,00242$
      00284C E5 10            [12] 1863 	mov	a,_bp
      00284E 24 04            [12] 1864 	add	a,#0x04
      002850 F8               [12] 1865 	mov	r0,a
      002851 79 24            [12] 1866 	mov	r1,#_x
      002853 E7               [12] 1867 	mov	a,@r1
      002854 26               [12] 1868 	add	a,@r0
      002855 FC               [12] 1869 	mov	r4,a
      002856 09               [12] 1870 	inc	r1
      002857 E7               [12] 1871 	mov	a,@r1
      002858 08               [12] 1872 	inc	r0
      002859 36               [12] 1873 	addc	a,@r0
      00285A FF               [12] 1874 	mov	r7,a
      00285B EC               [12] 1875 	mov	a,r4
      00285C 24 00            [12] 1876 	add	a,#_u
      00285E FC               [12] 1877 	mov	r4,a
      00285F EF               [12] 1878 	mov	a,r7
      002860 34 88            [12] 1879 	addc	a,#(_u >> 8)
      002862 FF               [12] 1880 	mov	r7,a
      002863 8C 82            [24] 1881 	mov	dpl,r4
      002865 8F 83            [24] 1882 	mov	dph,r7
      002867 E0               [24] 1883 	movx	a,@dptr
      002868 70 04            [24] 1884 	jnz	00243$
      00286A                       1885 00242$:
                                   1886 ;	assignBit
      00286A C2 00            [12] 1887 	clr	b0
      00286C 80 02            [24] 1888 	sjmp	00244$
      00286E                       1889 00243$:
                                   1890 ;	assignBit
      00286E D2 00            [12] 1891 	setb	b0
      002870                       1892 00244$:
      002870 A2 00            [12] 1893 	mov	c,b0
      002872 E4               [12] 1894 	clr	a
      002873 33               [12] 1895 	rlc	a
      002874 8D 82            [24] 1896 	mov	dpl,r5
      002876 8E 83            [24] 1897 	mov	dph,r6
      002878 F0               [24] 1898 	movx	@dptr,a
                                   1899 ;	life.c:189: cycle2 |= pu[A2D(W, y, x)] ^ nu[A2D(W, y, x)];
      002879 78 26            [12] 1900 	mov	r0,#_y
      00287B E6               [12] 1901 	mov	a,@r0
      00287C C0 E0            [24] 1902 	push	acc
      00287E 08               [12] 1903 	inc	r0
      00287F E6               [12] 1904 	mov	a,@r0
      002880 C0 E0            [24] 1905 	push	acc
      002882 90 00 30         [24] 1906 	mov	dptr,#0x0030
      002885 12 2E 0F         [24] 1907 	lcall	__mulint
      002888 AE 82            [24] 1908 	mov	r6,dpl
      00288A AF 83            [24] 1909 	mov	r7,dph
      00288C 15 81            [12] 1910 	dec	sp
      00288E 15 81            [12] 1911 	dec	sp
      002890 78 24            [12] 1912 	mov	r0,#_x
      002892 E6               [12] 1913 	mov	a,@r0
      002893 2E               [12] 1914 	add	a,r6
      002894 FE               [12] 1915 	mov	r6,a
      002895 08               [12] 1916 	inc	r0
      002896 E6               [12] 1917 	mov	a,@r0
      002897 3F               [12] 1918 	addc	a,r7
      002898 FF               [12] 1919 	mov	r7,a
      002899 EE               [12] 1920 	mov	a,r6
      00289A 24 00            [12] 1921 	add	a,#_pu
      00289C F5 82            [12] 1922 	mov	dpl,a
      00289E EF               [12] 1923 	mov	a,r7
      00289F 34 64            [12] 1924 	addc	a,#(_pu >> 8)
      0028A1 F5 83            [12] 1925 	mov	dph,a
      0028A3 E0               [24] 1926 	movx	a,@dptr
      0028A4 FD               [12] 1927 	mov	r5,a
      0028A5 EE               [12] 1928 	mov	a,r6
      0028A6 24 00            [12] 1929 	add	a,#_nu
      0028A8 F5 82            [12] 1930 	mov	dpl,a
      0028AA EF               [12] 1931 	mov	a,r7
      0028AB 34 AC            [12] 1932 	addc	a,#(_nu >> 8)
      0028AD F5 83            [12] 1933 	mov	dph,a
      0028AF E0               [24] 1934 	movx	a,@dptr
      0028B0 FC               [12] 1935 	mov	r4,a
      0028B1 6D               [12] 1936 	xrl	a,r5
      0028B2 78 2A            [12] 1937 	mov	r0,#_cycle2
      0028B4 46               [12] 1938 	orl	a,@r0
      0028B5 F6               [12] 1939 	mov	@r0,a
                                   1940 ;	life.c:190: fixed |= u[A2D(W, y, x)] ^ nu[A2D(W, y, x)];
      0028B6 EE               [12] 1941 	mov	a,r6
      0028B7 24 00            [12] 1942 	add	a,#_u
      0028B9 F5 82            [12] 1943 	mov	dpl,a
      0028BB EF               [12] 1944 	mov	a,r7
      0028BC 34 88            [12] 1945 	addc	a,#(_u >> 8)
      0028BE F5 83            [12] 1946 	mov	dph,a
      0028C0 E0               [24] 1947 	movx	a,@dptr
      0028C1 FF               [12] 1948 	mov	r7,a
      0028C2 EC               [12] 1949 	mov	a,r4
      0028C3 6F               [12] 1950 	xrl	a,r7
      0028C4 78 29            [12] 1951 	mov	r0,#_fixed
      0028C6 46               [12] 1952 	orl	a,@r0
      0028C7 F6               [12] 1953 	mov	@r0,a
                                   1954 ;	life.c:171: for (x = 0; x < W; x++) {
      0028C8 78 24            [12] 1955 	mov	r0,#_x
      0028CA 06               [12] 1956 	inc	@r0
      0028CB B6 00 02         [24] 1957 	cjne	@r0,#0x00,00508$
      0028CE 08               [12] 1958 	inc	r0
      0028CF 06               [12] 1959 	inc	@r0
      0028D0                       1960 00508$:
      0028D0 78 24            [12] 1961 	mov	r0,#_x
      0028D2 C3               [12] 1962 	clr	c
      0028D3 E6               [12] 1963 	mov	a,@r0
      0028D4 94 30            [12] 1964 	subb	a,#0x30
      0028D6 08               [12] 1965 	inc	r0
      0028D7 E6               [12] 1966 	mov	a,@r0
      0028D8 64 80            [12] 1967 	xrl	a,#0x80
      0028DA 94 80            [12] 1968 	subb	a,#0x80
      0028DC 50 03            [24] 1969 	jnc	00509$
      0028DE 02 25 97         [24] 1970 	ljmp	00228$
      0028E1                       1971 00509$:
                                   1972 ;	life.c:168: for (y = 0; y < H; y++) {
      0028E1 78 26            [12] 1973 	mov	r0,#_y
      0028E3 06               [12] 1974 	inc	@r0
      0028E4 B6 00 02         [24] 1975 	cjne	@r0,#0x00,00510$
      0028E7 08               [12] 1976 	inc	r0
      0028E8 06               [12] 1977 	inc	@r0
      0028E9                       1978 00510$:
      0028E9 78 26            [12] 1979 	mov	r0,#_y
      0028EB C3               [12] 1980 	clr	c
      0028EC E6               [12] 1981 	mov	a,@r0
      0028ED 94 C0            [12] 1982 	subb	a,#0xc0
      0028EF 08               [12] 1983 	inc	r0
      0028F0 E6               [12] 1984 	mov	a,@r0
      0028F1 64 80            [12] 1985 	xrl	a,#0x80
      0028F3 94 80            [12] 1986 	subb	a,#0x80
      0028F5 50 03            [24] 1987 	jnc	00511$
      0028F7 02 25 7B         [24] 1988 	ljmp	00230$
      0028FA                       1989 00511$:
                                   1990 ;	life.c:194: OE76 = OE76_0;
      0028FA 78 23            [12] 1991 	mov	r0,#_OE76
      0028FC 76 3F            [12] 1992 	mov	@r0,#0x3f
                                   1993 ;	life.c:195: flashOE();
      0028FE 12 20 8D         [24] 1994 	lcall	_flashOE
                                   1995 ;	life.c:197: cycle2 = !cycle2;
      002901 78 2A            [12] 1996 	mov	r0,#_cycle2
      002903 E6               [12] 1997 	mov	a,@r0
      002904 B4 01 00         [24] 1998 	cjne	a,#0x01,00512$
      002907                       1999 00512$:
      002907 92 00            [24] 2000 	mov	b0,c
      002909 78 2A            [12] 2001 	mov	r0,#_cycle2
      00290B E4               [12] 2002 	clr	a
      00290C 33               [12] 2003 	rlc	a
      00290D F6               [12] 2004 	mov	@r0,a
                                   2005 ;	life.c:198: fixed = !fixed;
      00290E 78 29            [12] 2006 	mov	r0,#_fixed
      002910 E6               [12] 2007 	mov	a,@r0
      002911 B4 01 00         [24] 2008 	cjne	a,#0x01,00513$
      002914                       2009 00513$:
      002914 92 00            [24] 2010 	mov	b0,c
      002916 78 29            [12] 2011 	mov	r0,#_fixed
      002918 E4               [12] 2012 	clr	a
      002919 33               [12] 2013 	rlc	a
      00291A F6               [12] 2014 	mov	@r0,a
                                   2015 ;	life.c:200: memcpy(pu, u, sizeof (u));
      00291B E4               [12] 2016 	clr	a
      00291C C0 E0            [24] 2017 	push	acc
      00291E 74 24            [12] 2018 	mov	a,#0x24
      002920 C0 E0            [24] 2019 	push	acc
      002922 74 00            [12] 2020 	mov	a,#_u
      002924 C0 E0            [24] 2021 	push	acc
      002926 74 88            [12] 2022 	mov	a,#(_u >> 8)
      002928 C0 E0            [24] 2023 	push	acc
      00292A E4               [12] 2024 	clr	a
      00292B C0 E0            [24] 2025 	push	acc
      00292D 90 64 00         [24] 2026 	mov	dptr,#_pu
      002930 75 F0 00         [24] 2027 	mov	b,#0x00
      002933 12 2E AD         [24] 2028 	lcall	___memcpy
      002936 E5 81            [12] 2029 	mov	a,sp
      002938 24 FB            [12] 2030 	add	a,#0xfb
      00293A F5 81            [12] 2031 	mov	sp,a
                                   2032 ;	life.c:201: memcpy(u, nu, sizeof (nu));
      00293C E4               [12] 2033 	clr	a
      00293D C0 E0            [24] 2034 	push	acc
      00293F 74 24            [12] 2035 	mov	a,#0x24
      002941 C0 E0            [24] 2036 	push	acc
      002943 74 00            [12] 2037 	mov	a,#_nu
      002945 C0 E0            [24] 2038 	push	acc
      002947 74 AC            [12] 2039 	mov	a,#(_nu >> 8)
      002949 C0 E0            [24] 2040 	push	acc
      00294B E4               [12] 2041 	clr	a
      00294C C0 E0            [24] 2042 	push	acc
      00294E 90 88 00         [24] 2043 	mov	dptr,#_u
      002951 75 F0 00         [24] 2044 	mov	b,#0x00
      002954 12 2E AD         [24] 2045 	lcall	___memcpy
      002957 E5 81            [12] 2046 	mov	a,sp
      002959 24 FB            [12] 2047 	add	a,#0xfb
      00295B F5 81            [12] 2048 	mov	sp,a
                                   2049 ;	life.c:260: if (fixed || cycle2) {
      00295D 78 29            [12] 2050 	mov	r0,#_fixed
      00295F E6               [12] 2051 	mov	a,@r0
      002960 70 05            [24] 2052 	jnz	00137$
      002962 78 2A            [12] 2053 	mov	r0,#_cycle2
      002964 E6               [12] 2054 	mov	a,@r0
      002965 60 33            [24] 2055 	jz	00138$
      002967                       2056 00137$:
                                   2057 ;	life.c:261: if (fixed) {
      002967 78 29            [12] 2058 	mov	r0,#_fixed
      002969 E6               [12] 2059 	mov	a,@r0
      00296A 60 0B            [24] 2060 	jz	00135$
                                   2061 ;	life.c:262: printstr("FIXED\r\n");
      00296C 90 31 5C         [24] 2062 	mov	dptr,#___str_12
      00296F 75 F0 80         [24] 2063 	mov	b,#0x80
      002972 12 2B 2A         [24] 2064 	lcall	_printstr
                                   2065 ;	life.c:263: break;
      002975 80 7B            [24] 2066 	sjmp	00150$
      002977                       2067 00135$:
                                   2068 ;	life.c:264: } else if (!c2set) {
      002977 78 33            [12] 2069 	mov	r0,#_c2set
      002979 E6               [12] 2070 	mov	a,@r0
      00297A 70 1E            [24] 2071 	jnz	00138$
                                   2072 ;	life.c:265: genc2 = gen;
      00297C 78 2B            [12] 2073 	mov	r0,#_gen
      00297E 86 04            [24] 2074 	mov	ar4,@r0
      002980 08               [12] 2075 	inc	r0
      002981 86 05            [24] 2076 	mov	ar5,@r0
      002983 08               [12] 2077 	inc	r0
      002984 86 06            [24] 2078 	mov	ar6,@r0
      002986 08               [12] 2079 	inc	r0
      002987 86 07            [24] 2080 	mov	ar7,@r0
      002989 78 2F            [12] 2081 	mov	r0,#_genc2
      00298B A6 04            [24] 2082 	mov	@r0,ar4
      00298D 08               [12] 2083 	inc	r0
      00298E A6 05            [24] 2084 	mov	@r0,ar5
      002990 08               [12] 2085 	inc	r0
      002991 A6 06            [24] 2086 	mov	@r0,ar6
      002993 08               [12] 2087 	inc	r0
      002994 A6 07            [24] 2088 	mov	@r0,ar7
                                   2089 ;	life.c:266: c2set = 1;
      002996 78 33            [12] 2090 	mov	r0,#_c2set
      002998 76 01            [12] 2091 	mov	@r0,#0x01
      00299A                       2092 00138$:
                                   2093 ;	life.c:270: c = getchar_poll();
      00299A 12 2B 10         [24] 2094 	lcall	_getchar_poll
      00299D AE 82            [24] 2095 	mov	r6,dpl
      00299F AF 83            [24] 2096 	mov	r7,dph
                                   2097 ;	life.c:271: if (c > 0) {
      0029A1 C3               [12] 2098 	clr	c
      0029A2 E4               [12] 2099 	clr	a
      0029A3 9E               [12] 2100 	subb	a,r6
      0029A4 74 80            [12] 2101 	mov	a,#(0x00 ^ 0x80)
      0029A6 8F F0            [24] 2102 	mov	b,r7
      0029A8 63 F0 80         [24] 2103 	xrl	b,#0x80
      0029AB 95 F0            [12] 2104 	subb	a,b
      0029AD 40 03            [24] 2105 	jc	00518$
      0029AF 02 25 0F         [24] 2106 	ljmp	00234$
      0029B2                       2107 00518$:
                                   2108 ;	life.c:272: c = toupper(c);
      0029B2 8E 82            [24] 2109 	mov	dpl,r6
      0029B4 8F 83            [24] 2110 	mov	dph,r7
      0029B6 12 2F AA         [24] 2111 	lcall	_toupper
      0029B9 AE 82            [24] 2112 	mov	r6,dpl
      0029BB AF 83            [24] 2113 	mov	r7,dph
                                   2114 ;	life.c:273: if (c == (int)'U') pruni = !pruni;
      0029BD BE 55 13         [24] 2115 	cjne	r6,#0x55,00146$
      0029C0 BF 00 10         [24] 2116 	cjne	r7,#0x00,00146$
      0029C3 78 34            [12] 2117 	mov	r0,#_pruni
      0029C5 E6               [12] 2118 	mov	a,@r0
      0029C6 B4 01 00         [24] 2119 	cjne	a,#0x01,00521$
      0029C9                       2120 00521$:
      0029C9 92 00            [24] 2121 	mov	b0,c
      0029CB 78 34            [12] 2122 	mov	r0,#_pruni
      0029CD E4               [12] 2123 	clr	a
      0029CE 33               [12] 2124 	rlc	a
      0029CF F6               [12] 2125 	mov	@r0,a
      0029D0 02 25 0F         [24] 2126 	ljmp	00234$
      0029D3                       2127 00146$:
                                   2128 ;	life.c:274: else if (c == (int)'T') i0 = 1;
      0029D3 BE 54 0A         [24] 2129 	cjne	r6,#0x54,00143$
      0029D6 BF 00 07         [24] 2130 	cjne	r7,#0x00,00143$
      0029D9 78 21            [12] 2131 	mov	r0,#_i0
      0029DB 76 01            [12] 2132 	mov	@r0,#0x01
      0029DD 02 25 0F         [24] 2133 	ljmp	00234$
      0029E0                       2134 00143$:
                                   2135 ;	life.c:275: else if (c == (int)'B') i1 = 1;
      0029E0 BE 42 05         [24] 2136 	cjne	r6,#0x42,00524$
      0029E3 BF 00 02         [24] 2137 	cjne	r7,#0x00,00524$
      0029E6 80 03            [24] 2138 	sjmp	00525$
      0029E8                       2139 00524$:
      0029E8 02 25 0F         [24] 2140 	ljmp	00234$
      0029EB                       2141 00525$:
      0029EB 78 22            [12] 2142 	mov	r0,#_i1
      0029ED 76 01            [12] 2143 	mov	@r0,#0x01
      0029EF 02 25 0F         [24] 2144 	ljmp	00234$
      0029F2                       2145 00150$:
                                   2146 ;	life.c:279: if (i1) printstr("BREAK\r\n");
      0029F2 78 22            [12] 2147 	mov	r0,#_i1
      0029F4 E6               [12] 2148 	mov	a,@r0
      0029F5 60 09            [24] 2149 	jz	00237$
      0029F7 90 31 64         [24] 2150 	mov	dptr,#___str_13
      0029FA 75 F0 80         [24] 2151 	mov	b,#0x80
      0029FD 12 2B 2A         [24] 2152 	lcall	_printstr
      002A00                       2153 00237$:
                                   2154 ;	life.c:230: for (i0 = 0; !i0; ) {
      002A00 78 21            [12] 2155 	mov	r0,#_i0
      002A02 E6               [12] 2156 	mov	a,@r0
      002A03 70 03            [24] 2157 	jnz	00527$
      002A05 02 22 00         [24] 2158 	ljmp	00236$
      002A08                       2159 00527$:
                                   2160 ;	life.c:282: term:
      002A08                       2161 00154$:
                                   2162 ;	life.c:283: EA = 0;
                                   2163 ;	assignBit
      002A08 C2 AF            [12] 2164 	clr	_EA
                                   2165 ;	life.c:284: printstr("TERM\r\n");
      002A0A 90 31 6C         [24] 2166 	mov	dptr,#___str_14
      002A0D 75 F0 80         [24] 2167 	mov	b,#0x80
      002A10 12 2B 2A         [24] 2168 	lcall	_printstr
                                   2169 ;	life.c:286: PCON |= 2;
      002A13 43 87 02         [24] 2170 	orl	_PCON,#0x02
                                   2171 ;	life.c:288: return;
                                   2172 ;	life.c:289: }
      002A16 85 10 81         [24] 2173 	mov	sp,_bp
      002A19 D0 10            [24] 2174 	pop	_bp
      002A1B 22               [24] 2175 	ret
                                   2176 	.area CSEG    (CODE)
                                   2177 	.area CONST   (CODE)
                                   2178 	.area CONST   (CODE)
      0030F9                       2179 ___str_0:
      0030F9 1B                    2180 	.db 0x1b
      0030FA 5B 32 4A              2181 	.ascii "[2J"
      0030FD 00                    2182 	.db 0x00
                                   2183 	.area CSEG    (CODE)
                                   2184 	.area CONST   (CODE)
      0030FE                       2185 ___str_1:
      0030FE 47 45 4E 20           2186 	.ascii "GEN "
      003102 00                    2187 	.db 0x00
                                   2188 	.area CSEG    (CODE)
                                   2189 	.area CONST   (CODE)
      003103                       2190 ___str_2:
      003103 20 43 59 43 4C 45 32  2191 	.ascii " CYCLE2 "
             20
      00310B 00                    2192 	.db 0x00
                                   2193 	.area CSEG    (CODE)
                                   2194 	.area CONST   (CODE)
      00310C                       2195 ___str_3:
      00310C 0D                    2196 	.db 0x0d
      00310D 0A                    2197 	.db 0x0a
      00310E 00                    2198 	.db 0x00
                                   2199 	.area CSEG    (CODE)
                                   2200 	.area CONST   (CODE)
      00310F                       2201 ___str_4:
      00310F 1B                    2202 	.db 0x1b
      003110 5B 3F 32 35 6C        2203 	.ascii "[?25l"
      003115 00                    2204 	.db 0x00
                                   2205 	.area CSEG    (CODE)
                                   2206 	.area CONST   (CODE)
      003116                       2207 ___str_5:
      003116 1B                    2208 	.db 0x1b
      003117 5B 3F 32 35 68        2209 	.ascii "[?25h"
      00311C 00                    2210 	.db 0x00
                                   2211 	.area CSEG    (CODE)
                                   2212 	.area CONST   (CODE)
      00311D                       2213 ___str_6:
      00311D 4C 4F 41 44 20 30 20  2214 	.ascii "LOAD 0 1 ~ # <"
             31 20 7E 20 23 20 3C
      00312B 00                    2215 	.db 0x00
                                   2216 	.area CSEG    (CODE)
                                   2217 	.area CONST   (CODE)
      00312C                       2218 ___str_7:
      00312C 3E                    2219 	.ascii ">"
      00312D 0D                    2220 	.db 0x0d
      00312E 0A                    2221 	.db 0x0a
      00312F 00                    2222 	.db 0x00
                                   2223 	.area CSEG    (CODE)
                                   2224 	.area CONST   (CODE)
      003130                       2225 ___str_8:
      003130 52 41 4E 44 4F 4D     2226 	.ascii "RANDOM"
      003136 00                    2227 	.db 0x00
                                   2228 	.area CSEG    (CODE)
                                   2229 	.area CONST   (CODE)
      003137                       2230 ___str_9:
      003137 1B                    2231 	.db 0x1b
      003138 5B 3F 32 35 68        2232 	.ascii "[?25h"
      00313D 1B                    2233 	.db 0x1b
      00313E 5B 6D                 2234 	.ascii "[m"
      003140 00                    2235 	.db 0x00
                                   2236 	.area CSEG    (CODE)
                                   2237 	.area CONST   (CODE)
      003141                       2238 ___str_10:
      003141 4C 49 46 45 20 49 20  2239 	.ascii "LIFE I L R O P S U B T"
             4C 20 52 20 4F 20 50
             20 53 20 55 20 42 20
             54
      003157 0D                    2240 	.db 0x0d
      003158 0A                    2241 	.db 0x0a
      003159 00                    2242 	.db 0x00
                                   2243 	.area CSEG    (CODE)
                                   2244 	.area CONST   (CODE)
      00315A                       2245 ___str_11:
      00315A 55                    2246 	.ascii "U"
      00315B 00                    2247 	.db 0x00
                                   2248 	.area CSEG    (CODE)
                                   2249 	.area CONST   (CODE)
      00315C                       2250 ___str_12:
      00315C 46 49 58 45 44        2251 	.ascii "FIXED"
      003161 0D                    2252 	.db 0x0d
      003162 0A                    2253 	.db 0x0a
      003163 00                    2254 	.db 0x00
                                   2255 	.area CSEG    (CODE)
                                   2256 	.area CONST   (CODE)
      003164                       2257 ___str_13:
      003164 42 52 45 41 4B        2258 	.ascii "BREAK"
      003169 0D                    2259 	.db 0x0d
      00316A 0A                    2260 	.db 0x0a
      00316B 00                    2261 	.db 0x00
                                   2262 	.area CSEG    (CODE)
                                   2263 	.area CONST   (CODE)
      00316C                       2264 ___str_14:
      00316C 54 45 52 4D           2265 	.ascii "TERM"
      003170 0D                    2266 	.db 0x0d
      003171 0A                    2267 	.db 0x0a
      003172 00                    2268 	.db 0x00
                                   2269 	.area CSEG    (CODE)
                                   2270 	.area XINIT   (CODE)
                                   2271 	.area CABS    (ABS,CODE)
