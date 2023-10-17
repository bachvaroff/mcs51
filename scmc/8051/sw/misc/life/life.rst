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
      002016 02 22 E1         [24]  455 	ljmp	_main
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
      0020EC 02 22 46         [24]  595 	ljmp	00102$
      0020EF                        596 00190$:
                                    597 ;	life.c:118: OE76 = OE76_0;
      0020EF 78 33            [12]  598 	mov	r0,#_OE76
      0020F1 76 3F            [12]  599 	mov	@r0,#0x3f
                                    600 ;	life.c:119: flashOE();
      0020F3 12 20 DB         [24]  601 	lcall	_flashOE
                                    602 ;	life.c:120: printstr("\033[2J\033[mGEN ");
      0020F6 7D 84            [12]  603 	mov	r5,#___str_0
      0020F8 7E 2F            [12]  604 	mov	r6,#(___str_0 >> 8)
      0020FA 7F 80            [12]  605 	mov	r7,#0x80
                                    606 ;	life.c:53: return;
      0020FC                        607 00121$:
                                    608 ;	life.c:51: for (; *s; s++) putchar(*s);
      0020FC 8D 82            [24]  609 	mov	dpl,r5
      0020FE 8E 83            [24]  610 	mov	dph,r6
      002100 8F F0            [24]  611 	mov	b,r7
      002102 12 2E 5C         [24]  612 	lcall	__gptrget
      002105 FC               [12]  613 	mov	r4,a
      002106 60 10            [24]  614 	jz	00109$
      002108 7B 00            [12]  615 	mov	r3,#0x00
      00210A 8C 82            [24]  616 	mov	dpl,r4
      00210C 8B 83            [24]  617 	mov	dph,r3
      00210E 12 20 B5         [24]  618 	lcall	_putchar
      002111 0D               [12]  619 	inc	r5
                                    620 ;	life.c:120: printstr("\033[2J\033[mGEN ");
      002112 BD 00 E7         [24]  621 	cjne	r5,#0x00,00121$
      002115 0E               [12]  622 	inc	r6
      002116 80 E4            [24]  623 	sjmp	00121$
      002118                        624 00109$:
                                    625 ;	life.c:110: print16x(generation[1]);
      002118 78 45            [12]  626 	mov	r0,#(_generation + 0x0002)
      00211A 86 06            [24]  627 	mov	ar6,@r0
      00211C 08               [12]  628 	inc	r0
                                    629 ;	life.c:42: putchar(digits[(a >> 12) & 0xf]);
      00211D E6               [12]  630 	mov	a,@r0
      00211E FF               [12]  631 	mov	r7,a
      00211F C4               [12]  632 	swap	a
      002120 54 0F            [12]  633 	anl	a,#0x0f
      002122 30 E3 02         [24]  634 	jnb	acc.3,00193$
      002125 44 F0            [12]  635 	orl	a,#0xf0
      002127                        636 00193$:
      002127 FC               [12]  637 	mov	r4,a
      002128 33               [12]  638 	rlc	a
      002129 95 E0            [12]  639 	subb	a,acc
      00212B 53 04 0F         [24]  640 	anl	ar4,#0x0f
      00212E EC               [12]  641 	mov	a,r4
      00212F 24 21            [12]  642 	add	a,#_digits
      002131 F9               [12]  643 	mov	r1,a
      002132 87 05            [24]  644 	mov	ar5,@r1
      002134 7C 00            [12]  645 	mov	r4,#0x00
      002136 8D 82            [24]  646 	mov	dpl,r5
      002138 8C 83            [24]  647 	mov	dph,r4
      00213A 12 20 B5         [24]  648 	lcall	_putchar
                                    649 ;	life.c:43: putchar(digits[(a >> 8) & 0xf]);
      00213D 8F 05            [24]  650 	mov	ar5,r7
      00213F 53 05 0F         [24]  651 	anl	ar5,#0x0f
      002142 ED               [12]  652 	mov	a,r5
      002143 24 21            [12]  653 	add	a,#_digits
      002145 F9               [12]  654 	mov	r1,a
      002146 87 05            [24]  655 	mov	ar5,@r1
      002148 7C 00            [12]  656 	mov	r4,#0x00
      00214A 8D 82            [24]  657 	mov	dpl,r5
      00214C 8C 83            [24]  658 	mov	dph,r4
      00214E 12 20 B5         [24]  659 	lcall	_putchar
                                    660 ;	life.c:44: putchar(digits[(a >> 4) & 0xf]);
      002151 8E 04            [24]  661 	mov	ar4,r6
      002153 EF               [12]  662 	mov	a,r7
      002154 C4               [12]  663 	swap	a
      002155 CC               [12]  664 	xch	a,r4
      002156 C4               [12]  665 	swap	a
      002157 54 0F            [12]  666 	anl	a,#0x0f
      002159 6C               [12]  667 	xrl	a,r4
      00215A CC               [12]  668 	xch	a,r4
      00215B 54 0F            [12]  669 	anl	a,#0x0f
      00215D CC               [12]  670 	xch	a,r4
      00215E 6C               [12]  671 	xrl	a,r4
      00215F CC               [12]  672 	xch	a,r4
      002160 30 E3 02         [24]  673 	jnb	acc.3,00194$
      002163 44 F0            [12]  674 	orl	a,#0xf0
      002165                        675 00194$:
      002165 53 04 0F         [24]  676 	anl	ar4,#0x0f
      002168 EC               [12]  677 	mov	a,r4
      002169 24 21            [12]  678 	add	a,#_digits
      00216B F9               [12]  679 	mov	r1,a
      00216C 87 05            [24]  680 	mov	ar5,@r1
      00216E 7C 00            [12]  681 	mov	r4,#0x00
      002170 8D 82            [24]  682 	mov	dpl,r5
      002172 8C 83            [24]  683 	mov	dph,r4
      002174 12 20 B5         [24]  684 	lcall	_putchar
                                    685 ;	life.c:45: putchar(digits[a & 0xf]);
      002177 53 06 0F         [24]  686 	anl	ar6,#0x0f
      00217A EE               [12]  687 	mov	a,r6
      00217B 24 21            [12]  688 	add	a,#_digits
      00217D F9               [12]  689 	mov	r1,a
      00217E 87 07            [24]  690 	mov	ar7,@r1
      002180 7E 00            [12]  691 	mov	r6,#0x00
      002182 8F 82            [24]  692 	mov	dpl,r7
      002184 8E 83            [24]  693 	mov	dph,r6
      002186 12 20 B5         [24]  694 	lcall	_putchar
                                    695 ;	life.c:111: print16x(generation[0]);
      002189 78 43            [12]  696 	mov	r0,#_generation
      00218B 86 06            [24]  697 	mov	ar6,@r0
      00218D 08               [12]  698 	inc	r0
                                    699 ;	life.c:42: putchar(digits[(a >> 12) & 0xf]);
      00218E E6               [12]  700 	mov	a,@r0
      00218F FF               [12]  701 	mov	r7,a
      002190 C4               [12]  702 	swap	a
      002191 54 0F            [12]  703 	anl	a,#0x0f
      002193 30 E3 02         [24]  704 	jnb	acc.3,00195$
      002196 44 F0            [12]  705 	orl	a,#0xf0
      002198                        706 00195$:
      002198 FC               [12]  707 	mov	r4,a
      002199 33               [12]  708 	rlc	a
      00219A 95 E0            [12]  709 	subb	a,acc
      00219C 53 04 0F         [24]  710 	anl	ar4,#0x0f
      00219F EC               [12]  711 	mov	a,r4
      0021A0 24 21            [12]  712 	add	a,#_digits
      0021A2 F9               [12]  713 	mov	r1,a
      0021A3 87 05            [24]  714 	mov	ar5,@r1
      0021A5 7C 00            [12]  715 	mov	r4,#0x00
      0021A7 8D 82            [24]  716 	mov	dpl,r5
      0021A9 8C 83            [24]  717 	mov	dph,r4
      0021AB 12 20 B5         [24]  718 	lcall	_putchar
                                    719 ;	life.c:43: putchar(digits[(a >> 8) & 0xf]);
      0021AE 8F 05            [24]  720 	mov	ar5,r7
      0021B0 53 05 0F         [24]  721 	anl	ar5,#0x0f
      0021B3 ED               [12]  722 	mov	a,r5
      0021B4 24 21            [12]  723 	add	a,#_digits
      0021B6 F9               [12]  724 	mov	r1,a
      0021B7 87 05            [24]  725 	mov	ar5,@r1
      0021B9 7C 00            [12]  726 	mov	r4,#0x00
      0021BB 8D 82            [24]  727 	mov	dpl,r5
      0021BD 8C 83            [24]  728 	mov	dph,r4
      0021BF 12 20 B5         [24]  729 	lcall	_putchar
                                    730 ;	life.c:44: putchar(digits[(a >> 4) & 0xf]);
      0021C2 8E 04            [24]  731 	mov	ar4,r6
      0021C4 EF               [12]  732 	mov	a,r7
      0021C5 C4               [12]  733 	swap	a
      0021C6 CC               [12]  734 	xch	a,r4
      0021C7 C4               [12]  735 	swap	a
      0021C8 54 0F            [12]  736 	anl	a,#0x0f
      0021CA 6C               [12]  737 	xrl	a,r4
      0021CB CC               [12]  738 	xch	a,r4
      0021CC 54 0F            [12]  739 	anl	a,#0x0f
      0021CE CC               [12]  740 	xch	a,r4
      0021CF 6C               [12]  741 	xrl	a,r4
      0021D0 CC               [12]  742 	xch	a,r4
      0021D1 30 E3 02         [24]  743 	jnb	acc.3,00196$
      0021D4 44 F0            [12]  744 	orl	a,#0xf0
      0021D6                        745 00196$:
      0021D6 53 04 0F         [24]  746 	anl	ar4,#0x0f
      0021D9 EC               [12]  747 	mov	a,r4
      0021DA 24 21            [12]  748 	add	a,#_digits
      0021DC F9               [12]  749 	mov	r1,a
      0021DD 87 05            [24]  750 	mov	ar5,@r1
      0021DF 7C 00            [12]  751 	mov	r4,#0x00
      0021E1 8D 82            [24]  752 	mov	dpl,r5
      0021E3 8C 83            [24]  753 	mov	dph,r4
      0021E5 12 20 B5         [24]  754 	lcall	_putchar
                                    755 ;	life.c:45: putchar(digits[a & 0xf]);
      0021E8 53 06 0F         [24]  756 	anl	ar6,#0x0f
      0021EB EE               [12]  757 	mov	a,r6
      0021EC 24 21            [12]  758 	add	a,#_digits
      0021EE F9               [12]  759 	mov	r1,a
      0021EF 87 07            [24]  760 	mov	ar7,@r1
      0021F1 7E 00            [12]  761 	mov	r6,#0x00
      0021F3 8F 82            [24]  762 	mov	dpl,r7
      0021F5 8E 83            [24]  763 	mov	dph,r6
      0021F7 12 20 B5         [24]  764 	lcall	_putchar
                                    765 ;	life.c:122: printstr("\r\n");
      0021FA 7D 90            [12]  766 	mov	r5,#___str_1
      0021FC 7E 2F            [12]  767 	mov	r6,#(___str_1 >> 8)
      0021FE 7F 80            [12]  768 	mov	r7,#0x80
                                    769 ;	life.c:53: return;
      002200                        770 00124$:
                                    771 ;	life.c:51: for (; *s; s++) putchar(*s);
      002200 8D 82            [24]  772 	mov	dpl,r5
      002202 8E 83            [24]  773 	mov	dph,r6
      002204 8F F0            [24]  774 	mov	b,r7
      002206 12 2E 5C         [24]  775 	lcall	__gptrget
      002209 FC               [12]  776 	mov	r4,a
      00220A 60 10            [24]  777 	jz	00114$
      00220C 7B 00            [12]  778 	mov	r3,#0x00
      00220E 8C 82            [24]  779 	mov	dpl,r4
      002210 8B 83            [24]  780 	mov	dph,r3
      002212 12 20 B5         [24]  781 	lcall	_putchar
      002215 0D               [12]  782 	inc	r5
                                    783 ;	life.c:122: printstr("\r\n");
      002216 BD 00 E7         [24]  784 	cjne	r5,#0x00,00124$
      002219 0E               [12]  785 	inc	r6
      00221A 80 E4            [24]  786 	sjmp	00124$
      00221C                        787 00114$:
                                    788 ;	life.c:103: generation[0]++;
      00221C 78 43            [12]  789 	mov	r0,#_generation
      00221E 86 06            [24]  790 	mov	ar6,@r0
      002220 08               [12]  791 	inc	r0
      002221 86 07            [24]  792 	mov	ar7,@r0
      002223 0E               [12]  793 	inc	r6
      002224 BE 00 01         [24]  794 	cjne	r6,#0x00,00199$
      002227 0F               [12]  795 	inc	r7
      002228                        796 00199$:
      002228 78 43            [12]  797 	mov	r0,#_generation
      00222A A6 06            [24]  798 	mov	@r0,ar6
      00222C 08               [12]  799 	inc	r0
      00222D A6 07            [24]  800 	mov	@r0,ar7
                                    801 ;	life.c:104: if (!generation[0]) generation[1]++;
      00222F EE               [12]  802 	mov	a,r6
      002230 4F               [12]  803 	orl	a,r7
      002231 70 13            [24]  804 	jnz	00102$
      002233 78 45            [12]  805 	mov	r0,#(_generation + 0x0002)
      002235 86 06            [24]  806 	mov	ar6,@r0
      002237 08               [12]  807 	inc	r0
      002238 86 07            [24]  808 	mov	ar7,@r0
      00223A 0E               [12]  809 	inc	r6
      00223B BE 00 01         [24]  810 	cjne	r6,#0x00,00201$
      00223E 0F               [12]  811 	inc	r7
      00223F                        812 00201$:
      00223F 78 45            [12]  813 	mov	r0,#(_generation + 0x0002)
      002241 A6 06            [24]  814 	mov	@r0,ar6
      002243 08               [12]  815 	inc	r0
      002244 A6 07            [24]  816 	mov	@r0,ar7
                                    817 ;	life.c:123: updategen();
      002246                        818 00102$:
                                    819 ;	life.c:126: for (x = 0; x < W; x++) {
      002246 78 34            [12]  820 	mov	r0,#_x
      002248 E4               [12]  821 	clr	a
      002249 F6               [12]  822 	mov	@r0,a
      00224A 08               [12]  823 	inc	r0
      00224B F6               [12]  824 	mov	@r0,a
      00224C                        825 00131$:
                                    826 ;	life.c:127: for (y = 0; y < H; y++)
      00224C 78 36            [12]  827 	mov	r0,#_y
      00224E E4               [12]  828 	clr	a
      00224F F6               [12]  829 	mov	@r0,a
      002250 08               [12]  830 	inc	r0
      002251 F6               [12]  831 	mov	@r0,a
      002252                        832 00126$:
                                    833 ;	life.c:128: if (u[A2D(W, y, x)]) putchar('1');
      002252 78 36            [12]  834 	mov	r0,#_y
      002254 E6               [12]  835 	mov	a,@r0
      002255 C0 E0            [24]  836 	push	acc
      002257 08               [12]  837 	inc	r0
      002258 E6               [12]  838 	mov	a,@r0
      002259 C0 E0            [24]  839 	push	acc
      00225B 90 00 30         [24]  840 	mov	dptr,#0x0030
      00225E 12 2C 9A         [24]  841 	lcall	__mulint
      002261 AE 82            [24]  842 	mov	r6,dpl
      002263 AF 83            [24]  843 	mov	r7,dph
      002265 15 81            [12]  844 	dec	sp
      002267 15 81            [12]  845 	dec	sp
      002269 78 34            [12]  846 	mov	r0,#_x
      00226B E6               [12]  847 	mov	a,@r0
      00226C 2E               [12]  848 	add	a,r6
      00226D FE               [12]  849 	mov	r6,a
      00226E 08               [12]  850 	inc	r0
      00226F E6               [12]  851 	mov	a,@r0
      002270 3F               [12]  852 	addc	a,r7
      002271 FF               [12]  853 	mov	r7,a
      002272 EE               [12]  854 	mov	a,r6
      002273 24 00            [12]  855 	add	a,#_u
      002275 FE               [12]  856 	mov	r6,a
      002276 EF               [12]  857 	mov	a,r7
      002277 34 88            [12]  858 	addc	a,#(_u >> 8)
      002279 FF               [12]  859 	mov	r7,a
      00227A 8E 82            [24]  860 	mov	dpl,r6
      00227C 8F 83            [24]  861 	mov	dph,r7
      00227E E0               [24]  862 	movx	a,@dptr
      00227F 60 08            [24]  863 	jz	00104$
      002281 90 00 31         [24]  864 	mov	dptr,#0x0031
      002284 12 20 B5         [24]  865 	lcall	_putchar
      002287 80 06            [24]  866 	sjmp	00127$
      002289                        867 00104$:
                                    868 ;	life.c:129: else putchar('0');
      002289 90 00 30         [24]  869 	mov	dptr,#0x0030
      00228C 12 20 B5         [24]  870 	lcall	_putchar
      00228F                        871 00127$:
                                    872 ;	life.c:127: for (y = 0; y < H; y++)
      00228F 78 36            [12]  873 	mov	r0,#_y
      002291 06               [12]  874 	inc	@r0
      002292 B6 00 02         [24]  875 	cjne	@r0,#0x00,00203$
      002295 08               [12]  876 	inc	r0
      002296 06               [12]  877 	inc	@r0
      002297                        878 00203$:
      002297 78 36            [12]  879 	mov	r0,#_y
      002299 C3               [12]  880 	clr	c
      00229A E6               [12]  881 	mov	a,@r0
      00229B 94 C0            [12]  882 	subb	a,#0xc0
      00229D 08               [12]  883 	inc	r0
      00229E E6               [12]  884 	mov	a,@r0
      00229F 64 80            [12]  885 	xrl	a,#0x80
      0022A1 94 80            [12]  886 	subb	a,#0x80
      0022A3 40 AD            [24]  887 	jc	00126$
                                    888 ;	life.c:130: printstr("\r\n");
      0022A5 7D 90            [12]  889 	mov	r5,#___str_1
      0022A7 7E 2F            [12]  890 	mov	r6,#(___str_1 >> 8)
      0022A9 7F 80            [12]  891 	mov	r7,#0x80
                                    892 ;	life.c:53: return;
      0022AB                        893 00129$:
                                    894 ;	life.c:51: for (; *s; s++) putchar(*s);
      0022AB 8D 82            [24]  895 	mov	dpl,r5
      0022AD 8E 83            [24]  896 	mov	dph,r6
      0022AF 8F F0            [24]  897 	mov	b,r7
      0022B1 12 2E 5C         [24]  898 	lcall	__gptrget
      0022B4 FC               [12]  899 	mov	r4,a
      0022B5 60 10            [24]  900 	jz	00119$
      0022B7 7B 00            [12]  901 	mov	r3,#0x00
      0022B9 8C 82            [24]  902 	mov	dpl,r4
      0022BB 8B 83            [24]  903 	mov	dph,r3
      0022BD 12 20 B5         [24]  904 	lcall	_putchar
      0022C0 0D               [12]  905 	inc	r5
                                    906 ;	life.c:130: printstr("\r\n");
      0022C1 BD 00 E7         [24]  907 	cjne	r5,#0x00,00129$
      0022C4 0E               [12]  908 	inc	r6
      0022C5 80 E4            [24]  909 	sjmp	00129$
      0022C7                        910 00119$:
                                    911 ;	life.c:126: for (x = 0; x < W; x++) {
      0022C7 78 34            [12]  912 	mov	r0,#_x
      0022C9 06               [12]  913 	inc	@r0
      0022CA B6 00 02         [24]  914 	cjne	@r0,#0x00,00207$
      0022CD 08               [12]  915 	inc	r0
      0022CE 06               [12]  916 	inc	@r0
      0022CF                        917 00207$:
      0022CF 78 34            [12]  918 	mov	r0,#_x
      0022D1 C3               [12]  919 	clr	c
      0022D2 E6               [12]  920 	mov	a,@r0
      0022D3 94 30            [12]  921 	subb	a,#0x30
      0022D5 08               [12]  922 	inc	r0
      0022D6 E6               [12]  923 	mov	a,@r0
      0022D7 64 80            [12]  924 	xrl	a,#0x80
      0022D9 94 80            [12]  925 	subb	a,#0x80
      0022DB 50 03            [24]  926 	jnc	00208$
      0022DD 02 22 4C         [24]  927 	ljmp	00131$
      0022E0                        928 00208$:
                                    929 ;	life.c:133: return;
                                    930 ;	life.c:134: }
      0022E0 22               [24]  931 	ret
                                    932 ;------------------------------------------------------------
                                    933 ;Allocation info for local variables in function 'main'
                                    934 ;------------------------------------------------------------
                                    935 ;__2621440023              Allocated to registers 
                                    936 ;s                         Allocated to registers r5 r6 r7 
                                    937 ;__1310720013              Allocated to registers 
                                    938 ;s                         Allocated to registers r5 r6 r7 
                                    939 ;__1310720015              Allocated to registers r6 r7 
                                    940 ;a                         Allocated to registers r4 r5 
                                    941 ;__1310720017              Allocated to registers 
                                    942 ;s                         Allocated to registers r5 r6 r7 
                                    943 ;__1310720019              Allocated to registers 
                                    944 ;s                         Allocated to registers r5 r6 r7 
                                    945 ;__1310720021              Allocated to registers 
                                    946 ;s                         Allocated to registers r5 r6 r7 
                                    947 ;__2621440028              Allocated to registers 
                                    948 ;s                         Allocated to registers r5 r6 r7 
                                    949 ;__4587520032              Allocated to registers 
                                    950 ;s                         Allocated to registers r5 r6 r7 
                                    951 ;__4587520034              Allocated to registers 
                                    952 ;s                         Allocated to registers r5 r6 r7 
                                    953 ;__4587520036              Allocated to registers 
                                    954 ;s                         Allocated to registers r5 r6 r7 
                                    955 ;__3276800038              Allocated to registers 
                                    956 ;s                         Allocated to registers r5 r6 r7 
                                    957 ;__1310720040              Allocated to registers 
                                    958 ;s                         Allocated to registers r5 r6 r7 
                                    959 ;sloc0                     Allocated to stack - _bp +1
                                    960 ;sloc1                     Allocated to stack - _bp +2
                                    961 ;sloc2                     Allocated to stack - _bp +4
                                    962 ;sloc3                     Allocated to stack - _bp +6
                                    963 ;sloc4                     Allocated to stack - _bp +8
                                    964 ;sloc5                     Allocated to stack - _bp +10
                                    965 ;sloc6                     Allocated to stack - _bp +12
                                    966 ;------------------------------------------------------------
                                    967 ;	life.c:239: void main(void) {
                                    968 ;	-----------------------------------------
                                    969 ;	 function main
                                    970 ;	-----------------------------------------
      0022E1                        971 _main:
      0022E1 C0 10            [24]  972 	push	_bp
      0022E3 E5 81            [12]  973 	mov	a,sp
      0022E5 F5 10            [12]  974 	mov	_bp,a
      0022E7 24 0D            [12]  975 	add	a,#0x0d
      0022E9 F5 81            [12]  976 	mov	sp,a
                                    977 ;	life.c:240: IT0 = 1;
                                    978 ;	assignBit
      0022EB D2 88            [12]  979 	setb	_IT0
                                    980 ;	life.c:241: IT1 = 1;
                                    981 ;	assignBit
      0022ED D2 8A            [12]  982 	setb	_IT1
                                    983 ;	life.c:242: EX0 = 1;
                                    984 ;	assignBit
      0022EF D2 A8            [12]  985 	setb	_EX0
                                    986 ;	life.c:243: EX1 = 1;
                                    987 ;	assignBit
      0022F1 D2 AA            [12]  988 	setb	_EX1
                                    989 ;	life.c:244: EA = 1;	
                                    990 ;	assignBit
      0022F3 D2 AF            [12]  991 	setb	_EA
                                    992 ;	life.c:245: P1_7 = 1;
                                    993 ;	assignBit
      0022F5 D2 97            [12]  994 	setb	_P1_7
                                    995 ;	life.c:247: srand(RND);
      0022F7 90 FF FE         [24]  996 	mov	dptr,#_RND
      0022FA E0               [24]  997 	movx	a,@dptr
      0022FB FE               [12]  998 	mov	r6,a
      0022FC A3               [24]  999 	inc	dptr
      0022FD E0               [24] 1000 	movx	a,@dptr
      0022FE FF               [12] 1001 	mov	r7,a
      0022FF 8E 82            [24] 1002 	mov	dpl,r6
      002301 8F 83            [24] 1003 	mov	dph,r7
      002303 12 2C 81         [24] 1004 	lcall	_srand
                                   1005 ;	life.c:249: OE76 = OE76_0;
      002306 78 33            [12] 1006 	mov	r0,#_OE76
      002308 76 3F            [12] 1007 	mov	@r0,#0x3f
                                   1008 ;	life.c:250: flashOE();
      00230A 12 20 DB         [24] 1009 	lcall	_flashOE
                                   1010 ;	life.c:252: for (i0 = 0; !i0; ) {	
      00230D 78 31            [12] 1011 	mov	r0,#_i0
      00230F 76 00            [12] 1012 	mov	@r0,#0x00
      002311                       1013 00246$:
                                   1014 ;	life.c:253: printstr("\033[2J\033[?25l\033[mLIFE INIT T L R P\r\n");
      002311 7D AD            [12] 1015 	mov	r5,#___str_5
      002313 7E 2F            [12] 1016 	mov	r6,#(___str_5 >> 8)
      002315 7F 80            [12] 1017 	mov	r7,#0x80
                                   1018 ;	life.c:53: return;
      002317                       1019 00202$:
                                   1020 ;	life.c:51: for (; *s; s++) putchar(*s);
      002317 8D 82            [24] 1021 	mov	dpl,r5
      002319 8E 83            [24] 1022 	mov	dph,r6
      00231B 8F F0            [24] 1023 	mov	b,r7
      00231D 12 2E 5C         [24] 1024 	lcall	__gptrget
      002320 FC               [12] 1025 	mov	r4,a
      002321 60 10            [24] 1026 	jz	00110$
      002323 7B 00            [12] 1027 	mov	r3,#0x00
      002325 8C 82            [24] 1028 	mov	dpl,r4
      002327 8B 83            [24] 1029 	mov	dph,r3
      002329 12 20 B5         [24] 1030 	lcall	_putchar
      00232C 0D               [12] 1031 	inc	r5
                                   1032 ;	life.c:254: while (1) {
      00232D BD 00 E7         [24] 1033 	cjne	r5,#0x00,00202$
      002330 0E               [12] 1034 	inc	r6
      002331 80 E4            [24] 1035 	sjmp	00202$
      002333                       1036 00110$:
                                   1037 ;	life.c:255: c = toupper(getchar());
      002333 12 20 BA         [24] 1038 	lcall	_getchar
      002336 12 2E 35         [24] 1039 	lcall	_toupper
      002339 AE 82            [24] 1040 	mov	r6,dpl
      00233B AF 83            [24] 1041 	mov	r7,dph
      00233D 78 3A            [12] 1042 	mov	r0,#_c
      00233F A6 06            [24] 1043 	mov	@r0,ar6
      002341 08               [12] 1044 	inc	r0
      002342 A6 07            [24] 1045 	mov	@r0,ar7
                                   1046 ;	life.c:256: if (i0 || (c == (int)'T')) goto terminate;
      002344 78 31            [12] 1047 	mov	r0,#_i0
      002346 E6               [12] 1048 	mov	a,@r0
      002347 60 03            [24] 1049 	jz	00516$
      002349 02 2B 8D         [24] 1050 	ljmp	00142$
      00234C                       1051 00516$:
      00234C BE 54 06         [24] 1052 	cjne	r6,#0x54,00517$
      00234F BF 00 03         [24] 1053 	cjne	r7,#0x00,00517$
      002352 02 2B 8D         [24] 1054 	ljmp	00142$
      002355                       1055 00517$:
                                   1056 ;	life.c:257: else if ((c == (int)'L') || (c == (int)'R') || (c == (int)'P')) break;
      002355 BE 4C 05         [24] 1057 	cjne	r6,#0x4c,00518$
      002358 BF 00 02         [24] 1058 	cjne	r7,#0x00,00518$
      00235B 80 0E            [24] 1059 	sjmp	00291$
      00235D                       1060 00518$:
      00235D BE 52 05         [24] 1061 	cjne	r6,#0x52,00519$
      002360 BF 00 02         [24] 1062 	cjne	r7,#0x00,00519$
      002363 80 06            [24] 1063 	sjmp	00291$
      002365                       1064 00519$:
      002365 BE 50 CB         [24] 1065 	cjne	r6,#0x50,00110$
      002368 BF 00 C8         [24] 1066 	cjne	r7,#0x00,00110$
                                   1067 ;	life.c:260: reload:
      00236B                       1068 00291$:
      00236B                       1069 00112$:
                                   1070 ;	life.c:137: memset(u, 0, sizeof (u));
      00236B E4               [12] 1071 	clr	a
      00236C C0 E0            [24] 1072 	push	acc
      00236E 74 24            [12] 1073 	mov	a,#0x24
      002370 C0 E0            [24] 1074 	push	acc
      002372 E4               [12] 1075 	clr	a
      002373 C0 E0            [24] 1076 	push	acc
      002375 90 88 00         [24] 1077 	mov	dptr,#_u
      002378 75 F0 00         [24] 1078 	mov	b,#0x00
      00237B 12 2D CB         [24] 1079 	lcall	_memset
      00237E 15 81            [12] 1080 	dec	sp
      002380 15 81            [12] 1081 	dec	sp
      002382 15 81            [12] 1082 	dec	sp
                                   1083 ;	life.c:138: memset(pu, 0, sizeof (pu));
      002384 E4               [12] 1084 	clr	a
      002385 C0 E0            [24] 1085 	push	acc
      002387 74 24            [12] 1086 	mov	a,#0x24
      002389 C0 E0            [24] 1087 	push	acc
      00238B E4               [12] 1088 	clr	a
      00238C C0 E0            [24] 1089 	push	acc
      00238E 90 64 00         [24] 1090 	mov	dptr,#_pu
      002391 75 F0 00         [24] 1091 	mov	b,#0x00
      002394 12 2D CB         [24] 1092 	lcall	_memset
      002397 15 81            [12] 1093 	dec	sp
      002399 15 81            [12] 1094 	dec	sp
      00239B 15 81            [12] 1095 	dec	sp
                                   1096 ;	life.c:262: if (c == (int)'L') loadiu();
      00239D 78 3A            [12] 1097 	mov	r0,#_c
      00239F B6 4C 06         [24] 1098 	cjne	@r0,#0x4c,00522$
      0023A2 08               [12] 1099 	inc	r0
      0023A3 B6 00 02         [24] 1100 	cjne	@r0,#0x00,00522$
      0023A6 80 03            [24] 1101 	sjmp	00523$
      0023A8                       1102 00522$:
      0023A8 02 25 35         [24] 1103 	ljmp	00116$
      0023AB                       1104 00523$:
                                   1105 ;	life.c:144: j = 0;
      0023AB 78 38            [12] 1106 	mov	r0,#_j
      0023AD E4               [12] 1107 	clr	a
      0023AE F6               [12] 1108 	mov	@r0,a
      0023AF 08               [12] 1109 	inc	r0
      0023B0 F6               [12] 1110 	mov	@r0,a
                                   1111 ;	life.c:146: printstr("LOAD 0 1 ~ # <");
      0023B1 7D 93            [12] 1112 	mov	r5,#___str_2
      0023B3 7E 2F            [12] 1113 	mov	r6,#(___str_2 >> 8)
      0023B5 7F 80            [12] 1114 	mov	r7,#0x80
                                   1115 ;	life.c:53: return;
      0023B7                       1116 00205$:
                                   1117 ;	life.c:51: for (; *s; s++) putchar(*s);
      0023B7 8D 82            [24] 1118 	mov	dpl,r5
      0023B9 8E 83            [24] 1119 	mov	dph,r6
      0023BB 8F F0            [24] 1120 	mov	b,r7
      0023BD 12 2E 5C         [24] 1121 	lcall	__gptrget
      0023C0 FC               [12] 1122 	mov	r4,a
      0023C1 60 10            [24] 1123 	jz	00147$
      0023C3 7B 00            [12] 1124 	mov	r3,#0x00
      0023C5 8C 82            [24] 1125 	mov	dpl,r4
      0023C7 8B 83            [24] 1126 	mov	dph,r3
      0023C9 12 20 B5         [24] 1127 	lcall	_putchar
      0023CC 0D               [12] 1128 	inc	r5
                                   1129 ;	life.c:146: printstr("LOAD 0 1 ~ # <");
      0023CD BD 00 E7         [24] 1130 	cjne	r5,#0x00,00205$
      0023D0 0E               [12] 1131 	inc	r6
      0023D1 80 E4            [24] 1132 	sjmp	00205$
      0023D3                       1133 00147$:
                                   1134 ;	life.c:148: for (y = 0; y < (H * W); y += W) {
      0023D3 78 36            [12] 1135 	mov	r0,#_y
      0023D5 E4               [12] 1136 	clr	a
      0023D6 F6               [12] 1137 	mov	@r0,a
      0023D7 08               [12] 1138 	inc	r0
      0023D8 F6               [12] 1139 	mov	@r0,a
      0023D9                       1140 00208$:
                                   1141 ;	life.c:149: for (x = 0; x < W; x++) {
      0023D9 78 34            [12] 1142 	mov	r0,#_x
      0023DB E4               [12] 1143 	clr	a
      0023DC F6               [12] 1144 	mov	@r0,a
      0023DD 08               [12] 1145 	inc	r0
      0023DE F6               [12] 1146 	mov	@r0,a
                                   1147 ;	life.c:150: while (1) {
      0023DF                       1148 00160$:
                                   1149 ;	life.c:151: c = getchar();
      0023DF 12 20 BA         [24] 1150 	lcall	_getchar
      0023E2 AE 82            [24] 1151 	mov	r6,dpl
      0023E4 AF 83            [24] 1152 	mov	r7,dph
      0023E6 78 3A            [12] 1153 	mov	r0,#_c
      0023E8 A6 06            [24] 1154 	mov	@r0,ar6
      0023EA 08               [12] 1155 	inc	r0
      0023EB A6 07            [24] 1156 	mov	@r0,ar7
                                   1157 ;	life.c:152: if (c == (int)'0') {
      0023ED BE 30 25         [24] 1158 	cjne	r6,#0x30,00158$
      0023F0 BF 00 22         [24] 1159 	cjne	r7,#0x00,00158$
                                   1160 ;	life.c:153: iu[y + x] = 0;
      0023F3 78 36            [12] 1161 	mov	r0,#_y
      0023F5 79 34            [12] 1162 	mov	r1,#_x
      0023F7 E7               [12] 1163 	mov	a,@r1
      0023F8 26               [12] 1164 	add	a,@r0
      0023F9 FC               [12] 1165 	mov	r4,a
      0023FA 09               [12] 1166 	inc	r1
      0023FB E7               [12] 1167 	mov	a,@r1
      0023FC 08               [12] 1168 	inc	r0
      0023FD 36               [12] 1169 	addc	a,@r0
      0023FE FD               [12] 1170 	mov	r5,a
      0023FF EC               [12] 1171 	mov	a,r4
      002400 24 00            [12] 1172 	add	a,#_iu
      002402 F5 82            [12] 1173 	mov	dpl,a
      002404 ED               [12] 1174 	mov	a,r5
      002405 34 40            [12] 1175 	addc	a,#(_iu >> 8)
      002407 F5 83            [12] 1176 	mov	dph,a
      002409 E4               [12] 1177 	clr	a
      00240A F0               [24] 1178 	movx	@dptr,a
                                   1179 ;	life.c:154: j++;
      00240B 78 38            [12] 1180 	mov	r0,#_j
      00240D 06               [12] 1181 	inc	@r0
      00240E B6 00 02         [24] 1182 	cjne	@r0,#0x00,00528$
      002411 08               [12] 1183 	inc	r0
      002412 06               [12] 1184 	inc	@r0
      002413                       1185 00528$:
                                   1186 ;	life.c:155: break;
      002413 80 39            [24] 1187 	sjmp	00163$
      002415                       1188 00158$:
                                   1189 ;	life.c:156: } else if (c == (int)'1') {
      002415 BE 31 26         [24] 1190 	cjne	r6,#0x31,00156$
      002418 BF 00 23         [24] 1191 	cjne	r7,#0x00,00156$
                                   1192 ;	life.c:157: iu[y + x] = 1;
      00241B 78 36            [12] 1193 	mov	r0,#_y
      00241D 79 34            [12] 1194 	mov	r1,#_x
      00241F E7               [12] 1195 	mov	a,@r1
      002420 26               [12] 1196 	add	a,@r0
      002421 FC               [12] 1197 	mov	r4,a
      002422 09               [12] 1198 	inc	r1
      002423 E7               [12] 1199 	mov	a,@r1
      002424 08               [12] 1200 	inc	r0
      002425 36               [12] 1201 	addc	a,@r0
      002426 FD               [12] 1202 	mov	r5,a
      002427 EC               [12] 1203 	mov	a,r4
      002428 24 00            [12] 1204 	add	a,#_iu
      00242A F5 82            [12] 1205 	mov	dpl,a
      00242C ED               [12] 1206 	mov	a,r5
      00242D 34 40            [12] 1207 	addc	a,#(_iu >> 8)
      00242F F5 83            [12] 1208 	mov	dph,a
      002431 74 01            [12] 1209 	mov	a,#0x01
      002433 F0               [24] 1210 	movx	@dptr,a
                                   1211 ;	life.c:158: j++;
      002434 78 38            [12] 1212 	mov	r0,#_j
      002436 06               [12] 1213 	inc	@r0
      002437 B6 00 02         [24] 1214 	cjne	@r0,#0x00,00531$
      00243A 08               [12] 1215 	inc	r0
      00243B 06               [12] 1216 	inc	@r0
      00243C                       1217 00531$:
                                   1218 ;	life.c:159: break;
      00243C 80 10            [24] 1219 	sjmp	00163$
      00243E                       1220 00156$:
                                   1221 ;	life.c:160: } else if (c == (int)'~') goto br_inner;
      00243E BE 7E 05         [24] 1222 	cjne	r6,#0x7e,00532$
      002441 BF 00 02         [24] 1223 	cjne	r7,#0x00,00532$
      002444 80 21            [24] 1224 	sjmp	00209$
      002446                       1225 00532$:
                                   1226 ;	life.c:161: else if (c == (int)'#') goto out;
                                   1227 ;	life.c:165: break;
      002446 BE 23 96         [24] 1228 	cjne	r6,#0x23,00160$
      002449 BF 00 93         [24] 1229 	cjne	r7,#0x00,00160$
      00244C 80 31            [24] 1230 	sjmp	00173$
      00244E                       1231 00163$:
                                   1232 ;	life.c:149: for (x = 0; x < W; x++) {
      00244E 78 34            [12] 1233 	mov	r0,#_x
      002450 06               [12] 1234 	inc	@r0
      002451 B6 00 02         [24] 1235 	cjne	@r0,#0x00,00534$
      002454 08               [12] 1236 	inc	r0
      002455 06               [12] 1237 	inc	@r0
      002456                       1238 00534$:
      002456 78 34            [12] 1239 	mov	r0,#_x
      002458 C3               [12] 1240 	clr	c
      002459 E6               [12] 1241 	mov	a,@r0
      00245A 94 30            [12] 1242 	subb	a,#0x30
      00245C 08               [12] 1243 	inc	r0
      00245D E6               [12] 1244 	mov	a,@r0
      00245E 64 80            [12] 1245 	xrl	a,#0x80
      002460 94 80            [12] 1246 	subb	a,#0x80
      002462 50 03            [24] 1247 	jnc	00535$
      002464 02 23 DF         [24] 1248 	ljmp	00160$
      002467                       1249 00535$:
      002467                       1250 00209$:
                                   1251 ;	life.c:148: for (y = 0; y < (H * W); y += W) {
      002467 78 36            [12] 1252 	mov	r0,#_y
      002469 74 30            [12] 1253 	mov	a,#0x30
      00246B 26               [12] 1254 	add	a,@r0
      00246C F6               [12] 1255 	mov	@r0,a
      00246D E4               [12] 1256 	clr	a
      00246E 08               [12] 1257 	inc	r0
      00246F 36               [12] 1258 	addc	a,@r0
      002470 F6               [12] 1259 	mov	@r0,a
      002471 78 36            [12] 1260 	mov	r0,#_y
      002473 C3               [12] 1261 	clr	c
      002474 08               [12] 1262 	inc	r0
      002475 E6               [12] 1263 	mov	a,@r0
      002476 64 80            [12] 1264 	xrl	a,#0x80
      002478 94 A4            [12] 1265 	subb	a,#0xa4
      00247A 50 03            [24] 1266 	jnc	00536$
      00247C 02 23 D9         [24] 1267 	ljmp	00208$
      00247F                       1268 00536$:
                                   1269 ;	life.c:169: out:
      00247F                       1270 00173$:
                                   1271 ;	life.c:170: if (c != (int)'#')
      00247F BE 23 05         [24] 1272 	cjne	r6,#0x23,00537$
      002482 BF 00 02         [24] 1273 	cjne	r7,#0x00,00537$
      002485 80 14            [24] 1274 	sjmp	00172$
      002487                       1275 00537$:
                                   1276 ;	life.c:171: while (1) {
      002487                       1277 00169$:
                                   1278 ;	life.c:172: c = getchar();
      002487 12 20 BA         [24] 1279 	lcall	_getchar
      00248A AE 82            [24] 1280 	mov	r6,dpl
      00248C AF 83            [24] 1281 	mov	r7,dph
      00248E 78 3A            [12] 1282 	mov	r0,#_c
      002490 A6 06            [24] 1283 	mov	@r0,ar6
      002492 08               [12] 1284 	inc	r0
      002493 A6 07            [24] 1285 	mov	@r0,ar7
                                   1286 ;	life.c:173: if (c == (int)'#') break;
      002495 BE 23 EF         [24] 1287 	cjne	r6,#0x23,00169$
      002498 BF 00 EC         [24] 1288 	cjne	r7,#0x00,00169$
      00249B                       1289 00172$:
                                   1290 ;	life.c:175: print16x(j);
      00249B 78 38            [12] 1291 	mov	r0,#_j
      00249D 86 06            [24] 1292 	mov	ar6,@r0
      00249F 08               [12] 1293 	inc	r0
      0024A0 86 07            [24] 1294 	mov	ar7,@r0
      0024A2 8E 04            [24] 1295 	mov	ar4,r6
                                   1296 ;	life.c:42: putchar(digits[(a >> 12) & 0xf]);
      0024A4 EF               [12] 1297 	mov	a,r7
      0024A5 FD               [12] 1298 	mov	r5,a
      0024A6 C4               [12] 1299 	swap	a
      0024A7 54 0F            [12] 1300 	anl	a,#0x0f
      0024A9 30 E3 02         [24] 1301 	jnb	acc.3,00540$
      0024AC 44 F0            [12] 1302 	orl	a,#0xf0
      0024AE                       1303 00540$:
      0024AE FE               [12] 1304 	mov	r6,a
      0024AF 33               [12] 1305 	rlc	a
      0024B0 95 E0            [12] 1306 	subb	a,acc
      0024B2 53 06 0F         [24] 1307 	anl	ar6,#0x0f
      0024B5 EE               [12] 1308 	mov	a,r6
      0024B6 24 21            [12] 1309 	add	a,#_digits
      0024B8 F9               [12] 1310 	mov	r1,a
      0024B9 87 07            [24] 1311 	mov	ar7,@r1
      0024BB 7E 00            [12] 1312 	mov	r6,#0x00
      0024BD 8F 82            [24] 1313 	mov	dpl,r7
      0024BF 8E 83            [24] 1314 	mov	dph,r6
      0024C1 12 20 B5         [24] 1315 	lcall	_putchar
                                   1316 ;	life.c:43: putchar(digits[(a >> 8) & 0xf]);
      0024C4 8D 07            [24] 1317 	mov	ar7,r5
      0024C6 53 07 0F         [24] 1318 	anl	ar7,#0x0f
      0024C9 EF               [12] 1319 	mov	a,r7
      0024CA 24 21            [12] 1320 	add	a,#_digits
      0024CC F9               [12] 1321 	mov	r1,a
      0024CD 87 07            [24] 1322 	mov	ar7,@r1
      0024CF 7E 00            [12] 1323 	mov	r6,#0x00
      0024D1 8F 82            [24] 1324 	mov	dpl,r7
      0024D3 8E 83            [24] 1325 	mov	dph,r6
      0024D5 12 20 B5         [24] 1326 	lcall	_putchar
                                   1327 ;	life.c:44: putchar(digits[(a >> 4) & 0xf]);
      0024D8 8C 06            [24] 1328 	mov	ar6,r4
      0024DA ED               [12] 1329 	mov	a,r5
      0024DB C4               [12] 1330 	swap	a
      0024DC CE               [12] 1331 	xch	a,r6
      0024DD C4               [12] 1332 	swap	a
      0024DE 54 0F            [12] 1333 	anl	a,#0x0f
      0024E0 6E               [12] 1334 	xrl	a,r6
      0024E1 CE               [12] 1335 	xch	a,r6
      0024E2 54 0F            [12] 1336 	anl	a,#0x0f
      0024E4 CE               [12] 1337 	xch	a,r6
      0024E5 6E               [12] 1338 	xrl	a,r6
      0024E6 CE               [12] 1339 	xch	a,r6
      0024E7 30 E3 02         [24] 1340 	jnb	acc.3,00541$
      0024EA 44 F0            [12] 1341 	orl	a,#0xf0
      0024EC                       1342 00541$:
      0024EC 53 06 0F         [24] 1343 	anl	ar6,#0x0f
      0024EF EE               [12] 1344 	mov	a,r6
      0024F0 24 21            [12] 1345 	add	a,#_digits
      0024F2 F9               [12] 1346 	mov	r1,a
      0024F3 87 07            [24] 1347 	mov	ar7,@r1
      0024F5 7E 00            [12] 1348 	mov	r6,#0x00
      0024F7 8F 82            [24] 1349 	mov	dpl,r7
      0024F9 8E 83            [24] 1350 	mov	dph,r6
      0024FB 12 20 B5         [24] 1351 	lcall	_putchar
                                   1352 ;	life.c:45: putchar(digits[a & 0xf]);
      0024FE 53 04 0F         [24] 1353 	anl	ar4,#0x0f
      002501 EC               [12] 1354 	mov	a,r4
      002502 24 21            [12] 1355 	add	a,#_digits
      002504 F9               [12] 1356 	mov	r1,a
      002505 87 07            [24] 1357 	mov	ar7,@r1
      002507 7E 00            [12] 1358 	mov	r6,#0x00
      002509 8F 82            [24] 1359 	mov	dpl,r7
      00250B 8E 83            [24] 1360 	mov	dph,r6
      00250D 12 20 B5         [24] 1361 	lcall	_putchar
                                   1362 ;	life.c:176: printstr(">\r\n");
      002510 7D A2            [12] 1363 	mov	r5,#___str_3
      002512 7E 2F            [12] 1364 	mov	r6,#(___str_3 >> 8)
      002514 7F 80            [12] 1365 	mov	r7,#0x80
                                   1366 ;	life.c:53: return;
      002516                       1367 00211$:
                                   1368 ;	life.c:51: for (; *s; s++) putchar(*s);
      002516 8D 82            [24] 1369 	mov	dpl,r5
      002518 8E 83            [24] 1370 	mov	dph,r6
      00251A 8F F0            [24] 1371 	mov	b,r7
      00251C 12 2E 5C         [24] 1372 	lcall	__gptrget
      00251F FC               [12] 1373 	mov	r4,a
      002520 70 03            [24] 1374 	jnz	00542$
      002522 02 25 EE         [24] 1375 	ljmp	00117$
      002525                       1376 00542$:
      002525 7B 00            [12] 1377 	mov	r3,#0x00
      002527 8C 82            [24] 1378 	mov	dpl,r4
      002529 8B 83            [24] 1379 	mov	dph,r3
      00252B 12 20 B5         [24] 1380 	lcall	_putchar
      00252E 0D               [12] 1381 	inc	r5
                                   1382 ;	life.c:262: if (c == (int)'L') loadiu();
      00252F BD 00 E4         [24] 1383 	cjne	r5,#0x00,00211$
      002532 0E               [12] 1384 	inc	r6
      002533 80 E1            [24] 1385 	sjmp	00211$
      002535                       1386 00116$:
                                   1387 ;	life.c:263: else if (c == (int)'R') loadriu();
      002535 78 3A            [12] 1388 	mov	r0,#_c
      002537 B6 52 06         [24] 1389 	cjne	@r0,#0x52,00544$
      00253A 08               [12] 1390 	inc	r0
      00253B B6 00 02         [24] 1391 	cjne	@r0,#0x00,00544$
      00253E 80 03            [24] 1392 	sjmp	00545$
      002540                       1393 00544$:
      002540 02 25 EE         [24] 1394 	ljmp	00117$
      002543                       1395 00545$:
                                   1396 ;	life.c:182: j = 0;
      002543 78 38            [12] 1397 	mov	r0,#_j
      002545 E4               [12] 1398 	clr	a
      002546 F6               [12] 1399 	mov	@r0,a
      002547 08               [12] 1400 	inc	r0
      002548 F6               [12] 1401 	mov	@r0,a
                                   1402 ;	life.c:184: printstr("RANDOM");
      002549 7D A6            [12] 1403 	mov	r5,#___str_4
      00254B 7E 2F            [12] 1404 	mov	r6,#(___str_4 >> 8)
      00254D 7F 80            [12] 1405 	mov	r7,#0x80
                                   1406 ;	life.c:53: return;
      00254F                       1407 00214$:
                                   1408 ;	life.c:51: for (; *s; s++) putchar(*s);
      00254F 8D 82            [24] 1409 	mov	dpl,r5
      002551 8E 83            [24] 1410 	mov	dph,r6
      002553 8F F0            [24] 1411 	mov	b,r7
      002555 12 2E 5C         [24] 1412 	lcall	__gptrget
      002558 FC               [12] 1413 	mov	r4,a
      002559 60 10            [24] 1414 	jz	00179$
      00255B 7B 00            [12] 1415 	mov	r3,#0x00
      00255D 8C 82            [24] 1416 	mov	dpl,r4
      00255F 8B 83            [24] 1417 	mov	dph,r3
      002561 12 20 B5         [24] 1418 	lcall	_putchar
      002564 0D               [12] 1419 	inc	r5
                                   1420 ;	life.c:184: printstr("RANDOM");
      002565 BD 00 E7         [24] 1421 	cjne	r5,#0x00,00214$
      002568 0E               [12] 1422 	inc	r6
      002569 80 E4            [24] 1423 	sjmp	00214$
      00256B                       1424 00179$:
                                   1425 ;	life.c:186: for (y = 0; y < (H * W); y += W)
      00256B 78 36            [12] 1426 	mov	r0,#_y
      00256D E4               [12] 1427 	clr	a
      00256E F6               [12] 1428 	mov	@r0,a
      00256F 08               [12] 1429 	inc	r0
      002570 F6               [12] 1430 	mov	@r0,a
      002571                       1431 00218$:
                                   1432 ;	life.c:187: for (x = 0; x < W; x++)
      002571 78 34            [12] 1433 	mov	r0,#_x
      002573 E4               [12] 1434 	clr	a
      002574 F6               [12] 1435 	mov	@r0,a
      002575 08               [12] 1436 	inc	r0
      002576 F6               [12] 1437 	mov	@r0,a
      002577                       1438 00216$:
                                   1439 ;	life.c:188: iu[y + x] = rand() & 1;
      002577 78 36            [12] 1440 	mov	r0,#_y
      002579 79 34            [12] 1441 	mov	r1,#_x
      00257B E7               [12] 1442 	mov	a,@r1
      00257C 26               [12] 1443 	add	a,@r0
      00257D FE               [12] 1444 	mov	r6,a
      00257E 09               [12] 1445 	inc	r1
      00257F E7               [12] 1446 	mov	a,@r1
      002580 08               [12] 1447 	inc	r0
      002581 36               [12] 1448 	addc	a,@r0
      002582 FF               [12] 1449 	mov	r7,a
      002583 EE               [12] 1450 	mov	a,r6
      002584 24 00            [12] 1451 	add	a,#_iu
      002586 FE               [12] 1452 	mov	r6,a
      002587 EF               [12] 1453 	mov	a,r7
      002588 34 40            [12] 1454 	addc	a,#(_iu >> 8)
      00258A FF               [12] 1455 	mov	r7,a
      00258B C0 07            [24] 1456 	push	ar7
      00258D C0 06            [24] 1457 	push	ar6
      00258F 12 2B BD         [24] 1458 	lcall	_rand
      002592 AC 82            [24] 1459 	mov	r4,dpl
      002594 D0 06            [24] 1460 	pop	ar6
      002596 D0 07            [24] 1461 	pop	ar7
      002598 53 04 01         [24] 1462 	anl	ar4,#0x01
      00259B 8E 82            [24] 1463 	mov	dpl,r6
      00259D 8F 83            [24] 1464 	mov	dph,r7
      00259F EC               [12] 1465 	mov	a,r4
      0025A0 F0               [24] 1466 	movx	@dptr,a
                                   1467 ;	life.c:187: for (x = 0; x < W; x++)
      0025A1 78 34            [12] 1468 	mov	r0,#_x
      0025A3 06               [12] 1469 	inc	@r0
      0025A4 B6 00 02         [24] 1470 	cjne	@r0,#0x00,00548$
      0025A7 08               [12] 1471 	inc	r0
      0025A8 06               [12] 1472 	inc	@r0
      0025A9                       1473 00548$:
      0025A9 78 34            [12] 1474 	mov	r0,#_x
      0025AB C3               [12] 1475 	clr	c
      0025AC E6               [12] 1476 	mov	a,@r0
      0025AD 94 30            [12] 1477 	subb	a,#0x30
      0025AF 08               [12] 1478 	inc	r0
      0025B0 E6               [12] 1479 	mov	a,@r0
      0025B1 64 80            [12] 1480 	xrl	a,#0x80
      0025B3 94 80            [12] 1481 	subb	a,#0x80
      0025B5 40 C0            [24] 1482 	jc	00216$
                                   1483 ;	life.c:186: for (y = 0; y < (H * W); y += W)
      0025B7 78 36            [12] 1484 	mov	r0,#_y
      0025B9 74 30            [12] 1485 	mov	a,#0x30
      0025BB 26               [12] 1486 	add	a,@r0
      0025BC F6               [12] 1487 	mov	@r0,a
      0025BD E4               [12] 1488 	clr	a
      0025BE 08               [12] 1489 	inc	r0
      0025BF 36               [12] 1490 	addc	a,@r0
      0025C0 F6               [12] 1491 	mov	@r0,a
      0025C1 78 36            [12] 1492 	mov	r0,#_y
      0025C3 C3               [12] 1493 	clr	c
      0025C4 08               [12] 1494 	inc	r0
      0025C5 E6               [12] 1495 	mov	a,@r0
      0025C6 64 80            [12] 1496 	xrl	a,#0x80
      0025C8 94 A4            [12] 1497 	subb	a,#0xa4
      0025CA 40 A5            [24] 1498 	jc	00218$
                                   1499 ;	life.c:190: printstr("\r\n");
      0025CC 7D 90            [12] 1500 	mov	r5,#___str_1
      0025CE 7E 2F            [12] 1501 	mov	r6,#(___str_1 >> 8)
      0025D0 7F 80            [12] 1502 	mov	r7,#0x80
                                   1503 ;	life.c:53: return;
      0025D2                       1504 00221$:
                                   1505 ;	life.c:51: for (; *s; s++) putchar(*s);
      0025D2 8D 82            [24] 1506 	mov	dpl,r5
      0025D4 8E 83            [24] 1507 	mov	dph,r6
      0025D6 8F F0            [24] 1508 	mov	b,r7
      0025D8 12 2E 5C         [24] 1509 	lcall	__gptrget
      0025DB FC               [12] 1510 	mov	r4,a
      0025DC 60 10            [24] 1511 	jz	00117$
      0025DE 7B 00            [12] 1512 	mov	r3,#0x00
      0025E0 8C 82            [24] 1513 	mov	dpl,r4
      0025E2 8B 83            [24] 1514 	mov	dph,r3
      0025E4 12 20 B5         [24] 1515 	lcall	_putchar
      0025E7 0D               [12] 1516 	inc	r5
                                   1517 ;	life.c:263: else if (c == (int)'R') loadriu();
      0025E8 BD 00 E7         [24] 1518 	cjne	r5,#0x00,00221$
      0025EB 0E               [12] 1519 	inc	r6
      0025EC 80 E4            [24] 1520 	sjmp	00221$
      0025EE                       1521 00117$:
                                   1522 ;	life.c:264: memcpy(u, iu, sizeof (iu));
      0025EE E4               [12] 1523 	clr	a
      0025EF C0 E0            [24] 1524 	push	acc
      0025F1 74 24            [12] 1525 	mov	a,#0x24
      0025F3 C0 E0            [24] 1526 	push	acc
      0025F5 74 00            [12] 1527 	mov	a,#_iu
      0025F7 C0 E0            [24] 1528 	push	acc
      0025F9 74 40            [12] 1529 	mov	a,#(_iu >> 8)
      0025FB C0 E0            [24] 1530 	push	acc
      0025FD E4               [12] 1531 	clr	a
      0025FE C0 E0            [24] 1532 	push	acc
      002600 90 88 00         [24] 1533 	mov	dptr,#_u
      002603 75 F0 00         [24] 1534 	mov	b,#0x00
      002606 12 2D 38         [24] 1535 	lcall	___memcpy
      002609 E5 81            [12] 1536 	mov	a,sp
      00260B 24 FB            [12] 1537 	add	a,#0xfb
      00260D F5 81            [12] 1538 	mov	sp,a
                                   1539 ;	life.c:265: show(0);
      00260F 75 82 00         [24] 1540 	mov	dpl,#0x00
      002612 12 20 E7         [24] 1541 	lcall	_show
                                   1542 ;	life.c:267: printstr("READY T L R P S\r\n");
      002615 7D CE            [12] 1543 	mov	r5,#___str_6
      002617 7E 2F            [12] 1544 	mov	r6,#(___str_6 >> 8)
      002619 7F 80            [12] 1545 	mov	r7,#0x80
                                   1546 ;	life.c:53: return;
      00261B                       1547 00224$:
                                   1548 ;	life.c:51: for (; *s; s++) putchar(*s);
      00261B 8D 82            [24] 1549 	mov	dpl,r5
      00261D 8E 83            [24] 1550 	mov	dph,r6
      00261F 8F F0            [24] 1551 	mov	b,r7
      002621 12 2E 5C         [24] 1552 	lcall	__gptrget
      002624 FC               [12] 1553 	mov	r4,a
      002625 60 10            [24] 1554 	jz	00130$
      002627 7B 00            [12] 1555 	mov	r3,#0x00
      002629 8C 82            [24] 1556 	mov	dpl,r4
      00262B 8B 83            [24] 1557 	mov	dph,r3
      00262D 12 20 B5         [24] 1558 	lcall	_putchar
      002630 0D               [12] 1559 	inc	r5
                                   1560 ;	life.c:268: while (1) {
      002631 BD 00 E7         [24] 1561 	cjne	r5,#0x00,00224$
      002634 0E               [12] 1562 	inc	r6
      002635 80 E4            [24] 1563 	sjmp	00224$
      002637                       1564 00130$:
                                   1565 ;	life.c:269: c = toupper(getchar());
      002637 12 20 BA         [24] 1566 	lcall	_getchar
      00263A 12 2E 35         [24] 1567 	lcall	_toupper
      00263D AE 82            [24] 1568 	mov	r6,dpl
      00263F AF 83            [24] 1569 	mov	r7,dph
      002641 78 3A            [12] 1570 	mov	r0,#_c
      002643 A6 06            [24] 1571 	mov	@r0,ar6
      002645 08               [12] 1572 	inc	r0
      002646 A6 07            [24] 1573 	mov	@r0,ar7
                                   1574 ;	life.c:270: if (i0 || (c == (int)'T')) goto terminate;
      002648 78 31            [12] 1575 	mov	r0,#_i0
      00264A E6               [12] 1576 	mov	a,@r0
      00264B 60 03            [24] 1577 	jz	00555$
      00264D 02 2B 8D         [24] 1578 	ljmp	00142$
      002650                       1579 00555$:
      002650 BE 54 06         [24] 1580 	cjne	r6,#0x54,00556$
      002653 BF 00 03         [24] 1581 	cjne	r7,#0x00,00556$
      002656 02 2B 8D         [24] 1582 	ljmp	00142$
      002659                       1583 00556$:
                                   1584 ;	life.c:271: else if ((c == (int)'L') || (c == (int)'R') || (c == (int)'P')) goto reload;
      002659 BE 4C 06         [24] 1585 	cjne	r6,#0x4c,00557$
      00265C BF 00 03         [24] 1586 	cjne	r7,#0x00,00557$
      00265F 02 23 6B         [24] 1587 	ljmp	00112$
      002662                       1588 00557$:
      002662 BE 52 06         [24] 1589 	cjne	r6,#0x52,00558$
      002665 BF 00 03         [24] 1590 	cjne	r7,#0x00,00558$
      002668 02 23 6B         [24] 1591 	ljmp	00112$
      00266B                       1592 00558$:
      00266B BE 50 06         [24] 1593 	cjne	r6,#0x50,00559$
      00266E BF 00 03         [24] 1594 	cjne	r7,#0x00,00559$
      002671 02 23 6B         [24] 1595 	ljmp	00112$
      002674                       1596 00559$:
                                   1597 ;	life.c:272: else if (c == (int)'S') break;
      002674 BE 53 C0         [24] 1598 	cjne	r6,#0x53,00130$
      002677 BF 00 BD         [24] 1599 	cjne	r7,#0x00,00130$
                                   1600 ;	life.c:96: generation[0] = 0;
      00267A 78 43            [12] 1601 	mov	r0,#_generation
      00267C 76 00            [12] 1602 	mov	@r0,#0x00
      00267E 08               [12] 1603 	inc	r0
      00267F 76 00            [12] 1604 	mov	@r0,#0x00
                                   1605 ;	life.c:97: generation[1] = 0;
      002681 78 45            [12] 1606 	mov	r0,#(_generation + 0x0002)
      002683 76 00            [12] 1607 	mov	@r0,#0x00
      002685 08               [12] 1608 	inc	r0
      002686 76 00            [12] 1609 	mov	@r0,#0x00
                                   1610 ;	life.c:277: for (i1 = 0; !i0 && !i1; ) {
      002688 78 32            [12] 1611 	mov	r0,#_i1
      00268A 76 00            [12] 1612 	mov	@r0,#0x00
      00268C                       1613 00241$:
      00268C 78 31            [12] 1614 	mov	r0,#_i0
      00268E E6               [12] 1615 	mov	a,@r0
      00268F 60 03            [24] 1616 	jz	00562$
      002691 02 2B 54         [24] 1617 	ljmp	00138$
      002694                       1618 00562$:
      002694 78 32            [12] 1619 	mov	r0,#_i1
      002696 E6               [12] 1620 	mov	a,@r0
      002697 60 03            [24] 1621 	jz	00563$
      002699 02 2B 54         [24] 1622 	ljmp	00138$
      00269C                       1623 00563$:
                                   1624 ;	life.c:278: show(1);
      00269C 75 82 01         [24] 1625 	mov	dpl,#0x01
      00269F 12 20 E7         [24] 1626 	lcall	_show
                                   1627 ;	life.c:196: fixed = 0;
      0026A2 78 3D            [12] 1628 	mov	r0,#_fixed
      0026A4 76 00            [12] 1629 	mov	@r0,#0x00
                                   1630 ;	life.c:197: cycle2 = 0;
      0026A6 78 3E            [12] 1631 	mov	r0,#_cycle2
      0026A8 76 00            [12] 1632 	mov	@r0,#0x00
                                   1633 ;	life.c:199: for (y = 0; y < H; y++) {
      0026AA 78 36            [12] 1634 	mov	r0,#_y
      0026AC E4               [12] 1635 	clr	a
      0026AD F6               [12] 1636 	mov	@r0,a
      0026AE 08               [12] 1637 	inc	r0
      0026AF F6               [12] 1638 	mov	@r0,a
      0026B0                       1639 00228$:
                                   1640 ;	life.c:200: OE76 = OE76_0 | ((y & 0x0003u) << 6);
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
                                   1653 ;	life.c:201: flashOE();
      0026C3 12 20 DB         [24] 1654 	lcall	_flashOE
                                   1655 ;	life.c:202: for (x = 0; x < W; x++) {
      0026C6 78 34            [12] 1656 	mov	r0,#_x
      0026C8 E4               [12] 1657 	clr	a
      0026C9 F6               [12] 1658 	mov	@r0,a
      0026CA 08               [12] 1659 	inc	r0
      0026CB F6               [12] 1660 	mov	@r0,a
      0026CC                       1661 00226$:
                                   1662 ;	life.c:203: n = -u[A2D(W, y, x)];
      0026CC 78 36            [12] 1663 	mov	r0,#_y
      0026CE E6               [12] 1664 	mov	a,@r0
      0026CF C0 E0            [24] 1665 	push	acc
      0026D1 08               [12] 1666 	inc	r0
      0026D2 E6               [12] 1667 	mov	a,@r0
      0026D3 C0 E0            [24] 1668 	push	acc
      0026D5 90 00 30         [24] 1669 	mov	dptr,#0x0030
      0026D8 12 2C 9A         [24] 1670 	lcall	__mulint
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
                                   1718 ;	life.c:206: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
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
      00273C 12 2E 78         [24] 1739 	lcall	__modsint
      00273F AA 82            [24] 1740 	mov	r2,dpl
      002741 AB 83            [24] 1741 	mov	r3,dph
      002743 15 81            [12] 1742 	dec	sp
      002745 15 81            [12] 1743 	dec	sp
      002747 C0 02            [24] 1744 	push	ar2
      002749 C0 03            [24] 1745 	push	ar3
      00274B 90 00 30         [24] 1746 	mov	dptr,#0x0030
      00274E 12 2C 9A         [24] 1747 	lcall	__mulint
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
      00277A 12 2E 78         [24] 1774 	lcall	__modsint
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
                                   1800 ;	life.c:208: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
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
      0027CE 12 2E 78         [24] 1831 	lcall	__modsint
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
                                   1866 ;	life.c:210: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
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
      00281E 12 2E 78         [24] 1885 	lcall	__modsint
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
                                   1913 ;	life.c:212: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
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
      002876 12 2E 78         [24] 1944 	lcall	__modsint
      002879 AA 82            [24] 1945 	mov	r2,dpl
      00287B AB 83            [24] 1946 	mov	r3,dph
      00287D 15 81            [12] 1947 	dec	sp
      00287F 15 81            [12] 1948 	dec	sp
      002881 C0 02            [24] 1949 	push	ar2
      002883 C0 03            [24] 1950 	push	ar3
      002885 90 00 30         [24] 1951 	mov	dptr,#0x0030
      002888 12 2C 9A         [24] 1952 	lcall	__mulint
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
                                   1989 ;	life.c:214: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
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
                                   2017 ;	life.c:216: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
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
                                   2044 ;	life.c:218: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
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
      002927 12 2E 78         [24] 2065 	lcall	__modsint
      00292A AA 82            [24] 2066 	mov	r2,dpl
      00292C AB 83            [24] 2067 	mov	r3,dph
      00292E 15 81            [12] 2068 	dec	sp
      002930 15 81            [12] 2069 	dec	sp
      002932 C0 02            [24] 2070 	push	ar2
      002934 C0 03            [24] 2071 	push	ar3
      002936 90 00 30         [24] 2072 	mov	dptr,#0x0030
      002939 12 2C 9A         [24] 2073 	lcall	__mulint
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
                                   2105 ;	life.c:220: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
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
                                   2130 ;	life.c:221: y1 = 1; x1 = 1;
      00298B 78 41            [12] 2131 	mov	r0,#_y1
      00298D 76 01            [12] 2132 	mov	@r0,#0x01
      00298F 08               [12] 2133 	inc	r0
      002990 76 00            [12] 2134 	mov	@r0,#0x00
      002992 78 3F            [12] 2135 	mov	r0,#_x1
      002994 76 01            [12] 2136 	mov	@r0,#0x01
      002996 08               [12] 2137 	inc	r0
      002997 76 00            [12] 2138 	mov	@r0,#0x00
                                   2139 ;	life.c:222: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
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
                                   2157 ;	life.c:224: nu[A2D(W, y, x)] = (n == 3) || ((n == 2) && u[A2D(W, y, x)]);
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
                                   2210 ;	life.c:225: cycle2 |= pu[A2D(W, y, x)] ^ nu[A2D(W, y, x)];
      0029F5 78 36            [12] 2211 	mov	r0,#_y
      0029F7 E6               [12] 2212 	mov	a,@r0
      0029F8 C0 E0            [24] 2213 	push	acc
      0029FA 08               [12] 2214 	inc	r0
      0029FB E6               [12] 2215 	mov	a,@r0
      0029FC C0 E0            [24] 2216 	push	acc
      0029FE 90 00 30         [24] 2217 	mov	dptr,#0x0030
      002A01 12 2C 9A         [24] 2218 	lcall	__mulint
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
                                   2251 ;	life.c:226: fixed |= u[A2D(W, y, x)] ^ nu[A2D(W, y, x)];
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
                                   2265 ;	life.c:202: for (x = 0; x < W; x++) {
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
                                   2283 ;	life.c:199: for (y = 0; y < H; y++) {
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
                                   2301 ;	life.c:230: cycle2 = !cycle2;
      002A76 78 3E            [12] 2302 	mov	r0,#_cycle2
      002A78 E6               [12] 2303 	mov	a,@r0
      002A79 B4 01 00         [24] 2304 	cjne	a,#0x01,00572$
      002A7C                       2305 00572$:
      002A7C 92 00            [24] 2306 	mov	b0,c
      002A7E 78 3E            [12] 2307 	mov	r0,#_cycle2
      002A80 E4               [12] 2308 	clr	a
      002A81 33               [12] 2309 	rlc	a
      002A82 F6               [12] 2310 	mov	@r0,a
                                   2311 ;	life.c:231: fixed = !fixed;
      002A83 78 3D            [12] 2312 	mov	r0,#_fixed
      002A85 E6               [12] 2313 	mov	a,@r0
      002A86 B4 01 00         [24] 2314 	cjne	a,#0x01,00573$
      002A89                       2315 00573$:
      002A89 92 00            [24] 2316 	mov	b0,c
      002A8B 78 3D            [12] 2317 	mov	r0,#_fixed
      002A8D E4               [12] 2318 	clr	a
      002A8E 33               [12] 2319 	rlc	a
      002A8F F6               [12] 2320 	mov	@r0,a
                                   2321 ;	life.c:233: memcpy(pu, u, sizeof (u));
      002A90 E4               [12] 2322 	clr	a
      002A91 C0 E0            [24] 2323 	push	acc
      002A93 74 24            [12] 2324 	mov	a,#0x24
      002A95 C0 E0            [24] 2325 	push	acc
      002A97 74 00            [12] 2326 	mov	a,#_u
      002A99 C0 E0            [24] 2327 	push	acc
      002A9B 74 88            [12] 2328 	mov	a,#(_u >> 8)
      002A9D C0 E0            [24] 2329 	push	acc
      002A9F E4               [12] 2330 	clr	a
      002AA0 C0 E0            [24] 2331 	push	acc
      002AA2 90 64 00         [24] 2332 	mov	dptr,#_pu
      002AA5 75 F0 00         [24] 2333 	mov	b,#0x00
      002AA8 12 2D 38         [24] 2334 	lcall	___memcpy
      002AAB E5 81            [12] 2335 	mov	a,sp
      002AAD 24 FB            [12] 2336 	add	a,#0xfb
      002AAF F5 81            [12] 2337 	mov	sp,a
                                   2338 ;	life.c:234: memcpy(u, nu, sizeof (nu));
      002AB1 E4               [12] 2339 	clr	a
      002AB2 C0 E0            [24] 2340 	push	acc
      002AB4 74 24            [12] 2341 	mov	a,#0x24
      002AB6 C0 E0            [24] 2342 	push	acc
      002AB8 74 00            [12] 2343 	mov	a,#_nu
      002ABA C0 E0            [24] 2344 	push	acc
      002ABC 74 AC            [12] 2345 	mov	a,#(_nu >> 8)
      002ABE C0 E0            [24] 2346 	push	acc
      002AC0 E4               [12] 2347 	clr	a
      002AC1 C0 E0            [24] 2348 	push	acc
      002AC3 90 88 00         [24] 2349 	mov	dptr,#_u
      002AC6 75 F0 00         [24] 2350 	mov	b,#0x00
      002AC9 12 2D 38         [24] 2351 	lcall	___memcpy
      002ACC E5 81            [12] 2352 	mov	a,sp
      002ACE 24 FB            [12] 2353 	add	a,#0xfb
      002AD0 F5 81            [12] 2354 	mov	sp,a
                                   2355 ;	life.c:280: if (fixed || cycle2) {
      002AD2 78 3D            [12] 2356 	mov	r0,#_fixed
      002AD4 E6               [12] 2357 	mov	a,@r0
      002AD5 70 08            [24] 2358 	jnz	00135$
      002AD7 78 3E            [12] 2359 	mov	r0,#_cycle2
      002AD9 E6               [12] 2360 	mov	a,@r0
      002ADA 70 03            [24] 2361 	jnz	00575$
      002ADC 02 26 8C         [24] 2362 	ljmp	00241$
      002ADF                       2363 00575$:
      002ADF                       2364 00135$:
                                   2365 ;	life.c:281: printstr("DONE ");
      002ADF 7D E0            [12] 2366 	mov	r5,#___str_7
      002AE1 7E 2F            [12] 2367 	mov	r6,#(___str_7 >> 8)
      002AE3 7F 80            [12] 2368 	mov	r7,#0x80
                                   2369 ;	life.c:53: return;
      002AE5                       2370 00231$:
                                   2371 ;	life.c:51: for (; *s; s++) putchar(*s);
      002AE5 8D 82            [24] 2372 	mov	dpl,r5
      002AE7 8E 83            [24] 2373 	mov	dph,r6
      002AE9 8F F0            [24] 2374 	mov	b,r7
      002AEB 12 2E 5C         [24] 2375 	lcall	__gptrget
      002AEE FC               [12] 2376 	mov	r4,a
      002AEF 60 10            [24] 2377 	jz	00192$
      002AF1 7B 00            [12] 2378 	mov	r3,#0x00
      002AF3 8C 82            [24] 2379 	mov	dpl,r4
      002AF5 8B 83            [24] 2380 	mov	dph,r3
      002AF7 12 20 B5         [24] 2381 	lcall	_putchar
      002AFA 0D               [12] 2382 	inc	r5
                                   2383 ;	life.c:281: printstr("DONE ");
      002AFB BD 00 E7         [24] 2384 	cjne	r5,#0x00,00231$
      002AFE 0E               [12] 2385 	inc	r6
      002AFF 80 E4            [24] 2386 	sjmp	00231$
      002B01                       2387 00192$:
                                   2388 ;	life.c:282: OE76 = OE76_0;
      002B01 78 33            [12] 2389 	mov	r0,#_OE76
      002B03 76 3F            [12] 2390 	mov	@r0,#0x3f
                                   2391 ;	life.c:283: flashOE();
      002B05 12 20 DB         [24] 2392 	lcall	_flashOE
                                   2393 ;	life.c:284: if (fixed) printstr("FIXED\r\n");
      002B08 78 3D            [12] 2394 	mov	r0,#_fixed
      002B0A E6               [12] 2395 	mov	a,@r0
      002B0B 60 22            [24] 2396 	jz	00133$
      002B0D 7D E6            [12] 2397 	mov	r5,#___str_8
      002B0F 7E 2F            [12] 2398 	mov	r6,#(___str_8 >> 8)
      002B11 7F 80            [12] 2399 	mov	r7,#0x80
                                   2400 ;	life.c:53: return;
      002B13                       2401 00234$:
                                   2402 ;	life.c:51: for (; *s; s++) putchar(*s);
      002B13 8D 82            [24] 2403 	mov	dpl,r5
      002B15 8E 83            [24] 2404 	mov	dph,r6
      002B17 8F F0            [24] 2405 	mov	b,r7
      002B19 12 2E 5C         [24] 2406 	lcall	__gptrget
      002B1C FC               [12] 2407 	mov	r4,a
      002B1D 60 32            [24] 2408 	jz	00134$
      002B1F 7B 00            [12] 2409 	mov	r3,#0x00
      002B21 8C 82            [24] 2410 	mov	dpl,r4
      002B23 8B 83            [24] 2411 	mov	dph,r3
      002B25 12 20 B5         [24] 2412 	lcall	_putchar
      002B28 0D               [12] 2413 	inc	r5
                                   2414 ;	life.c:284: if (fixed) printstr("FIXED\r\n");
      002B29 BD 00 E7         [24] 2415 	cjne	r5,#0x00,00234$
      002B2C 0E               [12] 2416 	inc	r6
      002B2D 80 E4            [24] 2417 	sjmp	00234$
      002B2F                       2418 00133$:
                                   2419 ;	life.c:285: else printstr("CYCLE2\r\n");
      002B2F 7D EE            [12] 2420 	mov	r5,#___str_9
      002B31 7E 2F            [12] 2421 	mov	r6,#(___str_9 >> 8)
      002B33 7F 80            [12] 2422 	mov	r7,#0x80
                                   2423 ;	life.c:53: return;
      002B35                       2424 00237$:
                                   2425 ;	life.c:51: for (; *s; s++) putchar(*s);
      002B35 8D 82            [24] 2426 	mov	dpl,r5
      002B37 8E 83            [24] 2427 	mov	dph,r6
      002B39 8F F0            [24] 2428 	mov	b,r7
      002B3B 12 2E 5C         [24] 2429 	lcall	__gptrget
      002B3E FC               [12] 2430 	mov	r4,a
      002B3F 60 10            [24] 2431 	jz	00134$
      002B41 7B 00            [12] 2432 	mov	r3,#0x00
      002B43 8C 82            [24] 2433 	mov	dpl,r4
      002B45 8B 83            [24] 2434 	mov	dph,r3
      002B47 12 20 B5         [24] 2435 	lcall	_putchar
      002B4A 0D               [12] 2436 	inc	r5
                                   2437 ;	life.c:285: else printstr("CYCLE2\r\n");
      002B4B BD 00 E7         [24] 2438 	cjne	r5,#0x00,00237$
      002B4E 0E               [12] 2439 	inc	r6
      002B4F 80 E4            [24] 2440 	sjmp	00237$
      002B51                       2441 00134$:
                                   2442 ;	life.c:286: (void)getchar();
      002B51 12 20 BA         [24] 2443 	lcall	_getchar
                                   2444 ;	life.c:287: break;
      002B54                       2445 00138$:
                                   2446 ;	life.c:291: if (i1) {
      002B54 78 32            [12] 2447 	mov	r0,#_i1
      002B56 E6               [12] 2448 	mov	a,@r0
      002B57 60 2C            [24] 2449 	jz	00247$
                                   2450 ;	life.c:292: printstr("BREAK\r\n");
      002B59 7D F7            [12] 2451 	mov	r5,#___str_10
      002B5B 7E 2F            [12] 2452 	mov	r6,#(___str_10 >> 8)
      002B5D 7F 80            [12] 2453 	mov	r7,#0x80
                                   2454 ;	life.c:53: return;
      002B5F                       2455 00244$:
                                   2456 ;	life.c:51: for (; *s; s++) putchar(*s);
      002B5F 8D 82            [24] 2457 	mov	dpl,r5
      002B61 8E 83            [24] 2458 	mov	dph,r6
      002B63 8F F0            [24] 2459 	mov	b,r7
      002B65 12 2E 5C         [24] 2460 	lcall	__gptrget
      002B68 FC               [12] 2461 	mov	r4,a
      002B69 60 10            [24] 2462 	jz	00198$
      002B6B 7B 00            [12] 2463 	mov	r3,#0x00
      002B6D 8C 82            [24] 2464 	mov	dpl,r4
      002B6F 8B 83            [24] 2465 	mov	dph,r3
      002B71 12 20 B5         [24] 2466 	lcall	_putchar
      002B74 0D               [12] 2467 	inc	r5
                                   2468 ;	life.c:292: printstr("BREAK\r\n");
      002B75 BD 00 E7         [24] 2469 	cjne	r5,#0x00,00244$
      002B78 0E               [12] 2470 	inc	r6
      002B79 80 E4            [24] 2471 	sjmp	00244$
      002B7B                       2472 00198$:
                                   2473 ;	life.c:293: OE76 = OE76_0;
      002B7B 78 33            [12] 2474 	mov	r0,#_OE76
      002B7D 76 3F            [12] 2475 	mov	@r0,#0x3f
                                   2476 ;	life.c:294: flashOE();
      002B7F 12 20 DB         [24] 2477 	lcall	_flashOE
                                   2478 ;	life.c:295: (void)getchar();
      002B82 12 20 BA         [24] 2479 	lcall	_getchar
      002B85                       2480 00247$:
                                   2481 ;	life.c:252: for (i0 = 0; !i0; ) {	
      002B85 78 31            [12] 2482 	mov	r0,#_i0
      002B87 E6               [12] 2483 	mov	a,@r0
      002B88 70 03            [24] 2484 	jnz	00586$
      002B8A 02 23 11         [24] 2485 	ljmp	00246$
      002B8D                       2486 00586$:
                                   2487 ;	life.c:299: terminate:
      002B8D                       2488 00142$:
                                   2489 ;	life.c:300: EA = 0;
                                   2490 ;	assignBit
      002B8D C2 AF            [12] 2491 	clr	_EA
                                   2492 ;	life.c:301: printstr("TERM\r\n");
      002B8F 7D FF            [12] 2493 	mov	r5,#___str_11
      002B91 7E 2F            [12] 2494 	mov	r6,#(___str_11 >> 8)
      002B93 7F 80            [12] 2495 	mov	r7,#0x80
                                   2496 ;	life.c:53: return;
      002B95                       2497 00249$:
                                   2498 ;	life.c:51: for (; *s; s++) putchar(*s);
      002B95 8D 82            [24] 2499 	mov	dpl,r5
      002B97 8E 83            [24] 2500 	mov	dph,r6
      002B99 8F F0            [24] 2501 	mov	b,r7
      002B9B 12 2E 5C         [24] 2502 	lcall	__gptrget
      002B9E FC               [12] 2503 	mov	r4,a
      002B9F 60 10            [24] 2504 	jz	00200$
      002BA1 7B 00            [12] 2505 	mov	r3,#0x00
      002BA3 8C 82            [24] 2506 	mov	dpl,r4
      002BA5 8B 83            [24] 2507 	mov	dph,r3
      002BA7 12 20 B5         [24] 2508 	lcall	_putchar
      002BAA 0D               [12] 2509 	inc	r5
                                   2510 ;	life.c:301: printstr("TERM\r\n");
      002BAB BD 00 E7         [24] 2511 	cjne	r5,#0x00,00249$
      002BAE 0E               [12] 2512 	inc	r6
      002BAF 80 E4            [24] 2513 	sjmp	00249$
      002BB1                       2514 00200$:
                                   2515 ;	life.c:302: (void)getchar();
      002BB1 12 20 BA         [24] 2516 	lcall	_getchar
                                   2517 ;	life.c:306: __endasm;
      002BB4 02 00 00         [24] 2518 	ljmp	0
                                   2519 ;	life.c:307: }
      002BB7 85 10 81         [24] 2520 	mov	sp,_bp
      002BBA D0 10            [24] 2521 	pop	_bp
      002BBC 22               [24] 2522 	ret
                                   2523 	.area CSEG    (CODE)
                                   2524 	.area CONST   (CODE)
                                   2525 	.area CONST   (CODE)
      002F84                       2526 ___str_0:
      002F84 1B                    2527 	.db 0x1b
      002F85 5B 32 4A              2528 	.ascii "[2J"
      002F88 1B                    2529 	.db 0x1b
      002F89 5B 6D 47 45 4E 20     2530 	.ascii "[mGEN "
      002F8F 00                    2531 	.db 0x00
                                   2532 	.area CSEG    (CODE)
                                   2533 	.area CONST   (CODE)
      002F90                       2534 ___str_1:
      002F90 0D                    2535 	.db 0x0d
      002F91 0A                    2536 	.db 0x0a
      002F92 00                    2537 	.db 0x00
                                   2538 	.area CSEG    (CODE)
                                   2539 	.area CONST   (CODE)
      002F93                       2540 ___str_2:
      002F93 4C 4F 41 44 20 30 20  2541 	.ascii "LOAD 0 1 ~ # <"
             31 20 7E 20 23 20 3C
      002FA1 00                    2542 	.db 0x00
                                   2543 	.area CSEG    (CODE)
                                   2544 	.area CONST   (CODE)
      002FA2                       2545 ___str_3:
      002FA2 3E                    2546 	.ascii ">"
      002FA3 0D                    2547 	.db 0x0d
      002FA4 0A                    2548 	.db 0x0a
      002FA5 00                    2549 	.db 0x00
                                   2550 	.area CSEG    (CODE)
                                   2551 	.area CONST   (CODE)
      002FA6                       2552 ___str_4:
      002FA6 52 41 4E 44 4F 4D     2553 	.ascii "RANDOM"
      002FAC 00                    2554 	.db 0x00
                                   2555 	.area CSEG    (CODE)
                                   2556 	.area CONST   (CODE)
      002FAD                       2557 ___str_5:
      002FAD 1B                    2558 	.db 0x1b
      002FAE 5B 32 4A              2559 	.ascii "[2J"
      002FB1 1B                    2560 	.db 0x1b
      002FB2 5B 3F 32 35 6C        2561 	.ascii "[?25l"
      002FB7 1B                    2562 	.db 0x1b
      002FB8 5B 6D 4C 49 46 45 20  2563 	.ascii "[mLIFE INIT T L R P"
             49 4E 49 54 20 54 20
             4C 20 52 20 50
      002FCB 0D                    2564 	.db 0x0d
      002FCC 0A                    2565 	.db 0x0a
      002FCD 00                    2566 	.db 0x00
                                   2567 	.area CSEG    (CODE)
                                   2568 	.area CONST   (CODE)
      002FCE                       2569 ___str_6:
      002FCE 52 45 41 44 59 20 54  2570 	.ascii "READY T L R P S"
             20 4C 20 52 20 50 20
             53
      002FDD 0D                    2571 	.db 0x0d
      002FDE 0A                    2572 	.db 0x0a
      002FDF 00                    2573 	.db 0x00
                                   2574 	.area CSEG    (CODE)
                                   2575 	.area CONST   (CODE)
      002FE0                       2576 ___str_7:
      002FE0 44 4F 4E 45 20        2577 	.ascii "DONE "
      002FE5 00                    2578 	.db 0x00
                                   2579 	.area CSEG    (CODE)
                                   2580 	.area CONST   (CODE)
      002FE6                       2581 ___str_8:
      002FE6 46 49 58 45 44        2582 	.ascii "FIXED"
      002FEB 0D                    2583 	.db 0x0d
      002FEC 0A                    2584 	.db 0x0a
      002FED 00                    2585 	.db 0x00
                                   2586 	.area CSEG    (CODE)
                                   2587 	.area CONST   (CODE)
      002FEE                       2588 ___str_9:
      002FEE 43 59 43 4C 45 32     2589 	.ascii "CYCLE2"
      002FF4 0D                    2590 	.db 0x0d
      002FF5 0A                    2591 	.db 0x0a
      002FF6 00                    2592 	.db 0x00
                                   2593 	.area CSEG    (CODE)
                                   2594 	.area CONST   (CODE)
      002FF7                       2595 ___str_10:
      002FF7 42 52 45 41 4B        2596 	.ascii "BREAK"
      002FFC 0D                    2597 	.db 0x0d
      002FFD 0A                    2598 	.db 0x0a
      002FFE 00                    2599 	.db 0x00
                                   2600 	.area CSEG    (CODE)
                                   2601 	.area CONST   (CODE)
      002FFF                       2602 ___str_11:
      002FFF 54 45 52 4D           2603 	.ascii "TERM"
      003003 0D                    2604 	.db 0x0d
      003004 0A                    2605 	.db 0x0a
      003005 00                    2606 	.db 0x00
                                   2607 	.area CSEG    (CODE)
                                   2608 	.area XINIT   (CODE)
                                   2609 	.area CABS    (ABS,CODE)
