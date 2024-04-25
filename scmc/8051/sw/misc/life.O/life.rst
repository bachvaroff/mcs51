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
      00003F                        337 _dx:
      00003F                        338 	.ds 2
      000041                        339 _dy:
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
      002003 02 20 DC         [24]  392 	ljmp	_int0
      002006                        393 	.ds	5
      00200B 32               [24]  394 	reti
      00200C                        395 	.ds	7
      002013 02 20 E8         [24]  396 	ljmp	_int1
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
                                    410 ;	life.c:28: __idata static const char digits[16] = {
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
                                    443 ;	life.c:165: __idata static const char busy[4] = { '\\', '|', '/', '-' };
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
      002016 02 22 F1         [24]  460 	ljmp	_main
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
                                    477 ;	life.c:14: __endasm;
      0020C5 C0 E0            [24]  478 	push	acc
      0020C7 E5 82            [12]  479 	mov	a, dpl
      0020C9 12 00 3C         [24]  480 	lcall	0x003c
      0020CC D0 E0            [24]  481 	pop	acc
      0020CE 22               [24]  482 	ret
                                    483 ;	life.c:15: }
                                    484 ;	naked function: no epilogue.
                                    485 ;------------------------------------------------------------
                                    486 ;Allocation info for local variables in function 'getchar'
                                    487 ;------------------------------------------------------------
                                    488 ;	life.c:17: int getchar(void) __naked {
                                    489 ;	-----------------------------------------
                                    490 ;	 function getchar
                                    491 ;	-----------------------------------------
      0020CF                        492 _getchar:
                                    493 ;	naked function: no prologue.
                                    494 ;	life.c:25: __endasm;
      0020CF C0 E0            [24]  495 	push	acc
      0020D1 12 00 36         [24]  496 	lcall	0x0036
      0020D4 F5 82            [12]  497 	mov	dpl, a
      0020D6 75 83 00         [24]  498 	mov	dph, #0
      0020D9 D0 E0            [24]  499 	pop	acc
      0020DB 22               [24]  500 	ret
                                    501 ;	life.c:26: }
                                    502 ;	naked function: no epilogue.
                                    503 ;------------------------------------------------------------
                                    504 ;Allocation info for local variables in function 'int0'
                                    505 ;------------------------------------------------------------
                                    506 ;	life.c:57: void int0(void) __interrupt IE0_VECTOR __using 1 {
                                    507 ;	-----------------------------------------
                                    508 ;	 function int0
                                    509 ;	-----------------------------------------
      0020DC                        510 _int0:
                           00000F   511 	ar7 = 0x0f
                           00000E   512 	ar6 = 0x0e
                           00000D   513 	ar5 = 0x0d
                           00000C   514 	ar4 = 0x0c
                           00000B   515 	ar3 = 0x0b
                           00000A   516 	ar2 = 0x0a
                           000009   517 	ar1 = 0x09
                           000008   518 	ar0 = 0x08
      0020DC C0 D0            [24]  519 	push	psw
      0020DE 75 D0 08         [24]  520 	mov	psw,#0x08
                                    521 ;	life.c:58: i0 = 1;
      0020E1 78 31            [12]  522 	mov	r0,#_i0
      0020E3 76 01            [12]  523 	mov	@r0,#0x01
                                    524 ;	life.c:59: }
      0020E5 D0 D0            [24]  525 	pop	psw
      0020E7 32               [24]  526 	reti
                                    527 ;	eliminated unneeded push/pop dpl
                                    528 ;	eliminated unneeded push/pop dph
                                    529 ;	eliminated unneeded push/pop b
                                    530 ;	eliminated unneeded push/pop acc
                                    531 ;------------------------------------------------------------
                                    532 ;Allocation info for local variables in function 'int1'
                                    533 ;------------------------------------------------------------
                                    534 ;	life.c:61: void int1(void) __interrupt IE1_VECTOR __using 1 {
                                    535 ;	-----------------------------------------
                                    536 ;	 function int1
                                    537 ;	-----------------------------------------
      0020E8                        538 _int1:
      0020E8 C0 D0            [24]  539 	push	psw
      0020EA 75 D0 08         [24]  540 	mov	psw,#0x08
                                    541 ;	life.c:62: i1 = 1;
      0020ED 78 32            [12]  542 	mov	r0,#_i1
      0020EF 76 01            [12]  543 	mov	@r0,#0x01
                                    544 ;	life.c:63: }
      0020F1 D0 D0            [24]  545 	pop	psw
      0020F3 32               [24]  546 	reti
                                    547 ;	eliminated unneeded push/pop dpl
                                    548 ;	eliminated unneeded push/pop dph
                                    549 ;	eliminated unneeded push/pop b
                                    550 ;	eliminated unneeded push/pop acc
                                    551 ;------------------------------------------------------------
                                    552 ;Allocation info for local variables in function 'show'
                                    553 ;------------------------------------------------------------
                                    554 ;hdr                       Allocated to registers r7 
                                    555 ;__1966080005              Allocated to registers 
                                    556 ;s                         Allocated to registers r5 r6 r7 
                                    557 ;__1310720001              Allocated to registers r6 r7 
                                    558 ;a                         Allocated to registers 
                                    559 ;__1310720003              Allocated to registers r6 r7 
                                    560 ;a                         Allocated to registers 
                                    561 ;__1966080008              Allocated to registers 
                                    562 ;s                         Allocated to registers r5 r6 r7 
                                    563 ;__2621440011              Allocated to registers 
                                    564 ;s                         Allocated to registers r5 r6 r7 
                                    565 ;------------------------------------------------------------
                                    566 ;	life.c:99: void show(char hdr) {
                                    567 ;	-----------------------------------------
                                    568 ;	 function show
                                    569 ;	-----------------------------------------
      0020F4                        570 _show:
                           000007   571 	ar7 = 0x07
                           000006   572 	ar6 = 0x06
                           000005   573 	ar5 = 0x05
                           000004   574 	ar4 = 0x04
                           000003   575 	ar3 = 0x03
                           000002   576 	ar2 = 0x02
                           000001   577 	ar1 = 0x01
                           000000   578 	ar0 = 0x00
                                    579 ;	life.c:100: if (hdr) {
      0020F4 E5 82            [12]  580 	mov	a,dpl
      0020F6 FF               [12]  581 	mov	r7,a
      0020F7 70 03            [24]  582 	jnz	00190$
      0020F9 02 22 4C         [24]  583 	ljmp	00102$
      0020FC                        584 00190$:
                                    585 ;	life.c:101: printstr("\033[2J\033[mGEN ");
      0020FC 7D 0E            [12]  586 	mov	r5,#___str_0
      0020FE 7E 2D            [12]  587 	mov	r6,#(___str_0 >> 8)
      002100 7F 80            [12]  588 	mov	r7,#0x80
                                    589 ;	life.c:52: return;
      002102                        590 00121$:
                                    591 ;	life.c:50: for (; *s; s++) putchar(*s);
      002102 8D 82            [24]  592 	mov	dpl,r5
      002104 8E 83            [24]  593 	mov	dph,r6
      002106 8F F0            [24]  594 	mov	b,r7
      002108 12 2B E6         [24]  595 	lcall	__gptrget
      00210B FC               [12]  596 	mov	r4,a
      00210C 60 10            [24]  597 	jz	00109$
      00210E 7B 00            [12]  598 	mov	r3,#0x00
      002110 8C 82            [24]  599 	mov	dpl,r4
      002112 8B 83            [24]  600 	mov	dph,r3
      002114 12 20 C5         [24]  601 	lcall	_putchar
      002117 0D               [12]  602 	inc	r5
                                    603 ;	life.c:101: printstr("\033[2J\033[mGEN ");
      002118 BD 00 E7         [24]  604 	cjne	r5,#0x00,00121$
      00211B 0E               [12]  605 	inc	r6
      00211C 80 E4            [24]  606 	sjmp	00121$
      00211E                        607 00109$:
                                    608 ;	life.c:93: print16x(generation[1]);
      00211E 78 45            [12]  609 	mov	r0,#(_generation + 0x0002)
      002120 86 06            [24]  610 	mov	ar6,@r0
      002122 08               [12]  611 	inc	r0
                                    612 ;	life.c:41: putchar(digits[(a >> 12) & 0xf]);
      002123 E6               [12]  613 	mov	a,@r0
      002124 FF               [12]  614 	mov	r7,a
      002125 C4               [12]  615 	swap	a
      002126 54 0F            [12]  616 	anl	a,#0x0f
      002128 30 E3 02         [24]  617 	jnb	acc.3,00193$
      00212B 44 F0            [12]  618 	orl	a,#0xf0
      00212D                        619 00193$:
      00212D FC               [12]  620 	mov	r4,a
      00212E 33               [12]  621 	rlc	a
      00212F 95 E0            [12]  622 	subb	a,acc
      002131 53 04 0F         [24]  623 	anl	ar4,#0x0f
      002134 EC               [12]  624 	mov	a,r4
      002135 24 21            [12]  625 	add	a,#_digits
      002137 F9               [12]  626 	mov	r1,a
      002138 87 05            [24]  627 	mov	ar5,@r1
      00213A 7C 00            [12]  628 	mov	r4,#0x00
      00213C 8D 82            [24]  629 	mov	dpl,r5
      00213E 8C 83            [24]  630 	mov	dph,r4
      002140 12 20 C5         [24]  631 	lcall	_putchar
                                    632 ;	life.c:42: putchar(digits[(a >> 8) & 0xf]);
      002143 8F 05            [24]  633 	mov	ar5,r7
      002145 53 05 0F         [24]  634 	anl	ar5,#0x0f
      002148 ED               [12]  635 	mov	a,r5
      002149 24 21            [12]  636 	add	a,#_digits
      00214B F9               [12]  637 	mov	r1,a
      00214C 87 05            [24]  638 	mov	ar5,@r1
      00214E 7C 00            [12]  639 	mov	r4,#0x00
      002150 8D 82            [24]  640 	mov	dpl,r5
      002152 8C 83            [24]  641 	mov	dph,r4
      002154 12 20 C5         [24]  642 	lcall	_putchar
                                    643 ;	life.c:43: putchar(digits[(a >> 4) & 0xf]);
      002157 8E 04            [24]  644 	mov	ar4,r6
      002159 EF               [12]  645 	mov	a,r7
      00215A C4               [12]  646 	swap	a
      00215B CC               [12]  647 	xch	a,r4
      00215C C4               [12]  648 	swap	a
      00215D 54 0F            [12]  649 	anl	a,#0x0f
      00215F 6C               [12]  650 	xrl	a,r4
      002160 CC               [12]  651 	xch	a,r4
      002161 54 0F            [12]  652 	anl	a,#0x0f
      002163 CC               [12]  653 	xch	a,r4
      002164 6C               [12]  654 	xrl	a,r4
      002165 CC               [12]  655 	xch	a,r4
      002166 30 E3 02         [24]  656 	jnb	acc.3,00194$
      002169 44 F0            [12]  657 	orl	a,#0xf0
      00216B                        658 00194$:
      00216B 53 04 0F         [24]  659 	anl	ar4,#0x0f
      00216E EC               [12]  660 	mov	a,r4
      00216F 24 21            [12]  661 	add	a,#_digits
      002171 F9               [12]  662 	mov	r1,a
      002172 87 05            [24]  663 	mov	ar5,@r1
      002174 7C 00            [12]  664 	mov	r4,#0x00
      002176 8D 82            [24]  665 	mov	dpl,r5
      002178 8C 83            [24]  666 	mov	dph,r4
      00217A 12 20 C5         [24]  667 	lcall	_putchar
                                    668 ;	life.c:44: putchar(digits[a & 0xf]);
      00217D 53 06 0F         [24]  669 	anl	ar6,#0x0f
      002180 EE               [12]  670 	mov	a,r6
      002181 24 21            [12]  671 	add	a,#_digits
      002183 F9               [12]  672 	mov	r1,a
      002184 87 07            [24]  673 	mov	ar7,@r1
      002186 7E 00            [12]  674 	mov	r6,#0x00
      002188 8F 82            [24]  675 	mov	dpl,r7
      00218A 8E 83            [24]  676 	mov	dph,r6
      00218C 12 20 C5         [24]  677 	lcall	_putchar
                                    678 ;	life.c:94: print16x(generation[0]);
      00218F 78 43            [12]  679 	mov	r0,#_generation
      002191 86 06            [24]  680 	mov	ar6,@r0
      002193 08               [12]  681 	inc	r0
                                    682 ;	life.c:41: putchar(digits[(a >> 12) & 0xf]);
      002194 E6               [12]  683 	mov	a,@r0
      002195 FF               [12]  684 	mov	r7,a
      002196 C4               [12]  685 	swap	a
      002197 54 0F            [12]  686 	anl	a,#0x0f
      002199 30 E3 02         [24]  687 	jnb	acc.3,00195$
      00219C 44 F0            [12]  688 	orl	a,#0xf0
      00219E                        689 00195$:
      00219E FC               [12]  690 	mov	r4,a
      00219F 33               [12]  691 	rlc	a
      0021A0 95 E0            [12]  692 	subb	a,acc
      0021A2 53 04 0F         [24]  693 	anl	ar4,#0x0f
      0021A5 EC               [12]  694 	mov	a,r4
      0021A6 24 21            [12]  695 	add	a,#_digits
      0021A8 F9               [12]  696 	mov	r1,a
      0021A9 87 05            [24]  697 	mov	ar5,@r1
      0021AB 7C 00            [12]  698 	mov	r4,#0x00
      0021AD 8D 82            [24]  699 	mov	dpl,r5
      0021AF 8C 83            [24]  700 	mov	dph,r4
      0021B1 12 20 C5         [24]  701 	lcall	_putchar
                                    702 ;	life.c:42: putchar(digits[(a >> 8) & 0xf]);
      0021B4 8F 05            [24]  703 	mov	ar5,r7
      0021B6 53 05 0F         [24]  704 	anl	ar5,#0x0f
      0021B9 ED               [12]  705 	mov	a,r5
      0021BA 24 21            [12]  706 	add	a,#_digits
      0021BC F9               [12]  707 	mov	r1,a
      0021BD 87 05            [24]  708 	mov	ar5,@r1
      0021BF 7C 00            [12]  709 	mov	r4,#0x00
      0021C1 8D 82            [24]  710 	mov	dpl,r5
      0021C3 8C 83            [24]  711 	mov	dph,r4
      0021C5 12 20 C5         [24]  712 	lcall	_putchar
                                    713 ;	life.c:43: putchar(digits[(a >> 4) & 0xf]);
      0021C8 8E 04            [24]  714 	mov	ar4,r6
      0021CA EF               [12]  715 	mov	a,r7
      0021CB C4               [12]  716 	swap	a
      0021CC CC               [12]  717 	xch	a,r4
      0021CD C4               [12]  718 	swap	a
      0021CE 54 0F            [12]  719 	anl	a,#0x0f
      0021D0 6C               [12]  720 	xrl	a,r4
      0021D1 CC               [12]  721 	xch	a,r4
      0021D2 54 0F            [12]  722 	anl	a,#0x0f
      0021D4 CC               [12]  723 	xch	a,r4
      0021D5 6C               [12]  724 	xrl	a,r4
      0021D6 CC               [12]  725 	xch	a,r4
      0021D7 30 E3 02         [24]  726 	jnb	acc.3,00196$
      0021DA 44 F0            [12]  727 	orl	a,#0xf0
      0021DC                        728 00196$:
      0021DC 53 04 0F         [24]  729 	anl	ar4,#0x0f
      0021DF EC               [12]  730 	mov	a,r4
      0021E0 24 21            [12]  731 	add	a,#_digits
      0021E2 F9               [12]  732 	mov	r1,a
      0021E3 87 05            [24]  733 	mov	ar5,@r1
      0021E5 7C 00            [12]  734 	mov	r4,#0x00
      0021E7 8D 82            [24]  735 	mov	dpl,r5
      0021E9 8C 83            [24]  736 	mov	dph,r4
      0021EB 12 20 C5         [24]  737 	lcall	_putchar
                                    738 ;	life.c:44: putchar(digits[a & 0xf]);
      0021EE 53 06 0F         [24]  739 	anl	ar6,#0x0f
      0021F1 EE               [12]  740 	mov	a,r6
      0021F2 24 21            [12]  741 	add	a,#_digits
      0021F4 F9               [12]  742 	mov	r1,a
      0021F5 87 07            [24]  743 	mov	ar7,@r1
      0021F7 7E 00            [12]  744 	mov	r6,#0x00
      0021F9 8F 82            [24]  745 	mov	dpl,r7
      0021FB 8E 83            [24]  746 	mov	dph,r6
      0021FD 12 20 C5         [24]  747 	lcall	_putchar
                                    748 ;	life.c:103: printstr("\r\n");
      002200 7D 1A            [12]  749 	mov	r5,#___str_1
      002202 7E 2D            [12]  750 	mov	r6,#(___str_1 >> 8)
      002204 7F 80            [12]  751 	mov	r7,#0x80
                                    752 ;	life.c:52: return;
      002206                        753 00124$:
                                    754 ;	life.c:50: for (; *s; s++) putchar(*s);
      002206 8D 82            [24]  755 	mov	dpl,r5
      002208 8E 83            [24]  756 	mov	dph,r6
      00220A 8F F0            [24]  757 	mov	b,r7
      00220C 12 2B E6         [24]  758 	lcall	__gptrget
      00220F FC               [12]  759 	mov	r4,a
      002210 60 10            [24]  760 	jz	00114$
      002212 7B 00            [12]  761 	mov	r3,#0x00
      002214 8C 82            [24]  762 	mov	dpl,r4
      002216 8B 83            [24]  763 	mov	dph,r3
      002218 12 20 C5         [24]  764 	lcall	_putchar
      00221B 0D               [12]  765 	inc	r5
                                    766 ;	life.c:103: printstr("\r\n");
      00221C BD 00 E7         [24]  767 	cjne	r5,#0x00,00124$
      00221F 0E               [12]  768 	inc	r6
      002220 80 E4            [24]  769 	sjmp	00124$
      002222                        770 00114$:
                                    771 ;	life.c:86: generation[0]++;
      002222 78 43            [12]  772 	mov	r0,#_generation
      002224 86 06            [24]  773 	mov	ar6,@r0
      002226 08               [12]  774 	inc	r0
      002227 86 07            [24]  775 	mov	ar7,@r0
      002229 0E               [12]  776 	inc	r6
      00222A BE 00 01         [24]  777 	cjne	r6,#0x00,00199$
      00222D 0F               [12]  778 	inc	r7
      00222E                        779 00199$:
      00222E 78 43            [12]  780 	mov	r0,#_generation
      002230 A6 06            [24]  781 	mov	@r0,ar6
      002232 08               [12]  782 	inc	r0
      002233 A6 07            [24]  783 	mov	@r0,ar7
                                    784 ;	life.c:87: if (!generation[0]) generation[1]++;
      002235 EE               [12]  785 	mov	a,r6
      002236 4F               [12]  786 	orl	a,r7
      002237 70 13            [24]  787 	jnz	00102$
      002239 78 45            [12]  788 	mov	r0,#(_generation + 0x0002)
      00223B 86 06            [24]  789 	mov	ar6,@r0
      00223D 08               [12]  790 	inc	r0
      00223E 86 07            [24]  791 	mov	ar7,@r0
      002240 0E               [12]  792 	inc	r6
      002241 BE 00 01         [24]  793 	cjne	r6,#0x00,00201$
      002244 0F               [12]  794 	inc	r7
      002245                        795 00201$:
      002245 78 45            [12]  796 	mov	r0,#(_generation + 0x0002)
      002247 A6 06            [24]  797 	mov	@r0,ar6
      002249 08               [12]  798 	inc	r0
      00224A A6 07            [24]  799 	mov	@r0,ar7
                                    800 ;	life.c:104: updategen();
      00224C                        801 00102$:
                                    802 ;	life.c:107: for (x = 0; x < W; x++) {
      00224C 78 33            [12]  803 	mov	r0,#_x
      00224E E4               [12]  804 	clr	a
      00224F F6               [12]  805 	mov	@r0,a
      002250 08               [12]  806 	inc	r0
      002251 F6               [12]  807 	mov	@r0,a
      002252                        808 00131$:
                                    809 ;	life.c:108: for (y = 0; y < H; y++)
      002252 78 35            [12]  810 	mov	r0,#_y
      002254 E4               [12]  811 	clr	a
      002255 F6               [12]  812 	mov	@r0,a
      002256 08               [12]  813 	inc	r0
      002257 F6               [12]  814 	mov	@r0,a
      002258                        815 00126$:
                                    816 ;	life.c:109: if (u[A2D(W, y, x)]) {
      002258 78 35            [12]  817 	mov	r0,#_y
      00225A 86 06            [24]  818 	mov	ar6,@r0
      00225C 08               [12]  819 	inc	r0
      00225D E6               [12]  820 	mov	a,@r0
      00225E C4               [12]  821 	swap	a
      00225F 23               [12]  822 	rl	a
      002260 54 E0            [12]  823 	anl	a,#0xe0
      002262 CE               [12]  824 	xch	a,r6
      002263 C4               [12]  825 	swap	a
      002264 23               [12]  826 	rl	a
      002265 CE               [12]  827 	xch	a,r6
      002266 6E               [12]  828 	xrl	a,r6
      002267 CE               [12]  829 	xch	a,r6
      002268 54 E0            [12]  830 	anl	a,#0xe0
      00226A CE               [12]  831 	xch	a,r6
      00226B 6E               [12]  832 	xrl	a,r6
      00226C FF               [12]  833 	mov	r7,a
      00226D 78 33            [12]  834 	mov	r0,#_x
      00226F E6               [12]  835 	mov	a,@r0
      002270 2E               [12]  836 	add	a,r6
      002271 FE               [12]  837 	mov	r6,a
      002272 08               [12]  838 	inc	r0
      002273 E6               [12]  839 	mov	a,@r0
      002274 3F               [12]  840 	addc	a,r7
      002275 FF               [12]  841 	mov	r7,a
      002276 EE               [12]  842 	mov	a,r6
      002277 24 00            [12]  843 	add	a,#_u
      002279 FE               [12]  844 	mov	r6,a
      00227A EF               [12]  845 	mov	a,r7
      00227B 34 48            [12]  846 	addc	a,#(_u >> 8)
      00227D FF               [12]  847 	mov	r7,a
      00227E 8E 82            [24]  848 	mov	dpl,r6
      002280 8F 83            [24]  849 	mov	dph,r7
      002282 E0               [24]  850 	movx	a,@dptr
      002283 60 0E            [24]  851 	jz	00104$
                                    852 ;	life.c:110: putchar('['); putchar(']');
      002285 90 00 5B         [24]  853 	mov	dptr,#0x005b
      002288 12 20 C5         [24]  854 	lcall	_putchar
      00228B 90 00 5D         [24]  855 	mov	dptr,#0x005d
      00228E 12 20 C5         [24]  856 	lcall	_putchar
      002291 80 0C            [24]  857 	sjmp	00127$
      002293                        858 00104$:
                                    859 ;	life.c:112: putchar('#'); putchar('#');
      002293 90 00 23         [24]  860 	mov	dptr,#0x0023
      002296 12 20 C5         [24]  861 	lcall	_putchar
      002299 90 00 23         [24]  862 	mov	dptr,#0x0023
      00229C 12 20 C5         [24]  863 	lcall	_putchar
      00229F                        864 00127$:
                                    865 ;	life.c:108: for (y = 0; y < H; y++)
      00229F 78 35            [12]  866 	mov	r0,#_y
      0022A1 06               [12]  867 	inc	@r0
      0022A2 B6 00 02         [24]  868 	cjne	@r0,#0x00,00203$
      0022A5 08               [12]  869 	inc	r0
      0022A6 06               [12]  870 	inc	@r0
      0022A7                        871 00203$:
      0022A7 78 35            [12]  872 	mov	r0,#_y
      0022A9 C3               [12]  873 	clr	c
      0022AA E6               [12]  874 	mov	a,@r0
      0022AB 94 40            [12]  875 	subb	a,#0x40
      0022AD 08               [12]  876 	inc	r0
      0022AE E6               [12]  877 	mov	a,@r0
      0022AF 64 80            [12]  878 	xrl	a,#0x80
      0022B1 94 80            [12]  879 	subb	a,#0x80
      0022B3 40 A3            [24]  880 	jc	00126$
                                    881 ;	life.c:114: printstr("\r\n");
      0022B5 7D 1A            [12]  882 	mov	r5,#___str_1
      0022B7 7E 2D            [12]  883 	mov	r6,#(___str_1 >> 8)
      0022B9 7F 80            [12]  884 	mov	r7,#0x80
                                    885 ;	life.c:52: return;
      0022BB                        886 00129$:
                                    887 ;	life.c:50: for (; *s; s++) putchar(*s);
      0022BB 8D 82            [24]  888 	mov	dpl,r5
      0022BD 8E 83            [24]  889 	mov	dph,r6
      0022BF 8F F0            [24]  890 	mov	b,r7
      0022C1 12 2B E6         [24]  891 	lcall	__gptrget
      0022C4 FC               [12]  892 	mov	r4,a
      0022C5 60 10            [24]  893 	jz	00119$
      0022C7 7B 00            [12]  894 	mov	r3,#0x00
      0022C9 8C 82            [24]  895 	mov	dpl,r4
      0022CB 8B 83            [24]  896 	mov	dph,r3
      0022CD 12 20 C5         [24]  897 	lcall	_putchar
      0022D0 0D               [12]  898 	inc	r5
                                    899 ;	life.c:114: printstr("\r\n");
      0022D1 BD 00 E7         [24]  900 	cjne	r5,#0x00,00129$
      0022D4 0E               [12]  901 	inc	r6
      0022D5 80 E4            [24]  902 	sjmp	00129$
      0022D7                        903 00119$:
                                    904 ;	life.c:107: for (x = 0; x < W; x++) {
      0022D7 78 33            [12]  905 	mov	r0,#_x
      0022D9 06               [12]  906 	inc	@r0
      0022DA B6 00 02         [24]  907 	cjne	@r0,#0x00,00207$
      0022DD 08               [12]  908 	inc	r0
      0022DE 06               [12]  909 	inc	@r0
      0022DF                        910 00207$:
      0022DF 78 33            [12]  911 	mov	r0,#_x
      0022E1 C3               [12]  912 	clr	c
      0022E2 E6               [12]  913 	mov	a,@r0
      0022E3 94 20            [12]  914 	subb	a,#0x20
      0022E5 08               [12]  915 	inc	r0
      0022E6 E6               [12]  916 	mov	a,@r0
      0022E7 64 80            [12]  917 	xrl	a,#0x80
      0022E9 94 80            [12]  918 	subb	a,#0x80
      0022EB 50 03            [24]  919 	jnc	00208$
      0022ED 02 22 52         [24]  920 	ljmp	00131$
      0022F0                        921 00208$:
                                    922 ;	life.c:117: return;
                                    923 ;	life.c:118: }
      0022F0 22               [24]  924 	ret
                                    925 ;------------------------------------------------------------
                                    926 ;Allocation info for local variables in function 'main'
                                    927 ;------------------------------------------------------------
                                    928 ;__2621440019              Allocated to registers 
                                    929 ;s                         Allocated to registers r5 r6 r7 
                                    930 ;__1310720013              Allocated to registers 
                                    931 ;s                         Allocated to registers r5 r6 r7 
                                    932 ;__1310720015              Allocated to registers r6 r7 
                                    933 ;a                         Allocated to registers r4 r5 
                                    934 ;__1310720017              Allocated to registers 
                                    935 ;s                         Allocated to registers r5 r6 r7 
                                    936 ;__2621440023              Allocated to registers 
                                    937 ;s                         Allocated to registers r5 r6 r7 
                                    938 ;__4587520027              Allocated to registers 
                                    939 ;s                         Allocated to registers r5 r6 r7 
                                    940 ;__4587520029              Allocated to registers 
                                    941 ;s                         Allocated to registers r5 r6 r7 
                                    942 ;__4587520031              Allocated to registers 
                                    943 ;s                         Allocated to registers r5 r6 r7 
                                    944 ;__3276800033              Allocated to registers 
                                    945 ;s                         Allocated to registers r5 r6 r7 
                                    946 ;__1310720035              Allocated to registers 
                                    947 ;s                         Allocated to registers r5 r6 r7 
                                    948 ;sloc0                     Allocated to stack - _bp +1
                                    949 ;sloc1                     Allocated to stack - _bp +3
                                    950 ;sloc2                     Allocated to stack - _bp +5
                                    951 ;sloc3                     Allocated to stack - _bp +7
                                    952 ;sloc4                     Allocated to stack - _bp +9
                                    953 ;sloc5                     Allocated to stack - _bp +11
                                    954 ;sloc6                     Allocated to stack - _bp +13
                                    955 ;------------------------------------------------------------
                                    956 ;	life.c:209: void main(void) {
                                    957 ;	-----------------------------------------
                                    958 ;	 function main
                                    959 ;	-----------------------------------------
      0022F1                        960 _main:
      0022F1 C0 10            [24]  961 	push	_bp
      0022F3 E5 81            [12]  962 	mov	a,sp
      0022F5 F5 10            [12]  963 	mov	_bp,a
      0022F7 24 0E            [12]  964 	add	a,#0x0e
      0022F9 F5 81            [12]  965 	mov	sp,a
                                    966 ;	life.c:210: IT0 = 1;
                                    967 ;	assignBit
      0022FB D2 88            [12]  968 	setb	_IT0
                                    969 ;	life.c:211: IT1 = 1;
                                    970 ;	assignBit
      0022FD D2 8A            [12]  971 	setb	_IT1
                                    972 ;	life.c:212: EX0 = 1;
                                    973 ;	assignBit
      0022FF D2 A8            [12]  974 	setb	_EX0
                                    975 ;	life.c:213: EX1 = 1;
                                    976 ;	assignBit
      002301 D2 AA            [12]  977 	setb	_EX1
                                    978 ;	life.c:214: EA = 1;
                                    979 ;	assignBit
      002303 D2 AF            [12]  980 	setb	_EA
                                    981 ;	life.c:216: for (i0 = 0; !i0; ) {		
      002305 78 31            [12]  982 	mov	r0,#_i0
      002307 76 00            [12]  983 	mov	@r0,#0x00
      002309                        984 00247$:
                                    985 ;	life.c:217: printstr("\033[2J\033[mLIFE INIT\r\n");
      002309 7D 28            [12]  986 	mov	r5,#___str_4
      00230B 7E 2D            [12]  987 	mov	r6,#(___str_4 >> 8)
      00230D 7F 80            [12]  988 	mov	r7,#0x80
                                    989 ;	life.c:52: return;
      00230F                        990 00213$:
                                    991 ;	life.c:50: for (; *s; s++) putchar(*s);
      00230F 8D 82            [24]  992 	mov	dpl,r5
      002311 8E 83            [24]  993 	mov	dph,r6
      002313 8F F0            [24]  994 	mov	b,r7
      002315 12 2B E6         [24]  995 	lcall	__gptrget
      002318 FC               [12]  996 	mov	r4,a
      002319 60 10            [24]  997 	jz	00108$
      00231B 7B 00            [12]  998 	mov	r3,#0x00
      00231D 8C 82            [24]  999 	mov	dpl,r4
      00231F 8B 83            [24] 1000 	mov	dph,r3
      002321 12 20 C5         [24] 1001 	lcall	_putchar
      002324 0D               [12] 1002 	inc	r5
                                   1003 ;	life.c:218: while (1) {
      002325 BD 00 E7         [24] 1004 	cjne	r5,#0x00,00213$
      002328 0E               [12] 1005 	inc	r6
      002329 80 E4            [24] 1006 	sjmp	00213$
      00232B                       1007 00108$:
                                   1008 ;	life.c:219: c = toupper(getchar());
      00232B 12 20 CF         [24] 1009 	lcall	_getchar
      00232E 12 2B BF         [24] 1010 	lcall	_toupper
      002331 AE 82            [24] 1011 	mov	r6,dpl
      002333 AF 83            [24] 1012 	mov	r7,dph
      002335 78 39            [12] 1013 	mov	r0,#_c
      002337 A6 06            [24] 1014 	mov	@r0,ar6
      002339 08               [12] 1015 	inc	r0
      00233A A6 07            [24] 1016 	mov	@r0,ar7
                                   1017 ;	life.c:220: if (i0 || (c == (int)'T')) goto terminate;
      00233C 78 31            [12] 1018 	mov	r0,#_i0
      00233E E6               [12] 1019 	mov	a,@r0
      00233F 60 03            [24] 1020 	jz	00462$
      002341 02 2A 92         [24] 1021 	ljmp	00133$
      002344                       1022 00462$:
      002344 BE 54 06         [24] 1023 	cjne	r6,#0x54,00463$
      002347 BF 00 03         [24] 1024 	cjne	r7,#0x00,00463$
      00234A 02 2A 92         [24] 1025 	ljmp	00133$
      00234D                       1026 00463$:
                                   1027 ;	life.c:221: else if (c == (int)'L') break;
      00234D BE 4C DB         [24] 1028 	cjne	r6,#0x4c,00108$
      002350 BF 00 D8         [24] 1029 	cjne	r7,#0x00,00108$
                                   1030 ;	life.c:224: reload:
      002353                       1031 00110$:
                                   1032 ;	life.c:121: memset(u, 0, sizeof (u));
      002353 E4               [12] 1033 	clr	a
      002354 C0 E0            [24] 1034 	push	acc
      002356 74 08            [12] 1035 	mov	a,#0x08
      002358 C0 E0            [24] 1036 	push	acc
      00235A E4               [12] 1037 	clr	a
      00235B C0 E0            [24] 1038 	push	acc
      00235D 90 48 00         [24] 1039 	mov	dptr,#_u
      002360 75 F0 00         [24] 1040 	mov	b,#0x00
      002363 12 2B 55         [24] 1041 	lcall	_memset
      002366 15 81            [12] 1042 	dec	sp
      002368 15 81            [12] 1043 	dec	sp
      00236A 15 81            [12] 1044 	dec	sp
                                   1045 ;	life.c:122: memset(pu, 0, sizeof (pu));
      00236C E4               [12] 1046 	clr	a
      00236D C0 E0            [24] 1047 	push	acc
      00236F 74 08            [12] 1048 	mov	a,#0x08
      002371 C0 E0            [24] 1049 	push	acc
      002373 E4               [12] 1050 	clr	a
      002374 C0 E0            [24] 1051 	push	acc
      002376 90 40 00         [24] 1052 	mov	dptr,#_pu
      002379 75 F0 00         [24] 1053 	mov	b,#0x00
      00237C 12 2B 55         [24] 1054 	lcall	_memset
      00237F 15 81            [12] 1055 	dec	sp
      002381 15 81            [12] 1056 	dec	sp
      002383 15 81            [12] 1057 	dec	sp
                                   1058 ;	life.c:128: j = 0;
      002385 78 37            [12] 1059 	mov	r0,#_j
      002387 E4               [12] 1060 	clr	a
      002388 F6               [12] 1061 	mov	@r0,a
      002389 08               [12] 1062 	inc	r0
      00238A F6               [12] 1063 	mov	@r0,a
                                   1064 ;	life.c:130: printstr("LOAD <");
      00238B 7D 1D            [12] 1065 	mov	r5,#___str_2
      00238D 7E 2D            [12] 1066 	mov	r6,#(___str_2 >> 8)
      00238F 7F 80            [12] 1067 	mov	r7,#0x80
                                   1068 ;	life.c:52: return;
      002391                       1069 00216$:
                                   1070 ;	life.c:50: for (; *s; s++) putchar(*s);
      002391 8D 82            [24] 1071 	mov	dpl,r5
      002393 8E 83            [24] 1072 	mov	dph,r6
      002395 8F F0            [24] 1073 	mov	b,r7
      002397 12 2B E6         [24] 1074 	lcall	__gptrget
      00239A FC               [12] 1075 	mov	r4,a
      00239B 60 10            [24] 1076 	jz	00138$
      00239D 7B 00            [12] 1077 	mov	r3,#0x00
      00239F 8C 82            [24] 1078 	mov	dpl,r4
      0023A1 8B 83            [24] 1079 	mov	dph,r3
      0023A3 12 20 C5         [24] 1080 	lcall	_putchar
      0023A6 0D               [12] 1081 	inc	r5
                                   1082 ;	life.c:130: printstr("LOAD <");
      0023A7 BD 00 E7         [24] 1083 	cjne	r5,#0x00,00216$
      0023AA 0E               [12] 1084 	inc	r6
      0023AB 80 E4            [24] 1085 	sjmp	00216$
      0023AD                       1086 00138$:
                                   1087 ;	life.c:132: for (y = 0; y < H; y++) {
      0023AD 78 35            [12] 1088 	mov	r0,#_y
      0023AF E4               [12] 1089 	clr	a
      0023B0 F6               [12] 1090 	mov	@r0,a
      0023B1 08               [12] 1091 	inc	r0
      0023B2 F6               [12] 1092 	mov	@r0,a
      0023B3                       1093 00219$:
                                   1094 ;	life.c:133: for (x = 0; x < W; x++) {
      0023B3 78 33            [12] 1095 	mov	r0,#_x
      0023B5 E4               [12] 1096 	clr	a
      0023B6 F6               [12] 1097 	mov	@r0,a
      0023B7 08               [12] 1098 	inc	r0
      0023B8 F6               [12] 1099 	mov	@r0,a
                                   1100 ;	life.c:134: while (1) {
      0023B9                       1101 00151$:
                                   1102 ;	life.c:135: c = toupper(getchar());
      0023B9 12 20 CF         [24] 1103 	lcall	_getchar
      0023BC 12 2B BF         [24] 1104 	lcall	_toupper
      0023BF AE 82            [24] 1105 	mov	r6,dpl
      0023C1 AF 83            [24] 1106 	mov	r7,dph
      0023C3 78 39            [12] 1107 	mov	r0,#_c
      0023C5 A6 06            [24] 1108 	mov	@r0,ar6
      0023C7 08               [12] 1109 	inc	r0
      0023C8 A6 07            [24] 1110 	mov	@r0,ar7
                                   1111 ;	life.c:136: if (c == (int)'0') {
      0023CA BE 30 37         [24] 1112 	cjne	r6,#0x30,00149$
      0023CD BF 00 34         [24] 1113 	cjne	r7,#0x00,00149$
                                   1114 ;	life.c:137: u[A2D(W, y, x)] = 0;
      0023D0 78 35            [12] 1115 	mov	r0,#_y
      0023D2 86 04            [24] 1116 	mov	ar4,@r0
      0023D4 08               [12] 1117 	inc	r0
      0023D5 E6               [12] 1118 	mov	a,@r0
      0023D6 C4               [12] 1119 	swap	a
      0023D7 23               [12] 1120 	rl	a
      0023D8 54 E0            [12] 1121 	anl	a,#0xe0
      0023DA CC               [12] 1122 	xch	a,r4
      0023DB C4               [12] 1123 	swap	a
      0023DC 23               [12] 1124 	rl	a
      0023DD CC               [12] 1125 	xch	a,r4
      0023DE 6C               [12] 1126 	xrl	a,r4
      0023DF CC               [12] 1127 	xch	a,r4
      0023E0 54 E0            [12] 1128 	anl	a,#0xe0
      0023E2 CC               [12] 1129 	xch	a,r4
      0023E3 6C               [12] 1130 	xrl	a,r4
      0023E4 FD               [12] 1131 	mov	r5,a
      0023E5 78 33            [12] 1132 	mov	r0,#_x
      0023E7 E6               [12] 1133 	mov	a,@r0
      0023E8 2C               [12] 1134 	add	a,r4
      0023E9 FC               [12] 1135 	mov	r4,a
      0023EA 08               [12] 1136 	inc	r0
      0023EB E6               [12] 1137 	mov	a,@r0
      0023EC 3D               [12] 1138 	addc	a,r5
      0023ED FD               [12] 1139 	mov	r5,a
      0023EE EC               [12] 1140 	mov	a,r4
      0023EF 24 00            [12] 1141 	add	a,#_u
      0023F1 F5 82            [12] 1142 	mov	dpl,a
      0023F3 ED               [12] 1143 	mov	a,r5
      0023F4 34 48            [12] 1144 	addc	a,#(_u >> 8)
      0023F6 F5 83            [12] 1145 	mov	dph,a
      0023F8 E4               [12] 1146 	clr	a
      0023F9 F0               [24] 1147 	movx	@dptr,a
                                   1148 ;	life.c:138: j++;
      0023FA 78 37            [12] 1149 	mov	r0,#_j
      0023FC 06               [12] 1150 	inc	@r0
      0023FD B6 00 02         [24] 1151 	cjne	@r0,#0x00,00470$
      002400 08               [12] 1152 	inc	r0
      002401 06               [12] 1153 	inc	@r0
      002402                       1154 00470$:
                                   1155 ;	life.c:139: break;
      002402 80 4E            [24] 1156 	sjmp	00154$
      002404                       1157 00149$:
                                   1158 ;	life.c:140: } else if (c == (int)'1') {
      002404 BE 31 38         [24] 1159 	cjne	r6,#0x31,00147$
      002407 BF 00 35         [24] 1160 	cjne	r7,#0x00,00147$
                                   1161 ;	life.c:141: u[A2D(W, y, x)] = 1;
      00240A 78 35            [12] 1162 	mov	r0,#_y
      00240C 86 04            [24] 1163 	mov	ar4,@r0
      00240E 08               [12] 1164 	inc	r0
      00240F E6               [12] 1165 	mov	a,@r0
      002410 C4               [12] 1166 	swap	a
      002411 23               [12] 1167 	rl	a
      002412 54 E0            [12] 1168 	anl	a,#0xe0
      002414 CC               [12] 1169 	xch	a,r4
      002415 C4               [12] 1170 	swap	a
      002416 23               [12] 1171 	rl	a
      002417 CC               [12] 1172 	xch	a,r4
      002418 6C               [12] 1173 	xrl	a,r4
      002419 CC               [12] 1174 	xch	a,r4
      00241A 54 E0            [12] 1175 	anl	a,#0xe0
      00241C CC               [12] 1176 	xch	a,r4
      00241D 6C               [12] 1177 	xrl	a,r4
      00241E FD               [12] 1178 	mov	r5,a
      00241F 78 33            [12] 1179 	mov	r0,#_x
      002421 E6               [12] 1180 	mov	a,@r0
      002422 2C               [12] 1181 	add	a,r4
      002423 FC               [12] 1182 	mov	r4,a
      002424 08               [12] 1183 	inc	r0
      002425 E6               [12] 1184 	mov	a,@r0
      002426 3D               [12] 1185 	addc	a,r5
      002427 FD               [12] 1186 	mov	r5,a
      002428 EC               [12] 1187 	mov	a,r4
      002429 24 00            [12] 1188 	add	a,#_u
      00242B F5 82            [12] 1189 	mov	dpl,a
      00242D ED               [12] 1190 	mov	a,r5
      00242E 34 48            [12] 1191 	addc	a,#(_u >> 8)
      002430 F5 83            [12] 1192 	mov	dph,a
      002432 74 01            [12] 1193 	mov	a,#0x01
      002434 F0               [24] 1194 	movx	@dptr,a
                                   1195 ;	life.c:142: j++;
      002435 78 37            [12] 1196 	mov	r0,#_j
      002437 06               [12] 1197 	inc	@r0
      002438 B6 00 02         [24] 1198 	cjne	@r0,#0x00,00473$
      00243B 08               [12] 1199 	inc	r0
      00243C 06               [12] 1200 	inc	@r0
      00243D                       1201 00473$:
                                   1202 ;	life.c:143: break;
      00243D 80 13            [24] 1203 	sjmp	00154$
      00243F                       1204 00147$:
                                   1205 ;	life.c:144: } else if (c == (int)'S') goto br_inner;
      00243F BE 53 05         [24] 1206 	cjne	r6,#0x53,00474$
      002442 BF 00 02         [24] 1207 	cjne	r7,#0x00,00474$
      002445 80 24            [24] 1208 	sjmp	00220$
      002447                       1209 00474$:
                                   1210 ;	life.c:145: else if (c == (int)'#') goto out;
      002447 BE 23 05         [24] 1211 	cjne	r6,#0x23,00475$
      00244A BF 00 02         [24] 1212 	cjne	r7,#0x00,00475$
      00244D 80 35            [24] 1213 	sjmp	00164$
      00244F                       1214 00475$:
      00244F 02 23 B9         [24] 1215 	ljmp	00151$
                                   1216 ;	life.c:149: break;
      002452                       1217 00154$:
                                   1218 ;	life.c:133: for (x = 0; x < W; x++) {
      002452 78 33            [12] 1219 	mov	r0,#_x
      002454 06               [12] 1220 	inc	@r0
      002455 B6 00 02         [24] 1221 	cjne	@r0,#0x00,00476$
      002458 08               [12] 1222 	inc	r0
      002459 06               [12] 1223 	inc	@r0
      00245A                       1224 00476$:
      00245A 78 33            [12] 1225 	mov	r0,#_x
      00245C C3               [12] 1226 	clr	c
      00245D E6               [12] 1227 	mov	a,@r0
      00245E 94 20            [12] 1228 	subb	a,#0x20
      002460 08               [12] 1229 	inc	r0
      002461 E6               [12] 1230 	mov	a,@r0
      002462 64 80            [12] 1231 	xrl	a,#0x80
      002464 94 80            [12] 1232 	subb	a,#0x80
      002466 50 03            [24] 1233 	jnc	00477$
      002468 02 23 B9         [24] 1234 	ljmp	00151$
      00246B                       1235 00477$:
      00246B                       1236 00220$:
                                   1237 ;	life.c:132: for (y = 0; y < H; y++) {
      00246B 78 35            [12] 1238 	mov	r0,#_y
      00246D 06               [12] 1239 	inc	@r0
      00246E B6 00 02         [24] 1240 	cjne	@r0,#0x00,00478$
      002471 08               [12] 1241 	inc	r0
      002472 06               [12] 1242 	inc	@r0
      002473                       1243 00478$:
      002473 78 35            [12] 1244 	mov	r0,#_y
      002475 C3               [12] 1245 	clr	c
      002476 E6               [12] 1246 	mov	a,@r0
      002477 94 40            [12] 1247 	subb	a,#0x40
      002479 08               [12] 1248 	inc	r0
      00247A E6               [12] 1249 	mov	a,@r0
      00247B 64 80            [12] 1250 	xrl	a,#0x80
      00247D 94 80            [12] 1251 	subb	a,#0x80
      00247F 50 03            [24] 1252 	jnc	00479$
      002481 02 23 B3         [24] 1253 	ljmp	00219$
      002484                       1254 00479$:
                                   1255 ;	life.c:153: out:
      002484                       1256 00164$:
                                   1257 ;	life.c:154: if (c != (int)'#')
      002484 BE 23 05         [24] 1258 	cjne	r6,#0x23,00480$
      002487 BF 00 02         [24] 1259 	cjne	r7,#0x00,00480$
      00248A 80 14            [24] 1260 	sjmp	00163$
      00248C                       1261 00480$:
                                   1262 ;	life.c:155: while (1) {
      00248C                       1263 00160$:
                                   1264 ;	life.c:156: c = getchar();
      00248C 12 20 CF         [24] 1265 	lcall	_getchar
      00248F AE 82            [24] 1266 	mov	r6,dpl
      002491 AF 83            [24] 1267 	mov	r7,dph
      002493 78 39            [12] 1268 	mov	r0,#_c
      002495 A6 06            [24] 1269 	mov	@r0,ar6
      002497 08               [12] 1270 	inc	r0
      002498 A6 07            [24] 1271 	mov	@r0,ar7
                                   1272 ;	life.c:157: if (c == (int)'#') break;
      00249A BE 23 EF         [24] 1273 	cjne	r6,#0x23,00160$
      00249D BF 00 EC         [24] 1274 	cjne	r7,#0x00,00160$
      0024A0                       1275 00163$:
                                   1276 ;	life.c:159: print16x(j);
      0024A0 78 37            [12] 1277 	mov	r0,#_j
      0024A2 86 06            [24] 1278 	mov	ar6,@r0
      0024A4 08               [12] 1279 	inc	r0
      0024A5 86 07            [24] 1280 	mov	ar7,@r0
      0024A7 8E 04            [24] 1281 	mov	ar4,r6
                                   1282 ;	life.c:41: putchar(digits[(a >> 12) & 0xf]);
      0024A9 EF               [12] 1283 	mov	a,r7
      0024AA FD               [12] 1284 	mov	r5,a
      0024AB C4               [12] 1285 	swap	a
      0024AC 54 0F            [12] 1286 	anl	a,#0x0f
      0024AE 30 E3 02         [24] 1287 	jnb	acc.3,00483$
      0024B1 44 F0            [12] 1288 	orl	a,#0xf0
      0024B3                       1289 00483$:
      0024B3 FE               [12] 1290 	mov	r6,a
      0024B4 33               [12] 1291 	rlc	a
      0024B5 95 E0            [12] 1292 	subb	a,acc
      0024B7 53 06 0F         [24] 1293 	anl	ar6,#0x0f
      0024BA EE               [12] 1294 	mov	a,r6
      0024BB 24 21            [12] 1295 	add	a,#_digits
      0024BD F9               [12] 1296 	mov	r1,a
      0024BE 87 07            [24] 1297 	mov	ar7,@r1
      0024C0 7E 00            [12] 1298 	mov	r6,#0x00
      0024C2 8F 82            [24] 1299 	mov	dpl,r7
      0024C4 8E 83            [24] 1300 	mov	dph,r6
      0024C6 12 20 C5         [24] 1301 	lcall	_putchar
                                   1302 ;	life.c:42: putchar(digits[(a >> 8) & 0xf]);
      0024C9 8D 07            [24] 1303 	mov	ar7,r5
      0024CB 53 07 0F         [24] 1304 	anl	ar7,#0x0f
      0024CE EF               [12] 1305 	mov	a,r7
      0024CF 24 21            [12] 1306 	add	a,#_digits
      0024D1 F9               [12] 1307 	mov	r1,a
      0024D2 87 07            [24] 1308 	mov	ar7,@r1
      0024D4 7E 00            [12] 1309 	mov	r6,#0x00
      0024D6 8F 82            [24] 1310 	mov	dpl,r7
      0024D8 8E 83            [24] 1311 	mov	dph,r6
      0024DA 12 20 C5         [24] 1312 	lcall	_putchar
                                   1313 ;	life.c:43: putchar(digits[(a >> 4) & 0xf]);
      0024DD 8C 06            [24] 1314 	mov	ar6,r4
      0024DF ED               [12] 1315 	mov	a,r5
      0024E0 C4               [12] 1316 	swap	a
      0024E1 CE               [12] 1317 	xch	a,r6
      0024E2 C4               [12] 1318 	swap	a
      0024E3 54 0F            [12] 1319 	anl	a,#0x0f
      0024E5 6E               [12] 1320 	xrl	a,r6
      0024E6 CE               [12] 1321 	xch	a,r6
      0024E7 54 0F            [12] 1322 	anl	a,#0x0f
      0024E9 CE               [12] 1323 	xch	a,r6
      0024EA 6E               [12] 1324 	xrl	a,r6
      0024EB CE               [12] 1325 	xch	a,r6
      0024EC 30 E3 02         [24] 1326 	jnb	acc.3,00484$
      0024EF 44 F0            [12] 1327 	orl	a,#0xf0
      0024F1                       1328 00484$:
      0024F1 53 06 0F         [24] 1329 	anl	ar6,#0x0f
      0024F4 EE               [12] 1330 	mov	a,r6
      0024F5 24 21            [12] 1331 	add	a,#_digits
      0024F7 F9               [12] 1332 	mov	r1,a
      0024F8 87 07            [24] 1333 	mov	ar7,@r1
      0024FA 7E 00            [12] 1334 	mov	r6,#0x00
      0024FC 8F 82            [24] 1335 	mov	dpl,r7
      0024FE 8E 83            [24] 1336 	mov	dph,r6
      002500 12 20 C5         [24] 1337 	lcall	_putchar
                                   1338 ;	life.c:44: putchar(digits[a & 0xf]);
      002503 53 04 0F         [24] 1339 	anl	ar4,#0x0f
      002506 EC               [12] 1340 	mov	a,r4
      002507 24 21            [12] 1341 	add	a,#_digits
      002509 F9               [12] 1342 	mov	r1,a
      00250A 87 07            [24] 1343 	mov	ar7,@r1
      00250C 7E 00            [12] 1344 	mov	r6,#0x00
      00250E 8F 82            [24] 1345 	mov	dpl,r7
      002510 8E 83            [24] 1346 	mov	dph,r6
      002512 12 20 C5         [24] 1347 	lcall	_putchar
                                   1348 ;	life.c:160: printstr(">\r\n");
      002515 7D 24            [12] 1349 	mov	r5,#___str_3
      002517 7E 2D            [12] 1350 	mov	r6,#(___str_3 >> 8)
      002519 7F 80            [12] 1351 	mov	r7,#0x80
                                   1352 ;	life.c:52: return;
      00251B                       1353 00222$:
                                   1354 ;	life.c:50: for (; *s; s++) putchar(*s);
      00251B 8D 82            [24] 1355 	mov	dpl,r5
      00251D 8E 83            [24] 1356 	mov	dph,r6
      00251F 8F F0            [24] 1357 	mov	b,r7
      002521 12 2B E6         [24] 1358 	lcall	__gptrget
      002524 FC               [12] 1359 	mov	r4,a
      002525 60 10            [24] 1360 	jz	00167$
      002527 7B 00            [12] 1361 	mov	r3,#0x00
      002529 8C 82            [24] 1362 	mov	dpl,r4
      00252B 8B 83            [24] 1363 	mov	dph,r3
      00252D 12 20 C5         [24] 1364 	lcall	_putchar
      002530 0D               [12] 1365 	inc	r5
                                   1366 ;	life.c:160: printstr(">\r\n");
      002531 BD 00 E7         [24] 1367 	cjne	r5,#0x00,00222$
      002534 0E               [12] 1368 	inc	r6
      002535 80 E4            [24] 1369 	sjmp	00222$
      002537                       1370 00167$:
                                   1371 ;	life.c:227: show(0);
      002537 75 82 00         [24] 1372 	mov	dpl,#0x00
      00253A 12 20 F4         [24] 1373 	lcall	_show
                                   1374 ;	life.c:229: printstr("READY\r\n");
      00253D 7D 3B            [12] 1375 	mov	r5,#___str_5
      00253F 7E 2D            [12] 1376 	mov	r6,#(___str_5 >> 8)
      002541 7F 80            [12] 1377 	mov	r7,#0x80
                                   1378 ;	life.c:52: return;
      002543                       1379 00225$:
                                   1380 ;	life.c:50: for (; *s; s++) putchar(*s);
      002543 8D 82            [24] 1381 	mov	dpl,r5
      002545 8E 83            [24] 1382 	mov	dph,r6
      002547 8F F0            [24] 1383 	mov	b,r7
      002549 12 2B E6         [24] 1384 	lcall	__gptrget
      00254C FC               [12] 1385 	mov	r4,a
      00254D 60 10            [24] 1386 	jz	00121$
      00254F 7B 00            [12] 1387 	mov	r3,#0x00
      002551 8C 82            [24] 1388 	mov	dpl,r4
      002553 8B 83            [24] 1389 	mov	dph,r3
      002555 12 20 C5         [24] 1390 	lcall	_putchar
      002558 0D               [12] 1391 	inc	r5
                                   1392 ;	life.c:230: while (1) {
      002559 BD 00 E7         [24] 1393 	cjne	r5,#0x00,00225$
      00255C 0E               [12] 1394 	inc	r6
      00255D 80 E4            [24] 1395 	sjmp	00225$
      00255F                       1396 00121$:
                                   1397 ;	life.c:231: c = toupper(getchar());
      00255F 12 20 CF         [24] 1398 	lcall	_getchar
      002562 12 2B BF         [24] 1399 	lcall	_toupper
      002565 AE 82            [24] 1400 	mov	r6,dpl
      002567 AF 83            [24] 1401 	mov	r7,dph
      002569 78 39            [12] 1402 	mov	r0,#_c
      00256B A6 06            [24] 1403 	mov	@r0,ar6
      00256D 08               [12] 1404 	inc	r0
      00256E A6 07            [24] 1405 	mov	@r0,ar7
                                   1406 ;	life.c:232: if (i0 || (c == (int)'T')) goto terminate;
      002570 78 31            [12] 1407 	mov	r0,#_i0
      002572 E6               [12] 1408 	mov	a,@r0
      002573 60 03            [24] 1409 	jz	00489$
      002575 02 2A 92         [24] 1410 	ljmp	00133$
      002578                       1411 00489$:
      002578 BE 54 06         [24] 1412 	cjne	r6,#0x54,00490$
      00257B BF 00 03         [24] 1413 	cjne	r7,#0x00,00490$
      00257E 02 2A 92         [24] 1414 	ljmp	00133$
      002581                       1415 00490$:
                                   1416 ;	life.c:233: else if (c == (int)'L') goto reload;
      002581 BE 4C 06         [24] 1417 	cjne	r6,#0x4c,00491$
      002584 BF 00 03         [24] 1418 	cjne	r7,#0x00,00491$
      002587 02 23 53         [24] 1419 	ljmp	00110$
      00258A                       1420 00491$:
                                   1421 ;	life.c:234: else if (c == (int)'S') break;
      00258A BE 53 D2         [24] 1422 	cjne	r6,#0x53,00121$
      00258D BF 00 CF         [24] 1423 	cjne	r7,#0x00,00121$
                                   1424 ;	life.c:79: generation[0] = 0;
      002590 78 43            [12] 1425 	mov	r0,#_generation
      002592 76 00            [12] 1426 	mov	@r0,#0x00
      002594 08               [12] 1427 	inc	r0
      002595 76 00            [12] 1428 	mov	@r0,#0x00
                                   1429 ;	life.c:80: generation[1] = 0;
      002597 78 45            [12] 1430 	mov	r0,#(_generation + 0x0002)
      002599 76 00            [12] 1431 	mov	@r0,#0x00
      00259B 08               [12] 1432 	inc	r0
      00259C 76 00            [12] 1433 	mov	@r0,#0x00
                                   1434 ;	life.c:239: for (i1 = 0; !i0 && !i1; ) {
      00259E 78 32            [12] 1435 	mov	r0,#_i1
      0025A0 76 00            [12] 1436 	mov	@r0,#0x00
      0025A2                       1437 00242$:
      0025A2 78 31            [12] 1438 	mov	r0,#_i0
      0025A4 E6               [12] 1439 	mov	a,@r0
      0025A5 60 03            [24] 1440 	jz	00494$
      0025A7 02 2A 60         [24] 1441 	ljmp	00129$
      0025AA                       1442 00494$:
      0025AA 78 32            [12] 1443 	mov	r0,#_i1
      0025AC E6               [12] 1444 	mov	a,@r0
      0025AD 60 03            [24] 1445 	jz	00495$
      0025AF 02 2A 60         [24] 1446 	ljmp	00129$
      0025B2                       1447 00495$:
                                   1448 ;	life.c:240: show(1);
      0025B2 75 82 01         [24] 1449 	mov	dpl,#0x01
      0025B5 12 20 F4         [24] 1450 	lcall	_show
                                   1451 ;	life.c:168: fixed = 0;
      0025B8 78 3D            [12] 1452 	mov	r0,#_fixed
      0025BA 76 00            [12] 1453 	mov	@r0,#0x00
                                   1454 ;	life.c:169: cycle2 = 0;
      0025BC 78 3E            [12] 1455 	mov	r0,#_cycle2
      0025BE 76 00            [12] 1456 	mov	@r0,#0x00
                                   1457 ;	life.c:170: bstep = 0;
      0025C0 78 3B            [12] 1458 	mov	r0,#_bstep
      0025C2 76 00            [12] 1459 	mov	@r0,#0x00
                                   1460 ;	life.c:172: for (y = 0; y < H; y++) {
      0025C4 78 35            [12] 1461 	mov	r0,#_y
      0025C6 E4               [12] 1462 	clr	a
      0025C7 F6               [12] 1463 	mov	@r0,a
      0025C8 08               [12] 1464 	inc	r0
      0025C9 F6               [12] 1465 	mov	@r0,a
      0025CA                       1466 00229$:
                                   1467 ;	life.c:173: putchar(busy[bstep]); putchar('\r');
      0025CA 78 3B            [12] 1468 	mov	r0,#_bstep
      0025CC E6               [12] 1469 	mov	a,@r0
      0025CD 24 47            [12] 1470 	add	a,#_busy
      0025CF F9               [12] 1471 	mov	r1,a
      0025D0 87 07            [24] 1472 	mov	ar7,@r1
      0025D2 7E 00            [12] 1473 	mov	r6,#0x00
      0025D4 8F 82            [24] 1474 	mov	dpl,r7
      0025D6 8E 83            [24] 1475 	mov	dph,r6
      0025D8 12 20 C5         [24] 1476 	lcall	_putchar
      0025DB 90 00 0D         [24] 1477 	mov	dptr,#0x000d
      0025DE 12 20 C5         [24] 1478 	lcall	_putchar
                                   1479 ;	life.c:174: bstep = (bstep + 1) & 3;
      0025E1 78 3B            [12] 1480 	mov	r0,#_bstep
      0025E3 86 07            [24] 1481 	mov	ar7,@r0
      0025E5 0F               [12] 1482 	inc	r7
      0025E6 78 3B            [12] 1483 	mov	r0,#_bstep
      0025E8 74 03            [12] 1484 	mov	a,#0x03
      0025EA 5F               [12] 1485 	anl	a,r7
      0025EB F6               [12] 1486 	mov	@r0,a
                                   1487 ;	life.c:175: for (x = 0; x < W; x++) {
      0025EC 78 33            [12] 1488 	mov	r0,#_x
      0025EE E4               [12] 1489 	clr	a
      0025EF F6               [12] 1490 	mov	@r0,a
      0025F0 08               [12] 1491 	inc	r0
      0025F1 F6               [12] 1492 	mov	@r0,a
      0025F2                       1493 00227$:
                                   1494 ;	life.c:176: n = -u[A2D(W, y, x)];
      0025F2 78 35            [12] 1495 	mov	r0,#_y
      0025F4 E5 10            [12] 1496 	mov	a,_bp
      0025F6 24 03            [12] 1497 	add	a,#0x03
      0025F8 F9               [12] 1498 	mov	r1,a
      0025F9 E6               [12] 1499 	mov	a,@r0
      0025FA F7               [12] 1500 	mov	@r1,a
      0025FB 08               [12] 1501 	inc	r0
      0025FC E6               [12] 1502 	mov	a,@r0
      0025FD C4               [12] 1503 	swap	a
      0025FE 23               [12] 1504 	rl	a
      0025FF 54 E0            [12] 1505 	anl	a,#0xe0
      002601 C7               [12] 1506 	xch	a,@r1
      002602 C4               [12] 1507 	swap	a
      002603 23               [12] 1508 	rl	a
      002604 C7               [12] 1509 	xch	a,@r1
      002605 67               [12] 1510 	xrl	a,@r1
      002606 C7               [12] 1511 	xch	a,@r1
      002607 54 E0            [12] 1512 	anl	a,#0xe0
      002609 C7               [12] 1513 	xch	a,@r1
      00260A 67               [12] 1514 	xrl	a,@r1
      00260B 09               [12] 1515 	inc	r1
      00260C F7               [12] 1516 	mov	@r1,a
      00260D E5 10            [12] 1517 	mov	a,_bp
      00260F 24 03            [12] 1518 	add	a,#0x03
      002611 F8               [12] 1519 	mov	r0,a
      002612 79 33            [12] 1520 	mov	r1,#_x
      002614 E7               [12] 1521 	mov	a,@r1
      002615 26               [12] 1522 	add	a,@r0
      002616 C0 E0            [24] 1523 	push	acc
      002618 09               [12] 1524 	inc	r1
      002619 E7               [12] 1525 	mov	a,@r1
      00261A 08               [12] 1526 	inc	r0
      00261B 36               [12] 1527 	addc	a,@r0
      00261C C0 E0            [24] 1528 	push	acc
      00261E A8 10            [24] 1529 	mov	r0,_bp
      002620 08               [12] 1530 	inc	r0
      002621 08               [12] 1531 	inc	r0
      002622 D0 E0            [24] 1532 	pop	acc
      002624 F6               [12] 1533 	mov	@r0,a
      002625 18               [12] 1534 	dec	r0
      002626 D0 E0            [24] 1535 	pop	acc
      002628 F6               [12] 1536 	mov	@r0,a
      002629 A8 10            [24] 1537 	mov	r0,_bp
      00262B 08               [12] 1538 	inc	r0
      00262C E6               [12] 1539 	mov	a,@r0
      00262D 24 00            [12] 1540 	add	a,#_u
      00262F F5 82            [12] 1541 	mov	dpl,a
      002631 08               [12] 1542 	inc	r0
      002632 E6               [12] 1543 	mov	a,@r0
      002633 34 48            [12] 1544 	addc	a,#(_u >> 8)
      002635 F5 83            [12] 1545 	mov	dph,a
      002637 E0               [24] 1546 	movx	a,@dptr
      002638 FB               [12] 1547 	mov	r3,a
      002639 C3               [12] 1548 	clr	c
      00263A E4               [12] 1549 	clr	a
      00263B 9B               [12] 1550 	subb	a,r3
      00263C FB               [12] 1551 	mov	r3,a
                                   1552 ;	life.c:183: UPDN(-1, -1);
      00263D 78 35            [12] 1553 	mov	r0,#_y
      00263F 74 FF            [12] 1554 	mov	a,#0xff
      002641 26               [12] 1555 	add	a,@r0
      002642 FA               [12] 1556 	mov	r2,a
      002643 74 FF            [12] 1557 	mov	a,#0xff
      002645 08               [12] 1558 	inc	r0
      002646 36               [12] 1559 	addc	a,@r0
      002647 FD               [12] 1560 	mov	r5,a
      002648 74 40            [12] 1561 	mov	a,#0x40
      00264A 2A               [12] 1562 	add	a,r2
      00264B FA               [12] 1563 	mov	r2,a
      00264C E4               [12] 1564 	clr	a
      00264D 3D               [12] 1565 	addc	a,r5
      00264E FD               [12] 1566 	mov	r5,a
      00264F C0 03            [24] 1567 	push	ar3
      002651 74 40            [12] 1568 	mov	a,#0x40
      002653 C0 E0            [24] 1569 	push	acc
      002655 E4               [12] 1570 	clr	a
      002656 C0 E0            [24] 1571 	push	acc
      002658 8A 82            [24] 1572 	mov	dpl,r2
      00265A 8D 83            [24] 1573 	mov	dph,r5
      00265C 12 2C 02         [24] 1574 	lcall	__modsint
      00265F AC 82            [24] 1575 	mov	r4,dpl
      002661 AD 83            [24] 1576 	mov	r5,dph
      002663 15 81            [12] 1577 	dec	sp
      002665 15 81            [12] 1578 	dec	sp
      002667 D0 03            [24] 1579 	pop	ar3
      002669 ED               [12] 1580 	mov	a,r5
      00266A C4               [12] 1581 	swap	a
      00266B 23               [12] 1582 	rl	a
      00266C 54 E0            [12] 1583 	anl	a,#0xe0
      00266E CC               [12] 1584 	xch	a,r4
      00266F C4               [12] 1585 	swap	a
      002670 23               [12] 1586 	rl	a
      002671 CC               [12] 1587 	xch	a,r4
      002672 6C               [12] 1588 	xrl	a,r4
      002673 CC               [12] 1589 	xch	a,r4
      002674 54 E0            [12] 1590 	anl	a,#0xe0
      002676 CC               [12] 1591 	xch	a,r4
      002677 6C               [12] 1592 	xrl	a,r4
      002678 FD               [12] 1593 	mov	r5,a
      002679 78 33            [12] 1594 	mov	r0,#_x
      00267B 74 FF            [12] 1595 	mov	a,#0xff
      00267D 26               [12] 1596 	add	a,@r0
      00267E FA               [12] 1597 	mov	r2,a
      00267F 74 FF            [12] 1598 	mov	a,#0xff
      002681 08               [12] 1599 	inc	r0
      002682 36               [12] 1600 	addc	a,@r0
      002683 FF               [12] 1601 	mov	r7,a
      002684 74 20            [12] 1602 	mov	a,#0x20
      002686 2A               [12] 1603 	add	a,r2
      002687 FA               [12] 1604 	mov	r2,a
      002688 E4               [12] 1605 	clr	a
      002689 3F               [12] 1606 	addc	a,r7
      00268A FF               [12] 1607 	mov	r7,a
      00268B C0 05            [24] 1608 	push	ar5
      00268D C0 04            [24] 1609 	push	ar4
      00268F C0 03            [24] 1610 	push	ar3
      002691 74 20            [12] 1611 	mov	a,#0x20
      002693 C0 E0            [24] 1612 	push	acc
      002695 E4               [12] 1613 	clr	a
      002696 C0 E0            [24] 1614 	push	acc
      002698 8A 82            [24] 1615 	mov	dpl,r2
      00269A 8F 83            [24] 1616 	mov	dph,r7
      00269C 12 2C 02         [24] 1617 	lcall	__modsint
      00269F C8               [12] 1618 	xch	a,r0
      0026A0 E5 10            [12] 1619 	mov	a,_bp
      0026A2 24 05            [12] 1620 	add	a,#0x05
      0026A4 C8               [12] 1621 	xch	a,r0
      0026A5 A6 82            [24] 1622 	mov	@r0,dpl
      0026A7 08               [12] 1623 	inc	r0
      0026A8 A6 83            [24] 1624 	mov	@r0,dph
      0026AA 15 81            [12] 1625 	dec	sp
      0026AC 15 81            [12] 1626 	dec	sp
      0026AE D0 03            [24] 1627 	pop	ar3
      0026B0 D0 04            [24] 1628 	pop	ar4
      0026B2 D0 05            [24] 1629 	pop	ar5
      0026B4 E5 10            [12] 1630 	mov	a,_bp
      0026B6 24 05            [12] 1631 	add	a,#0x05
      0026B8 F8               [12] 1632 	mov	r0,a
      0026B9 E6               [12] 1633 	mov	a,@r0
      0026BA 2C               [12] 1634 	add	a,r4
      0026BB FA               [12] 1635 	mov	r2,a
      0026BC 08               [12] 1636 	inc	r0
      0026BD E6               [12] 1637 	mov	a,@r0
      0026BE 3D               [12] 1638 	addc	a,r5
      0026BF FF               [12] 1639 	mov	r7,a
      0026C0 EA               [12] 1640 	mov	a,r2
      0026C1 24 00            [12] 1641 	add	a,#_u
      0026C3 F5 82            [12] 1642 	mov	dpl,a
      0026C5 EF               [12] 1643 	mov	a,r7
      0026C6 34 48            [12] 1644 	addc	a,#(_u >> 8)
      0026C8 F5 83            [12] 1645 	mov	dph,a
      0026CA E0               [24] 1646 	movx	a,@dptr
      0026CB 2B               [12] 1647 	add	a,r3
      0026CC FB               [12] 1648 	mov	r3,a
                                   1649 ;	life.c:184: UPDN(-1, 0);
      0026CD 78 33            [12] 1650 	mov	r0,#_x
      0026CF E5 10            [12] 1651 	mov	a,_bp
      0026D1 24 07            [12] 1652 	add	a,#0x07
      0026D3 F9               [12] 1653 	mov	r1,a
      0026D4 E6               [12] 1654 	mov	a,@r0
      0026D5 F7               [12] 1655 	mov	@r1,a
      0026D6 08               [12] 1656 	inc	r0
      0026D7 09               [12] 1657 	inc	r1
      0026D8 E6               [12] 1658 	mov	a,@r0
      0026D9 F7               [12] 1659 	mov	@r1,a
      0026DA E5 10            [12] 1660 	mov	a,_bp
      0026DC 24 07            [12] 1661 	add	a,#0x07
      0026DE F8               [12] 1662 	mov	r0,a
      0026DF 74 20            [12] 1663 	mov	a,#0x20
      0026E1 26               [12] 1664 	add	a,@r0
      0026E2 FA               [12] 1665 	mov	r2,a
      0026E3 E4               [12] 1666 	clr	a
      0026E4 08               [12] 1667 	inc	r0
      0026E5 36               [12] 1668 	addc	a,@r0
      0026E6 FF               [12] 1669 	mov	r7,a
      0026E7 C0 05            [24] 1670 	push	ar5
      0026E9 C0 04            [24] 1671 	push	ar4
      0026EB C0 03            [24] 1672 	push	ar3
      0026ED 74 20            [12] 1673 	mov	a,#0x20
      0026EF C0 E0            [24] 1674 	push	acc
      0026F1 E4               [12] 1675 	clr	a
      0026F2 C0 E0            [24] 1676 	push	acc
      0026F4 8A 82            [24] 1677 	mov	dpl,r2
      0026F6 8F 83            [24] 1678 	mov	dph,r7
      0026F8 12 2C 02         [24] 1679 	lcall	__modsint
      0026FB C8               [12] 1680 	xch	a,r0
      0026FC E5 10            [12] 1681 	mov	a,_bp
      0026FE 24 09            [12] 1682 	add	a,#0x09
      002700 C8               [12] 1683 	xch	a,r0
      002701 A6 82            [24] 1684 	mov	@r0,dpl
      002703 08               [12] 1685 	inc	r0
      002704 A6 83            [24] 1686 	mov	@r0,dph
      002706 15 81            [12] 1687 	dec	sp
      002708 15 81            [12] 1688 	dec	sp
      00270A D0 03            [24] 1689 	pop	ar3
      00270C D0 04            [24] 1690 	pop	ar4
      00270E D0 05            [24] 1691 	pop	ar5
      002710 E5 10            [12] 1692 	mov	a,_bp
      002712 24 09            [12] 1693 	add	a,#0x09
      002714 F8               [12] 1694 	mov	r0,a
      002715 E6               [12] 1695 	mov	a,@r0
      002716 2C               [12] 1696 	add	a,r4
      002717 FA               [12] 1697 	mov	r2,a
      002718 08               [12] 1698 	inc	r0
      002719 E6               [12] 1699 	mov	a,@r0
      00271A 3D               [12] 1700 	addc	a,r5
      00271B FF               [12] 1701 	mov	r7,a
      00271C EA               [12] 1702 	mov	a,r2
      00271D 24 00            [12] 1703 	add	a,#_u
      00271F F5 82            [12] 1704 	mov	dpl,a
      002721 EF               [12] 1705 	mov	a,r7
      002722 34 48            [12] 1706 	addc	a,#(_u >> 8)
      002724 F5 83            [12] 1707 	mov	dph,a
      002726 E0               [24] 1708 	movx	a,@dptr
      002727 2B               [12] 1709 	add	a,r3
      002728 FB               [12] 1710 	mov	r3,a
                                   1711 ;	life.c:185: UPDN(-1, 1);
      002729 E5 10            [12] 1712 	mov	a,_bp
      00272B 24 07            [12] 1713 	add	a,#0x07
      00272D F8               [12] 1714 	mov	r0,a
      00272E 74 21            [12] 1715 	mov	a,#0x21
      002730 26               [12] 1716 	add	a,@r0
      002731 FE               [12] 1717 	mov	r6,a
      002732 E4               [12] 1718 	clr	a
      002733 08               [12] 1719 	inc	r0
      002734 36               [12] 1720 	addc	a,@r0
      002735 FF               [12] 1721 	mov	r7,a
      002736 C0 05            [24] 1722 	push	ar5
      002738 C0 04            [24] 1723 	push	ar4
      00273A C0 03            [24] 1724 	push	ar3
      00273C 74 20            [12] 1725 	mov	a,#0x20
      00273E C0 E0            [24] 1726 	push	acc
      002740 E4               [12] 1727 	clr	a
      002741 C0 E0            [24] 1728 	push	acc
      002743 8E 82            [24] 1729 	mov	dpl,r6
      002745 8F 83            [24] 1730 	mov	dph,r7
      002747 12 2C 02         [24] 1731 	lcall	__modsint
      00274A AE 82            [24] 1732 	mov	r6,dpl
      00274C AF 83            [24] 1733 	mov	r7,dph
      00274E 15 81            [12] 1734 	dec	sp
      002750 15 81            [12] 1735 	dec	sp
      002752 D0 03            [24] 1736 	pop	ar3
      002754 D0 04            [24] 1737 	pop	ar4
      002756 D0 05            [24] 1738 	pop	ar5
      002758 EE               [12] 1739 	mov	a,r6
      002759 2C               [12] 1740 	add	a,r4
      00275A FC               [12] 1741 	mov	r4,a
      00275B EF               [12] 1742 	mov	a,r7
      00275C 3D               [12] 1743 	addc	a,r5
      00275D FD               [12] 1744 	mov	r5,a
      00275E EC               [12] 1745 	mov	a,r4
      00275F 24 00            [12] 1746 	add	a,#_u
      002761 F5 82            [12] 1747 	mov	dpl,a
      002763 ED               [12] 1748 	mov	a,r5
      002764 34 48            [12] 1749 	addc	a,#(_u >> 8)
      002766 F5 83            [12] 1750 	mov	dph,a
      002768 E0               [24] 1751 	movx	a,@dptr
      002769 2B               [12] 1752 	add	a,r3
      00276A FB               [12] 1753 	mov	r3,a
                                   1754 ;	life.c:186: UPDN(0, -1);
      00276B 78 35            [12] 1755 	mov	r0,#_y
      00276D E5 10            [12] 1756 	mov	a,_bp
      00276F 24 0B            [12] 1757 	add	a,#0x0b
      002771 F9               [12] 1758 	mov	r1,a
      002772 E6               [12] 1759 	mov	a,@r0
      002773 F7               [12] 1760 	mov	@r1,a
      002774 08               [12] 1761 	inc	r0
      002775 09               [12] 1762 	inc	r1
      002776 E6               [12] 1763 	mov	a,@r0
      002777 F7               [12] 1764 	mov	@r1,a
      002778 E5 10            [12] 1765 	mov	a,_bp
      00277A 24 0B            [12] 1766 	add	a,#0x0b
      00277C F8               [12] 1767 	mov	r0,a
      00277D 74 40            [12] 1768 	mov	a,#0x40
      00277F 26               [12] 1769 	add	a,@r0
      002780 FA               [12] 1770 	mov	r2,a
      002781 E4               [12] 1771 	clr	a
      002782 08               [12] 1772 	inc	r0
      002783 36               [12] 1773 	addc	a,@r0
      002784 FD               [12] 1774 	mov	r5,a
      002785 C0 07            [24] 1775 	push	ar7
      002787 C0 06            [24] 1776 	push	ar6
      002789 C0 03            [24] 1777 	push	ar3
      00278B 74 40            [12] 1778 	mov	a,#0x40
      00278D C0 E0            [24] 1779 	push	acc
      00278F E4               [12] 1780 	clr	a
      002790 C0 E0            [24] 1781 	push	acc
      002792 8A 82            [24] 1782 	mov	dpl,r2
      002794 8D 83            [24] 1783 	mov	dph,r5
      002796 12 2C 02         [24] 1784 	lcall	__modsint
      002799 AC 82            [24] 1785 	mov	r4,dpl
      00279B AD 83            [24] 1786 	mov	r5,dph
      00279D 15 81            [12] 1787 	dec	sp
      00279F 15 81            [12] 1788 	dec	sp
      0027A1 D0 03            [24] 1789 	pop	ar3
      0027A3 D0 06            [24] 1790 	pop	ar6
      0027A5 D0 07            [24] 1791 	pop	ar7
      0027A7 E5 10            [12] 1792 	mov	a,_bp
      0027A9 24 0D            [12] 1793 	add	a,#0x0d
      0027AB F8               [12] 1794 	mov	r0,a
      0027AC A6 04            [24] 1795 	mov	@r0,ar4
      0027AE ED               [12] 1796 	mov	a,r5
      0027AF C4               [12] 1797 	swap	a
      0027B0 23               [12] 1798 	rl	a
      0027B1 54 E0            [12] 1799 	anl	a,#0xe0
      0027B3 C6               [12] 1800 	xch	a,@r0
      0027B4 C4               [12] 1801 	swap	a
      0027B5 23               [12] 1802 	rl	a
      0027B6 C6               [12] 1803 	xch	a,@r0
      0027B7 66               [12] 1804 	xrl	a,@r0
      0027B8 C6               [12] 1805 	xch	a,@r0
      0027B9 54 E0            [12] 1806 	anl	a,#0xe0
      0027BB C6               [12] 1807 	xch	a,@r0
      0027BC 66               [12] 1808 	xrl	a,@r0
      0027BD 08               [12] 1809 	inc	r0
      0027BE F6               [12] 1810 	mov	@r0,a
      0027BF E5 10            [12] 1811 	mov	a,_bp
      0027C1 24 0D            [12] 1812 	add	a,#0x0d
      0027C3 F8               [12] 1813 	mov	r0,a
      0027C4 E5 10            [12] 1814 	mov	a,_bp
      0027C6 24 05            [12] 1815 	add	a,#0x05
      0027C8 F9               [12] 1816 	mov	r1,a
      0027C9 E7               [12] 1817 	mov	a,@r1
      0027CA 26               [12] 1818 	add	a,@r0
      0027CB FA               [12] 1819 	mov	r2,a
      0027CC 09               [12] 1820 	inc	r1
      0027CD E7               [12] 1821 	mov	a,@r1
      0027CE 08               [12] 1822 	inc	r0
      0027CF 36               [12] 1823 	addc	a,@r0
      0027D0 FD               [12] 1824 	mov	r5,a
      0027D1 EA               [12] 1825 	mov	a,r2
      0027D2 24 00            [12] 1826 	add	a,#_u
      0027D4 F5 82            [12] 1827 	mov	dpl,a
      0027D6 ED               [12] 1828 	mov	a,r5
      0027D7 34 48            [12] 1829 	addc	a,#(_u >> 8)
      0027D9 F5 83            [12] 1830 	mov	dph,a
      0027DB E0               [24] 1831 	movx	a,@dptr
      0027DC 2B               [12] 1832 	add	a,r3
      0027DD FB               [12] 1833 	mov	r3,a
                                   1834 ;	life.c:187: UPDN(0, 0);
      0027DE E5 10            [12] 1835 	mov	a,_bp
      0027E0 24 0D            [12] 1836 	add	a,#0x0d
      0027E2 F8               [12] 1837 	mov	r0,a
      0027E3 E5 10            [12] 1838 	mov	a,_bp
      0027E5 24 09            [12] 1839 	add	a,#0x09
      0027E7 F9               [12] 1840 	mov	r1,a
      0027E8 E7               [12] 1841 	mov	a,@r1
      0027E9 26               [12] 1842 	add	a,@r0
      0027EA FC               [12] 1843 	mov	r4,a
      0027EB 09               [12] 1844 	inc	r1
      0027EC E7               [12] 1845 	mov	a,@r1
      0027ED 08               [12] 1846 	inc	r0
      0027EE 36               [12] 1847 	addc	a,@r0
      0027EF FD               [12] 1848 	mov	r5,a
      0027F0 EC               [12] 1849 	mov	a,r4
      0027F1 24 00            [12] 1850 	add	a,#_u
      0027F3 F5 82            [12] 1851 	mov	dpl,a
      0027F5 ED               [12] 1852 	mov	a,r5
      0027F6 34 48            [12] 1853 	addc	a,#(_u >> 8)
      0027F8 F5 83            [12] 1854 	mov	dph,a
      0027FA E0               [24] 1855 	movx	a,@dptr
      0027FB 2B               [12] 1856 	add	a,r3
      0027FC FB               [12] 1857 	mov	r3,a
                                   1858 ;	life.c:188: UPDN(0, 1);
      0027FD E5 10            [12] 1859 	mov	a,_bp
      0027FF 24 0D            [12] 1860 	add	a,#0x0d
      002801 F8               [12] 1861 	mov	r0,a
      002802 EE               [12] 1862 	mov	a,r6
      002803 26               [12] 1863 	add	a,@r0
      002804 FC               [12] 1864 	mov	r4,a
      002805 EF               [12] 1865 	mov	a,r7
      002806 08               [12] 1866 	inc	r0
      002807 36               [12] 1867 	addc	a,@r0
      002808 FD               [12] 1868 	mov	r5,a
      002809 EC               [12] 1869 	mov	a,r4
      00280A 24 00            [12] 1870 	add	a,#_u
      00280C F5 82            [12] 1871 	mov	dpl,a
      00280E ED               [12] 1872 	mov	a,r5
      00280F 34 48            [12] 1873 	addc	a,#(_u >> 8)
      002811 F5 83            [12] 1874 	mov	dph,a
      002813 E0               [24] 1875 	movx	a,@dptr
      002814 2B               [12] 1876 	add	a,r3
      002815 FB               [12] 1877 	mov	r3,a
                                   1878 ;	life.c:189: UPDN(1, -1);
      002816 E5 10            [12] 1879 	mov	a,_bp
      002818 24 0B            [12] 1880 	add	a,#0x0b
      00281A F8               [12] 1881 	mov	r0,a
      00281B 74 41            [12] 1882 	mov	a,#0x41
      00281D 26               [12] 1883 	add	a,@r0
      00281E FC               [12] 1884 	mov	r4,a
      00281F E4               [12] 1885 	clr	a
      002820 08               [12] 1886 	inc	r0
      002821 36               [12] 1887 	addc	a,@r0
      002822 FD               [12] 1888 	mov	r5,a
      002823 C0 07            [24] 1889 	push	ar7
      002825 C0 06            [24] 1890 	push	ar6
      002827 C0 03            [24] 1891 	push	ar3
      002829 74 40            [12] 1892 	mov	a,#0x40
      00282B C0 E0            [24] 1893 	push	acc
      00282D E4               [12] 1894 	clr	a
      00282E C0 E0            [24] 1895 	push	acc
      002830 8C 82            [24] 1896 	mov	dpl,r4
      002832 8D 83            [24] 1897 	mov	dph,r5
      002834 12 2C 02         [24] 1898 	lcall	__modsint
      002837 AC 82            [24] 1899 	mov	r4,dpl
      002839 AD 83            [24] 1900 	mov	r5,dph
      00283B 15 81            [12] 1901 	dec	sp
      00283D 15 81            [12] 1902 	dec	sp
      00283F D0 03            [24] 1903 	pop	ar3
      002841 D0 06            [24] 1904 	pop	ar6
      002843 D0 07            [24] 1905 	pop	ar7
      002845 E5 10            [12] 1906 	mov	a,_bp
      002847 24 0D            [12] 1907 	add	a,#0x0d
      002849 F8               [12] 1908 	mov	r0,a
      00284A A6 04            [24] 1909 	mov	@r0,ar4
      00284C ED               [12] 1910 	mov	a,r5
      00284D C4               [12] 1911 	swap	a
      00284E 23               [12] 1912 	rl	a
      00284F 54 E0            [12] 1913 	anl	a,#0xe0
      002851 C6               [12] 1914 	xch	a,@r0
      002852 C4               [12] 1915 	swap	a
      002853 23               [12] 1916 	rl	a
      002854 C6               [12] 1917 	xch	a,@r0
      002855 66               [12] 1918 	xrl	a,@r0
      002856 C6               [12] 1919 	xch	a,@r0
      002857 54 E0            [12] 1920 	anl	a,#0xe0
      002859 C6               [12] 1921 	xch	a,@r0
      00285A 66               [12] 1922 	xrl	a,@r0
      00285B 08               [12] 1923 	inc	r0
      00285C F6               [12] 1924 	mov	@r0,a
      00285D E5 10            [12] 1925 	mov	a,_bp
      00285F 24 0D            [12] 1926 	add	a,#0x0d
      002861 F8               [12] 1927 	mov	r0,a
      002862 E5 10            [12] 1928 	mov	a,_bp
      002864 24 05            [12] 1929 	add	a,#0x05
      002866 F9               [12] 1930 	mov	r1,a
      002867 E7               [12] 1931 	mov	a,@r1
      002868 26               [12] 1932 	add	a,@r0
      002869 FA               [12] 1933 	mov	r2,a
      00286A 09               [12] 1934 	inc	r1
      00286B E7               [12] 1935 	mov	a,@r1
      00286C 08               [12] 1936 	inc	r0
      00286D 36               [12] 1937 	addc	a,@r0
      00286E FD               [12] 1938 	mov	r5,a
      00286F EA               [12] 1939 	mov	a,r2
      002870 24 00            [12] 1940 	add	a,#_u
      002872 F5 82            [12] 1941 	mov	dpl,a
      002874 ED               [12] 1942 	mov	a,r5
      002875 34 48            [12] 1943 	addc	a,#(_u >> 8)
      002877 F5 83            [12] 1944 	mov	dph,a
      002879 E0               [24] 1945 	movx	a,@dptr
      00287A 2B               [12] 1946 	add	a,r3
      00287B FB               [12] 1947 	mov	r3,a
                                   1948 ;	life.c:190: UPDN(1, 0);
      00287C E5 10            [12] 1949 	mov	a,_bp
      00287E 24 0D            [12] 1950 	add	a,#0x0d
      002880 F8               [12] 1951 	mov	r0,a
      002881 E5 10            [12] 1952 	mov	a,_bp
      002883 24 09            [12] 1953 	add	a,#0x09
      002885 F9               [12] 1954 	mov	r1,a
      002886 E7               [12] 1955 	mov	a,@r1
      002887 26               [12] 1956 	add	a,@r0
      002888 FC               [12] 1957 	mov	r4,a
      002889 09               [12] 1958 	inc	r1
      00288A E7               [12] 1959 	mov	a,@r1
      00288B 08               [12] 1960 	inc	r0
      00288C 36               [12] 1961 	addc	a,@r0
      00288D FD               [12] 1962 	mov	r5,a
      00288E EC               [12] 1963 	mov	a,r4
      00288F 24 00            [12] 1964 	add	a,#_u
      002891 F5 82            [12] 1965 	mov	dpl,a
      002893 ED               [12] 1966 	mov	a,r5
      002894 34 48            [12] 1967 	addc	a,#(_u >> 8)
      002896 F5 83            [12] 1968 	mov	dph,a
      002898 E0               [24] 1969 	movx	a,@dptr
      002899 2B               [12] 1970 	add	a,r3
      00289A FB               [12] 1971 	mov	r3,a
                                   1972 ;	life.c:191: UPDN(1, 1);
      00289B 78 41            [12] 1973 	mov	r0,#_dy
      00289D 76 01            [12] 1974 	mov	@r0,#0x01
      00289F 08               [12] 1975 	inc	r0
      0028A0 76 00            [12] 1976 	mov	@r0,#0x00
      0028A2 78 3F            [12] 1977 	mov	r0,#_dx
      0028A4 76 01            [12] 1978 	mov	@r0,#0x01
      0028A6 08               [12] 1979 	inc	r0
      0028A7 76 00            [12] 1980 	mov	@r0,#0x00
      0028A9 E5 10            [12] 1981 	mov	a,_bp
      0028AB 24 0D            [12] 1982 	add	a,#0x0d
      0028AD F8               [12] 1983 	mov	r0,a
      0028AE EE               [12] 1984 	mov	a,r6
      0028AF 26               [12] 1985 	add	a,@r0
      0028B0 FE               [12] 1986 	mov	r6,a
      0028B1 EF               [12] 1987 	mov	a,r7
      0028B2 08               [12] 1988 	inc	r0
      0028B3 36               [12] 1989 	addc	a,@r0
      0028B4 FF               [12] 1990 	mov	r7,a
      0028B5 EE               [12] 1991 	mov	a,r6
      0028B6 24 00            [12] 1992 	add	a,#_u
      0028B8 F5 82            [12] 1993 	mov	dpl,a
      0028BA EF               [12] 1994 	mov	a,r7
      0028BB 34 48            [12] 1995 	addc	a,#(_u >> 8)
      0028BD F5 83            [12] 1996 	mov	dph,a
      0028BF E0               [24] 1997 	movx	a,@dptr
      0028C0 2B               [12] 1998 	add	a,r3
      0028C1 FF               [12] 1999 	mov	r7,a
      0028C2 78 3C            [12] 2000 	mov	r0,#_n
      0028C4 A6 07            [24] 2001 	mov	@r0,ar7
                                   2002 ;	life.c:194: nu[A2D(W, y, x)] = (n == 3) || ((n == 2) && u[A2D(W, y, x)]);
      0028C6 A8 10            [24] 2003 	mov	r0,_bp
      0028C8 08               [12] 2004 	inc	r0
      0028C9 E6               [12] 2005 	mov	a,@r0
      0028CA 24 00            [12] 2006 	add	a,#_nu
      0028CC FD               [12] 2007 	mov	r5,a
      0028CD 08               [12] 2008 	inc	r0
      0028CE E6               [12] 2009 	mov	a,@r0
      0028CF 34 50            [12] 2010 	addc	a,#(_nu >> 8)
      0028D1 FE               [12] 2011 	mov	r6,a
      0028D2 BF 03 02         [24] 2012 	cjne	r7,#0x03,00496$
      0028D5 80 28            [24] 2013 	sjmp	00255$
      0028D7                       2014 00496$:
      0028D7 BF 02 21         [24] 2015 	cjne	r7,#0x02,00254$
      0028DA E5 10            [12] 2016 	mov	a,_bp
      0028DC 24 03            [12] 2017 	add	a,#0x03
      0028DE F8               [12] 2018 	mov	r0,a
      0028DF E5 10            [12] 2019 	mov	a,_bp
      0028E1 24 07            [12] 2020 	add	a,#0x07
      0028E3 F9               [12] 2021 	mov	r1,a
      0028E4 E7               [12] 2022 	mov	a,@r1
      0028E5 26               [12] 2023 	add	a,@r0
      0028E6 FC               [12] 2024 	mov	r4,a
      0028E7 09               [12] 2025 	inc	r1
      0028E8 E7               [12] 2026 	mov	a,@r1
      0028E9 08               [12] 2027 	inc	r0
      0028EA 36               [12] 2028 	addc	a,@r0
      0028EB FF               [12] 2029 	mov	r7,a
      0028EC EC               [12] 2030 	mov	a,r4
      0028ED 24 00            [12] 2031 	add	a,#_u
      0028EF FC               [12] 2032 	mov	r4,a
      0028F0 EF               [12] 2033 	mov	a,r7
      0028F1 34 48            [12] 2034 	addc	a,#(_u >> 8)
      0028F3 FF               [12] 2035 	mov	r7,a
      0028F4 8C 82            [24] 2036 	mov	dpl,r4
      0028F6 8F 83            [24] 2037 	mov	dph,r7
      0028F8 E0               [24] 2038 	movx	a,@dptr
      0028F9 70 04            [24] 2039 	jnz	00255$
      0028FB                       2040 00254$:
                                   2041 ;	assignBit
      0028FB C2 00            [12] 2042 	clr	b0
      0028FD 80 02            [24] 2043 	sjmp	00256$
      0028FF                       2044 00255$:
                                   2045 ;	assignBit
      0028FF D2 00            [12] 2046 	setb	b0
      002901                       2047 00256$:
      002901 A2 00            [12] 2048 	mov	c,b0
      002903 E4               [12] 2049 	clr	a
      002904 33               [12] 2050 	rlc	a
      002905 8D 82            [24] 2051 	mov	dpl,r5
      002907 8E 83            [24] 2052 	mov	dph,r6
      002909 F0               [24] 2053 	movx	@dptr,a
                                   2054 ;	life.c:195: cycle2 |= pu[A2D(W, y, x)] ^ nu[A2D(W, y, x)];
      00290A 78 35            [12] 2055 	mov	r0,#_y
      00290C 86 06            [24] 2056 	mov	ar6,@r0
      00290E 08               [12] 2057 	inc	r0
      00290F E6               [12] 2058 	mov	a,@r0
      002910 C4               [12] 2059 	swap	a
      002911 23               [12] 2060 	rl	a
      002912 54 E0            [12] 2061 	anl	a,#0xe0
      002914 CE               [12] 2062 	xch	a,r6
      002915 C4               [12] 2063 	swap	a
      002916 23               [12] 2064 	rl	a
      002917 CE               [12] 2065 	xch	a,r6
      002918 6E               [12] 2066 	xrl	a,r6
      002919 CE               [12] 2067 	xch	a,r6
      00291A 54 E0            [12] 2068 	anl	a,#0xe0
      00291C CE               [12] 2069 	xch	a,r6
      00291D 6E               [12] 2070 	xrl	a,r6
      00291E FF               [12] 2071 	mov	r7,a
      00291F 78 33            [12] 2072 	mov	r0,#_x
      002921 E6               [12] 2073 	mov	a,@r0
      002922 2E               [12] 2074 	add	a,r6
      002923 FE               [12] 2075 	mov	r6,a
      002924 08               [12] 2076 	inc	r0
      002925 E6               [12] 2077 	mov	a,@r0
      002926 3F               [12] 2078 	addc	a,r7
      002927 FF               [12] 2079 	mov	r7,a
      002928 EE               [12] 2080 	mov	a,r6
      002929 24 00            [12] 2081 	add	a,#_pu
      00292B F5 82            [12] 2082 	mov	dpl,a
      00292D EF               [12] 2083 	mov	a,r7
      00292E 34 40            [12] 2084 	addc	a,#(_pu >> 8)
      002930 F5 83            [12] 2085 	mov	dph,a
      002932 E0               [24] 2086 	movx	a,@dptr
      002933 FD               [12] 2087 	mov	r5,a
      002934 EE               [12] 2088 	mov	a,r6
      002935 24 00            [12] 2089 	add	a,#_nu
      002937 F5 82            [12] 2090 	mov	dpl,a
      002939 EF               [12] 2091 	mov	a,r7
      00293A 34 50            [12] 2092 	addc	a,#(_nu >> 8)
      00293C F5 83            [12] 2093 	mov	dph,a
      00293E E0               [24] 2094 	movx	a,@dptr
      00293F FC               [12] 2095 	mov	r4,a
      002940 6D               [12] 2096 	xrl	a,r5
      002941 78 3E            [12] 2097 	mov	r0,#_cycle2
      002943 46               [12] 2098 	orl	a,@r0
      002944 F6               [12] 2099 	mov	@r0,a
                                   2100 ;	life.c:196: fixed |= u[A2D(W, y, x)] ^ nu[A2D(W, y, x)];
      002945 EE               [12] 2101 	mov	a,r6
      002946 24 00            [12] 2102 	add	a,#_u
      002948 F5 82            [12] 2103 	mov	dpl,a
      00294A EF               [12] 2104 	mov	a,r7
      00294B 34 48            [12] 2105 	addc	a,#(_u >> 8)
      00294D F5 83            [12] 2106 	mov	dph,a
      00294F E0               [24] 2107 	movx	a,@dptr
      002950 FF               [12] 2108 	mov	r7,a
      002951 EC               [12] 2109 	mov	a,r4
      002952 6F               [12] 2110 	xrl	a,r7
      002953 78 3D            [12] 2111 	mov	r0,#_fixed
      002955 46               [12] 2112 	orl	a,@r0
      002956 F6               [12] 2113 	mov	@r0,a
                                   2114 ;	life.c:175: for (x = 0; x < W; x++) {
      002957 78 33            [12] 2115 	mov	r0,#_x
      002959 06               [12] 2116 	inc	@r0
      00295A B6 00 02         [24] 2117 	cjne	@r0,#0x00,00500$
      00295D 08               [12] 2118 	inc	r0
      00295E 06               [12] 2119 	inc	@r0
      00295F                       2120 00500$:
      00295F 78 33            [12] 2121 	mov	r0,#_x
      002961 C3               [12] 2122 	clr	c
      002962 E6               [12] 2123 	mov	a,@r0
      002963 94 20            [12] 2124 	subb	a,#0x20
      002965 08               [12] 2125 	inc	r0
      002966 E6               [12] 2126 	mov	a,@r0
      002967 64 80            [12] 2127 	xrl	a,#0x80
      002969 94 80            [12] 2128 	subb	a,#0x80
      00296B 50 03            [24] 2129 	jnc	00501$
      00296D 02 25 F2         [24] 2130 	ljmp	00227$
      002970                       2131 00501$:
                                   2132 ;	life.c:172: for (y = 0; y < H; y++) {
      002970 78 35            [12] 2133 	mov	r0,#_y
      002972 06               [12] 2134 	inc	@r0
      002973 B6 00 02         [24] 2135 	cjne	@r0,#0x00,00502$
      002976 08               [12] 2136 	inc	r0
      002977 06               [12] 2137 	inc	@r0
      002978                       2138 00502$:
      002978 78 35            [12] 2139 	mov	r0,#_y
      00297A C3               [12] 2140 	clr	c
      00297B E6               [12] 2141 	mov	a,@r0
      00297C 94 40            [12] 2142 	subb	a,#0x40
      00297E 08               [12] 2143 	inc	r0
      00297F E6               [12] 2144 	mov	a,@r0
      002980 64 80            [12] 2145 	xrl	a,#0x80
      002982 94 80            [12] 2146 	subb	a,#0x80
      002984 50 03            [24] 2147 	jnc	00503$
      002986 02 25 CA         [24] 2148 	ljmp	00229$
      002989                       2149 00503$:
                                   2150 ;	life.c:200: cycle2 = !cycle2;
      002989 78 3E            [12] 2151 	mov	r0,#_cycle2
      00298B E6               [12] 2152 	mov	a,@r0
      00298C B4 01 00         [24] 2153 	cjne	a,#0x01,00504$
      00298F                       2154 00504$:
      00298F 92 00            [24] 2155 	mov	b0,c
      002991 78 3E            [12] 2156 	mov	r0,#_cycle2
      002993 E4               [12] 2157 	clr	a
      002994 33               [12] 2158 	rlc	a
      002995 F6               [12] 2159 	mov	@r0,a
                                   2160 ;	life.c:201: fixed = !fixed;
      002996 78 3D            [12] 2161 	mov	r0,#_fixed
      002998 E6               [12] 2162 	mov	a,@r0
      002999 B4 01 00         [24] 2163 	cjne	a,#0x01,00505$
      00299C                       2164 00505$:
      00299C 92 00            [24] 2165 	mov	b0,c
      00299E 78 3D            [12] 2166 	mov	r0,#_fixed
      0029A0 E4               [12] 2167 	clr	a
      0029A1 33               [12] 2168 	rlc	a
      0029A2 F6               [12] 2169 	mov	@r0,a
                                   2170 ;	life.c:203: memcpy(pu, u, sizeof (u));
      0029A3 E4               [12] 2171 	clr	a
      0029A4 C0 E0            [24] 2172 	push	acc
      0029A6 74 08            [12] 2173 	mov	a,#0x08
      0029A8 C0 E0            [24] 2174 	push	acc
      0029AA 74 00            [12] 2175 	mov	a,#_u
      0029AC C0 E0            [24] 2176 	push	acc
      0029AE 74 48            [12] 2177 	mov	a,#(_u >> 8)
      0029B0 C0 E0            [24] 2178 	push	acc
      0029B2 E4               [12] 2179 	clr	a
      0029B3 C0 E0            [24] 2180 	push	acc
      0029B5 90 40 00         [24] 2181 	mov	dptr,#_pu
      0029B8 75 F0 00         [24] 2182 	mov	b,#0x00
      0029BB 12 2A C2         [24] 2183 	lcall	___memcpy
      0029BE E5 81            [12] 2184 	mov	a,sp
      0029C0 24 FB            [12] 2185 	add	a,#0xfb
      0029C2 F5 81            [12] 2186 	mov	sp,a
                                   2187 ;	life.c:204: memcpy(u, nu, sizeof (nu));
      0029C4 E4               [12] 2188 	clr	a
      0029C5 C0 E0            [24] 2189 	push	acc
      0029C7 74 08            [12] 2190 	mov	a,#0x08
      0029C9 C0 E0            [24] 2191 	push	acc
      0029CB 74 00            [12] 2192 	mov	a,#_nu
      0029CD C0 E0            [24] 2193 	push	acc
      0029CF 74 50            [12] 2194 	mov	a,#(_nu >> 8)
      0029D1 C0 E0            [24] 2195 	push	acc
      0029D3 E4               [12] 2196 	clr	a
      0029D4 C0 E0            [24] 2197 	push	acc
      0029D6 90 48 00         [24] 2198 	mov	dptr,#_u
      0029D9 75 F0 00         [24] 2199 	mov	b,#0x00
      0029DC 12 2A C2         [24] 2200 	lcall	___memcpy
      0029DF E5 81            [12] 2201 	mov	a,sp
      0029E1 24 FB            [12] 2202 	add	a,#0xfb
      0029E3 F5 81            [12] 2203 	mov	sp,a
                                   2204 ;	life.c:242: if (fixed || cycle2) {
      0029E5 78 3D            [12] 2205 	mov	r0,#_fixed
      0029E7 E6               [12] 2206 	mov	a,@r0
      0029E8 70 08            [24] 2207 	jnz	00126$
      0029EA 78 3E            [12] 2208 	mov	r0,#_cycle2
      0029EC E6               [12] 2209 	mov	a,@r0
      0029ED 70 03            [24] 2210 	jnz	00507$
      0029EF 02 25 A2         [24] 2211 	ljmp	00242$
      0029F2                       2212 00507$:
      0029F2                       2213 00126$:
                                   2214 ;	life.c:243: printstr("DONE ");
      0029F2 7D 43            [12] 2215 	mov	r5,#___str_6
      0029F4 7E 2D            [12] 2216 	mov	r6,#(___str_6 >> 8)
      0029F6 7F 80            [12] 2217 	mov	r7,#0x80
                                   2218 ;	life.c:52: return;
      0029F8                       2219 00232$:
                                   2220 ;	life.c:50: for (; *s; s++) putchar(*s);
      0029F8 8D 82            [24] 2221 	mov	dpl,r5
      0029FA 8E 83            [24] 2222 	mov	dph,r6
      0029FC 8F F0            [24] 2223 	mov	b,r7
      0029FE 12 2B E6         [24] 2224 	lcall	__gptrget
      002A01 FC               [12] 2225 	mov	r4,a
      002A02 60 10            [24] 2226 	jz	00203$
      002A04 7B 00            [12] 2227 	mov	r3,#0x00
      002A06 8C 82            [24] 2228 	mov	dpl,r4
      002A08 8B 83            [24] 2229 	mov	dph,r3
      002A0A 12 20 C5         [24] 2230 	lcall	_putchar
      002A0D 0D               [12] 2231 	inc	r5
                                   2232 ;	life.c:243: printstr("DONE ");
      002A0E BD 00 E7         [24] 2233 	cjne	r5,#0x00,00232$
      002A11 0E               [12] 2234 	inc	r6
      002A12 80 E4            [24] 2235 	sjmp	00232$
      002A14                       2236 00203$:
                                   2237 ;	life.c:244: if (fixed) printstr("FIXED\r\n");
      002A14 78 3D            [12] 2238 	mov	r0,#_fixed
      002A16 E6               [12] 2239 	mov	a,@r0
      002A17 60 22            [24] 2240 	jz	00124$
      002A19 7D 49            [12] 2241 	mov	r5,#___str_7
      002A1B 7E 2D            [12] 2242 	mov	r6,#(___str_7 >> 8)
      002A1D 7F 80            [12] 2243 	mov	r7,#0x80
                                   2244 ;	life.c:52: return;
      002A1F                       2245 00235$:
                                   2246 ;	life.c:50: for (; *s; s++) putchar(*s);
      002A1F 8D 82            [24] 2247 	mov	dpl,r5
      002A21 8E 83            [24] 2248 	mov	dph,r6
      002A23 8F F0            [24] 2249 	mov	b,r7
      002A25 12 2B E6         [24] 2250 	lcall	__gptrget
      002A28 FC               [12] 2251 	mov	r4,a
      002A29 60 32            [24] 2252 	jz	00125$
      002A2B 7B 00            [12] 2253 	mov	r3,#0x00
      002A2D 8C 82            [24] 2254 	mov	dpl,r4
      002A2F 8B 83            [24] 2255 	mov	dph,r3
      002A31 12 20 C5         [24] 2256 	lcall	_putchar
      002A34 0D               [12] 2257 	inc	r5
                                   2258 ;	life.c:244: if (fixed) printstr("FIXED\r\n");
      002A35 BD 00 E7         [24] 2259 	cjne	r5,#0x00,00235$
      002A38 0E               [12] 2260 	inc	r6
      002A39 80 E4            [24] 2261 	sjmp	00235$
      002A3B                       2262 00124$:
                                   2263 ;	life.c:245: else printstr("CYCLE2\r\n");
      002A3B 7D 51            [12] 2264 	mov	r5,#___str_8
      002A3D 7E 2D            [12] 2265 	mov	r6,#(___str_8 >> 8)
      002A3F 7F 80            [12] 2266 	mov	r7,#0x80
                                   2267 ;	life.c:52: return;
      002A41                       2268 00238$:
                                   2269 ;	life.c:50: for (; *s; s++) putchar(*s);
      002A41 8D 82            [24] 2270 	mov	dpl,r5
      002A43 8E 83            [24] 2271 	mov	dph,r6
      002A45 8F F0            [24] 2272 	mov	b,r7
      002A47 12 2B E6         [24] 2273 	lcall	__gptrget
      002A4A FC               [12] 2274 	mov	r4,a
      002A4B 60 10            [24] 2275 	jz	00125$
      002A4D 7B 00            [12] 2276 	mov	r3,#0x00
      002A4F 8C 82            [24] 2277 	mov	dpl,r4
      002A51 8B 83            [24] 2278 	mov	dph,r3
      002A53 12 20 C5         [24] 2279 	lcall	_putchar
      002A56 0D               [12] 2280 	inc	r5
                                   2281 ;	life.c:245: else printstr("CYCLE2\r\n");
      002A57 BD 00 E7         [24] 2282 	cjne	r5,#0x00,00238$
      002A5A 0E               [12] 2283 	inc	r6
      002A5B 80 E4            [24] 2284 	sjmp	00238$
      002A5D                       2285 00125$:
                                   2286 ;	life.c:246: (void)getchar();
      002A5D 12 20 CF         [24] 2287 	lcall	_getchar
                                   2288 ;	life.c:247: break;
      002A60                       2289 00129$:
                                   2290 ;	life.c:251: if (i1) {
      002A60 78 32            [12] 2291 	mov	r0,#_i1
      002A62 E6               [12] 2292 	mov	a,@r0
      002A63 60 25            [24] 2293 	jz	00248$
                                   2294 ;	life.c:252: printstr("BREAK\r\n");
      002A65 7D 5A            [12] 2295 	mov	r5,#___str_9
      002A67 7E 2D            [12] 2296 	mov	r6,#(___str_9 >> 8)
      002A69 7F 80            [12] 2297 	mov	r7,#0x80
                                   2298 ;	life.c:52: return;
      002A6B                       2299 00245$:
                                   2300 ;	life.c:50: for (; *s; s++) putchar(*s);
      002A6B 8D 82            [24] 2301 	mov	dpl,r5
      002A6D 8E 83            [24] 2302 	mov	dph,r6
      002A6F 8F F0            [24] 2303 	mov	b,r7
      002A71 12 2B E6         [24] 2304 	lcall	__gptrget
      002A74 FC               [12] 2305 	mov	r4,a
      002A75 60 10            [24] 2306 	jz	00209$
      002A77 7B 00            [12] 2307 	mov	r3,#0x00
      002A79 8C 82            [24] 2308 	mov	dpl,r4
      002A7B 8B 83            [24] 2309 	mov	dph,r3
      002A7D 12 20 C5         [24] 2310 	lcall	_putchar
      002A80 0D               [12] 2311 	inc	r5
                                   2312 ;	life.c:252: printstr("BREAK\r\n");
      002A81 BD 00 E7         [24] 2313 	cjne	r5,#0x00,00245$
      002A84 0E               [12] 2314 	inc	r6
      002A85 80 E4            [24] 2315 	sjmp	00245$
      002A87                       2316 00209$:
                                   2317 ;	life.c:253: (void)getchar();
      002A87 12 20 CF         [24] 2318 	lcall	_getchar
      002A8A                       2319 00248$:
                                   2320 ;	life.c:216: for (i0 = 0; !i0; ) {		
      002A8A 78 31            [12] 2321 	mov	r0,#_i0
      002A8C E6               [12] 2322 	mov	a,@r0
      002A8D 70 03            [24] 2323 	jnz	00518$
      002A8F 02 23 09         [24] 2324 	ljmp	00247$
      002A92                       2325 00518$:
                                   2326 ;	life.c:257: terminate:
      002A92                       2327 00133$:
                                   2328 ;	life.c:258: EA = 0;
                                   2329 ;	assignBit
      002A92 C2 AF            [12] 2330 	clr	_EA
                                   2331 ;	life.c:259: printstr("TERM\r\n");
      002A94 7D 62            [12] 2332 	mov	r5,#___str_10
      002A96 7E 2D            [12] 2333 	mov	r6,#(___str_10 >> 8)
      002A98 7F 80            [12] 2334 	mov	r7,#0x80
                                   2335 ;	life.c:52: return;
      002A9A                       2336 00250$:
                                   2337 ;	life.c:50: for (; *s; s++) putchar(*s);
      002A9A 8D 82            [24] 2338 	mov	dpl,r5
      002A9C 8E 83            [24] 2339 	mov	dph,r6
      002A9E 8F F0            [24] 2340 	mov	b,r7
      002AA0 12 2B E6         [24] 2341 	lcall	__gptrget
      002AA3 FC               [12] 2342 	mov	r4,a
      002AA4 60 10            [24] 2343 	jz	00211$
      002AA6 7B 00            [12] 2344 	mov	r3,#0x00
      002AA8 8C 82            [24] 2345 	mov	dpl,r4
      002AAA 8B 83            [24] 2346 	mov	dph,r3
      002AAC 12 20 C5         [24] 2347 	lcall	_putchar
      002AAF 0D               [12] 2348 	inc	r5
                                   2349 ;	life.c:259: printstr("TERM\r\n");
      002AB0 BD 00 E7         [24] 2350 	cjne	r5,#0x00,00250$
      002AB3 0E               [12] 2351 	inc	r6
      002AB4 80 E4            [24] 2352 	sjmp	00250$
      002AB6                       2353 00211$:
                                   2354 ;	life.c:260: (void)getchar();
      002AB6 12 20 CF         [24] 2355 	lcall	_getchar
                                   2356 ;	life.c:262: PCON |= 2;
      002AB9 43 87 02         [24] 2357 	orl	_PCON,#0x02
                                   2358 ;	life.c:264: return;
                                   2359 ;	life.c:265: }
      002ABC 85 10 81         [24] 2360 	mov	sp,_bp
      002ABF D0 10            [24] 2361 	pop	_bp
      002AC1 22               [24] 2362 	ret
                                   2363 	.area CSEG    (CODE)
                                   2364 	.area CONST   (CODE)
                                   2365 	.area CONST   (CODE)
      002D0E                       2366 ___str_0:
      002D0E 1B                    2367 	.db 0x1b
      002D0F 5B 32 4A              2368 	.ascii "[2J"
      002D12 1B                    2369 	.db 0x1b
      002D13 5B 6D 47 45 4E 20     2370 	.ascii "[mGEN "
      002D19 00                    2371 	.db 0x00
                                   2372 	.area CSEG    (CODE)
                                   2373 	.area CONST   (CODE)
      002D1A                       2374 ___str_1:
      002D1A 0D                    2375 	.db 0x0d
      002D1B 0A                    2376 	.db 0x0a
      002D1C 00                    2377 	.db 0x00
                                   2378 	.area CSEG    (CODE)
                                   2379 	.area CONST   (CODE)
      002D1D                       2380 ___str_2:
      002D1D 4C 4F 41 44 20 3C     2381 	.ascii "LOAD <"
      002D23 00                    2382 	.db 0x00
                                   2383 	.area CSEG    (CODE)
                                   2384 	.area CONST   (CODE)
      002D24                       2385 ___str_3:
      002D24 3E                    2386 	.ascii ">"
      002D25 0D                    2387 	.db 0x0d
      002D26 0A                    2388 	.db 0x0a
      002D27 00                    2389 	.db 0x00
                                   2390 	.area CSEG    (CODE)
                                   2391 	.area CONST   (CODE)
      002D28                       2392 ___str_4:
      002D28 1B                    2393 	.db 0x1b
      002D29 5B 32 4A              2394 	.ascii "[2J"
      002D2C 1B                    2395 	.db 0x1b
      002D2D 5B 6D 4C 49 46 45 20  2396 	.ascii "[mLIFE INIT"
             49 4E 49 54
      002D38 0D                    2397 	.db 0x0d
      002D39 0A                    2398 	.db 0x0a
      002D3A 00                    2399 	.db 0x00
                                   2400 	.area CSEG    (CODE)
                                   2401 	.area CONST   (CODE)
      002D3B                       2402 ___str_5:
      002D3B 52 45 41 44 59        2403 	.ascii "READY"
      002D40 0D                    2404 	.db 0x0d
      002D41 0A                    2405 	.db 0x0a
      002D42 00                    2406 	.db 0x00
                                   2407 	.area CSEG    (CODE)
                                   2408 	.area CONST   (CODE)
      002D43                       2409 ___str_6:
      002D43 44 4F 4E 45 20        2410 	.ascii "DONE "
      002D48 00                    2411 	.db 0x00
                                   2412 	.area CSEG    (CODE)
                                   2413 	.area CONST   (CODE)
      002D49                       2414 ___str_7:
      002D49 46 49 58 45 44        2415 	.ascii "FIXED"
      002D4E 0D                    2416 	.db 0x0d
      002D4F 0A                    2417 	.db 0x0a
      002D50 00                    2418 	.db 0x00
                                   2419 	.area CSEG    (CODE)
                                   2420 	.area CONST   (CODE)
      002D51                       2421 ___str_8:
      002D51 43 59 43 4C 45 32     2422 	.ascii "CYCLE2"
      002D57 0D                    2423 	.db 0x0d
      002D58 0A                    2424 	.db 0x0a
      002D59 00                    2425 	.db 0x00
                                   2426 	.area CSEG    (CODE)
                                   2427 	.area CONST   (CODE)
      002D5A                       2428 ___str_9:
      002D5A 42 52 45 41 4B        2429 	.ascii "BREAK"
      002D5F 0D                    2430 	.db 0x0d
      002D60 0A                    2431 	.db 0x0a
      002D61 00                    2432 	.db 0x00
                                   2433 	.area CSEG    (CODE)
                                   2434 	.area CONST   (CODE)
      002D62                       2435 ___str_10:
      002D62 54 45 52 4D           2436 	.ascii "TERM"
      002D66 0D                    2437 	.db 0x0d
      002D67 0A                    2438 	.db 0x0a
      002D68 00                    2439 	.db 0x00
                                   2440 	.area CSEG    (CODE)
                                   2441 	.area XINIT   (CODE)
                                   2442 	.area CABS    (ABS,CODE)
