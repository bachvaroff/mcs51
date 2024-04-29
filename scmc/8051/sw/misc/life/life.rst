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
      000033                        339 _fixed:
      000033                        340 	.ds 1
      000034                        341 _cycle2:
      000034                        342 	.ds 1
                                    343 ;--------------------------------------------------------
                                    344 ; absolute internal ram data
                                    345 ;--------------------------------------------------------
                                    346 	.area IABS    (ABS,DATA)
                                    347 	.area IABS    (ABS,DATA)
                                    348 ;--------------------------------------------------------
                                    349 ; bit data
                                    350 ;--------------------------------------------------------
                                    351 	.area BSEG    (BIT)
                                    352 ;--------------------------------------------------------
                                    353 ; paged external ram data
                                    354 ;--------------------------------------------------------
                                    355 	.area PSEG    (PAG,XDATA)
                                    356 ;--------------------------------------------------------
                                    357 ; external ram data
                                    358 ;--------------------------------------------------------
                                    359 	.area XSEG    (XDATA)
                           00E000   360 _RND	=	0xe000
                           00F006   361 _OEreg	=	0xf006
      004000                        362 _iu:
      004000                        363 	.ds 9216
      006400                        364 _pu:
      006400                        365 	.ds 9216
      008800                        366 _u:
      008800                        367 	.ds 9216
      00AC00                        368 _nu:
      00AC00                        369 	.ds 9216
                                    370 ;--------------------------------------------------------
                                    371 ; absolute external ram data
                                    372 ;--------------------------------------------------------
                                    373 	.area XABS    (ABS,XDATA)
                                    374 ;--------------------------------------------------------
                                    375 ; external initialized ram data
                                    376 ;--------------------------------------------------------
                                    377 	.area XISEG   (XDATA)
                                    378 	.area HOME    (CODE)
                                    379 	.area GSINIT0 (CODE)
                                    380 	.area GSINIT1 (CODE)
                                    381 	.area GSINIT2 (CODE)
                                    382 	.area GSINIT3 (CODE)
                                    383 	.area GSINIT4 (CODE)
                                    384 	.area GSINIT5 (CODE)
                                    385 	.area GSINIT  (CODE)
                                    386 	.area GSFINAL (CODE)
                                    387 	.area CSEG    (CODE)
                                    388 ;--------------------------------------------------------
                                    389 ; interrupt vector 
                                    390 ;--------------------------------------------------------
                                    391 	.area HOME    (CODE)
      002000                        392 __interrupt_vect:
      002000 02 20 19         [24]  393 	ljmp	__sdcc_gsinit_startup
      002003 02 20 75         [24]  394 	ljmp	_int0
      002006                        395 	.ds	5
      00200B 32               [24]  396 	reti
      00200C                        397 	.ds	7
      002013 02 20 81         [24]  398 	ljmp	_int1
                                    399 ;--------------------------------------------------------
                                    400 ; global & static initialisations
                                    401 ;--------------------------------------------------------
                                    402 	.area HOME    (CODE)
                                    403 	.area GSINIT  (CODE)
                                    404 	.area GSFINAL (CODE)
                                    405 	.area GSINIT  (CODE)
                                    406 	.globl __sdcc_gsinit_startup
                                    407 	.globl __sdcc_program_startup
                                    408 	.globl __start__stack
                                    409 	.globl __mcs51_genXINIT
                                    410 	.globl __mcs51_genXRAMCLEAR
                                    411 	.globl __mcs51_genRAMCLEAR
                                    412 	.area GSFINAL (CODE)
      002072 02 20 16         [24]  413 	ljmp	__sdcc_program_startup
                                    414 ;--------------------------------------------------------
                                    415 ; Home
                                    416 ;--------------------------------------------------------
                                    417 	.area HOME    (CODE)
                                    418 	.area HOME    (CODE)
      002016                        419 __sdcc_program_startup:
      002016 02 28 F9         [24]  420 	ljmp	_main
                                    421 ;	return from main will return to caller
                                    422 ;--------------------------------------------------------
                                    423 ; code
                                    424 ;--------------------------------------------------------
                                    425 	.area CSEG    (CODE)
                                    426 ;------------------------------------------------------------
                                    427 ;Allocation info for local variables in function 'int0'
                                    428 ;------------------------------------------------------------
                                    429 ;	life.c:13: void int0(void) __interrupt IE0_VECTOR __using 1 {
                                    430 ;	-----------------------------------------
                                    431 ;	 function int0
                                    432 ;	-----------------------------------------
      002075                        433 _int0:
                           00000F   434 	ar7 = 0x0f
                           00000E   435 	ar6 = 0x0e
                           00000D   436 	ar5 = 0x0d
                           00000C   437 	ar4 = 0x0c
                           00000B   438 	ar3 = 0x0b
                           00000A   439 	ar2 = 0x0a
                           000009   440 	ar1 = 0x09
                           000008   441 	ar0 = 0x08
      002075 C0 D0            [24]  442 	push	psw
      002077 75 D0 08         [24]  443 	mov	psw,#0x08
                                    444 ;	life.c:14: i0 = 1;
      00207A 78 21            [12]  445 	mov	r0,#_i0
      00207C 76 01            [12]  446 	mov	@r0,#0x01
                                    447 ;	life.c:15: }
      00207E D0 D0            [24]  448 	pop	psw
      002080 32               [24]  449 	reti
                                    450 ;	eliminated unneeded push/pop dpl
                                    451 ;	eliminated unneeded push/pop dph
                                    452 ;	eliminated unneeded push/pop b
                                    453 ;	eliminated unneeded push/pop acc
                                    454 ;------------------------------------------------------------
                                    455 ;Allocation info for local variables in function 'int1'
                                    456 ;------------------------------------------------------------
                                    457 ;	life.c:17: void int1(void) __interrupt IE1_VECTOR __using 1 {
                                    458 ;	-----------------------------------------
                                    459 ;	 function int1
                                    460 ;	-----------------------------------------
      002081                        461 _int1:
      002081 C0 D0            [24]  462 	push	psw
      002083 75 D0 08         [24]  463 	mov	psw,#0x08
                                    464 ;	life.c:18: i1 = 1;
      002086 78 22            [12]  465 	mov	r0,#_i1
      002088 76 01            [12]  466 	mov	@r0,#0x01
                                    467 ;	life.c:19: }
      00208A D0 D0            [24]  468 	pop	psw
      00208C 32               [24]  469 	reti
                                    470 ;	eliminated unneeded push/pop dpl
                                    471 ;	eliminated unneeded push/pop dph
                                    472 ;	eliminated unneeded push/pop b
                                    473 ;	eliminated unneeded push/pop acc
                                    474 ;------------------------------------------------------------
                                    475 ;Allocation info for local variables in function 'initu'
                                    476 ;------------------------------------------------------------
                                    477 ;	life.c:91: static void initu(void) {
                                    478 ;	-----------------------------------------
                                    479 ;	 function initu
                                    480 ;	-----------------------------------------
      00208D                        481 _initu:
                           000007   482 	ar7 = 0x07
                           000006   483 	ar6 = 0x06
                           000005   484 	ar5 = 0x05
                           000004   485 	ar4 = 0x04
                           000003   486 	ar3 = 0x03
                           000002   487 	ar2 = 0x02
                           000001   488 	ar1 = 0x01
                           000000   489 	ar0 = 0x00
                                    490 ;	life.c:92: memcpy(u, iu, sizeof (iu));
      00208D E4               [12]  491 	clr	a
      00208E C0 E0            [24]  492 	push	acc
      002090 74 24            [12]  493 	mov	a,#0x24
      002092 C0 E0            [24]  494 	push	acc
      002094 74 00            [12]  495 	mov	a,#_iu
      002096 C0 E0            [24]  496 	push	acc
      002098 74 40            [12]  497 	mov	a,#(_iu >> 8)
      00209A C0 E0            [24]  498 	push	acc
      00209C E4               [12]  499 	clr	a
      00209D C0 E0            [24]  500 	push	acc
      00209F 90 88 00         [24]  501 	mov	dptr,#_u
      0020A2 75 F0 00         [24]  502 	mov	b,#0x00
      0020A5 12 30 7E         [24]  503 	lcall	___memcpy
      0020A8 E5 81            [12]  504 	mov	a,sp
      0020AA 24 FB            [12]  505 	add	a,#0xfb
      0020AC F5 81            [12]  506 	mov	sp,a
                                    507 ;	life.c:93: memset(pu, 0, sizeof (pu));
      0020AE E4               [12]  508 	clr	a
      0020AF C0 E0            [24]  509 	push	acc
      0020B1 74 24            [12]  510 	mov	a,#0x24
      0020B3 C0 E0            [24]  511 	push	acc
      0020B5 E4               [12]  512 	clr	a
      0020B6 C0 E0            [24]  513 	push	acc
      0020B8 90 64 00         [24]  514 	mov	dptr,#_pu
      0020BB 75 F0 00         [24]  515 	mov	b,#0x00
      0020BE 12 31 11         [24]  516 	lcall	_memset
      0020C1 15 81            [12]  517 	dec	sp
      0020C3 15 81            [12]  518 	dec	sp
      0020C5 15 81            [12]  519 	dec	sp
                                    520 ;	life.c:43: gen = 0ul;
      0020C7 78 24            [12]  521 	mov	r0,#_gen
      0020C9 E4               [12]  522 	clr	a
      0020CA F6               [12]  523 	mov	@r0,a
      0020CB 08               [12]  524 	inc	r0
      0020CC F6               [12]  525 	mov	@r0,a
      0020CD 08               [12]  526 	inc	r0
      0020CE F6               [12]  527 	mov	@r0,a
      0020CF 08               [12]  528 	inc	r0
      0020D0 F6               [12]  529 	mov	@r0,a
                                    530 ;	life.c:44: genc2 = 0ul;
      0020D1 78 28            [12]  531 	mov	r0,#_genc2
      0020D3 F6               [12]  532 	mov	@r0,a
      0020D4 08               [12]  533 	inc	r0
      0020D5 F6               [12]  534 	mov	@r0,a
      0020D6 08               [12]  535 	inc	r0
      0020D7 F6               [12]  536 	mov	@r0,a
      0020D8 08               [12]  537 	inc	r0
      0020D9 F6               [12]  538 	mov	@r0,a
                                    539 ;	life.c:45: genfx = 0ul;
      0020DA 78 2C            [12]  540 	mov	r0,#_genfx
      0020DC F6               [12]  541 	mov	@r0,a
      0020DD 08               [12]  542 	inc	r0
      0020DE F6               [12]  543 	mov	@r0,a
      0020DF 08               [12]  544 	inc	r0
      0020E0 F6               [12]  545 	mov	@r0,a
      0020E1 08               [12]  546 	inc	r0
      0020E2 F6               [12]  547 	mov	@r0,a
                                    548 ;	life.c:46: c2set = 0;
      0020E3 78 30            [12]  549 	mov	r0,#_c2set
      0020E5 76 00            [12]  550 	mov	@r0,#0x00
                                    551 ;	life.c:47: fxset = 0;
      0020E7 78 31            [12]  552 	mov	r0,#_fxset
      0020E9 76 00            [12]  553 	mov	@r0,#0x00
                                    554 ;	life.c:96: return;
                                    555 ;	life.c:97: }
      0020EB 22               [24]  556 	ret
                                    557 ;------------------------------------------------------------
                                    558 ;Allocation info for local variables in function 'showu'
                                    559 ;------------------------------------------------------------
                                    560 ;universe                  Allocated to stack - _bp -5
                                    561 ;prflags                   Allocated to registers r7 
                                    562 ;x                         Allocated to stack - _bp +1
                                    563 ;y                         Allocated to registers r4 r5 
                                    564 ;------------------------------------------------------------
                                    565 ;	life.c:104: static void showu(char prflags, char *universe) {
                                    566 ;	-----------------------------------------
                                    567 ;	 function showu
                                    568 ;	-----------------------------------------
      0020EC                        569 _showu:
      0020EC C0 10            [24]  570 	push	_bp
      0020EE 85 81 10         [24]  571 	mov	_bp,sp
      0020F1 05 81            [12]  572 	inc	sp
      0020F3 05 81            [12]  573 	inc	sp
                                    574 ;	life.c:107: if (prflags & PRCLR) printstr("\033[2J");
      0020F5 E5 82            [12]  575 	mov	a,dpl
      0020F7 FF               [12]  576 	mov	r7,a
      0020F8 30 E0 0D         [24]  577 	jnb	acc.0,00102$
      0020FB 90 32 CA         [24]  578 	mov	dptr,#___str_0
      0020FE 75 F0 80         [24]  579 	mov	b,#0x80
      002101 C0 07            [24]  580 	push	ar7
      002103 12 2C FB         [24]  581 	lcall	_printstr
      002106 D0 07            [24]  582 	pop	ar7
      002108                        583 00102$:
                                    584 ;	life.c:108: if (prflags & PRHDR) {
      002108 EF               [12]  585 	mov	a,r7
      002109 30 E1 6B         [24]  586 	jnb	acc.1,00108$
                                    587 ;	life.c:109: printstr("GEN ");
      00210C 90 32 CF         [24]  588 	mov	dptr,#___str_1
      00210F 75 F0 80         [24]  589 	mov	b,#0x80
      002112 C0 07            [24]  590 	push	ar7
      002114 12 2C FB         [24]  591 	lcall	_printstr
                                    592 ;	life.c:110: print32x(gen);
      002117 78 24            [12]  593 	mov	r0,#_gen
      002119 86 82            [24]  594 	mov	dpl,@r0
      00211B 08               [12]  595 	inc	r0
      00211C 86 83            [24]  596 	mov	dph,@r0
      00211E 08               [12]  597 	inc	r0
      00211F 86 F0            [24]  598 	mov	b,@r0
      002121 08               [12]  599 	inc	r0
      002122 E6               [12]  600 	mov	a,@r0
      002123 12 2E AB         [24]  601 	lcall	_print32x
      002126 D0 07            [24]  602 	pop	ar7
                                    603 ;	life.c:111: if (c2set) {
      002128 78 30            [12]  604 	mov	r0,#_c2set
      00212A E6               [12]  605 	mov	a,@r0
      00212B 60 1C            [24]  606 	jz	00104$
                                    607 ;	life.c:112: printstr(" CYCLE2 ");
      00212D 90 32 D4         [24]  608 	mov	dptr,#___str_2
      002130 75 F0 80         [24]  609 	mov	b,#0x80
      002133 C0 07            [24]  610 	push	ar7
      002135 12 2C FB         [24]  611 	lcall	_printstr
                                    612 ;	life.c:113: print32x(genc2);
      002138 78 28            [12]  613 	mov	r0,#_genc2
      00213A 86 82            [24]  614 	mov	dpl,@r0
      00213C 08               [12]  615 	inc	r0
      00213D 86 83            [24]  616 	mov	dph,@r0
      00213F 08               [12]  617 	inc	r0
      002140 86 F0            [24]  618 	mov	b,@r0
      002142 08               [12]  619 	inc	r0
      002143 E6               [12]  620 	mov	a,@r0
      002144 12 2E AB         [24]  621 	lcall	_print32x
      002147 D0 07            [24]  622 	pop	ar7
      002149                        623 00104$:
                                    624 ;	life.c:115: if (fxset) {
      002149 78 31            [12]  625 	mov	r0,#_fxset
      00214B E6               [12]  626 	mov	a,@r0
      00214C 60 1C            [24]  627 	jz	00106$
                                    628 ;	life.c:116: printstr(" FIXED ");
      00214E 90 32 DD         [24]  629 	mov	dptr,#___str_3
      002151 75 F0 80         [24]  630 	mov	b,#0x80
      002154 C0 07            [24]  631 	push	ar7
      002156 12 2C FB         [24]  632 	lcall	_printstr
                                    633 ;	life.c:117: print32x(genfx);
      002159 78 2C            [12]  634 	mov	r0,#_genfx
      00215B 86 82            [24]  635 	mov	dpl,@r0
      00215D 08               [12]  636 	inc	r0
      00215E 86 83            [24]  637 	mov	dph,@r0
      002160 08               [12]  638 	inc	r0
      002161 86 F0            [24]  639 	mov	b,@r0
      002163 08               [12]  640 	inc	r0
      002164 E6               [12]  641 	mov	a,@r0
      002165 12 2E AB         [24]  642 	lcall	_print32x
      002168 D0 07            [24]  643 	pop	ar7
      00216A                        644 00106$:
                                    645 ;	life.c:119: printstr("\r\n");
      00216A 90 32 E5         [24]  646 	mov	dptr,#___str_4
      00216D 75 F0 80         [24]  647 	mov	b,#0x80
      002170 C0 07            [24]  648 	push	ar7
      002172 12 2C FB         [24]  649 	lcall	_printstr
      002175 D0 07            [24]  650 	pop	ar7
      002177                        651 00108$:
                                    652 ;	life.c:121: if (prflags & PRUNI) {
      002177 EF               [12]  653 	mov	a,r7
      002178 20 E2 03         [24]  654 	jb	acc.2,00168$
      00217B 02 22 34         [24]  655 	ljmp	00115$
      00217E                        656 00168$:
                                    657 ;	life.c:122: printstr("\033[?25l");
      00217E 90 32 E8         [24]  658 	mov	dptr,#___str_5
      002181 75 F0 80         [24]  659 	mov	b,#0x80
      002184 12 2C FB         [24]  660 	lcall	_printstr
                                    661 ;	life.c:123: for (x = 0; x < W; x++) {
      002187 A8 10            [24]  662 	mov	r0,_bp
      002189 08               [12]  663 	inc	r0
      00218A E4               [12]  664 	clr	a
      00218B F6               [12]  665 	mov	@r0,a
      00218C 08               [12]  666 	inc	r0
      00218D F6               [12]  667 	mov	@r0,a
                                    668 ;	life.c:124: for (y = 0; y < H; y++)
      00218E                        669 00128$:
      00218E 7C 00            [12]  670 	mov	r4,#0x00
      002190 7D 00            [12]  671 	mov	r5,#0x00
      002192 7A 00            [12]  672 	mov	r2,#0x00
      002194 7B 00            [12]  673 	mov	r3,#0x00
      002196                        674 00116$:
                                    675 ;	life.c:125: if (universe[A2D(W, y, x)]) putchar((int)'1');
      002196 C0 04            [24]  676 	push	ar4
      002198 C0 05            [24]  677 	push	ar5
      00219A A8 10            [24]  678 	mov	r0,_bp
      00219C 08               [12]  679 	inc	r0
      00219D E6               [12]  680 	mov	a,@r0
      00219E 2A               [12]  681 	add	a,r2
      00219F FC               [12]  682 	mov	r4,a
      0021A0 08               [12]  683 	inc	r0
      0021A1 E6               [12]  684 	mov	a,@r0
      0021A2 3B               [12]  685 	addc	a,r3
      0021A3 FD               [12]  686 	mov	r5,a
      0021A4 E5 10            [12]  687 	mov	a,_bp
      0021A6 24 FB            [12]  688 	add	a,#0xfb
      0021A8 F8               [12]  689 	mov	r0,a
      0021A9 EC               [12]  690 	mov	a,r4
      0021AA 26               [12]  691 	add	a,@r0
      0021AB FC               [12]  692 	mov	r4,a
      0021AC ED               [12]  693 	mov	a,r5
      0021AD 08               [12]  694 	inc	r0
      0021AE 36               [12]  695 	addc	a,@r0
      0021AF FD               [12]  696 	mov	r5,a
      0021B0 08               [12]  697 	inc	r0
      0021B1 86 07            [24]  698 	mov	ar7,@r0
      0021B3 8C 82            [24]  699 	mov	dpl,r4
      0021B5 8D 83            [24]  700 	mov	dph,r5
      0021B7 8F F0            [24]  701 	mov	b,r7
      0021B9 12 31 A2         [24]  702 	lcall	__gptrget
      0021BC D0 05            [24]  703 	pop	ar5
      0021BE D0 04            [24]  704 	pop	ar4
      0021C0 60 18            [24]  705 	jz	00110$
      0021C2 90 00 31         [24]  706 	mov	dptr,#0x0031
      0021C5 C0 05            [24]  707 	push	ar5
      0021C7 C0 04            [24]  708 	push	ar4
      0021C9 C0 03            [24]  709 	push	ar3
      0021CB C0 02            [24]  710 	push	ar2
      0021CD 12 2C CA         [24]  711 	lcall	_putchar
      0021D0 D0 02            [24]  712 	pop	ar2
      0021D2 D0 03            [24]  713 	pop	ar3
      0021D4 D0 04            [24]  714 	pop	ar4
      0021D6 D0 05            [24]  715 	pop	ar5
      0021D8 80 16            [24]  716 	sjmp	00117$
      0021DA                        717 00110$:
                                    718 ;	life.c:126: else putchar((int)'0');
      0021DA 90 00 30         [24]  719 	mov	dptr,#0x0030
      0021DD C0 05            [24]  720 	push	ar5
      0021DF C0 04            [24]  721 	push	ar4
      0021E1 C0 03            [24]  722 	push	ar3
      0021E3 C0 02            [24]  723 	push	ar2
      0021E5 12 2C CA         [24]  724 	lcall	_putchar
      0021E8 D0 02            [24]  725 	pop	ar2
      0021EA D0 03            [24]  726 	pop	ar3
      0021EC D0 04            [24]  727 	pop	ar4
      0021EE D0 05            [24]  728 	pop	ar5
      0021F0                        729 00117$:
                                    730 ;	life.c:124: for (y = 0; y < H; y++)
      0021F0 74 30            [12]  731 	mov	a,#0x30
      0021F2 2A               [12]  732 	add	a,r2
      0021F3 FA               [12]  733 	mov	r2,a
      0021F4 E4               [12]  734 	clr	a
      0021F5 3B               [12]  735 	addc	a,r3
      0021F6 FB               [12]  736 	mov	r3,a
      0021F7 0C               [12]  737 	inc	r4
      0021F8 BC 00 01         [24]  738 	cjne	r4,#0x00,00170$
      0021FB 0D               [12]  739 	inc	r5
      0021FC                        740 00170$:
      0021FC C3               [12]  741 	clr	c
      0021FD EC               [12]  742 	mov	a,r4
      0021FE 94 C0            [12]  743 	subb	a,#0xc0
      002200 ED               [12]  744 	mov	a,r5
      002201 64 80            [12]  745 	xrl	a,#0x80
      002203 94 80            [12]  746 	subb	a,#0x80
      002205 40 8F            [24]  747 	jc	00116$
                                    748 ;	life.c:127: printstr("\r\n");
      002207 90 32 E5         [24]  749 	mov	dptr,#___str_4
      00220A 75 F0 80         [24]  750 	mov	b,#0x80
      00220D 12 2C FB         [24]  751 	lcall	_printstr
                                    752 ;	life.c:123: for (x = 0; x < W; x++) {
      002210 A8 10            [24]  753 	mov	r0,_bp
      002212 08               [12]  754 	inc	r0
      002213 06               [12]  755 	inc	@r0
      002214 B6 00 02         [24]  756 	cjne	@r0,#0x00,00172$
      002217 08               [12]  757 	inc	r0
      002218 06               [12]  758 	inc	@r0
      002219                        759 00172$:
      002219 A8 10            [24]  760 	mov	r0,_bp
      00221B 08               [12]  761 	inc	r0
      00221C C3               [12]  762 	clr	c
      00221D E6               [12]  763 	mov	a,@r0
      00221E 94 30            [12]  764 	subb	a,#0x30
      002220 08               [12]  765 	inc	r0
      002221 E6               [12]  766 	mov	a,@r0
      002222 64 80            [12]  767 	xrl	a,#0x80
      002224 94 80            [12]  768 	subb	a,#0x80
      002226 50 03            [24]  769 	jnc	00173$
      002228 02 21 8E         [24]  770 	ljmp	00128$
      00222B                        771 00173$:
                                    772 ;	life.c:129: printstr("\033[?25h");
      00222B 90 32 EF         [24]  773 	mov	dptr,#___str_6
      00222E 75 F0 80         [24]  774 	mov	b,#0x80
      002231 12 2C FB         [24]  775 	lcall	_printstr
      002234                        776 00115$:
                                    777 ;	life.c:132: return;
                                    778 ;	life.c:133: }
      002234 85 10 81         [24]  779 	mov	sp,_bp
      002237 D0 10            [24]  780 	pop	_bp
      002239 22               [24]  781 	ret
                                    782 ;------------------------------------------------------------
                                    783 ;Allocation info for local variables in function 'dumpu'
                                    784 ;------------------------------------------------------------
                                    785 ;universe                  Allocated to stack - _bp +1
                                    786 ;x                         Allocated to stack - _bp +4
                                    787 ;y                         Allocated to registers r3 r4 
                                    788 ;sloc0                     Allocated to stack - _bp +8
                                    789 ;------------------------------------------------------------
                                    790 ;	life.c:135: static void dumpu(char *universe) {
                                    791 ;	-----------------------------------------
                                    792 ;	 function dumpu
                                    793 ;	-----------------------------------------
      00223A                        794 _dumpu:
      00223A C0 10            [24]  795 	push	_bp
      00223C 85 81 10         [24]  796 	mov	_bp,sp
      00223F C0 82            [24]  797 	push	dpl
      002241 C0 83            [24]  798 	push	dph
      002243 C0 F0            [24]  799 	push	b
      002245 05 81            [12]  800 	inc	sp
      002247 05 81            [12]  801 	inc	sp
                                    802 ;	life.c:138: for (y = 0; y < (H * W); y += W) {
      002249 7B 00            [12]  803 	mov	r3,#0x00
      00224B 7C 00            [12]  804 	mov	r4,#0x00
                                    805 ;	life.c:139: for (x = 0; x < W; x++)
      00224D                        806 00112$:
      00224D E5 10            [12]  807 	mov	a,_bp
      00224F 24 04            [12]  808 	add	a,#0x04
      002251 F8               [12]  809 	mov	r0,a
      002252 E4               [12]  810 	clr	a
      002253 F6               [12]  811 	mov	@r0,a
      002254 08               [12]  812 	inc	r0
      002255 F6               [12]  813 	mov	@r0,a
      002256                        814 00103$:
                                    815 ;	life.c:140: putchar(universe[y + x] ? (int)'1' : (int)'0');
      002256 E5 10            [12]  816 	mov	a,_bp
      002258 24 04            [12]  817 	add	a,#0x04
      00225A F8               [12]  818 	mov	r0,a
      00225B E6               [12]  819 	mov	a,@r0
      00225C 2B               [12]  820 	add	a,r3
      00225D FF               [12]  821 	mov	r7,a
      00225E 08               [12]  822 	inc	r0
      00225F E6               [12]  823 	mov	a,@r0
      002260 3C               [12]  824 	addc	a,r4
      002261 FE               [12]  825 	mov	r6,a
      002262 A8 10            [24]  826 	mov	r0,_bp
      002264 08               [12]  827 	inc	r0
      002265 EF               [12]  828 	mov	a,r7
      002266 26               [12]  829 	add	a,@r0
      002267 FA               [12]  830 	mov	r2,a
      002268 EE               [12]  831 	mov	a,r6
      002269 08               [12]  832 	inc	r0
      00226A 36               [12]  833 	addc	a,@r0
      00226B FD               [12]  834 	mov	r5,a
      00226C 08               [12]  835 	inc	r0
      00226D 86 06            [24]  836 	mov	ar6,@r0
      00226F 8A 82            [24]  837 	mov	dpl,r2
      002271 8D 83            [24]  838 	mov	dph,r5
      002273 8E F0            [24]  839 	mov	b,r6
      002275 12 31 A2         [24]  840 	lcall	__gptrget
      002278 60 06            [24]  841 	jz	00109$
      00227A 7D 31            [12]  842 	mov	r5,#0x31
      00227C 7E 00            [12]  843 	mov	r6,#0x00
      00227E 80 04            [24]  844 	sjmp	00110$
      002280                        845 00109$:
      002280 7D 30            [12]  846 	mov	r5,#0x30
      002282 7E 00            [12]  847 	mov	r6,#0x00
      002284                        848 00110$:
      002284 8D 82            [24]  849 	mov	dpl,r5
      002286 8E 83            [24]  850 	mov	dph,r6
      002288 C0 04            [24]  851 	push	ar4
      00228A C0 03            [24]  852 	push	ar3
      00228C 12 2C CA         [24]  853 	lcall	_putchar
      00228F D0 03            [24]  854 	pop	ar3
      002291 D0 04            [24]  855 	pop	ar4
                                    856 ;	life.c:139: for (x = 0; x < W; x++)
      002293 E5 10            [12]  857 	mov	a,_bp
      002295 24 04            [12]  858 	add	a,#0x04
      002297 F8               [12]  859 	mov	r0,a
      002298 06               [12]  860 	inc	@r0
      002299 B6 00 02         [24]  861 	cjne	@r0,#0x00,00134$
      00229C 08               [12]  862 	inc	r0
      00229D 06               [12]  863 	inc	@r0
      00229E                        864 00134$:
      00229E E5 10            [12]  865 	mov	a,_bp
      0022A0 24 04            [12]  866 	add	a,#0x04
      0022A2 F8               [12]  867 	mov	r0,a
      0022A3 C3               [12]  868 	clr	c
      0022A4 E6               [12]  869 	mov	a,@r0
      0022A5 94 30            [12]  870 	subb	a,#0x30
      0022A7 08               [12]  871 	inc	r0
      0022A8 E6               [12]  872 	mov	a,@r0
      0022A9 64 80            [12]  873 	xrl	a,#0x80
      0022AB 94 80            [12]  874 	subb	a,#0x80
      0022AD 40 A7            [24]  875 	jc	00103$
                                    876 ;	life.c:141: printstr("\r\n");
      0022AF 90 32 E5         [24]  877 	mov	dptr,#___str_4
      0022B2 75 F0 80         [24]  878 	mov	b,#0x80
      0022B5 C0 04            [24]  879 	push	ar4
      0022B7 C0 03            [24]  880 	push	ar3
      0022B9 12 2C FB         [24]  881 	lcall	_printstr
      0022BC D0 03            [24]  882 	pop	ar3
      0022BE D0 04            [24]  883 	pop	ar4
                                    884 ;	life.c:138: for (y = 0; y < (H * W); y += W) {
      0022C0 74 30            [12]  885 	mov	a,#0x30
      0022C2 2B               [12]  886 	add	a,r3
      0022C3 FB               [12]  887 	mov	r3,a
      0022C4 E4               [12]  888 	clr	a
      0022C5 3C               [12]  889 	addc	a,r4
      0022C6 FC               [12]  890 	mov	r4,a
      0022C7 C3               [12]  891 	clr	c
      0022C8 64 80            [12]  892 	xrl	a,#0x80
      0022CA 94 A4            [12]  893 	subb	a,#0xa4
      0022CC 50 03            [24]  894 	jnc	00136$
      0022CE 02 22 4D         [24]  895 	ljmp	00112$
      0022D1                        896 00136$:
                                    897 ;	life.c:143: printstr("#\n");
      0022D1 90 32 F6         [24]  898 	mov	dptr,#___str_7
      0022D4 75 F0 80         [24]  899 	mov	b,#0x80
      0022D7 12 2C FB         [24]  900 	lcall	_printstr
                                    901 ;	life.c:145: return;
                                    902 ;	life.c:146: }
      0022DA 85 10 81         [24]  903 	mov	sp,_bp
      0022DD D0 10            [24]  904 	pop	_bp
      0022DF 22               [24]  905 	ret
                                    906 ;------------------------------------------------------------
                                    907 ;Allocation info for local variables in function 'loadiu'
                                    908 ;------------------------------------------------------------
                                    909 ;x                         Allocated to registers r2 r3 
                                    910 ;y                         Allocated to registers r4 r5 
                                    911 ;nbits                     Allocated to stack - _bp +3
                                    912 ;c                         Allocated to registers r6 r7 
                                    913 ;sloc0                     Allocated to stack - _bp +1
                                    914 ;------------------------------------------------------------
                                    915 ;	life.c:148: static void loadiu(void) {
                                    916 ;	-----------------------------------------
                                    917 ;	 function loadiu
                                    918 ;	-----------------------------------------
      0022E0                        919 _loadiu:
      0022E0 C0 10            [24]  920 	push	_bp
      0022E2 E5 81            [12]  921 	mov	a,sp
      0022E4 F5 10            [12]  922 	mov	_bp,a
      0022E6 24 04            [12]  923 	add	a,#0x04
      0022E8 F5 81            [12]  924 	mov	sp,a
                                    925 ;	life.c:152: memset(iu, 0, sizeof (iu));
      0022EA E4               [12]  926 	clr	a
      0022EB C0 E0            [24]  927 	push	acc
      0022ED 74 24            [12]  928 	mov	a,#0x24
      0022EF C0 E0            [24]  929 	push	acc
      0022F1 E4               [12]  930 	clr	a
      0022F2 C0 E0            [24]  931 	push	acc
      0022F4 90 40 00         [24]  932 	mov	dptr,#_iu
      0022F7 75 F0 00         [24]  933 	mov	b,#0x00
      0022FA 12 31 11         [24]  934 	lcall	_memset
      0022FD 15 81            [12]  935 	dec	sp
      0022FF 15 81            [12]  936 	dec	sp
      002301 15 81            [12]  937 	dec	sp
                                    938 ;	life.c:154: printstr("LOAD 0 1 ~ # <");
      002303 90 32 F9         [24]  939 	mov	dptr,#___str_8
      002306 75 F0 80         [24]  940 	mov	b,#0x80
      002309 12 2C FB         [24]  941 	lcall	_printstr
                                    942 ;	life.c:156: for (nbits = 0, y = 0; y < (H * W); y += W) {
      00230C E5 10            [12]  943 	mov	a,_bp
      00230E 24 03            [12]  944 	add	a,#0x03
      002310 F8               [12]  945 	mov	r0,a
      002311 E4               [12]  946 	clr	a
      002312 F6               [12]  947 	mov	@r0,a
      002313 08               [12]  948 	inc	r0
      002314 F6               [12]  949 	mov	@r0,a
      002315 7C 00            [12]  950 	mov	r4,#0x00
      002317 7D 00            [12]  951 	mov	r5,#0x00
      002319                        952 00129$:
      002319 C3               [12]  953 	clr	c
      00231A ED               [12]  954 	mov	a,r5
      00231B 64 80            [12]  955 	xrl	a,#0x80
      00231D 94 A4            [12]  956 	subb	a,#0xa4
      00231F 40 03            [24]  957 	jc	00174$
      002321 02 23 CE         [24]  958 	ljmp	00119$
      002324                        959 00174$:
                                    960 ;	life.c:158: while (1) {
      002324 7A 00            [12]  961 	mov	r2,#0x00
      002326 7B 00            [12]  962 	mov	r3,#0x00
      002328                        963 00113$:
                                    964 ;	life.c:159: c = getchar();
      002328 C0 05            [24]  965 	push	ar5
      00232A C0 04            [24]  966 	push	ar4
      00232C C0 03            [24]  967 	push	ar3
      00232E C0 02            [24]  968 	push	ar2
      002330 12 2C D4         [24]  969 	lcall	_getchar
      002333 A8 10            [24]  970 	mov	r0,_bp
      002335 08               [12]  971 	inc	r0
      002336 A6 82            [24]  972 	mov	@r0,dpl
      002338 08               [12]  973 	inc	r0
      002339 A6 83            [24]  974 	mov	@r0,dph
      00233B D0 02            [24]  975 	pop	ar2
      00233D D0 03            [24]  976 	pop	ar3
      00233F D0 04            [24]  977 	pop	ar4
      002341 D0 05            [24]  978 	pop	ar5
                                    979 ;	life.c:160: if (c == (int)'0') {
      002343 A8 10            [24]  980 	mov	r0,_bp
      002345 08               [12]  981 	inc	r0
      002346 B6 30 23         [24]  982 	cjne	@r0,#0x30,00110$
      002349 08               [12]  983 	inc	r0
      00234A B6 00 1F         [24]  984 	cjne	@r0,#0x00,00110$
                                    985 ;	life.c:161: iu[y + x] = 0;
      00234D EA               [12]  986 	mov	a,r2
      00234E 2C               [12]  987 	add	a,r4
      00234F FE               [12]  988 	mov	r6,a
      002350 EB               [12]  989 	mov	a,r3
      002351 3D               [12]  990 	addc	a,r5
      002352 FF               [12]  991 	mov	r7,a
      002353 EE               [12]  992 	mov	a,r6
      002354 24 00            [12]  993 	add	a,#_iu
      002356 F5 82            [12]  994 	mov	dpl,a
      002358 EF               [12]  995 	mov	a,r7
      002359 34 40            [12]  996 	addc	a,#(_iu >> 8)
      00235B F5 83            [12]  997 	mov	dph,a
      00235D E4               [12]  998 	clr	a
      00235E F0               [24]  999 	movx	@dptr,a
                                   1000 ;	life.c:162: nbits++;
      00235F E5 10            [12] 1001 	mov	a,_bp
      002361 24 03            [12] 1002 	add	a,#0x03
      002363 F8               [12] 1003 	mov	r0,a
      002364 06               [12] 1004 	inc	@r0
      002365 B6 00 02         [24] 1005 	cjne	@r0,#0x00,00177$
      002368 08               [12] 1006 	inc	r0
      002369 06               [12] 1007 	inc	@r0
      00236A                       1008 00177$:
                                   1009 ;	life.c:163: break;
      00236A 80 45            [24] 1010 	sjmp	00116$
      00236C                       1011 00110$:
                                   1012 ;	life.c:164: } else if (c == (int)'1') {
      00236C A8 10            [24] 1013 	mov	r0,_bp
      00236E 08               [12] 1014 	inc	r0
      00236F B6 31 24         [24] 1015 	cjne	@r0,#0x31,00107$
      002372 08               [12] 1016 	inc	r0
      002373 B6 00 20         [24] 1017 	cjne	@r0,#0x00,00107$
                                   1018 ;	life.c:165: iu[y + x] = 1;
      002376 EA               [12] 1019 	mov	a,r2
      002377 2C               [12] 1020 	add	a,r4
      002378 FE               [12] 1021 	mov	r6,a
      002379 EB               [12] 1022 	mov	a,r3
      00237A 3D               [12] 1023 	addc	a,r5
      00237B FF               [12] 1024 	mov	r7,a
      00237C EE               [12] 1025 	mov	a,r6
      00237D 24 00            [12] 1026 	add	a,#_iu
      00237F F5 82            [12] 1027 	mov	dpl,a
      002381 EF               [12] 1028 	mov	a,r7
      002382 34 40            [12] 1029 	addc	a,#(_iu >> 8)
      002384 F5 83            [12] 1030 	mov	dph,a
      002386 74 01            [12] 1031 	mov	a,#0x01
      002388 F0               [24] 1032 	movx	@dptr,a
                                   1033 ;	life.c:166: nbits++;
      002389 E5 10            [12] 1034 	mov	a,_bp
      00238B 24 03            [12] 1035 	add	a,#0x03
      00238D F8               [12] 1036 	mov	r0,a
      00238E 06               [12] 1037 	inc	@r0
      00238F B6 00 02         [24] 1038 	cjne	@r0,#0x00,00180$
      002392 08               [12] 1039 	inc	r0
      002393 06               [12] 1040 	inc	@r0
      002394                       1041 00180$:
                                   1042 ;	life.c:167: break;
      002394 80 1B            [24] 1043 	sjmp	00116$
      002396                       1044 00107$:
                                   1045 ;	life.c:168: } else if (c == (int)'~') goto br_inner;
      002396 A8 10            [24] 1046 	mov	r0,_bp
      002398 08               [12] 1047 	inc	r0
      002399 B6 7E 06         [24] 1048 	cjne	@r0,#0x7e,00181$
      00239C 08               [12] 1049 	inc	r0
      00239D B6 00 02         [24] 1050 	cjne	@r0,#0x00,00181$
      0023A0 80 22            [24] 1051 	sjmp	00130$
      0023A2                       1052 00181$:
                                   1053 ;	life.c:169: else if (c == (int)'#') goto out;
      0023A2 A8 10            [24] 1054 	mov	r0,_bp
      0023A4 08               [12] 1055 	inc	r0
      0023A5 B6 23 06         [24] 1056 	cjne	@r0,#0x23,00182$
      0023A8 08               [12] 1057 	inc	r0
      0023A9 B6 00 02         [24] 1058 	cjne	@r0,#0x00,00182$
      0023AC 80 20            [24] 1059 	sjmp	00119$
      0023AE                       1060 00182$:
      0023AE 02 23 28         [24] 1061 	ljmp	00113$
                                   1062 ;	life.c:173: break;
      0023B1                       1063 00116$:
                                   1064 ;	life.c:157: for (x = 0; x < W; x++) {
      0023B1 0A               [12] 1065 	inc	r2
      0023B2 BA 00 01         [24] 1066 	cjne	r2,#0x00,00183$
      0023B5 0B               [12] 1067 	inc	r3
      0023B6                       1068 00183$:
      0023B6 C3               [12] 1069 	clr	c
      0023B7 EA               [12] 1070 	mov	a,r2
      0023B8 94 30            [12] 1071 	subb	a,#0x30
      0023BA EB               [12] 1072 	mov	a,r3
      0023BB 64 80            [12] 1073 	xrl	a,#0x80
      0023BD 94 80            [12] 1074 	subb	a,#0x80
      0023BF 50 03            [24] 1075 	jnc	00184$
      0023C1 02 23 28         [24] 1076 	ljmp	00113$
      0023C4                       1077 00184$:
      0023C4                       1078 00130$:
                                   1079 ;	life.c:156: for (nbits = 0, y = 0; y < (H * W); y += W) {
      0023C4 74 30            [12] 1080 	mov	a,#0x30
      0023C6 2C               [12] 1081 	add	a,r4
      0023C7 FC               [12] 1082 	mov	r4,a
      0023C8 E4               [12] 1083 	clr	a
      0023C9 3D               [12] 1084 	addc	a,r5
      0023CA FD               [12] 1085 	mov	r5,a
      0023CB 02 23 19         [24] 1086 	ljmp	00129$
                                   1087 ;	life.c:177: out:
      0023CE                       1088 00119$:
                                   1089 ;	life.c:178: if (c != (int)'#')
      0023CE A8 10            [24] 1090 	mov	r0,_bp
      0023D0 08               [12] 1091 	inc	r0
      0023D1 B6 23 06         [24] 1092 	cjne	@r0,#0x23,00185$
      0023D4 08               [12] 1093 	inc	r0
      0023D5 B6 00 02         [24] 1094 	cjne	@r0,#0x00,00185$
      0023D8 80 0D            [24] 1095 	sjmp	00126$
      0023DA                       1096 00185$:
                                   1097 ;	life.c:179: while (1) {
      0023DA                       1098 00123$:
                                   1099 ;	life.c:180: c = getchar();
      0023DA 12 2C D4         [24] 1100 	lcall	_getchar
      0023DD AE 82            [24] 1101 	mov	r6,dpl
      0023DF AF 83            [24] 1102 	mov	r7,dph
                                   1103 ;	life.c:181: if (c == (int)'#') break;
      0023E1 BE 23 F6         [24] 1104 	cjne	r6,#0x23,00123$
      0023E4 BF 00 F3         [24] 1105 	cjne	r7,#0x00,00123$
      0023E7                       1106 00126$:
                                   1107 ;	life.c:183: print16x(nbits);
      0023E7 E5 10            [12] 1108 	mov	a,_bp
      0023E9 24 03            [12] 1109 	add	a,#0x03
      0023EB F8               [12] 1110 	mov	r0,a
      0023EC 86 82            [24] 1111 	mov	dpl,@r0
      0023EE 08               [12] 1112 	inc	r0
      0023EF 86 83            [24] 1113 	mov	dph,@r0
      0023F1 12 2E 25         [24] 1114 	lcall	_print16x
                                   1115 ;	life.c:184: printstr(">\r\n");
      0023F4 90 33 08         [24] 1116 	mov	dptr,#___str_9
      0023F7 75 F0 80         [24] 1117 	mov	b,#0x80
      0023FA 12 2C FB         [24] 1118 	lcall	_printstr
                                   1119 ;	life.c:186: return;
                                   1120 ;	life.c:187: }
      0023FD 85 10 81         [24] 1121 	mov	sp,_bp
      002400 D0 10            [24] 1122 	pop	_bp
      002402 22               [24] 1123 	ret
                                   1124 ;------------------------------------------------------------
                                   1125 ;Allocation info for local variables in function 'loadriu'
                                   1126 ;------------------------------------------------------------
                                   1127 ;x                         Allocated to registers r4 r5 
                                   1128 ;y                         Allocated to registers r6 r7 
                                   1129 ;------------------------------------------------------------
                                   1130 ;	life.c:189: static void loadriu(void) {
                                   1131 ;	-----------------------------------------
                                   1132 ;	 function loadriu
                                   1133 ;	-----------------------------------------
      002403                       1134 _loadriu:
                                   1135 ;	life.c:192: printstr("RANDOM");
      002403 90 33 0C         [24] 1136 	mov	dptr,#___str_10
      002406 75 F0 80         [24] 1137 	mov	b,#0x80
      002409 12 2C FB         [24] 1138 	lcall	_printstr
                                   1139 ;	life.c:194: for (y = 0; y < (H * W); y += W)
      00240C 7E 00            [12] 1140 	mov	r6,#0x00
      00240E 7F 00            [12] 1141 	mov	r7,#0x00
                                   1142 ;	life.c:195: for (x = 0; x < W; x++)
      002410                       1143 00109$:
      002410 7C 00            [12] 1144 	mov	r4,#0x00
      002412 7D 00            [12] 1145 	mov	r5,#0x00
      002414                       1146 00103$:
                                   1147 ;	life.c:196: iu[y + x] = rand() & 1;
      002414 EC               [12] 1148 	mov	a,r4
      002415 2E               [12] 1149 	add	a,r6
      002416 FA               [12] 1150 	mov	r2,a
      002417 ED               [12] 1151 	mov	a,r5
      002418 3F               [12] 1152 	addc	a,r7
      002419 FB               [12] 1153 	mov	r3,a
      00241A EA               [12] 1154 	mov	a,r2
      00241B 24 00            [12] 1155 	add	a,#_iu
      00241D FA               [12] 1156 	mov	r2,a
      00241E EB               [12] 1157 	mov	a,r3
      00241F 34 40            [12] 1158 	addc	a,#(_iu >> 8)
      002421 FB               [12] 1159 	mov	r3,a
      002422 C0 07            [24] 1160 	push	ar7
      002424 C0 06            [24] 1161 	push	ar6
      002426 C0 05            [24] 1162 	push	ar5
      002428 C0 04            [24] 1163 	push	ar4
      00242A C0 03            [24] 1164 	push	ar3
      00242C C0 02            [24] 1165 	push	ar2
      00242E 12 2B ED         [24] 1166 	lcall	_rand
      002431 A8 82            [24] 1167 	mov	r0,dpl
      002433 D0 02            [24] 1168 	pop	ar2
      002435 D0 03            [24] 1169 	pop	ar3
      002437 D0 04            [24] 1170 	pop	ar4
      002439 D0 05            [24] 1171 	pop	ar5
      00243B D0 06            [24] 1172 	pop	ar6
      00243D D0 07            [24] 1173 	pop	ar7
      00243F 53 00 01         [24] 1174 	anl	ar0,#0x01
      002442 8A 82            [24] 1175 	mov	dpl,r2
      002444 8B 83            [24] 1176 	mov	dph,r3
      002446 E8               [12] 1177 	mov	a,r0
      002447 F0               [24] 1178 	movx	@dptr,a
                                   1179 ;	life.c:195: for (x = 0; x < W; x++)
      002448 0C               [12] 1180 	inc	r4
      002449 BC 00 01         [24] 1181 	cjne	r4,#0x00,00127$
      00244C 0D               [12] 1182 	inc	r5
      00244D                       1183 00127$:
      00244D C3               [12] 1184 	clr	c
      00244E EC               [12] 1185 	mov	a,r4
      00244F 94 30            [12] 1186 	subb	a,#0x30
      002451 ED               [12] 1187 	mov	a,r5
      002452 64 80            [12] 1188 	xrl	a,#0x80
      002454 94 80            [12] 1189 	subb	a,#0x80
      002456 40 BC            [24] 1190 	jc	00103$
                                   1191 ;	life.c:194: for (y = 0; y < (H * W); y += W)
      002458 74 30            [12] 1192 	mov	a,#0x30
      00245A 2E               [12] 1193 	add	a,r6
      00245B FE               [12] 1194 	mov	r6,a
      00245C E4               [12] 1195 	clr	a
      00245D 3F               [12] 1196 	addc	a,r7
      00245E FF               [12] 1197 	mov	r7,a
      00245F C3               [12] 1198 	clr	c
      002460 64 80            [12] 1199 	xrl	a,#0x80
      002462 94 A4            [12] 1200 	subb	a,#0xa4
      002464 40 AA            [24] 1201 	jc	00109$
                                   1202 ;	life.c:198: printstr("\r\n");
      002466 90 32 E5         [24] 1203 	mov	dptr,#___str_4
      002469 75 F0 80         [24] 1204 	mov	b,#0x80
                                   1205 ;	life.c:200: return;
                                   1206 ;	life.c:201: }
      00246C 02 2C FB         [24] 1207 	ljmp	_printstr
                                   1208 ;------------------------------------------------------------
                                   1209 ;Allocation info for local variables in function 'evolveu'
                                   1210 ;------------------------------------------------------------
                                   1211 ;x                         Allocated to stack - _bp +15
                                   1212 ;y                         Allocated to stack - _bp +17
                                   1213 ;n                         Allocated to registers 
                                   1214 ;sloc0                     Allocated to stack - _bp +1
                                   1215 ;sloc1                     Allocated to stack - _bp +3
                                   1216 ;sloc2                     Allocated to stack - _bp +5
                                   1217 ;sloc3                     Allocated to stack - _bp +7
                                   1218 ;sloc4                     Allocated to stack - _bp +9
                                   1219 ;sloc5                     Allocated to stack - _bp +11
                                   1220 ;sloc6                     Allocated to stack - _bp +13
                                   1221 ;------------------------------------------------------------
                                   1222 ;	life.c:203: void evolveu(void) {
                                   1223 ;	-----------------------------------------
                                   1224 ;	 function evolveu
                                   1225 ;	-----------------------------------------
      00246F                       1226 _evolveu:
      00246F C0 10            [24] 1227 	push	_bp
      002471 E5 81            [12] 1228 	mov	a,sp
      002473 F5 10            [12] 1229 	mov	_bp,a
      002475 24 12            [12] 1230 	add	a,#0x12
      002477 F5 81            [12] 1231 	mov	sp,a
                                   1232 ;	life.c:207: fixed = 0;
      002479 78 33            [12] 1233 	mov	r0,#_fixed
      00247B 76 00            [12] 1234 	mov	@r0,#0x00
                                   1235 ;	life.c:208: cycle2 = 0;
      00247D 78 34            [12] 1236 	mov	r0,#_cycle2
      00247F 76 00            [12] 1237 	mov	@r0,#0x00
                                   1238 ;	life.c:210: OE76 = OE76_0;
      002481 78 23            [12] 1239 	mov	r0,#_OE76
      002483 76 3F            [12] 1240 	mov	@r0,#0x3f
                                   1241 ;	life.c:30: OEreg = OE76;
      002485 90 F0 06         [24] 1242 	mov	dptr,#_OEreg
      002488 74 3F            [12] 1243 	mov	a,#0x3f
      00248A F0               [24] 1244 	movx	@dptr,a
                                   1245 ;	life.c:213: for (y = 0; y < H; y++) {
      00248B E5 10            [12] 1246 	mov	a,_bp
      00248D 24 11            [12] 1247 	add	a,#0x11
      00248F F8               [12] 1248 	mov	r0,a
      002490 E4               [12] 1249 	clr	a
      002491 F6               [12] 1250 	mov	@r0,a
      002492 08               [12] 1251 	inc	r0
      002493 F6               [12] 1252 	mov	@r0,a
      002494 E4               [12] 1253 	clr	a
      002495 FC               [12] 1254 	mov	r4,a
      002496 FD               [12] 1255 	mov	r5,a
      002497 E5 10            [12] 1256 	mov	a,_bp
      002499 24 0B            [12] 1257 	add	a,#0x0b
      00249B F8               [12] 1258 	mov	r0,a
      00249C E4               [12] 1259 	clr	a
      00249D F6               [12] 1260 	mov	@r0,a
      00249E 08               [12] 1261 	inc	r0
      00249F F6               [12] 1262 	mov	@r0,a
      0024A0                       1263 00135$:
                                   1264 ;	life.c:214: OE76 = OE76_0 | ((y & 0x0003u) << 6);
      0024A0 C0 04            [24] 1265 	push	ar4
      0024A2 C0 05            [24] 1266 	push	ar5
      0024A4 E5 10            [12] 1267 	mov	a,_bp
      0024A6 24 11            [12] 1268 	add	a,#0x11
      0024A8 F8               [12] 1269 	mov	r0,a
      0024A9 86 05            [24] 1270 	mov	ar5,@r0
      0024AB 53 05 03         [24] 1271 	anl	ar5,#0x03
      0024AE ED               [12] 1272 	mov	a,r5
      0024AF 03               [12] 1273 	rr	a
      0024B0 03               [12] 1274 	rr	a
      0024B1 54 C0            [12] 1275 	anl	a,#0xc0
      0024B3 FD               [12] 1276 	mov	r5,a
      0024B4 43 05 3F         [24] 1277 	orl	ar5,#0x3f
      0024B7 78 23            [12] 1278 	mov	r0,#_OE76
      0024B9 A6 05            [24] 1279 	mov	@r0,ar5
                                   1280 ;	life.c:30: OEreg = OE76;
      0024BB 90 F0 06         [24] 1281 	mov	dptr,#_OEreg
      0024BE ED               [12] 1282 	mov	a,r5
      0024BF F0               [24] 1283 	movx	@dptr,a
                                   1284 ;	life.c:216: for (x = 0; x < W; x++) {
      0024C0 E5 10            [12] 1285 	mov	a,_bp
      0024C2 24 11            [12] 1286 	add	a,#0x11
      0024C4 F8               [12] 1287 	mov	r0,a
      0024C5 74 BF            [12] 1288 	mov	a,#0xbf
      0024C7 26               [12] 1289 	add	a,@r0
      0024C8 FC               [12] 1290 	mov	r4,a
      0024C9 E4               [12] 1291 	clr	a
      0024CA 08               [12] 1292 	inc	r0
      0024CB 36               [12] 1293 	addc	a,@r0
      0024CC FD               [12] 1294 	mov	r5,a
      0024CD 74 C0            [12] 1295 	mov	a,#0xc0
      0024CF C0 E0            [24] 1296 	push	acc
      0024D1 E4               [12] 1297 	clr	a
      0024D2 C0 E0            [24] 1298 	push	acc
      0024D4 8C 82            [24] 1299 	mov	dpl,r4
      0024D6 8D 83            [24] 1300 	mov	dph,r5
      0024D8 12 31 BE         [24] 1301 	lcall	__modsint
      0024DB AC 82            [24] 1302 	mov	r4,dpl
      0024DD AD 83            [24] 1303 	mov	r5,dph
      0024DF 15 81            [12] 1304 	dec	sp
      0024E1 15 81            [12] 1305 	dec	sp
      0024E3 C0 05            [24] 1306 	push	ar5
      0024E5 C0 04            [24] 1307 	push	ar4
      0024E7 C0 04            [24] 1308 	push	ar4
      0024E9 C0 05            [24] 1309 	push	ar5
      0024EB 90 00 30         [24] 1310 	mov	dptr,#0x0030
      0024EE 12 2F E0         [24] 1311 	lcall	__mulint
      0024F1 A8 10            [24] 1312 	mov	r0,_bp
      0024F3 08               [12] 1313 	inc	r0
      0024F4 A6 82            [24] 1314 	mov	@r0,dpl
      0024F6 08               [12] 1315 	inc	r0
      0024F7 A6 83            [24] 1316 	mov	@r0,dph
      0024F9 15 81            [12] 1317 	dec	sp
      0024FB 15 81            [12] 1318 	dec	sp
      0024FD D0 04            [24] 1319 	pop	ar4
      0024FF D0 05            [24] 1320 	pop	ar5
      002501 E5 10            [12] 1321 	mov	a,_bp
      002503 24 11            [12] 1322 	add	a,#0x11
      002505 F8               [12] 1323 	mov	r0,a
      002506 74 C0            [12] 1324 	mov	a,#0xc0
      002508 26               [12] 1325 	add	a,@r0
      002509 FC               [12] 1326 	mov	r4,a
      00250A E4               [12] 1327 	clr	a
      00250B 08               [12] 1328 	inc	r0
      00250C 36               [12] 1329 	addc	a,@r0
      00250D FD               [12] 1330 	mov	r5,a
      00250E 74 C0            [12] 1331 	mov	a,#0xc0
      002510 C0 E0            [24] 1332 	push	acc
      002512 E4               [12] 1333 	clr	a
      002513 C0 E0            [24] 1334 	push	acc
      002515 8C 82            [24] 1335 	mov	dpl,r4
      002517 8D 83            [24] 1336 	mov	dph,r5
      002519 12 31 BE         [24] 1337 	lcall	__modsint
      00251C AC 82            [24] 1338 	mov	r4,dpl
      00251E AD 83            [24] 1339 	mov	r5,dph
      002520 15 81            [12] 1340 	dec	sp
      002522 15 81            [12] 1341 	dec	sp
      002524 C0 05            [24] 1342 	push	ar5
      002526 C0 04            [24] 1343 	push	ar4
      002528 C0 04            [24] 1344 	push	ar4
      00252A C0 05            [24] 1345 	push	ar5
      00252C 90 00 30         [24] 1346 	mov	dptr,#0x0030
      00252F 12 2F E0         [24] 1347 	lcall	__mulint
      002532 A8 10            [24] 1348 	mov	r0,_bp
      002534 08               [12] 1349 	inc	r0
      002535 08               [12] 1350 	inc	r0
      002536 08               [12] 1351 	inc	r0
      002537 A6 82            [24] 1352 	mov	@r0,dpl
      002539 08               [12] 1353 	inc	r0
      00253A A6 83            [24] 1354 	mov	@r0,dph
      00253C 15 81            [12] 1355 	dec	sp
      00253E 15 81            [12] 1356 	dec	sp
      002540 D0 04            [24] 1357 	pop	ar4
      002542 D0 05            [24] 1358 	pop	ar5
      002544 E5 10            [12] 1359 	mov	a,_bp
      002546 24 11            [12] 1360 	add	a,#0x11
      002548 F8               [12] 1361 	mov	r0,a
      002549 74 C1            [12] 1362 	mov	a,#0xc1
      00254B 26               [12] 1363 	add	a,@r0
      00254C FC               [12] 1364 	mov	r4,a
      00254D E4               [12] 1365 	clr	a
      00254E 08               [12] 1366 	inc	r0
      00254F 36               [12] 1367 	addc	a,@r0
      002550 FD               [12] 1368 	mov	r5,a
      002551 74 C0            [12] 1369 	mov	a,#0xc0
      002553 C0 E0            [24] 1370 	push	acc
      002555 E4               [12] 1371 	clr	a
      002556 C0 E0            [24] 1372 	push	acc
      002558 8C 82            [24] 1373 	mov	dpl,r4
      00255A 8D 83            [24] 1374 	mov	dph,r5
      00255C 12 31 BE         [24] 1375 	lcall	__modsint
      00255F AC 82            [24] 1376 	mov	r4,dpl
      002561 AD 83            [24] 1377 	mov	r5,dph
      002563 15 81            [12] 1378 	dec	sp
      002565 15 81            [12] 1379 	dec	sp
      002567 C0 05            [24] 1380 	push	ar5
      002569 C0 04            [24] 1381 	push	ar4
      00256B C0 04            [24] 1382 	push	ar4
      00256D C0 05            [24] 1383 	push	ar5
      00256F 90 00 30         [24] 1384 	mov	dptr,#0x0030
      002572 12 2F E0         [24] 1385 	lcall	__mulint
      002575 C8               [12] 1386 	xch	a,r0
      002576 E5 10            [12] 1387 	mov	a,_bp
      002578 24 05            [12] 1388 	add	a,#0x05
      00257A C8               [12] 1389 	xch	a,r0
      00257B A6 82            [24] 1390 	mov	@r0,dpl
      00257D 08               [12] 1391 	inc	r0
      00257E A6 83            [24] 1392 	mov	@r0,dph
      002580 15 81            [12] 1393 	dec	sp
      002582 15 81            [12] 1394 	dec	sp
      002584 D0 04            [24] 1395 	pop	ar4
      002586 D0 05            [24] 1396 	pop	ar5
      002588 E5 10            [12] 1397 	mov	a,_bp
      00258A 24 0F            [12] 1398 	add	a,#0x0f
      00258C F8               [12] 1399 	mov	r0,a
      00258D E4               [12] 1400 	clr	a
      00258E F6               [12] 1401 	mov	@r0,a
      00258F 08               [12] 1402 	inc	r0
      002590 F6               [12] 1403 	mov	@r0,a
                                   1404 ;	life.c:248: return;
      002591 D0 05            [24] 1405 	pop	ar5
      002593 D0 04            [24] 1406 	pop	ar4
                                   1407 ;	life.c:216: for (x = 0; x < W; x++) {
      002595                       1408 00133$:
                                   1409 ;	life.c:217: n = -u[A2D(W, y, x)];
      002595 C0 04            [24] 1410 	push	ar4
      002597 C0 05            [24] 1411 	push	ar5
      002599 E5 10            [12] 1412 	mov	a,_bp
      00259B 24 0B            [12] 1413 	add	a,#0x0b
      00259D F8               [12] 1414 	mov	r0,a
      00259E E5 10            [12] 1415 	mov	a,_bp
      0025A0 24 0F            [12] 1416 	add	a,#0x0f
      0025A2 F9               [12] 1417 	mov	r1,a
      0025A3 E7               [12] 1418 	mov	a,@r1
      0025A4 26               [12] 1419 	add	a,@r0
      0025A5 C0 E0            [24] 1420 	push	acc
      0025A7 09               [12] 1421 	inc	r1
      0025A8 E7               [12] 1422 	mov	a,@r1
      0025A9 08               [12] 1423 	inc	r0
      0025AA 36               [12] 1424 	addc	a,@r0
      0025AB C0 E0            [24] 1425 	push	acc
      0025AD E5 10            [12] 1426 	mov	a,_bp
      0025AF 24 0A            [12] 1427 	add	a,#0x0a
      0025B1 F8               [12] 1428 	mov	r0,a
      0025B2 D0 E0            [24] 1429 	pop	acc
      0025B4 F6               [12] 1430 	mov	@r0,a
      0025B5 18               [12] 1431 	dec	r0
      0025B6 D0 E0            [24] 1432 	pop	acc
      0025B8 F6               [12] 1433 	mov	@r0,a
      0025B9 E5 10            [12] 1434 	mov	a,_bp
      0025BB 24 09            [12] 1435 	add	a,#0x09
      0025BD F8               [12] 1436 	mov	r0,a
      0025BE E6               [12] 1437 	mov	a,@r0
      0025BF 24 00            [12] 1438 	add	a,#_u
      0025C1 F5 82            [12] 1439 	mov	dpl,a
      0025C3 08               [12] 1440 	inc	r0
      0025C4 E6               [12] 1441 	mov	a,@r0
      0025C5 34 88            [12] 1442 	addc	a,#(_u >> 8)
      0025C7 F5 83            [12] 1443 	mov	dph,a
      0025C9 E0               [24] 1444 	movx	a,@dptr
      0025CA FF               [12] 1445 	mov	r7,a
      0025CB 7E 00            [12] 1446 	mov	r6,#0x00
      0025CD C3               [12] 1447 	clr	c
      0025CE E4               [12] 1448 	clr	a
      0025CF 9F               [12] 1449 	subb	a,r7
      0025D0 FB               [12] 1450 	mov	r3,a
      0025D1 E4               [12] 1451 	clr	a
      0025D2 9E               [12] 1452 	subb	a,r6
      0025D3 FA               [12] 1453 	mov	r2,a
                                   1454 ;	life.c:222: UPDN(-1, -1);
      0025D4 E5 10            [12] 1455 	mov	a,_bp
      0025D6 24 0F            [12] 1456 	add	a,#0x0f
      0025D8 F8               [12] 1457 	mov	r0,a
      0025D9 74 2F            [12] 1458 	mov	a,#0x2f
      0025DB 26               [12] 1459 	add	a,@r0
      0025DC FE               [12] 1460 	mov	r6,a
      0025DD E4               [12] 1461 	clr	a
      0025DE 08               [12] 1462 	inc	r0
      0025DF 36               [12] 1463 	addc	a,@r0
      0025E0 FF               [12] 1464 	mov	r7,a
      0025E1 C0 05            [24] 1465 	push	ar5
      0025E3 C0 04            [24] 1466 	push	ar4
      0025E5 C0 03            [24] 1467 	push	ar3
      0025E7 C0 02            [24] 1468 	push	ar2
      0025E9 74 30            [12] 1469 	mov	a,#0x30
      0025EB C0 E0            [24] 1470 	push	acc
      0025ED E4               [12] 1471 	clr	a
      0025EE C0 E0            [24] 1472 	push	acc
      0025F0 8E 82            [24] 1473 	mov	dpl,r6
      0025F2 8F 83            [24] 1474 	mov	dph,r7
      0025F4 12 31 BE         [24] 1475 	lcall	__modsint
      0025F7 AE 82            [24] 1476 	mov	r6,dpl
      0025F9 AF 83            [24] 1477 	mov	r7,dph
      0025FB 15 81            [12] 1478 	dec	sp
      0025FD 15 81            [12] 1479 	dec	sp
      0025FF D0 02            [24] 1480 	pop	ar2
      002601 D0 03            [24] 1481 	pop	ar3
      002603 D0 04            [24] 1482 	pop	ar4
      002605 D0 05            [24] 1483 	pop	ar5
      002607 A8 10            [24] 1484 	mov	r0,_bp
      002609 08               [12] 1485 	inc	r0
      00260A EE               [12] 1486 	mov	a,r6
      00260B 26               [12] 1487 	add	a,@r0
      00260C FC               [12] 1488 	mov	r4,a
      00260D EF               [12] 1489 	mov	a,r7
      00260E 08               [12] 1490 	inc	r0
      00260F 36               [12] 1491 	addc	a,@r0
      002610 FD               [12] 1492 	mov	r5,a
      002611 EC               [12] 1493 	mov	a,r4
      002612 24 00            [12] 1494 	add	a,#_u
      002614 F5 82            [12] 1495 	mov	dpl,a
      002616 ED               [12] 1496 	mov	a,r5
      002617 34 88            [12] 1497 	addc	a,#(_u >> 8)
      002619 F5 83            [12] 1498 	mov	dph,a
      00261B E0               [24] 1499 	movx	a,@dptr
      00261C FD               [12] 1500 	mov	r5,a
      00261D 7C 00            [12] 1501 	mov	r4,#0x00
      00261F E5 10            [12] 1502 	mov	a,_bp
      002621 24 07            [12] 1503 	add	a,#0x07
      002623 F8               [12] 1504 	mov	r0,a
      002624 ED               [12] 1505 	mov	a,r5
      002625 2B               [12] 1506 	add	a,r3
      002626 F6               [12] 1507 	mov	@r0,a
      002627 EC               [12] 1508 	mov	a,r4
      002628 3A               [12] 1509 	addc	a,r2
      002629 08               [12] 1510 	inc	r0
      00262A F6               [12] 1511 	mov	@r0,a
                                   1512 ;	life.c:223: UPDN(-1, 0);
      00262B E5 10            [12] 1513 	mov	a,_bp
      00262D 24 0F            [12] 1514 	add	a,#0x0f
      00262F F8               [12] 1515 	mov	r0,a
      002630 74 30            [12] 1516 	mov	a,#0x30
      002632 26               [12] 1517 	add	a,@r0
      002633 FC               [12] 1518 	mov	r4,a
      002634 E4               [12] 1519 	clr	a
      002635 08               [12] 1520 	inc	r0
      002636 36               [12] 1521 	addc	a,@r0
      002637 FD               [12] 1522 	mov	r5,a
      002638 C0 07            [24] 1523 	push	ar7
      00263A C0 06            [24] 1524 	push	ar6
      00263C 74 30            [12] 1525 	mov	a,#0x30
      00263E C0 E0            [24] 1526 	push	acc
      002640 E4               [12] 1527 	clr	a
      002641 C0 E0            [24] 1528 	push	acc
      002643 8C 82            [24] 1529 	mov	dpl,r4
      002645 8D 83            [24] 1530 	mov	dph,r5
      002647 12 31 BE         [24] 1531 	lcall	__modsint
      00264A AC 82            [24] 1532 	mov	r4,dpl
      00264C AD 83            [24] 1533 	mov	r5,dph
      00264E 15 81            [12] 1534 	dec	sp
      002650 15 81            [12] 1535 	dec	sp
      002652 A8 10            [24] 1536 	mov	r0,_bp
      002654 08               [12] 1537 	inc	r0
      002655 EC               [12] 1538 	mov	a,r4
      002656 26               [12] 1539 	add	a,@r0
      002657 FA               [12] 1540 	mov	r2,a
      002658 ED               [12] 1541 	mov	a,r5
      002659 08               [12] 1542 	inc	r0
      00265A 36               [12] 1543 	addc	a,@r0
      00265B FB               [12] 1544 	mov	r3,a
      00265C EA               [12] 1545 	mov	a,r2
      00265D 24 00            [12] 1546 	add	a,#_u
      00265F F5 82            [12] 1547 	mov	dpl,a
      002661 EB               [12] 1548 	mov	a,r3
      002662 34 88            [12] 1549 	addc	a,#(_u >> 8)
      002664 F5 83            [12] 1550 	mov	dph,a
      002666 E0               [24] 1551 	movx	a,@dptr
      002667 FB               [12] 1552 	mov	r3,a
      002668 7A 00            [12] 1553 	mov	r2,#0x00
      00266A E5 10            [12] 1554 	mov	a,_bp
      00266C 24 07            [12] 1555 	add	a,#0x07
      00266E F8               [12] 1556 	mov	r0,a
      00266F EB               [12] 1557 	mov	a,r3
      002670 26               [12] 1558 	add	a,@r0
      002671 F6               [12] 1559 	mov	@r0,a
      002672 EA               [12] 1560 	mov	a,r2
      002673 08               [12] 1561 	inc	r0
      002674 36               [12] 1562 	addc	a,@r0
      002675 F6               [12] 1563 	mov	@r0,a
                                   1564 ;	life.c:224: UPDN(-1, 1);
      002676 E5 10            [12] 1565 	mov	a,_bp
      002678 24 0F            [12] 1566 	add	a,#0x0f
      00267A F8               [12] 1567 	mov	r0,a
      00267B 74 31            [12] 1568 	mov	a,#0x31
      00267D 26               [12] 1569 	add	a,@r0
      00267E FA               [12] 1570 	mov	r2,a
      00267F E4               [12] 1571 	clr	a
      002680 08               [12] 1572 	inc	r0
      002681 36               [12] 1573 	addc	a,@r0
      002682 FB               [12] 1574 	mov	r3,a
      002683 C0 05            [24] 1575 	push	ar5
      002685 C0 04            [24] 1576 	push	ar4
      002687 74 30            [12] 1577 	mov	a,#0x30
      002689 C0 E0            [24] 1578 	push	acc
      00268B E4               [12] 1579 	clr	a
      00268C C0 E0            [24] 1580 	push	acc
      00268E 8A 82            [24] 1581 	mov	dpl,r2
      002690 8B 83            [24] 1582 	mov	dph,r3
      002692 12 31 BE         [24] 1583 	lcall	__modsint
      002695 C8               [12] 1584 	xch	a,r0
      002696 E5 10            [12] 1585 	mov	a,_bp
      002698 24 0D            [12] 1586 	add	a,#0x0d
      00269A C8               [12] 1587 	xch	a,r0
      00269B A6 82            [24] 1588 	mov	@r0,dpl
      00269D 08               [12] 1589 	inc	r0
      00269E A6 83            [24] 1590 	mov	@r0,dph
      0026A0 15 81            [12] 1591 	dec	sp
      0026A2 15 81            [12] 1592 	dec	sp
      0026A4 D0 04            [24] 1593 	pop	ar4
      0026A6 D0 05            [24] 1594 	pop	ar5
      0026A8 D0 06            [24] 1595 	pop	ar6
      0026AA D0 07            [24] 1596 	pop	ar7
      0026AC A8 10            [24] 1597 	mov	r0,_bp
      0026AE 08               [12] 1598 	inc	r0
      0026AF E5 10            [12] 1599 	mov	a,_bp
      0026B1 24 0D            [12] 1600 	add	a,#0x0d
      0026B3 F9               [12] 1601 	mov	r1,a
      0026B4 E7               [12] 1602 	mov	a,@r1
      0026B5 26               [12] 1603 	add	a,@r0
      0026B6 FA               [12] 1604 	mov	r2,a
      0026B7 09               [12] 1605 	inc	r1
      0026B8 E7               [12] 1606 	mov	a,@r1
      0026B9 08               [12] 1607 	inc	r0
      0026BA 36               [12] 1608 	addc	a,@r0
      0026BB FB               [12] 1609 	mov	r3,a
      0026BC EA               [12] 1610 	mov	a,r2
      0026BD 24 00            [12] 1611 	add	a,#_u
      0026BF F5 82            [12] 1612 	mov	dpl,a
      0026C1 EB               [12] 1613 	mov	a,r3
      0026C2 34 88            [12] 1614 	addc	a,#(_u >> 8)
      0026C4 F5 83            [12] 1615 	mov	dph,a
      0026C6 E0               [24] 1616 	movx	a,@dptr
      0026C7 FB               [12] 1617 	mov	r3,a
      0026C8 7A 00            [12] 1618 	mov	r2,#0x00
      0026CA E5 10            [12] 1619 	mov	a,_bp
      0026CC 24 07            [12] 1620 	add	a,#0x07
      0026CE F8               [12] 1621 	mov	r0,a
      0026CF EB               [12] 1622 	mov	a,r3
      0026D0 26               [12] 1623 	add	a,@r0
      0026D1 F6               [12] 1624 	mov	@r0,a
      0026D2 EA               [12] 1625 	mov	a,r2
      0026D3 08               [12] 1626 	inc	r0
      0026D4 36               [12] 1627 	addc	a,@r0
      0026D5 F6               [12] 1628 	mov	@r0,a
                                   1629 ;	life.c:225: UPDN(0, -1);
      0026D6 E5 10            [12] 1630 	mov	a,_bp
      0026D8 24 03            [12] 1631 	add	a,#0x03
      0026DA F8               [12] 1632 	mov	r0,a
      0026DB EE               [12] 1633 	mov	a,r6
      0026DC 26               [12] 1634 	add	a,@r0
      0026DD FA               [12] 1635 	mov	r2,a
      0026DE EF               [12] 1636 	mov	a,r7
      0026DF 08               [12] 1637 	inc	r0
      0026E0 36               [12] 1638 	addc	a,@r0
      0026E1 FB               [12] 1639 	mov	r3,a
      0026E2 EA               [12] 1640 	mov	a,r2
      0026E3 24 00            [12] 1641 	add	a,#_u
      0026E5 F5 82            [12] 1642 	mov	dpl,a
      0026E7 EB               [12] 1643 	mov	a,r3
      0026E8 34 88            [12] 1644 	addc	a,#(_u >> 8)
      0026EA F5 83            [12] 1645 	mov	dph,a
      0026EC E0               [24] 1646 	movx	a,@dptr
      0026ED FB               [12] 1647 	mov	r3,a
      0026EE 7A 00            [12] 1648 	mov	r2,#0x00
      0026F0 E5 10            [12] 1649 	mov	a,_bp
      0026F2 24 07            [12] 1650 	add	a,#0x07
      0026F4 F8               [12] 1651 	mov	r0,a
      0026F5 EB               [12] 1652 	mov	a,r3
      0026F6 26               [12] 1653 	add	a,@r0
      0026F7 F6               [12] 1654 	mov	@r0,a
      0026F8 EA               [12] 1655 	mov	a,r2
      0026F9 08               [12] 1656 	inc	r0
      0026FA 36               [12] 1657 	addc	a,@r0
      0026FB F6               [12] 1658 	mov	@r0,a
                                   1659 ;	life.c:226: UPDN(0, 0);
      0026FC E5 10            [12] 1660 	mov	a,_bp
      0026FE 24 03            [12] 1661 	add	a,#0x03
      002700 F8               [12] 1662 	mov	r0,a
      002701 EC               [12] 1663 	mov	a,r4
      002702 26               [12] 1664 	add	a,@r0
      002703 FA               [12] 1665 	mov	r2,a
      002704 ED               [12] 1666 	mov	a,r5
      002705 08               [12] 1667 	inc	r0
      002706 36               [12] 1668 	addc	a,@r0
      002707 FB               [12] 1669 	mov	r3,a
      002708 EA               [12] 1670 	mov	a,r2
      002709 24 00            [12] 1671 	add	a,#_u
      00270B F5 82            [12] 1672 	mov	dpl,a
      00270D EB               [12] 1673 	mov	a,r3
      00270E 34 88            [12] 1674 	addc	a,#(_u >> 8)
      002710 F5 83            [12] 1675 	mov	dph,a
      002712 E0               [24] 1676 	movx	a,@dptr
      002713 FB               [12] 1677 	mov	r3,a
      002714 7A 00            [12] 1678 	mov	r2,#0x00
      002716 E5 10            [12] 1679 	mov	a,_bp
      002718 24 07            [12] 1680 	add	a,#0x07
      00271A F8               [12] 1681 	mov	r0,a
      00271B EB               [12] 1682 	mov	a,r3
      00271C 26               [12] 1683 	add	a,@r0
      00271D F6               [12] 1684 	mov	@r0,a
      00271E EA               [12] 1685 	mov	a,r2
      00271F 08               [12] 1686 	inc	r0
      002720 36               [12] 1687 	addc	a,@r0
      002721 F6               [12] 1688 	mov	@r0,a
                                   1689 ;	life.c:227: UPDN(0, 1);
      002722 E5 10            [12] 1690 	mov	a,_bp
      002724 24 03            [12] 1691 	add	a,#0x03
      002726 F8               [12] 1692 	mov	r0,a
      002727 E5 10            [12] 1693 	mov	a,_bp
      002729 24 0D            [12] 1694 	add	a,#0x0d
      00272B F9               [12] 1695 	mov	r1,a
      00272C E7               [12] 1696 	mov	a,@r1
      00272D 26               [12] 1697 	add	a,@r0
      00272E FA               [12] 1698 	mov	r2,a
      00272F 09               [12] 1699 	inc	r1
      002730 E7               [12] 1700 	mov	a,@r1
      002731 08               [12] 1701 	inc	r0
      002732 36               [12] 1702 	addc	a,@r0
      002733 FB               [12] 1703 	mov	r3,a
      002734 EA               [12] 1704 	mov	a,r2
      002735 24 00            [12] 1705 	add	a,#_u
      002737 F5 82            [12] 1706 	mov	dpl,a
      002739 EB               [12] 1707 	mov	a,r3
      00273A 34 88            [12] 1708 	addc	a,#(_u >> 8)
      00273C F5 83            [12] 1709 	mov	dph,a
      00273E E0               [24] 1710 	movx	a,@dptr
      00273F FB               [12] 1711 	mov	r3,a
      002740 7A 00            [12] 1712 	mov	r2,#0x00
      002742 E5 10            [12] 1713 	mov	a,_bp
      002744 24 07            [12] 1714 	add	a,#0x07
      002746 F8               [12] 1715 	mov	r0,a
      002747 EB               [12] 1716 	mov	a,r3
      002748 26               [12] 1717 	add	a,@r0
      002749 FB               [12] 1718 	mov	r3,a
      00274A EA               [12] 1719 	mov	a,r2
      00274B 08               [12] 1720 	inc	r0
      00274C 36               [12] 1721 	addc	a,@r0
      00274D FA               [12] 1722 	mov	r2,a
                                   1723 ;	life.c:228: UPDN(1, -1);
      00274E E5 10            [12] 1724 	mov	a,_bp
      002750 24 05            [12] 1725 	add	a,#0x05
      002752 F8               [12] 1726 	mov	r0,a
      002753 EE               [12] 1727 	mov	a,r6
      002754 26               [12] 1728 	add	a,@r0
      002755 FE               [12] 1729 	mov	r6,a
      002756 EF               [12] 1730 	mov	a,r7
      002757 08               [12] 1731 	inc	r0
      002758 36               [12] 1732 	addc	a,@r0
      002759 FF               [12] 1733 	mov	r7,a
      00275A EE               [12] 1734 	mov	a,r6
      00275B 24 00            [12] 1735 	add	a,#_u
      00275D F5 82            [12] 1736 	mov	dpl,a
      00275F EF               [12] 1737 	mov	a,r7
      002760 34 88            [12] 1738 	addc	a,#(_u >> 8)
      002762 F5 83            [12] 1739 	mov	dph,a
      002764 E0               [24] 1740 	movx	a,@dptr
      002765 7E 00            [12] 1741 	mov	r6,#0x00
      002767 2B               [12] 1742 	add	a,r3
      002768 FF               [12] 1743 	mov	r7,a
      002769 EE               [12] 1744 	mov	a,r6
      00276A 3A               [12] 1745 	addc	a,r2
      00276B FE               [12] 1746 	mov	r6,a
                                   1747 ;	life.c:229: UPDN(1, 0);
      00276C E5 10            [12] 1748 	mov	a,_bp
      00276E 24 05            [12] 1749 	add	a,#0x05
      002770 F8               [12] 1750 	mov	r0,a
      002771 EC               [12] 1751 	mov	a,r4
      002772 26               [12] 1752 	add	a,@r0
      002773 FC               [12] 1753 	mov	r4,a
      002774 ED               [12] 1754 	mov	a,r5
      002775 08               [12] 1755 	inc	r0
      002776 36               [12] 1756 	addc	a,@r0
      002777 FD               [12] 1757 	mov	r5,a
      002778 EC               [12] 1758 	mov	a,r4
      002779 24 00            [12] 1759 	add	a,#_u
      00277B F5 82            [12] 1760 	mov	dpl,a
      00277D ED               [12] 1761 	mov	a,r5
      00277E 34 88            [12] 1762 	addc	a,#(_u >> 8)
      002780 F5 83            [12] 1763 	mov	dph,a
      002782 E0               [24] 1764 	movx	a,@dptr
      002783 7C 00            [12] 1765 	mov	r4,#0x00
      002785 2F               [12] 1766 	add	a,r7
      002786 FD               [12] 1767 	mov	r5,a
      002787 EC               [12] 1768 	mov	a,r4
      002788 3E               [12] 1769 	addc	a,r6
      002789 FC               [12] 1770 	mov	r4,a
                                   1771 ;	life.c:230: UPDN(1, 1);
      00278A E5 10            [12] 1772 	mov	a,_bp
      00278C 24 05            [12] 1773 	add	a,#0x05
      00278E F8               [12] 1774 	mov	r0,a
      00278F E5 10            [12] 1775 	mov	a,_bp
      002791 24 0D            [12] 1776 	add	a,#0x0d
      002793 F9               [12] 1777 	mov	r1,a
      002794 E7               [12] 1778 	mov	a,@r1
      002795 26               [12] 1779 	add	a,@r0
      002796 FE               [12] 1780 	mov	r6,a
      002797 09               [12] 1781 	inc	r1
      002798 E7               [12] 1782 	mov	a,@r1
      002799 08               [12] 1783 	inc	r0
      00279A 36               [12] 1784 	addc	a,@r0
      00279B FF               [12] 1785 	mov	r7,a
      00279C EE               [12] 1786 	mov	a,r6
      00279D 24 00            [12] 1787 	add	a,#_u
      00279F F5 82            [12] 1788 	mov	dpl,a
      0027A1 EF               [12] 1789 	mov	a,r7
      0027A2 34 88            [12] 1790 	addc	a,#(_u >> 8)
      0027A4 F5 83            [12] 1791 	mov	dph,a
      0027A6 E0               [24] 1792 	movx	a,@dptr
      0027A7 7E 00            [12] 1793 	mov	r6,#0x00
      0027A9 2D               [12] 1794 	add	a,r5
      0027AA FF               [12] 1795 	mov	r7,a
      0027AB EE               [12] 1796 	mov	a,r6
      0027AC 3C               [12] 1797 	addc	a,r4
      0027AD FE               [12] 1798 	mov	r6,a
                                   1799 ;	life.c:233: nu[A2D(W, y, x)] = (n == 3) || ((n == 2) && u[A2D(W, y, x)]);
      0027AE E5 10            [12] 1800 	mov	a,_bp
      0027B0 24 09            [12] 1801 	add	a,#0x09
      0027B2 F8               [12] 1802 	mov	r0,a
      0027B3 E6               [12] 1803 	mov	a,@r0
      0027B4 24 00            [12] 1804 	add	a,#_nu
      0027B6 FB               [12] 1805 	mov	r3,a
      0027B7 08               [12] 1806 	inc	r0
      0027B8 E6               [12] 1807 	mov	a,@r0
      0027B9 34 AC            [12] 1808 	addc	a,#(_nu >> 8)
      0027BB FA               [12] 1809 	mov	r2,a
      0027BC BF 03 09         [24] 1810 	cjne	r7,#0x03,00177$
      0027BF BE 00 06         [24] 1811 	cjne	r6,#0x00,00177$
      0027C2 D0 05            [24] 1812 	pop	ar5
      0027C4 D0 04            [24] 1813 	pop	ar4
      0027C6 80 2F            [24] 1814 	sjmp	00140$
      0027C8                       1815 00177$:
      0027C8 D0 05            [24] 1816 	pop	ar5
      0027CA D0 04            [24] 1817 	pop	ar4
      0027CC BF 02 24         [24] 1818 	cjne	r7,#0x02,00139$
      0027CF BE 00 21         [24] 1819 	cjne	r6,#0x00,00139$
      0027D2 E5 10            [12] 1820 	mov	a,_bp
      0027D4 24 0B            [12] 1821 	add	a,#0x0b
      0027D6 F8               [12] 1822 	mov	r0,a
      0027D7 E5 10            [12] 1823 	mov	a,_bp
      0027D9 24 0F            [12] 1824 	add	a,#0x0f
      0027DB F9               [12] 1825 	mov	r1,a
      0027DC E7               [12] 1826 	mov	a,@r1
      0027DD 26               [12] 1827 	add	a,@r0
      0027DE FE               [12] 1828 	mov	r6,a
      0027DF 09               [12] 1829 	inc	r1
      0027E0 E7               [12] 1830 	mov	a,@r1
      0027E1 08               [12] 1831 	inc	r0
      0027E2 36               [12] 1832 	addc	a,@r0
      0027E3 FF               [12] 1833 	mov	r7,a
      0027E4 EE               [12] 1834 	mov	a,r6
      0027E5 24 00            [12] 1835 	add	a,#_u
      0027E7 FE               [12] 1836 	mov	r6,a
      0027E8 EF               [12] 1837 	mov	a,r7
      0027E9 34 88            [12] 1838 	addc	a,#(_u >> 8)
      0027EB FF               [12] 1839 	mov	r7,a
      0027EC 8E 82            [24] 1840 	mov	dpl,r6
      0027EE 8F 83            [24] 1841 	mov	dph,r7
      0027F0 E0               [24] 1842 	movx	a,@dptr
      0027F1 70 04            [24] 1843 	jnz	00140$
      0027F3                       1844 00139$:
                                   1845 ;	assignBit
      0027F3 C2 00            [12] 1846 	clr	b0
      0027F5 80 02            [24] 1847 	sjmp	00141$
      0027F7                       1848 00140$:
                                   1849 ;	assignBit
      0027F7 D2 00            [12] 1850 	setb	b0
      0027F9                       1851 00141$:
      0027F9 A2 00            [12] 1852 	mov	c,b0
      0027FB E4               [12] 1853 	clr	a
      0027FC 33               [12] 1854 	rlc	a
      0027FD 8B 82            [24] 1855 	mov	dpl,r3
      0027FF 8A 83            [24] 1856 	mov	dph,r2
      002801 F0               [24] 1857 	movx	@dptr,a
                                   1858 ;	life.c:234: cycle2 |= pu[A2D(W, y, x)] ^ nu[A2D(W, y, x)];
      002802 E5 10            [12] 1859 	mov	a,_bp
      002804 24 0F            [12] 1860 	add	a,#0x0f
      002806 F8               [12] 1861 	mov	r0,a
      002807 E6               [12] 1862 	mov	a,@r0
      002808 2C               [12] 1863 	add	a,r4
      002809 FE               [12] 1864 	mov	r6,a
      00280A 08               [12] 1865 	inc	r0
      00280B E6               [12] 1866 	mov	a,@r0
      00280C 3D               [12] 1867 	addc	a,r5
      00280D FF               [12] 1868 	mov	r7,a
      00280E EE               [12] 1869 	mov	a,r6
      00280F 24 00            [12] 1870 	add	a,#_pu
      002811 F5 82            [12] 1871 	mov	dpl,a
      002813 EF               [12] 1872 	mov	a,r7
      002814 34 64            [12] 1873 	addc	a,#(_pu >> 8)
      002816 F5 83            [12] 1874 	mov	dph,a
      002818 E0               [24] 1875 	movx	a,@dptr
      002819 FB               [12] 1876 	mov	r3,a
      00281A EE               [12] 1877 	mov	a,r6
      00281B 24 00            [12] 1878 	add	a,#_nu
      00281D F5 82            [12] 1879 	mov	dpl,a
      00281F EF               [12] 1880 	mov	a,r7
      002820 34 AC            [12] 1881 	addc	a,#(_nu >> 8)
      002822 F5 83            [12] 1882 	mov	dph,a
      002824 E0               [24] 1883 	movx	a,@dptr
      002825 FA               [12] 1884 	mov	r2,a
      002826 6B               [12] 1885 	xrl	a,r3
      002827 78 34            [12] 1886 	mov	r0,#_cycle2
      002829 46               [12] 1887 	orl	a,@r0
      00282A F6               [12] 1888 	mov	@r0,a
                                   1889 ;	life.c:235: fixed |= u[A2D(W, y, x)] ^ nu[A2D(W, y, x)];
      00282B EE               [12] 1890 	mov	a,r6
      00282C 24 00            [12] 1891 	add	a,#_u
      00282E F5 82            [12] 1892 	mov	dpl,a
      002830 EF               [12] 1893 	mov	a,r7
      002831 34 88            [12] 1894 	addc	a,#(_u >> 8)
      002833 F5 83            [12] 1895 	mov	dph,a
      002835 E0               [24] 1896 	movx	a,@dptr
      002836 FF               [12] 1897 	mov	r7,a
      002837 EA               [12] 1898 	mov	a,r2
      002838 6F               [12] 1899 	xrl	a,r7
      002839 78 33            [12] 1900 	mov	r0,#_fixed
      00283B 46               [12] 1901 	orl	a,@r0
      00283C F6               [12] 1902 	mov	@r0,a
                                   1903 ;	life.c:216: for (x = 0; x < W; x++) {
      00283D E5 10            [12] 1904 	mov	a,_bp
      00283F 24 0F            [12] 1905 	add	a,#0x0f
      002841 F8               [12] 1906 	mov	r0,a
      002842 06               [12] 1907 	inc	@r0
      002843 B6 00 02         [24] 1908 	cjne	@r0,#0x00,00181$
      002846 08               [12] 1909 	inc	r0
      002847 06               [12] 1910 	inc	@r0
      002848                       1911 00181$:
      002848 E5 10            [12] 1912 	mov	a,_bp
      00284A 24 0F            [12] 1913 	add	a,#0x0f
      00284C F8               [12] 1914 	mov	r0,a
      00284D C3               [12] 1915 	clr	c
      00284E E6               [12] 1916 	mov	a,@r0
      00284F 94 30            [12] 1917 	subb	a,#0x30
      002851 08               [12] 1918 	inc	r0
      002852 E6               [12] 1919 	mov	a,@r0
      002853 64 80            [12] 1920 	xrl	a,#0x80
      002855 94 80            [12] 1921 	subb	a,#0x80
      002857 50 03            [24] 1922 	jnc	00182$
      002859 02 25 95         [24] 1923 	ljmp	00133$
      00285C                       1924 00182$:
                                   1925 ;	life.c:213: for (y = 0; y < H; y++) {
      00285C 74 30            [12] 1926 	mov	a,#0x30
      00285E 2C               [12] 1927 	add	a,r4
      00285F FC               [12] 1928 	mov	r4,a
      002860 E4               [12] 1929 	clr	a
      002861 3D               [12] 1930 	addc	a,r5
      002862 FD               [12] 1931 	mov	r5,a
      002863 E5 10            [12] 1932 	mov	a,_bp
      002865 24 0B            [12] 1933 	add	a,#0x0b
      002867 F8               [12] 1934 	mov	r0,a
      002868 74 30            [12] 1935 	mov	a,#0x30
      00286A 26               [12] 1936 	add	a,@r0
      00286B F6               [12] 1937 	mov	@r0,a
      00286C E4               [12] 1938 	clr	a
      00286D 08               [12] 1939 	inc	r0
      00286E 36               [12] 1940 	addc	a,@r0
      00286F F6               [12] 1941 	mov	@r0,a
      002870 E5 10            [12] 1942 	mov	a,_bp
      002872 24 11            [12] 1943 	add	a,#0x11
      002874 F8               [12] 1944 	mov	r0,a
      002875 06               [12] 1945 	inc	@r0
      002876 B6 00 02         [24] 1946 	cjne	@r0,#0x00,00183$
      002879 08               [12] 1947 	inc	r0
      00287A 06               [12] 1948 	inc	@r0
      00287B                       1949 00183$:
      00287B E5 10            [12] 1950 	mov	a,_bp
      00287D 24 11            [12] 1951 	add	a,#0x11
      00287F F8               [12] 1952 	mov	r0,a
      002880 C3               [12] 1953 	clr	c
      002881 E6               [12] 1954 	mov	a,@r0
      002882 94 C0            [12] 1955 	subb	a,#0xc0
      002884 08               [12] 1956 	inc	r0
      002885 E6               [12] 1957 	mov	a,@r0
      002886 64 80            [12] 1958 	xrl	a,#0x80
      002888 94 80            [12] 1959 	subb	a,#0x80
      00288A 50 03            [24] 1960 	jnc	00184$
      00288C 02 24 A0         [24] 1961 	ljmp	00135$
      00288F                       1962 00184$:
                                   1963 ;	life.c:239: OE76 = OE76_0;
      00288F 78 23            [12] 1964 	mov	r0,#_OE76
      002891 76 3F            [12] 1965 	mov	@r0,#0x3f
                                   1966 ;	life.c:30: OEreg = OE76;
      002893 90 F0 06         [24] 1967 	mov	dptr,#_OEreg
      002896 74 3F            [12] 1968 	mov	a,#0x3f
      002898 F0               [24] 1969 	movx	@dptr,a
                                   1970 ;	life.c:242: cycle2 = !cycle2;
      002899 78 34            [12] 1971 	mov	r0,#_cycle2
      00289B E6               [12] 1972 	mov	a,@r0
      00289C B4 01 00         [24] 1973 	cjne	a,#0x01,00185$
      00289F                       1974 00185$:
      00289F 92 00            [24] 1975 	mov	b0,c
      0028A1 78 34            [12] 1976 	mov	r0,#_cycle2
      0028A3 E4               [12] 1977 	clr	a
      0028A4 33               [12] 1978 	rlc	a
      0028A5 F6               [12] 1979 	mov	@r0,a
                                   1980 ;	life.c:243: fixed = !fixed;
      0028A6 78 33            [12] 1981 	mov	r0,#_fixed
      0028A8 E6               [12] 1982 	mov	a,@r0
      0028A9 B4 01 00         [24] 1983 	cjne	a,#0x01,00186$
      0028AC                       1984 00186$:
      0028AC 92 00            [24] 1985 	mov	b0,c
      0028AE 78 33            [12] 1986 	mov	r0,#_fixed
      0028B0 E4               [12] 1987 	clr	a
      0028B1 33               [12] 1988 	rlc	a
      0028B2 F6               [12] 1989 	mov	@r0,a
                                   1990 ;	life.c:245: memcpy(pu, u, sizeof (u));
      0028B3 E4               [12] 1991 	clr	a
      0028B4 C0 E0            [24] 1992 	push	acc
      0028B6 74 24            [12] 1993 	mov	a,#0x24
      0028B8 C0 E0            [24] 1994 	push	acc
      0028BA 74 00            [12] 1995 	mov	a,#_u
      0028BC C0 E0            [24] 1996 	push	acc
      0028BE 74 88            [12] 1997 	mov	a,#(_u >> 8)
      0028C0 C0 E0            [24] 1998 	push	acc
      0028C2 E4               [12] 1999 	clr	a
      0028C3 C0 E0            [24] 2000 	push	acc
      0028C5 90 64 00         [24] 2001 	mov	dptr,#_pu
      0028C8 75 F0 00         [24] 2002 	mov	b,#0x00
      0028CB 12 30 7E         [24] 2003 	lcall	___memcpy
      0028CE E5 81            [12] 2004 	mov	a,sp
      0028D0 24 FB            [12] 2005 	add	a,#0xfb
      0028D2 F5 81            [12] 2006 	mov	sp,a
                                   2007 ;	life.c:246: memcpy(u, nu, sizeof (nu));
      0028D4 E4               [12] 2008 	clr	a
      0028D5 C0 E0            [24] 2009 	push	acc
      0028D7 74 24            [12] 2010 	mov	a,#0x24
      0028D9 C0 E0            [24] 2011 	push	acc
      0028DB 74 00            [12] 2012 	mov	a,#_nu
      0028DD C0 E0            [24] 2013 	push	acc
      0028DF 74 AC            [12] 2014 	mov	a,#(_nu >> 8)
      0028E1 C0 E0            [24] 2015 	push	acc
      0028E3 E4               [12] 2016 	clr	a
      0028E4 C0 E0            [24] 2017 	push	acc
      0028E6 90 88 00         [24] 2018 	mov	dptr,#_u
      0028E9 75 F0 00         [24] 2019 	mov	b,#0x00
      0028EC 12 30 7E         [24] 2020 	lcall	___memcpy
      0028EF E5 81            [12] 2021 	mov	a,sp
      0028F1 24 FB            [12] 2022 	add	a,#0xfb
                                   2023 ;	life.c:248: return;
                                   2024 ;	life.c:249: }
      0028F3 85 10 81         [24] 2025 	mov	sp,_bp
      0028F6 D0 10            [24] 2026 	pop	_bp
      0028F8 22               [24] 2027 	ret
                                   2028 ;------------------------------------------------------------
                                   2029 ;Allocation info for local variables in function 'main'
                                   2030 ;------------------------------------------------------------
                                   2031 ;c                         Allocated to registers r6 r7 
                                   2032 ;__3932160007              Allocated to registers 
                                   2033 ;__4587520011              Allocated to registers 
                                   2034 ;------------------------------------------------------------
                                   2035 ;	life.c:251: void main(void) {
                                   2036 ;	-----------------------------------------
                                   2037 ;	 function main
                                   2038 ;	-----------------------------------------
      0028F9                       2039 _main:
                                   2040 ;	life.c:254: IT0 = 1;
                                   2041 ;	assignBit
      0028F9 D2 88            [12] 2042 	setb	_IT0
                                   2043 ;	life.c:255: IT1 = 1;
                                   2044 ;	assignBit
      0028FB D2 8A            [12] 2045 	setb	_IT1
                                   2046 ;	life.c:256: EX0 = 1;
                                   2047 ;	assignBit
      0028FD D2 A8            [12] 2048 	setb	_EX0
                                   2049 ;	life.c:257: EX1 = 1;
                                   2050 ;	assignBit
      0028FF D2 AA            [12] 2051 	setb	_EX1
                                   2052 ;	life.c:258: EA = 1;
                                   2053 ;	assignBit
      002901 D2 AF            [12] 2054 	setb	_EA
                                   2055 ;	life.c:259: P1_7 = 0;
                                   2056 ;	assignBit
      002903 C2 97            [12] 2057 	clr	_P1_7
                                   2058 ;	life.c:264: __endasm;
      002905 00               [12] 2059 	nop
      002906 00               [12] 2060 	nop
      002907 00               [12] 2061 	nop
                                   2062 ;	life.c:266: srand(RND);
      002908 90 E0 00         [24] 2063 	mov	dptr,#_RND
      00290B E0               [24] 2064 	movx	a,@dptr
      00290C FE               [12] 2065 	mov	r6,a
      00290D A3               [24] 2066 	inc	dptr
      00290E E0               [24] 2067 	movx	a,@dptr
      00290F FF               [12] 2068 	mov	r7,a
      002910 8E 82            [24] 2069 	mov	dpl,r6
      002912 8F 83            [24] 2070 	mov	dph,r7
      002914 12 2C B1         [24] 2071 	lcall	_srand
                                   2072 ;	life.c:268: OE76 = OE76_0;
      002917 78 23            [12] 2073 	mov	r0,#_OE76
      002919 76 3F            [12] 2074 	mov	@r0,#0x3f
                                   2075 ;	life.c:30: OEreg = OE76;
      00291B 90 F0 06         [24] 2076 	mov	dptr,#_OEreg
      00291E 74 3F            [12] 2077 	mov	a,#0x3f
      002920 F0               [24] 2078 	movx	@dptr,a
                                   2079 ;	life.c:43: gen = 0ul;
      002921 78 24            [12] 2080 	mov	r0,#_gen
      002923 E4               [12] 2081 	clr	a
      002924 F6               [12] 2082 	mov	@r0,a
      002925 08               [12] 2083 	inc	r0
      002926 F6               [12] 2084 	mov	@r0,a
      002927 08               [12] 2085 	inc	r0
      002928 F6               [12] 2086 	mov	@r0,a
      002929 08               [12] 2087 	inc	r0
      00292A F6               [12] 2088 	mov	@r0,a
                                   2089 ;	life.c:44: genc2 = 0ul;
      00292B 78 28            [12] 2090 	mov	r0,#_genc2
      00292D F6               [12] 2091 	mov	@r0,a
      00292E 08               [12] 2092 	inc	r0
      00292F F6               [12] 2093 	mov	@r0,a
      002930 08               [12] 2094 	inc	r0
      002931 F6               [12] 2095 	mov	@r0,a
      002932 08               [12] 2096 	inc	r0
      002933 F6               [12] 2097 	mov	@r0,a
                                   2098 ;	life.c:45: genfx = 0ul;
      002934 78 2C            [12] 2099 	mov	r0,#_genfx
      002936 F6               [12] 2100 	mov	@r0,a
      002937 08               [12] 2101 	inc	r0
      002938 F6               [12] 2102 	mov	@r0,a
      002939 08               [12] 2103 	inc	r0
      00293A F6               [12] 2104 	mov	@r0,a
      00293B 08               [12] 2105 	inc	r0
      00293C F6               [12] 2106 	mov	@r0,a
                                   2107 ;	life.c:46: c2set = 0;
      00293D 78 30            [12] 2108 	mov	r0,#_c2set
      00293F 76 00            [12] 2109 	mov	@r0,#0x00
                                   2110 ;	life.c:47: fxset = 0;
      002941 78 31            [12] 2111 	mov	r0,#_fxset
      002943 76 00            [12] 2112 	mov	@r0,#0x00
                                   2113 ;	life.c:272: pruni = 0;
      002945 78 32            [12] 2114 	mov	r0,#_pruni
      002947 76 00            [12] 2115 	mov	@r0,#0x00
                                   2116 ;	life.c:274: printstr("\033[?25h\033[m");
      002949 90 33 13         [24] 2117 	mov	dptr,#___str_11
      00294C 75 F0 80         [24] 2118 	mov	b,#0x80
      00294F 12 2C FB         [24] 2119 	lcall	_printstr
                                   2120 ;	life.c:276: for (i0 = 0; !i0; ) {
      002952 78 21            [12] 2121 	mov	r0,#_i0
      002954 76 00            [12] 2122 	mov	@r0,#0x00
                                   2123 ;	life.c:277: while (1) {
      002956                       2124 00133$:
                                   2125 ;	life.c:278: printstr("LIFE [ I L R ] [ D O Q P ] [ S U");
      002956 90 33 1D         [24] 2126 	mov	dptr,#___str_12
      002959 75 F0 80         [24] 2127 	mov	b,#0x80
      00295C 12 2C FB         [24] 2128 	lcall	_printstr
                                   2129 ;	life.c:279: putchar(pruni ? (int)'1' : (int)'0');
      00295F 78 32            [12] 2130 	mov	r0,#_pruni
      002961 E6               [12] 2131 	mov	a,@r0
      002962 60 06            [24] 2132 	jz	00176$
      002964 7E 31            [12] 2133 	mov	r6,#0x31
      002966 7F 00            [12] 2134 	mov	r7,#0x00
      002968 80 04            [24] 2135 	sjmp	00177$
      00296A                       2136 00176$:
      00296A 7E 30            [12] 2137 	mov	r6,#0x30
      00296C 7F 00            [12] 2138 	mov	r7,#0x00
      00296E                       2139 00177$:
      00296E 8E 82            [24] 2140 	mov	dpl,r6
      002970 8F 83            [24] 2141 	mov	dph,r7
      002972 12 2C CA         [24] 2142 	lcall	_putchar
                                   2143 ;	life.c:280: printstr(" B ] T\r\n");
      002975 90 33 3E         [24] 2144 	mov	dptr,#___str_13
      002978 75 F0 80         [24] 2145 	mov	b,#0x80
      00297B 12 2C FB         [24] 2146 	lcall	_printstr
                                   2147 ;	life.c:281: c = toupper(getchar());
      00297E 12 2C D4         [24] 2148 	lcall	_getchar
      002981 12 31 7B         [24] 2149 	lcall	_toupper
      002984 AE 82            [24] 2150 	mov	r6,dpl
      002986 AF 83            [24] 2151 	mov	r7,dph
                                   2152 ;	life.c:282: if (i0 || (c == (int)'T')) goto term;
      002988 78 21            [12] 2153 	mov	r0,#_i0
      00298A E6               [12] 2154 	mov	a,@r0
      00298B 60 03            [24] 2155 	jz	00314$
      00298D 02 2B DE         [24] 2156 	ljmp	00160$
      002990                       2157 00314$:
      002990 BE 54 06         [24] 2158 	cjne	r6,#0x54,00315$
      002993 BF 00 03         [24] 2159 	cjne	r7,#0x00,00315$
      002996 02 2B DE         [24] 2160 	ljmp	00160$
      002999                       2161 00315$:
                                   2162 ;	life.c:283: else if ((c == (int)'I') || (c == (int)'L') || (c == (int)'R')) {
      002999 BE 49 05         [24] 2163 	cjne	r6,#0x49,00316$
      00299C BF 00 02         [24] 2164 	cjne	r7,#0x00,00316$
      00299F 80 0E            [24] 2165 	sjmp	00123$
      0029A1                       2166 00316$:
      0029A1 BE 4C 05         [24] 2167 	cjne	r6,#0x4c,00317$
      0029A4 BF 00 02         [24] 2168 	cjne	r7,#0x00,00317$
      0029A7 80 06            [24] 2169 	sjmp	00123$
      0029A9                       2170 00317$:
      0029A9 BE 52 34         [24] 2171 	cjne	r6,#0x52,00124$
      0029AC BF 00 31         [24] 2172 	cjne	r7,#0x00,00124$
      0029AF                       2173 00123$:
                                   2174 ;	life.c:284: if (c == (int)'L') loadiu();
      0029AF BE 4C 08         [24] 2175 	cjne	r6,#0x4c,00104$
      0029B2 BF 00 05         [24] 2176 	cjne	r7,#0x00,00104$
      0029B5 12 22 E0         [24] 2177 	lcall	_loadiu
      0029B8 80 09            [24] 2178 	sjmp	00105$
      0029BA                       2179 00104$:
                                   2180 ;	life.c:285: else if (c == (int)'R') loadriu();
      0029BA BE 52 06         [24] 2181 	cjne	r6,#0x52,00105$
      0029BD BF 00 03         [24] 2182 	cjne	r7,#0x00,00105$
      0029C0 12 24 03         [24] 2183 	lcall	_loadriu
      0029C3                       2184 00105$:
                                   2185 ;	life.c:286: initu();
      0029C3 12 20 8D         [24] 2186 	lcall	_initu
                                   2187 ;	life.c:287: showu(PRUNI, u);
      0029C6 74 00            [12] 2188 	mov	a,#_u
      0029C8 C0 E0            [24] 2189 	push	acc
      0029CA 74 88            [12] 2190 	mov	a,#(_u >> 8)
      0029CC C0 E0            [24] 2191 	push	acc
      0029CE E4               [12] 2192 	clr	a
      0029CF C0 E0            [24] 2193 	push	acc
      0029D1 75 82 04         [24] 2194 	mov	dpl,#0x04
      0029D4 12 20 EC         [24] 2195 	lcall	_showu
      0029D7 15 81            [12] 2196 	dec	sp
      0029D9 15 81            [12] 2197 	dec	sp
      0029DB 15 81            [12] 2198 	dec	sp
      0029DD 02 29 56         [24] 2199 	ljmp	00133$
      0029E0                       2200 00124$:
                                   2201 ;	life.c:288: } else if (c == (int)'D') dumpu(iu);
      0029E0 BE 44 0F         [24] 2202 	cjne	r6,#0x44,00121$
      0029E3 BF 00 0C         [24] 2203 	cjne	r7,#0x00,00121$
      0029E6 90 40 00         [24] 2204 	mov	dptr,#_iu
      0029E9 75 F0 00         [24] 2205 	mov	b,#0x00
      0029EC 12 22 3A         [24] 2206 	lcall	_dumpu
      0029EF 02 29 56         [24] 2207 	ljmp	00133$
      0029F2                       2208 00121$:
                                   2209 ;	life.c:289: else if (c == (int)'O') showu(PRUNI, iu);
      0029F2 BE 4F 1D         [24] 2210 	cjne	r6,#0x4f,00118$
      0029F5 BF 00 1A         [24] 2211 	cjne	r7,#0x00,00118$
      0029F8 74 00            [12] 2212 	mov	a,#_iu
      0029FA C0 E0            [24] 2213 	push	acc
      0029FC 74 40            [12] 2214 	mov	a,#(_iu >> 8)
      0029FE C0 E0            [24] 2215 	push	acc
      002A00 E4               [12] 2216 	clr	a
      002A01 C0 E0            [24] 2217 	push	acc
      002A03 75 82 04         [24] 2218 	mov	dpl,#0x04
      002A06 12 20 EC         [24] 2219 	lcall	_showu
      002A09 15 81            [12] 2220 	dec	sp
      002A0B 15 81            [12] 2221 	dec	sp
      002A0D 15 81            [12] 2222 	dec	sp
      002A0F 02 29 56         [24] 2223 	ljmp	00133$
      002A12                       2224 00118$:
                                   2225 ;	life.c:290: else if (c == (int)'Q') dumpu(u);
      002A12 BE 51 0F         [24] 2226 	cjne	r6,#0x51,00115$
      002A15 BF 00 0C         [24] 2227 	cjne	r7,#0x00,00115$
      002A18 90 88 00         [24] 2228 	mov	dptr,#_u
      002A1B 75 F0 00         [24] 2229 	mov	b,#0x00
      002A1E 12 22 3A         [24] 2230 	lcall	_dumpu
      002A21 02 29 56         [24] 2231 	ljmp	00133$
      002A24                       2232 00115$:
                                   2233 ;	life.c:291: else if (c == (int)'P') showu(PRHDR | PRUNI, u);
      002A24 BE 50 1D         [24] 2234 	cjne	r6,#0x50,00112$
      002A27 BF 00 1A         [24] 2235 	cjne	r7,#0x00,00112$
      002A2A 74 00            [12] 2236 	mov	a,#_u
      002A2C C0 E0            [24] 2237 	push	acc
      002A2E 74 88            [12] 2238 	mov	a,#(_u >> 8)
      002A30 C0 E0            [24] 2239 	push	acc
      002A32 E4               [12] 2240 	clr	a
      002A33 C0 E0            [24] 2241 	push	acc
      002A35 75 82 06         [24] 2242 	mov	dpl,#0x06
      002A38 12 20 EC         [24] 2243 	lcall	_showu
      002A3B 15 81            [12] 2244 	dec	sp
      002A3D 15 81            [12] 2245 	dec	sp
      002A3F 15 81            [12] 2246 	dec	sp
      002A41 02 29 56         [24] 2247 	ljmp	00133$
      002A44                       2248 00112$:
                                   2249 ;	life.c:292: else if (c == (int)'U') pruni = !pruni;
      002A44 BE 55 13         [24] 2250 	cjne	r6,#0x55,00109$
      002A47 BF 00 10         [24] 2251 	cjne	r7,#0x00,00109$
      002A4A 78 32            [12] 2252 	mov	r0,#_pruni
      002A4C E6               [12] 2253 	mov	a,@r0
      002A4D B4 01 00         [24] 2254 	cjne	a,#0x01,00334$
      002A50                       2255 00334$:
      002A50 92 00            [24] 2256 	mov	b0,c
      002A52 78 32            [12] 2257 	mov	r0,#_pruni
      002A54 E4               [12] 2258 	clr	a
      002A55 33               [12] 2259 	rlc	a
      002A56 F6               [12] 2260 	mov	@r0,a
      002A57 02 29 56         [24] 2261 	ljmp	00133$
      002A5A                       2262 00109$:
                                   2263 ;	life.c:293: else if (c == (int)'S') break;
      002A5A BE 53 05         [24] 2264 	cjne	r6,#0x53,00335$
      002A5D BF 00 02         [24] 2265 	cjne	r7,#0x00,00335$
      002A60 80 03            [24] 2266 	sjmp	00336$
      002A62                       2267 00335$:
      002A62 02 29 56         [24] 2268 	ljmp	00133$
      002A65                       2269 00336$:
                                   2270 ;	life.c:296: for (i1 = 0; !i0 && !i1; ) {
      002A65 78 22            [12] 2271 	mov	r0,#_i1
      002A67 76 00            [12] 2272 	mov	@r0,#0x00
      002A69                       2273 00170$:
      002A69 78 21            [12] 2274 	mov	r0,#_i0
      002A6B E6               [12] 2275 	mov	a,@r0
      002A6C 60 03            [24] 2276 	jz	00337$
      002A6E 02 2B B1         [24] 2277 	ljmp	00156$
      002A71                       2278 00337$:
      002A71 78 22            [12] 2279 	mov	r0,#_i1
      002A73 E6               [12] 2280 	mov	a,@r0
      002A74 60 03            [24] 2281 	jz	00338$
      002A76 02 2B B1         [24] 2282 	ljmp	00156$
      002A79                       2283 00338$:
                                   2284 ;	life.c:297: if (fxu()) {
      002A79 78 31            [12] 2285 	mov	r0,#_fxset
      002A7B E6               [12] 2286 	mov	a,@r0
      002A7C 60 23            [24] 2287 	jz	00136$
                                   2288 ;	life.c:298: printstr("FIXED AT ");
      002A7E 90 33 47         [24] 2289 	mov	dptr,#___str_14
      002A81 75 F0 80         [24] 2290 	mov	b,#0x80
      002A84 12 2C FB         [24] 2291 	lcall	_printstr
                                   2292 ;	life.c:299: showu(PRHDR, u);
      002A87 74 00            [12] 2293 	mov	a,#_u
      002A89 C0 E0            [24] 2294 	push	acc
      002A8B 74 88            [12] 2295 	mov	a,#(_u >> 8)
      002A8D C0 E0            [24] 2296 	push	acc
      002A8F E4               [12] 2297 	clr	a
      002A90 C0 E0            [24] 2298 	push	acc
      002A92 75 82 02         [24] 2299 	mov	dpl,#0x02
      002A95 12 20 EC         [24] 2300 	lcall	_showu
      002A98 15 81            [12] 2301 	dec	sp
      002A9A 15 81            [12] 2302 	dec	sp
      002A9C 15 81            [12] 2303 	dec	sp
                                   2304 ;	life.c:300: break;
      002A9E 02 2B B1         [24] 2305 	ljmp	00156$
      002AA1                       2306 00136$:
                                   2307 ;	life.c:302: if (pruni) showu(PRCLR | PRHDR | PRUNI, u);
      002AA1 78 32            [12] 2308 	mov	r0,#_pruni
      002AA3 E6               [12] 2309 	mov	a,@r0
      002AA4 60 19            [24] 2310 	jz	00138$
      002AA6 74 00            [12] 2311 	mov	a,#_u
      002AA8 C0 E0            [24] 2312 	push	acc
      002AAA 74 88            [12] 2313 	mov	a,#(_u >> 8)
      002AAC C0 E0            [24] 2314 	push	acc
      002AAE E4               [12] 2315 	clr	a
      002AAF C0 E0            [24] 2316 	push	acc
      002AB1 75 82 07         [24] 2317 	mov	dpl,#0x07
      002AB4 12 20 EC         [24] 2318 	lcall	_showu
      002AB7 15 81            [12] 2319 	dec	sp
      002AB9 15 81            [12] 2320 	dec	sp
      002ABB 15 81            [12] 2321 	dec	sp
      002ABD 80 17            [24] 2322 	sjmp	00139$
      002ABF                       2323 00138$:
                                   2324 ;	life.c:303: else showu(PRHDR, u);
      002ABF 74 00            [12] 2325 	mov	a,#_u
      002AC1 C0 E0            [24] 2326 	push	acc
      002AC3 74 88            [12] 2327 	mov	a,#(_u >> 8)
      002AC5 C0 E0            [24] 2328 	push	acc
      002AC7 E4               [12] 2329 	clr	a
      002AC8 C0 E0            [24] 2330 	push	acc
      002ACA 75 82 02         [24] 2331 	mov	dpl,#0x02
      002ACD 12 20 EC         [24] 2332 	lcall	_showu
      002AD0 15 81            [12] 2333 	dec	sp
      002AD2 15 81            [12] 2334 	dec	sp
      002AD4 15 81            [12] 2335 	dec	sp
      002AD6                       2336 00139$:
                                   2337 ;	life.c:53: gen++;
      002AD6 78 24            [12] 2338 	mov	r0,#_gen
      002AD8 06               [12] 2339 	inc	@r0
      002AD9 B6 00 0C         [24] 2340 	cjne	@r0,#0x00,00341$
      002ADC 08               [12] 2341 	inc	r0
      002ADD 06               [12] 2342 	inc	@r0
      002ADE B6 00 07         [24] 2343 	cjne	@r0,#0x00,00341$
      002AE1 08               [12] 2344 	inc	r0
      002AE2 06               [12] 2345 	inc	@r0
      002AE3 B6 00 02         [24] 2346 	cjne	@r0,#0x00,00341$
      002AE6 08               [12] 2347 	inc	r0
      002AE7 06               [12] 2348 	inc	@r0
      002AE8                       2349 00341$:
                                   2350 ;	life.c:305: evolveu();
      002AE8 12 24 6F         [24] 2351 	lcall	_evolveu
                                   2352 ;	life.c:306: if (fixed) {
      002AEB 78 33            [12] 2353 	mov	r0,#_fixed
      002AED E6               [12] 2354 	mov	a,@r0
      002AEE 60 41            [24] 2355 	jz	00141$
                                   2356 ;	life.c:59: genfx = gen;
      002AF0 78 24            [12] 2357 	mov	r0,#_gen
      002AF2 86 04            [24] 2358 	mov	ar4,@r0
      002AF4 08               [12] 2359 	inc	r0
      002AF5 86 05            [24] 2360 	mov	ar5,@r0
      002AF7 08               [12] 2361 	inc	r0
      002AF8 86 06            [24] 2362 	mov	ar6,@r0
      002AFA 08               [12] 2363 	inc	r0
      002AFB 86 07            [24] 2364 	mov	ar7,@r0
      002AFD 78 2C            [12] 2365 	mov	r0,#_genfx
      002AFF A6 04            [24] 2366 	mov	@r0,ar4
      002B01 08               [12] 2367 	inc	r0
      002B02 A6 05            [24] 2368 	mov	@r0,ar5
      002B04 08               [12] 2369 	inc	r0
      002B05 A6 06            [24] 2370 	mov	@r0,ar6
      002B07 08               [12] 2371 	inc	r0
      002B08 A6 07            [24] 2372 	mov	@r0,ar7
                                   2373 ;	life.c:60: fxset = 1;
      002B0A 78 31            [12] 2374 	mov	r0,#_fxset
      002B0C 76 01            [12] 2375 	mov	@r0,#0x01
                                   2376 ;	life.c:308: printstr("FIXED AT ");
      002B0E 90 33 47         [24] 2377 	mov	dptr,#___str_14
      002B11 75 F0 80         [24] 2378 	mov	b,#0x80
      002B14 12 2C FB         [24] 2379 	lcall	_printstr
                                   2380 ;	life.c:309: showu(PRHDR, u);
      002B17 74 00            [12] 2381 	mov	a,#_u
      002B19 C0 E0            [24] 2382 	push	acc
      002B1B 74 88            [12] 2383 	mov	a,#(_u >> 8)
      002B1D C0 E0            [24] 2384 	push	acc
      002B1F E4               [12] 2385 	clr	a
      002B20 C0 E0            [24] 2386 	push	acc
      002B22 75 82 02         [24] 2387 	mov	dpl,#0x02
      002B25 12 20 EC         [24] 2388 	lcall	_showu
      002B28 15 81            [12] 2389 	dec	sp
      002B2A 15 81            [12] 2390 	dec	sp
      002B2C 15 81            [12] 2391 	dec	sp
                                   2392 ;	life.c:310: break;
      002B2E 02 2B B1         [24] 2393 	ljmp	00156$
      002B31                       2394 00141$:
                                   2395 ;	life.c:312: if (cycle2) {
      002B31 78 34            [12] 2396 	mov	r0,#_cycle2
      002B33 E6               [12] 2397 	mov	a,@r0
      002B34 60 23            [24] 2398 	jz	00145$
                                   2399 ;	life.c:313: if (!c2u()) updatec2();
      002B36 78 30            [12] 2400 	mov	r0,#_c2set
      002B38 E6               [12] 2401 	mov	a,@r0
      002B39 70 1E            [24] 2402 	jnz	00145$
                                   2403 ;	life.c:66: genc2 = gen;
      002B3B 78 24            [12] 2404 	mov	r0,#_gen
      002B3D 86 04            [24] 2405 	mov	ar4,@r0
      002B3F 08               [12] 2406 	inc	r0
      002B40 86 05            [24] 2407 	mov	ar5,@r0
      002B42 08               [12] 2408 	inc	r0
      002B43 86 06            [24] 2409 	mov	ar6,@r0
      002B45 08               [12] 2410 	inc	r0
      002B46 86 07            [24] 2411 	mov	ar7,@r0
      002B48 78 28            [12] 2412 	mov	r0,#_genc2
      002B4A A6 04            [24] 2413 	mov	@r0,ar4
      002B4C 08               [12] 2414 	inc	r0
      002B4D A6 05            [24] 2415 	mov	@r0,ar5
      002B4F 08               [12] 2416 	inc	r0
      002B50 A6 06            [24] 2417 	mov	@r0,ar6
      002B52 08               [12] 2418 	inc	r0
      002B53 A6 07            [24] 2419 	mov	@r0,ar7
                                   2420 ;	life.c:67: c2set = 1;
      002B55 78 30            [12] 2421 	mov	r0,#_c2set
      002B57 76 01            [12] 2422 	mov	@r0,#0x01
                                   2423 ;	life.c:313: if (!c2u()) updatec2();
      002B59                       2424 00145$:
                                   2425 ;	life.c:316: c = getchar_poll();
      002B59 12 2C E1         [24] 2426 	lcall	_getchar_poll
      002B5C AE 82            [24] 2427 	mov	r6,dpl
      002B5E AF 83            [24] 2428 	mov	r7,dph
                                   2429 ;	life.c:317: if (c > 0) {
      002B60 C3               [12] 2430 	clr	c
      002B61 E4               [12] 2431 	clr	a
      002B62 9E               [12] 2432 	subb	a,r6
      002B63 74 80            [12] 2433 	mov	a,#(0x00 ^ 0x80)
      002B65 8F F0            [24] 2434 	mov	b,r7
      002B67 63 F0 80         [24] 2435 	xrl	b,#0x80
      002B6A 95 F0            [12] 2436 	subb	a,b
      002B6C 40 03            [24] 2437 	jc	00345$
      002B6E 02 2A 69         [24] 2438 	ljmp	00170$
      002B71                       2439 00345$:
                                   2440 ;	life.c:318: c = toupper(c);
      002B71 8E 82            [24] 2441 	mov	dpl,r6
      002B73 8F 83            [24] 2442 	mov	dph,r7
      002B75 12 31 7B         [24] 2443 	lcall	_toupper
      002B78 AE 82            [24] 2444 	mov	r6,dpl
      002B7A AF 83            [24] 2445 	mov	r7,dph
                                   2446 ;	life.c:319: if (c == (int)'U') pruni = !pruni;
      002B7C BE 55 13         [24] 2447 	cjne	r6,#0x55,00152$
      002B7F BF 00 10         [24] 2448 	cjne	r7,#0x00,00152$
      002B82 78 32            [12] 2449 	mov	r0,#_pruni
      002B84 E6               [12] 2450 	mov	a,@r0
      002B85 B4 01 00         [24] 2451 	cjne	a,#0x01,00348$
      002B88                       2452 00348$:
      002B88 92 00            [24] 2453 	mov	b0,c
      002B8A 78 32            [12] 2454 	mov	r0,#_pruni
      002B8C E4               [12] 2455 	clr	a
      002B8D 33               [12] 2456 	rlc	a
      002B8E F6               [12] 2457 	mov	@r0,a
      002B8F 02 2A 69         [24] 2458 	ljmp	00170$
      002B92                       2459 00152$:
                                   2460 ;	life.c:320: else if (c == (int)'T') i0 = 1;
      002B92 BE 54 0A         [24] 2461 	cjne	r6,#0x54,00149$
      002B95 BF 00 07         [24] 2462 	cjne	r7,#0x00,00149$
      002B98 78 21            [12] 2463 	mov	r0,#_i0
      002B9A 76 01            [12] 2464 	mov	@r0,#0x01
      002B9C 02 2A 69         [24] 2465 	ljmp	00170$
      002B9F                       2466 00149$:
                                   2467 ;	life.c:321: else if (c == (int)'B') i1 = 1;
      002B9F BE 42 05         [24] 2468 	cjne	r6,#0x42,00351$
      002BA2 BF 00 02         [24] 2469 	cjne	r7,#0x00,00351$
      002BA5 80 03            [24] 2470 	sjmp	00352$
      002BA7                       2471 00351$:
      002BA7 02 2A 69         [24] 2472 	ljmp	00170$
      002BAA                       2473 00352$:
      002BAA 78 22            [12] 2474 	mov	r0,#_i1
      002BAC 76 01            [12] 2475 	mov	@r0,#0x01
      002BAE 02 2A 69         [24] 2476 	ljmp	00170$
      002BB1                       2477 00156$:
                                   2478 ;	life.c:325: if (i1) {
      002BB1 78 22            [12] 2479 	mov	r0,#_i1
      002BB3 E6               [12] 2480 	mov	a,@r0
      002BB4 60 20            [24] 2481 	jz	00173$
                                   2482 ;	life.c:326: printstr("BREAK AT ");
      002BB6 90 33 51         [24] 2483 	mov	dptr,#___str_15
      002BB9 75 F0 80         [24] 2484 	mov	b,#0x80
      002BBC 12 2C FB         [24] 2485 	lcall	_printstr
                                   2486 ;	life.c:327: showu(PRHDR, u);
      002BBF 74 00            [12] 2487 	mov	a,#_u
      002BC1 C0 E0            [24] 2488 	push	acc
      002BC3 74 88            [12] 2489 	mov	a,#(_u >> 8)
      002BC5 C0 E0            [24] 2490 	push	acc
      002BC7 E4               [12] 2491 	clr	a
      002BC8 C0 E0            [24] 2492 	push	acc
      002BCA 75 82 02         [24] 2493 	mov	dpl,#0x02
      002BCD 12 20 EC         [24] 2494 	lcall	_showu
      002BD0 15 81            [12] 2495 	dec	sp
      002BD2 15 81            [12] 2496 	dec	sp
      002BD4 15 81            [12] 2497 	dec	sp
      002BD6                       2498 00173$:
                                   2499 ;	life.c:276: for (i0 = 0; !i0; ) {
      002BD6 78 21            [12] 2500 	mov	r0,#_i0
      002BD8 E6               [12] 2501 	mov	a,@r0
      002BD9 70 03            [24] 2502 	jnz	00354$
      002BDB 02 29 56         [24] 2503 	ljmp	00133$
      002BDE                       2504 00354$:
                                   2505 ;	life.c:331: term:
      002BDE                       2506 00160$:
                                   2507 ;	life.c:332: EA = 0;
                                   2508 ;	assignBit
      002BDE C2 AF            [12] 2509 	clr	_EA
                                   2510 ;	life.c:333: printstr("TERM\r\n");
      002BE0 90 33 5B         [24] 2511 	mov	dptr,#___str_16
      002BE3 75 F0 80         [24] 2512 	mov	b,#0x80
      002BE6 12 2C FB         [24] 2513 	lcall	_printstr
                                   2514 ;	life.c:335: PCON |= 2;
      002BE9 43 87 02         [24] 2515 	orl	_PCON,#0x02
                                   2516 ;	life.c:337: return;
                                   2517 ;	life.c:338: }
      002BEC 22               [24] 2518 	ret
                                   2519 	.area CSEG    (CODE)
                                   2520 	.area CONST   (CODE)
                                   2521 	.area CONST   (CODE)
      0032CA                       2522 ___str_0:
      0032CA 1B                    2523 	.db 0x1b
      0032CB 5B 32 4A              2524 	.ascii "[2J"
      0032CE 00                    2525 	.db 0x00
                                   2526 	.area CSEG    (CODE)
                                   2527 	.area CONST   (CODE)
      0032CF                       2528 ___str_1:
      0032CF 47 45 4E 20           2529 	.ascii "GEN "
      0032D3 00                    2530 	.db 0x00
                                   2531 	.area CSEG    (CODE)
                                   2532 	.area CONST   (CODE)
      0032D4                       2533 ___str_2:
      0032D4 20 43 59 43 4C 45 32  2534 	.ascii " CYCLE2 "
             20
      0032DC 00                    2535 	.db 0x00
                                   2536 	.area CSEG    (CODE)
                                   2537 	.area CONST   (CODE)
      0032DD                       2538 ___str_3:
      0032DD 20 46 49 58 45 44 20  2539 	.ascii " FIXED "
      0032E4 00                    2540 	.db 0x00
                                   2541 	.area CSEG    (CODE)
                                   2542 	.area CONST   (CODE)
      0032E5                       2543 ___str_4:
      0032E5 0D                    2544 	.db 0x0d
      0032E6 0A                    2545 	.db 0x0a
      0032E7 00                    2546 	.db 0x00
                                   2547 	.area CSEG    (CODE)
                                   2548 	.area CONST   (CODE)
      0032E8                       2549 ___str_5:
      0032E8 1B                    2550 	.db 0x1b
      0032E9 5B 3F 32 35 6C        2551 	.ascii "[?25l"
      0032EE 00                    2552 	.db 0x00
                                   2553 	.area CSEG    (CODE)
                                   2554 	.area CONST   (CODE)
      0032EF                       2555 ___str_6:
      0032EF 1B                    2556 	.db 0x1b
      0032F0 5B 3F 32 35 68        2557 	.ascii "[?25h"
      0032F5 00                    2558 	.db 0x00
                                   2559 	.area CSEG    (CODE)
                                   2560 	.area CONST   (CODE)
      0032F6                       2561 ___str_7:
      0032F6 23                    2562 	.ascii "#"
      0032F7 0A                    2563 	.db 0x0a
      0032F8 00                    2564 	.db 0x00
                                   2565 	.area CSEG    (CODE)
                                   2566 	.area CONST   (CODE)
      0032F9                       2567 ___str_8:
      0032F9 4C 4F 41 44 20 30 20  2568 	.ascii "LOAD 0 1 ~ # <"
             31 20 7E 20 23 20 3C
      003307 00                    2569 	.db 0x00
                                   2570 	.area CSEG    (CODE)
                                   2571 	.area CONST   (CODE)
      003308                       2572 ___str_9:
      003308 3E                    2573 	.ascii ">"
      003309 0D                    2574 	.db 0x0d
      00330A 0A                    2575 	.db 0x0a
      00330B 00                    2576 	.db 0x00
                                   2577 	.area CSEG    (CODE)
                                   2578 	.area CONST   (CODE)
      00330C                       2579 ___str_10:
      00330C 52 41 4E 44 4F 4D     2580 	.ascii "RANDOM"
      003312 00                    2581 	.db 0x00
                                   2582 	.area CSEG    (CODE)
                                   2583 	.area CONST   (CODE)
      003313                       2584 ___str_11:
      003313 1B                    2585 	.db 0x1b
      003314 5B 3F 32 35 68        2586 	.ascii "[?25h"
      003319 1B                    2587 	.db 0x1b
      00331A 5B 6D                 2588 	.ascii "[m"
      00331C 00                    2589 	.db 0x00
                                   2590 	.area CSEG    (CODE)
                                   2591 	.area CONST   (CODE)
      00331D                       2592 ___str_12:
      00331D 4C 49 46 45 20 5B 20  2593 	.ascii "LIFE [ I L R ] [ D O Q P ] [ S U"
             49 20 4C 20 52 20 5D
             20 5B 20 44 20 4F 20
             51 20 50 20 5D 20 5B
             20 53 20 55
      00333D 00                    2594 	.db 0x00
                                   2595 	.area CSEG    (CODE)
                                   2596 	.area CONST   (CODE)
      00333E                       2597 ___str_13:
      00333E 20 42 20 5D 20 54     2598 	.ascii " B ] T"
      003344 0D                    2599 	.db 0x0d
      003345 0A                    2600 	.db 0x0a
      003346 00                    2601 	.db 0x00
                                   2602 	.area CSEG    (CODE)
                                   2603 	.area CONST   (CODE)
      003347                       2604 ___str_14:
      003347 46 49 58 45 44 20 41  2605 	.ascii "FIXED AT "
             54 20
      003350 00                    2606 	.db 0x00
                                   2607 	.area CSEG    (CODE)
                                   2608 	.area CONST   (CODE)
      003351                       2609 ___str_15:
      003351 42 52 45 41 4B 20 41  2610 	.ascii "BREAK AT "
             54 20
      00335A 00                    2611 	.db 0x00
                                   2612 	.area CSEG    (CODE)
                                   2613 	.area CONST   (CODE)
      00335B                       2614 ___str_16:
      00335B 54 45 52 4D           2615 	.ascii "TERM"
      00335F 0D                    2616 	.db 0x0d
      003360 0A                    2617 	.db 0x0a
      003361 00                    2618 	.db 0x00
                                   2619 	.area CSEG    (CODE)
                                   2620 	.area XINIT   (CODE)
                                   2621 	.area CABS    (ABS,CODE)
