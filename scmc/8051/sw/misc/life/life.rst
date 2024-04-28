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
                           00E000   362 _RND	=	0xe000
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
      002016 02 21 A3         [24]  422 	ljmp	_main
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
                                    492 ;	life.c:30: OEreg = OE76;
      00208D 78 23            [12]  493 	mov	r0,#_OE76
      00208F 90 F0 06         [24]  494 	mov	dptr,#_OEreg
      002092 E6               [12]  495 	mov	a,@r0
      002093 F0               [24]  496 	movx	@dptr,a
                                    497 ;	life.c:32: return;
                                    498 ;	life.c:33: }
      002094 22               [24]  499 	ret
                                    500 ;------------------------------------------------------------
                                    501 ;Allocation info for local variables in function 'show'
                                    502 ;------------------------------------------------------------
                                    503 ;universe                  Allocated to stack - _bp -5
                                    504 ;prflags                   Allocated to registers r7 
                                    505 ;------------------------------------------------------------
                                    506 ;	life.c:67: void show(char prflags, char *universe) {
                                    507 ;	-----------------------------------------
                                    508 ;	 function show
                                    509 ;	-----------------------------------------
      002095                        510 _show:
      002095 C0 10            [24]  511 	push	_bp
      002097 85 81 10         [24]  512 	mov	_bp,sp
                                    513 ;	life.c:68: if (prflags & PRCLR) printstr("\033[2J");
      00209A E5 82            [12]  514 	mov	a,dpl
      00209C FF               [12]  515 	mov	r7,a
      00209D 30 E0 0D         [24]  516 	jnb	acc.0,00102$
      0020A0 90 30 FD         [24]  517 	mov	dptr,#___str_0
      0020A3 75 F0 80         [24]  518 	mov	b,#0x80
      0020A6 C0 07            [24]  519 	push	ar7
      0020A8 12 2B 2E         [24]  520 	lcall	_printstr
      0020AB D0 07            [24]  521 	pop	ar7
      0020AD                        522 00102$:
                                    523 ;	life.c:69: if (prflags & PRHDR) {
      0020AD EF               [12]  524 	mov	a,r7
      0020AE 30 E1 4A         [24]  525 	jnb	acc.1,00106$
                                    526 ;	life.c:70: printstr("GEN ");
      0020B1 90 31 02         [24]  527 	mov	dptr,#___str_1
      0020B4 75 F0 80         [24]  528 	mov	b,#0x80
      0020B7 C0 07            [24]  529 	push	ar7
      0020B9 12 2B 2E         [24]  530 	lcall	_printstr
                                    531 ;	life.c:71: print32x(gen);
      0020BC 78 2B            [12]  532 	mov	r0,#_gen
      0020BE 86 82            [24]  533 	mov	dpl,@r0
      0020C0 08               [12]  534 	inc	r0
      0020C1 86 83            [24]  535 	mov	dph,@r0
      0020C3 08               [12]  536 	inc	r0
      0020C4 86 F0            [24]  537 	mov	b,@r0
      0020C6 08               [12]  538 	inc	r0
      0020C7 E6               [12]  539 	mov	a,@r0
      0020C8 12 2C DE         [24]  540 	lcall	_print32x
      0020CB D0 07            [24]  541 	pop	ar7
                                    542 ;	life.c:72: if (c2set) {
      0020CD 78 33            [12]  543 	mov	r0,#_c2set
      0020CF E6               [12]  544 	mov	a,@r0
      0020D0 60 1C            [24]  545 	jz	00104$
                                    546 ;	life.c:73: printstr(" CYCLE2 ");
      0020D2 90 31 07         [24]  547 	mov	dptr,#___str_2
      0020D5 75 F0 80         [24]  548 	mov	b,#0x80
      0020D8 C0 07            [24]  549 	push	ar7
      0020DA 12 2B 2E         [24]  550 	lcall	_printstr
                                    551 ;	life.c:74: print32x(genc2);
      0020DD 78 2F            [12]  552 	mov	r0,#_genc2
      0020DF 86 82            [24]  553 	mov	dpl,@r0
      0020E1 08               [12]  554 	inc	r0
      0020E2 86 83            [24]  555 	mov	dph,@r0
      0020E4 08               [12]  556 	inc	r0
      0020E5 86 F0            [24]  557 	mov	b,@r0
      0020E7 08               [12]  558 	inc	r0
      0020E8 E6               [12]  559 	mov	a,@r0
      0020E9 12 2C DE         [24]  560 	lcall	_print32x
      0020EC D0 07            [24]  561 	pop	ar7
      0020EE                        562 00104$:
                                    563 ;	life.c:76: printstr("\r\n");
      0020EE 90 31 10         [24]  564 	mov	dptr,#___str_3
      0020F1 75 F0 80         [24]  565 	mov	b,#0x80
      0020F4 C0 07            [24]  566 	push	ar7
      0020F6 12 2B 2E         [24]  567 	lcall	_printstr
      0020F9 D0 07            [24]  568 	pop	ar7
      0020FB                        569 00106$:
                                    570 ;	life.c:78: if (prflags & PRUNI) {
      0020FB EF               [12]  571 	mov	a,r7
      0020FC 20 E2 03         [24]  572 	jb	acc.2,00159$
      0020FF 02 21 A0         [24]  573 	ljmp	00113$
      002102                        574 00159$:
                                    575 ;	life.c:79: printstr("\033[?25l");
      002102 90 31 13         [24]  576 	mov	dptr,#___str_4
      002105 75 F0 80         [24]  577 	mov	b,#0x80
      002108 12 2B 2E         [24]  578 	lcall	_printstr
                                    579 ;	life.c:80: for (x = 0; x < W; x++) {
      00210B 78 24            [12]  580 	mov	r0,#_x
      00210D E4               [12]  581 	clr	a
      00210E F6               [12]  582 	mov	@r0,a
      00210F 08               [12]  583 	inc	r0
      002110 F6               [12]  584 	mov	@r0,a
      002111                        585 00116$:
                                    586 ;	life.c:81: for (y = 0; y < H; y++)
      002111 78 26            [12]  587 	mov	r0,#_y
      002113 E4               [12]  588 	clr	a
      002114 F6               [12]  589 	mov	@r0,a
      002115 08               [12]  590 	inc	r0
      002116 F6               [12]  591 	mov	@r0,a
      002117                        592 00114$:
                                    593 ;	life.c:82: if (universe[A2D(W, y, x)]) putchar((int)'1');
      002117 78 26            [12]  594 	mov	r0,#_y
      002119 E6               [12]  595 	mov	a,@r0
      00211A C0 E0            [24]  596 	push	acc
      00211C 08               [12]  597 	inc	r0
      00211D E6               [12]  598 	mov	a,@r0
      00211E C0 E0            [24]  599 	push	acc
      002120 90 00 30         [24]  600 	mov	dptr,#0x0030
      002123 12 2E 13         [24]  601 	lcall	__mulint
      002126 AE 82            [24]  602 	mov	r6,dpl
      002128 AF 83            [24]  603 	mov	r7,dph
      00212A 15 81            [12]  604 	dec	sp
      00212C 15 81            [12]  605 	dec	sp
      00212E 78 24            [12]  606 	mov	r0,#_x
      002130 E6               [12]  607 	mov	a,@r0
      002131 2E               [12]  608 	add	a,r6
      002132 FE               [12]  609 	mov	r6,a
      002133 08               [12]  610 	inc	r0
      002134 E6               [12]  611 	mov	a,@r0
      002135 3F               [12]  612 	addc	a,r7
      002136 FF               [12]  613 	mov	r7,a
      002137 E5 10            [12]  614 	mov	a,_bp
      002139 24 FB            [12]  615 	add	a,#0xfb
      00213B F8               [12]  616 	mov	r0,a
      00213C EE               [12]  617 	mov	a,r6
      00213D 26               [12]  618 	add	a,@r0
      00213E FE               [12]  619 	mov	r6,a
      00213F EF               [12]  620 	mov	a,r7
      002140 08               [12]  621 	inc	r0
      002141 36               [12]  622 	addc	a,@r0
      002142 FF               [12]  623 	mov	r7,a
      002143 08               [12]  624 	inc	r0
      002144 86 05            [24]  625 	mov	ar5,@r0
      002146 8E 82            [24]  626 	mov	dpl,r6
      002148 8F 83            [24]  627 	mov	dph,r7
      00214A 8D F0            [24]  628 	mov	b,r5
      00214C 12 2F D5         [24]  629 	lcall	__gptrget
      00214F 60 08            [24]  630 	jz	00108$
      002151 90 00 31         [24]  631 	mov	dptr,#0x0031
      002154 12 2A FD         [24]  632 	lcall	_putchar
      002157 80 06            [24]  633 	sjmp	00115$
      002159                        634 00108$:
                                    635 ;	life.c:83: else putchar((int)'0');
      002159 90 00 30         [24]  636 	mov	dptr,#0x0030
      00215C 12 2A FD         [24]  637 	lcall	_putchar
      00215F                        638 00115$:
                                    639 ;	life.c:81: for (y = 0; y < H; y++)
      00215F 78 26            [12]  640 	mov	r0,#_y
      002161 06               [12]  641 	inc	@r0
      002162 B6 00 02         [24]  642 	cjne	@r0,#0x00,00161$
      002165 08               [12]  643 	inc	r0
      002166 06               [12]  644 	inc	@r0
      002167                        645 00161$:
      002167 78 26            [12]  646 	mov	r0,#_y
      002169 C3               [12]  647 	clr	c
      00216A E6               [12]  648 	mov	a,@r0
      00216B 94 C0            [12]  649 	subb	a,#0xc0
      00216D 08               [12]  650 	inc	r0
      00216E E6               [12]  651 	mov	a,@r0
      00216F 64 80            [12]  652 	xrl	a,#0x80
      002171 94 80            [12]  653 	subb	a,#0x80
      002173 40 A2            [24]  654 	jc	00114$
                                    655 ;	life.c:84: printstr("\r\n");
      002175 90 31 10         [24]  656 	mov	dptr,#___str_3
      002178 75 F0 80         [24]  657 	mov	b,#0x80
      00217B 12 2B 2E         [24]  658 	lcall	_printstr
                                    659 ;	life.c:80: for (x = 0; x < W; x++) {
      00217E 78 24            [12]  660 	mov	r0,#_x
      002180 06               [12]  661 	inc	@r0
      002181 B6 00 02         [24]  662 	cjne	@r0,#0x00,00163$
      002184 08               [12]  663 	inc	r0
      002185 06               [12]  664 	inc	@r0
      002186                        665 00163$:
      002186 78 24            [12]  666 	mov	r0,#_x
      002188 C3               [12]  667 	clr	c
      002189 E6               [12]  668 	mov	a,@r0
      00218A 94 30            [12]  669 	subb	a,#0x30
      00218C 08               [12]  670 	inc	r0
      00218D E6               [12]  671 	mov	a,@r0
      00218E 64 80            [12]  672 	xrl	a,#0x80
      002190 94 80            [12]  673 	subb	a,#0x80
      002192 50 03            [24]  674 	jnc	00164$
      002194 02 21 11         [24]  675 	ljmp	00116$
      002197                        676 00164$:
                                    677 ;	life.c:86: printstr("\033[?25h");
      002197 90 31 1A         [24]  678 	mov	dptr,#___str_5
      00219A 75 F0 80         [24]  679 	mov	b,#0x80
      00219D 12 2B 2E         [24]  680 	lcall	_printstr
      0021A0                        681 00113$:
                                    682 ;	life.c:89: return;
                                    683 ;	life.c:90: }
      0021A0 D0 10            [24]  684 	pop	_bp
      0021A2 22               [24]  685 	ret
                                    686 ;------------------------------------------------------------
                                    687 ;Allocation info for local variables in function 'main'
                                    688 ;------------------------------------------------------------
                                    689 ;c                         Allocated to registers r6 r7 
                                    690 ;nbits                     Allocated to registers r4 r5 
                                    691 ;c                         Allocated to stack - _bp +10
                                    692 ;sloc0                     Allocated to stack - _bp +1
                                    693 ;sloc1                     Allocated to stack - _bp +2
                                    694 ;sloc2                     Allocated to stack - _bp +4
                                    695 ;sloc3                     Allocated to stack - _bp +6
                                    696 ;sloc4                     Allocated to stack - _bp +8
                                    697 ;------------------------------------------------------------
                                    698 ;	life.c:194: void main(void) {
                                    699 ;	-----------------------------------------
                                    700 ;	 function main
                                    701 ;	-----------------------------------------
      0021A3                        702 _main:
      0021A3 C0 10            [24]  703 	push	_bp
      0021A5 E5 81            [12]  704 	mov	a,sp
      0021A7 F5 10            [12]  705 	mov	_bp,a
      0021A9 24 0B            [12]  706 	add	a,#0x0b
      0021AB F5 81            [12]  707 	mov	sp,a
                                    708 ;	life.c:197: IT0 = 1;
                                    709 ;	assignBit
      0021AD D2 88            [12]  710 	setb	_IT0
                                    711 ;	life.c:198: IT1 = 1;
                                    712 ;	assignBit
      0021AF D2 8A            [12]  713 	setb	_IT1
                                    714 ;	life.c:199: EX0 = 1;
                                    715 ;	assignBit
      0021B1 D2 A8            [12]  716 	setb	_EX0
                                    717 ;	life.c:200: EX1 = 1;
                                    718 ;	assignBit
      0021B3 D2 AA            [12]  719 	setb	_EX1
                                    720 ;	life.c:201: EA = 1;	
                                    721 ;	assignBit
      0021B5 D2 AF            [12]  722 	setb	_EA
                                    723 ;	life.c:202: P1_7 = 0;
                                    724 ;	assignBit
      0021B7 C2 97            [12]  725 	clr	_P1_7
                                    726 ;	life.c:207: __endasm;
      0021B9 00               [12]  727 	nop
      0021BA 00               [12]  728 	nop
      0021BB 00               [12]  729 	nop
                                    730 ;	life.c:209: srand(RND);
      0021BC 90 E0 00         [24]  731 	mov	dptr,#_RND
      0021BF E0               [24]  732 	movx	a,@dptr
      0021C0 FE               [12]  733 	mov	r6,a
      0021C1 A3               [24]  734 	inc	dptr
      0021C2 E0               [24]  735 	movx	a,@dptr
      0021C3 FF               [12]  736 	mov	r7,a
      0021C4 8E 82            [24]  737 	mov	dpl,r6
      0021C6 8F 83            [24]  738 	mov	dph,r7
      0021C8 12 2A E4         [24]  739 	lcall	_srand
                                    740 ;	life.c:211: OE76 = OE76_0;
      0021CB 78 23            [12]  741 	mov	r0,#_OE76
      0021CD 76 3F            [12]  742 	mov	@r0,#0x3f
                                    743 ;	life.c:212: flashOE();
      0021CF 12 20 8D         [24]  744 	lcall	_flashOE
                                    745 ;	life.c:49: gen = 0ul;
      0021D2 78 2B            [12]  746 	mov	r0,#_gen
      0021D4 E4               [12]  747 	clr	a
      0021D5 F6               [12]  748 	mov	@r0,a
      0021D6 08               [12]  749 	inc	r0
      0021D7 F6               [12]  750 	mov	@r0,a
      0021D8 08               [12]  751 	inc	r0
      0021D9 F6               [12]  752 	mov	@r0,a
      0021DA 08               [12]  753 	inc	r0
      0021DB F6               [12]  754 	mov	@r0,a
                                    755 ;	life.c:50: genc2 = 0ul;
      0021DC 78 2F            [12]  756 	mov	r0,#_genc2
      0021DE F6               [12]  757 	mov	@r0,a
      0021DF 08               [12]  758 	inc	r0
      0021E0 F6               [12]  759 	mov	@r0,a
      0021E1 08               [12]  760 	inc	r0
      0021E2 F6               [12]  761 	mov	@r0,a
      0021E3 08               [12]  762 	inc	r0
      0021E4 F6               [12]  763 	mov	@r0,a
                                    764 ;	life.c:51: c2set = 0;
      0021E5 78 33            [12]  765 	mov	r0,#_c2set
      0021E7 76 00            [12]  766 	mov	@r0,#0x00
                                    767 ;	life.c:215: pruni = 0;
      0021E9 78 34            [12]  768 	mov	r0,#_pruni
      0021EB 76 00            [12]  769 	mov	@r0,#0x00
                                    770 ;	life.c:217: printstr("\033[?25h\033[m");
      0021ED 90 31 3B         [24]  771 	mov	dptr,#___str_9
      0021F0 75 F0 80         [24]  772 	mov	b,#0x80
      0021F3 12 2B 2E         [24]  773 	lcall	_printstr
                                    774 ;	life.c:219: for (i0 = 0; !i0; ) {
      0021F6 78 21            [12]  775 	mov	r0,#_i0
      0021F8 76 00            [12]  776 	mov	@r0,#0x00
                                    777 ;	life.c:220: while (1) {
      0021FA                        778 00127$:
                                    779 ;	life.c:221: printstr("LIFE I L R O P S U");
      0021FA 90 31 45         [24]  780 	mov	dptr,#___str_10
      0021FD 75 F0 80         [24]  781 	mov	b,#0x80
      002200 12 2B 2E         [24]  782 	lcall	_printstr
                                    783 ;	life.c:222: putchar(pruni ? (int)'1' : (int)'0');
      002203 78 34            [12]  784 	mov	r0,#_pruni
      002205 E6               [12]  785 	mov	a,@r0
      002206 60 06            [24]  786 	jz	00239$
      002208 7E 31            [12]  787 	mov	r6,#0x31
      00220A 7F 00            [12]  788 	mov	r7,#0x00
      00220C 80 04            [24]  789 	sjmp	00240$
      00220E                        790 00239$:
      00220E 7E 30            [12]  791 	mov	r6,#0x30
      002210 7F 00            [12]  792 	mov	r7,#0x00
      002212                        793 00240$:
      002212 8E 82            [24]  794 	mov	dpl,r6
      002214 8F 83            [24]  795 	mov	dph,r7
      002216 12 2A FD         [24]  796 	lcall	_putchar
                                    797 ;	life.c:223: printstr(" B T\r\n");
      002219 90 31 58         [24]  798 	mov	dptr,#___str_11
      00221C 75 F0 80         [24]  799 	mov	b,#0x80
      00221F 12 2B 2E         [24]  800 	lcall	_printstr
                                    801 ;	life.c:224: c = toupper(getchar());
      002222 12 2B 07         [24]  802 	lcall	_getchar
      002225 12 2F AE         [24]  803 	lcall	_toupper
      002228 AE 82            [24]  804 	mov	r6,dpl
      00222A AF 83            [24]  805 	mov	r7,dph
                                    806 ;	life.c:225: if (i0 || (c == (int)'T')) goto term;
      00222C 78 21            [12]  807 	mov	r0,#_i0
      00222E E6               [12]  808 	mov	a,@r0
      00222F 60 03            [24]  809 	jz	00458$
      002231 02 2A 0C         [24]  810 	ljmp	00154$
      002234                        811 00458$:
      002234 BE 54 06         [24]  812 	cjne	r6,#0x54,00459$
      002237 BF 00 03         [24]  813 	cjne	r7,#0x00,00459$
      00223A 02 2A 0C         [24]  814 	ljmp	00154$
      00223D                        815 00459$:
                                    816 ;	life.c:226: else if ((c == (int)'I') || (c == (int)'L') || (c == (int)'R')) {
      00223D BE 49 05         [24]  817 	cjne	r6,#0x49,00460$
      002240 BF 00 02         [24]  818 	cjne	r7,#0x00,00460$
      002243 80 13            [24]  819 	sjmp	00117$
      002245                        820 00460$:
      002245 BE 4C 05         [24]  821 	cjne	r6,#0x4c,00461$
      002248 BF 00 02         [24]  822 	cjne	r7,#0x00,00461$
      00224B 80 0B            [24]  823 	sjmp	00117$
      00224D                        824 00461$:
      00224D BE 52 05         [24]  825 	cjne	r6,#0x52,00462$
      002250 BF 00 02         [24]  826 	cjne	r7,#0x00,00462$
      002253 80 03            [24]  827 	sjmp	00463$
      002255                        828 00462$:
      002255 02 24 80         [24]  829 	ljmp	00118$
      002258                        830 00463$:
      002258                        831 00117$:
                                    832 ;	life.c:227: if (c == (int)'L') loadiu();
      002258 BE 4C 05         [24]  833 	cjne	r6,#0x4c,00464$
      00225B BF 00 02         [24]  834 	cjne	r7,#0x00,00464$
      00225E 80 03            [24]  835 	sjmp	00465$
      002260                        836 00464$:
      002260 02 23 84         [24]  837 	ljmp	00104$
      002263                        838 00465$:
                                    839 ;	life.c:102: printstr("LOAD 0 1 ~ # <");
      002263 90 31 21         [24]  840 	mov	dptr,#___str_6
      002266 75 F0 80         [24]  841 	mov	b,#0x80
      002269 12 2B 2E         [24]  842 	lcall	_printstr
                                    843 ;	life.c:104: for (nbits = 0, y = 0; y < (H * W); y += W) {
      00226C 7C 00            [12]  844 	mov	r4,#0x00
      00226E 7D 00            [12]  845 	mov	r5,#0x00
      002270 78 26            [12]  846 	mov	r0,#_y
      002272 E4               [12]  847 	clr	a
      002273 F6               [12]  848 	mov	@r0,a
      002274 08               [12]  849 	inc	r0
      002275 F6               [12]  850 	mov	@r0,a
      002276                        851 00221$:
      002276 78 26            [12]  852 	mov	r0,#_y
      002278 C3               [12]  853 	clr	c
      002279 08               [12]  854 	inc	r0
      00227A E6               [12]  855 	mov	a,@r0
      00227B 64 80            [12]  856 	xrl	a,#0x80
      00227D 94 A4            [12]  857 	subb	a,#0xa4
      00227F 40 03            [24]  858 	jc	00466$
      002281 02 23 3F         [24]  859 	ljmp	00181$
      002284                        860 00466$:
                                    861 ;	life.c:105: for (x = 0; x < W; x++) {
      002284 78 24            [12]  862 	mov	r0,#_x
      002286 E4               [12]  863 	clr	a
      002287 F6               [12]  864 	mov	@r0,a
      002288 08               [12]  865 	inc	r0
      002289 F6               [12]  866 	mov	@r0,a
                                    867 ;	life.c:106: while (1) {
      00228A                        868 00168$:
                                    869 ;	life.c:107: c = getchar();
      00228A C0 05            [24]  870 	push	ar5
      00228C C0 04            [24]  871 	push	ar4
      00228E 12 2B 07         [24]  872 	lcall	_getchar
      002291 AA 82            [24]  873 	mov	r2,dpl
      002293 AB 83            [24]  874 	mov	r3,dph
      002295 D0 04            [24]  875 	pop	ar4
      002297 D0 05            [24]  876 	pop	ar5
      002299 E5 10            [12]  877 	mov	a,_bp
      00229B 24 0A            [12]  878 	add	a,#0x0a
      00229D F8               [12]  879 	mov	r0,a
      00229E A6 02            [24]  880 	mov	@r0,ar2
      0022A0 08               [12]  881 	inc	r0
      0022A1 A6 03            [24]  882 	mov	@r0,ar3
                                    883 ;	life.c:108: if (c == (int)'0') {
      0022A3 E5 10            [12]  884 	mov	a,_bp
      0022A5 24 0A            [12]  885 	add	a,#0x0a
      0022A7 F8               [12]  886 	mov	r0,a
      0022A8 B6 30 23         [24]  887 	cjne	@r0,#0x30,00166$
      0022AB 08               [12]  888 	inc	r0
      0022AC B6 00 1F         [24]  889 	cjne	@r0,#0x00,00166$
                                    890 ;	life.c:109: iu[y + x] = 0;
      0022AF 78 26            [12]  891 	mov	r0,#_y
      0022B1 79 24            [12]  892 	mov	r1,#_x
      0022B3 E7               [12]  893 	mov	a,@r1
      0022B4 26               [12]  894 	add	a,@r0
      0022B5 FA               [12]  895 	mov	r2,a
      0022B6 09               [12]  896 	inc	r1
      0022B7 E7               [12]  897 	mov	a,@r1
      0022B8 08               [12]  898 	inc	r0
      0022B9 36               [12]  899 	addc	a,@r0
      0022BA FB               [12]  900 	mov	r3,a
      0022BB EA               [12]  901 	mov	a,r2
      0022BC 24 00            [12]  902 	add	a,#_iu
      0022BE F5 82            [12]  903 	mov	dpl,a
      0022C0 EB               [12]  904 	mov	a,r3
      0022C1 34 40            [12]  905 	addc	a,#(_iu >> 8)
      0022C3 F5 83            [12]  906 	mov	dph,a
      0022C5 E4               [12]  907 	clr	a
      0022C6 F0               [24]  908 	movx	@dptr,a
                                    909 ;	life.c:110: nbits++;
      0022C7 0C               [12]  910 	inc	r4
                                    911 ;	life.c:111: break;
      0022C8 BC 00 4E         [24]  912 	cjne	r4,#0x00,00171$
      0022CB 0D               [12]  913 	inc	r5
      0022CC 80 4B            [24]  914 	sjmp	00171$
      0022CE                        915 00166$:
                                    916 ;	life.c:112: } else if (c == (int)'1') {
      0022CE E5 10            [12]  917 	mov	a,_bp
      0022D0 24 0A            [12]  918 	add	a,#0x0a
      0022D2 F8               [12]  919 	mov	r0,a
      0022D3 B6 31 24         [24]  920 	cjne	@r0,#0x31,00164$
      0022D6 08               [12]  921 	inc	r0
      0022D7 B6 00 20         [24]  922 	cjne	@r0,#0x00,00164$
                                    923 ;	life.c:113: iu[y + x] = 1;
      0022DA 78 26            [12]  924 	mov	r0,#_y
      0022DC 79 24            [12]  925 	mov	r1,#_x
      0022DE E7               [12]  926 	mov	a,@r1
      0022DF 26               [12]  927 	add	a,@r0
      0022E0 FA               [12]  928 	mov	r2,a
      0022E1 09               [12]  929 	inc	r1
      0022E2 E7               [12]  930 	mov	a,@r1
      0022E3 08               [12]  931 	inc	r0
      0022E4 36               [12]  932 	addc	a,@r0
      0022E5 FB               [12]  933 	mov	r3,a
      0022E6 EA               [12]  934 	mov	a,r2
      0022E7 24 00            [12]  935 	add	a,#_iu
      0022E9 F5 82            [12]  936 	mov	dpl,a
      0022EB EB               [12]  937 	mov	a,r3
      0022EC 34 40            [12]  938 	addc	a,#(_iu >> 8)
      0022EE F5 83            [12]  939 	mov	dph,a
      0022F0 74 01            [12]  940 	mov	a,#0x01
      0022F2 F0               [24]  941 	movx	@dptr,a
                                    942 ;	life.c:114: nbits++;
      0022F3 0C               [12]  943 	inc	r4
                                    944 ;	life.c:115: break;
      0022F4 BC 00 22         [24]  945 	cjne	r4,#0x00,00171$
      0022F7 0D               [12]  946 	inc	r5
      0022F8 80 1F            [24]  947 	sjmp	00171$
      0022FA                        948 00164$:
                                    949 ;	life.c:116: } else if (c == (int)'~') goto br_inner;
      0022FA E5 10            [12]  950 	mov	a,_bp
      0022FC 24 0A            [12]  951 	add	a,#0x0a
      0022FE F8               [12]  952 	mov	r0,a
      0022FF B6 7E 06         [24]  953 	cjne	@r0,#0x7e,00473$
      002302 08               [12]  954 	inc	r0
      002303 B6 00 02         [24]  955 	cjne	@r0,#0x00,00473$
      002306 80 2A            [24]  956 	sjmp	00222$
      002308                        957 00473$:
                                    958 ;	life.c:117: else if (c == (int)'#') goto out;
      002308 E5 10            [12]  959 	mov	a,_bp
      00230A 24 0A            [12]  960 	add	a,#0x0a
      00230C F8               [12]  961 	mov	r0,a
      00230D B6 23 06         [24]  962 	cjne	@r0,#0x23,00474$
      002310 08               [12]  963 	inc	r0
      002311 B6 00 02         [24]  964 	cjne	@r0,#0x00,00474$
      002314 80 29            [24]  965 	sjmp	00181$
      002316                        966 00474$:
      002316 02 22 8A         [24]  967 	ljmp	00168$
                                    968 ;	life.c:121: break;
      002319                        969 00171$:
                                    970 ;	life.c:105: for (x = 0; x < W; x++) {
      002319 78 24            [12]  971 	mov	r0,#_x
      00231B 06               [12]  972 	inc	@r0
      00231C B6 00 02         [24]  973 	cjne	@r0,#0x00,00475$
      00231F 08               [12]  974 	inc	r0
      002320 06               [12]  975 	inc	@r0
      002321                        976 00475$:
      002321 78 24            [12]  977 	mov	r0,#_x
      002323 C3               [12]  978 	clr	c
      002324 E6               [12]  979 	mov	a,@r0
      002325 94 30            [12]  980 	subb	a,#0x30
      002327 08               [12]  981 	inc	r0
      002328 E6               [12]  982 	mov	a,@r0
      002329 64 80            [12]  983 	xrl	a,#0x80
      00232B 94 80            [12]  984 	subb	a,#0x80
      00232D 50 03            [24]  985 	jnc	00476$
      00232F 02 22 8A         [24]  986 	ljmp	00168$
      002332                        987 00476$:
      002332                        988 00222$:
                                    989 ;	life.c:104: for (nbits = 0, y = 0; y < (H * W); y += W) {
      002332 78 26            [12]  990 	mov	r0,#_y
      002334 74 30            [12]  991 	mov	a,#0x30
      002336 26               [12]  992 	add	a,@r0
      002337 F6               [12]  993 	mov	@r0,a
      002338 E4               [12]  994 	clr	a
      002339 08               [12]  995 	inc	r0
      00233A 36               [12]  996 	addc	a,@r0
      00233B F6               [12]  997 	mov	@r0,a
      00233C 02 22 76         [24]  998 	ljmp	00221$
                                    999 ;	life.c:125: out:
      00233F                       1000 00181$:
                                   1001 ;	life.c:126: if (c != (int)'#')
      00233F E5 10            [12] 1002 	mov	a,_bp
      002341 24 0A            [12] 1003 	add	a,#0x0a
      002343 F8               [12] 1004 	mov	r0,a
      002344 B6 23 06         [24] 1005 	cjne	@r0,#0x23,00477$
      002347 08               [12] 1006 	inc	r0
      002348 B6 00 02         [24] 1007 	cjne	@r0,#0x00,00477$
      00234B 80 25            [24] 1008 	sjmp	00180$
      00234D                       1009 00477$:
                                   1010 ;	life.c:127: while (1) {
      00234D                       1011 00177$:
                                   1012 ;	life.c:128: c = getchar();
      00234D C0 05            [24] 1013 	push	ar5
      00234F C0 04            [24] 1014 	push	ar4
      002351 12 2B 07         [24] 1015 	lcall	_getchar
      002354 AA 82            [24] 1016 	mov	r2,dpl
      002356 AB 83            [24] 1017 	mov	r3,dph
      002358 D0 04            [24] 1018 	pop	ar4
      00235A D0 05            [24] 1019 	pop	ar5
      00235C E5 10            [12] 1020 	mov	a,_bp
      00235E 24 0A            [12] 1021 	add	a,#0x0a
      002360 F8               [12] 1022 	mov	r0,a
      002361 A6 02            [24] 1023 	mov	@r0,ar2
      002363 08               [12] 1024 	inc	r0
      002364 A6 03            [24] 1025 	mov	@r0,ar3
                                   1026 ;	life.c:129: if (c == (int)'#') break;
      002366 E5 10            [12] 1027 	mov	a,_bp
      002368 24 0A            [12] 1028 	add	a,#0x0a
      00236A F8               [12] 1029 	mov	r0,a
      00236B B6 23 DF         [24] 1030 	cjne	@r0,#0x23,00177$
      00236E 08               [12] 1031 	inc	r0
      00236F B6 00 DB         [24] 1032 	cjne	@r0,#0x00,00177$
      002372                       1033 00180$:
                                   1034 ;	life.c:131: print16x(nbits);
      002372 8C 82            [24] 1035 	mov	dpl,r4
      002374 8D 83            [24] 1036 	mov	dph,r5
      002376 12 2C 58         [24] 1037 	lcall	_print16x
                                   1038 ;	life.c:132: printstr(">\r\n");
      002379 90 31 30         [24] 1039 	mov	dptr,#___str_7
      00237C 75 F0 80         [24] 1040 	mov	b,#0x80
      00237F 12 2B 2E         [24] 1041 	lcall	_printstr
                                   1042 ;	life.c:227: if (c == (int)'L') loadiu();
      002382 80 79            [24] 1043 	sjmp	00105$
      002384                       1044 00104$:
                                   1045 ;	life.c:228: else if (c == (int)'R') loadriu();
      002384 BE 52 76         [24] 1046 	cjne	r6,#0x52,00105$
      002387 BF 00 73         [24] 1047 	cjne	r7,#0x00,00105$
                                   1048 ;	life.c:138: printstr("RANDOM");
      00238A 90 31 34         [24] 1049 	mov	dptr,#___str_8
      00238D 75 F0 80         [24] 1050 	mov	b,#0x80
      002390 12 2B 2E         [24] 1051 	lcall	_printstr
                                   1052 ;	life.c:140: for (y = 0; y < (H * W); y += W)
      002393 78 26            [12] 1053 	mov	r0,#_y
      002395 E4               [12] 1054 	clr	a
      002396 F6               [12] 1055 	mov	@r0,a
      002397 08               [12] 1056 	inc	r0
      002398 F6               [12] 1057 	mov	@r0,a
      002399                       1058 00225$:
                                   1059 ;	life.c:141: for (x = 0; x < W; x++)
      002399 78 24            [12] 1060 	mov	r0,#_x
      00239B E4               [12] 1061 	clr	a
      00239C F6               [12] 1062 	mov	@r0,a
      00239D 08               [12] 1063 	inc	r0
      00239E F6               [12] 1064 	mov	@r0,a
      00239F                       1065 00223$:
                                   1066 ;	life.c:142: iu[y + x] = rand() & 1;
      00239F 78 26            [12] 1067 	mov	r0,#_y
      0023A1 79 24            [12] 1068 	mov	r1,#_x
      0023A3 E7               [12] 1069 	mov	a,@r1
      0023A4 26               [12] 1070 	add	a,@r0
      0023A5 FC               [12] 1071 	mov	r4,a
      0023A6 09               [12] 1072 	inc	r1
      0023A7 E7               [12] 1073 	mov	a,@r1
      0023A8 08               [12] 1074 	inc	r0
      0023A9 36               [12] 1075 	addc	a,@r0
      0023AA FD               [12] 1076 	mov	r5,a
      0023AB EC               [12] 1077 	mov	a,r4
      0023AC 24 00            [12] 1078 	add	a,#_iu
      0023AE FC               [12] 1079 	mov	r4,a
      0023AF ED               [12] 1080 	mov	a,r5
      0023B0 34 40            [12] 1081 	addc	a,#(_iu >> 8)
      0023B2 FD               [12] 1082 	mov	r5,a
      0023B3 C0 05            [24] 1083 	push	ar5
      0023B5 C0 04            [24] 1084 	push	ar4
      0023B7 12 2A 20         [24] 1085 	lcall	_rand
      0023BA AA 82            [24] 1086 	mov	r2,dpl
      0023BC D0 04            [24] 1087 	pop	ar4
      0023BE D0 05            [24] 1088 	pop	ar5
      0023C0 53 02 01         [24] 1089 	anl	ar2,#0x01
      0023C3 8C 82            [24] 1090 	mov	dpl,r4
      0023C5 8D 83            [24] 1091 	mov	dph,r5
      0023C7 EA               [12] 1092 	mov	a,r2
      0023C8 F0               [24] 1093 	movx	@dptr,a
                                   1094 ;	life.c:141: for (x = 0; x < W; x++)
      0023C9 78 24            [12] 1095 	mov	r0,#_x
      0023CB 06               [12] 1096 	inc	@r0
      0023CC B6 00 02         [24] 1097 	cjne	@r0,#0x00,00482$
      0023CF 08               [12] 1098 	inc	r0
      0023D0 06               [12] 1099 	inc	@r0
      0023D1                       1100 00482$:
      0023D1 78 24            [12] 1101 	mov	r0,#_x
      0023D3 C3               [12] 1102 	clr	c
      0023D4 E6               [12] 1103 	mov	a,@r0
      0023D5 94 30            [12] 1104 	subb	a,#0x30
      0023D7 08               [12] 1105 	inc	r0
      0023D8 E6               [12] 1106 	mov	a,@r0
      0023D9 64 80            [12] 1107 	xrl	a,#0x80
      0023DB 94 80            [12] 1108 	subb	a,#0x80
      0023DD 40 C0            [24] 1109 	jc	00223$
                                   1110 ;	life.c:140: for (y = 0; y < (H * W); y += W)
      0023DF 78 26            [12] 1111 	mov	r0,#_y
      0023E1 74 30            [12] 1112 	mov	a,#0x30
      0023E3 26               [12] 1113 	add	a,@r0
      0023E4 F6               [12] 1114 	mov	@r0,a
      0023E5 E4               [12] 1115 	clr	a
      0023E6 08               [12] 1116 	inc	r0
      0023E7 36               [12] 1117 	addc	a,@r0
      0023E8 F6               [12] 1118 	mov	@r0,a
      0023E9 78 26            [12] 1119 	mov	r0,#_y
      0023EB C3               [12] 1120 	clr	c
      0023EC 08               [12] 1121 	inc	r0
      0023ED E6               [12] 1122 	mov	a,@r0
      0023EE 64 80            [12] 1123 	xrl	a,#0x80
      0023F0 94 A4            [12] 1124 	subb	a,#0xa4
      0023F2 40 A5            [24] 1125 	jc	00225$
                                   1126 ;	life.c:144: printstr("\r\n");
      0023F4 90 31 10         [24] 1127 	mov	dptr,#___str_3
      0023F7 75 F0 80         [24] 1128 	mov	b,#0x80
      0023FA 12 2B 2E         [24] 1129 	lcall	_printstr
                                   1130 ;	life.c:228: else if (c == (int)'R') loadriu();
      0023FD                       1131 00105$:
                                   1132 ;	life.c:93: memset(u, 0, sizeof (u));
      0023FD E4               [12] 1133 	clr	a
      0023FE C0 E0            [24] 1134 	push	acc
      002400 74 24            [12] 1135 	mov	a,#0x24
      002402 C0 E0            [24] 1136 	push	acc
      002404 E4               [12] 1137 	clr	a
      002405 C0 E0            [24] 1138 	push	acc
      002407 90 88 00         [24] 1139 	mov	dptr,#_u
      00240A 75 F0 00         [24] 1140 	mov	b,#0x00
      00240D 12 2F 44         [24] 1141 	lcall	_memset
      002410 15 81            [12] 1142 	dec	sp
      002412 15 81            [12] 1143 	dec	sp
      002414 15 81            [12] 1144 	dec	sp
                                   1145 ;	life.c:94: memset(pu, 0, sizeof (pu));
      002416 E4               [12] 1146 	clr	a
      002417 C0 E0            [24] 1147 	push	acc
      002419 74 24            [12] 1148 	mov	a,#0x24
      00241B C0 E0            [24] 1149 	push	acc
      00241D E4               [12] 1150 	clr	a
      00241E C0 E0            [24] 1151 	push	acc
      002420 90 64 00         [24] 1152 	mov	dptr,#_pu
      002423 75 F0 00         [24] 1153 	mov	b,#0x00
      002426 12 2F 44         [24] 1154 	lcall	_memset
      002429 15 81            [12] 1155 	dec	sp
      00242B 15 81            [12] 1156 	dec	sp
      00242D 15 81            [12] 1157 	dec	sp
                                   1158 ;	life.c:49: gen = 0ul;
      00242F 78 2B            [12] 1159 	mov	r0,#_gen
      002431 E4               [12] 1160 	clr	a
      002432 F6               [12] 1161 	mov	@r0,a
      002433 08               [12] 1162 	inc	r0
      002434 F6               [12] 1163 	mov	@r0,a
      002435 08               [12] 1164 	inc	r0
      002436 F6               [12] 1165 	mov	@r0,a
      002437 08               [12] 1166 	inc	r0
      002438 F6               [12] 1167 	mov	@r0,a
                                   1168 ;	life.c:50: genc2 = 0ul;
      002439 78 2F            [12] 1169 	mov	r0,#_genc2
      00243B F6               [12] 1170 	mov	@r0,a
      00243C 08               [12] 1171 	inc	r0
      00243D F6               [12] 1172 	mov	@r0,a
      00243E 08               [12] 1173 	inc	r0
      00243F F6               [12] 1174 	mov	@r0,a
      002440 08               [12] 1175 	inc	r0
      002441 F6               [12] 1176 	mov	@r0,a
                                   1177 ;	life.c:51: c2set = 0;
      002442 78 33            [12] 1178 	mov	r0,#_c2set
      002444 76 00            [12] 1179 	mov	@r0,#0x00
                                   1180 ;	life.c:231: memcpy(u, iu, sizeof (iu));
      002446 C0 E0            [24] 1181 	push	acc
      002448 74 24            [12] 1182 	mov	a,#0x24
      00244A C0 E0            [24] 1183 	push	acc
      00244C 74 00            [12] 1184 	mov	a,#_iu
      00244E C0 E0            [24] 1185 	push	acc
      002450 74 40            [12] 1186 	mov	a,#(_iu >> 8)
      002452 C0 E0            [24] 1187 	push	acc
      002454 E4               [12] 1188 	clr	a
      002455 C0 E0            [24] 1189 	push	acc
      002457 90 88 00         [24] 1190 	mov	dptr,#_u
      00245A 75 F0 00         [24] 1191 	mov	b,#0x00
      00245D 12 2E B1         [24] 1192 	lcall	___memcpy
      002460 E5 81            [12] 1193 	mov	a,sp
      002462 24 FB            [12] 1194 	add	a,#0xfb
      002464 F5 81            [12] 1195 	mov	sp,a
                                   1196 ;	life.c:232: show(PRUNI, u);
      002466 74 00            [12] 1197 	mov	a,#_u
      002468 C0 E0            [24] 1198 	push	acc
      00246A 74 88            [12] 1199 	mov	a,#(_u >> 8)
      00246C C0 E0            [24] 1200 	push	acc
      00246E E4               [12] 1201 	clr	a
      00246F C0 E0            [24] 1202 	push	acc
      002471 75 82 04         [24] 1203 	mov	dpl,#0x04
      002474 12 20 95         [24] 1204 	lcall	_show
      002477 15 81            [12] 1205 	dec	sp
      002479 15 81            [12] 1206 	dec	sp
      00247B 15 81            [12] 1207 	dec	sp
      00247D 02 21 FA         [24] 1208 	ljmp	00127$
      002480                       1209 00118$:
                                   1210 ;	life.c:233: } else if (c == (int)'O') show(PRUNI, iu);
      002480 BE 4F 1D         [24] 1211 	cjne	r6,#0x4f,00115$
      002483 BF 00 1A         [24] 1212 	cjne	r7,#0x00,00115$
      002486 74 00            [12] 1213 	mov	a,#_iu
      002488 C0 E0            [24] 1214 	push	acc
      00248A 74 40            [12] 1215 	mov	a,#(_iu >> 8)
      00248C C0 E0            [24] 1216 	push	acc
      00248E E4               [12] 1217 	clr	a
      00248F C0 E0            [24] 1218 	push	acc
      002491 75 82 04         [24] 1219 	mov	dpl,#0x04
      002494 12 20 95         [24] 1220 	lcall	_show
      002497 15 81            [12] 1221 	dec	sp
      002499 15 81            [12] 1222 	dec	sp
      00249B 15 81            [12] 1223 	dec	sp
      00249D 02 21 FA         [24] 1224 	ljmp	00127$
      0024A0                       1225 00115$:
                                   1226 ;	life.c:234: else if (c == (int)'P') show(PRHDR | PRUNI, u);
      0024A0 BE 50 1D         [24] 1227 	cjne	r6,#0x50,00112$
      0024A3 BF 00 1A         [24] 1228 	cjne	r7,#0x00,00112$
      0024A6 74 00            [12] 1229 	mov	a,#_u
      0024A8 C0 E0            [24] 1230 	push	acc
      0024AA 74 88            [12] 1231 	mov	a,#(_u >> 8)
      0024AC C0 E0            [24] 1232 	push	acc
      0024AE E4               [12] 1233 	clr	a
      0024AF C0 E0            [24] 1234 	push	acc
      0024B1 75 82 06         [24] 1235 	mov	dpl,#0x06
      0024B4 12 20 95         [24] 1236 	lcall	_show
      0024B7 15 81            [12] 1237 	dec	sp
      0024B9 15 81            [12] 1238 	dec	sp
      0024BB 15 81            [12] 1239 	dec	sp
      0024BD 02 21 FA         [24] 1240 	ljmp	00127$
      0024C0                       1241 00112$:
                                   1242 ;	life.c:235: else if (c == (int)'U') pruni = !pruni;
      0024C0 BE 55 13         [24] 1243 	cjne	r6,#0x55,00109$
      0024C3 BF 00 10         [24] 1244 	cjne	r7,#0x00,00109$
      0024C6 78 34            [12] 1245 	mov	r0,#_pruni
      0024C8 E6               [12] 1246 	mov	a,@r0
      0024C9 B4 01 00         [24] 1247 	cjne	a,#0x01,00491$
      0024CC                       1248 00491$:
      0024CC 92 00            [24] 1249 	mov	b0,c
      0024CE 78 34            [12] 1250 	mov	r0,#_pruni
      0024D0 E4               [12] 1251 	clr	a
      0024D1 33               [12] 1252 	rlc	a
      0024D2 F6               [12] 1253 	mov	@r0,a
      0024D3 02 21 FA         [24] 1254 	ljmp	00127$
      0024D6                       1255 00109$:
                                   1256 ;	life.c:236: else if (c == (int)'S') break;
      0024D6 BE 53 05         [24] 1257 	cjne	r6,#0x53,00492$
      0024D9 BF 00 02         [24] 1258 	cjne	r7,#0x00,00492$
      0024DC 80 03            [24] 1259 	sjmp	00493$
      0024DE                       1260 00492$:
      0024DE 02 21 FA         [24] 1261 	ljmp	00127$
      0024E1                       1262 00493$:
                                   1263 ;	life.c:239: for (i1 = 0; !i0 && !i1; ) {
      0024E1 78 22            [12] 1264 	mov	r0,#_i1
      0024E3 76 00            [12] 1265 	mov	@r0,#0x00
      0024E5                       1266 00233$:
      0024E5 78 21            [12] 1267 	mov	r0,#_i0
      0024E7 E6               [12] 1268 	mov	a,@r0
      0024E8 60 03            [24] 1269 	jz	00494$
      0024EA 02 29 DF         [24] 1270 	ljmp	00150$
      0024ED                       1271 00494$:
      0024ED 78 22            [12] 1272 	mov	r0,#_i1
      0024EF E6               [12] 1273 	mov	a,@r0
      0024F0 60 03            [24] 1274 	jz	00495$
      0024F2 02 29 DF         [24] 1275 	ljmp	00150$
      0024F5                       1276 00495$:
                                   1277 ;	life.c:240: if (pruni) show(PRCLR | PRHDR | PRUNI, u);
      0024F5 78 34            [12] 1278 	mov	r0,#_pruni
      0024F7 E6               [12] 1279 	mov	a,@r0
      0024F8 60 19            [24] 1280 	jz	00130$
      0024FA 74 00            [12] 1281 	mov	a,#_u
      0024FC C0 E0            [24] 1282 	push	acc
      0024FE 74 88            [12] 1283 	mov	a,#(_u >> 8)
      002500 C0 E0            [24] 1284 	push	acc
      002502 E4               [12] 1285 	clr	a
      002503 C0 E0            [24] 1286 	push	acc
      002505 75 82 07         [24] 1287 	mov	dpl,#0x07
      002508 12 20 95         [24] 1288 	lcall	_show
      00250B 15 81            [12] 1289 	dec	sp
      00250D 15 81            [12] 1290 	dec	sp
      00250F 15 81            [12] 1291 	dec	sp
      002511 80 17            [24] 1292 	sjmp	00131$
      002513                       1293 00130$:
                                   1294 ;	life.c:241: else show(PRHDR, u);
      002513 74 00            [12] 1295 	mov	a,#_u
      002515 C0 E0            [24] 1296 	push	acc
      002517 74 88            [12] 1297 	mov	a,#(_u >> 8)
      002519 C0 E0            [24] 1298 	push	acc
      00251B E4               [12] 1299 	clr	a
      00251C C0 E0            [24] 1300 	push	acc
      00251E 75 82 02         [24] 1301 	mov	dpl,#0x02
      002521 12 20 95         [24] 1302 	lcall	_show
      002524 15 81            [12] 1303 	dec	sp
      002526 15 81            [12] 1304 	dec	sp
      002528 15 81            [12] 1305 	dec	sp
      00252A                       1306 00131$:
                                   1307 ;	life.c:57: gen++;
      00252A 78 2B            [12] 1308 	mov	r0,#_gen
      00252C 06               [12] 1309 	inc	@r0
      00252D B6 00 0C         [24] 1310 	cjne	@r0,#0x00,00497$
      002530 08               [12] 1311 	inc	r0
      002531 06               [12] 1312 	inc	@r0
      002532 B6 00 07         [24] 1313 	cjne	@r0,#0x00,00497$
      002535 08               [12] 1314 	inc	r0
      002536 06               [12] 1315 	inc	@r0
      002537 B6 00 02         [24] 1316 	cjne	@r0,#0x00,00497$
      00253A 08               [12] 1317 	inc	r0
      00253B 06               [12] 1318 	inc	@r0
      00253C                       1319 00497$:
                                   1320 ;	life.c:150: fixed = 0;
      00253C 78 29            [12] 1321 	mov	r0,#_fixed
      00253E 76 00            [12] 1322 	mov	@r0,#0x00
                                   1323 ;	life.c:151: cycle2 = 0;
      002540 78 2A            [12] 1324 	mov	r0,#_cycle2
      002542 76 00            [12] 1325 	mov	@r0,#0x00
                                   1326 ;	life.c:153: OE76 = OE76_0;
      002544 78 23            [12] 1327 	mov	r0,#_OE76
      002546 76 3F            [12] 1328 	mov	@r0,#0x3f
                                   1329 ;	life.c:154: flashOE();
      002548 12 20 8D         [24] 1330 	lcall	_flashOE
                                   1331 ;	life.c:156: for (y = 0; y < H; y++) {
      00254B 78 26            [12] 1332 	mov	r0,#_y
      00254D E4               [12] 1333 	clr	a
      00254E F6               [12] 1334 	mov	@r0,a
      00254F 08               [12] 1335 	inc	r0
      002550 F6               [12] 1336 	mov	@r0,a
      002551                       1337 00229$:
                                   1338 ;	life.c:157: OE76 = OE76_0 | ((y & 0x0003u) << 6);
      002551 78 26            [12] 1339 	mov	r0,#_y
      002553 86 07            [24] 1340 	mov	ar7,@r0
      002555 53 07 03         [24] 1341 	anl	ar7,#0x03
      002558 EF               [12] 1342 	mov	a,r7
      002559 03               [12] 1343 	rr	a
      00255A 03               [12] 1344 	rr	a
      00255B 54 C0            [12] 1345 	anl	a,#0xc0
      00255D FF               [12] 1346 	mov	r7,a
      00255E 78 23            [12] 1347 	mov	r0,#_OE76
      002560 74 3F            [12] 1348 	mov	a,#0x3f
      002562 4F               [12] 1349 	orl	a,r7
      002563 F6               [12] 1350 	mov	@r0,a
                                   1351 ;	life.c:158: flashOE();
      002564 12 20 8D         [24] 1352 	lcall	_flashOE
                                   1353 ;	life.c:159: for (x = 0; x < W; x++) {
      002567 78 24            [12] 1354 	mov	r0,#_x
      002569 E4               [12] 1355 	clr	a
      00256A F6               [12] 1356 	mov	@r0,a
      00256B 08               [12] 1357 	inc	r0
      00256C F6               [12] 1358 	mov	@r0,a
      00256D                       1359 00227$:
                                   1360 ;	life.c:160: n = -u[A2D(W, y, x)];
      00256D 78 26            [12] 1361 	mov	r0,#_y
      00256F E6               [12] 1362 	mov	a,@r0
      002570 C0 E0            [24] 1363 	push	acc
      002572 08               [12] 1364 	inc	r0
      002573 E6               [12] 1365 	mov	a,@r0
      002574 C0 E0            [24] 1366 	push	acc
      002576 90 00 30         [24] 1367 	mov	dptr,#0x0030
      002579 12 2E 13         [24] 1368 	lcall	__mulint
      00257C C8               [12] 1369 	xch	a,r0
      00257D E5 10            [12] 1370 	mov	a,_bp
      00257F 24 04            [12] 1371 	add	a,#0x04
      002581 C8               [12] 1372 	xch	a,r0
      002582 A6 82            [24] 1373 	mov	@r0,dpl
      002584 08               [12] 1374 	inc	r0
      002585 A6 83            [24] 1375 	mov	@r0,dph
      002587 15 81            [12] 1376 	dec	sp
      002589 15 81            [12] 1377 	dec	sp
      00258B E5 10            [12] 1378 	mov	a,_bp
      00258D 24 04            [12] 1379 	add	a,#0x04
      00258F F8               [12] 1380 	mov	r0,a
      002590 79 24            [12] 1381 	mov	r1,#_x
      002592 E7               [12] 1382 	mov	a,@r1
      002593 26               [12] 1383 	add	a,@r0
      002594 C0 E0            [24] 1384 	push	acc
      002596 09               [12] 1385 	inc	r1
      002597 E7               [12] 1386 	mov	a,@r1
      002598 08               [12] 1387 	inc	r0
      002599 36               [12] 1388 	addc	a,@r0
      00259A C0 E0            [24] 1389 	push	acc
      00259C E5 10            [12] 1390 	mov	a,_bp
      00259E 24 03            [12] 1391 	add	a,#0x03
      0025A0 F8               [12] 1392 	mov	r0,a
      0025A1 D0 E0            [24] 1393 	pop	acc
      0025A3 F6               [12] 1394 	mov	@r0,a
      0025A4 18               [12] 1395 	dec	r0
      0025A5 D0 E0            [24] 1396 	pop	acc
      0025A7 F6               [12] 1397 	mov	@r0,a
      0025A8 A8 10            [24] 1398 	mov	r0,_bp
      0025AA 08               [12] 1399 	inc	r0
      0025AB 08               [12] 1400 	inc	r0
      0025AC E6               [12] 1401 	mov	a,@r0
      0025AD 24 00            [12] 1402 	add	a,#_u
      0025AF F5 82            [12] 1403 	mov	dpl,a
      0025B1 08               [12] 1404 	inc	r0
      0025B2 E6               [12] 1405 	mov	a,@r0
      0025B3 34 88            [12] 1406 	addc	a,#(_u >> 8)
      0025B5 F5 83            [12] 1407 	mov	dph,a
      0025B7 E0               [24] 1408 	movx	a,@dptr
      0025B8 FB               [12] 1409 	mov	r3,a
      0025B9 A8 10            [24] 1410 	mov	r0,_bp
      0025BB 08               [12] 1411 	inc	r0
      0025BC C3               [12] 1412 	clr	c
      0025BD E4               [12] 1413 	clr	a
      0025BE 9B               [12] 1414 	subb	a,r3
      0025BF F6               [12] 1415 	mov	@r0,a
                                   1416 ;	life.c:165: UPDN(-1, -1);
      0025C0 78 26            [12] 1417 	mov	r0,#_y
      0025C2 74 BF            [12] 1418 	mov	a,#0xbf
      0025C4 26               [12] 1419 	add	a,@r0
      0025C5 FA               [12] 1420 	mov	r2,a
      0025C6 E4               [12] 1421 	clr	a
      0025C7 08               [12] 1422 	inc	r0
      0025C8 36               [12] 1423 	addc	a,@r0
      0025C9 FB               [12] 1424 	mov	r3,a
      0025CA 74 C0            [12] 1425 	mov	a,#0xc0
      0025CC C0 E0            [24] 1426 	push	acc
      0025CE E4               [12] 1427 	clr	a
      0025CF C0 E0            [24] 1428 	push	acc
      0025D1 8A 82            [24] 1429 	mov	dpl,r2
      0025D3 8B 83            [24] 1430 	mov	dph,r3
      0025D5 12 2F F1         [24] 1431 	lcall	__modsint
      0025D8 AA 82            [24] 1432 	mov	r2,dpl
      0025DA AB 83            [24] 1433 	mov	r3,dph
      0025DC 15 81            [12] 1434 	dec	sp
      0025DE 15 81            [12] 1435 	dec	sp
      0025E0 C0 02            [24] 1436 	push	ar2
      0025E2 C0 03            [24] 1437 	push	ar3
      0025E4 90 00 30         [24] 1438 	mov	dptr,#0x0030
      0025E7 12 2E 13         [24] 1439 	lcall	__mulint
      0025EA AA 82            [24] 1440 	mov	r2,dpl
      0025EC AB 83            [24] 1441 	mov	r3,dph
      0025EE 15 81            [12] 1442 	dec	sp
      0025F0 15 81            [12] 1443 	dec	sp
      0025F2 78 24            [12] 1444 	mov	r0,#_x
      0025F4 74 2F            [12] 1445 	mov	a,#0x2f
      0025F6 26               [12] 1446 	add	a,@r0
      0025F7 FC               [12] 1447 	mov	r4,a
      0025F8 E4               [12] 1448 	clr	a
      0025F9 08               [12] 1449 	inc	r0
      0025FA 36               [12] 1450 	addc	a,@r0
      0025FB FD               [12] 1451 	mov	r5,a
      0025FC C0 03            [24] 1452 	push	ar3
      0025FE C0 02            [24] 1453 	push	ar2
      002600 74 30            [12] 1454 	mov	a,#0x30
      002602 C0 E0            [24] 1455 	push	acc
      002604 E4               [12] 1456 	clr	a
      002605 C0 E0            [24] 1457 	push	acc
      002607 8C 82            [24] 1458 	mov	dpl,r4
      002609 8D 83            [24] 1459 	mov	dph,r5
      00260B 12 2F F1         [24] 1460 	lcall	__modsint
      00260E AC 82            [24] 1461 	mov	r4,dpl
      002610 AD 83            [24] 1462 	mov	r5,dph
      002612 15 81            [12] 1463 	dec	sp
      002614 15 81            [12] 1464 	dec	sp
      002616 D0 02            [24] 1465 	pop	ar2
      002618 D0 03            [24] 1466 	pop	ar3
      00261A EC               [12] 1467 	mov	a,r4
      00261B 2A               [12] 1468 	add	a,r2
      00261C FE               [12] 1469 	mov	r6,a
      00261D ED               [12] 1470 	mov	a,r5
      00261E 3B               [12] 1471 	addc	a,r3
      00261F FF               [12] 1472 	mov	r7,a
      002620 EE               [12] 1473 	mov	a,r6
      002621 24 00            [12] 1474 	add	a,#_u
      002623 F5 82            [12] 1475 	mov	dpl,a
      002625 EF               [12] 1476 	mov	a,r7
      002626 34 88            [12] 1477 	addc	a,#(_u >> 8)
      002628 F5 83            [12] 1478 	mov	dph,a
      00262A E0               [24] 1479 	movx	a,@dptr
      00262B FF               [12] 1480 	mov	r7,a
      00262C A8 10            [24] 1481 	mov	r0,_bp
      00262E 08               [12] 1482 	inc	r0
      00262F EF               [12] 1483 	mov	a,r7
      002630 26               [12] 1484 	add	a,@r0
      002631 F6               [12] 1485 	mov	@r0,a
                                   1486 ;	life.c:166: UPDN(-1, 0);
      002632 78 24            [12] 1487 	mov	r0,#_x
      002634 74 30            [12] 1488 	mov	a,#0x30
      002636 26               [12] 1489 	add	a,@r0
      002637 FE               [12] 1490 	mov	r6,a
      002638 E4               [12] 1491 	clr	a
      002639 08               [12] 1492 	inc	r0
      00263A 36               [12] 1493 	addc	a,@r0
      00263B FF               [12] 1494 	mov	r7,a
      00263C C0 05            [24] 1495 	push	ar5
      00263E C0 04            [24] 1496 	push	ar4
      002640 C0 03            [24] 1497 	push	ar3
      002642 C0 02            [24] 1498 	push	ar2
      002644 74 30            [12] 1499 	mov	a,#0x30
      002646 C0 E0            [24] 1500 	push	acc
      002648 E4               [12] 1501 	clr	a
      002649 C0 E0            [24] 1502 	push	acc
      00264B 8E 82            [24] 1503 	mov	dpl,r6
      00264D 8F 83            [24] 1504 	mov	dph,r7
      00264F 12 2F F1         [24] 1505 	lcall	__modsint
      002652 C8               [12] 1506 	xch	a,r0
      002653 E5 10            [12] 1507 	mov	a,_bp
      002655 24 06            [12] 1508 	add	a,#0x06
      002657 C8               [12] 1509 	xch	a,r0
      002658 A6 82            [24] 1510 	mov	@r0,dpl
      00265A 08               [12] 1511 	inc	r0
      00265B A6 83            [24] 1512 	mov	@r0,dph
      00265D 15 81            [12] 1513 	dec	sp
      00265F 15 81            [12] 1514 	dec	sp
      002661 D0 02            [24] 1515 	pop	ar2
      002663 D0 03            [24] 1516 	pop	ar3
      002665 E5 10            [12] 1517 	mov	a,_bp
      002667 24 06            [12] 1518 	add	a,#0x06
      002669 F8               [12] 1519 	mov	r0,a
      00266A E6               [12] 1520 	mov	a,@r0
      00266B 2A               [12] 1521 	add	a,r2
      00266C FE               [12] 1522 	mov	r6,a
      00266D 08               [12] 1523 	inc	r0
      00266E E6               [12] 1524 	mov	a,@r0
      00266F 3B               [12] 1525 	addc	a,r3
      002670 FF               [12] 1526 	mov	r7,a
      002671 EE               [12] 1527 	mov	a,r6
      002672 24 00            [12] 1528 	add	a,#_u
      002674 F5 82            [12] 1529 	mov	dpl,a
      002676 EF               [12] 1530 	mov	a,r7
      002677 34 88            [12] 1531 	addc	a,#(_u >> 8)
      002679 F5 83            [12] 1532 	mov	dph,a
      00267B E0               [24] 1533 	movx	a,@dptr
      00267C FF               [12] 1534 	mov	r7,a
      00267D A8 10            [24] 1535 	mov	r0,_bp
      00267F 08               [12] 1536 	inc	r0
      002680 EF               [12] 1537 	mov	a,r7
      002681 26               [12] 1538 	add	a,@r0
      002682 F6               [12] 1539 	mov	@r0,a
                                   1540 ;	life.c:167: UPDN(-1, 1);
      002683 78 24            [12] 1541 	mov	r0,#_x
      002685 74 31            [12] 1542 	mov	a,#0x31
      002687 26               [12] 1543 	add	a,@r0
      002688 FE               [12] 1544 	mov	r6,a
      002689 E4               [12] 1545 	clr	a
      00268A 08               [12] 1546 	inc	r0
      00268B 36               [12] 1547 	addc	a,@r0
      00268C FF               [12] 1548 	mov	r7,a
      00268D C0 03            [24] 1549 	push	ar3
      00268F C0 02            [24] 1550 	push	ar2
      002691 74 30            [12] 1551 	mov	a,#0x30
      002693 C0 E0            [24] 1552 	push	acc
      002695 E4               [12] 1553 	clr	a
      002696 C0 E0            [24] 1554 	push	acc
      002698 8E 82            [24] 1555 	mov	dpl,r6
      00269A 8F 83            [24] 1556 	mov	dph,r7
      00269C 12 2F F1         [24] 1557 	lcall	__modsint
      00269F AE 82            [24] 1558 	mov	r6,dpl
      0026A1 AF 83            [24] 1559 	mov	r7,dph
      0026A3 15 81            [12] 1560 	dec	sp
      0026A5 15 81            [12] 1561 	dec	sp
      0026A7 D0 02            [24] 1562 	pop	ar2
      0026A9 D0 03            [24] 1563 	pop	ar3
      0026AB D0 04            [24] 1564 	pop	ar4
      0026AD D0 05            [24] 1565 	pop	ar5
      0026AF EE               [12] 1566 	mov	a,r6
      0026B0 2A               [12] 1567 	add	a,r2
      0026B1 FA               [12] 1568 	mov	r2,a
      0026B2 EF               [12] 1569 	mov	a,r7
      0026B3 3B               [12] 1570 	addc	a,r3
      0026B4 FB               [12] 1571 	mov	r3,a
      0026B5 EA               [12] 1572 	mov	a,r2
      0026B6 24 00            [12] 1573 	add	a,#_u
      0026B8 F5 82            [12] 1574 	mov	dpl,a
      0026BA EB               [12] 1575 	mov	a,r3
      0026BB 34 88            [12] 1576 	addc	a,#(_u >> 8)
      0026BD F5 83            [12] 1577 	mov	dph,a
      0026BF E0               [24] 1578 	movx	a,@dptr
      0026C0 FB               [12] 1579 	mov	r3,a
      0026C1 A8 10            [24] 1580 	mov	r0,_bp
      0026C3 08               [12] 1581 	inc	r0
      0026C4 EB               [12] 1582 	mov	a,r3
      0026C5 26               [12] 1583 	add	a,@r0
      0026C6 F6               [12] 1584 	mov	@r0,a
                                   1585 ;	life.c:168: UPDN(0, -1);
      0026C7 78 26            [12] 1586 	mov	r0,#_y
      0026C9 74 C0            [12] 1587 	mov	a,#0xc0
      0026CB 26               [12] 1588 	add	a,@r0
      0026CC FA               [12] 1589 	mov	r2,a
      0026CD E4               [12] 1590 	clr	a
      0026CE 08               [12] 1591 	inc	r0
      0026CF 36               [12] 1592 	addc	a,@r0
      0026D0 FB               [12] 1593 	mov	r3,a
      0026D1 C0 07            [24] 1594 	push	ar7
      0026D3 C0 06            [24] 1595 	push	ar6
      0026D5 C0 05            [24] 1596 	push	ar5
      0026D7 C0 04            [24] 1597 	push	ar4
      0026D9 74 C0            [12] 1598 	mov	a,#0xc0
      0026DB C0 E0            [24] 1599 	push	acc
      0026DD E4               [12] 1600 	clr	a
      0026DE C0 E0            [24] 1601 	push	acc
      0026E0 8A 82            [24] 1602 	mov	dpl,r2
      0026E2 8B 83            [24] 1603 	mov	dph,r3
      0026E4 12 2F F1         [24] 1604 	lcall	__modsint
      0026E7 AA 82            [24] 1605 	mov	r2,dpl
      0026E9 AB 83            [24] 1606 	mov	r3,dph
      0026EB 15 81            [12] 1607 	dec	sp
      0026ED 15 81            [12] 1608 	dec	sp
      0026EF C0 02            [24] 1609 	push	ar2
      0026F1 C0 03            [24] 1610 	push	ar3
      0026F3 90 00 30         [24] 1611 	mov	dptr,#0x0030
      0026F6 12 2E 13         [24] 1612 	lcall	__mulint
      0026F9 C8               [12] 1613 	xch	a,r0
      0026FA E5 10            [12] 1614 	mov	a,_bp
      0026FC 24 08            [12] 1615 	add	a,#0x08
      0026FE C8               [12] 1616 	xch	a,r0
      0026FF A6 82            [24] 1617 	mov	@r0,dpl
      002701 08               [12] 1618 	inc	r0
      002702 A6 83            [24] 1619 	mov	@r0,dph
      002704 15 81            [12] 1620 	dec	sp
      002706 15 81            [12] 1621 	dec	sp
      002708 D0 04            [24] 1622 	pop	ar4
      00270A D0 05            [24] 1623 	pop	ar5
      00270C D0 06            [24] 1624 	pop	ar6
      00270E D0 07            [24] 1625 	pop	ar7
      002710 E5 10            [12] 1626 	mov	a,_bp
      002712 24 08            [12] 1627 	add	a,#0x08
      002714 F8               [12] 1628 	mov	r0,a
      002715 EC               [12] 1629 	mov	a,r4
      002716 26               [12] 1630 	add	a,@r0
      002717 FA               [12] 1631 	mov	r2,a
      002718 ED               [12] 1632 	mov	a,r5
      002719 08               [12] 1633 	inc	r0
      00271A 36               [12] 1634 	addc	a,@r0
      00271B FB               [12] 1635 	mov	r3,a
      00271C EA               [12] 1636 	mov	a,r2
      00271D 24 00            [12] 1637 	add	a,#_u
      00271F F5 82            [12] 1638 	mov	dpl,a
      002721 EB               [12] 1639 	mov	a,r3
      002722 34 88            [12] 1640 	addc	a,#(_u >> 8)
      002724 F5 83            [12] 1641 	mov	dph,a
      002726 E0               [24] 1642 	movx	a,@dptr
      002727 FB               [12] 1643 	mov	r3,a
      002728 A8 10            [24] 1644 	mov	r0,_bp
      00272A 08               [12] 1645 	inc	r0
      00272B EB               [12] 1646 	mov	a,r3
      00272C 26               [12] 1647 	add	a,@r0
      00272D F6               [12] 1648 	mov	@r0,a
                                   1649 ;	life.c:169: UPDN(0, 0);
      00272E E5 10            [12] 1650 	mov	a,_bp
      002730 24 08            [12] 1651 	add	a,#0x08
      002732 F8               [12] 1652 	mov	r0,a
      002733 E5 10            [12] 1653 	mov	a,_bp
      002735 24 06            [12] 1654 	add	a,#0x06
      002737 F9               [12] 1655 	mov	r1,a
      002738 E7               [12] 1656 	mov	a,@r1
      002739 26               [12] 1657 	add	a,@r0
      00273A FA               [12] 1658 	mov	r2,a
      00273B 09               [12] 1659 	inc	r1
      00273C E7               [12] 1660 	mov	a,@r1
      00273D 08               [12] 1661 	inc	r0
      00273E 36               [12] 1662 	addc	a,@r0
      00273F FB               [12] 1663 	mov	r3,a
      002740 EA               [12] 1664 	mov	a,r2
      002741 24 00            [12] 1665 	add	a,#_u
      002743 F5 82            [12] 1666 	mov	dpl,a
      002745 EB               [12] 1667 	mov	a,r3
      002746 34 88            [12] 1668 	addc	a,#(_u >> 8)
      002748 F5 83            [12] 1669 	mov	dph,a
      00274A E0               [24] 1670 	movx	a,@dptr
      00274B FB               [12] 1671 	mov	r3,a
      00274C A8 10            [24] 1672 	mov	r0,_bp
      00274E 08               [12] 1673 	inc	r0
      00274F EB               [12] 1674 	mov	a,r3
      002750 26               [12] 1675 	add	a,@r0
      002751 F6               [12] 1676 	mov	@r0,a
                                   1677 ;	life.c:170: UPDN(0, 1);
      002752 E5 10            [12] 1678 	mov	a,_bp
      002754 24 08            [12] 1679 	add	a,#0x08
      002756 F8               [12] 1680 	mov	r0,a
      002757 EE               [12] 1681 	mov	a,r6
      002758 26               [12] 1682 	add	a,@r0
      002759 FA               [12] 1683 	mov	r2,a
      00275A EF               [12] 1684 	mov	a,r7
      00275B 08               [12] 1685 	inc	r0
      00275C 36               [12] 1686 	addc	a,@r0
      00275D FB               [12] 1687 	mov	r3,a
      00275E EA               [12] 1688 	mov	a,r2
      00275F 24 00            [12] 1689 	add	a,#_u
      002761 F5 82            [12] 1690 	mov	dpl,a
      002763 EB               [12] 1691 	mov	a,r3
      002764 34 88            [12] 1692 	addc	a,#(_u >> 8)
      002766 F5 83            [12] 1693 	mov	dph,a
      002768 E0               [24] 1694 	movx	a,@dptr
      002769 FB               [12] 1695 	mov	r3,a
      00276A A8 10            [24] 1696 	mov	r0,_bp
      00276C 08               [12] 1697 	inc	r0
      00276D E5 10            [12] 1698 	mov	a,_bp
      00276F 24 08            [12] 1699 	add	a,#0x08
      002771 F9               [12] 1700 	mov	r1,a
      002772 EB               [12] 1701 	mov	a,r3
      002773 26               [12] 1702 	add	a,@r0
      002774 F7               [12] 1703 	mov	@r1,a
                                   1704 ;	life.c:171: UPDN(1, -1);
      002775 78 26            [12] 1705 	mov	r0,#_y
      002777 74 C1            [12] 1706 	mov	a,#0xc1
      002779 26               [12] 1707 	add	a,@r0
      00277A FA               [12] 1708 	mov	r2,a
      00277B E4               [12] 1709 	clr	a
      00277C 08               [12] 1710 	inc	r0
      00277D 36               [12] 1711 	addc	a,@r0
      00277E FB               [12] 1712 	mov	r3,a
      00277F C0 07            [24] 1713 	push	ar7
      002781 C0 06            [24] 1714 	push	ar6
      002783 C0 05            [24] 1715 	push	ar5
      002785 C0 04            [24] 1716 	push	ar4
      002787 74 C0            [12] 1717 	mov	a,#0xc0
      002789 C0 E0            [24] 1718 	push	acc
      00278B E4               [12] 1719 	clr	a
      00278C C0 E0            [24] 1720 	push	acc
      00278E 8A 82            [24] 1721 	mov	dpl,r2
      002790 8B 83            [24] 1722 	mov	dph,r3
      002792 12 2F F1         [24] 1723 	lcall	__modsint
      002795 AA 82            [24] 1724 	mov	r2,dpl
      002797 AB 83            [24] 1725 	mov	r3,dph
      002799 15 81            [12] 1726 	dec	sp
      00279B 15 81            [12] 1727 	dec	sp
      00279D C0 02            [24] 1728 	push	ar2
      00279F C0 03            [24] 1729 	push	ar3
      0027A1 90 00 30         [24] 1730 	mov	dptr,#0x0030
      0027A4 12 2E 13         [24] 1731 	lcall	__mulint
      0027A7 AA 82            [24] 1732 	mov	r2,dpl
      0027A9 AB 83            [24] 1733 	mov	r3,dph
      0027AB 15 81            [12] 1734 	dec	sp
      0027AD 15 81            [12] 1735 	dec	sp
      0027AF D0 04            [24] 1736 	pop	ar4
      0027B1 D0 05            [24] 1737 	pop	ar5
      0027B3 D0 06            [24] 1738 	pop	ar6
      0027B5 D0 07            [24] 1739 	pop	ar7
      0027B7 EC               [12] 1740 	mov	a,r4
      0027B8 2A               [12] 1741 	add	a,r2
      0027B9 FC               [12] 1742 	mov	r4,a
      0027BA ED               [12] 1743 	mov	a,r5
      0027BB 3B               [12] 1744 	addc	a,r3
      0027BC FD               [12] 1745 	mov	r5,a
      0027BD EC               [12] 1746 	mov	a,r4
      0027BE 24 00            [12] 1747 	add	a,#_u
      0027C0 F5 82            [12] 1748 	mov	dpl,a
      0027C2 ED               [12] 1749 	mov	a,r5
      0027C3 34 88            [12] 1750 	addc	a,#(_u >> 8)
      0027C5 F5 83            [12] 1751 	mov	dph,a
      0027C7 E0               [24] 1752 	movx	a,@dptr
      0027C8 FD               [12] 1753 	mov	r5,a
      0027C9 E5 10            [12] 1754 	mov	a,_bp
      0027CB 24 08            [12] 1755 	add	a,#0x08
      0027CD F8               [12] 1756 	mov	r0,a
      0027CE E5 10            [12] 1757 	mov	a,_bp
      0027D0 24 08            [12] 1758 	add	a,#0x08
      0027D2 F9               [12] 1759 	mov	r1,a
      0027D3 ED               [12] 1760 	mov	a,r5
      0027D4 26               [12] 1761 	add	a,@r0
      0027D5 F7               [12] 1762 	mov	@r1,a
                                   1763 ;	life.c:172: UPDN(1, 0);
      0027D6 E5 10            [12] 1764 	mov	a,_bp
      0027D8 24 06            [12] 1765 	add	a,#0x06
      0027DA F8               [12] 1766 	mov	r0,a
      0027DB E6               [12] 1767 	mov	a,@r0
      0027DC 2A               [12] 1768 	add	a,r2
      0027DD FC               [12] 1769 	mov	r4,a
      0027DE 08               [12] 1770 	inc	r0
      0027DF E6               [12] 1771 	mov	a,@r0
      0027E0 3B               [12] 1772 	addc	a,r3
      0027E1 FD               [12] 1773 	mov	r5,a
      0027E2 EC               [12] 1774 	mov	a,r4
      0027E3 24 00            [12] 1775 	add	a,#_u
      0027E5 F5 82            [12] 1776 	mov	dpl,a
      0027E7 ED               [12] 1777 	mov	a,r5
      0027E8 34 88            [12] 1778 	addc	a,#(_u >> 8)
      0027EA F5 83            [12] 1779 	mov	dph,a
      0027EC E0               [24] 1780 	movx	a,@dptr
      0027ED FD               [12] 1781 	mov	r5,a
      0027EE E5 10            [12] 1782 	mov	a,_bp
      0027F0 24 08            [12] 1783 	add	a,#0x08
      0027F2 F8               [12] 1784 	mov	r0,a
      0027F3 ED               [12] 1785 	mov	a,r5
      0027F4 26               [12] 1786 	add	a,@r0
      0027F5 FD               [12] 1787 	mov	r5,a
                                   1788 ;	life.c:173: UPDN(1, 1);
      0027F6 EE               [12] 1789 	mov	a,r6
      0027F7 2A               [12] 1790 	add	a,r2
      0027F8 FE               [12] 1791 	mov	r6,a
      0027F9 EF               [12] 1792 	mov	a,r7
      0027FA 3B               [12] 1793 	addc	a,r3
      0027FB FF               [12] 1794 	mov	r7,a
      0027FC EE               [12] 1795 	mov	a,r6
      0027FD 24 00            [12] 1796 	add	a,#_u
      0027FF F5 82            [12] 1797 	mov	dpl,a
      002801 EF               [12] 1798 	mov	a,r7
      002802 34 88            [12] 1799 	addc	a,#(_u >> 8)
      002804 F5 83            [12] 1800 	mov	dph,a
      002806 E0               [24] 1801 	movx	a,@dptr
      002807 2D               [12] 1802 	add	a,r5
      002808 FF               [12] 1803 	mov	r7,a
      002809 78 28            [12] 1804 	mov	r0,#_n
      00280B A6 07            [24] 1805 	mov	@r0,ar7
                                   1806 ;	life.c:176: nu[A2D(W, y, x)] = (n == 3) || ((n == 2) && u[A2D(W, y, x)]);
      00280D A8 10            [24] 1807 	mov	r0,_bp
      00280F 08               [12] 1808 	inc	r0
      002810 08               [12] 1809 	inc	r0
      002811 E6               [12] 1810 	mov	a,@r0
      002812 24 00            [12] 1811 	add	a,#_nu
      002814 FD               [12] 1812 	mov	r5,a
      002815 08               [12] 1813 	inc	r0
      002816 E6               [12] 1814 	mov	a,@r0
      002817 34 AC            [12] 1815 	addc	a,#(_nu >> 8)
      002819 FE               [12] 1816 	mov	r6,a
      00281A BF 03 02         [24] 1817 	cjne	r7,#0x03,00498$
      00281D 80 25            [24] 1818 	sjmp	00242$
      00281F                       1819 00498$:
      00281F BF 02 1E         [24] 1820 	cjne	r7,#0x02,00241$
      002822 E5 10            [12] 1821 	mov	a,_bp
      002824 24 04            [12] 1822 	add	a,#0x04
      002826 F8               [12] 1823 	mov	r0,a
      002827 79 24            [12] 1824 	mov	r1,#_x
      002829 E7               [12] 1825 	mov	a,@r1
      00282A 26               [12] 1826 	add	a,@r0
      00282B FC               [12] 1827 	mov	r4,a
      00282C 09               [12] 1828 	inc	r1
      00282D E7               [12] 1829 	mov	a,@r1
      00282E 08               [12] 1830 	inc	r0
      00282F 36               [12] 1831 	addc	a,@r0
      002830 FF               [12] 1832 	mov	r7,a
      002831 EC               [12] 1833 	mov	a,r4
      002832 24 00            [12] 1834 	add	a,#_u
      002834 FC               [12] 1835 	mov	r4,a
      002835 EF               [12] 1836 	mov	a,r7
      002836 34 88            [12] 1837 	addc	a,#(_u >> 8)
      002838 FF               [12] 1838 	mov	r7,a
      002839 8C 82            [24] 1839 	mov	dpl,r4
      00283B 8F 83            [24] 1840 	mov	dph,r7
      00283D E0               [24] 1841 	movx	a,@dptr
      00283E 70 04            [24] 1842 	jnz	00242$
      002840                       1843 00241$:
                                   1844 ;	assignBit
      002840 C2 00            [12] 1845 	clr	b0
      002842 80 02            [24] 1846 	sjmp	00243$
      002844                       1847 00242$:
                                   1848 ;	assignBit
      002844 D2 00            [12] 1849 	setb	b0
      002846                       1850 00243$:
      002846 A2 00            [12] 1851 	mov	c,b0
      002848 E4               [12] 1852 	clr	a
      002849 33               [12] 1853 	rlc	a
      00284A 8D 82            [24] 1854 	mov	dpl,r5
      00284C 8E 83            [24] 1855 	mov	dph,r6
      00284E F0               [24] 1856 	movx	@dptr,a
                                   1857 ;	life.c:177: cycle2 |= pu[A2D(W, y, x)] ^ nu[A2D(W, y, x)];
      00284F 78 26            [12] 1858 	mov	r0,#_y
      002851 E6               [12] 1859 	mov	a,@r0
      002852 C0 E0            [24] 1860 	push	acc
      002854 08               [12] 1861 	inc	r0
      002855 E6               [12] 1862 	mov	a,@r0
      002856 C0 E0            [24] 1863 	push	acc
      002858 90 00 30         [24] 1864 	mov	dptr,#0x0030
      00285B 12 2E 13         [24] 1865 	lcall	__mulint
      00285E AE 82            [24] 1866 	mov	r6,dpl
      002860 AF 83            [24] 1867 	mov	r7,dph
      002862 15 81            [12] 1868 	dec	sp
      002864 15 81            [12] 1869 	dec	sp
      002866 78 24            [12] 1870 	mov	r0,#_x
      002868 E6               [12] 1871 	mov	a,@r0
      002869 2E               [12] 1872 	add	a,r6
      00286A FE               [12] 1873 	mov	r6,a
      00286B 08               [12] 1874 	inc	r0
      00286C E6               [12] 1875 	mov	a,@r0
      00286D 3F               [12] 1876 	addc	a,r7
      00286E FF               [12] 1877 	mov	r7,a
      00286F EE               [12] 1878 	mov	a,r6
      002870 24 00            [12] 1879 	add	a,#_pu
      002872 F5 82            [12] 1880 	mov	dpl,a
      002874 EF               [12] 1881 	mov	a,r7
      002875 34 64            [12] 1882 	addc	a,#(_pu >> 8)
      002877 F5 83            [12] 1883 	mov	dph,a
      002879 E0               [24] 1884 	movx	a,@dptr
      00287A FD               [12] 1885 	mov	r5,a
      00287B EE               [12] 1886 	mov	a,r6
      00287C 24 00            [12] 1887 	add	a,#_nu
      00287E F5 82            [12] 1888 	mov	dpl,a
      002880 EF               [12] 1889 	mov	a,r7
      002881 34 AC            [12] 1890 	addc	a,#(_nu >> 8)
      002883 F5 83            [12] 1891 	mov	dph,a
      002885 E0               [24] 1892 	movx	a,@dptr
      002886 FC               [12] 1893 	mov	r4,a
      002887 6D               [12] 1894 	xrl	a,r5
      002888 78 2A            [12] 1895 	mov	r0,#_cycle2
      00288A 46               [12] 1896 	orl	a,@r0
      00288B F6               [12] 1897 	mov	@r0,a
                                   1898 ;	life.c:178: fixed |= u[A2D(W, y, x)] ^ nu[A2D(W, y, x)];
      00288C EE               [12] 1899 	mov	a,r6
      00288D 24 00            [12] 1900 	add	a,#_u
      00288F F5 82            [12] 1901 	mov	dpl,a
      002891 EF               [12] 1902 	mov	a,r7
      002892 34 88            [12] 1903 	addc	a,#(_u >> 8)
      002894 F5 83            [12] 1904 	mov	dph,a
      002896 E0               [24] 1905 	movx	a,@dptr
      002897 FF               [12] 1906 	mov	r7,a
      002898 EC               [12] 1907 	mov	a,r4
      002899 6F               [12] 1908 	xrl	a,r7
      00289A 78 29            [12] 1909 	mov	r0,#_fixed
      00289C 46               [12] 1910 	orl	a,@r0
      00289D F6               [12] 1911 	mov	@r0,a
                                   1912 ;	life.c:159: for (x = 0; x < W; x++) {
      00289E 78 24            [12] 1913 	mov	r0,#_x
      0028A0 06               [12] 1914 	inc	@r0
      0028A1 B6 00 02         [24] 1915 	cjne	@r0,#0x00,00502$
      0028A4 08               [12] 1916 	inc	r0
      0028A5 06               [12] 1917 	inc	@r0
      0028A6                       1918 00502$:
      0028A6 78 24            [12] 1919 	mov	r0,#_x
      0028A8 C3               [12] 1920 	clr	c
      0028A9 E6               [12] 1921 	mov	a,@r0
      0028AA 94 30            [12] 1922 	subb	a,#0x30
      0028AC 08               [12] 1923 	inc	r0
      0028AD E6               [12] 1924 	mov	a,@r0
      0028AE 64 80            [12] 1925 	xrl	a,#0x80
      0028B0 94 80            [12] 1926 	subb	a,#0x80
      0028B2 50 03            [24] 1927 	jnc	00503$
      0028B4 02 25 6D         [24] 1928 	ljmp	00227$
      0028B7                       1929 00503$:
                                   1930 ;	life.c:156: for (y = 0; y < H; y++) {
      0028B7 78 26            [12] 1931 	mov	r0,#_y
      0028B9 06               [12] 1932 	inc	@r0
      0028BA B6 00 02         [24] 1933 	cjne	@r0,#0x00,00504$
      0028BD 08               [12] 1934 	inc	r0
      0028BE 06               [12] 1935 	inc	@r0
      0028BF                       1936 00504$:
      0028BF 78 26            [12] 1937 	mov	r0,#_y
      0028C1 C3               [12] 1938 	clr	c
      0028C2 E6               [12] 1939 	mov	a,@r0
      0028C3 94 C0            [12] 1940 	subb	a,#0xc0
      0028C5 08               [12] 1941 	inc	r0
      0028C6 E6               [12] 1942 	mov	a,@r0
      0028C7 64 80            [12] 1943 	xrl	a,#0x80
      0028C9 94 80            [12] 1944 	subb	a,#0x80
      0028CB 50 03            [24] 1945 	jnc	00505$
      0028CD 02 25 51         [24] 1946 	ljmp	00229$
      0028D0                       1947 00505$:
                                   1948 ;	life.c:182: OE76 = OE76_0;
      0028D0 78 23            [12] 1949 	mov	r0,#_OE76
      0028D2 76 3F            [12] 1950 	mov	@r0,#0x3f
                                   1951 ;	life.c:183: flashOE();
      0028D4 12 20 8D         [24] 1952 	lcall	_flashOE
                                   1953 ;	life.c:185: cycle2 = !cycle2;
      0028D7 78 2A            [12] 1954 	mov	r0,#_cycle2
      0028D9 E6               [12] 1955 	mov	a,@r0
      0028DA B4 01 00         [24] 1956 	cjne	a,#0x01,00506$
      0028DD                       1957 00506$:
      0028DD 92 00            [24] 1958 	mov	b0,c
      0028DF 78 2A            [12] 1959 	mov	r0,#_cycle2
      0028E1 E4               [12] 1960 	clr	a
      0028E2 33               [12] 1961 	rlc	a
      0028E3 F6               [12] 1962 	mov	@r0,a
                                   1963 ;	life.c:186: fixed = !fixed;
      0028E4 78 29            [12] 1964 	mov	r0,#_fixed
      0028E6 E6               [12] 1965 	mov	a,@r0
      0028E7 B4 01 00         [24] 1966 	cjne	a,#0x01,00507$
      0028EA                       1967 00507$:
      0028EA 92 00            [24] 1968 	mov	b0,c
      0028EC 78 29            [12] 1969 	mov	r0,#_fixed
      0028EE E4               [12] 1970 	clr	a
      0028EF 33               [12] 1971 	rlc	a
      0028F0 F6               [12] 1972 	mov	@r0,a
                                   1973 ;	life.c:188: memcpy(pu, u, sizeof (u));
      0028F1 E4               [12] 1974 	clr	a
      0028F2 C0 E0            [24] 1975 	push	acc
      0028F4 74 24            [12] 1976 	mov	a,#0x24
      0028F6 C0 E0            [24] 1977 	push	acc
      0028F8 74 00            [12] 1978 	mov	a,#_u
      0028FA C0 E0            [24] 1979 	push	acc
      0028FC 74 88            [12] 1980 	mov	a,#(_u >> 8)
      0028FE C0 E0            [24] 1981 	push	acc
      002900 E4               [12] 1982 	clr	a
      002901 C0 E0            [24] 1983 	push	acc
      002903 90 64 00         [24] 1984 	mov	dptr,#_pu
      002906 75 F0 00         [24] 1985 	mov	b,#0x00
      002909 12 2E B1         [24] 1986 	lcall	___memcpy
      00290C E5 81            [12] 1987 	mov	a,sp
      00290E 24 FB            [12] 1988 	add	a,#0xfb
      002910 F5 81            [12] 1989 	mov	sp,a
                                   1990 ;	life.c:189: memcpy(u, nu, sizeof (nu));
      002912 E4               [12] 1991 	clr	a
      002913 C0 E0            [24] 1992 	push	acc
      002915 74 24            [12] 1993 	mov	a,#0x24
      002917 C0 E0            [24] 1994 	push	acc
      002919 74 00            [12] 1995 	mov	a,#_nu
      00291B C0 E0            [24] 1996 	push	acc
      00291D 74 AC            [12] 1997 	mov	a,#(_nu >> 8)
      00291F C0 E0            [24] 1998 	push	acc
      002921 E4               [12] 1999 	clr	a
      002922 C0 E0            [24] 2000 	push	acc
      002924 90 88 00         [24] 2001 	mov	dptr,#_u
      002927 75 F0 00         [24] 2002 	mov	b,#0x00
      00292A 12 2E B1         [24] 2003 	lcall	___memcpy
      00292D E5 81            [12] 2004 	mov	a,sp
      00292F 24 FB            [12] 2005 	add	a,#0xfb
      002931 F5 81            [12] 2006 	mov	sp,a
                                   2007 ;	life.c:244: if (fixed || cycle2) {
      002933 78 29            [12] 2008 	mov	r0,#_fixed
      002935 E6               [12] 2009 	mov	a,@r0
      002936 70 05            [24] 2010 	jnz	00137$
      002938 78 2A            [12] 2011 	mov	r0,#_cycle2
      00293A E6               [12] 2012 	mov	a,@r0
      00293B 60 4A            [24] 2013 	jz	00138$
      00293D                       2014 00137$:
                                   2015 ;	life.c:245: if (fixed) {
      00293D 78 29            [12] 2016 	mov	r0,#_fixed
      00293F E6               [12] 2017 	mov	a,@r0
      002940 60 22            [24] 2018 	jz	00135$
                                   2019 ;	life.c:246: printstr("FIXED AT ");
      002942 90 31 5F         [24] 2020 	mov	dptr,#___str_12
      002945 75 F0 80         [24] 2021 	mov	b,#0x80
      002948 12 2B 2E         [24] 2022 	lcall	_printstr
                                   2023 ;	life.c:247: show(PRHDR, u);
      00294B 74 00            [12] 2024 	mov	a,#_u
      00294D C0 E0            [24] 2025 	push	acc
      00294F 74 88            [12] 2026 	mov	a,#(_u >> 8)
      002951 C0 E0            [24] 2027 	push	acc
      002953 E4               [12] 2028 	clr	a
      002954 C0 E0            [24] 2029 	push	acc
      002956 75 82 02         [24] 2030 	mov	dpl,#0x02
      002959 12 20 95         [24] 2031 	lcall	_show
      00295C 15 81            [12] 2032 	dec	sp
      00295E 15 81            [12] 2033 	dec	sp
      002960 15 81            [12] 2034 	dec	sp
                                   2035 ;	life.c:248: break;
      002962 80 7B            [24] 2036 	sjmp	00150$
      002964                       2037 00135$:
                                   2038 ;	life.c:249: } else if (!c2set) {
      002964 78 33            [12] 2039 	mov	r0,#_c2set
      002966 E6               [12] 2040 	mov	a,@r0
      002967 70 1E            [24] 2041 	jnz	00138$
                                   2042 ;	life.c:250: genc2 = gen;
      002969 78 2B            [12] 2043 	mov	r0,#_gen
      00296B 86 04            [24] 2044 	mov	ar4,@r0
      00296D 08               [12] 2045 	inc	r0
      00296E 86 05            [24] 2046 	mov	ar5,@r0
      002970 08               [12] 2047 	inc	r0
      002971 86 06            [24] 2048 	mov	ar6,@r0
      002973 08               [12] 2049 	inc	r0
      002974 86 07            [24] 2050 	mov	ar7,@r0
      002976 78 2F            [12] 2051 	mov	r0,#_genc2
      002978 A6 04            [24] 2052 	mov	@r0,ar4
      00297A 08               [12] 2053 	inc	r0
      00297B A6 05            [24] 2054 	mov	@r0,ar5
      00297D 08               [12] 2055 	inc	r0
      00297E A6 06            [24] 2056 	mov	@r0,ar6
      002980 08               [12] 2057 	inc	r0
      002981 A6 07            [24] 2058 	mov	@r0,ar7
                                   2059 ;	life.c:251: c2set = 1;
      002983 78 33            [12] 2060 	mov	r0,#_c2set
      002985 76 01            [12] 2061 	mov	@r0,#0x01
      002987                       2062 00138$:
                                   2063 ;	life.c:255: c = getchar_poll();
      002987 12 2B 14         [24] 2064 	lcall	_getchar_poll
      00298A AE 82            [24] 2065 	mov	r6,dpl
      00298C AF 83            [24] 2066 	mov	r7,dph
                                   2067 ;	life.c:256: if (c > 0) {
      00298E C3               [12] 2068 	clr	c
      00298F E4               [12] 2069 	clr	a
      002990 9E               [12] 2070 	subb	a,r6
      002991 74 80            [12] 2071 	mov	a,#(0x00 ^ 0x80)
      002993 8F F0            [24] 2072 	mov	b,r7
      002995 63 F0 80         [24] 2073 	xrl	b,#0x80
      002998 95 F0            [12] 2074 	subb	a,b
      00299A 40 03            [24] 2075 	jc	00512$
      00299C 02 24 E5         [24] 2076 	ljmp	00233$
      00299F                       2077 00512$:
                                   2078 ;	life.c:257: c = toupper(c);
      00299F 8E 82            [24] 2079 	mov	dpl,r6
      0029A1 8F 83            [24] 2080 	mov	dph,r7
      0029A3 12 2F AE         [24] 2081 	lcall	_toupper
      0029A6 AE 82            [24] 2082 	mov	r6,dpl
      0029A8 AF 83            [24] 2083 	mov	r7,dph
                                   2084 ;	life.c:258: if (c == (int)'U') pruni = !pruni;
      0029AA BE 55 13         [24] 2085 	cjne	r6,#0x55,00146$
      0029AD BF 00 10         [24] 2086 	cjne	r7,#0x00,00146$
      0029B0 78 34            [12] 2087 	mov	r0,#_pruni
      0029B2 E6               [12] 2088 	mov	a,@r0
      0029B3 B4 01 00         [24] 2089 	cjne	a,#0x01,00515$
      0029B6                       2090 00515$:
      0029B6 92 00            [24] 2091 	mov	b0,c
      0029B8 78 34            [12] 2092 	mov	r0,#_pruni
      0029BA E4               [12] 2093 	clr	a
      0029BB 33               [12] 2094 	rlc	a
      0029BC F6               [12] 2095 	mov	@r0,a
      0029BD 02 24 E5         [24] 2096 	ljmp	00233$
      0029C0                       2097 00146$:
                                   2098 ;	life.c:259: else if (c == (int)'T') i0 = 1;
      0029C0 BE 54 0A         [24] 2099 	cjne	r6,#0x54,00143$
      0029C3 BF 00 07         [24] 2100 	cjne	r7,#0x00,00143$
      0029C6 78 21            [12] 2101 	mov	r0,#_i0
      0029C8 76 01            [12] 2102 	mov	@r0,#0x01
      0029CA 02 24 E5         [24] 2103 	ljmp	00233$
      0029CD                       2104 00143$:
                                   2105 ;	life.c:260: else if (c == (int)'B') i1 = 1;
      0029CD BE 42 05         [24] 2106 	cjne	r6,#0x42,00518$
      0029D0 BF 00 02         [24] 2107 	cjne	r7,#0x00,00518$
      0029D3 80 03            [24] 2108 	sjmp	00519$
      0029D5                       2109 00518$:
      0029D5 02 24 E5         [24] 2110 	ljmp	00233$
      0029D8                       2111 00519$:
      0029D8 78 22            [12] 2112 	mov	r0,#_i1
      0029DA 76 01            [12] 2113 	mov	@r0,#0x01
      0029DC 02 24 E5         [24] 2114 	ljmp	00233$
      0029DF                       2115 00150$:
                                   2116 ;	life.c:264: if (i1) {
      0029DF 78 22            [12] 2117 	mov	r0,#_i1
      0029E1 E6               [12] 2118 	mov	a,@r0
      0029E2 60 20            [24] 2119 	jz	00236$
                                   2120 ;	life.c:265: printstr("BREAK AT ");
      0029E4 90 31 69         [24] 2121 	mov	dptr,#___str_13
      0029E7 75 F0 80         [24] 2122 	mov	b,#0x80
      0029EA 12 2B 2E         [24] 2123 	lcall	_printstr
                                   2124 ;	life.c:266: show(PRHDR, u);
      0029ED 74 00            [12] 2125 	mov	a,#_u
      0029EF C0 E0            [24] 2126 	push	acc
      0029F1 74 88            [12] 2127 	mov	a,#(_u >> 8)
      0029F3 C0 E0            [24] 2128 	push	acc
      0029F5 E4               [12] 2129 	clr	a
      0029F6 C0 E0            [24] 2130 	push	acc
      0029F8 75 82 02         [24] 2131 	mov	dpl,#0x02
      0029FB 12 20 95         [24] 2132 	lcall	_show
      0029FE 15 81            [12] 2133 	dec	sp
      002A00 15 81            [12] 2134 	dec	sp
      002A02 15 81            [12] 2135 	dec	sp
      002A04                       2136 00236$:
                                   2137 ;	life.c:219: for (i0 = 0; !i0; ) {
      002A04 78 21            [12] 2138 	mov	r0,#_i0
      002A06 E6               [12] 2139 	mov	a,@r0
      002A07 70 03            [24] 2140 	jnz	00521$
      002A09 02 21 FA         [24] 2141 	ljmp	00127$
      002A0C                       2142 00521$:
                                   2143 ;	life.c:270: term:
      002A0C                       2144 00154$:
                                   2145 ;	life.c:271: EA = 0;
                                   2146 ;	assignBit
      002A0C C2 AF            [12] 2147 	clr	_EA
                                   2148 ;	life.c:272: printstr("TERM\r\n");
      002A0E 90 31 73         [24] 2149 	mov	dptr,#___str_14
      002A11 75 F0 80         [24] 2150 	mov	b,#0x80
      002A14 12 2B 2E         [24] 2151 	lcall	_printstr
                                   2152 ;	life.c:274: PCON |= 2;
      002A17 43 87 02         [24] 2153 	orl	_PCON,#0x02
                                   2154 ;	life.c:276: return;
                                   2155 ;	life.c:277: }
      002A1A 85 10 81         [24] 2156 	mov	sp,_bp
      002A1D D0 10            [24] 2157 	pop	_bp
      002A1F 22               [24] 2158 	ret
                                   2159 	.area CSEG    (CODE)
                                   2160 	.area CONST   (CODE)
                                   2161 	.area CONST   (CODE)
      0030FD                       2162 ___str_0:
      0030FD 1B                    2163 	.db 0x1b
      0030FE 5B 32 4A              2164 	.ascii "[2J"
      003101 00                    2165 	.db 0x00
                                   2166 	.area CSEG    (CODE)
                                   2167 	.area CONST   (CODE)
      003102                       2168 ___str_1:
      003102 47 45 4E 20           2169 	.ascii "GEN "
      003106 00                    2170 	.db 0x00
                                   2171 	.area CSEG    (CODE)
                                   2172 	.area CONST   (CODE)
      003107                       2173 ___str_2:
      003107 20 43 59 43 4C 45 32  2174 	.ascii " CYCLE2 "
             20
      00310F 00                    2175 	.db 0x00
                                   2176 	.area CSEG    (CODE)
                                   2177 	.area CONST   (CODE)
      003110                       2178 ___str_3:
      003110 0D                    2179 	.db 0x0d
      003111 0A                    2180 	.db 0x0a
      003112 00                    2181 	.db 0x00
                                   2182 	.area CSEG    (CODE)
                                   2183 	.area CONST   (CODE)
      003113                       2184 ___str_4:
      003113 1B                    2185 	.db 0x1b
      003114 5B 3F 32 35 6C        2186 	.ascii "[?25l"
      003119 00                    2187 	.db 0x00
                                   2188 	.area CSEG    (CODE)
                                   2189 	.area CONST   (CODE)
      00311A                       2190 ___str_5:
      00311A 1B                    2191 	.db 0x1b
      00311B 5B 3F 32 35 68        2192 	.ascii "[?25h"
      003120 00                    2193 	.db 0x00
                                   2194 	.area CSEG    (CODE)
                                   2195 	.area CONST   (CODE)
      003121                       2196 ___str_6:
      003121 4C 4F 41 44 20 30 20  2197 	.ascii "LOAD 0 1 ~ # <"
             31 20 7E 20 23 20 3C
      00312F 00                    2198 	.db 0x00
                                   2199 	.area CSEG    (CODE)
                                   2200 	.area CONST   (CODE)
      003130                       2201 ___str_7:
      003130 3E                    2202 	.ascii ">"
      003131 0D                    2203 	.db 0x0d
      003132 0A                    2204 	.db 0x0a
      003133 00                    2205 	.db 0x00
                                   2206 	.area CSEG    (CODE)
                                   2207 	.area CONST   (CODE)
      003134                       2208 ___str_8:
      003134 52 41 4E 44 4F 4D     2209 	.ascii "RANDOM"
      00313A 00                    2210 	.db 0x00
                                   2211 	.area CSEG    (CODE)
                                   2212 	.area CONST   (CODE)
      00313B                       2213 ___str_9:
      00313B 1B                    2214 	.db 0x1b
      00313C 5B 3F 32 35 68        2215 	.ascii "[?25h"
      003141 1B                    2216 	.db 0x1b
      003142 5B 6D                 2217 	.ascii "[m"
      003144 00                    2218 	.db 0x00
                                   2219 	.area CSEG    (CODE)
                                   2220 	.area CONST   (CODE)
      003145                       2221 ___str_10:
      003145 4C 49 46 45 20 49 20  2222 	.ascii "LIFE I L R O P S U"
             4C 20 52 20 4F 20 50
             20 53 20 55
      003157 00                    2223 	.db 0x00
                                   2224 	.area CSEG    (CODE)
                                   2225 	.area CONST   (CODE)
      003158                       2226 ___str_11:
      003158 20 42 20 54           2227 	.ascii " B T"
      00315C 0D                    2228 	.db 0x0d
      00315D 0A                    2229 	.db 0x0a
      00315E 00                    2230 	.db 0x00
                                   2231 	.area CSEG    (CODE)
                                   2232 	.area CONST   (CODE)
      00315F                       2233 ___str_12:
      00315F 46 49 58 45 44 20 41  2234 	.ascii "FIXED AT "
             54 20
      003168 00                    2235 	.db 0x00
                                   2236 	.area CSEG    (CODE)
                                   2237 	.area CONST   (CODE)
      003169                       2238 ___str_13:
      003169 42 52 45 41 4B 20 41  2239 	.ascii "BREAK AT "
             54 20
      003172 00                    2240 	.db 0x00
                                   2241 	.area CSEG    (CODE)
                                   2242 	.area CONST   (CODE)
      003173                       2243 ___str_14:
      003173 54 45 52 4D           2244 	.ascii "TERM"
      003177 0D                    2245 	.db 0x0d
      003178 0A                    2246 	.db 0x0a
      003179 00                    2247 	.db 0x00
                                   2248 	.area CSEG    (CODE)
                                   2249 	.area XINIT   (CODE)
                                   2250 	.area CABS    (ABS,CODE)
