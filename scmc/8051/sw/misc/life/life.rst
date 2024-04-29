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
      0020A0 90 31 7B         [24]  521 	mov	dptr,#___str_0
      0020A3 75 F0 80         [24]  522 	mov	b,#0x80
      0020A6 C0 07            [24]  523 	push	ar7
      0020A8 12 2B AC         [24]  524 	lcall	_printstr
      0020AB D0 07            [24]  525 	pop	ar7
      0020AD                        526 00102$:
                                    527 ;	life.c:95: if (prflags & PRHDR) {
      0020AD EF               [12]  528 	mov	a,r7
      0020AE 30 E1 6B         [24]  529 	jnb	acc.1,00108$
                                    530 ;	life.c:96: printstr("GEN ");
      0020B1 90 31 80         [24]  531 	mov	dptr,#___str_1
      0020B4 75 F0 80         [24]  532 	mov	b,#0x80
      0020B7 C0 07            [24]  533 	push	ar7
      0020B9 12 2B AC         [24]  534 	lcall	_printstr
                                    535 ;	life.c:97: print32x(gen);
      0020BC 78 2B            [12]  536 	mov	r0,#_gen
      0020BE 86 82            [24]  537 	mov	dpl,@r0
      0020C0 08               [12]  538 	inc	r0
      0020C1 86 83            [24]  539 	mov	dph,@r0
      0020C3 08               [12]  540 	inc	r0
      0020C4 86 F0            [24]  541 	mov	b,@r0
      0020C6 08               [12]  542 	inc	r0
      0020C7 E6               [12]  543 	mov	a,@r0
      0020C8 12 2D 5C         [24]  544 	lcall	_print32x
      0020CB D0 07            [24]  545 	pop	ar7
                                    546 ;	life.c:98: if (c2set) {
      0020CD 78 37            [12]  547 	mov	r0,#_c2set
      0020CF E6               [12]  548 	mov	a,@r0
      0020D0 60 1C            [24]  549 	jz	00104$
                                    550 ;	life.c:99: printstr(" CYCLE2 ");
      0020D2 90 31 85         [24]  551 	mov	dptr,#___str_2
      0020D5 75 F0 80         [24]  552 	mov	b,#0x80
      0020D8 C0 07            [24]  553 	push	ar7
      0020DA 12 2B AC         [24]  554 	lcall	_printstr
                                    555 ;	life.c:100: print32x(genc2);
      0020DD 78 2F            [12]  556 	mov	r0,#_genc2
      0020DF 86 82            [24]  557 	mov	dpl,@r0
      0020E1 08               [12]  558 	inc	r0
      0020E2 86 83            [24]  559 	mov	dph,@r0
      0020E4 08               [12]  560 	inc	r0
      0020E5 86 F0            [24]  561 	mov	b,@r0
      0020E7 08               [12]  562 	inc	r0
      0020E8 E6               [12]  563 	mov	a,@r0
      0020E9 12 2D 5C         [24]  564 	lcall	_print32x
      0020EC D0 07            [24]  565 	pop	ar7
      0020EE                        566 00104$:
                                    567 ;	life.c:102: if (fxset) {
      0020EE 78 38            [12]  568 	mov	r0,#_fxset
      0020F0 E6               [12]  569 	mov	a,@r0
      0020F1 60 1C            [24]  570 	jz	00106$
                                    571 ;	life.c:103: printstr(" FIXED ");
      0020F3 90 31 8E         [24]  572 	mov	dptr,#___str_3
      0020F6 75 F0 80         [24]  573 	mov	b,#0x80
      0020F9 C0 07            [24]  574 	push	ar7
      0020FB 12 2B AC         [24]  575 	lcall	_printstr
                                    576 ;	life.c:104: print32x(genfx);
      0020FE 78 33            [12]  577 	mov	r0,#_genfx
      002100 86 82            [24]  578 	mov	dpl,@r0
      002102 08               [12]  579 	inc	r0
      002103 86 83            [24]  580 	mov	dph,@r0
      002105 08               [12]  581 	inc	r0
      002106 86 F0            [24]  582 	mov	b,@r0
      002108 08               [12]  583 	inc	r0
      002109 E6               [12]  584 	mov	a,@r0
      00210A 12 2D 5C         [24]  585 	lcall	_print32x
      00210D D0 07            [24]  586 	pop	ar7
      00210F                        587 00106$:
                                    588 ;	life.c:106: printstr("\r\n");
      00210F 90 31 96         [24]  589 	mov	dptr,#___str_4
      002112 75 F0 80         [24]  590 	mov	b,#0x80
      002115 C0 07            [24]  591 	push	ar7
      002117 12 2B AC         [24]  592 	lcall	_printstr
      00211A D0 07            [24]  593 	pop	ar7
      00211C                        594 00108$:
                                    595 ;	life.c:108: if (prflags & PRUNI) {
      00211C EF               [12]  596 	mov	a,r7
      00211D 20 E2 03         [24]  597 	jb	acc.2,00166$
      002120 02 21 C1         [24]  598 	ljmp	00115$
      002123                        599 00166$:
                                    600 ;	life.c:109: printstr("\033[?25l");
      002123 90 31 99         [24]  601 	mov	dptr,#___str_5
      002126 75 F0 80         [24]  602 	mov	b,#0x80
      002129 12 2B AC         [24]  603 	lcall	_printstr
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
      002144 12 2E 91         [24]  626 	lcall	__mulint
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
      00216D 12 30 53         [24]  654 	lcall	__gptrget
      002170 60 08            [24]  655 	jz	00110$
      002172 90 00 31         [24]  656 	mov	dptr,#0x0031
      002175 12 2B 7B         [24]  657 	lcall	_putchar
      002178 80 06            [24]  658 	sjmp	00117$
      00217A                        659 00110$:
                                    660 ;	life.c:113: else putchar((int)'0');
      00217A 90 00 30         [24]  661 	mov	dptr,#0x0030
      00217D 12 2B 7B         [24]  662 	lcall	_putchar
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
      002196 90 31 96         [24]  681 	mov	dptr,#___str_4
      002199 75 F0 80         [24]  682 	mov	b,#0x80
      00219C 12 2B AC         [24]  683 	lcall	_printstr
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
      0021B8 90 31 A0         [24]  703 	mov	dptr,#___str_6
      0021BB 75 F0 80         [24]  704 	mov	b,#0x80
      0021BE 12 2B AC         [24]  705 	lcall	_printstr
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
                                    725 ;	life.c:227: void main(void) {
                                    726 ;	-----------------------------------------
                                    727 ;	 function main
                                    728 ;	-----------------------------------------
      0021C4                        729 _main:
      0021C4 C0 10            [24]  730 	push	_bp
      0021C6 E5 81            [12]  731 	mov	a,sp
      0021C8 F5 10            [12]  732 	mov	_bp,a
      0021CA 24 0B            [12]  733 	add	a,#0x0b
      0021CC F5 81            [12]  734 	mov	sp,a
                                    735 ;	life.c:230: IT0 = 1;
                                    736 ;	assignBit
      0021CE D2 88            [12]  737 	setb	_IT0
                                    738 ;	life.c:231: IT1 = 1;
                                    739 ;	assignBit
      0021D0 D2 8A            [12]  740 	setb	_IT1
                                    741 ;	life.c:232: EX0 = 1;
                                    742 ;	assignBit
      0021D2 D2 A8            [12]  743 	setb	_EX0
                                    744 ;	life.c:233: EX1 = 1;
                                    745 ;	assignBit
      0021D4 D2 AA            [12]  746 	setb	_EX1
                                    747 ;	life.c:234: EA = 1;
                                    748 ;	assignBit
      0021D6 D2 AF            [12]  749 	setb	_EA
                                    750 ;	life.c:235: P1_7 = 0;
                                    751 ;	assignBit
      0021D8 C2 97            [12]  752 	clr	_P1_7
                                    753 ;	life.c:240: __endasm;
      0021DA 00               [12]  754 	nop
      0021DB 00               [12]  755 	nop
      0021DC 00               [12]  756 	nop
                                    757 ;	life.c:242: srand(RND);
      0021DD 90 E0 00         [24]  758 	mov	dptr,#_RND
      0021E0 E0               [24]  759 	movx	a,@dptr
      0021E1 FE               [12]  760 	mov	r6,a
      0021E2 A3               [24]  761 	inc	dptr
      0021E3 E0               [24]  762 	movx	a,@dptr
      0021E4 FF               [12]  763 	mov	r7,a
      0021E5 8E 82            [24]  764 	mov	dpl,r6
      0021E7 8F 83            [24]  765 	mov	dph,r7
      0021E9 12 2B 62         [24]  766 	lcall	_srand
                                    767 ;	life.c:244: OE76 = OE76_0;
      0021EC 78 23            [12]  768 	mov	r0,#_OE76
      0021EE 76 3F            [12]  769 	mov	@r0,#0x3f
                                    770 ;	life.c:245: flashOE();
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
                                    806 ;	life.c:248: pruni = 0;
      002217 78 39            [12]  807 	mov	r0,#_pruni
      002219 76 00            [12]  808 	mov	@r0,#0x00
                                    809 ;	life.c:250: printstr("\033[?25h\033[m");
      00221B 90 31 C1         [24]  810 	mov	dptr,#___str_10
      00221E 75 F0 80         [24]  811 	mov	b,#0x80
      002221 12 2B AC         [24]  812 	lcall	_printstr
                                    813 ;	life.c:252: for (i0 = 0; !i0; ) {
      002224 78 21            [12]  814 	mov	r0,#_i0
      002226 76 00            [12]  815 	mov	@r0,#0x00
                                    816 ;	life.c:253: while (1) {
      002228                        817 00127$:
                                    818 ;	life.c:254: printstr("LIFE I L R O P S U");
      002228 90 31 CB         [24]  819 	mov	dptr,#___str_11
      00222B 75 F0 80         [24]  820 	mov	b,#0x80
      00222E 12 2B AC         [24]  821 	lcall	_printstr
                                    822 ;	life.c:255: putchar(pruni ? (int)'1' : (int)'0');
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
      002244 12 2B 7B         [24]  835 	lcall	_putchar
                                    836 ;	life.c:256: printstr(" B T\r\n");
      002247 90 31 DE         [24]  837 	mov	dptr,#___str_12
      00224A 75 F0 80         [24]  838 	mov	b,#0x80
      00224D 12 2B AC         [24]  839 	lcall	_printstr
                                    840 ;	life.c:257: c = toupper(getchar());
      002250 12 2B 85         [24]  841 	lcall	_getchar
      002253 12 30 2C         [24]  842 	lcall	_toupper
      002256 AE 82            [24]  843 	mov	r6,dpl
      002258 AF 83            [24]  844 	mov	r7,dph
                                    845 ;	life.c:258: if (i0 || (c == (int)'T')) goto term;
      00225A 78 21            [12]  846 	mov	r0,#_i0
      00225C E6               [12]  847 	mov	a,@r0
      00225D 60 03            [24]  848 	jz	00467$
      00225F 02 2A 8A         [24]  849 	ljmp	00154$
      002262                        850 00467$:
      002262 BE 54 06         [24]  851 	cjne	r6,#0x54,00468$
      002265 BF 00 03         [24]  852 	cjne	r7,#0x00,00468$
      002268 02 2A 8A         [24]  853 	ljmp	00154$
      00226B                        854 00468$:
                                    855 ;	life.c:259: else if ((c == (int)'I') || (c == (int)'L') || (c == (int)'R')) {
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
      002283 02 24 BC         [24]  868 	ljmp	00118$
      002286                        869 00472$:
      002286                        870 00117$:
                                    871 ;	life.c:260: if (c == (int)'L') loadiu();
      002286 BE 4C 05         [24]  872 	cjne	r6,#0x4c,00473$
      002289 BF 00 02         [24]  873 	cjne	r7,#0x00,00473$
      00228C 80 03            [24]  874 	sjmp	00474$
      00228E                        875 00473$:
      00228E 02 23 CB         [24]  876 	ljmp	00104$
      002291                        877 00474$:
                                    878 ;	life.c:133: memset(iu, 0, sizeof (iu));
      002291 E4               [12]  879 	clr	a
      002292 C0 E0            [24]  880 	push	acc
      002294 74 24            [12]  881 	mov	a,#0x24
      002296 C0 E0            [24]  882 	push	acc
      002298 E4               [12]  883 	clr	a
      002299 C0 E0            [24]  884 	push	acc
      00229B 90 40 00         [24]  885 	mov	dptr,#_iu
      00229E 75 F0 00         [24]  886 	mov	b,#0x00
      0022A1 12 2F C2         [24]  887 	lcall	_memset
      0022A4 15 81            [12]  888 	dec	sp
      0022A6 15 81            [12]  889 	dec	sp
      0022A8 15 81            [12]  890 	dec	sp
                                    891 ;	life.c:135: printstr("LOAD 0 1 ~ # <");
      0022AA 90 31 A7         [24]  892 	mov	dptr,#___str_7
      0022AD 75 F0 80         [24]  893 	mov	b,#0x80
      0022B0 12 2B AC         [24]  894 	lcall	_printstr
                                    895 ;	life.c:137: for (nbits = 0, y = 0; y < (H * W); y += W) {
      0022B3 7C 00            [12]  896 	mov	r4,#0x00
      0022B5 7D 00            [12]  897 	mov	r5,#0x00
      0022B7 78 26            [12]  898 	mov	r0,#_y
      0022B9 E4               [12]  899 	clr	a
      0022BA F6               [12]  900 	mov	@r0,a
      0022BB 08               [12]  901 	inc	r0
      0022BC F6               [12]  902 	mov	@r0,a
      0022BD                        903 00225$:
      0022BD 78 26            [12]  904 	mov	r0,#_y
      0022BF C3               [12]  905 	clr	c
      0022C0 08               [12]  906 	inc	r0
      0022C1 E6               [12]  907 	mov	a,@r0
      0022C2 64 80            [12]  908 	xrl	a,#0x80
      0022C4 94 A4            [12]  909 	subb	a,#0xa4
      0022C6 40 03            [24]  910 	jc	00475$
      0022C8 02 23 86         [24]  911 	ljmp	00181$
      0022CB                        912 00475$:
                                    913 ;	life.c:138: for (x = 0; x < W; x++) {
      0022CB 78 24            [12]  914 	mov	r0,#_x
      0022CD E4               [12]  915 	clr	a
      0022CE F6               [12]  916 	mov	@r0,a
      0022CF 08               [12]  917 	inc	r0
      0022D0 F6               [12]  918 	mov	@r0,a
                                    919 ;	life.c:139: while (1) {
      0022D1                        920 00168$:
                                    921 ;	life.c:140: c = getchar();
      0022D1 C0 05            [24]  922 	push	ar5
      0022D3 C0 04            [24]  923 	push	ar4
      0022D5 12 2B 85         [24]  924 	lcall	_getchar
      0022D8 AA 82            [24]  925 	mov	r2,dpl
      0022DA AB 83            [24]  926 	mov	r3,dph
      0022DC D0 04            [24]  927 	pop	ar4
      0022DE D0 05            [24]  928 	pop	ar5
      0022E0 E5 10            [12]  929 	mov	a,_bp
      0022E2 24 0A            [12]  930 	add	a,#0x0a
      0022E4 F8               [12]  931 	mov	r0,a
      0022E5 A6 02            [24]  932 	mov	@r0,ar2
      0022E7 08               [12]  933 	inc	r0
      0022E8 A6 03            [24]  934 	mov	@r0,ar3
                                    935 ;	life.c:141: if (c == (int)'0') {
      0022EA E5 10            [12]  936 	mov	a,_bp
      0022EC 24 0A            [12]  937 	add	a,#0x0a
      0022EE F8               [12]  938 	mov	r0,a
      0022EF B6 30 23         [24]  939 	cjne	@r0,#0x30,00166$
      0022F2 08               [12]  940 	inc	r0
      0022F3 B6 00 1F         [24]  941 	cjne	@r0,#0x00,00166$
                                    942 ;	life.c:142: iu[y + x] = 0;
      0022F6 78 26            [12]  943 	mov	r0,#_y
      0022F8 79 24            [12]  944 	mov	r1,#_x
      0022FA E7               [12]  945 	mov	a,@r1
      0022FB 26               [12]  946 	add	a,@r0
      0022FC FA               [12]  947 	mov	r2,a
      0022FD 09               [12]  948 	inc	r1
      0022FE E7               [12]  949 	mov	a,@r1
      0022FF 08               [12]  950 	inc	r0
      002300 36               [12]  951 	addc	a,@r0
      002301 FB               [12]  952 	mov	r3,a
      002302 EA               [12]  953 	mov	a,r2
      002303 24 00            [12]  954 	add	a,#_iu
      002305 F5 82            [12]  955 	mov	dpl,a
      002307 EB               [12]  956 	mov	a,r3
      002308 34 40            [12]  957 	addc	a,#(_iu >> 8)
      00230A F5 83            [12]  958 	mov	dph,a
      00230C E4               [12]  959 	clr	a
      00230D F0               [24]  960 	movx	@dptr,a
                                    961 ;	life.c:143: nbits++;
      00230E 0C               [12]  962 	inc	r4
                                    963 ;	life.c:144: break;
      00230F BC 00 4E         [24]  964 	cjne	r4,#0x00,00171$
      002312 0D               [12]  965 	inc	r5
      002313 80 4B            [24]  966 	sjmp	00171$
      002315                        967 00166$:
                                    968 ;	life.c:145: } else if (c == (int)'1') {
      002315 E5 10            [12]  969 	mov	a,_bp
      002317 24 0A            [12]  970 	add	a,#0x0a
      002319 F8               [12]  971 	mov	r0,a
      00231A B6 31 24         [24]  972 	cjne	@r0,#0x31,00164$
      00231D 08               [12]  973 	inc	r0
      00231E B6 00 20         [24]  974 	cjne	@r0,#0x00,00164$
                                    975 ;	life.c:146: iu[y + x] = 1;
      002321 78 26            [12]  976 	mov	r0,#_y
      002323 79 24            [12]  977 	mov	r1,#_x
      002325 E7               [12]  978 	mov	a,@r1
      002326 26               [12]  979 	add	a,@r0
      002327 FA               [12]  980 	mov	r2,a
      002328 09               [12]  981 	inc	r1
      002329 E7               [12]  982 	mov	a,@r1
      00232A 08               [12]  983 	inc	r0
      00232B 36               [12]  984 	addc	a,@r0
      00232C FB               [12]  985 	mov	r3,a
      00232D EA               [12]  986 	mov	a,r2
      00232E 24 00            [12]  987 	add	a,#_iu
      002330 F5 82            [12]  988 	mov	dpl,a
      002332 EB               [12]  989 	mov	a,r3
      002333 34 40            [12]  990 	addc	a,#(_iu >> 8)
      002335 F5 83            [12]  991 	mov	dph,a
      002337 74 01            [12]  992 	mov	a,#0x01
      002339 F0               [24]  993 	movx	@dptr,a
                                    994 ;	life.c:147: nbits++;
      00233A 0C               [12]  995 	inc	r4
                                    996 ;	life.c:148: break;
      00233B BC 00 22         [24]  997 	cjne	r4,#0x00,00171$
      00233E 0D               [12]  998 	inc	r5
      00233F 80 1F            [24]  999 	sjmp	00171$
      002341                       1000 00164$:
                                   1001 ;	life.c:149: } else if (c == (int)'~') goto br_inner;
      002341 E5 10            [12] 1002 	mov	a,_bp
      002343 24 0A            [12] 1003 	add	a,#0x0a
      002345 F8               [12] 1004 	mov	r0,a
      002346 B6 7E 06         [24] 1005 	cjne	@r0,#0x7e,00482$
      002349 08               [12] 1006 	inc	r0
      00234A B6 00 02         [24] 1007 	cjne	@r0,#0x00,00482$
      00234D 80 2A            [24] 1008 	sjmp	00226$
      00234F                       1009 00482$:
                                   1010 ;	life.c:150: else if (c == (int)'#') goto out;
      00234F E5 10            [12] 1011 	mov	a,_bp
      002351 24 0A            [12] 1012 	add	a,#0x0a
      002353 F8               [12] 1013 	mov	r0,a
      002354 B6 23 06         [24] 1014 	cjne	@r0,#0x23,00483$
      002357 08               [12] 1015 	inc	r0
      002358 B6 00 02         [24] 1016 	cjne	@r0,#0x00,00483$
      00235B 80 29            [24] 1017 	sjmp	00181$
      00235D                       1018 00483$:
      00235D 02 22 D1         [24] 1019 	ljmp	00168$
                                   1020 ;	life.c:154: break;
      002360                       1021 00171$:
                                   1022 ;	life.c:138: for (x = 0; x < W; x++) {
      002360 78 24            [12] 1023 	mov	r0,#_x
      002362 06               [12] 1024 	inc	@r0
      002363 B6 00 02         [24] 1025 	cjne	@r0,#0x00,00484$
      002366 08               [12] 1026 	inc	r0
      002367 06               [12] 1027 	inc	@r0
      002368                       1028 00484$:
      002368 78 24            [12] 1029 	mov	r0,#_x
      00236A C3               [12] 1030 	clr	c
      00236B E6               [12] 1031 	mov	a,@r0
      00236C 94 30            [12] 1032 	subb	a,#0x30
      00236E 08               [12] 1033 	inc	r0
      00236F E6               [12] 1034 	mov	a,@r0
      002370 64 80            [12] 1035 	xrl	a,#0x80
      002372 94 80            [12] 1036 	subb	a,#0x80
      002374 50 03            [24] 1037 	jnc	00485$
      002376 02 22 D1         [24] 1038 	ljmp	00168$
      002379                       1039 00485$:
      002379                       1040 00226$:
                                   1041 ;	life.c:137: for (nbits = 0, y = 0; y < (H * W); y += W) {
      002379 78 26            [12] 1042 	mov	r0,#_y
      00237B 74 30            [12] 1043 	mov	a,#0x30
      00237D 26               [12] 1044 	add	a,@r0
      00237E F6               [12] 1045 	mov	@r0,a
      00237F E4               [12] 1046 	clr	a
      002380 08               [12] 1047 	inc	r0
      002381 36               [12] 1048 	addc	a,@r0
      002382 F6               [12] 1049 	mov	@r0,a
      002383 02 22 BD         [24] 1050 	ljmp	00225$
                                   1051 ;	life.c:158: out:
      002386                       1052 00181$:
                                   1053 ;	life.c:159: if (c != (int)'#')
      002386 E5 10            [12] 1054 	mov	a,_bp
      002388 24 0A            [12] 1055 	add	a,#0x0a
      00238A F8               [12] 1056 	mov	r0,a
      00238B B6 23 06         [24] 1057 	cjne	@r0,#0x23,00486$
      00238E 08               [12] 1058 	inc	r0
      00238F B6 00 02         [24] 1059 	cjne	@r0,#0x00,00486$
      002392 80 25            [24] 1060 	sjmp	00180$
      002394                       1061 00486$:
                                   1062 ;	life.c:160: while (1) {
      002394                       1063 00177$:
                                   1064 ;	life.c:161: c = getchar();
      002394 C0 05            [24] 1065 	push	ar5
      002396 C0 04            [24] 1066 	push	ar4
      002398 12 2B 85         [24] 1067 	lcall	_getchar
      00239B AA 82            [24] 1068 	mov	r2,dpl
      00239D AB 83            [24] 1069 	mov	r3,dph
      00239F D0 04            [24] 1070 	pop	ar4
      0023A1 D0 05            [24] 1071 	pop	ar5
      0023A3 E5 10            [12] 1072 	mov	a,_bp
      0023A5 24 0A            [12] 1073 	add	a,#0x0a
      0023A7 F8               [12] 1074 	mov	r0,a
      0023A8 A6 02            [24] 1075 	mov	@r0,ar2
      0023AA 08               [12] 1076 	inc	r0
      0023AB A6 03            [24] 1077 	mov	@r0,ar3
                                   1078 ;	life.c:162: if (c == (int)'#') break;
      0023AD E5 10            [12] 1079 	mov	a,_bp
      0023AF 24 0A            [12] 1080 	add	a,#0x0a
      0023B1 F8               [12] 1081 	mov	r0,a
      0023B2 B6 23 DF         [24] 1082 	cjne	@r0,#0x23,00177$
      0023B5 08               [12] 1083 	inc	r0
      0023B6 B6 00 DB         [24] 1084 	cjne	@r0,#0x00,00177$
      0023B9                       1085 00180$:
                                   1086 ;	life.c:164: print16x(nbits);
      0023B9 8C 82            [24] 1087 	mov	dpl,r4
      0023BB 8D 83            [24] 1088 	mov	dph,r5
      0023BD 12 2C D6         [24] 1089 	lcall	_print16x
                                   1090 ;	life.c:165: printstr(">\r\n");
      0023C0 90 31 B6         [24] 1091 	mov	dptr,#___str_8
      0023C3 75 F0 80         [24] 1092 	mov	b,#0x80
      0023C6 12 2B AC         [24] 1093 	lcall	_printstr
                                   1094 ;	life.c:260: if (c == (int)'L') loadiu();
      0023C9 80 79            [24] 1095 	sjmp	00105$
      0023CB                       1096 00104$:
                                   1097 ;	life.c:261: else if (c == (int)'R') loadriu();
      0023CB BE 52 76         [24] 1098 	cjne	r6,#0x52,00105$
      0023CE BF 00 73         [24] 1099 	cjne	r7,#0x00,00105$
                                   1100 ;	life.c:171: printstr("RANDOM");
      0023D1 90 31 BA         [24] 1101 	mov	dptr,#___str_9
      0023D4 75 F0 80         [24] 1102 	mov	b,#0x80
      0023D7 12 2B AC         [24] 1103 	lcall	_printstr
                                   1104 ;	life.c:173: for (y = 0; y < (H * W); y += W)
      0023DA 78 26            [12] 1105 	mov	r0,#_y
      0023DC E4               [12] 1106 	clr	a
      0023DD F6               [12] 1107 	mov	@r0,a
      0023DE 08               [12] 1108 	inc	r0
      0023DF F6               [12] 1109 	mov	@r0,a
      0023E0                       1110 00229$:
                                   1111 ;	life.c:174: for (x = 0; x < W; x++)
      0023E0 78 24            [12] 1112 	mov	r0,#_x
      0023E2 E4               [12] 1113 	clr	a
      0023E3 F6               [12] 1114 	mov	@r0,a
      0023E4 08               [12] 1115 	inc	r0
      0023E5 F6               [12] 1116 	mov	@r0,a
      0023E6                       1117 00227$:
                                   1118 ;	life.c:175: iu[y + x] = rand() & 1;
      0023E6 78 26            [12] 1119 	mov	r0,#_y
      0023E8 79 24            [12] 1120 	mov	r1,#_x
      0023EA E7               [12] 1121 	mov	a,@r1
      0023EB 26               [12] 1122 	add	a,@r0
      0023EC FC               [12] 1123 	mov	r4,a
      0023ED 09               [12] 1124 	inc	r1
      0023EE E7               [12] 1125 	mov	a,@r1
      0023EF 08               [12] 1126 	inc	r0
      0023F0 36               [12] 1127 	addc	a,@r0
      0023F1 FD               [12] 1128 	mov	r5,a
      0023F2 EC               [12] 1129 	mov	a,r4
      0023F3 24 00            [12] 1130 	add	a,#_iu
      0023F5 FC               [12] 1131 	mov	r4,a
      0023F6 ED               [12] 1132 	mov	a,r5
      0023F7 34 40            [12] 1133 	addc	a,#(_iu >> 8)
      0023F9 FD               [12] 1134 	mov	r5,a
      0023FA C0 05            [24] 1135 	push	ar5
      0023FC C0 04            [24] 1136 	push	ar4
      0023FE 12 2A 9E         [24] 1137 	lcall	_rand
      002401 AA 82            [24] 1138 	mov	r2,dpl
      002403 D0 04            [24] 1139 	pop	ar4
      002405 D0 05            [24] 1140 	pop	ar5
      002407 53 02 01         [24] 1141 	anl	ar2,#0x01
      00240A 8C 82            [24] 1142 	mov	dpl,r4
      00240C 8D 83            [24] 1143 	mov	dph,r5
      00240E EA               [12] 1144 	mov	a,r2
      00240F F0               [24] 1145 	movx	@dptr,a
                                   1146 ;	life.c:174: for (x = 0; x < W; x++)
      002410 78 24            [12] 1147 	mov	r0,#_x
      002412 06               [12] 1148 	inc	@r0
      002413 B6 00 02         [24] 1149 	cjne	@r0,#0x00,00491$
      002416 08               [12] 1150 	inc	r0
      002417 06               [12] 1151 	inc	@r0
      002418                       1152 00491$:
      002418 78 24            [12] 1153 	mov	r0,#_x
      00241A C3               [12] 1154 	clr	c
      00241B E6               [12] 1155 	mov	a,@r0
      00241C 94 30            [12] 1156 	subb	a,#0x30
      00241E 08               [12] 1157 	inc	r0
      00241F E6               [12] 1158 	mov	a,@r0
      002420 64 80            [12] 1159 	xrl	a,#0x80
      002422 94 80            [12] 1160 	subb	a,#0x80
      002424 40 C0            [24] 1161 	jc	00227$
                                   1162 ;	life.c:173: for (y = 0; y < (H * W); y += W)
      002426 78 26            [12] 1163 	mov	r0,#_y
      002428 74 30            [12] 1164 	mov	a,#0x30
      00242A 26               [12] 1165 	add	a,@r0
      00242B F6               [12] 1166 	mov	@r0,a
      00242C E4               [12] 1167 	clr	a
      00242D 08               [12] 1168 	inc	r0
      00242E 36               [12] 1169 	addc	a,@r0
      00242F F6               [12] 1170 	mov	@r0,a
      002430 78 26            [12] 1171 	mov	r0,#_y
      002432 C3               [12] 1172 	clr	c
      002433 08               [12] 1173 	inc	r0
      002434 E6               [12] 1174 	mov	a,@r0
      002435 64 80            [12] 1175 	xrl	a,#0x80
      002437 94 A4            [12] 1176 	subb	a,#0xa4
      002439 40 A5            [24] 1177 	jc	00229$
                                   1178 ;	life.c:177: printstr("\r\n");
      00243B 90 31 96         [24] 1179 	mov	dptr,#___str_4
      00243E 75 F0 80         [24] 1180 	mov	b,#0x80
      002441 12 2B AC         [24] 1181 	lcall	_printstr
                                   1182 ;	life.c:261: else if (c == (int)'R') loadriu();
      002444                       1183 00105$:
                                   1184 ;	life.c:123: memcpy(u, iu, sizeof (iu));
      002444 E4               [12] 1185 	clr	a
      002445 C0 E0            [24] 1186 	push	acc
      002447 74 24            [12] 1187 	mov	a,#0x24
      002449 C0 E0            [24] 1188 	push	acc
      00244B 74 00            [12] 1189 	mov	a,#_iu
      00244D C0 E0            [24] 1190 	push	acc
      00244F 74 40            [12] 1191 	mov	a,#(_iu >> 8)
      002451 C0 E0            [24] 1192 	push	acc
      002453 E4               [12] 1193 	clr	a
      002454 C0 E0            [24] 1194 	push	acc
      002456 90 88 00         [24] 1195 	mov	dptr,#_u
      002459 75 F0 00         [24] 1196 	mov	b,#0x00
      00245C 12 2F 2F         [24] 1197 	lcall	___memcpy
      00245F E5 81            [12] 1198 	mov	a,sp
      002461 24 FB            [12] 1199 	add	a,#0xfb
      002463 F5 81            [12] 1200 	mov	sp,a
                                   1201 ;	life.c:124: memset(pu, 0, sizeof (pu));
      002465 E4               [12] 1202 	clr	a
      002466 C0 E0            [24] 1203 	push	acc
      002468 74 24            [12] 1204 	mov	a,#0x24
      00246A C0 E0            [24] 1205 	push	acc
      00246C E4               [12] 1206 	clr	a
      00246D C0 E0            [24] 1207 	push	acc
      00246F 90 64 00         [24] 1208 	mov	dptr,#_pu
      002472 75 F0 00         [24] 1209 	mov	b,#0x00
      002475 12 2F C2         [24] 1210 	lcall	_memset
      002478 15 81            [12] 1211 	dec	sp
      00247A 15 81            [12] 1212 	dec	sp
      00247C 15 81            [12] 1213 	dec	sp
                                   1214 ;	life.c:51: gen = 0ul;
      00247E 78 2B            [12] 1215 	mov	r0,#_gen
      002480 E4               [12] 1216 	clr	a
      002481 F6               [12] 1217 	mov	@r0,a
      002482 08               [12] 1218 	inc	r0
      002483 F6               [12] 1219 	mov	@r0,a
      002484 08               [12] 1220 	inc	r0
      002485 F6               [12] 1221 	mov	@r0,a
      002486 08               [12] 1222 	inc	r0
      002487 F6               [12] 1223 	mov	@r0,a
                                   1224 ;	life.c:52: genc2 = 0ul;
      002488 78 2F            [12] 1225 	mov	r0,#_genc2
      00248A F6               [12] 1226 	mov	@r0,a
      00248B 08               [12] 1227 	inc	r0
      00248C F6               [12] 1228 	mov	@r0,a
      00248D 08               [12] 1229 	inc	r0
      00248E F6               [12] 1230 	mov	@r0,a
      00248F 08               [12] 1231 	inc	r0
      002490 F6               [12] 1232 	mov	@r0,a
                                   1233 ;	life.c:53: genfx = 0ul;
      002491 78 33            [12] 1234 	mov	r0,#_genfx
      002493 F6               [12] 1235 	mov	@r0,a
      002494 08               [12] 1236 	inc	r0
      002495 F6               [12] 1237 	mov	@r0,a
      002496 08               [12] 1238 	inc	r0
      002497 F6               [12] 1239 	mov	@r0,a
      002498 08               [12] 1240 	inc	r0
      002499 F6               [12] 1241 	mov	@r0,a
                                   1242 ;	life.c:54: c2set = 0;
      00249A 78 37            [12] 1243 	mov	r0,#_c2set
      00249C 76 00            [12] 1244 	mov	@r0,#0x00
                                   1245 ;	life.c:55: fxset = 0;
      00249E 78 38            [12] 1246 	mov	r0,#_fxset
      0024A0 76 00            [12] 1247 	mov	@r0,#0x00
                                   1248 ;	life.c:263: showu(PRUNI, u);
      0024A2 74 00            [12] 1249 	mov	a,#_u
      0024A4 C0 E0            [24] 1250 	push	acc
      0024A6 74 88            [12] 1251 	mov	a,#(_u >> 8)
      0024A8 C0 E0            [24] 1252 	push	acc
      0024AA E4               [12] 1253 	clr	a
      0024AB C0 E0            [24] 1254 	push	acc
      0024AD 75 82 04         [24] 1255 	mov	dpl,#0x04
      0024B0 12 20 95         [24] 1256 	lcall	_showu
      0024B3 15 81            [12] 1257 	dec	sp
      0024B5 15 81            [12] 1258 	dec	sp
      0024B7 15 81            [12] 1259 	dec	sp
      0024B9 02 22 28         [24] 1260 	ljmp	00127$
      0024BC                       1261 00118$:
                                   1262 ;	life.c:264: } else if (c == (int)'O') showu(PRUNI, iu);
      0024BC BE 4F 1D         [24] 1263 	cjne	r6,#0x4f,00115$
      0024BF BF 00 1A         [24] 1264 	cjne	r7,#0x00,00115$
      0024C2 74 00            [12] 1265 	mov	a,#_iu
      0024C4 C0 E0            [24] 1266 	push	acc
      0024C6 74 40            [12] 1267 	mov	a,#(_iu >> 8)
      0024C8 C0 E0            [24] 1268 	push	acc
      0024CA E4               [12] 1269 	clr	a
      0024CB C0 E0            [24] 1270 	push	acc
      0024CD 75 82 04         [24] 1271 	mov	dpl,#0x04
      0024D0 12 20 95         [24] 1272 	lcall	_showu
      0024D3 15 81            [12] 1273 	dec	sp
      0024D5 15 81            [12] 1274 	dec	sp
      0024D7 15 81            [12] 1275 	dec	sp
      0024D9 02 22 28         [24] 1276 	ljmp	00127$
      0024DC                       1277 00115$:
                                   1278 ;	life.c:265: else if (c == (int)'P') showu(PRHDR | PRUNI, u);
      0024DC BE 50 1D         [24] 1279 	cjne	r6,#0x50,00112$
      0024DF BF 00 1A         [24] 1280 	cjne	r7,#0x00,00112$
      0024E2 74 00            [12] 1281 	mov	a,#_u
      0024E4 C0 E0            [24] 1282 	push	acc
      0024E6 74 88            [12] 1283 	mov	a,#(_u >> 8)
      0024E8 C0 E0            [24] 1284 	push	acc
      0024EA E4               [12] 1285 	clr	a
      0024EB C0 E0            [24] 1286 	push	acc
      0024ED 75 82 06         [24] 1287 	mov	dpl,#0x06
      0024F0 12 20 95         [24] 1288 	lcall	_showu
      0024F3 15 81            [12] 1289 	dec	sp
      0024F5 15 81            [12] 1290 	dec	sp
      0024F7 15 81            [12] 1291 	dec	sp
      0024F9 02 22 28         [24] 1292 	ljmp	00127$
      0024FC                       1293 00112$:
                                   1294 ;	life.c:266: else if (c == (int)'U') pruni = !pruni;
      0024FC BE 55 13         [24] 1295 	cjne	r6,#0x55,00109$
      0024FF BF 00 10         [24] 1296 	cjne	r7,#0x00,00109$
      002502 78 39            [12] 1297 	mov	r0,#_pruni
      002504 E6               [12] 1298 	mov	a,@r0
      002505 B4 01 00         [24] 1299 	cjne	a,#0x01,00500$
      002508                       1300 00500$:
      002508 92 00            [24] 1301 	mov	b0,c
      00250A 78 39            [12] 1302 	mov	r0,#_pruni
      00250C E4               [12] 1303 	clr	a
      00250D 33               [12] 1304 	rlc	a
      00250E F6               [12] 1305 	mov	@r0,a
      00250F 02 22 28         [24] 1306 	ljmp	00127$
      002512                       1307 00109$:
                                   1308 ;	life.c:267: else if (c == (int)'S') break;
      002512 BE 53 05         [24] 1309 	cjne	r6,#0x53,00501$
      002515 BF 00 02         [24] 1310 	cjne	r7,#0x00,00501$
      002518 80 03            [24] 1311 	sjmp	00502$
      00251A                       1312 00501$:
      00251A 02 22 28         [24] 1313 	ljmp	00127$
      00251D                       1314 00502$:
                                   1315 ;	life.c:270: for (i1 = 0; !i0 && !i1; ) {
      00251D 78 22            [12] 1316 	mov	r0,#_i1
      00251F 76 00            [12] 1317 	mov	@r0,#0x00
      002521                       1318 00237$:
      002521 78 21            [12] 1319 	mov	r0,#_i0
      002523 E6               [12] 1320 	mov	a,@r0
      002524 60 03            [24] 1321 	jz	00503$
      002526 02 2A 5D         [24] 1322 	ljmp	00150$
      002529                       1323 00503$:
      002529 78 22            [12] 1324 	mov	r0,#_i1
      00252B E6               [12] 1325 	mov	a,@r0
      00252C 60 03            [24] 1326 	jz	00504$
      00252E 02 2A 5D         [24] 1327 	ljmp	00150$
      002531                       1328 00504$:
                                   1329 ;	life.c:271: if (fxu()) {
      002531 78 38            [12] 1330 	mov	r0,#_fxset
      002533 E6               [12] 1331 	mov	a,@r0
      002534 60 23            [24] 1332 	jz	00130$
                                   1333 ;	life.c:272: printstr("FIXED AT ");
      002536 90 31 E5         [24] 1334 	mov	dptr,#___str_13
      002539 75 F0 80         [24] 1335 	mov	b,#0x80
      00253C 12 2B AC         [24] 1336 	lcall	_printstr
                                   1337 ;	life.c:273: showu(PRHDR, u);
      00253F 74 00            [12] 1338 	mov	a,#_u
      002541 C0 E0            [24] 1339 	push	acc
      002543 74 88            [12] 1340 	mov	a,#(_u >> 8)
      002545 C0 E0            [24] 1341 	push	acc
      002547 E4               [12] 1342 	clr	a
      002548 C0 E0            [24] 1343 	push	acc
      00254A 75 82 02         [24] 1344 	mov	dpl,#0x02
      00254D 12 20 95         [24] 1345 	lcall	_showu
      002550 15 81            [12] 1346 	dec	sp
      002552 15 81            [12] 1347 	dec	sp
      002554 15 81            [12] 1348 	dec	sp
                                   1349 ;	life.c:274: break;
      002556 02 2A 5D         [24] 1350 	ljmp	00150$
      002559                       1351 00130$:
                                   1352 ;	life.c:276: if (pruni) showu(PRCLR | PRHDR | PRUNI, u);
      002559 78 39            [12] 1353 	mov	r0,#_pruni
      00255B E6               [12] 1354 	mov	a,@r0
      00255C 60 19            [24] 1355 	jz	00132$
      00255E 74 00            [12] 1356 	mov	a,#_u
      002560 C0 E0            [24] 1357 	push	acc
      002562 74 88            [12] 1358 	mov	a,#(_u >> 8)
      002564 C0 E0            [24] 1359 	push	acc
      002566 E4               [12] 1360 	clr	a
      002567 C0 E0            [24] 1361 	push	acc
      002569 75 82 07         [24] 1362 	mov	dpl,#0x07
      00256C 12 20 95         [24] 1363 	lcall	_showu
      00256F 15 81            [12] 1364 	dec	sp
      002571 15 81            [12] 1365 	dec	sp
      002573 15 81            [12] 1366 	dec	sp
      002575 80 17            [24] 1367 	sjmp	00133$
      002577                       1368 00132$:
                                   1369 ;	life.c:277: else showu(PRHDR, u);
      002577 74 00            [12] 1370 	mov	a,#_u
      002579 C0 E0            [24] 1371 	push	acc
      00257B 74 88            [12] 1372 	mov	a,#(_u >> 8)
      00257D C0 E0            [24] 1373 	push	acc
      00257F E4               [12] 1374 	clr	a
      002580 C0 E0            [24] 1375 	push	acc
      002582 75 82 02         [24] 1376 	mov	dpl,#0x02
      002585 12 20 95         [24] 1377 	lcall	_showu
      002588 15 81            [12] 1378 	dec	sp
      00258A 15 81            [12] 1379 	dec	sp
      00258C 15 81            [12] 1380 	dec	sp
      00258E                       1381 00133$:
                                   1382 ;	life.c:61: gen++;
      00258E 78 2B            [12] 1383 	mov	r0,#_gen
      002590 06               [12] 1384 	inc	@r0
      002591 B6 00 0C         [24] 1385 	cjne	@r0,#0x00,00507$
      002594 08               [12] 1386 	inc	r0
      002595 06               [12] 1387 	inc	@r0
      002596 B6 00 07         [24] 1388 	cjne	@r0,#0x00,00507$
      002599 08               [12] 1389 	inc	r0
      00259A 06               [12] 1390 	inc	@r0
      00259B B6 00 02         [24] 1391 	cjne	@r0,#0x00,00507$
      00259E 08               [12] 1392 	inc	r0
      00259F 06               [12] 1393 	inc	@r0
      0025A0                       1394 00507$:
                                   1395 ;	life.c:183: fixed = 0;
      0025A0 78 29            [12] 1396 	mov	r0,#_fixed
      0025A2 76 00            [12] 1397 	mov	@r0,#0x00
                                   1398 ;	life.c:184: cycle2 = 0;
      0025A4 78 2A            [12] 1399 	mov	r0,#_cycle2
      0025A6 76 00            [12] 1400 	mov	@r0,#0x00
                                   1401 ;	life.c:186: OE76 = OE76_0;
      0025A8 78 23            [12] 1402 	mov	r0,#_OE76
      0025AA 76 3F            [12] 1403 	mov	@r0,#0x3f
                                   1404 ;	life.c:187: flashOE();
      0025AC 12 20 8D         [24] 1405 	lcall	_flashOE
                                   1406 ;	life.c:189: for (y = 0; y < H; y++) {
      0025AF 78 26            [12] 1407 	mov	r0,#_y
      0025B1 E4               [12] 1408 	clr	a
      0025B2 F6               [12] 1409 	mov	@r0,a
      0025B3 08               [12] 1410 	inc	r0
      0025B4 F6               [12] 1411 	mov	@r0,a
      0025B5                       1412 00233$:
                                   1413 ;	life.c:190: OE76 = OE76_0 | ((y & 0x0003u) << 6);
      0025B5 78 26            [12] 1414 	mov	r0,#_y
      0025B7 86 07            [24] 1415 	mov	ar7,@r0
      0025B9 53 07 03         [24] 1416 	anl	ar7,#0x03
      0025BC EF               [12] 1417 	mov	a,r7
      0025BD 03               [12] 1418 	rr	a
      0025BE 03               [12] 1419 	rr	a
      0025BF 54 C0            [12] 1420 	anl	a,#0xc0
      0025C1 FF               [12] 1421 	mov	r7,a
      0025C2 78 23            [12] 1422 	mov	r0,#_OE76
      0025C4 74 3F            [12] 1423 	mov	a,#0x3f
      0025C6 4F               [12] 1424 	orl	a,r7
      0025C7 F6               [12] 1425 	mov	@r0,a
                                   1426 ;	life.c:191: flashOE();
      0025C8 12 20 8D         [24] 1427 	lcall	_flashOE
                                   1428 ;	life.c:192: for (x = 0; x < W; x++) {
      0025CB 78 24            [12] 1429 	mov	r0,#_x
      0025CD E4               [12] 1430 	clr	a
      0025CE F6               [12] 1431 	mov	@r0,a
      0025CF 08               [12] 1432 	inc	r0
      0025D0 F6               [12] 1433 	mov	@r0,a
      0025D1                       1434 00231$:
                                   1435 ;	life.c:193: n = -u[A2D(W, y, x)];
      0025D1 78 26            [12] 1436 	mov	r0,#_y
      0025D3 E6               [12] 1437 	mov	a,@r0
      0025D4 C0 E0            [24] 1438 	push	acc
      0025D6 08               [12] 1439 	inc	r0
      0025D7 E6               [12] 1440 	mov	a,@r0
      0025D8 C0 E0            [24] 1441 	push	acc
      0025DA 90 00 30         [24] 1442 	mov	dptr,#0x0030
      0025DD 12 2E 91         [24] 1443 	lcall	__mulint
      0025E0 C8               [12] 1444 	xch	a,r0
      0025E1 E5 10            [12] 1445 	mov	a,_bp
      0025E3 24 04            [12] 1446 	add	a,#0x04
      0025E5 C8               [12] 1447 	xch	a,r0
      0025E6 A6 82            [24] 1448 	mov	@r0,dpl
      0025E8 08               [12] 1449 	inc	r0
      0025E9 A6 83            [24] 1450 	mov	@r0,dph
      0025EB 15 81            [12] 1451 	dec	sp
      0025ED 15 81            [12] 1452 	dec	sp
      0025EF E5 10            [12] 1453 	mov	a,_bp
      0025F1 24 04            [12] 1454 	add	a,#0x04
      0025F3 F8               [12] 1455 	mov	r0,a
      0025F4 79 24            [12] 1456 	mov	r1,#_x
      0025F6 E7               [12] 1457 	mov	a,@r1
      0025F7 26               [12] 1458 	add	a,@r0
      0025F8 C0 E0            [24] 1459 	push	acc
      0025FA 09               [12] 1460 	inc	r1
      0025FB E7               [12] 1461 	mov	a,@r1
      0025FC 08               [12] 1462 	inc	r0
      0025FD 36               [12] 1463 	addc	a,@r0
      0025FE C0 E0            [24] 1464 	push	acc
      002600 E5 10            [12] 1465 	mov	a,_bp
      002602 24 03            [12] 1466 	add	a,#0x03
      002604 F8               [12] 1467 	mov	r0,a
      002605 D0 E0            [24] 1468 	pop	acc
      002607 F6               [12] 1469 	mov	@r0,a
      002608 18               [12] 1470 	dec	r0
      002609 D0 E0            [24] 1471 	pop	acc
      00260B F6               [12] 1472 	mov	@r0,a
      00260C A8 10            [24] 1473 	mov	r0,_bp
      00260E 08               [12] 1474 	inc	r0
      00260F 08               [12] 1475 	inc	r0
      002610 E6               [12] 1476 	mov	a,@r0
      002611 24 00            [12] 1477 	add	a,#_u
      002613 F5 82            [12] 1478 	mov	dpl,a
      002615 08               [12] 1479 	inc	r0
      002616 E6               [12] 1480 	mov	a,@r0
      002617 34 88            [12] 1481 	addc	a,#(_u >> 8)
      002619 F5 83            [12] 1482 	mov	dph,a
      00261B E0               [24] 1483 	movx	a,@dptr
      00261C FB               [12] 1484 	mov	r3,a
      00261D A8 10            [24] 1485 	mov	r0,_bp
      00261F 08               [12] 1486 	inc	r0
      002620 C3               [12] 1487 	clr	c
      002621 E4               [12] 1488 	clr	a
      002622 9B               [12] 1489 	subb	a,r3
      002623 F6               [12] 1490 	mov	@r0,a
                                   1491 ;	life.c:198: UPDN(-1, -1);
      002624 78 26            [12] 1492 	mov	r0,#_y
      002626 74 BF            [12] 1493 	mov	a,#0xbf
      002628 26               [12] 1494 	add	a,@r0
      002629 FA               [12] 1495 	mov	r2,a
      00262A E4               [12] 1496 	clr	a
      00262B 08               [12] 1497 	inc	r0
      00262C 36               [12] 1498 	addc	a,@r0
      00262D FB               [12] 1499 	mov	r3,a
      00262E 74 C0            [12] 1500 	mov	a,#0xc0
      002630 C0 E0            [24] 1501 	push	acc
      002632 E4               [12] 1502 	clr	a
      002633 C0 E0            [24] 1503 	push	acc
      002635 8A 82            [24] 1504 	mov	dpl,r2
      002637 8B 83            [24] 1505 	mov	dph,r3
      002639 12 30 6F         [24] 1506 	lcall	__modsint
      00263C AA 82            [24] 1507 	mov	r2,dpl
      00263E AB 83            [24] 1508 	mov	r3,dph
      002640 15 81            [12] 1509 	dec	sp
      002642 15 81            [12] 1510 	dec	sp
      002644 C0 02            [24] 1511 	push	ar2
      002646 C0 03            [24] 1512 	push	ar3
      002648 90 00 30         [24] 1513 	mov	dptr,#0x0030
      00264B 12 2E 91         [24] 1514 	lcall	__mulint
      00264E AA 82            [24] 1515 	mov	r2,dpl
      002650 AB 83            [24] 1516 	mov	r3,dph
      002652 15 81            [12] 1517 	dec	sp
      002654 15 81            [12] 1518 	dec	sp
      002656 78 24            [12] 1519 	mov	r0,#_x
      002658 74 2F            [12] 1520 	mov	a,#0x2f
      00265A 26               [12] 1521 	add	a,@r0
      00265B FC               [12] 1522 	mov	r4,a
      00265C E4               [12] 1523 	clr	a
      00265D 08               [12] 1524 	inc	r0
      00265E 36               [12] 1525 	addc	a,@r0
      00265F FD               [12] 1526 	mov	r5,a
      002660 C0 03            [24] 1527 	push	ar3
      002662 C0 02            [24] 1528 	push	ar2
      002664 74 30            [12] 1529 	mov	a,#0x30
      002666 C0 E0            [24] 1530 	push	acc
      002668 E4               [12] 1531 	clr	a
      002669 C0 E0            [24] 1532 	push	acc
      00266B 8C 82            [24] 1533 	mov	dpl,r4
      00266D 8D 83            [24] 1534 	mov	dph,r5
      00266F 12 30 6F         [24] 1535 	lcall	__modsint
      002672 AC 82            [24] 1536 	mov	r4,dpl
      002674 AD 83            [24] 1537 	mov	r5,dph
      002676 15 81            [12] 1538 	dec	sp
      002678 15 81            [12] 1539 	dec	sp
      00267A D0 02            [24] 1540 	pop	ar2
      00267C D0 03            [24] 1541 	pop	ar3
      00267E EC               [12] 1542 	mov	a,r4
      00267F 2A               [12] 1543 	add	a,r2
      002680 FE               [12] 1544 	mov	r6,a
      002681 ED               [12] 1545 	mov	a,r5
      002682 3B               [12] 1546 	addc	a,r3
      002683 FF               [12] 1547 	mov	r7,a
      002684 EE               [12] 1548 	mov	a,r6
      002685 24 00            [12] 1549 	add	a,#_u
      002687 F5 82            [12] 1550 	mov	dpl,a
      002689 EF               [12] 1551 	mov	a,r7
      00268A 34 88            [12] 1552 	addc	a,#(_u >> 8)
      00268C F5 83            [12] 1553 	mov	dph,a
      00268E E0               [24] 1554 	movx	a,@dptr
      00268F FF               [12] 1555 	mov	r7,a
      002690 A8 10            [24] 1556 	mov	r0,_bp
      002692 08               [12] 1557 	inc	r0
      002693 EF               [12] 1558 	mov	a,r7
      002694 26               [12] 1559 	add	a,@r0
      002695 F6               [12] 1560 	mov	@r0,a
                                   1561 ;	life.c:199: UPDN(-1, 0);
      002696 78 24            [12] 1562 	mov	r0,#_x
      002698 74 30            [12] 1563 	mov	a,#0x30
      00269A 26               [12] 1564 	add	a,@r0
      00269B FE               [12] 1565 	mov	r6,a
      00269C E4               [12] 1566 	clr	a
      00269D 08               [12] 1567 	inc	r0
      00269E 36               [12] 1568 	addc	a,@r0
      00269F FF               [12] 1569 	mov	r7,a
      0026A0 C0 05            [24] 1570 	push	ar5
      0026A2 C0 04            [24] 1571 	push	ar4
      0026A4 C0 03            [24] 1572 	push	ar3
      0026A6 C0 02            [24] 1573 	push	ar2
      0026A8 74 30            [12] 1574 	mov	a,#0x30
      0026AA C0 E0            [24] 1575 	push	acc
      0026AC E4               [12] 1576 	clr	a
      0026AD C0 E0            [24] 1577 	push	acc
      0026AF 8E 82            [24] 1578 	mov	dpl,r6
      0026B1 8F 83            [24] 1579 	mov	dph,r7
      0026B3 12 30 6F         [24] 1580 	lcall	__modsint
      0026B6 C8               [12] 1581 	xch	a,r0
      0026B7 E5 10            [12] 1582 	mov	a,_bp
      0026B9 24 06            [12] 1583 	add	a,#0x06
      0026BB C8               [12] 1584 	xch	a,r0
      0026BC A6 82            [24] 1585 	mov	@r0,dpl
      0026BE 08               [12] 1586 	inc	r0
      0026BF A6 83            [24] 1587 	mov	@r0,dph
      0026C1 15 81            [12] 1588 	dec	sp
      0026C3 15 81            [12] 1589 	dec	sp
      0026C5 D0 02            [24] 1590 	pop	ar2
      0026C7 D0 03            [24] 1591 	pop	ar3
      0026C9 E5 10            [12] 1592 	mov	a,_bp
      0026CB 24 06            [12] 1593 	add	a,#0x06
      0026CD F8               [12] 1594 	mov	r0,a
      0026CE E6               [12] 1595 	mov	a,@r0
      0026CF 2A               [12] 1596 	add	a,r2
      0026D0 FE               [12] 1597 	mov	r6,a
      0026D1 08               [12] 1598 	inc	r0
      0026D2 E6               [12] 1599 	mov	a,@r0
      0026D3 3B               [12] 1600 	addc	a,r3
      0026D4 FF               [12] 1601 	mov	r7,a
      0026D5 EE               [12] 1602 	mov	a,r6
      0026D6 24 00            [12] 1603 	add	a,#_u
      0026D8 F5 82            [12] 1604 	mov	dpl,a
      0026DA EF               [12] 1605 	mov	a,r7
      0026DB 34 88            [12] 1606 	addc	a,#(_u >> 8)
      0026DD F5 83            [12] 1607 	mov	dph,a
      0026DF E0               [24] 1608 	movx	a,@dptr
      0026E0 FF               [12] 1609 	mov	r7,a
      0026E1 A8 10            [24] 1610 	mov	r0,_bp
      0026E3 08               [12] 1611 	inc	r0
      0026E4 EF               [12] 1612 	mov	a,r7
      0026E5 26               [12] 1613 	add	a,@r0
      0026E6 F6               [12] 1614 	mov	@r0,a
                                   1615 ;	life.c:200: UPDN(-1, 1);
      0026E7 78 24            [12] 1616 	mov	r0,#_x
      0026E9 74 31            [12] 1617 	mov	a,#0x31
      0026EB 26               [12] 1618 	add	a,@r0
      0026EC FE               [12] 1619 	mov	r6,a
      0026ED E4               [12] 1620 	clr	a
      0026EE 08               [12] 1621 	inc	r0
      0026EF 36               [12] 1622 	addc	a,@r0
      0026F0 FF               [12] 1623 	mov	r7,a
      0026F1 C0 03            [24] 1624 	push	ar3
      0026F3 C0 02            [24] 1625 	push	ar2
      0026F5 74 30            [12] 1626 	mov	a,#0x30
      0026F7 C0 E0            [24] 1627 	push	acc
      0026F9 E4               [12] 1628 	clr	a
      0026FA C0 E0            [24] 1629 	push	acc
      0026FC 8E 82            [24] 1630 	mov	dpl,r6
      0026FE 8F 83            [24] 1631 	mov	dph,r7
      002700 12 30 6F         [24] 1632 	lcall	__modsint
      002703 AE 82            [24] 1633 	mov	r6,dpl
      002705 AF 83            [24] 1634 	mov	r7,dph
      002707 15 81            [12] 1635 	dec	sp
      002709 15 81            [12] 1636 	dec	sp
      00270B D0 02            [24] 1637 	pop	ar2
      00270D D0 03            [24] 1638 	pop	ar3
      00270F D0 04            [24] 1639 	pop	ar4
      002711 D0 05            [24] 1640 	pop	ar5
      002713 EE               [12] 1641 	mov	a,r6
      002714 2A               [12] 1642 	add	a,r2
      002715 FA               [12] 1643 	mov	r2,a
      002716 EF               [12] 1644 	mov	a,r7
      002717 3B               [12] 1645 	addc	a,r3
      002718 FB               [12] 1646 	mov	r3,a
      002719 EA               [12] 1647 	mov	a,r2
      00271A 24 00            [12] 1648 	add	a,#_u
      00271C F5 82            [12] 1649 	mov	dpl,a
      00271E EB               [12] 1650 	mov	a,r3
      00271F 34 88            [12] 1651 	addc	a,#(_u >> 8)
      002721 F5 83            [12] 1652 	mov	dph,a
      002723 E0               [24] 1653 	movx	a,@dptr
      002724 FB               [12] 1654 	mov	r3,a
      002725 A8 10            [24] 1655 	mov	r0,_bp
      002727 08               [12] 1656 	inc	r0
      002728 EB               [12] 1657 	mov	a,r3
      002729 26               [12] 1658 	add	a,@r0
      00272A F6               [12] 1659 	mov	@r0,a
                                   1660 ;	life.c:201: UPDN(0, -1);
      00272B 78 26            [12] 1661 	mov	r0,#_y
      00272D 74 C0            [12] 1662 	mov	a,#0xc0
      00272F 26               [12] 1663 	add	a,@r0
      002730 FA               [12] 1664 	mov	r2,a
      002731 E4               [12] 1665 	clr	a
      002732 08               [12] 1666 	inc	r0
      002733 36               [12] 1667 	addc	a,@r0
      002734 FB               [12] 1668 	mov	r3,a
      002735 C0 07            [24] 1669 	push	ar7
      002737 C0 06            [24] 1670 	push	ar6
      002739 C0 05            [24] 1671 	push	ar5
      00273B C0 04            [24] 1672 	push	ar4
      00273D 74 C0            [12] 1673 	mov	a,#0xc0
      00273F C0 E0            [24] 1674 	push	acc
      002741 E4               [12] 1675 	clr	a
      002742 C0 E0            [24] 1676 	push	acc
      002744 8A 82            [24] 1677 	mov	dpl,r2
      002746 8B 83            [24] 1678 	mov	dph,r3
      002748 12 30 6F         [24] 1679 	lcall	__modsint
      00274B AA 82            [24] 1680 	mov	r2,dpl
      00274D AB 83            [24] 1681 	mov	r3,dph
      00274F 15 81            [12] 1682 	dec	sp
      002751 15 81            [12] 1683 	dec	sp
      002753 C0 02            [24] 1684 	push	ar2
      002755 C0 03            [24] 1685 	push	ar3
      002757 90 00 30         [24] 1686 	mov	dptr,#0x0030
      00275A 12 2E 91         [24] 1687 	lcall	__mulint
      00275D C8               [12] 1688 	xch	a,r0
      00275E E5 10            [12] 1689 	mov	a,_bp
      002760 24 08            [12] 1690 	add	a,#0x08
      002762 C8               [12] 1691 	xch	a,r0
      002763 A6 82            [24] 1692 	mov	@r0,dpl
      002765 08               [12] 1693 	inc	r0
      002766 A6 83            [24] 1694 	mov	@r0,dph
      002768 15 81            [12] 1695 	dec	sp
      00276A 15 81            [12] 1696 	dec	sp
      00276C D0 04            [24] 1697 	pop	ar4
      00276E D0 05            [24] 1698 	pop	ar5
      002770 D0 06            [24] 1699 	pop	ar6
      002772 D0 07            [24] 1700 	pop	ar7
      002774 E5 10            [12] 1701 	mov	a,_bp
      002776 24 08            [12] 1702 	add	a,#0x08
      002778 F8               [12] 1703 	mov	r0,a
      002779 EC               [12] 1704 	mov	a,r4
      00277A 26               [12] 1705 	add	a,@r0
      00277B FA               [12] 1706 	mov	r2,a
      00277C ED               [12] 1707 	mov	a,r5
      00277D 08               [12] 1708 	inc	r0
      00277E 36               [12] 1709 	addc	a,@r0
      00277F FB               [12] 1710 	mov	r3,a
      002780 EA               [12] 1711 	mov	a,r2
      002781 24 00            [12] 1712 	add	a,#_u
      002783 F5 82            [12] 1713 	mov	dpl,a
      002785 EB               [12] 1714 	mov	a,r3
      002786 34 88            [12] 1715 	addc	a,#(_u >> 8)
      002788 F5 83            [12] 1716 	mov	dph,a
      00278A E0               [24] 1717 	movx	a,@dptr
      00278B FB               [12] 1718 	mov	r3,a
      00278C A8 10            [24] 1719 	mov	r0,_bp
      00278E 08               [12] 1720 	inc	r0
      00278F EB               [12] 1721 	mov	a,r3
      002790 26               [12] 1722 	add	a,@r0
      002791 F6               [12] 1723 	mov	@r0,a
                                   1724 ;	life.c:202: UPDN(0, 0);
      002792 E5 10            [12] 1725 	mov	a,_bp
      002794 24 08            [12] 1726 	add	a,#0x08
      002796 F8               [12] 1727 	mov	r0,a
      002797 E5 10            [12] 1728 	mov	a,_bp
      002799 24 06            [12] 1729 	add	a,#0x06
      00279B F9               [12] 1730 	mov	r1,a
      00279C E7               [12] 1731 	mov	a,@r1
      00279D 26               [12] 1732 	add	a,@r0
      00279E FA               [12] 1733 	mov	r2,a
      00279F 09               [12] 1734 	inc	r1
      0027A0 E7               [12] 1735 	mov	a,@r1
      0027A1 08               [12] 1736 	inc	r0
      0027A2 36               [12] 1737 	addc	a,@r0
      0027A3 FB               [12] 1738 	mov	r3,a
      0027A4 EA               [12] 1739 	mov	a,r2
      0027A5 24 00            [12] 1740 	add	a,#_u
      0027A7 F5 82            [12] 1741 	mov	dpl,a
      0027A9 EB               [12] 1742 	mov	a,r3
      0027AA 34 88            [12] 1743 	addc	a,#(_u >> 8)
      0027AC F5 83            [12] 1744 	mov	dph,a
      0027AE E0               [24] 1745 	movx	a,@dptr
      0027AF FB               [12] 1746 	mov	r3,a
      0027B0 A8 10            [24] 1747 	mov	r0,_bp
      0027B2 08               [12] 1748 	inc	r0
      0027B3 EB               [12] 1749 	mov	a,r3
      0027B4 26               [12] 1750 	add	a,@r0
      0027B5 F6               [12] 1751 	mov	@r0,a
                                   1752 ;	life.c:203: UPDN(0, 1);
      0027B6 E5 10            [12] 1753 	mov	a,_bp
      0027B8 24 08            [12] 1754 	add	a,#0x08
      0027BA F8               [12] 1755 	mov	r0,a
      0027BB EE               [12] 1756 	mov	a,r6
      0027BC 26               [12] 1757 	add	a,@r0
      0027BD FA               [12] 1758 	mov	r2,a
      0027BE EF               [12] 1759 	mov	a,r7
      0027BF 08               [12] 1760 	inc	r0
      0027C0 36               [12] 1761 	addc	a,@r0
      0027C1 FB               [12] 1762 	mov	r3,a
      0027C2 EA               [12] 1763 	mov	a,r2
      0027C3 24 00            [12] 1764 	add	a,#_u
      0027C5 F5 82            [12] 1765 	mov	dpl,a
      0027C7 EB               [12] 1766 	mov	a,r3
      0027C8 34 88            [12] 1767 	addc	a,#(_u >> 8)
      0027CA F5 83            [12] 1768 	mov	dph,a
      0027CC E0               [24] 1769 	movx	a,@dptr
      0027CD FB               [12] 1770 	mov	r3,a
      0027CE A8 10            [24] 1771 	mov	r0,_bp
      0027D0 08               [12] 1772 	inc	r0
      0027D1 E5 10            [12] 1773 	mov	a,_bp
      0027D3 24 08            [12] 1774 	add	a,#0x08
      0027D5 F9               [12] 1775 	mov	r1,a
      0027D6 EB               [12] 1776 	mov	a,r3
      0027D7 26               [12] 1777 	add	a,@r0
      0027D8 F7               [12] 1778 	mov	@r1,a
                                   1779 ;	life.c:204: UPDN(1, -1);
      0027D9 78 26            [12] 1780 	mov	r0,#_y
      0027DB 74 C1            [12] 1781 	mov	a,#0xc1
      0027DD 26               [12] 1782 	add	a,@r0
      0027DE FA               [12] 1783 	mov	r2,a
      0027DF E4               [12] 1784 	clr	a
      0027E0 08               [12] 1785 	inc	r0
      0027E1 36               [12] 1786 	addc	a,@r0
      0027E2 FB               [12] 1787 	mov	r3,a
      0027E3 C0 07            [24] 1788 	push	ar7
      0027E5 C0 06            [24] 1789 	push	ar6
      0027E7 C0 05            [24] 1790 	push	ar5
      0027E9 C0 04            [24] 1791 	push	ar4
      0027EB 74 C0            [12] 1792 	mov	a,#0xc0
      0027ED C0 E0            [24] 1793 	push	acc
      0027EF E4               [12] 1794 	clr	a
      0027F0 C0 E0            [24] 1795 	push	acc
      0027F2 8A 82            [24] 1796 	mov	dpl,r2
      0027F4 8B 83            [24] 1797 	mov	dph,r3
      0027F6 12 30 6F         [24] 1798 	lcall	__modsint
      0027F9 AA 82            [24] 1799 	mov	r2,dpl
      0027FB AB 83            [24] 1800 	mov	r3,dph
      0027FD 15 81            [12] 1801 	dec	sp
      0027FF 15 81            [12] 1802 	dec	sp
      002801 C0 02            [24] 1803 	push	ar2
      002803 C0 03            [24] 1804 	push	ar3
      002805 90 00 30         [24] 1805 	mov	dptr,#0x0030
      002808 12 2E 91         [24] 1806 	lcall	__mulint
      00280B AA 82            [24] 1807 	mov	r2,dpl
      00280D AB 83            [24] 1808 	mov	r3,dph
      00280F 15 81            [12] 1809 	dec	sp
      002811 15 81            [12] 1810 	dec	sp
      002813 D0 04            [24] 1811 	pop	ar4
      002815 D0 05            [24] 1812 	pop	ar5
      002817 D0 06            [24] 1813 	pop	ar6
      002819 D0 07            [24] 1814 	pop	ar7
      00281B EC               [12] 1815 	mov	a,r4
      00281C 2A               [12] 1816 	add	a,r2
      00281D FC               [12] 1817 	mov	r4,a
      00281E ED               [12] 1818 	mov	a,r5
      00281F 3B               [12] 1819 	addc	a,r3
      002820 FD               [12] 1820 	mov	r5,a
      002821 EC               [12] 1821 	mov	a,r4
      002822 24 00            [12] 1822 	add	a,#_u
      002824 F5 82            [12] 1823 	mov	dpl,a
      002826 ED               [12] 1824 	mov	a,r5
      002827 34 88            [12] 1825 	addc	a,#(_u >> 8)
      002829 F5 83            [12] 1826 	mov	dph,a
      00282B E0               [24] 1827 	movx	a,@dptr
      00282C FD               [12] 1828 	mov	r5,a
      00282D E5 10            [12] 1829 	mov	a,_bp
      00282F 24 08            [12] 1830 	add	a,#0x08
      002831 F8               [12] 1831 	mov	r0,a
      002832 E5 10            [12] 1832 	mov	a,_bp
      002834 24 08            [12] 1833 	add	a,#0x08
      002836 F9               [12] 1834 	mov	r1,a
      002837 ED               [12] 1835 	mov	a,r5
      002838 26               [12] 1836 	add	a,@r0
      002839 F7               [12] 1837 	mov	@r1,a
                                   1838 ;	life.c:205: UPDN(1, 0);
      00283A E5 10            [12] 1839 	mov	a,_bp
      00283C 24 06            [12] 1840 	add	a,#0x06
      00283E F8               [12] 1841 	mov	r0,a
      00283F E6               [12] 1842 	mov	a,@r0
      002840 2A               [12] 1843 	add	a,r2
      002841 FC               [12] 1844 	mov	r4,a
      002842 08               [12] 1845 	inc	r0
      002843 E6               [12] 1846 	mov	a,@r0
      002844 3B               [12] 1847 	addc	a,r3
      002845 FD               [12] 1848 	mov	r5,a
      002846 EC               [12] 1849 	mov	a,r4
      002847 24 00            [12] 1850 	add	a,#_u
      002849 F5 82            [12] 1851 	mov	dpl,a
      00284B ED               [12] 1852 	mov	a,r5
      00284C 34 88            [12] 1853 	addc	a,#(_u >> 8)
      00284E F5 83            [12] 1854 	mov	dph,a
      002850 E0               [24] 1855 	movx	a,@dptr
      002851 FD               [12] 1856 	mov	r5,a
      002852 E5 10            [12] 1857 	mov	a,_bp
      002854 24 08            [12] 1858 	add	a,#0x08
      002856 F8               [12] 1859 	mov	r0,a
      002857 ED               [12] 1860 	mov	a,r5
      002858 26               [12] 1861 	add	a,@r0
      002859 FD               [12] 1862 	mov	r5,a
                                   1863 ;	life.c:206: UPDN(1, 1);
      00285A EE               [12] 1864 	mov	a,r6
      00285B 2A               [12] 1865 	add	a,r2
      00285C FE               [12] 1866 	mov	r6,a
      00285D EF               [12] 1867 	mov	a,r7
      00285E 3B               [12] 1868 	addc	a,r3
      00285F FF               [12] 1869 	mov	r7,a
      002860 EE               [12] 1870 	mov	a,r6
      002861 24 00            [12] 1871 	add	a,#_u
      002863 F5 82            [12] 1872 	mov	dpl,a
      002865 EF               [12] 1873 	mov	a,r7
      002866 34 88            [12] 1874 	addc	a,#(_u >> 8)
      002868 F5 83            [12] 1875 	mov	dph,a
      00286A E0               [24] 1876 	movx	a,@dptr
      00286B 2D               [12] 1877 	add	a,r5
      00286C FF               [12] 1878 	mov	r7,a
      00286D 78 28            [12] 1879 	mov	r0,#_n
      00286F A6 07            [24] 1880 	mov	@r0,ar7
                                   1881 ;	life.c:209: nu[A2D(W, y, x)] = (n == 3) || ((n == 2) && u[A2D(W, y, x)]);
      002871 A8 10            [24] 1882 	mov	r0,_bp
      002873 08               [12] 1883 	inc	r0
      002874 08               [12] 1884 	inc	r0
      002875 E6               [12] 1885 	mov	a,@r0
      002876 24 00            [12] 1886 	add	a,#_nu
      002878 FD               [12] 1887 	mov	r5,a
      002879 08               [12] 1888 	inc	r0
      00287A E6               [12] 1889 	mov	a,@r0
      00287B 34 AC            [12] 1890 	addc	a,#(_nu >> 8)
      00287D FE               [12] 1891 	mov	r6,a
      00287E BF 03 02         [24] 1892 	cjne	r7,#0x03,00508$
      002881 80 25            [24] 1893 	sjmp	00246$
      002883                       1894 00508$:
      002883 BF 02 1E         [24] 1895 	cjne	r7,#0x02,00245$
      002886 E5 10            [12] 1896 	mov	a,_bp
      002888 24 04            [12] 1897 	add	a,#0x04
      00288A F8               [12] 1898 	mov	r0,a
      00288B 79 24            [12] 1899 	mov	r1,#_x
      00288D E7               [12] 1900 	mov	a,@r1
      00288E 26               [12] 1901 	add	a,@r0
      00288F FC               [12] 1902 	mov	r4,a
      002890 09               [12] 1903 	inc	r1
      002891 E7               [12] 1904 	mov	a,@r1
      002892 08               [12] 1905 	inc	r0
      002893 36               [12] 1906 	addc	a,@r0
      002894 FF               [12] 1907 	mov	r7,a
      002895 EC               [12] 1908 	mov	a,r4
      002896 24 00            [12] 1909 	add	a,#_u
      002898 FC               [12] 1910 	mov	r4,a
      002899 EF               [12] 1911 	mov	a,r7
      00289A 34 88            [12] 1912 	addc	a,#(_u >> 8)
      00289C FF               [12] 1913 	mov	r7,a
      00289D 8C 82            [24] 1914 	mov	dpl,r4
      00289F 8F 83            [24] 1915 	mov	dph,r7
      0028A1 E0               [24] 1916 	movx	a,@dptr
      0028A2 70 04            [24] 1917 	jnz	00246$
      0028A4                       1918 00245$:
                                   1919 ;	assignBit
      0028A4 C2 00            [12] 1920 	clr	b0
      0028A6 80 02            [24] 1921 	sjmp	00247$
      0028A8                       1922 00246$:
                                   1923 ;	assignBit
      0028A8 D2 00            [12] 1924 	setb	b0
      0028AA                       1925 00247$:
      0028AA A2 00            [12] 1926 	mov	c,b0
      0028AC E4               [12] 1927 	clr	a
      0028AD 33               [12] 1928 	rlc	a
      0028AE 8D 82            [24] 1929 	mov	dpl,r5
      0028B0 8E 83            [24] 1930 	mov	dph,r6
      0028B2 F0               [24] 1931 	movx	@dptr,a
                                   1932 ;	life.c:210: cycle2 |= pu[A2D(W, y, x)] ^ nu[A2D(W, y, x)];
      0028B3 78 26            [12] 1933 	mov	r0,#_y
      0028B5 E6               [12] 1934 	mov	a,@r0
      0028B6 C0 E0            [24] 1935 	push	acc
      0028B8 08               [12] 1936 	inc	r0
      0028B9 E6               [12] 1937 	mov	a,@r0
      0028BA C0 E0            [24] 1938 	push	acc
      0028BC 90 00 30         [24] 1939 	mov	dptr,#0x0030
      0028BF 12 2E 91         [24] 1940 	lcall	__mulint
      0028C2 AE 82            [24] 1941 	mov	r6,dpl
      0028C4 AF 83            [24] 1942 	mov	r7,dph
      0028C6 15 81            [12] 1943 	dec	sp
      0028C8 15 81            [12] 1944 	dec	sp
      0028CA 78 24            [12] 1945 	mov	r0,#_x
      0028CC E6               [12] 1946 	mov	a,@r0
      0028CD 2E               [12] 1947 	add	a,r6
      0028CE FE               [12] 1948 	mov	r6,a
      0028CF 08               [12] 1949 	inc	r0
      0028D0 E6               [12] 1950 	mov	a,@r0
      0028D1 3F               [12] 1951 	addc	a,r7
      0028D2 FF               [12] 1952 	mov	r7,a
      0028D3 EE               [12] 1953 	mov	a,r6
      0028D4 24 00            [12] 1954 	add	a,#_pu
      0028D6 F5 82            [12] 1955 	mov	dpl,a
      0028D8 EF               [12] 1956 	mov	a,r7
      0028D9 34 64            [12] 1957 	addc	a,#(_pu >> 8)
      0028DB F5 83            [12] 1958 	mov	dph,a
      0028DD E0               [24] 1959 	movx	a,@dptr
      0028DE FD               [12] 1960 	mov	r5,a
      0028DF EE               [12] 1961 	mov	a,r6
      0028E0 24 00            [12] 1962 	add	a,#_nu
      0028E2 F5 82            [12] 1963 	mov	dpl,a
      0028E4 EF               [12] 1964 	mov	a,r7
      0028E5 34 AC            [12] 1965 	addc	a,#(_nu >> 8)
      0028E7 F5 83            [12] 1966 	mov	dph,a
      0028E9 E0               [24] 1967 	movx	a,@dptr
      0028EA FC               [12] 1968 	mov	r4,a
      0028EB 6D               [12] 1969 	xrl	a,r5
      0028EC 78 2A            [12] 1970 	mov	r0,#_cycle2
      0028EE 46               [12] 1971 	orl	a,@r0
      0028EF F6               [12] 1972 	mov	@r0,a
                                   1973 ;	life.c:211: fixed |= u[A2D(W, y, x)] ^ nu[A2D(W, y, x)];
      0028F0 EE               [12] 1974 	mov	a,r6
      0028F1 24 00            [12] 1975 	add	a,#_u
      0028F3 F5 82            [12] 1976 	mov	dpl,a
      0028F5 EF               [12] 1977 	mov	a,r7
      0028F6 34 88            [12] 1978 	addc	a,#(_u >> 8)
      0028F8 F5 83            [12] 1979 	mov	dph,a
      0028FA E0               [24] 1980 	movx	a,@dptr
      0028FB FF               [12] 1981 	mov	r7,a
      0028FC EC               [12] 1982 	mov	a,r4
      0028FD 6F               [12] 1983 	xrl	a,r7
      0028FE 78 29            [12] 1984 	mov	r0,#_fixed
      002900 46               [12] 1985 	orl	a,@r0
      002901 F6               [12] 1986 	mov	@r0,a
                                   1987 ;	life.c:192: for (x = 0; x < W; x++) {
      002902 78 24            [12] 1988 	mov	r0,#_x
      002904 06               [12] 1989 	inc	@r0
      002905 B6 00 02         [24] 1990 	cjne	@r0,#0x00,00512$
      002908 08               [12] 1991 	inc	r0
      002909 06               [12] 1992 	inc	@r0
      00290A                       1993 00512$:
      00290A 78 24            [12] 1994 	mov	r0,#_x
      00290C C3               [12] 1995 	clr	c
      00290D E6               [12] 1996 	mov	a,@r0
      00290E 94 30            [12] 1997 	subb	a,#0x30
      002910 08               [12] 1998 	inc	r0
      002911 E6               [12] 1999 	mov	a,@r0
      002912 64 80            [12] 2000 	xrl	a,#0x80
      002914 94 80            [12] 2001 	subb	a,#0x80
      002916 50 03            [24] 2002 	jnc	00513$
      002918 02 25 D1         [24] 2003 	ljmp	00231$
      00291B                       2004 00513$:
                                   2005 ;	life.c:189: for (y = 0; y < H; y++) {
      00291B 78 26            [12] 2006 	mov	r0,#_y
      00291D 06               [12] 2007 	inc	@r0
      00291E B6 00 02         [24] 2008 	cjne	@r0,#0x00,00514$
      002921 08               [12] 2009 	inc	r0
      002922 06               [12] 2010 	inc	@r0
      002923                       2011 00514$:
      002923 78 26            [12] 2012 	mov	r0,#_y
      002925 C3               [12] 2013 	clr	c
      002926 E6               [12] 2014 	mov	a,@r0
      002927 94 C0            [12] 2015 	subb	a,#0xc0
      002929 08               [12] 2016 	inc	r0
      00292A E6               [12] 2017 	mov	a,@r0
      00292B 64 80            [12] 2018 	xrl	a,#0x80
      00292D 94 80            [12] 2019 	subb	a,#0x80
      00292F 50 03            [24] 2020 	jnc	00515$
      002931 02 25 B5         [24] 2021 	ljmp	00233$
      002934                       2022 00515$:
                                   2023 ;	life.c:215: OE76 = OE76_0;
      002934 78 23            [12] 2024 	mov	r0,#_OE76
      002936 76 3F            [12] 2025 	mov	@r0,#0x3f
                                   2026 ;	life.c:216: flashOE();
      002938 12 20 8D         [24] 2027 	lcall	_flashOE
                                   2028 ;	life.c:218: cycle2 = !cycle2;
      00293B 78 2A            [12] 2029 	mov	r0,#_cycle2
      00293D E6               [12] 2030 	mov	a,@r0
      00293E B4 01 00         [24] 2031 	cjne	a,#0x01,00516$
      002941                       2032 00516$:
      002941 92 00            [24] 2033 	mov	b0,c
      002943 78 2A            [12] 2034 	mov	r0,#_cycle2
      002945 E4               [12] 2035 	clr	a
      002946 33               [12] 2036 	rlc	a
      002947 F6               [12] 2037 	mov	@r0,a
                                   2038 ;	life.c:219: fixed = !fixed;
      002948 78 29            [12] 2039 	mov	r0,#_fixed
      00294A E6               [12] 2040 	mov	a,@r0
      00294B B4 01 00         [24] 2041 	cjne	a,#0x01,00517$
      00294E                       2042 00517$:
      00294E 92 00            [24] 2043 	mov	b0,c
      002950 78 29            [12] 2044 	mov	r0,#_fixed
      002952 E4               [12] 2045 	clr	a
      002953 33               [12] 2046 	rlc	a
      002954 F6               [12] 2047 	mov	@r0,a
                                   2048 ;	life.c:221: memcpy(pu, u, sizeof (u));
      002955 E4               [12] 2049 	clr	a
      002956 C0 E0            [24] 2050 	push	acc
      002958 74 24            [12] 2051 	mov	a,#0x24
      00295A C0 E0            [24] 2052 	push	acc
      00295C 74 00            [12] 2053 	mov	a,#_u
      00295E C0 E0            [24] 2054 	push	acc
      002960 74 88            [12] 2055 	mov	a,#(_u >> 8)
      002962 C0 E0            [24] 2056 	push	acc
      002964 E4               [12] 2057 	clr	a
      002965 C0 E0            [24] 2058 	push	acc
      002967 90 64 00         [24] 2059 	mov	dptr,#_pu
      00296A 75 F0 00         [24] 2060 	mov	b,#0x00
      00296D 12 2F 2F         [24] 2061 	lcall	___memcpy
      002970 E5 81            [12] 2062 	mov	a,sp
      002972 24 FB            [12] 2063 	add	a,#0xfb
      002974 F5 81            [12] 2064 	mov	sp,a
                                   2065 ;	life.c:222: memcpy(u, nu, sizeof (nu));
      002976 E4               [12] 2066 	clr	a
      002977 C0 E0            [24] 2067 	push	acc
      002979 74 24            [12] 2068 	mov	a,#0x24
      00297B C0 E0            [24] 2069 	push	acc
      00297D 74 00            [12] 2070 	mov	a,#_nu
      00297F C0 E0            [24] 2071 	push	acc
      002981 74 AC            [12] 2072 	mov	a,#(_nu >> 8)
      002983 C0 E0            [24] 2073 	push	acc
      002985 E4               [12] 2074 	clr	a
      002986 C0 E0            [24] 2075 	push	acc
      002988 90 88 00         [24] 2076 	mov	dptr,#_u
      00298B 75 F0 00         [24] 2077 	mov	b,#0x00
      00298E 12 2F 2F         [24] 2078 	lcall	___memcpy
      002991 E5 81            [12] 2079 	mov	a,sp
      002993 24 FB            [12] 2080 	add	a,#0xfb
      002995 F5 81            [12] 2081 	mov	sp,a
                                   2082 ;	life.c:280: if (fixed) {
      002997 78 29            [12] 2083 	mov	r0,#_fixed
      002999 E6               [12] 2084 	mov	a,@r0
      00299A 60 41            [24] 2085 	jz	00135$
                                   2086 ;	life.c:67: genfx = gen;
      00299C 78 2B            [12] 2087 	mov	r0,#_gen
      00299E 86 04            [24] 2088 	mov	ar4,@r0
      0029A0 08               [12] 2089 	inc	r0
      0029A1 86 05            [24] 2090 	mov	ar5,@r0
      0029A3 08               [12] 2091 	inc	r0
      0029A4 86 06            [24] 2092 	mov	ar6,@r0
      0029A6 08               [12] 2093 	inc	r0
      0029A7 86 07            [24] 2094 	mov	ar7,@r0
      0029A9 78 33            [12] 2095 	mov	r0,#_genfx
      0029AB A6 04            [24] 2096 	mov	@r0,ar4
      0029AD 08               [12] 2097 	inc	r0
      0029AE A6 05            [24] 2098 	mov	@r0,ar5
      0029B0 08               [12] 2099 	inc	r0
      0029B1 A6 06            [24] 2100 	mov	@r0,ar6
      0029B3 08               [12] 2101 	inc	r0
      0029B4 A6 07            [24] 2102 	mov	@r0,ar7
                                   2103 ;	life.c:68: fxset = 1;
      0029B6 78 38            [12] 2104 	mov	r0,#_fxset
      0029B8 76 01            [12] 2105 	mov	@r0,#0x01
                                   2106 ;	life.c:282: printstr("FIXED AT ");
      0029BA 90 31 E5         [24] 2107 	mov	dptr,#___str_13
      0029BD 75 F0 80         [24] 2108 	mov	b,#0x80
      0029C0 12 2B AC         [24] 2109 	lcall	_printstr
                                   2110 ;	life.c:283: showu(PRHDR, u);
      0029C3 74 00            [12] 2111 	mov	a,#_u
      0029C5 C0 E0            [24] 2112 	push	acc
      0029C7 74 88            [12] 2113 	mov	a,#(_u >> 8)
      0029C9 C0 E0            [24] 2114 	push	acc
      0029CB E4               [12] 2115 	clr	a
      0029CC C0 E0            [24] 2116 	push	acc
      0029CE 75 82 02         [24] 2117 	mov	dpl,#0x02
      0029D1 12 20 95         [24] 2118 	lcall	_showu
      0029D4 15 81            [12] 2119 	dec	sp
      0029D6 15 81            [12] 2120 	dec	sp
      0029D8 15 81            [12] 2121 	dec	sp
                                   2122 ;	life.c:284: break;
      0029DA 02 2A 5D         [24] 2123 	ljmp	00150$
      0029DD                       2124 00135$:
                                   2125 ;	life.c:286: if (cycle2) {
      0029DD 78 2A            [12] 2126 	mov	r0,#_cycle2
      0029DF E6               [12] 2127 	mov	a,@r0
      0029E0 60 23            [24] 2128 	jz	00139$
                                   2129 ;	life.c:287: if (!c2u()) updatec2();
      0029E2 78 37            [12] 2130 	mov	r0,#_c2set
      0029E4 E6               [12] 2131 	mov	a,@r0
      0029E5 70 1E            [24] 2132 	jnz	00139$
                                   2133 ;	life.c:74: genc2 = gen;
      0029E7 78 2B            [12] 2134 	mov	r0,#_gen
      0029E9 86 04            [24] 2135 	mov	ar4,@r0
      0029EB 08               [12] 2136 	inc	r0
      0029EC 86 05            [24] 2137 	mov	ar5,@r0
      0029EE 08               [12] 2138 	inc	r0
      0029EF 86 06            [24] 2139 	mov	ar6,@r0
      0029F1 08               [12] 2140 	inc	r0
      0029F2 86 07            [24] 2141 	mov	ar7,@r0
      0029F4 78 2F            [12] 2142 	mov	r0,#_genc2
      0029F6 A6 04            [24] 2143 	mov	@r0,ar4
      0029F8 08               [12] 2144 	inc	r0
      0029F9 A6 05            [24] 2145 	mov	@r0,ar5
      0029FB 08               [12] 2146 	inc	r0
      0029FC A6 06            [24] 2147 	mov	@r0,ar6
      0029FE 08               [12] 2148 	inc	r0
      0029FF A6 07            [24] 2149 	mov	@r0,ar7
                                   2150 ;	life.c:75: c2set = 1;
      002A01 78 37            [12] 2151 	mov	r0,#_c2set
      002A03 76 01            [12] 2152 	mov	@r0,#0x01
                                   2153 ;	life.c:287: if (!c2u()) updatec2();
      002A05                       2154 00139$:
                                   2155 ;	life.c:290: c = getchar_poll();
      002A05 12 2B 92         [24] 2156 	lcall	_getchar_poll
      002A08 AE 82            [24] 2157 	mov	r6,dpl
      002A0A AF 83            [24] 2158 	mov	r7,dph
                                   2159 ;	life.c:291: if (c > 0) {
      002A0C C3               [12] 2160 	clr	c
      002A0D E4               [12] 2161 	clr	a
      002A0E 9E               [12] 2162 	subb	a,r6
      002A0F 74 80            [12] 2163 	mov	a,#(0x00 ^ 0x80)
      002A11 8F F0            [24] 2164 	mov	b,r7
      002A13 63 F0 80         [24] 2165 	xrl	b,#0x80
      002A16 95 F0            [12] 2166 	subb	a,b
      002A18 40 03            [24] 2167 	jc	00521$
      002A1A 02 25 21         [24] 2168 	ljmp	00237$
      002A1D                       2169 00521$:
                                   2170 ;	life.c:292: c = toupper(c);
      002A1D 8E 82            [24] 2171 	mov	dpl,r6
      002A1F 8F 83            [24] 2172 	mov	dph,r7
      002A21 12 30 2C         [24] 2173 	lcall	_toupper
      002A24 AE 82            [24] 2174 	mov	r6,dpl
      002A26 AF 83            [24] 2175 	mov	r7,dph
                                   2176 ;	life.c:293: if (c == (int)'U') pruni = !pruni;
      002A28 BE 55 13         [24] 2177 	cjne	r6,#0x55,00146$
      002A2B BF 00 10         [24] 2178 	cjne	r7,#0x00,00146$
      002A2E 78 39            [12] 2179 	mov	r0,#_pruni
      002A30 E6               [12] 2180 	mov	a,@r0
      002A31 B4 01 00         [24] 2181 	cjne	a,#0x01,00524$
      002A34                       2182 00524$:
      002A34 92 00            [24] 2183 	mov	b0,c
      002A36 78 39            [12] 2184 	mov	r0,#_pruni
      002A38 E4               [12] 2185 	clr	a
      002A39 33               [12] 2186 	rlc	a
      002A3A F6               [12] 2187 	mov	@r0,a
      002A3B 02 25 21         [24] 2188 	ljmp	00237$
      002A3E                       2189 00146$:
                                   2190 ;	life.c:294: else if (c == (int)'T') i0 = 1;
      002A3E BE 54 0A         [24] 2191 	cjne	r6,#0x54,00143$
      002A41 BF 00 07         [24] 2192 	cjne	r7,#0x00,00143$
      002A44 78 21            [12] 2193 	mov	r0,#_i0
      002A46 76 01            [12] 2194 	mov	@r0,#0x01
      002A48 02 25 21         [24] 2195 	ljmp	00237$
      002A4B                       2196 00143$:
                                   2197 ;	life.c:295: else if (c == (int)'B') i1 = 1;
      002A4B BE 42 05         [24] 2198 	cjne	r6,#0x42,00527$
      002A4E BF 00 02         [24] 2199 	cjne	r7,#0x00,00527$
      002A51 80 03            [24] 2200 	sjmp	00528$
      002A53                       2201 00527$:
      002A53 02 25 21         [24] 2202 	ljmp	00237$
      002A56                       2203 00528$:
      002A56 78 22            [12] 2204 	mov	r0,#_i1
      002A58 76 01            [12] 2205 	mov	@r0,#0x01
      002A5A 02 25 21         [24] 2206 	ljmp	00237$
      002A5D                       2207 00150$:
                                   2208 ;	life.c:299: if (i1) {
      002A5D 78 22            [12] 2209 	mov	r0,#_i1
      002A5F E6               [12] 2210 	mov	a,@r0
      002A60 60 20            [24] 2211 	jz	00240$
                                   2212 ;	life.c:300: printstr("BREAK AT ");
      002A62 90 31 EF         [24] 2213 	mov	dptr,#___str_14
      002A65 75 F0 80         [24] 2214 	mov	b,#0x80
      002A68 12 2B AC         [24] 2215 	lcall	_printstr
                                   2216 ;	life.c:301: showu(PRHDR, u);
      002A6B 74 00            [12] 2217 	mov	a,#_u
      002A6D C0 E0            [24] 2218 	push	acc
      002A6F 74 88            [12] 2219 	mov	a,#(_u >> 8)
      002A71 C0 E0            [24] 2220 	push	acc
      002A73 E4               [12] 2221 	clr	a
      002A74 C0 E0            [24] 2222 	push	acc
      002A76 75 82 02         [24] 2223 	mov	dpl,#0x02
      002A79 12 20 95         [24] 2224 	lcall	_showu
      002A7C 15 81            [12] 2225 	dec	sp
      002A7E 15 81            [12] 2226 	dec	sp
      002A80 15 81            [12] 2227 	dec	sp
      002A82                       2228 00240$:
                                   2229 ;	life.c:252: for (i0 = 0; !i0; ) {
      002A82 78 21            [12] 2230 	mov	r0,#_i0
      002A84 E6               [12] 2231 	mov	a,@r0
      002A85 70 03            [24] 2232 	jnz	00530$
      002A87 02 22 28         [24] 2233 	ljmp	00127$
      002A8A                       2234 00530$:
                                   2235 ;	life.c:305: term:
      002A8A                       2236 00154$:
                                   2237 ;	life.c:306: EA = 0;
                                   2238 ;	assignBit
      002A8A C2 AF            [12] 2239 	clr	_EA
                                   2240 ;	life.c:307: printstr("TERM\r\n");
      002A8C 90 31 F9         [24] 2241 	mov	dptr,#___str_15
      002A8F 75 F0 80         [24] 2242 	mov	b,#0x80
      002A92 12 2B AC         [24] 2243 	lcall	_printstr
                                   2244 ;	life.c:309: PCON |= 2;
      002A95 43 87 02         [24] 2245 	orl	_PCON,#0x02
                                   2246 ;	life.c:311: return;
                                   2247 ;	life.c:312: }
      002A98 85 10 81         [24] 2248 	mov	sp,_bp
      002A9B D0 10            [24] 2249 	pop	_bp
      002A9D 22               [24] 2250 	ret
                                   2251 	.area CSEG    (CODE)
                                   2252 	.area CONST   (CODE)
                                   2253 	.area CONST   (CODE)
      00317B                       2254 ___str_0:
      00317B 1B                    2255 	.db 0x1b
      00317C 5B 32 4A              2256 	.ascii "[2J"
      00317F 00                    2257 	.db 0x00
                                   2258 	.area CSEG    (CODE)
                                   2259 	.area CONST   (CODE)
      003180                       2260 ___str_1:
      003180 47 45 4E 20           2261 	.ascii "GEN "
      003184 00                    2262 	.db 0x00
                                   2263 	.area CSEG    (CODE)
                                   2264 	.area CONST   (CODE)
      003185                       2265 ___str_2:
      003185 20 43 59 43 4C 45 32  2266 	.ascii " CYCLE2 "
             20
      00318D 00                    2267 	.db 0x00
                                   2268 	.area CSEG    (CODE)
                                   2269 	.area CONST   (CODE)
      00318E                       2270 ___str_3:
      00318E 20 46 49 58 45 44 20  2271 	.ascii " FIXED "
      003195 00                    2272 	.db 0x00
                                   2273 	.area CSEG    (CODE)
                                   2274 	.area CONST   (CODE)
      003196                       2275 ___str_4:
      003196 0D                    2276 	.db 0x0d
      003197 0A                    2277 	.db 0x0a
      003198 00                    2278 	.db 0x00
                                   2279 	.area CSEG    (CODE)
                                   2280 	.area CONST   (CODE)
      003199                       2281 ___str_5:
      003199 1B                    2282 	.db 0x1b
      00319A 5B 3F 32 35 6C        2283 	.ascii "[?25l"
      00319F 00                    2284 	.db 0x00
                                   2285 	.area CSEG    (CODE)
                                   2286 	.area CONST   (CODE)
      0031A0                       2287 ___str_6:
      0031A0 1B                    2288 	.db 0x1b
      0031A1 5B 3F 32 35 68        2289 	.ascii "[?25h"
      0031A6 00                    2290 	.db 0x00
                                   2291 	.area CSEG    (CODE)
                                   2292 	.area CONST   (CODE)
      0031A7                       2293 ___str_7:
      0031A7 4C 4F 41 44 20 30 20  2294 	.ascii "LOAD 0 1 ~ # <"
             31 20 7E 20 23 20 3C
      0031B5 00                    2295 	.db 0x00
                                   2296 	.area CSEG    (CODE)
                                   2297 	.area CONST   (CODE)
      0031B6                       2298 ___str_8:
      0031B6 3E                    2299 	.ascii ">"
      0031B7 0D                    2300 	.db 0x0d
      0031B8 0A                    2301 	.db 0x0a
      0031B9 00                    2302 	.db 0x00
                                   2303 	.area CSEG    (CODE)
                                   2304 	.area CONST   (CODE)
      0031BA                       2305 ___str_9:
      0031BA 52 41 4E 44 4F 4D     2306 	.ascii "RANDOM"
      0031C0 00                    2307 	.db 0x00
                                   2308 	.area CSEG    (CODE)
                                   2309 	.area CONST   (CODE)
      0031C1                       2310 ___str_10:
      0031C1 1B                    2311 	.db 0x1b
      0031C2 5B 3F 32 35 68        2312 	.ascii "[?25h"
      0031C7 1B                    2313 	.db 0x1b
      0031C8 5B 6D                 2314 	.ascii "[m"
      0031CA 00                    2315 	.db 0x00
                                   2316 	.area CSEG    (CODE)
                                   2317 	.area CONST   (CODE)
      0031CB                       2318 ___str_11:
      0031CB 4C 49 46 45 20 49 20  2319 	.ascii "LIFE I L R O P S U"
             4C 20 52 20 4F 20 50
             20 53 20 55
      0031DD 00                    2320 	.db 0x00
                                   2321 	.area CSEG    (CODE)
                                   2322 	.area CONST   (CODE)
      0031DE                       2323 ___str_12:
      0031DE 20 42 20 54           2324 	.ascii " B T"
      0031E2 0D                    2325 	.db 0x0d
      0031E3 0A                    2326 	.db 0x0a
      0031E4 00                    2327 	.db 0x00
                                   2328 	.area CSEG    (CODE)
                                   2329 	.area CONST   (CODE)
      0031E5                       2330 ___str_13:
      0031E5 46 49 58 45 44 20 41  2331 	.ascii "FIXED AT "
             54 20
      0031EE 00                    2332 	.db 0x00
                                   2333 	.area CSEG    (CODE)
                                   2334 	.area CONST   (CODE)
      0031EF                       2335 ___str_14:
      0031EF 42 52 45 41 4B 20 41  2336 	.ascii "BREAK AT "
             54 20
      0031F8 00                    2337 	.db 0x00
                                   2338 	.area CSEG    (CODE)
                                   2339 	.area CONST   (CODE)
      0031F9                       2340 ___str_15:
      0031F9 54 45 52 4D           2341 	.ascii "TERM"
      0031FD 0D                    2342 	.db 0x0d
      0031FE 0A                    2343 	.db 0x0a
      0031FF 00                    2344 	.db 0x00
                                   2345 	.area CSEG    (CODE)
                                   2346 	.area XINIT   (CODE)
                                   2347 	.area CABS    (ABS,CODE)
