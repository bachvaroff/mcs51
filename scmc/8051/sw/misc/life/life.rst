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
                           00FFFE   362 _RND	=	0xfffe
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
      002016 02 22 DA         [24]  455 	ljmp	_main
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
      0020EC 02 22 3F         [24]  595 	ljmp	00102$
      0020EF                        596 00190$:
                                    597 ;	life.c:118: printstr("\033[2J\033[mGEN ");
      0020EF 7D 7D            [12]  598 	mov	r5,#___str_0
      0020F1 7E 2F            [12]  599 	mov	r6,#(___str_0 >> 8)
      0020F3 7F 80            [12]  600 	mov	r7,#0x80
                                    601 ;	life.c:53: return;
      0020F5                        602 00121$:
                                    603 ;	life.c:51: for (; *s; s++) putchar(*s);
      0020F5 8D 82            [24]  604 	mov	dpl,r5
      0020F7 8E 83            [24]  605 	mov	dph,r6
      0020F9 8F F0            [24]  606 	mov	b,r7
      0020FB 12 2E 55         [24]  607 	lcall	__gptrget
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
      00211B 30 E3 02         [24]  629 	jnb	acc.3,00193$
      00211E 44 F0            [12]  630 	orl	a,#0xf0
      002120                        631 00193$:
      002120 FC               [12]  632 	mov	r4,a
      002121 33               [12]  633 	rlc	a
      002122 95 E0            [12]  634 	subb	a,acc
      002124 53 04 0F         [24]  635 	anl	ar4,#0x0f
      002127 EC               [12]  636 	mov	a,r4
      002128 24 21            [12]  637 	add	a,#_digits
      00212A F9               [12]  638 	mov	r1,a
      00212B 87 05            [24]  639 	mov	ar5,@r1
      00212D 7C 00            [12]  640 	mov	r4,#0x00
      00212F 8D 82            [24]  641 	mov	dpl,r5
      002131 8C 83            [24]  642 	mov	dph,r4
      002133 12 20 B5         [24]  643 	lcall	_putchar
                                    644 ;	life.c:43: putchar(digits[(a >> 8) & 0xf]);
      002136 8F 05            [24]  645 	mov	ar5,r7
      002138 53 05 0F         [24]  646 	anl	ar5,#0x0f
      00213B ED               [12]  647 	mov	a,r5
      00213C 24 21            [12]  648 	add	a,#_digits
      00213E F9               [12]  649 	mov	r1,a
      00213F 87 05            [24]  650 	mov	ar5,@r1
      002141 7C 00            [12]  651 	mov	r4,#0x00
      002143 8D 82            [24]  652 	mov	dpl,r5
      002145 8C 83            [24]  653 	mov	dph,r4
      002147 12 20 B5         [24]  654 	lcall	_putchar
                                    655 ;	life.c:44: putchar(digits[(a >> 4) & 0xf]);
      00214A 8E 04            [24]  656 	mov	ar4,r6
      00214C EF               [12]  657 	mov	a,r7
      00214D C4               [12]  658 	swap	a
      00214E CC               [12]  659 	xch	a,r4
      00214F C4               [12]  660 	swap	a
      002150 54 0F            [12]  661 	anl	a,#0x0f
      002152 6C               [12]  662 	xrl	a,r4
      002153 CC               [12]  663 	xch	a,r4
      002154 54 0F            [12]  664 	anl	a,#0x0f
      002156 CC               [12]  665 	xch	a,r4
      002157 6C               [12]  666 	xrl	a,r4
      002158 CC               [12]  667 	xch	a,r4
      002159 30 E3 02         [24]  668 	jnb	acc.3,00194$
      00215C 44 F0            [12]  669 	orl	a,#0xf0
      00215E                        670 00194$:
      00215E 53 04 0F         [24]  671 	anl	ar4,#0x0f
      002161 EC               [12]  672 	mov	a,r4
      002162 24 21            [12]  673 	add	a,#_digits
      002164 F9               [12]  674 	mov	r1,a
      002165 87 05            [24]  675 	mov	ar5,@r1
      002167 7C 00            [12]  676 	mov	r4,#0x00
      002169 8D 82            [24]  677 	mov	dpl,r5
      00216B 8C 83            [24]  678 	mov	dph,r4
      00216D 12 20 B5         [24]  679 	lcall	_putchar
                                    680 ;	life.c:45: putchar(digits[a & 0xf]);
      002170 53 06 0F         [24]  681 	anl	ar6,#0x0f
      002173 EE               [12]  682 	mov	a,r6
      002174 24 21            [12]  683 	add	a,#_digits
      002176 F9               [12]  684 	mov	r1,a
      002177 87 07            [24]  685 	mov	ar7,@r1
      002179 7E 00            [12]  686 	mov	r6,#0x00
      00217B 8F 82            [24]  687 	mov	dpl,r7
      00217D 8E 83            [24]  688 	mov	dph,r6
      00217F 12 20 B5         [24]  689 	lcall	_putchar
                                    690 ;	life.c:111: print16x(generation[0]);
      002182 78 43            [12]  691 	mov	r0,#_generation
      002184 86 06            [24]  692 	mov	ar6,@r0
      002186 08               [12]  693 	inc	r0
                                    694 ;	life.c:42: putchar(digits[(a >> 12) & 0xf]);
      002187 E6               [12]  695 	mov	a,@r0
      002188 FF               [12]  696 	mov	r7,a
      002189 C4               [12]  697 	swap	a
      00218A 54 0F            [12]  698 	anl	a,#0x0f
      00218C 30 E3 02         [24]  699 	jnb	acc.3,00195$
      00218F 44 F0            [12]  700 	orl	a,#0xf0
      002191                        701 00195$:
      002191 FC               [12]  702 	mov	r4,a
      002192 33               [12]  703 	rlc	a
      002193 95 E0            [12]  704 	subb	a,acc
      002195 53 04 0F         [24]  705 	anl	ar4,#0x0f
      002198 EC               [12]  706 	mov	a,r4
      002199 24 21            [12]  707 	add	a,#_digits
      00219B F9               [12]  708 	mov	r1,a
      00219C 87 05            [24]  709 	mov	ar5,@r1
      00219E 7C 00            [12]  710 	mov	r4,#0x00
      0021A0 8D 82            [24]  711 	mov	dpl,r5
      0021A2 8C 83            [24]  712 	mov	dph,r4
      0021A4 12 20 B5         [24]  713 	lcall	_putchar
                                    714 ;	life.c:43: putchar(digits[(a >> 8) & 0xf]);
      0021A7 8F 05            [24]  715 	mov	ar5,r7
      0021A9 53 05 0F         [24]  716 	anl	ar5,#0x0f
      0021AC ED               [12]  717 	mov	a,r5
      0021AD 24 21            [12]  718 	add	a,#_digits
      0021AF F9               [12]  719 	mov	r1,a
      0021B0 87 05            [24]  720 	mov	ar5,@r1
      0021B2 7C 00            [12]  721 	mov	r4,#0x00
      0021B4 8D 82            [24]  722 	mov	dpl,r5
      0021B6 8C 83            [24]  723 	mov	dph,r4
      0021B8 12 20 B5         [24]  724 	lcall	_putchar
                                    725 ;	life.c:44: putchar(digits[(a >> 4) & 0xf]);
      0021BB 8E 04            [24]  726 	mov	ar4,r6
      0021BD EF               [12]  727 	mov	a,r7
      0021BE C4               [12]  728 	swap	a
      0021BF CC               [12]  729 	xch	a,r4
      0021C0 C4               [12]  730 	swap	a
      0021C1 54 0F            [12]  731 	anl	a,#0x0f
      0021C3 6C               [12]  732 	xrl	a,r4
      0021C4 CC               [12]  733 	xch	a,r4
      0021C5 54 0F            [12]  734 	anl	a,#0x0f
      0021C7 CC               [12]  735 	xch	a,r4
      0021C8 6C               [12]  736 	xrl	a,r4
      0021C9 CC               [12]  737 	xch	a,r4
      0021CA 30 E3 02         [24]  738 	jnb	acc.3,00196$
      0021CD 44 F0            [12]  739 	orl	a,#0xf0
      0021CF                        740 00196$:
      0021CF 53 04 0F         [24]  741 	anl	ar4,#0x0f
      0021D2 EC               [12]  742 	mov	a,r4
      0021D3 24 21            [12]  743 	add	a,#_digits
      0021D5 F9               [12]  744 	mov	r1,a
      0021D6 87 05            [24]  745 	mov	ar5,@r1
      0021D8 7C 00            [12]  746 	mov	r4,#0x00
      0021DA 8D 82            [24]  747 	mov	dpl,r5
      0021DC 8C 83            [24]  748 	mov	dph,r4
      0021DE 12 20 B5         [24]  749 	lcall	_putchar
                                    750 ;	life.c:45: putchar(digits[a & 0xf]);
      0021E1 53 06 0F         [24]  751 	anl	ar6,#0x0f
      0021E4 EE               [12]  752 	mov	a,r6
      0021E5 24 21            [12]  753 	add	a,#_digits
      0021E7 F9               [12]  754 	mov	r1,a
      0021E8 87 07            [24]  755 	mov	ar7,@r1
      0021EA 7E 00            [12]  756 	mov	r6,#0x00
      0021EC 8F 82            [24]  757 	mov	dpl,r7
      0021EE 8E 83            [24]  758 	mov	dph,r6
      0021F0 12 20 B5         [24]  759 	lcall	_putchar
                                    760 ;	life.c:120: printstr("\r\n");
      0021F3 7D 89            [12]  761 	mov	r5,#___str_1
      0021F5 7E 2F            [12]  762 	mov	r6,#(___str_1 >> 8)
      0021F7 7F 80            [12]  763 	mov	r7,#0x80
                                    764 ;	life.c:53: return;
      0021F9                        765 00124$:
                                    766 ;	life.c:51: for (; *s; s++) putchar(*s);
      0021F9 8D 82            [24]  767 	mov	dpl,r5
      0021FB 8E 83            [24]  768 	mov	dph,r6
      0021FD 8F F0            [24]  769 	mov	b,r7
      0021FF 12 2E 55         [24]  770 	lcall	__gptrget
      002202 FC               [12]  771 	mov	r4,a
      002203 60 10            [24]  772 	jz	00114$
      002205 7B 00            [12]  773 	mov	r3,#0x00
      002207 8C 82            [24]  774 	mov	dpl,r4
      002209 8B 83            [24]  775 	mov	dph,r3
      00220B 12 20 B5         [24]  776 	lcall	_putchar
      00220E 0D               [12]  777 	inc	r5
                                    778 ;	life.c:120: printstr("\r\n");
      00220F BD 00 E7         [24]  779 	cjne	r5,#0x00,00124$
      002212 0E               [12]  780 	inc	r6
      002213 80 E4            [24]  781 	sjmp	00124$
      002215                        782 00114$:
                                    783 ;	life.c:103: generation[0]++;
      002215 78 43            [12]  784 	mov	r0,#_generation
      002217 86 06            [24]  785 	mov	ar6,@r0
      002219 08               [12]  786 	inc	r0
      00221A 86 07            [24]  787 	mov	ar7,@r0
      00221C 0E               [12]  788 	inc	r6
      00221D BE 00 01         [24]  789 	cjne	r6,#0x00,00199$
      002220 0F               [12]  790 	inc	r7
      002221                        791 00199$:
      002221 78 43            [12]  792 	mov	r0,#_generation
      002223 A6 06            [24]  793 	mov	@r0,ar6
      002225 08               [12]  794 	inc	r0
      002226 A6 07            [24]  795 	mov	@r0,ar7
                                    796 ;	life.c:104: if (!generation[0]) generation[1]++;
      002228 EE               [12]  797 	mov	a,r6
      002229 4F               [12]  798 	orl	a,r7
      00222A 70 13            [24]  799 	jnz	00102$
      00222C 78 45            [12]  800 	mov	r0,#(_generation + 0x0002)
      00222E 86 06            [24]  801 	mov	ar6,@r0
      002230 08               [12]  802 	inc	r0
      002231 86 07            [24]  803 	mov	ar7,@r0
      002233 0E               [12]  804 	inc	r6
      002234 BE 00 01         [24]  805 	cjne	r6,#0x00,00201$
      002237 0F               [12]  806 	inc	r7
      002238                        807 00201$:
      002238 78 45            [12]  808 	mov	r0,#(_generation + 0x0002)
      00223A A6 06            [24]  809 	mov	@r0,ar6
      00223C 08               [12]  810 	inc	r0
      00223D A6 07            [24]  811 	mov	@r0,ar7
                                    812 ;	life.c:121: updategen();
      00223F                        813 00102$:
                                    814 ;	life.c:124: for (x = 0; x < W; x++) {
      00223F 78 34            [12]  815 	mov	r0,#_x
      002241 E4               [12]  816 	clr	a
      002242 F6               [12]  817 	mov	@r0,a
      002243 08               [12]  818 	inc	r0
      002244 F6               [12]  819 	mov	@r0,a
      002245                        820 00131$:
                                    821 ;	life.c:125: for (y = 0; y < H; y++)
      002245 78 36            [12]  822 	mov	r0,#_y
      002247 E4               [12]  823 	clr	a
      002248 F6               [12]  824 	mov	@r0,a
      002249 08               [12]  825 	inc	r0
      00224A F6               [12]  826 	mov	@r0,a
      00224B                        827 00126$:
                                    828 ;	life.c:126: if (u[A2D(W, y, x)]) putchar('1');
      00224B 78 36            [12]  829 	mov	r0,#_y
      00224D E6               [12]  830 	mov	a,@r0
      00224E C0 E0            [24]  831 	push	acc
      002250 08               [12]  832 	inc	r0
      002251 E6               [12]  833 	mov	a,@r0
      002252 C0 E0            [24]  834 	push	acc
      002254 90 00 30         [24]  835 	mov	dptr,#0x0030
      002257 12 2C 93         [24]  836 	lcall	__mulint
      00225A AE 82            [24]  837 	mov	r6,dpl
      00225C AF 83            [24]  838 	mov	r7,dph
      00225E 15 81            [12]  839 	dec	sp
      002260 15 81            [12]  840 	dec	sp
      002262 78 34            [12]  841 	mov	r0,#_x
      002264 E6               [12]  842 	mov	a,@r0
      002265 2E               [12]  843 	add	a,r6
      002266 FE               [12]  844 	mov	r6,a
      002267 08               [12]  845 	inc	r0
      002268 E6               [12]  846 	mov	a,@r0
      002269 3F               [12]  847 	addc	a,r7
      00226A FF               [12]  848 	mov	r7,a
      00226B EE               [12]  849 	mov	a,r6
      00226C 24 00            [12]  850 	add	a,#_u
      00226E FE               [12]  851 	mov	r6,a
      00226F EF               [12]  852 	mov	a,r7
      002270 34 88            [12]  853 	addc	a,#(_u >> 8)
      002272 FF               [12]  854 	mov	r7,a
      002273 8E 82            [24]  855 	mov	dpl,r6
      002275 8F 83            [24]  856 	mov	dph,r7
      002277 E0               [24]  857 	movx	a,@dptr
      002278 60 08            [24]  858 	jz	00104$
      00227A 90 00 31         [24]  859 	mov	dptr,#0x0031
      00227D 12 20 B5         [24]  860 	lcall	_putchar
      002280 80 06            [24]  861 	sjmp	00127$
      002282                        862 00104$:
                                    863 ;	life.c:127: else putchar('0');
      002282 90 00 30         [24]  864 	mov	dptr,#0x0030
      002285 12 20 B5         [24]  865 	lcall	_putchar
      002288                        866 00127$:
                                    867 ;	life.c:125: for (y = 0; y < H; y++)
      002288 78 36            [12]  868 	mov	r0,#_y
      00228A 06               [12]  869 	inc	@r0
      00228B B6 00 02         [24]  870 	cjne	@r0,#0x00,00203$
      00228E 08               [12]  871 	inc	r0
      00228F 06               [12]  872 	inc	@r0
      002290                        873 00203$:
      002290 78 36            [12]  874 	mov	r0,#_y
      002292 C3               [12]  875 	clr	c
      002293 E6               [12]  876 	mov	a,@r0
      002294 94 C0            [12]  877 	subb	a,#0xc0
      002296 08               [12]  878 	inc	r0
      002297 E6               [12]  879 	mov	a,@r0
      002298 64 80            [12]  880 	xrl	a,#0x80
      00229A 94 80            [12]  881 	subb	a,#0x80
      00229C 40 AD            [24]  882 	jc	00126$
                                    883 ;	life.c:128: printstr("\r\n");
      00229E 7D 89            [12]  884 	mov	r5,#___str_1
      0022A0 7E 2F            [12]  885 	mov	r6,#(___str_1 >> 8)
      0022A2 7F 80            [12]  886 	mov	r7,#0x80
                                    887 ;	life.c:53: return;
      0022A4                        888 00129$:
                                    889 ;	life.c:51: for (; *s; s++) putchar(*s);
      0022A4 8D 82            [24]  890 	mov	dpl,r5
      0022A6 8E 83            [24]  891 	mov	dph,r6
      0022A8 8F F0            [24]  892 	mov	b,r7
      0022AA 12 2E 55         [24]  893 	lcall	__gptrget
      0022AD FC               [12]  894 	mov	r4,a
      0022AE 60 10            [24]  895 	jz	00119$
      0022B0 7B 00            [12]  896 	mov	r3,#0x00
      0022B2 8C 82            [24]  897 	mov	dpl,r4
      0022B4 8B 83            [24]  898 	mov	dph,r3
      0022B6 12 20 B5         [24]  899 	lcall	_putchar
      0022B9 0D               [12]  900 	inc	r5
                                    901 ;	life.c:128: printstr("\r\n");
      0022BA BD 00 E7         [24]  902 	cjne	r5,#0x00,00129$
      0022BD 0E               [12]  903 	inc	r6
      0022BE 80 E4            [24]  904 	sjmp	00129$
      0022C0                        905 00119$:
                                    906 ;	life.c:124: for (x = 0; x < W; x++) {
      0022C0 78 34            [12]  907 	mov	r0,#_x
      0022C2 06               [12]  908 	inc	@r0
      0022C3 B6 00 02         [24]  909 	cjne	@r0,#0x00,00207$
      0022C6 08               [12]  910 	inc	r0
      0022C7 06               [12]  911 	inc	@r0
      0022C8                        912 00207$:
      0022C8 78 34            [12]  913 	mov	r0,#_x
      0022CA C3               [12]  914 	clr	c
      0022CB E6               [12]  915 	mov	a,@r0
      0022CC 94 30            [12]  916 	subb	a,#0x30
      0022CE 08               [12]  917 	inc	r0
      0022CF E6               [12]  918 	mov	a,@r0
      0022D0 64 80            [12]  919 	xrl	a,#0x80
      0022D2 94 80            [12]  920 	subb	a,#0x80
      0022D4 50 03            [24]  921 	jnc	00208$
      0022D6 02 22 45         [24]  922 	ljmp	00131$
      0022D9                        923 00208$:
                                    924 ;	life.c:131: return;
                                    925 ;	life.c:132: }
      0022D9 22               [24]  926 	ret
                                    927 ;------------------------------------------------------------
                                    928 ;Allocation info for local variables in function 'main'
                                    929 ;------------------------------------------------------------
                                    930 ;__2621440023              Allocated to registers 
                                    931 ;s                         Allocated to registers r5 r6 r7 
                                    932 ;__1310720013              Allocated to registers 
                                    933 ;s                         Allocated to registers r5 r6 r7 
                                    934 ;__1310720015              Allocated to registers r6 r7 
                                    935 ;a                         Allocated to registers r4 r5 
                                    936 ;__1310720017              Allocated to registers 
                                    937 ;s                         Allocated to registers r5 r6 r7 
                                    938 ;__1310720019              Allocated to registers 
                                    939 ;s                         Allocated to registers r5 r6 r7 
                                    940 ;__1310720021              Allocated to registers 
                                    941 ;s                         Allocated to registers r5 r6 r7 
                                    942 ;__2621440028              Allocated to registers 
                                    943 ;s                         Allocated to registers r5 r6 r7 
                                    944 ;__4587520032              Allocated to registers 
                                    945 ;s                         Allocated to registers r5 r6 r7 
                                    946 ;__4587520034              Allocated to registers 
                                    947 ;s                         Allocated to registers r5 r6 r7 
                                    948 ;__4587520036              Allocated to registers 
                                    949 ;s                         Allocated to registers r5 r6 r7 
                                    950 ;__3276800038              Allocated to registers 
                                    951 ;s                         Allocated to registers r5 r6 r7 
                                    952 ;__1310720040              Allocated to registers 
                                    953 ;s                         Allocated to registers r5 r6 r7 
                                    954 ;sloc0                     Allocated to stack - _bp +1
                                    955 ;sloc1                     Allocated to stack - _bp +2
                                    956 ;sloc2                     Allocated to stack - _bp +4
                                    957 ;sloc3                     Allocated to stack - _bp +6
                                    958 ;sloc4                     Allocated to stack - _bp +8
                                    959 ;sloc5                     Allocated to stack - _bp +10
                                    960 ;sloc6                     Allocated to stack - _bp +12
                                    961 ;------------------------------------------------------------
                                    962 ;	life.c:243: void main(void) {
                                    963 ;	-----------------------------------------
                                    964 ;	 function main
                                    965 ;	-----------------------------------------
      0022DA                        966 _main:
      0022DA C0 10            [24]  967 	push	_bp
      0022DC E5 81            [12]  968 	mov	a,sp
      0022DE F5 10            [12]  969 	mov	_bp,a
      0022E0 24 0D            [12]  970 	add	a,#0x0d
      0022E2 F5 81            [12]  971 	mov	sp,a
                                    972 ;	life.c:244: IT0 = 1;
                                    973 ;	assignBit
      0022E4 D2 88            [12]  974 	setb	_IT0
                                    975 ;	life.c:245: IT1 = 1;
                                    976 ;	assignBit
      0022E6 D2 8A            [12]  977 	setb	_IT1
                                    978 ;	life.c:246: EX0 = 1;
                                    979 ;	assignBit
      0022E8 D2 A8            [12]  980 	setb	_EX0
                                    981 ;	life.c:247: EX1 = 1;
                                    982 ;	assignBit
      0022EA D2 AA            [12]  983 	setb	_EX1
                                    984 ;	life.c:248: EA = 1;	
                                    985 ;	assignBit
      0022EC D2 AF            [12]  986 	setb	_EA
                                    987 ;	life.c:249: P1_7 = 1;
                                    988 ;	assignBit
      0022EE D2 97            [12]  989 	setb	_P1_7
                                    990 ;	life.c:251: srand(RND);
      0022F0 90 FF FE         [24]  991 	mov	dptr,#_RND
      0022F3 E0               [24]  992 	movx	a,@dptr
      0022F4 FE               [12]  993 	mov	r6,a
      0022F5 A3               [24]  994 	inc	dptr
      0022F6 E0               [24]  995 	movx	a,@dptr
      0022F7 FF               [12]  996 	mov	r7,a
      0022F8 8E 82            [24]  997 	mov	dpl,r6
      0022FA 8F 83            [24]  998 	mov	dph,r7
      0022FC 12 2C 7A         [24]  999 	lcall	_srand
                                   1000 ;	life.c:253: OE76 = OE76_0;
      0022FF 78 33            [12] 1001 	mov	r0,#_OE76
      002301 76 3F            [12] 1002 	mov	@r0,#0x3f
                                   1003 ;	life.c:254: flashOE();
      002303 12 20 DB         [24] 1004 	lcall	_flashOE
                                   1005 ;	life.c:256: for (i0 = 0; !i0; ) {	
      002306 78 31            [12] 1006 	mov	r0,#_i0
      002308 76 00            [12] 1007 	mov	@r0,#0x00
      00230A                       1008 00246$:
                                   1009 ;	life.c:257: printstr("\033[2J\033[?25l\033[mLIFE INIT T L R P\r\n");
      00230A 7D A6            [12] 1010 	mov	r5,#___str_5
      00230C 7E 2F            [12] 1011 	mov	r6,#(___str_5 >> 8)
      00230E 7F 80            [12] 1012 	mov	r7,#0x80
                                   1013 ;	life.c:53: return;
      002310                       1014 00202$:
                                   1015 ;	life.c:51: for (; *s; s++) putchar(*s);
      002310 8D 82            [24] 1016 	mov	dpl,r5
      002312 8E 83            [24] 1017 	mov	dph,r6
      002314 8F F0            [24] 1018 	mov	b,r7
      002316 12 2E 55         [24] 1019 	lcall	__gptrget
      002319 FC               [12] 1020 	mov	r4,a
      00231A 60 10            [24] 1021 	jz	00110$
      00231C 7B 00            [12] 1022 	mov	r3,#0x00
      00231E 8C 82            [24] 1023 	mov	dpl,r4
      002320 8B 83            [24] 1024 	mov	dph,r3
      002322 12 20 B5         [24] 1025 	lcall	_putchar
      002325 0D               [12] 1026 	inc	r5
                                   1027 ;	life.c:258: while (1) {
      002326 BD 00 E7         [24] 1028 	cjne	r5,#0x00,00202$
      002329 0E               [12] 1029 	inc	r6
      00232A 80 E4            [24] 1030 	sjmp	00202$
      00232C                       1031 00110$:
                                   1032 ;	life.c:259: c = toupper(getchar());
      00232C 12 20 BA         [24] 1033 	lcall	_getchar
      00232F 12 2E 2E         [24] 1034 	lcall	_toupper
      002332 AE 82            [24] 1035 	mov	r6,dpl
      002334 AF 83            [24] 1036 	mov	r7,dph
      002336 78 3A            [12] 1037 	mov	r0,#_c
      002338 A6 06            [24] 1038 	mov	@r0,ar6
      00233A 08               [12] 1039 	inc	r0
      00233B A6 07            [24] 1040 	mov	@r0,ar7
                                   1041 ;	life.c:260: if (i0 || (c == (int)'T')) goto terminate;
      00233D 78 31            [12] 1042 	mov	r0,#_i0
      00233F E6               [12] 1043 	mov	a,@r0
      002340 60 03            [24] 1044 	jz	00516$
      002342 02 2B 86         [24] 1045 	ljmp	00142$
      002345                       1046 00516$:
      002345 BE 54 06         [24] 1047 	cjne	r6,#0x54,00517$
      002348 BF 00 03         [24] 1048 	cjne	r7,#0x00,00517$
      00234B 02 2B 86         [24] 1049 	ljmp	00142$
      00234E                       1050 00517$:
                                   1051 ;	life.c:261: else if ((c == (int)'L') || (c == (int)'R') || (c == (int)'P')) break;
      00234E BE 4C 05         [24] 1052 	cjne	r6,#0x4c,00518$
      002351 BF 00 02         [24] 1053 	cjne	r7,#0x00,00518$
      002354 80 0E            [24] 1054 	sjmp	00291$
      002356                       1055 00518$:
      002356 BE 52 05         [24] 1056 	cjne	r6,#0x52,00519$
      002359 BF 00 02         [24] 1057 	cjne	r7,#0x00,00519$
      00235C 80 06            [24] 1058 	sjmp	00291$
      00235E                       1059 00519$:
      00235E BE 50 CB         [24] 1060 	cjne	r6,#0x50,00110$
      002361 BF 00 C8         [24] 1061 	cjne	r7,#0x00,00110$
                                   1062 ;	life.c:264: reload:
      002364                       1063 00291$:
      002364                       1064 00112$:
                                   1065 ;	life.c:135: memset(u, 0, sizeof (u));
      002364 E4               [12] 1066 	clr	a
      002365 C0 E0            [24] 1067 	push	acc
      002367 74 24            [12] 1068 	mov	a,#0x24
      002369 C0 E0            [24] 1069 	push	acc
      00236B E4               [12] 1070 	clr	a
      00236C C0 E0            [24] 1071 	push	acc
      00236E 90 88 00         [24] 1072 	mov	dptr,#_u
      002371 75 F0 00         [24] 1073 	mov	b,#0x00
      002374 12 2D C4         [24] 1074 	lcall	_memset
      002377 15 81            [12] 1075 	dec	sp
      002379 15 81            [12] 1076 	dec	sp
      00237B 15 81            [12] 1077 	dec	sp
                                   1078 ;	life.c:136: memset(pu, 0, sizeof (pu));
      00237D E4               [12] 1079 	clr	a
      00237E C0 E0            [24] 1080 	push	acc
      002380 74 24            [12] 1081 	mov	a,#0x24
      002382 C0 E0            [24] 1082 	push	acc
      002384 E4               [12] 1083 	clr	a
      002385 C0 E0            [24] 1084 	push	acc
      002387 90 64 00         [24] 1085 	mov	dptr,#_pu
      00238A 75 F0 00         [24] 1086 	mov	b,#0x00
      00238D 12 2D C4         [24] 1087 	lcall	_memset
      002390 15 81            [12] 1088 	dec	sp
      002392 15 81            [12] 1089 	dec	sp
      002394 15 81            [12] 1090 	dec	sp
                                   1091 ;	life.c:266: if (c == (int)'L') loadiu();
      002396 78 3A            [12] 1092 	mov	r0,#_c
      002398 B6 4C 06         [24] 1093 	cjne	@r0,#0x4c,00522$
      00239B 08               [12] 1094 	inc	r0
      00239C B6 00 02         [24] 1095 	cjne	@r0,#0x00,00522$
      00239F 80 03            [24] 1096 	sjmp	00523$
      0023A1                       1097 00522$:
      0023A1 02 25 2E         [24] 1098 	ljmp	00116$
      0023A4                       1099 00523$:
                                   1100 ;	life.c:142: j = 0;
      0023A4 78 38            [12] 1101 	mov	r0,#_j
      0023A6 E4               [12] 1102 	clr	a
      0023A7 F6               [12] 1103 	mov	@r0,a
      0023A8 08               [12] 1104 	inc	r0
      0023A9 F6               [12] 1105 	mov	@r0,a
                                   1106 ;	life.c:144: printstr("LOAD 0 1 ~ # <");
      0023AA 7D 8C            [12] 1107 	mov	r5,#___str_2
      0023AC 7E 2F            [12] 1108 	mov	r6,#(___str_2 >> 8)
      0023AE 7F 80            [12] 1109 	mov	r7,#0x80
                                   1110 ;	life.c:53: return;
      0023B0                       1111 00205$:
                                   1112 ;	life.c:51: for (; *s; s++) putchar(*s);
      0023B0 8D 82            [24] 1113 	mov	dpl,r5
      0023B2 8E 83            [24] 1114 	mov	dph,r6
      0023B4 8F F0            [24] 1115 	mov	b,r7
      0023B6 12 2E 55         [24] 1116 	lcall	__gptrget
      0023B9 FC               [12] 1117 	mov	r4,a
      0023BA 60 10            [24] 1118 	jz	00147$
      0023BC 7B 00            [12] 1119 	mov	r3,#0x00
      0023BE 8C 82            [24] 1120 	mov	dpl,r4
      0023C0 8B 83            [24] 1121 	mov	dph,r3
      0023C2 12 20 B5         [24] 1122 	lcall	_putchar
      0023C5 0D               [12] 1123 	inc	r5
                                   1124 ;	life.c:144: printstr("LOAD 0 1 ~ # <");
      0023C6 BD 00 E7         [24] 1125 	cjne	r5,#0x00,00205$
      0023C9 0E               [12] 1126 	inc	r6
      0023CA 80 E4            [24] 1127 	sjmp	00205$
      0023CC                       1128 00147$:
                                   1129 ;	life.c:146: for (y = 0; y < (H * W); y += W) {
      0023CC 78 36            [12] 1130 	mov	r0,#_y
      0023CE E4               [12] 1131 	clr	a
      0023CF F6               [12] 1132 	mov	@r0,a
      0023D0 08               [12] 1133 	inc	r0
      0023D1 F6               [12] 1134 	mov	@r0,a
      0023D2                       1135 00208$:
                                   1136 ;	life.c:147: for (x = 0; x < W; x++) {
      0023D2 78 34            [12] 1137 	mov	r0,#_x
      0023D4 E4               [12] 1138 	clr	a
      0023D5 F6               [12] 1139 	mov	@r0,a
      0023D6 08               [12] 1140 	inc	r0
      0023D7 F6               [12] 1141 	mov	@r0,a
                                   1142 ;	life.c:148: while (1) {
      0023D8                       1143 00160$:
                                   1144 ;	life.c:149: c = getchar();
      0023D8 12 20 BA         [24] 1145 	lcall	_getchar
      0023DB AE 82            [24] 1146 	mov	r6,dpl
      0023DD AF 83            [24] 1147 	mov	r7,dph
      0023DF 78 3A            [12] 1148 	mov	r0,#_c
      0023E1 A6 06            [24] 1149 	mov	@r0,ar6
      0023E3 08               [12] 1150 	inc	r0
      0023E4 A6 07            [24] 1151 	mov	@r0,ar7
                                   1152 ;	life.c:150: if (c == (int)'0') {
      0023E6 BE 30 25         [24] 1153 	cjne	r6,#0x30,00158$
      0023E9 BF 00 22         [24] 1154 	cjne	r7,#0x00,00158$
                                   1155 ;	life.c:151: iu[y + x] = 0;
      0023EC 78 36            [12] 1156 	mov	r0,#_y
      0023EE 79 34            [12] 1157 	mov	r1,#_x
      0023F0 E7               [12] 1158 	mov	a,@r1
      0023F1 26               [12] 1159 	add	a,@r0
      0023F2 FC               [12] 1160 	mov	r4,a
      0023F3 09               [12] 1161 	inc	r1
      0023F4 E7               [12] 1162 	mov	a,@r1
      0023F5 08               [12] 1163 	inc	r0
      0023F6 36               [12] 1164 	addc	a,@r0
      0023F7 FD               [12] 1165 	mov	r5,a
      0023F8 EC               [12] 1166 	mov	a,r4
      0023F9 24 00            [12] 1167 	add	a,#_iu
      0023FB F5 82            [12] 1168 	mov	dpl,a
      0023FD ED               [12] 1169 	mov	a,r5
      0023FE 34 40            [12] 1170 	addc	a,#(_iu >> 8)
      002400 F5 83            [12] 1171 	mov	dph,a
      002402 E4               [12] 1172 	clr	a
      002403 F0               [24] 1173 	movx	@dptr,a
                                   1174 ;	life.c:152: j++;
      002404 78 38            [12] 1175 	mov	r0,#_j
      002406 06               [12] 1176 	inc	@r0
      002407 B6 00 02         [24] 1177 	cjne	@r0,#0x00,00528$
      00240A 08               [12] 1178 	inc	r0
      00240B 06               [12] 1179 	inc	@r0
      00240C                       1180 00528$:
                                   1181 ;	life.c:153: break;
      00240C 80 39            [24] 1182 	sjmp	00163$
      00240E                       1183 00158$:
                                   1184 ;	life.c:154: } else if (c == (int)'1') {
      00240E BE 31 26         [24] 1185 	cjne	r6,#0x31,00156$
      002411 BF 00 23         [24] 1186 	cjne	r7,#0x00,00156$
                                   1187 ;	life.c:155: iu[y + x] = 1;
      002414 78 36            [12] 1188 	mov	r0,#_y
      002416 79 34            [12] 1189 	mov	r1,#_x
      002418 E7               [12] 1190 	mov	a,@r1
      002419 26               [12] 1191 	add	a,@r0
      00241A FC               [12] 1192 	mov	r4,a
      00241B 09               [12] 1193 	inc	r1
      00241C E7               [12] 1194 	mov	a,@r1
      00241D 08               [12] 1195 	inc	r0
      00241E 36               [12] 1196 	addc	a,@r0
      00241F FD               [12] 1197 	mov	r5,a
      002420 EC               [12] 1198 	mov	a,r4
      002421 24 00            [12] 1199 	add	a,#_iu
      002423 F5 82            [12] 1200 	mov	dpl,a
      002425 ED               [12] 1201 	mov	a,r5
      002426 34 40            [12] 1202 	addc	a,#(_iu >> 8)
      002428 F5 83            [12] 1203 	mov	dph,a
      00242A 74 01            [12] 1204 	mov	a,#0x01
      00242C F0               [24] 1205 	movx	@dptr,a
                                   1206 ;	life.c:156: j++;
      00242D 78 38            [12] 1207 	mov	r0,#_j
      00242F 06               [12] 1208 	inc	@r0
      002430 B6 00 02         [24] 1209 	cjne	@r0,#0x00,00531$
      002433 08               [12] 1210 	inc	r0
      002434 06               [12] 1211 	inc	@r0
      002435                       1212 00531$:
                                   1213 ;	life.c:157: break;
      002435 80 10            [24] 1214 	sjmp	00163$
      002437                       1215 00156$:
                                   1216 ;	life.c:158: } else if (c == (int)'~') goto br_inner;
      002437 BE 7E 05         [24] 1217 	cjne	r6,#0x7e,00532$
      00243A BF 00 02         [24] 1218 	cjne	r7,#0x00,00532$
      00243D 80 21            [24] 1219 	sjmp	00209$
      00243F                       1220 00532$:
                                   1221 ;	life.c:159: else if (c == (int)'#') goto out;
                                   1222 ;	life.c:163: break;
      00243F BE 23 96         [24] 1223 	cjne	r6,#0x23,00160$
      002442 BF 00 93         [24] 1224 	cjne	r7,#0x00,00160$
      002445 80 31            [24] 1225 	sjmp	00173$
      002447                       1226 00163$:
                                   1227 ;	life.c:147: for (x = 0; x < W; x++) {
      002447 78 34            [12] 1228 	mov	r0,#_x
      002449 06               [12] 1229 	inc	@r0
      00244A B6 00 02         [24] 1230 	cjne	@r0,#0x00,00534$
      00244D 08               [12] 1231 	inc	r0
      00244E 06               [12] 1232 	inc	@r0
      00244F                       1233 00534$:
      00244F 78 34            [12] 1234 	mov	r0,#_x
      002451 C3               [12] 1235 	clr	c
      002452 E6               [12] 1236 	mov	a,@r0
      002453 94 30            [12] 1237 	subb	a,#0x30
      002455 08               [12] 1238 	inc	r0
      002456 E6               [12] 1239 	mov	a,@r0
      002457 64 80            [12] 1240 	xrl	a,#0x80
      002459 94 80            [12] 1241 	subb	a,#0x80
      00245B 50 03            [24] 1242 	jnc	00535$
      00245D 02 23 D8         [24] 1243 	ljmp	00160$
      002460                       1244 00535$:
      002460                       1245 00209$:
                                   1246 ;	life.c:146: for (y = 0; y < (H * W); y += W) {
      002460 78 36            [12] 1247 	mov	r0,#_y
      002462 74 30            [12] 1248 	mov	a,#0x30
      002464 26               [12] 1249 	add	a,@r0
      002465 F6               [12] 1250 	mov	@r0,a
      002466 E4               [12] 1251 	clr	a
      002467 08               [12] 1252 	inc	r0
      002468 36               [12] 1253 	addc	a,@r0
      002469 F6               [12] 1254 	mov	@r0,a
      00246A 78 36            [12] 1255 	mov	r0,#_y
      00246C C3               [12] 1256 	clr	c
      00246D 08               [12] 1257 	inc	r0
      00246E E6               [12] 1258 	mov	a,@r0
      00246F 64 80            [12] 1259 	xrl	a,#0x80
      002471 94 A4            [12] 1260 	subb	a,#0xa4
      002473 50 03            [24] 1261 	jnc	00536$
      002475 02 23 D2         [24] 1262 	ljmp	00208$
      002478                       1263 00536$:
                                   1264 ;	life.c:167: out:
      002478                       1265 00173$:
                                   1266 ;	life.c:168: if (c != (int)'#')
      002478 BE 23 05         [24] 1267 	cjne	r6,#0x23,00537$
      00247B BF 00 02         [24] 1268 	cjne	r7,#0x00,00537$
      00247E 80 14            [24] 1269 	sjmp	00172$
      002480                       1270 00537$:
                                   1271 ;	life.c:169: while (1) {
      002480                       1272 00169$:
                                   1273 ;	life.c:170: c = getchar();
      002480 12 20 BA         [24] 1274 	lcall	_getchar
      002483 AE 82            [24] 1275 	mov	r6,dpl
      002485 AF 83            [24] 1276 	mov	r7,dph
      002487 78 3A            [12] 1277 	mov	r0,#_c
      002489 A6 06            [24] 1278 	mov	@r0,ar6
      00248B 08               [12] 1279 	inc	r0
      00248C A6 07            [24] 1280 	mov	@r0,ar7
                                   1281 ;	life.c:171: if (c == (int)'#') break;
      00248E BE 23 EF         [24] 1282 	cjne	r6,#0x23,00169$
      002491 BF 00 EC         [24] 1283 	cjne	r7,#0x00,00169$
      002494                       1284 00172$:
                                   1285 ;	life.c:173: print16x(j);
      002494 78 38            [12] 1286 	mov	r0,#_j
      002496 86 06            [24] 1287 	mov	ar6,@r0
      002498 08               [12] 1288 	inc	r0
      002499 86 07            [24] 1289 	mov	ar7,@r0
      00249B 8E 04            [24] 1290 	mov	ar4,r6
                                   1291 ;	life.c:42: putchar(digits[(a >> 12) & 0xf]);
      00249D EF               [12] 1292 	mov	a,r7
      00249E FD               [12] 1293 	mov	r5,a
      00249F C4               [12] 1294 	swap	a
      0024A0 54 0F            [12] 1295 	anl	a,#0x0f
      0024A2 30 E3 02         [24] 1296 	jnb	acc.3,00540$
      0024A5 44 F0            [12] 1297 	orl	a,#0xf0
      0024A7                       1298 00540$:
      0024A7 FE               [12] 1299 	mov	r6,a
      0024A8 33               [12] 1300 	rlc	a
      0024A9 95 E0            [12] 1301 	subb	a,acc
      0024AB 53 06 0F         [24] 1302 	anl	ar6,#0x0f
      0024AE EE               [12] 1303 	mov	a,r6
      0024AF 24 21            [12] 1304 	add	a,#_digits
      0024B1 F9               [12] 1305 	mov	r1,a
      0024B2 87 07            [24] 1306 	mov	ar7,@r1
      0024B4 7E 00            [12] 1307 	mov	r6,#0x00
      0024B6 8F 82            [24] 1308 	mov	dpl,r7
      0024B8 8E 83            [24] 1309 	mov	dph,r6
      0024BA 12 20 B5         [24] 1310 	lcall	_putchar
                                   1311 ;	life.c:43: putchar(digits[(a >> 8) & 0xf]);
      0024BD 8D 07            [24] 1312 	mov	ar7,r5
      0024BF 53 07 0F         [24] 1313 	anl	ar7,#0x0f
      0024C2 EF               [12] 1314 	mov	a,r7
      0024C3 24 21            [12] 1315 	add	a,#_digits
      0024C5 F9               [12] 1316 	mov	r1,a
      0024C6 87 07            [24] 1317 	mov	ar7,@r1
      0024C8 7E 00            [12] 1318 	mov	r6,#0x00
      0024CA 8F 82            [24] 1319 	mov	dpl,r7
      0024CC 8E 83            [24] 1320 	mov	dph,r6
      0024CE 12 20 B5         [24] 1321 	lcall	_putchar
                                   1322 ;	life.c:44: putchar(digits[(a >> 4) & 0xf]);
      0024D1 8C 06            [24] 1323 	mov	ar6,r4
      0024D3 ED               [12] 1324 	mov	a,r5
      0024D4 C4               [12] 1325 	swap	a
      0024D5 CE               [12] 1326 	xch	a,r6
      0024D6 C4               [12] 1327 	swap	a
      0024D7 54 0F            [12] 1328 	anl	a,#0x0f
      0024D9 6E               [12] 1329 	xrl	a,r6
      0024DA CE               [12] 1330 	xch	a,r6
      0024DB 54 0F            [12] 1331 	anl	a,#0x0f
      0024DD CE               [12] 1332 	xch	a,r6
      0024DE 6E               [12] 1333 	xrl	a,r6
      0024DF CE               [12] 1334 	xch	a,r6
      0024E0 30 E3 02         [24] 1335 	jnb	acc.3,00541$
      0024E3 44 F0            [12] 1336 	orl	a,#0xf0
      0024E5                       1337 00541$:
      0024E5 53 06 0F         [24] 1338 	anl	ar6,#0x0f
      0024E8 EE               [12] 1339 	mov	a,r6
      0024E9 24 21            [12] 1340 	add	a,#_digits
      0024EB F9               [12] 1341 	mov	r1,a
      0024EC 87 07            [24] 1342 	mov	ar7,@r1
      0024EE 7E 00            [12] 1343 	mov	r6,#0x00
      0024F0 8F 82            [24] 1344 	mov	dpl,r7
      0024F2 8E 83            [24] 1345 	mov	dph,r6
      0024F4 12 20 B5         [24] 1346 	lcall	_putchar
                                   1347 ;	life.c:45: putchar(digits[a & 0xf]);
      0024F7 53 04 0F         [24] 1348 	anl	ar4,#0x0f
      0024FA EC               [12] 1349 	mov	a,r4
      0024FB 24 21            [12] 1350 	add	a,#_digits
      0024FD F9               [12] 1351 	mov	r1,a
      0024FE 87 07            [24] 1352 	mov	ar7,@r1
      002500 7E 00            [12] 1353 	mov	r6,#0x00
      002502 8F 82            [24] 1354 	mov	dpl,r7
      002504 8E 83            [24] 1355 	mov	dph,r6
      002506 12 20 B5         [24] 1356 	lcall	_putchar
                                   1357 ;	life.c:174: printstr(">\r\n");
      002509 7D 9B            [12] 1358 	mov	r5,#___str_3
      00250B 7E 2F            [12] 1359 	mov	r6,#(___str_3 >> 8)
      00250D 7F 80            [12] 1360 	mov	r7,#0x80
                                   1361 ;	life.c:53: return;
      00250F                       1362 00211$:
                                   1363 ;	life.c:51: for (; *s; s++) putchar(*s);
      00250F 8D 82            [24] 1364 	mov	dpl,r5
      002511 8E 83            [24] 1365 	mov	dph,r6
      002513 8F F0            [24] 1366 	mov	b,r7
      002515 12 2E 55         [24] 1367 	lcall	__gptrget
      002518 FC               [12] 1368 	mov	r4,a
      002519 70 03            [24] 1369 	jnz	00542$
      00251B 02 25 E7         [24] 1370 	ljmp	00117$
      00251E                       1371 00542$:
      00251E 7B 00            [12] 1372 	mov	r3,#0x00
      002520 8C 82            [24] 1373 	mov	dpl,r4
      002522 8B 83            [24] 1374 	mov	dph,r3
      002524 12 20 B5         [24] 1375 	lcall	_putchar
      002527 0D               [12] 1376 	inc	r5
                                   1377 ;	life.c:266: if (c == (int)'L') loadiu();
      002528 BD 00 E4         [24] 1378 	cjne	r5,#0x00,00211$
      00252B 0E               [12] 1379 	inc	r6
      00252C 80 E1            [24] 1380 	sjmp	00211$
      00252E                       1381 00116$:
                                   1382 ;	life.c:267: else if (c == (int)'R') loadriu();
      00252E 78 3A            [12] 1383 	mov	r0,#_c
      002530 B6 52 06         [24] 1384 	cjne	@r0,#0x52,00544$
      002533 08               [12] 1385 	inc	r0
      002534 B6 00 02         [24] 1386 	cjne	@r0,#0x00,00544$
      002537 80 03            [24] 1387 	sjmp	00545$
      002539                       1388 00544$:
      002539 02 25 E7         [24] 1389 	ljmp	00117$
      00253C                       1390 00545$:
                                   1391 ;	life.c:180: j = 0;
      00253C 78 38            [12] 1392 	mov	r0,#_j
      00253E E4               [12] 1393 	clr	a
      00253F F6               [12] 1394 	mov	@r0,a
      002540 08               [12] 1395 	inc	r0
      002541 F6               [12] 1396 	mov	@r0,a
                                   1397 ;	life.c:182: printstr("RANDOM");
      002542 7D 9F            [12] 1398 	mov	r5,#___str_4
      002544 7E 2F            [12] 1399 	mov	r6,#(___str_4 >> 8)
      002546 7F 80            [12] 1400 	mov	r7,#0x80
                                   1401 ;	life.c:53: return;
      002548                       1402 00214$:
                                   1403 ;	life.c:51: for (; *s; s++) putchar(*s);
      002548 8D 82            [24] 1404 	mov	dpl,r5
      00254A 8E 83            [24] 1405 	mov	dph,r6
      00254C 8F F0            [24] 1406 	mov	b,r7
      00254E 12 2E 55         [24] 1407 	lcall	__gptrget
      002551 FC               [12] 1408 	mov	r4,a
      002552 60 10            [24] 1409 	jz	00179$
      002554 7B 00            [12] 1410 	mov	r3,#0x00
      002556 8C 82            [24] 1411 	mov	dpl,r4
      002558 8B 83            [24] 1412 	mov	dph,r3
      00255A 12 20 B5         [24] 1413 	lcall	_putchar
      00255D 0D               [12] 1414 	inc	r5
                                   1415 ;	life.c:182: printstr("RANDOM");
      00255E BD 00 E7         [24] 1416 	cjne	r5,#0x00,00214$
      002561 0E               [12] 1417 	inc	r6
      002562 80 E4            [24] 1418 	sjmp	00214$
      002564                       1419 00179$:
                                   1420 ;	life.c:184: for (y = 0; y < (H * W); y += W)
      002564 78 36            [12] 1421 	mov	r0,#_y
      002566 E4               [12] 1422 	clr	a
      002567 F6               [12] 1423 	mov	@r0,a
      002568 08               [12] 1424 	inc	r0
      002569 F6               [12] 1425 	mov	@r0,a
      00256A                       1426 00218$:
                                   1427 ;	life.c:185: for (x = 0; x < W; x++)
      00256A 78 34            [12] 1428 	mov	r0,#_x
      00256C E4               [12] 1429 	clr	a
      00256D F6               [12] 1430 	mov	@r0,a
      00256E 08               [12] 1431 	inc	r0
      00256F F6               [12] 1432 	mov	@r0,a
      002570                       1433 00216$:
                                   1434 ;	life.c:186: iu[y + x] = rand() & 1;
      002570 78 36            [12] 1435 	mov	r0,#_y
      002572 79 34            [12] 1436 	mov	r1,#_x
      002574 E7               [12] 1437 	mov	a,@r1
      002575 26               [12] 1438 	add	a,@r0
      002576 FE               [12] 1439 	mov	r6,a
      002577 09               [12] 1440 	inc	r1
      002578 E7               [12] 1441 	mov	a,@r1
      002579 08               [12] 1442 	inc	r0
      00257A 36               [12] 1443 	addc	a,@r0
      00257B FF               [12] 1444 	mov	r7,a
      00257C EE               [12] 1445 	mov	a,r6
      00257D 24 00            [12] 1446 	add	a,#_iu
      00257F FE               [12] 1447 	mov	r6,a
      002580 EF               [12] 1448 	mov	a,r7
      002581 34 40            [12] 1449 	addc	a,#(_iu >> 8)
      002583 FF               [12] 1450 	mov	r7,a
      002584 C0 07            [24] 1451 	push	ar7
      002586 C0 06            [24] 1452 	push	ar6
      002588 12 2B B6         [24] 1453 	lcall	_rand
      00258B AC 82            [24] 1454 	mov	r4,dpl
      00258D D0 06            [24] 1455 	pop	ar6
      00258F D0 07            [24] 1456 	pop	ar7
      002591 53 04 01         [24] 1457 	anl	ar4,#0x01
      002594 8E 82            [24] 1458 	mov	dpl,r6
      002596 8F 83            [24] 1459 	mov	dph,r7
      002598 EC               [12] 1460 	mov	a,r4
      002599 F0               [24] 1461 	movx	@dptr,a
                                   1462 ;	life.c:185: for (x = 0; x < W; x++)
      00259A 78 34            [12] 1463 	mov	r0,#_x
      00259C 06               [12] 1464 	inc	@r0
      00259D B6 00 02         [24] 1465 	cjne	@r0,#0x00,00548$
      0025A0 08               [12] 1466 	inc	r0
      0025A1 06               [12] 1467 	inc	@r0
      0025A2                       1468 00548$:
      0025A2 78 34            [12] 1469 	mov	r0,#_x
      0025A4 C3               [12] 1470 	clr	c
      0025A5 E6               [12] 1471 	mov	a,@r0
      0025A6 94 30            [12] 1472 	subb	a,#0x30
      0025A8 08               [12] 1473 	inc	r0
      0025A9 E6               [12] 1474 	mov	a,@r0
      0025AA 64 80            [12] 1475 	xrl	a,#0x80
      0025AC 94 80            [12] 1476 	subb	a,#0x80
      0025AE 40 C0            [24] 1477 	jc	00216$
                                   1478 ;	life.c:184: for (y = 0; y < (H * W); y += W)
      0025B0 78 36            [12] 1479 	mov	r0,#_y
      0025B2 74 30            [12] 1480 	mov	a,#0x30
      0025B4 26               [12] 1481 	add	a,@r0
      0025B5 F6               [12] 1482 	mov	@r0,a
      0025B6 E4               [12] 1483 	clr	a
      0025B7 08               [12] 1484 	inc	r0
      0025B8 36               [12] 1485 	addc	a,@r0
      0025B9 F6               [12] 1486 	mov	@r0,a
      0025BA 78 36            [12] 1487 	mov	r0,#_y
      0025BC C3               [12] 1488 	clr	c
      0025BD 08               [12] 1489 	inc	r0
      0025BE E6               [12] 1490 	mov	a,@r0
      0025BF 64 80            [12] 1491 	xrl	a,#0x80
      0025C1 94 A4            [12] 1492 	subb	a,#0xa4
      0025C3 40 A5            [24] 1493 	jc	00218$
                                   1494 ;	life.c:188: printstr("\r\n");
      0025C5 7D 89            [12] 1495 	mov	r5,#___str_1
      0025C7 7E 2F            [12] 1496 	mov	r6,#(___str_1 >> 8)
      0025C9 7F 80            [12] 1497 	mov	r7,#0x80
                                   1498 ;	life.c:53: return;
      0025CB                       1499 00221$:
                                   1500 ;	life.c:51: for (; *s; s++) putchar(*s);
      0025CB 8D 82            [24] 1501 	mov	dpl,r5
      0025CD 8E 83            [24] 1502 	mov	dph,r6
      0025CF 8F F0            [24] 1503 	mov	b,r7
      0025D1 12 2E 55         [24] 1504 	lcall	__gptrget
      0025D4 FC               [12] 1505 	mov	r4,a
      0025D5 60 10            [24] 1506 	jz	00117$
      0025D7 7B 00            [12] 1507 	mov	r3,#0x00
      0025D9 8C 82            [24] 1508 	mov	dpl,r4
      0025DB 8B 83            [24] 1509 	mov	dph,r3
      0025DD 12 20 B5         [24] 1510 	lcall	_putchar
      0025E0 0D               [12] 1511 	inc	r5
                                   1512 ;	life.c:267: else if (c == (int)'R') loadriu();
      0025E1 BD 00 E7         [24] 1513 	cjne	r5,#0x00,00221$
      0025E4 0E               [12] 1514 	inc	r6
      0025E5 80 E4            [24] 1515 	sjmp	00221$
      0025E7                       1516 00117$:
                                   1517 ;	life.c:268: memcpy(u, iu, sizeof (iu));
      0025E7 E4               [12] 1518 	clr	a
      0025E8 C0 E0            [24] 1519 	push	acc
      0025EA 74 24            [12] 1520 	mov	a,#0x24
      0025EC C0 E0            [24] 1521 	push	acc
      0025EE 74 00            [12] 1522 	mov	a,#_iu
      0025F0 C0 E0            [24] 1523 	push	acc
      0025F2 74 40            [12] 1524 	mov	a,#(_iu >> 8)
      0025F4 C0 E0            [24] 1525 	push	acc
      0025F6 E4               [12] 1526 	clr	a
      0025F7 C0 E0            [24] 1527 	push	acc
      0025F9 90 88 00         [24] 1528 	mov	dptr,#_u
      0025FC 75 F0 00         [24] 1529 	mov	b,#0x00
      0025FF 12 2D 31         [24] 1530 	lcall	___memcpy
      002602 E5 81            [12] 1531 	mov	a,sp
      002604 24 FB            [12] 1532 	add	a,#0xfb
      002606 F5 81            [12] 1533 	mov	sp,a
                                   1534 ;	life.c:269: show(0);
      002608 75 82 00         [24] 1535 	mov	dpl,#0x00
      00260B 12 20 E7         [24] 1536 	lcall	_show
                                   1537 ;	life.c:271: printstr("READY T L R P S\r\n");
      00260E 7D C7            [12] 1538 	mov	r5,#___str_6
      002610 7E 2F            [12] 1539 	mov	r6,#(___str_6 >> 8)
      002612 7F 80            [12] 1540 	mov	r7,#0x80
                                   1541 ;	life.c:53: return;
      002614                       1542 00224$:
                                   1543 ;	life.c:51: for (; *s; s++) putchar(*s);
      002614 8D 82            [24] 1544 	mov	dpl,r5
      002616 8E 83            [24] 1545 	mov	dph,r6
      002618 8F F0            [24] 1546 	mov	b,r7
      00261A 12 2E 55         [24] 1547 	lcall	__gptrget
      00261D FC               [12] 1548 	mov	r4,a
      00261E 60 10            [24] 1549 	jz	00130$
      002620 7B 00            [12] 1550 	mov	r3,#0x00
      002622 8C 82            [24] 1551 	mov	dpl,r4
      002624 8B 83            [24] 1552 	mov	dph,r3
      002626 12 20 B5         [24] 1553 	lcall	_putchar
      002629 0D               [12] 1554 	inc	r5
                                   1555 ;	life.c:272: while (1) {
      00262A BD 00 E7         [24] 1556 	cjne	r5,#0x00,00224$
      00262D 0E               [12] 1557 	inc	r6
      00262E 80 E4            [24] 1558 	sjmp	00224$
      002630                       1559 00130$:
                                   1560 ;	life.c:273: c = toupper(getchar());
      002630 12 20 BA         [24] 1561 	lcall	_getchar
      002633 12 2E 2E         [24] 1562 	lcall	_toupper
      002636 AE 82            [24] 1563 	mov	r6,dpl
      002638 AF 83            [24] 1564 	mov	r7,dph
      00263A 78 3A            [12] 1565 	mov	r0,#_c
      00263C A6 06            [24] 1566 	mov	@r0,ar6
      00263E 08               [12] 1567 	inc	r0
      00263F A6 07            [24] 1568 	mov	@r0,ar7
                                   1569 ;	life.c:274: if (i0 || (c == (int)'T')) goto terminate;
      002641 78 31            [12] 1570 	mov	r0,#_i0
      002643 E6               [12] 1571 	mov	a,@r0
      002644 60 03            [24] 1572 	jz	00555$
      002646 02 2B 86         [24] 1573 	ljmp	00142$
      002649                       1574 00555$:
      002649 BE 54 06         [24] 1575 	cjne	r6,#0x54,00556$
      00264C BF 00 03         [24] 1576 	cjne	r7,#0x00,00556$
      00264F 02 2B 86         [24] 1577 	ljmp	00142$
      002652                       1578 00556$:
                                   1579 ;	life.c:275: else if ((c == (int)'L') || (c == (int)'R') || (c == (int)'P')) goto reload;
      002652 BE 4C 06         [24] 1580 	cjne	r6,#0x4c,00557$
      002655 BF 00 03         [24] 1581 	cjne	r7,#0x00,00557$
      002658 02 23 64         [24] 1582 	ljmp	00112$
      00265B                       1583 00557$:
      00265B BE 52 06         [24] 1584 	cjne	r6,#0x52,00558$
      00265E BF 00 03         [24] 1585 	cjne	r7,#0x00,00558$
      002661 02 23 64         [24] 1586 	ljmp	00112$
      002664                       1587 00558$:
      002664 BE 50 06         [24] 1588 	cjne	r6,#0x50,00559$
      002667 BF 00 03         [24] 1589 	cjne	r7,#0x00,00559$
      00266A 02 23 64         [24] 1590 	ljmp	00112$
      00266D                       1591 00559$:
                                   1592 ;	life.c:276: else if (c == (int)'S') break;
      00266D BE 53 C0         [24] 1593 	cjne	r6,#0x53,00130$
      002670 BF 00 BD         [24] 1594 	cjne	r7,#0x00,00130$
                                   1595 ;	life.c:96: generation[0] = 0;
      002673 78 43            [12] 1596 	mov	r0,#_generation
      002675 76 00            [12] 1597 	mov	@r0,#0x00
      002677 08               [12] 1598 	inc	r0
      002678 76 00            [12] 1599 	mov	@r0,#0x00
                                   1600 ;	life.c:97: generation[1] = 0;
      00267A 78 45            [12] 1601 	mov	r0,#(_generation + 0x0002)
      00267C 76 00            [12] 1602 	mov	@r0,#0x00
      00267E 08               [12] 1603 	inc	r0
      00267F 76 00            [12] 1604 	mov	@r0,#0x00
                                   1605 ;	life.c:281: for (i1 = 0; !i0 && !i1; ) {
      002681 78 32            [12] 1606 	mov	r0,#_i1
      002683 76 00            [12] 1607 	mov	@r0,#0x00
      002685                       1608 00241$:
      002685 78 31            [12] 1609 	mov	r0,#_i0
      002687 E6               [12] 1610 	mov	a,@r0
      002688 60 03            [24] 1611 	jz	00562$
      00268A 02 2B 54         [24] 1612 	ljmp	00138$
      00268D                       1613 00562$:
      00268D 78 32            [12] 1614 	mov	r0,#_i1
      00268F E6               [12] 1615 	mov	a,@r0
      002690 60 03            [24] 1616 	jz	00563$
      002692 02 2B 54         [24] 1617 	ljmp	00138$
      002695                       1618 00563$:
                                   1619 ;	life.c:282: show(1);
      002695 75 82 01         [24] 1620 	mov	dpl,#0x01
      002698 12 20 E7         [24] 1621 	lcall	_show
                                   1622 ;	life.c:194: fixed = 0;
      00269B 78 3D            [12] 1623 	mov	r0,#_fixed
      00269D 76 00            [12] 1624 	mov	@r0,#0x00
                                   1625 ;	life.c:195: cycle2 = 0;
      00269F 78 3E            [12] 1626 	mov	r0,#_cycle2
      0026A1 76 00            [12] 1627 	mov	@r0,#0x00
                                   1628 ;	life.c:197: OE76 = OE76_0;
      0026A3 78 33            [12] 1629 	mov	r0,#_OE76
      0026A5 76 3F            [12] 1630 	mov	@r0,#0x3f
                                   1631 ;	life.c:198: flashOE();
      0026A7 12 20 DB         [24] 1632 	lcall	_flashOE
                                   1633 ;	life.c:200: for (y = 0; y < H; y++) {
      0026AA 78 36            [12] 1634 	mov	r0,#_y
      0026AC E4               [12] 1635 	clr	a
      0026AD F6               [12] 1636 	mov	@r0,a
      0026AE 08               [12] 1637 	inc	r0
      0026AF F6               [12] 1638 	mov	@r0,a
      0026B0                       1639 00228$:
                                   1640 ;	life.c:201: OE76 = OE76_0 | ((y & 0x0003u) << 6);
      0026B0 78 36            [12] 1641 	mov	r0,#_y
      0026B2 86 07            [24] 1642 	mov	ar7,@r0
      0026B4 53 07 03         [24] 1643 	anl	ar7,#0x03
      0026B7 EF               [12] 1644 	mov	a,r7
      0026B8 03               [12] 1645 	rr	a
      0026B9 03               [12] 1646 	rr	a
      0026BA 54 C0            [12] 1647 	anl	a,#0xc0
      0026BC FF               [12] 1648 	mov	r7,a
      0026BD 78 33            [12] 1649 	mov	r0,#_OE76
      0026BF 74 3F            [12] 1650 	mov	a,#0x3f
      0026C1 4F               [12] 1651 	orl	a,r7
      0026C2 F6               [12] 1652 	mov	@r0,a
                                   1653 ;	life.c:202: flashOE();
      0026C3 12 20 DB         [24] 1654 	lcall	_flashOE
                                   1655 ;	life.c:203: for (x = 0; x < W; x++) {
      0026C6 78 34            [12] 1656 	mov	r0,#_x
      0026C8 E4               [12] 1657 	clr	a
      0026C9 F6               [12] 1658 	mov	@r0,a
      0026CA 08               [12] 1659 	inc	r0
      0026CB F6               [12] 1660 	mov	@r0,a
      0026CC                       1661 00226$:
                                   1662 ;	life.c:204: n = -u[A2D(W, y, x)];
      0026CC 78 36            [12] 1663 	mov	r0,#_y
      0026CE E6               [12] 1664 	mov	a,@r0
      0026CF C0 E0            [24] 1665 	push	acc
      0026D1 08               [12] 1666 	inc	r0
      0026D2 E6               [12] 1667 	mov	a,@r0
      0026D3 C0 E0            [24] 1668 	push	acc
      0026D5 90 00 30         [24] 1669 	mov	dptr,#0x0030
      0026D8 12 2C 93         [24] 1670 	lcall	__mulint
      0026DB C8               [12] 1671 	xch	a,r0
      0026DC E5 10            [12] 1672 	mov	a,_bp
      0026DE 24 04            [12] 1673 	add	a,#0x04
      0026E0 C8               [12] 1674 	xch	a,r0
      0026E1 A6 82            [24] 1675 	mov	@r0,dpl
      0026E3 08               [12] 1676 	inc	r0
      0026E4 A6 83            [24] 1677 	mov	@r0,dph
      0026E6 15 81            [12] 1678 	dec	sp
      0026E8 15 81            [12] 1679 	dec	sp
      0026EA E5 10            [12] 1680 	mov	a,_bp
      0026EC 24 04            [12] 1681 	add	a,#0x04
      0026EE F8               [12] 1682 	mov	r0,a
      0026EF 79 34            [12] 1683 	mov	r1,#_x
      0026F1 E7               [12] 1684 	mov	a,@r1
      0026F2 26               [12] 1685 	add	a,@r0
      0026F3 C0 E0            [24] 1686 	push	acc
      0026F5 09               [12] 1687 	inc	r1
      0026F6 E7               [12] 1688 	mov	a,@r1
      0026F7 08               [12] 1689 	inc	r0
      0026F8 36               [12] 1690 	addc	a,@r0
      0026F9 C0 E0            [24] 1691 	push	acc
      0026FB E5 10            [12] 1692 	mov	a,_bp
      0026FD 24 03            [12] 1693 	add	a,#0x03
      0026FF F8               [12] 1694 	mov	r0,a
      002700 D0 E0            [24] 1695 	pop	acc
      002702 F6               [12] 1696 	mov	@r0,a
      002703 18               [12] 1697 	dec	r0
      002704 D0 E0            [24] 1698 	pop	acc
      002706 F6               [12] 1699 	mov	@r0,a
      002707 A8 10            [24] 1700 	mov	r0,_bp
      002709 08               [12] 1701 	inc	r0
      00270A 08               [12] 1702 	inc	r0
      00270B E6               [12] 1703 	mov	a,@r0
      00270C 24 00            [12] 1704 	add	a,#_u
      00270E F5 82            [12] 1705 	mov	dpl,a
      002710 08               [12] 1706 	inc	r0
      002711 E6               [12] 1707 	mov	a,@r0
      002712 34 88            [12] 1708 	addc	a,#(_u >> 8)
      002714 F5 83            [12] 1709 	mov	dph,a
      002716 E0               [24] 1710 	movx	a,@dptr
      002717 FB               [12] 1711 	mov	r3,a
      002718 A8 10            [24] 1712 	mov	r0,_bp
      00271A 08               [12] 1713 	inc	r0
      00271B C3               [12] 1714 	clr	c
      00271C E4               [12] 1715 	clr	a
      00271D 9B               [12] 1716 	subb	a,r3
      00271E F6               [12] 1717 	mov	@r0,a
                                   1718 ;	life.c:207: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      00271F 78 36            [12] 1719 	mov	r0,#_y
      002721 74 FF            [12] 1720 	mov	a,#0xff
      002723 26               [12] 1721 	add	a,@r0
      002724 FA               [12] 1722 	mov	r2,a
      002725 74 FF            [12] 1723 	mov	a,#0xff
      002727 08               [12] 1724 	inc	r0
      002728 36               [12] 1725 	addc	a,@r0
      002729 FB               [12] 1726 	mov	r3,a
      00272A 74 C0            [12] 1727 	mov	a,#0xc0
      00272C 2A               [12] 1728 	add	a,r2
      00272D FA               [12] 1729 	mov	r2,a
      00272E E4               [12] 1730 	clr	a
      00272F 3B               [12] 1731 	addc	a,r3
      002730 FB               [12] 1732 	mov	r3,a
      002731 74 C0            [12] 1733 	mov	a,#0xc0
      002733 C0 E0            [24] 1734 	push	acc
      002735 E4               [12] 1735 	clr	a
      002736 C0 E0            [24] 1736 	push	acc
      002738 8A 82            [24] 1737 	mov	dpl,r2
      00273A 8B 83            [24] 1738 	mov	dph,r3
      00273C 12 2E 71         [24] 1739 	lcall	__modsint
      00273F AA 82            [24] 1740 	mov	r2,dpl
      002741 AB 83            [24] 1741 	mov	r3,dph
      002743 15 81            [12] 1742 	dec	sp
      002745 15 81            [12] 1743 	dec	sp
      002747 C0 02            [24] 1744 	push	ar2
      002749 C0 03            [24] 1745 	push	ar3
      00274B 90 00 30         [24] 1746 	mov	dptr,#0x0030
      00274E 12 2C 93         [24] 1747 	lcall	__mulint
      002751 AA 82            [24] 1748 	mov	r2,dpl
      002753 AB 83            [24] 1749 	mov	r3,dph
      002755 15 81            [12] 1750 	dec	sp
      002757 15 81            [12] 1751 	dec	sp
      002759 78 34            [12] 1752 	mov	r0,#_x
      00275B 74 FF            [12] 1753 	mov	a,#0xff
      00275D 26               [12] 1754 	add	a,@r0
      00275E FC               [12] 1755 	mov	r4,a
      00275F 74 FF            [12] 1756 	mov	a,#0xff
      002761 08               [12] 1757 	inc	r0
      002762 36               [12] 1758 	addc	a,@r0
      002763 FD               [12] 1759 	mov	r5,a
      002764 74 30            [12] 1760 	mov	a,#0x30
      002766 2C               [12] 1761 	add	a,r4
      002767 FC               [12] 1762 	mov	r4,a
      002768 E4               [12] 1763 	clr	a
      002769 3D               [12] 1764 	addc	a,r5
      00276A FD               [12] 1765 	mov	r5,a
      00276B C0 03            [24] 1766 	push	ar3
      00276D C0 02            [24] 1767 	push	ar2
      00276F 74 30            [12] 1768 	mov	a,#0x30
      002771 C0 E0            [24] 1769 	push	acc
      002773 E4               [12] 1770 	clr	a
      002774 C0 E0            [24] 1771 	push	acc
      002776 8C 82            [24] 1772 	mov	dpl,r4
      002778 8D 83            [24] 1773 	mov	dph,r5
      00277A 12 2E 71         [24] 1774 	lcall	__modsint
      00277D AC 82            [24] 1775 	mov	r4,dpl
      00277F AD 83            [24] 1776 	mov	r5,dph
      002781 15 81            [12] 1777 	dec	sp
      002783 15 81            [12] 1778 	dec	sp
      002785 D0 02            [24] 1779 	pop	ar2
      002787 D0 03            [24] 1780 	pop	ar3
      002789 EC               [12] 1781 	mov	a,r4
      00278A 2A               [12] 1782 	add	a,r2
      00278B FE               [12] 1783 	mov	r6,a
      00278C ED               [12] 1784 	mov	a,r5
      00278D 3B               [12] 1785 	addc	a,r3
      00278E FF               [12] 1786 	mov	r7,a
      00278F EE               [12] 1787 	mov	a,r6
      002790 24 00            [12] 1788 	add	a,#_u
      002792 F5 82            [12] 1789 	mov	dpl,a
      002794 EF               [12] 1790 	mov	a,r7
      002795 34 88            [12] 1791 	addc	a,#(_u >> 8)
      002797 F5 83            [12] 1792 	mov	dph,a
      002799 E0               [24] 1793 	movx	a,@dptr
      00279A FF               [12] 1794 	mov	r7,a
      00279B A8 10            [24] 1795 	mov	r0,_bp
      00279D 08               [12] 1796 	inc	r0
      00279E EF               [12] 1797 	mov	a,r7
      00279F 26               [12] 1798 	add	a,@r0
      0027A0 F6               [12] 1799 	mov	@r0,a
                                   1800 ;	life.c:209: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      0027A1 78 34            [12] 1801 	mov	r0,#_x
      0027A3 E5 10            [12] 1802 	mov	a,_bp
      0027A5 24 06            [12] 1803 	add	a,#0x06
      0027A7 F9               [12] 1804 	mov	r1,a
      0027A8 E6               [12] 1805 	mov	a,@r0
      0027A9 F7               [12] 1806 	mov	@r1,a
      0027AA 08               [12] 1807 	inc	r0
      0027AB 09               [12] 1808 	inc	r1
      0027AC E6               [12] 1809 	mov	a,@r0
      0027AD F7               [12] 1810 	mov	@r1,a
      0027AE E5 10            [12] 1811 	mov	a,_bp
      0027B0 24 06            [12] 1812 	add	a,#0x06
      0027B2 F8               [12] 1813 	mov	r0,a
      0027B3 74 30            [12] 1814 	mov	a,#0x30
      0027B5 26               [12] 1815 	add	a,@r0
      0027B6 FE               [12] 1816 	mov	r6,a
      0027B7 E4               [12] 1817 	clr	a
      0027B8 08               [12] 1818 	inc	r0
      0027B9 36               [12] 1819 	addc	a,@r0
      0027BA FF               [12] 1820 	mov	r7,a
      0027BB C0 05            [24] 1821 	push	ar5
      0027BD C0 04            [24] 1822 	push	ar4
      0027BF C0 03            [24] 1823 	push	ar3
      0027C1 C0 02            [24] 1824 	push	ar2
      0027C3 74 30            [12] 1825 	mov	a,#0x30
      0027C5 C0 E0            [24] 1826 	push	acc
      0027C7 E4               [12] 1827 	clr	a
      0027C8 C0 E0            [24] 1828 	push	acc
      0027CA 8E 82            [24] 1829 	mov	dpl,r6
      0027CC 8F 83            [24] 1830 	mov	dph,r7
      0027CE 12 2E 71         [24] 1831 	lcall	__modsint
      0027D1 C8               [12] 1832 	xch	a,r0
      0027D2 E5 10            [12] 1833 	mov	a,_bp
      0027D4 24 08            [12] 1834 	add	a,#0x08
      0027D6 C8               [12] 1835 	xch	a,r0
      0027D7 A6 82            [24] 1836 	mov	@r0,dpl
      0027D9 08               [12] 1837 	inc	r0
      0027DA A6 83            [24] 1838 	mov	@r0,dph
      0027DC 15 81            [12] 1839 	dec	sp
      0027DE 15 81            [12] 1840 	dec	sp
      0027E0 D0 02            [24] 1841 	pop	ar2
      0027E2 D0 03            [24] 1842 	pop	ar3
      0027E4 E5 10            [12] 1843 	mov	a,_bp
      0027E6 24 08            [12] 1844 	add	a,#0x08
      0027E8 F8               [12] 1845 	mov	r0,a
      0027E9 E6               [12] 1846 	mov	a,@r0
      0027EA 2A               [12] 1847 	add	a,r2
      0027EB FE               [12] 1848 	mov	r6,a
      0027EC 08               [12] 1849 	inc	r0
      0027ED E6               [12] 1850 	mov	a,@r0
      0027EE 3B               [12] 1851 	addc	a,r3
      0027EF FF               [12] 1852 	mov	r7,a
      0027F0 EE               [12] 1853 	mov	a,r6
      0027F1 24 00            [12] 1854 	add	a,#_u
      0027F3 F5 82            [12] 1855 	mov	dpl,a
      0027F5 EF               [12] 1856 	mov	a,r7
      0027F6 34 88            [12] 1857 	addc	a,#(_u >> 8)
      0027F8 F5 83            [12] 1858 	mov	dph,a
      0027FA E0               [24] 1859 	movx	a,@dptr
      0027FB FF               [12] 1860 	mov	r7,a
      0027FC A8 10            [24] 1861 	mov	r0,_bp
      0027FE 08               [12] 1862 	inc	r0
      0027FF EF               [12] 1863 	mov	a,r7
      002800 26               [12] 1864 	add	a,@r0
      002801 F6               [12] 1865 	mov	@r0,a
                                   1866 ;	life.c:211: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      002802 E5 10            [12] 1867 	mov	a,_bp
      002804 24 06            [12] 1868 	add	a,#0x06
      002806 F8               [12] 1869 	mov	r0,a
      002807 74 31            [12] 1870 	mov	a,#0x31
      002809 26               [12] 1871 	add	a,@r0
      00280A FE               [12] 1872 	mov	r6,a
      00280B E4               [12] 1873 	clr	a
      00280C 08               [12] 1874 	inc	r0
      00280D 36               [12] 1875 	addc	a,@r0
      00280E FF               [12] 1876 	mov	r7,a
      00280F C0 03            [24] 1877 	push	ar3
      002811 C0 02            [24] 1878 	push	ar2
      002813 74 30            [12] 1879 	mov	a,#0x30
      002815 C0 E0            [24] 1880 	push	acc
      002817 E4               [12] 1881 	clr	a
      002818 C0 E0            [24] 1882 	push	acc
      00281A 8E 82            [24] 1883 	mov	dpl,r6
      00281C 8F 83            [24] 1884 	mov	dph,r7
      00281E 12 2E 71         [24] 1885 	lcall	__modsint
      002821 AE 82            [24] 1886 	mov	r6,dpl
      002823 AF 83            [24] 1887 	mov	r7,dph
      002825 15 81            [12] 1888 	dec	sp
      002827 15 81            [12] 1889 	dec	sp
      002829 D0 02            [24] 1890 	pop	ar2
      00282B D0 03            [24] 1891 	pop	ar3
      00282D D0 04            [24] 1892 	pop	ar4
      00282F D0 05            [24] 1893 	pop	ar5
      002831 EE               [12] 1894 	mov	a,r6
      002832 2A               [12] 1895 	add	a,r2
      002833 FA               [12] 1896 	mov	r2,a
      002834 EF               [12] 1897 	mov	a,r7
      002835 3B               [12] 1898 	addc	a,r3
      002836 FB               [12] 1899 	mov	r3,a
      002837 EA               [12] 1900 	mov	a,r2
      002838 24 00            [12] 1901 	add	a,#_u
      00283A F5 82            [12] 1902 	mov	dpl,a
      00283C EB               [12] 1903 	mov	a,r3
      00283D 34 88            [12] 1904 	addc	a,#(_u >> 8)
      00283F F5 83            [12] 1905 	mov	dph,a
      002841 E0               [24] 1906 	movx	a,@dptr
      002842 FB               [12] 1907 	mov	r3,a
      002843 A8 10            [24] 1908 	mov	r0,_bp
      002845 08               [12] 1909 	inc	r0
      002846 EB               [12] 1910 	mov	a,r3
      002847 26               [12] 1911 	add	a,@r0
      002848 F6               [12] 1912 	mov	@r0,a
                                   1913 ;	life.c:213: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      002849 78 36            [12] 1914 	mov	r0,#_y
      00284B E5 10            [12] 1915 	mov	a,_bp
      00284D 24 0A            [12] 1916 	add	a,#0x0a
      00284F F9               [12] 1917 	mov	r1,a
      002850 E6               [12] 1918 	mov	a,@r0
      002851 F7               [12] 1919 	mov	@r1,a
      002852 08               [12] 1920 	inc	r0
      002853 09               [12] 1921 	inc	r1
      002854 E6               [12] 1922 	mov	a,@r0
      002855 F7               [12] 1923 	mov	@r1,a
      002856 E5 10            [12] 1924 	mov	a,_bp
      002858 24 0A            [12] 1925 	add	a,#0x0a
      00285A F8               [12] 1926 	mov	r0,a
      00285B 74 C0            [12] 1927 	mov	a,#0xc0
      00285D 26               [12] 1928 	add	a,@r0
      00285E FA               [12] 1929 	mov	r2,a
      00285F E4               [12] 1930 	clr	a
      002860 08               [12] 1931 	inc	r0
      002861 36               [12] 1932 	addc	a,@r0
      002862 FB               [12] 1933 	mov	r3,a
      002863 C0 07            [24] 1934 	push	ar7
      002865 C0 06            [24] 1935 	push	ar6
      002867 C0 05            [24] 1936 	push	ar5
      002869 C0 04            [24] 1937 	push	ar4
      00286B 74 C0            [12] 1938 	mov	a,#0xc0
      00286D C0 E0            [24] 1939 	push	acc
      00286F E4               [12] 1940 	clr	a
      002870 C0 E0            [24] 1941 	push	acc
      002872 8A 82            [24] 1942 	mov	dpl,r2
      002874 8B 83            [24] 1943 	mov	dph,r3
      002876 12 2E 71         [24] 1944 	lcall	__modsint
      002879 AA 82            [24] 1945 	mov	r2,dpl
      00287B AB 83            [24] 1946 	mov	r3,dph
      00287D 15 81            [12] 1947 	dec	sp
      00287F 15 81            [12] 1948 	dec	sp
      002881 C0 02            [24] 1949 	push	ar2
      002883 C0 03            [24] 1950 	push	ar3
      002885 90 00 30         [24] 1951 	mov	dptr,#0x0030
      002888 12 2C 93         [24] 1952 	lcall	__mulint
      00288B C8               [12] 1953 	xch	a,r0
      00288C E5 10            [12] 1954 	mov	a,_bp
      00288E 24 0C            [12] 1955 	add	a,#0x0c
      002890 C8               [12] 1956 	xch	a,r0
      002891 A6 82            [24] 1957 	mov	@r0,dpl
      002893 08               [12] 1958 	inc	r0
      002894 A6 83            [24] 1959 	mov	@r0,dph
      002896 15 81            [12] 1960 	dec	sp
      002898 15 81            [12] 1961 	dec	sp
      00289A D0 04            [24] 1962 	pop	ar4
      00289C D0 05            [24] 1963 	pop	ar5
      00289E D0 06            [24] 1964 	pop	ar6
      0028A0 D0 07            [24] 1965 	pop	ar7
      0028A2 E5 10            [12] 1966 	mov	a,_bp
      0028A4 24 0C            [12] 1967 	add	a,#0x0c
      0028A6 F8               [12] 1968 	mov	r0,a
      0028A7 EC               [12] 1969 	mov	a,r4
      0028A8 26               [12] 1970 	add	a,@r0
      0028A9 FA               [12] 1971 	mov	r2,a
      0028AA ED               [12] 1972 	mov	a,r5
      0028AB 08               [12] 1973 	inc	r0
      0028AC 36               [12] 1974 	addc	a,@r0
      0028AD FB               [12] 1975 	mov	r3,a
      0028AE EA               [12] 1976 	mov	a,r2
      0028AF 24 00            [12] 1977 	add	a,#_u
      0028B1 F5 82            [12] 1978 	mov	dpl,a
      0028B3 EB               [12] 1979 	mov	a,r3
      0028B4 34 88            [12] 1980 	addc	a,#(_u >> 8)
      0028B6 F5 83            [12] 1981 	mov	dph,a
      0028B8 E0               [24] 1982 	movx	a,@dptr
      0028B9 FB               [12] 1983 	mov	r3,a
      0028BA A8 10            [24] 1984 	mov	r0,_bp
      0028BC 08               [12] 1985 	inc	r0
      0028BD EB               [12] 1986 	mov	a,r3
      0028BE 26               [12] 1987 	add	a,@r0
      0028BF F6               [12] 1988 	mov	@r0,a
                                   1989 ;	life.c:215: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      0028C0 E5 10            [12] 1990 	mov	a,_bp
      0028C2 24 0C            [12] 1991 	add	a,#0x0c
      0028C4 F8               [12] 1992 	mov	r0,a
      0028C5 E5 10            [12] 1993 	mov	a,_bp
      0028C7 24 08            [12] 1994 	add	a,#0x08
      0028C9 F9               [12] 1995 	mov	r1,a
      0028CA E7               [12] 1996 	mov	a,@r1
      0028CB 26               [12] 1997 	add	a,@r0
      0028CC FA               [12] 1998 	mov	r2,a
      0028CD 09               [12] 1999 	inc	r1
      0028CE E7               [12] 2000 	mov	a,@r1
      0028CF 08               [12] 2001 	inc	r0
      0028D0 36               [12] 2002 	addc	a,@r0
      0028D1 FB               [12] 2003 	mov	r3,a
      0028D2 EA               [12] 2004 	mov	a,r2
      0028D3 24 00            [12] 2005 	add	a,#_u
      0028D5 F5 82            [12] 2006 	mov	dpl,a
      0028D7 EB               [12] 2007 	mov	a,r3
      0028D8 34 88            [12] 2008 	addc	a,#(_u >> 8)
      0028DA F5 83            [12] 2009 	mov	dph,a
      0028DC E0               [24] 2010 	movx	a,@dptr
      0028DD FB               [12] 2011 	mov	r3,a
      0028DE A8 10            [24] 2012 	mov	r0,_bp
      0028E0 08               [12] 2013 	inc	r0
      0028E1 EB               [12] 2014 	mov	a,r3
      0028E2 26               [12] 2015 	add	a,@r0
      0028E3 F6               [12] 2016 	mov	@r0,a
                                   2017 ;	life.c:217: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      0028E4 E5 10            [12] 2018 	mov	a,_bp
      0028E6 24 0C            [12] 2019 	add	a,#0x0c
      0028E8 F8               [12] 2020 	mov	r0,a
      0028E9 EE               [12] 2021 	mov	a,r6
      0028EA 26               [12] 2022 	add	a,@r0
      0028EB FA               [12] 2023 	mov	r2,a
      0028EC EF               [12] 2024 	mov	a,r7
      0028ED 08               [12] 2025 	inc	r0
      0028EE 36               [12] 2026 	addc	a,@r0
      0028EF FB               [12] 2027 	mov	r3,a
      0028F0 EA               [12] 2028 	mov	a,r2
      0028F1 24 00            [12] 2029 	add	a,#_u
      0028F3 F5 82            [12] 2030 	mov	dpl,a
      0028F5 EB               [12] 2031 	mov	a,r3
      0028F6 34 88            [12] 2032 	addc	a,#(_u >> 8)
      0028F8 F5 83            [12] 2033 	mov	dph,a
      0028FA E0               [24] 2034 	movx	a,@dptr
      0028FB FB               [12] 2035 	mov	r3,a
      0028FC A8 10            [24] 2036 	mov	r0,_bp
      0028FE 08               [12] 2037 	inc	r0
      0028FF E5 10            [12] 2038 	mov	a,_bp
      002901 24 0C            [12] 2039 	add	a,#0x0c
      002903 F9               [12] 2040 	mov	r1,a
      002904 EB               [12] 2041 	mov	a,r3
      002905 26               [12] 2042 	add	a,@r0
      002906 F7               [12] 2043 	mov	@r1,a
                                   2044 ;	life.c:219: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      002907 E5 10            [12] 2045 	mov	a,_bp
      002909 24 0A            [12] 2046 	add	a,#0x0a
      00290B F8               [12] 2047 	mov	r0,a
      00290C 74 C1            [12] 2048 	mov	a,#0xc1
      00290E 26               [12] 2049 	add	a,@r0
      00290F FA               [12] 2050 	mov	r2,a
      002910 E4               [12] 2051 	clr	a
      002911 08               [12] 2052 	inc	r0
      002912 36               [12] 2053 	addc	a,@r0
      002913 FB               [12] 2054 	mov	r3,a
      002914 C0 07            [24] 2055 	push	ar7
      002916 C0 06            [24] 2056 	push	ar6
      002918 C0 05            [24] 2057 	push	ar5
      00291A C0 04            [24] 2058 	push	ar4
      00291C 74 C0            [12] 2059 	mov	a,#0xc0
      00291E C0 E0            [24] 2060 	push	acc
      002920 E4               [12] 2061 	clr	a
      002921 C0 E0            [24] 2062 	push	acc
      002923 8A 82            [24] 2063 	mov	dpl,r2
      002925 8B 83            [24] 2064 	mov	dph,r3
      002927 12 2E 71         [24] 2065 	lcall	__modsint
      00292A AA 82            [24] 2066 	mov	r2,dpl
      00292C AB 83            [24] 2067 	mov	r3,dph
      00292E 15 81            [12] 2068 	dec	sp
      002930 15 81            [12] 2069 	dec	sp
      002932 C0 02            [24] 2070 	push	ar2
      002934 C0 03            [24] 2071 	push	ar3
      002936 90 00 30         [24] 2072 	mov	dptr,#0x0030
      002939 12 2C 93         [24] 2073 	lcall	__mulint
      00293C AA 82            [24] 2074 	mov	r2,dpl
      00293E AB 83            [24] 2075 	mov	r3,dph
      002940 15 81            [12] 2076 	dec	sp
      002942 15 81            [12] 2077 	dec	sp
      002944 D0 04            [24] 2078 	pop	ar4
      002946 D0 05            [24] 2079 	pop	ar5
      002948 D0 06            [24] 2080 	pop	ar6
      00294A D0 07            [24] 2081 	pop	ar7
      00294C EC               [12] 2082 	mov	a,r4
      00294D 2A               [12] 2083 	add	a,r2
      00294E FC               [12] 2084 	mov	r4,a
      00294F ED               [12] 2085 	mov	a,r5
      002950 3B               [12] 2086 	addc	a,r3
      002951 FD               [12] 2087 	mov	r5,a
      002952 EC               [12] 2088 	mov	a,r4
      002953 24 00            [12] 2089 	add	a,#_u
      002955 F5 82            [12] 2090 	mov	dpl,a
      002957 ED               [12] 2091 	mov	a,r5
      002958 34 88            [12] 2092 	addc	a,#(_u >> 8)
      00295A F5 83            [12] 2093 	mov	dph,a
      00295C E0               [24] 2094 	movx	a,@dptr
      00295D FD               [12] 2095 	mov	r5,a
      00295E E5 10            [12] 2096 	mov	a,_bp
      002960 24 0C            [12] 2097 	add	a,#0x0c
      002962 F8               [12] 2098 	mov	r0,a
      002963 E5 10            [12] 2099 	mov	a,_bp
      002965 24 0C            [12] 2100 	add	a,#0x0c
      002967 F9               [12] 2101 	mov	r1,a
      002968 ED               [12] 2102 	mov	a,r5
      002969 26               [12] 2103 	add	a,@r0
      00296A F7               [12] 2104 	mov	@r1,a
                                   2105 ;	life.c:221: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      00296B E5 10            [12] 2106 	mov	a,_bp
      00296D 24 08            [12] 2107 	add	a,#0x08
      00296F F8               [12] 2108 	mov	r0,a
      002970 E6               [12] 2109 	mov	a,@r0
      002971 2A               [12] 2110 	add	a,r2
      002972 FC               [12] 2111 	mov	r4,a
      002973 08               [12] 2112 	inc	r0
      002974 E6               [12] 2113 	mov	a,@r0
      002975 3B               [12] 2114 	addc	a,r3
      002976 FD               [12] 2115 	mov	r5,a
      002977 EC               [12] 2116 	mov	a,r4
      002978 24 00            [12] 2117 	add	a,#_u
      00297A F5 82            [12] 2118 	mov	dpl,a
      00297C ED               [12] 2119 	mov	a,r5
      00297D 34 88            [12] 2120 	addc	a,#(_u >> 8)
      00297F F5 83            [12] 2121 	mov	dph,a
      002981 E0               [24] 2122 	movx	a,@dptr
      002982 FD               [12] 2123 	mov	r5,a
      002983 E5 10            [12] 2124 	mov	a,_bp
      002985 24 0C            [12] 2125 	add	a,#0x0c
      002987 F8               [12] 2126 	mov	r0,a
      002988 ED               [12] 2127 	mov	a,r5
      002989 26               [12] 2128 	add	a,@r0
      00298A FD               [12] 2129 	mov	r5,a
                                   2130 ;	life.c:222: y1 = 1; x1 = 1;
      00298B 78 41            [12] 2131 	mov	r0,#_y1
      00298D 76 01            [12] 2132 	mov	@r0,#0x01
      00298F 08               [12] 2133 	inc	r0
      002990 76 00            [12] 2134 	mov	@r0,#0x00
      002992 78 3F            [12] 2135 	mov	r0,#_x1
      002994 76 01            [12] 2136 	mov	@r0,#0x01
      002996 08               [12] 2137 	inc	r0
      002997 76 00            [12] 2138 	mov	@r0,#0x00
                                   2139 ;	life.c:223: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      002999 EE               [12] 2140 	mov	a,r6
      00299A 2A               [12] 2141 	add	a,r2
      00299B FE               [12] 2142 	mov	r6,a
      00299C EF               [12] 2143 	mov	a,r7
      00299D 3B               [12] 2144 	addc	a,r3
      00299E FF               [12] 2145 	mov	r7,a
      00299F EE               [12] 2146 	mov	a,r6
      0029A0 24 00            [12] 2147 	add	a,#_u
      0029A2 F5 82            [12] 2148 	mov	dpl,a
      0029A4 EF               [12] 2149 	mov	a,r7
      0029A5 34 88            [12] 2150 	addc	a,#(_u >> 8)
      0029A7 F5 83            [12] 2151 	mov	dph,a
      0029A9 E0               [24] 2152 	movx	a,@dptr
      0029AA 2D               [12] 2153 	add	a,r5
      0029AB FF               [12] 2154 	mov	r7,a
      0029AC 78 3C            [12] 2155 	mov	r0,#_n
      0029AE A6 07            [24] 2156 	mov	@r0,ar7
                                   2157 ;	life.c:225: nu[A2D(W, y, x)] = (n == 3) || ((n == 2) && u[A2D(W, y, x)]);
      0029B0 A8 10            [24] 2158 	mov	r0,_bp
      0029B2 08               [12] 2159 	inc	r0
      0029B3 08               [12] 2160 	inc	r0
      0029B4 E6               [12] 2161 	mov	a,@r0
      0029B5 24 00            [12] 2162 	add	a,#_nu
      0029B7 FD               [12] 2163 	mov	r5,a
      0029B8 08               [12] 2164 	inc	r0
      0029B9 E6               [12] 2165 	mov	a,@r0
      0029BA 34 AC            [12] 2166 	addc	a,#(_nu >> 8)
      0029BC FE               [12] 2167 	mov	r6,a
      0029BD BF 03 02         [24] 2168 	cjne	r7,#0x03,00564$
      0029C0 80 28            [24] 2169 	sjmp	00254$
      0029C2                       2170 00564$:
      0029C2 BF 02 21         [24] 2171 	cjne	r7,#0x02,00253$
      0029C5 E5 10            [12] 2172 	mov	a,_bp
      0029C7 24 04            [12] 2173 	add	a,#0x04
      0029C9 F8               [12] 2174 	mov	r0,a
      0029CA E5 10            [12] 2175 	mov	a,_bp
      0029CC 24 06            [12] 2176 	add	a,#0x06
      0029CE F9               [12] 2177 	mov	r1,a
      0029CF E7               [12] 2178 	mov	a,@r1
      0029D0 26               [12] 2179 	add	a,@r0
      0029D1 FC               [12] 2180 	mov	r4,a
      0029D2 09               [12] 2181 	inc	r1
      0029D3 E7               [12] 2182 	mov	a,@r1
      0029D4 08               [12] 2183 	inc	r0
      0029D5 36               [12] 2184 	addc	a,@r0
      0029D6 FF               [12] 2185 	mov	r7,a
      0029D7 EC               [12] 2186 	mov	a,r4
      0029D8 24 00            [12] 2187 	add	a,#_u
      0029DA FC               [12] 2188 	mov	r4,a
      0029DB EF               [12] 2189 	mov	a,r7
      0029DC 34 88            [12] 2190 	addc	a,#(_u >> 8)
      0029DE FF               [12] 2191 	mov	r7,a
      0029DF 8C 82            [24] 2192 	mov	dpl,r4
      0029E1 8F 83            [24] 2193 	mov	dph,r7
      0029E3 E0               [24] 2194 	movx	a,@dptr
      0029E4 70 04            [24] 2195 	jnz	00254$
      0029E6                       2196 00253$:
                                   2197 ;	assignBit
      0029E6 C2 00            [12] 2198 	clr	b0
      0029E8 80 02            [24] 2199 	sjmp	00255$
      0029EA                       2200 00254$:
                                   2201 ;	assignBit
      0029EA D2 00            [12] 2202 	setb	b0
      0029EC                       2203 00255$:
      0029EC A2 00            [12] 2204 	mov	c,b0
      0029EE E4               [12] 2205 	clr	a
      0029EF 33               [12] 2206 	rlc	a
      0029F0 8D 82            [24] 2207 	mov	dpl,r5
      0029F2 8E 83            [24] 2208 	mov	dph,r6
      0029F4 F0               [24] 2209 	movx	@dptr,a
                                   2210 ;	life.c:226: cycle2 |= pu[A2D(W, y, x)] ^ nu[A2D(W, y, x)];
      0029F5 78 36            [12] 2211 	mov	r0,#_y
      0029F7 E6               [12] 2212 	mov	a,@r0
      0029F8 C0 E0            [24] 2213 	push	acc
      0029FA 08               [12] 2214 	inc	r0
      0029FB E6               [12] 2215 	mov	a,@r0
      0029FC C0 E0            [24] 2216 	push	acc
      0029FE 90 00 30         [24] 2217 	mov	dptr,#0x0030
      002A01 12 2C 93         [24] 2218 	lcall	__mulint
      002A04 AE 82            [24] 2219 	mov	r6,dpl
      002A06 AF 83            [24] 2220 	mov	r7,dph
      002A08 15 81            [12] 2221 	dec	sp
      002A0A 15 81            [12] 2222 	dec	sp
      002A0C 78 34            [12] 2223 	mov	r0,#_x
      002A0E E6               [12] 2224 	mov	a,@r0
      002A0F 2E               [12] 2225 	add	a,r6
      002A10 FE               [12] 2226 	mov	r6,a
      002A11 08               [12] 2227 	inc	r0
      002A12 E6               [12] 2228 	mov	a,@r0
      002A13 3F               [12] 2229 	addc	a,r7
      002A14 FF               [12] 2230 	mov	r7,a
      002A15 EE               [12] 2231 	mov	a,r6
      002A16 24 00            [12] 2232 	add	a,#_pu
      002A18 F5 82            [12] 2233 	mov	dpl,a
      002A1A EF               [12] 2234 	mov	a,r7
      002A1B 34 64            [12] 2235 	addc	a,#(_pu >> 8)
      002A1D F5 83            [12] 2236 	mov	dph,a
      002A1F E0               [24] 2237 	movx	a,@dptr
      002A20 FD               [12] 2238 	mov	r5,a
      002A21 EE               [12] 2239 	mov	a,r6
      002A22 24 00            [12] 2240 	add	a,#_nu
      002A24 F5 82            [12] 2241 	mov	dpl,a
      002A26 EF               [12] 2242 	mov	a,r7
      002A27 34 AC            [12] 2243 	addc	a,#(_nu >> 8)
      002A29 F5 83            [12] 2244 	mov	dph,a
      002A2B E0               [24] 2245 	movx	a,@dptr
      002A2C FC               [12] 2246 	mov	r4,a
      002A2D 6D               [12] 2247 	xrl	a,r5
      002A2E 78 3E            [12] 2248 	mov	r0,#_cycle2
      002A30 46               [12] 2249 	orl	a,@r0
      002A31 F6               [12] 2250 	mov	@r0,a
                                   2251 ;	life.c:227: fixed |= u[A2D(W, y, x)] ^ nu[A2D(W, y, x)];
      002A32 EE               [12] 2252 	mov	a,r6
      002A33 24 00            [12] 2253 	add	a,#_u
      002A35 F5 82            [12] 2254 	mov	dpl,a
      002A37 EF               [12] 2255 	mov	a,r7
      002A38 34 88            [12] 2256 	addc	a,#(_u >> 8)
      002A3A F5 83            [12] 2257 	mov	dph,a
      002A3C E0               [24] 2258 	movx	a,@dptr
      002A3D FF               [12] 2259 	mov	r7,a
      002A3E EC               [12] 2260 	mov	a,r4
      002A3F 6F               [12] 2261 	xrl	a,r7
      002A40 78 3D            [12] 2262 	mov	r0,#_fixed
      002A42 46               [12] 2263 	orl	a,@r0
      002A43 F6               [12] 2264 	mov	@r0,a
                                   2265 ;	life.c:203: for (x = 0; x < W; x++) {
      002A44 78 34            [12] 2266 	mov	r0,#_x
      002A46 06               [12] 2267 	inc	@r0
      002A47 B6 00 02         [24] 2268 	cjne	@r0,#0x00,00568$
      002A4A 08               [12] 2269 	inc	r0
      002A4B 06               [12] 2270 	inc	@r0
      002A4C                       2271 00568$:
      002A4C 78 34            [12] 2272 	mov	r0,#_x
      002A4E C3               [12] 2273 	clr	c
      002A4F E6               [12] 2274 	mov	a,@r0
      002A50 94 30            [12] 2275 	subb	a,#0x30
      002A52 08               [12] 2276 	inc	r0
      002A53 E6               [12] 2277 	mov	a,@r0
      002A54 64 80            [12] 2278 	xrl	a,#0x80
      002A56 94 80            [12] 2279 	subb	a,#0x80
      002A58 50 03            [24] 2280 	jnc	00569$
      002A5A 02 26 CC         [24] 2281 	ljmp	00226$
      002A5D                       2282 00569$:
                                   2283 ;	life.c:200: for (y = 0; y < H; y++) {
      002A5D 78 36            [12] 2284 	mov	r0,#_y
      002A5F 06               [12] 2285 	inc	@r0
      002A60 B6 00 02         [24] 2286 	cjne	@r0,#0x00,00570$
      002A63 08               [12] 2287 	inc	r0
      002A64 06               [12] 2288 	inc	@r0
      002A65                       2289 00570$:
      002A65 78 36            [12] 2290 	mov	r0,#_y
      002A67 C3               [12] 2291 	clr	c
      002A68 E6               [12] 2292 	mov	a,@r0
      002A69 94 C0            [12] 2293 	subb	a,#0xc0
      002A6B 08               [12] 2294 	inc	r0
      002A6C E6               [12] 2295 	mov	a,@r0
      002A6D 64 80            [12] 2296 	xrl	a,#0x80
      002A6F 94 80            [12] 2297 	subb	a,#0x80
      002A71 50 03            [24] 2298 	jnc	00571$
      002A73 02 26 B0         [24] 2299 	ljmp	00228$
      002A76                       2300 00571$:
                                   2301 ;	life.c:231: OE76 = OE76_0;
      002A76 78 33            [12] 2302 	mov	r0,#_OE76
      002A78 76 3F            [12] 2303 	mov	@r0,#0x3f
                                   2304 ;	life.c:232: flashOE();
      002A7A 12 20 DB         [24] 2305 	lcall	_flashOE
                                   2306 ;	life.c:234: cycle2 = !cycle2;
      002A7D 78 3E            [12] 2307 	mov	r0,#_cycle2
      002A7F E6               [12] 2308 	mov	a,@r0
      002A80 B4 01 00         [24] 2309 	cjne	a,#0x01,00572$
      002A83                       2310 00572$:
      002A83 92 00            [24] 2311 	mov	b0,c
      002A85 78 3E            [12] 2312 	mov	r0,#_cycle2
      002A87 E4               [12] 2313 	clr	a
      002A88 33               [12] 2314 	rlc	a
      002A89 F6               [12] 2315 	mov	@r0,a
                                   2316 ;	life.c:235: fixed = !fixed;
      002A8A 78 3D            [12] 2317 	mov	r0,#_fixed
      002A8C E6               [12] 2318 	mov	a,@r0
      002A8D B4 01 00         [24] 2319 	cjne	a,#0x01,00573$
      002A90                       2320 00573$:
      002A90 92 00            [24] 2321 	mov	b0,c
      002A92 78 3D            [12] 2322 	mov	r0,#_fixed
      002A94 E4               [12] 2323 	clr	a
      002A95 33               [12] 2324 	rlc	a
      002A96 F6               [12] 2325 	mov	@r0,a
                                   2326 ;	life.c:237: memcpy(pu, u, sizeof (u));
      002A97 E4               [12] 2327 	clr	a
      002A98 C0 E0            [24] 2328 	push	acc
      002A9A 74 24            [12] 2329 	mov	a,#0x24
      002A9C C0 E0            [24] 2330 	push	acc
      002A9E 74 00            [12] 2331 	mov	a,#_u
      002AA0 C0 E0            [24] 2332 	push	acc
      002AA2 74 88            [12] 2333 	mov	a,#(_u >> 8)
      002AA4 C0 E0            [24] 2334 	push	acc
      002AA6 E4               [12] 2335 	clr	a
      002AA7 C0 E0            [24] 2336 	push	acc
      002AA9 90 64 00         [24] 2337 	mov	dptr,#_pu
      002AAC 75 F0 00         [24] 2338 	mov	b,#0x00
      002AAF 12 2D 31         [24] 2339 	lcall	___memcpy
      002AB2 E5 81            [12] 2340 	mov	a,sp
      002AB4 24 FB            [12] 2341 	add	a,#0xfb
      002AB6 F5 81            [12] 2342 	mov	sp,a
                                   2343 ;	life.c:238: memcpy(u, nu, sizeof (nu));
      002AB8 E4               [12] 2344 	clr	a
      002AB9 C0 E0            [24] 2345 	push	acc
      002ABB 74 24            [12] 2346 	mov	a,#0x24
      002ABD C0 E0            [24] 2347 	push	acc
      002ABF 74 00            [12] 2348 	mov	a,#_nu
      002AC1 C0 E0            [24] 2349 	push	acc
      002AC3 74 AC            [12] 2350 	mov	a,#(_nu >> 8)
      002AC5 C0 E0            [24] 2351 	push	acc
      002AC7 E4               [12] 2352 	clr	a
      002AC8 C0 E0            [24] 2353 	push	acc
      002ACA 90 88 00         [24] 2354 	mov	dptr,#_u
      002ACD 75 F0 00         [24] 2355 	mov	b,#0x00
      002AD0 12 2D 31         [24] 2356 	lcall	___memcpy
      002AD3 E5 81            [12] 2357 	mov	a,sp
      002AD5 24 FB            [12] 2358 	add	a,#0xfb
      002AD7 F5 81            [12] 2359 	mov	sp,a
                                   2360 ;	life.c:284: if (fixed || cycle2) {
      002AD9 78 3D            [12] 2361 	mov	r0,#_fixed
      002ADB E6               [12] 2362 	mov	a,@r0
      002ADC 70 08            [24] 2363 	jnz	00135$
      002ADE 78 3E            [12] 2364 	mov	r0,#_cycle2
      002AE0 E6               [12] 2365 	mov	a,@r0
      002AE1 70 03            [24] 2366 	jnz	00575$
      002AE3 02 26 85         [24] 2367 	ljmp	00241$
      002AE6                       2368 00575$:
      002AE6                       2369 00135$:
                                   2370 ;	life.c:285: printstr("DONE ");
      002AE6 7D D9            [12] 2371 	mov	r5,#___str_7
      002AE8 7E 2F            [12] 2372 	mov	r6,#(___str_7 >> 8)
      002AEA 7F 80            [12] 2373 	mov	r7,#0x80
                                   2374 ;	life.c:53: return;
      002AEC                       2375 00231$:
                                   2376 ;	life.c:51: for (; *s; s++) putchar(*s);
      002AEC 8D 82            [24] 2377 	mov	dpl,r5
      002AEE 8E 83            [24] 2378 	mov	dph,r6
      002AF0 8F F0            [24] 2379 	mov	b,r7
      002AF2 12 2E 55         [24] 2380 	lcall	__gptrget
      002AF5 FC               [12] 2381 	mov	r4,a
      002AF6 60 10            [24] 2382 	jz	00192$
      002AF8 7B 00            [12] 2383 	mov	r3,#0x00
      002AFA 8C 82            [24] 2384 	mov	dpl,r4
      002AFC 8B 83            [24] 2385 	mov	dph,r3
      002AFE 12 20 B5         [24] 2386 	lcall	_putchar
      002B01 0D               [12] 2387 	inc	r5
                                   2388 ;	life.c:285: printstr("DONE ");
      002B02 BD 00 E7         [24] 2389 	cjne	r5,#0x00,00231$
      002B05 0E               [12] 2390 	inc	r6
      002B06 80 E4            [24] 2391 	sjmp	00231$
      002B08                       2392 00192$:
                                   2393 ;	life.c:286: if (fixed) printstr("FIXED\r\n");
      002B08 78 3D            [12] 2394 	mov	r0,#_fixed
      002B0A E6               [12] 2395 	mov	a,@r0
      002B0B 60 22            [24] 2396 	jz	00133$
      002B0D 7D DF            [12] 2397 	mov	r5,#___str_8
      002B0F 7E 2F            [12] 2398 	mov	r6,#(___str_8 >> 8)
      002B11 7F 80            [12] 2399 	mov	r7,#0x80
                                   2400 ;	life.c:53: return;
      002B13                       2401 00234$:
                                   2402 ;	life.c:51: for (; *s; s++) putchar(*s);
      002B13 8D 82            [24] 2403 	mov	dpl,r5
      002B15 8E 83            [24] 2404 	mov	dph,r6
      002B17 8F F0            [24] 2405 	mov	b,r7
      002B19 12 2E 55         [24] 2406 	lcall	__gptrget
      002B1C FC               [12] 2407 	mov	r4,a
      002B1D 60 32            [24] 2408 	jz	00134$
      002B1F 7B 00            [12] 2409 	mov	r3,#0x00
      002B21 8C 82            [24] 2410 	mov	dpl,r4
      002B23 8B 83            [24] 2411 	mov	dph,r3
      002B25 12 20 B5         [24] 2412 	lcall	_putchar
      002B28 0D               [12] 2413 	inc	r5
                                   2414 ;	life.c:286: if (fixed) printstr("FIXED\r\n");
      002B29 BD 00 E7         [24] 2415 	cjne	r5,#0x00,00234$
      002B2C 0E               [12] 2416 	inc	r6
      002B2D 80 E4            [24] 2417 	sjmp	00234$
      002B2F                       2418 00133$:
                                   2419 ;	life.c:287: else printstr("CYCLE2\r\n");
      002B2F 7D E7            [12] 2420 	mov	r5,#___str_9
      002B31 7E 2F            [12] 2421 	mov	r6,#(___str_9 >> 8)
      002B33 7F 80            [12] 2422 	mov	r7,#0x80
                                   2423 ;	life.c:53: return;
      002B35                       2424 00237$:
                                   2425 ;	life.c:51: for (; *s; s++) putchar(*s);
      002B35 8D 82            [24] 2426 	mov	dpl,r5
      002B37 8E 83            [24] 2427 	mov	dph,r6
      002B39 8F F0            [24] 2428 	mov	b,r7
      002B3B 12 2E 55         [24] 2429 	lcall	__gptrget
      002B3E FC               [12] 2430 	mov	r4,a
      002B3F 60 10            [24] 2431 	jz	00134$
      002B41 7B 00            [12] 2432 	mov	r3,#0x00
      002B43 8C 82            [24] 2433 	mov	dpl,r4
      002B45 8B 83            [24] 2434 	mov	dph,r3
      002B47 12 20 B5         [24] 2435 	lcall	_putchar
      002B4A 0D               [12] 2436 	inc	r5
                                   2437 ;	life.c:287: else printstr("CYCLE2\r\n");
      002B4B BD 00 E7         [24] 2438 	cjne	r5,#0x00,00237$
      002B4E 0E               [12] 2439 	inc	r6
      002B4F 80 E4            [24] 2440 	sjmp	00237$
      002B51                       2441 00134$:
                                   2442 ;	life.c:288: (void)getchar();
      002B51 12 20 BA         [24] 2443 	lcall	_getchar
                                   2444 ;	life.c:289: break;
      002B54                       2445 00138$:
                                   2446 ;	life.c:293: if (i1) {
      002B54 78 32            [12] 2447 	mov	r0,#_i1
      002B56 E6               [12] 2448 	mov	a,@r0
      002B57 60 25            [24] 2449 	jz	00247$
                                   2450 ;	life.c:294: printstr("BREAK\r\n");
      002B59 7D F0            [12] 2451 	mov	r5,#___str_10
      002B5B 7E 2F            [12] 2452 	mov	r6,#(___str_10 >> 8)
      002B5D 7F 80            [12] 2453 	mov	r7,#0x80
                                   2454 ;	life.c:53: return;
      002B5F                       2455 00244$:
                                   2456 ;	life.c:51: for (; *s; s++) putchar(*s);
      002B5F 8D 82            [24] 2457 	mov	dpl,r5
      002B61 8E 83            [24] 2458 	mov	dph,r6
      002B63 8F F0            [24] 2459 	mov	b,r7
      002B65 12 2E 55         [24] 2460 	lcall	__gptrget
      002B68 FC               [12] 2461 	mov	r4,a
      002B69 60 10            [24] 2462 	jz	00198$
      002B6B 7B 00            [12] 2463 	mov	r3,#0x00
      002B6D 8C 82            [24] 2464 	mov	dpl,r4
      002B6F 8B 83            [24] 2465 	mov	dph,r3
      002B71 12 20 B5         [24] 2466 	lcall	_putchar
      002B74 0D               [12] 2467 	inc	r5
                                   2468 ;	life.c:294: printstr("BREAK\r\n");
      002B75 BD 00 E7         [24] 2469 	cjne	r5,#0x00,00244$
      002B78 0E               [12] 2470 	inc	r6
      002B79 80 E4            [24] 2471 	sjmp	00244$
      002B7B                       2472 00198$:
                                   2473 ;	life.c:295: (void)getchar();
      002B7B 12 20 BA         [24] 2474 	lcall	_getchar
      002B7E                       2475 00247$:
                                   2476 ;	life.c:256: for (i0 = 0; !i0; ) {	
      002B7E 78 31            [12] 2477 	mov	r0,#_i0
      002B80 E6               [12] 2478 	mov	a,@r0
      002B81 70 03            [24] 2479 	jnz	00586$
      002B83 02 23 0A         [24] 2480 	ljmp	00246$
      002B86                       2481 00586$:
                                   2482 ;	life.c:299: terminate:
      002B86                       2483 00142$:
                                   2484 ;	life.c:300: EA = 0;
                                   2485 ;	assignBit
      002B86 C2 AF            [12] 2486 	clr	_EA
                                   2487 ;	life.c:301: printstr("TERM\r\n");
      002B88 7D F8            [12] 2488 	mov	r5,#___str_11
      002B8A 7E 2F            [12] 2489 	mov	r6,#(___str_11 >> 8)
      002B8C 7F 80            [12] 2490 	mov	r7,#0x80
                                   2491 ;	life.c:53: return;
      002B8E                       2492 00249$:
                                   2493 ;	life.c:51: for (; *s; s++) putchar(*s);
      002B8E 8D 82            [24] 2494 	mov	dpl,r5
      002B90 8E 83            [24] 2495 	mov	dph,r6
      002B92 8F F0            [24] 2496 	mov	b,r7
      002B94 12 2E 55         [24] 2497 	lcall	__gptrget
      002B97 FC               [12] 2498 	mov	r4,a
      002B98 60 10            [24] 2499 	jz	00200$
      002B9A 7B 00            [12] 2500 	mov	r3,#0x00
      002B9C 8C 82            [24] 2501 	mov	dpl,r4
      002B9E 8B 83            [24] 2502 	mov	dph,r3
      002BA0 12 20 B5         [24] 2503 	lcall	_putchar
      002BA3 0D               [12] 2504 	inc	r5
                                   2505 ;	life.c:301: printstr("TERM\r\n");
      002BA4 BD 00 E7         [24] 2506 	cjne	r5,#0x00,00249$
      002BA7 0E               [12] 2507 	inc	r6
      002BA8 80 E4            [24] 2508 	sjmp	00249$
      002BAA                       2509 00200$:
                                   2510 ;	life.c:302: (void)getchar();
      002BAA 12 20 BA         [24] 2511 	lcall	_getchar
                                   2512 ;	life.c:306: __endasm;
      002BAD 02 00 00         [24] 2513 	ljmp	0
                                   2514 ;	life.c:307: }
      002BB0 85 10 81         [24] 2515 	mov	sp,_bp
      002BB3 D0 10            [24] 2516 	pop	_bp
      002BB5 22               [24] 2517 	ret
                                   2518 	.area CSEG    (CODE)
                                   2519 	.area CONST   (CODE)
                                   2520 	.area CONST   (CODE)
      002F7D                       2521 ___str_0:
      002F7D 1B                    2522 	.db 0x1b
      002F7E 5B 32 4A              2523 	.ascii "[2J"
      002F81 1B                    2524 	.db 0x1b
      002F82 5B 6D 47 45 4E 20     2525 	.ascii "[mGEN "
      002F88 00                    2526 	.db 0x00
                                   2527 	.area CSEG    (CODE)
                                   2528 	.area CONST   (CODE)
      002F89                       2529 ___str_1:
      002F89 0D                    2530 	.db 0x0d
      002F8A 0A                    2531 	.db 0x0a
      002F8B 00                    2532 	.db 0x00
                                   2533 	.area CSEG    (CODE)
                                   2534 	.area CONST   (CODE)
      002F8C                       2535 ___str_2:
      002F8C 4C 4F 41 44 20 30 20  2536 	.ascii "LOAD 0 1 ~ # <"
             31 20 7E 20 23 20 3C
      002F9A 00                    2537 	.db 0x00
                                   2538 	.area CSEG    (CODE)
                                   2539 	.area CONST   (CODE)
      002F9B                       2540 ___str_3:
      002F9B 3E                    2541 	.ascii ">"
      002F9C 0D                    2542 	.db 0x0d
      002F9D 0A                    2543 	.db 0x0a
      002F9E 00                    2544 	.db 0x00
                                   2545 	.area CSEG    (CODE)
                                   2546 	.area CONST   (CODE)
      002F9F                       2547 ___str_4:
      002F9F 52 41 4E 44 4F 4D     2548 	.ascii "RANDOM"
      002FA5 00                    2549 	.db 0x00
                                   2550 	.area CSEG    (CODE)
                                   2551 	.area CONST   (CODE)
      002FA6                       2552 ___str_5:
      002FA6 1B                    2553 	.db 0x1b
      002FA7 5B 32 4A              2554 	.ascii "[2J"
      002FAA 1B                    2555 	.db 0x1b
      002FAB 5B 3F 32 35 6C        2556 	.ascii "[?25l"
      002FB0 1B                    2557 	.db 0x1b
      002FB1 5B 6D 4C 49 46 45 20  2558 	.ascii "[mLIFE INIT T L R P"
             49 4E 49 54 20 54 20
             4C 20 52 20 50
      002FC4 0D                    2559 	.db 0x0d
      002FC5 0A                    2560 	.db 0x0a
      002FC6 00                    2561 	.db 0x00
                                   2562 	.area CSEG    (CODE)
                                   2563 	.area CONST   (CODE)
      002FC7                       2564 ___str_6:
      002FC7 52 45 41 44 59 20 54  2565 	.ascii "READY T L R P S"
             20 4C 20 52 20 50 20
             53
      002FD6 0D                    2566 	.db 0x0d
      002FD7 0A                    2567 	.db 0x0a
      002FD8 00                    2568 	.db 0x00
                                   2569 	.area CSEG    (CODE)
                                   2570 	.area CONST   (CODE)
      002FD9                       2571 ___str_7:
      002FD9 44 4F 4E 45 20        2572 	.ascii "DONE "
      002FDE 00                    2573 	.db 0x00
                                   2574 	.area CSEG    (CODE)
                                   2575 	.area CONST   (CODE)
      002FDF                       2576 ___str_8:
      002FDF 46 49 58 45 44        2577 	.ascii "FIXED"
      002FE4 0D                    2578 	.db 0x0d
      002FE5 0A                    2579 	.db 0x0a
      002FE6 00                    2580 	.db 0x00
                                   2581 	.area CSEG    (CODE)
                                   2582 	.area CONST   (CODE)
      002FE7                       2583 ___str_9:
      002FE7 43 59 43 4C 45 32     2584 	.ascii "CYCLE2"
      002FED 0D                    2585 	.db 0x0d
      002FEE 0A                    2586 	.db 0x0a
      002FEF 00                    2587 	.db 0x00
                                   2588 	.area CSEG    (CODE)
                                   2589 	.area CONST   (CODE)
      002FF0                       2590 ___str_10:
      002FF0 42 52 45 41 4B        2591 	.ascii "BREAK"
      002FF5 0D                    2592 	.db 0x0d
      002FF6 0A                    2593 	.db 0x0a
      002FF7 00                    2594 	.db 0x00
                                   2595 	.area CSEG    (CODE)
                                   2596 	.area CONST   (CODE)
      002FF8                       2597 ___str_11:
      002FF8 54 45 52 4D           2598 	.ascii "TERM"
      002FFC 0D                    2599 	.db 0x0d
      002FFD 0A                    2600 	.db 0x0a
      002FFE 00                    2601 	.db 0x00
                                   2602 	.area CSEG    (CODE)
                                   2603 	.area XINIT   (CODE)
                                   2604 	.area CABS    (ABS,CODE)
