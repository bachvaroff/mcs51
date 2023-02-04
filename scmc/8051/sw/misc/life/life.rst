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
                                     17 	.globl ___memcpy
                                     18 	.globl _memset
                                     19 	.globl _CY
                                     20 	.globl _AC
                                     21 	.globl _F0
                                     22 	.globl _RS1
                                     23 	.globl _RS0
                                     24 	.globl _OV
                                     25 	.globl _FL
                                     26 	.globl _P
                                     27 	.globl _TF2
                                     28 	.globl _EXF2
                                     29 	.globl _RCLK
                                     30 	.globl _TCLK
                                     31 	.globl _EXEN2
                                     32 	.globl _TR2
                                     33 	.globl _C_T2
                                     34 	.globl _CP_RL2
                                     35 	.globl _T2CON_7
                                     36 	.globl _T2CON_6
                                     37 	.globl _T2CON_5
                                     38 	.globl _T2CON_4
                                     39 	.globl _T2CON_3
                                     40 	.globl _T2CON_2
                                     41 	.globl _T2CON_1
                                     42 	.globl _T2CON_0
                                     43 	.globl _PT2
                                     44 	.globl _PS
                                     45 	.globl _PT1
                                     46 	.globl _PX1
                                     47 	.globl _PT0
                                     48 	.globl _PX0
                                     49 	.globl _RD
                                     50 	.globl _WR
                                     51 	.globl _T1
                                     52 	.globl _T0
                                     53 	.globl _INT1
                                     54 	.globl _INT0
                                     55 	.globl _TXD
                                     56 	.globl _RXD
                                     57 	.globl _P3_7
                                     58 	.globl _P3_6
                                     59 	.globl _P3_5
                                     60 	.globl _P3_4
                                     61 	.globl _P3_3
                                     62 	.globl _P3_2
                                     63 	.globl _P3_1
                                     64 	.globl _P3_0
                                     65 	.globl _EA
                                     66 	.globl _ET2
                                     67 	.globl _ES
                                     68 	.globl _ET1
                                     69 	.globl _EX1
                                     70 	.globl _ET0
                                     71 	.globl _EX0
                                     72 	.globl _P2_7
                                     73 	.globl _P2_6
                                     74 	.globl _P2_5
                                     75 	.globl _P2_4
                                     76 	.globl _P2_3
                                     77 	.globl _P2_2
                                     78 	.globl _P2_1
                                     79 	.globl _P2_0
                                     80 	.globl _SM0
                                     81 	.globl _SM1
                                     82 	.globl _SM2
                                     83 	.globl _REN
                                     84 	.globl _TB8
                                     85 	.globl _RB8
                                     86 	.globl _TI
                                     87 	.globl _RI
                                     88 	.globl _T2EX
                                     89 	.globl _T2
                                     90 	.globl _P1_7
                                     91 	.globl _P1_6
                                     92 	.globl _P1_5
                                     93 	.globl _P1_4
                                     94 	.globl _P1_3
                                     95 	.globl _P1_2
                                     96 	.globl _P1_1
                                     97 	.globl _P1_0
                                     98 	.globl _TF1
                                     99 	.globl _TR1
                                    100 	.globl _TF0
                                    101 	.globl _TR0
                                    102 	.globl _IE1
                                    103 	.globl _IT1
                                    104 	.globl _IE0
                                    105 	.globl _IT0
                                    106 	.globl _P0_7
                                    107 	.globl _P0_6
                                    108 	.globl _P0_5
                                    109 	.globl _P0_4
                                    110 	.globl _P0_3
                                    111 	.globl _P0_2
                                    112 	.globl _P0_1
                                    113 	.globl _P0_0
                                    114 	.globl _B
                                    115 	.globl _A
                                    116 	.globl _ACC
                                    117 	.globl _PSW
                                    118 	.globl _TH2
                                    119 	.globl _TL2
                                    120 	.globl _RCAP2H
                                    121 	.globl _RCAP2L
                                    122 	.globl _T2MOD
                                    123 	.globl _T2CON
                                    124 	.globl _IP
                                    125 	.globl _P3
                                    126 	.globl _IE
                                    127 	.globl _P2
                                    128 	.globl _SBUF
                                    129 	.globl _SCON
                                    130 	.globl _P1
                                    131 	.globl _TH1
                                    132 	.globl _TH0
                                    133 	.globl _TL1
                                    134 	.globl _TL0
                                    135 	.globl _TMOD
                                    136 	.globl _TCON
                                    137 	.globl _PCON
                                    138 	.globl _DPH
                                    139 	.globl _DPL
                                    140 	.globl _SP
                                    141 	.globl _P0
                                    142 ;--------------------------------------------------------
                                    143 ; special function registers
                                    144 ;--------------------------------------------------------
                                    145 	.area RSEG    (ABS,DATA)
      000000                        146 	.org 0x0000
                           000080   147 _P0	=	0x0080
                           000081   148 _SP	=	0x0081
                           000082   149 _DPL	=	0x0082
                           000083   150 _DPH	=	0x0083
                           000087   151 _PCON	=	0x0087
                           000088   152 _TCON	=	0x0088
                           000089   153 _TMOD	=	0x0089
                           00008A   154 _TL0	=	0x008a
                           00008B   155 _TL1	=	0x008b
                           00008C   156 _TH0	=	0x008c
                           00008D   157 _TH1	=	0x008d
                           000090   158 _P1	=	0x0090
                           000098   159 _SCON	=	0x0098
                           000099   160 _SBUF	=	0x0099
                           0000A0   161 _P2	=	0x00a0
                           0000A8   162 _IE	=	0x00a8
                           0000B0   163 _P3	=	0x00b0
                           0000B8   164 _IP	=	0x00b8
                           0000C8   165 _T2CON	=	0x00c8
                           0000C9   166 _T2MOD	=	0x00c9
                           0000CA   167 _RCAP2L	=	0x00ca
                           0000CB   168 _RCAP2H	=	0x00cb
                           0000CC   169 _TL2	=	0x00cc
                           0000CD   170 _TH2	=	0x00cd
                           0000D0   171 _PSW	=	0x00d0
                           0000E0   172 _ACC	=	0x00e0
                           0000E0   173 _A	=	0x00e0
                           0000F0   174 _B	=	0x00f0
                                    175 ;--------------------------------------------------------
                                    176 ; special function bits
                                    177 ;--------------------------------------------------------
                                    178 	.area RSEG    (ABS,DATA)
      000000                        179 	.org 0x0000
                           000080   180 _P0_0	=	0x0080
                           000081   181 _P0_1	=	0x0081
                           000082   182 _P0_2	=	0x0082
                           000083   183 _P0_3	=	0x0083
                           000084   184 _P0_4	=	0x0084
                           000085   185 _P0_5	=	0x0085
                           000086   186 _P0_6	=	0x0086
                           000087   187 _P0_7	=	0x0087
                           000088   188 _IT0	=	0x0088
                           000089   189 _IE0	=	0x0089
                           00008A   190 _IT1	=	0x008a
                           00008B   191 _IE1	=	0x008b
                           00008C   192 _TR0	=	0x008c
                           00008D   193 _TF0	=	0x008d
                           00008E   194 _TR1	=	0x008e
                           00008F   195 _TF1	=	0x008f
                           000090   196 _P1_0	=	0x0090
                           000091   197 _P1_1	=	0x0091
                           000092   198 _P1_2	=	0x0092
                           000093   199 _P1_3	=	0x0093
                           000094   200 _P1_4	=	0x0094
                           000095   201 _P1_5	=	0x0095
                           000096   202 _P1_6	=	0x0096
                           000097   203 _P1_7	=	0x0097
                           000090   204 _T2	=	0x0090
                           000091   205 _T2EX	=	0x0091
                           000098   206 _RI	=	0x0098
                           000099   207 _TI	=	0x0099
                           00009A   208 _RB8	=	0x009a
                           00009B   209 _TB8	=	0x009b
                           00009C   210 _REN	=	0x009c
                           00009D   211 _SM2	=	0x009d
                           00009E   212 _SM1	=	0x009e
                           00009F   213 _SM0	=	0x009f
                           0000A0   214 _P2_0	=	0x00a0
                           0000A1   215 _P2_1	=	0x00a1
                           0000A2   216 _P2_2	=	0x00a2
                           0000A3   217 _P2_3	=	0x00a3
                           0000A4   218 _P2_4	=	0x00a4
                           0000A5   219 _P2_5	=	0x00a5
                           0000A6   220 _P2_6	=	0x00a6
                           0000A7   221 _P2_7	=	0x00a7
                           0000A8   222 _EX0	=	0x00a8
                           0000A9   223 _ET0	=	0x00a9
                           0000AA   224 _EX1	=	0x00aa
                           0000AB   225 _ET1	=	0x00ab
                           0000AC   226 _ES	=	0x00ac
                           0000AD   227 _ET2	=	0x00ad
                           0000AF   228 _EA	=	0x00af
                           0000B0   229 _P3_0	=	0x00b0
                           0000B1   230 _P3_1	=	0x00b1
                           0000B2   231 _P3_2	=	0x00b2
                           0000B3   232 _P3_3	=	0x00b3
                           0000B4   233 _P3_4	=	0x00b4
                           0000B5   234 _P3_5	=	0x00b5
                           0000B6   235 _P3_6	=	0x00b6
                           0000B7   236 _P3_7	=	0x00b7
                           0000B0   237 _RXD	=	0x00b0
                           0000B1   238 _TXD	=	0x00b1
                           0000B2   239 _INT0	=	0x00b2
                           0000B3   240 _INT1	=	0x00b3
                           0000B4   241 _T0	=	0x00b4
                           0000B5   242 _T1	=	0x00b5
                           0000B6   243 _WR	=	0x00b6
                           0000B7   244 _RD	=	0x00b7
                           0000B8   245 _PX0	=	0x00b8
                           0000B9   246 _PT0	=	0x00b9
                           0000BA   247 _PX1	=	0x00ba
                           0000BB   248 _PT1	=	0x00bb
                           0000BC   249 _PS	=	0x00bc
                           0000BD   250 _PT2	=	0x00bd
                           0000C8   251 _T2CON_0	=	0x00c8
                           0000C9   252 _T2CON_1	=	0x00c9
                           0000CA   253 _T2CON_2	=	0x00ca
                           0000CB   254 _T2CON_3	=	0x00cb
                           0000CC   255 _T2CON_4	=	0x00cc
                           0000CD   256 _T2CON_5	=	0x00cd
                           0000CE   257 _T2CON_6	=	0x00ce
                           0000CF   258 _T2CON_7	=	0x00cf
                           0000C8   259 _CP_RL2	=	0x00c8
                           0000C9   260 _C_T2	=	0x00c9
                           0000CA   261 _TR2	=	0x00ca
                           0000CB   262 _EXEN2	=	0x00cb
                           0000CC   263 _TCLK	=	0x00cc
                           0000CD   264 _RCLK	=	0x00cd
                           0000CE   265 _EXF2	=	0x00ce
                           0000CF   266 _TF2	=	0x00cf
                           0000D0   267 _P	=	0x00d0
                           0000D1   268 _FL	=	0x00d1
                           0000D2   269 _OV	=	0x00d2
                           0000D3   270 _RS0	=	0x00d3
                           0000D4   271 _RS1	=	0x00d4
                           0000D5   272 _F0	=	0x00d5
                           0000D6   273 _AC	=	0x00d6
                           0000D7   274 _CY	=	0x00d7
                                    275 ;--------------------------------------------------------
                                    276 ; overlayable register banks
                                    277 ;--------------------------------------------------------
                                    278 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        279 	.ds 8
                                    280 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        281 	.ds 8
                                    282 ;--------------------------------------------------------
                                    283 ; overlayable bit register bank
                                    284 ;--------------------------------------------------------
                                    285 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        286 bits:
      000020                        287 	.ds 1
                           008000   288 	b0 = bits[0]
                           008100   289 	b1 = bits[1]
                           008200   290 	b2 = bits[2]
                           008300   291 	b3 = bits[3]
                           008400   292 	b4 = bits[4]
                           008500   293 	b5 = bits[5]
                           008600   294 	b6 = bits[6]
                           008700   295 	b7 = bits[7]
                                    296 ;--------------------------------------------------------
                                    297 ; internal ram data
                                    298 ;--------------------------------------------------------
                                    299 	.area DSEG    (DATA)
                                    300 ;--------------------------------------------------------
                                    301 ; overlayable items in internal ram 
                                    302 ;--------------------------------------------------------
                                    303 ;--------------------------------------------------------
                                    304 ; Stack segment in internal ram 
                                    305 ;--------------------------------------------------------
                                    306 	.area	SSEG
      00004B                        307 __start__stack:
      00004B                        308 	.ds	1
                                    309 
                                    310 ;--------------------------------------------------------
                                    311 ; indirectly addressable internal ram data
                                    312 ;--------------------------------------------------------
                                    313 	.area ISEG    (DATA)
      000021                        314 _digits:
      000021                        315 	.ds 16
      000031                        316 _i0:
      000031                        317 	.ds 1
      000032                        318 _i1:
      000032                        319 	.ds 1
      000033                        320 _x:
      000033                        321 	.ds 2
      000035                        322 _y:
      000035                        323 	.ds 2
      000037                        324 _j:
      000037                        325 	.ds 2
      000039                        326 _c:
      000039                        327 	.ds 2
      00003B                        328 _bstep:
      00003B                        329 	.ds 1
      00003C                        330 _n:
      00003C                        331 	.ds 1
      00003D                        332 _fixed:
      00003D                        333 	.ds 1
      00003E                        334 _cycle2:
      00003E                        335 	.ds 1
      00003F                        336 _x1:
      00003F                        337 	.ds 2
      000041                        338 _y1:
      000041                        339 	.ds 2
      000043                        340 _generation:
      000043                        341 	.ds 4
      000047                        342 _busy:
      000047                        343 	.ds 4
                                    344 ;--------------------------------------------------------
                                    345 ; absolute internal ram data
                                    346 ;--------------------------------------------------------
                                    347 	.area IABS    (ABS,DATA)
                                    348 	.area IABS    (ABS,DATA)
                                    349 ;--------------------------------------------------------
                                    350 ; bit data
                                    351 ;--------------------------------------------------------
                                    352 	.area BSEG    (BIT)
                                    353 ;--------------------------------------------------------
                                    354 ; paged external ram data
                                    355 ;--------------------------------------------------------
                                    356 	.area PSEG    (PAG,XDATA)
                                    357 ;--------------------------------------------------------
                                    358 ; external ram data
                                    359 ;--------------------------------------------------------
                                    360 	.area XSEG    (XDATA)
      008000                        361 _pu:
      008000                        362 	.ds 2048
      008800                        363 _u:
      008800                        364 	.ds 2048
      009000                        365 _nu:
      009000                        366 	.ds 2048
                                    367 ;--------------------------------------------------------
                                    368 ; absolute external ram data
                                    369 ;--------------------------------------------------------
                                    370 	.area XABS    (ABS,XDATA)
                                    371 ;--------------------------------------------------------
                                    372 ; external initialized ram data
                                    373 ;--------------------------------------------------------
                                    374 	.area XISEG   (XDATA)
                                    375 	.area HOME    (CODE)
                                    376 	.area GSINIT0 (CODE)
                                    377 	.area GSINIT1 (CODE)
                                    378 	.area GSINIT2 (CODE)
                                    379 	.area GSINIT3 (CODE)
                                    380 	.area GSINIT4 (CODE)
                                    381 	.area GSINIT5 (CODE)
                                    382 	.area GSINIT  (CODE)
                                    383 	.area GSFINAL (CODE)
                                    384 	.area CSEG    (CODE)
                                    385 ;--------------------------------------------------------
                                    386 ; interrupt vector 
                                    387 ;--------------------------------------------------------
                                    388 	.area HOME    (CODE)
      002000                        389 __interrupt_vect:
      002000 02 20 19         [24]  390 	ljmp	__sdcc_gsinit_startup
      002003 02 20 D3         [24]  391 	ljmp	_int0
      002006                        392 	.ds	5
      00200B 32               [24]  393 	reti
      00200C                        394 	.ds	7
      002013 02 20 DF         [24]  395 	ljmp	_int1
                                    396 ;--------------------------------------------------------
                                    397 ; global & static initialisations
                                    398 ;--------------------------------------------------------
                                    399 	.area HOME    (CODE)
                                    400 	.area GSINIT  (CODE)
                                    401 	.area GSFINAL (CODE)
                                    402 	.area GSINIT  (CODE)
                                    403 	.globl __sdcc_gsinit_startup
                                    404 	.globl __sdcc_program_startup
                                    405 	.globl __start__stack
                                    406 	.globl __mcs51_genXINIT
                                    407 	.globl __mcs51_genXRAMCLEAR
                                    408 	.globl __mcs51_genRAMCLEAR
                                    409 ;	life.c:24: __idata static const char digits[16] = {
      002072 78 21            [12]  410 	mov	r0,#_digits
      002074 76 30            [12]  411 	mov	@r0,#0x30
      002076 78 22            [12]  412 	mov	r0,#(_digits + 0x0001)
      002078 76 31            [12]  413 	mov	@r0,#0x31
      00207A 78 23            [12]  414 	mov	r0,#(_digits + 0x0002)
      00207C 76 32            [12]  415 	mov	@r0,#0x32
      00207E 78 24            [12]  416 	mov	r0,#(_digits + 0x0003)
      002080 76 33            [12]  417 	mov	@r0,#0x33
      002082 78 25            [12]  418 	mov	r0,#(_digits + 0x0004)
      002084 76 34            [12]  419 	mov	@r0,#0x34
      002086 78 26            [12]  420 	mov	r0,#(_digits + 0x0005)
      002088 76 35            [12]  421 	mov	@r0,#0x35
      00208A 78 27            [12]  422 	mov	r0,#(_digits + 0x0006)
      00208C 76 36            [12]  423 	mov	@r0,#0x36
      00208E 78 28            [12]  424 	mov	r0,#(_digits + 0x0007)
      002090 76 37            [12]  425 	mov	@r0,#0x37
      002092 78 29            [12]  426 	mov	r0,#(_digits + 0x0008)
      002094 76 38            [12]  427 	mov	@r0,#0x38
      002096 78 2A            [12]  428 	mov	r0,#(_digits + 0x0009)
      002098 76 39            [12]  429 	mov	@r0,#0x39
      00209A 78 2B            [12]  430 	mov	r0,#(_digits + 0x000a)
      00209C 76 41            [12]  431 	mov	@r0,#0x41
      00209E 78 2C            [12]  432 	mov	r0,#(_digits + 0x000b)
      0020A0 76 42            [12]  433 	mov	@r0,#0x42
      0020A2 78 2D            [12]  434 	mov	r0,#(_digits + 0x000c)
      0020A4 76 43            [12]  435 	mov	@r0,#0x43
      0020A6 78 2E            [12]  436 	mov	r0,#(_digits + 0x000d)
      0020A8 76 44            [12]  437 	mov	@r0,#0x44
      0020AA 78 2F            [12]  438 	mov	r0,#(_digits + 0x000e)
      0020AC 76 45            [12]  439 	mov	@r0,#0x45
      0020AE 78 30            [12]  440 	mov	r0,#(_digits + 0x000f)
      0020B0 76 46            [12]  441 	mov	@r0,#0x46
                                    442 ;	life.c:152: __idata static const char busy[4] = { '\\', '|', '/', '-' };
      0020B2 78 47            [12]  443 	mov	r0,#_busy
      0020B4 76 5C            [12]  444 	mov	@r0,#0x5c
      0020B6 78 48            [12]  445 	mov	r0,#(_busy + 0x0001)
      0020B8 76 7C            [12]  446 	mov	@r0,#0x7c
      0020BA 78 49            [12]  447 	mov	r0,#(_busy + 0x0002)
      0020BC 76 2F            [12]  448 	mov	@r0,#0x2f
      0020BE 78 4A            [12]  449 	mov	r0,#(_busy + 0x0003)
      0020C0 76 2D            [12]  450 	mov	@r0,#0x2d
                                    451 	.area GSFINAL (CODE)
      0020C2 02 20 16         [24]  452 	ljmp	__sdcc_program_startup
                                    453 ;--------------------------------------------------------
                                    454 ; Home
                                    455 ;--------------------------------------------------------
                                    456 	.area HOME    (CODE)
                                    457 	.area HOME    (CODE)
      002016                        458 __sdcc_program_startup:
      002016 02 22 E8         [24]  459 	ljmp	_main
                                    460 ;	return from main will return to caller
                                    461 ;--------------------------------------------------------
                                    462 ; code
                                    463 ;--------------------------------------------------------
                                    464 	.area CSEG    (CODE)
                                    465 ;------------------------------------------------------------
                                    466 ;Allocation info for local variables in function 'putchar'
                                    467 ;------------------------------------------------------------
                                    468 ;c                         Allocated to registers 
                                    469 ;------------------------------------------------------------
                                    470 ;	life.c:7: int putchar(int c) __naked {
                                    471 ;	-----------------------------------------
                                    472 ;	 function putchar
                                    473 ;	-----------------------------------------
      0020C5                        474 _putchar:
                                    475 ;	naked function: no prologue.
                                    476 ;	life.c:12: __endasm;
      0020C5 E5 82            [12]  477 	mov	a, dpl
      0020C7 02 00 30         [24]  478 	ljmp	0x0030
                                    479 ;	life.c:13: }
                                    480 ;	naked function: no epilogue.
                                    481 ;------------------------------------------------------------
                                    482 ;Allocation info for local variables in function 'getchar'
                                    483 ;------------------------------------------------------------
                                    484 ;	life.c:15: int getchar(void) __naked {
                                    485 ;	-----------------------------------------
                                    486 ;	 function getchar
                                    487 ;	-----------------------------------------
      0020CA                        488 _getchar:
                                    489 ;	naked function: no prologue.
                                    490 ;	life.c:21: __endasm;
      0020CA 12 00 32         [24]  491 	lcall	0x0032
      0020CD F5 82            [12]  492 	mov	dpl, a
      0020CF 75 83 00         [24]  493 	mov	dph, #0
      0020D2 22               [24]  494 	ret
                                    495 ;	life.c:22: }
                                    496 ;	naked function: no epilogue.
                                    497 ;------------------------------------------------------------
                                    498 ;Allocation info for local variables in function 'int0'
                                    499 ;------------------------------------------------------------
                                    500 ;	life.c:53: void int0(void) __interrupt IE0_VECTOR __using 1 {
                                    501 ;	-----------------------------------------
                                    502 ;	 function int0
                                    503 ;	-----------------------------------------
      0020D3                        504 _int0:
                           00000F   505 	ar7 = 0x0f
                           00000E   506 	ar6 = 0x0e
                           00000D   507 	ar5 = 0x0d
                           00000C   508 	ar4 = 0x0c
                           00000B   509 	ar3 = 0x0b
                           00000A   510 	ar2 = 0x0a
                           000009   511 	ar1 = 0x09
                           000008   512 	ar0 = 0x08
      0020D3 C0 D0            [24]  513 	push	psw
      0020D5 75 D0 08         [24]  514 	mov	psw,#0x08
                                    515 ;	life.c:54: i0 = 1;
      0020D8 78 31            [12]  516 	mov	r0,#_i0
      0020DA 76 01            [12]  517 	mov	@r0,#0x01
                                    518 ;	life.c:55: }
      0020DC D0 D0            [24]  519 	pop	psw
      0020DE 32               [24]  520 	reti
                                    521 ;	eliminated unneeded push/pop dpl
                                    522 ;	eliminated unneeded push/pop dph
                                    523 ;	eliminated unneeded push/pop b
                                    524 ;	eliminated unneeded push/pop acc
                                    525 ;------------------------------------------------------------
                                    526 ;Allocation info for local variables in function 'int1'
                                    527 ;------------------------------------------------------------
                                    528 ;	life.c:57: void int1(void) __interrupt IE1_VECTOR __using 1 {
                                    529 ;	-----------------------------------------
                                    530 ;	 function int1
                                    531 ;	-----------------------------------------
      0020DF                        532 _int1:
      0020DF C0 D0            [24]  533 	push	psw
      0020E1 75 D0 08         [24]  534 	mov	psw,#0x08
                                    535 ;	life.c:58: i1 = 1;
      0020E4 78 32            [12]  536 	mov	r0,#_i1
      0020E6 76 01            [12]  537 	mov	@r0,#0x01
                                    538 ;	life.c:59: }
      0020E8 D0 D0            [24]  539 	pop	psw
      0020EA 32               [24]  540 	reti
                                    541 ;	eliminated unneeded push/pop dpl
                                    542 ;	eliminated unneeded push/pop dph
                                    543 ;	eliminated unneeded push/pop b
                                    544 ;	eliminated unneeded push/pop acc
                                    545 ;------------------------------------------------------------
                                    546 ;Allocation info for local variables in function 'show'
                                    547 ;------------------------------------------------------------
                                    548 ;hdr                       Allocated to registers r7 
                                    549 ;__1966080005              Allocated to registers 
                                    550 ;s                         Allocated to registers r5 r6 r7 
                                    551 ;__1310720001              Allocated to registers r6 r7 
                                    552 ;a                         Allocated to registers 
                                    553 ;__1310720003              Allocated to registers r6 r7 
                                    554 ;a                         Allocated to registers 
                                    555 ;__1966080008              Allocated to registers 
                                    556 ;s                         Allocated to registers r5 r6 r7 
                                    557 ;__2621440011              Allocated to registers 
                                    558 ;s                         Allocated to registers r5 r6 r7 
                                    559 ;------------------------------------------------------------
                                    560 ;	life.c:95: void show(char hdr) {
                                    561 ;	-----------------------------------------
                                    562 ;	 function show
                                    563 ;	-----------------------------------------
      0020EB                        564 _show:
                           000007   565 	ar7 = 0x07
                           000006   566 	ar6 = 0x06
                           000005   567 	ar5 = 0x05
                           000004   568 	ar4 = 0x04
                           000003   569 	ar3 = 0x03
                           000002   570 	ar2 = 0x02
                           000001   571 	ar1 = 0x01
                           000000   572 	ar0 = 0x00
                                    573 ;	life.c:96: if (hdr) {
      0020EB E5 82            [12]  574 	mov	a,dpl
      0020ED FF               [12]  575 	mov	r7,a
      0020EE 70 03            [24]  576 	jnz	00190$
      0020F0 02 22 43         [24]  577 	ljmp	00102$
      0020F3                        578 00190$:
                                    579 ;	life.c:97: printstr("\033[2J\033[m");
      0020F3 7D 8A            [12]  580 	mov	r5,#___str_0
      0020F5 7E 2C            [12]  581 	mov	r6,#(___str_0 >> 8)
      0020F7 7F 80            [12]  582 	mov	r7,#0x80
                                    583 ;	life.c:48: return;
      0020F9                        584 00121$:
                                    585 ;	life.c:46: for (; *s; s++) putchar(*s);
      0020F9 8D 82            [24]  586 	mov	dpl,r5
      0020FB 8E 83            [24]  587 	mov	dph,r6
      0020FD 8F F0            [24]  588 	mov	b,r7
      0020FF 12 2B 62         [24]  589 	lcall	__gptrget
      002102 FC               [12]  590 	mov	r4,a
      002103 60 10            [24]  591 	jz	00109$
      002105 7B 00            [12]  592 	mov	r3,#0x00
      002107 8C 82            [24]  593 	mov	dpl,r4
      002109 8B 83            [24]  594 	mov	dph,r3
      00210B 12 20 C5         [24]  595 	lcall	_putchar
      00210E 0D               [12]  596 	inc	r5
                                    597 ;	life.c:97: printstr("\033[2J\033[m");
      00210F BD 00 E7         [24]  598 	cjne	r5,#0x00,00121$
      002112 0E               [12]  599 	inc	r6
      002113 80 E4            [24]  600 	sjmp	00121$
      002115                        601 00109$:
                                    602 ;	life.c:89: print16x(generation[1]);
      002115 78 45            [12]  603 	mov	r0,#(_generation + 0x0002)
      002117 86 06            [24]  604 	mov	ar6,@r0
      002119 08               [12]  605 	inc	r0
                                    606 ;	life.c:37: putchar(digits[(a >> 12) & 0xf]);
      00211A E6               [12]  607 	mov	a,@r0
      00211B FF               [12]  608 	mov	r7,a
      00211C C4               [12]  609 	swap	a
      00211D 54 0F            [12]  610 	anl	a,#0x0f
      00211F 30 E3 02         [24]  611 	jnb	acc.3,00193$
      002122 44 F0            [12]  612 	orl	a,#0xf0
      002124                        613 00193$:
      002124 FC               [12]  614 	mov	r4,a
      002125 33               [12]  615 	rlc	a
      002126 95 E0            [12]  616 	subb	a,acc
      002128 53 04 0F         [24]  617 	anl	ar4,#0x0f
      00212B EC               [12]  618 	mov	a,r4
      00212C 24 21            [12]  619 	add	a,#_digits
      00212E F9               [12]  620 	mov	r1,a
      00212F 87 05            [24]  621 	mov	ar5,@r1
      002131 7C 00            [12]  622 	mov	r4,#0x00
      002133 8D 82            [24]  623 	mov	dpl,r5
      002135 8C 83            [24]  624 	mov	dph,r4
      002137 12 20 C5         [24]  625 	lcall	_putchar
                                    626 ;	life.c:38: putchar(digits[(a >> 8) & 0xf]);
      00213A 8F 05            [24]  627 	mov	ar5,r7
      00213C 53 05 0F         [24]  628 	anl	ar5,#0x0f
      00213F ED               [12]  629 	mov	a,r5
      002140 24 21            [12]  630 	add	a,#_digits
      002142 F9               [12]  631 	mov	r1,a
      002143 87 05            [24]  632 	mov	ar5,@r1
      002145 7C 00            [12]  633 	mov	r4,#0x00
      002147 8D 82            [24]  634 	mov	dpl,r5
      002149 8C 83            [24]  635 	mov	dph,r4
      00214B 12 20 C5         [24]  636 	lcall	_putchar
                                    637 ;	life.c:39: putchar(digits[(a >> 4) & 0xf]);
      00214E 8E 04            [24]  638 	mov	ar4,r6
      002150 EF               [12]  639 	mov	a,r7
      002151 C4               [12]  640 	swap	a
      002152 CC               [12]  641 	xch	a,r4
      002153 C4               [12]  642 	swap	a
      002154 54 0F            [12]  643 	anl	a,#0x0f
      002156 6C               [12]  644 	xrl	a,r4
      002157 CC               [12]  645 	xch	a,r4
      002158 54 0F            [12]  646 	anl	a,#0x0f
      00215A CC               [12]  647 	xch	a,r4
      00215B 6C               [12]  648 	xrl	a,r4
      00215C CC               [12]  649 	xch	a,r4
      00215D 30 E3 02         [24]  650 	jnb	acc.3,00194$
      002160 44 F0            [12]  651 	orl	a,#0xf0
      002162                        652 00194$:
      002162 53 04 0F         [24]  653 	anl	ar4,#0x0f
      002165 EC               [12]  654 	mov	a,r4
      002166 24 21            [12]  655 	add	a,#_digits
      002168 F9               [12]  656 	mov	r1,a
      002169 87 05            [24]  657 	mov	ar5,@r1
      00216B 7C 00            [12]  658 	mov	r4,#0x00
      00216D 8D 82            [24]  659 	mov	dpl,r5
      00216F 8C 83            [24]  660 	mov	dph,r4
      002171 12 20 C5         [24]  661 	lcall	_putchar
                                    662 ;	life.c:40: putchar(digits[a & 0xf]);
      002174 53 06 0F         [24]  663 	anl	ar6,#0x0f
      002177 EE               [12]  664 	mov	a,r6
      002178 24 21            [12]  665 	add	a,#_digits
      00217A F9               [12]  666 	mov	r1,a
      00217B 87 07            [24]  667 	mov	ar7,@r1
      00217D 7E 00            [12]  668 	mov	r6,#0x00
      00217F 8F 82            [24]  669 	mov	dpl,r7
      002181 8E 83            [24]  670 	mov	dph,r6
      002183 12 20 C5         [24]  671 	lcall	_putchar
                                    672 ;	life.c:90: print16x(generation[0]);
      002186 78 43            [12]  673 	mov	r0,#_generation
      002188 86 06            [24]  674 	mov	ar6,@r0
      00218A 08               [12]  675 	inc	r0
                                    676 ;	life.c:37: putchar(digits[(a >> 12) & 0xf]);
      00218B E6               [12]  677 	mov	a,@r0
      00218C FF               [12]  678 	mov	r7,a
      00218D C4               [12]  679 	swap	a
      00218E 54 0F            [12]  680 	anl	a,#0x0f
      002190 30 E3 02         [24]  681 	jnb	acc.3,00195$
      002193 44 F0            [12]  682 	orl	a,#0xf0
      002195                        683 00195$:
      002195 FC               [12]  684 	mov	r4,a
      002196 33               [12]  685 	rlc	a
      002197 95 E0            [12]  686 	subb	a,acc
      002199 53 04 0F         [24]  687 	anl	ar4,#0x0f
      00219C EC               [12]  688 	mov	a,r4
      00219D 24 21            [12]  689 	add	a,#_digits
      00219F F9               [12]  690 	mov	r1,a
      0021A0 87 05            [24]  691 	mov	ar5,@r1
      0021A2 7C 00            [12]  692 	mov	r4,#0x00
      0021A4 8D 82            [24]  693 	mov	dpl,r5
      0021A6 8C 83            [24]  694 	mov	dph,r4
      0021A8 12 20 C5         [24]  695 	lcall	_putchar
                                    696 ;	life.c:38: putchar(digits[(a >> 8) & 0xf]);
      0021AB 8F 05            [24]  697 	mov	ar5,r7
      0021AD 53 05 0F         [24]  698 	anl	ar5,#0x0f
      0021B0 ED               [12]  699 	mov	a,r5
      0021B1 24 21            [12]  700 	add	a,#_digits
      0021B3 F9               [12]  701 	mov	r1,a
      0021B4 87 05            [24]  702 	mov	ar5,@r1
      0021B6 7C 00            [12]  703 	mov	r4,#0x00
      0021B8 8D 82            [24]  704 	mov	dpl,r5
      0021BA 8C 83            [24]  705 	mov	dph,r4
      0021BC 12 20 C5         [24]  706 	lcall	_putchar
                                    707 ;	life.c:39: putchar(digits[(a >> 4) & 0xf]);
      0021BF 8E 04            [24]  708 	mov	ar4,r6
      0021C1 EF               [12]  709 	mov	a,r7
      0021C2 C4               [12]  710 	swap	a
      0021C3 CC               [12]  711 	xch	a,r4
      0021C4 C4               [12]  712 	swap	a
      0021C5 54 0F            [12]  713 	anl	a,#0x0f
      0021C7 6C               [12]  714 	xrl	a,r4
      0021C8 CC               [12]  715 	xch	a,r4
      0021C9 54 0F            [12]  716 	anl	a,#0x0f
      0021CB CC               [12]  717 	xch	a,r4
      0021CC 6C               [12]  718 	xrl	a,r4
      0021CD CC               [12]  719 	xch	a,r4
      0021CE 30 E3 02         [24]  720 	jnb	acc.3,00196$
      0021D1 44 F0            [12]  721 	orl	a,#0xf0
      0021D3                        722 00196$:
      0021D3 53 04 0F         [24]  723 	anl	ar4,#0x0f
      0021D6 EC               [12]  724 	mov	a,r4
      0021D7 24 21            [12]  725 	add	a,#_digits
      0021D9 F9               [12]  726 	mov	r1,a
      0021DA 87 05            [24]  727 	mov	ar5,@r1
      0021DC 7C 00            [12]  728 	mov	r4,#0x00
      0021DE 8D 82            [24]  729 	mov	dpl,r5
      0021E0 8C 83            [24]  730 	mov	dph,r4
      0021E2 12 20 C5         [24]  731 	lcall	_putchar
                                    732 ;	life.c:40: putchar(digits[a & 0xf]);
      0021E5 53 06 0F         [24]  733 	anl	ar6,#0x0f
      0021E8 EE               [12]  734 	mov	a,r6
      0021E9 24 21            [12]  735 	add	a,#_digits
      0021EB F9               [12]  736 	mov	r1,a
      0021EC 87 07            [24]  737 	mov	ar7,@r1
      0021EE 7E 00            [12]  738 	mov	r6,#0x00
      0021F0 8F 82            [24]  739 	mov	dpl,r7
      0021F2 8E 83            [24]  740 	mov	dph,r6
      0021F4 12 20 C5         [24]  741 	lcall	_putchar
                                    742 ;	life.c:99: printstr("\r\n");
      0021F7 7D 92            [12]  743 	mov	r5,#___str_1
      0021F9 7E 2C            [12]  744 	mov	r6,#(___str_1 >> 8)
      0021FB 7F 80            [12]  745 	mov	r7,#0x80
                                    746 ;	life.c:48: return;
      0021FD                        747 00124$:
                                    748 ;	life.c:46: for (; *s; s++) putchar(*s);
      0021FD 8D 82            [24]  749 	mov	dpl,r5
      0021FF 8E 83            [24]  750 	mov	dph,r6
      002201 8F F0            [24]  751 	mov	b,r7
      002203 12 2B 62         [24]  752 	lcall	__gptrget
      002206 FC               [12]  753 	mov	r4,a
      002207 60 10            [24]  754 	jz	00114$
      002209 7B 00            [12]  755 	mov	r3,#0x00
      00220B 8C 82            [24]  756 	mov	dpl,r4
      00220D 8B 83            [24]  757 	mov	dph,r3
      00220F 12 20 C5         [24]  758 	lcall	_putchar
      002212 0D               [12]  759 	inc	r5
                                    760 ;	life.c:99: printstr("\r\n");
      002213 BD 00 E7         [24]  761 	cjne	r5,#0x00,00124$
      002216 0E               [12]  762 	inc	r6
      002217 80 E4            [24]  763 	sjmp	00124$
      002219                        764 00114$:
                                    765 ;	life.c:82: generation[0]++;
      002219 78 43            [12]  766 	mov	r0,#_generation
      00221B 86 06            [24]  767 	mov	ar6,@r0
      00221D 08               [12]  768 	inc	r0
      00221E 86 07            [24]  769 	mov	ar7,@r0
      002220 0E               [12]  770 	inc	r6
      002221 BE 00 01         [24]  771 	cjne	r6,#0x00,00199$
      002224 0F               [12]  772 	inc	r7
      002225                        773 00199$:
      002225 78 43            [12]  774 	mov	r0,#_generation
      002227 A6 06            [24]  775 	mov	@r0,ar6
      002229 08               [12]  776 	inc	r0
      00222A A6 07            [24]  777 	mov	@r0,ar7
                                    778 ;	life.c:83: if (!generation[0]) generation[1]++;
      00222C EE               [12]  779 	mov	a,r6
      00222D 4F               [12]  780 	orl	a,r7
      00222E 70 13            [24]  781 	jnz	00102$
      002230 78 45            [12]  782 	mov	r0,#(_generation + 0x0002)
      002232 86 06            [24]  783 	mov	ar6,@r0
      002234 08               [12]  784 	inc	r0
      002235 86 07            [24]  785 	mov	ar7,@r0
      002237 0E               [12]  786 	inc	r6
      002238 BE 00 01         [24]  787 	cjne	r6,#0x00,00201$
      00223B 0F               [12]  788 	inc	r7
      00223C                        789 00201$:
      00223C 78 45            [12]  790 	mov	r0,#(_generation + 0x0002)
      00223E A6 06            [24]  791 	mov	@r0,ar6
      002240 08               [12]  792 	inc	r0
      002241 A6 07            [24]  793 	mov	@r0,ar7
                                    794 ;	life.c:100: updategen();
      002243                        795 00102$:
                                    796 ;	life.c:103: for (x = 0; x < W; x++) {
      002243 78 33            [12]  797 	mov	r0,#_x
      002245 E4               [12]  798 	clr	a
      002246 F6               [12]  799 	mov	@r0,a
      002247 08               [12]  800 	inc	r0
      002248 F6               [12]  801 	mov	@r0,a
      002249                        802 00131$:
                                    803 ;	life.c:104: for (y = 0; y < H; y++)
      002249 78 35            [12]  804 	mov	r0,#_y
      00224B E4               [12]  805 	clr	a
      00224C F6               [12]  806 	mov	@r0,a
      00224D 08               [12]  807 	inc	r0
      00224E F6               [12]  808 	mov	@r0,a
      00224F                        809 00126$:
                                    810 ;	life.c:105: if (u[A2D(W, y, x)]) {
      00224F 78 35            [12]  811 	mov	r0,#_y
      002251 86 06            [24]  812 	mov	ar6,@r0
      002253 08               [12]  813 	inc	r0
      002254 E6               [12]  814 	mov	a,@r0
      002255 C4               [12]  815 	swap	a
      002256 23               [12]  816 	rl	a
      002257 54 E0            [12]  817 	anl	a,#0xe0
      002259 CE               [12]  818 	xch	a,r6
      00225A C4               [12]  819 	swap	a
      00225B 23               [12]  820 	rl	a
      00225C CE               [12]  821 	xch	a,r6
      00225D 6E               [12]  822 	xrl	a,r6
      00225E CE               [12]  823 	xch	a,r6
      00225F 54 E0            [12]  824 	anl	a,#0xe0
      002261 CE               [12]  825 	xch	a,r6
      002262 6E               [12]  826 	xrl	a,r6
      002263 FF               [12]  827 	mov	r7,a
      002264 78 33            [12]  828 	mov	r0,#_x
      002266 E6               [12]  829 	mov	a,@r0
      002267 2E               [12]  830 	add	a,r6
      002268 FE               [12]  831 	mov	r6,a
      002269 08               [12]  832 	inc	r0
      00226A E6               [12]  833 	mov	a,@r0
      00226B 3F               [12]  834 	addc	a,r7
      00226C FF               [12]  835 	mov	r7,a
      00226D EE               [12]  836 	mov	a,r6
      00226E 24 00            [12]  837 	add	a,#_u
      002270 FE               [12]  838 	mov	r6,a
      002271 EF               [12]  839 	mov	a,r7
      002272 34 88            [12]  840 	addc	a,#(_u >> 8)
      002274 FF               [12]  841 	mov	r7,a
      002275 8E 82            [24]  842 	mov	dpl,r6
      002277 8F 83            [24]  843 	mov	dph,r7
      002279 E0               [24]  844 	movx	a,@dptr
      00227A 60 0E            [24]  845 	jz	00104$
                                    846 ;	life.c:106: putchar('['); putchar(']');
      00227C 90 00 5B         [24]  847 	mov	dptr,#0x005b
      00227F 12 20 C5         [24]  848 	lcall	_putchar
      002282 90 00 5D         [24]  849 	mov	dptr,#0x005d
      002285 12 20 C5         [24]  850 	lcall	_putchar
      002288 80 0C            [24]  851 	sjmp	00127$
      00228A                        852 00104$:
                                    853 ;	life.c:108: putchar('#'); putchar('#');
      00228A 90 00 23         [24]  854 	mov	dptr,#0x0023
      00228D 12 20 C5         [24]  855 	lcall	_putchar
      002290 90 00 23         [24]  856 	mov	dptr,#0x0023
      002293 12 20 C5         [24]  857 	lcall	_putchar
      002296                        858 00127$:
                                    859 ;	life.c:104: for (y = 0; y < H; y++)
      002296 78 35            [12]  860 	mov	r0,#_y
      002298 06               [12]  861 	inc	@r0
      002299 B6 00 02         [24]  862 	cjne	@r0,#0x00,00203$
      00229C 08               [12]  863 	inc	r0
      00229D 06               [12]  864 	inc	@r0
      00229E                        865 00203$:
      00229E 78 35            [12]  866 	mov	r0,#_y
      0022A0 C3               [12]  867 	clr	c
      0022A1 E6               [12]  868 	mov	a,@r0
      0022A2 94 40            [12]  869 	subb	a,#0x40
      0022A4 08               [12]  870 	inc	r0
      0022A5 E6               [12]  871 	mov	a,@r0
      0022A6 64 80            [12]  872 	xrl	a,#0x80
      0022A8 94 80            [12]  873 	subb	a,#0x80
      0022AA 40 A3            [24]  874 	jc	00126$
                                    875 ;	life.c:110: printstr("\r\n");
      0022AC 7D 92            [12]  876 	mov	r5,#___str_1
      0022AE 7E 2C            [12]  877 	mov	r6,#(___str_1 >> 8)
      0022B0 7F 80            [12]  878 	mov	r7,#0x80
                                    879 ;	life.c:48: return;
      0022B2                        880 00129$:
                                    881 ;	life.c:46: for (; *s; s++) putchar(*s);
      0022B2 8D 82            [24]  882 	mov	dpl,r5
      0022B4 8E 83            [24]  883 	mov	dph,r6
      0022B6 8F F0            [24]  884 	mov	b,r7
      0022B8 12 2B 62         [24]  885 	lcall	__gptrget
      0022BB FC               [12]  886 	mov	r4,a
      0022BC 60 10            [24]  887 	jz	00119$
      0022BE 7B 00            [12]  888 	mov	r3,#0x00
      0022C0 8C 82            [24]  889 	mov	dpl,r4
      0022C2 8B 83            [24]  890 	mov	dph,r3
      0022C4 12 20 C5         [24]  891 	lcall	_putchar
      0022C7 0D               [12]  892 	inc	r5
                                    893 ;	life.c:110: printstr("\r\n");
      0022C8 BD 00 E7         [24]  894 	cjne	r5,#0x00,00129$
      0022CB 0E               [12]  895 	inc	r6
      0022CC 80 E4            [24]  896 	sjmp	00129$
      0022CE                        897 00119$:
                                    898 ;	life.c:103: for (x = 0; x < W; x++) {
      0022CE 78 33            [12]  899 	mov	r0,#_x
      0022D0 06               [12]  900 	inc	@r0
      0022D1 B6 00 02         [24]  901 	cjne	@r0,#0x00,00207$
      0022D4 08               [12]  902 	inc	r0
      0022D5 06               [12]  903 	inc	@r0
      0022D6                        904 00207$:
      0022D6 78 33            [12]  905 	mov	r0,#_x
      0022D8 C3               [12]  906 	clr	c
      0022D9 E6               [12]  907 	mov	a,@r0
      0022DA 94 20            [12]  908 	subb	a,#0x20
      0022DC 08               [12]  909 	inc	r0
      0022DD E6               [12]  910 	mov	a,@r0
      0022DE 64 80            [12]  911 	xrl	a,#0x80
      0022E0 94 80            [12]  912 	subb	a,#0x80
      0022E2 50 03            [24]  913 	jnc	00208$
      0022E4 02 22 49         [24]  914 	ljmp	00131$
      0022E7                        915 00208$:
                                    916 ;	life.c:113: return;
                                    917 ;	life.c:114: }
      0022E7 22               [24]  918 	ret
                                    919 ;------------------------------------------------------------
                                    920 ;Allocation info for local variables in function 'main'
                                    921 ;------------------------------------------------------------
                                    922 ;__2621440019              Allocated to registers 
                                    923 ;s                         Allocated to registers r5 r6 r7 
                                    924 ;__1310720013              Allocated to registers 
                                    925 ;s                         Allocated to registers r5 r6 r7 
                                    926 ;__1310720015              Allocated to registers r6 r7 
                                    927 ;a                         Allocated to registers r4 r5 
                                    928 ;__1310720017              Allocated to registers 
                                    929 ;s                         Allocated to registers r5 r6 r7 
                                    930 ;__2621440023              Allocated to registers 
                                    931 ;s                         Allocated to registers r5 r6 r7 
                                    932 ;__4587520027              Allocated to registers 
                                    933 ;s                         Allocated to registers r5 r6 r7 
                                    934 ;__3276800029              Allocated to registers 
                                    935 ;s                         Allocated to registers r5 r6 r7 
                                    936 ;__1310720031              Allocated to registers 
                                    937 ;s                         Allocated to registers r5 r6 r7 
                                    938 ;sloc0                     Allocated to stack - _bp +1
                                    939 ;sloc1                     Allocated to stack - _bp +2
                                    940 ;sloc2                     Allocated to stack - _bp +4
                                    941 ;sloc3                     Allocated to stack - _bp +6
                                    942 ;sloc4                     Allocated to stack - _bp +8
                                    943 ;sloc5                     Allocated to stack - _bp +10
                                    944 ;sloc6                     Allocated to stack - _bp +12
                                    945 ;------------------------------------------------------------
                                    946 ;	life.c:199: void main(void) {
                                    947 ;	-----------------------------------------
                                    948 ;	 function main
                                    949 ;	-----------------------------------------
      0022E8                        950 _main:
      0022E8 C0 10            [24]  951 	push	_bp
      0022EA E5 81            [12]  952 	mov	a,sp
      0022EC F5 10            [12]  953 	mov	_bp,a
      0022EE 24 0D            [12]  954 	add	a,#0x0d
      0022F0 F5 81            [12]  955 	mov	sp,a
                                    956 ;	life.c:200: IT0 = 1;
                                    957 ;	assignBit
      0022F2 D2 88            [12]  958 	setb	_IT0
                                    959 ;	life.c:201: IT1 = 1;
                                    960 ;	assignBit
      0022F4 D2 8A            [12]  961 	setb	_IT1
                                    962 ;	life.c:202: EX0 = 1;
                                    963 ;	assignBit
      0022F6 D2 A8            [12]  964 	setb	_EX0
                                    965 ;	life.c:203: EX1 = 1;
                                    966 ;	assignBit
      0022F8 D2 AA            [12]  967 	setb	_EX1
                                    968 ;	life.c:204: EA = 1;
                                    969 ;	assignBit
      0022FA D2 AF            [12]  970 	setb	_EA
                                    971 ;	life.c:206: for (i0 = 0; !i0; ) {		
      0022FC 78 31            [12]  972 	mov	r0,#_i0
      0022FE 76 00            [12]  973 	mov	@r0,#0x00
      002300                        974 00197$:
                                    975 ;	life.c:207: printstr("\033[2J\033[mINIT\r\n");
      002300 7D A0            [12]  976 	mov	r5,#___str_4
      002302 7E 2C            [12]  977 	mov	r6,#(___str_4 >> 8)
      002304 7F 80            [12]  978 	mov	r7,#0x80
                                    979 ;	life.c:48: return;
      002306                        980 00168$:
                                    981 ;	life.c:46: for (; *s; s++) putchar(*s);
      002306 8D 82            [24]  982 	mov	dpl,r5
      002308 8E 83            [24]  983 	mov	dph,r6
      00230A 8F F0            [24]  984 	mov	b,r7
      00230C 12 2B 62         [24]  985 	lcall	__gptrget
      00230F FC               [12]  986 	mov	r4,a
      002310 60 10            [24]  987 	jz	00107$
      002312 7B 00            [12]  988 	mov	r3,#0x00
      002314 8C 82            [24]  989 	mov	dpl,r4
      002316 8B 83            [24]  990 	mov	dph,r3
      002318 12 20 C5         [24]  991 	lcall	_putchar
      00231B 0D               [12]  992 	inc	r5
                                    993 ;	life.c:208: while (1) {
      00231C BD 00 E7         [24]  994 	cjne	r5,#0x00,00168$
      00231F 0E               [12]  995 	inc	r6
      002320 80 E4            [24]  996 	sjmp	00168$
      002322                        997 00107$:
                                    998 ;	life.c:209: c = getchar();
      002322 12 20 CA         [24]  999 	lcall	_getchar
      002325 AE 82            [24] 1000 	mov	r6,dpl
      002327 AF 83            [24] 1001 	mov	r7,dph
      002329 78 39            [12] 1002 	mov	r0,#_c
      00232B A6 06            [24] 1003 	mov	@r0,ar6
      00232D 08               [12] 1004 	inc	r0
      00232E A6 07            [24] 1005 	mov	@r0,ar7
                                   1006 ;	life.c:210: if (i0 || (c == (int)'T')) goto terminate;
      002330 78 31            [12] 1007 	mov	r0,#_i0
      002332 E6               [12] 1008 	mov	a,@r0
      002333 60 03            [24] 1009 	jz	00386$
      002335 02 2A 35         [24] 1010 	ljmp	00127$
      002338                       1011 00386$:
      002338 BE 54 06         [24] 1012 	cjne	r6,#0x54,00387$
      00233B BF 00 03         [24] 1013 	cjne	r7,#0x00,00387$
      00233E 02 2A 35         [24] 1014 	ljmp	00127$
      002341                       1015 00387$:
                                   1016 ;	life.c:211: if (c == (int)'L') break;
      002341 BE 4C DE         [24] 1017 	cjne	r6,#0x4c,00107$
      002344 BF 00 DB         [24] 1018 	cjne	r7,#0x00,00107$
                                   1019 ;	life.c:214: reload:
      002347                       1020 00109$:
                                   1021 ;	life.c:117: memset(u, 0, sizeof (u));
      002347 E4               [12] 1022 	clr	a
      002348 C0 E0            [24] 1023 	push	acc
      00234A 74 08            [12] 1024 	mov	a,#0x08
      00234C C0 E0            [24] 1025 	push	acc
      00234E E4               [12] 1026 	clr	a
      00234F C0 E0            [24] 1027 	push	acc
      002351 90 88 00         [24] 1028 	mov	dptr,#_u
      002354 75 F0 00         [24] 1029 	mov	b,#0x00
      002357 12 2A F8         [24] 1030 	lcall	_memset
      00235A 15 81            [12] 1031 	dec	sp
      00235C 15 81            [12] 1032 	dec	sp
      00235E 15 81            [12] 1033 	dec	sp
                                   1034 ;	life.c:118: memset(pu, 0, sizeof (pu));
      002360 E4               [12] 1035 	clr	a
      002361 C0 E0            [24] 1036 	push	acc
      002363 74 08            [12] 1037 	mov	a,#0x08
      002365 C0 E0            [24] 1038 	push	acc
      002367 E4               [12] 1039 	clr	a
      002368 C0 E0            [24] 1040 	push	acc
      00236A 90 80 00         [24] 1041 	mov	dptr,#_pu
      00236D 75 F0 00         [24] 1042 	mov	b,#0x00
      002370 12 2A F8         [24] 1043 	lcall	_memset
      002373 15 81            [12] 1044 	dec	sp
      002375 15 81            [12] 1045 	dec	sp
      002377 15 81            [12] 1046 	dec	sp
                                   1047 ;	life.c:124: j = 0;
      002379 78 37            [12] 1048 	mov	r0,#_j
      00237B E4               [12] 1049 	clr	a
      00237C F6               [12] 1050 	mov	@r0,a
      00237D 08               [12] 1051 	inc	r0
      00237E F6               [12] 1052 	mov	@r0,a
                                   1053 ;	life.c:126: printstr("LOAD <");
      00237F 7D 95            [12] 1054 	mov	r5,#___str_2
      002381 7E 2C            [12] 1055 	mov	r6,#(___str_2 >> 8)
      002383 7F 80            [12] 1056 	mov	r7,#0x80
                                   1057 ;	life.c:48: return;
      002385                       1058 00171$:
                                   1059 ;	life.c:46: for (; *s; s++) putchar(*s);
      002385 8D 82            [24] 1060 	mov	dpl,r5
      002387 8E 83            [24] 1061 	mov	dph,r6
      002389 8F F0            [24] 1062 	mov	b,r7
      00238B 12 2B 62         [24] 1063 	lcall	__gptrget
      00238E FC               [12] 1064 	mov	r4,a
      00238F 60 10            [24] 1065 	jz	00132$
      002391 7B 00            [12] 1066 	mov	r3,#0x00
      002393 8C 82            [24] 1067 	mov	dpl,r4
      002395 8B 83            [24] 1068 	mov	dph,r3
      002397 12 20 C5         [24] 1069 	lcall	_putchar
      00239A 0D               [12] 1070 	inc	r5
                                   1071 ;	life.c:126: printstr("LOAD <");
      00239B BD 00 E7         [24] 1072 	cjne	r5,#0x00,00171$
      00239E 0E               [12] 1073 	inc	r6
      00239F 80 E4            [24] 1074 	sjmp	00171$
      0023A1                       1075 00132$:
                                   1076 ;	life.c:128: for (y = 0; y < H; y++)
      0023A1 78 35            [12] 1077 	mov	r0,#_y
      0023A3 E4               [12] 1078 	clr	a
      0023A4 F6               [12] 1079 	mov	@r0,a
      0023A5 08               [12] 1080 	inc	r0
      0023A6 F6               [12] 1081 	mov	@r0,a
      0023A7                       1082 00175$:
                                   1083 ;	life.c:129: for (x = 0; x < W; x++) {
      0023A7 78 33            [12] 1084 	mov	r0,#_x
      0023A9 E4               [12] 1085 	clr	a
      0023AA F6               [12] 1086 	mov	@r0,a
      0023AB 08               [12] 1087 	inc	r0
      0023AC F6               [12] 1088 	mov	@r0,a
      0023AD                       1089 00173$:
                                   1090 ;	life.c:130: c = getchar();
      0023AD 12 20 CA         [24] 1091 	lcall	_getchar
      0023B0 AE 82            [24] 1092 	mov	r6,dpl
      0023B2 AF 83            [24] 1093 	mov	r7,dph
      0023B4 78 39            [12] 1094 	mov	r0,#_c
      0023B6 A6 06            [24] 1095 	mov	@r0,ar6
      0023B8 08               [12] 1096 	inc	r0
      0023B9 A6 07            [24] 1097 	mov	@r0,ar7
                                   1098 ;	life.c:131: if (c == (int)'0') {
      0023BB BE 30 37         [24] 1099 	cjne	r6,#0x30,00139$
      0023BE BF 00 34         [24] 1100 	cjne	r7,#0x00,00139$
                                   1101 ;	life.c:132: u[A2D(W, y, x)] = 0;
      0023C1 78 35            [12] 1102 	mov	r0,#_y
      0023C3 86 04            [24] 1103 	mov	ar4,@r0
      0023C5 08               [12] 1104 	inc	r0
      0023C6 E6               [12] 1105 	mov	a,@r0
      0023C7 C4               [12] 1106 	swap	a
      0023C8 23               [12] 1107 	rl	a
      0023C9 54 E0            [12] 1108 	anl	a,#0xe0
      0023CB CC               [12] 1109 	xch	a,r4
      0023CC C4               [12] 1110 	swap	a
      0023CD 23               [12] 1111 	rl	a
      0023CE CC               [12] 1112 	xch	a,r4
      0023CF 6C               [12] 1113 	xrl	a,r4
      0023D0 CC               [12] 1114 	xch	a,r4
      0023D1 54 E0            [12] 1115 	anl	a,#0xe0
      0023D3 CC               [12] 1116 	xch	a,r4
      0023D4 6C               [12] 1117 	xrl	a,r4
      0023D5 FD               [12] 1118 	mov	r5,a
      0023D6 78 33            [12] 1119 	mov	r0,#_x
      0023D8 E6               [12] 1120 	mov	a,@r0
      0023D9 2C               [12] 1121 	add	a,r4
      0023DA FC               [12] 1122 	mov	r4,a
      0023DB 08               [12] 1123 	inc	r0
      0023DC E6               [12] 1124 	mov	a,@r0
      0023DD 3D               [12] 1125 	addc	a,r5
      0023DE FD               [12] 1126 	mov	r5,a
      0023DF EC               [12] 1127 	mov	a,r4
      0023E0 24 00            [12] 1128 	add	a,#_u
      0023E2 F5 82            [12] 1129 	mov	dpl,a
      0023E4 ED               [12] 1130 	mov	a,r5
      0023E5 34 88            [12] 1131 	addc	a,#(_u >> 8)
      0023E7 F5 83            [12] 1132 	mov	dph,a
      0023E9 E4               [12] 1133 	clr	a
      0023EA F0               [24] 1134 	movx	@dptr,a
                                   1135 ;	life.c:133: j++;
      0023EB 78 37            [12] 1136 	mov	r0,#_j
      0023ED 06               [12] 1137 	inc	@r0
      0023EE B6 00 02         [24] 1138 	cjne	@r0,#0x00,00394$
      0023F1 08               [12] 1139 	inc	r0
      0023F2 06               [12] 1140 	inc	@r0
      0023F3                       1141 00394$:
      0023F3 80 43            [24] 1142 	sjmp	00174$
      0023F5                       1143 00139$:
                                   1144 ;	life.c:134: } else if (c == (int)'1') {
      0023F5 BE 31 38         [24] 1145 	cjne	r6,#0x31,00137$
      0023F8 BF 00 35         [24] 1146 	cjne	r7,#0x00,00137$
                                   1147 ;	life.c:135: u[A2D(W, y, x)] = 1;
      0023FB 78 35            [12] 1148 	mov	r0,#_y
      0023FD 86 04            [24] 1149 	mov	ar4,@r0
      0023FF 08               [12] 1150 	inc	r0
      002400 E6               [12] 1151 	mov	a,@r0
      002401 C4               [12] 1152 	swap	a
      002402 23               [12] 1153 	rl	a
      002403 54 E0            [12] 1154 	anl	a,#0xe0
      002405 CC               [12] 1155 	xch	a,r4
      002406 C4               [12] 1156 	swap	a
      002407 23               [12] 1157 	rl	a
      002408 CC               [12] 1158 	xch	a,r4
      002409 6C               [12] 1159 	xrl	a,r4
      00240A CC               [12] 1160 	xch	a,r4
      00240B 54 E0            [12] 1161 	anl	a,#0xe0
      00240D CC               [12] 1162 	xch	a,r4
      00240E 6C               [12] 1163 	xrl	a,r4
      00240F FD               [12] 1164 	mov	r5,a
      002410 78 33            [12] 1165 	mov	r0,#_x
      002412 E6               [12] 1166 	mov	a,@r0
      002413 2C               [12] 1167 	add	a,r4
      002414 FC               [12] 1168 	mov	r4,a
      002415 08               [12] 1169 	inc	r0
      002416 E6               [12] 1170 	mov	a,@r0
      002417 3D               [12] 1171 	addc	a,r5
      002418 FD               [12] 1172 	mov	r5,a
      002419 EC               [12] 1173 	mov	a,r4
      00241A 24 00            [12] 1174 	add	a,#_u
      00241C F5 82            [12] 1175 	mov	dpl,a
      00241E ED               [12] 1176 	mov	a,r5
      00241F 34 88            [12] 1177 	addc	a,#(_u >> 8)
      002421 F5 83            [12] 1178 	mov	dph,a
      002423 74 01            [12] 1179 	mov	a,#0x01
      002425 F0               [24] 1180 	movx	@dptr,a
                                   1181 ;	life.c:136: j++;
      002426 78 37            [12] 1182 	mov	r0,#_j
      002428 06               [12] 1183 	inc	@r0
      002429 B6 00 02         [24] 1184 	cjne	@r0,#0x00,00397$
      00242C 08               [12] 1185 	inc	r0
      00242D 06               [12] 1186 	inc	@r0
      00242E                       1187 00397$:
      00242E 80 08            [24] 1188 	sjmp	00174$
      002430                       1189 00137$:
                                   1190 ;	life.c:137: } else if (c == (int)'#') goto out;
      002430 BE 23 05         [24] 1191 	cjne	r6,#0x23,00398$
      002433 BF 00 02         [24] 1192 	cjne	r7,#0x00,00398$
      002436 80 32            [24] 1193 	sjmp	00150$
      002438                       1194 00398$:
      002438                       1195 00174$:
                                   1196 ;	life.c:129: for (x = 0; x < W; x++) {
      002438 78 33            [12] 1197 	mov	r0,#_x
      00243A 06               [12] 1198 	inc	@r0
      00243B B6 00 02         [24] 1199 	cjne	@r0,#0x00,00399$
      00243E 08               [12] 1200 	inc	r0
      00243F 06               [12] 1201 	inc	@r0
      002440                       1202 00399$:
      002440 78 33            [12] 1203 	mov	r0,#_x
      002442 C3               [12] 1204 	clr	c
      002443 E6               [12] 1205 	mov	a,@r0
      002444 94 20            [12] 1206 	subb	a,#0x20
      002446 08               [12] 1207 	inc	r0
      002447 E6               [12] 1208 	mov	a,@r0
      002448 64 80            [12] 1209 	xrl	a,#0x80
      00244A 94 80            [12] 1210 	subb	a,#0x80
      00244C 50 03            [24] 1211 	jnc	00400$
      00244E 02 23 AD         [24] 1212 	ljmp	00173$
      002451                       1213 00400$:
                                   1214 ;	life.c:128: for (y = 0; y < H; y++)
      002451 78 35            [12] 1215 	mov	r0,#_y
      002453 06               [12] 1216 	inc	@r0
      002454 B6 00 02         [24] 1217 	cjne	@r0,#0x00,00401$
      002457 08               [12] 1218 	inc	r0
      002458 06               [12] 1219 	inc	@r0
      002459                       1220 00401$:
      002459 78 35            [12] 1221 	mov	r0,#_y
      00245B C3               [12] 1222 	clr	c
      00245C E6               [12] 1223 	mov	a,@r0
      00245D 94 40            [12] 1224 	subb	a,#0x40
      00245F 08               [12] 1225 	inc	r0
      002460 E6               [12] 1226 	mov	a,@r0
      002461 64 80            [12] 1227 	xrl	a,#0x80
      002463 94 80            [12] 1228 	subb	a,#0x80
      002465 50 03            [24] 1229 	jnc	00402$
      002467 02 23 A7         [24] 1230 	ljmp	00175$
      00246A                       1231 00402$:
                                   1232 ;	life.c:140: out:
      00246A                       1233 00150$:
                                   1234 ;	life.c:141: if (c != (int)'#')
      00246A BE 23 05         [24] 1235 	cjne	r6,#0x23,00403$
      00246D BF 00 02         [24] 1236 	cjne	r7,#0x00,00403$
      002470 80 14            [24] 1237 	sjmp	00149$
      002472                       1238 00403$:
                                   1239 ;	life.c:142: while (1) {
      002472                       1240 00146$:
                                   1241 ;	life.c:143: c = getchar();
      002472 12 20 CA         [24] 1242 	lcall	_getchar
      002475 AE 82            [24] 1243 	mov	r6,dpl
      002477 AF 83            [24] 1244 	mov	r7,dph
      002479 78 39            [12] 1245 	mov	r0,#_c
      00247B A6 06            [24] 1246 	mov	@r0,ar6
      00247D 08               [12] 1247 	inc	r0
      00247E A6 07            [24] 1248 	mov	@r0,ar7
                                   1249 ;	life.c:144: if (c == (int)'#') break;
      002480 BE 23 EF         [24] 1250 	cjne	r6,#0x23,00146$
      002483 BF 00 EC         [24] 1251 	cjne	r7,#0x00,00146$
      002486                       1252 00149$:
                                   1253 ;	life.c:146: print16x(j);
      002486 78 37            [12] 1254 	mov	r0,#_j
      002488 86 06            [24] 1255 	mov	ar6,@r0
      00248A 08               [12] 1256 	inc	r0
      00248B 86 07            [24] 1257 	mov	ar7,@r0
      00248D 8E 04            [24] 1258 	mov	ar4,r6
                                   1259 ;	life.c:37: putchar(digits[(a >> 12) & 0xf]);
      00248F EF               [12] 1260 	mov	a,r7
      002490 FD               [12] 1261 	mov	r5,a
      002491 C4               [12] 1262 	swap	a
      002492 54 0F            [12] 1263 	anl	a,#0x0f
      002494 30 E3 02         [24] 1264 	jnb	acc.3,00406$
      002497 44 F0            [12] 1265 	orl	a,#0xf0
      002499                       1266 00406$:
      002499 FE               [12] 1267 	mov	r6,a
      00249A 33               [12] 1268 	rlc	a
      00249B 95 E0            [12] 1269 	subb	a,acc
      00249D 53 06 0F         [24] 1270 	anl	ar6,#0x0f
      0024A0 EE               [12] 1271 	mov	a,r6
      0024A1 24 21            [12] 1272 	add	a,#_digits
      0024A3 F9               [12] 1273 	mov	r1,a
      0024A4 87 07            [24] 1274 	mov	ar7,@r1
      0024A6 7E 00            [12] 1275 	mov	r6,#0x00
      0024A8 8F 82            [24] 1276 	mov	dpl,r7
      0024AA 8E 83            [24] 1277 	mov	dph,r6
      0024AC 12 20 C5         [24] 1278 	lcall	_putchar
                                   1279 ;	life.c:38: putchar(digits[(a >> 8) & 0xf]);
      0024AF 8D 07            [24] 1280 	mov	ar7,r5
      0024B1 53 07 0F         [24] 1281 	anl	ar7,#0x0f
      0024B4 EF               [12] 1282 	mov	a,r7
      0024B5 24 21            [12] 1283 	add	a,#_digits
      0024B7 F9               [12] 1284 	mov	r1,a
      0024B8 87 07            [24] 1285 	mov	ar7,@r1
      0024BA 7E 00            [12] 1286 	mov	r6,#0x00
      0024BC 8F 82            [24] 1287 	mov	dpl,r7
      0024BE 8E 83            [24] 1288 	mov	dph,r6
      0024C0 12 20 C5         [24] 1289 	lcall	_putchar
                                   1290 ;	life.c:39: putchar(digits[(a >> 4) & 0xf]);
      0024C3 8C 06            [24] 1291 	mov	ar6,r4
      0024C5 ED               [12] 1292 	mov	a,r5
      0024C6 C4               [12] 1293 	swap	a
      0024C7 CE               [12] 1294 	xch	a,r6
      0024C8 C4               [12] 1295 	swap	a
      0024C9 54 0F            [12] 1296 	anl	a,#0x0f
      0024CB 6E               [12] 1297 	xrl	a,r6
      0024CC CE               [12] 1298 	xch	a,r6
      0024CD 54 0F            [12] 1299 	anl	a,#0x0f
      0024CF CE               [12] 1300 	xch	a,r6
      0024D0 6E               [12] 1301 	xrl	a,r6
      0024D1 CE               [12] 1302 	xch	a,r6
      0024D2 30 E3 02         [24] 1303 	jnb	acc.3,00407$
      0024D5 44 F0            [12] 1304 	orl	a,#0xf0
      0024D7                       1305 00407$:
      0024D7 53 06 0F         [24] 1306 	anl	ar6,#0x0f
      0024DA EE               [12] 1307 	mov	a,r6
      0024DB 24 21            [12] 1308 	add	a,#_digits
      0024DD F9               [12] 1309 	mov	r1,a
      0024DE 87 07            [24] 1310 	mov	ar7,@r1
      0024E0 7E 00            [12] 1311 	mov	r6,#0x00
      0024E2 8F 82            [24] 1312 	mov	dpl,r7
      0024E4 8E 83            [24] 1313 	mov	dph,r6
      0024E6 12 20 C5         [24] 1314 	lcall	_putchar
                                   1315 ;	life.c:40: putchar(digits[a & 0xf]);
      0024E9 53 04 0F         [24] 1316 	anl	ar4,#0x0f
      0024EC EC               [12] 1317 	mov	a,r4
      0024ED 24 21            [12] 1318 	add	a,#_digits
      0024EF F9               [12] 1319 	mov	r1,a
      0024F0 87 07            [24] 1320 	mov	ar7,@r1
      0024F2 7E 00            [12] 1321 	mov	r6,#0x00
      0024F4 8F 82            [24] 1322 	mov	dpl,r7
      0024F6 8E 83            [24] 1323 	mov	dph,r6
      0024F8 12 20 C5         [24] 1324 	lcall	_putchar
                                   1325 ;	life.c:147: printstr(">\r\n");
      0024FB 7D 9C            [12] 1326 	mov	r5,#___str_3
      0024FD 7E 2C            [12] 1327 	mov	r6,#(___str_3 >> 8)
      0024FF 7F 80            [12] 1328 	mov	r7,#0x80
                                   1329 ;	life.c:48: return;
      002501                       1330 00178$:
                                   1331 ;	life.c:46: for (; *s; s++) putchar(*s);
      002501 8D 82            [24] 1332 	mov	dpl,r5
      002503 8E 83            [24] 1333 	mov	dph,r6
      002505 8F F0            [24] 1334 	mov	b,r7
      002507 12 2B 62         [24] 1335 	lcall	__gptrget
      00250A FC               [12] 1336 	mov	r4,a
      00250B 60 10            [24] 1337 	jz	00153$
      00250D 7B 00            [12] 1338 	mov	r3,#0x00
      00250F 8C 82            [24] 1339 	mov	dpl,r4
      002511 8B 83            [24] 1340 	mov	dph,r3
      002513 12 20 C5         [24] 1341 	lcall	_putchar
      002516 0D               [12] 1342 	inc	r5
                                   1343 ;	life.c:147: printstr(">\r\n");
      002517 BD 00 E7         [24] 1344 	cjne	r5,#0x00,00178$
      00251A 0E               [12] 1345 	inc	r6
      00251B 80 E4            [24] 1346 	sjmp	00178$
      00251D                       1347 00153$:
                                   1348 ;	life.c:217: show(0);
      00251D 75 82 00         [24] 1349 	mov	dpl,#0x00
      002520 12 20 EB         [24] 1350 	lcall	_show
                                   1351 ;	life.c:219: printstr("READY\r\n");
      002523 7D AE            [12] 1352 	mov	r5,#___str_5
      002525 7E 2C            [12] 1353 	mov	r6,#(___str_5 >> 8)
      002527 7F 80            [12] 1354 	mov	r7,#0x80
                                   1355 ;	life.c:48: return;
      002529                       1356 00181$:
                                   1357 ;	life.c:46: for (; *s; s++) putchar(*s);
      002529 8D 82            [24] 1358 	mov	dpl,r5
      00252B 8E 83            [24] 1359 	mov	dph,r6
      00252D 8F F0            [24] 1360 	mov	b,r7
      00252F 12 2B 62         [24] 1361 	lcall	__gptrget
      002532 FC               [12] 1362 	mov	r4,a
      002533 60 10            [24] 1363 	jz	00118$
      002535 7B 00            [12] 1364 	mov	r3,#0x00
      002537 8C 82            [24] 1365 	mov	dpl,r4
      002539 8B 83            [24] 1366 	mov	dph,r3
      00253B 12 20 C5         [24] 1367 	lcall	_putchar
      00253E 0D               [12] 1368 	inc	r5
                                   1369 ;	life.c:220: while (1) {
      00253F BD 00 E7         [24] 1370 	cjne	r5,#0x00,00181$
      002542 0E               [12] 1371 	inc	r6
      002543 80 E4            [24] 1372 	sjmp	00181$
      002545                       1373 00118$:
                                   1374 ;	life.c:221: c = getchar();
      002545 12 20 CA         [24] 1375 	lcall	_getchar
      002548 AE 82            [24] 1376 	mov	r6,dpl
      00254A AF 83            [24] 1377 	mov	r7,dph
      00254C 78 39            [12] 1378 	mov	r0,#_c
      00254E A6 06            [24] 1379 	mov	@r0,ar6
      002550 08               [12] 1380 	inc	r0
      002551 A6 07            [24] 1381 	mov	@r0,ar7
                                   1382 ;	life.c:222: if (i0 || (c == (int)'T')) goto terminate;
      002553 78 31            [12] 1383 	mov	r0,#_i0
      002555 E6               [12] 1384 	mov	a,@r0
      002556 60 03            [24] 1385 	jz	00412$
      002558 02 2A 35         [24] 1386 	ljmp	00127$
      00255B                       1387 00412$:
      00255B BE 54 06         [24] 1388 	cjne	r6,#0x54,00413$
      00255E BF 00 03         [24] 1389 	cjne	r7,#0x00,00413$
      002561 02 2A 35         [24] 1390 	ljmp	00127$
      002564                       1391 00413$:
                                   1392 ;	life.c:223: if (c == (int)'L') goto reload;
      002564 BE 4C 06         [24] 1393 	cjne	r6,#0x4c,00414$
      002567 BF 00 03         [24] 1394 	cjne	r7,#0x00,00414$
      00256A 02 23 47         [24] 1395 	ljmp	00109$
      00256D                       1396 00414$:
                                   1397 ;	life.c:224: if (c == (int)'S') break;
      00256D BE 53 D5         [24] 1398 	cjne	r6,#0x53,00118$
      002570 BF 00 D2         [24] 1399 	cjne	r7,#0x00,00118$
                                   1400 ;	life.c:75: generation[0] = 0;
      002573 78 43            [12] 1401 	mov	r0,#_generation
      002575 76 00            [12] 1402 	mov	@r0,#0x00
      002577 08               [12] 1403 	inc	r0
      002578 76 00            [12] 1404 	mov	@r0,#0x00
                                   1405 ;	life.c:76: generation[1] = 0;
      00257A 78 45            [12] 1406 	mov	r0,#(_generation + 0x0002)
      00257C 76 00            [12] 1407 	mov	@r0,#0x00
      00257E 08               [12] 1408 	inc	r0
      00257F 76 00            [12] 1409 	mov	@r0,#0x00
                                   1410 ;	life.c:229: for (i1 = 0; !i0 && !i1; ) {
      002581 78 32            [12] 1411 	mov	r0,#_i1
      002583 76 00            [12] 1412 	mov	@r0,#0x00
      002585                       1413 00192$:
      002585 78 31            [12] 1414 	mov	r0,#_i0
      002587 E6               [12] 1415 	mov	a,@r0
      002588 60 03            [24] 1416 	jz	00417$
      00258A 02 2A 03         [24] 1417 	ljmp	00123$
      00258D                       1418 00417$:
      00258D 78 32            [12] 1419 	mov	r0,#_i1
      00258F E6               [12] 1420 	mov	a,@r0
      002590 60 03            [24] 1421 	jz	00418$
      002592 02 2A 03         [24] 1422 	ljmp	00123$
      002595                       1423 00418$:
                                   1424 ;	life.c:230: show(1);
      002595 75 82 01         [24] 1425 	mov	dpl,#0x01
      002598 12 20 EB         [24] 1426 	lcall	_show
                                   1427 ;	life.c:155: fixed = 0;
      00259B 78 3D            [12] 1428 	mov	r0,#_fixed
      00259D 76 00            [12] 1429 	mov	@r0,#0x00
                                   1430 ;	life.c:156: cycle2 = 0;
      00259F 78 3E            [12] 1431 	mov	r0,#_cycle2
      0025A1 76 00            [12] 1432 	mov	@r0,#0x00
                                   1433 ;	life.c:157: bstep = 0;
      0025A3 78 3B            [12] 1434 	mov	r0,#_bstep
      0025A5 76 00            [12] 1435 	mov	@r0,#0x00
                                   1436 ;	life.c:159: for (y = 0; y < H; y++) {
      0025A7 78 35            [12] 1437 	mov	r0,#_y
      0025A9 E4               [12] 1438 	clr	a
      0025AA F6               [12] 1439 	mov	@r0,a
      0025AB 08               [12] 1440 	inc	r0
      0025AC F6               [12] 1441 	mov	@r0,a
      0025AD                       1442 00185$:
                                   1443 ;	life.c:160: putchar(busy[bstep]); putchar('\r');
      0025AD 78 3B            [12] 1444 	mov	r0,#_bstep
      0025AF E6               [12] 1445 	mov	a,@r0
      0025B0 24 47            [12] 1446 	add	a,#_busy
      0025B2 F9               [12] 1447 	mov	r1,a
      0025B3 87 07            [24] 1448 	mov	ar7,@r1
      0025B5 7E 00            [12] 1449 	mov	r6,#0x00
      0025B7 8F 82            [24] 1450 	mov	dpl,r7
      0025B9 8E 83            [24] 1451 	mov	dph,r6
      0025BB 12 20 C5         [24] 1452 	lcall	_putchar
      0025BE 90 00 0D         [24] 1453 	mov	dptr,#0x000d
      0025C1 12 20 C5         [24] 1454 	lcall	_putchar
                                   1455 ;	life.c:161: bstep = (bstep + 1) & 3;
      0025C4 78 3B            [12] 1456 	mov	r0,#_bstep
      0025C6 86 07            [24] 1457 	mov	ar7,@r0
      0025C8 0F               [12] 1458 	inc	r7
      0025C9 78 3B            [12] 1459 	mov	r0,#_bstep
      0025CB 74 03            [12] 1460 	mov	a,#0x03
      0025CD 5F               [12] 1461 	anl	a,r7
      0025CE F6               [12] 1462 	mov	@r0,a
                                   1463 ;	life.c:162: for (x = 0; x < W; x++) {
      0025CF 78 33            [12] 1464 	mov	r0,#_x
      0025D1 E4               [12] 1465 	clr	a
      0025D2 F6               [12] 1466 	mov	@r0,a
      0025D3 08               [12] 1467 	inc	r0
      0025D4 F6               [12] 1468 	mov	@r0,a
      0025D5                       1469 00183$:
                                   1470 ;	life.c:163: n = -u[A2D(W, y, x)];
      0025D5 78 35            [12] 1471 	mov	r0,#_y
      0025D7 E5 10            [12] 1472 	mov	a,_bp
      0025D9 24 04            [12] 1473 	add	a,#0x04
      0025DB F9               [12] 1474 	mov	r1,a
      0025DC E6               [12] 1475 	mov	a,@r0
      0025DD F7               [12] 1476 	mov	@r1,a
      0025DE 08               [12] 1477 	inc	r0
      0025DF E6               [12] 1478 	mov	a,@r0
      0025E0 C4               [12] 1479 	swap	a
      0025E1 23               [12] 1480 	rl	a
      0025E2 54 E0            [12] 1481 	anl	a,#0xe0
      0025E4 C7               [12] 1482 	xch	a,@r1
      0025E5 C4               [12] 1483 	swap	a
      0025E6 23               [12] 1484 	rl	a
      0025E7 C7               [12] 1485 	xch	a,@r1
      0025E8 67               [12] 1486 	xrl	a,@r1
      0025E9 C7               [12] 1487 	xch	a,@r1
      0025EA 54 E0            [12] 1488 	anl	a,#0xe0
      0025EC C7               [12] 1489 	xch	a,@r1
      0025ED 67               [12] 1490 	xrl	a,@r1
      0025EE 09               [12] 1491 	inc	r1
      0025EF F7               [12] 1492 	mov	@r1,a
      0025F0 E5 10            [12] 1493 	mov	a,_bp
      0025F2 24 04            [12] 1494 	add	a,#0x04
      0025F4 F8               [12] 1495 	mov	r0,a
      0025F5 79 33            [12] 1496 	mov	r1,#_x
      0025F7 E7               [12] 1497 	mov	a,@r1
      0025F8 26               [12] 1498 	add	a,@r0
      0025F9 C0 E0            [24] 1499 	push	acc
      0025FB 09               [12] 1500 	inc	r1
      0025FC E7               [12] 1501 	mov	a,@r1
      0025FD 08               [12] 1502 	inc	r0
      0025FE 36               [12] 1503 	addc	a,@r0
      0025FF C0 E0            [24] 1504 	push	acc
      002601 E5 10            [12] 1505 	mov	a,_bp
      002603 24 03            [12] 1506 	add	a,#0x03
      002605 F8               [12] 1507 	mov	r0,a
      002606 D0 E0            [24] 1508 	pop	acc
      002608 F6               [12] 1509 	mov	@r0,a
      002609 18               [12] 1510 	dec	r0
      00260A D0 E0            [24] 1511 	pop	acc
      00260C F6               [12] 1512 	mov	@r0,a
      00260D A8 10            [24] 1513 	mov	r0,_bp
      00260F 08               [12] 1514 	inc	r0
      002610 08               [12] 1515 	inc	r0
      002611 E6               [12] 1516 	mov	a,@r0
      002612 24 00            [12] 1517 	add	a,#_u
      002614 F5 82            [12] 1518 	mov	dpl,a
      002616 08               [12] 1519 	inc	r0
      002617 E6               [12] 1520 	mov	a,@r0
      002618 34 88            [12] 1521 	addc	a,#(_u >> 8)
      00261A F5 83            [12] 1522 	mov	dph,a
      00261C E0               [24] 1523 	movx	a,@dptr
      00261D FB               [12] 1524 	mov	r3,a
      00261E A8 10            [24] 1525 	mov	r0,_bp
      002620 08               [12] 1526 	inc	r0
      002621 C3               [12] 1527 	clr	c
      002622 E4               [12] 1528 	clr	a
      002623 9B               [12] 1529 	subb	a,r3
      002624 F6               [12] 1530 	mov	@r0,a
                                   1531 ;	life.c:166: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      002625 78 35            [12] 1532 	mov	r0,#_y
      002627 74 FF            [12] 1533 	mov	a,#0xff
      002629 26               [12] 1534 	add	a,@r0
      00262A FA               [12] 1535 	mov	r2,a
      00262B 74 FF            [12] 1536 	mov	a,#0xff
      00262D 08               [12] 1537 	inc	r0
      00262E 36               [12] 1538 	addc	a,@r0
      00262F FB               [12] 1539 	mov	r3,a
      002630 74 40            [12] 1540 	mov	a,#0x40
      002632 2A               [12] 1541 	add	a,r2
      002633 FA               [12] 1542 	mov	r2,a
      002634 E4               [12] 1543 	clr	a
      002635 3B               [12] 1544 	addc	a,r3
      002636 FB               [12] 1545 	mov	r3,a
      002637 74 40            [12] 1546 	mov	a,#0x40
      002639 C0 E0            [24] 1547 	push	acc
      00263B E4               [12] 1548 	clr	a
      00263C C0 E0            [24] 1549 	push	acc
      00263E 8A 82            [24] 1550 	mov	dpl,r2
      002640 8B 83            [24] 1551 	mov	dph,r3
      002642 12 2B 7E         [24] 1552 	lcall	__modsint
      002645 AA 82            [24] 1553 	mov	r2,dpl
      002647 AB 83            [24] 1554 	mov	r3,dph
      002649 15 81            [12] 1555 	dec	sp
      00264B 15 81            [12] 1556 	dec	sp
      00264D EB               [12] 1557 	mov	a,r3
      00264E C4               [12] 1558 	swap	a
      00264F 23               [12] 1559 	rl	a
      002650 54 E0            [12] 1560 	anl	a,#0xe0
      002652 CA               [12] 1561 	xch	a,r2
      002653 C4               [12] 1562 	swap	a
      002654 23               [12] 1563 	rl	a
      002655 CA               [12] 1564 	xch	a,r2
      002656 6A               [12] 1565 	xrl	a,r2
      002657 CA               [12] 1566 	xch	a,r2
      002658 54 E0            [12] 1567 	anl	a,#0xe0
      00265A CA               [12] 1568 	xch	a,r2
      00265B 6A               [12] 1569 	xrl	a,r2
      00265C FB               [12] 1570 	mov	r3,a
      00265D 78 33            [12] 1571 	mov	r0,#_x
      00265F 74 FF            [12] 1572 	mov	a,#0xff
      002661 26               [12] 1573 	add	a,@r0
      002662 FC               [12] 1574 	mov	r4,a
      002663 74 FF            [12] 1575 	mov	a,#0xff
      002665 08               [12] 1576 	inc	r0
      002666 36               [12] 1577 	addc	a,@r0
      002667 FD               [12] 1578 	mov	r5,a
      002668 74 20            [12] 1579 	mov	a,#0x20
      00266A 2C               [12] 1580 	add	a,r4
      00266B FC               [12] 1581 	mov	r4,a
      00266C E4               [12] 1582 	clr	a
      00266D 3D               [12] 1583 	addc	a,r5
      00266E FD               [12] 1584 	mov	r5,a
      00266F C0 03            [24] 1585 	push	ar3
      002671 C0 02            [24] 1586 	push	ar2
      002673 74 20            [12] 1587 	mov	a,#0x20
      002675 C0 E0            [24] 1588 	push	acc
      002677 E4               [12] 1589 	clr	a
      002678 C0 E0            [24] 1590 	push	acc
      00267A 8C 82            [24] 1591 	mov	dpl,r4
      00267C 8D 83            [24] 1592 	mov	dph,r5
      00267E 12 2B 7E         [24] 1593 	lcall	__modsint
      002681 AC 82            [24] 1594 	mov	r4,dpl
      002683 AD 83            [24] 1595 	mov	r5,dph
      002685 15 81            [12] 1596 	dec	sp
      002687 15 81            [12] 1597 	dec	sp
      002689 D0 02            [24] 1598 	pop	ar2
      00268B D0 03            [24] 1599 	pop	ar3
      00268D EC               [12] 1600 	mov	a,r4
      00268E 2A               [12] 1601 	add	a,r2
      00268F FE               [12] 1602 	mov	r6,a
      002690 ED               [12] 1603 	mov	a,r5
      002691 3B               [12] 1604 	addc	a,r3
      002692 FF               [12] 1605 	mov	r7,a
      002693 EE               [12] 1606 	mov	a,r6
      002694 24 00            [12] 1607 	add	a,#_u
      002696 F5 82            [12] 1608 	mov	dpl,a
      002698 EF               [12] 1609 	mov	a,r7
      002699 34 88            [12] 1610 	addc	a,#(_u >> 8)
      00269B F5 83            [12] 1611 	mov	dph,a
      00269D E0               [24] 1612 	movx	a,@dptr
      00269E FF               [12] 1613 	mov	r7,a
      00269F A8 10            [24] 1614 	mov	r0,_bp
      0026A1 08               [12] 1615 	inc	r0
      0026A2 EF               [12] 1616 	mov	a,r7
      0026A3 26               [12] 1617 	add	a,@r0
      0026A4 F6               [12] 1618 	mov	@r0,a
                                   1619 ;	life.c:168: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      0026A5 78 33            [12] 1620 	mov	r0,#_x
      0026A7 E5 10            [12] 1621 	mov	a,_bp
      0026A9 24 06            [12] 1622 	add	a,#0x06
      0026AB F9               [12] 1623 	mov	r1,a
      0026AC E6               [12] 1624 	mov	a,@r0
      0026AD F7               [12] 1625 	mov	@r1,a
      0026AE 08               [12] 1626 	inc	r0
      0026AF 09               [12] 1627 	inc	r1
      0026B0 E6               [12] 1628 	mov	a,@r0
      0026B1 F7               [12] 1629 	mov	@r1,a
      0026B2 E5 10            [12] 1630 	mov	a,_bp
      0026B4 24 06            [12] 1631 	add	a,#0x06
      0026B6 F8               [12] 1632 	mov	r0,a
      0026B7 74 20            [12] 1633 	mov	a,#0x20
      0026B9 26               [12] 1634 	add	a,@r0
      0026BA FE               [12] 1635 	mov	r6,a
      0026BB E4               [12] 1636 	clr	a
      0026BC 08               [12] 1637 	inc	r0
      0026BD 36               [12] 1638 	addc	a,@r0
      0026BE FF               [12] 1639 	mov	r7,a
      0026BF C0 05            [24] 1640 	push	ar5
      0026C1 C0 04            [24] 1641 	push	ar4
      0026C3 C0 03            [24] 1642 	push	ar3
      0026C5 C0 02            [24] 1643 	push	ar2
      0026C7 74 20            [12] 1644 	mov	a,#0x20
      0026C9 C0 E0            [24] 1645 	push	acc
      0026CB E4               [12] 1646 	clr	a
      0026CC C0 E0            [24] 1647 	push	acc
      0026CE 8E 82            [24] 1648 	mov	dpl,r6
      0026D0 8F 83            [24] 1649 	mov	dph,r7
      0026D2 12 2B 7E         [24] 1650 	lcall	__modsint
      0026D5 C8               [12] 1651 	xch	a,r0
      0026D6 E5 10            [12] 1652 	mov	a,_bp
      0026D8 24 08            [12] 1653 	add	a,#0x08
      0026DA C8               [12] 1654 	xch	a,r0
      0026DB A6 82            [24] 1655 	mov	@r0,dpl
      0026DD 08               [12] 1656 	inc	r0
      0026DE A6 83            [24] 1657 	mov	@r0,dph
      0026E0 15 81            [12] 1658 	dec	sp
      0026E2 15 81            [12] 1659 	dec	sp
      0026E4 D0 02            [24] 1660 	pop	ar2
      0026E6 D0 03            [24] 1661 	pop	ar3
      0026E8 E5 10            [12] 1662 	mov	a,_bp
      0026EA 24 08            [12] 1663 	add	a,#0x08
      0026EC F8               [12] 1664 	mov	r0,a
      0026ED E6               [12] 1665 	mov	a,@r0
      0026EE 2A               [12] 1666 	add	a,r2
      0026EF FE               [12] 1667 	mov	r6,a
      0026F0 08               [12] 1668 	inc	r0
      0026F1 E6               [12] 1669 	mov	a,@r0
      0026F2 3B               [12] 1670 	addc	a,r3
      0026F3 FF               [12] 1671 	mov	r7,a
      0026F4 EE               [12] 1672 	mov	a,r6
      0026F5 24 00            [12] 1673 	add	a,#_u
      0026F7 F5 82            [12] 1674 	mov	dpl,a
      0026F9 EF               [12] 1675 	mov	a,r7
      0026FA 34 88            [12] 1676 	addc	a,#(_u >> 8)
      0026FC F5 83            [12] 1677 	mov	dph,a
      0026FE E0               [24] 1678 	movx	a,@dptr
      0026FF FF               [12] 1679 	mov	r7,a
      002700 A8 10            [24] 1680 	mov	r0,_bp
      002702 08               [12] 1681 	inc	r0
      002703 EF               [12] 1682 	mov	a,r7
      002704 26               [12] 1683 	add	a,@r0
      002705 F6               [12] 1684 	mov	@r0,a
                                   1685 ;	life.c:170: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      002706 E5 10            [12] 1686 	mov	a,_bp
      002708 24 06            [12] 1687 	add	a,#0x06
      00270A F8               [12] 1688 	mov	r0,a
      00270B 74 21            [12] 1689 	mov	a,#0x21
      00270D 26               [12] 1690 	add	a,@r0
      00270E FE               [12] 1691 	mov	r6,a
      00270F E4               [12] 1692 	clr	a
      002710 08               [12] 1693 	inc	r0
      002711 36               [12] 1694 	addc	a,@r0
      002712 FF               [12] 1695 	mov	r7,a
      002713 C0 03            [24] 1696 	push	ar3
      002715 C0 02            [24] 1697 	push	ar2
      002717 74 20            [12] 1698 	mov	a,#0x20
      002719 C0 E0            [24] 1699 	push	acc
      00271B E4               [12] 1700 	clr	a
      00271C C0 E0            [24] 1701 	push	acc
      00271E 8E 82            [24] 1702 	mov	dpl,r6
      002720 8F 83            [24] 1703 	mov	dph,r7
      002722 12 2B 7E         [24] 1704 	lcall	__modsint
      002725 AE 82            [24] 1705 	mov	r6,dpl
      002727 AF 83            [24] 1706 	mov	r7,dph
      002729 15 81            [12] 1707 	dec	sp
      00272B 15 81            [12] 1708 	dec	sp
      00272D D0 02            [24] 1709 	pop	ar2
      00272F D0 03            [24] 1710 	pop	ar3
      002731 D0 04            [24] 1711 	pop	ar4
      002733 D0 05            [24] 1712 	pop	ar5
      002735 EE               [12] 1713 	mov	a,r6
      002736 2A               [12] 1714 	add	a,r2
      002737 FA               [12] 1715 	mov	r2,a
      002738 EF               [12] 1716 	mov	a,r7
      002739 3B               [12] 1717 	addc	a,r3
      00273A FB               [12] 1718 	mov	r3,a
      00273B EA               [12] 1719 	mov	a,r2
      00273C 24 00            [12] 1720 	add	a,#_u
      00273E F5 82            [12] 1721 	mov	dpl,a
      002740 EB               [12] 1722 	mov	a,r3
      002741 34 88            [12] 1723 	addc	a,#(_u >> 8)
      002743 F5 83            [12] 1724 	mov	dph,a
      002745 E0               [24] 1725 	movx	a,@dptr
      002746 FB               [12] 1726 	mov	r3,a
      002747 A8 10            [24] 1727 	mov	r0,_bp
      002749 08               [12] 1728 	inc	r0
      00274A EB               [12] 1729 	mov	a,r3
      00274B 26               [12] 1730 	add	a,@r0
      00274C F6               [12] 1731 	mov	@r0,a
                                   1732 ;	life.c:172: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      00274D 78 35            [12] 1733 	mov	r0,#_y
      00274F E5 10            [12] 1734 	mov	a,_bp
      002751 24 0A            [12] 1735 	add	a,#0x0a
      002753 F9               [12] 1736 	mov	r1,a
      002754 E6               [12] 1737 	mov	a,@r0
      002755 F7               [12] 1738 	mov	@r1,a
      002756 08               [12] 1739 	inc	r0
      002757 09               [12] 1740 	inc	r1
      002758 E6               [12] 1741 	mov	a,@r0
      002759 F7               [12] 1742 	mov	@r1,a
      00275A E5 10            [12] 1743 	mov	a,_bp
      00275C 24 0A            [12] 1744 	add	a,#0x0a
      00275E F8               [12] 1745 	mov	r0,a
      00275F 74 40            [12] 1746 	mov	a,#0x40
      002761 26               [12] 1747 	add	a,@r0
      002762 FA               [12] 1748 	mov	r2,a
      002763 E4               [12] 1749 	clr	a
      002764 08               [12] 1750 	inc	r0
      002765 36               [12] 1751 	addc	a,@r0
      002766 FB               [12] 1752 	mov	r3,a
      002767 C0 07            [24] 1753 	push	ar7
      002769 C0 06            [24] 1754 	push	ar6
      00276B C0 05            [24] 1755 	push	ar5
      00276D C0 04            [24] 1756 	push	ar4
      00276F 74 40            [12] 1757 	mov	a,#0x40
      002771 C0 E0            [24] 1758 	push	acc
      002773 E4               [12] 1759 	clr	a
      002774 C0 E0            [24] 1760 	push	acc
      002776 8A 82            [24] 1761 	mov	dpl,r2
      002778 8B 83            [24] 1762 	mov	dph,r3
      00277A 12 2B 7E         [24] 1763 	lcall	__modsint
      00277D AA 82            [24] 1764 	mov	r2,dpl
      00277F AB 83            [24] 1765 	mov	r3,dph
      002781 15 81            [12] 1766 	dec	sp
      002783 15 81            [12] 1767 	dec	sp
      002785 D0 04            [24] 1768 	pop	ar4
      002787 D0 05            [24] 1769 	pop	ar5
      002789 D0 06            [24] 1770 	pop	ar6
      00278B D0 07            [24] 1771 	pop	ar7
      00278D E5 10            [12] 1772 	mov	a,_bp
      00278F 24 0C            [12] 1773 	add	a,#0x0c
      002791 F8               [12] 1774 	mov	r0,a
      002792 A6 02            [24] 1775 	mov	@r0,ar2
      002794 EB               [12] 1776 	mov	a,r3
      002795 C4               [12] 1777 	swap	a
      002796 23               [12] 1778 	rl	a
      002797 54 E0            [12] 1779 	anl	a,#0xe0
      002799 C6               [12] 1780 	xch	a,@r0
      00279A C4               [12] 1781 	swap	a
      00279B 23               [12] 1782 	rl	a
      00279C C6               [12] 1783 	xch	a,@r0
      00279D 66               [12] 1784 	xrl	a,@r0
      00279E C6               [12] 1785 	xch	a,@r0
      00279F 54 E0            [12] 1786 	anl	a,#0xe0
      0027A1 C6               [12] 1787 	xch	a,@r0
      0027A2 66               [12] 1788 	xrl	a,@r0
      0027A3 08               [12] 1789 	inc	r0
      0027A4 F6               [12] 1790 	mov	@r0,a
      0027A5 E5 10            [12] 1791 	mov	a,_bp
      0027A7 24 0C            [12] 1792 	add	a,#0x0c
      0027A9 F8               [12] 1793 	mov	r0,a
      0027AA EC               [12] 1794 	mov	a,r4
      0027AB 26               [12] 1795 	add	a,@r0
      0027AC FA               [12] 1796 	mov	r2,a
      0027AD ED               [12] 1797 	mov	a,r5
      0027AE 08               [12] 1798 	inc	r0
      0027AF 36               [12] 1799 	addc	a,@r0
      0027B0 FB               [12] 1800 	mov	r3,a
      0027B1 EA               [12] 1801 	mov	a,r2
      0027B2 24 00            [12] 1802 	add	a,#_u
      0027B4 F5 82            [12] 1803 	mov	dpl,a
      0027B6 EB               [12] 1804 	mov	a,r3
      0027B7 34 88            [12] 1805 	addc	a,#(_u >> 8)
      0027B9 F5 83            [12] 1806 	mov	dph,a
      0027BB E0               [24] 1807 	movx	a,@dptr
      0027BC FB               [12] 1808 	mov	r3,a
      0027BD A8 10            [24] 1809 	mov	r0,_bp
      0027BF 08               [12] 1810 	inc	r0
      0027C0 EB               [12] 1811 	mov	a,r3
      0027C1 26               [12] 1812 	add	a,@r0
      0027C2 F6               [12] 1813 	mov	@r0,a
                                   1814 ;	life.c:174: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      0027C3 E5 10            [12] 1815 	mov	a,_bp
      0027C5 24 0C            [12] 1816 	add	a,#0x0c
      0027C7 F8               [12] 1817 	mov	r0,a
      0027C8 E5 10            [12] 1818 	mov	a,_bp
      0027CA 24 08            [12] 1819 	add	a,#0x08
      0027CC F9               [12] 1820 	mov	r1,a
      0027CD E7               [12] 1821 	mov	a,@r1
      0027CE 26               [12] 1822 	add	a,@r0
      0027CF FA               [12] 1823 	mov	r2,a
      0027D0 09               [12] 1824 	inc	r1
      0027D1 E7               [12] 1825 	mov	a,@r1
      0027D2 08               [12] 1826 	inc	r0
      0027D3 36               [12] 1827 	addc	a,@r0
      0027D4 FB               [12] 1828 	mov	r3,a
      0027D5 EA               [12] 1829 	mov	a,r2
      0027D6 24 00            [12] 1830 	add	a,#_u
      0027D8 F5 82            [12] 1831 	mov	dpl,a
      0027DA EB               [12] 1832 	mov	a,r3
      0027DB 34 88            [12] 1833 	addc	a,#(_u >> 8)
      0027DD F5 83            [12] 1834 	mov	dph,a
      0027DF E0               [24] 1835 	movx	a,@dptr
      0027E0 FB               [12] 1836 	mov	r3,a
      0027E1 A8 10            [24] 1837 	mov	r0,_bp
      0027E3 08               [12] 1838 	inc	r0
      0027E4 EB               [12] 1839 	mov	a,r3
      0027E5 26               [12] 1840 	add	a,@r0
      0027E6 F6               [12] 1841 	mov	@r0,a
                                   1842 ;	life.c:176: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      0027E7 E5 10            [12] 1843 	mov	a,_bp
      0027E9 24 0C            [12] 1844 	add	a,#0x0c
      0027EB F8               [12] 1845 	mov	r0,a
      0027EC EE               [12] 1846 	mov	a,r6
      0027ED 26               [12] 1847 	add	a,@r0
      0027EE FA               [12] 1848 	mov	r2,a
      0027EF EF               [12] 1849 	mov	a,r7
      0027F0 08               [12] 1850 	inc	r0
      0027F1 36               [12] 1851 	addc	a,@r0
      0027F2 FB               [12] 1852 	mov	r3,a
      0027F3 EA               [12] 1853 	mov	a,r2
      0027F4 24 00            [12] 1854 	add	a,#_u
      0027F6 F5 82            [12] 1855 	mov	dpl,a
      0027F8 EB               [12] 1856 	mov	a,r3
      0027F9 34 88            [12] 1857 	addc	a,#(_u >> 8)
      0027FB F5 83            [12] 1858 	mov	dph,a
      0027FD E0               [24] 1859 	movx	a,@dptr
      0027FE FB               [12] 1860 	mov	r3,a
      0027FF A8 10            [24] 1861 	mov	r0,_bp
      002801 08               [12] 1862 	inc	r0
      002802 E5 10            [12] 1863 	mov	a,_bp
      002804 24 0C            [12] 1864 	add	a,#0x0c
      002806 F9               [12] 1865 	mov	r1,a
      002807 EB               [12] 1866 	mov	a,r3
      002808 26               [12] 1867 	add	a,@r0
      002809 F7               [12] 1868 	mov	@r1,a
                                   1869 ;	life.c:178: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      00280A E5 10            [12] 1870 	mov	a,_bp
      00280C 24 0A            [12] 1871 	add	a,#0x0a
      00280E F8               [12] 1872 	mov	r0,a
      00280F 74 41            [12] 1873 	mov	a,#0x41
      002811 26               [12] 1874 	add	a,@r0
      002812 FA               [12] 1875 	mov	r2,a
      002813 E4               [12] 1876 	clr	a
      002814 08               [12] 1877 	inc	r0
      002815 36               [12] 1878 	addc	a,@r0
      002816 FB               [12] 1879 	mov	r3,a
      002817 C0 07            [24] 1880 	push	ar7
      002819 C0 06            [24] 1881 	push	ar6
      00281B C0 05            [24] 1882 	push	ar5
      00281D C0 04            [24] 1883 	push	ar4
      00281F 74 40            [12] 1884 	mov	a,#0x40
      002821 C0 E0            [24] 1885 	push	acc
      002823 E4               [12] 1886 	clr	a
      002824 C0 E0            [24] 1887 	push	acc
      002826 8A 82            [24] 1888 	mov	dpl,r2
      002828 8B 83            [24] 1889 	mov	dph,r3
      00282A 12 2B 7E         [24] 1890 	lcall	__modsint
      00282D AA 82            [24] 1891 	mov	r2,dpl
      00282F AB 83            [24] 1892 	mov	r3,dph
      002831 15 81            [12] 1893 	dec	sp
      002833 15 81            [12] 1894 	dec	sp
      002835 D0 04            [24] 1895 	pop	ar4
      002837 D0 05            [24] 1896 	pop	ar5
      002839 D0 06            [24] 1897 	pop	ar6
      00283B D0 07            [24] 1898 	pop	ar7
      00283D EB               [12] 1899 	mov	a,r3
      00283E C4               [12] 1900 	swap	a
      00283F 23               [12] 1901 	rl	a
      002840 54 E0            [12] 1902 	anl	a,#0xe0
      002842 CA               [12] 1903 	xch	a,r2
      002843 C4               [12] 1904 	swap	a
      002844 23               [12] 1905 	rl	a
      002845 CA               [12] 1906 	xch	a,r2
      002846 6A               [12] 1907 	xrl	a,r2
      002847 CA               [12] 1908 	xch	a,r2
      002848 54 E0            [12] 1909 	anl	a,#0xe0
      00284A CA               [12] 1910 	xch	a,r2
      00284B 6A               [12] 1911 	xrl	a,r2
      00284C FB               [12] 1912 	mov	r3,a
      00284D EC               [12] 1913 	mov	a,r4
      00284E 2A               [12] 1914 	add	a,r2
      00284F FC               [12] 1915 	mov	r4,a
      002850 ED               [12] 1916 	mov	a,r5
      002851 3B               [12] 1917 	addc	a,r3
      002852 FD               [12] 1918 	mov	r5,a
      002853 EC               [12] 1919 	mov	a,r4
      002854 24 00            [12] 1920 	add	a,#_u
      002856 F5 82            [12] 1921 	mov	dpl,a
      002858 ED               [12] 1922 	mov	a,r5
      002859 34 88            [12] 1923 	addc	a,#(_u >> 8)
      00285B F5 83            [12] 1924 	mov	dph,a
      00285D E0               [24] 1925 	movx	a,@dptr
      00285E FD               [12] 1926 	mov	r5,a
      00285F E5 10            [12] 1927 	mov	a,_bp
      002861 24 0C            [12] 1928 	add	a,#0x0c
      002863 F8               [12] 1929 	mov	r0,a
      002864 E5 10            [12] 1930 	mov	a,_bp
      002866 24 0C            [12] 1931 	add	a,#0x0c
      002868 F9               [12] 1932 	mov	r1,a
      002869 ED               [12] 1933 	mov	a,r5
      00286A 26               [12] 1934 	add	a,@r0
      00286B F7               [12] 1935 	mov	@r1,a
                                   1936 ;	life.c:180: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      00286C E5 10            [12] 1937 	mov	a,_bp
      00286E 24 08            [12] 1938 	add	a,#0x08
      002870 F8               [12] 1939 	mov	r0,a
      002871 E6               [12] 1940 	mov	a,@r0
      002872 2A               [12] 1941 	add	a,r2
      002873 FC               [12] 1942 	mov	r4,a
      002874 08               [12] 1943 	inc	r0
      002875 E6               [12] 1944 	mov	a,@r0
      002876 3B               [12] 1945 	addc	a,r3
      002877 FD               [12] 1946 	mov	r5,a
      002878 EC               [12] 1947 	mov	a,r4
      002879 24 00            [12] 1948 	add	a,#_u
      00287B F5 82            [12] 1949 	mov	dpl,a
      00287D ED               [12] 1950 	mov	a,r5
      00287E 34 88            [12] 1951 	addc	a,#(_u >> 8)
      002880 F5 83            [12] 1952 	mov	dph,a
      002882 E0               [24] 1953 	movx	a,@dptr
      002883 FD               [12] 1954 	mov	r5,a
      002884 E5 10            [12] 1955 	mov	a,_bp
      002886 24 0C            [12] 1956 	add	a,#0x0c
      002888 F8               [12] 1957 	mov	r0,a
      002889 ED               [12] 1958 	mov	a,r5
      00288A 26               [12] 1959 	add	a,@r0
      00288B FD               [12] 1960 	mov	r5,a
                                   1961 ;	life.c:181: y1 = 1; x1 = 1;
      00288C 78 41            [12] 1962 	mov	r0,#_y1
      00288E 76 01            [12] 1963 	mov	@r0,#0x01
      002890 08               [12] 1964 	inc	r0
      002891 76 00            [12] 1965 	mov	@r0,#0x00
      002893 78 3F            [12] 1966 	mov	r0,#_x1
      002895 76 01            [12] 1967 	mov	@r0,#0x01
      002897 08               [12] 1968 	inc	r0
      002898 76 00            [12] 1969 	mov	@r0,#0x00
                                   1970 ;	life.c:182: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      00289A EE               [12] 1971 	mov	a,r6
      00289B 2A               [12] 1972 	add	a,r2
      00289C FE               [12] 1973 	mov	r6,a
      00289D EF               [12] 1974 	mov	a,r7
      00289E 3B               [12] 1975 	addc	a,r3
      00289F FF               [12] 1976 	mov	r7,a
      0028A0 EE               [12] 1977 	mov	a,r6
      0028A1 24 00            [12] 1978 	add	a,#_u
      0028A3 F5 82            [12] 1979 	mov	dpl,a
      0028A5 EF               [12] 1980 	mov	a,r7
      0028A6 34 88            [12] 1981 	addc	a,#(_u >> 8)
      0028A8 F5 83            [12] 1982 	mov	dph,a
      0028AA E0               [24] 1983 	movx	a,@dptr
      0028AB 2D               [12] 1984 	add	a,r5
      0028AC FF               [12] 1985 	mov	r7,a
      0028AD 78 3C            [12] 1986 	mov	r0,#_n
      0028AF A6 07            [24] 1987 	mov	@r0,ar7
                                   1988 ;	life.c:184: nu[A2D(W, y, x)] = (n == 3) || ((n == 2) && u[A2D(W, y, x)]);
      0028B1 A8 10            [24] 1989 	mov	r0,_bp
      0028B3 08               [12] 1990 	inc	r0
      0028B4 08               [12] 1991 	inc	r0
      0028B5 E6               [12] 1992 	mov	a,@r0
      0028B6 24 00            [12] 1993 	add	a,#_nu
      0028B8 FD               [12] 1994 	mov	r5,a
      0028B9 08               [12] 1995 	inc	r0
      0028BA E6               [12] 1996 	mov	a,@r0
      0028BB 34 90            [12] 1997 	addc	a,#(_nu >> 8)
      0028BD FE               [12] 1998 	mov	r6,a
      0028BE BF 03 02         [24] 1999 	cjne	r7,#0x03,00419$
      0028C1 80 28            [24] 2000 	sjmp	00205$
      0028C3                       2001 00419$:
      0028C3 BF 02 21         [24] 2002 	cjne	r7,#0x02,00204$
      0028C6 E5 10            [12] 2003 	mov	a,_bp
      0028C8 24 04            [12] 2004 	add	a,#0x04
      0028CA F8               [12] 2005 	mov	r0,a
      0028CB E5 10            [12] 2006 	mov	a,_bp
      0028CD 24 06            [12] 2007 	add	a,#0x06
      0028CF F9               [12] 2008 	mov	r1,a
      0028D0 E7               [12] 2009 	mov	a,@r1
      0028D1 26               [12] 2010 	add	a,@r0
      0028D2 FC               [12] 2011 	mov	r4,a
      0028D3 09               [12] 2012 	inc	r1
      0028D4 E7               [12] 2013 	mov	a,@r1
      0028D5 08               [12] 2014 	inc	r0
      0028D6 36               [12] 2015 	addc	a,@r0
      0028D7 FF               [12] 2016 	mov	r7,a
      0028D8 EC               [12] 2017 	mov	a,r4
      0028D9 24 00            [12] 2018 	add	a,#_u
      0028DB FC               [12] 2019 	mov	r4,a
      0028DC EF               [12] 2020 	mov	a,r7
      0028DD 34 88            [12] 2021 	addc	a,#(_u >> 8)
      0028DF FF               [12] 2022 	mov	r7,a
      0028E0 8C 82            [24] 2023 	mov	dpl,r4
      0028E2 8F 83            [24] 2024 	mov	dph,r7
      0028E4 E0               [24] 2025 	movx	a,@dptr
      0028E5 70 04            [24] 2026 	jnz	00205$
      0028E7                       2027 00204$:
                                   2028 ;	assignBit
      0028E7 C2 00            [12] 2029 	clr	b0
      0028E9 80 02            [24] 2030 	sjmp	00206$
      0028EB                       2031 00205$:
                                   2032 ;	assignBit
      0028EB D2 00            [12] 2033 	setb	b0
      0028ED                       2034 00206$:
      0028ED A2 00            [12] 2035 	mov	c,b0
      0028EF E4               [12] 2036 	clr	a
      0028F0 33               [12] 2037 	rlc	a
      0028F1 8D 82            [24] 2038 	mov	dpl,r5
      0028F3 8E 83            [24] 2039 	mov	dph,r6
      0028F5 F0               [24] 2040 	movx	@dptr,a
                                   2041 ;	life.c:185: cycle2 |= pu[A2D(W, y, x)] ^ nu[A2D(W, y, x)];
      0028F6 78 35            [12] 2042 	mov	r0,#_y
      0028F8 86 06            [24] 2043 	mov	ar6,@r0
      0028FA 08               [12] 2044 	inc	r0
      0028FB E6               [12] 2045 	mov	a,@r0
      0028FC C4               [12] 2046 	swap	a
      0028FD 23               [12] 2047 	rl	a
      0028FE 54 E0            [12] 2048 	anl	a,#0xe0
      002900 CE               [12] 2049 	xch	a,r6
      002901 C4               [12] 2050 	swap	a
      002902 23               [12] 2051 	rl	a
      002903 CE               [12] 2052 	xch	a,r6
      002904 6E               [12] 2053 	xrl	a,r6
      002905 CE               [12] 2054 	xch	a,r6
      002906 54 E0            [12] 2055 	anl	a,#0xe0
      002908 CE               [12] 2056 	xch	a,r6
      002909 6E               [12] 2057 	xrl	a,r6
      00290A FF               [12] 2058 	mov	r7,a
      00290B 78 33            [12] 2059 	mov	r0,#_x
      00290D E6               [12] 2060 	mov	a,@r0
      00290E 2E               [12] 2061 	add	a,r6
      00290F FE               [12] 2062 	mov	r6,a
      002910 08               [12] 2063 	inc	r0
      002911 E6               [12] 2064 	mov	a,@r0
      002912 3F               [12] 2065 	addc	a,r7
      002913 FF               [12] 2066 	mov	r7,a
      002914 EE               [12] 2067 	mov	a,r6
      002915 24 00            [12] 2068 	add	a,#_pu
      002917 F5 82            [12] 2069 	mov	dpl,a
      002919 EF               [12] 2070 	mov	a,r7
      00291A 34 80            [12] 2071 	addc	a,#(_pu >> 8)
      00291C F5 83            [12] 2072 	mov	dph,a
      00291E E0               [24] 2073 	movx	a,@dptr
      00291F FD               [12] 2074 	mov	r5,a
      002920 EE               [12] 2075 	mov	a,r6
      002921 24 00            [12] 2076 	add	a,#_nu
      002923 F5 82            [12] 2077 	mov	dpl,a
      002925 EF               [12] 2078 	mov	a,r7
      002926 34 90            [12] 2079 	addc	a,#(_nu >> 8)
      002928 F5 83            [12] 2080 	mov	dph,a
      00292A E0               [24] 2081 	movx	a,@dptr
      00292B FC               [12] 2082 	mov	r4,a
      00292C 6D               [12] 2083 	xrl	a,r5
      00292D 78 3E            [12] 2084 	mov	r0,#_cycle2
      00292F 46               [12] 2085 	orl	a,@r0
      002930 F6               [12] 2086 	mov	@r0,a
                                   2087 ;	life.c:186: fixed |= u[A2D(W, y, x)] ^ nu[A2D(W, y, x)];
      002931 EE               [12] 2088 	mov	a,r6
      002932 24 00            [12] 2089 	add	a,#_u
      002934 F5 82            [12] 2090 	mov	dpl,a
      002936 EF               [12] 2091 	mov	a,r7
      002937 34 88            [12] 2092 	addc	a,#(_u >> 8)
      002939 F5 83            [12] 2093 	mov	dph,a
      00293B E0               [24] 2094 	movx	a,@dptr
      00293C FF               [12] 2095 	mov	r7,a
      00293D EC               [12] 2096 	mov	a,r4
      00293E 6F               [12] 2097 	xrl	a,r7
      00293F 78 3D            [12] 2098 	mov	r0,#_fixed
      002941 46               [12] 2099 	orl	a,@r0
      002942 F6               [12] 2100 	mov	@r0,a
                                   2101 ;	life.c:162: for (x = 0; x < W; x++) {
      002943 78 33            [12] 2102 	mov	r0,#_x
      002945 06               [12] 2103 	inc	@r0
      002946 B6 00 02         [24] 2104 	cjne	@r0,#0x00,00423$
      002949 08               [12] 2105 	inc	r0
      00294A 06               [12] 2106 	inc	@r0
      00294B                       2107 00423$:
      00294B 78 33            [12] 2108 	mov	r0,#_x
      00294D C3               [12] 2109 	clr	c
      00294E E6               [12] 2110 	mov	a,@r0
      00294F 94 20            [12] 2111 	subb	a,#0x20
      002951 08               [12] 2112 	inc	r0
      002952 E6               [12] 2113 	mov	a,@r0
      002953 64 80            [12] 2114 	xrl	a,#0x80
      002955 94 80            [12] 2115 	subb	a,#0x80
      002957 50 03            [24] 2116 	jnc	00424$
      002959 02 25 D5         [24] 2117 	ljmp	00183$
      00295C                       2118 00424$:
                                   2119 ;	life.c:159: for (y = 0; y < H; y++) {
      00295C 78 35            [12] 2120 	mov	r0,#_y
      00295E 06               [12] 2121 	inc	@r0
      00295F B6 00 02         [24] 2122 	cjne	@r0,#0x00,00425$
      002962 08               [12] 2123 	inc	r0
      002963 06               [12] 2124 	inc	@r0
      002964                       2125 00425$:
      002964 78 35            [12] 2126 	mov	r0,#_y
      002966 C3               [12] 2127 	clr	c
      002967 E6               [12] 2128 	mov	a,@r0
      002968 94 40            [12] 2129 	subb	a,#0x40
      00296A 08               [12] 2130 	inc	r0
      00296B E6               [12] 2131 	mov	a,@r0
      00296C 64 80            [12] 2132 	xrl	a,#0x80
      00296E 94 80            [12] 2133 	subb	a,#0x80
      002970 50 03            [24] 2134 	jnc	00426$
      002972 02 25 AD         [24] 2135 	ljmp	00185$
      002975                       2136 00426$:
                                   2137 ;	life.c:190: cycle2 = !cycle2;
      002975 78 3E            [12] 2138 	mov	r0,#_cycle2
      002977 E6               [12] 2139 	mov	a,@r0
      002978 B4 01 00         [24] 2140 	cjne	a,#0x01,00427$
      00297B                       2141 00427$:
      00297B 92 00            [24] 2142 	mov	b0,c
      00297D 78 3E            [12] 2143 	mov	r0,#_cycle2
      00297F E4               [12] 2144 	clr	a
      002980 33               [12] 2145 	rlc	a
      002981 F6               [12] 2146 	mov	@r0,a
                                   2147 ;	life.c:191: fixed = !fixed;
      002982 78 3D            [12] 2148 	mov	r0,#_fixed
      002984 E6               [12] 2149 	mov	a,@r0
      002985 B4 01 00         [24] 2150 	cjne	a,#0x01,00428$
      002988                       2151 00428$:
      002988 92 00            [24] 2152 	mov	b0,c
      00298A 78 3D            [12] 2153 	mov	r0,#_fixed
      00298C E4               [12] 2154 	clr	a
      00298D 33               [12] 2155 	rlc	a
      00298E F6               [12] 2156 	mov	@r0,a
                                   2157 ;	life.c:193: memcpy(pu, u, sizeof (u));
      00298F E4               [12] 2158 	clr	a
      002990 C0 E0            [24] 2159 	push	acc
      002992 74 08            [12] 2160 	mov	a,#0x08
      002994 C0 E0            [24] 2161 	push	acc
      002996 74 00            [12] 2162 	mov	a,#_u
      002998 C0 E0            [24] 2163 	push	acc
      00299A 74 88            [12] 2164 	mov	a,#(_u >> 8)
      00299C C0 E0            [24] 2165 	push	acc
      00299E E4               [12] 2166 	clr	a
      00299F C0 E0            [24] 2167 	push	acc
      0029A1 90 80 00         [24] 2168 	mov	dptr,#_pu
      0029A4 75 F0 00         [24] 2169 	mov	b,#0x00
      0029A7 12 2A 65         [24] 2170 	lcall	___memcpy
      0029AA E5 81            [12] 2171 	mov	a,sp
      0029AC 24 FB            [12] 2172 	add	a,#0xfb
      0029AE F5 81            [12] 2173 	mov	sp,a
                                   2174 ;	life.c:194: memcpy(u, nu, sizeof (nu));
      0029B0 E4               [12] 2175 	clr	a
      0029B1 C0 E0            [24] 2176 	push	acc
      0029B3 74 08            [12] 2177 	mov	a,#0x08
      0029B5 C0 E0            [24] 2178 	push	acc
      0029B7 74 00            [12] 2179 	mov	a,#_nu
      0029B9 C0 E0            [24] 2180 	push	acc
      0029BB 74 90            [12] 2181 	mov	a,#(_nu >> 8)
      0029BD C0 E0            [24] 2182 	push	acc
      0029BF E4               [12] 2183 	clr	a
      0029C0 C0 E0            [24] 2184 	push	acc
      0029C2 90 88 00         [24] 2185 	mov	dptr,#_u
      0029C5 75 F0 00         [24] 2186 	mov	b,#0x00
      0029C8 12 2A 65         [24] 2187 	lcall	___memcpy
      0029CB E5 81            [12] 2188 	mov	a,sp
      0029CD 24 FB            [12] 2189 	add	a,#0xfb
      0029CF F5 81            [12] 2190 	mov	sp,a
                                   2191 ;	life.c:232: if (fixed || cycle2) {
      0029D1 78 3D            [12] 2192 	mov	r0,#_fixed
      0029D3 E6               [12] 2193 	mov	a,@r0
      0029D4 70 08            [24] 2194 	jnz	00120$
      0029D6 78 3E            [12] 2195 	mov	r0,#_cycle2
      0029D8 E6               [12] 2196 	mov	a,@r0
      0029D9 70 03            [24] 2197 	jnz	00430$
      0029DB 02 25 85         [24] 2198 	ljmp	00192$
      0029DE                       2199 00430$:
      0029DE                       2200 00120$:
                                   2201 ;	life.c:233: printstr("DONE\r\n");
      0029DE 7D B6            [12] 2202 	mov	r5,#___str_6
      0029E0 7E 2C            [12] 2203 	mov	r6,#(___str_6 >> 8)
      0029E2 7F 80            [12] 2204 	mov	r7,#0x80
                                   2205 ;	life.c:48: return;
      0029E4                       2206 00188$:
                                   2207 ;	life.c:46: for (; *s; s++) putchar(*s);
      0029E4 8D 82            [24] 2208 	mov	dpl,r5
      0029E6 8E 83            [24] 2209 	mov	dph,r6
      0029E8 8F F0            [24] 2210 	mov	b,r7
      0029EA 12 2B 62         [24] 2211 	lcall	__gptrget
      0029ED FC               [12] 2212 	mov	r4,a
      0029EE 60 10            [24] 2213 	jz	00162$
      0029F0 7B 00            [12] 2214 	mov	r3,#0x00
      0029F2 8C 82            [24] 2215 	mov	dpl,r4
      0029F4 8B 83            [24] 2216 	mov	dph,r3
      0029F6 12 20 C5         [24] 2217 	lcall	_putchar
      0029F9 0D               [12] 2218 	inc	r5
                                   2219 ;	life.c:233: printstr("DONE\r\n");
      0029FA BD 00 E7         [24] 2220 	cjne	r5,#0x00,00188$
      0029FD 0E               [12] 2221 	inc	r6
      0029FE 80 E4            [24] 2222 	sjmp	00188$
      002A00                       2223 00162$:
                                   2224 ;	life.c:234: (void)getchar();
      002A00 12 20 CA         [24] 2225 	lcall	_getchar
                                   2226 ;	life.c:235: break;
      002A03                       2227 00123$:
                                   2228 ;	life.c:239: if (i1) {
      002A03 78 32            [12] 2229 	mov	r0,#_i1
      002A05 E6               [12] 2230 	mov	a,@r0
      002A06 60 25            [24] 2231 	jz	00198$
                                   2232 ;	life.c:240: printstr("BREAK\r\n");
      002A08 7D BD            [12] 2233 	mov	r5,#___str_7
      002A0A 7E 2C            [12] 2234 	mov	r6,#(___str_7 >> 8)
      002A0C 7F 80            [12] 2235 	mov	r7,#0x80
                                   2236 ;	life.c:48: return;
      002A0E                       2237 00195$:
                                   2238 ;	life.c:46: for (; *s; s++) putchar(*s);
      002A0E 8D 82            [24] 2239 	mov	dpl,r5
      002A10 8E 83            [24] 2240 	mov	dph,r6
      002A12 8F F0            [24] 2241 	mov	b,r7
      002A14 12 2B 62         [24] 2242 	lcall	__gptrget
      002A17 FC               [12] 2243 	mov	r4,a
      002A18 60 10            [24] 2244 	jz	00164$
      002A1A 7B 00            [12] 2245 	mov	r3,#0x00
      002A1C 8C 82            [24] 2246 	mov	dpl,r4
      002A1E 8B 83            [24] 2247 	mov	dph,r3
      002A20 12 20 C5         [24] 2248 	lcall	_putchar
      002A23 0D               [12] 2249 	inc	r5
                                   2250 ;	life.c:240: printstr("BREAK\r\n");
      002A24 BD 00 E7         [24] 2251 	cjne	r5,#0x00,00195$
      002A27 0E               [12] 2252 	inc	r6
      002A28 80 E4            [24] 2253 	sjmp	00195$
      002A2A                       2254 00164$:
                                   2255 ;	life.c:241: (void)getchar();
      002A2A 12 20 CA         [24] 2256 	lcall	_getchar
      002A2D                       2257 00198$:
                                   2258 ;	life.c:206: for (i0 = 0; !i0; ) {		
      002A2D 78 31            [12] 2259 	mov	r0,#_i0
      002A2F E6               [12] 2260 	mov	a,@r0
      002A30 70 03            [24] 2261 	jnz	00436$
      002A32 02 23 00         [24] 2262 	ljmp	00197$
      002A35                       2263 00436$:
                                   2264 ;	life.c:245: terminate:
      002A35                       2265 00127$:
                                   2266 ;	life.c:246: EA = 0;
                                   2267 ;	assignBit
      002A35 C2 AF            [12] 2268 	clr	_EA
                                   2269 ;	life.c:247: printstr("TERM\r\n");
      002A37 7D C5            [12] 2270 	mov	r5,#___str_8
      002A39 7E 2C            [12] 2271 	mov	r6,#(___str_8 >> 8)
      002A3B 7F 80            [12] 2272 	mov	r7,#0x80
                                   2273 ;	life.c:48: return;
      002A3D                       2274 00200$:
                                   2275 ;	life.c:46: for (; *s; s++) putchar(*s);
      002A3D 8D 82            [24] 2276 	mov	dpl,r5
      002A3F 8E 83            [24] 2277 	mov	dph,r6
      002A41 8F F0            [24] 2278 	mov	b,r7
      002A43 12 2B 62         [24] 2279 	lcall	__gptrget
      002A46 FC               [12] 2280 	mov	r4,a
      002A47 60 10            [24] 2281 	jz	00166$
      002A49 7B 00            [12] 2282 	mov	r3,#0x00
      002A4B 8C 82            [24] 2283 	mov	dpl,r4
      002A4D 8B 83            [24] 2284 	mov	dph,r3
      002A4F 12 20 C5         [24] 2285 	lcall	_putchar
      002A52 0D               [12] 2286 	inc	r5
                                   2287 ;	life.c:247: printstr("TERM\r\n");
      002A53 BD 00 E7         [24] 2288 	cjne	r5,#0x00,00200$
      002A56 0E               [12] 2289 	inc	r6
      002A57 80 E4            [24] 2290 	sjmp	00200$
      002A59                       2291 00166$:
                                   2292 ;	life.c:248: (void)getchar();
      002A59 12 20 CA         [24] 2293 	lcall	_getchar
                                   2294 ;	life.c:252: __endasm;
      002A5C 02 00 00         [24] 2295 	ljmp	0
                                   2296 ;	life.c:253: }
      002A5F 85 10 81         [24] 2297 	mov	sp,_bp
      002A62 D0 10            [24] 2298 	pop	_bp
      002A64 22               [24] 2299 	ret
                                   2300 	.area CSEG    (CODE)
                                   2301 	.area CONST   (CODE)
                                   2302 	.area CONST   (CODE)
      002C8A                       2303 ___str_0:
      002C8A 1B                    2304 	.db 0x1b
      002C8B 5B 32 4A              2305 	.ascii "[2J"
      002C8E 1B                    2306 	.db 0x1b
      002C8F 5B 6D                 2307 	.ascii "[m"
      002C91 00                    2308 	.db 0x00
                                   2309 	.area CSEG    (CODE)
                                   2310 	.area CONST   (CODE)
      002C92                       2311 ___str_1:
      002C92 0D                    2312 	.db 0x0d
      002C93 0A                    2313 	.db 0x0a
      002C94 00                    2314 	.db 0x00
                                   2315 	.area CSEG    (CODE)
                                   2316 	.area CONST   (CODE)
      002C95                       2317 ___str_2:
      002C95 4C 4F 41 44 20 3C     2318 	.ascii "LOAD <"
      002C9B 00                    2319 	.db 0x00
                                   2320 	.area CSEG    (CODE)
                                   2321 	.area CONST   (CODE)
      002C9C                       2322 ___str_3:
      002C9C 3E                    2323 	.ascii ">"
      002C9D 0D                    2324 	.db 0x0d
      002C9E 0A                    2325 	.db 0x0a
      002C9F 00                    2326 	.db 0x00
                                   2327 	.area CSEG    (CODE)
                                   2328 	.area CONST   (CODE)
      002CA0                       2329 ___str_4:
      002CA0 1B                    2330 	.db 0x1b
      002CA1 5B 32 4A              2331 	.ascii "[2J"
      002CA4 1B                    2332 	.db 0x1b
      002CA5 5B 6D 49 4E 49 54     2333 	.ascii "[mINIT"
      002CAB 0D                    2334 	.db 0x0d
      002CAC 0A                    2335 	.db 0x0a
      002CAD 00                    2336 	.db 0x00
                                   2337 	.area CSEG    (CODE)
                                   2338 	.area CONST   (CODE)
      002CAE                       2339 ___str_5:
      002CAE 52 45 41 44 59        2340 	.ascii "READY"
      002CB3 0D                    2341 	.db 0x0d
      002CB4 0A                    2342 	.db 0x0a
      002CB5 00                    2343 	.db 0x00
                                   2344 	.area CSEG    (CODE)
                                   2345 	.area CONST   (CODE)
      002CB6                       2346 ___str_6:
      002CB6 44 4F 4E 45           2347 	.ascii "DONE"
      002CBA 0D                    2348 	.db 0x0d
      002CBB 0A                    2349 	.db 0x0a
      002CBC 00                    2350 	.db 0x00
                                   2351 	.area CSEG    (CODE)
                                   2352 	.area CONST   (CODE)
      002CBD                       2353 ___str_7:
      002CBD 42 52 45 41 4B        2354 	.ascii "BREAK"
      002CC2 0D                    2355 	.db 0x0d
      002CC3 0A                    2356 	.db 0x0a
      002CC4 00                    2357 	.db 0x00
                                   2358 	.area CSEG    (CODE)
                                   2359 	.area CONST   (CODE)
      002CC5                       2360 ___str_8:
      002CC5 54 45 52 4D           2361 	.ascii "TERM"
      002CC9 0D                    2362 	.db 0x0d
      002CCA 0A                    2363 	.db 0x0a
      002CCB 00                    2364 	.db 0x00
                                   2365 	.area CSEG    (CODE)
                                   2366 	.area XINIT   (CODE)
                                   2367 	.area CABS    (ABS,CODE)
