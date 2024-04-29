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
                                     12 	.globl _evolveu
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
      00003A                        314 __start__stack:
      00003A                        315 	.ds	1
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
      000024                        327 _gen:
      000024                        328 	.ds 4
      000028                        329 _genc2:
      000028                        330 	.ds 4
      00002C                        331 _genfx:
      00002C                        332 	.ds 4
      000030                        333 _c2set:
      000030                        334 	.ds 1
      000031                        335 _fxset:
      000031                        336 	.ds 1
      000032                        337 _pruni:
      000032                        338 	.ds 1
      000033                        339 _x:
      000033                        340 	.ds 2
      000035                        341 _y:
      000035                        342 	.ds 2
      000037                        343 _n:
      000037                        344 	.ds 1
      000038                        345 _fixed:
      000038                        346 	.ds 1
      000039                        347 _cycle2:
      000039                        348 	.ds 1
                                    349 ;--------------------------------------------------------
                                    350 ; absolute internal ram data
                                    351 ;--------------------------------------------------------
                                    352 	.area IABS    (ABS,DATA)
                                    353 	.area IABS    (ABS,DATA)
                                    354 ;--------------------------------------------------------
                                    355 ; bit data
                                    356 ;--------------------------------------------------------
                                    357 	.area BSEG    (BIT)
                                    358 ;--------------------------------------------------------
                                    359 ; paged external ram data
                                    360 ;--------------------------------------------------------
                                    361 	.area PSEG    (PAG,XDATA)
                                    362 ;--------------------------------------------------------
                                    363 ; external ram data
                                    364 ;--------------------------------------------------------
                                    365 	.area XSEG    (XDATA)
                           00E000   366 _RND	=	0xe000
                           00F006   367 _OEreg	=	0xf006
      004000                        368 _iu:
      004000                        369 	.ds 9216
      006400                        370 _pu:
      006400                        371 	.ds 9216
      008800                        372 _u:
      008800                        373 	.ds 9216
      00AC00                        374 _nu:
      00AC00                        375 	.ds 9216
                                    376 ;--------------------------------------------------------
                                    377 ; absolute external ram data
                                    378 ;--------------------------------------------------------
                                    379 	.area XABS    (ABS,XDATA)
                                    380 ;--------------------------------------------------------
                                    381 ; external initialized ram data
                                    382 ;--------------------------------------------------------
                                    383 	.area XISEG   (XDATA)
                                    384 	.area HOME    (CODE)
                                    385 	.area GSINIT0 (CODE)
                                    386 	.area GSINIT1 (CODE)
                                    387 	.area GSINIT2 (CODE)
                                    388 	.area GSINIT3 (CODE)
                                    389 	.area GSINIT4 (CODE)
                                    390 	.area GSINIT5 (CODE)
                                    391 	.area GSINIT  (CODE)
                                    392 	.area GSFINAL (CODE)
                                    393 	.area CSEG    (CODE)
                                    394 ;--------------------------------------------------------
                                    395 ; interrupt vector 
                                    396 ;--------------------------------------------------------
                                    397 	.area HOME    (CODE)
      002000                        398 __interrupt_vect:
      002000 02 20 19         [24]  399 	ljmp	__sdcc_gsinit_startup
      002003 02 20 75         [24]  400 	ljmp	_int0
      002006                        401 	.ds	5
      00200B 32               [24]  402 	reti
      00200C                        403 	.ds	7
      002013 02 20 81         [24]  404 	ljmp	_int1
                                    405 ;--------------------------------------------------------
                                    406 ; global & static initialisations
                                    407 ;--------------------------------------------------------
                                    408 	.area HOME    (CODE)
                                    409 	.area GSINIT  (CODE)
                                    410 	.area GSFINAL (CODE)
                                    411 	.area GSINIT  (CODE)
                                    412 	.globl __sdcc_gsinit_startup
                                    413 	.globl __sdcc_program_startup
                                    414 	.globl __start__stack
                                    415 	.globl __mcs51_genXINIT
                                    416 	.globl __mcs51_genXRAMCLEAR
                                    417 	.globl __mcs51_genRAMCLEAR
                                    418 	.area GSFINAL (CODE)
      002072 02 20 16         [24]  419 	ljmp	__sdcc_program_startup
                                    420 ;--------------------------------------------------------
                                    421 ; Home
                                    422 ;--------------------------------------------------------
                                    423 	.area HOME    (CODE)
                                    424 	.area HOME    (CODE)
      002016                        425 __sdcc_program_startup:
      002016 02 27 99         [24]  426 	ljmp	_main
                                    427 ;	return from main will return to caller
                                    428 ;--------------------------------------------------------
                                    429 ; code
                                    430 ;--------------------------------------------------------
                                    431 	.area CSEG    (CODE)
                                    432 ;------------------------------------------------------------
                                    433 ;Allocation info for local variables in function 'int0'
                                    434 ;------------------------------------------------------------
                                    435 ;	life.c:13: void int0(void) __interrupt IE0_VECTOR __using 1 {
                                    436 ;	-----------------------------------------
                                    437 ;	 function int0
                                    438 ;	-----------------------------------------
      002075                        439 _int0:
                           00000F   440 	ar7 = 0x0f
                           00000E   441 	ar6 = 0x0e
                           00000D   442 	ar5 = 0x0d
                           00000C   443 	ar4 = 0x0c
                           00000B   444 	ar3 = 0x0b
                           00000A   445 	ar2 = 0x0a
                           000009   446 	ar1 = 0x09
                           000008   447 	ar0 = 0x08
      002075 C0 D0            [24]  448 	push	psw
      002077 75 D0 08         [24]  449 	mov	psw,#0x08
                                    450 ;	life.c:14: i0 = 1;
      00207A 78 21            [12]  451 	mov	r0,#_i0
      00207C 76 01            [12]  452 	mov	@r0,#0x01
                                    453 ;	life.c:15: }
      00207E D0 D0            [24]  454 	pop	psw
      002080 32               [24]  455 	reti
                                    456 ;	eliminated unneeded push/pop dpl
                                    457 ;	eliminated unneeded push/pop dph
                                    458 ;	eliminated unneeded push/pop b
                                    459 ;	eliminated unneeded push/pop acc
                                    460 ;------------------------------------------------------------
                                    461 ;Allocation info for local variables in function 'int1'
                                    462 ;------------------------------------------------------------
                                    463 ;	life.c:17: void int1(void) __interrupt IE1_VECTOR __using 1 {
                                    464 ;	-----------------------------------------
                                    465 ;	 function int1
                                    466 ;	-----------------------------------------
      002081                        467 _int1:
      002081 C0 D0            [24]  468 	push	psw
      002083 75 D0 08         [24]  469 	mov	psw,#0x08
                                    470 ;	life.c:18: i1 = 1;
      002086 78 22            [12]  471 	mov	r0,#_i1
      002088 76 01            [12]  472 	mov	@r0,#0x01
                                    473 ;	life.c:19: }
      00208A D0 D0            [24]  474 	pop	psw
      00208C 32               [24]  475 	reti
                                    476 ;	eliminated unneeded push/pop dpl
                                    477 ;	eliminated unneeded push/pop dph
                                    478 ;	eliminated unneeded push/pop b
                                    479 ;	eliminated unneeded push/pop acc
                                    480 ;------------------------------------------------------------
                                    481 ;Allocation info for local variables in function 'initu'
                                    482 ;------------------------------------------------------------
                                    483 ;	life.c:92: static void initu(void) {
                                    484 ;	-----------------------------------------
                                    485 ;	 function initu
                                    486 ;	-----------------------------------------
      00208D                        487 _initu:
                           000007   488 	ar7 = 0x07
                           000006   489 	ar6 = 0x06
                           000005   490 	ar5 = 0x05
                           000004   491 	ar4 = 0x04
                           000003   492 	ar3 = 0x03
                           000002   493 	ar2 = 0x02
                           000001   494 	ar1 = 0x01
                           000000   495 	ar0 = 0x00
                                    496 ;	life.c:93: memcpy(u, iu, sizeof (iu));
      00208D E4               [12]  497 	clr	a
      00208E C0 E0            [24]  498 	push	acc
      002090 74 24            [12]  499 	mov	a,#0x24
      002092 C0 E0            [24]  500 	push	acc
      002094 74 00            [12]  501 	mov	a,#_iu
      002096 C0 E0            [24]  502 	push	acc
      002098 74 40            [12]  503 	mov	a,#(_iu >> 8)
      00209A C0 E0            [24]  504 	push	acc
      00209C E4               [12]  505 	clr	a
      00209D C0 E0            [24]  506 	push	acc
      00209F 90 88 00         [24]  507 	mov	dptr,#_u
      0020A2 75 F0 00         [24]  508 	mov	b,#0x00
      0020A5 12 2E FA         [24]  509 	lcall	___memcpy
      0020A8 E5 81            [12]  510 	mov	a,sp
      0020AA 24 FB            [12]  511 	add	a,#0xfb
      0020AC F5 81            [12]  512 	mov	sp,a
                                    513 ;	life.c:94: memset(pu, 0, sizeof (pu));
      0020AE E4               [12]  514 	clr	a
      0020AF C0 E0            [24]  515 	push	acc
      0020B1 74 24            [12]  516 	mov	a,#0x24
      0020B3 C0 E0            [24]  517 	push	acc
      0020B5 E4               [12]  518 	clr	a
      0020B6 C0 E0            [24]  519 	push	acc
      0020B8 90 64 00         [24]  520 	mov	dptr,#_pu
      0020BB 75 F0 00         [24]  521 	mov	b,#0x00
      0020BE 12 2F 8D         [24]  522 	lcall	_memset
      0020C1 15 81            [12]  523 	dec	sp
      0020C3 15 81            [12]  524 	dec	sp
      0020C5 15 81            [12]  525 	dec	sp
                                    526 ;	life.c:43: gen = 0ul;
      0020C7 78 24            [12]  527 	mov	r0,#_gen
      0020C9 E4               [12]  528 	clr	a
      0020CA F6               [12]  529 	mov	@r0,a
      0020CB 08               [12]  530 	inc	r0
      0020CC F6               [12]  531 	mov	@r0,a
      0020CD 08               [12]  532 	inc	r0
      0020CE F6               [12]  533 	mov	@r0,a
      0020CF 08               [12]  534 	inc	r0
      0020D0 F6               [12]  535 	mov	@r0,a
                                    536 ;	life.c:44: genc2 = 0ul;
      0020D1 78 28            [12]  537 	mov	r0,#_genc2
      0020D3 F6               [12]  538 	mov	@r0,a
      0020D4 08               [12]  539 	inc	r0
      0020D5 F6               [12]  540 	mov	@r0,a
      0020D6 08               [12]  541 	inc	r0
      0020D7 F6               [12]  542 	mov	@r0,a
      0020D8 08               [12]  543 	inc	r0
      0020D9 F6               [12]  544 	mov	@r0,a
                                    545 ;	life.c:45: genfx = 0ul;
      0020DA 78 2C            [12]  546 	mov	r0,#_genfx
      0020DC F6               [12]  547 	mov	@r0,a
      0020DD 08               [12]  548 	inc	r0
      0020DE F6               [12]  549 	mov	@r0,a
      0020DF 08               [12]  550 	inc	r0
      0020E0 F6               [12]  551 	mov	@r0,a
      0020E1 08               [12]  552 	inc	r0
      0020E2 F6               [12]  553 	mov	@r0,a
                                    554 ;	life.c:46: c2set = 0;
      0020E3 78 30            [12]  555 	mov	r0,#_c2set
      0020E5 76 00            [12]  556 	mov	@r0,#0x00
                                    557 ;	life.c:47: fxset = 0;
      0020E7 78 31            [12]  558 	mov	r0,#_fxset
      0020E9 76 00            [12]  559 	mov	@r0,#0x00
                                    560 ;	life.c:97: return;
                                    561 ;	life.c:98: }
      0020EB 22               [24]  562 	ret
                                    563 ;------------------------------------------------------------
                                    564 ;Allocation info for local variables in function 'showu'
                                    565 ;------------------------------------------------------------
                                    566 ;universe                  Allocated to stack - _bp -5
                                    567 ;prflags                   Allocated to registers r7 
                                    568 ;------------------------------------------------------------
                                    569 ;	life.c:105: static void showu(char prflags, char *universe) {
                                    570 ;	-----------------------------------------
                                    571 ;	 function showu
                                    572 ;	-----------------------------------------
      0020EC                        573 _showu:
      0020EC C0 10            [24]  574 	push	_bp
      0020EE 85 81 10         [24]  575 	mov	_bp,sp
                                    576 ;	life.c:106: if (prflags & PRCLR) printstr("\033[2J");
      0020F1 E5 82            [12]  577 	mov	a,dpl
      0020F3 FF               [12]  578 	mov	r7,a
      0020F4 30 E0 0D         [24]  579 	jnb	acc.0,00102$
      0020F7 90 31 46         [24]  580 	mov	dptr,#___str_0
      0020FA 75 F0 80         [24]  581 	mov	b,#0x80
      0020FD C0 07            [24]  582 	push	ar7
      0020FF 12 2B 77         [24]  583 	lcall	_printstr
      002102 D0 07            [24]  584 	pop	ar7
      002104                        585 00102$:
                                    586 ;	life.c:107: if (prflags & PRHDR) {
      002104 EF               [12]  587 	mov	a,r7
      002105 30 E1 6B         [24]  588 	jnb	acc.1,00108$
                                    589 ;	life.c:108: printstr("GEN ");
      002108 90 31 4B         [24]  590 	mov	dptr,#___str_1
      00210B 75 F0 80         [24]  591 	mov	b,#0x80
      00210E C0 07            [24]  592 	push	ar7
      002110 12 2B 77         [24]  593 	lcall	_printstr
                                    594 ;	life.c:109: print32x(gen);
      002113 78 24            [12]  595 	mov	r0,#_gen
      002115 86 82            [24]  596 	mov	dpl,@r0
      002117 08               [12]  597 	inc	r0
      002118 86 83            [24]  598 	mov	dph,@r0
      00211A 08               [12]  599 	inc	r0
      00211B 86 F0            [24]  600 	mov	b,@r0
      00211D 08               [12]  601 	inc	r0
      00211E E6               [12]  602 	mov	a,@r0
      00211F 12 2D 27         [24]  603 	lcall	_print32x
      002122 D0 07            [24]  604 	pop	ar7
                                    605 ;	life.c:110: if (c2set) {
      002124 78 30            [12]  606 	mov	r0,#_c2set
      002126 E6               [12]  607 	mov	a,@r0
      002127 60 1C            [24]  608 	jz	00104$
                                    609 ;	life.c:111: printstr(" CYCLE2 ");
      002129 90 31 50         [24]  610 	mov	dptr,#___str_2
      00212C 75 F0 80         [24]  611 	mov	b,#0x80
      00212F C0 07            [24]  612 	push	ar7
      002131 12 2B 77         [24]  613 	lcall	_printstr
                                    614 ;	life.c:112: print32x(genc2);
      002134 78 28            [12]  615 	mov	r0,#_genc2
      002136 86 82            [24]  616 	mov	dpl,@r0
      002138 08               [12]  617 	inc	r0
      002139 86 83            [24]  618 	mov	dph,@r0
      00213B 08               [12]  619 	inc	r0
      00213C 86 F0            [24]  620 	mov	b,@r0
      00213E 08               [12]  621 	inc	r0
      00213F E6               [12]  622 	mov	a,@r0
      002140 12 2D 27         [24]  623 	lcall	_print32x
      002143 D0 07            [24]  624 	pop	ar7
      002145                        625 00104$:
                                    626 ;	life.c:114: if (fxset) {
      002145 78 31            [12]  627 	mov	r0,#_fxset
      002147 E6               [12]  628 	mov	a,@r0
      002148 60 1C            [24]  629 	jz	00106$
                                    630 ;	life.c:115: printstr(" FIXED ");
      00214A 90 31 59         [24]  631 	mov	dptr,#___str_3
      00214D 75 F0 80         [24]  632 	mov	b,#0x80
      002150 C0 07            [24]  633 	push	ar7
      002152 12 2B 77         [24]  634 	lcall	_printstr
                                    635 ;	life.c:116: print32x(genfx);
      002155 78 2C            [12]  636 	mov	r0,#_genfx
      002157 86 82            [24]  637 	mov	dpl,@r0
      002159 08               [12]  638 	inc	r0
      00215A 86 83            [24]  639 	mov	dph,@r0
      00215C 08               [12]  640 	inc	r0
      00215D 86 F0            [24]  641 	mov	b,@r0
      00215F 08               [12]  642 	inc	r0
      002160 E6               [12]  643 	mov	a,@r0
      002161 12 2D 27         [24]  644 	lcall	_print32x
      002164 D0 07            [24]  645 	pop	ar7
      002166                        646 00106$:
                                    647 ;	life.c:118: printstr("\r\n");
      002166 90 31 61         [24]  648 	mov	dptr,#___str_4
      002169 75 F0 80         [24]  649 	mov	b,#0x80
      00216C C0 07            [24]  650 	push	ar7
      00216E 12 2B 77         [24]  651 	lcall	_printstr
      002171 D0 07            [24]  652 	pop	ar7
      002173                        653 00108$:
                                    654 ;	life.c:120: if (prflags & PRUNI) {
      002173 EF               [12]  655 	mov	a,r7
      002174 20 E2 03         [24]  656 	jb	acc.2,00166$
      002177 02 22 18         [24]  657 	ljmp	00115$
      00217A                        658 00166$:
                                    659 ;	life.c:121: printstr("\033[?25l");
      00217A 90 31 64         [24]  660 	mov	dptr,#___str_5
      00217D 75 F0 80         [24]  661 	mov	b,#0x80
      002180 12 2B 77         [24]  662 	lcall	_printstr
                                    663 ;	life.c:122: for (x = 0; x < W; x++) {
      002183 78 33            [12]  664 	mov	r0,#_x
      002185 E4               [12]  665 	clr	a
      002186 F6               [12]  666 	mov	@r0,a
      002187 08               [12]  667 	inc	r0
      002188 F6               [12]  668 	mov	@r0,a
      002189                        669 00118$:
                                    670 ;	life.c:123: for (y = 0; y < H; y++)
      002189 78 35            [12]  671 	mov	r0,#_y
      00218B E4               [12]  672 	clr	a
      00218C F6               [12]  673 	mov	@r0,a
      00218D 08               [12]  674 	inc	r0
      00218E F6               [12]  675 	mov	@r0,a
      00218F                        676 00116$:
                                    677 ;	life.c:124: if (universe[A2D(W, y, x)]) putchar((int)'1');
      00218F 78 35            [12]  678 	mov	r0,#_y
      002191 E6               [12]  679 	mov	a,@r0
      002192 C0 E0            [24]  680 	push	acc
      002194 08               [12]  681 	inc	r0
      002195 E6               [12]  682 	mov	a,@r0
      002196 C0 E0            [24]  683 	push	acc
      002198 90 00 30         [24]  684 	mov	dptr,#0x0030
      00219B 12 2E 5C         [24]  685 	lcall	__mulint
      00219E AE 82            [24]  686 	mov	r6,dpl
      0021A0 AF 83            [24]  687 	mov	r7,dph
      0021A2 15 81            [12]  688 	dec	sp
      0021A4 15 81            [12]  689 	dec	sp
      0021A6 78 33            [12]  690 	mov	r0,#_x
      0021A8 E6               [12]  691 	mov	a,@r0
      0021A9 2E               [12]  692 	add	a,r6
      0021AA FE               [12]  693 	mov	r6,a
      0021AB 08               [12]  694 	inc	r0
      0021AC E6               [12]  695 	mov	a,@r0
      0021AD 3F               [12]  696 	addc	a,r7
      0021AE FF               [12]  697 	mov	r7,a
      0021AF E5 10            [12]  698 	mov	a,_bp
      0021B1 24 FB            [12]  699 	add	a,#0xfb
      0021B3 F8               [12]  700 	mov	r0,a
      0021B4 EE               [12]  701 	mov	a,r6
      0021B5 26               [12]  702 	add	a,@r0
      0021B6 FE               [12]  703 	mov	r6,a
      0021B7 EF               [12]  704 	mov	a,r7
      0021B8 08               [12]  705 	inc	r0
      0021B9 36               [12]  706 	addc	a,@r0
      0021BA FF               [12]  707 	mov	r7,a
      0021BB 08               [12]  708 	inc	r0
      0021BC 86 05            [24]  709 	mov	ar5,@r0
      0021BE 8E 82            [24]  710 	mov	dpl,r6
      0021C0 8F 83            [24]  711 	mov	dph,r7
      0021C2 8D F0            [24]  712 	mov	b,r5
      0021C4 12 30 1E         [24]  713 	lcall	__gptrget
      0021C7 60 08            [24]  714 	jz	00110$
      0021C9 90 00 31         [24]  715 	mov	dptr,#0x0031
      0021CC 12 2B 46         [24]  716 	lcall	_putchar
      0021CF 80 06            [24]  717 	sjmp	00117$
      0021D1                        718 00110$:
                                    719 ;	life.c:125: else putchar((int)'0');
      0021D1 90 00 30         [24]  720 	mov	dptr,#0x0030
      0021D4 12 2B 46         [24]  721 	lcall	_putchar
      0021D7                        722 00117$:
                                    723 ;	life.c:123: for (y = 0; y < H; y++)
      0021D7 78 35            [12]  724 	mov	r0,#_y
      0021D9 06               [12]  725 	inc	@r0
      0021DA B6 00 02         [24]  726 	cjne	@r0,#0x00,00168$
      0021DD 08               [12]  727 	inc	r0
      0021DE 06               [12]  728 	inc	@r0
      0021DF                        729 00168$:
      0021DF 78 35            [12]  730 	mov	r0,#_y
      0021E1 C3               [12]  731 	clr	c
      0021E2 E6               [12]  732 	mov	a,@r0
      0021E3 94 C0            [12]  733 	subb	a,#0xc0
      0021E5 08               [12]  734 	inc	r0
      0021E6 E6               [12]  735 	mov	a,@r0
      0021E7 64 80            [12]  736 	xrl	a,#0x80
      0021E9 94 80            [12]  737 	subb	a,#0x80
      0021EB 40 A2            [24]  738 	jc	00116$
                                    739 ;	life.c:126: printstr("\r\n");
      0021ED 90 31 61         [24]  740 	mov	dptr,#___str_4
      0021F0 75 F0 80         [24]  741 	mov	b,#0x80
      0021F3 12 2B 77         [24]  742 	lcall	_printstr
                                    743 ;	life.c:122: for (x = 0; x < W; x++) {
      0021F6 78 33            [12]  744 	mov	r0,#_x
      0021F8 06               [12]  745 	inc	@r0
      0021F9 B6 00 02         [24]  746 	cjne	@r0,#0x00,00170$
      0021FC 08               [12]  747 	inc	r0
      0021FD 06               [12]  748 	inc	@r0
      0021FE                        749 00170$:
      0021FE 78 33            [12]  750 	mov	r0,#_x
      002200 C3               [12]  751 	clr	c
      002201 E6               [12]  752 	mov	a,@r0
      002202 94 30            [12]  753 	subb	a,#0x30
      002204 08               [12]  754 	inc	r0
      002205 E6               [12]  755 	mov	a,@r0
      002206 64 80            [12]  756 	xrl	a,#0x80
      002208 94 80            [12]  757 	subb	a,#0x80
      00220A 50 03            [24]  758 	jnc	00171$
      00220C 02 21 89         [24]  759 	ljmp	00118$
      00220F                        760 00171$:
                                    761 ;	life.c:128: printstr("\033[?25h");
      00220F 90 31 6B         [24]  762 	mov	dptr,#___str_6
      002212 75 F0 80         [24]  763 	mov	b,#0x80
      002215 12 2B 77         [24]  764 	lcall	_printstr
      002218                        765 00115$:
                                    766 ;	life.c:131: return;
                                    767 ;	life.c:132: }
      002218 D0 10            [24]  768 	pop	_bp
      00221A 22               [24]  769 	ret
                                    770 ;------------------------------------------------------------
                                    771 ;Allocation info for local variables in function 'loadiu'
                                    772 ;------------------------------------------------------------
                                    773 ;nbits                     Allocated to registers r6 r7 
                                    774 ;c                         Allocated to registers r4 r5 
                                    775 ;sloc0                     Allocated to stack - _bp +5
                                    776 ;------------------------------------------------------------
                                    777 ;	life.c:134: static void loadiu(void) {
                                    778 ;	-----------------------------------------
                                    779 ;	 function loadiu
                                    780 ;	-----------------------------------------
      00221B                        781 _loadiu:
                                    782 ;	life.c:137: memset(iu, 0, sizeof (iu));
      00221B E4               [12]  783 	clr	a
      00221C C0 E0            [24]  784 	push	acc
      00221E 74 24            [12]  785 	mov	a,#0x24
      002220 C0 E0            [24]  786 	push	acc
      002222 E4               [12]  787 	clr	a
      002223 C0 E0            [24]  788 	push	acc
      002225 90 40 00         [24]  789 	mov	dptr,#_iu
      002228 75 F0 00         [24]  790 	mov	b,#0x00
      00222B 12 2F 8D         [24]  791 	lcall	_memset
      00222E 15 81            [12]  792 	dec	sp
      002230 15 81            [12]  793 	dec	sp
      002232 15 81            [12]  794 	dec	sp
                                    795 ;	life.c:139: printstr("LOAD 0 1 ~ # <");
      002234 90 31 72         [24]  796 	mov	dptr,#___str_7
      002237 75 F0 80         [24]  797 	mov	b,#0x80
      00223A 12 2B 77         [24]  798 	lcall	_printstr
                                    799 ;	life.c:141: for (nbits = 0, y = 0; y < (H * W); y += W) {
      00223D 7E 00            [12]  800 	mov	r6,#0x00
      00223F 7F 00            [12]  801 	mov	r7,#0x00
      002241 78 35            [12]  802 	mov	r0,#_y
      002243 E4               [12]  803 	clr	a
      002244 F6               [12]  804 	mov	@r0,a
      002245 08               [12]  805 	inc	r0
      002246 F6               [12]  806 	mov	@r0,a
      002247                        807 00129$:
      002247 78 35            [12]  808 	mov	r0,#_y
      002249 C3               [12]  809 	clr	c
      00224A 08               [12]  810 	inc	r0
      00224B E6               [12]  811 	mov	a,@r0
      00224C 64 80            [12]  812 	xrl	a,#0x80
      00224E 94 A4            [12]  813 	subb	a,#0xa4
      002250 40 03            [24]  814 	jc	00173$
      002252 02 22 EB         [24]  815 	ljmp	00119$
      002255                        816 00173$:
                                    817 ;	life.c:142: for (x = 0; x < W; x++) {
      002255 78 33            [12]  818 	mov	r0,#_x
      002257 E4               [12]  819 	clr	a
      002258 F6               [12]  820 	mov	@r0,a
      002259 08               [12]  821 	inc	r0
      00225A F6               [12]  822 	mov	@r0,a
                                    823 ;	life.c:143: while (1) {
      00225B                        824 00113$:
                                    825 ;	life.c:144: c = getchar();
      00225B C0 07            [24]  826 	push	ar7
      00225D C0 06            [24]  827 	push	ar6
      00225F 12 2B 50         [24]  828 	lcall	_getchar
      002262 AB 82            [24]  829 	mov	r3,dpl
      002264 AA 83            [24]  830 	mov	r2,dph
      002266 D0 06            [24]  831 	pop	ar6
      002268 D0 07            [24]  832 	pop	ar7
                                    833 ;	life.c:145: if (c == (int)'0') {
      00226A BB 30 22         [24]  834 	cjne	r3,#0x30,00110$
      00226D BA 00 1F         [24]  835 	cjne	r2,#0x00,00110$
                                    836 ;	life.c:146: iu[y + x] = 0;
      002270 78 35            [12]  837 	mov	r0,#_y
      002272 79 33            [12]  838 	mov	r1,#_x
      002274 E7               [12]  839 	mov	a,@r1
      002275 26               [12]  840 	add	a,@r0
      002276 FC               [12]  841 	mov	r4,a
      002277 09               [12]  842 	inc	r1
      002278 E7               [12]  843 	mov	a,@r1
      002279 08               [12]  844 	inc	r0
      00227A 36               [12]  845 	addc	a,@r0
      00227B FD               [12]  846 	mov	r5,a
      00227C EC               [12]  847 	mov	a,r4
      00227D 24 00            [12]  848 	add	a,#_iu
      00227F F5 82            [12]  849 	mov	dpl,a
      002281 ED               [12]  850 	mov	a,r5
      002282 34 40            [12]  851 	addc	a,#(_iu >> 8)
      002284 F5 83            [12]  852 	mov	dph,a
      002286 E4               [12]  853 	clr	a
      002287 F0               [24]  854 	movx	@dptr,a
                                    855 ;	life.c:147: nbits++;
      002288 0E               [12]  856 	inc	r6
                                    857 ;	life.c:148: break;
      002289 BE 00 39         [24]  858 	cjne	r6,#0x00,00116$
      00228C 0F               [12]  859 	inc	r7
      00228D 80 36            [24]  860 	sjmp	00116$
      00228F                        861 00110$:
                                    862 ;	life.c:149: } else if (c == (int)'1') {
      00228F BB 31 23         [24]  863 	cjne	r3,#0x31,00107$
      002292 BA 00 20         [24]  864 	cjne	r2,#0x00,00107$
                                    865 ;	life.c:150: iu[y + x] = 1;
      002295 78 35            [12]  866 	mov	r0,#_y
      002297 79 33            [12]  867 	mov	r1,#_x
      002299 E7               [12]  868 	mov	a,@r1
      00229A 26               [12]  869 	add	a,@r0
      00229B FC               [12]  870 	mov	r4,a
      00229C 09               [12]  871 	inc	r1
      00229D E7               [12]  872 	mov	a,@r1
      00229E 08               [12]  873 	inc	r0
      00229F 36               [12]  874 	addc	a,@r0
      0022A0 FD               [12]  875 	mov	r5,a
      0022A1 EC               [12]  876 	mov	a,r4
      0022A2 24 00            [12]  877 	add	a,#_iu
      0022A4 F5 82            [12]  878 	mov	dpl,a
      0022A6 ED               [12]  879 	mov	a,r5
      0022A7 34 40            [12]  880 	addc	a,#(_iu >> 8)
      0022A9 F5 83            [12]  881 	mov	dph,a
      0022AB 74 01            [12]  882 	mov	a,#0x01
      0022AD F0               [24]  883 	movx	@dptr,a
                                    884 ;	life.c:151: nbits++;
      0022AE 0E               [12]  885 	inc	r6
                                    886 ;	life.c:152: break;
      0022AF BE 00 13         [24]  887 	cjne	r6,#0x00,00116$
      0022B2 0F               [12]  888 	inc	r7
      0022B3 80 10            [24]  889 	sjmp	00116$
      0022B5                        890 00107$:
                                    891 ;	life.c:153: } else if (c == (int)'~') goto br_inner;
      0022B5 BB 7E 05         [24]  892 	cjne	r3,#0x7e,00180$
      0022B8 BA 00 02         [24]  893 	cjne	r2,#0x00,00180$
      0022BB 80 21            [24]  894 	sjmp	00130$
      0022BD                        895 00180$:
                                    896 ;	life.c:154: else if (c == (int)'#') goto out;
                                    897 ;	life.c:158: break;
      0022BD BB 23 9B         [24]  898 	cjne	r3,#0x23,00113$
      0022C0 BA 00 98         [24]  899 	cjne	r2,#0x00,00113$
      0022C3 80 26            [24]  900 	sjmp	00119$
      0022C5                        901 00116$:
                                    902 ;	life.c:142: for (x = 0; x < W; x++) {
      0022C5 78 33            [12]  903 	mov	r0,#_x
      0022C7 06               [12]  904 	inc	@r0
      0022C8 B6 00 02         [24]  905 	cjne	@r0,#0x00,00182$
      0022CB 08               [12]  906 	inc	r0
      0022CC 06               [12]  907 	inc	@r0
      0022CD                        908 00182$:
      0022CD 78 33            [12]  909 	mov	r0,#_x
      0022CF C3               [12]  910 	clr	c
      0022D0 E6               [12]  911 	mov	a,@r0
      0022D1 94 30            [12]  912 	subb	a,#0x30
      0022D3 08               [12]  913 	inc	r0
      0022D4 E6               [12]  914 	mov	a,@r0
      0022D5 64 80            [12]  915 	xrl	a,#0x80
      0022D7 94 80            [12]  916 	subb	a,#0x80
      0022D9 50 03            [24]  917 	jnc	00183$
      0022DB 02 22 5B         [24]  918 	ljmp	00113$
      0022DE                        919 00183$:
      0022DE                        920 00130$:
                                    921 ;	life.c:141: for (nbits = 0, y = 0; y < (H * W); y += W) {
      0022DE 78 35            [12]  922 	mov	r0,#_y
      0022E0 74 30            [12]  923 	mov	a,#0x30
      0022E2 26               [12]  924 	add	a,@r0
      0022E3 F6               [12]  925 	mov	@r0,a
      0022E4 E4               [12]  926 	clr	a
      0022E5 08               [12]  927 	inc	r0
      0022E6 36               [12]  928 	addc	a,@r0
      0022E7 F6               [12]  929 	mov	@r0,a
      0022E8 02 22 47         [24]  930 	ljmp	00129$
                                    931 ;	life.c:162: out:
      0022EB                        932 00119$:
                                    933 ;	life.c:163: if (c != (int)'#')
      0022EB BB 23 05         [24]  934 	cjne	r3,#0x23,00184$
      0022EE BA 00 02         [24]  935 	cjne	r2,#0x00,00184$
      0022F1 80 15            [24]  936 	sjmp	00126$
      0022F3                        937 00184$:
                                    938 ;	life.c:164: while (1) {
      0022F3                        939 00123$:
                                    940 ;	life.c:165: c = getchar();
      0022F3 C0 07            [24]  941 	push	ar7
      0022F5 C0 06            [24]  942 	push	ar6
      0022F7 12 2B 50         [24]  943 	lcall	_getchar
      0022FA AC 82            [24]  944 	mov	r4,dpl
      0022FC AD 83            [24]  945 	mov	r5,dph
      0022FE D0 06            [24]  946 	pop	ar6
      002300 D0 07            [24]  947 	pop	ar7
                                    948 ;	life.c:166: if (c == (int)'#') break;
      002302 BC 23 EE         [24]  949 	cjne	r4,#0x23,00123$
      002305 BD 00 EB         [24]  950 	cjne	r5,#0x00,00123$
      002308                        951 00126$:
                                    952 ;	life.c:168: print16x(nbits);
      002308 8E 82            [24]  953 	mov	dpl,r6
      00230A 8F 83            [24]  954 	mov	dph,r7
      00230C 12 2C A1         [24]  955 	lcall	_print16x
                                    956 ;	life.c:169: printstr(">\r\n");
      00230F 90 31 81         [24]  957 	mov	dptr,#___str_8
      002312 75 F0 80         [24]  958 	mov	b,#0x80
                                    959 ;	life.c:171: return;
                                    960 ;	life.c:172: }
      002315 02 2B 77         [24]  961 	ljmp	_printstr
                                    962 ;------------------------------------------------------------
                                    963 ;Allocation info for local variables in function 'loadriu'
                                    964 ;------------------------------------------------------------
                                    965 ;	life.c:174: static void loadriu(void) {
                                    966 ;	-----------------------------------------
                                    967 ;	 function loadriu
                                    968 ;	-----------------------------------------
      002318                        969 _loadriu:
                                    970 ;	life.c:175: printstr("RANDOM");
      002318 90 31 85         [24]  971 	mov	dptr,#___str_9
      00231B 75 F0 80         [24]  972 	mov	b,#0x80
      00231E 12 2B 77         [24]  973 	lcall	_printstr
                                    974 ;	life.c:177: for (y = 0; y < (H * W); y += W)
      002321 78 35            [12]  975 	mov	r0,#_y
      002323 E4               [12]  976 	clr	a
      002324 F6               [12]  977 	mov	@r0,a
      002325 08               [12]  978 	inc	r0
      002326 F6               [12]  979 	mov	@r0,a
      002327                        980 00105$:
                                    981 ;	life.c:178: for (x = 0; x < W; x++)
      002327 78 33            [12]  982 	mov	r0,#_x
      002329 E4               [12]  983 	clr	a
      00232A F6               [12]  984 	mov	@r0,a
      00232B 08               [12]  985 	inc	r0
      00232C F6               [12]  986 	mov	@r0,a
      00232D                        987 00103$:
                                    988 ;	life.c:179: iu[y + x] = rand() & 1;
      00232D 78 35            [12]  989 	mov	r0,#_y
      00232F 79 33            [12]  990 	mov	r1,#_x
      002331 E7               [12]  991 	mov	a,@r1
      002332 26               [12]  992 	add	a,@r0
      002333 FE               [12]  993 	mov	r6,a
      002334 09               [12]  994 	inc	r1
      002335 E7               [12]  995 	mov	a,@r1
      002336 08               [12]  996 	inc	r0
      002337 36               [12]  997 	addc	a,@r0
      002338 FF               [12]  998 	mov	r7,a
      002339 EE               [12]  999 	mov	a,r6
      00233A 24 00            [12] 1000 	add	a,#_iu
      00233C FE               [12] 1001 	mov	r6,a
      00233D EF               [12] 1002 	mov	a,r7
      00233E 34 40            [12] 1003 	addc	a,#(_iu >> 8)
      002340 FF               [12] 1004 	mov	r7,a
      002341 C0 07            [24] 1005 	push	ar7
      002343 C0 06            [24] 1006 	push	ar6
      002345 12 2A 69         [24] 1007 	lcall	_rand
      002348 AC 82            [24] 1008 	mov	r4,dpl
      00234A D0 06            [24] 1009 	pop	ar6
      00234C D0 07            [24] 1010 	pop	ar7
      00234E 53 04 01         [24] 1011 	anl	ar4,#0x01
      002351 8E 82            [24] 1012 	mov	dpl,r6
      002353 8F 83            [24] 1013 	mov	dph,r7
      002355 EC               [12] 1014 	mov	a,r4
      002356 F0               [24] 1015 	movx	@dptr,a
                                   1016 ;	life.c:178: for (x = 0; x < W; x++)
      002357 78 33            [12] 1017 	mov	r0,#_x
      002359 06               [12] 1018 	inc	@r0
      00235A B6 00 02         [24] 1019 	cjne	@r0,#0x00,00125$
      00235D 08               [12] 1020 	inc	r0
      00235E 06               [12] 1021 	inc	@r0
      00235F                       1022 00125$:
      00235F 78 33            [12] 1023 	mov	r0,#_x
      002361 C3               [12] 1024 	clr	c
      002362 E6               [12] 1025 	mov	a,@r0
      002363 94 30            [12] 1026 	subb	a,#0x30
      002365 08               [12] 1027 	inc	r0
      002366 E6               [12] 1028 	mov	a,@r0
      002367 64 80            [12] 1029 	xrl	a,#0x80
      002369 94 80            [12] 1030 	subb	a,#0x80
      00236B 40 C0            [24] 1031 	jc	00103$
                                   1032 ;	life.c:177: for (y = 0; y < (H * W); y += W)
      00236D 78 35            [12] 1033 	mov	r0,#_y
      00236F 74 30            [12] 1034 	mov	a,#0x30
      002371 26               [12] 1035 	add	a,@r0
      002372 F6               [12] 1036 	mov	@r0,a
      002373 E4               [12] 1037 	clr	a
      002374 08               [12] 1038 	inc	r0
      002375 36               [12] 1039 	addc	a,@r0
      002376 F6               [12] 1040 	mov	@r0,a
      002377 78 35            [12] 1041 	mov	r0,#_y
      002379 C3               [12] 1042 	clr	c
      00237A 08               [12] 1043 	inc	r0
      00237B E6               [12] 1044 	mov	a,@r0
      00237C 64 80            [12] 1045 	xrl	a,#0x80
      00237E 94 A4            [12] 1046 	subb	a,#0xa4
      002380 40 A5            [24] 1047 	jc	00105$
                                   1048 ;	life.c:181: printstr("\r\n");
      002382 90 31 61         [24] 1049 	mov	dptr,#___str_4
      002385 75 F0 80         [24] 1050 	mov	b,#0x80
                                   1051 ;	life.c:183: return;
                                   1052 ;	life.c:184: }
      002388 02 2B 77         [24] 1053 	ljmp	_printstr
                                   1054 ;------------------------------------------------------------
                                   1055 ;Allocation info for local variables in function 'evolveu'
                                   1056 ;------------------------------------------------------------
                                   1057 ;sloc0                     Allocated to stack - _bp +1
                                   1058 ;sloc1                     Allocated to stack - _bp +2
                                   1059 ;sloc2                     Allocated to stack - _bp +4
                                   1060 ;sloc3                     Allocated to stack - _bp +6
                                   1061 ;sloc4                     Allocated to stack - _bp +8
                                   1062 ;------------------------------------------------------------
                                   1063 ;	life.c:186: void evolveu(void) {
                                   1064 ;	-----------------------------------------
                                   1065 ;	 function evolveu
                                   1066 ;	-----------------------------------------
      00238B                       1067 _evolveu:
      00238B C0 10            [24] 1068 	push	_bp
      00238D E5 81            [12] 1069 	mov	a,sp
      00238F F5 10            [12] 1070 	mov	_bp,a
      002391 24 09            [12] 1071 	add	a,#0x09
      002393 F5 81            [12] 1072 	mov	sp,a
                                   1073 ;	life.c:187: fixed = 0;
      002395 78 38            [12] 1074 	mov	r0,#_fixed
      002397 76 00            [12] 1075 	mov	@r0,#0x00
                                   1076 ;	life.c:188: cycle2 = 0;
      002399 78 39            [12] 1077 	mov	r0,#_cycle2
      00239B 76 00            [12] 1078 	mov	@r0,#0x00
                                   1079 ;	life.c:190: OE76 = OE76_0;
      00239D 78 23            [12] 1080 	mov	r0,#_OE76
      00239F 76 3F            [12] 1081 	mov	@r0,#0x3f
                                   1082 ;	life.c:30: OEreg = OE76;
      0023A1 90 F0 06         [24] 1083 	mov	dptr,#_OEreg
      0023A4 74 3F            [12] 1084 	mov	a,#0x3f
      0023A6 F0               [24] 1085 	movx	@dptr,a
                                   1086 ;	life.c:193: for (y = 0; y < H; y++) {
      0023A7 78 35            [12] 1087 	mov	r0,#_y
      0023A9 E4               [12] 1088 	clr	a
      0023AA F6               [12] 1089 	mov	@r0,a
      0023AB 08               [12] 1090 	inc	r0
      0023AC F6               [12] 1091 	mov	@r0,a
      0023AD                       1092 00135$:
                                   1093 ;	life.c:194: OE76 = OE76_0 | ((y & 0x0003u) << 6);
      0023AD 78 35            [12] 1094 	mov	r0,#_y
      0023AF 86 07            [24] 1095 	mov	ar7,@r0
      0023B1 53 07 03         [24] 1096 	anl	ar7,#0x03
      0023B4 EF               [12] 1097 	mov	a,r7
      0023B5 03               [12] 1098 	rr	a
      0023B6 03               [12] 1099 	rr	a
      0023B7 54 C0            [12] 1100 	anl	a,#0xc0
      0023B9 FF               [12] 1101 	mov	r7,a
      0023BA 43 07 3F         [24] 1102 	orl	ar7,#0x3f
      0023BD 78 23            [12] 1103 	mov	r0,#_OE76
      0023BF A6 07            [24] 1104 	mov	@r0,ar7
                                   1105 ;	life.c:30: OEreg = OE76;
      0023C1 90 F0 06         [24] 1106 	mov	dptr,#_OEreg
      0023C4 EF               [12] 1107 	mov	a,r7
      0023C5 F0               [24] 1108 	movx	@dptr,a
                                   1109 ;	life.c:196: for (x = 0; x < W; x++) {
      0023C6 78 33            [12] 1110 	mov	r0,#_x
      0023C8 E4               [12] 1111 	clr	a
      0023C9 F6               [12] 1112 	mov	@r0,a
      0023CA 08               [12] 1113 	inc	r0
      0023CB F6               [12] 1114 	mov	@r0,a
      0023CC                       1115 00133$:
                                   1116 ;	life.c:197: n = -u[A2D(W, y, x)];
      0023CC 78 35            [12] 1117 	mov	r0,#_y
      0023CE E6               [12] 1118 	mov	a,@r0
      0023CF C0 E0            [24] 1119 	push	acc
      0023D1 08               [12] 1120 	inc	r0
      0023D2 E6               [12] 1121 	mov	a,@r0
      0023D3 C0 E0            [24] 1122 	push	acc
      0023D5 90 00 30         [24] 1123 	mov	dptr,#0x0030
      0023D8 12 2E 5C         [24] 1124 	lcall	__mulint
      0023DB C8               [12] 1125 	xch	a,r0
      0023DC E5 10            [12] 1126 	mov	a,_bp
      0023DE 24 04            [12] 1127 	add	a,#0x04
      0023E0 C8               [12] 1128 	xch	a,r0
      0023E1 A6 82            [24] 1129 	mov	@r0,dpl
      0023E3 08               [12] 1130 	inc	r0
      0023E4 A6 83            [24] 1131 	mov	@r0,dph
      0023E6 15 81            [12] 1132 	dec	sp
      0023E8 15 81            [12] 1133 	dec	sp
      0023EA E5 10            [12] 1134 	mov	a,_bp
      0023EC 24 04            [12] 1135 	add	a,#0x04
      0023EE F8               [12] 1136 	mov	r0,a
      0023EF 79 33            [12] 1137 	mov	r1,#_x
      0023F1 E7               [12] 1138 	mov	a,@r1
      0023F2 26               [12] 1139 	add	a,@r0
      0023F3 C0 E0            [24] 1140 	push	acc
      0023F5 09               [12] 1141 	inc	r1
      0023F6 E7               [12] 1142 	mov	a,@r1
      0023F7 08               [12] 1143 	inc	r0
      0023F8 36               [12] 1144 	addc	a,@r0
      0023F9 C0 E0            [24] 1145 	push	acc
      0023FB E5 10            [12] 1146 	mov	a,_bp
      0023FD 24 03            [12] 1147 	add	a,#0x03
      0023FF F8               [12] 1148 	mov	r0,a
      002400 D0 E0            [24] 1149 	pop	acc
      002402 F6               [12] 1150 	mov	@r0,a
      002403 18               [12] 1151 	dec	r0
      002404 D0 E0            [24] 1152 	pop	acc
      002406 F6               [12] 1153 	mov	@r0,a
      002407 A8 10            [24] 1154 	mov	r0,_bp
      002409 08               [12] 1155 	inc	r0
      00240A 08               [12] 1156 	inc	r0
      00240B E6               [12] 1157 	mov	a,@r0
      00240C 24 00            [12] 1158 	add	a,#_u
      00240E F5 82            [12] 1159 	mov	dpl,a
      002410 08               [12] 1160 	inc	r0
      002411 E6               [12] 1161 	mov	a,@r0
      002412 34 88            [12] 1162 	addc	a,#(_u >> 8)
      002414 F5 83            [12] 1163 	mov	dph,a
      002416 E0               [24] 1164 	movx	a,@dptr
      002417 FB               [12] 1165 	mov	r3,a
      002418 A8 10            [24] 1166 	mov	r0,_bp
      00241A 08               [12] 1167 	inc	r0
      00241B C3               [12] 1168 	clr	c
      00241C E4               [12] 1169 	clr	a
      00241D 9B               [12] 1170 	subb	a,r3
      00241E F6               [12] 1171 	mov	@r0,a
                                   1172 ;	life.c:202: UPDN(-1, -1);
      00241F 78 35            [12] 1173 	mov	r0,#_y
      002421 74 BF            [12] 1174 	mov	a,#0xbf
      002423 26               [12] 1175 	add	a,@r0
      002424 FA               [12] 1176 	mov	r2,a
      002425 E4               [12] 1177 	clr	a
      002426 08               [12] 1178 	inc	r0
      002427 36               [12] 1179 	addc	a,@r0
      002428 FB               [12] 1180 	mov	r3,a
      002429 74 C0            [12] 1181 	mov	a,#0xc0
      00242B C0 E0            [24] 1182 	push	acc
      00242D E4               [12] 1183 	clr	a
      00242E C0 E0            [24] 1184 	push	acc
      002430 8A 82            [24] 1185 	mov	dpl,r2
      002432 8B 83            [24] 1186 	mov	dph,r3
      002434 12 30 3A         [24] 1187 	lcall	__modsint
      002437 AA 82            [24] 1188 	mov	r2,dpl
      002439 AB 83            [24] 1189 	mov	r3,dph
      00243B 15 81            [12] 1190 	dec	sp
      00243D 15 81            [12] 1191 	dec	sp
      00243F C0 02            [24] 1192 	push	ar2
      002441 C0 03            [24] 1193 	push	ar3
      002443 90 00 30         [24] 1194 	mov	dptr,#0x0030
      002446 12 2E 5C         [24] 1195 	lcall	__mulint
      002449 AA 82            [24] 1196 	mov	r2,dpl
      00244B AB 83            [24] 1197 	mov	r3,dph
      00244D 15 81            [12] 1198 	dec	sp
      00244F 15 81            [12] 1199 	dec	sp
      002451 78 33            [12] 1200 	mov	r0,#_x
      002453 74 2F            [12] 1201 	mov	a,#0x2f
      002455 26               [12] 1202 	add	a,@r0
      002456 FC               [12] 1203 	mov	r4,a
      002457 E4               [12] 1204 	clr	a
      002458 08               [12] 1205 	inc	r0
      002459 36               [12] 1206 	addc	a,@r0
      00245A FD               [12] 1207 	mov	r5,a
      00245B C0 03            [24] 1208 	push	ar3
      00245D C0 02            [24] 1209 	push	ar2
      00245F 74 30            [12] 1210 	mov	a,#0x30
      002461 C0 E0            [24] 1211 	push	acc
      002463 E4               [12] 1212 	clr	a
      002464 C0 E0            [24] 1213 	push	acc
      002466 8C 82            [24] 1214 	mov	dpl,r4
      002468 8D 83            [24] 1215 	mov	dph,r5
      00246A 12 30 3A         [24] 1216 	lcall	__modsint
      00246D AC 82            [24] 1217 	mov	r4,dpl
      00246F AD 83            [24] 1218 	mov	r5,dph
      002471 15 81            [12] 1219 	dec	sp
      002473 15 81            [12] 1220 	dec	sp
      002475 D0 02            [24] 1221 	pop	ar2
      002477 D0 03            [24] 1222 	pop	ar3
      002479 EC               [12] 1223 	mov	a,r4
      00247A 2A               [12] 1224 	add	a,r2
      00247B FE               [12] 1225 	mov	r6,a
      00247C ED               [12] 1226 	mov	a,r5
      00247D 3B               [12] 1227 	addc	a,r3
      00247E FF               [12] 1228 	mov	r7,a
      00247F EE               [12] 1229 	mov	a,r6
      002480 24 00            [12] 1230 	add	a,#_u
      002482 F5 82            [12] 1231 	mov	dpl,a
      002484 EF               [12] 1232 	mov	a,r7
      002485 34 88            [12] 1233 	addc	a,#(_u >> 8)
      002487 F5 83            [12] 1234 	mov	dph,a
      002489 E0               [24] 1235 	movx	a,@dptr
      00248A FF               [12] 1236 	mov	r7,a
      00248B A8 10            [24] 1237 	mov	r0,_bp
      00248D 08               [12] 1238 	inc	r0
      00248E EF               [12] 1239 	mov	a,r7
      00248F 26               [12] 1240 	add	a,@r0
      002490 F6               [12] 1241 	mov	@r0,a
                                   1242 ;	life.c:203: UPDN(-1, 0);
      002491 78 33            [12] 1243 	mov	r0,#_x
      002493 74 30            [12] 1244 	mov	a,#0x30
      002495 26               [12] 1245 	add	a,@r0
      002496 FE               [12] 1246 	mov	r6,a
      002497 E4               [12] 1247 	clr	a
      002498 08               [12] 1248 	inc	r0
      002499 36               [12] 1249 	addc	a,@r0
      00249A FF               [12] 1250 	mov	r7,a
      00249B C0 05            [24] 1251 	push	ar5
      00249D C0 04            [24] 1252 	push	ar4
      00249F C0 03            [24] 1253 	push	ar3
      0024A1 C0 02            [24] 1254 	push	ar2
      0024A3 74 30            [12] 1255 	mov	a,#0x30
      0024A5 C0 E0            [24] 1256 	push	acc
      0024A7 E4               [12] 1257 	clr	a
      0024A8 C0 E0            [24] 1258 	push	acc
      0024AA 8E 82            [24] 1259 	mov	dpl,r6
      0024AC 8F 83            [24] 1260 	mov	dph,r7
      0024AE 12 30 3A         [24] 1261 	lcall	__modsint
      0024B1 C8               [12] 1262 	xch	a,r0
      0024B2 E5 10            [12] 1263 	mov	a,_bp
      0024B4 24 06            [12] 1264 	add	a,#0x06
      0024B6 C8               [12] 1265 	xch	a,r0
      0024B7 A6 82            [24] 1266 	mov	@r0,dpl
      0024B9 08               [12] 1267 	inc	r0
      0024BA A6 83            [24] 1268 	mov	@r0,dph
      0024BC 15 81            [12] 1269 	dec	sp
      0024BE 15 81            [12] 1270 	dec	sp
      0024C0 D0 02            [24] 1271 	pop	ar2
      0024C2 D0 03            [24] 1272 	pop	ar3
      0024C4 E5 10            [12] 1273 	mov	a,_bp
      0024C6 24 06            [12] 1274 	add	a,#0x06
      0024C8 F8               [12] 1275 	mov	r0,a
      0024C9 E6               [12] 1276 	mov	a,@r0
      0024CA 2A               [12] 1277 	add	a,r2
      0024CB FE               [12] 1278 	mov	r6,a
      0024CC 08               [12] 1279 	inc	r0
      0024CD E6               [12] 1280 	mov	a,@r0
      0024CE 3B               [12] 1281 	addc	a,r3
      0024CF FF               [12] 1282 	mov	r7,a
      0024D0 EE               [12] 1283 	mov	a,r6
      0024D1 24 00            [12] 1284 	add	a,#_u
      0024D3 F5 82            [12] 1285 	mov	dpl,a
      0024D5 EF               [12] 1286 	mov	a,r7
      0024D6 34 88            [12] 1287 	addc	a,#(_u >> 8)
      0024D8 F5 83            [12] 1288 	mov	dph,a
      0024DA E0               [24] 1289 	movx	a,@dptr
      0024DB FF               [12] 1290 	mov	r7,a
      0024DC A8 10            [24] 1291 	mov	r0,_bp
      0024DE 08               [12] 1292 	inc	r0
      0024DF EF               [12] 1293 	mov	a,r7
      0024E0 26               [12] 1294 	add	a,@r0
      0024E1 F6               [12] 1295 	mov	@r0,a
                                   1296 ;	life.c:204: UPDN(-1, 1);
      0024E2 78 33            [12] 1297 	mov	r0,#_x
      0024E4 74 31            [12] 1298 	mov	a,#0x31
      0024E6 26               [12] 1299 	add	a,@r0
      0024E7 FE               [12] 1300 	mov	r6,a
      0024E8 E4               [12] 1301 	clr	a
      0024E9 08               [12] 1302 	inc	r0
      0024EA 36               [12] 1303 	addc	a,@r0
      0024EB FF               [12] 1304 	mov	r7,a
      0024EC C0 03            [24] 1305 	push	ar3
      0024EE C0 02            [24] 1306 	push	ar2
      0024F0 74 30            [12] 1307 	mov	a,#0x30
      0024F2 C0 E0            [24] 1308 	push	acc
      0024F4 E4               [12] 1309 	clr	a
      0024F5 C0 E0            [24] 1310 	push	acc
      0024F7 8E 82            [24] 1311 	mov	dpl,r6
      0024F9 8F 83            [24] 1312 	mov	dph,r7
      0024FB 12 30 3A         [24] 1313 	lcall	__modsint
      0024FE AE 82            [24] 1314 	mov	r6,dpl
      002500 AF 83            [24] 1315 	mov	r7,dph
      002502 15 81            [12] 1316 	dec	sp
      002504 15 81            [12] 1317 	dec	sp
      002506 D0 02            [24] 1318 	pop	ar2
      002508 D0 03            [24] 1319 	pop	ar3
      00250A D0 04            [24] 1320 	pop	ar4
      00250C D0 05            [24] 1321 	pop	ar5
      00250E EE               [12] 1322 	mov	a,r6
      00250F 2A               [12] 1323 	add	a,r2
      002510 FA               [12] 1324 	mov	r2,a
      002511 EF               [12] 1325 	mov	a,r7
      002512 3B               [12] 1326 	addc	a,r3
      002513 FB               [12] 1327 	mov	r3,a
      002514 EA               [12] 1328 	mov	a,r2
      002515 24 00            [12] 1329 	add	a,#_u
      002517 F5 82            [12] 1330 	mov	dpl,a
      002519 EB               [12] 1331 	mov	a,r3
      00251A 34 88            [12] 1332 	addc	a,#(_u >> 8)
      00251C F5 83            [12] 1333 	mov	dph,a
      00251E E0               [24] 1334 	movx	a,@dptr
      00251F FB               [12] 1335 	mov	r3,a
      002520 A8 10            [24] 1336 	mov	r0,_bp
      002522 08               [12] 1337 	inc	r0
      002523 EB               [12] 1338 	mov	a,r3
      002524 26               [12] 1339 	add	a,@r0
      002525 F6               [12] 1340 	mov	@r0,a
                                   1341 ;	life.c:205: UPDN(0, -1);
      002526 78 35            [12] 1342 	mov	r0,#_y
      002528 74 C0            [12] 1343 	mov	a,#0xc0
      00252A 26               [12] 1344 	add	a,@r0
      00252B FA               [12] 1345 	mov	r2,a
      00252C E4               [12] 1346 	clr	a
      00252D 08               [12] 1347 	inc	r0
      00252E 36               [12] 1348 	addc	a,@r0
      00252F FB               [12] 1349 	mov	r3,a
      002530 C0 07            [24] 1350 	push	ar7
      002532 C0 06            [24] 1351 	push	ar6
      002534 C0 05            [24] 1352 	push	ar5
      002536 C0 04            [24] 1353 	push	ar4
      002538 74 C0            [12] 1354 	mov	a,#0xc0
      00253A C0 E0            [24] 1355 	push	acc
      00253C E4               [12] 1356 	clr	a
      00253D C0 E0            [24] 1357 	push	acc
      00253F 8A 82            [24] 1358 	mov	dpl,r2
      002541 8B 83            [24] 1359 	mov	dph,r3
      002543 12 30 3A         [24] 1360 	lcall	__modsint
      002546 AA 82            [24] 1361 	mov	r2,dpl
      002548 AB 83            [24] 1362 	mov	r3,dph
      00254A 15 81            [12] 1363 	dec	sp
      00254C 15 81            [12] 1364 	dec	sp
      00254E C0 02            [24] 1365 	push	ar2
      002550 C0 03            [24] 1366 	push	ar3
      002552 90 00 30         [24] 1367 	mov	dptr,#0x0030
      002555 12 2E 5C         [24] 1368 	lcall	__mulint
      002558 C8               [12] 1369 	xch	a,r0
      002559 E5 10            [12] 1370 	mov	a,_bp
      00255B 24 08            [12] 1371 	add	a,#0x08
      00255D C8               [12] 1372 	xch	a,r0
      00255E A6 82            [24] 1373 	mov	@r0,dpl
      002560 08               [12] 1374 	inc	r0
      002561 A6 83            [24] 1375 	mov	@r0,dph
      002563 15 81            [12] 1376 	dec	sp
      002565 15 81            [12] 1377 	dec	sp
      002567 D0 04            [24] 1378 	pop	ar4
      002569 D0 05            [24] 1379 	pop	ar5
      00256B D0 06            [24] 1380 	pop	ar6
      00256D D0 07            [24] 1381 	pop	ar7
      00256F E5 10            [12] 1382 	mov	a,_bp
      002571 24 08            [12] 1383 	add	a,#0x08
      002573 F8               [12] 1384 	mov	r0,a
      002574 EC               [12] 1385 	mov	a,r4
      002575 26               [12] 1386 	add	a,@r0
      002576 FA               [12] 1387 	mov	r2,a
      002577 ED               [12] 1388 	mov	a,r5
      002578 08               [12] 1389 	inc	r0
      002579 36               [12] 1390 	addc	a,@r0
      00257A FB               [12] 1391 	mov	r3,a
      00257B EA               [12] 1392 	mov	a,r2
      00257C 24 00            [12] 1393 	add	a,#_u
      00257E F5 82            [12] 1394 	mov	dpl,a
      002580 EB               [12] 1395 	mov	a,r3
      002581 34 88            [12] 1396 	addc	a,#(_u >> 8)
      002583 F5 83            [12] 1397 	mov	dph,a
      002585 E0               [24] 1398 	movx	a,@dptr
      002586 FB               [12] 1399 	mov	r3,a
      002587 A8 10            [24] 1400 	mov	r0,_bp
      002589 08               [12] 1401 	inc	r0
      00258A EB               [12] 1402 	mov	a,r3
      00258B 26               [12] 1403 	add	a,@r0
      00258C F6               [12] 1404 	mov	@r0,a
                                   1405 ;	life.c:206: UPDN(0, 0);
      00258D E5 10            [12] 1406 	mov	a,_bp
      00258F 24 08            [12] 1407 	add	a,#0x08
      002591 F8               [12] 1408 	mov	r0,a
      002592 E5 10            [12] 1409 	mov	a,_bp
      002594 24 06            [12] 1410 	add	a,#0x06
      002596 F9               [12] 1411 	mov	r1,a
      002597 E7               [12] 1412 	mov	a,@r1
      002598 26               [12] 1413 	add	a,@r0
      002599 FA               [12] 1414 	mov	r2,a
      00259A 09               [12] 1415 	inc	r1
      00259B E7               [12] 1416 	mov	a,@r1
      00259C 08               [12] 1417 	inc	r0
      00259D 36               [12] 1418 	addc	a,@r0
      00259E FB               [12] 1419 	mov	r3,a
      00259F EA               [12] 1420 	mov	a,r2
      0025A0 24 00            [12] 1421 	add	a,#_u
      0025A2 F5 82            [12] 1422 	mov	dpl,a
      0025A4 EB               [12] 1423 	mov	a,r3
      0025A5 34 88            [12] 1424 	addc	a,#(_u >> 8)
      0025A7 F5 83            [12] 1425 	mov	dph,a
      0025A9 E0               [24] 1426 	movx	a,@dptr
      0025AA FB               [12] 1427 	mov	r3,a
      0025AB A8 10            [24] 1428 	mov	r0,_bp
      0025AD 08               [12] 1429 	inc	r0
      0025AE EB               [12] 1430 	mov	a,r3
      0025AF 26               [12] 1431 	add	a,@r0
      0025B0 F6               [12] 1432 	mov	@r0,a
                                   1433 ;	life.c:207: UPDN(0, 1);
      0025B1 E5 10            [12] 1434 	mov	a,_bp
      0025B3 24 08            [12] 1435 	add	a,#0x08
      0025B5 F8               [12] 1436 	mov	r0,a
      0025B6 EE               [12] 1437 	mov	a,r6
      0025B7 26               [12] 1438 	add	a,@r0
      0025B8 FA               [12] 1439 	mov	r2,a
      0025B9 EF               [12] 1440 	mov	a,r7
      0025BA 08               [12] 1441 	inc	r0
      0025BB 36               [12] 1442 	addc	a,@r0
      0025BC FB               [12] 1443 	mov	r3,a
      0025BD EA               [12] 1444 	mov	a,r2
      0025BE 24 00            [12] 1445 	add	a,#_u
      0025C0 F5 82            [12] 1446 	mov	dpl,a
      0025C2 EB               [12] 1447 	mov	a,r3
      0025C3 34 88            [12] 1448 	addc	a,#(_u >> 8)
      0025C5 F5 83            [12] 1449 	mov	dph,a
      0025C7 E0               [24] 1450 	movx	a,@dptr
      0025C8 FB               [12] 1451 	mov	r3,a
      0025C9 A8 10            [24] 1452 	mov	r0,_bp
      0025CB 08               [12] 1453 	inc	r0
      0025CC E5 10            [12] 1454 	mov	a,_bp
      0025CE 24 08            [12] 1455 	add	a,#0x08
      0025D0 F9               [12] 1456 	mov	r1,a
      0025D1 EB               [12] 1457 	mov	a,r3
      0025D2 26               [12] 1458 	add	a,@r0
      0025D3 F7               [12] 1459 	mov	@r1,a
                                   1460 ;	life.c:208: UPDN(1, -1);
      0025D4 78 35            [12] 1461 	mov	r0,#_y
      0025D6 74 C1            [12] 1462 	mov	a,#0xc1
      0025D8 26               [12] 1463 	add	a,@r0
      0025D9 FA               [12] 1464 	mov	r2,a
      0025DA E4               [12] 1465 	clr	a
      0025DB 08               [12] 1466 	inc	r0
      0025DC 36               [12] 1467 	addc	a,@r0
      0025DD FB               [12] 1468 	mov	r3,a
      0025DE C0 07            [24] 1469 	push	ar7
      0025E0 C0 06            [24] 1470 	push	ar6
      0025E2 C0 05            [24] 1471 	push	ar5
      0025E4 C0 04            [24] 1472 	push	ar4
      0025E6 74 C0            [12] 1473 	mov	a,#0xc0
      0025E8 C0 E0            [24] 1474 	push	acc
      0025EA E4               [12] 1475 	clr	a
      0025EB C0 E0            [24] 1476 	push	acc
      0025ED 8A 82            [24] 1477 	mov	dpl,r2
      0025EF 8B 83            [24] 1478 	mov	dph,r3
      0025F1 12 30 3A         [24] 1479 	lcall	__modsint
      0025F4 AA 82            [24] 1480 	mov	r2,dpl
      0025F6 AB 83            [24] 1481 	mov	r3,dph
      0025F8 15 81            [12] 1482 	dec	sp
      0025FA 15 81            [12] 1483 	dec	sp
      0025FC C0 02            [24] 1484 	push	ar2
      0025FE C0 03            [24] 1485 	push	ar3
      002600 90 00 30         [24] 1486 	mov	dptr,#0x0030
      002603 12 2E 5C         [24] 1487 	lcall	__mulint
      002606 AA 82            [24] 1488 	mov	r2,dpl
      002608 AB 83            [24] 1489 	mov	r3,dph
      00260A 15 81            [12] 1490 	dec	sp
      00260C 15 81            [12] 1491 	dec	sp
      00260E D0 04            [24] 1492 	pop	ar4
      002610 D0 05            [24] 1493 	pop	ar5
      002612 D0 06            [24] 1494 	pop	ar6
      002614 D0 07            [24] 1495 	pop	ar7
      002616 EC               [12] 1496 	mov	a,r4
      002617 2A               [12] 1497 	add	a,r2
      002618 FC               [12] 1498 	mov	r4,a
      002619 ED               [12] 1499 	mov	a,r5
      00261A 3B               [12] 1500 	addc	a,r3
      00261B FD               [12] 1501 	mov	r5,a
      00261C EC               [12] 1502 	mov	a,r4
      00261D 24 00            [12] 1503 	add	a,#_u
      00261F F5 82            [12] 1504 	mov	dpl,a
      002621 ED               [12] 1505 	mov	a,r5
      002622 34 88            [12] 1506 	addc	a,#(_u >> 8)
      002624 F5 83            [12] 1507 	mov	dph,a
      002626 E0               [24] 1508 	movx	a,@dptr
      002627 FD               [12] 1509 	mov	r5,a
      002628 E5 10            [12] 1510 	mov	a,_bp
      00262A 24 08            [12] 1511 	add	a,#0x08
      00262C F8               [12] 1512 	mov	r0,a
      00262D E5 10            [12] 1513 	mov	a,_bp
      00262F 24 08            [12] 1514 	add	a,#0x08
      002631 F9               [12] 1515 	mov	r1,a
      002632 ED               [12] 1516 	mov	a,r5
      002633 26               [12] 1517 	add	a,@r0
      002634 F7               [12] 1518 	mov	@r1,a
                                   1519 ;	life.c:209: UPDN(1, 0);
      002635 E5 10            [12] 1520 	mov	a,_bp
      002637 24 06            [12] 1521 	add	a,#0x06
      002639 F8               [12] 1522 	mov	r0,a
      00263A E6               [12] 1523 	mov	a,@r0
      00263B 2A               [12] 1524 	add	a,r2
      00263C FC               [12] 1525 	mov	r4,a
      00263D 08               [12] 1526 	inc	r0
      00263E E6               [12] 1527 	mov	a,@r0
      00263F 3B               [12] 1528 	addc	a,r3
      002640 FD               [12] 1529 	mov	r5,a
      002641 EC               [12] 1530 	mov	a,r4
      002642 24 00            [12] 1531 	add	a,#_u
      002644 F5 82            [12] 1532 	mov	dpl,a
      002646 ED               [12] 1533 	mov	a,r5
      002647 34 88            [12] 1534 	addc	a,#(_u >> 8)
      002649 F5 83            [12] 1535 	mov	dph,a
      00264B E0               [24] 1536 	movx	a,@dptr
      00264C FD               [12] 1537 	mov	r5,a
      00264D E5 10            [12] 1538 	mov	a,_bp
      00264F 24 08            [12] 1539 	add	a,#0x08
      002651 F8               [12] 1540 	mov	r0,a
      002652 ED               [12] 1541 	mov	a,r5
      002653 26               [12] 1542 	add	a,@r0
      002654 FD               [12] 1543 	mov	r5,a
                                   1544 ;	life.c:210: UPDN(1, 1);
      002655 EE               [12] 1545 	mov	a,r6
      002656 2A               [12] 1546 	add	a,r2
      002657 FE               [12] 1547 	mov	r6,a
      002658 EF               [12] 1548 	mov	a,r7
      002659 3B               [12] 1549 	addc	a,r3
      00265A FF               [12] 1550 	mov	r7,a
      00265B EE               [12] 1551 	mov	a,r6
      00265C 24 00            [12] 1552 	add	a,#_u
      00265E F5 82            [12] 1553 	mov	dpl,a
      002660 EF               [12] 1554 	mov	a,r7
      002661 34 88            [12] 1555 	addc	a,#(_u >> 8)
      002663 F5 83            [12] 1556 	mov	dph,a
      002665 E0               [24] 1557 	movx	a,@dptr
      002666 2D               [12] 1558 	add	a,r5
      002667 FF               [12] 1559 	mov	r7,a
      002668 78 37            [12] 1560 	mov	r0,#_n
      00266A A6 07            [24] 1561 	mov	@r0,ar7
                                   1562 ;	life.c:213: nu[A2D(W, y, x)] = (n == 3) || ((n == 2) && u[A2D(W, y, x)]);
      00266C A8 10            [24] 1563 	mov	r0,_bp
      00266E 08               [12] 1564 	inc	r0
      00266F 08               [12] 1565 	inc	r0
      002670 E6               [12] 1566 	mov	a,@r0
      002671 24 00            [12] 1567 	add	a,#_nu
      002673 FD               [12] 1568 	mov	r5,a
      002674 08               [12] 1569 	inc	r0
      002675 E6               [12] 1570 	mov	a,@r0
      002676 34 AC            [12] 1571 	addc	a,#(_nu >> 8)
      002678 FE               [12] 1572 	mov	r6,a
      002679 BF 03 02         [24] 1573 	cjne	r7,#0x03,00169$
      00267C 80 25            [24] 1574 	sjmp	00140$
      00267E                       1575 00169$:
      00267E BF 02 1E         [24] 1576 	cjne	r7,#0x02,00139$
      002681 E5 10            [12] 1577 	mov	a,_bp
      002683 24 04            [12] 1578 	add	a,#0x04
      002685 F8               [12] 1579 	mov	r0,a
      002686 79 33            [12] 1580 	mov	r1,#_x
      002688 E7               [12] 1581 	mov	a,@r1
      002689 26               [12] 1582 	add	a,@r0
      00268A FC               [12] 1583 	mov	r4,a
      00268B 09               [12] 1584 	inc	r1
      00268C E7               [12] 1585 	mov	a,@r1
      00268D 08               [12] 1586 	inc	r0
      00268E 36               [12] 1587 	addc	a,@r0
      00268F FF               [12] 1588 	mov	r7,a
      002690 EC               [12] 1589 	mov	a,r4
      002691 24 00            [12] 1590 	add	a,#_u
      002693 FC               [12] 1591 	mov	r4,a
      002694 EF               [12] 1592 	mov	a,r7
      002695 34 88            [12] 1593 	addc	a,#(_u >> 8)
      002697 FF               [12] 1594 	mov	r7,a
      002698 8C 82            [24] 1595 	mov	dpl,r4
      00269A 8F 83            [24] 1596 	mov	dph,r7
      00269C E0               [24] 1597 	movx	a,@dptr
      00269D 70 04            [24] 1598 	jnz	00140$
      00269F                       1599 00139$:
                                   1600 ;	assignBit
      00269F C2 00            [12] 1601 	clr	b0
      0026A1 80 02            [24] 1602 	sjmp	00141$
      0026A3                       1603 00140$:
                                   1604 ;	assignBit
      0026A3 D2 00            [12] 1605 	setb	b0
      0026A5                       1606 00141$:
      0026A5 A2 00            [12] 1607 	mov	c,b0
      0026A7 E4               [12] 1608 	clr	a
      0026A8 33               [12] 1609 	rlc	a
      0026A9 8D 82            [24] 1610 	mov	dpl,r5
      0026AB 8E 83            [24] 1611 	mov	dph,r6
      0026AD F0               [24] 1612 	movx	@dptr,a
                                   1613 ;	life.c:214: cycle2 |= pu[A2D(W, y, x)] ^ nu[A2D(W, y, x)];
      0026AE 78 35            [12] 1614 	mov	r0,#_y
      0026B0 E6               [12] 1615 	mov	a,@r0
      0026B1 C0 E0            [24] 1616 	push	acc
      0026B3 08               [12] 1617 	inc	r0
      0026B4 E6               [12] 1618 	mov	a,@r0
      0026B5 C0 E0            [24] 1619 	push	acc
      0026B7 90 00 30         [24] 1620 	mov	dptr,#0x0030
      0026BA 12 2E 5C         [24] 1621 	lcall	__mulint
      0026BD AE 82            [24] 1622 	mov	r6,dpl
      0026BF AF 83            [24] 1623 	mov	r7,dph
      0026C1 15 81            [12] 1624 	dec	sp
      0026C3 15 81            [12] 1625 	dec	sp
      0026C5 78 33            [12] 1626 	mov	r0,#_x
      0026C7 E6               [12] 1627 	mov	a,@r0
      0026C8 2E               [12] 1628 	add	a,r6
      0026C9 FE               [12] 1629 	mov	r6,a
      0026CA 08               [12] 1630 	inc	r0
      0026CB E6               [12] 1631 	mov	a,@r0
      0026CC 3F               [12] 1632 	addc	a,r7
      0026CD FF               [12] 1633 	mov	r7,a
      0026CE EE               [12] 1634 	mov	a,r6
      0026CF 24 00            [12] 1635 	add	a,#_pu
      0026D1 F5 82            [12] 1636 	mov	dpl,a
      0026D3 EF               [12] 1637 	mov	a,r7
      0026D4 34 64            [12] 1638 	addc	a,#(_pu >> 8)
      0026D6 F5 83            [12] 1639 	mov	dph,a
      0026D8 E0               [24] 1640 	movx	a,@dptr
      0026D9 FD               [12] 1641 	mov	r5,a
      0026DA EE               [12] 1642 	mov	a,r6
      0026DB 24 00            [12] 1643 	add	a,#_nu
      0026DD F5 82            [12] 1644 	mov	dpl,a
      0026DF EF               [12] 1645 	mov	a,r7
      0026E0 34 AC            [12] 1646 	addc	a,#(_nu >> 8)
      0026E2 F5 83            [12] 1647 	mov	dph,a
      0026E4 E0               [24] 1648 	movx	a,@dptr
      0026E5 FC               [12] 1649 	mov	r4,a
      0026E6 6D               [12] 1650 	xrl	a,r5
      0026E7 78 39            [12] 1651 	mov	r0,#_cycle2
      0026E9 46               [12] 1652 	orl	a,@r0
      0026EA F6               [12] 1653 	mov	@r0,a
                                   1654 ;	life.c:215: fixed |= u[A2D(W, y, x)] ^ nu[A2D(W, y, x)];
      0026EB EE               [12] 1655 	mov	a,r6
      0026EC 24 00            [12] 1656 	add	a,#_u
      0026EE F5 82            [12] 1657 	mov	dpl,a
      0026F0 EF               [12] 1658 	mov	a,r7
      0026F1 34 88            [12] 1659 	addc	a,#(_u >> 8)
      0026F3 F5 83            [12] 1660 	mov	dph,a
      0026F5 E0               [24] 1661 	movx	a,@dptr
      0026F6 FF               [12] 1662 	mov	r7,a
      0026F7 EC               [12] 1663 	mov	a,r4
      0026F8 6F               [12] 1664 	xrl	a,r7
      0026F9 78 38            [12] 1665 	mov	r0,#_fixed
      0026FB 46               [12] 1666 	orl	a,@r0
      0026FC F6               [12] 1667 	mov	@r0,a
                                   1668 ;	life.c:196: for (x = 0; x < W; x++) {
      0026FD 78 33            [12] 1669 	mov	r0,#_x
      0026FF 06               [12] 1670 	inc	@r0
      002700 B6 00 02         [24] 1671 	cjne	@r0,#0x00,00173$
      002703 08               [12] 1672 	inc	r0
      002704 06               [12] 1673 	inc	@r0
      002705                       1674 00173$:
      002705 78 33            [12] 1675 	mov	r0,#_x
      002707 C3               [12] 1676 	clr	c
      002708 E6               [12] 1677 	mov	a,@r0
      002709 94 30            [12] 1678 	subb	a,#0x30
      00270B 08               [12] 1679 	inc	r0
      00270C E6               [12] 1680 	mov	a,@r0
      00270D 64 80            [12] 1681 	xrl	a,#0x80
      00270F 94 80            [12] 1682 	subb	a,#0x80
      002711 50 03            [24] 1683 	jnc	00174$
      002713 02 23 CC         [24] 1684 	ljmp	00133$
      002716                       1685 00174$:
                                   1686 ;	life.c:193: for (y = 0; y < H; y++) {
      002716 78 35            [12] 1687 	mov	r0,#_y
      002718 06               [12] 1688 	inc	@r0
      002719 B6 00 02         [24] 1689 	cjne	@r0,#0x00,00175$
      00271C 08               [12] 1690 	inc	r0
      00271D 06               [12] 1691 	inc	@r0
      00271E                       1692 00175$:
      00271E 78 35            [12] 1693 	mov	r0,#_y
      002720 C3               [12] 1694 	clr	c
      002721 E6               [12] 1695 	mov	a,@r0
      002722 94 C0            [12] 1696 	subb	a,#0xc0
      002724 08               [12] 1697 	inc	r0
      002725 E6               [12] 1698 	mov	a,@r0
      002726 64 80            [12] 1699 	xrl	a,#0x80
      002728 94 80            [12] 1700 	subb	a,#0x80
      00272A 50 03            [24] 1701 	jnc	00176$
      00272C 02 23 AD         [24] 1702 	ljmp	00135$
      00272F                       1703 00176$:
                                   1704 ;	life.c:219: OE76 = OE76_0;
      00272F 78 23            [12] 1705 	mov	r0,#_OE76
      002731 76 3F            [12] 1706 	mov	@r0,#0x3f
                                   1707 ;	life.c:30: OEreg = OE76;
      002733 90 F0 06         [24] 1708 	mov	dptr,#_OEreg
      002736 74 3F            [12] 1709 	mov	a,#0x3f
      002738 F0               [24] 1710 	movx	@dptr,a
                                   1711 ;	life.c:222: cycle2 = !cycle2;
      002739 78 39            [12] 1712 	mov	r0,#_cycle2
      00273B E6               [12] 1713 	mov	a,@r0
      00273C B4 01 00         [24] 1714 	cjne	a,#0x01,00177$
      00273F                       1715 00177$:
      00273F 92 00            [24] 1716 	mov	b0,c
      002741 78 39            [12] 1717 	mov	r0,#_cycle2
      002743 E4               [12] 1718 	clr	a
      002744 33               [12] 1719 	rlc	a
      002745 F6               [12] 1720 	mov	@r0,a
                                   1721 ;	life.c:223: fixed = !fixed;
      002746 78 38            [12] 1722 	mov	r0,#_fixed
      002748 E6               [12] 1723 	mov	a,@r0
      002749 B4 01 00         [24] 1724 	cjne	a,#0x01,00178$
      00274C                       1725 00178$:
      00274C 92 00            [24] 1726 	mov	b0,c
      00274E 78 38            [12] 1727 	mov	r0,#_fixed
      002750 E4               [12] 1728 	clr	a
      002751 33               [12] 1729 	rlc	a
      002752 F6               [12] 1730 	mov	@r0,a
                                   1731 ;	life.c:225: memcpy(pu, u, sizeof (u));
      002753 E4               [12] 1732 	clr	a
      002754 C0 E0            [24] 1733 	push	acc
      002756 74 24            [12] 1734 	mov	a,#0x24
      002758 C0 E0            [24] 1735 	push	acc
      00275A 74 00            [12] 1736 	mov	a,#_u
      00275C C0 E0            [24] 1737 	push	acc
      00275E 74 88            [12] 1738 	mov	a,#(_u >> 8)
      002760 C0 E0            [24] 1739 	push	acc
      002762 E4               [12] 1740 	clr	a
      002763 C0 E0            [24] 1741 	push	acc
      002765 90 64 00         [24] 1742 	mov	dptr,#_pu
      002768 75 F0 00         [24] 1743 	mov	b,#0x00
      00276B 12 2E FA         [24] 1744 	lcall	___memcpy
      00276E E5 81            [12] 1745 	mov	a,sp
      002770 24 FB            [12] 1746 	add	a,#0xfb
      002772 F5 81            [12] 1747 	mov	sp,a
                                   1748 ;	life.c:226: memcpy(u, nu, sizeof (nu));
      002774 E4               [12] 1749 	clr	a
      002775 C0 E0            [24] 1750 	push	acc
      002777 74 24            [12] 1751 	mov	a,#0x24
      002779 C0 E0            [24] 1752 	push	acc
      00277B 74 00            [12] 1753 	mov	a,#_nu
      00277D C0 E0            [24] 1754 	push	acc
      00277F 74 AC            [12] 1755 	mov	a,#(_nu >> 8)
      002781 C0 E0            [24] 1756 	push	acc
      002783 E4               [12] 1757 	clr	a
      002784 C0 E0            [24] 1758 	push	acc
      002786 90 88 00         [24] 1759 	mov	dptr,#_u
      002789 75 F0 00         [24] 1760 	mov	b,#0x00
      00278C 12 2E FA         [24] 1761 	lcall	___memcpy
      00278F E5 81            [12] 1762 	mov	a,sp
      002791 24 FB            [12] 1763 	add	a,#0xfb
                                   1764 ;	life.c:228: return;
                                   1765 ;	life.c:229: }
      002793 85 10 81         [24] 1766 	mov	sp,_bp
      002796 D0 10            [24] 1767 	pop	_bp
      002798 22               [24] 1768 	ret
                                   1769 ;------------------------------------------------------------
                                   1770 ;Allocation info for local variables in function 'main'
                                   1771 ;------------------------------------------------------------
                                   1772 ;c                         Allocated to registers r6 r7 
                                   1773 ;__3932160007              Allocated to registers 
                                   1774 ;__4587520011              Allocated to registers 
                                   1775 ;------------------------------------------------------------
                                   1776 ;	life.c:231: void main(void) {
                                   1777 ;	-----------------------------------------
                                   1778 ;	 function main
                                   1779 ;	-----------------------------------------
      002799                       1780 _main:
                                   1781 ;	life.c:234: IT0 = 1;
                                   1782 ;	assignBit
      002799 D2 88            [12] 1783 	setb	_IT0
                                   1784 ;	life.c:235: IT1 = 1;
                                   1785 ;	assignBit
      00279B D2 8A            [12] 1786 	setb	_IT1
                                   1787 ;	life.c:236: EX0 = 1;
                                   1788 ;	assignBit
      00279D D2 A8            [12] 1789 	setb	_EX0
                                   1790 ;	life.c:237: EX1 = 1;
                                   1791 ;	assignBit
      00279F D2 AA            [12] 1792 	setb	_EX1
                                   1793 ;	life.c:238: EA = 1;
                                   1794 ;	assignBit
      0027A1 D2 AF            [12] 1795 	setb	_EA
                                   1796 ;	life.c:239: P1_7 = 0;
                                   1797 ;	assignBit
      0027A3 C2 97            [12] 1798 	clr	_P1_7
                                   1799 ;	life.c:244: __endasm;
      0027A5 00               [12] 1800 	nop
      0027A6 00               [12] 1801 	nop
      0027A7 00               [12] 1802 	nop
                                   1803 ;	life.c:246: srand(RND);
      0027A8 90 E0 00         [24] 1804 	mov	dptr,#_RND
      0027AB E0               [24] 1805 	movx	a,@dptr
      0027AC FE               [12] 1806 	mov	r6,a
      0027AD A3               [24] 1807 	inc	dptr
      0027AE E0               [24] 1808 	movx	a,@dptr
      0027AF FF               [12] 1809 	mov	r7,a
      0027B0 8E 82            [24] 1810 	mov	dpl,r6
      0027B2 8F 83            [24] 1811 	mov	dph,r7
      0027B4 12 2B 2D         [24] 1812 	lcall	_srand
                                   1813 ;	life.c:248: OE76 = OE76_0;
      0027B7 78 23            [12] 1814 	mov	r0,#_OE76
      0027B9 76 3F            [12] 1815 	mov	@r0,#0x3f
                                   1816 ;	life.c:30: OEreg = OE76;
      0027BB 90 F0 06         [24] 1817 	mov	dptr,#_OEreg
      0027BE 74 3F            [12] 1818 	mov	a,#0x3f
      0027C0 F0               [24] 1819 	movx	@dptr,a
                                   1820 ;	life.c:43: gen = 0ul;
      0027C1 78 24            [12] 1821 	mov	r0,#_gen
      0027C3 E4               [12] 1822 	clr	a
      0027C4 F6               [12] 1823 	mov	@r0,a
      0027C5 08               [12] 1824 	inc	r0
      0027C6 F6               [12] 1825 	mov	@r0,a
      0027C7 08               [12] 1826 	inc	r0
      0027C8 F6               [12] 1827 	mov	@r0,a
      0027C9 08               [12] 1828 	inc	r0
      0027CA F6               [12] 1829 	mov	@r0,a
                                   1830 ;	life.c:44: genc2 = 0ul;
      0027CB 78 28            [12] 1831 	mov	r0,#_genc2
      0027CD F6               [12] 1832 	mov	@r0,a
      0027CE 08               [12] 1833 	inc	r0
      0027CF F6               [12] 1834 	mov	@r0,a
      0027D0 08               [12] 1835 	inc	r0
      0027D1 F6               [12] 1836 	mov	@r0,a
      0027D2 08               [12] 1837 	inc	r0
      0027D3 F6               [12] 1838 	mov	@r0,a
                                   1839 ;	life.c:45: genfx = 0ul;
      0027D4 78 2C            [12] 1840 	mov	r0,#_genfx
      0027D6 F6               [12] 1841 	mov	@r0,a
      0027D7 08               [12] 1842 	inc	r0
      0027D8 F6               [12] 1843 	mov	@r0,a
      0027D9 08               [12] 1844 	inc	r0
      0027DA F6               [12] 1845 	mov	@r0,a
      0027DB 08               [12] 1846 	inc	r0
      0027DC F6               [12] 1847 	mov	@r0,a
                                   1848 ;	life.c:46: c2set = 0;
      0027DD 78 30            [12] 1849 	mov	r0,#_c2set
      0027DF 76 00            [12] 1850 	mov	@r0,#0x00
                                   1851 ;	life.c:47: fxset = 0;
      0027E1 78 31            [12] 1852 	mov	r0,#_fxset
      0027E3 76 00            [12] 1853 	mov	@r0,#0x00
                                   1854 ;	life.c:252: pruni = 0;
      0027E5 78 32            [12] 1855 	mov	r0,#_pruni
      0027E7 76 00            [12] 1856 	mov	@r0,#0x00
                                   1857 ;	life.c:254: printstr("\033[?25h\033[m");
      0027E9 90 31 8C         [24] 1858 	mov	dptr,#___str_10
      0027EC 75 F0 80         [24] 1859 	mov	b,#0x80
      0027EF 12 2B 77         [24] 1860 	lcall	_printstr
                                   1861 ;	life.c:256: for (i0 = 0; !i0; ) {
      0027F2 78 21            [12] 1862 	mov	r0,#_i0
      0027F4 76 00            [12] 1863 	mov	@r0,#0x00
                                   1864 ;	life.c:257: while (1) {
      0027F6                       1865 00127$:
                                   1866 ;	life.c:258: printstr("LIFE I L R O P S U");
      0027F6 90 31 96         [24] 1867 	mov	dptr,#___str_11
      0027F9 75 F0 80         [24] 1868 	mov	b,#0x80
      0027FC 12 2B 77         [24] 1869 	lcall	_printstr
                                   1870 ;	life.c:259: putchar(pruni ? (int)'1' : (int)'0');
      0027FF 78 32            [12] 1871 	mov	r0,#_pruni
      002801 E6               [12] 1872 	mov	a,@r0
      002802 60 06            [24] 1873 	jz	00170$
      002804 7E 31            [12] 1874 	mov	r6,#0x31
      002806 7F 00            [12] 1875 	mov	r7,#0x00
      002808 80 04            [24] 1876 	sjmp	00171$
      00280A                       1877 00170$:
      00280A 7E 30            [12] 1878 	mov	r6,#0x30
      00280C 7F 00            [12] 1879 	mov	r7,#0x00
      00280E                       1880 00171$:
      00280E 8E 82            [24] 1881 	mov	dpl,r6
      002810 8F 83            [24] 1882 	mov	dph,r7
      002812 12 2B 46         [24] 1883 	lcall	_putchar
                                   1884 ;	life.c:260: printstr(" B T\r\n");
      002815 90 31 A9         [24] 1885 	mov	dptr,#___str_12
      002818 75 F0 80         [24] 1886 	mov	b,#0x80
      00281B 12 2B 77         [24] 1887 	lcall	_printstr
                                   1888 ;	life.c:261: c = toupper(getchar());
      00281E 12 2B 50         [24] 1889 	lcall	_getchar
      002821 12 2F F7         [24] 1890 	lcall	_toupper
      002824 AE 82            [24] 1891 	mov	r6,dpl
      002826 AF 83            [24] 1892 	mov	r7,dph
                                   1893 ;	life.c:262: if (i0 || (c == (int)'T')) goto term;
      002828 78 21            [12] 1894 	mov	r0,#_i0
      00282A E6               [12] 1895 	mov	a,@r0
      00282B 60 03            [24] 1896 	jz	00298$
      00282D 02 2A 5A         [24] 1897 	ljmp	00154$
      002830                       1898 00298$:
      002830 BE 54 06         [24] 1899 	cjne	r6,#0x54,00299$
      002833 BF 00 03         [24] 1900 	cjne	r7,#0x00,00299$
      002836 02 2A 5A         [24] 1901 	ljmp	00154$
      002839                       1902 00299$:
                                   1903 ;	life.c:263: else if ((c == (int)'I') || (c == (int)'L') || (c == (int)'R')) {
      002839 BE 49 05         [24] 1904 	cjne	r6,#0x49,00300$
      00283C BF 00 02         [24] 1905 	cjne	r7,#0x00,00300$
      00283F 80 0E            [24] 1906 	sjmp	00117$
      002841                       1907 00300$:
      002841 BE 4C 05         [24] 1908 	cjne	r6,#0x4c,00301$
      002844 BF 00 02         [24] 1909 	cjne	r7,#0x00,00301$
      002847 80 06            [24] 1910 	sjmp	00117$
      002849                       1911 00301$:
      002849 BE 52 34         [24] 1912 	cjne	r6,#0x52,00118$
      00284C BF 00 31         [24] 1913 	cjne	r7,#0x00,00118$
      00284F                       1914 00117$:
                                   1915 ;	life.c:264: if (c == (int)'L') loadiu();
      00284F BE 4C 08         [24] 1916 	cjne	r6,#0x4c,00104$
      002852 BF 00 05         [24] 1917 	cjne	r7,#0x00,00104$
      002855 12 22 1B         [24] 1918 	lcall	_loadiu
      002858 80 09            [24] 1919 	sjmp	00105$
      00285A                       1920 00104$:
                                   1921 ;	life.c:265: else if (c == (int)'R') loadriu();
      00285A BE 52 06         [24] 1922 	cjne	r6,#0x52,00105$
      00285D BF 00 03         [24] 1923 	cjne	r7,#0x00,00105$
      002860 12 23 18         [24] 1924 	lcall	_loadriu
      002863                       1925 00105$:
                                   1926 ;	life.c:266: initu();
      002863 12 20 8D         [24] 1927 	lcall	_initu
                                   1928 ;	life.c:267: showu(PRUNI, u);
      002866 74 00            [12] 1929 	mov	a,#_u
      002868 C0 E0            [24] 1930 	push	acc
      00286A 74 88            [12] 1931 	mov	a,#(_u >> 8)
      00286C C0 E0            [24] 1932 	push	acc
      00286E E4               [12] 1933 	clr	a
      00286F C0 E0            [24] 1934 	push	acc
      002871 75 82 04         [24] 1935 	mov	dpl,#0x04
      002874 12 20 EC         [24] 1936 	lcall	_showu
      002877 15 81            [12] 1937 	dec	sp
      002879 15 81            [12] 1938 	dec	sp
      00287B 15 81            [12] 1939 	dec	sp
      00287D 02 27 F6         [24] 1940 	ljmp	00127$
      002880                       1941 00118$:
                                   1942 ;	life.c:268: } else if (c == (int)'O') showu(PRUNI, iu);
      002880 BE 4F 1D         [24] 1943 	cjne	r6,#0x4f,00115$
      002883 BF 00 1A         [24] 1944 	cjne	r7,#0x00,00115$
      002886 74 00            [12] 1945 	mov	a,#_iu
      002888 C0 E0            [24] 1946 	push	acc
      00288A 74 40            [12] 1947 	mov	a,#(_iu >> 8)
      00288C C0 E0            [24] 1948 	push	acc
      00288E E4               [12] 1949 	clr	a
      00288F C0 E0            [24] 1950 	push	acc
      002891 75 82 04         [24] 1951 	mov	dpl,#0x04
      002894 12 20 EC         [24] 1952 	lcall	_showu
      002897 15 81            [12] 1953 	dec	sp
      002899 15 81            [12] 1954 	dec	sp
      00289B 15 81            [12] 1955 	dec	sp
      00289D 02 27 F6         [24] 1956 	ljmp	00127$
      0028A0                       1957 00115$:
                                   1958 ;	life.c:269: else if (c == (int)'P') showu(PRHDR | PRUNI, u);
      0028A0 BE 50 1D         [24] 1959 	cjne	r6,#0x50,00112$
      0028A3 BF 00 1A         [24] 1960 	cjne	r7,#0x00,00112$
      0028A6 74 00            [12] 1961 	mov	a,#_u
      0028A8 C0 E0            [24] 1962 	push	acc
      0028AA 74 88            [12] 1963 	mov	a,#(_u >> 8)
      0028AC C0 E0            [24] 1964 	push	acc
      0028AE E4               [12] 1965 	clr	a
      0028AF C0 E0            [24] 1966 	push	acc
      0028B1 75 82 06         [24] 1967 	mov	dpl,#0x06
      0028B4 12 20 EC         [24] 1968 	lcall	_showu
      0028B7 15 81            [12] 1969 	dec	sp
      0028B9 15 81            [12] 1970 	dec	sp
      0028BB 15 81            [12] 1971 	dec	sp
      0028BD 02 27 F6         [24] 1972 	ljmp	00127$
      0028C0                       1973 00112$:
                                   1974 ;	life.c:270: else if (c == (int)'U') pruni = !pruni;
      0028C0 BE 55 13         [24] 1975 	cjne	r6,#0x55,00109$
      0028C3 BF 00 10         [24] 1976 	cjne	r7,#0x00,00109$
      0028C6 78 32            [12] 1977 	mov	r0,#_pruni
      0028C8 E6               [12] 1978 	mov	a,@r0
      0028C9 B4 01 00         [24] 1979 	cjne	a,#0x01,00314$
      0028CC                       1980 00314$:
      0028CC 92 00            [24] 1981 	mov	b0,c
      0028CE 78 32            [12] 1982 	mov	r0,#_pruni
      0028D0 E4               [12] 1983 	clr	a
      0028D1 33               [12] 1984 	rlc	a
      0028D2 F6               [12] 1985 	mov	@r0,a
      0028D3 02 27 F6         [24] 1986 	ljmp	00127$
      0028D6                       1987 00109$:
                                   1988 ;	life.c:271: else if (c == (int)'S') break;
      0028D6 BE 53 05         [24] 1989 	cjne	r6,#0x53,00315$
      0028D9 BF 00 02         [24] 1990 	cjne	r7,#0x00,00315$
      0028DC 80 03            [24] 1991 	sjmp	00316$
      0028DE                       1992 00315$:
      0028DE 02 27 F6         [24] 1993 	ljmp	00127$
      0028E1                       1994 00316$:
                                   1995 ;	life.c:274: for (i1 = 0; !i0 && !i1; ) {
      0028E1 78 22            [12] 1996 	mov	r0,#_i1
      0028E3 76 00            [12] 1997 	mov	@r0,#0x00
      0028E5                       1998 00164$:
      0028E5 78 21            [12] 1999 	mov	r0,#_i0
      0028E7 E6               [12] 2000 	mov	a,@r0
      0028E8 60 03            [24] 2001 	jz	00317$
      0028EA 02 2A 2D         [24] 2002 	ljmp	00150$
      0028ED                       2003 00317$:
      0028ED 78 22            [12] 2004 	mov	r0,#_i1
      0028EF E6               [12] 2005 	mov	a,@r0
      0028F0 60 03            [24] 2006 	jz	00318$
      0028F2 02 2A 2D         [24] 2007 	ljmp	00150$
      0028F5                       2008 00318$:
                                   2009 ;	life.c:275: if (fxu()) {
      0028F5 78 31            [12] 2010 	mov	r0,#_fxset
      0028F7 E6               [12] 2011 	mov	a,@r0
      0028F8 60 23            [24] 2012 	jz	00130$
                                   2013 ;	life.c:276: printstr("FIXED AT ");
      0028FA 90 31 B0         [24] 2014 	mov	dptr,#___str_13
      0028FD 75 F0 80         [24] 2015 	mov	b,#0x80
      002900 12 2B 77         [24] 2016 	lcall	_printstr
                                   2017 ;	life.c:277: showu(PRHDR, u);
      002903 74 00            [12] 2018 	mov	a,#_u
      002905 C0 E0            [24] 2019 	push	acc
      002907 74 88            [12] 2020 	mov	a,#(_u >> 8)
      002909 C0 E0            [24] 2021 	push	acc
      00290B E4               [12] 2022 	clr	a
      00290C C0 E0            [24] 2023 	push	acc
      00290E 75 82 02         [24] 2024 	mov	dpl,#0x02
      002911 12 20 EC         [24] 2025 	lcall	_showu
      002914 15 81            [12] 2026 	dec	sp
      002916 15 81            [12] 2027 	dec	sp
      002918 15 81            [12] 2028 	dec	sp
                                   2029 ;	life.c:278: break;
      00291A 02 2A 2D         [24] 2030 	ljmp	00150$
      00291D                       2031 00130$:
                                   2032 ;	life.c:280: if (pruni) showu(PRCLR | PRHDR | PRUNI, u);
      00291D 78 32            [12] 2033 	mov	r0,#_pruni
      00291F E6               [12] 2034 	mov	a,@r0
      002920 60 19            [24] 2035 	jz	00132$
      002922 74 00            [12] 2036 	mov	a,#_u
      002924 C0 E0            [24] 2037 	push	acc
      002926 74 88            [12] 2038 	mov	a,#(_u >> 8)
      002928 C0 E0            [24] 2039 	push	acc
      00292A E4               [12] 2040 	clr	a
      00292B C0 E0            [24] 2041 	push	acc
      00292D 75 82 07         [24] 2042 	mov	dpl,#0x07
      002930 12 20 EC         [24] 2043 	lcall	_showu
      002933 15 81            [12] 2044 	dec	sp
      002935 15 81            [12] 2045 	dec	sp
      002937 15 81            [12] 2046 	dec	sp
      002939 80 17            [24] 2047 	sjmp	00133$
      00293B                       2048 00132$:
                                   2049 ;	life.c:281: else showu(PRHDR, u);
      00293B 74 00            [12] 2050 	mov	a,#_u
      00293D C0 E0            [24] 2051 	push	acc
      00293F 74 88            [12] 2052 	mov	a,#(_u >> 8)
      002941 C0 E0            [24] 2053 	push	acc
      002943 E4               [12] 2054 	clr	a
      002944 C0 E0            [24] 2055 	push	acc
      002946 75 82 02         [24] 2056 	mov	dpl,#0x02
      002949 12 20 EC         [24] 2057 	lcall	_showu
      00294C 15 81            [12] 2058 	dec	sp
      00294E 15 81            [12] 2059 	dec	sp
      002950 15 81            [12] 2060 	dec	sp
      002952                       2061 00133$:
                                   2062 ;	life.c:53: gen++;
      002952 78 24            [12] 2063 	mov	r0,#_gen
      002954 06               [12] 2064 	inc	@r0
      002955 B6 00 0C         [24] 2065 	cjne	@r0,#0x00,00321$
      002958 08               [12] 2066 	inc	r0
      002959 06               [12] 2067 	inc	@r0
      00295A B6 00 07         [24] 2068 	cjne	@r0,#0x00,00321$
      00295D 08               [12] 2069 	inc	r0
      00295E 06               [12] 2070 	inc	@r0
      00295F B6 00 02         [24] 2071 	cjne	@r0,#0x00,00321$
      002962 08               [12] 2072 	inc	r0
      002963 06               [12] 2073 	inc	@r0
      002964                       2074 00321$:
                                   2075 ;	life.c:283: evolveu();
      002964 12 23 8B         [24] 2076 	lcall	_evolveu
                                   2077 ;	life.c:284: if (fixed) {
      002967 78 38            [12] 2078 	mov	r0,#_fixed
      002969 E6               [12] 2079 	mov	a,@r0
      00296A 60 41            [24] 2080 	jz	00135$
                                   2081 ;	life.c:59: genfx = gen;
      00296C 78 24            [12] 2082 	mov	r0,#_gen
      00296E 86 04            [24] 2083 	mov	ar4,@r0
      002970 08               [12] 2084 	inc	r0
      002971 86 05            [24] 2085 	mov	ar5,@r0
      002973 08               [12] 2086 	inc	r0
      002974 86 06            [24] 2087 	mov	ar6,@r0
      002976 08               [12] 2088 	inc	r0
      002977 86 07            [24] 2089 	mov	ar7,@r0
      002979 78 2C            [12] 2090 	mov	r0,#_genfx
      00297B A6 04            [24] 2091 	mov	@r0,ar4
      00297D 08               [12] 2092 	inc	r0
      00297E A6 05            [24] 2093 	mov	@r0,ar5
      002980 08               [12] 2094 	inc	r0
      002981 A6 06            [24] 2095 	mov	@r0,ar6
      002983 08               [12] 2096 	inc	r0
      002984 A6 07            [24] 2097 	mov	@r0,ar7
                                   2098 ;	life.c:60: fxset = 1;
      002986 78 31            [12] 2099 	mov	r0,#_fxset
      002988 76 01            [12] 2100 	mov	@r0,#0x01
                                   2101 ;	life.c:286: printstr("FIXED AT ");
      00298A 90 31 B0         [24] 2102 	mov	dptr,#___str_13
      00298D 75 F0 80         [24] 2103 	mov	b,#0x80
      002990 12 2B 77         [24] 2104 	lcall	_printstr
                                   2105 ;	life.c:287: showu(PRHDR, u);
      002993 74 00            [12] 2106 	mov	a,#_u
      002995 C0 E0            [24] 2107 	push	acc
      002997 74 88            [12] 2108 	mov	a,#(_u >> 8)
      002999 C0 E0            [24] 2109 	push	acc
      00299B E4               [12] 2110 	clr	a
      00299C C0 E0            [24] 2111 	push	acc
      00299E 75 82 02         [24] 2112 	mov	dpl,#0x02
      0029A1 12 20 EC         [24] 2113 	lcall	_showu
      0029A4 15 81            [12] 2114 	dec	sp
      0029A6 15 81            [12] 2115 	dec	sp
      0029A8 15 81            [12] 2116 	dec	sp
                                   2117 ;	life.c:288: break;
      0029AA 02 2A 2D         [24] 2118 	ljmp	00150$
      0029AD                       2119 00135$:
                                   2120 ;	life.c:290: if (cycle2) {
      0029AD 78 39            [12] 2121 	mov	r0,#_cycle2
      0029AF E6               [12] 2122 	mov	a,@r0
      0029B0 60 23            [24] 2123 	jz	00139$
                                   2124 ;	life.c:291: if (!c2u()) updatec2();
      0029B2 78 30            [12] 2125 	mov	r0,#_c2set
      0029B4 E6               [12] 2126 	mov	a,@r0
      0029B5 70 1E            [24] 2127 	jnz	00139$
                                   2128 ;	life.c:66: genc2 = gen;
      0029B7 78 24            [12] 2129 	mov	r0,#_gen
      0029B9 86 04            [24] 2130 	mov	ar4,@r0
      0029BB 08               [12] 2131 	inc	r0
      0029BC 86 05            [24] 2132 	mov	ar5,@r0
      0029BE 08               [12] 2133 	inc	r0
      0029BF 86 06            [24] 2134 	mov	ar6,@r0
      0029C1 08               [12] 2135 	inc	r0
      0029C2 86 07            [24] 2136 	mov	ar7,@r0
      0029C4 78 28            [12] 2137 	mov	r0,#_genc2
      0029C6 A6 04            [24] 2138 	mov	@r0,ar4
      0029C8 08               [12] 2139 	inc	r0
      0029C9 A6 05            [24] 2140 	mov	@r0,ar5
      0029CB 08               [12] 2141 	inc	r0
      0029CC A6 06            [24] 2142 	mov	@r0,ar6
      0029CE 08               [12] 2143 	inc	r0
      0029CF A6 07            [24] 2144 	mov	@r0,ar7
                                   2145 ;	life.c:67: c2set = 1;
      0029D1 78 30            [12] 2146 	mov	r0,#_c2set
      0029D3 76 01            [12] 2147 	mov	@r0,#0x01
                                   2148 ;	life.c:291: if (!c2u()) updatec2();
      0029D5                       2149 00139$:
                                   2150 ;	life.c:294: c = getchar_poll();
      0029D5 12 2B 5D         [24] 2151 	lcall	_getchar_poll
      0029D8 AE 82            [24] 2152 	mov	r6,dpl
      0029DA AF 83            [24] 2153 	mov	r7,dph
                                   2154 ;	life.c:295: if (c > 0) {
      0029DC C3               [12] 2155 	clr	c
      0029DD E4               [12] 2156 	clr	a
      0029DE 9E               [12] 2157 	subb	a,r6
      0029DF 74 80            [12] 2158 	mov	a,#(0x00 ^ 0x80)
      0029E1 8F F0            [24] 2159 	mov	b,r7
      0029E3 63 F0 80         [24] 2160 	xrl	b,#0x80
      0029E6 95 F0            [12] 2161 	subb	a,b
      0029E8 40 03            [24] 2162 	jc	00325$
      0029EA 02 28 E5         [24] 2163 	ljmp	00164$
      0029ED                       2164 00325$:
                                   2165 ;	life.c:296: c = toupper(c);
      0029ED 8E 82            [24] 2166 	mov	dpl,r6
      0029EF 8F 83            [24] 2167 	mov	dph,r7
      0029F1 12 2F F7         [24] 2168 	lcall	_toupper
      0029F4 AE 82            [24] 2169 	mov	r6,dpl
      0029F6 AF 83            [24] 2170 	mov	r7,dph
                                   2171 ;	life.c:297: if (c == (int)'U') pruni = !pruni;
      0029F8 BE 55 13         [24] 2172 	cjne	r6,#0x55,00146$
      0029FB BF 00 10         [24] 2173 	cjne	r7,#0x00,00146$
      0029FE 78 32            [12] 2174 	mov	r0,#_pruni
      002A00 E6               [12] 2175 	mov	a,@r0
      002A01 B4 01 00         [24] 2176 	cjne	a,#0x01,00328$
      002A04                       2177 00328$:
      002A04 92 00            [24] 2178 	mov	b0,c
      002A06 78 32            [12] 2179 	mov	r0,#_pruni
      002A08 E4               [12] 2180 	clr	a
      002A09 33               [12] 2181 	rlc	a
      002A0A F6               [12] 2182 	mov	@r0,a
      002A0B 02 28 E5         [24] 2183 	ljmp	00164$
      002A0E                       2184 00146$:
                                   2185 ;	life.c:298: else if (c == (int)'T') i0 = 1;
      002A0E BE 54 0A         [24] 2186 	cjne	r6,#0x54,00143$
      002A11 BF 00 07         [24] 2187 	cjne	r7,#0x00,00143$
      002A14 78 21            [12] 2188 	mov	r0,#_i0
      002A16 76 01            [12] 2189 	mov	@r0,#0x01
      002A18 02 28 E5         [24] 2190 	ljmp	00164$
      002A1B                       2191 00143$:
                                   2192 ;	life.c:299: else if (c == (int)'B') i1 = 1;
      002A1B BE 42 05         [24] 2193 	cjne	r6,#0x42,00331$
      002A1E BF 00 02         [24] 2194 	cjne	r7,#0x00,00331$
      002A21 80 03            [24] 2195 	sjmp	00332$
      002A23                       2196 00331$:
      002A23 02 28 E5         [24] 2197 	ljmp	00164$
      002A26                       2198 00332$:
      002A26 78 22            [12] 2199 	mov	r0,#_i1
      002A28 76 01            [12] 2200 	mov	@r0,#0x01
      002A2A 02 28 E5         [24] 2201 	ljmp	00164$
      002A2D                       2202 00150$:
                                   2203 ;	life.c:303: if (i1) {
      002A2D 78 22            [12] 2204 	mov	r0,#_i1
      002A2F E6               [12] 2205 	mov	a,@r0
      002A30 60 20            [24] 2206 	jz	00167$
                                   2207 ;	life.c:304: printstr("BREAK AT ");
      002A32 90 31 BA         [24] 2208 	mov	dptr,#___str_14
      002A35 75 F0 80         [24] 2209 	mov	b,#0x80
      002A38 12 2B 77         [24] 2210 	lcall	_printstr
                                   2211 ;	life.c:305: showu(PRHDR, u);
      002A3B 74 00            [12] 2212 	mov	a,#_u
      002A3D C0 E0            [24] 2213 	push	acc
      002A3F 74 88            [12] 2214 	mov	a,#(_u >> 8)
      002A41 C0 E0            [24] 2215 	push	acc
      002A43 E4               [12] 2216 	clr	a
      002A44 C0 E0            [24] 2217 	push	acc
      002A46 75 82 02         [24] 2218 	mov	dpl,#0x02
      002A49 12 20 EC         [24] 2219 	lcall	_showu
      002A4C 15 81            [12] 2220 	dec	sp
      002A4E 15 81            [12] 2221 	dec	sp
      002A50 15 81            [12] 2222 	dec	sp
      002A52                       2223 00167$:
                                   2224 ;	life.c:256: for (i0 = 0; !i0; ) {
      002A52 78 21            [12] 2225 	mov	r0,#_i0
      002A54 E6               [12] 2226 	mov	a,@r0
      002A55 70 03            [24] 2227 	jnz	00334$
      002A57 02 27 F6         [24] 2228 	ljmp	00127$
      002A5A                       2229 00334$:
                                   2230 ;	life.c:309: term:
      002A5A                       2231 00154$:
                                   2232 ;	life.c:310: EA = 0;
                                   2233 ;	assignBit
      002A5A C2 AF            [12] 2234 	clr	_EA
                                   2235 ;	life.c:311: printstr("TERM\r\n");
      002A5C 90 31 C4         [24] 2236 	mov	dptr,#___str_15
      002A5F 75 F0 80         [24] 2237 	mov	b,#0x80
      002A62 12 2B 77         [24] 2238 	lcall	_printstr
                                   2239 ;	life.c:313: PCON |= 2;
      002A65 43 87 02         [24] 2240 	orl	_PCON,#0x02
                                   2241 ;	life.c:315: return;
                                   2242 ;	life.c:316: }
      002A68 22               [24] 2243 	ret
                                   2244 	.area CSEG    (CODE)
                                   2245 	.area CONST   (CODE)
                                   2246 	.area CONST   (CODE)
      003146                       2247 ___str_0:
      003146 1B                    2248 	.db 0x1b
      003147 5B 32 4A              2249 	.ascii "[2J"
      00314A 00                    2250 	.db 0x00
                                   2251 	.area CSEG    (CODE)
                                   2252 	.area CONST   (CODE)
      00314B                       2253 ___str_1:
      00314B 47 45 4E 20           2254 	.ascii "GEN "
      00314F 00                    2255 	.db 0x00
                                   2256 	.area CSEG    (CODE)
                                   2257 	.area CONST   (CODE)
      003150                       2258 ___str_2:
      003150 20 43 59 43 4C 45 32  2259 	.ascii " CYCLE2 "
             20
      003158 00                    2260 	.db 0x00
                                   2261 	.area CSEG    (CODE)
                                   2262 	.area CONST   (CODE)
      003159                       2263 ___str_3:
      003159 20 46 49 58 45 44 20  2264 	.ascii " FIXED "
      003160 00                    2265 	.db 0x00
                                   2266 	.area CSEG    (CODE)
                                   2267 	.area CONST   (CODE)
      003161                       2268 ___str_4:
      003161 0D                    2269 	.db 0x0d
      003162 0A                    2270 	.db 0x0a
      003163 00                    2271 	.db 0x00
                                   2272 	.area CSEG    (CODE)
                                   2273 	.area CONST   (CODE)
      003164                       2274 ___str_5:
      003164 1B                    2275 	.db 0x1b
      003165 5B 3F 32 35 6C        2276 	.ascii "[?25l"
      00316A 00                    2277 	.db 0x00
                                   2278 	.area CSEG    (CODE)
                                   2279 	.area CONST   (CODE)
      00316B                       2280 ___str_6:
      00316B 1B                    2281 	.db 0x1b
      00316C 5B 3F 32 35 68        2282 	.ascii "[?25h"
      003171 00                    2283 	.db 0x00
                                   2284 	.area CSEG    (CODE)
                                   2285 	.area CONST   (CODE)
      003172                       2286 ___str_7:
      003172 4C 4F 41 44 20 30 20  2287 	.ascii "LOAD 0 1 ~ # <"
             31 20 7E 20 23 20 3C
      003180 00                    2288 	.db 0x00
                                   2289 	.area CSEG    (CODE)
                                   2290 	.area CONST   (CODE)
      003181                       2291 ___str_8:
      003181 3E                    2292 	.ascii ">"
      003182 0D                    2293 	.db 0x0d
      003183 0A                    2294 	.db 0x0a
      003184 00                    2295 	.db 0x00
                                   2296 	.area CSEG    (CODE)
                                   2297 	.area CONST   (CODE)
      003185                       2298 ___str_9:
      003185 52 41 4E 44 4F 4D     2299 	.ascii "RANDOM"
      00318B 00                    2300 	.db 0x00
                                   2301 	.area CSEG    (CODE)
                                   2302 	.area CONST   (CODE)
      00318C                       2303 ___str_10:
      00318C 1B                    2304 	.db 0x1b
      00318D 5B 3F 32 35 68        2305 	.ascii "[?25h"
      003192 1B                    2306 	.db 0x1b
      003193 5B 6D                 2307 	.ascii "[m"
      003195 00                    2308 	.db 0x00
                                   2309 	.area CSEG    (CODE)
                                   2310 	.area CONST   (CODE)
      003196                       2311 ___str_11:
      003196 4C 49 46 45 20 49 20  2312 	.ascii "LIFE I L R O P S U"
             4C 20 52 20 4F 20 50
             20 53 20 55
      0031A8 00                    2313 	.db 0x00
                                   2314 	.area CSEG    (CODE)
                                   2315 	.area CONST   (CODE)
      0031A9                       2316 ___str_12:
      0031A9 20 42 20 54           2317 	.ascii " B T"
      0031AD 0D                    2318 	.db 0x0d
      0031AE 0A                    2319 	.db 0x0a
      0031AF 00                    2320 	.db 0x00
                                   2321 	.area CSEG    (CODE)
                                   2322 	.area CONST   (CODE)
      0031B0                       2323 ___str_13:
      0031B0 46 49 58 45 44 20 41  2324 	.ascii "FIXED AT "
             54 20
      0031B9 00                    2325 	.db 0x00
                                   2326 	.area CSEG    (CODE)
                                   2327 	.area CONST   (CODE)
      0031BA                       2328 ___str_14:
      0031BA 42 52 45 41 4B 20 41  2329 	.ascii "BREAK AT "
             54 20
      0031C3 00                    2330 	.db 0x00
                                   2331 	.area CSEG    (CODE)
                                   2332 	.area CONST   (CODE)
      0031C4                       2333 ___str_15:
      0031C4 54 45 52 4D           2334 	.ascii "TERM"
      0031C8 0D                    2335 	.db 0x0d
      0031C9 0A                    2336 	.db 0x0a
      0031CA 00                    2337 	.db 0x00
                                   2338 	.area CSEG    (CODE)
                                   2339 	.area XINIT   (CODE)
                                   2340 	.area CABS    (ABS,CODE)
