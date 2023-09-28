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
      004000                        362 _pu:
      004000                        363 	.ds 2048
      004800                        364 _u:
      004800                        365 	.ds 2048
      005000                        366 _nu:
      005000                        367 	.ds 2048
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
                                    443 ;	life.c:162: __idata static const char busy[4] = { '\\', '|', '/', '-' };
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
                                    580 ;	life.c:98: printstr("\033[2J\033[mGEN ");
      0020F3 7D 05            [12]  581 	mov	r5,#___str_0
      0020F5 7E 2D            [12]  582 	mov	r6,#(___str_0 >> 8)
      0020F7 7F 80            [12]  583 	mov	r7,#0x80
                                    584 ;	life.c:49: return;
      0020F9                        585 00121$:
                                    586 ;	life.c:47: for (; *s; s++) putchar(*s);
      0020F9 8D 82            [24]  587 	mov	dpl,r5
      0020FB 8E 83            [24]  588 	mov	dph,r6
      0020FD 8F F0            [24]  589 	mov	b,r7
      0020FF 12 2B DD         [24]  590 	lcall	__gptrget
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
      0021F7 7D 11            [12]  744 	mov	r5,#___str_1
      0021F9 7E 2D            [12]  745 	mov	r6,#(___str_1 >> 8)
      0021FB 7F 80            [12]  746 	mov	r7,#0x80
                                    747 ;	life.c:49: return;
      0021FD                        748 00124$:
                                    749 ;	life.c:47: for (; *s; s++) putchar(*s);
      0021FD 8D 82            [24]  750 	mov	dpl,r5
      0021FF 8E 83            [24]  751 	mov	dph,r6
      002201 8F F0            [24]  752 	mov	b,r7
      002203 12 2B DD         [24]  753 	lcall	__gptrget
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
      002272 34 48            [12]  841 	addc	a,#(_u >> 8)
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
      0022AC 7D 11            [12]  877 	mov	r5,#___str_1
      0022AE 7E 2D            [12]  878 	mov	r6,#(___str_1 >> 8)
      0022B0 7F 80            [12]  879 	mov	r7,#0x80
                                    880 ;	life.c:49: return;
      0022B2                        881 00129$:
                                    882 ;	life.c:47: for (; *s; s++) putchar(*s);
      0022B2 8D 82            [24]  883 	mov	dpl,r5
      0022B4 8E 83            [24]  884 	mov	dph,r6
      0022B6 8F F0            [24]  885 	mov	b,r7
      0022B8 12 2B DD         [24]  886 	lcall	__gptrget
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
                                    951 ;	life.c:209: void main(void) {
                                    952 ;	-----------------------------------------
                                    953 ;	 function main
                                    954 ;	-----------------------------------------
      0022E8                        955 _main:
      0022E8 C0 10            [24]  956 	push	_bp
      0022EA E5 81            [12]  957 	mov	a,sp
      0022EC F5 10            [12]  958 	mov	_bp,a
      0022EE 24 0E            [12]  959 	add	a,#0x0e
      0022F0 F5 81            [12]  960 	mov	sp,a
                                    961 ;	life.c:210: IT0 = 1;
                                    962 ;	assignBit
      0022F2 D2 88            [12]  963 	setb	_IT0
                                    964 ;	life.c:211: IT1 = 1;
                                    965 ;	assignBit
      0022F4 D2 8A            [12]  966 	setb	_IT1
                                    967 ;	life.c:212: EX0 = 1;
                                    968 ;	assignBit
      0022F6 D2 A8            [12]  969 	setb	_EX0
                                    970 ;	life.c:213: EX1 = 1;
                                    971 ;	assignBit
      0022F8 D2 AA            [12]  972 	setb	_EX1
                                    973 ;	life.c:214: EA = 1;
                                    974 ;	assignBit
      0022FA D2 AF            [12]  975 	setb	_EA
                                    976 ;	life.c:216: for (i0 = 0; !i0; ) {		
      0022FC 78 31            [12]  977 	mov	r0,#_i0
      0022FE 76 00            [12]  978 	mov	@r0,#0x00
      002300                        979 00220$:
                                    980 ;	life.c:217: printstr("\033[2J\033[mLIFE INIT\r\n");
      002300 7D 1F            [12]  981 	mov	r5,#___str_4
      002302 7E 2D            [12]  982 	mov	r6,#(___str_4 >> 8)
      002304 7F 80            [12]  983 	mov	r7,#0x80
                                    984 ;	life.c:49: return;
      002306                        985 00186$:
                                    986 ;	life.c:47: for (; *s; s++) putchar(*s);
      002306 8D 82            [24]  987 	mov	dpl,r5
      002308 8E 83            [24]  988 	mov	dph,r6
      00230A 8F F0            [24]  989 	mov	b,r7
      00230C 12 2B DD         [24]  990 	lcall	__gptrget
      00230F FC               [12]  991 	mov	r4,a
      002310 60 10            [24]  992 	jz	00108$
      002312 7B 00            [12]  993 	mov	r3,#0x00
      002314 8C 82            [24]  994 	mov	dpl,r4
      002316 8B 83            [24]  995 	mov	dph,r3
      002318 12 20 C5         [24]  996 	lcall	_putchar
      00231B 0D               [12]  997 	inc	r5
                                    998 ;	life.c:218: while (1) {
      00231C BD 00 E7         [24]  999 	cjne	r5,#0x00,00186$
      00231F 0E               [12] 1000 	inc	r6
      002320 80 E4            [24] 1001 	sjmp	00186$
      002322                       1002 00108$:
                                   1003 ;	life.c:219: c = toupper(getchar());
      002322 12 20 CA         [24] 1004 	lcall	_getchar
      002325 12 2B B6         [24] 1005 	lcall	_toupper
      002328 AE 82            [24] 1006 	mov	r6,dpl
      00232A AF 83            [24] 1007 	mov	r7,dph
      00232C 78 39            [12] 1008 	mov	r0,#_c
      00232E A6 06            [24] 1009 	mov	@r0,ar6
      002330 08               [12] 1010 	inc	r0
      002331 A6 07            [24] 1011 	mov	@r0,ar7
                                   1012 ;	life.c:220: if (i0 || (c == (int)'T')) goto terminate;
      002333 78 31            [12] 1013 	mov	r0,#_i0
      002335 E6               [12] 1014 	mov	a,@r0
      002336 60 03            [24] 1015 	jz	00435$
      002338 02 2A 89         [24] 1016 	ljmp	00133$
      00233B                       1017 00435$:
      00233B BE 54 06         [24] 1018 	cjne	r6,#0x54,00436$
      00233E BF 00 03         [24] 1019 	cjne	r7,#0x00,00436$
      002341 02 2A 89         [24] 1020 	ljmp	00133$
      002344                       1021 00436$:
                                   1022 ;	life.c:221: else if (c == (int)'L') break;
      002344 BE 4C DB         [24] 1023 	cjne	r6,#0x4c,00108$
      002347 BF 00 D8         [24] 1024 	cjne	r7,#0x00,00108$
                                   1025 ;	life.c:224: reload:
      00234A                       1026 00110$:
                                   1027 ;	life.c:118: memset(u, 0, sizeof (u));
      00234A E4               [12] 1028 	clr	a
      00234B C0 E0            [24] 1029 	push	acc
      00234D 74 08            [12] 1030 	mov	a,#0x08
      00234F C0 E0            [24] 1031 	push	acc
      002351 E4               [12] 1032 	clr	a
      002352 C0 E0            [24] 1033 	push	acc
      002354 90 48 00         [24] 1034 	mov	dptr,#_u
      002357 75 F0 00         [24] 1035 	mov	b,#0x00
      00235A 12 2B 4C         [24] 1036 	lcall	_memset
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
      00236D 90 40 00         [24] 1047 	mov	dptr,#_pu
      002370 75 F0 00         [24] 1048 	mov	b,#0x00
      002373 12 2B 4C         [24] 1049 	lcall	_memset
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
      002382 7D 14            [12] 1060 	mov	r5,#___str_2
      002384 7E 2D            [12] 1061 	mov	r6,#(___str_2 >> 8)
      002386 7F 80            [12] 1062 	mov	r7,#0x80
                                   1063 ;	life.c:49: return;
      002388                       1064 00189$:
                                   1065 ;	life.c:47: for (; *s; s++) putchar(*s);
      002388 8D 82            [24] 1066 	mov	dpl,r5
      00238A 8E 83            [24] 1067 	mov	dph,r6
      00238C 8F F0            [24] 1068 	mov	b,r7
      00238E 12 2B DD         [24] 1069 	lcall	__gptrget
      002391 FC               [12] 1070 	mov	r4,a
      002392 60 10            [24] 1071 	jz	00138$
      002394 7B 00            [12] 1072 	mov	r3,#0x00
      002396 8C 82            [24] 1073 	mov	dpl,r4
      002398 8B 83            [24] 1074 	mov	dph,r3
      00239A 12 20 C5         [24] 1075 	lcall	_putchar
      00239D 0D               [12] 1076 	inc	r5
                                   1077 ;	life.c:127: printstr("LOAD <");
      00239E BD 00 E7         [24] 1078 	cjne	r5,#0x00,00189$
      0023A1 0E               [12] 1079 	inc	r6
      0023A2 80 E4            [24] 1080 	sjmp	00189$
      0023A4                       1081 00138$:
                                   1082 ;	life.c:129: for (y = 0; y < H; y++) {
      0023A4 78 35            [12] 1083 	mov	r0,#_y
      0023A6 E4               [12] 1084 	clr	a
      0023A7 F6               [12] 1085 	mov	@r0,a
      0023A8 08               [12] 1086 	inc	r0
      0023A9 F6               [12] 1087 	mov	@r0,a
      0023AA                       1088 00192$:
                                   1089 ;	life.c:130: for (x = 0; x < W; x++) {
      0023AA 78 33            [12] 1090 	mov	r0,#_x
      0023AC E4               [12] 1091 	clr	a
      0023AD F6               [12] 1092 	mov	@r0,a
      0023AE 08               [12] 1093 	inc	r0
      0023AF F6               [12] 1094 	mov	@r0,a
                                   1095 ;	life.c:131: while (1) {
      0023B0                       1096 00151$:
                                   1097 ;	life.c:132: c = toupper(getchar());
      0023B0 12 20 CA         [24] 1098 	lcall	_getchar
      0023B3 12 2B B6         [24] 1099 	lcall	_toupper
      0023B6 AE 82            [24] 1100 	mov	r6,dpl
      0023B8 AF 83            [24] 1101 	mov	r7,dph
      0023BA 78 39            [12] 1102 	mov	r0,#_c
      0023BC A6 06            [24] 1103 	mov	@r0,ar6
      0023BE 08               [12] 1104 	inc	r0
      0023BF A6 07            [24] 1105 	mov	@r0,ar7
                                   1106 ;	life.c:133: if (c == (int)'0') {
      0023C1 BE 30 37         [24] 1107 	cjne	r6,#0x30,00149$
      0023C4 BF 00 34         [24] 1108 	cjne	r7,#0x00,00149$
                                   1109 ;	life.c:134: u[A2D(W, y, x)] = 0;
      0023C7 78 35            [12] 1110 	mov	r0,#_y
      0023C9 86 04            [24] 1111 	mov	ar4,@r0
      0023CB 08               [12] 1112 	inc	r0
      0023CC E6               [12] 1113 	mov	a,@r0
      0023CD C4               [12] 1114 	swap	a
      0023CE 23               [12] 1115 	rl	a
      0023CF 54 E0            [12] 1116 	anl	a,#0xe0
      0023D1 CC               [12] 1117 	xch	a,r4
      0023D2 C4               [12] 1118 	swap	a
      0023D3 23               [12] 1119 	rl	a
      0023D4 CC               [12] 1120 	xch	a,r4
      0023D5 6C               [12] 1121 	xrl	a,r4
      0023D6 CC               [12] 1122 	xch	a,r4
      0023D7 54 E0            [12] 1123 	anl	a,#0xe0
      0023D9 CC               [12] 1124 	xch	a,r4
      0023DA 6C               [12] 1125 	xrl	a,r4
      0023DB FD               [12] 1126 	mov	r5,a
      0023DC 78 33            [12] 1127 	mov	r0,#_x
      0023DE E6               [12] 1128 	mov	a,@r0
      0023DF 2C               [12] 1129 	add	a,r4
      0023E0 FC               [12] 1130 	mov	r4,a
      0023E1 08               [12] 1131 	inc	r0
      0023E2 E6               [12] 1132 	mov	a,@r0
      0023E3 3D               [12] 1133 	addc	a,r5
      0023E4 FD               [12] 1134 	mov	r5,a
      0023E5 EC               [12] 1135 	mov	a,r4
      0023E6 24 00            [12] 1136 	add	a,#_u
      0023E8 F5 82            [12] 1137 	mov	dpl,a
      0023EA ED               [12] 1138 	mov	a,r5
      0023EB 34 48            [12] 1139 	addc	a,#(_u >> 8)
      0023ED F5 83            [12] 1140 	mov	dph,a
      0023EF E4               [12] 1141 	clr	a
      0023F0 F0               [24] 1142 	movx	@dptr,a
                                   1143 ;	life.c:135: j++;
      0023F1 78 37            [12] 1144 	mov	r0,#_j
      0023F3 06               [12] 1145 	inc	@r0
      0023F4 B6 00 02         [24] 1146 	cjne	@r0,#0x00,00443$
      0023F7 08               [12] 1147 	inc	r0
      0023F8 06               [12] 1148 	inc	@r0
      0023F9                       1149 00443$:
                                   1150 ;	life.c:136: break;
      0023F9 80 4E            [24] 1151 	sjmp	00154$
      0023FB                       1152 00149$:
                                   1153 ;	life.c:137: } else if (c == (int)'1') {
      0023FB BE 31 38         [24] 1154 	cjne	r6,#0x31,00147$
      0023FE BF 00 35         [24] 1155 	cjne	r7,#0x00,00147$
                                   1156 ;	life.c:138: u[A2D(W, y, x)] = 1;
      002401 78 35            [12] 1157 	mov	r0,#_y
      002403 86 04            [24] 1158 	mov	ar4,@r0
      002405 08               [12] 1159 	inc	r0
      002406 E6               [12] 1160 	mov	a,@r0
      002407 C4               [12] 1161 	swap	a
      002408 23               [12] 1162 	rl	a
      002409 54 E0            [12] 1163 	anl	a,#0xe0
      00240B CC               [12] 1164 	xch	a,r4
      00240C C4               [12] 1165 	swap	a
      00240D 23               [12] 1166 	rl	a
      00240E CC               [12] 1167 	xch	a,r4
      00240F 6C               [12] 1168 	xrl	a,r4
      002410 CC               [12] 1169 	xch	a,r4
      002411 54 E0            [12] 1170 	anl	a,#0xe0
      002413 CC               [12] 1171 	xch	a,r4
      002414 6C               [12] 1172 	xrl	a,r4
      002415 FD               [12] 1173 	mov	r5,a
      002416 78 33            [12] 1174 	mov	r0,#_x
      002418 E6               [12] 1175 	mov	a,@r0
      002419 2C               [12] 1176 	add	a,r4
      00241A FC               [12] 1177 	mov	r4,a
      00241B 08               [12] 1178 	inc	r0
      00241C E6               [12] 1179 	mov	a,@r0
      00241D 3D               [12] 1180 	addc	a,r5
      00241E FD               [12] 1181 	mov	r5,a
      00241F EC               [12] 1182 	mov	a,r4
      002420 24 00            [12] 1183 	add	a,#_u
      002422 F5 82            [12] 1184 	mov	dpl,a
      002424 ED               [12] 1185 	mov	a,r5
      002425 34 48            [12] 1186 	addc	a,#(_u >> 8)
      002427 F5 83            [12] 1187 	mov	dph,a
      002429 74 01            [12] 1188 	mov	a,#0x01
      00242B F0               [24] 1189 	movx	@dptr,a
                                   1190 ;	life.c:139: j++;
      00242C 78 37            [12] 1191 	mov	r0,#_j
      00242E 06               [12] 1192 	inc	@r0
      00242F B6 00 02         [24] 1193 	cjne	@r0,#0x00,00446$
      002432 08               [12] 1194 	inc	r0
      002433 06               [12] 1195 	inc	@r0
      002434                       1196 00446$:
                                   1197 ;	life.c:140: break;
      002434 80 13            [24] 1198 	sjmp	00154$
      002436                       1199 00147$:
                                   1200 ;	life.c:141: } else if (c == (int)'S') goto br_inner;
      002436 BE 53 05         [24] 1201 	cjne	r6,#0x53,00447$
      002439 BF 00 02         [24] 1202 	cjne	r7,#0x00,00447$
      00243C 80 24            [24] 1203 	sjmp	00193$
      00243E                       1204 00447$:
                                   1205 ;	life.c:142: else if (c == (int)'#') goto out;
      00243E BE 23 05         [24] 1206 	cjne	r6,#0x23,00448$
      002441 BF 00 02         [24] 1207 	cjne	r7,#0x00,00448$
      002444 80 35            [24] 1208 	sjmp	00164$
      002446                       1209 00448$:
      002446 02 23 B0         [24] 1210 	ljmp	00151$
                                   1211 ;	life.c:146: break;
      002449                       1212 00154$:
                                   1213 ;	life.c:130: for (x = 0; x < W; x++) {
      002449 78 33            [12] 1214 	mov	r0,#_x
      00244B 06               [12] 1215 	inc	@r0
      00244C B6 00 02         [24] 1216 	cjne	@r0,#0x00,00449$
      00244F 08               [12] 1217 	inc	r0
      002450 06               [12] 1218 	inc	@r0
      002451                       1219 00449$:
      002451 78 33            [12] 1220 	mov	r0,#_x
      002453 C3               [12] 1221 	clr	c
      002454 E6               [12] 1222 	mov	a,@r0
      002455 94 20            [12] 1223 	subb	a,#0x20
      002457 08               [12] 1224 	inc	r0
      002458 E6               [12] 1225 	mov	a,@r0
      002459 64 80            [12] 1226 	xrl	a,#0x80
      00245B 94 80            [12] 1227 	subb	a,#0x80
      00245D 50 03            [24] 1228 	jnc	00450$
      00245F 02 23 B0         [24] 1229 	ljmp	00151$
      002462                       1230 00450$:
      002462                       1231 00193$:
                                   1232 ;	life.c:129: for (y = 0; y < H; y++) {
      002462 78 35            [12] 1233 	mov	r0,#_y
      002464 06               [12] 1234 	inc	@r0
      002465 B6 00 02         [24] 1235 	cjne	@r0,#0x00,00451$
      002468 08               [12] 1236 	inc	r0
      002469 06               [12] 1237 	inc	@r0
      00246A                       1238 00451$:
      00246A 78 35            [12] 1239 	mov	r0,#_y
      00246C C3               [12] 1240 	clr	c
      00246D E6               [12] 1241 	mov	a,@r0
      00246E 94 40            [12] 1242 	subb	a,#0x40
      002470 08               [12] 1243 	inc	r0
      002471 E6               [12] 1244 	mov	a,@r0
      002472 64 80            [12] 1245 	xrl	a,#0x80
      002474 94 80            [12] 1246 	subb	a,#0x80
      002476 50 03            [24] 1247 	jnc	00452$
      002478 02 23 AA         [24] 1248 	ljmp	00192$
      00247B                       1249 00452$:
                                   1250 ;	life.c:150: out:
      00247B                       1251 00164$:
                                   1252 ;	life.c:151: if (c != (int)'#')
      00247B BE 23 05         [24] 1253 	cjne	r6,#0x23,00453$
      00247E BF 00 02         [24] 1254 	cjne	r7,#0x00,00453$
      002481 80 14            [24] 1255 	sjmp	00163$
      002483                       1256 00453$:
                                   1257 ;	life.c:152: while (1) {
      002483                       1258 00160$:
                                   1259 ;	life.c:153: c = getchar();
      002483 12 20 CA         [24] 1260 	lcall	_getchar
      002486 AE 82            [24] 1261 	mov	r6,dpl
      002488 AF 83            [24] 1262 	mov	r7,dph
      00248A 78 39            [12] 1263 	mov	r0,#_c
      00248C A6 06            [24] 1264 	mov	@r0,ar6
      00248E 08               [12] 1265 	inc	r0
      00248F A6 07            [24] 1266 	mov	@r0,ar7
                                   1267 ;	life.c:154: if (c == (int)'#') break;
      002491 BE 23 EF         [24] 1268 	cjne	r6,#0x23,00160$
      002494 BF 00 EC         [24] 1269 	cjne	r7,#0x00,00160$
      002497                       1270 00163$:
                                   1271 ;	life.c:156: print16x(j);
      002497 78 37            [12] 1272 	mov	r0,#_j
      002499 86 06            [24] 1273 	mov	ar6,@r0
      00249B 08               [12] 1274 	inc	r0
      00249C 86 07            [24] 1275 	mov	ar7,@r0
      00249E 8E 04            [24] 1276 	mov	ar4,r6
                                   1277 ;	life.c:38: putchar(digits[(a >> 12) & 0xf]);
      0024A0 EF               [12] 1278 	mov	a,r7
      0024A1 FD               [12] 1279 	mov	r5,a
      0024A2 C4               [12] 1280 	swap	a
      0024A3 54 0F            [12] 1281 	anl	a,#0x0f
      0024A5 30 E3 02         [24] 1282 	jnb	acc.3,00456$
      0024A8 44 F0            [12] 1283 	orl	a,#0xf0
      0024AA                       1284 00456$:
      0024AA FE               [12] 1285 	mov	r6,a
      0024AB 33               [12] 1286 	rlc	a
      0024AC 95 E0            [12] 1287 	subb	a,acc
      0024AE 53 06 0F         [24] 1288 	anl	ar6,#0x0f
      0024B1 EE               [12] 1289 	mov	a,r6
      0024B2 24 21            [12] 1290 	add	a,#_digits
      0024B4 F9               [12] 1291 	mov	r1,a
      0024B5 87 07            [24] 1292 	mov	ar7,@r1
      0024B7 7E 00            [12] 1293 	mov	r6,#0x00
      0024B9 8F 82            [24] 1294 	mov	dpl,r7
      0024BB 8E 83            [24] 1295 	mov	dph,r6
      0024BD 12 20 C5         [24] 1296 	lcall	_putchar
                                   1297 ;	life.c:39: putchar(digits[(a >> 8) & 0xf]);
      0024C0 8D 07            [24] 1298 	mov	ar7,r5
      0024C2 53 07 0F         [24] 1299 	anl	ar7,#0x0f
      0024C5 EF               [12] 1300 	mov	a,r7
      0024C6 24 21            [12] 1301 	add	a,#_digits
      0024C8 F9               [12] 1302 	mov	r1,a
      0024C9 87 07            [24] 1303 	mov	ar7,@r1
      0024CB 7E 00            [12] 1304 	mov	r6,#0x00
      0024CD 8F 82            [24] 1305 	mov	dpl,r7
      0024CF 8E 83            [24] 1306 	mov	dph,r6
      0024D1 12 20 C5         [24] 1307 	lcall	_putchar
                                   1308 ;	life.c:40: putchar(digits[(a >> 4) & 0xf]);
      0024D4 8C 06            [24] 1309 	mov	ar6,r4
      0024D6 ED               [12] 1310 	mov	a,r5
      0024D7 C4               [12] 1311 	swap	a
      0024D8 CE               [12] 1312 	xch	a,r6
      0024D9 C4               [12] 1313 	swap	a
      0024DA 54 0F            [12] 1314 	anl	a,#0x0f
      0024DC 6E               [12] 1315 	xrl	a,r6
      0024DD CE               [12] 1316 	xch	a,r6
      0024DE 54 0F            [12] 1317 	anl	a,#0x0f
      0024E0 CE               [12] 1318 	xch	a,r6
      0024E1 6E               [12] 1319 	xrl	a,r6
      0024E2 CE               [12] 1320 	xch	a,r6
      0024E3 30 E3 02         [24] 1321 	jnb	acc.3,00457$
      0024E6 44 F0            [12] 1322 	orl	a,#0xf0
      0024E8                       1323 00457$:
      0024E8 53 06 0F         [24] 1324 	anl	ar6,#0x0f
      0024EB EE               [12] 1325 	mov	a,r6
      0024EC 24 21            [12] 1326 	add	a,#_digits
      0024EE F9               [12] 1327 	mov	r1,a
      0024EF 87 07            [24] 1328 	mov	ar7,@r1
      0024F1 7E 00            [12] 1329 	mov	r6,#0x00
      0024F3 8F 82            [24] 1330 	mov	dpl,r7
      0024F5 8E 83            [24] 1331 	mov	dph,r6
      0024F7 12 20 C5         [24] 1332 	lcall	_putchar
                                   1333 ;	life.c:41: putchar(digits[a & 0xf]);
      0024FA 53 04 0F         [24] 1334 	anl	ar4,#0x0f
      0024FD EC               [12] 1335 	mov	a,r4
      0024FE 24 21            [12] 1336 	add	a,#_digits
      002500 F9               [12] 1337 	mov	r1,a
      002501 87 07            [24] 1338 	mov	ar7,@r1
      002503 7E 00            [12] 1339 	mov	r6,#0x00
      002505 8F 82            [24] 1340 	mov	dpl,r7
      002507 8E 83            [24] 1341 	mov	dph,r6
      002509 12 20 C5         [24] 1342 	lcall	_putchar
                                   1343 ;	life.c:157: printstr(">\r\n");
      00250C 7D 1B            [12] 1344 	mov	r5,#___str_3
      00250E 7E 2D            [12] 1345 	mov	r6,#(___str_3 >> 8)
      002510 7F 80            [12] 1346 	mov	r7,#0x80
                                   1347 ;	life.c:49: return;
      002512                       1348 00195$:
                                   1349 ;	life.c:47: for (; *s; s++) putchar(*s);
      002512 8D 82            [24] 1350 	mov	dpl,r5
      002514 8E 83            [24] 1351 	mov	dph,r6
      002516 8F F0            [24] 1352 	mov	b,r7
      002518 12 2B DD         [24] 1353 	lcall	__gptrget
      00251B FC               [12] 1354 	mov	r4,a
      00251C 60 10            [24] 1355 	jz	00167$
      00251E 7B 00            [12] 1356 	mov	r3,#0x00
      002520 8C 82            [24] 1357 	mov	dpl,r4
      002522 8B 83            [24] 1358 	mov	dph,r3
      002524 12 20 C5         [24] 1359 	lcall	_putchar
      002527 0D               [12] 1360 	inc	r5
                                   1361 ;	life.c:157: printstr(">\r\n");
      002528 BD 00 E7         [24] 1362 	cjne	r5,#0x00,00195$
      00252B 0E               [12] 1363 	inc	r6
      00252C 80 E4            [24] 1364 	sjmp	00195$
      00252E                       1365 00167$:
                                   1366 ;	life.c:227: show(0);
      00252E 75 82 00         [24] 1367 	mov	dpl,#0x00
      002531 12 20 EB         [24] 1368 	lcall	_show
                                   1369 ;	life.c:229: printstr("READY\r\n");
      002534 7D 32            [12] 1370 	mov	r5,#___str_5
      002536 7E 2D            [12] 1371 	mov	r6,#(___str_5 >> 8)
      002538 7F 80            [12] 1372 	mov	r7,#0x80
                                   1373 ;	life.c:49: return;
      00253A                       1374 00198$:
                                   1375 ;	life.c:47: for (; *s; s++) putchar(*s);
      00253A 8D 82            [24] 1376 	mov	dpl,r5
      00253C 8E 83            [24] 1377 	mov	dph,r6
      00253E 8F F0            [24] 1378 	mov	b,r7
      002540 12 2B DD         [24] 1379 	lcall	__gptrget
      002543 FC               [12] 1380 	mov	r4,a
      002544 60 10            [24] 1381 	jz	00121$
      002546 7B 00            [12] 1382 	mov	r3,#0x00
      002548 8C 82            [24] 1383 	mov	dpl,r4
      00254A 8B 83            [24] 1384 	mov	dph,r3
      00254C 12 20 C5         [24] 1385 	lcall	_putchar
      00254F 0D               [12] 1386 	inc	r5
                                   1387 ;	life.c:230: while (1) {
      002550 BD 00 E7         [24] 1388 	cjne	r5,#0x00,00198$
      002553 0E               [12] 1389 	inc	r6
      002554 80 E4            [24] 1390 	sjmp	00198$
      002556                       1391 00121$:
                                   1392 ;	life.c:231: c = toupper(getchar());
      002556 12 20 CA         [24] 1393 	lcall	_getchar
      002559 12 2B B6         [24] 1394 	lcall	_toupper
      00255C AE 82            [24] 1395 	mov	r6,dpl
      00255E AF 83            [24] 1396 	mov	r7,dph
      002560 78 39            [12] 1397 	mov	r0,#_c
      002562 A6 06            [24] 1398 	mov	@r0,ar6
      002564 08               [12] 1399 	inc	r0
      002565 A6 07            [24] 1400 	mov	@r0,ar7
                                   1401 ;	life.c:232: if (i0 || (c == (int)'T')) goto terminate;
      002567 78 31            [12] 1402 	mov	r0,#_i0
      002569 E6               [12] 1403 	mov	a,@r0
      00256A 60 03            [24] 1404 	jz	00462$
      00256C 02 2A 89         [24] 1405 	ljmp	00133$
      00256F                       1406 00462$:
      00256F BE 54 06         [24] 1407 	cjne	r6,#0x54,00463$
      002572 BF 00 03         [24] 1408 	cjne	r7,#0x00,00463$
      002575 02 2A 89         [24] 1409 	ljmp	00133$
      002578                       1410 00463$:
                                   1411 ;	life.c:233: else if (c == (int)'L') goto reload;
      002578 BE 4C 06         [24] 1412 	cjne	r6,#0x4c,00464$
      00257B BF 00 03         [24] 1413 	cjne	r7,#0x00,00464$
      00257E 02 23 4A         [24] 1414 	ljmp	00110$
      002581                       1415 00464$:
                                   1416 ;	life.c:234: else if (c == (int)'S') break;
      002581 BE 53 D2         [24] 1417 	cjne	r6,#0x53,00121$
      002584 BF 00 CF         [24] 1418 	cjne	r7,#0x00,00121$
                                   1419 ;	life.c:76: generation[0] = 0;
      002587 78 43            [12] 1420 	mov	r0,#_generation
      002589 76 00            [12] 1421 	mov	@r0,#0x00
      00258B 08               [12] 1422 	inc	r0
      00258C 76 00            [12] 1423 	mov	@r0,#0x00
                                   1424 ;	life.c:77: generation[1] = 0;
      00258E 78 45            [12] 1425 	mov	r0,#(_generation + 0x0002)
      002590 76 00            [12] 1426 	mov	@r0,#0x00
      002592 08               [12] 1427 	inc	r0
      002593 76 00            [12] 1428 	mov	@r0,#0x00
                                   1429 ;	life.c:239: for (i1 = 0; !i0 && !i1; ) {
      002595 78 32            [12] 1430 	mov	r0,#_i1
      002597 76 00            [12] 1431 	mov	@r0,#0x00
      002599                       1432 00215$:
      002599 78 31            [12] 1433 	mov	r0,#_i0
      00259B E6               [12] 1434 	mov	a,@r0
      00259C 60 03            [24] 1435 	jz	00467$
      00259E 02 2A 57         [24] 1436 	ljmp	00129$
      0025A1                       1437 00467$:
      0025A1 78 32            [12] 1438 	mov	r0,#_i1
      0025A3 E6               [12] 1439 	mov	a,@r0
      0025A4 60 03            [24] 1440 	jz	00468$
      0025A6 02 2A 57         [24] 1441 	ljmp	00129$
      0025A9                       1442 00468$:
                                   1443 ;	life.c:240: show(1);
      0025A9 75 82 01         [24] 1444 	mov	dpl,#0x01
      0025AC 12 20 EB         [24] 1445 	lcall	_show
                                   1446 ;	life.c:165: fixed = 0;
      0025AF 78 3D            [12] 1447 	mov	r0,#_fixed
      0025B1 76 00            [12] 1448 	mov	@r0,#0x00
                                   1449 ;	life.c:166: cycle2 = 0;
      0025B3 78 3E            [12] 1450 	mov	r0,#_cycle2
      0025B5 76 00            [12] 1451 	mov	@r0,#0x00
                                   1452 ;	life.c:167: bstep = 0;
      0025B7 78 3B            [12] 1453 	mov	r0,#_bstep
      0025B9 76 00            [12] 1454 	mov	@r0,#0x00
                                   1455 ;	life.c:169: for (y = 0; y < H; y++) {
      0025BB 78 35            [12] 1456 	mov	r0,#_y
      0025BD E4               [12] 1457 	clr	a
      0025BE F6               [12] 1458 	mov	@r0,a
      0025BF 08               [12] 1459 	inc	r0
      0025C0 F6               [12] 1460 	mov	@r0,a
      0025C1                       1461 00202$:
                                   1462 ;	life.c:170: putchar(busy[bstep]); putchar('\r');
      0025C1 78 3B            [12] 1463 	mov	r0,#_bstep
      0025C3 E6               [12] 1464 	mov	a,@r0
      0025C4 24 47            [12] 1465 	add	a,#_busy
      0025C6 F9               [12] 1466 	mov	r1,a
      0025C7 87 07            [24] 1467 	mov	ar7,@r1
      0025C9 7E 00            [12] 1468 	mov	r6,#0x00
      0025CB 8F 82            [24] 1469 	mov	dpl,r7
      0025CD 8E 83            [24] 1470 	mov	dph,r6
      0025CF 12 20 C5         [24] 1471 	lcall	_putchar
      0025D2 90 00 0D         [24] 1472 	mov	dptr,#0x000d
      0025D5 12 20 C5         [24] 1473 	lcall	_putchar
                                   1474 ;	life.c:171: bstep = (bstep + 1) & 3;
      0025D8 78 3B            [12] 1475 	mov	r0,#_bstep
      0025DA 86 07            [24] 1476 	mov	ar7,@r0
      0025DC 0F               [12] 1477 	inc	r7
      0025DD 78 3B            [12] 1478 	mov	r0,#_bstep
      0025DF 74 03            [12] 1479 	mov	a,#0x03
      0025E1 5F               [12] 1480 	anl	a,r7
      0025E2 F6               [12] 1481 	mov	@r0,a
                                   1482 ;	life.c:172: for (x = 0; x < W; x++) {
      0025E3 78 33            [12] 1483 	mov	r0,#_x
      0025E5 E4               [12] 1484 	clr	a
      0025E6 F6               [12] 1485 	mov	@r0,a
      0025E7 08               [12] 1486 	inc	r0
      0025E8 F6               [12] 1487 	mov	@r0,a
      0025E9                       1488 00200$:
                                   1489 ;	life.c:173: n = -u[A2D(W, y, x)];
      0025E9 78 35            [12] 1490 	mov	r0,#_y
      0025EB E5 10            [12] 1491 	mov	a,_bp
      0025ED 24 03            [12] 1492 	add	a,#0x03
      0025EF F9               [12] 1493 	mov	r1,a
      0025F0 E6               [12] 1494 	mov	a,@r0
      0025F1 F7               [12] 1495 	mov	@r1,a
      0025F2 08               [12] 1496 	inc	r0
      0025F3 E6               [12] 1497 	mov	a,@r0
      0025F4 C4               [12] 1498 	swap	a
      0025F5 23               [12] 1499 	rl	a
      0025F6 54 E0            [12] 1500 	anl	a,#0xe0
      0025F8 C7               [12] 1501 	xch	a,@r1
      0025F9 C4               [12] 1502 	swap	a
      0025FA 23               [12] 1503 	rl	a
      0025FB C7               [12] 1504 	xch	a,@r1
      0025FC 67               [12] 1505 	xrl	a,@r1
      0025FD C7               [12] 1506 	xch	a,@r1
      0025FE 54 E0            [12] 1507 	anl	a,#0xe0
      002600 C7               [12] 1508 	xch	a,@r1
      002601 67               [12] 1509 	xrl	a,@r1
      002602 09               [12] 1510 	inc	r1
      002603 F7               [12] 1511 	mov	@r1,a
      002604 E5 10            [12] 1512 	mov	a,_bp
      002606 24 03            [12] 1513 	add	a,#0x03
      002608 F8               [12] 1514 	mov	r0,a
      002609 79 33            [12] 1515 	mov	r1,#_x
      00260B E7               [12] 1516 	mov	a,@r1
      00260C 26               [12] 1517 	add	a,@r0
      00260D C0 E0            [24] 1518 	push	acc
      00260F 09               [12] 1519 	inc	r1
      002610 E7               [12] 1520 	mov	a,@r1
      002611 08               [12] 1521 	inc	r0
      002612 36               [12] 1522 	addc	a,@r0
      002613 C0 E0            [24] 1523 	push	acc
      002615 A8 10            [24] 1524 	mov	r0,_bp
      002617 08               [12] 1525 	inc	r0
      002618 08               [12] 1526 	inc	r0
      002619 D0 E0            [24] 1527 	pop	acc
      00261B F6               [12] 1528 	mov	@r0,a
      00261C 18               [12] 1529 	dec	r0
      00261D D0 E0            [24] 1530 	pop	acc
      00261F F6               [12] 1531 	mov	@r0,a
      002620 A8 10            [24] 1532 	mov	r0,_bp
      002622 08               [12] 1533 	inc	r0
      002623 E6               [12] 1534 	mov	a,@r0
      002624 24 00            [12] 1535 	add	a,#_u
      002626 F5 82            [12] 1536 	mov	dpl,a
      002628 08               [12] 1537 	inc	r0
      002629 E6               [12] 1538 	mov	a,@r0
      00262A 34 48            [12] 1539 	addc	a,#(_u >> 8)
      00262C F5 83            [12] 1540 	mov	dph,a
      00262E E0               [24] 1541 	movx	a,@dptr
      00262F FB               [12] 1542 	mov	r3,a
      002630 C3               [12] 1543 	clr	c
      002631 E4               [12] 1544 	clr	a
      002632 9B               [12] 1545 	subb	a,r3
      002633 FB               [12] 1546 	mov	r3,a
                                   1547 ;	life.c:176: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      002634 78 35            [12] 1548 	mov	r0,#_y
      002636 74 FF            [12] 1549 	mov	a,#0xff
      002638 26               [12] 1550 	add	a,@r0
      002639 FA               [12] 1551 	mov	r2,a
      00263A 74 FF            [12] 1552 	mov	a,#0xff
      00263C 08               [12] 1553 	inc	r0
      00263D 36               [12] 1554 	addc	a,@r0
      00263E FD               [12] 1555 	mov	r5,a
      00263F 74 40            [12] 1556 	mov	a,#0x40
      002641 2A               [12] 1557 	add	a,r2
      002642 FA               [12] 1558 	mov	r2,a
      002643 E4               [12] 1559 	clr	a
      002644 3D               [12] 1560 	addc	a,r5
      002645 FD               [12] 1561 	mov	r5,a
      002646 C0 03            [24] 1562 	push	ar3
      002648 74 40            [12] 1563 	mov	a,#0x40
      00264A C0 E0            [24] 1564 	push	acc
      00264C E4               [12] 1565 	clr	a
      00264D C0 E0            [24] 1566 	push	acc
      00264F 8A 82            [24] 1567 	mov	dpl,r2
      002651 8D 83            [24] 1568 	mov	dph,r5
      002653 12 2B F9         [24] 1569 	lcall	__modsint
      002656 AC 82            [24] 1570 	mov	r4,dpl
      002658 AD 83            [24] 1571 	mov	r5,dph
      00265A 15 81            [12] 1572 	dec	sp
      00265C 15 81            [12] 1573 	dec	sp
      00265E D0 03            [24] 1574 	pop	ar3
      002660 ED               [12] 1575 	mov	a,r5
      002661 C4               [12] 1576 	swap	a
      002662 23               [12] 1577 	rl	a
      002663 54 E0            [12] 1578 	anl	a,#0xe0
      002665 CC               [12] 1579 	xch	a,r4
      002666 C4               [12] 1580 	swap	a
      002667 23               [12] 1581 	rl	a
      002668 CC               [12] 1582 	xch	a,r4
      002669 6C               [12] 1583 	xrl	a,r4
      00266A CC               [12] 1584 	xch	a,r4
      00266B 54 E0            [12] 1585 	anl	a,#0xe0
      00266D CC               [12] 1586 	xch	a,r4
      00266E 6C               [12] 1587 	xrl	a,r4
      00266F FD               [12] 1588 	mov	r5,a
      002670 78 33            [12] 1589 	mov	r0,#_x
      002672 74 FF            [12] 1590 	mov	a,#0xff
      002674 26               [12] 1591 	add	a,@r0
      002675 FA               [12] 1592 	mov	r2,a
      002676 74 FF            [12] 1593 	mov	a,#0xff
      002678 08               [12] 1594 	inc	r0
      002679 36               [12] 1595 	addc	a,@r0
      00267A FF               [12] 1596 	mov	r7,a
      00267B 74 20            [12] 1597 	mov	a,#0x20
      00267D 2A               [12] 1598 	add	a,r2
      00267E FA               [12] 1599 	mov	r2,a
      00267F E4               [12] 1600 	clr	a
      002680 3F               [12] 1601 	addc	a,r7
      002681 FF               [12] 1602 	mov	r7,a
      002682 C0 05            [24] 1603 	push	ar5
      002684 C0 04            [24] 1604 	push	ar4
      002686 C0 03            [24] 1605 	push	ar3
      002688 74 20            [12] 1606 	mov	a,#0x20
      00268A C0 E0            [24] 1607 	push	acc
      00268C E4               [12] 1608 	clr	a
      00268D C0 E0            [24] 1609 	push	acc
      00268F 8A 82            [24] 1610 	mov	dpl,r2
      002691 8F 83            [24] 1611 	mov	dph,r7
      002693 12 2B F9         [24] 1612 	lcall	__modsint
      002696 C8               [12] 1613 	xch	a,r0
      002697 E5 10            [12] 1614 	mov	a,_bp
      002699 24 05            [12] 1615 	add	a,#0x05
      00269B C8               [12] 1616 	xch	a,r0
      00269C A6 82            [24] 1617 	mov	@r0,dpl
      00269E 08               [12] 1618 	inc	r0
      00269F A6 83            [24] 1619 	mov	@r0,dph
      0026A1 15 81            [12] 1620 	dec	sp
      0026A3 15 81            [12] 1621 	dec	sp
      0026A5 D0 03            [24] 1622 	pop	ar3
      0026A7 D0 04            [24] 1623 	pop	ar4
      0026A9 D0 05            [24] 1624 	pop	ar5
      0026AB E5 10            [12] 1625 	mov	a,_bp
      0026AD 24 05            [12] 1626 	add	a,#0x05
      0026AF F8               [12] 1627 	mov	r0,a
      0026B0 E6               [12] 1628 	mov	a,@r0
      0026B1 2C               [12] 1629 	add	a,r4
      0026B2 FA               [12] 1630 	mov	r2,a
      0026B3 08               [12] 1631 	inc	r0
      0026B4 E6               [12] 1632 	mov	a,@r0
      0026B5 3D               [12] 1633 	addc	a,r5
      0026B6 FF               [12] 1634 	mov	r7,a
      0026B7 EA               [12] 1635 	mov	a,r2
      0026B8 24 00            [12] 1636 	add	a,#_u
      0026BA F5 82            [12] 1637 	mov	dpl,a
      0026BC EF               [12] 1638 	mov	a,r7
      0026BD 34 48            [12] 1639 	addc	a,#(_u >> 8)
      0026BF F5 83            [12] 1640 	mov	dph,a
      0026C1 E0               [24] 1641 	movx	a,@dptr
      0026C2 2B               [12] 1642 	add	a,r3
      0026C3 FB               [12] 1643 	mov	r3,a
                                   1644 ;	life.c:178: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      0026C4 78 33            [12] 1645 	mov	r0,#_x
      0026C6 E5 10            [12] 1646 	mov	a,_bp
      0026C8 24 07            [12] 1647 	add	a,#0x07
      0026CA F9               [12] 1648 	mov	r1,a
      0026CB E6               [12] 1649 	mov	a,@r0
      0026CC F7               [12] 1650 	mov	@r1,a
      0026CD 08               [12] 1651 	inc	r0
      0026CE 09               [12] 1652 	inc	r1
      0026CF E6               [12] 1653 	mov	a,@r0
      0026D0 F7               [12] 1654 	mov	@r1,a
      0026D1 E5 10            [12] 1655 	mov	a,_bp
      0026D3 24 07            [12] 1656 	add	a,#0x07
      0026D5 F8               [12] 1657 	mov	r0,a
      0026D6 74 20            [12] 1658 	mov	a,#0x20
      0026D8 26               [12] 1659 	add	a,@r0
      0026D9 FA               [12] 1660 	mov	r2,a
      0026DA E4               [12] 1661 	clr	a
      0026DB 08               [12] 1662 	inc	r0
      0026DC 36               [12] 1663 	addc	a,@r0
      0026DD FF               [12] 1664 	mov	r7,a
      0026DE C0 05            [24] 1665 	push	ar5
      0026E0 C0 04            [24] 1666 	push	ar4
      0026E2 C0 03            [24] 1667 	push	ar3
      0026E4 74 20            [12] 1668 	mov	a,#0x20
      0026E6 C0 E0            [24] 1669 	push	acc
      0026E8 E4               [12] 1670 	clr	a
      0026E9 C0 E0            [24] 1671 	push	acc
      0026EB 8A 82            [24] 1672 	mov	dpl,r2
      0026ED 8F 83            [24] 1673 	mov	dph,r7
      0026EF 12 2B F9         [24] 1674 	lcall	__modsint
      0026F2 C8               [12] 1675 	xch	a,r0
      0026F3 E5 10            [12] 1676 	mov	a,_bp
      0026F5 24 09            [12] 1677 	add	a,#0x09
      0026F7 C8               [12] 1678 	xch	a,r0
      0026F8 A6 82            [24] 1679 	mov	@r0,dpl
      0026FA 08               [12] 1680 	inc	r0
      0026FB A6 83            [24] 1681 	mov	@r0,dph
      0026FD 15 81            [12] 1682 	dec	sp
      0026FF 15 81            [12] 1683 	dec	sp
      002701 D0 03            [24] 1684 	pop	ar3
      002703 D0 04            [24] 1685 	pop	ar4
      002705 D0 05            [24] 1686 	pop	ar5
      002707 E5 10            [12] 1687 	mov	a,_bp
      002709 24 09            [12] 1688 	add	a,#0x09
      00270B F8               [12] 1689 	mov	r0,a
      00270C E6               [12] 1690 	mov	a,@r0
      00270D 2C               [12] 1691 	add	a,r4
      00270E FA               [12] 1692 	mov	r2,a
      00270F 08               [12] 1693 	inc	r0
      002710 E6               [12] 1694 	mov	a,@r0
      002711 3D               [12] 1695 	addc	a,r5
      002712 FF               [12] 1696 	mov	r7,a
      002713 EA               [12] 1697 	mov	a,r2
      002714 24 00            [12] 1698 	add	a,#_u
      002716 F5 82            [12] 1699 	mov	dpl,a
      002718 EF               [12] 1700 	mov	a,r7
      002719 34 48            [12] 1701 	addc	a,#(_u >> 8)
      00271B F5 83            [12] 1702 	mov	dph,a
      00271D E0               [24] 1703 	movx	a,@dptr
      00271E 2B               [12] 1704 	add	a,r3
      00271F FB               [12] 1705 	mov	r3,a
                                   1706 ;	life.c:180: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      002720 E5 10            [12] 1707 	mov	a,_bp
      002722 24 07            [12] 1708 	add	a,#0x07
      002724 F8               [12] 1709 	mov	r0,a
      002725 74 21            [12] 1710 	mov	a,#0x21
      002727 26               [12] 1711 	add	a,@r0
      002728 FE               [12] 1712 	mov	r6,a
      002729 E4               [12] 1713 	clr	a
      00272A 08               [12] 1714 	inc	r0
      00272B 36               [12] 1715 	addc	a,@r0
      00272C FF               [12] 1716 	mov	r7,a
      00272D C0 05            [24] 1717 	push	ar5
      00272F C0 04            [24] 1718 	push	ar4
      002731 C0 03            [24] 1719 	push	ar3
      002733 74 20            [12] 1720 	mov	a,#0x20
      002735 C0 E0            [24] 1721 	push	acc
      002737 E4               [12] 1722 	clr	a
      002738 C0 E0            [24] 1723 	push	acc
      00273A 8E 82            [24] 1724 	mov	dpl,r6
      00273C 8F 83            [24] 1725 	mov	dph,r7
      00273E 12 2B F9         [24] 1726 	lcall	__modsint
      002741 AE 82            [24] 1727 	mov	r6,dpl
      002743 AF 83            [24] 1728 	mov	r7,dph
      002745 15 81            [12] 1729 	dec	sp
      002747 15 81            [12] 1730 	dec	sp
      002749 D0 03            [24] 1731 	pop	ar3
      00274B D0 04            [24] 1732 	pop	ar4
      00274D D0 05            [24] 1733 	pop	ar5
      00274F EE               [12] 1734 	mov	a,r6
      002750 2C               [12] 1735 	add	a,r4
      002751 FC               [12] 1736 	mov	r4,a
      002752 EF               [12] 1737 	mov	a,r7
      002753 3D               [12] 1738 	addc	a,r5
      002754 FD               [12] 1739 	mov	r5,a
      002755 EC               [12] 1740 	mov	a,r4
      002756 24 00            [12] 1741 	add	a,#_u
      002758 F5 82            [12] 1742 	mov	dpl,a
      00275A ED               [12] 1743 	mov	a,r5
      00275B 34 48            [12] 1744 	addc	a,#(_u >> 8)
      00275D F5 83            [12] 1745 	mov	dph,a
      00275F E0               [24] 1746 	movx	a,@dptr
      002760 2B               [12] 1747 	add	a,r3
      002761 FB               [12] 1748 	mov	r3,a
                                   1749 ;	life.c:182: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      002762 78 35            [12] 1750 	mov	r0,#_y
      002764 E5 10            [12] 1751 	mov	a,_bp
      002766 24 0B            [12] 1752 	add	a,#0x0b
      002768 F9               [12] 1753 	mov	r1,a
      002769 E6               [12] 1754 	mov	a,@r0
      00276A F7               [12] 1755 	mov	@r1,a
      00276B 08               [12] 1756 	inc	r0
      00276C 09               [12] 1757 	inc	r1
      00276D E6               [12] 1758 	mov	a,@r0
      00276E F7               [12] 1759 	mov	@r1,a
      00276F E5 10            [12] 1760 	mov	a,_bp
      002771 24 0B            [12] 1761 	add	a,#0x0b
      002773 F8               [12] 1762 	mov	r0,a
      002774 74 40            [12] 1763 	mov	a,#0x40
      002776 26               [12] 1764 	add	a,@r0
      002777 FA               [12] 1765 	mov	r2,a
      002778 E4               [12] 1766 	clr	a
      002779 08               [12] 1767 	inc	r0
      00277A 36               [12] 1768 	addc	a,@r0
      00277B FD               [12] 1769 	mov	r5,a
      00277C C0 07            [24] 1770 	push	ar7
      00277E C0 06            [24] 1771 	push	ar6
      002780 C0 03            [24] 1772 	push	ar3
      002782 74 40            [12] 1773 	mov	a,#0x40
      002784 C0 E0            [24] 1774 	push	acc
      002786 E4               [12] 1775 	clr	a
      002787 C0 E0            [24] 1776 	push	acc
      002789 8A 82            [24] 1777 	mov	dpl,r2
      00278B 8D 83            [24] 1778 	mov	dph,r5
      00278D 12 2B F9         [24] 1779 	lcall	__modsint
      002790 AC 82            [24] 1780 	mov	r4,dpl
      002792 AD 83            [24] 1781 	mov	r5,dph
      002794 15 81            [12] 1782 	dec	sp
      002796 15 81            [12] 1783 	dec	sp
      002798 D0 03            [24] 1784 	pop	ar3
      00279A D0 06            [24] 1785 	pop	ar6
      00279C D0 07            [24] 1786 	pop	ar7
      00279E E5 10            [12] 1787 	mov	a,_bp
      0027A0 24 0D            [12] 1788 	add	a,#0x0d
      0027A2 F8               [12] 1789 	mov	r0,a
      0027A3 A6 04            [24] 1790 	mov	@r0,ar4
      0027A5 ED               [12] 1791 	mov	a,r5
      0027A6 C4               [12] 1792 	swap	a
      0027A7 23               [12] 1793 	rl	a
      0027A8 54 E0            [12] 1794 	anl	a,#0xe0
      0027AA C6               [12] 1795 	xch	a,@r0
      0027AB C4               [12] 1796 	swap	a
      0027AC 23               [12] 1797 	rl	a
      0027AD C6               [12] 1798 	xch	a,@r0
      0027AE 66               [12] 1799 	xrl	a,@r0
      0027AF C6               [12] 1800 	xch	a,@r0
      0027B0 54 E0            [12] 1801 	anl	a,#0xe0
      0027B2 C6               [12] 1802 	xch	a,@r0
      0027B3 66               [12] 1803 	xrl	a,@r0
      0027B4 08               [12] 1804 	inc	r0
      0027B5 F6               [12] 1805 	mov	@r0,a
      0027B6 E5 10            [12] 1806 	mov	a,_bp
      0027B8 24 0D            [12] 1807 	add	a,#0x0d
      0027BA F8               [12] 1808 	mov	r0,a
      0027BB E5 10            [12] 1809 	mov	a,_bp
      0027BD 24 05            [12] 1810 	add	a,#0x05
      0027BF F9               [12] 1811 	mov	r1,a
      0027C0 E7               [12] 1812 	mov	a,@r1
      0027C1 26               [12] 1813 	add	a,@r0
      0027C2 FA               [12] 1814 	mov	r2,a
      0027C3 09               [12] 1815 	inc	r1
      0027C4 E7               [12] 1816 	mov	a,@r1
      0027C5 08               [12] 1817 	inc	r0
      0027C6 36               [12] 1818 	addc	a,@r0
      0027C7 FD               [12] 1819 	mov	r5,a
      0027C8 EA               [12] 1820 	mov	a,r2
      0027C9 24 00            [12] 1821 	add	a,#_u
      0027CB F5 82            [12] 1822 	mov	dpl,a
      0027CD ED               [12] 1823 	mov	a,r5
      0027CE 34 48            [12] 1824 	addc	a,#(_u >> 8)
      0027D0 F5 83            [12] 1825 	mov	dph,a
      0027D2 E0               [24] 1826 	movx	a,@dptr
      0027D3 2B               [12] 1827 	add	a,r3
      0027D4 FB               [12] 1828 	mov	r3,a
                                   1829 ;	life.c:184: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      0027D5 E5 10            [12] 1830 	mov	a,_bp
      0027D7 24 0D            [12] 1831 	add	a,#0x0d
      0027D9 F8               [12] 1832 	mov	r0,a
      0027DA E5 10            [12] 1833 	mov	a,_bp
      0027DC 24 09            [12] 1834 	add	a,#0x09
      0027DE F9               [12] 1835 	mov	r1,a
      0027DF E7               [12] 1836 	mov	a,@r1
      0027E0 26               [12] 1837 	add	a,@r0
      0027E1 FC               [12] 1838 	mov	r4,a
      0027E2 09               [12] 1839 	inc	r1
      0027E3 E7               [12] 1840 	mov	a,@r1
      0027E4 08               [12] 1841 	inc	r0
      0027E5 36               [12] 1842 	addc	a,@r0
      0027E6 FD               [12] 1843 	mov	r5,a
      0027E7 EC               [12] 1844 	mov	a,r4
      0027E8 24 00            [12] 1845 	add	a,#_u
      0027EA F5 82            [12] 1846 	mov	dpl,a
      0027EC ED               [12] 1847 	mov	a,r5
      0027ED 34 48            [12] 1848 	addc	a,#(_u >> 8)
      0027EF F5 83            [12] 1849 	mov	dph,a
      0027F1 E0               [24] 1850 	movx	a,@dptr
      0027F2 2B               [12] 1851 	add	a,r3
      0027F3 FB               [12] 1852 	mov	r3,a
                                   1853 ;	life.c:186: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      0027F4 E5 10            [12] 1854 	mov	a,_bp
      0027F6 24 0D            [12] 1855 	add	a,#0x0d
      0027F8 F8               [12] 1856 	mov	r0,a
      0027F9 EE               [12] 1857 	mov	a,r6
      0027FA 26               [12] 1858 	add	a,@r0
      0027FB FC               [12] 1859 	mov	r4,a
      0027FC EF               [12] 1860 	mov	a,r7
      0027FD 08               [12] 1861 	inc	r0
      0027FE 36               [12] 1862 	addc	a,@r0
      0027FF FD               [12] 1863 	mov	r5,a
      002800 EC               [12] 1864 	mov	a,r4
      002801 24 00            [12] 1865 	add	a,#_u
      002803 F5 82            [12] 1866 	mov	dpl,a
      002805 ED               [12] 1867 	mov	a,r5
      002806 34 48            [12] 1868 	addc	a,#(_u >> 8)
      002808 F5 83            [12] 1869 	mov	dph,a
      00280A E0               [24] 1870 	movx	a,@dptr
      00280B 2B               [12] 1871 	add	a,r3
      00280C FB               [12] 1872 	mov	r3,a
                                   1873 ;	life.c:188: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      00280D E5 10            [12] 1874 	mov	a,_bp
      00280F 24 0B            [12] 1875 	add	a,#0x0b
      002811 F8               [12] 1876 	mov	r0,a
      002812 74 41            [12] 1877 	mov	a,#0x41
      002814 26               [12] 1878 	add	a,@r0
      002815 FC               [12] 1879 	mov	r4,a
      002816 E4               [12] 1880 	clr	a
      002817 08               [12] 1881 	inc	r0
      002818 36               [12] 1882 	addc	a,@r0
      002819 FD               [12] 1883 	mov	r5,a
      00281A C0 07            [24] 1884 	push	ar7
      00281C C0 06            [24] 1885 	push	ar6
      00281E C0 03            [24] 1886 	push	ar3
      002820 74 40            [12] 1887 	mov	a,#0x40
      002822 C0 E0            [24] 1888 	push	acc
      002824 E4               [12] 1889 	clr	a
      002825 C0 E0            [24] 1890 	push	acc
      002827 8C 82            [24] 1891 	mov	dpl,r4
      002829 8D 83            [24] 1892 	mov	dph,r5
      00282B 12 2B F9         [24] 1893 	lcall	__modsint
      00282E AC 82            [24] 1894 	mov	r4,dpl
      002830 AD 83            [24] 1895 	mov	r5,dph
      002832 15 81            [12] 1896 	dec	sp
      002834 15 81            [12] 1897 	dec	sp
      002836 D0 03            [24] 1898 	pop	ar3
      002838 D0 06            [24] 1899 	pop	ar6
      00283A D0 07            [24] 1900 	pop	ar7
      00283C E5 10            [12] 1901 	mov	a,_bp
      00283E 24 0D            [12] 1902 	add	a,#0x0d
      002840 F8               [12] 1903 	mov	r0,a
      002841 A6 04            [24] 1904 	mov	@r0,ar4
      002843 ED               [12] 1905 	mov	a,r5
      002844 C4               [12] 1906 	swap	a
      002845 23               [12] 1907 	rl	a
      002846 54 E0            [12] 1908 	anl	a,#0xe0
      002848 C6               [12] 1909 	xch	a,@r0
      002849 C4               [12] 1910 	swap	a
      00284A 23               [12] 1911 	rl	a
      00284B C6               [12] 1912 	xch	a,@r0
      00284C 66               [12] 1913 	xrl	a,@r0
      00284D C6               [12] 1914 	xch	a,@r0
      00284E 54 E0            [12] 1915 	anl	a,#0xe0
      002850 C6               [12] 1916 	xch	a,@r0
      002851 66               [12] 1917 	xrl	a,@r0
      002852 08               [12] 1918 	inc	r0
      002853 F6               [12] 1919 	mov	@r0,a
      002854 E5 10            [12] 1920 	mov	a,_bp
      002856 24 0D            [12] 1921 	add	a,#0x0d
      002858 F8               [12] 1922 	mov	r0,a
      002859 E5 10            [12] 1923 	mov	a,_bp
      00285B 24 05            [12] 1924 	add	a,#0x05
      00285D F9               [12] 1925 	mov	r1,a
      00285E E7               [12] 1926 	mov	a,@r1
      00285F 26               [12] 1927 	add	a,@r0
      002860 FA               [12] 1928 	mov	r2,a
      002861 09               [12] 1929 	inc	r1
      002862 E7               [12] 1930 	mov	a,@r1
      002863 08               [12] 1931 	inc	r0
      002864 36               [12] 1932 	addc	a,@r0
      002865 FD               [12] 1933 	mov	r5,a
      002866 EA               [12] 1934 	mov	a,r2
      002867 24 00            [12] 1935 	add	a,#_u
      002869 F5 82            [12] 1936 	mov	dpl,a
      00286B ED               [12] 1937 	mov	a,r5
      00286C 34 48            [12] 1938 	addc	a,#(_u >> 8)
      00286E F5 83            [12] 1939 	mov	dph,a
      002870 E0               [24] 1940 	movx	a,@dptr
      002871 2B               [12] 1941 	add	a,r3
      002872 FB               [12] 1942 	mov	r3,a
                                   1943 ;	life.c:190: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      002873 E5 10            [12] 1944 	mov	a,_bp
      002875 24 0D            [12] 1945 	add	a,#0x0d
      002877 F8               [12] 1946 	mov	r0,a
      002878 E5 10            [12] 1947 	mov	a,_bp
      00287A 24 09            [12] 1948 	add	a,#0x09
      00287C F9               [12] 1949 	mov	r1,a
      00287D E7               [12] 1950 	mov	a,@r1
      00287E 26               [12] 1951 	add	a,@r0
      00287F FC               [12] 1952 	mov	r4,a
      002880 09               [12] 1953 	inc	r1
      002881 E7               [12] 1954 	mov	a,@r1
      002882 08               [12] 1955 	inc	r0
      002883 36               [12] 1956 	addc	a,@r0
      002884 FD               [12] 1957 	mov	r5,a
      002885 EC               [12] 1958 	mov	a,r4
      002886 24 00            [12] 1959 	add	a,#_u
      002888 F5 82            [12] 1960 	mov	dpl,a
      00288A ED               [12] 1961 	mov	a,r5
      00288B 34 48            [12] 1962 	addc	a,#(_u >> 8)
      00288D F5 83            [12] 1963 	mov	dph,a
      00288F E0               [24] 1964 	movx	a,@dptr
      002890 2B               [12] 1965 	add	a,r3
      002891 FB               [12] 1966 	mov	r3,a
                                   1967 ;	life.c:191: y1 = 1; x1 = 1;
      002892 78 41            [12] 1968 	mov	r0,#_y1
      002894 76 01            [12] 1969 	mov	@r0,#0x01
      002896 08               [12] 1970 	inc	r0
      002897 76 00            [12] 1971 	mov	@r0,#0x00
      002899 78 3F            [12] 1972 	mov	r0,#_x1
      00289B 76 01            [12] 1973 	mov	@r0,#0x01
      00289D 08               [12] 1974 	inc	r0
      00289E 76 00            [12] 1975 	mov	@r0,#0x00
                                   1976 ;	life.c:192: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      0028A0 E5 10            [12] 1977 	mov	a,_bp
      0028A2 24 0D            [12] 1978 	add	a,#0x0d
      0028A4 F8               [12] 1979 	mov	r0,a
      0028A5 EE               [12] 1980 	mov	a,r6
      0028A6 26               [12] 1981 	add	a,@r0
      0028A7 FE               [12] 1982 	mov	r6,a
      0028A8 EF               [12] 1983 	mov	a,r7
      0028A9 08               [12] 1984 	inc	r0
      0028AA 36               [12] 1985 	addc	a,@r0
      0028AB FF               [12] 1986 	mov	r7,a
      0028AC EE               [12] 1987 	mov	a,r6
      0028AD 24 00            [12] 1988 	add	a,#_u
      0028AF F5 82            [12] 1989 	mov	dpl,a
      0028B1 EF               [12] 1990 	mov	a,r7
      0028B2 34 48            [12] 1991 	addc	a,#(_u >> 8)
      0028B4 F5 83            [12] 1992 	mov	dph,a
      0028B6 E0               [24] 1993 	movx	a,@dptr
      0028B7 2B               [12] 1994 	add	a,r3
      0028B8 FF               [12] 1995 	mov	r7,a
      0028B9 78 3C            [12] 1996 	mov	r0,#_n
      0028BB A6 07            [24] 1997 	mov	@r0,ar7
                                   1998 ;	life.c:194: nu[A2D(W, y, x)] = (n == 3) || ((n == 2) && u[A2D(W, y, x)]);
      0028BD A8 10            [24] 1999 	mov	r0,_bp
      0028BF 08               [12] 2000 	inc	r0
      0028C0 E6               [12] 2001 	mov	a,@r0
      0028C1 24 00            [12] 2002 	add	a,#_nu
      0028C3 FD               [12] 2003 	mov	r5,a
      0028C4 08               [12] 2004 	inc	r0
      0028C5 E6               [12] 2005 	mov	a,@r0
      0028C6 34 50            [12] 2006 	addc	a,#(_nu >> 8)
      0028C8 FE               [12] 2007 	mov	r6,a
      0028C9 BF 03 02         [24] 2008 	cjne	r7,#0x03,00469$
      0028CC 80 28            [24] 2009 	sjmp	00228$
      0028CE                       2010 00469$:
      0028CE BF 02 21         [24] 2011 	cjne	r7,#0x02,00227$
      0028D1 E5 10            [12] 2012 	mov	a,_bp
      0028D3 24 03            [12] 2013 	add	a,#0x03
      0028D5 F8               [12] 2014 	mov	r0,a
      0028D6 E5 10            [12] 2015 	mov	a,_bp
      0028D8 24 07            [12] 2016 	add	a,#0x07
      0028DA F9               [12] 2017 	mov	r1,a
      0028DB E7               [12] 2018 	mov	a,@r1
      0028DC 26               [12] 2019 	add	a,@r0
      0028DD FC               [12] 2020 	mov	r4,a
      0028DE 09               [12] 2021 	inc	r1
      0028DF E7               [12] 2022 	mov	a,@r1
      0028E0 08               [12] 2023 	inc	r0
      0028E1 36               [12] 2024 	addc	a,@r0
      0028E2 FF               [12] 2025 	mov	r7,a
      0028E3 EC               [12] 2026 	mov	a,r4
      0028E4 24 00            [12] 2027 	add	a,#_u
      0028E6 FC               [12] 2028 	mov	r4,a
      0028E7 EF               [12] 2029 	mov	a,r7
      0028E8 34 48            [12] 2030 	addc	a,#(_u >> 8)
      0028EA FF               [12] 2031 	mov	r7,a
      0028EB 8C 82            [24] 2032 	mov	dpl,r4
      0028ED 8F 83            [24] 2033 	mov	dph,r7
      0028EF E0               [24] 2034 	movx	a,@dptr
      0028F0 70 04            [24] 2035 	jnz	00228$
      0028F2                       2036 00227$:
                                   2037 ;	assignBit
      0028F2 C2 00            [12] 2038 	clr	b0
      0028F4 80 02            [24] 2039 	sjmp	00229$
      0028F6                       2040 00228$:
                                   2041 ;	assignBit
      0028F6 D2 00            [12] 2042 	setb	b0
      0028F8                       2043 00229$:
      0028F8 A2 00            [12] 2044 	mov	c,b0
      0028FA E4               [12] 2045 	clr	a
      0028FB 33               [12] 2046 	rlc	a
      0028FC 8D 82            [24] 2047 	mov	dpl,r5
      0028FE 8E 83            [24] 2048 	mov	dph,r6
      002900 F0               [24] 2049 	movx	@dptr,a
                                   2050 ;	life.c:195: cycle2 |= pu[A2D(W, y, x)] ^ nu[A2D(W, y, x)];
      002901 78 35            [12] 2051 	mov	r0,#_y
      002903 86 06            [24] 2052 	mov	ar6,@r0
      002905 08               [12] 2053 	inc	r0
      002906 E6               [12] 2054 	mov	a,@r0
      002907 C4               [12] 2055 	swap	a
      002908 23               [12] 2056 	rl	a
      002909 54 E0            [12] 2057 	anl	a,#0xe0
      00290B CE               [12] 2058 	xch	a,r6
      00290C C4               [12] 2059 	swap	a
      00290D 23               [12] 2060 	rl	a
      00290E CE               [12] 2061 	xch	a,r6
      00290F 6E               [12] 2062 	xrl	a,r6
      002910 CE               [12] 2063 	xch	a,r6
      002911 54 E0            [12] 2064 	anl	a,#0xe0
      002913 CE               [12] 2065 	xch	a,r6
      002914 6E               [12] 2066 	xrl	a,r6
      002915 FF               [12] 2067 	mov	r7,a
      002916 78 33            [12] 2068 	mov	r0,#_x
      002918 E6               [12] 2069 	mov	a,@r0
      002919 2E               [12] 2070 	add	a,r6
      00291A FE               [12] 2071 	mov	r6,a
      00291B 08               [12] 2072 	inc	r0
      00291C E6               [12] 2073 	mov	a,@r0
      00291D 3F               [12] 2074 	addc	a,r7
      00291E FF               [12] 2075 	mov	r7,a
      00291F EE               [12] 2076 	mov	a,r6
      002920 24 00            [12] 2077 	add	a,#_pu
      002922 F5 82            [12] 2078 	mov	dpl,a
      002924 EF               [12] 2079 	mov	a,r7
      002925 34 40            [12] 2080 	addc	a,#(_pu >> 8)
      002927 F5 83            [12] 2081 	mov	dph,a
      002929 E0               [24] 2082 	movx	a,@dptr
      00292A FD               [12] 2083 	mov	r5,a
      00292B EE               [12] 2084 	mov	a,r6
      00292C 24 00            [12] 2085 	add	a,#_nu
      00292E F5 82            [12] 2086 	mov	dpl,a
      002930 EF               [12] 2087 	mov	a,r7
      002931 34 50            [12] 2088 	addc	a,#(_nu >> 8)
      002933 F5 83            [12] 2089 	mov	dph,a
      002935 E0               [24] 2090 	movx	a,@dptr
      002936 FC               [12] 2091 	mov	r4,a
      002937 6D               [12] 2092 	xrl	a,r5
      002938 78 3E            [12] 2093 	mov	r0,#_cycle2
      00293A 46               [12] 2094 	orl	a,@r0
      00293B F6               [12] 2095 	mov	@r0,a
                                   2096 ;	life.c:196: fixed |= u[A2D(W, y, x)] ^ nu[A2D(W, y, x)];
      00293C EE               [12] 2097 	mov	a,r6
      00293D 24 00            [12] 2098 	add	a,#_u
      00293F F5 82            [12] 2099 	mov	dpl,a
      002941 EF               [12] 2100 	mov	a,r7
      002942 34 48            [12] 2101 	addc	a,#(_u >> 8)
      002944 F5 83            [12] 2102 	mov	dph,a
      002946 E0               [24] 2103 	movx	a,@dptr
      002947 FF               [12] 2104 	mov	r7,a
      002948 EC               [12] 2105 	mov	a,r4
      002949 6F               [12] 2106 	xrl	a,r7
      00294A 78 3D            [12] 2107 	mov	r0,#_fixed
      00294C 46               [12] 2108 	orl	a,@r0
      00294D F6               [12] 2109 	mov	@r0,a
                                   2110 ;	life.c:172: for (x = 0; x < W; x++) {
      00294E 78 33            [12] 2111 	mov	r0,#_x
      002950 06               [12] 2112 	inc	@r0
      002951 B6 00 02         [24] 2113 	cjne	@r0,#0x00,00473$
      002954 08               [12] 2114 	inc	r0
      002955 06               [12] 2115 	inc	@r0
      002956                       2116 00473$:
      002956 78 33            [12] 2117 	mov	r0,#_x
      002958 C3               [12] 2118 	clr	c
      002959 E6               [12] 2119 	mov	a,@r0
      00295A 94 20            [12] 2120 	subb	a,#0x20
      00295C 08               [12] 2121 	inc	r0
      00295D E6               [12] 2122 	mov	a,@r0
      00295E 64 80            [12] 2123 	xrl	a,#0x80
      002960 94 80            [12] 2124 	subb	a,#0x80
      002962 50 03            [24] 2125 	jnc	00474$
      002964 02 25 E9         [24] 2126 	ljmp	00200$
      002967                       2127 00474$:
                                   2128 ;	life.c:169: for (y = 0; y < H; y++) {
      002967 78 35            [12] 2129 	mov	r0,#_y
      002969 06               [12] 2130 	inc	@r0
      00296A B6 00 02         [24] 2131 	cjne	@r0,#0x00,00475$
      00296D 08               [12] 2132 	inc	r0
      00296E 06               [12] 2133 	inc	@r0
      00296F                       2134 00475$:
      00296F 78 35            [12] 2135 	mov	r0,#_y
      002971 C3               [12] 2136 	clr	c
      002972 E6               [12] 2137 	mov	a,@r0
      002973 94 40            [12] 2138 	subb	a,#0x40
      002975 08               [12] 2139 	inc	r0
      002976 E6               [12] 2140 	mov	a,@r0
      002977 64 80            [12] 2141 	xrl	a,#0x80
      002979 94 80            [12] 2142 	subb	a,#0x80
      00297B 50 03            [24] 2143 	jnc	00476$
      00297D 02 25 C1         [24] 2144 	ljmp	00202$
      002980                       2145 00476$:
                                   2146 ;	life.c:200: cycle2 = !cycle2;
      002980 78 3E            [12] 2147 	mov	r0,#_cycle2
      002982 E6               [12] 2148 	mov	a,@r0
      002983 B4 01 00         [24] 2149 	cjne	a,#0x01,00477$
      002986                       2150 00477$:
      002986 92 00            [24] 2151 	mov	b0,c
      002988 78 3E            [12] 2152 	mov	r0,#_cycle2
      00298A E4               [12] 2153 	clr	a
      00298B 33               [12] 2154 	rlc	a
      00298C F6               [12] 2155 	mov	@r0,a
                                   2156 ;	life.c:201: fixed = !fixed;
      00298D 78 3D            [12] 2157 	mov	r0,#_fixed
      00298F E6               [12] 2158 	mov	a,@r0
      002990 B4 01 00         [24] 2159 	cjne	a,#0x01,00478$
      002993                       2160 00478$:
      002993 92 00            [24] 2161 	mov	b0,c
      002995 78 3D            [12] 2162 	mov	r0,#_fixed
      002997 E4               [12] 2163 	clr	a
      002998 33               [12] 2164 	rlc	a
      002999 F6               [12] 2165 	mov	@r0,a
                                   2166 ;	life.c:203: memcpy(pu, u, sizeof (u));
      00299A E4               [12] 2167 	clr	a
      00299B C0 E0            [24] 2168 	push	acc
      00299D 74 08            [12] 2169 	mov	a,#0x08
      00299F C0 E0            [24] 2170 	push	acc
      0029A1 74 00            [12] 2171 	mov	a,#_u
      0029A3 C0 E0            [24] 2172 	push	acc
      0029A5 74 48            [12] 2173 	mov	a,#(_u >> 8)
      0029A7 C0 E0            [24] 2174 	push	acc
      0029A9 E4               [12] 2175 	clr	a
      0029AA C0 E0            [24] 2176 	push	acc
      0029AC 90 40 00         [24] 2177 	mov	dptr,#_pu
      0029AF 75 F0 00         [24] 2178 	mov	b,#0x00
      0029B2 12 2A B9         [24] 2179 	lcall	___memcpy
      0029B5 E5 81            [12] 2180 	mov	a,sp
      0029B7 24 FB            [12] 2181 	add	a,#0xfb
      0029B9 F5 81            [12] 2182 	mov	sp,a
                                   2183 ;	life.c:204: memcpy(u, nu, sizeof (nu));
      0029BB E4               [12] 2184 	clr	a
      0029BC C0 E0            [24] 2185 	push	acc
      0029BE 74 08            [12] 2186 	mov	a,#0x08
      0029C0 C0 E0            [24] 2187 	push	acc
      0029C2 74 00            [12] 2188 	mov	a,#_nu
      0029C4 C0 E0            [24] 2189 	push	acc
      0029C6 74 50            [12] 2190 	mov	a,#(_nu >> 8)
      0029C8 C0 E0            [24] 2191 	push	acc
      0029CA E4               [12] 2192 	clr	a
      0029CB C0 E0            [24] 2193 	push	acc
      0029CD 90 48 00         [24] 2194 	mov	dptr,#_u
      0029D0 75 F0 00         [24] 2195 	mov	b,#0x00
      0029D3 12 2A B9         [24] 2196 	lcall	___memcpy
      0029D6 E5 81            [12] 2197 	mov	a,sp
      0029D8 24 FB            [12] 2198 	add	a,#0xfb
      0029DA F5 81            [12] 2199 	mov	sp,a
                                   2200 ;	life.c:242: if (fixed || cycle2) {
      0029DC 78 3D            [12] 2201 	mov	r0,#_fixed
      0029DE E6               [12] 2202 	mov	a,@r0
      0029DF 70 08            [24] 2203 	jnz	00126$
      0029E1 78 3E            [12] 2204 	mov	r0,#_cycle2
      0029E3 E6               [12] 2205 	mov	a,@r0
      0029E4 70 03            [24] 2206 	jnz	00480$
      0029E6 02 25 99         [24] 2207 	ljmp	00215$
      0029E9                       2208 00480$:
      0029E9                       2209 00126$:
                                   2210 ;	life.c:243: printstr("DONE ");
      0029E9 7D 3A            [12] 2211 	mov	r5,#___str_6
      0029EB 7E 2D            [12] 2212 	mov	r6,#(___str_6 >> 8)
      0029ED 7F 80            [12] 2213 	mov	r7,#0x80
                                   2214 ;	life.c:49: return;
      0029EF                       2215 00205$:
                                   2216 ;	life.c:47: for (; *s; s++) putchar(*s);
      0029EF 8D 82            [24] 2217 	mov	dpl,r5
      0029F1 8E 83            [24] 2218 	mov	dph,r6
      0029F3 8F F0            [24] 2219 	mov	b,r7
      0029F5 12 2B DD         [24] 2220 	lcall	__gptrget
      0029F8 FC               [12] 2221 	mov	r4,a
      0029F9 60 10            [24] 2222 	jz	00176$
      0029FB 7B 00            [12] 2223 	mov	r3,#0x00
      0029FD 8C 82            [24] 2224 	mov	dpl,r4
      0029FF 8B 83            [24] 2225 	mov	dph,r3
      002A01 12 20 C5         [24] 2226 	lcall	_putchar
      002A04 0D               [12] 2227 	inc	r5
                                   2228 ;	life.c:243: printstr("DONE ");
      002A05 BD 00 E7         [24] 2229 	cjne	r5,#0x00,00205$
      002A08 0E               [12] 2230 	inc	r6
      002A09 80 E4            [24] 2231 	sjmp	00205$
      002A0B                       2232 00176$:
                                   2233 ;	life.c:244: if (fixed) printstr("FIXED\r\n");
      002A0B 78 3D            [12] 2234 	mov	r0,#_fixed
      002A0D E6               [12] 2235 	mov	a,@r0
      002A0E 60 22            [24] 2236 	jz	00124$
      002A10 7D 40            [12] 2237 	mov	r5,#___str_7
      002A12 7E 2D            [12] 2238 	mov	r6,#(___str_7 >> 8)
      002A14 7F 80            [12] 2239 	mov	r7,#0x80
                                   2240 ;	life.c:49: return;
      002A16                       2241 00208$:
                                   2242 ;	life.c:47: for (; *s; s++) putchar(*s);
      002A16 8D 82            [24] 2243 	mov	dpl,r5
      002A18 8E 83            [24] 2244 	mov	dph,r6
      002A1A 8F F0            [24] 2245 	mov	b,r7
      002A1C 12 2B DD         [24] 2246 	lcall	__gptrget
      002A1F FC               [12] 2247 	mov	r4,a
      002A20 60 32            [24] 2248 	jz	00125$
      002A22 7B 00            [12] 2249 	mov	r3,#0x00
      002A24 8C 82            [24] 2250 	mov	dpl,r4
      002A26 8B 83            [24] 2251 	mov	dph,r3
      002A28 12 20 C5         [24] 2252 	lcall	_putchar
      002A2B 0D               [12] 2253 	inc	r5
                                   2254 ;	life.c:244: if (fixed) printstr("FIXED\r\n");
      002A2C BD 00 E7         [24] 2255 	cjne	r5,#0x00,00208$
      002A2F 0E               [12] 2256 	inc	r6
      002A30 80 E4            [24] 2257 	sjmp	00208$
      002A32                       2258 00124$:
                                   2259 ;	life.c:245: else printstr("CYCLE2\r\n");
      002A32 7D 48            [12] 2260 	mov	r5,#___str_8
      002A34 7E 2D            [12] 2261 	mov	r6,#(___str_8 >> 8)
      002A36 7F 80            [12] 2262 	mov	r7,#0x80
                                   2263 ;	life.c:49: return;
      002A38                       2264 00211$:
                                   2265 ;	life.c:47: for (; *s; s++) putchar(*s);
      002A38 8D 82            [24] 2266 	mov	dpl,r5
      002A3A 8E 83            [24] 2267 	mov	dph,r6
      002A3C 8F F0            [24] 2268 	mov	b,r7
      002A3E 12 2B DD         [24] 2269 	lcall	__gptrget
      002A41 FC               [12] 2270 	mov	r4,a
      002A42 60 10            [24] 2271 	jz	00125$
      002A44 7B 00            [12] 2272 	mov	r3,#0x00
      002A46 8C 82            [24] 2273 	mov	dpl,r4
      002A48 8B 83            [24] 2274 	mov	dph,r3
      002A4A 12 20 C5         [24] 2275 	lcall	_putchar
      002A4D 0D               [12] 2276 	inc	r5
                                   2277 ;	life.c:245: else printstr("CYCLE2\r\n");
      002A4E BD 00 E7         [24] 2278 	cjne	r5,#0x00,00211$
      002A51 0E               [12] 2279 	inc	r6
      002A52 80 E4            [24] 2280 	sjmp	00211$
      002A54                       2281 00125$:
                                   2282 ;	life.c:246: (void)getchar();
      002A54 12 20 CA         [24] 2283 	lcall	_getchar
                                   2284 ;	life.c:247: break;
      002A57                       2285 00129$:
                                   2286 ;	life.c:251: if (i1) {
      002A57 78 32            [12] 2287 	mov	r0,#_i1
      002A59 E6               [12] 2288 	mov	a,@r0
      002A5A 60 25            [24] 2289 	jz	00221$
                                   2290 ;	life.c:252: printstr("BREAK\r\n");
      002A5C 7D 51            [12] 2291 	mov	r5,#___str_9
      002A5E 7E 2D            [12] 2292 	mov	r6,#(___str_9 >> 8)
      002A60 7F 80            [12] 2293 	mov	r7,#0x80
                                   2294 ;	life.c:49: return;
      002A62                       2295 00218$:
                                   2296 ;	life.c:47: for (; *s; s++) putchar(*s);
      002A62 8D 82            [24] 2297 	mov	dpl,r5
      002A64 8E 83            [24] 2298 	mov	dph,r6
      002A66 8F F0            [24] 2299 	mov	b,r7
      002A68 12 2B DD         [24] 2300 	lcall	__gptrget
      002A6B FC               [12] 2301 	mov	r4,a
      002A6C 60 10            [24] 2302 	jz	00182$
      002A6E 7B 00            [12] 2303 	mov	r3,#0x00
      002A70 8C 82            [24] 2304 	mov	dpl,r4
      002A72 8B 83            [24] 2305 	mov	dph,r3
      002A74 12 20 C5         [24] 2306 	lcall	_putchar
      002A77 0D               [12] 2307 	inc	r5
                                   2308 ;	life.c:252: printstr("BREAK\r\n");
      002A78 BD 00 E7         [24] 2309 	cjne	r5,#0x00,00218$
      002A7B 0E               [12] 2310 	inc	r6
      002A7C 80 E4            [24] 2311 	sjmp	00218$
      002A7E                       2312 00182$:
                                   2313 ;	life.c:253: (void)getchar();
      002A7E 12 20 CA         [24] 2314 	lcall	_getchar
      002A81                       2315 00221$:
                                   2316 ;	life.c:216: for (i0 = 0; !i0; ) {		
      002A81 78 31            [12] 2317 	mov	r0,#_i0
      002A83 E6               [12] 2318 	mov	a,@r0
      002A84 70 03            [24] 2319 	jnz	00491$
      002A86 02 23 00         [24] 2320 	ljmp	00220$
      002A89                       2321 00491$:
                                   2322 ;	life.c:257: terminate:
      002A89                       2323 00133$:
                                   2324 ;	life.c:258: EA = 0;
                                   2325 ;	assignBit
      002A89 C2 AF            [12] 2326 	clr	_EA
                                   2327 ;	life.c:259: printstr("TERM\r\n");
      002A8B 7D 59            [12] 2328 	mov	r5,#___str_10
      002A8D 7E 2D            [12] 2329 	mov	r6,#(___str_10 >> 8)
      002A8F 7F 80            [12] 2330 	mov	r7,#0x80
                                   2331 ;	life.c:49: return;
      002A91                       2332 00223$:
                                   2333 ;	life.c:47: for (; *s; s++) putchar(*s);
      002A91 8D 82            [24] 2334 	mov	dpl,r5
      002A93 8E 83            [24] 2335 	mov	dph,r6
      002A95 8F F0            [24] 2336 	mov	b,r7
      002A97 12 2B DD         [24] 2337 	lcall	__gptrget
      002A9A FC               [12] 2338 	mov	r4,a
      002A9B 60 10            [24] 2339 	jz	00184$
      002A9D 7B 00            [12] 2340 	mov	r3,#0x00
      002A9F 8C 82            [24] 2341 	mov	dpl,r4
      002AA1 8B 83            [24] 2342 	mov	dph,r3
      002AA3 12 20 C5         [24] 2343 	lcall	_putchar
      002AA6 0D               [12] 2344 	inc	r5
                                   2345 ;	life.c:259: printstr("TERM\r\n");
      002AA7 BD 00 E7         [24] 2346 	cjne	r5,#0x00,00223$
      002AAA 0E               [12] 2347 	inc	r6
      002AAB 80 E4            [24] 2348 	sjmp	00223$
      002AAD                       2349 00184$:
                                   2350 ;	life.c:260: (void)getchar();
      002AAD 12 20 CA         [24] 2351 	lcall	_getchar
                                   2352 ;	life.c:264: __endasm;
      002AB0 02 00 00         [24] 2353 	ljmp	0
                                   2354 ;	life.c:265: }
      002AB3 85 10 81         [24] 2355 	mov	sp,_bp
      002AB6 D0 10            [24] 2356 	pop	_bp
      002AB8 22               [24] 2357 	ret
                                   2358 	.area CSEG    (CODE)
                                   2359 	.area CONST   (CODE)
                                   2360 	.area CONST   (CODE)
      002D05                       2361 ___str_0:
      002D05 1B                    2362 	.db 0x1b
      002D06 5B 32 4A              2363 	.ascii "[2J"
      002D09 1B                    2364 	.db 0x1b
      002D0A 5B 6D 47 45 4E 20     2365 	.ascii "[mGEN "
      002D10 00                    2366 	.db 0x00
                                   2367 	.area CSEG    (CODE)
                                   2368 	.area CONST   (CODE)
      002D11                       2369 ___str_1:
      002D11 0D                    2370 	.db 0x0d
      002D12 0A                    2371 	.db 0x0a
      002D13 00                    2372 	.db 0x00
                                   2373 	.area CSEG    (CODE)
                                   2374 	.area CONST   (CODE)
      002D14                       2375 ___str_2:
      002D14 4C 4F 41 44 20 3C     2376 	.ascii "LOAD <"
      002D1A 00                    2377 	.db 0x00
                                   2378 	.area CSEG    (CODE)
                                   2379 	.area CONST   (CODE)
      002D1B                       2380 ___str_3:
      002D1B 3E                    2381 	.ascii ">"
      002D1C 0D                    2382 	.db 0x0d
      002D1D 0A                    2383 	.db 0x0a
      002D1E 00                    2384 	.db 0x00
                                   2385 	.area CSEG    (CODE)
                                   2386 	.area CONST   (CODE)
      002D1F                       2387 ___str_4:
      002D1F 1B                    2388 	.db 0x1b
      002D20 5B 32 4A              2389 	.ascii "[2J"
      002D23 1B                    2390 	.db 0x1b
      002D24 5B 6D 4C 49 46 45 20  2391 	.ascii "[mLIFE INIT"
             49 4E 49 54
      002D2F 0D                    2392 	.db 0x0d
      002D30 0A                    2393 	.db 0x0a
      002D31 00                    2394 	.db 0x00
                                   2395 	.area CSEG    (CODE)
                                   2396 	.area CONST   (CODE)
      002D32                       2397 ___str_5:
      002D32 52 45 41 44 59        2398 	.ascii "READY"
      002D37 0D                    2399 	.db 0x0d
      002D38 0A                    2400 	.db 0x0a
      002D39 00                    2401 	.db 0x00
                                   2402 	.area CSEG    (CODE)
                                   2403 	.area CONST   (CODE)
      002D3A                       2404 ___str_6:
      002D3A 44 4F 4E 45 20        2405 	.ascii "DONE "
      002D3F 00                    2406 	.db 0x00
                                   2407 	.area CSEG    (CODE)
                                   2408 	.area CONST   (CODE)
      002D40                       2409 ___str_7:
      002D40 46 49 58 45 44        2410 	.ascii "FIXED"
      002D45 0D                    2411 	.db 0x0d
      002D46 0A                    2412 	.db 0x0a
      002D47 00                    2413 	.db 0x00
                                   2414 	.area CSEG    (CODE)
                                   2415 	.area CONST   (CODE)
      002D48                       2416 ___str_8:
      002D48 43 59 43 4C 45 32     2417 	.ascii "CYCLE2"
      002D4E 0D                    2418 	.db 0x0d
      002D4F 0A                    2419 	.db 0x0a
      002D50 00                    2420 	.db 0x00
                                   2421 	.area CSEG    (CODE)
                                   2422 	.area CONST   (CODE)
      002D51                       2423 ___str_9:
      002D51 42 52 45 41 4B        2424 	.ascii "BREAK"
      002D56 0D                    2425 	.db 0x0d
      002D57 0A                    2426 	.db 0x0a
      002D58 00                    2427 	.db 0x00
                                   2428 	.area CSEG    (CODE)
                                   2429 	.area CONST   (CODE)
      002D59                       2430 ___str_10:
      002D59 54 45 52 4D           2431 	.ascii "TERM"
      002D5D 0D                    2432 	.db 0x0d
      002D5E 0A                    2433 	.db 0x0a
      002D5F 00                    2434 	.db 0x00
                                   2435 	.area CSEG    (CODE)
                                   2436 	.area XINIT   (CODE)
                                   2437 	.area CABS    (ABS,CODE)
