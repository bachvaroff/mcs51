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
      002016 02 23 1E         [24]  456 	ljmp	_main
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
                                    583 ;	life.c:95: __endasm;
      0020F1 00               [12]  584 	nop
      0020F2 00               [12]  585 	nop
      0020F3 00               [12]  586 	nop
                                    587 ;	life.c:96: OEreg = OE76;
      0020F4 78 33            [12]  588 	mov	r0,#_OE76
      0020F6 90 F0 06         [24]  589 	mov	dptr,#_OEreg
      0020F9 E6               [12]  590 	mov	a,@r0
      0020FA F0               [24]  591 	movx	@dptr,a
                                    592 ;	life.c:97: P1_7 = 1;
                                    593 ;	assignBit
      0020FB D2 97            [12]  594 	setb	_P1_7
                                    595 ;	life.c:102: __endasm;
      0020FD 00               [12]  596 	nop
      0020FE 00               [12]  597 	nop
      0020FF 00               [12]  598 	nop
                                    599 ;	life.c:104: return;
                                    600 ;	life.c:105: }
      002100 22               [24]  601 	ret
                                    602 ;------------------------------------------------------------
                                    603 ;Allocation info for local variables in function 'show'
                                    604 ;------------------------------------------------------------
                                    605 ;hdr                       Allocated to registers r7 
                                    606 ;__1310720005              Allocated to registers 
                                    607 ;s                         Allocated to registers r4 r5 r6 
                                    608 ;__1966080007              Allocated to registers 
                                    609 ;s                         Allocated to registers r5 r6 r7 
                                    610 ;__1310720001              Allocated to registers r6 r7 
                                    611 ;a                         Allocated to registers 
                                    612 ;__1310720003              Allocated to registers r6 r7 
                                    613 ;a                         Allocated to registers 
                                    614 ;__1966080010              Allocated to registers 
                                    615 ;s                         Allocated to registers r5 r6 r7 
                                    616 ;__2621440013              Allocated to registers 
                                    617 ;s                         Allocated to registers r5 r6 r7 
                                    618 ;__1310720015              Allocated to registers 
                                    619 ;s                         Allocated to registers r5 r6 r7 
                                    620 ;------------------------------------------------------------
                                    621 ;	life.c:141: void show(char hdr) {
                                    622 ;	-----------------------------------------
                                    623 ;	 function show
                                    624 ;	-----------------------------------------
      002101                        625 _show:
      002101 AF 82            [24]  626 	mov	r7,dpl
                                    627 ;	life.c:142: printstr("\033[?25l");
      002103 7C 23            [12]  628 	mov	r4,#___str_0
      002105 7D 30            [12]  629 	mov	r5,#(___str_0 >> 8)
      002107 7E 80            [12]  630 	mov	r6,#0x80
                                    631 ;	life.c:68: return;
      002109                        632 00125$:
                                    633 ;	life.c:66: for (; *s; s++) putchar(*s);
      002109 8C 82            [24]  634 	mov	dpl,r4
      00210B 8D 83            [24]  635 	mov	dph,r5
      00210D 8E F0            [24]  636 	mov	b,r6
      00210F 12 2E FB         [24]  637 	lcall	__gptrget
      002112 FB               [12]  638 	mov	r3,a
      002113 60 10            [24]  639 	jz	00109$
      002115 7A 00            [12]  640 	mov	r2,#0x00
      002117 8B 82            [24]  641 	mov	dpl,r3
      002119 8A 83            [24]  642 	mov	dph,r2
      00211B 12 20 B5         [24]  643 	lcall	_putchar
      00211E 0C               [12]  644 	inc	r4
                                    645 ;	life.c:142: printstr("\033[?25l");
      00211F BC 00 E7         [24]  646 	cjne	r4,#0x00,00125$
      002122 0D               [12]  647 	inc	r5
      002123 80 E4            [24]  648 	sjmp	00125$
      002125                        649 00109$:
                                    650 ;	life.c:144: if (hdr) {
      002125 EF               [12]  651 	mov	a,r7
      002126 70 03            [24]  652 	jnz	00220$
      002128 02 22 61         [24]  653 	ljmp	00102$
      00212B                        654 00220$:
                                    655 ;	life.c:145: printstr("\033[2JGEN ");
      00212B 7D 2A            [12]  656 	mov	r5,#___str_1
      00212D 7E 30            [12]  657 	mov	r6,#(___str_1 >> 8)
      00212F 7F 80            [12]  658 	mov	r7,#0x80
                                    659 ;	life.c:68: return;
      002131                        660 00128$:
                                    661 ;	life.c:66: for (; *s; s++) putchar(*s);
      002131 8D 82            [24]  662 	mov	dpl,r5
      002133 8E 83            [24]  663 	mov	dph,r6
      002135 8F F0            [24]  664 	mov	b,r7
      002137 12 2E FB         [24]  665 	lcall	__gptrget
      00213A FC               [12]  666 	mov	r4,a
      00213B 60 10            [24]  667 	jz	00111$
      00213D 7B 00            [12]  668 	mov	r3,#0x00
      00213F 8C 82            [24]  669 	mov	dpl,r4
      002141 8B 83            [24]  670 	mov	dph,r3
      002143 12 20 B5         [24]  671 	lcall	_putchar
      002146 0D               [12]  672 	inc	r5
                                    673 ;	life.c:145: printstr("\033[2JGEN ");
      002147 BD 00 E7         [24]  674 	cjne	r5,#0x00,00128$
      00214A 0E               [12]  675 	inc	r6
      00214B 80 E4            [24]  676 	sjmp	00128$
      00214D                        677 00111$:
                                    678 ;	life.c:135: print16x(generation[1]);
      00214D 78 45            [12]  679 	mov	r0,#(_generation + 0x0002)
      00214F 86 06            [24]  680 	mov	ar6,@r0
      002151 08               [12]  681 	inc	r0
                                    682 ;	life.c:57: putchar(digits[(a >> 12) & 0xf]);
      002152 E6               [12]  683 	mov	a,@r0
      002153 FF               [12]  684 	mov	r7,a
      002154 C4               [12]  685 	swap	a
      002155 54 0F            [12]  686 	anl	a,#0x0f
      002157 FC               [12]  687 	mov	r4,a
      002158 53 04 0F         [24]  688 	anl	ar4,#0x0f
      00215B EC               [12]  689 	mov	a,r4
      00215C 24 21            [12]  690 	add	a,#_digits
      00215E F9               [12]  691 	mov	r1,a
      00215F 87 05            [24]  692 	mov	ar5,@r1
      002161 7C 00            [12]  693 	mov	r4,#0x00
      002163 8D 82            [24]  694 	mov	dpl,r5
      002165 8C 83            [24]  695 	mov	dph,r4
      002167 12 20 B5         [24]  696 	lcall	_putchar
                                    697 ;	life.c:58: putchar(digits[(a >> 8) & 0xf]);
      00216A 8F 05            [24]  698 	mov	ar5,r7
      00216C 53 05 0F         [24]  699 	anl	ar5,#0x0f
      00216F ED               [12]  700 	mov	a,r5
      002170 24 21            [12]  701 	add	a,#_digits
      002172 F9               [12]  702 	mov	r1,a
      002173 87 05            [24]  703 	mov	ar5,@r1
      002175 7C 00            [12]  704 	mov	r4,#0x00
      002177 8D 82            [24]  705 	mov	dpl,r5
      002179 8C 83            [24]  706 	mov	dph,r4
      00217B 12 20 B5         [24]  707 	lcall	_putchar
                                    708 ;	life.c:59: putchar(digits[(a >> 4) & 0xf]);
      00217E 8E 04            [24]  709 	mov	ar4,r6
      002180 EF               [12]  710 	mov	a,r7
      002181 C4               [12]  711 	swap	a
      002182 CC               [12]  712 	xch	a,r4
      002183 C4               [12]  713 	swap	a
      002184 54 0F            [12]  714 	anl	a,#0x0f
      002186 6C               [12]  715 	xrl	a,r4
      002187 CC               [12]  716 	xch	a,r4
      002188 54 0F            [12]  717 	anl	a,#0x0f
      00218A CC               [12]  718 	xch	a,r4
      00218B 6C               [12]  719 	xrl	a,r4
      00218C CC               [12]  720 	xch	a,r4
      00218D 53 04 0F         [24]  721 	anl	ar4,#0x0f
      002190 EC               [12]  722 	mov	a,r4
      002191 24 21            [12]  723 	add	a,#_digits
      002193 F9               [12]  724 	mov	r1,a
      002194 87 05            [24]  725 	mov	ar5,@r1
      002196 7C 00            [12]  726 	mov	r4,#0x00
      002198 8D 82            [24]  727 	mov	dpl,r5
      00219A 8C 83            [24]  728 	mov	dph,r4
      00219C 12 20 B5         [24]  729 	lcall	_putchar
                                    730 ;	life.c:60: putchar(digits[a & 0xf]);
      00219F 53 06 0F         [24]  731 	anl	ar6,#0x0f
      0021A2 EE               [12]  732 	mov	a,r6
      0021A3 24 21            [12]  733 	add	a,#_digits
      0021A5 F9               [12]  734 	mov	r1,a
      0021A6 87 07            [24]  735 	mov	ar7,@r1
      0021A8 7E 00            [12]  736 	mov	r6,#0x00
      0021AA 8F 82            [24]  737 	mov	dpl,r7
      0021AC 8E 83            [24]  738 	mov	dph,r6
      0021AE 12 20 B5         [24]  739 	lcall	_putchar
                                    740 ;	life.c:136: print16x(generation[0]);
      0021B1 78 43            [12]  741 	mov	r0,#_generation
      0021B3 86 06            [24]  742 	mov	ar6,@r0
      0021B5 08               [12]  743 	inc	r0
                                    744 ;	life.c:57: putchar(digits[(a >> 12) & 0xf]);
      0021B6 E6               [12]  745 	mov	a,@r0
      0021B7 FF               [12]  746 	mov	r7,a
      0021B8 C4               [12]  747 	swap	a
      0021B9 54 0F            [12]  748 	anl	a,#0x0f
      0021BB FC               [12]  749 	mov	r4,a
      0021BC 53 04 0F         [24]  750 	anl	ar4,#0x0f
      0021BF EC               [12]  751 	mov	a,r4
      0021C0 24 21            [12]  752 	add	a,#_digits
      0021C2 F9               [12]  753 	mov	r1,a
      0021C3 87 05            [24]  754 	mov	ar5,@r1
      0021C5 7C 00            [12]  755 	mov	r4,#0x00
      0021C7 8D 82            [24]  756 	mov	dpl,r5
      0021C9 8C 83            [24]  757 	mov	dph,r4
      0021CB 12 20 B5         [24]  758 	lcall	_putchar
                                    759 ;	life.c:58: putchar(digits[(a >> 8) & 0xf]);
      0021CE 8F 05            [24]  760 	mov	ar5,r7
      0021D0 53 05 0F         [24]  761 	anl	ar5,#0x0f
      0021D3 ED               [12]  762 	mov	a,r5
      0021D4 24 21            [12]  763 	add	a,#_digits
      0021D6 F9               [12]  764 	mov	r1,a
      0021D7 87 05            [24]  765 	mov	ar5,@r1
      0021D9 7C 00            [12]  766 	mov	r4,#0x00
      0021DB 8D 82            [24]  767 	mov	dpl,r5
      0021DD 8C 83            [24]  768 	mov	dph,r4
      0021DF 12 20 B5         [24]  769 	lcall	_putchar
                                    770 ;	life.c:59: putchar(digits[(a >> 4) & 0xf]);
      0021E2 8E 04            [24]  771 	mov	ar4,r6
      0021E4 EF               [12]  772 	mov	a,r7
      0021E5 C4               [12]  773 	swap	a
      0021E6 CC               [12]  774 	xch	a,r4
      0021E7 C4               [12]  775 	swap	a
      0021E8 54 0F            [12]  776 	anl	a,#0x0f
      0021EA 6C               [12]  777 	xrl	a,r4
      0021EB CC               [12]  778 	xch	a,r4
      0021EC 54 0F            [12]  779 	anl	a,#0x0f
      0021EE CC               [12]  780 	xch	a,r4
      0021EF 6C               [12]  781 	xrl	a,r4
      0021F0 CC               [12]  782 	xch	a,r4
      0021F1 53 04 0F         [24]  783 	anl	ar4,#0x0f
      0021F4 EC               [12]  784 	mov	a,r4
      0021F5 24 21            [12]  785 	add	a,#_digits
      0021F7 F9               [12]  786 	mov	r1,a
      0021F8 87 05            [24]  787 	mov	ar5,@r1
      0021FA 7C 00            [12]  788 	mov	r4,#0x00
      0021FC 8D 82            [24]  789 	mov	dpl,r5
      0021FE 8C 83            [24]  790 	mov	dph,r4
      002200 12 20 B5         [24]  791 	lcall	_putchar
                                    792 ;	life.c:60: putchar(digits[a & 0xf]);
      002203 53 06 0F         [24]  793 	anl	ar6,#0x0f
      002206 EE               [12]  794 	mov	a,r6
      002207 24 21            [12]  795 	add	a,#_digits
      002209 F9               [12]  796 	mov	r1,a
      00220A 87 07            [24]  797 	mov	ar7,@r1
      00220C 7E 00            [12]  798 	mov	r6,#0x00
      00220E 8F 82            [24]  799 	mov	dpl,r7
      002210 8E 83            [24]  800 	mov	dph,r6
      002212 12 20 B5         [24]  801 	lcall	_putchar
                                    802 ;	life.c:147: printstr("\r\n");
      002215 7D 33            [12]  803 	mov	r5,#___str_2
      002217 7E 30            [12]  804 	mov	r6,#(___str_2 >> 8)
      002219 7F 80            [12]  805 	mov	r7,#0x80
                                    806 ;	life.c:68: return;
      00221B                        807 00131$:
                                    808 ;	life.c:66: for (; *s; s++) putchar(*s);
      00221B 8D 82            [24]  809 	mov	dpl,r5
      00221D 8E 83            [24]  810 	mov	dph,r6
      00221F 8F F0            [24]  811 	mov	b,r7
      002221 12 2E FB         [24]  812 	lcall	__gptrget
      002224 FC               [12]  813 	mov	r4,a
      002225 60 10            [24]  814 	jz	00116$
      002227 7B 00            [12]  815 	mov	r3,#0x00
      002229 8C 82            [24]  816 	mov	dpl,r4
      00222B 8B 83            [24]  817 	mov	dph,r3
      00222D 12 20 B5         [24]  818 	lcall	_putchar
      002230 0D               [12]  819 	inc	r5
                                    820 ;	life.c:147: printstr("\r\n");
      002231 BD 00 E7         [24]  821 	cjne	r5,#0x00,00131$
      002234 0E               [12]  822 	inc	r6
      002235 80 E4            [24]  823 	sjmp	00131$
      002237                        824 00116$:
                                    825 ;	life.c:128: generation[0]++;
      002237 78 43            [12]  826 	mov	r0,#_generation
      002239 86 06            [24]  827 	mov	ar6,@r0
      00223B 08               [12]  828 	inc	r0
      00223C 86 07            [24]  829 	mov	ar7,@r0
      00223E 0E               [12]  830 	inc	r6
      00223F BE 00 01         [24]  831 	cjne	r6,#0x00,00225$
      002242 0F               [12]  832 	inc	r7
      002243                        833 00225$:
      002243 78 43            [12]  834 	mov	r0,#_generation
      002245 A6 06            [24]  835 	mov	@r0,ar6
      002247 08               [12]  836 	inc	r0
      002248 A6 07            [24]  837 	mov	@r0,ar7
                                    838 ;	life.c:129: if (!generation[0]) generation[1]++;
      00224A EE               [12]  839 	mov	a,r6
      00224B 4F               [12]  840 	orl	a,r7
      00224C 70 13            [24]  841 	jnz	00102$
      00224E 78 45            [12]  842 	mov	r0,#(_generation + 0x0002)
      002250 86 06            [24]  843 	mov	ar6,@r0
      002252 08               [12]  844 	inc	r0
      002253 86 07            [24]  845 	mov	ar7,@r0
      002255 0E               [12]  846 	inc	r6
      002256 BE 00 01         [24]  847 	cjne	r6,#0x00,00227$
      002259 0F               [12]  848 	inc	r7
      00225A                        849 00227$:
      00225A 78 45            [12]  850 	mov	r0,#(_generation + 0x0002)
      00225C A6 06            [24]  851 	mov	@r0,ar6
      00225E 08               [12]  852 	inc	r0
      00225F A6 07            [24]  853 	mov	@r0,ar7
                                    854 ;	life.c:148: updategen();
      002261                        855 00102$:
                                    856 ;	life.c:151: for (x = 0; x < W; x++) {
      002261 78 34            [12]  857 	mov	r0,#_x
      002263 E4               [12]  858 	clr	a
      002264 F6               [12]  859 	mov	@r0,a
      002265 08               [12]  860 	inc	r0
      002266 F6               [12]  861 	mov	@r0,a
      002267                        862 00138$:
                                    863 ;	life.c:152: for (y = 0; y < H; y++)
      002267 78 36            [12]  864 	mov	r0,#_y
      002269 E4               [12]  865 	clr	a
      00226A F6               [12]  866 	mov	@r0,a
      00226B 08               [12]  867 	inc	r0
      00226C F6               [12]  868 	mov	@r0,a
      00226D                        869 00133$:
                                    870 ;	life.c:153: if (u[A2D(W, y, x)]) putchar('1');
      00226D 78 36            [12]  871 	mov	r0,#_y
      00226F E6               [12]  872 	mov	a,@r0
      002270 C0 E0            [24]  873 	push	acc
      002272 08               [12]  874 	inc	r0
      002273 E6               [12]  875 	mov	a,@r0
      002274 C0 E0            [24]  876 	push	acc
      002276 90 00 30         [24]  877 	mov	dptr,#0x0030
      002279 12 2D 39         [24]  878 	lcall	__mulint
      00227C AE 82            [24]  879 	mov	r6,dpl
      00227E AF 83            [24]  880 	mov	r7,dph
      002280 15 81            [12]  881 	dec	sp
      002282 15 81            [12]  882 	dec	sp
      002284 78 34            [12]  883 	mov	r0,#_x
      002286 E6               [12]  884 	mov	a,@r0
      002287 2E               [12]  885 	add	a,r6
      002288 FE               [12]  886 	mov	r6,a
      002289 08               [12]  887 	inc	r0
      00228A E6               [12]  888 	mov	a,@r0
      00228B 3F               [12]  889 	addc	a,r7
      00228C FF               [12]  890 	mov	r7,a
      00228D EE               [12]  891 	mov	a,r6
      00228E 24 00            [12]  892 	add	a,#_u
      002290 FE               [12]  893 	mov	r6,a
      002291 EF               [12]  894 	mov	a,r7
      002292 34 88            [12]  895 	addc	a,#(_u >> 8)
      002294 FF               [12]  896 	mov	r7,a
      002295 8E 82            [24]  897 	mov	dpl,r6
      002297 8F 83            [24]  898 	mov	dph,r7
      002299 E0               [24]  899 	movx	a,@dptr
      00229A 60 08            [24]  900 	jz	00104$
      00229C 90 00 31         [24]  901 	mov	dptr,#0x0031
      00229F 12 20 B5         [24]  902 	lcall	_putchar
      0022A2 80 06            [24]  903 	sjmp	00134$
      0022A4                        904 00104$:
                                    905 ;	life.c:154: else putchar('0');
      0022A4 90 00 30         [24]  906 	mov	dptr,#0x0030
      0022A7 12 20 B5         [24]  907 	lcall	_putchar
      0022AA                        908 00134$:
                                    909 ;	life.c:152: for (y = 0; y < H; y++)
      0022AA 78 36            [12]  910 	mov	r0,#_y
      0022AC 06               [12]  911 	inc	@r0
      0022AD B6 00 02         [24]  912 	cjne	@r0,#0x00,00229$
      0022B0 08               [12]  913 	inc	r0
      0022B1 06               [12]  914 	inc	@r0
      0022B2                        915 00229$:
      0022B2 78 36            [12]  916 	mov	r0,#_y
      0022B4 C3               [12]  917 	clr	c
      0022B5 E6               [12]  918 	mov	a,@r0
      0022B6 94 C0            [12]  919 	subb	a,#0xc0
      0022B8 08               [12]  920 	inc	r0
      0022B9 E6               [12]  921 	mov	a,@r0
      0022BA 64 80            [12]  922 	xrl	a,#0x80
      0022BC 94 80            [12]  923 	subb	a,#0x80
      0022BE 40 AD            [24]  924 	jc	00133$
                                    925 ;	life.c:155: printstr("\r\n");
      0022C0 7D 33            [12]  926 	mov	r5,#___str_2
      0022C2 7E 30            [12]  927 	mov	r6,#(___str_2 >> 8)
      0022C4 7F 80            [12]  928 	mov	r7,#0x80
                                    929 ;	life.c:68: return;
      0022C6                        930 00136$:
                                    931 ;	life.c:66: for (; *s; s++) putchar(*s);
      0022C6 8D 82            [24]  932 	mov	dpl,r5
      0022C8 8E 83            [24]  933 	mov	dph,r6
      0022CA 8F F0            [24]  934 	mov	b,r7
      0022CC 12 2E FB         [24]  935 	lcall	__gptrget
      0022CF FC               [12]  936 	mov	r4,a
      0022D0 60 10            [24]  937 	jz	00121$
      0022D2 7B 00            [12]  938 	mov	r3,#0x00
      0022D4 8C 82            [24]  939 	mov	dpl,r4
      0022D6 8B 83            [24]  940 	mov	dph,r3
      0022D8 12 20 B5         [24]  941 	lcall	_putchar
      0022DB 0D               [12]  942 	inc	r5
                                    943 ;	life.c:155: printstr("\r\n");
      0022DC BD 00 E7         [24]  944 	cjne	r5,#0x00,00136$
      0022DF 0E               [12]  945 	inc	r6
      0022E0 80 E4            [24]  946 	sjmp	00136$
      0022E2                        947 00121$:
                                    948 ;	life.c:151: for (x = 0; x < W; x++) {
      0022E2 78 34            [12]  949 	mov	r0,#_x
      0022E4 06               [12]  950 	inc	@r0
      0022E5 B6 00 02         [24]  951 	cjne	@r0,#0x00,00233$
      0022E8 08               [12]  952 	inc	r0
      0022E9 06               [12]  953 	inc	@r0
      0022EA                        954 00233$:
      0022EA 78 34            [12]  955 	mov	r0,#_x
      0022EC C3               [12]  956 	clr	c
      0022ED E6               [12]  957 	mov	a,@r0
      0022EE 94 30            [12]  958 	subb	a,#0x30
      0022F0 08               [12]  959 	inc	r0
      0022F1 E6               [12]  960 	mov	a,@r0
      0022F2 64 80            [12]  961 	xrl	a,#0x80
      0022F4 94 80            [12]  962 	subb	a,#0x80
      0022F6 50 03            [24]  963 	jnc	00234$
      0022F8 02 22 67         [24]  964 	ljmp	00138$
      0022FB                        965 00234$:
                                    966 ;	life.c:158: printstr("\033[?25h");
      0022FB 7D 36            [12]  967 	mov	r5,#___str_3
      0022FD 7E 30            [12]  968 	mov	r6,#(___str_3 >> 8)
      0022FF 7F 80            [12]  969 	mov	r7,#0x80
                                    970 ;	life.c:68: return;
      002301                        971 00141$:
                                    972 ;	life.c:66: for (; *s; s++) putchar(*s);
      002301 8D 82            [24]  973 	mov	dpl,r5
      002303 8E 83            [24]  974 	mov	dph,r6
      002305 8F F0            [24]  975 	mov	b,r7
      002307 12 2E FB         [24]  976 	lcall	__gptrget
      00230A FC               [12]  977 	mov	r4,a
      00230B 60 10            [24]  978 	jz	00123$
      00230D 7B 00            [12]  979 	mov	r3,#0x00
      00230F 8C 82            [24]  980 	mov	dpl,r4
      002311 8B 83            [24]  981 	mov	dph,r3
      002313 12 20 B5         [24]  982 	lcall	_putchar
      002316 0D               [12]  983 	inc	r5
                                    984 ;	life.c:158: printstr("\033[?25h");
      002317 BD 00 E7         [24]  985 	cjne	r5,#0x00,00141$
      00231A 0E               [12]  986 	inc	r6
      00231B 80 E4            [24]  987 	sjmp	00141$
      00231D                        988 00123$:
                                    989 ;	life.c:160: return;
                                    990 ;	life.c:161: }
      00231D 22               [24]  991 	ret
                                    992 ;------------------------------------------------------------
                                    993 ;Allocation info for local variables in function 'main'
                                    994 ;------------------------------------------------------------
                                    995 ;__1310720027              Allocated to registers 
                                    996 ;s                         Allocated to registers r5 r6 r7 
                                    997 ;__2621440029              Allocated to registers 
                                    998 ;s                         Allocated to registers r5 r6 r7 
                                    999 ;__1310720017              Allocated to registers 
                                   1000 ;s                         Allocated to registers r5 r6 r7 
                                   1001 ;__1310720019              Allocated to registers r6 r7 
                                   1002 ;a                         Allocated to registers r4 r5 
                                   1003 ;__1310720021              Allocated to registers 
                                   1004 ;s                         Allocated to registers r5 r6 r7 
                                   1005 ;__1310720023              Allocated to registers 
                                   1006 ;s                         Allocated to registers r5 r6 r7 
                                   1007 ;__1310720025              Allocated to registers 
                                   1008 ;s                         Allocated to registers r5 r6 r7 
                                   1009 ;__2621440034              Allocated to registers 
                                   1010 ;s                         Allocated to registers r5 r6 r7 
                                   1011 ;__4587520038              Allocated to registers 
                                   1012 ;s                         Allocated to registers r5 r6 r7 
                                   1013 ;__4587520040              Allocated to registers 
                                   1014 ;s                         Allocated to registers r5 r6 r7 
                                   1015 ;__4587520042              Allocated to registers 
                                   1016 ;s                         Allocated to registers r5 r6 r7 
                                   1017 ;__3276800044              Allocated to registers 
                                   1018 ;s                         Allocated to registers r5 r6 r7 
                                   1019 ;__1310720046              Allocated to registers 
                                   1020 ;s                         Allocated to registers r5 r6 r7 
                                   1021 ;sloc0                     Allocated to stack - _bp +1
                                   1022 ;sloc1                     Allocated to stack - _bp +2
                                   1023 ;sloc2                     Allocated to stack - _bp +4
                                   1024 ;sloc3                     Allocated to stack - _bp +6
                                   1025 ;sloc4                     Allocated to stack - _bp +8
                                   1026 ;sloc5                     Allocated to stack - _bp +10
                                   1027 ;sloc6                     Allocated to stack - _bp +12
                                   1028 ;------------------------------------------------------------
                                   1029 ;	life.c:272: void main(void) {
                                   1030 ;	-----------------------------------------
                                   1031 ;	 function main
                                   1032 ;	-----------------------------------------
      00231E                       1033 _main:
      00231E C0 10            [24] 1034 	push	_bp
      002320 E5 81            [12] 1035 	mov	a,sp
      002322 F5 10            [12] 1036 	mov	_bp,a
      002324 24 0D            [12] 1037 	add	a,#0x0d
      002326 F5 81            [12] 1038 	mov	sp,a
                                   1039 ;	life.c:273: IT0 = 1;
                                   1040 ;	assignBit
      002328 D2 88            [12] 1041 	setb	_IT0
                                   1042 ;	life.c:274: IT1 = 1;
                                   1043 ;	assignBit
      00232A D2 8A            [12] 1044 	setb	_IT1
                                   1045 ;	life.c:275: EX0 = 1;
                                   1046 ;	assignBit
      00232C D2 A8            [12] 1047 	setb	_EX0
                                   1048 ;	life.c:276: EX1 = 1;
                                   1049 ;	assignBit
      00232E D2 AA            [12] 1050 	setb	_EX1
                                   1051 ;	life.c:277: EA = 1;	
                                   1052 ;	assignBit
      002330 D2 AF            [12] 1053 	setb	_EA
                                   1054 ;	life.c:278: P1_7 = 1;
                                   1055 ;	assignBit
      002332 D2 97            [12] 1056 	setb	_P1_7
                                   1057 ;	life.c:283: __endasm;
      002334 00               [12] 1058 	nop
      002335 00               [12] 1059 	nop
      002336 00               [12] 1060 	nop
                                   1061 ;	life.c:285: srand(RND);
      002337 90 80 00         [24] 1062 	mov	dptr,#_RND
      00233A E0               [24] 1063 	movx	a,@dptr
      00233B FE               [12] 1064 	mov	r6,a
      00233C A3               [24] 1065 	inc	dptr
      00233D E0               [24] 1066 	movx	a,@dptr
      00233E FF               [12] 1067 	mov	r7,a
      00233F 8E 82            [24] 1068 	mov	dpl,r6
      002341 8F 83            [24] 1069 	mov	dph,r7
      002343 12 2D 20         [24] 1070 	lcall	_srand
                                   1071 ;	life.c:287: OE76 = OE76_0;
      002346 78 33            [12] 1072 	mov	r0,#_OE76
      002348 76 3F            [12] 1073 	mov	@r0,#0x3f
                                   1074 ;	life.c:288: flashOE();
      00234A 12 20 EF         [24] 1075 	lcall	_flashOE
                                   1076 ;	life.c:290: printstr("\033[?25h\033[m");
      00234D 7D 57            [12] 1077 	mov	r5,#___str_7
      00234F 7E 30            [12] 1078 	mov	r6,#(___str_7 >> 8)
      002351 7F 80            [12] 1079 	mov	r7,#0x80
                                   1080 ;	life.c:68: return;
      002353                       1081 00211$:
                                   1082 ;	life.c:66: for (; *s; s++) putchar(*s);
      002353 8D 82            [24] 1083 	mov	dpl,r5
      002355 8E 83            [24] 1084 	mov	dph,r6
      002357 8F F0            [24] 1085 	mov	b,r7
      002359 12 2E FB         [24] 1086 	lcall	__gptrget
      00235C FC               [12] 1087 	mov	r4,a
      00235D 60 10            [24] 1088 	jz	00151$
      00235F 7B 00            [12] 1089 	mov	r3,#0x00
      002361 8C 82            [24] 1090 	mov	dpl,r4
      002363 8B 83            [24] 1091 	mov	dph,r3
      002365 12 20 B5         [24] 1092 	lcall	_putchar
      002368 0D               [12] 1093 	inc	r5
                                   1094 ;	life.c:290: printstr("\033[?25h\033[m");
      002369 BD 00 E7         [24] 1095 	cjne	r5,#0x00,00211$
      00236C 0E               [12] 1096 	inc	r6
      00236D 80 E4            [24] 1097 	sjmp	00211$
      00236F                       1098 00151$:
                                   1099 ;	life.c:292: for (i0 = 0; !i0; ) {	
      00236F 78 31            [12] 1100 	mov	r0,#_i0
      002371 76 00            [12] 1101 	mov	@r0,#0x00
      002373                       1102 00258$:
                                   1103 ;	life.c:293: printstr("LIFE INIT T L R P\r\n");
      002373 7D 61            [12] 1104 	mov	r5,#___str_8
      002375 7E 30            [12] 1105 	mov	r6,#(___str_8 >> 8)
      002377 7F 80            [12] 1106 	mov	r7,#0x80
                                   1107 ;	life.c:68: return;
      002379                       1108 00214$:
                                   1109 ;	life.c:66: for (; *s; s++) putchar(*s);
      002379 8D 82            [24] 1110 	mov	dpl,r5
      00237B 8E 83            [24] 1111 	mov	dph,r6
      00237D 8F F0            [24] 1112 	mov	b,r7
      00237F 12 2E FB         [24] 1113 	lcall	__gptrget
      002382 FC               [12] 1114 	mov	r4,a
      002383 60 10            [24] 1115 	jz	00110$
      002385 7B 00            [12] 1116 	mov	r3,#0x00
      002387 8C 82            [24] 1117 	mov	dpl,r4
      002389 8B 83            [24] 1118 	mov	dph,r3
      00238B 12 20 B5         [24] 1119 	lcall	_putchar
      00238E 0D               [12] 1120 	inc	r5
                                   1121 ;	life.c:294: while (1) {
      00238F BD 00 E7         [24] 1122 	cjne	r5,#0x00,00214$
      002392 0E               [12] 1123 	inc	r6
      002393 80 E4            [24] 1124 	sjmp	00214$
      002395                       1125 00110$:
                                   1126 ;	life.c:295: c = toupper(getchar());
      002395 12 20 BA         [24] 1127 	lcall	_getchar
      002398 12 2E D4         [24] 1128 	lcall	_toupper
      00239B AE 82            [24] 1129 	mov	r6,dpl
      00239D AF 83            [24] 1130 	mov	r7,dph
      00239F 78 3A            [12] 1131 	mov	r0,#_c
      0023A1 A6 06            [24] 1132 	mov	@r0,ar6
      0023A3 08               [12] 1133 	inc	r0
      0023A4 A6 07            [24] 1134 	mov	@r0,ar7
                                   1135 ;	life.c:296: if (i0 || (c == (int)'T')) goto term;
      0023A6 78 31            [12] 1136 	mov	r0,#_i0
      0023A8 E6               [12] 1137 	mov	a,@r0
      0023A9 60 03            [24] 1138 	jz	00551$
      0023AB 02 2C 2C         [24] 1139 	ljmp	00149$
      0023AE                       1140 00551$:
      0023AE BE 54 06         [24] 1141 	cjne	r6,#0x54,00552$
      0023B1 BF 00 03         [24] 1142 	cjne	r7,#0x00,00552$
      0023B4 02 2C 2C         [24] 1143 	ljmp	00149$
      0023B7                       1144 00552$:
                                   1145 ;	life.c:297: else if ((c == (int)'L') || (c == (int)'R') || (c == (int)'P')) break;
      0023B7 BE 4C 05         [24] 1146 	cjne	r6,#0x4c,00553$
      0023BA BF 00 02         [24] 1147 	cjne	r7,#0x00,00553$
      0023BD 80 0E            [24] 1148 	sjmp	00305$
      0023BF                       1149 00553$:
      0023BF BE 52 05         [24] 1150 	cjne	r6,#0x52,00554$
      0023C2 BF 00 02         [24] 1151 	cjne	r7,#0x00,00554$
      0023C5 80 06            [24] 1152 	sjmp	00305$
      0023C7                       1153 00554$:
      0023C7 BE 50 CB         [24] 1154 	cjne	r6,#0x50,00110$
      0023CA BF 00 C8         [24] 1155 	cjne	r7,#0x00,00110$
                                   1156 ;	life.c:300: reload:
      0023CD                       1157 00305$:
      0023CD                       1158 00112$:
                                   1159 ;	life.c:164: memset(u, 0, sizeof (u));
      0023CD E4               [12] 1160 	clr	a
      0023CE C0 E0            [24] 1161 	push	acc
      0023D0 74 24            [12] 1162 	mov	a,#0x24
      0023D2 C0 E0            [24] 1163 	push	acc
      0023D4 E4               [12] 1164 	clr	a
      0023D5 C0 E0            [24] 1165 	push	acc
      0023D7 90 88 00         [24] 1166 	mov	dptr,#_u
      0023DA 75 F0 00         [24] 1167 	mov	b,#0x00
      0023DD 12 2E 6A         [24] 1168 	lcall	_memset
      0023E0 15 81            [12] 1169 	dec	sp
      0023E2 15 81            [12] 1170 	dec	sp
      0023E4 15 81            [12] 1171 	dec	sp
                                   1172 ;	life.c:165: memset(pu, 0, sizeof (pu));
      0023E6 E4               [12] 1173 	clr	a
      0023E7 C0 E0            [24] 1174 	push	acc
      0023E9 74 24            [12] 1175 	mov	a,#0x24
      0023EB C0 E0            [24] 1176 	push	acc
      0023ED E4               [12] 1177 	clr	a
      0023EE C0 E0            [24] 1178 	push	acc
      0023F0 90 64 00         [24] 1179 	mov	dptr,#_pu
      0023F3 75 F0 00         [24] 1180 	mov	b,#0x00
      0023F6 12 2E 6A         [24] 1181 	lcall	_memset
      0023F9 15 81            [12] 1182 	dec	sp
      0023FB 15 81            [12] 1183 	dec	sp
      0023FD 15 81            [12] 1184 	dec	sp
                                   1185 ;	life.c:302: if (c == (int)'L') loadiu();
      0023FF 78 3A            [12] 1186 	mov	r0,#_c
      002401 B6 4C 06         [24] 1187 	cjne	@r0,#0x4c,00557$
      002404 08               [12] 1188 	inc	r0
      002405 B6 00 02         [24] 1189 	cjne	@r0,#0x00,00557$
      002408 80 03            [24] 1190 	sjmp	00558$
      00240A                       1191 00557$:
      00240A 02 25 85         [24] 1192 	ljmp	00116$
      00240D                       1193 00558$:
                                   1194 ;	life.c:171: j = 0;
      00240D 78 38            [12] 1195 	mov	r0,#_j
      00240F E4               [12] 1196 	clr	a
      002410 F6               [12] 1197 	mov	@r0,a
      002411 08               [12] 1198 	inc	r0
      002412 F6               [12] 1199 	mov	@r0,a
                                   1200 ;	life.c:173: printstr("LOAD 0 1 ~ # <");
      002413 7D 3D            [12] 1201 	mov	r5,#___str_4
      002415 7E 30            [12] 1202 	mov	r6,#(___str_4 >> 8)
      002417 7F 80            [12] 1203 	mov	r7,#0x80
                                   1204 ;	life.c:68: return;
      002419                       1205 00217$:
                                   1206 ;	life.c:66: for (; *s; s++) putchar(*s);
      002419 8D 82            [24] 1207 	mov	dpl,r5
      00241B 8E 83            [24] 1208 	mov	dph,r6
      00241D 8F F0            [24] 1209 	mov	b,r7
      00241F 12 2E FB         [24] 1210 	lcall	__gptrget
      002422 FC               [12] 1211 	mov	r4,a
      002423 60 10            [24] 1212 	jz	00156$
      002425 7B 00            [12] 1213 	mov	r3,#0x00
      002427 8C 82            [24] 1214 	mov	dpl,r4
      002429 8B 83            [24] 1215 	mov	dph,r3
      00242B 12 20 B5         [24] 1216 	lcall	_putchar
      00242E 0D               [12] 1217 	inc	r5
                                   1218 ;	life.c:173: printstr("LOAD 0 1 ~ # <");
      00242F BD 00 E7         [24] 1219 	cjne	r5,#0x00,00217$
      002432 0E               [12] 1220 	inc	r6
      002433 80 E4            [24] 1221 	sjmp	00217$
      002435                       1222 00156$:
                                   1223 ;	life.c:175: for (y = 0; y < (H * W); y += W) {
      002435 78 36            [12] 1224 	mov	r0,#_y
      002437 E4               [12] 1225 	clr	a
      002438 F6               [12] 1226 	mov	@r0,a
      002439 08               [12] 1227 	inc	r0
      00243A F6               [12] 1228 	mov	@r0,a
      00243B                       1229 00220$:
                                   1230 ;	life.c:176: for (x = 0; x < W; x++) {
      00243B 78 34            [12] 1231 	mov	r0,#_x
      00243D E4               [12] 1232 	clr	a
      00243E F6               [12] 1233 	mov	@r0,a
      00243F 08               [12] 1234 	inc	r0
      002440 F6               [12] 1235 	mov	@r0,a
                                   1236 ;	life.c:177: while (1) {
      002441                       1237 00169$:
                                   1238 ;	life.c:178: c = getchar();
      002441 12 20 BA         [24] 1239 	lcall	_getchar
      002444 AE 82            [24] 1240 	mov	r6,dpl
      002446 AF 83            [24] 1241 	mov	r7,dph
      002448 78 3A            [12] 1242 	mov	r0,#_c
      00244A A6 06            [24] 1243 	mov	@r0,ar6
      00244C 08               [12] 1244 	inc	r0
      00244D A6 07            [24] 1245 	mov	@r0,ar7
                                   1246 ;	life.c:179: if (c == (int)'0') {
      00244F BE 30 25         [24] 1247 	cjne	r6,#0x30,00167$
      002452 BF 00 22         [24] 1248 	cjne	r7,#0x00,00167$
                                   1249 ;	life.c:180: iu[y + x] = 0;
      002455 78 36            [12] 1250 	mov	r0,#_y
      002457 79 34            [12] 1251 	mov	r1,#_x
      002459 E7               [12] 1252 	mov	a,@r1
      00245A 26               [12] 1253 	add	a,@r0
      00245B FC               [12] 1254 	mov	r4,a
      00245C 09               [12] 1255 	inc	r1
      00245D E7               [12] 1256 	mov	a,@r1
      00245E 08               [12] 1257 	inc	r0
      00245F 36               [12] 1258 	addc	a,@r0
      002460 FD               [12] 1259 	mov	r5,a
      002461 EC               [12] 1260 	mov	a,r4
      002462 24 00            [12] 1261 	add	a,#_iu
      002464 F5 82            [12] 1262 	mov	dpl,a
      002466 ED               [12] 1263 	mov	a,r5
      002467 34 40            [12] 1264 	addc	a,#(_iu >> 8)
      002469 F5 83            [12] 1265 	mov	dph,a
      00246B E4               [12] 1266 	clr	a
      00246C F0               [24] 1267 	movx	@dptr,a
                                   1268 ;	life.c:181: j++;
      00246D 78 38            [12] 1269 	mov	r0,#_j
      00246F 06               [12] 1270 	inc	@r0
      002470 B6 00 02         [24] 1271 	cjne	@r0,#0x00,00563$
      002473 08               [12] 1272 	inc	r0
      002474 06               [12] 1273 	inc	@r0
      002475                       1274 00563$:
                                   1275 ;	life.c:182: break;
      002475 80 39            [24] 1276 	sjmp	00172$
      002477                       1277 00167$:
                                   1278 ;	life.c:183: } else if (c == (int)'1') {
      002477 BE 31 26         [24] 1279 	cjne	r6,#0x31,00165$
      00247A BF 00 23         [24] 1280 	cjne	r7,#0x00,00165$
                                   1281 ;	life.c:184: iu[y + x] = 1;
      00247D 78 36            [12] 1282 	mov	r0,#_y
      00247F 79 34            [12] 1283 	mov	r1,#_x
      002481 E7               [12] 1284 	mov	a,@r1
      002482 26               [12] 1285 	add	a,@r0
      002483 FC               [12] 1286 	mov	r4,a
      002484 09               [12] 1287 	inc	r1
      002485 E7               [12] 1288 	mov	a,@r1
      002486 08               [12] 1289 	inc	r0
      002487 36               [12] 1290 	addc	a,@r0
      002488 FD               [12] 1291 	mov	r5,a
      002489 EC               [12] 1292 	mov	a,r4
      00248A 24 00            [12] 1293 	add	a,#_iu
      00248C F5 82            [12] 1294 	mov	dpl,a
      00248E ED               [12] 1295 	mov	a,r5
      00248F 34 40            [12] 1296 	addc	a,#(_iu >> 8)
      002491 F5 83            [12] 1297 	mov	dph,a
      002493 74 01            [12] 1298 	mov	a,#0x01
      002495 F0               [24] 1299 	movx	@dptr,a
                                   1300 ;	life.c:185: j++;
      002496 78 38            [12] 1301 	mov	r0,#_j
      002498 06               [12] 1302 	inc	@r0
      002499 B6 00 02         [24] 1303 	cjne	@r0,#0x00,00566$
      00249C 08               [12] 1304 	inc	r0
      00249D 06               [12] 1305 	inc	@r0
      00249E                       1306 00566$:
                                   1307 ;	life.c:186: break;
      00249E 80 10            [24] 1308 	sjmp	00172$
      0024A0                       1309 00165$:
                                   1310 ;	life.c:187: } else if (c == (int)'~') goto br_inner;
      0024A0 BE 7E 05         [24] 1311 	cjne	r6,#0x7e,00567$
      0024A3 BF 00 02         [24] 1312 	cjne	r7,#0x00,00567$
      0024A6 80 21            [24] 1313 	sjmp	00221$
      0024A8                       1314 00567$:
                                   1315 ;	life.c:188: else if (c == (int)'#') goto out;
                                   1316 ;	life.c:192: break;
      0024A8 BE 23 96         [24] 1317 	cjne	r6,#0x23,00169$
      0024AB BF 00 93         [24] 1318 	cjne	r7,#0x00,00169$
      0024AE 80 31            [24] 1319 	sjmp	00182$
      0024B0                       1320 00172$:
                                   1321 ;	life.c:176: for (x = 0; x < W; x++) {
      0024B0 78 34            [12] 1322 	mov	r0,#_x
      0024B2 06               [12] 1323 	inc	@r0
      0024B3 B6 00 02         [24] 1324 	cjne	@r0,#0x00,00569$
      0024B6 08               [12] 1325 	inc	r0
      0024B7 06               [12] 1326 	inc	@r0
      0024B8                       1327 00569$:
      0024B8 78 34            [12] 1328 	mov	r0,#_x
      0024BA C3               [12] 1329 	clr	c
      0024BB E6               [12] 1330 	mov	a,@r0
      0024BC 94 30            [12] 1331 	subb	a,#0x30
      0024BE 08               [12] 1332 	inc	r0
      0024BF E6               [12] 1333 	mov	a,@r0
      0024C0 64 80            [12] 1334 	xrl	a,#0x80
      0024C2 94 80            [12] 1335 	subb	a,#0x80
      0024C4 50 03            [24] 1336 	jnc	00570$
      0024C6 02 24 41         [24] 1337 	ljmp	00169$
      0024C9                       1338 00570$:
      0024C9                       1339 00221$:
                                   1340 ;	life.c:175: for (y = 0; y < (H * W); y += W) {
      0024C9 78 36            [12] 1341 	mov	r0,#_y
      0024CB 74 30            [12] 1342 	mov	a,#0x30
      0024CD 26               [12] 1343 	add	a,@r0
      0024CE F6               [12] 1344 	mov	@r0,a
      0024CF E4               [12] 1345 	clr	a
      0024D0 08               [12] 1346 	inc	r0
      0024D1 36               [12] 1347 	addc	a,@r0
      0024D2 F6               [12] 1348 	mov	@r0,a
      0024D3 78 36            [12] 1349 	mov	r0,#_y
      0024D5 C3               [12] 1350 	clr	c
      0024D6 08               [12] 1351 	inc	r0
      0024D7 E6               [12] 1352 	mov	a,@r0
      0024D8 64 80            [12] 1353 	xrl	a,#0x80
      0024DA 94 A4            [12] 1354 	subb	a,#0xa4
      0024DC 50 03            [24] 1355 	jnc	00571$
      0024DE 02 24 3B         [24] 1356 	ljmp	00220$
      0024E1                       1357 00571$:
                                   1358 ;	life.c:196: out:
      0024E1                       1359 00182$:
                                   1360 ;	life.c:197: if (c != (int)'#')
      0024E1 BE 23 05         [24] 1361 	cjne	r6,#0x23,00572$
      0024E4 BF 00 02         [24] 1362 	cjne	r7,#0x00,00572$
      0024E7 80 14            [24] 1363 	sjmp	00181$
      0024E9                       1364 00572$:
                                   1365 ;	life.c:198: while (1) {
      0024E9                       1366 00178$:
                                   1367 ;	life.c:199: c = getchar();
      0024E9 12 20 BA         [24] 1368 	lcall	_getchar
      0024EC AE 82            [24] 1369 	mov	r6,dpl
      0024EE AF 83            [24] 1370 	mov	r7,dph
      0024F0 78 3A            [12] 1371 	mov	r0,#_c
      0024F2 A6 06            [24] 1372 	mov	@r0,ar6
      0024F4 08               [12] 1373 	inc	r0
      0024F5 A6 07            [24] 1374 	mov	@r0,ar7
                                   1375 ;	life.c:200: if (c == (int)'#') break;
      0024F7 BE 23 EF         [24] 1376 	cjne	r6,#0x23,00178$
      0024FA BF 00 EC         [24] 1377 	cjne	r7,#0x00,00178$
      0024FD                       1378 00181$:
                                   1379 ;	life.c:202: print16x(j);
      0024FD 78 38            [12] 1380 	mov	r0,#_j
      0024FF 86 06            [24] 1381 	mov	ar6,@r0
      002501 08               [12] 1382 	inc	r0
      002502 86 07            [24] 1383 	mov	ar7,@r0
      002504 8E 04            [24] 1384 	mov	ar4,r6
                                   1385 ;	life.c:57: putchar(digits[(a >> 12) & 0xf]);
      002506 EF               [12] 1386 	mov	a,r7
      002507 FD               [12] 1387 	mov	r5,a
      002508 C4               [12] 1388 	swap	a
      002509 54 0F            [12] 1389 	anl	a,#(0x0f&0x0f)
      00250B 24 21            [12] 1390 	add	a,#_digits
      00250D F9               [12] 1391 	mov	r1,a
      00250E 87 07            [24] 1392 	mov	ar7,@r1
      002510 7E 00            [12] 1393 	mov	r6,#0x00
      002512 8F 82            [24] 1394 	mov	dpl,r7
      002514 8E 83            [24] 1395 	mov	dph,r6
      002516 12 20 B5         [24] 1396 	lcall	_putchar
                                   1397 ;	life.c:58: putchar(digits[(a >> 8) & 0xf]);
      002519 8D 07            [24] 1398 	mov	ar7,r5
      00251B 53 07 0F         [24] 1399 	anl	ar7,#0x0f
      00251E EF               [12] 1400 	mov	a,r7
      00251F 24 21            [12] 1401 	add	a,#_digits
      002521 F9               [12] 1402 	mov	r1,a
      002522 87 07            [24] 1403 	mov	ar7,@r1
      002524 7E 00            [12] 1404 	mov	r6,#0x00
      002526 8F 82            [24] 1405 	mov	dpl,r7
      002528 8E 83            [24] 1406 	mov	dph,r6
      00252A 12 20 B5         [24] 1407 	lcall	_putchar
                                   1408 ;	life.c:59: putchar(digits[(a >> 4) & 0xf]);
      00252D 8C 06            [24] 1409 	mov	ar6,r4
      00252F ED               [12] 1410 	mov	a,r5
      002530 C4               [12] 1411 	swap	a
      002531 CE               [12] 1412 	xch	a,r6
      002532 C4               [12] 1413 	swap	a
      002533 54 0F            [12] 1414 	anl	a,#0x0f
      002535 6E               [12] 1415 	xrl	a,r6
      002536 CE               [12] 1416 	xch	a,r6
      002537 54 0F            [12] 1417 	anl	a,#0x0f
      002539 CE               [12] 1418 	xch	a,r6
      00253A 6E               [12] 1419 	xrl	a,r6
      00253B CE               [12] 1420 	xch	a,r6
      00253C 53 06 0F         [24] 1421 	anl	ar6,#0x0f
      00253F EE               [12] 1422 	mov	a,r6
      002540 24 21            [12] 1423 	add	a,#_digits
      002542 F9               [12] 1424 	mov	r1,a
      002543 87 07            [24] 1425 	mov	ar7,@r1
      002545 7E 00            [12] 1426 	mov	r6,#0x00
      002547 8F 82            [24] 1427 	mov	dpl,r7
      002549 8E 83            [24] 1428 	mov	dph,r6
      00254B 12 20 B5         [24] 1429 	lcall	_putchar
                                   1430 ;	life.c:60: putchar(digits[a & 0xf]);
      00254E 53 04 0F         [24] 1431 	anl	ar4,#0x0f
      002551 EC               [12] 1432 	mov	a,r4
      002552 24 21            [12] 1433 	add	a,#_digits
      002554 F9               [12] 1434 	mov	r1,a
      002555 87 07            [24] 1435 	mov	ar7,@r1
      002557 7E 00            [12] 1436 	mov	r6,#0x00
      002559 8F 82            [24] 1437 	mov	dpl,r7
      00255B 8E 83            [24] 1438 	mov	dph,r6
      00255D 12 20 B5         [24] 1439 	lcall	_putchar
                                   1440 ;	life.c:203: printstr(">\r\n");
      002560 7D 4C            [12] 1441 	mov	r5,#___str_5
      002562 7E 30            [12] 1442 	mov	r6,#(___str_5 >> 8)
      002564 7F 80            [12] 1443 	mov	r7,#0x80
                                   1444 ;	life.c:68: return;
      002566                       1445 00223$:
                                   1446 ;	life.c:66: for (; *s; s++) putchar(*s);
      002566 8D 82            [24] 1447 	mov	dpl,r5
      002568 8E 83            [24] 1448 	mov	dph,r6
      00256A 8F F0            [24] 1449 	mov	b,r7
      00256C 12 2E FB         [24] 1450 	lcall	__gptrget
      00256F FC               [12] 1451 	mov	r4,a
      002570 70 03            [24] 1452 	jnz	00575$
      002572 02 26 3E         [24] 1453 	ljmp	00117$
      002575                       1454 00575$:
      002575 7B 00            [12] 1455 	mov	r3,#0x00
      002577 8C 82            [24] 1456 	mov	dpl,r4
      002579 8B 83            [24] 1457 	mov	dph,r3
      00257B 12 20 B5         [24] 1458 	lcall	_putchar
      00257E 0D               [12] 1459 	inc	r5
                                   1460 ;	life.c:302: if (c == (int)'L') loadiu();
      00257F BD 00 E4         [24] 1461 	cjne	r5,#0x00,00223$
      002582 0E               [12] 1462 	inc	r6
      002583 80 E1            [24] 1463 	sjmp	00223$
      002585                       1464 00116$:
                                   1465 ;	life.c:303: else if (c == (int)'R') loadriu();
      002585 78 3A            [12] 1466 	mov	r0,#_c
      002587 B6 52 06         [24] 1467 	cjne	@r0,#0x52,00577$
      00258A 08               [12] 1468 	inc	r0
      00258B B6 00 02         [24] 1469 	cjne	@r0,#0x00,00577$
      00258E 80 03            [24] 1470 	sjmp	00578$
      002590                       1471 00577$:
      002590 02 26 3E         [24] 1472 	ljmp	00117$
      002593                       1473 00578$:
                                   1474 ;	life.c:209: j = 0;
      002593 78 38            [12] 1475 	mov	r0,#_j
      002595 E4               [12] 1476 	clr	a
      002596 F6               [12] 1477 	mov	@r0,a
      002597 08               [12] 1478 	inc	r0
      002598 F6               [12] 1479 	mov	@r0,a
                                   1480 ;	life.c:211: printstr("RANDOM");
      002599 7D 50            [12] 1481 	mov	r5,#___str_6
      00259B 7E 30            [12] 1482 	mov	r6,#(___str_6 >> 8)
      00259D 7F 80            [12] 1483 	mov	r7,#0x80
                                   1484 ;	life.c:68: return;
      00259F                       1485 00226$:
                                   1486 ;	life.c:66: for (; *s; s++) putchar(*s);
      00259F 8D 82            [24] 1487 	mov	dpl,r5
      0025A1 8E 83            [24] 1488 	mov	dph,r6
      0025A3 8F F0            [24] 1489 	mov	b,r7
      0025A5 12 2E FB         [24] 1490 	lcall	__gptrget
      0025A8 FC               [12] 1491 	mov	r4,a
      0025A9 60 10            [24] 1492 	jz	00188$
      0025AB 7B 00            [12] 1493 	mov	r3,#0x00
      0025AD 8C 82            [24] 1494 	mov	dpl,r4
      0025AF 8B 83            [24] 1495 	mov	dph,r3
      0025B1 12 20 B5         [24] 1496 	lcall	_putchar
      0025B4 0D               [12] 1497 	inc	r5
                                   1498 ;	life.c:211: printstr("RANDOM");
      0025B5 BD 00 E7         [24] 1499 	cjne	r5,#0x00,00226$
      0025B8 0E               [12] 1500 	inc	r6
      0025B9 80 E4            [24] 1501 	sjmp	00226$
      0025BB                       1502 00188$:
                                   1503 ;	life.c:213: for (y = 0; y < (H * W); y += W)
      0025BB 78 36            [12] 1504 	mov	r0,#_y
      0025BD E4               [12] 1505 	clr	a
      0025BE F6               [12] 1506 	mov	@r0,a
      0025BF 08               [12] 1507 	inc	r0
      0025C0 F6               [12] 1508 	mov	@r0,a
      0025C1                       1509 00230$:
                                   1510 ;	life.c:214: for (x = 0; x < W; x++)
      0025C1 78 34            [12] 1511 	mov	r0,#_x
      0025C3 E4               [12] 1512 	clr	a
      0025C4 F6               [12] 1513 	mov	@r0,a
      0025C5 08               [12] 1514 	inc	r0
      0025C6 F6               [12] 1515 	mov	@r0,a
      0025C7                       1516 00228$:
                                   1517 ;	life.c:215: iu[y + x] = rand() & 1;
      0025C7 78 36            [12] 1518 	mov	r0,#_y
      0025C9 79 34            [12] 1519 	mov	r1,#_x
      0025CB E7               [12] 1520 	mov	a,@r1
      0025CC 26               [12] 1521 	add	a,@r0
      0025CD FE               [12] 1522 	mov	r6,a
      0025CE 09               [12] 1523 	inc	r1
      0025CF E7               [12] 1524 	mov	a,@r1
      0025D0 08               [12] 1525 	inc	r0
      0025D1 36               [12] 1526 	addc	a,@r0
      0025D2 FF               [12] 1527 	mov	r7,a
      0025D3 EE               [12] 1528 	mov	a,r6
      0025D4 24 00            [12] 1529 	add	a,#_iu
      0025D6 FE               [12] 1530 	mov	r6,a
      0025D7 EF               [12] 1531 	mov	a,r7
      0025D8 34 40            [12] 1532 	addc	a,#(_iu >> 8)
      0025DA FF               [12] 1533 	mov	r7,a
      0025DB C0 07            [24] 1534 	push	ar7
      0025DD C0 06            [24] 1535 	push	ar6
      0025DF 12 2C 5C         [24] 1536 	lcall	_rand
      0025E2 AC 82            [24] 1537 	mov	r4,dpl
      0025E4 D0 06            [24] 1538 	pop	ar6
      0025E6 D0 07            [24] 1539 	pop	ar7
      0025E8 53 04 01         [24] 1540 	anl	ar4,#0x01
      0025EB 8E 82            [24] 1541 	mov	dpl,r6
      0025ED 8F 83            [24] 1542 	mov	dph,r7
      0025EF EC               [12] 1543 	mov	a,r4
      0025F0 F0               [24] 1544 	movx	@dptr,a
                                   1545 ;	life.c:214: for (x = 0; x < W; x++)
      0025F1 78 34            [12] 1546 	mov	r0,#_x
      0025F3 06               [12] 1547 	inc	@r0
      0025F4 B6 00 02         [24] 1548 	cjne	@r0,#0x00,00581$
      0025F7 08               [12] 1549 	inc	r0
      0025F8 06               [12] 1550 	inc	@r0
      0025F9                       1551 00581$:
      0025F9 78 34            [12] 1552 	mov	r0,#_x
      0025FB C3               [12] 1553 	clr	c
      0025FC E6               [12] 1554 	mov	a,@r0
      0025FD 94 30            [12] 1555 	subb	a,#0x30
      0025FF 08               [12] 1556 	inc	r0
      002600 E6               [12] 1557 	mov	a,@r0
      002601 64 80            [12] 1558 	xrl	a,#0x80
      002603 94 80            [12] 1559 	subb	a,#0x80
      002605 40 C0            [24] 1560 	jc	00228$
                                   1561 ;	life.c:213: for (y = 0; y < (H * W); y += W)
      002607 78 36            [12] 1562 	mov	r0,#_y
      002609 74 30            [12] 1563 	mov	a,#0x30
      00260B 26               [12] 1564 	add	a,@r0
      00260C F6               [12] 1565 	mov	@r0,a
      00260D E4               [12] 1566 	clr	a
      00260E 08               [12] 1567 	inc	r0
      00260F 36               [12] 1568 	addc	a,@r0
      002610 F6               [12] 1569 	mov	@r0,a
      002611 78 36            [12] 1570 	mov	r0,#_y
      002613 C3               [12] 1571 	clr	c
      002614 08               [12] 1572 	inc	r0
      002615 E6               [12] 1573 	mov	a,@r0
      002616 64 80            [12] 1574 	xrl	a,#0x80
      002618 94 A4            [12] 1575 	subb	a,#0xa4
      00261A 40 A5            [24] 1576 	jc	00230$
                                   1577 ;	life.c:217: printstr("\r\n");
      00261C 7D 33            [12] 1578 	mov	r5,#___str_2
      00261E 7E 30            [12] 1579 	mov	r6,#(___str_2 >> 8)
      002620 7F 80            [12] 1580 	mov	r7,#0x80
                                   1581 ;	life.c:68: return;
      002622                       1582 00233$:
                                   1583 ;	life.c:66: for (; *s; s++) putchar(*s);
      002622 8D 82            [24] 1584 	mov	dpl,r5
      002624 8E 83            [24] 1585 	mov	dph,r6
      002626 8F F0            [24] 1586 	mov	b,r7
      002628 12 2E FB         [24] 1587 	lcall	__gptrget
      00262B FC               [12] 1588 	mov	r4,a
      00262C 60 10            [24] 1589 	jz	00117$
      00262E 7B 00            [12] 1590 	mov	r3,#0x00
      002630 8C 82            [24] 1591 	mov	dpl,r4
      002632 8B 83            [24] 1592 	mov	dph,r3
      002634 12 20 B5         [24] 1593 	lcall	_putchar
      002637 0D               [12] 1594 	inc	r5
                                   1595 ;	life.c:303: else if (c == (int)'R') loadriu();
      002638 BD 00 E7         [24] 1596 	cjne	r5,#0x00,00233$
      00263B 0E               [12] 1597 	inc	r6
      00263C 80 E4            [24] 1598 	sjmp	00233$
      00263E                       1599 00117$:
                                   1600 ;	life.c:304: memcpy(u, iu, sizeof (iu));
      00263E E4               [12] 1601 	clr	a
      00263F C0 E0            [24] 1602 	push	acc
      002641 74 24            [12] 1603 	mov	a,#0x24
      002643 C0 E0            [24] 1604 	push	acc
      002645 74 00            [12] 1605 	mov	a,#_iu
      002647 C0 E0            [24] 1606 	push	acc
      002649 74 40            [12] 1607 	mov	a,#(_iu >> 8)
      00264B C0 E0            [24] 1608 	push	acc
      00264D E4               [12] 1609 	clr	a
      00264E C0 E0            [24] 1610 	push	acc
      002650 90 88 00         [24] 1611 	mov	dptr,#_u
      002653 75 F0 00         [24] 1612 	mov	b,#0x00
      002656 12 2D D7         [24] 1613 	lcall	___memcpy
      002659 E5 81            [12] 1614 	mov	a,sp
      00265B 24 FB            [12] 1615 	add	a,#0xfb
      00265D F5 81            [12] 1616 	mov	sp,a
                                   1617 ;	life.c:305: show(0);
      00265F 75 82 00         [24] 1618 	mov	dpl,#0x00
      002662 12 21 01         [24] 1619 	lcall	_show
                                   1620 ;	life.c:307: printstr("READY T L R P S\r\n");
      002665 7D 75            [12] 1621 	mov	r5,#___str_9
      002667 7E 30            [12] 1622 	mov	r6,#(___str_9 >> 8)
      002669 7F 80            [12] 1623 	mov	r7,#0x80
                                   1624 ;	life.c:68: return;
      00266B                       1625 00236$:
                                   1626 ;	life.c:66: for (; *s; s++) putchar(*s);
      00266B 8D 82            [24] 1627 	mov	dpl,r5
      00266D 8E 83            [24] 1628 	mov	dph,r6
      00266F 8F F0            [24] 1629 	mov	b,r7
      002671 12 2E FB         [24] 1630 	lcall	__gptrget
      002674 FC               [12] 1631 	mov	r4,a
      002675 60 10            [24] 1632 	jz	00130$
      002677 7B 00            [12] 1633 	mov	r3,#0x00
      002679 8C 82            [24] 1634 	mov	dpl,r4
      00267B 8B 83            [24] 1635 	mov	dph,r3
      00267D 12 20 B5         [24] 1636 	lcall	_putchar
      002680 0D               [12] 1637 	inc	r5
                                   1638 ;	life.c:308: while (1) {
      002681 BD 00 E7         [24] 1639 	cjne	r5,#0x00,00236$
      002684 0E               [12] 1640 	inc	r6
      002685 80 E4            [24] 1641 	sjmp	00236$
      002687                       1642 00130$:
                                   1643 ;	life.c:309: c = toupper(getchar());
      002687 12 20 BA         [24] 1644 	lcall	_getchar
      00268A 12 2E D4         [24] 1645 	lcall	_toupper
      00268D AE 82            [24] 1646 	mov	r6,dpl
      00268F AF 83            [24] 1647 	mov	r7,dph
      002691 78 3A            [12] 1648 	mov	r0,#_c
      002693 A6 06            [24] 1649 	mov	@r0,ar6
      002695 08               [12] 1650 	inc	r0
      002696 A6 07            [24] 1651 	mov	@r0,ar7
                                   1652 ;	life.c:310: if (i0 || (c == (int)'T')) goto term;
      002698 78 31            [12] 1653 	mov	r0,#_i0
      00269A E6               [12] 1654 	mov	a,@r0
      00269B 60 03            [24] 1655 	jz	00588$
      00269D 02 2C 2C         [24] 1656 	ljmp	00149$
      0026A0                       1657 00588$:
      0026A0 BE 54 06         [24] 1658 	cjne	r6,#0x54,00589$
      0026A3 BF 00 03         [24] 1659 	cjne	r7,#0x00,00589$
      0026A6 02 2C 2C         [24] 1660 	ljmp	00149$
      0026A9                       1661 00589$:
                                   1662 ;	life.c:311: else if ((c == (int)'L') || (c == (int)'R') || (c == (int)'P')) goto reload;
      0026A9 BE 4C 06         [24] 1663 	cjne	r6,#0x4c,00590$
      0026AC BF 00 03         [24] 1664 	cjne	r7,#0x00,00590$
      0026AF 02 23 CD         [24] 1665 	ljmp	00112$
      0026B2                       1666 00590$:
      0026B2 BE 52 06         [24] 1667 	cjne	r6,#0x52,00591$
      0026B5 BF 00 03         [24] 1668 	cjne	r7,#0x00,00591$
      0026B8 02 23 CD         [24] 1669 	ljmp	00112$
      0026BB                       1670 00591$:
      0026BB BE 50 06         [24] 1671 	cjne	r6,#0x50,00592$
      0026BE BF 00 03         [24] 1672 	cjne	r7,#0x00,00592$
      0026C1 02 23 CD         [24] 1673 	ljmp	00112$
      0026C4                       1674 00592$:
                                   1675 ;	life.c:312: else if (c == (int)'S') break;
      0026C4 BE 53 C0         [24] 1676 	cjne	r6,#0x53,00130$
      0026C7 BF 00 BD         [24] 1677 	cjne	r7,#0x00,00130$
                                   1678 ;	life.c:121: generation[0] = 0u;
      0026CA 78 43            [12] 1679 	mov	r0,#_generation
      0026CC 76 00            [12] 1680 	mov	@r0,#0x00
      0026CE 08               [12] 1681 	inc	r0
      0026CF 76 00            [12] 1682 	mov	@r0,#0x00
                                   1683 ;	life.c:122: generation[1] = 0u;
      0026D1 78 45            [12] 1684 	mov	r0,#(_generation + 0x0002)
      0026D3 76 00            [12] 1685 	mov	@r0,#0x00
      0026D5 08               [12] 1686 	inc	r0
      0026D6 76 00            [12] 1687 	mov	@r0,#0x00
                                   1688 ;	life.c:317: for (i1 = 0; !i0 && !i1; ) {
      0026D8 78 32            [12] 1689 	mov	r0,#_i1
      0026DA 76 00            [12] 1690 	mov	@r0,#0x00
      0026DC                       1691 00253$:
      0026DC 78 31            [12] 1692 	mov	r0,#_i0
      0026DE E6               [12] 1693 	mov	a,@r0
      0026DF 60 03            [24] 1694 	jz	00595$
      0026E1 02 2B FA         [24] 1695 	ljmp	00145$
      0026E4                       1696 00595$:
      0026E4 78 32            [12] 1697 	mov	r0,#_i1
      0026E6 E6               [12] 1698 	mov	a,@r0
      0026E7 60 03            [24] 1699 	jz	00596$
      0026E9 02 2B FA         [24] 1700 	ljmp	00145$
      0026EC                       1701 00596$:
                                   1702 ;	life.c:318: show(1);
      0026EC 75 82 01         [24] 1703 	mov	dpl,#0x01
      0026EF 12 21 01         [24] 1704 	lcall	_show
                                   1705 ;	life.c:223: fixed = 0;
      0026F2 78 3D            [12] 1706 	mov	r0,#_fixed
      0026F4 76 00            [12] 1707 	mov	@r0,#0x00
                                   1708 ;	life.c:224: cycle2 = 0;
      0026F6 78 3E            [12] 1709 	mov	r0,#_cycle2
      0026F8 76 00            [12] 1710 	mov	@r0,#0x00
                                   1711 ;	life.c:226: OE76 = OE76_0;
      0026FA 78 33            [12] 1712 	mov	r0,#_OE76
      0026FC 76 3F            [12] 1713 	mov	@r0,#0x3f
                                   1714 ;	life.c:227: flashOE();
      0026FE 12 20 EF         [24] 1715 	lcall	_flashOE
                                   1716 ;	life.c:229: for (y = 0; y < H; y++) {
      002701 78 36            [12] 1717 	mov	r0,#_y
      002703 E4               [12] 1718 	clr	a
      002704 F6               [12] 1719 	mov	@r0,a
      002705 08               [12] 1720 	inc	r0
      002706 F6               [12] 1721 	mov	@r0,a
      002707                       1722 00240$:
                                   1723 ;	life.c:230: OE76 = OE76_0 | ((y & 0x0003u) << 6);
      002707 78 36            [12] 1724 	mov	r0,#_y
      002709 86 07            [24] 1725 	mov	ar7,@r0
      00270B 53 07 03         [24] 1726 	anl	ar7,#0x03
      00270E EF               [12] 1727 	mov	a,r7
      00270F 03               [12] 1728 	rr	a
      002710 03               [12] 1729 	rr	a
      002711 54 C0            [12] 1730 	anl	a,#0xc0
      002713 FF               [12] 1731 	mov	r7,a
      002714 78 33            [12] 1732 	mov	r0,#_OE76
      002716 74 3F            [12] 1733 	mov	a,#0x3f
      002718 4F               [12] 1734 	orl	a,r7
      002719 F6               [12] 1735 	mov	@r0,a
                                   1736 ;	life.c:231: flashOE();
      00271A 12 20 EF         [24] 1737 	lcall	_flashOE
                                   1738 ;	life.c:232: for (x = 0; x < W; x++) {
      00271D 78 34            [12] 1739 	mov	r0,#_x
      00271F E4               [12] 1740 	clr	a
      002720 F6               [12] 1741 	mov	@r0,a
      002721 08               [12] 1742 	inc	r0
      002722 F6               [12] 1743 	mov	@r0,a
      002723                       1744 00238$:
                                   1745 ;	life.c:233: n = -u[A2D(W, y, x)];
      002723 78 36            [12] 1746 	mov	r0,#_y
      002725 E6               [12] 1747 	mov	a,@r0
      002726 C0 E0            [24] 1748 	push	acc
      002728 08               [12] 1749 	inc	r0
      002729 E6               [12] 1750 	mov	a,@r0
      00272A C0 E0            [24] 1751 	push	acc
      00272C 90 00 30         [24] 1752 	mov	dptr,#0x0030
      00272F 12 2D 39         [24] 1753 	lcall	__mulint
      002732 C8               [12] 1754 	xch	a,r0
      002733 E5 10            [12] 1755 	mov	a,_bp
      002735 24 04            [12] 1756 	add	a,#0x04
      002737 C8               [12] 1757 	xch	a,r0
      002738 A6 82            [24] 1758 	mov	@r0,dpl
      00273A 08               [12] 1759 	inc	r0
      00273B A6 83            [24] 1760 	mov	@r0,dph
      00273D 15 81            [12] 1761 	dec	sp
      00273F 15 81            [12] 1762 	dec	sp
      002741 E5 10            [12] 1763 	mov	a,_bp
      002743 24 04            [12] 1764 	add	a,#0x04
      002745 F8               [12] 1765 	mov	r0,a
      002746 79 34            [12] 1766 	mov	r1,#_x
      002748 E7               [12] 1767 	mov	a,@r1
      002749 26               [12] 1768 	add	a,@r0
      00274A C0 E0            [24] 1769 	push	acc
      00274C 09               [12] 1770 	inc	r1
      00274D E7               [12] 1771 	mov	a,@r1
      00274E 08               [12] 1772 	inc	r0
      00274F 36               [12] 1773 	addc	a,@r0
      002750 C0 E0            [24] 1774 	push	acc
      002752 E5 10            [12] 1775 	mov	a,_bp
      002754 24 03            [12] 1776 	add	a,#0x03
      002756 F8               [12] 1777 	mov	r0,a
      002757 D0 E0            [24] 1778 	pop	acc
      002759 F6               [12] 1779 	mov	@r0,a
      00275A 18               [12] 1780 	dec	r0
      00275B D0 E0            [24] 1781 	pop	acc
      00275D F6               [12] 1782 	mov	@r0,a
      00275E A8 10            [24] 1783 	mov	r0,_bp
      002760 08               [12] 1784 	inc	r0
      002761 08               [12] 1785 	inc	r0
      002762 E6               [12] 1786 	mov	a,@r0
      002763 24 00            [12] 1787 	add	a,#_u
      002765 F5 82            [12] 1788 	mov	dpl,a
      002767 08               [12] 1789 	inc	r0
      002768 E6               [12] 1790 	mov	a,@r0
      002769 34 88            [12] 1791 	addc	a,#(_u >> 8)
      00276B F5 83            [12] 1792 	mov	dph,a
      00276D E0               [24] 1793 	movx	a,@dptr
      00276E FB               [12] 1794 	mov	r3,a
      00276F A8 10            [24] 1795 	mov	r0,_bp
      002771 08               [12] 1796 	inc	r0
      002772 C3               [12] 1797 	clr	c
      002773 E4               [12] 1798 	clr	a
      002774 9B               [12] 1799 	subb	a,r3
      002775 F6               [12] 1800 	mov	@r0,a
                                   1801 ;	life.c:236: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      002776 78 36            [12] 1802 	mov	r0,#_y
      002778 74 FF            [12] 1803 	mov	a,#0xff
      00277A 26               [12] 1804 	add	a,@r0
      00277B FA               [12] 1805 	mov	r2,a
      00277C 74 FF            [12] 1806 	mov	a,#0xff
      00277E 08               [12] 1807 	inc	r0
      00277F 36               [12] 1808 	addc	a,@r0
      002780 FB               [12] 1809 	mov	r3,a
      002781 74 C0            [12] 1810 	mov	a,#0xc0
      002783 2A               [12] 1811 	add	a,r2
      002784 FA               [12] 1812 	mov	r2,a
      002785 E4               [12] 1813 	clr	a
      002786 3B               [12] 1814 	addc	a,r3
      002787 FB               [12] 1815 	mov	r3,a
      002788 74 C0            [12] 1816 	mov	a,#0xc0
      00278A C0 E0            [24] 1817 	push	acc
      00278C E4               [12] 1818 	clr	a
      00278D C0 E0            [24] 1819 	push	acc
      00278F 8A 82            [24] 1820 	mov	dpl,r2
      002791 8B 83            [24] 1821 	mov	dph,r3
      002793 12 2F 17         [24] 1822 	lcall	__modsint
      002796 AA 82            [24] 1823 	mov	r2,dpl
      002798 AB 83            [24] 1824 	mov	r3,dph
      00279A 15 81            [12] 1825 	dec	sp
      00279C 15 81            [12] 1826 	dec	sp
      00279E C0 02            [24] 1827 	push	ar2
      0027A0 C0 03            [24] 1828 	push	ar3
      0027A2 90 00 30         [24] 1829 	mov	dptr,#0x0030
      0027A5 12 2D 39         [24] 1830 	lcall	__mulint
      0027A8 AA 82            [24] 1831 	mov	r2,dpl
      0027AA AB 83            [24] 1832 	mov	r3,dph
      0027AC 15 81            [12] 1833 	dec	sp
      0027AE 15 81            [12] 1834 	dec	sp
      0027B0 78 34            [12] 1835 	mov	r0,#_x
      0027B2 74 FF            [12] 1836 	mov	a,#0xff
      0027B4 26               [12] 1837 	add	a,@r0
      0027B5 FC               [12] 1838 	mov	r4,a
      0027B6 74 FF            [12] 1839 	mov	a,#0xff
      0027B8 08               [12] 1840 	inc	r0
      0027B9 36               [12] 1841 	addc	a,@r0
      0027BA FD               [12] 1842 	mov	r5,a
      0027BB 74 30            [12] 1843 	mov	a,#0x30
      0027BD 2C               [12] 1844 	add	a,r4
      0027BE FC               [12] 1845 	mov	r4,a
      0027BF E4               [12] 1846 	clr	a
      0027C0 3D               [12] 1847 	addc	a,r5
      0027C1 FD               [12] 1848 	mov	r5,a
      0027C2 C0 03            [24] 1849 	push	ar3
      0027C4 C0 02            [24] 1850 	push	ar2
      0027C6 74 30            [12] 1851 	mov	a,#0x30
      0027C8 C0 E0            [24] 1852 	push	acc
      0027CA E4               [12] 1853 	clr	a
      0027CB C0 E0            [24] 1854 	push	acc
      0027CD 8C 82            [24] 1855 	mov	dpl,r4
      0027CF 8D 83            [24] 1856 	mov	dph,r5
      0027D1 12 2F 17         [24] 1857 	lcall	__modsint
      0027D4 AC 82            [24] 1858 	mov	r4,dpl
      0027D6 AD 83            [24] 1859 	mov	r5,dph
      0027D8 15 81            [12] 1860 	dec	sp
      0027DA 15 81            [12] 1861 	dec	sp
      0027DC D0 02            [24] 1862 	pop	ar2
      0027DE D0 03            [24] 1863 	pop	ar3
      0027E0 EC               [12] 1864 	mov	a,r4
      0027E1 2A               [12] 1865 	add	a,r2
      0027E2 FE               [12] 1866 	mov	r6,a
      0027E3 ED               [12] 1867 	mov	a,r5
      0027E4 3B               [12] 1868 	addc	a,r3
      0027E5 FF               [12] 1869 	mov	r7,a
      0027E6 EE               [12] 1870 	mov	a,r6
      0027E7 24 00            [12] 1871 	add	a,#_u
      0027E9 F5 82            [12] 1872 	mov	dpl,a
      0027EB EF               [12] 1873 	mov	a,r7
      0027EC 34 88            [12] 1874 	addc	a,#(_u >> 8)
      0027EE F5 83            [12] 1875 	mov	dph,a
      0027F0 E0               [24] 1876 	movx	a,@dptr
      0027F1 FF               [12] 1877 	mov	r7,a
      0027F2 A8 10            [24] 1878 	mov	r0,_bp
      0027F4 08               [12] 1879 	inc	r0
      0027F5 EF               [12] 1880 	mov	a,r7
      0027F6 26               [12] 1881 	add	a,@r0
      0027F7 F6               [12] 1882 	mov	@r0,a
                                   1883 ;	life.c:238: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      0027F8 78 34            [12] 1884 	mov	r0,#_x
      0027FA E5 10            [12] 1885 	mov	a,_bp
      0027FC 24 06            [12] 1886 	add	a,#0x06
      0027FE F9               [12] 1887 	mov	r1,a
      0027FF E6               [12] 1888 	mov	a,@r0
      002800 F7               [12] 1889 	mov	@r1,a
      002801 08               [12] 1890 	inc	r0
      002802 09               [12] 1891 	inc	r1
      002803 E6               [12] 1892 	mov	a,@r0
      002804 F7               [12] 1893 	mov	@r1,a
      002805 E5 10            [12] 1894 	mov	a,_bp
      002807 24 06            [12] 1895 	add	a,#0x06
      002809 F8               [12] 1896 	mov	r0,a
      00280A 74 30            [12] 1897 	mov	a,#0x30
      00280C 26               [12] 1898 	add	a,@r0
      00280D FE               [12] 1899 	mov	r6,a
      00280E E4               [12] 1900 	clr	a
      00280F 08               [12] 1901 	inc	r0
      002810 36               [12] 1902 	addc	a,@r0
      002811 FF               [12] 1903 	mov	r7,a
      002812 C0 05            [24] 1904 	push	ar5
      002814 C0 04            [24] 1905 	push	ar4
      002816 C0 03            [24] 1906 	push	ar3
      002818 C0 02            [24] 1907 	push	ar2
      00281A 74 30            [12] 1908 	mov	a,#0x30
      00281C C0 E0            [24] 1909 	push	acc
      00281E E4               [12] 1910 	clr	a
      00281F C0 E0            [24] 1911 	push	acc
      002821 8E 82            [24] 1912 	mov	dpl,r6
      002823 8F 83            [24] 1913 	mov	dph,r7
      002825 12 2F 17         [24] 1914 	lcall	__modsint
      002828 C8               [12] 1915 	xch	a,r0
      002829 E5 10            [12] 1916 	mov	a,_bp
      00282B 24 08            [12] 1917 	add	a,#0x08
      00282D C8               [12] 1918 	xch	a,r0
      00282E A6 82            [24] 1919 	mov	@r0,dpl
      002830 08               [12] 1920 	inc	r0
      002831 A6 83            [24] 1921 	mov	@r0,dph
      002833 15 81            [12] 1922 	dec	sp
      002835 15 81            [12] 1923 	dec	sp
      002837 D0 02            [24] 1924 	pop	ar2
      002839 D0 03            [24] 1925 	pop	ar3
      00283B E5 10            [12] 1926 	mov	a,_bp
      00283D 24 08            [12] 1927 	add	a,#0x08
      00283F F8               [12] 1928 	mov	r0,a
      002840 E6               [12] 1929 	mov	a,@r0
      002841 2A               [12] 1930 	add	a,r2
      002842 FE               [12] 1931 	mov	r6,a
      002843 08               [12] 1932 	inc	r0
      002844 E6               [12] 1933 	mov	a,@r0
      002845 3B               [12] 1934 	addc	a,r3
      002846 FF               [12] 1935 	mov	r7,a
      002847 EE               [12] 1936 	mov	a,r6
      002848 24 00            [12] 1937 	add	a,#_u
      00284A F5 82            [12] 1938 	mov	dpl,a
      00284C EF               [12] 1939 	mov	a,r7
      00284D 34 88            [12] 1940 	addc	a,#(_u >> 8)
      00284F F5 83            [12] 1941 	mov	dph,a
      002851 E0               [24] 1942 	movx	a,@dptr
      002852 FF               [12] 1943 	mov	r7,a
      002853 A8 10            [24] 1944 	mov	r0,_bp
      002855 08               [12] 1945 	inc	r0
      002856 EF               [12] 1946 	mov	a,r7
      002857 26               [12] 1947 	add	a,@r0
      002858 F6               [12] 1948 	mov	@r0,a
                                   1949 ;	life.c:240: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      002859 E5 10            [12] 1950 	mov	a,_bp
      00285B 24 06            [12] 1951 	add	a,#0x06
      00285D F8               [12] 1952 	mov	r0,a
      00285E 74 31            [12] 1953 	mov	a,#0x31
      002860 26               [12] 1954 	add	a,@r0
      002861 FE               [12] 1955 	mov	r6,a
      002862 E4               [12] 1956 	clr	a
      002863 08               [12] 1957 	inc	r0
      002864 36               [12] 1958 	addc	a,@r0
      002865 FF               [12] 1959 	mov	r7,a
      002866 C0 03            [24] 1960 	push	ar3
      002868 C0 02            [24] 1961 	push	ar2
      00286A 74 30            [12] 1962 	mov	a,#0x30
      00286C C0 E0            [24] 1963 	push	acc
      00286E E4               [12] 1964 	clr	a
      00286F C0 E0            [24] 1965 	push	acc
      002871 8E 82            [24] 1966 	mov	dpl,r6
      002873 8F 83            [24] 1967 	mov	dph,r7
      002875 12 2F 17         [24] 1968 	lcall	__modsint
      002878 AE 82            [24] 1969 	mov	r6,dpl
      00287A AF 83            [24] 1970 	mov	r7,dph
      00287C 15 81            [12] 1971 	dec	sp
      00287E 15 81            [12] 1972 	dec	sp
      002880 D0 02            [24] 1973 	pop	ar2
      002882 D0 03            [24] 1974 	pop	ar3
      002884 D0 04            [24] 1975 	pop	ar4
      002886 D0 05            [24] 1976 	pop	ar5
      002888 EE               [12] 1977 	mov	a,r6
      002889 2A               [12] 1978 	add	a,r2
      00288A FA               [12] 1979 	mov	r2,a
      00288B EF               [12] 1980 	mov	a,r7
      00288C 3B               [12] 1981 	addc	a,r3
      00288D FB               [12] 1982 	mov	r3,a
      00288E EA               [12] 1983 	mov	a,r2
      00288F 24 00            [12] 1984 	add	a,#_u
      002891 F5 82            [12] 1985 	mov	dpl,a
      002893 EB               [12] 1986 	mov	a,r3
      002894 34 88            [12] 1987 	addc	a,#(_u >> 8)
      002896 F5 83            [12] 1988 	mov	dph,a
      002898 E0               [24] 1989 	movx	a,@dptr
      002899 FB               [12] 1990 	mov	r3,a
      00289A A8 10            [24] 1991 	mov	r0,_bp
      00289C 08               [12] 1992 	inc	r0
      00289D EB               [12] 1993 	mov	a,r3
      00289E 26               [12] 1994 	add	a,@r0
      00289F F6               [12] 1995 	mov	@r0,a
                                   1996 ;	life.c:242: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      0028A0 78 36            [12] 1997 	mov	r0,#_y
      0028A2 E5 10            [12] 1998 	mov	a,_bp
      0028A4 24 0A            [12] 1999 	add	a,#0x0a
      0028A6 F9               [12] 2000 	mov	r1,a
      0028A7 E6               [12] 2001 	mov	a,@r0
      0028A8 F7               [12] 2002 	mov	@r1,a
      0028A9 08               [12] 2003 	inc	r0
      0028AA 09               [12] 2004 	inc	r1
      0028AB E6               [12] 2005 	mov	a,@r0
      0028AC F7               [12] 2006 	mov	@r1,a
      0028AD E5 10            [12] 2007 	mov	a,_bp
      0028AF 24 0A            [12] 2008 	add	a,#0x0a
      0028B1 F8               [12] 2009 	mov	r0,a
      0028B2 74 C0            [12] 2010 	mov	a,#0xc0
      0028B4 26               [12] 2011 	add	a,@r0
      0028B5 FA               [12] 2012 	mov	r2,a
      0028B6 E4               [12] 2013 	clr	a
      0028B7 08               [12] 2014 	inc	r0
      0028B8 36               [12] 2015 	addc	a,@r0
      0028B9 FB               [12] 2016 	mov	r3,a
      0028BA C0 07            [24] 2017 	push	ar7
      0028BC C0 06            [24] 2018 	push	ar6
      0028BE C0 05            [24] 2019 	push	ar5
      0028C0 C0 04            [24] 2020 	push	ar4
      0028C2 74 C0            [12] 2021 	mov	a,#0xc0
      0028C4 C0 E0            [24] 2022 	push	acc
      0028C6 E4               [12] 2023 	clr	a
      0028C7 C0 E0            [24] 2024 	push	acc
      0028C9 8A 82            [24] 2025 	mov	dpl,r2
      0028CB 8B 83            [24] 2026 	mov	dph,r3
      0028CD 12 2F 17         [24] 2027 	lcall	__modsint
      0028D0 AA 82            [24] 2028 	mov	r2,dpl
      0028D2 AB 83            [24] 2029 	mov	r3,dph
      0028D4 15 81            [12] 2030 	dec	sp
      0028D6 15 81            [12] 2031 	dec	sp
      0028D8 C0 02            [24] 2032 	push	ar2
      0028DA C0 03            [24] 2033 	push	ar3
      0028DC 90 00 30         [24] 2034 	mov	dptr,#0x0030
      0028DF 12 2D 39         [24] 2035 	lcall	__mulint
      0028E2 C8               [12] 2036 	xch	a,r0
      0028E3 E5 10            [12] 2037 	mov	a,_bp
      0028E5 24 0C            [12] 2038 	add	a,#0x0c
      0028E7 C8               [12] 2039 	xch	a,r0
      0028E8 A6 82            [24] 2040 	mov	@r0,dpl
      0028EA 08               [12] 2041 	inc	r0
      0028EB A6 83            [24] 2042 	mov	@r0,dph
      0028ED 15 81            [12] 2043 	dec	sp
      0028EF 15 81            [12] 2044 	dec	sp
      0028F1 D0 04            [24] 2045 	pop	ar4
      0028F3 D0 05            [24] 2046 	pop	ar5
      0028F5 D0 06            [24] 2047 	pop	ar6
      0028F7 D0 07            [24] 2048 	pop	ar7
      0028F9 E5 10            [12] 2049 	mov	a,_bp
      0028FB 24 0C            [12] 2050 	add	a,#0x0c
      0028FD F8               [12] 2051 	mov	r0,a
      0028FE EC               [12] 2052 	mov	a,r4
      0028FF 26               [12] 2053 	add	a,@r0
      002900 FA               [12] 2054 	mov	r2,a
      002901 ED               [12] 2055 	mov	a,r5
      002902 08               [12] 2056 	inc	r0
      002903 36               [12] 2057 	addc	a,@r0
      002904 FB               [12] 2058 	mov	r3,a
      002905 EA               [12] 2059 	mov	a,r2
      002906 24 00            [12] 2060 	add	a,#_u
      002908 F5 82            [12] 2061 	mov	dpl,a
      00290A EB               [12] 2062 	mov	a,r3
      00290B 34 88            [12] 2063 	addc	a,#(_u >> 8)
      00290D F5 83            [12] 2064 	mov	dph,a
      00290F E0               [24] 2065 	movx	a,@dptr
      002910 FB               [12] 2066 	mov	r3,a
      002911 A8 10            [24] 2067 	mov	r0,_bp
      002913 08               [12] 2068 	inc	r0
      002914 EB               [12] 2069 	mov	a,r3
      002915 26               [12] 2070 	add	a,@r0
      002916 F6               [12] 2071 	mov	@r0,a
                                   2072 ;	life.c:244: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      002917 E5 10            [12] 2073 	mov	a,_bp
      002919 24 0C            [12] 2074 	add	a,#0x0c
      00291B F8               [12] 2075 	mov	r0,a
      00291C E5 10            [12] 2076 	mov	a,_bp
      00291E 24 08            [12] 2077 	add	a,#0x08
      002920 F9               [12] 2078 	mov	r1,a
      002921 E7               [12] 2079 	mov	a,@r1
      002922 26               [12] 2080 	add	a,@r0
      002923 FA               [12] 2081 	mov	r2,a
      002924 09               [12] 2082 	inc	r1
      002925 E7               [12] 2083 	mov	a,@r1
      002926 08               [12] 2084 	inc	r0
      002927 36               [12] 2085 	addc	a,@r0
      002928 FB               [12] 2086 	mov	r3,a
      002929 EA               [12] 2087 	mov	a,r2
      00292A 24 00            [12] 2088 	add	a,#_u
      00292C F5 82            [12] 2089 	mov	dpl,a
      00292E EB               [12] 2090 	mov	a,r3
      00292F 34 88            [12] 2091 	addc	a,#(_u >> 8)
      002931 F5 83            [12] 2092 	mov	dph,a
      002933 E0               [24] 2093 	movx	a,@dptr
      002934 FB               [12] 2094 	mov	r3,a
      002935 A8 10            [24] 2095 	mov	r0,_bp
      002937 08               [12] 2096 	inc	r0
      002938 EB               [12] 2097 	mov	a,r3
      002939 26               [12] 2098 	add	a,@r0
      00293A F6               [12] 2099 	mov	@r0,a
                                   2100 ;	life.c:246: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      00293B E5 10            [12] 2101 	mov	a,_bp
      00293D 24 0C            [12] 2102 	add	a,#0x0c
      00293F F8               [12] 2103 	mov	r0,a
      002940 EE               [12] 2104 	mov	a,r6
      002941 26               [12] 2105 	add	a,@r0
      002942 FA               [12] 2106 	mov	r2,a
      002943 EF               [12] 2107 	mov	a,r7
      002944 08               [12] 2108 	inc	r0
      002945 36               [12] 2109 	addc	a,@r0
      002946 FB               [12] 2110 	mov	r3,a
      002947 EA               [12] 2111 	mov	a,r2
      002948 24 00            [12] 2112 	add	a,#_u
      00294A F5 82            [12] 2113 	mov	dpl,a
      00294C EB               [12] 2114 	mov	a,r3
      00294D 34 88            [12] 2115 	addc	a,#(_u >> 8)
      00294F F5 83            [12] 2116 	mov	dph,a
      002951 E0               [24] 2117 	movx	a,@dptr
      002952 FB               [12] 2118 	mov	r3,a
      002953 A8 10            [24] 2119 	mov	r0,_bp
      002955 08               [12] 2120 	inc	r0
      002956 E5 10            [12] 2121 	mov	a,_bp
      002958 24 0C            [12] 2122 	add	a,#0x0c
      00295A F9               [12] 2123 	mov	r1,a
      00295B EB               [12] 2124 	mov	a,r3
      00295C 26               [12] 2125 	add	a,@r0
      00295D F7               [12] 2126 	mov	@r1,a
                                   2127 ;	life.c:248: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      00295E E5 10            [12] 2128 	mov	a,_bp
      002960 24 0A            [12] 2129 	add	a,#0x0a
      002962 F8               [12] 2130 	mov	r0,a
      002963 74 C1            [12] 2131 	mov	a,#0xc1
      002965 26               [12] 2132 	add	a,@r0
      002966 FA               [12] 2133 	mov	r2,a
      002967 E4               [12] 2134 	clr	a
      002968 08               [12] 2135 	inc	r0
      002969 36               [12] 2136 	addc	a,@r0
      00296A FB               [12] 2137 	mov	r3,a
      00296B C0 07            [24] 2138 	push	ar7
      00296D C0 06            [24] 2139 	push	ar6
      00296F C0 05            [24] 2140 	push	ar5
      002971 C0 04            [24] 2141 	push	ar4
      002973 74 C0            [12] 2142 	mov	a,#0xc0
      002975 C0 E0            [24] 2143 	push	acc
      002977 E4               [12] 2144 	clr	a
      002978 C0 E0            [24] 2145 	push	acc
      00297A 8A 82            [24] 2146 	mov	dpl,r2
      00297C 8B 83            [24] 2147 	mov	dph,r3
      00297E 12 2F 17         [24] 2148 	lcall	__modsint
      002981 AA 82            [24] 2149 	mov	r2,dpl
      002983 AB 83            [24] 2150 	mov	r3,dph
      002985 15 81            [12] 2151 	dec	sp
      002987 15 81            [12] 2152 	dec	sp
      002989 C0 02            [24] 2153 	push	ar2
      00298B C0 03            [24] 2154 	push	ar3
      00298D 90 00 30         [24] 2155 	mov	dptr,#0x0030
      002990 12 2D 39         [24] 2156 	lcall	__mulint
      002993 AA 82            [24] 2157 	mov	r2,dpl
      002995 AB 83            [24] 2158 	mov	r3,dph
      002997 15 81            [12] 2159 	dec	sp
      002999 15 81            [12] 2160 	dec	sp
      00299B D0 04            [24] 2161 	pop	ar4
      00299D D0 05            [24] 2162 	pop	ar5
      00299F D0 06            [24] 2163 	pop	ar6
      0029A1 D0 07            [24] 2164 	pop	ar7
      0029A3 EC               [12] 2165 	mov	a,r4
      0029A4 2A               [12] 2166 	add	a,r2
      0029A5 FC               [12] 2167 	mov	r4,a
      0029A6 ED               [12] 2168 	mov	a,r5
      0029A7 3B               [12] 2169 	addc	a,r3
      0029A8 FD               [12] 2170 	mov	r5,a
      0029A9 EC               [12] 2171 	mov	a,r4
      0029AA 24 00            [12] 2172 	add	a,#_u
      0029AC F5 82            [12] 2173 	mov	dpl,a
      0029AE ED               [12] 2174 	mov	a,r5
      0029AF 34 88            [12] 2175 	addc	a,#(_u >> 8)
      0029B1 F5 83            [12] 2176 	mov	dph,a
      0029B3 E0               [24] 2177 	movx	a,@dptr
      0029B4 FD               [12] 2178 	mov	r5,a
      0029B5 E5 10            [12] 2179 	mov	a,_bp
      0029B7 24 0C            [12] 2180 	add	a,#0x0c
      0029B9 F8               [12] 2181 	mov	r0,a
      0029BA E5 10            [12] 2182 	mov	a,_bp
      0029BC 24 0C            [12] 2183 	add	a,#0x0c
      0029BE F9               [12] 2184 	mov	r1,a
      0029BF ED               [12] 2185 	mov	a,r5
      0029C0 26               [12] 2186 	add	a,@r0
      0029C1 F7               [12] 2187 	mov	@r1,a
                                   2188 ;	life.c:250: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      0029C2 E5 10            [12] 2189 	mov	a,_bp
      0029C4 24 08            [12] 2190 	add	a,#0x08
      0029C6 F8               [12] 2191 	mov	r0,a
      0029C7 E6               [12] 2192 	mov	a,@r0
      0029C8 2A               [12] 2193 	add	a,r2
      0029C9 FC               [12] 2194 	mov	r4,a
      0029CA 08               [12] 2195 	inc	r0
      0029CB E6               [12] 2196 	mov	a,@r0
      0029CC 3B               [12] 2197 	addc	a,r3
      0029CD FD               [12] 2198 	mov	r5,a
      0029CE EC               [12] 2199 	mov	a,r4
      0029CF 24 00            [12] 2200 	add	a,#_u
      0029D1 F5 82            [12] 2201 	mov	dpl,a
      0029D3 ED               [12] 2202 	mov	a,r5
      0029D4 34 88            [12] 2203 	addc	a,#(_u >> 8)
      0029D6 F5 83            [12] 2204 	mov	dph,a
      0029D8 E0               [24] 2205 	movx	a,@dptr
      0029D9 FD               [12] 2206 	mov	r5,a
      0029DA E5 10            [12] 2207 	mov	a,_bp
      0029DC 24 0C            [12] 2208 	add	a,#0x0c
      0029DE F8               [12] 2209 	mov	r0,a
      0029DF ED               [12] 2210 	mov	a,r5
      0029E0 26               [12] 2211 	add	a,@r0
      0029E1 FD               [12] 2212 	mov	r5,a
                                   2213 ;	life.c:251: y1 = 1; x1 = 1;
      0029E2 78 41            [12] 2214 	mov	r0,#_y1
      0029E4 76 01            [12] 2215 	mov	@r0,#0x01
      0029E6 08               [12] 2216 	inc	r0
      0029E7 76 00            [12] 2217 	mov	@r0,#0x00
      0029E9 78 3F            [12] 2218 	mov	r0,#_x1
      0029EB 76 01            [12] 2219 	mov	@r0,#0x01
      0029ED 08               [12] 2220 	inc	r0
      0029EE 76 00            [12] 2221 	mov	@r0,#0x00
                                   2222 ;	life.c:252: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      0029F0 EE               [12] 2223 	mov	a,r6
      0029F1 2A               [12] 2224 	add	a,r2
      0029F2 FE               [12] 2225 	mov	r6,a
      0029F3 EF               [12] 2226 	mov	a,r7
      0029F4 3B               [12] 2227 	addc	a,r3
      0029F5 FF               [12] 2228 	mov	r7,a
      0029F6 EE               [12] 2229 	mov	a,r6
      0029F7 24 00            [12] 2230 	add	a,#_u
      0029F9 F5 82            [12] 2231 	mov	dpl,a
      0029FB EF               [12] 2232 	mov	a,r7
      0029FC 34 88            [12] 2233 	addc	a,#(_u >> 8)
      0029FE F5 83            [12] 2234 	mov	dph,a
      002A00 E0               [24] 2235 	movx	a,@dptr
      002A01 2D               [12] 2236 	add	a,r5
      002A02 FF               [12] 2237 	mov	r7,a
      002A03 78 3C            [12] 2238 	mov	r0,#_n
      002A05 A6 07            [24] 2239 	mov	@r0,ar7
                                   2240 ;	life.c:254: nu[A2D(W, y, x)] = (n == 3) || ((n == 2) && u[A2D(W, y, x)]);
      002A07 A8 10            [24] 2241 	mov	r0,_bp
      002A09 08               [12] 2242 	inc	r0
      002A0A 08               [12] 2243 	inc	r0
      002A0B E6               [12] 2244 	mov	a,@r0
      002A0C 24 00            [12] 2245 	add	a,#_nu
      002A0E FD               [12] 2246 	mov	r5,a
      002A0F 08               [12] 2247 	inc	r0
      002A10 E6               [12] 2248 	mov	a,@r0
      002A11 34 AC            [12] 2249 	addc	a,#(_nu >> 8)
      002A13 FE               [12] 2250 	mov	r6,a
      002A14 BF 03 02         [24] 2251 	cjne	r7,#0x03,00597$
      002A17 80 28            [24] 2252 	sjmp	00266$
      002A19                       2253 00597$:
      002A19 BF 02 21         [24] 2254 	cjne	r7,#0x02,00265$
      002A1C E5 10            [12] 2255 	mov	a,_bp
      002A1E 24 04            [12] 2256 	add	a,#0x04
      002A20 F8               [12] 2257 	mov	r0,a
      002A21 E5 10            [12] 2258 	mov	a,_bp
      002A23 24 06            [12] 2259 	add	a,#0x06
      002A25 F9               [12] 2260 	mov	r1,a
      002A26 E7               [12] 2261 	mov	a,@r1
      002A27 26               [12] 2262 	add	a,@r0
      002A28 FC               [12] 2263 	mov	r4,a
      002A29 09               [12] 2264 	inc	r1
      002A2A E7               [12] 2265 	mov	a,@r1
      002A2B 08               [12] 2266 	inc	r0
      002A2C 36               [12] 2267 	addc	a,@r0
      002A2D FF               [12] 2268 	mov	r7,a
      002A2E EC               [12] 2269 	mov	a,r4
      002A2F 24 00            [12] 2270 	add	a,#_u
      002A31 FC               [12] 2271 	mov	r4,a
      002A32 EF               [12] 2272 	mov	a,r7
      002A33 34 88            [12] 2273 	addc	a,#(_u >> 8)
      002A35 FF               [12] 2274 	mov	r7,a
      002A36 8C 82            [24] 2275 	mov	dpl,r4
      002A38 8F 83            [24] 2276 	mov	dph,r7
      002A3A E0               [24] 2277 	movx	a,@dptr
      002A3B 70 04            [24] 2278 	jnz	00266$
      002A3D                       2279 00265$:
                                   2280 ;	assignBit
      002A3D C2 00            [12] 2281 	clr	b0
      002A3F 80 02            [24] 2282 	sjmp	00267$
      002A41                       2283 00266$:
                                   2284 ;	assignBit
      002A41 D2 00            [12] 2285 	setb	b0
      002A43                       2286 00267$:
      002A43 A2 00            [12] 2287 	mov	c,b0
      002A45 E4               [12] 2288 	clr	a
      002A46 33               [12] 2289 	rlc	a
      002A47 8D 82            [24] 2290 	mov	dpl,r5
      002A49 8E 83            [24] 2291 	mov	dph,r6
      002A4B F0               [24] 2292 	movx	@dptr,a
                                   2293 ;	life.c:255: cycle2 |= pu[A2D(W, y, x)] ^ nu[A2D(W, y, x)];
      002A4C 78 36            [12] 2294 	mov	r0,#_y
      002A4E E6               [12] 2295 	mov	a,@r0
      002A4F C0 E0            [24] 2296 	push	acc
      002A51 08               [12] 2297 	inc	r0
      002A52 E6               [12] 2298 	mov	a,@r0
      002A53 C0 E0            [24] 2299 	push	acc
      002A55 90 00 30         [24] 2300 	mov	dptr,#0x0030
      002A58 12 2D 39         [24] 2301 	lcall	__mulint
      002A5B AE 82            [24] 2302 	mov	r6,dpl
      002A5D AF 83            [24] 2303 	mov	r7,dph
      002A5F 15 81            [12] 2304 	dec	sp
      002A61 15 81            [12] 2305 	dec	sp
      002A63 78 34            [12] 2306 	mov	r0,#_x
      002A65 E6               [12] 2307 	mov	a,@r0
      002A66 2E               [12] 2308 	add	a,r6
      002A67 FE               [12] 2309 	mov	r6,a
      002A68 08               [12] 2310 	inc	r0
      002A69 E6               [12] 2311 	mov	a,@r0
      002A6A 3F               [12] 2312 	addc	a,r7
      002A6B FF               [12] 2313 	mov	r7,a
      002A6C EE               [12] 2314 	mov	a,r6
      002A6D 24 00            [12] 2315 	add	a,#_pu
      002A6F F5 82            [12] 2316 	mov	dpl,a
      002A71 EF               [12] 2317 	mov	a,r7
      002A72 34 64            [12] 2318 	addc	a,#(_pu >> 8)
      002A74 F5 83            [12] 2319 	mov	dph,a
      002A76 E0               [24] 2320 	movx	a,@dptr
      002A77 FD               [12] 2321 	mov	r5,a
      002A78 EE               [12] 2322 	mov	a,r6
      002A79 24 00            [12] 2323 	add	a,#_nu
      002A7B F5 82            [12] 2324 	mov	dpl,a
      002A7D EF               [12] 2325 	mov	a,r7
      002A7E 34 AC            [12] 2326 	addc	a,#(_nu >> 8)
      002A80 F5 83            [12] 2327 	mov	dph,a
      002A82 E0               [24] 2328 	movx	a,@dptr
      002A83 FC               [12] 2329 	mov	r4,a
      002A84 6D               [12] 2330 	xrl	a,r5
      002A85 78 3E            [12] 2331 	mov	r0,#_cycle2
      002A87 46               [12] 2332 	orl	a,@r0
      002A88 F6               [12] 2333 	mov	@r0,a
                                   2334 ;	life.c:256: fixed |= u[A2D(W, y, x)] ^ nu[A2D(W, y, x)];
      002A89 EE               [12] 2335 	mov	a,r6
      002A8A 24 00            [12] 2336 	add	a,#_u
      002A8C F5 82            [12] 2337 	mov	dpl,a
      002A8E EF               [12] 2338 	mov	a,r7
      002A8F 34 88            [12] 2339 	addc	a,#(_u >> 8)
      002A91 F5 83            [12] 2340 	mov	dph,a
      002A93 E0               [24] 2341 	movx	a,@dptr
      002A94 FF               [12] 2342 	mov	r7,a
      002A95 EC               [12] 2343 	mov	a,r4
      002A96 6F               [12] 2344 	xrl	a,r7
      002A97 78 3D            [12] 2345 	mov	r0,#_fixed
      002A99 46               [12] 2346 	orl	a,@r0
      002A9A F6               [12] 2347 	mov	@r0,a
                                   2348 ;	life.c:232: for (x = 0; x < W; x++) {
      002A9B 78 34            [12] 2349 	mov	r0,#_x
      002A9D 06               [12] 2350 	inc	@r0
      002A9E B6 00 02         [24] 2351 	cjne	@r0,#0x00,00601$
      002AA1 08               [12] 2352 	inc	r0
      002AA2 06               [12] 2353 	inc	@r0
      002AA3                       2354 00601$:
      002AA3 78 34            [12] 2355 	mov	r0,#_x
      002AA5 C3               [12] 2356 	clr	c
      002AA6 E6               [12] 2357 	mov	a,@r0
      002AA7 94 30            [12] 2358 	subb	a,#0x30
      002AA9 08               [12] 2359 	inc	r0
      002AAA E6               [12] 2360 	mov	a,@r0
      002AAB 64 80            [12] 2361 	xrl	a,#0x80
      002AAD 94 80            [12] 2362 	subb	a,#0x80
      002AAF 50 03            [24] 2363 	jnc	00602$
      002AB1 02 27 23         [24] 2364 	ljmp	00238$
      002AB4                       2365 00602$:
                                   2366 ;	life.c:229: for (y = 0; y < H; y++) {
      002AB4 78 36            [12] 2367 	mov	r0,#_y
      002AB6 06               [12] 2368 	inc	@r0
      002AB7 B6 00 02         [24] 2369 	cjne	@r0,#0x00,00603$
      002ABA 08               [12] 2370 	inc	r0
      002ABB 06               [12] 2371 	inc	@r0
      002ABC                       2372 00603$:
      002ABC 78 36            [12] 2373 	mov	r0,#_y
      002ABE C3               [12] 2374 	clr	c
      002ABF E6               [12] 2375 	mov	a,@r0
      002AC0 94 C0            [12] 2376 	subb	a,#0xc0
      002AC2 08               [12] 2377 	inc	r0
      002AC3 E6               [12] 2378 	mov	a,@r0
      002AC4 64 80            [12] 2379 	xrl	a,#0x80
      002AC6 94 80            [12] 2380 	subb	a,#0x80
      002AC8 50 03            [24] 2381 	jnc	00604$
      002ACA 02 27 07         [24] 2382 	ljmp	00240$
      002ACD                       2383 00604$:
                                   2384 ;	life.c:260: OE76 = OE76_0;
      002ACD 78 33            [12] 2385 	mov	r0,#_OE76
      002ACF 76 3F            [12] 2386 	mov	@r0,#0x3f
                                   2387 ;	life.c:261: flashOE();
      002AD1 12 20 EF         [24] 2388 	lcall	_flashOE
                                   2389 ;	life.c:263: cycle2 = !cycle2;
      002AD4 78 3E            [12] 2390 	mov	r0,#_cycle2
      002AD6 E6               [12] 2391 	mov	a,@r0
      002AD7 B4 01 00         [24] 2392 	cjne	a,#0x01,00605$
      002ADA                       2393 00605$:
      002ADA 92 00            [24] 2394 	mov	b0,c
      002ADC 78 3E            [12] 2395 	mov	r0,#_cycle2
      002ADE E4               [12] 2396 	clr	a
      002ADF 33               [12] 2397 	rlc	a
      002AE0 F6               [12] 2398 	mov	@r0,a
                                   2399 ;	life.c:264: fixed = !fixed;
      002AE1 78 3D            [12] 2400 	mov	r0,#_fixed
      002AE3 E6               [12] 2401 	mov	a,@r0
      002AE4 B4 01 00         [24] 2402 	cjne	a,#0x01,00606$
      002AE7                       2403 00606$:
      002AE7 92 00            [24] 2404 	mov	b0,c
      002AE9 78 3D            [12] 2405 	mov	r0,#_fixed
      002AEB E4               [12] 2406 	clr	a
      002AEC 33               [12] 2407 	rlc	a
      002AED F6               [12] 2408 	mov	@r0,a
                                   2409 ;	life.c:266: memcpy(pu, u, sizeof (u));
      002AEE E4               [12] 2410 	clr	a
      002AEF C0 E0            [24] 2411 	push	acc
      002AF1 74 24            [12] 2412 	mov	a,#0x24
      002AF3 C0 E0            [24] 2413 	push	acc
      002AF5 74 00            [12] 2414 	mov	a,#_u
      002AF7 C0 E0            [24] 2415 	push	acc
      002AF9 74 88            [12] 2416 	mov	a,#(_u >> 8)
      002AFB C0 E0            [24] 2417 	push	acc
      002AFD E4               [12] 2418 	clr	a
      002AFE C0 E0            [24] 2419 	push	acc
      002B00 90 64 00         [24] 2420 	mov	dptr,#_pu
      002B03 75 F0 00         [24] 2421 	mov	b,#0x00
      002B06 12 2D D7         [24] 2422 	lcall	___memcpy
      002B09 E5 81            [12] 2423 	mov	a,sp
      002B0B 24 FB            [12] 2424 	add	a,#0xfb
      002B0D F5 81            [12] 2425 	mov	sp,a
                                   2426 ;	life.c:267: memcpy(u, nu, sizeof (nu));
      002B0F E4               [12] 2427 	clr	a
      002B10 C0 E0            [24] 2428 	push	acc
      002B12 74 24            [12] 2429 	mov	a,#0x24
      002B14 C0 E0            [24] 2430 	push	acc
      002B16 74 00            [12] 2431 	mov	a,#_nu
      002B18 C0 E0            [24] 2432 	push	acc
      002B1A 74 AC            [12] 2433 	mov	a,#(_nu >> 8)
      002B1C C0 E0            [24] 2434 	push	acc
      002B1E E4               [12] 2435 	clr	a
      002B1F C0 E0            [24] 2436 	push	acc
      002B21 90 88 00         [24] 2437 	mov	dptr,#_u
      002B24 75 F0 00         [24] 2438 	mov	b,#0x00
      002B27 12 2D D7         [24] 2439 	lcall	___memcpy
      002B2A E5 81            [12] 2440 	mov	a,sp
      002B2C 24 FB            [12] 2441 	add	a,#0xfb
      002B2E F5 81            [12] 2442 	mov	sp,a
                                   2443 ;	life.c:321: if (fixed || cycle2) {
      002B30 78 3D            [12] 2444 	mov	r0,#_fixed
      002B32 E6               [12] 2445 	mov	a,@r0
      002B33 70 05            [24] 2446 	jnz	00135$
      002B35 78 3E            [12] 2447 	mov	r0,#_cycle2
      002B37 E6               [12] 2448 	mov	a,@r0
      002B38 60 70            [24] 2449 	jz	00136$
      002B3A                       2450 00135$:
                                   2451 ;	life.c:322: printstr("DONE ");
      002B3A 7D 87            [12] 2452 	mov	r5,#___str_10
      002B3C 7E 30            [12] 2453 	mov	r6,#(___str_10 >> 8)
      002B3E 7F 80            [12] 2454 	mov	r7,#0x80
                                   2455 ;	life.c:68: return;
      002B40                       2456 00243$:
                                   2457 ;	life.c:66: for (; *s; s++) putchar(*s);
      002B40 8D 82            [24] 2458 	mov	dpl,r5
      002B42 8E 83            [24] 2459 	mov	dph,r6
      002B44 8F F0            [24] 2460 	mov	b,r7
      002B46 12 2E FB         [24] 2461 	lcall	__gptrget
      002B49 FC               [12] 2462 	mov	r4,a
      002B4A 60 10            [24] 2463 	jz	00201$
      002B4C 7B 00            [12] 2464 	mov	r3,#0x00
      002B4E 8C 82            [24] 2465 	mov	dpl,r4
      002B50 8B 83            [24] 2466 	mov	dph,r3
      002B52 12 20 B5         [24] 2467 	lcall	_putchar
      002B55 0D               [12] 2468 	inc	r5
                                   2469 ;	life.c:322: printstr("DONE ");
      002B56 BD 00 E7         [24] 2470 	cjne	r5,#0x00,00243$
      002B59 0E               [12] 2471 	inc	r6
      002B5A 80 E4            [24] 2472 	sjmp	00243$
      002B5C                       2473 00201$:
                                   2474 ;	life.c:323: if (fixed) printstr("FIXED\r\n");
      002B5C 78 3D            [12] 2475 	mov	r0,#_fixed
      002B5E E6               [12] 2476 	mov	a,@r0
      002B5F 60 22            [24] 2477 	jz	00133$
      002B61 7D 8D            [12] 2478 	mov	r5,#___str_11
      002B63 7E 30            [12] 2479 	mov	r6,#(___str_11 >> 8)
      002B65 7F 80            [12] 2480 	mov	r7,#0x80
                                   2481 ;	life.c:68: return;
      002B67                       2482 00246$:
                                   2483 ;	life.c:66: for (; *s; s++) putchar(*s);
      002B67 8D 82            [24] 2484 	mov	dpl,r5
      002B69 8E 83            [24] 2485 	mov	dph,r6
      002B6B 8F F0            [24] 2486 	mov	b,r7
      002B6D 12 2E FB         [24] 2487 	lcall	__gptrget
      002B70 FC               [12] 2488 	mov	r4,a
      002B71 60 32            [24] 2489 	jz	00134$
      002B73 7B 00            [12] 2490 	mov	r3,#0x00
      002B75 8C 82            [24] 2491 	mov	dpl,r4
      002B77 8B 83            [24] 2492 	mov	dph,r3
      002B79 12 20 B5         [24] 2493 	lcall	_putchar
      002B7C 0D               [12] 2494 	inc	r5
                                   2495 ;	life.c:323: if (fixed) printstr("FIXED\r\n");
      002B7D BD 00 E7         [24] 2496 	cjne	r5,#0x00,00246$
      002B80 0E               [12] 2497 	inc	r6
      002B81 80 E4            [24] 2498 	sjmp	00246$
      002B83                       2499 00133$:
                                   2500 ;	life.c:324: else printstr("CYCLE2\r\n");
      002B83 7D 95            [12] 2501 	mov	r5,#___str_12
      002B85 7E 30            [12] 2502 	mov	r6,#(___str_12 >> 8)
      002B87 7F 80            [12] 2503 	mov	r7,#0x80
                                   2504 ;	life.c:68: return;
      002B89                       2505 00249$:
                                   2506 ;	life.c:66: for (; *s; s++) putchar(*s);
      002B89 8D 82            [24] 2507 	mov	dpl,r5
      002B8B 8E 83            [24] 2508 	mov	dph,r6
      002B8D 8F F0            [24] 2509 	mov	b,r7
      002B8F 12 2E FB         [24] 2510 	lcall	__gptrget
      002B92 FC               [12] 2511 	mov	r4,a
      002B93 60 10            [24] 2512 	jz	00134$
      002B95 7B 00            [12] 2513 	mov	r3,#0x00
      002B97 8C 82            [24] 2514 	mov	dpl,r4
      002B99 8B 83            [24] 2515 	mov	dph,r3
      002B9B 12 20 B5         [24] 2516 	lcall	_putchar
      002B9E 0D               [12] 2517 	inc	r5
                                   2518 ;	life.c:324: else printstr("CYCLE2\r\n");
      002B9F BD 00 E7         [24] 2519 	cjne	r5,#0x00,00249$
      002BA2 0E               [12] 2520 	inc	r6
      002BA3 80 E4            [24] 2521 	sjmp	00249$
      002BA5                       2522 00134$:
                                   2523 ;	life.c:325: (void)getchar();
      002BA5 12 20 BA         [24] 2524 	lcall	_getchar
                                   2525 ;	life.c:326: break;
      002BA8 80 50            [24] 2526 	sjmp	00145$
      002BAA                       2527 00136$:
                                   2528 ;	life.c:329: c = getchar_poll();
      002BAA 12 20 C3         [24] 2529 	lcall	_getchar_poll
      002BAD AE 82            [24] 2530 	mov	r6,dpl
      002BAF AF 83            [24] 2531 	mov	r7,dph
      002BB1 78 3A            [12] 2532 	mov	r0,#_c
      002BB3 A6 06            [24] 2533 	mov	@r0,ar6
      002BB5 08               [12] 2534 	inc	r0
      002BB6 A6 07            [24] 2535 	mov	@r0,ar7
                                   2536 ;	life.c:330: if (c > 0) {
      002BB8 C3               [12] 2537 	clr	c
      002BB9 E4               [12] 2538 	clr	a
      002BBA 9E               [12] 2539 	subb	a,r6
      002BBB 74 80            [12] 2540 	mov	a,#(0x00 ^ 0x80)
      002BBD 8F F0            [24] 2541 	mov	b,r7
      002BBF 63 F0 80         [24] 2542 	xrl	b,#0x80
      002BC2 95 F0            [12] 2543 	subb	a,b
      002BC4 40 03            [24] 2544 	jc	00616$
      002BC6 02 26 DC         [24] 2545 	ljmp	00253$
      002BC9                       2546 00616$:
                                   2547 ;	life.c:331: c = toupper(c);
      002BC9 8E 82            [24] 2548 	mov	dpl,r6
      002BCB 8F 83            [24] 2549 	mov	dph,r7
      002BCD 12 2E D4         [24] 2550 	lcall	_toupper
      002BD0 AE 82            [24] 2551 	mov	r6,dpl
      002BD2 AF 83            [24] 2552 	mov	r7,dph
      002BD4 78 3A            [12] 2553 	mov	r0,#_c
      002BD6 A6 06            [24] 2554 	mov	@r0,ar6
      002BD8 08               [12] 2555 	inc	r0
      002BD9 A6 07            [24] 2556 	mov	@r0,ar7
                                   2557 ;	life.c:332: if (c == (int)'T') i0 = 1;
      002BDB BE 54 0A         [24] 2558 	cjne	r6,#0x54,00141$
      002BDE BF 00 07         [24] 2559 	cjne	r7,#0x00,00141$
      002BE1 78 31            [12] 2560 	mov	r0,#_i0
      002BE3 76 01            [12] 2561 	mov	@r0,#0x01
      002BE5 02 26 DC         [24] 2562 	ljmp	00253$
      002BE8                       2563 00141$:
                                   2564 ;	life.c:333: else if (c == (int)'B') i1 = 1;
      002BE8 BE 42 05         [24] 2565 	cjne	r6,#0x42,00619$
      002BEB BF 00 02         [24] 2566 	cjne	r7,#0x00,00619$
      002BEE 80 03            [24] 2567 	sjmp	00620$
      002BF0                       2568 00619$:
      002BF0 02 26 DC         [24] 2569 	ljmp	00253$
      002BF3                       2570 00620$:
      002BF3 78 32            [12] 2571 	mov	r0,#_i1
      002BF5 76 01            [12] 2572 	mov	@r0,#0x01
      002BF7 02 26 DC         [24] 2573 	ljmp	00253$
      002BFA                       2574 00145$:
                                   2575 ;	life.c:337: if (i1) {
      002BFA 78 32            [12] 2576 	mov	r0,#_i1
      002BFC E6               [12] 2577 	mov	a,@r0
      002BFD 60 25            [24] 2578 	jz	00259$
                                   2579 ;	life.c:338: printstr("BREAK\r\n");
      002BFF 7D 9E            [12] 2580 	mov	r5,#___str_13
      002C01 7E 30            [12] 2581 	mov	r6,#(___str_13 >> 8)
      002C03 7F 80            [12] 2582 	mov	r7,#0x80
                                   2583 ;	life.c:68: return;
      002C05                       2584 00256$:
                                   2585 ;	life.c:66: for (; *s; s++) putchar(*s);
      002C05 8D 82            [24] 2586 	mov	dpl,r5
      002C07 8E 83            [24] 2587 	mov	dph,r6
      002C09 8F F0            [24] 2588 	mov	b,r7
      002C0B 12 2E FB         [24] 2589 	lcall	__gptrget
      002C0E FC               [12] 2590 	mov	r4,a
      002C0F 60 10            [24] 2591 	jz	00207$
      002C11 7B 00            [12] 2592 	mov	r3,#0x00
      002C13 8C 82            [24] 2593 	mov	dpl,r4
      002C15 8B 83            [24] 2594 	mov	dph,r3
      002C17 12 20 B5         [24] 2595 	lcall	_putchar
      002C1A 0D               [12] 2596 	inc	r5
                                   2597 ;	life.c:338: printstr("BREAK\r\n");
      002C1B BD 00 E7         [24] 2598 	cjne	r5,#0x00,00256$
      002C1E 0E               [12] 2599 	inc	r6
      002C1F 80 E4            [24] 2600 	sjmp	00256$
      002C21                       2601 00207$:
                                   2602 ;	life.c:339: (void)getchar();
      002C21 12 20 BA         [24] 2603 	lcall	_getchar
      002C24                       2604 00259$:
                                   2605 ;	life.c:292: for (i0 = 0; !i0; ) {	
      002C24 78 31            [12] 2606 	mov	r0,#_i0
      002C26 E6               [12] 2607 	mov	a,@r0
      002C27 70 03            [24] 2608 	jnz	00624$
      002C29 02 23 73         [24] 2609 	ljmp	00258$
      002C2C                       2610 00624$:
                                   2611 ;	life.c:343: term:
      002C2C                       2612 00149$:
                                   2613 ;	life.c:344: EA = 0;
                                   2614 ;	assignBit
      002C2C C2 AF            [12] 2615 	clr	_EA
                                   2616 ;	life.c:345: printstr("TERM\r\n");
      002C2E 7D A6            [12] 2617 	mov	r5,#___str_14
      002C30 7E 30            [12] 2618 	mov	r6,#(___str_14 >> 8)
      002C32 7F 80            [12] 2619 	mov	r7,#0x80
                                   2620 ;	life.c:68: return;
      002C34                       2621 00261$:
                                   2622 ;	life.c:66: for (; *s; s++) putchar(*s);
      002C34 8D 82            [24] 2623 	mov	dpl,r5
      002C36 8E 83            [24] 2624 	mov	dph,r6
      002C38 8F F0            [24] 2625 	mov	b,r7
      002C3A 12 2E FB         [24] 2626 	lcall	__gptrget
      002C3D FC               [12] 2627 	mov	r4,a
      002C3E 60 10            [24] 2628 	jz	00209$
      002C40 7B 00            [12] 2629 	mov	r3,#0x00
      002C42 8C 82            [24] 2630 	mov	dpl,r4
      002C44 8B 83            [24] 2631 	mov	dph,r3
      002C46 12 20 B5         [24] 2632 	lcall	_putchar
      002C49 0D               [12] 2633 	inc	r5
                                   2634 ;	life.c:345: printstr("TERM\r\n");
      002C4A BD 00 E7         [24] 2635 	cjne	r5,#0x00,00261$
      002C4D 0E               [12] 2636 	inc	r6
      002C4E 80 E4            [24] 2637 	sjmp	00261$
      002C50                       2638 00209$:
                                   2639 ;	life.c:346: (void)getchar();
      002C50 12 20 BA         [24] 2640 	lcall	_getchar
                                   2641 ;	life.c:348: PCON |= 2;
      002C53 43 87 02         [24] 2642 	orl	_PCON,#0x02
                                   2643 ;	life.c:350: return;
                                   2644 ;	life.c:351: }
      002C56 85 10 81         [24] 2645 	mov	sp,_bp
      002C59 D0 10            [24] 2646 	pop	_bp
      002C5B 22               [24] 2647 	ret
                                   2648 	.area CSEG    (CODE)
                                   2649 	.area CONST   (CODE)
                                   2650 	.area CONST   (CODE)
      003023                       2651 ___str_0:
      003023 1B                    2652 	.db 0x1b
      003024 5B 3F 32 35 6C        2653 	.ascii "[?25l"
      003029 00                    2654 	.db 0x00
                                   2655 	.area CSEG    (CODE)
                                   2656 	.area CONST   (CODE)
      00302A                       2657 ___str_1:
      00302A 1B                    2658 	.db 0x1b
      00302B 5B 32 4A 47 45 4E 20  2659 	.ascii "[2JGEN "
      003032 00                    2660 	.db 0x00
                                   2661 	.area CSEG    (CODE)
                                   2662 	.area CONST   (CODE)
      003033                       2663 ___str_2:
      003033 0D                    2664 	.db 0x0d
      003034 0A                    2665 	.db 0x0a
      003035 00                    2666 	.db 0x00
                                   2667 	.area CSEG    (CODE)
                                   2668 	.area CONST   (CODE)
      003036                       2669 ___str_3:
      003036 1B                    2670 	.db 0x1b
      003037 5B 3F 32 35 68        2671 	.ascii "[?25h"
      00303C 00                    2672 	.db 0x00
                                   2673 	.area CSEG    (CODE)
                                   2674 	.area CONST   (CODE)
      00303D                       2675 ___str_4:
      00303D 4C 4F 41 44 20 30 20  2676 	.ascii "LOAD 0 1 ~ # <"
             31 20 7E 20 23 20 3C
      00304B 00                    2677 	.db 0x00
                                   2678 	.area CSEG    (CODE)
                                   2679 	.area CONST   (CODE)
      00304C                       2680 ___str_5:
      00304C 3E                    2681 	.ascii ">"
      00304D 0D                    2682 	.db 0x0d
      00304E 0A                    2683 	.db 0x0a
      00304F 00                    2684 	.db 0x00
                                   2685 	.area CSEG    (CODE)
                                   2686 	.area CONST   (CODE)
      003050                       2687 ___str_6:
      003050 52 41 4E 44 4F 4D     2688 	.ascii "RANDOM"
      003056 00                    2689 	.db 0x00
                                   2690 	.area CSEG    (CODE)
                                   2691 	.area CONST   (CODE)
      003057                       2692 ___str_7:
      003057 1B                    2693 	.db 0x1b
      003058 5B 3F 32 35 68        2694 	.ascii "[?25h"
      00305D 1B                    2695 	.db 0x1b
      00305E 5B 6D                 2696 	.ascii "[m"
      003060 00                    2697 	.db 0x00
                                   2698 	.area CSEG    (CODE)
                                   2699 	.area CONST   (CODE)
      003061                       2700 ___str_8:
      003061 4C 49 46 45 20 49 4E  2701 	.ascii "LIFE INIT T L R P"
             49 54 20 54 20 4C 20
             52 20 50
      003072 0D                    2702 	.db 0x0d
      003073 0A                    2703 	.db 0x0a
      003074 00                    2704 	.db 0x00
                                   2705 	.area CSEG    (CODE)
                                   2706 	.area CONST   (CODE)
      003075                       2707 ___str_9:
      003075 52 45 41 44 59 20 54  2708 	.ascii "READY T L R P S"
             20 4C 20 52 20 50 20
             53
      003084 0D                    2709 	.db 0x0d
      003085 0A                    2710 	.db 0x0a
      003086 00                    2711 	.db 0x00
                                   2712 	.area CSEG    (CODE)
                                   2713 	.area CONST   (CODE)
      003087                       2714 ___str_10:
      003087 44 4F 4E 45 20        2715 	.ascii "DONE "
      00308C 00                    2716 	.db 0x00
                                   2717 	.area CSEG    (CODE)
                                   2718 	.area CONST   (CODE)
      00308D                       2719 ___str_11:
      00308D 46 49 58 45 44        2720 	.ascii "FIXED"
      003092 0D                    2721 	.db 0x0d
      003093 0A                    2722 	.db 0x0a
      003094 00                    2723 	.db 0x00
                                   2724 	.area CSEG    (CODE)
                                   2725 	.area CONST   (CODE)
      003095                       2726 ___str_12:
      003095 43 59 43 4C 45 32     2727 	.ascii "CYCLE2"
      00309B 0D                    2728 	.db 0x0d
      00309C 0A                    2729 	.db 0x0a
      00309D 00                    2730 	.db 0x00
                                   2731 	.area CSEG    (CODE)
                                   2732 	.area CONST   (CODE)
      00309E                       2733 ___str_13:
      00309E 42 52 45 41 4B        2734 	.ascii "BREAK"
      0030A3 0D                    2735 	.db 0x0d
      0030A4 0A                    2736 	.db 0x0a
      0030A5 00                    2737 	.db 0x00
                                   2738 	.area CSEG    (CODE)
                                   2739 	.area CONST   (CODE)
      0030A6                       2740 ___str_14:
      0030A6 54 45 52 4D           2741 	.ascii "TERM"
      0030AA 0D                    2742 	.db 0x0d
      0030AB 0A                    2743 	.db 0x0a
      0030AC 00                    2744 	.db 0x00
                                   2745 	.area CSEG    (CODE)
                                   2746 	.area XINIT   (CODE)
                                   2747 	.area CABS    (ABS,CODE)
