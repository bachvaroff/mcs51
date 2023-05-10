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
                                     15 	.globl _getchar
                                     16 	.globl _putchar
                                     17 	.globl _toupper
                                     18 	.globl ___memcpy
                                     19 	.globl _memset
                                     20 	.globl _srand
                                     21 	.globl _rand
                                     22 	.globl _CY
                                     23 	.globl _AC
                                     24 	.globl _F0
                                     25 	.globl _RS1
                                     26 	.globl _RS0
                                     27 	.globl _OV
                                     28 	.globl _FL
                                     29 	.globl _P
                                     30 	.globl _TF2
                                     31 	.globl _EXF2
                                     32 	.globl _RCLK
                                     33 	.globl _TCLK
                                     34 	.globl _EXEN2
                                     35 	.globl _TR2
                                     36 	.globl _C_T2
                                     37 	.globl _CP_RL2
                                     38 	.globl _T2CON_7
                                     39 	.globl _T2CON_6
                                     40 	.globl _T2CON_5
                                     41 	.globl _T2CON_4
                                     42 	.globl _T2CON_3
                                     43 	.globl _T2CON_2
                                     44 	.globl _T2CON_1
                                     45 	.globl _T2CON_0
                                     46 	.globl _PT2
                                     47 	.globl _PS
                                     48 	.globl _PT1
                                     49 	.globl _PX1
                                     50 	.globl _PT0
                                     51 	.globl _PX0
                                     52 	.globl _RD
                                     53 	.globl _WR
                                     54 	.globl _T1
                                     55 	.globl _T0
                                     56 	.globl _INT1
                                     57 	.globl _INT0
                                     58 	.globl _TXD
                                     59 	.globl _RXD
                                     60 	.globl _P3_7
                                     61 	.globl _P3_6
                                     62 	.globl _P3_5
                                     63 	.globl _P3_4
                                     64 	.globl _P3_3
                                     65 	.globl _P3_2
                                     66 	.globl _P3_1
                                     67 	.globl _P3_0
                                     68 	.globl _EA
                                     69 	.globl _ET2
                                     70 	.globl _ES
                                     71 	.globl _ET1
                                     72 	.globl _EX1
                                     73 	.globl _ET0
                                     74 	.globl _EX0
                                     75 	.globl _P2_7
                                     76 	.globl _P2_6
                                     77 	.globl _P2_5
                                     78 	.globl _P2_4
                                     79 	.globl _P2_3
                                     80 	.globl _P2_2
                                     81 	.globl _P2_1
                                     82 	.globl _P2_0
                                     83 	.globl _SM0
                                     84 	.globl _SM1
                                     85 	.globl _SM2
                                     86 	.globl _REN
                                     87 	.globl _TB8
                                     88 	.globl _RB8
                                     89 	.globl _TI
                                     90 	.globl _RI
                                     91 	.globl _T2EX
                                     92 	.globl _T2
                                     93 	.globl _P1_7
                                     94 	.globl _P1_6
                                     95 	.globl _P1_5
                                     96 	.globl _P1_4
                                     97 	.globl _P1_3
                                     98 	.globl _P1_2
                                     99 	.globl _P1_1
                                    100 	.globl _P1_0
                                    101 	.globl _TF1
                                    102 	.globl _TR1
                                    103 	.globl _TF0
                                    104 	.globl _TR0
                                    105 	.globl _IE1
                                    106 	.globl _IT1
                                    107 	.globl _IE0
                                    108 	.globl _IT0
                                    109 	.globl _P0_7
                                    110 	.globl _P0_6
                                    111 	.globl _P0_5
                                    112 	.globl _P0_4
                                    113 	.globl _P0_3
                                    114 	.globl _P0_2
                                    115 	.globl _P0_1
                                    116 	.globl _P0_0
                                    117 	.globl _B
                                    118 	.globl _A
                                    119 	.globl _ACC
                                    120 	.globl _PSW
                                    121 	.globl _TH2
                                    122 	.globl _TL2
                                    123 	.globl _RCAP2H
                                    124 	.globl _RCAP2L
                                    125 	.globl _T2MOD
                                    126 	.globl _T2CON
                                    127 	.globl _IP
                                    128 	.globl _P3
                                    129 	.globl _IE
                                    130 	.globl _P2
                                    131 	.globl _SBUF
                                    132 	.globl _SCON
                                    133 	.globl _P1
                                    134 	.globl _TH1
                                    135 	.globl _TH0
                                    136 	.globl _TL1
                                    137 	.globl _TL0
                                    138 	.globl _TMOD
                                    139 	.globl _TCON
                                    140 	.globl _PCON
                                    141 	.globl _DPH
                                    142 	.globl _DPL
                                    143 	.globl _SP
                                    144 	.globl _P0
                                    145 ;--------------------------------------------------------
                                    146 ; special function registers
                                    147 ;--------------------------------------------------------
                                    148 	.area RSEG    (ABS,DATA)
      000000                        149 	.org 0x0000
                           000080   150 _P0	=	0x0080
                           000081   151 _SP	=	0x0081
                           000082   152 _DPL	=	0x0082
                           000083   153 _DPH	=	0x0083
                           000087   154 _PCON	=	0x0087
                           000088   155 _TCON	=	0x0088
                           000089   156 _TMOD	=	0x0089
                           00008A   157 _TL0	=	0x008a
                           00008B   158 _TL1	=	0x008b
                           00008C   159 _TH0	=	0x008c
                           00008D   160 _TH1	=	0x008d
                           000090   161 _P1	=	0x0090
                           000098   162 _SCON	=	0x0098
                           000099   163 _SBUF	=	0x0099
                           0000A0   164 _P2	=	0x00a0
                           0000A8   165 _IE	=	0x00a8
                           0000B0   166 _P3	=	0x00b0
                           0000B8   167 _IP	=	0x00b8
                           0000C8   168 _T2CON	=	0x00c8
                           0000C9   169 _T2MOD	=	0x00c9
                           0000CA   170 _RCAP2L	=	0x00ca
                           0000CB   171 _RCAP2H	=	0x00cb
                           0000CC   172 _TL2	=	0x00cc
                           0000CD   173 _TH2	=	0x00cd
                           0000D0   174 _PSW	=	0x00d0
                           0000E0   175 _ACC	=	0x00e0
                           0000E0   176 _A	=	0x00e0
                           0000F0   177 _B	=	0x00f0
                                    178 ;--------------------------------------------------------
                                    179 ; special function bits
                                    180 ;--------------------------------------------------------
                                    181 	.area RSEG    (ABS,DATA)
      000000                        182 	.org 0x0000
                           000080   183 _P0_0	=	0x0080
                           000081   184 _P0_1	=	0x0081
                           000082   185 _P0_2	=	0x0082
                           000083   186 _P0_3	=	0x0083
                           000084   187 _P0_4	=	0x0084
                           000085   188 _P0_5	=	0x0085
                           000086   189 _P0_6	=	0x0086
                           000087   190 _P0_7	=	0x0087
                           000088   191 _IT0	=	0x0088
                           000089   192 _IE0	=	0x0089
                           00008A   193 _IT1	=	0x008a
                           00008B   194 _IE1	=	0x008b
                           00008C   195 _TR0	=	0x008c
                           00008D   196 _TF0	=	0x008d
                           00008E   197 _TR1	=	0x008e
                           00008F   198 _TF1	=	0x008f
                           000090   199 _P1_0	=	0x0090
                           000091   200 _P1_1	=	0x0091
                           000092   201 _P1_2	=	0x0092
                           000093   202 _P1_3	=	0x0093
                           000094   203 _P1_4	=	0x0094
                           000095   204 _P1_5	=	0x0095
                           000096   205 _P1_6	=	0x0096
                           000097   206 _P1_7	=	0x0097
                           000090   207 _T2	=	0x0090
                           000091   208 _T2EX	=	0x0091
                           000098   209 _RI	=	0x0098
                           000099   210 _TI	=	0x0099
                           00009A   211 _RB8	=	0x009a
                           00009B   212 _TB8	=	0x009b
                           00009C   213 _REN	=	0x009c
                           00009D   214 _SM2	=	0x009d
                           00009E   215 _SM1	=	0x009e
                           00009F   216 _SM0	=	0x009f
                           0000A0   217 _P2_0	=	0x00a0
                           0000A1   218 _P2_1	=	0x00a1
                           0000A2   219 _P2_2	=	0x00a2
                           0000A3   220 _P2_3	=	0x00a3
                           0000A4   221 _P2_4	=	0x00a4
                           0000A5   222 _P2_5	=	0x00a5
                           0000A6   223 _P2_6	=	0x00a6
                           0000A7   224 _P2_7	=	0x00a7
                           0000A8   225 _EX0	=	0x00a8
                           0000A9   226 _ET0	=	0x00a9
                           0000AA   227 _EX1	=	0x00aa
                           0000AB   228 _ET1	=	0x00ab
                           0000AC   229 _ES	=	0x00ac
                           0000AD   230 _ET2	=	0x00ad
                           0000AF   231 _EA	=	0x00af
                           0000B0   232 _P3_0	=	0x00b0
                           0000B1   233 _P3_1	=	0x00b1
                           0000B2   234 _P3_2	=	0x00b2
                           0000B3   235 _P3_3	=	0x00b3
                           0000B4   236 _P3_4	=	0x00b4
                           0000B5   237 _P3_5	=	0x00b5
                           0000B6   238 _P3_6	=	0x00b6
                           0000B7   239 _P3_7	=	0x00b7
                           0000B0   240 _RXD	=	0x00b0
                           0000B1   241 _TXD	=	0x00b1
                           0000B2   242 _INT0	=	0x00b2
                           0000B3   243 _INT1	=	0x00b3
                           0000B4   244 _T0	=	0x00b4
                           0000B5   245 _T1	=	0x00b5
                           0000B6   246 _WR	=	0x00b6
                           0000B7   247 _RD	=	0x00b7
                           0000B8   248 _PX0	=	0x00b8
                           0000B9   249 _PT0	=	0x00b9
                           0000BA   250 _PX1	=	0x00ba
                           0000BB   251 _PT1	=	0x00bb
                           0000BC   252 _PS	=	0x00bc
                           0000BD   253 _PT2	=	0x00bd
                           0000C8   254 _T2CON_0	=	0x00c8
                           0000C9   255 _T2CON_1	=	0x00c9
                           0000CA   256 _T2CON_2	=	0x00ca
                           0000CB   257 _T2CON_3	=	0x00cb
                           0000CC   258 _T2CON_4	=	0x00cc
                           0000CD   259 _T2CON_5	=	0x00cd
                           0000CE   260 _T2CON_6	=	0x00ce
                           0000CF   261 _T2CON_7	=	0x00cf
                           0000C8   262 _CP_RL2	=	0x00c8
                           0000C9   263 _C_T2	=	0x00c9
                           0000CA   264 _TR2	=	0x00ca
                           0000CB   265 _EXEN2	=	0x00cb
                           0000CC   266 _TCLK	=	0x00cc
                           0000CD   267 _RCLK	=	0x00cd
                           0000CE   268 _EXF2	=	0x00ce
                           0000CF   269 _TF2	=	0x00cf
                           0000D0   270 _P	=	0x00d0
                           0000D1   271 _FL	=	0x00d1
                           0000D2   272 _OV	=	0x00d2
                           0000D3   273 _RS0	=	0x00d3
                           0000D4   274 _RS1	=	0x00d4
                           0000D5   275 _F0	=	0x00d5
                           0000D6   276 _AC	=	0x00d6
                           0000D7   277 _CY	=	0x00d7
                                    278 ;--------------------------------------------------------
                                    279 ; overlayable register banks
                                    280 ;--------------------------------------------------------
                                    281 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        282 	.ds 8
                                    283 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        284 	.ds 8
                                    285 ;--------------------------------------------------------
                                    286 ; overlayable bit register bank
                                    287 ;--------------------------------------------------------
                                    288 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        289 bits:
      000020                        290 	.ds 1
                           008000   291 	b0 = bits[0]
                           008100   292 	b1 = bits[1]
                           008200   293 	b2 = bits[2]
                           008300   294 	b3 = bits[3]
                           008400   295 	b4 = bits[4]
                           008500   296 	b5 = bits[5]
                           008600   297 	b6 = bits[6]
                           008700   298 	b7 = bits[7]
                                    299 ;--------------------------------------------------------
                                    300 ; internal ram data
                                    301 ;--------------------------------------------------------
                                    302 	.area DSEG    (DATA)
                                    303 ;--------------------------------------------------------
                                    304 ; overlayable items in internal ram 
                                    305 ;--------------------------------------------------------
                                    306 ;--------------------------------------------------------
                                    307 ; Stack segment in internal ram 
                                    308 ;--------------------------------------------------------
                                    309 	.area	SSEG
      00004B                        310 __start__stack:
      00004B                        311 	.ds	1
                                    312 
                                    313 ;--------------------------------------------------------
                                    314 ; indirectly addressable internal ram data
                                    315 ;--------------------------------------------------------
                                    316 	.area ISEG    (DATA)
      000021                        317 _digits:
      000021                        318 	.ds 16
      000031                        319 _i0:
      000031                        320 	.ds 1
      000032                        321 _i1:
      000032                        322 	.ds 1
      000033                        323 _x:
      000033                        324 	.ds 2
      000035                        325 _y:
      000035                        326 	.ds 2
      000037                        327 _j:
      000037                        328 	.ds 2
      000039                        329 _c:
      000039                        330 	.ds 2
      00003B                        331 _bstep:
      00003B                        332 	.ds 1
      00003C                        333 _n:
      00003C                        334 	.ds 1
      00003D                        335 _fixed:
      00003D                        336 	.ds 1
      00003E                        337 _cycle2:
      00003E                        338 	.ds 1
      00003F                        339 _x1:
      00003F                        340 	.ds 2
      000041                        341 _y1:
      000041                        342 	.ds 2
      000043                        343 _generation:
      000043                        344 	.ds 4
      000047                        345 _busy:
      000047                        346 	.ds 4
                                    347 ;--------------------------------------------------------
                                    348 ; absolute internal ram data
                                    349 ;--------------------------------------------------------
                                    350 	.area IABS    (ABS,DATA)
                                    351 	.area IABS    (ABS,DATA)
                                    352 ;--------------------------------------------------------
                                    353 ; bit data
                                    354 ;--------------------------------------------------------
                                    355 	.area BSEG    (BIT)
                                    356 ;--------------------------------------------------------
                                    357 ; paged external ram data
                                    358 ;--------------------------------------------------------
                                    359 	.area PSEG    (PAG,XDATA)
                                    360 ;--------------------------------------------------------
                                    361 ; external ram data
                                    362 ;--------------------------------------------------------
                                    363 	.area XSEG    (XDATA)
      006000                        364 _pu:
      006000                        365 	.ds 9216
      008400                        366 _u:
      008400                        367 	.ds 9216
      00A800                        368 _nu:
      00A800                        369 	.ds 9216
      00CC00                        370 _main_R_65536_165:
      00CC00                        371 	.ds 2
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
      002003 02 20 DC         [24]  396 	ljmp	_int0
      002006                        397 	.ds	5
      00200B 32               [24]  398 	reti
      00200C                        399 	.ds	7
      002013 02 20 E8         [24]  400 	ljmp	_int1
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
                                    414 ;------------------------------------------------------------
                                    415 ;Allocation info for local variables in function 'main'
                                    416 ;------------------------------------------------------------
                                    417 ;__2621440023              Allocated to registers 
                                    418 ;s                         Allocated to registers r5 r6 r7 
                                    419 ;__1310720013              Allocated to registers 
                                    420 ;s                         Allocated to registers r5 r6 r7 
                                    421 ;__1310720015              Allocated to registers r6 r7 
                                    422 ;a                         Allocated to registers r4 r5 
                                    423 ;__1310720017              Allocated to registers 
                                    424 ;s                         Allocated to registers r5 r6 r7 
                                    425 ;__1310720019              Allocated to registers 
                                    426 ;s                         Allocated to registers r5 r6 r7 
                                    427 ;__1310720021              Allocated to registers 
                                    428 ;s                         Allocated to registers r5 r6 r7 
                                    429 ;__2621440028              Allocated to registers 
                                    430 ;s                         Allocated to registers r5 r6 r7 
                                    431 ;__4587520032              Allocated to registers 
                                    432 ;s                         Allocated to registers r5 r6 r7 
                                    433 ;__4587520034              Allocated to registers 
                                    434 ;s                         Allocated to registers r5 r6 r7 
                                    435 ;__4587520036              Allocated to registers 
                                    436 ;s                         Allocated to registers r5 r6 r7 
                                    437 ;__3276800038              Allocated to registers 
                                    438 ;s                         Allocated to registers r5 r6 r7 
                                    439 ;__1310720040              Allocated to registers 
                                    440 ;s                         Allocated to registers r5 r6 r7 
                                    441 ;sloc0                     Allocated to stack - _bp +1
                                    442 ;sloc1                     Allocated to stack - _bp +2
                                    443 ;sloc2                     Allocated to stack - _bp +4
                                    444 ;sloc3                     Allocated to stack - _bp +6
                                    445 ;sloc4                     Allocated to stack - _bp +8
                                    446 ;sloc5                     Allocated to stack - _bp +10
                                    447 ;sloc6                     Allocated to stack - _bp +12
                                    448 ;R                         Allocated with name '_main_R_65536_165'
                                    449 ;------------------------------------------------------------
                                    450 ;	life.c:222: static volatile __xdata int *R = (__xdata int *)0xfffe;
      002072 90 CC 00         [24]  451 	mov	dptr,#_main_R_65536_165
      002075 74 FE            [12]  452 	mov	a,#0xfe
      002077 F0               [24]  453 	movx	@dptr,a
      002078 04               [12]  454 	inc	a
      002079 A3               [24]  455 	inc	dptr
      00207A F0               [24]  456 	movx	@dptr,a
                                    457 ;	life.c:26: __idata static const char digits[16] = {
      00207B 78 21            [12]  458 	mov	r0,#_digits
      00207D 76 30            [12]  459 	mov	@r0,#0x30
      00207F 78 22            [12]  460 	mov	r0,#(_digits + 0x0001)
      002081 76 31            [12]  461 	mov	@r0,#0x31
      002083 78 23            [12]  462 	mov	r0,#(_digits + 0x0002)
      002085 76 32            [12]  463 	mov	@r0,#0x32
      002087 78 24            [12]  464 	mov	r0,#(_digits + 0x0003)
      002089 76 33            [12]  465 	mov	@r0,#0x33
      00208B 78 25            [12]  466 	mov	r0,#(_digits + 0x0004)
      00208D 76 34            [12]  467 	mov	@r0,#0x34
      00208F 78 26            [12]  468 	mov	r0,#(_digits + 0x0005)
      002091 76 35            [12]  469 	mov	@r0,#0x35
      002093 78 27            [12]  470 	mov	r0,#(_digits + 0x0006)
      002095 76 36            [12]  471 	mov	@r0,#0x36
      002097 78 28            [12]  472 	mov	r0,#(_digits + 0x0007)
      002099 76 37            [12]  473 	mov	@r0,#0x37
      00209B 78 29            [12]  474 	mov	r0,#(_digits + 0x0008)
      00209D 76 38            [12]  475 	mov	@r0,#0x38
      00209F 78 2A            [12]  476 	mov	r0,#(_digits + 0x0009)
      0020A1 76 39            [12]  477 	mov	@r0,#0x39
      0020A3 78 2B            [12]  478 	mov	r0,#(_digits + 0x000a)
      0020A5 76 41            [12]  479 	mov	@r0,#0x41
      0020A7 78 2C            [12]  480 	mov	r0,#(_digits + 0x000b)
      0020A9 76 42            [12]  481 	mov	@r0,#0x42
      0020AB 78 2D            [12]  482 	mov	r0,#(_digits + 0x000c)
      0020AD 76 43            [12]  483 	mov	@r0,#0x43
      0020AF 78 2E            [12]  484 	mov	r0,#(_digits + 0x000d)
      0020B1 76 44            [12]  485 	mov	@r0,#0x44
      0020B3 78 2F            [12]  486 	mov	r0,#(_digits + 0x000e)
      0020B5 76 45            [12]  487 	mov	@r0,#0x45
      0020B7 78 30            [12]  488 	mov	r0,#(_digits + 0x000f)
      0020B9 76 46            [12]  489 	mov	@r0,#0x46
                                    490 ;	life.c:174: __idata static const char busy[4] = { '\\', '|', '/', '-' };
      0020BB 78 47            [12]  491 	mov	r0,#_busy
      0020BD 76 5C            [12]  492 	mov	@r0,#0x5c
      0020BF 78 48            [12]  493 	mov	r0,#(_busy + 0x0001)
      0020C1 76 7C            [12]  494 	mov	@r0,#0x7c
      0020C3 78 49            [12]  495 	mov	r0,#(_busy + 0x0002)
      0020C5 76 2F            [12]  496 	mov	@r0,#0x2f
      0020C7 78 4A            [12]  497 	mov	r0,#(_busy + 0x0003)
      0020C9 76 2D            [12]  498 	mov	@r0,#0x2d
                                    499 	.area GSFINAL (CODE)
      0020CB 02 20 16         [24]  500 	ljmp	__sdcc_program_startup
                                    501 ;--------------------------------------------------------
                                    502 ; Home
                                    503 ;--------------------------------------------------------
                                    504 	.area HOME    (CODE)
                                    505 	.area HOME    (CODE)
      002016                        506 __sdcc_program_startup:
      002016 02 22 E7         [24]  507 	ljmp	_main
                                    508 ;	return from main will return to caller
                                    509 ;--------------------------------------------------------
                                    510 ; code
                                    511 ;--------------------------------------------------------
                                    512 	.area CSEG    (CODE)
                                    513 ;------------------------------------------------------------
                                    514 ;Allocation info for local variables in function 'putchar'
                                    515 ;------------------------------------------------------------
                                    516 ;c                         Allocated to registers 
                                    517 ;------------------------------------------------------------
                                    518 ;	life.c:9: int putchar(int c) __naked {
                                    519 ;	-----------------------------------------
                                    520 ;	 function putchar
                                    521 ;	-----------------------------------------
      0020CE                        522 _putchar:
                                    523 ;	naked function: no prologue.
                                    524 ;	life.c:14: __endasm;
      0020CE E5 82            [12]  525 	mov	a, dpl
      0020D0 02 00 30         [24]  526 	ljmp	0x0030
                                    527 ;	life.c:15: }
                                    528 ;	naked function: no epilogue.
                                    529 ;------------------------------------------------------------
                                    530 ;Allocation info for local variables in function 'getchar'
                                    531 ;------------------------------------------------------------
                                    532 ;	life.c:17: int getchar(void) __naked {
                                    533 ;	-----------------------------------------
                                    534 ;	 function getchar
                                    535 ;	-----------------------------------------
      0020D3                        536 _getchar:
                                    537 ;	naked function: no prologue.
                                    538 ;	life.c:23: __endasm;
      0020D3 12 00 32         [24]  539 	lcall	0x0032
      0020D6 F5 82            [12]  540 	mov	dpl, a
      0020D8 75 83 00         [24]  541 	mov	dph, #0
      0020DB 22               [24]  542 	ret
                                    543 ;	life.c:24: }
                                    544 ;	naked function: no epilogue.
                                    545 ;------------------------------------------------------------
                                    546 ;Allocation info for local variables in function 'int0'
                                    547 ;------------------------------------------------------------
                                    548 ;	life.c:55: void int0(void) __interrupt IE0_VECTOR __using 1 {
                                    549 ;	-----------------------------------------
                                    550 ;	 function int0
                                    551 ;	-----------------------------------------
      0020DC                        552 _int0:
                           00000F   553 	ar7 = 0x0f
                           00000E   554 	ar6 = 0x0e
                           00000D   555 	ar5 = 0x0d
                           00000C   556 	ar4 = 0x0c
                           00000B   557 	ar3 = 0x0b
                           00000A   558 	ar2 = 0x0a
                           000009   559 	ar1 = 0x09
                           000008   560 	ar0 = 0x08
      0020DC C0 D0            [24]  561 	push	psw
      0020DE 75 D0 08         [24]  562 	mov	psw,#0x08
                                    563 ;	life.c:56: i0 = 1;
      0020E1 78 31            [12]  564 	mov	r0,#_i0
      0020E3 76 01            [12]  565 	mov	@r0,#0x01
                                    566 ;	life.c:57: }
      0020E5 D0 D0            [24]  567 	pop	psw
      0020E7 32               [24]  568 	reti
                                    569 ;	eliminated unneeded push/pop dpl
                                    570 ;	eliminated unneeded push/pop dph
                                    571 ;	eliminated unneeded push/pop b
                                    572 ;	eliminated unneeded push/pop acc
                                    573 ;------------------------------------------------------------
                                    574 ;Allocation info for local variables in function 'int1'
                                    575 ;------------------------------------------------------------
                                    576 ;	life.c:59: void int1(void) __interrupt IE1_VECTOR __using 1 {
                                    577 ;	-----------------------------------------
                                    578 ;	 function int1
                                    579 ;	-----------------------------------------
      0020E8                        580 _int1:
      0020E8 C0 D0            [24]  581 	push	psw
      0020EA 75 D0 08         [24]  582 	mov	psw,#0x08
                                    583 ;	life.c:60: i1 = 1;
      0020ED 78 32            [12]  584 	mov	r0,#_i1
      0020EF 76 01            [12]  585 	mov	@r0,#0x01
                                    586 ;	life.c:61: }
      0020F1 D0 D0            [24]  587 	pop	psw
      0020F3 32               [24]  588 	reti
                                    589 ;	eliminated unneeded push/pop dpl
                                    590 ;	eliminated unneeded push/pop dph
                                    591 ;	eliminated unneeded push/pop b
                                    592 ;	eliminated unneeded push/pop acc
                                    593 ;------------------------------------------------------------
                                    594 ;Allocation info for local variables in function 'show'
                                    595 ;------------------------------------------------------------
                                    596 ;hdr                       Allocated to registers r7 
                                    597 ;__1966080005              Allocated to registers 
                                    598 ;s                         Allocated to registers r5 r6 r7 
                                    599 ;__1310720001              Allocated to registers r6 r7 
                                    600 ;a                         Allocated to registers 
                                    601 ;__1310720003              Allocated to registers r6 r7 
                                    602 ;a                         Allocated to registers 
                                    603 ;__1966080008              Allocated to registers 
                                    604 ;s                         Allocated to registers r5 r6 r7 
                                    605 ;__2621440011              Allocated to registers 
                                    606 ;s                         Allocated to registers r5 r6 r7 
                                    607 ;------------------------------------------------------------
                                    608 ;	life.c:97: void show(char hdr) {
                                    609 ;	-----------------------------------------
                                    610 ;	 function show
                                    611 ;	-----------------------------------------
      0020F4                        612 _show:
                           000007   613 	ar7 = 0x07
                           000006   614 	ar6 = 0x06
                           000005   615 	ar5 = 0x05
                           000004   616 	ar4 = 0x04
                           000003   617 	ar3 = 0x03
                           000002   618 	ar2 = 0x02
                           000001   619 	ar1 = 0x01
                           000000   620 	ar0 = 0x00
                                    621 ;	life.c:98: if (hdr) {
      0020F4 E5 82            [12]  622 	mov	a,dpl
      0020F6 FF               [12]  623 	mov	r7,a
      0020F7 70 03            [24]  624 	jnz	00190$
      0020F9 02 22 4C         [24]  625 	ljmp	00102$
      0020FC                        626 00190$:
                                    627 ;	life.c:99: printstr("\033[2J\033[mGEN ");
      0020FC 7D 4C            [12]  628 	mov	r5,#___str_0
      0020FE 7E 2F            [12]  629 	mov	r6,#(___str_0 >> 8)
      002100 7F 80            [12]  630 	mov	r7,#0x80
                                    631 ;	life.c:50: return;
      002102                        632 00121$:
                                    633 ;	life.c:48: for (; *s; s++) putchar(*s);
      002102 8D 82            [24]  634 	mov	dpl,r5
      002104 8E 83            [24]  635 	mov	dph,r6
      002106 8F F0            [24]  636 	mov	b,r7
      002108 12 2E 24         [24]  637 	lcall	__gptrget
      00210B FC               [12]  638 	mov	r4,a
      00210C 60 10            [24]  639 	jz	00109$
      00210E 7B 00            [12]  640 	mov	r3,#0x00
      002110 8C 82            [24]  641 	mov	dpl,r4
      002112 8B 83            [24]  642 	mov	dph,r3
      002114 12 20 CE         [24]  643 	lcall	_putchar
      002117 0D               [12]  644 	inc	r5
                                    645 ;	life.c:99: printstr("\033[2J\033[mGEN ");
      002118 BD 00 E7         [24]  646 	cjne	r5,#0x00,00121$
      00211B 0E               [12]  647 	inc	r6
      00211C 80 E4            [24]  648 	sjmp	00121$
      00211E                        649 00109$:
                                    650 ;	life.c:91: print16x(generation[1]);
      00211E 78 45            [12]  651 	mov	r0,#(_generation + 0x0002)
      002120 86 06            [24]  652 	mov	ar6,@r0
      002122 08               [12]  653 	inc	r0
                                    654 ;	life.c:39: putchar(digits[(a >> 12) & 0xf]);
      002123 E6               [12]  655 	mov	a,@r0
      002124 FF               [12]  656 	mov	r7,a
      002125 C4               [12]  657 	swap	a
      002126 54 0F            [12]  658 	anl	a,#0x0f
      002128 30 E3 02         [24]  659 	jnb	acc.3,00193$
      00212B 44 F0            [12]  660 	orl	a,#0xf0
      00212D                        661 00193$:
      00212D FC               [12]  662 	mov	r4,a
      00212E 33               [12]  663 	rlc	a
      00212F 95 E0            [12]  664 	subb	a,acc
      002131 53 04 0F         [24]  665 	anl	ar4,#0x0f
      002134 EC               [12]  666 	mov	a,r4
      002135 24 21            [12]  667 	add	a,#_digits
      002137 F9               [12]  668 	mov	r1,a
      002138 87 05            [24]  669 	mov	ar5,@r1
      00213A 7C 00            [12]  670 	mov	r4,#0x00
      00213C 8D 82            [24]  671 	mov	dpl,r5
      00213E 8C 83            [24]  672 	mov	dph,r4
      002140 12 20 CE         [24]  673 	lcall	_putchar
                                    674 ;	life.c:40: putchar(digits[(a >> 8) & 0xf]);
      002143 8F 05            [24]  675 	mov	ar5,r7
      002145 53 05 0F         [24]  676 	anl	ar5,#0x0f
      002148 ED               [12]  677 	mov	a,r5
      002149 24 21            [12]  678 	add	a,#_digits
      00214B F9               [12]  679 	mov	r1,a
      00214C 87 05            [24]  680 	mov	ar5,@r1
      00214E 7C 00            [12]  681 	mov	r4,#0x00
      002150 8D 82            [24]  682 	mov	dpl,r5
      002152 8C 83            [24]  683 	mov	dph,r4
      002154 12 20 CE         [24]  684 	lcall	_putchar
                                    685 ;	life.c:41: putchar(digits[(a >> 4) & 0xf]);
      002157 8E 04            [24]  686 	mov	ar4,r6
      002159 EF               [12]  687 	mov	a,r7
      00215A C4               [12]  688 	swap	a
      00215B CC               [12]  689 	xch	a,r4
      00215C C4               [12]  690 	swap	a
      00215D 54 0F            [12]  691 	anl	a,#0x0f
      00215F 6C               [12]  692 	xrl	a,r4
      002160 CC               [12]  693 	xch	a,r4
      002161 54 0F            [12]  694 	anl	a,#0x0f
      002163 CC               [12]  695 	xch	a,r4
      002164 6C               [12]  696 	xrl	a,r4
      002165 CC               [12]  697 	xch	a,r4
      002166 30 E3 02         [24]  698 	jnb	acc.3,00194$
      002169 44 F0            [12]  699 	orl	a,#0xf0
      00216B                        700 00194$:
      00216B 53 04 0F         [24]  701 	anl	ar4,#0x0f
      00216E EC               [12]  702 	mov	a,r4
      00216F 24 21            [12]  703 	add	a,#_digits
      002171 F9               [12]  704 	mov	r1,a
      002172 87 05            [24]  705 	mov	ar5,@r1
      002174 7C 00            [12]  706 	mov	r4,#0x00
      002176 8D 82            [24]  707 	mov	dpl,r5
      002178 8C 83            [24]  708 	mov	dph,r4
      00217A 12 20 CE         [24]  709 	lcall	_putchar
                                    710 ;	life.c:42: putchar(digits[a & 0xf]);
      00217D 53 06 0F         [24]  711 	anl	ar6,#0x0f
      002180 EE               [12]  712 	mov	a,r6
      002181 24 21            [12]  713 	add	a,#_digits
      002183 F9               [12]  714 	mov	r1,a
      002184 87 07            [24]  715 	mov	ar7,@r1
      002186 7E 00            [12]  716 	mov	r6,#0x00
      002188 8F 82            [24]  717 	mov	dpl,r7
      00218A 8E 83            [24]  718 	mov	dph,r6
      00218C 12 20 CE         [24]  719 	lcall	_putchar
                                    720 ;	life.c:92: print16x(generation[0]);
      00218F 78 43            [12]  721 	mov	r0,#_generation
      002191 86 06            [24]  722 	mov	ar6,@r0
      002193 08               [12]  723 	inc	r0
                                    724 ;	life.c:39: putchar(digits[(a >> 12) & 0xf]);
      002194 E6               [12]  725 	mov	a,@r0
      002195 FF               [12]  726 	mov	r7,a
      002196 C4               [12]  727 	swap	a
      002197 54 0F            [12]  728 	anl	a,#0x0f
      002199 30 E3 02         [24]  729 	jnb	acc.3,00195$
      00219C 44 F0            [12]  730 	orl	a,#0xf0
      00219E                        731 00195$:
      00219E FC               [12]  732 	mov	r4,a
      00219F 33               [12]  733 	rlc	a
      0021A0 95 E0            [12]  734 	subb	a,acc
      0021A2 53 04 0F         [24]  735 	anl	ar4,#0x0f
      0021A5 EC               [12]  736 	mov	a,r4
      0021A6 24 21            [12]  737 	add	a,#_digits
      0021A8 F9               [12]  738 	mov	r1,a
      0021A9 87 05            [24]  739 	mov	ar5,@r1
      0021AB 7C 00            [12]  740 	mov	r4,#0x00
      0021AD 8D 82            [24]  741 	mov	dpl,r5
      0021AF 8C 83            [24]  742 	mov	dph,r4
      0021B1 12 20 CE         [24]  743 	lcall	_putchar
                                    744 ;	life.c:40: putchar(digits[(a >> 8) & 0xf]);
      0021B4 8F 05            [24]  745 	mov	ar5,r7
      0021B6 53 05 0F         [24]  746 	anl	ar5,#0x0f
      0021B9 ED               [12]  747 	mov	a,r5
      0021BA 24 21            [12]  748 	add	a,#_digits
      0021BC F9               [12]  749 	mov	r1,a
      0021BD 87 05            [24]  750 	mov	ar5,@r1
      0021BF 7C 00            [12]  751 	mov	r4,#0x00
      0021C1 8D 82            [24]  752 	mov	dpl,r5
      0021C3 8C 83            [24]  753 	mov	dph,r4
      0021C5 12 20 CE         [24]  754 	lcall	_putchar
                                    755 ;	life.c:41: putchar(digits[(a >> 4) & 0xf]);
      0021C8 8E 04            [24]  756 	mov	ar4,r6
      0021CA EF               [12]  757 	mov	a,r7
      0021CB C4               [12]  758 	swap	a
      0021CC CC               [12]  759 	xch	a,r4
      0021CD C4               [12]  760 	swap	a
      0021CE 54 0F            [12]  761 	anl	a,#0x0f
      0021D0 6C               [12]  762 	xrl	a,r4
      0021D1 CC               [12]  763 	xch	a,r4
      0021D2 54 0F            [12]  764 	anl	a,#0x0f
      0021D4 CC               [12]  765 	xch	a,r4
      0021D5 6C               [12]  766 	xrl	a,r4
      0021D6 CC               [12]  767 	xch	a,r4
      0021D7 30 E3 02         [24]  768 	jnb	acc.3,00196$
      0021DA 44 F0            [12]  769 	orl	a,#0xf0
      0021DC                        770 00196$:
      0021DC 53 04 0F         [24]  771 	anl	ar4,#0x0f
      0021DF EC               [12]  772 	mov	a,r4
      0021E0 24 21            [12]  773 	add	a,#_digits
      0021E2 F9               [12]  774 	mov	r1,a
      0021E3 87 05            [24]  775 	mov	ar5,@r1
      0021E5 7C 00            [12]  776 	mov	r4,#0x00
      0021E7 8D 82            [24]  777 	mov	dpl,r5
      0021E9 8C 83            [24]  778 	mov	dph,r4
      0021EB 12 20 CE         [24]  779 	lcall	_putchar
                                    780 ;	life.c:42: putchar(digits[a & 0xf]);
      0021EE 53 06 0F         [24]  781 	anl	ar6,#0x0f
      0021F1 EE               [12]  782 	mov	a,r6
      0021F2 24 21            [12]  783 	add	a,#_digits
      0021F4 F9               [12]  784 	mov	r1,a
      0021F5 87 07            [24]  785 	mov	ar7,@r1
      0021F7 7E 00            [12]  786 	mov	r6,#0x00
      0021F9 8F 82            [24]  787 	mov	dpl,r7
      0021FB 8E 83            [24]  788 	mov	dph,r6
      0021FD 12 20 CE         [24]  789 	lcall	_putchar
                                    790 ;	life.c:101: printstr("\r\n");
      002200 7D 58            [12]  791 	mov	r5,#___str_1
      002202 7E 2F            [12]  792 	mov	r6,#(___str_1 >> 8)
      002204 7F 80            [12]  793 	mov	r7,#0x80
                                    794 ;	life.c:50: return;
      002206                        795 00124$:
                                    796 ;	life.c:48: for (; *s; s++) putchar(*s);
      002206 8D 82            [24]  797 	mov	dpl,r5
      002208 8E 83            [24]  798 	mov	dph,r6
      00220A 8F F0            [24]  799 	mov	b,r7
      00220C 12 2E 24         [24]  800 	lcall	__gptrget
      00220F FC               [12]  801 	mov	r4,a
      002210 60 10            [24]  802 	jz	00114$
      002212 7B 00            [12]  803 	mov	r3,#0x00
      002214 8C 82            [24]  804 	mov	dpl,r4
      002216 8B 83            [24]  805 	mov	dph,r3
      002218 12 20 CE         [24]  806 	lcall	_putchar
      00221B 0D               [12]  807 	inc	r5
                                    808 ;	life.c:101: printstr("\r\n");
      00221C BD 00 E7         [24]  809 	cjne	r5,#0x00,00124$
      00221F 0E               [12]  810 	inc	r6
      002220 80 E4            [24]  811 	sjmp	00124$
      002222                        812 00114$:
                                    813 ;	life.c:84: generation[0]++;
      002222 78 43            [12]  814 	mov	r0,#_generation
      002224 86 06            [24]  815 	mov	ar6,@r0
      002226 08               [12]  816 	inc	r0
      002227 86 07            [24]  817 	mov	ar7,@r0
      002229 0E               [12]  818 	inc	r6
      00222A BE 00 01         [24]  819 	cjne	r6,#0x00,00199$
      00222D 0F               [12]  820 	inc	r7
      00222E                        821 00199$:
      00222E 78 43            [12]  822 	mov	r0,#_generation
      002230 A6 06            [24]  823 	mov	@r0,ar6
      002232 08               [12]  824 	inc	r0
      002233 A6 07            [24]  825 	mov	@r0,ar7
                                    826 ;	life.c:85: if (!generation[0]) generation[1]++;
      002235 EE               [12]  827 	mov	a,r6
      002236 4F               [12]  828 	orl	a,r7
      002237 70 13            [24]  829 	jnz	00102$
      002239 78 45            [12]  830 	mov	r0,#(_generation + 0x0002)
      00223B 86 06            [24]  831 	mov	ar6,@r0
      00223D 08               [12]  832 	inc	r0
      00223E 86 07            [24]  833 	mov	ar7,@r0
      002240 0E               [12]  834 	inc	r6
      002241 BE 00 01         [24]  835 	cjne	r6,#0x00,00201$
      002244 0F               [12]  836 	inc	r7
      002245                        837 00201$:
      002245 78 45            [12]  838 	mov	r0,#(_generation + 0x0002)
      002247 A6 06            [24]  839 	mov	@r0,ar6
      002249 08               [12]  840 	inc	r0
      00224A A6 07            [24]  841 	mov	@r0,ar7
                                    842 ;	life.c:102: updategen();
      00224C                        843 00102$:
                                    844 ;	life.c:105: for (x = 0; x < W; x++) {
      00224C 78 33            [12]  845 	mov	r0,#_x
      00224E E4               [12]  846 	clr	a
      00224F F6               [12]  847 	mov	@r0,a
      002250 08               [12]  848 	inc	r0
      002251 F6               [12]  849 	mov	@r0,a
      002252                        850 00131$:
                                    851 ;	life.c:106: for (y = 0; y < H; y++)
      002252 78 35            [12]  852 	mov	r0,#_y
      002254 E4               [12]  853 	clr	a
      002255 F6               [12]  854 	mov	@r0,a
      002256 08               [12]  855 	inc	r0
      002257 F6               [12]  856 	mov	@r0,a
      002258                        857 00126$:
                                    858 ;	life.c:107: if (u[A2D(W, y, x)]) putchar('1');
      002258 78 35            [12]  859 	mov	r0,#_y
      00225A E6               [12]  860 	mov	a,@r0
      00225B C0 E0            [24]  861 	push	acc
      00225D 08               [12]  862 	inc	r0
      00225E E6               [12]  863 	mov	a,@r0
      00225F C0 E0            [24]  864 	push	acc
      002261 90 00 30         [24]  865 	mov	dptr,#0x0030
      002264 12 2C 62         [24]  866 	lcall	__mulint
      002267 AE 82            [24]  867 	mov	r6,dpl
      002269 AF 83            [24]  868 	mov	r7,dph
      00226B 15 81            [12]  869 	dec	sp
      00226D 15 81            [12]  870 	dec	sp
      00226F 78 33            [12]  871 	mov	r0,#_x
      002271 E6               [12]  872 	mov	a,@r0
      002272 2E               [12]  873 	add	a,r6
      002273 FE               [12]  874 	mov	r6,a
      002274 08               [12]  875 	inc	r0
      002275 E6               [12]  876 	mov	a,@r0
      002276 3F               [12]  877 	addc	a,r7
      002277 FF               [12]  878 	mov	r7,a
      002278 EE               [12]  879 	mov	a,r6
      002279 24 00            [12]  880 	add	a,#_u
      00227B FE               [12]  881 	mov	r6,a
      00227C EF               [12]  882 	mov	a,r7
      00227D 34 84            [12]  883 	addc	a,#(_u >> 8)
      00227F FF               [12]  884 	mov	r7,a
      002280 8E 82            [24]  885 	mov	dpl,r6
      002282 8F 83            [24]  886 	mov	dph,r7
      002284 E0               [24]  887 	movx	a,@dptr
      002285 60 08            [24]  888 	jz	00104$
      002287 90 00 31         [24]  889 	mov	dptr,#0x0031
      00228A 12 20 CE         [24]  890 	lcall	_putchar
      00228D 80 06            [24]  891 	sjmp	00127$
      00228F                        892 00104$:
                                    893 ;	life.c:108: else putchar('0');
      00228F 90 00 30         [24]  894 	mov	dptr,#0x0030
      002292 12 20 CE         [24]  895 	lcall	_putchar
      002295                        896 00127$:
                                    897 ;	life.c:106: for (y = 0; y < H; y++)
      002295 78 35            [12]  898 	mov	r0,#_y
      002297 06               [12]  899 	inc	@r0
      002298 B6 00 02         [24]  900 	cjne	@r0,#0x00,00203$
      00229B 08               [12]  901 	inc	r0
      00229C 06               [12]  902 	inc	@r0
      00229D                        903 00203$:
      00229D 78 35            [12]  904 	mov	r0,#_y
      00229F C3               [12]  905 	clr	c
      0022A0 E6               [12]  906 	mov	a,@r0
      0022A1 94 C0            [12]  907 	subb	a,#0xc0
      0022A3 08               [12]  908 	inc	r0
      0022A4 E6               [12]  909 	mov	a,@r0
      0022A5 64 80            [12]  910 	xrl	a,#0x80
      0022A7 94 80            [12]  911 	subb	a,#0x80
      0022A9 40 AD            [24]  912 	jc	00126$
                                    913 ;	life.c:109: printstr("\r\n");
      0022AB 7D 58            [12]  914 	mov	r5,#___str_1
      0022AD 7E 2F            [12]  915 	mov	r6,#(___str_1 >> 8)
      0022AF 7F 80            [12]  916 	mov	r7,#0x80
                                    917 ;	life.c:50: return;
      0022B1                        918 00129$:
                                    919 ;	life.c:48: for (; *s; s++) putchar(*s);
      0022B1 8D 82            [24]  920 	mov	dpl,r5
      0022B3 8E 83            [24]  921 	mov	dph,r6
      0022B5 8F F0            [24]  922 	mov	b,r7
      0022B7 12 2E 24         [24]  923 	lcall	__gptrget
      0022BA FC               [12]  924 	mov	r4,a
      0022BB 60 10            [24]  925 	jz	00119$
      0022BD 7B 00            [12]  926 	mov	r3,#0x00
      0022BF 8C 82            [24]  927 	mov	dpl,r4
      0022C1 8B 83            [24]  928 	mov	dph,r3
      0022C3 12 20 CE         [24]  929 	lcall	_putchar
      0022C6 0D               [12]  930 	inc	r5
                                    931 ;	life.c:109: printstr("\r\n");
      0022C7 BD 00 E7         [24]  932 	cjne	r5,#0x00,00129$
      0022CA 0E               [12]  933 	inc	r6
      0022CB 80 E4            [24]  934 	sjmp	00129$
      0022CD                        935 00119$:
                                    936 ;	life.c:105: for (x = 0; x < W; x++) {
      0022CD 78 33            [12]  937 	mov	r0,#_x
      0022CF 06               [12]  938 	inc	@r0
      0022D0 B6 00 02         [24]  939 	cjne	@r0,#0x00,00207$
      0022D3 08               [12]  940 	inc	r0
      0022D4 06               [12]  941 	inc	@r0
      0022D5                        942 00207$:
      0022D5 78 33            [12]  943 	mov	r0,#_x
      0022D7 C3               [12]  944 	clr	c
      0022D8 E6               [12]  945 	mov	a,@r0
      0022D9 94 30            [12]  946 	subb	a,#0x30
      0022DB 08               [12]  947 	inc	r0
      0022DC E6               [12]  948 	mov	a,@r0
      0022DD 64 80            [12]  949 	xrl	a,#0x80
      0022DF 94 80            [12]  950 	subb	a,#0x80
      0022E1 50 03            [24]  951 	jnc	00208$
      0022E3 02 22 52         [24]  952 	ljmp	00131$
      0022E6                        953 00208$:
                                    954 ;	life.c:112: return;
                                    955 ;	life.c:113: }
      0022E6 22               [24]  956 	ret
                                    957 ;------------------------------------------------------------
                                    958 ;Allocation info for local variables in function 'main'
                                    959 ;------------------------------------------------------------
                                    960 ;__2621440023              Allocated to registers 
                                    961 ;s                         Allocated to registers r5 r6 r7 
                                    962 ;__1310720013              Allocated to registers 
                                    963 ;s                         Allocated to registers r5 r6 r7 
                                    964 ;__1310720015              Allocated to registers r6 r7 
                                    965 ;a                         Allocated to registers r4 r5 
                                    966 ;__1310720017              Allocated to registers 
                                    967 ;s                         Allocated to registers r5 r6 r7 
                                    968 ;__1310720019              Allocated to registers 
                                    969 ;s                         Allocated to registers r5 r6 r7 
                                    970 ;__1310720021              Allocated to registers 
                                    971 ;s                         Allocated to registers r5 r6 r7 
                                    972 ;__2621440028              Allocated to registers 
                                    973 ;s                         Allocated to registers r5 r6 r7 
                                    974 ;__4587520032              Allocated to registers 
                                    975 ;s                         Allocated to registers r5 r6 r7 
                                    976 ;__4587520034              Allocated to registers 
                                    977 ;s                         Allocated to registers r5 r6 r7 
                                    978 ;__4587520036              Allocated to registers 
                                    979 ;s                         Allocated to registers r5 r6 r7 
                                    980 ;__3276800038              Allocated to registers 
                                    981 ;s                         Allocated to registers r5 r6 r7 
                                    982 ;__1310720040              Allocated to registers 
                                    983 ;s                         Allocated to registers r5 r6 r7 
                                    984 ;sloc0                     Allocated to stack - _bp +1
                                    985 ;sloc1                     Allocated to stack - _bp +2
                                    986 ;sloc2                     Allocated to stack - _bp +4
                                    987 ;sloc3                     Allocated to stack - _bp +6
                                    988 ;sloc4                     Allocated to stack - _bp +8
                                    989 ;sloc5                     Allocated to stack - _bp +10
                                    990 ;sloc6                     Allocated to stack - _bp +12
                                    991 ;R                         Allocated with name '_main_R_65536_165'
                                    992 ;------------------------------------------------------------
                                    993 ;	life.c:221: void main(void) {
                                    994 ;	-----------------------------------------
                                    995 ;	 function main
                                    996 ;	-----------------------------------------
      0022E7                        997 _main:
      0022E7 C0 10            [24]  998 	push	_bp
      0022E9 E5 81            [12]  999 	mov	a,sp
      0022EB F5 10            [12] 1000 	mov	_bp,a
      0022ED 24 0D            [12] 1001 	add	a,#0x0d
      0022EF F5 81            [12] 1002 	mov	sp,a
                                   1003 ;	life.c:224: srand(*R);
      0022F1 90 CC 00         [24] 1004 	mov	dptr,#_main_R_65536_165
      0022F4 E0               [24] 1005 	movx	a,@dptr
      0022F5 FE               [12] 1006 	mov	r6,a
      0022F6 A3               [24] 1007 	inc	dptr
      0022F7 E0               [24] 1008 	movx	a,@dptr
      0022F8 FF               [12] 1009 	mov	r7,a
      0022F9 8E 82            [24] 1010 	mov	dpl,r6
      0022FB 8F 83            [24] 1011 	mov	dph,r7
      0022FD E0               [24] 1012 	movx	a,@dptr
      0022FE FE               [12] 1013 	mov	r6,a
      0022FF A3               [24] 1014 	inc	dptr
      002300 E0               [24] 1015 	movx	a,@dptr
      002301 FF               [12] 1016 	mov	r7,a
      002302 8E 82            [24] 1017 	mov	dpl,r6
      002304 8F 83            [24] 1018 	mov	dph,r7
      002306 12 2C 49         [24] 1019 	lcall	_srand
                                   1020 ;	life.c:226: IT0 = 1;
                                   1021 ;	assignBit
      002309 D2 88            [12] 1022 	setb	_IT0
                                   1023 ;	life.c:227: IT1 = 1;
                                   1024 ;	assignBit
      00230B D2 8A            [12] 1025 	setb	_IT1
                                   1026 ;	life.c:228: EX0 = 1;
                                   1027 ;	assignBit
      00230D D2 A8            [12] 1028 	setb	_EX0
                                   1029 ;	life.c:229: EX1 = 1;
                                   1030 ;	assignBit
      00230F D2 AA            [12] 1031 	setb	_EX1
                                   1032 ;	life.c:230: EA = 1;
                                   1033 ;	assignBit
      002311 D2 AF            [12] 1034 	setb	_EA
                                   1035 ;	life.c:232: for (i0 = 0; !i0; ) {		
      002313 78 31            [12] 1036 	mov	r0,#_i0
      002315 76 00            [12] 1037 	mov	@r0,#0x00
      002317                       1038 00242$:
                                   1039 ;	life.c:233: printstr("\033[2J\033[?25l\033[mLIFE INIT T L R\r\n");
      002317 7D 6D            [12] 1040 	mov	r5,#___str_5
      002319 7E 2F            [12] 1041 	mov	r6,#(___str_5 >> 8)
      00231B 7F 80            [12] 1042 	mov	r7,#0x80
                                   1043 ;	life.c:50: return;
      00231D                       1044 00198$:
                                   1045 ;	life.c:48: for (; *s; s++) putchar(*s);
      00231D 8D 82            [24] 1046 	mov	dpl,r5
      00231F 8E 83            [24] 1047 	mov	dph,r6
      002321 8F F0            [24] 1048 	mov	b,r7
      002323 12 2E 24         [24] 1049 	lcall	__gptrget
      002326 FC               [12] 1050 	mov	r4,a
      002327 60 10            [24] 1051 	jz	00109$
      002329 7B 00            [12] 1052 	mov	r3,#0x00
      00232B 8C 82            [24] 1053 	mov	dpl,r4
      00232D 8B 83            [24] 1054 	mov	dph,r3
      00232F 12 20 CE         [24] 1055 	lcall	_putchar
      002332 0D               [12] 1056 	inc	r5
                                   1057 ;	life.c:234: while (1) {
      002333 BD 00 E7         [24] 1058 	cjne	r5,#0x00,00198$
      002336 0E               [12] 1059 	inc	r6
      002337 80 E4            [24] 1060 	sjmp	00198$
      002339                       1061 00109$:
                                   1062 ;	life.c:235: c = toupper(getchar());
      002339 12 20 D3         [24] 1063 	lcall	_getchar
      00233C 12 2D FD         [24] 1064 	lcall	_toupper
      00233F AE 82            [24] 1065 	mov	r6,dpl
      002341 AF 83            [24] 1066 	mov	r7,dph
      002343 78 39            [12] 1067 	mov	r0,#_c
      002345 A6 06            [24] 1068 	mov	@r0,ar6
      002347 08               [12] 1069 	inc	r0
      002348 A6 07            [24] 1070 	mov	@r0,ar7
                                   1071 ;	life.c:236: if (i0 || (c == (int)'T')) goto terminate;
      00234A 78 31            [12] 1072 	mov	r0,#_i0
      00234C E6               [12] 1073 	mov	a,@r0
      00234D 60 03            [24] 1074 	jz	00500$
      00234F 02 2B 55         [24] 1075 	ljmp	00138$
      002352                       1076 00500$:
      002352 BE 54 06         [24] 1077 	cjne	r6,#0x54,00501$
      002355 BF 00 03         [24] 1078 	cjne	r7,#0x00,00501$
      002358 02 2B 55         [24] 1079 	ljmp	00138$
      00235B                       1080 00501$:
                                   1081 ;	life.c:237: else if ((c == (int)'L') || (c == (int)'R')) break;
      00235B BE 4C 05         [24] 1082 	cjne	r6,#0x4c,00502$
      00235E BF 00 02         [24] 1083 	cjne	r7,#0x00,00502$
      002361 80 06            [24] 1084 	sjmp	00285$
      002363                       1085 00502$:
      002363 BE 52 D3         [24] 1086 	cjne	r6,#0x52,00109$
      002366 BF 00 D0         [24] 1087 	cjne	r7,#0x00,00109$
                                   1088 ;	life.c:240: reload:
      002369                       1089 00285$:
      002369                       1090 00111$:
                                   1091 ;	life.c:116: memset(u, 0, sizeof (u));
      002369 E4               [12] 1092 	clr	a
      00236A C0 E0            [24] 1093 	push	acc
      00236C 74 24            [12] 1094 	mov	a,#0x24
      00236E C0 E0            [24] 1095 	push	acc
      002370 E4               [12] 1096 	clr	a
      002371 C0 E0            [24] 1097 	push	acc
      002373 90 84 00         [24] 1098 	mov	dptr,#_u
      002376 75 F0 00         [24] 1099 	mov	b,#0x00
      002379 12 2D 93         [24] 1100 	lcall	_memset
      00237C 15 81            [12] 1101 	dec	sp
      00237E 15 81            [12] 1102 	dec	sp
      002380 15 81            [12] 1103 	dec	sp
                                   1104 ;	life.c:117: memset(pu, 0, sizeof (pu));
      002382 E4               [12] 1105 	clr	a
      002383 C0 E0            [24] 1106 	push	acc
      002385 74 24            [12] 1107 	mov	a,#0x24
      002387 C0 E0            [24] 1108 	push	acc
      002389 E4               [12] 1109 	clr	a
      00238A C0 E0            [24] 1110 	push	acc
      00238C 90 60 00         [24] 1111 	mov	dptr,#_pu
      00238F 75 F0 00         [24] 1112 	mov	b,#0x00
      002392 12 2D 93         [24] 1113 	lcall	_memset
      002395 15 81            [12] 1114 	dec	sp
      002397 15 81            [12] 1115 	dec	sp
      002399 15 81            [12] 1116 	dec	sp
                                   1117 ;	life.c:242: if (c == (int)'L') loadu();
      00239B 78 39            [12] 1118 	mov	r0,#_c
      00239D B6 4C 06         [24] 1119 	cjne	@r0,#0x4c,00505$
      0023A0 08               [12] 1120 	inc	r0
      0023A1 B6 00 02         [24] 1121 	cjne	@r0,#0x00,00505$
      0023A4 80 03            [24] 1122 	sjmp	00506$
      0023A6                       1123 00505$:
      0023A6 02 25 33         [24] 1124 	ljmp	00113$
      0023A9                       1125 00506$:
                                   1126 ;	life.c:123: j = 0;
      0023A9 78 37            [12] 1127 	mov	r0,#_j
      0023AB E4               [12] 1128 	clr	a
      0023AC F6               [12] 1129 	mov	@r0,a
      0023AD 08               [12] 1130 	inc	r0
      0023AE F6               [12] 1131 	mov	@r0,a
                                   1132 ;	life.c:125: printstr("LOAD <");
      0023AF 7D 5B            [12] 1133 	mov	r5,#___str_2
      0023B1 7E 2F            [12] 1134 	mov	r6,#(___str_2 >> 8)
      0023B3 7F 80            [12] 1135 	mov	r7,#0x80
                                   1136 ;	life.c:50: return;
      0023B5                       1137 00201$:
                                   1138 ;	life.c:48: for (; *s; s++) putchar(*s);
      0023B5 8D 82            [24] 1139 	mov	dpl,r5
      0023B7 8E 83            [24] 1140 	mov	dph,r6
      0023B9 8F F0            [24] 1141 	mov	b,r7
      0023BB 12 2E 24         [24] 1142 	lcall	__gptrget
      0023BE FC               [12] 1143 	mov	r4,a
      0023BF 60 10            [24] 1144 	jz	00143$
      0023C1 7B 00            [12] 1145 	mov	r3,#0x00
      0023C3 8C 82            [24] 1146 	mov	dpl,r4
      0023C5 8B 83            [24] 1147 	mov	dph,r3
      0023C7 12 20 CE         [24] 1148 	lcall	_putchar
      0023CA 0D               [12] 1149 	inc	r5
                                   1150 ;	life.c:125: printstr("LOAD <");
      0023CB BD 00 E7         [24] 1151 	cjne	r5,#0x00,00201$
      0023CE 0E               [12] 1152 	inc	r6
      0023CF 80 E4            [24] 1153 	sjmp	00201$
      0023D1                       1154 00143$:
                                   1155 ;	life.c:127: for (y = 0; y < (H * W); y += W) {
      0023D1 78 35            [12] 1156 	mov	r0,#_y
      0023D3 E4               [12] 1157 	clr	a
      0023D4 F6               [12] 1158 	mov	@r0,a
      0023D5 08               [12] 1159 	inc	r0
      0023D6 F6               [12] 1160 	mov	@r0,a
      0023D7                       1161 00204$:
                                   1162 ;	life.c:128: for (x = 0; x < W; x++) {
      0023D7 78 33            [12] 1163 	mov	r0,#_x
      0023D9 E4               [12] 1164 	clr	a
      0023DA F6               [12] 1165 	mov	@r0,a
      0023DB 08               [12] 1166 	inc	r0
      0023DC F6               [12] 1167 	mov	@r0,a
                                   1168 ;	life.c:129: while (1) {
      0023DD                       1169 00156$:
                                   1170 ;	life.c:130: c = getchar();
      0023DD 12 20 D3         [24] 1171 	lcall	_getchar
      0023E0 AE 82            [24] 1172 	mov	r6,dpl
      0023E2 AF 83            [24] 1173 	mov	r7,dph
      0023E4 78 39            [12] 1174 	mov	r0,#_c
      0023E6 A6 06            [24] 1175 	mov	@r0,ar6
      0023E8 08               [12] 1176 	inc	r0
      0023E9 A6 07            [24] 1177 	mov	@r0,ar7
                                   1178 ;	life.c:131: if (c == (int)'0') {
      0023EB BE 30 25         [24] 1179 	cjne	r6,#0x30,00154$
      0023EE BF 00 22         [24] 1180 	cjne	r7,#0x00,00154$
                                   1181 ;	life.c:132: u[y + x] = 0;
      0023F1 78 35            [12] 1182 	mov	r0,#_y
      0023F3 79 33            [12] 1183 	mov	r1,#_x
      0023F5 E7               [12] 1184 	mov	a,@r1
      0023F6 26               [12] 1185 	add	a,@r0
      0023F7 FC               [12] 1186 	mov	r4,a
      0023F8 09               [12] 1187 	inc	r1
      0023F9 E7               [12] 1188 	mov	a,@r1
      0023FA 08               [12] 1189 	inc	r0
      0023FB 36               [12] 1190 	addc	a,@r0
      0023FC FD               [12] 1191 	mov	r5,a
      0023FD EC               [12] 1192 	mov	a,r4
      0023FE 24 00            [12] 1193 	add	a,#_u
      002400 F5 82            [12] 1194 	mov	dpl,a
      002402 ED               [12] 1195 	mov	a,r5
      002403 34 84            [12] 1196 	addc	a,#(_u >> 8)
      002405 F5 83            [12] 1197 	mov	dph,a
      002407 E4               [12] 1198 	clr	a
      002408 F0               [24] 1199 	movx	@dptr,a
                                   1200 ;	life.c:133: j++;
      002409 78 37            [12] 1201 	mov	r0,#_j
      00240B 06               [12] 1202 	inc	@r0
      00240C B6 00 02         [24] 1203 	cjne	@r0,#0x00,00511$
      00240F 08               [12] 1204 	inc	r0
      002410 06               [12] 1205 	inc	@r0
      002411                       1206 00511$:
                                   1207 ;	life.c:134: break;
      002411 80 39            [24] 1208 	sjmp	00159$
      002413                       1209 00154$:
                                   1210 ;	life.c:135: } else if (c == (int)'1') {
      002413 BE 31 26         [24] 1211 	cjne	r6,#0x31,00152$
      002416 BF 00 23         [24] 1212 	cjne	r7,#0x00,00152$
                                   1213 ;	life.c:136: u[y + x] = 1;
      002419 78 35            [12] 1214 	mov	r0,#_y
      00241B 79 33            [12] 1215 	mov	r1,#_x
      00241D E7               [12] 1216 	mov	a,@r1
      00241E 26               [12] 1217 	add	a,@r0
      00241F FC               [12] 1218 	mov	r4,a
      002420 09               [12] 1219 	inc	r1
      002421 E7               [12] 1220 	mov	a,@r1
      002422 08               [12] 1221 	inc	r0
      002423 36               [12] 1222 	addc	a,@r0
      002424 FD               [12] 1223 	mov	r5,a
      002425 EC               [12] 1224 	mov	a,r4
      002426 24 00            [12] 1225 	add	a,#_u
      002428 F5 82            [12] 1226 	mov	dpl,a
      00242A ED               [12] 1227 	mov	a,r5
      00242B 34 84            [12] 1228 	addc	a,#(_u >> 8)
      00242D F5 83            [12] 1229 	mov	dph,a
      00242F 74 01            [12] 1230 	mov	a,#0x01
      002431 F0               [24] 1231 	movx	@dptr,a
                                   1232 ;	life.c:137: j++;
      002432 78 37            [12] 1233 	mov	r0,#_j
      002434 06               [12] 1234 	inc	@r0
      002435 B6 00 02         [24] 1235 	cjne	@r0,#0x00,00514$
      002438 08               [12] 1236 	inc	r0
      002439 06               [12] 1237 	inc	@r0
      00243A                       1238 00514$:
                                   1239 ;	life.c:138: break;
      00243A 80 10            [24] 1240 	sjmp	00159$
      00243C                       1241 00152$:
                                   1242 ;	life.c:139: } else if (c == (int)'~') goto br_inner;
      00243C BE 7E 05         [24] 1243 	cjne	r6,#0x7e,00515$
      00243F BF 00 02         [24] 1244 	cjne	r7,#0x00,00515$
      002442 80 21            [24] 1245 	sjmp	00205$
      002444                       1246 00515$:
                                   1247 ;	life.c:140: else if (c == (int)'#') goto out;
                                   1248 ;	life.c:144: break;
      002444 BE 23 96         [24] 1249 	cjne	r6,#0x23,00156$
      002447 BF 00 93         [24] 1250 	cjne	r7,#0x00,00156$
      00244A 80 31            [24] 1251 	sjmp	00169$
      00244C                       1252 00159$:
                                   1253 ;	life.c:128: for (x = 0; x < W; x++) {
      00244C 78 33            [12] 1254 	mov	r0,#_x
      00244E 06               [12] 1255 	inc	@r0
      00244F B6 00 02         [24] 1256 	cjne	@r0,#0x00,00517$
      002452 08               [12] 1257 	inc	r0
      002453 06               [12] 1258 	inc	@r0
      002454                       1259 00517$:
      002454 78 33            [12] 1260 	mov	r0,#_x
      002456 C3               [12] 1261 	clr	c
      002457 E6               [12] 1262 	mov	a,@r0
      002458 94 30            [12] 1263 	subb	a,#0x30
      00245A 08               [12] 1264 	inc	r0
      00245B E6               [12] 1265 	mov	a,@r0
      00245C 64 80            [12] 1266 	xrl	a,#0x80
      00245E 94 80            [12] 1267 	subb	a,#0x80
      002460 50 03            [24] 1268 	jnc	00518$
      002462 02 23 DD         [24] 1269 	ljmp	00156$
      002465                       1270 00518$:
      002465                       1271 00205$:
                                   1272 ;	life.c:127: for (y = 0; y < (H * W); y += W) {
      002465 78 35            [12] 1273 	mov	r0,#_y
      002467 74 30            [12] 1274 	mov	a,#0x30
      002469 26               [12] 1275 	add	a,@r0
      00246A F6               [12] 1276 	mov	@r0,a
      00246B E4               [12] 1277 	clr	a
      00246C 08               [12] 1278 	inc	r0
      00246D 36               [12] 1279 	addc	a,@r0
      00246E F6               [12] 1280 	mov	@r0,a
      00246F 78 35            [12] 1281 	mov	r0,#_y
      002471 C3               [12] 1282 	clr	c
      002472 08               [12] 1283 	inc	r0
      002473 E6               [12] 1284 	mov	a,@r0
      002474 64 80            [12] 1285 	xrl	a,#0x80
      002476 94 A4            [12] 1286 	subb	a,#0xa4
      002478 50 03            [24] 1287 	jnc	00519$
      00247A 02 23 D7         [24] 1288 	ljmp	00204$
      00247D                       1289 00519$:
                                   1290 ;	life.c:148: out:
      00247D                       1291 00169$:
                                   1292 ;	life.c:149: if (c != (int)'#')
      00247D BE 23 05         [24] 1293 	cjne	r6,#0x23,00520$
      002480 BF 00 02         [24] 1294 	cjne	r7,#0x00,00520$
      002483 80 14            [24] 1295 	sjmp	00168$
      002485                       1296 00520$:
                                   1297 ;	life.c:150: while (1) {
      002485                       1298 00165$:
                                   1299 ;	life.c:151: c = getchar();
      002485 12 20 D3         [24] 1300 	lcall	_getchar
      002488 AE 82            [24] 1301 	mov	r6,dpl
      00248A AF 83            [24] 1302 	mov	r7,dph
      00248C 78 39            [12] 1303 	mov	r0,#_c
      00248E A6 06            [24] 1304 	mov	@r0,ar6
      002490 08               [12] 1305 	inc	r0
      002491 A6 07            [24] 1306 	mov	@r0,ar7
                                   1307 ;	life.c:152: if (c == (int)'#') break;
      002493 BE 23 EF         [24] 1308 	cjne	r6,#0x23,00165$
      002496 BF 00 EC         [24] 1309 	cjne	r7,#0x00,00165$
      002499                       1310 00168$:
                                   1311 ;	life.c:154: print16x(j);
      002499 78 37            [12] 1312 	mov	r0,#_j
      00249B 86 06            [24] 1313 	mov	ar6,@r0
      00249D 08               [12] 1314 	inc	r0
      00249E 86 07            [24] 1315 	mov	ar7,@r0
      0024A0 8E 04            [24] 1316 	mov	ar4,r6
                                   1317 ;	life.c:39: putchar(digits[(a >> 12) & 0xf]);
      0024A2 EF               [12] 1318 	mov	a,r7
      0024A3 FD               [12] 1319 	mov	r5,a
      0024A4 C4               [12] 1320 	swap	a
      0024A5 54 0F            [12] 1321 	anl	a,#0x0f
      0024A7 30 E3 02         [24] 1322 	jnb	acc.3,00523$
      0024AA 44 F0            [12] 1323 	orl	a,#0xf0
      0024AC                       1324 00523$:
      0024AC FE               [12] 1325 	mov	r6,a
      0024AD 33               [12] 1326 	rlc	a
      0024AE 95 E0            [12] 1327 	subb	a,acc
      0024B0 53 06 0F         [24] 1328 	anl	ar6,#0x0f
      0024B3 EE               [12] 1329 	mov	a,r6
      0024B4 24 21            [12] 1330 	add	a,#_digits
      0024B6 F9               [12] 1331 	mov	r1,a
      0024B7 87 07            [24] 1332 	mov	ar7,@r1
      0024B9 7E 00            [12] 1333 	mov	r6,#0x00
      0024BB 8F 82            [24] 1334 	mov	dpl,r7
      0024BD 8E 83            [24] 1335 	mov	dph,r6
      0024BF 12 20 CE         [24] 1336 	lcall	_putchar
                                   1337 ;	life.c:40: putchar(digits[(a >> 8) & 0xf]);
      0024C2 8D 07            [24] 1338 	mov	ar7,r5
      0024C4 53 07 0F         [24] 1339 	anl	ar7,#0x0f
      0024C7 EF               [12] 1340 	mov	a,r7
      0024C8 24 21            [12] 1341 	add	a,#_digits
      0024CA F9               [12] 1342 	mov	r1,a
      0024CB 87 07            [24] 1343 	mov	ar7,@r1
      0024CD 7E 00            [12] 1344 	mov	r6,#0x00
      0024CF 8F 82            [24] 1345 	mov	dpl,r7
      0024D1 8E 83            [24] 1346 	mov	dph,r6
      0024D3 12 20 CE         [24] 1347 	lcall	_putchar
                                   1348 ;	life.c:41: putchar(digits[(a >> 4) & 0xf]);
      0024D6 8C 06            [24] 1349 	mov	ar6,r4
      0024D8 ED               [12] 1350 	mov	a,r5
      0024D9 C4               [12] 1351 	swap	a
      0024DA CE               [12] 1352 	xch	a,r6
      0024DB C4               [12] 1353 	swap	a
      0024DC 54 0F            [12] 1354 	anl	a,#0x0f
      0024DE 6E               [12] 1355 	xrl	a,r6
      0024DF CE               [12] 1356 	xch	a,r6
      0024E0 54 0F            [12] 1357 	anl	a,#0x0f
      0024E2 CE               [12] 1358 	xch	a,r6
      0024E3 6E               [12] 1359 	xrl	a,r6
      0024E4 CE               [12] 1360 	xch	a,r6
      0024E5 30 E3 02         [24] 1361 	jnb	acc.3,00524$
      0024E8 44 F0            [12] 1362 	orl	a,#0xf0
      0024EA                       1363 00524$:
      0024EA 53 06 0F         [24] 1364 	anl	ar6,#0x0f
      0024ED EE               [12] 1365 	mov	a,r6
      0024EE 24 21            [12] 1366 	add	a,#_digits
      0024F0 F9               [12] 1367 	mov	r1,a
      0024F1 87 07            [24] 1368 	mov	ar7,@r1
      0024F3 7E 00            [12] 1369 	mov	r6,#0x00
      0024F5 8F 82            [24] 1370 	mov	dpl,r7
      0024F7 8E 83            [24] 1371 	mov	dph,r6
      0024F9 12 20 CE         [24] 1372 	lcall	_putchar
                                   1373 ;	life.c:42: putchar(digits[a & 0xf]);
      0024FC 53 04 0F         [24] 1374 	anl	ar4,#0x0f
      0024FF EC               [12] 1375 	mov	a,r4
      002500 24 21            [12] 1376 	add	a,#_digits
      002502 F9               [12] 1377 	mov	r1,a
      002503 87 07            [24] 1378 	mov	ar7,@r1
      002505 7E 00            [12] 1379 	mov	r6,#0x00
      002507 8F 82            [24] 1380 	mov	dpl,r7
      002509 8E 83            [24] 1381 	mov	dph,r6
      00250B 12 20 CE         [24] 1382 	lcall	_putchar
                                   1383 ;	life.c:155: printstr(">\r\n");
      00250E 7D 62            [12] 1384 	mov	r5,#___str_3
      002510 7E 2F            [12] 1385 	mov	r6,#(___str_3 >> 8)
      002512 7F 80            [12] 1386 	mov	r7,#0x80
                                   1387 ;	life.c:50: return;
      002514                       1388 00207$:
                                   1389 ;	life.c:48: for (; *s; s++) putchar(*s);
      002514 8D 82            [24] 1390 	mov	dpl,r5
      002516 8E 83            [24] 1391 	mov	dph,r6
      002518 8F F0            [24] 1392 	mov	b,r7
      00251A 12 2E 24         [24] 1393 	lcall	__gptrget
      00251D FC               [12] 1394 	mov	r4,a
      00251E 70 03            [24] 1395 	jnz	00525$
      002520 02 25 DE         [24] 1396 	ljmp	00114$
      002523                       1397 00525$:
      002523 7B 00            [12] 1398 	mov	r3,#0x00
      002525 8C 82            [24] 1399 	mov	dpl,r4
      002527 8B 83            [24] 1400 	mov	dph,r3
      002529 12 20 CE         [24] 1401 	lcall	_putchar
      00252C 0D               [12] 1402 	inc	r5
                                   1403 ;	life.c:242: if (c == (int)'L') loadu();
      00252D BD 00 E4         [24] 1404 	cjne	r5,#0x00,00207$
      002530 0E               [12] 1405 	inc	r6
      002531 80 E1            [24] 1406 	sjmp	00207$
      002533                       1407 00113$:
                                   1408 ;	life.c:161: j = 0;
      002533 78 37            [12] 1409 	mov	r0,#_j
      002535 E4               [12] 1410 	clr	a
      002536 F6               [12] 1411 	mov	@r0,a
      002537 08               [12] 1412 	inc	r0
      002538 F6               [12] 1413 	mov	@r0,a
                                   1414 ;	life.c:163: printstr("RANDOM");
      002539 7D 66            [12] 1415 	mov	r5,#___str_4
      00253B 7E 2F            [12] 1416 	mov	r6,#(___str_4 >> 8)
      00253D 7F 80            [12] 1417 	mov	r7,#0x80
                                   1418 ;	life.c:50: return;
      00253F                       1419 00210$:
                                   1420 ;	life.c:48: for (; *s; s++) putchar(*s);
      00253F 8D 82            [24] 1421 	mov	dpl,r5
      002541 8E 83            [24] 1422 	mov	dph,r6
      002543 8F F0            [24] 1423 	mov	b,r7
      002545 12 2E 24         [24] 1424 	lcall	__gptrget
      002548 FC               [12] 1425 	mov	r4,a
      002549 60 10            [24] 1426 	jz	00175$
      00254B 7B 00            [12] 1427 	mov	r3,#0x00
      00254D 8C 82            [24] 1428 	mov	dpl,r4
      00254F 8B 83            [24] 1429 	mov	dph,r3
      002551 12 20 CE         [24] 1430 	lcall	_putchar
      002554 0D               [12] 1431 	inc	r5
                                   1432 ;	life.c:163: printstr("RANDOM");
      002555 BD 00 E7         [24] 1433 	cjne	r5,#0x00,00210$
      002558 0E               [12] 1434 	inc	r6
      002559 80 E4            [24] 1435 	sjmp	00210$
      00255B                       1436 00175$:
                                   1437 ;	life.c:165: for (y = 0; y < (H * W); y += W)
      00255B 78 35            [12] 1438 	mov	r0,#_y
      00255D E4               [12] 1439 	clr	a
      00255E F6               [12] 1440 	mov	@r0,a
      00255F 08               [12] 1441 	inc	r0
      002560 F6               [12] 1442 	mov	@r0,a
      002561                       1443 00214$:
                                   1444 ;	life.c:166: for (x = 0; x < W; x++)
      002561 78 33            [12] 1445 	mov	r0,#_x
      002563 E4               [12] 1446 	clr	a
      002564 F6               [12] 1447 	mov	@r0,a
      002565 08               [12] 1448 	inc	r0
      002566 F6               [12] 1449 	mov	@r0,a
      002567                       1450 00212$:
                                   1451 ;	life.c:167: u[y + x] = rand() & 1;
      002567 78 35            [12] 1452 	mov	r0,#_y
      002569 79 33            [12] 1453 	mov	r1,#_x
      00256B E7               [12] 1454 	mov	a,@r1
      00256C 26               [12] 1455 	add	a,@r0
      00256D FE               [12] 1456 	mov	r6,a
      00256E 09               [12] 1457 	inc	r1
      00256F E7               [12] 1458 	mov	a,@r1
      002570 08               [12] 1459 	inc	r0
      002571 36               [12] 1460 	addc	a,@r0
      002572 FF               [12] 1461 	mov	r7,a
      002573 EE               [12] 1462 	mov	a,r6
      002574 24 00            [12] 1463 	add	a,#_u
      002576 FE               [12] 1464 	mov	r6,a
      002577 EF               [12] 1465 	mov	a,r7
      002578 34 84            [12] 1466 	addc	a,#(_u >> 8)
      00257A FF               [12] 1467 	mov	r7,a
      00257B C0 07            [24] 1468 	push	ar7
      00257D C0 06            [24] 1469 	push	ar6
      00257F 12 2B 85         [24] 1470 	lcall	_rand
      002582 AC 82            [24] 1471 	mov	r4,dpl
      002584 D0 06            [24] 1472 	pop	ar6
      002586 D0 07            [24] 1473 	pop	ar7
      002588 53 04 01         [24] 1474 	anl	ar4,#0x01
      00258B 8E 82            [24] 1475 	mov	dpl,r6
      00258D 8F 83            [24] 1476 	mov	dph,r7
      00258F EC               [12] 1477 	mov	a,r4
      002590 F0               [24] 1478 	movx	@dptr,a
                                   1479 ;	life.c:166: for (x = 0; x < W; x++)
      002591 78 33            [12] 1480 	mov	r0,#_x
      002593 06               [12] 1481 	inc	@r0
      002594 B6 00 02         [24] 1482 	cjne	@r0,#0x00,00529$
      002597 08               [12] 1483 	inc	r0
      002598 06               [12] 1484 	inc	@r0
      002599                       1485 00529$:
      002599 78 33            [12] 1486 	mov	r0,#_x
      00259B C3               [12] 1487 	clr	c
      00259C E6               [12] 1488 	mov	a,@r0
      00259D 94 30            [12] 1489 	subb	a,#0x30
      00259F 08               [12] 1490 	inc	r0
      0025A0 E6               [12] 1491 	mov	a,@r0
      0025A1 64 80            [12] 1492 	xrl	a,#0x80
      0025A3 94 80            [12] 1493 	subb	a,#0x80
      0025A5 40 C0            [24] 1494 	jc	00212$
                                   1495 ;	life.c:165: for (y = 0; y < (H * W); y += W)
      0025A7 78 35            [12] 1496 	mov	r0,#_y
      0025A9 74 30            [12] 1497 	mov	a,#0x30
      0025AB 26               [12] 1498 	add	a,@r0
      0025AC F6               [12] 1499 	mov	@r0,a
      0025AD E4               [12] 1500 	clr	a
      0025AE 08               [12] 1501 	inc	r0
      0025AF 36               [12] 1502 	addc	a,@r0
      0025B0 F6               [12] 1503 	mov	@r0,a
      0025B1 78 35            [12] 1504 	mov	r0,#_y
      0025B3 C3               [12] 1505 	clr	c
      0025B4 08               [12] 1506 	inc	r0
      0025B5 E6               [12] 1507 	mov	a,@r0
      0025B6 64 80            [12] 1508 	xrl	a,#0x80
      0025B8 94 A4            [12] 1509 	subb	a,#0xa4
      0025BA 40 A5            [24] 1510 	jc	00214$
                                   1511 ;	life.c:169: printstr("\r\n");
      0025BC 7D 58            [12] 1512 	mov	r5,#___str_1
      0025BE 7E 2F            [12] 1513 	mov	r6,#(___str_1 >> 8)
      0025C0 7F 80            [12] 1514 	mov	r7,#0x80
                                   1515 ;	life.c:50: return;
      0025C2                       1516 00217$:
                                   1517 ;	life.c:48: for (; *s; s++) putchar(*s);
      0025C2 8D 82            [24] 1518 	mov	dpl,r5
      0025C4 8E 83            [24] 1519 	mov	dph,r6
      0025C6 8F F0            [24] 1520 	mov	b,r7
      0025C8 12 2E 24         [24] 1521 	lcall	__gptrget
      0025CB FC               [12] 1522 	mov	r4,a
      0025CC 60 10            [24] 1523 	jz	00114$
      0025CE 7B 00            [12] 1524 	mov	r3,#0x00
      0025D0 8C 82            [24] 1525 	mov	dpl,r4
      0025D2 8B 83            [24] 1526 	mov	dph,r3
      0025D4 12 20 CE         [24] 1527 	lcall	_putchar
      0025D7 0D               [12] 1528 	inc	r5
                                   1529 ;	life.c:243: else loadr();
      0025D8 BD 00 E7         [24] 1530 	cjne	r5,#0x00,00217$
      0025DB 0E               [12] 1531 	inc	r6
      0025DC 80 E4            [24] 1532 	sjmp	00217$
      0025DE                       1533 00114$:
                                   1534 ;	life.c:244: show(0);
      0025DE 75 82 00         [24] 1535 	mov	dpl,#0x00
      0025E1 12 20 F4         [24] 1536 	lcall	_show
                                   1537 ;	life.c:246: printstr("READY T L R S\r\n");
      0025E4 7D 8C            [12] 1538 	mov	r5,#___str_6
      0025E6 7E 2F            [12] 1539 	mov	r6,#(___str_6 >> 8)
      0025E8 7F 80            [12] 1540 	mov	r7,#0x80
                                   1541 ;	life.c:50: return;
      0025EA                       1542 00220$:
                                   1543 ;	life.c:48: for (; *s; s++) putchar(*s);
      0025EA 8D 82            [24] 1544 	mov	dpl,r5
      0025EC 8E 83            [24] 1545 	mov	dph,r6
      0025EE 8F F0            [24] 1546 	mov	b,r7
      0025F0 12 2E 24         [24] 1547 	lcall	__gptrget
      0025F3 FC               [12] 1548 	mov	r4,a
      0025F4 60 10            [24] 1549 	jz	00126$
      0025F6 7B 00            [12] 1550 	mov	r3,#0x00
      0025F8 8C 82            [24] 1551 	mov	dpl,r4
      0025FA 8B 83            [24] 1552 	mov	dph,r3
      0025FC 12 20 CE         [24] 1553 	lcall	_putchar
      0025FF 0D               [12] 1554 	inc	r5
                                   1555 ;	life.c:247: while (1) {
      002600 BD 00 E7         [24] 1556 	cjne	r5,#0x00,00220$
      002603 0E               [12] 1557 	inc	r6
      002604 80 E4            [24] 1558 	sjmp	00220$
      002606                       1559 00126$:
                                   1560 ;	life.c:248: c = toupper(getchar());
      002606 12 20 D3         [24] 1561 	lcall	_getchar
      002609 12 2D FD         [24] 1562 	lcall	_toupper
      00260C AE 82            [24] 1563 	mov	r6,dpl
      00260E AF 83            [24] 1564 	mov	r7,dph
      002610 78 39            [12] 1565 	mov	r0,#_c
      002612 A6 06            [24] 1566 	mov	@r0,ar6
      002614 08               [12] 1567 	inc	r0
      002615 A6 07            [24] 1568 	mov	@r0,ar7
                                   1569 ;	life.c:249: if (i0 || (c == (int)'T')) goto terminate;
      002617 78 31            [12] 1570 	mov	r0,#_i0
      002619 E6               [12] 1571 	mov	a,@r0
      00261A 60 03            [24] 1572 	jz	00536$
      00261C 02 2B 55         [24] 1573 	ljmp	00138$
      00261F                       1574 00536$:
      00261F BE 54 06         [24] 1575 	cjne	r6,#0x54,00537$
      002622 BF 00 03         [24] 1576 	cjne	r7,#0x00,00537$
      002625 02 2B 55         [24] 1577 	ljmp	00138$
      002628                       1578 00537$:
                                   1579 ;	life.c:250: else if ((c == (int)'L') || (c == (int)'R')) goto reload;
      002628 BE 4C 06         [24] 1580 	cjne	r6,#0x4c,00538$
      00262B BF 00 03         [24] 1581 	cjne	r7,#0x00,00538$
      00262E 02 23 69         [24] 1582 	ljmp	00111$
      002631                       1583 00538$:
      002631 BE 52 06         [24] 1584 	cjne	r6,#0x52,00539$
      002634 BF 00 03         [24] 1585 	cjne	r7,#0x00,00539$
      002637 02 23 69         [24] 1586 	ljmp	00111$
      00263A                       1587 00539$:
                                   1588 ;	life.c:251: else if (c == (int)'S') break;
      00263A BE 53 C9         [24] 1589 	cjne	r6,#0x53,00126$
      00263D BF 00 C6         [24] 1590 	cjne	r7,#0x00,00126$
                                   1591 ;	life.c:77: generation[0] = 0;
      002640 78 43            [12] 1592 	mov	r0,#_generation
      002642 76 00            [12] 1593 	mov	@r0,#0x00
      002644 08               [12] 1594 	inc	r0
      002645 76 00            [12] 1595 	mov	@r0,#0x00
                                   1596 ;	life.c:78: generation[1] = 0;
      002647 78 45            [12] 1597 	mov	r0,#(_generation + 0x0002)
      002649 76 00            [12] 1598 	mov	@r0,#0x00
      00264B 08               [12] 1599 	inc	r0
      00264C 76 00            [12] 1600 	mov	@r0,#0x00
                                   1601 ;	life.c:256: for (i1 = 0; !i0 && !i1; ) {
      00264E 78 32            [12] 1602 	mov	r0,#_i1
      002650 76 00            [12] 1603 	mov	@r0,#0x00
      002652                       1604 00237$:
      002652 78 31            [12] 1605 	mov	r0,#_i0
      002654 E6               [12] 1606 	mov	a,@r0
      002655 60 03            [24] 1607 	jz	00542$
      002657 02 2B 23         [24] 1608 	ljmp	00134$
      00265A                       1609 00542$:
      00265A 78 32            [12] 1610 	mov	r0,#_i1
      00265C E6               [12] 1611 	mov	a,@r0
      00265D 60 03            [24] 1612 	jz	00543$
      00265F 02 2B 23         [24] 1613 	ljmp	00134$
      002662                       1614 00543$:
                                   1615 ;	life.c:257: show(1);
      002662 75 82 01         [24] 1616 	mov	dpl,#0x01
      002665 12 20 F4         [24] 1617 	lcall	_show
                                   1618 ;	life.c:177: fixed = 0;
      002668 78 3D            [12] 1619 	mov	r0,#_fixed
      00266A 76 00            [12] 1620 	mov	@r0,#0x00
                                   1621 ;	life.c:178: cycle2 = 0;
      00266C 78 3E            [12] 1622 	mov	r0,#_cycle2
      00266E 76 00            [12] 1623 	mov	@r0,#0x00
                                   1624 ;	life.c:179: bstep = 0;
      002670 78 3B            [12] 1625 	mov	r0,#_bstep
      002672 76 00            [12] 1626 	mov	@r0,#0x00
                                   1627 ;	life.c:181: for (y = 0; y < H; y++) {
      002674 78 35            [12] 1628 	mov	r0,#_y
      002676 E4               [12] 1629 	clr	a
      002677 F6               [12] 1630 	mov	@r0,a
      002678 08               [12] 1631 	inc	r0
      002679 F6               [12] 1632 	mov	@r0,a
      00267A                       1633 00224$:
                                   1634 ;	life.c:182: putchar(busy[bstep]); putchar('\r');
      00267A 78 3B            [12] 1635 	mov	r0,#_bstep
      00267C E6               [12] 1636 	mov	a,@r0
      00267D 24 47            [12] 1637 	add	a,#_busy
      00267F F9               [12] 1638 	mov	r1,a
      002680 87 07            [24] 1639 	mov	ar7,@r1
      002682 7E 00            [12] 1640 	mov	r6,#0x00
      002684 8F 82            [24] 1641 	mov	dpl,r7
      002686 8E 83            [24] 1642 	mov	dph,r6
      002688 12 20 CE         [24] 1643 	lcall	_putchar
      00268B 90 00 0D         [24] 1644 	mov	dptr,#0x000d
      00268E 12 20 CE         [24] 1645 	lcall	_putchar
                                   1646 ;	life.c:183: bstep = (bstep + 1) & 3;
      002691 78 3B            [12] 1647 	mov	r0,#_bstep
      002693 86 07            [24] 1648 	mov	ar7,@r0
      002695 0F               [12] 1649 	inc	r7
      002696 78 3B            [12] 1650 	mov	r0,#_bstep
      002698 74 03            [12] 1651 	mov	a,#0x03
      00269A 5F               [12] 1652 	anl	a,r7
      00269B F6               [12] 1653 	mov	@r0,a
                                   1654 ;	life.c:184: for (x = 0; x < W; x++) {
      00269C 78 33            [12] 1655 	mov	r0,#_x
      00269E E4               [12] 1656 	clr	a
      00269F F6               [12] 1657 	mov	@r0,a
      0026A0 08               [12] 1658 	inc	r0
      0026A1 F6               [12] 1659 	mov	@r0,a
      0026A2                       1660 00222$:
                                   1661 ;	life.c:185: n = -u[A2D(W, y, x)];
      0026A2 78 35            [12] 1662 	mov	r0,#_y
      0026A4 E6               [12] 1663 	mov	a,@r0
      0026A5 C0 E0            [24] 1664 	push	acc
      0026A7 08               [12] 1665 	inc	r0
      0026A8 E6               [12] 1666 	mov	a,@r0
      0026A9 C0 E0            [24] 1667 	push	acc
      0026AB 90 00 30         [24] 1668 	mov	dptr,#0x0030
      0026AE 12 2C 62         [24] 1669 	lcall	__mulint
      0026B1 C8               [12] 1670 	xch	a,r0
      0026B2 E5 10            [12] 1671 	mov	a,_bp
      0026B4 24 04            [12] 1672 	add	a,#0x04
      0026B6 C8               [12] 1673 	xch	a,r0
      0026B7 A6 82            [24] 1674 	mov	@r0,dpl
      0026B9 08               [12] 1675 	inc	r0
      0026BA A6 83            [24] 1676 	mov	@r0,dph
      0026BC 15 81            [12] 1677 	dec	sp
      0026BE 15 81            [12] 1678 	dec	sp
      0026C0 E5 10            [12] 1679 	mov	a,_bp
      0026C2 24 04            [12] 1680 	add	a,#0x04
      0026C4 F8               [12] 1681 	mov	r0,a
      0026C5 79 33            [12] 1682 	mov	r1,#_x
      0026C7 E7               [12] 1683 	mov	a,@r1
      0026C8 26               [12] 1684 	add	a,@r0
      0026C9 C0 E0            [24] 1685 	push	acc
      0026CB 09               [12] 1686 	inc	r1
      0026CC E7               [12] 1687 	mov	a,@r1
      0026CD 08               [12] 1688 	inc	r0
      0026CE 36               [12] 1689 	addc	a,@r0
      0026CF C0 E0            [24] 1690 	push	acc
      0026D1 E5 10            [12] 1691 	mov	a,_bp
      0026D3 24 03            [12] 1692 	add	a,#0x03
      0026D5 F8               [12] 1693 	mov	r0,a
      0026D6 D0 E0            [24] 1694 	pop	acc
      0026D8 F6               [12] 1695 	mov	@r0,a
      0026D9 18               [12] 1696 	dec	r0
      0026DA D0 E0            [24] 1697 	pop	acc
      0026DC F6               [12] 1698 	mov	@r0,a
      0026DD A8 10            [24] 1699 	mov	r0,_bp
      0026DF 08               [12] 1700 	inc	r0
      0026E0 08               [12] 1701 	inc	r0
      0026E1 E6               [12] 1702 	mov	a,@r0
      0026E2 24 00            [12] 1703 	add	a,#_u
      0026E4 F5 82            [12] 1704 	mov	dpl,a
      0026E6 08               [12] 1705 	inc	r0
      0026E7 E6               [12] 1706 	mov	a,@r0
      0026E8 34 84            [12] 1707 	addc	a,#(_u >> 8)
      0026EA F5 83            [12] 1708 	mov	dph,a
      0026EC E0               [24] 1709 	movx	a,@dptr
      0026ED FB               [12] 1710 	mov	r3,a
      0026EE A8 10            [24] 1711 	mov	r0,_bp
      0026F0 08               [12] 1712 	inc	r0
      0026F1 C3               [12] 1713 	clr	c
      0026F2 E4               [12] 1714 	clr	a
      0026F3 9B               [12] 1715 	subb	a,r3
      0026F4 F6               [12] 1716 	mov	@r0,a
                                   1717 ;	life.c:188: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      0026F5 78 35            [12] 1718 	mov	r0,#_y
      0026F7 74 FF            [12] 1719 	mov	a,#0xff
      0026F9 26               [12] 1720 	add	a,@r0
      0026FA FA               [12] 1721 	mov	r2,a
      0026FB 74 FF            [12] 1722 	mov	a,#0xff
      0026FD 08               [12] 1723 	inc	r0
      0026FE 36               [12] 1724 	addc	a,@r0
      0026FF FB               [12] 1725 	mov	r3,a
      002700 74 C0            [12] 1726 	mov	a,#0xc0
      002702 2A               [12] 1727 	add	a,r2
      002703 FA               [12] 1728 	mov	r2,a
      002704 E4               [12] 1729 	clr	a
      002705 3B               [12] 1730 	addc	a,r3
      002706 FB               [12] 1731 	mov	r3,a
      002707 74 C0            [12] 1732 	mov	a,#0xc0
      002709 C0 E0            [24] 1733 	push	acc
      00270B E4               [12] 1734 	clr	a
      00270C C0 E0            [24] 1735 	push	acc
      00270E 8A 82            [24] 1736 	mov	dpl,r2
      002710 8B 83            [24] 1737 	mov	dph,r3
      002712 12 2E 40         [24] 1738 	lcall	__modsint
      002715 AA 82            [24] 1739 	mov	r2,dpl
      002717 AB 83            [24] 1740 	mov	r3,dph
      002719 15 81            [12] 1741 	dec	sp
      00271B 15 81            [12] 1742 	dec	sp
      00271D C0 02            [24] 1743 	push	ar2
      00271F C0 03            [24] 1744 	push	ar3
      002721 90 00 30         [24] 1745 	mov	dptr,#0x0030
      002724 12 2C 62         [24] 1746 	lcall	__mulint
      002727 AA 82            [24] 1747 	mov	r2,dpl
      002729 AB 83            [24] 1748 	mov	r3,dph
      00272B 15 81            [12] 1749 	dec	sp
      00272D 15 81            [12] 1750 	dec	sp
      00272F 78 33            [12] 1751 	mov	r0,#_x
      002731 74 FF            [12] 1752 	mov	a,#0xff
      002733 26               [12] 1753 	add	a,@r0
      002734 FC               [12] 1754 	mov	r4,a
      002735 74 FF            [12] 1755 	mov	a,#0xff
      002737 08               [12] 1756 	inc	r0
      002738 36               [12] 1757 	addc	a,@r0
      002739 FD               [12] 1758 	mov	r5,a
      00273A 74 30            [12] 1759 	mov	a,#0x30
      00273C 2C               [12] 1760 	add	a,r4
      00273D FC               [12] 1761 	mov	r4,a
      00273E E4               [12] 1762 	clr	a
      00273F 3D               [12] 1763 	addc	a,r5
      002740 FD               [12] 1764 	mov	r5,a
      002741 C0 03            [24] 1765 	push	ar3
      002743 C0 02            [24] 1766 	push	ar2
      002745 74 30            [12] 1767 	mov	a,#0x30
      002747 C0 E0            [24] 1768 	push	acc
      002749 E4               [12] 1769 	clr	a
      00274A C0 E0            [24] 1770 	push	acc
      00274C 8C 82            [24] 1771 	mov	dpl,r4
      00274E 8D 83            [24] 1772 	mov	dph,r5
      002750 12 2E 40         [24] 1773 	lcall	__modsint
      002753 AC 82            [24] 1774 	mov	r4,dpl
      002755 AD 83            [24] 1775 	mov	r5,dph
      002757 15 81            [12] 1776 	dec	sp
      002759 15 81            [12] 1777 	dec	sp
      00275B D0 02            [24] 1778 	pop	ar2
      00275D D0 03            [24] 1779 	pop	ar3
      00275F EC               [12] 1780 	mov	a,r4
      002760 2A               [12] 1781 	add	a,r2
      002761 FE               [12] 1782 	mov	r6,a
      002762 ED               [12] 1783 	mov	a,r5
      002763 3B               [12] 1784 	addc	a,r3
      002764 FF               [12] 1785 	mov	r7,a
      002765 EE               [12] 1786 	mov	a,r6
      002766 24 00            [12] 1787 	add	a,#_u
      002768 F5 82            [12] 1788 	mov	dpl,a
      00276A EF               [12] 1789 	mov	a,r7
      00276B 34 84            [12] 1790 	addc	a,#(_u >> 8)
      00276D F5 83            [12] 1791 	mov	dph,a
      00276F E0               [24] 1792 	movx	a,@dptr
      002770 FF               [12] 1793 	mov	r7,a
      002771 A8 10            [24] 1794 	mov	r0,_bp
      002773 08               [12] 1795 	inc	r0
      002774 EF               [12] 1796 	mov	a,r7
      002775 26               [12] 1797 	add	a,@r0
      002776 F6               [12] 1798 	mov	@r0,a
                                   1799 ;	life.c:190: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      002777 78 33            [12] 1800 	mov	r0,#_x
      002779 E5 10            [12] 1801 	mov	a,_bp
      00277B 24 06            [12] 1802 	add	a,#0x06
      00277D F9               [12] 1803 	mov	r1,a
      00277E E6               [12] 1804 	mov	a,@r0
      00277F F7               [12] 1805 	mov	@r1,a
      002780 08               [12] 1806 	inc	r0
      002781 09               [12] 1807 	inc	r1
      002782 E6               [12] 1808 	mov	a,@r0
      002783 F7               [12] 1809 	mov	@r1,a
      002784 E5 10            [12] 1810 	mov	a,_bp
      002786 24 06            [12] 1811 	add	a,#0x06
      002788 F8               [12] 1812 	mov	r0,a
      002789 74 30            [12] 1813 	mov	a,#0x30
      00278B 26               [12] 1814 	add	a,@r0
      00278C FE               [12] 1815 	mov	r6,a
      00278D E4               [12] 1816 	clr	a
      00278E 08               [12] 1817 	inc	r0
      00278F 36               [12] 1818 	addc	a,@r0
      002790 FF               [12] 1819 	mov	r7,a
      002791 C0 05            [24] 1820 	push	ar5
      002793 C0 04            [24] 1821 	push	ar4
      002795 C0 03            [24] 1822 	push	ar3
      002797 C0 02            [24] 1823 	push	ar2
      002799 74 30            [12] 1824 	mov	a,#0x30
      00279B C0 E0            [24] 1825 	push	acc
      00279D E4               [12] 1826 	clr	a
      00279E C0 E0            [24] 1827 	push	acc
      0027A0 8E 82            [24] 1828 	mov	dpl,r6
      0027A2 8F 83            [24] 1829 	mov	dph,r7
      0027A4 12 2E 40         [24] 1830 	lcall	__modsint
      0027A7 C8               [12] 1831 	xch	a,r0
      0027A8 E5 10            [12] 1832 	mov	a,_bp
      0027AA 24 08            [12] 1833 	add	a,#0x08
      0027AC C8               [12] 1834 	xch	a,r0
      0027AD A6 82            [24] 1835 	mov	@r0,dpl
      0027AF 08               [12] 1836 	inc	r0
      0027B0 A6 83            [24] 1837 	mov	@r0,dph
      0027B2 15 81            [12] 1838 	dec	sp
      0027B4 15 81            [12] 1839 	dec	sp
      0027B6 D0 02            [24] 1840 	pop	ar2
      0027B8 D0 03            [24] 1841 	pop	ar3
      0027BA E5 10            [12] 1842 	mov	a,_bp
      0027BC 24 08            [12] 1843 	add	a,#0x08
      0027BE F8               [12] 1844 	mov	r0,a
      0027BF E6               [12] 1845 	mov	a,@r0
      0027C0 2A               [12] 1846 	add	a,r2
      0027C1 FE               [12] 1847 	mov	r6,a
      0027C2 08               [12] 1848 	inc	r0
      0027C3 E6               [12] 1849 	mov	a,@r0
      0027C4 3B               [12] 1850 	addc	a,r3
      0027C5 FF               [12] 1851 	mov	r7,a
      0027C6 EE               [12] 1852 	mov	a,r6
      0027C7 24 00            [12] 1853 	add	a,#_u
      0027C9 F5 82            [12] 1854 	mov	dpl,a
      0027CB EF               [12] 1855 	mov	a,r7
      0027CC 34 84            [12] 1856 	addc	a,#(_u >> 8)
      0027CE F5 83            [12] 1857 	mov	dph,a
      0027D0 E0               [24] 1858 	movx	a,@dptr
      0027D1 FF               [12] 1859 	mov	r7,a
      0027D2 A8 10            [24] 1860 	mov	r0,_bp
      0027D4 08               [12] 1861 	inc	r0
      0027D5 EF               [12] 1862 	mov	a,r7
      0027D6 26               [12] 1863 	add	a,@r0
      0027D7 F6               [12] 1864 	mov	@r0,a
                                   1865 ;	life.c:192: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      0027D8 E5 10            [12] 1866 	mov	a,_bp
      0027DA 24 06            [12] 1867 	add	a,#0x06
      0027DC F8               [12] 1868 	mov	r0,a
      0027DD 74 31            [12] 1869 	mov	a,#0x31
      0027DF 26               [12] 1870 	add	a,@r0
      0027E0 FE               [12] 1871 	mov	r6,a
      0027E1 E4               [12] 1872 	clr	a
      0027E2 08               [12] 1873 	inc	r0
      0027E3 36               [12] 1874 	addc	a,@r0
      0027E4 FF               [12] 1875 	mov	r7,a
      0027E5 C0 03            [24] 1876 	push	ar3
      0027E7 C0 02            [24] 1877 	push	ar2
      0027E9 74 30            [12] 1878 	mov	a,#0x30
      0027EB C0 E0            [24] 1879 	push	acc
      0027ED E4               [12] 1880 	clr	a
      0027EE C0 E0            [24] 1881 	push	acc
      0027F0 8E 82            [24] 1882 	mov	dpl,r6
      0027F2 8F 83            [24] 1883 	mov	dph,r7
      0027F4 12 2E 40         [24] 1884 	lcall	__modsint
      0027F7 AE 82            [24] 1885 	mov	r6,dpl
      0027F9 AF 83            [24] 1886 	mov	r7,dph
      0027FB 15 81            [12] 1887 	dec	sp
      0027FD 15 81            [12] 1888 	dec	sp
      0027FF D0 02            [24] 1889 	pop	ar2
      002801 D0 03            [24] 1890 	pop	ar3
      002803 D0 04            [24] 1891 	pop	ar4
      002805 D0 05            [24] 1892 	pop	ar5
      002807 EE               [12] 1893 	mov	a,r6
      002808 2A               [12] 1894 	add	a,r2
      002809 FA               [12] 1895 	mov	r2,a
      00280A EF               [12] 1896 	mov	a,r7
      00280B 3B               [12] 1897 	addc	a,r3
      00280C FB               [12] 1898 	mov	r3,a
      00280D EA               [12] 1899 	mov	a,r2
      00280E 24 00            [12] 1900 	add	a,#_u
      002810 F5 82            [12] 1901 	mov	dpl,a
      002812 EB               [12] 1902 	mov	a,r3
      002813 34 84            [12] 1903 	addc	a,#(_u >> 8)
      002815 F5 83            [12] 1904 	mov	dph,a
      002817 E0               [24] 1905 	movx	a,@dptr
      002818 FB               [12] 1906 	mov	r3,a
      002819 A8 10            [24] 1907 	mov	r0,_bp
      00281B 08               [12] 1908 	inc	r0
      00281C EB               [12] 1909 	mov	a,r3
      00281D 26               [12] 1910 	add	a,@r0
      00281E F6               [12] 1911 	mov	@r0,a
                                   1912 ;	life.c:194: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      00281F 78 35            [12] 1913 	mov	r0,#_y
      002821 E5 10            [12] 1914 	mov	a,_bp
      002823 24 0A            [12] 1915 	add	a,#0x0a
      002825 F9               [12] 1916 	mov	r1,a
      002826 E6               [12] 1917 	mov	a,@r0
      002827 F7               [12] 1918 	mov	@r1,a
      002828 08               [12] 1919 	inc	r0
      002829 09               [12] 1920 	inc	r1
      00282A E6               [12] 1921 	mov	a,@r0
      00282B F7               [12] 1922 	mov	@r1,a
      00282C E5 10            [12] 1923 	mov	a,_bp
      00282E 24 0A            [12] 1924 	add	a,#0x0a
      002830 F8               [12] 1925 	mov	r0,a
      002831 74 C0            [12] 1926 	mov	a,#0xc0
      002833 26               [12] 1927 	add	a,@r0
      002834 FA               [12] 1928 	mov	r2,a
      002835 E4               [12] 1929 	clr	a
      002836 08               [12] 1930 	inc	r0
      002837 36               [12] 1931 	addc	a,@r0
      002838 FB               [12] 1932 	mov	r3,a
      002839 C0 07            [24] 1933 	push	ar7
      00283B C0 06            [24] 1934 	push	ar6
      00283D C0 05            [24] 1935 	push	ar5
      00283F C0 04            [24] 1936 	push	ar4
      002841 74 C0            [12] 1937 	mov	a,#0xc0
      002843 C0 E0            [24] 1938 	push	acc
      002845 E4               [12] 1939 	clr	a
      002846 C0 E0            [24] 1940 	push	acc
      002848 8A 82            [24] 1941 	mov	dpl,r2
      00284A 8B 83            [24] 1942 	mov	dph,r3
      00284C 12 2E 40         [24] 1943 	lcall	__modsint
      00284F AA 82            [24] 1944 	mov	r2,dpl
      002851 AB 83            [24] 1945 	mov	r3,dph
      002853 15 81            [12] 1946 	dec	sp
      002855 15 81            [12] 1947 	dec	sp
      002857 C0 02            [24] 1948 	push	ar2
      002859 C0 03            [24] 1949 	push	ar3
      00285B 90 00 30         [24] 1950 	mov	dptr,#0x0030
      00285E 12 2C 62         [24] 1951 	lcall	__mulint
      002861 C8               [12] 1952 	xch	a,r0
      002862 E5 10            [12] 1953 	mov	a,_bp
      002864 24 0C            [12] 1954 	add	a,#0x0c
      002866 C8               [12] 1955 	xch	a,r0
      002867 A6 82            [24] 1956 	mov	@r0,dpl
      002869 08               [12] 1957 	inc	r0
      00286A A6 83            [24] 1958 	mov	@r0,dph
      00286C 15 81            [12] 1959 	dec	sp
      00286E 15 81            [12] 1960 	dec	sp
      002870 D0 04            [24] 1961 	pop	ar4
      002872 D0 05            [24] 1962 	pop	ar5
      002874 D0 06            [24] 1963 	pop	ar6
      002876 D0 07            [24] 1964 	pop	ar7
      002878 E5 10            [12] 1965 	mov	a,_bp
      00287A 24 0C            [12] 1966 	add	a,#0x0c
      00287C F8               [12] 1967 	mov	r0,a
      00287D EC               [12] 1968 	mov	a,r4
      00287E 26               [12] 1969 	add	a,@r0
      00287F FA               [12] 1970 	mov	r2,a
      002880 ED               [12] 1971 	mov	a,r5
      002881 08               [12] 1972 	inc	r0
      002882 36               [12] 1973 	addc	a,@r0
      002883 FB               [12] 1974 	mov	r3,a
      002884 EA               [12] 1975 	mov	a,r2
      002885 24 00            [12] 1976 	add	a,#_u
      002887 F5 82            [12] 1977 	mov	dpl,a
      002889 EB               [12] 1978 	mov	a,r3
      00288A 34 84            [12] 1979 	addc	a,#(_u >> 8)
      00288C F5 83            [12] 1980 	mov	dph,a
      00288E E0               [24] 1981 	movx	a,@dptr
      00288F FB               [12] 1982 	mov	r3,a
      002890 A8 10            [24] 1983 	mov	r0,_bp
      002892 08               [12] 1984 	inc	r0
      002893 EB               [12] 1985 	mov	a,r3
      002894 26               [12] 1986 	add	a,@r0
      002895 F6               [12] 1987 	mov	@r0,a
                                   1988 ;	life.c:196: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      002896 E5 10            [12] 1989 	mov	a,_bp
      002898 24 0C            [12] 1990 	add	a,#0x0c
      00289A F8               [12] 1991 	mov	r0,a
      00289B E5 10            [12] 1992 	mov	a,_bp
      00289D 24 08            [12] 1993 	add	a,#0x08
      00289F F9               [12] 1994 	mov	r1,a
      0028A0 E7               [12] 1995 	mov	a,@r1
      0028A1 26               [12] 1996 	add	a,@r0
      0028A2 FA               [12] 1997 	mov	r2,a
      0028A3 09               [12] 1998 	inc	r1
      0028A4 E7               [12] 1999 	mov	a,@r1
      0028A5 08               [12] 2000 	inc	r0
      0028A6 36               [12] 2001 	addc	a,@r0
      0028A7 FB               [12] 2002 	mov	r3,a
      0028A8 EA               [12] 2003 	mov	a,r2
      0028A9 24 00            [12] 2004 	add	a,#_u
      0028AB F5 82            [12] 2005 	mov	dpl,a
      0028AD EB               [12] 2006 	mov	a,r3
      0028AE 34 84            [12] 2007 	addc	a,#(_u >> 8)
      0028B0 F5 83            [12] 2008 	mov	dph,a
      0028B2 E0               [24] 2009 	movx	a,@dptr
      0028B3 FB               [12] 2010 	mov	r3,a
      0028B4 A8 10            [24] 2011 	mov	r0,_bp
      0028B6 08               [12] 2012 	inc	r0
      0028B7 EB               [12] 2013 	mov	a,r3
      0028B8 26               [12] 2014 	add	a,@r0
      0028B9 F6               [12] 2015 	mov	@r0,a
                                   2016 ;	life.c:198: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      0028BA E5 10            [12] 2017 	mov	a,_bp
      0028BC 24 0C            [12] 2018 	add	a,#0x0c
      0028BE F8               [12] 2019 	mov	r0,a
      0028BF EE               [12] 2020 	mov	a,r6
      0028C0 26               [12] 2021 	add	a,@r0
      0028C1 FA               [12] 2022 	mov	r2,a
      0028C2 EF               [12] 2023 	mov	a,r7
      0028C3 08               [12] 2024 	inc	r0
      0028C4 36               [12] 2025 	addc	a,@r0
      0028C5 FB               [12] 2026 	mov	r3,a
      0028C6 EA               [12] 2027 	mov	a,r2
      0028C7 24 00            [12] 2028 	add	a,#_u
      0028C9 F5 82            [12] 2029 	mov	dpl,a
      0028CB EB               [12] 2030 	mov	a,r3
      0028CC 34 84            [12] 2031 	addc	a,#(_u >> 8)
      0028CE F5 83            [12] 2032 	mov	dph,a
      0028D0 E0               [24] 2033 	movx	a,@dptr
      0028D1 FB               [12] 2034 	mov	r3,a
      0028D2 A8 10            [24] 2035 	mov	r0,_bp
      0028D4 08               [12] 2036 	inc	r0
      0028D5 E5 10            [12] 2037 	mov	a,_bp
      0028D7 24 0C            [12] 2038 	add	a,#0x0c
      0028D9 F9               [12] 2039 	mov	r1,a
      0028DA EB               [12] 2040 	mov	a,r3
      0028DB 26               [12] 2041 	add	a,@r0
      0028DC F7               [12] 2042 	mov	@r1,a
                                   2043 ;	life.c:200: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      0028DD E5 10            [12] 2044 	mov	a,_bp
      0028DF 24 0A            [12] 2045 	add	a,#0x0a
      0028E1 F8               [12] 2046 	mov	r0,a
      0028E2 74 C1            [12] 2047 	mov	a,#0xc1
      0028E4 26               [12] 2048 	add	a,@r0
      0028E5 FA               [12] 2049 	mov	r2,a
      0028E6 E4               [12] 2050 	clr	a
      0028E7 08               [12] 2051 	inc	r0
      0028E8 36               [12] 2052 	addc	a,@r0
      0028E9 FB               [12] 2053 	mov	r3,a
      0028EA C0 07            [24] 2054 	push	ar7
      0028EC C0 06            [24] 2055 	push	ar6
      0028EE C0 05            [24] 2056 	push	ar5
      0028F0 C0 04            [24] 2057 	push	ar4
      0028F2 74 C0            [12] 2058 	mov	a,#0xc0
      0028F4 C0 E0            [24] 2059 	push	acc
      0028F6 E4               [12] 2060 	clr	a
      0028F7 C0 E0            [24] 2061 	push	acc
      0028F9 8A 82            [24] 2062 	mov	dpl,r2
      0028FB 8B 83            [24] 2063 	mov	dph,r3
      0028FD 12 2E 40         [24] 2064 	lcall	__modsint
      002900 AA 82            [24] 2065 	mov	r2,dpl
      002902 AB 83            [24] 2066 	mov	r3,dph
      002904 15 81            [12] 2067 	dec	sp
      002906 15 81            [12] 2068 	dec	sp
      002908 C0 02            [24] 2069 	push	ar2
      00290A C0 03            [24] 2070 	push	ar3
      00290C 90 00 30         [24] 2071 	mov	dptr,#0x0030
      00290F 12 2C 62         [24] 2072 	lcall	__mulint
      002912 AA 82            [24] 2073 	mov	r2,dpl
      002914 AB 83            [24] 2074 	mov	r3,dph
      002916 15 81            [12] 2075 	dec	sp
      002918 15 81            [12] 2076 	dec	sp
      00291A D0 04            [24] 2077 	pop	ar4
      00291C D0 05            [24] 2078 	pop	ar5
      00291E D0 06            [24] 2079 	pop	ar6
      002920 D0 07            [24] 2080 	pop	ar7
      002922 EC               [12] 2081 	mov	a,r4
      002923 2A               [12] 2082 	add	a,r2
      002924 FC               [12] 2083 	mov	r4,a
      002925 ED               [12] 2084 	mov	a,r5
      002926 3B               [12] 2085 	addc	a,r3
      002927 FD               [12] 2086 	mov	r5,a
      002928 EC               [12] 2087 	mov	a,r4
      002929 24 00            [12] 2088 	add	a,#_u
      00292B F5 82            [12] 2089 	mov	dpl,a
      00292D ED               [12] 2090 	mov	a,r5
      00292E 34 84            [12] 2091 	addc	a,#(_u >> 8)
      002930 F5 83            [12] 2092 	mov	dph,a
      002932 E0               [24] 2093 	movx	a,@dptr
      002933 FD               [12] 2094 	mov	r5,a
      002934 E5 10            [12] 2095 	mov	a,_bp
      002936 24 0C            [12] 2096 	add	a,#0x0c
      002938 F8               [12] 2097 	mov	r0,a
      002939 E5 10            [12] 2098 	mov	a,_bp
      00293B 24 0C            [12] 2099 	add	a,#0x0c
      00293D F9               [12] 2100 	mov	r1,a
      00293E ED               [12] 2101 	mov	a,r5
      00293F 26               [12] 2102 	add	a,@r0
      002940 F7               [12] 2103 	mov	@r1,a
                                   2104 ;	life.c:202: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      002941 E5 10            [12] 2105 	mov	a,_bp
      002943 24 08            [12] 2106 	add	a,#0x08
      002945 F8               [12] 2107 	mov	r0,a
      002946 E6               [12] 2108 	mov	a,@r0
      002947 2A               [12] 2109 	add	a,r2
      002948 FC               [12] 2110 	mov	r4,a
      002949 08               [12] 2111 	inc	r0
      00294A E6               [12] 2112 	mov	a,@r0
      00294B 3B               [12] 2113 	addc	a,r3
      00294C FD               [12] 2114 	mov	r5,a
      00294D EC               [12] 2115 	mov	a,r4
      00294E 24 00            [12] 2116 	add	a,#_u
      002950 F5 82            [12] 2117 	mov	dpl,a
      002952 ED               [12] 2118 	mov	a,r5
      002953 34 84            [12] 2119 	addc	a,#(_u >> 8)
      002955 F5 83            [12] 2120 	mov	dph,a
      002957 E0               [24] 2121 	movx	a,@dptr
      002958 FD               [12] 2122 	mov	r5,a
      002959 E5 10            [12] 2123 	mov	a,_bp
      00295B 24 0C            [12] 2124 	add	a,#0x0c
      00295D F8               [12] 2125 	mov	r0,a
      00295E ED               [12] 2126 	mov	a,r5
      00295F 26               [12] 2127 	add	a,@r0
      002960 FD               [12] 2128 	mov	r5,a
                                   2129 ;	life.c:203: y1 = 1; x1 = 1;
      002961 78 41            [12] 2130 	mov	r0,#_y1
      002963 76 01            [12] 2131 	mov	@r0,#0x01
      002965 08               [12] 2132 	inc	r0
      002966 76 00            [12] 2133 	mov	@r0,#0x00
      002968 78 3F            [12] 2134 	mov	r0,#_x1
      00296A 76 01            [12] 2135 	mov	@r0,#0x01
      00296C 08               [12] 2136 	inc	r0
      00296D 76 00            [12] 2137 	mov	@r0,#0x00
                                   2138 ;	life.c:204: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      00296F EE               [12] 2139 	mov	a,r6
      002970 2A               [12] 2140 	add	a,r2
      002971 FE               [12] 2141 	mov	r6,a
      002972 EF               [12] 2142 	mov	a,r7
      002973 3B               [12] 2143 	addc	a,r3
      002974 FF               [12] 2144 	mov	r7,a
      002975 EE               [12] 2145 	mov	a,r6
      002976 24 00            [12] 2146 	add	a,#_u
      002978 F5 82            [12] 2147 	mov	dpl,a
      00297A EF               [12] 2148 	mov	a,r7
      00297B 34 84            [12] 2149 	addc	a,#(_u >> 8)
      00297D F5 83            [12] 2150 	mov	dph,a
      00297F E0               [24] 2151 	movx	a,@dptr
      002980 2D               [12] 2152 	add	a,r5
      002981 FF               [12] 2153 	mov	r7,a
      002982 78 3C            [12] 2154 	mov	r0,#_n
      002984 A6 07            [24] 2155 	mov	@r0,ar7
                                   2156 ;	life.c:206: nu[A2D(W, y, x)] = (n == 3) || ((n == 2) && u[A2D(W, y, x)]);
      002986 A8 10            [24] 2157 	mov	r0,_bp
      002988 08               [12] 2158 	inc	r0
      002989 08               [12] 2159 	inc	r0
      00298A E6               [12] 2160 	mov	a,@r0
      00298B 24 00            [12] 2161 	add	a,#_nu
      00298D FD               [12] 2162 	mov	r5,a
      00298E 08               [12] 2163 	inc	r0
      00298F E6               [12] 2164 	mov	a,@r0
      002990 34 A8            [12] 2165 	addc	a,#(_nu >> 8)
      002992 FE               [12] 2166 	mov	r6,a
      002993 BF 03 02         [24] 2167 	cjne	r7,#0x03,00544$
      002996 80 28            [24] 2168 	sjmp	00250$
      002998                       2169 00544$:
      002998 BF 02 21         [24] 2170 	cjne	r7,#0x02,00249$
      00299B E5 10            [12] 2171 	mov	a,_bp
      00299D 24 04            [12] 2172 	add	a,#0x04
      00299F F8               [12] 2173 	mov	r0,a
      0029A0 E5 10            [12] 2174 	mov	a,_bp
      0029A2 24 06            [12] 2175 	add	a,#0x06
      0029A4 F9               [12] 2176 	mov	r1,a
      0029A5 E7               [12] 2177 	mov	a,@r1
      0029A6 26               [12] 2178 	add	a,@r0
      0029A7 FC               [12] 2179 	mov	r4,a
      0029A8 09               [12] 2180 	inc	r1
      0029A9 E7               [12] 2181 	mov	a,@r1
      0029AA 08               [12] 2182 	inc	r0
      0029AB 36               [12] 2183 	addc	a,@r0
      0029AC FF               [12] 2184 	mov	r7,a
      0029AD EC               [12] 2185 	mov	a,r4
      0029AE 24 00            [12] 2186 	add	a,#_u
      0029B0 FC               [12] 2187 	mov	r4,a
      0029B1 EF               [12] 2188 	mov	a,r7
      0029B2 34 84            [12] 2189 	addc	a,#(_u >> 8)
      0029B4 FF               [12] 2190 	mov	r7,a
      0029B5 8C 82            [24] 2191 	mov	dpl,r4
      0029B7 8F 83            [24] 2192 	mov	dph,r7
      0029B9 E0               [24] 2193 	movx	a,@dptr
      0029BA 70 04            [24] 2194 	jnz	00250$
      0029BC                       2195 00249$:
                                   2196 ;	assignBit
      0029BC C2 00            [12] 2197 	clr	b0
      0029BE 80 02            [24] 2198 	sjmp	00251$
      0029C0                       2199 00250$:
                                   2200 ;	assignBit
      0029C0 D2 00            [12] 2201 	setb	b0
      0029C2                       2202 00251$:
      0029C2 A2 00            [12] 2203 	mov	c,b0
      0029C4 E4               [12] 2204 	clr	a
      0029C5 33               [12] 2205 	rlc	a
      0029C6 8D 82            [24] 2206 	mov	dpl,r5
      0029C8 8E 83            [24] 2207 	mov	dph,r6
      0029CA F0               [24] 2208 	movx	@dptr,a
                                   2209 ;	life.c:207: cycle2 |= pu[A2D(W, y, x)] ^ nu[A2D(W, y, x)];
      0029CB 78 35            [12] 2210 	mov	r0,#_y
      0029CD E6               [12] 2211 	mov	a,@r0
      0029CE C0 E0            [24] 2212 	push	acc
      0029D0 08               [12] 2213 	inc	r0
      0029D1 E6               [12] 2214 	mov	a,@r0
      0029D2 C0 E0            [24] 2215 	push	acc
      0029D4 90 00 30         [24] 2216 	mov	dptr,#0x0030
      0029D7 12 2C 62         [24] 2217 	lcall	__mulint
      0029DA AE 82            [24] 2218 	mov	r6,dpl
      0029DC AF 83            [24] 2219 	mov	r7,dph
      0029DE 15 81            [12] 2220 	dec	sp
      0029E0 15 81            [12] 2221 	dec	sp
      0029E2 78 33            [12] 2222 	mov	r0,#_x
      0029E4 E6               [12] 2223 	mov	a,@r0
      0029E5 2E               [12] 2224 	add	a,r6
      0029E6 FE               [12] 2225 	mov	r6,a
      0029E7 08               [12] 2226 	inc	r0
      0029E8 E6               [12] 2227 	mov	a,@r0
      0029E9 3F               [12] 2228 	addc	a,r7
      0029EA FF               [12] 2229 	mov	r7,a
      0029EB EE               [12] 2230 	mov	a,r6
      0029EC 24 00            [12] 2231 	add	a,#_pu
      0029EE F5 82            [12] 2232 	mov	dpl,a
      0029F0 EF               [12] 2233 	mov	a,r7
      0029F1 34 60            [12] 2234 	addc	a,#(_pu >> 8)
      0029F3 F5 83            [12] 2235 	mov	dph,a
      0029F5 E0               [24] 2236 	movx	a,@dptr
      0029F6 FD               [12] 2237 	mov	r5,a
      0029F7 EE               [12] 2238 	mov	a,r6
      0029F8 24 00            [12] 2239 	add	a,#_nu
      0029FA F5 82            [12] 2240 	mov	dpl,a
      0029FC EF               [12] 2241 	mov	a,r7
      0029FD 34 A8            [12] 2242 	addc	a,#(_nu >> 8)
      0029FF F5 83            [12] 2243 	mov	dph,a
      002A01 E0               [24] 2244 	movx	a,@dptr
      002A02 FC               [12] 2245 	mov	r4,a
      002A03 6D               [12] 2246 	xrl	a,r5
      002A04 78 3E            [12] 2247 	mov	r0,#_cycle2
      002A06 46               [12] 2248 	orl	a,@r0
      002A07 F6               [12] 2249 	mov	@r0,a
                                   2250 ;	life.c:208: fixed |= u[A2D(W, y, x)] ^ nu[A2D(W, y, x)];
      002A08 EE               [12] 2251 	mov	a,r6
      002A09 24 00            [12] 2252 	add	a,#_u
      002A0B F5 82            [12] 2253 	mov	dpl,a
      002A0D EF               [12] 2254 	mov	a,r7
      002A0E 34 84            [12] 2255 	addc	a,#(_u >> 8)
      002A10 F5 83            [12] 2256 	mov	dph,a
      002A12 E0               [24] 2257 	movx	a,@dptr
      002A13 FF               [12] 2258 	mov	r7,a
      002A14 EC               [12] 2259 	mov	a,r4
      002A15 6F               [12] 2260 	xrl	a,r7
      002A16 78 3D            [12] 2261 	mov	r0,#_fixed
      002A18 46               [12] 2262 	orl	a,@r0
      002A19 F6               [12] 2263 	mov	@r0,a
                                   2264 ;	life.c:184: for (x = 0; x < W; x++) {
      002A1A 78 33            [12] 2265 	mov	r0,#_x
      002A1C 06               [12] 2266 	inc	@r0
      002A1D B6 00 02         [24] 2267 	cjne	@r0,#0x00,00548$
      002A20 08               [12] 2268 	inc	r0
      002A21 06               [12] 2269 	inc	@r0
      002A22                       2270 00548$:
      002A22 78 33            [12] 2271 	mov	r0,#_x
      002A24 C3               [12] 2272 	clr	c
      002A25 E6               [12] 2273 	mov	a,@r0
      002A26 94 30            [12] 2274 	subb	a,#0x30
      002A28 08               [12] 2275 	inc	r0
      002A29 E6               [12] 2276 	mov	a,@r0
      002A2A 64 80            [12] 2277 	xrl	a,#0x80
      002A2C 94 80            [12] 2278 	subb	a,#0x80
      002A2E 50 03            [24] 2279 	jnc	00549$
      002A30 02 26 A2         [24] 2280 	ljmp	00222$
      002A33                       2281 00549$:
                                   2282 ;	life.c:181: for (y = 0; y < H; y++) {
      002A33 78 35            [12] 2283 	mov	r0,#_y
      002A35 06               [12] 2284 	inc	@r0
      002A36 B6 00 02         [24] 2285 	cjne	@r0,#0x00,00550$
      002A39 08               [12] 2286 	inc	r0
      002A3A 06               [12] 2287 	inc	@r0
      002A3B                       2288 00550$:
      002A3B 78 35            [12] 2289 	mov	r0,#_y
      002A3D C3               [12] 2290 	clr	c
      002A3E E6               [12] 2291 	mov	a,@r0
      002A3F 94 C0            [12] 2292 	subb	a,#0xc0
      002A41 08               [12] 2293 	inc	r0
      002A42 E6               [12] 2294 	mov	a,@r0
      002A43 64 80            [12] 2295 	xrl	a,#0x80
      002A45 94 80            [12] 2296 	subb	a,#0x80
      002A47 50 03            [24] 2297 	jnc	00551$
      002A49 02 26 7A         [24] 2298 	ljmp	00224$
      002A4C                       2299 00551$:
                                   2300 ;	life.c:212: cycle2 = !cycle2;
      002A4C 78 3E            [12] 2301 	mov	r0,#_cycle2
      002A4E E6               [12] 2302 	mov	a,@r0
      002A4F B4 01 00         [24] 2303 	cjne	a,#0x01,00552$
      002A52                       2304 00552$:
      002A52 92 00            [24] 2305 	mov	b0,c
      002A54 78 3E            [12] 2306 	mov	r0,#_cycle2
      002A56 E4               [12] 2307 	clr	a
      002A57 33               [12] 2308 	rlc	a
      002A58 F6               [12] 2309 	mov	@r0,a
                                   2310 ;	life.c:213: fixed = !fixed;
      002A59 78 3D            [12] 2311 	mov	r0,#_fixed
      002A5B E6               [12] 2312 	mov	a,@r0
      002A5C B4 01 00         [24] 2313 	cjne	a,#0x01,00553$
      002A5F                       2314 00553$:
      002A5F 92 00            [24] 2315 	mov	b0,c
      002A61 78 3D            [12] 2316 	mov	r0,#_fixed
      002A63 E4               [12] 2317 	clr	a
      002A64 33               [12] 2318 	rlc	a
      002A65 F6               [12] 2319 	mov	@r0,a
                                   2320 ;	life.c:215: memcpy(pu, u, sizeof (u));
      002A66 E4               [12] 2321 	clr	a
      002A67 C0 E0            [24] 2322 	push	acc
      002A69 74 24            [12] 2323 	mov	a,#0x24
      002A6B C0 E0            [24] 2324 	push	acc
      002A6D 74 00            [12] 2325 	mov	a,#_u
      002A6F C0 E0            [24] 2326 	push	acc
      002A71 74 84            [12] 2327 	mov	a,#(_u >> 8)
      002A73 C0 E0            [24] 2328 	push	acc
      002A75 E4               [12] 2329 	clr	a
      002A76 C0 E0            [24] 2330 	push	acc
      002A78 90 60 00         [24] 2331 	mov	dptr,#_pu
      002A7B 75 F0 00         [24] 2332 	mov	b,#0x00
      002A7E 12 2D 00         [24] 2333 	lcall	___memcpy
      002A81 E5 81            [12] 2334 	mov	a,sp
      002A83 24 FB            [12] 2335 	add	a,#0xfb
      002A85 F5 81            [12] 2336 	mov	sp,a
                                   2337 ;	life.c:216: memcpy(u, nu, sizeof (nu));
      002A87 E4               [12] 2338 	clr	a
      002A88 C0 E0            [24] 2339 	push	acc
      002A8A 74 24            [12] 2340 	mov	a,#0x24
      002A8C C0 E0            [24] 2341 	push	acc
      002A8E 74 00            [12] 2342 	mov	a,#_nu
      002A90 C0 E0            [24] 2343 	push	acc
      002A92 74 A8            [12] 2344 	mov	a,#(_nu >> 8)
      002A94 C0 E0            [24] 2345 	push	acc
      002A96 E4               [12] 2346 	clr	a
      002A97 C0 E0            [24] 2347 	push	acc
      002A99 90 84 00         [24] 2348 	mov	dptr,#_u
      002A9C 75 F0 00         [24] 2349 	mov	b,#0x00
      002A9F 12 2D 00         [24] 2350 	lcall	___memcpy
      002AA2 E5 81            [12] 2351 	mov	a,sp
      002AA4 24 FB            [12] 2352 	add	a,#0xfb
      002AA6 F5 81            [12] 2353 	mov	sp,a
                                   2354 ;	life.c:259: if (fixed || cycle2) {
      002AA8 78 3D            [12] 2355 	mov	r0,#_fixed
      002AAA E6               [12] 2356 	mov	a,@r0
      002AAB 70 08            [24] 2357 	jnz	00131$
      002AAD 78 3E            [12] 2358 	mov	r0,#_cycle2
      002AAF E6               [12] 2359 	mov	a,@r0
      002AB0 70 03            [24] 2360 	jnz	00555$
      002AB2 02 26 52         [24] 2361 	ljmp	00237$
      002AB5                       2362 00555$:
      002AB5                       2363 00131$:
                                   2364 ;	life.c:260: printstr("DONE ");
      002AB5 7D 9C            [12] 2365 	mov	r5,#___str_7
      002AB7 7E 2F            [12] 2366 	mov	r6,#(___str_7 >> 8)
      002AB9 7F 80            [12] 2367 	mov	r7,#0x80
                                   2368 ;	life.c:50: return;
      002ABB                       2369 00227$:
                                   2370 ;	life.c:48: for (; *s; s++) putchar(*s);
      002ABB 8D 82            [24] 2371 	mov	dpl,r5
      002ABD 8E 83            [24] 2372 	mov	dph,r6
      002ABF 8F F0            [24] 2373 	mov	b,r7
      002AC1 12 2E 24         [24] 2374 	lcall	__gptrget
      002AC4 FC               [12] 2375 	mov	r4,a
      002AC5 60 10            [24] 2376 	jz	00188$
      002AC7 7B 00            [12] 2377 	mov	r3,#0x00
      002AC9 8C 82            [24] 2378 	mov	dpl,r4
      002ACB 8B 83            [24] 2379 	mov	dph,r3
      002ACD 12 20 CE         [24] 2380 	lcall	_putchar
      002AD0 0D               [12] 2381 	inc	r5
                                   2382 ;	life.c:260: printstr("DONE ");
      002AD1 BD 00 E7         [24] 2383 	cjne	r5,#0x00,00227$
      002AD4 0E               [12] 2384 	inc	r6
      002AD5 80 E4            [24] 2385 	sjmp	00227$
      002AD7                       2386 00188$:
                                   2387 ;	life.c:261: if (fixed) printstr("FIXED\r\n");
      002AD7 78 3D            [12] 2388 	mov	r0,#_fixed
      002AD9 E6               [12] 2389 	mov	a,@r0
      002ADA 60 22            [24] 2390 	jz	00129$
      002ADC 7D A2            [12] 2391 	mov	r5,#___str_8
      002ADE 7E 2F            [12] 2392 	mov	r6,#(___str_8 >> 8)
      002AE0 7F 80            [12] 2393 	mov	r7,#0x80
                                   2394 ;	life.c:50: return;
      002AE2                       2395 00230$:
                                   2396 ;	life.c:48: for (; *s; s++) putchar(*s);
      002AE2 8D 82            [24] 2397 	mov	dpl,r5
      002AE4 8E 83            [24] 2398 	mov	dph,r6
      002AE6 8F F0            [24] 2399 	mov	b,r7
      002AE8 12 2E 24         [24] 2400 	lcall	__gptrget
      002AEB FC               [12] 2401 	mov	r4,a
      002AEC 60 32            [24] 2402 	jz	00130$
      002AEE 7B 00            [12] 2403 	mov	r3,#0x00
      002AF0 8C 82            [24] 2404 	mov	dpl,r4
      002AF2 8B 83            [24] 2405 	mov	dph,r3
      002AF4 12 20 CE         [24] 2406 	lcall	_putchar
      002AF7 0D               [12] 2407 	inc	r5
                                   2408 ;	life.c:261: if (fixed) printstr("FIXED\r\n");
      002AF8 BD 00 E7         [24] 2409 	cjne	r5,#0x00,00230$
      002AFB 0E               [12] 2410 	inc	r6
      002AFC 80 E4            [24] 2411 	sjmp	00230$
      002AFE                       2412 00129$:
                                   2413 ;	life.c:262: else printstr("CYCLE2\r\n");
      002AFE 7D AA            [12] 2414 	mov	r5,#___str_9
      002B00 7E 2F            [12] 2415 	mov	r6,#(___str_9 >> 8)
      002B02 7F 80            [12] 2416 	mov	r7,#0x80
                                   2417 ;	life.c:50: return;
      002B04                       2418 00233$:
                                   2419 ;	life.c:48: for (; *s; s++) putchar(*s);
      002B04 8D 82            [24] 2420 	mov	dpl,r5
      002B06 8E 83            [24] 2421 	mov	dph,r6
      002B08 8F F0            [24] 2422 	mov	b,r7
      002B0A 12 2E 24         [24] 2423 	lcall	__gptrget
      002B0D FC               [12] 2424 	mov	r4,a
      002B0E 60 10            [24] 2425 	jz	00130$
      002B10 7B 00            [12] 2426 	mov	r3,#0x00
      002B12 8C 82            [24] 2427 	mov	dpl,r4
      002B14 8B 83            [24] 2428 	mov	dph,r3
      002B16 12 20 CE         [24] 2429 	lcall	_putchar
      002B19 0D               [12] 2430 	inc	r5
                                   2431 ;	life.c:262: else printstr("CYCLE2\r\n");
      002B1A BD 00 E7         [24] 2432 	cjne	r5,#0x00,00233$
      002B1D 0E               [12] 2433 	inc	r6
      002B1E 80 E4            [24] 2434 	sjmp	00233$
      002B20                       2435 00130$:
                                   2436 ;	life.c:263: (void)getchar();
      002B20 12 20 D3         [24] 2437 	lcall	_getchar
                                   2438 ;	life.c:264: break;
      002B23                       2439 00134$:
                                   2440 ;	life.c:268: if (i1) {
      002B23 78 32            [12] 2441 	mov	r0,#_i1
      002B25 E6               [12] 2442 	mov	a,@r0
      002B26 60 25            [24] 2443 	jz	00243$
                                   2444 ;	life.c:269: printstr("BREAK\r\n");
      002B28 7D B3            [12] 2445 	mov	r5,#___str_10
      002B2A 7E 2F            [12] 2446 	mov	r6,#(___str_10 >> 8)
      002B2C 7F 80            [12] 2447 	mov	r7,#0x80
                                   2448 ;	life.c:50: return;
      002B2E                       2449 00240$:
                                   2450 ;	life.c:48: for (; *s; s++) putchar(*s);
      002B2E 8D 82            [24] 2451 	mov	dpl,r5
      002B30 8E 83            [24] 2452 	mov	dph,r6
      002B32 8F F0            [24] 2453 	mov	b,r7
      002B34 12 2E 24         [24] 2454 	lcall	__gptrget
      002B37 FC               [12] 2455 	mov	r4,a
      002B38 60 10            [24] 2456 	jz	00194$
      002B3A 7B 00            [12] 2457 	mov	r3,#0x00
      002B3C 8C 82            [24] 2458 	mov	dpl,r4
      002B3E 8B 83            [24] 2459 	mov	dph,r3
      002B40 12 20 CE         [24] 2460 	lcall	_putchar
      002B43 0D               [12] 2461 	inc	r5
                                   2462 ;	life.c:269: printstr("BREAK\r\n");
      002B44 BD 00 E7         [24] 2463 	cjne	r5,#0x00,00240$
      002B47 0E               [12] 2464 	inc	r6
      002B48 80 E4            [24] 2465 	sjmp	00240$
      002B4A                       2466 00194$:
                                   2467 ;	life.c:270: (void)getchar();
      002B4A 12 20 D3         [24] 2468 	lcall	_getchar
      002B4D                       2469 00243$:
                                   2470 ;	life.c:232: for (i0 = 0; !i0; ) {		
      002B4D 78 31            [12] 2471 	mov	r0,#_i0
      002B4F E6               [12] 2472 	mov	a,@r0
      002B50 70 03            [24] 2473 	jnz	00566$
      002B52 02 23 17         [24] 2474 	ljmp	00242$
      002B55                       2475 00566$:
                                   2476 ;	life.c:274: terminate:
      002B55                       2477 00138$:
                                   2478 ;	life.c:275: EA = 0;
                                   2479 ;	assignBit
      002B55 C2 AF            [12] 2480 	clr	_EA
                                   2481 ;	life.c:276: printstr("TERM\r\n");
      002B57 7D BB            [12] 2482 	mov	r5,#___str_11
      002B59 7E 2F            [12] 2483 	mov	r6,#(___str_11 >> 8)
      002B5B 7F 80            [12] 2484 	mov	r7,#0x80
                                   2485 ;	life.c:50: return;
      002B5D                       2486 00245$:
                                   2487 ;	life.c:48: for (; *s; s++) putchar(*s);
      002B5D 8D 82            [24] 2488 	mov	dpl,r5
      002B5F 8E 83            [24] 2489 	mov	dph,r6
      002B61 8F F0            [24] 2490 	mov	b,r7
      002B63 12 2E 24         [24] 2491 	lcall	__gptrget
      002B66 FC               [12] 2492 	mov	r4,a
      002B67 60 10            [24] 2493 	jz	00196$
      002B69 7B 00            [12] 2494 	mov	r3,#0x00
      002B6B 8C 82            [24] 2495 	mov	dpl,r4
      002B6D 8B 83            [24] 2496 	mov	dph,r3
      002B6F 12 20 CE         [24] 2497 	lcall	_putchar
      002B72 0D               [12] 2498 	inc	r5
                                   2499 ;	life.c:276: printstr("TERM\r\n");
      002B73 BD 00 E7         [24] 2500 	cjne	r5,#0x00,00245$
      002B76 0E               [12] 2501 	inc	r6
      002B77 80 E4            [24] 2502 	sjmp	00245$
      002B79                       2503 00196$:
                                   2504 ;	life.c:277: (void)getchar();
      002B79 12 20 D3         [24] 2505 	lcall	_getchar
                                   2506 ;	life.c:281: __endasm;
      002B7C 02 00 00         [24] 2507 	ljmp	0
                                   2508 ;	life.c:282: }
      002B7F 85 10 81         [24] 2509 	mov	sp,_bp
      002B82 D0 10            [24] 2510 	pop	_bp
      002B84 22               [24] 2511 	ret
                                   2512 	.area CSEG    (CODE)
                                   2513 	.area CONST   (CODE)
                                   2514 	.area CONST   (CODE)
      002F4C                       2515 ___str_0:
      002F4C 1B                    2516 	.db 0x1b
      002F4D 5B 32 4A              2517 	.ascii "[2J"
      002F50 1B                    2518 	.db 0x1b
      002F51 5B 6D 47 45 4E 20     2519 	.ascii "[mGEN "
      002F57 00                    2520 	.db 0x00
                                   2521 	.area CSEG    (CODE)
                                   2522 	.area CONST   (CODE)
      002F58                       2523 ___str_1:
      002F58 0D                    2524 	.db 0x0d
      002F59 0A                    2525 	.db 0x0a
      002F5A 00                    2526 	.db 0x00
                                   2527 	.area CSEG    (CODE)
                                   2528 	.area CONST   (CODE)
      002F5B                       2529 ___str_2:
      002F5B 4C 4F 41 44 20 3C     2530 	.ascii "LOAD <"
      002F61 00                    2531 	.db 0x00
                                   2532 	.area CSEG    (CODE)
                                   2533 	.area CONST   (CODE)
      002F62                       2534 ___str_3:
      002F62 3E                    2535 	.ascii ">"
      002F63 0D                    2536 	.db 0x0d
      002F64 0A                    2537 	.db 0x0a
      002F65 00                    2538 	.db 0x00
                                   2539 	.area CSEG    (CODE)
                                   2540 	.area CONST   (CODE)
      002F66                       2541 ___str_4:
      002F66 52 41 4E 44 4F 4D     2542 	.ascii "RANDOM"
      002F6C 00                    2543 	.db 0x00
                                   2544 	.area CSEG    (CODE)
                                   2545 	.area CONST   (CODE)
      002F6D                       2546 ___str_5:
      002F6D 1B                    2547 	.db 0x1b
      002F6E 5B 32 4A              2548 	.ascii "[2J"
      002F71 1B                    2549 	.db 0x1b
      002F72 5B 3F 32 35 6C        2550 	.ascii "[?25l"
      002F77 1B                    2551 	.db 0x1b
      002F78 5B 6D 4C 49 46 45 20  2552 	.ascii "[mLIFE INIT T L R"
             49 4E 49 54 20 54 20
             4C 20 52
      002F89 0D                    2553 	.db 0x0d
      002F8A 0A                    2554 	.db 0x0a
      002F8B 00                    2555 	.db 0x00
                                   2556 	.area CSEG    (CODE)
                                   2557 	.area CONST   (CODE)
      002F8C                       2558 ___str_6:
      002F8C 52 45 41 44 59 20 54  2559 	.ascii "READY T L R S"
             20 4C 20 52 20 53
      002F99 0D                    2560 	.db 0x0d
      002F9A 0A                    2561 	.db 0x0a
      002F9B 00                    2562 	.db 0x00
                                   2563 	.area CSEG    (CODE)
                                   2564 	.area CONST   (CODE)
      002F9C                       2565 ___str_7:
      002F9C 44 4F 4E 45 20        2566 	.ascii "DONE "
      002FA1 00                    2567 	.db 0x00
                                   2568 	.area CSEG    (CODE)
                                   2569 	.area CONST   (CODE)
      002FA2                       2570 ___str_8:
      002FA2 46 49 58 45 44        2571 	.ascii "FIXED"
      002FA7 0D                    2572 	.db 0x0d
      002FA8 0A                    2573 	.db 0x0a
      002FA9 00                    2574 	.db 0x00
                                   2575 	.area CSEG    (CODE)
                                   2576 	.area CONST   (CODE)
      002FAA                       2577 ___str_9:
      002FAA 43 59 43 4C 45 32     2578 	.ascii "CYCLE2"
      002FB0 0D                    2579 	.db 0x0d
      002FB1 0A                    2580 	.db 0x0a
      002FB2 00                    2581 	.db 0x00
                                   2582 	.area CSEG    (CODE)
                                   2583 	.area CONST   (CODE)
      002FB3                       2584 ___str_10:
      002FB3 42 52 45 41 4B        2585 	.ascii "BREAK"
      002FB8 0D                    2586 	.db 0x0d
      002FB9 0A                    2587 	.db 0x0a
      002FBA 00                    2588 	.db 0x00
                                   2589 	.area CSEG    (CODE)
                                   2590 	.area CONST   (CODE)
      002FBB                       2591 ___str_11:
      002FBB 54 45 52 4D           2592 	.ascii "TERM"
      002FBF 0D                    2593 	.db 0x0d
      002FC0 0A                    2594 	.db 0x0a
      002FC1 00                    2595 	.db 0x00
                                   2596 	.area CSEG    (CODE)
                                   2597 	.area XINIT   (CODE)
                                   2598 	.area CABS    (ABS,CODE)
