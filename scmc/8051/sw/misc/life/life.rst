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
                                     20 	.globl _CY
                                     21 	.globl _AC
                                     22 	.globl _F0
                                     23 	.globl _RS1
                                     24 	.globl _RS0
                                     25 	.globl _OV
                                     26 	.globl _FL
                                     27 	.globl _P
                                     28 	.globl _TF2
                                     29 	.globl _EXF2
                                     30 	.globl _RCLK
                                     31 	.globl _TCLK
                                     32 	.globl _EXEN2
                                     33 	.globl _TR2
                                     34 	.globl _C_T2
                                     35 	.globl _CP_RL2
                                     36 	.globl _T2CON_7
                                     37 	.globl _T2CON_6
                                     38 	.globl _T2CON_5
                                     39 	.globl _T2CON_4
                                     40 	.globl _T2CON_3
                                     41 	.globl _T2CON_2
                                     42 	.globl _T2CON_1
                                     43 	.globl _T2CON_0
                                     44 	.globl _PT2
                                     45 	.globl _PS
                                     46 	.globl _PT1
                                     47 	.globl _PX1
                                     48 	.globl _PT0
                                     49 	.globl _PX0
                                     50 	.globl _RD
                                     51 	.globl _WR
                                     52 	.globl _T1
                                     53 	.globl _T0
                                     54 	.globl _INT1
                                     55 	.globl _INT0
                                     56 	.globl _TXD
                                     57 	.globl _RXD
                                     58 	.globl _P3_7
                                     59 	.globl _P3_6
                                     60 	.globl _P3_5
                                     61 	.globl _P3_4
                                     62 	.globl _P3_3
                                     63 	.globl _P3_2
                                     64 	.globl _P3_1
                                     65 	.globl _P3_0
                                     66 	.globl _EA
                                     67 	.globl _ET2
                                     68 	.globl _ES
                                     69 	.globl _ET1
                                     70 	.globl _EX1
                                     71 	.globl _ET0
                                     72 	.globl _EX0
                                     73 	.globl _P2_7
                                     74 	.globl _P2_6
                                     75 	.globl _P2_5
                                     76 	.globl _P2_4
                                     77 	.globl _P2_3
                                     78 	.globl _P2_2
                                     79 	.globl _P2_1
                                     80 	.globl _P2_0
                                     81 	.globl _SM0
                                     82 	.globl _SM1
                                     83 	.globl _SM2
                                     84 	.globl _REN
                                     85 	.globl _TB8
                                     86 	.globl _RB8
                                     87 	.globl _TI
                                     88 	.globl _RI
                                     89 	.globl _T2EX
                                     90 	.globl _T2
                                     91 	.globl _P1_7
                                     92 	.globl _P1_6
                                     93 	.globl _P1_5
                                     94 	.globl _P1_4
                                     95 	.globl _P1_3
                                     96 	.globl _P1_2
                                     97 	.globl _P1_1
                                     98 	.globl _P1_0
                                     99 	.globl _TF1
                                    100 	.globl _TR1
                                    101 	.globl _TF0
                                    102 	.globl _TR0
                                    103 	.globl _IE1
                                    104 	.globl _IT1
                                    105 	.globl _IE0
                                    106 	.globl _IT0
                                    107 	.globl _P0_7
                                    108 	.globl _P0_6
                                    109 	.globl _P0_5
                                    110 	.globl _P0_4
                                    111 	.globl _P0_3
                                    112 	.globl _P0_2
                                    113 	.globl _P0_1
                                    114 	.globl _P0_0
                                    115 	.globl _B
                                    116 	.globl _A
                                    117 	.globl _ACC
                                    118 	.globl _PSW
                                    119 	.globl _TH2
                                    120 	.globl _TL2
                                    121 	.globl _RCAP2H
                                    122 	.globl _RCAP2L
                                    123 	.globl _T2MOD
                                    124 	.globl _T2CON
                                    125 	.globl _IP
                                    126 	.globl _P3
                                    127 	.globl _IE
                                    128 	.globl _P2
                                    129 	.globl _SBUF
                                    130 	.globl _SCON
                                    131 	.globl _P1
                                    132 	.globl _TH1
                                    133 	.globl _TH0
                                    134 	.globl _TL1
                                    135 	.globl _TL0
                                    136 	.globl _TMOD
                                    137 	.globl _TCON
                                    138 	.globl _PCON
                                    139 	.globl _DPH
                                    140 	.globl _DPL
                                    141 	.globl _SP
                                    142 	.globl _P0
                                    143 ;--------------------------------------------------------
                                    144 ; special function registers
                                    145 ;--------------------------------------------------------
                                    146 	.area RSEG    (ABS,DATA)
      000000                        147 	.org 0x0000
                           000080   148 _P0	=	0x0080
                           000081   149 _SP	=	0x0081
                           000082   150 _DPL	=	0x0082
                           000083   151 _DPH	=	0x0083
                           000087   152 _PCON	=	0x0087
                           000088   153 _TCON	=	0x0088
                           000089   154 _TMOD	=	0x0089
                           00008A   155 _TL0	=	0x008a
                           00008B   156 _TL1	=	0x008b
                           00008C   157 _TH0	=	0x008c
                           00008D   158 _TH1	=	0x008d
                           000090   159 _P1	=	0x0090
                           000098   160 _SCON	=	0x0098
                           000099   161 _SBUF	=	0x0099
                           0000A0   162 _P2	=	0x00a0
                           0000A8   163 _IE	=	0x00a8
                           0000B0   164 _P3	=	0x00b0
                           0000B8   165 _IP	=	0x00b8
                           0000C8   166 _T2CON	=	0x00c8
                           0000C9   167 _T2MOD	=	0x00c9
                           0000CA   168 _RCAP2L	=	0x00ca
                           0000CB   169 _RCAP2H	=	0x00cb
                           0000CC   170 _TL2	=	0x00cc
                           0000CD   171 _TH2	=	0x00cd
                           0000D0   172 _PSW	=	0x00d0
                           0000E0   173 _ACC	=	0x00e0
                           0000E0   174 _A	=	0x00e0
                           0000F0   175 _B	=	0x00f0
                                    176 ;--------------------------------------------------------
                                    177 ; special function bits
                                    178 ;--------------------------------------------------------
                                    179 	.area RSEG    (ABS,DATA)
      000000                        180 	.org 0x0000
                           000080   181 _P0_0	=	0x0080
                           000081   182 _P0_1	=	0x0081
                           000082   183 _P0_2	=	0x0082
                           000083   184 _P0_3	=	0x0083
                           000084   185 _P0_4	=	0x0084
                           000085   186 _P0_5	=	0x0085
                           000086   187 _P0_6	=	0x0086
                           000087   188 _P0_7	=	0x0087
                           000088   189 _IT0	=	0x0088
                           000089   190 _IE0	=	0x0089
                           00008A   191 _IT1	=	0x008a
                           00008B   192 _IE1	=	0x008b
                           00008C   193 _TR0	=	0x008c
                           00008D   194 _TF0	=	0x008d
                           00008E   195 _TR1	=	0x008e
                           00008F   196 _TF1	=	0x008f
                           000090   197 _P1_0	=	0x0090
                           000091   198 _P1_1	=	0x0091
                           000092   199 _P1_2	=	0x0092
                           000093   200 _P1_3	=	0x0093
                           000094   201 _P1_4	=	0x0094
                           000095   202 _P1_5	=	0x0095
                           000096   203 _P1_6	=	0x0096
                           000097   204 _P1_7	=	0x0097
                           000090   205 _T2	=	0x0090
                           000091   206 _T2EX	=	0x0091
                           000098   207 _RI	=	0x0098
                           000099   208 _TI	=	0x0099
                           00009A   209 _RB8	=	0x009a
                           00009B   210 _TB8	=	0x009b
                           00009C   211 _REN	=	0x009c
                           00009D   212 _SM2	=	0x009d
                           00009E   213 _SM1	=	0x009e
                           00009F   214 _SM0	=	0x009f
                           0000A0   215 _P2_0	=	0x00a0
                           0000A1   216 _P2_1	=	0x00a1
                           0000A2   217 _P2_2	=	0x00a2
                           0000A3   218 _P2_3	=	0x00a3
                           0000A4   219 _P2_4	=	0x00a4
                           0000A5   220 _P2_5	=	0x00a5
                           0000A6   221 _P2_6	=	0x00a6
                           0000A7   222 _P2_7	=	0x00a7
                           0000A8   223 _EX0	=	0x00a8
                           0000A9   224 _ET0	=	0x00a9
                           0000AA   225 _EX1	=	0x00aa
                           0000AB   226 _ET1	=	0x00ab
                           0000AC   227 _ES	=	0x00ac
                           0000AD   228 _ET2	=	0x00ad
                           0000AF   229 _EA	=	0x00af
                           0000B0   230 _P3_0	=	0x00b0
                           0000B1   231 _P3_1	=	0x00b1
                           0000B2   232 _P3_2	=	0x00b2
                           0000B3   233 _P3_3	=	0x00b3
                           0000B4   234 _P3_4	=	0x00b4
                           0000B5   235 _P3_5	=	0x00b5
                           0000B6   236 _P3_6	=	0x00b6
                           0000B7   237 _P3_7	=	0x00b7
                           0000B0   238 _RXD	=	0x00b0
                           0000B1   239 _TXD	=	0x00b1
                           0000B2   240 _INT0	=	0x00b2
                           0000B3   241 _INT1	=	0x00b3
                           0000B4   242 _T0	=	0x00b4
                           0000B5   243 _T1	=	0x00b5
                           0000B6   244 _WR	=	0x00b6
                           0000B7   245 _RD	=	0x00b7
                           0000B8   246 _PX0	=	0x00b8
                           0000B9   247 _PT0	=	0x00b9
                           0000BA   248 _PX1	=	0x00ba
                           0000BB   249 _PT1	=	0x00bb
                           0000BC   250 _PS	=	0x00bc
                           0000BD   251 _PT2	=	0x00bd
                           0000C8   252 _T2CON_0	=	0x00c8
                           0000C9   253 _T2CON_1	=	0x00c9
                           0000CA   254 _T2CON_2	=	0x00ca
                           0000CB   255 _T2CON_3	=	0x00cb
                           0000CC   256 _T2CON_4	=	0x00cc
                           0000CD   257 _T2CON_5	=	0x00cd
                           0000CE   258 _T2CON_6	=	0x00ce
                           0000CF   259 _T2CON_7	=	0x00cf
                           0000C8   260 _CP_RL2	=	0x00c8
                           0000C9   261 _C_T2	=	0x00c9
                           0000CA   262 _TR2	=	0x00ca
                           0000CB   263 _EXEN2	=	0x00cb
                           0000CC   264 _TCLK	=	0x00cc
                           0000CD   265 _RCLK	=	0x00cd
                           0000CE   266 _EXF2	=	0x00ce
                           0000CF   267 _TF2	=	0x00cf
                           0000D0   268 _P	=	0x00d0
                           0000D1   269 _FL	=	0x00d1
                           0000D2   270 _OV	=	0x00d2
                           0000D3   271 _RS0	=	0x00d3
                           0000D4   272 _RS1	=	0x00d4
                           0000D5   273 _F0	=	0x00d5
                           0000D6   274 _AC	=	0x00d6
                           0000D7   275 _CY	=	0x00d7
                                    276 ;--------------------------------------------------------
                                    277 ; overlayable register banks
                                    278 ;--------------------------------------------------------
                                    279 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        280 	.ds 8
                                    281 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        282 	.ds 8
                                    283 ;--------------------------------------------------------
                                    284 ; overlayable bit register bank
                                    285 ;--------------------------------------------------------
                                    286 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        287 bits:
      000020                        288 	.ds 1
                           008000   289 	b0 = bits[0]
                           008100   290 	b1 = bits[1]
                           008200   291 	b2 = bits[2]
                           008300   292 	b3 = bits[3]
                           008400   293 	b4 = bits[4]
                           008500   294 	b5 = bits[5]
                           008600   295 	b6 = bits[6]
                           008700   296 	b7 = bits[7]
                                    297 ;--------------------------------------------------------
                                    298 ; internal ram data
                                    299 ;--------------------------------------------------------
                                    300 	.area DSEG    (DATA)
                                    301 ;--------------------------------------------------------
                                    302 ; overlayable items in internal ram 
                                    303 ;--------------------------------------------------------
                                    304 ;--------------------------------------------------------
                                    305 ; Stack segment in internal ram 
                                    306 ;--------------------------------------------------------
                                    307 	.area	SSEG
      00004B                        308 __start__stack:
      00004B                        309 	.ds	1
                                    310 
                                    311 ;--------------------------------------------------------
                                    312 ; indirectly addressable internal ram data
                                    313 ;--------------------------------------------------------
                                    314 	.area ISEG    (DATA)
      000021                        315 _digits:
      000021                        316 	.ds 16
      000031                        317 _i0:
      000031                        318 	.ds 1
      000032                        319 _i1:
      000032                        320 	.ds 1
      000033                        321 _x:
      000033                        322 	.ds 2
      000035                        323 _y:
      000035                        324 	.ds 2
      000037                        325 _j:
      000037                        326 	.ds 2
      000039                        327 _c:
      000039                        328 	.ds 2
      00003B                        329 _bstep:
      00003B                        330 	.ds 1
      00003C                        331 _n:
      00003C                        332 	.ds 1
      00003D                        333 _fixed:
      00003D                        334 	.ds 1
      00003E                        335 _cycle2:
      00003E                        336 	.ds 1
      00003F                        337 _x1:
      00003F                        338 	.ds 2
      000041                        339 _y1:
      000041                        340 	.ds 2
      000043                        341 _generation:
      000043                        342 	.ds 4
      000047                        343 _busy:
      000047                        344 	.ds 4
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
      008000                        362 _pu:
      008000                        363 	.ds 2048
      008800                        364 _u:
      008800                        365 	.ds 2048
      009000                        366 _nu:
      009000                        367 	.ds 2048
                                    368 ;--------------------------------------------------------
                                    369 ; absolute external ram data
                                    370 ;--------------------------------------------------------
                                    371 	.area XABS    (ABS,XDATA)
                                    372 ;--------------------------------------------------------
                                    373 ; external initialized ram data
                                    374 ;--------------------------------------------------------
                                    375 	.area XISEG   (XDATA)
                                    376 	.area HOME    (CODE)
                                    377 	.area GSINIT0 (CODE)
                                    378 	.area GSINIT1 (CODE)
                                    379 	.area GSINIT2 (CODE)
                                    380 	.area GSINIT3 (CODE)
                                    381 	.area GSINIT4 (CODE)
                                    382 	.area GSINIT5 (CODE)
                                    383 	.area GSINIT  (CODE)
                                    384 	.area GSFINAL (CODE)
                                    385 	.area CSEG    (CODE)
                                    386 ;--------------------------------------------------------
                                    387 ; interrupt vector 
                                    388 ;--------------------------------------------------------
                                    389 	.area HOME    (CODE)
      002000                        390 __interrupt_vect:
      002000 02 20 19         [24]  391 	ljmp	__sdcc_gsinit_startup
      002003 02 20 D3         [24]  392 	ljmp	_int0
      002006                        393 	.ds	5
      00200B 32               [24]  394 	reti
      00200C                        395 	.ds	7
      002013 02 20 DF         [24]  396 	ljmp	_int1
                                    397 ;--------------------------------------------------------
                                    398 ; global & static initialisations
                                    399 ;--------------------------------------------------------
                                    400 	.area HOME    (CODE)
                                    401 	.area GSINIT  (CODE)
                                    402 	.area GSFINAL (CODE)
                                    403 	.area GSINIT  (CODE)
                                    404 	.globl __sdcc_gsinit_startup
                                    405 	.globl __sdcc_program_startup
                                    406 	.globl __start__stack
                                    407 	.globl __mcs51_genXINIT
                                    408 	.globl __mcs51_genXRAMCLEAR
                                    409 	.globl __mcs51_genRAMCLEAR
                                    410 ;	life.c:25: __idata static const char digits[16] = {
      002072 78 21            [12]  411 	mov	r0,#_digits
      002074 76 30            [12]  412 	mov	@r0,#0x30
      002076 78 22            [12]  413 	mov	r0,#(_digits + 0x0001)
      002078 76 31            [12]  414 	mov	@r0,#0x31
      00207A 78 23            [12]  415 	mov	r0,#(_digits + 0x0002)
      00207C 76 32            [12]  416 	mov	@r0,#0x32
      00207E 78 24            [12]  417 	mov	r0,#(_digits + 0x0003)
      002080 76 33            [12]  418 	mov	@r0,#0x33
      002082 78 25            [12]  419 	mov	r0,#(_digits + 0x0004)
      002084 76 34            [12]  420 	mov	@r0,#0x34
      002086 78 26            [12]  421 	mov	r0,#(_digits + 0x0005)
      002088 76 35            [12]  422 	mov	@r0,#0x35
      00208A 78 27            [12]  423 	mov	r0,#(_digits + 0x0006)
      00208C 76 36            [12]  424 	mov	@r0,#0x36
      00208E 78 28            [12]  425 	mov	r0,#(_digits + 0x0007)
      002090 76 37            [12]  426 	mov	@r0,#0x37
      002092 78 29            [12]  427 	mov	r0,#(_digits + 0x0008)
      002094 76 38            [12]  428 	mov	@r0,#0x38
      002096 78 2A            [12]  429 	mov	r0,#(_digits + 0x0009)
      002098 76 39            [12]  430 	mov	@r0,#0x39
      00209A 78 2B            [12]  431 	mov	r0,#(_digits + 0x000a)
      00209C 76 41            [12]  432 	mov	@r0,#0x41
      00209E 78 2C            [12]  433 	mov	r0,#(_digits + 0x000b)
      0020A0 76 42            [12]  434 	mov	@r0,#0x42
      0020A2 78 2D            [12]  435 	mov	r0,#(_digits + 0x000c)
      0020A4 76 43            [12]  436 	mov	@r0,#0x43
      0020A6 78 2E            [12]  437 	mov	r0,#(_digits + 0x000d)
      0020A8 76 44            [12]  438 	mov	@r0,#0x44
      0020AA 78 2F            [12]  439 	mov	r0,#(_digits + 0x000e)
      0020AC 76 45            [12]  440 	mov	@r0,#0x45
      0020AE 78 30            [12]  441 	mov	r0,#(_digits + 0x000f)
      0020B0 76 46            [12]  442 	mov	@r0,#0x46
                                    443 ;	life.c:153: __idata static const char busy[4] = { '\\', '|', '/', '-' };
      0020B2 78 47            [12]  444 	mov	r0,#_busy
      0020B4 76 5C            [12]  445 	mov	@r0,#0x5c
      0020B6 78 48            [12]  446 	mov	r0,#(_busy + 0x0001)
      0020B8 76 7C            [12]  447 	mov	@r0,#0x7c
      0020BA 78 49            [12]  448 	mov	r0,#(_busy + 0x0002)
      0020BC 76 2F            [12]  449 	mov	@r0,#0x2f
      0020BE 78 4A            [12]  450 	mov	r0,#(_busy + 0x0003)
      0020C0 76 2D            [12]  451 	mov	@r0,#0x2d
                                    452 	.area GSFINAL (CODE)
      0020C2 02 20 16         [24]  453 	ljmp	__sdcc_program_startup
                                    454 ;--------------------------------------------------------
                                    455 ; Home
                                    456 ;--------------------------------------------------------
                                    457 	.area HOME    (CODE)
                                    458 	.area HOME    (CODE)
      002016                        459 __sdcc_program_startup:
      002016 02 22 E8         [24]  460 	ljmp	_main
                                    461 ;	return from main will return to caller
                                    462 ;--------------------------------------------------------
                                    463 ; code
                                    464 ;--------------------------------------------------------
                                    465 	.area CSEG    (CODE)
                                    466 ;------------------------------------------------------------
                                    467 ;Allocation info for local variables in function 'putchar'
                                    468 ;------------------------------------------------------------
                                    469 ;c                         Allocated to registers 
                                    470 ;------------------------------------------------------------
                                    471 ;	life.c:8: int putchar(int c) __naked {
                                    472 ;	-----------------------------------------
                                    473 ;	 function putchar
                                    474 ;	-----------------------------------------
      0020C5                        475 _putchar:
                                    476 ;	naked function: no prologue.
                                    477 ;	life.c:13: __endasm;
      0020C5 E5 82            [12]  478 	mov	a, dpl
      0020C7 02 00 30         [24]  479 	ljmp	0x0030
                                    480 ;	life.c:14: }
                                    481 ;	naked function: no epilogue.
                                    482 ;------------------------------------------------------------
                                    483 ;Allocation info for local variables in function 'getchar'
                                    484 ;------------------------------------------------------------
                                    485 ;	life.c:16: int getchar(void) __naked {
                                    486 ;	-----------------------------------------
                                    487 ;	 function getchar
                                    488 ;	-----------------------------------------
      0020CA                        489 _getchar:
                                    490 ;	naked function: no prologue.
                                    491 ;	life.c:22: __endasm;
      0020CA 12 00 32         [24]  492 	lcall	0x0032
      0020CD F5 82            [12]  493 	mov	dpl, a
      0020CF 75 83 00         [24]  494 	mov	dph, #0
      0020D2 22               [24]  495 	ret
                                    496 ;	life.c:23: }
                                    497 ;	naked function: no epilogue.
                                    498 ;------------------------------------------------------------
                                    499 ;Allocation info for local variables in function 'int0'
                                    500 ;------------------------------------------------------------
                                    501 ;	life.c:54: void int0(void) __interrupt IE0_VECTOR __using 1 {
                                    502 ;	-----------------------------------------
                                    503 ;	 function int0
                                    504 ;	-----------------------------------------
      0020D3                        505 _int0:
                           00000F   506 	ar7 = 0x0f
                           00000E   507 	ar6 = 0x0e
                           00000D   508 	ar5 = 0x0d
                           00000C   509 	ar4 = 0x0c
                           00000B   510 	ar3 = 0x0b
                           00000A   511 	ar2 = 0x0a
                           000009   512 	ar1 = 0x09
                           000008   513 	ar0 = 0x08
      0020D3 C0 D0            [24]  514 	push	psw
      0020D5 75 D0 08         [24]  515 	mov	psw,#0x08
                                    516 ;	life.c:55: i0 = 1;
      0020D8 78 31            [12]  517 	mov	r0,#_i0
      0020DA 76 01            [12]  518 	mov	@r0,#0x01
                                    519 ;	life.c:56: }
      0020DC D0 D0            [24]  520 	pop	psw
      0020DE 32               [24]  521 	reti
                                    522 ;	eliminated unneeded push/pop dpl
                                    523 ;	eliminated unneeded push/pop dph
                                    524 ;	eliminated unneeded push/pop b
                                    525 ;	eliminated unneeded push/pop acc
                                    526 ;------------------------------------------------------------
                                    527 ;Allocation info for local variables in function 'int1'
                                    528 ;------------------------------------------------------------
                                    529 ;	life.c:58: void int1(void) __interrupt IE1_VECTOR __using 1 {
                                    530 ;	-----------------------------------------
                                    531 ;	 function int1
                                    532 ;	-----------------------------------------
      0020DF                        533 _int1:
      0020DF C0 D0            [24]  534 	push	psw
      0020E1 75 D0 08         [24]  535 	mov	psw,#0x08
                                    536 ;	life.c:59: i1 = 1;
      0020E4 78 32            [12]  537 	mov	r0,#_i1
      0020E6 76 01            [12]  538 	mov	@r0,#0x01
                                    539 ;	life.c:60: }
      0020E8 D0 D0            [24]  540 	pop	psw
      0020EA 32               [24]  541 	reti
                                    542 ;	eliminated unneeded push/pop dpl
                                    543 ;	eliminated unneeded push/pop dph
                                    544 ;	eliminated unneeded push/pop b
                                    545 ;	eliminated unneeded push/pop acc
                                    546 ;------------------------------------------------------------
                                    547 ;Allocation info for local variables in function 'show'
                                    548 ;------------------------------------------------------------
                                    549 ;hdr                       Allocated to registers r7 
                                    550 ;__1966080005              Allocated to registers 
                                    551 ;s                         Allocated to registers r5 r6 r7 
                                    552 ;__1310720001              Allocated to registers r6 r7 
                                    553 ;a                         Allocated to registers 
                                    554 ;__1310720003              Allocated to registers r6 r7 
                                    555 ;a                         Allocated to registers 
                                    556 ;__1966080008              Allocated to registers 
                                    557 ;s                         Allocated to registers r5 r6 r7 
                                    558 ;__2621440011              Allocated to registers 
                                    559 ;s                         Allocated to registers r5 r6 r7 
                                    560 ;------------------------------------------------------------
                                    561 ;	life.c:96: void show(char hdr) {
                                    562 ;	-----------------------------------------
                                    563 ;	 function show
                                    564 ;	-----------------------------------------
      0020EB                        565 _show:
                           000007   566 	ar7 = 0x07
                           000006   567 	ar6 = 0x06
                           000005   568 	ar5 = 0x05
                           000004   569 	ar4 = 0x04
                           000003   570 	ar3 = 0x03
                           000002   571 	ar2 = 0x02
                           000001   572 	ar1 = 0x01
                           000000   573 	ar0 = 0x00
                                    574 ;	life.c:97: if (hdr) {
      0020EB E5 82            [12]  575 	mov	a,dpl
      0020ED FF               [12]  576 	mov	r7,a
      0020EE 70 03            [24]  577 	jnz	00190$
      0020F0 02 22 43         [24]  578 	ljmp	00102$
      0020F3                        579 00190$:
                                    580 ;	life.c:98: printstr("\033[2J\033[m");
      0020F3 7D F7            [12]  581 	mov	r5,#___str_0
      0020F5 7E 2C            [12]  582 	mov	r6,#(___str_0 >> 8)
      0020F7 7F 80            [12]  583 	mov	r7,#0x80
                                    584 ;	life.c:49: return;
      0020F9                        585 00121$:
                                    586 ;	life.c:47: for (; *s; s++) putchar(*s);
      0020F9 8D 82            [24]  587 	mov	dpl,r5
      0020FB 8E 83            [24]  588 	mov	dph,r6
      0020FD 8F F0            [24]  589 	mov	b,r7
      0020FF 12 2B CF         [24]  590 	lcall	__gptrget
      002102 FC               [12]  591 	mov	r4,a
      002103 60 10            [24]  592 	jz	00109$
      002105 7B 00            [12]  593 	mov	r3,#0x00
      002107 8C 82            [24]  594 	mov	dpl,r4
      002109 8B 83            [24]  595 	mov	dph,r3
      00210B 12 20 C5         [24]  596 	lcall	_putchar
      00210E 0D               [12]  597 	inc	r5
                                    598 ;	life.c:98: printstr("\033[2J\033[m");
      00210F BD 00 E7         [24]  599 	cjne	r5,#0x00,00121$
      002112 0E               [12]  600 	inc	r6
      002113 80 E4            [24]  601 	sjmp	00121$
      002115                        602 00109$:
                                    603 ;	life.c:90: print16x(generation[1]);
      002115 78 45            [12]  604 	mov	r0,#(_generation + 0x0002)
      002117 86 06            [24]  605 	mov	ar6,@r0
      002119 08               [12]  606 	inc	r0
                                    607 ;	life.c:38: putchar(digits[(a >> 12) & 0xf]);
      00211A E6               [12]  608 	mov	a,@r0
      00211B FF               [12]  609 	mov	r7,a
      00211C C4               [12]  610 	swap	a
      00211D 54 0F            [12]  611 	anl	a,#0x0f
      00211F 30 E3 02         [24]  612 	jnb	acc.3,00193$
      002122 44 F0            [12]  613 	orl	a,#0xf0
      002124                        614 00193$:
      002124 FC               [12]  615 	mov	r4,a
      002125 33               [12]  616 	rlc	a
      002126 95 E0            [12]  617 	subb	a,acc
      002128 53 04 0F         [24]  618 	anl	ar4,#0x0f
      00212B EC               [12]  619 	mov	a,r4
      00212C 24 21            [12]  620 	add	a,#_digits
      00212E F9               [12]  621 	mov	r1,a
      00212F 87 05            [24]  622 	mov	ar5,@r1
      002131 7C 00            [12]  623 	mov	r4,#0x00
      002133 8D 82            [24]  624 	mov	dpl,r5
      002135 8C 83            [24]  625 	mov	dph,r4
      002137 12 20 C5         [24]  626 	lcall	_putchar
                                    627 ;	life.c:39: putchar(digits[(a >> 8) & 0xf]);
      00213A 8F 05            [24]  628 	mov	ar5,r7
      00213C 53 05 0F         [24]  629 	anl	ar5,#0x0f
      00213F ED               [12]  630 	mov	a,r5
      002140 24 21            [12]  631 	add	a,#_digits
      002142 F9               [12]  632 	mov	r1,a
      002143 87 05            [24]  633 	mov	ar5,@r1
      002145 7C 00            [12]  634 	mov	r4,#0x00
      002147 8D 82            [24]  635 	mov	dpl,r5
      002149 8C 83            [24]  636 	mov	dph,r4
      00214B 12 20 C5         [24]  637 	lcall	_putchar
                                    638 ;	life.c:40: putchar(digits[(a >> 4) & 0xf]);
      00214E 8E 04            [24]  639 	mov	ar4,r6
      002150 EF               [12]  640 	mov	a,r7
      002151 C4               [12]  641 	swap	a
      002152 CC               [12]  642 	xch	a,r4
      002153 C4               [12]  643 	swap	a
      002154 54 0F            [12]  644 	anl	a,#0x0f
      002156 6C               [12]  645 	xrl	a,r4
      002157 CC               [12]  646 	xch	a,r4
      002158 54 0F            [12]  647 	anl	a,#0x0f
      00215A CC               [12]  648 	xch	a,r4
      00215B 6C               [12]  649 	xrl	a,r4
      00215C CC               [12]  650 	xch	a,r4
      00215D 30 E3 02         [24]  651 	jnb	acc.3,00194$
      002160 44 F0            [12]  652 	orl	a,#0xf0
      002162                        653 00194$:
      002162 53 04 0F         [24]  654 	anl	ar4,#0x0f
      002165 EC               [12]  655 	mov	a,r4
      002166 24 21            [12]  656 	add	a,#_digits
      002168 F9               [12]  657 	mov	r1,a
      002169 87 05            [24]  658 	mov	ar5,@r1
      00216B 7C 00            [12]  659 	mov	r4,#0x00
      00216D 8D 82            [24]  660 	mov	dpl,r5
      00216F 8C 83            [24]  661 	mov	dph,r4
      002171 12 20 C5         [24]  662 	lcall	_putchar
                                    663 ;	life.c:41: putchar(digits[a & 0xf]);
      002174 53 06 0F         [24]  664 	anl	ar6,#0x0f
      002177 EE               [12]  665 	mov	a,r6
      002178 24 21            [12]  666 	add	a,#_digits
      00217A F9               [12]  667 	mov	r1,a
      00217B 87 07            [24]  668 	mov	ar7,@r1
      00217D 7E 00            [12]  669 	mov	r6,#0x00
      00217F 8F 82            [24]  670 	mov	dpl,r7
      002181 8E 83            [24]  671 	mov	dph,r6
      002183 12 20 C5         [24]  672 	lcall	_putchar
                                    673 ;	life.c:91: print16x(generation[0]);
      002186 78 43            [12]  674 	mov	r0,#_generation
      002188 86 06            [24]  675 	mov	ar6,@r0
      00218A 08               [12]  676 	inc	r0
                                    677 ;	life.c:38: putchar(digits[(a >> 12) & 0xf]);
      00218B E6               [12]  678 	mov	a,@r0
      00218C FF               [12]  679 	mov	r7,a
      00218D C4               [12]  680 	swap	a
      00218E 54 0F            [12]  681 	anl	a,#0x0f
      002190 30 E3 02         [24]  682 	jnb	acc.3,00195$
      002193 44 F0            [12]  683 	orl	a,#0xf0
      002195                        684 00195$:
      002195 FC               [12]  685 	mov	r4,a
      002196 33               [12]  686 	rlc	a
      002197 95 E0            [12]  687 	subb	a,acc
      002199 53 04 0F         [24]  688 	anl	ar4,#0x0f
      00219C EC               [12]  689 	mov	a,r4
      00219D 24 21            [12]  690 	add	a,#_digits
      00219F F9               [12]  691 	mov	r1,a
      0021A0 87 05            [24]  692 	mov	ar5,@r1
      0021A2 7C 00            [12]  693 	mov	r4,#0x00
      0021A4 8D 82            [24]  694 	mov	dpl,r5
      0021A6 8C 83            [24]  695 	mov	dph,r4
      0021A8 12 20 C5         [24]  696 	lcall	_putchar
                                    697 ;	life.c:39: putchar(digits[(a >> 8) & 0xf]);
      0021AB 8F 05            [24]  698 	mov	ar5,r7
      0021AD 53 05 0F         [24]  699 	anl	ar5,#0x0f
      0021B0 ED               [12]  700 	mov	a,r5
      0021B1 24 21            [12]  701 	add	a,#_digits
      0021B3 F9               [12]  702 	mov	r1,a
      0021B4 87 05            [24]  703 	mov	ar5,@r1
      0021B6 7C 00            [12]  704 	mov	r4,#0x00
      0021B8 8D 82            [24]  705 	mov	dpl,r5
      0021BA 8C 83            [24]  706 	mov	dph,r4
      0021BC 12 20 C5         [24]  707 	lcall	_putchar
                                    708 ;	life.c:40: putchar(digits[(a >> 4) & 0xf]);
      0021BF 8E 04            [24]  709 	mov	ar4,r6
      0021C1 EF               [12]  710 	mov	a,r7
      0021C2 C4               [12]  711 	swap	a
      0021C3 CC               [12]  712 	xch	a,r4
      0021C4 C4               [12]  713 	swap	a
      0021C5 54 0F            [12]  714 	anl	a,#0x0f
      0021C7 6C               [12]  715 	xrl	a,r4
      0021C8 CC               [12]  716 	xch	a,r4
      0021C9 54 0F            [12]  717 	anl	a,#0x0f
      0021CB CC               [12]  718 	xch	a,r4
      0021CC 6C               [12]  719 	xrl	a,r4
      0021CD CC               [12]  720 	xch	a,r4
      0021CE 30 E3 02         [24]  721 	jnb	acc.3,00196$
      0021D1 44 F0            [12]  722 	orl	a,#0xf0
      0021D3                        723 00196$:
      0021D3 53 04 0F         [24]  724 	anl	ar4,#0x0f
      0021D6 EC               [12]  725 	mov	a,r4
      0021D7 24 21            [12]  726 	add	a,#_digits
      0021D9 F9               [12]  727 	mov	r1,a
      0021DA 87 05            [24]  728 	mov	ar5,@r1
      0021DC 7C 00            [12]  729 	mov	r4,#0x00
      0021DE 8D 82            [24]  730 	mov	dpl,r5
      0021E0 8C 83            [24]  731 	mov	dph,r4
      0021E2 12 20 C5         [24]  732 	lcall	_putchar
                                    733 ;	life.c:41: putchar(digits[a & 0xf]);
      0021E5 53 06 0F         [24]  734 	anl	ar6,#0x0f
      0021E8 EE               [12]  735 	mov	a,r6
      0021E9 24 21            [12]  736 	add	a,#_digits
      0021EB F9               [12]  737 	mov	r1,a
      0021EC 87 07            [24]  738 	mov	ar7,@r1
      0021EE 7E 00            [12]  739 	mov	r6,#0x00
      0021F0 8F 82            [24]  740 	mov	dpl,r7
      0021F2 8E 83            [24]  741 	mov	dph,r6
      0021F4 12 20 C5         [24]  742 	lcall	_putchar
                                    743 ;	life.c:100: printstr("\r\n");
      0021F7 7D FF            [12]  744 	mov	r5,#___str_1
      0021F9 7E 2C            [12]  745 	mov	r6,#(___str_1 >> 8)
      0021FB 7F 80            [12]  746 	mov	r7,#0x80
                                    747 ;	life.c:49: return;
      0021FD                        748 00124$:
                                    749 ;	life.c:47: for (; *s; s++) putchar(*s);
      0021FD 8D 82            [24]  750 	mov	dpl,r5
      0021FF 8E 83            [24]  751 	mov	dph,r6
      002201 8F F0            [24]  752 	mov	b,r7
      002203 12 2B CF         [24]  753 	lcall	__gptrget
      002206 FC               [12]  754 	mov	r4,a
      002207 60 10            [24]  755 	jz	00114$
      002209 7B 00            [12]  756 	mov	r3,#0x00
      00220B 8C 82            [24]  757 	mov	dpl,r4
      00220D 8B 83            [24]  758 	mov	dph,r3
      00220F 12 20 C5         [24]  759 	lcall	_putchar
      002212 0D               [12]  760 	inc	r5
                                    761 ;	life.c:100: printstr("\r\n");
      002213 BD 00 E7         [24]  762 	cjne	r5,#0x00,00124$
      002216 0E               [12]  763 	inc	r6
      002217 80 E4            [24]  764 	sjmp	00124$
      002219                        765 00114$:
                                    766 ;	life.c:83: generation[0]++;
      002219 78 43            [12]  767 	mov	r0,#_generation
      00221B 86 06            [24]  768 	mov	ar6,@r0
      00221D 08               [12]  769 	inc	r0
      00221E 86 07            [24]  770 	mov	ar7,@r0
      002220 0E               [12]  771 	inc	r6
      002221 BE 00 01         [24]  772 	cjne	r6,#0x00,00199$
      002224 0F               [12]  773 	inc	r7
      002225                        774 00199$:
      002225 78 43            [12]  775 	mov	r0,#_generation
      002227 A6 06            [24]  776 	mov	@r0,ar6
      002229 08               [12]  777 	inc	r0
      00222A A6 07            [24]  778 	mov	@r0,ar7
                                    779 ;	life.c:84: if (!generation[0]) generation[1]++;
      00222C EE               [12]  780 	mov	a,r6
      00222D 4F               [12]  781 	orl	a,r7
      00222E 70 13            [24]  782 	jnz	00102$
      002230 78 45            [12]  783 	mov	r0,#(_generation + 0x0002)
      002232 86 06            [24]  784 	mov	ar6,@r0
      002234 08               [12]  785 	inc	r0
      002235 86 07            [24]  786 	mov	ar7,@r0
      002237 0E               [12]  787 	inc	r6
      002238 BE 00 01         [24]  788 	cjne	r6,#0x00,00201$
      00223B 0F               [12]  789 	inc	r7
      00223C                        790 00201$:
      00223C 78 45            [12]  791 	mov	r0,#(_generation + 0x0002)
      00223E A6 06            [24]  792 	mov	@r0,ar6
      002240 08               [12]  793 	inc	r0
      002241 A6 07            [24]  794 	mov	@r0,ar7
                                    795 ;	life.c:101: updategen();
      002243                        796 00102$:
                                    797 ;	life.c:104: for (x = 0; x < W; x++) {
      002243 78 33            [12]  798 	mov	r0,#_x
      002245 E4               [12]  799 	clr	a
      002246 F6               [12]  800 	mov	@r0,a
      002247 08               [12]  801 	inc	r0
      002248 F6               [12]  802 	mov	@r0,a
      002249                        803 00131$:
                                    804 ;	life.c:105: for (y = 0; y < H; y++)
      002249 78 35            [12]  805 	mov	r0,#_y
      00224B E4               [12]  806 	clr	a
      00224C F6               [12]  807 	mov	@r0,a
      00224D 08               [12]  808 	inc	r0
      00224E F6               [12]  809 	mov	@r0,a
      00224F                        810 00126$:
                                    811 ;	life.c:106: if (u[A2D(W, y, x)]) {
      00224F 78 35            [12]  812 	mov	r0,#_y
      002251 86 06            [24]  813 	mov	ar6,@r0
      002253 08               [12]  814 	inc	r0
      002254 E6               [12]  815 	mov	a,@r0
      002255 C4               [12]  816 	swap	a
      002256 23               [12]  817 	rl	a
      002257 54 E0            [12]  818 	anl	a,#0xe0
      002259 CE               [12]  819 	xch	a,r6
      00225A C4               [12]  820 	swap	a
      00225B 23               [12]  821 	rl	a
      00225C CE               [12]  822 	xch	a,r6
      00225D 6E               [12]  823 	xrl	a,r6
      00225E CE               [12]  824 	xch	a,r6
      00225F 54 E0            [12]  825 	anl	a,#0xe0
      002261 CE               [12]  826 	xch	a,r6
      002262 6E               [12]  827 	xrl	a,r6
      002263 FF               [12]  828 	mov	r7,a
      002264 78 33            [12]  829 	mov	r0,#_x
      002266 E6               [12]  830 	mov	a,@r0
      002267 2E               [12]  831 	add	a,r6
      002268 FE               [12]  832 	mov	r6,a
      002269 08               [12]  833 	inc	r0
      00226A E6               [12]  834 	mov	a,@r0
      00226B 3F               [12]  835 	addc	a,r7
      00226C FF               [12]  836 	mov	r7,a
      00226D EE               [12]  837 	mov	a,r6
      00226E 24 00            [12]  838 	add	a,#_u
      002270 FE               [12]  839 	mov	r6,a
      002271 EF               [12]  840 	mov	a,r7
      002272 34 88            [12]  841 	addc	a,#(_u >> 8)
      002274 FF               [12]  842 	mov	r7,a
      002275 8E 82            [24]  843 	mov	dpl,r6
      002277 8F 83            [24]  844 	mov	dph,r7
      002279 E0               [24]  845 	movx	a,@dptr
      00227A 60 0E            [24]  846 	jz	00104$
                                    847 ;	life.c:107: putchar('['); putchar(']');
      00227C 90 00 5B         [24]  848 	mov	dptr,#0x005b
      00227F 12 20 C5         [24]  849 	lcall	_putchar
      002282 90 00 5D         [24]  850 	mov	dptr,#0x005d
      002285 12 20 C5         [24]  851 	lcall	_putchar
      002288 80 0C            [24]  852 	sjmp	00127$
      00228A                        853 00104$:
                                    854 ;	life.c:109: putchar('#'); putchar('#');
      00228A 90 00 23         [24]  855 	mov	dptr,#0x0023
      00228D 12 20 C5         [24]  856 	lcall	_putchar
      002290 90 00 23         [24]  857 	mov	dptr,#0x0023
      002293 12 20 C5         [24]  858 	lcall	_putchar
      002296                        859 00127$:
                                    860 ;	life.c:105: for (y = 0; y < H; y++)
      002296 78 35            [12]  861 	mov	r0,#_y
      002298 06               [12]  862 	inc	@r0
      002299 B6 00 02         [24]  863 	cjne	@r0,#0x00,00203$
      00229C 08               [12]  864 	inc	r0
      00229D 06               [12]  865 	inc	@r0
      00229E                        866 00203$:
      00229E 78 35            [12]  867 	mov	r0,#_y
      0022A0 C3               [12]  868 	clr	c
      0022A1 E6               [12]  869 	mov	a,@r0
      0022A2 94 40            [12]  870 	subb	a,#0x40
      0022A4 08               [12]  871 	inc	r0
      0022A5 E6               [12]  872 	mov	a,@r0
      0022A6 64 80            [12]  873 	xrl	a,#0x80
      0022A8 94 80            [12]  874 	subb	a,#0x80
      0022AA 40 A3            [24]  875 	jc	00126$
                                    876 ;	life.c:111: printstr("\r\n");
      0022AC 7D FF            [12]  877 	mov	r5,#___str_1
      0022AE 7E 2C            [12]  878 	mov	r6,#(___str_1 >> 8)
      0022B0 7F 80            [12]  879 	mov	r7,#0x80
                                    880 ;	life.c:49: return;
      0022B2                        881 00129$:
                                    882 ;	life.c:47: for (; *s; s++) putchar(*s);
      0022B2 8D 82            [24]  883 	mov	dpl,r5
      0022B4 8E 83            [24]  884 	mov	dph,r6
      0022B6 8F F0            [24]  885 	mov	b,r7
      0022B8 12 2B CF         [24]  886 	lcall	__gptrget
      0022BB FC               [12]  887 	mov	r4,a
      0022BC 60 10            [24]  888 	jz	00119$
      0022BE 7B 00            [12]  889 	mov	r3,#0x00
      0022C0 8C 82            [24]  890 	mov	dpl,r4
      0022C2 8B 83            [24]  891 	mov	dph,r3
      0022C4 12 20 C5         [24]  892 	lcall	_putchar
      0022C7 0D               [12]  893 	inc	r5
                                    894 ;	life.c:111: printstr("\r\n");
      0022C8 BD 00 E7         [24]  895 	cjne	r5,#0x00,00129$
      0022CB 0E               [12]  896 	inc	r6
      0022CC 80 E4            [24]  897 	sjmp	00129$
      0022CE                        898 00119$:
                                    899 ;	life.c:104: for (x = 0; x < W; x++) {
      0022CE 78 33            [12]  900 	mov	r0,#_x
      0022D0 06               [12]  901 	inc	@r0
      0022D1 B6 00 02         [24]  902 	cjne	@r0,#0x00,00207$
      0022D4 08               [12]  903 	inc	r0
      0022D5 06               [12]  904 	inc	@r0
      0022D6                        905 00207$:
      0022D6 78 33            [12]  906 	mov	r0,#_x
      0022D8 C3               [12]  907 	clr	c
      0022D9 E6               [12]  908 	mov	a,@r0
      0022DA 94 20            [12]  909 	subb	a,#0x20
      0022DC 08               [12]  910 	inc	r0
      0022DD E6               [12]  911 	mov	a,@r0
      0022DE 64 80            [12]  912 	xrl	a,#0x80
      0022E0 94 80            [12]  913 	subb	a,#0x80
      0022E2 50 03            [24]  914 	jnc	00208$
      0022E4 02 22 49         [24]  915 	ljmp	00131$
      0022E7                        916 00208$:
                                    917 ;	life.c:114: return;
                                    918 ;	life.c:115: }
      0022E7 22               [24]  919 	ret
                                    920 ;------------------------------------------------------------
                                    921 ;Allocation info for local variables in function 'main'
                                    922 ;------------------------------------------------------------
                                    923 ;__2621440019              Allocated to registers 
                                    924 ;s                         Allocated to registers r5 r6 r7 
                                    925 ;__1310720013              Allocated to registers 
                                    926 ;s                         Allocated to registers r5 r6 r7 
                                    927 ;__1310720015              Allocated to registers r6 r7 
                                    928 ;a                         Allocated to registers r4 r5 
                                    929 ;__1310720017              Allocated to registers 
                                    930 ;s                         Allocated to registers r5 r6 r7 
                                    931 ;__2621440023              Allocated to registers 
                                    932 ;s                         Allocated to registers r5 r6 r7 
                                    933 ;__4587520027              Allocated to registers 
                                    934 ;s                         Allocated to registers r5 r6 r7 
                                    935 ;__4587520029              Allocated to registers 
                                    936 ;s                         Allocated to registers r5 r6 r7 
                                    937 ;__4587520031              Allocated to registers 
                                    938 ;s                         Allocated to registers r5 r6 r7 
                                    939 ;__3276800033              Allocated to registers 
                                    940 ;s                         Allocated to registers r5 r6 r7 
                                    941 ;__1310720035              Allocated to registers 
                                    942 ;s                         Allocated to registers r5 r6 r7 
                                    943 ;sloc0                     Allocated to stack - _bp +1
                                    944 ;sloc1                     Allocated to stack - _bp +3
                                    945 ;sloc2                     Allocated to stack - _bp +5
                                    946 ;sloc3                     Allocated to stack - _bp +7
                                    947 ;sloc4                     Allocated to stack - _bp +9
                                    948 ;sloc5                     Allocated to stack - _bp +11
                                    949 ;sloc6                     Allocated to stack - _bp +13
                                    950 ;------------------------------------------------------------
                                    951 ;	life.c:200: void main(void) {
                                    952 ;	-----------------------------------------
                                    953 ;	 function main
                                    954 ;	-----------------------------------------
      0022E8                        955 _main:
      0022E8 C0 10            [24]  956 	push	_bp
      0022EA E5 81            [12]  957 	mov	a,sp
      0022EC F5 10            [12]  958 	mov	_bp,a
      0022EE 24 0E            [12]  959 	add	a,#0x0e
      0022F0 F5 81            [12]  960 	mov	sp,a
                                    961 ;	life.c:201: IT0 = 1;
                                    962 ;	assignBit
      0022F2 D2 88            [12]  963 	setb	_IT0
                                    964 ;	life.c:202: IT1 = 1;
                                    965 ;	assignBit
      0022F4 D2 8A            [12]  966 	setb	_IT1
                                    967 ;	life.c:203: EX0 = 1;
                                    968 ;	assignBit
      0022F6 D2 A8            [12]  969 	setb	_EX0
                                    970 ;	life.c:204: EX1 = 1;
                                    971 ;	assignBit
      0022F8 D2 AA            [12]  972 	setb	_EX1
                                    973 ;	life.c:205: EA = 1;
                                    974 ;	assignBit
      0022FA D2 AF            [12]  975 	setb	_EA
                                    976 ;	life.c:207: for (i0 = 0; !i0; ) {		
      0022FC 78 31            [12]  977 	mov	r0,#_i0
      0022FE 76 00            [12]  978 	mov	@r0,#0x00
      002300                        979 00210$:
                                    980 ;	life.c:208: printstr("\033[2J\033[mINIT\r\n");
      002300 7D 0D            [12]  981 	mov	r5,#___str_4
      002302 7E 2D            [12]  982 	mov	r6,#(___str_4 >> 8)
      002304 7F 80            [12]  983 	mov	r7,#0x80
                                    984 ;	life.c:49: return;
      002306                        985 00175$:
                                    986 ;	life.c:47: for (; *s; s++) putchar(*s);
      002306 8D 82            [24]  987 	mov	dpl,r5
      002308 8E 83            [24]  988 	mov	dph,r6
      00230A 8F F0            [24]  989 	mov	b,r7
      00230C 12 2B CF         [24]  990 	lcall	__gptrget
      00230F FC               [12]  991 	mov	r4,a
      002310 60 10            [24]  992 	jz	00107$
      002312 7B 00            [12]  993 	mov	r3,#0x00
      002314 8C 82            [24]  994 	mov	dpl,r4
      002316 8B 83            [24]  995 	mov	dph,r3
      002318 12 20 C5         [24]  996 	lcall	_putchar
      00231B 0D               [12]  997 	inc	r5
                                    998 ;	life.c:209: while (1) {
      00231C BD 00 E7         [24]  999 	cjne	r5,#0x00,00175$
      00231F 0E               [12] 1000 	inc	r6
      002320 80 E4            [24] 1001 	sjmp	00175$
      002322                       1002 00107$:
                                   1003 ;	life.c:210: c = toupper(getchar());
      002322 12 20 CA         [24] 1004 	lcall	_getchar
      002325 12 2B A8         [24] 1005 	lcall	_toupper
      002328 AE 82            [24] 1006 	mov	r6,dpl
      00232A AF 83            [24] 1007 	mov	r7,dph
      00232C 78 39            [12] 1008 	mov	r0,#_c
      00232E A6 06            [24] 1009 	mov	@r0,ar6
      002330 08               [12] 1010 	inc	r0
      002331 A6 07            [24] 1011 	mov	@r0,ar7
                                   1012 ;	life.c:211: if (i0 || (c == (int)'T')) goto terminate;
      002333 78 31            [12] 1013 	mov	r0,#_i0
      002335 E6               [12] 1014 	mov	a,@r0
      002336 60 03            [24] 1015 	jz	00421$
      002338 02 2A 7B         [24] 1016 	ljmp	00130$
      00233B                       1017 00421$:
      00233B BE 54 06         [24] 1018 	cjne	r6,#0x54,00422$
      00233E BF 00 03         [24] 1019 	cjne	r7,#0x00,00422$
      002341 02 2A 7B         [24] 1020 	ljmp	00130$
      002344                       1021 00422$:
                                   1022 ;	life.c:212: if (c == (int)'L') break;
      002344 BE 4C DB         [24] 1023 	cjne	r6,#0x4c,00107$
      002347 BF 00 D8         [24] 1024 	cjne	r7,#0x00,00107$
                                   1025 ;	life.c:215: reload:
      00234A                       1026 00109$:
                                   1027 ;	life.c:118: memset(u, 0, sizeof (u));
      00234A E4               [12] 1028 	clr	a
      00234B C0 E0            [24] 1029 	push	acc
      00234D 74 08            [12] 1030 	mov	a,#0x08
      00234F C0 E0            [24] 1031 	push	acc
      002351 E4               [12] 1032 	clr	a
      002352 C0 E0            [24] 1033 	push	acc
      002354 90 88 00         [24] 1034 	mov	dptr,#_u
      002357 75 F0 00         [24] 1035 	mov	b,#0x00
      00235A 12 2B 3E         [24] 1036 	lcall	_memset
      00235D 15 81            [12] 1037 	dec	sp
      00235F 15 81            [12] 1038 	dec	sp
      002361 15 81            [12] 1039 	dec	sp
                                   1040 ;	life.c:119: memset(pu, 0, sizeof (pu));
      002363 E4               [12] 1041 	clr	a
      002364 C0 E0            [24] 1042 	push	acc
      002366 74 08            [12] 1043 	mov	a,#0x08
      002368 C0 E0            [24] 1044 	push	acc
      00236A E4               [12] 1045 	clr	a
      00236B C0 E0            [24] 1046 	push	acc
      00236D 90 80 00         [24] 1047 	mov	dptr,#_pu
      002370 75 F0 00         [24] 1048 	mov	b,#0x00
      002373 12 2B 3E         [24] 1049 	lcall	_memset
      002376 15 81            [12] 1050 	dec	sp
      002378 15 81            [12] 1051 	dec	sp
      00237A 15 81            [12] 1052 	dec	sp
                                   1053 ;	life.c:125: j = 0;
      00237C 78 37            [12] 1054 	mov	r0,#_j
      00237E E4               [12] 1055 	clr	a
      00237F F6               [12] 1056 	mov	@r0,a
      002380 08               [12] 1057 	inc	r0
      002381 F6               [12] 1058 	mov	@r0,a
                                   1059 ;	life.c:127: printstr("LOAD <");
      002382 7D 02            [12] 1060 	mov	r5,#___str_2
      002384 7E 2D            [12] 1061 	mov	r6,#(___str_2 >> 8)
      002386 7F 80            [12] 1062 	mov	r7,#0x80
                                   1063 ;	life.c:49: return;
      002388                       1064 00178$:
                                   1065 ;	life.c:47: for (; *s; s++) putchar(*s);
      002388 8D 82            [24] 1066 	mov	dpl,r5
      00238A 8E 83            [24] 1067 	mov	dph,r6
      00238C 8F F0            [24] 1068 	mov	b,r7
      00238E 12 2B CF         [24] 1069 	lcall	__gptrget
      002391 FC               [12] 1070 	mov	r4,a
      002392 60 10            [24] 1071 	jz	00135$
      002394 7B 00            [12] 1072 	mov	r3,#0x00
      002396 8C 82            [24] 1073 	mov	dpl,r4
      002398 8B 83            [24] 1074 	mov	dph,r3
      00239A 12 20 C5         [24] 1075 	lcall	_putchar
      00239D 0D               [12] 1076 	inc	r5
                                   1077 ;	life.c:127: printstr("LOAD <");
      00239E BD 00 E7         [24] 1078 	cjne	r5,#0x00,00178$
      0023A1 0E               [12] 1079 	inc	r6
      0023A2 80 E4            [24] 1080 	sjmp	00178$
      0023A4                       1081 00135$:
                                   1082 ;	life.c:129: for (y = 0; y < H; y++)
      0023A4 78 35            [12] 1083 	mov	r0,#_y
      0023A6 E4               [12] 1084 	clr	a
      0023A7 F6               [12] 1085 	mov	@r0,a
      0023A8 08               [12] 1086 	inc	r0
      0023A9 F6               [12] 1087 	mov	@r0,a
      0023AA                       1088 00182$:
                                   1089 ;	life.c:130: for (x = 0; x < W; x++) {
      0023AA 78 33            [12] 1090 	mov	r0,#_x
      0023AC E4               [12] 1091 	clr	a
      0023AD F6               [12] 1092 	mov	@r0,a
      0023AE 08               [12] 1093 	inc	r0
      0023AF F6               [12] 1094 	mov	@r0,a
      0023B0                       1095 00180$:
                                   1096 ;	life.c:131: c = getchar();
      0023B0 12 20 CA         [24] 1097 	lcall	_getchar
      0023B3 AE 82            [24] 1098 	mov	r6,dpl
      0023B5 AF 83            [24] 1099 	mov	r7,dph
      0023B7 78 39            [12] 1100 	mov	r0,#_c
      0023B9 A6 06            [24] 1101 	mov	@r0,ar6
      0023BB 08               [12] 1102 	inc	r0
      0023BC A6 07            [24] 1103 	mov	@r0,ar7
                                   1104 ;	life.c:132: if (c == (int)'0') {
      0023BE BE 30 37         [24] 1105 	cjne	r6,#0x30,00142$
      0023C1 BF 00 34         [24] 1106 	cjne	r7,#0x00,00142$
                                   1107 ;	life.c:133: u[A2D(W, y, x)] = 0;
      0023C4 78 35            [12] 1108 	mov	r0,#_y
      0023C6 86 04            [24] 1109 	mov	ar4,@r0
      0023C8 08               [12] 1110 	inc	r0
      0023C9 E6               [12] 1111 	mov	a,@r0
      0023CA C4               [12] 1112 	swap	a
      0023CB 23               [12] 1113 	rl	a
      0023CC 54 E0            [12] 1114 	anl	a,#0xe0
      0023CE CC               [12] 1115 	xch	a,r4
      0023CF C4               [12] 1116 	swap	a
      0023D0 23               [12] 1117 	rl	a
      0023D1 CC               [12] 1118 	xch	a,r4
      0023D2 6C               [12] 1119 	xrl	a,r4
      0023D3 CC               [12] 1120 	xch	a,r4
      0023D4 54 E0            [12] 1121 	anl	a,#0xe0
      0023D6 CC               [12] 1122 	xch	a,r4
      0023D7 6C               [12] 1123 	xrl	a,r4
      0023D8 FD               [12] 1124 	mov	r5,a
      0023D9 78 33            [12] 1125 	mov	r0,#_x
      0023DB E6               [12] 1126 	mov	a,@r0
      0023DC 2C               [12] 1127 	add	a,r4
      0023DD FC               [12] 1128 	mov	r4,a
      0023DE 08               [12] 1129 	inc	r0
      0023DF E6               [12] 1130 	mov	a,@r0
      0023E0 3D               [12] 1131 	addc	a,r5
      0023E1 FD               [12] 1132 	mov	r5,a
      0023E2 EC               [12] 1133 	mov	a,r4
      0023E3 24 00            [12] 1134 	add	a,#_u
      0023E5 F5 82            [12] 1135 	mov	dpl,a
      0023E7 ED               [12] 1136 	mov	a,r5
      0023E8 34 88            [12] 1137 	addc	a,#(_u >> 8)
      0023EA F5 83            [12] 1138 	mov	dph,a
      0023EC E4               [12] 1139 	clr	a
      0023ED F0               [24] 1140 	movx	@dptr,a
                                   1141 ;	life.c:134: j++;
      0023EE 78 37            [12] 1142 	mov	r0,#_j
      0023F0 06               [12] 1143 	inc	@r0
      0023F1 B6 00 02         [24] 1144 	cjne	@r0,#0x00,00429$
      0023F4 08               [12] 1145 	inc	r0
      0023F5 06               [12] 1146 	inc	@r0
      0023F6                       1147 00429$:
      0023F6 80 43            [24] 1148 	sjmp	00181$
      0023F8                       1149 00142$:
                                   1150 ;	life.c:135: } else if (c == (int)'1') {
      0023F8 BE 31 38         [24] 1151 	cjne	r6,#0x31,00140$
      0023FB BF 00 35         [24] 1152 	cjne	r7,#0x00,00140$
                                   1153 ;	life.c:136: u[A2D(W, y, x)] = 1;
      0023FE 78 35            [12] 1154 	mov	r0,#_y
      002400 86 04            [24] 1155 	mov	ar4,@r0
      002402 08               [12] 1156 	inc	r0
      002403 E6               [12] 1157 	mov	a,@r0
      002404 C4               [12] 1158 	swap	a
      002405 23               [12] 1159 	rl	a
      002406 54 E0            [12] 1160 	anl	a,#0xe0
      002408 CC               [12] 1161 	xch	a,r4
      002409 C4               [12] 1162 	swap	a
      00240A 23               [12] 1163 	rl	a
      00240B CC               [12] 1164 	xch	a,r4
      00240C 6C               [12] 1165 	xrl	a,r4
      00240D CC               [12] 1166 	xch	a,r4
      00240E 54 E0            [12] 1167 	anl	a,#0xe0
      002410 CC               [12] 1168 	xch	a,r4
      002411 6C               [12] 1169 	xrl	a,r4
      002412 FD               [12] 1170 	mov	r5,a
      002413 78 33            [12] 1171 	mov	r0,#_x
      002415 E6               [12] 1172 	mov	a,@r0
      002416 2C               [12] 1173 	add	a,r4
      002417 FC               [12] 1174 	mov	r4,a
      002418 08               [12] 1175 	inc	r0
      002419 E6               [12] 1176 	mov	a,@r0
      00241A 3D               [12] 1177 	addc	a,r5
      00241B FD               [12] 1178 	mov	r5,a
      00241C EC               [12] 1179 	mov	a,r4
      00241D 24 00            [12] 1180 	add	a,#_u
      00241F F5 82            [12] 1181 	mov	dpl,a
      002421 ED               [12] 1182 	mov	a,r5
      002422 34 88            [12] 1183 	addc	a,#(_u >> 8)
      002424 F5 83            [12] 1184 	mov	dph,a
      002426 74 01            [12] 1185 	mov	a,#0x01
      002428 F0               [24] 1186 	movx	@dptr,a
                                   1187 ;	life.c:137: j++;
      002429 78 37            [12] 1188 	mov	r0,#_j
      00242B 06               [12] 1189 	inc	@r0
      00242C B6 00 02         [24] 1190 	cjne	@r0,#0x00,00432$
      00242F 08               [12] 1191 	inc	r0
      002430 06               [12] 1192 	inc	@r0
      002431                       1193 00432$:
      002431 80 08            [24] 1194 	sjmp	00181$
      002433                       1195 00140$:
                                   1196 ;	life.c:138: } else if (c == (int)'#') goto out;
      002433 BE 23 05         [24] 1197 	cjne	r6,#0x23,00433$
      002436 BF 00 02         [24] 1198 	cjne	r7,#0x00,00433$
      002439 80 32            [24] 1199 	sjmp	00153$
      00243B                       1200 00433$:
      00243B                       1201 00181$:
                                   1202 ;	life.c:130: for (x = 0; x < W; x++) {
      00243B 78 33            [12] 1203 	mov	r0,#_x
      00243D 06               [12] 1204 	inc	@r0
      00243E B6 00 02         [24] 1205 	cjne	@r0,#0x00,00434$
      002441 08               [12] 1206 	inc	r0
      002442 06               [12] 1207 	inc	@r0
      002443                       1208 00434$:
      002443 78 33            [12] 1209 	mov	r0,#_x
      002445 C3               [12] 1210 	clr	c
      002446 E6               [12] 1211 	mov	a,@r0
      002447 94 20            [12] 1212 	subb	a,#0x20
      002449 08               [12] 1213 	inc	r0
      00244A E6               [12] 1214 	mov	a,@r0
      00244B 64 80            [12] 1215 	xrl	a,#0x80
      00244D 94 80            [12] 1216 	subb	a,#0x80
      00244F 50 03            [24] 1217 	jnc	00435$
      002451 02 23 B0         [24] 1218 	ljmp	00180$
      002454                       1219 00435$:
                                   1220 ;	life.c:129: for (y = 0; y < H; y++)
      002454 78 35            [12] 1221 	mov	r0,#_y
      002456 06               [12] 1222 	inc	@r0
      002457 B6 00 02         [24] 1223 	cjne	@r0,#0x00,00436$
      00245A 08               [12] 1224 	inc	r0
      00245B 06               [12] 1225 	inc	@r0
      00245C                       1226 00436$:
      00245C 78 35            [12] 1227 	mov	r0,#_y
      00245E C3               [12] 1228 	clr	c
      00245F E6               [12] 1229 	mov	a,@r0
      002460 94 40            [12] 1230 	subb	a,#0x40
      002462 08               [12] 1231 	inc	r0
      002463 E6               [12] 1232 	mov	a,@r0
      002464 64 80            [12] 1233 	xrl	a,#0x80
      002466 94 80            [12] 1234 	subb	a,#0x80
      002468 50 03            [24] 1235 	jnc	00437$
      00246A 02 23 AA         [24] 1236 	ljmp	00182$
      00246D                       1237 00437$:
                                   1238 ;	life.c:141: out:
      00246D                       1239 00153$:
                                   1240 ;	life.c:142: if (c != (int)'#')
      00246D BE 23 05         [24] 1241 	cjne	r6,#0x23,00438$
      002470 BF 00 02         [24] 1242 	cjne	r7,#0x00,00438$
      002473 80 14            [24] 1243 	sjmp	00152$
      002475                       1244 00438$:
                                   1245 ;	life.c:143: while (1) {
      002475                       1246 00149$:
                                   1247 ;	life.c:144: c = getchar();
      002475 12 20 CA         [24] 1248 	lcall	_getchar
      002478 AE 82            [24] 1249 	mov	r6,dpl
      00247A AF 83            [24] 1250 	mov	r7,dph
      00247C 78 39            [12] 1251 	mov	r0,#_c
      00247E A6 06            [24] 1252 	mov	@r0,ar6
      002480 08               [12] 1253 	inc	r0
      002481 A6 07            [24] 1254 	mov	@r0,ar7
                                   1255 ;	life.c:145: if (c == (int)'#') break;
      002483 BE 23 EF         [24] 1256 	cjne	r6,#0x23,00149$
      002486 BF 00 EC         [24] 1257 	cjne	r7,#0x00,00149$
      002489                       1258 00152$:
                                   1259 ;	life.c:147: print16x(j);
      002489 78 37            [12] 1260 	mov	r0,#_j
      00248B 86 06            [24] 1261 	mov	ar6,@r0
      00248D 08               [12] 1262 	inc	r0
      00248E 86 07            [24] 1263 	mov	ar7,@r0
      002490 8E 04            [24] 1264 	mov	ar4,r6
                                   1265 ;	life.c:38: putchar(digits[(a >> 12) & 0xf]);
      002492 EF               [12] 1266 	mov	a,r7
      002493 FD               [12] 1267 	mov	r5,a
      002494 C4               [12] 1268 	swap	a
      002495 54 0F            [12] 1269 	anl	a,#0x0f
      002497 30 E3 02         [24] 1270 	jnb	acc.3,00441$
      00249A 44 F0            [12] 1271 	orl	a,#0xf0
      00249C                       1272 00441$:
      00249C FE               [12] 1273 	mov	r6,a
      00249D 33               [12] 1274 	rlc	a
      00249E 95 E0            [12] 1275 	subb	a,acc
      0024A0 53 06 0F         [24] 1276 	anl	ar6,#0x0f
      0024A3 EE               [12] 1277 	mov	a,r6
      0024A4 24 21            [12] 1278 	add	a,#_digits
      0024A6 F9               [12] 1279 	mov	r1,a
      0024A7 87 07            [24] 1280 	mov	ar7,@r1
      0024A9 7E 00            [12] 1281 	mov	r6,#0x00
      0024AB 8F 82            [24] 1282 	mov	dpl,r7
      0024AD 8E 83            [24] 1283 	mov	dph,r6
      0024AF 12 20 C5         [24] 1284 	lcall	_putchar
                                   1285 ;	life.c:39: putchar(digits[(a >> 8) & 0xf]);
      0024B2 8D 07            [24] 1286 	mov	ar7,r5
      0024B4 53 07 0F         [24] 1287 	anl	ar7,#0x0f
      0024B7 EF               [12] 1288 	mov	a,r7
      0024B8 24 21            [12] 1289 	add	a,#_digits
      0024BA F9               [12] 1290 	mov	r1,a
      0024BB 87 07            [24] 1291 	mov	ar7,@r1
      0024BD 7E 00            [12] 1292 	mov	r6,#0x00
      0024BF 8F 82            [24] 1293 	mov	dpl,r7
      0024C1 8E 83            [24] 1294 	mov	dph,r6
      0024C3 12 20 C5         [24] 1295 	lcall	_putchar
                                   1296 ;	life.c:40: putchar(digits[(a >> 4) & 0xf]);
      0024C6 8C 06            [24] 1297 	mov	ar6,r4
      0024C8 ED               [12] 1298 	mov	a,r5
      0024C9 C4               [12] 1299 	swap	a
      0024CA CE               [12] 1300 	xch	a,r6
      0024CB C4               [12] 1301 	swap	a
      0024CC 54 0F            [12] 1302 	anl	a,#0x0f
      0024CE 6E               [12] 1303 	xrl	a,r6
      0024CF CE               [12] 1304 	xch	a,r6
      0024D0 54 0F            [12] 1305 	anl	a,#0x0f
      0024D2 CE               [12] 1306 	xch	a,r6
      0024D3 6E               [12] 1307 	xrl	a,r6
      0024D4 CE               [12] 1308 	xch	a,r6
      0024D5 30 E3 02         [24] 1309 	jnb	acc.3,00442$
      0024D8 44 F0            [12] 1310 	orl	a,#0xf0
      0024DA                       1311 00442$:
      0024DA 53 06 0F         [24] 1312 	anl	ar6,#0x0f
      0024DD EE               [12] 1313 	mov	a,r6
      0024DE 24 21            [12] 1314 	add	a,#_digits
      0024E0 F9               [12] 1315 	mov	r1,a
      0024E1 87 07            [24] 1316 	mov	ar7,@r1
      0024E3 7E 00            [12] 1317 	mov	r6,#0x00
      0024E5 8F 82            [24] 1318 	mov	dpl,r7
      0024E7 8E 83            [24] 1319 	mov	dph,r6
      0024E9 12 20 C5         [24] 1320 	lcall	_putchar
                                   1321 ;	life.c:41: putchar(digits[a & 0xf]);
      0024EC 53 04 0F         [24] 1322 	anl	ar4,#0x0f
      0024EF EC               [12] 1323 	mov	a,r4
      0024F0 24 21            [12] 1324 	add	a,#_digits
      0024F2 F9               [12] 1325 	mov	r1,a
      0024F3 87 07            [24] 1326 	mov	ar7,@r1
      0024F5 7E 00            [12] 1327 	mov	r6,#0x00
      0024F7 8F 82            [24] 1328 	mov	dpl,r7
      0024F9 8E 83            [24] 1329 	mov	dph,r6
      0024FB 12 20 C5         [24] 1330 	lcall	_putchar
                                   1331 ;	life.c:148: printstr(">\r\n");
      0024FE 7D 09            [12] 1332 	mov	r5,#___str_3
      002500 7E 2D            [12] 1333 	mov	r6,#(___str_3 >> 8)
      002502 7F 80            [12] 1334 	mov	r7,#0x80
                                   1335 ;	life.c:49: return;
      002504                       1336 00185$:
                                   1337 ;	life.c:47: for (; *s; s++) putchar(*s);
      002504 8D 82            [24] 1338 	mov	dpl,r5
      002506 8E 83            [24] 1339 	mov	dph,r6
      002508 8F F0            [24] 1340 	mov	b,r7
      00250A 12 2B CF         [24] 1341 	lcall	__gptrget
      00250D FC               [12] 1342 	mov	r4,a
      00250E 60 10            [24] 1343 	jz	00156$
      002510 7B 00            [12] 1344 	mov	r3,#0x00
      002512 8C 82            [24] 1345 	mov	dpl,r4
      002514 8B 83            [24] 1346 	mov	dph,r3
      002516 12 20 C5         [24] 1347 	lcall	_putchar
      002519 0D               [12] 1348 	inc	r5
                                   1349 ;	life.c:148: printstr(">\r\n");
      00251A BD 00 E7         [24] 1350 	cjne	r5,#0x00,00185$
      00251D 0E               [12] 1351 	inc	r6
      00251E 80 E4            [24] 1352 	sjmp	00185$
      002520                       1353 00156$:
                                   1354 ;	life.c:218: show(0);
      002520 75 82 00         [24] 1355 	mov	dpl,#0x00
      002523 12 20 EB         [24] 1356 	lcall	_show
                                   1357 ;	life.c:220: printstr("READY\r\n");
      002526 7D 1B            [12] 1358 	mov	r5,#___str_5
      002528 7E 2D            [12] 1359 	mov	r6,#(___str_5 >> 8)
      00252A 7F 80            [12] 1360 	mov	r7,#0x80
                                   1361 ;	life.c:49: return;
      00252C                       1362 00188$:
                                   1363 ;	life.c:47: for (; *s; s++) putchar(*s);
      00252C 8D 82            [24] 1364 	mov	dpl,r5
      00252E 8E 83            [24] 1365 	mov	dph,r6
      002530 8F F0            [24] 1366 	mov	b,r7
      002532 12 2B CF         [24] 1367 	lcall	__gptrget
      002535 FC               [12] 1368 	mov	r4,a
      002536 60 10            [24] 1369 	jz	00118$
      002538 7B 00            [12] 1370 	mov	r3,#0x00
      00253A 8C 82            [24] 1371 	mov	dpl,r4
      00253C 8B 83            [24] 1372 	mov	dph,r3
      00253E 12 20 C5         [24] 1373 	lcall	_putchar
      002541 0D               [12] 1374 	inc	r5
                                   1375 ;	life.c:221: while (1) {
      002542 BD 00 E7         [24] 1376 	cjne	r5,#0x00,00188$
      002545 0E               [12] 1377 	inc	r6
      002546 80 E4            [24] 1378 	sjmp	00188$
      002548                       1379 00118$:
                                   1380 ;	life.c:222: c = toupper(getchar());
      002548 12 20 CA         [24] 1381 	lcall	_getchar
      00254B 12 2B A8         [24] 1382 	lcall	_toupper
      00254E AE 82            [24] 1383 	mov	r6,dpl
      002550 AF 83            [24] 1384 	mov	r7,dph
      002552 78 39            [12] 1385 	mov	r0,#_c
      002554 A6 06            [24] 1386 	mov	@r0,ar6
      002556 08               [12] 1387 	inc	r0
      002557 A6 07            [24] 1388 	mov	@r0,ar7
                                   1389 ;	life.c:223: if (i0 || (c == (int)'T')) goto terminate;
      002559 78 31            [12] 1390 	mov	r0,#_i0
      00255B E6               [12] 1391 	mov	a,@r0
      00255C 60 03            [24] 1392 	jz	00447$
      00255E 02 2A 7B         [24] 1393 	ljmp	00130$
      002561                       1394 00447$:
      002561 BE 54 06         [24] 1395 	cjne	r6,#0x54,00448$
      002564 BF 00 03         [24] 1396 	cjne	r7,#0x00,00448$
      002567 02 2A 7B         [24] 1397 	ljmp	00130$
      00256A                       1398 00448$:
                                   1399 ;	life.c:224: if (c == (int)'L') goto reload;
      00256A BE 4C 06         [24] 1400 	cjne	r6,#0x4c,00449$
      00256D BF 00 03         [24] 1401 	cjne	r7,#0x00,00449$
      002570 02 23 4A         [24] 1402 	ljmp	00109$
      002573                       1403 00449$:
                                   1404 ;	life.c:225: if (c == (int)'S') break;
      002573 BE 53 D2         [24] 1405 	cjne	r6,#0x53,00118$
      002576 BF 00 CF         [24] 1406 	cjne	r7,#0x00,00118$
                                   1407 ;	life.c:76: generation[0] = 0;
      002579 78 43            [12] 1408 	mov	r0,#_generation
      00257B 76 00            [12] 1409 	mov	@r0,#0x00
      00257D 08               [12] 1410 	inc	r0
      00257E 76 00            [12] 1411 	mov	@r0,#0x00
                                   1412 ;	life.c:77: generation[1] = 0;
      002580 78 45            [12] 1413 	mov	r0,#(_generation + 0x0002)
      002582 76 00            [12] 1414 	mov	@r0,#0x00
      002584 08               [12] 1415 	inc	r0
      002585 76 00            [12] 1416 	mov	@r0,#0x00
                                   1417 ;	life.c:230: for (i1 = 0; !i0 && !i1; ) {
      002587 78 32            [12] 1418 	mov	r0,#_i1
      002589 76 00            [12] 1419 	mov	@r0,#0x00
      00258B                       1420 00205$:
      00258B 78 31            [12] 1421 	mov	r0,#_i0
      00258D E6               [12] 1422 	mov	a,@r0
      00258E 60 03            [24] 1423 	jz	00452$
      002590 02 2A 49         [24] 1424 	ljmp	00126$
      002593                       1425 00452$:
      002593 78 32            [12] 1426 	mov	r0,#_i1
      002595 E6               [12] 1427 	mov	a,@r0
      002596 60 03            [24] 1428 	jz	00453$
      002598 02 2A 49         [24] 1429 	ljmp	00126$
      00259B                       1430 00453$:
                                   1431 ;	life.c:231: show(1);
      00259B 75 82 01         [24] 1432 	mov	dpl,#0x01
      00259E 12 20 EB         [24] 1433 	lcall	_show
                                   1434 ;	life.c:156: fixed = 0;
      0025A1 78 3D            [12] 1435 	mov	r0,#_fixed
      0025A3 76 00            [12] 1436 	mov	@r0,#0x00
                                   1437 ;	life.c:157: cycle2 = 0;
      0025A5 78 3E            [12] 1438 	mov	r0,#_cycle2
      0025A7 76 00            [12] 1439 	mov	@r0,#0x00
                                   1440 ;	life.c:158: bstep = 0;
      0025A9 78 3B            [12] 1441 	mov	r0,#_bstep
      0025AB 76 00            [12] 1442 	mov	@r0,#0x00
                                   1443 ;	life.c:160: for (y = 0; y < H; y++) {
      0025AD 78 35            [12] 1444 	mov	r0,#_y
      0025AF E4               [12] 1445 	clr	a
      0025B0 F6               [12] 1446 	mov	@r0,a
      0025B1 08               [12] 1447 	inc	r0
      0025B2 F6               [12] 1448 	mov	@r0,a
      0025B3                       1449 00192$:
                                   1450 ;	life.c:161: putchar(busy[bstep]); putchar('\r');
      0025B3 78 3B            [12] 1451 	mov	r0,#_bstep
      0025B5 E6               [12] 1452 	mov	a,@r0
      0025B6 24 47            [12] 1453 	add	a,#_busy
      0025B8 F9               [12] 1454 	mov	r1,a
      0025B9 87 07            [24] 1455 	mov	ar7,@r1
      0025BB 7E 00            [12] 1456 	mov	r6,#0x00
      0025BD 8F 82            [24] 1457 	mov	dpl,r7
      0025BF 8E 83            [24] 1458 	mov	dph,r6
      0025C1 12 20 C5         [24] 1459 	lcall	_putchar
      0025C4 90 00 0D         [24] 1460 	mov	dptr,#0x000d
      0025C7 12 20 C5         [24] 1461 	lcall	_putchar
                                   1462 ;	life.c:162: bstep = (bstep + 1) & 3;
      0025CA 78 3B            [12] 1463 	mov	r0,#_bstep
      0025CC 86 07            [24] 1464 	mov	ar7,@r0
      0025CE 0F               [12] 1465 	inc	r7
      0025CF 78 3B            [12] 1466 	mov	r0,#_bstep
      0025D1 74 03            [12] 1467 	mov	a,#0x03
      0025D3 5F               [12] 1468 	anl	a,r7
      0025D4 F6               [12] 1469 	mov	@r0,a
                                   1470 ;	life.c:163: for (x = 0; x < W; x++) {
      0025D5 78 33            [12] 1471 	mov	r0,#_x
      0025D7 E4               [12] 1472 	clr	a
      0025D8 F6               [12] 1473 	mov	@r0,a
      0025D9 08               [12] 1474 	inc	r0
      0025DA F6               [12] 1475 	mov	@r0,a
      0025DB                       1476 00190$:
                                   1477 ;	life.c:164: n = -u[A2D(W, y, x)];
      0025DB 78 35            [12] 1478 	mov	r0,#_y
      0025DD E5 10            [12] 1479 	mov	a,_bp
      0025DF 24 03            [12] 1480 	add	a,#0x03
      0025E1 F9               [12] 1481 	mov	r1,a
      0025E2 E6               [12] 1482 	mov	a,@r0
      0025E3 F7               [12] 1483 	mov	@r1,a
      0025E4 08               [12] 1484 	inc	r0
      0025E5 E6               [12] 1485 	mov	a,@r0
      0025E6 C4               [12] 1486 	swap	a
      0025E7 23               [12] 1487 	rl	a
      0025E8 54 E0            [12] 1488 	anl	a,#0xe0
      0025EA C7               [12] 1489 	xch	a,@r1
      0025EB C4               [12] 1490 	swap	a
      0025EC 23               [12] 1491 	rl	a
      0025ED C7               [12] 1492 	xch	a,@r1
      0025EE 67               [12] 1493 	xrl	a,@r1
      0025EF C7               [12] 1494 	xch	a,@r1
      0025F0 54 E0            [12] 1495 	anl	a,#0xe0
      0025F2 C7               [12] 1496 	xch	a,@r1
      0025F3 67               [12] 1497 	xrl	a,@r1
      0025F4 09               [12] 1498 	inc	r1
      0025F5 F7               [12] 1499 	mov	@r1,a
      0025F6 E5 10            [12] 1500 	mov	a,_bp
      0025F8 24 03            [12] 1501 	add	a,#0x03
      0025FA F8               [12] 1502 	mov	r0,a
      0025FB 79 33            [12] 1503 	mov	r1,#_x
      0025FD E7               [12] 1504 	mov	a,@r1
      0025FE 26               [12] 1505 	add	a,@r0
      0025FF C0 E0            [24] 1506 	push	acc
      002601 09               [12] 1507 	inc	r1
      002602 E7               [12] 1508 	mov	a,@r1
      002603 08               [12] 1509 	inc	r0
      002604 36               [12] 1510 	addc	a,@r0
      002605 C0 E0            [24] 1511 	push	acc
      002607 A8 10            [24] 1512 	mov	r0,_bp
      002609 08               [12] 1513 	inc	r0
      00260A 08               [12] 1514 	inc	r0
      00260B D0 E0            [24] 1515 	pop	acc
      00260D F6               [12] 1516 	mov	@r0,a
      00260E 18               [12] 1517 	dec	r0
      00260F D0 E0            [24] 1518 	pop	acc
      002611 F6               [12] 1519 	mov	@r0,a
      002612 A8 10            [24] 1520 	mov	r0,_bp
      002614 08               [12] 1521 	inc	r0
      002615 E6               [12] 1522 	mov	a,@r0
      002616 24 00            [12] 1523 	add	a,#_u
      002618 F5 82            [12] 1524 	mov	dpl,a
      00261A 08               [12] 1525 	inc	r0
      00261B E6               [12] 1526 	mov	a,@r0
      00261C 34 88            [12] 1527 	addc	a,#(_u >> 8)
      00261E F5 83            [12] 1528 	mov	dph,a
      002620 E0               [24] 1529 	movx	a,@dptr
      002621 FB               [12] 1530 	mov	r3,a
      002622 C3               [12] 1531 	clr	c
      002623 E4               [12] 1532 	clr	a
      002624 9B               [12] 1533 	subb	a,r3
      002625 FB               [12] 1534 	mov	r3,a
                                   1535 ;	life.c:167: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      002626 78 35            [12] 1536 	mov	r0,#_y
      002628 74 FF            [12] 1537 	mov	a,#0xff
      00262A 26               [12] 1538 	add	a,@r0
      00262B FA               [12] 1539 	mov	r2,a
      00262C 74 FF            [12] 1540 	mov	a,#0xff
      00262E 08               [12] 1541 	inc	r0
      00262F 36               [12] 1542 	addc	a,@r0
      002630 FD               [12] 1543 	mov	r5,a
      002631 74 40            [12] 1544 	mov	a,#0x40
      002633 2A               [12] 1545 	add	a,r2
      002634 FA               [12] 1546 	mov	r2,a
      002635 E4               [12] 1547 	clr	a
      002636 3D               [12] 1548 	addc	a,r5
      002637 FD               [12] 1549 	mov	r5,a
      002638 C0 03            [24] 1550 	push	ar3
      00263A 74 40            [12] 1551 	mov	a,#0x40
      00263C C0 E0            [24] 1552 	push	acc
      00263E E4               [12] 1553 	clr	a
      00263F C0 E0            [24] 1554 	push	acc
      002641 8A 82            [24] 1555 	mov	dpl,r2
      002643 8D 83            [24] 1556 	mov	dph,r5
      002645 12 2B EB         [24] 1557 	lcall	__modsint
      002648 AC 82            [24] 1558 	mov	r4,dpl
      00264A AD 83            [24] 1559 	mov	r5,dph
      00264C 15 81            [12] 1560 	dec	sp
      00264E 15 81            [12] 1561 	dec	sp
      002650 D0 03            [24] 1562 	pop	ar3
      002652 ED               [12] 1563 	mov	a,r5
      002653 C4               [12] 1564 	swap	a
      002654 23               [12] 1565 	rl	a
      002655 54 E0            [12] 1566 	anl	a,#0xe0
      002657 CC               [12] 1567 	xch	a,r4
      002658 C4               [12] 1568 	swap	a
      002659 23               [12] 1569 	rl	a
      00265A CC               [12] 1570 	xch	a,r4
      00265B 6C               [12] 1571 	xrl	a,r4
      00265C CC               [12] 1572 	xch	a,r4
      00265D 54 E0            [12] 1573 	anl	a,#0xe0
      00265F CC               [12] 1574 	xch	a,r4
      002660 6C               [12] 1575 	xrl	a,r4
      002661 FD               [12] 1576 	mov	r5,a
      002662 78 33            [12] 1577 	mov	r0,#_x
      002664 74 FF            [12] 1578 	mov	a,#0xff
      002666 26               [12] 1579 	add	a,@r0
      002667 FA               [12] 1580 	mov	r2,a
      002668 74 FF            [12] 1581 	mov	a,#0xff
      00266A 08               [12] 1582 	inc	r0
      00266B 36               [12] 1583 	addc	a,@r0
      00266C FF               [12] 1584 	mov	r7,a
      00266D 74 20            [12] 1585 	mov	a,#0x20
      00266F 2A               [12] 1586 	add	a,r2
      002670 FA               [12] 1587 	mov	r2,a
      002671 E4               [12] 1588 	clr	a
      002672 3F               [12] 1589 	addc	a,r7
      002673 FF               [12] 1590 	mov	r7,a
      002674 C0 05            [24] 1591 	push	ar5
      002676 C0 04            [24] 1592 	push	ar4
      002678 C0 03            [24] 1593 	push	ar3
      00267A 74 20            [12] 1594 	mov	a,#0x20
      00267C C0 E0            [24] 1595 	push	acc
      00267E E4               [12] 1596 	clr	a
      00267F C0 E0            [24] 1597 	push	acc
      002681 8A 82            [24] 1598 	mov	dpl,r2
      002683 8F 83            [24] 1599 	mov	dph,r7
      002685 12 2B EB         [24] 1600 	lcall	__modsint
      002688 C8               [12] 1601 	xch	a,r0
      002689 E5 10            [12] 1602 	mov	a,_bp
      00268B 24 05            [12] 1603 	add	a,#0x05
      00268D C8               [12] 1604 	xch	a,r0
      00268E A6 82            [24] 1605 	mov	@r0,dpl
      002690 08               [12] 1606 	inc	r0
      002691 A6 83            [24] 1607 	mov	@r0,dph
      002693 15 81            [12] 1608 	dec	sp
      002695 15 81            [12] 1609 	dec	sp
      002697 D0 03            [24] 1610 	pop	ar3
      002699 D0 04            [24] 1611 	pop	ar4
      00269B D0 05            [24] 1612 	pop	ar5
      00269D E5 10            [12] 1613 	mov	a,_bp
      00269F 24 05            [12] 1614 	add	a,#0x05
      0026A1 F8               [12] 1615 	mov	r0,a
      0026A2 E6               [12] 1616 	mov	a,@r0
      0026A3 2C               [12] 1617 	add	a,r4
      0026A4 FA               [12] 1618 	mov	r2,a
      0026A5 08               [12] 1619 	inc	r0
      0026A6 E6               [12] 1620 	mov	a,@r0
      0026A7 3D               [12] 1621 	addc	a,r5
      0026A8 FF               [12] 1622 	mov	r7,a
      0026A9 EA               [12] 1623 	mov	a,r2
      0026AA 24 00            [12] 1624 	add	a,#_u
      0026AC F5 82            [12] 1625 	mov	dpl,a
      0026AE EF               [12] 1626 	mov	a,r7
      0026AF 34 88            [12] 1627 	addc	a,#(_u >> 8)
      0026B1 F5 83            [12] 1628 	mov	dph,a
      0026B3 E0               [24] 1629 	movx	a,@dptr
      0026B4 2B               [12] 1630 	add	a,r3
      0026B5 FB               [12] 1631 	mov	r3,a
                                   1632 ;	life.c:169: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      0026B6 78 33            [12] 1633 	mov	r0,#_x
      0026B8 E5 10            [12] 1634 	mov	a,_bp
      0026BA 24 07            [12] 1635 	add	a,#0x07
      0026BC F9               [12] 1636 	mov	r1,a
      0026BD E6               [12] 1637 	mov	a,@r0
      0026BE F7               [12] 1638 	mov	@r1,a
      0026BF 08               [12] 1639 	inc	r0
      0026C0 09               [12] 1640 	inc	r1
      0026C1 E6               [12] 1641 	mov	a,@r0
      0026C2 F7               [12] 1642 	mov	@r1,a
      0026C3 E5 10            [12] 1643 	mov	a,_bp
      0026C5 24 07            [12] 1644 	add	a,#0x07
      0026C7 F8               [12] 1645 	mov	r0,a
      0026C8 74 20            [12] 1646 	mov	a,#0x20
      0026CA 26               [12] 1647 	add	a,@r0
      0026CB FA               [12] 1648 	mov	r2,a
      0026CC E4               [12] 1649 	clr	a
      0026CD 08               [12] 1650 	inc	r0
      0026CE 36               [12] 1651 	addc	a,@r0
      0026CF FF               [12] 1652 	mov	r7,a
      0026D0 C0 05            [24] 1653 	push	ar5
      0026D2 C0 04            [24] 1654 	push	ar4
      0026D4 C0 03            [24] 1655 	push	ar3
      0026D6 74 20            [12] 1656 	mov	a,#0x20
      0026D8 C0 E0            [24] 1657 	push	acc
      0026DA E4               [12] 1658 	clr	a
      0026DB C0 E0            [24] 1659 	push	acc
      0026DD 8A 82            [24] 1660 	mov	dpl,r2
      0026DF 8F 83            [24] 1661 	mov	dph,r7
      0026E1 12 2B EB         [24] 1662 	lcall	__modsint
      0026E4 C8               [12] 1663 	xch	a,r0
      0026E5 E5 10            [12] 1664 	mov	a,_bp
      0026E7 24 09            [12] 1665 	add	a,#0x09
      0026E9 C8               [12] 1666 	xch	a,r0
      0026EA A6 82            [24] 1667 	mov	@r0,dpl
      0026EC 08               [12] 1668 	inc	r0
      0026ED A6 83            [24] 1669 	mov	@r0,dph
      0026EF 15 81            [12] 1670 	dec	sp
      0026F1 15 81            [12] 1671 	dec	sp
      0026F3 D0 03            [24] 1672 	pop	ar3
      0026F5 D0 04            [24] 1673 	pop	ar4
      0026F7 D0 05            [24] 1674 	pop	ar5
      0026F9 E5 10            [12] 1675 	mov	a,_bp
      0026FB 24 09            [12] 1676 	add	a,#0x09
      0026FD F8               [12] 1677 	mov	r0,a
      0026FE E6               [12] 1678 	mov	a,@r0
      0026FF 2C               [12] 1679 	add	a,r4
      002700 FA               [12] 1680 	mov	r2,a
      002701 08               [12] 1681 	inc	r0
      002702 E6               [12] 1682 	mov	a,@r0
      002703 3D               [12] 1683 	addc	a,r5
      002704 FF               [12] 1684 	mov	r7,a
      002705 EA               [12] 1685 	mov	a,r2
      002706 24 00            [12] 1686 	add	a,#_u
      002708 F5 82            [12] 1687 	mov	dpl,a
      00270A EF               [12] 1688 	mov	a,r7
      00270B 34 88            [12] 1689 	addc	a,#(_u >> 8)
      00270D F5 83            [12] 1690 	mov	dph,a
      00270F E0               [24] 1691 	movx	a,@dptr
      002710 2B               [12] 1692 	add	a,r3
      002711 FB               [12] 1693 	mov	r3,a
                                   1694 ;	life.c:171: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      002712 E5 10            [12] 1695 	mov	a,_bp
      002714 24 07            [12] 1696 	add	a,#0x07
      002716 F8               [12] 1697 	mov	r0,a
      002717 74 21            [12] 1698 	mov	a,#0x21
      002719 26               [12] 1699 	add	a,@r0
      00271A FE               [12] 1700 	mov	r6,a
      00271B E4               [12] 1701 	clr	a
      00271C 08               [12] 1702 	inc	r0
      00271D 36               [12] 1703 	addc	a,@r0
      00271E FF               [12] 1704 	mov	r7,a
      00271F C0 05            [24] 1705 	push	ar5
      002721 C0 04            [24] 1706 	push	ar4
      002723 C0 03            [24] 1707 	push	ar3
      002725 74 20            [12] 1708 	mov	a,#0x20
      002727 C0 E0            [24] 1709 	push	acc
      002729 E4               [12] 1710 	clr	a
      00272A C0 E0            [24] 1711 	push	acc
      00272C 8E 82            [24] 1712 	mov	dpl,r6
      00272E 8F 83            [24] 1713 	mov	dph,r7
      002730 12 2B EB         [24] 1714 	lcall	__modsint
      002733 AE 82            [24] 1715 	mov	r6,dpl
      002735 AF 83            [24] 1716 	mov	r7,dph
      002737 15 81            [12] 1717 	dec	sp
      002739 15 81            [12] 1718 	dec	sp
      00273B D0 03            [24] 1719 	pop	ar3
      00273D D0 04            [24] 1720 	pop	ar4
      00273F D0 05            [24] 1721 	pop	ar5
      002741 EE               [12] 1722 	mov	a,r6
      002742 2C               [12] 1723 	add	a,r4
      002743 FC               [12] 1724 	mov	r4,a
      002744 EF               [12] 1725 	mov	a,r7
      002745 3D               [12] 1726 	addc	a,r5
      002746 FD               [12] 1727 	mov	r5,a
      002747 EC               [12] 1728 	mov	a,r4
      002748 24 00            [12] 1729 	add	a,#_u
      00274A F5 82            [12] 1730 	mov	dpl,a
      00274C ED               [12] 1731 	mov	a,r5
      00274D 34 88            [12] 1732 	addc	a,#(_u >> 8)
      00274F F5 83            [12] 1733 	mov	dph,a
      002751 E0               [24] 1734 	movx	a,@dptr
      002752 2B               [12] 1735 	add	a,r3
      002753 FB               [12] 1736 	mov	r3,a
                                   1737 ;	life.c:173: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      002754 78 35            [12] 1738 	mov	r0,#_y
      002756 E5 10            [12] 1739 	mov	a,_bp
      002758 24 0B            [12] 1740 	add	a,#0x0b
      00275A F9               [12] 1741 	mov	r1,a
      00275B E6               [12] 1742 	mov	a,@r0
      00275C F7               [12] 1743 	mov	@r1,a
      00275D 08               [12] 1744 	inc	r0
      00275E 09               [12] 1745 	inc	r1
      00275F E6               [12] 1746 	mov	a,@r0
      002760 F7               [12] 1747 	mov	@r1,a
      002761 E5 10            [12] 1748 	mov	a,_bp
      002763 24 0B            [12] 1749 	add	a,#0x0b
      002765 F8               [12] 1750 	mov	r0,a
      002766 74 40            [12] 1751 	mov	a,#0x40
      002768 26               [12] 1752 	add	a,@r0
      002769 FA               [12] 1753 	mov	r2,a
      00276A E4               [12] 1754 	clr	a
      00276B 08               [12] 1755 	inc	r0
      00276C 36               [12] 1756 	addc	a,@r0
      00276D FD               [12] 1757 	mov	r5,a
      00276E C0 07            [24] 1758 	push	ar7
      002770 C0 06            [24] 1759 	push	ar6
      002772 C0 03            [24] 1760 	push	ar3
      002774 74 40            [12] 1761 	mov	a,#0x40
      002776 C0 E0            [24] 1762 	push	acc
      002778 E4               [12] 1763 	clr	a
      002779 C0 E0            [24] 1764 	push	acc
      00277B 8A 82            [24] 1765 	mov	dpl,r2
      00277D 8D 83            [24] 1766 	mov	dph,r5
      00277F 12 2B EB         [24] 1767 	lcall	__modsint
      002782 AC 82            [24] 1768 	mov	r4,dpl
      002784 AD 83            [24] 1769 	mov	r5,dph
      002786 15 81            [12] 1770 	dec	sp
      002788 15 81            [12] 1771 	dec	sp
      00278A D0 03            [24] 1772 	pop	ar3
      00278C D0 06            [24] 1773 	pop	ar6
      00278E D0 07            [24] 1774 	pop	ar7
      002790 E5 10            [12] 1775 	mov	a,_bp
      002792 24 0D            [12] 1776 	add	a,#0x0d
      002794 F8               [12] 1777 	mov	r0,a
      002795 A6 04            [24] 1778 	mov	@r0,ar4
      002797 ED               [12] 1779 	mov	a,r5
      002798 C4               [12] 1780 	swap	a
      002799 23               [12] 1781 	rl	a
      00279A 54 E0            [12] 1782 	anl	a,#0xe0
      00279C C6               [12] 1783 	xch	a,@r0
      00279D C4               [12] 1784 	swap	a
      00279E 23               [12] 1785 	rl	a
      00279F C6               [12] 1786 	xch	a,@r0
      0027A0 66               [12] 1787 	xrl	a,@r0
      0027A1 C6               [12] 1788 	xch	a,@r0
      0027A2 54 E0            [12] 1789 	anl	a,#0xe0
      0027A4 C6               [12] 1790 	xch	a,@r0
      0027A5 66               [12] 1791 	xrl	a,@r0
      0027A6 08               [12] 1792 	inc	r0
      0027A7 F6               [12] 1793 	mov	@r0,a
      0027A8 E5 10            [12] 1794 	mov	a,_bp
      0027AA 24 0D            [12] 1795 	add	a,#0x0d
      0027AC F8               [12] 1796 	mov	r0,a
      0027AD E5 10            [12] 1797 	mov	a,_bp
      0027AF 24 05            [12] 1798 	add	a,#0x05
      0027B1 F9               [12] 1799 	mov	r1,a
      0027B2 E7               [12] 1800 	mov	a,@r1
      0027B3 26               [12] 1801 	add	a,@r0
      0027B4 FA               [12] 1802 	mov	r2,a
      0027B5 09               [12] 1803 	inc	r1
      0027B6 E7               [12] 1804 	mov	a,@r1
      0027B7 08               [12] 1805 	inc	r0
      0027B8 36               [12] 1806 	addc	a,@r0
      0027B9 FD               [12] 1807 	mov	r5,a
      0027BA EA               [12] 1808 	mov	a,r2
      0027BB 24 00            [12] 1809 	add	a,#_u
      0027BD F5 82            [12] 1810 	mov	dpl,a
      0027BF ED               [12] 1811 	mov	a,r5
      0027C0 34 88            [12] 1812 	addc	a,#(_u >> 8)
      0027C2 F5 83            [12] 1813 	mov	dph,a
      0027C4 E0               [24] 1814 	movx	a,@dptr
      0027C5 2B               [12] 1815 	add	a,r3
      0027C6 FB               [12] 1816 	mov	r3,a
                                   1817 ;	life.c:175: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      0027C7 E5 10            [12] 1818 	mov	a,_bp
      0027C9 24 0D            [12] 1819 	add	a,#0x0d
      0027CB F8               [12] 1820 	mov	r0,a
      0027CC E5 10            [12] 1821 	mov	a,_bp
      0027CE 24 09            [12] 1822 	add	a,#0x09
      0027D0 F9               [12] 1823 	mov	r1,a
      0027D1 E7               [12] 1824 	mov	a,@r1
      0027D2 26               [12] 1825 	add	a,@r0
      0027D3 FC               [12] 1826 	mov	r4,a
      0027D4 09               [12] 1827 	inc	r1
      0027D5 E7               [12] 1828 	mov	a,@r1
      0027D6 08               [12] 1829 	inc	r0
      0027D7 36               [12] 1830 	addc	a,@r0
      0027D8 FD               [12] 1831 	mov	r5,a
      0027D9 EC               [12] 1832 	mov	a,r4
      0027DA 24 00            [12] 1833 	add	a,#_u
      0027DC F5 82            [12] 1834 	mov	dpl,a
      0027DE ED               [12] 1835 	mov	a,r5
      0027DF 34 88            [12] 1836 	addc	a,#(_u >> 8)
      0027E1 F5 83            [12] 1837 	mov	dph,a
      0027E3 E0               [24] 1838 	movx	a,@dptr
      0027E4 2B               [12] 1839 	add	a,r3
      0027E5 FB               [12] 1840 	mov	r3,a
                                   1841 ;	life.c:177: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      0027E6 E5 10            [12] 1842 	mov	a,_bp
      0027E8 24 0D            [12] 1843 	add	a,#0x0d
      0027EA F8               [12] 1844 	mov	r0,a
      0027EB EE               [12] 1845 	mov	a,r6
      0027EC 26               [12] 1846 	add	a,@r0
      0027ED FC               [12] 1847 	mov	r4,a
      0027EE EF               [12] 1848 	mov	a,r7
      0027EF 08               [12] 1849 	inc	r0
      0027F0 36               [12] 1850 	addc	a,@r0
      0027F1 FD               [12] 1851 	mov	r5,a
      0027F2 EC               [12] 1852 	mov	a,r4
      0027F3 24 00            [12] 1853 	add	a,#_u
      0027F5 F5 82            [12] 1854 	mov	dpl,a
      0027F7 ED               [12] 1855 	mov	a,r5
      0027F8 34 88            [12] 1856 	addc	a,#(_u >> 8)
      0027FA F5 83            [12] 1857 	mov	dph,a
      0027FC E0               [24] 1858 	movx	a,@dptr
      0027FD 2B               [12] 1859 	add	a,r3
      0027FE FB               [12] 1860 	mov	r3,a
                                   1861 ;	life.c:179: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      0027FF E5 10            [12] 1862 	mov	a,_bp
      002801 24 0B            [12] 1863 	add	a,#0x0b
      002803 F8               [12] 1864 	mov	r0,a
      002804 74 41            [12] 1865 	mov	a,#0x41
      002806 26               [12] 1866 	add	a,@r0
      002807 FC               [12] 1867 	mov	r4,a
      002808 E4               [12] 1868 	clr	a
      002809 08               [12] 1869 	inc	r0
      00280A 36               [12] 1870 	addc	a,@r0
      00280B FD               [12] 1871 	mov	r5,a
      00280C C0 07            [24] 1872 	push	ar7
      00280E C0 06            [24] 1873 	push	ar6
      002810 C0 03            [24] 1874 	push	ar3
      002812 74 40            [12] 1875 	mov	a,#0x40
      002814 C0 E0            [24] 1876 	push	acc
      002816 E4               [12] 1877 	clr	a
      002817 C0 E0            [24] 1878 	push	acc
      002819 8C 82            [24] 1879 	mov	dpl,r4
      00281B 8D 83            [24] 1880 	mov	dph,r5
      00281D 12 2B EB         [24] 1881 	lcall	__modsint
      002820 AC 82            [24] 1882 	mov	r4,dpl
      002822 AD 83            [24] 1883 	mov	r5,dph
      002824 15 81            [12] 1884 	dec	sp
      002826 15 81            [12] 1885 	dec	sp
      002828 D0 03            [24] 1886 	pop	ar3
      00282A D0 06            [24] 1887 	pop	ar6
      00282C D0 07            [24] 1888 	pop	ar7
      00282E E5 10            [12] 1889 	mov	a,_bp
      002830 24 0D            [12] 1890 	add	a,#0x0d
      002832 F8               [12] 1891 	mov	r0,a
      002833 A6 04            [24] 1892 	mov	@r0,ar4
      002835 ED               [12] 1893 	mov	a,r5
      002836 C4               [12] 1894 	swap	a
      002837 23               [12] 1895 	rl	a
      002838 54 E0            [12] 1896 	anl	a,#0xe0
      00283A C6               [12] 1897 	xch	a,@r0
      00283B C4               [12] 1898 	swap	a
      00283C 23               [12] 1899 	rl	a
      00283D C6               [12] 1900 	xch	a,@r0
      00283E 66               [12] 1901 	xrl	a,@r0
      00283F C6               [12] 1902 	xch	a,@r0
      002840 54 E0            [12] 1903 	anl	a,#0xe0
      002842 C6               [12] 1904 	xch	a,@r0
      002843 66               [12] 1905 	xrl	a,@r0
      002844 08               [12] 1906 	inc	r0
      002845 F6               [12] 1907 	mov	@r0,a
      002846 E5 10            [12] 1908 	mov	a,_bp
      002848 24 0D            [12] 1909 	add	a,#0x0d
      00284A F8               [12] 1910 	mov	r0,a
      00284B E5 10            [12] 1911 	mov	a,_bp
      00284D 24 05            [12] 1912 	add	a,#0x05
      00284F F9               [12] 1913 	mov	r1,a
      002850 E7               [12] 1914 	mov	a,@r1
      002851 26               [12] 1915 	add	a,@r0
      002852 FA               [12] 1916 	mov	r2,a
      002853 09               [12] 1917 	inc	r1
      002854 E7               [12] 1918 	mov	a,@r1
      002855 08               [12] 1919 	inc	r0
      002856 36               [12] 1920 	addc	a,@r0
      002857 FD               [12] 1921 	mov	r5,a
      002858 EA               [12] 1922 	mov	a,r2
      002859 24 00            [12] 1923 	add	a,#_u
      00285B F5 82            [12] 1924 	mov	dpl,a
      00285D ED               [12] 1925 	mov	a,r5
      00285E 34 88            [12] 1926 	addc	a,#(_u >> 8)
      002860 F5 83            [12] 1927 	mov	dph,a
      002862 E0               [24] 1928 	movx	a,@dptr
      002863 2B               [12] 1929 	add	a,r3
      002864 FB               [12] 1930 	mov	r3,a
                                   1931 ;	life.c:181: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      002865 E5 10            [12] 1932 	mov	a,_bp
      002867 24 0D            [12] 1933 	add	a,#0x0d
      002869 F8               [12] 1934 	mov	r0,a
      00286A E5 10            [12] 1935 	mov	a,_bp
      00286C 24 09            [12] 1936 	add	a,#0x09
      00286E F9               [12] 1937 	mov	r1,a
      00286F E7               [12] 1938 	mov	a,@r1
      002870 26               [12] 1939 	add	a,@r0
      002871 FC               [12] 1940 	mov	r4,a
      002872 09               [12] 1941 	inc	r1
      002873 E7               [12] 1942 	mov	a,@r1
      002874 08               [12] 1943 	inc	r0
      002875 36               [12] 1944 	addc	a,@r0
      002876 FD               [12] 1945 	mov	r5,a
      002877 EC               [12] 1946 	mov	a,r4
      002878 24 00            [12] 1947 	add	a,#_u
      00287A F5 82            [12] 1948 	mov	dpl,a
      00287C ED               [12] 1949 	mov	a,r5
      00287D 34 88            [12] 1950 	addc	a,#(_u >> 8)
      00287F F5 83            [12] 1951 	mov	dph,a
      002881 E0               [24] 1952 	movx	a,@dptr
      002882 2B               [12] 1953 	add	a,r3
      002883 FB               [12] 1954 	mov	r3,a
                                   1955 ;	life.c:182: y1 = 1; x1 = 1;
      002884 78 41            [12] 1956 	mov	r0,#_y1
      002886 76 01            [12] 1957 	mov	@r0,#0x01
      002888 08               [12] 1958 	inc	r0
      002889 76 00            [12] 1959 	mov	@r0,#0x00
      00288B 78 3F            [12] 1960 	mov	r0,#_x1
      00288D 76 01            [12] 1961 	mov	@r0,#0x01
      00288F 08               [12] 1962 	inc	r0
      002890 76 00            [12] 1963 	mov	@r0,#0x00
                                   1964 ;	life.c:183: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      002892 E5 10            [12] 1965 	mov	a,_bp
      002894 24 0D            [12] 1966 	add	a,#0x0d
      002896 F8               [12] 1967 	mov	r0,a
      002897 EE               [12] 1968 	mov	a,r6
      002898 26               [12] 1969 	add	a,@r0
      002899 FE               [12] 1970 	mov	r6,a
      00289A EF               [12] 1971 	mov	a,r7
      00289B 08               [12] 1972 	inc	r0
      00289C 36               [12] 1973 	addc	a,@r0
      00289D FF               [12] 1974 	mov	r7,a
      00289E EE               [12] 1975 	mov	a,r6
      00289F 24 00            [12] 1976 	add	a,#_u
      0028A1 F5 82            [12] 1977 	mov	dpl,a
      0028A3 EF               [12] 1978 	mov	a,r7
      0028A4 34 88            [12] 1979 	addc	a,#(_u >> 8)
      0028A6 F5 83            [12] 1980 	mov	dph,a
      0028A8 E0               [24] 1981 	movx	a,@dptr
      0028A9 2B               [12] 1982 	add	a,r3
      0028AA FF               [12] 1983 	mov	r7,a
      0028AB 78 3C            [12] 1984 	mov	r0,#_n
      0028AD A6 07            [24] 1985 	mov	@r0,ar7
                                   1986 ;	life.c:185: nu[A2D(W, y, x)] = (n == 3) || ((n == 2) && u[A2D(W, y, x)]);
      0028AF A8 10            [24] 1987 	mov	r0,_bp
      0028B1 08               [12] 1988 	inc	r0
      0028B2 E6               [12] 1989 	mov	a,@r0
      0028B3 24 00            [12] 1990 	add	a,#_nu
      0028B5 FD               [12] 1991 	mov	r5,a
      0028B6 08               [12] 1992 	inc	r0
      0028B7 E6               [12] 1993 	mov	a,@r0
      0028B8 34 90            [12] 1994 	addc	a,#(_nu >> 8)
      0028BA FE               [12] 1995 	mov	r6,a
      0028BB BF 03 02         [24] 1996 	cjne	r7,#0x03,00454$
      0028BE 80 28            [24] 1997 	sjmp	00218$
      0028C0                       1998 00454$:
      0028C0 BF 02 21         [24] 1999 	cjne	r7,#0x02,00217$
      0028C3 E5 10            [12] 2000 	mov	a,_bp
      0028C5 24 03            [12] 2001 	add	a,#0x03
      0028C7 F8               [12] 2002 	mov	r0,a
      0028C8 E5 10            [12] 2003 	mov	a,_bp
      0028CA 24 07            [12] 2004 	add	a,#0x07
      0028CC F9               [12] 2005 	mov	r1,a
      0028CD E7               [12] 2006 	mov	a,@r1
      0028CE 26               [12] 2007 	add	a,@r0
      0028CF FC               [12] 2008 	mov	r4,a
      0028D0 09               [12] 2009 	inc	r1
      0028D1 E7               [12] 2010 	mov	a,@r1
      0028D2 08               [12] 2011 	inc	r0
      0028D3 36               [12] 2012 	addc	a,@r0
      0028D4 FF               [12] 2013 	mov	r7,a
      0028D5 EC               [12] 2014 	mov	a,r4
      0028D6 24 00            [12] 2015 	add	a,#_u
      0028D8 FC               [12] 2016 	mov	r4,a
      0028D9 EF               [12] 2017 	mov	a,r7
      0028DA 34 88            [12] 2018 	addc	a,#(_u >> 8)
      0028DC FF               [12] 2019 	mov	r7,a
      0028DD 8C 82            [24] 2020 	mov	dpl,r4
      0028DF 8F 83            [24] 2021 	mov	dph,r7
      0028E1 E0               [24] 2022 	movx	a,@dptr
      0028E2 70 04            [24] 2023 	jnz	00218$
      0028E4                       2024 00217$:
                                   2025 ;	assignBit
      0028E4 C2 00            [12] 2026 	clr	b0
      0028E6 80 02            [24] 2027 	sjmp	00219$
      0028E8                       2028 00218$:
                                   2029 ;	assignBit
      0028E8 D2 00            [12] 2030 	setb	b0
      0028EA                       2031 00219$:
      0028EA A2 00            [12] 2032 	mov	c,b0
      0028EC E4               [12] 2033 	clr	a
      0028ED 33               [12] 2034 	rlc	a
      0028EE 8D 82            [24] 2035 	mov	dpl,r5
      0028F0 8E 83            [24] 2036 	mov	dph,r6
      0028F2 F0               [24] 2037 	movx	@dptr,a
                                   2038 ;	life.c:186: cycle2 |= pu[A2D(W, y, x)] ^ nu[A2D(W, y, x)];
      0028F3 78 35            [12] 2039 	mov	r0,#_y
      0028F5 86 06            [24] 2040 	mov	ar6,@r0
      0028F7 08               [12] 2041 	inc	r0
      0028F8 E6               [12] 2042 	mov	a,@r0
      0028F9 C4               [12] 2043 	swap	a
      0028FA 23               [12] 2044 	rl	a
      0028FB 54 E0            [12] 2045 	anl	a,#0xe0
      0028FD CE               [12] 2046 	xch	a,r6
      0028FE C4               [12] 2047 	swap	a
      0028FF 23               [12] 2048 	rl	a
      002900 CE               [12] 2049 	xch	a,r6
      002901 6E               [12] 2050 	xrl	a,r6
      002902 CE               [12] 2051 	xch	a,r6
      002903 54 E0            [12] 2052 	anl	a,#0xe0
      002905 CE               [12] 2053 	xch	a,r6
      002906 6E               [12] 2054 	xrl	a,r6
      002907 FF               [12] 2055 	mov	r7,a
      002908 78 33            [12] 2056 	mov	r0,#_x
      00290A E6               [12] 2057 	mov	a,@r0
      00290B 2E               [12] 2058 	add	a,r6
      00290C FE               [12] 2059 	mov	r6,a
      00290D 08               [12] 2060 	inc	r0
      00290E E6               [12] 2061 	mov	a,@r0
      00290F 3F               [12] 2062 	addc	a,r7
      002910 FF               [12] 2063 	mov	r7,a
      002911 EE               [12] 2064 	mov	a,r6
      002912 24 00            [12] 2065 	add	a,#_pu
      002914 F5 82            [12] 2066 	mov	dpl,a
      002916 EF               [12] 2067 	mov	a,r7
      002917 34 80            [12] 2068 	addc	a,#(_pu >> 8)
      002919 F5 83            [12] 2069 	mov	dph,a
      00291B E0               [24] 2070 	movx	a,@dptr
      00291C FD               [12] 2071 	mov	r5,a
      00291D EE               [12] 2072 	mov	a,r6
      00291E 24 00            [12] 2073 	add	a,#_nu
      002920 F5 82            [12] 2074 	mov	dpl,a
      002922 EF               [12] 2075 	mov	a,r7
      002923 34 90            [12] 2076 	addc	a,#(_nu >> 8)
      002925 F5 83            [12] 2077 	mov	dph,a
      002927 E0               [24] 2078 	movx	a,@dptr
      002928 FC               [12] 2079 	mov	r4,a
      002929 6D               [12] 2080 	xrl	a,r5
      00292A 78 3E            [12] 2081 	mov	r0,#_cycle2
      00292C 46               [12] 2082 	orl	a,@r0
      00292D F6               [12] 2083 	mov	@r0,a
                                   2084 ;	life.c:187: fixed |= u[A2D(W, y, x)] ^ nu[A2D(W, y, x)];
      00292E EE               [12] 2085 	mov	a,r6
      00292F 24 00            [12] 2086 	add	a,#_u
      002931 F5 82            [12] 2087 	mov	dpl,a
      002933 EF               [12] 2088 	mov	a,r7
      002934 34 88            [12] 2089 	addc	a,#(_u >> 8)
      002936 F5 83            [12] 2090 	mov	dph,a
      002938 E0               [24] 2091 	movx	a,@dptr
      002939 FF               [12] 2092 	mov	r7,a
      00293A EC               [12] 2093 	mov	a,r4
      00293B 6F               [12] 2094 	xrl	a,r7
      00293C 78 3D            [12] 2095 	mov	r0,#_fixed
      00293E 46               [12] 2096 	orl	a,@r0
      00293F F6               [12] 2097 	mov	@r0,a
                                   2098 ;	life.c:163: for (x = 0; x < W; x++) {
      002940 78 33            [12] 2099 	mov	r0,#_x
      002942 06               [12] 2100 	inc	@r0
      002943 B6 00 02         [24] 2101 	cjne	@r0,#0x00,00458$
      002946 08               [12] 2102 	inc	r0
      002947 06               [12] 2103 	inc	@r0
      002948                       2104 00458$:
      002948 78 33            [12] 2105 	mov	r0,#_x
      00294A C3               [12] 2106 	clr	c
      00294B E6               [12] 2107 	mov	a,@r0
      00294C 94 20            [12] 2108 	subb	a,#0x20
      00294E 08               [12] 2109 	inc	r0
      00294F E6               [12] 2110 	mov	a,@r0
      002950 64 80            [12] 2111 	xrl	a,#0x80
      002952 94 80            [12] 2112 	subb	a,#0x80
      002954 50 03            [24] 2113 	jnc	00459$
      002956 02 25 DB         [24] 2114 	ljmp	00190$
      002959                       2115 00459$:
                                   2116 ;	life.c:160: for (y = 0; y < H; y++) {
      002959 78 35            [12] 2117 	mov	r0,#_y
      00295B 06               [12] 2118 	inc	@r0
      00295C B6 00 02         [24] 2119 	cjne	@r0,#0x00,00460$
      00295F 08               [12] 2120 	inc	r0
      002960 06               [12] 2121 	inc	@r0
      002961                       2122 00460$:
      002961 78 35            [12] 2123 	mov	r0,#_y
      002963 C3               [12] 2124 	clr	c
      002964 E6               [12] 2125 	mov	a,@r0
      002965 94 40            [12] 2126 	subb	a,#0x40
      002967 08               [12] 2127 	inc	r0
      002968 E6               [12] 2128 	mov	a,@r0
      002969 64 80            [12] 2129 	xrl	a,#0x80
      00296B 94 80            [12] 2130 	subb	a,#0x80
      00296D 50 03            [24] 2131 	jnc	00461$
      00296F 02 25 B3         [24] 2132 	ljmp	00192$
      002972                       2133 00461$:
                                   2134 ;	life.c:191: cycle2 = !cycle2;
      002972 78 3E            [12] 2135 	mov	r0,#_cycle2
      002974 E6               [12] 2136 	mov	a,@r0
      002975 B4 01 00         [24] 2137 	cjne	a,#0x01,00462$
      002978                       2138 00462$:
      002978 92 00            [24] 2139 	mov	b0,c
      00297A 78 3E            [12] 2140 	mov	r0,#_cycle2
      00297C E4               [12] 2141 	clr	a
      00297D 33               [12] 2142 	rlc	a
      00297E F6               [12] 2143 	mov	@r0,a
                                   2144 ;	life.c:192: fixed = !fixed;
      00297F 78 3D            [12] 2145 	mov	r0,#_fixed
      002981 E6               [12] 2146 	mov	a,@r0
      002982 B4 01 00         [24] 2147 	cjne	a,#0x01,00463$
      002985                       2148 00463$:
      002985 92 00            [24] 2149 	mov	b0,c
      002987 78 3D            [12] 2150 	mov	r0,#_fixed
      002989 E4               [12] 2151 	clr	a
      00298A 33               [12] 2152 	rlc	a
      00298B F6               [12] 2153 	mov	@r0,a
                                   2154 ;	life.c:194: memcpy(pu, u, sizeof (u));
      00298C E4               [12] 2155 	clr	a
      00298D C0 E0            [24] 2156 	push	acc
      00298F 74 08            [12] 2157 	mov	a,#0x08
      002991 C0 E0            [24] 2158 	push	acc
      002993 74 00            [12] 2159 	mov	a,#_u
      002995 C0 E0            [24] 2160 	push	acc
      002997 74 88            [12] 2161 	mov	a,#(_u >> 8)
      002999 C0 E0            [24] 2162 	push	acc
      00299B E4               [12] 2163 	clr	a
      00299C C0 E0            [24] 2164 	push	acc
      00299E 90 80 00         [24] 2165 	mov	dptr,#_pu
      0029A1 75 F0 00         [24] 2166 	mov	b,#0x00
      0029A4 12 2A AB         [24] 2167 	lcall	___memcpy
      0029A7 E5 81            [12] 2168 	mov	a,sp
      0029A9 24 FB            [12] 2169 	add	a,#0xfb
      0029AB F5 81            [12] 2170 	mov	sp,a
                                   2171 ;	life.c:195: memcpy(u, nu, sizeof (nu));
      0029AD E4               [12] 2172 	clr	a
      0029AE C0 E0            [24] 2173 	push	acc
      0029B0 74 08            [12] 2174 	mov	a,#0x08
      0029B2 C0 E0            [24] 2175 	push	acc
      0029B4 74 00            [12] 2176 	mov	a,#_nu
      0029B6 C0 E0            [24] 2177 	push	acc
      0029B8 74 90            [12] 2178 	mov	a,#(_nu >> 8)
      0029BA C0 E0            [24] 2179 	push	acc
      0029BC E4               [12] 2180 	clr	a
      0029BD C0 E0            [24] 2181 	push	acc
      0029BF 90 88 00         [24] 2182 	mov	dptr,#_u
      0029C2 75 F0 00         [24] 2183 	mov	b,#0x00
      0029C5 12 2A AB         [24] 2184 	lcall	___memcpy
      0029C8 E5 81            [12] 2185 	mov	a,sp
      0029CA 24 FB            [12] 2186 	add	a,#0xfb
      0029CC F5 81            [12] 2187 	mov	sp,a
                                   2188 ;	life.c:233: if (fixed || cycle2) {
      0029CE 78 3D            [12] 2189 	mov	r0,#_fixed
      0029D0 E6               [12] 2190 	mov	a,@r0
      0029D1 70 08            [24] 2191 	jnz	00123$
      0029D3 78 3E            [12] 2192 	mov	r0,#_cycle2
      0029D5 E6               [12] 2193 	mov	a,@r0
      0029D6 70 03            [24] 2194 	jnz	00465$
      0029D8 02 25 8B         [24] 2195 	ljmp	00205$
      0029DB                       2196 00465$:
      0029DB                       2197 00123$:
                                   2198 ;	life.c:234: printstr("DONE ");
      0029DB 7D 23            [12] 2199 	mov	r5,#___str_6
      0029DD 7E 2D            [12] 2200 	mov	r6,#(___str_6 >> 8)
      0029DF 7F 80            [12] 2201 	mov	r7,#0x80
                                   2202 ;	life.c:49: return;
      0029E1                       2203 00195$:
                                   2204 ;	life.c:47: for (; *s; s++) putchar(*s);
      0029E1 8D 82            [24] 2205 	mov	dpl,r5
      0029E3 8E 83            [24] 2206 	mov	dph,r6
      0029E5 8F F0            [24] 2207 	mov	b,r7
      0029E7 12 2B CF         [24] 2208 	lcall	__gptrget
      0029EA FC               [12] 2209 	mov	r4,a
      0029EB 60 10            [24] 2210 	jz	00165$
      0029ED 7B 00            [12] 2211 	mov	r3,#0x00
      0029EF 8C 82            [24] 2212 	mov	dpl,r4
      0029F1 8B 83            [24] 2213 	mov	dph,r3
      0029F3 12 20 C5         [24] 2214 	lcall	_putchar
      0029F6 0D               [12] 2215 	inc	r5
                                   2216 ;	life.c:234: printstr("DONE ");
      0029F7 BD 00 E7         [24] 2217 	cjne	r5,#0x00,00195$
      0029FA 0E               [12] 2218 	inc	r6
      0029FB 80 E4            [24] 2219 	sjmp	00195$
      0029FD                       2220 00165$:
                                   2221 ;	life.c:235: if (fixed) printstr("FIXED\r\n");
      0029FD 78 3D            [12] 2222 	mov	r0,#_fixed
      0029FF E6               [12] 2223 	mov	a,@r0
      002A00 60 22            [24] 2224 	jz	00121$
      002A02 7D 29            [12] 2225 	mov	r5,#___str_7
      002A04 7E 2D            [12] 2226 	mov	r6,#(___str_7 >> 8)
      002A06 7F 80            [12] 2227 	mov	r7,#0x80
                                   2228 ;	life.c:49: return;
      002A08                       2229 00198$:
                                   2230 ;	life.c:47: for (; *s; s++) putchar(*s);
      002A08 8D 82            [24] 2231 	mov	dpl,r5
      002A0A 8E 83            [24] 2232 	mov	dph,r6
      002A0C 8F F0            [24] 2233 	mov	b,r7
      002A0E 12 2B CF         [24] 2234 	lcall	__gptrget
      002A11 FC               [12] 2235 	mov	r4,a
      002A12 60 32            [24] 2236 	jz	00122$
      002A14 7B 00            [12] 2237 	mov	r3,#0x00
      002A16 8C 82            [24] 2238 	mov	dpl,r4
      002A18 8B 83            [24] 2239 	mov	dph,r3
      002A1A 12 20 C5         [24] 2240 	lcall	_putchar
      002A1D 0D               [12] 2241 	inc	r5
                                   2242 ;	life.c:235: if (fixed) printstr("FIXED\r\n");
      002A1E BD 00 E7         [24] 2243 	cjne	r5,#0x00,00198$
      002A21 0E               [12] 2244 	inc	r6
      002A22 80 E4            [24] 2245 	sjmp	00198$
      002A24                       2246 00121$:
                                   2247 ;	life.c:236: else printstr("CYCLE2\r\n");
      002A24 7D 31            [12] 2248 	mov	r5,#___str_8
      002A26 7E 2D            [12] 2249 	mov	r6,#(___str_8 >> 8)
      002A28 7F 80            [12] 2250 	mov	r7,#0x80
                                   2251 ;	life.c:49: return;
      002A2A                       2252 00201$:
                                   2253 ;	life.c:47: for (; *s; s++) putchar(*s);
      002A2A 8D 82            [24] 2254 	mov	dpl,r5
      002A2C 8E 83            [24] 2255 	mov	dph,r6
      002A2E 8F F0            [24] 2256 	mov	b,r7
      002A30 12 2B CF         [24] 2257 	lcall	__gptrget
      002A33 FC               [12] 2258 	mov	r4,a
      002A34 60 10            [24] 2259 	jz	00122$
      002A36 7B 00            [12] 2260 	mov	r3,#0x00
      002A38 8C 82            [24] 2261 	mov	dpl,r4
      002A3A 8B 83            [24] 2262 	mov	dph,r3
      002A3C 12 20 C5         [24] 2263 	lcall	_putchar
      002A3F 0D               [12] 2264 	inc	r5
                                   2265 ;	life.c:236: else printstr("CYCLE2\r\n");
      002A40 BD 00 E7         [24] 2266 	cjne	r5,#0x00,00201$
      002A43 0E               [12] 2267 	inc	r6
      002A44 80 E4            [24] 2268 	sjmp	00201$
      002A46                       2269 00122$:
                                   2270 ;	life.c:237: (void)getchar();
      002A46 12 20 CA         [24] 2271 	lcall	_getchar
                                   2272 ;	life.c:238: break;
      002A49                       2273 00126$:
                                   2274 ;	life.c:242: if (i1) {
      002A49 78 32            [12] 2275 	mov	r0,#_i1
      002A4B E6               [12] 2276 	mov	a,@r0
      002A4C 60 25            [24] 2277 	jz	00211$
                                   2278 ;	life.c:243: printstr("BREAK\r\n");
      002A4E 7D 3A            [12] 2279 	mov	r5,#___str_9
      002A50 7E 2D            [12] 2280 	mov	r6,#(___str_9 >> 8)
      002A52 7F 80            [12] 2281 	mov	r7,#0x80
                                   2282 ;	life.c:49: return;
      002A54                       2283 00208$:
                                   2284 ;	life.c:47: for (; *s; s++) putchar(*s);
      002A54 8D 82            [24] 2285 	mov	dpl,r5
      002A56 8E 83            [24] 2286 	mov	dph,r6
      002A58 8F F0            [24] 2287 	mov	b,r7
      002A5A 12 2B CF         [24] 2288 	lcall	__gptrget
      002A5D FC               [12] 2289 	mov	r4,a
      002A5E 60 10            [24] 2290 	jz	00171$
      002A60 7B 00            [12] 2291 	mov	r3,#0x00
      002A62 8C 82            [24] 2292 	mov	dpl,r4
      002A64 8B 83            [24] 2293 	mov	dph,r3
      002A66 12 20 C5         [24] 2294 	lcall	_putchar
      002A69 0D               [12] 2295 	inc	r5
                                   2296 ;	life.c:243: printstr("BREAK\r\n");
      002A6A BD 00 E7         [24] 2297 	cjne	r5,#0x00,00208$
      002A6D 0E               [12] 2298 	inc	r6
      002A6E 80 E4            [24] 2299 	sjmp	00208$
      002A70                       2300 00171$:
                                   2301 ;	life.c:244: (void)getchar();
      002A70 12 20 CA         [24] 2302 	lcall	_getchar
      002A73                       2303 00211$:
                                   2304 ;	life.c:207: for (i0 = 0; !i0; ) {		
      002A73 78 31            [12] 2305 	mov	r0,#_i0
      002A75 E6               [12] 2306 	mov	a,@r0
      002A76 70 03            [24] 2307 	jnz	00476$
      002A78 02 23 00         [24] 2308 	ljmp	00210$
      002A7B                       2309 00476$:
                                   2310 ;	life.c:248: terminate:
      002A7B                       2311 00130$:
                                   2312 ;	life.c:249: EA = 0;
                                   2313 ;	assignBit
      002A7B C2 AF            [12] 2314 	clr	_EA
                                   2315 ;	life.c:250: printstr("TERM\r\n");
      002A7D 7D 42            [12] 2316 	mov	r5,#___str_10
      002A7F 7E 2D            [12] 2317 	mov	r6,#(___str_10 >> 8)
      002A81 7F 80            [12] 2318 	mov	r7,#0x80
                                   2319 ;	life.c:49: return;
      002A83                       2320 00213$:
                                   2321 ;	life.c:47: for (; *s; s++) putchar(*s);
      002A83 8D 82            [24] 2322 	mov	dpl,r5
      002A85 8E 83            [24] 2323 	mov	dph,r6
      002A87 8F F0            [24] 2324 	mov	b,r7
      002A89 12 2B CF         [24] 2325 	lcall	__gptrget
      002A8C FC               [12] 2326 	mov	r4,a
      002A8D 60 10            [24] 2327 	jz	00173$
      002A8F 7B 00            [12] 2328 	mov	r3,#0x00
      002A91 8C 82            [24] 2329 	mov	dpl,r4
      002A93 8B 83            [24] 2330 	mov	dph,r3
      002A95 12 20 C5         [24] 2331 	lcall	_putchar
      002A98 0D               [12] 2332 	inc	r5
                                   2333 ;	life.c:250: printstr("TERM\r\n");
      002A99 BD 00 E7         [24] 2334 	cjne	r5,#0x00,00213$
      002A9C 0E               [12] 2335 	inc	r6
      002A9D 80 E4            [24] 2336 	sjmp	00213$
      002A9F                       2337 00173$:
                                   2338 ;	life.c:251: (void)getchar();
      002A9F 12 20 CA         [24] 2339 	lcall	_getchar
                                   2340 ;	life.c:255: __endasm;
      002AA2 02 00 00         [24] 2341 	ljmp	0
                                   2342 ;	life.c:256: }
      002AA5 85 10 81         [24] 2343 	mov	sp,_bp
      002AA8 D0 10            [24] 2344 	pop	_bp
      002AAA 22               [24] 2345 	ret
                                   2346 	.area CSEG    (CODE)
                                   2347 	.area CONST   (CODE)
                                   2348 	.area CONST   (CODE)
      002CF7                       2349 ___str_0:
      002CF7 1B                    2350 	.db 0x1b
      002CF8 5B 32 4A              2351 	.ascii "[2J"
      002CFB 1B                    2352 	.db 0x1b
      002CFC 5B 6D                 2353 	.ascii "[m"
      002CFE 00                    2354 	.db 0x00
                                   2355 	.area CSEG    (CODE)
                                   2356 	.area CONST   (CODE)
      002CFF                       2357 ___str_1:
      002CFF 0D                    2358 	.db 0x0d
      002D00 0A                    2359 	.db 0x0a
      002D01 00                    2360 	.db 0x00
                                   2361 	.area CSEG    (CODE)
                                   2362 	.area CONST   (CODE)
      002D02                       2363 ___str_2:
      002D02 4C 4F 41 44 20 3C     2364 	.ascii "LOAD <"
      002D08 00                    2365 	.db 0x00
                                   2366 	.area CSEG    (CODE)
                                   2367 	.area CONST   (CODE)
      002D09                       2368 ___str_3:
      002D09 3E                    2369 	.ascii ">"
      002D0A 0D                    2370 	.db 0x0d
      002D0B 0A                    2371 	.db 0x0a
      002D0C 00                    2372 	.db 0x00
                                   2373 	.area CSEG    (CODE)
                                   2374 	.area CONST   (CODE)
      002D0D                       2375 ___str_4:
      002D0D 1B                    2376 	.db 0x1b
      002D0E 5B 32 4A              2377 	.ascii "[2J"
      002D11 1B                    2378 	.db 0x1b
      002D12 5B 6D 49 4E 49 54     2379 	.ascii "[mINIT"
      002D18 0D                    2380 	.db 0x0d
      002D19 0A                    2381 	.db 0x0a
      002D1A 00                    2382 	.db 0x00
                                   2383 	.area CSEG    (CODE)
                                   2384 	.area CONST   (CODE)
      002D1B                       2385 ___str_5:
      002D1B 52 45 41 44 59        2386 	.ascii "READY"
      002D20 0D                    2387 	.db 0x0d
      002D21 0A                    2388 	.db 0x0a
      002D22 00                    2389 	.db 0x00
                                   2390 	.area CSEG    (CODE)
                                   2391 	.area CONST   (CODE)
      002D23                       2392 ___str_6:
      002D23 44 4F 4E 45 20        2393 	.ascii "DONE "
      002D28 00                    2394 	.db 0x00
                                   2395 	.area CSEG    (CODE)
                                   2396 	.area CONST   (CODE)
      002D29                       2397 ___str_7:
      002D29 46 49 58 45 44        2398 	.ascii "FIXED"
      002D2E 0D                    2399 	.db 0x0d
      002D2F 0A                    2400 	.db 0x0a
      002D30 00                    2401 	.db 0x00
                                   2402 	.area CSEG    (CODE)
                                   2403 	.area CONST   (CODE)
      002D31                       2404 ___str_8:
      002D31 43 59 43 4C 45 32     2405 	.ascii "CYCLE2"
      002D37 0D                    2406 	.db 0x0d
      002D38 0A                    2407 	.db 0x0a
      002D39 00                    2408 	.db 0x00
                                   2409 	.area CSEG    (CODE)
                                   2410 	.area CONST   (CODE)
      002D3A                       2411 ___str_9:
      002D3A 42 52 45 41 4B        2412 	.ascii "BREAK"
      002D3F 0D                    2413 	.db 0x0d
      002D40 0A                    2414 	.db 0x0a
      002D41 00                    2415 	.db 0x00
                                   2416 	.area CSEG    (CODE)
                                   2417 	.area CONST   (CODE)
      002D42                       2418 ___str_10:
      002D42 54 45 52 4D           2419 	.ascii "TERM"
      002D46 0D                    2420 	.db 0x0d
      002D47 0A                    2421 	.db 0x0a
      002D48 00                    2422 	.db 0x00
                                   2423 	.area CSEG    (CODE)
                                   2424 	.area XINIT   (CODE)
                                   2425 	.area CABS    (ABS,CODE)
