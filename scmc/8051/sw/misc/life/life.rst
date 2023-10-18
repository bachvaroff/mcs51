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
      000047                        310 __start__stack:
      000047                        311 	.ds	1
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
      000033                        323 _OE76:
      000033                        324 	.ds 1
      000034                        325 _x:
      000034                        326 	.ds 2
      000036                        327 _y:
      000036                        328 	.ds 2
      000038                        329 _j:
      000038                        330 	.ds 2
      00003A                        331 _c:
      00003A                        332 	.ds 2
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
                           008000   362 _RND	=	0x8000
                           00F006   363 _OEreg	=	0xf006
      004000                        364 _iu:
      004000                        365 	.ds 9216
      006400                        366 _pu:
      006400                        367 	.ds 9216
      008800                        368 _u:
      008800                        369 	.ds 9216
      00AC00                        370 _nu:
      00AC00                        371 	.ds 9216
                                    372 ;--------------------------------------------------------
                                    373 ; absolute external ram data
                                    374 ;--------------------------------------------------------
                                    375 	.area XABS    (ABS,XDATA)
                                    376 ;--------------------------------------------------------
                                    377 ; external initialized ram data
                                    378 ;--------------------------------------------------------
                                    379 	.area XISEG   (XDATA)
                                    380 	.area HOME    (CODE)
                                    381 	.area GSINIT0 (CODE)
                                    382 	.area GSINIT1 (CODE)
                                    383 	.area GSINIT2 (CODE)
                                    384 	.area GSINIT3 (CODE)
                                    385 	.area GSINIT4 (CODE)
                                    386 	.area GSINIT5 (CODE)
                                    387 	.area GSINIT  (CODE)
                                    388 	.area GSFINAL (CODE)
                                    389 	.area CSEG    (CODE)
                                    390 ;--------------------------------------------------------
                                    391 ; interrupt vector 
                                    392 ;--------------------------------------------------------
                                    393 	.area HOME    (CODE)
      002000                        394 __interrupt_vect:
      002000 02 20 19         [24]  395 	ljmp	__sdcc_gsinit_startup
      002003 02 20 C3         [24]  396 	ljmp	_int0
      002006                        397 	.ds	5
      00200B 32               [24]  398 	reti
      00200C                        399 	.ds	7
      002013 02 20 CF         [24]  400 	ljmp	_int1
                                    401 ;--------------------------------------------------------
                                    402 ; global & static initialisations
                                    403 ;--------------------------------------------------------
                                    404 	.area HOME    (CODE)
                                    405 	.area GSINIT  (CODE)
                                    406 	.area GSFINAL (CODE)
                                    407 	.area GSINIT  (CODE)
                                    408 	.globl __sdcc_gsinit_startup
                                    409 	.globl __sdcc_program_startup
                                    410 	.globl __start__stack
                                    411 	.globl __mcs51_genXINIT
                                    412 	.globl __mcs51_genXRAMCLEAR
                                    413 	.globl __mcs51_genRAMCLEAR
                                    414 ;	life.c:29: __idata static const char digits[16] = {
      002072 78 21            [12]  415 	mov	r0,#_digits
      002074 76 30            [12]  416 	mov	@r0,#0x30
      002076 78 22            [12]  417 	mov	r0,#(_digits + 0x0001)
      002078 76 31            [12]  418 	mov	@r0,#0x31
      00207A 78 23            [12]  419 	mov	r0,#(_digits + 0x0002)
      00207C 76 32            [12]  420 	mov	@r0,#0x32
      00207E 78 24            [12]  421 	mov	r0,#(_digits + 0x0003)
      002080 76 33            [12]  422 	mov	@r0,#0x33
      002082 78 25            [12]  423 	mov	r0,#(_digits + 0x0004)
      002084 76 34            [12]  424 	mov	@r0,#0x34
      002086 78 26            [12]  425 	mov	r0,#(_digits + 0x0005)
      002088 76 35            [12]  426 	mov	@r0,#0x35
      00208A 78 27            [12]  427 	mov	r0,#(_digits + 0x0006)
      00208C 76 36            [12]  428 	mov	@r0,#0x36
      00208E 78 28            [12]  429 	mov	r0,#(_digits + 0x0007)
      002090 76 37            [12]  430 	mov	@r0,#0x37
      002092 78 29            [12]  431 	mov	r0,#(_digits + 0x0008)
      002094 76 38            [12]  432 	mov	@r0,#0x38
      002096 78 2A            [12]  433 	mov	r0,#(_digits + 0x0009)
      002098 76 39            [12]  434 	mov	@r0,#0x39
      00209A 78 2B            [12]  435 	mov	r0,#(_digits + 0x000a)
      00209C 76 41            [12]  436 	mov	@r0,#0x41
      00209E 78 2C            [12]  437 	mov	r0,#(_digits + 0x000b)
      0020A0 76 42            [12]  438 	mov	@r0,#0x42
      0020A2 78 2D            [12]  439 	mov	r0,#(_digits + 0x000c)
      0020A4 76 43            [12]  440 	mov	@r0,#0x43
      0020A6 78 2E            [12]  441 	mov	r0,#(_digits + 0x000d)
      0020A8 76 44            [12]  442 	mov	@r0,#0x44
      0020AA 78 2F            [12]  443 	mov	r0,#(_digits + 0x000e)
      0020AC 76 45            [12]  444 	mov	@r0,#0x45
      0020AE 78 30            [12]  445 	mov	r0,#(_digits + 0x000f)
      0020B0 76 46            [12]  446 	mov	@r0,#0x46
                                    447 	.area GSFINAL (CODE)
      0020B2 02 20 16         [24]  448 	ljmp	__sdcc_program_startup
                                    449 ;--------------------------------------------------------
                                    450 ; Home
                                    451 ;--------------------------------------------------------
                                    452 	.area HOME    (CODE)
                                    453 	.area HOME    (CODE)
      002016                        454 __sdcc_program_startup:
      002016 02 22 C0         [24]  455 	ljmp	_main
                                    456 ;	return from main will return to caller
                                    457 ;--------------------------------------------------------
                                    458 ; code
                                    459 ;--------------------------------------------------------
                                    460 	.area CSEG    (CODE)
                                    461 ;------------------------------------------------------------
                                    462 ;Allocation info for local variables in function 'putchar'
                                    463 ;------------------------------------------------------------
                                    464 ;c                         Allocated to registers 
                                    465 ;------------------------------------------------------------
                                    466 ;	life.c:10: int putchar(int c) __naked {
                                    467 ;	-----------------------------------------
                                    468 ;	 function putchar
                                    469 ;	-----------------------------------------
      0020B5                        470 _putchar:
                                    471 ;	naked function: no prologue.
                                    472 ;	life.c:15: __endasm;
      0020B5 E5 82            [12]  473 	mov	a, dpl
      0020B7 02 00 30         [24]  474 	ljmp	0x0030
                                    475 ;	life.c:16: }
                                    476 ;	naked function: no epilogue.
                                    477 ;------------------------------------------------------------
                                    478 ;Allocation info for local variables in function 'getchar'
                                    479 ;------------------------------------------------------------
                                    480 ;	life.c:18: int getchar(void) __naked {
                                    481 ;	-----------------------------------------
                                    482 ;	 function getchar
                                    483 ;	-----------------------------------------
      0020BA                        484 _getchar:
                                    485 ;	naked function: no prologue.
                                    486 ;	life.c:24: __endasm;
      0020BA 12 00 32         [24]  487 	lcall	0x0032
      0020BD F5 82            [12]  488 	mov	dpl, a
      0020BF 75 83 00         [24]  489 	mov	dph, #0
      0020C2 22               [24]  490 	ret
                                    491 ;	life.c:25: }
                                    492 ;	naked function: no epilogue.
                                    493 ;------------------------------------------------------------
                                    494 ;Allocation info for local variables in function 'int0'
                                    495 ;------------------------------------------------------------
                                    496 ;	life.c:58: void int0(void) __interrupt IE0_VECTOR __using 1 {
                                    497 ;	-----------------------------------------
                                    498 ;	 function int0
                                    499 ;	-----------------------------------------
      0020C3                        500 _int0:
                           00000F   501 	ar7 = 0x0f
                           00000E   502 	ar6 = 0x0e
                           00000D   503 	ar5 = 0x0d
                           00000C   504 	ar4 = 0x0c
                           00000B   505 	ar3 = 0x0b
                           00000A   506 	ar2 = 0x0a
                           000009   507 	ar1 = 0x09
                           000008   508 	ar0 = 0x08
      0020C3 C0 D0            [24]  509 	push	psw
      0020C5 75 D0 08         [24]  510 	mov	psw,#0x08
                                    511 ;	life.c:59: i0 = 1;
      0020C8 78 31            [12]  512 	mov	r0,#_i0
      0020CA 76 01            [12]  513 	mov	@r0,#0x01
                                    514 ;	life.c:60: }
      0020CC D0 D0            [24]  515 	pop	psw
      0020CE 32               [24]  516 	reti
                                    517 ;	eliminated unneeded push/pop dpl
                                    518 ;	eliminated unneeded push/pop dph
                                    519 ;	eliminated unneeded push/pop b
                                    520 ;	eliminated unneeded push/pop acc
                                    521 ;------------------------------------------------------------
                                    522 ;Allocation info for local variables in function 'int1'
                                    523 ;------------------------------------------------------------
                                    524 ;	life.c:62: void int1(void) __interrupt IE1_VECTOR __using 1 {
                                    525 ;	-----------------------------------------
                                    526 ;	 function int1
                                    527 ;	-----------------------------------------
      0020CF                        528 _int1:
      0020CF C0 D0            [24]  529 	push	psw
      0020D1 75 D0 08         [24]  530 	mov	psw,#0x08
                                    531 ;	life.c:63: i1 = 1;
      0020D4 78 32            [12]  532 	mov	r0,#_i1
      0020D6 76 01            [12]  533 	mov	@r0,#0x01
                                    534 ;	life.c:64: }
      0020D8 D0 D0            [24]  535 	pop	psw
      0020DA 32               [24]  536 	reti
                                    537 ;	eliminated unneeded push/pop dpl
                                    538 ;	eliminated unneeded push/pop dph
                                    539 ;	eliminated unneeded push/pop b
                                    540 ;	eliminated unneeded push/pop acc
                                    541 ;------------------------------------------------------------
                                    542 ;Allocation info for local variables in function 'flashOE'
                                    543 ;------------------------------------------------------------
                                    544 ;	life.c:74: static void flashOE(void) {
                                    545 ;	-----------------------------------------
                                    546 ;	 function flashOE
                                    547 ;	-----------------------------------------
      0020DB                        548 _flashOE:
                           000007   549 	ar7 = 0x07
                           000006   550 	ar6 = 0x06
                           000005   551 	ar5 = 0x05
                           000004   552 	ar4 = 0x04
                           000003   553 	ar3 = 0x03
                           000002   554 	ar2 = 0x02
                           000001   555 	ar1 = 0x01
                           000000   556 	ar0 = 0x00
                                    557 ;	life.c:75: P1_7 = 0;
                                    558 ;	assignBit
      0020DB C2 97            [12]  559 	clr	_P1_7
                                    560 ;	life.c:76: OEreg = OE76;
      0020DD 78 33            [12]  561 	mov	r0,#_OE76
      0020DF 90 F0 06         [24]  562 	mov	dptr,#_OEreg
      0020E2 E6               [12]  563 	mov	a,@r0
      0020E3 F0               [24]  564 	movx	@dptr,a
                                    565 ;	life.c:77: P1_7 = 1;
                                    566 ;	assignBit
      0020E4 D2 97            [12]  567 	setb	_P1_7
                                    568 ;	life.c:79: return;
                                    569 ;	life.c:80: }
      0020E6 22               [24]  570 	ret
                                    571 ;------------------------------------------------------------
                                    572 ;Allocation info for local variables in function 'show'
                                    573 ;------------------------------------------------------------
                                    574 ;hdr                       Allocated to registers r7 
                                    575 ;__1966080005              Allocated to registers 
                                    576 ;s                         Allocated to registers r5 r6 r7 
                                    577 ;__1310720001              Allocated to registers r6 r7 
                                    578 ;a                         Allocated to registers 
                                    579 ;__1310720003              Allocated to registers r6 r7 
                                    580 ;a                         Allocated to registers 
                                    581 ;__1966080008              Allocated to registers 
                                    582 ;s                         Allocated to registers r5 r6 r7 
                                    583 ;__2621440011              Allocated to registers 
                                    584 ;s                         Allocated to registers r5 r6 r7 
                                    585 ;------------------------------------------------------------
                                    586 ;	life.c:116: void show(char hdr) {
                                    587 ;	-----------------------------------------
                                    588 ;	 function show
                                    589 ;	-----------------------------------------
      0020E7                        590 _show:
                                    591 ;	life.c:117: if (hdr) {
      0020E7 E5 82            [12]  592 	mov	a,dpl
      0020E9 FF               [12]  593 	mov	r7,a
      0020EA 70 03            [24]  594 	jnz	00190$
      0020EC 02 22 25         [24]  595 	ljmp	00102$
      0020EF                        596 00190$:
                                    597 ;	life.c:118: printstr("\033[2J\033[mGEN ");
      0020EF 7D 51            [12]  598 	mov	r5,#___str_0
      0020F1 7E 2F            [12]  599 	mov	r6,#(___str_0 >> 8)
      0020F3 7F 80            [12]  600 	mov	r7,#0x80
                                    601 ;	life.c:53: return;
      0020F5                        602 00121$:
                                    603 ;	life.c:51: for (; *s; s++) putchar(*s);
      0020F5 8D 82            [24]  604 	mov	dpl,r5
      0020F7 8E 83            [24]  605 	mov	dph,r6
      0020F9 8F F0            [24]  606 	mov	b,r7
      0020FB 12 2E 29         [24]  607 	lcall	__gptrget
      0020FE FC               [12]  608 	mov	r4,a
      0020FF 60 10            [24]  609 	jz	00109$
      002101 7B 00            [12]  610 	mov	r3,#0x00
      002103 8C 82            [24]  611 	mov	dpl,r4
      002105 8B 83            [24]  612 	mov	dph,r3
      002107 12 20 B5         [24]  613 	lcall	_putchar
      00210A 0D               [12]  614 	inc	r5
                                    615 ;	life.c:118: printstr("\033[2J\033[mGEN ");
      00210B BD 00 E7         [24]  616 	cjne	r5,#0x00,00121$
      00210E 0E               [12]  617 	inc	r6
      00210F 80 E4            [24]  618 	sjmp	00121$
      002111                        619 00109$:
                                    620 ;	life.c:110: print16x(generation[1]);
      002111 78 45            [12]  621 	mov	r0,#(_generation + 0x0002)
      002113 86 06            [24]  622 	mov	ar6,@r0
      002115 08               [12]  623 	inc	r0
                                    624 ;	life.c:42: putchar(digits[(a >> 12) & 0xf]);
      002116 E6               [12]  625 	mov	a,@r0
      002117 FF               [12]  626 	mov	r7,a
      002118 C4               [12]  627 	swap	a
      002119 54 0F            [12]  628 	anl	a,#0x0f
      00211B FC               [12]  629 	mov	r4,a
      00211C 53 04 0F         [24]  630 	anl	ar4,#0x0f
      00211F EC               [12]  631 	mov	a,r4
      002120 24 21            [12]  632 	add	a,#_digits
      002122 F9               [12]  633 	mov	r1,a
      002123 87 05            [24]  634 	mov	ar5,@r1
      002125 7C 00            [12]  635 	mov	r4,#0x00
      002127 8D 82            [24]  636 	mov	dpl,r5
      002129 8C 83            [24]  637 	mov	dph,r4
      00212B 12 20 B5         [24]  638 	lcall	_putchar
                                    639 ;	life.c:43: putchar(digits[(a >> 8) & 0xf]);
      00212E 8F 05            [24]  640 	mov	ar5,r7
      002130 53 05 0F         [24]  641 	anl	ar5,#0x0f
      002133 ED               [12]  642 	mov	a,r5
      002134 24 21            [12]  643 	add	a,#_digits
      002136 F9               [12]  644 	mov	r1,a
      002137 87 05            [24]  645 	mov	ar5,@r1
      002139 7C 00            [12]  646 	mov	r4,#0x00
      00213B 8D 82            [24]  647 	mov	dpl,r5
      00213D 8C 83            [24]  648 	mov	dph,r4
      00213F 12 20 B5         [24]  649 	lcall	_putchar
                                    650 ;	life.c:44: putchar(digits[(a >> 4) & 0xf]);
      002142 8E 04            [24]  651 	mov	ar4,r6
      002144 EF               [12]  652 	mov	a,r7
      002145 C4               [12]  653 	swap	a
      002146 CC               [12]  654 	xch	a,r4
      002147 C4               [12]  655 	swap	a
      002148 54 0F            [12]  656 	anl	a,#0x0f
      00214A 6C               [12]  657 	xrl	a,r4
      00214B CC               [12]  658 	xch	a,r4
      00214C 54 0F            [12]  659 	anl	a,#0x0f
      00214E CC               [12]  660 	xch	a,r4
      00214F 6C               [12]  661 	xrl	a,r4
      002150 CC               [12]  662 	xch	a,r4
      002151 53 04 0F         [24]  663 	anl	ar4,#0x0f
      002154 EC               [12]  664 	mov	a,r4
      002155 24 21            [12]  665 	add	a,#_digits
      002157 F9               [12]  666 	mov	r1,a
      002158 87 05            [24]  667 	mov	ar5,@r1
      00215A 7C 00            [12]  668 	mov	r4,#0x00
      00215C 8D 82            [24]  669 	mov	dpl,r5
      00215E 8C 83            [24]  670 	mov	dph,r4
      002160 12 20 B5         [24]  671 	lcall	_putchar
                                    672 ;	life.c:45: putchar(digits[a & 0xf]);
      002163 53 06 0F         [24]  673 	anl	ar6,#0x0f
      002166 EE               [12]  674 	mov	a,r6
      002167 24 21            [12]  675 	add	a,#_digits
      002169 F9               [12]  676 	mov	r1,a
      00216A 87 07            [24]  677 	mov	ar7,@r1
      00216C 7E 00            [12]  678 	mov	r6,#0x00
      00216E 8F 82            [24]  679 	mov	dpl,r7
      002170 8E 83            [24]  680 	mov	dph,r6
      002172 12 20 B5         [24]  681 	lcall	_putchar
                                    682 ;	life.c:111: print16x(generation[0]);
      002175 78 43            [12]  683 	mov	r0,#_generation
      002177 86 06            [24]  684 	mov	ar6,@r0
      002179 08               [12]  685 	inc	r0
                                    686 ;	life.c:42: putchar(digits[(a >> 12) & 0xf]);
      00217A E6               [12]  687 	mov	a,@r0
      00217B FF               [12]  688 	mov	r7,a
      00217C C4               [12]  689 	swap	a
      00217D 54 0F            [12]  690 	anl	a,#0x0f
      00217F FC               [12]  691 	mov	r4,a
      002180 53 04 0F         [24]  692 	anl	ar4,#0x0f
      002183 EC               [12]  693 	mov	a,r4
      002184 24 21            [12]  694 	add	a,#_digits
      002186 F9               [12]  695 	mov	r1,a
      002187 87 05            [24]  696 	mov	ar5,@r1
      002189 7C 00            [12]  697 	mov	r4,#0x00
      00218B 8D 82            [24]  698 	mov	dpl,r5
      00218D 8C 83            [24]  699 	mov	dph,r4
      00218F 12 20 B5         [24]  700 	lcall	_putchar
                                    701 ;	life.c:43: putchar(digits[(a >> 8) & 0xf]);
      002192 8F 05            [24]  702 	mov	ar5,r7
      002194 53 05 0F         [24]  703 	anl	ar5,#0x0f
      002197 ED               [12]  704 	mov	a,r5
      002198 24 21            [12]  705 	add	a,#_digits
      00219A F9               [12]  706 	mov	r1,a
      00219B 87 05            [24]  707 	mov	ar5,@r1
      00219D 7C 00            [12]  708 	mov	r4,#0x00
      00219F 8D 82            [24]  709 	mov	dpl,r5
      0021A1 8C 83            [24]  710 	mov	dph,r4
      0021A3 12 20 B5         [24]  711 	lcall	_putchar
                                    712 ;	life.c:44: putchar(digits[(a >> 4) & 0xf]);
      0021A6 8E 04            [24]  713 	mov	ar4,r6
      0021A8 EF               [12]  714 	mov	a,r7
      0021A9 C4               [12]  715 	swap	a
      0021AA CC               [12]  716 	xch	a,r4
      0021AB C4               [12]  717 	swap	a
      0021AC 54 0F            [12]  718 	anl	a,#0x0f
      0021AE 6C               [12]  719 	xrl	a,r4
      0021AF CC               [12]  720 	xch	a,r4
      0021B0 54 0F            [12]  721 	anl	a,#0x0f
      0021B2 CC               [12]  722 	xch	a,r4
      0021B3 6C               [12]  723 	xrl	a,r4
      0021B4 CC               [12]  724 	xch	a,r4
      0021B5 53 04 0F         [24]  725 	anl	ar4,#0x0f
      0021B8 EC               [12]  726 	mov	a,r4
      0021B9 24 21            [12]  727 	add	a,#_digits
      0021BB F9               [12]  728 	mov	r1,a
      0021BC 87 05            [24]  729 	mov	ar5,@r1
      0021BE 7C 00            [12]  730 	mov	r4,#0x00
      0021C0 8D 82            [24]  731 	mov	dpl,r5
      0021C2 8C 83            [24]  732 	mov	dph,r4
      0021C4 12 20 B5         [24]  733 	lcall	_putchar
                                    734 ;	life.c:45: putchar(digits[a & 0xf]);
      0021C7 53 06 0F         [24]  735 	anl	ar6,#0x0f
      0021CA EE               [12]  736 	mov	a,r6
      0021CB 24 21            [12]  737 	add	a,#_digits
      0021CD F9               [12]  738 	mov	r1,a
      0021CE 87 07            [24]  739 	mov	ar7,@r1
      0021D0 7E 00            [12]  740 	mov	r6,#0x00
      0021D2 8F 82            [24]  741 	mov	dpl,r7
      0021D4 8E 83            [24]  742 	mov	dph,r6
      0021D6 12 20 B5         [24]  743 	lcall	_putchar
                                    744 ;	life.c:120: printstr("\r\n");
      0021D9 7D 5D            [12]  745 	mov	r5,#___str_1
      0021DB 7E 2F            [12]  746 	mov	r6,#(___str_1 >> 8)
      0021DD 7F 80            [12]  747 	mov	r7,#0x80
                                    748 ;	life.c:53: return;
      0021DF                        749 00124$:
                                    750 ;	life.c:51: for (; *s; s++) putchar(*s);
      0021DF 8D 82            [24]  751 	mov	dpl,r5
      0021E1 8E 83            [24]  752 	mov	dph,r6
      0021E3 8F F0            [24]  753 	mov	b,r7
      0021E5 12 2E 29         [24]  754 	lcall	__gptrget
      0021E8 FC               [12]  755 	mov	r4,a
      0021E9 60 10            [24]  756 	jz	00114$
      0021EB 7B 00            [12]  757 	mov	r3,#0x00
      0021ED 8C 82            [24]  758 	mov	dpl,r4
      0021EF 8B 83            [24]  759 	mov	dph,r3
      0021F1 12 20 B5         [24]  760 	lcall	_putchar
      0021F4 0D               [12]  761 	inc	r5
                                    762 ;	life.c:120: printstr("\r\n");
      0021F5 BD 00 E7         [24]  763 	cjne	r5,#0x00,00124$
      0021F8 0E               [12]  764 	inc	r6
      0021F9 80 E4            [24]  765 	sjmp	00124$
      0021FB                        766 00114$:
                                    767 ;	life.c:103: generation[0]++;
      0021FB 78 43            [12]  768 	mov	r0,#_generation
      0021FD 86 06            [24]  769 	mov	ar6,@r0
      0021FF 08               [12]  770 	inc	r0
      002200 86 07            [24]  771 	mov	ar7,@r0
      002202 0E               [12]  772 	inc	r6
      002203 BE 00 01         [24]  773 	cjne	r6,#0x00,00195$
      002206 0F               [12]  774 	inc	r7
      002207                        775 00195$:
      002207 78 43            [12]  776 	mov	r0,#_generation
      002209 A6 06            [24]  777 	mov	@r0,ar6
      00220B 08               [12]  778 	inc	r0
      00220C A6 07            [24]  779 	mov	@r0,ar7
                                    780 ;	life.c:104: if (!generation[0]) generation[1]++;
      00220E EE               [12]  781 	mov	a,r6
      00220F 4F               [12]  782 	orl	a,r7
      002210 70 13            [24]  783 	jnz	00102$
      002212 78 45            [12]  784 	mov	r0,#(_generation + 0x0002)
      002214 86 06            [24]  785 	mov	ar6,@r0
      002216 08               [12]  786 	inc	r0
      002217 86 07            [24]  787 	mov	ar7,@r0
      002219 0E               [12]  788 	inc	r6
      00221A BE 00 01         [24]  789 	cjne	r6,#0x00,00197$
      00221D 0F               [12]  790 	inc	r7
      00221E                        791 00197$:
      00221E 78 45            [12]  792 	mov	r0,#(_generation + 0x0002)
      002220 A6 06            [24]  793 	mov	@r0,ar6
      002222 08               [12]  794 	inc	r0
      002223 A6 07            [24]  795 	mov	@r0,ar7
                                    796 ;	life.c:121: updategen();
      002225                        797 00102$:
                                    798 ;	life.c:124: for (x = 0; x < W; x++) {
      002225 78 34            [12]  799 	mov	r0,#_x
      002227 E4               [12]  800 	clr	a
      002228 F6               [12]  801 	mov	@r0,a
      002229 08               [12]  802 	inc	r0
      00222A F6               [12]  803 	mov	@r0,a
      00222B                        804 00131$:
                                    805 ;	life.c:125: for (y = 0; y < H; y++)
      00222B 78 36            [12]  806 	mov	r0,#_y
      00222D E4               [12]  807 	clr	a
      00222E F6               [12]  808 	mov	@r0,a
      00222F 08               [12]  809 	inc	r0
      002230 F6               [12]  810 	mov	@r0,a
      002231                        811 00126$:
                                    812 ;	life.c:126: if (u[A2D(W, y, x)]) putchar('1');
      002231 78 36            [12]  813 	mov	r0,#_y
      002233 E6               [12]  814 	mov	a,@r0
      002234 C0 E0            [24]  815 	push	acc
      002236 08               [12]  816 	inc	r0
      002237 E6               [12]  817 	mov	a,@r0
      002238 C0 E0            [24]  818 	push	acc
      00223A 90 00 30         [24]  819 	mov	dptr,#0x0030
      00223D 12 2C 67         [24]  820 	lcall	__mulint
      002240 AE 82            [24]  821 	mov	r6,dpl
      002242 AF 83            [24]  822 	mov	r7,dph
      002244 15 81            [12]  823 	dec	sp
      002246 15 81            [12]  824 	dec	sp
      002248 78 34            [12]  825 	mov	r0,#_x
      00224A E6               [12]  826 	mov	a,@r0
      00224B 2E               [12]  827 	add	a,r6
      00224C FE               [12]  828 	mov	r6,a
      00224D 08               [12]  829 	inc	r0
      00224E E6               [12]  830 	mov	a,@r0
      00224F 3F               [12]  831 	addc	a,r7
      002250 FF               [12]  832 	mov	r7,a
      002251 EE               [12]  833 	mov	a,r6
      002252 24 00            [12]  834 	add	a,#_u
      002254 FE               [12]  835 	mov	r6,a
      002255 EF               [12]  836 	mov	a,r7
      002256 34 88            [12]  837 	addc	a,#(_u >> 8)
      002258 FF               [12]  838 	mov	r7,a
      002259 8E 82            [24]  839 	mov	dpl,r6
      00225B 8F 83            [24]  840 	mov	dph,r7
      00225D E0               [24]  841 	movx	a,@dptr
      00225E 60 08            [24]  842 	jz	00104$
      002260 90 00 31         [24]  843 	mov	dptr,#0x0031
      002263 12 20 B5         [24]  844 	lcall	_putchar
      002266 80 06            [24]  845 	sjmp	00127$
      002268                        846 00104$:
                                    847 ;	life.c:127: else putchar('0');
      002268 90 00 30         [24]  848 	mov	dptr,#0x0030
      00226B 12 20 B5         [24]  849 	lcall	_putchar
      00226E                        850 00127$:
                                    851 ;	life.c:125: for (y = 0; y < H; y++)
      00226E 78 36            [12]  852 	mov	r0,#_y
      002270 06               [12]  853 	inc	@r0
      002271 B6 00 02         [24]  854 	cjne	@r0,#0x00,00199$
      002274 08               [12]  855 	inc	r0
      002275 06               [12]  856 	inc	@r0
      002276                        857 00199$:
      002276 78 36            [12]  858 	mov	r0,#_y
      002278 C3               [12]  859 	clr	c
      002279 E6               [12]  860 	mov	a,@r0
      00227A 94 C0            [12]  861 	subb	a,#0xc0
      00227C 08               [12]  862 	inc	r0
      00227D E6               [12]  863 	mov	a,@r0
      00227E 64 80            [12]  864 	xrl	a,#0x80
      002280 94 80            [12]  865 	subb	a,#0x80
      002282 40 AD            [24]  866 	jc	00126$
                                    867 ;	life.c:128: printstr("\r\n");
      002284 7D 5D            [12]  868 	mov	r5,#___str_1
      002286 7E 2F            [12]  869 	mov	r6,#(___str_1 >> 8)
      002288 7F 80            [12]  870 	mov	r7,#0x80
                                    871 ;	life.c:53: return;
      00228A                        872 00129$:
                                    873 ;	life.c:51: for (; *s; s++) putchar(*s);
      00228A 8D 82            [24]  874 	mov	dpl,r5
      00228C 8E 83            [24]  875 	mov	dph,r6
      00228E 8F F0            [24]  876 	mov	b,r7
      002290 12 2E 29         [24]  877 	lcall	__gptrget
      002293 FC               [12]  878 	mov	r4,a
      002294 60 10            [24]  879 	jz	00119$
      002296 7B 00            [12]  880 	mov	r3,#0x00
      002298 8C 82            [24]  881 	mov	dpl,r4
      00229A 8B 83            [24]  882 	mov	dph,r3
      00229C 12 20 B5         [24]  883 	lcall	_putchar
      00229F 0D               [12]  884 	inc	r5
                                    885 ;	life.c:128: printstr("\r\n");
      0022A0 BD 00 E7         [24]  886 	cjne	r5,#0x00,00129$
      0022A3 0E               [12]  887 	inc	r6
      0022A4 80 E4            [24]  888 	sjmp	00129$
      0022A6                        889 00119$:
                                    890 ;	life.c:124: for (x = 0; x < W; x++) {
      0022A6 78 34            [12]  891 	mov	r0,#_x
      0022A8 06               [12]  892 	inc	@r0
      0022A9 B6 00 02         [24]  893 	cjne	@r0,#0x00,00203$
      0022AC 08               [12]  894 	inc	r0
      0022AD 06               [12]  895 	inc	@r0
      0022AE                        896 00203$:
      0022AE 78 34            [12]  897 	mov	r0,#_x
      0022B0 C3               [12]  898 	clr	c
      0022B1 E6               [12]  899 	mov	a,@r0
      0022B2 94 30            [12]  900 	subb	a,#0x30
      0022B4 08               [12]  901 	inc	r0
      0022B5 E6               [12]  902 	mov	a,@r0
      0022B6 64 80            [12]  903 	xrl	a,#0x80
      0022B8 94 80            [12]  904 	subb	a,#0x80
      0022BA 50 03            [24]  905 	jnc	00204$
      0022BC 02 22 2B         [24]  906 	ljmp	00131$
      0022BF                        907 00204$:
                                    908 ;	life.c:131: return;
                                    909 ;	life.c:132: }
      0022BF 22               [24]  910 	ret
                                    911 ;------------------------------------------------------------
                                    912 ;Allocation info for local variables in function 'main'
                                    913 ;------------------------------------------------------------
                                    914 ;__2621440023              Allocated to registers 
                                    915 ;s                         Allocated to registers r5 r6 r7 
                                    916 ;__1310720013              Allocated to registers 
                                    917 ;s                         Allocated to registers r5 r6 r7 
                                    918 ;__1310720015              Allocated to registers r6 r7 
                                    919 ;a                         Allocated to registers r4 r5 
                                    920 ;__1310720017              Allocated to registers 
                                    921 ;s                         Allocated to registers r5 r6 r7 
                                    922 ;__1310720019              Allocated to registers 
                                    923 ;s                         Allocated to registers r5 r6 r7 
                                    924 ;__1310720021              Allocated to registers 
                                    925 ;s                         Allocated to registers r5 r6 r7 
                                    926 ;__2621440028              Allocated to registers 
                                    927 ;s                         Allocated to registers r5 r6 r7 
                                    928 ;__4587520032              Allocated to registers 
                                    929 ;s                         Allocated to registers r5 r6 r7 
                                    930 ;__4587520034              Allocated to registers 
                                    931 ;s                         Allocated to registers r5 r6 r7 
                                    932 ;__4587520036              Allocated to registers 
                                    933 ;s                         Allocated to registers r5 r6 r7 
                                    934 ;__3276800038              Allocated to registers 
                                    935 ;s                         Allocated to registers r5 r6 r7 
                                    936 ;__1310720040              Allocated to registers 
                                    937 ;s                         Allocated to registers r5 r6 r7 
                                    938 ;sloc0                     Allocated to stack - _bp +1
                                    939 ;sloc1                     Allocated to stack - _bp +2
                                    940 ;sloc2                     Allocated to stack - _bp +4
                                    941 ;sloc3                     Allocated to stack - _bp +6
                                    942 ;sloc4                     Allocated to stack - _bp +8
                                    943 ;sloc5                     Allocated to stack - _bp +10
                                    944 ;sloc6                     Allocated to stack - _bp +12
                                    945 ;------------------------------------------------------------
                                    946 ;	life.c:243: void main(void) {
                                    947 ;	-----------------------------------------
                                    948 ;	 function main
                                    949 ;	-----------------------------------------
      0022C0                        950 _main:
      0022C0 C0 10            [24]  951 	push	_bp
      0022C2 E5 81            [12]  952 	mov	a,sp
      0022C4 F5 10            [12]  953 	mov	_bp,a
      0022C6 24 0D            [12]  954 	add	a,#0x0d
      0022C8 F5 81            [12]  955 	mov	sp,a
                                    956 ;	life.c:244: IT0 = 1;
                                    957 ;	assignBit
      0022CA D2 88            [12]  958 	setb	_IT0
                                    959 ;	life.c:245: IT1 = 1;
                                    960 ;	assignBit
      0022CC D2 8A            [12]  961 	setb	_IT1
                                    962 ;	life.c:246: EX0 = 1;
                                    963 ;	assignBit
      0022CE D2 A8            [12]  964 	setb	_EX0
                                    965 ;	life.c:247: EX1 = 1;
                                    966 ;	assignBit
      0022D0 D2 AA            [12]  967 	setb	_EX1
                                    968 ;	life.c:248: EA = 1;	
                                    969 ;	assignBit
      0022D2 D2 AF            [12]  970 	setb	_EA
                                    971 ;	life.c:249: P1_7 = 1;
                                    972 ;	assignBit
      0022D4 D2 97            [12]  973 	setb	_P1_7
                                    974 ;	life.c:251: srand(RND);
      0022D6 90 80 00         [24]  975 	mov	dptr,#_RND
      0022D9 E0               [24]  976 	movx	a,@dptr
      0022DA FE               [12]  977 	mov	r6,a
      0022DB A3               [24]  978 	inc	dptr
      0022DC E0               [24]  979 	movx	a,@dptr
      0022DD FF               [12]  980 	mov	r7,a
      0022DE 8E 82            [24]  981 	mov	dpl,r6
      0022E0 8F 83            [24]  982 	mov	dph,r7
      0022E2 12 2C 4E         [24]  983 	lcall	_srand
                                    984 ;	life.c:253: OE76 = OE76_0;
      0022E5 78 33            [12]  985 	mov	r0,#_OE76
      0022E7 76 3F            [12]  986 	mov	@r0,#0x3f
                                    987 ;	life.c:254: flashOE();
      0022E9 12 20 DB         [24]  988 	lcall	_flashOE
                                    989 ;	life.c:256: for (i0 = 0; !i0; ) {	
      0022EC 78 31            [12]  990 	mov	r0,#_i0
      0022EE 76 00            [12]  991 	mov	@r0,#0x00
      0022F0                        992 00246$:
                                    993 ;	life.c:257: printstr("\033[2J\033[?25l\033[mLIFE INIT T L R P\r\n");
      0022F0 7D 7A            [12]  994 	mov	r5,#___str_5
      0022F2 7E 2F            [12]  995 	mov	r6,#(___str_5 >> 8)
      0022F4 7F 80            [12]  996 	mov	r7,#0x80
                                    997 ;	life.c:53: return;
      0022F6                        998 00202$:
                                    999 ;	life.c:51: for (; *s; s++) putchar(*s);
      0022F6 8D 82            [24] 1000 	mov	dpl,r5
      0022F8 8E 83            [24] 1001 	mov	dph,r6
      0022FA 8F F0            [24] 1002 	mov	b,r7
      0022FC 12 2E 29         [24] 1003 	lcall	__gptrget
      0022FF FC               [12] 1004 	mov	r4,a
      002300 60 10            [24] 1005 	jz	00110$
      002302 7B 00            [12] 1006 	mov	r3,#0x00
      002304 8C 82            [24] 1007 	mov	dpl,r4
      002306 8B 83            [24] 1008 	mov	dph,r3
      002308 12 20 B5         [24] 1009 	lcall	_putchar
      00230B 0D               [12] 1010 	inc	r5
                                   1011 ;	life.c:258: while (1) {
      00230C BD 00 E7         [24] 1012 	cjne	r5,#0x00,00202$
      00230F 0E               [12] 1013 	inc	r6
      002310 80 E4            [24] 1014 	sjmp	00202$
      002312                       1015 00110$:
                                   1016 ;	life.c:259: c = toupper(getchar());
      002312 12 20 BA         [24] 1017 	lcall	_getchar
      002315 12 2E 02         [24] 1018 	lcall	_toupper
      002318 AE 82            [24] 1019 	mov	r6,dpl
      00231A AF 83            [24] 1020 	mov	r7,dph
      00231C 78 3A            [12] 1021 	mov	r0,#_c
      00231E A6 06            [24] 1022 	mov	@r0,ar6
      002320 08               [12] 1023 	inc	r0
      002321 A6 07            [24] 1024 	mov	@r0,ar7
                                   1025 ;	life.c:260: if (i0 || (c == (int)'T')) goto term;
      002323 78 31            [12] 1026 	mov	r0,#_i0
      002325 E6               [12] 1027 	mov	a,@r0
      002326 60 03            [24] 1028 	jz	00516$
      002328 02 2B 5A         [24] 1029 	ljmp	00142$
      00232B                       1030 00516$:
      00232B BE 54 06         [24] 1031 	cjne	r6,#0x54,00517$
      00232E BF 00 03         [24] 1032 	cjne	r7,#0x00,00517$
      002331 02 2B 5A         [24] 1033 	ljmp	00142$
      002334                       1034 00517$:
                                   1035 ;	life.c:261: else if ((c == (int)'L') || (c == (int)'R') || (c == (int)'P')) break;
      002334 BE 4C 05         [24] 1036 	cjne	r6,#0x4c,00518$
      002337 BF 00 02         [24] 1037 	cjne	r7,#0x00,00518$
      00233A 80 0E            [24] 1038 	sjmp	00291$
      00233C                       1039 00518$:
      00233C BE 52 05         [24] 1040 	cjne	r6,#0x52,00519$
      00233F BF 00 02         [24] 1041 	cjne	r7,#0x00,00519$
      002342 80 06            [24] 1042 	sjmp	00291$
      002344                       1043 00519$:
      002344 BE 50 CB         [24] 1044 	cjne	r6,#0x50,00110$
      002347 BF 00 C8         [24] 1045 	cjne	r7,#0x00,00110$
                                   1046 ;	life.c:264: reload:
      00234A                       1047 00291$:
      00234A                       1048 00112$:
                                   1049 ;	life.c:135: memset(u, 0, sizeof (u));
      00234A E4               [12] 1050 	clr	a
      00234B C0 E0            [24] 1051 	push	acc
      00234D 74 24            [12] 1052 	mov	a,#0x24
      00234F C0 E0            [24] 1053 	push	acc
      002351 E4               [12] 1054 	clr	a
      002352 C0 E0            [24] 1055 	push	acc
      002354 90 88 00         [24] 1056 	mov	dptr,#_u
      002357 75 F0 00         [24] 1057 	mov	b,#0x00
      00235A 12 2D 98         [24] 1058 	lcall	_memset
      00235D 15 81            [12] 1059 	dec	sp
      00235F 15 81            [12] 1060 	dec	sp
      002361 15 81            [12] 1061 	dec	sp
                                   1062 ;	life.c:136: memset(pu, 0, sizeof (pu));
      002363 E4               [12] 1063 	clr	a
      002364 C0 E0            [24] 1064 	push	acc
      002366 74 24            [12] 1065 	mov	a,#0x24
      002368 C0 E0            [24] 1066 	push	acc
      00236A E4               [12] 1067 	clr	a
      00236B C0 E0            [24] 1068 	push	acc
      00236D 90 64 00         [24] 1069 	mov	dptr,#_pu
      002370 75 F0 00         [24] 1070 	mov	b,#0x00
      002373 12 2D 98         [24] 1071 	lcall	_memset
      002376 15 81            [12] 1072 	dec	sp
      002378 15 81            [12] 1073 	dec	sp
      00237A 15 81            [12] 1074 	dec	sp
                                   1075 ;	life.c:266: if (c == (int)'L') loadiu();
      00237C 78 3A            [12] 1076 	mov	r0,#_c
      00237E B6 4C 06         [24] 1077 	cjne	@r0,#0x4c,00522$
      002381 08               [12] 1078 	inc	r0
      002382 B6 00 02         [24] 1079 	cjne	@r0,#0x00,00522$
      002385 80 03            [24] 1080 	sjmp	00523$
      002387                       1081 00522$:
      002387 02 25 02         [24] 1082 	ljmp	00116$
      00238A                       1083 00523$:
                                   1084 ;	life.c:142: j = 0;
      00238A 78 38            [12] 1085 	mov	r0,#_j
      00238C E4               [12] 1086 	clr	a
      00238D F6               [12] 1087 	mov	@r0,a
      00238E 08               [12] 1088 	inc	r0
      00238F F6               [12] 1089 	mov	@r0,a
                                   1090 ;	life.c:144: printstr("LOAD 0 1 ~ # <");
      002390 7D 60            [12] 1091 	mov	r5,#___str_2
      002392 7E 2F            [12] 1092 	mov	r6,#(___str_2 >> 8)
      002394 7F 80            [12] 1093 	mov	r7,#0x80
                                   1094 ;	life.c:53: return;
      002396                       1095 00205$:
                                   1096 ;	life.c:51: for (; *s; s++) putchar(*s);
      002396 8D 82            [24] 1097 	mov	dpl,r5
      002398 8E 83            [24] 1098 	mov	dph,r6
      00239A 8F F0            [24] 1099 	mov	b,r7
      00239C 12 2E 29         [24] 1100 	lcall	__gptrget
      00239F FC               [12] 1101 	mov	r4,a
      0023A0 60 10            [24] 1102 	jz	00147$
      0023A2 7B 00            [12] 1103 	mov	r3,#0x00
      0023A4 8C 82            [24] 1104 	mov	dpl,r4
      0023A6 8B 83            [24] 1105 	mov	dph,r3
      0023A8 12 20 B5         [24] 1106 	lcall	_putchar
      0023AB 0D               [12] 1107 	inc	r5
                                   1108 ;	life.c:144: printstr("LOAD 0 1 ~ # <");
      0023AC BD 00 E7         [24] 1109 	cjne	r5,#0x00,00205$
      0023AF 0E               [12] 1110 	inc	r6
      0023B0 80 E4            [24] 1111 	sjmp	00205$
      0023B2                       1112 00147$:
                                   1113 ;	life.c:146: for (y = 0; y < (H * W); y += W) {
      0023B2 78 36            [12] 1114 	mov	r0,#_y
      0023B4 E4               [12] 1115 	clr	a
      0023B5 F6               [12] 1116 	mov	@r0,a
      0023B6 08               [12] 1117 	inc	r0
      0023B7 F6               [12] 1118 	mov	@r0,a
      0023B8                       1119 00208$:
                                   1120 ;	life.c:147: for (x = 0; x < W; x++) {
      0023B8 78 34            [12] 1121 	mov	r0,#_x
      0023BA E4               [12] 1122 	clr	a
      0023BB F6               [12] 1123 	mov	@r0,a
      0023BC 08               [12] 1124 	inc	r0
      0023BD F6               [12] 1125 	mov	@r0,a
                                   1126 ;	life.c:148: while (1) {
      0023BE                       1127 00160$:
                                   1128 ;	life.c:149: c = getchar();
      0023BE 12 20 BA         [24] 1129 	lcall	_getchar
      0023C1 AE 82            [24] 1130 	mov	r6,dpl
      0023C3 AF 83            [24] 1131 	mov	r7,dph
      0023C5 78 3A            [12] 1132 	mov	r0,#_c
      0023C7 A6 06            [24] 1133 	mov	@r0,ar6
      0023C9 08               [12] 1134 	inc	r0
      0023CA A6 07            [24] 1135 	mov	@r0,ar7
                                   1136 ;	life.c:150: if (c == (int)'0') {
      0023CC BE 30 25         [24] 1137 	cjne	r6,#0x30,00158$
      0023CF BF 00 22         [24] 1138 	cjne	r7,#0x00,00158$
                                   1139 ;	life.c:151: iu[y + x] = 0;
      0023D2 78 36            [12] 1140 	mov	r0,#_y
      0023D4 79 34            [12] 1141 	mov	r1,#_x
      0023D6 E7               [12] 1142 	mov	a,@r1
      0023D7 26               [12] 1143 	add	a,@r0
      0023D8 FC               [12] 1144 	mov	r4,a
      0023D9 09               [12] 1145 	inc	r1
      0023DA E7               [12] 1146 	mov	a,@r1
      0023DB 08               [12] 1147 	inc	r0
      0023DC 36               [12] 1148 	addc	a,@r0
      0023DD FD               [12] 1149 	mov	r5,a
      0023DE EC               [12] 1150 	mov	a,r4
      0023DF 24 00            [12] 1151 	add	a,#_iu
      0023E1 F5 82            [12] 1152 	mov	dpl,a
      0023E3 ED               [12] 1153 	mov	a,r5
      0023E4 34 40            [12] 1154 	addc	a,#(_iu >> 8)
      0023E6 F5 83            [12] 1155 	mov	dph,a
      0023E8 E4               [12] 1156 	clr	a
      0023E9 F0               [24] 1157 	movx	@dptr,a
                                   1158 ;	life.c:152: j++;
      0023EA 78 38            [12] 1159 	mov	r0,#_j
      0023EC 06               [12] 1160 	inc	@r0
      0023ED B6 00 02         [24] 1161 	cjne	@r0,#0x00,00528$
      0023F0 08               [12] 1162 	inc	r0
      0023F1 06               [12] 1163 	inc	@r0
      0023F2                       1164 00528$:
                                   1165 ;	life.c:153: break;
      0023F2 80 39            [24] 1166 	sjmp	00163$
      0023F4                       1167 00158$:
                                   1168 ;	life.c:154: } else if (c == (int)'1') {
      0023F4 BE 31 26         [24] 1169 	cjne	r6,#0x31,00156$
      0023F7 BF 00 23         [24] 1170 	cjne	r7,#0x00,00156$
                                   1171 ;	life.c:155: iu[y + x] = 1;
      0023FA 78 36            [12] 1172 	mov	r0,#_y
      0023FC 79 34            [12] 1173 	mov	r1,#_x
      0023FE E7               [12] 1174 	mov	a,@r1
      0023FF 26               [12] 1175 	add	a,@r0
      002400 FC               [12] 1176 	mov	r4,a
      002401 09               [12] 1177 	inc	r1
      002402 E7               [12] 1178 	mov	a,@r1
      002403 08               [12] 1179 	inc	r0
      002404 36               [12] 1180 	addc	a,@r0
      002405 FD               [12] 1181 	mov	r5,a
      002406 EC               [12] 1182 	mov	a,r4
      002407 24 00            [12] 1183 	add	a,#_iu
      002409 F5 82            [12] 1184 	mov	dpl,a
      00240B ED               [12] 1185 	mov	a,r5
      00240C 34 40            [12] 1186 	addc	a,#(_iu >> 8)
      00240E F5 83            [12] 1187 	mov	dph,a
      002410 74 01            [12] 1188 	mov	a,#0x01
      002412 F0               [24] 1189 	movx	@dptr,a
                                   1190 ;	life.c:156: j++;
      002413 78 38            [12] 1191 	mov	r0,#_j
      002415 06               [12] 1192 	inc	@r0
      002416 B6 00 02         [24] 1193 	cjne	@r0,#0x00,00531$
      002419 08               [12] 1194 	inc	r0
      00241A 06               [12] 1195 	inc	@r0
      00241B                       1196 00531$:
                                   1197 ;	life.c:157: break;
      00241B 80 10            [24] 1198 	sjmp	00163$
      00241D                       1199 00156$:
                                   1200 ;	life.c:158: } else if (c == (int)'~') goto br_inner;
      00241D BE 7E 05         [24] 1201 	cjne	r6,#0x7e,00532$
      002420 BF 00 02         [24] 1202 	cjne	r7,#0x00,00532$
      002423 80 21            [24] 1203 	sjmp	00209$
      002425                       1204 00532$:
                                   1205 ;	life.c:159: else if (c == (int)'#') goto out;
                                   1206 ;	life.c:163: break;
      002425 BE 23 96         [24] 1207 	cjne	r6,#0x23,00160$
      002428 BF 00 93         [24] 1208 	cjne	r7,#0x00,00160$
      00242B 80 31            [24] 1209 	sjmp	00173$
      00242D                       1210 00163$:
                                   1211 ;	life.c:147: for (x = 0; x < W; x++) {
      00242D 78 34            [12] 1212 	mov	r0,#_x
      00242F 06               [12] 1213 	inc	@r0
      002430 B6 00 02         [24] 1214 	cjne	@r0,#0x00,00534$
      002433 08               [12] 1215 	inc	r0
      002434 06               [12] 1216 	inc	@r0
      002435                       1217 00534$:
      002435 78 34            [12] 1218 	mov	r0,#_x
      002437 C3               [12] 1219 	clr	c
      002438 E6               [12] 1220 	mov	a,@r0
      002439 94 30            [12] 1221 	subb	a,#0x30
      00243B 08               [12] 1222 	inc	r0
      00243C E6               [12] 1223 	mov	a,@r0
      00243D 64 80            [12] 1224 	xrl	a,#0x80
      00243F 94 80            [12] 1225 	subb	a,#0x80
      002441 50 03            [24] 1226 	jnc	00535$
      002443 02 23 BE         [24] 1227 	ljmp	00160$
      002446                       1228 00535$:
      002446                       1229 00209$:
                                   1230 ;	life.c:146: for (y = 0; y < (H * W); y += W) {
      002446 78 36            [12] 1231 	mov	r0,#_y
      002448 74 30            [12] 1232 	mov	a,#0x30
      00244A 26               [12] 1233 	add	a,@r0
      00244B F6               [12] 1234 	mov	@r0,a
      00244C E4               [12] 1235 	clr	a
      00244D 08               [12] 1236 	inc	r0
      00244E 36               [12] 1237 	addc	a,@r0
      00244F F6               [12] 1238 	mov	@r0,a
      002450 78 36            [12] 1239 	mov	r0,#_y
      002452 C3               [12] 1240 	clr	c
      002453 08               [12] 1241 	inc	r0
      002454 E6               [12] 1242 	mov	a,@r0
      002455 64 80            [12] 1243 	xrl	a,#0x80
      002457 94 A4            [12] 1244 	subb	a,#0xa4
      002459 50 03            [24] 1245 	jnc	00536$
      00245B 02 23 B8         [24] 1246 	ljmp	00208$
      00245E                       1247 00536$:
                                   1248 ;	life.c:167: out:
      00245E                       1249 00173$:
                                   1250 ;	life.c:168: if (c != (int)'#')
      00245E BE 23 05         [24] 1251 	cjne	r6,#0x23,00537$
      002461 BF 00 02         [24] 1252 	cjne	r7,#0x00,00537$
      002464 80 14            [24] 1253 	sjmp	00172$
      002466                       1254 00537$:
                                   1255 ;	life.c:169: while (1) {
      002466                       1256 00169$:
                                   1257 ;	life.c:170: c = getchar();
      002466 12 20 BA         [24] 1258 	lcall	_getchar
      002469 AE 82            [24] 1259 	mov	r6,dpl
      00246B AF 83            [24] 1260 	mov	r7,dph
      00246D 78 3A            [12] 1261 	mov	r0,#_c
      00246F A6 06            [24] 1262 	mov	@r0,ar6
      002471 08               [12] 1263 	inc	r0
      002472 A6 07            [24] 1264 	mov	@r0,ar7
                                   1265 ;	life.c:171: if (c == (int)'#') break;
      002474 BE 23 EF         [24] 1266 	cjne	r6,#0x23,00169$
      002477 BF 00 EC         [24] 1267 	cjne	r7,#0x00,00169$
      00247A                       1268 00172$:
                                   1269 ;	life.c:173: print16x(j);
      00247A 78 38            [12] 1270 	mov	r0,#_j
      00247C 86 06            [24] 1271 	mov	ar6,@r0
      00247E 08               [12] 1272 	inc	r0
      00247F 86 07            [24] 1273 	mov	ar7,@r0
      002481 8E 04            [24] 1274 	mov	ar4,r6
                                   1275 ;	life.c:42: putchar(digits[(a >> 12) & 0xf]);
      002483 EF               [12] 1276 	mov	a,r7
      002484 FD               [12] 1277 	mov	r5,a
      002485 C4               [12] 1278 	swap	a
      002486 54 0F            [12] 1279 	anl	a,#(0x0f&0x0f)
      002488 24 21            [12] 1280 	add	a,#_digits
      00248A F9               [12] 1281 	mov	r1,a
      00248B 87 07            [24] 1282 	mov	ar7,@r1
      00248D 7E 00            [12] 1283 	mov	r6,#0x00
      00248F 8F 82            [24] 1284 	mov	dpl,r7
      002491 8E 83            [24] 1285 	mov	dph,r6
      002493 12 20 B5         [24] 1286 	lcall	_putchar
                                   1287 ;	life.c:43: putchar(digits[(a >> 8) & 0xf]);
      002496 8D 07            [24] 1288 	mov	ar7,r5
      002498 53 07 0F         [24] 1289 	anl	ar7,#0x0f
      00249B EF               [12] 1290 	mov	a,r7
      00249C 24 21            [12] 1291 	add	a,#_digits
      00249E F9               [12] 1292 	mov	r1,a
      00249F 87 07            [24] 1293 	mov	ar7,@r1
      0024A1 7E 00            [12] 1294 	mov	r6,#0x00
      0024A3 8F 82            [24] 1295 	mov	dpl,r7
      0024A5 8E 83            [24] 1296 	mov	dph,r6
      0024A7 12 20 B5         [24] 1297 	lcall	_putchar
                                   1298 ;	life.c:44: putchar(digits[(a >> 4) & 0xf]);
      0024AA 8C 06            [24] 1299 	mov	ar6,r4
      0024AC ED               [12] 1300 	mov	a,r5
      0024AD C4               [12] 1301 	swap	a
      0024AE CE               [12] 1302 	xch	a,r6
      0024AF C4               [12] 1303 	swap	a
      0024B0 54 0F            [12] 1304 	anl	a,#0x0f
      0024B2 6E               [12] 1305 	xrl	a,r6
      0024B3 CE               [12] 1306 	xch	a,r6
      0024B4 54 0F            [12] 1307 	anl	a,#0x0f
      0024B6 CE               [12] 1308 	xch	a,r6
      0024B7 6E               [12] 1309 	xrl	a,r6
      0024B8 CE               [12] 1310 	xch	a,r6
      0024B9 53 06 0F         [24] 1311 	anl	ar6,#0x0f
      0024BC EE               [12] 1312 	mov	a,r6
      0024BD 24 21            [12] 1313 	add	a,#_digits
      0024BF F9               [12] 1314 	mov	r1,a
      0024C0 87 07            [24] 1315 	mov	ar7,@r1
      0024C2 7E 00            [12] 1316 	mov	r6,#0x00
      0024C4 8F 82            [24] 1317 	mov	dpl,r7
      0024C6 8E 83            [24] 1318 	mov	dph,r6
      0024C8 12 20 B5         [24] 1319 	lcall	_putchar
                                   1320 ;	life.c:45: putchar(digits[a & 0xf]);
      0024CB 53 04 0F         [24] 1321 	anl	ar4,#0x0f
      0024CE EC               [12] 1322 	mov	a,r4
      0024CF 24 21            [12] 1323 	add	a,#_digits
      0024D1 F9               [12] 1324 	mov	r1,a
      0024D2 87 07            [24] 1325 	mov	ar7,@r1
      0024D4 7E 00            [12] 1326 	mov	r6,#0x00
      0024D6 8F 82            [24] 1327 	mov	dpl,r7
      0024D8 8E 83            [24] 1328 	mov	dph,r6
      0024DA 12 20 B5         [24] 1329 	lcall	_putchar
                                   1330 ;	life.c:174: printstr(">\r\n");
      0024DD 7D 6F            [12] 1331 	mov	r5,#___str_3
      0024DF 7E 2F            [12] 1332 	mov	r6,#(___str_3 >> 8)
      0024E1 7F 80            [12] 1333 	mov	r7,#0x80
                                   1334 ;	life.c:53: return;
      0024E3                       1335 00211$:
                                   1336 ;	life.c:51: for (; *s; s++) putchar(*s);
      0024E3 8D 82            [24] 1337 	mov	dpl,r5
      0024E5 8E 83            [24] 1338 	mov	dph,r6
      0024E7 8F F0            [24] 1339 	mov	b,r7
      0024E9 12 2E 29         [24] 1340 	lcall	__gptrget
      0024EC FC               [12] 1341 	mov	r4,a
      0024ED 70 03            [24] 1342 	jnz	00540$
      0024EF 02 25 BB         [24] 1343 	ljmp	00117$
      0024F2                       1344 00540$:
      0024F2 7B 00            [12] 1345 	mov	r3,#0x00
      0024F4 8C 82            [24] 1346 	mov	dpl,r4
      0024F6 8B 83            [24] 1347 	mov	dph,r3
      0024F8 12 20 B5         [24] 1348 	lcall	_putchar
      0024FB 0D               [12] 1349 	inc	r5
                                   1350 ;	life.c:266: if (c == (int)'L') loadiu();
      0024FC BD 00 E4         [24] 1351 	cjne	r5,#0x00,00211$
      0024FF 0E               [12] 1352 	inc	r6
      002500 80 E1            [24] 1353 	sjmp	00211$
      002502                       1354 00116$:
                                   1355 ;	life.c:267: else if (c == (int)'R') loadriu();
      002502 78 3A            [12] 1356 	mov	r0,#_c
      002504 B6 52 06         [24] 1357 	cjne	@r0,#0x52,00542$
      002507 08               [12] 1358 	inc	r0
      002508 B6 00 02         [24] 1359 	cjne	@r0,#0x00,00542$
      00250B 80 03            [24] 1360 	sjmp	00543$
      00250D                       1361 00542$:
      00250D 02 25 BB         [24] 1362 	ljmp	00117$
      002510                       1363 00543$:
                                   1364 ;	life.c:180: j = 0;
      002510 78 38            [12] 1365 	mov	r0,#_j
      002512 E4               [12] 1366 	clr	a
      002513 F6               [12] 1367 	mov	@r0,a
      002514 08               [12] 1368 	inc	r0
      002515 F6               [12] 1369 	mov	@r0,a
                                   1370 ;	life.c:182: printstr("RANDOM");
      002516 7D 73            [12] 1371 	mov	r5,#___str_4
      002518 7E 2F            [12] 1372 	mov	r6,#(___str_4 >> 8)
      00251A 7F 80            [12] 1373 	mov	r7,#0x80
                                   1374 ;	life.c:53: return;
      00251C                       1375 00214$:
                                   1376 ;	life.c:51: for (; *s; s++) putchar(*s);
      00251C 8D 82            [24] 1377 	mov	dpl,r5
      00251E 8E 83            [24] 1378 	mov	dph,r6
      002520 8F F0            [24] 1379 	mov	b,r7
      002522 12 2E 29         [24] 1380 	lcall	__gptrget
      002525 FC               [12] 1381 	mov	r4,a
      002526 60 10            [24] 1382 	jz	00179$
      002528 7B 00            [12] 1383 	mov	r3,#0x00
      00252A 8C 82            [24] 1384 	mov	dpl,r4
      00252C 8B 83            [24] 1385 	mov	dph,r3
      00252E 12 20 B5         [24] 1386 	lcall	_putchar
      002531 0D               [12] 1387 	inc	r5
                                   1388 ;	life.c:182: printstr("RANDOM");
      002532 BD 00 E7         [24] 1389 	cjne	r5,#0x00,00214$
      002535 0E               [12] 1390 	inc	r6
      002536 80 E4            [24] 1391 	sjmp	00214$
      002538                       1392 00179$:
                                   1393 ;	life.c:184: for (y = 0; y < (H * W); y += W)
      002538 78 36            [12] 1394 	mov	r0,#_y
      00253A E4               [12] 1395 	clr	a
      00253B F6               [12] 1396 	mov	@r0,a
      00253C 08               [12] 1397 	inc	r0
      00253D F6               [12] 1398 	mov	@r0,a
      00253E                       1399 00218$:
                                   1400 ;	life.c:185: for (x = 0; x < W; x++)
      00253E 78 34            [12] 1401 	mov	r0,#_x
      002540 E4               [12] 1402 	clr	a
      002541 F6               [12] 1403 	mov	@r0,a
      002542 08               [12] 1404 	inc	r0
      002543 F6               [12] 1405 	mov	@r0,a
      002544                       1406 00216$:
                                   1407 ;	life.c:186: iu[y + x] = rand() & 1;
      002544 78 36            [12] 1408 	mov	r0,#_y
      002546 79 34            [12] 1409 	mov	r1,#_x
      002548 E7               [12] 1410 	mov	a,@r1
      002549 26               [12] 1411 	add	a,@r0
      00254A FE               [12] 1412 	mov	r6,a
      00254B 09               [12] 1413 	inc	r1
      00254C E7               [12] 1414 	mov	a,@r1
      00254D 08               [12] 1415 	inc	r0
      00254E 36               [12] 1416 	addc	a,@r0
      00254F FF               [12] 1417 	mov	r7,a
      002550 EE               [12] 1418 	mov	a,r6
      002551 24 00            [12] 1419 	add	a,#_iu
      002553 FE               [12] 1420 	mov	r6,a
      002554 EF               [12] 1421 	mov	a,r7
      002555 34 40            [12] 1422 	addc	a,#(_iu >> 8)
      002557 FF               [12] 1423 	mov	r7,a
      002558 C0 07            [24] 1424 	push	ar7
      00255A C0 06            [24] 1425 	push	ar6
      00255C 12 2B 8A         [24] 1426 	lcall	_rand
      00255F AC 82            [24] 1427 	mov	r4,dpl
      002561 D0 06            [24] 1428 	pop	ar6
      002563 D0 07            [24] 1429 	pop	ar7
      002565 53 04 01         [24] 1430 	anl	ar4,#0x01
      002568 8E 82            [24] 1431 	mov	dpl,r6
      00256A 8F 83            [24] 1432 	mov	dph,r7
      00256C EC               [12] 1433 	mov	a,r4
      00256D F0               [24] 1434 	movx	@dptr,a
                                   1435 ;	life.c:185: for (x = 0; x < W; x++)
      00256E 78 34            [12] 1436 	mov	r0,#_x
      002570 06               [12] 1437 	inc	@r0
      002571 B6 00 02         [24] 1438 	cjne	@r0,#0x00,00546$
      002574 08               [12] 1439 	inc	r0
      002575 06               [12] 1440 	inc	@r0
      002576                       1441 00546$:
      002576 78 34            [12] 1442 	mov	r0,#_x
      002578 C3               [12] 1443 	clr	c
      002579 E6               [12] 1444 	mov	a,@r0
      00257A 94 30            [12] 1445 	subb	a,#0x30
      00257C 08               [12] 1446 	inc	r0
      00257D E6               [12] 1447 	mov	a,@r0
      00257E 64 80            [12] 1448 	xrl	a,#0x80
      002580 94 80            [12] 1449 	subb	a,#0x80
      002582 40 C0            [24] 1450 	jc	00216$
                                   1451 ;	life.c:184: for (y = 0; y < (H * W); y += W)
      002584 78 36            [12] 1452 	mov	r0,#_y
      002586 74 30            [12] 1453 	mov	a,#0x30
      002588 26               [12] 1454 	add	a,@r0
      002589 F6               [12] 1455 	mov	@r0,a
      00258A E4               [12] 1456 	clr	a
      00258B 08               [12] 1457 	inc	r0
      00258C 36               [12] 1458 	addc	a,@r0
      00258D F6               [12] 1459 	mov	@r0,a
      00258E 78 36            [12] 1460 	mov	r0,#_y
      002590 C3               [12] 1461 	clr	c
      002591 08               [12] 1462 	inc	r0
      002592 E6               [12] 1463 	mov	a,@r0
      002593 64 80            [12] 1464 	xrl	a,#0x80
      002595 94 A4            [12] 1465 	subb	a,#0xa4
      002597 40 A5            [24] 1466 	jc	00218$
                                   1467 ;	life.c:188: printstr("\r\n");
      002599 7D 5D            [12] 1468 	mov	r5,#___str_1
      00259B 7E 2F            [12] 1469 	mov	r6,#(___str_1 >> 8)
      00259D 7F 80            [12] 1470 	mov	r7,#0x80
                                   1471 ;	life.c:53: return;
      00259F                       1472 00221$:
                                   1473 ;	life.c:51: for (; *s; s++) putchar(*s);
      00259F 8D 82            [24] 1474 	mov	dpl,r5
      0025A1 8E 83            [24] 1475 	mov	dph,r6
      0025A3 8F F0            [24] 1476 	mov	b,r7
      0025A5 12 2E 29         [24] 1477 	lcall	__gptrget
      0025A8 FC               [12] 1478 	mov	r4,a
      0025A9 60 10            [24] 1479 	jz	00117$
      0025AB 7B 00            [12] 1480 	mov	r3,#0x00
      0025AD 8C 82            [24] 1481 	mov	dpl,r4
      0025AF 8B 83            [24] 1482 	mov	dph,r3
      0025B1 12 20 B5         [24] 1483 	lcall	_putchar
      0025B4 0D               [12] 1484 	inc	r5
                                   1485 ;	life.c:267: else if (c == (int)'R') loadriu();
      0025B5 BD 00 E7         [24] 1486 	cjne	r5,#0x00,00221$
      0025B8 0E               [12] 1487 	inc	r6
      0025B9 80 E4            [24] 1488 	sjmp	00221$
      0025BB                       1489 00117$:
                                   1490 ;	life.c:268: memcpy(u, iu, sizeof (iu));
      0025BB E4               [12] 1491 	clr	a
      0025BC C0 E0            [24] 1492 	push	acc
      0025BE 74 24            [12] 1493 	mov	a,#0x24
      0025C0 C0 E0            [24] 1494 	push	acc
      0025C2 74 00            [12] 1495 	mov	a,#_iu
      0025C4 C0 E0            [24] 1496 	push	acc
      0025C6 74 40            [12] 1497 	mov	a,#(_iu >> 8)
      0025C8 C0 E0            [24] 1498 	push	acc
      0025CA E4               [12] 1499 	clr	a
      0025CB C0 E0            [24] 1500 	push	acc
      0025CD 90 88 00         [24] 1501 	mov	dptr,#_u
      0025D0 75 F0 00         [24] 1502 	mov	b,#0x00
      0025D3 12 2D 05         [24] 1503 	lcall	___memcpy
      0025D6 E5 81            [12] 1504 	mov	a,sp
      0025D8 24 FB            [12] 1505 	add	a,#0xfb
      0025DA F5 81            [12] 1506 	mov	sp,a
                                   1507 ;	life.c:269: show(0);
      0025DC 75 82 00         [24] 1508 	mov	dpl,#0x00
      0025DF 12 20 E7         [24] 1509 	lcall	_show
                                   1510 ;	life.c:271: printstr("READY T L R P S\r\n");
      0025E2 7D 9B            [12] 1511 	mov	r5,#___str_6
      0025E4 7E 2F            [12] 1512 	mov	r6,#(___str_6 >> 8)
      0025E6 7F 80            [12] 1513 	mov	r7,#0x80
                                   1514 ;	life.c:53: return;
      0025E8                       1515 00224$:
                                   1516 ;	life.c:51: for (; *s; s++) putchar(*s);
      0025E8 8D 82            [24] 1517 	mov	dpl,r5
      0025EA 8E 83            [24] 1518 	mov	dph,r6
      0025EC 8F F0            [24] 1519 	mov	b,r7
      0025EE 12 2E 29         [24] 1520 	lcall	__gptrget
      0025F1 FC               [12] 1521 	mov	r4,a
      0025F2 60 10            [24] 1522 	jz	00130$
      0025F4 7B 00            [12] 1523 	mov	r3,#0x00
      0025F6 8C 82            [24] 1524 	mov	dpl,r4
      0025F8 8B 83            [24] 1525 	mov	dph,r3
      0025FA 12 20 B5         [24] 1526 	lcall	_putchar
      0025FD 0D               [12] 1527 	inc	r5
                                   1528 ;	life.c:272: while (1) {
      0025FE BD 00 E7         [24] 1529 	cjne	r5,#0x00,00224$
      002601 0E               [12] 1530 	inc	r6
      002602 80 E4            [24] 1531 	sjmp	00224$
      002604                       1532 00130$:
                                   1533 ;	life.c:273: c = toupper(getchar());
      002604 12 20 BA         [24] 1534 	lcall	_getchar
      002607 12 2E 02         [24] 1535 	lcall	_toupper
      00260A AE 82            [24] 1536 	mov	r6,dpl
      00260C AF 83            [24] 1537 	mov	r7,dph
      00260E 78 3A            [12] 1538 	mov	r0,#_c
      002610 A6 06            [24] 1539 	mov	@r0,ar6
      002612 08               [12] 1540 	inc	r0
      002613 A6 07            [24] 1541 	mov	@r0,ar7
                                   1542 ;	life.c:274: if (i0 || (c == (int)'T')) goto term;
      002615 78 31            [12] 1543 	mov	r0,#_i0
      002617 E6               [12] 1544 	mov	a,@r0
      002618 60 03            [24] 1545 	jz	00553$
      00261A 02 2B 5A         [24] 1546 	ljmp	00142$
      00261D                       1547 00553$:
      00261D BE 54 06         [24] 1548 	cjne	r6,#0x54,00554$
      002620 BF 00 03         [24] 1549 	cjne	r7,#0x00,00554$
      002623 02 2B 5A         [24] 1550 	ljmp	00142$
      002626                       1551 00554$:
                                   1552 ;	life.c:275: else if ((c == (int)'L') || (c == (int)'R') || (c == (int)'P')) goto reload;
      002626 BE 4C 06         [24] 1553 	cjne	r6,#0x4c,00555$
      002629 BF 00 03         [24] 1554 	cjne	r7,#0x00,00555$
      00262C 02 23 4A         [24] 1555 	ljmp	00112$
      00262F                       1556 00555$:
      00262F BE 52 06         [24] 1557 	cjne	r6,#0x52,00556$
      002632 BF 00 03         [24] 1558 	cjne	r7,#0x00,00556$
      002635 02 23 4A         [24] 1559 	ljmp	00112$
      002638                       1560 00556$:
      002638 BE 50 06         [24] 1561 	cjne	r6,#0x50,00557$
      00263B BF 00 03         [24] 1562 	cjne	r7,#0x00,00557$
      00263E 02 23 4A         [24] 1563 	ljmp	00112$
      002641                       1564 00557$:
                                   1565 ;	life.c:276: else if (c == (int)'S') break;
      002641 BE 53 C0         [24] 1566 	cjne	r6,#0x53,00130$
      002644 BF 00 BD         [24] 1567 	cjne	r7,#0x00,00130$
                                   1568 ;	life.c:96: generation[0] = 0u;
      002647 78 43            [12] 1569 	mov	r0,#_generation
      002649 76 00            [12] 1570 	mov	@r0,#0x00
      00264B 08               [12] 1571 	inc	r0
      00264C 76 00            [12] 1572 	mov	@r0,#0x00
                                   1573 ;	life.c:97: generation[1] = 0u;
      00264E 78 45            [12] 1574 	mov	r0,#(_generation + 0x0002)
      002650 76 00            [12] 1575 	mov	@r0,#0x00
      002652 08               [12] 1576 	inc	r0
      002653 76 00            [12] 1577 	mov	@r0,#0x00
                                   1578 ;	life.c:281: for (i1 = 0; !i0 && !i1; ) {
      002655 78 32            [12] 1579 	mov	r0,#_i1
      002657 76 00            [12] 1580 	mov	@r0,#0x00
      002659                       1581 00241$:
      002659 78 31            [12] 1582 	mov	r0,#_i0
      00265B E6               [12] 1583 	mov	a,@r0
      00265C 60 03            [24] 1584 	jz	00560$
      00265E 02 2B 28         [24] 1585 	ljmp	00138$
      002661                       1586 00560$:
      002661 78 32            [12] 1587 	mov	r0,#_i1
      002663 E6               [12] 1588 	mov	a,@r0
      002664 60 03            [24] 1589 	jz	00561$
      002666 02 2B 28         [24] 1590 	ljmp	00138$
      002669                       1591 00561$:
                                   1592 ;	life.c:282: show(1);
      002669 75 82 01         [24] 1593 	mov	dpl,#0x01
      00266C 12 20 E7         [24] 1594 	lcall	_show
                                   1595 ;	life.c:194: fixed = 0;
      00266F 78 3D            [12] 1596 	mov	r0,#_fixed
      002671 76 00            [12] 1597 	mov	@r0,#0x00
                                   1598 ;	life.c:195: cycle2 = 0;
      002673 78 3E            [12] 1599 	mov	r0,#_cycle2
      002675 76 00            [12] 1600 	mov	@r0,#0x00
                                   1601 ;	life.c:197: OE76 = OE76_0;
      002677 78 33            [12] 1602 	mov	r0,#_OE76
      002679 76 3F            [12] 1603 	mov	@r0,#0x3f
                                   1604 ;	life.c:198: flashOE();
      00267B 12 20 DB         [24] 1605 	lcall	_flashOE
                                   1606 ;	life.c:200: for (y = 0; y < H; y++) {
      00267E 78 36            [12] 1607 	mov	r0,#_y
      002680 E4               [12] 1608 	clr	a
      002681 F6               [12] 1609 	mov	@r0,a
      002682 08               [12] 1610 	inc	r0
      002683 F6               [12] 1611 	mov	@r0,a
      002684                       1612 00228$:
                                   1613 ;	life.c:201: OE76 = OE76_0 | ((y & 0x0003u) << 6);
      002684 78 36            [12] 1614 	mov	r0,#_y
      002686 86 07            [24] 1615 	mov	ar7,@r0
      002688 53 07 03         [24] 1616 	anl	ar7,#0x03
      00268B EF               [12] 1617 	mov	a,r7
      00268C 03               [12] 1618 	rr	a
      00268D 03               [12] 1619 	rr	a
      00268E 54 C0            [12] 1620 	anl	a,#0xc0
      002690 FF               [12] 1621 	mov	r7,a
      002691 78 33            [12] 1622 	mov	r0,#_OE76
      002693 74 3F            [12] 1623 	mov	a,#0x3f
      002695 4F               [12] 1624 	orl	a,r7
      002696 F6               [12] 1625 	mov	@r0,a
                                   1626 ;	life.c:202: flashOE();
      002697 12 20 DB         [24] 1627 	lcall	_flashOE
                                   1628 ;	life.c:203: for (x = 0; x < W; x++) {
      00269A 78 34            [12] 1629 	mov	r0,#_x
      00269C E4               [12] 1630 	clr	a
      00269D F6               [12] 1631 	mov	@r0,a
      00269E 08               [12] 1632 	inc	r0
      00269F F6               [12] 1633 	mov	@r0,a
      0026A0                       1634 00226$:
                                   1635 ;	life.c:204: n = -u[A2D(W, y, x)];
      0026A0 78 36            [12] 1636 	mov	r0,#_y
      0026A2 E6               [12] 1637 	mov	a,@r0
      0026A3 C0 E0            [24] 1638 	push	acc
      0026A5 08               [12] 1639 	inc	r0
      0026A6 E6               [12] 1640 	mov	a,@r0
      0026A7 C0 E0            [24] 1641 	push	acc
      0026A9 90 00 30         [24] 1642 	mov	dptr,#0x0030
      0026AC 12 2C 67         [24] 1643 	lcall	__mulint
      0026AF C8               [12] 1644 	xch	a,r0
      0026B0 E5 10            [12] 1645 	mov	a,_bp
      0026B2 24 04            [12] 1646 	add	a,#0x04
      0026B4 C8               [12] 1647 	xch	a,r0
      0026B5 A6 82            [24] 1648 	mov	@r0,dpl
      0026B7 08               [12] 1649 	inc	r0
      0026B8 A6 83            [24] 1650 	mov	@r0,dph
      0026BA 15 81            [12] 1651 	dec	sp
      0026BC 15 81            [12] 1652 	dec	sp
      0026BE E5 10            [12] 1653 	mov	a,_bp
      0026C0 24 04            [12] 1654 	add	a,#0x04
      0026C2 F8               [12] 1655 	mov	r0,a
      0026C3 79 34            [12] 1656 	mov	r1,#_x
      0026C5 E7               [12] 1657 	mov	a,@r1
      0026C6 26               [12] 1658 	add	a,@r0
      0026C7 C0 E0            [24] 1659 	push	acc
      0026C9 09               [12] 1660 	inc	r1
      0026CA E7               [12] 1661 	mov	a,@r1
      0026CB 08               [12] 1662 	inc	r0
      0026CC 36               [12] 1663 	addc	a,@r0
      0026CD C0 E0            [24] 1664 	push	acc
      0026CF E5 10            [12] 1665 	mov	a,_bp
      0026D1 24 03            [12] 1666 	add	a,#0x03
      0026D3 F8               [12] 1667 	mov	r0,a
      0026D4 D0 E0            [24] 1668 	pop	acc
      0026D6 F6               [12] 1669 	mov	@r0,a
      0026D7 18               [12] 1670 	dec	r0
      0026D8 D0 E0            [24] 1671 	pop	acc
      0026DA F6               [12] 1672 	mov	@r0,a
      0026DB A8 10            [24] 1673 	mov	r0,_bp
      0026DD 08               [12] 1674 	inc	r0
      0026DE 08               [12] 1675 	inc	r0
      0026DF E6               [12] 1676 	mov	a,@r0
      0026E0 24 00            [12] 1677 	add	a,#_u
      0026E2 F5 82            [12] 1678 	mov	dpl,a
      0026E4 08               [12] 1679 	inc	r0
      0026E5 E6               [12] 1680 	mov	a,@r0
      0026E6 34 88            [12] 1681 	addc	a,#(_u >> 8)
      0026E8 F5 83            [12] 1682 	mov	dph,a
      0026EA E0               [24] 1683 	movx	a,@dptr
      0026EB FB               [12] 1684 	mov	r3,a
      0026EC A8 10            [24] 1685 	mov	r0,_bp
      0026EE 08               [12] 1686 	inc	r0
      0026EF C3               [12] 1687 	clr	c
      0026F0 E4               [12] 1688 	clr	a
      0026F1 9B               [12] 1689 	subb	a,r3
      0026F2 F6               [12] 1690 	mov	@r0,a
                                   1691 ;	life.c:207: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      0026F3 78 36            [12] 1692 	mov	r0,#_y
      0026F5 74 FF            [12] 1693 	mov	a,#0xff
      0026F7 26               [12] 1694 	add	a,@r0
      0026F8 FA               [12] 1695 	mov	r2,a
      0026F9 74 FF            [12] 1696 	mov	a,#0xff
      0026FB 08               [12] 1697 	inc	r0
      0026FC 36               [12] 1698 	addc	a,@r0
      0026FD FB               [12] 1699 	mov	r3,a
      0026FE 74 C0            [12] 1700 	mov	a,#0xc0
      002700 2A               [12] 1701 	add	a,r2
      002701 FA               [12] 1702 	mov	r2,a
      002702 E4               [12] 1703 	clr	a
      002703 3B               [12] 1704 	addc	a,r3
      002704 FB               [12] 1705 	mov	r3,a
      002705 74 C0            [12] 1706 	mov	a,#0xc0
      002707 C0 E0            [24] 1707 	push	acc
      002709 E4               [12] 1708 	clr	a
      00270A C0 E0            [24] 1709 	push	acc
      00270C 8A 82            [24] 1710 	mov	dpl,r2
      00270E 8B 83            [24] 1711 	mov	dph,r3
      002710 12 2E 45         [24] 1712 	lcall	__modsint
      002713 AA 82            [24] 1713 	mov	r2,dpl
      002715 AB 83            [24] 1714 	mov	r3,dph
      002717 15 81            [12] 1715 	dec	sp
      002719 15 81            [12] 1716 	dec	sp
      00271B C0 02            [24] 1717 	push	ar2
      00271D C0 03            [24] 1718 	push	ar3
      00271F 90 00 30         [24] 1719 	mov	dptr,#0x0030
      002722 12 2C 67         [24] 1720 	lcall	__mulint
      002725 AA 82            [24] 1721 	mov	r2,dpl
      002727 AB 83            [24] 1722 	mov	r3,dph
      002729 15 81            [12] 1723 	dec	sp
      00272B 15 81            [12] 1724 	dec	sp
      00272D 78 34            [12] 1725 	mov	r0,#_x
      00272F 74 FF            [12] 1726 	mov	a,#0xff
      002731 26               [12] 1727 	add	a,@r0
      002732 FC               [12] 1728 	mov	r4,a
      002733 74 FF            [12] 1729 	mov	a,#0xff
      002735 08               [12] 1730 	inc	r0
      002736 36               [12] 1731 	addc	a,@r0
      002737 FD               [12] 1732 	mov	r5,a
      002738 74 30            [12] 1733 	mov	a,#0x30
      00273A 2C               [12] 1734 	add	a,r4
      00273B FC               [12] 1735 	mov	r4,a
      00273C E4               [12] 1736 	clr	a
      00273D 3D               [12] 1737 	addc	a,r5
      00273E FD               [12] 1738 	mov	r5,a
      00273F C0 03            [24] 1739 	push	ar3
      002741 C0 02            [24] 1740 	push	ar2
      002743 74 30            [12] 1741 	mov	a,#0x30
      002745 C0 E0            [24] 1742 	push	acc
      002747 E4               [12] 1743 	clr	a
      002748 C0 E0            [24] 1744 	push	acc
      00274A 8C 82            [24] 1745 	mov	dpl,r4
      00274C 8D 83            [24] 1746 	mov	dph,r5
      00274E 12 2E 45         [24] 1747 	lcall	__modsint
      002751 AC 82            [24] 1748 	mov	r4,dpl
      002753 AD 83            [24] 1749 	mov	r5,dph
      002755 15 81            [12] 1750 	dec	sp
      002757 15 81            [12] 1751 	dec	sp
      002759 D0 02            [24] 1752 	pop	ar2
      00275B D0 03            [24] 1753 	pop	ar3
      00275D EC               [12] 1754 	mov	a,r4
      00275E 2A               [12] 1755 	add	a,r2
      00275F FE               [12] 1756 	mov	r6,a
      002760 ED               [12] 1757 	mov	a,r5
      002761 3B               [12] 1758 	addc	a,r3
      002762 FF               [12] 1759 	mov	r7,a
      002763 EE               [12] 1760 	mov	a,r6
      002764 24 00            [12] 1761 	add	a,#_u
      002766 F5 82            [12] 1762 	mov	dpl,a
      002768 EF               [12] 1763 	mov	a,r7
      002769 34 88            [12] 1764 	addc	a,#(_u >> 8)
      00276B F5 83            [12] 1765 	mov	dph,a
      00276D E0               [24] 1766 	movx	a,@dptr
      00276E FF               [12] 1767 	mov	r7,a
      00276F A8 10            [24] 1768 	mov	r0,_bp
      002771 08               [12] 1769 	inc	r0
      002772 EF               [12] 1770 	mov	a,r7
      002773 26               [12] 1771 	add	a,@r0
      002774 F6               [12] 1772 	mov	@r0,a
                                   1773 ;	life.c:209: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      002775 78 34            [12] 1774 	mov	r0,#_x
      002777 E5 10            [12] 1775 	mov	a,_bp
      002779 24 06            [12] 1776 	add	a,#0x06
      00277B F9               [12] 1777 	mov	r1,a
      00277C E6               [12] 1778 	mov	a,@r0
      00277D F7               [12] 1779 	mov	@r1,a
      00277E 08               [12] 1780 	inc	r0
      00277F 09               [12] 1781 	inc	r1
      002780 E6               [12] 1782 	mov	a,@r0
      002781 F7               [12] 1783 	mov	@r1,a
      002782 E5 10            [12] 1784 	mov	a,_bp
      002784 24 06            [12] 1785 	add	a,#0x06
      002786 F8               [12] 1786 	mov	r0,a
      002787 74 30            [12] 1787 	mov	a,#0x30
      002789 26               [12] 1788 	add	a,@r0
      00278A FE               [12] 1789 	mov	r6,a
      00278B E4               [12] 1790 	clr	a
      00278C 08               [12] 1791 	inc	r0
      00278D 36               [12] 1792 	addc	a,@r0
      00278E FF               [12] 1793 	mov	r7,a
      00278F C0 05            [24] 1794 	push	ar5
      002791 C0 04            [24] 1795 	push	ar4
      002793 C0 03            [24] 1796 	push	ar3
      002795 C0 02            [24] 1797 	push	ar2
      002797 74 30            [12] 1798 	mov	a,#0x30
      002799 C0 E0            [24] 1799 	push	acc
      00279B E4               [12] 1800 	clr	a
      00279C C0 E0            [24] 1801 	push	acc
      00279E 8E 82            [24] 1802 	mov	dpl,r6
      0027A0 8F 83            [24] 1803 	mov	dph,r7
      0027A2 12 2E 45         [24] 1804 	lcall	__modsint
      0027A5 C8               [12] 1805 	xch	a,r0
      0027A6 E5 10            [12] 1806 	mov	a,_bp
      0027A8 24 08            [12] 1807 	add	a,#0x08
      0027AA C8               [12] 1808 	xch	a,r0
      0027AB A6 82            [24] 1809 	mov	@r0,dpl
      0027AD 08               [12] 1810 	inc	r0
      0027AE A6 83            [24] 1811 	mov	@r0,dph
      0027B0 15 81            [12] 1812 	dec	sp
      0027B2 15 81            [12] 1813 	dec	sp
      0027B4 D0 02            [24] 1814 	pop	ar2
      0027B6 D0 03            [24] 1815 	pop	ar3
      0027B8 E5 10            [12] 1816 	mov	a,_bp
      0027BA 24 08            [12] 1817 	add	a,#0x08
      0027BC F8               [12] 1818 	mov	r0,a
      0027BD E6               [12] 1819 	mov	a,@r0
      0027BE 2A               [12] 1820 	add	a,r2
      0027BF FE               [12] 1821 	mov	r6,a
      0027C0 08               [12] 1822 	inc	r0
      0027C1 E6               [12] 1823 	mov	a,@r0
      0027C2 3B               [12] 1824 	addc	a,r3
      0027C3 FF               [12] 1825 	mov	r7,a
      0027C4 EE               [12] 1826 	mov	a,r6
      0027C5 24 00            [12] 1827 	add	a,#_u
      0027C7 F5 82            [12] 1828 	mov	dpl,a
      0027C9 EF               [12] 1829 	mov	a,r7
      0027CA 34 88            [12] 1830 	addc	a,#(_u >> 8)
      0027CC F5 83            [12] 1831 	mov	dph,a
      0027CE E0               [24] 1832 	movx	a,@dptr
      0027CF FF               [12] 1833 	mov	r7,a
      0027D0 A8 10            [24] 1834 	mov	r0,_bp
      0027D2 08               [12] 1835 	inc	r0
      0027D3 EF               [12] 1836 	mov	a,r7
      0027D4 26               [12] 1837 	add	a,@r0
      0027D5 F6               [12] 1838 	mov	@r0,a
                                   1839 ;	life.c:211: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      0027D6 E5 10            [12] 1840 	mov	a,_bp
      0027D8 24 06            [12] 1841 	add	a,#0x06
      0027DA F8               [12] 1842 	mov	r0,a
      0027DB 74 31            [12] 1843 	mov	a,#0x31
      0027DD 26               [12] 1844 	add	a,@r0
      0027DE FE               [12] 1845 	mov	r6,a
      0027DF E4               [12] 1846 	clr	a
      0027E0 08               [12] 1847 	inc	r0
      0027E1 36               [12] 1848 	addc	a,@r0
      0027E2 FF               [12] 1849 	mov	r7,a
      0027E3 C0 03            [24] 1850 	push	ar3
      0027E5 C0 02            [24] 1851 	push	ar2
      0027E7 74 30            [12] 1852 	mov	a,#0x30
      0027E9 C0 E0            [24] 1853 	push	acc
      0027EB E4               [12] 1854 	clr	a
      0027EC C0 E0            [24] 1855 	push	acc
      0027EE 8E 82            [24] 1856 	mov	dpl,r6
      0027F0 8F 83            [24] 1857 	mov	dph,r7
      0027F2 12 2E 45         [24] 1858 	lcall	__modsint
      0027F5 AE 82            [24] 1859 	mov	r6,dpl
      0027F7 AF 83            [24] 1860 	mov	r7,dph
      0027F9 15 81            [12] 1861 	dec	sp
      0027FB 15 81            [12] 1862 	dec	sp
      0027FD D0 02            [24] 1863 	pop	ar2
      0027FF D0 03            [24] 1864 	pop	ar3
      002801 D0 04            [24] 1865 	pop	ar4
      002803 D0 05            [24] 1866 	pop	ar5
      002805 EE               [12] 1867 	mov	a,r6
      002806 2A               [12] 1868 	add	a,r2
      002807 FA               [12] 1869 	mov	r2,a
      002808 EF               [12] 1870 	mov	a,r7
      002809 3B               [12] 1871 	addc	a,r3
      00280A FB               [12] 1872 	mov	r3,a
      00280B EA               [12] 1873 	mov	a,r2
      00280C 24 00            [12] 1874 	add	a,#_u
      00280E F5 82            [12] 1875 	mov	dpl,a
      002810 EB               [12] 1876 	mov	a,r3
      002811 34 88            [12] 1877 	addc	a,#(_u >> 8)
      002813 F5 83            [12] 1878 	mov	dph,a
      002815 E0               [24] 1879 	movx	a,@dptr
      002816 FB               [12] 1880 	mov	r3,a
      002817 A8 10            [24] 1881 	mov	r0,_bp
      002819 08               [12] 1882 	inc	r0
      00281A EB               [12] 1883 	mov	a,r3
      00281B 26               [12] 1884 	add	a,@r0
      00281C F6               [12] 1885 	mov	@r0,a
                                   1886 ;	life.c:213: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      00281D 78 36            [12] 1887 	mov	r0,#_y
      00281F E5 10            [12] 1888 	mov	a,_bp
      002821 24 0A            [12] 1889 	add	a,#0x0a
      002823 F9               [12] 1890 	mov	r1,a
      002824 E6               [12] 1891 	mov	a,@r0
      002825 F7               [12] 1892 	mov	@r1,a
      002826 08               [12] 1893 	inc	r0
      002827 09               [12] 1894 	inc	r1
      002828 E6               [12] 1895 	mov	a,@r0
      002829 F7               [12] 1896 	mov	@r1,a
      00282A E5 10            [12] 1897 	mov	a,_bp
      00282C 24 0A            [12] 1898 	add	a,#0x0a
      00282E F8               [12] 1899 	mov	r0,a
      00282F 74 C0            [12] 1900 	mov	a,#0xc0
      002831 26               [12] 1901 	add	a,@r0
      002832 FA               [12] 1902 	mov	r2,a
      002833 E4               [12] 1903 	clr	a
      002834 08               [12] 1904 	inc	r0
      002835 36               [12] 1905 	addc	a,@r0
      002836 FB               [12] 1906 	mov	r3,a
      002837 C0 07            [24] 1907 	push	ar7
      002839 C0 06            [24] 1908 	push	ar6
      00283B C0 05            [24] 1909 	push	ar5
      00283D C0 04            [24] 1910 	push	ar4
      00283F 74 C0            [12] 1911 	mov	a,#0xc0
      002841 C0 E0            [24] 1912 	push	acc
      002843 E4               [12] 1913 	clr	a
      002844 C0 E0            [24] 1914 	push	acc
      002846 8A 82            [24] 1915 	mov	dpl,r2
      002848 8B 83            [24] 1916 	mov	dph,r3
      00284A 12 2E 45         [24] 1917 	lcall	__modsint
      00284D AA 82            [24] 1918 	mov	r2,dpl
      00284F AB 83            [24] 1919 	mov	r3,dph
      002851 15 81            [12] 1920 	dec	sp
      002853 15 81            [12] 1921 	dec	sp
      002855 C0 02            [24] 1922 	push	ar2
      002857 C0 03            [24] 1923 	push	ar3
      002859 90 00 30         [24] 1924 	mov	dptr,#0x0030
      00285C 12 2C 67         [24] 1925 	lcall	__mulint
      00285F C8               [12] 1926 	xch	a,r0
      002860 E5 10            [12] 1927 	mov	a,_bp
      002862 24 0C            [12] 1928 	add	a,#0x0c
      002864 C8               [12] 1929 	xch	a,r0
      002865 A6 82            [24] 1930 	mov	@r0,dpl
      002867 08               [12] 1931 	inc	r0
      002868 A6 83            [24] 1932 	mov	@r0,dph
      00286A 15 81            [12] 1933 	dec	sp
      00286C 15 81            [12] 1934 	dec	sp
      00286E D0 04            [24] 1935 	pop	ar4
      002870 D0 05            [24] 1936 	pop	ar5
      002872 D0 06            [24] 1937 	pop	ar6
      002874 D0 07            [24] 1938 	pop	ar7
      002876 E5 10            [12] 1939 	mov	a,_bp
      002878 24 0C            [12] 1940 	add	a,#0x0c
      00287A F8               [12] 1941 	mov	r0,a
      00287B EC               [12] 1942 	mov	a,r4
      00287C 26               [12] 1943 	add	a,@r0
      00287D FA               [12] 1944 	mov	r2,a
      00287E ED               [12] 1945 	mov	a,r5
      00287F 08               [12] 1946 	inc	r0
      002880 36               [12] 1947 	addc	a,@r0
      002881 FB               [12] 1948 	mov	r3,a
      002882 EA               [12] 1949 	mov	a,r2
      002883 24 00            [12] 1950 	add	a,#_u
      002885 F5 82            [12] 1951 	mov	dpl,a
      002887 EB               [12] 1952 	mov	a,r3
      002888 34 88            [12] 1953 	addc	a,#(_u >> 8)
      00288A F5 83            [12] 1954 	mov	dph,a
      00288C E0               [24] 1955 	movx	a,@dptr
      00288D FB               [12] 1956 	mov	r3,a
      00288E A8 10            [24] 1957 	mov	r0,_bp
      002890 08               [12] 1958 	inc	r0
      002891 EB               [12] 1959 	mov	a,r3
      002892 26               [12] 1960 	add	a,@r0
      002893 F6               [12] 1961 	mov	@r0,a
                                   1962 ;	life.c:215: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      002894 E5 10            [12] 1963 	mov	a,_bp
      002896 24 0C            [12] 1964 	add	a,#0x0c
      002898 F8               [12] 1965 	mov	r0,a
      002899 E5 10            [12] 1966 	mov	a,_bp
      00289B 24 08            [12] 1967 	add	a,#0x08
      00289D F9               [12] 1968 	mov	r1,a
      00289E E7               [12] 1969 	mov	a,@r1
      00289F 26               [12] 1970 	add	a,@r0
      0028A0 FA               [12] 1971 	mov	r2,a
      0028A1 09               [12] 1972 	inc	r1
      0028A2 E7               [12] 1973 	mov	a,@r1
      0028A3 08               [12] 1974 	inc	r0
      0028A4 36               [12] 1975 	addc	a,@r0
      0028A5 FB               [12] 1976 	mov	r3,a
      0028A6 EA               [12] 1977 	mov	a,r2
      0028A7 24 00            [12] 1978 	add	a,#_u
      0028A9 F5 82            [12] 1979 	mov	dpl,a
      0028AB EB               [12] 1980 	mov	a,r3
      0028AC 34 88            [12] 1981 	addc	a,#(_u >> 8)
      0028AE F5 83            [12] 1982 	mov	dph,a
      0028B0 E0               [24] 1983 	movx	a,@dptr
      0028B1 FB               [12] 1984 	mov	r3,a
      0028B2 A8 10            [24] 1985 	mov	r0,_bp
      0028B4 08               [12] 1986 	inc	r0
      0028B5 EB               [12] 1987 	mov	a,r3
      0028B6 26               [12] 1988 	add	a,@r0
      0028B7 F6               [12] 1989 	mov	@r0,a
                                   1990 ;	life.c:217: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      0028B8 E5 10            [12] 1991 	mov	a,_bp
      0028BA 24 0C            [12] 1992 	add	a,#0x0c
      0028BC F8               [12] 1993 	mov	r0,a
      0028BD EE               [12] 1994 	mov	a,r6
      0028BE 26               [12] 1995 	add	a,@r0
      0028BF FA               [12] 1996 	mov	r2,a
      0028C0 EF               [12] 1997 	mov	a,r7
      0028C1 08               [12] 1998 	inc	r0
      0028C2 36               [12] 1999 	addc	a,@r0
      0028C3 FB               [12] 2000 	mov	r3,a
      0028C4 EA               [12] 2001 	mov	a,r2
      0028C5 24 00            [12] 2002 	add	a,#_u
      0028C7 F5 82            [12] 2003 	mov	dpl,a
      0028C9 EB               [12] 2004 	mov	a,r3
      0028CA 34 88            [12] 2005 	addc	a,#(_u >> 8)
      0028CC F5 83            [12] 2006 	mov	dph,a
      0028CE E0               [24] 2007 	movx	a,@dptr
      0028CF FB               [12] 2008 	mov	r3,a
      0028D0 A8 10            [24] 2009 	mov	r0,_bp
      0028D2 08               [12] 2010 	inc	r0
      0028D3 E5 10            [12] 2011 	mov	a,_bp
      0028D5 24 0C            [12] 2012 	add	a,#0x0c
      0028D7 F9               [12] 2013 	mov	r1,a
      0028D8 EB               [12] 2014 	mov	a,r3
      0028D9 26               [12] 2015 	add	a,@r0
      0028DA F7               [12] 2016 	mov	@r1,a
                                   2017 ;	life.c:219: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      0028DB E5 10            [12] 2018 	mov	a,_bp
      0028DD 24 0A            [12] 2019 	add	a,#0x0a
      0028DF F8               [12] 2020 	mov	r0,a
      0028E0 74 C1            [12] 2021 	mov	a,#0xc1
      0028E2 26               [12] 2022 	add	a,@r0
      0028E3 FA               [12] 2023 	mov	r2,a
      0028E4 E4               [12] 2024 	clr	a
      0028E5 08               [12] 2025 	inc	r0
      0028E6 36               [12] 2026 	addc	a,@r0
      0028E7 FB               [12] 2027 	mov	r3,a
      0028E8 C0 07            [24] 2028 	push	ar7
      0028EA C0 06            [24] 2029 	push	ar6
      0028EC C0 05            [24] 2030 	push	ar5
      0028EE C0 04            [24] 2031 	push	ar4
      0028F0 74 C0            [12] 2032 	mov	a,#0xc0
      0028F2 C0 E0            [24] 2033 	push	acc
      0028F4 E4               [12] 2034 	clr	a
      0028F5 C0 E0            [24] 2035 	push	acc
      0028F7 8A 82            [24] 2036 	mov	dpl,r2
      0028F9 8B 83            [24] 2037 	mov	dph,r3
      0028FB 12 2E 45         [24] 2038 	lcall	__modsint
      0028FE AA 82            [24] 2039 	mov	r2,dpl
      002900 AB 83            [24] 2040 	mov	r3,dph
      002902 15 81            [12] 2041 	dec	sp
      002904 15 81            [12] 2042 	dec	sp
      002906 C0 02            [24] 2043 	push	ar2
      002908 C0 03            [24] 2044 	push	ar3
      00290A 90 00 30         [24] 2045 	mov	dptr,#0x0030
      00290D 12 2C 67         [24] 2046 	lcall	__mulint
      002910 AA 82            [24] 2047 	mov	r2,dpl
      002912 AB 83            [24] 2048 	mov	r3,dph
      002914 15 81            [12] 2049 	dec	sp
      002916 15 81            [12] 2050 	dec	sp
      002918 D0 04            [24] 2051 	pop	ar4
      00291A D0 05            [24] 2052 	pop	ar5
      00291C D0 06            [24] 2053 	pop	ar6
      00291E D0 07            [24] 2054 	pop	ar7
      002920 EC               [12] 2055 	mov	a,r4
      002921 2A               [12] 2056 	add	a,r2
      002922 FC               [12] 2057 	mov	r4,a
      002923 ED               [12] 2058 	mov	a,r5
      002924 3B               [12] 2059 	addc	a,r3
      002925 FD               [12] 2060 	mov	r5,a
      002926 EC               [12] 2061 	mov	a,r4
      002927 24 00            [12] 2062 	add	a,#_u
      002929 F5 82            [12] 2063 	mov	dpl,a
      00292B ED               [12] 2064 	mov	a,r5
      00292C 34 88            [12] 2065 	addc	a,#(_u >> 8)
      00292E F5 83            [12] 2066 	mov	dph,a
      002930 E0               [24] 2067 	movx	a,@dptr
      002931 FD               [12] 2068 	mov	r5,a
      002932 E5 10            [12] 2069 	mov	a,_bp
      002934 24 0C            [12] 2070 	add	a,#0x0c
      002936 F8               [12] 2071 	mov	r0,a
      002937 E5 10            [12] 2072 	mov	a,_bp
      002939 24 0C            [12] 2073 	add	a,#0x0c
      00293B F9               [12] 2074 	mov	r1,a
      00293C ED               [12] 2075 	mov	a,r5
      00293D 26               [12] 2076 	add	a,@r0
      00293E F7               [12] 2077 	mov	@r1,a
                                   2078 ;	life.c:221: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      00293F E5 10            [12] 2079 	mov	a,_bp
      002941 24 08            [12] 2080 	add	a,#0x08
      002943 F8               [12] 2081 	mov	r0,a
      002944 E6               [12] 2082 	mov	a,@r0
      002945 2A               [12] 2083 	add	a,r2
      002946 FC               [12] 2084 	mov	r4,a
      002947 08               [12] 2085 	inc	r0
      002948 E6               [12] 2086 	mov	a,@r0
      002949 3B               [12] 2087 	addc	a,r3
      00294A FD               [12] 2088 	mov	r5,a
      00294B EC               [12] 2089 	mov	a,r4
      00294C 24 00            [12] 2090 	add	a,#_u
      00294E F5 82            [12] 2091 	mov	dpl,a
      002950 ED               [12] 2092 	mov	a,r5
      002951 34 88            [12] 2093 	addc	a,#(_u >> 8)
      002953 F5 83            [12] 2094 	mov	dph,a
      002955 E0               [24] 2095 	movx	a,@dptr
      002956 FD               [12] 2096 	mov	r5,a
      002957 E5 10            [12] 2097 	mov	a,_bp
      002959 24 0C            [12] 2098 	add	a,#0x0c
      00295B F8               [12] 2099 	mov	r0,a
      00295C ED               [12] 2100 	mov	a,r5
      00295D 26               [12] 2101 	add	a,@r0
      00295E FD               [12] 2102 	mov	r5,a
                                   2103 ;	life.c:222: y1 = 1; x1 = 1;
      00295F 78 41            [12] 2104 	mov	r0,#_y1
      002961 76 01            [12] 2105 	mov	@r0,#0x01
      002963 08               [12] 2106 	inc	r0
      002964 76 00            [12] 2107 	mov	@r0,#0x00
      002966 78 3F            [12] 2108 	mov	r0,#_x1
      002968 76 01            [12] 2109 	mov	@r0,#0x01
      00296A 08               [12] 2110 	inc	r0
      00296B 76 00            [12] 2111 	mov	@r0,#0x00
                                   2112 ;	life.c:223: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      00296D EE               [12] 2113 	mov	a,r6
      00296E 2A               [12] 2114 	add	a,r2
      00296F FE               [12] 2115 	mov	r6,a
      002970 EF               [12] 2116 	mov	a,r7
      002971 3B               [12] 2117 	addc	a,r3
      002972 FF               [12] 2118 	mov	r7,a
      002973 EE               [12] 2119 	mov	a,r6
      002974 24 00            [12] 2120 	add	a,#_u
      002976 F5 82            [12] 2121 	mov	dpl,a
      002978 EF               [12] 2122 	mov	a,r7
      002979 34 88            [12] 2123 	addc	a,#(_u >> 8)
      00297B F5 83            [12] 2124 	mov	dph,a
      00297D E0               [24] 2125 	movx	a,@dptr
      00297E 2D               [12] 2126 	add	a,r5
      00297F FF               [12] 2127 	mov	r7,a
      002980 78 3C            [12] 2128 	mov	r0,#_n
      002982 A6 07            [24] 2129 	mov	@r0,ar7
                                   2130 ;	life.c:225: nu[A2D(W, y, x)] = (n == 3) || ((n == 2) && u[A2D(W, y, x)]);
      002984 A8 10            [24] 2131 	mov	r0,_bp
      002986 08               [12] 2132 	inc	r0
      002987 08               [12] 2133 	inc	r0
      002988 E6               [12] 2134 	mov	a,@r0
      002989 24 00            [12] 2135 	add	a,#_nu
      00298B FD               [12] 2136 	mov	r5,a
      00298C 08               [12] 2137 	inc	r0
      00298D E6               [12] 2138 	mov	a,@r0
      00298E 34 AC            [12] 2139 	addc	a,#(_nu >> 8)
      002990 FE               [12] 2140 	mov	r6,a
      002991 BF 03 02         [24] 2141 	cjne	r7,#0x03,00562$
      002994 80 28            [24] 2142 	sjmp	00254$
      002996                       2143 00562$:
      002996 BF 02 21         [24] 2144 	cjne	r7,#0x02,00253$
      002999 E5 10            [12] 2145 	mov	a,_bp
      00299B 24 04            [12] 2146 	add	a,#0x04
      00299D F8               [12] 2147 	mov	r0,a
      00299E E5 10            [12] 2148 	mov	a,_bp
      0029A0 24 06            [12] 2149 	add	a,#0x06
      0029A2 F9               [12] 2150 	mov	r1,a
      0029A3 E7               [12] 2151 	mov	a,@r1
      0029A4 26               [12] 2152 	add	a,@r0
      0029A5 FC               [12] 2153 	mov	r4,a
      0029A6 09               [12] 2154 	inc	r1
      0029A7 E7               [12] 2155 	mov	a,@r1
      0029A8 08               [12] 2156 	inc	r0
      0029A9 36               [12] 2157 	addc	a,@r0
      0029AA FF               [12] 2158 	mov	r7,a
      0029AB EC               [12] 2159 	mov	a,r4
      0029AC 24 00            [12] 2160 	add	a,#_u
      0029AE FC               [12] 2161 	mov	r4,a
      0029AF EF               [12] 2162 	mov	a,r7
      0029B0 34 88            [12] 2163 	addc	a,#(_u >> 8)
      0029B2 FF               [12] 2164 	mov	r7,a
      0029B3 8C 82            [24] 2165 	mov	dpl,r4
      0029B5 8F 83            [24] 2166 	mov	dph,r7
      0029B7 E0               [24] 2167 	movx	a,@dptr
      0029B8 70 04            [24] 2168 	jnz	00254$
      0029BA                       2169 00253$:
                                   2170 ;	assignBit
      0029BA C2 00            [12] 2171 	clr	b0
      0029BC 80 02            [24] 2172 	sjmp	00255$
      0029BE                       2173 00254$:
                                   2174 ;	assignBit
      0029BE D2 00            [12] 2175 	setb	b0
      0029C0                       2176 00255$:
      0029C0 A2 00            [12] 2177 	mov	c,b0
      0029C2 E4               [12] 2178 	clr	a
      0029C3 33               [12] 2179 	rlc	a
      0029C4 8D 82            [24] 2180 	mov	dpl,r5
      0029C6 8E 83            [24] 2181 	mov	dph,r6
      0029C8 F0               [24] 2182 	movx	@dptr,a
                                   2183 ;	life.c:226: cycle2 |= pu[A2D(W, y, x)] ^ nu[A2D(W, y, x)];
      0029C9 78 36            [12] 2184 	mov	r0,#_y
      0029CB E6               [12] 2185 	mov	a,@r0
      0029CC C0 E0            [24] 2186 	push	acc
      0029CE 08               [12] 2187 	inc	r0
      0029CF E6               [12] 2188 	mov	a,@r0
      0029D0 C0 E0            [24] 2189 	push	acc
      0029D2 90 00 30         [24] 2190 	mov	dptr,#0x0030
      0029D5 12 2C 67         [24] 2191 	lcall	__mulint
      0029D8 AE 82            [24] 2192 	mov	r6,dpl
      0029DA AF 83            [24] 2193 	mov	r7,dph
      0029DC 15 81            [12] 2194 	dec	sp
      0029DE 15 81            [12] 2195 	dec	sp
      0029E0 78 34            [12] 2196 	mov	r0,#_x
      0029E2 E6               [12] 2197 	mov	a,@r0
      0029E3 2E               [12] 2198 	add	a,r6
      0029E4 FE               [12] 2199 	mov	r6,a
      0029E5 08               [12] 2200 	inc	r0
      0029E6 E6               [12] 2201 	mov	a,@r0
      0029E7 3F               [12] 2202 	addc	a,r7
      0029E8 FF               [12] 2203 	mov	r7,a
      0029E9 EE               [12] 2204 	mov	a,r6
      0029EA 24 00            [12] 2205 	add	a,#_pu
      0029EC F5 82            [12] 2206 	mov	dpl,a
      0029EE EF               [12] 2207 	mov	a,r7
      0029EF 34 64            [12] 2208 	addc	a,#(_pu >> 8)
      0029F1 F5 83            [12] 2209 	mov	dph,a
      0029F3 E0               [24] 2210 	movx	a,@dptr
      0029F4 FD               [12] 2211 	mov	r5,a
      0029F5 EE               [12] 2212 	mov	a,r6
      0029F6 24 00            [12] 2213 	add	a,#_nu
      0029F8 F5 82            [12] 2214 	mov	dpl,a
      0029FA EF               [12] 2215 	mov	a,r7
      0029FB 34 AC            [12] 2216 	addc	a,#(_nu >> 8)
      0029FD F5 83            [12] 2217 	mov	dph,a
      0029FF E0               [24] 2218 	movx	a,@dptr
      002A00 FC               [12] 2219 	mov	r4,a
      002A01 6D               [12] 2220 	xrl	a,r5
      002A02 78 3E            [12] 2221 	mov	r0,#_cycle2
      002A04 46               [12] 2222 	orl	a,@r0
      002A05 F6               [12] 2223 	mov	@r0,a
                                   2224 ;	life.c:227: fixed |= u[A2D(W, y, x)] ^ nu[A2D(W, y, x)];
      002A06 EE               [12] 2225 	mov	a,r6
      002A07 24 00            [12] 2226 	add	a,#_u
      002A09 F5 82            [12] 2227 	mov	dpl,a
      002A0B EF               [12] 2228 	mov	a,r7
      002A0C 34 88            [12] 2229 	addc	a,#(_u >> 8)
      002A0E F5 83            [12] 2230 	mov	dph,a
      002A10 E0               [24] 2231 	movx	a,@dptr
      002A11 FF               [12] 2232 	mov	r7,a
      002A12 EC               [12] 2233 	mov	a,r4
      002A13 6F               [12] 2234 	xrl	a,r7
      002A14 78 3D            [12] 2235 	mov	r0,#_fixed
      002A16 46               [12] 2236 	orl	a,@r0
      002A17 F6               [12] 2237 	mov	@r0,a
                                   2238 ;	life.c:203: for (x = 0; x < W; x++) {
      002A18 78 34            [12] 2239 	mov	r0,#_x
      002A1A 06               [12] 2240 	inc	@r0
      002A1B B6 00 02         [24] 2241 	cjne	@r0,#0x00,00566$
      002A1E 08               [12] 2242 	inc	r0
      002A1F 06               [12] 2243 	inc	@r0
      002A20                       2244 00566$:
      002A20 78 34            [12] 2245 	mov	r0,#_x
      002A22 C3               [12] 2246 	clr	c
      002A23 E6               [12] 2247 	mov	a,@r0
      002A24 94 30            [12] 2248 	subb	a,#0x30
      002A26 08               [12] 2249 	inc	r0
      002A27 E6               [12] 2250 	mov	a,@r0
      002A28 64 80            [12] 2251 	xrl	a,#0x80
      002A2A 94 80            [12] 2252 	subb	a,#0x80
      002A2C 50 03            [24] 2253 	jnc	00567$
      002A2E 02 26 A0         [24] 2254 	ljmp	00226$
      002A31                       2255 00567$:
                                   2256 ;	life.c:200: for (y = 0; y < H; y++) {
      002A31 78 36            [12] 2257 	mov	r0,#_y
      002A33 06               [12] 2258 	inc	@r0
      002A34 B6 00 02         [24] 2259 	cjne	@r0,#0x00,00568$
      002A37 08               [12] 2260 	inc	r0
      002A38 06               [12] 2261 	inc	@r0
      002A39                       2262 00568$:
      002A39 78 36            [12] 2263 	mov	r0,#_y
      002A3B C3               [12] 2264 	clr	c
      002A3C E6               [12] 2265 	mov	a,@r0
      002A3D 94 C0            [12] 2266 	subb	a,#0xc0
      002A3F 08               [12] 2267 	inc	r0
      002A40 E6               [12] 2268 	mov	a,@r0
      002A41 64 80            [12] 2269 	xrl	a,#0x80
      002A43 94 80            [12] 2270 	subb	a,#0x80
      002A45 50 03            [24] 2271 	jnc	00569$
      002A47 02 26 84         [24] 2272 	ljmp	00228$
      002A4A                       2273 00569$:
                                   2274 ;	life.c:231: OE76 = OE76_0;
      002A4A 78 33            [12] 2275 	mov	r0,#_OE76
      002A4C 76 3F            [12] 2276 	mov	@r0,#0x3f
                                   2277 ;	life.c:232: flashOE();
      002A4E 12 20 DB         [24] 2278 	lcall	_flashOE
                                   2279 ;	life.c:234: cycle2 = !cycle2;
      002A51 78 3E            [12] 2280 	mov	r0,#_cycle2
      002A53 E6               [12] 2281 	mov	a,@r0
      002A54 B4 01 00         [24] 2282 	cjne	a,#0x01,00570$
      002A57                       2283 00570$:
      002A57 92 00            [24] 2284 	mov	b0,c
      002A59 78 3E            [12] 2285 	mov	r0,#_cycle2
      002A5B E4               [12] 2286 	clr	a
      002A5C 33               [12] 2287 	rlc	a
      002A5D F6               [12] 2288 	mov	@r0,a
                                   2289 ;	life.c:235: fixed = !fixed;
      002A5E 78 3D            [12] 2290 	mov	r0,#_fixed
      002A60 E6               [12] 2291 	mov	a,@r0
      002A61 B4 01 00         [24] 2292 	cjne	a,#0x01,00571$
      002A64                       2293 00571$:
      002A64 92 00            [24] 2294 	mov	b0,c
      002A66 78 3D            [12] 2295 	mov	r0,#_fixed
      002A68 E4               [12] 2296 	clr	a
      002A69 33               [12] 2297 	rlc	a
      002A6A F6               [12] 2298 	mov	@r0,a
                                   2299 ;	life.c:237: memcpy(pu, u, sizeof (u));
      002A6B E4               [12] 2300 	clr	a
      002A6C C0 E0            [24] 2301 	push	acc
      002A6E 74 24            [12] 2302 	mov	a,#0x24
      002A70 C0 E0            [24] 2303 	push	acc
      002A72 74 00            [12] 2304 	mov	a,#_u
      002A74 C0 E0            [24] 2305 	push	acc
      002A76 74 88            [12] 2306 	mov	a,#(_u >> 8)
      002A78 C0 E0            [24] 2307 	push	acc
      002A7A E4               [12] 2308 	clr	a
      002A7B C0 E0            [24] 2309 	push	acc
      002A7D 90 64 00         [24] 2310 	mov	dptr,#_pu
      002A80 75 F0 00         [24] 2311 	mov	b,#0x00
      002A83 12 2D 05         [24] 2312 	lcall	___memcpy
      002A86 E5 81            [12] 2313 	mov	a,sp
      002A88 24 FB            [12] 2314 	add	a,#0xfb
      002A8A F5 81            [12] 2315 	mov	sp,a
                                   2316 ;	life.c:238: memcpy(u, nu, sizeof (nu));
      002A8C E4               [12] 2317 	clr	a
      002A8D C0 E0            [24] 2318 	push	acc
      002A8F 74 24            [12] 2319 	mov	a,#0x24
      002A91 C0 E0            [24] 2320 	push	acc
      002A93 74 00            [12] 2321 	mov	a,#_nu
      002A95 C0 E0            [24] 2322 	push	acc
      002A97 74 AC            [12] 2323 	mov	a,#(_nu >> 8)
      002A99 C0 E0            [24] 2324 	push	acc
      002A9B E4               [12] 2325 	clr	a
      002A9C C0 E0            [24] 2326 	push	acc
      002A9E 90 88 00         [24] 2327 	mov	dptr,#_u
      002AA1 75 F0 00         [24] 2328 	mov	b,#0x00
      002AA4 12 2D 05         [24] 2329 	lcall	___memcpy
      002AA7 E5 81            [12] 2330 	mov	a,sp
      002AA9 24 FB            [12] 2331 	add	a,#0xfb
      002AAB F5 81            [12] 2332 	mov	sp,a
                                   2333 ;	life.c:284: if (fixed || cycle2) {
      002AAD 78 3D            [12] 2334 	mov	r0,#_fixed
      002AAF E6               [12] 2335 	mov	a,@r0
      002AB0 70 08            [24] 2336 	jnz	00135$
      002AB2 78 3E            [12] 2337 	mov	r0,#_cycle2
      002AB4 E6               [12] 2338 	mov	a,@r0
      002AB5 70 03            [24] 2339 	jnz	00573$
      002AB7 02 26 59         [24] 2340 	ljmp	00241$
      002ABA                       2341 00573$:
      002ABA                       2342 00135$:
                                   2343 ;	life.c:285: printstr("DONE ");
      002ABA 7D AD            [12] 2344 	mov	r5,#___str_7
      002ABC 7E 2F            [12] 2345 	mov	r6,#(___str_7 >> 8)
      002ABE 7F 80            [12] 2346 	mov	r7,#0x80
                                   2347 ;	life.c:53: return;
      002AC0                       2348 00231$:
                                   2349 ;	life.c:51: for (; *s; s++) putchar(*s);
      002AC0 8D 82            [24] 2350 	mov	dpl,r5
      002AC2 8E 83            [24] 2351 	mov	dph,r6
      002AC4 8F F0            [24] 2352 	mov	b,r7
      002AC6 12 2E 29         [24] 2353 	lcall	__gptrget
      002AC9 FC               [12] 2354 	mov	r4,a
      002ACA 60 10            [24] 2355 	jz	00192$
      002ACC 7B 00            [12] 2356 	mov	r3,#0x00
      002ACE 8C 82            [24] 2357 	mov	dpl,r4
      002AD0 8B 83            [24] 2358 	mov	dph,r3
      002AD2 12 20 B5         [24] 2359 	lcall	_putchar
      002AD5 0D               [12] 2360 	inc	r5
                                   2361 ;	life.c:285: printstr("DONE ");
      002AD6 BD 00 E7         [24] 2362 	cjne	r5,#0x00,00231$
      002AD9 0E               [12] 2363 	inc	r6
      002ADA 80 E4            [24] 2364 	sjmp	00231$
      002ADC                       2365 00192$:
                                   2366 ;	life.c:286: if (fixed) printstr("FIXED\r\n");
      002ADC 78 3D            [12] 2367 	mov	r0,#_fixed
      002ADE E6               [12] 2368 	mov	a,@r0
      002ADF 60 22            [24] 2369 	jz	00133$
      002AE1 7D B3            [12] 2370 	mov	r5,#___str_8
      002AE3 7E 2F            [12] 2371 	mov	r6,#(___str_8 >> 8)
      002AE5 7F 80            [12] 2372 	mov	r7,#0x80
                                   2373 ;	life.c:53: return;
      002AE7                       2374 00234$:
                                   2375 ;	life.c:51: for (; *s; s++) putchar(*s);
      002AE7 8D 82            [24] 2376 	mov	dpl,r5
      002AE9 8E 83            [24] 2377 	mov	dph,r6
      002AEB 8F F0            [24] 2378 	mov	b,r7
      002AED 12 2E 29         [24] 2379 	lcall	__gptrget
      002AF0 FC               [12] 2380 	mov	r4,a
      002AF1 60 32            [24] 2381 	jz	00134$
      002AF3 7B 00            [12] 2382 	mov	r3,#0x00
      002AF5 8C 82            [24] 2383 	mov	dpl,r4
      002AF7 8B 83            [24] 2384 	mov	dph,r3
      002AF9 12 20 B5         [24] 2385 	lcall	_putchar
      002AFC 0D               [12] 2386 	inc	r5
                                   2387 ;	life.c:286: if (fixed) printstr("FIXED\r\n");
      002AFD BD 00 E7         [24] 2388 	cjne	r5,#0x00,00234$
      002B00 0E               [12] 2389 	inc	r6
      002B01 80 E4            [24] 2390 	sjmp	00234$
      002B03                       2391 00133$:
                                   2392 ;	life.c:287: else printstr("CYCLE2\r\n");
      002B03 7D BB            [12] 2393 	mov	r5,#___str_9
      002B05 7E 2F            [12] 2394 	mov	r6,#(___str_9 >> 8)
      002B07 7F 80            [12] 2395 	mov	r7,#0x80
                                   2396 ;	life.c:53: return;
      002B09                       2397 00237$:
                                   2398 ;	life.c:51: for (; *s; s++) putchar(*s);
      002B09 8D 82            [24] 2399 	mov	dpl,r5
      002B0B 8E 83            [24] 2400 	mov	dph,r6
      002B0D 8F F0            [24] 2401 	mov	b,r7
      002B0F 12 2E 29         [24] 2402 	lcall	__gptrget
      002B12 FC               [12] 2403 	mov	r4,a
      002B13 60 10            [24] 2404 	jz	00134$
      002B15 7B 00            [12] 2405 	mov	r3,#0x00
      002B17 8C 82            [24] 2406 	mov	dpl,r4
      002B19 8B 83            [24] 2407 	mov	dph,r3
      002B1B 12 20 B5         [24] 2408 	lcall	_putchar
      002B1E 0D               [12] 2409 	inc	r5
                                   2410 ;	life.c:287: else printstr("CYCLE2\r\n");
      002B1F BD 00 E7         [24] 2411 	cjne	r5,#0x00,00237$
      002B22 0E               [12] 2412 	inc	r6
      002B23 80 E4            [24] 2413 	sjmp	00237$
      002B25                       2414 00134$:
                                   2415 ;	life.c:288: (void)getchar();
      002B25 12 20 BA         [24] 2416 	lcall	_getchar
                                   2417 ;	life.c:289: break;
      002B28                       2418 00138$:
                                   2419 ;	life.c:293: if (i1) {
      002B28 78 32            [12] 2420 	mov	r0,#_i1
      002B2A E6               [12] 2421 	mov	a,@r0
      002B2B 60 25            [24] 2422 	jz	00247$
                                   2423 ;	life.c:294: printstr("BREAK\r\n");
      002B2D 7D C4            [12] 2424 	mov	r5,#___str_10
      002B2F 7E 2F            [12] 2425 	mov	r6,#(___str_10 >> 8)
      002B31 7F 80            [12] 2426 	mov	r7,#0x80
                                   2427 ;	life.c:53: return;
      002B33                       2428 00244$:
                                   2429 ;	life.c:51: for (; *s; s++) putchar(*s);
      002B33 8D 82            [24] 2430 	mov	dpl,r5
      002B35 8E 83            [24] 2431 	mov	dph,r6
      002B37 8F F0            [24] 2432 	mov	b,r7
      002B39 12 2E 29         [24] 2433 	lcall	__gptrget
      002B3C FC               [12] 2434 	mov	r4,a
      002B3D 60 10            [24] 2435 	jz	00198$
      002B3F 7B 00            [12] 2436 	mov	r3,#0x00
      002B41 8C 82            [24] 2437 	mov	dpl,r4
      002B43 8B 83            [24] 2438 	mov	dph,r3
      002B45 12 20 B5         [24] 2439 	lcall	_putchar
      002B48 0D               [12] 2440 	inc	r5
                                   2441 ;	life.c:294: printstr("BREAK\r\n");
      002B49 BD 00 E7         [24] 2442 	cjne	r5,#0x00,00244$
      002B4C 0E               [12] 2443 	inc	r6
      002B4D 80 E4            [24] 2444 	sjmp	00244$
      002B4F                       2445 00198$:
                                   2446 ;	life.c:295: (void)getchar();
      002B4F 12 20 BA         [24] 2447 	lcall	_getchar
      002B52                       2448 00247$:
                                   2449 ;	life.c:256: for (i0 = 0; !i0; ) {	
      002B52 78 31            [12] 2450 	mov	r0,#_i0
      002B54 E6               [12] 2451 	mov	a,@r0
      002B55 70 03            [24] 2452 	jnz	00584$
      002B57 02 22 F0         [24] 2453 	ljmp	00246$
      002B5A                       2454 00584$:
                                   2455 ;	life.c:299: term:
      002B5A                       2456 00142$:
                                   2457 ;	life.c:300: EA = 0;
                                   2458 ;	assignBit
      002B5A C2 AF            [12] 2459 	clr	_EA
                                   2460 ;	life.c:301: printstr("TERM\r\n");
      002B5C 7D CC            [12] 2461 	mov	r5,#___str_11
      002B5E 7E 2F            [12] 2462 	mov	r6,#(___str_11 >> 8)
      002B60 7F 80            [12] 2463 	mov	r7,#0x80
                                   2464 ;	life.c:53: return;
      002B62                       2465 00249$:
                                   2466 ;	life.c:51: for (; *s; s++) putchar(*s);
      002B62 8D 82            [24] 2467 	mov	dpl,r5
      002B64 8E 83            [24] 2468 	mov	dph,r6
      002B66 8F F0            [24] 2469 	mov	b,r7
      002B68 12 2E 29         [24] 2470 	lcall	__gptrget
      002B6B FC               [12] 2471 	mov	r4,a
      002B6C 60 10            [24] 2472 	jz	00200$
      002B6E 7B 00            [12] 2473 	mov	r3,#0x00
      002B70 8C 82            [24] 2474 	mov	dpl,r4
      002B72 8B 83            [24] 2475 	mov	dph,r3
      002B74 12 20 B5         [24] 2476 	lcall	_putchar
      002B77 0D               [12] 2477 	inc	r5
                                   2478 ;	life.c:301: printstr("TERM\r\n");
      002B78 BD 00 E7         [24] 2479 	cjne	r5,#0x00,00249$
      002B7B 0E               [12] 2480 	inc	r6
      002B7C 80 E4            [24] 2481 	sjmp	00249$
      002B7E                       2482 00200$:
                                   2483 ;	life.c:302: (void)getchar();
      002B7E 12 20 BA         [24] 2484 	lcall	_getchar
                                   2485 ;	life.c:306: __endasm;
      002B81 43 87 02         [24] 2486 	orl	pcon, #2
                                   2487 ;	life.c:307: }
      002B84 85 10 81         [24] 2488 	mov	sp,_bp
      002B87 D0 10            [24] 2489 	pop	_bp
      002B89 22               [24] 2490 	ret
                                   2491 	.area CSEG    (CODE)
                                   2492 	.area CONST   (CODE)
                                   2493 	.area CONST   (CODE)
      002F51                       2494 ___str_0:
      002F51 1B                    2495 	.db 0x1b
      002F52 5B 32 4A              2496 	.ascii "[2J"
      002F55 1B                    2497 	.db 0x1b
      002F56 5B 6D 47 45 4E 20     2498 	.ascii "[mGEN "
      002F5C 00                    2499 	.db 0x00
                                   2500 	.area CSEG    (CODE)
                                   2501 	.area CONST   (CODE)
      002F5D                       2502 ___str_1:
      002F5D 0D                    2503 	.db 0x0d
      002F5E 0A                    2504 	.db 0x0a
      002F5F 00                    2505 	.db 0x00
                                   2506 	.area CSEG    (CODE)
                                   2507 	.area CONST   (CODE)
      002F60                       2508 ___str_2:
      002F60 4C 4F 41 44 20 30 20  2509 	.ascii "LOAD 0 1 ~ # <"
             31 20 7E 20 23 20 3C
      002F6E 00                    2510 	.db 0x00
                                   2511 	.area CSEG    (CODE)
                                   2512 	.area CONST   (CODE)
      002F6F                       2513 ___str_3:
      002F6F 3E                    2514 	.ascii ">"
      002F70 0D                    2515 	.db 0x0d
      002F71 0A                    2516 	.db 0x0a
      002F72 00                    2517 	.db 0x00
                                   2518 	.area CSEG    (CODE)
                                   2519 	.area CONST   (CODE)
      002F73                       2520 ___str_4:
      002F73 52 41 4E 44 4F 4D     2521 	.ascii "RANDOM"
      002F79 00                    2522 	.db 0x00
                                   2523 	.area CSEG    (CODE)
                                   2524 	.area CONST   (CODE)
      002F7A                       2525 ___str_5:
      002F7A 1B                    2526 	.db 0x1b
      002F7B 5B 32 4A              2527 	.ascii "[2J"
      002F7E 1B                    2528 	.db 0x1b
      002F7F 5B 3F 32 35 6C        2529 	.ascii "[?25l"
      002F84 1B                    2530 	.db 0x1b
      002F85 5B 6D 4C 49 46 45 20  2531 	.ascii "[mLIFE INIT T L R P"
             49 4E 49 54 20 54 20
             4C 20 52 20 50
      002F98 0D                    2532 	.db 0x0d
      002F99 0A                    2533 	.db 0x0a
      002F9A 00                    2534 	.db 0x00
                                   2535 	.area CSEG    (CODE)
                                   2536 	.area CONST   (CODE)
      002F9B                       2537 ___str_6:
      002F9B 52 45 41 44 59 20 54  2538 	.ascii "READY T L R P S"
             20 4C 20 52 20 50 20
             53
      002FAA 0D                    2539 	.db 0x0d
      002FAB 0A                    2540 	.db 0x0a
      002FAC 00                    2541 	.db 0x00
                                   2542 	.area CSEG    (CODE)
                                   2543 	.area CONST   (CODE)
      002FAD                       2544 ___str_7:
      002FAD 44 4F 4E 45 20        2545 	.ascii "DONE "
      002FB2 00                    2546 	.db 0x00
                                   2547 	.area CSEG    (CODE)
                                   2548 	.area CONST   (CODE)
      002FB3                       2549 ___str_8:
      002FB3 46 49 58 45 44        2550 	.ascii "FIXED"
      002FB8 0D                    2551 	.db 0x0d
      002FB9 0A                    2552 	.db 0x0a
      002FBA 00                    2553 	.db 0x00
                                   2554 	.area CSEG    (CODE)
                                   2555 	.area CONST   (CODE)
      002FBB                       2556 ___str_9:
      002FBB 43 59 43 4C 45 32     2557 	.ascii "CYCLE2"
      002FC1 0D                    2558 	.db 0x0d
      002FC2 0A                    2559 	.db 0x0a
      002FC3 00                    2560 	.db 0x00
                                   2561 	.area CSEG    (CODE)
                                   2562 	.area CONST   (CODE)
      002FC4                       2563 ___str_10:
      002FC4 42 52 45 41 4B        2564 	.ascii "BREAK"
      002FC9 0D                    2565 	.db 0x0d
      002FCA 0A                    2566 	.db 0x0a
      002FCB 00                    2567 	.db 0x00
                                   2568 	.area CSEG    (CODE)
                                   2569 	.area CONST   (CODE)
      002FCC                       2570 ___str_11:
      002FCC 54 45 52 4D           2571 	.ascii "TERM"
      002FD0 0D                    2572 	.db 0x0d
      002FD1 0A                    2573 	.db 0x0a
      002FD2 00                    2574 	.db 0x00
                                   2575 	.area CSEG    (CODE)
                                   2576 	.area XINIT   (CODE)
                                   2577 	.area CABS    (ABS,CODE)
