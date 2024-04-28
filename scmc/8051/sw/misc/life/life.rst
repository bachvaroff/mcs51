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
                                     12 	.globl _showu
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
      000033                        341 _genfx:
      000033                        342 	.ds 4
      000037                        343 _c2set:
      000037                        344 	.ds 1
      000038                        345 _fxset:
      000038                        346 	.ds 1
      000039                        347 _pruni:
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
      002016 02 21 C4         [24]  426 	ljmp	_main
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
                                    481 ;Allocation info for local variables in function 'flashOE'
                                    482 ;------------------------------------------------------------
                                    483 ;	life.c:29: static void flashOE(void) {
                                    484 ;	-----------------------------------------
                                    485 ;	 function flashOE
                                    486 ;	-----------------------------------------
      00208D                        487 _flashOE:
                           000007   488 	ar7 = 0x07
                           000006   489 	ar6 = 0x06
                           000005   490 	ar5 = 0x05
                           000004   491 	ar4 = 0x04
                           000003   492 	ar3 = 0x03
                           000002   493 	ar2 = 0x02
                           000001   494 	ar1 = 0x01
                           000000   495 	ar0 = 0x00
                                    496 ;	life.c:30: OEreg = OE76;
      00208D 78 23            [12]  497 	mov	r0,#_OE76
      00208F 90 F0 06         [24]  498 	mov	dptr,#_OEreg
      002092 E6               [12]  499 	mov	a,@r0
      002093 F0               [24]  500 	movx	@dptr,a
                                    501 ;	life.c:32: return;
                                    502 ;	life.c:33: }
      002094 22               [24]  503 	ret
                                    504 ;------------------------------------------------------------
                                    505 ;Allocation info for local variables in function 'showu'
                                    506 ;------------------------------------------------------------
                                    507 ;universe                  Allocated to stack - _bp -5
                                    508 ;prflags                   Allocated to registers r7 
                                    509 ;------------------------------------------------------------
                                    510 ;	life.c:93: void showu(char prflags, char *universe) {
                                    511 ;	-----------------------------------------
                                    512 ;	 function showu
                                    513 ;	-----------------------------------------
      002095                        514 _showu:
      002095 C0 10            [24]  515 	push	_bp
      002097 85 81 10         [24]  516 	mov	_bp,sp
                                    517 ;	life.c:94: if (prflags & PRCLR) printstr("\033[2J");
      00209A E5 82            [12]  518 	mov	a,dpl
      00209C FF               [12]  519 	mov	r7,a
      00209D 30 E0 0D         [24]  520 	jnb	acc.0,00102$
      0020A0 90 31 62         [24]  521 	mov	dptr,#___str_0
      0020A3 75 F0 80         [24]  522 	mov	b,#0x80
      0020A6 C0 07            [24]  523 	push	ar7
      0020A8 12 2B 93         [24]  524 	lcall	_printstr
      0020AB D0 07            [24]  525 	pop	ar7
      0020AD                        526 00102$:
                                    527 ;	life.c:95: if (prflags & PRHDR) {
      0020AD EF               [12]  528 	mov	a,r7
      0020AE 30 E1 6B         [24]  529 	jnb	acc.1,00108$
                                    530 ;	life.c:96: printstr("GEN ");
      0020B1 90 31 67         [24]  531 	mov	dptr,#___str_1
      0020B4 75 F0 80         [24]  532 	mov	b,#0x80
      0020B7 C0 07            [24]  533 	push	ar7
      0020B9 12 2B 93         [24]  534 	lcall	_printstr
                                    535 ;	life.c:97: print32x(gen);
      0020BC 78 2B            [12]  536 	mov	r0,#_gen
      0020BE 86 82            [24]  537 	mov	dpl,@r0
      0020C0 08               [12]  538 	inc	r0
      0020C1 86 83            [24]  539 	mov	dph,@r0
      0020C3 08               [12]  540 	inc	r0
      0020C4 86 F0            [24]  541 	mov	b,@r0
      0020C6 08               [12]  542 	inc	r0
      0020C7 E6               [12]  543 	mov	a,@r0
      0020C8 12 2D 43         [24]  544 	lcall	_print32x
      0020CB D0 07            [24]  545 	pop	ar7
                                    546 ;	life.c:98: if (c2set) {
      0020CD 78 37            [12]  547 	mov	r0,#_c2set
      0020CF E6               [12]  548 	mov	a,@r0
      0020D0 60 1C            [24]  549 	jz	00104$
                                    550 ;	life.c:99: printstr(" CYCLE2 ");
      0020D2 90 31 6C         [24]  551 	mov	dptr,#___str_2
      0020D5 75 F0 80         [24]  552 	mov	b,#0x80
      0020D8 C0 07            [24]  553 	push	ar7
      0020DA 12 2B 93         [24]  554 	lcall	_printstr
                                    555 ;	life.c:100: print32x(genc2);
      0020DD 78 2F            [12]  556 	mov	r0,#_genc2
      0020DF 86 82            [24]  557 	mov	dpl,@r0
      0020E1 08               [12]  558 	inc	r0
      0020E2 86 83            [24]  559 	mov	dph,@r0
      0020E4 08               [12]  560 	inc	r0
      0020E5 86 F0            [24]  561 	mov	b,@r0
      0020E7 08               [12]  562 	inc	r0
      0020E8 E6               [12]  563 	mov	a,@r0
      0020E9 12 2D 43         [24]  564 	lcall	_print32x
      0020EC D0 07            [24]  565 	pop	ar7
      0020EE                        566 00104$:
                                    567 ;	life.c:102: if (fxset) {
      0020EE 78 38            [12]  568 	mov	r0,#_fxset
      0020F0 E6               [12]  569 	mov	a,@r0
      0020F1 60 1C            [24]  570 	jz	00106$
                                    571 ;	life.c:103: printstr(" FIXED ");
      0020F3 90 31 75         [24]  572 	mov	dptr,#___str_3
      0020F6 75 F0 80         [24]  573 	mov	b,#0x80
      0020F9 C0 07            [24]  574 	push	ar7
      0020FB 12 2B 93         [24]  575 	lcall	_printstr
                                    576 ;	life.c:104: print32x(genfx);
      0020FE 78 33            [12]  577 	mov	r0,#_genfx
      002100 86 82            [24]  578 	mov	dpl,@r0
      002102 08               [12]  579 	inc	r0
      002103 86 83            [24]  580 	mov	dph,@r0
      002105 08               [12]  581 	inc	r0
      002106 86 F0            [24]  582 	mov	b,@r0
      002108 08               [12]  583 	inc	r0
      002109 E6               [12]  584 	mov	a,@r0
      00210A 12 2D 43         [24]  585 	lcall	_print32x
      00210D D0 07            [24]  586 	pop	ar7
      00210F                        587 00106$:
                                    588 ;	life.c:106: printstr("\r\n");
      00210F 90 31 7D         [24]  589 	mov	dptr,#___str_4
      002112 75 F0 80         [24]  590 	mov	b,#0x80
      002115 C0 07            [24]  591 	push	ar7
      002117 12 2B 93         [24]  592 	lcall	_printstr
      00211A D0 07            [24]  593 	pop	ar7
      00211C                        594 00108$:
                                    595 ;	life.c:108: if (prflags & PRUNI) {
      00211C EF               [12]  596 	mov	a,r7
      00211D 20 E2 03         [24]  597 	jb	acc.2,00166$
      002120 02 21 C1         [24]  598 	ljmp	00115$
      002123                        599 00166$:
                                    600 ;	life.c:109: printstr("\033[?25l");
      002123 90 31 80         [24]  601 	mov	dptr,#___str_5
      002126 75 F0 80         [24]  602 	mov	b,#0x80
      002129 12 2B 93         [24]  603 	lcall	_printstr
                                    604 ;	life.c:110: for (x = 0; x < W; x++) {
      00212C 78 24            [12]  605 	mov	r0,#_x
      00212E E4               [12]  606 	clr	a
      00212F F6               [12]  607 	mov	@r0,a
      002130 08               [12]  608 	inc	r0
      002131 F6               [12]  609 	mov	@r0,a
      002132                        610 00118$:
                                    611 ;	life.c:111: for (y = 0; y < H; y++)
      002132 78 26            [12]  612 	mov	r0,#_y
      002134 E4               [12]  613 	clr	a
      002135 F6               [12]  614 	mov	@r0,a
      002136 08               [12]  615 	inc	r0
      002137 F6               [12]  616 	mov	@r0,a
      002138                        617 00116$:
                                    618 ;	life.c:112: if (universe[A2D(W, y, x)]) putchar((int)'1');
      002138 78 26            [12]  619 	mov	r0,#_y
      00213A E6               [12]  620 	mov	a,@r0
      00213B C0 E0            [24]  621 	push	acc
      00213D 08               [12]  622 	inc	r0
      00213E E6               [12]  623 	mov	a,@r0
      00213F C0 E0            [24]  624 	push	acc
      002141 90 00 30         [24]  625 	mov	dptr,#0x0030
      002144 12 2E 78         [24]  626 	lcall	__mulint
      002147 AE 82            [24]  627 	mov	r6,dpl
      002149 AF 83            [24]  628 	mov	r7,dph
      00214B 15 81            [12]  629 	dec	sp
      00214D 15 81            [12]  630 	dec	sp
      00214F 78 24            [12]  631 	mov	r0,#_x
      002151 E6               [12]  632 	mov	a,@r0
      002152 2E               [12]  633 	add	a,r6
      002153 FE               [12]  634 	mov	r6,a
      002154 08               [12]  635 	inc	r0
      002155 E6               [12]  636 	mov	a,@r0
      002156 3F               [12]  637 	addc	a,r7
      002157 FF               [12]  638 	mov	r7,a
      002158 E5 10            [12]  639 	mov	a,_bp
      00215A 24 FB            [12]  640 	add	a,#0xfb
      00215C F8               [12]  641 	mov	r0,a
      00215D EE               [12]  642 	mov	a,r6
      00215E 26               [12]  643 	add	a,@r0
      00215F FE               [12]  644 	mov	r6,a
      002160 EF               [12]  645 	mov	a,r7
      002161 08               [12]  646 	inc	r0
      002162 36               [12]  647 	addc	a,@r0
      002163 FF               [12]  648 	mov	r7,a
      002164 08               [12]  649 	inc	r0
      002165 86 05            [24]  650 	mov	ar5,@r0
      002167 8E 82            [24]  651 	mov	dpl,r6
      002169 8F 83            [24]  652 	mov	dph,r7
      00216B 8D F0            [24]  653 	mov	b,r5
      00216D 12 30 3A         [24]  654 	lcall	__gptrget
      002170 60 08            [24]  655 	jz	00110$
      002172 90 00 31         [24]  656 	mov	dptr,#0x0031
      002175 12 2B 62         [24]  657 	lcall	_putchar
      002178 80 06            [24]  658 	sjmp	00117$
      00217A                        659 00110$:
                                    660 ;	life.c:113: else putchar((int)'0');
      00217A 90 00 30         [24]  661 	mov	dptr,#0x0030
      00217D 12 2B 62         [24]  662 	lcall	_putchar
      002180                        663 00117$:
                                    664 ;	life.c:111: for (y = 0; y < H; y++)
      002180 78 26            [12]  665 	mov	r0,#_y
      002182 06               [12]  666 	inc	@r0
      002183 B6 00 02         [24]  667 	cjne	@r0,#0x00,00168$
      002186 08               [12]  668 	inc	r0
      002187 06               [12]  669 	inc	@r0
      002188                        670 00168$:
      002188 78 26            [12]  671 	mov	r0,#_y
      00218A C3               [12]  672 	clr	c
      00218B E6               [12]  673 	mov	a,@r0
      00218C 94 C0            [12]  674 	subb	a,#0xc0
      00218E 08               [12]  675 	inc	r0
      00218F E6               [12]  676 	mov	a,@r0
      002190 64 80            [12]  677 	xrl	a,#0x80
      002192 94 80            [12]  678 	subb	a,#0x80
      002194 40 A2            [24]  679 	jc	00116$
                                    680 ;	life.c:114: printstr("\r\n");
      002196 90 31 7D         [24]  681 	mov	dptr,#___str_4
      002199 75 F0 80         [24]  682 	mov	b,#0x80
      00219C 12 2B 93         [24]  683 	lcall	_printstr
                                    684 ;	life.c:110: for (x = 0; x < W; x++) {
      00219F 78 24            [12]  685 	mov	r0,#_x
      0021A1 06               [12]  686 	inc	@r0
      0021A2 B6 00 02         [24]  687 	cjne	@r0,#0x00,00170$
      0021A5 08               [12]  688 	inc	r0
      0021A6 06               [12]  689 	inc	@r0
      0021A7                        690 00170$:
      0021A7 78 24            [12]  691 	mov	r0,#_x
      0021A9 C3               [12]  692 	clr	c
      0021AA E6               [12]  693 	mov	a,@r0
      0021AB 94 30            [12]  694 	subb	a,#0x30
      0021AD 08               [12]  695 	inc	r0
      0021AE E6               [12]  696 	mov	a,@r0
      0021AF 64 80            [12]  697 	xrl	a,#0x80
      0021B1 94 80            [12]  698 	subb	a,#0x80
      0021B3 50 03            [24]  699 	jnc	00171$
      0021B5 02 21 32         [24]  700 	ljmp	00118$
      0021B8                        701 00171$:
                                    702 ;	life.c:116: printstr("\033[?25h");
      0021B8 90 31 87         [24]  703 	mov	dptr,#___str_6
      0021BB 75 F0 80         [24]  704 	mov	b,#0x80
      0021BE 12 2B 93         [24]  705 	lcall	_printstr
      0021C1                        706 00115$:
                                    707 ;	life.c:119: return;
                                    708 ;	life.c:120: }
      0021C1 D0 10            [24]  709 	pop	_bp
      0021C3 22               [24]  710 	ret
                                    711 ;------------------------------------------------------------
                                    712 ;Allocation info for local variables in function 'main'
                                    713 ;------------------------------------------------------------
                                    714 ;c                         Allocated to registers r6 r7 
                                    715 ;nbits                     Allocated to registers r4 r5 
                                    716 ;c                         Allocated to stack - _bp +10
                                    717 ;__3932160006              Allocated to registers 
                                    718 ;__4587520011              Allocated to registers 
                                    719 ;sloc0                     Allocated to stack - _bp +1
                                    720 ;sloc1                     Allocated to stack - _bp +2
                                    721 ;sloc2                     Allocated to stack - _bp +4
                                    722 ;sloc3                     Allocated to stack - _bp +6
                                    723 ;sloc4                     Allocated to stack - _bp +8
                                    724 ;------------------------------------------------------------
                                    725 ;	life.c:225: void main(void) {
                                    726 ;	-----------------------------------------
                                    727 ;	 function main
                                    728 ;	-----------------------------------------
      0021C4                        729 _main:
      0021C4 C0 10            [24]  730 	push	_bp
      0021C6 E5 81            [12]  731 	mov	a,sp
      0021C8 F5 10            [12]  732 	mov	_bp,a
      0021CA 24 0B            [12]  733 	add	a,#0x0b
      0021CC F5 81            [12]  734 	mov	sp,a
                                    735 ;	life.c:228: IT0 = 1;
                                    736 ;	assignBit
      0021CE D2 88            [12]  737 	setb	_IT0
                                    738 ;	life.c:229: IT1 = 1;
                                    739 ;	assignBit
      0021D0 D2 8A            [12]  740 	setb	_IT1
                                    741 ;	life.c:230: EX0 = 1;
                                    742 ;	assignBit
      0021D2 D2 A8            [12]  743 	setb	_EX0
                                    744 ;	life.c:231: EX1 = 1;
                                    745 ;	assignBit
      0021D4 D2 AA            [12]  746 	setb	_EX1
                                    747 ;	life.c:232: EA = 1;
                                    748 ;	assignBit
      0021D6 D2 AF            [12]  749 	setb	_EA
                                    750 ;	life.c:233: P1_7 = 0;
                                    751 ;	assignBit
      0021D8 C2 97            [12]  752 	clr	_P1_7
                                    753 ;	life.c:238: __endasm;
      0021DA 00               [12]  754 	nop
      0021DB 00               [12]  755 	nop
      0021DC 00               [12]  756 	nop
                                    757 ;	life.c:240: srand(RND);
      0021DD 90 E0 00         [24]  758 	mov	dptr,#_RND
      0021E0 E0               [24]  759 	movx	a,@dptr
      0021E1 FE               [12]  760 	mov	r6,a
      0021E2 A3               [24]  761 	inc	dptr
      0021E3 E0               [24]  762 	movx	a,@dptr
      0021E4 FF               [12]  763 	mov	r7,a
      0021E5 8E 82            [24]  764 	mov	dpl,r6
      0021E7 8F 83            [24]  765 	mov	dph,r7
      0021E9 12 2B 49         [24]  766 	lcall	_srand
                                    767 ;	life.c:242: OE76 = OE76_0;
      0021EC 78 23            [12]  768 	mov	r0,#_OE76
      0021EE 76 3F            [12]  769 	mov	@r0,#0x3f
                                    770 ;	life.c:243: flashOE();
      0021F0 12 20 8D         [24]  771 	lcall	_flashOE
                                    772 ;	life.c:51: gen = 0ul;
      0021F3 78 2B            [12]  773 	mov	r0,#_gen
      0021F5 E4               [12]  774 	clr	a
      0021F6 F6               [12]  775 	mov	@r0,a
      0021F7 08               [12]  776 	inc	r0
      0021F8 F6               [12]  777 	mov	@r0,a
      0021F9 08               [12]  778 	inc	r0
      0021FA F6               [12]  779 	mov	@r0,a
      0021FB 08               [12]  780 	inc	r0
      0021FC F6               [12]  781 	mov	@r0,a
                                    782 ;	life.c:52: genc2 = 0ul;
      0021FD 78 2F            [12]  783 	mov	r0,#_genc2
      0021FF F6               [12]  784 	mov	@r0,a
      002200 08               [12]  785 	inc	r0
      002201 F6               [12]  786 	mov	@r0,a
      002202 08               [12]  787 	inc	r0
      002203 F6               [12]  788 	mov	@r0,a
      002204 08               [12]  789 	inc	r0
      002205 F6               [12]  790 	mov	@r0,a
                                    791 ;	life.c:53: genfx = 0ul;
      002206 78 33            [12]  792 	mov	r0,#_genfx
      002208 F6               [12]  793 	mov	@r0,a
      002209 08               [12]  794 	inc	r0
      00220A F6               [12]  795 	mov	@r0,a
      00220B 08               [12]  796 	inc	r0
      00220C F6               [12]  797 	mov	@r0,a
      00220D 08               [12]  798 	inc	r0
      00220E F6               [12]  799 	mov	@r0,a
                                    800 ;	life.c:54: c2set = 0;
      00220F 78 37            [12]  801 	mov	r0,#_c2set
      002211 76 00            [12]  802 	mov	@r0,#0x00
                                    803 ;	life.c:55: fxset = 0;
      002213 78 38            [12]  804 	mov	r0,#_fxset
      002215 76 00            [12]  805 	mov	@r0,#0x00
                                    806 ;	life.c:246: pruni = 0;
      002217 78 39            [12]  807 	mov	r0,#_pruni
      002219 76 00            [12]  808 	mov	@r0,#0x00
                                    809 ;	life.c:248: printstr("\033[?25h\033[m");
      00221B 90 31 A8         [24]  810 	mov	dptr,#___str_10
      00221E 75 F0 80         [24]  811 	mov	b,#0x80
      002221 12 2B 93         [24]  812 	lcall	_printstr
                                    813 ;	life.c:250: for (i0 = 0; !i0; ) {
      002224 78 21            [12]  814 	mov	r0,#_i0
      002226 76 00            [12]  815 	mov	@r0,#0x00
                                    816 ;	life.c:251: while (1) {
      002228                        817 00127$:
                                    818 ;	life.c:252: printstr("LIFE I L R O P S U");
      002228 90 31 B2         [24]  819 	mov	dptr,#___str_11
      00222B 75 F0 80         [24]  820 	mov	b,#0x80
      00222E 12 2B 93         [24]  821 	lcall	_printstr
                                    822 ;	life.c:253: putchar(pruni ? (int)'1' : (int)'0');
      002231 78 39            [12]  823 	mov	r0,#_pruni
      002233 E6               [12]  824 	mov	a,@r0
      002234 60 06            [24]  825 	jz	00243$
      002236 7E 31            [12]  826 	mov	r6,#0x31
      002238 7F 00            [12]  827 	mov	r7,#0x00
      00223A 80 04            [24]  828 	sjmp	00244$
      00223C                        829 00243$:
      00223C 7E 30            [12]  830 	mov	r6,#0x30
      00223E 7F 00            [12]  831 	mov	r7,#0x00
      002240                        832 00244$:
      002240 8E 82            [24]  833 	mov	dpl,r6
      002242 8F 83            [24]  834 	mov	dph,r7
      002244 12 2B 62         [24]  835 	lcall	_putchar
                                    836 ;	life.c:254: printstr(" B T\r\n");
      002247 90 31 C5         [24]  837 	mov	dptr,#___str_12
      00224A 75 F0 80         [24]  838 	mov	b,#0x80
      00224D 12 2B 93         [24]  839 	lcall	_printstr
                                    840 ;	life.c:255: c = toupper(getchar());
      002250 12 2B 6C         [24]  841 	lcall	_getchar
      002253 12 30 13         [24]  842 	lcall	_toupper
      002256 AE 82            [24]  843 	mov	r6,dpl
      002258 AF 83            [24]  844 	mov	r7,dph
                                    845 ;	life.c:256: if (i0 || (c == (int)'T')) goto term;
      00225A 78 21            [12]  846 	mov	r0,#_i0
      00225C E6               [12]  847 	mov	a,@r0
      00225D 60 03            [24]  848 	jz	00467$
      00225F 02 2A 71         [24]  849 	ljmp	00154$
      002262                        850 00467$:
      002262 BE 54 06         [24]  851 	cjne	r6,#0x54,00468$
      002265 BF 00 03         [24]  852 	cjne	r7,#0x00,00468$
      002268 02 2A 71         [24]  853 	ljmp	00154$
      00226B                        854 00468$:
                                    855 ;	life.c:257: else if ((c == (int)'I') || (c == (int)'L') || (c == (int)'R')) {
      00226B BE 49 05         [24]  856 	cjne	r6,#0x49,00469$
      00226E BF 00 02         [24]  857 	cjne	r7,#0x00,00469$
      002271 80 13            [24]  858 	sjmp	00117$
      002273                        859 00469$:
      002273 BE 4C 05         [24]  860 	cjne	r6,#0x4c,00470$
      002276 BF 00 02         [24]  861 	cjne	r7,#0x00,00470$
      002279 80 0B            [24]  862 	sjmp	00117$
      00227B                        863 00470$:
      00227B BE 52 05         [24]  864 	cjne	r6,#0x52,00471$
      00227E BF 00 02         [24]  865 	cjne	r7,#0x00,00471$
      002281 80 03            [24]  866 	sjmp	00472$
      002283                        867 00471$:
      002283 02 24 A3         [24]  868 	ljmp	00118$
      002286                        869 00472$:
      002286                        870 00117$:
                                    871 ;	life.c:258: if (c == (int)'L') loadiu();
      002286 BE 4C 05         [24]  872 	cjne	r6,#0x4c,00473$
      002289 BF 00 02         [24]  873 	cjne	r7,#0x00,00473$
      00228C 80 03            [24]  874 	sjmp	00474$
      00228E                        875 00473$:
      00228E 02 23 B2         [24]  876 	ljmp	00104$
      002291                        877 00474$:
                                    878 ;	life.c:133: printstr("LOAD 0 1 ~ # <");
      002291 90 31 8E         [24]  879 	mov	dptr,#___str_7
      002294 75 F0 80         [24]  880 	mov	b,#0x80
      002297 12 2B 93         [24]  881 	lcall	_printstr
                                    882 ;	life.c:135: for (nbits = 0, y = 0; y < (H * W); y += W) {
      00229A 7C 00            [12]  883 	mov	r4,#0x00
      00229C 7D 00            [12]  884 	mov	r5,#0x00
      00229E 78 26            [12]  885 	mov	r0,#_y
      0022A0 E4               [12]  886 	clr	a
      0022A1 F6               [12]  887 	mov	@r0,a
      0022A2 08               [12]  888 	inc	r0
      0022A3 F6               [12]  889 	mov	@r0,a
      0022A4                        890 00225$:
      0022A4 78 26            [12]  891 	mov	r0,#_y
      0022A6 C3               [12]  892 	clr	c
      0022A7 08               [12]  893 	inc	r0
      0022A8 E6               [12]  894 	mov	a,@r0
      0022A9 64 80            [12]  895 	xrl	a,#0x80
      0022AB 94 A4            [12]  896 	subb	a,#0xa4
      0022AD 40 03            [24]  897 	jc	00475$
      0022AF 02 23 6D         [24]  898 	ljmp	00181$
      0022B2                        899 00475$:
                                    900 ;	life.c:136: for (x = 0; x < W; x++) {
      0022B2 78 24            [12]  901 	mov	r0,#_x
      0022B4 E4               [12]  902 	clr	a
      0022B5 F6               [12]  903 	mov	@r0,a
      0022B6 08               [12]  904 	inc	r0
      0022B7 F6               [12]  905 	mov	@r0,a
                                    906 ;	life.c:137: while (1) {
      0022B8                        907 00168$:
                                    908 ;	life.c:138: c = getchar();
      0022B8 C0 05            [24]  909 	push	ar5
      0022BA C0 04            [24]  910 	push	ar4
      0022BC 12 2B 6C         [24]  911 	lcall	_getchar
      0022BF AA 82            [24]  912 	mov	r2,dpl
      0022C1 AB 83            [24]  913 	mov	r3,dph
      0022C3 D0 04            [24]  914 	pop	ar4
      0022C5 D0 05            [24]  915 	pop	ar5
      0022C7 E5 10            [12]  916 	mov	a,_bp
      0022C9 24 0A            [12]  917 	add	a,#0x0a
      0022CB F8               [12]  918 	mov	r0,a
      0022CC A6 02            [24]  919 	mov	@r0,ar2
      0022CE 08               [12]  920 	inc	r0
      0022CF A6 03            [24]  921 	mov	@r0,ar3
                                    922 ;	life.c:139: if (c == (int)'0') {
      0022D1 E5 10            [12]  923 	mov	a,_bp
      0022D3 24 0A            [12]  924 	add	a,#0x0a
      0022D5 F8               [12]  925 	mov	r0,a
      0022D6 B6 30 23         [24]  926 	cjne	@r0,#0x30,00166$
      0022D9 08               [12]  927 	inc	r0
      0022DA B6 00 1F         [24]  928 	cjne	@r0,#0x00,00166$
                                    929 ;	life.c:140: iu[y + x] = 0;
      0022DD 78 26            [12]  930 	mov	r0,#_y
      0022DF 79 24            [12]  931 	mov	r1,#_x
      0022E1 E7               [12]  932 	mov	a,@r1
      0022E2 26               [12]  933 	add	a,@r0
      0022E3 FA               [12]  934 	mov	r2,a
      0022E4 09               [12]  935 	inc	r1
      0022E5 E7               [12]  936 	mov	a,@r1
      0022E6 08               [12]  937 	inc	r0
      0022E7 36               [12]  938 	addc	a,@r0
      0022E8 FB               [12]  939 	mov	r3,a
      0022E9 EA               [12]  940 	mov	a,r2
      0022EA 24 00            [12]  941 	add	a,#_iu
      0022EC F5 82            [12]  942 	mov	dpl,a
      0022EE EB               [12]  943 	mov	a,r3
      0022EF 34 40            [12]  944 	addc	a,#(_iu >> 8)
      0022F1 F5 83            [12]  945 	mov	dph,a
      0022F3 E4               [12]  946 	clr	a
      0022F4 F0               [24]  947 	movx	@dptr,a
                                    948 ;	life.c:141: nbits++;
      0022F5 0C               [12]  949 	inc	r4
                                    950 ;	life.c:142: break;
      0022F6 BC 00 4E         [24]  951 	cjne	r4,#0x00,00171$
      0022F9 0D               [12]  952 	inc	r5
      0022FA 80 4B            [24]  953 	sjmp	00171$
      0022FC                        954 00166$:
                                    955 ;	life.c:143: } else if (c == (int)'1') {
      0022FC E5 10            [12]  956 	mov	a,_bp
      0022FE 24 0A            [12]  957 	add	a,#0x0a
      002300 F8               [12]  958 	mov	r0,a
      002301 B6 31 24         [24]  959 	cjne	@r0,#0x31,00164$
      002304 08               [12]  960 	inc	r0
      002305 B6 00 20         [24]  961 	cjne	@r0,#0x00,00164$
                                    962 ;	life.c:144: iu[y + x] = 1;
      002308 78 26            [12]  963 	mov	r0,#_y
      00230A 79 24            [12]  964 	mov	r1,#_x
      00230C E7               [12]  965 	mov	a,@r1
      00230D 26               [12]  966 	add	a,@r0
      00230E FA               [12]  967 	mov	r2,a
      00230F 09               [12]  968 	inc	r1
      002310 E7               [12]  969 	mov	a,@r1
      002311 08               [12]  970 	inc	r0
      002312 36               [12]  971 	addc	a,@r0
      002313 FB               [12]  972 	mov	r3,a
      002314 EA               [12]  973 	mov	a,r2
      002315 24 00            [12]  974 	add	a,#_iu
      002317 F5 82            [12]  975 	mov	dpl,a
      002319 EB               [12]  976 	mov	a,r3
      00231A 34 40            [12]  977 	addc	a,#(_iu >> 8)
      00231C F5 83            [12]  978 	mov	dph,a
      00231E 74 01            [12]  979 	mov	a,#0x01
      002320 F0               [24]  980 	movx	@dptr,a
                                    981 ;	life.c:145: nbits++;
      002321 0C               [12]  982 	inc	r4
                                    983 ;	life.c:146: break;
      002322 BC 00 22         [24]  984 	cjne	r4,#0x00,00171$
      002325 0D               [12]  985 	inc	r5
      002326 80 1F            [24]  986 	sjmp	00171$
      002328                        987 00164$:
                                    988 ;	life.c:147: } else if (c == (int)'~') goto br_inner;
      002328 E5 10            [12]  989 	mov	a,_bp
      00232A 24 0A            [12]  990 	add	a,#0x0a
      00232C F8               [12]  991 	mov	r0,a
      00232D B6 7E 06         [24]  992 	cjne	@r0,#0x7e,00482$
      002330 08               [12]  993 	inc	r0
      002331 B6 00 02         [24]  994 	cjne	@r0,#0x00,00482$
      002334 80 2A            [24]  995 	sjmp	00226$
      002336                        996 00482$:
                                    997 ;	life.c:148: else if (c == (int)'#') goto out;
      002336 E5 10            [12]  998 	mov	a,_bp
      002338 24 0A            [12]  999 	add	a,#0x0a
      00233A F8               [12] 1000 	mov	r0,a
      00233B B6 23 06         [24] 1001 	cjne	@r0,#0x23,00483$
      00233E 08               [12] 1002 	inc	r0
      00233F B6 00 02         [24] 1003 	cjne	@r0,#0x00,00483$
      002342 80 29            [24] 1004 	sjmp	00181$
      002344                       1005 00483$:
      002344 02 22 B8         [24] 1006 	ljmp	00168$
                                   1007 ;	life.c:152: break;
      002347                       1008 00171$:
                                   1009 ;	life.c:136: for (x = 0; x < W; x++) {
      002347 78 24            [12] 1010 	mov	r0,#_x
      002349 06               [12] 1011 	inc	@r0
      00234A B6 00 02         [24] 1012 	cjne	@r0,#0x00,00484$
      00234D 08               [12] 1013 	inc	r0
      00234E 06               [12] 1014 	inc	@r0
      00234F                       1015 00484$:
      00234F 78 24            [12] 1016 	mov	r0,#_x
      002351 C3               [12] 1017 	clr	c
      002352 E6               [12] 1018 	mov	a,@r0
      002353 94 30            [12] 1019 	subb	a,#0x30
      002355 08               [12] 1020 	inc	r0
      002356 E6               [12] 1021 	mov	a,@r0
      002357 64 80            [12] 1022 	xrl	a,#0x80
      002359 94 80            [12] 1023 	subb	a,#0x80
      00235B 50 03            [24] 1024 	jnc	00485$
      00235D 02 22 B8         [24] 1025 	ljmp	00168$
      002360                       1026 00485$:
      002360                       1027 00226$:
                                   1028 ;	life.c:135: for (nbits = 0, y = 0; y < (H * W); y += W) {
      002360 78 26            [12] 1029 	mov	r0,#_y
      002362 74 30            [12] 1030 	mov	a,#0x30
      002364 26               [12] 1031 	add	a,@r0
      002365 F6               [12] 1032 	mov	@r0,a
      002366 E4               [12] 1033 	clr	a
      002367 08               [12] 1034 	inc	r0
      002368 36               [12] 1035 	addc	a,@r0
      002369 F6               [12] 1036 	mov	@r0,a
      00236A 02 22 A4         [24] 1037 	ljmp	00225$
                                   1038 ;	life.c:156: out:
      00236D                       1039 00181$:
                                   1040 ;	life.c:157: if (c != (int)'#')
      00236D E5 10            [12] 1041 	mov	a,_bp
      00236F 24 0A            [12] 1042 	add	a,#0x0a
      002371 F8               [12] 1043 	mov	r0,a
      002372 B6 23 06         [24] 1044 	cjne	@r0,#0x23,00486$
      002375 08               [12] 1045 	inc	r0
      002376 B6 00 02         [24] 1046 	cjne	@r0,#0x00,00486$
      002379 80 25            [24] 1047 	sjmp	00180$
      00237B                       1048 00486$:
                                   1049 ;	life.c:158: while (1) {
      00237B                       1050 00177$:
                                   1051 ;	life.c:159: c = getchar();
      00237B C0 05            [24] 1052 	push	ar5
      00237D C0 04            [24] 1053 	push	ar4
      00237F 12 2B 6C         [24] 1054 	lcall	_getchar
      002382 AA 82            [24] 1055 	mov	r2,dpl
      002384 AB 83            [24] 1056 	mov	r3,dph
      002386 D0 04            [24] 1057 	pop	ar4
      002388 D0 05            [24] 1058 	pop	ar5
      00238A E5 10            [12] 1059 	mov	a,_bp
      00238C 24 0A            [12] 1060 	add	a,#0x0a
      00238E F8               [12] 1061 	mov	r0,a
      00238F A6 02            [24] 1062 	mov	@r0,ar2
      002391 08               [12] 1063 	inc	r0
      002392 A6 03            [24] 1064 	mov	@r0,ar3
                                   1065 ;	life.c:160: if (c == (int)'#') break;
      002394 E5 10            [12] 1066 	mov	a,_bp
      002396 24 0A            [12] 1067 	add	a,#0x0a
      002398 F8               [12] 1068 	mov	r0,a
      002399 B6 23 DF         [24] 1069 	cjne	@r0,#0x23,00177$
      00239C 08               [12] 1070 	inc	r0
      00239D B6 00 DB         [24] 1071 	cjne	@r0,#0x00,00177$
      0023A0                       1072 00180$:
                                   1073 ;	life.c:162: print16x(nbits);
      0023A0 8C 82            [24] 1074 	mov	dpl,r4
      0023A2 8D 83            [24] 1075 	mov	dph,r5
      0023A4 12 2C BD         [24] 1076 	lcall	_print16x
                                   1077 ;	life.c:163: printstr(">\r\n");
      0023A7 90 31 9D         [24] 1078 	mov	dptr,#___str_8
      0023AA 75 F0 80         [24] 1079 	mov	b,#0x80
      0023AD 12 2B 93         [24] 1080 	lcall	_printstr
                                   1081 ;	life.c:258: if (c == (int)'L') loadiu();
      0023B0 80 79            [24] 1082 	sjmp	00105$
      0023B2                       1083 00104$:
                                   1084 ;	life.c:259: else if (c == (int)'R') loadriu();
      0023B2 BE 52 76         [24] 1085 	cjne	r6,#0x52,00105$
      0023B5 BF 00 73         [24] 1086 	cjne	r7,#0x00,00105$
                                   1087 ;	life.c:169: printstr("RANDOM");
      0023B8 90 31 A1         [24] 1088 	mov	dptr,#___str_9
      0023BB 75 F0 80         [24] 1089 	mov	b,#0x80
      0023BE 12 2B 93         [24] 1090 	lcall	_printstr
                                   1091 ;	life.c:171: for (y = 0; y < (H * W); y += W)
      0023C1 78 26            [12] 1092 	mov	r0,#_y
      0023C3 E4               [12] 1093 	clr	a
      0023C4 F6               [12] 1094 	mov	@r0,a
      0023C5 08               [12] 1095 	inc	r0
      0023C6 F6               [12] 1096 	mov	@r0,a
      0023C7                       1097 00229$:
                                   1098 ;	life.c:172: for (x = 0; x < W; x++)
      0023C7 78 24            [12] 1099 	mov	r0,#_x
      0023C9 E4               [12] 1100 	clr	a
      0023CA F6               [12] 1101 	mov	@r0,a
      0023CB 08               [12] 1102 	inc	r0
      0023CC F6               [12] 1103 	mov	@r0,a
      0023CD                       1104 00227$:
                                   1105 ;	life.c:173: iu[y + x] = rand() & 1;
      0023CD 78 26            [12] 1106 	mov	r0,#_y
      0023CF 79 24            [12] 1107 	mov	r1,#_x
      0023D1 E7               [12] 1108 	mov	a,@r1
      0023D2 26               [12] 1109 	add	a,@r0
      0023D3 FC               [12] 1110 	mov	r4,a
      0023D4 09               [12] 1111 	inc	r1
      0023D5 E7               [12] 1112 	mov	a,@r1
      0023D6 08               [12] 1113 	inc	r0
      0023D7 36               [12] 1114 	addc	a,@r0
      0023D8 FD               [12] 1115 	mov	r5,a
      0023D9 EC               [12] 1116 	mov	a,r4
      0023DA 24 00            [12] 1117 	add	a,#_iu
      0023DC FC               [12] 1118 	mov	r4,a
      0023DD ED               [12] 1119 	mov	a,r5
      0023DE 34 40            [12] 1120 	addc	a,#(_iu >> 8)
      0023E0 FD               [12] 1121 	mov	r5,a
      0023E1 C0 05            [24] 1122 	push	ar5
      0023E3 C0 04            [24] 1123 	push	ar4
      0023E5 12 2A 85         [24] 1124 	lcall	_rand
      0023E8 AA 82            [24] 1125 	mov	r2,dpl
      0023EA D0 04            [24] 1126 	pop	ar4
      0023EC D0 05            [24] 1127 	pop	ar5
      0023EE 53 02 01         [24] 1128 	anl	ar2,#0x01
      0023F1 8C 82            [24] 1129 	mov	dpl,r4
      0023F3 8D 83            [24] 1130 	mov	dph,r5
      0023F5 EA               [12] 1131 	mov	a,r2
      0023F6 F0               [24] 1132 	movx	@dptr,a
                                   1133 ;	life.c:172: for (x = 0; x < W; x++)
      0023F7 78 24            [12] 1134 	mov	r0,#_x
      0023F9 06               [12] 1135 	inc	@r0
      0023FA B6 00 02         [24] 1136 	cjne	@r0,#0x00,00491$
      0023FD 08               [12] 1137 	inc	r0
      0023FE 06               [12] 1138 	inc	@r0
      0023FF                       1139 00491$:
      0023FF 78 24            [12] 1140 	mov	r0,#_x
      002401 C3               [12] 1141 	clr	c
      002402 E6               [12] 1142 	mov	a,@r0
      002403 94 30            [12] 1143 	subb	a,#0x30
      002405 08               [12] 1144 	inc	r0
      002406 E6               [12] 1145 	mov	a,@r0
      002407 64 80            [12] 1146 	xrl	a,#0x80
      002409 94 80            [12] 1147 	subb	a,#0x80
      00240B 40 C0            [24] 1148 	jc	00227$
                                   1149 ;	life.c:171: for (y = 0; y < (H * W); y += W)
      00240D 78 26            [12] 1150 	mov	r0,#_y
      00240F 74 30            [12] 1151 	mov	a,#0x30
      002411 26               [12] 1152 	add	a,@r0
      002412 F6               [12] 1153 	mov	@r0,a
      002413 E4               [12] 1154 	clr	a
      002414 08               [12] 1155 	inc	r0
      002415 36               [12] 1156 	addc	a,@r0
      002416 F6               [12] 1157 	mov	@r0,a
      002417 78 26            [12] 1158 	mov	r0,#_y
      002419 C3               [12] 1159 	clr	c
      00241A 08               [12] 1160 	inc	r0
      00241B E6               [12] 1161 	mov	a,@r0
      00241C 64 80            [12] 1162 	xrl	a,#0x80
      00241E 94 A4            [12] 1163 	subb	a,#0xa4
      002420 40 A5            [24] 1164 	jc	00229$
                                   1165 ;	life.c:175: printstr("\r\n");
      002422 90 31 7D         [24] 1166 	mov	dptr,#___str_4
      002425 75 F0 80         [24] 1167 	mov	b,#0x80
      002428 12 2B 93         [24] 1168 	lcall	_printstr
                                   1169 ;	life.c:259: else if (c == (int)'R') loadriu();
      00242B                       1170 00105$:
                                   1171 ;	life.c:123: memcpy(u, iu, sizeof (iu));
      00242B E4               [12] 1172 	clr	a
      00242C C0 E0            [24] 1173 	push	acc
      00242E 74 24            [12] 1174 	mov	a,#0x24
      002430 C0 E0            [24] 1175 	push	acc
      002432 74 00            [12] 1176 	mov	a,#_iu
      002434 C0 E0            [24] 1177 	push	acc
      002436 74 40            [12] 1178 	mov	a,#(_iu >> 8)
      002438 C0 E0            [24] 1179 	push	acc
      00243A E4               [12] 1180 	clr	a
      00243B C0 E0            [24] 1181 	push	acc
      00243D 90 88 00         [24] 1182 	mov	dptr,#_u
      002440 75 F0 00         [24] 1183 	mov	b,#0x00
      002443 12 2F 16         [24] 1184 	lcall	___memcpy
      002446 E5 81            [12] 1185 	mov	a,sp
      002448 24 FB            [12] 1186 	add	a,#0xfb
      00244A F5 81            [12] 1187 	mov	sp,a
                                   1188 ;	life.c:124: memset(pu, 0, sizeof (pu));
      00244C E4               [12] 1189 	clr	a
      00244D C0 E0            [24] 1190 	push	acc
      00244F 74 24            [12] 1191 	mov	a,#0x24
      002451 C0 E0            [24] 1192 	push	acc
      002453 E4               [12] 1193 	clr	a
      002454 C0 E0            [24] 1194 	push	acc
      002456 90 64 00         [24] 1195 	mov	dptr,#_pu
      002459 75 F0 00         [24] 1196 	mov	b,#0x00
      00245C 12 2F A9         [24] 1197 	lcall	_memset
      00245F 15 81            [12] 1198 	dec	sp
      002461 15 81            [12] 1199 	dec	sp
      002463 15 81            [12] 1200 	dec	sp
                                   1201 ;	life.c:51: gen = 0ul;
      002465 78 2B            [12] 1202 	mov	r0,#_gen
      002467 E4               [12] 1203 	clr	a
      002468 F6               [12] 1204 	mov	@r0,a
      002469 08               [12] 1205 	inc	r0
      00246A F6               [12] 1206 	mov	@r0,a
      00246B 08               [12] 1207 	inc	r0
      00246C F6               [12] 1208 	mov	@r0,a
      00246D 08               [12] 1209 	inc	r0
      00246E F6               [12] 1210 	mov	@r0,a
                                   1211 ;	life.c:52: genc2 = 0ul;
      00246F 78 2F            [12] 1212 	mov	r0,#_genc2
      002471 F6               [12] 1213 	mov	@r0,a
      002472 08               [12] 1214 	inc	r0
      002473 F6               [12] 1215 	mov	@r0,a
      002474 08               [12] 1216 	inc	r0
      002475 F6               [12] 1217 	mov	@r0,a
      002476 08               [12] 1218 	inc	r0
      002477 F6               [12] 1219 	mov	@r0,a
                                   1220 ;	life.c:53: genfx = 0ul;
      002478 78 33            [12] 1221 	mov	r0,#_genfx
      00247A F6               [12] 1222 	mov	@r0,a
      00247B 08               [12] 1223 	inc	r0
      00247C F6               [12] 1224 	mov	@r0,a
      00247D 08               [12] 1225 	inc	r0
      00247E F6               [12] 1226 	mov	@r0,a
      00247F 08               [12] 1227 	inc	r0
      002480 F6               [12] 1228 	mov	@r0,a
                                   1229 ;	life.c:54: c2set = 0;
      002481 78 37            [12] 1230 	mov	r0,#_c2set
      002483 76 00            [12] 1231 	mov	@r0,#0x00
                                   1232 ;	life.c:55: fxset = 0;
      002485 78 38            [12] 1233 	mov	r0,#_fxset
      002487 76 00            [12] 1234 	mov	@r0,#0x00
                                   1235 ;	life.c:261: showu(PRUNI, u);
      002489 74 00            [12] 1236 	mov	a,#_u
      00248B C0 E0            [24] 1237 	push	acc
      00248D 74 88            [12] 1238 	mov	a,#(_u >> 8)
      00248F C0 E0            [24] 1239 	push	acc
      002491 E4               [12] 1240 	clr	a
      002492 C0 E0            [24] 1241 	push	acc
      002494 75 82 04         [24] 1242 	mov	dpl,#0x04
      002497 12 20 95         [24] 1243 	lcall	_showu
      00249A 15 81            [12] 1244 	dec	sp
      00249C 15 81            [12] 1245 	dec	sp
      00249E 15 81            [12] 1246 	dec	sp
      0024A0 02 22 28         [24] 1247 	ljmp	00127$
      0024A3                       1248 00118$:
                                   1249 ;	life.c:262: } else if (c == (int)'O') showu(PRUNI, iu);
      0024A3 BE 4F 1D         [24] 1250 	cjne	r6,#0x4f,00115$
      0024A6 BF 00 1A         [24] 1251 	cjne	r7,#0x00,00115$
      0024A9 74 00            [12] 1252 	mov	a,#_iu
      0024AB C0 E0            [24] 1253 	push	acc
      0024AD 74 40            [12] 1254 	mov	a,#(_iu >> 8)
      0024AF C0 E0            [24] 1255 	push	acc
      0024B1 E4               [12] 1256 	clr	a
      0024B2 C0 E0            [24] 1257 	push	acc
      0024B4 75 82 04         [24] 1258 	mov	dpl,#0x04
      0024B7 12 20 95         [24] 1259 	lcall	_showu
      0024BA 15 81            [12] 1260 	dec	sp
      0024BC 15 81            [12] 1261 	dec	sp
      0024BE 15 81            [12] 1262 	dec	sp
      0024C0 02 22 28         [24] 1263 	ljmp	00127$
      0024C3                       1264 00115$:
                                   1265 ;	life.c:263: else if (c == (int)'P') showu(PRHDR | PRUNI, u);
      0024C3 BE 50 1D         [24] 1266 	cjne	r6,#0x50,00112$
      0024C6 BF 00 1A         [24] 1267 	cjne	r7,#0x00,00112$
      0024C9 74 00            [12] 1268 	mov	a,#_u
      0024CB C0 E0            [24] 1269 	push	acc
      0024CD 74 88            [12] 1270 	mov	a,#(_u >> 8)
      0024CF C0 E0            [24] 1271 	push	acc
      0024D1 E4               [12] 1272 	clr	a
      0024D2 C0 E0            [24] 1273 	push	acc
      0024D4 75 82 06         [24] 1274 	mov	dpl,#0x06
      0024D7 12 20 95         [24] 1275 	lcall	_showu
      0024DA 15 81            [12] 1276 	dec	sp
      0024DC 15 81            [12] 1277 	dec	sp
      0024DE 15 81            [12] 1278 	dec	sp
      0024E0 02 22 28         [24] 1279 	ljmp	00127$
      0024E3                       1280 00112$:
                                   1281 ;	life.c:264: else if (c == (int)'U') pruni = !pruni;
      0024E3 BE 55 13         [24] 1282 	cjne	r6,#0x55,00109$
      0024E6 BF 00 10         [24] 1283 	cjne	r7,#0x00,00109$
      0024E9 78 39            [12] 1284 	mov	r0,#_pruni
      0024EB E6               [12] 1285 	mov	a,@r0
      0024EC B4 01 00         [24] 1286 	cjne	a,#0x01,00500$
      0024EF                       1287 00500$:
      0024EF 92 00            [24] 1288 	mov	b0,c
      0024F1 78 39            [12] 1289 	mov	r0,#_pruni
      0024F3 E4               [12] 1290 	clr	a
      0024F4 33               [12] 1291 	rlc	a
      0024F5 F6               [12] 1292 	mov	@r0,a
      0024F6 02 22 28         [24] 1293 	ljmp	00127$
      0024F9                       1294 00109$:
                                   1295 ;	life.c:265: else if (c == (int)'S') break;
      0024F9 BE 53 05         [24] 1296 	cjne	r6,#0x53,00501$
      0024FC BF 00 02         [24] 1297 	cjne	r7,#0x00,00501$
      0024FF 80 03            [24] 1298 	sjmp	00502$
      002501                       1299 00501$:
      002501 02 22 28         [24] 1300 	ljmp	00127$
      002504                       1301 00502$:
                                   1302 ;	life.c:268: for (i1 = 0; !i0 && !i1; ) {
      002504 78 22            [12] 1303 	mov	r0,#_i1
      002506 76 00            [12] 1304 	mov	@r0,#0x00
      002508                       1305 00237$:
      002508 78 21            [12] 1306 	mov	r0,#_i0
      00250A E6               [12] 1307 	mov	a,@r0
      00250B 60 03            [24] 1308 	jz	00503$
      00250D 02 2A 44         [24] 1309 	ljmp	00150$
      002510                       1310 00503$:
      002510 78 22            [12] 1311 	mov	r0,#_i1
      002512 E6               [12] 1312 	mov	a,@r0
      002513 60 03            [24] 1313 	jz	00504$
      002515 02 2A 44         [24] 1314 	ljmp	00150$
      002518                       1315 00504$:
                                   1316 ;	life.c:269: if (fxu()) {
      002518 78 38            [12] 1317 	mov	r0,#_fxset
      00251A E6               [12] 1318 	mov	a,@r0
      00251B 60 23            [24] 1319 	jz	00130$
                                   1320 ;	life.c:270: printstr("FIXED AT ");
      00251D 90 31 CC         [24] 1321 	mov	dptr,#___str_13
      002520 75 F0 80         [24] 1322 	mov	b,#0x80
      002523 12 2B 93         [24] 1323 	lcall	_printstr
                                   1324 ;	life.c:271: showu(PRHDR, u);
      002526 74 00            [12] 1325 	mov	a,#_u
      002528 C0 E0            [24] 1326 	push	acc
      00252A 74 88            [12] 1327 	mov	a,#(_u >> 8)
      00252C C0 E0            [24] 1328 	push	acc
      00252E E4               [12] 1329 	clr	a
      00252F C0 E0            [24] 1330 	push	acc
      002531 75 82 02         [24] 1331 	mov	dpl,#0x02
      002534 12 20 95         [24] 1332 	lcall	_showu
      002537 15 81            [12] 1333 	dec	sp
      002539 15 81            [12] 1334 	dec	sp
      00253B 15 81            [12] 1335 	dec	sp
                                   1336 ;	life.c:272: break;
      00253D 02 2A 44         [24] 1337 	ljmp	00150$
      002540                       1338 00130$:
                                   1339 ;	life.c:274: if (pruni) showu(PRCLR | PRHDR | PRUNI, u);
      002540 78 39            [12] 1340 	mov	r0,#_pruni
      002542 E6               [12] 1341 	mov	a,@r0
      002543 60 19            [24] 1342 	jz	00132$
      002545 74 00            [12] 1343 	mov	a,#_u
      002547 C0 E0            [24] 1344 	push	acc
      002549 74 88            [12] 1345 	mov	a,#(_u >> 8)
      00254B C0 E0            [24] 1346 	push	acc
      00254D E4               [12] 1347 	clr	a
      00254E C0 E0            [24] 1348 	push	acc
      002550 75 82 07         [24] 1349 	mov	dpl,#0x07
      002553 12 20 95         [24] 1350 	lcall	_showu
      002556 15 81            [12] 1351 	dec	sp
      002558 15 81            [12] 1352 	dec	sp
      00255A 15 81            [12] 1353 	dec	sp
      00255C 80 17            [24] 1354 	sjmp	00133$
      00255E                       1355 00132$:
                                   1356 ;	life.c:275: else showu(PRHDR, u);
      00255E 74 00            [12] 1357 	mov	a,#_u
      002560 C0 E0            [24] 1358 	push	acc
      002562 74 88            [12] 1359 	mov	a,#(_u >> 8)
      002564 C0 E0            [24] 1360 	push	acc
      002566 E4               [12] 1361 	clr	a
      002567 C0 E0            [24] 1362 	push	acc
      002569 75 82 02         [24] 1363 	mov	dpl,#0x02
      00256C 12 20 95         [24] 1364 	lcall	_showu
      00256F 15 81            [12] 1365 	dec	sp
      002571 15 81            [12] 1366 	dec	sp
      002573 15 81            [12] 1367 	dec	sp
      002575                       1368 00133$:
                                   1369 ;	life.c:61: gen++;
      002575 78 2B            [12] 1370 	mov	r0,#_gen
      002577 06               [12] 1371 	inc	@r0
      002578 B6 00 0C         [24] 1372 	cjne	@r0,#0x00,00507$
      00257B 08               [12] 1373 	inc	r0
      00257C 06               [12] 1374 	inc	@r0
      00257D B6 00 07         [24] 1375 	cjne	@r0,#0x00,00507$
      002580 08               [12] 1376 	inc	r0
      002581 06               [12] 1377 	inc	@r0
      002582 B6 00 02         [24] 1378 	cjne	@r0,#0x00,00507$
      002585 08               [12] 1379 	inc	r0
      002586 06               [12] 1380 	inc	@r0
      002587                       1381 00507$:
                                   1382 ;	life.c:181: fixed = 0;
      002587 78 29            [12] 1383 	mov	r0,#_fixed
      002589 76 00            [12] 1384 	mov	@r0,#0x00
                                   1385 ;	life.c:182: cycle2 = 0;
      00258B 78 2A            [12] 1386 	mov	r0,#_cycle2
      00258D 76 00            [12] 1387 	mov	@r0,#0x00
                                   1388 ;	life.c:184: OE76 = OE76_0;
      00258F 78 23            [12] 1389 	mov	r0,#_OE76
      002591 76 3F            [12] 1390 	mov	@r0,#0x3f
                                   1391 ;	life.c:185: flashOE();
      002593 12 20 8D         [24] 1392 	lcall	_flashOE
                                   1393 ;	life.c:187: for (y = 0; y < H; y++) {
      002596 78 26            [12] 1394 	mov	r0,#_y
      002598 E4               [12] 1395 	clr	a
      002599 F6               [12] 1396 	mov	@r0,a
      00259A 08               [12] 1397 	inc	r0
      00259B F6               [12] 1398 	mov	@r0,a
      00259C                       1399 00233$:
                                   1400 ;	life.c:188: OE76 = OE76_0 | ((y & 0x0003u) << 6);
      00259C 78 26            [12] 1401 	mov	r0,#_y
      00259E 86 07            [24] 1402 	mov	ar7,@r0
      0025A0 53 07 03         [24] 1403 	anl	ar7,#0x03
      0025A3 EF               [12] 1404 	mov	a,r7
      0025A4 03               [12] 1405 	rr	a
      0025A5 03               [12] 1406 	rr	a
      0025A6 54 C0            [12] 1407 	anl	a,#0xc0
      0025A8 FF               [12] 1408 	mov	r7,a
      0025A9 78 23            [12] 1409 	mov	r0,#_OE76
      0025AB 74 3F            [12] 1410 	mov	a,#0x3f
      0025AD 4F               [12] 1411 	orl	a,r7
      0025AE F6               [12] 1412 	mov	@r0,a
                                   1413 ;	life.c:189: flashOE();
      0025AF 12 20 8D         [24] 1414 	lcall	_flashOE
                                   1415 ;	life.c:190: for (x = 0; x < W; x++) {
      0025B2 78 24            [12] 1416 	mov	r0,#_x
      0025B4 E4               [12] 1417 	clr	a
      0025B5 F6               [12] 1418 	mov	@r0,a
      0025B6 08               [12] 1419 	inc	r0
      0025B7 F6               [12] 1420 	mov	@r0,a
      0025B8                       1421 00231$:
                                   1422 ;	life.c:191: n = -u[A2D(W, y, x)];
      0025B8 78 26            [12] 1423 	mov	r0,#_y
      0025BA E6               [12] 1424 	mov	a,@r0
      0025BB C0 E0            [24] 1425 	push	acc
      0025BD 08               [12] 1426 	inc	r0
      0025BE E6               [12] 1427 	mov	a,@r0
      0025BF C0 E0            [24] 1428 	push	acc
      0025C1 90 00 30         [24] 1429 	mov	dptr,#0x0030
      0025C4 12 2E 78         [24] 1430 	lcall	__mulint
      0025C7 C8               [12] 1431 	xch	a,r0
      0025C8 E5 10            [12] 1432 	mov	a,_bp
      0025CA 24 04            [12] 1433 	add	a,#0x04
      0025CC C8               [12] 1434 	xch	a,r0
      0025CD A6 82            [24] 1435 	mov	@r0,dpl
      0025CF 08               [12] 1436 	inc	r0
      0025D0 A6 83            [24] 1437 	mov	@r0,dph
      0025D2 15 81            [12] 1438 	dec	sp
      0025D4 15 81            [12] 1439 	dec	sp
      0025D6 E5 10            [12] 1440 	mov	a,_bp
      0025D8 24 04            [12] 1441 	add	a,#0x04
      0025DA F8               [12] 1442 	mov	r0,a
      0025DB 79 24            [12] 1443 	mov	r1,#_x
      0025DD E7               [12] 1444 	mov	a,@r1
      0025DE 26               [12] 1445 	add	a,@r0
      0025DF C0 E0            [24] 1446 	push	acc
      0025E1 09               [12] 1447 	inc	r1
      0025E2 E7               [12] 1448 	mov	a,@r1
      0025E3 08               [12] 1449 	inc	r0
      0025E4 36               [12] 1450 	addc	a,@r0
      0025E5 C0 E0            [24] 1451 	push	acc
      0025E7 E5 10            [12] 1452 	mov	a,_bp
      0025E9 24 03            [12] 1453 	add	a,#0x03
      0025EB F8               [12] 1454 	mov	r0,a
      0025EC D0 E0            [24] 1455 	pop	acc
      0025EE F6               [12] 1456 	mov	@r0,a
      0025EF 18               [12] 1457 	dec	r0
      0025F0 D0 E0            [24] 1458 	pop	acc
      0025F2 F6               [12] 1459 	mov	@r0,a
      0025F3 A8 10            [24] 1460 	mov	r0,_bp
      0025F5 08               [12] 1461 	inc	r0
      0025F6 08               [12] 1462 	inc	r0
      0025F7 E6               [12] 1463 	mov	a,@r0
      0025F8 24 00            [12] 1464 	add	a,#_u
      0025FA F5 82            [12] 1465 	mov	dpl,a
      0025FC 08               [12] 1466 	inc	r0
      0025FD E6               [12] 1467 	mov	a,@r0
      0025FE 34 88            [12] 1468 	addc	a,#(_u >> 8)
      002600 F5 83            [12] 1469 	mov	dph,a
      002602 E0               [24] 1470 	movx	a,@dptr
      002603 FB               [12] 1471 	mov	r3,a
      002604 A8 10            [24] 1472 	mov	r0,_bp
      002606 08               [12] 1473 	inc	r0
      002607 C3               [12] 1474 	clr	c
      002608 E4               [12] 1475 	clr	a
      002609 9B               [12] 1476 	subb	a,r3
      00260A F6               [12] 1477 	mov	@r0,a
                                   1478 ;	life.c:196: UPDN(-1, -1);
      00260B 78 26            [12] 1479 	mov	r0,#_y
      00260D 74 BF            [12] 1480 	mov	a,#0xbf
      00260F 26               [12] 1481 	add	a,@r0
      002610 FA               [12] 1482 	mov	r2,a
      002611 E4               [12] 1483 	clr	a
      002612 08               [12] 1484 	inc	r0
      002613 36               [12] 1485 	addc	a,@r0
      002614 FB               [12] 1486 	mov	r3,a
      002615 74 C0            [12] 1487 	mov	a,#0xc0
      002617 C0 E0            [24] 1488 	push	acc
      002619 E4               [12] 1489 	clr	a
      00261A C0 E0            [24] 1490 	push	acc
      00261C 8A 82            [24] 1491 	mov	dpl,r2
      00261E 8B 83            [24] 1492 	mov	dph,r3
      002620 12 30 56         [24] 1493 	lcall	__modsint
      002623 AA 82            [24] 1494 	mov	r2,dpl
      002625 AB 83            [24] 1495 	mov	r3,dph
      002627 15 81            [12] 1496 	dec	sp
      002629 15 81            [12] 1497 	dec	sp
      00262B C0 02            [24] 1498 	push	ar2
      00262D C0 03            [24] 1499 	push	ar3
      00262F 90 00 30         [24] 1500 	mov	dptr,#0x0030
      002632 12 2E 78         [24] 1501 	lcall	__mulint
      002635 AA 82            [24] 1502 	mov	r2,dpl
      002637 AB 83            [24] 1503 	mov	r3,dph
      002639 15 81            [12] 1504 	dec	sp
      00263B 15 81            [12] 1505 	dec	sp
      00263D 78 24            [12] 1506 	mov	r0,#_x
      00263F 74 2F            [12] 1507 	mov	a,#0x2f
      002641 26               [12] 1508 	add	a,@r0
      002642 FC               [12] 1509 	mov	r4,a
      002643 E4               [12] 1510 	clr	a
      002644 08               [12] 1511 	inc	r0
      002645 36               [12] 1512 	addc	a,@r0
      002646 FD               [12] 1513 	mov	r5,a
      002647 C0 03            [24] 1514 	push	ar3
      002649 C0 02            [24] 1515 	push	ar2
      00264B 74 30            [12] 1516 	mov	a,#0x30
      00264D C0 E0            [24] 1517 	push	acc
      00264F E4               [12] 1518 	clr	a
      002650 C0 E0            [24] 1519 	push	acc
      002652 8C 82            [24] 1520 	mov	dpl,r4
      002654 8D 83            [24] 1521 	mov	dph,r5
      002656 12 30 56         [24] 1522 	lcall	__modsint
      002659 AC 82            [24] 1523 	mov	r4,dpl
      00265B AD 83            [24] 1524 	mov	r5,dph
      00265D 15 81            [12] 1525 	dec	sp
      00265F 15 81            [12] 1526 	dec	sp
      002661 D0 02            [24] 1527 	pop	ar2
      002663 D0 03            [24] 1528 	pop	ar3
      002665 EC               [12] 1529 	mov	a,r4
      002666 2A               [12] 1530 	add	a,r2
      002667 FE               [12] 1531 	mov	r6,a
      002668 ED               [12] 1532 	mov	a,r5
      002669 3B               [12] 1533 	addc	a,r3
      00266A FF               [12] 1534 	mov	r7,a
      00266B EE               [12] 1535 	mov	a,r6
      00266C 24 00            [12] 1536 	add	a,#_u
      00266E F5 82            [12] 1537 	mov	dpl,a
      002670 EF               [12] 1538 	mov	a,r7
      002671 34 88            [12] 1539 	addc	a,#(_u >> 8)
      002673 F5 83            [12] 1540 	mov	dph,a
      002675 E0               [24] 1541 	movx	a,@dptr
      002676 FF               [12] 1542 	mov	r7,a
      002677 A8 10            [24] 1543 	mov	r0,_bp
      002679 08               [12] 1544 	inc	r0
      00267A EF               [12] 1545 	mov	a,r7
      00267B 26               [12] 1546 	add	a,@r0
      00267C F6               [12] 1547 	mov	@r0,a
                                   1548 ;	life.c:197: UPDN(-1, 0);
      00267D 78 24            [12] 1549 	mov	r0,#_x
      00267F 74 30            [12] 1550 	mov	a,#0x30
      002681 26               [12] 1551 	add	a,@r0
      002682 FE               [12] 1552 	mov	r6,a
      002683 E4               [12] 1553 	clr	a
      002684 08               [12] 1554 	inc	r0
      002685 36               [12] 1555 	addc	a,@r0
      002686 FF               [12] 1556 	mov	r7,a
      002687 C0 05            [24] 1557 	push	ar5
      002689 C0 04            [24] 1558 	push	ar4
      00268B C0 03            [24] 1559 	push	ar3
      00268D C0 02            [24] 1560 	push	ar2
      00268F 74 30            [12] 1561 	mov	a,#0x30
      002691 C0 E0            [24] 1562 	push	acc
      002693 E4               [12] 1563 	clr	a
      002694 C0 E0            [24] 1564 	push	acc
      002696 8E 82            [24] 1565 	mov	dpl,r6
      002698 8F 83            [24] 1566 	mov	dph,r7
      00269A 12 30 56         [24] 1567 	lcall	__modsint
      00269D C8               [12] 1568 	xch	a,r0
      00269E E5 10            [12] 1569 	mov	a,_bp
      0026A0 24 06            [12] 1570 	add	a,#0x06
      0026A2 C8               [12] 1571 	xch	a,r0
      0026A3 A6 82            [24] 1572 	mov	@r0,dpl
      0026A5 08               [12] 1573 	inc	r0
      0026A6 A6 83            [24] 1574 	mov	@r0,dph
      0026A8 15 81            [12] 1575 	dec	sp
      0026AA 15 81            [12] 1576 	dec	sp
      0026AC D0 02            [24] 1577 	pop	ar2
      0026AE D0 03            [24] 1578 	pop	ar3
      0026B0 E5 10            [12] 1579 	mov	a,_bp
      0026B2 24 06            [12] 1580 	add	a,#0x06
      0026B4 F8               [12] 1581 	mov	r0,a
      0026B5 E6               [12] 1582 	mov	a,@r0
      0026B6 2A               [12] 1583 	add	a,r2
      0026B7 FE               [12] 1584 	mov	r6,a
      0026B8 08               [12] 1585 	inc	r0
      0026B9 E6               [12] 1586 	mov	a,@r0
      0026BA 3B               [12] 1587 	addc	a,r3
      0026BB FF               [12] 1588 	mov	r7,a
      0026BC EE               [12] 1589 	mov	a,r6
      0026BD 24 00            [12] 1590 	add	a,#_u
      0026BF F5 82            [12] 1591 	mov	dpl,a
      0026C1 EF               [12] 1592 	mov	a,r7
      0026C2 34 88            [12] 1593 	addc	a,#(_u >> 8)
      0026C4 F5 83            [12] 1594 	mov	dph,a
      0026C6 E0               [24] 1595 	movx	a,@dptr
      0026C7 FF               [12] 1596 	mov	r7,a
      0026C8 A8 10            [24] 1597 	mov	r0,_bp
      0026CA 08               [12] 1598 	inc	r0
      0026CB EF               [12] 1599 	mov	a,r7
      0026CC 26               [12] 1600 	add	a,@r0
      0026CD F6               [12] 1601 	mov	@r0,a
                                   1602 ;	life.c:198: UPDN(-1, 1);
      0026CE 78 24            [12] 1603 	mov	r0,#_x
      0026D0 74 31            [12] 1604 	mov	a,#0x31
      0026D2 26               [12] 1605 	add	a,@r0
      0026D3 FE               [12] 1606 	mov	r6,a
      0026D4 E4               [12] 1607 	clr	a
      0026D5 08               [12] 1608 	inc	r0
      0026D6 36               [12] 1609 	addc	a,@r0
      0026D7 FF               [12] 1610 	mov	r7,a
      0026D8 C0 03            [24] 1611 	push	ar3
      0026DA C0 02            [24] 1612 	push	ar2
      0026DC 74 30            [12] 1613 	mov	a,#0x30
      0026DE C0 E0            [24] 1614 	push	acc
      0026E0 E4               [12] 1615 	clr	a
      0026E1 C0 E0            [24] 1616 	push	acc
      0026E3 8E 82            [24] 1617 	mov	dpl,r6
      0026E5 8F 83            [24] 1618 	mov	dph,r7
      0026E7 12 30 56         [24] 1619 	lcall	__modsint
      0026EA AE 82            [24] 1620 	mov	r6,dpl
      0026EC AF 83            [24] 1621 	mov	r7,dph
      0026EE 15 81            [12] 1622 	dec	sp
      0026F0 15 81            [12] 1623 	dec	sp
      0026F2 D0 02            [24] 1624 	pop	ar2
      0026F4 D0 03            [24] 1625 	pop	ar3
      0026F6 D0 04            [24] 1626 	pop	ar4
      0026F8 D0 05            [24] 1627 	pop	ar5
      0026FA EE               [12] 1628 	mov	a,r6
      0026FB 2A               [12] 1629 	add	a,r2
      0026FC FA               [12] 1630 	mov	r2,a
      0026FD EF               [12] 1631 	mov	a,r7
      0026FE 3B               [12] 1632 	addc	a,r3
      0026FF FB               [12] 1633 	mov	r3,a
      002700 EA               [12] 1634 	mov	a,r2
      002701 24 00            [12] 1635 	add	a,#_u
      002703 F5 82            [12] 1636 	mov	dpl,a
      002705 EB               [12] 1637 	mov	a,r3
      002706 34 88            [12] 1638 	addc	a,#(_u >> 8)
      002708 F5 83            [12] 1639 	mov	dph,a
      00270A E0               [24] 1640 	movx	a,@dptr
      00270B FB               [12] 1641 	mov	r3,a
      00270C A8 10            [24] 1642 	mov	r0,_bp
      00270E 08               [12] 1643 	inc	r0
      00270F EB               [12] 1644 	mov	a,r3
      002710 26               [12] 1645 	add	a,@r0
      002711 F6               [12] 1646 	mov	@r0,a
                                   1647 ;	life.c:199: UPDN(0, -1);
      002712 78 26            [12] 1648 	mov	r0,#_y
      002714 74 C0            [12] 1649 	mov	a,#0xc0
      002716 26               [12] 1650 	add	a,@r0
      002717 FA               [12] 1651 	mov	r2,a
      002718 E4               [12] 1652 	clr	a
      002719 08               [12] 1653 	inc	r0
      00271A 36               [12] 1654 	addc	a,@r0
      00271B FB               [12] 1655 	mov	r3,a
      00271C C0 07            [24] 1656 	push	ar7
      00271E C0 06            [24] 1657 	push	ar6
      002720 C0 05            [24] 1658 	push	ar5
      002722 C0 04            [24] 1659 	push	ar4
      002724 74 C0            [12] 1660 	mov	a,#0xc0
      002726 C0 E0            [24] 1661 	push	acc
      002728 E4               [12] 1662 	clr	a
      002729 C0 E0            [24] 1663 	push	acc
      00272B 8A 82            [24] 1664 	mov	dpl,r2
      00272D 8B 83            [24] 1665 	mov	dph,r3
      00272F 12 30 56         [24] 1666 	lcall	__modsint
      002732 AA 82            [24] 1667 	mov	r2,dpl
      002734 AB 83            [24] 1668 	mov	r3,dph
      002736 15 81            [12] 1669 	dec	sp
      002738 15 81            [12] 1670 	dec	sp
      00273A C0 02            [24] 1671 	push	ar2
      00273C C0 03            [24] 1672 	push	ar3
      00273E 90 00 30         [24] 1673 	mov	dptr,#0x0030
      002741 12 2E 78         [24] 1674 	lcall	__mulint
      002744 C8               [12] 1675 	xch	a,r0
      002745 E5 10            [12] 1676 	mov	a,_bp
      002747 24 08            [12] 1677 	add	a,#0x08
      002749 C8               [12] 1678 	xch	a,r0
      00274A A6 82            [24] 1679 	mov	@r0,dpl
      00274C 08               [12] 1680 	inc	r0
      00274D A6 83            [24] 1681 	mov	@r0,dph
      00274F 15 81            [12] 1682 	dec	sp
      002751 15 81            [12] 1683 	dec	sp
      002753 D0 04            [24] 1684 	pop	ar4
      002755 D0 05            [24] 1685 	pop	ar5
      002757 D0 06            [24] 1686 	pop	ar6
      002759 D0 07            [24] 1687 	pop	ar7
      00275B E5 10            [12] 1688 	mov	a,_bp
      00275D 24 08            [12] 1689 	add	a,#0x08
      00275F F8               [12] 1690 	mov	r0,a
      002760 EC               [12] 1691 	mov	a,r4
      002761 26               [12] 1692 	add	a,@r0
      002762 FA               [12] 1693 	mov	r2,a
      002763 ED               [12] 1694 	mov	a,r5
      002764 08               [12] 1695 	inc	r0
      002765 36               [12] 1696 	addc	a,@r0
      002766 FB               [12] 1697 	mov	r3,a
      002767 EA               [12] 1698 	mov	a,r2
      002768 24 00            [12] 1699 	add	a,#_u
      00276A F5 82            [12] 1700 	mov	dpl,a
      00276C EB               [12] 1701 	mov	a,r3
      00276D 34 88            [12] 1702 	addc	a,#(_u >> 8)
      00276F F5 83            [12] 1703 	mov	dph,a
      002771 E0               [24] 1704 	movx	a,@dptr
      002772 FB               [12] 1705 	mov	r3,a
      002773 A8 10            [24] 1706 	mov	r0,_bp
      002775 08               [12] 1707 	inc	r0
      002776 EB               [12] 1708 	mov	a,r3
      002777 26               [12] 1709 	add	a,@r0
      002778 F6               [12] 1710 	mov	@r0,a
                                   1711 ;	life.c:200: UPDN(0, 0);
      002779 E5 10            [12] 1712 	mov	a,_bp
      00277B 24 08            [12] 1713 	add	a,#0x08
      00277D F8               [12] 1714 	mov	r0,a
      00277E E5 10            [12] 1715 	mov	a,_bp
      002780 24 06            [12] 1716 	add	a,#0x06
      002782 F9               [12] 1717 	mov	r1,a
      002783 E7               [12] 1718 	mov	a,@r1
      002784 26               [12] 1719 	add	a,@r0
      002785 FA               [12] 1720 	mov	r2,a
      002786 09               [12] 1721 	inc	r1
      002787 E7               [12] 1722 	mov	a,@r1
      002788 08               [12] 1723 	inc	r0
      002789 36               [12] 1724 	addc	a,@r0
      00278A FB               [12] 1725 	mov	r3,a
      00278B EA               [12] 1726 	mov	a,r2
      00278C 24 00            [12] 1727 	add	a,#_u
      00278E F5 82            [12] 1728 	mov	dpl,a
      002790 EB               [12] 1729 	mov	a,r3
      002791 34 88            [12] 1730 	addc	a,#(_u >> 8)
      002793 F5 83            [12] 1731 	mov	dph,a
      002795 E0               [24] 1732 	movx	a,@dptr
      002796 FB               [12] 1733 	mov	r3,a
      002797 A8 10            [24] 1734 	mov	r0,_bp
      002799 08               [12] 1735 	inc	r0
      00279A EB               [12] 1736 	mov	a,r3
      00279B 26               [12] 1737 	add	a,@r0
      00279C F6               [12] 1738 	mov	@r0,a
                                   1739 ;	life.c:201: UPDN(0, 1);
      00279D E5 10            [12] 1740 	mov	a,_bp
      00279F 24 08            [12] 1741 	add	a,#0x08
      0027A1 F8               [12] 1742 	mov	r0,a
      0027A2 EE               [12] 1743 	mov	a,r6
      0027A3 26               [12] 1744 	add	a,@r0
      0027A4 FA               [12] 1745 	mov	r2,a
      0027A5 EF               [12] 1746 	mov	a,r7
      0027A6 08               [12] 1747 	inc	r0
      0027A7 36               [12] 1748 	addc	a,@r0
      0027A8 FB               [12] 1749 	mov	r3,a
      0027A9 EA               [12] 1750 	mov	a,r2
      0027AA 24 00            [12] 1751 	add	a,#_u
      0027AC F5 82            [12] 1752 	mov	dpl,a
      0027AE EB               [12] 1753 	mov	a,r3
      0027AF 34 88            [12] 1754 	addc	a,#(_u >> 8)
      0027B1 F5 83            [12] 1755 	mov	dph,a
      0027B3 E0               [24] 1756 	movx	a,@dptr
      0027B4 FB               [12] 1757 	mov	r3,a
      0027B5 A8 10            [24] 1758 	mov	r0,_bp
      0027B7 08               [12] 1759 	inc	r0
      0027B8 E5 10            [12] 1760 	mov	a,_bp
      0027BA 24 08            [12] 1761 	add	a,#0x08
      0027BC F9               [12] 1762 	mov	r1,a
      0027BD EB               [12] 1763 	mov	a,r3
      0027BE 26               [12] 1764 	add	a,@r0
      0027BF F7               [12] 1765 	mov	@r1,a
                                   1766 ;	life.c:202: UPDN(1, -1);
      0027C0 78 26            [12] 1767 	mov	r0,#_y
      0027C2 74 C1            [12] 1768 	mov	a,#0xc1
      0027C4 26               [12] 1769 	add	a,@r0
      0027C5 FA               [12] 1770 	mov	r2,a
      0027C6 E4               [12] 1771 	clr	a
      0027C7 08               [12] 1772 	inc	r0
      0027C8 36               [12] 1773 	addc	a,@r0
      0027C9 FB               [12] 1774 	mov	r3,a
      0027CA C0 07            [24] 1775 	push	ar7
      0027CC C0 06            [24] 1776 	push	ar6
      0027CE C0 05            [24] 1777 	push	ar5
      0027D0 C0 04            [24] 1778 	push	ar4
      0027D2 74 C0            [12] 1779 	mov	a,#0xc0
      0027D4 C0 E0            [24] 1780 	push	acc
      0027D6 E4               [12] 1781 	clr	a
      0027D7 C0 E0            [24] 1782 	push	acc
      0027D9 8A 82            [24] 1783 	mov	dpl,r2
      0027DB 8B 83            [24] 1784 	mov	dph,r3
      0027DD 12 30 56         [24] 1785 	lcall	__modsint
      0027E0 AA 82            [24] 1786 	mov	r2,dpl
      0027E2 AB 83            [24] 1787 	mov	r3,dph
      0027E4 15 81            [12] 1788 	dec	sp
      0027E6 15 81            [12] 1789 	dec	sp
      0027E8 C0 02            [24] 1790 	push	ar2
      0027EA C0 03            [24] 1791 	push	ar3
      0027EC 90 00 30         [24] 1792 	mov	dptr,#0x0030
      0027EF 12 2E 78         [24] 1793 	lcall	__mulint
      0027F2 AA 82            [24] 1794 	mov	r2,dpl
      0027F4 AB 83            [24] 1795 	mov	r3,dph
      0027F6 15 81            [12] 1796 	dec	sp
      0027F8 15 81            [12] 1797 	dec	sp
      0027FA D0 04            [24] 1798 	pop	ar4
      0027FC D0 05            [24] 1799 	pop	ar5
      0027FE D0 06            [24] 1800 	pop	ar6
      002800 D0 07            [24] 1801 	pop	ar7
      002802 EC               [12] 1802 	mov	a,r4
      002803 2A               [12] 1803 	add	a,r2
      002804 FC               [12] 1804 	mov	r4,a
      002805 ED               [12] 1805 	mov	a,r5
      002806 3B               [12] 1806 	addc	a,r3
      002807 FD               [12] 1807 	mov	r5,a
      002808 EC               [12] 1808 	mov	a,r4
      002809 24 00            [12] 1809 	add	a,#_u
      00280B F5 82            [12] 1810 	mov	dpl,a
      00280D ED               [12] 1811 	mov	a,r5
      00280E 34 88            [12] 1812 	addc	a,#(_u >> 8)
      002810 F5 83            [12] 1813 	mov	dph,a
      002812 E0               [24] 1814 	movx	a,@dptr
      002813 FD               [12] 1815 	mov	r5,a
      002814 E5 10            [12] 1816 	mov	a,_bp
      002816 24 08            [12] 1817 	add	a,#0x08
      002818 F8               [12] 1818 	mov	r0,a
      002819 E5 10            [12] 1819 	mov	a,_bp
      00281B 24 08            [12] 1820 	add	a,#0x08
      00281D F9               [12] 1821 	mov	r1,a
      00281E ED               [12] 1822 	mov	a,r5
      00281F 26               [12] 1823 	add	a,@r0
      002820 F7               [12] 1824 	mov	@r1,a
                                   1825 ;	life.c:203: UPDN(1, 0);
      002821 E5 10            [12] 1826 	mov	a,_bp
      002823 24 06            [12] 1827 	add	a,#0x06
      002825 F8               [12] 1828 	mov	r0,a
      002826 E6               [12] 1829 	mov	a,@r0
      002827 2A               [12] 1830 	add	a,r2
      002828 FC               [12] 1831 	mov	r4,a
      002829 08               [12] 1832 	inc	r0
      00282A E6               [12] 1833 	mov	a,@r0
      00282B 3B               [12] 1834 	addc	a,r3
      00282C FD               [12] 1835 	mov	r5,a
      00282D EC               [12] 1836 	mov	a,r4
      00282E 24 00            [12] 1837 	add	a,#_u
      002830 F5 82            [12] 1838 	mov	dpl,a
      002832 ED               [12] 1839 	mov	a,r5
      002833 34 88            [12] 1840 	addc	a,#(_u >> 8)
      002835 F5 83            [12] 1841 	mov	dph,a
      002837 E0               [24] 1842 	movx	a,@dptr
      002838 FD               [12] 1843 	mov	r5,a
      002839 E5 10            [12] 1844 	mov	a,_bp
      00283B 24 08            [12] 1845 	add	a,#0x08
      00283D F8               [12] 1846 	mov	r0,a
      00283E ED               [12] 1847 	mov	a,r5
      00283F 26               [12] 1848 	add	a,@r0
      002840 FD               [12] 1849 	mov	r5,a
                                   1850 ;	life.c:204: UPDN(1, 1);
      002841 EE               [12] 1851 	mov	a,r6
      002842 2A               [12] 1852 	add	a,r2
      002843 FE               [12] 1853 	mov	r6,a
      002844 EF               [12] 1854 	mov	a,r7
      002845 3B               [12] 1855 	addc	a,r3
      002846 FF               [12] 1856 	mov	r7,a
      002847 EE               [12] 1857 	mov	a,r6
      002848 24 00            [12] 1858 	add	a,#_u
      00284A F5 82            [12] 1859 	mov	dpl,a
      00284C EF               [12] 1860 	mov	a,r7
      00284D 34 88            [12] 1861 	addc	a,#(_u >> 8)
      00284F F5 83            [12] 1862 	mov	dph,a
      002851 E0               [24] 1863 	movx	a,@dptr
      002852 2D               [12] 1864 	add	a,r5
      002853 FF               [12] 1865 	mov	r7,a
      002854 78 28            [12] 1866 	mov	r0,#_n
      002856 A6 07            [24] 1867 	mov	@r0,ar7
                                   1868 ;	life.c:207: nu[A2D(W, y, x)] = (n == 3) || ((n == 2) && u[A2D(W, y, x)]);
      002858 A8 10            [24] 1869 	mov	r0,_bp
      00285A 08               [12] 1870 	inc	r0
      00285B 08               [12] 1871 	inc	r0
      00285C E6               [12] 1872 	mov	a,@r0
      00285D 24 00            [12] 1873 	add	a,#_nu
      00285F FD               [12] 1874 	mov	r5,a
      002860 08               [12] 1875 	inc	r0
      002861 E6               [12] 1876 	mov	a,@r0
      002862 34 AC            [12] 1877 	addc	a,#(_nu >> 8)
      002864 FE               [12] 1878 	mov	r6,a
      002865 BF 03 02         [24] 1879 	cjne	r7,#0x03,00508$
      002868 80 25            [24] 1880 	sjmp	00246$
      00286A                       1881 00508$:
      00286A BF 02 1E         [24] 1882 	cjne	r7,#0x02,00245$
      00286D E5 10            [12] 1883 	mov	a,_bp
      00286F 24 04            [12] 1884 	add	a,#0x04
      002871 F8               [12] 1885 	mov	r0,a
      002872 79 24            [12] 1886 	mov	r1,#_x
      002874 E7               [12] 1887 	mov	a,@r1
      002875 26               [12] 1888 	add	a,@r0
      002876 FC               [12] 1889 	mov	r4,a
      002877 09               [12] 1890 	inc	r1
      002878 E7               [12] 1891 	mov	a,@r1
      002879 08               [12] 1892 	inc	r0
      00287A 36               [12] 1893 	addc	a,@r0
      00287B FF               [12] 1894 	mov	r7,a
      00287C EC               [12] 1895 	mov	a,r4
      00287D 24 00            [12] 1896 	add	a,#_u
      00287F FC               [12] 1897 	mov	r4,a
      002880 EF               [12] 1898 	mov	a,r7
      002881 34 88            [12] 1899 	addc	a,#(_u >> 8)
      002883 FF               [12] 1900 	mov	r7,a
      002884 8C 82            [24] 1901 	mov	dpl,r4
      002886 8F 83            [24] 1902 	mov	dph,r7
      002888 E0               [24] 1903 	movx	a,@dptr
      002889 70 04            [24] 1904 	jnz	00246$
      00288B                       1905 00245$:
                                   1906 ;	assignBit
      00288B C2 00            [12] 1907 	clr	b0
      00288D 80 02            [24] 1908 	sjmp	00247$
      00288F                       1909 00246$:
                                   1910 ;	assignBit
      00288F D2 00            [12] 1911 	setb	b0
      002891                       1912 00247$:
      002891 A2 00            [12] 1913 	mov	c,b0
      002893 E4               [12] 1914 	clr	a
      002894 33               [12] 1915 	rlc	a
      002895 8D 82            [24] 1916 	mov	dpl,r5
      002897 8E 83            [24] 1917 	mov	dph,r6
      002899 F0               [24] 1918 	movx	@dptr,a
                                   1919 ;	life.c:208: cycle2 |= pu[A2D(W, y, x)] ^ nu[A2D(W, y, x)];
      00289A 78 26            [12] 1920 	mov	r0,#_y
      00289C E6               [12] 1921 	mov	a,@r0
      00289D C0 E0            [24] 1922 	push	acc
      00289F 08               [12] 1923 	inc	r0
      0028A0 E6               [12] 1924 	mov	a,@r0
      0028A1 C0 E0            [24] 1925 	push	acc
      0028A3 90 00 30         [24] 1926 	mov	dptr,#0x0030
      0028A6 12 2E 78         [24] 1927 	lcall	__mulint
      0028A9 AE 82            [24] 1928 	mov	r6,dpl
      0028AB AF 83            [24] 1929 	mov	r7,dph
      0028AD 15 81            [12] 1930 	dec	sp
      0028AF 15 81            [12] 1931 	dec	sp
      0028B1 78 24            [12] 1932 	mov	r0,#_x
      0028B3 E6               [12] 1933 	mov	a,@r0
      0028B4 2E               [12] 1934 	add	a,r6
      0028B5 FE               [12] 1935 	mov	r6,a
      0028B6 08               [12] 1936 	inc	r0
      0028B7 E6               [12] 1937 	mov	a,@r0
      0028B8 3F               [12] 1938 	addc	a,r7
      0028B9 FF               [12] 1939 	mov	r7,a
      0028BA EE               [12] 1940 	mov	a,r6
      0028BB 24 00            [12] 1941 	add	a,#_pu
      0028BD F5 82            [12] 1942 	mov	dpl,a
      0028BF EF               [12] 1943 	mov	a,r7
      0028C0 34 64            [12] 1944 	addc	a,#(_pu >> 8)
      0028C2 F5 83            [12] 1945 	mov	dph,a
      0028C4 E0               [24] 1946 	movx	a,@dptr
      0028C5 FD               [12] 1947 	mov	r5,a
      0028C6 EE               [12] 1948 	mov	a,r6
      0028C7 24 00            [12] 1949 	add	a,#_nu
      0028C9 F5 82            [12] 1950 	mov	dpl,a
      0028CB EF               [12] 1951 	mov	a,r7
      0028CC 34 AC            [12] 1952 	addc	a,#(_nu >> 8)
      0028CE F5 83            [12] 1953 	mov	dph,a
      0028D0 E0               [24] 1954 	movx	a,@dptr
      0028D1 FC               [12] 1955 	mov	r4,a
      0028D2 6D               [12] 1956 	xrl	a,r5
      0028D3 78 2A            [12] 1957 	mov	r0,#_cycle2
      0028D5 46               [12] 1958 	orl	a,@r0
      0028D6 F6               [12] 1959 	mov	@r0,a
                                   1960 ;	life.c:209: fixed |= u[A2D(W, y, x)] ^ nu[A2D(W, y, x)];
      0028D7 EE               [12] 1961 	mov	a,r6
      0028D8 24 00            [12] 1962 	add	a,#_u
      0028DA F5 82            [12] 1963 	mov	dpl,a
      0028DC EF               [12] 1964 	mov	a,r7
      0028DD 34 88            [12] 1965 	addc	a,#(_u >> 8)
      0028DF F5 83            [12] 1966 	mov	dph,a
      0028E1 E0               [24] 1967 	movx	a,@dptr
      0028E2 FF               [12] 1968 	mov	r7,a
      0028E3 EC               [12] 1969 	mov	a,r4
      0028E4 6F               [12] 1970 	xrl	a,r7
      0028E5 78 29            [12] 1971 	mov	r0,#_fixed
      0028E7 46               [12] 1972 	orl	a,@r0
      0028E8 F6               [12] 1973 	mov	@r0,a
                                   1974 ;	life.c:190: for (x = 0; x < W; x++) {
      0028E9 78 24            [12] 1975 	mov	r0,#_x
      0028EB 06               [12] 1976 	inc	@r0
      0028EC B6 00 02         [24] 1977 	cjne	@r0,#0x00,00512$
      0028EF 08               [12] 1978 	inc	r0
      0028F0 06               [12] 1979 	inc	@r0
      0028F1                       1980 00512$:
      0028F1 78 24            [12] 1981 	mov	r0,#_x
      0028F3 C3               [12] 1982 	clr	c
      0028F4 E6               [12] 1983 	mov	a,@r0
      0028F5 94 30            [12] 1984 	subb	a,#0x30
      0028F7 08               [12] 1985 	inc	r0
      0028F8 E6               [12] 1986 	mov	a,@r0
      0028F9 64 80            [12] 1987 	xrl	a,#0x80
      0028FB 94 80            [12] 1988 	subb	a,#0x80
      0028FD 50 03            [24] 1989 	jnc	00513$
      0028FF 02 25 B8         [24] 1990 	ljmp	00231$
      002902                       1991 00513$:
                                   1992 ;	life.c:187: for (y = 0; y < H; y++) {
      002902 78 26            [12] 1993 	mov	r0,#_y
      002904 06               [12] 1994 	inc	@r0
      002905 B6 00 02         [24] 1995 	cjne	@r0,#0x00,00514$
      002908 08               [12] 1996 	inc	r0
      002909 06               [12] 1997 	inc	@r0
      00290A                       1998 00514$:
      00290A 78 26            [12] 1999 	mov	r0,#_y
      00290C C3               [12] 2000 	clr	c
      00290D E6               [12] 2001 	mov	a,@r0
      00290E 94 C0            [12] 2002 	subb	a,#0xc0
      002910 08               [12] 2003 	inc	r0
      002911 E6               [12] 2004 	mov	a,@r0
      002912 64 80            [12] 2005 	xrl	a,#0x80
      002914 94 80            [12] 2006 	subb	a,#0x80
      002916 50 03            [24] 2007 	jnc	00515$
      002918 02 25 9C         [24] 2008 	ljmp	00233$
      00291B                       2009 00515$:
                                   2010 ;	life.c:213: OE76 = OE76_0;
      00291B 78 23            [12] 2011 	mov	r0,#_OE76
      00291D 76 3F            [12] 2012 	mov	@r0,#0x3f
                                   2013 ;	life.c:214: flashOE();
      00291F 12 20 8D         [24] 2014 	lcall	_flashOE
                                   2015 ;	life.c:216: cycle2 = !cycle2;
      002922 78 2A            [12] 2016 	mov	r0,#_cycle2
      002924 E6               [12] 2017 	mov	a,@r0
      002925 B4 01 00         [24] 2018 	cjne	a,#0x01,00516$
      002928                       2019 00516$:
      002928 92 00            [24] 2020 	mov	b0,c
      00292A 78 2A            [12] 2021 	mov	r0,#_cycle2
      00292C E4               [12] 2022 	clr	a
      00292D 33               [12] 2023 	rlc	a
      00292E F6               [12] 2024 	mov	@r0,a
                                   2025 ;	life.c:217: fixed = !fixed;
      00292F 78 29            [12] 2026 	mov	r0,#_fixed
      002931 E6               [12] 2027 	mov	a,@r0
      002932 B4 01 00         [24] 2028 	cjne	a,#0x01,00517$
      002935                       2029 00517$:
      002935 92 00            [24] 2030 	mov	b0,c
      002937 78 29            [12] 2031 	mov	r0,#_fixed
      002939 E4               [12] 2032 	clr	a
      00293A 33               [12] 2033 	rlc	a
      00293B F6               [12] 2034 	mov	@r0,a
                                   2035 ;	life.c:219: memcpy(pu, u, sizeof (u));
      00293C E4               [12] 2036 	clr	a
      00293D C0 E0            [24] 2037 	push	acc
      00293F 74 24            [12] 2038 	mov	a,#0x24
      002941 C0 E0            [24] 2039 	push	acc
      002943 74 00            [12] 2040 	mov	a,#_u
      002945 C0 E0            [24] 2041 	push	acc
      002947 74 88            [12] 2042 	mov	a,#(_u >> 8)
      002949 C0 E0            [24] 2043 	push	acc
      00294B E4               [12] 2044 	clr	a
      00294C C0 E0            [24] 2045 	push	acc
      00294E 90 64 00         [24] 2046 	mov	dptr,#_pu
      002951 75 F0 00         [24] 2047 	mov	b,#0x00
      002954 12 2F 16         [24] 2048 	lcall	___memcpy
      002957 E5 81            [12] 2049 	mov	a,sp
      002959 24 FB            [12] 2050 	add	a,#0xfb
      00295B F5 81            [12] 2051 	mov	sp,a
                                   2052 ;	life.c:220: memcpy(u, nu, sizeof (nu));
      00295D E4               [12] 2053 	clr	a
      00295E C0 E0            [24] 2054 	push	acc
      002960 74 24            [12] 2055 	mov	a,#0x24
      002962 C0 E0            [24] 2056 	push	acc
      002964 74 00            [12] 2057 	mov	a,#_nu
      002966 C0 E0            [24] 2058 	push	acc
      002968 74 AC            [12] 2059 	mov	a,#(_nu >> 8)
      00296A C0 E0            [24] 2060 	push	acc
      00296C E4               [12] 2061 	clr	a
      00296D C0 E0            [24] 2062 	push	acc
      00296F 90 88 00         [24] 2063 	mov	dptr,#_u
      002972 75 F0 00         [24] 2064 	mov	b,#0x00
      002975 12 2F 16         [24] 2065 	lcall	___memcpy
      002978 E5 81            [12] 2066 	mov	a,sp
      00297A 24 FB            [12] 2067 	add	a,#0xfb
      00297C F5 81            [12] 2068 	mov	sp,a
                                   2069 ;	life.c:278: if (fixed) {
      00297E 78 29            [12] 2070 	mov	r0,#_fixed
      002980 E6               [12] 2071 	mov	a,@r0
      002981 60 41            [24] 2072 	jz	00135$
                                   2073 ;	life.c:67: genfx = gen;
      002983 78 2B            [12] 2074 	mov	r0,#_gen
      002985 86 04            [24] 2075 	mov	ar4,@r0
      002987 08               [12] 2076 	inc	r0
      002988 86 05            [24] 2077 	mov	ar5,@r0
      00298A 08               [12] 2078 	inc	r0
      00298B 86 06            [24] 2079 	mov	ar6,@r0
      00298D 08               [12] 2080 	inc	r0
      00298E 86 07            [24] 2081 	mov	ar7,@r0
      002990 78 33            [12] 2082 	mov	r0,#_genfx
      002992 A6 04            [24] 2083 	mov	@r0,ar4
      002994 08               [12] 2084 	inc	r0
      002995 A6 05            [24] 2085 	mov	@r0,ar5
      002997 08               [12] 2086 	inc	r0
      002998 A6 06            [24] 2087 	mov	@r0,ar6
      00299A 08               [12] 2088 	inc	r0
      00299B A6 07            [24] 2089 	mov	@r0,ar7
                                   2090 ;	life.c:68: fxset = 1;
      00299D 78 38            [12] 2091 	mov	r0,#_fxset
      00299F 76 01            [12] 2092 	mov	@r0,#0x01
                                   2093 ;	life.c:280: printstr("FIXED AT ");
      0029A1 90 31 CC         [24] 2094 	mov	dptr,#___str_13
      0029A4 75 F0 80         [24] 2095 	mov	b,#0x80
      0029A7 12 2B 93         [24] 2096 	lcall	_printstr
                                   2097 ;	life.c:281: showu(PRHDR, u);
      0029AA 74 00            [12] 2098 	mov	a,#_u
      0029AC C0 E0            [24] 2099 	push	acc
      0029AE 74 88            [12] 2100 	mov	a,#(_u >> 8)
      0029B0 C0 E0            [24] 2101 	push	acc
      0029B2 E4               [12] 2102 	clr	a
      0029B3 C0 E0            [24] 2103 	push	acc
      0029B5 75 82 02         [24] 2104 	mov	dpl,#0x02
      0029B8 12 20 95         [24] 2105 	lcall	_showu
      0029BB 15 81            [12] 2106 	dec	sp
      0029BD 15 81            [12] 2107 	dec	sp
      0029BF 15 81            [12] 2108 	dec	sp
                                   2109 ;	life.c:282: break;
      0029C1 02 2A 44         [24] 2110 	ljmp	00150$
      0029C4                       2111 00135$:
                                   2112 ;	life.c:284: if (cycle2) {
      0029C4 78 2A            [12] 2113 	mov	r0,#_cycle2
      0029C6 E6               [12] 2114 	mov	a,@r0
      0029C7 60 23            [24] 2115 	jz	00139$
                                   2116 ;	life.c:285: if (!c2u()) updatec2();
      0029C9 78 37            [12] 2117 	mov	r0,#_c2set
      0029CB E6               [12] 2118 	mov	a,@r0
      0029CC 70 1E            [24] 2119 	jnz	00139$
                                   2120 ;	life.c:74: genc2 = gen;
      0029CE 78 2B            [12] 2121 	mov	r0,#_gen
      0029D0 86 04            [24] 2122 	mov	ar4,@r0
      0029D2 08               [12] 2123 	inc	r0
      0029D3 86 05            [24] 2124 	mov	ar5,@r0
      0029D5 08               [12] 2125 	inc	r0
      0029D6 86 06            [24] 2126 	mov	ar6,@r0
      0029D8 08               [12] 2127 	inc	r0
      0029D9 86 07            [24] 2128 	mov	ar7,@r0
      0029DB 78 2F            [12] 2129 	mov	r0,#_genc2
      0029DD A6 04            [24] 2130 	mov	@r0,ar4
      0029DF 08               [12] 2131 	inc	r0
      0029E0 A6 05            [24] 2132 	mov	@r0,ar5
      0029E2 08               [12] 2133 	inc	r0
      0029E3 A6 06            [24] 2134 	mov	@r0,ar6
      0029E5 08               [12] 2135 	inc	r0
      0029E6 A6 07            [24] 2136 	mov	@r0,ar7
                                   2137 ;	life.c:75: c2set = 1;
      0029E8 78 37            [12] 2138 	mov	r0,#_c2set
      0029EA 76 01            [12] 2139 	mov	@r0,#0x01
                                   2140 ;	life.c:285: if (!c2u()) updatec2();
      0029EC                       2141 00139$:
                                   2142 ;	life.c:288: c = getchar_poll();
      0029EC 12 2B 79         [24] 2143 	lcall	_getchar_poll
      0029EF AE 82            [24] 2144 	mov	r6,dpl
      0029F1 AF 83            [24] 2145 	mov	r7,dph
                                   2146 ;	life.c:289: if (c > 0) {
      0029F3 C3               [12] 2147 	clr	c
      0029F4 E4               [12] 2148 	clr	a
      0029F5 9E               [12] 2149 	subb	a,r6
      0029F6 74 80            [12] 2150 	mov	a,#(0x00 ^ 0x80)
      0029F8 8F F0            [24] 2151 	mov	b,r7
      0029FA 63 F0 80         [24] 2152 	xrl	b,#0x80
      0029FD 95 F0            [12] 2153 	subb	a,b
      0029FF 40 03            [24] 2154 	jc	00521$
      002A01 02 25 08         [24] 2155 	ljmp	00237$
      002A04                       2156 00521$:
                                   2157 ;	life.c:290: c = toupper(c);
      002A04 8E 82            [24] 2158 	mov	dpl,r6
      002A06 8F 83            [24] 2159 	mov	dph,r7
      002A08 12 30 13         [24] 2160 	lcall	_toupper
      002A0B AE 82            [24] 2161 	mov	r6,dpl
      002A0D AF 83            [24] 2162 	mov	r7,dph
                                   2163 ;	life.c:291: if (c == (int)'U') pruni = !pruni;
      002A0F BE 55 13         [24] 2164 	cjne	r6,#0x55,00146$
      002A12 BF 00 10         [24] 2165 	cjne	r7,#0x00,00146$
      002A15 78 39            [12] 2166 	mov	r0,#_pruni
      002A17 E6               [12] 2167 	mov	a,@r0
      002A18 B4 01 00         [24] 2168 	cjne	a,#0x01,00524$
      002A1B                       2169 00524$:
      002A1B 92 00            [24] 2170 	mov	b0,c
      002A1D 78 39            [12] 2171 	mov	r0,#_pruni
      002A1F E4               [12] 2172 	clr	a
      002A20 33               [12] 2173 	rlc	a
      002A21 F6               [12] 2174 	mov	@r0,a
      002A22 02 25 08         [24] 2175 	ljmp	00237$
      002A25                       2176 00146$:
                                   2177 ;	life.c:292: else if (c == (int)'T') i0 = 1;
      002A25 BE 54 0A         [24] 2178 	cjne	r6,#0x54,00143$
      002A28 BF 00 07         [24] 2179 	cjne	r7,#0x00,00143$
      002A2B 78 21            [12] 2180 	mov	r0,#_i0
      002A2D 76 01            [12] 2181 	mov	@r0,#0x01
      002A2F 02 25 08         [24] 2182 	ljmp	00237$
      002A32                       2183 00143$:
                                   2184 ;	life.c:293: else if (c == (int)'B') i1 = 1;
      002A32 BE 42 05         [24] 2185 	cjne	r6,#0x42,00527$
      002A35 BF 00 02         [24] 2186 	cjne	r7,#0x00,00527$
      002A38 80 03            [24] 2187 	sjmp	00528$
      002A3A                       2188 00527$:
      002A3A 02 25 08         [24] 2189 	ljmp	00237$
      002A3D                       2190 00528$:
      002A3D 78 22            [12] 2191 	mov	r0,#_i1
      002A3F 76 01            [12] 2192 	mov	@r0,#0x01
      002A41 02 25 08         [24] 2193 	ljmp	00237$
      002A44                       2194 00150$:
                                   2195 ;	life.c:297: if (i1) {
      002A44 78 22            [12] 2196 	mov	r0,#_i1
      002A46 E6               [12] 2197 	mov	a,@r0
      002A47 60 20            [24] 2198 	jz	00240$
                                   2199 ;	life.c:298: printstr("BREAK AT ");
      002A49 90 31 D6         [24] 2200 	mov	dptr,#___str_14
      002A4C 75 F0 80         [24] 2201 	mov	b,#0x80
      002A4F 12 2B 93         [24] 2202 	lcall	_printstr
                                   2203 ;	life.c:299: showu(PRHDR, u);
      002A52 74 00            [12] 2204 	mov	a,#_u
      002A54 C0 E0            [24] 2205 	push	acc
      002A56 74 88            [12] 2206 	mov	a,#(_u >> 8)
      002A58 C0 E0            [24] 2207 	push	acc
      002A5A E4               [12] 2208 	clr	a
      002A5B C0 E0            [24] 2209 	push	acc
      002A5D 75 82 02         [24] 2210 	mov	dpl,#0x02
      002A60 12 20 95         [24] 2211 	lcall	_showu
      002A63 15 81            [12] 2212 	dec	sp
      002A65 15 81            [12] 2213 	dec	sp
      002A67 15 81            [12] 2214 	dec	sp
      002A69                       2215 00240$:
                                   2216 ;	life.c:250: for (i0 = 0; !i0; ) {
      002A69 78 21            [12] 2217 	mov	r0,#_i0
      002A6B E6               [12] 2218 	mov	a,@r0
      002A6C 70 03            [24] 2219 	jnz	00530$
      002A6E 02 22 28         [24] 2220 	ljmp	00127$
      002A71                       2221 00530$:
                                   2222 ;	life.c:303: term:
      002A71                       2223 00154$:
                                   2224 ;	life.c:304: EA = 0;
                                   2225 ;	assignBit
      002A71 C2 AF            [12] 2226 	clr	_EA
                                   2227 ;	life.c:305: printstr("TERM\r\n");
      002A73 90 31 E0         [24] 2228 	mov	dptr,#___str_15
      002A76 75 F0 80         [24] 2229 	mov	b,#0x80
      002A79 12 2B 93         [24] 2230 	lcall	_printstr
                                   2231 ;	life.c:307: PCON |= 2;
      002A7C 43 87 02         [24] 2232 	orl	_PCON,#0x02
                                   2233 ;	life.c:309: return;
                                   2234 ;	life.c:310: }
      002A7F 85 10 81         [24] 2235 	mov	sp,_bp
      002A82 D0 10            [24] 2236 	pop	_bp
      002A84 22               [24] 2237 	ret
                                   2238 	.area CSEG    (CODE)
                                   2239 	.area CONST   (CODE)
                                   2240 	.area CONST   (CODE)
      003162                       2241 ___str_0:
      003162 1B                    2242 	.db 0x1b
      003163 5B 32 4A              2243 	.ascii "[2J"
      003166 00                    2244 	.db 0x00
                                   2245 	.area CSEG    (CODE)
                                   2246 	.area CONST   (CODE)
      003167                       2247 ___str_1:
      003167 47 45 4E 20           2248 	.ascii "GEN "
      00316B 00                    2249 	.db 0x00
                                   2250 	.area CSEG    (CODE)
                                   2251 	.area CONST   (CODE)
      00316C                       2252 ___str_2:
      00316C 20 43 59 43 4C 45 32  2253 	.ascii " CYCLE2 "
             20
      003174 00                    2254 	.db 0x00
                                   2255 	.area CSEG    (CODE)
                                   2256 	.area CONST   (CODE)
      003175                       2257 ___str_3:
      003175 20 46 49 58 45 44 20  2258 	.ascii " FIXED "
      00317C 00                    2259 	.db 0x00
                                   2260 	.area CSEG    (CODE)
                                   2261 	.area CONST   (CODE)
      00317D                       2262 ___str_4:
      00317D 0D                    2263 	.db 0x0d
      00317E 0A                    2264 	.db 0x0a
      00317F 00                    2265 	.db 0x00
                                   2266 	.area CSEG    (CODE)
                                   2267 	.area CONST   (CODE)
      003180                       2268 ___str_5:
      003180 1B                    2269 	.db 0x1b
      003181 5B 3F 32 35 6C        2270 	.ascii "[?25l"
      003186 00                    2271 	.db 0x00
                                   2272 	.area CSEG    (CODE)
                                   2273 	.area CONST   (CODE)
      003187                       2274 ___str_6:
      003187 1B                    2275 	.db 0x1b
      003188 5B 3F 32 35 68        2276 	.ascii "[?25h"
      00318D 00                    2277 	.db 0x00
                                   2278 	.area CSEG    (CODE)
                                   2279 	.area CONST   (CODE)
      00318E                       2280 ___str_7:
      00318E 4C 4F 41 44 20 30 20  2281 	.ascii "LOAD 0 1 ~ # <"
             31 20 7E 20 23 20 3C
      00319C 00                    2282 	.db 0x00
                                   2283 	.area CSEG    (CODE)
                                   2284 	.area CONST   (CODE)
      00319D                       2285 ___str_8:
      00319D 3E                    2286 	.ascii ">"
      00319E 0D                    2287 	.db 0x0d
      00319F 0A                    2288 	.db 0x0a
      0031A0 00                    2289 	.db 0x00
                                   2290 	.area CSEG    (CODE)
                                   2291 	.area CONST   (CODE)
      0031A1                       2292 ___str_9:
      0031A1 52 41 4E 44 4F 4D     2293 	.ascii "RANDOM"
      0031A7 00                    2294 	.db 0x00
                                   2295 	.area CSEG    (CODE)
                                   2296 	.area CONST   (CODE)
      0031A8                       2297 ___str_10:
      0031A8 1B                    2298 	.db 0x1b
      0031A9 5B 3F 32 35 68        2299 	.ascii "[?25h"
      0031AE 1B                    2300 	.db 0x1b
      0031AF 5B 6D                 2301 	.ascii "[m"
      0031B1 00                    2302 	.db 0x00
                                   2303 	.area CSEG    (CODE)
                                   2304 	.area CONST   (CODE)
      0031B2                       2305 ___str_11:
      0031B2 4C 49 46 45 20 49 20  2306 	.ascii "LIFE I L R O P S U"
             4C 20 52 20 4F 20 50
             20 53 20 55
      0031C4 00                    2307 	.db 0x00
                                   2308 	.area CSEG    (CODE)
                                   2309 	.area CONST   (CODE)
      0031C5                       2310 ___str_12:
      0031C5 20 42 20 54           2311 	.ascii " B T"
      0031C9 0D                    2312 	.db 0x0d
      0031CA 0A                    2313 	.db 0x0a
      0031CB 00                    2314 	.db 0x00
                                   2315 	.area CSEG    (CODE)
                                   2316 	.area CONST   (CODE)
      0031CC                       2317 ___str_13:
      0031CC 46 49 58 45 44 20 41  2318 	.ascii "FIXED AT "
             54 20
      0031D5 00                    2319 	.db 0x00
                                   2320 	.area CSEG    (CODE)
                                   2321 	.area CONST   (CODE)
      0031D6                       2322 ___str_14:
      0031D6 42 52 45 41 4B 20 41  2323 	.ascii "BREAK AT "
             54 20
      0031DF 00                    2324 	.db 0x00
                                   2325 	.area CSEG    (CODE)
                                   2326 	.area CONST   (CODE)
      0031E0                       2327 ___str_15:
      0031E0 54 45 52 4D           2328 	.ascii "TERM"
      0031E4 0D                    2329 	.db 0x0d
      0031E5 0A                    2330 	.db 0x0a
      0031E6 00                    2331 	.db 0x00
                                   2332 	.area CSEG    (CODE)
                                   2333 	.area XINIT   (CODE)
                                   2334 	.area CABS    (ABS,CODE)
