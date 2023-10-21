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
      002003 02 20 D7         [24]  397 	ljmp	_int0
      002006                        398 	.ds	5
      00200B 32               [24]  399 	reti
      00200C                        400 	.ds	7
      002013 02 20 E3         [24]  401 	ljmp	_int1
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
                                    415 ;	life.c:44: __idata static const char digits[16] = {
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
      002016 02 23 18         [24]  456 	ljmp	_main
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
                                    467 ;	life.c:10: int putchar(int c) __naked {
                                    468 ;	-----------------------------------------
                                    469 ;	 function putchar
                                    470 ;	-----------------------------------------
      0020B5                        471 _putchar:
                                    472 ;	naked function: no prologue.
                                    473 ;	life.c:15: __endasm;
      0020B5 E5 82            [12]  474 	mov	a, dpl
      0020B7 02 00 30         [24]  475 	ljmp	0x0030
                                    476 ;	life.c:16: }
                                    477 ;	naked function: no epilogue.
                                    478 ;------------------------------------------------------------
                                    479 ;Allocation info for local variables in function 'getchar'
                                    480 ;------------------------------------------------------------
                                    481 ;	life.c:18: int getchar(void) __naked {
                                    482 ;	-----------------------------------------
                                    483 ;	 function getchar
                                    484 ;	-----------------------------------------
      0020BA                        485 _getchar:
                                    486 ;	naked function: no prologue.
                                    487 ;	life.c:24: __endasm;
      0020BA 12 00 32         [24]  488 	lcall	0x0032
      0020BD F5 82            [12]  489 	mov	dpl, a
      0020BF 75 83 00         [24]  490 	mov	dph, #0
      0020C2 22               [24]  491 	ret
                                    492 ;	life.c:25: }
                                    493 ;	naked function: no epilogue.
                                    494 ;------------------------------------------------------------
                                    495 ;Allocation info for local variables in function 'getchar_poll'
                                    496 ;------------------------------------------------------------
                                    497 ;	life.c:27: int getchar_poll(void) __naked {
                                    498 ;	-----------------------------------------
                                    499 ;	 function getchar_poll
                                    500 ;	-----------------------------------------
      0020C3                        501 _getchar_poll:
                                    502 ;	naked function: no prologue.
                                    503 ;	life.c:39: __endasm;
      0020C3 74 FF            [12]  504 	mov	a, #0xff
      0020C5 F5 F0            [12]  505 	mov	b, a
      0020C7 30 98 07         [24]  506 	jnb	ri, nochar
      0020CA C2 98            [12]  507 	clr	ri
      0020CC E5 99            [12]  508 	mov	a, sbuf
      0020CE 75 F0 00         [24]  509 	mov	b, #0
      0020D1                        510 	nochar:
      0020D1 F5 82            [12]  511 	mov	dpl, a
      0020D3 85 F0 83         [24]  512 	mov	dph, b
      0020D6 22               [24]  513 	ret
                                    514 ;	life.c:40: }
                                    515 ;	naked function: no epilogue.
                                    516 ;------------------------------------------------------------
                                    517 ;Allocation info for local variables in function 'int0'
                                    518 ;------------------------------------------------------------
                                    519 ;	life.c:73: void int0(void) __interrupt IE0_VECTOR __using 1 {
                                    520 ;	-----------------------------------------
                                    521 ;	 function int0
                                    522 ;	-----------------------------------------
      0020D7                        523 _int0:
                           00000F   524 	ar7 = 0x0f
                           00000E   525 	ar6 = 0x0e
                           00000D   526 	ar5 = 0x0d
                           00000C   527 	ar4 = 0x0c
                           00000B   528 	ar3 = 0x0b
                           00000A   529 	ar2 = 0x0a
                           000009   530 	ar1 = 0x09
                           000008   531 	ar0 = 0x08
      0020D7 C0 D0            [24]  532 	push	psw
      0020D9 75 D0 08         [24]  533 	mov	psw,#0x08
                                    534 ;	life.c:74: i0 = 1;
      0020DC 78 31            [12]  535 	mov	r0,#_i0
      0020DE 76 01            [12]  536 	mov	@r0,#0x01
                                    537 ;	life.c:75: }
      0020E0 D0 D0            [24]  538 	pop	psw
      0020E2 32               [24]  539 	reti
                                    540 ;	eliminated unneeded push/pop dpl
                                    541 ;	eliminated unneeded push/pop dph
                                    542 ;	eliminated unneeded push/pop b
                                    543 ;	eliminated unneeded push/pop acc
                                    544 ;------------------------------------------------------------
                                    545 ;Allocation info for local variables in function 'int1'
                                    546 ;------------------------------------------------------------
                                    547 ;	life.c:77: void int1(void) __interrupt IE1_VECTOR __using 1 {
                                    548 ;	-----------------------------------------
                                    549 ;	 function int1
                                    550 ;	-----------------------------------------
      0020E3                        551 _int1:
      0020E3 C0 D0            [24]  552 	push	psw
      0020E5 75 D0 08         [24]  553 	mov	psw,#0x08
                                    554 ;	life.c:78: i1 = 1;
      0020E8 78 32            [12]  555 	mov	r0,#_i1
      0020EA 76 01            [12]  556 	mov	@r0,#0x01
                                    557 ;	life.c:79: }
      0020EC D0 D0            [24]  558 	pop	psw
      0020EE 32               [24]  559 	reti
                                    560 ;	eliminated unneeded push/pop dpl
                                    561 ;	eliminated unneeded push/pop dph
                                    562 ;	eliminated unneeded push/pop b
                                    563 ;	eliminated unneeded push/pop acc
                                    564 ;------------------------------------------------------------
                                    565 ;Allocation info for local variables in function 'flashOE'
                                    566 ;------------------------------------------------------------
                                    567 ;	life.c:89: static void flashOE(void) {
                                    568 ;	-----------------------------------------
                                    569 ;	 function flashOE
                                    570 ;	-----------------------------------------
      0020EF                        571 _flashOE:
                           000007   572 	ar7 = 0x07
                           000006   573 	ar6 = 0x06
                           000005   574 	ar5 = 0x05
                           000004   575 	ar4 = 0x04
                           000003   576 	ar3 = 0x03
                           000002   577 	ar2 = 0x02
                           000001   578 	ar1 = 0x01
                           000000   579 	ar0 = 0x00
                                    580 ;	life.c:90: P1_7 = 0;
                                    581 ;	assignBit
      0020EF C2 97            [12]  582 	clr	_P1_7
                                    583 ;	life.c:91: OEreg = OE76;
      0020F1 78 33            [12]  584 	mov	r0,#_OE76
      0020F3 90 F0 06         [24]  585 	mov	dptr,#_OEreg
      0020F6 E6               [12]  586 	mov	a,@r0
      0020F7 F0               [24]  587 	movx	@dptr,a
                                    588 ;	life.c:92: P1_7 = 1;
                                    589 ;	assignBit
      0020F8 D2 97            [12]  590 	setb	_P1_7
                                    591 ;	life.c:94: return;
                                    592 ;	life.c:95: }
      0020FA 22               [24]  593 	ret
                                    594 ;------------------------------------------------------------
                                    595 ;Allocation info for local variables in function 'show'
                                    596 ;------------------------------------------------------------
                                    597 ;hdr                       Allocated to registers r7 
                                    598 ;__1310720005              Allocated to registers 
                                    599 ;s                         Allocated to registers r4 r5 r6 
                                    600 ;__1966080007              Allocated to registers 
                                    601 ;s                         Allocated to registers r5 r6 r7 
                                    602 ;__1310720001              Allocated to registers r6 r7 
                                    603 ;a                         Allocated to registers 
                                    604 ;__1310720003              Allocated to registers r6 r7 
                                    605 ;a                         Allocated to registers 
                                    606 ;__1966080010              Allocated to registers 
                                    607 ;s                         Allocated to registers r5 r6 r7 
                                    608 ;__2621440013              Allocated to registers 
                                    609 ;s                         Allocated to registers r5 r6 r7 
                                    610 ;__1310720015              Allocated to registers 
                                    611 ;s                         Allocated to registers r5 r6 r7 
                                    612 ;------------------------------------------------------------
                                    613 ;	life.c:131: void show(char hdr) {
                                    614 ;	-----------------------------------------
                                    615 ;	 function show
                                    616 ;	-----------------------------------------
      0020FB                        617 _show:
      0020FB AF 82            [24]  618 	mov	r7,dpl
                                    619 ;	life.c:132: printstr("\033[?25l");
      0020FD 7C 1A            [12]  620 	mov	r4,#___str_0
      0020FF 7D 30            [12]  621 	mov	r5,#(___str_0 >> 8)
      002101 7E 80            [12]  622 	mov	r6,#0x80
                                    623 ;	life.c:68: return;
      002103                        624 00125$:
                                    625 ;	life.c:66: for (; *s; s++) putchar(*s);
      002103 8C 82            [24]  626 	mov	dpl,r4
      002105 8D 83            [24]  627 	mov	dph,r5
      002107 8E F0            [24]  628 	mov	b,r6
      002109 12 2E F2         [24]  629 	lcall	__gptrget
      00210C FB               [12]  630 	mov	r3,a
      00210D 60 10            [24]  631 	jz	00109$
      00210F 7A 00            [12]  632 	mov	r2,#0x00
      002111 8B 82            [24]  633 	mov	dpl,r3
      002113 8A 83            [24]  634 	mov	dph,r2
      002115 12 20 B5         [24]  635 	lcall	_putchar
      002118 0C               [12]  636 	inc	r4
                                    637 ;	life.c:132: printstr("\033[?25l");
      002119 BC 00 E7         [24]  638 	cjne	r4,#0x00,00125$
      00211C 0D               [12]  639 	inc	r5
      00211D 80 E4            [24]  640 	sjmp	00125$
      00211F                        641 00109$:
                                    642 ;	life.c:134: if (hdr) {
      00211F EF               [12]  643 	mov	a,r7
      002120 70 03            [24]  644 	jnz	00220$
      002122 02 22 5B         [24]  645 	ljmp	00102$
      002125                        646 00220$:
                                    647 ;	life.c:135: printstr("\033[2JGEN ");
      002125 7D 21            [12]  648 	mov	r5,#___str_1
      002127 7E 30            [12]  649 	mov	r6,#(___str_1 >> 8)
      002129 7F 80            [12]  650 	mov	r7,#0x80
                                    651 ;	life.c:68: return;
      00212B                        652 00128$:
                                    653 ;	life.c:66: for (; *s; s++) putchar(*s);
      00212B 8D 82            [24]  654 	mov	dpl,r5
      00212D 8E 83            [24]  655 	mov	dph,r6
      00212F 8F F0            [24]  656 	mov	b,r7
      002131 12 2E F2         [24]  657 	lcall	__gptrget
      002134 FC               [12]  658 	mov	r4,a
      002135 60 10            [24]  659 	jz	00111$
      002137 7B 00            [12]  660 	mov	r3,#0x00
      002139 8C 82            [24]  661 	mov	dpl,r4
      00213B 8B 83            [24]  662 	mov	dph,r3
      00213D 12 20 B5         [24]  663 	lcall	_putchar
      002140 0D               [12]  664 	inc	r5
                                    665 ;	life.c:135: printstr("\033[2JGEN ");
      002141 BD 00 E7         [24]  666 	cjne	r5,#0x00,00128$
      002144 0E               [12]  667 	inc	r6
      002145 80 E4            [24]  668 	sjmp	00128$
      002147                        669 00111$:
                                    670 ;	life.c:125: print16x(generation[1]);
      002147 78 45            [12]  671 	mov	r0,#(_generation + 0x0002)
      002149 86 06            [24]  672 	mov	ar6,@r0
      00214B 08               [12]  673 	inc	r0
                                    674 ;	life.c:57: putchar(digits[(a >> 12) & 0xf]);
      00214C E6               [12]  675 	mov	a,@r0
      00214D FF               [12]  676 	mov	r7,a
      00214E C4               [12]  677 	swap	a
      00214F 54 0F            [12]  678 	anl	a,#0x0f
      002151 FC               [12]  679 	mov	r4,a
      002152 53 04 0F         [24]  680 	anl	ar4,#0x0f
      002155 EC               [12]  681 	mov	a,r4
      002156 24 21            [12]  682 	add	a,#_digits
      002158 F9               [12]  683 	mov	r1,a
      002159 87 05            [24]  684 	mov	ar5,@r1
      00215B 7C 00            [12]  685 	mov	r4,#0x00
      00215D 8D 82            [24]  686 	mov	dpl,r5
      00215F 8C 83            [24]  687 	mov	dph,r4
      002161 12 20 B5         [24]  688 	lcall	_putchar
                                    689 ;	life.c:58: putchar(digits[(a >> 8) & 0xf]);
      002164 8F 05            [24]  690 	mov	ar5,r7
      002166 53 05 0F         [24]  691 	anl	ar5,#0x0f
      002169 ED               [12]  692 	mov	a,r5
      00216A 24 21            [12]  693 	add	a,#_digits
      00216C F9               [12]  694 	mov	r1,a
      00216D 87 05            [24]  695 	mov	ar5,@r1
      00216F 7C 00            [12]  696 	mov	r4,#0x00
      002171 8D 82            [24]  697 	mov	dpl,r5
      002173 8C 83            [24]  698 	mov	dph,r4
      002175 12 20 B5         [24]  699 	lcall	_putchar
                                    700 ;	life.c:59: putchar(digits[(a >> 4) & 0xf]);
      002178 8E 04            [24]  701 	mov	ar4,r6
      00217A EF               [12]  702 	mov	a,r7
      00217B C4               [12]  703 	swap	a
      00217C CC               [12]  704 	xch	a,r4
      00217D C4               [12]  705 	swap	a
      00217E 54 0F            [12]  706 	anl	a,#0x0f
      002180 6C               [12]  707 	xrl	a,r4
      002181 CC               [12]  708 	xch	a,r4
      002182 54 0F            [12]  709 	anl	a,#0x0f
      002184 CC               [12]  710 	xch	a,r4
      002185 6C               [12]  711 	xrl	a,r4
      002186 CC               [12]  712 	xch	a,r4
      002187 53 04 0F         [24]  713 	anl	ar4,#0x0f
      00218A EC               [12]  714 	mov	a,r4
      00218B 24 21            [12]  715 	add	a,#_digits
      00218D F9               [12]  716 	mov	r1,a
      00218E 87 05            [24]  717 	mov	ar5,@r1
      002190 7C 00            [12]  718 	mov	r4,#0x00
      002192 8D 82            [24]  719 	mov	dpl,r5
      002194 8C 83            [24]  720 	mov	dph,r4
      002196 12 20 B5         [24]  721 	lcall	_putchar
                                    722 ;	life.c:60: putchar(digits[a & 0xf]);
      002199 53 06 0F         [24]  723 	anl	ar6,#0x0f
      00219C EE               [12]  724 	mov	a,r6
      00219D 24 21            [12]  725 	add	a,#_digits
      00219F F9               [12]  726 	mov	r1,a
      0021A0 87 07            [24]  727 	mov	ar7,@r1
      0021A2 7E 00            [12]  728 	mov	r6,#0x00
      0021A4 8F 82            [24]  729 	mov	dpl,r7
      0021A6 8E 83            [24]  730 	mov	dph,r6
      0021A8 12 20 B5         [24]  731 	lcall	_putchar
                                    732 ;	life.c:126: print16x(generation[0]);
      0021AB 78 43            [12]  733 	mov	r0,#_generation
      0021AD 86 06            [24]  734 	mov	ar6,@r0
      0021AF 08               [12]  735 	inc	r0
                                    736 ;	life.c:57: putchar(digits[(a >> 12) & 0xf]);
      0021B0 E6               [12]  737 	mov	a,@r0
      0021B1 FF               [12]  738 	mov	r7,a
      0021B2 C4               [12]  739 	swap	a
      0021B3 54 0F            [12]  740 	anl	a,#0x0f
      0021B5 FC               [12]  741 	mov	r4,a
      0021B6 53 04 0F         [24]  742 	anl	ar4,#0x0f
      0021B9 EC               [12]  743 	mov	a,r4
      0021BA 24 21            [12]  744 	add	a,#_digits
      0021BC F9               [12]  745 	mov	r1,a
      0021BD 87 05            [24]  746 	mov	ar5,@r1
      0021BF 7C 00            [12]  747 	mov	r4,#0x00
      0021C1 8D 82            [24]  748 	mov	dpl,r5
      0021C3 8C 83            [24]  749 	mov	dph,r4
      0021C5 12 20 B5         [24]  750 	lcall	_putchar
                                    751 ;	life.c:58: putchar(digits[(a >> 8) & 0xf]);
      0021C8 8F 05            [24]  752 	mov	ar5,r7
      0021CA 53 05 0F         [24]  753 	anl	ar5,#0x0f
      0021CD ED               [12]  754 	mov	a,r5
      0021CE 24 21            [12]  755 	add	a,#_digits
      0021D0 F9               [12]  756 	mov	r1,a
      0021D1 87 05            [24]  757 	mov	ar5,@r1
      0021D3 7C 00            [12]  758 	mov	r4,#0x00
      0021D5 8D 82            [24]  759 	mov	dpl,r5
      0021D7 8C 83            [24]  760 	mov	dph,r4
      0021D9 12 20 B5         [24]  761 	lcall	_putchar
                                    762 ;	life.c:59: putchar(digits[(a >> 4) & 0xf]);
      0021DC 8E 04            [24]  763 	mov	ar4,r6
      0021DE EF               [12]  764 	mov	a,r7
      0021DF C4               [12]  765 	swap	a
      0021E0 CC               [12]  766 	xch	a,r4
      0021E1 C4               [12]  767 	swap	a
      0021E2 54 0F            [12]  768 	anl	a,#0x0f
      0021E4 6C               [12]  769 	xrl	a,r4
      0021E5 CC               [12]  770 	xch	a,r4
      0021E6 54 0F            [12]  771 	anl	a,#0x0f
      0021E8 CC               [12]  772 	xch	a,r4
      0021E9 6C               [12]  773 	xrl	a,r4
      0021EA CC               [12]  774 	xch	a,r4
      0021EB 53 04 0F         [24]  775 	anl	ar4,#0x0f
      0021EE EC               [12]  776 	mov	a,r4
      0021EF 24 21            [12]  777 	add	a,#_digits
      0021F1 F9               [12]  778 	mov	r1,a
      0021F2 87 05            [24]  779 	mov	ar5,@r1
      0021F4 7C 00            [12]  780 	mov	r4,#0x00
      0021F6 8D 82            [24]  781 	mov	dpl,r5
      0021F8 8C 83            [24]  782 	mov	dph,r4
      0021FA 12 20 B5         [24]  783 	lcall	_putchar
                                    784 ;	life.c:60: putchar(digits[a & 0xf]);
      0021FD 53 06 0F         [24]  785 	anl	ar6,#0x0f
      002200 EE               [12]  786 	mov	a,r6
      002201 24 21            [12]  787 	add	a,#_digits
      002203 F9               [12]  788 	mov	r1,a
      002204 87 07            [24]  789 	mov	ar7,@r1
      002206 7E 00            [12]  790 	mov	r6,#0x00
      002208 8F 82            [24]  791 	mov	dpl,r7
      00220A 8E 83            [24]  792 	mov	dph,r6
      00220C 12 20 B5         [24]  793 	lcall	_putchar
                                    794 ;	life.c:137: printstr("\r\n");
      00220F 7D 2A            [12]  795 	mov	r5,#___str_2
      002211 7E 30            [12]  796 	mov	r6,#(___str_2 >> 8)
      002213 7F 80            [12]  797 	mov	r7,#0x80
                                    798 ;	life.c:68: return;
      002215                        799 00131$:
                                    800 ;	life.c:66: for (; *s; s++) putchar(*s);
      002215 8D 82            [24]  801 	mov	dpl,r5
      002217 8E 83            [24]  802 	mov	dph,r6
      002219 8F F0            [24]  803 	mov	b,r7
      00221B 12 2E F2         [24]  804 	lcall	__gptrget
      00221E FC               [12]  805 	mov	r4,a
      00221F 60 10            [24]  806 	jz	00116$
      002221 7B 00            [12]  807 	mov	r3,#0x00
      002223 8C 82            [24]  808 	mov	dpl,r4
      002225 8B 83            [24]  809 	mov	dph,r3
      002227 12 20 B5         [24]  810 	lcall	_putchar
      00222A 0D               [12]  811 	inc	r5
                                    812 ;	life.c:137: printstr("\r\n");
      00222B BD 00 E7         [24]  813 	cjne	r5,#0x00,00131$
      00222E 0E               [12]  814 	inc	r6
      00222F 80 E4            [24]  815 	sjmp	00131$
      002231                        816 00116$:
                                    817 ;	life.c:118: generation[0]++;
      002231 78 43            [12]  818 	mov	r0,#_generation
      002233 86 06            [24]  819 	mov	ar6,@r0
      002235 08               [12]  820 	inc	r0
      002236 86 07            [24]  821 	mov	ar7,@r0
      002238 0E               [12]  822 	inc	r6
      002239 BE 00 01         [24]  823 	cjne	r6,#0x00,00225$
      00223C 0F               [12]  824 	inc	r7
      00223D                        825 00225$:
      00223D 78 43            [12]  826 	mov	r0,#_generation
      00223F A6 06            [24]  827 	mov	@r0,ar6
      002241 08               [12]  828 	inc	r0
      002242 A6 07            [24]  829 	mov	@r0,ar7
                                    830 ;	life.c:119: if (!generation[0]) generation[1]++;
      002244 EE               [12]  831 	mov	a,r6
      002245 4F               [12]  832 	orl	a,r7
      002246 70 13            [24]  833 	jnz	00102$
      002248 78 45            [12]  834 	mov	r0,#(_generation + 0x0002)
      00224A 86 06            [24]  835 	mov	ar6,@r0
      00224C 08               [12]  836 	inc	r0
      00224D 86 07            [24]  837 	mov	ar7,@r0
      00224F 0E               [12]  838 	inc	r6
      002250 BE 00 01         [24]  839 	cjne	r6,#0x00,00227$
      002253 0F               [12]  840 	inc	r7
      002254                        841 00227$:
      002254 78 45            [12]  842 	mov	r0,#(_generation + 0x0002)
      002256 A6 06            [24]  843 	mov	@r0,ar6
      002258 08               [12]  844 	inc	r0
      002259 A6 07            [24]  845 	mov	@r0,ar7
                                    846 ;	life.c:138: updategen();
      00225B                        847 00102$:
                                    848 ;	life.c:141: for (x = 0; x < W; x++) {
      00225B 78 34            [12]  849 	mov	r0,#_x
      00225D E4               [12]  850 	clr	a
      00225E F6               [12]  851 	mov	@r0,a
      00225F 08               [12]  852 	inc	r0
      002260 F6               [12]  853 	mov	@r0,a
      002261                        854 00138$:
                                    855 ;	life.c:142: for (y = 0; y < H; y++)
      002261 78 36            [12]  856 	mov	r0,#_y
      002263 E4               [12]  857 	clr	a
      002264 F6               [12]  858 	mov	@r0,a
      002265 08               [12]  859 	inc	r0
      002266 F6               [12]  860 	mov	@r0,a
      002267                        861 00133$:
                                    862 ;	life.c:143: if (u[A2D(W, y, x)]) putchar('1');
      002267 78 36            [12]  863 	mov	r0,#_y
      002269 E6               [12]  864 	mov	a,@r0
      00226A C0 E0            [24]  865 	push	acc
      00226C 08               [12]  866 	inc	r0
      00226D E6               [12]  867 	mov	a,@r0
      00226E C0 E0            [24]  868 	push	acc
      002270 90 00 30         [24]  869 	mov	dptr,#0x0030
      002273 12 2D 30         [24]  870 	lcall	__mulint
      002276 AE 82            [24]  871 	mov	r6,dpl
      002278 AF 83            [24]  872 	mov	r7,dph
      00227A 15 81            [12]  873 	dec	sp
      00227C 15 81            [12]  874 	dec	sp
      00227E 78 34            [12]  875 	mov	r0,#_x
      002280 E6               [12]  876 	mov	a,@r0
      002281 2E               [12]  877 	add	a,r6
      002282 FE               [12]  878 	mov	r6,a
      002283 08               [12]  879 	inc	r0
      002284 E6               [12]  880 	mov	a,@r0
      002285 3F               [12]  881 	addc	a,r7
      002286 FF               [12]  882 	mov	r7,a
      002287 EE               [12]  883 	mov	a,r6
      002288 24 00            [12]  884 	add	a,#_u
      00228A FE               [12]  885 	mov	r6,a
      00228B EF               [12]  886 	mov	a,r7
      00228C 34 88            [12]  887 	addc	a,#(_u >> 8)
      00228E FF               [12]  888 	mov	r7,a
      00228F 8E 82            [24]  889 	mov	dpl,r6
      002291 8F 83            [24]  890 	mov	dph,r7
      002293 E0               [24]  891 	movx	a,@dptr
      002294 60 08            [24]  892 	jz	00104$
      002296 90 00 31         [24]  893 	mov	dptr,#0x0031
      002299 12 20 B5         [24]  894 	lcall	_putchar
      00229C 80 06            [24]  895 	sjmp	00134$
      00229E                        896 00104$:
                                    897 ;	life.c:144: else putchar('0');
      00229E 90 00 30         [24]  898 	mov	dptr,#0x0030
      0022A1 12 20 B5         [24]  899 	lcall	_putchar
      0022A4                        900 00134$:
                                    901 ;	life.c:142: for (y = 0; y < H; y++)
      0022A4 78 36            [12]  902 	mov	r0,#_y
      0022A6 06               [12]  903 	inc	@r0
      0022A7 B6 00 02         [24]  904 	cjne	@r0,#0x00,00229$
      0022AA 08               [12]  905 	inc	r0
      0022AB 06               [12]  906 	inc	@r0
      0022AC                        907 00229$:
      0022AC 78 36            [12]  908 	mov	r0,#_y
      0022AE C3               [12]  909 	clr	c
      0022AF E6               [12]  910 	mov	a,@r0
      0022B0 94 C0            [12]  911 	subb	a,#0xc0
      0022B2 08               [12]  912 	inc	r0
      0022B3 E6               [12]  913 	mov	a,@r0
      0022B4 64 80            [12]  914 	xrl	a,#0x80
      0022B6 94 80            [12]  915 	subb	a,#0x80
      0022B8 40 AD            [24]  916 	jc	00133$
                                    917 ;	life.c:145: printstr("\r\n");
      0022BA 7D 2A            [12]  918 	mov	r5,#___str_2
      0022BC 7E 30            [12]  919 	mov	r6,#(___str_2 >> 8)
      0022BE 7F 80            [12]  920 	mov	r7,#0x80
                                    921 ;	life.c:68: return;
      0022C0                        922 00136$:
                                    923 ;	life.c:66: for (; *s; s++) putchar(*s);
      0022C0 8D 82            [24]  924 	mov	dpl,r5
      0022C2 8E 83            [24]  925 	mov	dph,r6
      0022C4 8F F0            [24]  926 	mov	b,r7
      0022C6 12 2E F2         [24]  927 	lcall	__gptrget
      0022C9 FC               [12]  928 	mov	r4,a
      0022CA 60 10            [24]  929 	jz	00121$
      0022CC 7B 00            [12]  930 	mov	r3,#0x00
      0022CE 8C 82            [24]  931 	mov	dpl,r4
      0022D0 8B 83            [24]  932 	mov	dph,r3
      0022D2 12 20 B5         [24]  933 	lcall	_putchar
      0022D5 0D               [12]  934 	inc	r5
                                    935 ;	life.c:145: printstr("\r\n");
      0022D6 BD 00 E7         [24]  936 	cjne	r5,#0x00,00136$
      0022D9 0E               [12]  937 	inc	r6
      0022DA 80 E4            [24]  938 	sjmp	00136$
      0022DC                        939 00121$:
                                    940 ;	life.c:141: for (x = 0; x < W; x++) {
      0022DC 78 34            [12]  941 	mov	r0,#_x
      0022DE 06               [12]  942 	inc	@r0
      0022DF B6 00 02         [24]  943 	cjne	@r0,#0x00,00233$
      0022E2 08               [12]  944 	inc	r0
      0022E3 06               [12]  945 	inc	@r0
      0022E4                        946 00233$:
      0022E4 78 34            [12]  947 	mov	r0,#_x
      0022E6 C3               [12]  948 	clr	c
      0022E7 E6               [12]  949 	mov	a,@r0
      0022E8 94 30            [12]  950 	subb	a,#0x30
      0022EA 08               [12]  951 	inc	r0
      0022EB E6               [12]  952 	mov	a,@r0
      0022EC 64 80            [12]  953 	xrl	a,#0x80
      0022EE 94 80            [12]  954 	subb	a,#0x80
      0022F0 50 03            [24]  955 	jnc	00234$
      0022F2 02 22 61         [24]  956 	ljmp	00138$
      0022F5                        957 00234$:
                                    958 ;	life.c:148: printstr("\033[?25h");
      0022F5 7D 2D            [12]  959 	mov	r5,#___str_3
      0022F7 7E 30            [12]  960 	mov	r6,#(___str_3 >> 8)
      0022F9 7F 80            [12]  961 	mov	r7,#0x80
                                    962 ;	life.c:68: return;
      0022FB                        963 00141$:
                                    964 ;	life.c:66: for (; *s; s++) putchar(*s);
      0022FB 8D 82            [24]  965 	mov	dpl,r5
      0022FD 8E 83            [24]  966 	mov	dph,r6
      0022FF 8F F0            [24]  967 	mov	b,r7
      002301 12 2E F2         [24]  968 	lcall	__gptrget
      002304 FC               [12]  969 	mov	r4,a
      002305 60 10            [24]  970 	jz	00123$
      002307 7B 00            [12]  971 	mov	r3,#0x00
      002309 8C 82            [24]  972 	mov	dpl,r4
      00230B 8B 83            [24]  973 	mov	dph,r3
      00230D 12 20 B5         [24]  974 	lcall	_putchar
      002310 0D               [12]  975 	inc	r5
                                    976 ;	life.c:148: printstr("\033[?25h");
      002311 BD 00 E7         [24]  977 	cjne	r5,#0x00,00141$
      002314 0E               [12]  978 	inc	r6
      002315 80 E4            [24]  979 	sjmp	00141$
      002317                        980 00123$:
                                    981 ;	life.c:150: return;
                                    982 ;	life.c:151: }
      002317 22               [24]  983 	ret
                                    984 ;------------------------------------------------------------
                                    985 ;Allocation info for local variables in function 'main'
                                    986 ;------------------------------------------------------------
                                    987 ;__1310720027              Allocated to registers 
                                    988 ;s                         Allocated to registers r5 r6 r7 
                                    989 ;__2621440029              Allocated to registers 
                                    990 ;s                         Allocated to registers r5 r6 r7 
                                    991 ;__1310720017              Allocated to registers 
                                    992 ;s                         Allocated to registers r5 r6 r7 
                                    993 ;__1310720019              Allocated to registers r6 r7 
                                    994 ;a                         Allocated to registers r4 r5 
                                    995 ;__1310720021              Allocated to registers 
                                    996 ;s                         Allocated to registers r5 r6 r7 
                                    997 ;__1310720023              Allocated to registers 
                                    998 ;s                         Allocated to registers r5 r6 r7 
                                    999 ;__1310720025              Allocated to registers 
                                   1000 ;s                         Allocated to registers r5 r6 r7 
                                   1001 ;__2621440034              Allocated to registers 
                                   1002 ;s                         Allocated to registers r5 r6 r7 
                                   1003 ;__4587520038              Allocated to registers 
                                   1004 ;s                         Allocated to registers r5 r6 r7 
                                   1005 ;__4587520040              Allocated to registers 
                                   1006 ;s                         Allocated to registers r5 r6 r7 
                                   1007 ;__4587520042              Allocated to registers 
                                   1008 ;s                         Allocated to registers r5 r6 r7 
                                   1009 ;__3276800044              Allocated to registers 
                                   1010 ;s                         Allocated to registers r5 r6 r7 
                                   1011 ;__1310720046              Allocated to registers 
                                   1012 ;s                         Allocated to registers r5 r6 r7 
                                   1013 ;sloc0                     Allocated to stack - _bp +1
                                   1014 ;sloc1                     Allocated to stack - _bp +2
                                   1015 ;sloc2                     Allocated to stack - _bp +4
                                   1016 ;sloc3                     Allocated to stack - _bp +6
                                   1017 ;sloc4                     Allocated to stack - _bp +8
                                   1018 ;sloc5                     Allocated to stack - _bp +10
                                   1019 ;sloc6                     Allocated to stack - _bp +12
                                   1020 ;------------------------------------------------------------
                                   1021 ;	life.c:262: void main(void) {
                                   1022 ;	-----------------------------------------
                                   1023 ;	 function main
                                   1024 ;	-----------------------------------------
      002318                       1025 _main:
      002318 C0 10            [24] 1026 	push	_bp
      00231A E5 81            [12] 1027 	mov	a,sp
      00231C F5 10            [12] 1028 	mov	_bp,a
      00231E 24 0D            [12] 1029 	add	a,#0x0d
      002320 F5 81            [12] 1030 	mov	sp,a
                                   1031 ;	life.c:263: IT0 = 1;
                                   1032 ;	assignBit
      002322 D2 88            [12] 1033 	setb	_IT0
                                   1034 ;	life.c:264: IT1 = 1;
                                   1035 ;	assignBit
      002324 D2 8A            [12] 1036 	setb	_IT1
                                   1037 ;	life.c:265: EX0 = 1;
                                   1038 ;	assignBit
      002326 D2 A8            [12] 1039 	setb	_EX0
                                   1040 ;	life.c:266: EX1 = 1;
                                   1041 ;	assignBit
      002328 D2 AA            [12] 1042 	setb	_EX1
                                   1043 ;	life.c:267: EA = 1;	
                                   1044 ;	assignBit
      00232A D2 AF            [12] 1045 	setb	_EA
                                   1046 ;	life.c:268: P1_7 = 1;
                                   1047 ;	assignBit
      00232C D2 97            [12] 1048 	setb	_P1_7
                                   1049 ;	life.c:270: srand(RND);
      00232E 90 80 00         [24] 1050 	mov	dptr,#_RND
      002331 E0               [24] 1051 	movx	a,@dptr
      002332 FE               [12] 1052 	mov	r6,a
      002333 A3               [24] 1053 	inc	dptr
      002334 E0               [24] 1054 	movx	a,@dptr
      002335 FF               [12] 1055 	mov	r7,a
      002336 8E 82            [24] 1056 	mov	dpl,r6
      002338 8F 83            [24] 1057 	mov	dph,r7
      00233A 12 2D 17         [24] 1058 	lcall	_srand
                                   1059 ;	life.c:272: OE76 = OE76_0;
      00233D 78 33            [12] 1060 	mov	r0,#_OE76
      00233F 76 3F            [12] 1061 	mov	@r0,#0x3f
                                   1062 ;	life.c:273: flashOE();
      002341 12 20 EF         [24] 1063 	lcall	_flashOE
                                   1064 ;	life.c:275: printstr("\033[?25h\033[m");
      002344 7D 4E            [12] 1065 	mov	r5,#___str_7
      002346 7E 30            [12] 1066 	mov	r6,#(___str_7 >> 8)
      002348 7F 80            [12] 1067 	mov	r7,#0x80
                                   1068 ;	life.c:68: return;
      00234A                       1069 00211$:
                                   1070 ;	life.c:66: for (; *s; s++) putchar(*s);
      00234A 8D 82            [24] 1071 	mov	dpl,r5
      00234C 8E 83            [24] 1072 	mov	dph,r6
      00234E 8F F0            [24] 1073 	mov	b,r7
      002350 12 2E F2         [24] 1074 	lcall	__gptrget
      002353 FC               [12] 1075 	mov	r4,a
      002354 60 10            [24] 1076 	jz	00151$
      002356 7B 00            [12] 1077 	mov	r3,#0x00
      002358 8C 82            [24] 1078 	mov	dpl,r4
      00235A 8B 83            [24] 1079 	mov	dph,r3
      00235C 12 20 B5         [24] 1080 	lcall	_putchar
      00235F 0D               [12] 1081 	inc	r5
                                   1082 ;	life.c:275: printstr("\033[?25h\033[m");
      002360 BD 00 E7         [24] 1083 	cjne	r5,#0x00,00211$
      002363 0E               [12] 1084 	inc	r6
      002364 80 E4            [24] 1085 	sjmp	00211$
      002366                       1086 00151$:
                                   1087 ;	life.c:277: for (i0 = 0; !i0; ) {	
      002366 78 31            [12] 1088 	mov	r0,#_i0
      002368 76 00            [12] 1089 	mov	@r0,#0x00
      00236A                       1090 00258$:
                                   1091 ;	life.c:278: printstr("LIFE INIT T L R P\r\n");
      00236A 7D 58            [12] 1092 	mov	r5,#___str_8
      00236C 7E 30            [12] 1093 	mov	r6,#(___str_8 >> 8)
      00236E 7F 80            [12] 1094 	mov	r7,#0x80
                                   1095 ;	life.c:68: return;
      002370                       1096 00214$:
                                   1097 ;	life.c:66: for (; *s; s++) putchar(*s);
      002370 8D 82            [24] 1098 	mov	dpl,r5
      002372 8E 83            [24] 1099 	mov	dph,r6
      002374 8F F0            [24] 1100 	mov	b,r7
      002376 12 2E F2         [24] 1101 	lcall	__gptrget
      002379 FC               [12] 1102 	mov	r4,a
      00237A 60 10            [24] 1103 	jz	00110$
      00237C 7B 00            [12] 1104 	mov	r3,#0x00
      00237E 8C 82            [24] 1105 	mov	dpl,r4
      002380 8B 83            [24] 1106 	mov	dph,r3
      002382 12 20 B5         [24] 1107 	lcall	_putchar
      002385 0D               [12] 1108 	inc	r5
                                   1109 ;	life.c:279: while (1) {
      002386 BD 00 E7         [24] 1110 	cjne	r5,#0x00,00214$
      002389 0E               [12] 1111 	inc	r6
      00238A 80 E4            [24] 1112 	sjmp	00214$
      00238C                       1113 00110$:
                                   1114 ;	life.c:280: c = toupper(getchar());
      00238C 12 20 BA         [24] 1115 	lcall	_getchar
      00238F 12 2E CB         [24] 1116 	lcall	_toupper
      002392 AE 82            [24] 1117 	mov	r6,dpl
      002394 AF 83            [24] 1118 	mov	r7,dph
      002396 78 3A            [12] 1119 	mov	r0,#_c
      002398 A6 06            [24] 1120 	mov	@r0,ar6
      00239A 08               [12] 1121 	inc	r0
      00239B A6 07            [24] 1122 	mov	@r0,ar7
                                   1123 ;	life.c:281: if (i0 || (c == (int)'T')) goto term;
      00239D 78 31            [12] 1124 	mov	r0,#_i0
      00239F E6               [12] 1125 	mov	a,@r0
      0023A0 60 03            [24] 1126 	jz	00551$
      0023A2 02 2C 23         [24] 1127 	ljmp	00149$
      0023A5                       1128 00551$:
      0023A5 BE 54 06         [24] 1129 	cjne	r6,#0x54,00552$
      0023A8 BF 00 03         [24] 1130 	cjne	r7,#0x00,00552$
      0023AB 02 2C 23         [24] 1131 	ljmp	00149$
      0023AE                       1132 00552$:
                                   1133 ;	life.c:282: else if ((c == (int)'L') || (c == (int)'R') || (c == (int)'P')) break;
      0023AE BE 4C 05         [24] 1134 	cjne	r6,#0x4c,00553$
      0023B1 BF 00 02         [24] 1135 	cjne	r7,#0x00,00553$
      0023B4 80 0E            [24] 1136 	sjmp	00305$
      0023B6                       1137 00553$:
      0023B6 BE 52 05         [24] 1138 	cjne	r6,#0x52,00554$
      0023B9 BF 00 02         [24] 1139 	cjne	r7,#0x00,00554$
      0023BC 80 06            [24] 1140 	sjmp	00305$
      0023BE                       1141 00554$:
      0023BE BE 50 CB         [24] 1142 	cjne	r6,#0x50,00110$
      0023C1 BF 00 C8         [24] 1143 	cjne	r7,#0x00,00110$
                                   1144 ;	life.c:285: reload:
      0023C4                       1145 00305$:
      0023C4                       1146 00112$:
                                   1147 ;	life.c:154: memset(u, 0, sizeof (u));
      0023C4 E4               [12] 1148 	clr	a
      0023C5 C0 E0            [24] 1149 	push	acc
      0023C7 74 24            [12] 1150 	mov	a,#0x24
      0023C9 C0 E0            [24] 1151 	push	acc
      0023CB E4               [12] 1152 	clr	a
      0023CC C0 E0            [24] 1153 	push	acc
      0023CE 90 88 00         [24] 1154 	mov	dptr,#_u
      0023D1 75 F0 00         [24] 1155 	mov	b,#0x00
      0023D4 12 2E 61         [24] 1156 	lcall	_memset
      0023D7 15 81            [12] 1157 	dec	sp
      0023D9 15 81            [12] 1158 	dec	sp
      0023DB 15 81            [12] 1159 	dec	sp
                                   1160 ;	life.c:155: memset(pu, 0, sizeof (pu));
      0023DD E4               [12] 1161 	clr	a
      0023DE C0 E0            [24] 1162 	push	acc
      0023E0 74 24            [12] 1163 	mov	a,#0x24
      0023E2 C0 E0            [24] 1164 	push	acc
      0023E4 E4               [12] 1165 	clr	a
      0023E5 C0 E0            [24] 1166 	push	acc
      0023E7 90 64 00         [24] 1167 	mov	dptr,#_pu
      0023EA 75 F0 00         [24] 1168 	mov	b,#0x00
      0023ED 12 2E 61         [24] 1169 	lcall	_memset
      0023F0 15 81            [12] 1170 	dec	sp
      0023F2 15 81            [12] 1171 	dec	sp
      0023F4 15 81            [12] 1172 	dec	sp
                                   1173 ;	life.c:287: if (c == (int)'L') loadiu();
      0023F6 78 3A            [12] 1174 	mov	r0,#_c
      0023F8 B6 4C 06         [24] 1175 	cjne	@r0,#0x4c,00557$
      0023FB 08               [12] 1176 	inc	r0
      0023FC B6 00 02         [24] 1177 	cjne	@r0,#0x00,00557$
      0023FF 80 03            [24] 1178 	sjmp	00558$
      002401                       1179 00557$:
      002401 02 25 7C         [24] 1180 	ljmp	00116$
      002404                       1181 00558$:
                                   1182 ;	life.c:161: j = 0;
      002404 78 38            [12] 1183 	mov	r0,#_j
      002406 E4               [12] 1184 	clr	a
      002407 F6               [12] 1185 	mov	@r0,a
      002408 08               [12] 1186 	inc	r0
      002409 F6               [12] 1187 	mov	@r0,a
                                   1188 ;	life.c:163: printstr("LOAD 0 1 ~ # <");
      00240A 7D 34            [12] 1189 	mov	r5,#___str_4
      00240C 7E 30            [12] 1190 	mov	r6,#(___str_4 >> 8)
      00240E 7F 80            [12] 1191 	mov	r7,#0x80
                                   1192 ;	life.c:68: return;
      002410                       1193 00217$:
                                   1194 ;	life.c:66: for (; *s; s++) putchar(*s);
      002410 8D 82            [24] 1195 	mov	dpl,r5
      002412 8E 83            [24] 1196 	mov	dph,r6
      002414 8F F0            [24] 1197 	mov	b,r7
      002416 12 2E F2         [24] 1198 	lcall	__gptrget
      002419 FC               [12] 1199 	mov	r4,a
      00241A 60 10            [24] 1200 	jz	00156$
      00241C 7B 00            [12] 1201 	mov	r3,#0x00
      00241E 8C 82            [24] 1202 	mov	dpl,r4
      002420 8B 83            [24] 1203 	mov	dph,r3
      002422 12 20 B5         [24] 1204 	lcall	_putchar
      002425 0D               [12] 1205 	inc	r5
                                   1206 ;	life.c:163: printstr("LOAD 0 1 ~ # <");
      002426 BD 00 E7         [24] 1207 	cjne	r5,#0x00,00217$
      002429 0E               [12] 1208 	inc	r6
      00242A 80 E4            [24] 1209 	sjmp	00217$
      00242C                       1210 00156$:
                                   1211 ;	life.c:165: for (y = 0; y < (H * W); y += W) {
      00242C 78 36            [12] 1212 	mov	r0,#_y
      00242E E4               [12] 1213 	clr	a
      00242F F6               [12] 1214 	mov	@r0,a
      002430 08               [12] 1215 	inc	r0
      002431 F6               [12] 1216 	mov	@r0,a
      002432                       1217 00220$:
                                   1218 ;	life.c:166: for (x = 0; x < W; x++) {
      002432 78 34            [12] 1219 	mov	r0,#_x
      002434 E4               [12] 1220 	clr	a
      002435 F6               [12] 1221 	mov	@r0,a
      002436 08               [12] 1222 	inc	r0
      002437 F6               [12] 1223 	mov	@r0,a
                                   1224 ;	life.c:167: while (1) {
      002438                       1225 00169$:
                                   1226 ;	life.c:168: c = getchar();
      002438 12 20 BA         [24] 1227 	lcall	_getchar
      00243B AE 82            [24] 1228 	mov	r6,dpl
      00243D AF 83            [24] 1229 	mov	r7,dph
      00243F 78 3A            [12] 1230 	mov	r0,#_c
      002441 A6 06            [24] 1231 	mov	@r0,ar6
      002443 08               [12] 1232 	inc	r0
      002444 A6 07            [24] 1233 	mov	@r0,ar7
                                   1234 ;	life.c:169: if (c == (int)'0') {
      002446 BE 30 25         [24] 1235 	cjne	r6,#0x30,00167$
      002449 BF 00 22         [24] 1236 	cjne	r7,#0x00,00167$
                                   1237 ;	life.c:170: iu[y + x] = 0;
      00244C 78 36            [12] 1238 	mov	r0,#_y
      00244E 79 34            [12] 1239 	mov	r1,#_x
      002450 E7               [12] 1240 	mov	a,@r1
      002451 26               [12] 1241 	add	a,@r0
      002452 FC               [12] 1242 	mov	r4,a
      002453 09               [12] 1243 	inc	r1
      002454 E7               [12] 1244 	mov	a,@r1
      002455 08               [12] 1245 	inc	r0
      002456 36               [12] 1246 	addc	a,@r0
      002457 FD               [12] 1247 	mov	r5,a
      002458 EC               [12] 1248 	mov	a,r4
      002459 24 00            [12] 1249 	add	a,#_iu
      00245B F5 82            [12] 1250 	mov	dpl,a
      00245D ED               [12] 1251 	mov	a,r5
      00245E 34 40            [12] 1252 	addc	a,#(_iu >> 8)
      002460 F5 83            [12] 1253 	mov	dph,a
      002462 E4               [12] 1254 	clr	a
      002463 F0               [24] 1255 	movx	@dptr,a
                                   1256 ;	life.c:171: j++;
      002464 78 38            [12] 1257 	mov	r0,#_j
      002466 06               [12] 1258 	inc	@r0
      002467 B6 00 02         [24] 1259 	cjne	@r0,#0x00,00563$
      00246A 08               [12] 1260 	inc	r0
      00246B 06               [12] 1261 	inc	@r0
      00246C                       1262 00563$:
                                   1263 ;	life.c:172: break;
      00246C 80 39            [24] 1264 	sjmp	00172$
      00246E                       1265 00167$:
                                   1266 ;	life.c:173: } else if (c == (int)'1') {
      00246E BE 31 26         [24] 1267 	cjne	r6,#0x31,00165$
      002471 BF 00 23         [24] 1268 	cjne	r7,#0x00,00165$
                                   1269 ;	life.c:174: iu[y + x] = 1;
      002474 78 36            [12] 1270 	mov	r0,#_y
      002476 79 34            [12] 1271 	mov	r1,#_x
      002478 E7               [12] 1272 	mov	a,@r1
      002479 26               [12] 1273 	add	a,@r0
      00247A FC               [12] 1274 	mov	r4,a
      00247B 09               [12] 1275 	inc	r1
      00247C E7               [12] 1276 	mov	a,@r1
      00247D 08               [12] 1277 	inc	r0
      00247E 36               [12] 1278 	addc	a,@r0
      00247F FD               [12] 1279 	mov	r5,a
      002480 EC               [12] 1280 	mov	a,r4
      002481 24 00            [12] 1281 	add	a,#_iu
      002483 F5 82            [12] 1282 	mov	dpl,a
      002485 ED               [12] 1283 	mov	a,r5
      002486 34 40            [12] 1284 	addc	a,#(_iu >> 8)
      002488 F5 83            [12] 1285 	mov	dph,a
      00248A 74 01            [12] 1286 	mov	a,#0x01
      00248C F0               [24] 1287 	movx	@dptr,a
                                   1288 ;	life.c:175: j++;
      00248D 78 38            [12] 1289 	mov	r0,#_j
      00248F 06               [12] 1290 	inc	@r0
      002490 B6 00 02         [24] 1291 	cjne	@r0,#0x00,00566$
      002493 08               [12] 1292 	inc	r0
      002494 06               [12] 1293 	inc	@r0
      002495                       1294 00566$:
                                   1295 ;	life.c:176: break;
      002495 80 10            [24] 1296 	sjmp	00172$
      002497                       1297 00165$:
                                   1298 ;	life.c:177: } else if (c == (int)'~') goto br_inner;
      002497 BE 7E 05         [24] 1299 	cjne	r6,#0x7e,00567$
      00249A BF 00 02         [24] 1300 	cjne	r7,#0x00,00567$
      00249D 80 21            [24] 1301 	sjmp	00221$
      00249F                       1302 00567$:
                                   1303 ;	life.c:178: else if (c == (int)'#') goto out;
                                   1304 ;	life.c:182: break;
      00249F BE 23 96         [24] 1305 	cjne	r6,#0x23,00169$
      0024A2 BF 00 93         [24] 1306 	cjne	r7,#0x00,00169$
      0024A5 80 31            [24] 1307 	sjmp	00182$
      0024A7                       1308 00172$:
                                   1309 ;	life.c:166: for (x = 0; x < W; x++) {
      0024A7 78 34            [12] 1310 	mov	r0,#_x
      0024A9 06               [12] 1311 	inc	@r0
      0024AA B6 00 02         [24] 1312 	cjne	@r0,#0x00,00569$
      0024AD 08               [12] 1313 	inc	r0
      0024AE 06               [12] 1314 	inc	@r0
      0024AF                       1315 00569$:
      0024AF 78 34            [12] 1316 	mov	r0,#_x
      0024B1 C3               [12] 1317 	clr	c
      0024B2 E6               [12] 1318 	mov	a,@r0
      0024B3 94 30            [12] 1319 	subb	a,#0x30
      0024B5 08               [12] 1320 	inc	r0
      0024B6 E6               [12] 1321 	mov	a,@r0
      0024B7 64 80            [12] 1322 	xrl	a,#0x80
      0024B9 94 80            [12] 1323 	subb	a,#0x80
      0024BB 50 03            [24] 1324 	jnc	00570$
      0024BD 02 24 38         [24] 1325 	ljmp	00169$
      0024C0                       1326 00570$:
      0024C0                       1327 00221$:
                                   1328 ;	life.c:165: for (y = 0; y < (H * W); y += W) {
      0024C0 78 36            [12] 1329 	mov	r0,#_y
      0024C2 74 30            [12] 1330 	mov	a,#0x30
      0024C4 26               [12] 1331 	add	a,@r0
      0024C5 F6               [12] 1332 	mov	@r0,a
      0024C6 E4               [12] 1333 	clr	a
      0024C7 08               [12] 1334 	inc	r0
      0024C8 36               [12] 1335 	addc	a,@r0
      0024C9 F6               [12] 1336 	mov	@r0,a
      0024CA 78 36            [12] 1337 	mov	r0,#_y
      0024CC C3               [12] 1338 	clr	c
      0024CD 08               [12] 1339 	inc	r0
      0024CE E6               [12] 1340 	mov	a,@r0
      0024CF 64 80            [12] 1341 	xrl	a,#0x80
      0024D1 94 A4            [12] 1342 	subb	a,#0xa4
      0024D3 50 03            [24] 1343 	jnc	00571$
      0024D5 02 24 32         [24] 1344 	ljmp	00220$
      0024D8                       1345 00571$:
                                   1346 ;	life.c:186: out:
      0024D8                       1347 00182$:
                                   1348 ;	life.c:187: if (c != (int)'#')
      0024D8 BE 23 05         [24] 1349 	cjne	r6,#0x23,00572$
      0024DB BF 00 02         [24] 1350 	cjne	r7,#0x00,00572$
      0024DE 80 14            [24] 1351 	sjmp	00181$
      0024E0                       1352 00572$:
                                   1353 ;	life.c:188: while (1) {
      0024E0                       1354 00178$:
                                   1355 ;	life.c:189: c = getchar();
      0024E0 12 20 BA         [24] 1356 	lcall	_getchar
      0024E3 AE 82            [24] 1357 	mov	r6,dpl
      0024E5 AF 83            [24] 1358 	mov	r7,dph
      0024E7 78 3A            [12] 1359 	mov	r0,#_c
      0024E9 A6 06            [24] 1360 	mov	@r0,ar6
      0024EB 08               [12] 1361 	inc	r0
      0024EC A6 07            [24] 1362 	mov	@r0,ar7
                                   1363 ;	life.c:190: if (c == (int)'#') break;
      0024EE BE 23 EF         [24] 1364 	cjne	r6,#0x23,00178$
      0024F1 BF 00 EC         [24] 1365 	cjne	r7,#0x00,00178$
      0024F4                       1366 00181$:
                                   1367 ;	life.c:192: print16x(j);
      0024F4 78 38            [12] 1368 	mov	r0,#_j
      0024F6 86 06            [24] 1369 	mov	ar6,@r0
      0024F8 08               [12] 1370 	inc	r0
      0024F9 86 07            [24] 1371 	mov	ar7,@r0
      0024FB 8E 04            [24] 1372 	mov	ar4,r6
                                   1373 ;	life.c:57: putchar(digits[(a >> 12) & 0xf]);
      0024FD EF               [12] 1374 	mov	a,r7
      0024FE FD               [12] 1375 	mov	r5,a
      0024FF C4               [12] 1376 	swap	a
      002500 54 0F            [12] 1377 	anl	a,#(0x0f&0x0f)
      002502 24 21            [12] 1378 	add	a,#_digits
      002504 F9               [12] 1379 	mov	r1,a
      002505 87 07            [24] 1380 	mov	ar7,@r1
      002507 7E 00            [12] 1381 	mov	r6,#0x00
      002509 8F 82            [24] 1382 	mov	dpl,r7
      00250B 8E 83            [24] 1383 	mov	dph,r6
      00250D 12 20 B5         [24] 1384 	lcall	_putchar
                                   1385 ;	life.c:58: putchar(digits[(a >> 8) & 0xf]);
      002510 8D 07            [24] 1386 	mov	ar7,r5
      002512 53 07 0F         [24] 1387 	anl	ar7,#0x0f
      002515 EF               [12] 1388 	mov	a,r7
      002516 24 21            [12] 1389 	add	a,#_digits
      002518 F9               [12] 1390 	mov	r1,a
      002519 87 07            [24] 1391 	mov	ar7,@r1
      00251B 7E 00            [12] 1392 	mov	r6,#0x00
      00251D 8F 82            [24] 1393 	mov	dpl,r7
      00251F 8E 83            [24] 1394 	mov	dph,r6
      002521 12 20 B5         [24] 1395 	lcall	_putchar
                                   1396 ;	life.c:59: putchar(digits[(a >> 4) & 0xf]);
      002524 8C 06            [24] 1397 	mov	ar6,r4
      002526 ED               [12] 1398 	mov	a,r5
      002527 C4               [12] 1399 	swap	a
      002528 CE               [12] 1400 	xch	a,r6
      002529 C4               [12] 1401 	swap	a
      00252A 54 0F            [12] 1402 	anl	a,#0x0f
      00252C 6E               [12] 1403 	xrl	a,r6
      00252D CE               [12] 1404 	xch	a,r6
      00252E 54 0F            [12] 1405 	anl	a,#0x0f
      002530 CE               [12] 1406 	xch	a,r6
      002531 6E               [12] 1407 	xrl	a,r6
      002532 CE               [12] 1408 	xch	a,r6
      002533 53 06 0F         [24] 1409 	anl	ar6,#0x0f
      002536 EE               [12] 1410 	mov	a,r6
      002537 24 21            [12] 1411 	add	a,#_digits
      002539 F9               [12] 1412 	mov	r1,a
      00253A 87 07            [24] 1413 	mov	ar7,@r1
      00253C 7E 00            [12] 1414 	mov	r6,#0x00
      00253E 8F 82            [24] 1415 	mov	dpl,r7
      002540 8E 83            [24] 1416 	mov	dph,r6
      002542 12 20 B5         [24] 1417 	lcall	_putchar
                                   1418 ;	life.c:60: putchar(digits[a & 0xf]);
      002545 53 04 0F         [24] 1419 	anl	ar4,#0x0f
      002548 EC               [12] 1420 	mov	a,r4
      002549 24 21            [12] 1421 	add	a,#_digits
      00254B F9               [12] 1422 	mov	r1,a
      00254C 87 07            [24] 1423 	mov	ar7,@r1
      00254E 7E 00            [12] 1424 	mov	r6,#0x00
      002550 8F 82            [24] 1425 	mov	dpl,r7
      002552 8E 83            [24] 1426 	mov	dph,r6
      002554 12 20 B5         [24] 1427 	lcall	_putchar
                                   1428 ;	life.c:193: printstr(">\r\n");
      002557 7D 43            [12] 1429 	mov	r5,#___str_5
      002559 7E 30            [12] 1430 	mov	r6,#(___str_5 >> 8)
      00255B 7F 80            [12] 1431 	mov	r7,#0x80
                                   1432 ;	life.c:68: return;
      00255D                       1433 00223$:
                                   1434 ;	life.c:66: for (; *s; s++) putchar(*s);
      00255D 8D 82            [24] 1435 	mov	dpl,r5
      00255F 8E 83            [24] 1436 	mov	dph,r6
      002561 8F F0            [24] 1437 	mov	b,r7
      002563 12 2E F2         [24] 1438 	lcall	__gptrget
      002566 FC               [12] 1439 	mov	r4,a
      002567 70 03            [24] 1440 	jnz	00575$
      002569 02 26 35         [24] 1441 	ljmp	00117$
      00256C                       1442 00575$:
      00256C 7B 00            [12] 1443 	mov	r3,#0x00
      00256E 8C 82            [24] 1444 	mov	dpl,r4
      002570 8B 83            [24] 1445 	mov	dph,r3
      002572 12 20 B5         [24] 1446 	lcall	_putchar
      002575 0D               [12] 1447 	inc	r5
                                   1448 ;	life.c:287: if (c == (int)'L') loadiu();
      002576 BD 00 E4         [24] 1449 	cjne	r5,#0x00,00223$
      002579 0E               [12] 1450 	inc	r6
      00257A 80 E1            [24] 1451 	sjmp	00223$
      00257C                       1452 00116$:
                                   1453 ;	life.c:288: else if (c == (int)'R') loadriu();
      00257C 78 3A            [12] 1454 	mov	r0,#_c
      00257E B6 52 06         [24] 1455 	cjne	@r0,#0x52,00577$
      002581 08               [12] 1456 	inc	r0
      002582 B6 00 02         [24] 1457 	cjne	@r0,#0x00,00577$
      002585 80 03            [24] 1458 	sjmp	00578$
      002587                       1459 00577$:
      002587 02 26 35         [24] 1460 	ljmp	00117$
      00258A                       1461 00578$:
                                   1462 ;	life.c:199: j = 0;
      00258A 78 38            [12] 1463 	mov	r0,#_j
      00258C E4               [12] 1464 	clr	a
      00258D F6               [12] 1465 	mov	@r0,a
      00258E 08               [12] 1466 	inc	r0
      00258F F6               [12] 1467 	mov	@r0,a
                                   1468 ;	life.c:201: printstr("RANDOM");
      002590 7D 47            [12] 1469 	mov	r5,#___str_6
      002592 7E 30            [12] 1470 	mov	r6,#(___str_6 >> 8)
      002594 7F 80            [12] 1471 	mov	r7,#0x80
                                   1472 ;	life.c:68: return;
      002596                       1473 00226$:
                                   1474 ;	life.c:66: for (; *s; s++) putchar(*s);
      002596 8D 82            [24] 1475 	mov	dpl,r5
      002598 8E 83            [24] 1476 	mov	dph,r6
      00259A 8F F0            [24] 1477 	mov	b,r7
      00259C 12 2E F2         [24] 1478 	lcall	__gptrget
      00259F FC               [12] 1479 	mov	r4,a
      0025A0 60 10            [24] 1480 	jz	00188$
      0025A2 7B 00            [12] 1481 	mov	r3,#0x00
      0025A4 8C 82            [24] 1482 	mov	dpl,r4
      0025A6 8B 83            [24] 1483 	mov	dph,r3
      0025A8 12 20 B5         [24] 1484 	lcall	_putchar
      0025AB 0D               [12] 1485 	inc	r5
                                   1486 ;	life.c:201: printstr("RANDOM");
      0025AC BD 00 E7         [24] 1487 	cjne	r5,#0x00,00226$
      0025AF 0E               [12] 1488 	inc	r6
      0025B0 80 E4            [24] 1489 	sjmp	00226$
      0025B2                       1490 00188$:
                                   1491 ;	life.c:203: for (y = 0; y < (H * W); y += W)
      0025B2 78 36            [12] 1492 	mov	r0,#_y
      0025B4 E4               [12] 1493 	clr	a
      0025B5 F6               [12] 1494 	mov	@r0,a
      0025B6 08               [12] 1495 	inc	r0
      0025B7 F6               [12] 1496 	mov	@r0,a
      0025B8                       1497 00230$:
                                   1498 ;	life.c:204: for (x = 0; x < W; x++)
      0025B8 78 34            [12] 1499 	mov	r0,#_x
      0025BA E4               [12] 1500 	clr	a
      0025BB F6               [12] 1501 	mov	@r0,a
      0025BC 08               [12] 1502 	inc	r0
      0025BD F6               [12] 1503 	mov	@r0,a
      0025BE                       1504 00228$:
                                   1505 ;	life.c:205: iu[y + x] = rand() & 1;
      0025BE 78 36            [12] 1506 	mov	r0,#_y
      0025C0 79 34            [12] 1507 	mov	r1,#_x
      0025C2 E7               [12] 1508 	mov	a,@r1
      0025C3 26               [12] 1509 	add	a,@r0
      0025C4 FE               [12] 1510 	mov	r6,a
      0025C5 09               [12] 1511 	inc	r1
      0025C6 E7               [12] 1512 	mov	a,@r1
      0025C7 08               [12] 1513 	inc	r0
      0025C8 36               [12] 1514 	addc	a,@r0
      0025C9 FF               [12] 1515 	mov	r7,a
      0025CA EE               [12] 1516 	mov	a,r6
      0025CB 24 00            [12] 1517 	add	a,#_iu
      0025CD FE               [12] 1518 	mov	r6,a
      0025CE EF               [12] 1519 	mov	a,r7
      0025CF 34 40            [12] 1520 	addc	a,#(_iu >> 8)
      0025D1 FF               [12] 1521 	mov	r7,a
      0025D2 C0 07            [24] 1522 	push	ar7
      0025D4 C0 06            [24] 1523 	push	ar6
      0025D6 12 2C 53         [24] 1524 	lcall	_rand
      0025D9 AC 82            [24] 1525 	mov	r4,dpl
      0025DB D0 06            [24] 1526 	pop	ar6
      0025DD D0 07            [24] 1527 	pop	ar7
      0025DF 53 04 01         [24] 1528 	anl	ar4,#0x01
      0025E2 8E 82            [24] 1529 	mov	dpl,r6
      0025E4 8F 83            [24] 1530 	mov	dph,r7
      0025E6 EC               [12] 1531 	mov	a,r4
      0025E7 F0               [24] 1532 	movx	@dptr,a
                                   1533 ;	life.c:204: for (x = 0; x < W; x++)
      0025E8 78 34            [12] 1534 	mov	r0,#_x
      0025EA 06               [12] 1535 	inc	@r0
      0025EB B6 00 02         [24] 1536 	cjne	@r0,#0x00,00581$
      0025EE 08               [12] 1537 	inc	r0
      0025EF 06               [12] 1538 	inc	@r0
      0025F0                       1539 00581$:
      0025F0 78 34            [12] 1540 	mov	r0,#_x
      0025F2 C3               [12] 1541 	clr	c
      0025F3 E6               [12] 1542 	mov	a,@r0
      0025F4 94 30            [12] 1543 	subb	a,#0x30
      0025F6 08               [12] 1544 	inc	r0
      0025F7 E6               [12] 1545 	mov	a,@r0
      0025F8 64 80            [12] 1546 	xrl	a,#0x80
      0025FA 94 80            [12] 1547 	subb	a,#0x80
      0025FC 40 C0            [24] 1548 	jc	00228$
                                   1549 ;	life.c:203: for (y = 0; y < (H * W); y += W)
      0025FE 78 36            [12] 1550 	mov	r0,#_y
      002600 74 30            [12] 1551 	mov	a,#0x30
      002602 26               [12] 1552 	add	a,@r0
      002603 F6               [12] 1553 	mov	@r0,a
      002604 E4               [12] 1554 	clr	a
      002605 08               [12] 1555 	inc	r0
      002606 36               [12] 1556 	addc	a,@r0
      002607 F6               [12] 1557 	mov	@r0,a
      002608 78 36            [12] 1558 	mov	r0,#_y
      00260A C3               [12] 1559 	clr	c
      00260B 08               [12] 1560 	inc	r0
      00260C E6               [12] 1561 	mov	a,@r0
      00260D 64 80            [12] 1562 	xrl	a,#0x80
      00260F 94 A4            [12] 1563 	subb	a,#0xa4
      002611 40 A5            [24] 1564 	jc	00230$
                                   1565 ;	life.c:207: printstr("\r\n");
      002613 7D 2A            [12] 1566 	mov	r5,#___str_2
      002615 7E 30            [12] 1567 	mov	r6,#(___str_2 >> 8)
      002617 7F 80            [12] 1568 	mov	r7,#0x80
                                   1569 ;	life.c:68: return;
      002619                       1570 00233$:
                                   1571 ;	life.c:66: for (; *s; s++) putchar(*s);
      002619 8D 82            [24] 1572 	mov	dpl,r5
      00261B 8E 83            [24] 1573 	mov	dph,r6
      00261D 8F F0            [24] 1574 	mov	b,r7
      00261F 12 2E F2         [24] 1575 	lcall	__gptrget
      002622 FC               [12] 1576 	mov	r4,a
      002623 60 10            [24] 1577 	jz	00117$
      002625 7B 00            [12] 1578 	mov	r3,#0x00
      002627 8C 82            [24] 1579 	mov	dpl,r4
      002629 8B 83            [24] 1580 	mov	dph,r3
      00262B 12 20 B5         [24] 1581 	lcall	_putchar
      00262E 0D               [12] 1582 	inc	r5
                                   1583 ;	life.c:288: else if (c == (int)'R') loadriu();
      00262F BD 00 E7         [24] 1584 	cjne	r5,#0x00,00233$
      002632 0E               [12] 1585 	inc	r6
      002633 80 E4            [24] 1586 	sjmp	00233$
      002635                       1587 00117$:
                                   1588 ;	life.c:289: memcpy(u, iu, sizeof (iu));
      002635 E4               [12] 1589 	clr	a
      002636 C0 E0            [24] 1590 	push	acc
      002638 74 24            [12] 1591 	mov	a,#0x24
      00263A C0 E0            [24] 1592 	push	acc
      00263C 74 00            [12] 1593 	mov	a,#_iu
      00263E C0 E0            [24] 1594 	push	acc
      002640 74 40            [12] 1595 	mov	a,#(_iu >> 8)
      002642 C0 E0            [24] 1596 	push	acc
      002644 E4               [12] 1597 	clr	a
      002645 C0 E0            [24] 1598 	push	acc
      002647 90 88 00         [24] 1599 	mov	dptr,#_u
      00264A 75 F0 00         [24] 1600 	mov	b,#0x00
      00264D 12 2D CE         [24] 1601 	lcall	___memcpy
      002650 E5 81            [12] 1602 	mov	a,sp
      002652 24 FB            [12] 1603 	add	a,#0xfb
      002654 F5 81            [12] 1604 	mov	sp,a
                                   1605 ;	life.c:290: show(0);
      002656 75 82 00         [24] 1606 	mov	dpl,#0x00
      002659 12 20 FB         [24] 1607 	lcall	_show
                                   1608 ;	life.c:292: printstr("READY T L R P S\r\n");
      00265C 7D 6C            [12] 1609 	mov	r5,#___str_9
      00265E 7E 30            [12] 1610 	mov	r6,#(___str_9 >> 8)
      002660 7F 80            [12] 1611 	mov	r7,#0x80
                                   1612 ;	life.c:68: return;
      002662                       1613 00236$:
                                   1614 ;	life.c:66: for (; *s; s++) putchar(*s);
      002662 8D 82            [24] 1615 	mov	dpl,r5
      002664 8E 83            [24] 1616 	mov	dph,r6
      002666 8F F0            [24] 1617 	mov	b,r7
      002668 12 2E F2         [24] 1618 	lcall	__gptrget
      00266B FC               [12] 1619 	mov	r4,a
      00266C 60 10            [24] 1620 	jz	00130$
      00266E 7B 00            [12] 1621 	mov	r3,#0x00
      002670 8C 82            [24] 1622 	mov	dpl,r4
      002672 8B 83            [24] 1623 	mov	dph,r3
      002674 12 20 B5         [24] 1624 	lcall	_putchar
      002677 0D               [12] 1625 	inc	r5
                                   1626 ;	life.c:293: while (1) {
      002678 BD 00 E7         [24] 1627 	cjne	r5,#0x00,00236$
      00267B 0E               [12] 1628 	inc	r6
      00267C 80 E4            [24] 1629 	sjmp	00236$
      00267E                       1630 00130$:
                                   1631 ;	life.c:294: c = toupper(getchar());
      00267E 12 20 BA         [24] 1632 	lcall	_getchar
      002681 12 2E CB         [24] 1633 	lcall	_toupper
      002684 AE 82            [24] 1634 	mov	r6,dpl
      002686 AF 83            [24] 1635 	mov	r7,dph
      002688 78 3A            [12] 1636 	mov	r0,#_c
      00268A A6 06            [24] 1637 	mov	@r0,ar6
      00268C 08               [12] 1638 	inc	r0
      00268D A6 07            [24] 1639 	mov	@r0,ar7
                                   1640 ;	life.c:295: if (i0 || (c == (int)'T')) goto term;
      00268F 78 31            [12] 1641 	mov	r0,#_i0
      002691 E6               [12] 1642 	mov	a,@r0
      002692 60 03            [24] 1643 	jz	00588$
      002694 02 2C 23         [24] 1644 	ljmp	00149$
      002697                       1645 00588$:
      002697 BE 54 06         [24] 1646 	cjne	r6,#0x54,00589$
      00269A BF 00 03         [24] 1647 	cjne	r7,#0x00,00589$
      00269D 02 2C 23         [24] 1648 	ljmp	00149$
      0026A0                       1649 00589$:
                                   1650 ;	life.c:296: else if ((c == (int)'L') || (c == (int)'R') || (c == (int)'P')) goto reload;
      0026A0 BE 4C 06         [24] 1651 	cjne	r6,#0x4c,00590$
      0026A3 BF 00 03         [24] 1652 	cjne	r7,#0x00,00590$
      0026A6 02 23 C4         [24] 1653 	ljmp	00112$
      0026A9                       1654 00590$:
      0026A9 BE 52 06         [24] 1655 	cjne	r6,#0x52,00591$
      0026AC BF 00 03         [24] 1656 	cjne	r7,#0x00,00591$
      0026AF 02 23 C4         [24] 1657 	ljmp	00112$
      0026B2                       1658 00591$:
      0026B2 BE 50 06         [24] 1659 	cjne	r6,#0x50,00592$
      0026B5 BF 00 03         [24] 1660 	cjne	r7,#0x00,00592$
      0026B8 02 23 C4         [24] 1661 	ljmp	00112$
      0026BB                       1662 00592$:
                                   1663 ;	life.c:297: else if (c == (int)'S') break;
      0026BB BE 53 C0         [24] 1664 	cjne	r6,#0x53,00130$
      0026BE BF 00 BD         [24] 1665 	cjne	r7,#0x00,00130$
                                   1666 ;	life.c:111: generation[0] = 0u;
      0026C1 78 43            [12] 1667 	mov	r0,#_generation
      0026C3 76 00            [12] 1668 	mov	@r0,#0x00
      0026C5 08               [12] 1669 	inc	r0
      0026C6 76 00            [12] 1670 	mov	@r0,#0x00
                                   1671 ;	life.c:112: generation[1] = 0u;
      0026C8 78 45            [12] 1672 	mov	r0,#(_generation + 0x0002)
      0026CA 76 00            [12] 1673 	mov	@r0,#0x00
      0026CC 08               [12] 1674 	inc	r0
      0026CD 76 00            [12] 1675 	mov	@r0,#0x00
                                   1676 ;	life.c:302: for (i1 = 0; !i0 && !i1; ) {
      0026CF 78 32            [12] 1677 	mov	r0,#_i1
      0026D1 76 00            [12] 1678 	mov	@r0,#0x00
      0026D3                       1679 00253$:
      0026D3 78 31            [12] 1680 	mov	r0,#_i0
      0026D5 E6               [12] 1681 	mov	a,@r0
      0026D6 60 03            [24] 1682 	jz	00595$
      0026D8 02 2B F1         [24] 1683 	ljmp	00145$
      0026DB                       1684 00595$:
      0026DB 78 32            [12] 1685 	mov	r0,#_i1
      0026DD E6               [12] 1686 	mov	a,@r0
      0026DE 60 03            [24] 1687 	jz	00596$
      0026E0 02 2B F1         [24] 1688 	ljmp	00145$
      0026E3                       1689 00596$:
                                   1690 ;	life.c:303: show(1);
      0026E3 75 82 01         [24] 1691 	mov	dpl,#0x01
      0026E6 12 20 FB         [24] 1692 	lcall	_show
                                   1693 ;	life.c:213: fixed = 0;
      0026E9 78 3D            [12] 1694 	mov	r0,#_fixed
      0026EB 76 00            [12] 1695 	mov	@r0,#0x00
                                   1696 ;	life.c:214: cycle2 = 0;
      0026ED 78 3E            [12] 1697 	mov	r0,#_cycle2
      0026EF 76 00            [12] 1698 	mov	@r0,#0x00
                                   1699 ;	life.c:216: OE76 = OE76_0;
      0026F1 78 33            [12] 1700 	mov	r0,#_OE76
      0026F3 76 3F            [12] 1701 	mov	@r0,#0x3f
                                   1702 ;	life.c:217: flashOE();
      0026F5 12 20 EF         [24] 1703 	lcall	_flashOE
                                   1704 ;	life.c:219: for (y = 0; y < H; y++) {
      0026F8 78 36            [12] 1705 	mov	r0,#_y
      0026FA E4               [12] 1706 	clr	a
      0026FB F6               [12] 1707 	mov	@r0,a
      0026FC 08               [12] 1708 	inc	r0
      0026FD F6               [12] 1709 	mov	@r0,a
      0026FE                       1710 00240$:
                                   1711 ;	life.c:220: OE76 = OE76_0 | ((y & 0x0003u) << 6);
      0026FE 78 36            [12] 1712 	mov	r0,#_y
      002700 86 07            [24] 1713 	mov	ar7,@r0
      002702 53 07 03         [24] 1714 	anl	ar7,#0x03
      002705 EF               [12] 1715 	mov	a,r7
      002706 03               [12] 1716 	rr	a
      002707 03               [12] 1717 	rr	a
      002708 54 C0            [12] 1718 	anl	a,#0xc0
      00270A FF               [12] 1719 	mov	r7,a
      00270B 78 33            [12] 1720 	mov	r0,#_OE76
      00270D 74 3F            [12] 1721 	mov	a,#0x3f
      00270F 4F               [12] 1722 	orl	a,r7
      002710 F6               [12] 1723 	mov	@r0,a
                                   1724 ;	life.c:221: flashOE();
      002711 12 20 EF         [24] 1725 	lcall	_flashOE
                                   1726 ;	life.c:222: for (x = 0; x < W; x++) {
      002714 78 34            [12] 1727 	mov	r0,#_x
      002716 E4               [12] 1728 	clr	a
      002717 F6               [12] 1729 	mov	@r0,a
      002718 08               [12] 1730 	inc	r0
      002719 F6               [12] 1731 	mov	@r0,a
      00271A                       1732 00238$:
                                   1733 ;	life.c:223: n = -u[A2D(W, y, x)];
      00271A 78 36            [12] 1734 	mov	r0,#_y
      00271C E6               [12] 1735 	mov	a,@r0
      00271D C0 E0            [24] 1736 	push	acc
      00271F 08               [12] 1737 	inc	r0
      002720 E6               [12] 1738 	mov	a,@r0
      002721 C0 E0            [24] 1739 	push	acc
      002723 90 00 30         [24] 1740 	mov	dptr,#0x0030
      002726 12 2D 30         [24] 1741 	lcall	__mulint
      002729 C8               [12] 1742 	xch	a,r0
      00272A E5 10            [12] 1743 	mov	a,_bp
      00272C 24 04            [12] 1744 	add	a,#0x04
      00272E C8               [12] 1745 	xch	a,r0
      00272F A6 82            [24] 1746 	mov	@r0,dpl
      002731 08               [12] 1747 	inc	r0
      002732 A6 83            [24] 1748 	mov	@r0,dph
      002734 15 81            [12] 1749 	dec	sp
      002736 15 81            [12] 1750 	dec	sp
      002738 E5 10            [12] 1751 	mov	a,_bp
      00273A 24 04            [12] 1752 	add	a,#0x04
      00273C F8               [12] 1753 	mov	r0,a
      00273D 79 34            [12] 1754 	mov	r1,#_x
      00273F E7               [12] 1755 	mov	a,@r1
      002740 26               [12] 1756 	add	a,@r0
      002741 C0 E0            [24] 1757 	push	acc
      002743 09               [12] 1758 	inc	r1
      002744 E7               [12] 1759 	mov	a,@r1
      002745 08               [12] 1760 	inc	r0
      002746 36               [12] 1761 	addc	a,@r0
      002747 C0 E0            [24] 1762 	push	acc
      002749 E5 10            [12] 1763 	mov	a,_bp
      00274B 24 03            [12] 1764 	add	a,#0x03
      00274D F8               [12] 1765 	mov	r0,a
      00274E D0 E0            [24] 1766 	pop	acc
      002750 F6               [12] 1767 	mov	@r0,a
      002751 18               [12] 1768 	dec	r0
      002752 D0 E0            [24] 1769 	pop	acc
      002754 F6               [12] 1770 	mov	@r0,a
      002755 A8 10            [24] 1771 	mov	r0,_bp
      002757 08               [12] 1772 	inc	r0
      002758 08               [12] 1773 	inc	r0
      002759 E6               [12] 1774 	mov	a,@r0
      00275A 24 00            [12] 1775 	add	a,#_u
      00275C F5 82            [12] 1776 	mov	dpl,a
      00275E 08               [12] 1777 	inc	r0
      00275F E6               [12] 1778 	mov	a,@r0
      002760 34 88            [12] 1779 	addc	a,#(_u >> 8)
      002762 F5 83            [12] 1780 	mov	dph,a
      002764 E0               [24] 1781 	movx	a,@dptr
      002765 FB               [12] 1782 	mov	r3,a
      002766 A8 10            [24] 1783 	mov	r0,_bp
      002768 08               [12] 1784 	inc	r0
      002769 C3               [12] 1785 	clr	c
      00276A E4               [12] 1786 	clr	a
      00276B 9B               [12] 1787 	subb	a,r3
      00276C F6               [12] 1788 	mov	@r0,a
                                   1789 ;	life.c:226: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      00276D 78 36            [12] 1790 	mov	r0,#_y
      00276F 74 FF            [12] 1791 	mov	a,#0xff
      002771 26               [12] 1792 	add	a,@r0
      002772 FA               [12] 1793 	mov	r2,a
      002773 74 FF            [12] 1794 	mov	a,#0xff
      002775 08               [12] 1795 	inc	r0
      002776 36               [12] 1796 	addc	a,@r0
      002777 FB               [12] 1797 	mov	r3,a
      002778 74 C0            [12] 1798 	mov	a,#0xc0
      00277A 2A               [12] 1799 	add	a,r2
      00277B FA               [12] 1800 	mov	r2,a
      00277C E4               [12] 1801 	clr	a
      00277D 3B               [12] 1802 	addc	a,r3
      00277E FB               [12] 1803 	mov	r3,a
      00277F 74 C0            [12] 1804 	mov	a,#0xc0
      002781 C0 E0            [24] 1805 	push	acc
      002783 E4               [12] 1806 	clr	a
      002784 C0 E0            [24] 1807 	push	acc
      002786 8A 82            [24] 1808 	mov	dpl,r2
      002788 8B 83            [24] 1809 	mov	dph,r3
      00278A 12 2F 0E         [24] 1810 	lcall	__modsint
      00278D AA 82            [24] 1811 	mov	r2,dpl
      00278F AB 83            [24] 1812 	mov	r3,dph
      002791 15 81            [12] 1813 	dec	sp
      002793 15 81            [12] 1814 	dec	sp
      002795 C0 02            [24] 1815 	push	ar2
      002797 C0 03            [24] 1816 	push	ar3
      002799 90 00 30         [24] 1817 	mov	dptr,#0x0030
      00279C 12 2D 30         [24] 1818 	lcall	__mulint
      00279F AA 82            [24] 1819 	mov	r2,dpl
      0027A1 AB 83            [24] 1820 	mov	r3,dph
      0027A3 15 81            [12] 1821 	dec	sp
      0027A5 15 81            [12] 1822 	dec	sp
      0027A7 78 34            [12] 1823 	mov	r0,#_x
      0027A9 74 FF            [12] 1824 	mov	a,#0xff
      0027AB 26               [12] 1825 	add	a,@r0
      0027AC FC               [12] 1826 	mov	r4,a
      0027AD 74 FF            [12] 1827 	mov	a,#0xff
      0027AF 08               [12] 1828 	inc	r0
      0027B0 36               [12] 1829 	addc	a,@r0
      0027B1 FD               [12] 1830 	mov	r5,a
      0027B2 74 30            [12] 1831 	mov	a,#0x30
      0027B4 2C               [12] 1832 	add	a,r4
      0027B5 FC               [12] 1833 	mov	r4,a
      0027B6 E4               [12] 1834 	clr	a
      0027B7 3D               [12] 1835 	addc	a,r5
      0027B8 FD               [12] 1836 	mov	r5,a
      0027B9 C0 03            [24] 1837 	push	ar3
      0027BB C0 02            [24] 1838 	push	ar2
      0027BD 74 30            [12] 1839 	mov	a,#0x30
      0027BF C0 E0            [24] 1840 	push	acc
      0027C1 E4               [12] 1841 	clr	a
      0027C2 C0 E0            [24] 1842 	push	acc
      0027C4 8C 82            [24] 1843 	mov	dpl,r4
      0027C6 8D 83            [24] 1844 	mov	dph,r5
      0027C8 12 2F 0E         [24] 1845 	lcall	__modsint
      0027CB AC 82            [24] 1846 	mov	r4,dpl
      0027CD AD 83            [24] 1847 	mov	r5,dph
      0027CF 15 81            [12] 1848 	dec	sp
      0027D1 15 81            [12] 1849 	dec	sp
      0027D3 D0 02            [24] 1850 	pop	ar2
      0027D5 D0 03            [24] 1851 	pop	ar3
      0027D7 EC               [12] 1852 	mov	a,r4
      0027D8 2A               [12] 1853 	add	a,r2
      0027D9 FE               [12] 1854 	mov	r6,a
      0027DA ED               [12] 1855 	mov	a,r5
      0027DB 3B               [12] 1856 	addc	a,r3
      0027DC FF               [12] 1857 	mov	r7,a
      0027DD EE               [12] 1858 	mov	a,r6
      0027DE 24 00            [12] 1859 	add	a,#_u
      0027E0 F5 82            [12] 1860 	mov	dpl,a
      0027E2 EF               [12] 1861 	mov	a,r7
      0027E3 34 88            [12] 1862 	addc	a,#(_u >> 8)
      0027E5 F5 83            [12] 1863 	mov	dph,a
      0027E7 E0               [24] 1864 	movx	a,@dptr
      0027E8 FF               [12] 1865 	mov	r7,a
      0027E9 A8 10            [24] 1866 	mov	r0,_bp
      0027EB 08               [12] 1867 	inc	r0
      0027EC EF               [12] 1868 	mov	a,r7
      0027ED 26               [12] 1869 	add	a,@r0
      0027EE F6               [12] 1870 	mov	@r0,a
                                   1871 ;	life.c:228: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      0027EF 78 34            [12] 1872 	mov	r0,#_x
      0027F1 E5 10            [12] 1873 	mov	a,_bp
      0027F3 24 06            [12] 1874 	add	a,#0x06
      0027F5 F9               [12] 1875 	mov	r1,a
      0027F6 E6               [12] 1876 	mov	a,@r0
      0027F7 F7               [12] 1877 	mov	@r1,a
      0027F8 08               [12] 1878 	inc	r0
      0027F9 09               [12] 1879 	inc	r1
      0027FA E6               [12] 1880 	mov	a,@r0
      0027FB F7               [12] 1881 	mov	@r1,a
      0027FC E5 10            [12] 1882 	mov	a,_bp
      0027FE 24 06            [12] 1883 	add	a,#0x06
      002800 F8               [12] 1884 	mov	r0,a
      002801 74 30            [12] 1885 	mov	a,#0x30
      002803 26               [12] 1886 	add	a,@r0
      002804 FE               [12] 1887 	mov	r6,a
      002805 E4               [12] 1888 	clr	a
      002806 08               [12] 1889 	inc	r0
      002807 36               [12] 1890 	addc	a,@r0
      002808 FF               [12] 1891 	mov	r7,a
      002809 C0 05            [24] 1892 	push	ar5
      00280B C0 04            [24] 1893 	push	ar4
      00280D C0 03            [24] 1894 	push	ar3
      00280F C0 02            [24] 1895 	push	ar2
      002811 74 30            [12] 1896 	mov	a,#0x30
      002813 C0 E0            [24] 1897 	push	acc
      002815 E4               [12] 1898 	clr	a
      002816 C0 E0            [24] 1899 	push	acc
      002818 8E 82            [24] 1900 	mov	dpl,r6
      00281A 8F 83            [24] 1901 	mov	dph,r7
      00281C 12 2F 0E         [24] 1902 	lcall	__modsint
      00281F C8               [12] 1903 	xch	a,r0
      002820 E5 10            [12] 1904 	mov	a,_bp
      002822 24 08            [12] 1905 	add	a,#0x08
      002824 C8               [12] 1906 	xch	a,r0
      002825 A6 82            [24] 1907 	mov	@r0,dpl
      002827 08               [12] 1908 	inc	r0
      002828 A6 83            [24] 1909 	mov	@r0,dph
      00282A 15 81            [12] 1910 	dec	sp
      00282C 15 81            [12] 1911 	dec	sp
      00282E D0 02            [24] 1912 	pop	ar2
      002830 D0 03            [24] 1913 	pop	ar3
      002832 E5 10            [12] 1914 	mov	a,_bp
      002834 24 08            [12] 1915 	add	a,#0x08
      002836 F8               [12] 1916 	mov	r0,a
      002837 E6               [12] 1917 	mov	a,@r0
      002838 2A               [12] 1918 	add	a,r2
      002839 FE               [12] 1919 	mov	r6,a
      00283A 08               [12] 1920 	inc	r0
      00283B E6               [12] 1921 	mov	a,@r0
      00283C 3B               [12] 1922 	addc	a,r3
      00283D FF               [12] 1923 	mov	r7,a
      00283E EE               [12] 1924 	mov	a,r6
      00283F 24 00            [12] 1925 	add	a,#_u
      002841 F5 82            [12] 1926 	mov	dpl,a
      002843 EF               [12] 1927 	mov	a,r7
      002844 34 88            [12] 1928 	addc	a,#(_u >> 8)
      002846 F5 83            [12] 1929 	mov	dph,a
      002848 E0               [24] 1930 	movx	a,@dptr
      002849 FF               [12] 1931 	mov	r7,a
      00284A A8 10            [24] 1932 	mov	r0,_bp
      00284C 08               [12] 1933 	inc	r0
      00284D EF               [12] 1934 	mov	a,r7
      00284E 26               [12] 1935 	add	a,@r0
      00284F F6               [12] 1936 	mov	@r0,a
                                   1937 ;	life.c:230: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      002850 E5 10            [12] 1938 	mov	a,_bp
      002852 24 06            [12] 1939 	add	a,#0x06
      002854 F8               [12] 1940 	mov	r0,a
      002855 74 31            [12] 1941 	mov	a,#0x31
      002857 26               [12] 1942 	add	a,@r0
      002858 FE               [12] 1943 	mov	r6,a
      002859 E4               [12] 1944 	clr	a
      00285A 08               [12] 1945 	inc	r0
      00285B 36               [12] 1946 	addc	a,@r0
      00285C FF               [12] 1947 	mov	r7,a
      00285D C0 03            [24] 1948 	push	ar3
      00285F C0 02            [24] 1949 	push	ar2
      002861 74 30            [12] 1950 	mov	a,#0x30
      002863 C0 E0            [24] 1951 	push	acc
      002865 E4               [12] 1952 	clr	a
      002866 C0 E0            [24] 1953 	push	acc
      002868 8E 82            [24] 1954 	mov	dpl,r6
      00286A 8F 83            [24] 1955 	mov	dph,r7
      00286C 12 2F 0E         [24] 1956 	lcall	__modsint
      00286F AE 82            [24] 1957 	mov	r6,dpl
      002871 AF 83            [24] 1958 	mov	r7,dph
      002873 15 81            [12] 1959 	dec	sp
      002875 15 81            [12] 1960 	dec	sp
      002877 D0 02            [24] 1961 	pop	ar2
      002879 D0 03            [24] 1962 	pop	ar3
      00287B D0 04            [24] 1963 	pop	ar4
      00287D D0 05            [24] 1964 	pop	ar5
      00287F EE               [12] 1965 	mov	a,r6
      002880 2A               [12] 1966 	add	a,r2
      002881 FA               [12] 1967 	mov	r2,a
      002882 EF               [12] 1968 	mov	a,r7
      002883 3B               [12] 1969 	addc	a,r3
      002884 FB               [12] 1970 	mov	r3,a
      002885 EA               [12] 1971 	mov	a,r2
      002886 24 00            [12] 1972 	add	a,#_u
      002888 F5 82            [12] 1973 	mov	dpl,a
      00288A EB               [12] 1974 	mov	a,r3
      00288B 34 88            [12] 1975 	addc	a,#(_u >> 8)
      00288D F5 83            [12] 1976 	mov	dph,a
      00288F E0               [24] 1977 	movx	a,@dptr
      002890 FB               [12] 1978 	mov	r3,a
      002891 A8 10            [24] 1979 	mov	r0,_bp
      002893 08               [12] 1980 	inc	r0
      002894 EB               [12] 1981 	mov	a,r3
      002895 26               [12] 1982 	add	a,@r0
      002896 F6               [12] 1983 	mov	@r0,a
                                   1984 ;	life.c:232: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      002897 78 36            [12] 1985 	mov	r0,#_y
      002899 E5 10            [12] 1986 	mov	a,_bp
      00289B 24 0A            [12] 1987 	add	a,#0x0a
      00289D F9               [12] 1988 	mov	r1,a
      00289E E6               [12] 1989 	mov	a,@r0
      00289F F7               [12] 1990 	mov	@r1,a
      0028A0 08               [12] 1991 	inc	r0
      0028A1 09               [12] 1992 	inc	r1
      0028A2 E6               [12] 1993 	mov	a,@r0
      0028A3 F7               [12] 1994 	mov	@r1,a
      0028A4 E5 10            [12] 1995 	mov	a,_bp
      0028A6 24 0A            [12] 1996 	add	a,#0x0a
      0028A8 F8               [12] 1997 	mov	r0,a
      0028A9 74 C0            [12] 1998 	mov	a,#0xc0
      0028AB 26               [12] 1999 	add	a,@r0
      0028AC FA               [12] 2000 	mov	r2,a
      0028AD E4               [12] 2001 	clr	a
      0028AE 08               [12] 2002 	inc	r0
      0028AF 36               [12] 2003 	addc	a,@r0
      0028B0 FB               [12] 2004 	mov	r3,a
      0028B1 C0 07            [24] 2005 	push	ar7
      0028B3 C0 06            [24] 2006 	push	ar6
      0028B5 C0 05            [24] 2007 	push	ar5
      0028B7 C0 04            [24] 2008 	push	ar4
      0028B9 74 C0            [12] 2009 	mov	a,#0xc0
      0028BB C0 E0            [24] 2010 	push	acc
      0028BD E4               [12] 2011 	clr	a
      0028BE C0 E0            [24] 2012 	push	acc
      0028C0 8A 82            [24] 2013 	mov	dpl,r2
      0028C2 8B 83            [24] 2014 	mov	dph,r3
      0028C4 12 2F 0E         [24] 2015 	lcall	__modsint
      0028C7 AA 82            [24] 2016 	mov	r2,dpl
      0028C9 AB 83            [24] 2017 	mov	r3,dph
      0028CB 15 81            [12] 2018 	dec	sp
      0028CD 15 81            [12] 2019 	dec	sp
      0028CF C0 02            [24] 2020 	push	ar2
      0028D1 C0 03            [24] 2021 	push	ar3
      0028D3 90 00 30         [24] 2022 	mov	dptr,#0x0030
      0028D6 12 2D 30         [24] 2023 	lcall	__mulint
      0028D9 C8               [12] 2024 	xch	a,r0
      0028DA E5 10            [12] 2025 	mov	a,_bp
      0028DC 24 0C            [12] 2026 	add	a,#0x0c
      0028DE C8               [12] 2027 	xch	a,r0
      0028DF A6 82            [24] 2028 	mov	@r0,dpl
      0028E1 08               [12] 2029 	inc	r0
      0028E2 A6 83            [24] 2030 	mov	@r0,dph
      0028E4 15 81            [12] 2031 	dec	sp
      0028E6 15 81            [12] 2032 	dec	sp
      0028E8 D0 04            [24] 2033 	pop	ar4
      0028EA D0 05            [24] 2034 	pop	ar5
      0028EC D0 06            [24] 2035 	pop	ar6
      0028EE D0 07            [24] 2036 	pop	ar7
      0028F0 E5 10            [12] 2037 	mov	a,_bp
      0028F2 24 0C            [12] 2038 	add	a,#0x0c
      0028F4 F8               [12] 2039 	mov	r0,a
      0028F5 EC               [12] 2040 	mov	a,r4
      0028F6 26               [12] 2041 	add	a,@r0
      0028F7 FA               [12] 2042 	mov	r2,a
      0028F8 ED               [12] 2043 	mov	a,r5
      0028F9 08               [12] 2044 	inc	r0
      0028FA 36               [12] 2045 	addc	a,@r0
      0028FB FB               [12] 2046 	mov	r3,a
      0028FC EA               [12] 2047 	mov	a,r2
      0028FD 24 00            [12] 2048 	add	a,#_u
      0028FF F5 82            [12] 2049 	mov	dpl,a
      002901 EB               [12] 2050 	mov	a,r3
      002902 34 88            [12] 2051 	addc	a,#(_u >> 8)
      002904 F5 83            [12] 2052 	mov	dph,a
      002906 E0               [24] 2053 	movx	a,@dptr
      002907 FB               [12] 2054 	mov	r3,a
      002908 A8 10            [24] 2055 	mov	r0,_bp
      00290A 08               [12] 2056 	inc	r0
      00290B EB               [12] 2057 	mov	a,r3
      00290C 26               [12] 2058 	add	a,@r0
      00290D F6               [12] 2059 	mov	@r0,a
                                   2060 ;	life.c:234: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      00290E E5 10            [12] 2061 	mov	a,_bp
      002910 24 0C            [12] 2062 	add	a,#0x0c
      002912 F8               [12] 2063 	mov	r0,a
      002913 E5 10            [12] 2064 	mov	a,_bp
      002915 24 08            [12] 2065 	add	a,#0x08
      002917 F9               [12] 2066 	mov	r1,a
      002918 E7               [12] 2067 	mov	a,@r1
      002919 26               [12] 2068 	add	a,@r0
      00291A FA               [12] 2069 	mov	r2,a
      00291B 09               [12] 2070 	inc	r1
      00291C E7               [12] 2071 	mov	a,@r1
      00291D 08               [12] 2072 	inc	r0
      00291E 36               [12] 2073 	addc	a,@r0
      00291F FB               [12] 2074 	mov	r3,a
      002920 EA               [12] 2075 	mov	a,r2
      002921 24 00            [12] 2076 	add	a,#_u
      002923 F5 82            [12] 2077 	mov	dpl,a
      002925 EB               [12] 2078 	mov	a,r3
      002926 34 88            [12] 2079 	addc	a,#(_u >> 8)
      002928 F5 83            [12] 2080 	mov	dph,a
      00292A E0               [24] 2081 	movx	a,@dptr
      00292B FB               [12] 2082 	mov	r3,a
      00292C A8 10            [24] 2083 	mov	r0,_bp
      00292E 08               [12] 2084 	inc	r0
      00292F EB               [12] 2085 	mov	a,r3
      002930 26               [12] 2086 	add	a,@r0
      002931 F6               [12] 2087 	mov	@r0,a
                                   2088 ;	life.c:236: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      002932 E5 10            [12] 2089 	mov	a,_bp
      002934 24 0C            [12] 2090 	add	a,#0x0c
      002936 F8               [12] 2091 	mov	r0,a
      002937 EE               [12] 2092 	mov	a,r6
      002938 26               [12] 2093 	add	a,@r0
      002939 FA               [12] 2094 	mov	r2,a
      00293A EF               [12] 2095 	mov	a,r7
      00293B 08               [12] 2096 	inc	r0
      00293C 36               [12] 2097 	addc	a,@r0
      00293D FB               [12] 2098 	mov	r3,a
      00293E EA               [12] 2099 	mov	a,r2
      00293F 24 00            [12] 2100 	add	a,#_u
      002941 F5 82            [12] 2101 	mov	dpl,a
      002943 EB               [12] 2102 	mov	a,r3
      002944 34 88            [12] 2103 	addc	a,#(_u >> 8)
      002946 F5 83            [12] 2104 	mov	dph,a
      002948 E0               [24] 2105 	movx	a,@dptr
      002949 FB               [12] 2106 	mov	r3,a
      00294A A8 10            [24] 2107 	mov	r0,_bp
      00294C 08               [12] 2108 	inc	r0
      00294D E5 10            [12] 2109 	mov	a,_bp
      00294F 24 0C            [12] 2110 	add	a,#0x0c
      002951 F9               [12] 2111 	mov	r1,a
      002952 EB               [12] 2112 	mov	a,r3
      002953 26               [12] 2113 	add	a,@r0
      002954 F7               [12] 2114 	mov	@r1,a
                                   2115 ;	life.c:238: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      002955 E5 10            [12] 2116 	mov	a,_bp
      002957 24 0A            [12] 2117 	add	a,#0x0a
      002959 F8               [12] 2118 	mov	r0,a
      00295A 74 C1            [12] 2119 	mov	a,#0xc1
      00295C 26               [12] 2120 	add	a,@r0
      00295D FA               [12] 2121 	mov	r2,a
      00295E E4               [12] 2122 	clr	a
      00295F 08               [12] 2123 	inc	r0
      002960 36               [12] 2124 	addc	a,@r0
      002961 FB               [12] 2125 	mov	r3,a
      002962 C0 07            [24] 2126 	push	ar7
      002964 C0 06            [24] 2127 	push	ar6
      002966 C0 05            [24] 2128 	push	ar5
      002968 C0 04            [24] 2129 	push	ar4
      00296A 74 C0            [12] 2130 	mov	a,#0xc0
      00296C C0 E0            [24] 2131 	push	acc
      00296E E4               [12] 2132 	clr	a
      00296F C0 E0            [24] 2133 	push	acc
      002971 8A 82            [24] 2134 	mov	dpl,r2
      002973 8B 83            [24] 2135 	mov	dph,r3
      002975 12 2F 0E         [24] 2136 	lcall	__modsint
      002978 AA 82            [24] 2137 	mov	r2,dpl
      00297A AB 83            [24] 2138 	mov	r3,dph
      00297C 15 81            [12] 2139 	dec	sp
      00297E 15 81            [12] 2140 	dec	sp
      002980 C0 02            [24] 2141 	push	ar2
      002982 C0 03            [24] 2142 	push	ar3
      002984 90 00 30         [24] 2143 	mov	dptr,#0x0030
      002987 12 2D 30         [24] 2144 	lcall	__mulint
      00298A AA 82            [24] 2145 	mov	r2,dpl
      00298C AB 83            [24] 2146 	mov	r3,dph
      00298E 15 81            [12] 2147 	dec	sp
      002990 15 81            [12] 2148 	dec	sp
      002992 D0 04            [24] 2149 	pop	ar4
      002994 D0 05            [24] 2150 	pop	ar5
      002996 D0 06            [24] 2151 	pop	ar6
      002998 D0 07            [24] 2152 	pop	ar7
      00299A EC               [12] 2153 	mov	a,r4
      00299B 2A               [12] 2154 	add	a,r2
      00299C FC               [12] 2155 	mov	r4,a
      00299D ED               [12] 2156 	mov	a,r5
      00299E 3B               [12] 2157 	addc	a,r3
      00299F FD               [12] 2158 	mov	r5,a
      0029A0 EC               [12] 2159 	mov	a,r4
      0029A1 24 00            [12] 2160 	add	a,#_u
      0029A3 F5 82            [12] 2161 	mov	dpl,a
      0029A5 ED               [12] 2162 	mov	a,r5
      0029A6 34 88            [12] 2163 	addc	a,#(_u >> 8)
      0029A8 F5 83            [12] 2164 	mov	dph,a
      0029AA E0               [24] 2165 	movx	a,@dptr
      0029AB FD               [12] 2166 	mov	r5,a
      0029AC E5 10            [12] 2167 	mov	a,_bp
      0029AE 24 0C            [12] 2168 	add	a,#0x0c
      0029B0 F8               [12] 2169 	mov	r0,a
      0029B1 E5 10            [12] 2170 	mov	a,_bp
      0029B3 24 0C            [12] 2171 	add	a,#0x0c
      0029B5 F9               [12] 2172 	mov	r1,a
      0029B6 ED               [12] 2173 	mov	a,r5
      0029B7 26               [12] 2174 	add	a,@r0
      0029B8 F7               [12] 2175 	mov	@r1,a
                                   2176 ;	life.c:240: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      0029B9 E5 10            [12] 2177 	mov	a,_bp
      0029BB 24 08            [12] 2178 	add	a,#0x08
      0029BD F8               [12] 2179 	mov	r0,a
      0029BE E6               [12] 2180 	mov	a,@r0
      0029BF 2A               [12] 2181 	add	a,r2
      0029C0 FC               [12] 2182 	mov	r4,a
      0029C1 08               [12] 2183 	inc	r0
      0029C2 E6               [12] 2184 	mov	a,@r0
      0029C3 3B               [12] 2185 	addc	a,r3
      0029C4 FD               [12] 2186 	mov	r5,a
      0029C5 EC               [12] 2187 	mov	a,r4
      0029C6 24 00            [12] 2188 	add	a,#_u
      0029C8 F5 82            [12] 2189 	mov	dpl,a
      0029CA ED               [12] 2190 	mov	a,r5
      0029CB 34 88            [12] 2191 	addc	a,#(_u >> 8)
      0029CD F5 83            [12] 2192 	mov	dph,a
      0029CF E0               [24] 2193 	movx	a,@dptr
      0029D0 FD               [12] 2194 	mov	r5,a
      0029D1 E5 10            [12] 2195 	mov	a,_bp
      0029D3 24 0C            [12] 2196 	add	a,#0x0c
      0029D5 F8               [12] 2197 	mov	r0,a
      0029D6 ED               [12] 2198 	mov	a,r5
      0029D7 26               [12] 2199 	add	a,@r0
      0029D8 FD               [12] 2200 	mov	r5,a
                                   2201 ;	life.c:241: y1 = 1; x1 = 1;
      0029D9 78 41            [12] 2202 	mov	r0,#_y1
      0029DB 76 01            [12] 2203 	mov	@r0,#0x01
      0029DD 08               [12] 2204 	inc	r0
      0029DE 76 00            [12] 2205 	mov	@r0,#0x00
      0029E0 78 3F            [12] 2206 	mov	r0,#_x1
      0029E2 76 01            [12] 2207 	mov	@r0,#0x01
      0029E4 08               [12] 2208 	inc	r0
      0029E5 76 00            [12] 2209 	mov	@r0,#0x00
                                   2210 ;	life.c:242: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      0029E7 EE               [12] 2211 	mov	a,r6
      0029E8 2A               [12] 2212 	add	a,r2
      0029E9 FE               [12] 2213 	mov	r6,a
      0029EA EF               [12] 2214 	mov	a,r7
      0029EB 3B               [12] 2215 	addc	a,r3
      0029EC FF               [12] 2216 	mov	r7,a
      0029ED EE               [12] 2217 	mov	a,r6
      0029EE 24 00            [12] 2218 	add	a,#_u
      0029F0 F5 82            [12] 2219 	mov	dpl,a
      0029F2 EF               [12] 2220 	mov	a,r7
      0029F3 34 88            [12] 2221 	addc	a,#(_u >> 8)
      0029F5 F5 83            [12] 2222 	mov	dph,a
      0029F7 E0               [24] 2223 	movx	a,@dptr
      0029F8 2D               [12] 2224 	add	a,r5
      0029F9 FF               [12] 2225 	mov	r7,a
      0029FA 78 3C            [12] 2226 	mov	r0,#_n
      0029FC A6 07            [24] 2227 	mov	@r0,ar7
                                   2228 ;	life.c:244: nu[A2D(W, y, x)] = (n == 3) || ((n == 2) && u[A2D(W, y, x)]);
      0029FE A8 10            [24] 2229 	mov	r0,_bp
      002A00 08               [12] 2230 	inc	r0
      002A01 08               [12] 2231 	inc	r0
      002A02 E6               [12] 2232 	mov	a,@r0
      002A03 24 00            [12] 2233 	add	a,#_nu
      002A05 FD               [12] 2234 	mov	r5,a
      002A06 08               [12] 2235 	inc	r0
      002A07 E6               [12] 2236 	mov	a,@r0
      002A08 34 AC            [12] 2237 	addc	a,#(_nu >> 8)
      002A0A FE               [12] 2238 	mov	r6,a
      002A0B BF 03 02         [24] 2239 	cjne	r7,#0x03,00597$
      002A0E 80 28            [24] 2240 	sjmp	00266$
      002A10                       2241 00597$:
      002A10 BF 02 21         [24] 2242 	cjne	r7,#0x02,00265$
      002A13 E5 10            [12] 2243 	mov	a,_bp
      002A15 24 04            [12] 2244 	add	a,#0x04
      002A17 F8               [12] 2245 	mov	r0,a
      002A18 E5 10            [12] 2246 	mov	a,_bp
      002A1A 24 06            [12] 2247 	add	a,#0x06
      002A1C F9               [12] 2248 	mov	r1,a
      002A1D E7               [12] 2249 	mov	a,@r1
      002A1E 26               [12] 2250 	add	a,@r0
      002A1F FC               [12] 2251 	mov	r4,a
      002A20 09               [12] 2252 	inc	r1
      002A21 E7               [12] 2253 	mov	a,@r1
      002A22 08               [12] 2254 	inc	r0
      002A23 36               [12] 2255 	addc	a,@r0
      002A24 FF               [12] 2256 	mov	r7,a
      002A25 EC               [12] 2257 	mov	a,r4
      002A26 24 00            [12] 2258 	add	a,#_u
      002A28 FC               [12] 2259 	mov	r4,a
      002A29 EF               [12] 2260 	mov	a,r7
      002A2A 34 88            [12] 2261 	addc	a,#(_u >> 8)
      002A2C FF               [12] 2262 	mov	r7,a
      002A2D 8C 82            [24] 2263 	mov	dpl,r4
      002A2F 8F 83            [24] 2264 	mov	dph,r7
      002A31 E0               [24] 2265 	movx	a,@dptr
      002A32 70 04            [24] 2266 	jnz	00266$
      002A34                       2267 00265$:
                                   2268 ;	assignBit
      002A34 C2 00            [12] 2269 	clr	b0
      002A36 80 02            [24] 2270 	sjmp	00267$
      002A38                       2271 00266$:
                                   2272 ;	assignBit
      002A38 D2 00            [12] 2273 	setb	b0
      002A3A                       2274 00267$:
      002A3A A2 00            [12] 2275 	mov	c,b0
      002A3C E4               [12] 2276 	clr	a
      002A3D 33               [12] 2277 	rlc	a
      002A3E 8D 82            [24] 2278 	mov	dpl,r5
      002A40 8E 83            [24] 2279 	mov	dph,r6
      002A42 F0               [24] 2280 	movx	@dptr,a
                                   2281 ;	life.c:245: cycle2 |= pu[A2D(W, y, x)] ^ nu[A2D(W, y, x)];
      002A43 78 36            [12] 2282 	mov	r0,#_y
      002A45 E6               [12] 2283 	mov	a,@r0
      002A46 C0 E0            [24] 2284 	push	acc
      002A48 08               [12] 2285 	inc	r0
      002A49 E6               [12] 2286 	mov	a,@r0
      002A4A C0 E0            [24] 2287 	push	acc
      002A4C 90 00 30         [24] 2288 	mov	dptr,#0x0030
      002A4F 12 2D 30         [24] 2289 	lcall	__mulint
      002A52 AE 82            [24] 2290 	mov	r6,dpl
      002A54 AF 83            [24] 2291 	mov	r7,dph
      002A56 15 81            [12] 2292 	dec	sp
      002A58 15 81            [12] 2293 	dec	sp
      002A5A 78 34            [12] 2294 	mov	r0,#_x
      002A5C E6               [12] 2295 	mov	a,@r0
      002A5D 2E               [12] 2296 	add	a,r6
      002A5E FE               [12] 2297 	mov	r6,a
      002A5F 08               [12] 2298 	inc	r0
      002A60 E6               [12] 2299 	mov	a,@r0
      002A61 3F               [12] 2300 	addc	a,r7
      002A62 FF               [12] 2301 	mov	r7,a
      002A63 EE               [12] 2302 	mov	a,r6
      002A64 24 00            [12] 2303 	add	a,#_pu
      002A66 F5 82            [12] 2304 	mov	dpl,a
      002A68 EF               [12] 2305 	mov	a,r7
      002A69 34 64            [12] 2306 	addc	a,#(_pu >> 8)
      002A6B F5 83            [12] 2307 	mov	dph,a
      002A6D E0               [24] 2308 	movx	a,@dptr
      002A6E FD               [12] 2309 	mov	r5,a
      002A6F EE               [12] 2310 	mov	a,r6
      002A70 24 00            [12] 2311 	add	a,#_nu
      002A72 F5 82            [12] 2312 	mov	dpl,a
      002A74 EF               [12] 2313 	mov	a,r7
      002A75 34 AC            [12] 2314 	addc	a,#(_nu >> 8)
      002A77 F5 83            [12] 2315 	mov	dph,a
      002A79 E0               [24] 2316 	movx	a,@dptr
      002A7A FC               [12] 2317 	mov	r4,a
      002A7B 6D               [12] 2318 	xrl	a,r5
      002A7C 78 3E            [12] 2319 	mov	r0,#_cycle2
      002A7E 46               [12] 2320 	orl	a,@r0
      002A7F F6               [12] 2321 	mov	@r0,a
                                   2322 ;	life.c:246: fixed |= u[A2D(W, y, x)] ^ nu[A2D(W, y, x)];
      002A80 EE               [12] 2323 	mov	a,r6
      002A81 24 00            [12] 2324 	add	a,#_u
      002A83 F5 82            [12] 2325 	mov	dpl,a
      002A85 EF               [12] 2326 	mov	a,r7
      002A86 34 88            [12] 2327 	addc	a,#(_u >> 8)
      002A88 F5 83            [12] 2328 	mov	dph,a
      002A8A E0               [24] 2329 	movx	a,@dptr
      002A8B FF               [12] 2330 	mov	r7,a
      002A8C EC               [12] 2331 	mov	a,r4
      002A8D 6F               [12] 2332 	xrl	a,r7
      002A8E 78 3D            [12] 2333 	mov	r0,#_fixed
      002A90 46               [12] 2334 	orl	a,@r0
      002A91 F6               [12] 2335 	mov	@r0,a
                                   2336 ;	life.c:222: for (x = 0; x < W; x++) {
      002A92 78 34            [12] 2337 	mov	r0,#_x
      002A94 06               [12] 2338 	inc	@r0
      002A95 B6 00 02         [24] 2339 	cjne	@r0,#0x00,00601$
      002A98 08               [12] 2340 	inc	r0
      002A99 06               [12] 2341 	inc	@r0
      002A9A                       2342 00601$:
      002A9A 78 34            [12] 2343 	mov	r0,#_x
      002A9C C3               [12] 2344 	clr	c
      002A9D E6               [12] 2345 	mov	a,@r0
      002A9E 94 30            [12] 2346 	subb	a,#0x30
      002AA0 08               [12] 2347 	inc	r0
      002AA1 E6               [12] 2348 	mov	a,@r0
      002AA2 64 80            [12] 2349 	xrl	a,#0x80
      002AA4 94 80            [12] 2350 	subb	a,#0x80
      002AA6 50 03            [24] 2351 	jnc	00602$
      002AA8 02 27 1A         [24] 2352 	ljmp	00238$
      002AAB                       2353 00602$:
                                   2354 ;	life.c:219: for (y = 0; y < H; y++) {
      002AAB 78 36            [12] 2355 	mov	r0,#_y
      002AAD 06               [12] 2356 	inc	@r0
      002AAE B6 00 02         [24] 2357 	cjne	@r0,#0x00,00603$
      002AB1 08               [12] 2358 	inc	r0
      002AB2 06               [12] 2359 	inc	@r0
      002AB3                       2360 00603$:
      002AB3 78 36            [12] 2361 	mov	r0,#_y
      002AB5 C3               [12] 2362 	clr	c
      002AB6 E6               [12] 2363 	mov	a,@r0
      002AB7 94 C0            [12] 2364 	subb	a,#0xc0
      002AB9 08               [12] 2365 	inc	r0
      002ABA E6               [12] 2366 	mov	a,@r0
      002ABB 64 80            [12] 2367 	xrl	a,#0x80
      002ABD 94 80            [12] 2368 	subb	a,#0x80
      002ABF 50 03            [24] 2369 	jnc	00604$
      002AC1 02 26 FE         [24] 2370 	ljmp	00240$
      002AC4                       2371 00604$:
                                   2372 ;	life.c:250: OE76 = OE76_0;
      002AC4 78 33            [12] 2373 	mov	r0,#_OE76
      002AC6 76 3F            [12] 2374 	mov	@r0,#0x3f
                                   2375 ;	life.c:251: flashOE();
      002AC8 12 20 EF         [24] 2376 	lcall	_flashOE
                                   2377 ;	life.c:253: cycle2 = !cycle2;
      002ACB 78 3E            [12] 2378 	mov	r0,#_cycle2
      002ACD E6               [12] 2379 	mov	a,@r0
      002ACE B4 01 00         [24] 2380 	cjne	a,#0x01,00605$
      002AD1                       2381 00605$:
      002AD1 92 00            [24] 2382 	mov	b0,c
      002AD3 78 3E            [12] 2383 	mov	r0,#_cycle2
      002AD5 E4               [12] 2384 	clr	a
      002AD6 33               [12] 2385 	rlc	a
      002AD7 F6               [12] 2386 	mov	@r0,a
                                   2387 ;	life.c:254: fixed = !fixed;
      002AD8 78 3D            [12] 2388 	mov	r0,#_fixed
      002ADA E6               [12] 2389 	mov	a,@r0
      002ADB B4 01 00         [24] 2390 	cjne	a,#0x01,00606$
      002ADE                       2391 00606$:
      002ADE 92 00            [24] 2392 	mov	b0,c
      002AE0 78 3D            [12] 2393 	mov	r0,#_fixed
      002AE2 E4               [12] 2394 	clr	a
      002AE3 33               [12] 2395 	rlc	a
      002AE4 F6               [12] 2396 	mov	@r0,a
                                   2397 ;	life.c:256: memcpy(pu, u, sizeof (u));
      002AE5 E4               [12] 2398 	clr	a
      002AE6 C0 E0            [24] 2399 	push	acc
      002AE8 74 24            [12] 2400 	mov	a,#0x24
      002AEA C0 E0            [24] 2401 	push	acc
      002AEC 74 00            [12] 2402 	mov	a,#_u
      002AEE C0 E0            [24] 2403 	push	acc
      002AF0 74 88            [12] 2404 	mov	a,#(_u >> 8)
      002AF2 C0 E0            [24] 2405 	push	acc
      002AF4 E4               [12] 2406 	clr	a
      002AF5 C0 E0            [24] 2407 	push	acc
      002AF7 90 64 00         [24] 2408 	mov	dptr,#_pu
      002AFA 75 F0 00         [24] 2409 	mov	b,#0x00
      002AFD 12 2D CE         [24] 2410 	lcall	___memcpy
      002B00 E5 81            [12] 2411 	mov	a,sp
      002B02 24 FB            [12] 2412 	add	a,#0xfb
      002B04 F5 81            [12] 2413 	mov	sp,a
                                   2414 ;	life.c:257: memcpy(u, nu, sizeof (nu));
      002B06 E4               [12] 2415 	clr	a
      002B07 C0 E0            [24] 2416 	push	acc
      002B09 74 24            [12] 2417 	mov	a,#0x24
      002B0B C0 E0            [24] 2418 	push	acc
      002B0D 74 00            [12] 2419 	mov	a,#_nu
      002B0F C0 E0            [24] 2420 	push	acc
      002B11 74 AC            [12] 2421 	mov	a,#(_nu >> 8)
      002B13 C0 E0            [24] 2422 	push	acc
      002B15 E4               [12] 2423 	clr	a
      002B16 C0 E0            [24] 2424 	push	acc
      002B18 90 88 00         [24] 2425 	mov	dptr,#_u
      002B1B 75 F0 00         [24] 2426 	mov	b,#0x00
      002B1E 12 2D CE         [24] 2427 	lcall	___memcpy
      002B21 E5 81            [12] 2428 	mov	a,sp
      002B23 24 FB            [12] 2429 	add	a,#0xfb
      002B25 F5 81            [12] 2430 	mov	sp,a
                                   2431 ;	life.c:306: if (fixed || cycle2) {
      002B27 78 3D            [12] 2432 	mov	r0,#_fixed
      002B29 E6               [12] 2433 	mov	a,@r0
      002B2A 70 05            [24] 2434 	jnz	00135$
      002B2C 78 3E            [12] 2435 	mov	r0,#_cycle2
      002B2E E6               [12] 2436 	mov	a,@r0
      002B2F 60 70            [24] 2437 	jz	00136$
      002B31                       2438 00135$:
                                   2439 ;	life.c:307: printstr("DONE ");
      002B31 7D 7E            [12] 2440 	mov	r5,#___str_10
      002B33 7E 30            [12] 2441 	mov	r6,#(___str_10 >> 8)
      002B35 7F 80            [12] 2442 	mov	r7,#0x80
                                   2443 ;	life.c:68: return;
      002B37                       2444 00243$:
                                   2445 ;	life.c:66: for (; *s; s++) putchar(*s);
      002B37 8D 82            [24] 2446 	mov	dpl,r5
      002B39 8E 83            [24] 2447 	mov	dph,r6
      002B3B 8F F0            [24] 2448 	mov	b,r7
      002B3D 12 2E F2         [24] 2449 	lcall	__gptrget
      002B40 FC               [12] 2450 	mov	r4,a
      002B41 60 10            [24] 2451 	jz	00201$
      002B43 7B 00            [12] 2452 	mov	r3,#0x00
      002B45 8C 82            [24] 2453 	mov	dpl,r4
      002B47 8B 83            [24] 2454 	mov	dph,r3
      002B49 12 20 B5         [24] 2455 	lcall	_putchar
      002B4C 0D               [12] 2456 	inc	r5
                                   2457 ;	life.c:307: printstr("DONE ");
      002B4D BD 00 E7         [24] 2458 	cjne	r5,#0x00,00243$
      002B50 0E               [12] 2459 	inc	r6
      002B51 80 E4            [24] 2460 	sjmp	00243$
      002B53                       2461 00201$:
                                   2462 ;	life.c:308: if (fixed) printstr("FIXED\r\n");
      002B53 78 3D            [12] 2463 	mov	r0,#_fixed
      002B55 E6               [12] 2464 	mov	a,@r0
      002B56 60 22            [24] 2465 	jz	00133$
      002B58 7D 84            [12] 2466 	mov	r5,#___str_11
      002B5A 7E 30            [12] 2467 	mov	r6,#(___str_11 >> 8)
      002B5C 7F 80            [12] 2468 	mov	r7,#0x80
                                   2469 ;	life.c:68: return;
      002B5E                       2470 00246$:
                                   2471 ;	life.c:66: for (; *s; s++) putchar(*s);
      002B5E 8D 82            [24] 2472 	mov	dpl,r5
      002B60 8E 83            [24] 2473 	mov	dph,r6
      002B62 8F F0            [24] 2474 	mov	b,r7
      002B64 12 2E F2         [24] 2475 	lcall	__gptrget
      002B67 FC               [12] 2476 	mov	r4,a
      002B68 60 32            [24] 2477 	jz	00134$
      002B6A 7B 00            [12] 2478 	mov	r3,#0x00
      002B6C 8C 82            [24] 2479 	mov	dpl,r4
      002B6E 8B 83            [24] 2480 	mov	dph,r3
      002B70 12 20 B5         [24] 2481 	lcall	_putchar
      002B73 0D               [12] 2482 	inc	r5
                                   2483 ;	life.c:308: if (fixed) printstr("FIXED\r\n");
      002B74 BD 00 E7         [24] 2484 	cjne	r5,#0x00,00246$
      002B77 0E               [12] 2485 	inc	r6
      002B78 80 E4            [24] 2486 	sjmp	00246$
      002B7A                       2487 00133$:
                                   2488 ;	life.c:309: else printstr("CYCLE2\r\n");
      002B7A 7D 8C            [12] 2489 	mov	r5,#___str_12
      002B7C 7E 30            [12] 2490 	mov	r6,#(___str_12 >> 8)
      002B7E 7F 80            [12] 2491 	mov	r7,#0x80
                                   2492 ;	life.c:68: return;
      002B80                       2493 00249$:
                                   2494 ;	life.c:66: for (; *s; s++) putchar(*s);
      002B80 8D 82            [24] 2495 	mov	dpl,r5
      002B82 8E 83            [24] 2496 	mov	dph,r6
      002B84 8F F0            [24] 2497 	mov	b,r7
      002B86 12 2E F2         [24] 2498 	lcall	__gptrget
      002B89 FC               [12] 2499 	mov	r4,a
      002B8A 60 10            [24] 2500 	jz	00134$
      002B8C 7B 00            [12] 2501 	mov	r3,#0x00
      002B8E 8C 82            [24] 2502 	mov	dpl,r4
      002B90 8B 83            [24] 2503 	mov	dph,r3
      002B92 12 20 B5         [24] 2504 	lcall	_putchar
      002B95 0D               [12] 2505 	inc	r5
                                   2506 ;	life.c:309: else printstr("CYCLE2\r\n");
      002B96 BD 00 E7         [24] 2507 	cjne	r5,#0x00,00249$
      002B99 0E               [12] 2508 	inc	r6
      002B9A 80 E4            [24] 2509 	sjmp	00249$
      002B9C                       2510 00134$:
                                   2511 ;	life.c:310: (void)getchar();
      002B9C 12 20 BA         [24] 2512 	lcall	_getchar
                                   2513 ;	life.c:311: break;
      002B9F 80 50            [24] 2514 	sjmp	00145$
      002BA1                       2515 00136$:
                                   2516 ;	life.c:314: c = getchar_poll();
      002BA1 12 20 C3         [24] 2517 	lcall	_getchar_poll
      002BA4 AE 82            [24] 2518 	mov	r6,dpl
      002BA6 AF 83            [24] 2519 	mov	r7,dph
      002BA8 78 3A            [12] 2520 	mov	r0,#_c
      002BAA A6 06            [24] 2521 	mov	@r0,ar6
      002BAC 08               [12] 2522 	inc	r0
      002BAD A6 07            [24] 2523 	mov	@r0,ar7
                                   2524 ;	life.c:315: if (c > 0) {
      002BAF C3               [12] 2525 	clr	c
      002BB0 E4               [12] 2526 	clr	a
      002BB1 9E               [12] 2527 	subb	a,r6
      002BB2 74 80            [12] 2528 	mov	a,#(0x00 ^ 0x80)
      002BB4 8F F0            [24] 2529 	mov	b,r7
      002BB6 63 F0 80         [24] 2530 	xrl	b,#0x80
      002BB9 95 F0            [12] 2531 	subb	a,b
      002BBB 40 03            [24] 2532 	jc	00616$
      002BBD 02 26 D3         [24] 2533 	ljmp	00253$
      002BC0                       2534 00616$:
                                   2535 ;	life.c:316: c = toupper(c);
      002BC0 8E 82            [24] 2536 	mov	dpl,r6
      002BC2 8F 83            [24] 2537 	mov	dph,r7
      002BC4 12 2E CB         [24] 2538 	lcall	_toupper
      002BC7 AE 82            [24] 2539 	mov	r6,dpl
      002BC9 AF 83            [24] 2540 	mov	r7,dph
      002BCB 78 3A            [12] 2541 	mov	r0,#_c
      002BCD A6 06            [24] 2542 	mov	@r0,ar6
      002BCF 08               [12] 2543 	inc	r0
      002BD0 A6 07            [24] 2544 	mov	@r0,ar7
                                   2545 ;	life.c:317: if (c == (int)'T') i0 = 1;
      002BD2 BE 54 0A         [24] 2546 	cjne	r6,#0x54,00141$
      002BD5 BF 00 07         [24] 2547 	cjne	r7,#0x00,00141$
      002BD8 78 31            [12] 2548 	mov	r0,#_i0
      002BDA 76 01            [12] 2549 	mov	@r0,#0x01
      002BDC 02 26 D3         [24] 2550 	ljmp	00253$
      002BDF                       2551 00141$:
                                   2552 ;	life.c:318: else if (c == (int)'B') i1 = 1;
      002BDF BE 42 05         [24] 2553 	cjne	r6,#0x42,00619$
      002BE2 BF 00 02         [24] 2554 	cjne	r7,#0x00,00619$
      002BE5 80 03            [24] 2555 	sjmp	00620$
      002BE7                       2556 00619$:
      002BE7 02 26 D3         [24] 2557 	ljmp	00253$
      002BEA                       2558 00620$:
      002BEA 78 32            [12] 2559 	mov	r0,#_i1
      002BEC 76 01            [12] 2560 	mov	@r0,#0x01
      002BEE 02 26 D3         [24] 2561 	ljmp	00253$
      002BF1                       2562 00145$:
                                   2563 ;	life.c:322: if (i1) {
      002BF1 78 32            [12] 2564 	mov	r0,#_i1
      002BF3 E6               [12] 2565 	mov	a,@r0
      002BF4 60 25            [24] 2566 	jz	00259$
                                   2567 ;	life.c:323: printstr("BREAK\r\n");
      002BF6 7D 95            [12] 2568 	mov	r5,#___str_13
      002BF8 7E 30            [12] 2569 	mov	r6,#(___str_13 >> 8)
      002BFA 7F 80            [12] 2570 	mov	r7,#0x80
                                   2571 ;	life.c:68: return;
      002BFC                       2572 00256$:
                                   2573 ;	life.c:66: for (; *s; s++) putchar(*s);
      002BFC 8D 82            [24] 2574 	mov	dpl,r5
      002BFE 8E 83            [24] 2575 	mov	dph,r6
      002C00 8F F0            [24] 2576 	mov	b,r7
      002C02 12 2E F2         [24] 2577 	lcall	__gptrget
      002C05 FC               [12] 2578 	mov	r4,a
      002C06 60 10            [24] 2579 	jz	00207$
      002C08 7B 00            [12] 2580 	mov	r3,#0x00
      002C0A 8C 82            [24] 2581 	mov	dpl,r4
      002C0C 8B 83            [24] 2582 	mov	dph,r3
      002C0E 12 20 B5         [24] 2583 	lcall	_putchar
      002C11 0D               [12] 2584 	inc	r5
                                   2585 ;	life.c:323: printstr("BREAK\r\n");
      002C12 BD 00 E7         [24] 2586 	cjne	r5,#0x00,00256$
      002C15 0E               [12] 2587 	inc	r6
      002C16 80 E4            [24] 2588 	sjmp	00256$
      002C18                       2589 00207$:
                                   2590 ;	life.c:324: (void)getchar();
      002C18 12 20 BA         [24] 2591 	lcall	_getchar
      002C1B                       2592 00259$:
                                   2593 ;	life.c:277: for (i0 = 0; !i0; ) {	
      002C1B 78 31            [12] 2594 	mov	r0,#_i0
      002C1D E6               [12] 2595 	mov	a,@r0
      002C1E 70 03            [24] 2596 	jnz	00624$
      002C20 02 23 6A         [24] 2597 	ljmp	00258$
      002C23                       2598 00624$:
                                   2599 ;	life.c:328: term:
      002C23                       2600 00149$:
                                   2601 ;	life.c:329: EA = 0;
                                   2602 ;	assignBit
      002C23 C2 AF            [12] 2603 	clr	_EA
                                   2604 ;	life.c:330: printstr("TERM\r\n");
      002C25 7D 9D            [12] 2605 	mov	r5,#___str_14
      002C27 7E 30            [12] 2606 	mov	r6,#(___str_14 >> 8)
      002C29 7F 80            [12] 2607 	mov	r7,#0x80
                                   2608 ;	life.c:68: return;
      002C2B                       2609 00261$:
                                   2610 ;	life.c:66: for (; *s; s++) putchar(*s);
      002C2B 8D 82            [24] 2611 	mov	dpl,r5
      002C2D 8E 83            [24] 2612 	mov	dph,r6
      002C2F 8F F0            [24] 2613 	mov	b,r7
      002C31 12 2E F2         [24] 2614 	lcall	__gptrget
      002C34 FC               [12] 2615 	mov	r4,a
      002C35 60 10            [24] 2616 	jz	00209$
      002C37 7B 00            [12] 2617 	mov	r3,#0x00
      002C39 8C 82            [24] 2618 	mov	dpl,r4
      002C3B 8B 83            [24] 2619 	mov	dph,r3
      002C3D 12 20 B5         [24] 2620 	lcall	_putchar
      002C40 0D               [12] 2621 	inc	r5
                                   2622 ;	life.c:330: printstr("TERM\r\n");
      002C41 BD 00 E7         [24] 2623 	cjne	r5,#0x00,00261$
      002C44 0E               [12] 2624 	inc	r6
      002C45 80 E4            [24] 2625 	sjmp	00261$
      002C47                       2626 00209$:
                                   2627 ;	life.c:331: (void)getchar();
      002C47 12 20 BA         [24] 2628 	lcall	_getchar
                                   2629 ;	life.c:335: __endasm;
      002C4A 43 87 02         [24] 2630 	orl	pcon, #2
                                   2631 ;	life.c:336: }
      002C4D 85 10 81         [24] 2632 	mov	sp,_bp
      002C50 D0 10            [24] 2633 	pop	_bp
      002C52 22               [24] 2634 	ret
                                   2635 	.area CSEG    (CODE)
                                   2636 	.area CONST   (CODE)
                                   2637 	.area CONST   (CODE)
      00301A                       2638 ___str_0:
      00301A 1B                    2639 	.db 0x1b
      00301B 5B 3F 32 35 6C        2640 	.ascii "[?25l"
      003020 00                    2641 	.db 0x00
                                   2642 	.area CSEG    (CODE)
                                   2643 	.area CONST   (CODE)
      003021                       2644 ___str_1:
      003021 1B                    2645 	.db 0x1b
      003022 5B 32 4A 47 45 4E 20  2646 	.ascii "[2JGEN "
      003029 00                    2647 	.db 0x00
                                   2648 	.area CSEG    (CODE)
                                   2649 	.area CONST   (CODE)
      00302A                       2650 ___str_2:
      00302A 0D                    2651 	.db 0x0d
      00302B 0A                    2652 	.db 0x0a
      00302C 00                    2653 	.db 0x00
                                   2654 	.area CSEG    (CODE)
                                   2655 	.area CONST   (CODE)
      00302D                       2656 ___str_3:
      00302D 1B                    2657 	.db 0x1b
      00302E 5B 3F 32 35 68        2658 	.ascii "[?25h"
      003033 00                    2659 	.db 0x00
                                   2660 	.area CSEG    (CODE)
                                   2661 	.area CONST   (CODE)
      003034                       2662 ___str_4:
      003034 4C 4F 41 44 20 30 20  2663 	.ascii "LOAD 0 1 ~ # <"
             31 20 7E 20 23 20 3C
      003042 00                    2664 	.db 0x00
                                   2665 	.area CSEG    (CODE)
                                   2666 	.area CONST   (CODE)
      003043                       2667 ___str_5:
      003043 3E                    2668 	.ascii ">"
      003044 0D                    2669 	.db 0x0d
      003045 0A                    2670 	.db 0x0a
      003046 00                    2671 	.db 0x00
                                   2672 	.area CSEG    (CODE)
                                   2673 	.area CONST   (CODE)
      003047                       2674 ___str_6:
      003047 52 41 4E 44 4F 4D     2675 	.ascii "RANDOM"
      00304D 00                    2676 	.db 0x00
                                   2677 	.area CSEG    (CODE)
                                   2678 	.area CONST   (CODE)
      00304E                       2679 ___str_7:
      00304E 1B                    2680 	.db 0x1b
      00304F 5B 3F 32 35 68        2681 	.ascii "[?25h"
      003054 1B                    2682 	.db 0x1b
      003055 5B 6D                 2683 	.ascii "[m"
      003057 00                    2684 	.db 0x00
                                   2685 	.area CSEG    (CODE)
                                   2686 	.area CONST   (CODE)
      003058                       2687 ___str_8:
      003058 4C 49 46 45 20 49 4E  2688 	.ascii "LIFE INIT T L R P"
             49 54 20 54 20 4C 20
             52 20 50
      003069 0D                    2689 	.db 0x0d
      00306A 0A                    2690 	.db 0x0a
      00306B 00                    2691 	.db 0x00
                                   2692 	.area CSEG    (CODE)
                                   2693 	.area CONST   (CODE)
      00306C                       2694 ___str_9:
      00306C 52 45 41 44 59 20 54  2695 	.ascii "READY T L R P S"
             20 4C 20 52 20 50 20
             53
      00307B 0D                    2696 	.db 0x0d
      00307C 0A                    2697 	.db 0x0a
      00307D 00                    2698 	.db 0x00
                                   2699 	.area CSEG    (CODE)
                                   2700 	.area CONST   (CODE)
      00307E                       2701 ___str_10:
      00307E 44 4F 4E 45 20        2702 	.ascii "DONE "
      003083 00                    2703 	.db 0x00
                                   2704 	.area CSEG    (CODE)
                                   2705 	.area CONST   (CODE)
      003084                       2706 ___str_11:
      003084 46 49 58 45 44        2707 	.ascii "FIXED"
      003089 0D                    2708 	.db 0x0d
      00308A 0A                    2709 	.db 0x0a
      00308B 00                    2710 	.db 0x00
                                   2711 	.area CSEG    (CODE)
                                   2712 	.area CONST   (CODE)
      00308C                       2713 ___str_12:
      00308C 43 59 43 4C 45 32     2714 	.ascii "CYCLE2"
      003092 0D                    2715 	.db 0x0d
      003093 0A                    2716 	.db 0x0a
      003094 00                    2717 	.db 0x00
                                   2718 	.area CSEG    (CODE)
                                   2719 	.area CONST   (CODE)
      003095                       2720 ___str_13:
      003095 42 52 45 41 4B        2721 	.ascii "BREAK"
      00309A 0D                    2722 	.db 0x0d
      00309B 0A                    2723 	.db 0x0a
      00309C 00                    2724 	.db 0x00
                                   2725 	.area CSEG    (CODE)
                                   2726 	.area CONST   (CODE)
      00309D                       2727 ___str_14:
      00309D 54 45 52 4D           2728 	.ascii "TERM"
      0030A1 0D                    2729 	.db 0x0d
      0030A2 0A                    2730 	.db 0x0a
      0030A3 00                    2731 	.db 0x00
                                   2732 	.area CSEG    (CODE)
                                   2733 	.area XINIT   (CODE)
                                   2734 	.area CABS    (ABS,CODE)
