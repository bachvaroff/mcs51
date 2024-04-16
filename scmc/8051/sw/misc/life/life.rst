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
      002003 02 20 E5         [24]  397 	ljmp	_int0
      002006                        398 	.ds	5
      00200B 32               [24]  399 	reti
      00200C                        400 	.ds	7
      002013 02 20 F1         [24]  401 	ljmp	_int1
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
                                    415 ;	life.c:49: __idata static const char digits[16] = {
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
      002016 02 23 2C         [24]  456 	ljmp	_main
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
                                    473 ;	life.c:15: __endasm;
      0020B5 C0 E0            [24]  474 	push	acc
      0020B7 E5 82            [12]  475 	mov	a, dpl
      0020B9 12 00 3C         [24]  476 	lcall	0x003c
      0020BC D0 E0            [24]  477 	pop	acc
                                    478 ;	life.c:16: }
                                    479 ;	naked function: no epilogue.
                                    480 ;------------------------------------------------------------
                                    481 ;Allocation info for local variables in function 'getchar'
                                    482 ;------------------------------------------------------------
                                    483 ;	life.c:18: int getchar(void) __naked {
                                    484 ;	-----------------------------------------
                                    485 ;	 function getchar
                                    486 ;	-----------------------------------------
      0020BE                        487 _getchar:
                                    488 ;	naked function: no prologue.
                                    489 ;	life.c:26: __endasm;
      0020BE C0 E0            [24]  490 	push	acc
      0020C0 12 00 36         [24]  491 	lcall	0x0036
      0020C3 F5 82            [12]  492 	mov	dpl, a
      0020C5 75 83 00         [24]  493 	mov	dph, #0
      0020C8 D0 E0            [24]  494 	pop	acc
      0020CA 22               [24]  495 	ret
                                    496 ;	life.c:27: }
                                    497 ;	naked function: no epilogue.
                                    498 ;------------------------------------------------------------
                                    499 ;Allocation info for local variables in function 'getchar_poll'
                                    500 ;------------------------------------------------------------
                                    501 ;	life.c:29: int getchar_poll(void) __naked {
                                    502 ;	-----------------------------------------
                                    503 ;	 function getchar_poll
                                    504 ;	-----------------------------------------
      0020CB                        505 _getchar_poll:
                                    506 ;	naked function: no prologue.
                                    507 ;	life.c:44: __endasm;
      0020CB C0 E0            [24]  508 	push	acc
      0020CD C0 F0            [24]  509 	push	b
      0020CF 74 FF            [12]  510 	mov	a, #0xff
      0020D1 F5 F0            [12]  511 	mov	b, a
      0020D3 12 00 39         [24]  512 	lcall	0x0039
      0020D6 40 03            [24]  513 	jc	nochar
      0020D8 75 F0 00         [24]  514 	mov	b, #0x00
      0020DB                        515 	nochar:
      0020DB F5 82            [12]  516 	mov	dpl, a
      0020DD 85 F0 83         [24]  517 	mov	dph, b
      0020E0 D0 F0            [24]  518 	pop	b
      0020E2 D0 E0            [24]  519 	pop	acc
      0020E4 22               [24]  520 	ret
                                    521 ;	life.c:45: }
                                    522 ;	naked function: no epilogue.
                                    523 ;------------------------------------------------------------
                                    524 ;Allocation info for local variables in function 'int0'
                                    525 ;------------------------------------------------------------
                                    526 ;	life.c:78: void int0(void) __interrupt IE0_VECTOR __using 1 {
                                    527 ;	-----------------------------------------
                                    528 ;	 function int0
                                    529 ;	-----------------------------------------
      0020E5                        530 _int0:
                           00000F   531 	ar7 = 0x0f
                           00000E   532 	ar6 = 0x0e
                           00000D   533 	ar5 = 0x0d
                           00000C   534 	ar4 = 0x0c
                           00000B   535 	ar3 = 0x0b
                           00000A   536 	ar2 = 0x0a
                           000009   537 	ar1 = 0x09
                           000008   538 	ar0 = 0x08
      0020E5 C0 D0            [24]  539 	push	psw
      0020E7 75 D0 08         [24]  540 	mov	psw,#0x08
                                    541 ;	life.c:79: i0 = 1;
      0020EA 78 31            [12]  542 	mov	r0,#_i0
      0020EC 76 01            [12]  543 	mov	@r0,#0x01
                                    544 ;	life.c:80: }
      0020EE D0 D0            [24]  545 	pop	psw
      0020F0 32               [24]  546 	reti
                                    547 ;	eliminated unneeded push/pop dpl
                                    548 ;	eliminated unneeded push/pop dph
                                    549 ;	eliminated unneeded push/pop b
                                    550 ;	eliminated unneeded push/pop acc
                                    551 ;------------------------------------------------------------
                                    552 ;Allocation info for local variables in function 'int1'
                                    553 ;------------------------------------------------------------
                                    554 ;	life.c:82: void int1(void) __interrupt IE1_VECTOR __using 1 {
                                    555 ;	-----------------------------------------
                                    556 ;	 function int1
                                    557 ;	-----------------------------------------
      0020F1                        558 _int1:
      0020F1 C0 D0            [24]  559 	push	psw
      0020F3 75 D0 08         [24]  560 	mov	psw,#0x08
                                    561 ;	life.c:83: i1 = 1;
      0020F6 78 32            [12]  562 	mov	r0,#_i1
      0020F8 76 01            [12]  563 	mov	@r0,#0x01
                                    564 ;	life.c:84: }
      0020FA D0 D0            [24]  565 	pop	psw
      0020FC 32               [24]  566 	reti
                                    567 ;	eliminated unneeded push/pop dpl
                                    568 ;	eliminated unneeded push/pop dph
                                    569 ;	eliminated unneeded push/pop b
                                    570 ;	eliminated unneeded push/pop acc
                                    571 ;------------------------------------------------------------
                                    572 ;Allocation info for local variables in function 'flashOE'
                                    573 ;------------------------------------------------------------
                                    574 ;	life.c:94: static void flashOE(void) {
                                    575 ;	-----------------------------------------
                                    576 ;	 function flashOE
                                    577 ;	-----------------------------------------
      0020FD                        578 _flashOE:
                           000007   579 	ar7 = 0x07
                           000006   580 	ar6 = 0x06
                           000005   581 	ar5 = 0x05
                           000004   582 	ar4 = 0x04
                           000003   583 	ar3 = 0x03
                           000002   584 	ar2 = 0x02
                           000001   585 	ar1 = 0x01
                           000000   586 	ar0 = 0x00
                                    587 ;	life.c:95: P1_7 = 0;
                                    588 ;	assignBit
      0020FD C2 97            [12]  589 	clr	_P1_7
                                    590 ;	life.c:100: __endasm;
      0020FF 00               [12]  591 	nop
      002100 00               [12]  592 	nop
      002101 00               [12]  593 	nop
                                    594 ;	life.c:101: OEreg = OE76;
      002102 78 33            [12]  595 	mov	r0,#_OE76
      002104 90 F0 06         [24]  596 	mov	dptr,#_OEreg
      002107 E6               [12]  597 	mov	a,@r0
      002108 F0               [24]  598 	movx	@dptr,a
                                    599 ;	life.c:102: P1_7 = 1;
                                    600 ;	assignBit
      002109 D2 97            [12]  601 	setb	_P1_7
                                    602 ;	life.c:107: __endasm;
      00210B 00               [12]  603 	nop
      00210C 00               [12]  604 	nop
      00210D 00               [12]  605 	nop
                                    606 ;	life.c:109: return;
                                    607 ;	life.c:110: }
      00210E 22               [24]  608 	ret
                                    609 ;------------------------------------------------------------
                                    610 ;Allocation info for local variables in function 'show'
                                    611 ;------------------------------------------------------------
                                    612 ;hdr                       Allocated to registers r7 
                                    613 ;__1310720005              Allocated to registers 
                                    614 ;s                         Allocated to registers r4 r5 r6 
                                    615 ;__1966080007              Allocated to registers 
                                    616 ;s                         Allocated to registers r5 r6 r7 
                                    617 ;__1310720001              Allocated to registers r6 r7 
                                    618 ;a                         Allocated to registers 
                                    619 ;__1310720003              Allocated to registers r6 r7 
                                    620 ;a                         Allocated to registers 
                                    621 ;__1966080010              Allocated to registers 
                                    622 ;s                         Allocated to registers r5 r6 r7 
                                    623 ;__2621440013              Allocated to registers 
                                    624 ;s                         Allocated to registers r5 r6 r7 
                                    625 ;__1310720015              Allocated to registers 
                                    626 ;s                         Allocated to registers r5 r6 r7 
                                    627 ;------------------------------------------------------------
                                    628 ;	life.c:146: void show(char hdr) {
                                    629 ;	-----------------------------------------
                                    630 ;	 function show
                                    631 ;	-----------------------------------------
      00210F                        632 _show:
      00210F AF 82            [24]  633 	mov	r7,dpl
                                    634 ;	life.c:147: printstr("\033[?25l");
      002111 7C 31            [12]  635 	mov	r4,#___str_0
      002113 7D 30            [12]  636 	mov	r5,#(___str_0 >> 8)
      002115 7E 80            [12]  637 	mov	r6,#0x80
                                    638 ;	life.c:73: return;
      002117                        639 00125$:
                                    640 ;	life.c:71: for (; *s; s++) putchar(*s);
      002117 8C 82            [24]  641 	mov	dpl,r4
      002119 8D 83            [24]  642 	mov	dph,r5
      00211B 8E F0            [24]  643 	mov	b,r6
      00211D 12 2F 09         [24]  644 	lcall	__gptrget
      002120 FB               [12]  645 	mov	r3,a
      002121 60 10            [24]  646 	jz	00109$
      002123 7A 00            [12]  647 	mov	r2,#0x00
      002125 8B 82            [24]  648 	mov	dpl,r3
      002127 8A 83            [24]  649 	mov	dph,r2
      002129 12 20 B5         [24]  650 	lcall	_putchar
      00212C 0C               [12]  651 	inc	r4
                                    652 ;	life.c:147: printstr("\033[?25l");
      00212D BC 00 E7         [24]  653 	cjne	r4,#0x00,00125$
      002130 0D               [12]  654 	inc	r5
      002131 80 E4            [24]  655 	sjmp	00125$
      002133                        656 00109$:
                                    657 ;	life.c:149: if (hdr) {
      002133 EF               [12]  658 	mov	a,r7
      002134 70 03            [24]  659 	jnz	00220$
      002136 02 22 6F         [24]  660 	ljmp	00102$
      002139                        661 00220$:
                                    662 ;	life.c:150: printstr("\033[2JGEN ");
      002139 7D 38            [12]  663 	mov	r5,#___str_1
      00213B 7E 30            [12]  664 	mov	r6,#(___str_1 >> 8)
      00213D 7F 80            [12]  665 	mov	r7,#0x80
                                    666 ;	life.c:73: return;
      00213F                        667 00128$:
                                    668 ;	life.c:71: for (; *s; s++) putchar(*s);
      00213F 8D 82            [24]  669 	mov	dpl,r5
      002141 8E 83            [24]  670 	mov	dph,r6
      002143 8F F0            [24]  671 	mov	b,r7
      002145 12 2F 09         [24]  672 	lcall	__gptrget
      002148 FC               [12]  673 	mov	r4,a
      002149 60 10            [24]  674 	jz	00111$
      00214B 7B 00            [12]  675 	mov	r3,#0x00
      00214D 8C 82            [24]  676 	mov	dpl,r4
      00214F 8B 83            [24]  677 	mov	dph,r3
      002151 12 20 B5         [24]  678 	lcall	_putchar
      002154 0D               [12]  679 	inc	r5
                                    680 ;	life.c:150: printstr("\033[2JGEN ");
      002155 BD 00 E7         [24]  681 	cjne	r5,#0x00,00128$
      002158 0E               [12]  682 	inc	r6
      002159 80 E4            [24]  683 	sjmp	00128$
      00215B                        684 00111$:
                                    685 ;	life.c:140: print16x(generation[1]);
      00215B 78 45            [12]  686 	mov	r0,#(_generation + 0x0002)
      00215D 86 06            [24]  687 	mov	ar6,@r0
      00215F 08               [12]  688 	inc	r0
                                    689 ;	life.c:62: putchar(digits[(a >> 12) & 0xf]);
      002160 E6               [12]  690 	mov	a,@r0
      002161 FF               [12]  691 	mov	r7,a
      002162 C4               [12]  692 	swap	a
      002163 54 0F            [12]  693 	anl	a,#0x0f
      002165 FC               [12]  694 	mov	r4,a
      002166 53 04 0F         [24]  695 	anl	ar4,#0x0f
      002169 EC               [12]  696 	mov	a,r4
      00216A 24 21            [12]  697 	add	a,#_digits
      00216C F9               [12]  698 	mov	r1,a
      00216D 87 05            [24]  699 	mov	ar5,@r1
      00216F 7C 00            [12]  700 	mov	r4,#0x00
      002171 8D 82            [24]  701 	mov	dpl,r5
      002173 8C 83            [24]  702 	mov	dph,r4
      002175 12 20 B5         [24]  703 	lcall	_putchar
                                    704 ;	life.c:63: putchar(digits[(a >> 8) & 0xf]);
      002178 8F 05            [24]  705 	mov	ar5,r7
      00217A 53 05 0F         [24]  706 	anl	ar5,#0x0f
      00217D ED               [12]  707 	mov	a,r5
      00217E 24 21            [12]  708 	add	a,#_digits
      002180 F9               [12]  709 	mov	r1,a
      002181 87 05            [24]  710 	mov	ar5,@r1
      002183 7C 00            [12]  711 	mov	r4,#0x00
      002185 8D 82            [24]  712 	mov	dpl,r5
      002187 8C 83            [24]  713 	mov	dph,r4
      002189 12 20 B5         [24]  714 	lcall	_putchar
                                    715 ;	life.c:64: putchar(digits[(a >> 4) & 0xf]);
      00218C 8E 04            [24]  716 	mov	ar4,r6
      00218E EF               [12]  717 	mov	a,r7
      00218F C4               [12]  718 	swap	a
      002190 CC               [12]  719 	xch	a,r4
      002191 C4               [12]  720 	swap	a
      002192 54 0F            [12]  721 	anl	a,#0x0f
      002194 6C               [12]  722 	xrl	a,r4
      002195 CC               [12]  723 	xch	a,r4
      002196 54 0F            [12]  724 	anl	a,#0x0f
      002198 CC               [12]  725 	xch	a,r4
      002199 6C               [12]  726 	xrl	a,r4
      00219A CC               [12]  727 	xch	a,r4
      00219B 53 04 0F         [24]  728 	anl	ar4,#0x0f
      00219E EC               [12]  729 	mov	a,r4
      00219F 24 21            [12]  730 	add	a,#_digits
      0021A1 F9               [12]  731 	mov	r1,a
      0021A2 87 05            [24]  732 	mov	ar5,@r1
      0021A4 7C 00            [12]  733 	mov	r4,#0x00
      0021A6 8D 82            [24]  734 	mov	dpl,r5
      0021A8 8C 83            [24]  735 	mov	dph,r4
      0021AA 12 20 B5         [24]  736 	lcall	_putchar
                                    737 ;	life.c:65: putchar(digits[a & 0xf]);
      0021AD 53 06 0F         [24]  738 	anl	ar6,#0x0f
      0021B0 EE               [12]  739 	mov	a,r6
      0021B1 24 21            [12]  740 	add	a,#_digits
      0021B3 F9               [12]  741 	mov	r1,a
      0021B4 87 07            [24]  742 	mov	ar7,@r1
      0021B6 7E 00            [12]  743 	mov	r6,#0x00
      0021B8 8F 82            [24]  744 	mov	dpl,r7
      0021BA 8E 83            [24]  745 	mov	dph,r6
      0021BC 12 20 B5         [24]  746 	lcall	_putchar
                                    747 ;	life.c:141: print16x(generation[0]);
      0021BF 78 43            [12]  748 	mov	r0,#_generation
      0021C1 86 06            [24]  749 	mov	ar6,@r0
      0021C3 08               [12]  750 	inc	r0
                                    751 ;	life.c:62: putchar(digits[(a >> 12) & 0xf]);
      0021C4 E6               [12]  752 	mov	a,@r0
      0021C5 FF               [12]  753 	mov	r7,a
      0021C6 C4               [12]  754 	swap	a
      0021C7 54 0F            [12]  755 	anl	a,#0x0f
      0021C9 FC               [12]  756 	mov	r4,a
      0021CA 53 04 0F         [24]  757 	anl	ar4,#0x0f
      0021CD EC               [12]  758 	mov	a,r4
      0021CE 24 21            [12]  759 	add	a,#_digits
      0021D0 F9               [12]  760 	mov	r1,a
      0021D1 87 05            [24]  761 	mov	ar5,@r1
      0021D3 7C 00            [12]  762 	mov	r4,#0x00
      0021D5 8D 82            [24]  763 	mov	dpl,r5
      0021D7 8C 83            [24]  764 	mov	dph,r4
      0021D9 12 20 B5         [24]  765 	lcall	_putchar
                                    766 ;	life.c:63: putchar(digits[(a >> 8) & 0xf]);
      0021DC 8F 05            [24]  767 	mov	ar5,r7
      0021DE 53 05 0F         [24]  768 	anl	ar5,#0x0f
      0021E1 ED               [12]  769 	mov	a,r5
      0021E2 24 21            [12]  770 	add	a,#_digits
      0021E4 F9               [12]  771 	mov	r1,a
      0021E5 87 05            [24]  772 	mov	ar5,@r1
      0021E7 7C 00            [12]  773 	mov	r4,#0x00
      0021E9 8D 82            [24]  774 	mov	dpl,r5
      0021EB 8C 83            [24]  775 	mov	dph,r4
      0021ED 12 20 B5         [24]  776 	lcall	_putchar
                                    777 ;	life.c:64: putchar(digits[(a >> 4) & 0xf]);
      0021F0 8E 04            [24]  778 	mov	ar4,r6
      0021F2 EF               [12]  779 	mov	a,r7
      0021F3 C4               [12]  780 	swap	a
      0021F4 CC               [12]  781 	xch	a,r4
      0021F5 C4               [12]  782 	swap	a
      0021F6 54 0F            [12]  783 	anl	a,#0x0f
      0021F8 6C               [12]  784 	xrl	a,r4
      0021F9 CC               [12]  785 	xch	a,r4
      0021FA 54 0F            [12]  786 	anl	a,#0x0f
      0021FC CC               [12]  787 	xch	a,r4
      0021FD 6C               [12]  788 	xrl	a,r4
      0021FE CC               [12]  789 	xch	a,r4
      0021FF 53 04 0F         [24]  790 	anl	ar4,#0x0f
      002202 EC               [12]  791 	mov	a,r4
      002203 24 21            [12]  792 	add	a,#_digits
      002205 F9               [12]  793 	mov	r1,a
      002206 87 05            [24]  794 	mov	ar5,@r1
      002208 7C 00            [12]  795 	mov	r4,#0x00
      00220A 8D 82            [24]  796 	mov	dpl,r5
      00220C 8C 83            [24]  797 	mov	dph,r4
      00220E 12 20 B5         [24]  798 	lcall	_putchar
                                    799 ;	life.c:65: putchar(digits[a & 0xf]);
      002211 53 06 0F         [24]  800 	anl	ar6,#0x0f
      002214 EE               [12]  801 	mov	a,r6
      002215 24 21            [12]  802 	add	a,#_digits
      002217 F9               [12]  803 	mov	r1,a
      002218 87 07            [24]  804 	mov	ar7,@r1
      00221A 7E 00            [12]  805 	mov	r6,#0x00
      00221C 8F 82            [24]  806 	mov	dpl,r7
      00221E 8E 83            [24]  807 	mov	dph,r6
      002220 12 20 B5         [24]  808 	lcall	_putchar
                                    809 ;	life.c:152: printstr("\r\n");
      002223 7D 41            [12]  810 	mov	r5,#___str_2
      002225 7E 30            [12]  811 	mov	r6,#(___str_2 >> 8)
      002227 7F 80            [12]  812 	mov	r7,#0x80
                                    813 ;	life.c:73: return;
      002229                        814 00131$:
                                    815 ;	life.c:71: for (; *s; s++) putchar(*s);
      002229 8D 82            [24]  816 	mov	dpl,r5
      00222B 8E 83            [24]  817 	mov	dph,r6
      00222D 8F F0            [24]  818 	mov	b,r7
      00222F 12 2F 09         [24]  819 	lcall	__gptrget
      002232 FC               [12]  820 	mov	r4,a
      002233 60 10            [24]  821 	jz	00116$
      002235 7B 00            [12]  822 	mov	r3,#0x00
      002237 8C 82            [24]  823 	mov	dpl,r4
      002239 8B 83            [24]  824 	mov	dph,r3
      00223B 12 20 B5         [24]  825 	lcall	_putchar
      00223E 0D               [12]  826 	inc	r5
                                    827 ;	life.c:152: printstr("\r\n");
      00223F BD 00 E7         [24]  828 	cjne	r5,#0x00,00131$
      002242 0E               [12]  829 	inc	r6
      002243 80 E4            [24]  830 	sjmp	00131$
      002245                        831 00116$:
                                    832 ;	life.c:133: generation[0]++;
      002245 78 43            [12]  833 	mov	r0,#_generation
      002247 86 06            [24]  834 	mov	ar6,@r0
      002249 08               [12]  835 	inc	r0
      00224A 86 07            [24]  836 	mov	ar7,@r0
      00224C 0E               [12]  837 	inc	r6
      00224D BE 00 01         [24]  838 	cjne	r6,#0x00,00225$
      002250 0F               [12]  839 	inc	r7
      002251                        840 00225$:
      002251 78 43            [12]  841 	mov	r0,#_generation
      002253 A6 06            [24]  842 	mov	@r0,ar6
      002255 08               [12]  843 	inc	r0
      002256 A6 07            [24]  844 	mov	@r0,ar7
                                    845 ;	life.c:134: if (!generation[0]) generation[1]++;
      002258 EE               [12]  846 	mov	a,r6
      002259 4F               [12]  847 	orl	a,r7
      00225A 70 13            [24]  848 	jnz	00102$
      00225C 78 45            [12]  849 	mov	r0,#(_generation + 0x0002)
      00225E 86 06            [24]  850 	mov	ar6,@r0
      002260 08               [12]  851 	inc	r0
      002261 86 07            [24]  852 	mov	ar7,@r0
      002263 0E               [12]  853 	inc	r6
      002264 BE 00 01         [24]  854 	cjne	r6,#0x00,00227$
      002267 0F               [12]  855 	inc	r7
      002268                        856 00227$:
      002268 78 45            [12]  857 	mov	r0,#(_generation + 0x0002)
      00226A A6 06            [24]  858 	mov	@r0,ar6
      00226C 08               [12]  859 	inc	r0
      00226D A6 07            [24]  860 	mov	@r0,ar7
                                    861 ;	life.c:153: updategen();
      00226F                        862 00102$:
                                    863 ;	life.c:156: for (x = 0; x < W; x++) {
      00226F 78 34            [12]  864 	mov	r0,#_x
      002271 E4               [12]  865 	clr	a
      002272 F6               [12]  866 	mov	@r0,a
      002273 08               [12]  867 	inc	r0
      002274 F6               [12]  868 	mov	@r0,a
      002275                        869 00138$:
                                    870 ;	life.c:157: for (y = 0; y < H; y++)
      002275 78 36            [12]  871 	mov	r0,#_y
      002277 E4               [12]  872 	clr	a
      002278 F6               [12]  873 	mov	@r0,a
      002279 08               [12]  874 	inc	r0
      00227A F6               [12]  875 	mov	@r0,a
      00227B                        876 00133$:
                                    877 ;	life.c:158: if (u[A2D(W, y, x)]) putchar('1');
      00227B 78 36            [12]  878 	mov	r0,#_y
      00227D E6               [12]  879 	mov	a,@r0
      00227E C0 E0            [24]  880 	push	acc
      002280 08               [12]  881 	inc	r0
      002281 E6               [12]  882 	mov	a,@r0
      002282 C0 E0            [24]  883 	push	acc
      002284 90 00 30         [24]  884 	mov	dptr,#0x0030
      002287 12 2D 47         [24]  885 	lcall	__mulint
      00228A AE 82            [24]  886 	mov	r6,dpl
      00228C AF 83            [24]  887 	mov	r7,dph
      00228E 15 81            [12]  888 	dec	sp
      002290 15 81            [12]  889 	dec	sp
      002292 78 34            [12]  890 	mov	r0,#_x
      002294 E6               [12]  891 	mov	a,@r0
      002295 2E               [12]  892 	add	a,r6
      002296 FE               [12]  893 	mov	r6,a
      002297 08               [12]  894 	inc	r0
      002298 E6               [12]  895 	mov	a,@r0
      002299 3F               [12]  896 	addc	a,r7
      00229A FF               [12]  897 	mov	r7,a
      00229B EE               [12]  898 	mov	a,r6
      00229C 24 00            [12]  899 	add	a,#_u
      00229E FE               [12]  900 	mov	r6,a
      00229F EF               [12]  901 	mov	a,r7
      0022A0 34 88            [12]  902 	addc	a,#(_u >> 8)
      0022A2 FF               [12]  903 	mov	r7,a
      0022A3 8E 82            [24]  904 	mov	dpl,r6
      0022A5 8F 83            [24]  905 	mov	dph,r7
      0022A7 E0               [24]  906 	movx	a,@dptr
      0022A8 60 08            [24]  907 	jz	00104$
      0022AA 90 00 31         [24]  908 	mov	dptr,#0x0031
      0022AD 12 20 B5         [24]  909 	lcall	_putchar
      0022B0 80 06            [24]  910 	sjmp	00134$
      0022B2                        911 00104$:
                                    912 ;	life.c:159: else putchar('0');
      0022B2 90 00 30         [24]  913 	mov	dptr,#0x0030
      0022B5 12 20 B5         [24]  914 	lcall	_putchar
      0022B8                        915 00134$:
                                    916 ;	life.c:157: for (y = 0; y < H; y++)
      0022B8 78 36            [12]  917 	mov	r0,#_y
      0022BA 06               [12]  918 	inc	@r0
      0022BB B6 00 02         [24]  919 	cjne	@r0,#0x00,00229$
      0022BE 08               [12]  920 	inc	r0
      0022BF 06               [12]  921 	inc	@r0
      0022C0                        922 00229$:
      0022C0 78 36            [12]  923 	mov	r0,#_y
      0022C2 C3               [12]  924 	clr	c
      0022C3 E6               [12]  925 	mov	a,@r0
      0022C4 94 C0            [12]  926 	subb	a,#0xc0
      0022C6 08               [12]  927 	inc	r0
      0022C7 E6               [12]  928 	mov	a,@r0
      0022C8 64 80            [12]  929 	xrl	a,#0x80
      0022CA 94 80            [12]  930 	subb	a,#0x80
      0022CC 40 AD            [24]  931 	jc	00133$
                                    932 ;	life.c:160: printstr("\r\n");
      0022CE 7D 41            [12]  933 	mov	r5,#___str_2
      0022D0 7E 30            [12]  934 	mov	r6,#(___str_2 >> 8)
      0022D2 7F 80            [12]  935 	mov	r7,#0x80
                                    936 ;	life.c:73: return;
      0022D4                        937 00136$:
                                    938 ;	life.c:71: for (; *s; s++) putchar(*s);
      0022D4 8D 82            [24]  939 	mov	dpl,r5
      0022D6 8E 83            [24]  940 	mov	dph,r6
      0022D8 8F F0            [24]  941 	mov	b,r7
      0022DA 12 2F 09         [24]  942 	lcall	__gptrget
      0022DD FC               [12]  943 	mov	r4,a
      0022DE 60 10            [24]  944 	jz	00121$
      0022E0 7B 00            [12]  945 	mov	r3,#0x00
      0022E2 8C 82            [24]  946 	mov	dpl,r4
      0022E4 8B 83            [24]  947 	mov	dph,r3
      0022E6 12 20 B5         [24]  948 	lcall	_putchar
      0022E9 0D               [12]  949 	inc	r5
                                    950 ;	life.c:160: printstr("\r\n");
      0022EA BD 00 E7         [24]  951 	cjne	r5,#0x00,00136$
      0022ED 0E               [12]  952 	inc	r6
      0022EE 80 E4            [24]  953 	sjmp	00136$
      0022F0                        954 00121$:
                                    955 ;	life.c:156: for (x = 0; x < W; x++) {
      0022F0 78 34            [12]  956 	mov	r0,#_x
      0022F2 06               [12]  957 	inc	@r0
      0022F3 B6 00 02         [24]  958 	cjne	@r0,#0x00,00233$
      0022F6 08               [12]  959 	inc	r0
      0022F7 06               [12]  960 	inc	@r0
      0022F8                        961 00233$:
      0022F8 78 34            [12]  962 	mov	r0,#_x
      0022FA C3               [12]  963 	clr	c
      0022FB E6               [12]  964 	mov	a,@r0
      0022FC 94 30            [12]  965 	subb	a,#0x30
      0022FE 08               [12]  966 	inc	r0
      0022FF E6               [12]  967 	mov	a,@r0
      002300 64 80            [12]  968 	xrl	a,#0x80
      002302 94 80            [12]  969 	subb	a,#0x80
      002304 50 03            [24]  970 	jnc	00234$
      002306 02 22 75         [24]  971 	ljmp	00138$
      002309                        972 00234$:
                                    973 ;	life.c:163: printstr("\033[?25h");
      002309 7D 44            [12]  974 	mov	r5,#___str_3
      00230B 7E 30            [12]  975 	mov	r6,#(___str_3 >> 8)
      00230D 7F 80            [12]  976 	mov	r7,#0x80
                                    977 ;	life.c:73: return;
      00230F                        978 00141$:
                                    979 ;	life.c:71: for (; *s; s++) putchar(*s);
      00230F 8D 82            [24]  980 	mov	dpl,r5
      002311 8E 83            [24]  981 	mov	dph,r6
      002313 8F F0            [24]  982 	mov	b,r7
      002315 12 2F 09         [24]  983 	lcall	__gptrget
      002318 FC               [12]  984 	mov	r4,a
      002319 60 10            [24]  985 	jz	00123$
      00231B 7B 00            [12]  986 	mov	r3,#0x00
      00231D 8C 82            [24]  987 	mov	dpl,r4
      00231F 8B 83            [24]  988 	mov	dph,r3
      002321 12 20 B5         [24]  989 	lcall	_putchar
      002324 0D               [12]  990 	inc	r5
                                    991 ;	life.c:163: printstr("\033[?25h");
      002325 BD 00 E7         [24]  992 	cjne	r5,#0x00,00141$
      002328 0E               [12]  993 	inc	r6
      002329 80 E4            [24]  994 	sjmp	00141$
      00232B                        995 00123$:
                                    996 ;	life.c:165: return;
                                    997 ;	life.c:166: }
      00232B 22               [24]  998 	ret
                                    999 ;------------------------------------------------------------
                                   1000 ;Allocation info for local variables in function 'main'
                                   1001 ;------------------------------------------------------------
                                   1002 ;__1310720027              Allocated to registers 
                                   1003 ;s                         Allocated to registers r5 r6 r7 
                                   1004 ;__2621440029              Allocated to registers 
                                   1005 ;s                         Allocated to registers r5 r6 r7 
                                   1006 ;__1310720017              Allocated to registers 
                                   1007 ;s                         Allocated to registers r5 r6 r7 
                                   1008 ;__1310720019              Allocated to registers r6 r7 
                                   1009 ;a                         Allocated to registers r4 r5 
                                   1010 ;__1310720021              Allocated to registers 
                                   1011 ;s                         Allocated to registers r5 r6 r7 
                                   1012 ;__1310720023              Allocated to registers 
                                   1013 ;s                         Allocated to registers r5 r6 r7 
                                   1014 ;__1310720025              Allocated to registers 
                                   1015 ;s                         Allocated to registers r5 r6 r7 
                                   1016 ;__2621440034              Allocated to registers 
                                   1017 ;s                         Allocated to registers r5 r6 r7 
                                   1018 ;__4587520038              Allocated to registers 
                                   1019 ;s                         Allocated to registers r5 r6 r7 
                                   1020 ;__4587520040              Allocated to registers 
                                   1021 ;s                         Allocated to registers r5 r6 r7 
                                   1022 ;__4587520042              Allocated to registers 
                                   1023 ;s                         Allocated to registers r5 r6 r7 
                                   1024 ;__3276800044              Allocated to registers 
                                   1025 ;s                         Allocated to registers r5 r6 r7 
                                   1026 ;__1310720046              Allocated to registers 
                                   1027 ;s                         Allocated to registers r5 r6 r7 
                                   1028 ;sloc0                     Allocated to stack - _bp +1
                                   1029 ;sloc1                     Allocated to stack - _bp +2
                                   1030 ;sloc2                     Allocated to stack - _bp +4
                                   1031 ;sloc3                     Allocated to stack - _bp +6
                                   1032 ;sloc4                     Allocated to stack - _bp +8
                                   1033 ;sloc5                     Allocated to stack - _bp +10
                                   1034 ;sloc6                     Allocated to stack - _bp +12
                                   1035 ;------------------------------------------------------------
                                   1036 ;	life.c:277: void main(void) {
                                   1037 ;	-----------------------------------------
                                   1038 ;	 function main
                                   1039 ;	-----------------------------------------
      00232C                       1040 _main:
      00232C C0 10            [24] 1041 	push	_bp
      00232E E5 81            [12] 1042 	mov	a,sp
      002330 F5 10            [12] 1043 	mov	_bp,a
      002332 24 0D            [12] 1044 	add	a,#0x0d
      002334 F5 81            [12] 1045 	mov	sp,a
                                   1046 ;	life.c:278: IT0 = 1;
                                   1047 ;	assignBit
      002336 D2 88            [12] 1048 	setb	_IT0
                                   1049 ;	life.c:279: IT1 = 1;
                                   1050 ;	assignBit
      002338 D2 8A            [12] 1051 	setb	_IT1
                                   1052 ;	life.c:280: EX0 = 1;
                                   1053 ;	assignBit
      00233A D2 A8            [12] 1054 	setb	_EX0
                                   1055 ;	life.c:281: EX1 = 1;
                                   1056 ;	assignBit
      00233C D2 AA            [12] 1057 	setb	_EX1
                                   1058 ;	life.c:282: EA = 1;	
                                   1059 ;	assignBit
      00233E D2 AF            [12] 1060 	setb	_EA
                                   1061 ;	life.c:283: P1_7 = 1;
                                   1062 ;	assignBit
      002340 D2 97            [12] 1063 	setb	_P1_7
                                   1064 ;	life.c:288: __endasm;
      002342 00               [12] 1065 	nop
      002343 00               [12] 1066 	nop
      002344 00               [12] 1067 	nop
                                   1068 ;	life.c:290: srand(RND);
      002345 90 80 00         [24] 1069 	mov	dptr,#_RND
      002348 E0               [24] 1070 	movx	a,@dptr
      002349 FE               [12] 1071 	mov	r6,a
      00234A A3               [24] 1072 	inc	dptr
      00234B E0               [24] 1073 	movx	a,@dptr
      00234C FF               [12] 1074 	mov	r7,a
      00234D 8E 82            [24] 1075 	mov	dpl,r6
      00234F 8F 83            [24] 1076 	mov	dph,r7
      002351 12 2D 2E         [24] 1077 	lcall	_srand
                                   1078 ;	life.c:292: OE76 = OE76_0;
      002354 78 33            [12] 1079 	mov	r0,#_OE76
      002356 76 3F            [12] 1080 	mov	@r0,#0x3f
                                   1081 ;	life.c:293: flashOE();
      002358 12 20 FD         [24] 1082 	lcall	_flashOE
                                   1083 ;	life.c:295: printstr("\033[?25h\033[m");
      00235B 7D 65            [12] 1084 	mov	r5,#___str_7
      00235D 7E 30            [12] 1085 	mov	r6,#(___str_7 >> 8)
      00235F 7F 80            [12] 1086 	mov	r7,#0x80
                                   1087 ;	life.c:73: return;
      002361                       1088 00211$:
                                   1089 ;	life.c:71: for (; *s; s++) putchar(*s);
      002361 8D 82            [24] 1090 	mov	dpl,r5
      002363 8E 83            [24] 1091 	mov	dph,r6
      002365 8F F0            [24] 1092 	mov	b,r7
      002367 12 2F 09         [24] 1093 	lcall	__gptrget
      00236A FC               [12] 1094 	mov	r4,a
      00236B 60 10            [24] 1095 	jz	00151$
      00236D 7B 00            [12] 1096 	mov	r3,#0x00
      00236F 8C 82            [24] 1097 	mov	dpl,r4
      002371 8B 83            [24] 1098 	mov	dph,r3
      002373 12 20 B5         [24] 1099 	lcall	_putchar
      002376 0D               [12] 1100 	inc	r5
                                   1101 ;	life.c:295: printstr("\033[?25h\033[m");
      002377 BD 00 E7         [24] 1102 	cjne	r5,#0x00,00211$
      00237A 0E               [12] 1103 	inc	r6
      00237B 80 E4            [24] 1104 	sjmp	00211$
      00237D                       1105 00151$:
                                   1106 ;	life.c:297: for (i0 = 0; !i0; ) {	
      00237D 78 31            [12] 1107 	mov	r0,#_i0
      00237F 76 00            [12] 1108 	mov	@r0,#0x00
      002381                       1109 00258$:
                                   1110 ;	life.c:298: printstr("LIFE INIT T L R P\r\n");
      002381 7D 6F            [12] 1111 	mov	r5,#___str_8
      002383 7E 30            [12] 1112 	mov	r6,#(___str_8 >> 8)
      002385 7F 80            [12] 1113 	mov	r7,#0x80
                                   1114 ;	life.c:73: return;
      002387                       1115 00214$:
                                   1116 ;	life.c:71: for (; *s; s++) putchar(*s);
      002387 8D 82            [24] 1117 	mov	dpl,r5
      002389 8E 83            [24] 1118 	mov	dph,r6
      00238B 8F F0            [24] 1119 	mov	b,r7
      00238D 12 2F 09         [24] 1120 	lcall	__gptrget
      002390 FC               [12] 1121 	mov	r4,a
      002391 60 10            [24] 1122 	jz	00110$
      002393 7B 00            [12] 1123 	mov	r3,#0x00
      002395 8C 82            [24] 1124 	mov	dpl,r4
      002397 8B 83            [24] 1125 	mov	dph,r3
      002399 12 20 B5         [24] 1126 	lcall	_putchar
      00239C 0D               [12] 1127 	inc	r5
                                   1128 ;	life.c:299: while (1) {
      00239D BD 00 E7         [24] 1129 	cjne	r5,#0x00,00214$
      0023A0 0E               [12] 1130 	inc	r6
      0023A1 80 E4            [24] 1131 	sjmp	00214$
      0023A3                       1132 00110$:
                                   1133 ;	life.c:300: c = toupper(getchar());
      0023A3 12 20 BE         [24] 1134 	lcall	_getchar
      0023A6 12 2E E2         [24] 1135 	lcall	_toupper
      0023A9 AE 82            [24] 1136 	mov	r6,dpl
      0023AB AF 83            [24] 1137 	mov	r7,dph
      0023AD 78 3A            [12] 1138 	mov	r0,#_c
      0023AF A6 06            [24] 1139 	mov	@r0,ar6
      0023B1 08               [12] 1140 	inc	r0
      0023B2 A6 07            [24] 1141 	mov	@r0,ar7
                                   1142 ;	life.c:301: if (i0 || (c == (int)'T')) goto term;
      0023B4 78 31            [12] 1143 	mov	r0,#_i0
      0023B6 E6               [12] 1144 	mov	a,@r0
      0023B7 60 03            [24] 1145 	jz	00551$
      0023B9 02 2C 3A         [24] 1146 	ljmp	00149$
      0023BC                       1147 00551$:
      0023BC BE 54 06         [24] 1148 	cjne	r6,#0x54,00552$
      0023BF BF 00 03         [24] 1149 	cjne	r7,#0x00,00552$
      0023C2 02 2C 3A         [24] 1150 	ljmp	00149$
      0023C5                       1151 00552$:
                                   1152 ;	life.c:302: else if ((c == (int)'L') || (c == (int)'R') || (c == (int)'P')) break;
      0023C5 BE 4C 05         [24] 1153 	cjne	r6,#0x4c,00553$
      0023C8 BF 00 02         [24] 1154 	cjne	r7,#0x00,00553$
      0023CB 80 0E            [24] 1155 	sjmp	00305$
      0023CD                       1156 00553$:
      0023CD BE 52 05         [24] 1157 	cjne	r6,#0x52,00554$
      0023D0 BF 00 02         [24] 1158 	cjne	r7,#0x00,00554$
      0023D3 80 06            [24] 1159 	sjmp	00305$
      0023D5                       1160 00554$:
      0023D5 BE 50 CB         [24] 1161 	cjne	r6,#0x50,00110$
      0023D8 BF 00 C8         [24] 1162 	cjne	r7,#0x00,00110$
                                   1163 ;	life.c:305: reload:
      0023DB                       1164 00305$:
      0023DB                       1165 00112$:
                                   1166 ;	life.c:169: memset(u, 0, sizeof (u));
      0023DB E4               [12] 1167 	clr	a
      0023DC C0 E0            [24] 1168 	push	acc
      0023DE 74 24            [12] 1169 	mov	a,#0x24
      0023E0 C0 E0            [24] 1170 	push	acc
      0023E2 E4               [12] 1171 	clr	a
      0023E3 C0 E0            [24] 1172 	push	acc
      0023E5 90 88 00         [24] 1173 	mov	dptr,#_u
      0023E8 75 F0 00         [24] 1174 	mov	b,#0x00
      0023EB 12 2E 78         [24] 1175 	lcall	_memset
      0023EE 15 81            [12] 1176 	dec	sp
      0023F0 15 81            [12] 1177 	dec	sp
      0023F2 15 81            [12] 1178 	dec	sp
                                   1179 ;	life.c:170: memset(pu, 0, sizeof (pu));
      0023F4 E4               [12] 1180 	clr	a
      0023F5 C0 E0            [24] 1181 	push	acc
      0023F7 74 24            [12] 1182 	mov	a,#0x24
      0023F9 C0 E0            [24] 1183 	push	acc
      0023FB E4               [12] 1184 	clr	a
      0023FC C0 E0            [24] 1185 	push	acc
      0023FE 90 64 00         [24] 1186 	mov	dptr,#_pu
      002401 75 F0 00         [24] 1187 	mov	b,#0x00
      002404 12 2E 78         [24] 1188 	lcall	_memset
      002407 15 81            [12] 1189 	dec	sp
      002409 15 81            [12] 1190 	dec	sp
      00240B 15 81            [12] 1191 	dec	sp
                                   1192 ;	life.c:307: if (c == (int)'L') loadiu();
      00240D 78 3A            [12] 1193 	mov	r0,#_c
      00240F B6 4C 06         [24] 1194 	cjne	@r0,#0x4c,00557$
      002412 08               [12] 1195 	inc	r0
      002413 B6 00 02         [24] 1196 	cjne	@r0,#0x00,00557$
      002416 80 03            [24] 1197 	sjmp	00558$
      002418                       1198 00557$:
      002418 02 25 93         [24] 1199 	ljmp	00116$
      00241B                       1200 00558$:
                                   1201 ;	life.c:176: j = 0;
      00241B 78 38            [12] 1202 	mov	r0,#_j
      00241D E4               [12] 1203 	clr	a
      00241E F6               [12] 1204 	mov	@r0,a
      00241F 08               [12] 1205 	inc	r0
      002420 F6               [12] 1206 	mov	@r0,a
                                   1207 ;	life.c:178: printstr("LOAD 0 1 ~ # <");
      002421 7D 4B            [12] 1208 	mov	r5,#___str_4
      002423 7E 30            [12] 1209 	mov	r6,#(___str_4 >> 8)
      002425 7F 80            [12] 1210 	mov	r7,#0x80
                                   1211 ;	life.c:73: return;
      002427                       1212 00217$:
                                   1213 ;	life.c:71: for (; *s; s++) putchar(*s);
      002427 8D 82            [24] 1214 	mov	dpl,r5
      002429 8E 83            [24] 1215 	mov	dph,r6
      00242B 8F F0            [24] 1216 	mov	b,r7
      00242D 12 2F 09         [24] 1217 	lcall	__gptrget
      002430 FC               [12] 1218 	mov	r4,a
      002431 60 10            [24] 1219 	jz	00156$
      002433 7B 00            [12] 1220 	mov	r3,#0x00
      002435 8C 82            [24] 1221 	mov	dpl,r4
      002437 8B 83            [24] 1222 	mov	dph,r3
      002439 12 20 B5         [24] 1223 	lcall	_putchar
      00243C 0D               [12] 1224 	inc	r5
                                   1225 ;	life.c:178: printstr("LOAD 0 1 ~ # <");
      00243D BD 00 E7         [24] 1226 	cjne	r5,#0x00,00217$
      002440 0E               [12] 1227 	inc	r6
      002441 80 E4            [24] 1228 	sjmp	00217$
      002443                       1229 00156$:
                                   1230 ;	life.c:180: for (y = 0; y < (H * W); y += W) {
      002443 78 36            [12] 1231 	mov	r0,#_y
      002445 E4               [12] 1232 	clr	a
      002446 F6               [12] 1233 	mov	@r0,a
      002447 08               [12] 1234 	inc	r0
      002448 F6               [12] 1235 	mov	@r0,a
      002449                       1236 00220$:
                                   1237 ;	life.c:181: for (x = 0; x < W; x++) {
      002449 78 34            [12] 1238 	mov	r0,#_x
      00244B E4               [12] 1239 	clr	a
      00244C F6               [12] 1240 	mov	@r0,a
      00244D 08               [12] 1241 	inc	r0
      00244E F6               [12] 1242 	mov	@r0,a
                                   1243 ;	life.c:182: while (1) {
      00244F                       1244 00169$:
                                   1245 ;	life.c:183: c = getchar();
      00244F 12 20 BE         [24] 1246 	lcall	_getchar
      002452 AE 82            [24] 1247 	mov	r6,dpl
      002454 AF 83            [24] 1248 	mov	r7,dph
      002456 78 3A            [12] 1249 	mov	r0,#_c
      002458 A6 06            [24] 1250 	mov	@r0,ar6
      00245A 08               [12] 1251 	inc	r0
      00245B A6 07            [24] 1252 	mov	@r0,ar7
                                   1253 ;	life.c:184: if (c == (int)'0') {
      00245D BE 30 25         [24] 1254 	cjne	r6,#0x30,00167$
      002460 BF 00 22         [24] 1255 	cjne	r7,#0x00,00167$
                                   1256 ;	life.c:185: iu[y + x] = 0;
      002463 78 36            [12] 1257 	mov	r0,#_y
      002465 79 34            [12] 1258 	mov	r1,#_x
      002467 E7               [12] 1259 	mov	a,@r1
      002468 26               [12] 1260 	add	a,@r0
      002469 FC               [12] 1261 	mov	r4,a
      00246A 09               [12] 1262 	inc	r1
      00246B E7               [12] 1263 	mov	a,@r1
      00246C 08               [12] 1264 	inc	r0
      00246D 36               [12] 1265 	addc	a,@r0
      00246E FD               [12] 1266 	mov	r5,a
      00246F EC               [12] 1267 	mov	a,r4
      002470 24 00            [12] 1268 	add	a,#_iu
      002472 F5 82            [12] 1269 	mov	dpl,a
      002474 ED               [12] 1270 	mov	a,r5
      002475 34 40            [12] 1271 	addc	a,#(_iu >> 8)
      002477 F5 83            [12] 1272 	mov	dph,a
      002479 E4               [12] 1273 	clr	a
      00247A F0               [24] 1274 	movx	@dptr,a
                                   1275 ;	life.c:186: j++;
      00247B 78 38            [12] 1276 	mov	r0,#_j
      00247D 06               [12] 1277 	inc	@r0
      00247E B6 00 02         [24] 1278 	cjne	@r0,#0x00,00563$
      002481 08               [12] 1279 	inc	r0
      002482 06               [12] 1280 	inc	@r0
      002483                       1281 00563$:
                                   1282 ;	life.c:187: break;
      002483 80 39            [24] 1283 	sjmp	00172$
      002485                       1284 00167$:
                                   1285 ;	life.c:188: } else if (c == (int)'1') {
      002485 BE 31 26         [24] 1286 	cjne	r6,#0x31,00165$
      002488 BF 00 23         [24] 1287 	cjne	r7,#0x00,00165$
                                   1288 ;	life.c:189: iu[y + x] = 1;
      00248B 78 36            [12] 1289 	mov	r0,#_y
      00248D 79 34            [12] 1290 	mov	r1,#_x
      00248F E7               [12] 1291 	mov	a,@r1
      002490 26               [12] 1292 	add	a,@r0
      002491 FC               [12] 1293 	mov	r4,a
      002492 09               [12] 1294 	inc	r1
      002493 E7               [12] 1295 	mov	a,@r1
      002494 08               [12] 1296 	inc	r0
      002495 36               [12] 1297 	addc	a,@r0
      002496 FD               [12] 1298 	mov	r5,a
      002497 EC               [12] 1299 	mov	a,r4
      002498 24 00            [12] 1300 	add	a,#_iu
      00249A F5 82            [12] 1301 	mov	dpl,a
      00249C ED               [12] 1302 	mov	a,r5
      00249D 34 40            [12] 1303 	addc	a,#(_iu >> 8)
      00249F F5 83            [12] 1304 	mov	dph,a
      0024A1 74 01            [12] 1305 	mov	a,#0x01
      0024A3 F0               [24] 1306 	movx	@dptr,a
                                   1307 ;	life.c:190: j++;
      0024A4 78 38            [12] 1308 	mov	r0,#_j
      0024A6 06               [12] 1309 	inc	@r0
      0024A7 B6 00 02         [24] 1310 	cjne	@r0,#0x00,00566$
      0024AA 08               [12] 1311 	inc	r0
      0024AB 06               [12] 1312 	inc	@r0
      0024AC                       1313 00566$:
                                   1314 ;	life.c:191: break;
      0024AC 80 10            [24] 1315 	sjmp	00172$
      0024AE                       1316 00165$:
                                   1317 ;	life.c:192: } else if (c == (int)'~') goto br_inner;
      0024AE BE 7E 05         [24] 1318 	cjne	r6,#0x7e,00567$
      0024B1 BF 00 02         [24] 1319 	cjne	r7,#0x00,00567$
      0024B4 80 21            [24] 1320 	sjmp	00221$
      0024B6                       1321 00567$:
                                   1322 ;	life.c:193: else if (c == (int)'#') goto out;
                                   1323 ;	life.c:197: break;
      0024B6 BE 23 96         [24] 1324 	cjne	r6,#0x23,00169$
      0024B9 BF 00 93         [24] 1325 	cjne	r7,#0x00,00169$
      0024BC 80 31            [24] 1326 	sjmp	00182$
      0024BE                       1327 00172$:
                                   1328 ;	life.c:181: for (x = 0; x < W; x++) {
      0024BE 78 34            [12] 1329 	mov	r0,#_x
      0024C0 06               [12] 1330 	inc	@r0
      0024C1 B6 00 02         [24] 1331 	cjne	@r0,#0x00,00569$
      0024C4 08               [12] 1332 	inc	r0
      0024C5 06               [12] 1333 	inc	@r0
      0024C6                       1334 00569$:
      0024C6 78 34            [12] 1335 	mov	r0,#_x
      0024C8 C3               [12] 1336 	clr	c
      0024C9 E6               [12] 1337 	mov	a,@r0
      0024CA 94 30            [12] 1338 	subb	a,#0x30
      0024CC 08               [12] 1339 	inc	r0
      0024CD E6               [12] 1340 	mov	a,@r0
      0024CE 64 80            [12] 1341 	xrl	a,#0x80
      0024D0 94 80            [12] 1342 	subb	a,#0x80
      0024D2 50 03            [24] 1343 	jnc	00570$
      0024D4 02 24 4F         [24] 1344 	ljmp	00169$
      0024D7                       1345 00570$:
      0024D7                       1346 00221$:
                                   1347 ;	life.c:180: for (y = 0; y < (H * W); y += W) {
      0024D7 78 36            [12] 1348 	mov	r0,#_y
      0024D9 74 30            [12] 1349 	mov	a,#0x30
      0024DB 26               [12] 1350 	add	a,@r0
      0024DC F6               [12] 1351 	mov	@r0,a
      0024DD E4               [12] 1352 	clr	a
      0024DE 08               [12] 1353 	inc	r0
      0024DF 36               [12] 1354 	addc	a,@r0
      0024E0 F6               [12] 1355 	mov	@r0,a
      0024E1 78 36            [12] 1356 	mov	r0,#_y
      0024E3 C3               [12] 1357 	clr	c
      0024E4 08               [12] 1358 	inc	r0
      0024E5 E6               [12] 1359 	mov	a,@r0
      0024E6 64 80            [12] 1360 	xrl	a,#0x80
      0024E8 94 A4            [12] 1361 	subb	a,#0xa4
      0024EA 50 03            [24] 1362 	jnc	00571$
      0024EC 02 24 49         [24] 1363 	ljmp	00220$
      0024EF                       1364 00571$:
                                   1365 ;	life.c:201: out:
      0024EF                       1366 00182$:
                                   1367 ;	life.c:202: if (c != (int)'#')
      0024EF BE 23 05         [24] 1368 	cjne	r6,#0x23,00572$
      0024F2 BF 00 02         [24] 1369 	cjne	r7,#0x00,00572$
      0024F5 80 14            [24] 1370 	sjmp	00181$
      0024F7                       1371 00572$:
                                   1372 ;	life.c:203: while (1) {
      0024F7                       1373 00178$:
                                   1374 ;	life.c:204: c = getchar();
      0024F7 12 20 BE         [24] 1375 	lcall	_getchar
      0024FA AE 82            [24] 1376 	mov	r6,dpl
      0024FC AF 83            [24] 1377 	mov	r7,dph
      0024FE 78 3A            [12] 1378 	mov	r0,#_c
      002500 A6 06            [24] 1379 	mov	@r0,ar6
      002502 08               [12] 1380 	inc	r0
      002503 A6 07            [24] 1381 	mov	@r0,ar7
                                   1382 ;	life.c:205: if (c == (int)'#') break;
      002505 BE 23 EF         [24] 1383 	cjne	r6,#0x23,00178$
      002508 BF 00 EC         [24] 1384 	cjne	r7,#0x00,00178$
      00250B                       1385 00181$:
                                   1386 ;	life.c:207: print16x(j);
      00250B 78 38            [12] 1387 	mov	r0,#_j
      00250D 86 06            [24] 1388 	mov	ar6,@r0
      00250F 08               [12] 1389 	inc	r0
      002510 86 07            [24] 1390 	mov	ar7,@r0
      002512 8E 04            [24] 1391 	mov	ar4,r6
                                   1392 ;	life.c:62: putchar(digits[(a >> 12) & 0xf]);
      002514 EF               [12] 1393 	mov	a,r7
      002515 FD               [12] 1394 	mov	r5,a
      002516 C4               [12] 1395 	swap	a
      002517 54 0F            [12] 1396 	anl	a,#(0x0f&0x0f)
      002519 24 21            [12] 1397 	add	a,#_digits
      00251B F9               [12] 1398 	mov	r1,a
      00251C 87 07            [24] 1399 	mov	ar7,@r1
      00251E 7E 00            [12] 1400 	mov	r6,#0x00
      002520 8F 82            [24] 1401 	mov	dpl,r7
      002522 8E 83            [24] 1402 	mov	dph,r6
      002524 12 20 B5         [24] 1403 	lcall	_putchar
                                   1404 ;	life.c:63: putchar(digits[(a >> 8) & 0xf]);
      002527 8D 07            [24] 1405 	mov	ar7,r5
      002529 53 07 0F         [24] 1406 	anl	ar7,#0x0f
      00252C EF               [12] 1407 	mov	a,r7
      00252D 24 21            [12] 1408 	add	a,#_digits
      00252F F9               [12] 1409 	mov	r1,a
      002530 87 07            [24] 1410 	mov	ar7,@r1
      002532 7E 00            [12] 1411 	mov	r6,#0x00
      002534 8F 82            [24] 1412 	mov	dpl,r7
      002536 8E 83            [24] 1413 	mov	dph,r6
      002538 12 20 B5         [24] 1414 	lcall	_putchar
                                   1415 ;	life.c:64: putchar(digits[(a >> 4) & 0xf]);
      00253B 8C 06            [24] 1416 	mov	ar6,r4
      00253D ED               [12] 1417 	mov	a,r5
      00253E C4               [12] 1418 	swap	a
      00253F CE               [12] 1419 	xch	a,r6
      002540 C4               [12] 1420 	swap	a
      002541 54 0F            [12] 1421 	anl	a,#0x0f
      002543 6E               [12] 1422 	xrl	a,r6
      002544 CE               [12] 1423 	xch	a,r6
      002545 54 0F            [12] 1424 	anl	a,#0x0f
      002547 CE               [12] 1425 	xch	a,r6
      002548 6E               [12] 1426 	xrl	a,r6
      002549 CE               [12] 1427 	xch	a,r6
      00254A 53 06 0F         [24] 1428 	anl	ar6,#0x0f
      00254D EE               [12] 1429 	mov	a,r6
      00254E 24 21            [12] 1430 	add	a,#_digits
      002550 F9               [12] 1431 	mov	r1,a
      002551 87 07            [24] 1432 	mov	ar7,@r1
      002553 7E 00            [12] 1433 	mov	r6,#0x00
      002555 8F 82            [24] 1434 	mov	dpl,r7
      002557 8E 83            [24] 1435 	mov	dph,r6
      002559 12 20 B5         [24] 1436 	lcall	_putchar
                                   1437 ;	life.c:65: putchar(digits[a & 0xf]);
      00255C 53 04 0F         [24] 1438 	anl	ar4,#0x0f
      00255F EC               [12] 1439 	mov	a,r4
      002560 24 21            [12] 1440 	add	a,#_digits
      002562 F9               [12] 1441 	mov	r1,a
      002563 87 07            [24] 1442 	mov	ar7,@r1
      002565 7E 00            [12] 1443 	mov	r6,#0x00
      002567 8F 82            [24] 1444 	mov	dpl,r7
      002569 8E 83            [24] 1445 	mov	dph,r6
      00256B 12 20 B5         [24] 1446 	lcall	_putchar
                                   1447 ;	life.c:208: printstr(">\r\n");
      00256E 7D 5A            [12] 1448 	mov	r5,#___str_5
      002570 7E 30            [12] 1449 	mov	r6,#(___str_5 >> 8)
      002572 7F 80            [12] 1450 	mov	r7,#0x80
                                   1451 ;	life.c:73: return;
      002574                       1452 00223$:
                                   1453 ;	life.c:71: for (; *s; s++) putchar(*s);
      002574 8D 82            [24] 1454 	mov	dpl,r5
      002576 8E 83            [24] 1455 	mov	dph,r6
      002578 8F F0            [24] 1456 	mov	b,r7
      00257A 12 2F 09         [24] 1457 	lcall	__gptrget
      00257D FC               [12] 1458 	mov	r4,a
      00257E 70 03            [24] 1459 	jnz	00575$
      002580 02 26 4C         [24] 1460 	ljmp	00117$
      002583                       1461 00575$:
      002583 7B 00            [12] 1462 	mov	r3,#0x00
      002585 8C 82            [24] 1463 	mov	dpl,r4
      002587 8B 83            [24] 1464 	mov	dph,r3
      002589 12 20 B5         [24] 1465 	lcall	_putchar
      00258C 0D               [12] 1466 	inc	r5
                                   1467 ;	life.c:307: if (c == (int)'L') loadiu();
      00258D BD 00 E4         [24] 1468 	cjne	r5,#0x00,00223$
      002590 0E               [12] 1469 	inc	r6
      002591 80 E1            [24] 1470 	sjmp	00223$
      002593                       1471 00116$:
                                   1472 ;	life.c:308: else if (c == (int)'R') loadriu();
      002593 78 3A            [12] 1473 	mov	r0,#_c
      002595 B6 52 06         [24] 1474 	cjne	@r0,#0x52,00577$
      002598 08               [12] 1475 	inc	r0
      002599 B6 00 02         [24] 1476 	cjne	@r0,#0x00,00577$
      00259C 80 03            [24] 1477 	sjmp	00578$
      00259E                       1478 00577$:
      00259E 02 26 4C         [24] 1479 	ljmp	00117$
      0025A1                       1480 00578$:
                                   1481 ;	life.c:214: j = 0;
      0025A1 78 38            [12] 1482 	mov	r0,#_j
      0025A3 E4               [12] 1483 	clr	a
      0025A4 F6               [12] 1484 	mov	@r0,a
      0025A5 08               [12] 1485 	inc	r0
      0025A6 F6               [12] 1486 	mov	@r0,a
                                   1487 ;	life.c:216: printstr("RANDOM");
      0025A7 7D 5E            [12] 1488 	mov	r5,#___str_6
      0025A9 7E 30            [12] 1489 	mov	r6,#(___str_6 >> 8)
      0025AB 7F 80            [12] 1490 	mov	r7,#0x80
                                   1491 ;	life.c:73: return;
      0025AD                       1492 00226$:
                                   1493 ;	life.c:71: for (; *s; s++) putchar(*s);
      0025AD 8D 82            [24] 1494 	mov	dpl,r5
      0025AF 8E 83            [24] 1495 	mov	dph,r6
      0025B1 8F F0            [24] 1496 	mov	b,r7
      0025B3 12 2F 09         [24] 1497 	lcall	__gptrget
      0025B6 FC               [12] 1498 	mov	r4,a
      0025B7 60 10            [24] 1499 	jz	00188$
      0025B9 7B 00            [12] 1500 	mov	r3,#0x00
      0025BB 8C 82            [24] 1501 	mov	dpl,r4
      0025BD 8B 83            [24] 1502 	mov	dph,r3
      0025BF 12 20 B5         [24] 1503 	lcall	_putchar
      0025C2 0D               [12] 1504 	inc	r5
                                   1505 ;	life.c:216: printstr("RANDOM");
      0025C3 BD 00 E7         [24] 1506 	cjne	r5,#0x00,00226$
      0025C6 0E               [12] 1507 	inc	r6
      0025C7 80 E4            [24] 1508 	sjmp	00226$
      0025C9                       1509 00188$:
                                   1510 ;	life.c:218: for (y = 0; y < (H * W); y += W)
      0025C9 78 36            [12] 1511 	mov	r0,#_y
      0025CB E4               [12] 1512 	clr	a
      0025CC F6               [12] 1513 	mov	@r0,a
      0025CD 08               [12] 1514 	inc	r0
      0025CE F6               [12] 1515 	mov	@r0,a
      0025CF                       1516 00230$:
                                   1517 ;	life.c:219: for (x = 0; x < W; x++)
      0025CF 78 34            [12] 1518 	mov	r0,#_x
      0025D1 E4               [12] 1519 	clr	a
      0025D2 F6               [12] 1520 	mov	@r0,a
      0025D3 08               [12] 1521 	inc	r0
      0025D4 F6               [12] 1522 	mov	@r0,a
      0025D5                       1523 00228$:
                                   1524 ;	life.c:220: iu[y + x] = rand() & 1;
      0025D5 78 36            [12] 1525 	mov	r0,#_y
      0025D7 79 34            [12] 1526 	mov	r1,#_x
      0025D9 E7               [12] 1527 	mov	a,@r1
      0025DA 26               [12] 1528 	add	a,@r0
      0025DB FE               [12] 1529 	mov	r6,a
      0025DC 09               [12] 1530 	inc	r1
      0025DD E7               [12] 1531 	mov	a,@r1
      0025DE 08               [12] 1532 	inc	r0
      0025DF 36               [12] 1533 	addc	a,@r0
      0025E0 FF               [12] 1534 	mov	r7,a
      0025E1 EE               [12] 1535 	mov	a,r6
      0025E2 24 00            [12] 1536 	add	a,#_iu
      0025E4 FE               [12] 1537 	mov	r6,a
      0025E5 EF               [12] 1538 	mov	a,r7
      0025E6 34 40            [12] 1539 	addc	a,#(_iu >> 8)
      0025E8 FF               [12] 1540 	mov	r7,a
      0025E9 C0 07            [24] 1541 	push	ar7
      0025EB C0 06            [24] 1542 	push	ar6
      0025ED 12 2C 6A         [24] 1543 	lcall	_rand
      0025F0 AC 82            [24] 1544 	mov	r4,dpl
      0025F2 D0 06            [24] 1545 	pop	ar6
      0025F4 D0 07            [24] 1546 	pop	ar7
      0025F6 53 04 01         [24] 1547 	anl	ar4,#0x01
      0025F9 8E 82            [24] 1548 	mov	dpl,r6
      0025FB 8F 83            [24] 1549 	mov	dph,r7
      0025FD EC               [12] 1550 	mov	a,r4
      0025FE F0               [24] 1551 	movx	@dptr,a
                                   1552 ;	life.c:219: for (x = 0; x < W; x++)
      0025FF 78 34            [12] 1553 	mov	r0,#_x
      002601 06               [12] 1554 	inc	@r0
      002602 B6 00 02         [24] 1555 	cjne	@r0,#0x00,00581$
      002605 08               [12] 1556 	inc	r0
      002606 06               [12] 1557 	inc	@r0
      002607                       1558 00581$:
      002607 78 34            [12] 1559 	mov	r0,#_x
      002609 C3               [12] 1560 	clr	c
      00260A E6               [12] 1561 	mov	a,@r0
      00260B 94 30            [12] 1562 	subb	a,#0x30
      00260D 08               [12] 1563 	inc	r0
      00260E E6               [12] 1564 	mov	a,@r0
      00260F 64 80            [12] 1565 	xrl	a,#0x80
      002611 94 80            [12] 1566 	subb	a,#0x80
      002613 40 C0            [24] 1567 	jc	00228$
                                   1568 ;	life.c:218: for (y = 0; y < (H * W); y += W)
      002615 78 36            [12] 1569 	mov	r0,#_y
      002617 74 30            [12] 1570 	mov	a,#0x30
      002619 26               [12] 1571 	add	a,@r0
      00261A F6               [12] 1572 	mov	@r0,a
      00261B E4               [12] 1573 	clr	a
      00261C 08               [12] 1574 	inc	r0
      00261D 36               [12] 1575 	addc	a,@r0
      00261E F6               [12] 1576 	mov	@r0,a
      00261F 78 36            [12] 1577 	mov	r0,#_y
      002621 C3               [12] 1578 	clr	c
      002622 08               [12] 1579 	inc	r0
      002623 E6               [12] 1580 	mov	a,@r0
      002624 64 80            [12] 1581 	xrl	a,#0x80
      002626 94 A4            [12] 1582 	subb	a,#0xa4
      002628 40 A5            [24] 1583 	jc	00230$
                                   1584 ;	life.c:222: printstr("\r\n");
      00262A 7D 41            [12] 1585 	mov	r5,#___str_2
      00262C 7E 30            [12] 1586 	mov	r6,#(___str_2 >> 8)
      00262E 7F 80            [12] 1587 	mov	r7,#0x80
                                   1588 ;	life.c:73: return;
      002630                       1589 00233$:
                                   1590 ;	life.c:71: for (; *s; s++) putchar(*s);
      002630 8D 82            [24] 1591 	mov	dpl,r5
      002632 8E 83            [24] 1592 	mov	dph,r6
      002634 8F F0            [24] 1593 	mov	b,r7
      002636 12 2F 09         [24] 1594 	lcall	__gptrget
      002639 FC               [12] 1595 	mov	r4,a
      00263A 60 10            [24] 1596 	jz	00117$
      00263C 7B 00            [12] 1597 	mov	r3,#0x00
      00263E 8C 82            [24] 1598 	mov	dpl,r4
      002640 8B 83            [24] 1599 	mov	dph,r3
      002642 12 20 B5         [24] 1600 	lcall	_putchar
      002645 0D               [12] 1601 	inc	r5
                                   1602 ;	life.c:308: else if (c == (int)'R') loadriu();
      002646 BD 00 E7         [24] 1603 	cjne	r5,#0x00,00233$
      002649 0E               [12] 1604 	inc	r6
      00264A 80 E4            [24] 1605 	sjmp	00233$
      00264C                       1606 00117$:
                                   1607 ;	life.c:309: memcpy(u, iu, sizeof (iu));
      00264C E4               [12] 1608 	clr	a
      00264D C0 E0            [24] 1609 	push	acc
      00264F 74 24            [12] 1610 	mov	a,#0x24
      002651 C0 E0            [24] 1611 	push	acc
      002653 74 00            [12] 1612 	mov	a,#_iu
      002655 C0 E0            [24] 1613 	push	acc
      002657 74 40            [12] 1614 	mov	a,#(_iu >> 8)
      002659 C0 E0            [24] 1615 	push	acc
      00265B E4               [12] 1616 	clr	a
      00265C C0 E0            [24] 1617 	push	acc
      00265E 90 88 00         [24] 1618 	mov	dptr,#_u
      002661 75 F0 00         [24] 1619 	mov	b,#0x00
      002664 12 2D E5         [24] 1620 	lcall	___memcpy
      002667 E5 81            [12] 1621 	mov	a,sp
      002669 24 FB            [12] 1622 	add	a,#0xfb
      00266B F5 81            [12] 1623 	mov	sp,a
                                   1624 ;	life.c:310: show(0);
      00266D 75 82 00         [24] 1625 	mov	dpl,#0x00
      002670 12 21 0F         [24] 1626 	lcall	_show
                                   1627 ;	life.c:312: printstr("READY T L R P S\r\n");
      002673 7D 83            [12] 1628 	mov	r5,#___str_9
      002675 7E 30            [12] 1629 	mov	r6,#(___str_9 >> 8)
      002677 7F 80            [12] 1630 	mov	r7,#0x80
                                   1631 ;	life.c:73: return;
      002679                       1632 00236$:
                                   1633 ;	life.c:71: for (; *s; s++) putchar(*s);
      002679 8D 82            [24] 1634 	mov	dpl,r5
      00267B 8E 83            [24] 1635 	mov	dph,r6
      00267D 8F F0            [24] 1636 	mov	b,r7
      00267F 12 2F 09         [24] 1637 	lcall	__gptrget
      002682 FC               [12] 1638 	mov	r4,a
      002683 60 10            [24] 1639 	jz	00130$
      002685 7B 00            [12] 1640 	mov	r3,#0x00
      002687 8C 82            [24] 1641 	mov	dpl,r4
      002689 8B 83            [24] 1642 	mov	dph,r3
      00268B 12 20 B5         [24] 1643 	lcall	_putchar
      00268E 0D               [12] 1644 	inc	r5
                                   1645 ;	life.c:313: while (1) {
      00268F BD 00 E7         [24] 1646 	cjne	r5,#0x00,00236$
      002692 0E               [12] 1647 	inc	r6
      002693 80 E4            [24] 1648 	sjmp	00236$
      002695                       1649 00130$:
                                   1650 ;	life.c:314: c = toupper(getchar());
      002695 12 20 BE         [24] 1651 	lcall	_getchar
      002698 12 2E E2         [24] 1652 	lcall	_toupper
      00269B AE 82            [24] 1653 	mov	r6,dpl
      00269D AF 83            [24] 1654 	mov	r7,dph
      00269F 78 3A            [12] 1655 	mov	r0,#_c
      0026A1 A6 06            [24] 1656 	mov	@r0,ar6
      0026A3 08               [12] 1657 	inc	r0
      0026A4 A6 07            [24] 1658 	mov	@r0,ar7
                                   1659 ;	life.c:315: if (i0 || (c == (int)'T')) goto term;
      0026A6 78 31            [12] 1660 	mov	r0,#_i0
      0026A8 E6               [12] 1661 	mov	a,@r0
      0026A9 60 03            [24] 1662 	jz	00588$
      0026AB 02 2C 3A         [24] 1663 	ljmp	00149$
      0026AE                       1664 00588$:
      0026AE BE 54 06         [24] 1665 	cjne	r6,#0x54,00589$
      0026B1 BF 00 03         [24] 1666 	cjne	r7,#0x00,00589$
      0026B4 02 2C 3A         [24] 1667 	ljmp	00149$
      0026B7                       1668 00589$:
                                   1669 ;	life.c:316: else if ((c == (int)'L') || (c == (int)'R') || (c == (int)'P')) goto reload;
      0026B7 BE 4C 06         [24] 1670 	cjne	r6,#0x4c,00590$
      0026BA BF 00 03         [24] 1671 	cjne	r7,#0x00,00590$
      0026BD 02 23 DB         [24] 1672 	ljmp	00112$
      0026C0                       1673 00590$:
      0026C0 BE 52 06         [24] 1674 	cjne	r6,#0x52,00591$
      0026C3 BF 00 03         [24] 1675 	cjne	r7,#0x00,00591$
      0026C6 02 23 DB         [24] 1676 	ljmp	00112$
      0026C9                       1677 00591$:
      0026C9 BE 50 06         [24] 1678 	cjne	r6,#0x50,00592$
      0026CC BF 00 03         [24] 1679 	cjne	r7,#0x00,00592$
      0026CF 02 23 DB         [24] 1680 	ljmp	00112$
      0026D2                       1681 00592$:
                                   1682 ;	life.c:317: else if (c == (int)'S') break;
      0026D2 BE 53 C0         [24] 1683 	cjne	r6,#0x53,00130$
      0026D5 BF 00 BD         [24] 1684 	cjne	r7,#0x00,00130$
                                   1685 ;	life.c:126: generation[0] = 0u;
      0026D8 78 43            [12] 1686 	mov	r0,#_generation
      0026DA 76 00            [12] 1687 	mov	@r0,#0x00
      0026DC 08               [12] 1688 	inc	r0
      0026DD 76 00            [12] 1689 	mov	@r0,#0x00
                                   1690 ;	life.c:127: generation[1] = 0u;
      0026DF 78 45            [12] 1691 	mov	r0,#(_generation + 0x0002)
      0026E1 76 00            [12] 1692 	mov	@r0,#0x00
      0026E3 08               [12] 1693 	inc	r0
      0026E4 76 00            [12] 1694 	mov	@r0,#0x00
                                   1695 ;	life.c:322: for (i1 = 0; !i0 && !i1; ) {
      0026E6 78 32            [12] 1696 	mov	r0,#_i1
      0026E8 76 00            [12] 1697 	mov	@r0,#0x00
      0026EA                       1698 00253$:
      0026EA 78 31            [12] 1699 	mov	r0,#_i0
      0026EC E6               [12] 1700 	mov	a,@r0
      0026ED 60 03            [24] 1701 	jz	00595$
      0026EF 02 2C 08         [24] 1702 	ljmp	00145$
      0026F2                       1703 00595$:
      0026F2 78 32            [12] 1704 	mov	r0,#_i1
      0026F4 E6               [12] 1705 	mov	a,@r0
      0026F5 60 03            [24] 1706 	jz	00596$
      0026F7 02 2C 08         [24] 1707 	ljmp	00145$
      0026FA                       1708 00596$:
                                   1709 ;	life.c:323: show(1);
      0026FA 75 82 01         [24] 1710 	mov	dpl,#0x01
      0026FD 12 21 0F         [24] 1711 	lcall	_show
                                   1712 ;	life.c:228: fixed = 0;
      002700 78 3D            [12] 1713 	mov	r0,#_fixed
      002702 76 00            [12] 1714 	mov	@r0,#0x00
                                   1715 ;	life.c:229: cycle2 = 0;
      002704 78 3E            [12] 1716 	mov	r0,#_cycle2
      002706 76 00            [12] 1717 	mov	@r0,#0x00
                                   1718 ;	life.c:231: OE76 = OE76_0;
      002708 78 33            [12] 1719 	mov	r0,#_OE76
      00270A 76 3F            [12] 1720 	mov	@r0,#0x3f
                                   1721 ;	life.c:232: flashOE();
      00270C 12 20 FD         [24] 1722 	lcall	_flashOE
                                   1723 ;	life.c:234: for (y = 0; y < H; y++) {
      00270F 78 36            [12] 1724 	mov	r0,#_y
      002711 E4               [12] 1725 	clr	a
      002712 F6               [12] 1726 	mov	@r0,a
      002713 08               [12] 1727 	inc	r0
      002714 F6               [12] 1728 	mov	@r0,a
      002715                       1729 00240$:
                                   1730 ;	life.c:235: OE76 = OE76_0 | ((y & 0x0003u) << 6);
      002715 78 36            [12] 1731 	mov	r0,#_y
      002717 86 07            [24] 1732 	mov	ar7,@r0
      002719 53 07 03         [24] 1733 	anl	ar7,#0x03
      00271C EF               [12] 1734 	mov	a,r7
      00271D 03               [12] 1735 	rr	a
      00271E 03               [12] 1736 	rr	a
      00271F 54 C0            [12] 1737 	anl	a,#0xc0
      002721 FF               [12] 1738 	mov	r7,a
      002722 78 33            [12] 1739 	mov	r0,#_OE76
      002724 74 3F            [12] 1740 	mov	a,#0x3f
      002726 4F               [12] 1741 	orl	a,r7
      002727 F6               [12] 1742 	mov	@r0,a
                                   1743 ;	life.c:236: flashOE();
      002728 12 20 FD         [24] 1744 	lcall	_flashOE
                                   1745 ;	life.c:237: for (x = 0; x < W; x++) {
      00272B 78 34            [12] 1746 	mov	r0,#_x
      00272D E4               [12] 1747 	clr	a
      00272E F6               [12] 1748 	mov	@r0,a
      00272F 08               [12] 1749 	inc	r0
      002730 F6               [12] 1750 	mov	@r0,a
      002731                       1751 00238$:
                                   1752 ;	life.c:238: n = -u[A2D(W, y, x)];
      002731 78 36            [12] 1753 	mov	r0,#_y
      002733 E6               [12] 1754 	mov	a,@r0
      002734 C0 E0            [24] 1755 	push	acc
      002736 08               [12] 1756 	inc	r0
      002737 E6               [12] 1757 	mov	a,@r0
      002738 C0 E0            [24] 1758 	push	acc
      00273A 90 00 30         [24] 1759 	mov	dptr,#0x0030
      00273D 12 2D 47         [24] 1760 	lcall	__mulint
      002740 C8               [12] 1761 	xch	a,r0
      002741 E5 10            [12] 1762 	mov	a,_bp
      002743 24 04            [12] 1763 	add	a,#0x04
      002745 C8               [12] 1764 	xch	a,r0
      002746 A6 82            [24] 1765 	mov	@r0,dpl
      002748 08               [12] 1766 	inc	r0
      002749 A6 83            [24] 1767 	mov	@r0,dph
      00274B 15 81            [12] 1768 	dec	sp
      00274D 15 81            [12] 1769 	dec	sp
      00274F E5 10            [12] 1770 	mov	a,_bp
      002751 24 04            [12] 1771 	add	a,#0x04
      002753 F8               [12] 1772 	mov	r0,a
      002754 79 34            [12] 1773 	mov	r1,#_x
      002756 E7               [12] 1774 	mov	a,@r1
      002757 26               [12] 1775 	add	a,@r0
      002758 C0 E0            [24] 1776 	push	acc
      00275A 09               [12] 1777 	inc	r1
      00275B E7               [12] 1778 	mov	a,@r1
      00275C 08               [12] 1779 	inc	r0
      00275D 36               [12] 1780 	addc	a,@r0
      00275E C0 E0            [24] 1781 	push	acc
      002760 E5 10            [12] 1782 	mov	a,_bp
      002762 24 03            [12] 1783 	add	a,#0x03
      002764 F8               [12] 1784 	mov	r0,a
      002765 D0 E0            [24] 1785 	pop	acc
      002767 F6               [12] 1786 	mov	@r0,a
      002768 18               [12] 1787 	dec	r0
      002769 D0 E0            [24] 1788 	pop	acc
      00276B F6               [12] 1789 	mov	@r0,a
      00276C A8 10            [24] 1790 	mov	r0,_bp
      00276E 08               [12] 1791 	inc	r0
      00276F 08               [12] 1792 	inc	r0
      002770 E6               [12] 1793 	mov	a,@r0
      002771 24 00            [12] 1794 	add	a,#_u
      002773 F5 82            [12] 1795 	mov	dpl,a
      002775 08               [12] 1796 	inc	r0
      002776 E6               [12] 1797 	mov	a,@r0
      002777 34 88            [12] 1798 	addc	a,#(_u >> 8)
      002779 F5 83            [12] 1799 	mov	dph,a
      00277B E0               [24] 1800 	movx	a,@dptr
      00277C FB               [12] 1801 	mov	r3,a
      00277D A8 10            [24] 1802 	mov	r0,_bp
      00277F 08               [12] 1803 	inc	r0
      002780 C3               [12] 1804 	clr	c
      002781 E4               [12] 1805 	clr	a
      002782 9B               [12] 1806 	subb	a,r3
      002783 F6               [12] 1807 	mov	@r0,a
                                   1808 ;	life.c:241: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      002784 78 36            [12] 1809 	mov	r0,#_y
      002786 74 FF            [12] 1810 	mov	a,#0xff
      002788 26               [12] 1811 	add	a,@r0
      002789 FA               [12] 1812 	mov	r2,a
      00278A 74 FF            [12] 1813 	mov	a,#0xff
      00278C 08               [12] 1814 	inc	r0
      00278D 36               [12] 1815 	addc	a,@r0
      00278E FB               [12] 1816 	mov	r3,a
      00278F 74 C0            [12] 1817 	mov	a,#0xc0
      002791 2A               [12] 1818 	add	a,r2
      002792 FA               [12] 1819 	mov	r2,a
      002793 E4               [12] 1820 	clr	a
      002794 3B               [12] 1821 	addc	a,r3
      002795 FB               [12] 1822 	mov	r3,a
      002796 74 C0            [12] 1823 	mov	a,#0xc0
      002798 C0 E0            [24] 1824 	push	acc
      00279A E4               [12] 1825 	clr	a
      00279B C0 E0            [24] 1826 	push	acc
      00279D 8A 82            [24] 1827 	mov	dpl,r2
      00279F 8B 83            [24] 1828 	mov	dph,r3
      0027A1 12 2F 25         [24] 1829 	lcall	__modsint
      0027A4 AA 82            [24] 1830 	mov	r2,dpl
      0027A6 AB 83            [24] 1831 	mov	r3,dph
      0027A8 15 81            [12] 1832 	dec	sp
      0027AA 15 81            [12] 1833 	dec	sp
      0027AC C0 02            [24] 1834 	push	ar2
      0027AE C0 03            [24] 1835 	push	ar3
      0027B0 90 00 30         [24] 1836 	mov	dptr,#0x0030
      0027B3 12 2D 47         [24] 1837 	lcall	__mulint
      0027B6 AA 82            [24] 1838 	mov	r2,dpl
      0027B8 AB 83            [24] 1839 	mov	r3,dph
      0027BA 15 81            [12] 1840 	dec	sp
      0027BC 15 81            [12] 1841 	dec	sp
      0027BE 78 34            [12] 1842 	mov	r0,#_x
      0027C0 74 FF            [12] 1843 	mov	a,#0xff
      0027C2 26               [12] 1844 	add	a,@r0
      0027C3 FC               [12] 1845 	mov	r4,a
      0027C4 74 FF            [12] 1846 	mov	a,#0xff
      0027C6 08               [12] 1847 	inc	r0
      0027C7 36               [12] 1848 	addc	a,@r0
      0027C8 FD               [12] 1849 	mov	r5,a
      0027C9 74 30            [12] 1850 	mov	a,#0x30
      0027CB 2C               [12] 1851 	add	a,r4
      0027CC FC               [12] 1852 	mov	r4,a
      0027CD E4               [12] 1853 	clr	a
      0027CE 3D               [12] 1854 	addc	a,r5
      0027CF FD               [12] 1855 	mov	r5,a
      0027D0 C0 03            [24] 1856 	push	ar3
      0027D2 C0 02            [24] 1857 	push	ar2
      0027D4 74 30            [12] 1858 	mov	a,#0x30
      0027D6 C0 E0            [24] 1859 	push	acc
      0027D8 E4               [12] 1860 	clr	a
      0027D9 C0 E0            [24] 1861 	push	acc
      0027DB 8C 82            [24] 1862 	mov	dpl,r4
      0027DD 8D 83            [24] 1863 	mov	dph,r5
      0027DF 12 2F 25         [24] 1864 	lcall	__modsint
      0027E2 AC 82            [24] 1865 	mov	r4,dpl
      0027E4 AD 83            [24] 1866 	mov	r5,dph
      0027E6 15 81            [12] 1867 	dec	sp
      0027E8 15 81            [12] 1868 	dec	sp
      0027EA D0 02            [24] 1869 	pop	ar2
      0027EC D0 03            [24] 1870 	pop	ar3
      0027EE EC               [12] 1871 	mov	a,r4
      0027EF 2A               [12] 1872 	add	a,r2
      0027F0 FE               [12] 1873 	mov	r6,a
      0027F1 ED               [12] 1874 	mov	a,r5
      0027F2 3B               [12] 1875 	addc	a,r3
      0027F3 FF               [12] 1876 	mov	r7,a
      0027F4 EE               [12] 1877 	mov	a,r6
      0027F5 24 00            [12] 1878 	add	a,#_u
      0027F7 F5 82            [12] 1879 	mov	dpl,a
      0027F9 EF               [12] 1880 	mov	a,r7
      0027FA 34 88            [12] 1881 	addc	a,#(_u >> 8)
      0027FC F5 83            [12] 1882 	mov	dph,a
      0027FE E0               [24] 1883 	movx	a,@dptr
      0027FF FF               [12] 1884 	mov	r7,a
      002800 A8 10            [24] 1885 	mov	r0,_bp
      002802 08               [12] 1886 	inc	r0
      002803 EF               [12] 1887 	mov	a,r7
      002804 26               [12] 1888 	add	a,@r0
      002805 F6               [12] 1889 	mov	@r0,a
                                   1890 ;	life.c:243: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      002806 78 34            [12] 1891 	mov	r0,#_x
      002808 E5 10            [12] 1892 	mov	a,_bp
      00280A 24 06            [12] 1893 	add	a,#0x06
      00280C F9               [12] 1894 	mov	r1,a
      00280D E6               [12] 1895 	mov	a,@r0
      00280E F7               [12] 1896 	mov	@r1,a
      00280F 08               [12] 1897 	inc	r0
      002810 09               [12] 1898 	inc	r1
      002811 E6               [12] 1899 	mov	a,@r0
      002812 F7               [12] 1900 	mov	@r1,a
      002813 E5 10            [12] 1901 	mov	a,_bp
      002815 24 06            [12] 1902 	add	a,#0x06
      002817 F8               [12] 1903 	mov	r0,a
      002818 74 30            [12] 1904 	mov	a,#0x30
      00281A 26               [12] 1905 	add	a,@r0
      00281B FE               [12] 1906 	mov	r6,a
      00281C E4               [12] 1907 	clr	a
      00281D 08               [12] 1908 	inc	r0
      00281E 36               [12] 1909 	addc	a,@r0
      00281F FF               [12] 1910 	mov	r7,a
      002820 C0 05            [24] 1911 	push	ar5
      002822 C0 04            [24] 1912 	push	ar4
      002824 C0 03            [24] 1913 	push	ar3
      002826 C0 02            [24] 1914 	push	ar2
      002828 74 30            [12] 1915 	mov	a,#0x30
      00282A C0 E0            [24] 1916 	push	acc
      00282C E4               [12] 1917 	clr	a
      00282D C0 E0            [24] 1918 	push	acc
      00282F 8E 82            [24] 1919 	mov	dpl,r6
      002831 8F 83            [24] 1920 	mov	dph,r7
      002833 12 2F 25         [24] 1921 	lcall	__modsint
      002836 C8               [12] 1922 	xch	a,r0
      002837 E5 10            [12] 1923 	mov	a,_bp
      002839 24 08            [12] 1924 	add	a,#0x08
      00283B C8               [12] 1925 	xch	a,r0
      00283C A6 82            [24] 1926 	mov	@r0,dpl
      00283E 08               [12] 1927 	inc	r0
      00283F A6 83            [24] 1928 	mov	@r0,dph
      002841 15 81            [12] 1929 	dec	sp
      002843 15 81            [12] 1930 	dec	sp
      002845 D0 02            [24] 1931 	pop	ar2
      002847 D0 03            [24] 1932 	pop	ar3
      002849 E5 10            [12] 1933 	mov	a,_bp
      00284B 24 08            [12] 1934 	add	a,#0x08
      00284D F8               [12] 1935 	mov	r0,a
      00284E E6               [12] 1936 	mov	a,@r0
      00284F 2A               [12] 1937 	add	a,r2
      002850 FE               [12] 1938 	mov	r6,a
      002851 08               [12] 1939 	inc	r0
      002852 E6               [12] 1940 	mov	a,@r0
      002853 3B               [12] 1941 	addc	a,r3
      002854 FF               [12] 1942 	mov	r7,a
      002855 EE               [12] 1943 	mov	a,r6
      002856 24 00            [12] 1944 	add	a,#_u
      002858 F5 82            [12] 1945 	mov	dpl,a
      00285A EF               [12] 1946 	mov	a,r7
      00285B 34 88            [12] 1947 	addc	a,#(_u >> 8)
      00285D F5 83            [12] 1948 	mov	dph,a
      00285F E0               [24] 1949 	movx	a,@dptr
      002860 FF               [12] 1950 	mov	r7,a
      002861 A8 10            [24] 1951 	mov	r0,_bp
      002863 08               [12] 1952 	inc	r0
      002864 EF               [12] 1953 	mov	a,r7
      002865 26               [12] 1954 	add	a,@r0
      002866 F6               [12] 1955 	mov	@r0,a
                                   1956 ;	life.c:245: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      002867 E5 10            [12] 1957 	mov	a,_bp
      002869 24 06            [12] 1958 	add	a,#0x06
      00286B F8               [12] 1959 	mov	r0,a
      00286C 74 31            [12] 1960 	mov	a,#0x31
      00286E 26               [12] 1961 	add	a,@r0
      00286F FE               [12] 1962 	mov	r6,a
      002870 E4               [12] 1963 	clr	a
      002871 08               [12] 1964 	inc	r0
      002872 36               [12] 1965 	addc	a,@r0
      002873 FF               [12] 1966 	mov	r7,a
      002874 C0 03            [24] 1967 	push	ar3
      002876 C0 02            [24] 1968 	push	ar2
      002878 74 30            [12] 1969 	mov	a,#0x30
      00287A C0 E0            [24] 1970 	push	acc
      00287C E4               [12] 1971 	clr	a
      00287D C0 E0            [24] 1972 	push	acc
      00287F 8E 82            [24] 1973 	mov	dpl,r6
      002881 8F 83            [24] 1974 	mov	dph,r7
      002883 12 2F 25         [24] 1975 	lcall	__modsint
      002886 AE 82            [24] 1976 	mov	r6,dpl
      002888 AF 83            [24] 1977 	mov	r7,dph
      00288A 15 81            [12] 1978 	dec	sp
      00288C 15 81            [12] 1979 	dec	sp
      00288E D0 02            [24] 1980 	pop	ar2
      002890 D0 03            [24] 1981 	pop	ar3
      002892 D0 04            [24] 1982 	pop	ar4
      002894 D0 05            [24] 1983 	pop	ar5
      002896 EE               [12] 1984 	mov	a,r6
      002897 2A               [12] 1985 	add	a,r2
      002898 FA               [12] 1986 	mov	r2,a
      002899 EF               [12] 1987 	mov	a,r7
      00289A 3B               [12] 1988 	addc	a,r3
      00289B FB               [12] 1989 	mov	r3,a
      00289C EA               [12] 1990 	mov	a,r2
      00289D 24 00            [12] 1991 	add	a,#_u
      00289F F5 82            [12] 1992 	mov	dpl,a
      0028A1 EB               [12] 1993 	mov	a,r3
      0028A2 34 88            [12] 1994 	addc	a,#(_u >> 8)
      0028A4 F5 83            [12] 1995 	mov	dph,a
      0028A6 E0               [24] 1996 	movx	a,@dptr
      0028A7 FB               [12] 1997 	mov	r3,a
      0028A8 A8 10            [24] 1998 	mov	r0,_bp
      0028AA 08               [12] 1999 	inc	r0
      0028AB EB               [12] 2000 	mov	a,r3
      0028AC 26               [12] 2001 	add	a,@r0
      0028AD F6               [12] 2002 	mov	@r0,a
                                   2003 ;	life.c:247: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      0028AE 78 36            [12] 2004 	mov	r0,#_y
      0028B0 E5 10            [12] 2005 	mov	a,_bp
      0028B2 24 0A            [12] 2006 	add	a,#0x0a
      0028B4 F9               [12] 2007 	mov	r1,a
      0028B5 E6               [12] 2008 	mov	a,@r0
      0028B6 F7               [12] 2009 	mov	@r1,a
      0028B7 08               [12] 2010 	inc	r0
      0028B8 09               [12] 2011 	inc	r1
      0028B9 E6               [12] 2012 	mov	a,@r0
      0028BA F7               [12] 2013 	mov	@r1,a
      0028BB E5 10            [12] 2014 	mov	a,_bp
      0028BD 24 0A            [12] 2015 	add	a,#0x0a
      0028BF F8               [12] 2016 	mov	r0,a
      0028C0 74 C0            [12] 2017 	mov	a,#0xc0
      0028C2 26               [12] 2018 	add	a,@r0
      0028C3 FA               [12] 2019 	mov	r2,a
      0028C4 E4               [12] 2020 	clr	a
      0028C5 08               [12] 2021 	inc	r0
      0028C6 36               [12] 2022 	addc	a,@r0
      0028C7 FB               [12] 2023 	mov	r3,a
      0028C8 C0 07            [24] 2024 	push	ar7
      0028CA C0 06            [24] 2025 	push	ar6
      0028CC C0 05            [24] 2026 	push	ar5
      0028CE C0 04            [24] 2027 	push	ar4
      0028D0 74 C0            [12] 2028 	mov	a,#0xc0
      0028D2 C0 E0            [24] 2029 	push	acc
      0028D4 E4               [12] 2030 	clr	a
      0028D5 C0 E0            [24] 2031 	push	acc
      0028D7 8A 82            [24] 2032 	mov	dpl,r2
      0028D9 8B 83            [24] 2033 	mov	dph,r3
      0028DB 12 2F 25         [24] 2034 	lcall	__modsint
      0028DE AA 82            [24] 2035 	mov	r2,dpl
      0028E0 AB 83            [24] 2036 	mov	r3,dph
      0028E2 15 81            [12] 2037 	dec	sp
      0028E4 15 81            [12] 2038 	dec	sp
      0028E6 C0 02            [24] 2039 	push	ar2
      0028E8 C0 03            [24] 2040 	push	ar3
      0028EA 90 00 30         [24] 2041 	mov	dptr,#0x0030
      0028ED 12 2D 47         [24] 2042 	lcall	__mulint
      0028F0 C8               [12] 2043 	xch	a,r0
      0028F1 E5 10            [12] 2044 	mov	a,_bp
      0028F3 24 0C            [12] 2045 	add	a,#0x0c
      0028F5 C8               [12] 2046 	xch	a,r0
      0028F6 A6 82            [24] 2047 	mov	@r0,dpl
      0028F8 08               [12] 2048 	inc	r0
      0028F9 A6 83            [24] 2049 	mov	@r0,dph
      0028FB 15 81            [12] 2050 	dec	sp
      0028FD 15 81            [12] 2051 	dec	sp
      0028FF D0 04            [24] 2052 	pop	ar4
      002901 D0 05            [24] 2053 	pop	ar5
      002903 D0 06            [24] 2054 	pop	ar6
      002905 D0 07            [24] 2055 	pop	ar7
      002907 E5 10            [12] 2056 	mov	a,_bp
      002909 24 0C            [12] 2057 	add	a,#0x0c
      00290B F8               [12] 2058 	mov	r0,a
      00290C EC               [12] 2059 	mov	a,r4
      00290D 26               [12] 2060 	add	a,@r0
      00290E FA               [12] 2061 	mov	r2,a
      00290F ED               [12] 2062 	mov	a,r5
      002910 08               [12] 2063 	inc	r0
      002911 36               [12] 2064 	addc	a,@r0
      002912 FB               [12] 2065 	mov	r3,a
      002913 EA               [12] 2066 	mov	a,r2
      002914 24 00            [12] 2067 	add	a,#_u
      002916 F5 82            [12] 2068 	mov	dpl,a
      002918 EB               [12] 2069 	mov	a,r3
      002919 34 88            [12] 2070 	addc	a,#(_u >> 8)
      00291B F5 83            [12] 2071 	mov	dph,a
      00291D E0               [24] 2072 	movx	a,@dptr
      00291E FB               [12] 2073 	mov	r3,a
      00291F A8 10            [24] 2074 	mov	r0,_bp
      002921 08               [12] 2075 	inc	r0
      002922 EB               [12] 2076 	mov	a,r3
      002923 26               [12] 2077 	add	a,@r0
      002924 F6               [12] 2078 	mov	@r0,a
                                   2079 ;	life.c:249: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      002925 E5 10            [12] 2080 	mov	a,_bp
      002927 24 0C            [12] 2081 	add	a,#0x0c
      002929 F8               [12] 2082 	mov	r0,a
      00292A E5 10            [12] 2083 	mov	a,_bp
      00292C 24 08            [12] 2084 	add	a,#0x08
      00292E F9               [12] 2085 	mov	r1,a
      00292F E7               [12] 2086 	mov	a,@r1
      002930 26               [12] 2087 	add	a,@r0
      002931 FA               [12] 2088 	mov	r2,a
      002932 09               [12] 2089 	inc	r1
      002933 E7               [12] 2090 	mov	a,@r1
      002934 08               [12] 2091 	inc	r0
      002935 36               [12] 2092 	addc	a,@r0
      002936 FB               [12] 2093 	mov	r3,a
      002937 EA               [12] 2094 	mov	a,r2
      002938 24 00            [12] 2095 	add	a,#_u
      00293A F5 82            [12] 2096 	mov	dpl,a
      00293C EB               [12] 2097 	mov	a,r3
      00293D 34 88            [12] 2098 	addc	a,#(_u >> 8)
      00293F F5 83            [12] 2099 	mov	dph,a
      002941 E0               [24] 2100 	movx	a,@dptr
      002942 FB               [12] 2101 	mov	r3,a
      002943 A8 10            [24] 2102 	mov	r0,_bp
      002945 08               [12] 2103 	inc	r0
      002946 EB               [12] 2104 	mov	a,r3
      002947 26               [12] 2105 	add	a,@r0
      002948 F6               [12] 2106 	mov	@r0,a
                                   2107 ;	life.c:251: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      002949 E5 10            [12] 2108 	mov	a,_bp
      00294B 24 0C            [12] 2109 	add	a,#0x0c
      00294D F8               [12] 2110 	mov	r0,a
      00294E EE               [12] 2111 	mov	a,r6
      00294F 26               [12] 2112 	add	a,@r0
      002950 FA               [12] 2113 	mov	r2,a
      002951 EF               [12] 2114 	mov	a,r7
      002952 08               [12] 2115 	inc	r0
      002953 36               [12] 2116 	addc	a,@r0
      002954 FB               [12] 2117 	mov	r3,a
      002955 EA               [12] 2118 	mov	a,r2
      002956 24 00            [12] 2119 	add	a,#_u
      002958 F5 82            [12] 2120 	mov	dpl,a
      00295A EB               [12] 2121 	mov	a,r3
      00295B 34 88            [12] 2122 	addc	a,#(_u >> 8)
      00295D F5 83            [12] 2123 	mov	dph,a
      00295F E0               [24] 2124 	movx	a,@dptr
      002960 FB               [12] 2125 	mov	r3,a
      002961 A8 10            [24] 2126 	mov	r0,_bp
      002963 08               [12] 2127 	inc	r0
      002964 E5 10            [12] 2128 	mov	a,_bp
      002966 24 0C            [12] 2129 	add	a,#0x0c
      002968 F9               [12] 2130 	mov	r1,a
      002969 EB               [12] 2131 	mov	a,r3
      00296A 26               [12] 2132 	add	a,@r0
      00296B F7               [12] 2133 	mov	@r1,a
                                   2134 ;	life.c:253: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      00296C E5 10            [12] 2135 	mov	a,_bp
      00296E 24 0A            [12] 2136 	add	a,#0x0a
      002970 F8               [12] 2137 	mov	r0,a
      002971 74 C1            [12] 2138 	mov	a,#0xc1
      002973 26               [12] 2139 	add	a,@r0
      002974 FA               [12] 2140 	mov	r2,a
      002975 E4               [12] 2141 	clr	a
      002976 08               [12] 2142 	inc	r0
      002977 36               [12] 2143 	addc	a,@r0
      002978 FB               [12] 2144 	mov	r3,a
      002979 C0 07            [24] 2145 	push	ar7
      00297B C0 06            [24] 2146 	push	ar6
      00297D C0 05            [24] 2147 	push	ar5
      00297F C0 04            [24] 2148 	push	ar4
      002981 74 C0            [12] 2149 	mov	a,#0xc0
      002983 C0 E0            [24] 2150 	push	acc
      002985 E4               [12] 2151 	clr	a
      002986 C0 E0            [24] 2152 	push	acc
      002988 8A 82            [24] 2153 	mov	dpl,r2
      00298A 8B 83            [24] 2154 	mov	dph,r3
      00298C 12 2F 25         [24] 2155 	lcall	__modsint
      00298F AA 82            [24] 2156 	mov	r2,dpl
      002991 AB 83            [24] 2157 	mov	r3,dph
      002993 15 81            [12] 2158 	dec	sp
      002995 15 81            [12] 2159 	dec	sp
      002997 C0 02            [24] 2160 	push	ar2
      002999 C0 03            [24] 2161 	push	ar3
      00299B 90 00 30         [24] 2162 	mov	dptr,#0x0030
      00299E 12 2D 47         [24] 2163 	lcall	__mulint
      0029A1 AA 82            [24] 2164 	mov	r2,dpl
      0029A3 AB 83            [24] 2165 	mov	r3,dph
      0029A5 15 81            [12] 2166 	dec	sp
      0029A7 15 81            [12] 2167 	dec	sp
      0029A9 D0 04            [24] 2168 	pop	ar4
      0029AB D0 05            [24] 2169 	pop	ar5
      0029AD D0 06            [24] 2170 	pop	ar6
      0029AF D0 07            [24] 2171 	pop	ar7
      0029B1 EC               [12] 2172 	mov	a,r4
      0029B2 2A               [12] 2173 	add	a,r2
      0029B3 FC               [12] 2174 	mov	r4,a
      0029B4 ED               [12] 2175 	mov	a,r5
      0029B5 3B               [12] 2176 	addc	a,r3
      0029B6 FD               [12] 2177 	mov	r5,a
      0029B7 EC               [12] 2178 	mov	a,r4
      0029B8 24 00            [12] 2179 	add	a,#_u
      0029BA F5 82            [12] 2180 	mov	dpl,a
      0029BC ED               [12] 2181 	mov	a,r5
      0029BD 34 88            [12] 2182 	addc	a,#(_u >> 8)
      0029BF F5 83            [12] 2183 	mov	dph,a
      0029C1 E0               [24] 2184 	movx	a,@dptr
      0029C2 FD               [12] 2185 	mov	r5,a
      0029C3 E5 10            [12] 2186 	mov	a,_bp
      0029C5 24 0C            [12] 2187 	add	a,#0x0c
      0029C7 F8               [12] 2188 	mov	r0,a
      0029C8 E5 10            [12] 2189 	mov	a,_bp
      0029CA 24 0C            [12] 2190 	add	a,#0x0c
      0029CC F9               [12] 2191 	mov	r1,a
      0029CD ED               [12] 2192 	mov	a,r5
      0029CE 26               [12] 2193 	add	a,@r0
      0029CF F7               [12] 2194 	mov	@r1,a
                                   2195 ;	life.c:255: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      0029D0 E5 10            [12] 2196 	mov	a,_bp
      0029D2 24 08            [12] 2197 	add	a,#0x08
      0029D4 F8               [12] 2198 	mov	r0,a
      0029D5 E6               [12] 2199 	mov	a,@r0
      0029D6 2A               [12] 2200 	add	a,r2
      0029D7 FC               [12] 2201 	mov	r4,a
      0029D8 08               [12] 2202 	inc	r0
      0029D9 E6               [12] 2203 	mov	a,@r0
      0029DA 3B               [12] 2204 	addc	a,r3
      0029DB FD               [12] 2205 	mov	r5,a
      0029DC EC               [12] 2206 	mov	a,r4
      0029DD 24 00            [12] 2207 	add	a,#_u
      0029DF F5 82            [12] 2208 	mov	dpl,a
      0029E1 ED               [12] 2209 	mov	a,r5
      0029E2 34 88            [12] 2210 	addc	a,#(_u >> 8)
      0029E4 F5 83            [12] 2211 	mov	dph,a
      0029E6 E0               [24] 2212 	movx	a,@dptr
      0029E7 FD               [12] 2213 	mov	r5,a
      0029E8 E5 10            [12] 2214 	mov	a,_bp
      0029EA 24 0C            [12] 2215 	add	a,#0x0c
      0029EC F8               [12] 2216 	mov	r0,a
      0029ED ED               [12] 2217 	mov	a,r5
      0029EE 26               [12] 2218 	add	a,@r0
      0029EF FD               [12] 2219 	mov	r5,a
                                   2220 ;	life.c:256: y1 = 1; x1 = 1;
      0029F0 78 41            [12] 2221 	mov	r0,#_y1
      0029F2 76 01            [12] 2222 	mov	@r0,#0x01
      0029F4 08               [12] 2223 	inc	r0
      0029F5 76 00            [12] 2224 	mov	@r0,#0x00
      0029F7 78 3F            [12] 2225 	mov	r0,#_x1
      0029F9 76 01            [12] 2226 	mov	@r0,#0x01
      0029FB 08               [12] 2227 	inc	r0
      0029FC 76 00            [12] 2228 	mov	@r0,#0x00
                                   2229 ;	life.c:257: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      0029FE EE               [12] 2230 	mov	a,r6
      0029FF 2A               [12] 2231 	add	a,r2
      002A00 FE               [12] 2232 	mov	r6,a
      002A01 EF               [12] 2233 	mov	a,r7
      002A02 3B               [12] 2234 	addc	a,r3
      002A03 FF               [12] 2235 	mov	r7,a
      002A04 EE               [12] 2236 	mov	a,r6
      002A05 24 00            [12] 2237 	add	a,#_u
      002A07 F5 82            [12] 2238 	mov	dpl,a
      002A09 EF               [12] 2239 	mov	a,r7
      002A0A 34 88            [12] 2240 	addc	a,#(_u >> 8)
      002A0C F5 83            [12] 2241 	mov	dph,a
      002A0E E0               [24] 2242 	movx	a,@dptr
      002A0F 2D               [12] 2243 	add	a,r5
      002A10 FF               [12] 2244 	mov	r7,a
      002A11 78 3C            [12] 2245 	mov	r0,#_n
      002A13 A6 07            [24] 2246 	mov	@r0,ar7
                                   2247 ;	life.c:259: nu[A2D(W, y, x)] = (n == 3) || ((n == 2) && u[A2D(W, y, x)]);
      002A15 A8 10            [24] 2248 	mov	r0,_bp
      002A17 08               [12] 2249 	inc	r0
      002A18 08               [12] 2250 	inc	r0
      002A19 E6               [12] 2251 	mov	a,@r0
      002A1A 24 00            [12] 2252 	add	a,#_nu
      002A1C FD               [12] 2253 	mov	r5,a
      002A1D 08               [12] 2254 	inc	r0
      002A1E E6               [12] 2255 	mov	a,@r0
      002A1F 34 AC            [12] 2256 	addc	a,#(_nu >> 8)
      002A21 FE               [12] 2257 	mov	r6,a
      002A22 BF 03 02         [24] 2258 	cjne	r7,#0x03,00597$
      002A25 80 28            [24] 2259 	sjmp	00266$
      002A27                       2260 00597$:
      002A27 BF 02 21         [24] 2261 	cjne	r7,#0x02,00265$
      002A2A E5 10            [12] 2262 	mov	a,_bp
      002A2C 24 04            [12] 2263 	add	a,#0x04
      002A2E F8               [12] 2264 	mov	r0,a
      002A2F E5 10            [12] 2265 	mov	a,_bp
      002A31 24 06            [12] 2266 	add	a,#0x06
      002A33 F9               [12] 2267 	mov	r1,a
      002A34 E7               [12] 2268 	mov	a,@r1
      002A35 26               [12] 2269 	add	a,@r0
      002A36 FC               [12] 2270 	mov	r4,a
      002A37 09               [12] 2271 	inc	r1
      002A38 E7               [12] 2272 	mov	a,@r1
      002A39 08               [12] 2273 	inc	r0
      002A3A 36               [12] 2274 	addc	a,@r0
      002A3B FF               [12] 2275 	mov	r7,a
      002A3C EC               [12] 2276 	mov	a,r4
      002A3D 24 00            [12] 2277 	add	a,#_u
      002A3F FC               [12] 2278 	mov	r4,a
      002A40 EF               [12] 2279 	mov	a,r7
      002A41 34 88            [12] 2280 	addc	a,#(_u >> 8)
      002A43 FF               [12] 2281 	mov	r7,a
      002A44 8C 82            [24] 2282 	mov	dpl,r4
      002A46 8F 83            [24] 2283 	mov	dph,r7
      002A48 E0               [24] 2284 	movx	a,@dptr
      002A49 70 04            [24] 2285 	jnz	00266$
      002A4B                       2286 00265$:
                                   2287 ;	assignBit
      002A4B C2 00            [12] 2288 	clr	b0
      002A4D 80 02            [24] 2289 	sjmp	00267$
      002A4F                       2290 00266$:
                                   2291 ;	assignBit
      002A4F D2 00            [12] 2292 	setb	b0
      002A51                       2293 00267$:
      002A51 A2 00            [12] 2294 	mov	c,b0
      002A53 E4               [12] 2295 	clr	a
      002A54 33               [12] 2296 	rlc	a
      002A55 8D 82            [24] 2297 	mov	dpl,r5
      002A57 8E 83            [24] 2298 	mov	dph,r6
      002A59 F0               [24] 2299 	movx	@dptr,a
                                   2300 ;	life.c:260: cycle2 |= pu[A2D(W, y, x)] ^ nu[A2D(W, y, x)];
      002A5A 78 36            [12] 2301 	mov	r0,#_y
      002A5C E6               [12] 2302 	mov	a,@r0
      002A5D C0 E0            [24] 2303 	push	acc
      002A5F 08               [12] 2304 	inc	r0
      002A60 E6               [12] 2305 	mov	a,@r0
      002A61 C0 E0            [24] 2306 	push	acc
      002A63 90 00 30         [24] 2307 	mov	dptr,#0x0030
      002A66 12 2D 47         [24] 2308 	lcall	__mulint
      002A69 AE 82            [24] 2309 	mov	r6,dpl
      002A6B AF 83            [24] 2310 	mov	r7,dph
      002A6D 15 81            [12] 2311 	dec	sp
      002A6F 15 81            [12] 2312 	dec	sp
      002A71 78 34            [12] 2313 	mov	r0,#_x
      002A73 E6               [12] 2314 	mov	a,@r0
      002A74 2E               [12] 2315 	add	a,r6
      002A75 FE               [12] 2316 	mov	r6,a
      002A76 08               [12] 2317 	inc	r0
      002A77 E6               [12] 2318 	mov	a,@r0
      002A78 3F               [12] 2319 	addc	a,r7
      002A79 FF               [12] 2320 	mov	r7,a
      002A7A EE               [12] 2321 	mov	a,r6
      002A7B 24 00            [12] 2322 	add	a,#_pu
      002A7D F5 82            [12] 2323 	mov	dpl,a
      002A7F EF               [12] 2324 	mov	a,r7
      002A80 34 64            [12] 2325 	addc	a,#(_pu >> 8)
      002A82 F5 83            [12] 2326 	mov	dph,a
      002A84 E0               [24] 2327 	movx	a,@dptr
      002A85 FD               [12] 2328 	mov	r5,a
      002A86 EE               [12] 2329 	mov	a,r6
      002A87 24 00            [12] 2330 	add	a,#_nu
      002A89 F5 82            [12] 2331 	mov	dpl,a
      002A8B EF               [12] 2332 	mov	a,r7
      002A8C 34 AC            [12] 2333 	addc	a,#(_nu >> 8)
      002A8E F5 83            [12] 2334 	mov	dph,a
      002A90 E0               [24] 2335 	movx	a,@dptr
      002A91 FC               [12] 2336 	mov	r4,a
      002A92 6D               [12] 2337 	xrl	a,r5
      002A93 78 3E            [12] 2338 	mov	r0,#_cycle2
      002A95 46               [12] 2339 	orl	a,@r0
      002A96 F6               [12] 2340 	mov	@r0,a
                                   2341 ;	life.c:261: fixed |= u[A2D(W, y, x)] ^ nu[A2D(W, y, x)];
      002A97 EE               [12] 2342 	mov	a,r6
      002A98 24 00            [12] 2343 	add	a,#_u
      002A9A F5 82            [12] 2344 	mov	dpl,a
      002A9C EF               [12] 2345 	mov	a,r7
      002A9D 34 88            [12] 2346 	addc	a,#(_u >> 8)
      002A9F F5 83            [12] 2347 	mov	dph,a
      002AA1 E0               [24] 2348 	movx	a,@dptr
      002AA2 FF               [12] 2349 	mov	r7,a
      002AA3 EC               [12] 2350 	mov	a,r4
      002AA4 6F               [12] 2351 	xrl	a,r7
      002AA5 78 3D            [12] 2352 	mov	r0,#_fixed
      002AA7 46               [12] 2353 	orl	a,@r0
      002AA8 F6               [12] 2354 	mov	@r0,a
                                   2355 ;	life.c:237: for (x = 0; x < W; x++) {
      002AA9 78 34            [12] 2356 	mov	r0,#_x
      002AAB 06               [12] 2357 	inc	@r0
      002AAC B6 00 02         [24] 2358 	cjne	@r0,#0x00,00601$
      002AAF 08               [12] 2359 	inc	r0
      002AB0 06               [12] 2360 	inc	@r0
      002AB1                       2361 00601$:
      002AB1 78 34            [12] 2362 	mov	r0,#_x
      002AB3 C3               [12] 2363 	clr	c
      002AB4 E6               [12] 2364 	mov	a,@r0
      002AB5 94 30            [12] 2365 	subb	a,#0x30
      002AB7 08               [12] 2366 	inc	r0
      002AB8 E6               [12] 2367 	mov	a,@r0
      002AB9 64 80            [12] 2368 	xrl	a,#0x80
      002ABB 94 80            [12] 2369 	subb	a,#0x80
      002ABD 50 03            [24] 2370 	jnc	00602$
      002ABF 02 27 31         [24] 2371 	ljmp	00238$
      002AC2                       2372 00602$:
                                   2373 ;	life.c:234: for (y = 0; y < H; y++) {
      002AC2 78 36            [12] 2374 	mov	r0,#_y
      002AC4 06               [12] 2375 	inc	@r0
      002AC5 B6 00 02         [24] 2376 	cjne	@r0,#0x00,00603$
      002AC8 08               [12] 2377 	inc	r0
      002AC9 06               [12] 2378 	inc	@r0
      002ACA                       2379 00603$:
      002ACA 78 36            [12] 2380 	mov	r0,#_y
      002ACC C3               [12] 2381 	clr	c
      002ACD E6               [12] 2382 	mov	a,@r0
      002ACE 94 C0            [12] 2383 	subb	a,#0xc0
      002AD0 08               [12] 2384 	inc	r0
      002AD1 E6               [12] 2385 	mov	a,@r0
      002AD2 64 80            [12] 2386 	xrl	a,#0x80
      002AD4 94 80            [12] 2387 	subb	a,#0x80
      002AD6 50 03            [24] 2388 	jnc	00604$
      002AD8 02 27 15         [24] 2389 	ljmp	00240$
      002ADB                       2390 00604$:
                                   2391 ;	life.c:265: OE76 = OE76_0;
      002ADB 78 33            [12] 2392 	mov	r0,#_OE76
      002ADD 76 3F            [12] 2393 	mov	@r0,#0x3f
                                   2394 ;	life.c:266: flashOE();
      002ADF 12 20 FD         [24] 2395 	lcall	_flashOE
                                   2396 ;	life.c:268: cycle2 = !cycle2;
      002AE2 78 3E            [12] 2397 	mov	r0,#_cycle2
      002AE4 E6               [12] 2398 	mov	a,@r0
      002AE5 B4 01 00         [24] 2399 	cjne	a,#0x01,00605$
      002AE8                       2400 00605$:
      002AE8 92 00            [24] 2401 	mov	b0,c
      002AEA 78 3E            [12] 2402 	mov	r0,#_cycle2
      002AEC E4               [12] 2403 	clr	a
      002AED 33               [12] 2404 	rlc	a
      002AEE F6               [12] 2405 	mov	@r0,a
                                   2406 ;	life.c:269: fixed = !fixed;
      002AEF 78 3D            [12] 2407 	mov	r0,#_fixed
      002AF1 E6               [12] 2408 	mov	a,@r0
      002AF2 B4 01 00         [24] 2409 	cjne	a,#0x01,00606$
      002AF5                       2410 00606$:
      002AF5 92 00            [24] 2411 	mov	b0,c
      002AF7 78 3D            [12] 2412 	mov	r0,#_fixed
      002AF9 E4               [12] 2413 	clr	a
      002AFA 33               [12] 2414 	rlc	a
      002AFB F6               [12] 2415 	mov	@r0,a
                                   2416 ;	life.c:271: memcpy(pu, u, sizeof (u));
      002AFC E4               [12] 2417 	clr	a
      002AFD C0 E0            [24] 2418 	push	acc
      002AFF 74 24            [12] 2419 	mov	a,#0x24
      002B01 C0 E0            [24] 2420 	push	acc
      002B03 74 00            [12] 2421 	mov	a,#_u
      002B05 C0 E0            [24] 2422 	push	acc
      002B07 74 88            [12] 2423 	mov	a,#(_u >> 8)
      002B09 C0 E0            [24] 2424 	push	acc
      002B0B E4               [12] 2425 	clr	a
      002B0C C0 E0            [24] 2426 	push	acc
      002B0E 90 64 00         [24] 2427 	mov	dptr,#_pu
      002B11 75 F0 00         [24] 2428 	mov	b,#0x00
      002B14 12 2D E5         [24] 2429 	lcall	___memcpy
      002B17 E5 81            [12] 2430 	mov	a,sp
      002B19 24 FB            [12] 2431 	add	a,#0xfb
      002B1B F5 81            [12] 2432 	mov	sp,a
                                   2433 ;	life.c:272: memcpy(u, nu, sizeof (nu));
      002B1D E4               [12] 2434 	clr	a
      002B1E C0 E0            [24] 2435 	push	acc
      002B20 74 24            [12] 2436 	mov	a,#0x24
      002B22 C0 E0            [24] 2437 	push	acc
      002B24 74 00            [12] 2438 	mov	a,#_nu
      002B26 C0 E0            [24] 2439 	push	acc
      002B28 74 AC            [12] 2440 	mov	a,#(_nu >> 8)
      002B2A C0 E0            [24] 2441 	push	acc
      002B2C E4               [12] 2442 	clr	a
      002B2D C0 E0            [24] 2443 	push	acc
      002B2F 90 88 00         [24] 2444 	mov	dptr,#_u
      002B32 75 F0 00         [24] 2445 	mov	b,#0x00
      002B35 12 2D E5         [24] 2446 	lcall	___memcpy
      002B38 E5 81            [12] 2447 	mov	a,sp
      002B3A 24 FB            [12] 2448 	add	a,#0xfb
      002B3C F5 81            [12] 2449 	mov	sp,a
                                   2450 ;	life.c:326: if (fixed || cycle2) {
      002B3E 78 3D            [12] 2451 	mov	r0,#_fixed
      002B40 E6               [12] 2452 	mov	a,@r0
      002B41 70 05            [24] 2453 	jnz	00135$
      002B43 78 3E            [12] 2454 	mov	r0,#_cycle2
      002B45 E6               [12] 2455 	mov	a,@r0
      002B46 60 70            [24] 2456 	jz	00136$
      002B48                       2457 00135$:
                                   2458 ;	life.c:327: printstr("DONE ");
      002B48 7D 95            [12] 2459 	mov	r5,#___str_10
      002B4A 7E 30            [12] 2460 	mov	r6,#(___str_10 >> 8)
      002B4C 7F 80            [12] 2461 	mov	r7,#0x80
                                   2462 ;	life.c:73: return;
      002B4E                       2463 00243$:
                                   2464 ;	life.c:71: for (; *s; s++) putchar(*s);
      002B4E 8D 82            [24] 2465 	mov	dpl,r5
      002B50 8E 83            [24] 2466 	mov	dph,r6
      002B52 8F F0            [24] 2467 	mov	b,r7
      002B54 12 2F 09         [24] 2468 	lcall	__gptrget
      002B57 FC               [12] 2469 	mov	r4,a
      002B58 60 10            [24] 2470 	jz	00201$
      002B5A 7B 00            [12] 2471 	mov	r3,#0x00
      002B5C 8C 82            [24] 2472 	mov	dpl,r4
      002B5E 8B 83            [24] 2473 	mov	dph,r3
      002B60 12 20 B5         [24] 2474 	lcall	_putchar
      002B63 0D               [12] 2475 	inc	r5
                                   2476 ;	life.c:327: printstr("DONE ");
      002B64 BD 00 E7         [24] 2477 	cjne	r5,#0x00,00243$
      002B67 0E               [12] 2478 	inc	r6
      002B68 80 E4            [24] 2479 	sjmp	00243$
      002B6A                       2480 00201$:
                                   2481 ;	life.c:328: if (fixed) printstr("FIXED\r\n");
      002B6A 78 3D            [12] 2482 	mov	r0,#_fixed
      002B6C E6               [12] 2483 	mov	a,@r0
      002B6D 60 22            [24] 2484 	jz	00133$
      002B6F 7D 9B            [12] 2485 	mov	r5,#___str_11
      002B71 7E 30            [12] 2486 	mov	r6,#(___str_11 >> 8)
      002B73 7F 80            [12] 2487 	mov	r7,#0x80
                                   2488 ;	life.c:73: return;
      002B75                       2489 00246$:
                                   2490 ;	life.c:71: for (; *s; s++) putchar(*s);
      002B75 8D 82            [24] 2491 	mov	dpl,r5
      002B77 8E 83            [24] 2492 	mov	dph,r6
      002B79 8F F0            [24] 2493 	mov	b,r7
      002B7B 12 2F 09         [24] 2494 	lcall	__gptrget
      002B7E FC               [12] 2495 	mov	r4,a
      002B7F 60 32            [24] 2496 	jz	00134$
      002B81 7B 00            [12] 2497 	mov	r3,#0x00
      002B83 8C 82            [24] 2498 	mov	dpl,r4
      002B85 8B 83            [24] 2499 	mov	dph,r3
      002B87 12 20 B5         [24] 2500 	lcall	_putchar
      002B8A 0D               [12] 2501 	inc	r5
                                   2502 ;	life.c:328: if (fixed) printstr("FIXED\r\n");
      002B8B BD 00 E7         [24] 2503 	cjne	r5,#0x00,00246$
      002B8E 0E               [12] 2504 	inc	r6
      002B8F 80 E4            [24] 2505 	sjmp	00246$
      002B91                       2506 00133$:
                                   2507 ;	life.c:329: else printstr("CYCLE2\r\n");
      002B91 7D A3            [12] 2508 	mov	r5,#___str_12
      002B93 7E 30            [12] 2509 	mov	r6,#(___str_12 >> 8)
      002B95 7F 80            [12] 2510 	mov	r7,#0x80
                                   2511 ;	life.c:73: return;
      002B97                       2512 00249$:
                                   2513 ;	life.c:71: for (; *s; s++) putchar(*s);
      002B97 8D 82            [24] 2514 	mov	dpl,r5
      002B99 8E 83            [24] 2515 	mov	dph,r6
      002B9B 8F F0            [24] 2516 	mov	b,r7
      002B9D 12 2F 09         [24] 2517 	lcall	__gptrget
      002BA0 FC               [12] 2518 	mov	r4,a
      002BA1 60 10            [24] 2519 	jz	00134$
      002BA3 7B 00            [12] 2520 	mov	r3,#0x00
      002BA5 8C 82            [24] 2521 	mov	dpl,r4
      002BA7 8B 83            [24] 2522 	mov	dph,r3
      002BA9 12 20 B5         [24] 2523 	lcall	_putchar
      002BAC 0D               [12] 2524 	inc	r5
                                   2525 ;	life.c:329: else printstr("CYCLE2\r\n");
      002BAD BD 00 E7         [24] 2526 	cjne	r5,#0x00,00249$
      002BB0 0E               [12] 2527 	inc	r6
      002BB1 80 E4            [24] 2528 	sjmp	00249$
      002BB3                       2529 00134$:
                                   2530 ;	life.c:330: (void)getchar();
      002BB3 12 20 BE         [24] 2531 	lcall	_getchar
                                   2532 ;	life.c:331: break;
      002BB6 80 50            [24] 2533 	sjmp	00145$
      002BB8                       2534 00136$:
                                   2535 ;	life.c:334: c = getchar_poll();
      002BB8 12 20 CB         [24] 2536 	lcall	_getchar_poll
      002BBB AE 82            [24] 2537 	mov	r6,dpl
      002BBD AF 83            [24] 2538 	mov	r7,dph
      002BBF 78 3A            [12] 2539 	mov	r0,#_c
      002BC1 A6 06            [24] 2540 	mov	@r0,ar6
      002BC3 08               [12] 2541 	inc	r0
      002BC4 A6 07            [24] 2542 	mov	@r0,ar7
                                   2543 ;	life.c:335: if (c > 0) {
      002BC6 C3               [12] 2544 	clr	c
      002BC7 E4               [12] 2545 	clr	a
      002BC8 9E               [12] 2546 	subb	a,r6
      002BC9 74 80            [12] 2547 	mov	a,#(0x00 ^ 0x80)
      002BCB 8F F0            [24] 2548 	mov	b,r7
      002BCD 63 F0 80         [24] 2549 	xrl	b,#0x80
      002BD0 95 F0            [12] 2550 	subb	a,b
      002BD2 40 03            [24] 2551 	jc	00616$
      002BD4 02 26 EA         [24] 2552 	ljmp	00253$
      002BD7                       2553 00616$:
                                   2554 ;	life.c:336: c = toupper(c);
      002BD7 8E 82            [24] 2555 	mov	dpl,r6
      002BD9 8F 83            [24] 2556 	mov	dph,r7
      002BDB 12 2E E2         [24] 2557 	lcall	_toupper
      002BDE AE 82            [24] 2558 	mov	r6,dpl
      002BE0 AF 83            [24] 2559 	mov	r7,dph
      002BE2 78 3A            [12] 2560 	mov	r0,#_c
      002BE4 A6 06            [24] 2561 	mov	@r0,ar6
      002BE6 08               [12] 2562 	inc	r0
      002BE7 A6 07            [24] 2563 	mov	@r0,ar7
                                   2564 ;	life.c:337: if (c == (int)'T') i0 = 1;
      002BE9 BE 54 0A         [24] 2565 	cjne	r6,#0x54,00141$
      002BEC BF 00 07         [24] 2566 	cjne	r7,#0x00,00141$
      002BEF 78 31            [12] 2567 	mov	r0,#_i0
      002BF1 76 01            [12] 2568 	mov	@r0,#0x01
      002BF3 02 26 EA         [24] 2569 	ljmp	00253$
      002BF6                       2570 00141$:
                                   2571 ;	life.c:338: else if (c == (int)'B') i1 = 1;
      002BF6 BE 42 05         [24] 2572 	cjne	r6,#0x42,00619$
      002BF9 BF 00 02         [24] 2573 	cjne	r7,#0x00,00619$
      002BFC 80 03            [24] 2574 	sjmp	00620$
      002BFE                       2575 00619$:
      002BFE 02 26 EA         [24] 2576 	ljmp	00253$
      002C01                       2577 00620$:
      002C01 78 32            [12] 2578 	mov	r0,#_i1
      002C03 76 01            [12] 2579 	mov	@r0,#0x01
      002C05 02 26 EA         [24] 2580 	ljmp	00253$
      002C08                       2581 00145$:
                                   2582 ;	life.c:342: if (i1) {
      002C08 78 32            [12] 2583 	mov	r0,#_i1
      002C0A E6               [12] 2584 	mov	a,@r0
      002C0B 60 25            [24] 2585 	jz	00259$
                                   2586 ;	life.c:343: printstr("BREAK\r\n");
      002C0D 7D AC            [12] 2587 	mov	r5,#___str_13
      002C0F 7E 30            [12] 2588 	mov	r6,#(___str_13 >> 8)
      002C11 7F 80            [12] 2589 	mov	r7,#0x80
                                   2590 ;	life.c:73: return;
      002C13                       2591 00256$:
                                   2592 ;	life.c:71: for (; *s; s++) putchar(*s);
      002C13 8D 82            [24] 2593 	mov	dpl,r5
      002C15 8E 83            [24] 2594 	mov	dph,r6
      002C17 8F F0            [24] 2595 	mov	b,r7
      002C19 12 2F 09         [24] 2596 	lcall	__gptrget
      002C1C FC               [12] 2597 	mov	r4,a
      002C1D 60 10            [24] 2598 	jz	00207$
      002C1F 7B 00            [12] 2599 	mov	r3,#0x00
      002C21 8C 82            [24] 2600 	mov	dpl,r4
      002C23 8B 83            [24] 2601 	mov	dph,r3
      002C25 12 20 B5         [24] 2602 	lcall	_putchar
      002C28 0D               [12] 2603 	inc	r5
                                   2604 ;	life.c:343: printstr("BREAK\r\n");
      002C29 BD 00 E7         [24] 2605 	cjne	r5,#0x00,00256$
      002C2C 0E               [12] 2606 	inc	r6
      002C2D 80 E4            [24] 2607 	sjmp	00256$
      002C2F                       2608 00207$:
                                   2609 ;	life.c:344: (void)getchar();
      002C2F 12 20 BE         [24] 2610 	lcall	_getchar
      002C32                       2611 00259$:
                                   2612 ;	life.c:297: for (i0 = 0; !i0; ) {	
      002C32 78 31            [12] 2613 	mov	r0,#_i0
      002C34 E6               [12] 2614 	mov	a,@r0
      002C35 70 03            [24] 2615 	jnz	00624$
      002C37 02 23 81         [24] 2616 	ljmp	00258$
      002C3A                       2617 00624$:
                                   2618 ;	life.c:348: term:
      002C3A                       2619 00149$:
                                   2620 ;	life.c:349: EA = 0;
                                   2621 ;	assignBit
      002C3A C2 AF            [12] 2622 	clr	_EA
                                   2623 ;	life.c:350: printstr("TERM\r\n");
      002C3C 7D B4            [12] 2624 	mov	r5,#___str_14
      002C3E 7E 30            [12] 2625 	mov	r6,#(___str_14 >> 8)
      002C40 7F 80            [12] 2626 	mov	r7,#0x80
                                   2627 ;	life.c:73: return;
      002C42                       2628 00261$:
                                   2629 ;	life.c:71: for (; *s; s++) putchar(*s);
      002C42 8D 82            [24] 2630 	mov	dpl,r5
      002C44 8E 83            [24] 2631 	mov	dph,r6
      002C46 8F F0            [24] 2632 	mov	b,r7
      002C48 12 2F 09         [24] 2633 	lcall	__gptrget
      002C4B FC               [12] 2634 	mov	r4,a
      002C4C 60 10            [24] 2635 	jz	00209$
      002C4E 7B 00            [12] 2636 	mov	r3,#0x00
      002C50 8C 82            [24] 2637 	mov	dpl,r4
      002C52 8B 83            [24] 2638 	mov	dph,r3
      002C54 12 20 B5         [24] 2639 	lcall	_putchar
      002C57 0D               [12] 2640 	inc	r5
                                   2641 ;	life.c:350: printstr("TERM\r\n");
      002C58 BD 00 E7         [24] 2642 	cjne	r5,#0x00,00261$
      002C5B 0E               [12] 2643 	inc	r6
      002C5C 80 E4            [24] 2644 	sjmp	00261$
      002C5E                       2645 00209$:
                                   2646 ;	life.c:351: (void)getchar();
      002C5E 12 20 BE         [24] 2647 	lcall	_getchar
                                   2648 ;	life.c:353: PCON |= 2;
      002C61 43 87 02         [24] 2649 	orl	_PCON,#0x02
                                   2650 ;	life.c:355: return;
                                   2651 ;	life.c:356: }
      002C64 85 10 81         [24] 2652 	mov	sp,_bp
      002C67 D0 10            [24] 2653 	pop	_bp
      002C69 22               [24] 2654 	ret
                                   2655 	.area CSEG    (CODE)
                                   2656 	.area CONST   (CODE)
                                   2657 	.area CONST   (CODE)
      003031                       2658 ___str_0:
      003031 1B                    2659 	.db 0x1b
      003032 5B 3F 32 35 6C        2660 	.ascii "[?25l"
      003037 00                    2661 	.db 0x00
                                   2662 	.area CSEG    (CODE)
                                   2663 	.area CONST   (CODE)
      003038                       2664 ___str_1:
      003038 1B                    2665 	.db 0x1b
      003039 5B 32 4A 47 45 4E 20  2666 	.ascii "[2JGEN "
      003040 00                    2667 	.db 0x00
                                   2668 	.area CSEG    (CODE)
                                   2669 	.area CONST   (CODE)
      003041                       2670 ___str_2:
      003041 0D                    2671 	.db 0x0d
      003042 0A                    2672 	.db 0x0a
      003043 00                    2673 	.db 0x00
                                   2674 	.area CSEG    (CODE)
                                   2675 	.area CONST   (CODE)
      003044                       2676 ___str_3:
      003044 1B                    2677 	.db 0x1b
      003045 5B 3F 32 35 68        2678 	.ascii "[?25h"
      00304A 00                    2679 	.db 0x00
                                   2680 	.area CSEG    (CODE)
                                   2681 	.area CONST   (CODE)
      00304B                       2682 ___str_4:
      00304B 4C 4F 41 44 20 30 20  2683 	.ascii "LOAD 0 1 ~ # <"
             31 20 7E 20 23 20 3C
      003059 00                    2684 	.db 0x00
                                   2685 	.area CSEG    (CODE)
                                   2686 	.area CONST   (CODE)
      00305A                       2687 ___str_5:
      00305A 3E                    2688 	.ascii ">"
      00305B 0D                    2689 	.db 0x0d
      00305C 0A                    2690 	.db 0x0a
      00305D 00                    2691 	.db 0x00
                                   2692 	.area CSEG    (CODE)
                                   2693 	.area CONST   (CODE)
      00305E                       2694 ___str_6:
      00305E 52 41 4E 44 4F 4D     2695 	.ascii "RANDOM"
      003064 00                    2696 	.db 0x00
                                   2697 	.area CSEG    (CODE)
                                   2698 	.area CONST   (CODE)
      003065                       2699 ___str_7:
      003065 1B                    2700 	.db 0x1b
      003066 5B 3F 32 35 68        2701 	.ascii "[?25h"
      00306B 1B                    2702 	.db 0x1b
      00306C 5B 6D                 2703 	.ascii "[m"
      00306E 00                    2704 	.db 0x00
                                   2705 	.area CSEG    (CODE)
                                   2706 	.area CONST   (CODE)
      00306F                       2707 ___str_8:
      00306F 4C 49 46 45 20 49 4E  2708 	.ascii "LIFE INIT T L R P"
             49 54 20 54 20 4C 20
             52 20 50
      003080 0D                    2709 	.db 0x0d
      003081 0A                    2710 	.db 0x0a
      003082 00                    2711 	.db 0x00
                                   2712 	.area CSEG    (CODE)
                                   2713 	.area CONST   (CODE)
      003083                       2714 ___str_9:
      003083 52 45 41 44 59 20 54  2715 	.ascii "READY T L R P S"
             20 4C 20 52 20 50 20
             53
      003092 0D                    2716 	.db 0x0d
      003093 0A                    2717 	.db 0x0a
      003094 00                    2718 	.db 0x00
                                   2719 	.area CSEG    (CODE)
                                   2720 	.area CONST   (CODE)
      003095                       2721 ___str_10:
      003095 44 4F 4E 45 20        2722 	.ascii "DONE "
      00309A 00                    2723 	.db 0x00
                                   2724 	.area CSEG    (CODE)
                                   2725 	.area CONST   (CODE)
      00309B                       2726 ___str_11:
      00309B 46 49 58 45 44        2727 	.ascii "FIXED"
      0030A0 0D                    2728 	.db 0x0d
      0030A1 0A                    2729 	.db 0x0a
      0030A2 00                    2730 	.db 0x00
                                   2731 	.area CSEG    (CODE)
                                   2732 	.area CONST   (CODE)
      0030A3                       2733 ___str_12:
      0030A3 43 59 43 4C 45 32     2734 	.ascii "CYCLE2"
      0030A9 0D                    2735 	.db 0x0d
      0030AA 0A                    2736 	.db 0x0a
      0030AB 00                    2737 	.db 0x00
                                   2738 	.area CSEG    (CODE)
                                   2739 	.area CONST   (CODE)
      0030AC                       2740 ___str_13:
      0030AC 42 52 45 41 4B        2741 	.ascii "BREAK"
      0030B1 0D                    2742 	.db 0x0d
      0030B2 0A                    2743 	.db 0x0a
      0030B3 00                    2744 	.db 0x00
                                   2745 	.area CSEG    (CODE)
                                   2746 	.area CONST   (CODE)
      0030B4                       2747 ___str_14:
      0030B4 54 45 52 4D           2748 	.ascii "TERM"
      0030B8 0D                    2749 	.db 0x0d
      0030B9 0A                    2750 	.db 0x0a
      0030BA 00                    2751 	.db 0x00
                                   2752 	.area CSEG    (CODE)
                                   2753 	.area XINIT   (CODE)
                                   2754 	.area CABS    (ABS,CODE)
