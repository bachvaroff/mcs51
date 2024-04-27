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
                                     15 	.globl _print16x
                                     16 	.globl _printstr
                                     17 	.globl _getchar_poll
                                     18 	.globl _getchar
                                     19 	.globl _putchar
                                     20 	.globl _toupper
                                     21 	.globl ___memcpy
                                     22 	.globl _memset
                                     23 	.globl _srand
                                     24 	.globl _rand
                                     25 	.globl _CY
                                     26 	.globl _AC
                                     27 	.globl _F0
                                     28 	.globl _RS1
                                     29 	.globl _RS0
                                     30 	.globl _OV
                                     31 	.globl _FL
                                     32 	.globl _P
                                     33 	.globl _TF2
                                     34 	.globl _EXF2
                                     35 	.globl _RCLK
                                     36 	.globl _TCLK
                                     37 	.globl _EXEN2
                                     38 	.globl _TR2
                                     39 	.globl _C_T2
                                     40 	.globl _CP_RL2
                                     41 	.globl _T2CON_7
                                     42 	.globl _T2CON_6
                                     43 	.globl _T2CON_5
                                     44 	.globl _T2CON_4
                                     45 	.globl _T2CON_3
                                     46 	.globl _T2CON_2
                                     47 	.globl _T2CON_1
                                     48 	.globl _T2CON_0
                                     49 	.globl _PT2
                                     50 	.globl _PS
                                     51 	.globl _PT1
                                     52 	.globl _PX1
                                     53 	.globl _PT0
                                     54 	.globl _PX0
                                     55 	.globl _RD
                                     56 	.globl _WR
                                     57 	.globl _T1
                                     58 	.globl _T0
                                     59 	.globl _INT1
                                     60 	.globl _INT0
                                     61 	.globl _TXD
                                     62 	.globl _RXD
                                     63 	.globl _P3_7
                                     64 	.globl _P3_6
                                     65 	.globl _P3_5
                                     66 	.globl _P3_4
                                     67 	.globl _P3_3
                                     68 	.globl _P3_2
                                     69 	.globl _P3_1
                                     70 	.globl _P3_0
                                     71 	.globl _EA
                                     72 	.globl _ET2
                                     73 	.globl _ES
                                     74 	.globl _ET1
                                     75 	.globl _EX1
                                     76 	.globl _ET0
                                     77 	.globl _EX0
                                     78 	.globl _P2_7
                                     79 	.globl _P2_6
                                     80 	.globl _P2_5
                                     81 	.globl _P2_4
                                     82 	.globl _P2_3
                                     83 	.globl _P2_2
                                     84 	.globl _P2_1
                                     85 	.globl _P2_0
                                     86 	.globl _SM0
                                     87 	.globl _SM1
                                     88 	.globl _SM2
                                     89 	.globl _REN
                                     90 	.globl _TB8
                                     91 	.globl _RB8
                                     92 	.globl _TI
                                     93 	.globl _RI
                                     94 	.globl _T2EX
                                     95 	.globl _T2
                                     96 	.globl _P1_7
                                     97 	.globl _P1_6
                                     98 	.globl _P1_5
                                     99 	.globl _P1_4
                                    100 	.globl _P1_3
                                    101 	.globl _P1_2
                                    102 	.globl _P1_1
                                    103 	.globl _P1_0
                                    104 	.globl _TF1
                                    105 	.globl _TR1
                                    106 	.globl _TF0
                                    107 	.globl _TR0
                                    108 	.globl _IE1
                                    109 	.globl _IT1
                                    110 	.globl _IE0
                                    111 	.globl _IT0
                                    112 	.globl _P0_7
                                    113 	.globl _P0_6
                                    114 	.globl _P0_5
                                    115 	.globl _P0_4
                                    116 	.globl _P0_3
                                    117 	.globl _P0_2
                                    118 	.globl _P0_1
                                    119 	.globl _P0_0
                                    120 	.globl _B
                                    121 	.globl _A
                                    122 	.globl _ACC
                                    123 	.globl _PSW
                                    124 	.globl _TH2
                                    125 	.globl _TL2
                                    126 	.globl _RCAP2H
                                    127 	.globl _RCAP2L
                                    128 	.globl _T2MOD
                                    129 	.globl _T2CON
                                    130 	.globl _IP
                                    131 	.globl _P3
                                    132 	.globl _IE
                                    133 	.globl _P2
                                    134 	.globl _SBUF
                                    135 	.globl _SCON
                                    136 	.globl _P1
                                    137 	.globl _TH1
                                    138 	.globl _TH0
                                    139 	.globl _TL1
                                    140 	.globl _TL0
                                    141 	.globl _TMOD
                                    142 	.globl _TCON
                                    143 	.globl _PCON
                                    144 	.globl _DPH
                                    145 	.globl _DPL
                                    146 	.globl _SP
                                    147 	.globl _P0
                                    148 ;--------------------------------------------------------
                                    149 ; special function registers
                                    150 ;--------------------------------------------------------
                                    151 	.area RSEG    (ABS,DATA)
      000000                        152 	.org 0x0000
                           000080   153 _P0	=	0x0080
                           000081   154 _SP	=	0x0081
                           000082   155 _DPL	=	0x0082
                           000083   156 _DPH	=	0x0083
                           000087   157 _PCON	=	0x0087
                           000088   158 _TCON	=	0x0088
                           000089   159 _TMOD	=	0x0089
                           00008A   160 _TL0	=	0x008a
                           00008B   161 _TL1	=	0x008b
                           00008C   162 _TH0	=	0x008c
                           00008D   163 _TH1	=	0x008d
                           000090   164 _P1	=	0x0090
                           000098   165 _SCON	=	0x0098
                           000099   166 _SBUF	=	0x0099
                           0000A0   167 _P2	=	0x00a0
                           0000A8   168 _IE	=	0x00a8
                           0000B0   169 _P3	=	0x00b0
                           0000B8   170 _IP	=	0x00b8
                           0000C8   171 _T2CON	=	0x00c8
                           0000C9   172 _T2MOD	=	0x00c9
                           0000CA   173 _RCAP2L	=	0x00ca
                           0000CB   174 _RCAP2H	=	0x00cb
                           0000CC   175 _TL2	=	0x00cc
                           0000CD   176 _TH2	=	0x00cd
                           0000D0   177 _PSW	=	0x00d0
                           0000E0   178 _ACC	=	0x00e0
                           0000E0   179 _A	=	0x00e0
                           0000F0   180 _B	=	0x00f0
                                    181 ;--------------------------------------------------------
                                    182 ; special function bits
                                    183 ;--------------------------------------------------------
                                    184 	.area RSEG    (ABS,DATA)
      000000                        185 	.org 0x0000
                           000080   186 _P0_0	=	0x0080
                           000081   187 _P0_1	=	0x0081
                           000082   188 _P0_2	=	0x0082
                           000083   189 _P0_3	=	0x0083
                           000084   190 _P0_4	=	0x0084
                           000085   191 _P0_5	=	0x0085
                           000086   192 _P0_6	=	0x0086
                           000087   193 _P0_7	=	0x0087
                           000088   194 _IT0	=	0x0088
                           000089   195 _IE0	=	0x0089
                           00008A   196 _IT1	=	0x008a
                           00008B   197 _IE1	=	0x008b
                           00008C   198 _TR0	=	0x008c
                           00008D   199 _TF0	=	0x008d
                           00008E   200 _TR1	=	0x008e
                           00008F   201 _TF1	=	0x008f
                           000090   202 _P1_0	=	0x0090
                           000091   203 _P1_1	=	0x0091
                           000092   204 _P1_2	=	0x0092
                           000093   205 _P1_3	=	0x0093
                           000094   206 _P1_4	=	0x0094
                           000095   207 _P1_5	=	0x0095
                           000096   208 _P1_6	=	0x0096
                           000097   209 _P1_7	=	0x0097
                           000090   210 _T2	=	0x0090
                           000091   211 _T2EX	=	0x0091
                           000098   212 _RI	=	0x0098
                           000099   213 _TI	=	0x0099
                           00009A   214 _RB8	=	0x009a
                           00009B   215 _TB8	=	0x009b
                           00009C   216 _REN	=	0x009c
                           00009D   217 _SM2	=	0x009d
                           00009E   218 _SM1	=	0x009e
                           00009F   219 _SM0	=	0x009f
                           0000A0   220 _P2_0	=	0x00a0
                           0000A1   221 _P2_1	=	0x00a1
                           0000A2   222 _P2_2	=	0x00a2
                           0000A3   223 _P2_3	=	0x00a3
                           0000A4   224 _P2_4	=	0x00a4
                           0000A5   225 _P2_5	=	0x00a5
                           0000A6   226 _P2_6	=	0x00a6
                           0000A7   227 _P2_7	=	0x00a7
                           0000A8   228 _EX0	=	0x00a8
                           0000A9   229 _ET0	=	0x00a9
                           0000AA   230 _EX1	=	0x00aa
                           0000AB   231 _ET1	=	0x00ab
                           0000AC   232 _ES	=	0x00ac
                           0000AD   233 _ET2	=	0x00ad
                           0000AF   234 _EA	=	0x00af
                           0000B0   235 _P3_0	=	0x00b0
                           0000B1   236 _P3_1	=	0x00b1
                           0000B2   237 _P3_2	=	0x00b2
                           0000B3   238 _P3_3	=	0x00b3
                           0000B4   239 _P3_4	=	0x00b4
                           0000B5   240 _P3_5	=	0x00b5
                           0000B6   241 _P3_6	=	0x00b6
                           0000B7   242 _P3_7	=	0x00b7
                           0000B0   243 _RXD	=	0x00b0
                           0000B1   244 _TXD	=	0x00b1
                           0000B2   245 _INT0	=	0x00b2
                           0000B3   246 _INT1	=	0x00b3
                           0000B4   247 _T0	=	0x00b4
                           0000B5   248 _T1	=	0x00b5
                           0000B6   249 _WR	=	0x00b6
                           0000B7   250 _RD	=	0x00b7
                           0000B8   251 _PX0	=	0x00b8
                           0000B9   252 _PT0	=	0x00b9
                           0000BA   253 _PX1	=	0x00ba
                           0000BB   254 _PT1	=	0x00bb
                           0000BC   255 _PS	=	0x00bc
                           0000BD   256 _PT2	=	0x00bd
                           0000C8   257 _T2CON_0	=	0x00c8
                           0000C9   258 _T2CON_1	=	0x00c9
                           0000CA   259 _T2CON_2	=	0x00ca
                           0000CB   260 _T2CON_3	=	0x00cb
                           0000CC   261 _T2CON_4	=	0x00cc
                           0000CD   262 _T2CON_5	=	0x00cd
                           0000CE   263 _T2CON_6	=	0x00ce
                           0000CF   264 _T2CON_7	=	0x00cf
                           0000C8   265 _CP_RL2	=	0x00c8
                           0000C9   266 _C_T2	=	0x00c9
                           0000CA   267 _TR2	=	0x00ca
                           0000CB   268 _EXEN2	=	0x00cb
                           0000CC   269 _TCLK	=	0x00cc
                           0000CD   270 _RCLK	=	0x00cd
                           0000CE   271 _EXF2	=	0x00ce
                           0000CF   272 _TF2	=	0x00cf
                           0000D0   273 _P	=	0x00d0
                           0000D1   274 _FL	=	0x00d1
                           0000D2   275 _OV	=	0x00d2
                           0000D3   276 _RS0	=	0x00d3
                           0000D4   277 _RS1	=	0x00d4
                           0000D5   278 _F0	=	0x00d5
                           0000D6   279 _AC	=	0x00d6
                           0000D7   280 _CY	=	0x00d7
                                    281 ;--------------------------------------------------------
                                    282 ; overlayable register banks
                                    283 ;--------------------------------------------------------
                                    284 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        285 	.ds 8
                                    286 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        287 	.ds 8
                                    288 ;--------------------------------------------------------
                                    289 ; overlayable bit register bank
                                    290 ;--------------------------------------------------------
                                    291 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        292 bits:
      000020                        293 	.ds 1
                           008000   294 	b0 = bits[0]
                           008100   295 	b1 = bits[1]
                           008200   296 	b2 = bits[2]
                           008300   297 	b3 = bits[3]
                           008400   298 	b4 = bits[4]
                           008500   299 	b5 = bits[5]
                           008600   300 	b6 = bits[6]
                           008700   301 	b7 = bits[7]
                                    302 ;--------------------------------------------------------
                                    303 ; internal ram data
                                    304 ;--------------------------------------------------------
                                    305 	.area DSEG    (DATA)
                                    306 ;--------------------------------------------------------
                                    307 ; overlayable items in internal ram 
                                    308 ;--------------------------------------------------------
                                    309 ;--------------------------------------------------------
                                    310 ; Stack segment in internal ram 
                                    311 ;--------------------------------------------------------
                                    312 	.area	SSEG
      000047                        313 __start__stack:
      000047                        314 	.ds	1
                                    315 
                                    316 ;--------------------------------------------------------
                                    317 ; indirectly addressable internal ram data
                                    318 ;--------------------------------------------------------
                                    319 	.area ISEG    (DATA)
      000021                        320 _i0:
      000021                        321 	.ds 1
      000022                        322 _i1:
      000022                        323 	.ds 1
      000023                        324 _OE76:
      000023                        325 	.ds 1
      000024                        326 _x:
      000024                        327 	.ds 2
      000026                        328 _y:
      000026                        329 	.ds 2
      000028                        330 _j:
      000028                        331 	.ds 2
      00002A                        332 _c:
      00002A                        333 	.ds 2
      00002C                        334 _n:
      00002C                        335 	.ds 1
      00002D                        336 _fixed:
      00002D                        337 	.ds 1
      00002E                        338 _cycle2:
      00002E                        339 	.ds 1
      00002F                        340 _dx:
      00002F                        341 	.ds 2
      000031                        342 _dy:
      000031                        343 	.ds 2
      000033                        344 _generation:
      000033                        345 	.ds 4
                                    346 ;--------------------------------------------------------
                                    347 ; absolute internal ram data
                                    348 ;--------------------------------------------------------
                                    349 	.area IABS    (ABS,DATA)
                                    350 	.area IABS    (ABS,DATA)
                                    351 ;--------------------------------------------------------
                                    352 ; bit data
                                    353 ;--------------------------------------------------------
                                    354 	.area BSEG    (BIT)
                                    355 ;--------------------------------------------------------
                                    356 ; paged external ram data
                                    357 ;--------------------------------------------------------
                                    358 	.area PSEG    (PAG,XDATA)
                                    359 ;--------------------------------------------------------
                                    360 ; external ram data
                                    361 ;--------------------------------------------------------
                                    362 	.area XSEG    (XDATA)
                           008000   363 _RND	=	0x8000
                           00F006   364 _OEreg	=	0xf006
      004000                        365 _iu:
      004000                        366 	.ds 9216
      006400                        367 _pu:
      006400                        368 	.ds 9216
      008800                        369 _u:
      008800                        370 	.ds 9216
      00AC00                        371 _nu:
      00AC00                        372 	.ds 9216
                                    373 ;--------------------------------------------------------
                                    374 ; absolute external ram data
                                    375 ;--------------------------------------------------------
                                    376 	.area XABS    (ABS,XDATA)
                                    377 ;--------------------------------------------------------
                                    378 ; external initialized ram data
                                    379 ;--------------------------------------------------------
                                    380 	.area XISEG   (XDATA)
                                    381 	.area HOME    (CODE)
                                    382 	.area GSINIT0 (CODE)
                                    383 	.area GSINIT1 (CODE)
                                    384 	.area GSINIT2 (CODE)
                                    385 	.area GSINIT3 (CODE)
                                    386 	.area GSINIT4 (CODE)
                                    387 	.area GSINIT5 (CODE)
                                    388 	.area GSINIT  (CODE)
                                    389 	.area GSFINAL (CODE)
                                    390 	.area CSEG    (CODE)
                                    391 ;--------------------------------------------------------
                                    392 ; interrupt vector 
                                    393 ;--------------------------------------------------------
                                    394 	.area HOME    (CODE)
      002000                        395 __interrupt_vect:
      002000 02 20 19         [24]  396 	ljmp	__sdcc_gsinit_startup
      002003 02 20 B5         [24]  397 	ljmp	_int0
      002006                        398 	.ds	5
      00200B 32               [24]  399 	reti
      00200C                        400 	.ds	7
      002013 02 20 C1         [24]  401 	ljmp	_int1
                                    402 ;--------------------------------------------------------
                                    403 ; global & static initialisations
                                    404 ;--------------------------------------------------------
                                    405 	.area HOME    (CODE)
                                    406 	.area GSINIT  (CODE)
                                    407 	.area GSFINAL (CODE)
                                    408 	.area GSINIT  (CODE)
                                    409 	.globl __sdcc_gsinit_startup
                                    410 	.globl __sdcc_program_startup
                                    411 	.globl __start__stack
                                    412 	.globl __mcs51_genXINIT
                                    413 	.globl __mcs51_genXRAMCLEAR
                                    414 	.globl __mcs51_genRAMCLEAR
                                    415 	.area GSFINAL (CODE)
      0020B2 02 20 16         [24]  416 	ljmp	__sdcc_program_startup
                                    417 ;--------------------------------------------------------
                                    418 ; Home
                                    419 ;--------------------------------------------------------
                                    420 	.area HOME    (CODE)
                                    421 	.area HOME    (CODE)
      002016                        422 __sdcc_program_startup:
      002016 02 21 D3         [24]  423 	ljmp	_main
                                    424 ;	return from main will return to caller
                                    425 ;--------------------------------------------------------
                                    426 ; code
                                    427 ;--------------------------------------------------------
                                    428 	.area CSEG    (CODE)
                                    429 ;------------------------------------------------------------
                                    430 ;Allocation info for local variables in function 'int0'
                                    431 ;------------------------------------------------------------
                                    432 ;	life.c:13: void int0(void) __interrupt IE0_VECTOR __using 1 {
                                    433 ;	-----------------------------------------
                                    434 ;	 function int0
                                    435 ;	-----------------------------------------
      0020B5                        436 _int0:
                           00000F   437 	ar7 = 0x0f
                           00000E   438 	ar6 = 0x0e
                           00000D   439 	ar5 = 0x0d
                           00000C   440 	ar4 = 0x0c
                           00000B   441 	ar3 = 0x0b
                           00000A   442 	ar2 = 0x0a
                           000009   443 	ar1 = 0x09
                           000008   444 	ar0 = 0x08
      0020B5 C0 D0            [24]  445 	push	psw
      0020B7 75 D0 08         [24]  446 	mov	psw,#0x08
                                    447 ;	life.c:14: i0 = 1;
      0020BA 78 21            [12]  448 	mov	r0,#_i0
      0020BC 76 01            [12]  449 	mov	@r0,#0x01
                                    450 ;	life.c:15: }
      0020BE D0 D0            [24]  451 	pop	psw
      0020C0 32               [24]  452 	reti
                                    453 ;	eliminated unneeded push/pop dpl
                                    454 ;	eliminated unneeded push/pop dph
                                    455 ;	eliminated unneeded push/pop b
                                    456 ;	eliminated unneeded push/pop acc
                                    457 ;------------------------------------------------------------
                                    458 ;Allocation info for local variables in function 'int1'
                                    459 ;------------------------------------------------------------
                                    460 ;	life.c:17: void int1(void) __interrupt IE1_VECTOR __using 1 {
                                    461 ;	-----------------------------------------
                                    462 ;	 function int1
                                    463 ;	-----------------------------------------
      0020C1                        464 _int1:
      0020C1 C0 D0            [24]  465 	push	psw
      0020C3 75 D0 08         [24]  466 	mov	psw,#0x08
                                    467 ;	life.c:18: i1 = 1;
      0020C6 78 22            [12]  468 	mov	r0,#_i1
      0020C8 76 01            [12]  469 	mov	@r0,#0x01
                                    470 ;	life.c:19: }
      0020CA D0 D0            [24]  471 	pop	psw
      0020CC 32               [24]  472 	reti
                                    473 ;	eliminated unneeded push/pop dpl
                                    474 ;	eliminated unneeded push/pop dph
                                    475 ;	eliminated unneeded push/pop b
                                    476 ;	eliminated unneeded push/pop acc
                                    477 ;------------------------------------------------------------
                                    478 ;Allocation info for local variables in function 'flashOE'
                                    479 ;------------------------------------------------------------
                                    480 ;	life.c:29: static void flashOE(void) {
                                    481 ;	-----------------------------------------
                                    482 ;	 function flashOE
                                    483 ;	-----------------------------------------
      0020CD                        484 _flashOE:
                           000007   485 	ar7 = 0x07
                           000006   486 	ar6 = 0x06
                           000005   487 	ar5 = 0x05
                           000004   488 	ar4 = 0x04
                           000003   489 	ar3 = 0x03
                           000002   490 	ar2 = 0x02
                           000001   491 	ar1 = 0x01
                           000000   492 	ar0 = 0x00
                                    493 ;	life.c:30: P1_7 = 0;
                                    494 ;	assignBit
      0020CD C2 97            [12]  495 	clr	_P1_7
                                    496 ;	life.c:35: __endasm;
      0020CF 00               [12]  497 	nop
      0020D0 00               [12]  498 	nop
      0020D1 00               [12]  499 	nop
                                    500 ;	life.c:36: OEreg = OE76;
      0020D2 78 23            [12]  501 	mov	r0,#_OE76
      0020D4 90 F0 06         [24]  502 	mov	dptr,#_OEreg
      0020D7 E6               [12]  503 	mov	a,@r0
      0020D8 F0               [24]  504 	movx	@dptr,a
                                    505 ;	life.c:37: P1_7 = 1;
                                    506 ;	assignBit
      0020D9 D2 97            [12]  507 	setb	_P1_7
                                    508 ;	life.c:42: __endasm;
      0020DB 00               [12]  509 	nop
      0020DC 00               [12]  510 	nop
      0020DD 00               [12]  511 	nop
                                    512 ;	life.c:44: return;
                                    513 ;	life.c:45: }
      0020DE 22               [24]  514 	ret
                                    515 ;------------------------------------------------------------
                                    516 ;Allocation info for local variables in function 'show'
                                    517 ;------------------------------------------------------------
                                    518 ;hdr                       Allocated to registers r7 
                                    519 ;------------------------------------------------------------
                                    520 ;	life.c:81: void show(char hdr) {
                                    521 ;	-----------------------------------------
                                    522 ;	 function show
                                    523 ;	-----------------------------------------
      0020DF                        524 _show:
      0020DF AF 82            [24]  525 	mov	r7,dpl
                                    526 ;	life.c:82: printstr("\033[?25l");
      0020E1 90 30 29         [24]  527 	mov	dptr,#___str_0
      0020E4 75 F0 80         [24]  528 	mov	b,#0x80
      0020E7 C0 07            [24]  529 	push	ar7
      0020E9 12 2A 9B         [24]  530 	lcall	_printstr
      0020EC D0 07            [24]  531 	pop	ar7
                                    532 ;	life.c:84: if (hdr) {
      0020EE EF               [12]  533 	mov	a,r7
      0020EF 60 58            [24]  534 	jz	00102$
                                    535 ;	life.c:85: printstr("\033[2JGEN ");
      0020F1 90 30 30         [24]  536 	mov	dptr,#___str_1
      0020F4 75 F0 80         [24]  537 	mov	b,#0x80
      0020F7 12 2A 9B         [24]  538 	lcall	_printstr
                                    539 ;	life.c:75: print16x(generation[1]);
      0020FA 78 35            [12]  540 	mov	r0,#(_generation + 0x0002)
      0020FC 86 06            [24]  541 	mov	ar6,@r0
      0020FE 08               [12]  542 	inc	r0
      0020FF 86 07            [24]  543 	mov	ar7,@r0
      002101 8E 82            [24]  544 	mov	dpl,r6
      002103 8F 83            [24]  545 	mov	dph,r7
      002105 12 2B B3         [24]  546 	lcall	_print16x
                                    547 ;	life.c:76: print16x(generation[0]);
      002108 78 33            [12]  548 	mov	r0,#_generation
      00210A 86 06            [24]  549 	mov	ar6,@r0
      00210C 08               [12]  550 	inc	r0
      00210D 86 07            [24]  551 	mov	ar7,@r0
      00210F 8E 82            [24]  552 	mov	dpl,r6
      002111 8F 83            [24]  553 	mov	dph,r7
      002113 12 2B B3         [24]  554 	lcall	_print16x
                                    555 ;	life.c:87: printstr("\r\n");
      002116 90 30 39         [24]  556 	mov	dptr,#___str_2
      002119 75 F0 80         [24]  557 	mov	b,#0x80
      00211C 12 2A 9B         [24]  558 	lcall	_printstr
                                    559 ;	life.c:68: generation[0]++;
      00211F 78 33            [12]  560 	mov	r0,#_generation
      002121 86 06            [24]  561 	mov	ar6,@r0
      002123 08               [12]  562 	inc	r0
      002124 86 07            [24]  563 	mov	ar7,@r0
      002126 0E               [12]  564 	inc	r6
      002127 BE 00 01         [24]  565 	cjne	r6,#0x00,00147$
      00212A 0F               [12]  566 	inc	r7
      00212B                        567 00147$:
      00212B 78 33            [12]  568 	mov	r0,#_generation
      00212D A6 06            [24]  569 	mov	@r0,ar6
      00212F 08               [12]  570 	inc	r0
      002130 A6 07            [24]  571 	mov	@r0,ar7
                                    572 ;	life.c:69: if (!generation[0]) generation[1]++;
      002132 EE               [12]  573 	mov	a,r6
      002133 4F               [12]  574 	orl	a,r7
      002134 70 13            [24]  575 	jnz	00102$
      002136 78 35            [12]  576 	mov	r0,#(_generation + 0x0002)
      002138 86 06            [24]  577 	mov	ar6,@r0
      00213A 08               [12]  578 	inc	r0
      00213B 86 07            [24]  579 	mov	ar7,@r0
      00213D 0E               [12]  580 	inc	r6
      00213E BE 00 01         [24]  581 	cjne	r6,#0x00,00149$
      002141 0F               [12]  582 	inc	r7
      002142                        583 00149$:
      002142 78 35            [12]  584 	mov	r0,#(_generation + 0x0002)
      002144 A6 06            [24]  585 	mov	@r0,ar6
      002146 08               [12]  586 	inc	r0
      002147 A6 07            [24]  587 	mov	@r0,ar7
                                    588 ;	life.c:88: updategen();
      002149                        589 00102$:
                                    590 ;	life.c:91: for (x = 0; x < W; x++) {
      002149 78 24            [12]  591 	mov	r0,#_x
      00214B E4               [12]  592 	clr	a
      00214C F6               [12]  593 	mov	@r0,a
      00214D 08               [12]  594 	inc	r0
      00214E F6               [12]  595 	mov	@r0,a
      00214F                        596 00114$:
                                    597 ;	life.c:92: for (y = 0; y < H; y++)
      00214F 78 26            [12]  598 	mov	r0,#_y
      002151 E4               [12]  599 	clr	a
      002152 F6               [12]  600 	mov	@r0,a
      002153 08               [12]  601 	inc	r0
      002154 F6               [12]  602 	mov	@r0,a
      002155                        603 00112$:
                                    604 ;	life.c:93: if (u[A2D(W, y, x)]) putchar('1');
      002155 78 26            [12]  605 	mov	r0,#_y
      002157 E6               [12]  606 	mov	a,@r0
      002158 C0 E0            [24]  607 	push	acc
      00215A 08               [12]  608 	inc	r0
      00215B E6               [12]  609 	mov	a,@r0
      00215C C0 E0            [24]  610 	push	acc
      00215E 90 00 30         [24]  611 	mov	dptr,#0x0030
      002161 12 2D 3F         [24]  612 	lcall	__mulint
      002164 AE 82            [24]  613 	mov	r6,dpl
      002166 AF 83            [24]  614 	mov	r7,dph
      002168 15 81            [12]  615 	dec	sp
      00216A 15 81            [12]  616 	dec	sp
      00216C 78 24            [12]  617 	mov	r0,#_x
      00216E E6               [12]  618 	mov	a,@r0
      00216F 2E               [12]  619 	add	a,r6
      002170 FE               [12]  620 	mov	r6,a
      002171 08               [12]  621 	inc	r0
      002172 E6               [12]  622 	mov	a,@r0
      002173 3F               [12]  623 	addc	a,r7
      002174 FF               [12]  624 	mov	r7,a
      002175 EE               [12]  625 	mov	a,r6
      002176 24 00            [12]  626 	add	a,#_u
      002178 FE               [12]  627 	mov	r6,a
      002179 EF               [12]  628 	mov	a,r7
      00217A 34 88            [12]  629 	addc	a,#(_u >> 8)
      00217C FF               [12]  630 	mov	r7,a
      00217D 8E 82            [24]  631 	mov	dpl,r6
      00217F 8F 83            [24]  632 	mov	dph,r7
      002181 E0               [24]  633 	movx	a,@dptr
      002182 60 08            [24]  634 	jz	00104$
      002184 90 00 31         [24]  635 	mov	dptr,#0x0031
      002187 12 2A 6A         [24]  636 	lcall	_putchar
      00218A 80 06            [24]  637 	sjmp	00113$
      00218C                        638 00104$:
                                    639 ;	life.c:94: else putchar('0');
      00218C 90 00 30         [24]  640 	mov	dptr,#0x0030
      00218F 12 2A 6A         [24]  641 	lcall	_putchar
      002192                        642 00113$:
                                    643 ;	life.c:92: for (y = 0; y < H; y++)
      002192 78 26            [12]  644 	mov	r0,#_y
      002194 06               [12]  645 	inc	@r0
      002195 B6 00 02         [24]  646 	cjne	@r0,#0x00,00151$
      002198 08               [12]  647 	inc	r0
      002199 06               [12]  648 	inc	@r0
      00219A                        649 00151$:
      00219A 78 26            [12]  650 	mov	r0,#_y
      00219C C3               [12]  651 	clr	c
      00219D E6               [12]  652 	mov	a,@r0
      00219E 94 C0            [12]  653 	subb	a,#0xc0
      0021A0 08               [12]  654 	inc	r0
      0021A1 E6               [12]  655 	mov	a,@r0
      0021A2 64 80            [12]  656 	xrl	a,#0x80
      0021A4 94 80            [12]  657 	subb	a,#0x80
      0021A6 40 AD            [24]  658 	jc	00112$
                                    659 ;	life.c:95: printstr("\r\n");
      0021A8 90 30 39         [24]  660 	mov	dptr,#___str_2
      0021AB 75 F0 80         [24]  661 	mov	b,#0x80
      0021AE 12 2A 9B         [24]  662 	lcall	_printstr
                                    663 ;	life.c:91: for (x = 0; x < W; x++) {
      0021B1 78 24            [12]  664 	mov	r0,#_x
      0021B3 06               [12]  665 	inc	@r0
      0021B4 B6 00 02         [24]  666 	cjne	@r0,#0x00,00153$
      0021B7 08               [12]  667 	inc	r0
      0021B8 06               [12]  668 	inc	@r0
      0021B9                        669 00153$:
      0021B9 78 24            [12]  670 	mov	r0,#_x
      0021BB C3               [12]  671 	clr	c
      0021BC E6               [12]  672 	mov	a,@r0
      0021BD 94 30            [12]  673 	subb	a,#0x30
      0021BF 08               [12]  674 	inc	r0
      0021C0 E6               [12]  675 	mov	a,@r0
      0021C1 64 80            [12]  676 	xrl	a,#0x80
      0021C3 94 80            [12]  677 	subb	a,#0x80
      0021C5 50 03            [24]  678 	jnc	00154$
      0021C7 02 21 4F         [24]  679 	ljmp	00114$
      0021CA                        680 00154$:
                                    681 ;	life.c:98: printstr("\033[?25h");
      0021CA 90 30 3C         [24]  682 	mov	dptr,#___str_3
      0021CD 75 F0 80         [24]  683 	mov	b,#0x80
                                    684 ;	life.c:100: return;
                                    685 ;	life.c:101: }
      0021D0 02 2A 9B         [24]  686 	ljmp	_printstr
                                    687 ;------------------------------------------------------------
                                    688 ;Allocation info for local variables in function 'main'
                                    689 ;------------------------------------------------------------
                                    690 ;sloc0                     Allocated to stack - _bp +1
                                    691 ;sloc1                     Allocated to stack - _bp +2
                                    692 ;sloc2                     Allocated to stack - _bp +4
                                    693 ;sloc3                     Allocated to stack - _bp +6
                                    694 ;sloc4                     Allocated to stack - _bp +8
                                    695 ;sloc5                     Allocated to stack - _bp +10
                                    696 ;sloc6                     Allocated to stack - _bp +12
                                    697 ;------------------------------------------------------------
                                    698 ;	life.c:209: void main(void) {
                                    699 ;	-----------------------------------------
                                    700 ;	 function main
                                    701 ;	-----------------------------------------
      0021D3                        702 _main:
      0021D3 C0 10            [24]  703 	push	_bp
      0021D5 E5 81            [12]  704 	mov	a,sp
      0021D7 F5 10            [12]  705 	mov	_bp,a
      0021D9 24 0D            [12]  706 	add	a,#0x0d
      0021DB F5 81            [12]  707 	mov	sp,a
                                    708 ;	life.c:210: IT0 = 1;
                                    709 ;	assignBit
      0021DD D2 88            [12]  710 	setb	_IT0
                                    711 ;	life.c:211: IT1 = 1;
                                    712 ;	assignBit
      0021DF D2 8A            [12]  713 	setb	_IT1
                                    714 ;	life.c:212: EX0 = 1;
                                    715 ;	assignBit
      0021E1 D2 A8            [12]  716 	setb	_EX0
                                    717 ;	life.c:213: EX1 = 1;
                                    718 ;	assignBit
      0021E3 D2 AA            [12]  719 	setb	_EX1
                                    720 ;	life.c:214: EA = 1;	
                                    721 ;	assignBit
      0021E5 D2 AF            [12]  722 	setb	_EA
                                    723 ;	life.c:215: P1_7 = 1;
                                    724 ;	assignBit
      0021E7 D2 97            [12]  725 	setb	_P1_7
                                    726 ;	life.c:220: __endasm;
      0021E9 00               [12]  727 	nop
      0021EA 00               [12]  728 	nop
      0021EB 00               [12]  729 	nop
                                    730 ;	life.c:222: srand(RND);
      0021EC 90 80 00         [24]  731 	mov	dptr,#_RND
      0021EF E0               [24]  732 	movx	a,@dptr
      0021F0 FE               [12]  733 	mov	r6,a
      0021F1 A3               [24]  734 	inc	dptr
      0021F2 E0               [24]  735 	movx	a,@dptr
      0021F3 FF               [12]  736 	mov	r7,a
      0021F4 8E 82            [24]  737 	mov	dpl,r6
      0021F6 8F 83            [24]  738 	mov	dph,r7
      0021F8 12 2A 51         [24]  739 	lcall	_srand
                                    740 ;	life.c:224: OE76 = OE76_0;
      0021FB 78 23            [12]  741 	mov	r0,#_OE76
      0021FD 76 3F            [12]  742 	mov	@r0,#0x3f
                                    743 ;	life.c:225: flashOE();
      0021FF 12 20 CD         [24]  744 	lcall	_flashOE
                                    745 ;	life.c:227: printstr("\033[?25h\033[m");
      002202 90 30 5D         [24]  746 	mov	dptr,#___str_7
      002205 75 F0 80         [24]  747 	mov	b,#0x80
      002208 12 2A 9B         [24]  748 	lcall	_printstr
                                    749 ;	life.c:229: for (i0 = 0; !i0; ) {	
      00220B 78 21            [12]  750 	mov	r0,#_i0
      00220D 76 00            [12]  751 	mov	@r0,#0x00
      00220F                        752 00227$:
                                    753 ;	life.c:230: printstr("LIFE INIT T L R P\r\n");
      00220F 90 30 67         [24]  754 	mov	dptr,#___str_8
      002212 75 F0 80         [24]  755 	mov	b,#0x80
      002215 12 2A 9B         [24]  756 	lcall	_printstr
                                    757 ;	life.c:231: while (1) {
      002218                        758 00110$:
                                    759 ;	life.c:232: c = toupper(getchar());
      002218 12 2A 74         [24]  760 	lcall	_getchar
      00221B 12 2E DA         [24]  761 	lcall	_toupper
      00221E AE 82            [24]  762 	mov	r6,dpl
      002220 AF 83            [24]  763 	mov	r7,dph
      002222 78 2A            [12]  764 	mov	r0,#_c
      002224 A6 06            [24]  765 	mov	@r0,ar6
      002226 08               [12]  766 	inc	r0
      002227 A6 07            [24]  767 	mov	@r0,ar7
                                    768 ;	life.c:233: if (i0 || (c == (int)'T')) goto term;
      002229 78 21            [12]  769 	mov	r0,#_i0
      00222B E6               [12]  770 	mov	a,@r0
      00222C 60 03            [24]  771 	jz	00405$
      00222E 02 29 76         [24]  772 	ljmp	00149$
      002231                        773 00405$:
      002231 BE 54 06         [24]  774 	cjne	r6,#0x54,00406$
      002234 BF 00 03         [24]  775 	cjne	r7,#0x00,00406$
      002237 02 29 76         [24]  776 	ljmp	00149$
      00223A                        777 00406$:
                                    778 ;	life.c:234: else if ((c == (int)'L') || (c == (int)'R') || (c == (int)'P')) break;
      00223A BE 4C 05         [24]  779 	cjne	r6,#0x4c,00407$
      00223D BF 00 02         [24]  780 	cjne	r7,#0x00,00407$
      002240 80 0E            [24]  781 	sjmp	00257$
      002242                        782 00407$:
      002242 BE 52 05         [24]  783 	cjne	r6,#0x52,00408$
      002245 BF 00 02         [24]  784 	cjne	r7,#0x00,00408$
      002248 80 06            [24]  785 	sjmp	00257$
      00224A                        786 00408$:
      00224A BE 50 CB         [24]  787 	cjne	r6,#0x50,00110$
      00224D BF 00 C8         [24]  788 	cjne	r7,#0x00,00110$
                                    789 ;	life.c:237: reload:
      002250                        790 00257$:
      002250                        791 00112$:
                                    792 ;	life.c:104: memset(u, 0, sizeof (u));
      002250 E4               [12]  793 	clr	a
      002251 C0 E0            [24]  794 	push	acc
      002253 74 24            [12]  795 	mov	a,#0x24
      002255 C0 E0            [24]  796 	push	acc
      002257 E4               [12]  797 	clr	a
      002258 C0 E0            [24]  798 	push	acc
      00225A 90 88 00         [24]  799 	mov	dptr,#_u
      00225D 75 F0 00         [24]  800 	mov	b,#0x00
      002260 12 2E 70         [24]  801 	lcall	_memset
      002263 15 81            [12]  802 	dec	sp
      002265 15 81            [12]  803 	dec	sp
      002267 15 81            [12]  804 	dec	sp
                                    805 ;	life.c:105: memset(pu, 0, sizeof (pu));
      002269 E4               [12]  806 	clr	a
      00226A C0 E0            [24]  807 	push	acc
      00226C 74 24            [12]  808 	mov	a,#0x24
      00226E C0 E0            [24]  809 	push	acc
      002270 E4               [12]  810 	clr	a
      002271 C0 E0            [24]  811 	push	acc
      002273 90 64 00         [24]  812 	mov	dptr,#_pu
      002276 75 F0 00         [24]  813 	mov	b,#0x00
      002279 12 2E 70         [24]  814 	lcall	_memset
      00227C 15 81            [12]  815 	dec	sp
      00227E 15 81            [12]  816 	dec	sp
      002280 15 81            [12]  817 	dec	sp
                                    818 ;	life.c:239: if (c == (int)'L') loadiu();
      002282 78 2A            [12]  819 	mov	r0,#_c
      002284 B6 4C 06         [24]  820 	cjne	@r0,#0x4c,00411$
      002287 08               [12]  821 	inc	r0
      002288 B6 00 02         [24]  822 	cjne	@r0,#0x00,00411$
      00228B 80 03            [24]  823 	sjmp	00412$
      00228D                        824 00411$:
      00228D 02 23 7D         [24]  825 	ljmp	00116$
      002290                        826 00412$:
                                    827 ;	life.c:111: j = 0;
      002290 78 28            [12]  828 	mov	r0,#_j
      002292 E4               [12]  829 	clr	a
      002293 F6               [12]  830 	mov	@r0,a
      002294 08               [12]  831 	inc	r0
      002295 F6               [12]  832 	mov	@r0,a
                                    833 ;	life.c:113: printstr("LOAD 0 1 ~ # <");
      002296 90 30 43         [24]  834 	mov	dptr,#___str_4
      002299 75 F0 80         [24]  835 	mov	b,#0x80
      00229C 12 2A 9B         [24]  836 	lcall	_printstr
                                    837 ;	life.c:115: for (y = 0; y < (H * W); y += W) {
      00229F 78 26            [12]  838 	mov	r0,#_y
      0022A1 E4               [12]  839 	clr	a
      0022A2 F6               [12]  840 	mov	@r0,a
      0022A3 08               [12]  841 	inc	r0
      0022A4 F6               [12]  842 	mov	@r0,a
      0022A5                        843 00213$:
                                    844 ;	life.c:116: for (x = 0; x < W; x++) {
      0022A5 78 24            [12]  845 	mov	r0,#_x
      0022A7 E4               [12]  846 	clr	a
      0022A8 F6               [12]  847 	mov	@r0,a
      0022A9 08               [12]  848 	inc	r0
      0022AA F6               [12]  849 	mov	@r0,a
                                    850 ;	life.c:117: while (1) {
      0022AB                        851 00163$:
                                    852 ;	life.c:118: c = getchar();
      0022AB 12 2A 74         [24]  853 	lcall	_getchar
      0022AE AE 82            [24]  854 	mov	r6,dpl
      0022B0 AF 83            [24]  855 	mov	r7,dph
      0022B2 78 2A            [12]  856 	mov	r0,#_c
      0022B4 A6 06            [24]  857 	mov	@r0,ar6
      0022B6 08               [12]  858 	inc	r0
      0022B7 A6 07            [24]  859 	mov	@r0,ar7
                                    860 ;	life.c:119: if (c == (int)'0') {
      0022B9 BE 30 25         [24]  861 	cjne	r6,#0x30,00161$
      0022BC BF 00 22         [24]  862 	cjne	r7,#0x00,00161$
                                    863 ;	life.c:120: iu[y + x] = 0;
      0022BF 78 26            [12]  864 	mov	r0,#_y
      0022C1 79 24            [12]  865 	mov	r1,#_x
      0022C3 E7               [12]  866 	mov	a,@r1
      0022C4 26               [12]  867 	add	a,@r0
      0022C5 FC               [12]  868 	mov	r4,a
      0022C6 09               [12]  869 	inc	r1
      0022C7 E7               [12]  870 	mov	a,@r1
      0022C8 08               [12]  871 	inc	r0
      0022C9 36               [12]  872 	addc	a,@r0
      0022CA FD               [12]  873 	mov	r5,a
      0022CB EC               [12]  874 	mov	a,r4
      0022CC 24 00            [12]  875 	add	a,#_iu
      0022CE F5 82            [12]  876 	mov	dpl,a
      0022D0 ED               [12]  877 	mov	a,r5
      0022D1 34 40            [12]  878 	addc	a,#(_iu >> 8)
      0022D3 F5 83            [12]  879 	mov	dph,a
      0022D5 E4               [12]  880 	clr	a
      0022D6 F0               [24]  881 	movx	@dptr,a
                                    882 ;	life.c:121: j++;
      0022D7 78 28            [12]  883 	mov	r0,#_j
      0022D9 06               [12]  884 	inc	@r0
      0022DA B6 00 02         [24]  885 	cjne	@r0,#0x00,00415$
      0022DD 08               [12]  886 	inc	r0
      0022DE 06               [12]  887 	inc	@r0
      0022DF                        888 00415$:
                                    889 ;	life.c:122: break;
      0022DF 80 39            [24]  890 	sjmp	00166$
      0022E1                        891 00161$:
                                    892 ;	life.c:123: } else if (c == (int)'1') {
      0022E1 BE 31 26         [24]  893 	cjne	r6,#0x31,00159$
      0022E4 BF 00 23         [24]  894 	cjne	r7,#0x00,00159$
                                    895 ;	life.c:124: iu[y + x] = 1;
      0022E7 78 26            [12]  896 	mov	r0,#_y
      0022E9 79 24            [12]  897 	mov	r1,#_x
      0022EB E7               [12]  898 	mov	a,@r1
      0022EC 26               [12]  899 	add	a,@r0
      0022ED FC               [12]  900 	mov	r4,a
      0022EE 09               [12]  901 	inc	r1
      0022EF E7               [12]  902 	mov	a,@r1
      0022F0 08               [12]  903 	inc	r0
      0022F1 36               [12]  904 	addc	a,@r0
      0022F2 FD               [12]  905 	mov	r5,a
      0022F3 EC               [12]  906 	mov	a,r4
      0022F4 24 00            [12]  907 	add	a,#_iu
      0022F6 F5 82            [12]  908 	mov	dpl,a
      0022F8 ED               [12]  909 	mov	a,r5
      0022F9 34 40            [12]  910 	addc	a,#(_iu >> 8)
      0022FB F5 83            [12]  911 	mov	dph,a
      0022FD 74 01            [12]  912 	mov	a,#0x01
      0022FF F0               [24]  913 	movx	@dptr,a
                                    914 ;	life.c:125: j++;
      002300 78 28            [12]  915 	mov	r0,#_j
      002302 06               [12]  916 	inc	@r0
      002303 B6 00 02         [24]  917 	cjne	@r0,#0x00,00418$
      002306 08               [12]  918 	inc	r0
      002307 06               [12]  919 	inc	@r0
      002308                        920 00418$:
                                    921 ;	life.c:126: break;
      002308 80 10            [24]  922 	sjmp	00166$
      00230A                        923 00159$:
                                    924 ;	life.c:127: } else if (c == (int)'~') goto br_inner;
      00230A BE 7E 05         [24]  925 	cjne	r6,#0x7e,00419$
      00230D BF 00 02         [24]  926 	cjne	r7,#0x00,00419$
      002310 80 21            [24]  927 	sjmp	00214$
      002312                        928 00419$:
                                    929 ;	life.c:128: else if (c == (int)'#') goto out;
                                    930 ;	life.c:132: break;
      002312 BE 23 96         [24]  931 	cjne	r6,#0x23,00163$
      002315 BF 00 93         [24]  932 	cjne	r7,#0x00,00163$
      002318 80 31            [24]  933 	sjmp	00176$
      00231A                        934 00166$:
                                    935 ;	life.c:116: for (x = 0; x < W; x++) {
      00231A 78 24            [12]  936 	mov	r0,#_x
      00231C 06               [12]  937 	inc	@r0
      00231D B6 00 02         [24]  938 	cjne	@r0,#0x00,00421$
      002320 08               [12]  939 	inc	r0
      002321 06               [12]  940 	inc	@r0
      002322                        941 00421$:
      002322 78 24            [12]  942 	mov	r0,#_x
      002324 C3               [12]  943 	clr	c
      002325 E6               [12]  944 	mov	a,@r0
      002326 94 30            [12]  945 	subb	a,#0x30
      002328 08               [12]  946 	inc	r0
      002329 E6               [12]  947 	mov	a,@r0
      00232A 64 80            [12]  948 	xrl	a,#0x80
      00232C 94 80            [12]  949 	subb	a,#0x80
      00232E 50 03            [24]  950 	jnc	00422$
      002330 02 22 AB         [24]  951 	ljmp	00163$
      002333                        952 00422$:
      002333                        953 00214$:
                                    954 ;	life.c:115: for (y = 0; y < (H * W); y += W) {
      002333 78 26            [12]  955 	mov	r0,#_y
      002335 74 30            [12]  956 	mov	a,#0x30
      002337 26               [12]  957 	add	a,@r0
      002338 F6               [12]  958 	mov	@r0,a
      002339 E4               [12]  959 	clr	a
      00233A 08               [12]  960 	inc	r0
      00233B 36               [12]  961 	addc	a,@r0
      00233C F6               [12]  962 	mov	@r0,a
      00233D 78 26            [12]  963 	mov	r0,#_y
      00233F C3               [12]  964 	clr	c
      002340 08               [12]  965 	inc	r0
      002341 E6               [12]  966 	mov	a,@r0
      002342 64 80            [12]  967 	xrl	a,#0x80
      002344 94 A4            [12]  968 	subb	a,#0xa4
      002346 50 03            [24]  969 	jnc	00423$
      002348 02 22 A5         [24]  970 	ljmp	00213$
      00234B                        971 00423$:
                                    972 ;	life.c:136: out:
      00234B                        973 00176$:
                                    974 ;	life.c:137: if (c != (int)'#')
      00234B BE 23 05         [24]  975 	cjne	r6,#0x23,00424$
      00234E BF 00 02         [24]  976 	cjne	r7,#0x00,00424$
      002351 80 14            [24]  977 	sjmp	00175$
      002353                        978 00424$:
                                    979 ;	life.c:138: while (1) {
      002353                        980 00172$:
                                    981 ;	life.c:139: c = getchar();
      002353 12 2A 74         [24]  982 	lcall	_getchar
      002356 AE 82            [24]  983 	mov	r6,dpl
      002358 AF 83            [24]  984 	mov	r7,dph
      00235A 78 2A            [12]  985 	mov	r0,#_c
      00235C A6 06            [24]  986 	mov	@r0,ar6
      00235E 08               [12]  987 	inc	r0
      00235F A6 07            [24]  988 	mov	@r0,ar7
                                    989 ;	life.c:140: if (c == (int)'#') break;
      002361 BE 23 EF         [24]  990 	cjne	r6,#0x23,00172$
      002364 BF 00 EC         [24]  991 	cjne	r7,#0x00,00172$
      002367                        992 00175$:
                                    993 ;	life.c:142: print16x(j);
      002367 78 28            [12]  994 	mov	r0,#_j
      002369 86 82            [24]  995 	mov	dpl,@r0
      00236B 08               [12]  996 	inc	r0
      00236C 86 83            [24]  997 	mov	dph,@r0
      00236E 12 2B B3         [24]  998 	lcall	_print16x
                                    999 ;	life.c:143: printstr(">\r\n");
      002371 90 30 52         [24] 1000 	mov	dptr,#___str_5
      002374 75 F0 80         [24] 1001 	mov	b,#0x80
      002377 12 2A 9B         [24] 1002 	lcall	_printstr
                                   1003 ;	life.c:239: if (c == (int)'L') loadiu();
      00237A 02 24 03         [24] 1004 	ljmp	00117$
      00237D                       1005 00116$:
                                   1006 ;	life.c:240: else if (c == (int)'R') loadriu();
      00237D 78 2A            [12] 1007 	mov	r0,#_c
      00237F B6 52 06         [24] 1008 	cjne	@r0,#0x52,00427$
      002382 08               [12] 1009 	inc	r0
      002383 B6 00 02         [24] 1010 	cjne	@r0,#0x00,00427$
      002386 80 02            [24] 1011 	sjmp	00428$
      002388                       1012 00427$:
      002388 80 79            [24] 1013 	sjmp	00117$
      00238A                       1014 00428$:
                                   1015 ;	life.c:149: j = 0;
      00238A 78 28            [12] 1016 	mov	r0,#_j
      00238C E4               [12] 1017 	clr	a
      00238D F6               [12] 1018 	mov	@r0,a
      00238E 08               [12] 1019 	inc	r0
      00238F F6               [12] 1020 	mov	@r0,a
                                   1021 ;	life.c:151: printstr("RANDOM");
      002390 90 30 56         [24] 1022 	mov	dptr,#___str_6
      002393 75 F0 80         [24] 1023 	mov	b,#0x80
      002396 12 2A 9B         [24] 1024 	lcall	_printstr
                                   1025 ;	life.c:153: for (y = 0; y < (H * W); y += W)
      002399 78 26            [12] 1026 	mov	r0,#_y
      00239B E4               [12] 1027 	clr	a
      00239C F6               [12] 1028 	mov	@r0,a
      00239D 08               [12] 1029 	inc	r0
      00239E F6               [12] 1030 	mov	@r0,a
      00239F                       1031 00217$:
                                   1032 ;	life.c:154: for (x = 0; x < W; x++)
      00239F 78 24            [12] 1033 	mov	r0,#_x
      0023A1 E4               [12] 1034 	clr	a
      0023A2 F6               [12] 1035 	mov	@r0,a
      0023A3 08               [12] 1036 	inc	r0
      0023A4 F6               [12] 1037 	mov	@r0,a
      0023A5                       1038 00215$:
                                   1039 ;	life.c:155: iu[y + x] = rand() & 1;
      0023A5 78 26            [12] 1040 	mov	r0,#_y
      0023A7 79 24            [12] 1041 	mov	r1,#_x
      0023A9 E7               [12] 1042 	mov	a,@r1
      0023AA 26               [12] 1043 	add	a,@r0
      0023AB FE               [12] 1044 	mov	r6,a
      0023AC 09               [12] 1045 	inc	r1
      0023AD E7               [12] 1046 	mov	a,@r1
      0023AE 08               [12] 1047 	inc	r0
      0023AF 36               [12] 1048 	addc	a,@r0
      0023B0 FF               [12] 1049 	mov	r7,a
      0023B1 EE               [12] 1050 	mov	a,r6
      0023B2 24 00            [12] 1051 	add	a,#_iu
      0023B4 FE               [12] 1052 	mov	r6,a
      0023B5 EF               [12] 1053 	mov	a,r7
      0023B6 34 40            [12] 1054 	addc	a,#(_iu >> 8)
      0023B8 FF               [12] 1055 	mov	r7,a
      0023B9 C0 07            [24] 1056 	push	ar7
      0023BB C0 06            [24] 1057 	push	ar6
      0023BD 12 29 8D         [24] 1058 	lcall	_rand
      0023C0 AC 82            [24] 1059 	mov	r4,dpl
      0023C2 D0 06            [24] 1060 	pop	ar6
      0023C4 D0 07            [24] 1061 	pop	ar7
      0023C6 53 04 01         [24] 1062 	anl	ar4,#0x01
      0023C9 8E 82            [24] 1063 	mov	dpl,r6
      0023CB 8F 83            [24] 1064 	mov	dph,r7
      0023CD EC               [12] 1065 	mov	a,r4
      0023CE F0               [24] 1066 	movx	@dptr,a
                                   1067 ;	life.c:154: for (x = 0; x < W; x++)
      0023CF 78 24            [12] 1068 	mov	r0,#_x
      0023D1 06               [12] 1069 	inc	@r0
      0023D2 B6 00 02         [24] 1070 	cjne	@r0,#0x00,00429$
      0023D5 08               [12] 1071 	inc	r0
      0023D6 06               [12] 1072 	inc	@r0
      0023D7                       1073 00429$:
      0023D7 78 24            [12] 1074 	mov	r0,#_x
      0023D9 C3               [12] 1075 	clr	c
      0023DA E6               [12] 1076 	mov	a,@r0
      0023DB 94 30            [12] 1077 	subb	a,#0x30
      0023DD 08               [12] 1078 	inc	r0
      0023DE E6               [12] 1079 	mov	a,@r0
      0023DF 64 80            [12] 1080 	xrl	a,#0x80
      0023E1 94 80            [12] 1081 	subb	a,#0x80
      0023E3 40 C0            [24] 1082 	jc	00215$
                                   1083 ;	life.c:153: for (y = 0; y < (H * W); y += W)
      0023E5 78 26            [12] 1084 	mov	r0,#_y
      0023E7 74 30            [12] 1085 	mov	a,#0x30
      0023E9 26               [12] 1086 	add	a,@r0
      0023EA F6               [12] 1087 	mov	@r0,a
      0023EB E4               [12] 1088 	clr	a
      0023EC 08               [12] 1089 	inc	r0
      0023ED 36               [12] 1090 	addc	a,@r0
      0023EE F6               [12] 1091 	mov	@r0,a
      0023EF 78 26            [12] 1092 	mov	r0,#_y
      0023F1 C3               [12] 1093 	clr	c
      0023F2 08               [12] 1094 	inc	r0
      0023F3 E6               [12] 1095 	mov	a,@r0
      0023F4 64 80            [12] 1096 	xrl	a,#0x80
      0023F6 94 A4            [12] 1097 	subb	a,#0xa4
      0023F8 40 A5            [24] 1098 	jc	00217$
                                   1099 ;	life.c:157: printstr("\r\n");
      0023FA 90 30 39         [24] 1100 	mov	dptr,#___str_2
      0023FD 75 F0 80         [24] 1101 	mov	b,#0x80
      002400 12 2A 9B         [24] 1102 	lcall	_printstr
                                   1103 ;	life.c:240: else if (c == (int)'R') loadriu();
      002403                       1104 00117$:
                                   1105 ;	life.c:241: memcpy(u, iu, sizeof (iu));
      002403 E4               [12] 1106 	clr	a
      002404 C0 E0            [24] 1107 	push	acc
      002406 74 24            [12] 1108 	mov	a,#0x24
      002408 C0 E0            [24] 1109 	push	acc
      00240A 74 00            [12] 1110 	mov	a,#_iu
      00240C C0 E0            [24] 1111 	push	acc
      00240E 74 40            [12] 1112 	mov	a,#(_iu >> 8)
      002410 C0 E0            [24] 1113 	push	acc
      002412 E4               [12] 1114 	clr	a
      002413 C0 E0            [24] 1115 	push	acc
      002415 90 88 00         [24] 1116 	mov	dptr,#_u
      002418 75 F0 00         [24] 1117 	mov	b,#0x00
      00241B 12 2D DD         [24] 1118 	lcall	___memcpy
      00241E E5 81            [12] 1119 	mov	a,sp
      002420 24 FB            [12] 1120 	add	a,#0xfb
      002422 F5 81            [12] 1121 	mov	sp,a
                                   1122 ;	life.c:242: show(0);
      002424 75 82 00         [24] 1123 	mov	dpl,#0x00
      002427 12 20 DF         [24] 1124 	lcall	_show
                                   1125 ;	life.c:244: printstr("READY T L R P S\r\n");
      00242A 90 30 7B         [24] 1126 	mov	dptr,#___str_9
      00242D 75 F0 80         [24] 1127 	mov	b,#0x80
      002430 12 2A 9B         [24] 1128 	lcall	_printstr
                                   1129 ;	life.c:245: while (1) {
      002433                       1130 00130$:
                                   1131 ;	life.c:246: c = toupper(getchar());
      002433 12 2A 74         [24] 1132 	lcall	_getchar
      002436 12 2E DA         [24] 1133 	lcall	_toupper
      002439 AE 82            [24] 1134 	mov	r6,dpl
      00243B AF 83            [24] 1135 	mov	r7,dph
      00243D 78 2A            [12] 1136 	mov	r0,#_c
      00243F A6 06            [24] 1137 	mov	@r0,ar6
      002441 08               [12] 1138 	inc	r0
      002442 A6 07            [24] 1139 	mov	@r0,ar7
                                   1140 ;	life.c:247: if (i0 || (c == (int)'T')) goto term;
      002444 78 21            [12] 1141 	mov	r0,#_i0
      002446 E6               [12] 1142 	mov	a,@r0
      002447 60 03            [24] 1143 	jz	00432$
      002449 02 29 76         [24] 1144 	ljmp	00149$
      00244C                       1145 00432$:
      00244C BE 54 06         [24] 1146 	cjne	r6,#0x54,00433$
      00244F BF 00 03         [24] 1147 	cjne	r7,#0x00,00433$
      002452 02 29 76         [24] 1148 	ljmp	00149$
      002455                       1149 00433$:
                                   1150 ;	life.c:248: else if ((c == (int)'L') || (c == (int)'R') || (c == (int)'P')) goto reload;
      002455 BE 4C 06         [24] 1151 	cjne	r6,#0x4c,00434$
      002458 BF 00 03         [24] 1152 	cjne	r7,#0x00,00434$
      00245B 02 22 50         [24] 1153 	ljmp	00112$
      00245E                       1154 00434$:
      00245E BE 52 06         [24] 1155 	cjne	r6,#0x52,00435$
      002461 BF 00 03         [24] 1156 	cjne	r7,#0x00,00435$
      002464 02 22 50         [24] 1157 	ljmp	00112$
      002467                       1158 00435$:
      002467 BE 50 06         [24] 1159 	cjne	r6,#0x50,00436$
      00246A BF 00 03         [24] 1160 	cjne	r7,#0x00,00436$
      00246D 02 22 50         [24] 1161 	ljmp	00112$
      002470                       1162 00436$:
                                   1163 ;	life.c:249: else if (c == (int)'S') break;
      002470 BE 53 C0         [24] 1164 	cjne	r6,#0x53,00130$
      002473 BF 00 BD         [24] 1165 	cjne	r7,#0x00,00130$
                                   1166 ;	life.c:61: generation[0] = 0u;
      002476 78 33            [12] 1167 	mov	r0,#_generation
      002478 76 00            [12] 1168 	mov	@r0,#0x00
      00247A 08               [12] 1169 	inc	r0
      00247B 76 00            [12] 1170 	mov	@r0,#0x00
                                   1171 ;	life.c:62: generation[1] = 0u;
      00247D 78 35            [12] 1172 	mov	r0,#(_generation + 0x0002)
      00247F 76 00            [12] 1173 	mov	@r0,#0x00
      002481 08               [12] 1174 	inc	r0
      002482 76 00            [12] 1175 	mov	@r0,#0x00
                                   1176 ;	life.c:254: for (i1 = 0; !i0 && !i1; ) {
      002484 78 22            [12] 1177 	mov	r0,#_i1
      002486 76 00            [12] 1178 	mov	@r0,#0x00
      002488                       1179 00225$:
      002488 78 21            [12] 1180 	mov	r0,#_i0
      00248A E6               [12] 1181 	mov	a,@r0
      00248B 60 03            [24] 1182 	jz	00439$
      00248D 02 29 5D         [24] 1183 	ljmp	00145$
      002490                       1184 00439$:
      002490 78 22            [12] 1185 	mov	r0,#_i1
      002492 E6               [12] 1186 	mov	a,@r0
      002493 60 03            [24] 1187 	jz	00440$
      002495 02 29 5D         [24] 1188 	ljmp	00145$
      002498                       1189 00440$:
                                   1190 ;	life.c:255: show(1);
      002498 75 82 01         [24] 1191 	mov	dpl,#0x01
      00249B 12 20 DF         [24] 1192 	lcall	_show
                                   1193 ;	life.c:163: fixed = 0;
      00249E 78 2D            [12] 1194 	mov	r0,#_fixed
      0024A0 76 00            [12] 1195 	mov	@r0,#0x00
                                   1196 ;	life.c:164: cycle2 = 0;
      0024A2 78 2E            [12] 1197 	mov	r0,#_cycle2
      0024A4 76 00            [12] 1198 	mov	@r0,#0x00
                                   1199 ;	life.c:166: OE76 = OE76_0;
      0024A6 78 23            [12] 1200 	mov	r0,#_OE76
      0024A8 76 3F            [12] 1201 	mov	@r0,#0x3f
                                   1202 ;	life.c:167: flashOE();
      0024AA 12 20 CD         [24] 1203 	lcall	_flashOE
                                   1204 ;	life.c:169: for (y = 0; y < H; y++) {
      0024AD 78 26            [12] 1205 	mov	r0,#_y
      0024AF E4               [12] 1206 	clr	a
      0024B0 F6               [12] 1207 	mov	@r0,a
      0024B1 08               [12] 1208 	inc	r0
      0024B2 F6               [12] 1209 	mov	@r0,a
      0024B3                       1210 00221$:
                                   1211 ;	life.c:170: OE76 = OE76_0 | ((y & 0x0003u) << 6);
      0024B3 78 26            [12] 1212 	mov	r0,#_y
      0024B5 86 07            [24] 1213 	mov	ar7,@r0
      0024B7 53 07 03         [24] 1214 	anl	ar7,#0x03
      0024BA EF               [12] 1215 	mov	a,r7
      0024BB 03               [12] 1216 	rr	a
      0024BC 03               [12] 1217 	rr	a
      0024BD 54 C0            [12] 1218 	anl	a,#0xc0
      0024BF FF               [12] 1219 	mov	r7,a
      0024C0 78 23            [12] 1220 	mov	r0,#_OE76
      0024C2 74 3F            [12] 1221 	mov	a,#0x3f
      0024C4 4F               [12] 1222 	orl	a,r7
      0024C5 F6               [12] 1223 	mov	@r0,a
                                   1224 ;	life.c:171: flashOE();
      0024C6 12 20 CD         [24] 1225 	lcall	_flashOE
                                   1226 ;	life.c:172: for (x = 0; x < W; x++) {
      0024C9 78 24            [12] 1227 	mov	r0,#_x
      0024CB E4               [12] 1228 	clr	a
      0024CC F6               [12] 1229 	mov	@r0,a
      0024CD 08               [12] 1230 	inc	r0
      0024CE F6               [12] 1231 	mov	@r0,a
      0024CF                       1232 00219$:
                                   1233 ;	life.c:173: n = -u[A2D(W, y, x)];
      0024CF 78 26            [12] 1234 	mov	r0,#_y
      0024D1 E6               [12] 1235 	mov	a,@r0
      0024D2 C0 E0            [24] 1236 	push	acc
      0024D4 08               [12] 1237 	inc	r0
      0024D5 E6               [12] 1238 	mov	a,@r0
      0024D6 C0 E0            [24] 1239 	push	acc
      0024D8 90 00 30         [24] 1240 	mov	dptr,#0x0030
      0024DB 12 2D 3F         [24] 1241 	lcall	__mulint
      0024DE C8               [12] 1242 	xch	a,r0
      0024DF E5 10            [12] 1243 	mov	a,_bp
      0024E1 24 04            [12] 1244 	add	a,#0x04
      0024E3 C8               [12] 1245 	xch	a,r0
      0024E4 A6 82            [24] 1246 	mov	@r0,dpl
      0024E6 08               [12] 1247 	inc	r0
      0024E7 A6 83            [24] 1248 	mov	@r0,dph
      0024E9 15 81            [12] 1249 	dec	sp
      0024EB 15 81            [12] 1250 	dec	sp
      0024ED E5 10            [12] 1251 	mov	a,_bp
      0024EF 24 04            [12] 1252 	add	a,#0x04
      0024F1 F8               [12] 1253 	mov	r0,a
      0024F2 79 24            [12] 1254 	mov	r1,#_x
      0024F4 E7               [12] 1255 	mov	a,@r1
      0024F5 26               [12] 1256 	add	a,@r0
      0024F6 C0 E0            [24] 1257 	push	acc
      0024F8 09               [12] 1258 	inc	r1
      0024F9 E7               [12] 1259 	mov	a,@r1
      0024FA 08               [12] 1260 	inc	r0
      0024FB 36               [12] 1261 	addc	a,@r0
      0024FC C0 E0            [24] 1262 	push	acc
      0024FE E5 10            [12] 1263 	mov	a,_bp
      002500 24 03            [12] 1264 	add	a,#0x03
      002502 F8               [12] 1265 	mov	r0,a
      002503 D0 E0            [24] 1266 	pop	acc
      002505 F6               [12] 1267 	mov	@r0,a
      002506 18               [12] 1268 	dec	r0
      002507 D0 E0            [24] 1269 	pop	acc
      002509 F6               [12] 1270 	mov	@r0,a
      00250A A8 10            [24] 1271 	mov	r0,_bp
      00250C 08               [12] 1272 	inc	r0
      00250D 08               [12] 1273 	inc	r0
      00250E E6               [12] 1274 	mov	a,@r0
      00250F 24 00            [12] 1275 	add	a,#_u
      002511 F5 82            [12] 1276 	mov	dpl,a
      002513 08               [12] 1277 	inc	r0
      002514 E6               [12] 1278 	mov	a,@r0
      002515 34 88            [12] 1279 	addc	a,#(_u >> 8)
      002517 F5 83            [12] 1280 	mov	dph,a
      002519 E0               [24] 1281 	movx	a,@dptr
      00251A FB               [12] 1282 	mov	r3,a
      00251B A8 10            [24] 1283 	mov	r0,_bp
      00251D 08               [12] 1284 	inc	r0
      00251E C3               [12] 1285 	clr	c
      00251F E4               [12] 1286 	clr	a
      002520 9B               [12] 1287 	subb	a,r3
      002521 F6               [12] 1288 	mov	@r0,a
                                   1289 ;	life.c:180: UPDN(-1, -1);
      002522 78 26            [12] 1290 	mov	r0,#_y
      002524 74 FF            [12] 1291 	mov	a,#0xff
      002526 26               [12] 1292 	add	a,@r0
      002527 FA               [12] 1293 	mov	r2,a
      002528 74 FF            [12] 1294 	mov	a,#0xff
      00252A 08               [12] 1295 	inc	r0
      00252B 36               [12] 1296 	addc	a,@r0
      00252C FB               [12] 1297 	mov	r3,a
      00252D 74 C0            [12] 1298 	mov	a,#0xc0
      00252F 2A               [12] 1299 	add	a,r2
      002530 FA               [12] 1300 	mov	r2,a
      002531 E4               [12] 1301 	clr	a
      002532 3B               [12] 1302 	addc	a,r3
      002533 FB               [12] 1303 	mov	r3,a
      002534 74 C0            [12] 1304 	mov	a,#0xc0
      002536 C0 E0            [24] 1305 	push	acc
      002538 E4               [12] 1306 	clr	a
      002539 C0 E0            [24] 1307 	push	acc
      00253B 8A 82            [24] 1308 	mov	dpl,r2
      00253D 8B 83            [24] 1309 	mov	dph,r3
      00253F 12 2F 1D         [24] 1310 	lcall	__modsint
      002542 AA 82            [24] 1311 	mov	r2,dpl
      002544 AB 83            [24] 1312 	mov	r3,dph
      002546 15 81            [12] 1313 	dec	sp
      002548 15 81            [12] 1314 	dec	sp
      00254A C0 02            [24] 1315 	push	ar2
      00254C C0 03            [24] 1316 	push	ar3
      00254E 90 00 30         [24] 1317 	mov	dptr,#0x0030
      002551 12 2D 3F         [24] 1318 	lcall	__mulint
      002554 AA 82            [24] 1319 	mov	r2,dpl
      002556 AB 83            [24] 1320 	mov	r3,dph
      002558 15 81            [12] 1321 	dec	sp
      00255A 15 81            [12] 1322 	dec	sp
      00255C 78 24            [12] 1323 	mov	r0,#_x
      00255E 74 FF            [12] 1324 	mov	a,#0xff
      002560 26               [12] 1325 	add	a,@r0
      002561 FC               [12] 1326 	mov	r4,a
      002562 74 FF            [12] 1327 	mov	a,#0xff
      002564 08               [12] 1328 	inc	r0
      002565 36               [12] 1329 	addc	a,@r0
      002566 FD               [12] 1330 	mov	r5,a
      002567 74 30            [12] 1331 	mov	a,#0x30
      002569 2C               [12] 1332 	add	a,r4
      00256A FC               [12] 1333 	mov	r4,a
      00256B E4               [12] 1334 	clr	a
      00256C 3D               [12] 1335 	addc	a,r5
      00256D FD               [12] 1336 	mov	r5,a
      00256E C0 03            [24] 1337 	push	ar3
      002570 C0 02            [24] 1338 	push	ar2
      002572 74 30            [12] 1339 	mov	a,#0x30
      002574 C0 E0            [24] 1340 	push	acc
      002576 E4               [12] 1341 	clr	a
      002577 C0 E0            [24] 1342 	push	acc
      002579 8C 82            [24] 1343 	mov	dpl,r4
      00257B 8D 83            [24] 1344 	mov	dph,r5
      00257D 12 2F 1D         [24] 1345 	lcall	__modsint
      002580 AC 82            [24] 1346 	mov	r4,dpl
      002582 AD 83            [24] 1347 	mov	r5,dph
      002584 15 81            [12] 1348 	dec	sp
      002586 15 81            [12] 1349 	dec	sp
      002588 D0 02            [24] 1350 	pop	ar2
      00258A D0 03            [24] 1351 	pop	ar3
      00258C EC               [12] 1352 	mov	a,r4
      00258D 2A               [12] 1353 	add	a,r2
      00258E FE               [12] 1354 	mov	r6,a
      00258F ED               [12] 1355 	mov	a,r5
      002590 3B               [12] 1356 	addc	a,r3
      002591 FF               [12] 1357 	mov	r7,a
      002592 EE               [12] 1358 	mov	a,r6
      002593 24 00            [12] 1359 	add	a,#_u
      002595 F5 82            [12] 1360 	mov	dpl,a
      002597 EF               [12] 1361 	mov	a,r7
      002598 34 88            [12] 1362 	addc	a,#(_u >> 8)
      00259A F5 83            [12] 1363 	mov	dph,a
      00259C E0               [24] 1364 	movx	a,@dptr
      00259D FF               [12] 1365 	mov	r7,a
      00259E A8 10            [24] 1366 	mov	r0,_bp
      0025A0 08               [12] 1367 	inc	r0
      0025A1 EF               [12] 1368 	mov	a,r7
      0025A2 26               [12] 1369 	add	a,@r0
      0025A3 F6               [12] 1370 	mov	@r0,a
                                   1371 ;	life.c:181: UPDN(-1, 0);
      0025A4 78 24            [12] 1372 	mov	r0,#_x
      0025A6 E5 10            [12] 1373 	mov	a,_bp
      0025A8 24 06            [12] 1374 	add	a,#0x06
      0025AA F9               [12] 1375 	mov	r1,a
      0025AB E6               [12] 1376 	mov	a,@r0
      0025AC F7               [12] 1377 	mov	@r1,a
      0025AD 08               [12] 1378 	inc	r0
      0025AE 09               [12] 1379 	inc	r1
      0025AF E6               [12] 1380 	mov	a,@r0
      0025B0 F7               [12] 1381 	mov	@r1,a
      0025B1 E5 10            [12] 1382 	mov	a,_bp
      0025B3 24 06            [12] 1383 	add	a,#0x06
      0025B5 F8               [12] 1384 	mov	r0,a
      0025B6 74 30            [12] 1385 	mov	a,#0x30
      0025B8 26               [12] 1386 	add	a,@r0
      0025B9 FE               [12] 1387 	mov	r6,a
      0025BA E4               [12] 1388 	clr	a
      0025BB 08               [12] 1389 	inc	r0
      0025BC 36               [12] 1390 	addc	a,@r0
      0025BD FF               [12] 1391 	mov	r7,a
      0025BE C0 05            [24] 1392 	push	ar5
      0025C0 C0 04            [24] 1393 	push	ar4
      0025C2 C0 03            [24] 1394 	push	ar3
      0025C4 C0 02            [24] 1395 	push	ar2
      0025C6 74 30            [12] 1396 	mov	a,#0x30
      0025C8 C0 E0            [24] 1397 	push	acc
      0025CA E4               [12] 1398 	clr	a
      0025CB C0 E0            [24] 1399 	push	acc
      0025CD 8E 82            [24] 1400 	mov	dpl,r6
      0025CF 8F 83            [24] 1401 	mov	dph,r7
      0025D1 12 2F 1D         [24] 1402 	lcall	__modsint
      0025D4 C8               [12] 1403 	xch	a,r0
      0025D5 E5 10            [12] 1404 	mov	a,_bp
      0025D7 24 08            [12] 1405 	add	a,#0x08
      0025D9 C8               [12] 1406 	xch	a,r0
      0025DA A6 82            [24] 1407 	mov	@r0,dpl
      0025DC 08               [12] 1408 	inc	r0
      0025DD A6 83            [24] 1409 	mov	@r0,dph
      0025DF 15 81            [12] 1410 	dec	sp
      0025E1 15 81            [12] 1411 	dec	sp
      0025E3 D0 02            [24] 1412 	pop	ar2
      0025E5 D0 03            [24] 1413 	pop	ar3
      0025E7 E5 10            [12] 1414 	mov	a,_bp
      0025E9 24 08            [12] 1415 	add	a,#0x08
      0025EB F8               [12] 1416 	mov	r0,a
      0025EC E6               [12] 1417 	mov	a,@r0
      0025ED 2A               [12] 1418 	add	a,r2
      0025EE FE               [12] 1419 	mov	r6,a
      0025EF 08               [12] 1420 	inc	r0
      0025F0 E6               [12] 1421 	mov	a,@r0
      0025F1 3B               [12] 1422 	addc	a,r3
      0025F2 FF               [12] 1423 	mov	r7,a
      0025F3 EE               [12] 1424 	mov	a,r6
      0025F4 24 00            [12] 1425 	add	a,#_u
      0025F6 F5 82            [12] 1426 	mov	dpl,a
      0025F8 EF               [12] 1427 	mov	a,r7
      0025F9 34 88            [12] 1428 	addc	a,#(_u >> 8)
      0025FB F5 83            [12] 1429 	mov	dph,a
      0025FD E0               [24] 1430 	movx	a,@dptr
      0025FE FF               [12] 1431 	mov	r7,a
      0025FF A8 10            [24] 1432 	mov	r0,_bp
      002601 08               [12] 1433 	inc	r0
      002602 EF               [12] 1434 	mov	a,r7
      002603 26               [12] 1435 	add	a,@r0
      002604 F6               [12] 1436 	mov	@r0,a
                                   1437 ;	life.c:182: UPDN(-1, 1);
      002605 E5 10            [12] 1438 	mov	a,_bp
      002607 24 06            [12] 1439 	add	a,#0x06
      002609 F8               [12] 1440 	mov	r0,a
      00260A 74 31            [12] 1441 	mov	a,#0x31
      00260C 26               [12] 1442 	add	a,@r0
      00260D FE               [12] 1443 	mov	r6,a
      00260E E4               [12] 1444 	clr	a
      00260F 08               [12] 1445 	inc	r0
      002610 36               [12] 1446 	addc	a,@r0
      002611 FF               [12] 1447 	mov	r7,a
      002612 C0 03            [24] 1448 	push	ar3
      002614 C0 02            [24] 1449 	push	ar2
      002616 74 30            [12] 1450 	mov	a,#0x30
      002618 C0 E0            [24] 1451 	push	acc
      00261A E4               [12] 1452 	clr	a
      00261B C0 E0            [24] 1453 	push	acc
      00261D 8E 82            [24] 1454 	mov	dpl,r6
      00261F 8F 83            [24] 1455 	mov	dph,r7
      002621 12 2F 1D         [24] 1456 	lcall	__modsint
      002624 AE 82            [24] 1457 	mov	r6,dpl
      002626 AF 83            [24] 1458 	mov	r7,dph
      002628 15 81            [12] 1459 	dec	sp
      00262A 15 81            [12] 1460 	dec	sp
      00262C D0 02            [24] 1461 	pop	ar2
      00262E D0 03            [24] 1462 	pop	ar3
      002630 D0 04            [24] 1463 	pop	ar4
      002632 D0 05            [24] 1464 	pop	ar5
      002634 EE               [12] 1465 	mov	a,r6
      002635 2A               [12] 1466 	add	a,r2
      002636 FA               [12] 1467 	mov	r2,a
      002637 EF               [12] 1468 	mov	a,r7
      002638 3B               [12] 1469 	addc	a,r3
      002639 FB               [12] 1470 	mov	r3,a
      00263A EA               [12] 1471 	mov	a,r2
      00263B 24 00            [12] 1472 	add	a,#_u
      00263D F5 82            [12] 1473 	mov	dpl,a
      00263F EB               [12] 1474 	mov	a,r3
      002640 34 88            [12] 1475 	addc	a,#(_u >> 8)
      002642 F5 83            [12] 1476 	mov	dph,a
      002644 E0               [24] 1477 	movx	a,@dptr
      002645 FB               [12] 1478 	mov	r3,a
      002646 A8 10            [24] 1479 	mov	r0,_bp
      002648 08               [12] 1480 	inc	r0
      002649 EB               [12] 1481 	mov	a,r3
      00264A 26               [12] 1482 	add	a,@r0
      00264B F6               [12] 1483 	mov	@r0,a
                                   1484 ;	life.c:183: UPDN(0, -1);
      00264C 78 26            [12] 1485 	mov	r0,#_y
      00264E E5 10            [12] 1486 	mov	a,_bp
      002650 24 0A            [12] 1487 	add	a,#0x0a
      002652 F9               [12] 1488 	mov	r1,a
      002653 E6               [12] 1489 	mov	a,@r0
      002654 F7               [12] 1490 	mov	@r1,a
      002655 08               [12] 1491 	inc	r0
      002656 09               [12] 1492 	inc	r1
      002657 E6               [12] 1493 	mov	a,@r0
      002658 F7               [12] 1494 	mov	@r1,a
      002659 E5 10            [12] 1495 	mov	a,_bp
      00265B 24 0A            [12] 1496 	add	a,#0x0a
      00265D F8               [12] 1497 	mov	r0,a
      00265E 74 C0            [12] 1498 	mov	a,#0xc0
      002660 26               [12] 1499 	add	a,@r0
      002661 FA               [12] 1500 	mov	r2,a
      002662 E4               [12] 1501 	clr	a
      002663 08               [12] 1502 	inc	r0
      002664 36               [12] 1503 	addc	a,@r0
      002665 FB               [12] 1504 	mov	r3,a
      002666 C0 07            [24] 1505 	push	ar7
      002668 C0 06            [24] 1506 	push	ar6
      00266A C0 05            [24] 1507 	push	ar5
      00266C C0 04            [24] 1508 	push	ar4
      00266E 74 C0            [12] 1509 	mov	a,#0xc0
      002670 C0 E0            [24] 1510 	push	acc
      002672 E4               [12] 1511 	clr	a
      002673 C0 E0            [24] 1512 	push	acc
      002675 8A 82            [24] 1513 	mov	dpl,r2
      002677 8B 83            [24] 1514 	mov	dph,r3
      002679 12 2F 1D         [24] 1515 	lcall	__modsint
      00267C AA 82            [24] 1516 	mov	r2,dpl
      00267E AB 83            [24] 1517 	mov	r3,dph
      002680 15 81            [12] 1518 	dec	sp
      002682 15 81            [12] 1519 	dec	sp
      002684 C0 02            [24] 1520 	push	ar2
      002686 C0 03            [24] 1521 	push	ar3
      002688 90 00 30         [24] 1522 	mov	dptr,#0x0030
      00268B 12 2D 3F         [24] 1523 	lcall	__mulint
      00268E C8               [12] 1524 	xch	a,r0
      00268F E5 10            [12] 1525 	mov	a,_bp
      002691 24 0C            [12] 1526 	add	a,#0x0c
      002693 C8               [12] 1527 	xch	a,r0
      002694 A6 82            [24] 1528 	mov	@r0,dpl
      002696 08               [12] 1529 	inc	r0
      002697 A6 83            [24] 1530 	mov	@r0,dph
      002699 15 81            [12] 1531 	dec	sp
      00269B 15 81            [12] 1532 	dec	sp
      00269D D0 04            [24] 1533 	pop	ar4
      00269F D0 05            [24] 1534 	pop	ar5
      0026A1 D0 06            [24] 1535 	pop	ar6
      0026A3 D0 07            [24] 1536 	pop	ar7
      0026A5 E5 10            [12] 1537 	mov	a,_bp
      0026A7 24 0C            [12] 1538 	add	a,#0x0c
      0026A9 F8               [12] 1539 	mov	r0,a
      0026AA EC               [12] 1540 	mov	a,r4
      0026AB 26               [12] 1541 	add	a,@r0
      0026AC FA               [12] 1542 	mov	r2,a
      0026AD ED               [12] 1543 	mov	a,r5
      0026AE 08               [12] 1544 	inc	r0
      0026AF 36               [12] 1545 	addc	a,@r0
      0026B0 FB               [12] 1546 	mov	r3,a
      0026B1 EA               [12] 1547 	mov	a,r2
      0026B2 24 00            [12] 1548 	add	a,#_u
      0026B4 F5 82            [12] 1549 	mov	dpl,a
      0026B6 EB               [12] 1550 	mov	a,r3
      0026B7 34 88            [12] 1551 	addc	a,#(_u >> 8)
      0026B9 F5 83            [12] 1552 	mov	dph,a
      0026BB E0               [24] 1553 	movx	a,@dptr
      0026BC FB               [12] 1554 	mov	r3,a
      0026BD A8 10            [24] 1555 	mov	r0,_bp
      0026BF 08               [12] 1556 	inc	r0
      0026C0 EB               [12] 1557 	mov	a,r3
      0026C1 26               [12] 1558 	add	a,@r0
      0026C2 F6               [12] 1559 	mov	@r0,a
                                   1560 ;	life.c:184: UPDN(0, 0);
      0026C3 E5 10            [12] 1561 	mov	a,_bp
      0026C5 24 0C            [12] 1562 	add	a,#0x0c
      0026C7 F8               [12] 1563 	mov	r0,a
      0026C8 E5 10            [12] 1564 	mov	a,_bp
      0026CA 24 08            [12] 1565 	add	a,#0x08
      0026CC F9               [12] 1566 	mov	r1,a
      0026CD E7               [12] 1567 	mov	a,@r1
      0026CE 26               [12] 1568 	add	a,@r0
      0026CF FA               [12] 1569 	mov	r2,a
      0026D0 09               [12] 1570 	inc	r1
      0026D1 E7               [12] 1571 	mov	a,@r1
      0026D2 08               [12] 1572 	inc	r0
      0026D3 36               [12] 1573 	addc	a,@r0
      0026D4 FB               [12] 1574 	mov	r3,a
      0026D5 EA               [12] 1575 	mov	a,r2
      0026D6 24 00            [12] 1576 	add	a,#_u
      0026D8 F5 82            [12] 1577 	mov	dpl,a
      0026DA EB               [12] 1578 	mov	a,r3
      0026DB 34 88            [12] 1579 	addc	a,#(_u >> 8)
      0026DD F5 83            [12] 1580 	mov	dph,a
      0026DF E0               [24] 1581 	movx	a,@dptr
      0026E0 FB               [12] 1582 	mov	r3,a
      0026E1 A8 10            [24] 1583 	mov	r0,_bp
      0026E3 08               [12] 1584 	inc	r0
      0026E4 EB               [12] 1585 	mov	a,r3
      0026E5 26               [12] 1586 	add	a,@r0
      0026E6 F6               [12] 1587 	mov	@r0,a
                                   1588 ;	life.c:185: UPDN(0, 1);
      0026E7 E5 10            [12] 1589 	mov	a,_bp
      0026E9 24 0C            [12] 1590 	add	a,#0x0c
      0026EB F8               [12] 1591 	mov	r0,a
      0026EC EE               [12] 1592 	mov	a,r6
      0026ED 26               [12] 1593 	add	a,@r0
      0026EE FA               [12] 1594 	mov	r2,a
      0026EF EF               [12] 1595 	mov	a,r7
      0026F0 08               [12] 1596 	inc	r0
      0026F1 36               [12] 1597 	addc	a,@r0
      0026F2 FB               [12] 1598 	mov	r3,a
      0026F3 EA               [12] 1599 	mov	a,r2
      0026F4 24 00            [12] 1600 	add	a,#_u
      0026F6 F5 82            [12] 1601 	mov	dpl,a
      0026F8 EB               [12] 1602 	mov	a,r3
      0026F9 34 88            [12] 1603 	addc	a,#(_u >> 8)
      0026FB F5 83            [12] 1604 	mov	dph,a
      0026FD E0               [24] 1605 	movx	a,@dptr
      0026FE FB               [12] 1606 	mov	r3,a
      0026FF A8 10            [24] 1607 	mov	r0,_bp
      002701 08               [12] 1608 	inc	r0
      002702 E5 10            [12] 1609 	mov	a,_bp
      002704 24 0C            [12] 1610 	add	a,#0x0c
      002706 F9               [12] 1611 	mov	r1,a
      002707 EB               [12] 1612 	mov	a,r3
      002708 26               [12] 1613 	add	a,@r0
      002709 F7               [12] 1614 	mov	@r1,a
                                   1615 ;	life.c:186: UPDN(1, -1);
      00270A E5 10            [12] 1616 	mov	a,_bp
      00270C 24 0A            [12] 1617 	add	a,#0x0a
      00270E F8               [12] 1618 	mov	r0,a
      00270F 74 C1            [12] 1619 	mov	a,#0xc1
      002711 26               [12] 1620 	add	a,@r0
      002712 FA               [12] 1621 	mov	r2,a
      002713 E4               [12] 1622 	clr	a
      002714 08               [12] 1623 	inc	r0
      002715 36               [12] 1624 	addc	a,@r0
      002716 FB               [12] 1625 	mov	r3,a
      002717 C0 07            [24] 1626 	push	ar7
      002719 C0 06            [24] 1627 	push	ar6
      00271B C0 05            [24] 1628 	push	ar5
      00271D C0 04            [24] 1629 	push	ar4
      00271F 74 C0            [12] 1630 	mov	a,#0xc0
      002721 C0 E0            [24] 1631 	push	acc
      002723 E4               [12] 1632 	clr	a
      002724 C0 E0            [24] 1633 	push	acc
      002726 8A 82            [24] 1634 	mov	dpl,r2
      002728 8B 83            [24] 1635 	mov	dph,r3
      00272A 12 2F 1D         [24] 1636 	lcall	__modsint
      00272D AA 82            [24] 1637 	mov	r2,dpl
      00272F AB 83            [24] 1638 	mov	r3,dph
      002731 15 81            [12] 1639 	dec	sp
      002733 15 81            [12] 1640 	dec	sp
      002735 C0 02            [24] 1641 	push	ar2
      002737 C0 03            [24] 1642 	push	ar3
      002739 90 00 30         [24] 1643 	mov	dptr,#0x0030
      00273C 12 2D 3F         [24] 1644 	lcall	__mulint
      00273F AA 82            [24] 1645 	mov	r2,dpl
      002741 AB 83            [24] 1646 	mov	r3,dph
      002743 15 81            [12] 1647 	dec	sp
      002745 15 81            [12] 1648 	dec	sp
      002747 D0 04            [24] 1649 	pop	ar4
      002749 D0 05            [24] 1650 	pop	ar5
      00274B D0 06            [24] 1651 	pop	ar6
      00274D D0 07            [24] 1652 	pop	ar7
      00274F EC               [12] 1653 	mov	a,r4
      002750 2A               [12] 1654 	add	a,r2
      002751 FC               [12] 1655 	mov	r4,a
      002752 ED               [12] 1656 	mov	a,r5
      002753 3B               [12] 1657 	addc	a,r3
      002754 FD               [12] 1658 	mov	r5,a
      002755 EC               [12] 1659 	mov	a,r4
      002756 24 00            [12] 1660 	add	a,#_u
      002758 F5 82            [12] 1661 	mov	dpl,a
      00275A ED               [12] 1662 	mov	a,r5
      00275B 34 88            [12] 1663 	addc	a,#(_u >> 8)
      00275D F5 83            [12] 1664 	mov	dph,a
      00275F E0               [24] 1665 	movx	a,@dptr
      002760 FD               [12] 1666 	mov	r5,a
      002761 E5 10            [12] 1667 	mov	a,_bp
      002763 24 0C            [12] 1668 	add	a,#0x0c
      002765 F8               [12] 1669 	mov	r0,a
      002766 E5 10            [12] 1670 	mov	a,_bp
      002768 24 0C            [12] 1671 	add	a,#0x0c
      00276A F9               [12] 1672 	mov	r1,a
      00276B ED               [12] 1673 	mov	a,r5
      00276C 26               [12] 1674 	add	a,@r0
      00276D F7               [12] 1675 	mov	@r1,a
                                   1676 ;	life.c:187: UPDN(1, 0);
      00276E E5 10            [12] 1677 	mov	a,_bp
      002770 24 08            [12] 1678 	add	a,#0x08
      002772 F8               [12] 1679 	mov	r0,a
      002773 E6               [12] 1680 	mov	a,@r0
      002774 2A               [12] 1681 	add	a,r2
      002775 FC               [12] 1682 	mov	r4,a
      002776 08               [12] 1683 	inc	r0
      002777 E6               [12] 1684 	mov	a,@r0
      002778 3B               [12] 1685 	addc	a,r3
      002779 FD               [12] 1686 	mov	r5,a
      00277A EC               [12] 1687 	mov	a,r4
      00277B 24 00            [12] 1688 	add	a,#_u
      00277D F5 82            [12] 1689 	mov	dpl,a
      00277F ED               [12] 1690 	mov	a,r5
      002780 34 88            [12] 1691 	addc	a,#(_u >> 8)
      002782 F5 83            [12] 1692 	mov	dph,a
      002784 E0               [24] 1693 	movx	a,@dptr
      002785 FD               [12] 1694 	mov	r5,a
      002786 E5 10            [12] 1695 	mov	a,_bp
      002788 24 0C            [12] 1696 	add	a,#0x0c
      00278A F8               [12] 1697 	mov	r0,a
      00278B ED               [12] 1698 	mov	a,r5
      00278C 26               [12] 1699 	add	a,@r0
      00278D FD               [12] 1700 	mov	r5,a
                                   1701 ;	life.c:188: UPDN(1, 1);
      00278E 78 31            [12] 1702 	mov	r0,#_dy
      002790 76 01            [12] 1703 	mov	@r0,#0x01
      002792 08               [12] 1704 	inc	r0
      002793 76 00            [12] 1705 	mov	@r0,#0x00
      002795 78 2F            [12] 1706 	mov	r0,#_dx
      002797 76 01            [12] 1707 	mov	@r0,#0x01
      002799 08               [12] 1708 	inc	r0
      00279A 76 00            [12] 1709 	mov	@r0,#0x00
      00279C EE               [12] 1710 	mov	a,r6
      00279D 2A               [12] 1711 	add	a,r2
      00279E FE               [12] 1712 	mov	r6,a
      00279F EF               [12] 1713 	mov	a,r7
      0027A0 3B               [12] 1714 	addc	a,r3
      0027A1 FF               [12] 1715 	mov	r7,a
      0027A2 EE               [12] 1716 	mov	a,r6
      0027A3 24 00            [12] 1717 	add	a,#_u
      0027A5 F5 82            [12] 1718 	mov	dpl,a
      0027A7 EF               [12] 1719 	mov	a,r7
      0027A8 34 88            [12] 1720 	addc	a,#(_u >> 8)
      0027AA F5 83            [12] 1721 	mov	dph,a
      0027AC E0               [24] 1722 	movx	a,@dptr
      0027AD 2D               [12] 1723 	add	a,r5
      0027AE FF               [12] 1724 	mov	r7,a
      0027AF 78 2C            [12] 1725 	mov	r0,#_n
      0027B1 A6 07            [24] 1726 	mov	@r0,ar7
                                   1727 ;	life.c:191: nu[A2D(W, y, x)] = (n == 3) || ((n == 2) && u[A2D(W, y, x)]);
      0027B3 A8 10            [24] 1728 	mov	r0,_bp
      0027B5 08               [12] 1729 	inc	r0
      0027B6 08               [12] 1730 	inc	r0
      0027B7 E6               [12] 1731 	mov	a,@r0
      0027B8 24 00            [12] 1732 	add	a,#_nu
      0027BA FD               [12] 1733 	mov	r5,a
      0027BB 08               [12] 1734 	inc	r0
      0027BC E6               [12] 1735 	mov	a,@r0
      0027BD 34 AC            [12] 1736 	addc	a,#(_nu >> 8)
      0027BF FE               [12] 1737 	mov	r6,a
      0027C0 BF 03 02         [24] 1738 	cjne	r7,#0x03,00441$
      0027C3 80 28            [24] 1739 	sjmp	00232$
      0027C5                       1740 00441$:
      0027C5 BF 02 21         [24] 1741 	cjne	r7,#0x02,00231$
      0027C8 E5 10            [12] 1742 	mov	a,_bp
      0027CA 24 04            [12] 1743 	add	a,#0x04
      0027CC F8               [12] 1744 	mov	r0,a
      0027CD E5 10            [12] 1745 	mov	a,_bp
      0027CF 24 06            [12] 1746 	add	a,#0x06
      0027D1 F9               [12] 1747 	mov	r1,a
      0027D2 E7               [12] 1748 	mov	a,@r1
      0027D3 26               [12] 1749 	add	a,@r0
      0027D4 FC               [12] 1750 	mov	r4,a
      0027D5 09               [12] 1751 	inc	r1
      0027D6 E7               [12] 1752 	mov	a,@r1
      0027D7 08               [12] 1753 	inc	r0
      0027D8 36               [12] 1754 	addc	a,@r0
      0027D9 FF               [12] 1755 	mov	r7,a
      0027DA EC               [12] 1756 	mov	a,r4
      0027DB 24 00            [12] 1757 	add	a,#_u
      0027DD FC               [12] 1758 	mov	r4,a
      0027DE EF               [12] 1759 	mov	a,r7
      0027DF 34 88            [12] 1760 	addc	a,#(_u >> 8)
      0027E1 FF               [12] 1761 	mov	r7,a
      0027E2 8C 82            [24] 1762 	mov	dpl,r4
      0027E4 8F 83            [24] 1763 	mov	dph,r7
      0027E6 E0               [24] 1764 	movx	a,@dptr
      0027E7 70 04            [24] 1765 	jnz	00232$
      0027E9                       1766 00231$:
                                   1767 ;	assignBit
      0027E9 C2 00            [12] 1768 	clr	b0
      0027EB 80 02            [24] 1769 	sjmp	00233$
      0027ED                       1770 00232$:
                                   1771 ;	assignBit
      0027ED D2 00            [12] 1772 	setb	b0
      0027EF                       1773 00233$:
      0027EF A2 00            [12] 1774 	mov	c,b0
      0027F1 E4               [12] 1775 	clr	a
      0027F2 33               [12] 1776 	rlc	a
      0027F3 8D 82            [24] 1777 	mov	dpl,r5
      0027F5 8E 83            [24] 1778 	mov	dph,r6
      0027F7 F0               [24] 1779 	movx	@dptr,a
                                   1780 ;	life.c:192: cycle2 |= pu[A2D(W, y, x)] ^ nu[A2D(W, y, x)];
      0027F8 78 26            [12] 1781 	mov	r0,#_y
      0027FA E6               [12] 1782 	mov	a,@r0
      0027FB C0 E0            [24] 1783 	push	acc
      0027FD 08               [12] 1784 	inc	r0
      0027FE E6               [12] 1785 	mov	a,@r0
      0027FF C0 E0            [24] 1786 	push	acc
      002801 90 00 30         [24] 1787 	mov	dptr,#0x0030
      002804 12 2D 3F         [24] 1788 	lcall	__mulint
      002807 AE 82            [24] 1789 	mov	r6,dpl
      002809 AF 83            [24] 1790 	mov	r7,dph
      00280B 15 81            [12] 1791 	dec	sp
      00280D 15 81            [12] 1792 	dec	sp
      00280F 78 24            [12] 1793 	mov	r0,#_x
      002811 E6               [12] 1794 	mov	a,@r0
      002812 2E               [12] 1795 	add	a,r6
      002813 FE               [12] 1796 	mov	r6,a
      002814 08               [12] 1797 	inc	r0
      002815 E6               [12] 1798 	mov	a,@r0
      002816 3F               [12] 1799 	addc	a,r7
      002817 FF               [12] 1800 	mov	r7,a
      002818 EE               [12] 1801 	mov	a,r6
      002819 24 00            [12] 1802 	add	a,#_pu
      00281B F5 82            [12] 1803 	mov	dpl,a
      00281D EF               [12] 1804 	mov	a,r7
      00281E 34 64            [12] 1805 	addc	a,#(_pu >> 8)
      002820 F5 83            [12] 1806 	mov	dph,a
      002822 E0               [24] 1807 	movx	a,@dptr
      002823 FD               [12] 1808 	mov	r5,a
      002824 EE               [12] 1809 	mov	a,r6
      002825 24 00            [12] 1810 	add	a,#_nu
      002827 F5 82            [12] 1811 	mov	dpl,a
      002829 EF               [12] 1812 	mov	a,r7
      00282A 34 AC            [12] 1813 	addc	a,#(_nu >> 8)
      00282C F5 83            [12] 1814 	mov	dph,a
      00282E E0               [24] 1815 	movx	a,@dptr
      00282F FC               [12] 1816 	mov	r4,a
      002830 6D               [12] 1817 	xrl	a,r5
      002831 78 2E            [12] 1818 	mov	r0,#_cycle2
      002833 46               [12] 1819 	orl	a,@r0
      002834 F6               [12] 1820 	mov	@r0,a
                                   1821 ;	life.c:193: fixed |= u[A2D(W, y, x)] ^ nu[A2D(W, y, x)];
      002835 EE               [12] 1822 	mov	a,r6
      002836 24 00            [12] 1823 	add	a,#_u
      002838 F5 82            [12] 1824 	mov	dpl,a
      00283A EF               [12] 1825 	mov	a,r7
      00283B 34 88            [12] 1826 	addc	a,#(_u >> 8)
      00283D F5 83            [12] 1827 	mov	dph,a
      00283F E0               [24] 1828 	movx	a,@dptr
      002840 FF               [12] 1829 	mov	r7,a
      002841 EC               [12] 1830 	mov	a,r4
      002842 6F               [12] 1831 	xrl	a,r7
      002843 78 2D            [12] 1832 	mov	r0,#_fixed
      002845 46               [12] 1833 	orl	a,@r0
      002846 F6               [12] 1834 	mov	@r0,a
                                   1835 ;	life.c:172: for (x = 0; x < W; x++) {
      002847 78 24            [12] 1836 	mov	r0,#_x
      002849 06               [12] 1837 	inc	@r0
      00284A B6 00 02         [24] 1838 	cjne	@r0,#0x00,00445$
      00284D 08               [12] 1839 	inc	r0
      00284E 06               [12] 1840 	inc	@r0
      00284F                       1841 00445$:
      00284F 78 24            [12] 1842 	mov	r0,#_x
      002851 C3               [12] 1843 	clr	c
      002852 E6               [12] 1844 	mov	a,@r0
      002853 94 30            [12] 1845 	subb	a,#0x30
      002855 08               [12] 1846 	inc	r0
      002856 E6               [12] 1847 	mov	a,@r0
      002857 64 80            [12] 1848 	xrl	a,#0x80
      002859 94 80            [12] 1849 	subb	a,#0x80
      00285B 50 03            [24] 1850 	jnc	00446$
      00285D 02 24 CF         [24] 1851 	ljmp	00219$
      002860                       1852 00446$:
                                   1853 ;	life.c:169: for (y = 0; y < H; y++) {
      002860 78 26            [12] 1854 	mov	r0,#_y
      002862 06               [12] 1855 	inc	@r0
      002863 B6 00 02         [24] 1856 	cjne	@r0,#0x00,00447$
      002866 08               [12] 1857 	inc	r0
      002867 06               [12] 1858 	inc	@r0
      002868                       1859 00447$:
      002868 78 26            [12] 1860 	mov	r0,#_y
      00286A C3               [12] 1861 	clr	c
      00286B E6               [12] 1862 	mov	a,@r0
      00286C 94 C0            [12] 1863 	subb	a,#0xc0
      00286E 08               [12] 1864 	inc	r0
      00286F E6               [12] 1865 	mov	a,@r0
      002870 64 80            [12] 1866 	xrl	a,#0x80
      002872 94 80            [12] 1867 	subb	a,#0x80
      002874 50 03            [24] 1868 	jnc	00448$
      002876 02 24 B3         [24] 1869 	ljmp	00221$
      002879                       1870 00448$:
                                   1871 ;	life.c:197: OE76 = OE76_0;
      002879 78 23            [12] 1872 	mov	r0,#_OE76
      00287B 76 3F            [12] 1873 	mov	@r0,#0x3f
                                   1874 ;	life.c:198: flashOE();
      00287D 12 20 CD         [24] 1875 	lcall	_flashOE
                                   1876 ;	life.c:200: cycle2 = !cycle2;
      002880 78 2E            [12] 1877 	mov	r0,#_cycle2
      002882 E6               [12] 1878 	mov	a,@r0
      002883 B4 01 00         [24] 1879 	cjne	a,#0x01,00449$
      002886                       1880 00449$:
      002886 92 00            [24] 1881 	mov	b0,c
      002888 78 2E            [12] 1882 	mov	r0,#_cycle2
      00288A E4               [12] 1883 	clr	a
      00288B 33               [12] 1884 	rlc	a
      00288C F6               [12] 1885 	mov	@r0,a
                                   1886 ;	life.c:201: fixed = !fixed;
      00288D 78 2D            [12] 1887 	mov	r0,#_fixed
      00288F E6               [12] 1888 	mov	a,@r0
      002890 B4 01 00         [24] 1889 	cjne	a,#0x01,00450$
      002893                       1890 00450$:
      002893 92 00            [24] 1891 	mov	b0,c
      002895 78 2D            [12] 1892 	mov	r0,#_fixed
      002897 E4               [12] 1893 	clr	a
      002898 33               [12] 1894 	rlc	a
      002899 F6               [12] 1895 	mov	@r0,a
                                   1896 ;	life.c:203: memcpy(pu, u, sizeof (u));
      00289A E4               [12] 1897 	clr	a
      00289B C0 E0            [24] 1898 	push	acc
      00289D 74 24            [12] 1899 	mov	a,#0x24
      00289F C0 E0            [24] 1900 	push	acc
      0028A1 74 00            [12] 1901 	mov	a,#_u
      0028A3 C0 E0            [24] 1902 	push	acc
      0028A5 74 88            [12] 1903 	mov	a,#(_u >> 8)
      0028A7 C0 E0            [24] 1904 	push	acc
      0028A9 E4               [12] 1905 	clr	a
      0028AA C0 E0            [24] 1906 	push	acc
      0028AC 90 64 00         [24] 1907 	mov	dptr,#_pu
      0028AF 75 F0 00         [24] 1908 	mov	b,#0x00
      0028B2 12 2D DD         [24] 1909 	lcall	___memcpy
      0028B5 E5 81            [12] 1910 	mov	a,sp
      0028B7 24 FB            [12] 1911 	add	a,#0xfb
      0028B9 F5 81            [12] 1912 	mov	sp,a
                                   1913 ;	life.c:204: memcpy(u, nu, sizeof (nu));
      0028BB E4               [12] 1914 	clr	a
      0028BC C0 E0            [24] 1915 	push	acc
      0028BE 74 24            [12] 1916 	mov	a,#0x24
      0028C0 C0 E0            [24] 1917 	push	acc
      0028C2 74 00            [12] 1918 	mov	a,#_nu
      0028C4 C0 E0            [24] 1919 	push	acc
      0028C6 74 AC            [12] 1920 	mov	a,#(_nu >> 8)
      0028C8 C0 E0            [24] 1921 	push	acc
      0028CA E4               [12] 1922 	clr	a
      0028CB C0 E0            [24] 1923 	push	acc
      0028CD 90 88 00         [24] 1924 	mov	dptr,#_u
      0028D0 75 F0 00         [24] 1925 	mov	b,#0x00
      0028D3 12 2D DD         [24] 1926 	lcall	___memcpy
      0028D6 E5 81            [12] 1927 	mov	a,sp
      0028D8 24 FB            [12] 1928 	add	a,#0xfb
      0028DA F5 81            [12] 1929 	mov	sp,a
                                   1930 ;	life.c:258: if (fixed || cycle2) {
      0028DC 78 2D            [12] 1931 	mov	r0,#_fixed
      0028DE E6               [12] 1932 	mov	a,@r0
      0028DF 70 05            [24] 1933 	jnz	00135$
      0028E1 78 2E            [12] 1934 	mov	r0,#_cycle2
      0028E3 E6               [12] 1935 	mov	a,@r0
      0028E4 60 27            [24] 1936 	jz	00136$
      0028E6                       1937 00135$:
                                   1938 ;	life.c:259: printstr("DONE ");
      0028E6 90 30 8D         [24] 1939 	mov	dptr,#___str_10
      0028E9 75 F0 80         [24] 1940 	mov	b,#0x80
      0028EC 12 2A 9B         [24] 1941 	lcall	_printstr
                                   1942 ;	life.c:260: if (fixed) printstr("FIXED\r\n");
      0028EF 78 2D            [12] 1943 	mov	r0,#_fixed
      0028F1 E6               [12] 1944 	mov	a,@r0
      0028F2 60 0B            [24] 1945 	jz	00133$
      0028F4 90 30 93         [24] 1946 	mov	dptr,#___str_11
      0028F7 75 F0 80         [24] 1947 	mov	b,#0x80
      0028FA 12 2A 9B         [24] 1948 	lcall	_printstr
      0028FD 80 09            [24] 1949 	sjmp	00134$
      0028FF                       1950 00133$:
                                   1951 ;	life.c:261: else printstr("CYCLE2\r\n");
      0028FF 90 30 9B         [24] 1952 	mov	dptr,#___str_12
      002902 75 F0 80         [24] 1953 	mov	b,#0x80
      002905 12 2A 9B         [24] 1954 	lcall	_printstr
      002908                       1955 00134$:
                                   1956 ;	life.c:262: (void)getchar();
      002908 12 2A 74         [24] 1957 	lcall	_getchar
                                   1958 ;	life.c:263: break;
      00290B 80 50            [24] 1959 	sjmp	00145$
      00290D                       1960 00136$:
                                   1961 ;	life.c:266: c = getchar_poll();
      00290D 12 2A 81         [24] 1962 	lcall	_getchar_poll
      002910 AE 82            [24] 1963 	mov	r6,dpl
      002912 AF 83            [24] 1964 	mov	r7,dph
      002914 78 2A            [12] 1965 	mov	r0,#_c
      002916 A6 06            [24] 1966 	mov	@r0,ar6
      002918 08               [12] 1967 	inc	r0
      002919 A6 07            [24] 1968 	mov	@r0,ar7
                                   1969 ;	life.c:267: if (c > 0) {
      00291B C3               [12] 1970 	clr	c
      00291C E4               [12] 1971 	clr	a
      00291D 9E               [12] 1972 	subb	a,r6
      00291E 74 80            [12] 1973 	mov	a,#(0x00 ^ 0x80)
      002920 8F F0            [24] 1974 	mov	b,r7
      002922 63 F0 80         [24] 1975 	xrl	b,#0x80
      002925 95 F0            [12] 1976 	subb	a,b
      002927 40 03            [24] 1977 	jc	00454$
      002929 02 24 88         [24] 1978 	ljmp	00225$
      00292C                       1979 00454$:
                                   1980 ;	life.c:268: c = toupper(c);
      00292C 8E 82            [24] 1981 	mov	dpl,r6
      00292E 8F 83            [24] 1982 	mov	dph,r7
      002930 12 2E DA         [24] 1983 	lcall	_toupper
      002933 AE 82            [24] 1984 	mov	r6,dpl
      002935 AF 83            [24] 1985 	mov	r7,dph
      002937 78 2A            [12] 1986 	mov	r0,#_c
      002939 A6 06            [24] 1987 	mov	@r0,ar6
      00293B 08               [12] 1988 	inc	r0
      00293C A6 07            [24] 1989 	mov	@r0,ar7
                                   1990 ;	life.c:269: if (c == (int)'T') i0 = 1;
      00293E BE 54 0A         [24] 1991 	cjne	r6,#0x54,00141$
      002941 BF 00 07         [24] 1992 	cjne	r7,#0x00,00141$
      002944 78 21            [12] 1993 	mov	r0,#_i0
      002946 76 01            [12] 1994 	mov	@r0,#0x01
      002948 02 24 88         [24] 1995 	ljmp	00225$
      00294B                       1996 00141$:
                                   1997 ;	life.c:270: else if (c == (int)'B') i1 = 1;
      00294B BE 42 05         [24] 1998 	cjne	r6,#0x42,00457$
      00294E BF 00 02         [24] 1999 	cjne	r7,#0x00,00457$
      002951 80 03            [24] 2000 	sjmp	00458$
      002953                       2001 00457$:
      002953 02 24 88         [24] 2002 	ljmp	00225$
      002956                       2003 00458$:
      002956 78 22            [12] 2004 	mov	r0,#_i1
      002958 76 01            [12] 2005 	mov	@r0,#0x01
      00295A 02 24 88         [24] 2006 	ljmp	00225$
      00295D                       2007 00145$:
                                   2008 ;	life.c:274: if (i1) {
      00295D 78 22            [12] 2009 	mov	r0,#_i1
      00295F E6               [12] 2010 	mov	a,@r0
      002960 60 0C            [24] 2011 	jz	00228$
                                   2012 ;	life.c:275: printstr("BREAK\r\n");
      002962 90 30 A4         [24] 2013 	mov	dptr,#___str_13
      002965 75 F0 80         [24] 2014 	mov	b,#0x80
      002968 12 2A 9B         [24] 2015 	lcall	_printstr
                                   2016 ;	life.c:276: (void)getchar();
      00296B 12 2A 74         [24] 2017 	lcall	_getchar
      00296E                       2018 00228$:
                                   2019 ;	life.c:229: for (i0 = 0; !i0; ) {	
      00296E 78 21            [12] 2020 	mov	r0,#_i0
      002970 E6               [12] 2021 	mov	a,@r0
      002971 70 03            [24] 2022 	jnz	00460$
      002973 02 22 0F         [24] 2023 	ljmp	00227$
      002976                       2024 00460$:
                                   2025 ;	life.c:280: term:
      002976                       2026 00149$:
                                   2027 ;	life.c:281: EA = 0;
                                   2028 ;	assignBit
      002976 C2 AF            [12] 2029 	clr	_EA
                                   2030 ;	life.c:282: printstr("TERM\r\n");
      002978 90 30 AC         [24] 2031 	mov	dptr,#___str_14
      00297B 75 F0 80         [24] 2032 	mov	b,#0x80
      00297E 12 2A 9B         [24] 2033 	lcall	_printstr
                                   2034 ;	life.c:283: (void)getchar();
      002981 12 2A 74         [24] 2035 	lcall	_getchar
                                   2036 ;	life.c:285: PCON |= 2;
      002984 43 87 02         [24] 2037 	orl	_PCON,#0x02
                                   2038 ;	life.c:287: return;
                                   2039 ;	life.c:288: }
      002987 85 10 81         [24] 2040 	mov	sp,_bp
      00298A D0 10            [24] 2041 	pop	_bp
      00298C 22               [24] 2042 	ret
                                   2043 	.area CSEG    (CODE)
                                   2044 	.area CONST   (CODE)
                                   2045 	.area CONST   (CODE)
      003029                       2046 ___str_0:
      003029 1B                    2047 	.db 0x1b
      00302A 5B 3F 32 35 6C        2048 	.ascii "[?25l"
      00302F 00                    2049 	.db 0x00
                                   2050 	.area CSEG    (CODE)
                                   2051 	.area CONST   (CODE)
      003030                       2052 ___str_1:
      003030 1B                    2053 	.db 0x1b
      003031 5B 32 4A 47 45 4E 20  2054 	.ascii "[2JGEN "
      003038 00                    2055 	.db 0x00
                                   2056 	.area CSEG    (CODE)
                                   2057 	.area CONST   (CODE)
      003039                       2058 ___str_2:
      003039 0D                    2059 	.db 0x0d
      00303A 0A                    2060 	.db 0x0a
      00303B 00                    2061 	.db 0x00
                                   2062 	.area CSEG    (CODE)
                                   2063 	.area CONST   (CODE)
      00303C                       2064 ___str_3:
      00303C 1B                    2065 	.db 0x1b
      00303D 5B 3F 32 35 68        2066 	.ascii "[?25h"
      003042 00                    2067 	.db 0x00
                                   2068 	.area CSEG    (CODE)
                                   2069 	.area CONST   (CODE)
      003043                       2070 ___str_4:
      003043 4C 4F 41 44 20 30 20  2071 	.ascii "LOAD 0 1 ~ # <"
             31 20 7E 20 23 20 3C
      003051 00                    2072 	.db 0x00
                                   2073 	.area CSEG    (CODE)
                                   2074 	.area CONST   (CODE)
      003052                       2075 ___str_5:
      003052 3E                    2076 	.ascii ">"
      003053 0D                    2077 	.db 0x0d
      003054 0A                    2078 	.db 0x0a
      003055 00                    2079 	.db 0x00
                                   2080 	.area CSEG    (CODE)
                                   2081 	.area CONST   (CODE)
      003056                       2082 ___str_6:
      003056 52 41 4E 44 4F 4D     2083 	.ascii "RANDOM"
      00305C 00                    2084 	.db 0x00
                                   2085 	.area CSEG    (CODE)
                                   2086 	.area CONST   (CODE)
      00305D                       2087 ___str_7:
      00305D 1B                    2088 	.db 0x1b
      00305E 5B 3F 32 35 68        2089 	.ascii "[?25h"
      003063 1B                    2090 	.db 0x1b
      003064 5B 6D                 2091 	.ascii "[m"
      003066 00                    2092 	.db 0x00
                                   2093 	.area CSEG    (CODE)
                                   2094 	.area CONST   (CODE)
      003067                       2095 ___str_8:
      003067 4C 49 46 45 20 49 4E  2096 	.ascii "LIFE INIT T L R P"
             49 54 20 54 20 4C 20
             52 20 50
      003078 0D                    2097 	.db 0x0d
      003079 0A                    2098 	.db 0x0a
      00307A 00                    2099 	.db 0x00
                                   2100 	.area CSEG    (CODE)
                                   2101 	.area CONST   (CODE)
      00307B                       2102 ___str_9:
      00307B 52 45 41 44 59 20 54  2103 	.ascii "READY T L R P S"
             20 4C 20 52 20 50 20
             53
      00308A 0D                    2104 	.db 0x0d
      00308B 0A                    2105 	.db 0x0a
      00308C 00                    2106 	.db 0x00
                                   2107 	.area CSEG    (CODE)
                                   2108 	.area CONST   (CODE)
      00308D                       2109 ___str_10:
      00308D 44 4F 4E 45 20        2110 	.ascii "DONE "
      003092 00                    2111 	.db 0x00
                                   2112 	.area CSEG    (CODE)
                                   2113 	.area CONST   (CODE)
      003093                       2114 ___str_11:
      003093 46 49 58 45 44        2115 	.ascii "FIXED"
      003098 0D                    2116 	.db 0x0d
      003099 0A                    2117 	.db 0x0a
      00309A 00                    2118 	.db 0x00
                                   2119 	.area CSEG    (CODE)
                                   2120 	.area CONST   (CODE)
      00309B                       2121 ___str_12:
      00309B 43 59 43 4C 45 32     2122 	.ascii "CYCLE2"
      0030A1 0D                    2123 	.db 0x0d
      0030A2 0A                    2124 	.db 0x0a
      0030A3 00                    2125 	.db 0x00
                                   2126 	.area CSEG    (CODE)
                                   2127 	.area CONST   (CODE)
      0030A4                       2128 ___str_13:
      0030A4 42 52 45 41 4B        2129 	.ascii "BREAK"
      0030A9 0D                    2130 	.db 0x0d
      0030AA 0A                    2131 	.db 0x0a
      0030AB 00                    2132 	.db 0x00
                                   2133 	.area CSEG    (CODE)
                                   2134 	.area CONST   (CODE)
      0030AC                       2135 ___str_14:
      0030AC 54 45 52 4D           2136 	.ascii "TERM"
      0030B0 0D                    2137 	.db 0x0d
      0030B1 0A                    2138 	.db 0x0a
      0030B2 00                    2139 	.db 0x00
                                   2140 	.area CSEG    (CODE)
                                   2141 	.area XINIT   (CODE)
                                   2142 	.area CABS    (ABS,CODE)
