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
      003800                        364 _iu:
      003800                        365 	.ds 9216
      005C00                        366 _pu:
      005C00                        367 	.ds 9216
      008000                        368 _u:
      008000                        369 	.ds 9216
      00A400                        370 _nu:
      00A400                        371 	.ds 9216
      00C800                        372 _main_R_65536_165:
      00C800                        373 	.ds 2
                                    374 ;--------------------------------------------------------
                                    375 ; absolute external ram data
                                    376 ;--------------------------------------------------------
                                    377 	.area XABS    (ABS,XDATA)
                                    378 ;--------------------------------------------------------
                                    379 ; external initialized ram data
                                    380 ;--------------------------------------------------------
                                    381 	.area XISEG   (XDATA)
                                    382 	.area HOME    (CODE)
                                    383 	.area GSINIT0 (CODE)
                                    384 	.area GSINIT1 (CODE)
                                    385 	.area GSINIT2 (CODE)
                                    386 	.area GSINIT3 (CODE)
                                    387 	.area GSINIT4 (CODE)
                                    388 	.area GSINIT5 (CODE)
                                    389 	.area GSINIT  (CODE)
                                    390 	.area GSFINAL (CODE)
                                    391 	.area CSEG    (CODE)
                                    392 ;--------------------------------------------------------
                                    393 ; interrupt vector 
                                    394 ;--------------------------------------------------------
                                    395 	.area HOME    (CODE)
      002000                        396 __interrupt_vect:
      002000 02 20 19         [24]  397 	ljmp	__sdcc_gsinit_startup
      002003 02 20 DC         [24]  398 	ljmp	_int0
      002006                        399 	.ds	5
      00200B 32               [24]  400 	reti
      00200C                        401 	.ds	7
      002013 02 20 E8         [24]  402 	ljmp	_int1
                                    403 ;--------------------------------------------------------
                                    404 ; global & static initialisations
                                    405 ;--------------------------------------------------------
                                    406 	.area HOME    (CODE)
                                    407 	.area GSINIT  (CODE)
                                    408 	.area GSFINAL (CODE)
                                    409 	.area GSINIT  (CODE)
                                    410 	.globl __sdcc_gsinit_startup
                                    411 	.globl __sdcc_program_startup
                                    412 	.globl __start__stack
                                    413 	.globl __mcs51_genXINIT
                                    414 	.globl __mcs51_genXRAMCLEAR
                                    415 	.globl __mcs51_genRAMCLEAR
                                    416 ;------------------------------------------------------------
                                    417 ;Allocation info for local variables in function 'main'
                                    418 ;------------------------------------------------------------
                                    419 ;__2621440023              Allocated to registers 
                                    420 ;s                         Allocated to registers r5 r6 r7 
                                    421 ;__1310720013              Allocated to registers 
                                    422 ;s                         Allocated to registers r5 r6 r7 
                                    423 ;__1310720015              Allocated to registers r6 r7 
                                    424 ;a                         Allocated to registers r4 r5 
                                    425 ;__1310720017              Allocated to registers 
                                    426 ;s                         Allocated to registers r5 r6 r7 
                                    427 ;__1310720019              Allocated to registers 
                                    428 ;s                         Allocated to registers r5 r6 r7 
                                    429 ;__1310720021              Allocated to registers 
                                    430 ;s                         Allocated to registers r5 r6 r7 
                                    431 ;__2621440028              Allocated to registers 
                                    432 ;s                         Allocated to registers r5 r6 r7 
                                    433 ;__4587520032              Allocated to registers 
                                    434 ;s                         Allocated to registers r5 r6 r7 
                                    435 ;__4587520034              Allocated to registers 
                                    436 ;s                         Allocated to registers r5 r6 r7 
                                    437 ;__4587520036              Allocated to registers 
                                    438 ;s                         Allocated to registers r5 r6 r7 
                                    439 ;__3276800038              Allocated to registers 
                                    440 ;s                         Allocated to registers r5 r6 r7 
                                    441 ;__1310720040              Allocated to registers 
                                    442 ;s                         Allocated to registers r5 r6 r7 
                                    443 ;sloc0                     Allocated to stack - _bp +1
                                    444 ;sloc1                     Allocated to stack - _bp +2
                                    445 ;sloc2                     Allocated to stack - _bp +4
                                    446 ;sloc3                     Allocated to stack - _bp +6
                                    447 ;sloc4                     Allocated to stack - _bp +8
                                    448 ;sloc5                     Allocated to stack - _bp +10
                                    449 ;sloc6                     Allocated to stack - _bp +12
                                    450 ;R                         Allocated with name '_main_R_65536_165'
                                    451 ;------------------------------------------------------------
                                    452 ;	life.c:222: static volatile __xdata int *R = (__xdata int *)0xfffe;
      002072 90 C8 00         [24]  453 	mov	dptr,#_main_R_65536_165
      002075 74 FE            [12]  454 	mov	a,#0xfe
      002077 F0               [24]  455 	movx	@dptr,a
      002078 04               [12]  456 	inc	a
      002079 A3               [24]  457 	inc	dptr
      00207A F0               [24]  458 	movx	@dptr,a
                                    459 ;	life.c:26: __idata static const char digits[16] = {
      00207B 78 21            [12]  460 	mov	r0,#_digits
      00207D 76 30            [12]  461 	mov	@r0,#0x30
      00207F 78 22            [12]  462 	mov	r0,#(_digits + 0x0001)
      002081 76 31            [12]  463 	mov	@r0,#0x31
      002083 78 23            [12]  464 	mov	r0,#(_digits + 0x0002)
      002085 76 32            [12]  465 	mov	@r0,#0x32
      002087 78 24            [12]  466 	mov	r0,#(_digits + 0x0003)
      002089 76 33            [12]  467 	mov	@r0,#0x33
      00208B 78 25            [12]  468 	mov	r0,#(_digits + 0x0004)
      00208D 76 34            [12]  469 	mov	@r0,#0x34
      00208F 78 26            [12]  470 	mov	r0,#(_digits + 0x0005)
      002091 76 35            [12]  471 	mov	@r0,#0x35
      002093 78 27            [12]  472 	mov	r0,#(_digits + 0x0006)
      002095 76 36            [12]  473 	mov	@r0,#0x36
      002097 78 28            [12]  474 	mov	r0,#(_digits + 0x0007)
      002099 76 37            [12]  475 	mov	@r0,#0x37
      00209B 78 29            [12]  476 	mov	r0,#(_digits + 0x0008)
      00209D 76 38            [12]  477 	mov	@r0,#0x38
      00209F 78 2A            [12]  478 	mov	r0,#(_digits + 0x0009)
      0020A1 76 39            [12]  479 	mov	@r0,#0x39
      0020A3 78 2B            [12]  480 	mov	r0,#(_digits + 0x000a)
      0020A5 76 41            [12]  481 	mov	@r0,#0x41
      0020A7 78 2C            [12]  482 	mov	r0,#(_digits + 0x000b)
      0020A9 76 42            [12]  483 	mov	@r0,#0x42
      0020AB 78 2D            [12]  484 	mov	r0,#(_digits + 0x000c)
      0020AD 76 43            [12]  485 	mov	@r0,#0x43
      0020AF 78 2E            [12]  486 	mov	r0,#(_digits + 0x000d)
      0020B1 76 44            [12]  487 	mov	@r0,#0x44
      0020B3 78 2F            [12]  488 	mov	r0,#(_digits + 0x000e)
      0020B5 76 45            [12]  489 	mov	@r0,#0x45
      0020B7 78 30            [12]  490 	mov	r0,#(_digits + 0x000f)
      0020B9 76 46            [12]  491 	mov	@r0,#0x46
                                    492 ;	life.c:174: __idata static const char busy[4] = { '\\', '|', '/', '-' };
      0020BB 78 47            [12]  493 	mov	r0,#_busy
      0020BD 76 5C            [12]  494 	mov	@r0,#0x5c
      0020BF 78 48            [12]  495 	mov	r0,#(_busy + 0x0001)
      0020C1 76 7C            [12]  496 	mov	@r0,#0x7c
      0020C3 78 49            [12]  497 	mov	r0,#(_busy + 0x0002)
      0020C5 76 2F            [12]  498 	mov	@r0,#0x2f
      0020C7 78 4A            [12]  499 	mov	r0,#(_busy + 0x0003)
      0020C9 76 2D            [12]  500 	mov	@r0,#0x2d
                                    501 	.area GSFINAL (CODE)
      0020CB 02 20 16         [24]  502 	ljmp	__sdcc_program_startup
                                    503 ;--------------------------------------------------------
                                    504 ; Home
                                    505 ;--------------------------------------------------------
                                    506 	.area HOME    (CODE)
                                    507 	.area HOME    (CODE)
      002016                        508 __sdcc_program_startup:
      002016 02 22 E7         [24]  509 	ljmp	_main
                                    510 ;	return from main will return to caller
                                    511 ;--------------------------------------------------------
                                    512 ; code
                                    513 ;--------------------------------------------------------
                                    514 	.area CSEG    (CODE)
                                    515 ;------------------------------------------------------------
                                    516 ;Allocation info for local variables in function 'putchar'
                                    517 ;------------------------------------------------------------
                                    518 ;c                         Allocated to registers 
                                    519 ;------------------------------------------------------------
                                    520 ;	life.c:9: int putchar(int c) __naked {
                                    521 ;	-----------------------------------------
                                    522 ;	 function putchar
                                    523 ;	-----------------------------------------
      0020CE                        524 _putchar:
                                    525 ;	naked function: no prologue.
                                    526 ;	life.c:14: __endasm;
      0020CE E5 82            [12]  527 	mov	a, dpl
      0020D0 02 00 30         [24]  528 	ljmp	0x0030
                                    529 ;	life.c:15: }
                                    530 ;	naked function: no epilogue.
                                    531 ;------------------------------------------------------------
                                    532 ;Allocation info for local variables in function 'getchar'
                                    533 ;------------------------------------------------------------
                                    534 ;	life.c:17: int getchar(void) __naked {
                                    535 ;	-----------------------------------------
                                    536 ;	 function getchar
                                    537 ;	-----------------------------------------
      0020D3                        538 _getchar:
                                    539 ;	naked function: no prologue.
                                    540 ;	life.c:23: __endasm;
      0020D3 12 00 32         [24]  541 	lcall	0x0032
      0020D6 F5 82            [12]  542 	mov	dpl, a
      0020D8 75 83 00         [24]  543 	mov	dph, #0
      0020DB 22               [24]  544 	ret
                                    545 ;	life.c:24: }
                                    546 ;	naked function: no epilogue.
                                    547 ;------------------------------------------------------------
                                    548 ;Allocation info for local variables in function 'int0'
                                    549 ;------------------------------------------------------------
                                    550 ;	life.c:55: void int0(void) __interrupt IE0_VECTOR __using 1 {
                                    551 ;	-----------------------------------------
                                    552 ;	 function int0
                                    553 ;	-----------------------------------------
      0020DC                        554 _int0:
                           00000F   555 	ar7 = 0x0f
                           00000E   556 	ar6 = 0x0e
                           00000D   557 	ar5 = 0x0d
                           00000C   558 	ar4 = 0x0c
                           00000B   559 	ar3 = 0x0b
                           00000A   560 	ar2 = 0x0a
                           000009   561 	ar1 = 0x09
                           000008   562 	ar0 = 0x08
      0020DC C0 D0            [24]  563 	push	psw
      0020DE 75 D0 08         [24]  564 	mov	psw,#0x08
                                    565 ;	life.c:56: i0 = 1;
      0020E1 78 31            [12]  566 	mov	r0,#_i0
      0020E3 76 01            [12]  567 	mov	@r0,#0x01
                                    568 ;	life.c:57: }
      0020E5 D0 D0            [24]  569 	pop	psw
      0020E7 32               [24]  570 	reti
                                    571 ;	eliminated unneeded push/pop dpl
                                    572 ;	eliminated unneeded push/pop dph
                                    573 ;	eliminated unneeded push/pop b
                                    574 ;	eliminated unneeded push/pop acc
                                    575 ;------------------------------------------------------------
                                    576 ;Allocation info for local variables in function 'int1'
                                    577 ;------------------------------------------------------------
                                    578 ;	life.c:59: void int1(void) __interrupt IE1_VECTOR __using 1 {
                                    579 ;	-----------------------------------------
                                    580 ;	 function int1
                                    581 ;	-----------------------------------------
      0020E8                        582 _int1:
      0020E8 C0 D0            [24]  583 	push	psw
      0020EA 75 D0 08         [24]  584 	mov	psw,#0x08
                                    585 ;	life.c:60: i1 = 1;
      0020ED 78 32            [12]  586 	mov	r0,#_i1
      0020EF 76 01            [12]  587 	mov	@r0,#0x01
                                    588 ;	life.c:61: }
      0020F1 D0 D0            [24]  589 	pop	psw
      0020F3 32               [24]  590 	reti
                                    591 ;	eliminated unneeded push/pop dpl
                                    592 ;	eliminated unneeded push/pop dph
                                    593 ;	eliminated unneeded push/pop b
                                    594 ;	eliminated unneeded push/pop acc
                                    595 ;------------------------------------------------------------
                                    596 ;Allocation info for local variables in function 'show'
                                    597 ;------------------------------------------------------------
                                    598 ;hdr                       Allocated to registers r7 
                                    599 ;__1966080005              Allocated to registers 
                                    600 ;s                         Allocated to registers r5 r6 r7 
                                    601 ;__1310720001              Allocated to registers r6 r7 
                                    602 ;a                         Allocated to registers 
                                    603 ;__1310720003              Allocated to registers r6 r7 
                                    604 ;a                         Allocated to registers 
                                    605 ;__1966080008              Allocated to registers 
                                    606 ;s                         Allocated to registers r5 r6 r7 
                                    607 ;__2621440011              Allocated to registers 
                                    608 ;s                         Allocated to registers r5 r6 r7 
                                    609 ;------------------------------------------------------------
                                    610 ;	life.c:97: void show(char hdr) {
                                    611 ;	-----------------------------------------
                                    612 ;	 function show
                                    613 ;	-----------------------------------------
      0020F4                        614 _show:
                           000007   615 	ar7 = 0x07
                           000006   616 	ar6 = 0x06
                           000005   617 	ar5 = 0x05
                           000004   618 	ar4 = 0x04
                           000003   619 	ar3 = 0x03
                           000002   620 	ar2 = 0x02
                           000001   621 	ar1 = 0x01
                           000000   622 	ar0 = 0x00
                                    623 ;	life.c:98: if (hdr) {
      0020F4 E5 82            [12]  624 	mov	a,dpl
      0020F6 FF               [12]  625 	mov	r7,a
      0020F7 70 03            [24]  626 	jnz	00190$
      0020F9 02 22 4C         [24]  627 	ljmp	00102$
      0020FC                        628 00190$:
                                    629 ;	life.c:99: printstr("\033[2J\033[mGEN ");
      0020FC 7D 8C            [12]  630 	mov	r5,#___str_0
      0020FE 7E 2F            [12]  631 	mov	r6,#(___str_0 >> 8)
      002100 7F 80            [12]  632 	mov	r7,#0x80
                                    633 ;	life.c:50: return;
      002102                        634 00121$:
                                    635 ;	life.c:48: for (; *s; s++) putchar(*s);
      002102 8D 82            [24]  636 	mov	dpl,r5
      002104 8E 83            [24]  637 	mov	dph,r6
      002106 8F F0            [24]  638 	mov	b,r7
      002108 12 2E 64         [24]  639 	lcall	__gptrget
      00210B FC               [12]  640 	mov	r4,a
      00210C 60 10            [24]  641 	jz	00109$
      00210E 7B 00            [12]  642 	mov	r3,#0x00
      002110 8C 82            [24]  643 	mov	dpl,r4
      002112 8B 83            [24]  644 	mov	dph,r3
      002114 12 20 CE         [24]  645 	lcall	_putchar
      002117 0D               [12]  646 	inc	r5
                                    647 ;	life.c:99: printstr("\033[2J\033[mGEN ");
      002118 BD 00 E7         [24]  648 	cjne	r5,#0x00,00121$
      00211B 0E               [12]  649 	inc	r6
      00211C 80 E4            [24]  650 	sjmp	00121$
      00211E                        651 00109$:
                                    652 ;	life.c:91: print16x(generation[1]);
      00211E 78 45            [12]  653 	mov	r0,#(_generation + 0x0002)
      002120 86 06            [24]  654 	mov	ar6,@r0
      002122 08               [12]  655 	inc	r0
                                    656 ;	life.c:39: putchar(digits[(a >> 12) & 0xf]);
      002123 E6               [12]  657 	mov	a,@r0
      002124 FF               [12]  658 	mov	r7,a
      002125 C4               [12]  659 	swap	a
      002126 54 0F            [12]  660 	anl	a,#0x0f
      002128 30 E3 02         [24]  661 	jnb	acc.3,00193$
      00212B 44 F0            [12]  662 	orl	a,#0xf0
      00212D                        663 00193$:
      00212D FC               [12]  664 	mov	r4,a
      00212E 33               [12]  665 	rlc	a
      00212F 95 E0            [12]  666 	subb	a,acc
      002131 53 04 0F         [24]  667 	anl	ar4,#0x0f
      002134 EC               [12]  668 	mov	a,r4
      002135 24 21            [12]  669 	add	a,#_digits
      002137 F9               [12]  670 	mov	r1,a
      002138 87 05            [24]  671 	mov	ar5,@r1
      00213A 7C 00            [12]  672 	mov	r4,#0x00
      00213C 8D 82            [24]  673 	mov	dpl,r5
      00213E 8C 83            [24]  674 	mov	dph,r4
      002140 12 20 CE         [24]  675 	lcall	_putchar
                                    676 ;	life.c:40: putchar(digits[(a >> 8) & 0xf]);
      002143 8F 05            [24]  677 	mov	ar5,r7
      002145 53 05 0F         [24]  678 	anl	ar5,#0x0f
      002148 ED               [12]  679 	mov	a,r5
      002149 24 21            [12]  680 	add	a,#_digits
      00214B F9               [12]  681 	mov	r1,a
      00214C 87 05            [24]  682 	mov	ar5,@r1
      00214E 7C 00            [12]  683 	mov	r4,#0x00
      002150 8D 82            [24]  684 	mov	dpl,r5
      002152 8C 83            [24]  685 	mov	dph,r4
      002154 12 20 CE         [24]  686 	lcall	_putchar
                                    687 ;	life.c:41: putchar(digits[(a >> 4) & 0xf]);
      002157 8E 04            [24]  688 	mov	ar4,r6
      002159 EF               [12]  689 	mov	a,r7
      00215A C4               [12]  690 	swap	a
      00215B CC               [12]  691 	xch	a,r4
      00215C C4               [12]  692 	swap	a
      00215D 54 0F            [12]  693 	anl	a,#0x0f
      00215F 6C               [12]  694 	xrl	a,r4
      002160 CC               [12]  695 	xch	a,r4
      002161 54 0F            [12]  696 	anl	a,#0x0f
      002163 CC               [12]  697 	xch	a,r4
      002164 6C               [12]  698 	xrl	a,r4
      002165 CC               [12]  699 	xch	a,r4
      002166 30 E3 02         [24]  700 	jnb	acc.3,00194$
      002169 44 F0            [12]  701 	orl	a,#0xf0
      00216B                        702 00194$:
      00216B 53 04 0F         [24]  703 	anl	ar4,#0x0f
      00216E EC               [12]  704 	mov	a,r4
      00216F 24 21            [12]  705 	add	a,#_digits
      002171 F9               [12]  706 	mov	r1,a
      002172 87 05            [24]  707 	mov	ar5,@r1
      002174 7C 00            [12]  708 	mov	r4,#0x00
      002176 8D 82            [24]  709 	mov	dpl,r5
      002178 8C 83            [24]  710 	mov	dph,r4
      00217A 12 20 CE         [24]  711 	lcall	_putchar
                                    712 ;	life.c:42: putchar(digits[a & 0xf]);
      00217D 53 06 0F         [24]  713 	anl	ar6,#0x0f
      002180 EE               [12]  714 	mov	a,r6
      002181 24 21            [12]  715 	add	a,#_digits
      002183 F9               [12]  716 	mov	r1,a
      002184 87 07            [24]  717 	mov	ar7,@r1
      002186 7E 00            [12]  718 	mov	r6,#0x00
      002188 8F 82            [24]  719 	mov	dpl,r7
      00218A 8E 83            [24]  720 	mov	dph,r6
      00218C 12 20 CE         [24]  721 	lcall	_putchar
                                    722 ;	life.c:92: print16x(generation[0]);
      00218F 78 43            [12]  723 	mov	r0,#_generation
      002191 86 06            [24]  724 	mov	ar6,@r0
      002193 08               [12]  725 	inc	r0
                                    726 ;	life.c:39: putchar(digits[(a >> 12) & 0xf]);
      002194 E6               [12]  727 	mov	a,@r0
      002195 FF               [12]  728 	mov	r7,a
      002196 C4               [12]  729 	swap	a
      002197 54 0F            [12]  730 	anl	a,#0x0f
      002199 30 E3 02         [24]  731 	jnb	acc.3,00195$
      00219C 44 F0            [12]  732 	orl	a,#0xf0
      00219E                        733 00195$:
      00219E FC               [12]  734 	mov	r4,a
      00219F 33               [12]  735 	rlc	a
      0021A0 95 E0            [12]  736 	subb	a,acc
      0021A2 53 04 0F         [24]  737 	anl	ar4,#0x0f
      0021A5 EC               [12]  738 	mov	a,r4
      0021A6 24 21            [12]  739 	add	a,#_digits
      0021A8 F9               [12]  740 	mov	r1,a
      0021A9 87 05            [24]  741 	mov	ar5,@r1
      0021AB 7C 00            [12]  742 	mov	r4,#0x00
      0021AD 8D 82            [24]  743 	mov	dpl,r5
      0021AF 8C 83            [24]  744 	mov	dph,r4
      0021B1 12 20 CE         [24]  745 	lcall	_putchar
                                    746 ;	life.c:40: putchar(digits[(a >> 8) & 0xf]);
      0021B4 8F 05            [24]  747 	mov	ar5,r7
      0021B6 53 05 0F         [24]  748 	anl	ar5,#0x0f
      0021B9 ED               [12]  749 	mov	a,r5
      0021BA 24 21            [12]  750 	add	a,#_digits
      0021BC F9               [12]  751 	mov	r1,a
      0021BD 87 05            [24]  752 	mov	ar5,@r1
      0021BF 7C 00            [12]  753 	mov	r4,#0x00
      0021C1 8D 82            [24]  754 	mov	dpl,r5
      0021C3 8C 83            [24]  755 	mov	dph,r4
      0021C5 12 20 CE         [24]  756 	lcall	_putchar
                                    757 ;	life.c:41: putchar(digits[(a >> 4) & 0xf]);
      0021C8 8E 04            [24]  758 	mov	ar4,r6
      0021CA EF               [12]  759 	mov	a,r7
      0021CB C4               [12]  760 	swap	a
      0021CC CC               [12]  761 	xch	a,r4
      0021CD C4               [12]  762 	swap	a
      0021CE 54 0F            [12]  763 	anl	a,#0x0f
      0021D0 6C               [12]  764 	xrl	a,r4
      0021D1 CC               [12]  765 	xch	a,r4
      0021D2 54 0F            [12]  766 	anl	a,#0x0f
      0021D4 CC               [12]  767 	xch	a,r4
      0021D5 6C               [12]  768 	xrl	a,r4
      0021D6 CC               [12]  769 	xch	a,r4
      0021D7 30 E3 02         [24]  770 	jnb	acc.3,00196$
      0021DA 44 F0            [12]  771 	orl	a,#0xf0
      0021DC                        772 00196$:
      0021DC 53 04 0F         [24]  773 	anl	ar4,#0x0f
      0021DF EC               [12]  774 	mov	a,r4
      0021E0 24 21            [12]  775 	add	a,#_digits
      0021E2 F9               [12]  776 	mov	r1,a
      0021E3 87 05            [24]  777 	mov	ar5,@r1
      0021E5 7C 00            [12]  778 	mov	r4,#0x00
      0021E7 8D 82            [24]  779 	mov	dpl,r5
      0021E9 8C 83            [24]  780 	mov	dph,r4
      0021EB 12 20 CE         [24]  781 	lcall	_putchar
                                    782 ;	life.c:42: putchar(digits[a & 0xf]);
      0021EE 53 06 0F         [24]  783 	anl	ar6,#0x0f
      0021F1 EE               [12]  784 	mov	a,r6
      0021F2 24 21            [12]  785 	add	a,#_digits
      0021F4 F9               [12]  786 	mov	r1,a
      0021F5 87 07            [24]  787 	mov	ar7,@r1
      0021F7 7E 00            [12]  788 	mov	r6,#0x00
      0021F9 8F 82            [24]  789 	mov	dpl,r7
      0021FB 8E 83            [24]  790 	mov	dph,r6
      0021FD 12 20 CE         [24]  791 	lcall	_putchar
                                    792 ;	life.c:101: printstr("\r\n");
      002200 7D 98            [12]  793 	mov	r5,#___str_1
      002202 7E 2F            [12]  794 	mov	r6,#(___str_1 >> 8)
      002204 7F 80            [12]  795 	mov	r7,#0x80
                                    796 ;	life.c:50: return;
      002206                        797 00124$:
                                    798 ;	life.c:48: for (; *s; s++) putchar(*s);
      002206 8D 82            [24]  799 	mov	dpl,r5
      002208 8E 83            [24]  800 	mov	dph,r6
      00220A 8F F0            [24]  801 	mov	b,r7
      00220C 12 2E 64         [24]  802 	lcall	__gptrget
      00220F FC               [12]  803 	mov	r4,a
      002210 60 10            [24]  804 	jz	00114$
      002212 7B 00            [12]  805 	mov	r3,#0x00
      002214 8C 82            [24]  806 	mov	dpl,r4
      002216 8B 83            [24]  807 	mov	dph,r3
      002218 12 20 CE         [24]  808 	lcall	_putchar
      00221B 0D               [12]  809 	inc	r5
                                    810 ;	life.c:101: printstr("\r\n");
      00221C BD 00 E7         [24]  811 	cjne	r5,#0x00,00124$
      00221F 0E               [12]  812 	inc	r6
      002220 80 E4            [24]  813 	sjmp	00124$
      002222                        814 00114$:
                                    815 ;	life.c:84: generation[0]++;
      002222 78 43            [12]  816 	mov	r0,#_generation
      002224 86 06            [24]  817 	mov	ar6,@r0
      002226 08               [12]  818 	inc	r0
      002227 86 07            [24]  819 	mov	ar7,@r0
      002229 0E               [12]  820 	inc	r6
      00222A BE 00 01         [24]  821 	cjne	r6,#0x00,00199$
      00222D 0F               [12]  822 	inc	r7
      00222E                        823 00199$:
      00222E 78 43            [12]  824 	mov	r0,#_generation
      002230 A6 06            [24]  825 	mov	@r0,ar6
      002232 08               [12]  826 	inc	r0
      002233 A6 07            [24]  827 	mov	@r0,ar7
                                    828 ;	life.c:85: if (!generation[0]) generation[1]++;
      002235 EE               [12]  829 	mov	a,r6
      002236 4F               [12]  830 	orl	a,r7
      002237 70 13            [24]  831 	jnz	00102$
      002239 78 45            [12]  832 	mov	r0,#(_generation + 0x0002)
      00223B 86 06            [24]  833 	mov	ar6,@r0
      00223D 08               [12]  834 	inc	r0
      00223E 86 07            [24]  835 	mov	ar7,@r0
      002240 0E               [12]  836 	inc	r6
      002241 BE 00 01         [24]  837 	cjne	r6,#0x00,00201$
      002244 0F               [12]  838 	inc	r7
      002245                        839 00201$:
      002245 78 45            [12]  840 	mov	r0,#(_generation + 0x0002)
      002247 A6 06            [24]  841 	mov	@r0,ar6
      002249 08               [12]  842 	inc	r0
      00224A A6 07            [24]  843 	mov	@r0,ar7
                                    844 ;	life.c:102: updategen();
      00224C                        845 00102$:
                                    846 ;	life.c:105: for (x = 0; x < W; x++) {
      00224C 78 33            [12]  847 	mov	r0,#_x
      00224E E4               [12]  848 	clr	a
      00224F F6               [12]  849 	mov	@r0,a
      002250 08               [12]  850 	inc	r0
      002251 F6               [12]  851 	mov	@r0,a
      002252                        852 00131$:
                                    853 ;	life.c:106: for (y = 0; y < H; y++)
      002252 78 35            [12]  854 	mov	r0,#_y
      002254 E4               [12]  855 	clr	a
      002255 F6               [12]  856 	mov	@r0,a
      002256 08               [12]  857 	inc	r0
      002257 F6               [12]  858 	mov	@r0,a
      002258                        859 00126$:
                                    860 ;	life.c:107: if (u[A2D(W, y, x)]) putchar('1');
      002258 78 35            [12]  861 	mov	r0,#_y
      00225A E6               [12]  862 	mov	a,@r0
      00225B C0 E0            [24]  863 	push	acc
      00225D 08               [12]  864 	inc	r0
      00225E E6               [12]  865 	mov	a,@r0
      00225F C0 E0            [24]  866 	push	acc
      002261 90 00 30         [24]  867 	mov	dptr,#0x0030
      002264 12 2C A2         [24]  868 	lcall	__mulint
      002267 AE 82            [24]  869 	mov	r6,dpl
      002269 AF 83            [24]  870 	mov	r7,dph
      00226B 15 81            [12]  871 	dec	sp
      00226D 15 81            [12]  872 	dec	sp
      00226F 78 33            [12]  873 	mov	r0,#_x
      002271 E6               [12]  874 	mov	a,@r0
      002272 2E               [12]  875 	add	a,r6
      002273 FE               [12]  876 	mov	r6,a
      002274 08               [12]  877 	inc	r0
      002275 E6               [12]  878 	mov	a,@r0
      002276 3F               [12]  879 	addc	a,r7
      002277 FF               [12]  880 	mov	r7,a
      002278 EE               [12]  881 	mov	a,r6
      002279 24 00            [12]  882 	add	a,#_u
      00227B FE               [12]  883 	mov	r6,a
      00227C EF               [12]  884 	mov	a,r7
      00227D 34 80            [12]  885 	addc	a,#(_u >> 8)
      00227F FF               [12]  886 	mov	r7,a
      002280 8E 82            [24]  887 	mov	dpl,r6
      002282 8F 83            [24]  888 	mov	dph,r7
      002284 E0               [24]  889 	movx	a,@dptr
      002285 60 08            [24]  890 	jz	00104$
      002287 90 00 31         [24]  891 	mov	dptr,#0x0031
      00228A 12 20 CE         [24]  892 	lcall	_putchar
      00228D 80 06            [24]  893 	sjmp	00127$
      00228F                        894 00104$:
                                    895 ;	life.c:108: else putchar('0');
      00228F 90 00 30         [24]  896 	mov	dptr,#0x0030
      002292 12 20 CE         [24]  897 	lcall	_putchar
      002295                        898 00127$:
                                    899 ;	life.c:106: for (y = 0; y < H; y++)
      002295 78 35            [12]  900 	mov	r0,#_y
      002297 06               [12]  901 	inc	@r0
      002298 B6 00 02         [24]  902 	cjne	@r0,#0x00,00203$
      00229B 08               [12]  903 	inc	r0
      00229C 06               [12]  904 	inc	@r0
      00229D                        905 00203$:
      00229D 78 35            [12]  906 	mov	r0,#_y
      00229F C3               [12]  907 	clr	c
      0022A0 E6               [12]  908 	mov	a,@r0
      0022A1 94 C0            [12]  909 	subb	a,#0xc0
      0022A3 08               [12]  910 	inc	r0
      0022A4 E6               [12]  911 	mov	a,@r0
      0022A5 64 80            [12]  912 	xrl	a,#0x80
      0022A7 94 80            [12]  913 	subb	a,#0x80
      0022A9 40 AD            [24]  914 	jc	00126$
                                    915 ;	life.c:109: printstr("\r\n");
      0022AB 7D 98            [12]  916 	mov	r5,#___str_1
      0022AD 7E 2F            [12]  917 	mov	r6,#(___str_1 >> 8)
      0022AF 7F 80            [12]  918 	mov	r7,#0x80
                                    919 ;	life.c:50: return;
      0022B1                        920 00129$:
                                    921 ;	life.c:48: for (; *s; s++) putchar(*s);
      0022B1 8D 82            [24]  922 	mov	dpl,r5
      0022B3 8E 83            [24]  923 	mov	dph,r6
      0022B5 8F F0            [24]  924 	mov	b,r7
      0022B7 12 2E 64         [24]  925 	lcall	__gptrget
      0022BA FC               [12]  926 	mov	r4,a
      0022BB 60 10            [24]  927 	jz	00119$
      0022BD 7B 00            [12]  928 	mov	r3,#0x00
      0022BF 8C 82            [24]  929 	mov	dpl,r4
      0022C1 8B 83            [24]  930 	mov	dph,r3
      0022C3 12 20 CE         [24]  931 	lcall	_putchar
      0022C6 0D               [12]  932 	inc	r5
                                    933 ;	life.c:109: printstr("\r\n");
      0022C7 BD 00 E7         [24]  934 	cjne	r5,#0x00,00129$
      0022CA 0E               [12]  935 	inc	r6
      0022CB 80 E4            [24]  936 	sjmp	00129$
      0022CD                        937 00119$:
                                    938 ;	life.c:105: for (x = 0; x < W; x++) {
      0022CD 78 33            [12]  939 	mov	r0,#_x
      0022CF 06               [12]  940 	inc	@r0
      0022D0 B6 00 02         [24]  941 	cjne	@r0,#0x00,00207$
      0022D3 08               [12]  942 	inc	r0
      0022D4 06               [12]  943 	inc	@r0
      0022D5                        944 00207$:
      0022D5 78 33            [12]  945 	mov	r0,#_x
      0022D7 C3               [12]  946 	clr	c
      0022D8 E6               [12]  947 	mov	a,@r0
      0022D9 94 30            [12]  948 	subb	a,#0x30
      0022DB 08               [12]  949 	inc	r0
      0022DC E6               [12]  950 	mov	a,@r0
      0022DD 64 80            [12]  951 	xrl	a,#0x80
      0022DF 94 80            [12]  952 	subb	a,#0x80
      0022E1 50 03            [24]  953 	jnc	00208$
      0022E3 02 22 52         [24]  954 	ljmp	00131$
      0022E6                        955 00208$:
                                    956 ;	life.c:112: return;
                                    957 ;	life.c:113: }
      0022E6 22               [24]  958 	ret
                                    959 ;------------------------------------------------------------
                                    960 ;Allocation info for local variables in function 'main'
                                    961 ;------------------------------------------------------------
                                    962 ;__2621440023              Allocated to registers 
                                    963 ;s                         Allocated to registers r5 r6 r7 
                                    964 ;__1310720013              Allocated to registers 
                                    965 ;s                         Allocated to registers r5 r6 r7 
                                    966 ;__1310720015              Allocated to registers r6 r7 
                                    967 ;a                         Allocated to registers r4 r5 
                                    968 ;__1310720017              Allocated to registers 
                                    969 ;s                         Allocated to registers r5 r6 r7 
                                    970 ;__1310720019              Allocated to registers 
                                    971 ;s                         Allocated to registers r5 r6 r7 
                                    972 ;__1310720021              Allocated to registers 
                                    973 ;s                         Allocated to registers r5 r6 r7 
                                    974 ;__2621440028              Allocated to registers 
                                    975 ;s                         Allocated to registers r5 r6 r7 
                                    976 ;__4587520032              Allocated to registers 
                                    977 ;s                         Allocated to registers r5 r6 r7 
                                    978 ;__4587520034              Allocated to registers 
                                    979 ;s                         Allocated to registers r5 r6 r7 
                                    980 ;__4587520036              Allocated to registers 
                                    981 ;s                         Allocated to registers r5 r6 r7 
                                    982 ;__3276800038              Allocated to registers 
                                    983 ;s                         Allocated to registers r5 r6 r7 
                                    984 ;__1310720040              Allocated to registers 
                                    985 ;s                         Allocated to registers r5 r6 r7 
                                    986 ;sloc0                     Allocated to stack - _bp +1
                                    987 ;sloc1                     Allocated to stack - _bp +2
                                    988 ;sloc2                     Allocated to stack - _bp +4
                                    989 ;sloc3                     Allocated to stack - _bp +6
                                    990 ;sloc4                     Allocated to stack - _bp +8
                                    991 ;sloc5                     Allocated to stack - _bp +10
                                    992 ;sloc6                     Allocated to stack - _bp +12
                                    993 ;R                         Allocated with name '_main_R_65536_165'
                                    994 ;------------------------------------------------------------
                                    995 ;	life.c:221: void main(void) {
                                    996 ;	-----------------------------------------
                                    997 ;	 function main
                                    998 ;	-----------------------------------------
      0022E7                        999 _main:
      0022E7 C0 10            [24] 1000 	push	_bp
      0022E9 E5 81            [12] 1001 	mov	a,sp
      0022EB F5 10            [12] 1002 	mov	_bp,a
      0022ED 24 0D            [12] 1003 	add	a,#0x0d
      0022EF F5 81            [12] 1004 	mov	sp,a
                                   1005 ;	life.c:224: srand(*R);
      0022F1 90 C8 00         [24] 1006 	mov	dptr,#_main_R_65536_165
      0022F4 E0               [24] 1007 	movx	a,@dptr
      0022F5 FE               [12] 1008 	mov	r6,a
      0022F6 A3               [24] 1009 	inc	dptr
      0022F7 E0               [24] 1010 	movx	a,@dptr
      0022F8 FF               [12] 1011 	mov	r7,a
      0022F9 8E 82            [24] 1012 	mov	dpl,r6
      0022FB 8F 83            [24] 1013 	mov	dph,r7
      0022FD E0               [24] 1014 	movx	a,@dptr
      0022FE FE               [12] 1015 	mov	r6,a
      0022FF A3               [24] 1016 	inc	dptr
      002300 E0               [24] 1017 	movx	a,@dptr
      002301 FF               [12] 1018 	mov	r7,a
      002302 8E 82            [24] 1019 	mov	dpl,r6
      002304 8F 83            [24] 1020 	mov	dph,r7
      002306 12 2C 89         [24] 1021 	lcall	_srand
                                   1022 ;	life.c:226: IT0 = 1;
                                   1023 ;	assignBit
      002309 D2 88            [12] 1024 	setb	_IT0
                                   1025 ;	life.c:227: IT1 = 1;
                                   1026 ;	assignBit
      00230B D2 8A            [12] 1027 	setb	_IT1
                                   1028 ;	life.c:228: EX0 = 1;
                                   1029 ;	assignBit
      00230D D2 A8            [12] 1030 	setb	_EX0
                                   1031 ;	life.c:229: EX1 = 1;
                                   1032 ;	assignBit
      00230F D2 AA            [12] 1033 	setb	_EX1
                                   1034 ;	life.c:230: EA = 1;
                                   1035 ;	assignBit
      002311 D2 AF            [12] 1036 	setb	_EA
                                   1037 ;	life.c:232: for (i0 = 0; !i0; ) {	
      002313 78 31            [12] 1038 	mov	r0,#_i0
      002315 76 00            [12] 1039 	mov	@r0,#0x00
      002317                       1040 00246$:
                                   1041 ;	life.c:233: printstr("\033[2J\033[?25l\033[mLIFE INIT T L R P\r\n");
      002317 7D B5            [12] 1042 	mov	r5,#___str_5
      002319 7E 2F            [12] 1043 	mov	r6,#(___str_5 >> 8)
      00231B 7F 80            [12] 1044 	mov	r7,#0x80
                                   1045 ;	life.c:50: return;
      00231D                       1046 00202$:
                                   1047 ;	life.c:48: for (; *s; s++) putchar(*s);
      00231D 8D 82            [24] 1048 	mov	dpl,r5
      00231F 8E 83            [24] 1049 	mov	dph,r6
      002321 8F F0            [24] 1050 	mov	b,r7
      002323 12 2E 64         [24] 1051 	lcall	__gptrget
      002326 FC               [12] 1052 	mov	r4,a
      002327 60 10            [24] 1053 	jz	00110$
      002329 7B 00            [12] 1054 	mov	r3,#0x00
      00232B 8C 82            [24] 1055 	mov	dpl,r4
      00232D 8B 83            [24] 1056 	mov	dph,r3
      00232F 12 20 CE         [24] 1057 	lcall	_putchar
      002332 0D               [12] 1058 	inc	r5
                                   1059 ;	life.c:234: while (1) {
      002333 BD 00 E7         [24] 1060 	cjne	r5,#0x00,00202$
      002336 0E               [12] 1061 	inc	r6
      002337 80 E4            [24] 1062 	sjmp	00202$
      002339                       1063 00110$:
                                   1064 ;	life.c:235: c = toupper(getchar());
      002339 12 20 D3         [24] 1065 	lcall	_getchar
      00233C 12 2E 3D         [24] 1066 	lcall	_toupper
      00233F AE 82            [24] 1067 	mov	r6,dpl
      002341 AF 83            [24] 1068 	mov	r7,dph
      002343 78 39            [12] 1069 	mov	r0,#_c
      002345 A6 06            [24] 1070 	mov	@r0,ar6
      002347 08               [12] 1071 	inc	r0
      002348 A6 07            [24] 1072 	mov	@r0,ar7
                                   1073 ;	life.c:236: if (i0 || (c == (int)'T')) goto terminate;
      00234A 78 31            [12] 1074 	mov	r0,#_i0
      00234C E6               [12] 1075 	mov	a,@r0
      00234D 60 03            [24] 1076 	jz	00516$
      00234F 02 2B 95         [24] 1077 	ljmp	00142$
      002352                       1078 00516$:
      002352 BE 54 06         [24] 1079 	cjne	r6,#0x54,00517$
      002355 BF 00 03         [24] 1080 	cjne	r7,#0x00,00517$
      002358 02 2B 95         [24] 1081 	ljmp	00142$
      00235B                       1082 00517$:
                                   1083 ;	life.c:237: else if ((c == (int)'L') || (c == (int)'R') || (c == (int)'P')) break;
      00235B BE 4C 05         [24] 1084 	cjne	r6,#0x4c,00518$
      00235E BF 00 02         [24] 1085 	cjne	r7,#0x00,00518$
      002361 80 0E            [24] 1086 	sjmp	00291$
      002363                       1087 00518$:
      002363 BE 52 05         [24] 1088 	cjne	r6,#0x52,00519$
      002366 BF 00 02         [24] 1089 	cjne	r7,#0x00,00519$
      002369 80 06            [24] 1090 	sjmp	00291$
      00236B                       1091 00519$:
      00236B BE 50 CB         [24] 1092 	cjne	r6,#0x50,00110$
      00236E BF 00 C8         [24] 1093 	cjne	r7,#0x00,00110$
                                   1094 ;	life.c:240: reload:
      002371                       1095 00291$:
      002371                       1096 00112$:
                                   1097 ;	life.c:116: memset(u, 0, sizeof (u));
      002371 E4               [12] 1098 	clr	a
      002372 C0 E0            [24] 1099 	push	acc
      002374 74 24            [12] 1100 	mov	a,#0x24
      002376 C0 E0            [24] 1101 	push	acc
      002378 E4               [12] 1102 	clr	a
      002379 C0 E0            [24] 1103 	push	acc
      00237B 90 80 00         [24] 1104 	mov	dptr,#_u
      00237E 75 F0 00         [24] 1105 	mov	b,#0x00
      002381 12 2D D3         [24] 1106 	lcall	_memset
      002384 15 81            [12] 1107 	dec	sp
      002386 15 81            [12] 1108 	dec	sp
      002388 15 81            [12] 1109 	dec	sp
                                   1110 ;	life.c:117: memset(pu, 0, sizeof (pu));
      00238A E4               [12] 1111 	clr	a
      00238B C0 E0            [24] 1112 	push	acc
      00238D 74 24            [12] 1113 	mov	a,#0x24
      00238F C0 E0            [24] 1114 	push	acc
      002391 E4               [12] 1115 	clr	a
      002392 C0 E0            [24] 1116 	push	acc
      002394 90 5C 00         [24] 1117 	mov	dptr,#_pu
      002397 75 F0 00         [24] 1118 	mov	b,#0x00
      00239A 12 2D D3         [24] 1119 	lcall	_memset
      00239D 15 81            [12] 1120 	dec	sp
      00239F 15 81            [12] 1121 	dec	sp
      0023A1 15 81            [12] 1122 	dec	sp
                                   1123 ;	life.c:242: if (c == (int)'L') loadiu();
      0023A3 78 39            [12] 1124 	mov	r0,#_c
      0023A5 B6 4C 06         [24] 1125 	cjne	@r0,#0x4c,00522$
      0023A8 08               [12] 1126 	inc	r0
      0023A9 B6 00 02         [24] 1127 	cjne	@r0,#0x00,00522$
      0023AC 80 03            [24] 1128 	sjmp	00523$
      0023AE                       1129 00522$:
      0023AE 02 25 3B         [24] 1130 	ljmp	00116$
      0023B1                       1131 00523$:
                                   1132 ;	life.c:123: j = 0;
      0023B1 78 37            [12] 1133 	mov	r0,#_j
      0023B3 E4               [12] 1134 	clr	a
      0023B4 F6               [12] 1135 	mov	@r0,a
      0023B5 08               [12] 1136 	inc	r0
      0023B6 F6               [12] 1137 	mov	@r0,a
                                   1138 ;	life.c:125: printstr("LOAD 0 1 ~ # <");
      0023B7 7D 9B            [12] 1139 	mov	r5,#___str_2
      0023B9 7E 2F            [12] 1140 	mov	r6,#(___str_2 >> 8)
      0023BB 7F 80            [12] 1141 	mov	r7,#0x80
                                   1142 ;	life.c:50: return;
      0023BD                       1143 00205$:
                                   1144 ;	life.c:48: for (; *s; s++) putchar(*s);
      0023BD 8D 82            [24] 1145 	mov	dpl,r5
      0023BF 8E 83            [24] 1146 	mov	dph,r6
      0023C1 8F F0            [24] 1147 	mov	b,r7
      0023C3 12 2E 64         [24] 1148 	lcall	__gptrget
      0023C6 FC               [12] 1149 	mov	r4,a
      0023C7 60 10            [24] 1150 	jz	00147$
      0023C9 7B 00            [12] 1151 	mov	r3,#0x00
      0023CB 8C 82            [24] 1152 	mov	dpl,r4
      0023CD 8B 83            [24] 1153 	mov	dph,r3
      0023CF 12 20 CE         [24] 1154 	lcall	_putchar
      0023D2 0D               [12] 1155 	inc	r5
                                   1156 ;	life.c:125: printstr("LOAD 0 1 ~ # <");
      0023D3 BD 00 E7         [24] 1157 	cjne	r5,#0x00,00205$
      0023D6 0E               [12] 1158 	inc	r6
      0023D7 80 E4            [24] 1159 	sjmp	00205$
      0023D9                       1160 00147$:
                                   1161 ;	life.c:127: for (y = 0; y < (H * W); y += W) {
      0023D9 78 35            [12] 1162 	mov	r0,#_y
      0023DB E4               [12] 1163 	clr	a
      0023DC F6               [12] 1164 	mov	@r0,a
      0023DD 08               [12] 1165 	inc	r0
      0023DE F6               [12] 1166 	mov	@r0,a
      0023DF                       1167 00208$:
                                   1168 ;	life.c:128: for (x = 0; x < W; x++) {
      0023DF 78 33            [12] 1169 	mov	r0,#_x
      0023E1 E4               [12] 1170 	clr	a
      0023E2 F6               [12] 1171 	mov	@r0,a
      0023E3 08               [12] 1172 	inc	r0
      0023E4 F6               [12] 1173 	mov	@r0,a
                                   1174 ;	life.c:129: while (1) {
      0023E5                       1175 00160$:
                                   1176 ;	life.c:130: c = getchar();
      0023E5 12 20 D3         [24] 1177 	lcall	_getchar
      0023E8 AE 82            [24] 1178 	mov	r6,dpl
      0023EA AF 83            [24] 1179 	mov	r7,dph
      0023EC 78 39            [12] 1180 	mov	r0,#_c
      0023EE A6 06            [24] 1181 	mov	@r0,ar6
      0023F0 08               [12] 1182 	inc	r0
      0023F1 A6 07            [24] 1183 	mov	@r0,ar7
                                   1184 ;	life.c:131: if (c == (int)'0') {
      0023F3 BE 30 25         [24] 1185 	cjne	r6,#0x30,00158$
      0023F6 BF 00 22         [24] 1186 	cjne	r7,#0x00,00158$
                                   1187 ;	life.c:132: iu[y + x] = 0;
      0023F9 78 35            [12] 1188 	mov	r0,#_y
      0023FB 79 33            [12] 1189 	mov	r1,#_x
      0023FD E7               [12] 1190 	mov	a,@r1
      0023FE 26               [12] 1191 	add	a,@r0
      0023FF FC               [12] 1192 	mov	r4,a
      002400 09               [12] 1193 	inc	r1
      002401 E7               [12] 1194 	mov	a,@r1
      002402 08               [12] 1195 	inc	r0
      002403 36               [12] 1196 	addc	a,@r0
      002404 FD               [12] 1197 	mov	r5,a
      002405 EC               [12] 1198 	mov	a,r4
      002406 24 00            [12] 1199 	add	a,#_iu
      002408 F5 82            [12] 1200 	mov	dpl,a
      00240A ED               [12] 1201 	mov	a,r5
      00240B 34 38            [12] 1202 	addc	a,#(_iu >> 8)
      00240D F5 83            [12] 1203 	mov	dph,a
      00240F E4               [12] 1204 	clr	a
      002410 F0               [24] 1205 	movx	@dptr,a
                                   1206 ;	life.c:133: j++;
      002411 78 37            [12] 1207 	mov	r0,#_j
      002413 06               [12] 1208 	inc	@r0
      002414 B6 00 02         [24] 1209 	cjne	@r0,#0x00,00528$
      002417 08               [12] 1210 	inc	r0
      002418 06               [12] 1211 	inc	@r0
      002419                       1212 00528$:
                                   1213 ;	life.c:134: break;
      002419 80 39            [24] 1214 	sjmp	00163$
      00241B                       1215 00158$:
                                   1216 ;	life.c:135: } else if (c == (int)'1') {
      00241B BE 31 26         [24] 1217 	cjne	r6,#0x31,00156$
      00241E BF 00 23         [24] 1218 	cjne	r7,#0x00,00156$
                                   1219 ;	life.c:136: iu[y + x] = 1;
      002421 78 35            [12] 1220 	mov	r0,#_y
      002423 79 33            [12] 1221 	mov	r1,#_x
      002425 E7               [12] 1222 	mov	a,@r1
      002426 26               [12] 1223 	add	a,@r0
      002427 FC               [12] 1224 	mov	r4,a
      002428 09               [12] 1225 	inc	r1
      002429 E7               [12] 1226 	mov	a,@r1
      00242A 08               [12] 1227 	inc	r0
      00242B 36               [12] 1228 	addc	a,@r0
      00242C FD               [12] 1229 	mov	r5,a
      00242D EC               [12] 1230 	mov	a,r4
      00242E 24 00            [12] 1231 	add	a,#_iu
      002430 F5 82            [12] 1232 	mov	dpl,a
      002432 ED               [12] 1233 	mov	a,r5
      002433 34 38            [12] 1234 	addc	a,#(_iu >> 8)
      002435 F5 83            [12] 1235 	mov	dph,a
      002437 74 01            [12] 1236 	mov	a,#0x01
      002439 F0               [24] 1237 	movx	@dptr,a
                                   1238 ;	life.c:137: j++;
      00243A 78 37            [12] 1239 	mov	r0,#_j
      00243C 06               [12] 1240 	inc	@r0
      00243D B6 00 02         [24] 1241 	cjne	@r0,#0x00,00531$
      002440 08               [12] 1242 	inc	r0
      002441 06               [12] 1243 	inc	@r0
      002442                       1244 00531$:
                                   1245 ;	life.c:138: break;
      002442 80 10            [24] 1246 	sjmp	00163$
      002444                       1247 00156$:
                                   1248 ;	life.c:139: } else if (c == (int)'~') goto br_inner;
      002444 BE 7E 05         [24] 1249 	cjne	r6,#0x7e,00532$
      002447 BF 00 02         [24] 1250 	cjne	r7,#0x00,00532$
      00244A 80 21            [24] 1251 	sjmp	00209$
      00244C                       1252 00532$:
                                   1253 ;	life.c:140: else if (c == (int)'#') goto out;
                                   1254 ;	life.c:144: break;
      00244C BE 23 96         [24] 1255 	cjne	r6,#0x23,00160$
      00244F BF 00 93         [24] 1256 	cjne	r7,#0x00,00160$
      002452 80 31            [24] 1257 	sjmp	00173$
      002454                       1258 00163$:
                                   1259 ;	life.c:128: for (x = 0; x < W; x++) {
      002454 78 33            [12] 1260 	mov	r0,#_x
      002456 06               [12] 1261 	inc	@r0
      002457 B6 00 02         [24] 1262 	cjne	@r0,#0x00,00534$
      00245A 08               [12] 1263 	inc	r0
      00245B 06               [12] 1264 	inc	@r0
      00245C                       1265 00534$:
      00245C 78 33            [12] 1266 	mov	r0,#_x
      00245E C3               [12] 1267 	clr	c
      00245F E6               [12] 1268 	mov	a,@r0
      002460 94 30            [12] 1269 	subb	a,#0x30
      002462 08               [12] 1270 	inc	r0
      002463 E6               [12] 1271 	mov	a,@r0
      002464 64 80            [12] 1272 	xrl	a,#0x80
      002466 94 80            [12] 1273 	subb	a,#0x80
      002468 50 03            [24] 1274 	jnc	00535$
      00246A 02 23 E5         [24] 1275 	ljmp	00160$
      00246D                       1276 00535$:
      00246D                       1277 00209$:
                                   1278 ;	life.c:127: for (y = 0; y < (H * W); y += W) {
      00246D 78 35            [12] 1279 	mov	r0,#_y
      00246F 74 30            [12] 1280 	mov	a,#0x30
      002471 26               [12] 1281 	add	a,@r0
      002472 F6               [12] 1282 	mov	@r0,a
      002473 E4               [12] 1283 	clr	a
      002474 08               [12] 1284 	inc	r0
      002475 36               [12] 1285 	addc	a,@r0
      002476 F6               [12] 1286 	mov	@r0,a
      002477 78 35            [12] 1287 	mov	r0,#_y
      002479 C3               [12] 1288 	clr	c
      00247A 08               [12] 1289 	inc	r0
      00247B E6               [12] 1290 	mov	a,@r0
      00247C 64 80            [12] 1291 	xrl	a,#0x80
      00247E 94 A4            [12] 1292 	subb	a,#0xa4
      002480 50 03            [24] 1293 	jnc	00536$
      002482 02 23 DF         [24] 1294 	ljmp	00208$
      002485                       1295 00536$:
                                   1296 ;	life.c:148: out:
      002485                       1297 00173$:
                                   1298 ;	life.c:149: if (c != (int)'#')
      002485 BE 23 05         [24] 1299 	cjne	r6,#0x23,00537$
      002488 BF 00 02         [24] 1300 	cjne	r7,#0x00,00537$
      00248B 80 14            [24] 1301 	sjmp	00172$
      00248D                       1302 00537$:
                                   1303 ;	life.c:150: while (1) {
      00248D                       1304 00169$:
                                   1305 ;	life.c:151: c = getchar();
      00248D 12 20 D3         [24] 1306 	lcall	_getchar
      002490 AE 82            [24] 1307 	mov	r6,dpl
      002492 AF 83            [24] 1308 	mov	r7,dph
      002494 78 39            [12] 1309 	mov	r0,#_c
      002496 A6 06            [24] 1310 	mov	@r0,ar6
      002498 08               [12] 1311 	inc	r0
      002499 A6 07            [24] 1312 	mov	@r0,ar7
                                   1313 ;	life.c:152: if (c == (int)'#') break;
      00249B BE 23 EF         [24] 1314 	cjne	r6,#0x23,00169$
      00249E BF 00 EC         [24] 1315 	cjne	r7,#0x00,00169$
      0024A1                       1316 00172$:
                                   1317 ;	life.c:154: print16x(j);
      0024A1 78 37            [12] 1318 	mov	r0,#_j
      0024A3 86 06            [24] 1319 	mov	ar6,@r0
      0024A5 08               [12] 1320 	inc	r0
      0024A6 86 07            [24] 1321 	mov	ar7,@r0
      0024A8 8E 04            [24] 1322 	mov	ar4,r6
                                   1323 ;	life.c:39: putchar(digits[(a >> 12) & 0xf]);
      0024AA EF               [12] 1324 	mov	a,r7
      0024AB FD               [12] 1325 	mov	r5,a
      0024AC C4               [12] 1326 	swap	a
      0024AD 54 0F            [12] 1327 	anl	a,#0x0f
      0024AF 30 E3 02         [24] 1328 	jnb	acc.3,00540$
      0024B2 44 F0            [12] 1329 	orl	a,#0xf0
      0024B4                       1330 00540$:
      0024B4 FE               [12] 1331 	mov	r6,a
      0024B5 33               [12] 1332 	rlc	a
      0024B6 95 E0            [12] 1333 	subb	a,acc
      0024B8 53 06 0F         [24] 1334 	anl	ar6,#0x0f
      0024BB EE               [12] 1335 	mov	a,r6
      0024BC 24 21            [12] 1336 	add	a,#_digits
      0024BE F9               [12] 1337 	mov	r1,a
      0024BF 87 07            [24] 1338 	mov	ar7,@r1
      0024C1 7E 00            [12] 1339 	mov	r6,#0x00
      0024C3 8F 82            [24] 1340 	mov	dpl,r7
      0024C5 8E 83            [24] 1341 	mov	dph,r6
      0024C7 12 20 CE         [24] 1342 	lcall	_putchar
                                   1343 ;	life.c:40: putchar(digits[(a >> 8) & 0xf]);
      0024CA 8D 07            [24] 1344 	mov	ar7,r5
      0024CC 53 07 0F         [24] 1345 	anl	ar7,#0x0f
      0024CF EF               [12] 1346 	mov	a,r7
      0024D0 24 21            [12] 1347 	add	a,#_digits
      0024D2 F9               [12] 1348 	mov	r1,a
      0024D3 87 07            [24] 1349 	mov	ar7,@r1
      0024D5 7E 00            [12] 1350 	mov	r6,#0x00
      0024D7 8F 82            [24] 1351 	mov	dpl,r7
      0024D9 8E 83            [24] 1352 	mov	dph,r6
      0024DB 12 20 CE         [24] 1353 	lcall	_putchar
                                   1354 ;	life.c:41: putchar(digits[(a >> 4) & 0xf]);
      0024DE 8C 06            [24] 1355 	mov	ar6,r4
      0024E0 ED               [12] 1356 	mov	a,r5
      0024E1 C4               [12] 1357 	swap	a
      0024E2 CE               [12] 1358 	xch	a,r6
      0024E3 C4               [12] 1359 	swap	a
      0024E4 54 0F            [12] 1360 	anl	a,#0x0f
      0024E6 6E               [12] 1361 	xrl	a,r6
      0024E7 CE               [12] 1362 	xch	a,r6
      0024E8 54 0F            [12] 1363 	anl	a,#0x0f
      0024EA CE               [12] 1364 	xch	a,r6
      0024EB 6E               [12] 1365 	xrl	a,r6
      0024EC CE               [12] 1366 	xch	a,r6
      0024ED 30 E3 02         [24] 1367 	jnb	acc.3,00541$
      0024F0 44 F0            [12] 1368 	orl	a,#0xf0
      0024F2                       1369 00541$:
      0024F2 53 06 0F         [24] 1370 	anl	ar6,#0x0f
      0024F5 EE               [12] 1371 	mov	a,r6
      0024F6 24 21            [12] 1372 	add	a,#_digits
      0024F8 F9               [12] 1373 	mov	r1,a
      0024F9 87 07            [24] 1374 	mov	ar7,@r1
      0024FB 7E 00            [12] 1375 	mov	r6,#0x00
      0024FD 8F 82            [24] 1376 	mov	dpl,r7
      0024FF 8E 83            [24] 1377 	mov	dph,r6
      002501 12 20 CE         [24] 1378 	lcall	_putchar
                                   1379 ;	life.c:42: putchar(digits[a & 0xf]);
      002504 53 04 0F         [24] 1380 	anl	ar4,#0x0f
      002507 EC               [12] 1381 	mov	a,r4
      002508 24 21            [12] 1382 	add	a,#_digits
      00250A F9               [12] 1383 	mov	r1,a
      00250B 87 07            [24] 1384 	mov	ar7,@r1
      00250D 7E 00            [12] 1385 	mov	r6,#0x00
      00250F 8F 82            [24] 1386 	mov	dpl,r7
      002511 8E 83            [24] 1387 	mov	dph,r6
      002513 12 20 CE         [24] 1388 	lcall	_putchar
                                   1389 ;	life.c:155: printstr(">\r\n");
      002516 7D AA            [12] 1390 	mov	r5,#___str_3
      002518 7E 2F            [12] 1391 	mov	r6,#(___str_3 >> 8)
      00251A 7F 80            [12] 1392 	mov	r7,#0x80
                                   1393 ;	life.c:50: return;
      00251C                       1394 00211$:
                                   1395 ;	life.c:48: for (; *s; s++) putchar(*s);
      00251C 8D 82            [24] 1396 	mov	dpl,r5
      00251E 8E 83            [24] 1397 	mov	dph,r6
      002520 8F F0            [24] 1398 	mov	b,r7
      002522 12 2E 64         [24] 1399 	lcall	__gptrget
      002525 FC               [12] 1400 	mov	r4,a
      002526 70 03            [24] 1401 	jnz	00542$
      002528 02 25 F4         [24] 1402 	ljmp	00117$
      00252B                       1403 00542$:
      00252B 7B 00            [12] 1404 	mov	r3,#0x00
      00252D 8C 82            [24] 1405 	mov	dpl,r4
      00252F 8B 83            [24] 1406 	mov	dph,r3
      002531 12 20 CE         [24] 1407 	lcall	_putchar
      002534 0D               [12] 1408 	inc	r5
                                   1409 ;	life.c:242: if (c == (int)'L') loadiu();
      002535 BD 00 E4         [24] 1410 	cjne	r5,#0x00,00211$
      002538 0E               [12] 1411 	inc	r6
      002539 80 E1            [24] 1412 	sjmp	00211$
      00253B                       1413 00116$:
                                   1414 ;	life.c:243: else if (c == (int)'R') loadriu();
      00253B 78 39            [12] 1415 	mov	r0,#_c
      00253D B6 52 06         [24] 1416 	cjne	@r0,#0x52,00544$
      002540 08               [12] 1417 	inc	r0
      002541 B6 00 02         [24] 1418 	cjne	@r0,#0x00,00544$
      002544 80 03            [24] 1419 	sjmp	00545$
      002546                       1420 00544$:
      002546 02 25 F4         [24] 1421 	ljmp	00117$
      002549                       1422 00545$:
                                   1423 ;	life.c:161: j = 0;
      002549 78 37            [12] 1424 	mov	r0,#_j
      00254B E4               [12] 1425 	clr	a
      00254C F6               [12] 1426 	mov	@r0,a
      00254D 08               [12] 1427 	inc	r0
      00254E F6               [12] 1428 	mov	@r0,a
                                   1429 ;	life.c:163: printstr("RANDOM");
      00254F 7D AE            [12] 1430 	mov	r5,#___str_4
      002551 7E 2F            [12] 1431 	mov	r6,#(___str_4 >> 8)
      002553 7F 80            [12] 1432 	mov	r7,#0x80
                                   1433 ;	life.c:50: return;
      002555                       1434 00214$:
                                   1435 ;	life.c:48: for (; *s; s++) putchar(*s);
      002555 8D 82            [24] 1436 	mov	dpl,r5
      002557 8E 83            [24] 1437 	mov	dph,r6
      002559 8F F0            [24] 1438 	mov	b,r7
      00255B 12 2E 64         [24] 1439 	lcall	__gptrget
      00255E FC               [12] 1440 	mov	r4,a
      00255F 60 10            [24] 1441 	jz	00179$
      002561 7B 00            [12] 1442 	mov	r3,#0x00
      002563 8C 82            [24] 1443 	mov	dpl,r4
      002565 8B 83            [24] 1444 	mov	dph,r3
      002567 12 20 CE         [24] 1445 	lcall	_putchar
      00256A 0D               [12] 1446 	inc	r5
                                   1447 ;	life.c:163: printstr("RANDOM");
      00256B BD 00 E7         [24] 1448 	cjne	r5,#0x00,00214$
      00256E 0E               [12] 1449 	inc	r6
      00256F 80 E4            [24] 1450 	sjmp	00214$
      002571                       1451 00179$:
                                   1452 ;	life.c:165: for (y = 0; y < (H * W); y += W)
      002571 78 35            [12] 1453 	mov	r0,#_y
      002573 E4               [12] 1454 	clr	a
      002574 F6               [12] 1455 	mov	@r0,a
      002575 08               [12] 1456 	inc	r0
      002576 F6               [12] 1457 	mov	@r0,a
      002577                       1458 00218$:
                                   1459 ;	life.c:166: for (x = 0; x < W; x++)
      002577 78 33            [12] 1460 	mov	r0,#_x
      002579 E4               [12] 1461 	clr	a
      00257A F6               [12] 1462 	mov	@r0,a
      00257B 08               [12] 1463 	inc	r0
      00257C F6               [12] 1464 	mov	@r0,a
      00257D                       1465 00216$:
                                   1466 ;	life.c:167: iu[y + x] = rand() & 1;
      00257D 78 35            [12] 1467 	mov	r0,#_y
      00257F 79 33            [12] 1468 	mov	r1,#_x
      002581 E7               [12] 1469 	mov	a,@r1
      002582 26               [12] 1470 	add	a,@r0
      002583 FE               [12] 1471 	mov	r6,a
      002584 09               [12] 1472 	inc	r1
      002585 E7               [12] 1473 	mov	a,@r1
      002586 08               [12] 1474 	inc	r0
      002587 36               [12] 1475 	addc	a,@r0
      002588 FF               [12] 1476 	mov	r7,a
      002589 EE               [12] 1477 	mov	a,r6
      00258A 24 00            [12] 1478 	add	a,#_iu
      00258C FE               [12] 1479 	mov	r6,a
      00258D EF               [12] 1480 	mov	a,r7
      00258E 34 38            [12] 1481 	addc	a,#(_iu >> 8)
      002590 FF               [12] 1482 	mov	r7,a
      002591 C0 07            [24] 1483 	push	ar7
      002593 C0 06            [24] 1484 	push	ar6
      002595 12 2B C5         [24] 1485 	lcall	_rand
      002598 AC 82            [24] 1486 	mov	r4,dpl
      00259A D0 06            [24] 1487 	pop	ar6
      00259C D0 07            [24] 1488 	pop	ar7
      00259E 53 04 01         [24] 1489 	anl	ar4,#0x01
      0025A1 8E 82            [24] 1490 	mov	dpl,r6
      0025A3 8F 83            [24] 1491 	mov	dph,r7
      0025A5 EC               [12] 1492 	mov	a,r4
      0025A6 F0               [24] 1493 	movx	@dptr,a
                                   1494 ;	life.c:166: for (x = 0; x < W; x++)
      0025A7 78 33            [12] 1495 	mov	r0,#_x
      0025A9 06               [12] 1496 	inc	@r0
      0025AA B6 00 02         [24] 1497 	cjne	@r0,#0x00,00548$
      0025AD 08               [12] 1498 	inc	r0
      0025AE 06               [12] 1499 	inc	@r0
      0025AF                       1500 00548$:
      0025AF 78 33            [12] 1501 	mov	r0,#_x
      0025B1 C3               [12] 1502 	clr	c
      0025B2 E6               [12] 1503 	mov	a,@r0
      0025B3 94 30            [12] 1504 	subb	a,#0x30
      0025B5 08               [12] 1505 	inc	r0
      0025B6 E6               [12] 1506 	mov	a,@r0
      0025B7 64 80            [12] 1507 	xrl	a,#0x80
      0025B9 94 80            [12] 1508 	subb	a,#0x80
      0025BB 40 C0            [24] 1509 	jc	00216$
                                   1510 ;	life.c:165: for (y = 0; y < (H * W); y += W)
      0025BD 78 35            [12] 1511 	mov	r0,#_y
      0025BF 74 30            [12] 1512 	mov	a,#0x30
      0025C1 26               [12] 1513 	add	a,@r0
      0025C2 F6               [12] 1514 	mov	@r0,a
      0025C3 E4               [12] 1515 	clr	a
      0025C4 08               [12] 1516 	inc	r0
      0025C5 36               [12] 1517 	addc	a,@r0
      0025C6 F6               [12] 1518 	mov	@r0,a
      0025C7 78 35            [12] 1519 	mov	r0,#_y
      0025C9 C3               [12] 1520 	clr	c
      0025CA 08               [12] 1521 	inc	r0
      0025CB E6               [12] 1522 	mov	a,@r0
      0025CC 64 80            [12] 1523 	xrl	a,#0x80
      0025CE 94 A4            [12] 1524 	subb	a,#0xa4
      0025D0 40 A5            [24] 1525 	jc	00218$
                                   1526 ;	life.c:169: printstr("\r\n");
      0025D2 7D 98            [12] 1527 	mov	r5,#___str_1
      0025D4 7E 2F            [12] 1528 	mov	r6,#(___str_1 >> 8)
      0025D6 7F 80            [12] 1529 	mov	r7,#0x80
                                   1530 ;	life.c:50: return;
      0025D8                       1531 00221$:
                                   1532 ;	life.c:48: for (; *s; s++) putchar(*s);
      0025D8 8D 82            [24] 1533 	mov	dpl,r5
      0025DA 8E 83            [24] 1534 	mov	dph,r6
      0025DC 8F F0            [24] 1535 	mov	b,r7
      0025DE 12 2E 64         [24] 1536 	lcall	__gptrget
      0025E1 FC               [12] 1537 	mov	r4,a
      0025E2 60 10            [24] 1538 	jz	00117$
      0025E4 7B 00            [12] 1539 	mov	r3,#0x00
      0025E6 8C 82            [24] 1540 	mov	dpl,r4
      0025E8 8B 83            [24] 1541 	mov	dph,r3
      0025EA 12 20 CE         [24] 1542 	lcall	_putchar
      0025ED 0D               [12] 1543 	inc	r5
                                   1544 ;	life.c:243: else if (c == (int)'R') loadriu();
      0025EE BD 00 E7         [24] 1545 	cjne	r5,#0x00,00221$
      0025F1 0E               [12] 1546 	inc	r6
      0025F2 80 E4            [24] 1547 	sjmp	00221$
      0025F4                       1548 00117$:
                                   1549 ;	life.c:244: memcpy(u, iu, sizeof (iu));
      0025F4 E4               [12] 1550 	clr	a
      0025F5 C0 E0            [24] 1551 	push	acc
      0025F7 74 24            [12] 1552 	mov	a,#0x24
      0025F9 C0 E0            [24] 1553 	push	acc
      0025FB 74 00            [12] 1554 	mov	a,#_iu
      0025FD C0 E0            [24] 1555 	push	acc
      0025FF 74 38            [12] 1556 	mov	a,#(_iu >> 8)
      002601 C0 E0            [24] 1557 	push	acc
      002603 E4               [12] 1558 	clr	a
      002604 C0 E0            [24] 1559 	push	acc
      002606 90 80 00         [24] 1560 	mov	dptr,#_u
      002609 75 F0 00         [24] 1561 	mov	b,#0x00
      00260C 12 2D 40         [24] 1562 	lcall	___memcpy
      00260F E5 81            [12] 1563 	mov	a,sp
      002611 24 FB            [12] 1564 	add	a,#0xfb
      002613 F5 81            [12] 1565 	mov	sp,a
                                   1566 ;	life.c:245: show(0);
      002615 75 82 00         [24] 1567 	mov	dpl,#0x00
      002618 12 20 F4         [24] 1568 	lcall	_show
                                   1569 ;	life.c:247: printstr("READY T L R P S\r\n");
      00261B 7D D6            [12] 1570 	mov	r5,#___str_6
      00261D 7E 2F            [12] 1571 	mov	r6,#(___str_6 >> 8)
      00261F 7F 80            [12] 1572 	mov	r7,#0x80
                                   1573 ;	life.c:50: return;
      002621                       1574 00224$:
                                   1575 ;	life.c:48: for (; *s; s++) putchar(*s);
      002621 8D 82            [24] 1576 	mov	dpl,r5
      002623 8E 83            [24] 1577 	mov	dph,r6
      002625 8F F0            [24] 1578 	mov	b,r7
      002627 12 2E 64         [24] 1579 	lcall	__gptrget
      00262A FC               [12] 1580 	mov	r4,a
      00262B 60 10            [24] 1581 	jz	00130$
      00262D 7B 00            [12] 1582 	mov	r3,#0x00
      00262F 8C 82            [24] 1583 	mov	dpl,r4
      002631 8B 83            [24] 1584 	mov	dph,r3
      002633 12 20 CE         [24] 1585 	lcall	_putchar
      002636 0D               [12] 1586 	inc	r5
                                   1587 ;	life.c:248: while (1) {
      002637 BD 00 E7         [24] 1588 	cjne	r5,#0x00,00224$
      00263A 0E               [12] 1589 	inc	r6
      00263B 80 E4            [24] 1590 	sjmp	00224$
      00263D                       1591 00130$:
                                   1592 ;	life.c:249: c = toupper(getchar());
      00263D 12 20 D3         [24] 1593 	lcall	_getchar
      002640 12 2E 3D         [24] 1594 	lcall	_toupper
      002643 AE 82            [24] 1595 	mov	r6,dpl
      002645 AF 83            [24] 1596 	mov	r7,dph
      002647 78 39            [12] 1597 	mov	r0,#_c
      002649 A6 06            [24] 1598 	mov	@r0,ar6
      00264B 08               [12] 1599 	inc	r0
      00264C A6 07            [24] 1600 	mov	@r0,ar7
                                   1601 ;	life.c:250: if (i0 || (c == (int)'T')) goto terminate;
      00264E 78 31            [12] 1602 	mov	r0,#_i0
      002650 E6               [12] 1603 	mov	a,@r0
      002651 60 03            [24] 1604 	jz	00555$
      002653 02 2B 95         [24] 1605 	ljmp	00142$
      002656                       1606 00555$:
      002656 BE 54 06         [24] 1607 	cjne	r6,#0x54,00556$
      002659 BF 00 03         [24] 1608 	cjne	r7,#0x00,00556$
      00265C 02 2B 95         [24] 1609 	ljmp	00142$
      00265F                       1610 00556$:
                                   1611 ;	life.c:251: else if ((c == (int)'L') || (c == (int)'R') || (c == (int)'P')) goto reload;
      00265F BE 4C 06         [24] 1612 	cjne	r6,#0x4c,00557$
      002662 BF 00 03         [24] 1613 	cjne	r7,#0x00,00557$
      002665 02 23 71         [24] 1614 	ljmp	00112$
      002668                       1615 00557$:
      002668 BE 52 06         [24] 1616 	cjne	r6,#0x52,00558$
      00266B BF 00 03         [24] 1617 	cjne	r7,#0x00,00558$
      00266E 02 23 71         [24] 1618 	ljmp	00112$
      002671                       1619 00558$:
      002671 BE 50 06         [24] 1620 	cjne	r6,#0x50,00559$
      002674 BF 00 03         [24] 1621 	cjne	r7,#0x00,00559$
      002677 02 23 71         [24] 1622 	ljmp	00112$
      00267A                       1623 00559$:
                                   1624 ;	life.c:252: else if (c == (int)'S') break;
      00267A BE 53 C0         [24] 1625 	cjne	r6,#0x53,00130$
      00267D BF 00 BD         [24] 1626 	cjne	r7,#0x00,00130$
                                   1627 ;	life.c:77: generation[0] = 0;
      002680 78 43            [12] 1628 	mov	r0,#_generation
      002682 76 00            [12] 1629 	mov	@r0,#0x00
      002684 08               [12] 1630 	inc	r0
      002685 76 00            [12] 1631 	mov	@r0,#0x00
                                   1632 ;	life.c:78: generation[1] = 0;
      002687 78 45            [12] 1633 	mov	r0,#(_generation + 0x0002)
      002689 76 00            [12] 1634 	mov	@r0,#0x00
      00268B 08               [12] 1635 	inc	r0
      00268C 76 00            [12] 1636 	mov	@r0,#0x00
                                   1637 ;	life.c:257: for (i1 = 0; !i0 && !i1; ) {
      00268E 78 32            [12] 1638 	mov	r0,#_i1
      002690 76 00            [12] 1639 	mov	@r0,#0x00
      002692                       1640 00241$:
      002692 78 31            [12] 1641 	mov	r0,#_i0
      002694 E6               [12] 1642 	mov	a,@r0
      002695 60 03            [24] 1643 	jz	00562$
      002697 02 2B 63         [24] 1644 	ljmp	00138$
      00269A                       1645 00562$:
      00269A 78 32            [12] 1646 	mov	r0,#_i1
      00269C E6               [12] 1647 	mov	a,@r0
      00269D 60 03            [24] 1648 	jz	00563$
      00269F 02 2B 63         [24] 1649 	ljmp	00138$
      0026A2                       1650 00563$:
                                   1651 ;	life.c:258: show(1);
      0026A2 75 82 01         [24] 1652 	mov	dpl,#0x01
      0026A5 12 20 F4         [24] 1653 	lcall	_show
                                   1654 ;	life.c:177: fixed = 0;
      0026A8 78 3D            [12] 1655 	mov	r0,#_fixed
      0026AA 76 00            [12] 1656 	mov	@r0,#0x00
                                   1657 ;	life.c:178: cycle2 = 0;
      0026AC 78 3E            [12] 1658 	mov	r0,#_cycle2
      0026AE 76 00            [12] 1659 	mov	@r0,#0x00
                                   1660 ;	life.c:179: bstep = 0;
      0026B0 78 3B            [12] 1661 	mov	r0,#_bstep
      0026B2 76 00            [12] 1662 	mov	@r0,#0x00
                                   1663 ;	life.c:181: for (y = 0; y < H; y++) {
      0026B4 78 35            [12] 1664 	mov	r0,#_y
      0026B6 E4               [12] 1665 	clr	a
      0026B7 F6               [12] 1666 	mov	@r0,a
      0026B8 08               [12] 1667 	inc	r0
      0026B9 F6               [12] 1668 	mov	@r0,a
      0026BA                       1669 00228$:
                                   1670 ;	life.c:182: putchar(busy[bstep]); putchar('\r');
      0026BA 78 3B            [12] 1671 	mov	r0,#_bstep
      0026BC E6               [12] 1672 	mov	a,@r0
      0026BD 24 47            [12] 1673 	add	a,#_busy
      0026BF F9               [12] 1674 	mov	r1,a
      0026C0 87 07            [24] 1675 	mov	ar7,@r1
      0026C2 7E 00            [12] 1676 	mov	r6,#0x00
      0026C4 8F 82            [24] 1677 	mov	dpl,r7
      0026C6 8E 83            [24] 1678 	mov	dph,r6
      0026C8 12 20 CE         [24] 1679 	lcall	_putchar
      0026CB 90 00 0D         [24] 1680 	mov	dptr,#0x000d
      0026CE 12 20 CE         [24] 1681 	lcall	_putchar
                                   1682 ;	life.c:183: bstep = (bstep + 1) & 3;
      0026D1 78 3B            [12] 1683 	mov	r0,#_bstep
      0026D3 86 07            [24] 1684 	mov	ar7,@r0
      0026D5 0F               [12] 1685 	inc	r7
      0026D6 78 3B            [12] 1686 	mov	r0,#_bstep
      0026D8 74 03            [12] 1687 	mov	a,#0x03
      0026DA 5F               [12] 1688 	anl	a,r7
      0026DB F6               [12] 1689 	mov	@r0,a
                                   1690 ;	life.c:184: for (x = 0; x < W; x++) {
      0026DC 78 33            [12] 1691 	mov	r0,#_x
      0026DE E4               [12] 1692 	clr	a
      0026DF F6               [12] 1693 	mov	@r0,a
      0026E0 08               [12] 1694 	inc	r0
      0026E1 F6               [12] 1695 	mov	@r0,a
      0026E2                       1696 00226$:
                                   1697 ;	life.c:185: n = -u[A2D(W, y, x)];
      0026E2 78 35            [12] 1698 	mov	r0,#_y
      0026E4 E6               [12] 1699 	mov	a,@r0
      0026E5 C0 E0            [24] 1700 	push	acc
      0026E7 08               [12] 1701 	inc	r0
      0026E8 E6               [12] 1702 	mov	a,@r0
      0026E9 C0 E0            [24] 1703 	push	acc
      0026EB 90 00 30         [24] 1704 	mov	dptr,#0x0030
      0026EE 12 2C A2         [24] 1705 	lcall	__mulint
      0026F1 C8               [12] 1706 	xch	a,r0
      0026F2 E5 10            [12] 1707 	mov	a,_bp
      0026F4 24 04            [12] 1708 	add	a,#0x04
      0026F6 C8               [12] 1709 	xch	a,r0
      0026F7 A6 82            [24] 1710 	mov	@r0,dpl
      0026F9 08               [12] 1711 	inc	r0
      0026FA A6 83            [24] 1712 	mov	@r0,dph
      0026FC 15 81            [12] 1713 	dec	sp
      0026FE 15 81            [12] 1714 	dec	sp
      002700 E5 10            [12] 1715 	mov	a,_bp
      002702 24 04            [12] 1716 	add	a,#0x04
      002704 F8               [12] 1717 	mov	r0,a
      002705 79 33            [12] 1718 	mov	r1,#_x
      002707 E7               [12] 1719 	mov	a,@r1
      002708 26               [12] 1720 	add	a,@r0
      002709 C0 E0            [24] 1721 	push	acc
      00270B 09               [12] 1722 	inc	r1
      00270C E7               [12] 1723 	mov	a,@r1
      00270D 08               [12] 1724 	inc	r0
      00270E 36               [12] 1725 	addc	a,@r0
      00270F C0 E0            [24] 1726 	push	acc
      002711 E5 10            [12] 1727 	mov	a,_bp
      002713 24 03            [12] 1728 	add	a,#0x03
      002715 F8               [12] 1729 	mov	r0,a
      002716 D0 E0            [24] 1730 	pop	acc
      002718 F6               [12] 1731 	mov	@r0,a
      002719 18               [12] 1732 	dec	r0
      00271A D0 E0            [24] 1733 	pop	acc
      00271C F6               [12] 1734 	mov	@r0,a
      00271D A8 10            [24] 1735 	mov	r0,_bp
      00271F 08               [12] 1736 	inc	r0
      002720 08               [12] 1737 	inc	r0
      002721 E6               [12] 1738 	mov	a,@r0
      002722 24 00            [12] 1739 	add	a,#_u
      002724 F5 82            [12] 1740 	mov	dpl,a
      002726 08               [12] 1741 	inc	r0
      002727 E6               [12] 1742 	mov	a,@r0
      002728 34 80            [12] 1743 	addc	a,#(_u >> 8)
      00272A F5 83            [12] 1744 	mov	dph,a
      00272C E0               [24] 1745 	movx	a,@dptr
      00272D FB               [12] 1746 	mov	r3,a
      00272E A8 10            [24] 1747 	mov	r0,_bp
      002730 08               [12] 1748 	inc	r0
      002731 C3               [12] 1749 	clr	c
      002732 E4               [12] 1750 	clr	a
      002733 9B               [12] 1751 	subb	a,r3
      002734 F6               [12] 1752 	mov	@r0,a
                                   1753 ;	life.c:188: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      002735 78 35            [12] 1754 	mov	r0,#_y
      002737 74 FF            [12] 1755 	mov	a,#0xff
      002739 26               [12] 1756 	add	a,@r0
      00273A FA               [12] 1757 	mov	r2,a
      00273B 74 FF            [12] 1758 	mov	a,#0xff
      00273D 08               [12] 1759 	inc	r0
      00273E 36               [12] 1760 	addc	a,@r0
      00273F FB               [12] 1761 	mov	r3,a
      002740 74 C0            [12] 1762 	mov	a,#0xc0
      002742 2A               [12] 1763 	add	a,r2
      002743 FA               [12] 1764 	mov	r2,a
      002744 E4               [12] 1765 	clr	a
      002745 3B               [12] 1766 	addc	a,r3
      002746 FB               [12] 1767 	mov	r3,a
      002747 74 C0            [12] 1768 	mov	a,#0xc0
      002749 C0 E0            [24] 1769 	push	acc
      00274B E4               [12] 1770 	clr	a
      00274C C0 E0            [24] 1771 	push	acc
      00274E 8A 82            [24] 1772 	mov	dpl,r2
      002750 8B 83            [24] 1773 	mov	dph,r3
      002752 12 2E 80         [24] 1774 	lcall	__modsint
      002755 AA 82            [24] 1775 	mov	r2,dpl
      002757 AB 83            [24] 1776 	mov	r3,dph
      002759 15 81            [12] 1777 	dec	sp
      00275B 15 81            [12] 1778 	dec	sp
      00275D C0 02            [24] 1779 	push	ar2
      00275F C0 03            [24] 1780 	push	ar3
      002761 90 00 30         [24] 1781 	mov	dptr,#0x0030
      002764 12 2C A2         [24] 1782 	lcall	__mulint
      002767 AA 82            [24] 1783 	mov	r2,dpl
      002769 AB 83            [24] 1784 	mov	r3,dph
      00276B 15 81            [12] 1785 	dec	sp
      00276D 15 81            [12] 1786 	dec	sp
      00276F 78 33            [12] 1787 	mov	r0,#_x
      002771 74 FF            [12] 1788 	mov	a,#0xff
      002773 26               [12] 1789 	add	a,@r0
      002774 FC               [12] 1790 	mov	r4,a
      002775 74 FF            [12] 1791 	mov	a,#0xff
      002777 08               [12] 1792 	inc	r0
      002778 36               [12] 1793 	addc	a,@r0
      002779 FD               [12] 1794 	mov	r5,a
      00277A 74 30            [12] 1795 	mov	a,#0x30
      00277C 2C               [12] 1796 	add	a,r4
      00277D FC               [12] 1797 	mov	r4,a
      00277E E4               [12] 1798 	clr	a
      00277F 3D               [12] 1799 	addc	a,r5
      002780 FD               [12] 1800 	mov	r5,a
      002781 C0 03            [24] 1801 	push	ar3
      002783 C0 02            [24] 1802 	push	ar2
      002785 74 30            [12] 1803 	mov	a,#0x30
      002787 C0 E0            [24] 1804 	push	acc
      002789 E4               [12] 1805 	clr	a
      00278A C0 E0            [24] 1806 	push	acc
      00278C 8C 82            [24] 1807 	mov	dpl,r4
      00278E 8D 83            [24] 1808 	mov	dph,r5
      002790 12 2E 80         [24] 1809 	lcall	__modsint
      002793 AC 82            [24] 1810 	mov	r4,dpl
      002795 AD 83            [24] 1811 	mov	r5,dph
      002797 15 81            [12] 1812 	dec	sp
      002799 15 81            [12] 1813 	dec	sp
      00279B D0 02            [24] 1814 	pop	ar2
      00279D D0 03            [24] 1815 	pop	ar3
      00279F EC               [12] 1816 	mov	a,r4
      0027A0 2A               [12] 1817 	add	a,r2
      0027A1 FE               [12] 1818 	mov	r6,a
      0027A2 ED               [12] 1819 	mov	a,r5
      0027A3 3B               [12] 1820 	addc	a,r3
      0027A4 FF               [12] 1821 	mov	r7,a
      0027A5 EE               [12] 1822 	mov	a,r6
      0027A6 24 00            [12] 1823 	add	a,#_u
      0027A8 F5 82            [12] 1824 	mov	dpl,a
      0027AA EF               [12] 1825 	mov	a,r7
      0027AB 34 80            [12] 1826 	addc	a,#(_u >> 8)
      0027AD F5 83            [12] 1827 	mov	dph,a
      0027AF E0               [24] 1828 	movx	a,@dptr
      0027B0 FF               [12] 1829 	mov	r7,a
      0027B1 A8 10            [24] 1830 	mov	r0,_bp
      0027B3 08               [12] 1831 	inc	r0
      0027B4 EF               [12] 1832 	mov	a,r7
      0027B5 26               [12] 1833 	add	a,@r0
      0027B6 F6               [12] 1834 	mov	@r0,a
                                   1835 ;	life.c:190: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      0027B7 78 33            [12] 1836 	mov	r0,#_x
      0027B9 E5 10            [12] 1837 	mov	a,_bp
      0027BB 24 06            [12] 1838 	add	a,#0x06
      0027BD F9               [12] 1839 	mov	r1,a
      0027BE E6               [12] 1840 	mov	a,@r0
      0027BF F7               [12] 1841 	mov	@r1,a
      0027C0 08               [12] 1842 	inc	r0
      0027C1 09               [12] 1843 	inc	r1
      0027C2 E6               [12] 1844 	mov	a,@r0
      0027C3 F7               [12] 1845 	mov	@r1,a
      0027C4 E5 10            [12] 1846 	mov	a,_bp
      0027C6 24 06            [12] 1847 	add	a,#0x06
      0027C8 F8               [12] 1848 	mov	r0,a
      0027C9 74 30            [12] 1849 	mov	a,#0x30
      0027CB 26               [12] 1850 	add	a,@r0
      0027CC FE               [12] 1851 	mov	r6,a
      0027CD E4               [12] 1852 	clr	a
      0027CE 08               [12] 1853 	inc	r0
      0027CF 36               [12] 1854 	addc	a,@r0
      0027D0 FF               [12] 1855 	mov	r7,a
      0027D1 C0 05            [24] 1856 	push	ar5
      0027D3 C0 04            [24] 1857 	push	ar4
      0027D5 C0 03            [24] 1858 	push	ar3
      0027D7 C0 02            [24] 1859 	push	ar2
      0027D9 74 30            [12] 1860 	mov	a,#0x30
      0027DB C0 E0            [24] 1861 	push	acc
      0027DD E4               [12] 1862 	clr	a
      0027DE C0 E0            [24] 1863 	push	acc
      0027E0 8E 82            [24] 1864 	mov	dpl,r6
      0027E2 8F 83            [24] 1865 	mov	dph,r7
      0027E4 12 2E 80         [24] 1866 	lcall	__modsint
      0027E7 C8               [12] 1867 	xch	a,r0
      0027E8 E5 10            [12] 1868 	mov	a,_bp
      0027EA 24 08            [12] 1869 	add	a,#0x08
      0027EC C8               [12] 1870 	xch	a,r0
      0027ED A6 82            [24] 1871 	mov	@r0,dpl
      0027EF 08               [12] 1872 	inc	r0
      0027F0 A6 83            [24] 1873 	mov	@r0,dph
      0027F2 15 81            [12] 1874 	dec	sp
      0027F4 15 81            [12] 1875 	dec	sp
      0027F6 D0 02            [24] 1876 	pop	ar2
      0027F8 D0 03            [24] 1877 	pop	ar3
      0027FA E5 10            [12] 1878 	mov	a,_bp
      0027FC 24 08            [12] 1879 	add	a,#0x08
      0027FE F8               [12] 1880 	mov	r0,a
      0027FF E6               [12] 1881 	mov	a,@r0
      002800 2A               [12] 1882 	add	a,r2
      002801 FE               [12] 1883 	mov	r6,a
      002802 08               [12] 1884 	inc	r0
      002803 E6               [12] 1885 	mov	a,@r0
      002804 3B               [12] 1886 	addc	a,r3
      002805 FF               [12] 1887 	mov	r7,a
      002806 EE               [12] 1888 	mov	a,r6
      002807 24 00            [12] 1889 	add	a,#_u
      002809 F5 82            [12] 1890 	mov	dpl,a
      00280B EF               [12] 1891 	mov	a,r7
      00280C 34 80            [12] 1892 	addc	a,#(_u >> 8)
      00280E F5 83            [12] 1893 	mov	dph,a
      002810 E0               [24] 1894 	movx	a,@dptr
      002811 FF               [12] 1895 	mov	r7,a
      002812 A8 10            [24] 1896 	mov	r0,_bp
      002814 08               [12] 1897 	inc	r0
      002815 EF               [12] 1898 	mov	a,r7
      002816 26               [12] 1899 	add	a,@r0
      002817 F6               [12] 1900 	mov	@r0,a
                                   1901 ;	life.c:192: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      002818 E5 10            [12] 1902 	mov	a,_bp
      00281A 24 06            [12] 1903 	add	a,#0x06
      00281C F8               [12] 1904 	mov	r0,a
      00281D 74 31            [12] 1905 	mov	a,#0x31
      00281F 26               [12] 1906 	add	a,@r0
      002820 FE               [12] 1907 	mov	r6,a
      002821 E4               [12] 1908 	clr	a
      002822 08               [12] 1909 	inc	r0
      002823 36               [12] 1910 	addc	a,@r0
      002824 FF               [12] 1911 	mov	r7,a
      002825 C0 03            [24] 1912 	push	ar3
      002827 C0 02            [24] 1913 	push	ar2
      002829 74 30            [12] 1914 	mov	a,#0x30
      00282B C0 E0            [24] 1915 	push	acc
      00282D E4               [12] 1916 	clr	a
      00282E C0 E0            [24] 1917 	push	acc
      002830 8E 82            [24] 1918 	mov	dpl,r6
      002832 8F 83            [24] 1919 	mov	dph,r7
      002834 12 2E 80         [24] 1920 	lcall	__modsint
      002837 AE 82            [24] 1921 	mov	r6,dpl
      002839 AF 83            [24] 1922 	mov	r7,dph
      00283B 15 81            [12] 1923 	dec	sp
      00283D 15 81            [12] 1924 	dec	sp
      00283F D0 02            [24] 1925 	pop	ar2
      002841 D0 03            [24] 1926 	pop	ar3
      002843 D0 04            [24] 1927 	pop	ar4
      002845 D0 05            [24] 1928 	pop	ar5
      002847 EE               [12] 1929 	mov	a,r6
      002848 2A               [12] 1930 	add	a,r2
      002849 FA               [12] 1931 	mov	r2,a
      00284A EF               [12] 1932 	mov	a,r7
      00284B 3B               [12] 1933 	addc	a,r3
      00284C FB               [12] 1934 	mov	r3,a
      00284D EA               [12] 1935 	mov	a,r2
      00284E 24 00            [12] 1936 	add	a,#_u
      002850 F5 82            [12] 1937 	mov	dpl,a
      002852 EB               [12] 1938 	mov	a,r3
      002853 34 80            [12] 1939 	addc	a,#(_u >> 8)
      002855 F5 83            [12] 1940 	mov	dph,a
      002857 E0               [24] 1941 	movx	a,@dptr
      002858 FB               [12] 1942 	mov	r3,a
      002859 A8 10            [24] 1943 	mov	r0,_bp
      00285B 08               [12] 1944 	inc	r0
      00285C EB               [12] 1945 	mov	a,r3
      00285D 26               [12] 1946 	add	a,@r0
      00285E F6               [12] 1947 	mov	@r0,a
                                   1948 ;	life.c:194: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      00285F 78 35            [12] 1949 	mov	r0,#_y
      002861 E5 10            [12] 1950 	mov	a,_bp
      002863 24 0A            [12] 1951 	add	a,#0x0a
      002865 F9               [12] 1952 	mov	r1,a
      002866 E6               [12] 1953 	mov	a,@r0
      002867 F7               [12] 1954 	mov	@r1,a
      002868 08               [12] 1955 	inc	r0
      002869 09               [12] 1956 	inc	r1
      00286A E6               [12] 1957 	mov	a,@r0
      00286B F7               [12] 1958 	mov	@r1,a
      00286C E5 10            [12] 1959 	mov	a,_bp
      00286E 24 0A            [12] 1960 	add	a,#0x0a
      002870 F8               [12] 1961 	mov	r0,a
      002871 74 C0            [12] 1962 	mov	a,#0xc0
      002873 26               [12] 1963 	add	a,@r0
      002874 FA               [12] 1964 	mov	r2,a
      002875 E4               [12] 1965 	clr	a
      002876 08               [12] 1966 	inc	r0
      002877 36               [12] 1967 	addc	a,@r0
      002878 FB               [12] 1968 	mov	r3,a
      002879 C0 07            [24] 1969 	push	ar7
      00287B C0 06            [24] 1970 	push	ar6
      00287D C0 05            [24] 1971 	push	ar5
      00287F C0 04            [24] 1972 	push	ar4
      002881 74 C0            [12] 1973 	mov	a,#0xc0
      002883 C0 E0            [24] 1974 	push	acc
      002885 E4               [12] 1975 	clr	a
      002886 C0 E0            [24] 1976 	push	acc
      002888 8A 82            [24] 1977 	mov	dpl,r2
      00288A 8B 83            [24] 1978 	mov	dph,r3
      00288C 12 2E 80         [24] 1979 	lcall	__modsint
      00288F AA 82            [24] 1980 	mov	r2,dpl
      002891 AB 83            [24] 1981 	mov	r3,dph
      002893 15 81            [12] 1982 	dec	sp
      002895 15 81            [12] 1983 	dec	sp
      002897 C0 02            [24] 1984 	push	ar2
      002899 C0 03            [24] 1985 	push	ar3
      00289B 90 00 30         [24] 1986 	mov	dptr,#0x0030
      00289E 12 2C A2         [24] 1987 	lcall	__mulint
      0028A1 C8               [12] 1988 	xch	a,r0
      0028A2 E5 10            [12] 1989 	mov	a,_bp
      0028A4 24 0C            [12] 1990 	add	a,#0x0c
      0028A6 C8               [12] 1991 	xch	a,r0
      0028A7 A6 82            [24] 1992 	mov	@r0,dpl
      0028A9 08               [12] 1993 	inc	r0
      0028AA A6 83            [24] 1994 	mov	@r0,dph
      0028AC 15 81            [12] 1995 	dec	sp
      0028AE 15 81            [12] 1996 	dec	sp
      0028B0 D0 04            [24] 1997 	pop	ar4
      0028B2 D0 05            [24] 1998 	pop	ar5
      0028B4 D0 06            [24] 1999 	pop	ar6
      0028B6 D0 07            [24] 2000 	pop	ar7
      0028B8 E5 10            [12] 2001 	mov	a,_bp
      0028BA 24 0C            [12] 2002 	add	a,#0x0c
      0028BC F8               [12] 2003 	mov	r0,a
      0028BD EC               [12] 2004 	mov	a,r4
      0028BE 26               [12] 2005 	add	a,@r0
      0028BF FA               [12] 2006 	mov	r2,a
      0028C0 ED               [12] 2007 	mov	a,r5
      0028C1 08               [12] 2008 	inc	r0
      0028C2 36               [12] 2009 	addc	a,@r0
      0028C3 FB               [12] 2010 	mov	r3,a
      0028C4 EA               [12] 2011 	mov	a,r2
      0028C5 24 00            [12] 2012 	add	a,#_u
      0028C7 F5 82            [12] 2013 	mov	dpl,a
      0028C9 EB               [12] 2014 	mov	a,r3
      0028CA 34 80            [12] 2015 	addc	a,#(_u >> 8)
      0028CC F5 83            [12] 2016 	mov	dph,a
      0028CE E0               [24] 2017 	movx	a,@dptr
      0028CF FB               [12] 2018 	mov	r3,a
      0028D0 A8 10            [24] 2019 	mov	r0,_bp
      0028D2 08               [12] 2020 	inc	r0
      0028D3 EB               [12] 2021 	mov	a,r3
      0028D4 26               [12] 2022 	add	a,@r0
      0028D5 F6               [12] 2023 	mov	@r0,a
                                   2024 ;	life.c:196: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      0028D6 E5 10            [12] 2025 	mov	a,_bp
      0028D8 24 0C            [12] 2026 	add	a,#0x0c
      0028DA F8               [12] 2027 	mov	r0,a
      0028DB E5 10            [12] 2028 	mov	a,_bp
      0028DD 24 08            [12] 2029 	add	a,#0x08
      0028DF F9               [12] 2030 	mov	r1,a
      0028E0 E7               [12] 2031 	mov	a,@r1
      0028E1 26               [12] 2032 	add	a,@r0
      0028E2 FA               [12] 2033 	mov	r2,a
      0028E3 09               [12] 2034 	inc	r1
      0028E4 E7               [12] 2035 	mov	a,@r1
      0028E5 08               [12] 2036 	inc	r0
      0028E6 36               [12] 2037 	addc	a,@r0
      0028E7 FB               [12] 2038 	mov	r3,a
      0028E8 EA               [12] 2039 	mov	a,r2
      0028E9 24 00            [12] 2040 	add	a,#_u
      0028EB F5 82            [12] 2041 	mov	dpl,a
      0028ED EB               [12] 2042 	mov	a,r3
      0028EE 34 80            [12] 2043 	addc	a,#(_u >> 8)
      0028F0 F5 83            [12] 2044 	mov	dph,a
      0028F2 E0               [24] 2045 	movx	a,@dptr
      0028F3 FB               [12] 2046 	mov	r3,a
      0028F4 A8 10            [24] 2047 	mov	r0,_bp
      0028F6 08               [12] 2048 	inc	r0
      0028F7 EB               [12] 2049 	mov	a,r3
      0028F8 26               [12] 2050 	add	a,@r0
      0028F9 F6               [12] 2051 	mov	@r0,a
                                   2052 ;	life.c:198: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      0028FA E5 10            [12] 2053 	mov	a,_bp
      0028FC 24 0C            [12] 2054 	add	a,#0x0c
      0028FE F8               [12] 2055 	mov	r0,a
      0028FF EE               [12] 2056 	mov	a,r6
      002900 26               [12] 2057 	add	a,@r0
      002901 FA               [12] 2058 	mov	r2,a
      002902 EF               [12] 2059 	mov	a,r7
      002903 08               [12] 2060 	inc	r0
      002904 36               [12] 2061 	addc	a,@r0
      002905 FB               [12] 2062 	mov	r3,a
      002906 EA               [12] 2063 	mov	a,r2
      002907 24 00            [12] 2064 	add	a,#_u
      002909 F5 82            [12] 2065 	mov	dpl,a
      00290B EB               [12] 2066 	mov	a,r3
      00290C 34 80            [12] 2067 	addc	a,#(_u >> 8)
      00290E F5 83            [12] 2068 	mov	dph,a
      002910 E0               [24] 2069 	movx	a,@dptr
      002911 FB               [12] 2070 	mov	r3,a
      002912 A8 10            [24] 2071 	mov	r0,_bp
      002914 08               [12] 2072 	inc	r0
      002915 E5 10            [12] 2073 	mov	a,_bp
      002917 24 0C            [12] 2074 	add	a,#0x0c
      002919 F9               [12] 2075 	mov	r1,a
      00291A EB               [12] 2076 	mov	a,r3
      00291B 26               [12] 2077 	add	a,@r0
      00291C F7               [12] 2078 	mov	@r1,a
                                   2079 ;	life.c:200: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      00291D E5 10            [12] 2080 	mov	a,_bp
      00291F 24 0A            [12] 2081 	add	a,#0x0a
      002921 F8               [12] 2082 	mov	r0,a
      002922 74 C1            [12] 2083 	mov	a,#0xc1
      002924 26               [12] 2084 	add	a,@r0
      002925 FA               [12] 2085 	mov	r2,a
      002926 E4               [12] 2086 	clr	a
      002927 08               [12] 2087 	inc	r0
      002928 36               [12] 2088 	addc	a,@r0
      002929 FB               [12] 2089 	mov	r3,a
      00292A C0 07            [24] 2090 	push	ar7
      00292C C0 06            [24] 2091 	push	ar6
      00292E C0 05            [24] 2092 	push	ar5
      002930 C0 04            [24] 2093 	push	ar4
      002932 74 C0            [12] 2094 	mov	a,#0xc0
      002934 C0 E0            [24] 2095 	push	acc
      002936 E4               [12] 2096 	clr	a
      002937 C0 E0            [24] 2097 	push	acc
      002939 8A 82            [24] 2098 	mov	dpl,r2
      00293B 8B 83            [24] 2099 	mov	dph,r3
      00293D 12 2E 80         [24] 2100 	lcall	__modsint
      002940 AA 82            [24] 2101 	mov	r2,dpl
      002942 AB 83            [24] 2102 	mov	r3,dph
      002944 15 81            [12] 2103 	dec	sp
      002946 15 81            [12] 2104 	dec	sp
      002948 C0 02            [24] 2105 	push	ar2
      00294A C0 03            [24] 2106 	push	ar3
      00294C 90 00 30         [24] 2107 	mov	dptr,#0x0030
      00294F 12 2C A2         [24] 2108 	lcall	__mulint
      002952 AA 82            [24] 2109 	mov	r2,dpl
      002954 AB 83            [24] 2110 	mov	r3,dph
      002956 15 81            [12] 2111 	dec	sp
      002958 15 81            [12] 2112 	dec	sp
      00295A D0 04            [24] 2113 	pop	ar4
      00295C D0 05            [24] 2114 	pop	ar5
      00295E D0 06            [24] 2115 	pop	ar6
      002960 D0 07            [24] 2116 	pop	ar7
      002962 EC               [12] 2117 	mov	a,r4
      002963 2A               [12] 2118 	add	a,r2
      002964 FC               [12] 2119 	mov	r4,a
      002965 ED               [12] 2120 	mov	a,r5
      002966 3B               [12] 2121 	addc	a,r3
      002967 FD               [12] 2122 	mov	r5,a
      002968 EC               [12] 2123 	mov	a,r4
      002969 24 00            [12] 2124 	add	a,#_u
      00296B F5 82            [12] 2125 	mov	dpl,a
      00296D ED               [12] 2126 	mov	a,r5
      00296E 34 80            [12] 2127 	addc	a,#(_u >> 8)
      002970 F5 83            [12] 2128 	mov	dph,a
      002972 E0               [24] 2129 	movx	a,@dptr
      002973 FD               [12] 2130 	mov	r5,a
      002974 E5 10            [12] 2131 	mov	a,_bp
      002976 24 0C            [12] 2132 	add	a,#0x0c
      002978 F8               [12] 2133 	mov	r0,a
      002979 E5 10            [12] 2134 	mov	a,_bp
      00297B 24 0C            [12] 2135 	add	a,#0x0c
      00297D F9               [12] 2136 	mov	r1,a
      00297E ED               [12] 2137 	mov	a,r5
      00297F 26               [12] 2138 	add	a,@r0
      002980 F7               [12] 2139 	mov	@r1,a
                                   2140 ;	life.c:202: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      002981 E5 10            [12] 2141 	mov	a,_bp
      002983 24 08            [12] 2142 	add	a,#0x08
      002985 F8               [12] 2143 	mov	r0,a
      002986 E6               [12] 2144 	mov	a,@r0
      002987 2A               [12] 2145 	add	a,r2
      002988 FC               [12] 2146 	mov	r4,a
      002989 08               [12] 2147 	inc	r0
      00298A E6               [12] 2148 	mov	a,@r0
      00298B 3B               [12] 2149 	addc	a,r3
      00298C FD               [12] 2150 	mov	r5,a
      00298D EC               [12] 2151 	mov	a,r4
      00298E 24 00            [12] 2152 	add	a,#_u
      002990 F5 82            [12] 2153 	mov	dpl,a
      002992 ED               [12] 2154 	mov	a,r5
      002993 34 80            [12] 2155 	addc	a,#(_u >> 8)
      002995 F5 83            [12] 2156 	mov	dph,a
      002997 E0               [24] 2157 	movx	a,@dptr
      002998 FD               [12] 2158 	mov	r5,a
      002999 E5 10            [12] 2159 	mov	a,_bp
      00299B 24 0C            [12] 2160 	add	a,#0x0c
      00299D F8               [12] 2161 	mov	r0,a
      00299E ED               [12] 2162 	mov	a,r5
      00299F 26               [12] 2163 	add	a,@r0
      0029A0 FD               [12] 2164 	mov	r5,a
                                   2165 ;	life.c:203: y1 = 1; x1 = 1;
      0029A1 78 41            [12] 2166 	mov	r0,#_y1
      0029A3 76 01            [12] 2167 	mov	@r0,#0x01
      0029A5 08               [12] 2168 	inc	r0
      0029A6 76 00            [12] 2169 	mov	@r0,#0x00
      0029A8 78 3F            [12] 2170 	mov	r0,#_x1
      0029AA 76 01            [12] 2171 	mov	@r0,#0x01
      0029AC 08               [12] 2172 	inc	r0
      0029AD 76 00            [12] 2173 	mov	@r0,#0x00
                                   2174 ;	life.c:204: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      0029AF EE               [12] 2175 	mov	a,r6
      0029B0 2A               [12] 2176 	add	a,r2
      0029B1 FE               [12] 2177 	mov	r6,a
      0029B2 EF               [12] 2178 	mov	a,r7
      0029B3 3B               [12] 2179 	addc	a,r3
      0029B4 FF               [12] 2180 	mov	r7,a
      0029B5 EE               [12] 2181 	mov	a,r6
      0029B6 24 00            [12] 2182 	add	a,#_u
      0029B8 F5 82            [12] 2183 	mov	dpl,a
      0029BA EF               [12] 2184 	mov	a,r7
      0029BB 34 80            [12] 2185 	addc	a,#(_u >> 8)
      0029BD F5 83            [12] 2186 	mov	dph,a
      0029BF E0               [24] 2187 	movx	a,@dptr
      0029C0 2D               [12] 2188 	add	a,r5
      0029C1 FF               [12] 2189 	mov	r7,a
      0029C2 78 3C            [12] 2190 	mov	r0,#_n
      0029C4 A6 07            [24] 2191 	mov	@r0,ar7
                                   2192 ;	life.c:206: nu[A2D(W, y, x)] = (n == 3) || ((n == 2) && u[A2D(W, y, x)]);
      0029C6 A8 10            [24] 2193 	mov	r0,_bp
      0029C8 08               [12] 2194 	inc	r0
      0029C9 08               [12] 2195 	inc	r0
      0029CA E6               [12] 2196 	mov	a,@r0
      0029CB 24 00            [12] 2197 	add	a,#_nu
      0029CD FD               [12] 2198 	mov	r5,a
      0029CE 08               [12] 2199 	inc	r0
      0029CF E6               [12] 2200 	mov	a,@r0
      0029D0 34 A4            [12] 2201 	addc	a,#(_nu >> 8)
      0029D2 FE               [12] 2202 	mov	r6,a
      0029D3 BF 03 02         [24] 2203 	cjne	r7,#0x03,00564$
      0029D6 80 28            [24] 2204 	sjmp	00254$
      0029D8                       2205 00564$:
      0029D8 BF 02 21         [24] 2206 	cjne	r7,#0x02,00253$
      0029DB E5 10            [12] 2207 	mov	a,_bp
      0029DD 24 04            [12] 2208 	add	a,#0x04
      0029DF F8               [12] 2209 	mov	r0,a
      0029E0 E5 10            [12] 2210 	mov	a,_bp
      0029E2 24 06            [12] 2211 	add	a,#0x06
      0029E4 F9               [12] 2212 	mov	r1,a
      0029E5 E7               [12] 2213 	mov	a,@r1
      0029E6 26               [12] 2214 	add	a,@r0
      0029E7 FC               [12] 2215 	mov	r4,a
      0029E8 09               [12] 2216 	inc	r1
      0029E9 E7               [12] 2217 	mov	a,@r1
      0029EA 08               [12] 2218 	inc	r0
      0029EB 36               [12] 2219 	addc	a,@r0
      0029EC FF               [12] 2220 	mov	r7,a
      0029ED EC               [12] 2221 	mov	a,r4
      0029EE 24 00            [12] 2222 	add	a,#_u
      0029F0 FC               [12] 2223 	mov	r4,a
      0029F1 EF               [12] 2224 	mov	a,r7
      0029F2 34 80            [12] 2225 	addc	a,#(_u >> 8)
      0029F4 FF               [12] 2226 	mov	r7,a
      0029F5 8C 82            [24] 2227 	mov	dpl,r4
      0029F7 8F 83            [24] 2228 	mov	dph,r7
      0029F9 E0               [24] 2229 	movx	a,@dptr
      0029FA 70 04            [24] 2230 	jnz	00254$
      0029FC                       2231 00253$:
                                   2232 ;	assignBit
      0029FC C2 00            [12] 2233 	clr	b0
      0029FE 80 02            [24] 2234 	sjmp	00255$
      002A00                       2235 00254$:
                                   2236 ;	assignBit
      002A00 D2 00            [12] 2237 	setb	b0
      002A02                       2238 00255$:
      002A02 A2 00            [12] 2239 	mov	c,b0
      002A04 E4               [12] 2240 	clr	a
      002A05 33               [12] 2241 	rlc	a
      002A06 8D 82            [24] 2242 	mov	dpl,r5
      002A08 8E 83            [24] 2243 	mov	dph,r6
      002A0A F0               [24] 2244 	movx	@dptr,a
                                   2245 ;	life.c:207: cycle2 |= pu[A2D(W, y, x)] ^ nu[A2D(W, y, x)];
      002A0B 78 35            [12] 2246 	mov	r0,#_y
      002A0D E6               [12] 2247 	mov	a,@r0
      002A0E C0 E0            [24] 2248 	push	acc
      002A10 08               [12] 2249 	inc	r0
      002A11 E6               [12] 2250 	mov	a,@r0
      002A12 C0 E0            [24] 2251 	push	acc
      002A14 90 00 30         [24] 2252 	mov	dptr,#0x0030
      002A17 12 2C A2         [24] 2253 	lcall	__mulint
      002A1A AE 82            [24] 2254 	mov	r6,dpl
      002A1C AF 83            [24] 2255 	mov	r7,dph
      002A1E 15 81            [12] 2256 	dec	sp
      002A20 15 81            [12] 2257 	dec	sp
      002A22 78 33            [12] 2258 	mov	r0,#_x
      002A24 E6               [12] 2259 	mov	a,@r0
      002A25 2E               [12] 2260 	add	a,r6
      002A26 FE               [12] 2261 	mov	r6,a
      002A27 08               [12] 2262 	inc	r0
      002A28 E6               [12] 2263 	mov	a,@r0
      002A29 3F               [12] 2264 	addc	a,r7
      002A2A FF               [12] 2265 	mov	r7,a
      002A2B EE               [12] 2266 	mov	a,r6
      002A2C 24 00            [12] 2267 	add	a,#_pu
      002A2E F5 82            [12] 2268 	mov	dpl,a
      002A30 EF               [12] 2269 	mov	a,r7
      002A31 34 5C            [12] 2270 	addc	a,#(_pu >> 8)
      002A33 F5 83            [12] 2271 	mov	dph,a
      002A35 E0               [24] 2272 	movx	a,@dptr
      002A36 FD               [12] 2273 	mov	r5,a
      002A37 EE               [12] 2274 	mov	a,r6
      002A38 24 00            [12] 2275 	add	a,#_nu
      002A3A F5 82            [12] 2276 	mov	dpl,a
      002A3C EF               [12] 2277 	mov	a,r7
      002A3D 34 A4            [12] 2278 	addc	a,#(_nu >> 8)
      002A3F F5 83            [12] 2279 	mov	dph,a
      002A41 E0               [24] 2280 	movx	a,@dptr
      002A42 FC               [12] 2281 	mov	r4,a
      002A43 6D               [12] 2282 	xrl	a,r5
      002A44 78 3E            [12] 2283 	mov	r0,#_cycle2
      002A46 46               [12] 2284 	orl	a,@r0
      002A47 F6               [12] 2285 	mov	@r0,a
                                   2286 ;	life.c:208: fixed |= u[A2D(W, y, x)] ^ nu[A2D(W, y, x)];
      002A48 EE               [12] 2287 	mov	a,r6
      002A49 24 00            [12] 2288 	add	a,#_u
      002A4B F5 82            [12] 2289 	mov	dpl,a
      002A4D EF               [12] 2290 	mov	a,r7
      002A4E 34 80            [12] 2291 	addc	a,#(_u >> 8)
      002A50 F5 83            [12] 2292 	mov	dph,a
      002A52 E0               [24] 2293 	movx	a,@dptr
      002A53 FF               [12] 2294 	mov	r7,a
      002A54 EC               [12] 2295 	mov	a,r4
      002A55 6F               [12] 2296 	xrl	a,r7
      002A56 78 3D            [12] 2297 	mov	r0,#_fixed
      002A58 46               [12] 2298 	orl	a,@r0
      002A59 F6               [12] 2299 	mov	@r0,a
                                   2300 ;	life.c:184: for (x = 0; x < W; x++) {
      002A5A 78 33            [12] 2301 	mov	r0,#_x
      002A5C 06               [12] 2302 	inc	@r0
      002A5D B6 00 02         [24] 2303 	cjne	@r0,#0x00,00568$
      002A60 08               [12] 2304 	inc	r0
      002A61 06               [12] 2305 	inc	@r0
      002A62                       2306 00568$:
      002A62 78 33            [12] 2307 	mov	r0,#_x
      002A64 C3               [12] 2308 	clr	c
      002A65 E6               [12] 2309 	mov	a,@r0
      002A66 94 30            [12] 2310 	subb	a,#0x30
      002A68 08               [12] 2311 	inc	r0
      002A69 E6               [12] 2312 	mov	a,@r0
      002A6A 64 80            [12] 2313 	xrl	a,#0x80
      002A6C 94 80            [12] 2314 	subb	a,#0x80
      002A6E 50 03            [24] 2315 	jnc	00569$
      002A70 02 26 E2         [24] 2316 	ljmp	00226$
      002A73                       2317 00569$:
                                   2318 ;	life.c:181: for (y = 0; y < H; y++) {
      002A73 78 35            [12] 2319 	mov	r0,#_y
      002A75 06               [12] 2320 	inc	@r0
      002A76 B6 00 02         [24] 2321 	cjne	@r0,#0x00,00570$
      002A79 08               [12] 2322 	inc	r0
      002A7A 06               [12] 2323 	inc	@r0
      002A7B                       2324 00570$:
      002A7B 78 35            [12] 2325 	mov	r0,#_y
      002A7D C3               [12] 2326 	clr	c
      002A7E E6               [12] 2327 	mov	a,@r0
      002A7F 94 C0            [12] 2328 	subb	a,#0xc0
      002A81 08               [12] 2329 	inc	r0
      002A82 E6               [12] 2330 	mov	a,@r0
      002A83 64 80            [12] 2331 	xrl	a,#0x80
      002A85 94 80            [12] 2332 	subb	a,#0x80
      002A87 50 03            [24] 2333 	jnc	00571$
      002A89 02 26 BA         [24] 2334 	ljmp	00228$
      002A8C                       2335 00571$:
                                   2336 ;	life.c:212: cycle2 = !cycle2;
      002A8C 78 3E            [12] 2337 	mov	r0,#_cycle2
      002A8E E6               [12] 2338 	mov	a,@r0
      002A8F B4 01 00         [24] 2339 	cjne	a,#0x01,00572$
      002A92                       2340 00572$:
      002A92 92 00            [24] 2341 	mov	b0,c
      002A94 78 3E            [12] 2342 	mov	r0,#_cycle2
      002A96 E4               [12] 2343 	clr	a
      002A97 33               [12] 2344 	rlc	a
      002A98 F6               [12] 2345 	mov	@r0,a
                                   2346 ;	life.c:213: fixed = !fixed;
      002A99 78 3D            [12] 2347 	mov	r0,#_fixed
      002A9B E6               [12] 2348 	mov	a,@r0
      002A9C B4 01 00         [24] 2349 	cjne	a,#0x01,00573$
      002A9F                       2350 00573$:
      002A9F 92 00            [24] 2351 	mov	b0,c
      002AA1 78 3D            [12] 2352 	mov	r0,#_fixed
      002AA3 E4               [12] 2353 	clr	a
      002AA4 33               [12] 2354 	rlc	a
      002AA5 F6               [12] 2355 	mov	@r0,a
                                   2356 ;	life.c:215: memcpy(pu, u, sizeof (u));
      002AA6 E4               [12] 2357 	clr	a
      002AA7 C0 E0            [24] 2358 	push	acc
      002AA9 74 24            [12] 2359 	mov	a,#0x24
      002AAB C0 E0            [24] 2360 	push	acc
      002AAD 74 00            [12] 2361 	mov	a,#_u
      002AAF C0 E0            [24] 2362 	push	acc
      002AB1 74 80            [12] 2363 	mov	a,#(_u >> 8)
      002AB3 C0 E0            [24] 2364 	push	acc
      002AB5 E4               [12] 2365 	clr	a
      002AB6 C0 E0            [24] 2366 	push	acc
      002AB8 90 5C 00         [24] 2367 	mov	dptr,#_pu
      002ABB 75 F0 00         [24] 2368 	mov	b,#0x00
      002ABE 12 2D 40         [24] 2369 	lcall	___memcpy
      002AC1 E5 81            [12] 2370 	mov	a,sp
      002AC3 24 FB            [12] 2371 	add	a,#0xfb
      002AC5 F5 81            [12] 2372 	mov	sp,a
                                   2373 ;	life.c:216: memcpy(u, nu, sizeof (nu));
      002AC7 E4               [12] 2374 	clr	a
      002AC8 C0 E0            [24] 2375 	push	acc
      002ACA 74 24            [12] 2376 	mov	a,#0x24
      002ACC C0 E0            [24] 2377 	push	acc
      002ACE 74 00            [12] 2378 	mov	a,#_nu
      002AD0 C0 E0            [24] 2379 	push	acc
      002AD2 74 A4            [12] 2380 	mov	a,#(_nu >> 8)
      002AD4 C0 E0            [24] 2381 	push	acc
      002AD6 E4               [12] 2382 	clr	a
      002AD7 C0 E0            [24] 2383 	push	acc
      002AD9 90 80 00         [24] 2384 	mov	dptr,#_u
      002ADC 75 F0 00         [24] 2385 	mov	b,#0x00
      002ADF 12 2D 40         [24] 2386 	lcall	___memcpy
      002AE2 E5 81            [12] 2387 	mov	a,sp
      002AE4 24 FB            [12] 2388 	add	a,#0xfb
      002AE6 F5 81            [12] 2389 	mov	sp,a
                                   2390 ;	life.c:260: if (fixed || cycle2) {
      002AE8 78 3D            [12] 2391 	mov	r0,#_fixed
      002AEA E6               [12] 2392 	mov	a,@r0
      002AEB 70 08            [24] 2393 	jnz	00135$
      002AED 78 3E            [12] 2394 	mov	r0,#_cycle2
      002AEF E6               [12] 2395 	mov	a,@r0
      002AF0 70 03            [24] 2396 	jnz	00575$
      002AF2 02 26 92         [24] 2397 	ljmp	00241$
      002AF5                       2398 00575$:
      002AF5                       2399 00135$:
                                   2400 ;	life.c:261: printstr("DONE ");
      002AF5 7D E8            [12] 2401 	mov	r5,#___str_7
      002AF7 7E 2F            [12] 2402 	mov	r6,#(___str_7 >> 8)
      002AF9 7F 80            [12] 2403 	mov	r7,#0x80
                                   2404 ;	life.c:50: return;
      002AFB                       2405 00231$:
                                   2406 ;	life.c:48: for (; *s; s++) putchar(*s);
      002AFB 8D 82            [24] 2407 	mov	dpl,r5
      002AFD 8E 83            [24] 2408 	mov	dph,r6
      002AFF 8F F0            [24] 2409 	mov	b,r7
      002B01 12 2E 64         [24] 2410 	lcall	__gptrget
      002B04 FC               [12] 2411 	mov	r4,a
      002B05 60 10            [24] 2412 	jz	00192$
      002B07 7B 00            [12] 2413 	mov	r3,#0x00
      002B09 8C 82            [24] 2414 	mov	dpl,r4
      002B0B 8B 83            [24] 2415 	mov	dph,r3
      002B0D 12 20 CE         [24] 2416 	lcall	_putchar
      002B10 0D               [12] 2417 	inc	r5
                                   2418 ;	life.c:261: printstr("DONE ");
      002B11 BD 00 E7         [24] 2419 	cjne	r5,#0x00,00231$
      002B14 0E               [12] 2420 	inc	r6
      002B15 80 E4            [24] 2421 	sjmp	00231$
      002B17                       2422 00192$:
                                   2423 ;	life.c:262: if (fixed) printstr("FIXED\r\n");
      002B17 78 3D            [12] 2424 	mov	r0,#_fixed
      002B19 E6               [12] 2425 	mov	a,@r0
      002B1A 60 22            [24] 2426 	jz	00133$
      002B1C 7D EE            [12] 2427 	mov	r5,#___str_8
      002B1E 7E 2F            [12] 2428 	mov	r6,#(___str_8 >> 8)
      002B20 7F 80            [12] 2429 	mov	r7,#0x80
                                   2430 ;	life.c:50: return;
      002B22                       2431 00234$:
                                   2432 ;	life.c:48: for (; *s; s++) putchar(*s);
      002B22 8D 82            [24] 2433 	mov	dpl,r5
      002B24 8E 83            [24] 2434 	mov	dph,r6
      002B26 8F F0            [24] 2435 	mov	b,r7
      002B28 12 2E 64         [24] 2436 	lcall	__gptrget
      002B2B FC               [12] 2437 	mov	r4,a
      002B2C 60 32            [24] 2438 	jz	00134$
      002B2E 7B 00            [12] 2439 	mov	r3,#0x00
      002B30 8C 82            [24] 2440 	mov	dpl,r4
      002B32 8B 83            [24] 2441 	mov	dph,r3
      002B34 12 20 CE         [24] 2442 	lcall	_putchar
      002B37 0D               [12] 2443 	inc	r5
                                   2444 ;	life.c:262: if (fixed) printstr("FIXED\r\n");
      002B38 BD 00 E7         [24] 2445 	cjne	r5,#0x00,00234$
      002B3B 0E               [12] 2446 	inc	r6
      002B3C 80 E4            [24] 2447 	sjmp	00234$
      002B3E                       2448 00133$:
                                   2449 ;	life.c:263: else printstr("CYCLE2\r\n");
      002B3E 7D F6            [12] 2450 	mov	r5,#___str_9
      002B40 7E 2F            [12] 2451 	mov	r6,#(___str_9 >> 8)
      002B42 7F 80            [12] 2452 	mov	r7,#0x80
                                   2453 ;	life.c:50: return;
      002B44                       2454 00237$:
                                   2455 ;	life.c:48: for (; *s; s++) putchar(*s);
      002B44 8D 82            [24] 2456 	mov	dpl,r5
      002B46 8E 83            [24] 2457 	mov	dph,r6
      002B48 8F F0            [24] 2458 	mov	b,r7
      002B4A 12 2E 64         [24] 2459 	lcall	__gptrget
      002B4D FC               [12] 2460 	mov	r4,a
      002B4E 60 10            [24] 2461 	jz	00134$
      002B50 7B 00            [12] 2462 	mov	r3,#0x00
      002B52 8C 82            [24] 2463 	mov	dpl,r4
      002B54 8B 83            [24] 2464 	mov	dph,r3
      002B56 12 20 CE         [24] 2465 	lcall	_putchar
      002B59 0D               [12] 2466 	inc	r5
                                   2467 ;	life.c:263: else printstr("CYCLE2\r\n");
      002B5A BD 00 E7         [24] 2468 	cjne	r5,#0x00,00237$
      002B5D 0E               [12] 2469 	inc	r6
      002B5E 80 E4            [24] 2470 	sjmp	00237$
      002B60                       2471 00134$:
                                   2472 ;	life.c:264: (void)getchar();
      002B60 12 20 D3         [24] 2473 	lcall	_getchar
                                   2474 ;	life.c:265: break;
      002B63                       2475 00138$:
                                   2476 ;	life.c:269: if (i1) {
      002B63 78 32            [12] 2477 	mov	r0,#_i1
      002B65 E6               [12] 2478 	mov	a,@r0
      002B66 60 25            [24] 2479 	jz	00247$
                                   2480 ;	life.c:270: printstr("BREAK\r\n");
      002B68 7D FF            [12] 2481 	mov	r5,#___str_10
      002B6A 7E 2F            [12] 2482 	mov	r6,#(___str_10 >> 8)
      002B6C 7F 80            [12] 2483 	mov	r7,#0x80
                                   2484 ;	life.c:50: return;
      002B6E                       2485 00244$:
                                   2486 ;	life.c:48: for (; *s; s++) putchar(*s);
      002B6E 8D 82            [24] 2487 	mov	dpl,r5
      002B70 8E 83            [24] 2488 	mov	dph,r6
      002B72 8F F0            [24] 2489 	mov	b,r7
      002B74 12 2E 64         [24] 2490 	lcall	__gptrget
      002B77 FC               [12] 2491 	mov	r4,a
      002B78 60 10            [24] 2492 	jz	00198$
      002B7A 7B 00            [12] 2493 	mov	r3,#0x00
      002B7C 8C 82            [24] 2494 	mov	dpl,r4
      002B7E 8B 83            [24] 2495 	mov	dph,r3
      002B80 12 20 CE         [24] 2496 	lcall	_putchar
      002B83 0D               [12] 2497 	inc	r5
                                   2498 ;	life.c:270: printstr("BREAK\r\n");
      002B84 BD 00 E7         [24] 2499 	cjne	r5,#0x00,00244$
      002B87 0E               [12] 2500 	inc	r6
      002B88 80 E4            [24] 2501 	sjmp	00244$
      002B8A                       2502 00198$:
                                   2503 ;	life.c:271: (void)getchar();
      002B8A 12 20 D3         [24] 2504 	lcall	_getchar
      002B8D                       2505 00247$:
                                   2506 ;	life.c:232: for (i0 = 0; !i0; ) {	
      002B8D 78 31            [12] 2507 	mov	r0,#_i0
      002B8F E6               [12] 2508 	mov	a,@r0
      002B90 70 03            [24] 2509 	jnz	00586$
      002B92 02 23 17         [24] 2510 	ljmp	00246$
      002B95                       2511 00586$:
                                   2512 ;	life.c:275: terminate:
      002B95                       2513 00142$:
                                   2514 ;	life.c:276: EA = 0;
                                   2515 ;	assignBit
      002B95 C2 AF            [12] 2516 	clr	_EA
                                   2517 ;	life.c:277: printstr("TERM\r\n");
      002B97 7D 07            [12] 2518 	mov	r5,#___str_11
      002B99 7E 30            [12] 2519 	mov	r6,#(___str_11 >> 8)
      002B9B 7F 80            [12] 2520 	mov	r7,#0x80
                                   2521 ;	life.c:50: return;
      002B9D                       2522 00249$:
                                   2523 ;	life.c:48: for (; *s; s++) putchar(*s);
      002B9D 8D 82            [24] 2524 	mov	dpl,r5
      002B9F 8E 83            [24] 2525 	mov	dph,r6
      002BA1 8F F0            [24] 2526 	mov	b,r7
      002BA3 12 2E 64         [24] 2527 	lcall	__gptrget
      002BA6 FC               [12] 2528 	mov	r4,a
      002BA7 60 10            [24] 2529 	jz	00200$
      002BA9 7B 00            [12] 2530 	mov	r3,#0x00
      002BAB 8C 82            [24] 2531 	mov	dpl,r4
      002BAD 8B 83            [24] 2532 	mov	dph,r3
      002BAF 12 20 CE         [24] 2533 	lcall	_putchar
      002BB2 0D               [12] 2534 	inc	r5
                                   2535 ;	life.c:277: printstr("TERM\r\n");
      002BB3 BD 00 E7         [24] 2536 	cjne	r5,#0x00,00249$
      002BB6 0E               [12] 2537 	inc	r6
      002BB7 80 E4            [24] 2538 	sjmp	00249$
      002BB9                       2539 00200$:
                                   2540 ;	life.c:278: (void)getchar();
      002BB9 12 20 D3         [24] 2541 	lcall	_getchar
                                   2542 ;	life.c:282: __endasm;
      002BBC 02 00 00         [24] 2543 	ljmp	0
                                   2544 ;	life.c:283: }
      002BBF 85 10 81         [24] 2545 	mov	sp,_bp
      002BC2 D0 10            [24] 2546 	pop	_bp
      002BC4 22               [24] 2547 	ret
                                   2548 	.area CSEG    (CODE)
                                   2549 	.area CONST   (CODE)
                                   2550 	.area CONST   (CODE)
      002F8C                       2551 ___str_0:
      002F8C 1B                    2552 	.db 0x1b
      002F8D 5B 32 4A              2553 	.ascii "[2J"
      002F90 1B                    2554 	.db 0x1b
      002F91 5B 6D 47 45 4E 20     2555 	.ascii "[mGEN "
      002F97 00                    2556 	.db 0x00
                                   2557 	.area CSEG    (CODE)
                                   2558 	.area CONST   (CODE)
      002F98                       2559 ___str_1:
      002F98 0D                    2560 	.db 0x0d
      002F99 0A                    2561 	.db 0x0a
      002F9A 00                    2562 	.db 0x00
                                   2563 	.area CSEG    (CODE)
                                   2564 	.area CONST   (CODE)
      002F9B                       2565 ___str_2:
      002F9B 4C 4F 41 44 20 30 20  2566 	.ascii "LOAD 0 1 ~ # <"
             31 20 7E 20 23 20 3C
      002FA9 00                    2567 	.db 0x00
                                   2568 	.area CSEG    (CODE)
                                   2569 	.area CONST   (CODE)
      002FAA                       2570 ___str_3:
      002FAA 3E                    2571 	.ascii ">"
      002FAB 0D                    2572 	.db 0x0d
      002FAC 0A                    2573 	.db 0x0a
      002FAD 00                    2574 	.db 0x00
                                   2575 	.area CSEG    (CODE)
                                   2576 	.area CONST   (CODE)
      002FAE                       2577 ___str_4:
      002FAE 52 41 4E 44 4F 4D     2578 	.ascii "RANDOM"
      002FB4 00                    2579 	.db 0x00
                                   2580 	.area CSEG    (CODE)
                                   2581 	.area CONST   (CODE)
      002FB5                       2582 ___str_5:
      002FB5 1B                    2583 	.db 0x1b
      002FB6 5B 32 4A              2584 	.ascii "[2J"
      002FB9 1B                    2585 	.db 0x1b
      002FBA 5B 3F 32 35 6C        2586 	.ascii "[?25l"
      002FBF 1B                    2587 	.db 0x1b
      002FC0 5B 6D 4C 49 46 45 20  2588 	.ascii "[mLIFE INIT T L R P"
             49 4E 49 54 20 54 20
             4C 20 52 20 50
      002FD3 0D                    2589 	.db 0x0d
      002FD4 0A                    2590 	.db 0x0a
      002FD5 00                    2591 	.db 0x00
                                   2592 	.area CSEG    (CODE)
                                   2593 	.area CONST   (CODE)
      002FD6                       2594 ___str_6:
      002FD6 52 45 41 44 59 20 54  2595 	.ascii "READY T L R P S"
             20 4C 20 52 20 50 20
             53
      002FE5 0D                    2596 	.db 0x0d
      002FE6 0A                    2597 	.db 0x0a
      002FE7 00                    2598 	.db 0x00
                                   2599 	.area CSEG    (CODE)
                                   2600 	.area CONST   (CODE)
      002FE8                       2601 ___str_7:
      002FE8 44 4F 4E 45 20        2602 	.ascii "DONE "
      002FED 00                    2603 	.db 0x00
                                   2604 	.area CSEG    (CODE)
                                   2605 	.area CONST   (CODE)
      002FEE                       2606 ___str_8:
      002FEE 46 49 58 45 44        2607 	.ascii "FIXED"
      002FF3 0D                    2608 	.db 0x0d
      002FF4 0A                    2609 	.db 0x0a
      002FF5 00                    2610 	.db 0x00
                                   2611 	.area CSEG    (CODE)
                                   2612 	.area CONST   (CODE)
      002FF6                       2613 ___str_9:
      002FF6 43 59 43 4C 45 32     2614 	.ascii "CYCLE2"
      002FFC 0D                    2615 	.db 0x0d
      002FFD 0A                    2616 	.db 0x0a
      002FFE 00                    2617 	.db 0x00
                                   2618 	.area CSEG    (CODE)
                                   2619 	.area CONST   (CODE)
      002FFF                       2620 ___str_10:
      002FFF 42 52 45 41 4B        2621 	.ascii "BREAK"
      003004 0D                    2622 	.db 0x0d
      003005 0A                    2623 	.db 0x0a
      003006 00                    2624 	.db 0x00
                                   2625 	.area CSEG    (CODE)
                                   2626 	.area CONST   (CODE)
      003007                       2627 ___str_11:
      003007 54 45 52 4D           2628 	.ascii "TERM"
      00300B 0D                    2629 	.db 0x0d
      00300C 0A                    2630 	.db 0x0a
      00300D 00                    2631 	.db 0x00
                                   2632 	.area CSEG    (CODE)
                                   2633 	.area XINIT   (CODE)
                                   2634 	.area CABS    (ABS,CODE)
