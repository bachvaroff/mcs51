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
      0020A0 90 30 EF         [24]  517 	mov	dptr,#___str_0
      0020A3 75 F0 80         [24]  518 	mov	b,#0x80
      0020A6 C0 07            [24]  519 	push	ar7
      0020A8 12 2B 20         [24]  520 	lcall	_printstr
      0020AB D0 07            [24]  521 	pop	ar7
      0020AD                        522 00102$:
                                    523 ;	life.c:69: if (prflags & PRHDR) {
      0020AD EF               [12]  524 	mov	a,r7
      0020AE 30 E1 4A         [24]  525 	jnb	acc.1,00106$
                                    526 ;	life.c:70: printstr("GEN ");
      0020B1 90 30 F4         [24]  527 	mov	dptr,#___str_1
      0020B4 75 F0 80         [24]  528 	mov	b,#0x80
      0020B7 C0 07            [24]  529 	push	ar7
      0020B9 12 2B 20         [24]  530 	lcall	_printstr
                                    531 ;	life.c:71: print32x(gen);
      0020BC 78 2B            [12]  532 	mov	r0,#_gen
      0020BE 86 82            [24]  533 	mov	dpl,@r0
      0020C0 08               [12]  534 	inc	r0
      0020C1 86 83            [24]  535 	mov	dph,@r0
      0020C3 08               [12]  536 	inc	r0
      0020C4 86 F0            [24]  537 	mov	b,@r0
      0020C6 08               [12]  538 	inc	r0
      0020C7 E6               [12]  539 	mov	a,@r0
      0020C8 12 2C D0         [24]  540 	lcall	_print32x
      0020CB D0 07            [24]  541 	pop	ar7
                                    542 ;	life.c:72: if (c2set) {
      0020CD 78 33            [12]  543 	mov	r0,#_c2set
      0020CF E6               [12]  544 	mov	a,@r0
      0020D0 60 1C            [24]  545 	jz	00104$
                                    546 ;	life.c:73: printstr(" CYCLE2 ");
      0020D2 90 30 F9         [24]  547 	mov	dptr,#___str_2
      0020D5 75 F0 80         [24]  548 	mov	b,#0x80
      0020D8 C0 07            [24]  549 	push	ar7
      0020DA 12 2B 20         [24]  550 	lcall	_printstr
                                    551 ;	life.c:74: print32x(genc2);
      0020DD 78 2F            [12]  552 	mov	r0,#_genc2
      0020DF 86 82            [24]  553 	mov	dpl,@r0
      0020E1 08               [12]  554 	inc	r0
      0020E2 86 83            [24]  555 	mov	dph,@r0
      0020E4 08               [12]  556 	inc	r0
      0020E5 86 F0            [24]  557 	mov	b,@r0
      0020E7 08               [12]  558 	inc	r0
      0020E8 E6               [12]  559 	mov	a,@r0
      0020E9 12 2C D0         [24]  560 	lcall	_print32x
      0020EC D0 07            [24]  561 	pop	ar7
      0020EE                        562 00104$:
                                    563 ;	life.c:76: printstr("\r\n");
      0020EE 90 31 02         [24]  564 	mov	dptr,#___str_3
      0020F1 75 F0 80         [24]  565 	mov	b,#0x80
      0020F4 C0 07            [24]  566 	push	ar7
      0020F6 12 2B 20         [24]  567 	lcall	_printstr
      0020F9 D0 07            [24]  568 	pop	ar7
      0020FB                        569 00106$:
                                    570 ;	life.c:78: if (prflags & PRUNI) {
      0020FB EF               [12]  571 	mov	a,r7
      0020FC 20 E2 03         [24]  572 	jb	acc.2,00159$
      0020FF 02 21 A0         [24]  573 	ljmp	00113$
      002102                        574 00159$:
                                    575 ;	life.c:79: printstr("\033[?25l");
      002102 90 31 05         [24]  576 	mov	dptr,#___str_4
      002105 75 F0 80         [24]  577 	mov	b,#0x80
      002108 12 2B 20         [24]  578 	lcall	_printstr
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
      002123 12 2E 05         [24]  601 	lcall	__mulint
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
      00214C 12 2F C7         [24]  629 	lcall	__gptrget
      00214F 60 08            [24]  630 	jz	00108$
      002151 90 00 31         [24]  631 	mov	dptr,#0x0031
      002154 12 2A EF         [24]  632 	lcall	_putchar
      002157 80 06            [24]  633 	sjmp	00115$
      002159                        634 00108$:
                                    635 ;	life.c:83: else putchar((int)'0');
      002159 90 00 30         [24]  636 	mov	dptr,#0x0030
      00215C 12 2A EF         [24]  637 	lcall	_putchar
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
      002175 90 31 02         [24]  656 	mov	dptr,#___str_3
      002178 75 F0 80         [24]  657 	mov	b,#0x80
      00217B 12 2B 20         [24]  658 	lcall	_printstr
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
      002197 90 31 0C         [24]  678 	mov	dptr,#___str_5
      00219A 75 F0 80         [24]  679 	mov	b,#0x80
      00219D 12 2B 20         [24]  680 	lcall	_printstr
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
      0021C8 12 2A D6         [24]  739 	lcall	_srand
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
                                    767 ;	life.c:216: printstr("\033[?25h\033[m");
      0021E9 90 31 2D         [24]  768 	mov	dptr,#___str_9
      0021EC 75 F0 80         [24]  769 	mov	b,#0x80
      0021EF 12 2B 20         [24]  770 	lcall	_printstr
                                    771 ;	life.c:218: for (i0 = 0; !i0; ) {
      0021F2 78 21            [12]  772 	mov	r0,#_i0
      0021F4 76 00            [12]  773 	mov	@r0,#0x00
      0021F6                        774 00236$:
                                    775 ;	life.c:219: pruni = 1;
      0021F6 78 34            [12]  776 	mov	r0,#_pruni
      0021F8 76 01            [12]  777 	mov	@r0,#0x01
                                    778 ;	life.c:220: while (1) {
      0021FA                        779 00127$:
                                    780 ;	life.c:221: printstr("LIFE I L R O P S U B T\r\n");
      0021FA 90 31 37         [24]  781 	mov	dptr,#___str_10
      0021FD 75 F0 80         [24]  782 	mov	b,#0x80
      002200 12 2B 20         [24]  783 	lcall	_printstr
                                    784 ;	life.c:222: c = toupper(getchar());
      002203 12 2A F9         [24]  785 	lcall	_getchar
      002206 12 2F A0         [24]  786 	lcall	_toupper
      002209 AE 82            [24]  787 	mov	r6,dpl
      00220B AF 83            [24]  788 	mov	r7,dph
                                    789 ;	life.c:223: if (i0 || (c == (int)'T')) goto term;
      00220D 78 21            [12]  790 	mov	r0,#_i0
      00220F E6               [12]  791 	mov	a,@r0
      002210 60 03            [24]  792 	jz	00463$
      002212 02 29 FE         [24]  793 	ljmp	00154$
      002215                        794 00463$:
      002215 BE 54 06         [24]  795 	cjne	r6,#0x54,00464$
      002218 BF 00 03         [24]  796 	cjne	r7,#0x00,00464$
      00221B 02 29 FE         [24]  797 	ljmp	00154$
      00221E                        798 00464$:
                                    799 ;	life.c:224: else if ((c == (int)'I') || (c == (int)'L') || (c == (int)'R')) {
      00221E BE 49 05         [24]  800 	cjne	r6,#0x49,00465$
      002221 BF 00 02         [24]  801 	cjne	r7,#0x00,00465$
      002224 80 13            [24]  802 	sjmp	00117$
      002226                        803 00465$:
      002226 BE 4C 05         [24]  804 	cjne	r6,#0x4c,00466$
      002229 BF 00 02         [24]  805 	cjne	r7,#0x00,00466$
      00222C 80 0B            [24]  806 	sjmp	00117$
      00222E                        807 00466$:
      00222E BE 52 05         [24]  808 	cjne	r6,#0x52,00467$
      002231 BF 00 02         [24]  809 	cjne	r7,#0x00,00467$
      002234 80 03            [24]  810 	sjmp	00468$
      002236                        811 00467$:
      002236 02 24 61         [24]  812 	ljmp	00118$
      002239                        813 00468$:
      002239                        814 00117$:
                                    815 ;	life.c:225: if (c == (int)'L') loadiu();
      002239 BE 4C 05         [24]  816 	cjne	r6,#0x4c,00469$
      00223C BF 00 02         [24]  817 	cjne	r7,#0x00,00469$
      00223F 80 03            [24]  818 	sjmp	00470$
      002241                        819 00469$:
      002241 02 23 65         [24]  820 	ljmp	00104$
      002244                        821 00470$:
                                    822 ;	life.c:102: printstr("LOAD 0 1 ~ # <");
      002244 90 31 13         [24]  823 	mov	dptr,#___str_6
      002247 75 F0 80         [24]  824 	mov	b,#0x80
      00224A 12 2B 20         [24]  825 	lcall	_printstr
                                    826 ;	life.c:104: for (nbits = 0, y = 0; y < (H * W); y += W) {
      00224D 7C 00            [12]  827 	mov	r4,#0x00
      00224F 7D 00            [12]  828 	mov	r5,#0x00
      002251 78 26            [12]  829 	mov	r0,#_y
      002253 E4               [12]  830 	clr	a
      002254 F6               [12]  831 	mov	@r0,a
      002255 08               [12]  832 	inc	r0
      002256 F6               [12]  833 	mov	@r0,a
      002257                        834 00222$:
      002257 78 26            [12]  835 	mov	r0,#_y
      002259 C3               [12]  836 	clr	c
      00225A 08               [12]  837 	inc	r0
      00225B E6               [12]  838 	mov	a,@r0
      00225C 64 80            [12]  839 	xrl	a,#0x80
      00225E 94 A4            [12]  840 	subb	a,#0xa4
      002260 40 03            [24]  841 	jc	00471$
      002262 02 23 20         [24]  842 	ljmp	00181$
      002265                        843 00471$:
                                    844 ;	life.c:105: for (x = 0; x < W; x++) {
      002265 78 24            [12]  845 	mov	r0,#_x
      002267 E4               [12]  846 	clr	a
      002268 F6               [12]  847 	mov	@r0,a
      002269 08               [12]  848 	inc	r0
      00226A F6               [12]  849 	mov	@r0,a
                                    850 ;	life.c:106: while (1) {
      00226B                        851 00168$:
                                    852 ;	life.c:107: c = getchar();
      00226B C0 05            [24]  853 	push	ar5
      00226D C0 04            [24]  854 	push	ar4
      00226F 12 2A F9         [24]  855 	lcall	_getchar
      002272 AA 82            [24]  856 	mov	r2,dpl
      002274 AB 83            [24]  857 	mov	r3,dph
      002276 D0 04            [24]  858 	pop	ar4
      002278 D0 05            [24]  859 	pop	ar5
      00227A E5 10            [12]  860 	mov	a,_bp
      00227C 24 0A            [12]  861 	add	a,#0x0a
      00227E F8               [12]  862 	mov	r0,a
      00227F A6 02            [24]  863 	mov	@r0,ar2
      002281 08               [12]  864 	inc	r0
      002282 A6 03            [24]  865 	mov	@r0,ar3
                                    866 ;	life.c:108: if (c == (int)'0') {
      002284 E5 10            [12]  867 	mov	a,_bp
      002286 24 0A            [12]  868 	add	a,#0x0a
      002288 F8               [12]  869 	mov	r0,a
      002289 B6 30 23         [24]  870 	cjne	@r0,#0x30,00166$
      00228C 08               [12]  871 	inc	r0
      00228D B6 00 1F         [24]  872 	cjne	@r0,#0x00,00166$
                                    873 ;	life.c:109: iu[y + x] = 0;
      002290 78 26            [12]  874 	mov	r0,#_y
      002292 79 24            [12]  875 	mov	r1,#_x
      002294 E7               [12]  876 	mov	a,@r1
      002295 26               [12]  877 	add	a,@r0
      002296 FA               [12]  878 	mov	r2,a
      002297 09               [12]  879 	inc	r1
      002298 E7               [12]  880 	mov	a,@r1
      002299 08               [12]  881 	inc	r0
      00229A 36               [12]  882 	addc	a,@r0
      00229B FB               [12]  883 	mov	r3,a
      00229C EA               [12]  884 	mov	a,r2
      00229D 24 00            [12]  885 	add	a,#_iu
      00229F F5 82            [12]  886 	mov	dpl,a
      0022A1 EB               [12]  887 	mov	a,r3
      0022A2 34 40            [12]  888 	addc	a,#(_iu >> 8)
      0022A4 F5 83            [12]  889 	mov	dph,a
      0022A6 E4               [12]  890 	clr	a
      0022A7 F0               [24]  891 	movx	@dptr,a
                                    892 ;	life.c:110: nbits++;
      0022A8 0C               [12]  893 	inc	r4
                                    894 ;	life.c:111: break;
      0022A9 BC 00 4E         [24]  895 	cjne	r4,#0x00,00171$
      0022AC 0D               [12]  896 	inc	r5
      0022AD 80 4B            [24]  897 	sjmp	00171$
      0022AF                        898 00166$:
                                    899 ;	life.c:112: } else if (c == (int)'1') {
      0022AF E5 10            [12]  900 	mov	a,_bp
      0022B1 24 0A            [12]  901 	add	a,#0x0a
      0022B3 F8               [12]  902 	mov	r0,a
      0022B4 B6 31 24         [24]  903 	cjne	@r0,#0x31,00164$
      0022B7 08               [12]  904 	inc	r0
      0022B8 B6 00 20         [24]  905 	cjne	@r0,#0x00,00164$
                                    906 ;	life.c:113: iu[y + x] = 1;
      0022BB 78 26            [12]  907 	mov	r0,#_y
      0022BD 79 24            [12]  908 	mov	r1,#_x
      0022BF E7               [12]  909 	mov	a,@r1
      0022C0 26               [12]  910 	add	a,@r0
      0022C1 FA               [12]  911 	mov	r2,a
      0022C2 09               [12]  912 	inc	r1
      0022C3 E7               [12]  913 	mov	a,@r1
      0022C4 08               [12]  914 	inc	r0
      0022C5 36               [12]  915 	addc	a,@r0
      0022C6 FB               [12]  916 	mov	r3,a
      0022C7 EA               [12]  917 	mov	a,r2
      0022C8 24 00            [12]  918 	add	a,#_iu
      0022CA F5 82            [12]  919 	mov	dpl,a
      0022CC EB               [12]  920 	mov	a,r3
      0022CD 34 40            [12]  921 	addc	a,#(_iu >> 8)
      0022CF F5 83            [12]  922 	mov	dph,a
      0022D1 74 01            [12]  923 	mov	a,#0x01
      0022D3 F0               [24]  924 	movx	@dptr,a
                                    925 ;	life.c:114: nbits++;
      0022D4 0C               [12]  926 	inc	r4
                                    927 ;	life.c:115: break;
      0022D5 BC 00 22         [24]  928 	cjne	r4,#0x00,00171$
      0022D8 0D               [12]  929 	inc	r5
      0022D9 80 1F            [24]  930 	sjmp	00171$
      0022DB                        931 00164$:
                                    932 ;	life.c:116: } else if (c == (int)'~') goto br_inner;
      0022DB E5 10            [12]  933 	mov	a,_bp
      0022DD 24 0A            [12]  934 	add	a,#0x0a
      0022DF F8               [12]  935 	mov	r0,a
      0022E0 B6 7E 06         [24]  936 	cjne	@r0,#0x7e,00478$
      0022E3 08               [12]  937 	inc	r0
      0022E4 B6 00 02         [24]  938 	cjne	@r0,#0x00,00478$
      0022E7 80 2A            [24]  939 	sjmp	00223$
      0022E9                        940 00478$:
                                    941 ;	life.c:117: else if (c == (int)'#') goto out;
      0022E9 E5 10            [12]  942 	mov	a,_bp
      0022EB 24 0A            [12]  943 	add	a,#0x0a
      0022ED F8               [12]  944 	mov	r0,a
      0022EE B6 23 06         [24]  945 	cjne	@r0,#0x23,00479$
      0022F1 08               [12]  946 	inc	r0
      0022F2 B6 00 02         [24]  947 	cjne	@r0,#0x00,00479$
      0022F5 80 29            [24]  948 	sjmp	00181$
      0022F7                        949 00479$:
      0022F7 02 22 6B         [24]  950 	ljmp	00168$
                                    951 ;	life.c:121: break;
      0022FA                        952 00171$:
                                    953 ;	life.c:105: for (x = 0; x < W; x++) {
      0022FA 78 24            [12]  954 	mov	r0,#_x
      0022FC 06               [12]  955 	inc	@r0
      0022FD B6 00 02         [24]  956 	cjne	@r0,#0x00,00480$
      002300 08               [12]  957 	inc	r0
      002301 06               [12]  958 	inc	@r0
      002302                        959 00480$:
      002302 78 24            [12]  960 	mov	r0,#_x
      002304 C3               [12]  961 	clr	c
      002305 E6               [12]  962 	mov	a,@r0
      002306 94 30            [12]  963 	subb	a,#0x30
      002308 08               [12]  964 	inc	r0
      002309 E6               [12]  965 	mov	a,@r0
      00230A 64 80            [12]  966 	xrl	a,#0x80
      00230C 94 80            [12]  967 	subb	a,#0x80
      00230E 50 03            [24]  968 	jnc	00481$
      002310 02 22 6B         [24]  969 	ljmp	00168$
      002313                        970 00481$:
      002313                        971 00223$:
                                    972 ;	life.c:104: for (nbits = 0, y = 0; y < (H * W); y += W) {
      002313 78 26            [12]  973 	mov	r0,#_y
      002315 74 30            [12]  974 	mov	a,#0x30
      002317 26               [12]  975 	add	a,@r0
      002318 F6               [12]  976 	mov	@r0,a
      002319 E4               [12]  977 	clr	a
      00231A 08               [12]  978 	inc	r0
      00231B 36               [12]  979 	addc	a,@r0
      00231C F6               [12]  980 	mov	@r0,a
      00231D 02 22 57         [24]  981 	ljmp	00222$
                                    982 ;	life.c:125: out:
      002320                        983 00181$:
                                    984 ;	life.c:126: if (c != (int)'#')
      002320 E5 10            [12]  985 	mov	a,_bp
      002322 24 0A            [12]  986 	add	a,#0x0a
      002324 F8               [12]  987 	mov	r0,a
      002325 B6 23 06         [24]  988 	cjne	@r0,#0x23,00482$
      002328 08               [12]  989 	inc	r0
      002329 B6 00 02         [24]  990 	cjne	@r0,#0x00,00482$
      00232C 80 25            [24]  991 	sjmp	00180$
      00232E                        992 00482$:
                                    993 ;	life.c:127: while (1) {
      00232E                        994 00177$:
                                    995 ;	life.c:128: c = getchar();
      00232E C0 05            [24]  996 	push	ar5
      002330 C0 04            [24]  997 	push	ar4
      002332 12 2A F9         [24]  998 	lcall	_getchar
      002335 AA 82            [24]  999 	mov	r2,dpl
      002337 AB 83            [24] 1000 	mov	r3,dph
      002339 D0 04            [24] 1001 	pop	ar4
      00233B D0 05            [24] 1002 	pop	ar5
      00233D E5 10            [12] 1003 	mov	a,_bp
      00233F 24 0A            [12] 1004 	add	a,#0x0a
      002341 F8               [12] 1005 	mov	r0,a
      002342 A6 02            [24] 1006 	mov	@r0,ar2
      002344 08               [12] 1007 	inc	r0
      002345 A6 03            [24] 1008 	mov	@r0,ar3
                                   1009 ;	life.c:129: if (c == (int)'#') break;
      002347 E5 10            [12] 1010 	mov	a,_bp
      002349 24 0A            [12] 1011 	add	a,#0x0a
      00234B F8               [12] 1012 	mov	r0,a
      00234C B6 23 DF         [24] 1013 	cjne	@r0,#0x23,00177$
      00234F 08               [12] 1014 	inc	r0
      002350 B6 00 DB         [24] 1015 	cjne	@r0,#0x00,00177$
      002353                       1016 00180$:
                                   1017 ;	life.c:131: print16x(nbits);
      002353 8C 82            [24] 1018 	mov	dpl,r4
      002355 8D 83            [24] 1019 	mov	dph,r5
      002357 12 2C 4A         [24] 1020 	lcall	_print16x
                                   1021 ;	life.c:132: printstr(">\r\n");
      00235A 90 31 22         [24] 1022 	mov	dptr,#___str_7
      00235D 75 F0 80         [24] 1023 	mov	b,#0x80
      002360 12 2B 20         [24] 1024 	lcall	_printstr
                                   1025 ;	life.c:225: if (c == (int)'L') loadiu();
      002363 80 79            [24] 1026 	sjmp	00105$
      002365                       1027 00104$:
                                   1028 ;	life.c:226: else if (c == (int)'R') loadriu();
      002365 BE 52 76         [24] 1029 	cjne	r6,#0x52,00105$
      002368 BF 00 73         [24] 1030 	cjne	r7,#0x00,00105$
                                   1031 ;	life.c:138: printstr("RANDOM");
      00236B 90 31 26         [24] 1032 	mov	dptr,#___str_8
      00236E 75 F0 80         [24] 1033 	mov	b,#0x80
      002371 12 2B 20         [24] 1034 	lcall	_printstr
                                   1035 ;	life.c:140: for (y = 0; y < (H * W); y += W)
      002374 78 26            [12] 1036 	mov	r0,#_y
      002376 E4               [12] 1037 	clr	a
      002377 F6               [12] 1038 	mov	@r0,a
      002378 08               [12] 1039 	inc	r0
      002379 F6               [12] 1040 	mov	@r0,a
      00237A                       1041 00226$:
                                   1042 ;	life.c:141: for (x = 0; x < W; x++)
      00237A 78 24            [12] 1043 	mov	r0,#_x
      00237C E4               [12] 1044 	clr	a
      00237D F6               [12] 1045 	mov	@r0,a
      00237E 08               [12] 1046 	inc	r0
      00237F F6               [12] 1047 	mov	@r0,a
      002380                       1048 00224$:
                                   1049 ;	life.c:142: iu[y + x] = rand() & 1;
      002380 78 26            [12] 1050 	mov	r0,#_y
      002382 79 24            [12] 1051 	mov	r1,#_x
      002384 E7               [12] 1052 	mov	a,@r1
      002385 26               [12] 1053 	add	a,@r0
      002386 FC               [12] 1054 	mov	r4,a
      002387 09               [12] 1055 	inc	r1
      002388 E7               [12] 1056 	mov	a,@r1
      002389 08               [12] 1057 	inc	r0
      00238A 36               [12] 1058 	addc	a,@r0
      00238B FD               [12] 1059 	mov	r5,a
      00238C EC               [12] 1060 	mov	a,r4
      00238D 24 00            [12] 1061 	add	a,#_iu
      00238F FC               [12] 1062 	mov	r4,a
      002390 ED               [12] 1063 	mov	a,r5
      002391 34 40            [12] 1064 	addc	a,#(_iu >> 8)
      002393 FD               [12] 1065 	mov	r5,a
      002394 C0 05            [24] 1066 	push	ar5
      002396 C0 04            [24] 1067 	push	ar4
      002398 12 2A 12         [24] 1068 	lcall	_rand
      00239B AA 82            [24] 1069 	mov	r2,dpl
      00239D D0 04            [24] 1070 	pop	ar4
      00239F D0 05            [24] 1071 	pop	ar5
      0023A1 53 02 01         [24] 1072 	anl	ar2,#0x01
      0023A4 8C 82            [24] 1073 	mov	dpl,r4
      0023A6 8D 83            [24] 1074 	mov	dph,r5
      0023A8 EA               [12] 1075 	mov	a,r2
      0023A9 F0               [24] 1076 	movx	@dptr,a
                                   1077 ;	life.c:141: for (x = 0; x < W; x++)
      0023AA 78 24            [12] 1078 	mov	r0,#_x
      0023AC 06               [12] 1079 	inc	@r0
      0023AD B6 00 02         [24] 1080 	cjne	@r0,#0x00,00487$
      0023B0 08               [12] 1081 	inc	r0
      0023B1 06               [12] 1082 	inc	@r0
      0023B2                       1083 00487$:
      0023B2 78 24            [12] 1084 	mov	r0,#_x
      0023B4 C3               [12] 1085 	clr	c
      0023B5 E6               [12] 1086 	mov	a,@r0
      0023B6 94 30            [12] 1087 	subb	a,#0x30
      0023B8 08               [12] 1088 	inc	r0
      0023B9 E6               [12] 1089 	mov	a,@r0
      0023BA 64 80            [12] 1090 	xrl	a,#0x80
      0023BC 94 80            [12] 1091 	subb	a,#0x80
      0023BE 40 C0            [24] 1092 	jc	00224$
                                   1093 ;	life.c:140: for (y = 0; y < (H * W); y += W)
      0023C0 78 26            [12] 1094 	mov	r0,#_y
      0023C2 74 30            [12] 1095 	mov	a,#0x30
      0023C4 26               [12] 1096 	add	a,@r0
      0023C5 F6               [12] 1097 	mov	@r0,a
      0023C6 E4               [12] 1098 	clr	a
      0023C7 08               [12] 1099 	inc	r0
      0023C8 36               [12] 1100 	addc	a,@r0
      0023C9 F6               [12] 1101 	mov	@r0,a
      0023CA 78 26            [12] 1102 	mov	r0,#_y
      0023CC C3               [12] 1103 	clr	c
      0023CD 08               [12] 1104 	inc	r0
      0023CE E6               [12] 1105 	mov	a,@r0
      0023CF 64 80            [12] 1106 	xrl	a,#0x80
      0023D1 94 A4            [12] 1107 	subb	a,#0xa4
      0023D3 40 A5            [24] 1108 	jc	00226$
                                   1109 ;	life.c:144: printstr("\r\n");
      0023D5 90 31 02         [24] 1110 	mov	dptr,#___str_3
      0023D8 75 F0 80         [24] 1111 	mov	b,#0x80
      0023DB 12 2B 20         [24] 1112 	lcall	_printstr
                                   1113 ;	life.c:226: else if (c == (int)'R') loadriu();
      0023DE                       1114 00105$:
                                   1115 ;	life.c:93: memset(u, 0, sizeof (u));
      0023DE E4               [12] 1116 	clr	a
      0023DF C0 E0            [24] 1117 	push	acc
      0023E1 74 24            [12] 1118 	mov	a,#0x24
      0023E3 C0 E0            [24] 1119 	push	acc
      0023E5 E4               [12] 1120 	clr	a
      0023E6 C0 E0            [24] 1121 	push	acc
      0023E8 90 88 00         [24] 1122 	mov	dptr,#_u
      0023EB 75 F0 00         [24] 1123 	mov	b,#0x00
      0023EE 12 2F 36         [24] 1124 	lcall	_memset
      0023F1 15 81            [12] 1125 	dec	sp
      0023F3 15 81            [12] 1126 	dec	sp
      0023F5 15 81            [12] 1127 	dec	sp
                                   1128 ;	life.c:94: memset(pu, 0, sizeof (pu));
      0023F7 E4               [12] 1129 	clr	a
      0023F8 C0 E0            [24] 1130 	push	acc
      0023FA 74 24            [12] 1131 	mov	a,#0x24
      0023FC C0 E0            [24] 1132 	push	acc
      0023FE E4               [12] 1133 	clr	a
      0023FF C0 E0            [24] 1134 	push	acc
      002401 90 64 00         [24] 1135 	mov	dptr,#_pu
      002404 75 F0 00         [24] 1136 	mov	b,#0x00
      002407 12 2F 36         [24] 1137 	lcall	_memset
      00240A 15 81            [12] 1138 	dec	sp
      00240C 15 81            [12] 1139 	dec	sp
      00240E 15 81            [12] 1140 	dec	sp
                                   1141 ;	life.c:49: gen = 0ul;
      002410 78 2B            [12] 1142 	mov	r0,#_gen
      002412 E4               [12] 1143 	clr	a
      002413 F6               [12] 1144 	mov	@r0,a
      002414 08               [12] 1145 	inc	r0
      002415 F6               [12] 1146 	mov	@r0,a
      002416 08               [12] 1147 	inc	r0
      002417 F6               [12] 1148 	mov	@r0,a
      002418 08               [12] 1149 	inc	r0
      002419 F6               [12] 1150 	mov	@r0,a
                                   1151 ;	life.c:50: genc2 = 0ul;
      00241A 78 2F            [12] 1152 	mov	r0,#_genc2
      00241C F6               [12] 1153 	mov	@r0,a
      00241D 08               [12] 1154 	inc	r0
      00241E F6               [12] 1155 	mov	@r0,a
      00241F 08               [12] 1156 	inc	r0
      002420 F6               [12] 1157 	mov	@r0,a
      002421 08               [12] 1158 	inc	r0
      002422 F6               [12] 1159 	mov	@r0,a
                                   1160 ;	life.c:51: c2set = 0;
      002423 78 33            [12] 1161 	mov	r0,#_c2set
      002425 76 00            [12] 1162 	mov	@r0,#0x00
                                   1163 ;	life.c:229: memcpy(u, iu, sizeof (iu));
      002427 C0 E0            [24] 1164 	push	acc
      002429 74 24            [12] 1165 	mov	a,#0x24
      00242B C0 E0            [24] 1166 	push	acc
      00242D 74 00            [12] 1167 	mov	a,#_iu
      00242F C0 E0            [24] 1168 	push	acc
      002431 74 40            [12] 1169 	mov	a,#(_iu >> 8)
      002433 C0 E0            [24] 1170 	push	acc
      002435 E4               [12] 1171 	clr	a
      002436 C0 E0            [24] 1172 	push	acc
      002438 90 88 00         [24] 1173 	mov	dptr,#_u
      00243B 75 F0 00         [24] 1174 	mov	b,#0x00
      00243E 12 2E A3         [24] 1175 	lcall	___memcpy
      002441 E5 81            [12] 1176 	mov	a,sp
      002443 24 FB            [12] 1177 	add	a,#0xfb
      002445 F5 81            [12] 1178 	mov	sp,a
                                   1179 ;	life.c:230: show(PRUNI, u);
      002447 74 00            [12] 1180 	mov	a,#_u
      002449 C0 E0            [24] 1181 	push	acc
      00244B 74 88            [12] 1182 	mov	a,#(_u >> 8)
      00244D C0 E0            [24] 1183 	push	acc
      00244F E4               [12] 1184 	clr	a
      002450 C0 E0            [24] 1185 	push	acc
      002452 75 82 04         [24] 1186 	mov	dpl,#0x04
      002455 12 20 95         [24] 1187 	lcall	_show
      002458 15 81            [12] 1188 	dec	sp
      00245A 15 81            [12] 1189 	dec	sp
      00245C 15 81            [12] 1190 	dec	sp
      00245E 02 21 FA         [24] 1191 	ljmp	00127$
      002461                       1192 00118$:
                                   1193 ;	life.c:231: } else if (c == (int)'O') show(PRUNI, iu);
      002461 BE 4F 1D         [24] 1194 	cjne	r6,#0x4f,00115$
      002464 BF 00 1A         [24] 1195 	cjne	r7,#0x00,00115$
      002467 74 00            [12] 1196 	mov	a,#_iu
      002469 C0 E0            [24] 1197 	push	acc
      00246B 74 40            [12] 1198 	mov	a,#(_iu >> 8)
      00246D C0 E0            [24] 1199 	push	acc
      00246F E4               [12] 1200 	clr	a
      002470 C0 E0            [24] 1201 	push	acc
      002472 75 82 04         [24] 1202 	mov	dpl,#0x04
      002475 12 20 95         [24] 1203 	lcall	_show
      002478 15 81            [12] 1204 	dec	sp
      00247A 15 81            [12] 1205 	dec	sp
      00247C 15 81            [12] 1206 	dec	sp
      00247E 02 21 FA         [24] 1207 	ljmp	00127$
      002481                       1208 00115$:
                                   1209 ;	life.c:232: else if (c == (int)'P') show(PRHDR | PRUNI, u);
      002481 BE 50 1D         [24] 1210 	cjne	r6,#0x50,00112$
      002484 BF 00 1A         [24] 1211 	cjne	r7,#0x00,00112$
      002487 74 00            [12] 1212 	mov	a,#_u
      002489 C0 E0            [24] 1213 	push	acc
      00248B 74 88            [12] 1214 	mov	a,#(_u >> 8)
      00248D C0 E0            [24] 1215 	push	acc
      00248F E4               [12] 1216 	clr	a
      002490 C0 E0            [24] 1217 	push	acc
      002492 75 82 06         [24] 1218 	mov	dpl,#0x06
      002495 12 20 95         [24] 1219 	lcall	_show
      002498 15 81            [12] 1220 	dec	sp
      00249A 15 81            [12] 1221 	dec	sp
      00249C 15 81            [12] 1222 	dec	sp
      00249E 02 21 FA         [24] 1223 	ljmp	00127$
      0024A1                       1224 00112$:
                                   1225 ;	life.c:233: else if (c == (int)'U') {
      0024A1 BE 55 3B         [24] 1226 	cjne	r6,#0x55,00109$
      0024A4 BF 00 38         [24] 1227 	cjne	r7,#0x00,00109$
                                   1228 ;	life.c:234: pruni = !pruni;
      0024A7 78 34            [12] 1229 	mov	r0,#_pruni
      0024A9 E6               [12] 1230 	mov	a,@r0
      0024AA B4 01 00         [24] 1231 	cjne	a,#0x01,00496$
      0024AD                       1232 00496$:
      0024AD 92 00            [24] 1233 	mov	b0,c
      0024AF 78 34            [12] 1234 	mov	r0,#_pruni
      0024B1 E4               [12] 1235 	clr	a
      0024B2 33               [12] 1236 	rlc	a
      0024B3 F6               [12] 1237 	mov	@r0,a
                                   1238 ;	life.c:235: printstr("U");
      0024B4 90 31 50         [24] 1239 	mov	dptr,#___str_11
      0024B7 75 F0 80         [24] 1240 	mov	b,#0x80
      0024BA 12 2B 20         [24] 1241 	lcall	_printstr
                                   1242 ;	life.c:236: putchar(pruni ? (int)'1' : (int)'0');
      0024BD 78 34            [12] 1243 	mov	r0,#_pruni
      0024BF E6               [12] 1244 	mov	a,@r0
      0024C0 60 06            [24] 1245 	jz	00240$
      0024C2 7C 31            [12] 1246 	mov	r4,#0x31
      0024C4 7D 00            [12] 1247 	mov	r5,#0x00
      0024C6 80 04            [24] 1248 	sjmp	00241$
      0024C8                       1249 00240$:
      0024C8 7C 30            [12] 1250 	mov	r4,#0x30
      0024CA 7D 00            [12] 1251 	mov	r5,#0x00
      0024CC                       1252 00241$:
      0024CC 8C 82            [24] 1253 	mov	dpl,r4
      0024CE 8D 83            [24] 1254 	mov	dph,r5
      0024D0 12 2A EF         [24] 1255 	lcall	_putchar
                                   1256 ;	life.c:237: printstr("\r\n");
      0024D3 90 31 02         [24] 1257 	mov	dptr,#___str_3
      0024D6 75 F0 80         [24] 1258 	mov	b,#0x80
      0024D9 12 2B 20         [24] 1259 	lcall	_printstr
      0024DC 02 21 FA         [24] 1260 	ljmp	00127$
      0024DF                       1261 00109$:
                                   1262 ;	life.c:238: } else if (c == (int)'S') break;
      0024DF BE 53 05         [24] 1263 	cjne	r6,#0x53,00498$
      0024E2 BF 00 02         [24] 1264 	cjne	r7,#0x00,00498$
      0024E5 80 03            [24] 1265 	sjmp	00499$
      0024E7                       1266 00498$:
      0024E7 02 21 FA         [24] 1267 	ljmp	00127$
      0024EA                       1268 00499$:
                                   1269 ;	life.c:49: gen = 0ul;
      0024EA 78 2B            [12] 1270 	mov	r0,#_gen
      0024EC E4               [12] 1271 	clr	a
      0024ED F6               [12] 1272 	mov	@r0,a
      0024EE 08               [12] 1273 	inc	r0
      0024EF F6               [12] 1274 	mov	@r0,a
      0024F0 08               [12] 1275 	inc	r0
      0024F1 F6               [12] 1276 	mov	@r0,a
      0024F2 08               [12] 1277 	inc	r0
      0024F3 F6               [12] 1278 	mov	@r0,a
                                   1279 ;	life.c:50: genc2 = 0ul;
      0024F4 78 2F            [12] 1280 	mov	r0,#_genc2
      0024F6 F6               [12] 1281 	mov	@r0,a
      0024F7 08               [12] 1282 	inc	r0
      0024F8 F6               [12] 1283 	mov	@r0,a
      0024F9 08               [12] 1284 	inc	r0
      0024FA F6               [12] 1285 	mov	@r0,a
      0024FB 08               [12] 1286 	inc	r0
      0024FC F6               [12] 1287 	mov	@r0,a
                                   1288 ;	life.c:51: c2set = 0;
      0024FD 78 33            [12] 1289 	mov	r0,#_c2set
      0024FF 76 00            [12] 1290 	mov	@r0,#0x00
                                   1291 ;	life.c:243: for (i1 = 0; !i0 && !i1; ) {
      002501 78 22            [12] 1292 	mov	r0,#_i1
      002503 76 00            [12] 1293 	mov	@r0,#0x00
      002505                       1294 00234$:
      002505 78 21            [12] 1295 	mov	r0,#_i0
      002507 E6               [12] 1296 	mov	a,@r0
      002508 60 03            [24] 1297 	jz	00500$
      00250A 02 29 E8         [24] 1298 	ljmp	00150$
      00250D                       1299 00500$:
      00250D 78 22            [12] 1300 	mov	r0,#_i1
      00250F E6               [12] 1301 	mov	a,@r0
      002510 60 03            [24] 1302 	jz	00501$
      002512 02 29 E8         [24] 1303 	ljmp	00150$
      002515                       1304 00501$:
                                   1305 ;	life.c:244: if (pruni) show(PRCLR | PRHDR | PRUNI, u);
      002515 78 34            [12] 1306 	mov	r0,#_pruni
      002517 E6               [12] 1307 	mov	a,@r0
      002518 60 19            [24] 1308 	jz	00130$
      00251A 74 00            [12] 1309 	mov	a,#_u
      00251C C0 E0            [24] 1310 	push	acc
      00251E 74 88            [12] 1311 	mov	a,#(_u >> 8)
      002520 C0 E0            [24] 1312 	push	acc
      002522 E4               [12] 1313 	clr	a
      002523 C0 E0            [24] 1314 	push	acc
      002525 75 82 07         [24] 1315 	mov	dpl,#0x07
      002528 12 20 95         [24] 1316 	lcall	_show
      00252B 15 81            [12] 1317 	dec	sp
      00252D 15 81            [12] 1318 	dec	sp
      00252F 15 81            [12] 1319 	dec	sp
      002531 80 17            [24] 1320 	sjmp	00131$
      002533                       1321 00130$:
                                   1322 ;	life.c:245: else show(PRHDR, u);
      002533 74 00            [12] 1323 	mov	a,#_u
      002535 C0 E0            [24] 1324 	push	acc
      002537 74 88            [12] 1325 	mov	a,#(_u >> 8)
      002539 C0 E0            [24] 1326 	push	acc
      00253B E4               [12] 1327 	clr	a
      00253C C0 E0            [24] 1328 	push	acc
      00253E 75 82 02         [24] 1329 	mov	dpl,#0x02
      002541 12 20 95         [24] 1330 	lcall	_show
      002544 15 81            [12] 1331 	dec	sp
      002546 15 81            [12] 1332 	dec	sp
      002548 15 81            [12] 1333 	dec	sp
      00254A                       1334 00131$:
                                   1335 ;	life.c:57: gen++;
      00254A 78 2B            [12] 1336 	mov	r0,#_gen
      00254C 06               [12] 1337 	inc	@r0
      00254D B6 00 0C         [24] 1338 	cjne	@r0,#0x00,00503$
      002550 08               [12] 1339 	inc	r0
      002551 06               [12] 1340 	inc	@r0
      002552 B6 00 07         [24] 1341 	cjne	@r0,#0x00,00503$
      002555 08               [12] 1342 	inc	r0
      002556 06               [12] 1343 	inc	@r0
      002557 B6 00 02         [24] 1344 	cjne	@r0,#0x00,00503$
      00255A 08               [12] 1345 	inc	r0
      00255B 06               [12] 1346 	inc	@r0
      00255C                       1347 00503$:
                                   1348 ;	life.c:150: fixed = 0;
      00255C 78 29            [12] 1349 	mov	r0,#_fixed
      00255E 76 00            [12] 1350 	mov	@r0,#0x00
                                   1351 ;	life.c:151: cycle2 = 0;
      002560 78 2A            [12] 1352 	mov	r0,#_cycle2
      002562 76 00            [12] 1353 	mov	@r0,#0x00
                                   1354 ;	life.c:153: OE76 = OE76_0;
      002564 78 23            [12] 1355 	mov	r0,#_OE76
      002566 76 3F            [12] 1356 	mov	@r0,#0x3f
                                   1357 ;	life.c:154: flashOE();
      002568 12 20 8D         [24] 1358 	lcall	_flashOE
                                   1359 ;	life.c:156: for (y = 0; y < H; y++) {
      00256B 78 26            [12] 1360 	mov	r0,#_y
      00256D E4               [12] 1361 	clr	a
      00256E F6               [12] 1362 	mov	@r0,a
      00256F 08               [12] 1363 	inc	r0
      002570 F6               [12] 1364 	mov	@r0,a
      002571                       1365 00230$:
                                   1366 ;	life.c:157: OE76 = OE76_0 | ((y & 0x0003u) << 6);
      002571 78 26            [12] 1367 	mov	r0,#_y
      002573 86 07            [24] 1368 	mov	ar7,@r0
      002575 53 07 03         [24] 1369 	anl	ar7,#0x03
      002578 EF               [12] 1370 	mov	a,r7
      002579 03               [12] 1371 	rr	a
      00257A 03               [12] 1372 	rr	a
      00257B 54 C0            [12] 1373 	anl	a,#0xc0
      00257D FF               [12] 1374 	mov	r7,a
      00257E 78 23            [12] 1375 	mov	r0,#_OE76
      002580 74 3F            [12] 1376 	mov	a,#0x3f
      002582 4F               [12] 1377 	orl	a,r7
      002583 F6               [12] 1378 	mov	@r0,a
                                   1379 ;	life.c:158: flashOE();
      002584 12 20 8D         [24] 1380 	lcall	_flashOE
                                   1381 ;	life.c:159: for (x = 0; x < W; x++) {
      002587 78 24            [12] 1382 	mov	r0,#_x
      002589 E4               [12] 1383 	clr	a
      00258A F6               [12] 1384 	mov	@r0,a
      00258B 08               [12] 1385 	inc	r0
      00258C F6               [12] 1386 	mov	@r0,a
      00258D                       1387 00228$:
                                   1388 ;	life.c:160: n = -u[A2D(W, y, x)];
      00258D 78 26            [12] 1389 	mov	r0,#_y
      00258F E6               [12] 1390 	mov	a,@r0
      002590 C0 E0            [24] 1391 	push	acc
      002592 08               [12] 1392 	inc	r0
      002593 E6               [12] 1393 	mov	a,@r0
      002594 C0 E0            [24] 1394 	push	acc
      002596 90 00 30         [24] 1395 	mov	dptr,#0x0030
      002599 12 2E 05         [24] 1396 	lcall	__mulint
      00259C C8               [12] 1397 	xch	a,r0
      00259D E5 10            [12] 1398 	mov	a,_bp
      00259F 24 04            [12] 1399 	add	a,#0x04
      0025A1 C8               [12] 1400 	xch	a,r0
      0025A2 A6 82            [24] 1401 	mov	@r0,dpl
      0025A4 08               [12] 1402 	inc	r0
      0025A5 A6 83            [24] 1403 	mov	@r0,dph
      0025A7 15 81            [12] 1404 	dec	sp
      0025A9 15 81            [12] 1405 	dec	sp
      0025AB E5 10            [12] 1406 	mov	a,_bp
      0025AD 24 04            [12] 1407 	add	a,#0x04
      0025AF F8               [12] 1408 	mov	r0,a
      0025B0 79 24            [12] 1409 	mov	r1,#_x
      0025B2 E7               [12] 1410 	mov	a,@r1
      0025B3 26               [12] 1411 	add	a,@r0
      0025B4 C0 E0            [24] 1412 	push	acc
      0025B6 09               [12] 1413 	inc	r1
      0025B7 E7               [12] 1414 	mov	a,@r1
      0025B8 08               [12] 1415 	inc	r0
      0025B9 36               [12] 1416 	addc	a,@r0
      0025BA C0 E0            [24] 1417 	push	acc
      0025BC E5 10            [12] 1418 	mov	a,_bp
      0025BE 24 03            [12] 1419 	add	a,#0x03
      0025C0 F8               [12] 1420 	mov	r0,a
      0025C1 D0 E0            [24] 1421 	pop	acc
      0025C3 F6               [12] 1422 	mov	@r0,a
      0025C4 18               [12] 1423 	dec	r0
      0025C5 D0 E0            [24] 1424 	pop	acc
      0025C7 F6               [12] 1425 	mov	@r0,a
      0025C8 A8 10            [24] 1426 	mov	r0,_bp
      0025CA 08               [12] 1427 	inc	r0
      0025CB 08               [12] 1428 	inc	r0
      0025CC E6               [12] 1429 	mov	a,@r0
      0025CD 24 00            [12] 1430 	add	a,#_u
      0025CF F5 82            [12] 1431 	mov	dpl,a
      0025D1 08               [12] 1432 	inc	r0
      0025D2 E6               [12] 1433 	mov	a,@r0
      0025D3 34 88            [12] 1434 	addc	a,#(_u >> 8)
      0025D5 F5 83            [12] 1435 	mov	dph,a
      0025D7 E0               [24] 1436 	movx	a,@dptr
      0025D8 FB               [12] 1437 	mov	r3,a
      0025D9 A8 10            [24] 1438 	mov	r0,_bp
      0025DB 08               [12] 1439 	inc	r0
      0025DC C3               [12] 1440 	clr	c
      0025DD E4               [12] 1441 	clr	a
      0025DE 9B               [12] 1442 	subb	a,r3
      0025DF F6               [12] 1443 	mov	@r0,a
                                   1444 ;	life.c:165: UPDN(-1, -1);
      0025E0 78 26            [12] 1445 	mov	r0,#_y
      0025E2 74 BF            [12] 1446 	mov	a,#0xbf
      0025E4 26               [12] 1447 	add	a,@r0
      0025E5 FA               [12] 1448 	mov	r2,a
      0025E6 E4               [12] 1449 	clr	a
      0025E7 08               [12] 1450 	inc	r0
      0025E8 36               [12] 1451 	addc	a,@r0
      0025E9 FB               [12] 1452 	mov	r3,a
      0025EA 74 C0            [12] 1453 	mov	a,#0xc0
      0025EC C0 E0            [24] 1454 	push	acc
      0025EE E4               [12] 1455 	clr	a
      0025EF C0 E0            [24] 1456 	push	acc
      0025F1 8A 82            [24] 1457 	mov	dpl,r2
      0025F3 8B 83            [24] 1458 	mov	dph,r3
      0025F5 12 2F E3         [24] 1459 	lcall	__modsint
      0025F8 AA 82            [24] 1460 	mov	r2,dpl
      0025FA AB 83            [24] 1461 	mov	r3,dph
      0025FC 15 81            [12] 1462 	dec	sp
      0025FE 15 81            [12] 1463 	dec	sp
      002600 C0 02            [24] 1464 	push	ar2
      002602 C0 03            [24] 1465 	push	ar3
      002604 90 00 30         [24] 1466 	mov	dptr,#0x0030
      002607 12 2E 05         [24] 1467 	lcall	__mulint
      00260A AA 82            [24] 1468 	mov	r2,dpl
      00260C AB 83            [24] 1469 	mov	r3,dph
      00260E 15 81            [12] 1470 	dec	sp
      002610 15 81            [12] 1471 	dec	sp
      002612 78 24            [12] 1472 	mov	r0,#_x
      002614 74 2F            [12] 1473 	mov	a,#0x2f
      002616 26               [12] 1474 	add	a,@r0
      002617 FC               [12] 1475 	mov	r4,a
      002618 E4               [12] 1476 	clr	a
      002619 08               [12] 1477 	inc	r0
      00261A 36               [12] 1478 	addc	a,@r0
      00261B FD               [12] 1479 	mov	r5,a
      00261C C0 03            [24] 1480 	push	ar3
      00261E C0 02            [24] 1481 	push	ar2
      002620 74 30            [12] 1482 	mov	a,#0x30
      002622 C0 E0            [24] 1483 	push	acc
      002624 E4               [12] 1484 	clr	a
      002625 C0 E0            [24] 1485 	push	acc
      002627 8C 82            [24] 1486 	mov	dpl,r4
      002629 8D 83            [24] 1487 	mov	dph,r5
      00262B 12 2F E3         [24] 1488 	lcall	__modsint
      00262E AC 82            [24] 1489 	mov	r4,dpl
      002630 AD 83            [24] 1490 	mov	r5,dph
      002632 15 81            [12] 1491 	dec	sp
      002634 15 81            [12] 1492 	dec	sp
      002636 D0 02            [24] 1493 	pop	ar2
      002638 D0 03            [24] 1494 	pop	ar3
      00263A EC               [12] 1495 	mov	a,r4
      00263B 2A               [12] 1496 	add	a,r2
      00263C FE               [12] 1497 	mov	r6,a
      00263D ED               [12] 1498 	mov	a,r5
      00263E 3B               [12] 1499 	addc	a,r3
      00263F FF               [12] 1500 	mov	r7,a
      002640 EE               [12] 1501 	mov	a,r6
      002641 24 00            [12] 1502 	add	a,#_u
      002643 F5 82            [12] 1503 	mov	dpl,a
      002645 EF               [12] 1504 	mov	a,r7
      002646 34 88            [12] 1505 	addc	a,#(_u >> 8)
      002648 F5 83            [12] 1506 	mov	dph,a
      00264A E0               [24] 1507 	movx	a,@dptr
      00264B FF               [12] 1508 	mov	r7,a
      00264C A8 10            [24] 1509 	mov	r0,_bp
      00264E 08               [12] 1510 	inc	r0
      00264F EF               [12] 1511 	mov	a,r7
      002650 26               [12] 1512 	add	a,@r0
      002651 F6               [12] 1513 	mov	@r0,a
                                   1514 ;	life.c:166: UPDN(-1, 0);
      002652 78 24            [12] 1515 	mov	r0,#_x
      002654 74 30            [12] 1516 	mov	a,#0x30
      002656 26               [12] 1517 	add	a,@r0
      002657 FE               [12] 1518 	mov	r6,a
      002658 E4               [12] 1519 	clr	a
      002659 08               [12] 1520 	inc	r0
      00265A 36               [12] 1521 	addc	a,@r0
      00265B FF               [12] 1522 	mov	r7,a
      00265C C0 05            [24] 1523 	push	ar5
      00265E C0 04            [24] 1524 	push	ar4
      002660 C0 03            [24] 1525 	push	ar3
      002662 C0 02            [24] 1526 	push	ar2
      002664 74 30            [12] 1527 	mov	a,#0x30
      002666 C0 E0            [24] 1528 	push	acc
      002668 E4               [12] 1529 	clr	a
      002669 C0 E0            [24] 1530 	push	acc
      00266B 8E 82            [24] 1531 	mov	dpl,r6
      00266D 8F 83            [24] 1532 	mov	dph,r7
      00266F 12 2F E3         [24] 1533 	lcall	__modsint
      002672 C8               [12] 1534 	xch	a,r0
      002673 E5 10            [12] 1535 	mov	a,_bp
      002675 24 06            [12] 1536 	add	a,#0x06
      002677 C8               [12] 1537 	xch	a,r0
      002678 A6 82            [24] 1538 	mov	@r0,dpl
      00267A 08               [12] 1539 	inc	r0
      00267B A6 83            [24] 1540 	mov	@r0,dph
      00267D 15 81            [12] 1541 	dec	sp
      00267F 15 81            [12] 1542 	dec	sp
      002681 D0 02            [24] 1543 	pop	ar2
      002683 D0 03            [24] 1544 	pop	ar3
      002685 E5 10            [12] 1545 	mov	a,_bp
      002687 24 06            [12] 1546 	add	a,#0x06
      002689 F8               [12] 1547 	mov	r0,a
      00268A E6               [12] 1548 	mov	a,@r0
      00268B 2A               [12] 1549 	add	a,r2
      00268C FE               [12] 1550 	mov	r6,a
      00268D 08               [12] 1551 	inc	r0
      00268E E6               [12] 1552 	mov	a,@r0
      00268F 3B               [12] 1553 	addc	a,r3
      002690 FF               [12] 1554 	mov	r7,a
      002691 EE               [12] 1555 	mov	a,r6
      002692 24 00            [12] 1556 	add	a,#_u
      002694 F5 82            [12] 1557 	mov	dpl,a
      002696 EF               [12] 1558 	mov	a,r7
      002697 34 88            [12] 1559 	addc	a,#(_u >> 8)
      002699 F5 83            [12] 1560 	mov	dph,a
      00269B E0               [24] 1561 	movx	a,@dptr
      00269C FF               [12] 1562 	mov	r7,a
      00269D A8 10            [24] 1563 	mov	r0,_bp
      00269F 08               [12] 1564 	inc	r0
      0026A0 EF               [12] 1565 	mov	a,r7
      0026A1 26               [12] 1566 	add	a,@r0
      0026A2 F6               [12] 1567 	mov	@r0,a
                                   1568 ;	life.c:167: UPDN(-1, 1);
      0026A3 78 24            [12] 1569 	mov	r0,#_x
      0026A5 74 31            [12] 1570 	mov	a,#0x31
      0026A7 26               [12] 1571 	add	a,@r0
      0026A8 FE               [12] 1572 	mov	r6,a
      0026A9 E4               [12] 1573 	clr	a
      0026AA 08               [12] 1574 	inc	r0
      0026AB 36               [12] 1575 	addc	a,@r0
      0026AC FF               [12] 1576 	mov	r7,a
      0026AD C0 03            [24] 1577 	push	ar3
      0026AF C0 02            [24] 1578 	push	ar2
      0026B1 74 30            [12] 1579 	mov	a,#0x30
      0026B3 C0 E0            [24] 1580 	push	acc
      0026B5 E4               [12] 1581 	clr	a
      0026B6 C0 E0            [24] 1582 	push	acc
      0026B8 8E 82            [24] 1583 	mov	dpl,r6
      0026BA 8F 83            [24] 1584 	mov	dph,r7
      0026BC 12 2F E3         [24] 1585 	lcall	__modsint
      0026BF AE 82            [24] 1586 	mov	r6,dpl
      0026C1 AF 83            [24] 1587 	mov	r7,dph
      0026C3 15 81            [12] 1588 	dec	sp
      0026C5 15 81            [12] 1589 	dec	sp
      0026C7 D0 02            [24] 1590 	pop	ar2
      0026C9 D0 03            [24] 1591 	pop	ar3
      0026CB D0 04            [24] 1592 	pop	ar4
      0026CD D0 05            [24] 1593 	pop	ar5
      0026CF EE               [12] 1594 	mov	a,r6
      0026D0 2A               [12] 1595 	add	a,r2
      0026D1 FA               [12] 1596 	mov	r2,a
      0026D2 EF               [12] 1597 	mov	a,r7
      0026D3 3B               [12] 1598 	addc	a,r3
      0026D4 FB               [12] 1599 	mov	r3,a
      0026D5 EA               [12] 1600 	mov	a,r2
      0026D6 24 00            [12] 1601 	add	a,#_u
      0026D8 F5 82            [12] 1602 	mov	dpl,a
      0026DA EB               [12] 1603 	mov	a,r3
      0026DB 34 88            [12] 1604 	addc	a,#(_u >> 8)
      0026DD F5 83            [12] 1605 	mov	dph,a
      0026DF E0               [24] 1606 	movx	a,@dptr
      0026E0 FB               [12] 1607 	mov	r3,a
      0026E1 A8 10            [24] 1608 	mov	r0,_bp
      0026E3 08               [12] 1609 	inc	r0
      0026E4 EB               [12] 1610 	mov	a,r3
      0026E5 26               [12] 1611 	add	a,@r0
      0026E6 F6               [12] 1612 	mov	@r0,a
                                   1613 ;	life.c:168: UPDN(0, -1);
      0026E7 78 26            [12] 1614 	mov	r0,#_y
      0026E9 74 C0            [12] 1615 	mov	a,#0xc0
      0026EB 26               [12] 1616 	add	a,@r0
      0026EC FA               [12] 1617 	mov	r2,a
      0026ED E4               [12] 1618 	clr	a
      0026EE 08               [12] 1619 	inc	r0
      0026EF 36               [12] 1620 	addc	a,@r0
      0026F0 FB               [12] 1621 	mov	r3,a
      0026F1 C0 07            [24] 1622 	push	ar7
      0026F3 C0 06            [24] 1623 	push	ar6
      0026F5 C0 05            [24] 1624 	push	ar5
      0026F7 C0 04            [24] 1625 	push	ar4
      0026F9 74 C0            [12] 1626 	mov	a,#0xc0
      0026FB C0 E0            [24] 1627 	push	acc
      0026FD E4               [12] 1628 	clr	a
      0026FE C0 E0            [24] 1629 	push	acc
      002700 8A 82            [24] 1630 	mov	dpl,r2
      002702 8B 83            [24] 1631 	mov	dph,r3
      002704 12 2F E3         [24] 1632 	lcall	__modsint
      002707 AA 82            [24] 1633 	mov	r2,dpl
      002709 AB 83            [24] 1634 	mov	r3,dph
      00270B 15 81            [12] 1635 	dec	sp
      00270D 15 81            [12] 1636 	dec	sp
      00270F C0 02            [24] 1637 	push	ar2
      002711 C0 03            [24] 1638 	push	ar3
      002713 90 00 30         [24] 1639 	mov	dptr,#0x0030
      002716 12 2E 05         [24] 1640 	lcall	__mulint
      002719 C8               [12] 1641 	xch	a,r0
      00271A E5 10            [12] 1642 	mov	a,_bp
      00271C 24 08            [12] 1643 	add	a,#0x08
      00271E C8               [12] 1644 	xch	a,r0
      00271F A6 82            [24] 1645 	mov	@r0,dpl
      002721 08               [12] 1646 	inc	r0
      002722 A6 83            [24] 1647 	mov	@r0,dph
      002724 15 81            [12] 1648 	dec	sp
      002726 15 81            [12] 1649 	dec	sp
      002728 D0 04            [24] 1650 	pop	ar4
      00272A D0 05            [24] 1651 	pop	ar5
      00272C D0 06            [24] 1652 	pop	ar6
      00272E D0 07            [24] 1653 	pop	ar7
      002730 E5 10            [12] 1654 	mov	a,_bp
      002732 24 08            [12] 1655 	add	a,#0x08
      002734 F8               [12] 1656 	mov	r0,a
      002735 EC               [12] 1657 	mov	a,r4
      002736 26               [12] 1658 	add	a,@r0
      002737 FA               [12] 1659 	mov	r2,a
      002738 ED               [12] 1660 	mov	a,r5
      002739 08               [12] 1661 	inc	r0
      00273A 36               [12] 1662 	addc	a,@r0
      00273B FB               [12] 1663 	mov	r3,a
      00273C EA               [12] 1664 	mov	a,r2
      00273D 24 00            [12] 1665 	add	a,#_u
      00273F F5 82            [12] 1666 	mov	dpl,a
      002741 EB               [12] 1667 	mov	a,r3
      002742 34 88            [12] 1668 	addc	a,#(_u >> 8)
      002744 F5 83            [12] 1669 	mov	dph,a
      002746 E0               [24] 1670 	movx	a,@dptr
      002747 FB               [12] 1671 	mov	r3,a
      002748 A8 10            [24] 1672 	mov	r0,_bp
      00274A 08               [12] 1673 	inc	r0
      00274B EB               [12] 1674 	mov	a,r3
      00274C 26               [12] 1675 	add	a,@r0
      00274D F6               [12] 1676 	mov	@r0,a
                                   1677 ;	life.c:169: UPDN(0, 0);
      00274E E5 10            [12] 1678 	mov	a,_bp
      002750 24 08            [12] 1679 	add	a,#0x08
      002752 F8               [12] 1680 	mov	r0,a
      002753 E5 10            [12] 1681 	mov	a,_bp
      002755 24 06            [12] 1682 	add	a,#0x06
      002757 F9               [12] 1683 	mov	r1,a
      002758 E7               [12] 1684 	mov	a,@r1
      002759 26               [12] 1685 	add	a,@r0
      00275A FA               [12] 1686 	mov	r2,a
      00275B 09               [12] 1687 	inc	r1
      00275C E7               [12] 1688 	mov	a,@r1
      00275D 08               [12] 1689 	inc	r0
      00275E 36               [12] 1690 	addc	a,@r0
      00275F FB               [12] 1691 	mov	r3,a
      002760 EA               [12] 1692 	mov	a,r2
      002761 24 00            [12] 1693 	add	a,#_u
      002763 F5 82            [12] 1694 	mov	dpl,a
      002765 EB               [12] 1695 	mov	a,r3
      002766 34 88            [12] 1696 	addc	a,#(_u >> 8)
      002768 F5 83            [12] 1697 	mov	dph,a
      00276A E0               [24] 1698 	movx	a,@dptr
      00276B FB               [12] 1699 	mov	r3,a
      00276C A8 10            [24] 1700 	mov	r0,_bp
      00276E 08               [12] 1701 	inc	r0
      00276F EB               [12] 1702 	mov	a,r3
      002770 26               [12] 1703 	add	a,@r0
      002771 F6               [12] 1704 	mov	@r0,a
                                   1705 ;	life.c:170: UPDN(0, 1);
      002772 E5 10            [12] 1706 	mov	a,_bp
      002774 24 08            [12] 1707 	add	a,#0x08
      002776 F8               [12] 1708 	mov	r0,a
      002777 EE               [12] 1709 	mov	a,r6
      002778 26               [12] 1710 	add	a,@r0
      002779 FA               [12] 1711 	mov	r2,a
      00277A EF               [12] 1712 	mov	a,r7
      00277B 08               [12] 1713 	inc	r0
      00277C 36               [12] 1714 	addc	a,@r0
      00277D FB               [12] 1715 	mov	r3,a
      00277E EA               [12] 1716 	mov	a,r2
      00277F 24 00            [12] 1717 	add	a,#_u
      002781 F5 82            [12] 1718 	mov	dpl,a
      002783 EB               [12] 1719 	mov	a,r3
      002784 34 88            [12] 1720 	addc	a,#(_u >> 8)
      002786 F5 83            [12] 1721 	mov	dph,a
      002788 E0               [24] 1722 	movx	a,@dptr
      002789 FB               [12] 1723 	mov	r3,a
      00278A A8 10            [24] 1724 	mov	r0,_bp
      00278C 08               [12] 1725 	inc	r0
      00278D E5 10            [12] 1726 	mov	a,_bp
      00278F 24 08            [12] 1727 	add	a,#0x08
      002791 F9               [12] 1728 	mov	r1,a
      002792 EB               [12] 1729 	mov	a,r3
      002793 26               [12] 1730 	add	a,@r0
      002794 F7               [12] 1731 	mov	@r1,a
                                   1732 ;	life.c:171: UPDN(1, -1);
      002795 78 26            [12] 1733 	mov	r0,#_y
      002797 74 C1            [12] 1734 	mov	a,#0xc1
      002799 26               [12] 1735 	add	a,@r0
      00279A FA               [12] 1736 	mov	r2,a
      00279B E4               [12] 1737 	clr	a
      00279C 08               [12] 1738 	inc	r0
      00279D 36               [12] 1739 	addc	a,@r0
      00279E FB               [12] 1740 	mov	r3,a
      00279F C0 07            [24] 1741 	push	ar7
      0027A1 C0 06            [24] 1742 	push	ar6
      0027A3 C0 05            [24] 1743 	push	ar5
      0027A5 C0 04            [24] 1744 	push	ar4
      0027A7 74 C0            [12] 1745 	mov	a,#0xc0
      0027A9 C0 E0            [24] 1746 	push	acc
      0027AB E4               [12] 1747 	clr	a
      0027AC C0 E0            [24] 1748 	push	acc
      0027AE 8A 82            [24] 1749 	mov	dpl,r2
      0027B0 8B 83            [24] 1750 	mov	dph,r3
      0027B2 12 2F E3         [24] 1751 	lcall	__modsint
      0027B5 AA 82            [24] 1752 	mov	r2,dpl
      0027B7 AB 83            [24] 1753 	mov	r3,dph
      0027B9 15 81            [12] 1754 	dec	sp
      0027BB 15 81            [12] 1755 	dec	sp
      0027BD C0 02            [24] 1756 	push	ar2
      0027BF C0 03            [24] 1757 	push	ar3
      0027C1 90 00 30         [24] 1758 	mov	dptr,#0x0030
      0027C4 12 2E 05         [24] 1759 	lcall	__mulint
      0027C7 AA 82            [24] 1760 	mov	r2,dpl
      0027C9 AB 83            [24] 1761 	mov	r3,dph
      0027CB 15 81            [12] 1762 	dec	sp
      0027CD 15 81            [12] 1763 	dec	sp
      0027CF D0 04            [24] 1764 	pop	ar4
      0027D1 D0 05            [24] 1765 	pop	ar5
      0027D3 D0 06            [24] 1766 	pop	ar6
      0027D5 D0 07            [24] 1767 	pop	ar7
      0027D7 EC               [12] 1768 	mov	a,r4
      0027D8 2A               [12] 1769 	add	a,r2
      0027D9 FC               [12] 1770 	mov	r4,a
      0027DA ED               [12] 1771 	mov	a,r5
      0027DB 3B               [12] 1772 	addc	a,r3
      0027DC FD               [12] 1773 	mov	r5,a
      0027DD EC               [12] 1774 	mov	a,r4
      0027DE 24 00            [12] 1775 	add	a,#_u
      0027E0 F5 82            [12] 1776 	mov	dpl,a
      0027E2 ED               [12] 1777 	mov	a,r5
      0027E3 34 88            [12] 1778 	addc	a,#(_u >> 8)
      0027E5 F5 83            [12] 1779 	mov	dph,a
      0027E7 E0               [24] 1780 	movx	a,@dptr
      0027E8 FD               [12] 1781 	mov	r5,a
      0027E9 E5 10            [12] 1782 	mov	a,_bp
      0027EB 24 08            [12] 1783 	add	a,#0x08
      0027ED F8               [12] 1784 	mov	r0,a
      0027EE E5 10            [12] 1785 	mov	a,_bp
      0027F0 24 08            [12] 1786 	add	a,#0x08
      0027F2 F9               [12] 1787 	mov	r1,a
      0027F3 ED               [12] 1788 	mov	a,r5
      0027F4 26               [12] 1789 	add	a,@r0
      0027F5 F7               [12] 1790 	mov	@r1,a
                                   1791 ;	life.c:172: UPDN(1, 0);
      0027F6 E5 10            [12] 1792 	mov	a,_bp
      0027F8 24 06            [12] 1793 	add	a,#0x06
      0027FA F8               [12] 1794 	mov	r0,a
      0027FB E6               [12] 1795 	mov	a,@r0
      0027FC 2A               [12] 1796 	add	a,r2
      0027FD FC               [12] 1797 	mov	r4,a
      0027FE 08               [12] 1798 	inc	r0
      0027FF E6               [12] 1799 	mov	a,@r0
      002800 3B               [12] 1800 	addc	a,r3
      002801 FD               [12] 1801 	mov	r5,a
      002802 EC               [12] 1802 	mov	a,r4
      002803 24 00            [12] 1803 	add	a,#_u
      002805 F5 82            [12] 1804 	mov	dpl,a
      002807 ED               [12] 1805 	mov	a,r5
      002808 34 88            [12] 1806 	addc	a,#(_u >> 8)
      00280A F5 83            [12] 1807 	mov	dph,a
      00280C E0               [24] 1808 	movx	a,@dptr
      00280D FD               [12] 1809 	mov	r5,a
      00280E E5 10            [12] 1810 	mov	a,_bp
      002810 24 08            [12] 1811 	add	a,#0x08
      002812 F8               [12] 1812 	mov	r0,a
      002813 ED               [12] 1813 	mov	a,r5
      002814 26               [12] 1814 	add	a,@r0
      002815 FD               [12] 1815 	mov	r5,a
                                   1816 ;	life.c:173: UPDN(1, 1);
      002816 EE               [12] 1817 	mov	a,r6
      002817 2A               [12] 1818 	add	a,r2
      002818 FE               [12] 1819 	mov	r6,a
      002819 EF               [12] 1820 	mov	a,r7
      00281A 3B               [12] 1821 	addc	a,r3
      00281B FF               [12] 1822 	mov	r7,a
      00281C EE               [12] 1823 	mov	a,r6
      00281D 24 00            [12] 1824 	add	a,#_u
      00281F F5 82            [12] 1825 	mov	dpl,a
      002821 EF               [12] 1826 	mov	a,r7
      002822 34 88            [12] 1827 	addc	a,#(_u >> 8)
      002824 F5 83            [12] 1828 	mov	dph,a
      002826 E0               [24] 1829 	movx	a,@dptr
      002827 2D               [12] 1830 	add	a,r5
      002828 FF               [12] 1831 	mov	r7,a
      002829 78 28            [12] 1832 	mov	r0,#_n
      00282B A6 07            [24] 1833 	mov	@r0,ar7
                                   1834 ;	life.c:176: nu[A2D(W, y, x)] = (n == 3) || ((n == 2) && u[A2D(W, y, x)]);
      00282D A8 10            [24] 1835 	mov	r0,_bp
      00282F 08               [12] 1836 	inc	r0
      002830 08               [12] 1837 	inc	r0
      002831 E6               [12] 1838 	mov	a,@r0
      002832 24 00            [12] 1839 	add	a,#_nu
      002834 FD               [12] 1840 	mov	r5,a
      002835 08               [12] 1841 	inc	r0
      002836 E6               [12] 1842 	mov	a,@r0
      002837 34 AC            [12] 1843 	addc	a,#(_nu >> 8)
      002839 FE               [12] 1844 	mov	r6,a
      00283A BF 03 02         [24] 1845 	cjne	r7,#0x03,00504$
      00283D 80 25            [24] 1846 	sjmp	00243$
      00283F                       1847 00504$:
      00283F BF 02 1E         [24] 1848 	cjne	r7,#0x02,00242$
      002842 E5 10            [12] 1849 	mov	a,_bp
      002844 24 04            [12] 1850 	add	a,#0x04
      002846 F8               [12] 1851 	mov	r0,a
      002847 79 24            [12] 1852 	mov	r1,#_x
      002849 E7               [12] 1853 	mov	a,@r1
      00284A 26               [12] 1854 	add	a,@r0
      00284B FC               [12] 1855 	mov	r4,a
      00284C 09               [12] 1856 	inc	r1
      00284D E7               [12] 1857 	mov	a,@r1
      00284E 08               [12] 1858 	inc	r0
      00284F 36               [12] 1859 	addc	a,@r0
      002850 FF               [12] 1860 	mov	r7,a
      002851 EC               [12] 1861 	mov	a,r4
      002852 24 00            [12] 1862 	add	a,#_u
      002854 FC               [12] 1863 	mov	r4,a
      002855 EF               [12] 1864 	mov	a,r7
      002856 34 88            [12] 1865 	addc	a,#(_u >> 8)
      002858 FF               [12] 1866 	mov	r7,a
      002859 8C 82            [24] 1867 	mov	dpl,r4
      00285B 8F 83            [24] 1868 	mov	dph,r7
      00285D E0               [24] 1869 	movx	a,@dptr
      00285E 70 04            [24] 1870 	jnz	00243$
      002860                       1871 00242$:
                                   1872 ;	assignBit
      002860 C2 00            [12] 1873 	clr	b0
      002862 80 02            [24] 1874 	sjmp	00244$
      002864                       1875 00243$:
                                   1876 ;	assignBit
      002864 D2 00            [12] 1877 	setb	b0
      002866                       1878 00244$:
      002866 A2 00            [12] 1879 	mov	c,b0
      002868 E4               [12] 1880 	clr	a
      002869 33               [12] 1881 	rlc	a
      00286A 8D 82            [24] 1882 	mov	dpl,r5
      00286C 8E 83            [24] 1883 	mov	dph,r6
      00286E F0               [24] 1884 	movx	@dptr,a
                                   1885 ;	life.c:177: cycle2 |= pu[A2D(W, y, x)] ^ nu[A2D(W, y, x)];
      00286F 78 26            [12] 1886 	mov	r0,#_y
      002871 E6               [12] 1887 	mov	a,@r0
      002872 C0 E0            [24] 1888 	push	acc
      002874 08               [12] 1889 	inc	r0
      002875 E6               [12] 1890 	mov	a,@r0
      002876 C0 E0            [24] 1891 	push	acc
      002878 90 00 30         [24] 1892 	mov	dptr,#0x0030
      00287B 12 2E 05         [24] 1893 	lcall	__mulint
      00287E AE 82            [24] 1894 	mov	r6,dpl
      002880 AF 83            [24] 1895 	mov	r7,dph
      002882 15 81            [12] 1896 	dec	sp
      002884 15 81            [12] 1897 	dec	sp
      002886 78 24            [12] 1898 	mov	r0,#_x
      002888 E6               [12] 1899 	mov	a,@r0
      002889 2E               [12] 1900 	add	a,r6
      00288A FE               [12] 1901 	mov	r6,a
      00288B 08               [12] 1902 	inc	r0
      00288C E6               [12] 1903 	mov	a,@r0
      00288D 3F               [12] 1904 	addc	a,r7
      00288E FF               [12] 1905 	mov	r7,a
      00288F EE               [12] 1906 	mov	a,r6
      002890 24 00            [12] 1907 	add	a,#_pu
      002892 F5 82            [12] 1908 	mov	dpl,a
      002894 EF               [12] 1909 	mov	a,r7
      002895 34 64            [12] 1910 	addc	a,#(_pu >> 8)
      002897 F5 83            [12] 1911 	mov	dph,a
      002899 E0               [24] 1912 	movx	a,@dptr
      00289A FD               [12] 1913 	mov	r5,a
      00289B EE               [12] 1914 	mov	a,r6
      00289C 24 00            [12] 1915 	add	a,#_nu
      00289E F5 82            [12] 1916 	mov	dpl,a
      0028A0 EF               [12] 1917 	mov	a,r7
      0028A1 34 AC            [12] 1918 	addc	a,#(_nu >> 8)
      0028A3 F5 83            [12] 1919 	mov	dph,a
      0028A5 E0               [24] 1920 	movx	a,@dptr
      0028A6 FC               [12] 1921 	mov	r4,a
      0028A7 6D               [12] 1922 	xrl	a,r5
      0028A8 78 2A            [12] 1923 	mov	r0,#_cycle2
      0028AA 46               [12] 1924 	orl	a,@r0
      0028AB F6               [12] 1925 	mov	@r0,a
                                   1926 ;	life.c:178: fixed |= u[A2D(W, y, x)] ^ nu[A2D(W, y, x)];
      0028AC EE               [12] 1927 	mov	a,r6
      0028AD 24 00            [12] 1928 	add	a,#_u
      0028AF F5 82            [12] 1929 	mov	dpl,a
      0028B1 EF               [12] 1930 	mov	a,r7
      0028B2 34 88            [12] 1931 	addc	a,#(_u >> 8)
      0028B4 F5 83            [12] 1932 	mov	dph,a
      0028B6 E0               [24] 1933 	movx	a,@dptr
      0028B7 FF               [12] 1934 	mov	r7,a
      0028B8 EC               [12] 1935 	mov	a,r4
      0028B9 6F               [12] 1936 	xrl	a,r7
      0028BA 78 29            [12] 1937 	mov	r0,#_fixed
      0028BC 46               [12] 1938 	orl	a,@r0
      0028BD F6               [12] 1939 	mov	@r0,a
                                   1940 ;	life.c:159: for (x = 0; x < W; x++) {
      0028BE 78 24            [12] 1941 	mov	r0,#_x
      0028C0 06               [12] 1942 	inc	@r0
      0028C1 B6 00 02         [24] 1943 	cjne	@r0,#0x00,00508$
      0028C4 08               [12] 1944 	inc	r0
      0028C5 06               [12] 1945 	inc	@r0
      0028C6                       1946 00508$:
      0028C6 78 24            [12] 1947 	mov	r0,#_x
      0028C8 C3               [12] 1948 	clr	c
      0028C9 E6               [12] 1949 	mov	a,@r0
      0028CA 94 30            [12] 1950 	subb	a,#0x30
      0028CC 08               [12] 1951 	inc	r0
      0028CD E6               [12] 1952 	mov	a,@r0
      0028CE 64 80            [12] 1953 	xrl	a,#0x80
      0028D0 94 80            [12] 1954 	subb	a,#0x80
      0028D2 50 03            [24] 1955 	jnc	00509$
      0028D4 02 25 8D         [24] 1956 	ljmp	00228$
      0028D7                       1957 00509$:
                                   1958 ;	life.c:156: for (y = 0; y < H; y++) {
      0028D7 78 26            [12] 1959 	mov	r0,#_y
      0028D9 06               [12] 1960 	inc	@r0
      0028DA B6 00 02         [24] 1961 	cjne	@r0,#0x00,00510$
      0028DD 08               [12] 1962 	inc	r0
      0028DE 06               [12] 1963 	inc	@r0
      0028DF                       1964 00510$:
      0028DF 78 26            [12] 1965 	mov	r0,#_y
      0028E1 C3               [12] 1966 	clr	c
      0028E2 E6               [12] 1967 	mov	a,@r0
      0028E3 94 C0            [12] 1968 	subb	a,#0xc0
      0028E5 08               [12] 1969 	inc	r0
      0028E6 E6               [12] 1970 	mov	a,@r0
      0028E7 64 80            [12] 1971 	xrl	a,#0x80
      0028E9 94 80            [12] 1972 	subb	a,#0x80
      0028EB 50 03            [24] 1973 	jnc	00511$
      0028ED 02 25 71         [24] 1974 	ljmp	00230$
      0028F0                       1975 00511$:
                                   1976 ;	life.c:182: OE76 = OE76_0;
      0028F0 78 23            [12] 1977 	mov	r0,#_OE76
      0028F2 76 3F            [12] 1978 	mov	@r0,#0x3f
                                   1979 ;	life.c:183: flashOE();
      0028F4 12 20 8D         [24] 1980 	lcall	_flashOE
                                   1981 ;	life.c:185: cycle2 = !cycle2;
      0028F7 78 2A            [12] 1982 	mov	r0,#_cycle2
      0028F9 E6               [12] 1983 	mov	a,@r0
      0028FA B4 01 00         [24] 1984 	cjne	a,#0x01,00512$
      0028FD                       1985 00512$:
      0028FD 92 00            [24] 1986 	mov	b0,c
      0028FF 78 2A            [12] 1987 	mov	r0,#_cycle2
      002901 E4               [12] 1988 	clr	a
      002902 33               [12] 1989 	rlc	a
      002903 F6               [12] 1990 	mov	@r0,a
                                   1991 ;	life.c:186: fixed = !fixed;
      002904 78 29            [12] 1992 	mov	r0,#_fixed
      002906 E6               [12] 1993 	mov	a,@r0
      002907 B4 01 00         [24] 1994 	cjne	a,#0x01,00513$
      00290A                       1995 00513$:
      00290A 92 00            [24] 1996 	mov	b0,c
      00290C 78 29            [12] 1997 	mov	r0,#_fixed
      00290E E4               [12] 1998 	clr	a
      00290F 33               [12] 1999 	rlc	a
      002910 F6               [12] 2000 	mov	@r0,a
                                   2001 ;	life.c:188: memcpy(pu, u, sizeof (u));
      002911 E4               [12] 2002 	clr	a
      002912 C0 E0            [24] 2003 	push	acc
      002914 74 24            [12] 2004 	mov	a,#0x24
      002916 C0 E0            [24] 2005 	push	acc
      002918 74 00            [12] 2006 	mov	a,#_u
      00291A C0 E0            [24] 2007 	push	acc
      00291C 74 88            [12] 2008 	mov	a,#(_u >> 8)
      00291E C0 E0            [24] 2009 	push	acc
      002920 E4               [12] 2010 	clr	a
      002921 C0 E0            [24] 2011 	push	acc
      002923 90 64 00         [24] 2012 	mov	dptr,#_pu
      002926 75 F0 00         [24] 2013 	mov	b,#0x00
      002929 12 2E A3         [24] 2014 	lcall	___memcpy
      00292C E5 81            [12] 2015 	mov	a,sp
      00292E 24 FB            [12] 2016 	add	a,#0xfb
      002930 F5 81            [12] 2017 	mov	sp,a
                                   2018 ;	life.c:189: memcpy(u, nu, sizeof (nu));
      002932 E4               [12] 2019 	clr	a
      002933 C0 E0            [24] 2020 	push	acc
      002935 74 24            [12] 2021 	mov	a,#0x24
      002937 C0 E0            [24] 2022 	push	acc
      002939 74 00            [12] 2023 	mov	a,#_nu
      00293B C0 E0            [24] 2024 	push	acc
      00293D 74 AC            [12] 2025 	mov	a,#(_nu >> 8)
      00293F C0 E0            [24] 2026 	push	acc
      002941 E4               [12] 2027 	clr	a
      002942 C0 E0            [24] 2028 	push	acc
      002944 90 88 00         [24] 2029 	mov	dptr,#_u
      002947 75 F0 00         [24] 2030 	mov	b,#0x00
      00294A 12 2E A3         [24] 2031 	lcall	___memcpy
      00294D E5 81            [12] 2032 	mov	a,sp
      00294F 24 FB            [12] 2033 	add	a,#0xfb
      002951 F5 81            [12] 2034 	mov	sp,a
                                   2035 ;	life.c:248: if (fixed || cycle2) {
      002953 78 29            [12] 2036 	mov	r0,#_fixed
      002955 E6               [12] 2037 	mov	a,@r0
      002956 70 05            [24] 2038 	jnz	00137$
      002958 78 2A            [12] 2039 	mov	r0,#_cycle2
      00295A E6               [12] 2040 	mov	a,@r0
      00295B 60 33            [24] 2041 	jz	00138$
      00295D                       2042 00137$:
                                   2043 ;	life.c:249: if (fixed) {
      00295D 78 29            [12] 2044 	mov	r0,#_fixed
      00295F E6               [12] 2045 	mov	a,@r0
      002960 60 0B            [24] 2046 	jz	00135$
                                   2047 ;	life.c:250: printstr("FIXED\r\n");
      002962 90 31 52         [24] 2048 	mov	dptr,#___str_12
      002965 75 F0 80         [24] 2049 	mov	b,#0x80
      002968 12 2B 20         [24] 2050 	lcall	_printstr
                                   2051 ;	life.c:251: break;
      00296B 80 7B            [24] 2052 	sjmp	00150$
      00296D                       2053 00135$:
                                   2054 ;	life.c:252: } else if (!c2set) {
      00296D 78 33            [12] 2055 	mov	r0,#_c2set
      00296F E6               [12] 2056 	mov	a,@r0
      002970 70 1E            [24] 2057 	jnz	00138$
                                   2058 ;	life.c:253: genc2 = gen;
      002972 78 2B            [12] 2059 	mov	r0,#_gen
      002974 86 04            [24] 2060 	mov	ar4,@r0
      002976 08               [12] 2061 	inc	r0
      002977 86 05            [24] 2062 	mov	ar5,@r0
      002979 08               [12] 2063 	inc	r0
      00297A 86 06            [24] 2064 	mov	ar6,@r0
      00297C 08               [12] 2065 	inc	r0
      00297D 86 07            [24] 2066 	mov	ar7,@r0
      00297F 78 2F            [12] 2067 	mov	r0,#_genc2
      002981 A6 04            [24] 2068 	mov	@r0,ar4
      002983 08               [12] 2069 	inc	r0
      002984 A6 05            [24] 2070 	mov	@r0,ar5
      002986 08               [12] 2071 	inc	r0
      002987 A6 06            [24] 2072 	mov	@r0,ar6
      002989 08               [12] 2073 	inc	r0
      00298A A6 07            [24] 2074 	mov	@r0,ar7
                                   2075 ;	life.c:254: c2set = 1;
      00298C 78 33            [12] 2076 	mov	r0,#_c2set
      00298E 76 01            [12] 2077 	mov	@r0,#0x01
      002990                       2078 00138$:
                                   2079 ;	life.c:258: c = getchar_poll();
      002990 12 2B 06         [24] 2080 	lcall	_getchar_poll
      002993 AE 82            [24] 2081 	mov	r6,dpl
      002995 AF 83            [24] 2082 	mov	r7,dph
                                   2083 ;	life.c:259: if (c > 0) {
      002997 C3               [12] 2084 	clr	c
      002998 E4               [12] 2085 	clr	a
      002999 9E               [12] 2086 	subb	a,r6
      00299A 74 80            [12] 2087 	mov	a,#(0x00 ^ 0x80)
      00299C 8F F0            [24] 2088 	mov	b,r7
      00299E 63 F0 80         [24] 2089 	xrl	b,#0x80
      0029A1 95 F0            [12] 2090 	subb	a,b
      0029A3 40 03            [24] 2091 	jc	00518$
      0029A5 02 25 05         [24] 2092 	ljmp	00234$
      0029A8                       2093 00518$:
                                   2094 ;	life.c:260: c = toupper(c);
      0029A8 8E 82            [24] 2095 	mov	dpl,r6
      0029AA 8F 83            [24] 2096 	mov	dph,r7
      0029AC 12 2F A0         [24] 2097 	lcall	_toupper
      0029AF AE 82            [24] 2098 	mov	r6,dpl
      0029B1 AF 83            [24] 2099 	mov	r7,dph
                                   2100 ;	life.c:261: if (c == (int)'U') pruni = !pruni;
      0029B3 BE 55 13         [24] 2101 	cjne	r6,#0x55,00146$
      0029B6 BF 00 10         [24] 2102 	cjne	r7,#0x00,00146$
      0029B9 78 34            [12] 2103 	mov	r0,#_pruni
      0029BB E6               [12] 2104 	mov	a,@r0
      0029BC B4 01 00         [24] 2105 	cjne	a,#0x01,00521$
      0029BF                       2106 00521$:
      0029BF 92 00            [24] 2107 	mov	b0,c
      0029C1 78 34            [12] 2108 	mov	r0,#_pruni
      0029C3 E4               [12] 2109 	clr	a
      0029C4 33               [12] 2110 	rlc	a
      0029C5 F6               [12] 2111 	mov	@r0,a
      0029C6 02 25 05         [24] 2112 	ljmp	00234$
      0029C9                       2113 00146$:
                                   2114 ;	life.c:262: else if (c == (int)'T') i0 = 1;
      0029C9 BE 54 0A         [24] 2115 	cjne	r6,#0x54,00143$
      0029CC BF 00 07         [24] 2116 	cjne	r7,#0x00,00143$
      0029CF 78 21            [12] 2117 	mov	r0,#_i0
      0029D1 76 01            [12] 2118 	mov	@r0,#0x01
      0029D3 02 25 05         [24] 2119 	ljmp	00234$
      0029D6                       2120 00143$:
                                   2121 ;	life.c:263: else if (c == (int)'B') i1 = 1;
      0029D6 BE 42 05         [24] 2122 	cjne	r6,#0x42,00524$
      0029D9 BF 00 02         [24] 2123 	cjne	r7,#0x00,00524$
      0029DC 80 03            [24] 2124 	sjmp	00525$
      0029DE                       2125 00524$:
      0029DE 02 25 05         [24] 2126 	ljmp	00234$
      0029E1                       2127 00525$:
      0029E1 78 22            [12] 2128 	mov	r0,#_i1
      0029E3 76 01            [12] 2129 	mov	@r0,#0x01
      0029E5 02 25 05         [24] 2130 	ljmp	00234$
      0029E8                       2131 00150$:
                                   2132 ;	life.c:267: if (i1) printstr("BREAK\r\n");
      0029E8 78 22            [12] 2133 	mov	r0,#_i1
      0029EA E6               [12] 2134 	mov	a,@r0
      0029EB 60 09            [24] 2135 	jz	00237$
      0029ED 90 31 5A         [24] 2136 	mov	dptr,#___str_13
      0029F0 75 F0 80         [24] 2137 	mov	b,#0x80
      0029F3 12 2B 20         [24] 2138 	lcall	_printstr
      0029F6                       2139 00237$:
                                   2140 ;	life.c:218: for (i0 = 0; !i0; ) {
      0029F6 78 21            [12] 2141 	mov	r0,#_i0
      0029F8 E6               [12] 2142 	mov	a,@r0
      0029F9 70 03            [24] 2143 	jnz	00527$
      0029FB 02 21 F6         [24] 2144 	ljmp	00236$
      0029FE                       2145 00527$:
                                   2146 ;	life.c:270: term:
      0029FE                       2147 00154$:
                                   2148 ;	life.c:271: EA = 0;
                                   2149 ;	assignBit
      0029FE C2 AF            [12] 2150 	clr	_EA
                                   2151 ;	life.c:272: printstr("TERM\r\n");
      002A00 90 31 62         [24] 2152 	mov	dptr,#___str_14
      002A03 75 F0 80         [24] 2153 	mov	b,#0x80
      002A06 12 2B 20         [24] 2154 	lcall	_printstr
                                   2155 ;	life.c:274: PCON |= 2;
      002A09 43 87 02         [24] 2156 	orl	_PCON,#0x02
                                   2157 ;	life.c:276: return;
                                   2158 ;	life.c:277: }
      002A0C 85 10 81         [24] 2159 	mov	sp,_bp
      002A0F D0 10            [24] 2160 	pop	_bp
      002A11 22               [24] 2161 	ret
                                   2162 	.area CSEG    (CODE)
                                   2163 	.area CONST   (CODE)
                                   2164 	.area CONST   (CODE)
      0030EF                       2165 ___str_0:
      0030EF 1B                    2166 	.db 0x1b
      0030F0 5B 32 4A              2167 	.ascii "[2J"
      0030F3 00                    2168 	.db 0x00
                                   2169 	.area CSEG    (CODE)
                                   2170 	.area CONST   (CODE)
      0030F4                       2171 ___str_1:
      0030F4 47 45 4E 20           2172 	.ascii "GEN "
      0030F8 00                    2173 	.db 0x00
                                   2174 	.area CSEG    (CODE)
                                   2175 	.area CONST   (CODE)
      0030F9                       2176 ___str_2:
      0030F9 20 43 59 43 4C 45 32  2177 	.ascii " CYCLE2 "
             20
      003101 00                    2178 	.db 0x00
                                   2179 	.area CSEG    (CODE)
                                   2180 	.area CONST   (CODE)
      003102                       2181 ___str_3:
      003102 0D                    2182 	.db 0x0d
      003103 0A                    2183 	.db 0x0a
      003104 00                    2184 	.db 0x00
                                   2185 	.area CSEG    (CODE)
                                   2186 	.area CONST   (CODE)
      003105                       2187 ___str_4:
      003105 1B                    2188 	.db 0x1b
      003106 5B 3F 32 35 6C        2189 	.ascii "[?25l"
      00310B 00                    2190 	.db 0x00
                                   2191 	.area CSEG    (CODE)
                                   2192 	.area CONST   (CODE)
      00310C                       2193 ___str_5:
      00310C 1B                    2194 	.db 0x1b
      00310D 5B 3F 32 35 68        2195 	.ascii "[?25h"
      003112 00                    2196 	.db 0x00
                                   2197 	.area CSEG    (CODE)
                                   2198 	.area CONST   (CODE)
      003113                       2199 ___str_6:
      003113 4C 4F 41 44 20 30 20  2200 	.ascii "LOAD 0 1 ~ # <"
             31 20 7E 20 23 20 3C
      003121 00                    2201 	.db 0x00
                                   2202 	.area CSEG    (CODE)
                                   2203 	.area CONST   (CODE)
      003122                       2204 ___str_7:
      003122 3E                    2205 	.ascii ">"
      003123 0D                    2206 	.db 0x0d
      003124 0A                    2207 	.db 0x0a
      003125 00                    2208 	.db 0x00
                                   2209 	.area CSEG    (CODE)
                                   2210 	.area CONST   (CODE)
      003126                       2211 ___str_8:
      003126 52 41 4E 44 4F 4D     2212 	.ascii "RANDOM"
      00312C 00                    2213 	.db 0x00
                                   2214 	.area CSEG    (CODE)
                                   2215 	.area CONST   (CODE)
      00312D                       2216 ___str_9:
      00312D 1B                    2217 	.db 0x1b
      00312E 5B 3F 32 35 68        2218 	.ascii "[?25h"
      003133 1B                    2219 	.db 0x1b
      003134 5B 6D                 2220 	.ascii "[m"
      003136 00                    2221 	.db 0x00
                                   2222 	.area CSEG    (CODE)
                                   2223 	.area CONST   (CODE)
      003137                       2224 ___str_10:
      003137 4C 49 46 45 20 49 20  2225 	.ascii "LIFE I L R O P S U B T"
             4C 20 52 20 4F 20 50
             20 53 20 55 20 42 20
             54
      00314D 0D                    2226 	.db 0x0d
      00314E 0A                    2227 	.db 0x0a
      00314F 00                    2228 	.db 0x00
                                   2229 	.area CSEG    (CODE)
                                   2230 	.area CONST   (CODE)
      003150                       2231 ___str_11:
      003150 55                    2232 	.ascii "U"
      003151 00                    2233 	.db 0x00
                                   2234 	.area CSEG    (CODE)
                                   2235 	.area CONST   (CODE)
      003152                       2236 ___str_12:
      003152 46 49 58 45 44        2237 	.ascii "FIXED"
      003157 0D                    2238 	.db 0x0d
      003158 0A                    2239 	.db 0x0a
      003159 00                    2240 	.db 0x00
                                   2241 	.area CSEG    (CODE)
                                   2242 	.area CONST   (CODE)
      00315A                       2243 ___str_13:
      00315A 42 52 45 41 4B        2244 	.ascii "BREAK"
      00315F 0D                    2245 	.db 0x0d
      003160 0A                    2246 	.db 0x0a
      003161 00                    2247 	.db 0x00
                                   2248 	.area CSEG    (CODE)
                                   2249 	.area CONST   (CODE)
      003162                       2250 ___str_14:
      003162 54 45 52 4D           2251 	.ascii "TERM"
      003166 0D                    2252 	.db 0x0d
      003167 0A                    2253 	.db 0x0a
      003168 00                    2254 	.db 0x00
                                   2255 	.area CSEG    (CODE)
                                   2256 	.area XINIT   (CODE)
                                   2257 	.area CABS    (ABS,CODE)
