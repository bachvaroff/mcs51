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
      0020F3 7D CA            [12]  580 	mov	r5,#___str_0
      0020F5 7E 2C            [12]  581 	mov	r6,#(___str_0 >> 8)
      0020F7 7F 80            [12]  582 	mov	r7,#0x80
                                    583 ;	life.c:48: return;
      0020F9                        584 00121$:
                                    585 ;	life.c:46: for (; *s; s++) putchar(*s);
      0020F9 8D 82            [24]  586 	mov	dpl,r5
      0020FB 8E 83            [24]  587 	mov	dph,r6
      0020FD 8F F0            [24]  588 	mov	b,r7
      0020FF 12 2B A2         [24]  589 	lcall	__gptrget
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
      0021F7 7D D2            [12]  743 	mov	r5,#___str_1
      0021F9 7E 2C            [12]  744 	mov	r6,#(___str_1 >> 8)
      0021FB 7F 80            [12]  745 	mov	r7,#0x80
                                    746 ;	life.c:48: return;
      0021FD                        747 00124$:
                                    748 ;	life.c:46: for (; *s; s++) putchar(*s);
      0021FD 8D 82            [24]  749 	mov	dpl,r5
      0021FF 8E 83            [24]  750 	mov	dph,r6
      002201 8F F0            [24]  751 	mov	b,r7
      002203 12 2B A2         [24]  752 	lcall	__gptrget
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
      0022AC 7D D2            [12]  876 	mov	r5,#___str_1
      0022AE 7E 2C            [12]  877 	mov	r6,#(___str_1 >> 8)
      0022B0 7F 80            [12]  878 	mov	r7,#0x80
                                    879 ;	life.c:48: return;
      0022B2                        880 00129$:
                                    881 ;	life.c:46: for (; *s; s++) putchar(*s);
      0022B2 8D 82            [24]  882 	mov	dpl,r5
      0022B4 8E 83            [24]  883 	mov	dph,r6
      0022B6 8F F0            [24]  884 	mov	b,r7
      0022B8 12 2B A2         [24]  885 	lcall	__gptrget
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
                                    934 ;__4587520029              Allocated to registers 
                                    935 ;s                         Allocated to registers r5 r6 r7 
                                    936 ;__4587520031              Allocated to registers 
                                    937 ;s                         Allocated to registers r5 r6 r7 
                                    938 ;__3276800033              Allocated to registers 
                                    939 ;s                         Allocated to registers r5 r6 r7 
                                    940 ;__1310720035              Allocated to registers 
                                    941 ;s                         Allocated to registers r5 r6 r7 
                                    942 ;sloc0                     Allocated to stack - _bp +1
                                    943 ;sloc1                     Allocated to stack - _bp +3
                                    944 ;sloc2                     Allocated to stack - _bp +5
                                    945 ;sloc3                     Allocated to stack - _bp +7
                                    946 ;sloc4                     Allocated to stack - _bp +9
                                    947 ;sloc5                     Allocated to stack - _bp +11
                                    948 ;sloc6                     Allocated to stack - _bp +13
                                    949 ;------------------------------------------------------------
                                    950 ;	life.c:199: void main(void) {
                                    951 ;	-----------------------------------------
                                    952 ;	 function main
                                    953 ;	-----------------------------------------
      0022E8                        954 _main:
      0022E8 C0 10            [24]  955 	push	_bp
      0022EA E5 81            [12]  956 	mov	a,sp
      0022EC F5 10            [12]  957 	mov	_bp,a
      0022EE 24 0E            [12]  958 	add	a,#0x0e
      0022F0 F5 81            [12]  959 	mov	sp,a
                                    960 ;	life.c:200: IT0 = 1;
                                    961 ;	assignBit
      0022F2 D2 88            [12]  962 	setb	_IT0
                                    963 ;	life.c:201: IT1 = 1;
                                    964 ;	assignBit
      0022F4 D2 8A            [12]  965 	setb	_IT1
                                    966 ;	life.c:202: EX0 = 1;
                                    967 ;	assignBit
      0022F6 D2 A8            [12]  968 	setb	_EX0
                                    969 ;	life.c:203: EX1 = 1;
                                    970 ;	assignBit
      0022F8 D2 AA            [12]  971 	setb	_EX1
                                    972 ;	life.c:204: EA = 1;
                                    973 ;	assignBit
      0022FA D2 AF            [12]  974 	setb	_EA
                                    975 ;	life.c:206: for (i0 = 0; !i0; ) {		
      0022FC 78 31            [12]  976 	mov	r0,#_i0
      0022FE 76 00            [12]  977 	mov	@r0,#0x00
      002300                        978 00210$:
                                    979 ;	life.c:207: printstr("\033[2J\033[mINIT\r\n");
      002300 7D E0            [12]  980 	mov	r5,#___str_4
      002302 7E 2C            [12]  981 	mov	r6,#(___str_4 >> 8)
      002304 7F 80            [12]  982 	mov	r7,#0x80
                                    983 ;	life.c:48: return;
      002306                        984 00175$:
                                    985 ;	life.c:46: for (; *s; s++) putchar(*s);
      002306 8D 82            [24]  986 	mov	dpl,r5
      002308 8E 83            [24]  987 	mov	dph,r6
      00230A 8F F0            [24]  988 	mov	b,r7
      00230C 12 2B A2         [24]  989 	lcall	__gptrget
      00230F FC               [12]  990 	mov	r4,a
      002310 60 10            [24]  991 	jz	00107$
      002312 7B 00            [12]  992 	mov	r3,#0x00
      002314 8C 82            [24]  993 	mov	dpl,r4
      002316 8B 83            [24]  994 	mov	dph,r3
      002318 12 20 C5         [24]  995 	lcall	_putchar
      00231B 0D               [12]  996 	inc	r5
                                    997 ;	life.c:208: while (1) {
      00231C BD 00 E7         [24]  998 	cjne	r5,#0x00,00175$
      00231F 0E               [12]  999 	inc	r6
      002320 80 E4            [24] 1000 	sjmp	00175$
      002322                       1001 00107$:
                                   1002 ;	life.c:209: c = getchar();
      002322 12 20 CA         [24] 1003 	lcall	_getchar
      002325 AE 82            [24] 1004 	mov	r6,dpl
      002327 AF 83            [24] 1005 	mov	r7,dph
      002329 78 39            [12] 1006 	mov	r0,#_c
      00232B A6 06            [24] 1007 	mov	@r0,ar6
      00232D 08               [12] 1008 	inc	r0
      00232E A6 07            [24] 1009 	mov	@r0,ar7
                                   1010 ;	life.c:210: if (i0 || (c == (int)'T')) goto terminate;
      002330 78 31            [12] 1011 	mov	r0,#_i0
      002332 E6               [12] 1012 	mov	a,@r0
      002333 60 03            [24] 1013 	jz	00421$
      002335 02 2A 75         [24] 1014 	ljmp	00130$
      002338                       1015 00421$:
      002338 BE 54 06         [24] 1016 	cjne	r6,#0x54,00422$
      00233B BF 00 03         [24] 1017 	cjne	r7,#0x00,00422$
      00233E 02 2A 75         [24] 1018 	ljmp	00130$
      002341                       1019 00422$:
                                   1020 ;	life.c:211: if (c == (int)'L') break;
      002341 BE 4C DE         [24] 1021 	cjne	r6,#0x4c,00107$
      002344 BF 00 DB         [24] 1022 	cjne	r7,#0x00,00107$
                                   1023 ;	life.c:214: reload:
      002347                       1024 00109$:
                                   1025 ;	life.c:117: memset(u, 0, sizeof (u));
      002347 E4               [12] 1026 	clr	a
      002348 C0 E0            [24] 1027 	push	acc
      00234A 74 08            [12] 1028 	mov	a,#0x08
      00234C C0 E0            [24] 1029 	push	acc
      00234E E4               [12] 1030 	clr	a
      00234F C0 E0            [24] 1031 	push	acc
      002351 90 88 00         [24] 1032 	mov	dptr,#_u
      002354 75 F0 00         [24] 1033 	mov	b,#0x00
      002357 12 2B 38         [24] 1034 	lcall	_memset
      00235A 15 81            [12] 1035 	dec	sp
      00235C 15 81            [12] 1036 	dec	sp
      00235E 15 81            [12] 1037 	dec	sp
                                   1038 ;	life.c:118: memset(pu, 0, sizeof (pu));
      002360 E4               [12] 1039 	clr	a
      002361 C0 E0            [24] 1040 	push	acc
      002363 74 08            [12] 1041 	mov	a,#0x08
      002365 C0 E0            [24] 1042 	push	acc
      002367 E4               [12] 1043 	clr	a
      002368 C0 E0            [24] 1044 	push	acc
      00236A 90 80 00         [24] 1045 	mov	dptr,#_pu
      00236D 75 F0 00         [24] 1046 	mov	b,#0x00
      002370 12 2B 38         [24] 1047 	lcall	_memset
      002373 15 81            [12] 1048 	dec	sp
      002375 15 81            [12] 1049 	dec	sp
      002377 15 81            [12] 1050 	dec	sp
                                   1051 ;	life.c:124: j = 0;
      002379 78 37            [12] 1052 	mov	r0,#_j
      00237B E4               [12] 1053 	clr	a
      00237C F6               [12] 1054 	mov	@r0,a
      00237D 08               [12] 1055 	inc	r0
      00237E F6               [12] 1056 	mov	@r0,a
                                   1057 ;	life.c:126: printstr("LOAD <");
      00237F 7D D5            [12] 1058 	mov	r5,#___str_2
      002381 7E 2C            [12] 1059 	mov	r6,#(___str_2 >> 8)
      002383 7F 80            [12] 1060 	mov	r7,#0x80
                                   1061 ;	life.c:48: return;
      002385                       1062 00178$:
                                   1063 ;	life.c:46: for (; *s; s++) putchar(*s);
      002385 8D 82            [24] 1064 	mov	dpl,r5
      002387 8E 83            [24] 1065 	mov	dph,r6
      002389 8F F0            [24] 1066 	mov	b,r7
      00238B 12 2B A2         [24] 1067 	lcall	__gptrget
      00238E FC               [12] 1068 	mov	r4,a
      00238F 60 10            [24] 1069 	jz	00135$
      002391 7B 00            [12] 1070 	mov	r3,#0x00
      002393 8C 82            [24] 1071 	mov	dpl,r4
      002395 8B 83            [24] 1072 	mov	dph,r3
      002397 12 20 C5         [24] 1073 	lcall	_putchar
      00239A 0D               [12] 1074 	inc	r5
                                   1075 ;	life.c:126: printstr("LOAD <");
      00239B BD 00 E7         [24] 1076 	cjne	r5,#0x00,00178$
      00239E 0E               [12] 1077 	inc	r6
      00239F 80 E4            [24] 1078 	sjmp	00178$
      0023A1                       1079 00135$:
                                   1080 ;	life.c:128: for (y = 0; y < H; y++)
      0023A1 78 35            [12] 1081 	mov	r0,#_y
      0023A3 E4               [12] 1082 	clr	a
      0023A4 F6               [12] 1083 	mov	@r0,a
      0023A5 08               [12] 1084 	inc	r0
      0023A6 F6               [12] 1085 	mov	@r0,a
      0023A7                       1086 00182$:
                                   1087 ;	life.c:129: for (x = 0; x < W; x++) {
      0023A7 78 33            [12] 1088 	mov	r0,#_x
      0023A9 E4               [12] 1089 	clr	a
      0023AA F6               [12] 1090 	mov	@r0,a
      0023AB 08               [12] 1091 	inc	r0
      0023AC F6               [12] 1092 	mov	@r0,a
      0023AD                       1093 00180$:
                                   1094 ;	life.c:130: c = getchar();
      0023AD 12 20 CA         [24] 1095 	lcall	_getchar
      0023B0 AE 82            [24] 1096 	mov	r6,dpl
      0023B2 AF 83            [24] 1097 	mov	r7,dph
      0023B4 78 39            [12] 1098 	mov	r0,#_c
      0023B6 A6 06            [24] 1099 	mov	@r0,ar6
      0023B8 08               [12] 1100 	inc	r0
      0023B9 A6 07            [24] 1101 	mov	@r0,ar7
                                   1102 ;	life.c:131: if (c == (int)'0') {
      0023BB BE 30 37         [24] 1103 	cjne	r6,#0x30,00142$
      0023BE BF 00 34         [24] 1104 	cjne	r7,#0x00,00142$
                                   1105 ;	life.c:132: u[A2D(W, y, x)] = 0;
      0023C1 78 35            [12] 1106 	mov	r0,#_y
      0023C3 86 04            [24] 1107 	mov	ar4,@r0
      0023C5 08               [12] 1108 	inc	r0
      0023C6 E6               [12] 1109 	mov	a,@r0
      0023C7 C4               [12] 1110 	swap	a
      0023C8 23               [12] 1111 	rl	a
      0023C9 54 E0            [12] 1112 	anl	a,#0xe0
      0023CB CC               [12] 1113 	xch	a,r4
      0023CC C4               [12] 1114 	swap	a
      0023CD 23               [12] 1115 	rl	a
      0023CE CC               [12] 1116 	xch	a,r4
      0023CF 6C               [12] 1117 	xrl	a,r4
      0023D0 CC               [12] 1118 	xch	a,r4
      0023D1 54 E0            [12] 1119 	anl	a,#0xe0
      0023D3 CC               [12] 1120 	xch	a,r4
      0023D4 6C               [12] 1121 	xrl	a,r4
      0023D5 FD               [12] 1122 	mov	r5,a
      0023D6 78 33            [12] 1123 	mov	r0,#_x
      0023D8 E6               [12] 1124 	mov	a,@r0
      0023D9 2C               [12] 1125 	add	a,r4
      0023DA FC               [12] 1126 	mov	r4,a
      0023DB 08               [12] 1127 	inc	r0
      0023DC E6               [12] 1128 	mov	a,@r0
      0023DD 3D               [12] 1129 	addc	a,r5
      0023DE FD               [12] 1130 	mov	r5,a
      0023DF EC               [12] 1131 	mov	a,r4
      0023E0 24 00            [12] 1132 	add	a,#_u
      0023E2 F5 82            [12] 1133 	mov	dpl,a
      0023E4 ED               [12] 1134 	mov	a,r5
      0023E5 34 88            [12] 1135 	addc	a,#(_u >> 8)
      0023E7 F5 83            [12] 1136 	mov	dph,a
      0023E9 E4               [12] 1137 	clr	a
      0023EA F0               [24] 1138 	movx	@dptr,a
                                   1139 ;	life.c:133: j++;
      0023EB 78 37            [12] 1140 	mov	r0,#_j
      0023ED 06               [12] 1141 	inc	@r0
      0023EE B6 00 02         [24] 1142 	cjne	@r0,#0x00,00429$
      0023F1 08               [12] 1143 	inc	r0
      0023F2 06               [12] 1144 	inc	@r0
      0023F3                       1145 00429$:
      0023F3 80 43            [24] 1146 	sjmp	00181$
      0023F5                       1147 00142$:
                                   1148 ;	life.c:134: } else if (c == (int)'1') {
      0023F5 BE 31 38         [24] 1149 	cjne	r6,#0x31,00140$
      0023F8 BF 00 35         [24] 1150 	cjne	r7,#0x00,00140$
                                   1151 ;	life.c:135: u[A2D(W, y, x)] = 1;
      0023FB 78 35            [12] 1152 	mov	r0,#_y
      0023FD 86 04            [24] 1153 	mov	ar4,@r0
      0023FF 08               [12] 1154 	inc	r0
      002400 E6               [12] 1155 	mov	a,@r0
      002401 C4               [12] 1156 	swap	a
      002402 23               [12] 1157 	rl	a
      002403 54 E0            [12] 1158 	anl	a,#0xe0
      002405 CC               [12] 1159 	xch	a,r4
      002406 C4               [12] 1160 	swap	a
      002407 23               [12] 1161 	rl	a
      002408 CC               [12] 1162 	xch	a,r4
      002409 6C               [12] 1163 	xrl	a,r4
      00240A CC               [12] 1164 	xch	a,r4
      00240B 54 E0            [12] 1165 	anl	a,#0xe0
      00240D CC               [12] 1166 	xch	a,r4
      00240E 6C               [12] 1167 	xrl	a,r4
      00240F FD               [12] 1168 	mov	r5,a
      002410 78 33            [12] 1169 	mov	r0,#_x
      002412 E6               [12] 1170 	mov	a,@r0
      002413 2C               [12] 1171 	add	a,r4
      002414 FC               [12] 1172 	mov	r4,a
      002415 08               [12] 1173 	inc	r0
      002416 E6               [12] 1174 	mov	a,@r0
      002417 3D               [12] 1175 	addc	a,r5
      002418 FD               [12] 1176 	mov	r5,a
      002419 EC               [12] 1177 	mov	a,r4
      00241A 24 00            [12] 1178 	add	a,#_u
      00241C F5 82            [12] 1179 	mov	dpl,a
      00241E ED               [12] 1180 	mov	a,r5
      00241F 34 88            [12] 1181 	addc	a,#(_u >> 8)
      002421 F5 83            [12] 1182 	mov	dph,a
      002423 74 01            [12] 1183 	mov	a,#0x01
      002425 F0               [24] 1184 	movx	@dptr,a
                                   1185 ;	life.c:136: j++;
      002426 78 37            [12] 1186 	mov	r0,#_j
      002428 06               [12] 1187 	inc	@r0
      002429 B6 00 02         [24] 1188 	cjne	@r0,#0x00,00432$
      00242C 08               [12] 1189 	inc	r0
      00242D 06               [12] 1190 	inc	@r0
      00242E                       1191 00432$:
      00242E 80 08            [24] 1192 	sjmp	00181$
      002430                       1193 00140$:
                                   1194 ;	life.c:137: } else if (c == (int)'#') goto out;
      002430 BE 23 05         [24] 1195 	cjne	r6,#0x23,00433$
      002433 BF 00 02         [24] 1196 	cjne	r7,#0x00,00433$
      002436 80 32            [24] 1197 	sjmp	00153$
      002438                       1198 00433$:
      002438                       1199 00181$:
                                   1200 ;	life.c:129: for (x = 0; x < W; x++) {
      002438 78 33            [12] 1201 	mov	r0,#_x
      00243A 06               [12] 1202 	inc	@r0
      00243B B6 00 02         [24] 1203 	cjne	@r0,#0x00,00434$
      00243E 08               [12] 1204 	inc	r0
      00243F 06               [12] 1205 	inc	@r0
      002440                       1206 00434$:
      002440 78 33            [12] 1207 	mov	r0,#_x
      002442 C3               [12] 1208 	clr	c
      002443 E6               [12] 1209 	mov	a,@r0
      002444 94 20            [12] 1210 	subb	a,#0x20
      002446 08               [12] 1211 	inc	r0
      002447 E6               [12] 1212 	mov	a,@r0
      002448 64 80            [12] 1213 	xrl	a,#0x80
      00244A 94 80            [12] 1214 	subb	a,#0x80
      00244C 50 03            [24] 1215 	jnc	00435$
      00244E 02 23 AD         [24] 1216 	ljmp	00180$
      002451                       1217 00435$:
                                   1218 ;	life.c:128: for (y = 0; y < H; y++)
      002451 78 35            [12] 1219 	mov	r0,#_y
      002453 06               [12] 1220 	inc	@r0
      002454 B6 00 02         [24] 1221 	cjne	@r0,#0x00,00436$
      002457 08               [12] 1222 	inc	r0
      002458 06               [12] 1223 	inc	@r0
      002459                       1224 00436$:
      002459 78 35            [12] 1225 	mov	r0,#_y
      00245B C3               [12] 1226 	clr	c
      00245C E6               [12] 1227 	mov	a,@r0
      00245D 94 40            [12] 1228 	subb	a,#0x40
      00245F 08               [12] 1229 	inc	r0
      002460 E6               [12] 1230 	mov	a,@r0
      002461 64 80            [12] 1231 	xrl	a,#0x80
      002463 94 80            [12] 1232 	subb	a,#0x80
      002465 50 03            [24] 1233 	jnc	00437$
      002467 02 23 A7         [24] 1234 	ljmp	00182$
      00246A                       1235 00437$:
                                   1236 ;	life.c:140: out:
      00246A                       1237 00153$:
                                   1238 ;	life.c:141: if (c != (int)'#')
      00246A BE 23 05         [24] 1239 	cjne	r6,#0x23,00438$
      00246D BF 00 02         [24] 1240 	cjne	r7,#0x00,00438$
      002470 80 14            [24] 1241 	sjmp	00152$
      002472                       1242 00438$:
                                   1243 ;	life.c:142: while (1) {
      002472                       1244 00149$:
                                   1245 ;	life.c:143: c = getchar();
      002472 12 20 CA         [24] 1246 	lcall	_getchar
      002475 AE 82            [24] 1247 	mov	r6,dpl
      002477 AF 83            [24] 1248 	mov	r7,dph
      002479 78 39            [12] 1249 	mov	r0,#_c
      00247B A6 06            [24] 1250 	mov	@r0,ar6
      00247D 08               [12] 1251 	inc	r0
      00247E A6 07            [24] 1252 	mov	@r0,ar7
                                   1253 ;	life.c:144: if (c == (int)'#') break;
      002480 BE 23 EF         [24] 1254 	cjne	r6,#0x23,00149$
      002483 BF 00 EC         [24] 1255 	cjne	r7,#0x00,00149$
      002486                       1256 00152$:
                                   1257 ;	life.c:146: print16x(j);
      002486 78 37            [12] 1258 	mov	r0,#_j
      002488 86 06            [24] 1259 	mov	ar6,@r0
      00248A 08               [12] 1260 	inc	r0
      00248B 86 07            [24] 1261 	mov	ar7,@r0
      00248D 8E 04            [24] 1262 	mov	ar4,r6
                                   1263 ;	life.c:37: putchar(digits[(a >> 12) & 0xf]);
      00248F EF               [12] 1264 	mov	a,r7
      002490 FD               [12] 1265 	mov	r5,a
      002491 C4               [12] 1266 	swap	a
      002492 54 0F            [12] 1267 	anl	a,#0x0f
      002494 30 E3 02         [24] 1268 	jnb	acc.3,00441$
      002497 44 F0            [12] 1269 	orl	a,#0xf0
      002499                       1270 00441$:
      002499 FE               [12] 1271 	mov	r6,a
      00249A 33               [12] 1272 	rlc	a
      00249B 95 E0            [12] 1273 	subb	a,acc
      00249D 53 06 0F         [24] 1274 	anl	ar6,#0x0f
      0024A0 EE               [12] 1275 	mov	a,r6
      0024A1 24 21            [12] 1276 	add	a,#_digits
      0024A3 F9               [12] 1277 	mov	r1,a
      0024A4 87 07            [24] 1278 	mov	ar7,@r1
      0024A6 7E 00            [12] 1279 	mov	r6,#0x00
      0024A8 8F 82            [24] 1280 	mov	dpl,r7
      0024AA 8E 83            [24] 1281 	mov	dph,r6
      0024AC 12 20 C5         [24] 1282 	lcall	_putchar
                                   1283 ;	life.c:38: putchar(digits[(a >> 8) & 0xf]);
      0024AF 8D 07            [24] 1284 	mov	ar7,r5
      0024B1 53 07 0F         [24] 1285 	anl	ar7,#0x0f
      0024B4 EF               [12] 1286 	mov	a,r7
      0024B5 24 21            [12] 1287 	add	a,#_digits
      0024B7 F9               [12] 1288 	mov	r1,a
      0024B8 87 07            [24] 1289 	mov	ar7,@r1
      0024BA 7E 00            [12] 1290 	mov	r6,#0x00
      0024BC 8F 82            [24] 1291 	mov	dpl,r7
      0024BE 8E 83            [24] 1292 	mov	dph,r6
      0024C0 12 20 C5         [24] 1293 	lcall	_putchar
                                   1294 ;	life.c:39: putchar(digits[(a >> 4) & 0xf]);
      0024C3 8C 06            [24] 1295 	mov	ar6,r4
      0024C5 ED               [12] 1296 	mov	a,r5
      0024C6 C4               [12] 1297 	swap	a
      0024C7 CE               [12] 1298 	xch	a,r6
      0024C8 C4               [12] 1299 	swap	a
      0024C9 54 0F            [12] 1300 	anl	a,#0x0f
      0024CB 6E               [12] 1301 	xrl	a,r6
      0024CC CE               [12] 1302 	xch	a,r6
      0024CD 54 0F            [12] 1303 	anl	a,#0x0f
      0024CF CE               [12] 1304 	xch	a,r6
      0024D0 6E               [12] 1305 	xrl	a,r6
      0024D1 CE               [12] 1306 	xch	a,r6
      0024D2 30 E3 02         [24] 1307 	jnb	acc.3,00442$
      0024D5 44 F0            [12] 1308 	orl	a,#0xf0
      0024D7                       1309 00442$:
      0024D7 53 06 0F         [24] 1310 	anl	ar6,#0x0f
      0024DA EE               [12] 1311 	mov	a,r6
      0024DB 24 21            [12] 1312 	add	a,#_digits
      0024DD F9               [12] 1313 	mov	r1,a
      0024DE 87 07            [24] 1314 	mov	ar7,@r1
      0024E0 7E 00            [12] 1315 	mov	r6,#0x00
      0024E2 8F 82            [24] 1316 	mov	dpl,r7
      0024E4 8E 83            [24] 1317 	mov	dph,r6
      0024E6 12 20 C5         [24] 1318 	lcall	_putchar
                                   1319 ;	life.c:40: putchar(digits[a & 0xf]);
      0024E9 53 04 0F         [24] 1320 	anl	ar4,#0x0f
      0024EC EC               [12] 1321 	mov	a,r4
      0024ED 24 21            [12] 1322 	add	a,#_digits
      0024EF F9               [12] 1323 	mov	r1,a
      0024F0 87 07            [24] 1324 	mov	ar7,@r1
      0024F2 7E 00            [12] 1325 	mov	r6,#0x00
      0024F4 8F 82            [24] 1326 	mov	dpl,r7
      0024F6 8E 83            [24] 1327 	mov	dph,r6
      0024F8 12 20 C5         [24] 1328 	lcall	_putchar
                                   1329 ;	life.c:147: printstr(">\r\n");
      0024FB 7D DC            [12] 1330 	mov	r5,#___str_3
      0024FD 7E 2C            [12] 1331 	mov	r6,#(___str_3 >> 8)
      0024FF 7F 80            [12] 1332 	mov	r7,#0x80
                                   1333 ;	life.c:48: return;
      002501                       1334 00185$:
                                   1335 ;	life.c:46: for (; *s; s++) putchar(*s);
      002501 8D 82            [24] 1336 	mov	dpl,r5
      002503 8E 83            [24] 1337 	mov	dph,r6
      002505 8F F0            [24] 1338 	mov	b,r7
      002507 12 2B A2         [24] 1339 	lcall	__gptrget
      00250A FC               [12] 1340 	mov	r4,a
      00250B 60 10            [24] 1341 	jz	00156$
      00250D 7B 00            [12] 1342 	mov	r3,#0x00
      00250F 8C 82            [24] 1343 	mov	dpl,r4
      002511 8B 83            [24] 1344 	mov	dph,r3
      002513 12 20 C5         [24] 1345 	lcall	_putchar
      002516 0D               [12] 1346 	inc	r5
                                   1347 ;	life.c:147: printstr(">\r\n");
      002517 BD 00 E7         [24] 1348 	cjne	r5,#0x00,00185$
      00251A 0E               [12] 1349 	inc	r6
      00251B 80 E4            [24] 1350 	sjmp	00185$
      00251D                       1351 00156$:
                                   1352 ;	life.c:217: show(0);
      00251D 75 82 00         [24] 1353 	mov	dpl,#0x00
      002520 12 20 EB         [24] 1354 	lcall	_show
                                   1355 ;	life.c:219: printstr("READY\r\n");
      002523 7D EE            [12] 1356 	mov	r5,#___str_5
      002525 7E 2C            [12] 1357 	mov	r6,#(___str_5 >> 8)
      002527 7F 80            [12] 1358 	mov	r7,#0x80
                                   1359 ;	life.c:48: return;
      002529                       1360 00188$:
                                   1361 ;	life.c:46: for (; *s; s++) putchar(*s);
      002529 8D 82            [24] 1362 	mov	dpl,r5
      00252B 8E 83            [24] 1363 	mov	dph,r6
      00252D 8F F0            [24] 1364 	mov	b,r7
      00252F 12 2B A2         [24] 1365 	lcall	__gptrget
      002532 FC               [12] 1366 	mov	r4,a
      002533 60 10            [24] 1367 	jz	00118$
      002535 7B 00            [12] 1368 	mov	r3,#0x00
      002537 8C 82            [24] 1369 	mov	dpl,r4
      002539 8B 83            [24] 1370 	mov	dph,r3
      00253B 12 20 C5         [24] 1371 	lcall	_putchar
      00253E 0D               [12] 1372 	inc	r5
                                   1373 ;	life.c:220: while (1) {
      00253F BD 00 E7         [24] 1374 	cjne	r5,#0x00,00188$
      002542 0E               [12] 1375 	inc	r6
      002543 80 E4            [24] 1376 	sjmp	00188$
      002545                       1377 00118$:
                                   1378 ;	life.c:221: c = getchar();
      002545 12 20 CA         [24] 1379 	lcall	_getchar
      002548 AE 82            [24] 1380 	mov	r6,dpl
      00254A AF 83            [24] 1381 	mov	r7,dph
      00254C 78 39            [12] 1382 	mov	r0,#_c
      00254E A6 06            [24] 1383 	mov	@r0,ar6
      002550 08               [12] 1384 	inc	r0
      002551 A6 07            [24] 1385 	mov	@r0,ar7
                                   1386 ;	life.c:222: if (i0 || (c == (int)'T')) goto terminate;
      002553 78 31            [12] 1387 	mov	r0,#_i0
      002555 E6               [12] 1388 	mov	a,@r0
      002556 60 03            [24] 1389 	jz	00447$
      002558 02 2A 75         [24] 1390 	ljmp	00130$
      00255B                       1391 00447$:
      00255B BE 54 06         [24] 1392 	cjne	r6,#0x54,00448$
      00255E BF 00 03         [24] 1393 	cjne	r7,#0x00,00448$
      002561 02 2A 75         [24] 1394 	ljmp	00130$
      002564                       1395 00448$:
                                   1396 ;	life.c:223: if (c == (int)'L') goto reload;
      002564 BE 4C 06         [24] 1397 	cjne	r6,#0x4c,00449$
      002567 BF 00 03         [24] 1398 	cjne	r7,#0x00,00449$
      00256A 02 23 47         [24] 1399 	ljmp	00109$
      00256D                       1400 00449$:
                                   1401 ;	life.c:224: if (c == (int)'S') break;
      00256D BE 53 D5         [24] 1402 	cjne	r6,#0x53,00118$
      002570 BF 00 D2         [24] 1403 	cjne	r7,#0x00,00118$
                                   1404 ;	life.c:75: generation[0] = 0;
      002573 78 43            [12] 1405 	mov	r0,#_generation
      002575 76 00            [12] 1406 	mov	@r0,#0x00
      002577 08               [12] 1407 	inc	r0
      002578 76 00            [12] 1408 	mov	@r0,#0x00
                                   1409 ;	life.c:76: generation[1] = 0;
      00257A 78 45            [12] 1410 	mov	r0,#(_generation + 0x0002)
      00257C 76 00            [12] 1411 	mov	@r0,#0x00
      00257E 08               [12] 1412 	inc	r0
      00257F 76 00            [12] 1413 	mov	@r0,#0x00
                                   1414 ;	life.c:229: for (i1 = 0; !i0 && !i1; ) {
      002581 78 32            [12] 1415 	mov	r0,#_i1
      002583 76 00            [12] 1416 	mov	@r0,#0x00
      002585                       1417 00205$:
      002585 78 31            [12] 1418 	mov	r0,#_i0
      002587 E6               [12] 1419 	mov	a,@r0
      002588 60 03            [24] 1420 	jz	00452$
      00258A 02 2A 43         [24] 1421 	ljmp	00126$
      00258D                       1422 00452$:
      00258D 78 32            [12] 1423 	mov	r0,#_i1
      00258F E6               [12] 1424 	mov	a,@r0
      002590 60 03            [24] 1425 	jz	00453$
      002592 02 2A 43         [24] 1426 	ljmp	00126$
      002595                       1427 00453$:
                                   1428 ;	life.c:230: show(1);
      002595 75 82 01         [24] 1429 	mov	dpl,#0x01
      002598 12 20 EB         [24] 1430 	lcall	_show
                                   1431 ;	life.c:155: fixed = 0;
      00259B 78 3D            [12] 1432 	mov	r0,#_fixed
      00259D 76 00            [12] 1433 	mov	@r0,#0x00
                                   1434 ;	life.c:156: cycle2 = 0;
      00259F 78 3E            [12] 1435 	mov	r0,#_cycle2
      0025A1 76 00            [12] 1436 	mov	@r0,#0x00
                                   1437 ;	life.c:157: bstep = 0;
      0025A3 78 3B            [12] 1438 	mov	r0,#_bstep
      0025A5 76 00            [12] 1439 	mov	@r0,#0x00
                                   1440 ;	life.c:159: for (y = 0; y < H; y++) {
      0025A7 78 35            [12] 1441 	mov	r0,#_y
      0025A9 E4               [12] 1442 	clr	a
      0025AA F6               [12] 1443 	mov	@r0,a
      0025AB 08               [12] 1444 	inc	r0
      0025AC F6               [12] 1445 	mov	@r0,a
      0025AD                       1446 00192$:
                                   1447 ;	life.c:160: putchar(busy[bstep]); putchar('\r');
      0025AD 78 3B            [12] 1448 	mov	r0,#_bstep
      0025AF E6               [12] 1449 	mov	a,@r0
      0025B0 24 47            [12] 1450 	add	a,#_busy
      0025B2 F9               [12] 1451 	mov	r1,a
      0025B3 87 07            [24] 1452 	mov	ar7,@r1
      0025B5 7E 00            [12] 1453 	mov	r6,#0x00
      0025B7 8F 82            [24] 1454 	mov	dpl,r7
      0025B9 8E 83            [24] 1455 	mov	dph,r6
      0025BB 12 20 C5         [24] 1456 	lcall	_putchar
      0025BE 90 00 0D         [24] 1457 	mov	dptr,#0x000d
      0025C1 12 20 C5         [24] 1458 	lcall	_putchar
                                   1459 ;	life.c:161: bstep = (bstep + 1) & 3;
      0025C4 78 3B            [12] 1460 	mov	r0,#_bstep
      0025C6 86 07            [24] 1461 	mov	ar7,@r0
      0025C8 0F               [12] 1462 	inc	r7
      0025C9 78 3B            [12] 1463 	mov	r0,#_bstep
      0025CB 74 03            [12] 1464 	mov	a,#0x03
      0025CD 5F               [12] 1465 	anl	a,r7
      0025CE F6               [12] 1466 	mov	@r0,a
                                   1467 ;	life.c:162: for (x = 0; x < W; x++) {
      0025CF 78 33            [12] 1468 	mov	r0,#_x
      0025D1 E4               [12] 1469 	clr	a
      0025D2 F6               [12] 1470 	mov	@r0,a
      0025D3 08               [12] 1471 	inc	r0
      0025D4 F6               [12] 1472 	mov	@r0,a
      0025D5                       1473 00190$:
                                   1474 ;	life.c:163: n = -u[A2D(W, y, x)];
      0025D5 78 35            [12] 1475 	mov	r0,#_y
      0025D7 E5 10            [12] 1476 	mov	a,_bp
      0025D9 24 03            [12] 1477 	add	a,#0x03
      0025DB F9               [12] 1478 	mov	r1,a
      0025DC E6               [12] 1479 	mov	a,@r0
      0025DD F7               [12] 1480 	mov	@r1,a
      0025DE 08               [12] 1481 	inc	r0
      0025DF E6               [12] 1482 	mov	a,@r0
      0025E0 C4               [12] 1483 	swap	a
      0025E1 23               [12] 1484 	rl	a
      0025E2 54 E0            [12] 1485 	anl	a,#0xe0
      0025E4 C7               [12] 1486 	xch	a,@r1
      0025E5 C4               [12] 1487 	swap	a
      0025E6 23               [12] 1488 	rl	a
      0025E7 C7               [12] 1489 	xch	a,@r1
      0025E8 67               [12] 1490 	xrl	a,@r1
      0025E9 C7               [12] 1491 	xch	a,@r1
      0025EA 54 E0            [12] 1492 	anl	a,#0xe0
      0025EC C7               [12] 1493 	xch	a,@r1
      0025ED 67               [12] 1494 	xrl	a,@r1
      0025EE 09               [12] 1495 	inc	r1
      0025EF F7               [12] 1496 	mov	@r1,a
      0025F0 E5 10            [12] 1497 	mov	a,_bp
      0025F2 24 03            [12] 1498 	add	a,#0x03
      0025F4 F8               [12] 1499 	mov	r0,a
      0025F5 79 33            [12] 1500 	mov	r1,#_x
      0025F7 E7               [12] 1501 	mov	a,@r1
      0025F8 26               [12] 1502 	add	a,@r0
      0025F9 C0 E0            [24] 1503 	push	acc
      0025FB 09               [12] 1504 	inc	r1
      0025FC E7               [12] 1505 	mov	a,@r1
      0025FD 08               [12] 1506 	inc	r0
      0025FE 36               [12] 1507 	addc	a,@r0
      0025FF C0 E0            [24] 1508 	push	acc
      002601 A8 10            [24] 1509 	mov	r0,_bp
      002603 08               [12] 1510 	inc	r0
      002604 08               [12] 1511 	inc	r0
      002605 D0 E0            [24] 1512 	pop	acc
      002607 F6               [12] 1513 	mov	@r0,a
      002608 18               [12] 1514 	dec	r0
      002609 D0 E0            [24] 1515 	pop	acc
      00260B F6               [12] 1516 	mov	@r0,a
      00260C A8 10            [24] 1517 	mov	r0,_bp
      00260E 08               [12] 1518 	inc	r0
      00260F E6               [12] 1519 	mov	a,@r0
      002610 24 00            [12] 1520 	add	a,#_u
      002612 F5 82            [12] 1521 	mov	dpl,a
      002614 08               [12] 1522 	inc	r0
      002615 E6               [12] 1523 	mov	a,@r0
      002616 34 88            [12] 1524 	addc	a,#(_u >> 8)
      002618 F5 83            [12] 1525 	mov	dph,a
      00261A E0               [24] 1526 	movx	a,@dptr
      00261B FB               [12] 1527 	mov	r3,a
      00261C C3               [12] 1528 	clr	c
      00261D E4               [12] 1529 	clr	a
      00261E 9B               [12] 1530 	subb	a,r3
      00261F FB               [12] 1531 	mov	r3,a
                                   1532 ;	life.c:166: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      002620 78 35            [12] 1533 	mov	r0,#_y
      002622 74 FF            [12] 1534 	mov	a,#0xff
      002624 26               [12] 1535 	add	a,@r0
      002625 FA               [12] 1536 	mov	r2,a
      002626 74 FF            [12] 1537 	mov	a,#0xff
      002628 08               [12] 1538 	inc	r0
      002629 36               [12] 1539 	addc	a,@r0
      00262A FD               [12] 1540 	mov	r5,a
      00262B 74 40            [12] 1541 	mov	a,#0x40
      00262D 2A               [12] 1542 	add	a,r2
      00262E FA               [12] 1543 	mov	r2,a
      00262F E4               [12] 1544 	clr	a
      002630 3D               [12] 1545 	addc	a,r5
      002631 FD               [12] 1546 	mov	r5,a
      002632 C0 03            [24] 1547 	push	ar3
      002634 74 40            [12] 1548 	mov	a,#0x40
      002636 C0 E0            [24] 1549 	push	acc
      002638 E4               [12] 1550 	clr	a
      002639 C0 E0            [24] 1551 	push	acc
      00263B 8A 82            [24] 1552 	mov	dpl,r2
      00263D 8D 83            [24] 1553 	mov	dph,r5
      00263F 12 2B BE         [24] 1554 	lcall	__modsint
      002642 AC 82            [24] 1555 	mov	r4,dpl
      002644 AD 83            [24] 1556 	mov	r5,dph
      002646 15 81            [12] 1557 	dec	sp
      002648 15 81            [12] 1558 	dec	sp
      00264A D0 03            [24] 1559 	pop	ar3
      00264C ED               [12] 1560 	mov	a,r5
      00264D C4               [12] 1561 	swap	a
      00264E 23               [12] 1562 	rl	a
      00264F 54 E0            [12] 1563 	anl	a,#0xe0
      002651 CC               [12] 1564 	xch	a,r4
      002652 C4               [12] 1565 	swap	a
      002653 23               [12] 1566 	rl	a
      002654 CC               [12] 1567 	xch	a,r4
      002655 6C               [12] 1568 	xrl	a,r4
      002656 CC               [12] 1569 	xch	a,r4
      002657 54 E0            [12] 1570 	anl	a,#0xe0
      002659 CC               [12] 1571 	xch	a,r4
      00265A 6C               [12] 1572 	xrl	a,r4
      00265B FD               [12] 1573 	mov	r5,a
      00265C 78 33            [12] 1574 	mov	r0,#_x
      00265E 74 FF            [12] 1575 	mov	a,#0xff
      002660 26               [12] 1576 	add	a,@r0
      002661 FA               [12] 1577 	mov	r2,a
      002662 74 FF            [12] 1578 	mov	a,#0xff
      002664 08               [12] 1579 	inc	r0
      002665 36               [12] 1580 	addc	a,@r0
      002666 FF               [12] 1581 	mov	r7,a
      002667 74 20            [12] 1582 	mov	a,#0x20
      002669 2A               [12] 1583 	add	a,r2
      00266A FA               [12] 1584 	mov	r2,a
      00266B E4               [12] 1585 	clr	a
      00266C 3F               [12] 1586 	addc	a,r7
      00266D FF               [12] 1587 	mov	r7,a
      00266E C0 05            [24] 1588 	push	ar5
      002670 C0 04            [24] 1589 	push	ar4
      002672 C0 03            [24] 1590 	push	ar3
      002674 74 20            [12] 1591 	mov	a,#0x20
      002676 C0 E0            [24] 1592 	push	acc
      002678 E4               [12] 1593 	clr	a
      002679 C0 E0            [24] 1594 	push	acc
      00267B 8A 82            [24] 1595 	mov	dpl,r2
      00267D 8F 83            [24] 1596 	mov	dph,r7
      00267F 12 2B BE         [24] 1597 	lcall	__modsint
      002682 C8               [12] 1598 	xch	a,r0
      002683 E5 10            [12] 1599 	mov	a,_bp
      002685 24 05            [12] 1600 	add	a,#0x05
      002687 C8               [12] 1601 	xch	a,r0
      002688 A6 82            [24] 1602 	mov	@r0,dpl
      00268A 08               [12] 1603 	inc	r0
      00268B A6 83            [24] 1604 	mov	@r0,dph
      00268D 15 81            [12] 1605 	dec	sp
      00268F 15 81            [12] 1606 	dec	sp
      002691 D0 03            [24] 1607 	pop	ar3
      002693 D0 04            [24] 1608 	pop	ar4
      002695 D0 05            [24] 1609 	pop	ar5
      002697 E5 10            [12] 1610 	mov	a,_bp
      002699 24 05            [12] 1611 	add	a,#0x05
      00269B F8               [12] 1612 	mov	r0,a
      00269C E6               [12] 1613 	mov	a,@r0
      00269D 2C               [12] 1614 	add	a,r4
      00269E FA               [12] 1615 	mov	r2,a
      00269F 08               [12] 1616 	inc	r0
      0026A0 E6               [12] 1617 	mov	a,@r0
      0026A1 3D               [12] 1618 	addc	a,r5
      0026A2 FF               [12] 1619 	mov	r7,a
      0026A3 EA               [12] 1620 	mov	a,r2
      0026A4 24 00            [12] 1621 	add	a,#_u
      0026A6 F5 82            [12] 1622 	mov	dpl,a
      0026A8 EF               [12] 1623 	mov	a,r7
      0026A9 34 88            [12] 1624 	addc	a,#(_u >> 8)
      0026AB F5 83            [12] 1625 	mov	dph,a
      0026AD E0               [24] 1626 	movx	a,@dptr
      0026AE 2B               [12] 1627 	add	a,r3
      0026AF FB               [12] 1628 	mov	r3,a
                                   1629 ;	life.c:168: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      0026B0 78 33            [12] 1630 	mov	r0,#_x
      0026B2 E5 10            [12] 1631 	mov	a,_bp
      0026B4 24 07            [12] 1632 	add	a,#0x07
      0026B6 F9               [12] 1633 	mov	r1,a
      0026B7 E6               [12] 1634 	mov	a,@r0
      0026B8 F7               [12] 1635 	mov	@r1,a
      0026B9 08               [12] 1636 	inc	r0
      0026BA 09               [12] 1637 	inc	r1
      0026BB E6               [12] 1638 	mov	a,@r0
      0026BC F7               [12] 1639 	mov	@r1,a
      0026BD E5 10            [12] 1640 	mov	a,_bp
      0026BF 24 07            [12] 1641 	add	a,#0x07
      0026C1 F8               [12] 1642 	mov	r0,a
      0026C2 74 20            [12] 1643 	mov	a,#0x20
      0026C4 26               [12] 1644 	add	a,@r0
      0026C5 FA               [12] 1645 	mov	r2,a
      0026C6 E4               [12] 1646 	clr	a
      0026C7 08               [12] 1647 	inc	r0
      0026C8 36               [12] 1648 	addc	a,@r0
      0026C9 FF               [12] 1649 	mov	r7,a
      0026CA C0 05            [24] 1650 	push	ar5
      0026CC C0 04            [24] 1651 	push	ar4
      0026CE C0 03            [24] 1652 	push	ar3
      0026D0 74 20            [12] 1653 	mov	a,#0x20
      0026D2 C0 E0            [24] 1654 	push	acc
      0026D4 E4               [12] 1655 	clr	a
      0026D5 C0 E0            [24] 1656 	push	acc
      0026D7 8A 82            [24] 1657 	mov	dpl,r2
      0026D9 8F 83            [24] 1658 	mov	dph,r7
      0026DB 12 2B BE         [24] 1659 	lcall	__modsint
      0026DE C8               [12] 1660 	xch	a,r0
      0026DF E5 10            [12] 1661 	mov	a,_bp
      0026E1 24 09            [12] 1662 	add	a,#0x09
      0026E3 C8               [12] 1663 	xch	a,r0
      0026E4 A6 82            [24] 1664 	mov	@r0,dpl
      0026E6 08               [12] 1665 	inc	r0
      0026E7 A6 83            [24] 1666 	mov	@r0,dph
      0026E9 15 81            [12] 1667 	dec	sp
      0026EB 15 81            [12] 1668 	dec	sp
      0026ED D0 03            [24] 1669 	pop	ar3
      0026EF D0 04            [24] 1670 	pop	ar4
      0026F1 D0 05            [24] 1671 	pop	ar5
      0026F3 E5 10            [12] 1672 	mov	a,_bp
      0026F5 24 09            [12] 1673 	add	a,#0x09
      0026F7 F8               [12] 1674 	mov	r0,a
      0026F8 E6               [12] 1675 	mov	a,@r0
      0026F9 2C               [12] 1676 	add	a,r4
      0026FA FA               [12] 1677 	mov	r2,a
      0026FB 08               [12] 1678 	inc	r0
      0026FC E6               [12] 1679 	mov	a,@r0
      0026FD 3D               [12] 1680 	addc	a,r5
      0026FE FF               [12] 1681 	mov	r7,a
      0026FF EA               [12] 1682 	mov	a,r2
      002700 24 00            [12] 1683 	add	a,#_u
      002702 F5 82            [12] 1684 	mov	dpl,a
      002704 EF               [12] 1685 	mov	a,r7
      002705 34 88            [12] 1686 	addc	a,#(_u >> 8)
      002707 F5 83            [12] 1687 	mov	dph,a
      002709 E0               [24] 1688 	movx	a,@dptr
      00270A 2B               [12] 1689 	add	a,r3
      00270B FB               [12] 1690 	mov	r3,a
                                   1691 ;	life.c:170: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      00270C E5 10            [12] 1692 	mov	a,_bp
      00270E 24 07            [12] 1693 	add	a,#0x07
      002710 F8               [12] 1694 	mov	r0,a
      002711 74 21            [12] 1695 	mov	a,#0x21
      002713 26               [12] 1696 	add	a,@r0
      002714 FE               [12] 1697 	mov	r6,a
      002715 E4               [12] 1698 	clr	a
      002716 08               [12] 1699 	inc	r0
      002717 36               [12] 1700 	addc	a,@r0
      002718 FF               [12] 1701 	mov	r7,a
      002719 C0 05            [24] 1702 	push	ar5
      00271B C0 04            [24] 1703 	push	ar4
      00271D C0 03            [24] 1704 	push	ar3
      00271F 74 20            [12] 1705 	mov	a,#0x20
      002721 C0 E0            [24] 1706 	push	acc
      002723 E4               [12] 1707 	clr	a
      002724 C0 E0            [24] 1708 	push	acc
      002726 8E 82            [24] 1709 	mov	dpl,r6
      002728 8F 83            [24] 1710 	mov	dph,r7
      00272A 12 2B BE         [24] 1711 	lcall	__modsint
      00272D AE 82            [24] 1712 	mov	r6,dpl
      00272F AF 83            [24] 1713 	mov	r7,dph
      002731 15 81            [12] 1714 	dec	sp
      002733 15 81            [12] 1715 	dec	sp
      002735 D0 03            [24] 1716 	pop	ar3
      002737 D0 04            [24] 1717 	pop	ar4
      002739 D0 05            [24] 1718 	pop	ar5
      00273B EE               [12] 1719 	mov	a,r6
      00273C 2C               [12] 1720 	add	a,r4
      00273D FC               [12] 1721 	mov	r4,a
      00273E EF               [12] 1722 	mov	a,r7
      00273F 3D               [12] 1723 	addc	a,r5
      002740 FD               [12] 1724 	mov	r5,a
      002741 EC               [12] 1725 	mov	a,r4
      002742 24 00            [12] 1726 	add	a,#_u
      002744 F5 82            [12] 1727 	mov	dpl,a
      002746 ED               [12] 1728 	mov	a,r5
      002747 34 88            [12] 1729 	addc	a,#(_u >> 8)
      002749 F5 83            [12] 1730 	mov	dph,a
      00274B E0               [24] 1731 	movx	a,@dptr
      00274C 2B               [12] 1732 	add	a,r3
      00274D FB               [12] 1733 	mov	r3,a
                                   1734 ;	life.c:172: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      00274E 78 35            [12] 1735 	mov	r0,#_y
      002750 E5 10            [12] 1736 	mov	a,_bp
      002752 24 0B            [12] 1737 	add	a,#0x0b
      002754 F9               [12] 1738 	mov	r1,a
      002755 E6               [12] 1739 	mov	a,@r0
      002756 F7               [12] 1740 	mov	@r1,a
      002757 08               [12] 1741 	inc	r0
      002758 09               [12] 1742 	inc	r1
      002759 E6               [12] 1743 	mov	a,@r0
      00275A F7               [12] 1744 	mov	@r1,a
      00275B E5 10            [12] 1745 	mov	a,_bp
      00275D 24 0B            [12] 1746 	add	a,#0x0b
      00275F F8               [12] 1747 	mov	r0,a
      002760 74 40            [12] 1748 	mov	a,#0x40
      002762 26               [12] 1749 	add	a,@r0
      002763 FA               [12] 1750 	mov	r2,a
      002764 E4               [12] 1751 	clr	a
      002765 08               [12] 1752 	inc	r0
      002766 36               [12] 1753 	addc	a,@r0
      002767 FD               [12] 1754 	mov	r5,a
      002768 C0 07            [24] 1755 	push	ar7
      00276A C0 06            [24] 1756 	push	ar6
      00276C C0 03            [24] 1757 	push	ar3
      00276E 74 40            [12] 1758 	mov	a,#0x40
      002770 C0 E0            [24] 1759 	push	acc
      002772 E4               [12] 1760 	clr	a
      002773 C0 E0            [24] 1761 	push	acc
      002775 8A 82            [24] 1762 	mov	dpl,r2
      002777 8D 83            [24] 1763 	mov	dph,r5
      002779 12 2B BE         [24] 1764 	lcall	__modsint
      00277C AC 82            [24] 1765 	mov	r4,dpl
      00277E AD 83            [24] 1766 	mov	r5,dph
      002780 15 81            [12] 1767 	dec	sp
      002782 15 81            [12] 1768 	dec	sp
      002784 D0 03            [24] 1769 	pop	ar3
      002786 D0 06            [24] 1770 	pop	ar6
      002788 D0 07            [24] 1771 	pop	ar7
      00278A E5 10            [12] 1772 	mov	a,_bp
      00278C 24 0D            [12] 1773 	add	a,#0x0d
      00278E F8               [12] 1774 	mov	r0,a
      00278F A6 04            [24] 1775 	mov	@r0,ar4
      002791 ED               [12] 1776 	mov	a,r5
      002792 C4               [12] 1777 	swap	a
      002793 23               [12] 1778 	rl	a
      002794 54 E0            [12] 1779 	anl	a,#0xe0
      002796 C6               [12] 1780 	xch	a,@r0
      002797 C4               [12] 1781 	swap	a
      002798 23               [12] 1782 	rl	a
      002799 C6               [12] 1783 	xch	a,@r0
      00279A 66               [12] 1784 	xrl	a,@r0
      00279B C6               [12] 1785 	xch	a,@r0
      00279C 54 E0            [12] 1786 	anl	a,#0xe0
      00279E C6               [12] 1787 	xch	a,@r0
      00279F 66               [12] 1788 	xrl	a,@r0
      0027A0 08               [12] 1789 	inc	r0
      0027A1 F6               [12] 1790 	mov	@r0,a
      0027A2 E5 10            [12] 1791 	mov	a,_bp
      0027A4 24 0D            [12] 1792 	add	a,#0x0d
      0027A6 F8               [12] 1793 	mov	r0,a
      0027A7 E5 10            [12] 1794 	mov	a,_bp
      0027A9 24 05            [12] 1795 	add	a,#0x05
      0027AB F9               [12] 1796 	mov	r1,a
      0027AC E7               [12] 1797 	mov	a,@r1
      0027AD 26               [12] 1798 	add	a,@r0
      0027AE FA               [12] 1799 	mov	r2,a
      0027AF 09               [12] 1800 	inc	r1
      0027B0 E7               [12] 1801 	mov	a,@r1
      0027B1 08               [12] 1802 	inc	r0
      0027B2 36               [12] 1803 	addc	a,@r0
      0027B3 FD               [12] 1804 	mov	r5,a
      0027B4 EA               [12] 1805 	mov	a,r2
      0027B5 24 00            [12] 1806 	add	a,#_u
      0027B7 F5 82            [12] 1807 	mov	dpl,a
      0027B9 ED               [12] 1808 	mov	a,r5
      0027BA 34 88            [12] 1809 	addc	a,#(_u >> 8)
      0027BC F5 83            [12] 1810 	mov	dph,a
      0027BE E0               [24] 1811 	movx	a,@dptr
      0027BF 2B               [12] 1812 	add	a,r3
      0027C0 FB               [12] 1813 	mov	r3,a
                                   1814 ;	life.c:174: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      0027C1 E5 10            [12] 1815 	mov	a,_bp
      0027C3 24 0D            [12] 1816 	add	a,#0x0d
      0027C5 F8               [12] 1817 	mov	r0,a
      0027C6 E5 10            [12] 1818 	mov	a,_bp
      0027C8 24 09            [12] 1819 	add	a,#0x09
      0027CA F9               [12] 1820 	mov	r1,a
      0027CB E7               [12] 1821 	mov	a,@r1
      0027CC 26               [12] 1822 	add	a,@r0
      0027CD FC               [12] 1823 	mov	r4,a
      0027CE 09               [12] 1824 	inc	r1
      0027CF E7               [12] 1825 	mov	a,@r1
      0027D0 08               [12] 1826 	inc	r0
      0027D1 36               [12] 1827 	addc	a,@r0
      0027D2 FD               [12] 1828 	mov	r5,a
      0027D3 EC               [12] 1829 	mov	a,r4
      0027D4 24 00            [12] 1830 	add	a,#_u
      0027D6 F5 82            [12] 1831 	mov	dpl,a
      0027D8 ED               [12] 1832 	mov	a,r5
      0027D9 34 88            [12] 1833 	addc	a,#(_u >> 8)
      0027DB F5 83            [12] 1834 	mov	dph,a
      0027DD E0               [24] 1835 	movx	a,@dptr
      0027DE 2B               [12] 1836 	add	a,r3
      0027DF FB               [12] 1837 	mov	r3,a
                                   1838 ;	life.c:176: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      0027E0 E5 10            [12] 1839 	mov	a,_bp
      0027E2 24 0D            [12] 1840 	add	a,#0x0d
      0027E4 F8               [12] 1841 	mov	r0,a
      0027E5 EE               [12] 1842 	mov	a,r6
      0027E6 26               [12] 1843 	add	a,@r0
      0027E7 FC               [12] 1844 	mov	r4,a
      0027E8 EF               [12] 1845 	mov	a,r7
      0027E9 08               [12] 1846 	inc	r0
      0027EA 36               [12] 1847 	addc	a,@r0
      0027EB FD               [12] 1848 	mov	r5,a
      0027EC EC               [12] 1849 	mov	a,r4
      0027ED 24 00            [12] 1850 	add	a,#_u
      0027EF F5 82            [12] 1851 	mov	dpl,a
      0027F1 ED               [12] 1852 	mov	a,r5
      0027F2 34 88            [12] 1853 	addc	a,#(_u >> 8)
      0027F4 F5 83            [12] 1854 	mov	dph,a
      0027F6 E0               [24] 1855 	movx	a,@dptr
      0027F7 2B               [12] 1856 	add	a,r3
      0027F8 FB               [12] 1857 	mov	r3,a
                                   1858 ;	life.c:178: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      0027F9 E5 10            [12] 1859 	mov	a,_bp
      0027FB 24 0B            [12] 1860 	add	a,#0x0b
      0027FD F8               [12] 1861 	mov	r0,a
      0027FE 74 41            [12] 1862 	mov	a,#0x41
      002800 26               [12] 1863 	add	a,@r0
      002801 FC               [12] 1864 	mov	r4,a
      002802 E4               [12] 1865 	clr	a
      002803 08               [12] 1866 	inc	r0
      002804 36               [12] 1867 	addc	a,@r0
      002805 FD               [12] 1868 	mov	r5,a
      002806 C0 07            [24] 1869 	push	ar7
      002808 C0 06            [24] 1870 	push	ar6
      00280A C0 03            [24] 1871 	push	ar3
      00280C 74 40            [12] 1872 	mov	a,#0x40
      00280E C0 E0            [24] 1873 	push	acc
      002810 E4               [12] 1874 	clr	a
      002811 C0 E0            [24] 1875 	push	acc
      002813 8C 82            [24] 1876 	mov	dpl,r4
      002815 8D 83            [24] 1877 	mov	dph,r5
      002817 12 2B BE         [24] 1878 	lcall	__modsint
      00281A AC 82            [24] 1879 	mov	r4,dpl
      00281C AD 83            [24] 1880 	mov	r5,dph
      00281E 15 81            [12] 1881 	dec	sp
      002820 15 81            [12] 1882 	dec	sp
      002822 D0 03            [24] 1883 	pop	ar3
      002824 D0 06            [24] 1884 	pop	ar6
      002826 D0 07            [24] 1885 	pop	ar7
      002828 E5 10            [12] 1886 	mov	a,_bp
      00282A 24 0D            [12] 1887 	add	a,#0x0d
      00282C F8               [12] 1888 	mov	r0,a
      00282D A6 04            [24] 1889 	mov	@r0,ar4
      00282F ED               [12] 1890 	mov	a,r5
      002830 C4               [12] 1891 	swap	a
      002831 23               [12] 1892 	rl	a
      002832 54 E0            [12] 1893 	anl	a,#0xe0
      002834 C6               [12] 1894 	xch	a,@r0
      002835 C4               [12] 1895 	swap	a
      002836 23               [12] 1896 	rl	a
      002837 C6               [12] 1897 	xch	a,@r0
      002838 66               [12] 1898 	xrl	a,@r0
      002839 C6               [12] 1899 	xch	a,@r0
      00283A 54 E0            [12] 1900 	anl	a,#0xe0
      00283C C6               [12] 1901 	xch	a,@r0
      00283D 66               [12] 1902 	xrl	a,@r0
      00283E 08               [12] 1903 	inc	r0
      00283F F6               [12] 1904 	mov	@r0,a
      002840 E5 10            [12] 1905 	mov	a,_bp
      002842 24 0D            [12] 1906 	add	a,#0x0d
      002844 F8               [12] 1907 	mov	r0,a
      002845 E5 10            [12] 1908 	mov	a,_bp
      002847 24 05            [12] 1909 	add	a,#0x05
      002849 F9               [12] 1910 	mov	r1,a
      00284A E7               [12] 1911 	mov	a,@r1
      00284B 26               [12] 1912 	add	a,@r0
      00284C FA               [12] 1913 	mov	r2,a
      00284D 09               [12] 1914 	inc	r1
      00284E E7               [12] 1915 	mov	a,@r1
      00284F 08               [12] 1916 	inc	r0
      002850 36               [12] 1917 	addc	a,@r0
      002851 FD               [12] 1918 	mov	r5,a
      002852 EA               [12] 1919 	mov	a,r2
      002853 24 00            [12] 1920 	add	a,#_u
      002855 F5 82            [12] 1921 	mov	dpl,a
      002857 ED               [12] 1922 	mov	a,r5
      002858 34 88            [12] 1923 	addc	a,#(_u >> 8)
      00285A F5 83            [12] 1924 	mov	dph,a
      00285C E0               [24] 1925 	movx	a,@dptr
      00285D 2B               [12] 1926 	add	a,r3
      00285E FB               [12] 1927 	mov	r3,a
                                   1928 ;	life.c:180: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      00285F E5 10            [12] 1929 	mov	a,_bp
      002861 24 0D            [12] 1930 	add	a,#0x0d
      002863 F8               [12] 1931 	mov	r0,a
      002864 E5 10            [12] 1932 	mov	a,_bp
      002866 24 09            [12] 1933 	add	a,#0x09
      002868 F9               [12] 1934 	mov	r1,a
      002869 E7               [12] 1935 	mov	a,@r1
      00286A 26               [12] 1936 	add	a,@r0
      00286B FC               [12] 1937 	mov	r4,a
      00286C 09               [12] 1938 	inc	r1
      00286D E7               [12] 1939 	mov	a,@r1
      00286E 08               [12] 1940 	inc	r0
      00286F 36               [12] 1941 	addc	a,@r0
      002870 FD               [12] 1942 	mov	r5,a
      002871 EC               [12] 1943 	mov	a,r4
      002872 24 00            [12] 1944 	add	a,#_u
      002874 F5 82            [12] 1945 	mov	dpl,a
      002876 ED               [12] 1946 	mov	a,r5
      002877 34 88            [12] 1947 	addc	a,#(_u >> 8)
      002879 F5 83            [12] 1948 	mov	dph,a
      00287B E0               [24] 1949 	movx	a,@dptr
      00287C 2B               [12] 1950 	add	a,r3
      00287D FB               [12] 1951 	mov	r3,a
                                   1952 ;	life.c:181: y1 = 1; x1 = 1;
      00287E 78 41            [12] 1953 	mov	r0,#_y1
      002880 76 01            [12] 1954 	mov	@r0,#0x01
      002882 08               [12] 1955 	inc	r0
      002883 76 00            [12] 1956 	mov	@r0,#0x00
      002885 78 3F            [12] 1957 	mov	r0,#_x1
      002887 76 01            [12] 1958 	mov	@r0,#0x01
      002889 08               [12] 1959 	inc	r0
      00288A 76 00            [12] 1960 	mov	@r0,#0x00
                                   1961 ;	life.c:182: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      00288C E5 10            [12] 1962 	mov	a,_bp
      00288E 24 0D            [12] 1963 	add	a,#0x0d
      002890 F8               [12] 1964 	mov	r0,a
      002891 EE               [12] 1965 	mov	a,r6
      002892 26               [12] 1966 	add	a,@r0
      002893 FE               [12] 1967 	mov	r6,a
      002894 EF               [12] 1968 	mov	a,r7
      002895 08               [12] 1969 	inc	r0
      002896 36               [12] 1970 	addc	a,@r0
      002897 FF               [12] 1971 	mov	r7,a
      002898 EE               [12] 1972 	mov	a,r6
      002899 24 00            [12] 1973 	add	a,#_u
      00289B F5 82            [12] 1974 	mov	dpl,a
      00289D EF               [12] 1975 	mov	a,r7
      00289E 34 88            [12] 1976 	addc	a,#(_u >> 8)
      0028A0 F5 83            [12] 1977 	mov	dph,a
      0028A2 E0               [24] 1978 	movx	a,@dptr
      0028A3 2B               [12] 1979 	add	a,r3
      0028A4 FF               [12] 1980 	mov	r7,a
      0028A5 78 3C            [12] 1981 	mov	r0,#_n
      0028A7 A6 07            [24] 1982 	mov	@r0,ar7
                                   1983 ;	life.c:184: nu[A2D(W, y, x)] = (n == 3) || ((n == 2) && u[A2D(W, y, x)]);
      0028A9 A8 10            [24] 1984 	mov	r0,_bp
      0028AB 08               [12] 1985 	inc	r0
      0028AC E6               [12] 1986 	mov	a,@r0
      0028AD 24 00            [12] 1987 	add	a,#_nu
      0028AF FD               [12] 1988 	mov	r5,a
      0028B0 08               [12] 1989 	inc	r0
      0028B1 E6               [12] 1990 	mov	a,@r0
      0028B2 34 90            [12] 1991 	addc	a,#(_nu >> 8)
      0028B4 FE               [12] 1992 	mov	r6,a
      0028B5 BF 03 02         [24] 1993 	cjne	r7,#0x03,00454$
      0028B8 80 28            [24] 1994 	sjmp	00218$
      0028BA                       1995 00454$:
      0028BA BF 02 21         [24] 1996 	cjne	r7,#0x02,00217$
      0028BD E5 10            [12] 1997 	mov	a,_bp
      0028BF 24 03            [12] 1998 	add	a,#0x03
      0028C1 F8               [12] 1999 	mov	r0,a
      0028C2 E5 10            [12] 2000 	mov	a,_bp
      0028C4 24 07            [12] 2001 	add	a,#0x07
      0028C6 F9               [12] 2002 	mov	r1,a
      0028C7 E7               [12] 2003 	mov	a,@r1
      0028C8 26               [12] 2004 	add	a,@r0
      0028C9 FC               [12] 2005 	mov	r4,a
      0028CA 09               [12] 2006 	inc	r1
      0028CB E7               [12] 2007 	mov	a,@r1
      0028CC 08               [12] 2008 	inc	r0
      0028CD 36               [12] 2009 	addc	a,@r0
      0028CE FF               [12] 2010 	mov	r7,a
      0028CF EC               [12] 2011 	mov	a,r4
      0028D0 24 00            [12] 2012 	add	a,#_u
      0028D2 FC               [12] 2013 	mov	r4,a
      0028D3 EF               [12] 2014 	mov	a,r7
      0028D4 34 88            [12] 2015 	addc	a,#(_u >> 8)
      0028D6 FF               [12] 2016 	mov	r7,a
      0028D7 8C 82            [24] 2017 	mov	dpl,r4
      0028D9 8F 83            [24] 2018 	mov	dph,r7
      0028DB E0               [24] 2019 	movx	a,@dptr
      0028DC 70 04            [24] 2020 	jnz	00218$
      0028DE                       2021 00217$:
                                   2022 ;	assignBit
      0028DE C2 00            [12] 2023 	clr	b0
      0028E0 80 02            [24] 2024 	sjmp	00219$
      0028E2                       2025 00218$:
                                   2026 ;	assignBit
      0028E2 D2 00            [12] 2027 	setb	b0
      0028E4                       2028 00219$:
      0028E4 A2 00            [12] 2029 	mov	c,b0
      0028E6 E4               [12] 2030 	clr	a
      0028E7 33               [12] 2031 	rlc	a
      0028E8 8D 82            [24] 2032 	mov	dpl,r5
      0028EA 8E 83            [24] 2033 	mov	dph,r6
      0028EC F0               [24] 2034 	movx	@dptr,a
                                   2035 ;	life.c:185: cycle2 |= pu[A2D(W, y, x)] ^ nu[A2D(W, y, x)];
      0028ED 78 35            [12] 2036 	mov	r0,#_y
      0028EF 86 06            [24] 2037 	mov	ar6,@r0
      0028F1 08               [12] 2038 	inc	r0
      0028F2 E6               [12] 2039 	mov	a,@r0
      0028F3 C4               [12] 2040 	swap	a
      0028F4 23               [12] 2041 	rl	a
      0028F5 54 E0            [12] 2042 	anl	a,#0xe0
      0028F7 CE               [12] 2043 	xch	a,r6
      0028F8 C4               [12] 2044 	swap	a
      0028F9 23               [12] 2045 	rl	a
      0028FA CE               [12] 2046 	xch	a,r6
      0028FB 6E               [12] 2047 	xrl	a,r6
      0028FC CE               [12] 2048 	xch	a,r6
      0028FD 54 E0            [12] 2049 	anl	a,#0xe0
      0028FF CE               [12] 2050 	xch	a,r6
      002900 6E               [12] 2051 	xrl	a,r6
      002901 FF               [12] 2052 	mov	r7,a
      002902 78 33            [12] 2053 	mov	r0,#_x
      002904 E6               [12] 2054 	mov	a,@r0
      002905 2E               [12] 2055 	add	a,r6
      002906 FE               [12] 2056 	mov	r6,a
      002907 08               [12] 2057 	inc	r0
      002908 E6               [12] 2058 	mov	a,@r0
      002909 3F               [12] 2059 	addc	a,r7
      00290A FF               [12] 2060 	mov	r7,a
      00290B EE               [12] 2061 	mov	a,r6
      00290C 24 00            [12] 2062 	add	a,#_pu
      00290E F5 82            [12] 2063 	mov	dpl,a
      002910 EF               [12] 2064 	mov	a,r7
      002911 34 80            [12] 2065 	addc	a,#(_pu >> 8)
      002913 F5 83            [12] 2066 	mov	dph,a
      002915 E0               [24] 2067 	movx	a,@dptr
      002916 FD               [12] 2068 	mov	r5,a
      002917 EE               [12] 2069 	mov	a,r6
      002918 24 00            [12] 2070 	add	a,#_nu
      00291A F5 82            [12] 2071 	mov	dpl,a
      00291C EF               [12] 2072 	mov	a,r7
      00291D 34 90            [12] 2073 	addc	a,#(_nu >> 8)
      00291F F5 83            [12] 2074 	mov	dph,a
      002921 E0               [24] 2075 	movx	a,@dptr
      002922 FC               [12] 2076 	mov	r4,a
      002923 6D               [12] 2077 	xrl	a,r5
      002924 78 3E            [12] 2078 	mov	r0,#_cycle2
      002926 46               [12] 2079 	orl	a,@r0
      002927 F6               [12] 2080 	mov	@r0,a
                                   2081 ;	life.c:186: fixed |= u[A2D(W, y, x)] ^ nu[A2D(W, y, x)];
      002928 EE               [12] 2082 	mov	a,r6
      002929 24 00            [12] 2083 	add	a,#_u
      00292B F5 82            [12] 2084 	mov	dpl,a
      00292D EF               [12] 2085 	mov	a,r7
      00292E 34 88            [12] 2086 	addc	a,#(_u >> 8)
      002930 F5 83            [12] 2087 	mov	dph,a
      002932 E0               [24] 2088 	movx	a,@dptr
      002933 FF               [12] 2089 	mov	r7,a
      002934 EC               [12] 2090 	mov	a,r4
      002935 6F               [12] 2091 	xrl	a,r7
      002936 78 3D            [12] 2092 	mov	r0,#_fixed
      002938 46               [12] 2093 	orl	a,@r0
      002939 F6               [12] 2094 	mov	@r0,a
                                   2095 ;	life.c:162: for (x = 0; x < W; x++) {
      00293A 78 33            [12] 2096 	mov	r0,#_x
      00293C 06               [12] 2097 	inc	@r0
      00293D B6 00 02         [24] 2098 	cjne	@r0,#0x00,00458$
      002940 08               [12] 2099 	inc	r0
      002941 06               [12] 2100 	inc	@r0
      002942                       2101 00458$:
      002942 78 33            [12] 2102 	mov	r0,#_x
      002944 C3               [12] 2103 	clr	c
      002945 E6               [12] 2104 	mov	a,@r0
      002946 94 20            [12] 2105 	subb	a,#0x20
      002948 08               [12] 2106 	inc	r0
      002949 E6               [12] 2107 	mov	a,@r0
      00294A 64 80            [12] 2108 	xrl	a,#0x80
      00294C 94 80            [12] 2109 	subb	a,#0x80
      00294E 50 03            [24] 2110 	jnc	00459$
      002950 02 25 D5         [24] 2111 	ljmp	00190$
      002953                       2112 00459$:
                                   2113 ;	life.c:159: for (y = 0; y < H; y++) {
      002953 78 35            [12] 2114 	mov	r0,#_y
      002955 06               [12] 2115 	inc	@r0
      002956 B6 00 02         [24] 2116 	cjne	@r0,#0x00,00460$
      002959 08               [12] 2117 	inc	r0
      00295A 06               [12] 2118 	inc	@r0
      00295B                       2119 00460$:
      00295B 78 35            [12] 2120 	mov	r0,#_y
      00295D C3               [12] 2121 	clr	c
      00295E E6               [12] 2122 	mov	a,@r0
      00295F 94 40            [12] 2123 	subb	a,#0x40
      002961 08               [12] 2124 	inc	r0
      002962 E6               [12] 2125 	mov	a,@r0
      002963 64 80            [12] 2126 	xrl	a,#0x80
      002965 94 80            [12] 2127 	subb	a,#0x80
      002967 50 03            [24] 2128 	jnc	00461$
      002969 02 25 AD         [24] 2129 	ljmp	00192$
      00296C                       2130 00461$:
                                   2131 ;	life.c:190: cycle2 = !cycle2;
      00296C 78 3E            [12] 2132 	mov	r0,#_cycle2
      00296E E6               [12] 2133 	mov	a,@r0
      00296F B4 01 00         [24] 2134 	cjne	a,#0x01,00462$
      002972                       2135 00462$:
      002972 92 00            [24] 2136 	mov	b0,c
      002974 78 3E            [12] 2137 	mov	r0,#_cycle2
      002976 E4               [12] 2138 	clr	a
      002977 33               [12] 2139 	rlc	a
      002978 F6               [12] 2140 	mov	@r0,a
                                   2141 ;	life.c:191: fixed = !fixed;
      002979 78 3D            [12] 2142 	mov	r0,#_fixed
      00297B E6               [12] 2143 	mov	a,@r0
      00297C B4 01 00         [24] 2144 	cjne	a,#0x01,00463$
      00297F                       2145 00463$:
      00297F 92 00            [24] 2146 	mov	b0,c
      002981 78 3D            [12] 2147 	mov	r0,#_fixed
      002983 E4               [12] 2148 	clr	a
      002984 33               [12] 2149 	rlc	a
      002985 F6               [12] 2150 	mov	@r0,a
                                   2151 ;	life.c:193: memcpy(pu, u, sizeof (u));
      002986 E4               [12] 2152 	clr	a
      002987 C0 E0            [24] 2153 	push	acc
      002989 74 08            [12] 2154 	mov	a,#0x08
      00298B C0 E0            [24] 2155 	push	acc
      00298D 74 00            [12] 2156 	mov	a,#_u
      00298F C0 E0            [24] 2157 	push	acc
      002991 74 88            [12] 2158 	mov	a,#(_u >> 8)
      002993 C0 E0            [24] 2159 	push	acc
      002995 E4               [12] 2160 	clr	a
      002996 C0 E0            [24] 2161 	push	acc
      002998 90 80 00         [24] 2162 	mov	dptr,#_pu
      00299B 75 F0 00         [24] 2163 	mov	b,#0x00
      00299E 12 2A A5         [24] 2164 	lcall	___memcpy
      0029A1 E5 81            [12] 2165 	mov	a,sp
      0029A3 24 FB            [12] 2166 	add	a,#0xfb
      0029A5 F5 81            [12] 2167 	mov	sp,a
                                   2168 ;	life.c:194: memcpy(u, nu, sizeof (nu));
      0029A7 E4               [12] 2169 	clr	a
      0029A8 C0 E0            [24] 2170 	push	acc
      0029AA 74 08            [12] 2171 	mov	a,#0x08
      0029AC C0 E0            [24] 2172 	push	acc
      0029AE 74 00            [12] 2173 	mov	a,#_nu
      0029B0 C0 E0            [24] 2174 	push	acc
      0029B2 74 90            [12] 2175 	mov	a,#(_nu >> 8)
      0029B4 C0 E0            [24] 2176 	push	acc
      0029B6 E4               [12] 2177 	clr	a
      0029B7 C0 E0            [24] 2178 	push	acc
      0029B9 90 88 00         [24] 2179 	mov	dptr,#_u
      0029BC 75 F0 00         [24] 2180 	mov	b,#0x00
      0029BF 12 2A A5         [24] 2181 	lcall	___memcpy
      0029C2 E5 81            [12] 2182 	mov	a,sp
      0029C4 24 FB            [12] 2183 	add	a,#0xfb
      0029C6 F5 81            [12] 2184 	mov	sp,a
                                   2185 ;	life.c:232: if (fixed || cycle2) {
      0029C8 78 3D            [12] 2186 	mov	r0,#_fixed
      0029CA E6               [12] 2187 	mov	a,@r0
      0029CB 70 08            [24] 2188 	jnz	00123$
      0029CD 78 3E            [12] 2189 	mov	r0,#_cycle2
      0029CF E6               [12] 2190 	mov	a,@r0
      0029D0 70 03            [24] 2191 	jnz	00465$
      0029D2 02 25 85         [24] 2192 	ljmp	00205$
      0029D5                       2193 00465$:
      0029D5                       2194 00123$:
                                   2195 ;	life.c:233: printstr("DONE ");
      0029D5 7D F6            [12] 2196 	mov	r5,#___str_6
      0029D7 7E 2C            [12] 2197 	mov	r6,#(___str_6 >> 8)
      0029D9 7F 80            [12] 2198 	mov	r7,#0x80
                                   2199 ;	life.c:48: return;
      0029DB                       2200 00195$:
                                   2201 ;	life.c:46: for (; *s; s++) putchar(*s);
      0029DB 8D 82            [24] 2202 	mov	dpl,r5
      0029DD 8E 83            [24] 2203 	mov	dph,r6
      0029DF 8F F0            [24] 2204 	mov	b,r7
      0029E1 12 2B A2         [24] 2205 	lcall	__gptrget
      0029E4 FC               [12] 2206 	mov	r4,a
      0029E5 60 10            [24] 2207 	jz	00165$
      0029E7 7B 00            [12] 2208 	mov	r3,#0x00
      0029E9 8C 82            [24] 2209 	mov	dpl,r4
      0029EB 8B 83            [24] 2210 	mov	dph,r3
      0029ED 12 20 C5         [24] 2211 	lcall	_putchar
      0029F0 0D               [12] 2212 	inc	r5
                                   2213 ;	life.c:233: printstr("DONE ");
      0029F1 BD 00 E7         [24] 2214 	cjne	r5,#0x00,00195$
      0029F4 0E               [12] 2215 	inc	r6
      0029F5 80 E4            [24] 2216 	sjmp	00195$
      0029F7                       2217 00165$:
                                   2218 ;	life.c:234: if (fixed) printstr("FIXED\r\n");
      0029F7 78 3D            [12] 2219 	mov	r0,#_fixed
      0029F9 E6               [12] 2220 	mov	a,@r0
      0029FA 60 22            [24] 2221 	jz	00121$
      0029FC 7D FC            [12] 2222 	mov	r5,#___str_7
      0029FE 7E 2C            [12] 2223 	mov	r6,#(___str_7 >> 8)
      002A00 7F 80            [12] 2224 	mov	r7,#0x80
                                   2225 ;	life.c:48: return;
      002A02                       2226 00198$:
                                   2227 ;	life.c:46: for (; *s; s++) putchar(*s);
      002A02 8D 82            [24] 2228 	mov	dpl,r5
      002A04 8E 83            [24] 2229 	mov	dph,r6
      002A06 8F F0            [24] 2230 	mov	b,r7
      002A08 12 2B A2         [24] 2231 	lcall	__gptrget
      002A0B FC               [12] 2232 	mov	r4,a
      002A0C 60 32            [24] 2233 	jz	00122$
      002A0E 7B 00            [12] 2234 	mov	r3,#0x00
      002A10 8C 82            [24] 2235 	mov	dpl,r4
      002A12 8B 83            [24] 2236 	mov	dph,r3
      002A14 12 20 C5         [24] 2237 	lcall	_putchar
      002A17 0D               [12] 2238 	inc	r5
                                   2239 ;	life.c:234: if (fixed) printstr("FIXED\r\n");
      002A18 BD 00 E7         [24] 2240 	cjne	r5,#0x00,00198$
      002A1B 0E               [12] 2241 	inc	r6
      002A1C 80 E4            [24] 2242 	sjmp	00198$
      002A1E                       2243 00121$:
                                   2244 ;	life.c:235: else printstr("CYCLE2\r\n");
      002A1E 7D 04            [12] 2245 	mov	r5,#___str_8
      002A20 7E 2D            [12] 2246 	mov	r6,#(___str_8 >> 8)
      002A22 7F 80            [12] 2247 	mov	r7,#0x80
                                   2248 ;	life.c:48: return;
      002A24                       2249 00201$:
                                   2250 ;	life.c:46: for (; *s; s++) putchar(*s);
      002A24 8D 82            [24] 2251 	mov	dpl,r5
      002A26 8E 83            [24] 2252 	mov	dph,r6
      002A28 8F F0            [24] 2253 	mov	b,r7
      002A2A 12 2B A2         [24] 2254 	lcall	__gptrget
      002A2D FC               [12] 2255 	mov	r4,a
      002A2E 60 10            [24] 2256 	jz	00122$
      002A30 7B 00            [12] 2257 	mov	r3,#0x00
      002A32 8C 82            [24] 2258 	mov	dpl,r4
      002A34 8B 83            [24] 2259 	mov	dph,r3
      002A36 12 20 C5         [24] 2260 	lcall	_putchar
      002A39 0D               [12] 2261 	inc	r5
                                   2262 ;	life.c:235: else printstr("CYCLE2\r\n");
      002A3A BD 00 E7         [24] 2263 	cjne	r5,#0x00,00201$
      002A3D 0E               [12] 2264 	inc	r6
      002A3E 80 E4            [24] 2265 	sjmp	00201$
      002A40                       2266 00122$:
                                   2267 ;	life.c:236: (void)getchar();
      002A40 12 20 CA         [24] 2268 	lcall	_getchar
                                   2269 ;	life.c:237: break;
      002A43                       2270 00126$:
                                   2271 ;	life.c:241: if (i1) {
      002A43 78 32            [12] 2272 	mov	r0,#_i1
      002A45 E6               [12] 2273 	mov	a,@r0
      002A46 60 25            [24] 2274 	jz	00211$
                                   2275 ;	life.c:242: printstr("BREAK\r\n");
      002A48 7D 0D            [12] 2276 	mov	r5,#___str_9
      002A4A 7E 2D            [12] 2277 	mov	r6,#(___str_9 >> 8)
      002A4C 7F 80            [12] 2278 	mov	r7,#0x80
                                   2279 ;	life.c:48: return;
      002A4E                       2280 00208$:
                                   2281 ;	life.c:46: for (; *s; s++) putchar(*s);
      002A4E 8D 82            [24] 2282 	mov	dpl,r5
      002A50 8E 83            [24] 2283 	mov	dph,r6
      002A52 8F F0            [24] 2284 	mov	b,r7
      002A54 12 2B A2         [24] 2285 	lcall	__gptrget
      002A57 FC               [12] 2286 	mov	r4,a
      002A58 60 10            [24] 2287 	jz	00171$
      002A5A 7B 00            [12] 2288 	mov	r3,#0x00
      002A5C 8C 82            [24] 2289 	mov	dpl,r4
      002A5E 8B 83            [24] 2290 	mov	dph,r3
      002A60 12 20 C5         [24] 2291 	lcall	_putchar
      002A63 0D               [12] 2292 	inc	r5
                                   2293 ;	life.c:242: printstr("BREAK\r\n");
      002A64 BD 00 E7         [24] 2294 	cjne	r5,#0x00,00208$
      002A67 0E               [12] 2295 	inc	r6
      002A68 80 E4            [24] 2296 	sjmp	00208$
      002A6A                       2297 00171$:
                                   2298 ;	life.c:243: (void)getchar();
      002A6A 12 20 CA         [24] 2299 	lcall	_getchar
      002A6D                       2300 00211$:
                                   2301 ;	life.c:206: for (i0 = 0; !i0; ) {		
      002A6D 78 31            [12] 2302 	mov	r0,#_i0
      002A6F E6               [12] 2303 	mov	a,@r0
      002A70 70 03            [24] 2304 	jnz	00476$
      002A72 02 23 00         [24] 2305 	ljmp	00210$
      002A75                       2306 00476$:
                                   2307 ;	life.c:247: terminate:
      002A75                       2308 00130$:
                                   2309 ;	life.c:248: EA = 0;
                                   2310 ;	assignBit
      002A75 C2 AF            [12] 2311 	clr	_EA
                                   2312 ;	life.c:249: printstr("TERM\r\n");
      002A77 7D 15            [12] 2313 	mov	r5,#___str_10
      002A79 7E 2D            [12] 2314 	mov	r6,#(___str_10 >> 8)
      002A7B 7F 80            [12] 2315 	mov	r7,#0x80
                                   2316 ;	life.c:48: return;
      002A7D                       2317 00213$:
                                   2318 ;	life.c:46: for (; *s; s++) putchar(*s);
      002A7D 8D 82            [24] 2319 	mov	dpl,r5
      002A7F 8E 83            [24] 2320 	mov	dph,r6
      002A81 8F F0            [24] 2321 	mov	b,r7
      002A83 12 2B A2         [24] 2322 	lcall	__gptrget
      002A86 FC               [12] 2323 	mov	r4,a
      002A87 60 10            [24] 2324 	jz	00173$
      002A89 7B 00            [12] 2325 	mov	r3,#0x00
      002A8B 8C 82            [24] 2326 	mov	dpl,r4
      002A8D 8B 83            [24] 2327 	mov	dph,r3
      002A8F 12 20 C5         [24] 2328 	lcall	_putchar
      002A92 0D               [12] 2329 	inc	r5
                                   2330 ;	life.c:249: printstr("TERM\r\n");
      002A93 BD 00 E7         [24] 2331 	cjne	r5,#0x00,00213$
      002A96 0E               [12] 2332 	inc	r6
      002A97 80 E4            [24] 2333 	sjmp	00213$
      002A99                       2334 00173$:
                                   2335 ;	life.c:250: (void)getchar();
      002A99 12 20 CA         [24] 2336 	lcall	_getchar
                                   2337 ;	life.c:254: __endasm;
      002A9C 02 00 00         [24] 2338 	ljmp	0
                                   2339 ;	life.c:255: }
      002A9F 85 10 81         [24] 2340 	mov	sp,_bp
      002AA2 D0 10            [24] 2341 	pop	_bp
      002AA4 22               [24] 2342 	ret
                                   2343 	.area CSEG    (CODE)
                                   2344 	.area CONST   (CODE)
                                   2345 	.area CONST   (CODE)
      002CCA                       2346 ___str_0:
      002CCA 1B                    2347 	.db 0x1b
      002CCB 5B 32 4A              2348 	.ascii "[2J"
      002CCE 1B                    2349 	.db 0x1b
      002CCF 5B 6D                 2350 	.ascii "[m"
      002CD1 00                    2351 	.db 0x00
                                   2352 	.area CSEG    (CODE)
                                   2353 	.area CONST   (CODE)
      002CD2                       2354 ___str_1:
      002CD2 0D                    2355 	.db 0x0d
      002CD3 0A                    2356 	.db 0x0a
      002CD4 00                    2357 	.db 0x00
                                   2358 	.area CSEG    (CODE)
                                   2359 	.area CONST   (CODE)
      002CD5                       2360 ___str_2:
      002CD5 4C 4F 41 44 20 3C     2361 	.ascii "LOAD <"
      002CDB 00                    2362 	.db 0x00
                                   2363 	.area CSEG    (CODE)
                                   2364 	.area CONST   (CODE)
      002CDC                       2365 ___str_3:
      002CDC 3E                    2366 	.ascii ">"
      002CDD 0D                    2367 	.db 0x0d
      002CDE 0A                    2368 	.db 0x0a
      002CDF 00                    2369 	.db 0x00
                                   2370 	.area CSEG    (CODE)
                                   2371 	.area CONST   (CODE)
      002CE0                       2372 ___str_4:
      002CE0 1B                    2373 	.db 0x1b
      002CE1 5B 32 4A              2374 	.ascii "[2J"
      002CE4 1B                    2375 	.db 0x1b
      002CE5 5B 6D 49 4E 49 54     2376 	.ascii "[mINIT"
      002CEB 0D                    2377 	.db 0x0d
      002CEC 0A                    2378 	.db 0x0a
      002CED 00                    2379 	.db 0x00
                                   2380 	.area CSEG    (CODE)
                                   2381 	.area CONST   (CODE)
      002CEE                       2382 ___str_5:
      002CEE 52 45 41 44 59        2383 	.ascii "READY"
      002CF3 0D                    2384 	.db 0x0d
      002CF4 0A                    2385 	.db 0x0a
      002CF5 00                    2386 	.db 0x00
                                   2387 	.area CSEG    (CODE)
                                   2388 	.area CONST   (CODE)
      002CF6                       2389 ___str_6:
      002CF6 44 4F 4E 45 20        2390 	.ascii "DONE "
      002CFB 00                    2391 	.db 0x00
                                   2392 	.area CSEG    (CODE)
                                   2393 	.area CONST   (CODE)
      002CFC                       2394 ___str_7:
      002CFC 46 49 58 45 44        2395 	.ascii "FIXED"
      002D01 0D                    2396 	.db 0x0d
      002D02 0A                    2397 	.db 0x0a
      002D03 00                    2398 	.db 0x00
                                   2399 	.area CSEG    (CODE)
                                   2400 	.area CONST   (CODE)
      002D04                       2401 ___str_8:
      002D04 43 59 43 4C 45 32     2402 	.ascii "CYCLE2"
      002D0A 0D                    2403 	.db 0x0d
      002D0B 0A                    2404 	.db 0x0a
      002D0C 00                    2405 	.db 0x00
                                   2406 	.area CSEG    (CODE)
                                   2407 	.area CONST   (CODE)
      002D0D                       2408 ___str_9:
      002D0D 42 52 45 41 4B        2409 	.ascii "BREAK"
      002D12 0D                    2410 	.db 0x0d
      002D13 0A                    2411 	.db 0x0a
      002D14 00                    2412 	.db 0x00
                                   2413 	.area CSEG    (CODE)
                                   2414 	.area CONST   (CODE)
      002D15                       2415 ___str_10:
      002D15 54 45 52 4D           2416 	.ascii "TERM"
      002D19 0D                    2417 	.db 0x0d
      002D1A 0A                    2418 	.db 0x0a
      002D1B 00                    2419 	.db 0x00
                                   2420 	.area CSEG    (CODE)
                                   2421 	.area XINIT   (CODE)
                                   2422 	.area CABS    (ABS,CODE)
