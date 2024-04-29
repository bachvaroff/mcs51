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
      002016 02 28 53         [24]  420 	ljmp	_main
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
      0020A5 12 2F B4         [24]  503 	lcall	___memcpy
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
      0020BE 12 30 47         [24]  516 	lcall	_memset
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
      0020FB 90 32 00         [24]  578 	mov	dptr,#___str_0
      0020FE 75 F0 80         [24]  579 	mov	b,#0x80
      002101 C0 07            [24]  580 	push	ar7
      002103 12 2C 31         [24]  581 	lcall	_printstr
      002106 D0 07            [24]  582 	pop	ar7
      002108                        583 00102$:
                                    584 ;	life.c:108: if (prflags & PRHDR) {
      002108 EF               [12]  585 	mov	a,r7
      002109 30 E1 6B         [24]  586 	jnb	acc.1,00108$
                                    587 ;	life.c:109: printstr("GEN ");
      00210C 90 32 05         [24]  588 	mov	dptr,#___str_1
      00210F 75 F0 80         [24]  589 	mov	b,#0x80
      002112 C0 07            [24]  590 	push	ar7
      002114 12 2C 31         [24]  591 	lcall	_printstr
                                    592 ;	life.c:110: print32x(gen);
      002117 78 24            [12]  593 	mov	r0,#_gen
      002119 86 82            [24]  594 	mov	dpl,@r0
      00211B 08               [12]  595 	inc	r0
      00211C 86 83            [24]  596 	mov	dph,@r0
      00211E 08               [12]  597 	inc	r0
      00211F 86 F0            [24]  598 	mov	b,@r0
      002121 08               [12]  599 	inc	r0
      002122 E6               [12]  600 	mov	a,@r0
      002123 12 2D E1         [24]  601 	lcall	_print32x
      002126 D0 07            [24]  602 	pop	ar7
                                    603 ;	life.c:111: if (c2set) {
      002128 78 30            [12]  604 	mov	r0,#_c2set
      00212A E6               [12]  605 	mov	a,@r0
      00212B 60 1C            [24]  606 	jz	00104$
                                    607 ;	life.c:112: printstr(" CYCLE2 ");
      00212D 90 32 0A         [24]  608 	mov	dptr,#___str_2
      002130 75 F0 80         [24]  609 	mov	b,#0x80
      002133 C0 07            [24]  610 	push	ar7
      002135 12 2C 31         [24]  611 	lcall	_printstr
                                    612 ;	life.c:113: print32x(genc2);
      002138 78 28            [12]  613 	mov	r0,#_genc2
      00213A 86 82            [24]  614 	mov	dpl,@r0
      00213C 08               [12]  615 	inc	r0
      00213D 86 83            [24]  616 	mov	dph,@r0
      00213F 08               [12]  617 	inc	r0
      002140 86 F0            [24]  618 	mov	b,@r0
      002142 08               [12]  619 	inc	r0
      002143 E6               [12]  620 	mov	a,@r0
      002144 12 2D E1         [24]  621 	lcall	_print32x
      002147 D0 07            [24]  622 	pop	ar7
      002149                        623 00104$:
                                    624 ;	life.c:115: if (fxset) {
      002149 78 31            [12]  625 	mov	r0,#_fxset
      00214B E6               [12]  626 	mov	a,@r0
      00214C 60 1C            [24]  627 	jz	00106$
                                    628 ;	life.c:116: printstr(" FIXED ");
      00214E 90 32 13         [24]  629 	mov	dptr,#___str_3
      002151 75 F0 80         [24]  630 	mov	b,#0x80
      002154 C0 07            [24]  631 	push	ar7
      002156 12 2C 31         [24]  632 	lcall	_printstr
                                    633 ;	life.c:117: print32x(genfx);
      002159 78 2C            [12]  634 	mov	r0,#_genfx
      00215B 86 82            [24]  635 	mov	dpl,@r0
      00215D 08               [12]  636 	inc	r0
      00215E 86 83            [24]  637 	mov	dph,@r0
      002160 08               [12]  638 	inc	r0
      002161 86 F0            [24]  639 	mov	b,@r0
      002163 08               [12]  640 	inc	r0
      002164 E6               [12]  641 	mov	a,@r0
      002165 12 2D E1         [24]  642 	lcall	_print32x
      002168 D0 07            [24]  643 	pop	ar7
      00216A                        644 00106$:
                                    645 ;	life.c:119: printstr("\r\n");
      00216A 90 32 1B         [24]  646 	mov	dptr,#___str_4
      00216D 75 F0 80         [24]  647 	mov	b,#0x80
      002170 C0 07            [24]  648 	push	ar7
      002172 12 2C 31         [24]  649 	lcall	_printstr
      002175 D0 07            [24]  650 	pop	ar7
      002177                        651 00108$:
                                    652 ;	life.c:121: if (prflags & PRUNI) {
      002177 EF               [12]  653 	mov	a,r7
      002178 20 E2 03         [24]  654 	jb	acc.2,00168$
      00217B 02 22 34         [24]  655 	ljmp	00115$
      00217E                        656 00168$:
                                    657 ;	life.c:122: printstr("\033[?25l");
      00217E 90 32 1E         [24]  658 	mov	dptr,#___str_5
      002181 75 F0 80         [24]  659 	mov	b,#0x80
      002184 12 2C 31         [24]  660 	lcall	_printstr
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
      0021B9 12 30 D8         [24]  702 	lcall	__gptrget
      0021BC D0 05            [24]  703 	pop	ar5
      0021BE D0 04            [24]  704 	pop	ar4
      0021C0 60 18            [24]  705 	jz	00110$
      0021C2 90 00 31         [24]  706 	mov	dptr,#0x0031
      0021C5 C0 05            [24]  707 	push	ar5
      0021C7 C0 04            [24]  708 	push	ar4
      0021C9 C0 03            [24]  709 	push	ar3
      0021CB C0 02            [24]  710 	push	ar2
      0021CD 12 2C 00         [24]  711 	lcall	_putchar
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
      0021E5 12 2C 00         [24]  724 	lcall	_putchar
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
      002207 90 32 1B         [24]  749 	mov	dptr,#___str_4
      00220A 75 F0 80         [24]  750 	mov	b,#0x80
      00220D 12 2C 31         [24]  751 	lcall	_printstr
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
      00222B 90 32 25         [24]  773 	mov	dptr,#___str_6
      00222E 75 F0 80         [24]  774 	mov	b,#0x80
      002231 12 2C 31         [24]  775 	lcall	_printstr
      002234                        776 00115$:
                                    777 ;	life.c:132: return;
                                    778 ;	life.c:133: }
      002234 85 10 81         [24]  779 	mov	sp,_bp
      002237 D0 10            [24]  780 	pop	_bp
      002239 22               [24]  781 	ret
                                    782 ;------------------------------------------------------------
                                    783 ;Allocation info for local variables in function 'loadiu'
                                    784 ;------------------------------------------------------------
                                    785 ;x                         Allocated to registers r2 r3 
                                    786 ;y                         Allocated to registers r4 r5 
                                    787 ;nbits                     Allocated to stack - _bp +3
                                    788 ;c                         Allocated to registers r6 r7 
                                    789 ;sloc0                     Allocated to stack - _bp +1
                                    790 ;------------------------------------------------------------
                                    791 ;	life.c:135: static void loadiu(void) {
                                    792 ;	-----------------------------------------
                                    793 ;	 function loadiu
                                    794 ;	-----------------------------------------
      00223A                        795 _loadiu:
      00223A C0 10            [24]  796 	push	_bp
      00223C E5 81            [12]  797 	mov	a,sp
      00223E F5 10            [12]  798 	mov	_bp,a
      002240 24 04            [12]  799 	add	a,#0x04
      002242 F5 81            [12]  800 	mov	sp,a
                                    801 ;	life.c:139: memset(iu, 0, sizeof (iu));
      002244 E4               [12]  802 	clr	a
      002245 C0 E0            [24]  803 	push	acc
      002247 74 24            [12]  804 	mov	a,#0x24
      002249 C0 E0            [24]  805 	push	acc
      00224B E4               [12]  806 	clr	a
      00224C C0 E0            [24]  807 	push	acc
      00224E 90 40 00         [24]  808 	mov	dptr,#_iu
      002251 75 F0 00         [24]  809 	mov	b,#0x00
      002254 12 30 47         [24]  810 	lcall	_memset
      002257 15 81            [12]  811 	dec	sp
      002259 15 81            [12]  812 	dec	sp
      00225B 15 81            [12]  813 	dec	sp
                                    814 ;	life.c:141: printstr("LOAD 0 1 ~ # <");
      00225D 90 32 2C         [24]  815 	mov	dptr,#___str_7
      002260 75 F0 80         [24]  816 	mov	b,#0x80
      002263 12 2C 31         [24]  817 	lcall	_printstr
                                    818 ;	life.c:143: for (nbits = 0, y = 0; y < (H * W); y += W) {
      002266 E5 10            [12]  819 	mov	a,_bp
      002268 24 03            [12]  820 	add	a,#0x03
      00226A F8               [12]  821 	mov	r0,a
      00226B E4               [12]  822 	clr	a
      00226C F6               [12]  823 	mov	@r0,a
      00226D 08               [12]  824 	inc	r0
      00226E F6               [12]  825 	mov	@r0,a
      00226F 7C 00            [12]  826 	mov	r4,#0x00
      002271 7D 00            [12]  827 	mov	r5,#0x00
      002273                        828 00129$:
      002273 C3               [12]  829 	clr	c
      002274 ED               [12]  830 	mov	a,r5
      002275 64 80            [12]  831 	xrl	a,#0x80
      002277 94 A4            [12]  832 	subb	a,#0xa4
      002279 40 03            [24]  833 	jc	00174$
      00227B 02 23 28         [24]  834 	ljmp	00119$
      00227E                        835 00174$:
                                    836 ;	life.c:145: while (1) {
      00227E 7A 00            [12]  837 	mov	r2,#0x00
      002280 7B 00            [12]  838 	mov	r3,#0x00
      002282                        839 00113$:
                                    840 ;	life.c:146: c = getchar();
      002282 C0 05            [24]  841 	push	ar5
      002284 C0 04            [24]  842 	push	ar4
      002286 C0 03            [24]  843 	push	ar3
      002288 C0 02            [24]  844 	push	ar2
      00228A 12 2C 0A         [24]  845 	lcall	_getchar
      00228D A8 10            [24]  846 	mov	r0,_bp
      00228F 08               [12]  847 	inc	r0
      002290 A6 82            [24]  848 	mov	@r0,dpl
      002292 08               [12]  849 	inc	r0
      002293 A6 83            [24]  850 	mov	@r0,dph
      002295 D0 02            [24]  851 	pop	ar2
      002297 D0 03            [24]  852 	pop	ar3
      002299 D0 04            [24]  853 	pop	ar4
      00229B D0 05            [24]  854 	pop	ar5
                                    855 ;	life.c:147: if (c == (int)'0') {
      00229D A8 10            [24]  856 	mov	r0,_bp
      00229F 08               [12]  857 	inc	r0
      0022A0 B6 30 23         [24]  858 	cjne	@r0,#0x30,00110$
      0022A3 08               [12]  859 	inc	r0
      0022A4 B6 00 1F         [24]  860 	cjne	@r0,#0x00,00110$
                                    861 ;	life.c:148: iu[y + x] = 0;
      0022A7 EA               [12]  862 	mov	a,r2
      0022A8 2C               [12]  863 	add	a,r4
      0022A9 FE               [12]  864 	mov	r6,a
      0022AA EB               [12]  865 	mov	a,r3
      0022AB 3D               [12]  866 	addc	a,r5
      0022AC FF               [12]  867 	mov	r7,a
      0022AD EE               [12]  868 	mov	a,r6
      0022AE 24 00            [12]  869 	add	a,#_iu
      0022B0 F5 82            [12]  870 	mov	dpl,a
      0022B2 EF               [12]  871 	mov	a,r7
      0022B3 34 40            [12]  872 	addc	a,#(_iu >> 8)
      0022B5 F5 83            [12]  873 	mov	dph,a
      0022B7 E4               [12]  874 	clr	a
      0022B8 F0               [24]  875 	movx	@dptr,a
                                    876 ;	life.c:149: nbits++;
      0022B9 E5 10            [12]  877 	mov	a,_bp
      0022BB 24 03            [12]  878 	add	a,#0x03
      0022BD F8               [12]  879 	mov	r0,a
      0022BE 06               [12]  880 	inc	@r0
      0022BF B6 00 02         [24]  881 	cjne	@r0,#0x00,00177$
      0022C2 08               [12]  882 	inc	r0
      0022C3 06               [12]  883 	inc	@r0
      0022C4                        884 00177$:
                                    885 ;	life.c:150: break;
      0022C4 80 45            [24]  886 	sjmp	00116$
      0022C6                        887 00110$:
                                    888 ;	life.c:151: } else if (c == (int)'1') {
      0022C6 A8 10            [24]  889 	mov	r0,_bp
      0022C8 08               [12]  890 	inc	r0
      0022C9 B6 31 24         [24]  891 	cjne	@r0,#0x31,00107$
      0022CC 08               [12]  892 	inc	r0
      0022CD B6 00 20         [24]  893 	cjne	@r0,#0x00,00107$
                                    894 ;	life.c:152: iu[y + x] = 1;
      0022D0 EA               [12]  895 	mov	a,r2
      0022D1 2C               [12]  896 	add	a,r4
      0022D2 FE               [12]  897 	mov	r6,a
      0022D3 EB               [12]  898 	mov	a,r3
      0022D4 3D               [12]  899 	addc	a,r5
      0022D5 FF               [12]  900 	mov	r7,a
      0022D6 EE               [12]  901 	mov	a,r6
      0022D7 24 00            [12]  902 	add	a,#_iu
      0022D9 F5 82            [12]  903 	mov	dpl,a
      0022DB EF               [12]  904 	mov	a,r7
      0022DC 34 40            [12]  905 	addc	a,#(_iu >> 8)
      0022DE F5 83            [12]  906 	mov	dph,a
      0022E0 74 01            [12]  907 	mov	a,#0x01
      0022E2 F0               [24]  908 	movx	@dptr,a
                                    909 ;	life.c:153: nbits++;
      0022E3 E5 10            [12]  910 	mov	a,_bp
      0022E5 24 03            [12]  911 	add	a,#0x03
      0022E7 F8               [12]  912 	mov	r0,a
      0022E8 06               [12]  913 	inc	@r0
      0022E9 B6 00 02         [24]  914 	cjne	@r0,#0x00,00180$
      0022EC 08               [12]  915 	inc	r0
      0022ED 06               [12]  916 	inc	@r0
      0022EE                        917 00180$:
                                    918 ;	life.c:154: break;
      0022EE 80 1B            [24]  919 	sjmp	00116$
      0022F0                        920 00107$:
                                    921 ;	life.c:155: } else if (c == (int)'~') goto br_inner;
      0022F0 A8 10            [24]  922 	mov	r0,_bp
      0022F2 08               [12]  923 	inc	r0
      0022F3 B6 7E 06         [24]  924 	cjne	@r0,#0x7e,00181$
      0022F6 08               [12]  925 	inc	r0
      0022F7 B6 00 02         [24]  926 	cjne	@r0,#0x00,00181$
      0022FA 80 22            [24]  927 	sjmp	00130$
      0022FC                        928 00181$:
                                    929 ;	life.c:156: else if (c == (int)'#') goto out;
      0022FC A8 10            [24]  930 	mov	r0,_bp
      0022FE 08               [12]  931 	inc	r0
      0022FF B6 23 06         [24]  932 	cjne	@r0,#0x23,00182$
      002302 08               [12]  933 	inc	r0
      002303 B6 00 02         [24]  934 	cjne	@r0,#0x00,00182$
      002306 80 20            [24]  935 	sjmp	00119$
      002308                        936 00182$:
      002308 02 22 82         [24]  937 	ljmp	00113$
                                    938 ;	life.c:160: break;
      00230B                        939 00116$:
                                    940 ;	life.c:144: for (x = 0; x < W; x++) {
      00230B 0A               [12]  941 	inc	r2
      00230C BA 00 01         [24]  942 	cjne	r2,#0x00,00183$
      00230F 0B               [12]  943 	inc	r3
      002310                        944 00183$:
      002310 C3               [12]  945 	clr	c
      002311 EA               [12]  946 	mov	a,r2
      002312 94 30            [12]  947 	subb	a,#0x30
      002314 EB               [12]  948 	mov	a,r3
      002315 64 80            [12]  949 	xrl	a,#0x80
      002317 94 80            [12]  950 	subb	a,#0x80
      002319 50 03            [24]  951 	jnc	00184$
      00231B 02 22 82         [24]  952 	ljmp	00113$
      00231E                        953 00184$:
      00231E                        954 00130$:
                                    955 ;	life.c:143: for (nbits = 0, y = 0; y < (H * W); y += W) {
      00231E 74 30            [12]  956 	mov	a,#0x30
      002320 2C               [12]  957 	add	a,r4
      002321 FC               [12]  958 	mov	r4,a
      002322 E4               [12]  959 	clr	a
      002323 3D               [12]  960 	addc	a,r5
      002324 FD               [12]  961 	mov	r5,a
      002325 02 22 73         [24]  962 	ljmp	00129$
                                    963 ;	life.c:164: out:
      002328                        964 00119$:
                                    965 ;	life.c:165: if (c != (int)'#')
      002328 A8 10            [24]  966 	mov	r0,_bp
      00232A 08               [12]  967 	inc	r0
      00232B B6 23 06         [24]  968 	cjne	@r0,#0x23,00185$
      00232E 08               [12]  969 	inc	r0
      00232F B6 00 02         [24]  970 	cjne	@r0,#0x00,00185$
      002332 80 0D            [24]  971 	sjmp	00126$
      002334                        972 00185$:
                                    973 ;	life.c:166: while (1) {
      002334                        974 00123$:
                                    975 ;	life.c:167: c = getchar();
      002334 12 2C 0A         [24]  976 	lcall	_getchar
      002337 AE 82            [24]  977 	mov	r6,dpl
      002339 AF 83            [24]  978 	mov	r7,dph
                                    979 ;	life.c:168: if (c == (int)'#') break;
      00233B BE 23 F6         [24]  980 	cjne	r6,#0x23,00123$
      00233E BF 00 F3         [24]  981 	cjne	r7,#0x00,00123$
      002341                        982 00126$:
                                    983 ;	life.c:170: print16x(nbits);
      002341 E5 10            [12]  984 	mov	a,_bp
      002343 24 03            [12]  985 	add	a,#0x03
      002345 F8               [12]  986 	mov	r0,a
      002346 86 82            [24]  987 	mov	dpl,@r0
      002348 08               [12]  988 	inc	r0
      002349 86 83            [24]  989 	mov	dph,@r0
      00234B 12 2D 5B         [24]  990 	lcall	_print16x
                                    991 ;	life.c:171: printstr(">\r\n");
      00234E 90 32 3B         [24]  992 	mov	dptr,#___str_8
      002351 75 F0 80         [24]  993 	mov	b,#0x80
      002354 12 2C 31         [24]  994 	lcall	_printstr
                                    995 ;	life.c:173: return;
                                    996 ;	life.c:174: }
      002357 85 10 81         [24]  997 	mov	sp,_bp
      00235A D0 10            [24]  998 	pop	_bp
      00235C 22               [24]  999 	ret
                                   1000 ;------------------------------------------------------------
                                   1001 ;Allocation info for local variables in function 'loadriu'
                                   1002 ;------------------------------------------------------------
                                   1003 ;x                         Allocated to registers r4 r5 
                                   1004 ;y                         Allocated to registers r6 r7 
                                   1005 ;------------------------------------------------------------
                                   1006 ;	life.c:176: static void loadriu(void) {
                                   1007 ;	-----------------------------------------
                                   1008 ;	 function loadriu
                                   1009 ;	-----------------------------------------
      00235D                       1010 _loadriu:
                                   1011 ;	life.c:179: printstr("RANDOM");
      00235D 90 32 3F         [24] 1012 	mov	dptr,#___str_9
      002360 75 F0 80         [24] 1013 	mov	b,#0x80
      002363 12 2C 31         [24] 1014 	lcall	_printstr
                                   1015 ;	life.c:181: for (y = 0; y < (H * W); y += W)
      002366 7E 00            [12] 1016 	mov	r6,#0x00
      002368 7F 00            [12] 1017 	mov	r7,#0x00
                                   1018 ;	life.c:182: for (x = 0; x < W; x++)
      00236A                       1019 00109$:
      00236A 7C 00            [12] 1020 	mov	r4,#0x00
      00236C 7D 00            [12] 1021 	mov	r5,#0x00
      00236E                       1022 00103$:
                                   1023 ;	life.c:183: iu[y + x] = rand() & 1;
      00236E EC               [12] 1024 	mov	a,r4
      00236F 2E               [12] 1025 	add	a,r6
      002370 FA               [12] 1026 	mov	r2,a
      002371 ED               [12] 1027 	mov	a,r5
      002372 3F               [12] 1028 	addc	a,r7
      002373 FB               [12] 1029 	mov	r3,a
      002374 EA               [12] 1030 	mov	a,r2
      002375 24 00            [12] 1031 	add	a,#_iu
      002377 FA               [12] 1032 	mov	r2,a
      002378 EB               [12] 1033 	mov	a,r3
      002379 34 40            [12] 1034 	addc	a,#(_iu >> 8)
      00237B FB               [12] 1035 	mov	r3,a
      00237C C0 07            [24] 1036 	push	ar7
      00237E C0 06            [24] 1037 	push	ar6
      002380 C0 05            [24] 1038 	push	ar5
      002382 C0 04            [24] 1039 	push	ar4
      002384 C0 03            [24] 1040 	push	ar3
      002386 C0 02            [24] 1041 	push	ar2
      002388 12 2B 23         [24] 1042 	lcall	_rand
      00238B A8 82            [24] 1043 	mov	r0,dpl
      00238D D0 02            [24] 1044 	pop	ar2
      00238F D0 03            [24] 1045 	pop	ar3
      002391 D0 04            [24] 1046 	pop	ar4
      002393 D0 05            [24] 1047 	pop	ar5
      002395 D0 06            [24] 1048 	pop	ar6
      002397 D0 07            [24] 1049 	pop	ar7
      002399 53 00 01         [24] 1050 	anl	ar0,#0x01
      00239C 8A 82            [24] 1051 	mov	dpl,r2
      00239E 8B 83            [24] 1052 	mov	dph,r3
      0023A0 E8               [12] 1053 	mov	a,r0
      0023A1 F0               [24] 1054 	movx	@dptr,a
                                   1055 ;	life.c:182: for (x = 0; x < W; x++)
      0023A2 0C               [12] 1056 	inc	r4
      0023A3 BC 00 01         [24] 1057 	cjne	r4,#0x00,00127$
      0023A6 0D               [12] 1058 	inc	r5
      0023A7                       1059 00127$:
      0023A7 C3               [12] 1060 	clr	c
      0023A8 EC               [12] 1061 	mov	a,r4
      0023A9 94 30            [12] 1062 	subb	a,#0x30
      0023AB ED               [12] 1063 	mov	a,r5
      0023AC 64 80            [12] 1064 	xrl	a,#0x80
      0023AE 94 80            [12] 1065 	subb	a,#0x80
      0023B0 40 BC            [24] 1066 	jc	00103$
                                   1067 ;	life.c:181: for (y = 0; y < (H * W); y += W)
      0023B2 74 30            [12] 1068 	mov	a,#0x30
      0023B4 2E               [12] 1069 	add	a,r6
      0023B5 FE               [12] 1070 	mov	r6,a
      0023B6 E4               [12] 1071 	clr	a
      0023B7 3F               [12] 1072 	addc	a,r7
      0023B8 FF               [12] 1073 	mov	r7,a
      0023B9 C3               [12] 1074 	clr	c
      0023BA 64 80            [12] 1075 	xrl	a,#0x80
      0023BC 94 A4            [12] 1076 	subb	a,#0xa4
      0023BE 40 AA            [24] 1077 	jc	00109$
                                   1078 ;	life.c:185: printstr("\r\n");
      0023C0 90 32 1B         [24] 1079 	mov	dptr,#___str_4
      0023C3 75 F0 80         [24] 1080 	mov	b,#0x80
                                   1081 ;	life.c:187: return;
                                   1082 ;	life.c:188: }
      0023C6 02 2C 31         [24] 1083 	ljmp	_printstr
                                   1084 ;------------------------------------------------------------
                                   1085 ;Allocation info for local variables in function 'evolveu'
                                   1086 ;------------------------------------------------------------
                                   1087 ;x                         Allocated to stack - _bp +15
                                   1088 ;y                         Allocated to stack - _bp +17
                                   1089 ;n                         Allocated to registers 
                                   1090 ;sloc0                     Allocated to stack - _bp +1
                                   1091 ;sloc1                     Allocated to stack - _bp +3
                                   1092 ;sloc2                     Allocated to stack - _bp +5
                                   1093 ;sloc3                     Allocated to stack - _bp +7
                                   1094 ;sloc4                     Allocated to stack - _bp +9
                                   1095 ;sloc5                     Allocated to stack - _bp +11
                                   1096 ;sloc6                     Allocated to stack - _bp +13
                                   1097 ;------------------------------------------------------------
                                   1098 ;	life.c:190: void evolveu(void) {
                                   1099 ;	-----------------------------------------
                                   1100 ;	 function evolveu
                                   1101 ;	-----------------------------------------
      0023C9                       1102 _evolveu:
      0023C9 C0 10            [24] 1103 	push	_bp
      0023CB E5 81            [12] 1104 	mov	a,sp
      0023CD F5 10            [12] 1105 	mov	_bp,a
      0023CF 24 12            [12] 1106 	add	a,#0x12
      0023D1 F5 81            [12] 1107 	mov	sp,a
                                   1108 ;	life.c:194: fixed = 0;
      0023D3 78 33            [12] 1109 	mov	r0,#_fixed
      0023D5 76 00            [12] 1110 	mov	@r0,#0x00
                                   1111 ;	life.c:195: cycle2 = 0;
      0023D7 78 34            [12] 1112 	mov	r0,#_cycle2
      0023D9 76 00            [12] 1113 	mov	@r0,#0x00
                                   1114 ;	life.c:197: OE76 = OE76_0;
      0023DB 78 23            [12] 1115 	mov	r0,#_OE76
      0023DD 76 3F            [12] 1116 	mov	@r0,#0x3f
                                   1117 ;	life.c:30: OEreg = OE76;
      0023DF 90 F0 06         [24] 1118 	mov	dptr,#_OEreg
      0023E2 74 3F            [12] 1119 	mov	a,#0x3f
      0023E4 F0               [24] 1120 	movx	@dptr,a
                                   1121 ;	life.c:200: for (y = 0; y < H; y++) {
      0023E5 E5 10            [12] 1122 	mov	a,_bp
      0023E7 24 11            [12] 1123 	add	a,#0x11
      0023E9 F8               [12] 1124 	mov	r0,a
      0023EA E4               [12] 1125 	clr	a
      0023EB F6               [12] 1126 	mov	@r0,a
      0023EC 08               [12] 1127 	inc	r0
      0023ED F6               [12] 1128 	mov	@r0,a
      0023EE E4               [12] 1129 	clr	a
      0023EF FC               [12] 1130 	mov	r4,a
      0023F0 FD               [12] 1131 	mov	r5,a
      0023F1 E5 10            [12] 1132 	mov	a,_bp
      0023F3 24 0B            [12] 1133 	add	a,#0x0b
      0023F5 F8               [12] 1134 	mov	r0,a
      0023F6 E4               [12] 1135 	clr	a
      0023F7 F6               [12] 1136 	mov	@r0,a
      0023F8 08               [12] 1137 	inc	r0
      0023F9 F6               [12] 1138 	mov	@r0,a
      0023FA                       1139 00135$:
                                   1140 ;	life.c:201: OE76 = OE76_0 | ((y & 0x0003u) << 6);
      0023FA C0 04            [24] 1141 	push	ar4
      0023FC C0 05            [24] 1142 	push	ar5
      0023FE E5 10            [12] 1143 	mov	a,_bp
      002400 24 11            [12] 1144 	add	a,#0x11
      002402 F8               [12] 1145 	mov	r0,a
      002403 86 05            [24] 1146 	mov	ar5,@r0
      002405 53 05 03         [24] 1147 	anl	ar5,#0x03
      002408 ED               [12] 1148 	mov	a,r5
      002409 03               [12] 1149 	rr	a
      00240A 03               [12] 1150 	rr	a
      00240B 54 C0            [12] 1151 	anl	a,#0xc0
      00240D FD               [12] 1152 	mov	r5,a
      00240E 43 05 3F         [24] 1153 	orl	ar5,#0x3f
      002411 78 23            [12] 1154 	mov	r0,#_OE76
      002413 A6 05            [24] 1155 	mov	@r0,ar5
                                   1156 ;	life.c:30: OEreg = OE76;
      002415 90 F0 06         [24] 1157 	mov	dptr,#_OEreg
      002418 ED               [12] 1158 	mov	a,r5
      002419 F0               [24] 1159 	movx	@dptr,a
                                   1160 ;	life.c:203: for (x = 0; x < W; x++) {
      00241A E5 10            [12] 1161 	mov	a,_bp
      00241C 24 11            [12] 1162 	add	a,#0x11
      00241E F8               [12] 1163 	mov	r0,a
      00241F 74 BF            [12] 1164 	mov	a,#0xbf
      002421 26               [12] 1165 	add	a,@r0
      002422 FC               [12] 1166 	mov	r4,a
      002423 E4               [12] 1167 	clr	a
      002424 08               [12] 1168 	inc	r0
      002425 36               [12] 1169 	addc	a,@r0
      002426 FD               [12] 1170 	mov	r5,a
      002427 74 C0            [12] 1171 	mov	a,#0xc0
      002429 C0 E0            [24] 1172 	push	acc
      00242B E4               [12] 1173 	clr	a
      00242C C0 E0            [24] 1174 	push	acc
      00242E 8C 82            [24] 1175 	mov	dpl,r4
      002430 8D 83            [24] 1176 	mov	dph,r5
      002432 12 30 F4         [24] 1177 	lcall	__modsint
      002435 AC 82            [24] 1178 	mov	r4,dpl
      002437 AD 83            [24] 1179 	mov	r5,dph
      002439 15 81            [12] 1180 	dec	sp
      00243B 15 81            [12] 1181 	dec	sp
      00243D C0 05            [24] 1182 	push	ar5
      00243F C0 04            [24] 1183 	push	ar4
      002441 C0 04            [24] 1184 	push	ar4
      002443 C0 05            [24] 1185 	push	ar5
      002445 90 00 30         [24] 1186 	mov	dptr,#0x0030
      002448 12 2F 16         [24] 1187 	lcall	__mulint
      00244B A8 10            [24] 1188 	mov	r0,_bp
      00244D 08               [12] 1189 	inc	r0
      00244E A6 82            [24] 1190 	mov	@r0,dpl
      002450 08               [12] 1191 	inc	r0
      002451 A6 83            [24] 1192 	mov	@r0,dph
      002453 15 81            [12] 1193 	dec	sp
      002455 15 81            [12] 1194 	dec	sp
      002457 D0 04            [24] 1195 	pop	ar4
      002459 D0 05            [24] 1196 	pop	ar5
      00245B E5 10            [12] 1197 	mov	a,_bp
      00245D 24 11            [12] 1198 	add	a,#0x11
      00245F F8               [12] 1199 	mov	r0,a
      002460 74 C0            [12] 1200 	mov	a,#0xc0
      002462 26               [12] 1201 	add	a,@r0
      002463 FC               [12] 1202 	mov	r4,a
      002464 E4               [12] 1203 	clr	a
      002465 08               [12] 1204 	inc	r0
      002466 36               [12] 1205 	addc	a,@r0
      002467 FD               [12] 1206 	mov	r5,a
      002468 74 C0            [12] 1207 	mov	a,#0xc0
      00246A C0 E0            [24] 1208 	push	acc
      00246C E4               [12] 1209 	clr	a
      00246D C0 E0            [24] 1210 	push	acc
      00246F 8C 82            [24] 1211 	mov	dpl,r4
      002471 8D 83            [24] 1212 	mov	dph,r5
      002473 12 30 F4         [24] 1213 	lcall	__modsint
      002476 AC 82            [24] 1214 	mov	r4,dpl
      002478 AD 83            [24] 1215 	mov	r5,dph
      00247A 15 81            [12] 1216 	dec	sp
      00247C 15 81            [12] 1217 	dec	sp
      00247E C0 05            [24] 1218 	push	ar5
      002480 C0 04            [24] 1219 	push	ar4
      002482 C0 04            [24] 1220 	push	ar4
      002484 C0 05            [24] 1221 	push	ar5
      002486 90 00 30         [24] 1222 	mov	dptr,#0x0030
      002489 12 2F 16         [24] 1223 	lcall	__mulint
      00248C A8 10            [24] 1224 	mov	r0,_bp
      00248E 08               [12] 1225 	inc	r0
      00248F 08               [12] 1226 	inc	r0
      002490 08               [12] 1227 	inc	r0
      002491 A6 82            [24] 1228 	mov	@r0,dpl
      002493 08               [12] 1229 	inc	r0
      002494 A6 83            [24] 1230 	mov	@r0,dph
      002496 15 81            [12] 1231 	dec	sp
      002498 15 81            [12] 1232 	dec	sp
      00249A D0 04            [24] 1233 	pop	ar4
      00249C D0 05            [24] 1234 	pop	ar5
      00249E E5 10            [12] 1235 	mov	a,_bp
      0024A0 24 11            [12] 1236 	add	a,#0x11
      0024A2 F8               [12] 1237 	mov	r0,a
      0024A3 74 C1            [12] 1238 	mov	a,#0xc1
      0024A5 26               [12] 1239 	add	a,@r0
      0024A6 FC               [12] 1240 	mov	r4,a
      0024A7 E4               [12] 1241 	clr	a
      0024A8 08               [12] 1242 	inc	r0
      0024A9 36               [12] 1243 	addc	a,@r0
      0024AA FD               [12] 1244 	mov	r5,a
      0024AB 74 C0            [12] 1245 	mov	a,#0xc0
      0024AD C0 E0            [24] 1246 	push	acc
      0024AF E4               [12] 1247 	clr	a
      0024B0 C0 E0            [24] 1248 	push	acc
      0024B2 8C 82            [24] 1249 	mov	dpl,r4
      0024B4 8D 83            [24] 1250 	mov	dph,r5
      0024B6 12 30 F4         [24] 1251 	lcall	__modsint
      0024B9 AC 82            [24] 1252 	mov	r4,dpl
      0024BB AD 83            [24] 1253 	mov	r5,dph
      0024BD 15 81            [12] 1254 	dec	sp
      0024BF 15 81            [12] 1255 	dec	sp
      0024C1 C0 05            [24] 1256 	push	ar5
      0024C3 C0 04            [24] 1257 	push	ar4
      0024C5 C0 04            [24] 1258 	push	ar4
      0024C7 C0 05            [24] 1259 	push	ar5
      0024C9 90 00 30         [24] 1260 	mov	dptr,#0x0030
      0024CC 12 2F 16         [24] 1261 	lcall	__mulint
      0024CF C8               [12] 1262 	xch	a,r0
      0024D0 E5 10            [12] 1263 	mov	a,_bp
      0024D2 24 05            [12] 1264 	add	a,#0x05
      0024D4 C8               [12] 1265 	xch	a,r0
      0024D5 A6 82            [24] 1266 	mov	@r0,dpl
      0024D7 08               [12] 1267 	inc	r0
      0024D8 A6 83            [24] 1268 	mov	@r0,dph
      0024DA 15 81            [12] 1269 	dec	sp
      0024DC 15 81            [12] 1270 	dec	sp
      0024DE D0 04            [24] 1271 	pop	ar4
      0024E0 D0 05            [24] 1272 	pop	ar5
      0024E2 E5 10            [12] 1273 	mov	a,_bp
      0024E4 24 0F            [12] 1274 	add	a,#0x0f
      0024E6 F8               [12] 1275 	mov	r0,a
      0024E7 E4               [12] 1276 	clr	a
      0024E8 F6               [12] 1277 	mov	@r0,a
      0024E9 08               [12] 1278 	inc	r0
      0024EA F6               [12] 1279 	mov	@r0,a
                                   1280 ;	life.c:235: return;
      0024EB D0 05            [24] 1281 	pop	ar5
      0024ED D0 04            [24] 1282 	pop	ar4
                                   1283 ;	life.c:203: for (x = 0; x < W; x++) {
      0024EF                       1284 00133$:
                                   1285 ;	life.c:204: n = -u[A2D(W, y, x)];
      0024EF C0 04            [24] 1286 	push	ar4
      0024F1 C0 05            [24] 1287 	push	ar5
      0024F3 E5 10            [12] 1288 	mov	a,_bp
      0024F5 24 0B            [12] 1289 	add	a,#0x0b
      0024F7 F8               [12] 1290 	mov	r0,a
      0024F8 E5 10            [12] 1291 	mov	a,_bp
      0024FA 24 0F            [12] 1292 	add	a,#0x0f
      0024FC F9               [12] 1293 	mov	r1,a
      0024FD E7               [12] 1294 	mov	a,@r1
      0024FE 26               [12] 1295 	add	a,@r0
      0024FF C0 E0            [24] 1296 	push	acc
      002501 09               [12] 1297 	inc	r1
      002502 E7               [12] 1298 	mov	a,@r1
      002503 08               [12] 1299 	inc	r0
      002504 36               [12] 1300 	addc	a,@r0
      002505 C0 E0            [24] 1301 	push	acc
      002507 E5 10            [12] 1302 	mov	a,_bp
      002509 24 0A            [12] 1303 	add	a,#0x0a
      00250B F8               [12] 1304 	mov	r0,a
      00250C D0 E0            [24] 1305 	pop	acc
      00250E F6               [12] 1306 	mov	@r0,a
      00250F 18               [12] 1307 	dec	r0
      002510 D0 E0            [24] 1308 	pop	acc
      002512 F6               [12] 1309 	mov	@r0,a
      002513 E5 10            [12] 1310 	mov	a,_bp
      002515 24 09            [12] 1311 	add	a,#0x09
      002517 F8               [12] 1312 	mov	r0,a
      002518 E6               [12] 1313 	mov	a,@r0
      002519 24 00            [12] 1314 	add	a,#_u
      00251B F5 82            [12] 1315 	mov	dpl,a
      00251D 08               [12] 1316 	inc	r0
      00251E E6               [12] 1317 	mov	a,@r0
      00251F 34 88            [12] 1318 	addc	a,#(_u >> 8)
      002521 F5 83            [12] 1319 	mov	dph,a
      002523 E0               [24] 1320 	movx	a,@dptr
      002524 FF               [12] 1321 	mov	r7,a
      002525 7E 00            [12] 1322 	mov	r6,#0x00
      002527 C3               [12] 1323 	clr	c
      002528 E4               [12] 1324 	clr	a
      002529 9F               [12] 1325 	subb	a,r7
      00252A FB               [12] 1326 	mov	r3,a
      00252B E4               [12] 1327 	clr	a
      00252C 9E               [12] 1328 	subb	a,r6
      00252D FA               [12] 1329 	mov	r2,a
                                   1330 ;	life.c:209: UPDN(-1, -1);
      00252E E5 10            [12] 1331 	mov	a,_bp
      002530 24 0F            [12] 1332 	add	a,#0x0f
      002532 F8               [12] 1333 	mov	r0,a
      002533 74 2F            [12] 1334 	mov	a,#0x2f
      002535 26               [12] 1335 	add	a,@r0
      002536 FE               [12] 1336 	mov	r6,a
      002537 E4               [12] 1337 	clr	a
      002538 08               [12] 1338 	inc	r0
      002539 36               [12] 1339 	addc	a,@r0
      00253A FF               [12] 1340 	mov	r7,a
      00253B C0 05            [24] 1341 	push	ar5
      00253D C0 04            [24] 1342 	push	ar4
      00253F C0 03            [24] 1343 	push	ar3
      002541 C0 02            [24] 1344 	push	ar2
      002543 74 30            [12] 1345 	mov	a,#0x30
      002545 C0 E0            [24] 1346 	push	acc
      002547 E4               [12] 1347 	clr	a
      002548 C0 E0            [24] 1348 	push	acc
      00254A 8E 82            [24] 1349 	mov	dpl,r6
      00254C 8F 83            [24] 1350 	mov	dph,r7
      00254E 12 30 F4         [24] 1351 	lcall	__modsint
      002551 AE 82            [24] 1352 	mov	r6,dpl
      002553 AF 83            [24] 1353 	mov	r7,dph
      002555 15 81            [12] 1354 	dec	sp
      002557 15 81            [12] 1355 	dec	sp
      002559 D0 02            [24] 1356 	pop	ar2
      00255B D0 03            [24] 1357 	pop	ar3
      00255D D0 04            [24] 1358 	pop	ar4
      00255F D0 05            [24] 1359 	pop	ar5
      002561 A8 10            [24] 1360 	mov	r0,_bp
      002563 08               [12] 1361 	inc	r0
      002564 EE               [12] 1362 	mov	a,r6
      002565 26               [12] 1363 	add	a,@r0
      002566 FC               [12] 1364 	mov	r4,a
      002567 EF               [12] 1365 	mov	a,r7
      002568 08               [12] 1366 	inc	r0
      002569 36               [12] 1367 	addc	a,@r0
      00256A FD               [12] 1368 	mov	r5,a
      00256B EC               [12] 1369 	mov	a,r4
      00256C 24 00            [12] 1370 	add	a,#_u
      00256E F5 82            [12] 1371 	mov	dpl,a
      002570 ED               [12] 1372 	mov	a,r5
      002571 34 88            [12] 1373 	addc	a,#(_u >> 8)
      002573 F5 83            [12] 1374 	mov	dph,a
      002575 E0               [24] 1375 	movx	a,@dptr
      002576 FD               [12] 1376 	mov	r5,a
      002577 7C 00            [12] 1377 	mov	r4,#0x00
      002579 E5 10            [12] 1378 	mov	a,_bp
      00257B 24 07            [12] 1379 	add	a,#0x07
      00257D F8               [12] 1380 	mov	r0,a
      00257E ED               [12] 1381 	mov	a,r5
      00257F 2B               [12] 1382 	add	a,r3
      002580 F6               [12] 1383 	mov	@r0,a
      002581 EC               [12] 1384 	mov	a,r4
      002582 3A               [12] 1385 	addc	a,r2
      002583 08               [12] 1386 	inc	r0
      002584 F6               [12] 1387 	mov	@r0,a
                                   1388 ;	life.c:210: UPDN(-1, 0);
      002585 E5 10            [12] 1389 	mov	a,_bp
      002587 24 0F            [12] 1390 	add	a,#0x0f
      002589 F8               [12] 1391 	mov	r0,a
      00258A 74 30            [12] 1392 	mov	a,#0x30
      00258C 26               [12] 1393 	add	a,@r0
      00258D FC               [12] 1394 	mov	r4,a
      00258E E4               [12] 1395 	clr	a
      00258F 08               [12] 1396 	inc	r0
      002590 36               [12] 1397 	addc	a,@r0
      002591 FD               [12] 1398 	mov	r5,a
      002592 C0 07            [24] 1399 	push	ar7
      002594 C0 06            [24] 1400 	push	ar6
      002596 74 30            [12] 1401 	mov	a,#0x30
      002598 C0 E0            [24] 1402 	push	acc
      00259A E4               [12] 1403 	clr	a
      00259B C0 E0            [24] 1404 	push	acc
      00259D 8C 82            [24] 1405 	mov	dpl,r4
      00259F 8D 83            [24] 1406 	mov	dph,r5
      0025A1 12 30 F4         [24] 1407 	lcall	__modsint
      0025A4 AC 82            [24] 1408 	mov	r4,dpl
      0025A6 AD 83            [24] 1409 	mov	r5,dph
      0025A8 15 81            [12] 1410 	dec	sp
      0025AA 15 81            [12] 1411 	dec	sp
      0025AC A8 10            [24] 1412 	mov	r0,_bp
      0025AE 08               [12] 1413 	inc	r0
      0025AF EC               [12] 1414 	mov	a,r4
      0025B0 26               [12] 1415 	add	a,@r0
      0025B1 FA               [12] 1416 	mov	r2,a
      0025B2 ED               [12] 1417 	mov	a,r5
      0025B3 08               [12] 1418 	inc	r0
      0025B4 36               [12] 1419 	addc	a,@r0
      0025B5 FB               [12] 1420 	mov	r3,a
      0025B6 EA               [12] 1421 	mov	a,r2
      0025B7 24 00            [12] 1422 	add	a,#_u
      0025B9 F5 82            [12] 1423 	mov	dpl,a
      0025BB EB               [12] 1424 	mov	a,r3
      0025BC 34 88            [12] 1425 	addc	a,#(_u >> 8)
      0025BE F5 83            [12] 1426 	mov	dph,a
      0025C0 E0               [24] 1427 	movx	a,@dptr
      0025C1 FB               [12] 1428 	mov	r3,a
      0025C2 7A 00            [12] 1429 	mov	r2,#0x00
      0025C4 E5 10            [12] 1430 	mov	a,_bp
      0025C6 24 07            [12] 1431 	add	a,#0x07
      0025C8 F8               [12] 1432 	mov	r0,a
      0025C9 EB               [12] 1433 	mov	a,r3
      0025CA 26               [12] 1434 	add	a,@r0
      0025CB F6               [12] 1435 	mov	@r0,a
      0025CC EA               [12] 1436 	mov	a,r2
      0025CD 08               [12] 1437 	inc	r0
      0025CE 36               [12] 1438 	addc	a,@r0
      0025CF F6               [12] 1439 	mov	@r0,a
                                   1440 ;	life.c:211: UPDN(-1, 1);
      0025D0 E5 10            [12] 1441 	mov	a,_bp
      0025D2 24 0F            [12] 1442 	add	a,#0x0f
      0025D4 F8               [12] 1443 	mov	r0,a
      0025D5 74 31            [12] 1444 	mov	a,#0x31
      0025D7 26               [12] 1445 	add	a,@r0
      0025D8 FA               [12] 1446 	mov	r2,a
      0025D9 E4               [12] 1447 	clr	a
      0025DA 08               [12] 1448 	inc	r0
      0025DB 36               [12] 1449 	addc	a,@r0
      0025DC FB               [12] 1450 	mov	r3,a
      0025DD C0 05            [24] 1451 	push	ar5
      0025DF C0 04            [24] 1452 	push	ar4
      0025E1 74 30            [12] 1453 	mov	a,#0x30
      0025E3 C0 E0            [24] 1454 	push	acc
      0025E5 E4               [12] 1455 	clr	a
      0025E6 C0 E0            [24] 1456 	push	acc
      0025E8 8A 82            [24] 1457 	mov	dpl,r2
      0025EA 8B 83            [24] 1458 	mov	dph,r3
      0025EC 12 30 F4         [24] 1459 	lcall	__modsint
      0025EF C8               [12] 1460 	xch	a,r0
      0025F0 E5 10            [12] 1461 	mov	a,_bp
      0025F2 24 0D            [12] 1462 	add	a,#0x0d
      0025F4 C8               [12] 1463 	xch	a,r0
      0025F5 A6 82            [24] 1464 	mov	@r0,dpl
      0025F7 08               [12] 1465 	inc	r0
      0025F8 A6 83            [24] 1466 	mov	@r0,dph
      0025FA 15 81            [12] 1467 	dec	sp
      0025FC 15 81            [12] 1468 	dec	sp
      0025FE D0 04            [24] 1469 	pop	ar4
      002600 D0 05            [24] 1470 	pop	ar5
      002602 D0 06            [24] 1471 	pop	ar6
      002604 D0 07            [24] 1472 	pop	ar7
      002606 A8 10            [24] 1473 	mov	r0,_bp
      002608 08               [12] 1474 	inc	r0
      002609 E5 10            [12] 1475 	mov	a,_bp
      00260B 24 0D            [12] 1476 	add	a,#0x0d
      00260D F9               [12] 1477 	mov	r1,a
      00260E E7               [12] 1478 	mov	a,@r1
      00260F 26               [12] 1479 	add	a,@r0
      002610 FA               [12] 1480 	mov	r2,a
      002611 09               [12] 1481 	inc	r1
      002612 E7               [12] 1482 	mov	a,@r1
      002613 08               [12] 1483 	inc	r0
      002614 36               [12] 1484 	addc	a,@r0
      002615 FB               [12] 1485 	mov	r3,a
      002616 EA               [12] 1486 	mov	a,r2
      002617 24 00            [12] 1487 	add	a,#_u
      002619 F5 82            [12] 1488 	mov	dpl,a
      00261B EB               [12] 1489 	mov	a,r3
      00261C 34 88            [12] 1490 	addc	a,#(_u >> 8)
      00261E F5 83            [12] 1491 	mov	dph,a
      002620 E0               [24] 1492 	movx	a,@dptr
      002621 FB               [12] 1493 	mov	r3,a
      002622 7A 00            [12] 1494 	mov	r2,#0x00
      002624 E5 10            [12] 1495 	mov	a,_bp
      002626 24 07            [12] 1496 	add	a,#0x07
      002628 F8               [12] 1497 	mov	r0,a
      002629 EB               [12] 1498 	mov	a,r3
      00262A 26               [12] 1499 	add	a,@r0
      00262B F6               [12] 1500 	mov	@r0,a
      00262C EA               [12] 1501 	mov	a,r2
      00262D 08               [12] 1502 	inc	r0
      00262E 36               [12] 1503 	addc	a,@r0
      00262F F6               [12] 1504 	mov	@r0,a
                                   1505 ;	life.c:212: UPDN(0, -1);
      002630 E5 10            [12] 1506 	mov	a,_bp
      002632 24 03            [12] 1507 	add	a,#0x03
      002634 F8               [12] 1508 	mov	r0,a
      002635 EE               [12] 1509 	mov	a,r6
      002636 26               [12] 1510 	add	a,@r0
      002637 FA               [12] 1511 	mov	r2,a
      002638 EF               [12] 1512 	mov	a,r7
      002639 08               [12] 1513 	inc	r0
      00263A 36               [12] 1514 	addc	a,@r0
      00263B FB               [12] 1515 	mov	r3,a
      00263C EA               [12] 1516 	mov	a,r2
      00263D 24 00            [12] 1517 	add	a,#_u
      00263F F5 82            [12] 1518 	mov	dpl,a
      002641 EB               [12] 1519 	mov	a,r3
      002642 34 88            [12] 1520 	addc	a,#(_u >> 8)
      002644 F5 83            [12] 1521 	mov	dph,a
      002646 E0               [24] 1522 	movx	a,@dptr
      002647 FB               [12] 1523 	mov	r3,a
      002648 7A 00            [12] 1524 	mov	r2,#0x00
      00264A E5 10            [12] 1525 	mov	a,_bp
      00264C 24 07            [12] 1526 	add	a,#0x07
      00264E F8               [12] 1527 	mov	r0,a
      00264F EB               [12] 1528 	mov	a,r3
      002650 26               [12] 1529 	add	a,@r0
      002651 F6               [12] 1530 	mov	@r0,a
      002652 EA               [12] 1531 	mov	a,r2
      002653 08               [12] 1532 	inc	r0
      002654 36               [12] 1533 	addc	a,@r0
      002655 F6               [12] 1534 	mov	@r0,a
                                   1535 ;	life.c:213: UPDN(0, 0);
      002656 E5 10            [12] 1536 	mov	a,_bp
      002658 24 03            [12] 1537 	add	a,#0x03
      00265A F8               [12] 1538 	mov	r0,a
      00265B EC               [12] 1539 	mov	a,r4
      00265C 26               [12] 1540 	add	a,@r0
      00265D FA               [12] 1541 	mov	r2,a
      00265E ED               [12] 1542 	mov	a,r5
      00265F 08               [12] 1543 	inc	r0
      002660 36               [12] 1544 	addc	a,@r0
      002661 FB               [12] 1545 	mov	r3,a
      002662 EA               [12] 1546 	mov	a,r2
      002663 24 00            [12] 1547 	add	a,#_u
      002665 F5 82            [12] 1548 	mov	dpl,a
      002667 EB               [12] 1549 	mov	a,r3
      002668 34 88            [12] 1550 	addc	a,#(_u >> 8)
      00266A F5 83            [12] 1551 	mov	dph,a
      00266C E0               [24] 1552 	movx	a,@dptr
      00266D FB               [12] 1553 	mov	r3,a
      00266E 7A 00            [12] 1554 	mov	r2,#0x00
      002670 E5 10            [12] 1555 	mov	a,_bp
      002672 24 07            [12] 1556 	add	a,#0x07
      002674 F8               [12] 1557 	mov	r0,a
      002675 EB               [12] 1558 	mov	a,r3
      002676 26               [12] 1559 	add	a,@r0
      002677 F6               [12] 1560 	mov	@r0,a
      002678 EA               [12] 1561 	mov	a,r2
      002679 08               [12] 1562 	inc	r0
      00267A 36               [12] 1563 	addc	a,@r0
      00267B F6               [12] 1564 	mov	@r0,a
                                   1565 ;	life.c:214: UPDN(0, 1);
      00267C E5 10            [12] 1566 	mov	a,_bp
      00267E 24 03            [12] 1567 	add	a,#0x03
      002680 F8               [12] 1568 	mov	r0,a
      002681 E5 10            [12] 1569 	mov	a,_bp
      002683 24 0D            [12] 1570 	add	a,#0x0d
      002685 F9               [12] 1571 	mov	r1,a
      002686 E7               [12] 1572 	mov	a,@r1
      002687 26               [12] 1573 	add	a,@r0
      002688 FA               [12] 1574 	mov	r2,a
      002689 09               [12] 1575 	inc	r1
      00268A E7               [12] 1576 	mov	a,@r1
      00268B 08               [12] 1577 	inc	r0
      00268C 36               [12] 1578 	addc	a,@r0
      00268D FB               [12] 1579 	mov	r3,a
      00268E EA               [12] 1580 	mov	a,r2
      00268F 24 00            [12] 1581 	add	a,#_u
      002691 F5 82            [12] 1582 	mov	dpl,a
      002693 EB               [12] 1583 	mov	a,r3
      002694 34 88            [12] 1584 	addc	a,#(_u >> 8)
      002696 F5 83            [12] 1585 	mov	dph,a
      002698 E0               [24] 1586 	movx	a,@dptr
      002699 FB               [12] 1587 	mov	r3,a
      00269A 7A 00            [12] 1588 	mov	r2,#0x00
      00269C E5 10            [12] 1589 	mov	a,_bp
      00269E 24 07            [12] 1590 	add	a,#0x07
      0026A0 F8               [12] 1591 	mov	r0,a
      0026A1 EB               [12] 1592 	mov	a,r3
      0026A2 26               [12] 1593 	add	a,@r0
      0026A3 FB               [12] 1594 	mov	r3,a
      0026A4 EA               [12] 1595 	mov	a,r2
      0026A5 08               [12] 1596 	inc	r0
      0026A6 36               [12] 1597 	addc	a,@r0
      0026A7 FA               [12] 1598 	mov	r2,a
                                   1599 ;	life.c:215: UPDN(1, -1);
      0026A8 E5 10            [12] 1600 	mov	a,_bp
      0026AA 24 05            [12] 1601 	add	a,#0x05
      0026AC F8               [12] 1602 	mov	r0,a
      0026AD EE               [12] 1603 	mov	a,r6
      0026AE 26               [12] 1604 	add	a,@r0
      0026AF FE               [12] 1605 	mov	r6,a
      0026B0 EF               [12] 1606 	mov	a,r7
      0026B1 08               [12] 1607 	inc	r0
      0026B2 36               [12] 1608 	addc	a,@r0
      0026B3 FF               [12] 1609 	mov	r7,a
      0026B4 EE               [12] 1610 	mov	a,r6
      0026B5 24 00            [12] 1611 	add	a,#_u
      0026B7 F5 82            [12] 1612 	mov	dpl,a
      0026B9 EF               [12] 1613 	mov	a,r7
      0026BA 34 88            [12] 1614 	addc	a,#(_u >> 8)
      0026BC F5 83            [12] 1615 	mov	dph,a
      0026BE E0               [24] 1616 	movx	a,@dptr
      0026BF 7E 00            [12] 1617 	mov	r6,#0x00
      0026C1 2B               [12] 1618 	add	a,r3
      0026C2 FF               [12] 1619 	mov	r7,a
      0026C3 EE               [12] 1620 	mov	a,r6
      0026C4 3A               [12] 1621 	addc	a,r2
      0026C5 FE               [12] 1622 	mov	r6,a
                                   1623 ;	life.c:216: UPDN(1, 0);
      0026C6 E5 10            [12] 1624 	mov	a,_bp
      0026C8 24 05            [12] 1625 	add	a,#0x05
      0026CA F8               [12] 1626 	mov	r0,a
      0026CB EC               [12] 1627 	mov	a,r4
      0026CC 26               [12] 1628 	add	a,@r0
      0026CD FC               [12] 1629 	mov	r4,a
      0026CE ED               [12] 1630 	mov	a,r5
      0026CF 08               [12] 1631 	inc	r0
      0026D0 36               [12] 1632 	addc	a,@r0
      0026D1 FD               [12] 1633 	mov	r5,a
      0026D2 EC               [12] 1634 	mov	a,r4
      0026D3 24 00            [12] 1635 	add	a,#_u
      0026D5 F5 82            [12] 1636 	mov	dpl,a
      0026D7 ED               [12] 1637 	mov	a,r5
      0026D8 34 88            [12] 1638 	addc	a,#(_u >> 8)
      0026DA F5 83            [12] 1639 	mov	dph,a
      0026DC E0               [24] 1640 	movx	a,@dptr
      0026DD 7C 00            [12] 1641 	mov	r4,#0x00
      0026DF 2F               [12] 1642 	add	a,r7
      0026E0 FD               [12] 1643 	mov	r5,a
      0026E1 EC               [12] 1644 	mov	a,r4
      0026E2 3E               [12] 1645 	addc	a,r6
      0026E3 FC               [12] 1646 	mov	r4,a
                                   1647 ;	life.c:217: UPDN(1, 1);
      0026E4 E5 10            [12] 1648 	mov	a,_bp
      0026E6 24 05            [12] 1649 	add	a,#0x05
      0026E8 F8               [12] 1650 	mov	r0,a
      0026E9 E5 10            [12] 1651 	mov	a,_bp
      0026EB 24 0D            [12] 1652 	add	a,#0x0d
      0026ED F9               [12] 1653 	mov	r1,a
      0026EE E7               [12] 1654 	mov	a,@r1
      0026EF 26               [12] 1655 	add	a,@r0
      0026F0 FE               [12] 1656 	mov	r6,a
      0026F1 09               [12] 1657 	inc	r1
      0026F2 E7               [12] 1658 	mov	a,@r1
      0026F3 08               [12] 1659 	inc	r0
      0026F4 36               [12] 1660 	addc	a,@r0
      0026F5 FF               [12] 1661 	mov	r7,a
      0026F6 EE               [12] 1662 	mov	a,r6
      0026F7 24 00            [12] 1663 	add	a,#_u
      0026F9 F5 82            [12] 1664 	mov	dpl,a
      0026FB EF               [12] 1665 	mov	a,r7
      0026FC 34 88            [12] 1666 	addc	a,#(_u >> 8)
      0026FE F5 83            [12] 1667 	mov	dph,a
      002700 E0               [24] 1668 	movx	a,@dptr
      002701 7E 00            [12] 1669 	mov	r6,#0x00
      002703 2D               [12] 1670 	add	a,r5
      002704 FF               [12] 1671 	mov	r7,a
      002705 EE               [12] 1672 	mov	a,r6
      002706 3C               [12] 1673 	addc	a,r4
      002707 FE               [12] 1674 	mov	r6,a
                                   1675 ;	life.c:220: nu[A2D(W, y, x)] = (n == 3) || ((n == 2) && u[A2D(W, y, x)]);
      002708 E5 10            [12] 1676 	mov	a,_bp
      00270A 24 09            [12] 1677 	add	a,#0x09
      00270C F8               [12] 1678 	mov	r0,a
      00270D E6               [12] 1679 	mov	a,@r0
      00270E 24 00            [12] 1680 	add	a,#_nu
      002710 FB               [12] 1681 	mov	r3,a
      002711 08               [12] 1682 	inc	r0
      002712 E6               [12] 1683 	mov	a,@r0
      002713 34 AC            [12] 1684 	addc	a,#(_nu >> 8)
      002715 FA               [12] 1685 	mov	r2,a
      002716 BF 03 09         [24] 1686 	cjne	r7,#0x03,00177$
      002719 BE 00 06         [24] 1687 	cjne	r6,#0x00,00177$
      00271C D0 05            [24] 1688 	pop	ar5
      00271E D0 04            [24] 1689 	pop	ar4
      002720 80 2F            [24] 1690 	sjmp	00140$
      002722                       1691 00177$:
      002722 D0 05            [24] 1692 	pop	ar5
      002724 D0 04            [24] 1693 	pop	ar4
      002726 BF 02 24         [24] 1694 	cjne	r7,#0x02,00139$
      002729 BE 00 21         [24] 1695 	cjne	r6,#0x00,00139$
      00272C E5 10            [12] 1696 	mov	a,_bp
      00272E 24 0B            [12] 1697 	add	a,#0x0b
      002730 F8               [12] 1698 	mov	r0,a
      002731 E5 10            [12] 1699 	mov	a,_bp
      002733 24 0F            [12] 1700 	add	a,#0x0f
      002735 F9               [12] 1701 	mov	r1,a
      002736 E7               [12] 1702 	mov	a,@r1
      002737 26               [12] 1703 	add	a,@r0
      002738 FE               [12] 1704 	mov	r6,a
      002739 09               [12] 1705 	inc	r1
      00273A E7               [12] 1706 	mov	a,@r1
      00273B 08               [12] 1707 	inc	r0
      00273C 36               [12] 1708 	addc	a,@r0
      00273D FF               [12] 1709 	mov	r7,a
      00273E EE               [12] 1710 	mov	a,r6
      00273F 24 00            [12] 1711 	add	a,#_u
      002741 FE               [12] 1712 	mov	r6,a
      002742 EF               [12] 1713 	mov	a,r7
      002743 34 88            [12] 1714 	addc	a,#(_u >> 8)
      002745 FF               [12] 1715 	mov	r7,a
      002746 8E 82            [24] 1716 	mov	dpl,r6
      002748 8F 83            [24] 1717 	mov	dph,r7
      00274A E0               [24] 1718 	movx	a,@dptr
      00274B 70 04            [24] 1719 	jnz	00140$
      00274D                       1720 00139$:
                                   1721 ;	assignBit
      00274D C2 00            [12] 1722 	clr	b0
      00274F 80 02            [24] 1723 	sjmp	00141$
      002751                       1724 00140$:
                                   1725 ;	assignBit
      002751 D2 00            [12] 1726 	setb	b0
      002753                       1727 00141$:
      002753 A2 00            [12] 1728 	mov	c,b0
      002755 E4               [12] 1729 	clr	a
      002756 33               [12] 1730 	rlc	a
      002757 8B 82            [24] 1731 	mov	dpl,r3
      002759 8A 83            [24] 1732 	mov	dph,r2
      00275B F0               [24] 1733 	movx	@dptr,a
                                   1734 ;	life.c:221: cycle2 |= pu[A2D(W, y, x)] ^ nu[A2D(W, y, x)];
      00275C E5 10            [12] 1735 	mov	a,_bp
      00275E 24 0F            [12] 1736 	add	a,#0x0f
      002760 F8               [12] 1737 	mov	r0,a
      002761 E6               [12] 1738 	mov	a,@r0
      002762 2C               [12] 1739 	add	a,r4
      002763 FE               [12] 1740 	mov	r6,a
      002764 08               [12] 1741 	inc	r0
      002765 E6               [12] 1742 	mov	a,@r0
      002766 3D               [12] 1743 	addc	a,r5
      002767 FF               [12] 1744 	mov	r7,a
      002768 EE               [12] 1745 	mov	a,r6
      002769 24 00            [12] 1746 	add	a,#_pu
      00276B F5 82            [12] 1747 	mov	dpl,a
      00276D EF               [12] 1748 	mov	a,r7
      00276E 34 64            [12] 1749 	addc	a,#(_pu >> 8)
      002770 F5 83            [12] 1750 	mov	dph,a
      002772 E0               [24] 1751 	movx	a,@dptr
      002773 FB               [12] 1752 	mov	r3,a
      002774 EE               [12] 1753 	mov	a,r6
      002775 24 00            [12] 1754 	add	a,#_nu
      002777 F5 82            [12] 1755 	mov	dpl,a
      002779 EF               [12] 1756 	mov	a,r7
      00277A 34 AC            [12] 1757 	addc	a,#(_nu >> 8)
      00277C F5 83            [12] 1758 	mov	dph,a
      00277E E0               [24] 1759 	movx	a,@dptr
      00277F FA               [12] 1760 	mov	r2,a
      002780 6B               [12] 1761 	xrl	a,r3
      002781 78 34            [12] 1762 	mov	r0,#_cycle2
      002783 46               [12] 1763 	orl	a,@r0
      002784 F6               [12] 1764 	mov	@r0,a
                                   1765 ;	life.c:222: fixed |= u[A2D(W, y, x)] ^ nu[A2D(W, y, x)];
      002785 EE               [12] 1766 	mov	a,r6
      002786 24 00            [12] 1767 	add	a,#_u
      002788 F5 82            [12] 1768 	mov	dpl,a
      00278A EF               [12] 1769 	mov	a,r7
      00278B 34 88            [12] 1770 	addc	a,#(_u >> 8)
      00278D F5 83            [12] 1771 	mov	dph,a
      00278F E0               [24] 1772 	movx	a,@dptr
      002790 FF               [12] 1773 	mov	r7,a
      002791 EA               [12] 1774 	mov	a,r2
      002792 6F               [12] 1775 	xrl	a,r7
      002793 78 33            [12] 1776 	mov	r0,#_fixed
      002795 46               [12] 1777 	orl	a,@r0
      002796 F6               [12] 1778 	mov	@r0,a
                                   1779 ;	life.c:203: for (x = 0; x < W; x++) {
      002797 E5 10            [12] 1780 	mov	a,_bp
      002799 24 0F            [12] 1781 	add	a,#0x0f
      00279B F8               [12] 1782 	mov	r0,a
      00279C 06               [12] 1783 	inc	@r0
      00279D B6 00 02         [24] 1784 	cjne	@r0,#0x00,00181$
      0027A0 08               [12] 1785 	inc	r0
      0027A1 06               [12] 1786 	inc	@r0
      0027A2                       1787 00181$:
      0027A2 E5 10            [12] 1788 	mov	a,_bp
      0027A4 24 0F            [12] 1789 	add	a,#0x0f
      0027A6 F8               [12] 1790 	mov	r0,a
      0027A7 C3               [12] 1791 	clr	c
      0027A8 E6               [12] 1792 	mov	a,@r0
      0027A9 94 30            [12] 1793 	subb	a,#0x30
      0027AB 08               [12] 1794 	inc	r0
      0027AC E6               [12] 1795 	mov	a,@r0
      0027AD 64 80            [12] 1796 	xrl	a,#0x80
      0027AF 94 80            [12] 1797 	subb	a,#0x80
      0027B1 50 03            [24] 1798 	jnc	00182$
      0027B3 02 24 EF         [24] 1799 	ljmp	00133$
      0027B6                       1800 00182$:
                                   1801 ;	life.c:200: for (y = 0; y < H; y++) {
      0027B6 74 30            [12] 1802 	mov	a,#0x30
      0027B8 2C               [12] 1803 	add	a,r4
      0027B9 FC               [12] 1804 	mov	r4,a
      0027BA E4               [12] 1805 	clr	a
      0027BB 3D               [12] 1806 	addc	a,r5
      0027BC FD               [12] 1807 	mov	r5,a
      0027BD E5 10            [12] 1808 	mov	a,_bp
      0027BF 24 0B            [12] 1809 	add	a,#0x0b
      0027C1 F8               [12] 1810 	mov	r0,a
      0027C2 74 30            [12] 1811 	mov	a,#0x30
      0027C4 26               [12] 1812 	add	a,@r0
      0027C5 F6               [12] 1813 	mov	@r0,a
      0027C6 E4               [12] 1814 	clr	a
      0027C7 08               [12] 1815 	inc	r0
      0027C8 36               [12] 1816 	addc	a,@r0
      0027C9 F6               [12] 1817 	mov	@r0,a
      0027CA E5 10            [12] 1818 	mov	a,_bp
      0027CC 24 11            [12] 1819 	add	a,#0x11
      0027CE F8               [12] 1820 	mov	r0,a
      0027CF 06               [12] 1821 	inc	@r0
      0027D0 B6 00 02         [24] 1822 	cjne	@r0,#0x00,00183$
      0027D3 08               [12] 1823 	inc	r0
      0027D4 06               [12] 1824 	inc	@r0
      0027D5                       1825 00183$:
      0027D5 E5 10            [12] 1826 	mov	a,_bp
      0027D7 24 11            [12] 1827 	add	a,#0x11
      0027D9 F8               [12] 1828 	mov	r0,a
      0027DA C3               [12] 1829 	clr	c
      0027DB E6               [12] 1830 	mov	a,@r0
      0027DC 94 C0            [12] 1831 	subb	a,#0xc0
      0027DE 08               [12] 1832 	inc	r0
      0027DF E6               [12] 1833 	mov	a,@r0
      0027E0 64 80            [12] 1834 	xrl	a,#0x80
      0027E2 94 80            [12] 1835 	subb	a,#0x80
      0027E4 50 03            [24] 1836 	jnc	00184$
      0027E6 02 23 FA         [24] 1837 	ljmp	00135$
      0027E9                       1838 00184$:
                                   1839 ;	life.c:226: OE76 = OE76_0;
      0027E9 78 23            [12] 1840 	mov	r0,#_OE76
      0027EB 76 3F            [12] 1841 	mov	@r0,#0x3f
                                   1842 ;	life.c:30: OEreg = OE76;
      0027ED 90 F0 06         [24] 1843 	mov	dptr,#_OEreg
      0027F0 74 3F            [12] 1844 	mov	a,#0x3f
      0027F2 F0               [24] 1845 	movx	@dptr,a
                                   1846 ;	life.c:229: cycle2 = !cycle2;
      0027F3 78 34            [12] 1847 	mov	r0,#_cycle2
      0027F5 E6               [12] 1848 	mov	a,@r0
      0027F6 B4 01 00         [24] 1849 	cjne	a,#0x01,00185$
      0027F9                       1850 00185$:
      0027F9 92 00            [24] 1851 	mov	b0,c
      0027FB 78 34            [12] 1852 	mov	r0,#_cycle2
      0027FD E4               [12] 1853 	clr	a
      0027FE 33               [12] 1854 	rlc	a
      0027FF F6               [12] 1855 	mov	@r0,a
                                   1856 ;	life.c:230: fixed = !fixed;
      002800 78 33            [12] 1857 	mov	r0,#_fixed
      002802 E6               [12] 1858 	mov	a,@r0
      002803 B4 01 00         [24] 1859 	cjne	a,#0x01,00186$
      002806                       1860 00186$:
      002806 92 00            [24] 1861 	mov	b0,c
      002808 78 33            [12] 1862 	mov	r0,#_fixed
      00280A E4               [12] 1863 	clr	a
      00280B 33               [12] 1864 	rlc	a
      00280C F6               [12] 1865 	mov	@r0,a
                                   1866 ;	life.c:232: memcpy(pu, u, sizeof (u));
      00280D E4               [12] 1867 	clr	a
      00280E C0 E0            [24] 1868 	push	acc
      002810 74 24            [12] 1869 	mov	a,#0x24
      002812 C0 E0            [24] 1870 	push	acc
      002814 74 00            [12] 1871 	mov	a,#_u
      002816 C0 E0            [24] 1872 	push	acc
      002818 74 88            [12] 1873 	mov	a,#(_u >> 8)
      00281A C0 E0            [24] 1874 	push	acc
      00281C E4               [12] 1875 	clr	a
      00281D C0 E0            [24] 1876 	push	acc
      00281F 90 64 00         [24] 1877 	mov	dptr,#_pu
      002822 75 F0 00         [24] 1878 	mov	b,#0x00
      002825 12 2F B4         [24] 1879 	lcall	___memcpy
      002828 E5 81            [12] 1880 	mov	a,sp
      00282A 24 FB            [12] 1881 	add	a,#0xfb
      00282C F5 81            [12] 1882 	mov	sp,a
                                   1883 ;	life.c:233: memcpy(u, nu, sizeof (nu));
      00282E E4               [12] 1884 	clr	a
      00282F C0 E0            [24] 1885 	push	acc
      002831 74 24            [12] 1886 	mov	a,#0x24
      002833 C0 E0            [24] 1887 	push	acc
      002835 74 00            [12] 1888 	mov	a,#_nu
      002837 C0 E0            [24] 1889 	push	acc
      002839 74 AC            [12] 1890 	mov	a,#(_nu >> 8)
      00283B C0 E0            [24] 1891 	push	acc
      00283D E4               [12] 1892 	clr	a
      00283E C0 E0            [24] 1893 	push	acc
      002840 90 88 00         [24] 1894 	mov	dptr,#_u
      002843 75 F0 00         [24] 1895 	mov	b,#0x00
      002846 12 2F B4         [24] 1896 	lcall	___memcpy
      002849 E5 81            [12] 1897 	mov	a,sp
      00284B 24 FB            [12] 1898 	add	a,#0xfb
                                   1899 ;	life.c:235: return;
                                   1900 ;	life.c:236: }
      00284D 85 10 81         [24] 1901 	mov	sp,_bp
      002850 D0 10            [24] 1902 	pop	_bp
      002852 22               [24] 1903 	ret
                                   1904 ;------------------------------------------------------------
                                   1905 ;Allocation info for local variables in function 'main'
                                   1906 ;------------------------------------------------------------
                                   1907 ;c                         Allocated to registers r6 r7 
                                   1908 ;__3932160007              Allocated to registers 
                                   1909 ;__4587520011              Allocated to registers 
                                   1910 ;------------------------------------------------------------
                                   1911 ;	life.c:238: void main(void) {
                                   1912 ;	-----------------------------------------
                                   1913 ;	 function main
                                   1914 ;	-----------------------------------------
      002853                       1915 _main:
                                   1916 ;	life.c:241: IT0 = 1;
                                   1917 ;	assignBit
      002853 D2 88            [12] 1918 	setb	_IT0
                                   1919 ;	life.c:242: IT1 = 1;
                                   1920 ;	assignBit
      002855 D2 8A            [12] 1921 	setb	_IT1
                                   1922 ;	life.c:243: EX0 = 1;
                                   1923 ;	assignBit
      002857 D2 A8            [12] 1924 	setb	_EX0
                                   1925 ;	life.c:244: EX1 = 1;
                                   1926 ;	assignBit
      002859 D2 AA            [12] 1927 	setb	_EX1
                                   1928 ;	life.c:245: EA = 1;
                                   1929 ;	assignBit
      00285B D2 AF            [12] 1930 	setb	_EA
                                   1931 ;	life.c:246: P1_7 = 0;
                                   1932 ;	assignBit
      00285D C2 97            [12] 1933 	clr	_P1_7
                                   1934 ;	life.c:251: __endasm;
      00285F 00               [12] 1935 	nop
      002860 00               [12] 1936 	nop
      002861 00               [12] 1937 	nop
                                   1938 ;	life.c:253: srand(RND);
      002862 90 E0 00         [24] 1939 	mov	dptr,#_RND
      002865 E0               [24] 1940 	movx	a,@dptr
      002866 FE               [12] 1941 	mov	r6,a
      002867 A3               [24] 1942 	inc	dptr
      002868 E0               [24] 1943 	movx	a,@dptr
      002869 FF               [12] 1944 	mov	r7,a
      00286A 8E 82            [24] 1945 	mov	dpl,r6
      00286C 8F 83            [24] 1946 	mov	dph,r7
      00286E 12 2B E7         [24] 1947 	lcall	_srand
                                   1948 ;	life.c:255: OE76 = OE76_0;
      002871 78 23            [12] 1949 	mov	r0,#_OE76
      002873 76 3F            [12] 1950 	mov	@r0,#0x3f
                                   1951 ;	life.c:30: OEreg = OE76;
      002875 90 F0 06         [24] 1952 	mov	dptr,#_OEreg
      002878 74 3F            [12] 1953 	mov	a,#0x3f
      00287A F0               [24] 1954 	movx	@dptr,a
                                   1955 ;	life.c:43: gen = 0ul;
      00287B 78 24            [12] 1956 	mov	r0,#_gen
      00287D E4               [12] 1957 	clr	a
      00287E F6               [12] 1958 	mov	@r0,a
      00287F 08               [12] 1959 	inc	r0
      002880 F6               [12] 1960 	mov	@r0,a
      002881 08               [12] 1961 	inc	r0
      002882 F6               [12] 1962 	mov	@r0,a
      002883 08               [12] 1963 	inc	r0
      002884 F6               [12] 1964 	mov	@r0,a
                                   1965 ;	life.c:44: genc2 = 0ul;
      002885 78 28            [12] 1966 	mov	r0,#_genc2
      002887 F6               [12] 1967 	mov	@r0,a
      002888 08               [12] 1968 	inc	r0
      002889 F6               [12] 1969 	mov	@r0,a
      00288A 08               [12] 1970 	inc	r0
      00288B F6               [12] 1971 	mov	@r0,a
      00288C 08               [12] 1972 	inc	r0
      00288D F6               [12] 1973 	mov	@r0,a
                                   1974 ;	life.c:45: genfx = 0ul;
      00288E 78 2C            [12] 1975 	mov	r0,#_genfx
      002890 F6               [12] 1976 	mov	@r0,a
      002891 08               [12] 1977 	inc	r0
      002892 F6               [12] 1978 	mov	@r0,a
      002893 08               [12] 1979 	inc	r0
      002894 F6               [12] 1980 	mov	@r0,a
      002895 08               [12] 1981 	inc	r0
      002896 F6               [12] 1982 	mov	@r0,a
                                   1983 ;	life.c:46: c2set = 0;
      002897 78 30            [12] 1984 	mov	r0,#_c2set
      002899 76 00            [12] 1985 	mov	@r0,#0x00
                                   1986 ;	life.c:47: fxset = 0;
      00289B 78 31            [12] 1987 	mov	r0,#_fxset
      00289D 76 00            [12] 1988 	mov	@r0,#0x00
                                   1989 ;	life.c:259: pruni = 0;
      00289F 78 32            [12] 1990 	mov	r0,#_pruni
      0028A1 76 00            [12] 1991 	mov	@r0,#0x00
                                   1992 ;	life.c:261: printstr("\033[?25h\033[m");
      0028A3 90 32 46         [24] 1993 	mov	dptr,#___str_10
      0028A6 75 F0 80         [24] 1994 	mov	b,#0x80
      0028A9 12 2C 31         [24] 1995 	lcall	_printstr
                                   1996 ;	life.c:263: for (i0 = 0; !i0; ) {
      0028AC 78 21            [12] 1997 	mov	r0,#_i0
      0028AE 76 00            [12] 1998 	mov	@r0,#0x00
                                   1999 ;	life.c:264: while (1) {
      0028B0                       2000 00127$:
                                   2001 ;	life.c:265: printstr("LIFE I L R O P S U");
      0028B0 90 32 50         [24] 2002 	mov	dptr,#___str_11
      0028B3 75 F0 80         [24] 2003 	mov	b,#0x80
      0028B6 12 2C 31         [24] 2004 	lcall	_printstr
                                   2005 ;	life.c:266: putchar(pruni ? (int)'1' : (int)'0');
      0028B9 78 32            [12] 2006 	mov	r0,#_pruni
      0028BB E6               [12] 2007 	mov	a,@r0
      0028BC 60 06            [24] 2008 	jz	00170$
      0028BE 7E 31            [12] 2009 	mov	r6,#0x31
      0028C0 7F 00            [12] 2010 	mov	r7,#0x00
      0028C2 80 04            [24] 2011 	sjmp	00171$
      0028C4                       2012 00170$:
      0028C4 7E 30            [12] 2013 	mov	r6,#0x30
      0028C6 7F 00            [12] 2014 	mov	r7,#0x00
      0028C8                       2015 00171$:
      0028C8 8E 82            [24] 2016 	mov	dpl,r6
      0028CA 8F 83            [24] 2017 	mov	dph,r7
      0028CC 12 2C 00         [24] 2018 	lcall	_putchar
                                   2019 ;	life.c:267: printstr(" B T\r\n");
      0028CF 90 32 63         [24] 2020 	mov	dptr,#___str_12
      0028D2 75 F0 80         [24] 2021 	mov	b,#0x80
      0028D5 12 2C 31         [24] 2022 	lcall	_printstr
                                   2023 ;	life.c:268: c = toupper(getchar());
      0028D8 12 2C 0A         [24] 2024 	lcall	_getchar
      0028DB 12 30 B1         [24] 2025 	lcall	_toupper
      0028DE AE 82            [24] 2026 	mov	r6,dpl
      0028E0 AF 83            [24] 2027 	mov	r7,dph
                                   2028 ;	life.c:269: if (i0 || (c == (int)'T')) goto term;
      0028E2 78 21            [12] 2029 	mov	r0,#_i0
      0028E4 E6               [12] 2030 	mov	a,@r0
      0028E5 60 03            [24] 2031 	jz	00298$
      0028E7 02 2B 14         [24] 2032 	ljmp	00154$
      0028EA                       2033 00298$:
      0028EA BE 54 06         [24] 2034 	cjne	r6,#0x54,00299$
      0028ED BF 00 03         [24] 2035 	cjne	r7,#0x00,00299$
      0028F0 02 2B 14         [24] 2036 	ljmp	00154$
      0028F3                       2037 00299$:
                                   2038 ;	life.c:270: else if ((c == (int)'I') || (c == (int)'L') || (c == (int)'R')) {
      0028F3 BE 49 05         [24] 2039 	cjne	r6,#0x49,00300$
      0028F6 BF 00 02         [24] 2040 	cjne	r7,#0x00,00300$
      0028F9 80 0E            [24] 2041 	sjmp	00117$
      0028FB                       2042 00300$:
      0028FB BE 4C 05         [24] 2043 	cjne	r6,#0x4c,00301$
      0028FE BF 00 02         [24] 2044 	cjne	r7,#0x00,00301$
      002901 80 06            [24] 2045 	sjmp	00117$
      002903                       2046 00301$:
      002903 BE 52 34         [24] 2047 	cjne	r6,#0x52,00118$
      002906 BF 00 31         [24] 2048 	cjne	r7,#0x00,00118$
      002909                       2049 00117$:
                                   2050 ;	life.c:271: if (c == (int)'L') loadiu();
      002909 BE 4C 08         [24] 2051 	cjne	r6,#0x4c,00104$
      00290C BF 00 05         [24] 2052 	cjne	r7,#0x00,00104$
      00290F 12 22 3A         [24] 2053 	lcall	_loadiu
      002912 80 09            [24] 2054 	sjmp	00105$
      002914                       2055 00104$:
                                   2056 ;	life.c:272: else if (c == (int)'R') loadriu();
      002914 BE 52 06         [24] 2057 	cjne	r6,#0x52,00105$
      002917 BF 00 03         [24] 2058 	cjne	r7,#0x00,00105$
      00291A 12 23 5D         [24] 2059 	lcall	_loadriu
      00291D                       2060 00105$:
                                   2061 ;	life.c:273: initu();
      00291D 12 20 8D         [24] 2062 	lcall	_initu
                                   2063 ;	life.c:274: showu(PRUNI, u);
      002920 74 00            [12] 2064 	mov	a,#_u
      002922 C0 E0            [24] 2065 	push	acc
      002924 74 88            [12] 2066 	mov	a,#(_u >> 8)
      002926 C0 E0            [24] 2067 	push	acc
      002928 E4               [12] 2068 	clr	a
      002929 C0 E0            [24] 2069 	push	acc
      00292B 75 82 04         [24] 2070 	mov	dpl,#0x04
      00292E 12 20 EC         [24] 2071 	lcall	_showu
      002931 15 81            [12] 2072 	dec	sp
      002933 15 81            [12] 2073 	dec	sp
      002935 15 81            [12] 2074 	dec	sp
      002937 02 28 B0         [24] 2075 	ljmp	00127$
      00293A                       2076 00118$:
                                   2077 ;	life.c:275: } else if (c == (int)'O') showu(PRUNI, iu);
      00293A BE 4F 1D         [24] 2078 	cjne	r6,#0x4f,00115$
      00293D BF 00 1A         [24] 2079 	cjne	r7,#0x00,00115$
      002940 74 00            [12] 2080 	mov	a,#_iu
      002942 C0 E0            [24] 2081 	push	acc
      002944 74 40            [12] 2082 	mov	a,#(_iu >> 8)
      002946 C0 E0            [24] 2083 	push	acc
      002948 E4               [12] 2084 	clr	a
      002949 C0 E0            [24] 2085 	push	acc
      00294B 75 82 04         [24] 2086 	mov	dpl,#0x04
      00294E 12 20 EC         [24] 2087 	lcall	_showu
      002951 15 81            [12] 2088 	dec	sp
      002953 15 81            [12] 2089 	dec	sp
      002955 15 81            [12] 2090 	dec	sp
      002957 02 28 B0         [24] 2091 	ljmp	00127$
      00295A                       2092 00115$:
                                   2093 ;	life.c:276: else if (c == (int)'P') showu(PRHDR | PRUNI, u);
      00295A BE 50 1D         [24] 2094 	cjne	r6,#0x50,00112$
      00295D BF 00 1A         [24] 2095 	cjne	r7,#0x00,00112$
      002960 74 00            [12] 2096 	mov	a,#_u
      002962 C0 E0            [24] 2097 	push	acc
      002964 74 88            [12] 2098 	mov	a,#(_u >> 8)
      002966 C0 E0            [24] 2099 	push	acc
      002968 E4               [12] 2100 	clr	a
      002969 C0 E0            [24] 2101 	push	acc
      00296B 75 82 06         [24] 2102 	mov	dpl,#0x06
      00296E 12 20 EC         [24] 2103 	lcall	_showu
      002971 15 81            [12] 2104 	dec	sp
      002973 15 81            [12] 2105 	dec	sp
      002975 15 81            [12] 2106 	dec	sp
      002977 02 28 B0         [24] 2107 	ljmp	00127$
      00297A                       2108 00112$:
                                   2109 ;	life.c:277: else if (c == (int)'U') pruni = !pruni;
      00297A BE 55 13         [24] 2110 	cjne	r6,#0x55,00109$
      00297D BF 00 10         [24] 2111 	cjne	r7,#0x00,00109$
      002980 78 32            [12] 2112 	mov	r0,#_pruni
      002982 E6               [12] 2113 	mov	a,@r0
      002983 B4 01 00         [24] 2114 	cjne	a,#0x01,00314$
      002986                       2115 00314$:
      002986 92 00            [24] 2116 	mov	b0,c
      002988 78 32            [12] 2117 	mov	r0,#_pruni
      00298A E4               [12] 2118 	clr	a
      00298B 33               [12] 2119 	rlc	a
      00298C F6               [12] 2120 	mov	@r0,a
      00298D 02 28 B0         [24] 2121 	ljmp	00127$
      002990                       2122 00109$:
                                   2123 ;	life.c:278: else if (c == (int)'S') break;
      002990 BE 53 05         [24] 2124 	cjne	r6,#0x53,00315$
      002993 BF 00 02         [24] 2125 	cjne	r7,#0x00,00315$
      002996 80 03            [24] 2126 	sjmp	00316$
      002998                       2127 00315$:
      002998 02 28 B0         [24] 2128 	ljmp	00127$
      00299B                       2129 00316$:
                                   2130 ;	life.c:281: for (i1 = 0; !i0 && !i1; ) {
      00299B 78 22            [12] 2131 	mov	r0,#_i1
      00299D 76 00            [12] 2132 	mov	@r0,#0x00
      00299F                       2133 00164$:
      00299F 78 21            [12] 2134 	mov	r0,#_i0
      0029A1 E6               [12] 2135 	mov	a,@r0
      0029A2 60 03            [24] 2136 	jz	00317$
      0029A4 02 2A E7         [24] 2137 	ljmp	00150$
      0029A7                       2138 00317$:
      0029A7 78 22            [12] 2139 	mov	r0,#_i1
      0029A9 E6               [12] 2140 	mov	a,@r0
      0029AA 60 03            [24] 2141 	jz	00318$
      0029AC 02 2A E7         [24] 2142 	ljmp	00150$
      0029AF                       2143 00318$:
                                   2144 ;	life.c:282: if (fxu()) {
      0029AF 78 31            [12] 2145 	mov	r0,#_fxset
      0029B1 E6               [12] 2146 	mov	a,@r0
      0029B2 60 23            [24] 2147 	jz	00130$
                                   2148 ;	life.c:283: printstr("FIXED AT ");
      0029B4 90 32 6A         [24] 2149 	mov	dptr,#___str_13
      0029B7 75 F0 80         [24] 2150 	mov	b,#0x80
      0029BA 12 2C 31         [24] 2151 	lcall	_printstr
                                   2152 ;	life.c:284: showu(PRHDR, u);
      0029BD 74 00            [12] 2153 	mov	a,#_u
      0029BF C0 E0            [24] 2154 	push	acc
      0029C1 74 88            [12] 2155 	mov	a,#(_u >> 8)
      0029C3 C0 E0            [24] 2156 	push	acc
      0029C5 E4               [12] 2157 	clr	a
      0029C6 C0 E0            [24] 2158 	push	acc
      0029C8 75 82 02         [24] 2159 	mov	dpl,#0x02
      0029CB 12 20 EC         [24] 2160 	lcall	_showu
      0029CE 15 81            [12] 2161 	dec	sp
      0029D0 15 81            [12] 2162 	dec	sp
      0029D2 15 81            [12] 2163 	dec	sp
                                   2164 ;	life.c:285: break;
      0029D4 02 2A E7         [24] 2165 	ljmp	00150$
      0029D7                       2166 00130$:
                                   2167 ;	life.c:287: if (pruni) showu(PRCLR | PRHDR | PRUNI, u);
      0029D7 78 32            [12] 2168 	mov	r0,#_pruni
      0029D9 E6               [12] 2169 	mov	a,@r0
      0029DA 60 19            [24] 2170 	jz	00132$
      0029DC 74 00            [12] 2171 	mov	a,#_u
      0029DE C0 E0            [24] 2172 	push	acc
      0029E0 74 88            [12] 2173 	mov	a,#(_u >> 8)
      0029E2 C0 E0            [24] 2174 	push	acc
      0029E4 E4               [12] 2175 	clr	a
      0029E5 C0 E0            [24] 2176 	push	acc
      0029E7 75 82 07         [24] 2177 	mov	dpl,#0x07
      0029EA 12 20 EC         [24] 2178 	lcall	_showu
      0029ED 15 81            [12] 2179 	dec	sp
      0029EF 15 81            [12] 2180 	dec	sp
      0029F1 15 81            [12] 2181 	dec	sp
      0029F3 80 17            [24] 2182 	sjmp	00133$
      0029F5                       2183 00132$:
                                   2184 ;	life.c:288: else showu(PRHDR, u);
      0029F5 74 00            [12] 2185 	mov	a,#_u
      0029F7 C0 E0            [24] 2186 	push	acc
      0029F9 74 88            [12] 2187 	mov	a,#(_u >> 8)
      0029FB C0 E0            [24] 2188 	push	acc
      0029FD E4               [12] 2189 	clr	a
      0029FE C0 E0            [24] 2190 	push	acc
      002A00 75 82 02         [24] 2191 	mov	dpl,#0x02
      002A03 12 20 EC         [24] 2192 	lcall	_showu
      002A06 15 81            [12] 2193 	dec	sp
      002A08 15 81            [12] 2194 	dec	sp
      002A0A 15 81            [12] 2195 	dec	sp
      002A0C                       2196 00133$:
                                   2197 ;	life.c:53: gen++;
      002A0C 78 24            [12] 2198 	mov	r0,#_gen
      002A0E 06               [12] 2199 	inc	@r0
      002A0F B6 00 0C         [24] 2200 	cjne	@r0,#0x00,00321$
      002A12 08               [12] 2201 	inc	r0
      002A13 06               [12] 2202 	inc	@r0
      002A14 B6 00 07         [24] 2203 	cjne	@r0,#0x00,00321$
      002A17 08               [12] 2204 	inc	r0
      002A18 06               [12] 2205 	inc	@r0
      002A19 B6 00 02         [24] 2206 	cjne	@r0,#0x00,00321$
      002A1C 08               [12] 2207 	inc	r0
      002A1D 06               [12] 2208 	inc	@r0
      002A1E                       2209 00321$:
                                   2210 ;	life.c:290: evolveu();
      002A1E 12 23 C9         [24] 2211 	lcall	_evolveu
                                   2212 ;	life.c:291: if (fixed) {
      002A21 78 33            [12] 2213 	mov	r0,#_fixed
      002A23 E6               [12] 2214 	mov	a,@r0
      002A24 60 41            [24] 2215 	jz	00135$
                                   2216 ;	life.c:59: genfx = gen;
      002A26 78 24            [12] 2217 	mov	r0,#_gen
      002A28 86 04            [24] 2218 	mov	ar4,@r0
      002A2A 08               [12] 2219 	inc	r0
      002A2B 86 05            [24] 2220 	mov	ar5,@r0
      002A2D 08               [12] 2221 	inc	r0
      002A2E 86 06            [24] 2222 	mov	ar6,@r0
      002A30 08               [12] 2223 	inc	r0
      002A31 86 07            [24] 2224 	mov	ar7,@r0
      002A33 78 2C            [12] 2225 	mov	r0,#_genfx
      002A35 A6 04            [24] 2226 	mov	@r0,ar4
      002A37 08               [12] 2227 	inc	r0
      002A38 A6 05            [24] 2228 	mov	@r0,ar5
      002A3A 08               [12] 2229 	inc	r0
      002A3B A6 06            [24] 2230 	mov	@r0,ar6
      002A3D 08               [12] 2231 	inc	r0
      002A3E A6 07            [24] 2232 	mov	@r0,ar7
                                   2233 ;	life.c:60: fxset = 1;
      002A40 78 31            [12] 2234 	mov	r0,#_fxset
      002A42 76 01            [12] 2235 	mov	@r0,#0x01
                                   2236 ;	life.c:293: printstr("FIXED AT ");
      002A44 90 32 6A         [24] 2237 	mov	dptr,#___str_13
      002A47 75 F0 80         [24] 2238 	mov	b,#0x80
      002A4A 12 2C 31         [24] 2239 	lcall	_printstr
                                   2240 ;	life.c:294: showu(PRHDR, u);
      002A4D 74 00            [12] 2241 	mov	a,#_u
      002A4F C0 E0            [24] 2242 	push	acc
      002A51 74 88            [12] 2243 	mov	a,#(_u >> 8)
      002A53 C0 E0            [24] 2244 	push	acc
      002A55 E4               [12] 2245 	clr	a
      002A56 C0 E0            [24] 2246 	push	acc
      002A58 75 82 02         [24] 2247 	mov	dpl,#0x02
      002A5B 12 20 EC         [24] 2248 	lcall	_showu
      002A5E 15 81            [12] 2249 	dec	sp
      002A60 15 81            [12] 2250 	dec	sp
      002A62 15 81            [12] 2251 	dec	sp
                                   2252 ;	life.c:295: break;
      002A64 02 2A E7         [24] 2253 	ljmp	00150$
      002A67                       2254 00135$:
                                   2255 ;	life.c:297: if (cycle2) {
      002A67 78 34            [12] 2256 	mov	r0,#_cycle2
      002A69 E6               [12] 2257 	mov	a,@r0
      002A6A 60 23            [24] 2258 	jz	00139$
                                   2259 ;	life.c:298: if (!c2u()) updatec2();
      002A6C 78 30            [12] 2260 	mov	r0,#_c2set
      002A6E E6               [12] 2261 	mov	a,@r0
      002A6F 70 1E            [24] 2262 	jnz	00139$
                                   2263 ;	life.c:66: genc2 = gen;
      002A71 78 24            [12] 2264 	mov	r0,#_gen
      002A73 86 04            [24] 2265 	mov	ar4,@r0
      002A75 08               [12] 2266 	inc	r0
      002A76 86 05            [24] 2267 	mov	ar5,@r0
      002A78 08               [12] 2268 	inc	r0
      002A79 86 06            [24] 2269 	mov	ar6,@r0
      002A7B 08               [12] 2270 	inc	r0
      002A7C 86 07            [24] 2271 	mov	ar7,@r0
      002A7E 78 28            [12] 2272 	mov	r0,#_genc2
      002A80 A6 04            [24] 2273 	mov	@r0,ar4
      002A82 08               [12] 2274 	inc	r0
      002A83 A6 05            [24] 2275 	mov	@r0,ar5
      002A85 08               [12] 2276 	inc	r0
      002A86 A6 06            [24] 2277 	mov	@r0,ar6
      002A88 08               [12] 2278 	inc	r0
      002A89 A6 07            [24] 2279 	mov	@r0,ar7
                                   2280 ;	life.c:67: c2set = 1;
      002A8B 78 30            [12] 2281 	mov	r0,#_c2set
      002A8D 76 01            [12] 2282 	mov	@r0,#0x01
                                   2283 ;	life.c:298: if (!c2u()) updatec2();
      002A8F                       2284 00139$:
                                   2285 ;	life.c:301: c = getchar_poll();
      002A8F 12 2C 17         [24] 2286 	lcall	_getchar_poll
      002A92 AE 82            [24] 2287 	mov	r6,dpl
      002A94 AF 83            [24] 2288 	mov	r7,dph
                                   2289 ;	life.c:302: if (c > 0) {
      002A96 C3               [12] 2290 	clr	c
      002A97 E4               [12] 2291 	clr	a
      002A98 9E               [12] 2292 	subb	a,r6
      002A99 74 80            [12] 2293 	mov	a,#(0x00 ^ 0x80)
      002A9B 8F F0            [24] 2294 	mov	b,r7
      002A9D 63 F0 80         [24] 2295 	xrl	b,#0x80
      002AA0 95 F0            [12] 2296 	subb	a,b
      002AA2 40 03            [24] 2297 	jc	00325$
      002AA4 02 29 9F         [24] 2298 	ljmp	00164$
      002AA7                       2299 00325$:
                                   2300 ;	life.c:303: c = toupper(c);
      002AA7 8E 82            [24] 2301 	mov	dpl,r6
      002AA9 8F 83            [24] 2302 	mov	dph,r7
      002AAB 12 30 B1         [24] 2303 	lcall	_toupper
      002AAE AE 82            [24] 2304 	mov	r6,dpl
      002AB0 AF 83            [24] 2305 	mov	r7,dph
                                   2306 ;	life.c:304: if (c == (int)'U') pruni = !pruni;
      002AB2 BE 55 13         [24] 2307 	cjne	r6,#0x55,00146$
      002AB5 BF 00 10         [24] 2308 	cjne	r7,#0x00,00146$
      002AB8 78 32            [12] 2309 	mov	r0,#_pruni
      002ABA E6               [12] 2310 	mov	a,@r0
      002ABB B4 01 00         [24] 2311 	cjne	a,#0x01,00328$
      002ABE                       2312 00328$:
      002ABE 92 00            [24] 2313 	mov	b0,c
      002AC0 78 32            [12] 2314 	mov	r0,#_pruni
      002AC2 E4               [12] 2315 	clr	a
      002AC3 33               [12] 2316 	rlc	a
      002AC4 F6               [12] 2317 	mov	@r0,a
      002AC5 02 29 9F         [24] 2318 	ljmp	00164$
      002AC8                       2319 00146$:
                                   2320 ;	life.c:305: else if (c == (int)'T') i0 = 1;
      002AC8 BE 54 0A         [24] 2321 	cjne	r6,#0x54,00143$
      002ACB BF 00 07         [24] 2322 	cjne	r7,#0x00,00143$
      002ACE 78 21            [12] 2323 	mov	r0,#_i0
      002AD0 76 01            [12] 2324 	mov	@r0,#0x01
      002AD2 02 29 9F         [24] 2325 	ljmp	00164$
      002AD5                       2326 00143$:
                                   2327 ;	life.c:306: else if (c == (int)'B') i1 = 1;
      002AD5 BE 42 05         [24] 2328 	cjne	r6,#0x42,00331$
      002AD8 BF 00 02         [24] 2329 	cjne	r7,#0x00,00331$
      002ADB 80 03            [24] 2330 	sjmp	00332$
      002ADD                       2331 00331$:
      002ADD 02 29 9F         [24] 2332 	ljmp	00164$
      002AE0                       2333 00332$:
      002AE0 78 22            [12] 2334 	mov	r0,#_i1
      002AE2 76 01            [12] 2335 	mov	@r0,#0x01
      002AE4 02 29 9F         [24] 2336 	ljmp	00164$
      002AE7                       2337 00150$:
                                   2338 ;	life.c:310: if (i1) {
      002AE7 78 22            [12] 2339 	mov	r0,#_i1
      002AE9 E6               [12] 2340 	mov	a,@r0
      002AEA 60 20            [24] 2341 	jz	00167$
                                   2342 ;	life.c:311: printstr("BREAK AT ");
      002AEC 90 32 74         [24] 2343 	mov	dptr,#___str_14
      002AEF 75 F0 80         [24] 2344 	mov	b,#0x80
      002AF2 12 2C 31         [24] 2345 	lcall	_printstr
                                   2346 ;	life.c:312: showu(PRHDR, u);
      002AF5 74 00            [12] 2347 	mov	a,#_u
      002AF7 C0 E0            [24] 2348 	push	acc
      002AF9 74 88            [12] 2349 	mov	a,#(_u >> 8)
      002AFB C0 E0            [24] 2350 	push	acc
      002AFD E4               [12] 2351 	clr	a
      002AFE C0 E0            [24] 2352 	push	acc
      002B00 75 82 02         [24] 2353 	mov	dpl,#0x02
      002B03 12 20 EC         [24] 2354 	lcall	_showu
      002B06 15 81            [12] 2355 	dec	sp
      002B08 15 81            [12] 2356 	dec	sp
      002B0A 15 81            [12] 2357 	dec	sp
      002B0C                       2358 00167$:
                                   2359 ;	life.c:263: for (i0 = 0; !i0; ) {
      002B0C 78 21            [12] 2360 	mov	r0,#_i0
      002B0E E6               [12] 2361 	mov	a,@r0
      002B0F 70 03            [24] 2362 	jnz	00334$
      002B11 02 28 B0         [24] 2363 	ljmp	00127$
      002B14                       2364 00334$:
                                   2365 ;	life.c:316: term:
      002B14                       2366 00154$:
                                   2367 ;	life.c:317: EA = 0;
                                   2368 ;	assignBit
      002B14 C2 AF            [12] 2369 	clr	_EA
                                   2370 ;	life.c:318: printstr("TERM\r\n");
      002B16 90 32 7E         [24] 2371 	mov	dptr,#___str_15
      002B19 75 F0 80         [24] 2372 	mov	b,#0x80
      002B1C 12 2C 31         [24] 2373 	lcall	_printstr
                                   2374 ;	life.c:320: PCON |= 2;
      002B1F 43 87 02         [24] 2375 	orl	_PCON,#0x02
                                   2376 ;	life.c:322: return;
                                   2377 ;	life.c:323: }
      002B22 22               [24] 2378 	ret
                                   2379 	.area CSEG    (CODE)
                                   2380 	.area CONST   (CODE)
                                   2381 	.area CONST   (CODE)
      003200                       2382 ___str_0:
      003200 1B                    2383 	.db 0x1b
      003201 5B 32 4A              2384 	.ascii "[2J"
      003204 00                    2385 	.db 0x00
                                   2386 	.area CSEG    (CODE)
                                   2387 	.area CONST   (CODE)
      003205                       2388 ___str_1:
      003205 47 45 4E 20           2389 	.ascii "GEN "
      003209 00                    2390 	.db 0x00
                                   2391 	.area CSEG    (CODE)
                                   2392 	.area CONST   (CODE)
      00320A                       2393 ___str_2:
      00320A 20 43 59 43 4C 45 32  2394 	.ascii " CYCLE2 "
             20
      003212 00                    2395 	.db 0x00
                                   2396 	.area CSEG    (CODE)
                                   2397 	.area CONST   (CODE)
      003213                       2398 ___str_3:
      003213 20 46 49 58 45 44 20  2399 	.ascii " FIXED "
      00321A 00                    2400 	.db 0x00
                                   2401 	.area CSEG    (CODE)
                                   2402 	.area CONST   (CODE)
      00321B                       2403 ___str_4:
      00321B 0D                    2404 	.db 0x0d
      00321C 0A                    2405 	.db 0x0a
      00321D 00                    2406 	.db 0x00
                                   2407 	.area CSEG    (CODE)
                                   2408 	.area CONST   (CODE)
      00321E                       2409 ___str_5:
      00321E 1B                    2410 	.db 0x1b
      00321F 5B 3F 32 35 6C        2411 	.ascii "[?25l"
      003224 00                    2412 	.db 0x00
                                   2413 	.area CSEG    (CODE)
                                   2414 	.area CONST   (CODE)
      003225                       2415 ___str_6:
      003225 1B                    2416 	.db 0x1b
      003226 5B 3F 32 35 68        2417 	.ascii "[?25h"
      00322B 00                    2418 	.db 0x00
                                   2419 	.area CSEG    (CODE)
                                   2420 	.area CONST   (CODE)
      00322C                       2421 ___str_7:
      00322C 4C 4F 41 44 20 30 20  2422 	.ascii "LOAD 0 1 ~ # <"
             31 20 7E 20 23 20 3C
      00323A 00                    2423 	.db 0x00
                                   2424 	.area CSEG    (CODE)
                                   2425 	.area CONST   (CODE)
      00323B                       2426 ___str_8:
      00323B 3E                    2427 	.ascii ">"
      00323C 0D                    2428 	.db 0x0d
      00323D 0A                    2429 	.db 0x0a
      00323E 00                    2430 	.db 0x00
                                   2431 	.area CSEG    (CODE)
                                   2432 	.area CONST   (CODE)
      00323F                       2433 ___str_9:
      00323F 52 41 4E 44 4F 4D     2434 	.ascii "RANDOM"
      003245 00                    2435 	.db 0x00
                                   2436 	.area CSEG    (CODE)
                                   2437 	.area CONST   (CODE)
      003246                       2438 ___str_10:
      003246 1B                    2439 	.db 0x1b
      003247 5B 3F 32 35 68        2440 	.ascii "[?25h"
      00324C 1B                    2441 	.db 0x1b
      00324D 5B 6D                 2442 	.ascii "[m"
      00324F 00                    2443 	.db 0x00
                                   2444 	.area CSEG    (CODE)
                                   2445 	.area CONST   (CODE)
      003250                       2446 ___str_11:
      003250 4C 49 46 45 20 49 20  2447 	.ascii "LIFE I L R O P S U"
             4C 20 52 20 4F 20 50
             20 53 20 55
      003262 00                    2448 	.db 0x00
                                   2449 	.area CSEG    (CODE)
                                   2450 	.area CONST   (CODE)
      003263                       2451 ___str_12:
      003263 20 42 20 54           2452 	.ascii " B T"
      003267 0D                    2453 	.db 0x0d
      003268 0A                    2454 	.db 0x0a
      003269 00                    2455 	.db 0x00
                                   2456 	.area CSEG    (CODE)
                                   2457 	.area CONST   (CODE)
      00326A                       2458 ___str_13:
      00326A 46 49 58 45 44 20 41  2459 	.ascii "FIXED AT "
             54 20
      003273 00                    2460 	.db 0x00
                                   2461 	.area CSEG    (CODE)
                                   2462 	.area CONST   (CODE)
      003274                       2463 ___str_14:
      003274 42 52 45 41 4B 20 41  2464 	.ascii "BREAK AT "
             54 20
      00327D 00                    2465 	.db 0x00
                                   2466 	.area CSEG    (CODE)
                                   2467 	.area CONST   (CODE)
      00327E                       2468 ___str_15:
      00327E 54 45 52 4D           2469 	.ascii "TERM"
      003282 0D                    2470 	.db 0x0d
      003283 0A                    2471 	.db 0x0a
      003284 00                    2472 	.db 0x00
                                   2473 	.area CSEG    (CODE)
                                   2474 	.area XINIT   (CODE)
                                   2475 	.area CABS    (ABS,CODE)
