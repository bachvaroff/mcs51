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
      008000                        363 	.ds 4096
      009000                        364 _u:
      009000                        365 	.ds 4096
      00A000                        366 _nu:
      00A000                        367 	.ds 4096
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
                                    443 ;	life.c:159: __idata static const char busy[4] = { '\\', '|', '/', '-' };
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
      002016 02 22 DC         [24]  460 	ljmp	_main
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
                                    580 ;	life.c:98: printstr("\033[2J\033[mGEN ");
      0020F3 7D F9            [12]  581 	mov	r5,#___str_0
      0020F5 7E 2C            [12]  582 	mov	r6,#(___str_0 >> 8)
      0020F7 7F 80            [12]  583 	mov	r7,#0x80
                                    584 ;	life.c:49: return;
      0020F9                        585 00121$:
                                    586 ;	life.c:47: for (; *s; s++) putchar(*s);
      0020F9 8D 82            [24]  587 	mov	dpl,r5
      0020FB 8E 83            [24]  588 	mov	dph,r6
      0020FD 8F F0            [24]  589 	mov	b,r7
      0020FF 12 2B D1         [24]  590 	lcall	__gptrget
      002102 FC               [12]  591 	mov	r4,a
      002103 60 10            [24]  592 	jz	00109$
      002105 7B 00            [12]  593 	mov	r3,#0x00
      002107 8C 82            [24]  594 	mov	dpl,r4
      002109 8B 83            [24]  595 	mov	dph,r3
      00210B 12 20 C5         [24]  596 	lcall	_putchar
      00210E 0D               [12]  597 	inc	r5
                                    598 ;	life.c:98: printstr("\033[2J\033[mGEN ");
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
      0021F7 7D 05            [12]  744 	mov	r5,#___str_1
      0021F9 7E 2D            [12]  745 	mov	r6,#(___str_1 >> 8)
      0021FB 7F 80            [12]  746 	mov	r7,#0x80
                                    747 ;	life.c:49: return;
      0021FD                        748 00124$:
                                    749 ;	life.c:47: for (; *s; s++) putchar(*s);
      0021FD 8D 82            [24]  750 	mov	dpl,r5
      0021FF 8E 83            [24]  751 	mov	dph,r6
      002201 8F F0            [24]  752 	mov	b,r7
      002203 12 2B D1         [24]  753 	lcall	__gptrget
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
                                    811 ;	life.c:106: if (u[A2D(W, y, x)]) putchar('1');
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
      002272 34 90            [12]  841 	addc	a,#(_u >> 8)
      002274 FF               [12]  842 	mov	r7,a
      002275 8E 82            [24]  843 	mov	dpl,r6
      002277 8F 83            [24]  844 	mov	dph,r7
      002279 E0               [24]  845 	movx	a,@dptr
      00227A 60 08            [24]  846 	jz	00104$
      00227C 90 00 31         [24]  847 	mov	dptr,#0x0031
      00227F 12 20 C5         [24]  848 	lcall	_putchar
      002282 80 06            [24]  849 	sjmp	00127$
      002284                        850 00104$:
                                    851 ;	life.c:107: else putchar('0');
      002284 90 00 30         [24]  852 	mov	dptr,#0x0030
      002287 12 20 C5         [24]  853 	lcall	_putchar
      00228A                        854 00127$:
                                    855 ;	life.c:105: for (y = 0; y < H; y++)
      00228A 78 35            [12]  856 	mov	r0,#_y
      00228C 06               [12]  857 	inc	@r0
      00228D B6 00 02         [24]  858 	cjne	@r0,#0x00,00203$
      002290 08               [12]  859 	inc	r0
      002291 06               [12]  860 	inc	@r0
      002292                        861 00203$:
      002292 78 35            [12]  862 	mov	r0,#_y
      002294 C3               [12]  863 	clr	c
      002295 E6               [12]  864 	mov	a,@r0
      002296 94 80            [12]  865 	subb	a,#0x80
      002298 08               [12]  866 	inc	r0
      002299 E6               [12]  867 	mov	a,@r0
      00229A 64 80            [12]  868 	xrl	a,#0x80
      00229C 94 80            [12]  869 	subb	a,#0x80
      00229E 40 AF            [24]  870 	jc	00126$
                                    871 ;	life.c:108: printstr("\r\n");
      0022A0 7D 05            [12]  872 	mov	r5,#___str_1
      0022A2 7E 2D            [12]  873 	mov	r6,#(___str_1 >> 8)
      0022A4 7F 80            [12]  874 	mov	r7,#0x80
                                    875 ;	life.c:49: return;
      0022A6                        876 00129$:
                                    877 ;	life.c:47: for (; *s; s++) putchar(*s);
      0022A6 8D 82            [24]  878 	mov	dpl,r5
      0022A8 8E 83            [24]  879 	mov	dph,r6
      0022AA 8F F0            [24]  880 	mov	b,r7
      0022AC 12 2B D1         [24]  881 	lcall	__gptrget
      0022AF FC               [12]  882 	mov	r4,a
      0022B0 60 10            [24]  883 	jz	00119$
      0022B2 7B 00            [12]  884 	mov	r3,#0x00
      0022B4 8C 82            [24]  885 	mov	dpl,r4
      0022B6 8B 83            [24]  886 	mov	dph,r3
      0022B8 12 20 C5         [24]  887 	lcall	_putchar
      0022BB 0D               [12]  888 	inc	r5
                                    889 ;	life.c:108: printstr("\r\n");
      0022BC BD 00 E7         [24]  890 	cjne	r5,#0x00,00129$
      0022BF 0E               [12]  891 	inc	r6
      0022C0 80 E4            [24]  892 	sjmp	00129$
      0022C2                        893 00119$:
                                    894 ;	life.c:104: for (x = 0; x < W; x++) {
      0022C2 78 33            [12]  895 	mov	r0,#_x
      0022C4 06               [12]  896 	inc	@r0
      0022C5 B6 00 02         [24]  897 	cjne	@r0,#0x00,00207$
      0022C8 08               [12]  898 	inc	r0
      0022C9 06               [12]  899 	inc	@r0
      0022CA                        900 00207$:
      0022CA 78 33            [12]  901 	mov	r0,#_x
      0022CC C3               [12]  902 	clr	c
      0022CD E6               [12]  903 	mov	a,@r0
      0022CE 94 20            [12]  904 	subb	a,#0x20
      0022D0 08               [12]  905 	inc	r0
      0022D1 E6               [12]  906 	mov	a,@r0
      0022D2 64 80            [12]  907 	xrl	a,#0x80
      0022D4 94 80            [12]  908 	subb	a,#0x80
      0022D6 50 03            [24]  909 	jnc	00208$
      0022D8 02 22 49         [24]  910 	ljmp	00131$
      0022DB                        911 00208$:
                                    912 ;	life.c:111: return;
                                    913 ;	life.c:112: }
      0022DB 22               [24]  914 	ret
                                    915 ;------------------------------------------------------------
                                    916 ;Allocation info for local variables in function 'main'
                                    917 ;------------------------------------------------------------
                                    918 ;__2621440019              Allocated to registers 
                                    919 ;s                         Allocated to registers r5 r6 r7 
                                    920 ;__1310720013              Allocated to registers 
                                    921 ;s                         Allocated to registers r5 r6 r7 
                                    922 ;__1310720015              Allocated to registers r6 r7 
                                    923 ;a                         Allocated to registers r4 r5 
                                    924 ;__1310720017              Allocated to registers 
                                    925 ;s                         Allocated to registers r5 r6 r7 
                                    926 ;__2621440023              Allocated to registers 
                                    927 ;s                         Allocated to registers r5 r6 r7 
                                    928 ;__4587520027              Allocated to registers 
                                    929 ;s                         Allocated to registers r5 r6 r7 
                                    930 ;__4587520029              Allocated to registers 
                                    931 ;s                         Allocated to registers r5 r6 r7 
                                    932 ;__4587520031              Allocated to registers 
                                    933 ;s                         Allocated to registers r5 r6 r7 
                                    934 ;__3276800033              Allocated to registers 
                                    935 ;s                         Allocated to registers r5 r6 r7 
                                    936 ;__1310720035              Allocated to registers 
                                    937 ;s                         Allocated to registers r5 r6 r7 
                                    938 ;sloc0                     Allocated to stack - _bp +1
                                    939 ;sloc1                     Allocated to stack - _bp +3
                                    940 ;sloc2                     Allocated to stack - _bp +5
                                    941 ;sloc3                     Allocated to stack - _bp +7
                                    942 ;sloc4                     Allocated to stack - _bp +9
                                    943 ;sloc5                     Allocated to stack - _bp +11
                                    944 ;sloc6                     Allocated to stack - _bp +13
                                    945 ;------------------------------------------------------------
                                    946 ;	life.c:206: void main(void) {
                                    947 ;	-----------------------------------------
                                    948 ;	 function main
                                    949 ;	-----------------------------------------
      0022DC                        950 _main:
      0022DC C0 10            [24]  951 	push	_bp
      0022DE E5 81            [12]  952 	mov	a,sp
      0022E0 F5 10            [12]  953 	mov	_bp,a
      0022E2 24 0E            [12]  954 	add	a,#0x0e
      0022E4 F5 81            [12]  955 	mov	sp,a
                                    956 ;	life.c:207: IT0 = 1;
                                    957 ;	assignBit
      0022E6 D2 88            [12]  958 	setb	_IT0
                                    959 ;	life.c:208: IT1 = 1;
                                    960 ;	assignBit
      0022E8 D2 8A            [12]  961 	setb	_IT1
                                    962 ;	life.c:209: EX0 = 1;
                                    963 ;	assignBit
      0022EA D2 A8            [12]  964 	setb	_EX0
                                    965 ;	life.c:210: EX1 = 1;
                                    966 ;	assignBit
      0022EC D2 AA            [12]  967 	setb	_EX1
                                    968 ;	life.c:211: EA = 1;
                                    969 ;	assignBit
      0022EE D2 AF            [12]  970 	setb	_EA
                                    971 ;	life.c:213: for (i0 = 0; !i0; ) {		
      0022F0 78 31            [12]  972 	mov	r0,#_i0
      0022F2 76 00            [12]  973 	mov	@r0,#0x00
      0022F4                        974 00220$:
                                    975 ;	life.c:214: printstr("\033[2J\033[mLIFE INIT\r\n");
      0022F4 7D 13            [12]  976 	mov	r5,#___str_4
      0022F6 7E 2D            [12]  977 	mov	r6,#(___str_4 >> 8)
      0022F8 7F 80            [12]  978 	mov	r7,#0x80
                                    979 ;	life.c:49: return;
      0022FA                        980 00186$:
                                    981 ;	life.c:47: for (; *s; s++) putchar(*s);
      0022FA 8D 82            [24]  982 	mov	dpl,r5
      0022FC 8E 83            [24]  983 	mov	dph,r6
      0022FE 8F F0            [24]  984 	mov	b,r7
      002300 12 2B D1         [24]  985 	lcall	__gptrget
      002303 FC               [12]  986 	mov	r4,a
      002304 60 10            [24]  987 	jz	00108$
      002306 7B 00            [12]  988 	mov	r3,#0x00
      002308 8C 82            [24]  989 	mov	dpl,r4
      00230A 8B 83            [24]  990 	mov	dph,r3
      00230C 12 20 C5         [24]  991 	lcall	_putchar
      00230F 0D               [12]  992 	inc	r5
                                    993 ;	life.c:215: while (1) {
      002310 BD 00 E7         [24]  994 	cjne	r5,#0x00,00186$
      002313 0E               [12]  995 	inc	r6
      002314 80 E4            [24]  996 	sjmp	00186$
      002316                        997 00108$:
                                    998 ;	life.c:216: c = toupper(getchar());
      002316 12 20 CA         [24]  999 	lcall	_getchar
      002319 12 2B AA         [24] 1000 	lcall	_toupper
      00231C AE 82            [24] 1001 	mov	r6,dpl
      00231E AF 83            [24] 1002 	mov	r7,dph
      002320 78 39            [12] 1003 	mov	r0,#_c
      002322 A6 06            [24] 1004 	mov	@r0,ar6
      002324 08               [12] 1005 	inc	r0
      002325 A6 07            [24] 1006 	mov	@r0,ar7
                                   1007 ;	life.c:217: if (i0 || (c == (int)'T')) goto terminate;
      002327 78 31            [12] 1008 	mov	r0,#_i0
      002329 E6               [12] 1009 	mov	a,@r0
      00232A 60 03            [24] 1010 	jz	00435$
      00232C 02 2A 7D         [24] 1011 	ljmp	00133$
      00232F                       1012 00435$:
      00232F BE 54 06         [24] 1013 	cjne	r6,#0x54,00436$
      002332 BF 00 03         [24] 1014 	cjne	r7,#0x00,00436$
      002335 02 2A 7D         [24] 1015 	ljmp	00133$
      002338                       1016 00436$:
                                   1017 ;	life.c:218: else if (c == (int)'L') break;
      002338 BE 4C DB         [24] 1018 	cjne	r6,#0x4c,00108$
      00233B BF 00 D8         [24] 1019 	cjne	r7,#0x00,00108$
                                   1020 ;	life.c:221: reload:
      00233E                       1021 00110$:
                                   1022 ;	life.c:115: memset(u, 0, sizeof (u));
      00233E E4               [12] 1023 	clr	a
      00233F C0 E0            [24] 1024 	push	acc
      002341 74 10            [12] 1025 	mov	a,#0x10
      002343 C0 E0            [24] 1026 	push	acc
      002345 E4               [12] 1027 	clr	a
      002346 C0 E0            [24] 1028 	push	acc
      002348 90 90 00         [24] 1029 	mov	dptr,#_u
      00234B 75 F0 00         [24] 1030 	mov	b,#0x00
      00234E 12 2B 40         [24] 1031 	lcall	_memset
      002351 15 81            [12] 1032 	dec	sp
      002353 15 81            [12] 1033 	dec	sp
      002355 15 81            [12] 1034 	dec	sp
                                   1035 ;	life.c:116: memset(pu, 0, sizeof (pu));
      002357 E4               [12] 1036 	clr	a
      002358 C0 E0            [24] 1037 	push	acc
      00235A 74 10            [12] 1038 	mov	a,#0x10
      00235C C0 E0            [24] 1039 	push	acc
      00235E E4               [12] 1040 	clr	a
      00235F C0 E0            [24] 1041 	push	acc
      002361 90 80 00         [24] 1042 	mov	dptr,#_pu
      002364 75 F0 00         [24] 1043 	mov	b,#0x00
      002367 12 2B 40         [24] 1044 	lcall	_memset
      00236A 15 81            [12] 1045 	dec	sp
      00236C 15 81            [12] 1046 	dec	sp
      00236E 15 81            [12] 1047 	dec	sp
                                   1048 ;	life.c:122: j = 0;
      002370 78 37            [12] 1049 	mov	r0,#_j
      002372 E4               [12] 1050 	clr	a
      002373 F6               [12] 1051 	mov	@r0,a
      002374 08               [12] 1052 	inc	r0
      002375 F6               [12] 1053 	mov	@r0,a
                                   1054 ;	life.c:124: printstr("LOAD <");
      002376 7D 08            [12] 1055 	mov	r5,#___str_2
      002378 7E 2D            [12] 1056 	mov	r6,#(___str_2 >> 8)
      00237A 7F 80            [12] 1057 	mov	r7,#0x80
                                   1058 ;	life.c:49: return;
      00237C                       1059 00189$:
                                   1060 ;	life.c:47: for (; *s; s++) putchar(*s);
      00237C 8D 82            [24] 1061 	mov	dpl,r5
      00237E 8E 83            [24] 1062 	mov	dph,r6
      002380 8F F0            [24] 1063 	mov	b,r7
      002382 12 2B D1         [24] 1064 	lcall	__gptrget
      002385 FC               [12] 1065 	mov	r4,a
      002386 60 10            [24] 1066 	jz	00138$
      002388 7B 00            [12] 1067 	mov	r3,#0x00
      00238A 8C 82            [24] 1068 	mov	dpl,r4
      00238C 8B 83            [24] 1069 	mov	dph,r3
      00238E 12 20 C5         [24] 1070 	lcall	_putchar
      002391 0D               [12] 1071 	inc	r5
                                   1072 ;	life.c:124: printstr("LOAD <");
      002392 BD 00 E7         [24] 1073 	cjne	r5,#0x00,00189$
      002395 0E               [12] 1074 	inc	r6
      002396 80 E4            [24] 1075 	sjmp	00189$
      002398                       1076 00138$:
                                   1077 ;	life.c:126: for (y = 0; y < H; y++) {
      002398 78 35            [12] 1078 	mov	r0,#_y
      00239A E4               [12] 1079 	clr	a
      00239B F6               [12] 1080 	mov	@r0,a
      00239C 08               [12] 1081 	inc	r0
      00239D F6               [12] 1082 	mov	@r0,a
      00239E                       1083 00192$:
                                   1084 ;	life.c:127: for (x = 0; x < W; x++) {
      00239E 78 33            [12] 1085 	mov	r0,#_x
      0023A0 E4               [12] 1086 	clr	a
      0023A1 F6               [12] 1087 	mov	@r0,a
      0023A2 08               [12] 1088 	inc	r0
      0023A3 F6               [12] 1089 	mov	@r0,a
                                   1090 ;	life.c:128: while (1) {
      0023A4                       1091 00151$:
                                   1092 ;	life.c:129: c = toupper(getchar());
      0023A4 12 20 CA         [24] 1093 	lcall	_getchar
      0023A7 12 2B AA         [24] 1094 	lcall	_toupper
      0023AA AE 82            [24] 1095 	mov	r6,dpl
      0023AC AF 83            [24] 1096 	mov	r7,dph
      0023AE 78 39            [12] 1097 	mov	r0,#_c
      0023B0 A6 06            [24] 1098 	mov	@r0,ar6
      0023B2 08               [12] 1099 	inc	r0
      0023B3 A6 07            [24] 1100 	mov	@r0,ar7
                                   1101 ;	life.c:130: if (c == (int)'0') {
      0023B5 BE 30 37         [24] 1102 	cjne	r6,#0x30,00149$
      0023B8 BF 00 34         [24] 1103 	cjne	r7,#0x00,00149$
                                   1104 ;	life.c:131: u[A2D(W, y, x)] = 0;
      0023BB 78 35            [12] 1105 	mov	r0,#_y
      0023BD 86 04            [24] 1106 	mov	ar4,@r0
      0023BF 08               [12] 1107 	inc	r0
      0023C0 E6               [12] 1108 	mov	a,@r0
      0023C1 C4               [12] 1109 	swap	a
      0023C2 23               [12] 1110 	rl	a
      0023C3 54 E0            [12] 1111 	anl	a,#0xe0
      0023C5 CC               [12] 1112 	xch	a,r4
      0023C6 C4               [12] 1113 	swap	a
      0023C7 23               [12] 1114 	rl	a
      0023C8 CC               [12] 1115 	xch	a,r4
      0023C9 6C               [12] 1116 	xrl	a,r4
      0023CA CC               [12] 1117 	xch	a,r4
      0023CB 54 E0            [12] 1118 	anl	a,#0xe0
      0023CD CC               [12] 1119 	xch	a,r4
      0023CE 6C               [12] 1120 	xrl	a,r4
      0023CF FD               [12] 1121 	mov	r5,a
      0023D0 78 33            [12] 1122 	mov	r0,#_x
      0023D2 E6               [12] 1123 	mov	a,@r0
      0023D3 2C               [12] 1124 	add	a,r4
      0023D4 FC               [12] 1125 	mov	r4,a
      0023D5 08               [12] 1126 	inc	r0
      0023D6 E6               [12] 1127 	mov	a,@r0
      0023D7 3D               [12] 1128 	addc	a,r5
      0023D8 FD               [12] 1129 	mov	r5,a
      0023D9 EC               [12] 1130 	mov	a,r4
      0023DA 24 00            [12] 1131 	add	a,#_u
      0023DC F5 82            [12] 1132 	mov	dpl,a
      0023DE ED               [12] 1133 	mov	a,r5
      0023DF 34 90            [12] 1134 	addc	a,#(_u >> 8)
      0023E1 F5 83            [12] 1135 	mov	dph,a
      0023E3 E4               [12] 1136 	clr	a
      0023E4 F0               [24] 1137 	movx	@dptr,a
                                   1138 ;	life.c:132: j++;
      0023E5 78 37            [12] 1139 	mov	r0,#_j
      0023E7 06               [12] 1140 	inc	@r0
      0023E8 B6 00 02         [24] 1141 	cjne	@r0,#0x00,00443$
      0023EB 08               [12] 1142 	inc	r0
      0023EC 06               [12] 1143 	inc	@r0
      0023ED                       1144 00443$:
                                   1145 ;	life.c:133: break;
      0023ED 80 4E            [24] 1146 	sjmp	00154$
      0023EF                       1147 00149$:
                                   1148 ;	life.c:134: } else if (c == (int)'1') {
      0023EF BE 31 38         [24] 1149 	cjne	r6,#0x31,00147$
      0023F2 BF 00 35         [24] 1150 	cjne	r7,#0x00,00147$
                                   1151 ;	life.c:135: u[A2D(W, y, x)] = 1;
      0023F5 78 35            [12] 1152 	mov	r0,#_y
      0023F7 86 04            [24] 1153 	mov	ar4,@r0
      0023F9 08               [12] 1154 	inc	r0
      0023FA E6               [12] 1155 	mov	a,@r0
      0023FB C4               [12] 1156 	swap	a
      0023FC 23               [12] 1157 	rl	a
      0023FD 54 E0            [12] 1158 	anl	a,#0xe0
      0023FF CC               [12] 1159 	xch	a,r4
      002400 C4               [12] 1160 	swap	a
      002401 23               [12] 1161 	rl	a
      002402 CC               [12] 1162 	xch	a,r4
      002403 6C               [12] 1163 	xrl	a,r4
      002404 CC               [12] 1164 	xch	a,r4
      002405 54 E0            [12] 1165 	anl	a,#0xe0
      002407 CC               [12] 1166 	xch	a,r4
      002408 6C               [12] 1167 	xrl	a,r4
      002409 FD               [12] 1168 	mov	r5,a
      00240A 78 33            [12] 1169 	mov	r0,#_x
      00240C E6               [12] 1170 	mov	a,@r0
      00240D 2C               [12] 1171 	add	a,r4
      00240E FC               [12] 1172 	mov	r4,a
      00240F 08               [12] 1173 	inc	r0
      002410 E6               [12] 1174 	mov	a,@r0
      002411 3D               [12] 1175 	addc	a,r5
      002412 FD               [12] 1176 	mov	r5,a
      002413 EC               [12] 1177 	mov	a,r4
      002414 24 00            [12] 1178 	add	a,#_u
      002416 F5 82            [12] 1179 	mov	dpl,a
      002418 ED               [12] 1180 	mov	a,r5
      002419 34 90            [12] 1181 	addc	a,#(_u >> 8)
      00241B F5 83            [12] 1182 	mov	dph,a
      00241D 74 01            [12] 1183 	mov	a,#0x01
      00241F F0               [24] 1184 	movx	@dptr,a
                                   1185 ;	life.c:136: j++;
      002420 78 37            [12] 1186 	mov	r0,#_j
      002422 06               [12] 1187 	inc	@r0
      002423 B6 00 02         [24] 1188 	cjne	@r0,#0x00,00446$
      002426 08               [12] 1189 	inc	r0
      002427 06               [12] 1190 	inc	@r0
      002428                       1191 00446$:
                                   1192 ;	life.c:137: break;
      002428 80 13            [24] 1193 	sjmp	00154$
      00242A                       1194 00147$:
                                   1195 ;	life.c:138: } else if (c == (int)'S') goto br_inner;
      00242A BE 53 05         [24] 1196 	cjne	r6,#0x53,00447$
      00242D BF 00 02         [24] 1197 	cjne	r7,#0x00,00447$
      002430 80 24            [24] 1198 	sjmp	00193$
      002432                       1199 00447$:
                                   1200 ;	life.c:139: else if (c == (int)'#') goto out;
      002432 BE 23 05         [24] 1201 	cjne	r6,#0x23,00448$
      002435 BF 00 02         [24] 1202 	cjne	r7,#0x00,00448$
      002438 80 35            [24] 1203 	sjmp	00164$
      00243A                       1204 00448$:
      00243A 02 23 A4         [24] 1205 	ljmp	00151$
                                   1206 ;	life.c:143: break;
      00243D                       1207 00154$:
                                   1208 ;	life.c:127: for (x = 0; x < W; x++) {
      00243D 78 33            [12] 1209 	mov	r0,#_x
      00243F 06               [12] 1210 	inc	@r0
      002440 B6 00 02         [24] 1211 	cjne	@r0,#0x00,00449$
      002443 08               [12] 1212 	inc	r0
      002444 06               [12] 1213 	inc	@r0
      002445                       1214 00449$:
      002445 78 33            [12] 1215 	mov	r0,#_x
      002447 C3               [12] 1216 	clr	c
      002448 E6               [12] 1217 	mov	a,@r0
      002449 94 20            [12] 1218 	subb	a,#0x20
      00244B 08               [12] 1219 	inc	r0
      00244C E6               [12] 1220 	mov	a,@r0
      00244D 64 80            [12] 1221 	xrl	a,#0x80
      00244F 94 80            [12] 1222 	subb	a,#0x80
      002451 50 03            [24] 1223 	jnc	00450$
      002453 02 23 A4         [24] 1224 	ljmp	00151$
      002456                       1225 00450$:
      002456                       1226 00193$:
                                   1227 ;	life.c:126: for (y = 0; y < H; y++) {
      002456 78 35            [12] 1228 	mov	r0,#_y
      002458 06               [12] 1229 	inc	@r0
      002459 B6 00 02         [24] 1230 	cjne	@r0,#0x00,00451$
      00245C 08               [12] 1231 	inc	r0
      00245D 06               [12] 1232 	inc	@r0
      00245E                       1233 00451$:
      00245E 78 35            [12] 1234 	mov	r0,#_y
      002460 C3               [12] 1235 	clr	c
      002461 E6               [12] 1236 	mov	a,@r0
      002462 94 80            [12] 1237 	subb	a,#0x80
      002464 08               [12] 1238 	inc	r0
      002465 E6               [12] 1239 	mov	a,@r0
      002466 64 80            [12] 1240 	xrl	a,#0x80
      002468 94 80            [12] 1241 	subb	a,#0x80
      00246A 50 03            [24] 1242 	jnc	00452$
      00246C 02 23 9E         [24] 1243 	ljmp	00192$
      00246F                       1244 00452$:
                                   1245 ;	life.c:147: out:
      00246F                       1246 00164$:
                                   1247 ;	life.c:148: if (c != (int)'#')
      00246F BE 23 05         [24] 1248 	cjne	r6,#0x23,00453$
      002472 BF 00 02         [24] 1249 	cjne	r7,#0x00,00453$
      002475 80 14            [24] 1250 	sjmp	00163$
      002477                       1251 00453$:
                                   1252 ;	life.c:149: while (1) {
      002477                       1253 00160$:
                                   1254 ;	life.c:150: c = getchar();
      002477 12 20 CA         [24] 1255 	lcall	_getchar
      00247A AE 82            [24] 1256 	mov	r6,dpl
      00247C AF 83            [24] 1257 	mov	r7,dph
      00247E 78 39            [12] 1258 	mov	r0,#_c
      002480 A6 06            [24] 1259 	mov	@r0,ar6
      002482 08               [12] 1260 	inc	r0
      002483 A6 07            [24] 1261 	mov	@r0,ar7
                                   1262 ;	life.c:151: if (c == (int)'#') break;
      002485 BE 23 EF         [24] 1263 	cjne	r6,#0x23,00160$
      002488 BF 00 EC         [24] 1264 	cjne	r7,#0x00,00160$
      00248B                       1265 00163$:
                                   1266 ;	life.c:153: print16x(j);
      00248B 78 37            [12] 1267 	mov	r0,#_j
      00248D 86 06            [24] 1268 	mov	ar6,@r0
      00248F 08               [12] 1269 	inc	r0
      002490 86 07            [24] 1270 	mov	ar7,@r0
      002492 8E 04            [24] 1271 	mov	ar4,r6
                                   1272 ;	life.c:38: putchar(digits[(a >> 12) & 0xf]);
      002494 EF               [12] 1273 	mov	a,r7
      002495 FD               [12] 1274 	mov	r5,a
      002496 C4               [12] 1275 	swap	a
      002497 54 0F            [12] 1276 	anl	a,#0x0f
      002499 30 E3 02         [24] 1277 	jnb	acc.3,00456$
      00249C 44 F0            [12] 1278 	orl	a,#0xf0
      00249E                       1279 00456$:
      00249E FE               [12] 1280 	mov	r6,a
      00249F 33               [12] 1281 	rlc	a
      0024A0 95 E0            [12] 1282 	subb	a,acc
      0024A2 53 06 0F         [24] 1283 	anl	ar6,#0x0f
      0024A5 EE               [12] 1284 	mov	a,r6
      0024A6 24 21            [12] 1285 	add	a,#_digits
      0024A8 F9               [12] 1286 	mov	r1,a
      0024A9 87 07            [24] 1287 	mov	ar7,@r1
      0024AB 7E 00            [12] 1288 	mov	r6,#0x00
      0024AD 8F 82            [24] 1289 	mov	dpl,r7
      0024AF 8E 83            [24] 1290 	mov	dph,r6
      0024B1 12 20 C5         [24] 1291 	lcall	_putchar
                                   1292 ;	life.c:39: putchar(digits[(a >> 8) & 0xf]);
      0024B4 8D 07            [24] 1293 	mov	ar7,r5
      0024B6 53 07 0F         [24] 1294 	anl	ar7,#0x0f
      0024B9 EF               [12] 1295 	mov	a,r7
      0024BA 24 21            [12] 1296 	add	a,#_digits
      0024BC F9               [12] 1297 	mov	r1,a
      0024BD 87 07            [24] 1298 	mov	ar7,@r1
      0024BF 7E 00            [12] 1299 	mov	r6,#0x00
      0024C1 8F 82            [24] 1300 	mov	dpl,r7
      0024C3 8E 83            [24] 1301 	mov	dph,r6
      0024C5 12 20 C5         [24] 1302 	lcall	_putchar
                                   1303 ;	life.c:40: putchar(digits[(a >> 4) & 0xf]);
      0024C8 8C 06            [24] 1304 	mov	ar6,r4
      0024CA ED               [12] 1305 	mov	a,r5
      0024CB C4               [12] 1306 	swap	a
      0024CC CE               [12] 1307 	xch	a,r6
      0024CD C4               [12] 1308 	swap	a
      0024CE 54 0F            [12] 1309 	anl	a,#0x0f
      0024D0 6E               [12] 1310 	xrl	a,r6
      0024D1 CE               [12] 1311 	xch	a,r6
      0024D2 54 0F            [12] 1312 	anl	a,#0x0f
      0024D4 CE               [12] 1313 	xch	a,r6
      0024D5 6E               [12] 1314 	xrl	a,r6
      0024D6 CE               [12] 1315 	xch	a,r6
      0024D7 30 E3 02         [24] 1316 	jnb	acc.3,00457$
      0024DA 44 F0            [12] 1317 	orl	a,#0xf0
      0024DC                       1318 00457$:
      0024DC 53 06 0F         [24] 1319 	anl	ar6,#0x0f
      0024DF EE               [12] 1320 	mov	a,r6
      0024E0 24 21            [12] 1321 	add	a,#_digits
      0024E2 F9               [12] 1322 	mov	r1,a
      0024E3 87 07            [24] 1323 	mov	ar7,@r1
      0024E5 7E 00            [12] 1324 	mov	r6,#0x00
      0024E7 8F 82            [24] 1325 	mov	dpl,r7
      0024E9 8E 83            [24] 1326 	mov	dph,r6
      0024EB 12 20 C5         [24] 1327 	lcall	_putchar
                                   1328 ;	life.c:41: putchar(digits[a & 0xf]);
      0024EE 53 04 0F         [24] 1329 	anl	ar4,#0x0f
      0024F1 EC               [12] 1330 	mov	a,r4
      0024F2 24 21            [12] 1331 	add	a,#_digits
      0024F4 F9               [12] 1332 	mov	r1,a
      0024F5 87 07            [24] 1333 	mov	ar7,@r1
      0024F7 7E 00            [12] 1334 	mov	r6,#0x00
      0024F9 8F 82            [24] 1335 	mov	dpl,r7
      0024FB 8E 83            [24] 1336 	mov	dph,r6
      0024FD 12 20 C5         [24] 1337 	lcall	_putchar
                                   1338 ;	life.c:154: printstr(">\r\n");
      002500 7D 0F            [12] 1339 	mov	r5,#___str_3
      002502 7E 2D            [12] 1340 	mov	r6,#(___str_3 >> 8)
      002504 7F 80            [12] 1341 	mov	r7,#0x80
                                   1342 ;	life.c:49: return;
      002506                       1343 00195$:
                                   1344 ;	life.c:47: for (; *s; s++) putchar(*s);
      002506 8D 82            [24] 1345 	mov	dpl,r5
      002508 8E 83            [24] 1346 	mov	dph,r6
      00250A 8F F0            [24] 1347 	mov	b,r7
      00250C 12 2B D1         [24] 1348 	lcall	__gptrget
      00250F FC               [12] 1349 	mov	r4,a
      002510 60 10            [24] 1350 	jz	00167$
      002512 7B 00            [12] 1351 	mov	r3,#0x00
      002514 8C 82            [24] 1352 	mov	dpl,r4
      002516 8B 83            [24] 1353 	mov	dph,r3
      002518 12 20 C5         [24] 1354 	lcall	_putchar
      00251B 0D               [12] 1355 	inc	r5
                                   1356 ;	life.c:154: printstr(">\r\n");
      00251C BD 00 E7         [24] 1357 	cjne	r5,#0x00,00195$
      00251F 0E               [12] 1358 	inc	r6
      002520 80 E4            [24] 1359 	sjmp	00195$
      002522                       1360 00167$:
                                   1361 ;	life.c:224: show(0);
      002522 75 82 00         [24] 1362 	mov	dpl,#0x00
      002525 12 20 EB         [24] 1363 	lcall	_show
                                   1364 ;	life.c:226: printstr("READY\r\n");
      002528 7D 26            [12] 1365 	mov	r5,#___str_5
      00252A 7E 2D            [12] 1366 	mov	r6,#(___str_5 >> 8)
      00252C 7F 80            [12] 1367 	mov	r7,#0x80
                                   1368 ;	life.c:49: return;
      00252E                       1369 00198$:
                                   1370 ;	life.c:47: for (; *s; s++) putchar(*s);
      00252E 8D 82            [24] 1371 	mov	dpl,r5
      002530 8E 83            [24] 1372 	mov	dph,r6
      002532 8F F0            [24] 1373 	mov	b,r7
      002534 12 2B D1         [24] 1374 	lcall	__gptrget
      002537 FC               [12] 1375 	mov	r4,a
      002538 60 10            [24] 1376 	jz	00121$
      00253A 7B 00            [12] 1377 	mov	r3,#0x00
      00253C 8C 82            [24] 1378 	mov	dpl,r4
      00253E 8B 83            [24] 1379 	mov	dph,r3
      002540 12 20 C5         [24] 1380 	lcall	_putchar
      002543 0D               [12] 1381 	inc	r5
                                   1382 ;	life.c:227: while (1) {
      002544 BD 00 E7         [24] 1383 	cjne	r5,#0x00,00198$
      002547 0E               [12] 1384 	inc	r6
      002548 80 E4            [24] 1385 	sjmp	00198$
      00254A                       1386 00121$:
                                   1387 ;	life.c:228: c = toupper(getchar());
      00254A 12 20 CA         [24] 1388 	lcall	_getchar
      00254D 12 2B AA         [24] 1389 	lcall	_toupper
      002550 AE 82            [24] 1390 	mov	r6,dpl
      002552 AF 83            [24] 1391 	mov	r7,dph
      002554 78 39            [12] 1392 	mov	r0,#_c
      002556 A6 06            [24] 1393 	mov	@r0,ar6
      002558 08               [12] 1394 	inc	r0
      002559 A6 07            [24] 1395 	mov	@r0,ar7
                                   1396 ;	life.c:229: if (i0 || (c == (int)'T')) goto terminate;
      00255B 78 31            [12] 1397 	mov	r0,#_i0
      00255D E6               [12] 1398 	mov	a,@r0
      00255E 60 03            [24] 1399 	jz	00462$
      002560 02 2A 7D         [24] 1400 	ljmp	00133$
      002563                       1401 00462$:
      002563 BE 54 06         [24] 1402 	cjne	r6,#0x54,00463$
      002566 BF 00 03         [24] 1403 	cjne	r7,#0x00,00463$
      002569 02 2A 7D         [24] 1404 	ljmp	00133$
      00256C                       1405 00463$:
                                   1406 ;	life.c:230: else if (c == (int)'L') goto reload;
      00256C BE 4C 06         [24] 1407 	cjne	r6,#0x4c,00464$
      00256F BF 00 03         [24] 1408 	cjne	r7,#0x00,00464$
      002572 02 23 3E         [24] 1409 	ljmp	00110$
      002575                       1410 00464$:
                                   1411 ;	life.c:231: else if (c == (int)'S') break;
      002575 BE 53 D2         [24] 1412 	cjne	r6,#0x53,00121$
      002578 BF 00 CF         [24] 1413 	cjne	r7,#0x00,00121$
                                   1414 ;	life.c:76: generation[0] = 0;
      00257B 78 43            [12] 1415 	mov	r0,#_generation
      00257D 76 00            [12] 1416 	mov	@r0,#0x00
      00257F 08               [12] 1417 	inc	r0
      002580 76 00            [12] 1418 	mov	@r0,#0x00
                                   1419 ;	life.c:77: generation[1] = 0;
      002582 78 45            [12] 1420 	mov	r0,#(_generation + 0x0002)
      002584 76 00            [12] 1421 	mov	@r0,#0x00
      002586 08               [12] 1422 	inc	r0
      002587 76 00            [12] 1423 	mov	@r0,#0x00
                                   1424 ;	life.c:236: for (i1 = 0; !i0 && !i1; ) {
      002589 78 32            [12] 1425 	mov	r0,#_i1
      00258B 76 00            [12] 1426 	mov	@r0,#0x00
      00258D                       1427 00215$:
      00258D 78 31            [12] 1428 	mov	r0,#_i0
      00258F E6               [12] 1429 	mov	a,@r0
      002590 60 03            [24] 1430 	jz	00467$
      002592 02 2A 4B         [24] 1431 	ljmp	00129$
      002595                       1432 00467$:
      002595 78 32            [12] 1433 	mov	r0,#_i1
      002597 E6               [12] 1434 	mov	a,@r0
      002598 60 03            [24] 1435 	jz	00468$
      00259A 02 2A 4B         [24] 1436 	ljmp	00129$
      00259D                       1437 00468$:
                                   1438 ;	life.c:237: show(1);
      00259D 75 82 01         [24] 1439 	mov	dpl,#0x01
      0025A0 12 20 EB         [24] 1440 	lcall	_show
                                   1441 ;	life.c:162: fixed = 0;
      0025A3 78 3D            [12] 1442 	mov	r0,#_fixed
      0025A5 76 00            [12] 1443 	mov	@r0,#0x00
                                   1444 ;	life.c:163: cycle2 = 0;
      0025A7 78 3E            [12] 1445 	mov	r0,#_cycle2
      0025A9 76 00            [12] 1446 	mov	@r0,#0x00
                                   1447 ;	life.c:164: bstep = 0;
      0025AB 78 3B            [12] 1448 	mov	r0,#_bstep
      0025AD 76 00            [12] 1449 	mov	@r0,#0x00
                                   1450 ;	life.c:166: for (y = 0; y < H; y++) {
      0025AF 78 35            [12] 1451 	mov	r0,#_y
      0025B1 E4               [12] 1452 	clr	a
      0025B2 F6               [12] 1453 	mov	@r0,a
      0025B3 08               [12] 1454 	inc	r0
      0025B4 F6               [12] 1455 	mov	@r0,a
      0025B5                       1456 00202$:
                                   1457 ;	life.c:167: putchar(busy[bstep]); putchar('\r');
      0025B5 78 3B            [12] 1458 	mov	r0,#_bstep
      0025B7 E6               [12] 1459 	mov	a,@r0
      0025B8 24 47            [12] 1460 	add	a,#_busy
      0025BA F9               [12] 1461 	mov	r1,a
      0025BB 87 07            [24] 1462 	mov	ar7,@r1
      0025BD 7E 00            [12] 1463 	mov	r6,#0x00
      0025BF 8F 82            [24] 1464 	mov	dpl,r7
      0025C1 8E 83            [24] 1465 	mov	dph,r6
      0025C3 12 20 C5         [24] 1466 	lcall	_putchar
      0025C6 90 00 0D         [24] 1467 	mov	dptr,#0x000d
      0025C9 12 20 C5         [24] 1468 	lcall	_putchar
                                   1469 ;	life.c:168: bstep = (bstep + 1) & 3;
      0025CC 78 3B            [12] 1470 	mov	r0,#_bstep
      0025CE 86 07            [24] 1471 	mov	ar7,@r0
      0025D0 0F               [12] 1472 	inc	r7
      0025D1 78 3B            [12] 1473 	mov	r0,#_bstep
      0025D3 74 03            [12] 1474 	mov	a,#0x03
      0025D5 5F               [12] 1475 	anl	a,r7
      0025D6 F6               [12] 1476 	mov	@r0,a
                                   1477 ;	life.c:169: for (x = 0; x < W; x++) {
      0025D7 78 33            [12] 1478 	mov	r0,#_x
      0025D9 E4               [12] 1479 	clr	a
      0025DA F6               [12] 1480 	mov	@r0,a
      0025DB 08               [12] 1481 	inc	r0
      0025DC F6               [12] 1482 	mov	@r0,a
      0025DD                       1483 00200$:
                                   1484 ;	life.c:170: n = -u[A2D(W, y, x)];
      0025DD 78 35            [12] 1485 	mov	r0,#_y
      0025DF E5 10            [12] 1486 	mov	a,_bp
      0025E1 24 03            [12] 1487 	add	a,#0x03
      0025E3 F9               [12] 1488 	mov	r1,a
      0025E4 E6               [12] 1489 	mov	a,@r0
      0025E5 F7               [12] 1490 	mov	@r1,a
      0025E6 08               [12] 1491 	inc	r0
      0025E7 E6               [12] 1492 	mov	a,@r0
      0025E8 C4               [12] 1493 	swap	a
      0025E9 23               [12] 1494 	rl	a
      0025EA 54 E0            [12] 1495 	anl	a,#0xe0
      0025EC C7               [12] 1496 	xch	a,@r1
      0025ED C4               [12] 1497 	swap	a
      0025EE 23               [12] 1498 	rl	a
      0025EF C7               [12] 1499 	xch	a,@r1
      0025F0 67               [12] 1500 	xrl	a,@r1
      0025F1 C7               [12] 1501 	xch	a,@r1
      0025F2 54 E0            [12] 1502 	anl	a,#0xe0
      0025F4 C7               [12] 1503 	xch	a,@r1
      0025F5 67               [12] 1504 	xrl	a,@r1
      0025F6 09               [12] 1505 	inc	r1
      0025F7 F7               [12] 1506 	mov	@r1,a
      0025F8 E5 10            [12] 1507 	mov	a,_bp
      0025FA 24 03            [12] 1508 	add	a,#0x03
      0025FC F8               [12] 1509 	mov	r0,a
      0025FD 79 33            [12] 1510 	mov	r1,#_x
      0025FF E7               [12] 1511 	mov	a,@r1
      002600 26               [12] 1512 	add	a,@r0
      002601 C0 E0            [24] 1513 	push	acc
      002603 09               [12] 1514 	inc	r1
      002604 E7               [12] 1515 	mov	a,@r1
      002605 08               [12] 1516 	inc	r0
      002606 36               [12] 1517 	addc	a,@r0
      002607 C0 E0            [24] 1518 	push	acc
      002609 A8 10            [24] 1519 	mov	r0,_bp
      00260B 08               [12] 1520 	inc	r0
      00260C 08               [12] 1521 	inc	r0
      00260D D0 E0            [24] 1522 	pop	acc
      00260F F6               [12] 1523 	mov	@r0,a
      002610 18               [12] 1524 	dec	r0
      002611 D0 E0            [24] 1525 	pop	acc
      002613 F6               [12] 1526 	mov	@r0,a
      002614 A8 10            [24] 1527 	mov	r0,_bp
      002616 08               [12] 1528 	inc	r0
      002617 E6               [12] 1529 	mov	a,@r0
      002618 24 00            [12] 1530 	add	a,#_u
      00261A F5 82            [12] 1531 	mov	dpl,a
      00261C 08               [12] 1532 	inc	r0
      00261D E6               [12] 1533 	mov	a,@r0
      00261E 34 90            [12] 1534 	addc	a,#(_u >> 8)
      002620 F5 83            [12] 1535 	mov	dph,a
      002622 E0               [24] 1536 	movx	a,@dptr
      002623 FB               [12] 1537 	mov	r3,a
      002624 C3               [12] 1538 	clr	c
      002625 E4               [12] 1539 	clr	a
      002626 9B               [12] 1540 	subb	a,r3
      002627 FB               [12] 1541 	mov	r3,a
                                   1542 ;	life.c:173: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      002628 78 35            [12] 1543 	mov	r0,#_y
      00262A 74 FF            [12] 1544 	mov	a,#0xff
      00262C 26               [12] 1545 	add	a,@r0
      00262D FA               [12] 1546 	mov	r2,a
      00262E 74 FF            [12] 1547 	mov	a,#0xff
      002630 08               [12] 1548 	inc	r0
      002631 36               [12] 1549 	addc	a,@r0
      002632 FD               [12] 1550 	mov	r5,a
      002633 74 80            [12] 1551 	mov	a,#0x80
      002635 2A               [12] 1552 	add	a,r2
      002636 FA               [12] 1553 	mov	r2,a
      002637 E4               [12] 1554 	clr	a
      002638 3D               [12] 1555 	addc	a,r5
      002639 FD               [12] 1556 	mov	r5,a
      00263A C0 03            [24] 1557 	push	ar3
      00263C 74 80            [12] 1558 	mov	a,#0x80
      00263E C0 E0            [24] 1559 	push	acc
      002640 E4               [12] 1560 	clr	a
      002641 C0 E0            [24] 1561 	push	acc
      002643 8A 82            [24] 1562 	mov	dpl,r2
      002645 8D 83            [24] 1563 	mov	dph,r5
      002647 12 2B ED         [24] 1564 	lcall	__modsint
      00264A AC 82            [24] 1565 	mov	r4,dpl
      00264C AD 83            [24] 1566 	mov	r5,dph
      00264E 15 81            [12] 1567 	dec	sp
      002650 15 81            [12] 1568 	dec	sp
      002652 D0 03            [24] 1569 	pop	ar3
      002654 ED               [12] 1570 	mov	a,r5
      002655 C4               [12] 1571 	swap	a
      002656 23               [12] 1572 	rl	a
      002657 54 E0            [12] 1573 	anl	a,#0xe0
      002659 CC               [12] 1574 	xch	a,r4
      00265A C4               [12] 1575 	swap	a
      00265B 23               [12] 1576 	rl	a
      00265C CC               [12] 1577 	xch	a,r4
      00265D 6C               [12] 1578 	xrl	a,r4
      00265E CC               [12] 1579 	xch	a,r4
      00265F 54 E0            [12] 1580 	anl	a,#0xe0
      002661 CC               [12] 1581 	xch	a,r4
      002662 6C               [12] 1582 	xrl	a,r4
      002663 FD               [12] 1583 	mov	r5,a
      002664 78 33            [12] 1584 	mov	r0,#_x
      002666 74 FF            [12] 1585 	mov	a,#0xff
      002668 26               [12] 1586 	add	a,@r0
      002669 FA               [12] 1587 	mov	r2,a
      00266A 74 FF            [12] 1588 	mov	a,#0xff
      00266C 08               [12] 1589 	inc	r0
      00266D 36               [12] 1590 	addc	a,@r0
      00266E FF               [12] 1591 	mov	r7,a
      00266F 74 20            [12] 1592 	mov	a,#0x20
      002671 2A               [12] 1593 	add	a,r2
      002672 FA               [12] 1594 	mov	r2,a
      002673 E4               [12] 1595 	clr	a
      002674 3F               [12] 1596 	addc	a,r7
      002675 FF               [12] 1597 	mov	r7,a
      002676 C0 05            [24] 1598 	push	ar5
      002678 C0 04            [24] 1599 	push	ar4
      00267A C0 03            [24] 1600 	push	ar3
      00267C 74 20            [12] 1601 	mov	a,#0x20
      00267E C0 E0            [24] 1602 	push	acc
      002680 E4               [12] 1603 	clr	a
      002681 C0 E0            [24] 1604 	push	acc
      002683 8A 82            [24] 1605 	mov	dpl,r2
      002685 8F 83            [24] 1606 	mov	dph,r7
      002687 12 2B ED         [24] 1607 	lcall	__modsint
      00268A C8               [12] 1608 	xch	a,r0
      00268B E5 10            [12] 1609 	mov	a,_bp
      00268D 24 05            [12] 1610 	add	a,#0x05
      00268F C8               [12] 1611 	xch	a,r0
      002690 A6 82            [24] 1612 	mov	@r0,dpl
      002692 08               [12] 1613 	inc	r0
      002693 A6 83            [24] 1614 	mov	@r0,dph
      002695 15 81            [12] 1615 	dec	sp
      002697 15 81            [12] 1616 	dec	sp
      002699 D0 03            [24] 1617 	pop	ar3
      00269B D0 04            [24] 1618 	pop	ar4
      00269D D0 05            [24] 1619 	pop	ar5
      00269F E5 10            [12] 1620 	mov	a,_bp
      0026A1 24 05            [12] 1621 	add	a,#0x05
      0026A3 F8               [12] 1622 	mov	r0,a
      0026A4 E6               [12] 1623 	mov	a,@r0
      0026A5 2C               [12] 1624 	add	a,r4
      0026A6 FA               [12] 1625 	mov	r2,a
      0026A7 08               [12] 1626 	inc	r0
      0026A8 E6               [12] 1627 	mov	a,@r0
      0026A9 3D               [12] 1628 	addc	a,r5
      0026AA FF               [12] 1629 	mov	r7,a
      0026AB EA               [12] 1630 	mov	a,r2
      0026AC 24 00            [12] 1631 	add	a,#_u
      0026AE F5 82            [12] 1632 	mov	dpl,a
      0026B0 EF               [12] 1633 	mov	a,r7
      0026B1 34 90            [12] 1634 	addc	a,#(_u >> 8)
      0026B3 F5 83            [12] 1635 	mov	dph,a
      0026B5 E0               [24] 1636 	movx	a,@dptr
      0026B6 2B               [12] 1637 	add	a,r3
      0026B7 FB               [12] 1638 	mov	r3,a
                                   1639 ;	life.c:175: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      0026B8 78 33            [12] 1640 	mov	r0,#_x
      0026BA E5 10            [12] 1641 	mov	a,_bp
      0026BC 24 07            [12] 1642 	add	a,#0x07
      0026BE F9               [12] 1643 	mov	r1,a
      0026BF E6               [12] 1644 	mov	a,@r0
      0026C0 F7               [12] 1645 	mov	@r1,a
      0026C1 08               [12] 1646 	inc	r0
      0026C2 09               [12] 1647 	inc	r1
      0026C3 E6               [12] 1648 	mov	a,@r0
      0026C4 F7               [12] 1649 	mov	@r1,a
      0026C5 E5 10            [12] 1650 	mov	a,_bp
      0026C7 24 07            [12] 1651 	add	a,#0x07
      0026C9 F8               [12] 1652 	mov	r0,a
      0026CA 74 20            [12] 1653 	mov	a,#0x20
      0026CC 26               [12] 1654 	add	a,@r0
      0026CD FA               [12] 1655 	mov	r2,a
      0026CE E4               [12] 1656 	clr	a
      0026CF 08               [12] 1657 	inc	r0
      0026D0 36               [12] 1658 	addc	a,@r0
      0026D1 FF               [12] 1659 	mov	r7,a
      0026D2 C0 05            [24] 1660 	push	ar5
      0026D4 C0 04            [24] 1661 	push	ar4
      0026D6 C0 03            [24] 1662 	push	ar3
      0026D8 74 20            [12] 1663 	mov	a,#0x20
      0026DA C0 E0            [24] 1664 	push	acc
      0026DC E4               [12] 1665 	clr	a
      0026DD C0 E0            [24] 1666 	push	acc
      0026DF 8A 82            [24] 1667 	mov	dpl,r2
      0026E1 8F 83            [24] 1668 	mov	dph,r7
      0026E3 12 2B ED         [24] 1669 	lcall	__modsint
      0026E6 C8               [12] 1670 	xch	a,r0
      0026E7 E5 10            [12] 1671 	mov	a,_bp
      0026E9 24 09            [12] 1672 	add	a,#0x09
      0026EB C8               [12] 1673 	xch	a,r0
      0026EC A6 82            [24] 1674 	mov	@r0,dpl
      0026EE 08               [12] 1675 	inc	r0
      0026EF A6 83            [24] 1676 	mov	@r0,dph
      0026F1 15 81            [12] 1677 	dec	sp
      0026F3 15 81            [12] 1678 	dec	sp
      0026F5 D0 03            [24] 1679 	pop	ar3
      0026F7 D0 04            [24] 1680 	pop	ar4
      0026F9 D0 05            [24] 1681 	pop	ar5
      0026FB E5 10            [12] 1682 	mov	a,_bp
      0026FD 24 09            [12] 1683 	add	a,#0x09
      0026FF F8               [12] 1684 	mov	r0,a
      002700 E6               [12] 1685 	mov	a,@r0
      002701 2C               [12] 1686 	add	a,r4
      002702 FA               [12] 1687 	mov	r2,a
      002703 08               [12] 1688 	inc	r0
      002704 E6               [12] 1689 	mov	a,@r0
      002705 3D               [12] 1690 	addc	a,r5
      002706 FF               [12] 1691 	mov	r7,a
      002707 EA               [12] 1692 	mov	a,r2
      002708 24 00            [12] 1693 	add	a,#_u
      00270A F5 82            [12] 1694 	mov	dpl,a
      00270C EF               [12] 1695 	mov	a,r7
      00270D 34 90            [12] 1696 	addc	a,#(_u >> 8)
      00270F F5 83            [12] 1697 	mov	dph,a
      002711 E0               [24] 1698 	movx	a,@dptr
      002712 2B               [12] 1699 	add	a,r3
      002713 FB               [12] 1700 	mov	r3,a
                                   1701 ;	life.c:177: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      002714 E5 10            [12] 1702 	mov	a,_bp
      002716 24 07            [12] 1703 	add	a,#0x07
      002718 F8               [12] 1704 	mov	r0,a
      002719 74 21            [12] 1705 	mov	a,#0x21
      00271B 26               [12] 1706 	add	a,@r0
      00271C FE               [12] 1707 	mov	r6,a
      00271D E4               [12] 1708 	clr	a
      00271E 08               [12] 1709 	inc	r0
      00271F 36               [12] 1710 	addc	a,@r0
      002720 FF               [12] 1711 	mov	r7,a
      002721 C0 05            [24] 1712 	push	ar5
      002723 C0 04            [24] 1713 	push	ar4
      002725 C0 03            [24] 1714 	push	ar3
      002727 74 20            [12] 1715 	mov	a,#0x20
      002729 C0 E0            [24] 1716 	push	acc
      00272B E4               [12] 1717 	clr	a
      00272C C0 E0            [24] 1718 	push	acc
      00272E 8E 82            [24] 1719 	mov	dpl,r6
      002730 8F 83            [24] 1720 	mov	dph,r7
      002732 12 2B ED         [24] 1721 	lcall	__modsint
      002735 AE 82            [24] 1722 	mov	r6,dpl
      002737 AF 83            [24] 1723 	mov	r7,dph
      002739 15 81            [12] 1724 	dec	sp
      00273B 15 81            [12] 1725 	dec	sp
      00273D D0 03            [24] 1726 	pop	ar3
      00273F D0 04            [24] 1727 	pop	ar4
      002741 D0 05            [24] 1728 	pop	ar5
      002743 EE               [12] 1729 	mov	a,r6
      002744 2C               [12] 1730 	add	a,r4
      002745 FC               [12] 1731 	mov	r4,a
      002746 EF               [12] 1732 	mov	a,r7
      002747 3D               [12] 1733 	addc	a,r5
      002748 FD               [12] 1734 	mov	r5,a
      002749 EC               [12] 1735 	mov	a,r4
      00274A 24 00            [12] 1736 	add	a,#_u
      00274C F5 82            [12] 1737 	mov	dpl,a
      00274E ED               [12] 1738 	mov	a,r5
      00274F 34 90            [12] 1739 	addc	a,#(_u >> 8)
      002751 F5 83            [12] 1740 	mov	dph,a
      002753 E0               [24] 1741 	movx	a,@dptr
      002754 2B               [12] 1742 	add	a,r3
      002755 FB               [12] 1743 	mov	r3,a
                                   1744 ;	life.c:179: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      002756 78 35            [12] 1745 	mov	r0,#_y
      002758 E5 10            [12] 1746 	mov	a,_bp
      00275A 24 0B            [12] 1747 	add	a,#0x0b
      00275C F9               [12] 1748 	mov	r1,a
      00275D E6               [12] 1749 	mov	a,@r0
      00275E F7               [12] 1750 	mov	@r1,a
      00275F 08               [12] 1751 	inc	r0
      002760 09               [12] 1752 	inc	r1
      002761 E6               [12] 1753 	mov	a,@r0
      002762 F7               [12] 1754 	mov	@r1,a
      002763 E5 10            [12] 1755 	mov	a,_bp
      002765 24 0B            [12] 1756 	add	a,#0x0b
      002767 F8               [12] 1757 	mov	r0,a
      002768 74 80            [12] 1758 	mov	a,#0x80
      00276A 26               [12] 1759 	add	a,@r0
      00276B FA               [12] 1760 	mov	r2,a
      00276C E4               [12] 1761 	clr	a
      00276D 08               [12] 1762 	inc	r0
      00276E 36               [12] 1763 	addc	a,@r0
      00276F FD               [12] 1764 	mov	r5,a
      002770 C0 07            [24] 1765 	push	ar7
      002772 C0 06            [24] 1766 	push	ar6
      002774 C0 03            [24] 1767 	push	ar3
      002776 74 80            [12] 1768 	mov	a,#0x80
      002778 C0 E0            [24] 1769 	push	acc
      00277A E4               [12] 1770 	clr	a
      00277B C0 E0            [24] 1771 	push	acc
      00277D 8A 82            [24] 1772 	mov	dpl,r2
      00277F 8D 83            [24] 1773 	mov	dph,r5
      002781 12 2B ED         [24] 1774 	lcall	__modsint
      002784 AC 82            [24] 1775 	mov	r4,dpl
      002786 AD 83            [24] 1776 	mov	r5,dph
      002788 15 81            [12] 1777 	dec	sp
      00278A 15 81            [12] 1778 	dec	sp
      00278C D0 03            [24] 1779 	pop	ar3
      00278E D0 06            [24] 1780 	pop	ar6
      002790 D0 07            [24] 1781 	pop	ar7
      002792 E5 10            [12] 1782 	mov	a,_bp
      002794 24 0D            [12] 1783 	add	a,#0x0d
      002796 F8               [12] 1784 	mov	r0,a
      002797 A6 04            [24] 1785 	mov	@r0,ar4
      002799 ED               [12] 1786 	mov	a,r5
      00279A C4               [12] 1787 	swap	a
      00279B 23               [12] 1788 	rl	a
      00279C 54 E0            [12] 1789 	anl	a,#0xe0
      00279E C6               [12] 1790 	xch	a,@r0
      00279F C4               [12] 1791 	swap	a
      0027A0 23               [12] 1792 	rl	a
      0027A1 C6               [12] 1793 	xch	a,@r0
      0027A2 66               [12] 1794 	xrl	a,@r0
      0027A3 C6               [12] 1795 	xch	a,@r0
      0027A4 54 E0            [12] 1796 	anl	a,#0xe0
      0027A6 C6               [12] 1797 	xch	a,@r0
      0027A7 66               [12] 1798 	xrl	a,@r0
      0027A8 08               [12] 1799 	inc	r0
      0027A9 F6               [12] 1800 	mov	@r0,a
      0027AA E5 10            [12] 1801 	mov	a,_bp
      0027AC 24 0D            [12] 1802 	add	a,#0x0d
      0027AE F8               [12] 1803 	mov	r0,a
      0027AF E5 10            [12] 1804 	mov	a,_bp
      0027B1 24 05            [12] 1805 	add	a,#0x05
      0027B3 F9               [12] 1806 	mov	r1,a
      0027B4 E7               [12] 1807 	mov	a,@r1
      0027B5 26               [12] 1808 	add	a,@r0
      0027B6 FA               [12] 1809 	mov	r2,a
      0027B7 09               [12] 1810 	inc	r1
      0027B8 E7               [12] 1811 	mov	a,@r1
      0027B9 08               [12] 1812 	inc	r0
      0027BA 36               [12] 1813 	addc	a,@r0
      0027BB FD               [12] 1814 	mov	r5,a
      0027BC EA               [12] 1815 	mov	a,r2
      0027BD 24 00            [12] 1816 	add	a,#_u
      0027BF F5 82            [12] 1817 	mov	dpl,a
      0027C1 ED               [12] 1818 	mov	a,r5
      0027C2 34 90            [12] 1819 	addc	a,#(_u >> 8)
      0027C4 F5 83            [12] 1820 	mov	dph,a
      0027C6 E0               [24] 1821 	movx	a,@dptr
      0027C7 2B               [12] 1822 	add	a,r3
      0027C8 FB               [12] 1823 	mov	r3,a
                                   1824 ;	life.c:181: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      0027C9 E5 10            [12] 1825 	mov	a,_bp
      0027CB 24 0D            [12] 1826 	add	a,#0x0d
      0027CD F8               [12] 1827 	mov	r0,a
      0027CE E5 10            [12] 1828 	mov	a,_bp
      0027D0 24 09            [12] 1829 	add	a,#0x09
      0027D2 F9               [12] 1830 	mov	r1,a
      0027D3 E7               [12] 1831 	mov	a,@r1
      0027D4 26               [12] 1832 	add	a,@r0
      0027D5 FC               [12] 1833 	mov	r4,a
      0027D6 09               [12] 1834 	inc	r1
      0027D7 E7               [12] 1835 	mov	a,@r1
      0027D8 08               [12] 1836 	inc	r0
      0027D9 36               [12] 1837 	addc	a,@r0
      0027DA FD               [12] 1838 	mov	r5,a
      0027DB EC               [12] 1839 	mov	a,r4
      0027DC 24 00            [12] 1840 	add	a,#_u
      0027DE F5 82            [12] 1841 	mov	dpl,a
      0027E0 ED               [12] 1842 	mov	a,r5
      0027E1 34 90            [12] 1843 	addc	a,#(_u >> 8)
      0027E3 F5 83            [12] 1844 	mov	dph,a
      0027E5 E0               [24] 1845 	movx	a,@dptr
      0027E6 2B               [12] 1846 	add	a,r3
      0027E7 FB               [12] 1847 	mov	r3,a
                                   1848 ;	life.c:183: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      0027E8 E5 10            [12] 1849 	mov	a,_bp
      0027EA 24 0D            [12] 1850 	add	a,#0x0d
      0027EC F8               [12] 1851 	mov	r0,a
      0027ED EE               [12] 1852 	mov	a,r6
      0027EE 26               [12] 1853 	add	a,@r0
      0027EF FC               [12] 1854 	mov	r4,a
      0027F0 EF               [12] 1855 	mov	a,r7
      0027F1 08               [12] 1856 	inc	r0
      0027F2 36               [12] 1857 	addc	a,@r0
      0027F3 FD               [12] 1858 	mov	r5,a
      0027F4 EC               [12] 1859 	mov	a,r4
      0027F5 24 00            [12] 1860 	add	a,#_u
      0027F7 F5 82            [12] 1861 	mov	dpl,a
      0027F9 ED               [12] 1862 	mov	a,r5
      0027FA 34 90            [12] 1863 	addc	a,#(_u >> 8)
      0027FC F5 83            [12] 1864 	mov	dph,a
      0027FE E0               [24] 1865 	movx	a,@dptr
      0027FF 2B               [12] 1866 	add	a,r3
      002800 FB               [12] 1867 	mov	r3,a
                                   1868 ;	life.c:185: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      002801 E5 10            [12] 1869 	mov	a,_bp
      002803 24 0B            [12] 1870 	add	a,#0x0b
      002805 F8               [12] 1871 	mov	r0,a
      002806 74 81            [12] 1872 	mov	a,#0x81
      002808 26               [12] 1873 	add	a,@r0
      002809 FC               [12] 1874 	mov	r4,a
      00280A E4               [12] 1875 	clr	a
      00280B 08               [12] 1876 	inc	r0
      00280C 36               [12] 1877 	addc	a,@r0
      00280D FD               [12] 1878 	mov	r5,a
      00280E C0 07            [24] 1879 	push	ar7
      002810 C0 06            [24] 1880 	push	ar6
      002812 C0 03            [24] 1881 	push	ar3
      002814 74 80            [12] 1882 	mov	a,#0x80
      002816 C0 E0            [24] 1883 	push	acc
      002818 E4               [12] 1884 	clr	a
      002819 C0 E0            [24] 1885 	push	acc
      00281B 8C 82            [24] 1886 	mov	dpl,r4
      00281D 8D 83            [24] 1887 	mov	dph,r5
      00281F 12 2B ED         [24] 1888 	lcall	__modsint
      002822 AC 82            [24] 1889 	mov	r4,dpl
      002824 AD 83            [24] 1890 	mov	r5,dph
      002826 15 81            [12] 1891 	dec	sp
      002828 15 81            [12] 1892 	dec	sp
      00282A D0 03            [24] 1893 	pop	ar3
      00282C D0 06            [24] 1894 	pop	ar6
      00282E D0 07            [24] 1895 	pop	ar7
      002830 E5 10            [12] 1896 	mov	a,_bp
      002832 24 0D            [12] 1897 	add	a,#0x0d
      002834 F8               [12] 1898 	mov	r0,a
      002835 A6 04            [24] 1899 	mov	@r0,ar4
      002837 ED               [12] 1900 	mov	a,r5
      002838 C4               [12] 1901 	swap	a
      002839 23               [12] 1902 	rl	a
      00283A 54 E0            [12] 1903 	anl	a,#0xe0
      00283C C6               [12] 1904 	xch	a,@r0
      00283D C4               [12] 1905 	swap	a
      00283E 23               [12] 1906 	rl	a
      00283F C6               [12] 1907 	xch	a,@r0
      002840 66               [12] 1908 	xrl	a,@r0
      002841 C6               [12] 1909 	xch	a,@r0
      002842 54 E0            [12] 1910 	anl	a,#0xe0
      002844 C6               [12] 1911 	xch	a,@r0
      002845 66               [12] 1912 	xrl	a,@r0
      002846 08               [12] 1913 	inc	r0
      002847 F6               [12] 1914 	mov	@r0,a
      002848 E5 10            [12] 1915 	mov	a,_bp
      00284A 24 0D            [12] 1916 	add	a,#0x0d
      00284C F8               [12] 1917 	mov	r0,a
      00284D E5 10            [12] 1918 	mov	a,_bp
      00284F 24 05            [12] 1919 	add	a,#0x05
      002851 F9               [12] 1920 	mov	r1,a
      002852 E7               [12] 1921 	mov	a,@r1
      002853 26               [12] 1922 	add	a,@r0
      002854 FA               [12] 1923 	mov	r2,a
      002855 09               [12] 1924 	inc	r1
      002856 E7               [12] 1925 	mov	a,@r1
      002857 08               [12] 1926 	inc	r0
      002858 36               [12] 1927 	addc	a,@r0
      002859 FD               [12] 1928 	mov	r5,a
      00285A EA               [12] 1929 	mov	a,r2
      00285B 24 00            [12] 1930 	add	a,#_u
      00285D F5 82            [12] 1931 	mov	dpl,a
      00285F ED               [12] 1932 	mov	a,r5
      002860 34 90            [12] 1933 	addc	a,#(_u >> 8)
      002862 F5 83            [12] 1934 	mov	dph,a
      002864 E0               [24] 1935 	movx	a,@dptr
      002865 2B               [12] 1936 	add	a,r3
      002866 FB               [12] 1937 	mov	r3,a
                                   1938 ;	life.c:187: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      002867 E5 10            [12] 1939 	mov	a,_bp
      002869 24 0D            [12] 1940 	add	a,#0x0d
      00286B F8               [12] 1941 	mov	r0,a
      00286C E5 10            [12] 1942 	mov	a,_bp
      00286E 24 09            [12] 1943 	add	a,#0x09
      002870 F9               [12] 1944 	mov	r1,a
      002871 E7               [12] 1945 	mov	a,@r1
      002872 26               [12] 1946 	add	a,@r0
      002873 FC               [12] 1947 	mov	r4,a
      002874 09               [12] 1948 	inc	r1
      002875 E7               [12] 1949 	mov	a,@r1
      002876 08               [12] 1950 	inc	r0
      002877 36               [12] 1951 	addc	a,@r0
      002878 FD               [12] 1952 	mov	r5,a
      002879 EC               [12] 1953 	mov	a,r4
      00287A 24 00            [12] 1954 	add	a,#_u
      00287C F5 82            [12] 1955 	mov	dpl,a
      00287E ED               [12] 1956 	mov	a,r5
      00287F 34 90            [12] 1957 	addc	a,#(_u >> 8)
      002881 F5 83            [12] 1958 	mov	dph,a
      002883 E0               [24] 1959 	movx	a,@dptr
      002884 2B               [12] 1960 	add	a,r3
      002885 FB               [12] 1961 	mov	r3,a
                                   1962 ;	life.c:188: y1 = 1; x1 = 1;
      002886 78 41            [12] 1963 	mov	r0,#_y1
      002888 76 01            [12] 1964 	mov	@r0,#0x01
      00288A 08               [12] 1965 	inc	r0
      00288B 76 00            [12] 1966 	mov	@r0,#0x00
      00288D 78 3F            [12] 1967 	mov	r0,#_x1
      00288F 76 01            [12] 1968 	mov	@r0,#0x01
      002891 08               [12] 1969 	inc	r0
      002892 76 00            [12] 1970 	mov	@r0,#0x00
                                   1971 ;	life.c:189: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      002894 E5 10            [12] 1972 	mov	a,_bp
      002896 24 0D            [12] 1973 	add	a,#0x0d
      002898 F8               [12] 1974 	mov	r0,a
      002899 EE               [12] 1975 	mov	a,r6
      00289A 26               [12] 1976 	add	a,@r0
      00289B FE               [12] 1977 	mov	r6,a
      00289C EF               [12] 1978 	mov	a,r7
      00289D 08               [12] 1979 	inc	r0
      00289E 36               [12] 1980 	addc	a,@r0
      00289F FF               [12] 1981 	mov	r7,a
      0028A0 EE               [12] 1982 	mov	a,r6
      0028A1 24 00            [12] 1983 	add	a,#_u
      0028A3 F5 82            [12] 1984 	mov	dpl,a
      0028A5 EF               [12] 1985 	mov	a,r7
      0028A6 34 90            [12] 1986 	addc	a,#(_u >> 8)
      0028A8 F5 83            [12] 1987 	mov	dph,a
      0028AA E0               [24] 1988 	movx	a,@dptr
      0028AB 2B               [12] 1989 	add	a,r3
      0028AC FF               [12] 1990 	mov	r7,a
      0028AD 78 3C            [12] 1991 	mov	r0,#_n
      0028AF A6 07            [24] 1992 	mov	@r0,ar7
                                   1993 ;	life.c:191: nu[A2D(W, y, x)] = (n == 3) || ((n == 2) && u[A2D(W, y, x)]);
      0028B1 A8 10            [24] 1994 	mov	r0,_bp
      0028B3 08               [12] 1995 	inc	r0
      0028B4 E6               [12] 1996 	mov	a,@r0
      0028B5 24 00            [12] 1997 	add	a,#_nu
      0028B7 FD               [12] 1998 	mov	r5,a
      0028B8 08               [12] 1999 	inc	r0
      0028B9 E6               [12] 2000 	mov	a,@r0
      0028BA 34 A0            [12] 2001 	addc	a,#(_nu >> 8)
      0028BC FE               [12] 2002 	mov	r6,a
      0028BD BF 03 02         [24] 2003 	cjne	r7,#0x03,00469$
      0028C0 80 28            [24] 2004 	sjmp	00228$
      0028C2                       2005 00469$:
      0028C2 BF 02 21         [24] 2006 	cjne	r7,#0x02,00227$
      0028C5 E5 10            [12] 2007 	mov	a,_bp
      0028C7 24 03            [12] 2008 	add	a,#0x03
      0028C9 F8               [12] 2009 	mov	r0,a
      0028CA E5 10            [12] 2010 	mov	a,_bp
      0028CC 24 07            [12] 2011 	add	a,#0x07
      0028CE F9               [12] 2012 	mov	r1,a
      0028CF E7               [12] 2013 	mov	a,@r1
      0028D0 26               [12] 2014 	add	a,@r0
      0028D1 FC               [12] 2015 	mov	r4,a
      0028D2 09               [12] 2016 	inc	r1
      0028D3 E7               [12] 2017 	mov	a,@r1
      0028D4 08               [12] 2018 	inc	r0
      0028D5 36               [12] 2019 	addc	a,@r0
      0028D6 FF               [12] 2020 	mov	r7,a
      0028D7 EC               [12] 2021 	mov	a,r4
      0028D8 24 00            [12] 2022 	add	a,#_u
      0028DA FC               [12] 2023 	mov	r4,a
      0028DB EF               [12] 2024 	mov	a,r7
      0028DC 34 90            [12] 2025 	addc	a,#(_u >> 8)
      0028DE FF               [12] 2026 	mov	r7,a
      0028DF 8C 82            [24] 2027 	mov	dpl,r4
      0028E1 8F 83            [24] 2028 	mov	dph,r7
      0028E3 E0               [24] 2029 	movx	a,@dptr
      0028E4 70 04            [24] 2030 	jnz	00228$
      0028E6                       2031 00227$:
                                   2032 ;	assignBit
      0028E6 C2 00            [12] 2033 	clr	b0
      0028E8 80 02            [24] 2034 	sjmp	00229$
      0028EA                       2035 00228$:
                                   2036 ;	assignBit
      0028EA D2 00            [12] 2037 	setb	b0
      0028EC                       2038 00229$:
      0028EC A2 00            [12] 2039 	mov	c,b0
      0028EE E4               [12] 2040 	clr	a
      0028EF 33               [12] 2041 	rlc	a
      0028F0 8D 82            [24] 2042 	mov	dpl,r5
      0028F2 8E 83            [24] 2043 	mov	dph,r6
      0028F4 F0               [24] 2044 	movx	@dptr,a
                                   2045 ;	life.c:192: cycle2 |= pu[A2D(W, y, x)] ^ nu[A2D(W, y, x)];
      0028F5 78 35            [12] 2046 	mov	r0,#_y
      0028F7 86 06            [24] 2047 	mov	ar6,@r0
      0028F9 08               [12] 2048 	inc	r0
      0028FA E6               [12] 2049 	mov	a,@r0
      0028FB C4               [12] 2050 	swap	a
      0028FC 23               [12] 2051 	rl	a
      0028FD 54 E0            [12] 2052 	anl	a,#0xe0
      0028FF CE               [12] 2053 	xch	a,r6
      002900 C4               [12] 2054 	swap	a
      002901 23               [12] 2055 	rl	a
      002902 CE               [12] 2056 	xch	a,r6
      002903 6E               [12] 2057 	xrl	a,r6
      002904 CE               [12] 2058 	xch	a,r6
      002905 54 E0            [12] 2059 	anl	a,#0xe0
      002907 CE               [12] 2060 	xch	a,r6
      002908 6E               [12] 2061 	xrl	a,r6
      002909 FF               [12] 2062 	mov	r7,a
      00290A 78 33            [12] 2063 	mov	r0,#_x
      00290C E6               [12] 2064 	mov	a,@r0
      00290D 2E               [12] 2065 	add	a,r6
      00290E FE               [12] 2066 	mov	r6,a
      00290F 08               [12] 2067 	inc	r0
      002910 E6               [12] 2068 	mov	a,@r0
      002911 3F               [12] 2069 	addc	a,r7
      002912 FF               [12] 2070 	mov	r7,a
      002913 EE               [12] 2071 	mov	a,r6
      002914 24 00            [12] 2072 	add	a,#_pu
      002916 F5 82            [12] 2073 	mov	dpl,a
      002918 EF               [12] 2074 	mov	a,r7
      002919 34 80            [12] 2075 	addc	a,#(_pu >> 8)
      00291B F5 83            [12] 2076 	mov	dph,a
      00291D E0               [24] 2077 	movx	a,@dptr
      00291E FD               [12] 2078 	mov	r5,a
      00291F EE               [12] 2079 	mov	a,r6
      002920 24 00            [12] 2080 	add	a,#_nu
      002922 F5 82            [12] 2081 	mov	dpl,a
      002924 EF               [12] 2082 	mov	a,r7
      002925 34 A0            [12] 2083 	addc	a,#(_nu >> 8)
      002927 F5 83            [12] 2084 	mov	dph,a
      002929 E0               [24] 2085 	movx	a,@dptr
      00292A FC               [12] 2086 	mov	r4,a
      00292B 6D               [12] 2087 	xrl	a,r5
      00292C 78 3E            [12] 2088 	mov	r0,#_cycle2
      00292E 46               [12] 2089 	orl	a,@r0
      00292F F6               [12] 2090 	mov	@r0,a
                                   2091 ;	life.c:193: fixed |= u[A2D(W, y, x)] ^ nu[A2D(W, y, x)];
      002930 EE               [12] 2092 	mov	a,r6
      002931 24 00            [12] 2093 	add	a,#_u
      002933 F5 82            [12] 2094 	mov	dpl,a
      002935 EF               [12] 2095 	mov	a,r7
      002936 34 90            [12] 2096 	addc	a,#(_u >> 8)
      002938 F5 83            [12] 2097 	mov	dph,a
      00293A E0               [24] 2098 	movx	a,@dptr
      00293B FF               [12] 2099 	mov	r7,a
      00293C EC               [12] 2100 	mov	a,r4
      00293D 6F               [12] 2101 	xrl	a,r7
      00293E 78 3D            [12] 2102 	mov	r0,#_fixed
      002940 46               [12] 2103 	orl	a,@r0
      002941 F6               [12] 2104 	mov	@r0,a
                                   2105 ;	life.c:169: for (x = 0; x < W; x++) {
      002942 78 33            [12] 2106 	mov	r0,#_x
      002944 06               [12] 2107 	inc	@r0
      002945 B6 00 02         [24] 2108 	cjne	@r0,#0x00,00473$
      002948 08               [12] 2109 	inc	r0
      002949 06               [12] 2110 	inc	@r0
      00294A                       2111 00473$:
      00294A 78 33            [12] 2112 	mov	r0,#_x
      00294C C3               [12] 2113 	clr	c
      00294D E6               [12] 2114 	mov	a,@r0
      00294E 94 20            [12] 2115 	subb	a,#0x20
      002950 08               [12] 2116 	inc	r0
      002951 E6               [12] 2117 	mov	a,@r0
      002952 64 80            [12] 2118 	xrl	a,#0x80
      002954 94 80            [12] 2119 	subb	a,#0x80
      002956 50 03            [24] 2120 	jnc	00474$
      002958 02 25 DD         [24] 2121 	ljmp	00200$
      00295B                       2122 00474$:
                                   2123 ;	life.c:166: for (y = 0; y < H; y++) {
      00295B 78 35            [12] 2124 	mov	r0,#_y
      00295D 06               [12] 2125 	inc	@r0
      00295E B6 00 02         [24] 2126 	cjne	@r0,#0x00,00475$
      002961 08               [12] 2127 	inc	r0
      002962 06               [12] 2128 	inc	@r0
      002963                       2129 00475$:
      002963 78 35            [12] 2130 	mov	r0,#_y
      002965 C3               [12] 2131 	clr	c
      002966 E6               [12] 2132 	mov	a,@r0
      002967 94 80            [12] 2133 	subb	a,#0x80
      002969 08               [12] 2134 	inc	r0
      00296A E6               [12] 2135 	mov	a,@r0
      00296B 64 80            [12] 2136 	xrl	a,#0x80
      00296D 94 80            [12] 2137 	subb	a,#0x80
      00296F 50 03            [24] 2138 	jnc	00476$
      002971 02 25 B5         [24] 2139 	ljmp	00202$
      002974                       2140 00476$:
                                   2141 ;	life.c:197: cycle2 = !cycle2;
      002974 78 3E            [12] 2142 	mov	r0,#_cycle2
      002976 E6               [12] 2143 	mov	a,@r0
      002977 B4 01 00         [24] 2144 	cjne	a,#0x01,00477$
      00297A                       2145 00477$:
      00297A 92 00            [24] 2146 	mov	b0,c
      00297C 78 3E            [12] 2147 	mov	r0,#_cycle2
      00297E E4               [12] 2148 	clr	a
      00297F 33               [12] 2149 	rlc	a
      002980 F6               [12] 2150 	mov	@r0,a
                                   2151 ;	life.c:198: fixed = !fixed;
      002981 78 3D            [12] 2152 	mov	r0,#_fixed
      002983 E6               [12] 2153 	mov	a,@r0
      002984 B4 01 00         [24] 2154 	cjne	a,#0x01,00478$
      002987                       2155 00478$:
      002987 92 00            [24] 2156 	mov	b0,c
      002989 78 3D            [12] 2157 	mov	r0,#_fixed
      00298B E4               [12] 2158 	clr	a
      00298C 33               [12] 2159 	rlc	a
      00298D F6               [12] 2160 	mov	@r0,a
                                   2161 ;	life.c:200: memcpy(pu, u, sizeof (u));
      00298E E4               [12] 2162 	clr	a
      00298F C0 E0            [24] 2163 	push	acc
      002991 74 10            [12] 2164 	mov	a,#0x10
      002993 C0 E0            [24] 2165 	push	acc
      002995 74 00            [12] 2166 	mov	a,#_u
      002997 C0 E0            [24] 2167 	push	acc
      002999 74 90            [12] 2168 	mov	a,#(_u >> 8)
      00299B C0 E0            [24] 2169 	push	acc
      00299D E4               [12] 2170 	clr	a
      00299E C0 E0            [24] 2171 	push	acc
      0029A0 90 80 00         [24] 2172 	mov	dptr,#_pu
      0029A3 75 F0 00         [24] 2173 	mov	b,#0x00
      0029A6 12 2A AD         [24] 2174 	lcall	___memcpy
      0029A9 E5 81            [12] 2175 	mov	a,sp
      0029AB 24 FB            [12] 2176 	add	a,#0xfb
      0029AD F5 81            [12] 2177 	mov	sp,a
                                   2178 ;	life.c:201: memcpy(u, nu, sizeof (nu));
      0029AF E4               [12] 2179 	clr	a
      0029B0 C0 E0            [24] 2180 	push	acc
      0029B2 74 10            [12] 2181 	mov	a,#0x10
      0029B4 C0 E0            [24] 2182 	push	acc
      0029B6 74 00            [12] 2183 	mov	a,#_nu
      0029B8 C0 E0            [24] 2184 	push	acc
      0029BA 74 A0            [12] 2185 	mov	a,#(_nu >> 8)
      0029BC C0 E0            [24] 2186 	push	acc
      0029BE E4               [12] 2187 	clr	a
      0029BF C0 E0            [24] 2188 	push	acc
      0029C1 90 90 00         [24] 2189 	mov	dptr,#_u
      0029C4 75 F0 00         [24] 2190 	mov	b,#0x00
      0029C7 12 2A AD         [24] 2191 	lcall	___memcpy
      0029CA E5 81            [12] 2192 	mov	a,sp
      0029CC 24 FB            [12] 2193 	add	a,#0xfb
      0029CE F5 81            [12] 2194 	mov	sp,a
                                   2195 ;	life.c:239: if (fixed || cycle2) {
      0029D0 78 3D            [12] 2196 	mov	r0,#_fixed
      0029D2 E6               [12] 2197 	mov	a,@r0
      0029D3 70 08            [24] 2198 	jnz	00126$
      0029D5 78 3E            [12] 2199 	mov	r0,#_cycle2
      0029D7 E6               [12] 2200 	mov	a,@r0
      0029D8 70 03            [24] 2201 	jnz	00480$
      0029DA 02 25 8D         [24] 2202 	ljmp	00215$
      0029DD                       2203 00480$:
      0029DD                       2204 00126$:
                                   2205 ;	life.c:240: printstr("DONE ");
      0029DD 7D 2E            [12] 2206 	mov	r5,#___str_6
      0029DF 7E 2D            [12] 2207 	mov	r6,#(___str_6 >> 8)
      0029E1 7F 80            [12] 2208 	mov	r7,#0x80
                                   2209 ;	life.c:49: return;
      0029E3                       2210 00205$:
                                   2211 ;	life.c:47: for (; *s; s++) putchar(*s);
      0029E3 8D 82            [24] 2212 	mov	dpl,r5
      0029E5 8E 83            [24] 2213 	mov	dph,r6
      0029E7 8F F0            [24] 2214 	mov	b,r7
      0029E9 12 2B D1         [24] 2215 	lcall	__gptrget
      0029EC FC               [12] 2216 	mov	r4,a
      0029ED 60 10            [24] 2217 	jz	00176$
      0029EF 7B 00            [12] 2218 	mov	r3,#0x00
      0029F1 8C 82            [24] 2219 	mov	dpl,r4
      0029F3 8B 83            [24] 2220 	mov	dph,r3
      0029F5 12 20 C5         [24] 2221 	lcall	_putchar
      0029F8 0D               [12] 2222 	inc	r5
                                   2223 ;	life.c:240: printstr("DONE ");
      0029F9 BD 00 E7         [24] 2224 	cjne	r5,#0x00,00205$
      0029FC 0E               [12] 2225 	inc	r6
      0029FD 80 E4            [24] 2226 	sjmp	00205$
      0029FF                       2227 00176$:
                                   2228 ;	life.c:241: if (fixed) printstr("FIXED\r\n");
      0029FF 78 3D            [12] 2229 	mov	r0,#_fixed
      002A01 E6               [12] 2230 	mov	a,@r0
      002A02 60 22            [24] 2231 	jz	00124$
      002A04 7D 34            [12] 2232 	mov	r5,#___str_7
      002A06 7E 2D            [12] 2233 	mov	r6,#(___str_7 >> 8)
      002A08 7F 80            [12] 2234 	mov	r7,#0x80
                                   2235 ;	life.c:49: return;
      002A0A                       2236 00208$:
                                   2237 ;	life.c:47: for (; *s; s++) putchar(*s);
      002A0A 8D 82            [24] 2238 	mov	dpl,r5
      002A0C 8E 83            [24] 2239 	mov	dph,r6
      002A0E 8F F0            [24] 2240 	mov	b,r7
      002A10 12 2B D1         [24] 2241 	lcall	__gptrget
      002A13 FC               [12] 2242 	mov	r4,a
      002A14 60 32            [24] 2243 	jz	00125$
      002A16 7B 00            [12] 2244 	mov	r3,#0x00
      002A18 8C 82            [24] 2245 	mov	dpl,r4
      002A1A 8B 83            [24] 2246 	mov	dph,r3
      002A1C 12 20 C5         [24] 2247 	lcall	_putchar
      002A1F 0D               [12] 2248 	inc	r5
                                   2249 ;	life.c:241: if (fixed) printstr("FIXED\r\n");
      002A20 BD 00 E7         [24] 2250 	cjne	r5,#0x00,00208$
      002A23 0E               [12] 2251 	inc	r6
      002A24 80 E4            [24] 2252 	sjmp	00208$
      002A26                       2253 00124$:
                                   2254 ;	life.c:242: else printstr("CYCLE2\r\n");
      002A26 7D 3C            [12] 2255 	mov	r5,#___str_8
      002A28 7E 2D            [12] 2256 	mov	r6,#(___str_8 >> 8)
      002A2A 7F 80            [12] 2257 	mov	r7,#0x80
                                   2258 ;	life.c:49: return;
      002A2C                       2259 00211$:
                                   2260 ;	life.c:47: for (; *s; s++) putchar(*s);
      002A2C 8D 82            [24] 2261 	mov	dpl,r5
      002A2E 8E 83            [24] 2262 	mov	dph,r6
      002A30 8F F0            [24] 2263 	mov	b,r7
      002A32 12 2B D1         [24] 2264 	lcall	__gptrget
      002A35 FC               [12] 2265 	mov	r4,a
      002A36 60 10            [24] 2266 	jz	00125$
      002A38 7B 00            [12] 2267 	mov	r3,#0x00
      002A3A 8C 82            [24] 2268 	mov	dpl,r4
      002A3C 8B 83            [24] 2269 	mov	dph,r3
      002A3E 12 20 C5         [24] 2270 	lcall	_putchar
      002A41 0D               [12] 2271 	inc	r5
                                   2272 ;	life.c:242: else printstr("CYCLE2\r\n");
      002A42 BD 00 E7         [24] 2273 	cjne	r5,#0x00,00211$
      002A45 0E               [12] 2274 	inc	r6
      002A46 80 E4            [24] 2275 	sjmp	00211$
      002A48                       2276 00125$:
                                   2277 ;	life.c:243: (void)getchar();
      002A48 12 20 CA         [24] 2278 	lcall	_getchar
                                   2279 ;	life.c:244: break;
      002A4B                       2280 00129$:
                                   2281 ;	life.c:248: if (i1) {
      002A4B 78 32            [12] 2282 	mov	r0,#_i1
      002A4D E6               [12] 2283 	mov	a,@r0
      002A4E 60 25            [24] 2284 	jz	00221$
                                   2285 ;	life.c:249: printstr("BREAK\r\n");
      002A50 7D 45            [12] 2286 	mov	r5,#___str_9
      002A52 7E 2D            [12] 2287 	mov	r6,#(___str_9 >> 8)
      002A54 7F 80            [12] 2288 	mov	r7,#0x80
                                   2289 ;	life.c:49: return;
      002A56                       2290 00218$:
                                   2291 ;	life.c:47: for (; *s; s++) putchar(*s);
      002A56 8D 82            [24] 2292 	mov	dpl,r5
      002A58 8E 83            [24] 2293 	mov	dph,r6
      002A5A 8F F0            [24] 2294 	mov	b,r7
      002A5C 12 2B D1         [24] 2295 	lcall	__gptrget
      002A5F FC               [12] 2296 	mov	r4,a
      002A60 60 10            [24] 2297 	jz	00182$
      002A62 7B 00            [12] 2298 	mov	r3,#0x00
      002A64 8C 82            [24] 2299 	mov	dpl,r4
      002A66 8B 83            [24] 2300 	mov	dph,r3
      002A68 12 20 C5         [24] 2301 	lcall	_putchar
      002A6B 0D               [12] 2302 	inc	r5
                                   2303 ;	life.c:249: printstr("BREAK\r\n");
      002A6C BD 00 E7         [24] 2304 	cjne	r5,#0x00,00218$
      002A6F 0E               [12] 2305 	inc	r6
      002A70 80 E4            [24] 2306 	sjmp	00218$
      002A72                       2307 00182$:
                                   2308 ;	life.c:250: (void)getchar();
      002A72 12 20 CA         [24] 2309 	lcall	_getchar
      002A75                       2310 00221$:
                                   2311 ;	life.c:213: for (i0 = 0; !i0; ) {		
      002A75 78 31            [12] 2312 	mov	r0,#_i0
      002A77 E6               [12] 2313 	mov	a,@r0
      002A78 70 03            [24] 2314 	jnz	00491$
      002A7A 02 22 F4         [24] 2315 	ljmp	00220$
      002A7D                       2316 00491$:
                                   2317 ;	life.c:254: terminate:
      002A7D                       2318 00133$:
                                   2319 ;	life.c:255: EA = 0;
                                   2320 ;	assignBit
      002A7D C2 AF            [12] 2321 	clr	_EA
                                   2322 ;	life.c:256: printstr("TERM\r\n");
      002A7F 7D 4D            [12] 2323 	mov	r5,#___str_10
      002A81 7E 2D            [12] 2324 	mov	r6,#(___str_10 >> 8)
      002A83 7F 80            [12] 2325 	mov	r7,#0x80
                                   2326 ;	life.c:49: return;
      002A85                       2327 00223$:
                                   2328 ;	life.c:47: for (; *s; s++) putchar(*s);
      002A85 8D 82            [24] 2329 	mov	dpl,r5
      002A87 8E 83            [24] 2330 	mov	dph,r6
      002A89 8F F0            [24] 2331 	mov	b,r7
      002A8B 12 2B D1         [24] 2332 	lcall	__gptrget
      002A8E FC               [12] 2333 	mov	r4,a
      002A8F 60 10            [24] 2334 	jz	00184$
      002A91 7B 00            [12] 2335 	mov	r3,#0x00
      002A93 8C 82            [24] 2336 	mov	dpl,r4
      002A95 8B 83            [24] 2337 	mov	dph,r3
      002A97 12 20 C5         [24] 2338 	lcall	_putchar
      002A9A 0D               [12] 2339 	inc	r5
                                   2340 ;	life.c:256: printstr("TERM\r\n");
      002A9B BD 00 E7         [24] 2341 	cjne	r5,#0x00,00223$
      002A9E 0E               [12] 2342 	inc	r6
      002A9F 80 E4            [24] 2343 	sjmp	00223$
      002AA1                       2344 00184$:
                                   2345 ;	life.c:257: (void)getchar();
      002AA1 12 20 CA         [24] 2346 	lcall	_getchar
                                   2347 ;	life.c:261: __endasm;
      002AA4 02 00 00         [24] 2348 	ljmp	0
                                   2349 ;	life.c:262: }
      002AA7 85 10 81         [24] 2350 	mov	sp,_bp
      002AAA D0 10            [24] 2351 	pop	_bp
      002AAC 22               [24] 2352 	ret
                                   2353 	.area CSEG    (CODE)
                                   2354 	.area CONST   (CODE)
                                   2355 	.area CONST   (CODE)
      002CF9                       2356 ___str_0:
      002CF9 1B                    2357 	.db 0x1b
      002CFA 5B 32 4A              2358 	.ascii "[2J"
      002CFD 1B                    2359 	.db 0x1b
      002CFE 5B 6D 47 45 4E 20     2360 	.ascii "[mGEN "
      002D04 00                    2361 	.db 0x00
                                   2362 	.area CSEG    (CODE)
                                   2363 	.area CONST   (CODE)
      002D05                       2364 ___str_1:
      002D05 0D                    2365 	.db 0x0d
      002D06 0A                    2366 	.db 0x0a
      002D07 00                    2367 	.db 0x00
                                   2368 	.area CSEG    (CODE)
                                   2369 	.area CONST   (CODE)
      002D08                       2370 ___str_2:
      002D08 4C 4F 41 44 20 3C     2371 	.ascii "LOAD <"
      002D0E 00                    2372 	.db 0x00
                                   2373 	.area CSEG    (CODE)
                                   2374 	.area CONST   (CODE)
      002D0F                       2375 ___str_3:
      002D0F 3E                    2376 	.ascii ">"
      002D10 0D                    2377 	.db 0x0d
      002D11 0A                    2378 	.db 0x0a
      002D12 00                    2379 	.db 0x00
                                   2380 	.area CSEG    (CODE)
                                   2381 	.area CONST   (CODE)
      002D13                       2382 ___str_4:
      002D13 1B                    2383 	.db 0x1b
      002D14 5B 32 4A              2384 	.ascii "[2J"
      002D17 1B                    2385 	.db 0x1b
      002D18 5B 6D 4C 49 46 45 20  2386 	.ascii "[mLIFE INIT"
             49 4E 49 54
      002D23 0D                    2387 	.db 0x0d
      002D24 0A                    2388 	.db 0x0a
      002D25 00                    2389 	.db 0x00
                                   2390 	.area CSEG    (CODE)
                                   2391 	.area CONST   (CODE)
      002D26                       2392 ___str_5:
      002D26 52 45 41 44 59        2393 	.ascii "READY"
      002D2B 0D                    2394 	.db 0x0d
      002D2C 0A                    2395 	.db 0x0a
      002D2D 00                    2396 	.db 0x00
                                   2397 	.area CSEG    (CODE)
                                   2398 	.area CONST   (CODE)
      002D2E                       2399 ___str_6:
      002D2E 44 4F 4E 45 20        2400 	.ascii "DONE "
      002D33 00                    2401 	.db 0x00
                                   2402 	.area CSEG    (CODE)
                                   2403 	.area CONST   (CODE)
      002D34                       2404 ___str_7:
      002D34 46 49 58 45 44        2405 	.ascii "FIXED"
      002D39 0D                    2406 	.db 0x0d
      002D3A 0A                    2407 	.db 0x0a
      002D3B 00                    2408 	.db 0x00
                                   2409 	.area CSEG    (CODE)
                                   2410 	.area CONST   (CODE)
      002D3C                       2411 ___str_8:
      002D3C 43 59 43 4C 45 32     2412 	.ascii "CYCLE2"
      002D42 0D                    2413 	.db 0x0d
      002D43 0A                    2414 	.db 0x0a
      002D44 00                    2415 	.db 0x00
                                   2416 	.area CSEG    (CODE)
                                   2417 	.area CONST   (CODE)
      002D45                       2418 ___str_9:
      002D45 42 52 45 41 4B        2419 	.ascii "BREAK"
      002D4A 0D                    2420 	.db 0x0d
      002D4B 0A                    2421 	.db 0x0a
      002D4C 00                    2422 	.db 0x00
                                   2423 	.area CSEG    (CODE)
                                   2424 	.area CONST   (CODE)
      002D4D                       2425 ___str_10:
      002D4D 54 45 52 4D           2426 	.ascii "TERM"
      002D51 0D                    2427 	.db 0x0d
      002D52 0A                    2428 	.db 0x0a
      002D53 00                    2429 	.db 0x00
                                   2430 	.area CSEG    (CODE)
                                   2431 	.area XINIT   (CODE)
                                   2432 	.area CABS    (ABS,CODE)
