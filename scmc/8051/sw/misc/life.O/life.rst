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
      002003 02 20 DB         [24]  392 	ljmp	_int0
      002006                        393 	.ds	5
      00200B 32               [24]  394 	reti
      00200C                        395 	.ds	7
      002013 02 20 E7         [24]  396 	ljmp	_int1
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
                                    410 ;	life.c:27: __idata static const char digits[16] = {
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
                                    443 ;	life.c:164: __idata static const char busy[4] = { '\\', '|', '/', '-' };
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
      002016 02 22 F0         [24]  460 	ljmp	_main
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
                                    471 ;	life.c:6: int putchar(int c) __naked {
                                    472 ;	-----------------------------------------
                                    473 ;	 function putchar
                                    474 ;	-----------------------------------------
      0020C5                        475 _putchar:
                                    476 ;	naked function: no prologue.
                                    477 ;	life.c:13: __endasm;
      0020C5 C0 E0            [24]  478 	push	acc
      0020C7 E5 82            [12]  479 	mov	a, dpl
      0020C9 12 00 3C         [24]  480 	lcall	0x003c
      0020CC D0 E0            [24]  481 	pop	acc
                                    482 ;	life.c:14: }
                                    483 ;	naked function: no epilogue.
                                    484 ;------------------------------------------------------------
                                    485 ;Allocation info for local variables in function 'getchar'
                                    486 ;------------------------------------------------------------
                                    487 ;	life.c:16: int getchar(void) __naked {
                                    488 ;	-----------------------------------------
                                    489 ;	 function getchar
                                    490 ;	-----------------------------------------
      0020CE                        491 _getchar:
                                    492 ;	naked function: no prologue.
                                    493 ;	life.c:24: __endasm;
      0020CE C0 E0            [24]  494 	push	acc
      0020D0 12 00 36         [24]  495 	lcall	0x0036
      0020D3 F5 82            [12]  496 	mov	dpl, a
      0020D5 75 83 00         [24]  497 	mov	dph, #0
      0020D8 D0 E0            [24]  498 	pop	acc
      0020DA 22               [24]  499 	ret
                                    500 ;	life.c:25: }
                                    501 ;	naked function: no epilogue.
                                    502 ;------------------------------------------------------------
                                    503 ;Allocation info for local variables in function 'int0'
                                    504 ;------------------------------------------------------------
                                    505 ;	life.c:56: void int0(void) __interrupt IE0_VECTOR __using 1 {
                                    506 ;	-----------------------------------------
                                    507 ;	 function int0
                                    508 ;	-----------------------------------------
      0020DB                        509 _int0:
                           00000F   510 	ar7 = 0x0f
                           00000E   511 	ar6 = 0x0e
                           00000D   512 	ar5 = 0x0d
                           00000C   513 	ar4 = 0x0c
                           00000B   514 	ar3 = 0x0b
                           00000A   515 	ar2 = 0x0a
                           000009   516 	ar1 = 0x09
                           000008   517 	ar0 = 0x08
      0020DB C0 D0            [24]  518 	push	psw
      0020DD 75 D0 08         [24]  519 	mov	psw,#0x08
                                    520 ;	life.c:57: i0 = 1;
      0020E0 78 31            [12]  521 	mov	r0,#_i0
      0020E2 76 01            [12]  522 	mov	@r0,#0x01
                                    523 ;	life.c:58: }
      0020E4 D0 D0            [24]  524 	pop	psw
      0020E6 32               [24]  525 	reti
                                    526 ;	eliminated unneeded push/pop dpl
                                    527 ;	eliminated unneeded push/pop dph
                                    528 ;	eliminated unneeded push/pop b
                                    529 ;	eliminated unneeded push/pop acc
                                    530 ;------------------------------------------------------------
                                    531 ;Allocation info for local variables in function 'int1'
                                    532 ;------------------------------------------------------------
                                    533 ;	life.c:60: void int1(void) __interrupt IE1_VECTOR __using 1 {
                                    534 ;	-----------------------------------------
                                    535 ;	 function int1
                                    536 ;	-----------------------------------------
      0020E7                        537 _int1:
      0020E7 C0 D0            [24]  538 	push	psw
      0020E9 75 D0 08         [24]  539 	mov	psw,#0x08
                                    540 ;	life.c:61: i1 = 1;
      0020EC 78 32            [12]  541 	mov	r0,#_i1
      0020EE 76 01            [12]  542 	mov	@r0,#0x01
                                    543 ;	life.c:62: }
      0020F0 D0 D0            [24]  544 	pop	psw
      0020F2 32               [24]  545 	reti
                                    546 ;	eliminated unneeded push/pop dpl
                                    547 ;	eliminated unneeded push/pop dph
                                    548 ;	eliminated unneeded push/pop b
                                    549 ;	eliminated unneeded push/pop acc
                                    550 ;------------------------------------------------------------
                                    551 ;Allocation info for local variables in function 'show'
                                    552 ;------------------------------------------------------------
                                    553 ;hdr                       Allocated to registers r7 
                                    554 ;__1966080005              Allocated to registers 
                                    555 ;s                         Allocated to registers r5 r6 r7 
                                    556 ;__1310720001              Allocated to registers r6 r7 
                                    557 ;a                         Allocated to registers 
                                    558 ;__1310720003              Allocated to registers r6 r7 
                                    559 ;a                         Allocated to registers 
                                    560 ;__1966080008              Allocated to registers 
                                    561 ;s                         Allocated to registers r5 r6 r7 
                                    562 ;__2621440011              Allocated to registers 
                                    563 ;s                         Allocated to registers r5 r6 r7 
                                    564 ;------------------------------------------------------------
                                    565 ;	life.c:98: void show(char hdr) {
                                    566 ;	-----------------------------------------
                                    567 ;	 function show
                                    568 ;	-----------------------------------------
      0020F3                        569 _show:
                           000007   570 	ar7 = 0x07
                           000006   571 	ar6 = 0x06
                           000005   572 	ar5 = 0x05
                           000004   573 	ar4 = 0x04
                           000003   574 	ar3 = 0x03
                           000002   575 	ar2 = 0x02
                           000001   576 	ar1 = 0x01
                           000000   577 	ar0 = 0x00
                                    578 ;	life.c:99: if (hdr) {
      0020F3 E5 82            [12]  579 	mov	a,dpl
      0020F5 FF               [12]  580 	mov	r7,a
      0020F6 70 03            [24]  581 	jnz	00190$
      0020F8 02 22 4B         [24]  582 	ljmp	00102$
      0020FB                        583 00190$:
                                    584 ;	life.c:100: printstr("\033[2J\033[mGEN ");
      0020FB 7D 0D            [12]  585 	mov	r5,#___str_0
      0020FD 7E 2D            [12]  586 	mov	r6,#(___str_0 >> 8)
      0020FF 7F 80            [12]  587 	mov	r7,#0x80
                                    588 ;	life.c:51: return;
      002101                        589 00121$:
                                    590 ;	life.c:49: for (; *s; s++) putchar(*s);
      002101 8D 82            [24]  591 	mov	dpl,r5
      002103 8E 83            [24]  592 	mov	dph,r6
      002105 8F F0            [24]  593 	mov	b,r7
      002107 12 2B E5         [24]  594 	lcall	__gptrget
      00210A FC               [12]  595 	mov	r4,a
      00210B 60 10            [24]  596 	jz	00109$
      00210D 7B 00            [12]  597 	mov	r3,#0x00
      00210F 8C 82            [24]  598 	mov	dpl,r4
      002111 8B 83            [24]  599 	mov	dph,r3
      002113 12 20 C5         [24]  600 	lcall	_putchar
      002116 0D               [12]  601 	inc	r5
                                    602 ;	life.c:100: printstr("\033[2J\033[mGEN ");
      002117 BD 00 E7         [24]  603 	cjne	r5,#0x00,00121$
      00211A 0E               [12]  604 	inc	r6
      00211B 80 E4            [24]  605 	sjmp	00121$
      00211D                        606 00109$:
                                    607 ;	life.c:92: print16x(generation[1]);
      00211D 78 45            [12]  608 	mov	r0,#(_generation + 0x0002)
      00211F 86 06            [24]  609 	mov	ar6,@r0
      002121 08               [12]  610 	inc	r0
                                    611 ;	life.c:40: putchar(digits[(a >> 12) & 0xf]);
      002122 E6               [12]  612 	mov	a,@r0
      002123 FF               [12]  613 	mov	r7,a
      002124 C4               [12]  614 	swap	a
      002125 54 0F            [12]  615 	anl	a,#0x0f
      002127 30 E3 02         [24]  616 	jnb	acc.3,00193$
      00212A 44 F0            [12]  617 	orl	a,#0xf0
      00212C                        618 00193$:
      00212C FC               [12]  619 	mov	r4,a
      00212D 33               [12]  620 	rlc	a
      00212E 95 E0            [12]  621 	subb	a,acc
      002130 53 04 0F         [24]  622 	anl	ar4,#0x0f
      002133 EC               [12]  623 	mov	a,r4
      002134 24 21            [12]  624 	add	a,#_digits
      002136 F9               [12]  625 	mov	r1,a
      002137 87 05            [24]  626 	mov	ar5,@r1
      002139 7C 00            [12]  627 	mov	r4,#0x00
      00213B 8D 82            [24]  628 	mov	dpl,r5
      00213D 8C 83            [24]  629 	mov	dph,r4
      00213F 12 20 C5         [24]  630 	lcall	_putchar
                                    631 ;	life.c:41: putchar(digits[(a >> 8) & 0xf]);
      002142 8F 05            [24]  632 	mov	ar5,r7
      002144 53 05 0F         [24]  633 	anl	ar5,#0x0f
      002147 ED               [12]  634 	mov	a,r5
      002148 24 21            [12]  635 	add	a,#_digits
      00214A F9               [12]  636 	mov	r1,a
      00214B 87 05            [24]  637 	mov	ar5,@r1
      00214D 7C 00            [12]  638 	mov	r4,#0x00
      00214F 8D 82            [24]  639 	mov	dpl,r5
      002151 8C 83            [24]  640 	mov	dph,r4
      002153 12 20 C5         [24]  641 	lcall	_putchar
                                    642 ;	life.c:42: putchar(digits[(a >> 4) & 0xf]);
      002156 8E 04            [24]  643 	mov	ar4,r6
      002158 EF               [12]  644 	mov	a,r7
      002159 C4               [12]  645 	swap	a
      00215A CC               [12]  646 	xch	a,r4
      00215B C4               [12]  647 	swap	a
      00215C 54 0F            [12]  648 	anl	a,#0x0f
      00215E 6C               [12]  649 	xrl	a,r4
      00215F CC               [12]  650 	xch	a,r4
      002160 54 0F            [12]  651 	anl	a,#0x0f
      002162 CC               [12]  652 	xch	a,r4
      002163 6C               [12]  653 	xrl	a,r4
      002164 CC               [12]  654 	xch	a,r4
      002165 30 E3 02         [24]  655 	jnb	acc.3,00194$
      002168 44 F0            [12]  656 	orl	a,#0xf0
      00216A                        657 00194$:
      00216A 53 04 0F         [24]  658 	anl	ar4,#0x0f
      00216D EC               [12]  659 	mov	a,r4
      00216E 24 21            [12]  660 	add	a,#_digits
      002170 F9               [12]  661 	mov	r1,a
      002171 87 05            [24]  662 	mov	ar5,@r1
      002173 7C 00            [12]  663 	mov	r4,#0x00
      002175 8D 82            [24]  664 	mov	dpl,r5
      002177 8C 83            [24]  665 	mov	dph,r4
      002179 12 20 C5         [24]  666 	lcall	_putchar
                                    667 ;	life.c:43: putchar(digits[a & 0xf]);
      00217C 53 06 0F         [24]  668 	anl	ar6,#0x0f
      00217F EE               [12]  669 	mov	a,r6
      002180 24 21            [12]  670 	add	a,#_digits
      002182 F9               [12]  671 	mov	r1,a
      002183 87 07            [24]  672 	mov	ar7,@r1
      002185 7E 00            [12]  673 	mov	r6,#0x00
      002187 8F 82            [24]  674 	mov	dpl,r7
      002189 8E 83            [24]  675 	mov	dph,r6
      00218B 12 20 C5         [24]  676 	lcall	_putchar
                                    677 ;	life.c:93: print16x(generation[0]);
      00218E 78 43            [12]  678 	mov	r0,#_generation
      002190 86 06            [24]  679 	mov	ar6,@r0
      002192 08               [12]  680 	inc	r0
                                    681 ;	life.c:40: putchar(digits[(a >> 12) & 0xf]);
      002193 E6               [12]  682 	mov	a,@r0
      002194 FF               [12]  683 	mov	r7,a
      002195 C4               [12]  684 	swap	a
      002196 54 0F            [12]  685 	anl	a,#0x0f
      002198 30 E3 02         [24]  686 	jnb	acc.3,00195$
      00219B 44 F0            [12]  687 	orl	a,#0xf0
      00219D                        688 00195$:
      00219D FC               [12]  689 	mov	r4,a
      00219E 33               [12]  690 	rlc	a
      00219F 95 E0            [12]  691 	subb	a,acc
      0021A1 53 04 0F         [24]  692 	anl	ar4,#0x0f
      0021A4 EC               [12]  693 	mov	a,r4
      0021A5 24 21            [12]  694 	add	a,#_digits
      0021A7 F9               [12]  695 	mov	r1,a
      0021A8 87 05            [24]  696 	mov	ar5,@r1
      0021AA 7C 00            [12]  697 	mov	r4,#0x00
      0021AC 8D 82            [24]  698 	mov	dpl,r5
      0021AE 8C 83            [24]  699 	mov	dph,r4
      0021B0 12 20 C5         [24]  700 	lcall	_putchar
                                    701 ;	life.c:41: putchar(digits[(a >> 8) & 0xf]);
      0021B3 8F 05            [24]  702 	mov	ar5,r7
      0021B5 53 05 0F         [24]  703 	anl	ar5,#0x0f
      0021B8 ED               [12]  704 	mov	a,r5
      0021B9 24 21            [12]  705 	add	a,#_digits
      0021BB F9               [12]  706 	mov	r1,a
      0021BC 87 05            [24]  707 	mov	ar5,@r1
      0021BE 7C 00            [12]  708 	mov	r4,#0x00
      0021C0 8D 82            [24]  709 	mov	dpl,r5
      0021C2 8C 83            [24]  710 	mov	dph,r4
      0021C4 12 20 C5         [24]  711 	lcall	_putchar
                                    712 ;	life.c:42: putchar(digits[(a >> 4) & 0xf]);
      0021C7 8E 04            [24]  713 	mov	ar4,r6
      0021C9 EF               [12]  714 	mov	a,r7
      0021CA C4               [12]  715 	swap	a
      0021CB CC               [12]  716 	xch	a,r4
      0021CC C4               [12]  717 	swap	a
      0021CD 54 0F            [12]  718 	anl	a,#0x0f
      0021CF 6C               [12]  719 	xrl	a,r4
      0021D0 CC               [12]  720 	xch	a,r4
      0021D1 54 0F            [12]  721 	anl	a,#0x0f
      0021D3 CC               [12]  722 	xch	a,r4
      0021D4 6C               [12]  723 	xrl	a,r4
      0021D5 CC               [12]  724 	xch	a,r4
      0021D6 30 E3 02         [24]  725 	jnb	acc.3,00196$
      0021D9 44 F0            [12]  726 	orl	a,#0xf0
      0021DB                        727 00196$:
      0021DB 53 04 0F         [24]  728 	anl	ar4,#0x0f
      0021DE EC               [12]  729 	mov	a,r4
      0021DF 24 21            [12]  730 	add	a,#_digits
      0021E1 F9               [12]  731 	mov	r1,a
      0021E2 87 05            [24]  732 	mov	ar5,@r1
      0021E4 7C 00            [12]  733 	mov	r4,#0x00
      0021E6 8D 82            [24]  734 	mov	dpl,r5
      0021E8 8C 83            [24]  735 	mov	dph,r4
      0021EA 12 20 C5         [24]  736 	lcall	_putchar
                                    737 ;	life.c:43: putchar(digits[a & 0xf]);
      0021ED 53 06 0F         [24]  738 	anl	ar6,#0x0f
      0021F0 EE               [12]  739 	mov	a,r6
      0021F1 24 21            [12]  740 	add	a,#_digits
      0021F3 F9               [12]  741 	mov	r1,a
      0021F4 87 07            [24]  742 	mov	ar7,@r1
      0021F6 7E 00            [12]  743 	mov	r6,#0x00
      0021F8 8F 82            [24]  744 	mov	dpl,r7
      0021FA 8E 83            [24]  745 	mov	dph,r6
      0021FC 12 20 C5         [24]  746 	lcall	_putchar
                                    747 ;	life.c:102: printstr("\r\n");
      0021FF 7D 19            [12]  748 	mov	r5,#___str_1
      002201 7E 2D            [12]  749 	mov	r6,#(___str_1 >> 8)
      002203 7F 80            [12]  750 	mov	r7,#0x80
                                    751 ;	life.c:51: return;
      002205                        752 00124$:
                                    753 ;	life.c:49: for (; *s; s++) putchar(*s);
      002205 8D 82            [24]  754 	mov	dpl,r5
      002207 8E 83            [24]  755 	mov	dph,r6
      002209 8F F0            [24]  756 	mov	b,r7
      00220B 12 2B E5         [24]  757 	lcall	__gptrget
      00220E FC               [12]  758 	mov	r4,a
      00220F 60 10            [24]  759 	jz	00114$
      002211 7B 00            [12]  760 	mov	r3,#0x00
      002213 8C 82            [24]  761 	mov	dpl,r4
      002215 8B 83            [24]  762 	mov	dph,r3
      002217 12 20 C5         [24]  763 	lcall	_putchar
      00221A 0D               [12]  764 	inc	r5
                                    765 ;	life.c:102: printstr("\r\n");
      00221B BD 00 E7         [24]  766 	cjne	r5,#0x00,00124$
      00221E 0E               [12]  767 	inc	r6
      00221F 80 E4            [24]  768 	sjmp	00124$
      002221                        769 00114$:
                                    770 ;	life.c:85: generation[0]++;
      002221 78 43            [12]  771 	mov	r0,#_generation
      002223 86 06            [24]  772 	mov	ar6,@r0
      002225 08               [12]  773 	inc	r0
      002226 86 07            [24]  774 	mov	ar7,@r0
      002228 0E               [12]  775 	inc	r6
      002229 BE 00 01         [24]  776 	cjne	r6,#0x00,00199$
      00222C 0F               [12]  777 	inc	r7
      00222D                        778 00199$:
      00222D 78 43            [12]  779 	mov	r0,#_generation
      00222F A6 06            [24]  780 	mov	@r0,ar6
      002231 08               [12]  781 	inc	r0
      002232 A6 07            [24]  782 	mov	@r0,ar7
                                    783 ;	life.c:86: if (!generation[0]) generation[1]++;
      002234 EE               [12]  784 	mov	a,r6
      002235 4F               [12]  785 	orl	a,r7
      002236 70 13            [24]  786 	jnz	00102$
      002238 78 45            [12]  787 	mov	r0,#(_generation + 0x0002)
      00223A 86 06            [24]  788 	mov	ar6,@r0
      00223C 08               [12]  789 	inc	r0
      00223D 86 07            [24]  790 	mov	ar7,@r0
      00223F 0E               [12]  791 	inc	r6
      002240 BE 00 01         [24]  792 	cjne	r6,#0x00,00201$
      002243 0F               [12]  793 	inc	r7
      002244                        794 00201$:
      002244 78 45            [12]  795 	mov	r0,#(_generation + 0x0002)
      002246 A6 06            [24]  796 	mov	@r0,ar6
      002248 08               [12]  797 	inc	r0
      002249 A6 07            [24]  798 	mov	@r0,ar7
                                    799 ;	life.c:103: updategen();
      00224B                        800 00102$:
                                    801 ;	life.c:106: for (x = 0; x < W; x++) {
      00224B 78 33            [12]  802 	mov	r0,#_x
      00224D E4               [12]  803 	clr	a
      00224E F6               [12]  804 	mov	@r0,a
      00224F 08               [12]  805 	inc	r0
      002250 F6               [12]  806 	mov	@r0,a
      002251                        807 00131$:
                                    808 ;	life.c:107: for (y = 0; y < H; y++)
      002251 78 35            [12]  809 	mov	r0,#_y
      002253 E4               [12]  810 	clr	a
      002254 F6               [12]  811 	mov	@r0,a
      002255 08               [12]  812 	inc	r0
      002256 F6               [12]  813 	mov	@r0,a
      002257                        814 00126$:
                                    815 ;	life.c:108: if (u[A2D(W, y, x)]) {
      002257 78 35            [12]  816 	mov	r0,#_y
      002259 86 06            [24]  817 	mov	ar6,@r0
      00225B 08               [12]  818 	inc	r0
      00225C E6               [12]  819 	mov	a,@r0
      00225D C4               [12]  820 	swap	a
      00225E 23               [12]  821 	rl	a
      00225F 54 E0            [12]  822 	anl	a,#0xe0
      002261 CE               [12]  823 	xch	a,r6
      002262 C4               [12]  824 	swap	a
      002263 23               [12]  825 	rl	a
      002264 CE               [12]  826 	xch	a,r6
      002265 6E               [12]  827 	xrl	a,r6
      002266 CE               [12]  828 	xch	a,r6
      002267 54 E0            [12]  829 	anl	a,#0xe0
      002269 CE               [12]  830 	xch	a,r6
      00226A 6E               [12]  831 	xrl	a,r6
      00226B FF               [12]  832 	mov	r7,a
      00226C 78 33            [12]  833 	mov	r0,#_x
      00226E E6               [12]  834 	mov	a,@r0
      00226F 2E               [12]  835 	add	a,r6
      002270 FE               [12]  836 	mov	r6,a
      002271 08               [12]  837 	inc	r0
      002272 E6               [12]  838 	mov	a,@r0
      002273 3F               [12]  839 	addc	a,r7
      002274 FF               [12]  840 	mov	r7,a
      002275 EE               [12]  841 	mov	a,r6
      002276 24 00            [12]  842 	add	a,#_u
      002278 FE               [12]  843 	mov	r6,a
      002279 EF               [12]  844 	mov	a,r7
      00227A 34 48            [12]  845 	addc	a,#(_u >> 8)
      00227C FF               [12]  846 	mov	r7,a
      00227D 8E 82            [24]  847 	mov	dpl,r6
      00227F 8F 83            [24]  848 	mov	dph,r7
      002281 E0               [24]  849 	movx	a,@dptr
      002282 60 0E            [24]  850 	jz	00104$
                                    851 ;	life.c:109: putchar('['); putchar(']');
      002284 90 00 5B         [24]  852 	mov	dptr,#0x005b
      002287 12 20 C5         [24]  853 	lcall	_putchar
      00228A 90 00 5D         [24]  854 	mov	dptr,#0x005d
      00228D 12 20 C5         [24]  855 	lcall	_putchar
      002290 80 0C            [24]  856 	sjmp	00127$
      002292                        857 00104$:
                                    858 ;	life.c:111: putchar('#'); putchar('#');
      002292 90 00 23         [24]  859 	mov	dptr,#0x0023
      002295 12 20 C5         [24]  860 	lcall	_putchar
      002298 90 00 23         [24]  861 	mov	dptr,#0x0023
      00229B 12 20 C5         [24]  862 	lcall	_putchar
      00229E                        863 00127$:
                                    864 ;	life.c:107: for (y = 0; y < H; y++)
      00229E 78 35            [12]  865 	mov	r0,#_y
      0022A0 06               [12]  866 	inc	@r0
      0022A1 B6 00 02         [24]  867 	cjne	@r0,#0x00,00203$
      0022A4 08               [12]  868 	inc	r0
      0022A5 06               [12]  869 	inc	@r0
      0022A6                        870 00203$:
      0022A6 78 35            [12]  871 	mov	r0,#_y
      0022A8 C3               [12]  872 	clr	c
      0022A9 E6               [12]  873 	mov	a,@r0
      0022AA 94 40            [12]  874 	subb	a,#0x40
      0022AC 08               [12]  875 	inc	r0
      0022AD E6               [12]  876 	mov	a,@r0
      0022AE 64 80            [12]  877 	xrl	a,#0x80
      0022B0 94 80            [12]  878 	subb	a,#0x80
      0022B2 40 A3            [24]  879 	jc	00126$
                                    880 ;	life.c:113: printstr("\r\n");
      0022B4 7D 19            [12]  881 	mov	r5,#___str_1
      0022B6 7E 2D            [12]  882 	mov	r6,#(___str_1 >> 8)
      0022B8 7F 80            [12]  883 	mov	r7,#0x80
                                    884 ;	life.c:51: return;
      0022BA                        885 00129$:
                                    886 ;	life.c:49: for (; *s; s++) putchar(*s);
      0022BA 8D 82            [24]  887 	mov	dpl,r5
      0022BC 8E 83            [24]  888 	mov	dph,r6
      0022BE 8F F0            [24]  889 	mov	b,r7
      0022C0 12 2B E5         [24]  890 	lcall	__gptrget
      0022C3 FC               [12]  891 	mov	r4,a
      0022C4 60 10            [24]  892 	jz	00119$
      0022C6 7B 00            [12]  893 	mov	r3,#0x00
      0022C8 8C 82            [24]  894 	mov	dpl,r4
      0022CA 8B 83            [24]  895 	mov	dph,r3
      0022CC 12 20 C5         [24]  896 	lcall	_putchar
      0022CF 0D               [12]  897 	inc	r5
                                    898 ;	life.c:113: printstr("\r\n");
      0022D0 BD 00 E7         [24]  899 	cjne	r5,#0x00,00129$
      0022D3 0E               [12]  900 	inc	r6
      0022D4 80 E4            [24]  901 	sjmp	00129$
      0022D6                        902 00119$:
                                    903 ;	life.c:106: for (x = 0; x < W; x++) {
      0022D6 78 33            [12]  904 	mov	r0,#_x
      0022D8 06               [12]  905 	inc	@r0
      0022D9 B6 00 02         [24]  906 	cjne	@r0,#0x00,00207$
      0022DC 08               [12]  907 	inc	r0
      0022DD 06               [12]  908 	inc	@r0
      0022DE                        909 00207$:
      0022DE 78 33            [12]  910 	mov	r0,#_x
      0022E0 C3               [12]  911 	clr	c
      0022E1 E6               [12]  912 	mov	a,@r0
      0022E2 94 20            [12]  913 	subb	a,#0x20
      0022E4 08               [12]  914 	inc	r0
      0022E5 E6               [12]  915 	mov	a,@r0
      0022E6 64 80            [12]  916 	xrl	a,#0x80
      0022E8 94 80            [12]  917 	subb	a,#0x80
      0022EA 50 03            [24]  918 	jnc	00208$
      0022EC 02 22 51         [24]  919 	ljmp	00131$
      0022EF                        920 00208$:
                                    921 ;	life.c:116: return;
                                    922 ;	life.c:117: }
      0022EF 22               [24]  923 	ret
                                    924 ;------------------------------------------------------------
                                    925 ;Allocation info for local variables in function 'main'
                                    926 ;------------------------------------------------------------
                                    927 ;__2621440019              Allocated to registers 
                                    928 ;s                         Allocated to registers r5 r6 r7 
                                    929 ;__1310720013              Allocated to registers 
                                    930 ;s                         Allocated to registers r5 r6 r7 
                                    931 ;__1310720015              Allocated to registers r6 r7 
                                    932 ;a                         Allocated to registers r4 r5 
                                    933 ;__1310720017              Allocated to registers 
                                    934 ;s                         Allocated to registers r5 r6 r7 
                                    935 ;__2621440023              Allocated to registers 
                                    936 ;s                         Allocated to registers r5 r6 r7 
                                    937 ;__4587520027              Allocated to registers 
                                    938 ;s                         Allocated to registers r5 r6 r7 
                                    939 ;__4587520029              Allocated to registers 
                                    940 ;s                         Allocated to registers r5 r6 r7 
                                    941 ;__4587520031              Allocated to registers 
                                    942 ;s                         Allocated to registers r5 r6 r7 
                                    943 ;__3276800033              Allocated to registers 
                                    944 ;s                         Allocated to registers r5 r6 r7 
                                    945 ;__1310720035              Allocated to registers 
                                    946 ;s                         Allocated to registers r5 r6 r7 
                                    947 ;sloc0                     Allocated to stack - _bp +1
                                    948 ;sloc1                     Allocated to stack - _bp +3
                                    949 ;sloc2                     Allocated to stack - _bp +5
                                    950 ;sloc3                     Allocated to stack - _bp +7
                                    951 ;sloc4                     Allocated to stack - _bp +9
                                    952 ;sloc5                     Allocated to stack - _bp +11
                                    953 ;sloc6                     Allocated to stack - _bp +13
                                    954 ;------------------------------------------------------------
                                    955 ;	life.c:211: void main(void) {
                                    956 ;	-----------------------------------------
                                    957 ;	 function main
                                    958 ;	-----------------------------------------
      0022F0                        959 _main:
      0022F0 C0 10            [24]  960 	push	_bp
      0022F2 E5 81            [12]  961 	mov	a,sp
      0022F4 F5 10            [12]  962 	mov	_bp,a
      0022F6 24 0E            [12]  963 	add	a,#0x0e
      0022F8 F5 81            [12]  964 	mov	sp,a
                                    965 ;	life.c:212: IT0 = 1;
                                    966 ;	assignBit
      0022FA D2 88            [12]  967 	setb	_IT0
                                    968 ;	life.c:213: IT1 = 1;
                                    969 ;	assignBit
      0022FC D2 8A            [12]  970 	setb	_IT1
                                    971 ;	life.c:214: EX0 = 1;
                                    972 ;	assignBit
      0022FE D2 A8            [12]  973 	setb	_EX0
                                    974 ;	life.c:215: EX1 = 1;
                                    975 ;	assignBit
      002300 D2 AA            [12]  976 	setb	_EX1
                                    977 ;	life.c:216: EA = 1;
                                    978 ;	assignBit
      002302 D2 AF            [12]  979 	setb	_EA
                                    980 ;	life.c:218: for (i0 = 0; !i0; ) {		
      002304 78 31            [12]  981 	mov	r0,#_i0
      002306 76 00            [12]  982 	mov	@r0,#0x00
      002308                        983 00220$:
                                    984 ;	life.c:219: printstr("\033[2J\033[mLIFE INIT\r\n");
      002308 7D 27            [12]  985 	mov	r5,#___str_4
      00230A 7E 2D            [12]  986 	mov	r6,#(___str_4 >> 8)
      00230C 7F 80            [12]  987 	mov	r7,#0x80
                                    988 ;	life.c:51: return;
      00230E                        989 00186$:
                                    990 ;	life.c:49: for (; *s; s++) putchar(*s);
      00230E 8D 82            [24]  991 	mov	dpl,r5
      002310 8E 83            [24]  992 	mov	dph,r6
      002312 8F F0            [24]  993 	mov	b,r7
      002314 12 2B E5         [24]  994 	lcall	__gptrget
      002317 FC               [12]  995 	mov	r4,a
      002318 60 10            [24]  996 	jz	00108$
      00231A 7B 00            [12]  997 	mov	r3,#0x00
      00231C 8C 82            [24]  998 	mov	dpl,r4
      00231E 8B 83            [24]  999 	mov	dph,r3
      002320 12 20 C5         [24] 1000 	lcall	_putchar
      002323 0D               [12] 1001 	inc	r5
                                   1002 ;	life.c:220: while (1) {
      002324 BD 00 E7         [24] 1003 	cjne	r5,#0x00,00186$
      002327 0E               [12] 1004 	inc	r6
      002328 80 E4            [24] 1005 	sjmp	00186$
      00232A                       1006 00108$:
                                   1007 ;	life.c:221: c = toupper(getchar());
      00232A 12 20 CE         [24] 1008 	lcall	_getchar
      00232D 12 2B BE         [24] 1009 	lcall	_toupper
      002330 AE 82            [24] 1010 	mov	r6,dpl
      002332 AF 83            [24] 1011 	mov	r7,dph
      002334 78 39            [12] 1012 	mov	r0,#_c
      002336 A6 06            [24] 1013 	mov	@r0,ar6
      002338 08               [12] 1014 	inc	r0
      002339 A6 07            [24] 1015 	mov	@r0,ar7
                                   1016 ;	life.c:222: if (i0 || (c == (int)'T')) goto terminate;
      00233B 78 31            [12] 1017 	mov	r0,#_i0
      00233D E6               [12] 1018 	mov	a,@r0
      00233E 60 03            [24] 1019 	jz	00435$
      002340 02 2A 91         [24] 1020 	ljmp	00133$
      002343                       1021 00435$:
      002343 BE 54 06         [24] 1022 	cjne	r6,#0x54,00436$
      002346 BF 00 03         [24] 1023 	cjne	r7,#0x00,00436$
      002349 02 2A 91         [24] 1024 	ljmp	00133$
      00234C                       1025 00436$:
                                   1026 ;	life.c:223: else if (c == (int)'L') break;
      00234C BE 4C DB         [24] 1027 	cjne	r6,#0x4c,00108$
      00234F BF 00 D8         [24] 1028 	cjne	r7,#0x00,00108$
                                   1029 ;	life.c:226: reload:
      002352                       1030 00110$:
                                   1031 ;	life.c:120: memset(u, 0, sizeof (u));
      002352 E4               [12] 1032 	clr	a
      002353 C0 E0            [24] 1033 	push	acc
      002355 74 08            [12] 1034 	mov	a,#0x08
      002357 C0 E0            [24] 1035 	push	acc
      002359 E4               [12] 1036 	clr	a
      00235A C0 E0            [24] 1037 	push	acc
      00235C 90 48 00         [24] 1038 	mov	dptr,#_u
      00235F 75 F0 00         [24] 1039 	mov	b,#0x00
      002362 12 2B 54         [24] 1040 	lcall	_memset
      002365 15 81            [12] 1041 	dec	sp
      002367 15 81            [12] 1042 	dec	sp
      002369 15 81            [12] 1043 	dec	sp
                                   1044 ;	life.c:121: memset(pu, 0, sizeof (pu));
      00236B E4               [12] 1045 	clr	a
      00236C C0 E0            [24] 1046 	push	acc
      00236E 74 08            [12] 1047 	mov	a,#0x08
      002370 C0 E0            [24] 1048 	push	acc
      002372 E4               [12] 1049 	clr	a
      002373 C0 E0            [24] 1050 	push	acc
      002375 90 40 00         [24] 1051 	mov	dptr,#_pu
      002378 75 F0 00         [24] 1052 	mov	b,#0x00
      00237B 12 2B 54         [24] 1053 	lcall	_memset
      00237E 15 81            [12] 1054 	dec	sp
      002380 15 81            [12] 1055 	dec	sp
      002382 15 81            [12] 1056 	dec	sp
                                   1057 ;	life.c:127: j = 0;
      002384 78 37            [12] 1058 	mov	r0,#_j
      002386 E4               [12] 1059 	clr	a
      002387 F6               [12] 1060 	mov	@r0,a
      002388 08               [12] 1061 	inc	r0
      002389 F6               [12] 1062 	mov	@r0,a
                                   1063 ;	life.c:129: printstr("LOAD <");
      00238A 7D 1C            [12] 1064 	mov	r5,#___str_2
      00238C 7E 2D            [12] 1065 	mov	r6,#(___str_2 >> 8)
      00238E 7F 80            [12] 1066 	mov	r7,#0x80
                                   1067 ;	life.c:51: return;
      002390                       1068 00189$:
                                   1069 ;	life.c:49: for (; *s; s++) putchar(*s);
      002390 8D 82            [24] 1070 	mov	dpl,r5
      002392 8E 83            [24] 1071 	mov	dph,r6
      002394 8F F0            [24] 1072 	mov	b,r7
      002396 12 2B E5         [24] 1073 	lcall	__gptrget
      002399 FC               [12] 1074 	mov	r4,a
      00239A 60 10            [24] 1075 	jz	00138$
      00239C 7B 00            [12] 1076 	mov	r3,#0x00
      00239E 8C 82            [24] 1077 	mov	dpl,r4
      0023A0 8B 83            [24] 1078 	mov	dph,r3
      0023A2 12 20 C5         [24] 1079 	lcall	_putchar
      0023A5 0D               [12] 1080 	inc	r5
                                   1081 ;	life.c:129: printstr("LOAD <");
      0023A6 BD 00 E7         [24] 1082 	cjne	r5,#0x00,00189$
      0023A9 0E               [12] 1083 	inc	r6
      0023AA 80 E4            [24] 1084 	sjmp	00189$
      0023AC                       1085 00138$:
                                   1086 ;	life.c:131: for (y = 0; y < H; y++) {
      0023AC 78 35            [12] 1087 	mov	r0,#_y
      0023AE E4               [12] 1088 	clr	a
      0023AF F6               [12] 1089 	mov	@r0,a
      0023B0 08               [12] 1090 	inc	r0
      0023B1 F6               [12] 1091 	mov	@r0,a
      0023B2                       1092 00192$:
                                   1093 ;	life.c:132: for (x = 0; x < W; x++) {
      0023B2 78 33            [12] 1094 	mov	r0,#_x
      0023B4 E4               [12] 1095 	clr	a
      0023B5 F6               [12] 1096 	mov	@r0,a
      0023B6 08               [12] 1097 	inc	r0
      0023B7 F6               [12] 1098 	mov	@r0,a
                                   1099 ;	life.c:133: while (1) {
      0023B8                       1100 00151$:
                                   1101 ;	life.c:134: c = toupper(getchar());
      0023B8 12 20 CE         [24] 1102 	lcall	_getchar
      0023BB 12 2B BE         [24] 1103 	lcall	_toupper
      0023BE AE 82            [24] 1104 	mov	r6,dpl
      0023C0 AF 83            [24] 1105 	mov	r7,dph
      0023C2 78 39            [12] 1106 	mov	r0,#_c
      0023C4 A6 06            [24] 1107 	mov	@r0,ar6
      0023C6 08               [12] 1108 	inc	r0
      0023C7 A6 07            [24] 1109 	mov	@r0,ar7
                                   1110 ;	life.c:135: if (c == (int)'0') {
      0023C9 BE 30 37         [24] 1111 	cjne	r6,#0x30,00149$
      0023CC BF 00 34         [24] 1112 	cjne	r7,#0x00,00149$
                                   1113 ;	life.c:136: u[A2D(W, y, x)] = 0;
      0023CF 78 35            [12] 1114 	mov	r0,#_y
      0023D1 86 04            [24] 1115 	mov	ar4,@r0
      0023D3 08               [12] 1116 	inc	r0
      0023D4 E6               [12] 1117 	mov	a,@r0
      0023D5 C4               [12] 1118 	swap	a
      0023D6 23               [12] 1119 	rl	a
      0023D7 54 E0            [12] 1120 	anl	a,#0xe0
      0023D9 CC               [12] 1121 	xch	a,r4
      0023DA C4               [12] 1122 	swap	a
      0023DB 23               [12] 1123 	rl	a
      0023DC CC               [12] 1124 	xch	a,r4
      0023DD 6C               [12] 1125 	xrl	a,r4
      0023DE CC               [12] 1126 	xch	a,r4
      0023DF 54 E0            [12] 1127 	anl	a,#0xe0
      0023E1 CC               [12] 1128 	xch	a,r4
      0023E2 6C               [12] 1129 	xrl	a,r4
      0023E3 FD               [12] 1130 	mov	r5,a
      0023E4 78 33            [12] 1131 	mov	r0,#_x
      0023E6 E6               [12] 1132 	mov	a,@r0
      0023E7 2C               [12] 1133 	add	a,r4
      0023E8 FC               [12] 1134 	mov	r4,a
      0023E9 08               [12] 1135 	inc	r0
      0023EA E6               [12] 1136 	mov	a,@r0
      0023EB 3D               [12] 1137 	addc	a,r5
      0023EC FD               [12] 1138 	mov	r5,a
      0023ED EC               [12] 1139 	mov	a,r4
      0023EE 24 00            [12] 1140 	add	a,#_u
      0023F0 F5 82            [12] 1141 	mov	dpl,a
      0023F2 ED               [12] 1142 	mov	a,r5
      0023F3 34 48            [12] 1143 	addc	a,#(_u >> 8)
      0023F5 F5 83            [12] 1144 	mov	dph,a
      0023F7 E4               [12] 1145 	clr	a
      0023F8 F0               [24] 1146 	movx	@dptr,a
                                   1147 ;	life.c:137: j++;
      0023F9 78 37            [12] 1148 	mov	r0,#_j
      0023FB 06               [12] 1149 	inc	@r0
      0023FC B6 00 02         [24] 1150 	cjne	@r0,#0x00,00443$
      0023FF 08               [12] 1151 	inc	r0
      002400 06               [12] 1152 	inc	@r0
      002401                       1153 00443$:
                                   1154 ;	life.c:138: break;
      002401 80 4E            [24] 1155 	sjmp	00154$
      002403                       1156 00149$:
                                   1157 ;	life.c:139: } else if (c == (int)'1') {
      002403 BE 31 38         [24] 1158 	cjne	r6,#0x31,00147$
      002406 BF 00 35         [24] 1159 	cjne	r7,#0x00,00147$
                                   1160 ;	life.c:140: u[A2D(W, y, x)] = 1;
      002409 78 35            [12] 1161 	mov	r0,#_y
      00240B 86 04            [24] 1162 	mov	ar4,@r0
      00240D 08               [12] 1163 	inc	r0
      00240E E6               [12] 1164 	mov	a,@r0
      00240F C4               [12] 1165 	swap	a
      002410 23               [12] 1166 	rl	a
      002411 54 E0            [12] 1167 	anl	a,#0xe0
      002413 CC               [12] 1168 	xch	a,r4
      002414 C4               [12] 1169 	swap	a
      002415 23               [12] 1170 	rl	a
      002416 CC               [12] 1171 	xch	a,r4
      002417 6C               [12] 1172 	xrl	a,r4
      002418 CC               [12] 1173 	xch	a,r4
      002419 54 E0            [12] 1174 	anl	a,#0xe0
      00241B CC               [12] 1175 	xch	a,r4
      00241C 6C               [12] 1176 	xrl	a,r4
      00241D FD               [12] 1177 	mov	r5,a
      00241E 78 33            [12] 1178 	mov	r0,#_x
      002420 E6               [12] 1179 	mov	a,@r0
      002421 2C               [12] 1180 	add	a,r4
      002422 FC               [12] 1181 	mov	r4,a
      002423 08               [12] 1182 	inc	r0
      002424 E6               [12] 1183 	mov	a,@r0
      002425 3D               [12] 1184 	addc	a,r5
      002426 FD               [12] 1185 	mov	r5,a
      002427 EC               [12] 1186 	mov	a,r4
      002428 24 00            [12] 1187 	add	a,#_u
      00242A F5 82            [12] 1188 	mov	dpl,a
      00242C ED               [12] 1189 	mov	a,r5
      00242D 34 48            [12] 1190 	addc	a,#(_u >> 8)
      00242F F5 83            [12] 1191 	mov	dph,a
      002431 74 01            [12] 1192 	mov	a,#0x01
      002433 F0               [24] 1193 	movx	@dptr,a
                                   1194 ;	life.c:141: j++;
      002434 78 37            [12] 1195 	mov	r0,#_j
      002436 06               [12] 1196 	inc	@r0
      002437 B6 00 02         [24] 1197 	cjne	@r0,#0x00,00446$
      00243A 08               [12] 1198 	inc	r0
      00243B 06               [12] 1199 	inc	@r0
      00243C                       1200 00446$:
                                   1201 ;	life.c:142: break;
      00243C 80 13            [24] 1202 	sjmp	00154$
      00243E                       1203 00147$:
                                   1204 ;	life.c:143: } else if (c == (int)'S') goto br_inner;
      00243E BE 53 05         [24] 1205 	cjne	r6,#0x53,00447$
      002441 BF 00 02         [24] 1206 	cjne	r7,#0x00,00447$
      002444 80 24            [24] 1207 	sjmp	00193$
      002446                       1208 00447$:
                                   1209 ;	life.c:144: else if (c == (int)'#') goto out;
      002446 BE 23 05         [24] 1210 	cjne	r6,#0x23,00448$
      002449 BF 00 02         [24] 1211 	cjne	r7,#0x00,00448$
      00244C 80 35            [24] 1212 	sjmp	00164$
      00244E                       1213 00448$:
      00244E 02 23 B8         [24] 1214 	ljmp	00151$
                                   1215 ;	life.c:148: break;
      002451                       1216 00154$:
                                   1217 ;	life.c:132: for (x = 0; x < W; x++) {
      002451 78 33            [12] 1218 	mov	r0,#_x
      002453 06               [12] 1219 	inc	@r0
      002454 B6 00 02         [24] 1220 	cjne	@r0,#0x00,00449$
      002457 08               [12] 1221 	inc	r0
      002458 06               [12] 1222 	inc	@r0
      002459                       1223 00449$:
      002459 78 33            [12] 1224 	mov	r0,#_x
      00245B C3               [12] 1225 	clr	c
      00245C E6               [12] 1226 	mov	a,@r0
      00245D 94 20            [12] 1227 	subb	a,#0x20
      00245F 08               [12] 1228 	inc	r0
      002460 E6               [12] 1229 	mov	a,@r0
      002461 64 80            [12] 1230 	xrl	a,#0x80
      002463 94 80            [12] 1231 	subb	a,#0x80
      002465 50 03            [24] 1232 	jnc	00450$
      002467 02 23 B8         [24] 1233 	ljmp	00151$
      00246A                       1234 00450$:
      00246A                       1235 00193$:
                                   1236 ;	life.c:131: for (y = 0; y < H; y++) {
      00246A 78 35            [12] 1237 	mov	r0,#_y
      00246C 06               [12] 1238 	inc	@r0
      00246D B6 00 02         [24] 1239 	cjne	@r0,#0x00,00451$
      002470 08               [12] 1240 	inc	r0
      002471 06               [12] 1241 	inc	@r0
      002472                       1242 00451$:
      002472 78 35            [12] 1243 	mov	r0,#_y
      002474 C3               [12] 1244 	clr	c
      002475 E6               [12] 1245 	mov	a,@r0
      002476 94 40            [12] 1246 	subb	a,#0x40
      002478 08               [12] 1247 	inc	r0
      002479 E6               [12] 1248 	mov	a,@r0
      00247A 64 80            [12] 1249 	xrl	a,#0x80
      00247C 94 80            [12] 1250 	subb	a,#0x80
      00247E 50 03            [24] 1251 	jnc	00452$
      002480 02 23 B2         [24] 1252 	ljmp	00192$
      002483                       1253 00452$:
                                   1254 ;	life.c:152: out:
      002483                       1255 00164$:
                                   1256 ;	life.c:153: if (c != (int)'#')
      002483 BE 23 05         [24] 1257 	cjne	r6,#0x23,00453$
      002486 BF 00 02         [24] 1258 	cjne	r7,#0x00,00453$
      002489 80 14            [24] 1259 	sjmp	00163$
      00248B                       1260 00453$:
                                   1261 ;	life.c:154: while (1) {
      00248B                       1262 00160$:
                                   1263 ;	life.c:155: c = getchar();
      00248B 12 20 CE         [24] 1264 	lcall	_getchar
      00248E AE 82            [24] 1265 	mov	r6,dpl
      002490 AF 83            [24] 1266 	mov	r7,dph
      002492 78 39            [12] 1267 	mov	r0,#_c
      002494 A6 06            [24] 1268 	mov	@r0,ar6
      002496 08               [12] 1269 	inc	r0
      002497 A6 07            [24] 1270 	mov	@r0,ar7
                                   1271 ;	life.c:156: if (c == (int)'#') break;
      002499 BE 23 EF         [24] 1272 	cjne	r6,#0x23,00160$
      00249C BF 00 EC         [24] 1273 	cjne	r7,#0x00,00160$
      00249F                       1274 00163$:
                                   1275 ;	life.c:158: print16x(j);
      00249F 78 37            [12] 1276 	mov	r0,#_j
      0024A1 86 06            [24] 1277 	mov	ar6,@r0
      0024A3 08               [12] 1278 	inc	r0
      0024A4 86 07            [24] 1279 	mov	ar7,@r0
      0024A6 8E 04            [24] 1280 	mov	ar4,r6
                                   1281 ;	life.c:40: putchar(digits[(a >> 12) & 0xf]);
      0024A8 EF               [12] 1282 	mov	a,r7
      0024A9 FD               [12] 1283 	mov	r5,a
      0024AA C4               [12] 1284 	swap	a
      0024AB 54 0F            [12] 1285 	anl	a,#0x0f
      0024AD 30 E3 02         [24] 1286 	jnb	acc.3,00456$
      0024B0 44 F0            [12] 1287 	orl	a,#0xf0
      0024B2                       1288 00456$:
      0024B2 FE               [12] 1289 	mov	r6,a
      0024B3 33               [12] 1290 	rlc	a
      0024B4 95 E0            [12] 1291 	subb	a,acc
      0024B6 53 06 0F         [24] 1292 	anl	ar6,#0x0f
      0024B9 EE               [12] 1293 	mov	a,r6
      0024BA 24 21            [12] 1294 	add	a,#_digits
      0024BC F9               [12] 1295 	mov	r1,a
      0024BD 87 07            [24] 1296 	mov	ar7,@r1
      0024BF 7E 00            [12] 1297 	mov	r6,#0x00
      0024C1 8F 82            [24] 1298 	mov	dpl,r7
      0024C3 8E 83            [24] 1299 	mov	dph,r6
      0024C5 12 20 C5         [24] 1300 	lcall	_putchar
                                   1301 ;	life.c:41: putchar(digits[(a >> 8) & 0xf]);
      0024C8 8D 07            [24] 1302 	mov	ar7,r5
      0024CA 53 07 0F         [24] 1303 	anl	ar7,#0x0f
      0024CD EF               [12] 1304 	mov	a,r7
      0024CE 24 21            [12] 1305 	add	a,#_digits
      0024D0 F9               [12] 1306 	mov	r1,a
      0024D1 87 07            [24] 1307 	mov	ar7,@r1
      0024D3 7E 00            [12] 1308 	mov	r6,#0x00
      0024D5 8F 82            [24] 1309 	mov	dpl,r7
      0024D7 8E 83            [24] 1310 	mov	dph,r6
      0024D9 12 20 C5         [24] 1311 	lcall	_putchar
                                   1312 ;	life.c:42: putchar(digits[(a >> 4) & 0xf]);
      0024DC 8C 06            [24] 1313 	mov	ar6,r4
      0024DE ED               [12] 1314 	mov	a,r5
      0024DF C4               [12] 1315 	swap	a
      0024E0 CE               [12] 1316 	xch	a,r6
      0024E1 C4               [12] 1317 	swap	a
      0024E2 54 0F            [12] 1318 	anl	a,#0x0f
      0024E4 6E               [12] 1319 	xrl	a,r6
      0024E5 CE               [12] 1320 	xch	a,r6
      0024E6 54 0F            [12] 1321 	anl	a,#0x0f
      0024E8 CE               [12] 1322 	xch	a,r6
      0024E9 6E               [12] 1323 	xrl	a,r6
      0024EA CE               [12] 1324 	xch	a,r6
      0024EB 30 E3 02         [24] 1325 	jnb	acc.3,00457$
      0024EE 44 F0            [12] 1326 	orl	a,#0xf0
      0024F0                       1327 00457$:
      0024F0 53 06 0F         [24] 1328 	anl	ar6,#0x0f
      0024F3 EE               [12] 1329 	mov	a,r6
      0024F4 24 21            [12] 1330 	add	a,#_digits
      0024F6 F9               [12] 1331 	mov	r1,a
      0024F7 87 07            [24] 1332 	mov	ar7,@r1
      0024F9 7E 00            [12] 1333 	mov	r6,#0x00
      0024FB 8F 82            [24] 1334 	mov	dpl,r7
      0024FD 8E 83            [24] 1335 	mov	dph,r6
      0024FF 12 20 C5         [24] 1336 	lcall	_putchar
                                   1337 ;	life.c:43: putchar(digits[a & 0xf]);
      002502 53 04 0F         [24] 1338 	anl	ar4,#0x0f
      002505 EC               [12] 1339 	mov	a,r4
      002506 24 21            [12] 1340 	add	a,#_digits
      002508 F9               [12] 1341 	mov	r1,a
      002509 87 07            [24] 1342 	mov	ar7,@r1
      00250B 7E 00            [12] 1343 	mov	r6,#0x00
      00250D 8F 82            [24] 1344 	mov	dpl,r7
      00250F 8E 83            [24] 1345 	mov	dph,r6
      002511 12 20 C5         [24] 1346 	lcall	_putchar
                                   1347 ;	life.c:159: printstr(">\r\n");
      002514 7D 23            [12] 1348 	mov	r5,#___str_3
      002516 7E 2D            [12] 1349 	mov	r6,#(___str_3 >> 8)
      002518 7F 80            [12] 1350 	mov	r7,#0x80
                                   1351 ;	life.c:51: return;
      00251A                       1352 00195$:
                                   1353 ;	life.c:49: for (; *s; s++) putchar(*s);
      00251A 8D 82            [24] 1354 	mov	dpl,r5
      00251C 8E 83            [24] 1355 	mov	dph,r6
      00251E 8F F0            [24] 1356 	mov	b,r7
      002520 12 2B E5         [24] 1357 	lcall	__gptrget
      002523 FC               [12] 1358 	mov	r4,a
      002524 60 10            [24] 1359 	jz	00167$
      002526 7B 00            [12] 1360 	mov	r3,#0x00
      002528 8C 82            [24] 1361 	mov	dpl,r4
      00252A 8B 83            [24] 1362 	mov	dph,r3
      00252C 12 20 C5         [24] 1363 	lcall	_putchar
      00252F 0D               [12] 1364 	inc	r5
                                   1365 ;	life.c:159: printstr(">\r\n");
      002530 BD 00 E7         [24] 1366 	cjne	r5,#0x00,00195$
      002533 0E               [12] 1367 	inc	r6
      002534 80 E4            [24] 1368 	sjmp	00195$
      002536                       1369 00167$:
                                   1370 ;	life.c:229: show(0);
      002536 75 82 00         [24] 1371 	mov	dpl,#0x00
      002539 12 20 F3         [24] 1372 	lcall	_show
                                   1373 ;	life.c:231: printstr("READY\r\n");
      00253C 7D 3A            [12] 1374 	mov	r5,#___str_5
      00253E 7E 2D            [12] 1375 	mov	r6,#(___str_5 >> 8)
      002540 7F 80            [12] 1376 	mov	r7,#0x80
                                   1377 ;	life.c:51: return;
      002542                       1378 00198$:
                                   1379 ;	life.c:49: for (; *s; s++) putchar(*s);
      002542 8D 82            [24] 1380 	mov	dpl,r5
      002544 8E 83            [24] 1381 	mov	dph,r6
      002546 8F F0            [24] 1382 	mov	b,r7
      002548 12 2B E5         [24] 1383 	lcall	__gptrget
      00254B FC               [12] 1384 	mov	r4,a
      00254C 60 10            [24] 1385 	jz	00121$
      00254E 7B 00            [12] 1386 	mov	r3,#0x00
      002550 8C 82            [24] 1387 	mov	dpl,r4
      002552 8B 83            [24] 1388 	mov	dph,r3
      002554 12 20 C5         [24] 1389 	lcall	_putchar
      002557 0D               [12] 1390 	inc	r5
                                   1391 ;	life.c:232: while (1) {
      002558 BD 00 E7         [24] 1392 	cjne	r5,#0x00,00198$
      00255B 0E               [12] 1393 	inc	r6
      00255C 80 E4            [24] 1394 	sjmp	00198$
      00255E                       1395 00121$:
                                   1396 ;	life.c:233: c = toupper(getchar());
      00255E 12 20 CE         [24] 1397 	lcall	_getchar
      002561 12 2B BE         [24] 1398 	lcall	_toupper
      002564 AE 82            [24] 1399 	mov	r6,dpl
      002566 AF 83            [24] 1400 	mov	r7,dph
      002568 78 39            [12] 1401 	mov	r0,#_c
      00256A A6 06            [24] 1402 	mov	@r0,ar6
      00256C 08               [12] 1403 	inc	r0
      00256D A6 07            [24] 1404 	mov	@r0,ar7
                                   1405 ;	life.c:234: if (i0 || (c == (int)'T')) goto terminate;
      00256F 78 31            [12] 1406 	mov	r0,#_i0
      002571 E6               [12] 1407 	mov	a,@r0
      002572 60 03            [24] 1408 	jz	00462$
      002574 02 2A 91         [24] 1409 	ljmp	00133$
      002577                       1410 00462$:
      002577 BE 54 06         [24] 1411 	cjne	r6,#0x54,00463$
      00257A BF 00 03         [24] 1412 	cjne	r7,#0x00,00463$
      00257D 02 2A 91         [24] 1413 	ljmp	00133$
      002580                       1414 00463$:
                                   1415 ;	life.c:235: else if (c == (int)'L') goto reload;
      002580 BE 4C 06         [24] 1416 	cjne	r6,#0x4c,00464$
      002583 BF 00 03         [24] 1417 	cjne	r7,#0x00,00464$
      002586 02 23 52         [24] 1418 	ljmp	00110$
      002589                       1419 00464$:
                                   1420 ;	life.c:236: else if (c == (int)'S') break;
      002589 BE 53 D2         [24] 1421 	cjne	r6,#0x53,00121$
      00258C BF 00 CF         [24] 1422 	cjne	r7,#0x00,00121$
                                   1423 ;	life.c:78: generation[0] = 0;
      00258F 78 43            [12] 1424 	mov	r0,#_generation
      002591 76 00            [12] 1425 	mov	@r0,#0x00
      002593 08               [12] 1426 	inc	r0
      002594 76 00            [12] 1427 	mov	@r0,#0x00
                                   1428 ;	life.c:79: generation[1] = 0;
      002596 78 45            [12] 1429 	mov	r0,#(_generation + 0x0002)
      002598 76 00            [12] 1430 	mov	@r0,#0x00
      00259A 08               [12] 1431 	inc	r0
      00259B 76 00            [12] 1432 	mov	@r0,#0x00
                                   1433 ;	life.c:241: for (i1 = 0; !i0 && !i1; ) {
      00259D 78 32            [12] 1434 	mov	r0,#_i1
      00259F 76 00            [12] 1435 	mov	@r0,#0x00
      0025A1                       1436 00215$:
      0025A1 78 31            [12] 1437 	mov	r0,#_i0
      0025A3 E6               [12] 1438 	mov	a,@r0
      0025A4 60 03            [24] 1439 	jz	00467$
      0025A6 02 2A 5F         [24] 1440 	ljmp	00129$
      0025A9                       1441 00467$:
      0025A9 78 32            [12] 1442 	mov	r0,#_i1
      0025AB E6               [12] 1443 	mov	a,@r0
      0025AC 60 03            [24] 1444 	jz	00468$
      0025AE 02 2A 5F         [24] 1445 	ljmp	00129$
      0025B1                       1446 00468$:
                                   1447 ;	life.c:242: show(1);
      0025B1 75 82 01         [24] 1448 	mov	dpl,#0x01
      0025B4 12 20 F3         [24] 1449 	lcall	_show
                                   1450 ;	life.c:167: fixed = 0;
      0025B7 78 3D            [12] 1451 	mov	r0,#_fixed
      0025B9 76 00            [12] 1452 	mov	@r0,#0x00
                                   1453 ;	life.c:168: cycle2 = 0;
      0025BB 78 3E            [12] 1454 	mov	r0,#_cycle2
      0025BD 76 00            [12] 1455 	mov	@r0,#0x00
                                   1456 ;	life.c:169: bstep = 0;
      0025BF 78 3B            [12] 1457 	mov	r0,#_bstep
      0025C1 76 00            [12] 1458 	mov	@r0,#0x00
                                   1459 ;	life.c:171: for (y = 0; y < H; y++) {
      0025C3 78 35            [12] 1460 	mov	r0,#_y
      0025C5 E4               [12] 1461 	clr	a
      0025C6 F6               [12] 1462 	mov	@r0,a
      0025C7 08               [12] 1463 	inc	r0
      0025C8 F6               [12] 1464 	mov	@r0,a
      0025C9                       1465 00202$:
                                   1466 ;	life.c:172: putchar(busy[bstep]); putchar('\r');
      0025C9 78 3B            [12] 1467 	mov	r0,#_bstep
      0025CB E6               [12] 1468 	mov	a,@r0
      0025CC 24 47            [12] 1469 	add	a,#_busy
      0025CE F9               [12] 1470 	mov	r1,a
      0025CF 87 07            [24] 1471 	mov	ar7,@r1
      0025D1 7E 00            [12] 1472 	mov	r6,#0x00
      0025D3 8F 82            [24] 1473 	mov	dpl,r7
      0025D5 8E 83            [24] 1474 	mov	dph,r6
      0025D7 12 20 C5         [24] 1475 	lcall	_putchar
      0025DA 90 00 0D         [24] 1476 	mov	dptr,#0x000d
      0025DD 12 20 C5         [24] 1477 	lcall	_putchar
                                   1478 ;	life.c:173: bstep = (bstep + 1) & 3;
      0025E0 78 3B            [12] 1479 	mov	r0,#_bstep
      0025E2 86 07            [24] 1480 	mov	ar7,@r0
      0025E4 0F               [12] 1481 	inc	r7
      0025E5 78 3B            [12] 1482 	mov	r0,#_bstep
      0025E7 74 03            [12] 1483 	mov	a,#0x03
      0025E9 5F               [12] 1484 	anl	a,r7
      0025EA F6               [12] 1485 	mov	@r0,a
                                   1486 ;	life.c:174: for (x = 0; x < W; x++) {
      0025EB 78 33            [12] 1487 	mov	r0,#_x
      0025ED E4               [12] 1488 	clr	a
      0025EE F6               [12] 1489 	mov	@r0,a
      0025EF 08               [12] 1490 	inc	r0
      0025F0 F6               [12] 1491 	mov	@r0,a
      0025F1                       1492 00200$:
                                   1493 ;	life.c:175: n = -u[A2D(W, y, x)];
      0025F1 78 35            [12] 1494 	mov	r0,#_y
      0025F3 E5 10            [12] 1495 	mov	a,_bp
      0025F5 24 03            [12] 1496 	add	a,#0x03
      0025F7 F9               [12] 1497 	mov	r1,a
      0025F8 E6               [12] 1498 	mov	a,@r0
      0025F9 F7               [12] 1499 	mov	@r1,a
      0025FA 08               [12] 1500 	inc	r0
      0025FB E6               [12] 1501 	mov	a,@r0
      0025FC C4               [12] 1502 	swap	a
      0025FD 23               [12] 1503 	rl	a
      0025FE 54 E0            [12] 1504 	anl	a,#0xe0
      002600 C7               [12] 1505 	xch	a,@r1
      002601 C4               [12] 1506 	swap	a
      002602 23               [12] 1507 	rl	a
      002603 C7               [12] 1508 	xch	a,@r1
      002604 67               [12] 1509 	xrl	a,@r1
      002605 C7               [12] 1510 	xch	a,@r1
      002606 54 E0            [12] 1511 	anl	a,#0xe0
      002608 C7               [12] 1512 	xch	a,@r1
      002609 67               [12] 1513 	xrl	a,@r1
      00260A 09               [12] 1514 	inc	r1
      00260B F7               [12] 1515 	mov	@r1,a
      00260C E5 10            [12] 1516 	mov	a,_bp
      00260E 24 03            [12] 1517 	add	a,#0x03
      002610 F8               [12] 1518 	mov	r0,a
      002611 79 33            [12] 1519 	mov	r1,#_x
      002613 E7               [12] 1520 	mov	a,@r1
      002614 26               [12] 1521 	add	a,@r0
      002615 C0 E0            [24] 1522 	push	acc
      002617 09               [12] 1523 	inc	r1
      002618 E7               [12] 1524 	mov	a,@r1
      002619 08               [12] 1525 	inc	r0
      00261A 36               [12] 1526 	addc	a,@r0
      00261B C0 E0            [24] 1527 	push	acc
      00261D A8 10            [24] 1528 	mov	r0,_bp
      00261F 08               [12] 1529 	inc	r0
      002620 08               [12] 1530 	inc	r0
      002621 D0 E0            [24] 1531 	pop	acc
      002623 F6               [12] 1532 	mov	@r0,a
      002624 18               [12] 1533 	dec	r0
      002625 D0 E0            [24] 1534 	pop	acc
      002627 F6               [12] 1535 	mov	@r0,a
      002628 A8 10            [24] 1536 	mov	r0,_bp
      00262A 08               [12] 1537 	inc	r0
      00262B E6               [12] 1538 	mov	a,@r0
      00262C 24 00            [12] 1539 	add	a,#_u
      00262E F5 82            [12] 1540 	mov	dpl,a
      002630 08               [12] 1541 	inc	r0
      002631 E6               [12] 1542 	mov	a,@r0
      002632 34 48            [12] 1543 	addc	a,#(_u >> 8)
      002634 F5 83            [12] 1544 	mov	dph,a
      002636 E0               [24] 1545 	movx	a,@dptr
      002637 FB               [12] 1546 	mov	r3,a
      002638 C3               [12] 1547 	clr	c
      002639 E4               [12] 1548 	clr	a
      00263A 9B               [12] 1549 	subb	a,r3
      00263B FB               [12] 1550 	mov	r3,a
                                   1551 ;	life.c:178: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      00263C 78 35            [12] 1552 	mov	r0,#_y
      00263E 74 FF            [12] 1553 	mov	a,#0xff
      002640 26               [12] 1554 	add	a,@r0
      002641 FA               [12] 1555 	mov	r2,a
      002642 74 FF            [12] 1556 	mov	a,#0xff
      002644 08               [12] 1557 	inc	r0
      002645 36               [12] 1558 	addc	a,@r0
      002646 FD               [12] 1559 	mov	r5,a
      002647 74 40            [12] 1560 	mov	a,#0x40
      002649 2A               [12] 1561 	add	a,r2
      00264A FA               [12] 1562 	mov	r2,a
      00264B E4               [12] 1563 	clr	a
      00264C 3D               [12] 1564 	addc	a,r5
      00264D FD               [12] 1565 	mov	r5,a
      00264E C0 03            [24] 1566 	push	ar3
      002650 74 40            [12] 1567 	mov	a,#0x40
      002652 C0 E0            [24] 1568 	push	acc
      002654 E4               [12] 1569 	clr	a
      002655 C0 E0            [24] 1570 	push	acc
      002657 8A 82            [24] 1571 	mov	dpl,r2
      002659 8D 83            [24] 1572 	mov	dph,r5
      00265B 12 2C 01         [24] 1573 	lcall	__modsint
      00265E AC 82            [24] 1574 	mov	r4,dpl
      002660 AD 83            [24] 1575 	mov	r5,dph
      002662 15 81            [12] 1576 	dec	sp
      002664 15 81            [12] 1577 	dec	sp
      002666 D0 03            [24] 1578 	pop	ar3
      002668 ED               [12] 1579 	mov	a,r5
      002669 C4               [12] 1580 	swap	a
      00266A 23               [12] 1581 	rl	a
      00266B 54 E0            [12] 1582 	anl	a,#0xe0
      00266D CC               [12] 1583 	xch	a,r4
      00266E C4               [12] 1584 	swap	a
      00266F 23               [12] 1585 	rl	a
      002670 CC               [12] 1586 	xch	a,r4
      002671 6C               [12] 1587 	xrl	a,r4
      002672 CC               [12] 1588 	xch	a,r4
      002673 54 E0            [12] 1589 	anl	a,#0xe0
      002675 CC               [12] 1590 	xch	a,r4
      002676 6C               [12] 1591 	xrl	a,r4
      002677 FD               [12] 1592 	mov	r5,a
      002678 78 33            [12] 1593 	mov	r0,#_x
      00267A 74 FF            [12] 1594 	mov	a,#0xff
      00267C 26               [12] 1595 	add	a,@r0
      00267D FA               [12] 1596 	mov	r2,a
      00267E 74 FF            [12] 1597 	mov	a,#0xff
      002680 08               [12] 1598 	inc	r0
      002681 36               [12] 1599 	addc	a,@r0
      002682 FF               [12] 1600 	mov	r7,a
      002683 74 20            [12] 1601 	mov	a,#0x20
      002685 2A               [12] 1602 	add	a,r2
      002686 FA               [12] 1603 	mov	r2,a
      002687 E4               [12] 1604 	clr	a
      002688 3F               [12] 1605 	addc	a,r7
      002689 FF               [12] 1606 	mov	r7,a
      00268A C0 05            [24] 1607 	push	ar5
      00268C C0 04            [24] 1608 	push	ar4
      00268E C0 03            [24] 1609 	push	ar3
      002690 74 20            [12] 1610 	mov	a,#0x20
      002692 C0 E0            [24] 1611 	push	acc
      002694 E4               [12] 1612 	clr	a
      002695 C0 E0            [24] 1613 	push	acc
      002697 8A 82            [24] 1614 	mov	dpl,r2
      002699 8F 83            [24] 1615 	mov	dph,r7
      00269B 12 2C 01         [24] 1616 	lcall	__modsint
      00269E C8               [12] 1617 	xch	a,r0
      00269F E5 10            [12] 1618 	mov	a,_bp
      0026A1 24 05            [12] 1619 	add	a,#0x05
      0026A3 C8               [12] 1620 	xch	a,r0
      0026A4 A6 82            [24] 1621 	mov	@r0,dpl
      0026A6 08               [12] 1622 	inc	r0
      0026A7 A6 83            [24] 1623 	mov	@r0,dph
      0026A9 15 81            [12] 1624 	dec	sp
      0026AB 15 81            [12] 1625 	dec	sp
      0026AD D0 03            [24] 1626 	pop	ar3
      0026AF D0 04            [24] 1627 	pop	ar4
      0026B1 D0 05            [24] 1628 	pop	ar5
      0026B3 E5 10            [12] 1629 	mov	a,_bp
      0026B5 24 05            [12] 1630 	add	a,#0x05
      0026B7 F8               [12] 1631 	mov	r0,a
      0026B8 E6               [12] 1632 	mov	a,@r0
      0026B9 2C               [12] 1633 	add	a,r4
      0026BA FA               [12] 1634 	mov	r2,a
      0026BB 08               [12] 1635 	inc	r0
      0026BC E6               [12] 1636 	mov	a,@r0
      0026BD 3D               [12] 1637 	addc	a,r5
      0026BE FF               [12] 1638 	mov	r7,a
      0026BF EA               [12] 1639 	mov	a,r2
      0026C0 24 00            [12] 1640 	add	a,#_u
      0026C2 F5 82            [12] 1641 	mov	dpl,a
      0026C4 EF               [12] 1642 	mov	a,r7
      0026C5 34 48            [12] 1643 	addc	a,#(_u >> 8)
      0026C7 F5 83            [12] 1644 	mov	dph,a
      0026C9 E0               [24] 1645 	movx	a,@dptr
      0026CA 2B               [12] 1646 	add	a,r3
      0026CB FB               [12] 1647 	mov	r3,a
                                   1648 ;	life.c:180: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      0026CC 78 33            [12] 1649 	mov	r0,#_x
      0026CE E5 10            [12] 1650 	mov	a,_bp
      0026D0 24 07            [12] 1651 	add	a,#0x07
      0026D2 F9               [12] 1652 	mov	r1,a
      0026D3 E6               [12] 1653 	mov	a,@r0
      0026D4 F7               [12] 1654 	mov	@r1,a
      0026D5 08               [12] 1655 	inc	r0
      0026D6 09               [12] 1656 	inc	r1
      0026D7 E6               [12] 1657 	mov	a,@r0
      0026D8 F7               [12] 1658 	mov	@r1,a
      0026D9 E5 10            [12] 1659 	mov	a,_bp
      0026DB 24 07            [12] 1660 	add	a,#0x07
      0026DD F8               [12] 1661 	mov	r0,a
      0026DE 74 20            [12] 1662 	mov	a,#0x20
      0026E0 26               [12] 1663 	add	a,@r0
      0026E1 FA               [12] 1664 	mov	r2,a
      0026E2 E4               [12] 1665 	clr	a
      0026E3 08               [12] 1666 	inc	r0
      0026E4 36               [12] 1667 	addc	a,@r0
      0026E5 FF               [12] 1668 	mov	r7,a
      0026E6 C0 05            [24] 1669 	push	ar5
      0026E8 C0 04            [24] 1670 	push	ar4
      0026EA C0 03            [24] 1671 	push	ar3
      0026EC 74 20            [12] 1672 	mov	a,#0x20
      0026EE C0 E0            [24] 1673 	push	acc
      0026F0 E4               [12] 1674 	clr	a
      0026F1 C0 E0            [24] 1675 	push	acc
      0026F3 8A 82            [24] 1676 	mov	dpl,r2
      0026F5 8F 83            [24] 1677 	mov	dph,r7
      0026F7 12 2C 01         [24] 1678 	lcall	__modsint
      0026FA C8               [12] 1679 	xch	a,r0
      0026FB E5 10            [12] 1680 	mov	a,_bp
      0026FD 24 09            [12] 1681 	add	a,#0x09
      0026FF C8               [12] 1682 	xch	a,r0
      002700 A6 82            [24] 1683 	mov	@r0,dpl
      002702 08               [12] 1684 	inc	r0
      002703 A6 83            [24] 1685 	mov	@r0,dph
      002705 15 81            [12] 1686 	dec	sp
      002707 15 81            [12] 1687 	dec	sp
      002709 D0 03            [24] 1688 	pop	ar3
      00270B D0 04            [24] 1689 	pop	ar4
      00270D D0 05            [24] 1690 	pop	ar5
      00270F E5 10            [12] 1691 	mov	a,_bp
      002711 24 09            [12] 1692 	add	a,#0x09
      002713 F8               [12] 1693 	mov	r0,a
      002714 E6               [12] 1694 	mov	a,@r0
      002715 2C               [12] 1695 	add	a,r4
      002716 FA               [12] 1696 	mov	r2,a
      002717 08               [12] 1697 	inc	r0
      002718 E6               [12] 1698 	mov	a,@r0
      002719 3D               [12] 1699 	addc	a,r5
      00271A FF               [12] 1700 	mov	r7,a
      00271B EA               [12] 1701 	mov	a,r2
      00271C 24 00            [12] 1702 	add	a,#_u
      00271E F5 82            [12] 1703 	mov	dpl,a
      002720 EF               [12] 1704 	mov	a,r7
      002721 34 48            [12] 1705 	addc	a,#(_u >> 8)
      002723 F5 83            [12] 1706 	mov	dph,a
      002725 E0               [24] 1707 	movx	a,@dptr
      002726 2B               [12] 1708 	add	a,r3
      002727 FB               [12] 1709 	mov	r3,a
                                   1710 ;	life.c:182: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      002728 E5 10            [12] 1711 	mov	a,_bp
      00272A 24 07            [12] 1712 	add	a,#0x07
      00272C F8               [12] 1713 	mov	r0,a
      00272D 74 21            [12] 1714 	mov	a,#0x21
      00272F 26               [12] 1715 	add	a,@r0
      002730 FE               [12] 1716 	mov	r6,a
      002731 E4               [12] 1717 	clr	a
      002732 08               [12] 1718 	inc	r0
      002733 36               [12] 1719 	addc	a,@r0
      002734 FF               [12] 1720 	mov	r7,a
      002735 C0 05            [24] 1721 	push	ar5
      002737 C0 04            [24] 1722 	push	ar4
      002739 C0 03            [24] 1723 	push	ar3
      00273B 74 20            [12] 1724 	mov	a,#0x20
      00273D C0 E0            [24] 1725 	push	acc
      00273F E4               [12] 1726 	clr	a
      002740 C0 E0            [24] 1727 	push	acc
      002742 8E 82            [24] 1728 	mov	dpl,r6
      002744 8F 83            [24] 1729 	mov	dph,r7
      002746 12 2C 01         [24] 1730 	lcall	__modsint
      002749 AE 82            [24] 1731 	mov	r6,dpl
      00274B AF 83            [24] 1732 	mov	r7,dph
      00274D 15 81            [12] 1733 	dec	sp
      00274F 15 81            [12] 1734 	dec	sp
      002751 D0 03            [24] 1735 	pop	ar3
      002753 D0 04            [24] 1736 	pop	ar4
      002755 D0 05            [24] 1737 	pop	ar5
      002757 EE               [12] 1738 	mov	a,r6
      002758 2C               [12] 1739 	add	a,r4
      002759 FC               [12] 1740 	mov	r4,a
      00275A EF               [12] 1741 	mov	a,r7
      00275B 3D               [12] 1742 	addc	a,r5
      00275C FD               [12] 1743 	mov	r5,a
      00275D EC               [12] 1744 	mov	a,r4
      00275E 24 00            [12] 1745 	add	a,#_u
      002760 F5 82            [12] 1746 	mov	dpl,a
      002762 ED               [12] 1747 	mov	a,r5
      002763 34 48            [12] 1748 	addc	a,#(_u >> 8)
      002765 F5 83            [12] 1749 	mov	dph,a
      002767 E0               [24] 1750 	movx	a,@dptr
      002768 2B               [12] 1751 	add	a,r3
      002769 FB               [12] 1752 	mov	r3,a
                                   1753 ;	life.c:184: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      00276A 78 35            [12] 1754 	mov	r0,#_y
      00276C E5 10            [12] 1755 	mov	a,_bp
      00276E 24 0B            [12] 1756 	add	a,#0x0b
      002770 F9               [12] 1757 	mov	r1,a
      002771 E6               [12] 1758 	mov	a,@r0
      002772 F7               [12] 1759 	mov	@r1,a
      002773 08               [12] 1760 	inc	r0
      002774 09               [12] 1761 	inc	r1
      002775 E6               [12] 1762 	mov	a,@r0
      002776 F7               [12] 1763 	mov	@r1,a
      002777 E5 10            [12] 1764 	mov	a,_bp
      002779 24 0B            [12] 1765 	add	a,#0x0b
      00277B F8               [12] 1766 	mov	r0,a
      00277C 74 40            [12] 1767 	mov	a,#0x40
      00277E 26               [12] 1768 	add	a,@r0
      00277F FA               [12] 1769 	mov	r2,a
      002780 E4               [12] 1770 	clr	a
      002781 08               [12] 1771 	inc	r0
      002782 36               [12] 1772 	addc	a,@r0
      002783 FD               [12] 1773 	mov	r5,a
      002784 C0 07            [24] 1774 	push	ar7
      002786 C0 06            [24] 1775 	push	ar6
      002788 C0 03            [24] 1776 	push	ar3
      00278A 74 40            [12] 1777 	mov	a,#0x40
      00278C C0 E0            [24] 1778 	push	acc
      00278E E4               [12] 1779 	clr	a
      00278F C0 E0            [24] 1780 	push	acc
      002791 8A 82            [24] 1781 	mov	dpl,r2
      002793 8D 83            [24] 1782 	mov	dph,r5
      002795 12 2C 01         [24] 1783 	lcall	__modsint
      002798 AC 82            [24] 1784 	mov	r4,dpl
      00279A AD 83            [24] 1785 	mov	r5,dph
      00279C 15 81            [12] 1786 	dec	sp
      00279E 15 81            [12] 1787 	dec	sp
      0027A0 D0 03            [24] 1788 	pop	ar3
      0027A2 D0 06            [24] 1789 	pop	ar6
      0027A4 D0 07            [24] 1790 	pop	ar7
      0027A6 E5 10            [12] 1791 	mov	a,_bp
      0027A8 24 0D            [12] 1792 	add	a,#0x0d
      0027AA F8               [12] 1793 	mov	r0,a
      0027AB A6 04            [24] 1794 	mov	@r0,ar4
      0027AD ED               [12] 1795 	mov	a,r5
      0027AE C4               [12] 1796 	swap	a
      0027AF 23               [12] 1797 	rl	a
      0027B0 54 E0            [12] 1798 	anl	a,#0xe0
      0027B2 C6               [12] 1799 	xch	a,@r0
      0027B3 C4               [12] 1800 	swap	a
      0027B4 23               [12] 1801 	rl	a
      0027B5 C6               [12] 1802 	xch	a,@r0
      0027B6 66               [12] 1803 	xrl	a,@r0
      0027B7 C6               [12] 1804 	xch	a,@r0
      0027B8 54 E0            [12] 1805 	anl	a,#0xe0
      0027BA C6               [12] 1806 	xch	a,@r0
      0027BB 66               [12] 1807 	xrl	a,@r0
      0027BC 08               [12] 1808 	inc	r0
      0027BD F6               [12] 1809 	mov	@r0,a
      0027BE E5 10            [12] 1810 	mov	a,_bp
      0027C0 24 0D            [12] 1811 	add	a,#0x0d
      0027C2 F8               [12] 1812 	mov	r0,a
      0027C3 E5 10            [12] 1813 	mov	a,_bp
      0027C5 24 05            [12] 1814 	add	a,#0x05
      0027C7 F9               [12] 1815 	mov	r1,a
      0027C8 E7               [12] 1816 	mov	a,@r1
      0027C9 26               [12] 1817 	add	a,@r0
      0027CA FA               [12] 1818 	mov	r2,a
      0027CB 09               [12] 1819 	inc	r1
      0027CC E7               [12] 1820 	mov	a,@r1
      0027CD 08               [12] 1821 	inc	r0
      0027CE 36               [12] 1822 	addc	a,@r0
      0027CF FD               [12] 1823 	mov	r5,a
      0027D0 EA               [12] 1824 	mov	a,r2
      0027D1 24 00            [12] 1825 	add	a,#_u
      0027D3 F5 82            [12] 1826 	mov	dpl,a
      0027D5 ED               [12] 1827 	mov	a,r5
      0027D6 34 48            [12] 1828 	addc	a,#(_u >> 8)
      0027D8 F5 83            [12] 1829 	mov	dph,a
      0027DA E0               [24] 1830 	movx	a,@dptr
      0027DB 2B               [12] 1831 	add	a,r3
      0027DC FB               [12] 1832 	mov	r3,a
                                   1833 ;	life.c:186: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      0027DD E5 10            [12] 1834 	mov	a,_bp
      0027DF 24 0D            [12] 1835 	add	a,#0x0d
      0027E1 F8               [12] 1836 	mov	r0,a
      0027E2 E5 10            [12] 1837 	mov	a,_bp
      0027E4 24 09            [12] 1838 	add	a,#0x09
      0027E6 F9               [12] 1839 	mov	r1,a
      0027E7 E7               [12] 1840 	mov	a,@r1
      0027E8 26               [12] 1841 	add	a,@r0
      0027E9 FC               [12] 1842 	mov	r4,a
      0027EA 09               [12] 1843 	inc	r1
      0027EB E7               [12] 1844 	mov	a,@r1
      0027EC 08               [12] 1845 	inc	r0
      0027ED 36               [12] 1846 	addc	a,@r0
      0027EE FD               [12] 1847 	mov	r5,a
      0027EF EC               [12] 1848 	mov	a,r4
      0027F0 24 00            [12] 1849 	add	a,#_u
      0027F2 F5 82            [12] 1850 	mov	dpl,a
      0027F4 ED               [12] 1851 	mov	a,r5
      0027F5 34 48            [12] 1852 	addc	a,#(_u >> 8)
      0027F7 F5 83            [12] 1853 	mov	dph,a
      0027F9 E0               [24] 1854 	movx	a,@dptr
      0027FA 2B               [12] 1855 	add	a,r3
      0027FB FB               [12] 1856 	mov	r3,a
                                   1857 ;	life.c:188: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      0027FC E5 10            [12] 1858 	mov	a,_bp
      0027FE 24 0D            [12] 1859 	add	a,#0x0d
      002800 F8               [12] 1860 	mov	r0,a
      002801 EE               [12] 1861 	mov	a,r6
      002802 26               [12] 1862 	add	a,@r0
      002803 FC               [12] 1863 	mov	r4,a
      002804 EF               [12] 1864 	mov	a,r7
      002805 08               [12] 1865 	inc	r0
      002806 36               [12] 1866 	addc	a,@r0
      002807 FD               [12] 1867 	mov	r5,a
      002808 EC               [12] 1868 	mov	a,r4
      002809 24 00            [12] 1869 	add	a,#_u
      00280B F5 82            [12] 1870 	mov	dpl,a
      00280D ED               [12] 1871 	mov	a,r5
      00280E 34 48            [12] 1872 	addc	a,#(_u >> 8)
      002810 F5 83            [12] 1873 	mov	dph,a
      002812 E0               [24] 1874 	movx	a,@dptr
      002813 2B               [12] 1875 	add	a,r3
      002814 FB               [12] 1876 	mov	r3,a
                                   1877 ;	life.c:190: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      002815 E5 10            [12] 1878 	mov	a,_bp
      002817 24 0B            [12] 1879 	add	a,#0x0b
      002819 F8               [12] 1880 	mov	r0,a
      00281A 74 41            [12] 1881 	mov	a,#0x41
      00281C 26               [12] 1882 	add	a,@r0
      00281D FC               [12] 1883 	mov	r4,a
      00281E E4               [12] 1884 	clr	a
      00281F 08               [12] 1885 	inc	r0
      002820 36               [12] 1886 	addc	a,@r0
      002821 FD               [12] 1887 	mov	r5,a
      002822 C0 07            [24] 1888 	push	ar7
      002824 C0 06            [24] 1889 	push	ar6
      002826 C0 03            [24] 1890 	push	ar3
      002828 74 40            [12] 1891 	mov	a,#0x40
      00282A C0 E0            [24] 1892 	push	acc
      00282C E4               [12] 1893 	clr	a
      00282D C0 E0            [24] 1894 	push	acc
      00282F 8C 82            [24] 1895 	mov	dpl,r4
      002831 8D 83            [24] 1896 	mov	dph,r5
      002833 12 2C 01         [24] 1897 	lcall	__modsint
      002836 AC 82            [24] 1898 	mov	r4,dpl
      002838 AD 83            [24] 1899 	mov	r5,dph
      00283A 15 81            [12] 1900 	dec	sp
      00283C 15 81            [12] 1901 	dec	sp
      00283E D0 03            [24] 1902 	pop	ar3
      002840 D0 06            [24] 1903 	pop	ar6
      002842 D0 07            [24] 1904 	pop	ar7
      002844 E5 10            [12] 1905 	mov	a,_bp
      002846 24 0D            [12] 1906 	add	a,#0x0d
      002848 F8               [12] 1907 	mov	r0,a
      002849 A6 04            [24] 1908 	mov	@r0,ar4
      00284B ED               [12] 1909 	mov	a,r5
      00284C C4               [12] 1910 	swap	a
      00284D 23               [12] 1911 	rl	a
      00284E 54 E0            [12] 1912 	anl	a,#0xe0
      002850 C6               [12] 1913 	xch	a,@r0
      002851 C4               [12] 1914 	swap	a
      002852 23               [12] 1915 	rl	a
      002853 C6               [12] 1916 	xch	a,@r0
      002854 66               [12] 1917 	xrl	a,@r0
      002855 C6               [12] 1918 	xch	a,@r0
      002856 54 E0            [12] 1919 	anl	a,#0xe0
      002858 C6               [12] 1920 	xch	a,@r0
      002859 66               [12] 1921 	xrl	a,@r0
      00285A 08               [12] 1922 	inc	r0
      00285B F6               [12] 1923 	mov	@r0,a
      00285C E5 10            [12] 1924 	mov	a,_bp
      00285E 24 0D            [12] 1925 	add	a,#0x0d
      002860 F8               [12] 1926 	mov	r0,a
      002861 E5 10            [12] 1927 	mov	a,_bp
      002863 24 05            [12] 1928 	add	a,#0x05
      002865 F9               [12] 1929 	mov	r1,a
      002866 E7               [12] 1930 	mov	a,@r1
      002867 26               [12] 1931 	add	a,@r0
      002868 FA               [12] 1932 	mov	r2,a
      002869 09               [12] 1933 	inc	r1
      00286A E7               [12] 1934 	mov	a,@r1
      00286B 08               [12] 1935 	inc	r0
      00286C 36               [12] 1936 	addc	a,@r0
      00286D FD               [12] 1937 	mov	r5,a
      00286E EA               [12] 1938 	mov	a,r2
      00286F 24 00            [12] 1939 	add	a,#_u
      002871 F5 82            [12] 1940 	mov	dpl,a
      002873 ED               [12] 1941 	mov	a,r5
      002874 34 48            [12] 1942 	addc	a,#(_u >> 8)
      002876 F5 83            [12] 1943 	mov	dph,a
      002878 E0               [24] 1944 	movx	a,@dptr
      002879 2B               [12] 1945 	add	a,r3
      00287A FB               [12] 1946 	mov	r3,a
                                   1947 ;	life.c:192: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      00287B E5 10            [12] 1948 	mov	a,_bp
      00287D 24 0D            [12] 1949 	add	a,#0x0d
      00287F F8               [12] 1950 	mov	r0,a
      002880 E5 10            [12] 1951 	mov	a,_bp
      002882 24 09            [12] 1952 	add	a,#0x09
      002884 F9               [12] 1953 	mov	r1,a
      002885 E7               [12] 1954 	mov	a,@r1
      002886 26               [12] 1955 	add	a,@r0
      002887 FC               [12] 1956 	mov	r4,a
      002888 09               [12] 1957 	inc	r1
      002889 E7               [12] 1958 	mov	a,@r1
      00288A 08               [12] 1959 	inc	r0
      00288B 36               [12] 1960 	addc	a,@r0
      00288C FD               [12] 1961 	mov	r5,a
      00288D EC               [12] 1962 	mov	a,r4
      00288E 24 00            [12] 1963 	add	a,#_u
      002890 F5 82            [12] 1964 	mov	dpl,a
      002892 ED               [12] 1965 	mov	a,r5
      002893 34 48            [12] 1966 	addc	a,#(_u >> 8)
      002895 F5 83            [12] 1967 	mov	dph,a
      002897 E0               [24] 1968 	movx	a,@dptr
      002898 2B               [12] 1969 	add	a,r3
      002899 FB               [12] 1970 	mov	r3,a
                                   1971 ;	life.c:193: y1 = 1; x1 = 1;
      00289A 78 41            [12] 1972 	mov	r0,#_y1
      00289C 76 01            [12] 1973 	mov	@r0,#0x01
      00289E 08               [12] 1974 	inc	r0
      00289F 76 00            [12] 1975 	mov	@r0,#0x00
      0028A1 78 3F            [12] 1976 	mov	r0,#_x1
      0028A3 76 01            [12] 1977 	mov	@r0,#0x01
      0028A5 08               [12] 1978 	inc	r0
      0028A6 76 00            [12] 1979 	mov	@r0,#0x00
                                   1980 ;	life.c:194: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      0028A8 E5 10            [12] 1981 	mov	a,_bp
      0028AA 24 0D            [12] 1982 	add	a,#0x0d
      0028AC F8               [12] 1983 	mov	r0,a
      0028AD EE               [12] 1984 	mov	a,r6
      0028AE 26               [12] 1985 	add	a,@r0
      0028AF FE               [12] 1986 	mov	r6,a
      0028B0 EF               [12] 1987 	mov	a,r7
      0028B1 08               [12] 1988 	inc	r0
      0028B2 36               [12] 1989 	addc	a,@r0
      0028B3 FF               [12] 1990 	mov	r7,a
      0028B4 EE               [12] 1991 	mov	a,r6
      0028B5 24 00            [12] 1992 	add	a,#_u
      0028B7 F5 82            [12] 1993 	mov	dpl,a
      0028B9 EF               [12] 1994 	mov	a,r7
      0028BA 34 48            [12] 1995 	addc	a,#(_u >> 8)
      0028BC F5 83            [12] 1996 	mov	dph,a
      0028BE E0               [24] 1997 	movx	a,@dptr
      0028BF 2B               [12] 1998 	add	a,r3
      0028C0 FF               [12] 1999 	mov	r7,a
      0028C1 78 3C            [12] 2000 	mov	r0,#_n
      0028C3 A6 07            [24] 2001 	mov	@r0,ar7
                                   2002 ;	life.c:196: nu[A2D(W, y, x)] = (n == 3) || ((n == 2) && u[A2D(W, y, x)]);
      0028C5 A8 10            [24] 2003 	mov	r0,_bp
      0028C7 08               [12] 2004 	inc	r0
      0028C8 E6               [12] 2005 	mov	a,@r0
      0028C9 24 00            [12] 2006 	add	a,#_nu
      0028CB FD               [12] 2007 	mov	r5,a
      0028CC 08               [12] 2008 	inc	r0
      0028CD E6               [12] 2009 	mov	a,@r0
      0028CE 34 50            [12] 2010 	addc	a,#(_nu >> 8)
      0028D0 FE               [12] 2011 	mov	r6,a
      0028D1 BF 03 02         [24] 2012 	cjne	r7,#0x03,00469$
      0028D4 80 28            [24] 2013 	sjmp	00228$
      0028D6                       2014 00469$:
      0028D6 BF 02 21         [24] 2015 	cjne	r7,#0x02,00227$
      0028D9 E5 10            [12] 2016 	mov	a,_bp
      0028DB 24 03            [12] 2017 	add	a,#0x03
      0028DD F8               [12] 2018 	mov	r0,a
      0028DE E5 10            [12] 2019 	mov	a,_bp
      0028E0 24 07            [12] 2020 	add	a,#0x07
      0028E2 F9               [12] 2021 	mov	r1,a
      0028E3 E7               [12] 2022 	mov	a,@r1
      0028E4 26               [12] 2023 	add	a,@r0
      0028E5 FC               [12] 2024 	mov	r4,a
      0028E6 09               [12] 2025 	inc	r1
      0028E7 E7               [12] 2026 	mov	a,@r1
      0028E8 08               [12] 2027 	inc	r0
      0028E9 36               [12] 2028 	addc	a,@r0
      0028EA FF               [12] 2029 	mov	r7,a
      0028EB EC               [12] 2030 	mov	a,r4
      0028EC 24 00            [12] 2031 	add	a,#_u
      0028EE FC               [12] 2032 	mov	r4,a
      0028EF EF               [12] 2033 	mov	a,r7
      0028F0 34 48            [12] 2034 	addc	a,#(_u >> 8)
      0028F2 FF               [12] 2035 	mov	r7,a
      0028F3 8C 82            [24] 2036 	mov	dpl,r4
      0028F5 8F 83            [24] 2037 	mov	dph,r7
      0028F7 E0               [24] 2038 	movx	a,@dptr
      0028F8 70 04            [24] 2039 	jnz	00228$
      0028FA                       2040 00227$:
                                   2041 ;	assignBit
      0028FA C2 00            [12] 2042 	clr	b0
      0028FC 80 02            [24] 2043 	sjmp	00229$
      0028FE                       2044 00228$:
                                   2045 ;	assignBit
      0028FE D2 00            [12] 2046 	setb	b0
      002900                       2047 00229$:
      002900 A2 00            [12] 2048 	mov	c,b0
      002902 E4               [12] 2049 	clr	a
      002903 33               [12] 2050 	rlc	a
      002904 8D 82            [24] 2051 	mov	dpl,r5
      002906 8E 83            [24] 2052 	mov	dph,r6
      002908 F0               [24] 2053 	movx	@dptr,a
                                   2054 ;	life.c:197: cycle2 |= pu[A2D(W, y, x)] ^ nu[A2D(W, y, x)];
      002909 78 35            [12] 2055 	mov	r0,#_y
      00290B 86 06            [24] 2056 	mov	ar6,@r0
      00290D 08               [12] 2057 	inc	r0
      00290E E6               [12] 2058 	mov	a,@r0
      00290F C4               [12] 2059 	swap	a
      002910 23               [12] 2060 	rl	a
      002911 54 E0            [12] 2061 	anl	a,#0xe0
      002913 CE               [12] 2062 	xch	a,r6
      002914 C4               [12] 2063 	swap	a
      002915 23               [12] 2064 	rl	a
      002916 CE               [12] 2065 	xch	a,r6
      002917 6E               [12] 2066 	xrl	a,r6
      002918 CE               [12] 2067 	xch	a,r6
      002919 54 E0            [12] 2068 	anl	a,#0xe0
      00291B CE               [12] 2069 	xch	a,r6
      00291C 6E               [12] 2070 	xrl	a,r6
      00291D FF               [12] 2071 	mov	r7,a
      00291E 78 33            [12] 2072 	mov	r0,#_x
      002920 E6               [12] 2073 	mov	a,@r0
      002921 2E               [12] 2074 	add	a,r6
      002922 FE               [12] 2075 	mov	r6,a
      002923 08               [12] 2076 	inc	r0
      002924 E6               [12] 2077 	mov	a,@r0
      002925 3F               [12] 2078 	addc	a,r7
      002926 FF               [12] 2079 	mov	r7,a
      002927 EE               [12] 2080 	mov	a,r6
      002928 24 00            [12] 2081 	add	a,#_pu
      00292A F5 82            [12] 2082 	mov	dpl,a
      00292C EF               [12] 2083 	mov	a,r7
      00292D 34 40            [12] 2084 	addc	a,#(_pu >> 8)
      00292F F5 83            [12] 2085 	mov	dph,a
      002931 E0               [24] 2086 	movx	a,@dptr
      002932 FD               [12] 2087 	mov	r5,a
      002933 EE               [12] 2088 	mov	a,r6
      002934 24 00            [12] 2089 	add	a,#_nu
      002936 F5 82            [12] 2090 	mov	dpl,a
      002938 EF               [12] 2091 	mov	a,r7
      002939 34 50            [12] 2092 	addc	a,#(_nu >> 8)
      00293B F5 83            [12] 2093 	mov	dph,a
      00293D E0               [24] 2094 	movx	a,@dptr
      00293E FC               [12] 2095 	mov	r4,a
      00293F 6D               [12] 2096 	xrl	a,r5
      002940 78 3E            [12] 2097 	mov	r0,#_cycle2
      002942 46               [12] 2098 	orl	a,@r0
      002943 F6               [12] 2099 	mov	@r0,a
                                   2100 ;	life.c:198: fixed |= u[A2D(W, y, x)] ^ nu[A2D(W, y, x)];
      002944 EE               [12] 2101 	mov	a,r6
      002945 24 00            [12] 2102 	add	a,#_u
      002947 F5 82            [12] 2103 	mov	dpl,a
      002949 EF               [12] 2104 	mov	a,r7
      00294A 34 48            [12] 2105 	addc	a,#(_u >> 8)
      00294C F5 83            [12] 2106 	mov	dph,a
      00294E E0               [24] 2107 	movx	a,@dptr
      00294F FF               [12] 2108 	mov	r7,a
      002950 EC               [12] 2109 	mov	a,r4
      002951 6F               [12] 2110 	xrl	a,r7
      002952 78 3D            [12] 2111 	mov	r0,#_fixed
      002954 46               [12] 2112 	orl	a,@r0
      002955 F6               [12] 2113 	mov	@r0,a
                                   2114 ;	life.c:174: for (x = 0; x < W; x++) {
      002956 78 33            [12] 2115 	mov	r0,#_x
      002958 06               [12] 2116 	inc	@r0
      002959 B6 00 02         [24] 2117 	cjne	@r0,#0x00,00473$
      00295C 08               [12] 2118 	inc	r0
      00295D 06               [12] 2119 	inc	@r0
      00295E                       2120 00473$:
      00295E 78 33            [12] 2121 	mov	r0,#_x
      002960 C3               [12] 2122 	clr	c
      002961 E6               [12] 2123 	mov	a,@r0
      002962 94 20            [12] 2124 	subb	a,#0x20
      002964 08               [12] 2125 	inc	r0
      002965 E6               [12] 2126 	mov	a,@r0
      002966 64 80            [12] 2127 	xrl	a,#0x80
      002968 94 80            [12] 2128 	subb	a,#0x80
      00296A 50 03            [24] 2129 	jnc	00474$
      00296C 02 25 F1         [24] 2130 	ljmp	00200$
      00296F                       2131 00474$:
                                   2132 ;	life.c:171: for (y = 0; y < H; y++) {
      00296F 78 35            [12] 2133 	mov	r0,#_y
      002971 06               [12] 2134 	inc	@r0
      002972 B6 00 02         [24] 2135 	cjne	@r0,#0x00,00475$
      002975 08               [12] 2136 	inc	r0
      002976 06               [12] 2137 	inc	@r0
      002977                       2138 00475$:
      002977 78 35            [12] 2139 	mov	r0,#_y
      002979 C3               [12] 2140 	clr	c
      00297A E6               [12] 2141 	mov	a,@r0
      00297B 94 40            [12] 2142 	subb	a,#0x40
      00297D 08               [12] 2143 	inc	r0
      00297E E6               [12] 2144 	mov	a,@r0
      00297F 64 80            [12] 2145 	xrl	a,#0x80
      002981 94 80            [12] 2146 	subb	a,#0x80
      002983 50 03            [24] 2147 	jnc	00476$
      002985 02 25 C9         [24] 2148 	ljmp	00202$
      002988                       2149 00476$:
                                   2150 ;	life.c:202: cycle2 = !cycle2;
      002988 78 3E            [12] 2151 	mov	r0,#_cycle2
      00298A E6               [12] 2152 	mov	a,@r0
      00298B B4 01 00         [24] 2153 	cjne	a,#0x01,00477$
      00298E                       2154 00477$:
      00298E 92 00            [24] 2155 	mov	b0,c
      002990 78 3E            [12] 2156 	mov	r0,#_cycle2
      002992 E4               [12] 2157 	clr	a
      002993 33               [12] 2158 	rlc	a
      002994 F6               [12] 2159 	mov	@r0,a
                                   2160 ;	life.c:203: fixed = !fixed;
      002995 78 3D            [12] 2161 	mov	r0,#_fixed
      002997 E6               [12] 2162 	mov	a,@r0
      002998 B4 01 00         [24] 2163 	cjne	a,#0x01,00478$
      00299B                       2164 00478$:
      00299B 92 00            [24] 2165 	mov	b0,c
      00299D 78 3D            [12] 2166 	mov	r0,#_fixed
      00299F E4               [12] 2167 	clr	a
      0029A0 33               [12] 2168 	rlc	a
      0029A1 F6               [12] 2169 	mov	@r0,a
                                   2170 ;	life.c:205: memcpy(pu, u, sizeof (u));
      0029A2 E4               [12] 2171 	clr	a
      0029A3 C0 E0            [24] 2172 	push	acc
      0029A5 74 08            [12] 2173 	mov	a,#0x08
      0029A7 C0 E0            [24] 2174 	push	acc
      0029A9 74 00            [12] 2175 	mov	a,#_u
      0029AB C0 E0            [24] 2176 	push	acc
      0029AD 74 48            [12] 2177 	mov	a,#(_u >> 8)
      0029AF C0 E0            [24] 2178 	push	acc
      0029B1 E4               [12] 2179 	clr	a
      0029B2 C0 E0            [24] 2180 	push	acc
      0029B4 90 40 00         [24] 2181 	mov	dptr,#_pu
      0029B7 75 F0 00         [24] 2182 	mov	b,#0x00
      0029BA 12 2A C1         [24] 2183 	lcall	___memcpy
      0029BD E5 81            [12] 2184 	mov	a,sp
      0029BF 24 FB            [12] 2185 	add	a,#0xfb
      0029C1 F5 81            [12] 2186 	mov	sp,a
                                   2187 ;	life.c:206: memcpy(u, nu, sizeof (nu));
      0029C3 E4               [12] 2188 	clr	a
      0029C4 C0 E0            [24] 2189 	push	acc
      0029C6 74 08            [12] 2190 	mov	a,#0x08
      0029C8 C0 E0            [24] 2191 	push	acc
      0029CA 74 00            [12] 2192 	mov	a,#_nu
      0029CC C0 E0            [24] 2193 	push	acc
      0029CE 74 50            [12] 2194 	mov	a,#(_nu >> 8)
      0029D0 C0 E0            [24] 2195 	push	acc
      0029D2 E4               [12] 2196 	clr	a
      0029D3 C0 E0            [24] 2197 	push	acc
      0029D5 90 48 00         [24] 2198 	mov	dptr,#_u
      0029D8 75 F0 00         [24] 2199 	mov	b,#0x00
      0029DB 12 2A C1         [24] 2200 	lcall	___memcpy
      0029DE E5 81            [12] 2201 	mov	a,sp
      0029E0 24 FB            [12] 2202 	add	a,#0xfb
      0029E2 F5 81            [12] 2203 	mov	sp,a
                                   2204 ;	life.c:244: if (fixed || cycle2) {
      0029E4 78 3D            [12] 2205 	mov	r0,#_fixed
      0029E6 E6               [12] 2206 	mov	a,@r0
      0029E7 70 08            [24] 2207 	jnz	00126$
      0029E9 78 3E            [12] 2208 	mov	r0,#_cycle2
      0029EB E6               [12] 2209 	mov	a,@r0
      0029EC 70 03            [24] 2210 	jnz	00480$
      0029EE 02 25 A1         [24] 2211 	ljmp	00215$
      0029F1                       2212 00480$:
      0029F1                       2213 00126$:
                                   2214 ;	life.c:245: printstr("DONE ");
      0029F1 7D 42            [12] 2215 	mov	r5,#___str_6
      0029F3 7E 2D            [12] 2216 	mov	r6,#(___str_6 >> 8)
      0029F5 7F 80            [12] 2217 	mov	r7,#0x80
                                   2218 ;	life.c:51: return;
      0029F7                       2219 00205$:
                                   2220 ;	life.c:49: for (; *s; s++) putchar(*s);
      0029F7 8D 82            [24] 2221 	mov	dpl,r5
      0029F9 8E 83            [24] 2222 	mov	dph,r6
      0029FB 8F F0            [24] 2223 	mov	b,r7
      0029FD 12 2B E5         [24] 2224 	lcall	__gptrget
      002A00 FC               [12] 2225 	mov	r4,a
      002A01 60 10            [24] 2226 	jz	00176$
      002A03 7B 00            [12] 2227 	mov	r3,#0x00
      002A05 8C 82            [24] 2228 	mov	dpl,r4
      002A07 8B 83            [24] 2229 	mov	dph,r3
      002A09 12 20 C5         [24] 2230 	lcall	_putchar
      002A0C 0D               [12] 2231 	inc	r5
                                   2232 ;	life.c:245: printstr("DONE ");
      002A0D BD 00 E7         [24] 2233 	cjne	r5,#0x00,00205$
      002A10 0E               [12] 2234 	inc	r6
      002A11 80 E4            [24] 2235 	sjmp	00205$
      002A13                       2236 00176$:
                                   2237 ;	life.c:246: if (fixed) printstr("FIXED\r\n");
      002A13 78 3D            [12] 2238 	mov	r0,#_fixed
      002A15 E6               [12] 2239 	mov	a,@r0
      002A16 60 22            [24] 2240 	jz	00124$
      002A18 7D 48            [12] 2241 	mov	r5,#___str_7
      002A1A 7E 2D            [12] 2242 	mov	r6,#(___str_7 >> 8)
      002A1C 7F 80            [12] 2243 	mov	r7,#0x80
                                   2244 ;	life.c:51: return;
      002A1E                       2245 00208$:
                                   2246 ;	life.c:49: for (; *s; s++) putchar(*s);
      002A1E 8D 82            [24] 2247 	mov	dpl,r5
      002A20 8E 83            [24] 2248 	mov	dph,r6
      002A22 8F F0            [24] 2249 	mov	b,r7
      002A24 12 2B E5         [24] 2250 	lcall	__gptrget
      002A27 FC               [12] 2251 	mov	r4,a
      002A28 60 32            [24] 2252 	jz	00125$
      002A2A 7B 00            [12] 2253 	mov	r3,#0x00
      002A2C 8C 82            [24] 2254 	mov	dpl,r4
      002A2E 8B 83            [24] 2255 	mov	dph,r3
      002A30 12 20 C5         [24] 2256 	lcall	_putchar
      002A33 0D               [12] 2257 	inc	r5
                                   2258 ;	life.c:246: if (fixed) printstr("FIXED\r\n");
      002A34 BD 00 E7         [24] 2259 	cjne	r5,#0x00,00208$
      002A37 0E               [12] 2260 	inc	r6
      002A38 80 E4            [24] 2261 	sjmp	00208$
      002A3A                       2262 00124$:
                                   2263 ;	life.c:247: else printstr("CYCLE2\r\n");
      002A3A 7D 50            [12] 2264 	mov	r5,#___str_8
      002A3C 7E 2D            [12] 2265 	mov	r6,#(___str_8 >> 8)
      002A3E 7F 80            [12] 2266 	mov	r7,#0x80
                                   2267 ;	life.c:51: return;
      002A40                       2268 00211$:
                                   2269 ;	life.c:49: for (; *s; s++) putchar(*s);
      002A40 8D 82            [24] 2270 	mov	dpl,r5
      002A42 8E 83            [24] 2271 	mov	dph,r6
      002A44 8F F0            [24] 2272 	mov	b,r7
      002A46 12 2B E5         [24] 2273 	lcall	__gptrget
      002A49 FC               [12] 2274 	mov	r4,a
      002A4A 60 10            [24] 2275 	jz	00125$
      002A4C 7B 00            [12] 2276 	mov	r3,#0x00
      002A4E 8C 82            [24] 2277 	mov	dpl,r4
      002A50 8B 83            [24] 2278 	mov	dph,r3
      002A52 12 20 C5         [24] 2279 	lcall	_putchar
      002A55 0D               [12] 2280 	inc	r5
                                   2281 ;	life.c:247: else printstr("CYCLE2\r\n");
      002A56 BD 00 E7         [24] 2282 	cjne	r5,#0x00,00211$
      002A59 0E               [12] 2283 	inc	r6
      002A5A 80 E4            [24] 2284 	sjmp	00211$
      002A5C                       2285 00125$:
                                   2286 ;	life.c:248: (void)getchar();
      002A5C 12 20 CE         [24] 2287 	lcall	_getchar
                                   2288 ;	life.c:249: break;
      002A5F                       2289 00129$:
                                   2290 ;	life.c:253: if (i1) {
      002A5F 78 32            [12] 2291 	mov	r0,#_i1
      002A61 E6               [12] 2292 	mov	a,@r0
      002A62 60 25            [24] 2293 	jz	00221$
                                   2294 ;	life.c:254: printstr("BREAK\r\n");
      002A64 7D 59            [12] 2295 	mov	r5,#___str_9
      002A66 7E 2D            [12] 2296 	mov	r6,#(___str_9 >> 8)
      002A68 7F 80            [12] 2297 	mov	r7,#0x80
                                   2298 ;	life.c:51: return;
      002A6A                       2299 00218$:
                                   2300 ;	life.c:49: for (; *s; s++) putchar(*s);
      002A6A 8D 82            [24] 2301 	mov	dpl,r5
      002A6C 8E 83            [24] 2302 	mov	dph,r6
      002A6E 8F F0            [24] 2303 	mov	b,r7
      002A70 12 2B E5         [24] 2304 	lcall	__gptrget
      002A73 FC               [12] 2305 	mov	r4,a
      002A74 60 10            [24] 2306 	jz	00182$
      002A76 7B 00            [12] 2307 	mov	r3,#0x00
      002A78 8C 82            [24] 2308 	mov	dpl,r4
      002A7A 8B 83            [24] 2309 	mov	dph,r3
      002A7C 12 20 C5         [24] 2310 	lcall	_putchar
      002A7F 0D               [12] 2311 	inc	r5
                                   2312 ;	life.c:254: printstr("BREAK\r\n");
      002A80 BD 00 E7         [24] 2313 	cjne	r5,#0x00,00218$
      002A83 0E               [12] 2314 	inc	r6
      002A84 80 E4            [24] 2315 	sjmp	00218$
      002A86                       2316 00182$:
                                   2317 ;	life.c:255: (void)getchar();
      002A86 12 20 CE         [24] 2318 	lcall	_getchar
      002A89                       2319 00221$:
                                   2320 ;	life.c:218: for (i0 = 0; !i0; ) {		
      002A89 78 31            [12] 2321 	mov	r0,#_i0
      002A8B E6               [12] 2322 	mov	a,@r0
      002A8C 70 03            [24] 2323 	jnz	00491$
      002A8E 02 23 08         [24] 2324 	ljmp	00220$
      002A91                       2325 00491$:
                                   2326 ;	life.c:259: terminate:
      002A91                       2327 00133$:
                                   2328 ;	life.c:260: EA = 0;
                                   2329 ;	assignBit
      002A91 C2 AF            [12] 2330 	clr	_EA
                                   2331 ;	life.c:261: printstr("TERM\r\n");
      002A93 7D 61            [12] 2332 	mov	r5,#___str_10
      002A95 7E 2D            [12] 2333 	mov	r6,#(___str_10 >> 8)
      002A97 7F 80            [12] 2334 	mov	r7,#0x80
                                   2335 ;	life.c:51: return;
      002A99                       2336 00223$:
                                   2337 ;	life.c:49: for (; *s; s++) putchar(*s);
      002A99 8D 82            [24] 2338 	mov	dpl,r5
      002A9B 8E 83            [24] 2339 	mov	dph,r6
      002A9D 8F F0            [24] 2340 	mov	b,r7
      002A9F 12 2B E5         [24] 2341 	lcall	__gptrget
      002AA2 FC               [12] 2342 	mov	r4,a
      002AA3 60 10            [24] 2343 	jz	00184$
      002AA5 7B 00            [12] 2344 	mov	r3,#0x00
      002AA7 8C 82            [24] 2345 	mov	dpl,r4
      002AA9 8B 83            [24] 2346 	mov	dph,r3
      002AAB 12 20 C5         [24] 2347 	lcall	_putchar
      002AAE 0D               [12] 2348 	inc	r5
                                   2349 ;	life.c:261: printstr("TERM\r\n");
      002AAF BD 00 E7         [24] 2350 	cjne	r5,#0x00,00223$
      002AB2 0E               [12] 2351 	inc	r6
      002AB3 80 E4            [24] 2352 	sjmp	00223$
      002AB5                       2353 00184$:
                                   2354 ;	life.c:262: (void)getchar();
      002AB5 12 20 CE         [24] 2355 	lcall	_getchar
                                   2356 ;	life.c:264: PCON |= 2;
      002AB8 43 87 02         [24] 2357 	orl	_PCON,#0x02
                                   2358 ;	life.c:266: return;
                                   2359 ;	life.c:267: }
      002ABB 85 10 81         [24] 2360 	mov	sp,_bp
      002ABE D0 10            [24] 2361 	pop	_bp
      002AC0 22               [24] 2362 	ret
                                   2363 	.area CSEG    (CODE)
                                   2364 	.area CONST   (CODE)
                                   2365 	.area CONST   (CODE)
      002D0D                       2366 ___str_0:
      002D0D 1B                    2367 	.db 0x1b
      002D0E 5B 32 4A              2368 	.ascii "[2J"
      002D11 1B                    2369 	.db 0x1b
      002D12 5B 6D 47 45 4E 20     2370 	.ascii "[mGEN "
      002D18 00                    2371 	.db 0x00
                                   2372 	.area CSEG    (CODE)
                                   2373 	.area CONST   (CODE)
      002D19                       2374 ___str_1:
      002D19 0D                    2375 	.db 0x0d
      002D1A 0A                    2376 	.db 0x0a
      002D1B 00                    2377 	.db 0x00
                                   2378 	.area CSEG    (CODE)
                                   2379 	.area CONST   (CODE)
      002D1C                       2380 ___str_2:
      002D1C 4C 4F 41 44 20 3C     2381 	.ascii "LOAD <"
      002D22 00                    2382 	.db 0x00
                                   2383 	.area CSEG    (CODE)
                                   2384 	.area CONST   (CODE)
      002D23                       2385 ___str_3:
      002D23 3E                    2386 	.ascii ">"
      002D24 0D                    2387 	.db 0x0d
      002D25 0A                    2388 	.db 0x0a
      002D26 00                    2389 	.db 0x00
                                   2390 	.area CSEG    (CODE)
                                   2391 	.area CONST   (CODE)
      002D27                       2392 ___str_4:
      002D27 1B                    2393 	.db 0x1b
      002D28 5B 32 4A              2394 	.ascii "[2J"
      002D2B 1B                    2395 	.db 0x1b
      002D2C 5B 6D 4C 49 46 45 20  2396 	.ascii "[mLIFE INIT"
             49 4E 49 54
      002D37 0D                    2397 	.db 0x0d
      002D38 0A                    2398 	.db 0x0a
      002D39 00                    2399 	.db 0x00
                                   2400 	.area CSEG    (CODE)
                                   2401 	.area CONST   (CODE)
      002D3A                       2402 ___str_5:
      002D3A 52 45 41 44 59        2403 	.ascii "READY"
      002D3F 0D                    2404 	.db 0x0d
      002D40 0A                    2405 	.db 0x0a
      002D41 00                    2406 	.db 0x00
                                   2407 	.area CSEG    (CODE)
                                   2408 	.area CONST   (CODE)
      002D42                       2409 ___str_6:
      002D42 44 4F 4E 45 20        2410 	.ascii "DONE "
      002D47 00                    2411 	.db 0x00
                                   2412 	.area CSEG    (CODE)
                                   2413 	.area CONST   (CODE)
      002D48                       2414 ___str_7:
      002D48 46 49 58 45 44        2415 	.ascii "FIXED"
      002D4D 0D                    2416 	.db 0x0d
      002D4E 0A                    2417 	.db 0x0a
      002D4F 00                    2418 	.db 0x00
                                   2419 	.area CSEG    (CODE)
                                   2420 	.area CONST   (CODE)
      002D50                       2421 ___str_8:
      002D50 43 59 43 4C 45 32     2422 	.ascii "CYCLE2"
      002D56 0D                    2423 	.db 0x0d
      002D57 0A                    2424 	.db 0x0a
      002D58 00                    2425 	.db 0x00
                                   2426 	.area CSEG    (CODE)
                                   2427 	.area CONST   (CODE)
      002D59                       2428 ___str_9:
      002D59 42 52 45 41 4B        2429 	.ascii "BREAK"
      002D5E 0D                    2430 	.db 0x0d
      002D5F 0A                    2431 	.db 0x0a
      002D60 00                    2432 	.db 0x00
                                   2433 	.area CSEG    (CODE)
                                   2434 	.area CONST   (CODE)
      002D61                       2435 ___str_10:
      002D61 54 45 52 4D           2436 	.ascii "TERM"
      002D65 0D                    2437 	.db 0x0d
      002D66 0A                    2438 	.db 0x0a
      002D67 00                    2439 	.db 0x00
                                   2440 	.area CSEG    (CODE)
                                   2441 	.area XINIT   (CODE)
                                   2442 	.area CABS    (ABS,CODE)
