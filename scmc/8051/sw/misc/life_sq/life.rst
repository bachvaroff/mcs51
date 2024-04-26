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
      002003 02 20 C5         [24]  392 	ljmp	_int0
      002006                        393 	.ds	5
      00200B 32               [24]  394 	reti
      00200C                        395 	.ds	7
      002013 02 20 D1         [24]  396 	ljmp	_int1
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
                                    410 ;	life.c:7: __idata static const char digits[16] = {
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
                                    443 ;	life.c:144: __idata static const char busy[4] = { '\\', '|', '/', '-' };
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
      002016 02 23 2E         [24]  460 	ljmp	_main
                                    461 ;	return from main will return to caller
                                    462 ;--------------------------------------------------------
                                    463 ; code
                                    464 ;--------------------------------------------------------
                                    465 	.area CSEG    (CODE)
                                    466 ;------------------------------------------------------------
                                    467 ;Allocation info for local variables in function 'int0'
                                    468 ;------------------------------------------------------------
                                    469 ;	life.c:36: void int0(void) __interrupt IE0_VECTOR __using 1 {
                                    470 ;	-----------------------------------------
                                    471 ;	 function int0
                                    472 ;	-----------------------------------------
      0020C5                        473 _int0:
                           00000F   474 	ar7 = 0x0f
                           00000E   475 	ar6 = 0x0e
                           00000D   476 	ar5 = 0x0d
                           00000C   477 	ar4 = 0x0c
                           00000B   478 	ar3 = 0x0b
                           00000A   479 	ar2 = 0x0a
                           000009   480 	ar1 = 0x09
                           000008   481 	ar0 = 0x08
      0020C5 C0 D0            [24]  482 	push	psw
      0020C7 75 D0 08         [24]  483 	mov	psw,#0x08
                                    484 ;	life.c:37: i0 = 1;
      0020CA 78 31            [12]  485 	mov	r0,#_i0
      0020CC 76 01            [12]  486 	mov	@r0,#0x01
                                    487 ;	life.c:38: }
      0020CE D0 D0            [24]  488 	pop	psw
      0020D0 32               [24]  489 	reti
                                    490 ;	eliminated unneeded push/pop dpl
                                    491 ;	eliminated unneeded push/pop dph
                                    492 ;	eliminated unneeded push/pop b
                                    493 ;	eliminated unneeded push/pop acc
                                    494 ;------------------------------------------------------------
                                    495 ;Allocation info for local variables in function 'int1'
                                    496 ;------------------------------------------------------------
                                    497 ;	life.c:40: void int1(void) __interrupt IE1_VECTOR __using 1 {
                                    498 ;	-----------------------------------------
                                    499 ;	 function int1
                                    500 ;	-----------------------------------------
      0020D1                        501 _int1:
      0020D1 C0 D0            [24]  502 	push	psw
      0020D3 75 D0 08         [24]  503 	mov	psw,#0x08
                                    504 ;	life.c:41: i1 = 1;
      0020D6 78 32            [12]  505 	mov	r0,#_i1
      0020D8 76 01            [12]  506 	mov	@r0,#0x01
                                    507 ;	life.c:42: }
      0020DA D0 D0            [24]  508 	pop	psw
      0020DC 32               [24]  509 	reti
                                    510 ;	eliminated unneeded push/pop dpl
                                    511 ;	eliminated unneeded push/pop dph
                                    512 ;	eliminated unneeded push/pop b
                                    513 ;	eliminated unneeded push/pop acc
                                    514 ;------------------------------------------------------------
                                    515 ;Allocation info for local variables in function 'show'
                                    516 ;------------------------------------------------------------
                                    517 ;hdr                       Allocated to registers r7 
                                    518 ;__1966080005              Allocated to registers 
                                    519 ;s                         Allocated to registers r5 r6 r7 
                                    520 ;__1310720001              Allocated to registers r6 r7 
                                    521 ;a                         Allocated to registers 
                                    522 ;__1310720003              Allocated to registers r6 r7 
                                    523 ;a                         Allocated to registers 
                                    524 ;__1966080008              Allocated to registers 
                                    525 ;s                         Allocated to registers r5 r6 r7 
                                    526 ;__2621440011              Allocated to registers 
                                    527 ;s                         Allocated to registers r5 r6 r7 
                                    528 ;------------------------------------------------------------
                                    529 ;	life.c:78: void show(char hdr) {
                                    530 ;	-----------------------------------------
                                    531 ;	 function show
                                    532 ;	-----------------------------------------
      0020DD                        533 _show:
                           000007   534 	ar7 = 0x07
                           000006   535 	ar6 = 0x06
                           000005   536 	ar5 = 0x05
                           000004   537 	ar4 = 0x04
                           000003   538 	ar3 = 0x03
                           000002   539 	ar2 = 0x02
                           000001   540 	ar1 = 0x01
                           000000   541 	ar0 = 0x00
                                    542 ;	life.c:79: if (hdr) {
      0020DD E5 82            [12]  543 	mov	a,dpl
      0020DF FF               [12]  544 	mov	r7,a
      0020E0 70 03            [24]  545 	jnz	00190$
      0020E2 02 22 7D         [24]  546 	ljmp	00102$
      0020E5                        547 00190$:
                                    548 ;	life.c:80: printstr("\033[2J\033[mGEN ");
      0020E5 7D 00            [12]  549 	mov	r5,#___str_0
      0020E7 7E 2E            [12]  550 	mov	r6,#(___str_0 >> 8)
      0020E9 7F 80            [12]  551 	mov	r7,#0x80
                                    552 ;	life.c:31: return;
      0020EB                        553 00121$:
                                    554 ;	life.c:29: for (; *s; s++) putchar(*s);
      0020EB 8D 82            [24]  555 	mov	dpl,r5
      0020ED 8E 83            [24]  556 	mov	dph,r6
      0020EF 8F F0            [24]  557 	mov	b,r7
      0020F1 12 2C D8         [24]  558 	lcall	__gptrget
      0020F4 FC               [12]  559 	mov	r4,a
      0020F5 60 1C            [24]  560 	jz	00109$
      0020F7 7B 00            [12]  561 	mov	r3,#0x00
      0020F9 8C 82            [24]  562 	mov	dpl,r4
      0020FB 8B 83            [24]  563 	mov	dph,r3
      0020FD C0 07            [24]  564 	push	ar7
      0020FF C0 06            [24]  565 	push	ar6
      002101 C0 05            [24]  566 	push	ar5
      002103 12 2B 83         [24]  567 	lcall	_putchar
      002106 D0 05            [24]  568 	pop	ar5
      002108 D0 06            [24]  569 	pop	ar6
      00210A D0 07            [24]  570 	pop	ar7
      00210C 0D               [12]  571 	inc	r5
                                    572 ;	life.c:80: printstr("\033[2J\033[mGEN ");
      00210D BD 00 DB         [24]  573 	cjne	r5,#0x00,00121$
      002110 0E               [12]  574 	inc	r6
      002111 80 D8            [24]  575 	sjmp	00121$
      002113                        576 00109$:
                                    577 ;	life.c:72: print16x(generation[1]);
      002113 78 45            [12]  578 	mov	r0,#(_generation + 0x0002)
      002115 86 06            [24]  579 	mov	ar6,@r0
      002117 08               [12]  580 	inc	r0
                                    581 ;	life.c:20: putchar(digits[(a >> 12) & 0xf]);
      002118 E6               [12]  582 	mov	a,@r0
      002119 FF               [12]  583 	mov	r7,a
      00211A C4               [12]  584 	swap	a
      00211B 54 0F            [12]  585 	anl	a,#0x0f
      00211D 30 E3 02         [24]  586 	jnb	acc.3,00193$
      002120 44 F0            [12]  587 	orl	a,#0xf0
      002122                        588 00193$:
      002122 FC               [12]  589 	mov	r4,a
      002123 33               [12]  590 	rlc	a
      002124 95 E0            [12]  591 	subb	a,acc
      002126 53 04 0F         [24]  592 	anl	ar4,#0x0f
      002129 EC               [12]  593 	mov	a,r4
      00212A 24 21            [12]  594 	add	a,#_digits
      00212C F9               [12]  595 	mov	r1,a
      00212D 87 05            [24]  596 	mov	ar5,@r1
      00212F 7C 00            [12]  597 	mov	r4,#0x00
      002131 8D 82            [24]  598 	mov	dpl,r5
      002133 8C 83            [24]  599 	mov	dph,r4
      002135 C0 07            [24]  600 	push	ar7
      002137 C0 06            [24]  601 	push	ar6
      002139 12 2B 83         [24]  602 	lcall	_putchar
      00213C D0 06            [24]  603 	pop	ar6
      00213E D0 07            [24]  604 	pop	ar7
                                    605 ;	life.c:21: putchar(digits[(a >> 8) & 0xf]);
      002140 8F 05            [24]  606 	mov	ar5,r7
      002142 53 05 0F         [24]  607 	anl	ar5,#0x0f
      002145 ED               [12]  608 	mov	a,r5
      002146 24 21            [12]  609 	add	a,#_digits
      002148 F9               [12]  610 	mov	r1,a
      002149 87 05            [24]  611 	mov	ar5,@r1
      00214B 7C 00            [12]  612 	mov	r4,#0x00
      00214D 8D 82            [24]  613 	mov	dpl,r5
      00214F 8C 83            [24]  614 	mov	dph,r4
      002151 C0 07            [24]  615 	push	ar7
      002153 C0 06            [24]  616 	push	ar6
      002155 12 2B 83         [24]  617 	lcall	_putchar
      002158 D0 06            [24]  618 	pop	ar6
      00215A D0 07            [24]  619 	pop	ar7
                                    620 ;	life.c:22: putchar(digits[(a >> 4) & 0xf]);
      00215C 8E 04            [24]  621 	mov	ar4,r6
      00215E EF               [12]  622 	mov	a,r7
      00215F C4               [12]  623 	swap	a
      002160 CC               [12]  624 	xch	a,r4
      002161 C4               [12]  625 	swap	a
      002162 54 0F            [12]  626 	anl	a,#0x0f
      002164 6C               [12]  627 	xrl	a,r4
      002165 CC               [12]  628 	xch	a,r4
      002166 54 0F            [12]  629 	anl	a,#0x0f
      002168 CC               [12]  630 	xch	a,r4
      002169 6C               [12]  631 	xrl	a,r4
      00216A CC               [12]  632 	xch	a,r4
      00216B 30 E3 02         [24]  633 	jnb	acc.3,00194$
      00216E 44 F0            [12]  634 	orl	a,#0xf0
      002170                        635 00194$:
      002170 53 04 0F         [24]  636 	anl	ar4,#0x0f
      002173 EC               [12]  637 	mov	a,r4
      002174 24 21            [12]  638 	add	a,#_digits
      002176 F9               [12]  639 	mov	r1,a
      002177 87 05            [24]  640 	mov	ar5,@r1
      002179 7C 00            [12]  641 	mov	r4,#0x00
      00217B 8D 82            [24]  642 	mov	dpl,r5
      00217D 8C 83            [24]  643 	mov	dph,r4
      00217F C0 07            [24]  644 	push	ar7
      002181 C0 06            [24]  645 	push	ar6
      002183 12 2B 83         [24]  646 	lcall	_putchar
      002186 D0 06            [24]  647 	pop	ar6
      002188 D0 07            [24]  648 	pop	ar7
                                    649 ;	life.c:23: putchar(digits[a & 0xf]);
      00218A 53 06 0F         [24]  650 	anl	ar6,#0x0f
      00218D EE               [12]  651 	mov	a,r6
      00218E 24 21            [12]  652 	add	a,#_digits
      002190 F9               [12]  653 	mov	r1,a
      002191 87 07            [24]  654 	mov	ar7,@r1
      002193 7E 00            [12]  655 	mov	r6,#0x00
      002195 8F 82            [24]  656 	mov	dpl,r7
      002197 8E 83            [24]  657 	mov	dph,r6
      002199 12 2B 83         [24]  658 	lcall	_putchar
                                    659 ;	life.c:73: print16x(generation[0]);
      00219C 78 43            [12]  660 	mov	r0,#_generation
      00219E 86 06            [24]  661 	mov	ar6,@r0
      0021A0 08               [12]  662 	inc	r0
                                    663 ;	life.c:20: putchar(digits[(a >> 12) & 0xf]);
      0021A1 E6               [12]  664 	mov	a,@r0
      0021A2 FF               [12]  665 	mov	r7,a
      0021A3 C4               [12]  666 	swap	a
      0021A4 54 0F            [12]  667 	anl	a,#0x0f
      0021A6 30 E3 02         [24]  668 	jnb	acc.3,00195$
      0021A9 44 F0            [12]  669 	orl	a,#0xf0
      0021AB                        670 00195$:
      0021AB FC               [12]  671 	mov	r4,a
      0021AC 33               [12]  672 	rlc	a
      0021AD 95 E0            [12]  673 	subb	a,acc
      0021AF 53 04 0F         [24]  674 	anl	ar4,#0x0f
      0021B2 EC               [12]  675 	mov	a,r4
      0021B3 24 21            [12]  676 	add	a,#_digits
      0021B5 F9               [12]  677 	mov	r1,a
      0021B6 87 05            [24]  678 	mov	ar5,@r1
      0021B8 7C 00            [12]  679 	mov	r4,#0x00
      0021BA 8D 82            [24]  680 	mov	dpl,r5
      0021BC 8C 83            [24]  681 	mov	dph,r4
      0021BE C0 07            [24]  682 	push	ar7
      0021C0 C0 06            [24]  683 	push	ar6
      0021C2 12 2B 83         [24]  684 	lcall	_putchar
      0021C5 D0 06            [24]  685 	pop	ar6
      0021C7 D0 07            [24]  686 	pop	ar7
                                    687 ;	life.c:21: putchar(digits[(a >> 8) & 0xf]);
      0021C9 8F 05            [24]  688 	mov	ar5,r7
      0021CB 53 05 0F         [24]  689 	anl	ar5,#0x0f
      0021CE ED               [12]  690 	mov	a,r5
      0021CF 24 21            [12]  691 	add	a,#_digits
      0021D1 F9               [12]  692 	mov	r1,a
      0021D2 87 05            [24]  693 	mov	ar5,@r1
      0021D4 7C 00            [12]  694 	mov	r4,#0x00
      0021D6 8D 82            [24]  695 	mov	dpl,r5
      0021D8 8C 83            [24]  696 	mov	dph,r4
      0021DA C0 07            [24]  697 	push	ar7
      0021DC C0 06            [24]  698 	push	ar6
      0021DE 12 2B 83         [24]  699 	lcall	_putchar
      0021E1 D0 06            [24]  700 	pop	ar6
      0021E3 D0 07            [24]  701 	pop	ar7
                                    702 ;	life.c:22: putchar(digits[(a >> 4) & 0xf]);
      0021E5 8E 04            [24]  703 	mov	ar4,r6
      0021E7 EF               [12]  704 	mov	a,r7
      0021E8 C4               [12]  705 	swap	a
      0021E9 CC               [12]  706 	xch	a,r4
      0021EA C4               [12]  707 	swap	a
      0021EB 54 0F            [12]  708 	anl	a,#0x0f
      0021ED 6C               [12]  709 	xrl	a,r4
      0021EE CC               [12]  710 	xch	a,r4
      0021EF 54 0F            [12]  711 	anl	a,#0x0f
      0021F1 CC               [12]  712 	xch	a,r4
      0021F2 6C               [12]  713 	xrl	a,r4
      0021F3 CC               [12]  714 	xch	a,r4
      0021F4 30 E3 02         [24]  715 	jnb	acc.3,00196$
      0021F7 44 F0            [12]  716 	orl	a,#0xf0
      0021F9                        717 00196$:
      0021F9 53 04 0F         [24]  718 	anl	ar4,#0x0f
      0021FC EC               [12]  719 	mov	a,r4
      0021FD 24 21            [12]  720 	add	a,#_digits
      0021FF F9               [12]  721 	mov	r1,a
      002200 87 05            [24]  722 	mov	ar5,@r1
      002202 7C 00            [12]  723 	mov	r4,#0x00
      002204 8D 82            [24]  724 	mov	dpl,r5
      002206 8C 83            [24]  725 	mov	dph,r4
      002208 C0 07            [24]  726 	push	ar7
      00220A C0 06            [24]  727 	push	ar6
      00220C 12 2B 83         [24]  728 	lcall	_putchar
      00220F D0 06            [24]  729 	pop	ar6
      002211 D0 07            [24]  730 	pop	ar7
                                    731 ;	life.c:23: putchar(digits[a & 0xf]);
      002213 53 06 0F         [24]  732 	anl	ar6,#0x0f
      002216 EE               [12]  733 	mov	a,r6
      002217 24 21            [12]  734 	add	a,#_digits
      002219 F9               [12]  735 	mov	r1,a
      00221A 87 07            [24]  736 	mov	ar7,@r1
      00221C 7E 00            [12]  737 	mov	r6,#0x00
      00221E 8F 82            [24]  738 	mov	dpl,r7
      002220 8E 83            [24]  739 	mov	dph,r6
      002222 12 2B 83         [24]  740 	lcall	_putchar
                                    741 ;	life.c:82: printstr("\r\n");
      002225 7D 0C            [12]  742 	mov	r5,#___str_1
      002227 7E 2E            [12]  743 	mov	r6,#(___str_1 >> 8)
      002229 7F 80            [12]  744 	mov	r7,#0x80
                                    745 ;	life.c:31: return;
      00222B                        746 00124$:
                                    747 ;	life.c:29: for (; *s; s++) putchar(*s);
      00222B 8D 82            [24]  748 	mov	dpl,r5
      00222D 8E 83            [24]  749 	mov	dph,r6
      00222F 8F F0            [24]  750 	mov	b,r7
      002231 12 2C D8         [24]  751 	lcall	__gptrget
      002234 FC               [12]  752 	mov	r4,a
      002235 60 1C            [24]  753 	jz	00114$
      002237 7B 00            [12]  754 	mov	r3,#0x00
      002239 8C 82            [24]  755 	mov	dpl,r4
      00223B 8B 83            [24]  756 	mov	dph,r3
      00223D C0 07            [24]  757 	push	ar7
      00223F C0 06            [24]  758 	push	ar6
      002241 C0 05            [24]  759 	push	ar5
      002243 12 2B 83         [24]  760 	lcall	_putchar
      002246 D0 05            [24]  761 	pop	ar5
      002248 D0 06            [24]  762 	pop	ar6
      00224A D0 07            [24]  763 	pop	ar7
      00224C 0D               [12]  764 	inc	r5
                                    765 ;	life.c:82: printstr("\r\n");
      00224D BD 00 DB         [24]  766 	cjne	r5,#0x00,00124$
      002250 0E               [12]  767 	inc	r6
      002251 80 D8            [24]  768 	sjmp	00124$
      002253                        769 00114$:
                                    770 ;	life.c:65: generation[0]++;
      002253 78 43            [12]  771 	mov	r0,#_generation
      002255 86 06            [24]  772 	mov	ar6,@r0
      002257 08               [12]  773 	inc	r0
      002258 86 07            [24]  774 	mov	ar7,@r0
      00225A 0E               [12]  775 	inc	r6
      00225B BE 00 01         [24]  776 	cjne	r6,#0x00,00199$
      00225E 0F               [12]  777 	inc	r7
      00225F                        778 00199$:
      00225F 78 43            [12]  779 	mov	r0,#_generation
      002261 A6 06            [24]  780 	mov	@r0,ar6
      002263 08               [12]  781 	inc	r0
      002264 A6 07            [24]  782 	mov	@r0,ar7
                                    783 ;	life.c:66: if (!generation[0]) generation[1]++;
      002266 EE               [12]  784 	mov	a,r6
      002267 4F               [12]  785 	orl	a,r7
      002268 70 13            [24]  786 	jnz	00102$
      00226A 78 45            [12]  787 	mov	r0,#(_generation + 0x0002)
      00226C 86 06            [24]  788 	mov	ar6,@r0
      00226E 08               [12]  789 	inc	r0
      00226F 86 07            [24]  790 	mov	ar7,@r0
      002271 0E               [12]  791 	inc	r6
      002272 BE 00 01         [24]  792 	cjne	r6,#0x00,00201$
      002275 0F               [12]  793 	inc	r7
      002276                        794 00201$:
      002276 78 45            [12]  795 	mov	r0,#(_generation + 0x0002)
      002278 A6 06            [24]  796 	mov	@r0,ar6
      00227A 08               [12]  797 	inc	r0
      00227B A6 07            [24]  798 	mov	@r0,ar7
                                    799 ;	life.c:83: updategen();
      00227D                        800 00102$:
                                    801 ;	life.c:86: for (x = 0; x < W; x++) {
      00227D 78 33            [12]  802 	mov	r0,#_x
      00227F E4               [12]  803 	clr	a
      002280 F6               [12]  804 	mov	@r0,a
      002281 08               [12]  805 	inc	r0
      002282 F6               [12]  806 	mov	@r0,a
      002283                        807 00131$:
                                    808 ;	life.c:87: for (y = 0; y < H; y++)
      002283 78 35            [12]  809 	mov	r0,#_y
      002285 E4               [12]  810 	clr	a
      002286 F6               [12]  811 	mov	@r0,a
      002287 08               [12]  812 	inc	r0
      002288 F6               [12]  813 	mov	@r0,a
      002289                        814 00126$:
                                    815 ;	life.c:88: if (u[A2D(W, y, x)]) {
      002289 78 35            [12]  816 	mov	r0,#_y
      00228B 86 06            [24]  817 	mov	ar6,@r0
      00228D 08               [12]  818 	inc	r0
      00228E E6               [12]  819 	mov	a,@r0
      00228F C4               [12]  820 	swap	a
      002290 23               [12]  821 	rl	a
      002291 54 E0            [12]  822 	anl	a,#0xe0
      002293 CE               [12]  823 	xch	a,r6
      002294 C4               [12]  824 	swap	a
      002295 23               [12]  825 	rl	a
      002296 CE               [12]  826 	xch	a,r6
      002297 6E               [12]  827 	xrl	a,r6
      002298 CE               [12]  828 	xch	a,r6
      002299 54 E0            [12]  829 	anl	a,#0xe0
      00229B CE               [12]  830 	xch	a,r6
      00229C 6E               [12]  831 	xrl	a,r6
      00229D FF               [12]  832 	mov	r7,a
      00229E 78 33            [12]  833 	mov	r0,#_x
      0022A0 E6               [12]  834 	mov	a,@r0
      0022A1 2E               [12]  835 	add	a,r6
      0022A2 FE               [12]  836 	mov	r6,a
      0022A3 08               [12]  837 	inc	r0
      0022A4 E6               [12]  838 	mov	a,@r0
      0022A5 3F               [12]  839 	addc	a,r7
      0022A6 FF               [12]  840 	mov	r7,a
      0022A7 EE               [12]  841 	mov	a,r6
      0022A8 24 00            [12]  842 	add	a,#_u
      0022AA FE               [12]  843 	mov	r6,a
      0022AB EF               [12]  844 	mov	a,r7
      0022AC 34 48            [12]  845 	addc	a,#(_u >> 8)
      0022AE FF               [12]  846 	mov	r7,a
      0022AF 8E 82            [24]  847 	mov	dpl,r6
      0022B1 8F 83            [24]  848 	mov	dph,r7
      0022B3 E0               [24]  849 	movx	a,@dptr
      0022B4 60 0E            [24]  850 	jz	00104$
                                    851 ;	life.c:89: putchar('['); putchar(']');
      0022B6 90 00 5B         [24]  852 	mov	dptr,#0x005b
      0022B9 12 2B 83         [24]  853 	lcall	_putchar
      0022BC 90 00 5D         [24]  854 	mov	dptr,#0x005d
      0022BF 12 2B 83         [24]  855 	lcall	_putchar
      0022C2 80 0C            [24]  856 	sjmp	00127$
      0022C4                        857 00104$:
                                    858 ;	life.c:91: putchar('#'); putchar('#');
      0022C4 90 00 23         [24]  859 	mov	dptr,#0x0023
      0022C7 12 2B 83         [24]  860 	lcall	_putchar
      0022CA 90 00 23         [24]  861 	mov	dptr,#0x0023
      0022CD 12 2B 83         [24]  862 	lcall	_putchar
      0022D0                        863 00127$:
                                    864 ;	life.c:87: for (y = 0; y < H; y++)
      0022D0 78 35            [12]  865 	mov	r0,#_y
      0022D2 06               [12]  866 	inc	@r0
      0022D3 B6 00 02         [24]  867 	cjne	@r0,#0x00,00203$
      0022D6 08               [12]  868 	inc	r0
      0022D7 06               [12]  869 	inc	@r0
      0022D8                        870 00203$:
      0022D8 78 35            [12]  871 	mov	r0,#_y
      0022DA C3               [12]  872 	clr	c
      0022DB E6               [12]  873 	mov	a,@r0
      0022DC 94 40            [12]  874 	subb	a,#0x40
      0022DE 08               [12]  875 	inc	r0
      0022DF E6               [12]  876 	mov	a,@r0
      0022E0 64 80            [12]  877 	xrl	a,#0x80
      0022E2 94 80            [12]  878 	subb	a,#0x80
      0022E4 40 A3            [24]  879 	jc	00126$
                                    880 ;	life.c:93: printstr("\r\n");
      0022E6 7D 0C            [12]  881 	mov	r5,#___str_1
      0022E8 7E 2E            [12]  882 	mov	r6,#(___str_1 >> 8)
      0022EA 7F 80            [12]  883 	mov	r7,#0x80
                                    884 ;	life.c:31: return;
      0022EC                        885 00129$:
                                    886 ;	life.c:29: for (; *s; s++) putchar(*s);
      0022EC 8D 82            [24]  887 	mov	dpl,r5
      0022EE 8E 83            [24]  888 	mov	dph,r6
      0022F0 8F F0            [24]  889 	mov	b,r7
      0022F2 12 2C D8         [24]  890 	lcall	__gptrget
      0022F5 FC               [12]  891 	mov	r4,a
      0022F6 60 1C            [24]  892 	jz	00119$
      0022F8 7B 00            [12]  893 	mov	r3,#0x00
      0022FA 8C 82            [24]  894 	mov	dpl,r4
      0022FC 8B 83            [24]  895 	mov	dph,r3
      0022FE C0 07            [24]  896 	push	ar7
      002300 C0 06            [24]  897 	push	ar6
      002302 C0 05            [24]  898 	push	ar5
      002304 12 2B 83         [24]  899 	lcall	_putchar
      002307 D0 05            [24]  900 	pop	ar5
      002309 D0 06            [24]  901 	pop	ar6
      00230B D0 07            [24]  902 	pop	ar7
      00230D 0D               [12]  903 	inc	r5
                                    904 ;	life.c:93: printstr("\r\n");
      00230E BD 00 DB         [24]  905 	cjne	r5,#0x00,00129$
      002311 0E               [12]  906 	inc	r6
      002312 80 D8            [24]  907 	sjmp	00129$
      002314                        908 00119$:
                                    909 ;	life.c:86: for (x = 0; x < W; x++) {
      002314 78 33            [12]  910 	mov	r0,#_x
      002316 06               [12]  911 	inc	@r0
      002317 B6 00 02         [24]  912 	cjne	@r0,#0x00,00207$
      00231A 08               [12]  913 	inc	r0
      00231B 06               [12]  914 	inc	@r0
      00231C                        915 00207$:
      00231C 78 33            [12]  916 	mov	r0,#_x
      00231E C3               [12]  917 	clr	c
      00231F E6               [12]  918 	mov	a,@r0
      002320 94 20            [12]  919 	subb	a,#0x20
      002322 08               [12]  920 	inc	r0
      002323 E6               [12]  921 	mov	a,@r0
      002324 64 80            [12]  922 	xrl	a,#0x80
      002326 94 80            [12]  923 	subb	a,#0x80
      002328 50 03            [24]  924 	jnc	00208$
      00232A 02 22 83         [24]  925 	ljmp	00131$
      00232D                        926 00208$:
                                    927 ;	life.c:96: return;
                                    928 ;	life.c:97: }
      00232D 22               [24]  929 	ret
                                    930 ;------------------------------------------------------------
                                    931 ;Allocation info for local variables in function 'main'
                                    932 ;------------------------------------------------------------
                                    933 ;__2621440019              Allocated to registers 
                                    934 ;s                         Allocated to registers r5 r6 r7 
                                    935 ;__1310720013              Allocated to registers 
                                    936 ;s                         Allocated to registers r5 r6 r7 
                                    937 ;__1310720015              Allocated to registers r6 r7 
                                    938 ;a                         Allocated to registers r4 r5 
                                    939 ;__1310720017              Allocated to registers 
                                    940 ;s                         Allocated to registers r5 r6 r7 
                                    941 ;__2621440023              Allocated to registers 
                                    942 ;s                         Allocated to registers r5 r6 r7 
                                    943 ;__4587520027              Allocated to registers 
                                    944 ;s                         Allocated to registers r5 r6 r7 
                                    945 ;__4587520029              Allocated to registers 
                                    946 ;s                         Allocated to registers r5 r6 r7 
                                    947 ;__4587520031              Allocated to registers 
                                    948 ;s                         Allocated to registers r5 r6 r7 
                                    949 ;__3276800033              Allocated to registers 
                                    950 ;s                         Allocated to registers r5 r6 r7 
                                    951 ;__1310720035              Allocated to registers 
                                    952 ;s                         Allocated to registers r5 r6 r7 
                                    953 ;sloc0                     Allocated to stack - _bp +1
                                    954 ;sloc1                     Allocated to stack - _bp +3
                                    955 ;sloc2                     Allocated to stack - _bp +5
                                    956 ;sloc3                     Allocated to stack - _bp +7
                                    957 ;sloc4                     Allocated to stack - _bp +9
                                    958 ;sloc5                     Allocated to stack - _bp +11
                                    959 ;sloc6                     Allocated to stack - _bp +13
                                    960 ;------------------------------------------------------------
                                    961 ;	life.c:188: void main(void) {
                                    962 ;	-----------------------------------------
                                    963 ;	 function main
                                    964 ;	-----------------------------------------
      00232E                        965 _main:
      00232E C0 10            [24]  966 	push	_bp
      002330 E5 81            [12]  967 	mov	a,sp
      002332 F5 10            [12]  968 	mov	_bp,a
      002334 24 0E            [12]  969 	add	a,#0x0e
      002336 F5 81            [12]  970 	mov	sp,a
                                    971 ;	life.c:189: IT0 = 1;
                                    972 ;	assignBit
      002338 D2 88            [12]  973 	setb	_IT0
                                    974 ;	life.c:190: IT1 = 1;
                                    975 ;	assignBit
      00233A D2 8A            [12]  976 	setb	_IT1
                                    977 ;	life.c:191: EX0 = 1;
                                    978 ;	assignBit
      00233C D2 A8            [12]  979 	setb	_EX0
                                    980 ;	life.c:192: EX1 = 1;
                                    981 ;	assignBit
      00233E D2 AA            [12]  982 	setb	_EX1
                                    983 ;	life.c:193: EA = 1;
                                    984 ;	assignBit
      002340 D2 AF            [12]  985 	setb	_EA
                                    986 ;	life.c:195: for (i0 = 0; !i0; ) {		
      002342 78 31            [12]  987 	mov	r0,#_i0
      002344 76 00            [12]  988 	mov	@r0,#0x00
      002346                        989 00247$:
                                    990 ;	life.c:196: printstr("\033[2J\033[mLIFE INIT\r\n");
      002346 7D 1A            [12]  991 	mov	r5,#___str_4
      002348 7E 2E            [12]  992 	mov	r6,#(___str_4 >> 8)
      00234A 7F 80            [12]  993 	mov	r7,#0x80
                                    994 ;	life.c:31: return;
      00234C                        995 00213$:
                                    996 ;	life.c:29: for (; *s; s++) putchar(*s);
      00234C 8D 82            [24]  997 	mov	dpl,r5
      00234E 8E 83            [24]  998 	mov	dph,r6
      002350 8F F0            [24]  999 	mov	b,r7
      002352 12 2C D8         [24] 1000 	lcall	__gptrget
      002355 FC               [12] 1001 	mov	r4,a
      002356 60 1C            [24] 1002 	jz	00108$
      002358 7B 00            [12] 1003 	mov	r3,#0x00
      00235A 8C 82            [24] 1004 	mov	dpl,r4
      00235C 8B 83            [24] 1005 	mov	dph,r3
      00235E C0 07            [24] 1006 	push	ar7
      002360 C0 06            [24] 1007 	push	ar6
      002362 C0 05            [24] 1008 	push	ar5
      002364 12 2B 83         [24] 1009 	lcall	_putchar
      002367 D0 05            [24] 1010 	pop	ar5
      002369 D0 06            [24] 1011 	pop	ar6
      00236B D0 07            [24] 1012 	pop	ar7
      00236D 0D               [12] 1013 	inc	r5
                                   1014 ;	life.c:197: while (1) {
      00236E BD 00 DB         [24] 1015 	cjne	r5,#0x00,00213$
      002371 0E               [12] 1016 	inc	r6
      002372 80 D8            [24] 1017 	sjmp	00213$
      002374                       1018 00108$:
                                   1019 ;	life.c:198: c = toupper(getchar());
      002374 12 2B 8D         [24] 1020 	lcall	_getchar
      002377 12 2C B1         [24] 1021 	lcall	_toupper
      00237A AE 82            [24] 1022 	mov	r6,dpl
      00237C AF 83            [24] 1023 	mov	r7,dph
      00237E 78 39            [12] 1024 	mov	r0,#_c
      002380 A6 06            [24] 1025 	mov	@r0,ar6
      002382 08               [12] 1026 	inc	r0
      002383 A6 07            [24] 1027 	mov	@r0,ar7
                                   1028 ;	life.c:199: if (i0 || (c == (int)'T')) goto terminate;
      002385 78 31            [12] 1029 	mov	r0,#_i0
      002387 E6               [12] 1030 	mov	a,@r0
      002388 60 03            [24] 1031 	jz	00462$
      00238A 02 2B 47         [24] 1032 	ljmp	00133$
      00238D                       1033 00462$:
      00238D BE 54 06         [24] 1034 	cjne	r6,#0x54,00463$
      002390 BF 00 03         [24] 1035 	cjne	r7,#0x00,00463$
      002393 02 2B 47         [24] 1036 	ljmp	00133$
      002396                       1037 00463$:
                                   1038 ;	life.c:200: else if (c == (int)'L') break;
      002396 BE 4C DB         [24] 1039 	cjne	r6,#0x4c,00108$
      002399 BF 00 D8         [24] 1040 	cjne	r7,#0x00,00108$
                                   1041 ;	life.c:203: reload:
      00239C                       1042 00110$:
                                   1043 ;	life.c:100: memset(u, 0, sizeof (u));
      00239C E4               [12] 1044 	clr	a
      00239D C0 E0            [24] 1045 	push	acc
      00239F 74 08            [12] 1046 	mov	a,#0x08
      0023A1 C0 E0            [24] 1047 	push	acc
      0023A3 E4               [12] 1048 	clr	a
      0023A4 C0 E0            [24] 1049 	push	acc
      0023A6 90 48 00         [24] 1050 	mov	dptr,#_u
      0023A9 75 F0 00         [24] 1051 	mov	b,#0x00
      0023AC 12 2C 47         [24] 1052 	lcall	_memset
      0023AF 15 81            [12] 1053 	dec	sp
      0023B1 15 81            [12] 1054 	dec	sp
      0023B3 15 81            [12] 1055 	dec	sp
                                   1056 ;	life.c:101: memset(pu, 0, sizeof (pu));
      0023B5 E4               [12] 1057 	clr	a
      0023B6 C0 E0            [24] 1058 	push	acc
      0023B8 74 08            [12] 1059 	mov	a,#0x08
      0023BA C0 E0            [24] 1060 	push	acc
      0023BC E4               [12] 1061 	clr	a
      0023BD C0 E0            [24] 1062 	push	acc
      0023BF 90 40 00         [24] 1063 	mov	dptr,#_pu
      0023C2 75 F0 00         [24] 1064 	mov	b,#0x00
      0023C5 12 2C 47         [24] 1065 	lcall	_memset
      0023C8 15 81            [12] 1066 	dec	sp
      0023CA 15 81            [12] 1067 	dec	sp
      0023CC 15 81            [12] 1068 	dec	sp
                                   1069 ;	life.c:107: j = 0;
      0023CE 78 37            [12] 1070 	mov	r0,#_j
      0023D0 E4               [12] 1071 	clr	a
      0023D1 F6               [12] 1072 	mov	@r0,a
      0023D2 08               [12] 1073 	inc	r0
      0023D3 F6               [12] 1074 	mov	@r0,a
                                   1075 ;	life.c:109: printstr("LOAD <");
      0023D4 7D 0F            [12] 1076 	mov	r5,#___str_2
      0023D6 7E 2E            [12] 1077 	mov	r6,#(___str_2 >> 8)
      0023D8 7F 80            [12] 1078 	mov	r7,#0x80
                                   1079 ;	life.c:31: return;
      0023DA                       1080 00216$:
                                   1081 ;	life.c:29: for (; *s; s++) putchar(*s);
      0023DA 8D 82            [24] 1082 	mov	dpl,r5
      0023DC 8E 83            [24] 1083 	mov	dph,r6
      0023DE 8F F0            [24] 1084 	mov	b,r7
      0023E0 12 2C D8         [24] 1085 	lcall	__gptrget
      0023E3 FC               [12] 1086 	mov	r4,a
      0023E4 60 1C            [24] 1087 	jz	00138$
      0023E6 7B 00            [12] 1088 	mov	r3,#0x00
      0023E8 8C 82            [24] 1089 	mov	dpl,r4
      0023EA 8B 83            [24] 1090 	mov	dph,r3
      0023EC C0 07            [24] 1091 	push	ar7
      0023EE C0 06            [24] 1092 	push	ar6
      0023F0 C0 05            [24] 1093 	push	ar5
      0023F2 12 2B 83         [24] 1094 	lcall	_putchar
      0023F5 D0 05            [24] 1095 	pop	ar5
      0023F7 D0 06            [24] 1096 	pop	ar6
      0023F9 D0 07            [24] 1097 	pop	ar7
      0023FB 0D               [12] 1098 	inc	r5
                                   1099 ;	life.c:109: printstr("LOAD <");
      0023FC BD 00 DB         [24] 1100 	cjne	r5,#0x00,00216$
      0023FF 0E               [12] 1101 	inc	r6
      002400 80 D8            [24] 1102 	sjmp	00216$
      002402                       1103 00138$:
                                   1104 ;	life.c:111: for (y = 0; y < H; y++) {
      002402 78 35            [12] 1105 	mov	r0,#_y
      002404 E4               [12] 1106 	clr	a
      002405 F6               [12] 1107 	mov	@r0,a
      002406 08               [12] 1108 	inc	r0
      002407 F6               [12] 1109 	mov	@r0,a
      002408                       1110 00219$:
                                   1111 ;	life.c:112: for (x = 0; x < W; x++) {
      002408 78 33            [12] 1112 	mov	r0,#_x
      00240A E4               [12] 1113 	clr	a
      00240B F6               [12] 1114 	mov	@r0,a
      00240C 08               [12] 1115 	inc	r0
      00240D F6               [12] 1116 	mov	@r0,a
                                   1117 ;	life.c:113: while (1) {
      00240E                       1118 00151$:
                                   1119 ;	life.c:114: c = toupper(getchar());
      00240E 12 2B 8D         [24] 1120 	lcall	_getchar
      002411 12 2C B1         [24] 1121 	lcall	_toupper
      002414 AE 82            [24] 1122 	mov	r6,dpl
      002416 AF 83            [24] 1123 	mov	r7,dph
      002418 78 39            [12] 1124 	mov	r0,#_c
      00241A A6 06            [24] 1125 	mov	@r0,ar6
      00241C 08               [12] 1126 	inc	r0
      00241D A6 07            [24] 1127 	mov	@r0,ar7
                                   1128 ;	life.c:115: if (c == (int)'0') {
      00241F BE 30 37         [24] 1129 	cjne	r6,#0x30,00149$
      002422 BF 00 34         [24] 1130 	cjne	r7,#0x00,00149$
                                   1131 ;	life.c:116: u[A2D(W, y, x)] = 0;
      002425 78 35            [12] 1132 	mov	r0,#_y
      002427 86 04            [24] 1133 	mov	ar4,@r0
      002429 08               [12] 1134 	inc	r0
      00242A E6               [12] 1135 	mov	a,@r0
      00242B C4               [12] 1136 	swap	a
      00242C 23               [12] 1137 	rl	a
      00242D 54 E0            [12] 1138 	anl	a,#0xe0
      00242F CC               [12] 1139 	xch	a,r4
      002430 C4               [12] 1140 	swap	a
      002431 23               [12] 1141 	rl	a
      002432 CC               [12] 1142 	xch	a,r4
      002433 6C               [12] 1143 	xrl	a,r4
      002434 CC               [12] 1144 	xch	a,r4
      002435 54 E0            [12] 1145 	anl	a,#0xe0
      002437 CC               [12] 1146 	xch	a,r4
      002438 6C               [12] 1147 	xrl	a,r4
      002439 FD               [12] 1148 	mov	r5,a
      00243A 78 33            [12] 1149 	mov	r0,#_x
      00243C E6               [12] 1150 	mov	a,@r0
      00243D 2C               [12] 1151 	add	a,r4
      00243E FC               [12] 1152 	mov	r4,a
      00243F 08               [12] 1153 	inc	r0
      002440 E6               [12] 1154 	mov	a,@r0
      002441 3D               [12] 1155 	addc	a,r5
      002442 FD               [12] 1156 	mov	r5,a
      002443 EC               [12] 1157 	mov	a,r4
      002444 24 00            [12] 1158 	add	a,#_u
      002446 F5 82            [12] 1159 	mov	dpl,a
      002448 ED               [12] 1160 	mov	a,r5
      002449 34 48            [12] 1161 	addc	a,#(_u >> 8)
      00244B F5 83            [12] 1162 	mov	dph,a
      00244D E4               [12] 1163 	clr	a
      00244E F0               [24] 1164 	movx	@dptr,a
                                   1165 ;	life.c:117: j++;
      00244F 78 37            [12] 1166 	mov	r0,#_j
      002451 06               [12] 1167 	inc	@r0
      002452 B6 00 02         [24] 1168 	cjne	@r0,#0x00,00470$
      002455 08               [12] 1169 	inc	r0
      002456 06               [12] 1170 	inc	@r0
      002457                       1171 00470$:
                                   1172 ;	life.c:118: break;
      002457 80 4E            [24] 1173 	sjmp	00154$
      002459                       1174 00149$:
                                   1175 ;	life.c:119: } else if (c == (int)'1') {
      002459 BE 31 38         [24] 1176 	cjne	r6,#0x31,00147$
      00245C BF 00 35         [24] 1177 	cjne	r7,#0x00,00147$
                                   1178 ;	life.c:120: u[A2D(W, y, x)] = 1;
      00245F 78 35            [12] 1179 	mov	r0,#_y
      002461 86 04            [24] 1180 	mov	ar4,@r0
      002463 08               [12] 1181 	inc	r0
      002464 E6               [12] 1182 	mov	a,@r0
      002465 C4               [12] 1183 	swap	a
      002466 23               [12] 1184 	rl	a
      002467 54 E0            [12] 1185 	anl	a,#0xe0
      002469 CC               [12] 1186 	xch	a,r4
      00246A C4               [12] 1187 	swap	a
      00246B 23               [12] 1188 	rl	a
      00246C CC               [12] 1189 	xch	a,r4
      00246D 6C               [12] 1190 	xrl	a,r4
      00246E CC               [12] 1191 	xch	a,r4
      00246F 54 E0            [12] 1192 	anl	a,#0xe0
      002471 CC               [12] 1193 	xch	a,r4
      002472 6C               [12] 1194 	xrl	a,r4
      002473 FD               [12] 1195 	mov	r5,a
      002474 78 33            [12] 1196 	mov	r0,#_x
      002476 E6               [12] 1197 	mov	a,@r0
      002477 2C               [12] 1198 	add	a,r4
      002478 FC               [12] 1199 	mov	r4,a
      002479 08               [12] 1200 	inc	r0
      00247A E6               [12] 1201 	mov	a,@r0
      00247B 3D               [12] 1202 	addc	a,r5
      00247C FD               [12] 1203 	mov	r5,a
      00247D EC               [12] 1204 	mov	a,r4
      00247E 24 00            [12] 1205 	add	a,#_u
      002480 F5 82            [12] 1206 	mov	dpl,a
      002482 ED               [12] 1207 	mov	a,r5
      002483 34 48            [12] 1208 	addc	a,#(_u >> 8)
      002485 F5 83            [12] 1209 	mov	dph,a
      002487 74 01            [12] 1210 	mov	a,#0x01
      002489 F0               [24] 1211 	movx	@dptr,a
                                   1212 ;	life.c:121: j++;
      00248A 78 37            [12] 1213 	mov	r0,#_j
      00248C 06               [12] 1214 	inc	@r0
      00248D B6 00 02         [24] 1215 	cjne	@r0,#0x00,00473$
      002490 08               [12] 1216 	inc	r0
      002491 06               [12] 1217 	inc	@r0
      002492                       1218 00473$:
                                   1219 ;	life.c:122: break;
      002492 80 13            [24] 1220 	sjmp	00154$
      002494                       1221 00147$:
                                   1222 ;	life.c:123: } else if (c == (int)'S') goto br_inner;
      002494 BE 53 05         [24] 1223 	cjne	r6,#0x53,00474$
      002497 BF 00 02         [24] 1224 	cjne	r7,#0x00,00474$
      00249A 80 24            [24] 1225 	sjmp	00220$
      00249C                       1226 00474$:
                                   1227 ;	life.c:124: else if (c == (int)'#') goto out;
      00249C BE 23 05         [24] 1228 	cjne	r6,#0x23,00475$
      00249F BF 00 02         [24] 1229 	cjne	r7,#0x00,00475$
      0024A2 80 35            [24] 1230 	sjmp	00164$
      0024A4                       1231 00475$:
      0024A4 02 24 0E         [24] 1232 	ljmp	00151$
                                   1233 ;	life.c:128: break;
      0024A7                       1234 00154$:
                                   1235 ;	life.c:112: for (x = 0; x < W; x++) {
      0024A7 78 33            [12] 1236 	mov	r0,#_x
      0024A9 06               [12] 1237 	inc	@r0
      0024AA B6 00 02         [24] 1238 	cjne	@r0,#0x00,00476$
      0024AD 08               [12] 1239 	inc	r0
      0024AE 06               [12] 1240 	inc	@r0
      0024AF                       1241 00476$:
      0024AF 78 33            [12] 1242 	mov	r0,#_x
      0024B1 C3               [12] 1243 	clr	c
      0024B2 E6               [12] 1244 	mov	a,@r0
      0024B3 94 20            [12] 1245 	subb	a,#0x20
      0024B5 08               [12] 1246 	inc	r0
      0024B6 E6               [12] 1247 	mov	a,@r0
      0024B7 64 80            [12] 1248 	xrl	a,#0x80
      0024B9 94 80            [12] 1249 	subb	a,#0x80
      0024BB 50 03            [24] 1250 	jnc	00477$
      0024BD 02 24 0E         [24] 1251 	ljmp	00151$
      0024C0                       1252 00477$:
      0024C0                       1253 00220$:
                                   1254 ;	life.c:111: for (y = 0; y < H; y++) {
      0024C0 78 35            [12] 1255 	mov	r0,#_y
      0024C2 06               [12] 1256 	inc	@r0
      0024C3 B6 00 02         [24] 1257 	cjne	@r0,#0x00,00478$
      0024C6 08               [12] 1258 	inc	r0
      0024C7 06               [12] 1259 	inc	@r0
      0024C8                       1260 00478$:
      0024C8 78 35            [12] 1261 	mov	r0,#_y
      0024CA C3               [12] 1262 	clr	c
      0024CB E6               [12] 1263 	mov	a,@r0
      0024CC 94 40            [12] 1264 	subb	a,#0x40
      0024CE 08               [12] 1265 	inc	r0
      0024CF E6               [12] 1266 	mov	a,@r0
      0024D0 64 80            [12] 1267 	xrl	a,#0x80
      0024D2 94 80            [12] 1268 	subb	a,#0x80
      0024D4 50 03            [24] 1269 	jnc	00479$
      0024D6 02 24 08         [24] 1270 	ljmp	00219$
      0024D9                       1271 00479$:
                                   1272 ;	life.c:132: out:
      0024D9                       1273 00164$:
                                   1274 ;	life.c:133: if (c != (int)'#')
      0024D9 BE 23 05         [24] 1275 	cjne	r6,#0x23,00480$
      0024DC BF 00 02         [24] 1276 	cjne	r7,#0x00,00480$
      0024DF 80 14            [24] 1277 	sjmp	00163$
      0024E1                       1278 00480$:
                                   1279 ;	life.c:134: while (1) {
      0024E1                       1280 00160$:
                                   1281 ;	life.c:135: c = getchar();
      0024E1 12 2B 8D         [24] 1282 	lcall	_getchar
      0024E4 AE 82            [24] 1283 	mov	r6,dpl
      0024E6 AF 83            [24] 1284 	mov	r7,dph
      0024E8 78 39            [12] 1285 	mov	r0,#_c
      0024EA A6 06            [24] 1286 	mov	@r0,ar6
      0024EC 08               [12] 1287 	inc	r0
      0024ED A6 07            [24] 1288 	mov	@r0,ar7
                                   1289 ;	life.c:136: if (c == (int)'#') break;
      0024EF BE 23 EF         [24] 1290 	cjne	r6,#0x23,00160$
      0024F2 BF 00 EC         [24] 1291 	cjne	r7,#0x00,00160$
      0024F5                       1292 00163$:
                                   1293 ;	life.c:138: print16x(j);
      0024F5 78 37            [12] 1294 	mov	r0,#_j
      0024F7 86 06            [24] 1295 	mov	ar6,@r0
      0024F9 08               [12] 1296 	inc	r0
      0024FA 86 07            [24] 1297 	mov	ar7,@r0
      0024FC 8E 04            [24] 1298 	mov	ar4,r6
                                   1299 ;	life.c:20: putchar(digits[(a >> 12) & 0xf]);
      0024FE EF               [12] 1300 	mov	a,r7
      0024FF FD               [12] 1301 	mov	r5,a
      002500 C4               [12] 1302 	swap	a
      002501 54 0F            [12] 1303 	anl	a,#0x0f
      002503 30 E3 02         [24] 1304 	jnb	acc.3,00483$
      002506 44 F0            [12] 1305 	orl	a,#0xf0
      002508                       1306 00483$:
      002508 FE               [12] 1307 	mov	r6,a
      002509 33               [12] 1308 	rlc	a
      00250A 95 E0            [12] 1309 	subb	a,acc
      00250C 53 06 0F         [24] 1310 	anl	ar6,#0x0f
      00250F EE               [12] 1311 	mov	a,r6
      002510 24 21            [12] 1312 	add	a,#_digits
      002512 F9               [12] 1313 	mov	r1,a
      002513 87 07            [24] 1314 	mov	ar7,@r1
      002515 7E 00            [12] 1315 	mov	r6,#0x00
      002517 8F 82            [24] 1316 	mov	dpl,r7
      002519 8E 83            [24] 1317 	mov	dph,r6
      00251B C0 05            [24] 1318 	push	ar5
      00251D C0 04            [24] 1319 	push	ar4
      00251F 12 2B 83         [24] 1320 	lcall	_putchar
      002522 D0 04            [24] 1321 	pop	ar4
      002524 D0 05            [24] 1322 	pop	ar5
                                   1323 ;	life.c:21: putchar(digits[(a >> 8) & 0xf]);
      002526 8D 07            [24] 1324 	mov	ar7,r5
      002528 53 07 0F         [24] 1325 	anl	ar7,#0x0f
      00252B EF               [12] 1326 	mov	a,r7
      00252C 24 21            [12] 1327 	add	a,#_digits
      00252E F9               [12] 1328 	mov	r1,a
      00252F 87 07            [24] 1329 	mov	ar7,@r1
      002531 7E 00            [12] 1330 	mov	r6,#0x00
      002533 8F 82            [24] 1331 	mov	dpl,r7
      002535 8E 83            [24] 1332 	mov	dph,r6
      002537 C0 05            [24] 1333 	push	ar5
      002539 C0 04            [24] 1334 	push	ar4
      00253B 12 2B 83         [24] 1335 	lcall	_putchar
      00253E D0 04            [24] 1336 	pop	ar4
      002540 D0 05            [24] 1337 	pop	ar5
                                   1338 ;	life.c:22: putchar(digits[(a >> 4) & 0xf]);
      002542 8C 06            [24] 1339 	mov	ar6,r4
      002544 ED               [12] 1340 	mov	a,r5
      002545 C4               [12] 1341 	swap	a
      002546 CE               [12] 1342 	xch	a,r6
      002547 C4               [12] 1343 	swap	a
      002548 54 0F            [12] 1344 	anl	a,#0x0f
      00254A 6E               [12] 1345 	xrl	a,r6
      00254B CE               [12] 1346 	xch	a,r6
      00254C 54 0F            [12] 1347 	anl	a,#0x0f
      00254E CE               [12] 1348 	xch	a,r6
      00254F 6E               [12] 1349 	xrl	a,r6
      002550 CE               [12] 1350 	xch	a,r6
      002551 30 E3 02         [24] 1351 	jnb	acc.3,00484$
      002554 44 F0            [12] 1352 	orl	a,#0xf0
      002556                       1353 00484$:
      002556 53 06 0F         [24] 1354 	anl	ar6,#0x0f
      002559 EE               [12] 1355 	mov	a,r6
      00255A 24 21            [12] 1356 	add	a,#_digits
      00255C F9               [12] 1357 	mov	r1,a
      00255D 87 07            [24] 1358 	mov	ar7,@r1
      00255F 7E 00            [12] 1359 	mov	r6,#0x00
      002561 8F 82            [24] 1360 	mov	dpl,r7
      002563 8E 83            [24] 1361 	mov	dph,r6
      002565 C0 05            [24] 1362 	push	ar5
      002567 C0 04            [24] 1363 	push	ar4
      002569 12 2B 83         [24] 1364 	lcall	_putchar
      00256C D0 04            [24] 1365 	pop	ar4
      00256E D0 05            [24] 1366 	pop	ar5
                                   1367 ;	life.c:23: putchar(digits[a & 0xf]);
      002570 53 04 0F         [24] 1368 	anl	ar4,#0x0f
      002573 EC               [12] 1369 	mov	a,r4
      002574 24 21            [12] 1370 	add	a,#_digits
      002576 F9               [12] 1371 	mov	r1,a
      002577 87 07            [24] 1372 	mov	ar7,@r1
      002579 7E 00            [12] 1373 	mov	r6,#0x00
      00257B 8F 82            [24] 1374 	mov	dpl,r7
      00257D 8E 83            [24] 1375 	mov	dph,r6
      00257F 12 2B 83         [24] 1376 	lcall	_putchar
                                   1377 ;	life.c:139: printstr(">\r\n");
      002582 7D 16            [12] 1378 	mov	r5,#___str_3
      002584 7E 2E            [12] 1379 	mov	r6,#(___str_3 >> 8)
      002586 7F 80            [12] 1380 	mov	r7,#0x80
                                   1381 ;	life.c:31: return;
      002588                       1382 00222$:
                                   1383 ;	life.c:29: for (; *s; s++) putchar(*s);
      002588 8D 82            [24] 1384 	mov	dpl,r5
      00258A 8E 83            [24] 1385 	mov	dph,r6
      00258C 8F F0            [24] 1386 	mov	b,r7
      00258E 12 2C D8         [24] 1387 	lcall	__gptrget
      002591 FC               [12] 1388 	mov	r4,a
      002592 60 1C            [24] 1389 	jz	00167$
      002594 7B 00            [12] 1390 	mov	r3,#0x00
      002596 8C 82            [24] 1391 	mov	dpl,r4
      002598 8B 83            [24] 1392 	mov	dph,r3
      00259A C0 07            [24] 1393 	push	ar7
      00259C C0 06            [24] 1394 	push	ar6
      00259E C0 05            [24] 1395 	push	ar5
      0025A0 12 2B 83         [24] 1396 	lcall	_putchar
      0025A3 D0 05            [24] 1397 	pop	ar5
      0025A5 D0 06            [24] 1398 	pop	ar6
      0025A7 D0 07            [24] 1399 	pop	ar7
      0025A9 0D               [12] 1400 	inc	r5
                                   1401 ;	life.c:139: printstr(">\r\n");
      0025AA BD 00 DB         [24] 1402 	cjne	r5,#0x00,00222$
      0025AD 0E               [12] 1403 	inc	r6
      0025AE 80 D8            [24] 1404 	sjmp	00222$
      0025B0                       1405 00167$:
                                   1406 ;	life.c:206: show(0);
      0025B0 75 82 00         [24] 1407 	mov	dpl,#0x00
      0025B3 12 20 DD         [24] 1408 	lcall	_show
                                   1409 ;	life.c:208: printstr("READY\r\n");
      0025B6 7D 2D            [12] 1410 	mov	r5,#___str_5
      0025B8 7E 2E            [12] 1411 	mov	r6,#(___str_5 >> 8)
      0025BA 7F 80            [12] 1412 	mov	r7,#0x80
                                   1413 ;	life.c:31: return;
      0025BC                       1414 00225$:
                                   1415 ;	life.c:29: for (; *s; s++) putchar(*s);
      0025BC 8D 82            [24] 1416 	mov	dpl,r5
      0025BE 8E 83            [24] 1417 	mov	dph,r6
      0025C0 8F F0            [24] 1418 	mov	b,r7
      0025C2 12 2C D8         [24] 1419 	lcall	__gptrget
      0025C5 FC               [12] 1420 	mov	r4,a
      0025C6 60 1C            [24] 1421 	jz	00121$
      0025C8 7B 00            [12] 1422 	mov	r3,#0x00
      0025CA 8C 82            [24] 1423 	mov	dpl,r4
      0025CC 8B 83            [24] 1424 	mov	dph,r3
      0025CE C0 07            [24] 1425 	push	ar7
      0025D0 C0 06            [24] 1426 	push	ar6
      0025D2 C0 05            [24] 1427 	push	ar5
      0025D4 12 2B 83         [24] 1428 	lcall	_putchar
      0025D7 D0 05            [24] 1429 	pop	ar5
      0025D9 D0 06            [24] 1430 	pop	ar6
      0025DB D0 07            [24] 1431 	pop	ar7
      0025DD 0D               [12] 1432 	inc	r5
                                   1433 ;	life.c:209: while (1) {
      0025DE BD 00 DB         [24] 1434 	cjne	r5,#0x00,00225$
      0025E1 0E               [12] 1435 	inc	r6
      0025E2 80 D8            [24] 1436 	sjmp	00225$
      0025E4                       1437 00121$:
                                   1438 ;	life.c:210: c = toupper(getchar());
      0025E4 12 2B 8D         [24] 1439 	lcall	_getchar
      0025E7 12 2C B1         [24] 1440 	lcall	_toupper
      0025EA AE 82            [24] 1441 	mov	r6,dpl
      0025EC AF 83            [24] 1442 	mov	r7,dph
      0025EE 78 39            [12] 1443 	mov	r0,#_c
      0025F0 A6 06            [24] 1444 	mov	@r0,ar6
      0025F2 08               [12] 1445 	inc	r0
      0025F3 A6 07            [24] 1446 	mov	@r0,ar7
                                   1447 ;	life.c:211: if (i0 || (c == (int)'T')) goto terminate;
      0025F5 78 31            [12] 1448 	mov	r0,#_i0
      0025F7 E6               [12] 1449 	mov	a,@r0
      0025F8 60 03            [24] 1450 	jz	00489$
      0025FA 02 2B 47         [24] 1451 	ljmp	00133$
      0025FD                       1452 00489$:
      0025FD BE 54 06         [24] 1453 	cjne	r6,#0x54,00490$
      002600 BF 00 03         [24] 1454 	cjne	r7,#0x00,00490$
      002603 02 2B 47         [24] 1455 	ljmp	00133$
      002606                       1456 00490$:
                                   1457 ;	life.c:212: else if (c == (int)'L') goto reload;
      002606 BE 4C 06         [24] 1458 	cjne	r6,#0x4c,00491$
      002609 BF 00 03         [24] 1459 	cjne	r7,#0x00,00491$
      00260C 02 23 9C         [24] 1460 	ljmp	00110$
      00260F                       1461 00491$:
                                   1462 ;	life.c:213: else if (c == (int)'S') break;
      00260F BE 53 D2         [24] 1463 	cjne	r6,#0x53,00121$
      002612 BF 00 CF         [24] 1464 	cjne	r7,#0x00,00121$
                                   1465 ;	life.c:58: generation[0] = 0;
      002615 78 43            [12] 1466 	mov	r0,#_generation
      002617 76 00            [12] 1467 	mov	@r0,#0x00
      002619 08               [12] 1468 	inc	r0
      00261A 76 00            [12] 1469 	mov	@r0,#0x00
                                   1470 ;	life.c:59: generation[1] = 0;
      00261C 78 45            [12] 1471 	mov	r0,#(_generation + 0x0002)
      00261E 76 00            [12] 1472 	mov	@r0,#0x00
      002620 08               [12] 1473 	inc	r0
      002621 76 00            [12] 1474 	mov	@r0,#0x00
                                   1475 ;	life.c:218: for (i1 = 0; !i0 && !i1; ) {
      002623 78 32            [12] 1476 	mov	r0,#_i1
      002625 76 00            [12] 1477 	mov	@r0,#0x00
      002627                       1478 00242$:
      002627 78 31            [12] 1479 	mov	r0,#_i0
      002629 E6               [12] 1480 	mov	a,@r0
      00262A 60 03            [24] 1481 	jz	00494$
      00262C 02 2B 09         [24] 1482 	ljmp	00129$
      00262F                       1483 00494$:
      00262F 78 32            [12] 1484 	mov	r0,#_i1
      002631 E6               [12] 1485 	mov	a,@r0
      002632 60 03            [24] 1486 	jz	00495$
      002634 02 2B 09         [24] 1487 	ljmp	00129$
      002637                       1488 00495$:
                                   1489 ;	life.c:219: show(1);
      002637 75 82 01         [24] 1490 	mov	dpl,#0x01
      00263A 12 20 DD         [24] 1491 	lcall	_show
                                   1492 ;	life.c:147: fixed = 0;
      00263D 78 3D            [12] 1493 	mov	r0,#_fixed
      00263F 76 00            [12] 1494 	mov	@r0,#0x00
                                   1495 ;	life.c:148: cycle2 = 0;
      002641 78 3E            [12] 1496 	mov	r0,#_cycle2
      002643 76 00            [12] 1497 	mov	@r0,#0x00
                                   1498 ;	life.c:149: bstep = 0;
      002645 78 3B            [12] 1499 	mov	r0,#_bstep
      002647 76 00            [12] 1500 	mov	@r0,#0x00
                                   1501 ;	life.c:151: for (y = 0; y < H; y++) {
      002649 78 35            [12] 1502 	mov	r0,#_y
      00264B E4               [12] 1503 	clr	a
      00264C F6               [12] 1504 	mov	@r0,a
      00264D 08               [12] 1505 	inc	r0
      00264E F6               [12] 1506 	mov	@r0,a
      00264F                       1507 00229$:
                                   1508 ;	life.c:152: putchar(busy[bstep]); putchar('\r');
      00264F 78 3B            [12] 1509 	mov	r0,#_bstep
      002651 E6               [12] 1510 	mov	a,@r0
      002652 24 47            [12] 1511 	add	a,#_busy
      002654 F9               [12] 1512 	mov	r1,a
      002655 87 07            [24] 1513 	mov	ar7,@r1
      002657 7E 00            [12] 1514 	mov	r6,#0x00
      002659 8F 82            [24] 1515 	mov	dpl,r7
      00265B 8E 83            [24] 1516 	mov	dph,r6
      00265D 12 2B 83         [24] 1517 	lcall	_putchar
      002660 90 00 0D         [24] 1518 	mov	dptr,#0x000d
      002663 12 2B 83         [24] 1519 	lcall	_putchar
                                   1520 ;	life.c:153: bstep = (bstep + 1) & 3;
      002666 78 3B            [12] 1521 	mov	r0,#_bstep
      002668 86 07            [24] 1522 	mov	ar7,@r0
      00266A 0F               [12] 1523 	inc	r7
      00266B 78 3B            [12] 1524 	mov	r0,#_bstep
      00266D 74 03            [12] 1525 	mov	a,#0x03
      00266F 5F               [12] 1526 	anl	a,r7
      002670 F6               [12] 1527 	mov	@r0,a
                                   1528 ;	life.c:154: for (x = 0; x < W; x++) {
      002671 78 33            [12] 1529 	mov	r0,#_x
      002673 E4               [12] 1530 	clr	a
      002674 F6               [12] 1531 	mov	@r0,a
      002675 08               [12] 1532 	inc	r0
      002676 F6               [12] 1533 	mov	@r0,a
      002677                       1534 00227$:
                                   1535 ;	life.c:155: n = -u[A2D(W, y, x)];
      002677 78 35            [12] 1536 	mov	r0,#_y
      002679 E5 10            [12] 1537 	mov	a,_bp
      00267B 24 03            [12] 1538 	add	a,#0x03
      00267D F9               [12] 1539 	mov	r1,a
      00267E E6               [12] 1540 	mov	a,@r0
      00267F F7               [12] 1541 	mov	@r1,a
      002680 08               [12] 1542 	inc	r0
      002681 E6               [12] 1543 	mov	a,@r0
      002682 C4               [12] 1544 	swap	a
      002683 23               [12] 1545 	rl	a
      002684 54 E0            [12] 1546 	anl	a,#0xe0
      002686 C7               [12] 1547 	xch	a,@r1
      002687 C4               [12] 1548 	swap	a
      002688 23               [12] 1549 	rl	a
      002689 C7               [12] 1550 	xch	a,@r1
      00268A 67               [12] 1551 	xrl	a,@r1
      00268B C7               [12] 1552 	xch	a,@r1
      00268C 54 E0            [12] 1553 	anl	a,#0xe0
      00268E C7               [12] 1554 	xch	a,@r1
      00268F 67               [12] 1555 	xrl	a,@r1
      002690 09               [12] 1556 	inc	r1
      002691 F7               [12] 1557 	mov	@r1,a
      002692 E5 10            [12] 1558 	mov	a,_bp
      002694 24 03            [12] 1559 	add	a,#0x03
      002696 F8               [12] 1560 	mov	r0,a
      002697 79 33            [12] 1561 	mov	r1,#_x
      002699 E7               [12] 1562 	mov	a,@r1
      00269A 26               [12] 1563 	add	a,@r0
      00269B C0 E0            [24] 1564 	push	acc
      00269D 09               [12] 1565 	inc	r1
      00269E E7               [12] 1566 	mov	a,@r1
      00269F 08               [12] 1567 	inc	r0
      0026A0 36               [12] 1568 	addc	a,@r0
      0026A1 C0 E0            [24] 1569 	push	acc
      0026A3 A8 10            [24] 1570 	mov	r0,_bp
      0026A5 08               [12] 1571 	inc	r0
      0026A6 08               [12] 1572 	inc	r0
      0026A7 D0 E0            [24] 1573 	pop	acc
      0026A9 F6               [12] 1574 	mov	@r0,a
      0026AA 18               [12] 1575 	dec	r0
      0026AB D0 E0            [24] 1576 	pop	acc
      0026AD F6               [12] 1577 	mov	@r0,a
      0026AE A8 10            [24] 1578 	mov	r0,_bp
      0026B0 08               [12] 1579 	inc	r0
      0026B1 E6               [12] 1580 	mov	a,@r0
      0026B2 24 00            [12] 1581 	add	a,#_u
      0026B4 F5 82            [12] 1582 	mov	dpl,a
      0026B6 08               [12] 1583 	inc	r0
      0026B7 E6               [12] 1584 	mov	a,@r0
      0026B8 34 48            [12] 1585 	addc	a,#(_u >> 8)
      0026BA F5 83            [12] 1586 	mov	dph,a
      0026BC E0               [24] 1587 	movx	a,@dptr
      0026BD FB               [12] 1588 	mov	r3,a
      0026BE C3               [12] 1589 	clr	c
      0026BF E4               [12] 1590 	clr	a
      0026C0 9B               [12] 1591 	subb	a,r3
      0026C1 FB               [12] 1592 	mov	r3,a
                                   1593 ;	life.c:162: UPDN(-1, -1);
      0026C2 78 35            [12] 1594 	mov	r0,#_y
      0026C4 74 FF            [12] 1595 	mov	a,#0xff
      0026C6 26               [12] 1596 	add	a,@r0
      0026C7 FA               [12] 1597 	mov	r2,a
      0026C8 74 FF            [12] 1598 	mov	a,#0xff
      0026CA 08               [12] 1599 	inc	r0
      0026CB 36               [12] 1600 	addc	a,@r0
      0026CC FD               [12] 1601 	mov	r5,a
      0026CD 74 40            [12] 1602 	mov	a,#0x40
      0026CF 2A               [12] 1603 	add	a,r2
      0026D0 FA               [12] 1604 	mov	r2,a
      0026D1 E4               [12] 1605 	clr	a
      0026D2 3D               [12] 1606 	addc	a,r5
      0026D3 FD               [12] 1607 	mov	r5,a
      0026D4 C0 03            [24] 1608 	push	ar3
      0026D6 74 40            [12] 1609 	mov	a,#0x40
      0026D8 C0 E0            [24] 1610 	push	acc
      0026DA E4               [12] 1611 	clr	a
      0026DB C0 E0            [24] 1612 	push	acc
      0026DD 8A 82            [24] 1613 	mov	dpl,r2
      0026DF 8D 83            [24] 1614 	mov	dph,r5
      0026E1 12 2C F4         [24] 1615 	lcall	__modsint
      0026E4 AC 82            [24] 1616 	mov	r4,dpl
      0026E6 AD 83            [24] 1617 	mov	r5,dph
      0026E8 15 81            [12] 1618 	dec	sp
      0026EA 15 81            [12] 1619 	dec	sp
      0026EC D0 03            [24] 1620 	pop	ar3
      0026EE ED               [12] 1621 	mov	a,r5
      0026EF C4               [12] 1622 	swap	a
      0026F0 23               [12] 1623 	rl	a
      0026F1 54 E0            [12] 1624 	anl	a,#0xe0
      0026F3 CC               [12] 1625 	xch	a,r4
      0026F4 C4               [12] 1626 	swap	a
      0026F5 23               [12] 1627 	rl	a
      0026F6 CC               [12] 1628 	xch	a,r4
      0026F7 6C               [12] 1629 	xrl	a,r4
      0026F8 CC               [12] 1630 	xch	a,r4
      0026F9 54 E0            [12] 1631 	anl	a,#0xe0
      0026FB CC               [12] 1632 	xch	a,r4
      0026FC 6C               [12] 1633 	xrl	a,r4
      0026FD FD               [12] 1634 	mov	r5,a
      0026FE 78 33            [12] 1635 	mov	r0,#_x
      002700 74 FF            [12] 1636 	mov	a,#0xff
      002702 26               [12] 1637 	add	a,@r0
      002703 FA               [12] 1638 	mov	r2,a
      002704 74 FF            [12] 1639 	mov	a,#0xff
      002706 08               [12] 1640 	inc	r0
      002707 36               [12] 1641 	addc	a,@r0
      002708 FF               [12] 1642 	mov	r7,a
      002709 74 20            [12] 1643 	mov	a,#0x20
      00270B 2A               [12] 1644 	add	a,r2
      00270C FA               [12] 1645 	mov	r2,a
      00270D E4               [12] 1646 	clr	a
      00270E 3F               [12] 1647 	addc	a,r7
      00270F FF               [12] 1648 	mov	r7,a
      002710 C0 05            [24] 1649 	push	ar5
      002712 C0 04            [24] 1650 	push	ar4
      002714 C0 03            [24] 1651 	push	ar3
      002716 74 20            [12] 1652 	mov	a,#0x20
      002718 C0 E0            [24] 1653 	push	acc
      00271A E4               [12] 1654 	clr	a
      00271B C0 E0            [24] 1655 	push	acc
      00271D 8A 82            [24] 1656 	mov	dpl,r2
      00271F 8F 83            [24] 1657 	mov	dph,r7
      002721 12 2C F4         [24] 1658 	lcall	__modsint
      002724 C8               [12] 1659 	xch	a,r0
      002725 E5 10            [12] 1660 	mov	a,_bp
      002727 24 05            [12] 1661 	add	a,#0x05
      002729 C8               [12] 1662 	xch	a,r0
      00272A A6 82            [24] 1663 	mov	@r0,dpl
      00272C 08               [12] 1664 	inc	r0
      00272D A6 83            [24] 1665 	mov	@r0,dph
      00272F 15 81            [12] 1666 	dec	sp
      002731 15 81            [12] 1667 	dec	sp
      002733 D0 03            [24] 1668 	pop	ar3
      002735 D0 04            [24] 1669 	pop	ar4
      002737 D0 05            [24] 1670 	pop	ar5
      002739 E5 10            [12] 1671 	mov	a,_bp
      00273B 24 05            [12] 1672 	add	a,#0x05
      00273D F8               [12] 1673 	mov	r0,a
      00273E E6               [12] 1674 	mov	a,@r0
      00273F 2C               [12] 1675 	add	a,r4
      002740 FA               [12] 1676 	mov	r2,a
      002741 08               [12] 1677 	inc	r0
      002742 E6               [12] 1678 	mov	a,@r0
      002743 3D               [12] 1679 	addc	a,r5
      002744 FF               [12] 1680 	mov	r7,a
      002745 EA               [12] 1681 	mov	a,r2
      002746 24 00            [12] 1682 	add	a,#_u
      002748 F5 82            [12] 1683 	mov	dpl,a
      00274A EF               [12] 1684 	mov	a,r7
      00274B 34 48            [12] 1685 	addc	a,#(_u >> 8)
      00274D F5 83            [12] 1686 	mov	dph,a
      00274F E0               [24] 1687 	movx	a,@dptr
      002750 2B               [12] 1688 	add	a,r3
      002751 FB               [12] 1689 	mov	r3,a
                                   1690 ;	life.c:163: UPDN(-1, 0);
      002752 78 33            [12] 1691 	mov	r0,#_x
      002754 E5 10            [12] 1692 	mov	a,_bp
      002756 24 07            [12] 1693 	add	a,#0x07
      002758 F9               [12] 1694 	mov	r1,a
      002759 E6               [12] 1695 	mov	a,@r0
      00275A F7               [12] 1696 	mov	@r1,a
      00275B 08               [12] 1697 	inc	r0
      00275C 09               [12] 1698 	inc	r1
      00275D E6               [12] 1699 	mov	a,@r0
      00275E F7               [12] 1700 	mov	@r1,a
      00275F E5 10            [12] 1701 	mov	a,_bp
      002761 24 07            [12] 1702 	add	a,#0x07
      002763 F8               [12] 1703 	mov	r0,a
      002764 74 20            [12] 1704 	mov	a,#0x20
      002766 26               [12] 1705 	add	a,@r0
      002767 FA               [12] 1706 	mov	r2,a
      002768 E4               [12] 1707 	clr	a
      002769 08               [12] 1708 	inc	r0
      00276A 36               [12] 1709 	addc	a,@r0
      00276B FF               [12] 1710 	mov	r7,a
      00276C C0 05            [24] 1711 	push	ar5
      00276E C0 04            [24] 1712 	push	ar4
      002770 C0 03            [24] 1713 	push	ar3
      002772 74 20            [12] 1714 	mov	a,#0x20
      002774 C0 E0            [24] 1715 	push	acc
      002776 E4               [12] 1716 	clr	a
      002777 C0 E0            [24] 1717 	push	acc
      002779 8A 82            [24] 1718 	mov	dpl,r2
      00277B 8F 83            [24] 1719 	mov	dph,r7
      00277D 12 2C F4         [24] 1720 	lcall	__modsint
      002780 C8               [12] 1721 	xch	a,r0
      002781 E5 10            [12] 1722 	mov	a,_bp
      002783 24 09            [12] 1723 	add	a,#0x09
      002785 C8               [12] 1724 	xch	a,r0
      002786 A6 82            [24] 1725 	mov	@r0,dpl
      002788 08               [12] 1726 	inc	r0
      002789 A6 83            [24] 1727 	mov	@r0,dph
      00278B 15 81            [12] 1728 	dec	sp
      00278D 15 81            [12] 1729 	dec	sp
      00278F D0 03            [24] 1730 	pop	ar3
      002791 D0 04            [24] 1731 	pop	ar4
      002793 D0 05            [24] 1732 	pop	ar5
      002795 E5 10            [12] 1733 	mov	a,_bp
      002797 24 09            [12] 1734 	add	a,#0x09
      002799 F8               [12] 1735 	mov	r0,a
      00279A E6               [12] 1736 	mov	a,@r0
      00279B 2C               [12] 1737 	add	a,r4
      00279C FA               [12] 1738 	mov	r2,a
      00279D 08               [12] 1739 	inc	r0
      00279E E6               [12] 1740 	mov	a,@r0
      00279F 3D               [12] 1741 	addc	a,r5
      0027A0 FF               [12] 1742 	mov	r7,a
      0027A1 EA               [12] 1743 	mov	a,r2
      0027A2 24 00            [12] 1744 	add	a,#_u
      0027A4 F5 82            [12] 1745 	mov	dpl,a
      0027A6 EF               [12] 1746 	mov	a,r7
      0027A7 34 48            [12] 1747 	addc	a,#(_u >> 8)
      0027A9 F5 83            [12] 1748 	mov	dph,a
      0027AB E0               [24] 1749 	movx	a,@dptr
      0027AC 2B               [12] 1750 	add	a,r3
      0027AD FB               [12] 1751 	mov	r3,a
                                   1752 ;	life.c:164: UPDN(-1, 1);
      0027AE E5 10            [12] 1753 	mov	a,_bp
      0027B0 24 07            [12] 1754 	add	a,#0x07
      0027B2 F8               [12] 1755 	mov	r0,a
      0027B3 74 21            [12] 1756 	mov	a,#0x21
      0027B5 26               [12] 1757 	add	a,@r0
      0027B6 FE               [12] 1758 	mov	r6,a
      0027B7 E4               [12] 1759 	clr	a
      0027B8 08               [12] 1760 	inc	r0
      0027B9 36               [12] 1761 	addc	a,@r0
      0027BA FF               [12] 1762 	mov	r7,a
      0027BB C0 05            [24] 1763 	push	ar5
      0027BD C0 04            [24] 1764 	push	ar4
      0027BF C0 03            [24] 1765 	push	ar3
      0027C1 74 20            [12] 1766 	mov	a,#0x20
      0027C3 C0 E0            [24] 1767 	push	acc
      0027C5 E4               [12] 1768 	clr	a
      0027C6 C0 E0            [24] 1769 	push	acc
      0027C8 8E 82            [24] 1770 	mov	dpl,r6
      0027CA 8F 83            [24] 1771 	mov	dph,r7
      0027CC 12 2C F4         [24] 1772 	lcall	__modsint
      0027CF AE 82            [24] 1773 	mov	r6,dpl
      0027D1 AF 83            [24] 1774 	mov	r7,dph
      0027D3 15 81            [12] 1775 	dec	sp
      0027D5 15 81            [12] 1776 	dec	sp
      0027D7 D0 03            [24] 1777 	pop	ar3
      0027D9 D0 04            [24] 1778 	pop	ar4
      0027DB D0 05            [24] 1779 	pop	ar5
      0027DD EE               [12] 1780 	mov	a,r6
      0027DE 2C               [12] 1781 	add	a,r4
      0027DF FC               [12] 1782 	mov	r4,a
      0027E0 EF               [12] 1783 	mov	a,r7
      0027E1 3D               [12] 1784 	addc	a,r5
      0027E2 FD               [12] 1785 	mov	r5,a
      0027E3 EC               [12] 1786 	mov	a,r4
      0027E4 24 00            [12] 1787 	add	a,#_u
      0027E6 F5 82            [12] 1788 	mov	dpl,a
      0027E8 ED               [12] 1789 	mov	a,r5
      0027E9 34 48            [12] 1790 	addc	a,#(_u >> 8)
      0027EB F5 83            [12] 1791 	mov	dph,a
      0027ED E0               [24] 1792 	movx	a,@dptr
      0027EE 2B               [12] 1793 	add	a,r3
      0027EF FB               [12] 1794 	mov	r3,a
                                   1795 ;	life.c:165: UPDN(0, -1);
      0027F0 78 35            [12] 1796 	mov	r0,#_y
      0027F2 E5 10            [12] 1797 	mov	a,_bp
      0027F4 24 0B            [12] 1798 	add	a,#0x0b
      0027F6 F9               [12] 1799 	mov	r1,a
      0027F7 E6               [12] 1800 	mov	a,@r0
      0027F8 F7               [12] 1801 	mov	@r1,a
      0027F9 08               [12] 1802 	inc	r0
      0027FA 09               [12] 1803 	inc	r1
      0027FB E6               [12] 1804 	mov	a,@r0
      0027FC F7               [12] 1805 	mov	@r1,a
      0027FD E5 10            [12] 1806 	mov	a,_bp
      0027FF 24 0B            [12] 1807 	add	a,#0x0b
      002801 F8               [12] 1808 	mov	r0,a
      002802 74 40            [12] 1809 	mov	a,#0x40
      002804 26               [12] 1810 	add	a,@r0
      002805 FA               [12] 1811 	mov	r2,a
      002806 E4               [12] 1812 	clr	a
      002807 08               [12] 1813 	inc	r0
      002808 36               [12] 1814 	addc	a,@r0
      002809 FD               [12] 1815 	mov	r5,a
      00280A C0 07            [24] 1816 	push	ar7
      00280C C0 06            [24] 1817 	push	ar6
      00280E C0 03            [24] 1818 	push	ar3
      002810 74 40            [12] 1819 	mov	a,#0x40
      002812 C0 E0            [24] 1820 	push	acc
      002814 E4               [12] 1821 	clr	a
      002815 C0 E0            [24] 1822 	push	acc
      002817 8A 82            [24] 1823 	mov	dpl,r2
      002819 8D 83            [24] 1824 	mov	dph,r5
      00281B 12 2C F4         [24] 1825 	lcall	__modsint
      00281E AC 82            [24] 1826 	mov	r4,dpl
      002820 AD 83            [24] 1827 	mov	r5,dph
      002822 15 81            [12] 1828 	dec	sp
      002824 15 81            [12] 1829 	dec	sp
      002826 D0 03            [24] 1830 	pop	ar3
      002828 D0 06            [24] 1831 	pop	ar6
      00282A D0 07            [24] 1832 	pop	ar7
      00282C E5 10            [12] 1833 	mov	a,_bp
      00282E 24 0D            [12] 1834 	add	a,#0x0d
      002830 F8               [12] 1835 	mov	r0,a
      002831 A6 04            [24] 1836 	mov	@r0,ar4
      002833 ED               [12] 1837 	mov	a,r5
      002834 C4               [12] 1838 	swap	a
      002835 23               [12] 1839 	rl	a
      002836 54 E0            [12] 1840 	anl	a,#0xe0
      002838 C6               [12] 1841 	xch	a,@r0
      002839 C4               [12] 1842 	swap	a
      00283A 23               [12] 1843 	rl	a
      00283B C6               [12] 1844 	xch	a,@r0
      00283C 66               [12] 1845 	xrl	a,@r0
      00283D C6               [12] 1846 	xch	a,@r0
      00283E 54 E0            [12] 1847 	anl	a,#0xe0
      002840 C6               [12] 1848 	xch	a,@r0
      002841 66               [12] 1849 	xrl	a,@r0
      002842 08               [12] 1850 	inc	r0
      002843 F6               [12] 1851 	mov	@r0,a
      002844 E5 10            [12] 1852 	mov	a,_bp
      002846 24 0D            [12] 1853 	add	a,#0x0d
      002848 F8               [12] 1854 	mov	r0,a
      002849 E5 10            [12] 1855 	mov	a,_bp
      00284B 24 05            [12] 1856 	add	a,#0x05
      00284D F9               [12] 1857 	mov	r1,a
      00284E E7               [12] 1858 	mov	a,@r1
      00284F 26               [12] 1859 	add	a,@r0
      002850 FA               [12] 1860 	mov	r2,a
      002851 09               [12] 1861 	inc	r1
      002852 E7               [12] 1862 	mov	a,@r1
      002853 08               [12] 1863 	inc	r0
      002854 36               [12] 1864 	addc	a,@r0
      002855 FD               [12] 1865 	mov	r5,a
      002856 EA               [12] 1866 	mov	a,r2
      002857 24 00            [12] 1867 	add	a,#_u
      002859 F5 82            [12] 1868 	mov	dpl,a
      00285B ED               [12] 1869 	mov	a,r5
      00285C 34 48            [12] 1870 	addc	a,#(_u >> 8)
      00285E F5 83            [12] 1871 	mov	dph,a
      002860 E0               [24] 1872 	movx	a,@dptr
      002861 2B               [12] 1873 	add	a,r3
      002862 FB               [12] 1874 	mov	r3,a
                                   1875 ;	life.c:166: UPDN(0, 0);
      002863 E5 10            [12] 1876 	mov	a,_bp
      002865 24 0D            [12] 1877 	add	a,#0x0d
      002867 F8               [12] 1878 	mov	r0,a
      002868 E5 10            [12] 1879 	mov	a,_bp
      00286A 24 09            [12] 1880 	add	a,#0x09
      00286C F9               [12] 1881 	mov	r1,a
      00286D E7               [12] 1882 	mov	a,@r1
      00286E 26               [12] 1883 	add	a,@r0
      00286F FC               [12] 1884 	mov	r4,a
      002870 09               [12] 1885 	inc	r1
      002871 E7               [12] 1886 	mov	a,@r1
      002872 08               [12] 1887 	inc	r0
      002873 36               [12] 1888 	addc	a,@r0
      002874 FD               [12] 1889 	mov	r5,a
      002875 EC               [12] 1890 	mov	a,r4
      002876 24 00            [12] 1891 	add	a,#_u
      002878 F5 82            [12] 1892 	mov	dpl,a
      00287A ED               [12] 1893 	mov	a,r5
      00287B 34 48            [12] 1894 	addc	a,#(_u >> 8)
      00287D F5 83            [12] 1895 	mov	dph,a
      00287F E0               [24] 1896 	movx	a,@dptr
      002880 2B               [12] 1897 	add	a,r3
      002881 FB               [12] 1898 	mov	r3,a
                                   1899 ;	life.c:167: UPDN(0, 1);
      002882 E5 10            [12] 1900 	mov	a,_bp
      002884 24 0D            [12] 1901 	add	a,#0x0d
      002886 F8               [12] 1902 	mov	r0,a
      002887 EE               [12] 1903 	mov	a,r6
      002888 26               [12] 1904 	add	a,@r0
      002889 FC               [12] 1905 	mov	r4,a
      00288A EF               [12] 1906 	mov	a,r7
      00288B 08               [12] 1907 	inc	r0
      00288C 36               [12] 1908 	addc	a,@r0
      00288D FD               [12] 1909 	mov	r5,a
      00288E EC               [12] 1910 	mov	a,r4
      00288F 24 00            [12] 1911 	add	a,#_u
      002891 F5 82            [12] 1912 	mov	dpl,a
      002893 ED               [12] 1913 	mov	a,r5
      002894 34 48            [12] 1914 	addc	a,#(_u >> 8)
      002896 F5 83            [12] 1915 	mov	dph,a
      002898 E0               [24] 1916 	movx	a,@dptr
      002899 2B               [12] 1917 	add	a,r3
      00289A FB               [12] 1918 	mov	r3,a
                                   1919 ;	life.c:168: UPDN(1, -1);
      00289B E5 10            [12] 1920 	mov	a,_bp
      00289D 24 0B            [12] 1921 	add	a,#0x0b
      00289F F8               [12] 1922 	mov	r0,a
      0028A0 74 41            [12] 1923 	mov	a,#0x41
      0028A2 26               [12] 1924 	add	a,@r0
      0028A3 FC               [12] 1925 	mov	r4,a
      0028A4 E4               [12] 1926 	clr	a
      0028A5 08               [12] 1927 	inc	r0
      0028A6 36               [12] 1928 	addc	a,@r0
      0028A7 FD               [12] 1929 	mov	r5,a
      0028A8 C0 07            [24] 1930 	push	ar7
      0028AA C0 06            [24] 1931 	push	ar6
      0028AC C0 03            [24] 1932 	push	ar3
      0028AE 74 40            [12] 1933 	mov	a,#0x40
      0028B0 C0 E0            [24] 1934 	push	acc
      0028B2 E4               [12] 1935 	clr	a
      0028B3 C0 E0            [24] 1936 	push	acc
      0028B5 8C 82            [24] 1937 	mov	dpl,r4
      0028B7 8D 83            [24] 1938 	mov	dph,r5
      0028B9 12 2C F4         [24] 1939 	lcall	__modsint
      0028BC AC 82            [24] 1940 	mov	r4,dpl
      0028BE AD 83            [24] 1941 	mov	r5,dph
      0028C0 15 81            [12] 1942 	dec	sp
      0028C2 15 81            [12] 1943 	dec	sp
      0028C4 D0 03            [24] 1944 	pop	ar3
      0028C6 D0 06            [24] 1945 	pop	ar6
      0028C8 D0 07            [24] 1946 	pop	ar7
      0028CA E5 10            [12] 1947 	mov	a,_bp
      0028CC 24 0D            [12] 1948 	add	a,#0x0d
      0028CE F8               [12] 1949 	mov	r0,a
      0028CF A6 04            [24] 1950 	mov	@r0,ar4
      0028D1 ED               [12] 1951 	mov	a,r5
      0028D2 C4               [12] 1952 	swap	a
      0028D3 23               [12] 1953 	rl	a
      0028D4 54 E0            [12] 1954 	anl	a,#0xe0
      0028D6 C6               [12] 1955 	xch	a,@r0
      0028D7 C4               [12] 1956 	swap	a
      0028D8 23               [12] 1957 	rl	a
      0028D9 C6               [12] 1958 	xch	a,@r0
      0028DA 66               [12] 1959 	xrl	a,@r0
      0028DB C6               [12] 1960 	xch	a,@r0
      0028DC 54 E0            [12] 1961 	anl	a,#0xe0
      0028DE C6               [12] 1962 	xch	a,@r0
      0028DF 66               [12] 1963 	xrl	a,@r0
      0028E0 08               [12] 1964 	inc	r0
      0028E1 F6               [12] 1965 	mov	@r0,a
      0028E2 E5 10            [12] 1966 	mov	a,_bp
      0028E4 24 0D            [12] 1967 	add	a,#0x0d
      0028E6 F8               [12] 1968 	mov	r0,a
      0028E7 E5 10            [12] 1969 	mov	a,_bp
      0028E9 24 05            [12] 1970 	add	a,#0x05
      0028EB F9               [12] 1971 	mov	r1,a
      0028EC E7               [12] 1972 	mov	a,@r1
      0028ED 26               [12] 1973 	add	a,@r0
      0028EE FA               [12] 1974 	mov	r2,a
      0028EF 09               [12] 1975 	inc	r1
      0028F0 E7               [12] 1976 	mov	a,@r1
      0028F1 08               [12] 1977 	inc	r0
      0028F2 36               [12] 1978 	addc	a,@r0
      0028F3 FD               [12] 1979 	mov	r5,a
      0028F4 EA               [12] 1980 	mov	a,r2
      0028F5 24 00            [12] 1981 	add	a,#_u
      0028F7 F5 82            [12] 1982 	mov	dpl,a
      0028F9 ED               [12] 1983 	mov	a,r5
      0028FA 34 48            [12] 1984 	addc	a,#(_u >> 8)
      0028FC F5 83            [12] 1985 	mov	dph,a
      0028FE E0               [24] 1986 	movx	a,@dptr
      0028FF 2B               [12] 1987 	add	a,r3
      002900 FB               [12] 1988 	mov	r3,a
                                   1989 ;	life.c:169: UPDN(1, 0);
      002901 E5 10            [12] 1990 	mov	a,_bp
      002903 24 0D            [12] 1991 	add	a,#0x0d
      002905 F8               [12] 1992 	mov	r0,a
      002906 E5 10            [12] 1993 	mov	a,_bp
      002908 24 09            [12] 1994 	add	a,#0x09
      00290A F9               [12] 1995 	mov	r1,a
      00290B E7               [12] 1996 	mov	a,@r1
      00290C 26               [12] 1997 	add	a,@r0
      00290D FC               [12] 1998 	mov	r4,a
      00290E 09               [12] 1999 	inc	r1
      00290F E7               [12] 2000 	mov	a,@r1
      002910 08               [12] 2001 	inc	r0
      002911 36               [12] 2002 	addc	a,@r0
      002912 FD               [12] 2003 	mov	r5,a
      002913 EC               [12] 2004 	mov	a,r4
      002914 24 00            [12] 2005 	add	a,#_u
      002916 F5 82            [12] 2006 	mov	dpl,a
      002918 ED               [12] 2007 	mov	a,r5
      002919 34 48            [12] 2008 	addc	a,#(_u >> 8)
      00291B F5 83            [12] 2009 	mov	dph,a
      00291D E0               [24] 2010 	movx	a,@dptr
      00291E 2B               [12] 2011 	add	a,r3
      00291F FB               [12] 2012 	mov	r3,a
                                   2013 ;	life.c:170: UPDN(1, 1);
      002920 78 41            [12] 2014 	mov	r0,#_dy
      002922 76 01            [12] 2015 	mov	@r0,#0x01
      002924 08               [12] 2016 	inc	r0
      002925 76 00            [12] 2017 	mov	@r0,#0x00
      002927 78 3F            [12] 2018 	mov	r0,#_dx
      002929 76 01            [12] 2019 	mov	@r0,#0x01
      00292B 08               [12] 2020 	inc	r0
      00292C 76 00            [12] 2021 	mov	@r0,#0x00
      00292E E5 10            [12] 2022 	mov	a,_bp
      002930 24 0D            [12] 2023 	add	a,#0x0d
      002932 F8               [12] 2024 	mov	r0,a
      002933 EE               [12] 2025 	mov	a,r6
      002934 26               [12] 2026 	add	a,@r0
      002935 FE               [12] 2027 	mov	r6,a
      002936 EF               [12] 2028 	mov	a,r7
      002937 08               [12] 2029 	inc	r0
      002938 36               [12] 2030 	addc	a,@r0
      002939 FF               [12] 2031 	mov	r7,a
      00293A EE               [12] 2032 	mov	a,r6
      00293B 24 00            [12] 2033 	add	a,#_u
      00293D F5 82            [12] 2034 	mov	dpl,a
      00293F EF               [12] 2035 	mov	a,r7
      002940 34 48            [12] 2036 	addc	a,#(_u >> 8)
      002942 F5 83            [12] 2037 	mov	dph,a
      002944 E0               [24] 2038 	movx	a,@dptr
      002945 2B               [12] 2039 	add	a,r3
      002946 FF               [12] 2040 	mov	r7,a
      002947 78 3C            [12] 2041 	mov	r0,#_n
      002949 A6 07            [24] 2042 	mov	@r0,ar7
                                   2043 ;	life.c:173: nu[A2D(W, y, x)] = (n == 3) || ((n == 2) && u[A2D(W, y, x)]);
      00294B A8 10            [24] 2044 	mov	r0,_bp
      00294D 08               [12] 2045 	inc	r0
      00294E E6               [12] 2046 	mov	a,@r0
      00294F 24 00            [12] 2047 	add	a,#_nu
      002951 FD               [12] 2048 	mov	r5,a
      002952 08               [12] 2049 	inc	r0
      002953 E6               [12] 2050 	mov	a,@r0
      002954 34 50            [12] 2051 	addc	a,#(_nu >> 8)
      002956 FE               [12] 2052 	mov	r6,a
      002957 BF 03 02         [24] 2053 	cjne	r7,#0x03,00496$
      00295A 80 28            [24] 2054 	sjmp	00255$
      00295C                       2055 00496$:
      00295C BF 02 21         [24] 2056 	cjne	r7,#0x02,00254$
      00295F E5 10            [12] 2057 	mov	a,_bp
      002961 24 03            [12] 2058 	add	a,#0x03
      002963 F8               [12] 2059 	mov	r0,a
      002964 E5 10            [12] 2060 	mov	a,_bp
      002966 24 07            [12] 2061 	add	a,#0x07
      002968 F9               [12] 2062 	mov	r1,a
      002969 E7               [12] 2063 	mov	a,@r1
      00296A 26               [12] 2064 	add	a,@r0
      00296B FC               [12] 2065 	mov	r4,a
      00296C 09               [12] 2066 	inc	r1
      00296D E7               [12] 2067 	mov	a,@r1
      00296E 08               [12] 2068 	inc	r0
      00296F 36               [12] 2069 	addc	a,@r0
      002970 FF               [12] 2070 	mov	r7,a
      002971 EC               [12] 2071 	mov	a,r4
      002972 24 00            [12] 2072 	add	a,#_u
      002974 FC               [12] 2073 	mov	r4,a
      002975 EF               [12] 2074 	mov	a,r7
      002976 34 48            [12] 2075 	addc	a,#(_u >> 8)
      002978 FF               [12] 2076 	mov	r7,a
      002979 8C 82            [24] 2077 	mov	dpl,r4
      00297B 8F 83            [24] 2078 	mov	dph,r7
      00297D E0               [24] 2079 	movx	a,@dptr
      00297E 70 04            [24] 2080 	jnz	00255$
      002980                       2081 00254$:
                                   2082 ;	assignBit
      002980 C2 00            [12] 2083 	clr	b0
      002982 80 02            [24] 2084 	sjmp	00256$
      002984                       2085 00255$:
                                   2086 ;	assignBit
      002984 D2 00            [12] 2087 	setb	b0
      002986                       2088 00256$:
      002986 A2 00            [12] 2089 	mov	c,b0
      002988 E4               [12] 2090 	clr	a
      002989 33               [12] 2091 	rlc	a
      00298A 8D 82            [24] 2092 	mov	dpl,r5
      00298C 8E 83            [24] 2093 	mov	dph,r6
      00298E F0               [24] 2094 	movx	@dptr,a
                                   2095 ;	life.c:174: cycle2 |= pu[A2D(W, y, x)] ^ nu[A2D(W, y, x)];
      00298F 78 35            [12] 2096 	mov	r0,#_y
      002991 86 06            [24] 2097 	mov	ar6,@r0
      002993 08               [12] 2098 	inc	r0
      002994 E6               [12] 2099 	mov	a,@r0
      002995 C4               [12] 2100 	swap	a
      002996 23               [12] 2101 	rl	a
      002997 54 E0            [12] 2102 	anl	a,#0xe0
      002999 CE               [12] 2103 	xch	a,r6
      00299A C4               [12] 2104 	swap	a
      00299B 23               [12] 2105 	rl	a
      00299C CE               [12] 2106 	xch	a,r6
      00299D 6E               [12] 2107 	xrl	a,r6
      00299E CE               [12] 2108 	xch	a,r6
      00299F 54 E0            [12] 2109 	anl	a,#0xe0
      0029A1 CE               [12] 2110 	xch	a,r6
      0029A2 6E               [12] 2111 	xrl	a,r6
      0029A3 FF               [12] 2112 	mov	r7,a
      0029A4 78 33            [12] 2113 	mov	r0,#_x
      0029A6 E6               [12] 2114 	mov	a,@r0
      0029A7 2E               [12] 2115 	add	a,r6
      0029A8 FE               [12] 2116 	mov	r6,a
      0029A9 08               [12] 2117 	inc	r0
      0029AA E6               [12] 2118 	mov	a,@r0
      0029AB 3F               [12] 2119 	addc	a,r7
      0029AC FF               [12] 2120 	mov	r7,a
      0029AD EE               [12] 2121 	mov	a,r6
      0029AE 24 00            [12] 2122 	add	a,#_pu
      0029B0 F5 82            [12] 2123 	mov	dpl,a
      0029B2 EF               [12] 2124 	mov	a,r7
      0029B3 34 40            [12] 2125 	addc	a,#(_pu >> 8)
      0029B5 F5 83            [12] 2126 	mov	dph,a
      0029B7 E0               [24] 2127 	movx	a,@dptr
      0029B8 FD               [12] 2128 	mov	r5,a
      0029B9 EE               [12] 2129 	mov	a,r6
      0029BA 24 00            [12] 2130 	add	a,#_nu
      0029BC F5 82            [12] 2131 	mov	dpl,a
      0029BE EF               [12] 2132 	mov	a,r7
      0029BF 34 50            [12] 2133 	addc	a,#(_nu >> 8)
      0029C1 F5 83            [12] 2134 	mov	dph,a
      0029C3 E0               [24] 2135 	movx	a,@dptr
      0029C4 FC               [12] 2136 	mov	r4,a
      0029C5 6D               [12] 2137 	xrl	a,r5
      0029C6 78 3E            [12] 2138 	mov	r0,#_cycle2
      0029C8 46               [12] 2139 	orl	a,@r0
      0029C9 F6               [12] 2140 	mov	@r0,a
                                   2141 ;	life.c:175: fixed |= u[A2D(W, y, x)] ^ nu[A2D(W, y, x)];
      0029CA EE               [12] 2142 	mov	a,r6
      0029CB 24 00            [12] 2143 	add	a,#_u
      0029CD F5 82            [12] 2144 	mov	dpl,a
      0029CF EF               [12] 2145 	mov	a,r7
      0029D0 34 48            [12] 2146 	addc	a,#(_u >> 8)
      0029D2 F5 83            [12] 2147 	mov	dph,a
      0029D4 E0               [24] 2148 	movx	a,@dptr
      0029D5 FF               [12] 2149 	mov	r7,a
      0029D6 EC               [12] 2150 	mov	a,r4
      0029D7 6F               [12] 2151 	xrl	a,r7
      0029D8 78 3D            [12] 2152 	mov	r0,#_fixed
      0029DA 46               [12] 2153 	orl	a,@r0
      0029DB F6               [12] 2154 	mov	@r0,a
                                   2155 ;	life.c:154: for (x = 0; x < W; x++) {
      0029DC 78 33            [12] 2156 	mov	r0,#_x
      0029DE 06               [12] 2157 	inc	@r0
      0029DF B6 00 02         [24] 2158 	cjne	@r0,#0x00,00500$
      0029E2 08               [12] 2159 	inc	r0
      0029E3 06               [12] 2160 	inc	@r0
      0029E4                       2161 00500$:
      0029E4 78 33            [12] 2162 	mov	r0,#_x
      0029E6 C3               [12] 2163 	clr	c
      0029E7 E6               [12] 2164 	mov	a,@r0
      0029E8 94 20            [12] 2165 	subb	a,#0x20
      0029EA 08               [12] 2166 	inc	r0
      0029EB E6               [12] 2167 	mov	a,@r0
      0029EC 64 80            [12] 2168 	xrl	a,#0x80
      0029EE 94 80            [12] 2169 	subb	a,#0x80
      0029F0 50 03            [24] 2170 	jnc	00501$
      0029F2 02 26 77         [24] 2171 	ljmp	00227$
      0029F5                       2172 00501$:
                                   2173 ;	life.c:151: for (y = 0; y < H; y++) {
      0029F5 78 35            [12] 2174 	mov	r0,#_y
      0029F7 06               [12] 2175 	inc	@r0
      0029F8 B6 00 02         [24] 2176 	cjne	@r0,#0x00,00502$
      0029FB 08               [12] 2177 	inc	r0
      0029FC 06               [12] 2178 	inc	@r0
      0029FD                       2179 00502$:
      0029FD 78 35            [12] 2180 	mov	r0,#_y
      0029FF C3               [12] 2181 	clr	c
      002A00 E6               [12] 2182 	mov	a,@r0
      002A01 94 40            [12] 2183 	subb	a,#0x40
      002A03 08               [12] 2184 	inc	r0
      002A04 E6               [12] 2185 	mov	a,@r0
      002A05 64 80            [12] 2186 	xrl	a,#0x80
      002A07 94 80            [12] 2187 	subb	a,#0x80
      002A09 50 03            [24] 2188 	jnc	00503$
      002A0B 02 26 4F         [24] 2189 	ljmp	00229$
      002A0E                       2190 00503$:
                                   2191 ;	life.c:179: cycle2 = !cycle2;
      002A0E 78 3E            [12] 2192 	mov	r0,#_cycle2
      002A10 E6               [12] 2193 	mov	a,@r0
      002A11 B4 01 00         [24] 2194 	cjne	a,#0x01,00504$
      002A14                       2195 00504$:
      002A14 92 00            [24] 2196 	mov	b0,c
      002A16 78 3E            [12] 2197 	mov	r0,#_cycle2
      002A18 E4               [12] 2198 	clr	a
      002A19 33               [12] 2199 	rlc	a
      002A1A F6               [12] 2200 	mov	@r0,a
                                   2201 ;	life.c:180: fixed = !fixed;
      002A1B 78 3D            [12] 2202 	mov	r0,#_fixed
      002A1D E6               [12] 2203 	mov	a,@r0
      002A1E B4 01 00         [24] 2204 	cjne	a,#0x01,00505$
      002A21                       2205 00505$:
      002A21 92 00            [24] 2206 	mov	b0,c
      002A23 78 3D            [12] 2207 	mov	r0,#_fixed
      002A25 E4               [12] 2208 	clr	a
      002A26 33               [12] 2209 	rlc	a
      002A27 F6               [12] 2210 	mov	@r0,a
                                   2211 ;	life.c:182: memcpy(pu, u, sizeof (u));
      002A28 E4               [12] 2212 	clr	a
      002A29 C0 E0            [24] 2213 	push	acc
      002A2B 74 08            [12] 2214 	mov	a,#0x08
      002A2D C0 E0            [24] 2215 	push	acc
      002A2F 74 00            [12] 2216 	mov	a,#_u
      002A31 C0 E0            [24] 2217 	push	acc
      002A33 74 48            [12] 2218 	mov	a,#(_u >> 8)
      002A35 C0 E0            [24] 2219 	push	acc
      002A37 E4               [12] 2220 	clr	a
      002A38 C0 E0            [24] 2221 	push	acc
      002A3A 90 40 00         [24] 2222 	mov	dptr,#_pu
      002A3D 75 F0 00         [24] 2223 	mov	b,#0x00
      002A40 12 2B B4         [24] 2224 	lcall	___memcpy
      002A43 E5 81            [12] 2225 	mov	a,sp
      002A45 24 FB            [12] 2226 	add	a,#0xfb
      002A47 F5 81            [12] 2227 	mov	sp,a
                                   2228 ;	life.c:183: memcpy(u, nu, sizeof (nu));
      002A49 E4               [12] 2229 	clr	a
      002A4A C0 E0            [24] 2230 	push	acc
      002A4C 74 08            [12] 2231 	mov	a,#0x08
      002A4E C0 E0            [24] 2232 	push	acc
      002A50 74 00            [12] 2233 	mov	a,#_nu
      002A52 C0 E0            [24] 2234 	push	acc
      002A54 74 50            [12] 2235 	mov	a,#(_nu >> 8)
      002A56 C0 E0            [24] 2236 	push	acc
      002A58 E4               [12] 2237 	clr	a
      002A59 C0 E0            [24] 2238 	push	acc
      002A5B 90 48 00         [24] 2239 	mov	dptr,#_u
      002A5E 75 F0 00         [24] 2240 	mov	b,#0x00
      002A61 12 2B B4         [24] 2241 	lcall	___memcpy
      002A64 E5 81            [12] 2242 	mov	a,sp
      002A66 24 FB            [12] 2243 	add	a,#0xfb
      002A68 F5 81            [12] 2244 	mov	sp,a
                                   2245 ;	life.c:221: if (fixed || cycle2) {
      002A6A 78 3D            [12] 2246 	mov	r0,#_fixed
      002A6C E6               [12] 2247 	mov	a,@r0
      002A6D 70 08            [24] 2248 	jnz	00126$
      002A6F 78 3E            [12] 2249 	mov	r0,#_cycle2
      002A71 E6               [12] 2250 	mov	a,@r0
      002A72 70 03            [24] 2251 	jnz	00507$
      002A74 02 26 27         [24] 2252 	ljmp	00242$
      002A77                       2253 00507$:
      002A77                       2254 00126$:
                                   2255 ;	life.c:222: printstr("DONE ");
      002A77 7D 35            [12] 2256 	mov	r5,#___str_6
      002A79 7E 2E            [12] 2257 	mov	r6,#(___str_6 >> 8)
      002A7B 7F 80            [12] 2258 	mov	r7,#0x80
                                   2259 ;	life.c:31: return;
      002A7D                       2260 00232$:
                                   2261 ;	life.c:29: for (; *s; s++) putchar(*s);
      002A7D 8D 82            [24] 2262 	mov	dpl,r5
      002A7F 8E 83            [24] 2263 	mov	dph,r6
      002A81 8F F0            [24] 2264 	mov	b,r7
      002A83 12 2C D8         [24] 2265 	lcall	__gptrget
      002A86 FC               [12] 2266 	mov	r4,a
      002A87 60 1C            [24] 2267 	jz	00203$
      002A89 7B 00            [12] 2268 	mov	r3,#0x00
      002A8B 8C 82            [24] 2269 	mov	dpl,r4
      002A8D 8B 83            [24] 2270 	mov	dph,r3
      002A8F C0 07            [24] 2271 	push	ar7
      002A91 C0 06            [24] 2272 	push	ar6
      002A93 C0 05            [24] 2273 	push	ar5
      002A95 12 2B 83         [24] 2274 	lcall	_putchar
      002A98 D0 05            [24] 2275 	pop	ar5
      002A9A D0 06            [24] 2276 	pop	ar6
      002A9C D0 07            [24] 2277 	pop	ar7
      002A9E 0D               [12] 2278 	inc	r5
                                   2279 ;	life.c:222: printstr("DONE ");
      002A9F BD 00 DB         [24] 2280 	cjne	r5,#0x00,00232$
      002AA2 0E               [12] 2281 	inc	r6
      002AA3 80 D8            [24] 2282 	sjmp	00232$
      002AA5                       2283 00203$:
                                   2284 ;	life.c:223: if (fixed) printstr("FIXED\r\n");
      002AA5 78 3D            [12] 2285 	mov	r0,#_fixed
      002AA7 E6               [12] 2286 	mov	a,@r0
      002AA8 60 2E            [24] 2287 	jz	00124$
      002AAA 7D 3B            [12] 2288 	mov	r5,#___str_7
      002AAC 7E 2E            [12] 2289 	mov	r6,#(___str_7 >> 8)
      002AAE 7F 80            [12] 2290 	mov	r7,#0x80
                                   2291 ;	life.c:31: return;
      002AB0                       2292 00235$:
                                   2293 ;	life.c:29: for (; *s; s++) putchar(*s);
      002AB0 8D 82            [24] 2294 	mov	dpl,r5
      002AB2 8E 83            [24] 2295 	mov	dph,r6
      002AB4 8F F0            [24] 2296 	mov	b,r7
      002AB6 12 2C D8         [24] 2297 	lcall	__gptrget
      002AB9 FC               [12] 2298 	mov	r4,a
      002ABA 60 4A            [24] 2299 	jz	00125$
      002ABC 7B 00            [12] 2300 	mov	r3,#0x00
      002ABE 8C 82            [24] 2301 	mov	dpl,r4
      002AC0 8B 83            [24] 2302 	mov	dph,r3
      002AC2 C0 07            [24] 2303 	push	ar7
      002AC4 C0 06            [24] 2304 	push	ar6
      002AC6 C0 05            [24] 2305 	push	ar5
      002AC8 12 2B 83         [24] 2306 	lcall	_putchar
      002ACB D0 05            [24] 2307 	pop	ar5
      002ACD D0 06            [24] 2308 	pop	ar6
      002ACF D0 07            [24] 2309 	pop	ar7
      002AD1 0D               [12] 2310 	inc	r5
                                   2311 ;	life.c:223: if (fixed) printstr("FIXED\r\n");
      002AD2 BD 00 DB         [24] 2312 	cjne	r5,#0x00,00235$
      002AD5 0E               [12] 2313 	inc	r6
      002AD6 80 D8            [24] 2314 	sjmp	00235$
      002AD8                       2315 00124$:
                                   2316 ;	life.c:224: else printstr("CYCLE2\r\n");
      002AD8 7D 43            [12] 2317 	mov	r5,#___str_8
      002ADA 7E 2E            [12] 2318 	mov	r6,#(___str_8 >> 8)
      002ADC 7F 80            [12] 2319 	mov	r7,#0x80
                                   2320 ;	life.c:31: return;
      002ADE                       2321 00238$:
                                   2322 ;	life.c:29: for (; *s; s++) putchar(*s);
      002ADE 8D 82            [24] 2323 	mov	dpl,r5
      002AE0 8E 83            [24] 2324 	mov	dph,r6
      002AE2 8F F0            [24] 2325 	mov	b,r7
      002AE4 12 2C D8         [24] 2326 	lcall	__gptrget
      002AE7 FC               [12] 2327 	mov	r4,a
      002AE8 60 1C            [24] 2328 	jz	00125$
      002AEA 7B 00            [12] 2329 	mov	r3,#0x00
      002AEC 8C 82            [24] 2330 	mov	dpl,r4
      002AEE 8B 83            [24] 2331 	mov	dph,r3
      002AF0 C0 07            [24] 2332 	push	ar7
      002AF2 C0 06            [24] 2333 	push	ar6
      002AF4 C0 05            [24] 2334 	push	ar5
      002AF6 12 2B 83         [24] 2335 	lcall	_putchar
      002AF9 D0 05            [24] 2336 	pop	ar5
      002AFB D0 06            [24] 2337 	pop	ar6
      002AFD D0 07            [24] 2338 	pop	ar7
      002AFF 0D               [12] 2339 	inc	r5
                                   2340 ;	life.c:224: else printstr("CYCLE2\r\n");
      002B00 BD 00 DB         [24] 2341 	cjne	r5,#0x00,00238$
      002B03 0E               [12] 2342 	inc	r6
      002B04 80 D8            [24] 2343 	sjmp	00238$
      002B06                       2344 00125$:
                                   2345 ;	life.c:225: (void)getchar();
      002B06 12 2B 8D         [24] 2346 	lcall	_getchar
                                   2347 ;	life.c:226: break;
      002B09                       2348 00129$:
                                   2349 ;	life.c:230: if (i1) {
      002B09 78 32            [12] 2350 	mov	r0,#_i1
      002B0B E6               [12] 2351 	mov	a,@r0
      002B0C 60 31            [24] 2352 	jz	00248$
                                   2353 ;	life.c:231: printstr("BREAK\r\n");
      002B0E 7D 4C            [12] 2354 	mov	r5,#___str_9
      002B10 7E 2E            [12] 2355 	mov	r6,#(___str_9 >> 8)
      002B12 7F 80            [12] 2356 	mov	r7,#0x80
                                   2357 ;	life.c:31: return;
      002B14                       2358 00245$:
                                   2359 ;	life.c:29: for (; *s; s++) putchar(*s);
      002B14 8D 82            [24] 2360 	mov	dpl,r5
      002B16 8E 83            [24] 2361 	mov	dph,r6
      002B18 8F F0            [24] 2362 	mov	b,r7
      002B1A 12 2C D8         [24] 2363 	lcall	__gptrget
      002B1D FC               [12] 2364 	mov	r4,a
      002B1E 60 1C            [24] 2365 	jz	00209$
      002B20 7B 00            [12] 2366 	mov	r3,#0x00
      002B22 8C 82            [24] 2367 	mov	dpl,r4
      002B24 8B 83            [24] 2368 	mov	dph,r3
      002B26 C0 07            [24] 2369 	push	ar7
      002B28 C0 06            [24] 2370 	push	ar6
      002B2A C0 05            [24] 2371 	push	ar5
      002B2C 12 2B 83         [24] 2372 	lcall	_putchar
      002B2F D0 05            [24] 2373 	pop	ar5
      002B31 D0 06            [24] 2374 	pop	ar6
      002B33 D0 07            [24] 2375 	pop	ar7
      002B35 0D               [12] 2376 	inc	r5
                                   2377 ;	life.c:231: printstr("BREAK\r\n");
      002B36 BD 00 DB         [24] 2378 	cjne	r5,#0x00,00245$
      002B39 0E               [12] 2379 	inc	r6
      002B3A 80 D8            [24] 2380 	sjmp	00245$
      002B3C                       2381 00209$:
                                   2382 ;	life.c:232: (void)getchar();
      002B3C 12 2B 8D         [24] 2383 	lcall	_getchar
      002B3F                       2384 00248$:
                                   2385 ;	life.c:195: for (i0 = 0; !i0; ) {		
      002B3F 78 31            [12] 2386 	mov	r0,#_i0
      002B41 E6               [12] 2387 	mov	a,@r0
      002B42 70 03            [24] 2388 	jnz	00518$
      002B44 02 23 46         [24] 2389 	ljmp	00247$
      002B47                       2390 00518$:
                                   2391 ;	life.c:236: terminate:
      002B47                       2392 00133$:
                                   2393 ;	life.c:237: EA = 0;
                                   2394 ;	assignBit
      002B47 C2 AF            [12] 2395 	clr	_EA
                                   2396 ;	life.c:238: printstr("TERM\r\n");
      002B49 7D 54            [12] 2397 	mov	r5,#___str_10
      002B4B 7E 2E            [12] 2398 	mov	r6,#(___str_10 >> 8)
      002B4D 7F 80            [12] 2399 	mov	r7,#0x80
                                   2400 ;	life.c:31: return;
      002B4F                       2401 00250$:
                                   2402 ;	life.c:29: for (; *s; s++) putchar(*s);
      002B4F 8D 82            [24] 2403 	mov	dpl,r5
      002B51 8E 83            [24] 2404 	mov	dph,r6
      002B53 8F F0            [24] 2405 	mov	b,r7
      002B55 12 2C D8         [24] 2406 	lcall	__gptrget
      002B58 FC               [12] 2407 	mov	r4,a
      002B59 60 1C            [24] 2408 	jz	00211$
      002B5B 7B 00            [12] 2409 	mov	r3,#0x00
      002B5D 8C 82            [24] 2410 	mov	dpl,r4
      002B5F 8B 83            [24] 2411 	mov	dph,r3
      002B61 C0 07            [24] 2412 	push	ar7
      002B63 C0 06            [24] 2413 	push	ar6
      002B65 C0 05            [24] 2414 	push	ar5
      002B67 12 2B 83         [24] 2415 	lcall	_putchar
      002B6A D0 05            [24] 2416 	pop	ar5
      002B6C D0 06            [24] 2417 	pop	ar6
      002B6E D0 07            [24] 2418 	pop	ar7
      002B70 0D               [12] 2419 	inc	r5
                                   2420 ;	life.c:238: printstr("TERM\r\n");
      002B71 BD 00 DB         [24] 2421 	cjne	r5,#0x00,00250$
      002B74 0E               [12] 2422 	inc	r6
      002B75 80 D8            [24] 2423 	sjmp	00250$
      002B77                       2424 00211$:
                                   2425 ;	life.c:239: (void)getchar();
      002B77 12 2B 8D         [24] 2426 	lcall	_getchar
                                   2427 ;	life.c:241: PCON |= 2;
      002B7A 43 87 02         [24] 2428 	orl	_PCON,#0x02
                                   2429 ;	life.c:243: return;
                                   2430 ;	life.c:244: }
      002B7D 85 10 81         [24] 2431 	mov	sp,_bp
      002B80 D0 10            [24] 2432 	pop	_bp
      002B82 22               [24] 2433 	ret
                                   2434 	.area CSEG    (CODE)
                                   2435 	.area CONST   (CODE)
                                   2436 	.area CONST   (CODE)
      002E00                       2437 ___str_0:
      002E00 1B                    2438 	.db 0x1b
      002E01 5B 32 4A              2439 	.ascii "[2J"
      002E04 1B                    2440 	.db 0x1b
      002E05 5B 6D 47 45 4E 20     2441 	.ascii "[mGEN "
      002E0B 00                    2442 	.db 0x00
                                   2443 	.area CSEG    (CODE)
                                   2444 	.area CONST   (CODE)
      002E0C                       2445 ___str_1:
      002E0C 0D                    2446 	.db 0x0d
      002E0D 0A                    2447 	.db 0x0a
      002E0E 00                    2448 	.db 0x00
                                   2449 	.area CSEG    (CODE)
                                   2450 	.area CONST   (CODE)
      002E0F                       2451 ___str_2:
      002E0F 4C 4F 41 44 20 3C     2452 	.ascii "LOAD <"
      002E15 00                    2453 	.db 0x00
                                   2454 	.area CSEG    (CODE)
                                   2455 	.area CONST   (CODE)
      002E16                       2456 ___str_3:
      002E16 3E                    2457 	.ascii ">"
      002E17 0D                    2458 	.db 0x0d
      002E18 0A                    2459 	.db 0x0a
      002E19 00                    2460 	.db 0x00
                                   2461 	.area CSEG    (CODE)
                                   2462 	.area CONST   (CODE)
      002E1A                       2463 ___str_4:
      002E1A 1B                    2464 	.db 0x1b
      002E1B 5B 32 4A              2465 	.ascii "[2J"
      002E1E 1B                    2466 	.db 0x1b
      002E1F 5B 6D 4C 49 46 45 20  2467 	.ascii "[mLIFE INIT"
             49 4E 49 54
      002E2A 0D                    2468 	.db 0x0d
      002E2B 0A                    2469 	.db 0x0a
      002E2C 00                    2470 	.db 0x00
                                   2471 	.area CSEG    (CODE)
                                   2472 	.area CONST   (CODE)
      002E2D                       2473 ___str_5:
      002E2D 52 45 41 44 59        2474 	.ascii "READY"
      002E32 0D                    2475 	.db 0x0d
      002E33 0A                    2476 	.db 0x0a
      002E34 00                    2477 	.db 0x00
                                   2478 	.area CSEG    (CODE)
                                   2479 	.area CONST   (CODE)
      002E35                       2480 ___str_6:
      002E35 44 4F 4E 45 20        2481 	.ascii "DONE "
      002E3A 00                    2482 	.db 0x00
                                   2483 	.area CSEG    (CODE)
                                   2484 	.area CONST   (CODE)
      002E3B                       2485 ___str_7:
      002E3B 46 49 58 45 44        2486 	.ascii "FIXED"
      002E40 0D                    2487 	.db 0x0d
      002E41 0A                    2488 	.db 0x0a
      002E42 00                    2489 	.db 0x00
                                   2490 	.area CSEG    (CODE)
                                   2491 	.area CONST   (CODE)
      002E43                       2492 ___str_8:
      002E43 43 59 43 4C 45 32     2493 	.ascii "CYCLE2"
      002E49 0D                    2494 	.db 0x0d
      002E4A 0A                    2495 	.db 0x0a
      002E4B 00                    2496 	.db 0x00
                                   2497 	.area CSEG    (CODE)
                                   2498 	.area CONST   (CODE)
      002E4C                       2499 ___str_9:
      002E4C 42 52 45 41 4B        2500 	.ascii "BREAK"
      002E51 0D                    2501 	.db 0x0d
      002E52 0A                    2502 	.db 0x0a
      002E53 00                    2503 	.db 0x00
                                   2504 	.area CSEG    (CODE)
                                   2505 	.area CONST   (CODE)
      002E54                       2506 ___str_10:
      002E54 54 45 52 4D           2507 	.ascii "TERM"
      002E58 0D                    2508 	.db 0x0d
      002E59 0A                    2509 	.db 0x0a
      002E5A 00                    2510 	.db 0x00
                                   2511 	.area CSEG    (CODE)
                                   2512 	.area XINIT   (CODE)
                                   2513 	.area CABS    (ABS,CODE)
