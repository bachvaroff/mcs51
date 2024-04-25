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
                                     15 	.globl _getchar_poll
                                     16 	.globl _getchar
                                     17 	.globl _putchar
                                     18 	.globl _toupper
                                     19 	.globl ___memcpy
                                     20 	.globl _memset
                                     21 	.globl _srand
                                     22 	.globl _rand
                                     23 	.globl _CY
                                     24 	.globl _AC
                                     25 	.globl _F0
                                     26 	.globl _RS1
                                     27 	.globl _RS0
                                     28 	.globl _OV
                                     29 	.globl _FL
                                     30 	.globl _P
                                     31 	.globl _TF2
                                     32 	.globl _EXF2
                                     33 	.globl _RCLK
                                     34 	.globl _TCLK
                                     35 	.globl _EXEN2
                                     36 	.globl _TR2
                                     37 	.globl _C_T2
                                     38 	.globl _CP_RL2
                                     39 	.globl _T2CON_7
                                     40 	.globl _T2CON_6
                                     41 	.globl _T2CON_5
                                     42 	.globl _T2CON_4
                                     43 	.globl _T2CON_3
                                     44 	.globl _T2CON_2
                                     45 	.globl _T2CON_1
                                     46 	.globl _T2CON_0
                                     47 	.globl _PT2
                                     48 	.globl _PS
                                     49 	.globl _PT1
                                     50 	.globl _PX1
                                     51 	.globl _PT0
                                     52 	.globl _PX0
                                     53 	.globl _RD
                                     54 	.globl _WR
                                     55 	.globl _T1
                                     56 	.globl _T0
                                     57 	.globl _INT1
                                     58 	.globl _INT0
                                     59 	.globl _TXD
                                     60 	.globl _RXD
                                     61 	.globl _P3_7
                                     62 	.globl _P3_6
                                     63 	.globl _P3_5
                                     64 	.globl _P3_4
                                     65 	.globl _P3_3
                                     66 	.globl _P3_2
                                     67 	.globl _P3_1
                                     68 	.globl _P3_0
                                     69 	.globl _EA
                                     70 	.globl _ET2
                                     71 	.globl _ES
                                     72 	.globl _ET1
                                     73 	.globl _EX1
                                     74 	.globl _ET0
                                     75 	.globl _EX0
                                     76 	.globl _P2_7
                                     77 	.globl _P2_6
                                     78 	.globl _P2_5
                                     79 	.globl _P2_4
                                     80 	.globl _P2_3
                                     81 	.globl _P2_2
                                     82 	.globl _P2_1
                                     83 	.globl _P2_0
                                     84 	.globl _SM0
                                     85 	.globl _SM1
                                     86 	.globl _SM2
                                     87 	.globl _REN
                                     88 	.globl _TB8
                                     89 	.globl _RB8
                                     90 	.globl _TI
                                     91 	.globl _RI
                                     92 	.globl _T2EX
                                     93 	.globl _T2
                                     94 	.globl _P1_7
                                     95 	.globl _P1_6
                                     96 	.globl _P1_5
                                     97 	.globl _P1_4
                                     98 	.globl _P1_3
                                     99 	.globl _P1_2
                                    100 	.globl _P1_1
                                    101 	.globl _P1_0
                                    102 	.globl _TF1
                                    103 	.globl _TR1
                                    104 	.globl _TF0
                                    105 	.globl _TR0
                                    106 	.globl _IE1
                                    107 	.globl _IT1
                                    108 	.globl _IE0
                                    109 	.globl _IT0
                                    110 	.globl _P0_7
                                    111 	.globl _P0_6
                                    112 	.globl _P0_5
                                    113 	.globl _P0_4
                                    114 	.globl _P0_3
                                    115 	.globl _P0_2
                                    116 	.globl _P0_1
                                    117 	.globl _P0_0
                                    118 	.globl _B
                                    119 	.globl _A
                                    120 	.globl _ACC
                                    121 	.globl _PSW
                                    122 	.globl _TH2
                                    123 	.globl _TL2
                                    124 	.globl _RCAP2H
                                    125 	.globl _RCAP2L
                                    126 	.globl _T2MOD
                                    127 	.globl _T2CON
                                    128 	.globl _IP
                                    129 	.globl _P3
                                    130 	.globl _IE
                                    131 	.globl _P2
                                    132 	.globl _SBUF
                                    133 	.globl _SCON
                                    134 	.globl _P1
                                    135 	.globl _TH1
                                    136 	.globl _TH0
                                    137 	.globl _TL1
                                    138 	.globl _TL0
                                    139 	.globl _TMOD
                                    140 	.globl _TCON
                                    141 	.globl _PCON
                                    142 	.globl _DPH
                                    143 	.globl _DPL
                                    144 	.globl _SP
                                    145 	.globl _P0
                                    146 ;--------------------------------------------------------
                                    147 ; special function registers
                                    148 ;--------------------------------------------------------
                                    149 	.area RSEG    (ABS,DATA)
      000000                        150 	.org 0x0000
                           000080   151 _P0	=	0x0080
                           000081   152 _SP	=	0x0081
                           000082   153 _DPL	=	0x0082
                           000083   154 _DPH	=	0x0083
                           000087   155 _PCON	=	0x0087
                           000088   156 _TCON	=	0x0088
                           000089   157 _TMOD	=	0x0089
                           00008A   158 _TL0	=	0x008a
                           00008B   159 _TL1	=	0x008b
                           00008C   160 _TH0	=	0x008c
                           00008D   161 _TH1	=	0x008d
                           000090   162 _P1	=	0x0090
                           000098   163 _SCON	=	0x0098
                           000099   164 _SBUF	=	0x0099
                           0000A0   165 _P2	=	0x00a0
                           0000A8   166 _IE	=	0x00a8
                           0000B0   167 _P3	=	0x00b0
                           0000B8   168 _IP	=	0x00b8
                           0000C8   169 _T2CON	=	0x00c8
                           0000C9   170 _T2MOD	=	0x00c9
                           0000CA   171 _RCAP2L	=	0x00ca
                           0000CB   172 _RCAP2H	=	0x00cb
                           0000CC   173 _TL2	=	0x00cc
                           0000CD   174 _TH2	=	0x00cd
                           0000D0   175 _PSW	=	0x00d0
                           0000E0   176 _ACC	=	0x00e0
                           0000E0   177 _A	=	0x00e0
                           0000F0   178 _B	=	0x00f0
                                    179 ;--------------------------------------------------------
                                    180 ; special function bits
                                    181 ;--------------------------------------------------------
                                    182 	.area RSEG    (ABS,DATA)
      000000                        183 	.org 0x0000
                           000080   184 _P0_0	=	0x0080
                           000081   185 _P0_1	=	0x0081
                           000082   186 _P0_2	=	0x0082
                           000083   187 _P0_3	=	0x0083
                           000084   188 _P0_4	=	0x0084
                           000085   189 _P0_5	=	0x0085
                           000086   190 _P0_6	=	0x0086
                           000087   191 _P0_7	=	0x0087
                           000088   192 _IT0	=	0x0088
                           000089   193 _IE0	=	0x0089
                           00008A   194 _IT1	=	0x008a
                           00008B   195 _IE1	=	0x008b
                           00008C   196 _TR0	=	0x008c
                           00008D   197 _TF0	=	0x008d
                           00008E   198 _TR1	=	0x008e
                           00008F   199 _TF1	=	0x008f
                           000090   200 _P1_0	=	0x0090
                           000091   201 _P1_1	=	0x0091
                           000092   202 _P1_2	=	0x0092
                           000093   203 _P1_3	=	0x0093
                           000094   204 _P1_4	=	0x0094
                           000095   205 _P1_5	=	0x0095
                           000096   206 _P1_6	=	0x0096
                           000097   207 _P1_7	=	0x0097
                           000090   208 _T2	=	0x0090
                           000091   209 _T2EX	=	0x0091
                           000098   210 _RI	=	0x0098
                           000099   211 _TI	=	0x0099
                           00009A   212 _RB8	=	0x009a
                           00009B   213 _TB8	=	0x009b
                           00009C   214 _REN	=	0x009c
                           00009D   215 _SM2	=	0x009d
                           00009E   216 _SM1	=	0x009e
                           00009F   217 _SM0	=	0x009f
                           0000A0   218 _P2_0	=	0x00a0
                           0000A1   219 _P2_1	=	0x00a1
                           0000A2   220 _P2_2	=	0x00a2
                           0000A3   221 _P2_3	=	0x00a3
                           0000A4   222 _P2_4	=	0x00a4
                           0000A5   223 _P2_5	=	0x00a5
                           0000A6   224 _P2_6	=	0x00a6
                           0000A7   225 _P2_7	=	0x00a7
                           0000A8   226 _EX0	=	0x00a8
                           0000A9   227 _ET0	=	0x00a9
                           0000AA   228 _EX1	=	0x00aa
                           0000AB   229 _ET1	=	0x00ab
                           0000AC   230 _ES	=	0x00ac
                           0000AD   231 _ET2	=	0x00ad
                           0000AF   232 _EA	=	0x00af
                           0000B0   233 _P3_0	=	0x00b0
                           0000B1   234 _P3_1	=	0x00b1
                           0000B2   235 _P3_2	=	0x00b2
                           0000B3   236 _P3_3	=	0x00b3
                           0000B4   237 _P3_4	=	0x00b4
                           0000B5   238 _P3_5	=	0x00b5
                           0000B6   239 _P3_6	=	0x00b6
                           0000B7   240 _P3_7	=	0x00b7
                           0000B0   241 _RXD	=	0x00b0
                           0000B1   242 _TXD	=	0x00b1
                           0000B2   243 _INT0	=	0x00b2
                           0000B3   244 _INT1	=	0x00b3
                           0000B4   245 _T0	=	0x00b4
                           0000B5   246 _T1	=	0x00b5
                           0000B6   247 _WR	=	0x00b6
                           0000B7   248 _RD	=	0x00b7
                           0000B8   249 _PX0	=	0x00b8
                           0000B9   250 _PT0	=	0x00b9
                           0000BA   251 _PX1	=	0x00ba
                           0000BB   252 _PT1	=	0x00bb
                           0000BC   253 _PS	=	0x00bc
                           0000BD   254 _PT2	=	0x00bd
                           0000C8   255 _T2CON_0	=	0x00c8
                           0000C9   256 _T2CON_1	=	0x00c9
                           0000CA   257 _T2CON_2	=	0x00ca
                           0000CB   258 _T2CON_3	=	0x00cb
                           0000CC   259 _T2CON_4	=	0x00cc
                           0000CD   260 _T2CON_5	=	0x00cd
                           0000CE   261 _T2CON_6	=	0x00ce
                           0000CF   262 _T2CON_7	=	0x00cf
                           0000C8   263 _CP_RL2	=	0x00c8
                           0000C9   264 _C_T2	=	0x00c9
                           0000CA   265 _TR2	=	0x00ca
                           0000CB   266 _EXEN2	=	0x00cb
                           0000CC   267 _TCLK	=	0x00cc
                           0000CD   268 _RCLK	=	0x00cd
                           0000CE   269 _EXF2	=	0x00ce
                           0000CF   270 _TF2	=	0x00cf
                           0000D0   271 _P	=	0x00d0
                           0000D1   272 _FL	=	0x00d1
                           0000D2   273 _OV	=	0x00d2
                           0000D3   274 _RS0	=	0x00d3
                           0000D4   275 _RS1	=	0x00d4
                           0000D5   276 _F0	=	0x00d5
                           0000D6   277 _AC	=	0x00d6
                           0000D7   278 _CY	=	0x00d7
                                    279 ;--------------------------------------------------------
                                    280 ; overlayable register banks
                                    281 ;--------------------------------------------------------
                                    282 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        283 	.ds 8
                                    284 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        285 	.ds 8
                                    286 ;--------------------------------------------------------
                                    287 ; overlayable bit register bank
                                    288 ;--------------------------------------------------------
                                    289 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        290 bits:
      000020                        291 	.ds 1
                           008000   292 	b0 = bits[0]
                           008100   293 	b1 = bits[1]
                           008200   294 	b2 = bits[2]
                           008300   295 	b3 = bits[3]
                           008400   296 	b4 = bits[4]
                           008500   297 	b5 = bits[5]
                           008600   298 	b6 = bits[6]
                           008700   299 	b7 = bits[7]
                                    300 ;--------------------------------------------------------
                                    301 ; internal ram data
                                    302 ;--------------------------------------------------------
                                    303 	.area DSEG    (DATA)
                                    304 ;--------------------------------------------------------
                                    305 ; overlayable items in internal ram 
                                    306 ;--------------------------------------------------------
                                    307 ;--------------------------------------------------------
                                    308 ; Stack segment in internal ram 
                                    309 ;--------------------------------------------------------
                                    310 	.area	SSEG
      000047                        311 __start__stack:
      000047                        312 	.ds	1
                                    313 
                                    314 ;--------------------------------------------------------
                                    315 ; indirectly addressable internal ram data
                                    316 ;--------------------------------------------------------
                                    317 	.area ISEG    (DATA)
      000021                        318 _digits:
      000021                        319 	.ds 16
      000031                        320 _i0:
      000031                        321 	.ds 1
      000032                        322 _i1:
      000032                        323 	.ds 1
      000033                        324 _OE76:
      000033                        325 	.ds 1
      000034                        326 _x:
      000034                        327 	.ds 2
      000036                        328 _y:
      000036                        329 	.ds 2
      000038                        330 _j:
      000038                        331 	.ds 2
      00003A                        332 _c:
      00003A                        333 	.ds 2
      00003C                        334 _n:
      00003C                        335 	.ds 1
      00003D                        336 _fixed:
      00003D                        337 	.ds 1
      00003E                        338 _cycle2:
      00003E                        339 	.ds 1
      00003F                        340 _x1:
      00003F                        341 	.ds 2
      000041                        342 _y1:
      000041                        343 	.ds 2
      000043                        344 _generation:
      000043                        345 	.ds 4
                                    346 ;--------------------------------------------------------
                                    347 ; absolute internal ram data
                                    348 ;--------------------------------------------------------
                                    349 	.area IABS    (ABS,DATA)
                                    350 	.area IABS    (ABS,DATA)
                                    351 ;--------------------------------------------------------
                                    352 ; bit data
                                    353 ;--------------------------------------------------------
                                    354 	.area BSEG    (BIT)
                                    355 ;--------------------------------------------------------
                                    356 ; paged external ram data
                                    357 ;--------------------------------------------------------
                                    358 	.area PSEG    (PAG,XDATA)
                                    359 ;--------------------------------------------------------
                                    360 ; external ram data
                                    361 ;--------------------------------------------------------
                                    362 	.area XSEG    (XDATA)
                           008000   363 _RND	=	0x8000
                           00F006   364 _OEreg	=	0xf006
      004000                        365 _iu:
      004000                        366 	.ds 9216
      006400                        367 _pu:
      006400                        368 	.ds 9216
      008800                        369 _u:
      008800                        370 	.ds 9216
      00AC00                        371 _nu:
      00AC00                        372 	.ds 9216
                                    373 ;--------------------------------------------------------
                                    374 ; absolute external ram data
                                    375 ;--------------------------------------------------------
                                    376 	.area XABS    (ABS,XDATA)
                                    377 ;--------------------------------------------------------
                                    378 ; external initialized ram data
                                    379 ;--------------------------------------------------------
                                    380 	.area XISEG   (XDATA)
                                    381 	.area HOME    (CODE)
                                    382 	.area GSINIT0 (CODE)
                                    383 	.area GSINIT1 (CODE)
                                    384 	.area GSINIT2 (CODE)
                                    385 	.area GSINIT3 (CODE)
                                    386 	.area GSINIT4 (CODE)
                                    387 	.area GSINIT5 (CODE)
                                    388 	.area GSINIT  (CODE)
                                    389 	.area GSFINAL (CODE)
                                    390 	.area CSEG    (CODE)
                                    391 ;--------------------------------------------------------
                                    392 ; interrupt vector 
                                    393 ;--------------------------------------------------------
                                    394 	.area HOME    (CODE)
      002000                        395 __interrupt_vect:
      002000 02 20 19         [24]  396 	ljmp	__sdcc_gsinit_startup
      002003 02 20 E6         [24]  397 	ljmp	_int0
      002006                        398 	.ds	5
      00200B 32               [24]  399 	reti
      00200C                        400 	.ds	7
      002013 02 20 F2         [24]  401 	ljmp	_int1
                                    402 ;--------------------------------------------------------
                                    403 ; global & static initialisations
                                    404 ;--------------------------------------------------------
                                    405 	.area HOME    (CODE)
                                    406 	.area GSINIT  (CODE)
                                    407 	.area GSFINAL (CODE)
                                    408 	.area GSINIT  (CODE)
                                    409 	.globl __sdcc_gsinit_startup
                                    410 	.globl __sdcc_program_startup
                                    411 	.globl __start__stack
                                    412 	.globl __mcs51_genXINIT
                                    413 	.globl __mcs51_genXRAMCLEAR
                                    414 	.globl __mcs51_genRAMCLEAR
                                    415 ;	life.c:50: __idata static const char digits[16] = {
      002072 78 21            [12]  416 	mov	r0,#_digits
      002074 76 30            [12]  417 	mov	@r0,#0x30
      002076 78 22            [12]  418 	mov	r0,#(_digits + 0x0001)
      002078 76 31            [12]  419 	mov	@r0,#0x31
      00207A 78 23            [12]  420 	mov	r0,#(_digits + 0x0002)
      00207C 76 32            [12]  421 	mov	@r0,#0x32
      00207E 78 24            [12]  422 	mov	r0,#(_digits + 0x0003)
      002080 76 33            [12]  423 	mov	@r0,#0x33
      002082 78 25            [12]  424 	mov	r0,#(_digits + 0x0004)
      002084 76 34            [12]  425 	mov	@r0,#0x34
      002086 78 26            [12]  426 	mov	r0,#(_digits + 0x0005)
      002088 76 35            [12]  427 	mov	@r0,#0x35
      00208A 78 27            [12]  428 	mov	r0,#(_digits + 0x0006)
      00208C 76 36            [12]  429 	mov	@r0,#0x36
      00208E 78 28            [12]  430 	mov	r0,#(_digits + 0x0007)
      002090 76 37            [12]  431 	mov	@r0,#0x37
      002092 78 29            [12]  432 	mov	r0,#(_digits + 0x0008)
      002094 76 38            [12]  433 	mov	@r0,#0x38
      002096 78 2A            [12]  434 	mov	r0,#(_digits + 0x0009)
      002098 76 39            [12]  435 	mov	@r0,#0x39
      00209A 78 2B            [12]  436 	mov	r0,#(_digits + 0x000a)
      00209C 76 41            [12]  437 	mov	@r0,#0x41
      00209E 78 2C            [12]  438 	mov	r0,#(_digits + 0x000b)
      0020A0 76 42            [12]  439 	mov	@r0,#0x42
      0020A2 78 2D            [12]  440 	mov	r0,#(_digits + 0x000c)
      0020A4 76 43            [12]  441 	mov	@r0,#0x43
      0020A6 78 2E            [12]  442 	mov	r0,#(_digits + 0x000d)
      0020A8 76 44            [12]  443 	mov	@r0,#0x44
      0020AA 78 2F            [12]  444 	mov	r0,#(_digits + 0x000e)
      0020AC 76 45            [12]  445 	mov	@r0,#0x45
      0020AE 78 30            [12]  446 	mov	r0,#(_digits + 0x000f)
      0020B0 76 46            [12]  447 	mov	@r0,#0x46
                                    448 	.area GSFINAL (CODE)
      0020B2 02 20 16         [24]  449 	ljmp	__sdcc_program_startup
                                    450 ;--------------------------------------------------------
                                    451 ; Home
                                    452 ;--------------------------------------------------------
                                    453 	.area HOME    (CODE)
                                    454 	.area HOME    (CODE)
      002016                        455 __sdcc_program_startup:
      002016 02 23 2D         [24]  456 	ljmp	_main
                                    457 ;	return from main will return to caller
                                    458 ;--------------------------------------------------------
                                    459 ; code
                                    460 ;--------------------------------------------------------
                                    461 	.area CSEG    (CODE)
                                    462 ;------------------------------------------------------------
                                    463 ;Allocation info for local variables in function 'putchar'
                                    464 ;------------------------------------------------------------
                                    465 ;c                         Allocated to registers 
                                    466 ;------------------------------------------------------------
                                    467 ;	life.c:8: int putchar(int c) __naked {
                                    468 ;	-----------------------------------------
                                    469 ;	 function putchar
                                    470 ;	-----------------------------------------
      0020B5                        471 _putchar:
                                    472 ;	naked function: no prologue.
                                    473 ;	life.c:16: __endasm;
      0020B5 C0 E0            [24]  474 	push	acc
      0020B7 E5 82            [12]  475 	mov	a, dpl
      0020B9 12 00 3C         [24]  476 	lcall	0x003c
      0020BC D0 E0            [24]  477 	pop	acc
      0020BE 22               [24]  478 	ret
                                    479 ;	life.c:17: }
                                    480 ;	naked function: no epilogue.
                                    481 ;------------------------------------------------------------
                                    482 ;Allocation info for local variables in function 'getchar'
                                    483 ;------------------------------------------------------------
                                    484 ;	life.c:19: int getchar(void) __naked {
                                    485 ;	-----------------------------------------
                                    486 ;	 function getchar
                                    487 ;	-----------------------------------------
      0020BF                        488 _getchar:
                                    489 ;	naked function: no prologue.
                                    490 ;	life.c:27: __endasm;
      0020BF C0 E0            [24]  491 	push	acc
      0020C1 12 00 36         [24]  492 	lcall	0x0036
      0020C4 F5 82            [12]  493 	mov	dpl, a
      0020C6 75 83 00         [24]  494 	mov	dph, #0
      0020C9 D0 E0            [24]  495 	pop	acc
      0020CB 22               [24]  496 	ret
                                    497 ;	life.c:28: }
                                    498 ;	naked function: no epilogue.
                                    499 ;------------------------------------------------------------
                                    500 ;Allocation info for local variables in function 'getchar_poll'
                                    501 ;------------------------------------------------------------
                                    502 ;	life.c:30: int getchar_poll(void) __naked {
                                    503 ;	-----------------------------------------
                                    504 ;	 function getchar_poll
                                    505 ;	-----------------------------------------
      0020CC                        506 _getchar_poll:
                                    507 ;	naked function: no prologue.
                                    508 ;	life.c:45: __endasm;
      0020CC C0 E0            [24]  509 	push	acc
      0020CE C0 F0            [24]  510 	push	b
      0020D0 74 FF            [12]  511 	mov	a, #0xff
      0020D2 F5 F0            [12]  512 	mov	b, a
      0020D4 12 00 39         [24]  513 	lcall	0x0039
      0020D7 40 03            [24]  514 	jc	nochar
      0020D9 75 F0 00         [24]  515 	mov	b, #0x00
      0020DC                        516 	nochar:
      0020DC F5 82            [12]  517 	mov	dpl, a
      0020DE 85 F0 83         [24]  518 	mov	dph, b
      0020E1 D0 F0            [24]  519 	pop	b
      0020E3 D0 E0            [24]  520 	pop	acc
      0020E5 22               [24]  521 	ret
                                    522 ;	life.c:46: }
                                    523 ;	naked function: no epilogue.
                                    524 ;------------------------------------------------------------
                                    525 ;Allocation info for local variables in function 'int0'
                                    526 ;------------------------------------------------------------
                                    527 ;	life.c:79: void int0(void) __interrupt IE0_VECTOR __using 1 {
                                    528 ;	-----------------------------------------
                                    529 ;	 function int0
                                    530 ;	-----------------------------------------
      0020E6                        531 _int0:
                           00000F   532 	ar7 = 0x0f
                           00000E   533 	ar6 = 0x0e
                           00000D   534 	ar5 = 0x0d
                           00000C   535 	ar4 = 0x0c
                           00000B   536 	ar3 = 0x0b
                           00000A   537 	ar2 = 0x0a
                           000009   538 	ar1 = 0x09
                           000008   539 	ar0 = 0x08
      0020E6 C0 D0            [24]  540 	push	psw
      0020E8 75 D0 08         [24]  541 	mov	psw,#0x08
                                    542 ;	life.c:80: i0 = 1;
      0020EB 78 31            [12]  543 	mov	r0,#_i0
      0020ED 76 01            [12]  544 	mov	@r0,#0x01
                                    545 ;	life.c:81: }
      0020EF D0 D0            [24]  546 	pop	psw
      0020F1 32               [24]  547 	reti
                                    548 ;	eliminated unneeded push/pop dpl
                                    549 ;	eliminated unneeded push/pop dph
                                    550 ;	eliminated unneeded push/pop b
                                    551 ;	eliminated unneeded push/pop acc
                                    552 ;------------------------------------------------------------
                                    553 ;Allocation info for local variables in function 'int1'
                                    554 ;------------------------------------------------------------
                                    555 ;	life.c:83: void int1(void) __interrupt IE1_VECTOR __using 1 {
                                    556 ;	-----------------------------------------
                                    557 ;	 function int1
                                    558 ;	-----------------------------------------
      0020F2                        559 _int1:
      0020F2 C0 D0            [24]  560 	push	psw
      0020F4 75 D0 08         [24]  561 	mov	psw,#0x08
                                    562 ;	life.c:84: i1 = 1;
      0020F7 78 32            [12]  563 	mov	r0,#_i1
      0020F9 76 01            [12]  564 	mov	@r0,#0x01
                                    565 ;	life.c:85: }
      0020FB D0 D0            [24]  566 	pop	psw
      0020FD 32               [24]  567 	reti
                                    568 ;	eliminated unneeded push/pop dpl
                                    569 ;	eliminated unneeded push/pop dph
                                    570 ;	eliminated unneeded push/pop b
                                    571 ;	eliminated unneeded push/pop acc
                                    572 ;------------------------------------------------------------
                                    573 ;Allocation info for local variables in function 'flashOE'
                                    574 ;------------------------------------------------------------
                                    575 ;	life.c:95: static void flashOE(void) {
                                    576 ;	-----------------------------------------
                                    577 ;	 function flashOE
                                    578 ;	-----------------------------------------
      0020FE                        579 _flashOE:
                           000007   580 	ar7 = 0x07
                           000006   581 	ar6 = 0x06
                           000005   582 	ar5 = 0x05
                           000004   583 	ar4 = 0x04
                           000003   584 	ar3 = 0x03
                           000002   585 	ar2 = 0x02
                           000001   586 	ar1 = 0x01
                           000000   587 	ar0 = 0x00
                                    588 ;	life.c:96: P1_7 = 0;
                                    589 ;	assignBit
      0020FE C2 97            [12]  590 	clr	_P1_7
                                    591 ;	life.c:101: __endasm;
      002100 00               [12]  592 	nop
      002101 00               [12]  593 	nop
      002102 00               [12]  594 	nop
                                    595 ;	life.c:102: OEreg = OE76;
      002103 78 33            [12]  596 	mov	r0,#_OE76
      002105 90 F0 06         [24]  597 	mov	dptr,#_OEreg
      002108 E6               [12]  598 	mov	a,@r0
      002109 F0               [24]  599 	movx	@dptr,a
                                    600 ;	life.c:103: P1_7 = 1;
                                    601 ;	assignBit
      00210A D2 97            [12]  602 	setb	_P1_7
                                    603 ;	life.c:108: __endasm;
      00210C 00               [12]  604 	nop
      00210D 00               [12]  605 	nop
      00210E 00               [12]  606 	nop
                                    607 ;	life.c:110: return;
                                    608 ;	life.c:111: }
      00210F 22               [24]  609 	ret
                                    610 ;------------------------------------------------------------
                                    611 ;Allocation info for local variables in function 'show'
                                    612 ;------------------------------------------------------------
                                    613 ;hdr                       Allocated to registers r7 
                                    614 ;__1310720005              Allocated to registers 
                                    615 ;s                         Allocated to registers r4 r5 r6 
                                    616 ;__1966080007              Allocated to registers 
                                    617 ;s                         Allocated to registers r5 r6 r7 
                                    618 ;__1310720001              Allocated to registers r6 r7 
                                    619 ;a                         Allocated to registers 
                                    620 ;__1310720003              Allocated to registers r6 r7 
                                    621 ;a                         Allocated to registers 
                                    622 ;__1966080010              Allocated to registers 
                                    623 ;s                         Allocated to registers r5 r6 r7 
                                    624 ;__2621440013              Allocated to registers 
                                    625 ;s                         Allocated to registers r5 r6 r7 
                                    626 ;__1310720015              Allocated to registers 
                                    627 ;s                         Allocated to registers r5 r6 r7 
                                    628 ;------------------------------------------------------------
                                    629 ;	life.c:147: void show(char hdr) {
                                    630 ;	-----------------------------------------
                                    631 ;	 function show
                                    632 ;	-----------------------------------------
      002110                        633 _show:
      002110 AF 82            [24]  634 	mov	r7,dpl
                                    635 ;	life.c:148: printstr("\033[?25l");
      002112 7C 32            [12]  636 	mov	r4,#___str_0
      002114 7D 30            [12]  637 	mov	r5,#(___str_0 >> 8)
      002116 7E 80            [12]  638 	mov	r6,#0x80
                                    639 ;	life.c:74: return;
      002118                        640 00125$:
                                    641 ;	life.c:72: for (; *s; s++) putchar(*s);
      002118 8C 82            [24]  642 	mov	dpl,r4
      00211A 8D 83            [24]  643 	mov	dph,r5
      00211C 8E F0            [24]  644 	mov	b,r6
      00211E 12 2F 0A         [24]  645 	lcall	__gptrget
      002121 FB               [12]  646 	mov	r3,a
      002122 60 10            [24]  647 	jz	00109$
      002124 7A 00            [12]  648 	mov	r2,#0x00
      002126 8B 82            [24]  649 	mov	dpl,r3
      002128 8A 83            [24]  650 	mov	dph,r2
      00212A 12 20 B5         [24]  651 	lcall	_putchar
      00212D 0C               [12]  652 	inc	r4
                                    653 ;	life.c:148: printstr("\033[?25l");
      00212E BC 00 E7         [24]  654 	cjne	r4,#0x00,00125$
      002131 0D               [12]  655 	inc	r5
      002132 80 E4            [24]  656 	sjmp	00125$
      002134                        657 00109$:
                                    658 ;	life.c:150: if (hdr) {
      002134 EF               [12]  659 	mov	a,r7
      002135 70 03            [24]  660 	jnz	00220$
      002137 02 22 70         [24]  661 	ljmp	00102$
      00213A                        662 00220$:
                                    663 ;	life.c:151: printstr("\033[2JGEN ");
      00213A 7D 39            [12]  664 	mov	r5,#___str_1
      00213C 7E 30            [12]  665 	mov	r6,#(___str_1 >> 8)
      00213E 7F 80            [12]  666 	mov	r7,#0x80
                                    667 ;	life.c:74: return;
      002140                        668 00128$:
                                    669 ;	life.c:72: for (; *s; s++) putchar(*s);
      002140 8D 82            [24]  670 	mov	dpl,r5
      002142 8E 83            [24]  671 	mov	dph,r6
      002144 8F F0            [24]  672 	mov	b,r7
      002146 12 2F 0A         [24]  673 	lcall	__gptrget
      002149 FC               [12]  674 	mov	r4,a
      00214A 60 10            [24]  675 	jz	00111$
      00214C 7B 00            [12]  676 	mov	r3,#0x00
      00214E 8C 82            [24]  677 	mov	dpl,r4
      002150 8B 83            [24]  678 	mov	dph,r3
      002152 12 20 B5         [24]  679 	lcall	_putchar
      002155 0D               [12]  680 	inc	r5
                                    681 ;	life.c:151: printstr("\033[2JGEN ");
      002156 BD 00 E7         [24]  682 	cjne	r5,#0x00,00128$
      002159 0E               [12]  683 	inc	r6
      00215A 80 E4            [24]  684 	sjmp	00128$
      00215C                        685 00111$:
                                    686 ;	life.c:141: print16x(generation[1]);
      00215C 78 45            [12]  687 	mov	r0,#(_generation + 0x0002)
      00215E 86 06            [24]  688 	mov	ar6,@r0
      002160 08               [12]  689 	inc	r0
                                    690 ;	life.c:63: putchar(digits[(a >> 12) & 0xf]);
      002161 E6               [12]  691 	mov	a,@r0
      002162 FF               [12]  692 	mov	r7,a
      002163 C4               [12]  693 	swap	a
      002164 54 0F            [12]  694 	anl	a,#0x0f
      002166 FC               [12]  695 	mov	r4,a
      002167 53 04 0F         [24]  696 	anl	ar4,#0x0f
      00216A EC               [12]  697 	mov	a,r4
      00216B 24 21            [12]  698 	add	a,#_digits
      00216D F9               [12]  699 	mov	r1,a
      00216E 87 05            [24]  700 	mov	ar5,@r1
      002170 7C 00            [12]  701 	mov	r4,#0x00
      002172 8D 82            [24]  702 	mov	dpl,r5
      002174 8C 83            [24]  703 	mov	dph,r4
      002176 12 20 B5         [24]  704 	lcall	_putchar
                                    705 ;	life.c:64: putchar(digits[(a >> 8) & 0xf]);
      002179 8F 05            [24]  706 	mov	ar5,r7
      00217B 53 05 0F         [24]  707 	anl	ar5,#0x0f
      00217E ED               [12]  708 	mov	a,r5
      00217F 24 21            [12]  709 	add	a,#_digits
      002181 F9               [12]  710 	mov	r1,a
      002182 87 05            [24]  711 	mov	ar5,@r1
      002184 7C 00            [12]  712 	mov	r4,#0x00
      002186 8D 82            [24]  713 	mov	dpl,r5
      002188 8C 83            [24]  714 	mov	dph,r4
      00218A 12 20 B5         [24]  715 	lcall	_putchar
                                    716 ;	life.c:65: putchar(digits[(a >> 4) & 0xf]);
      00218D 8E 04            [24]  717 	mov	ar4,r6
      00218F EF               [12]  718 	mov	a,r7
      002190 C4               [12]  719 	swap	a
      002191 CC               [12]  720 	xch	a,r4
      002192 C4               [12]  721 	swap	a
      002193 54 0F            [12]  722 	anl	a,#0x0f
      002195 6C               [12]  723 	xrl	a,r4
      002196 CC               [12]  724 	xch	a,r4
      002197 54 0F            [12]  725 	anl	a,#0x0f
      002199 CC               [12]  726 	xch	a,r4
      00219A 6C               [12]  727 	xrl	a,r4
      00219B CC               [12]  728 	xch	a,r4
      00219C 53 04 0F         [24]  729 	anl	ar4,#0x0f
      00219F EC               [12]  730 	mov	a,r4
      0021A0 24 21            [12]  731 	add	a,#_digits
      0021A2 F9               [12]  732 	mov	r1,a
      0021A3 87 05            [24]  733 	mov	ar5,@r1
      0021A5 7C 00            [12]  734 	mov	r4,#0x00
      0021A7 8D 82            [24]  735 	mov	dpl,r5
      0021A9 8C 83            [24]  736 	mov	dph,r4
      0021AB 12 20 B5         [24]  737 	lcall	_putchar
                                    738 ;	life.c:66: putchar(digits[a & 0xf]);
      0021AE 53 06 0F         [24]  739 	anl	ar6,#0x0f
      0021B1 EE               [12]  740 	mov	a,r6
      0021B2 24 21            [12]  741 	add	a,#_digits
      0021B4 F9               [12]  742 	mov	r1,a
      0021B5 87 07            [24]  743 	mov	ar7,@r1
      0021B7 7E 00            [12]  744 	mov	r6,#0x00
      0021B9 8F 82            [24]  745 	mov	dpl,r7
      0021BB 8E 83            [24]  746 	mov	dph,r6
      0021BD 12 20 B5         [24]  747 	lcall	_putchar
                                    748 ;	life.c:142: print16x(generation[0]);
      0021C0 78 43            [12]  749 	mov	r0,#_generation
      0021C2 86 06            [24]  750 	mov	ar6,@r0
      0021C4 08               [12]  751 	inc	r0
                                    752 ;	life.c:63: putchar(digits[(a >> 12) & 0xf]);
      0021C5 E6               [12]  753 	mov	a,@r0
      0021C6 FF               [12]  754 	mov	r7,a
      0021C7 C4               [12]  755 	swap	a
      0021C8 54 0F            [12]  756 	anl	a,#0x0f
      0021CA FC               [12]  757 	mov	r4,a
      0021CB 53 04 0F         [24]  758 	anl	ar4,#0x0f
      0021CE EC               [12]  759 	mov	a,r4
      0021CF 24 21            [12]  760 	add	a,#_digits
      0021D1 F9               [12]  761 	mov	r1,a
      0021D2 87 05            [24]  762 	mov	ar5,@r1
      0021D4 7C 00            [12]  763 	mov	r4,#0x00
      0021D6 8D 82            [24]  764 	mov	dpl,r5
      0021D8 8C 83            [24]  765 	mov	dph,r4
      0021DA 12 20 B5         [24]  766 	lcall	_putchar
                                    767 ;	life.c:64: putchar(digits[(a >> 8) & 0xf]);
      0021DD 8F 05            [24]  768 	mov	ar5,r7
      0021DF 53 05 0F         [24]  769 	anl	ar5,#0x0f
      0021E2 ED               [12]  770 	mov	a,r5
      0021E3 24 21            [12]  771 	add	a,#_digits
      0021E5 F9               [12]  772 	mov	r1,a
      0021E6 87 05            [24]  773 	mov	ar5,@r1
      0021E8 7C 00            [12]  774 	mov	r4,#0x00
      0021EA 8D 82            [24]  775 	mov	dpl,r5
      0021EC 8C 83            [24]  776 	mov	dph,r4
      0021EE 12 20 B5         [24]  777 	lcall	_putchar
                                    778 ;	life.c:65: putchar(digits[(a >> 4) & 0xf]);
      0021F1 8E 04            [24]  779 	mov	ar4,r6
      0021F3 EF               [12]  780 	mov	a,r7
      0021F4 C4               [12]  781 	swap	a
      0021F5 CC               [12]  782 	xch	a,r4
      0021F6 C4               [12]  783 	swap	a
      0021F7 54 0F            [12]  784 	anl	a,#0x0f
      0021F9 6C               [12]  785 	xrl	a,r4
      0021FA CC               [12]  786 	xch	a,r4
      0021FB 54 0F            [12]  787 	anl	a,#0x0f
      0021FD CC               [12]  788 	xch	a,r4
      0021FE 6C               [12]  789 	xrl	a,r4
      0021FF CC               [12]  790 	xch	a,r4
      002200 53 04 0F         [24]  791 	anl	ar4,#0x0f
      002203 EC               [12]  792 	mov	a,r4
      002204 24 21            [12]  793 	add	a,#_digits
      002206 F9               [12]  794 	mov	r1,a
      002207 87 05            [24]  795 	mov	ar5,@r1
      002209 7C 00            [12]  796 	mov	r4,#0x00
      00220B 8D 82            [24]  797 	mov	dpl,r5
      00220D 8C 83            [24]  798 	mov	dph,r4
      00220F 12 20 B5         [24]  799 	lcall	_putchar
                                    800 ;	life.c:66: putchar(digits[a & 0xf]);
      002212 53 06 0F         [24]  801 	anl	ar6,#0x0f
      002215 EE               [12]  802 	mov	a,r6
      002216 24 21            [12]  803 	add	a,#_digits
      002218 F9               [12]  804 	mov	r1,a
      002219 87 07            [24]  805 	mov	ar7,@r1
      00221B 7E 00            [12]  806 	mov	r6,#0x00
      00221D 8F 82            [24]  807 	mov	dpl,r7
      00221F 8E 83            [24]  808 	mov	dph,r6
      002221 12 20 B5         [24]  809 	lcall	_putchar
                                    810 ;	life.c:153: printstr("\r\n");
      002224 7D 42            [12]  811 	mov	r5,#___str_2
      002226 7E 30            [12]  812 	mov	r6,#(___str_2 >> 8)
      002228 7F 80            [12]  813 	mov	r7,#0x80
                                    814 ;	life.c:74: return;
      00222A                        815 00131$:
                                    816 ;	life.c:72: for (; *s; s++) putchar(*s);
      00222A 8D 82            [24]  817 	mov	dpl,r5
      00222C 8E 83            [24]  818 	mov	dph,r6
      00222E 8F F0            [24]  819 	mov	b,r7
      002230 12 2F 0A         [24]  820 	lcall	__gptrget
      002233 FC               [12]  821 	mov	r4,a
      002234 60 10            [24]  822 	jz	00116$
      002236 7B 00            [12]  823 	mov	r3,#0x00
      002238 8C 82            [24]  824 	mov	dpl,r4
      00223A 8B 83            [24]  825 	mov	dph,r3
      00223C 12 20 B5         [24]  826 	lcall	_putchar
      00223F 0D               [12]  827 	inc	r5
                                    828 ;	life.c:153: printstr("\r\n");
      002240 BD 00 E7         [24]  829 	cjne	r5,#0x00,00131$
      002243 0E               [12]  830 	inc	r6
      002244 80 E4            [24]  831 	sjmp	00131$
      002246                        832 00116$:
                                    833 ;	life.c:134: generation[0]++;
      002246 78 43            [12]  834 	mov	r0,#_generation
      002248 86 06            [24]  835 	mov	ar6,@r0
      00224A 08               [12]  836 	inc	r0
      00224B 86 07            [24]  837 	mov	ar7,@r0
      00224D 0E               [12]  838 	inc	r6
      00224E BE 00 01         [24]  839 	cjne	r6,#0x00,00225$
      002251 0F               [12]  840 	inc	r7
      002252                        841 00225$:
      002252 78 43            [12]  842 	mov	r0,#_generation
      002254 A6 06            [24]  843 	mov	@r0,ar6
      002256 08               [12]  844 	inc	r0
      002257 A6 07            [24]  845 	mov	@r0,ar7
                                    846 ;	life.c:135: if (!generation[0]) generation[1]++;
      002259 EE               [12]  847 	mov	a,r6
      00225A 4F               [12]  848 	orl	a,r7
      00225B 70 13            [24]  849 	jnz	00102$
      00225D 78 45            [12]  850 	mov	r0,#(_generation + 0x0002)
      00225F 86 06            [24]  851 	mov	ar6,@r0
      002261 08               [12]  852 	inc	r0
      002262 86 07            [24]  853 	mov	ar7,@r0
      002264 0E               [12]  854 	inc	r6
      002265 BE 00 01         [24]  855 	cjne	r6,#0x00,00227$
      002268 0F               [12]  856 	inc	r7
      002269                        857 00227$:
      002269 78 45            [12]  858 	mov	r0,#(_generation + 0x0002)
      00226B A6 06            [24]  859 	mov	@r0,ar6
      00226D 08               [12]  860 	inc	r0
      00226E A6 07            [24]  861 	mov	@r0,ar7
                                    862 ;	life.c:154: updategen();
      002270                        863 00102$:
                                    864 ;	life.c:157: for (x = 0; x < W; x++) {
      002270 78 34            [12]  865 	mov	r0,#_x
      002272 E4               [12]  866 	clr	a
      002273 F6               [12]  867 	mov	@r0,a
      002274 08               [12]  868 	inc	r0
      002275 F6               [12]  869 	mov	@r0,a
      002276                        870 00138$:
                                    871 ;	life.c:158: for (y = 0; y < H; y++)
      002276 78 36            [12]  872 	mov	r0,#_y
      002278 E4               [12]  873 	clr	a
      002279 F6               [12]  874 	mov	@r0,a
      00227A 08               [12]  875 	inc	r0
      00227B F6               [12]  876 	mov	@r0,a
      00227C                        877 00133$:
                                    878 ;	life.c:159: if (u[A2D(W, y, x)]) putchar('1');
      00227C 78 36            [12]  879 	mov	r0,#_y
      00227E E6               [12]  880 	mov	a,@r0
      00227F C0 E0            [24]  881 	push	acc
      002281 08               [12]  882 	inc	r0
      002282 E6               [12]  883 	mov	a,@r0
      002283 C0 E0            [24]  884 	push	acc
      002285 90 00 30         [24]  885 	mov	dptr,#0x0030
      002288 12 2D 48         [24]  886 	lcall	__mulint
      00228B AE 82            [24]  887 	mov	r6,dpl
      00228D AF 83            [24]  888 	mov	r7,dph
      00228F 15 81            [12]  889 	dec	sp
      002291 15 81            [12]  890 	dec	sp
      002293 78 34            [12]  891 	mov	r0,#_x
      002295 E6               [12]  892 	mov	a,@r0
      002296 2E               [12]  893 	add	a,r6
      002297 FE               [12]  894 	mov	r6,a
      002298 08               [12]  895 	inc	r0
      002299 E6               [12]  896 	mov	a,@r0
      00229A 3F               [12]  897 	addc	a,r7
      00229B FF               [12]  898 	mov	r7,a
      00229C EE               [12]  899 	mov	a,r6
      00229D 24 00            [12]  900 	add	a,#_u
      00229F FE               [12]  901 	mov	r6,a
      0022A0 EF               [12]  902 	mov	a,r7
      0022A1 34 88            [12]  903 	addc	a,#(_u >> 8)
      0022A3 FF               [12]  904 	mov	r7,a
      0022A4 8E 82            [24]  905 	mov	dpl,r6
      0022A6 8F 83            [24]  906 	mov	dph,r7
      0022A8 E0               [24]  907 	movx	a,@dptr
      0022A9 60 08            [24]  908 	jz	00104$
      0022AB 90 00 31         [24]  909 	mov	dptr,#0x0031
      0022AE 12 20 B5         [24]  910 	lcall	_putchar
      0022B1 80 06            [24]  911 	sjmp	00134$
      0022B3                        912 00104$:
                                    913 ;	life.c:160: else putchar('0');
      0022B3 90 00 30         [24]  914 	mov	dptr,#0x0030
      0022B6 12 20 B5         [24]  915 	lcall	_putchar
      0022B9                        916 00134$:
                                    917 ;	life.c:158: for (y = 0; y < H; y++)
      0022B9 78 36            [12]  918 	mov	r0,#_y
      0022BB 06               [12]  919 	inc	@r0
      0022BC B6 00 02         [24]  920 	cjne	@r0,#0x00,00229$
      0022BF 08               [12]  921 	inc	r0
      0022C0 06               [12]  922 	inc	@r0
      0022C1                        923 00229$:
      0022C1 78 36            [12]  924 	mov	r0,#_y
      0022C3 C3               [12]  925 	clr	c
      0022C4 E6               [12]  926 	mov	a,@r0
      0022C5 94 C0            [12]  927 	subb	a,#0xc0
      0022C7 08               [12]  928 	inc	r0
      0022C8 E6               [12]  929 	mov	a,@r0
      0022C9 64 80            [12]  930 	xrl	a,#0x80
      0022CB 94 80            [12]  931 	subb	a,#0x80
      0022CD 40 AD            [24]  932 	jc	00133$
                                    933 ;	life.c:161: printstr("\r\n");
      0022CF 7D 42            [12]  934 	mov	r5,#___str_2
      0022D1 7E 30            [12]  935 	mov	r6,#(___str_2 >> 8)
      0022D3 7F 80            [12]  936 	mov	r7,#0x80
                                    937 ;	life.c:74: return;
      0022D5                        938 00136$:
                                    939 ;	life.c:72: for (; *s; s++) putchar(*s);
      0022D5 8D 82            [24]  940 	mov	dpl,r5
      0022D7 8E 83            [24]  941 	mov	dph,r6
      0022D9 8F F0            [24]  942 	mov	b,r7
      0022DB 12 2F 0A         [24]  943 	lcall	__gptrget
      0022DE FC               [12]  944 	mov	r4,a
      0022DF 60 10            [24]  945 	jz	00121$
      0022E1 7B 00            [12]  946 	mov	r3,#0x00
      0022E3 8C 82            [24]  947 	mov	dpl,r4
      0022E5 8B 83            [24]  948 	mov	dph,r3
      0022E7 12 20 B5         [24]  949 	lcall	_putchar
      0022EA 0D               [12]  950 	inc	r5
                                    951 ;	life.c:161: printstr("\r\n");
      0022EB BD 00 E7         [24]  952 	cjne	r5,#0x00,00136$
      0022EE 0E               [12]  953 	inc	r6
      0022EF 80 E4            [24]  954 	sjmp	00136$
      0022F1                        955 00121$:
                                    956 ;	life.c:157: for (x = 0; x < W; x++) {
      0022F1 78 34            [12]  957 	mov	r0,#_x
      0022F3 06               [12]  958 	inc	@r0
      0022F4 B6 00 02         [24]  959 	cjne	@r0,#0x00,00233$
      0022F7 08               [12]  960 	inc	r0
      0022F8 06               [12]  961 	inc	@r0
      0022F9                        962 00233$:
      0022F9 78 34            [12]  963 	mov	r0,#_x
      0022FB C3               [12]  964 	clr	c
      0022FC E6               [12]  965 	mov	a,@r0
      0022FD 94 30            [12]  966 	subb	a,#0x30
      0022FF 08               [12]  967 	inc	r0
      002300 E6               [12]  968 	mov	a,@r0
      002301 64 80            [12]  969 	xrl	a,#0x80
      002303 94 80            [12]  970 	subb	a,#0x80
      002305 50 03            [24]  971 	jnc	00234$
      002307 02 22 76         [24]  972 	ljmp	00138$
      00230A                        973 00234$:
                                    974 ;	life.c:164: printstr("\033[?25h");
      00230A 7D 45            [12]  975 	mov	r5,#___str_3
      00230C 7E 30            [12]  976 	mov	r6,#(___str_3 >> 8)
      00230E 7F 80            [12]  977 	mov	r7,#0x80
                                    978 ;	life.c:74: return;
      002310                        979 00141$:
                                    980 ;	life.c:72: for (; *s; s++) putchar(*s);
      002310 8D 82            [24]  981 	mov	dpl,r5
      002312 8E 83            [24]  982 	mov	dph,r6
      002314 8F F0            [24]  983 	mov	b,r7
      002316 12 2F 0A         [24]  984 	lcall	__gptrget
      002319 FC               [12]  985 	mov	r4,a
      00231A 60 10            [24]  986 	jz	00123$
      00231C 7B 00            [12]  987 	mov	r3,#0x00
      00231E 8C 82            [24]  988 	mov	dpl,r4
      002320 8B 83            [24]  989 	mov	dph,r3
      002322 12 20 B5         [24]  990 	lcall	_putchar
      002325 0D               [12]  991 	inc	r5
                                    992 ;	life.c:164: printstr("\033[?25h");
      002326 BD 00 E7         [24]  993 	cjne	r5,#0x00,00141$
      002329 0E               [12]  994 	inc	r6
      00232A 80 E4            [24]  995 	sjmp	00141$
      00232C                        996 00123$:
                                    997 ;	life.c:166: return;
                                    998 ;	life.c:167: }
      00232C 22               [24]  999 	ret
                                   1000 ;------------------------------------------------------------
                                   1001 ;Allocation info for local variables in function 'main'
                                   1002 ;------------------------------------------------------------
                                   1003 ;__1310720027              Allocated to registers 
                                   1004 ;s                         Allocated to registers r5 r6 r7 
                                   1005 ;__2621440029              Allocated to registers 
                                   1006 ;s                         Allocated to registers r5 r6 r7 
                                   1007 ;__1310720017              Allocated to registers 
                                   1008 ;s                         Allocated to registers r5 r6 r7 
                                   1009 ;__1310720019              Allocated to registers r6 r7 
                                   1010 ;a                         Allocated to registers r4 r5 
                                   1011 ;__1310720021              Allocated to registers 
                                   1012 ;s                         Allocated to registers r5 r6 r7 
                                   1013 ;__1310720023              Allocated to registers 
                                   1014 ;s                         Allocated to registers r5 r6 r7 
                                   1015 ;__1310720025              Allocated to registers 
                                   1016 ;s                         Allocated to registers r5 r6 r7 
                                   1017 ;__2621440034              Allocated to registers 
                                   1018 ;s                         Allocated to registers r5 r6 r7 
                                   1019 ;__4587520038              Allocated to registers 
                                   1020 ;s                         Allocated to registers r5 r6 r7 
                                   1021 ;__4587520040              Allocated to registers 
                                   1022 ;s                         Allocated to registers r5 r6 r7 
                                   1023 ;__4587520042              Allocated to registers 
                                   1024 ;s                         Allocated to registers r5 r6 r7 
                                   1025 ;__3276800044              Allocated to registers 
                                   1026 ;s                         Allocated to registers r5 r6 r7 
                                   1027 ;__1310720046              Allocated to registers 
                                   1028 ;s                         Allocated to registers r5 r6 r7 
                                   1029 ;sloc0                     Allocated to stack - _bp +1
                                   1030 ;sloc1                     Allocated to stack - _bp +2
                                   1031 ;sloc2                     Allocated to stack - _bp +4
                                   1032 ;sloc3                     Allocated to stack - _bp +6
                                   1033 ;sloc4                     Allocated to stack - _bp +8
                                   1034 ;sloc5                     Allocated to stack - _bp +10
                                   1035 ;sloc6                     Allocated to stack - _bp +12
                                   1036 ;------------------------------------------------------------
                                   1037 ;	life.c:278: void main(void) {
                                   1038 ;	-----------------------------------------
                                   1039 ;	 function main
                                   1040 ;	-----------------------------------------
      00232D                       1041 _main:
      00232D C0 10            [24] 1042 	push	_bp
      00232F E5 81            [12] 1043 	mov	a,sp
      002331 F5 10            [12] 1044 	mov	_bp,a
      002333 24 0D            [12] 1045 	add	a,#0x0d
      002335 F5 81            [12] 1046 	mov	sp,a
                                   1047 ;	life.c:279: IT0 = 1;
                                   1048 ;	assignBit
      002337 D2 88            [12] 1049 	setb	_IT0
                                   1050 ;	life.c:280: IT1 = 1;
                                   1051 ;	assignBit
      002339 D2 8A            [12] 1052 	setb	_IT1
                                   1053 ;	life.c:281: EX0 = 1;
                                   1054 ;	assignBit
      00233B D2 A8            [12] 1055 	setb	_EX0
                                   1056 ;	life.c:282: EX1 = 1;
                                   1057 ;	assignBit
      00233D D2 AA            [12] 1058 	setb	_EX1
                                   1059 ;	life.c:283: EA = 1;	
                                   1060 ;	assignBit
      00233F D2 AF            [12] 1061 	setb	_EA
                                   1062 ;	life.c:284: P1_7 = 1;
                                   1063 ;	assignBit
      002341 D2 97            [12] 1064 	setb	_P1_7
                                   1065 ;	life.c:289: __endasm;
      002343 00               [12] 1066 	nop
      002344 00               [12] 1067 	nop
      002345 00               [12] 1068 	nop
                                   1069 ;	life.c:291: srand(RND);
      002346 90 80 00         [24] 1070 	mov	dptr,#_RND
      002349 E0               [24] 1071 	movx	a,@dptr
      00234A FE               [12] 1072 	mov	r6,a
      00234B A3               [24] 1073 	inc	dptr
      00234C E0               [24] 1074 	movx	a,@dptr
      00234D FF               [12] 1075 	mov	r7,a
      00234E 8E 82            [24] 1076 	mov	dpl,r6
      002350 8F 83            [24] 1077 	mov	dph,r7
      002352 12 2D 2F         [24] 1078 	lcall	_srand
                                   1079 ;	life.c:293: OE76 = OE76_0;
      002355 78 33            [12] 1080 	mov	r0,#_OE76
      002357 76 3F            [12] 1081 	mov	@r0,#0x3f
                                   1082 ;	life.c:294: flashOE();
      002359 12 20 FE         [24] 1083 	lcall	_flashOE
                                   1084 ;	life.c:296: printstr("\033[?25h\033[m");
      00235C 7D 66            [12] 1085 	mov	r5,#___str_7
      00235E 7E 30            [12] 1086 	mov	r6,#(___str_7 >> 8)
      002360 7F 80            [12] 1087 	mov	r7,#0x80
                                   1088 ;	life.c:74: return;
      002362                       1089 00211$:
                                   1090 ;	life.c:72: for (; *s; s++) putchar(*s);
      002362 8D 82            [24] 1091 	mov	dpl,r5
      002364 8E 83            [24] 1092 	mov	dph,r6
      002366 8F F0            [24] 1093 	mov	b,r7
      002368 12 2F 0A         [24] 1094 	lcall	__gptrget
      00236B FC               [12] 1095 	mov	r4,a
      00236C 60 10            [24] 1096 	jz	00151$
      00236E 7B 00            [12] 1097 	mov	r3,#0x00
      002370 8C 82            [24] 1098 	mov	dpl,r4
      002372 8B 83            [24] 1099 	mov	dph,r3
      002374 12 20 B5         [24] 1100 	lcall	_putchar
      002377 0D               [12] 1101 	inc	r5
                                   1102 ;	life.c:296: printstr("\033[?25h\033[m");
      002378 BD 00 E7         [24] 1103 	cjne	r5,#0x00,00211$
      00237B 0E               [12] 1104 	inc	r6
      00237C 80 E4            [24] 1105 	sjmp	00211$
      00237E                       1106 00151$:
                                   1107 ;	life.c:298: for (i0 = 0; !i0; ) {	
      00237E 78 31            [12] 1108 	mov	r0,#_i0
      002380 76 00            [12] 1109 	mov	@r0,#0x00
      002382                       1110 00258$:
                                   1111 ;	life.c:299: printstr("LIFE INIT T L R P\r\n");
      002382 7D 70            [12] 1112 	mov	r5,#___str_8
      002384 7E 30            [12] 1113 	mov	r6,#(___str_8 >> 8)
      002386 7F 80            [12] 1114 	mov	r7,#0x80
                                   1115 ;	life.c:74: return;
      002388                       1116 00214$:
                                   1117 ;	life.c:72: for (; *s; s++) putchar(*s);
      002388 8D 82            [24] 1118 	mov	dpl,r5
      00238A 8E 83            [24] 1119 	mov	dph,r6
      00238C 8F F0            [24] 1120 	mov	b,r7
      00238E 12 2F 0A         [24] 1121 	lcall	__gptrget
      002391 FC               [12] 1122 	mov	r4,a
      002392 60 10            [24] 1123 	jz	00110$
      002394 7B 00            [12] 1124 	mov	r3,#0x00
      002396 8C 82            [24] 1125 	mov	dpl,r4
      002398 8B 83            [24] 1126 	mov	dph,r3
      00239A 12 20 B5         [24] 1127 	lcall	_putchar
      00239D 0D               [12] 1128 	inc	r5
                                   1129 ;	life.c:300: while (1) {
      00239E BD 00 E7         [24] 1130 	cjne	r5,#0x00,00214$
      0023A1 0E               [12] 1131 	inc	r6
      0023A2 80 E4            [24] 1132 	sjmp	00214$
      0023A4                       1133 00110$:
                                   1134 ;	life.c:301: c = toupper(getchar());
      0023A4 12 20 BF         [24] 1135 	lcall	_getchar
      0023A7 12 2E E3         [24] 1136 	lcall	_toupper
      0023AA AE 82            [24] 1137 	mov	r6,dpl
      0023AC AF 83            [24] 1138 	mov	r7,dph
      0023AE 78 3A            [12] 1139 	mov	r0,#_c
      0023B0 A6 06            [24] 1140 	mov	@r0,ar6
      0023B2 08               [12] 1141 	inc	r0
      0023B3 A6 07            [24] 1142 	mov	@r0,ar7
                                   1143 ;	life.c:302: if (i0 || (c == (int)'T')) goto term;
      0023B5 78 31            [12] 1144 	mov	r0,#_i0
      0023B7 E6               [12] 1145 	mov	a,@r0
      0023B8 60 03            [24] 1146 	jz	00551$
      0023BA 02 2C 3B         [24] 1147 	ljmp	00149$
      0023BD                       1148 00551$:
      0023BD BE 54 06         [24] 1149 	cjne	r6,#0x54,00552$
      0023C0 BF 00 03         [24] 1150 	cjne	r7,#0x00,00552$
      0023C3 02 2C 3B         [24] 1151 	ljmp	00149$
      0023C6                       1152 00552$:
                                   1153 ;	life.c:303: else if ((c == (int)'L') || (c == (int)'R') || (c == (int)'P')) break;
      0023C6 BE 4C 05         [24] 1154 	cjne	r6,#0x4c,00553$
      0023C9 BF 00 02         [24] 1155 	cjne	r7,#0x00,00553$
      0023CC 80 0E            [24] 1156 	sjmp	00305$
      0023CE                       1157 00553$:
      0023CE BE 52 05         [24] 1158 	cjne	r6,#0x52,00554$
      0023D1 BF 00 02         [24] 1159 	cjne	r7,#0x00,00554$
      0023D4 80 06            [24] 1160 	sjmp	00305$
      0023D6                       1161 00554$:
      0023D6 BE 50 CB         [24] 1162 	cjne	r6,#0x50,00110$
      0023D9 BF 00 C8         [24] 1163 	cjne	r7,#0x00,00110$
                                   1164 ;	life.c:306: reload:
      0023DC                       1165 00305$:
      0023DC                       1166 00112$:
                                   1167 ;	life.c:170: memset(u, 0, sizeof (u));
      0023DC E4               [12] 1168 	clr	a
      0023DD C0 E0            [24] 1169 	push	acc
      0023DF 74 24            [12] 1170 	mov	a,#0x24
      0023E1 C0 E0            [24] 1171 	push	acc
      0023E3 E4               [12] 1172 	clr	a
      0023E4 C0 E0            [24] 1173 	push	acc
      0023E6 90 88 00         [24] 1174 	mov	dptr,#_u
      0023E9 75 F0 00         [24] 1175 	mov	b,#0x00
      0023EC 12 2E 79         [24] 1176 	lcall	_memset
      0023EF 15 81            [12] 1177 	dec	sp
      0023F1 15 81            [12] 1178 	dec	sp
      0023F3 15 81            [12] 1179 	dec	sp
                                   1180 ;	life.c:171: memset(pu, 0, sizeof (pu));
      0023F5 E4               [12] 1181 	clr	a
      0023F6 C0 E0            [24] 1182 	push	acc
      0023F8 74 24            [12] 1183 	mov	a,#0x24
      0023FA C0 E0            [24] 1184 	push	acc
      0023FC E4               [12] 1185 	clr	a
      0023FD C0 E0            [24] 1186 	push	acc
      0023FF 90 64 00         [24] 1187 	mov	dptr,#_pu
      002402 75 F0 00         [24] 1188 	mov	b,#0x00
      002405 12 2E 79         [24] 1189 	lcall	_memset
      002408 15 81            [12] 1190 	dec	sp
      00240A 15 81            [12] 1191 	dec	sp
      00240C 15 81            [12] 1192 	dec	sp
                                   1193 ;	life.c:308: if (c == (int)'L') loadiu();
      00240E 78 3A            [12] 1194 	mov	r0,#_c
      002410 B6 4C 06         [24] 1195 	cjne	@r0,#0x4c,00557$
      002413 08               [12] 1196 	inc	r0
      002414 B6 00 02         [24] 1197 	cjne	@r0,#0x00,00557$
      002417 80 03            [24] 1198 	sjmp	00558$
      002419                       1199 00557$:
      002419 02 25 94         [24] 1200 	ljmp	00116$
      00241C                       1201 00558$:
                                   1202 ;	life.c:177: j = 0;
      00241C 78 38            [12] 1203 	mov	r0,#_j
      00241E E4               [12] 1204 	clr	a
      00241F F6               [12] 1205 	mov	@r0,a
      002420 08               [12] 1206 	inc	r0
      002421 F6               [12] 1207 	mov	@r0,a
                                   1208 ;	life.c:179: printstr("LOAD 0 1 ~ # <");
      002422 7D 4C            [12] 1209 	mov	r5,#___str_4
      002424 7E 30            [12] 1210 	mov	r6,#(___str_4 >> 8)
      002426 7F 80            [12] 1211 	mov	r7,#0x80
                                   1212 ;	life.c:74: return;
      002428                       1213 00217$:
                                   1214 ;	life.c:72: for (; *s; s++) putchar(*s);
      002428 8D 82            [24] 1215 	mov	dpl,r5
      00242A 8E 83            [24] 1216 	mov	dph,r6
      00242C 8F F0            [24] 1217 	mov	b,r7
      00242E 12 2F 0A         [24] 1218 	lcall	__gptrget
      002431 FC               [12] 1219 	mov	r4,a
      002432 60 10            [24] 1220 	jz	00156$
      002434 7B 00            [12] 1221 	mov	r3,#0x00
      002436 8C 82            [24] 1222 	mov	dpl,r4
      002438 8B 83            [24] 1223 	mov	dph,r3
      00243A 12 20 B5         [24] 1224 	lcall	_putchar
      00243D 0D               [12] 1225 	inc	r5
                                   1226 ;	life.c:179: printstr("LOAD 0 1 ~ # <");
      00243E BD 00 E7         [24] 1227 	cjne	r5,#0x00,00217$
      002441 0E               [12] 1228 	inc	r6
      002442 80 E4            [24] 1229 	sjmp	00217$
      002444                       1230 00156$:
                                   1231 ;	life.c:181: for (y = 0; y < (H * W); y += W) {
      002444 78 36            [12] 1232 	mov	r0,#_y
      002446 E4               [12] 1233 	clr	a
      002447 F6               [12] 1234 	mov	@r0,a
      002448 08               [12] 1235 	inc	r0
      002449 F6               [12] 1236 	mov	@r0,a
      00244A                       1237 00220$:
                                   1238 ;	life.c:182: for (x = 0; x < W; x++) {
      00244A 78 34            [12] 1239 	mov	r0,#_x
      00244C E4               [12] 1240 	clr	a
      00244D F6               [12] 1241 	mov	@r0,a
      00244E 08               [12] 1242 	inc	r0
      00244F F6               [12] 1243 	mov	@r0,a
                                   1244 ;	life.c:183: while (1) {
      002450                       1245 00169$:
                                   1246 ;	life.c:184: c = getchar();
      002450 12 20 BF         [24] 1247 	lcall	_getchar
      002453 AE 82            [24] 1248 	mov	r6,dpl
      002455 AF 83            [24] 1249 	mov	r7,dph
      002457 78 3A            [12] 1250 	mov	r0,#_c
      002459 A6 06            [24] 1251 	mov	@r0,ar6
      00245B 08               [12] 1252 	inc	r0
      00245C A6 07            [24] 1253 	mov	@r0,ar7
                                   1254 ;	life.c:185: if (c == (int)'0') {
      00245E BE 30 25         [24] 1255 	cjne	r6,#0x30,00167$
      002461 BF 00 22         [24] 1256 	cjne	r7,#0x00,00167$
                                   1257 ;	life.c:186: iu[y + x] = 0;
      002464 78 36            [12] 1258 	mov	r0,#_y
      002466 79 34            [12] 1259 	mov	r1,#_x
      002468 E7               [12] 1260 	mov	a,@r1
      002469 26               [12] 1261 	add	a,@r0
      00246A FC               [12] 1262 	mov	r4,a
      00246B 09               [12] 1263 	inc	r1
      00246C E7               [12] 1264 	mov	a,@r1
      00246D 08               [12] 1265 	inc	r0
      00246E 36               [12] 1266 	addc	a,@r0
      00246F FD               [12] 1267 	mov	r5,a
      002470 EC               [12] 1268 	mov	a,r4
      002471 24 00            [12] 1269 	add	a,#_iu
      002473 F5 82            [12] 1270 	mov	dpl,a
      002475 ED               [12] 1271 	mov	a,r5
      002476 34 40            [12] 1272 	addc	a,#(_iu >> 8)
      002478 F5 83            [12] 1273 	mov	dph,a
      00247A E4               [12] 1274 	clr	a
      00247B F0               [24] 1275 	movx	@dptr,a
                                   1276 ;	life.c:187: j++;
      00247C 78 38            [12] 1277 	mov	r0,#_j
      00247E 06               [12] 1278 	inc	@r0
      00247F B6 00 02         [24] 1279 	cjne	@r0,#0x00,00563$
      002482 08               [12] 1280 	inc	r0
      002483 06               [12] 1281 	inc	@r0
      002484                       1282 00563$:
                                   1283 ;	life.c:188: break;
      002484 80 39            [24] 1284 	sjmp	00172$
      002486                       1285 00167$:
                                   1286 ;	life.c:189: } else if (c == (int)'1') {
      002486 BE 31 26         [24] 1287 	cjne	r6,#0x31,00165$
      002489 BF 00 23         [24] 1288 	cjne	r7,#0x00,00165$
                                   1289 ;	life.c:190: iu[y + x] = 1;
      00248C 78 36            [12] 1290 	mov	r0,#_y
      00248E 79 34            [12] 1291 	mov	r1,#_x
      002490 E7               [12] 1292 	mov	a,@r1
      002491 26               [12] 1293 	add	a,@r0
      002492 FC               [12] 1294 	mov	r4,a
      002493 09               [12] 1295 	inc	r1
      002494 E7               [12] 1296 	mov	a,@r1
      002495 08               [12] 1297 	inc	r0
      002496 36               [12] 1298 	addc	a,@r0
      002497 FD               [12] 1299 	mov	r5,a
      002498 EC               [12] 1300 	mov	a,r4
      002499 24 00            [12] 1301 	add	a,#_iu
      00249B F5 82            [12] 1302 	mov	dpl,a
      00249D ED               [12] 1303 	mov	a,r5
      00249E 34 40            [12] 1304 	addc	a,#(_iu >> 8)
      0024A0 F5 83            [12] 1305 	mov	dph,a
      0024A2 74 01            [12] 1306 	mov	a,#0x01
      0024A4 F0               [24] 1307 	movx	@dptr,a
                                   1308 ;	life.c:191: j++;
      0024A5 78 38            [12] 1309 	mov	r0,#_j
      0024A7 06               [12] 1310 	inc	@r0
      0024A8 B6 00 02         [24] 1311 	cjne	@r0,#0x00,00566$
      0024AB 08               [12] 1312 	inc	r0
      0024AC 06               [12] 1313 	inc	@r0
      0024AD                       1314 00566$:
                                   1315 ;	life.c:192: break;
      0024AD 80 10            [24] 1316 	sjmp	00172$
      0024AF                       1317 00165$:
                                   1318 ;	life.c:193: } else if (c == (int)'~') goto br_inner;
      0024AF BE 7E 05         [24] 1319 	cjne	r6,#0x7e,00567$
      0024B2 BF 00 02         [24] 1320 	cjne	r7,#0x00,00567$
      0024B5 80 21            [24] 1321 	sjmp	00221$
      0024B7                       1322 00567$:
                                   1323 ;	life.c:194: else if (c == (int)'#') goto out;
                                   1324 ;	life.c:198: break;
      0024B7 BE 23 96         [24] 1325 	cjne	r6,#0x23,00169$
      0024BA BF 00 93         [24] 1326 	cjne	r7,#0x00,00169$
      0024BD 80 31            [24] 1327 	sjmp	00182$
      0024BF                       1328 00172$:
                                   1329 ;	life.c:182: for (x = 0; x < W; x++) {
      0024BF 78 34            [12] 1330 	mov	r0,#_x
      0024C1 06               [12] 1331 	inc	@r0
      0024C2 B6 00 02         [24] 1332 	cjne	@r0,#0x00,00569$
      0024C5 08               [12] 1333 	inc	r0
      0024C6 06               [12] 1334 	inc	@r0
      0024C7                       1335 00569$:
      0024C7 78 34            [12] 1336 	mov	r0,#_x
      0024C9 C3               [12] 1337 	clr	c
      0024CA E6               [12] 1338 	mov	a,@r0
      0024CB 94 30            [12] 1339 	subb	a,#0x30
      0024CD 08               [12] 1340 	inc	r0
      0024CE E6               [12] 1341 	mov	a,@r0
      0024CF 64 80            [12] 1342 	xrl	a,#0x80
      0024D1 94 80            [12] 1343 	subb	a,#0x80
      0024D3 50 03            [24] 1344 	jnc	00570$
      0024D5 02 24 50         [24] 1345 	ljmp	00169$
      0024D8                       1346 00570$:
      0024D8                       1347 00221$:
                                   1348 ;	life.c:181: for (y = 0; y < (H * W); y += W) {
      0024D8 78 36            [12] 1349 	mov	r0,#_y
      0024DA 74 30            [12] 1350 	mov	a,#0x30
      0024DC 26               [12] 1351 	add	a,@r0
      0024DD F6               [12] 1352 	mov	@r0,a
      0024DE E4               [12] 1353 	clr	a
      0024DF 08               [12] 1354 	inc	r0
      0024E0 36               [12] 1355 	addc	a,@r0
      0024E1 F6               [12] 1356 	mov	@r0,a
      0024E2 78 36            [12] 1357 	mov	r0,#_y
      0024E4 C3               [12] 1358 	clr	c
      0024E5 08               [12] 1359 	inc	r0
      0024E6 E6               [12] 1360 	mov	a,@r0
      0024E7 64 80            [12] 1361 	xrl	a,#0x80
      0024E9 94 A4            [12] 1362 	subb	a,#0xa4
      0024EB 50 03            [24] 1363 	jnc	00571$
      0024ED 02 24 4A         [24] 1364 	ljmp	00220$
      0024F0                       1365 00571$:
                                   1366 ;	life.c:202: out:
      0024F0                       1367 00182$:
                                   1368 ;	life.c:203: if (c != (int)'#')
      0024F0 BE 23 05         [24] 1369 	cjne	r6,#0x23,00572$
      0024F3 BF 00 02         [24] 1370 	cjne	r7,#0x00,00572$
      0024F6 80 14            [24] 1371 	sjmp	00181$
      0024F8                       1372 00572$:
                                   1373 ;	life.c:204: while (1) {
      0024F8                       1374 00178$:
                                   1375 ;	life.c:205: c = getchar();
      0024F8 12 20 BF         [24] 1376 	lcall	_getchar
      0024FB AE 82            [24] 1377 	mov	r6,dpl
      0024FD AF 83            [24] 1378 	mov	r7,dph
      0024FF 78 3A            [12] 1379 	mov	r0,#_c
      002501 A6 06            [24] 1380 	mov	@r0,ar6
      002503 08               [12] 1381 	inc	r0
      002504 A6 07            [24] 1382 	mov	@r0,ar7
                                   1383 ;	life.c:206: if (c == (int)'#') break;
      002506 BE 23 EF         [24] 1384 	cjne	r6,#0x23,00178$
      002509 BF 00 EC         [24] 1385 	cjne	r7,#0x00,00178$
      00250C                       1386 00181$:
                                   1387 ;	life.c:208: print16x(j);
      00250C 78 38            [12] 1388 	mov	r0,#_j
      00250E 86 06            [24] 1389 	mov	ar6,@r0
      002510 08               [12] 1390 	inc	r0
      002511 86 07            [24] 1391 	mov	ar7,@r0
      002513 8E 04            [24] 1392 	mov	ar4,r6
                                   1393 ;	life.c:63: putchar(digits[(a >> 12) & 0xf]);
      002515 EF               [12] 1394 	mov	a,r7
      002516 FD               [12] 1395 	mov	r5,a
      002517 C4               [12] 1396 	swap	a
      002518 54 0F            [12] 1397 	anl	a,#(0x0f&0x0f)
      00251A 24 21            [12] 1398 	add	a,#_digits
      00251C F9               [12] 1399 	mov	r1,a
      00251D 87 07            [24] 1400 	mov	ar7,@r1
      00251F 7E 00            [12] 1401 	mov	r6,#0x00
      002521 8F 82            [24] 1402 	mov	dpl,r7
      002523 8E 83            [24] 1403 	mov	dph,r6
      002525 12 20 B5         [24] 1404 	lcall	_putchar
                                   1405 ;	life.c:64: putchar(digits[(a >> 8) & 0xf]);
      002528 8D 07            [24] 1406 	mov	ar7,r5
      00252A 53 07 0F         [24] 1407 	anl	ar7,#0x0f
      00252D EF               [12] 1408 	mov	a,r7
      00252E 24 21            [12] 1409 	add	a,#_digits
      002530 F9               [12] 1410 	mov	r1,a
      002531 87 07            [24] 1411 	mov	ar7,@r1
      002533 7E 00            [12] 1412 	mov	r6,#0x00
      002535 8F 82            [24] 1413 	mov	dpl,r7
      002537 8E 83            [24] 1414 	mov	dph,r6
      002539 12 20 B5         [24] 1415 	lcall	_putchar
                                   1416 ;	life.c:65: putchar(digits[(a >> 4) & 0xf]);
      00253C 8C 06            [24] 1417 	mov	ar6,r4
      00253E ED               [12] 1418 	mov	a,r5
      00253F C4               [12] 1419 	swap	a
      002540 CE               [12] 1420 	xch	a,r6
      002541 C4               [12] 1421 	swap	a
      002542 54 0F            [12] 1422 	anl	a,#0x0f
      002544 6E               [12] 1423 	xrl	a,r6
      002545 CE               [12] 1424 	xch	a,r6
      002546 54 0F            [12] 1425 	anl	a,#0x0f
      002548 CE               [12] 1426 	xch	a,r6
      002549 6E               [12] 1427 	xrl	a,r6
      00254A CE               [12] 1428 	xch	a,r6
      00254B 53 06 0F         [24] 1429 	anl	ar6,#0x0f
      00254E EE               [12] 1430 	mov	a,r6
      00254F 24 21            [12] 1431 	add	a,#_digits
      002551 F9               [12] 1432 	mov	r1,a
      002552 87 07            [24] 1433 	mov	ar7,@r1
      002554 7E 00            [12] 1434 	mov	r6,#0x00
      002556 8F 82            [24] 1435 	mov	dpl,r7
      002558 8E 83            [24] 1436 	mov	dph,r6
      00255A 12 20 B5         [24] 1437 	lcall	_putchar
                                   1438 ;	life.c:66: putchar(digits[a & 0xf]);
      00255D 53 04 0F         [24] 1439 	anl	ar4,#0x0f
      002560 EC               [12] 1440 	mov	a,r4
      002561 24 21            [12] 1441 	add	a,#_digits
      002563 F9               [12] 1442 	mov	r1,a
      002564 87 07            [24] 1443 	mov	ar7,@r1
      002566 7E 00            [12] 1444 	mov	r6,#0x00
      002568 8F 82            [24] 1445 	mov	dpl,r7
      00256A 8E 83            [24] 1446 	mov	dph,r6
      00256C 12 20 B5         [24] 1447 	lcall	_putchar
                                   1448 ;	life.c:209: printstr(">\r\n");
      00256F 7D 5B            [12] 1449 	mov	r5,#___str_5
      002571 7E 30            [12] 1450 	mov	r6,#(___str_5 >> 8)
      002573 7F 80            [12] 1451 	mov	r7,#0x80
                                   1452 ;	life.c:74: return;
      002575                       1453 00223$:
                                   1454 ;	life.c:72: for (; *s; s++) putchar(*s);
      002575 8D 82            [24] 1455 	mov	dpl,r5
      002577 8E 83            [24] 1456 	mov	dph,r6
      002579 8F F0            [24] 1457 	mov	b,r7
      00257B 12 2F 0A         [24] 1458 	lcall	__gptrget
      00257E FC               [12] 1459 	mov	r4,a
      00257F 70 03            [24] 1460 	jnz	00575$
      002581 02 26 4D         [24] 1461 	ljmp	00117$
      002584                       1462 00575$:
      002584 7B 00            [12] 1463 	mov	r3,#0x00
      002586 8C 82            [24] 1464 	mov	dpl,r4
      002588 8B 83            [24] 1465 	mov	dph,r3
      00258A 12 20 B5         [24] 1466 	lcall	_putchar
      00258D 0D               [12] 1467 	inc	r5
                                   1468 ;	life.c:308: if (c == (int)'L') loadiu();
      00258E BD 00 E4         [24] 1469 	cjne	r5,#0x00,00223$
      002591 0E               [12] 1470 	inc	r6
      002592 80 E1            [24] 1471 	sjmp	00223$
      002594                       1472 00116$:
                                   1473 ;	life.c:309: else if (c == (int)'R') loadriu();
      002594 78 3A            [12] 1474 	mov	r0,#_c
      002596 B6 52 06         [24] 1475 	cjne	@r0,#0x52,00577$
      002599 08               [12] 1476 	inc	r0
      00259A B6 00 02         [24] 1477 	cjne	@r0,#0x00,00577$
      00259D 80 03            [24] 1478 	sjmp	00578$
      00259F                       1479 00577$:
      00259F 02 26 4D         [24] 1480 	ljmp	00117$
      0025A2                       1481 00578$:
                                   1482 ;	life.c:215: j = 0;
      0025A2 78 38            [12] 1483 	mov	r0,#_j
      0025A4 E4               [12] 1484 	clr	a
      0025A5 F6               [12] 1485 	mov	@r0,a
      0025A6 08               [12] 1486 	inc	r0
      0025A7 F6               [12] 1487 	mov	@r0,a
                                   1488 ;	life.c:217: printstr("RANDOM");
      0025A8 7D 5F            [12] 1489 	mov	r5,#___str_6
      0025AA 7E 30            [12] 1490 	mov	r6,#(___str_6 >> 8)
      0025AC 7F 80            [12] 1491 	mov	r7,#0x80
                                   1492 ;	life.c:74: return;
      0025AE                       1493 00226$:
                                   1494 ;	life.c:72: for (; *s; s++) putchar(*s);
      0025AE 8D 82            [24] 1495 	mov	dpl,r5
      0025B0 8E 83            [24] 1496 	mov	dph,r6
      0025B2 8F F0            [24] 1497 	mov	b,r7
      0025B4 12 2F 0A         [24] 1498 	lcall	__gptrget
      0025B7 FC               [12] 1499 	mov	r4,a
      0025B8 60 10            [24] 1500 	jz	00188$
      0025BA 7B 00            [12] 1501 	mov	r3,#0x00
      0025BC 8C 82            [24] 1502 	mov	dpl,r4
      0025BE 8B 83            [24] 1503 	mov	dph,r3
      0025C0 12 20 B5         [24] 1504 	lcall	_putchar
      0025C3 0D               [12] 1505 	inc	r5
                                   1506 ;	life.c:217: printstr("RANDOM");
      0025C4 BD 00 E7         [24] 1507 	cjne	r5,#0x00,00226$
      0025C7 0E               [12] 1508 	inc	r6
      0025C8 80 E4            [24] 1509 	sjmp	00226$
      0025CA                       1510 00188$:
                                   1511 ;	life.c:219: for (y = 0; y < (H * W); y += W)
      0025CA 78 36            [12] 1512 	mov	r0,#_y
      0025CC E4               [12] 1513 	clr	a
      0025CD F6               [12] 1514 	mov	@r0,a
      0025CE 08               [12] 1515 	inc	r0
      0025CF F6               [12] 1516 	mov	@r0,a
      0025D0                       1517 00230$:
                                   1518 ;	life.c:220: for (x = 0; x < W; x++)
      0025D0 78 34            [12] 1519 	mov	r0,#_x
      0025D2 E4               [12] 1520 	clr	a
      0025D3 F6               [12] 1521 	mov	@r0,a
      0025D4 08               [12] 1522 	inc	r0
      0025D5 F6               [12] 1523 	mov	@r0,a
      0025D6                       1524 00228$:
                                   1525 ;	life.c:221: iu[y + x] = rand() & 1;
      0025D6 78 36            [12] 1526 	mov	r0,#_y
      0025D8 79 34            [12] 1527 	mov	r1,#_x
      0025DA E7               [12] 1528 	mov	a,@r1
      0025DB 26               [12] 1529 	add	a,@r0
      0025DC FE               [12] 1530 	mov	r6,a
      0025DD 09               [12] 1531 	inc	r1
      0025DE E7               [12] 1532 	mov	a,@r1
      0025DF 08               [12] 1533 	inc	r0
      0025E0 36               [12] 1534 	addc	a,@r0
      0025E1 FF               [12] 1535 	mov	r7,a
      0025E2 EE               [12] 1536 	mov	a,r6
      0025E3 24 00            [12] 1537 	add	a,#_iu
      0025E5 FE               [12] 1538 	mov	r6,a
      0025E6 EF               [12] 1539 	mov	a,r7
      0025E7 34 40            [12] 1540 	addc	a,#(_iu >> 8)
      0025E9 FF               [12] 1541 	mov	r7,a
      0025EA C0 07            [24] 1542 	push	ar7
      0025EC C0 06            [24] 1543 	push	ar6
      0025EE 12 2C 6B         [24] 1544 	lcall	_rand
      0025F1 AC 82            [24] 1545 	mov	r4,dpl
      0025F3 D0 06            [24] 1546 	pop	ar6
      0025F5 D0 07            [24] 1547 	pop	ar7
      0025F7 53 04 01         [24] 1548 	anl	ar4,#0x01
      0025FA 8E 82            [24] 1549 	mov	dpl,r6
      0025FC 8F 83            [24] 1550 	mov	dph,r7
      0025FE EC               [12] 1551 	mov	a,r4
      0025FF F0               [24] 1552 	movx	@dptr,a
                                   1553 ;	life.c:220: for (x = 0; x < W; x++)
      002600 78 34            [12] 1554 	mov	r0,#_x
      002602 06               [12] 1555 	inc	@r0
      002603 B6 00 02         [24] 1556 	cjne	@r0,#0x00,00581$
      002606 08               [12] 1557 	inc	r0
      002607 06               [12] 1558 	inc	@r0
      002608                       1559 00581$:
      002608 78 34            [12] 1560 	mov	r0,#_x
      00260A C3               [12] 1561 	clr	c
      00260B E6               [12] 1562 	mov	a,@r0
      00260C 94 30            [12] 1563 	subb	a,#0x30
      00260E 08               [12] 1564 	inc	r0
      00260F E6               [12] 1565 	mov	a,@r0
      002610 64 80            [12] 1566 	xrl	a,#0x80
      002612 94 80            [12] 1567 	subb	a,#0x80
      002614 40 C0            [24] 1568 	jc	00228$
                                   1569 ;	life.c:219: for (y = 0; y < (H * W); y += W)
      002616 78 36            [12] 1570 	mov	r0,#_y
      002618 74 30            [12] 1571 	mov	a,#0x30
      00261A 26               [12] 1572 	add	a,@r0
      00261B F6               [12] 1573 	mov	@r0,a
      00261C E4               [12] 1574 	clr	a
      00261D 08               [12] 1575 	inc	r0
      00261E 36               [12] 1576 	addc	a,@r0
      00261F F6               [12] 1577 	mov	@r0,a
      002620 78 36            [12] 1578 	mov	r0,#_y
      002622 C3               [12] 1579 	clr	c
      002623 08               [12] 1580 	inc	r0
      002624 E6               [12] 1581 	mov	a,@r0
      002625 64 80            [12] 1582 	xrl	a,#0x80
      002627 94 A4            [12] 1583 	subb	a,#0xa4
      002629 40 A5            [24] 1584 	jc	00230$
                                   1585 ;	life.c:223: printstr("\r\n");
      00262B 7D 42            [12] 1586 	mov	r5,#___str_2
      00262D 7E 30            [12] 1587 	mov	r6,#(___str_2 >> 8)
      00262F 7F 80            [12] 1588 	mov	r7,#0x80
                                   1589 ;	life.c:74: return;
      002631                       1590 00233$:
                                   1591 ;	life.c:72: for (; *s; s++) putchar(*s);
      002631 8D 82            [24] 1592 	mov	dpl,r5
      002633 8E 83            [24] 1593 	mov	dph,r6
      002635 8F F0            [24] 1594 	mov	b,r7
      002637 12 2F 0A         [24] 1595 	lcall	__gptrget
      00263A FC               [12] 1596 	mov	r4,a
      00263B 60 10            [24] 1597 	jz	00117$
      00263D 7B 00            [12] 1598 	mov	r3,#0x00
      00263F 8C 82            [24] 1599 	mov	dpl,r4
      002641 8B 83            [24] 1600 	mov	dph,r3
      002643 12 20 B5         [24] 1601 	lcall	_putchar
      002646 0D               [12] 1602 	inc	r5
                                   1603 ;	life.c:309: else if (c == (int)'R') loadriu();
      002647 BD 00 E7         [24] 1604 	cjne	r5,#0x00,00233$
      00264A 0E               [12] 1605 	inc	r6
      00264B 80 E4            [24] 1606 	sjmp	00233$
      00264D                       1607 00117$:
                                   1608 ;	life.c:310: memcpy(u, iu, sizeof (iu));
      00264D E4               [12] 1609 	clr	a
      00264E C0 E0            [24] 1610 	push	acc
      002650 74 24            [12] 1611 	mov	a,#0x24
      002652 C0 E0            [24] 1612 	push	acc
      002654 74 00            [12] 1613 	mov	a,#_iu
      002656 C0 E0            [24] 1614 	push	acc
      002658 74 40            [12] 1615 	mov	a,#(_iu >> 8)
      00265A C0 E0            [24] 1616 	push	acc
      00265C E4               [12] 1617 	clr	a
      00265D C0 E0            [24] 1618 	push	acc
      00265F 90 88 00         [24] 1619 	mov	dptr,#_u
      002662 75 F0 00         [24] 1620 	mov	b,#0x00
      002665 12 2D E6         [24] 1621 	lcall	___memcpy
      002668 E5 81            [12] 1622 	mov	a,sp
      00266A 24 FB            [12] 1623 	add	a,#0xfb
      00266C F5 81            [12] 1624 	mov	sp,a
                                   1625 ;	life.c:311: show(0);
      00266E 75 82 00         [24] 1626 	mov	dpl,#0x00
      002671 12 21 10         [24] 1627 	lcall	_show
                                   1628 ;	life.c:313: printstr("READY T L R P S\r\n");
      002674 7D 84            [12] 1629 	mov	r5,#___str_9
      002676 7E 30            [12] 1630 	mov	r6,#(___str_9 >> 8)
      002678 7F 80            [12] 1631 	mov	r7,#0x80
                                   1632 ;	life.c:74: return;
      00267A                       1633 00236$:
                                   1634 ;	life.c:72: for (; *s; s++) putchar(*s);
      00267A 8D 82            [24] 1635 	mov	dpl,r5
      00267C 8E 83            [24] 1636 	mov	dph,r6
      00267E 8F F0            [24] 1637 	mov	b,r7
      002680 12 2F 0A         [24] 1638 	lcall	__gptrget
      002683 FC               [12] 1639 	mov	r4,a
      002684 60 10            [24] 1640 	jz	00130$
      002686 7B 00            [12] 1641 	mov	r3,#0x00
      002688 8C 82            [24] 1642 	mov	dpl,r4
      00268A 8B 83            [24] 1643 	mov	dph,r3
      00268C 12 20 B5         [24] 1644 	lcall	_putchar
      00268F 0D               [12] 1645 	inc	r5
                                   1646 ;	life.c:314: while (1) {
      002690 BD 00 E7         [24] 1647 	cjne	r5,#0x00,00236$
      002693 0E               [12] 1648 	inc	r6
      002694 80 E4            [24] 1649 	sjmp	00236$
      002696                       1650 00130$:
                                   1651 ;	life.c:315: c = toupper(getchar());
      002696 12 20 BF         [24] 1652 	lcall	_getchar
      002699 12 2E E3         [24] 1653 	lcall	_toupper
      00269C AE 82            [24] 1654 	mov	r6,dpl
      00269E AF 83            [24] 1655 	mov	r7,dph
      0026A0 78 3A            [12] 1656 	mov	r0,#_c
      0026A2 A6 06            [24] 1657 	mov	@r0,ar6
      0026A4 08               [12] 1658 	inc	r0
      0026A5 A6 07            [24] 1659 	mov	@r0,ar7
                                   1660 ;	life.c:316: if (i0 || (c == (int)'T')) goto term;
      0026A7 78 31            [12] 1661 	mov	r0,#_i0
      0026A9 E6               [12] 1662 	mov	a,@r0
      0026AA 60 03            [24] 1663 	jz	00588$
      0026AC 02 2C 3B         [24] 1664 	ljmp	00149$
      0026AF                       1665 00588$:
      0026AF BE 54 06         [24] 1666 	cjne	r6,#0x54,00589$
      0026B2 BF 00 03         [24] 1667 	cjne	r7,#0x00,00589$
      0026B5 02 2C 3B         [24] 1668 	ljmp	00149$
      0026B8                       1669 00589$:
                                   1670 ;	life.c:317: else if ((c == (int)'L') || (c == (int)'R') || (c == (int)'P')) goto reload;
      0026B8 BE 4C 06         [24] 1671 	cjne	r6,#0x4c,00590$
      0026BB BF 00 03         [24] 1672 	cjne	r7,#0x00,00590$
      0026BE 02 23 DC         [24] 1673 	ljmp	00112$
      0026C1                       1674 00590$:
      0026C1 BE 52 06         [24] 1675 	cjne	r6,#0x52,00591$
      0026C4 BF 00 03         [24] 1676 	cjne	r7,#0x00,00591$
      0026C7 02 23 DC         [24] 1677 	ljmp	00112$
      0026CA                       1678 00591$:
      0026CA BE 50 06         [24] 1679 	cjne	r6,#0x50,00592$
      0026CD BF 00 03         [24] 1680 	cjne	r7,#0x00,00592$
      0026D0 02 23 DC         [24] 1681 	ljmp	00112$
      0026D3                       1682 00592$:
                                   1683 ;	life.c:318: else if (c == (int)'S') break;
      0026D3 BE 53 C0         [24] 1684 	cjne	r6,#0x53,00130$
      0026D6 BF 00 BD         [24] 1685 	cjne	r7,#0x00,00130$
                                   1686 ;	life.c:127: generation[0] = 0u;
      0026D9 78 43            [12] 1687 	mov	r0,#_generation
      0026DB 76 00            [12] 1688 	mov	@r0,#0x00
      0026DD 08               [12] 1689 	inc	r0
      0026DE 76 00            [12] 1690 	mov	@r0,#0x00
                                   1691 ;	life.c:128: generation[1] = 0u;
      0026E0 78 45            [12] 1692 	mov	r0,#(_generation + 0x0002)
      0026E2 76 00            [12] 1693 	mov	@r0,#0x00
      0026E4 08               [12] 1694 	inc	r0
      0026E5 76 00            [12] 1695 	mov	@r0,#0x00
                                   1696 ;	life.c:323: for (i1 = 0; !i0 && !i1; ) {
      0026E7 78 32            [12] 1697 	mov	r0,#_i1
      0026E9 76 00            [12] 1698 	mov	@r0,#0x00
      0026EB                       1699 00253$:
      0026EB 78 31            [12] 1700 	mov	r0,#_i0
      0026ED E6               [12] 1701 	mov	a,@r0
      0026EE 60 03            [24] 1702 	jz	00595$
      0026F0 02 2C 09         [24] 1703 	ljmp	00145$
      0026F3                       1704 00595$:
      0026F3 78 32            [12] 1705 	mov	r0,#_i1
      0026F5 E6               [12] 1706 	mov	a,@r0
      0026F6 60 03            [24] 1707 	jz	00596$
      0026F8 02 2C 09         [24] 1708 	ljmp	00145$
      0026FB                       1709 00596$:
                                   1710 ;	life.c:324: show(1);
      0026FB 75 82 01         [24] 1711 	mov	dpl,#0x01
      0026FE 12 21 10         [24] 1712 	lcall	_show
                                   1713 ;	life.c:229: fixed = 0;
      002701 78 3D            [12] 1714 	mov	r0,#_fixed
      002703 76 00            [12] 1715 	mov	@r0,#0x00
                                   1716 ;	life.c:230: cycle2 = 0;
      002705 78 3E            [12] 1717 	mov	r0,#_cycle2
      002707 76 00            [12] 1718 	mov	@r0,#0x00
                                   1719 ;	life.c:232: OE76 = OE76_0;
      002709 78 33            [12] 1720 	mov	r0,#_OE76
      00270B 76 3F            [12] 1721 	mov	@r0,#0x3f
                                   1722 ;	life.c:233: flashOE();
      00270D 12 20 FE         [24] 1723 	lcall	_flashOE
                                   1724 ;	life.c:235: for (y = 0; y < H; y++) {
      002710 78 36            [12] 1725 	mov	r0,#_y
      002712 E4               [12] 1726 	clr	a
      002713 F6               [12] 1727 	mov	@r0,a
      002714 08               [12] 1728 	inc	r0
      002715 F6               [12] 1729 	mov	@r0,a
      002716                       1730 00240$:
                                   1731 ;	life.c:236: OE76 = OE76_0 | ((y & 0x0003u) << 6);
      002716 78 36            [12] 1732 	mov	r0,#_y
      002718 86 07            [24] 1733 	mov	ar7,@r0
      00271A 53 07 03         [24] 1734 	anl	ar7,#0x03
      00271D EF               [12] 1735 	mov	a,r7
      00271E 03               [12] 1736 	rr	a
      00271F 03               [12] 1737 	rr	a
      002720 54 C0            [12] 1738 	anl	a,#0xc0
      002722 FF               [12] 1739 	mov	r7,a
      002723 78 33            [12] 1740 	mov	r0,#_OE76
      002725 74 3F            [12] 1741 	mov	a,#0x3f
      002727 4F               [12] 1742 	orl	a,r7
      002728 F6               [12] 1743 	mov	@r0,a
                                   1744 ;	life.c:237: flashOE();
      002729 12 20 FE         [24] 1745 	lcall	_flashOE
                                   1746 ;	life.c:238: for (x = 0; x < W; x++) {
      00272C 78 34            [12] 1747 	mov	r0,#_x
      00272E E4               [12] 1748 	clr	a
      00272F F6               [12] 1749 	mov	@r0,a
      002730 08               [12] 1750 	inc	r0
      002731 F6               [12] 1751 	mov	@r0,a
      002732                       1752 00238$:
                                   1753 ;	life.c:239: n = -u[A2D(W, y, x)];
      002732 78 36            [12] 1754 	mov	r0,#_y
      002734 E6               [12] 1755 	mov	a,@r0
      002735 C0 E0            [24] 1756 	push	acc
      002737 08               [12] 1757 	inc	r0
      002738 E6               [12] 1758 	mov	a,@r0
      002739 C0 E0            [24] 1759 	push	acc
      00273B 90 00 30         [24] 1760 	mov	dptr,#0x0030
      00273E 12 2D 48         [24] 1761 	lcall	__mulint
      002741 C8               [12] 1762 	xch	a,r0
      002742 E5 10            [12] 1763 	mov	a,_bp
      002744 24 04            [12] 1764 	add	a,#0x04
      002746 C8               [12] 1765 	xch	a,r0
      002747 A6 82            [24] 1766 	mov	@r0,dpl
      002749 08               [12] 1767 	inc	r0
      00274A A6 83            [24] 1768 	mov	@r0,dph
      00274C 15 81            [12] 1769 	dec	sp
      00274E 15 81            [12] 1770 	dec	sp
      002750 E5 10            [12] 1771 	mov	a,_bp
      002752 24 04            [12] 1772 	add	a,#0x04
      002754 F8               [12] 1773 	mov	r0,a
      002755 79 34            [12] 1774 	mov	r1,#_x
      002757 E7               [12] 1775 	mov	a,@r1
      002758 26               [12] 1776 	add	a,@r0
      002759 C0 E0            [24] 1777 	push	acc
      00275B 09               [12] 1778 	inc	r1
      00275C E7               [12] 1779 	mov	a,@r1
      00275D 08               [12] 1780 	inc	r0
      00275E 36               [12] 1781 	addc	a,@r0
      00275F C0 E0            [24] 1782 	push	acc
      002761 E5 10            [12] 1783 	mov	a,_bp
      002763 24 03            [12] 1784 	add	a,#0x03
      002765 F8               [12] 1785 	mov	r0,a
      002766 D0 E0            [24] 1786 	pop	acc
      002768 F6               [12] 1787 	mov	@r0,a
      002769 18               [12] 1788 	dec	r0
      00276A D0 E0            [24] 1789 	pop	acc
      00276C F6               [12] 1790 	mov	@r0,a
      00276D A8 10            [24] 1791 	mov	r0,_bp
      00276F 08               [12] 1792 	inc	r0
      002770 08               [12] 1793 	inc	r0
      002771 E6               [12] 1794 	mov	a,@r0
      002772 24 00            [12] 1795 	add	a,#_u
      002774 F5 82            [12] 1796 	mov	dpl,a
      002776 08               [12] 1797 	inc	r0
      002777 E6               [12] 1798 	mov	a,@r0
      002778 34 88            [12] 1799 	addc	a,#(_u >> 8)
      00277A F5 83            [12] 1800 	mov	dph,a
      00277C E0               [24] 1801 	movx	a,@dptr
      00277D FB               [12] 1802 	mov	r3,a
      00277E A8 10            [24] 1803 	mov	r0,_bp
      002780 08               [12] 1804 	inc	r0
      002781 C3               [12] 1805 	clr	c
      002782 E4               [12] 1806 	clr	a
      002783 9B               [12] 1807 	subb	a,r3
      002784 F6               [12] 1808 	mov	@r0,a
                                   1809 ;	life.c:242: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      002785 78 36            [12] 1810 	mov	r0,#_y
      002787 74 FF            [12] 1811 	mov	a,#0xff
      002789 26               [12] 1812 	add	a,@r0
      00278A FA               [12] 1813 	mov	r2,a
      00278B 74 FF            [12] 1814 	mov	a,#0xff
      00278D 08               [12] 1815 	inc	r0
      00278E 36               [12] 1816 	addc	a,@r0
      00278F FB               [12] 1817 	mov	r3,a
      002790 74 C0            [12] 1818 	mov	a,#0xc0
      002792 2A               [12] 1819 	add	a,r2
      002793 FA               [12] 1820 	mov	r2,a
      002794 E4               [12] 1821 	clr	a
      002795 3B               [12] 1822 	addc	a,r3
      002796 FB               [12] 1823 	mov	r3,a
      002797 74 C0            [12] 1824 	mov	a,#0xc0
      002799 C0 E0            [24] 1825 	push	acc
      00279B E4               [12] 1826 	clr	a
      00279C C0 E0            [24] 1827 	push	acc
      00279E 8A 82            [24] 1828 	mov	dpl,r2
      0027A0 8B 83            [24] 1829 	mov	dph,r3
      0027A2 12 2F 26         [24] 1830 	lcall	__modsint
      0027A5 AA 82            [24] 1831 	mov	r2,dpl
      0027A7 AB 83            [24] 1832 	mov	r3,dph
      0027A9 15 81            [12] 1833 	dec	sp
      0027AB 15 81            [12] 1834 	dec	sp
      0027AD C0 02            [24] 1835 	push	ar2
      0027AF C0 03            [24] 1836 	push	ar3
      0027B1 90 00 30         [24] 1837 	mov	dptr,#0x0030
      0027B4 12 2D 48         [24] 1838 	lcall	__mulint
      0027B7 AA 82            [24] 1839 	mov	r2,dpl
      0027B9 AB 83            [24] 1840 	mov	r3,dph
      0027BB 15 81            [12] 1841 	dec	sp
      0027BD 15 81            [12] 1842 	dec	sp
      0027BF 78 34            [12] 1843 	mov	r0,#_x
      0027C1 74 FF            [12] 1844 	mov	a,#0xff
      0027C3 26               [12] 1845 	add	a,@r0
      0027C4 FC               [12] 1846 	mov	r4,a
      0027C5 74 FF            [12] 1847 	mov	a,#0xff
      0027C7 08               [12] 1848 	inc	r0
      0027C8 36               [12] 1849 	addc	a,@r0
      0027C9 FD               [12] 1850 	mov	r5,a
      0027CA 74 30            [12] 1851 	mov	a,#0x30
      0027CC 2C               [12] 1852 	add	a,r4
      0027CD FC               [12] 1853 	mov	r4,a
      0027CE E4               [12] 1854 	clr	a
      0027CF 3D               [12] 1855 	addc	a,r5
      0027D0 FD               [12] 1856 	mov	r5,a
      0027D1 C0 03            [24] 1857 	push	ar3
      0027D3 C0 02            [24] 1858 	push	ar2
      0027D5 74 30            [12] 1859 	mov	a,#0x30
      0027D7 C0 E0            [24] 1860 	push	acc
      0027D9 E4               [12] 1861 	clr	a
      0027DA C0 E0            [24] 1862 	push	acc
      0027DC 8C 82            [24] 1863 	mov	dpl,r4
      0027DE 8D 83            [24] 1864 	mov	dph,r5
      0027E0 12 2F 26         [24] 1865 	lcall	__modsint
      0027E3 AC 82            [24] 1866 	mov	r4,dpl
      0027E5 AD 83            [24] 1867 	mov	r5,dph
      0027E7 15 81            [12] 1868 	dec	sp
      0027E9 15 81            [12] 1869 	dec	sp
      0027EB D0 02            [24] 1870 	pop	ar2
      0027ED D0 03            [24] 1871 	pop	ar3
      0027EF EC               [12] 1872 	mov	a,r4
      0027F0 2A               [12] 1873 	add	a,r2
      0027F1 FE               [12] 1874 	mov	r6,a
      0027F2 ED               [12] 1875 	mov	a,r5
      0027F3 3B               [12] 1876 	addc	a,r3
      0027F4 FF               [12] 1877 	mov	r7,a
      0027F5 EE               [12] 1878 	mov	a,r6
      0027F6 24 00            [12] 1879 	add	a,#_u
      0027F8 F5 82            [12] 1880 	mov	dpl,a
      0027FA EF               [12] 1881 	mov	a,r7
      0027FB 34 88            [12] 1882 	addc	a,#(_u >> 8)
      0027FD F5 83            [12] 1883 	mov	dph,a
      0027FF E0               [24] 1884 	movx	a,@dptr
      002800 FF               [12] 1885 	mov	r7,a
      002801 A8 10            [24] 1886 	mov	r0,_bp
      002803 08               [12] 1887 	inc	r0
      002804 EF               [12] 1888 	mov	a,r7
      002805 26               [12] 1889 	add	a,@r0
      002806 F6               [12] 1890 	mov	@r0,a
                                   1891 ;	life.c:244: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      002807 78 34            [12] 1892 	mov	r0,#_x
      002809 E5 10            [12] 1893 	mov	a,_bp
      00280B 24 06            [12] 1894 	add	a,#0x06
      00280D F9               [12] 1895 	mov	r1,a
      00280E E6               [12] 1896 	mov	a,@r0
      00280F F7               [12] 1897 	mov	@r1,a
      002810 08               [12] 1898 	inc	r0
      002811 09               [12] 1899 	inc	r1
      002812 E6               [12] 1900 	mov	a,@r0
      002813 F7               [12] 1901 	mov	@r1,a
      002814 E5 10            [12] 1902 	mov	a,_bp
      002816 24 06            [12] 1903 	add	a,#0x06
      002818 F8               [12] 1904 	mov	r0,a
      002819 74 30            [12] 1905 	mov	a,#0x30
      00281B 26               [12] 1906 	add	a,@r0
      00281C FE               [12] 1907 	mov	r6,a
      00281D E4               [12] 1908 	clr	a
      00281E 08               [12] 1909 	inc	r0
      00281F 36               [12] 1910 	addc	a,@r0
      002820 FF               [12] 1911 	mov	r7,a
      002821 C0 05            [24] 1912 	push	ar5
      002823 C0 04            [24] 1913 	push	ar4
      002825 C0 03            [24] 1914 	push	ar3
      002827 C0 02            [24] 1915 	push	ar2
      002829 74 30            [12] 1916 	mov	a,#0x30
      00282B C0 E0            [24] 1917 	push	acc
      00282D E4               [12] 1918 	clr	a
      00282E C0 E0            [24] 1919 	push	acc
      002830 8E 82            [24] 1920 	mov	dpl,r6
      002832 8F 83            [24] 1921 	mov	dph,r7
      002834 12 2F 26         [24] 1922 	lcall	__modsint
      002837 C8               [12] 1923 	xch	a,r0
      002838 E5 10            [12] 1924 	mov	a,_bp
      00283A 24 08            [12] 1925 	add	a,#0x08
      00283C C8               [12] 1926 	xch	a,r0
      00283D A6 82            [24] 1927 	mov	@r0,dpl
      00283F 08               [12] 1928 	inc	r0
      002840 A6 83            [24] 1929 	mov	@r0,dph
      002842 15 81            [12] 1930 	dec	sp
      002844 15 81            [12] 1931 	dec	sp
      002846 D0 02            [24] 1932 	pop	ar2
      002848 D0 03            [24] 1933 	pop	ar3
      00284A E5 10            [12] 1934 	mov	a,_bp
      00284C 24 08            [12] 1935 	add	a,#0x08
      00284E F8               [12] 1936 	mov	r0,a
      00284F E6               [12] 1937 	mov	a,@r0
      002850 2A               [12] 1938 	add	a,r2
      002851 FE               [12] 1939 	mov	r6,a
      002852 08               [12] 1940 	inc	r0
      002853 E6               [12] 1941 	mov	a,@r0
      002854 3B               [12] 1942 	addc	a,r3
      002855 FF               [12] 1943 	mov	r7,a
      002856 EE               [12] 1944 	mov	a,r6
      002857 24 00            [12] 1945 	add	a,#_u
      002859 F5 82            [12] 1946 	mov	dpl,a
      00285B EF               [12] 1947 	mov	a,r7
      00285C 34 88            [12] 1948 	addc	a,#(_u >> 8)
      00285E F5 83            [12] 1949 	mov	dph,a
      002860 E0               [24] 1950 	movx	a,@dptr
      002861 FF               [12] 1951 	mov	r7,a
      002862 A8 10            [24] 1952 	mov	r0,_bp
      002864 08               [12] 1953 	inc	r0
      002865 EF               [12] 1954 	mov	a,r7
      002866 26               [12] 1955 	add	a,@r0
      002867 F6               [12] 1956 	mov	@r0,a
                                   1957 ;	life.c:246: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      002868 E5 10            [12] 1958 	mov	a,_bp
      00286A 24 06            [12] 1959 	add	a,#0x06
      00286C F8               [12] 1960 	mov	r0,a
      00286D 74 31            [12] 1961 	mov	a,#0x31
      00286F 26               [12] 1962 	add	a,@r0
      002870 FE               [12] 1963 	mov	r6,a
      002871 E4               [12] 1964 	clr	a
      002872 08               [12] 1965 	inc	r0
      002873 36               [12] 1966 	addc	a,@r0
      002874 FF               [12] 1967 	mov	r7,a
      002875 C0 03            [24] 1968 	push	ar3
      002877 C0 02            [24] 1969 	push	ar2
      002879 74 30            [12] 1970 	mov	a,#0x30
      00287B C0 E0            [24] 1971 	push	acc
      00287D E4               [12] 1972 	clr	a
      00287E C0 E0            [24] 1973 	push	acc
      002880 8E 82            [24] 1974 	mov	dpl,r6
      002882 8F 83            [24] 1975 	mov	dph,r7
      002884 12 2F 26         [24] 1976 	lcall	__modsint
      002887 AE 82            [24] 1977 	mov	r6,dpl
      002889 AF 83            [24] 1978 	mov	r7,dph
      00288B 15 81            [12] 1979 	dec	sp
      00288D 15 81            [12] 1980 	dec	sp
      00288F D0 02            [24] 1981 	pop	ar2
      002891 D0 03            [24] 1982 	pop	ar3
      002893 D0 04            [24] 1983 	pop	ar4
      002895 D0 05            [24] 1984 	pop	ar5
      002897 EE               [12] 1985 	mov	a,r6
      002898 2A               [12] 1986 	add	a,r2
      002899 FA               [12] 1987 	mov	r2,a
      00289A EF               [12] 1988 	mov	a,r7
      00289B 3B               [12] 1989 	addc	a,r3
      00289C FB               [12] 1990 	mov	r3,a
      00289D EA               [12] 1991 	mov	a,r2
      00289E 24 00            [12] 1992 	add	a,#_u
      0028A0 F5 82            [12] 1993 	mov	dpl,a
      0028A2 EB               [12] 1994 	mov	a,r3
      0028A3 34 88            [12] 1995 	addc	a,#(_u >> 8)
      0028A5 F5 83            [12] 1996 	mov	dph,a
      0028A7 E0               [24] 1997 	movx	a,@dptr
      0028A8 FB               [12] 1998 	mov	r3,a
      0028A9 A8 10            [24] 1999 	mov	r0,_bp
      0028AB 08               [12] 2000 	inc	r0
      0028AC EB               [12] 2001 	mov	a,r3
      0028AD 26               [12] 2002 	add	a,@r0
      0028AE F6               [12] 2003 	mov	@r0,a
                                   2004 ;	life.c:248: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      0028AF 78 36            [12] 2005 	mov	r0,#_y
      0028B1 E5 10            [12] 2006 	mov	a,_bp
      0028B3 24 0A            [12] 2007 	add	a,#0x0a
      0028B5 F9               [12] 2008 	mov	r1,a
      0028B6 E6               [12] 2009 	mov	a,@r0
      0028B7 F7               [12] 2010 	mov	@r1,a
      0028B8 08               [12] 2011 	inc	r0
      0028B9 09               [12] 2012 	inc	r1
      0028BA E6               [12] 2013 	mov	a,@r0
      0028BB F7               [12] 2014 	mov	@r1,a
      0028BC E5 10            [12] 2015 	mov	a,_bp
      0028BE 24 0A            [12] 2016 	add	a,#0x0a
      0028C0 F8               [12] 2017 	mov	r0,a
      0028C1 74 C0            [12] 2018 	mov	a,#0xc0
      0028C3 26               [12] 2019 	add	a,@r0
      0028C4 FA               [12] 2020 	mov	r2,a
      0028C5 E4               [12] 2021 	clr	a
      0028C6 08               [12] 2022 	inc	r0
      0028C7 36               [12] 2023 	addc	a,@r0
      0028C8 FB               [12] 2024 	mov	r3,a
      0028C9 C0 07            [24] 2025 	push	ar7
      0028CB C0 06            [24] 2026 	push	ar6
      0028CD C0 05            [24] 2027 	push	ar5
      0028CF C0 04            [24] 2028 	push	ar4
      0028D1 74 C0            [12] 2029 	mov	a,#0xc0
      0028D3 C0 E0            [24] 2030 	push	acc
      0028D5 E4               [12] 2031 	clr	a
      0028D6 C0 E0            [24] 2032 	push	acc
      0028D8 8A 82            [24] 2033 	mov	dpl,r2
      0028DA 8B 83            [24] 2034 	mov	dph,r3
      0028DC 12 2F 26         [24] 2035 	lcall	__modsint
      0028DF AA 82            [24] 2036 	mov	r2,dpl
      0028E1 AB 83            [24] 2037 	mov	r3,dph
      0028E3 15 81            [12] 2038 	dec	sp
      0028E5 15 81            [12] 2039 	dec	sp
      0028E7 C0 02            [24] 2040 	push	ar2
      0028E9 C0 03            [24] 2041 	push	ar3
      0028EB 90 00 30         [24] 2042 	mov	dptr,#0x0030
      0028EE 12 2D 48         [24] 2043 	lcall	__mulint
      0028F1 C8               [12] 2044 	xch	a,r0
      0028F2 E5 10            [12] 2045 	mov	a,_bp
      0028F4 24 0C            [12] 2046 	add	a,#0x0c
      0028F6 C8               [12] 2047 	xch	a,r0
      0028F7 A6 82            [24] 2048 	mov	@r0,dpl
      0028F9 08               [12] 2049 	inc	r0
      0028FA A6 83            [24] 2050 	mov	@r0,dph
      0028FC 15 81            [12] 2051 	dec	sp
      0028FE 15 81            [12] 2052 	dec	sp
      002900 D0 04            [24] 2053 	pop	ar4
      002902 D0 05            [24] 2054 	pop	ar5
      002904 D0 06            [24] 2055 	pop	ar6
      002906 D0 07            [24] 2056 	pop	ar7
      002908 E5 10            [12] 2057 	mov	a,_bp
      00290A 24 0C            [12] 2058 	add	a,#0x0c
      00290C F8               [12] 2059 	mov	r0,a
      00290D EC               [12] 2060 	mov	a,r4
      00290E 26               [12] 2061 	add	a,@r0
      00290F FA               [12] 2062 	mov	r2,a
      002910 ED               [12] 2063 	mov	a,r5
      002911 08               [12] 2064 	inc	r0
      002912 36               [12] 2065 	addc	a,@r0
      002913 FB               [12] 2066 	mov	r3,a
      002914 EA               [12] 2067 	mov	a,r2
      002915 24 00            [12] 2068 	add	a,#_u
      002917 F5 82            [12] 2069 	mov	dpl,a
      002919 EB               [12] 2070 	mov	a,r3
      00291A 34 88            [12] 2071 	addc	a,#(_u >> 8)
      00291C F5 83            [12] 2072 	mov	dph,a
      00291E E0               [24] 2073 	movx	a,@dptr
      00291F FB               [12] 2074 	mov	r3,a
      002920 A8 10            [24] 2075 	mov	r0,_bp
      002922 08               [12] 2076 	inc	r0
      002923 EB               [12] 2077 	mov	a,r3
      002924 26               [12] 2078 	add	a,@r0
      002925 F6               [12] 2079 	mov	@r0,a
                                   2080 ;	life.c:250: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      002926 E5 10            [12] 2081 	mov	a,_bp
      002928 24 0C            [12] 2082 	add	a,#0x0c
      00292A F8               [12] 2083 	mov	r0,a
      00292B E5 10            [12] 2084 	mov	a,_bp
      00292D 24 08            [12] 2085 	add	a,#0x08
      00292F F9               [12] 2086 	mov	r1,a
      002930 E7               [12] 2087 	mov	a,@r1
      002931 26               [12] 2088 	add	a,@r0
      002932 FA               [12] 2089 	mov	r2,a
      002933 09               [12] 2090 	inc	r1
      002934 E7               [12] 2091 	mov	a,@r1
      002935 08               [12] 2092 	inc	r0
      002936 36               [12] 2093 	addc	a,@r0
      002937 FB               [12] 2094 	mov	r3,a
      002938 EA               [12] 2095 	mov	a,r2
      002939 24 00            [12] 2096 	add	a,#_u
      00293B F5 82            [12] 2097 	mov	dpl,a
      00293D EB               [12] 2098 	mov	a,r3
      00293E 34 88            [12] 2099 	addc	a,#(_u >> 8)
      002940 F5 83            [12] 2100 	mov	dph,a
      002942 E0               [24] 2101 	movx	a,@dptr
      002943 FB               [12] 2102 	mov	r3,a
      002944 A8 10            [24] 2103 	mov	r0,_bp
      002946 08               [12] 2104 	inc	r0
      002947 EB               [12] 2105 	mov	a,r3
      002948 26               [12] 2106 	add	a,@r0
      002949 F6               [12] 2107 	mov	@r0,a
                                   2108 ;	life.c:252: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      00294A E5 10            [12] 2109 	mov	a,_bp
      00294C 24 0C            [12] 2110 	add	a,#0x0c
      00294E F8               [12] 2111 	mov	r0,a
      00294F EE               [12] 2112 	mov	a,r6
      002950 26               [12] 2113 	add	a,@r0
      002951 FA               [12] 2114 	mov	r2,a
      002952 EF               [12] 2115 	mov	a,r7
      002953 08               [12] 2116 	inc	r0
      002954 36               [12] 2117 	addc	a,@r0
      002955 FB               [12] 2118 	mov	r3,a
      002956 EA               [12] 2119 	mov	a,r2
      002957 24 00            [12] 2120 	add	a,#_u
      002959 F5 82            [12] 2121 	mov	dpl,a
      00295B EB               [12] 2122 	mov	a,r3
      00295C 34 88            [12] 2123 	addc	a,#(_u >> 8)
      00295E F5 83            [12] 2124 	mov	dph,a
      002960 E0               [24] 2125 	movx	a,@dptr
      002961 FB               [12] 2126 	mov	r3,a
      002962 A8 10            [24] 2127 	mov	r0,_bp
      002964 08               [12] 2128 	inc	r0
      002965 E5 10            [12] 2129 	mov	a,_bp
      002967 24 0C            [12] 2130 	add	a,#0x0c
      002969 F9               [12] 2131 	mov	r1,a
      00296A EB               [12] 2132 	mov	a,r3
      00296B 26               [12] 2133 	add	a,@r0
      00296C F7               [12] 2134 	mov	@r1,a
                                   2135 ;	life.c:254: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      00296D E5 10            [12] 2136 	mov	a,_bp
      00296F 24 0A            [12] 2137 	add	a,#0x0a
      002971 F8               [12] 2138 	mov	r0,a
      002972 74 C1            [12] 2139 	mov	a,#0xc1
      002974 26               [12] 2140 	add	a,@r0
      002975 FA               [12] 2141 	mov	r2,a
      002976 E4               [12] 2142 	clr	a
      002977 08               [12] 2143 	inc	r0
      002978 36               [12] 2144 	addc	a,@r0
      002979 FB               [12] 2145 	mov	r3,a
      00297A C0 07            [24] 2146 	push	ar7
      00297C C0 06            [24] 2147 	push	ar6
      00297E C0 05            [24] 2148 	push	ar5
      002980 C0 04            [24] 2149 	push	ar4
      002982 74 C0            [12] 2150 	mov	a,#0xc0
      002984 C0 E0            [24] 2151 	push	acc
      002986 E4               [12] 2152 	clr	a
      002987 C0 E0            [24] 2153 	push	acc
      002989 8A 82            [24] 2154 	mov	dpl,r2
      00298B 8B 83            [24] 2155 	mov	dph,r3
      00298D 12 2F 26         [24] 2156 	lcall	__modsint
      002990 AA 82            [24] 2157 	mov	r2,dpl
      002992 AB 83            [24] 2158 	mov	r3,dph
      002994 15 81            [12] 2159 	dec	sp
      002996 15 81            [12] 2160 	dec	sp
      002998 C0 02            [24] 2161 	push	ar2
      00299A C0 03            [24] 2162 	push	ar3
      00299C 90 00 30         [24] 2163 	mov	dptr,#0x0030
      00299F 12 2D 48         [24] 2164 	lcall	__mulint
      0029A2 AA 82            [24] 2165 	mov	r2,dpl
      0029A4 AB 83            [24] 2166 	mov	r3,dph
      0029A6 15 81            [12] 2167 	dec	sp
      0029A8 15 81            [12] 2168 	dec	sp
      0029AA D0 04            [24] 2169 	pop	ar4
      0029AC D0 05            [24] 2170 	pop	ar5
      0029AE D0 06            [24] 2171 	pop	ar6
      0029B0 D0 07            [24] 2172 	pop	ar7
      0029B2 EC               [12] 2173 	mov	a,r4
      0029B3 2A               [12] 2174 	add	a,r2
      0029B4 FC               [12] 2175 	mov	r4,a
      0029B5 ED               [12] 2176 	mov	a,r5
      0029B6 3B               [12] 2177 	addc	a,r3
      0029B7 FD               [12] 2178 	mov	r5,a
      0029B8 EC               [12] 2179 	mov	a,r4
      0029B9 24 00            [12] 2180 	add	a,#_u
      0029BB F5 82            [12] 2181 	mov	dpl,a
      0029BD ED               [12] 2182 	mov	a,r5
      0029BE 34 88            [12] 2183 	addc	a,#(_u >> 8)
      0029C0 F5 83            [12] 2184 	mov	dph,a
      0029C2 E0               [24] 2185 	movx	a,@dptr
      0029C3 FD               [12] 2186 	mov	r5,a
      0029C4 E5 10            [12] 2187 	mov	a,_bp
      0029C6 24 0C            [12] 2188 	add	a,#0x0c
      0029C8 F8               [12] 2189 	mov	r0,a
      0029C9 E5 10            [12] 2190 	mov	a,_bp
      0029CB 24 0C            [12] 2191 	add	a,#0x0c
      0029CD F9               [12] 2192 	mov	r1,a
      0029CE ED               [12] 2193 	mov	a,r5
      0029CF 26               [12] 2194 	add	a,@r0
      0029D0 F7               [12] 2195 	mov	@r1,a
                                   2196 ;	life.c:256: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      0029D1 E5 10            [12] 2197 	mov	a,_bp
      0029D3 24 08            [12] 2198 	add	a,#0x08
      0029D5 F8               [12] 2199 	mov	r0,a
      0029D6 E6               [12] 2200 	mov	a,@r0
      0029D7 2A               [12] 2201 	add	a,r2
      0029D8 FC               [12] 2202 	mov	r4,a
      0029D9 08               [12] 2203 	inc	r0
      0029DA E6               [12] 2204 	mov	a,@r0
      0029DB 3B               [12] 2205 	addc	a,r3
      0029DC FD               [12] 2206 	mov	r5,a
      0029DD EC               [12] 2207 	mov	a,r4
      0029DE 24 00            [12] 2208 	add	a,#_u
      0029E0 F5 82            [12] 2209 	mov	dpl,a
      0029E2 ED               [12] 2210 	mov	a,r5
      0029E3 34 88            [12] 2211 	addc	a,#(_u >> 8)
      0029E5 F5 83            [12] 2212 	mov	dph,a
      0029E7 E0               [24] 2213 	movx	a,@dptr
      0029E8 FD               [12] 2214 	mov	r5,a
      0029E9 E5 10            [12] 2215 	mov	a,_bp
      0029EB 24 0C            [12] 2216 	add	a,#0x0c
      0029ED F8               [12] 2217 	mov	r0,a
      0029EE ED               [12] 2218 	mov	a,r5
      0029EF 26               [12] 2219 	add	a,@r0
      0029F0 FD               [12] 2220 	mov	r5,a
                                   2221 ;	life.c:257: y1 = 1; x1 = 1;
      0029F1 78 41            [12] 2222 	mov	r0,#_y1
      0029F3 76 01            [12] 2223 	mov	@r0,#0x01
      0029F5 08               [12] 2224 	inc	r0
      0029F6 76 00            [12] 2225 	mov	@r0,#0x00
      0029F8 78 3F            [12] 2226 	mov	r0,#_x1
      0029FA 76 01            [12] 2227 	mov	@r0,#0x01
      0029FC 08               [12] 2228 	inc	r0
      0029FD 76 00            [12] 2229 	mov	@r0,#0x00
                                   2230 ;	life.c:258: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      0029FF EE               [12] 2231 	mov	a,r6
      002A00 2A               [12] 2232 	add	a,r2
      002A01 FE               [12] 2233 	mov	r6,a
      002A02 EF               [12] 2234 	mov	a,r7
      002A03 3B               [12] 2235 	addc	a,r3
      002A04 FF               [12] 2236 	mov	r7,a
      002A05 EE               [12] 2237 	mov	a,r6
      002A06 24 00            [12] 2238 	add	a,#_u
      002A08 F5 82            [12] 2239 	mov	dpl,a
      002A0A EF               [12] 2240 	mov	a,r7
      002A0B 34 88            [12] 2241 	addc	a,#(_u >> 8)
      002A0D F5 83            [12] 2242 	mov	dph,a
      002A0F E0               [24] 2243 	movx	a,@dptr
      002A10 2D               [12] 2244 	add	a,r5
      002A11 FF               [12] 2245 	mov	r7,a
      002A12 78 3C            [12] 2246 	mov	r0,#_n
      002A14 A6 07            [24] 2247 	mov	@r0,ar7
                                   2248 ;	life.c:260: nu[A2D(W, y, x)] = (n == 3) || ((n == 2) && u[A2D(W, y, x)]);
      002A16 A8 10            [24] 2249 	mov	r0,_bp
      002A18 08               [12] 2250 	inc	r0
      002A19 08               [12] 2251 	inc	r0
      002A1A E6               [12] 2252 	mov	a,@r0
      002A1B 24 00            [12] 2253 	add	a,#_nu
      002A1D FD               [12] 2254 	mov	r5,a
      002A1E 08               [12] 2255 	inc	r0
      002A1F E6               [12] 2256 	mov	a,@r0
      002A20 34 AC            [12] 2257 	addc	a,#(_nu >> 8)
      002A22 FE               [12] 2258 	mov	r6,a
      002A23 BF 03 02         [24] 2259 	cjne	r7,#0x03,00597$
      002A26 80 28            [24] 2260 	sjmp	00266$
      002A28                       2261 00597$:
      002A28 BF 02 21         [24] 2262 	cjne	r7,#0x02,00265$
      002A2B E5 10            [12] 2263 	mov	a,_bp
      002A2D 24 04            [12] 2264 	add	a,#0x04
      002A2F F8               [12] 2265 	mov	r0,a
      002A30 E5 10            [12] 2266 	mov	a,_bp
      002A32 24 06            [12] 2267 	add	a,#0x06
      002A34 F9               [12] 2268 	mov	r1,a
      002A35 E7               [12] 2269 	mov	a,@r1
      002A36 26               [12] 2270 	add	a,@r0
      002A37 FC               [12] 2271 	mov	r4,a
      002A38 09               [12] 2272 	inc	r1
      002A39 E7               [12] 2273 	mov	a,@r1
      002A3A 08               [12] 2274 	inc	r0
      002A3B 36               [12] 2275 	addc	a,@r0
      002A3C FF               [12] 2276 	mov	r7,a
      002A3D EC               [12] 2277 	mov	a,r4
      002A3E 24 00            [12] 2278 	add	a,#_u
      002A40 FC               [12] 2279 	mov	r4,a
      002A41 EF               [12] 2280 	mov	a,r7
      002A42 34 88            [12] 2281 	addc	a,#(_u >> 8)
      002A44 FF               [12] 2282 	mov	r7,a
      002A45 8C 82            [24] 2283 	mov	dpl,r4
      002A47 8F 83            [24] 2284 	mov	dph,r7
      002A49 E0               [24] 2285 	movx	a,@dptr
      002A4A 70 04            [24] 2286 	jnz	00266$
      002A4C                       2287 00265$:
                                   2288 ;	assignBit
      002A4C C2 00            [12] 2289 	clr	b0
      002A4E 80 02            [24] 2290 	sjmp	00267$
      002A50                       2291 00266$:
                                   2292 ;	assignBit
      002A50 D2 00            [12] 2293 	setb	b0
      002A52                       2294 00267$:
      002A52 A2 00            [12] 2295 	mov	c,b0
      002A54 E4               [12] 2296 	clr	a
      002A55 33               [12] 2297 	rlc	a
      002A56 8D 82            [24] 2298 	mov	dpl,r5
      002A58 8E 83            [24] 2299 	mov	dph,r6
      002A5A F0               [24] 2300 	movx	@dptr,a
                                   2301 ;	life.c:261: cycle2 |= pu[A2D(W, y, x)] ^ nu[A2D(W, y, x)];
      002A5B 78 36            [12] 2302 	mov	r0,#_y
      002A5D E6               [12] 2303 	mov	a,@r0
      002A5E C0 E0            [24] 2304 	push	acc
      002A60 08               [12] 2305 	inc	r0
      002A61 E6               [12] 2306 	mov	a,@r0
      002A62 C0 E0            [24] 2307 	push	acc
      002A64 90 00 30         [24] 2308 	mov	dptr,#0x0030
      002A67 12 2D 48         [24] 2309 	lcall	__mulint
      002A6A AE 82            [24] 2310 	mov	r6,dpl
      002A6C AF 83            [24] 2311 	mov	r7,dph
      002A6E 15 81            [12] 2312 	dec	sp
      002A70 15 81            [12] 2313 	dec	sp
      002A72 78 34            [12] 2314 	mov	r0,#_x
      002A74 E6               [12] 2315 	mov	a,@r0
      002A75 2E               [12] 2316 	add	a,r6
      002A76 FE               [12] 2317 	mov	r6,a
      002A77 08               [12] 2318 	inc	r0
      002A78 E6               [12] 2319 	mov	a,@r0
      002A79 3F               [12] 2320 	addc	a,r7
      002A7A FF               [12] 2321 	mov	r7,a
      002A7B EE               [12] 2322 	mov	a,r6
      002A7C 24 00            [12] 2323 	add	a,#_pu
      002A7E F5 82            [12] 2324 	mov	dpl,a
      002A80 EF               [12] 2325 	mov	a,r7
      002A81 34 64            [12] 2326 	addc	a,#(_pu >> 8)
      002A83 F5 83            [12] 2327 	mov	dph,a
      002A85 E0               [24] 2328 	movx	a,@dptr
      002A86 FD               [12] 2329 	mov	r5,a
      002A87 EE               [12] 2330 	mov	a,r6
      002A88 24 00            [12] 2331 	add	a,#_nu
      002A8A F5 82            [12] 2332 	mov	dpl,a
      002A8C EF               [12] 2333 	mov	a,r7
      002A8D 34 AC            [12] 2334 	addc	a,#(_nu >> 8)
      002A8F F5 83            [12] 2335 	mov	dph,a
      002A91 E0               [24] 2336 	movx	a,@dptr
      002A92 FC               [12] 2337 	mov	r4,a
      002A93 6D               [12] 2338 	xrl	a,r5
      002A94 78 3E            [12] 2339 	mov	r0,#_cycle2
      002A96 46               [12] 2340 	orl	a,@r0
      002A97 F6               [12] 2341 	mov	@r0,a
                                   2342 ;	life.c:262: fixed |= u[A2D(W, y, x)] ^ nu[A2D(W, y, x)];
      002A98 EE               [12] 2343 	mov	a,r6
      002A99 24 00            [12] 2344 	add	a,#_u
      002A9B F5 82            [12] 2345 	mov	dpl,a
      002A9D EF               [12] 2346 	mov	a,r7
      002A9E 34 88            [12] 2347 	addc	a,#(_u >> 8)
      002AA0 F5 83            [12] 2348 	mov	dph,a
      002AA2 E0               [24] 2349 	movx	a,@dptr
      002AA3 FF               [12] 2350 	mov	r7,a
      002AA4 EC               [12] 2351 	mov	a,r4
      002AA5 6F               [12] 2352 	xrl	a,r7
      002AA6 78 3D            [12] 2353 	mov	r0,#_fixed
      002AA8 46               [12] 2354 	orl	a,@r0
      002AA9 F6               [12] 2355 	mov	@r0,a
                                   2356 ;	life.c:238: for (x = 0; x < W; x++) {
      002AAA 78 34            [12] 2357 	mov	r0,#_x
      002AAC 06               [12] 2358 	inc	@r0
      002AAD B6 00 02         [24] 2359 	cjne	@r0,#0x00,00601$
      002AB0 08               [12] 2360 	inc	r0
      002AB1 06               [12] 2361 	inc	@r0
      002AB2                       2362 00601$:
      002AB2 78 34            [12] 2363 	mov	r0,#_x
      002AB4 C3               [12] 2364 	clr	c
      002AB5 E6               [12] 2365 	mov	a,@r0
      002AB6 94 30            [12] 2366 	subb	a,#0x30
      002AB8 08               [12] 2367 	inc	r0
      002AB9 E6               [12] 2368 	mov	a,@r0
      002ABA 64 80            [12] 2369 	xrl	a,#0x80
      002ABC 94 80            [12] 2370 	subb	a,#0x80
      002ABE 50 03            [24] 2371 	jnc	00602$
      002AC0 02 27 32         [24] 2372 	ljmp	00238$
      002AC3                       2373 00602$:
                                   2374 ;	life.c:235: for (y = 0; y < H; y++) {
      002AC3 78 36            [12] 2375 	mov	r0,#_y
      002AC5 06               [12] 2376 	inc	@r0
      002AC6 B6 00 02         [24] 2377 	cjne	@r0,#0x00,00603$
      002AC9 08               [12] 2378 	inc	r0
      002ACA 06               [12] 2379 	inc	@r0
      002ACB                       2380 00603$:
      002ACB 78 36            [12] 2381 	mov	r0,#_y
      002ACD C3               [12] 2382 	clr	c
      002ACE E6               [12] 2383 	mov	a,@r0
      002ACF 94 C0            [12] 2384 	subb	a,#0xc0
      002AD1 08               [12] 2385 	inc	r0
      002AD2 E6               [12] 2386 	mov	a,@r0
      002AD3 64 80            [12] 2387 	xrl	a,#0x80
      002AD5 94 80            [12] 2388 	subb	a,#0x80
      002AD7 50 03            [24] 2389 	jnc	00604$
      002AD9 02 27 16         [24] 2390 	ljmp	00240$
      002ADC                       2391 00604$:
                                   2392 ;	life.c:266: OE76 = OE76_0;
      002ADC 78 33            [12] 2393 	mov	r0,#_OE76
      002ADE 76 3F            [12] 2394 	mov	@r0,#0x3f
                                   2395 ;	life.c:267: flashOE();
      002AE0 12 20 FE         [24] 2396 	lcall	_flashOE
                                   2397 ;	life.c:269: cycle2 = !cycle2;
      002AE3 78 3E            [12] 2398 	mov	r0,#_cycle2
      002AE5 E6               [12] 2399 	mov	a,@r0
      002AE6 B4 01 00         [24] 2400 	cjne	a,#0x01,00605$
      002AE9                       2401 00605$:
      002AE9 92 00            [24] 2402 	mov	b0,c
      002AEB 78 3E            [12] 2403 	mov	r0,#_cycle2
      002AED E4               [12] 2404 	clr	a
      002AEE 33               [12] 2405 	rlc	a
      002AEF F6               [12] 2406 	mov	@r0,a
                                   2407 ;	life.c:270: fixed = !fixed;
      002AF0 78 3D            [12] 2408 	mov	r0,#_fixed
      002AF2 E6               [12] 2409 	mov	a,@r0
      002AF3 B4 01 00         [24] 2410 	cjne	a,#0x01,00606$
      002AF6                       2411 00606$:
      002AF6 92 00            [24] 2412 	mov	b0,c
      002AF8 78 3D            [12] 2413 	mov	r0,#_fixed
      002AFA E4               [12] 2414 	clr	a
      002AFB 33               [12] 2415 	rlc	a
      002AFC F6               [12] 2416 	mov	@r0,a
                                   2417 ;	life.c:272: memcpy(pu, u, sizeof (u));
      002AFD E4               [12] 2418 	clr	a
      002AFE C0 E0            [24] 2419 	push	acc
      002B00 74 24            [12] 2420 	mov	a,#0x24
      002B02 C0 E0            [24] 2421 	push	acc
      002B04 74 00            [12] 2422 	mov	a,#_u
      002B06 C0 E0            [24] 2423 	push	acc
      002B08 74 88            [12] 2424 	mov	a,#(_u >> 8)
      002B0A C0 E0            [24] 2425 	push	acc
      002B0C E4               [12] 2426 	clr	a
      002B0D C0 E0            [24] 2427 	push	acc
      002B0F 90 64 00         [24] 2428 	mov	dptr,#_pu
      002B12 75 F0 00         [24] 2429 	mov	b,#0x00
      002B15 12 2D E6         [24] 2430 	lcall	___memcpy
      002B18 E5 81            [12] 2431 	mov	a,sp
      002B1A 24 FB            [12] 2432 	add	a,#0xfb
      002B1C F5 81            [12] 2433 	mov	sp,a
                                   2434 ;	life.c:273: memcpy(u, nu, sizeof (nu));
      002B1E E4               [12] 2435 	clr	a
      002B1F C0 E0            [24] 2436 	push	acc
      002B21 74 24            [12] 2437 	mov	a,#0x24
      002B23 C0 E0            [24] 2438 	push	acc
      002B25 74 00            [12] 2439 	mov	a,#_nu
      002B27 C0 E0            [24] 2440 	push	acc
      002B29 74 AC            [12] 2441 	mov	a,#(_nu >> 8)
      002B2B C0 E0            [24] 2442 	push	acc
      002B2D E4               [12] 2443 	clr	a
      002B2E C0 E0            [24] 2444 	push	acc
      002B30 90 88 00         [24] 2445 	mov	dptr,#_u
      002B33 75 F0 00         [24] 2446 	mov	b,#0x00
      002B36 12 2D E6         [24] 2447 	lcall	___memcpy
      002B39 E5 81            [12] 2448 	mov	a,sp
      002B3B 24 FB            [12] 2449 	add	a,#0xfb
      002B3D F5 81            [12] 2450 	mov	sp,a
                                   2451 ;	life.c:327: if (fixed || cycle2) {
      002B3F 78 3D            [12] 2452 	mov	r0,#_fixed
      002B41 E6               [12] 2453 	mov	a,@r0
      002B42 70 05            [24] 2454 	jnz	00135$
      002B44 78 3E            [12] 2455 	mov	r0,#_cycle2
      002B46 E6               [12] 2456 	mov	a,@r0
      002B47 60 70            [24] 2457 	jz	00136$
      002B49                       2458 00135$:
                                   2459 ;	life.c:328: printstr("DONE ");
      002B49 7D 96            [12] 2460 	mov	r5,#___str_10
      002B4B 7E 30            [12] 2461 	mov	r6,#(___str_10 >> 8)
      002B4D 7F 80            [12] 2462 	mov	r7,#0x80
                                   2463 ;	life.c:74: return;
      002B4F                       2464 00243$:
                                   2465 ;	life.c:72: for (; *s; s++) putchar(*s);
      002B4F 8D 82            [24] 2466 	mov	dpl,r5
      002B51 8E 83            [24] 2467 	mov	dph,r6
      002B53 8F F0            [24] 2468 	mov	b,r7
      002B55 12 2F 0A         [24] 2469 	lcall	__gptrget
      002B58 FC               [12] 2470 	mov	r4,a
      002B59 60 10            [24] 2471 	jz	00201$
      002B5B 7B 00            [12] 2472 	mov	r3,#0x00
      002B5D 8C 82            [24] 2473 	mov	dpl,r4
      002B5F 8B 83            [24] 2474 	mov	dph,r3
      002B61 12 20 B5         [24] 2475 	lcall	_putchar
      002B64 0D               [12] 2476 	inc	r5
                                   2477 ;	life.c:328: printstr("DONE ");
      002B65 BD 00 E7         [24] 2478 	cjne	r5,#0x00,00243$
      002B68 0E               [12] 2479 	inc	r6
      002B69 80 E4            [24] 2480 	sjmp	00243$
      002B6B                       2481 00201$:
                                   2482 ;	life.c:329: if (fixed) printstr("FIXED\r\n");
      002B6B 78 3D            [12] 2483 	mov	r0,#_fixed
      002B6D E6               [12] 2484 	mov	a,@r0
      002B6E 60 22            [24] 2485 	jz	00133$
      002B70 7D 9C            [12] 2486 	mov	r5,#___str_11
      002B72 7E 30            [12] 2487 	mov	r6,#(___str_11 >> 8)
      002B74 7F 80            [12] 2488 	mov	r7,#0x80
                                   2489 ;	life.c:74: return;
      002B76                       2490 00246$:
                                   2491 ;	life.c:72: for (; *s; s++) putchar(*s);
      002B76 8D 82            [24] 2492 	mov	dpl,r5
      002B78 8E 83            [24] 2493 	mov	dph,r6
      002B7A 8F F0            [24] 2494 	mov	b,r7
      002B7C 12 2F 0A         [24] 2495 	lcall	__gptrget
      002B7F FC               [12] 2496 	mov	r4,a
      002B80 60 32            [24] 2497 	jz	00134$
      002B82 7B 00            [12] 2498 	mov	r3,#0x00
      002B84 8C 82            [24] 2499 	mov	dpl,r4
      002B86 8B 83            [24] 2500 	mov	dph,r3
      002B88 12 20 B5         [24] 2501 	lcall	_putchar
      002B8B 0D               [12] 2502 	inc	r5
                                   2503 ;	life.c:329: if (fixed) printstr("FIXED\r\n");
      002B8C BD 00 E7         [24] 2504 	cjne	r5,#0x00,00246$
      002B8F 0E               [12] 2505 	inc	r6
      002B90 80 E4            [24] 2506 	sjmp	00246$
      002B92                       2507 00133$:
                                   2508 ;	life.c:330: else printstr("CYCLE2\r\n");
      002B92 7D A4            [12] 2509 	mov	r5,#___str_12
      002B94 7E 30            [12] 2510 	mov	r6,#(___str_12 >> 8)
      002B96 7F 80            [12] 2511 	mov	r7,#0x80
                                   2512 ;	life.c:74: return;
      002B98                       2513 00249$:
                                   2514 ;	life.c:72: for (; *s; s++) putchar(*s);
      002B98 8D 82            [24] 2515 	mov	dpl,r5
      002B9A 8E 83            [24] 2516 	mov	dph,r6
      002B9C 8F F0            [24] 2517 	mov	b,r7
      002B9E 12 2F 0A         [24] 2518 	lcall	__gptrget
      002BA1 FC               [12] 2519 	mov	r4,a
      002BA2 60 10            [24] 2520 	jz	00134$
      002BA4 7B 00            [12] 2521 	mov	r3,#0x00
      002BA6 8C 82            [24] 2522 	mov	dpl,r4
      002BA8 8B 83            [24] 2523 	mov	dph,r3
      002BAA 12 20 B5         [24] 2524 	lcall	_putchar
      002BAD 0D               [12] 2525 	inc	r5
                                   2526 ;	life.c:330: else printstr("CYCLE2\r\n");
      002BAE BD 00 E7         [24] 2527 	cjne	r5,#0x00,00249$
      002BB1 0E               [12] 2528 	inc	r6
      002BB2 80 E4            [24] 2529 	sjmp	00249$
      002BB4                       2530 00134$:
                                   2531 ;	life.c:331: (void)getchar();
      002BB4 12 20 BF         [24] 2532 	lcall	_getchar
                                   2533 ;	life.c:332: break;
      002BB7 80 50            [24] 2534 	sjmp	00145$
      002BB9                       2535 00136$:
                                   2536 ;	life.c:335: c = getchar_poll();
      002BB9 12 20 CC         [24] 2537 	lcall	_getchar_poll
      002BBC AE 82            [24] 2538 	mov	r6,dpl
      002BBE AF 83            [24] 2539 	mov	r7,dph
      002BC0 78 3A            [12] 2540 	mov	r0,#_c
      002BC2 A6 06            [24] 2541 	mov	@r0,ar6
      002BC4 08               [12] 2542 	inc	r0
      002BC5 A6 07            [24] 2543 	mov	@r0,ar7
                                   2544 ;	life.c:336: if (c > 0) {
      002BC7 C3               [12] 2545 	clr	c
      002BC8 E4               [12] 2546 	clr	a
      002BC9 9E               [12] 2547 	subb	a,r6
      002BCA 74 80            [12] 2548 	mov	a,#(0x00 ^ 0x80)
      002BCC 8F F0            [24] 2549 	mov	b,r7
      002BCE 63 F0 80         [24] 2550 	xrl	b,#0x80
      002BD1 95 F0            [12] 2551 	subb	a,b
      002BD3 40 03            [24] 2552 	jc	00616$
      002BD5 02 26 EB         [24] 2553 	ljmp	00253$
      002BD8                       2554 00616$:
                                   2555 ;	life.c:337: c = toupper(c);
      002BD8 8E 82            [24] 2556 	mov	dpl,r6
      002BDA 8F 83            [24] 2557 	mov	dph,r7
      002BDC 12 2E E3         [24] 2558 	lcall	_toupper
      002BDF AE 82            [24] 2559 	mov	r6,dpl
      002BE1 AF 83            [24] 2560 	mov	r7,dph
      002BE3 78 3A            [12] 2561 	mov	r0,#_c
      002BE5 A6 06            [24] 2562 	mov	@r0,ar6
      002BE7 08               [12] 2563 	inc	r0
      002BE8 A6 07            [24] 2564 	mov	@r0,ar7
                                   2565 ;	life.c:338: if (c == (int)'T') i0 = 1;
      002BEA BE 54 0A         [24] 2566 	cjne	r6,#0x54,00141$
      002BED BF 00 07         [24] 2567 	cjne	r7,#0x00,00141$
      002BF0 78 31            [12] 2568 	mov	r0,#_i0
      002BF2 76 01            [12] 2569 	mov	@r0,#0x01
      002BF4 02 26 EB         [24] 2570 	ljmp	00253$
      002BF7                       2571 00141$:
                                   2572 ;	life.c:339: else if (c == (int)'B') i1 = 1;
      002BF7 BE 42 05         [24] 2573 	cjne	r6,#0x42,00619$
      002BFA BF 00 02         [24] 2574 	cjne	r7,#0x00,00619$
      002BFD 80 03            [24] 2575 	sjmp	00620$
      002BFF                       2576 00619$:
      002BFF 02 26 EB         [24] 2577 	ljmp	00253$
      002C02                       2578 00620$:
      002C02 78 32            [12] 2579 	mov	r0,#_i1
      002C04 76 01            [12] 2580 	mov	@r0,#0x01
      002C06 02 26 EB         [24] 2581 	ljmp	00253$
      002C09                       2582 00145$:
                                   2583 ;	life.c:343: if (i1) {
      002C09 78 32            [12] 2584 	mov	r0,#_i1
      002C0B E6               [12] 2585 	mov	a,@r0
      002C0C 60 25            [24] 2586 	jz	00259$
                                   2587 ;	life.c:344: printstr("BREAK\r\n");
      002C0E 7D AD            [12] 2588 	mov	r5,#___str_13
      002C10 7E 30            [12] 2589 	mov	r6,#(___str_13 >> 8)
      002C12 7F 80            [12] 2590 	mov	r7,#0x80
                                   2591 ;	life.c:74: return;
      002C14                       2592 00256$:
                                   2593 ;	life.c:72: for (; *s; s++) putchar(*s);
      002C14 8D 82            [24] 2594 	mov	dpl,r5
      002C16 8E 83            [24] 2595 	mov	dph,r6
      002C18 8F F0            [24] 2596 	mov	b,r7
      002C1A 12 2F 0A         [24] 2597 	lcall	__gptrget
      002C1D FC               [12] 2598 	mov	r4,a
      002C1E 60 10            [24] 2599 	jz	00207$
      002C20 7B 00            [12] 2600 	mov	r3,#0x00
      002C22 8C 82            [24] 2601 	mov	dpl,r4
      002C24 8B 83            [24] 2602 	mov	dph,r3
      002C26 12 20 B5         [24] 2603 	lcall	_putchar
      002C29 0D               [12] 2604 	inc	r5
                                   2605 ;	life.c:344: printstr("BREAK\r\n");
      002C2A BD 00 E7         [24] 2606 	cjne	r5,#0x00,00256$
      002C2D 0E               [12] 2607 	inc	r6
      002C2E 80 E4            [24] 2608 	sjmp	00256$
      002C30                       2609 00207$:
                                   2610 ;	life.c:345: (void)getchar();
      002C30 12 20 BF         [24] 2611 	lcall	_getchar
      002C33                       2612 00259$:
                                   2613 ;	life.c:298: for (i0 = 0; !i0; ) {	
      002C33 78 31            [12] 2614 	mov	r0,#_i0
      002C35 E6               [12] 2615 	mov	a,@r0
      002C36 70 03            [24] 2616 	jnz	00624$
      002C38 02 23 82         [24] 2617 	ljmp	00258$
      002C3B                       2618 00624$:
                                   2619 ;	life.c:349: term:
      002C3B                       2620 00149$:
                                   2621 ;	life.c:350: EA = 0;
                                   2622 ;	assignBit
      002C3B C2 AF            [12] 2623 	clr	_EA
                                   2624 ;	life.c:351: printstr("TERM\r\n");
      002C3D 7D B5            [12] 2625 	mov	r5,#___str_14
      002C3F 7E 30            [12] 2626 	mov	r6,#(___str_14 >> 8)
      002C41 7F 80            [12] 2627 	mov	r7,#0x80
                                   2628 ;	life.c:74: return;
      002C43                       2629 00261$:
                                   2630 ;	life.c:72: for (; *s; s++) putchar(*s);
      002C43 8D 82            [24] 2631 	mov	dpl,r5
      002C45 8E 83            [24] 2632 	mov	dph,r6
      002C47 8F F0            [24] 2633 	mov	b,r7
      002C49 12 2F 0A         [24] 2634 	lcall	__gptrget
      002C4C FC               [12] 2635 	mov	r4,a
      002C4D 60 10            [24] 2636 	jz	00209$
      002C4F 7B 00            [12] 2637 	mov	r3,#0x00
      002C51 8C 82            [24] 2638 	mov	dpl,r4
      002C53 8B 83            [24] 2639 	mov	dph,r3
      002C55 12 20 B5         [24] 2640 	lcall	_putchar
      002C58 0D               [12] 2641 	inc	r5
                                   2642 ;	life.c:351: printstr("TERM\r\n");
      002C59 BD 00 E7         [24] 2643 	cjne	r5,#0x00,00261$
      002C5C 0E               [12] 2644 	inc	r6
      002C5D 80 E4            [24] 2645 	sjmp	00261$
      002C5F                       2646 00209$:
                                   2647 ;	life.c:352: (void)getchar();
      002C5F 12 20 BF         [24] 2648 	lcall	_getchar
                                   2649 ;	life.c:354: PCON |= 2;
      002C62 43 87 02         [24] 2650 	orl	_PCON,#0x02
                                   2651 ;	life.c:356: return;
                                   2652 ;	life.c:357: }
      002C65 85 10 81         [24] 2653 	mov	sp,_bp
      002C68 D0 10            [24] 2654 	pop	_bp
      002C6A 22               [24] 2655 	ret
                                   2656 	.area CSEG    (CODE)
                                   2657 	.area CONST   (CODE)
                                   2658 	.area CONST   (CODE)
      003032                       2659 ___str_0:
      003032 1B                    2660 	.db 0x1b
      003033 5B 3F 32 35 6C        2661 	.ascii "[?25l"
      003038 00                    2662 	.db 0x00
                                   2663 	.area CSEG    (CODE)
                                   2664 	.area CONST   (CODE)
      003039                       2665 ___str_1:
      003039 1B                    2666 	.db 0x1b
      00303A 5B 32 4A 47 45 4E 20  2667 	.ascii "[2JGEN "
      003041 00                    2668 	.db 0x00
                                   2669 	.area CSEG    (CODE)
                                   2670 	.area CONST   (CODE)
      003042                       2671 ___str_2:
      003042 0D                    2672 	.db 0x0d
      003043 0A                    2673 	.db 0x0a
      003044 00                    2674 	.db 0x00
                                   2675 	.area CSEG    (CODE)
                                   2676 	.area CONST   (CODE)
      003045                       2677 ___str_3:
      003045 1B                    2678 	.db 0x1b
      003046 5B 3F 32 35 68        2679 	.ascii "[?25h"
      00304B 00                    2680 	.db 0x00
                                   2681 	.area CSEG    (CODE)
                                   2682 	.area CONST   (CODE)
      00304C                       2683 ___str_4:
      00304C 4C 4F 41 44 20 30 20  2684 	.ascii "LOAD 0 1 ~ # <"
             31 20 7E 20 23 20 3C
      00305A 00                    2685 	.db 0x00
                                   2686 	.area CSEG    (CODE)
                                   2687 	.area CONST   (CODE)
      00305B                       2688 ___str_5:
      00305B 3E                    2689 	.ascii ">"
      00305C 0D                    2690 	.db 0x0d
      00305D 0A                    2691 	.db 0x0a
      00305E 00                    2692 	.db 0x00
                                   2693 	.area CSEG    (CODE)
                                   2694 	.area CONST   (CODE)
      00305F                       2695 ___str_6:
      00305F 52 41 4E 44 4F 4D     2696 	.ascii "RANDOM"
      003065 00                    2697 	.db 0x00
                                   2698 	.area CSEG    (CODE)
                                   2699 	.area CONST   (CODE)
      003066                       2700 ___str_7:
      003066 1B                    2701 	.db 0x1b
      003067 5B 3F 32 35 68        2702 	.ascii "[?25h"
      00306C 1B                    2703 	.db 0x1b
      00306D 5B 6D                 2704 	.ascii "[m"
      00306F 00                    2705 	.db 0x00
                                   2706 	.area CSEG    (CODE)
                                   2707 	.area CONST   (CODE)
      003070                       2708 ___str_8:
      003070 4C 49 46 45 20 49 4E  2709 	.ascii "LIFE INIT T L R P"
             49 54 20 54 20 4C 20
             52 20 50
      003081 0D                    2710 	.db 0x0d
      003082 0A                    2711 	.db 0x0a
      003083 00                    2712 	.db 0x00
                                   2713 	.area CSEG    (CODE)
                                   2714 	.area CONST   (CODE)
      003084                       2715 ___str_9:
      003084 52 45 41 44 59 20 54  2716 	.ascii "READY T L R P S"
             20 4C 20 52 20 50 20
             53
      003093 0D                    2717 	.db 0x0d
      003094 0A                    2718 	.db 0x0a
      003095 00                    2719 	.db 0x00
                                   2720 	.area CSEG    (CODE)
                                   2721 	.area CONST   (CODE)
      003096                       2722 ___str_10:
      003096 44 4F 4E 45 20        2723 	.ascii "DONE "
      00309B 00                    2724 	.db 0x00
                                   2725 	.area CSEG    (CODE)
                                   2726 	.area CONST   (CODE)
      00309C                       2727 ___str_11:
      00309C 46 49 58 45 44        2728 	.ascii "FIXED"
      0030A1 0D                    2729 	.db 0x0d
      0030A2 0A                    2730 	.db 0x0a
      0030A3 00                    2731 	.db 0x00
                                   2732 	.area CSEG    (CODE)
                                   2733 	.area CONST   (CODE)
      0030A4                       2734 ___str_12:
      0030A4 43 59 43 4C 45 32     2735 	.ascii "CYCLE2"
      0030AA 0D                    2736 	.db 0x0d
      0030AB 0A                    2737 	.db 0x0a
      0030AC 00                    2738 	.db 0x00
                                   2739 	.area CSEG    (CODE)
                                   2740 	.area CONST   (CODE)
      0030AD                       2741 ___str_13:
      0030AD 42 52 45 41 4B        2742 	.ascii "BREAK"
      0030B2 0D                    2743 	.db 0x0d
      0030B3 0A                    2744 	.db 0x0a
      0030B4 00                    2745 	.db 0x00
                                   2746 	.area CSEG    (CODE)
                                   2747 	.area CONST   (CODE)
      0030B5                       2748 ___str_14:
      0030B5 54 45 52 4D           2749 	.ascii "TERM"
      0030B9 0D                    2750 	.db 0x0d
      0030BA 0A                    2751 	.db 0x0a
      0030BB 00                    2752 	.db 0x00
                                   2753 	.area CSEG    (CODE)
                                   2754 	.area XINIT   (CODE)
                                   2755 	.area CABS    (ABS,CODE)
