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
      006000                        362 _pu:
      006000                        363 	.ds 9216
      008400                        364 _u:
      008400                        365 	.ds 9216
      00A800                        366 _nu:
      00A800                        367 	.ds 9216
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
      002016 02 22 DE         [24]  460 	ljmp	_main
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
      0020F3 7D 76            [12]  581 	mov	r5,#___str_0
      0020F5 7E 2D            [12]  582 	mov	r6,#(___str_0 >> 8)
      0020F7 7F 80            [12]  583 	mov	r7,#0x80
                                    584 ;	life.c:49: return;
      0020F9                        585 00121$:
                                    586 ;	life.c:47: for (; *s; s++) putchar(*s);
      0020F9 8D 82            [24]  587 	mov	dpl,r5
      0020FB 8E 83            [24]  588 	mov	dph,r6
      0020FD 8F F0            [24]  589 	mov	b,r7
      0020FF 12 2C 4E         [24]  590 	lcall	__gptrget
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
      0021F7 7D 82            [12]  744 	mov	r5,#___str_1
      0021F9 7E 2D            [12]  745 	mov	r6,#(___str_1 >> 8)
      0021FB 7F 80            [12]  746 	mov	r7,#0x80
                                    747 ;	life.c:49: return;
      0021FD                        748 00124$:
                                    749 ;	life.c:47: for (; *s; s++) putchar(*s);
      0021FD 8D 82            [24]  750 	mov	dpl,r5
      0021FF 8E 83            [24]  751 	mov	dph,r6
      002201 8F F0            [24]  752 	mov	b,r7
      002203 12 2C 4E         [24]  753 	lcall	__gptrget
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
      002251 E6               [12]  813 	mov	a,@r0
      002252 C0 E0            [24]  814 	push	acc
      002254 08               [12]  815 	inc	r0
      002255 E6               [12]  816 	mov	a,@r0
      002256 C0 E0            [24]  817 	push	acc
      002258 90 00 30         [24]  818 	mov	dptr,#0x0030
      00225B 12 2A 8C         [24]  819 	lcall	__mulint
      00225E AE 82            [24]  820 	mov	r6,dpl
      002260 AF 83            [24]  821 	mov	r7,dph
      002262 15 81            [12]  822 	dec	sp
      002264 15 81            [12]  823 	dec	sp
      002266 78 33            [12]  824 	mov	r0,#_x
      002268 E6               [12]  825 	mov	a,@r0
      002269 2E               [12]  826 	add	a,r6
      00226A FE               [12]  827 	mov	r6,a
      00226B 08               [12]  828 	inc	r0
      00226C E6               [12]  829 	mov	a,@r0
      00226D 3F               [12]  830 	addc	a,r7
      00226E FF               [12]  831 	mov	r7,a
      00226F EE               [12]  832 	mov	a,r6
      002270 24 00            [12]  833 	add	a,#_u
      002272 FE               [12]  834 	mov	r6,a
      002273 EF               [12]  835 	mov	a,r7
      002274 34 84            [12]  836 	addc	a,#(_u >> 8)
      002276 FF               [12]  837 	mov	r7,a
      002277 8E 82            [24]  838 	mov	dpl,r6
      002279 8F 83            [24]  839 	mov	dph,r7
      00227B E0               [24]  840 	movx	a,@dptr
      00227C 60 08            [24]  841 	jz	00104$
      00227E 90 00 31         [24]  842 	mov	dptr,#0x0031
      002281 12 20 C5         [24]  843 	lcall	_putchar
      002284 80 06            [24]  844 	sjmp	00127$
      002286                        845 00104$:
                                    846 ;	life.c:107: else putchar('0');
      002286 90 00 30         [24]  847 	mov	dptr,#0x0030
      002289 12 20 C5         [24]  848 	lcall	_putchar
      00228C                        849 00127$:
                                    850 ;	life.c:105: for (y = 0; y < H; y++)
      00228C 78 35            [12]  851 	mov	r0,#_y
      00228E 06               [12]  852 	inc	@r0
      00228F B6 00 02         [24]  853 	cjne	@r0,#0x00,00203$
      002292 08               [12]  854 	inc	r0
      002293 06               [12]  855 	inc	@r0
      002294                        856 00203$:
      002294 78 35            [12]  857 	mov	r0,#_y
      002296 C3               [12]  858 	clr	c
      002297 E6               [12]  859 	mov	a,@r0
      002298 94 C0            [12]  860 	subb	a,#0xc0
      00229A 08               [12]  861 	inc	r0
      00229B E6               [12]  862 	mov	a,@r0
      00229C 64 80            [12]  863 	xrl	a,#0x80
      00229E 94 80            [12]  864 	subb	a,#0x80
      0022A0 40 AD            [24]  865 	jc	00126$
                                    866 ;	life.c:108: printstr("\r\n");
      0022A2 7D 82            [12]  867 	mov	r5,#___str_1
      0022A4 7E 2D            [12]  868 	mov	r6,#(___str_1 >> 8)
      0022A6 7F 80            [12]  869 	mov	r7,#0x80
                                    870 ;	life.c:49: return;
      0022A8                        871 00129$:
                                    872 ;	life.c:47: for (; *s; s++) putchar(*s);
      0022A8 8D 82            [24]  873 	mov	dpl,r5
      0022AA 8E 83            [24]  874 	mov	dph,r6
      0022AC 8F F0            [24]  875 	mov	b,r7
      0022AE 12 2C 4E         [24]  876 	lcall	__gptrget
      0022B1 FC               [12]  877 	mov	r4,a
      0022B2 60 10            [24]  878 	jz	00119$
      0022B4 7B 00            [12]  879 	mov	r3,#0x00
      0022B6 8C 82            [24]  880 	mov	dpl,r4
      0022B8 8B 83            [24]  881 	mov	dph,r3
      0022BA 12 20 C5         [24]  882 	lcall	_putchar
      0022BD 0D               [12]  883 	inc	r5
                                    884 ;	life.c:108: printstr("\r\n");
      0022BE BD 00 E7         [24]  885 	cjne	r5,#0x00,00129$
      0022C1 0E               [12]  886 	inc	r6
      0022C2 80 E4            [24]  887 	sjmp	00129$
      0022C4                        888 00119$:
                                    889 ;	life.c:104: for (x = 0; x < W; x++) {
      0022C4 78 33            [12]  890 	mov	r0,#_x
      0022C6 06               [12]  891 	inc	@r0
      0022C7 B6 00 02         [24]  892 	cjne	@r0,#0x00,00207$
      0022CA 08               [12]  893 	inc	r0
      0022CB 06               [12]  894 	inc	@r0
      0022CC                        895 00207$:
      0022CC 78 33            [12]  896 	mov	r0,#_x
      0022CE C3               [12]  897 	clr	c
      0022CF E6               [12]  898 	mov	a,@r0
      0022D0 94 30            [12]  899 	subb	a,#0x30
      0022D2 08               [12]  900 	inc	r0
      0022D3 E6               [12]  901 	mov	a,@r0
      0022D4 64 80            [12]  902 	xrl	a,#0x80
      0022D6 94 80            [12]  903 	subb	a,#0x80
      0022D8 50 03            [24]  904 	jnc	00208$
      0022DA 02 22 49         [24]  905 	ljmp	00131$
      0022DD                        906 00208$:
                                    907 ;	life.c:111: return;
                                    908 ;	life.c:112: }
      0022DD 22               [24]  909 	ret
                                    910 ;------------------------------------------------------------
                                    911 ;Allocation info for local variables in function 'main'
                                    912 ;------------------------------------------------------------
                                    913 ;__2621440019              Allocated to registers 
                                    914 ;s                         Allocated to registers r5 r6 r7 
                                    915 ;__1310720013              Allocated to registers 
                                    916 ;s                         Allocated to registers r5 r6 r7 
                                    917 ;__1310720015              Allocated to registers r6 r7 
                                    918 ;a                         Allocated to registers r4 r5 
                                    919 ;__1310720017              Allocated to registers 
                                    920 ;s                         Allocated to registers r5 r6 r7 
                                    921 ;__2621440023              Allocated to registers 
                                    922 ;s                         Allocated to registers r5 r6 r7 
                                    923 ;__4587520027              Allocated to registers 
                                    924 ;s                         Allocated to registers r5 r6 r7 
                                    925 ;__4587520029              Allocated to registers 
                                    926 ;s                         Allocated to registers r5 r6 r7 
                                    927 ;__4587520031              Allocated to registers 
                                    928 ;s                         Allocated to registers r5 r6 r7 
                                    929 ;__3276800033              Allocated to registers 
                                    930 ;s                         Allocated to registers r5 r6 r7 
                                    931 ;__1310720035              Allocated to registers 
                                    932 ;s                         Allocated to registers r5 r6 r7 
                                    933 ;sloc0                     Allocated to stack - _bp +1
                                    934 ;sloc1                     Allocated to stack - _bp +3
                                    935 ;sloc2                     Allocated to stack - _bp +5
                                    936 ;sloc3                     Allocated to stack - _bp +7
                                    937 ;sloc4                     Allocated to stack - _bp +9
                                    938 ;sloc5                     Allocated to stack - _bp +11
                                    939 ;sloc6                     Allocated to stack - _bp +13
                                    940 ;------------------------------------------------------------
                                    941 ;	life.c:206: void main(void) {
                                    942 ;	-----------------------------------------
                                    943 ;	 function main
                                    944 ;	-----------------------------------------
      0022DE                        945 _main:
      0022DE C0 10            [24]  946 	push	_bp
      0022E0 E5 81            [12]  947 	mov	a,sp
      0022E2 F5 10            [12]  948 	mov	_bp,a
      0022E4 24 0E            [12]  949 	add	a,#0x0e
      0022E6 F5 81            [12]  950 	mov	sp,a
                                    951 ;	life.c:207: IT0 = 1;
                                    952 ;	assignBit
      0022E8 D2 88            [12]  953 	setb	_IT0
                                    954 ;	life.c:208: IT1 = 1;
                                    955 ;	assignBit
      0022EA D2 8A            [12]  956 	setb	_IT1
                                    957 ;	life.c:209: EX0 = 1;
                                    958 ;	assignBit
      0022EC D2 A8            [12]  959 	setb	_EX0
                                    960 ;	life.c:210: EX1 = 1;
                                    961 ;	assignBit
      0022EE D2 AA            [12]  962 	setb	_EX1
                                    963 ;	life.c:211: EA = 1;
                                    964 ;	assignBit
      0022F0 D2 AF            [12]  965 	setb	_EA
                                    966 ;	life.c:213: for (i0 = 0; !i0; ) {		
      0022F2 78 31            [12]  967 	mov	r0,#_i0
      0022F4 76 00            [12]  968 	mov	@r0,#0x00
      0022F6                        969 00220$:
                                    970 ;	life.c:214: printstr("\033[2J\033[mLIFE INIT\r\n");
      0022F6 7D 90            [12]  971 	mov	r5,#___str_4
      0022F8 7E 2D            [12]  972 	mov	r6,#(___str_4 >> 8)
      0022FA 7F 80            [12]  973 	mov	r7,#0x80
                                    974 ;	life.c:49: return;
      0022FC                        975 00186$:
                                    976 ;	life.c:47: for (; *s; s++) putchar(*s);
      0022FC 8D 82            [24]  977 	mov	dpl,r5
      0022FE 8E 83            [24]  978 	mov	dph,r6
      002300 8F F0            [24]  979 	mov	b,r7
      002302 12 2C 4E         [24]  980 	lcall	__gptrget
      002305 FC               [12]  981 	mov	r4,a
      002306 60 10            [24]  982 	jz	00108$
      002308 7B 00            [12]  983 	mov	r3,#0x00
      00230A 8C 82            [24]  984 	mov	dpl,r4
      00230C 8B 83            [24]  985 	mov	dph,r3
      00230E 12 20 C5         [24]  986 	lcall	_putchar
      002311 0D               [12]  987 	inc	r5
                                    988 ;	life.c:215: while (1) {
      002312 BD 00 E7         [24]  989 	cjne	r5,#0x00,00186$
      002315 0E               [12]  990 	inc	r6
      002316 80 E4            [24]  991 	sjmp	00186$
      002318                        992 00108$:
                                    993 ;	life.c:216: c = toupper(getchar());
      002318 12 20 CA         [24]  994 	lcall	_getchar
      00231B 12 2C 27         [24]  995 	lcall	_toupper
      00231E AE 82            [24]  996 	mov	r6,dpl
      002320 AF 83            [24]  997 	mov	r7,dph
      002322 78 39            [12]  998 	mov	r0,#_c
      002324 A6 06            [24]  999 	mov	@r0,ar6
      002326 08               [12] 1000 	inc	r0
      002327 A6 07            [24] 1001 	mov	@r0,ar7
                                   1002 ;	life.c:217: if (i0 || (c == (int)'T')) goto terminate;
      002329 78 31            [12] 1003 	mov	r0,#_i0
      00232B E6               [12] 1004 	mov	a,@r0
      00232C 60 03            [24] 1005 	jz	00435$
      00232E 02 2A 5C         [24] 1006 	ljmp	00133$
      002331                       1007 00435$:
      002331 BE 54 06         [24] 1008 	cjne	r6,#0x54,00436$
      002334 BF 00 03         [24] 1009 	cjne	r7,#0x00,00436$
      002337 02 2A 5C         [24] 1010 	ljmp	00133$
      00233A                       1011 00436$:
                                   1012 ;	life.c:218: else if (c == (int)'L') break;
      00233A BE 4C DB         [24] 1013 	cjne	r6,#0x4c,00108$
      00233D BF 00 D8         [24] 1014 	cjne	r7,#0x00,00108$
                                   1015 ;	life.c:221: reload:
      002340                       1016 00110$:
                                   1017 ;	life.c:115: memset(u, 0, sizeof (u));
      002340 E4               [12] 1018 	clr	a
      002341 C0 E0            [24] 1019 	push	acc
      002343 74 24            [12] 1020 	mov	a,#0x24
      002345 C0 E0            [24] 1021 	push	acc
      002347 E4               [12] 1022 	clr	a
      002348 C0 E0            [24] 1023 	push	acc
      00234A 90 84 00         [24] 1024 	mov	dptr,#_u
      00234D 75 F0 00         [24] 1025 	mov	b,#0x00
      002350 12 2B BD         [24] 1026 	lcall	_memset
      002353 15 81            [12] 1027 	dec	sp
      002355 15 81            [12] 1028 	dec	sp
      002357 15 81            [12] 1029 	dec	sp
                                   1030 ;	life.c:116: memset(pu, 0, sizeof (pu));
      002359 E4               [12] 1031 	clr	a
      00235A C0 E0            [24] 1032 	push	acc
      00235C 74 24            [12] 1033 	mov	a,#0x24
      00235E C0 E0            [24] 1034 	push	acc
      002360 E4               [12] 1035 	clr	a
      002361 C0 E0            [24] 1036 	push	acc
      002363 90 60 00         [24] 1037 	mov	dptr,#_pu
      002366 75 F0 00         [24] 1038 	mov	b,#0x00
      002369 12 2B BD         [24] 1039 	lcall	_memset
      00236C 15 81            [12] 1040 	dec	sp
      00236E 15 81            [12] 1041 	dec	sp
      002370 15 81            [12] 1042 	dec	sp
                                   1043 ;	life.c:122: j = 0;
      002372 78 37            [12] 1044 	mov	r0,#_j
      002374 E4               [12] 1045 	clr	a
      002375 F6               [12] 1046 	mov	@r0,a
      002376 08               [12] 1047 	inc	r0
      002377 F6               [12] 1048 	mov	@r0,a
                                   1049 ;	life.c:124: printstr("LOAD <");
      002378 7D 85            [12] 1050 	mov	r5,#___str_2
      00237A 7E 2D            [12] 1051 	mov	r6,#(___str_2 >> 8)
      00237C 7F 80            [12] 1052 	mov	r7,#0x80
                                   1053 ;	life.c:49: return;
      00237E                       1054 00189$:
                                   1055 ;	life.c:47: for (; *s; s++) putchar(*s);
      00237E 8D 82            [24] 1056 	mov	dpl,r5
      002380 8E 83            [24] 1057 	mov	dph,r6
      002382 8F F0            [24] 1058 	mov	b,r7
      002384 12 2C 4E         [24] 1059 	lcall	__gptrget
      002387 FC               [12] 1060 	mov	r4,a
      002388 60 10            [24] 1061 	jz	00138$
      00238A 7B 00            [12] 1062 	mov	r3,#0x00
      00238C 8C 82            [24] 1063 	mov	dpl,r4
      00238E 8B 83            [24] 1064 	mov	dph,r3
      002390 12 20 C5         [24] 1065 	lcall	_putchar
      002393 0D               [12] 1066 	inc	r5
                                   1067 ;	life.c:124: printstr("LOAD <");
      002394 BD 00 E7         [24] 1068 	cjne	r5,#0x00,00189$
      002397 0E               [12] 1069 	inc	r6
      002398 80 E4            [24] 1070 	sjmp	00189$
      00239A                       1071 00138$:
                                   1072 ;	life.c:126: for (y = 0; y < (H * W); y += W) {
      00239A 78 35            [12] 1073 	mov	r0,#_y
      00239C E4               [12] 1074 	clr	a
      00239D F6               [12] 1075 	mov	@r0,a
      00239E 08               [12] 1076 	inc	r0
      00239F F6               [12] 1077 	mov	@r0,a
      0023A0                       1078 00192$:
                                   1079 ;	life.c:127: for (x = 0; x < W; x++) {
      0023A0 78 33            [12] 1080 	mov	r0,#_x
      0023A2 E4               [12] 1081 	clr	a
      0023A3 F6               [12] 1082 	mov	@r0,a
      0023A4 08               [12] 1083 	inc	r0
      0023A5 F6               [12] 1084 	mov	@r0,a
                                   1085 ;	life.c:128: while (1) {
      0023A6                       1086 00151$:
                                   1087 ;	life.c:129: c = getchar();
      0023A6 12 20 CA         [24] 1088 	lcall	_getchar
      0023A9 AE 82            [24] 1089 	mov	r6,dpl
      0023AB AF 83            [24] 1090 	mov	r7,dph
      0023AD 78 39            [12] 1091 	mov	r0,#_c
      0023AF A6 06            [24] 1092 	mov	@r0,ar6
      0023B1 08               [12] 1093 	inc	r0
      0023B2 A6 07            [24] 1094 	mov	@r0,ar7
                                   1095 ;	life.c:130: if (c == (int)'0') {
      0023B4 BE 30 25         [24] 1096 	cjne	r6,#0x30,00149$
      0023B7 BF 00 22         [24] 1097 	cjne	r7,#0x00,00149$
                                   1098 ;	life.c:131: u[y + x] = 0;
      0023BA 78 35            [12] 1099 	mov	r0,#_y
      0023BC 79 33            [12] 1100 	mov	r1,#_x
      0023BE E7               [12] 1101 	mov	a,@r1
      0023BF 26               [12] 1102 	add	a,@r0
      0023C0 FC               [12] 1103 	mov	r4,a
      0023C1 09               [12] 1104 	inc	r1
      0023C2 E7               [12] 1105 	mov	a,@r1
      0023C3 08               [12] 1106 	inc	r0
      0023C4 36               [12] 1107 	addc	a,@r0
      0023C5 FD               [12] 1108 	mov	r5,a
      0023C6 EC               [12] 1109 	mov	a,r4
      0023C7 24 00            [12] 1110 	add	a,#_u
      0023C9 F5 82            [12] 1111 	mov	dpl,a
      0023CB ED               [12] 1112 	mov	a,r5
      0023CC 34 84            [12] 1113 	addc	a,#(_u >> 8)
      0023CE F5 83            [12] 1114 	mov	dph,a
      0023D0 E4               [12] 1115 	clr	a
      0023D1 F0               [24] 1116 	movx	@dptr,a
                                   1117 ;	life.c:132: j++;
      0023D2 78 37            [12] 1118 	mov	r0,#_j
      0023D4 06               [12] 1119 	inc	@r0
      0023D5 B6 00 02         [24] 1120 	cjne	@r0,#0x00,00443$
      0023D8 08               [12] 1121 	inc	r0
      0023D9 06               [12] 1122 	inc	@r0
      0023DA                       1123 00443$:
                                   1124 ;	life.c:133: break;
      0023DA 80 39            [24] 1125 	sjmp	00154$
      0023DC                       1126 00149$:
                                   1127 ;	life.c:134: } else if (c == (int)'1') {
      0023DC BE 31 26         [24] 1128 	cjne	r6,#0x31,00147$
      0023DF BF 00 23         [24] 1129 	cjne	r7,#0x00,00147$
                                   1130 ;	life.c:135: u[y + x] = 1;
      0023E2 78 35            [12] 1131 	mov	r0,#_y
      0023E4 79 33            [12] 1132 	mov	r1,#_x
      0023E6 E7               [12] 1133 	mov	a,@r1
      0023E7 26               [12] 1134 	add	a,@r0
      0023E8 FC               [12] 1135 	mov	r4,a
      0023E9 09               [12] 1136 	inc	r1
      0023EA E7               [12] 1137 	mov	a,@r1
      0023EB 08               [12] 1138 	inc	r0
      0023EC 36               [12] 1139 	addc	a,@r0
      0023ED FD               [12] 1140 	mov	r5,a
      0023EE EC               [12] 1141 	mov	a,r4
      0023EF 24 00            [12] 1142 	add	a,#_u
      0023F1 F5 82            [12] 1143 	mov	dpl,a
      0023F3 ED               [12] 1144 	mov	a,r5
      0023F4 34 84            [12] 1145 	addc	a,#(_u >> 8)
      0023F6 F5 83            [12] 1146 	mov	dph,a
      0023F8 74 01            [12] 1147 	mov	a,#0x01
      0023FA F0               [24] 1148 	movx	@dptr,a
                                   1149 ;	life.c:136: j++;
      0023FB 78 37            [12] 1150 	mov	r0,#_j
      0023FD 06               [12] 1151 	inc	@r0
      0023FE B6 00 02         [24] 1152 	cjne	@r0,#0x00,00446$
      002401 08               [12] 1153 	inc	r0
      002402 06               [12] 1154 	inc	@r0
      002403                       1155 00446$:
                                   1156 ;	life.c:137: break;
      002403 80 10            [24] 1157 	sjmp	00154$
      002405                       1158 00147$:
                                   1159 ;	life.c:138: } else if (c == (int)'~') goto br_inner;
      002405 BE 7E 05         [24] 1160 	cjne	r6,#0x7e,00447$
      002408 BF 00 02         [24] 1161 	cjne	r7,#0x00,00447$
      00240B 80 21            [24] 1162 	sjmp	00193$
      00240D                       1163 00447$:
                                   1164 ;	life.c:139: else if (c == (int)'#') goto out;
                                   1165 ;	life.c:143: break;
      00240D BE 23 96         [24] 1166 	cjne	r6,#0x23,00151$
      002410 BF 00 93         [24] 1167 	cjne	r7,#0x00,00151$
      002413 80 31            [24] 1168 	sjmp	00164$
      002415                       1169 00154$:
                                   1170 ;	life.c:127: for (x = 0; x < W; x++) {
      002415 78 33            [12] 1171 	mov	r0,#_x
      002417 06               [12] 1172 	inc	@r0
      002418 B6 00 02         [24] 1173 	cjne	@r0,#0x00,00449$
      00241B 08               [12] 1174 	inc	r0
      00241C 06               [12] 1175 	inc	@r0
      00241D                       1176 00449$:
      00241D 78 33            [12] 1177 	mov	r0,#_x
      00241F C3               [12] 1178 	clr	c
      002420 E6               [12] 1179 	mov	a,@r0
      002421 94 30            [12] 1180 	subb	a,#0x30
      002423 08               [12] 1181 	inc	r0
      002424 E6               [12] 1182 	mov	a,@r0
      002425 64 80            [12] 1183 	xrl	a,#0x80
      002427 94 80            [12] 1184 	subb	a,#0x80
      002429 50 03            [24] 1185 	jnc	00450$
      00242B 02 23 A6         [24] 1186 	ljmp	00151$
      00242E                       1187 00450$:
      00242E                       1188 00193$:
                                   1189 ;	life.c:126: for (y = 0; y < (H * W); y += W) {
      00242E 78 35            [12] 1190 	mov	r0,#_y
      002430 74 30            [12] 1191 	mov	a,#0x30
      002432 26               [12] 1192 	add	a,@r0
      002433 F6               [12] 1193 	mov	@r0,a
      002434 E4               [12] 1194 	clr	a
      002435 08               [12] 1195 	inc	r0
      002436 36               [12] 1196 	addc	a,@r0
      002437 F6               [12] 1197 	mov	@r0,a
      002438 78 35            [12] 1198 	mov	r0,#_y
      00243A C3               [12] 1199 	clr	c
      00243B 08               [12] 1200 	inc	r0
      00243C E6               [12] 1201 	mov	a,@r0
      00243D 64 80            [12] 1202 	xrl	a,#0x80
      00243F 94 A4            [12] 1203 	subb	a,#0xa4
      002441 50 03            [24] 1204 	jnc	00451$
      002443 02 23 A0         [24] 1205 	ljmp	00192$
      002446                       1206 00451$:
                                   1207 ;	life.c:147: out:
      002446                       1208 00164$:
                                   1209 ;	life.c:148: if (c != (int)'#')
      002446 BE 23 05         [24] 1210 	cjne	r6,#0x23,00452$
      002449 BF 00 02         [24] 1211 	cjne	r7,#0x00,00452$
      00244C 80 14            [24] 1212 	sjmp	00163$
      00244E                       1213 00452$:
                                   1214 ;	life.c:149: while (1) {
      00244E                       1215 00160$:
                                   1216 ;	life.c:150: c = getchar();
      00244E 12 20 CA         [24] 1217 	lcall	_getchar
      002451 AE 82            [24] 1218 	mov	r6,dpl
      002453 AF 83            [24] 1219 	mov	r7,dph
      002455 78 39            [12] 1220 	mov	r0,#_c
      002457 A6 06            [24] 1221 	mov	@r0,ar6
      002459 08               [12] 1222 	inc	r0
      00245A A6 07            [24] 1223 	mov	@r0,ar7
                                   1224 ;	life.c:151: if (c == (int)'#') break;
      00245C BE 23 EF         [24] 1225 	cjne	r6,#0x23,00160$
      00245F BF 00 EC         [24] 1226 	cjne	r7,#0x00,00160$
      002462                       1227 00163$:
                                   1228 ;	life.c:153: print16x(j);
      002462 78 37            [12] 1229 	mov	r0,#_j
      002464 86 06            [24] 1230 	mov	ar6,@r0
      002466 08               [12] 1231 	inc	r0
      002467 86 07            [24] 1232 	mov	ar7,@r0
      002469 8E 04            [24] 1233 	mov	ar4,r6
                                   1234 ;	life.c:38: putchar(digits[(a >> 12) & 0xf]);
      00246B EF               [12] 1235 	mov	a,r7
      00246C FD               [12] 1236 	mov	r5,a
      00246D C4               [12] 1237 	swap	a
      00246E 54 0F            [12] 1238 	anl	a,#0x0f
      002470 30 E3 02         [24] 1239 	jnb	acc.3,00455$
      002473 44 F0            [12] 1240 	orl	a,#0xf0
      002475                       1241 00455$:
      002475 FE               [12] 1242 	mov	r6,a
      002476 33               [12] 1243 	rlc	a
      002477 95 E0            [12] 1244 	subb	a,acc
      002479 53 06 0F         [24] 1245 	anl	ar6,#0x0f
      00247C EE               [12] 1246 	mov	a,r6
      00247D 24 21            [12] 1247 	add	a,#_digits
      00247F F9               [12] 1248 	mov	r1,a
      002480 87 07            [24] 1249 	mov	ar7,@r1
      002482 7E 00            [12] 1250 	mov	r6,#0x00
      002484 8F 82            [24] 1251 	mov	dpl,r7
      002486 8E 83            [24] 1252 	mov	dph,r6
      002488 12 20 C5         [24] 1253 	lcall	_putchar
                                   1254 ;	life.c:39: putchar(digits[(a >> 8) & 0xf]);
      00248B 8D 07            [24] 1255 	mov	ar7,r5
      00248D 53 07 0F         [24] 1256 	anl	ar7,#0x0f
      002490 EF               [12] 1257 	mov	a,r7
      002491 24 21            [12] 1258 	add	a,#_digits
      002493 F9               [12] 1259 	mov	r1,a
      002494 87 07            [24] 1260 	mov	ar7,@r1
      002496 7E 00            [12] 1261 	mov	r6,#0x00
      002498 8F 82            [24] 1262 	mov	dpl,r7
      00249A 8E 83            [24] 1263 	mov	dph,r6
      00249C 12 20 C5         [24] 1264 	lcall	_putchar
                                   1265 ;	life.c:40: putchar(digits[(a >> 4) & 0xf]);
      00249F 8C 06            [24] 1266 	mov	ar6,r4
      0024A1 ED               [12] 1267 	mov	a,r5
      0024A2 C4               [12] 1268 	swap	a
      0024A3 CE               [12] 1269 	xch	a,r6
      0024A4 C4               [12] 1270 	swap	a
      0024A5 54 0F            [12] 1271 	anl	a,#0x0f
      0024A7 6E               [12] 1272 	xrl	a,r6
      0024A8 CE               [12] 1273 	xch	a,r6
      0024A9 54 0F            [12] 1274 	anl	a,#0x0f
      0024AB CE               [12] 1275 	xch	a,r6
      0024AC 6E               [12] 1276 	xrl	a,r6
      0024AD CE               [12] 1277 	xch	a,r6
      0024AE 30 E3 02         [24] 1278 	jnb	acc.3,00456$
      0024B1 44 F0            [12] 1279 	orl	a,#0xf0
      0024B3                       1280 00456$:
      0024B3 53 06 0F         [24] 1281 	anl	ar6,#0x0f
      0024B6 EE               [12] 1282 	mov	a,r6
      0024B7 24 21            [12] 1283 	add	a,#_digits
      0024B9 F9               [12] 1284 	mov	r1,a
      0024BA 87 07            [24] 1285 	mov	ar7,@r1
      0024BC 7E 00            [12] 1286 	mov	r6,#0x00
      0024BE 8F 82            [24] 1287 	mov	dpl,r7
      0024C0 8E 83            [24] 1288 	mov	dph,r6
      0024C2 12 20 C5         [24] 1289 	lcall	_putchar
                                   1290 ;	life.c:41: putchar(digits[a & 0xf]);
      0024C5 53 04 0F         [24] 1291 	anl	ar4,#0x0f
      0024C8 EC               [12] 1292 	mov	a,r4
      0024C9 24 21            [12] 1293 	add	a,#_digits
      0024CB F9               [12] 1294 	mov	r1,a
      0024CC 87 07            [24] 1295 	mov	ar7,@r1
      0024CE 7E 00            [12] 1296 	mov	r6,#0x00
      0024D0 8F 82            [24] 1297 	mov	dpl,r7
      0024D2 8E 83            [24] 1298 	mov	dph,r6
      0024D4 12 20 C5         [24] 1299 	lcall	_putchar
                                   1300 ;	life.c:154: printstr(">\r\n");
      0024D7 7D 8C            [12] 1301 	mov	r5,#___str_3
      0024D9 7E 2D            [12] 1302 	mov	r6,#(___str_3 >> 8)
      0024DB 7F 80            [12] 1303 	mov	r7,#0x80
                                   1304 ;	life.c:49: return;
      0024DD                       1305 00195$:
                                   1306 ;	life.c:47: for (; *s; s++) putchar(*s);
      0024DD 8D 82            [24] 1307 	mov	dpl,r5
      0024DF 8E 83            [24] 1308 	mov	dph,r6
      0024E1 8F F0            [24] 1309 	mov	b,r7
      0024E3 12 2C 4E         [24] 1310 	lcall	__gptrget
      0024E6 FC               [12] 1311 	mov	r4,a
      0024E7 60 10            [24] 1312 	jz	00167$
      0024E9 7B 00            [12] 1313 	mov	r3,#0x00
      0024EB 8C 82            [24] 1314 	mov	dpl,r4
      0024ED 8B 83            [24] 1315 	mov	dph,r3
      0024EF 12 20 C5         [24] 1316 	lcall	_putchar
      0024F2 0D               [12] 1317 	inc	r5
                                   1318 ;	life.c:154: printstr(">\r\n");
      0024F3 BD 00 E7         [24] 1319 	cjne	r5,#0x00,00195$
      0024F6 0E               [12] 1320 	inc	r6
      0024F7 80 E4            [24] 1321 	sjmp	00195$
      0024F9                       1322 00167$:
                                   1323 ;	life.c:224: show(0);
      0024F9 75 82 00         [24] 1324 	mov	dpl,#0x00
      0024FC 12 20 EB         [24] 1325 	lcall	_show
                                   1326 ;	life.c:226: printstr("READY\r\n");
      0024FF 7D A3            [12] 1327 	mov	r5,#___str_5
      002501 7E 2D            [12] 1328 	mov	r6,#(___str_5 >> 8)
      002503 7F 80            [12] 1329 	mov	r7,#0x80
                                   1330 ;	life.c:49: return;
      002505                       1331 00198$:
                                   1332 ;	life.c:47: for (; *s; s++) putchar(*s);
      002505 8D 82            [24] 1333 	mov	dpl,r5
      002507 8E 83            [24] 1334 	mov	dph,r6
      002509 8F F0            [24] 1335 	mov	b,r7
      00250B 12 2C 4E         [24] 1336 	lcall	__gptrget
      00250E FC               [12] 1337 	mov	r4,a
      00250F 60 10            [24] 1338 	jz	00121$
      002511 7B 00            [12] 1339 	mov	r3,#0x00
      002513 8C 82            [24] 1340 	mov	dpl,r4
      002515 8B 83            [24] 1341 	mov	dph,r3
      002517 12 20 C5         [24] 1342 	lcall	_putchar
      00251A 0D               [12] 1343 	inc	r5
                                   1344 ;	life.c:227: while (1) {
      00251B BD 00 E7         [24] 1345 	cjne	r5,#0x00,00198$
      00251E 0E               [12] 1346 	inc	r6
      00251F 80 E4            [24] 1347 	sjmp	00198$
      002521                       1348 00121$:
                                   1349 ;	life.c:228: c = toupper(getchar());
      002521 12 20 CA         [24] 1350 	lcall	_getchar
      002524 12 2C 27         [24] 1351 	lcall	_toupper
      002527 AE 82            [24] 1352 	mov	r6,dpl
      002529 AF 83            [24] 1353 	mov	r7,dph
      00252B 78 39            [12] 1354 	mov	r0,#_c
      00252D A6 06            [24] 1355 	mov	@r0,ar6
      00252F 08               [12] 1356 	inc	r0
      002530 A6 07            [24] 1357 	mov	@r0,ar7
                                   1358 ;	life.c:229: if (i0 || (c == (int)'T')) goto terminate;
      002532 78 31            [12] 1359 	mov	r0,#_i0
      002534 E6               [12] 1360 	mov	a,@r0
      002535 60 03            [24] 1361 	jz	00461$
      002537 02 2A 5C         [24] 1362 	ljmp	00133$
      00253A                       1363 00461$:
      00253A BE 54 06         [24] 1364 	cjne	r6,#0x54,00462$
      00253D BF 00 03         [24] 1365 	cjne	r7,#0x00,00462$
      002540 02 2A 5C         [24] 1366 	ljmp	00133$
      002543                       1367 00462$:
                                   1368 ;	life.c:230: else if (c == (int)'L') goto reload;
      002543 BE 4C 06         [24] 1369 	cjne	r6,#0x4c,00463$
      002546 BF 00 03         [24] 1370 	cjne	r7,#0x00,00463$
      002549 02 23 40         [24] 1371 	ljmp	00110$
      00254C                       1372 00463$:
                                   1373 ;	life.c:231: else if (c == (int)'S') break;
      00254C BE 53 D2         [24] 1374 	cjne	r6,#0x53,00121$
      00254F BF 00 CF         [24] 1375 	cjne	r7,#0x00,00121$
                                   1376 ;	life.c:76: generation[0] = 0;
      002552 78 43            [12] 1377 	mov	r0,#_generation
      002554 76 00            [12] 1378 	mov	@r0,#0x00
      002556 08               [12] 1379 	inc	r0
      002557 76 00            [12] 1380 	mov	@r0,#0x00
                                   1381 ;	life.c:77: generation[1] = 0;
      002559 78 45            [12] 1382 	mov	r0,#(_generation + 0x0002)
      00255B 76 00            [12] 1383 	mov	@r0,#0x00
      00255D 08               [12] 1384 	inc	r0
      00255E 76 00            [12] 1385 	mov	@r0,#0x00
                                   1386 ;	life.c:236: for (i1 = 0; !i0 && !i1; ) {
      002560 78 32            [12] 1387 	mov	r0,#_i1
      002562 76 00            [12] 1388 	mov	@r0,#0x00
      002564                       1389 00215$:
      002564 78 31            [12] 1390 	mov	r0,#_i0
      002566 E6               [12] 1391 	mov	a,@r0
      002567 60 03            [24] 1392 	jz	00466$
      002569 02 2A 2A         [24] 1393 	ljmp	00129$
      00256C                       1394 00466$:
      00256C 78 32            [12] 1395 	mov	r0,#_i1
      00256E E6               [12] 1396 	mov	a,@r0
      00256F 60 03            [24] 1397 	jz	00467$
      002571 02 2A 2A         [24] 1398 	ljmp	00129$
      002574                       1399 00467$:
                                   1400 ;	life.c:237: show(1);
      002574 75 82 01         [24] 1401 	mov	dpl,#0x01
      002577 12 20 EB         [24] 1402 	lcall	_show
                                   1403 ;	life.c:162: fixed = 0;
      00257A 78 3D            [12] 1404 	mov	r0,#_fixed
      00257C 76 00            [12] 1405 	mov	@r0,#0x00
                                   1406 ;	life.c:163: cycle2 = 0;
      00257E 78 3E            [12] 1407 	mov	r0,#_cycle2
      002580 76 00            [12] 1408 	mov	@r0,#0x00
                                   1409 ;	life.c:164: bstep = 0;
      002582 78 3B            [12] 1410 	mov	r0,#_bstep
      002584 76 00            [12] 1411 	mov	@r0,#0x00
                                   1412 ;	life.c:166: for (y = 0; y < H; y++) {
      002586 78 35            [12] 1413 	mov	r0,#_y
      002588 E4               [12] 1414 	clr	a
      002589 F6               [12] 1415 	mov	@r0,a
      00258A 08               [12] 1416 	inc	r0
      00258B F6               [12] 1417 	mov	@r0,a
      00258C                       1418 00202$:
                                   1419 ;	life.c:167: putchar(busy[bstep]); putchar('\r');
      00258C 78 3B            [12] 1420 	mov	r0,#_bstep
      00258E E6               [12] 1421 	mov	a,@r0
      00258F 24 47            [12] 1422 	add	a,#_busy
      002591 F9               [12] 1423 	mov	r1,a
      002592 87 07            [24] 1424 	mov	ar7,@r1
      002594 7E 00            [12] 1425 	mov	r6,#0x00
      002596 8F 82            [24] 1426 	mov	dpl,r7
      002598 8E 83            [24] 1427 	mov	dph,r6
      00259A 12 20 C5         [24] 1428 	lcall	_putchar
      00259D 90 00 0D         [24] 1429 	mov	dptr,#0x000d
      0025A0 12 20 C5         [24] 1430 	lcall	_putchar
                                   1431 ;	life.c:168: bstep = (bstep + 1) & 3;
      0025A3 78 3B            [12] 1432 	mov	r0,#_bstep
      0025A5 86 07            [24] 1433 	mov	ar7,@r0
      0025A7 0F               [12] 1434 	inc	r7
      0025A8 78 3B            [12] 1435 	mov	r0,#_bstep
      0025AA 74 03            [12] 1436 	mov	a,#0x03
      0025AC 5F               [12] 1437 	anl	a,r7
      0025AD F6               [12] 1438 	mov	@r0,a
                                   1439 ;	life.c:169: for (x = 0; x < W; x++) {
      0025AE 78 33            [12] 1440 	mov	r0,#_x
      0025B0 E4               [12] 1441 	clr	a
      0025B1 F6               [12] 1442 	mov	@r0,a
      0025B2 08               [12] 1443 	inc	r0
      0025B3 F6               [12] 1444 	mov	@r0,a
      0025B4                       1445 00200$:
                                   1446 ;	life.c:170: n = -u[A2D(W, y, x)];
      0025B4 78 35            [12] 1447 	mov	r0,#_y
      0025B6 E6               [12] 1448 	mov	a,@r0
      0025B7 C0 E0            [24] 1449 	push	acc
      0025B9 08               [12] 1450 	inc	r0
      0025BA E6               [12] 1451 	mov	a,@r0
      0025BB C0 E0            [24] 1452 	push	acc
      0025BD 90 00 30         [24] 1453 	mov	dptr,#0x0030
      0025C0 12 2A 8C         [24] 1454 	lcall	__mulint
      0025C3 A8 10            [24] 1455 	mov	r0,_bp
      0025C5 08               [12] 1456 	inc	r0
      0025C6 08               [12] 1457 	inc	r0
      0025C7 08               [12] 1458 	inc	r0
      0025C8 A6 82            [24] 1459 	mov	@r0,dpl
      0025CA 08               [12] 1460 	inc	r0
      0025CB A6 83            [24] 1461 	mov	@r0,dph
      0025CD 15 81            [12] 1462 	dec	sp
      0025CF 15 81            [12] 1463 	dec	sp
      0025D1 E5 10            [12] 1464 	mov	a,_bp
      0025D3 24 03            [12] 1465 	add	a,#0x03
      0025D5 F8               [12] 1466 	mov	r0,a
      0025D6 79 33            [12] 1467 	mov	r1,#_x
      0025D8 E7               [12] 1468 	mov	a,@r1
      0025D9 26               [12] 1469 	add	a,@r0
      0025DA C0 E0            [24] 1470 	push	acc
      0025DC 09               [12] 1471 	inc	r1
      0025DD E7               [12] 1472 	mov	a,@r1
      0025DE 08               [12] 1473 	inc	r0
      0025DF 36               [12] 1474 	addc	a,@r0
      0025E0 C0 E0            [24] 1475 	push	acc
      0025E2 A8 10            [24] 1476 	mov	r0,_bp
      0025E4 08               [12] 1477 	inc	r0
      0025E5 08               [12] 1478 	inc	r0
      0025E6 D0 E0            [24] 1479 	pop	acc
      0025E8 F6               [12] 1480 	mov	@r0,a
      0025E9 18               [12] 1481 	dec	r0
      0025EA D0 E0            [24] 1482 	pop	acc
      0025EC F6               [12] 1483 	mov	@r0,a
      0025ED A8 10            [24] 1484 	mov	r0,_bp
      0025EF 08               [12] 1485 	inc	r0
      0025F0 E6               [12] 1486 	mov	a,@r0
      0025F1 24 00            [12] 1487 	add	a,#_u
      0025F3 F5 82            [12] 1488 	mov	dpl,a
      0025F5 08               [12] 1489 	inc	r0
      0025F6 E6               [12] 1490 	mov	a,@r0
      0025F7 34 84            [12] 1491 	addc	a,#(_u >> 8)
      0025F9 F5 83            [12] 1492 	mov	dph,a
      0025FB E0               [24] 1493 	movx	a,@dptr
      0025FC FB               [12] 1494 	mov	r3,a
      0025FD C3               [12] 1495 	clr	c
      0025FE E4               [12] 1496 	clr	a
      0025FF 9B               [12] 1497 	subb	a,r3
      002600 FB               [12] 1498 	mov	r3,a
                                   1499 ;	life.c:173: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      002601 78 35            [12] 1500 	mov	r0,#_y
      002603 74 FF            [12] 1501 	mov	a,#0xff
      002605 26               [12] 1502 	add	a,@r0
      002606 FA               [12] 1503 	mov	r2,a
      002607 74 FF            [12] 1504 	mov	a,#0xff
      002609 08               [12] 1505 	inc	r0
      00260A 36               [12] 1506 	addc	a,@r0
      00260B FD               [12] 1507 	mov	r5,a
      00260C 74 C0            [12] 1508 	mov	a,#0xc0
      00260E 2A               [12] 1509 	add	a,r2
      00260F FA               [12] 1510 	mov	r2,a
      002610 E4               [12] 1511 	clr	a
      002611 3D               [12] 1512 	addc	a,r5
      002612 FD               [12] 1513 	mov	r5,a
      002613 C0 03            [24] 1514 	push	ar3
      002615 74 C0            [12] 1515 	mov	a,#0xc0
      002617 C0 E0            [24] 1516 	push	acc
      002619 E4               [12] 1517 	clr	a
      00261A C0 E0            [24] 1518 	push	acc
      00261C 8A 82            [24] 1519 	mov	dpl,r2
      00261E 8D 83            [24] 1520 	mov	dph,r5
      002620 12 2C 6A         [24] 1521 	lcall	__modsint
      002623 AC 82            [24] 1522 	mov	r4,dpl
      002625 AD 83            [24] 1523 	mov	r5,dph
      002627 15 81            [12] 1524 	dec	sp
      002629 15 81            [12] 1525 	dec	sp
      00262B C0 04            [24] 1526 	push	ar4
      00262D C0 05            [24] 1527 	push	ar5
      00262F 90 00 30         [24] 1528 	mov	dptr,#0x0030
      002632 12 2A 8C         [24] 1529 	lcall	__mulint
      002635 AC 82            [24] 1530 	mov	r4,dpl
      002637 AD 83            [24] 1531 	mov	r5,dph
      002639 15 81            [12] 1532 	dec	sp
      00263B 15 81            [12] 1533 	dec	sp
      00263D D0 03            [24] 1534 	pop	ar3
      00263F 78 33            [12] 1535 	mov	r0,#_x
      002641 74 FF            [12] 1536 	mov	a,#0xff
      002643 26               [12] 1537 	add	a,@r0
      002644 FA               [12] 1538 	mov	r2,a
      002645 74 FF            [12] 1539 	mov	a,#0xff
      002647 08               [12] 1540 	inc	r0
      002648 36               [12] 1541 	addc	a,@r0
      002649 FF               [12] 1542 	mov	r7,a
      00264A 74 30            [12] 1543 	mov	a,#0x30
      00264C 2A               [12] 1544 	add	a,r2
      00264D FA               [12] 1545 	mov	r2,a
      00264E E4               [12] 1546 	clr	a
      00264F 3F               [12] 1547 	addc	a,r7
      002650 FF               [12] 1548 	mov	r7,a
      002651 C0 05            [24] 1549 	push	ar5
      002653 C0 04            [24] 1550 	push	ar4
      002655 C0 03            [24] 1551 	push	ar3
      002657 74 30            [12] 1552 	mov	a,#0x30
      002659 C0 E0            [24] 1553 	push	acc
      00265B E4               [12] 1554 	clr	a
      00265C C0 E0            [24] 1555 	push	acc
      00265E 8A 82            [24] 1556 	mov	dpl,r2
      002660 8F 83            [24] 1557 	mov	dph,r7
      002662 12 2C 6A         [24] 1558 	lcall	__modsint
      002665 C8               [12] 1559 	xch	a,r0
      002666 E5 10            [12] 1560 	mov	a,_bp
      002668 24 05            [12] 1561 	add	a,#0x05
      00266A C8               [12] 1562 	xch	a,r0
      00266B A6 82            [24] 1563 	mov	@r0,dpl
      00266D 08               [12] 1564 	inc	r0
      00266E A6 83            [24] 1565 	mov	@r0,dph
      002670 15 81            [12] 1566 	dec	sp
      002672 15 81            [12] 1567 	dec	sp
      002674 D0 03            [24] 1568 	pop	ar3
      002676 D0 04            [24] 1569 	pop	ar4
      002678 D0 05            [24] 1570 	pop	ar5
      00267A E5 10            [12] 1571 	mov	a,_bp
      00267C 24 05            [12] 1572 	add	a,#0x05
      00267E F8               [12] 1573 	mov	r0,a
      00267F E6               [12] 1574 	mov	a,@r0
      002680 2C               [12] 1575 	add	a,r4
      002681 FA               [12] 1576 	mov	r2,a
      002682 08               [12] 1577 	inc	r0
      002683 E6               [12] 1578 	mov	a,@r0
      002684 3D               [12] 1579 	addc	a,r5
      002685 FF               [12] 1580 	mov	r7,a
      002686 EA               [12] 1581 	mov	a,r2
      002687 24 00            [12] 1582 	add	a,#_u
      002689 F5 82            [12] 1583 	mov	dpl,a
      00268B EF               [12] 1584 	mov	a,r7
      00268C 34 84            [12] 1585 	addc	a,#(_u >> 8)
      00268E F5 83            [12] 1586 	mov	dph,a
      002690 E0               [24] 1587 	movx	a,@dptr
      002691 2B               [12] 1588 	add	a,r3
      002692 FB               [12] 1589 	mov	r3,a
                                   1590 ;	life.c:175: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      002693 78 33            [12] 1591 	mov	r0,#_x
      002695 E5 10            [12] 1592 	mov	a,_bp
      002697 24 07            [12] 1593 	add	a,#0x07
      002699 F9               [12] 1594 	mov	r1,a
      00269A E6               [12] 1595 	mov	a,@r0
      00269B F7               [12] 1596 	mov	@r1,a
      00269C 08               [12] 1597 	inc	r0
      00269D 09               [12] 1598 	inc	r1
      00269E E6               [12] 1599 	mov	a,@r0
      00269F F7               [12] 1600 	mov	@r1,a
      0026A0 E5 10            [12] 1601 	mov	a,_bp
      0026A2 24 07            [12] 1602 	add	a,#0x07
      0026A4 F8               [12] 1603 	mov	r0,a
      0026A5 74 30            [12] 1604 	mov	a,#0x30
      0026A7 26               [12] 1605 	add	a,@r0
      0026A8 FA               [12] 1606 	mov	r2,a
      0026A9 E4               [12] 1607 	clr	a
      0026AA 08               [12] 1608 	inc	r0
      0026AB 36               [12] 1609 	addc	a,@r0
      0026AC FF               [12] 1610 	mov	r7,a
      0026AD C0 05            [24] 1611 	push	ar5
      0026AF C0 04            [24] 1612 	push	ar4
      0026B1 C0 03            [24] 1613 	push	ar3
      0026B3 74 30            [12] 1614 	mov	a,#0x30
      0026B5 C0 E0            [24] 1615 	push	acc
      0026B7 E4               [12] 1616 	clr	a
      0026B8 C0 E0            [24] 1617 	push	acc
      0026BA 8A 82            [24] 1618 	mov	dpl,r2
      0026BC 8F 83            [24] 1619 	mov	dph,r7
      0026BE 12 2C 6A         [24] 1620 	lcall	__modsint
      0026C1 C8               [12] 1621 	xch	a,r0
      0026C2 E5 10            [12] 1622 	mov	a,_bp
      0026C4 24 09            [12] 1623 	add	a,#0x09
      0026C6 C8               [12] 1624 	xch	a,r0
      0026C7 A6 82            [24] 1625 	mov	@r0,dpl
      0026C9 08               [12] 1626 	inc	r0
      0026CA A6 83            [24] 1627 	mov	@r0,dph
      0026CC 15 81            [12] 1628 	dec	sp
      0026CE 15 81            [12] 1629 	dec	sp
      0026D0 D0 03            [24] 1630 	pop	ar3
      0026D2 D0 04            [24] 1631 	pop	ar4
      0026D4 D0 05            [24] 1632 	pop	ar5
      0026D6 E5 10            [12] 1633 	mov	a,_bp
      0026D8 24 09            [12] 1634 	add	a,#0x09
      0026DA F8               [12] 1635 	mov	r0,a
      0026DB E6               [12] 1636 	mov	a,@r0
      0026DC 2C               [12] 1637 	add	a,r4
      0026DD FA               [12] 1638 	mov	r2,a
      0026DE 08               [12] 1639 	inc	r0
      0026DF E6               [12] 1640 	mov	a,@r0
      0026E0 3D               [12] 1641 	addc	a,r5
      0026E1 FF               [12] 1642 	mov	r7,a
      0026E2 EA               [12] 1643 	mov	a,r2
      0026E3 24 00            [12] 1644 	add	a,#_u
      0026E5 F5 82            [12] 1645 	mov	dpl,a
      0026E7 EF               [12] 1646 	mov	a,r7
      0026E8 34 84            [12] 1647 	addc	a,#(_u >> 8)
      0026EA F5 83            [12] 1648 	mov	dph,a
      0026EC E0               [24] 1649 	movx	a,@dptr
      0026ED 2B               [12] 1650 	add	a,r3
      0026EE FB               [12] 1651 	mov	r3,a
                                   1652 ;	life.c:177: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      0026EF E5 10            [12] 1653 	mov	a,_bp
      0026F1 24 07            [12] 1654 	add	a,#0x07
      0026F3 F8               [12] 1655 	mov	r0,a
      0026F4 74 31            [12] 1656 	mov	a,#0x31
      0026F6 26               [12] 1657 	add	a,@r0
      0026F7 FE               [12] 1658 	mov	r6,a
      0026F8 E4               [12] 1659 	clr	a
      0026F9 08               [12] 1660 	inc	r0
      0026FA 36               [12] 1661 	addc	a,@r0
      0026FB FF               [12] 1662 	mov	r7,a
      0026FC C0 05            [24] 1663 	push	ar5
      0026FE C0 04            [24] 1664 	push	ar4
      002700 C0 03            [24] 1665 	push	ar3
      002702 74 30            [12] 1666 	mov	a,#0x30
      002704 C0 E0            [24] 1667 	push	acc
      002706 E4               [12] 1668 	clr	a
      002707 C0 E0            [24] 1669 	push	acc
      002709 8E 82            [24] 1670 	mov	dpl,r6
      00270B 8F 83            [24] 1671 	mov	dph,r7
      00270D 12 2C 6A         [24] 1672 	lcall	__modsint
      002710 AE 82            [24] 1673 	mov	r6,dpl
      002712 AF 83            [24] 1674 	mov	r7,dph
      002714 15 81            [12] 1675 	dec	sp
      002716 15 81            [12] 1676 	dec	sp
      002718 D0 03            [24] 1677 	pop	ar3
      00271A D0 04            [24] 1678 	pop	ar4
      00271C D0 05            [24] 1679 	pop	ar5
      00271E EE               [12] 1680 	mov	a,r6
      00271F 2C               [12] 1681 	add	a,r4
      002720 FC               [12] 1682 	mov	r4,a
      002721 EF               [12] 1683 	mov	a,r7
      002722 3D               [12] 1684 	addc	a,r5
      002723 FD               [12] 1685 	mov	r5,a
      002724 EC               [12] 1686 	mov	a,r4
      002725 24 00            [12] 1687 	add	a,#_u
      002727 F5 82            [12] 1688 	mov	dpl,a
      002729 ED               [12] 1689 	mov	a,r5
      00272A 34 84            [12] 1690 	addc	a,#(_u >> 8)
      00272C F5 83            [12] 1691 	mov	dph,a
      00272E E0               [24] 1692 	movx	a,@dptr
      00272F 2B               [12] 1693 	add	a,r3
      002730 FB               [12] 1694 	mov	r3,a
                                   1695 ;	life.c:179: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      002731 78 35            [12] 1696 	mov	r0,#_y
      002733 E5 10            [12] 1697 	mov	a,_bp
      002735 24 0B            [12] 1698 	add	a,#0x0b
      002737 F9               [12] 1699 	mov	r1,a
      002738 E6               [12] 1700 	mov	a,@r0
      002739 F7               [12] 1701 	mov	@r1,a
      00273A 08               [12] 1702 	inc	r0
      00273B 09               [12] 1703 	inc	r1
      00273C E6               [12] 1704 	mov	a,@r0
      00273D F7               [12] 1705 	mov	@r1,a
      00273E E5 10            [12] 1706 	mov	a,_bp
      002740 24 0B            [12] 1707 	add	a,#0x0b
      002742 F8               [12] 1708 	mov	r0,a
      002743 74 C0            [12] 1709 	mov	a,#0xc0
      002745 26               [12] 1710 	add	a,@r0
      002746 FA               [12] 1711 	mov	r2,a
      002747 E4               [12] 1712 	clr	a
      002748 08               [12] 1713 	inc	r0
      002749 36               [12] 1714 	addc	a,@r0
      00274A FD               [12] 1715 	mov	r5,a
      00274B C0 07            [24] 1716 	push	ar7
      00274D C0 06            [24] 1717 	push	ar6
      00274F C0 03            [24] 1718 	push	ar3
      002751 74 C0            [12] 1719 	mov	a,#0xc0
      002753 C0 E0            [24] 1720 	push	acc
      002755 E4               [12] 1721 	clr	a
      002756 C0 E0            [24] 1722 	push	acc
      002758 8A 82            [24] 1723 	mov	dpl,r2
      00275A 8D 83            [24] 1724 	mov	dph,r5
      00275C 12 2C 6A         [24] 1725 	lcall	__modsint
      00275F AC 82            [24] 1726 	mov	r4,dpl
      002761 AD 83            [24] 1727 	mov	r5,dph
      002763 15 81            [12] 1728 	dec	sp
      002765 15 81            [12] 1729 	dec	sp
      002767 C0 04            [24] 1730 	push	ar4
      002769 C0 05            [24] 1731 	push	ar5
      00276B 90 00 30         [24] 1732 	mov	dptr,#0x0030
      00276E 12 2A 8C         [24] 1733 	lcall	__mulint
      002771 C8               [12] 1734 	xch	a,r0
      002772 E5 10            [12] 1735 	mov	a,_bp
      002774 24 0D            [12] 1736 	add	a,#0x0d
      002776 C8               [12] 1737 	xch	a,r0
      002777 A6 82            [24] 1738 	mov	@r0,dpl
      002779 08               [12] 1739 	inc	r0
      00277A A6 83            [24] 1740 	mov	@r0,dph
      00277C 15 81            [12] 1741 	dec	sp
      00277E 15 81            [12] 1742 	dec	sp
      002780 D0 03            [24] 1743 	pop	ar3
      002782 D0 06            [24] 1744 	pop	ar6
      002784 D0 07            [24] 1745 	pop	ar7
      002786 E5 10            [12] 1746 	mov	a,_bp
      002788 24 0D            [12] 1747 	add	a,#0x0d
      00278A F8               [12] 1748 	mov	r0,a
      00278B E5 10            [12] 1749 	mov	a,_bp
      00278D 24 05            [12] 1750 	add	a,#0x05
      00278F F9               [12] 1751 	mov	r1,a
      002790 E7               [12] 1752 	mov	a,@r1
      002791 26               [12] 1753 	add	a,@r0
      002792 FA               [12] 1754 	mov	r2,a
      002793 09               [12] 1755 	inc	r1
      002794 E7               [12] 1756 	mov	a,@r1
      002795 08               [12] 1757 	inc	r0
      002796 36               [12] 1758 	addc	a,@r0
      002797 FD               [12] 1759 	mov	r5,a
      002798 EA               [12] 1760 	mov	a,r2
      002799 24 00            [12] 1761 	add	a,#_u
      00279B F5 82            [12] 1762 	mov	dpl,a
      00279D ED               [12] 1763 	mov	a,r5
      00279E 34 84            [12] 1764 	addc	a,#(_u >> 8)
      0027A0 F5 83            [12] 1765 	mov	dph,a
      0027A2 E0               [24] 1766 	movx	a,@dptr
      0027A3 2B               [12] 1767 	add	a,r3
      0027A4 FB               [12] 1768 	mov	r3,a
                                   1769 ;	life.c:181: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      0027A5 E5 10            [12] 1770 	mov	a,_bp
      0027A7 24 0D            [12] 1771 	add	a,#0x0d
      0027A9 F8               [12] 1772 	mov	r0,a
      0027AA E5 10            [12] 1773 	mov	a,_bp
      0027AC 24 09            [12] 1774 	add	a,#0x09
      0027AE F9               [12] 1775 	mov	r1,a
      0027AF E7               [12] 1776 	mov	a,@r1
      0027B0 26               [12] 1777 	add	a,@r0
      0027B1 FC               [12] 1778 	mov	r4,a
      0027B2 09               [12] 1779 	inc	r1
      0027B3 E7               [12] 1780 	mov	a,@r1
      0027B4 08               [12] 1781 	inc	r0
      0027B5 36               [12] 1782 	addc	a,@r0
      0027B6 FD               [12] 1783 	mov	r5,a
      0027B7 EC               [12] 1784 	mov	a,r4
      0027B8 24 00            [12] 1785 	add	a,#_u
      0027BA F5 82            [12] 1786 	mov	dpl,a
      0027BC ED               [12] 1787 	mov	a,r5
      0027BD 34 84            [12] 1788 	addc	a,#(_u >> 8)
      0027BF F5 83            [12] 1789 	mov	dph,a
      0027C1 E0               [24] 1790 	movx	a,@dptr
      0027C2 2B               [12] 1791 	add	a,r3
      0027C3 FB               [12] 1792 	mov	r3,a
                                   1793 ;	life.c:183: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      0027C4 E5 10            [12] 1794 	mov	a,_bp
      0027C6 24 0D            [12] 1795 	add	a,#0x0d
      0027C8 F8               [12] 1796 	mov	r0,a
      0027C9 EE               [12] 1797 	mov	a,r6
      0027CA 26               [12] 1798 	add	a,@r0
      0027CB FC               [12] 1799 	mov	r4,a
      0027CC EF               [12] 1800 	mov	a,r7
      0027CD 08               [12] 1801 	inc	r0
      0027CE 36               [12] 1802 	addc	a,@r0
      0027CF FD               [12] 1803 	mov	r5,a
      0027D0 EC               [12] 1804 	mov	a,r4
      0027D1 24 00            [12] 1805 	add	a,#_u
      0027D3 F5 82            [12] 1806 	mov	dpl,a
      0027D5 ED               [12] 1807 	mov	a,r5
      0027D6 34 84            [12] 1808 	addc	a,#(_u >> 8)
      0027D8 F5 83            [12] 1809 	mov	dph,a
      0027DA E0               [24] 1810 	movx	a,@dptr
      0027DB 2B               [12] 1811 	add	a,r3
      0027DC FB               [12] 1812 	mov	r3,a
                                   1813 ;	life.c:185: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      0027DD E5 10            [12] 1814 	mov	a,_bp
      0027DF 24 0B            [12] 1815 	add	a,#0x0b
      0027E1 F8               [12] 1816 	mov	r0,a
      0027E2 74 C1            [12] 1817 	mov	a,#0xc1
      0027E4 26               [12] 1818 	add	a,@r0
      0027E5 FC               [12] 1819 	mov	r4,a
      0027E6 E4               [12] 1820 	clr	a
      0027E7 08               [12] 1821 	inc	r0
      0027E8 36               [12] 1822 	addc	a,@r0
      0027E9 FD               [12] 1823 	mov	r5,a
      0027EA C0 07            [24] 1824 	push	ar7
      0027EC C0 06            [24] 1825 	push	ar6
      0027EE C0 03            [24] 1826 	push	ar3
      0027F0 74 C0            [12] 1827 	mov	a,#0xc0
      0027F2 C0 E0            [24] 1828 	push	acc
      0027F4 E4               [12] 1829 	clr	a
      0027F5 C0 E0            [24] 1830 	push	acc
      0027F7 8C 82            [24] 1831 	mov	dpl,r4
      0027F9 8D 83            [24] 1832 	mov	dph,r5
      0027FB 12 2C 6A         [24] 1833 	lcall	__modsint
      0027FE AC 82            [24] 1834 	mov	r4,dpl
      002800 AD 83            [24] 1835 	mov	r5,dph
      002802 15 81            [12] 1836 	dec	sp
      002804 15 81            [12] 1837 	dec	sp
      002806 C0 04            [24] 1838 	push	ar4
      002808 C0 05            [24] 1839 	push	ar5
      00280A 90 00 30         [24] 1840 	mov	dptr,#0x0030
      00280D 12 2A 8C         [24] 1841 	lcall	__mulint
      002810 C8               [12] 1842 	xch	a,r0
      002811 E5 10            [12] 1843 	mov	a,_bp
      002813 24 0D            [12] 1844 	add	a,#0x0d
      002815 C8               [12] 1845 	xch	a,r0
      002816 A6 82            [24] 1846 	mov	@r0,dpl
      002818 08               [12] 1847 	inc	r0
      002819 A6 83            [24] 1848 	mov	@r0,dph
      00281B 15 81            [12] 1849 	dec	sp
      00281D 15 81            [12] 1850 	dec	sp
      00281F D0 03            [24] 1851 	pop	ar3
      002821 D0 06            [24] 1852 	pop	ar6
      002823 D0 07            [24] 1853 	pop	ar7
      002825 E5 10            [12] 1854 	mov	a,_bp
      002827 24 0D            [12] 1855 	add	a,#0x0d
      002829 F8               [12] 1856 	mov	r0,a
      00282A E5 10            [12] 1857 	mov	a,_bp
      00282C 24 05            [12] 1858 	add	a,#0x05
      00282E F9               [12] 1859 	mov	r1,a
      00282F E7               [12] 1860 	mov	a,@r1
      002830 26               [12] 1861 	add	a,@r0
      002831 FA               [12] 1862 	mov	r2,a
      002832 09               [12] 1863 	inc	r1
      002833 E7               [12] 1864 	mov	a,@r1
      002834 08               [12] 1865 	inc	r0
      002835 36               [12] 1866 	addc	a,@r0
      002836 FD               [12] 1867 	mov	r5,a
      002837 EA               [12] 1868 	mov	a,r2
      002838 24 00            [12] 1869 	add	a,#_u
      00283A F5 82            [12] 1870 	mov	dpl,a
      00283C ED               [12] 1871 	mov	a,r5
      00283D 34 84            [12] 1872 	addc	a,#(_u >> 8)
      00283F F5 83            [12] 1873 	mov	dph,a
      002841 E0               [24] 1874 	movx	a,@dptr
      002842 2B               [12] 1875 	add	a,r3
      002843 FB               [12] 1876 	mov	r3,a
                                   1877 ;	life.c:187: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      002844 E5 10            [12] 1878 	mov	a,_bp
      002846 24 0D            [12] 1879 	add	a,#0x0d
      002848 F8               [12] 1880 	mov	r0,a
      002849 E5 10            [12] 1881 	mov	a,_bp
      00284B 24 09            [12] 1882 	add	a,#0x09
      00284D F9               [12] 1883 	mov	r1,a
      00284E E7               [12] 1884 	mov	a,@r1
      00284F 26               [12] 1885 	add	a,@r0
      002850 FC               [12] 1886 	mov	r4,a
      002851 09               [12] 1887 	inc	r1
      002852 E7               [12] 1888 	mov	a,@r1
      002853 08               [12] 1889 	inc	r0
      002854 36               [12] 1890 	addc	a,@r0
      002855 FD               [12] 1891 	mov	r5,a
      002856 EC               [12] 1892 	mov	a,r4
      002857 24 00            [12] 1893 	add	a,#_u
      002859 F5 82            [12] 1894 	mov	dpl,a
      00285B ED               [12] 1895 	mov	a,r5
      00285C 34 84            [12] 1896 	addc	a,#(_u >> 8)
      00285E F5 83            [12] 1897 	mov	dph,a
      002860 E0               [24] 1898 	movx	a,@dptr
      002861 2B               [12] 1899 	add	a,r3
      002862 FB               [12] 1900 	mov	r3,a
                                   1901 ;	life.c:188: y1 = 1; x1 = 1;
      002863 78 41            [12] 1902 	mov	r0,#_y1
      002865 76 01            [12] 1903 	mov	@r0,#0x01
      002867 08               [12] 1904 	inc	r0
      002868 76 00            [12] 1905 	mov	@r0,#0x00
      00286A 78 3F            [12] 1906 	mov	r0,#_x1
      00286C 76 01            [12] 1907 	mov	@r0,#0x01
      00286E 08               [12] 1908 	inc	r0
      00286F 76 00            [12] 1909 	mov	@r0,#0x00
                                   1910 ;	life.c:189: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      002871 E5 10            [12] 1911 	mov	a,_bp
      002873 24 0D            [12] 1912 	add	a,#0x0d
      002875 F8               [12] 1913 	mov	r0,a
      002876 EE               [12] 1914 	mov	a,r6
      002877 26               [12] 1915 	add	a,@r0
      002878 FE               [12] 1916 	mov	r6,a
      002879 EF               [12] 1917 	mov	a,r7
      00287A 08               [12] 1918 	inc	r0
      00287B 36               [12] 1919 	addc	a,@r0
      00287C FF               [12] 1920 	mov	r7,a
      00287D EE               [12] 1921 	mov	a,r6
      00287E 24 00            [12] 1922 	add	a,#_u
      002880 F5 82            [12] 1923 	mov	dpl,a
      002882 EF               [12] 1924 	mov	a,r7
      002883 34 84            [12] 1925 	addc	a,#(_u >> 8)
      002885 F5 83            [12] 1926 	mov	dph,a
      002887 E0               [24] 1927 	movx	a,@dptr
      002888 2B               [12] 1928 	add	a,r3
      002889 FF               [12] 1929 	mov	r7,a
      00288A 78 3C            [12] 1930 	mov	r0,#_n
      00288C A6 07            [24] 1931 	mov	@r0,ar7
                                   1932 ;	life.c:191: nu[A2D(W, y, x)] = (n == 3) || ((n == 2) && u[A2D(W, y, x)]);
      00288E A8 10            [24] 1933 	mov	r0,_bp
      002890 08               [12] 1934 	inc	r0
      002891 E6               [12] 1935 	mov	a,@r0
      002892 24 00            [12] 1936 	add	a,#_nu
      002894 FD               [12] 1937 	mov	r5,a
      002895 08               [12] 1938 	inc	r0
      002896 E6               [12] 1939 	mov	a,@r0
      002897 34 A8            [12] 1940 	addc	a,#(_nu >> 8)
      002899 FE               [12] 1941 	mov	r6,a
      00289A BF 03 02         [24] 1942 	cjne	r7,#0x03,00468$
      00289D 80 28            [24] 1943 	sjmp	00228$
      00289F                       1944 00468$:
      00289F BF 02 21         [24] 1945 	cjne	r7,#0x02,00227$
      0028A2 E5 10            [12] 1946 	mov	a,_bp
      0028A4 24 03            [12] 1947 	add	a,#0x03
      0028A6 F8               [12] 1948 	mov	r0,a
      0028A7 E5 10            [12] 1949 	mov	a,_bp
      0028A9 24 07            [12] 1950 	add	a,#0x07
      0028AB F9               [12] 1951 	mov	r1,a
      0028AC E7               [12] 1952 	mov	a,@r1
      0028AD 26               [12] 1953 	add	a,@r0
      0028AE FC               [12] 1954 	mov	r4,a
      0028AF 09               [12] 1955 	inc	r1
      0028B0 E7               [12] 1956 	mov	a,@r1
      0028B1 08               [12] 1957 	inc	r0
      0028B2 36               [12] 1958 	addc	a,@r0
      0028B3 FF               [12] 1959 	mov	r7,a
      0028B4 EC               [12] 1960 	mov	a,r4
      0028B5 24 00            [12] 1961 	add	a,#_u
      0028B7 FC               [12] 1962 	mov	r4,a
      0028B8 EF               [12] 1963 	mov	a,r7
      0028B9 34 84            [12] 1964 	addc	a,#(_u >> 8)
      0028BB FF               [12] 1965 	mov	r7,a
      0028BC 8C 82            [24] 1966 	mov	dpl,r4
      0028BE 8F 83            [24] 1967 	mov	dph,r7
      0028C0 E0               [24] 1968 	movx	a,@dptr
      0028C1 70 04            [24] 1969 	jnz	00228$
      0028C3                       1970 00227$:
                                   1971 ;	assignBit
      0028C3 C2 00            [12] 1972 	clr	b0
      0028C5 80 02            [24] 1973 	sjmp	00229$
      0028C7                       1974 00228$:
                                   1975 ;	assignBit
      0028C7 D2 00            [12] 1976 	setb	b0
      0028C9                       1977 00229$:
      0028C9 A2 00            [12] 1978 	mov	c,b0
      0028CB E4               [12] 1979 	clr	a
      0028CC 33               [12] 1980 	rlc	a
      0028CD 8D 82            [24] 1981 	mov	dpl,r5
      0028CF 8E 83            [24] 1982 	mov	dph,r6
      0028D1 F0               [24] 1983 	movx	@dptr,a
                                   1984 ;	life.c:192: cycle2 |= pu[A2D(W, y, x)] ^ nu[A2D(W, y, x)];
      0028D2 78 35            [12] 1985 	mov	r0,#_y
      0028D4 E6               [12] 1986 	mov	a,@r0
      0028D5 C0 E0            [24] 1987 	push	acc
      0028D7 08               [12] 1988 	inc	r0
      0028D8 E6               [12] 1989 	mov	a,@r0
      0028D9 C0 E0            [24] 1990 	push	acc
      0028DB 90 00 30         [24] 1991 	mov	dptr,#0x0030
      0028DE 12 2A 8C         [24] 1992 	lcall	__mulint
      0028E1 AE 82            [24] 1993 	mov	r6,dpl
      0028E3 AF 83            [24] 1994 	mov	r7,dph
      0028E5 15 81            [12] 1995 	dec	sp
      0028E7 15 81            [12] 1996 	dec	sp
      0028E9 78 33            [12] 1997 	mov	r0,#_x
      0028EB E6               [12] 1998 	mov	a,@r0
      0028EC 2E               [12] 1999 	add	a,r6
      0028ED FE               [12] 2000 	mov	r6,a
      0028EE 08               [12] 2001 	inc	r0
      0028EF E6               [12] 2002 	mov	a,@r0
      0028F0 3F               [12] 2003 	addc	a,r7
      0028F1 FF               [12] 2004 	mov	r7,a
      0028F2 EE               [12] 2005 	mov	a,r6
      0028F3 24 00            [12] 2006 	add	a,#_pu
      0028F5 F5 82            [12] 2007 	mov	dpl,a
      0028F7 EF               [12] 2008 	mov	a,r7
      0028F8 34 60            [12] 2009 	addc	a,#(_pu >> 8)
      0028FA F5 83            [12] 2010 	mov	dph,a
      0028FC E0               [24] 2011 	movx	a,@dptr
      0028FD FD               [12] 2012 	mov	r5,a
      0028FE EE               [12] 2013 	mov	a,r6
      0028FF 24 00            [12] 2014 	add	a,#_nu
      002901 F5 82            [12] 2015 	mov	dpl,a
      002903 EF               [12] 2016 	mov	a,r7
      002904 34 A8            [12] 2017 	addc	a,#(_nu >> 8)
      002906 F5 83            [12] 2018 	mov	dph,a
      002908 E0               [24] 2019 	movx	a,@dptr
      002909 FC               [12] 2020 	mov	r4,a
      00290A 6D               [12] 2021 	xrl	a,r5
      00290B 78 3E            [12] 2022 	mov	r0,#_cycle2
      00290D 46               [12] 2023 	orl	a,@r0
      00290E F6               [12] 2024 	mov	@r0,a
                                   2025 ;	life.c:193: fixed |= u[A2D(W, y, x)] ^ nu[A2D(W, y, x)];
      00290F EE               [12] 2026 	mov	a,r6
      002910 24 00            [12] 2027 	add	a,#_u
      002912 F5 82            [12] 2028 	mov	dpl,a
      002914 EF               [12] 2029 	mov	a,r7
      002915 34 84            [12] 2030 	addc	a,#(_u >> 8)
      002917 F5 83            [12] 2031 	mov	dph,a
      002919 E0               [24] 2032 	movx	a,@dptr
      00291A FF               [12] 2033 	mov	r7,a
      00291B EC               [12] 2034 	mov	a,r4
      00291C 6F               [12] 2035 	xrl	a,r7
      00291D 78 3D            [12] 2036 	mov	r0,#_fixed
      00291F 46               [12] 2037 	orl	a,@r0
      002920 F6               [12] 2038 	mov	@r0,a
                                   2039 ;	life.c:169: for (x = 0; x < W; x++) {
      002921 78 33            [12] 2040 	mov	r0,#_x
      002923 06               [12] 2041 	inc	@r0
      002924 B6 00 02         [24] 2042 	cjne	@r0,#0x00,00472$
      002927 08               [12] 2043 	inc	r0
      002928 06               [12] 2044 	inc	@r0
      002929                       2045 00472$:
      002929 78 33            [12] 2046 	mov	r0,#_x
      00292B C3               [12] 2047 	clr	c
      00292C E6               [12] 2048 	mov	a,@r0
      00292D 94 30            [12] 2049 	subb	a,#0x30
      00292F 08               [12] 2050 	inc	r0
      002930 E6               [12] 2051 	mov	a,@r0
      002931 64 80            [12] 2052 	xrl	a,#0x80
      002933 94 80            [12] 2053 	subb	a,#0x80
      002935 50 03            [24] 2054 	jnc	00473$
      002937 02 25 B4         [24] 2055 	ljmp	00200$
      00293A                       2056 00473$:
                                   2057 ;	life.c:166: for (y = 0; y < H; y++) {
      00293A 78 35            [12] 2058 	mov	r0,#_y
      00293C 06               [12] 2059 	inc	@r0
      00293D B6 00 02         [24] 2060 	cjne	@r0,#0x00,00474$
      002940 08               [12] 2061 	inc	r0
      002941 06               [12] 2062 	inc	@r0
      002942                       2063 00474$:
      002942 78 35            [12] 2064 	mov	r0,#_y
      002944 C3               [12] 2065 	clr	c
      002945 E6               [12] 2066 	mov	a,@r0
      002946 94 C0            [12] 2067 	subb	a,#0xc0
      002948 08               [12] 2068 	inc	r0
      002949 E6               [12] 2069 	mov	a,@r0
      00294A 64 80            [12] 2070 	xrl	a,#0x80
      00294C 94 80            [12] 2071 	subb	a,#0x80
      00294E 50 03            [24] 2072 	jnc	00475$
      002950 02 25 8C         [24] 2073 	ljmp	00202$
      002953                       2074 00475$:
                                   2075 ;	life.c:197: cycle2 = !cycle2;
      002953 78 3E            [12] 2076 	mov	r0,#_cycle2
      002955 E6               [12] 2077 	mov	a,@r0
      002956 B4 01 00         [24] 2078 	cjne	a,#0x01,00476$
      002959                       2079 00476$:
      002959 92 00            [24] 2080 	mov	b0,c
      00295B 78 3E            [12] 2081 	mov	r0,#_cycle2
      00295D E4               [12] 2082 	clr	a
      00295E 33               [12] 2083 	rlc	a
      00295F F6               [12] 2084 	mov	@r0,a
                                   2085 ;	life.c:198: fixed = !fixed;
      002960 78 3D            [12] 2086 	mov	r0,#_fixed
      002962 E6               [12] 2087 	mov	a,@r0
      002963 B4 01 00         [24] 2088 	cjne	a,#0x01,00477$
      002966                       2089 00477$:
      002966 92 00            [24] 2090 	mov	b0,c
      002968 78 3D            [12] 2091 	mov	r0,#_fixed
      00296A E4               [12] 2092 	clr	a
      00296B 33               [12] 2093 	rlc	a
      00296C F6               [12] 2094 	mov	@r0,a
                                   2095 ;	life.c:200: memcpy(pu, u, sizeof (u));
      00296D E4               [12] 2096 	clr	a
      00296E C0 E0            [24] 2097 	push	acc
      002970 74 24            [12] 2098 	mov	a,#0x24
      002972 C0 E0            [24] 2099 	push	acc
      002974 74 00            [12] 2100 	mov	a,#_u
      002976 C0 E0            [24] 2101 	push	acc
      002978 74 84            [12] 2102 	mov	a,#(_u >> 8)
      00297A C0 E0            [24] 2103 	push	acc
      00297C E4               [12] 2104 	clr	a
      00297D C0 E0            [24] 2105 	push	acc
      00297F 90 60 00         [24] 2106 	mov	dptr,#_pu
      002982 75 F0 00         [24] 2107 	mov	b,#0x00
      002985 12 2B 2A         [24] 2108 	lcall	___memcpy
      002988 E5 81            [12] 2109 	mov	a,sp
      00298A 24 FB            [12] 2110 	add	a,#0xfb
      00298C F5 81            [12] 2111 	mov	sp,a
                                   2112 ;	life.c:201: memcpy(u, nu, sizeof (nu));
      00298E E4               [12] 2113 	clr	a
      00298F C0 E0            [24] 2114 	push	acc
      002991 74 24            [12] 2115 	mov	a,#0x24
      002993 C0 E0            [24] 2116 	push	acc
      002995 74 00            [12] 2117 	mov	a,#_nu
      002997 C0 E0            [24] 2118 	push	acc
      002999 74 A8            [12] 2119 	mov	a,#(_nu >> 8)
      00299B C0 E0            [24] 2120 	push	acc
      00299D E4               [12] 2121 	clr	a
      00299E C0 E0            [24] 2122 	push	acc
      0029A0 90 84 00         [24] 2123 	mov	dptr,#_u
      0029A3 75 F0 00         [24] 2124 	mov	b,#0x00
      0029A6 12 2B 2A         [24] 2125 	lcall	___memcpy
      0029A9 E5 81            [12] 2126 	mov	a,sp
      0029AB 24 FB            [12] 2127 	add	a,#0xfb
      0029AD F5 81            [12] 2128 	mov	sp,a
                                   2129 ;	life.c:239: if (fixed || cycle2) {
      0029AF 78 3D            [12] 2130 	mov	r0,#_fixed
      0029B1 E6               [12] 2131 	mov	a,@r0
      0029B2 70 08            [24] 2132 	jnz	00126$
      0029B4 78 3E            [12] 2133 	mov	r0,#_cycle2
      0029B6 E6               [12] 2134 	mov	a,@r0
      0029B7 70 03            [24] 2135 	jnz	00479$
      0029B9 02 25 64         [24] 2136 	ljmp	00215$
      0029BC                       2137 00479$:
      0029BC                       2138 00126$:
                                   2139 ;	life.c:240: printstr("DONE ");
      0029BC 7D AB            [12] 2140 	mov	r5,#___str_6
      0029BE 7E 2D            [12] 2141 	mov	r6,#(___str_6 >> 8)
      0029C0 7F 80            [12] 2142 	mov	r7,#0x80
                                   2143 ;	life.c:49: return;
      0029C2                       2144 00205$:
                                   2145 ;	life.c:47: for (; *s; s++) putchar(*s);
      0029C2 8D 82            [24] 2146 	mov	dpl,r5
      0029C4 8E 83            [24] 2147 	mov	dph,r6
      0029C6 8F F0            [24] 2148 	mov	b,r7
      0029C8 12 2C 4E         [24] 2149 	lcall	__gptrget
      0029CB FC               [12] 2150 	mov	r4,a
      0029CC 60 10            [24] 2151 	jz	00176$
      0029CE 7B 00            [12] 2152 	mov	r3,#0x00
      0029D0 8C 82            [24] 2153 	mov	dpl,r4
      0029D2 8B 83            [24] 2154 	mov	dph,r3
      0029D4 12 20 C5         [24] 2155 	lcall	_putchar
      0029D7 0D               [12] 2156 	inc	r5
                                   2157 ;	life.c:240: printstr("DONE ");
      0029D8 BD 00 E7         [24] 2158 	cjne	r5,#0x00,00205$
      0029DB 0E               [12] 2159 	inc	r6
      0029DC 80 E4            [24] 2160 	sjmp	00205$
      0029DE                       2161 00176$:
                                   2162 ;	life.c:241: if (fixed) printstr("FIXED\r\n");
      0029DE 78 3D            [12] 2163 	mov	r0,#_fixed
      0029E0 E6               [12] 2164 	mov	a,@r0
      0029E1 60 22            [24] 2165 	jz	00124$
      0029E3 7D B1            [12] 2166 	mov	r5,#___str_7
      0029E5 7E 2D            [12] 2167 	mov	r6,#(___str_7 >> 8)
      0029E7 7F 80            [12] 2168 	mov	r7,#0x80
                                   2169 ;	life.c:49: return;
      0029E9                       2170 00208$:
                                   2171 ;	life.c:47: for (; *s; s++) putchar(*s);
      0029E9 8D 82            [24] 2172 	mov	dpl,r5
      0029EB 8E 83            [24] 2173 	mov	dph,r6
      0029ED 8F F0            [24] 2174 	mov	b,r7
      0029EF 12 2C 4E         [24] 2175 	lcall	__gptrget
      0029F2 FC               [12] 2176 	mov	r4,a
      0029F3 60 32            [24] 2177 	jz	00125$
      0029F5 7B 00            [12] 2178 	mov	r3,#0x00
      0029F7 8C 82            [24] 2179 	mov	dpl,r4
      0029F9 8B 83            [24] 2180 	mov	dph,r3
      0029FB 12 20 C5         [24] 2181 	lcall	_putchar
      0029FE 0D               [12] 2182 	inc	r5
                                   2183 ;	life.c:241: if (fixed) printstr("FIXED\r\n");
      0029FF BD 00 E7         [24] 2184 	cjne	r5,#0x00,00208$
      002A02 0E               [12] 2185 	inc	r6
      002A03 80 E4            [24] 2186 	sjmp	00208$
      002A05                       2187 00124$:
                                   2188 ;	life.c:242: else printstr("CYCLE2\r\n");
      002A05 7D B9            [12] 2189 	mov	r5,#___str_8
      002A07 7E 2D            [12] 2190 	mov	r6,#(___str_8 >> 8)
      002A09 7F 80            [12] 2191 	mov	r7,#0x80
                                   2192 ;	life.c:49: return;
      002A0B                       2193 00211$:
                                   2194 ;	life.c:47: for (; *s; s++) putchar(*s);
      002A0B 8D 82            [24] 2195 	mov	dpl,r5
      002A0D 8E 83            [24] 2196 	mov	dph,r6
      002A0F 8F F0            [24] 2197 	mov	b,r7
      002A11 12 2C 4E         [24] 2198 	lcall	__gptrget
      002A14 FC               [12] 2199 	mov	r4,a
      002A15 60 10            [24] 2200 	jz	00125$
      002A17 7B 00            [12] 2201 	mov	r3,#0x00
      002A19 8C 82            [24] 2202 	mov	dpl,r4
      002A1B 8B 83            [24] 2203 	mov	dph,r3
      002A1D 12 20 C5         [24] 2204 	lcall	_putchar
      002A20 0D               [12] 2205 	inc	r5
                                   2206 ;	life.c:242: else printstr("CYCLE2\r\n");
      002A21 BD 00 E7         [24] 2207 	cjne	r5,#0x00,00211$
      002A24 0E               [12] 2208 	inc	r6
      002A25 80 E4            [24] 2209 	sjmp	00211$
      002A27                       2210 00125$:
                                   2211 ;	life.c:243: (void)getchar();
      002A27 12 20 CA         [24] 2212 	lcall	_getchar
                                   2213 ;	life.c:244: break;
      002A2A                       2214 00129$:
                                   2215 ;	life.c:248: if (i1) {
      002A2A 78 32            [12] 2216 	mov	r0,#_i1
      002A2C E6               [12] 2217 	mov	a,@r0
      002A2D 60 25            [24] 2218 	jz	00221$
                                   2219 ;	life.c:249: printstr("BREAK\r\n");
      002A2F 7D C2            [12] 2220 	mov	r5,#___str_9
      002A31 7E 2D            [12] 2221 	mov	r6,#(___str_9 >> 8)
      002A33 7F 80            [12] 2222 	mov	r7,#0x80
                                   2223 ;	life.c:49: return;
      002A35                       2224 00218$:
                                   2225 ;	life.c:47: for (; *s; s++) putchar(*s);
      002A35 8D 82            [24] 2226 	mov	dpl,r5
      002A37 8E 83            [24] 2227 	mov	dph,r6
      002A39 8F F0            [24] 2228 	mov	b,r7
      002A3B 12 2C 4E         [24] 2229 	lcall	__gptrget
      002A3E FC               [12] 2230 	mov	r4,a
      002A3F 60 10            [24] 2231 	jz	00182$
      002A41 7B 00            [12] 2232 	mov	r3,#0x00
      002A43 8C 82            [24] 2233 	mov	dpl,r4
      002A45 8B 83            [24] 2234 	mov	dph,r3
      002A47 12 20 C5         [24] 2235 	lcall	_putchar
      002A4A 0D               [12] 2236 	inc	r5
                                   2237 ;	life.c:249: printstr("BREAK\r\n");
      002A4B BD 00 E7         [24] 2238 	cjne	r5,#0x00,00218$
      002A4E 0E               [12] 2239 	inc	r6
      002A4F 80 E4            [24] 2240 	sjmp	00218$
      002A51                       2241 00182$:
                                   2242 ;	life.c:250: (void)getchar();
      002A51 12 20 CA         [24] 2243 	lcall	_getchar
      002A54                       2244 00221$:
                                   2245 ;	life.c:213: for (i0 = 0; !i0; ) {		
      002A54 78 31            [12] 2246 	mov	r0,#_i0
      002A56 E6               [12] 2247 	mov	a,@r0
      002A57 70 03            [24] 2248 	jnz	00490$
      002A59 02 22 F6         [24] 2249 	ljmp	00220$
      002A5C                       2250 00490$:
                                   2251 ;	life.c:254: terminate:
      002A5C                       2252 00133$:
                                   2253 ;	life.c:255: EA = 0;
                                   2254 ;	assignBit
      002A5C C2 AF            [12] 2255 	clr	_EA
                                   2256 ;	life.c:256: printstr("TERM\r\n");
      002A5E 7D CA            [12] 2257 	mov	r5,#___str_10
      002A60 7E 2D            [12] 2258 	mov	r6,#(___str_10 >> 8)
      002A62 7F 80            [12] 2259 	mov	r7,#0x80
                                   2260 ;	life.c:49: return;
      002A64                       2261 00223$:
                                   2262 ;	life.c:47: for (; *s; s++) putchar(*s);
      002A64 8D 82            [24] 2263 	mov	dpl,r5
      002A66 8E 83            [24] 2264 	mov	dph,r6
      002A68 8F F0            [24] 2265 	mov	b,r7
      002A6A 12 2C 4E         [24] 2266 	lcall	__gptrget
      002A6D FC               [12] 2267 	mov	r4,a
      002A6E 60 10            [24] 2268 	jz	00184$
      002A70 7B 00            [12] 2269 	mov	r3,#0x00
      002A72 8C 82            [24] 2270 	mov	dpl,r4
      002A74 8B 83            [24] 2271 	mov	dph,r3
      002A76 12 20 C5         [24] 2272 	lcall	_putchar
      002A79 0D               [12] 2273 	inc	r5
                                   2274 ;	life.c:256: printstr("TERM\r\n");
      002A7A BD 00 E7         [24] 2275 	cjne	r5,#0x00,00223$
      002A7D 0E               [12] 2276 	inc	r6
      002A7E 80 E4            [24] 2277 	sjmp	00223$
      002A80                       2278 00184$:
                                   2279 ;	life.c:257: (void)getchar();
      002A80 12 20 CA         [24] 2280 	lcall	_getchar
                                   2281 ;	life.c:261: __endasm;
      002A83 02 00 00         [24] 2282 	ljmp	0
                                   2283 ;	life.c:262: }
      002A86 85 10 81         [24] 2284 	mov	sp,_bp
      002A89 D0 10            [24] 2285 	pop	_bp
      002A8B 22               [24] 2286 	ret
                                   2287 	.area CSEG    (CODE)
                                   2288 	.area CONST   (CODE)
                                   2289 	.area CONST   (CODE)
      002D76                       2290 ___str_0:
      002D76 1B                    2291 	.db 0x1b
      002D77 5B 32 4A              2292 	.ascii "[2J"
      002D7A 1B                    2293 	.db 0x1b
      002D7B 5B 6D 47 45 4E 20     2294 	.ascii "[mGEN "
      002D81 00                    2295 	.db 0x00
                                   2296 	.area CSEG    (CODE)
                                   2297 	.area CONST   (CODE)
      002D82                       2298 ___str_1:
      002D82 0D                    2299 	.db 0x0d
      002D83 0A                    2300 	.db 0x0a
      002D84 00                    2301 	.db 0x00
                                   2302 	.area CSEG    (CODE)
                                   2303 	.area CONST   (CODE)
      002D85                       2304 ___str_2:
      002D85 4C 4F 41 44 20 3C     2305 	.ascii "LOAD <"
      002D8B 00                    2306 	.db 0x00
                                   2307 	.area CSEG    (CODE)
                                   2308 	.area CONST   (CODE)
      002D8C                       2309 ___str_3:
      002D8C 3E                    2310 	.ascii ">"
      002D8D 0D                    2311 	.db 0x0d
      002D8E 0A                    2312 	.db 0x0a
      002D8F 00                    2313 	.db 0x00
                                   2314 	.area CSEG    (CODE)
                                   2315 	.area CONST   (CODE)
      002D90                       2316 ___str_4:
      002D90 1B                    2317 	.db 0x1b
      002D91 5B 32 4A              2318 	.ascii "[2J"
      002D94 1B                    2319 	.db 0x1b
      002D95 5B 6D 4C 49 46 45 20  2320 	.ascii "[mLIFE INIT"
             49 4E 49 54
      002DA0 0D                    2321 	.db 0x0d
      002DA1 0A                    2322 	.db 0x0a
      002DA2 00                    2323 	.db 0x00
                                   2324 	.area CSEG    (CODE)
                                   2325 	.area CONST   (CODE)
      002DA3                       2326 ___str_5:
      002DA3 52 45 41 44 59        2327 	.ascii "READY"
      002DA8 0D                    2328 	.db 0x0d
      002DA9 0A                    2329 	.db 0x0a
      002DAA 00                    2330 	.db 0x00
                                   2331 	.area CSEG    (CODE)
                                   2332 	.area CONST   (CODE)
      002DAB                       2333 ___str_6:
      002DAB 44 4F 4E 45 20        2334 	.ascii "DONE "
      002DB0 00                    2335 	.db 0x00
                                   2336 	.area CSEG    (CODE)
                                   2337 	.area CONST   (CODE)
      002DB1                       2338 ___str_7:
      002DB1 46 49 58 45 44        2339 	.ascii "FIXED"
      002DB6 0D                    2340 	.db 0x0d
      002DB7 0A                    2341 	.db 0x0a
      002DB8 00                    2342 	.db 0x00
                                   2343 	.area CSEG    (CODE)
                                   2344 	.area CONST   (CODE)
      002DB9                       2345 ___str_8:
      002DB9 43 59 43 4C 45 32     2346 	.ascii "CYCLE2"
      002DBF 0D                    2347 	.db 0x0d
      002DC0 0A                    2348 	.db 0x0a
      002DC1 00                    2349 	.db 0x00
                                   2350 	.area CSEG    (CODE)
                                   2351 	.area CONST   (CODE)
      002DC2                       2352 ___str_9:
      002DC2 42 52 45 41 4B        2353 	.ascii "BREAK"
      002DC7 0D                    2354 	.db 0x0d
      002DC8 0A                    2355 	.db 0x0a
      002DC9 00                    2356 	.db 0x00
                                   2357 	.area CSEG    (CODE)
                                   2358 	.area CONST   (CODE)
      002DCA                       2359 ___str_10:
      002DCA 54 45 52 4D           2360 	.ascii "TERM"
      002DCE 0D                    2361 	.db 0x0d
      002DCF 0A                    2362 	.db 0x0a
      002DD0 00                    2363 	.db 0x00
                                   2364 	.area CSEG    (CODE)
                                   2365 	.area XINIT   (CODE)
                                   2366 	.area CABS    (ABS,CODE)
