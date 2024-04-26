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
      00003F                        340 _dx:
      00003F                        341 	.ds 2
      000041                        342 _dy:
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
      002003 02 20 B5         [24]  397 	ljmp	_int0
      002006                        398 	.ds	5
      00200B 32               [24]  399 	reti
      00200C                        400 	.ds	7
      002013 02 20 C1         [24]  401 	ljmp	_int1
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
                                    415 ;	life.c:11: __idata static const char digits[16] = {
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
      002016 02 23 6C         [24]  456 	ljmp	_main
                                    457 ;	return from main will return to caller
                                    458 ;--------------------------------------------------------
                                    459 ; code
                                    460 ;--------------------------------------------------------
                                    461 	.area CSEG    (CODE)
                                    462 ;------------------------------------------------------------
                                    463 ;Allocation info for local variables in function 'int0'
                                    464 ;------------------------------------------------------------
                                    465 ;	life.c:40: void int0(void) __interrupt IE0_VECTOR __using 1 {
                                    466 ;	-----------------------------------------
                                    467 ;	 function int0
                                    468 ;	-----------------------------------------
      0020B5                        469 _int0:
                           00000F   470 	ar7 = 0x0f
                           00000E   471 	ar6 = 0x0e
                           00000D   472 	ar5 = 0x0d
                           00000C   473 	ar4 = 0x0c
                           00000B   474 	ar3 = 0x0b
                           00000A   475 	ar2 = 0x0a
                           000009   476 	ar1 = 0x09
                           000008   477 	ar0 = 0x08
      0020B5 C0 D0            [24]  478 	push	psw
      0020B7 75 D0 08         [24]  479 	mov	psw,#0x08
                                    480 ;	life.c:41: i0 = 1;
      0020BA 78 31            [12]  481 	mov	r0,#_i0
      0020BC 76 01            [12]  482 	mov	@r0,#0x01
                                    483 ;	life.c:42: }
      0020BE D0 D0            [24]  484 	pop	psw
      0020C0 32               [24]  485 	reti
                                    486 ;	eliminated unneeded push/pop dpl
                                    487 ;	eliminated unneeded push/pop dph
                                    488 ;	eliminated unneeded push/pop b
                                    489 ;	eliminated unneeded push/pop acc
                                    490 ;------------------------------------------------------------
                                    491 ;Allocation info for local variables in function 'int1'
                                    492 ;------------------------------------------------------------
                                    493 ;	life.c:44: void int1(void) __interrupt IE1_VECTOR __using 1 {
                                    494 ;	-----------------------------------------
                                    495 ;	 function int1
                                    496 ;	-----------------------------------------
      0020C1                        497 _int1:
      0020C1 C0 D0            [24]  498 	push	psw
      0020C3 75 D0 08         [24]  499 	mov	psw,#0x08
                                    500 ;	life.c:45: i1 = 1;
      0020C6 78 32            [12]  501 	mov	r0,#_i1
      0020C8 76 01            [12]  502 	mov	@r0,#0x01
                                    503 ;	life.c:46: }
      0020CA D0 D0            [24]  504 	pop	psw
      0020CC 32               [24]  505 	reti
                                    506 ;	eliminated unneeded push/pop dpl
                                    507 ;	eliminated unneeded push/pop dph
                                    508 ;	eliminated unneeded push/pop b
                                    509 ;	eliminated unneeded push/pop acc
                                    510 ;------------------------------------------------------------
                                    511 ;Allocation info for local variables in function 'flashOE'
                                    512 ;------------------------------------------------------------
                                    513 ;	life.c:56: static void flashOE(void) {
                                    514 ;	-----------------------------------------
                                    515 ;	 function flashOE
                                    516 ;	-----------------------------------------
      0020CD                        517 _flashOE:
                           000007   518 	ar7 = 0x07
                           000006   519 	ar6 = 0x06
                           000005   520 	ar5 = 0x05
                           000004   521 	ar4 = 0x04
                           000003   522 	ar3 = 0x03
                           000002   523 	ar2 = 0x02
                           000001   524 	ar1 = 0x01
                           000000   525 	ar0 = 0x00
                                    526 ;	life.c:57: P1_7 = 0;
                                    527 ;	assignBit
      0020CD C2 97            [12]  528 	clr	_P1_7
                                    529 ;	life.c:62: __endasm;
      0020CF 00               [12]  530 	nop
      0020D0 00               [12]  531 	nop
      0020D1 00               [12]  532 	nop
                                    533 ;	life.c:63: OEreg = OE76;
      0020D2 78 33            [12]  534 	mov	r0,#_OE76
      0020D4 90 F0 06         [24]  535 	mov	dptr,#_OEreg
      0020D7 E6               [12]  536 	mov	a,@r0
      0020D8 F0               [24]  537 	movx	@dptr,a
                                    538 ;	life.c:64: P1_7 = 1;
                                    539 ;	assignBit
      0020D9 D2 97            [12]  540 	setb	_P1_7
                                    541 ;	life.c:69: __endasm;
      0020DB 00               [12]  542 	nop
      0020DC 00               [12]  543 	nop
      0020DD 00               [12]  544 	nop
                                    545 ;	life.c:71: return;
                                    546 ;	life.c:72: }
      0020DE 22               [24]  547 	ret
                                    548 ;------------------------------------------------------------
                                    549 ;Allocation info for local variables in function 'show'
                                    550 ;------------------------------------------------------------
                                    551 ;hdr                       Allocated to registers r7 
                                    552 ;__1310720005              Allocated to registers 
                                    553 ;s                         Allocated to registers r4 r5 r6 
                                    554 ;__1966080007              Allocated to registers 
                                    555 ;s                         Allocated to registers r5 r6 r7 
                                    556 ;__1310720001              Allocated to registers r6 r7 
                                    557 ;a                         Allocated to registers 
                                    558 ;__1310720003              Allocated to registers r6 r7 
                                    559 ;a                         Allocated to registers 
                                    560 ;__1966080010              Allocated to registers 
                                    561 ;s                         Allocated to registers r5 r6 r7 
                                    562 ;__2621440013              Allocated to registers 
                                    563 ;s                         Allocated to registers r5 r6 r7 
                                    564 ;__1310720015              Allocated to registers 
                                    565 ;s                         Allocated to registers r5 r6 r7 
                                    566 ;------------------------------------------------------------
                                    567 ;	life.c:108: void show(char hdr) {
                                    568 ;	-----------------------------------------
                                    569 ;	 function show
                                    570 ;	-----------------------------------------
      0020DF                        571 _show:
      0020DF AF 82            [24]  572 	mov	r7,dpl
                                    573 ;	life.c:109: printstr("\033[?25l");
      0020E1 7C 4D            [12]  574 	mov	r4,#___str_0
      0020E3 7D 31            [12]  575 	mov	r5,#(___str_0 >> 8)
      0020E5 7E 80            [12]  576 	mov	r6,#0x80
                                    577 ;	life.c:35: return;
      0020E7                        578 00125$:
                                    579 ;	life.c:33: for (; *s; s++) putchar(*s);
      0020E7 8C 82            [24]  580 	mov	dpl,r4
      0020E9 8D 83            [24]  581 	mov	dph,r5
      0020EB 8E F0            [24]  582 	mov	b,r6
      0020ED 12 30 25         [24]  583 	lcall	__gptrget
      0020F0 FB               [12]  584 	mov	r3,a
      0020F1 60 20            [24]  585 	jz	00109$
      0020F3 7A 00            [12]  586 	mov	r2,#0x00
      0020F5 8B 82            [24]  587 	mov	dpl,r3
      0020F7 8A 83            [24]  588 	mov	dph,r2
      0020F9 C0 07            [24]  589 	push	ar7
      0020FB C0 06            [24]  590 	push	ar6
      0020FD C0 05            [24]  591 	push	ar5
      0020FF C0 04            [24]  592 	push	ar4
      002101 12 2E 32         [24]  593 	lcall	_putchar
      002104 D0 04            [24]  594 	pop	ar4
      002106 D0 05            [24]  595 	pop	ar5
      002108 D0 06            [24]  596 	pop	ar6
      00210A D0 07            [24]  597 	pop	ar7
      00210C 0C               [12]  598 	inc	r4
                                    599 ;	life.c:109: printstr("\033[?25l");
      00210D BC 00 D7         [24]  600 	cjne	r4,#0x00,00125$
      002110 0D               [12]  601 	inc	r5
      002111 80 D4            [24]  602 	sjmp	00125$
      002113                        603 00109$:
                                    604 ;	life.c:111: if (hdr) {
      002113 EF               [12]  605 	mov	a,r7
      002114 70 03            [24]  606 	jnz	00220$
      002116 02 22 97         [24]  607 	ljmp	00102$
      002119                        608 00220$:
                                    609 ;	life.c:112: printstr("\033[2JGEN ");
      002119 7D 54            [12]  610 	mov	r5,#___str_1
      00211B 7E 31            [12]  611 	mov	r6,#(___str_1 >> 8)
      00211D 7F 80            [12]  612 	mov	r7,#0x80
                                    613 ;	life.c:35: return;
      00211F                        614 00128$:
                                    615 ;	life.c:33: for (; *s; s++) putchar(*s);
      00211F 8D 82            [24]  616 	mov	dpl,r5
      002121 8E 83            [24]  617 	mov	dph,r6
      002123 8F F0            [24]  618 	mov	b,r7
      002125 12 30 25         [24]  619 	lcall	__gptrget
      002128 FC               [12]  620 	mov	r4,a
      002129 60 1C            [24]  621 	jz	00111$
      00212B 7B 00            [12]  622 	mov	r3,#0x00
      00212D 8C 82            [24]  623 	mov	dpl,r4
      00212F 8B 83            [24]  624 	mov	dph,r3
      002131 C0 07            [24]  625 	push	ar7
      002133 C0 06            [24]  626 	push	ar6
      002135 C0 05            [24]  627 	push	ar5
      002137 12 2E 32         [24]  628 	lcall	_putchar
      00213A D0 05            [24]  629 	pop	ar5
      00213C D0 06            [24]  630 	pop	ar6
      00213E D0 07            [24]  631 	pop	ar7
      002140 0D               [12]  632 	inc	r5
                                    633 ;	life.c:112: printstr("\033[2JGEN ");
      002141 BD 00 DB         [24]  634 	cjne	r5,#0x00,00128$
      002144 0E               [12]  635 	inc	r6
      002145 80 D8            [24]  636 	sjmp	00128$
      002147                        637 00111$:
                                    638 ;	life.c:102: print16x(generation[1]);
      002147 78 45            [12]  639 	mov	r0,#(_generation + 0x0002)
      002149 86 06            [24]  640 	mov	ar6,@r0
      00214B 08               [12]  641 	inc	r0
                                    642 ;	life.c:24: putchar(digits[(a >> 12) & 0xf]);
      00214C E6               [12]  643 	mov	a,@r0
      00214D FF               [12]  644 	mov	r7,a
      00214E C4               [12]  645 	swap	a
      00214F 54 0F            [12]  646 	anl	a,#0x0f
      002151 FC               [12]  647 	mov	r4,a
      002152 53 04 0F         [24]  648 	anl	ar4,#0x0f
      002155 EC               [12]  649 	mov	a,r4
      002156 24 21            [12]  650 	add	a,#_digits
      002158 F9               [12]  651 	mov	r1,a
      002159 87 05            [24]  652 	mov	ar5,@r1
      00215B 7C 00            [12]  653 	mov	r4,#0x00
      00215D 8D 82            [24]  654 	mov	dpl,r5
      00215F 8C 83            [24]  655 	mov	dph,r4
      002161 C0 07            [24]  656 	push	ar7
      002163 C0 06            [24]  657 	push	ar6
      002165 12 2E 32         [24]  658 	lcall	_putchar
      002168 D0 06            [24]  659 	pop	ar6
      00216A D0 07            [24]  660 	pop	ar7
                                    661 ;	life.c:25: putchar(digits[(a >> 8) & 0xf]);
      00216C 8F 05            [24]  662 	mov	ar5,r7
      00216E 53 05 0F         [24]  663 	anl	ar5,#0x0f
      002171 ED               [12]  664 	mov	a,r5
      002172 24 21            [12]  665 	add	a,#_digits
      002174 F9               [12]  666 	mov	r1,a
      002175 87 05            [24]  667 	mov	ar5,@r1
      002177 7C 00            [12]  668 	mov	r4,#0x00
      002179 8D 82            [24]  669 	mov	dpl,r5
      00217B 8C 83            [24]  670 	mov	dph,r4
      00217D C0 07            [24]  671 	push	ar7
      00217F C0 06            [24]  672 	push	ar6
      002181 12 2E 32         [24]  673 	lcall	_putchar
      002184 D0 06            [24]  674 	pop	ar6
      002186 D0 07            [24]  675 	pop	ar7
                                    676 ;	life.c:26: putchar(digits[(a >> 4) & 0xf]);
      002188 8E 04            [24]  677 	mov	ar4,r6
      00218A EF               [12]  678 	mov	a,r7
      00218B C4               [12]  679 	swap	a
      00218C CC               [12]  680 	xch	a,r4
      00218D C4               [12]  681 	swap	a
      00218E 54 0F            [12]  682 	anl	a,#0x0f
      002190 6C               [12]  683 	xrl	a,r4
      002191 CC               [12]  684 	xch	a,r4
      002192 54 0F            [12]  685 	anl	a,#0x0f
      002194 CC               [12]  686 	xch	a,r4
      002195 6C               [12]  687 	xrl	a,r4
      002196 CC               [12]  688 	xch	a,r4
      002197 53 04 0F         [24]  689 	anl	ar4,#0x0f
      00219A EC               [12]  690 	mov	a,r4
      00219B 24 21            [12]  691 	add	a,#_digits
      00219D F9               [12]  692 	mov	r1,a
      00219E 87 05            [24]  693 	mov	ar5,@r1
      0021A0 7C 00            [12]  694 	mov	r4,#0x00
      0021A2 8D 82            [24]  695 	mov	dpl,r5
      0021A4 8C 83            [24]  696 	mov	dph,r4
      0021A6 C0 07            [24]  697 	push	ar7
      0021A8 C0 06            [24]  698 	push	ar6
      0021AA 12 2E 32         [24]  699 	lcall	_putchar
      0021AD D0 06            [24]  700 	pop	ar6
      0021AF D0 07            [24]  701 	pop	ar7
                                    702 ;	life.c:27: putchar(digits[a & 0xf]);
      0021B1 53 06 0F         [24]  703 	anl	ar6,#0x0f
      0021B4 EE               [12]  704 	mov	a,r6
      0021B5 24 21            [12]  705 	add	a,#_digits
      0021B7 F9               [12]  706 	mov	r1,a
      0021B8 87 07            [24]  707 	mov	ar7,@r1
      0021BA 7E 00            [12]  708 	mov	r6,#0x00
      0021BC 8F 82            [24]  709 	mov	dpl,r7
      0021BE 8E 83            [24]  710 	mov	dph,r6
      0021C0 12 2E 32         [24]  711 	lcall	_putchar
                                    712 ;	life.c:103: print16x(generation[0]);
      0021C3 78 43            [12]  713 	mov	r0,#_generation
      0021C5 86 06            [24]  714 	mov	ar6,@r0
      0021C7 08               [12]  715 	inc	r0
                                    716 ;	life.c:24: putchar(digits[(a >> 12) & 0xf]);
      0021C8 E6               [12]  717 	mov	a,@r0
      0021C9 FF               [12]  718 	mov	r7,a
      0021CA C4               [12]  719 	swap	a
      0021CB 54 0F            [12]  720 	anl	a,#0x0f
      0021CD FC               [12]  721 	mov	r4,a
      0021CE 53 04 0F         [24]  722 	anl	ar4,#0x0f
      0021D1 EC               [12]  723 	mov	a,r4
      0021D2 24 21            [12]  724 	add	a,#_digits
      0021D4 F9               [12]  725 	mov	r1,a
      0021D5 87 05            [24]  726 	mov	ar5,@r1
      0021D7 7C 00            [12]  727 	mov	r4,#0x00
      0021D9 8D 82            [24]  728 	mov	dpl,r5
      0021DB 8C 83            [24]  729 	mov	dph,r4
      0021DD C0 07            [24]  730 	push	ar7
      0021DF C0 06            [24]  731 	push	ar6
      0021E1 12 2E 32         [24]  732 	lcall	_putchar
      0021E4 D0 06            [24]  733 	pop	ar6
      0021E6 D0 07            [24]  734 	pop	ar7
                                    735 ;	life.c:25: putchar(digits[(a >> 8) & 0xf]);
      0021E8 8F 05            [24]  736 	mov	ar5,r7
      0021EA 53 05 0F         [24]  737 	anl	ar5,#0x0f
      0021ED ED               [12]  738 	mov	a,r5
      0021EE 24 21            [12]  739 	add	a,#_digits
      0021F0 F9               [12]  740 	mov	r1,a
      0021F1 87 05            [24]  741 	mov	ar5,@r1
      0021F3 7C 00            [12]  742 	mov	r4,#0x00
      0021F5 8D 82            [24]  743 	mov	dpl,r5
      0021F7 8C 83            [24]  744 	mov	dph,r4
      0021F9 C0 07            [24]  745 	push	ar7
      0021FB C0 06            [24]  746 	push	ar6
      0021FD 12 2E 32         [24]  747 	lcall	_putchar
      002200 D0 06            [24]  748 	pop	ar6
      002202 D0 07            [24]  749 	pop	ar7
                                    750 ;	life.c:26: putchar(digits[(a >> 4) & 0xf]);
      002204 8E 04            [24]  751 	mov	ar4,r6
      002206 EF               [12]  752 	mov	a,r7
      002207 C4               [12]  753 	swap	a
      002208 CC               [12]  754 	xch	a,r4
      002209 C4               [12]  755 	swap	a
      00220A 54 0F            [12]  756 	anl	a,#0x0f
      00220C 6C               [12]  757 	xrl	a,r4
      00220D CC               [12]  758 	xch	a,r4
      00220E 54 0F            [12]  759 	anl	a,#0x0f
      002210 CC               [12]  760 	xch	a,r4
      002211 6C               [12]  761 	xrl	a,r4
      002212 CC               [12]  762 	xch	a,r4
      002213 53 04 0F         [24]  763 	anl	ar4,#0x0f
      002216 EC               [12]  764 	mov	a,r4
      002217 24 21            [12]  765 	add	a,#_digits
      002219 F9               [12]  766 	mov	r1,a
      00221A 87 05            [24]  767 	mov	ar5,@r1
      00221C 7C 00            [12]  768 	mov	r4,#0x00
      00221E 8D 82            [24]  769 	mov	dpl,r5
      002220 8C 83            [24]  770 	mov	dph,r4
      002222 C0 07            [24]  771 	push	ar7
      002224 C0 06            [24]  772 	push	ar6
      002226 12 2E 32         [24]  773 	lcall	_putchar
      002229 D0 06            [24]  774 	pop	ar6
      00222B D0 07            [24]  775 	pop	ar7
                                    776 ;	life.c:27: putchar(digits[a & 0xf]);
      00222D 53 06 0F         [24]  777 	anl	ar6,#0x0f
      002230 EE               [12]  778 	mov	a,r6
      002231 24 21            [12]  779 	add	a,#_digits
      002233 F9               [12]  780 	mov	r1,a
      002234 87 07            [24]  781 	mov	ar7,@r1
      002236 7E 00            [12]  782 	mov	r6,#0x00
      002238 8F 82            [24]  783 	mov	dpl,r7
      00223A 8E 83            [24]  784 	mov	dph,r6
      00223C 12 2E 32         [24]  785 	lcall	_putchar
                                    786 ;	life.c:114: printstr("\r\n");
      00223F 7D 5D            [12]  787 	mov	r5,#___str_2
      002241 7E 31            [12]  788 	mov	r6,#(___str_2 >> 8)
      002243 7F 80            [12]  789 	mov	r7,#0x80
                                    790 ;	life.c:35: return;
      002245                        791 00131$:
                                    792 ;	life.c:33: for (; *s; s++) putchar(*s);
      002245 8D 82            [24]  793 	mov	dpl,r5
      002247 8E 83            [24]  794 	mov	dph,r6
      002249 8F F0            [24]  795 	mov	b,r7
      00224B 12 30 25         [24]  796 	lcall	__gptrget
      00224E FC               [12]  797 	mov	r4,a
      00224F 60 1C            [24]  798 	jz	00116$
      002251 7B 00            [12]  799 	mov	r3,#0x00
      002253 8C 82            [24]  800 	mov	dpl,r4
      002255 8B 83            [24]  801 	mov	dph,r3
      002257 C0 07            [24]  802 	push	ar7
      002259 C0 06            [24]  803 	push	ar6
      00225B C0 05            [24]  804 	push	ar5
      00225D 12 2E 32         [24]  805 	lcall	_putchar
      002260 D0 05            [24]  806 	pop	ar5
      002262 D0 06            [24]  807 	pop	ar6
      002264 D0 07            [24]  808 	pop	ar7
      002266 0D               [12]  809 	inc	r5
                                    810 ;	life.c:114: printstr("\r\n");
      002267 BD 00 DB         [24]  811 	cjne	r5,#0x00,00131$
      00226A 0E               [12]  812 	inc	r6
      00226B 80 D8            [24]  813 	sjmp	00131$
      00226D                        814 00116$:
                                    815 ;	life.c:95: generation[0]++;
      00226D 78 43            [12]  816 	mov	r0,#_generation
      00226F 86 06            [24]  817 	mov	ar6,@r0
      002271 08               [12]  818 	inc	r0
      002272 86 07            [24]  819 	mov	ar7,@r0
      002274 0E               [12]  820 	inc	r6
      002275 BE 00 01         [24]  821 	cjne	r6,#0x00,00225$
      002278 0F               [12]  822 	inc	r7
      002279                        823 00225$:
      002279 78 43            [12]  824 	mov	r0,#_generation
      00227B A6 06            [24]  825 	mov	@r0,ar6
      00227D 08               [12]  826 	inc	r0
      00227E A6 07            [24]  827 	mov	@r0,ar7
                                    828 ;	life.c:96: if (!generation[0]) generation[1]++;
      002280 EE               [12]  829 	mov	a,r6
      002281 4F               [12]  830 	orl	a,r7
      002282 70 13            [24]  831 	jnz	00102$
      002284 78 45            [12]  832 	mov	r0,#(_generation + 0x0002)
      002286 86 06            [24]  833 	mov	ar6,@r0
      002288 08               [12]  834 	inc	r0
      002289 86 07            [24]  835 	mov	ar7,@r0
      00228B 0E               [12]  836 	inc	r6
      00228C BE 00 01         [24]  837 	cjne	r6,#0x00,00227$
      00228F 0F               [12]  838 	inc	r7
      002290                        839 00227$:
      002290 78 45            [12]  840 	mov	r0,#(_generation + 0x0002)
      002292 A6 06            [24]  841 	mov	@r0,ar6
      002294 08               [12]  842 	inc	r0
      002295 A6 07            [24]  843 	mov	@r0,ar7
                                    844 ;	life.c:115: updategen();
      002297                        845 00102$:
                                    846 ;	life.c:118: for (x = 0; x < W; x++) {
      002297 78 34            [12]  847 	mov	r0,#_x
      002299 E4               [12]  848 	clr	a
      00229A F6               [12]  849 	mov	@r0,a
      00229B 08               [12]  850 	inc	r0
      00229C F6               [12]  851 	mov	@r0,a
      00229D                        852 00138$:
                                    853 ;	life.c:119: for (y = 0; y < H; y++)
      00229D 78 36            [12]  854 	mov	r0,#_y
      00229F E4               [12]  855 	clr	a
      0022A0 F6               [12]  856 	mov	@r0,a
      0022A1 08               [12]  857 	inc	r0
      0022A2 F6               [12]  858 	mov	@r0,a
      0022A3                        859 00133$:
                                    860 ;	life.c:120: if (u[A2D(W, y, x)]) putchar('1');
      0022A3 78 36            [12]  861 	mov	r0,#_y
      0022A5 E6               [12]  862 	mov	a,@r0
      0022A6 C0 E0            [24]  863 	push	acc
      0022A8 08               [12]  864 	inc	r0
      0022A9 E6               [12]  865 	mov	a,@r0
      0022AA C0 E0            [24]  866 	push	acc
      0022AC 90 00 30         [24]  867 	mov	dptr,#0x0030
      0022AF 12 2E 63         [24]  868 	lcall	__mulint
      0022B2 AE 82            [24]  869 	mov	r6,dpl
      0022B4 AF 83            [24]  870 	mov	r7,dph
      0022B6 15 81            [12]  871 	dec	sp
      0022B8 15 81            [12]  872 	dec	sp
      0022BA 78 34            [12]  873 	mov	r0,#_x
      0022BC E6               [12]  874 	mov	a,@r0
      0022BD 2E               [12]  875 	add	a,r6
      0022BE FE               [12]  876 	mov	r6,a
      0022BF 08               [12]  877 	inc	r0
      0022C0 E6               [12]  878 	mov	a,@r0
      0022C1 3F               [12]  879 	addc	a,r7
      0022C2 FF               [12]  880 	mov	r7,a
      0022C3 EE               [12]  881 	mov	a,r6
      0022C4 24 00            [12]  882 	add	a,#_u
      0022C6 FE               [12]  883 	mov	r6,a
      0022C7 EF               [12]  884 	mov	a,r7
      0022C8 34 88            [12]  885 	addc	a,#(_u >> 8)
      0022CA FF               [12]  886 	mov	r7,a
      0022CB 8E 82            [24]  887 	mov	dpl,r6
      0022CD 8F 83            [24]  888 	mov	dph,r7
      0022CF E0               [24]  889 	movx	a,@dptr
      0022D0 60 08            [24]  890 	jz	00104$
      0022D2 90 00 31         [24]  891 	mov	dptr,#0x0031
      0022D5 12 2E 32         [24]  892 	lcall	_putchar
      0022D8 80 06            [24]  893 	sjmp	00134$
      0022DA                        894 00104$:
                                    895 ;	life.c:121: else putchar('0');
      0022DA 90 00 30         [24]  896 	mov	dptr,#0x0030
      0022DD 12 2E 32         [24]  897 	lcall	_putchar
      0022E0                        898 00134$:
                                    899 ;	life.c:119: for (y = 0; y < H; y++)
      0022E0 78 36            [12]  900 	mov	r0,#_y
      0022E2 06               [12]  901 	inc	@r0
      0022E3 B6 00 02         [24]  902 	cjne	@r0,#0x00,00229$
      0022E6 08               [12]  903 	inc	r0
      0022E7 06               [12]  904 	inc	@r0
      0022E8                        905 00229$:
      0022E8 78 36            [12]  906 	mov	r0,#_y
      0022EA C3               [12]  907 	clr	c
      0022EB E6               [12]  908 	mov	a,@r0
      0022EC 94 C0            [12]  909 	subb	a,#0xc0
      0022EE 08               [12]  910 	inc	r0
      0022EF E6               [12]  911 	mov	a,@r0
      0022F0 64 80            [12]  912 	xrl	a,#0x80
      0022F2 94 80            [12]  913 	subb	a,#0x80
      0022F4 40 AD            [24]  914 	jc	00133$
                                    915 ;	life.c:122: printstr("\r\n");
      0022F6 7D 5D            [12]  916 	mov	r5,#___str_2
      0022F8 7E 31            [12]  917 	mov	r6,#(___str_2 >> 8)
      0022FA 7F 80            [12]  918 	mov	r7,#0x80
                                    919 ;	life.c:35: return;
      0022FC                        920 00136$:
                                    921 ;	life.c:33: for (; *s; s++) putchar(*s);
      0022FC 8D 82            [24]  922 	mov	dpl,r5
      0022FE 8E 83            [24]  923 	mov	dph,r6
      002300 8F F0            [24]  924 	mov	b,r7
      002302 12 30 25         [24]  925 	lcall	__gptrget
      002305 FC               [12]  926 	mov	r4,a
      002306 60 1C            [24]  927 	jz	00121$
      002308 7B 00            [12]  928 	mov	r3,#0x00
      00230A 8C 82            [24]  929 	mov	dpl,r4
      00230C 8B 83            [24]  930 	mov	dph,r3
      00230E C0 07            [24]  931 	push	ar7
      002310 C0 06            [24]  932 	push	ar6
      002312 C0 05            [24]  933 	push	ar5
      002314 12 2E 32         [24]  934 	lcall	_putchar
      002317 D0 05            [24]  935 	pop	ar5
      002319 D0 06            [24]  936 	pop	ar6
      00231B D0 07            [24]  937 	pop	ar7
      00231D 0D               [12]  938 	inc	r5
                                    939 ;	life.c:122: printstr("\r\n");
      00231E BD 00 DB         [24]  940 	cjne	r5,#0x00,00136$
      002321 0E               [12]  941 	inc	r6
      002322 80 D8            [24]  942 	sjmp	00136$
      002324                        943 00121$:
                                    944 ;	life.c:118: for (x = 0; x < W; x++) {
      002324 78 34            [12]  945 	mov	r0,#_x
      002326 06               [12]  946 	inc	@r0
      002327 B6 00 02         [24]  947 	cjne	@r0,#0x00,00233$
      00232A 08               [12]  948 	inc	r0
      00232B 06               [12]  949 	inc	@r0
      00232C                        950 00233$:
      00232C 78 34            [12]  951 	mov	r0,#_x
      00232E C3               [12]  952 	clr	c
      00232F E6               [12]  953 	mov	a,@r0
      002330 94 30            [12]  954 	subb	a,#0x30
      002332 08               [12]  955 	inc	r0
      002333 E6               [12]  956 	mov	a,@r0
      002334 64 80            [12]  957 	xrl	a,#0x80
      002336 94 80            [12]  958 	subb	a,#0x80
      002338 50 03            [24]  959 	jnc	00234$
      00233A 02 22 9D         [24]  960 	ljmp	00138$
      00233D                        961 00234$:
                                    962 ;	life.c:125: printstr("\033[?25h");
      00233D 7D 60            [12]  963 	mov	r5,#___str_3
      00233F 7E 31            [12]  964 	mov	r6,#(___str_3 >> 8)
      002341 7F 80            [12]  965 	mov	r7,#0x80
                                    966 ;	life.c:35: return;
      002343                        967 00141$:
                                    968 ;	life.c:33: for (; *s; s++) putchar(*s);
      002343 8D 82            [24]  969 	mov	dpl,r5
      002345 8E 83            [24]  970 	mov	dph,r6
      002347 8F F0            [24]  971 	mov	b,r7
      002349 12 30 25         [24]  972 	lcall	__gptrget
      00234C FC               [12]  973 	mov	r4,a
      00234D 60 1C            [24]  974 	jz	00123$
      00234F 7B 00            [12]  975 	mov	r3,#0x00
      002351 8C 82            [24]  976 	mov	dpl,r4
      002353 8B 83            [24]  977 	mov	dph,r3
      002355 C0 07            [24]  978 	push	ar7
      002357 C0 06            [24]  979 	push	ar6
      002359 C0 05            [24]  980 	push	ar5
      00235B 12 2E 32         [24]  981 	lcall	_putchar
      00235E D0 05            [24]  982 	pop	ar5
      002360 D0 06            [24]  983 	pop	ar6
      002362 D0 07            [24]  984 	pop	ar7
      002364 0D               [12]  985 	inc	r5
                                    986 ;	life.c:125: printstr("\033[?25h");
      002365 BD 00 DB         [24]  987 	cjne	r5,#0x00,00141$
      002368 0E               [12]  988 	inc	r6
      002369 80 D8            [24]  989 	sjmp	00141$
      00236B                        990 00123$:
                                    991 ;	life.c:127: return;
                                    992 ;	life.c:128: }
      00236B 22               [24]  993 	ret
                                    994 ;------------------------------------------------------------
                                    995 ;Allocation info for local variables in function 'main'
                                    996 ;------------------------------------------------------------
                                    997 ;__1310720027              Allocated to registers 
                                    998 ;s                         Allocated to registers r5 r6 r7 
                                    999 ;__2621440029              Allocated to registers 
                                   1000 ;s                         Allocated to registers r5 r6 r7 
                                   1001 ;__1310720017              Allocated to registers 
                                   1002 ;s                         Allocated to registers r5 r6 r7 
                                   1003 ;__1310720019              Allocated to registers r6 r7 
                                   1004 ;a                         Allocated to registers r4 r5 
                                   1005 ;__1310720021              Allocated to registers 
                                   1006 ;s                         Allocated to registers r5 r6 r7 
                                   1007 ;__1310720023              Allocated to registers 
                                   1008 ;s                         Allocated to registers r5 r6 r7 
                                   1009 ;__1310720025              Allocated to registers 
                                   1010 ;s                         Allocated to registers r5 r6 r7 
                                   1011 ;__2621440034              Allocated to registers 
                                   1012 ;s                         Allocated to registers r5 r6 r7 
                                   1013 ;__4587520038              Allocated to registers 
                                   1014 ;s                         Allocated to registers r5 r6 r7 
                                   1015 ;__4587520040              Allocated to registers 
                                   1016 ;s                         Allocated to registers r5 r6 r7 
                                   1017 ;__4587520042              Allocated to registers 
                                   1018 ;s                         Allocated to registers r5 r6 r7 
                                   1019 ;__3276800044              Allocated to registers 
                                   1020 ;s                         Allocated to registers r5 r6 r7 
                                   1021 ;__1310720046              Allocated to registers 
                                   1022 ;s                         Allocated to registers r5 r6 r7 
                                   1023 ;sloc0                     Allocated to stack - _bp +1
                                   1024 ;sloc1                     Allocated to stack - _bp +2
                                   1025 ;sloc2                     Allocated to stack - _bp +4
                                   1026 ;sloc3                     Allocated to stack - _bp +6
                                   1027 ;sloc4                     Allocated to stack - _bp +8
                                   1028 ;sloc5                     Allocated to stack - _bp +10
                                   1029 ;sloc6                     Allocated to stack - _bp +12
                                   1030 ;------------------------------------------------------------
                                   1031 ;	life.c:236: void main(void) {
                                   1032 ;	-----------------------------------------
                                   1033 ;	 function main
                                   1034 ;	-----------------------------------------
      00236C                       1035 _main:
      00236C C0 10            [24] 1036 	push	_bp
      00236E E5 81            [12] 1037 	mov	a,sp
      002370 F5 10            [12] 1038 	mov	_bp,a
      002372 24 0D            [12] 1039 	add	a,#0x0d
      002374 F5 81            [12] 1040 	mov	sp,a
                                   1041 ;	life.c:237: IT0 = 1;
                                   1042 ;	assignBit
      002376 D2 88            [12] 1043 	setb	_IT0
                                   1044 ;	life.c:238: IT1 = 1;
                                   1045 ;	assignBit
      002378 D2 8A            [12] 1046 	setb	_IT1
                                   1047 ;	life.c:239: EX0 = 1;
                                   1048 ;	assignBit
      00237A D2 A8            [12] 1049 	setb	_EX0
                                   1050 ;	life.c:240: EX1 = 1;
                                   1051 ;	assignBit
      00237C D2 AA            [12] 1052 	setb	_EX1
                                   1053 ;	life.c:241: EA = 1;	
                                   1054 ;	assignBit
      00237E D2 AF            [12] 1055 	setb	_EA
                                   1056 ;	life.c:242: P1_7 = 1;
                                   1057 ;	assignBit
      002380 D2 97            [12] 1058 	setb	_P1_7
                                   1059 ;	life.c:247: __endasm;
      002382 00               [12] 1060 	nop
      002383 00               [12] 1061 	nop
      002384 00               [12] 1062 	nop
                                   1063 ;	life.c:249: srand(RND);
      002385 90 80 00         [24] 1064 	mov	dptr,#_RND
      002388 E0               [24] 1065 	movx	a,@dptr
      002389 FE               [12] 1066 	mov	r6,a
      00238A A3               [24] 1067 	inc	dptr
      00238B E0               [24] 1068 	movx	a,@dptr
      00238C FF               [12] 1069 	mov	r7,a
      00238D 8E 82            [24] 1070 	mov	dpl,r6
      00238F 8F 83            [24] 1071 	mov	dph,r7
      002391 12 2E 19         [24] 1072 	lcall	_srand
                                   1073 ;	life.c:251: OE76 = OE76_0;
      002394 78 33            [12] 1074 	mov	r0,#_OE76
      002396 76 3F            [12] 1075 	mov	@r0,#0x3f
                                   1076 ;	life.c:252: flashOE();
      002398 12 20 CD         [24] 1077 	lcall	_flashOE
                                   1078 ;	life.c:254: printstr("\033[?25h\033[m");
      00239B 7D 81            [12] 1079 	mov	r5,#___str_7
      00239D 7E 31            [12] 1080 	mov	r6,#(___str_7 >> 8)
      00239F 7F 80            [12] 1081 	mov	r7,#0x80
                                   1082 ;	life.c:35: return;
      0023A1                       1083 00238$:
                                   1084 ;	life.c:33: for (; *s; s++) putchar(*s);
      0023A1 8D 82            [24] 1085 	mov	dpl,r5
      0023A3 8E 83            [24] 1086 	mov	dph,r6
      0023A5 8F F0            [24] 1087 	mov	b,r7
      0023A7 12 30 25         [24] 1088 	lcall	__gptrget
      0023AA FC               [12] 1089 	mov	r4,a
      0023AB 60 1C            [24] 1090 	jz	00151$
      0023AD 7B 00            [12] 1091 	mov	r3,#0x00
      0023AF 8C 82            [24] 1092 	mov	dpl,r4
      0023B1 8B 83            [24] 1093 	mov	dph,r3
      0023B3 C0 07            [24] 1094 	push	ar7
      0023B5 C0 06            [24] 1095 	push	ar6
      0023B7 C0 05            [24] 1096 	push	ar5
      0023B9 12 2E 32         [24] 1097 	lcall	_putchar
      0023BC D0 05            [24] 1098 	pop	ar5
      0023BE D0 06            [24] 1099 	pop	ar6
      0023C0 D0 07            [24] 1100 	pop	ar7
      0023C2 0D               [12] 1101 	inc	r5
                                   1102 ;	life.c:254: printstr("\033[?25h\033[m");
      0023C3 BD 00 DB         [24] 1103 	cjne	r5,#0x00,00238$
      0023C6 0E               [12] 1104 	inc	r6
      0023C7 80 D8            [24] 1105 	sjmp	00238$
      0023C9                       1106 00151$:
                                   1107 ;	life.c:256: for (i0 = 0; !i0; ) {	
      0023C9 78 31            [12] 1108 	mov	r0,#_i0
      0023CB 76 00            [12] 1109 	mov	@r0,#0x00
      0023CD                       1110 00285$:
                                   1111 ;	life.c:257: printstr("LIFE INIT T L R P\r\n");
      0023CD 7D 8B            [12] 1112 	mov	r5,#___str_8
      0023CF 7E 31            [12] 1113 	mov	r6,#(___str_8 >> 8)
      0023D1 7F 80            [12] 1114 	mov	r7,#0x80
                                   1115 ;	life.c:35: return;
      0023D3                       1116 00241$:
                                   1117 ;	life.c:33: for (; *s; s++) putchar(*s);
      0023D3 8D 82            [24] 1118 	mov	dpl,r5
      0023D5 8E 83            [24] 1119 	mov	dph,r6
      0023D7 8F F0            [24] 1120 	mov	b,r7
      0023D9 12 30 25         [24] 1121 	lcall	__gptrget
      0023DC FC               [12] 1122 	mov	r4,a
      0023DD 60 1C            [24] 1123 	jz	00110$
      0023DF 7B 00            [12] 1124 	mov	r3,#0x00
      0023E1 8C 82            [24] 1125 	mov	dpl,r4
      0023E3 8B 83            [24] 1126 	mov	dph,r3
      0023E5 C0 07            [24] 1127 	push	ar7
      0023E7 C0 06            [24] 1128 	push	ar6
      0023E9 C0 05            [24] 1129 	push	ar5
      0023EB 12 2E 32         [24] 1130 	lcall	_putchar
      0023EE D0 05            [24] 1131 	pop	ar5
      0023F0 D0 06            [24] 1132 	pop	ar6
      0023F2 D0 07            [24] 1133 	pop	ar7
      0023F4 0D               [12] 1134 	inc	r5
                                   1135 ;	life.c:258: while (1) {
      0023F5 BD 00 DB         [24] 1136 	cjne	r5,#0x00,00241$
      0023F8 0E               [12] 1137 	inc	r6
      0023F9 80 D8            [24] 1138 	sjmp	00241$
      0023FB                       1139 00110$:
                                   1140 ;	life.c:259: c = toupper(getchar());
      0023FB 12 2E 3C         [24] 1141 	lcall	_getchar
      0023FE 12 2F FE         [24] 1142 	lcall	_toupper
      002401 AE 82            [24] 1143 	mov	r6,dpl
      002403 AF 83            [24] 1144 	mov	r7,dph
      002405 78 3A            [12] 1145 	mov	r0,#_c
      002407 A6 06            [24] 1146 	mov	@r0,ar6
      002409 08               [12] 1147 	inc	r0
      00240A A6 07            [24] 1148 	mov	@r0,ar7
                                   1149 ;	life.c:260: if (i0 || (c == (int)'T')) goto term;
      00240C 78 31            [12] 1150 	mov	r0,#_i0
      00240E E6               [12] 1151 	mov	a,@r0
      00240F 60 03            [24] 1152 	jz	00578$
      002411 02 2D 19         [24] 1153 	ljmp	00149$
      002414                       1154 00578$:
      002414 BE 54 06         [24] 1155 	cjne	r6,#0x54,00579$
      002417 BF 00 03         [24] 1156 	cjne	r7,#0x00,00579$
      00241A 02 2D 19         [24] 1157 	ljmp	00149$
      00241D                       1158 00579$:
                                   1159 ;	life.c:261: else if ((c == (int)'L') || (c == (int)'R') || (c == (int)'P')) break;
      00241D BE 4C 05         [24] 1160 	cjne	r6,#0x4c,00580$
      002420 BF 00 02         [24] 1161 	cjne	r7,#0x00,00580$
      002423 80 0E            [24] 1162 	sjmp	00332$
      002425                       1163 00580$:
      002425 BE 52 05         [24] 1164 	cjne	r6,#0x52,00581$
      002428 BF 00 02         [24] 1165 	cjne	r7,#0x00,00581$
      00242B 80 06            [24] 1166 	sjmp	00332$
      00242D                       1167 00581$:
      00242D BE 50 CB         [24] 1168 	cjne	r6,#0x50,00110$
      002430 BF 00 C8         [24] 1169 	cjne	r7,#0x00,00110$
                                   1170 ;	life.c:264: reload:
      002433                       1171 00332$:
      002433                       1172 00112$:
                                   1173 ;	life.c:131: memset(u, 0, sizeof (u));
      002433 E4               [12] 1174 	clr	a
      002434 C0 E0            [24] 1175 	push	acc
      002436 74 24            [12] 1176 	mov	a,#0x24
      002438 C0 E0            [24] 1177 	push	acc
      00243A E4               [12] 1178 	clr	a
      00243B C0 E0            [24] 1179 	push	acc
      00243D 90 88 00         [24] 1180 	mov	dptr,#_u
      002440 75 F0 00         [24] 1181 	mov	b,#0x00
      002443 12 2F 94         [24] 1182 	lcall	_memset
      002446 15 81            [12] 1183 	dec	sp
      002448 15 81            [12] 1184 	dec	sp
      00244A 15 81            [12] 1185 	dec	sp
                                   1186 ;	life.c:132: memset(pu, 0, sizeof (pu));
      00244C E4               [12] 1187 	clr	a
      00244D C0 E0            [24] 1188 	push	acc
      00244F 74 24            [12] 1189 	mov	a,#0x24
      002451 C0 E0            [24] 1190 	push	acc
      002453 E4               [12] 1191 	clr	a
      002454 C0 E0            [24] 1192 	push	acc
      002456 90 64 00         [24] 1193 	mov	dptr,#_pu
      002459 75 F0 00         [24] 1194 	mov	b,#0x00
      00245C 12 2F 94         [24] 1195 	lcall	_memset
      00245F 15 81            [12] 1196 	dec	sp
      002461 15 81            [12] 1197 	dec	sp
      002463 15 81            [12] 1198 	dec	sp
                                   1199 ;	life.c:266: if (c == (int)'L') loadiu();
      002465 78 3A            [12] 1200 	mov	r0,#_c
      002467 B6 4C 06         [24] 1201 	cjne	@r0,#0x4c,00584$
      00246A 08               [12] 1202 	inc	r0
      00246B B6 00 02         [24] 1203 	cjne	@r0,#0x00,00584$
      00246E 80 03            [24] 1204 	sjmp	00585$
      002470                       1205 00584$:
      002470 02 26 1B         [24] 1206 	ljmp	00116$
      002473                       1207 00585$:
                                   1208 ;	life.c:138: j = 0;
      002473 78 38            [12] 1209 	mov	r0,#_j
      002475 E4               [12] 1210 	clr	a
      002476 F6               [12] 1211 	mov	@r0,a
      002477 08               [12] 1212 	inc	r0
      002478 F6               [12] 1213 	mov	@r0,a
                                   1214 ;	life.c:140: printstr("LOAD 0 1 ~ # <");
      002479 7D 67            [12] 1215 	mov	r5,#___str_4
      00247B 7E 31            [12] 1216 	mov	r6,#(___str_4 >> 8)
      00247D 7F 80            [12] 1217 	mov	r7,#0x80
                                   1218 ;	life.c:35: return;
      00247F                       1219 00244$:
                                   1220 ;	life.c:33: for (; *s; s++) putchar(*s);
      00247F 8D 82            [24] 1221 	mov	dpl,r5
      002481 8E 83            [24] 1222 	mov	dph,r6
      002483 8F F0            [24] 1223 	mov	b,r7
      002485 12 30 25         [24] 1224 	lcall	__gptrget
      002488 FC               [12] 1225 	mov	r4,a
      002489 60 1C            [24] 1226 	jz	00156$
      00248B 7B 00            [12] 1227 	mov	r3,#0x00
      00248D 8C 82            [24] 1228 	mov	dpl,r4
      00248F 8B 83            [24] 1229 	mov	dph,r3
      002491 C0 07            [24] 1230 	push	ar7
      002493 C0 06            [24] 1231 	push	ar6
      002495 C0 05            [24] 1232 	push	ar5
      002497 12 2E 32         [24] 1233 	lcall	_putchar
      00249A D0 05            [24] 1234 	pop	ar5
      00249C D0 06            [24] 1235 	pop	ar6
      00249E D0 07            [24] 1236 	pop	ar7
      0024A0 0D               [12] 1237 	inc	r5
                                   1238 ;	life.c:140: printstr("LOAD 0 1 ~ # <");
      0024A1 BD 00 DB         [24] 1239 	cjne	r5,#0x00,00244$
      0024A4 0E               [12] 1240 	inc	r6
      0024A5 80 D8            [24] 1241 	sjmp	00244$
      0024A7                       1242 00156$:
                                   1243 ;	life.c:142: for (y = 0; y < (H * W); y += W) {
      0024A7 78 36            [12] 1244 	mov	r0,#_y
      0024A9 E4               [12] 1245 	clr	a
      0024AA F6               [12] 1246 	mov	@r0,a
      0024AB 08               [12] 1247 	inc	r0
      0024AC F6               [12] 1248 	mov	@r0,a
      0024AD                       1249 00247$:
                                   1250 ;	life.c:143: for (x = 0; x < W; x++) {
      0024AD 78 34            [12] 1251 	mov	r0,#_x
      0024AF E4               [12] 1252 	clr	a
      0024B0 F6               [12] 1253 	mov	@r0,a
      0024B1 08               [12] 1254 	inc	r0
      0024B2 F6               [12] 1255 	mov	@r0,a
                                   1256 ;	life.c:144: while (1) {
      0024B3                       1257 00169$:
                                   1258 ;	life.c:145: c = getchar();
      0024B3 12 2E 3C         [24] 1259 	lcall	_getchar
      0024B6 AE 82            [24] 1260 	mov	r6,dpl
      0024B8 AF 83            [24] 1261 	mov	r7,dph
      0024BA 78 3A            [12] 1262 	mov	r0,#_c
      0024BC A6 06            [24] 1263 	mov	@r0,ar6
      0024BE 08               [12] 1264 	inc	r0
      0024BF A6 07            [24] 1265 	mov	@r0,ar7
                                   1266 ;	life.c:146: if (c == (int)'0') {
      0024C1 BE 30 25         [24] 1267 	cjne	r6,#0x30,00167$
      0024C4 BF 00 22         [24] 1268 	cjne	r7,#0x00,00167$
                                   1269 ;	life.c:147: iu[y + x] = 0;
      0024C7 78 36            [12] 1270 	mov	r0,#_y
      0024C9 79 34            [12] 1271 	mov	r1,#_x
      0024CB E7               [12] 1272 	mov	a,@r1
      0024CC 26               [12] 1273 	add	a,@r0
      0024CD FC               [12] 1274 	mov	r4,a
      0024CE 09               [12] 1275 	inc	r1
      0024CF E7               [12] 1276 	mov	a,@r1
      0024D0 08               [12] 1277 	inc	r0
      0024D1 36               [12] 1278 	addc	a,@r0
      0024D2 FD               [12] 1279 	mov	r5,a
      0024D3 EC               [12] 1280 	mov	a,r4
      0024D4 24 00            [12] 1281 	add	a,#_iu
      0024D6 F5 82            [12] 1282 	mov	dpl,a
      0024D8 ED               [12] 1283 	mov	a,r5
      0024D9 34 40            [12] 1284 	addc	a,#(_iu >> 8)
      0024DB F5 83            [12] 1285 	mov	dph,a
      0024DD E4               [12] 1286 	clr	a
      0024DE F0               [24] 1287 	movx	@dptr,a
                                   1288 ;	life.c:148: j++;
      0024DF 78 38            [12] 1289 	mov	r0,#_j
      0024E1 06               [12] 1290 	inc	@r0
      0024E2 B6 00 02         [24] 1291 	cjne	@r0,#0x00,00590$
      0024E5 08               [12] 1292 	inc	r0
      0024E6 06               [12] 1293 	inc	@r0
      0024E7                       1294 00590$:
                                   1295 ;	life.c:149: break;
      0024E7 80 39            [24] 1296 	sjmp	00172$
      0024E9                       1297 00167$:
                                   1298 ;	life.c:150: } else if (c == (int)'1') {
      0024E9 BE 31 26         [24] 1299 	cjne	r6,#0x31,00165$
      0024EC BF 00 23         [24] 1300 	cjne	r7,#0x00,00165$
                                   1301 ;	life.c:151: iu[y + x] = 1;
      0024EF 78 36            [12] 1302 	mov	r0,#_y
      0024F1 79 34            [12] 1303 	mov	r1,#_x
      0024F3 E7               [12] 1304 	mov	a,@r1
      0024F4 26               [12] 1305 	add	a,@r0
      0024F5 FC               [12] 1306 	mov	r4,a
      0024F6 09               [12] 1307 	inc	r1
      0024F7 E7               [12] 1308 	mov	a,@r1
      0024F8 08               [12] 1309 	inc	r0
      0024F9 36               [12] 1310 	addc	a,@r0
      0024FA FD               [12] 1311 	mov	r5,a
      0024FB EC               [12] 1312 	mov	a,r4
      0024FC 24 00            [12] 1313 	add	a,#_iu
      0024FE F5 82            [12] 1314 	mov	dpl,a
      002500 ED               [12] 1315 	mov	a,r5
      002501 34 40            [12] 1316 	addc	a,#(_iu >> 8)
      002503 F5 83            [12] 1317 	mov	dph,a
      002505 74 01            [12] 1318 	mov	a,#0x01
      002507 F0               [24] 1319 	movx	@dptr,a
                                   1320 ;	life.c:152: j++;
      002508 78 38            [12] 1321 	mov	r0,#_j
      00250A 06               [12] 1322 	inc	@r0
      00250B B6 00 02         [24] 1323 	cjne	@r0,#0x00,00593$
      00250E 08               [12] 1324 	inc	r0
      00250F 06               [12] 1325 	inc	@r0
      002510                       1326 00593$:
                                   1327 ;	life.c:153: break;
      002510 80 10            [24] 1328 	sjmp	00172$
      002512                       1329 00165$:
                                   1330 ;	life.c:154: } else if (c == (int)'~') goto br_inner;
      002512 BE 7E 05         [24] 1331 	cjne	r6,#0x7e,00594$
      002515 BF 00 02         [24] 1332 	cjne	r7,#0x00,00594$
      002518 80 21            [24] 1333 	sjmp	00248$
      00251A                       1334 00594$:
                                   1335 ;	life.c:155: else if (c == (int)'#') goto out;
                                   1336 ;	life.c:159: break;
      00251A BE 23 96         [24] 1337 	cjne	r6,#0x23,00169$
      00251D BF 00 93         [24] 1338 	cjne	r7,#0x00,00169$
      002520 80 31            [24] 1339 	sjmp	00182$
      002522                       1340 00172$:
                                   1341 ;	life.c:143: for (x = 0; x < W; x++) {
      002522 78 34            [12] 1342 	mov	r0,#_x
      002524 06               [12] 1343 	inc	@r0
      002525 B6 00 02         [24] 1344 	cjne	@r0,#0x00,00596$
      002528 08               [12] 1345 	inc	r0
      002529 06               [12] 1346 	inc	@r0
      00252A                       1347 00596$:
      00252A 78 34            [12] 1348 	mov	r0,#_x
      00252C C3               [12] 1349 	clr	c
      00252D E6               [12] 1350 	mov	a,@r0
      00252E 94 30            [12] 1351 	subb	a,#0x30
      002530 08               [12] 1352 	inc	r0
      002531 E6               [12] 1353 	mov	a,@r0
      002532 64 80            [12] 1354 	xrl	a,#0x80
      002534 94 80            [12] 1355 	subb	a,#0x80
      002536 50 03            [24] 1356 	jnc	00597$
      002538 02 24 B3         [24] 1357 	ljmp	00169$
      00253B                       1358 00597$:
      00253B                       1359 00248$:
                                   1360 ;	life.c:142: for (y = 0; y < (H * W); y += W) {
      00253B 78 36            [12] 1361 	mov	r0,#_y
      00253D 74 30            [12] 1362 	mov	a,#0x30
      00253F 26               [12] 1363 	add	a,@r0
      002540 F6               [12] 1364 	mov	@r0,a
      002541 E4               [12] 1365 	clr	a
      002542 08               [12] 1366 	inc	r0
      002543 36               [12] 1367 	addc	a,@r0
      002544 F6               [12] 1368 	mov	@r0,a
      002545 78 36            [12] 1369 	mov	r0,#_y
      002547 C3               [12] 1370 	clr	c
      002548 08               [12] 1371 	inc	r0
      002549 E6               [12] 1372 	mov	a,@r0
      00254A 64 80            [12] 1373 	xrl	a,#0x80
      00254C 94 A4            [12] 1374 	subb	a,#0xa4
      00254E 50 03            [24] 1375 	jnc	00598$
      002550 02 24 AD         [24] 1376 	ljmp	00247$
      002553                       1377 00598$:
                                   1378 ;	life.c:163: out:
      002553                       1379 00182$:
                                   1380 ;	life.c:164: if (c != (int)'#')
      002553 BE 23 05         [24] 1381 	cjne	r6,#0x23,00599$
      002556 BF 00 02         [24] 1382 	cjne	r7,#0x00,00599$
      002559 80 14            [24] 1383 	sjmp	00181$
      00255B                       1384 00599$:
                                   1385 ;	life.c:165: while (1) {
      00255B                       1386 00178$:
                                   1387 ;	life.c:166: c = getchar();
      00255B 12 2E 3C         [24] 1388 	lcall	_getchar
      00255E AE 82            [24] 1389 	mov	r6,dpl
      002560 AF 83            [24] 1390 	mov	r7,dph
      002562 78 3A            [12] 1391 	mov	r0,#_c
      002564 A6 06            [24] 1392 	mov	@r0,ar6
      002566 08               [12] 1393 	inc	r0
      002567 A6 07            [24] 1394 	mov	@r0,ar7
                                   1395 ;	life.c:167: if (c == (int)'#') break;
      002569 BE 23 EF         [24] 1396 	cjne	r6,#0x23,00178$
      00256C BF 00 EC         [24] 1397 	cjne	r7,#0x00,00178$
      00256F                       1398 00181$:
                                   1399 ;	life.c:169: print16x(j);
      00256F 78 38            [12] 1400 	mov	r0,#_j
      002571 86 06            [24] 1401 	mov	ar6,@r0
      002573 08               [12] 1402 	inc	r0
      002574 86 07            [24] 1403 	mov	ar7,@r0
      002576 8E 04            [24] 1404 	mov	ar4,r6
                                   1405 ;	life.c:24: putchar(digits[(a >> 12) & 0xf]);
      002578 EF               [12] 1406 	mov	a,r7
      002579 FD               [12] 1407 	mov	r5,a
      00257A C4               [12] 1408 	swap	a
      00257B 54 0F            [12] 1409 	anl	a,#(0x0f&0x0f)
      00257D 24 21            [12] 1410 	add	a,#_digits
      00257F F9               [12] 1411 	mov	r1,a
      002580 87 07            [24] 1412 	mov	ar7,@r1
      002582 7E 00            [12] 1413 	mov	r6,#0x00
      002584 8F 82            [24] 1414 	mov	dpl,r7
      002586 8E 83            [24] 1415 	mov	dph,r6
      002588 C0 05            [24] 1416 	push	ar5
      00258A C0 04            [24] 1417 	push	ar4
      00258C 12 2E 32         [24] 1418 	lcall	_putchar
      00258F D0 04            [24] 1419 	pop	ar4
      002591 D0 05            [24] 1420 	pop	ar5
                                   1421 ;	life.c:25: putchar(digits[(a >> 8) & 0xf]);
      002593 8D 07            [24] 1422 	mov	ar7,r5
      002595 53 07 0F         [24] 1423 	anl	ar7,#0x0f
      002598 EF               [12] 1424 	mov	a,r7
      002599 24 21            [12] 1425 	add	a,#_digits
      00259B F9               [12] 1426 	mov	r1,a
      00259C 87 07            [24] 1427 	mov	ar7,@r1
      00259E 7E 00            [12] 1428 	mov	r6,#0x00
      0025A0 8F 82            [24] 1429 	mov	dpl,r7
      0025A2 8E 83            [24] 1430 	mov	dph,r6
      0025A4 C0 05            [24] 1431 	push	ar5
      0025A6 C0 04            [24] 1432 	push	ar4
      0025A8 12 2E 32         [24] 1433 	lcall	_putchar
      0025AB D0 04            [24] 1434 	pop	ar4
      0025AD D0 05            [24] 1435 	pop	ar5
                                   1436 ;	life.c:26: putchar(digits[(a >> 4) & 0xf]);
      0025AF 8C 06            [24] 1437 	mov	ar6,r4
      0025B1 ED               [12] 1438 	mov	a,r5
      0025B2 C4               [12] 1439 	swap	a
      0025B3 CE               [12] 1440 	xch	a,r6
      0025B4 C4               [12] 1441 	swap	a
      0025B5 54 0F            [12] 1442 	anl	a,#0x0f
      0025B7 6E               [12] 1443 	xrl	a,r6
      0025B8 CE               [12] 1444 	xch	a,r6
      0025B9 54 0F            [12] 1445 	anl	a,#0x0f
      0025BB CE               [12] 1446 	xch	a,r6
      0025BC 6E               [12] 1447 	xrl	a,r6
      0025BD CE               [12] 1448 	xch	a,r6
      0025BE 53 06 0F         [24] 1449 	anl	ar6,#0x0f
      0025C1 EE               [12] 1450 	mov	a,r6
      0025C2 24 21            [12] 1451 	add	a,#_digits
      0025C4 F9               [12] 1452 	mov	r1,a
      0025C5 87 07            [24] 1453 	mov	ar7,@r1
      0025C7 7E 00            [12] 1454 	mov	r6,#0x00
      0025C9 8F 82            [24] 1455 	mov	dpl,r7
      0025CB 8E 83            [24] 1456 	mov	dph,r6
      0025CD C0 05            [24] 1457 	push	ar5
      0025CF C0 04            [24] 1458 	push	ar4
      0025D1 12 2E 32         [24] 1459 	lcall	_putchar
      0025D4 D0 04            [24] 1460 	pop	ar4
      0025D6 D0 05            [24] 1461 	pop	ar5
                                   1462 ;	life.c:27: putchar(digits[a & 0xf]);
      0025D8 53 04 0F         [24] 1463 	anl	ar4,#0x0f
      0025DB EC               [12] 1464 	mov	a,r4
      0025DC 24 21            [12] 1465 	add	a,#_digits
      0025DE F9               [12] 1466 	mov	r1,a
      0025DF 87 07            [24] 1467 	mov	ar7,@r1
      0025E1 7E 00            [12] 1468 	mov	r6,#0x00
      0025E3 8F 82            [24] 1469 	mov	dpl,r7
      0025E5 8E 83            [24] 1470 	mov	dph,r6
      0025E7 12 2E 32         [24] 1471 	lcall	_putchar
                                   1472 ;	life.c:170: printstr(">\r\n");
      0025EA 7D 76            [12] 1473 	mov	r5,#___str_5
      0025EC 7E 31            [12] 1474 	mov	r6,#(___str_5 >> 8)
      0025EE 7F 80            [12] 1475 	mov	r7,#0x80
                                   1476 ;	life.c:35: return;
      0025F0                       1477 00250$:
                                   1478 ;	life.c:33: for (; *s; s++) putchar(*s);
      0025F0 8D 82            [24] 1479 	mov	dpl,r5
      0025F2 8E 83            [24] 1480 	mov	dph,r6
      0025F4 8F F0            [24] 1481 	mov	b,r7
      0025F6 12 30 25         [24] 1482 	lcall	__gptrget
      0025F9 FC               [12] 1483 	mov	r4,a
      0025FA 70 03            [24] 1484 	jnz	00602$
      0025FC 02 26 EC         [24] 1485 	ljmp	00117$
      0025FF                       1486 00602$:
      0025FF 7B 00            [12] 1487 	mov	r3,#0x00
      002601 8C 82            [24] 1488 	mov	dpl,r4
      002603 8B 83            [24] 1489 	mov	dph,r3
      002605 C0 07            [24] 1490 	push	ar7
      002607 C0 06            [24] 1491 	push	ar6
      002609 C0 05            [24] 1492 	push	ar5
      00260B 12 2E 32         [24] 1493 	lcall	_putchar
      00260E D0 05            [24] 1494 	pop	ar5
      002610 D0 06            [24] 1495 	pop	ar6
      002612 D0 07            [24] 1496 	pop	ar7
      002614 0D               [12] 1497 	inc	r5
                                   1498 ;	life.c:266: if (c == (int)'L') loadiu();
      002615 BD 00 D8         [24] 1499 	cjne	r5,#0x00,00250$
      002618 0E               [12] 1500 	inc	r6
      002619 80 D5            [24] 1501 	sjmp	00250$
      00261B                       1502 00116$:
                                   1503 ;	life.c:267: else if (c == (int)'R') loadriu();
      00261B 78 3A            [12] 1504 	mov	r0,#_c
      00261D B6 52 06         [24] 1505 	cjne	@r0,#0x52,00604$
      002620 08               [12] 1506 	inc	r0
      002621 B6 00 02         [24] 1507 	cjne	@r0,#0x00,00604$
      002624 80 03            [24] 1508 	sjmp	00605$
      002626                       1509 00604$:
      002626 02 26 EC         [24] 1510 	ljmp	00117$
      002629                       1511 00605$:
                                   1512 ;	life.c:176: j = 0;
      002629 78 38            [12] 1513 	mov	r0,#_j
      00262B E4               [12] 1514 	clr	a
      00262C F6               [12] 1515 	mov	@r0,a
      00262D 08               [12] 1516 	inc	r0
      00262E F6               [12] 1517 	mov	@r0,a
                                   1518 ;	life.c:178: printstr("RANDOM");
      00262F 7D 7A            [12] 1519 	mov	r5,#___str_6
      002631 7E 31            [12] 1520 	mov	r6,#(___str_6 >> 8)
      002633 7F 80            [12] 1521 	mov	r7,#0x80
                                   1522 ;	life.c:35: return;
      002635                       1523 00253$:
                                   1524 ;	life.c:33: for (; *s; s++) putchar(*s);
      002635 8D 82            [24] 1525 	mov	dpl,r5
      002637 8E 83            [24] 1526 	mov	dph,r6
      002639 8F F0            [24] 1527 	mov	b,r7
      00263B 12 30 25         [24] 1528 	lcall	__gptrget
      00263E FC               [12] 1529 	mov	r4,a
      00263F 60 1C            [24] 1530 	jz	00188$
      002641 7B 00            [12] 1531 	mov	r3,#0x00
      002643 8C 82            [24] 1532 	mov	dpl,r4
      002645 8B 83            [24] 1533 	mov	dph,r3
      002647 C0 07            [24] 1534 	push	ar7
      002649 C0 06            [24] 1535 	push	ar6
      00264B C0 05            [24] 1536 	push	ar5
      00264D 12 2E 32         [24] 1537 	lcall	_putchar
      002650 D0 05            [24] 1538 	pop	ar5
      002652 D0 06            [24] 1539 	pop	ar6
      002654 D0 07            [24] 1540 	pop	ar7
      002656 0D               [12] 1541 	inc	r5
                                   1542 ;	life.c:178: printstr("RANDOM");
      002657 BD 00 DB         [24] 1543 	cjne	r5,#0x00,00253$
      00265A 0E               [12] 1544 	inc	r6
      00265B 80 D8            [24] 1545 	sjmp	00253$
      00265D                       1546 00188$:
                                   1547 ;	life.c:180: for (y = 0; y < (H * W); y += W)
      00265D 78 36            [12] 1548 	mov	r0,#_y
      00265F E4               [12] 1549 	clr	a
      002660 F6               [12] 1550 	mov	@r0,a
      002661 08               [12] 1551 	inc	r0
      002662 F6               [12] 1552 	mov	@r0,a
      002663                       1553 00257$:
                                   1554 ;	life.c:181: for (x = 0; x < W; x++)
      002663 78 34            [12] 1555 	mov	r0,#_x
      002665 E4               [12] 1556 	clr	a
      002666 F6               [12] 1557 	mov	@r0,a
      002667 08               [12] 1558 	inc	r0
      002668 F6               [12] 1559 	mov	@r0,a
      002669                       1560 00255$:
                                   1561 ;	life.c:182: iu[y + x] = rand() & 1;
      002669 78 36            [12] 1562 	mov	r0,#_y
      00266B 79 34            [12] 1563 	mov	r1,#_x
      00266D E7               [12] 1564 	mov	a,@r1
      00266E 26               [12] 1565 	add	a,@r0
      00266F FE               [12] 1566 	mov	r6,a
      002670 09               [12] 1567 	inc	r1
      002671 E7               [12] 1568 	mov	a,@r1
      002672 08               [12] 1569 	inc	r0
      002673 36               [12] 1570 	addc	a,@r0
      002674 FF               [12] 1571 	mov	r7,a
      002675 EE               [12] 1572 	mov	a,r6
      002676 24 00            [12] 1573 	add	a,#_iu
      002678 FE               [12] 1574 	mov	r6,a
      002679 EF               [12] 1575 	mov	a,r7
      00267A 34 40            [12] 1576 	addc	a,#(_iu >> 8)
      00267C FF               [12] 1577 	mov	r7,a
      00267D C0 07            [24] 1578 	push	ar7
      00267F C0 06            [24] 1579 	push	ar6
      002681 12 2D 55         [24] 1580 	lcall	_rand
      002684 AC 82            [24] 1581 	mov	r4,dpl
      002686 D0 06            [24] 1582 	pop	ar6
      002688 D0 07            [24] 1583 	pop	ar7
      00268A 53 04 01         [24] 1584 	anl	ar4,#0x01
      00268D 8E 82            [24] 1585 	mov	dpl,r6
      00268F 8F 83            [24] 1586 	mov	dph,r7
      002691 EC               [12] 1587 	mov	a,r4
      002692 F0               [24] 1588 	movx	@dptr,a
                                   1589 ;	life.c:181: for (x = 0; x < W; x++)
      002693 78 34            [12] 1590 	mov	r0,#_x
      002695 06               [12] 1591 	inc	@r0
      002696 B6 00 02         [24] 1592 	cjne	@r0,#0x00,00608$
      002699 08               [12] 1593 	inc	r0
      00269A 06               [12] 1594 	inc	@r0
      00269B                       1595 00608$:
      00269B 78 34            [12] 1596 	mov	r0,#_x
      00269D C3               [12] 1597 	clr	c
      00269E E6               [12] 1598 	mov	a,@r0
      00269F 94 30            [12] 1599 	subb	a,#0x30
      0026A1 08               [12] 1600 	inc	r0
      0026A2 E6               [12] 1601 	mov	a,@r0
      0026A3 64 80            [12] 1602 	xrl	a,#0x80
      0026A5 94 80            [12] 1603 	subb	a,#0x80
      0026A7 40 C0            [24] 1604 	jc	00255$
                                   1605 ;	life.c:180: for (y = 0; y < (H * W); y += W)
      0026A9 78 36            [12] 1606 	mov	r0,#_y
      0026AB 74 30            [12] 1607 	mov	a,#0x30
      0026AD 26               [12] 1608 	add	a,@r0
      0026AE F6               [12] 1609 	mov	@r0,a
      0026AF E4               [12] 1610 	clr	a
      0026B0 08               [12] 1611 	inc	r0
      0026B1 36               [12] 1612 	addc	a,@r0
      0026B2 F6               [12] 1613 	mov	@r0,a
      0026B3 78 36            [12] 1614 	mov	r0,#_y
      0026B5 C3               [12] 1615 	clr	c
      0026B6 08               [12] 1616 	inc	r0
      0026B7 E6               [12] 1617 	mov	a,@r0
      0026B8 64 80            [12] 1618 	xrl	a,#0x80
      0026BA 94 A4            [12] 1619 	subb	a,#0xa4
      0026BC 40 A5            [24] 1620 	jc	00257$
                                   1621 ;	life.c:184: printstr("\r\n");
      0026BE 7D 5D            [12] 1622 	mov	r5,#___str_2
      0026C0 7E 31            [12] 1623 	mov	r6,#(___str_2 >> 8)
      0026C2 7F 80            [12] 1624 	mov	r7,#0x80
                                   1625 ;	life.c:35: return;
      0026C4                       1626 00260$:
                                   1627 ;	life.c:33: for (; *s; s++) putchar(*s);
      0026C4 8D 82            [24] 1628 	mov	dpl,r5
      0026C6 8E 83            [24] 1629 	mov	dph,r6
      0026C8 8F F0            [24] 1630 	mov	b,r7
      0026CA 12 30 25         [24] 1631 	lcall	__gptrget
      0026CD FC               [12] 1632 	mov	r4,a
      0026CE 60 1C            [24] 1633 	jz	00117$
      0026D0 7B 00            [12] 1634 	mov	r3,#0x00
      0026D2 8C 82            [24] 1635 	mov	dpl,r4
      0026D4 8B 83            [24] 1636 	mov	dph,r3
      0026D6 C0 07            [24] 1637 	push	ar7
      0026D8 C0 06            [24] 1638 	push	ar6
      0026DA C0 05            [24] 1639 	push	ar5
      0026DC 12 2E 32         [24] 1640 	lcall	_putchar
      0026DF D0 05            [24] 1641 	pop	ar5
      0026E1 D0 06            [24] 1642 	pop	ar6
      0026E3 D0 07            [24] 1643 	pop	ar7
      0026E5 0D               [12] 1644 	inc	r5
                                   1645 ;	life.c:267: else if (c == (int)'R') loadriu();
      0026E6 BD 00 DB         [24] 1646 	cjne	r5,#0x00,00260$
      0026E9 0E               [12] 1647 	inc	r6
      0026EA 80 D8            [24] 1648 	sjmp	00260$
      0026EC                       1649 00117$:
                                   1650 ;	life.c:268: memcpy(u, iu, sizeof (iu));
      0026EC E4               [12] 1651 	clr	a
      0026ED C0 E0            [24] 1652 	push	acc
      0026EF 74 24            [12] 1653 	mov	a,#0x24
      0026F1 C0 E0            [24] 1654 	push	acc
      0026F3 74 00            [12] 1655 	mov	a,#_iu
      0026F5 C0 E0            [24] 1656 	push	acc
      0026F7 74 40            [12] 1657 	mov	a,#(_iu >> 8)
      0026F9 C0 E0            [24] 1658 	push	acc
      0026FB E4               [12] 1659 	clr	a
      0026FC C0 E0            [24] 1660 	push	acc
      0026FE 90 88 00         [24] 1661 	mov	dptr,#_u
      002701 75 F0 00         [24] 1662 	mov	b,#0x00
      002704 12 2F 01         [24] 1663 	lcall	___memcpy
      002707 E5 81            [12] 1664 	mov	a,sp
      002709 24 FB            [12] 1665 	add	a,#0xfb
      00270B F5 81            [12] 1666 	mov	sp,a
                                   1667 ;	life.c:269: show(0);
      00270D 75 82 00         [24] 1668 	mov	dpl,#0x00
      002710 12 20 DF         [24] 1669 	lcall	_show
                                   1670 ;	life.c:271: printstr("READY T L R P S\r\n");
      002713 7D 9F            [12] 1671 	mov	r5,#___str_9
      002715 7E 31            [12] 1672 	mov	r6,#(___str_9 >> 8)
      002717 7F 80            [12] 1673 	mov	r7,#0x80
                                   1674 ;	life.c:35: return;
      002719                       1675 00263$:
                                   1676 ;	life.c:33: for (; *s; s++) putchar(*s);
      002719 8D 82            [24] 1677 	mov	dpl,r5
      00271B 8E 83            [24] 1678 	mov	dph,r6
      00271D 8F F0            [24] 1679 	mov	b,r7
      00271F 12 30 25         [24] 1680 	lcall	__gptrget
      002722 FC               [12] 1681 	mov	r4,a
      002723 60 1C            [24] 1682 	jz	00130$
      002725 7B 00            [12] 1683 	mov	r3,#0x00
      002727 8C 82            [24] 1684 	mov	dpl,r4
      002729 8B 83            [24] 1685 	mov	dph,r3
      00272B C0 07            [24] 1686 	push	ar7
      00272D C0 06            [24] 1687 	push	ar6
      00272F C0 05            [24] 1688 	push	ar5
      002731 12 2E 32         [24] 1689 	lcall	_putchar
      002734 D0 05            [24] 1690 	pop	ar5
      002736 D0 06            [24] 1691 	pop	ar6
      002738 D0 07            [24] 1692 	pop	ar7
      00273A 0D               [12] 1693 	inc	r5
                                   1694 ;	life.c:272: while (1) {
      00273B BD 00 DB         [24] 1695 	cjne	r5,#0x00,00263$
      00273E 0E               [12] 1696 	inc	r6
      00273F 80 D8            [24] 1697 	sjmp	00263$
      002741                       1698 00130$:
                                   1699 ;	life.c:273: c = toupper(getchar());
      002741 12 2E 3C         [24] 1700 	lcall	_getchar
      002744 12 2F FE         [24] 1701 	lcall	_toupper
      002747 AE 82            [24] 1702 	mov	r6,dpl
      002749 AF 83            [24] 1703 	mov	r7,dph
      00274B 78 3A            [12] 1704 	mov	r0,#_c
      00274D A6 06            [24] 1705 	mov	@r0,ar6
      00274F 08               [12] 1706 	inc	r0
      002750 A6 07            [24] 1707 	mov	@r0,ar7
                                   1708 ;	life.c:274: if (i0 || (c == (int)'T')) goto term;
      002752 78 31            [12] 1709 	mov	r0,#_i0
      002754 E6               [12] 1710 	mov	a,@r0
      002755 60 03            [24] 1711 	jz	00615$
      002757 02 2D 19         [24] 1712 	ljmp	00149$
      00275A                       1713 00615$:
      00275A BE 54 06         [24] 1714 	cjne	r6,#0x54,00616$
      00275D BF 00 03         [24] 1715 	cjne	r7,#0x00,00616$
      002760 02 2D 19         [24] 1716 	ljmp	00149$
      002763                       1717 00616$:
                                   1718 ;	life.c:275: else if ((c == (int)'L') || (c == (int)'R') || (c == (int)'P')) goto reload;
      002763 BE 4C 06         [24] 1719 	cjne	r6,#0x4c,00617$
      002766 BF 00 03         [24] 1720 	cjne	r7,#0x00,00617$
      002769 02 24 33         [24] 1721 	ljmp	00112$
      00276C                       1722 00617$:
      00276C BE 52 06         [24] 1723 	cjne	r6,#0x52,00618$
      00276F BF 00 03         [24] 1724 	cjne	r7,#0x00,00618$
      002772 02 24 33         [24] 1725 	ljmp	00112$
      002775                       1726 00618$:
      002775 BE 50 06         [24] 1727 	cjne	r6,#0x50,00619$
      002778 BF 00 03         [24] 1728 	cjne	r7,#0x00,00619$
      00277B 02 24 33         [24] 1729 	ljmp	00112$
      00277E                       1730 00619$:
                                   1731 ;	life.c:276: else if (c == (int)'S') break;
      00277E BE 53 C0         [24] 1732 	cjne	r6,#0x53,00130$
      002781 BF 00 BD         [24] 1733 	cjne	r7,#0x00,00130$
                                   1734 ;	life.c:88: generation[0] = 0u;
      002784 78 43            [12] 1735 	mov	r0,#_generation
      002786 76 00            [12] 1736 	mov	@r0,#0x00
      002788 08               [12] 1737 	inc	r0
      002789 76 00            [12] 1738 	mov	@r0,#0x00
                                   1739 ;	life.c:89: generation[1] = 0u;
      00278B 78 45            [12] 1740 	mov	r0,#(_generation + 0x0002)
      00278D 76 00            [12] 1741 	mov	@r0,#0x00
      00278F 08               [12] 1742 	inc	r0
      002790 76 00            [12] 1743 	mov	@r0,#0x00
                                   1744 ;	life.c:281: for (i1 = 0; !i0 && !i1; ) {
      002792 78 32            [12] 1745 	mov	r0,#_i1
      002794 76 00            [12] 1746 	mov	@r0,#0x00
      002796                       1747 00280$:
      002796 78 31            [12] 1748 	mov	r0,#_i0
      002798 E6               [12] 1749 	mov	a,@r0
      002799 60 03            [24] 1750 	jz	00622$
      00279B 02 2C DB         [24] 1751 	ljmp	00145$
      00279E                       1752 00622$:
      00279E 78 32            [12] 1753 	mov	r0,#_i1
      0027A0 E6               [12] 1754 	mov	a,@r0
      0027A1 60 03            [24] 1755 	jz	00623$
      0027A3 02 2C DB         [24] 1756 	ljmp	00145$
      0027A6                       1757 00623$:
                                   1758 ;	life.c:282: show(1);
      0027A6 75 82 01         [24] 1759 	mov	dpl,#0x01
      0027A9 12 20 DF         [24] 1760 	lcall	_show
                                   1761 ;	life.c:190: fixed = 0;
      0027AC 78 3D            [12] 1762 	mov	r0,#_fixed
      0027AE 76 00            [12] 1763 	mov	@r0,#0x00
                                   1764 ;	life.c:191: cycle2 = 0;
      0027B0 78 3E            [12] 1765 	mov	r0,#_cycle2
      0027B2 76 00            [12] 1766 	mov	@r0,#0x00
                                   1767 ;	life.c:193: OE76 = OE76_0;
      0027B4 78 33            [12] 1768 	mov	r0,#_OE76
      0027B6 76 3F            [12] 1769 	mov	@r0,#0x3f
                                   1770 ;	life.c:194: flashOE();
      0027B8 12 20 CD         [24] 1771 	lcall	_flashOE
                                   1772 ;	life.c:196: for (y = 0; y < H; y++) {
      0027BB 78 36            [12] 1773 	mov	r0,#_y
      0027BD E4               [12] 1774 	clr	a
      0027BE F6               [12] 1775 	mov	@r0,a
      0027BF 08               [12] 1776 	inc	r0
      0027C0 F6               [12] 1777 	mov	@r0,a
      0027C1                       1778 00267$:
                                   1779 ;	life.c:197: OE76 = OE76_0 | ((y & 0x0003u) << 6);
      0027C1 78 36            [12] 1780 	mov	r0,#_y
      0027C3 86 07            [24] 1781 	mov	ar7,@r0
      0027C5 53 07 03         [24] 1782 	anl	ar7,#0x03
      0027C8 EF               [12] 1783 	mov	a,r7
      0027C9 03               [12] 1784 	rr	a
      0027CA 03               [12] 1785 	rr	a
      0027CB 54 C0            [12] 1786 	anl	a,#0xc0
      0027CD FF               [12] 1787 	mov	r7,a
      0027CE 78 33            [12] 1788 	mov	r0,#_OE76
      0027D0 74 3F            [12] 1789 	mov	a,#0x3f
      0027D2 4F               [12] 1790 	orl	a,r7
      0027D3 F6               [12] 1791 	mov	@r0,a
                                   1792 ;	life.c:198: flashOE();
      0027D4 12 20 CD         [24] 1793 	lcall	_flashOE
                                   1794 ;	life.c:199: for (x = 0; x < W; x++) {
      0027D7 78 34            [12] 1795 	mov	r0,#_x
      0027D9 E4               [12] 1796 	clr	a
      0027DA F6               [12] 1797 	mov	@r0,a
      0027DB 08               [12] 1798 	inc	r0
      0027DC F6               [12] 1799 	mov	@r0,a
      0027DD                       1800 00265$:
                                   1801 ;	life.c:200: n = -u[A2D(W, y, x)];
      0027DD 78 36            [12] 1802 	mov	r0,#_y
      0027DF E6               [12] 1803 	mov	a,@r0
      0027E0 C0 E0            [24] 1804 	push	acc
      0027E2 08               [12] 1805 	inc	r0
      0027E3 E6               [12] 1806 	mov	a,@r0
      0027E4 C0 E0            [24] 1807 	push	acc
      0027E6 90 00 30         [24] 1808 	mov	dptr,#0x0030
      0027E9 12 2E 63         [24] 1809 	lcall	__mulint
      0027EC C8               [12] 1810 	xch	a,r0
      0027ED E5 10            [12] 1811 	mov	a,_bp
      0027EF 24 04            [12] 1812 	add	a,#0x04
      0027F1 C8               [12] 1813 	xch	a,r0
      0027F2 A6 82            [24] 1814 	mov	@r0,dpl
      0027F4 08               [12] 1815 	inc	r0
      0027F5 A6 83            [24] 1816 	mov	@r0,dph
      0027F7 15 81            [12] 1817 	dec	sp
      0027F9 15 81            [12] 1818 	dec	sp
      0027FB E5 10            [12] 1819 	mov	a,_bp
      0027FD 24 04            [12] 1820 	add	a,#0x04
      0027FF F8               [12] 1821 	mov	r0,a
      002800 79 34            [12] 1822 	mov	r1,#_x
      002802 E7               [12] 1823 	mov	a,@r1
      002803 26               [12] 1824 	add	a,@r0
      002804 C0 E0            [24] 1825 	push	acc
      002806 09               [12] 1826 	inc	r1
      002807 E7               [12] 1827 	mov	a,@r1
      002808 08               [12] 1828 	inc	r0
      002809 36               [12] 1829 	addc	a,@r0
      00280A C0 E0            [24] 1830 	push	acc
      00280C E5 10            [12] 1831 	mov	a,_bp
      00280E 24 03            [12] 1832 	add	a,#0x03
      002810 F8               [12] 1833 	mov	r0,a
      002811 D0 E0            [24] 1834 	pop	acc
      002813 F6               [12] 1835 	mov	@r0,a
      002814 18               [12] 1836 	dec	r0
      002815 D0 E0            [24] 1837 	pop	acc
      002817 F6               [12] 1838 	mov	@r0,a
      002818 A8 10            [24] 1839 	mov	r0,_bp
      00281A 08               [12] 1840 	inc	r0
      00281B 08               [12] 1841 	inc	r0
      00281C E6               [12] 1842 	mov	a,@r0
      00281D 24 00            [12] 1843 	add	a,#_u
      00281F F5 82            [12] 1844 	mov	dpl,a
      002821 08               [12] 1845 	inc	r0
      002822 E6               [12] 1846 	mov	a,@r0
      002823 34 88            [12] 1847 	addc	a,#(_u >> 8)
      002825 F5 83            [12] 1848 	mov	dph,a
      002827 E0               [24] 1849 	movx	a,@dptr
      002828 FB               [12] 1850 	mov	r3,a
      002829 A8 10            [24] 1851 	mov	r0,_bp
      00282B 08               [12] 1852 	inc	r0
      00282C C3               [12] 1853 	clr	c
      00282D E4               [12] 1854 	clr	a
      00282E 9B               [12] 1855 	subb	a,r3
      00282F F6               [12] 1856 	mov	@r0,a
                                   1857 ;	life.c:207: UPDN(-1, -1);
      002830 78 36            [12] 1858 	mov	r0,#_y
      002832 74 FF            [12] 1859 	mov	a,#0xff
      002834 26               [12] 1860 	add	a,@r0
      002835 FA               [12] 1861 	mov	r2,a
      002836 74 FF            [12] 1862 	mov	a,#0xff
      002838 08               [12] 1863 	inc	r0
      002839 36               [12] 1864 	addc	a,@r0
      00283A FB               [12] 1865 	mov	r3,a
      00283B 74 C0            [12] 1866 	mov	a,#0xc0
      00283D 2A               [12] 1867 	add	a,r2
      00283E FA               [12] 1868 	mov	r2,a
      00283F E4               [12] 1869 	clr	a
      002840 3B               [12] 1870 	addc	a,r3
      002841 FB               [12] 1871 	mov	r3,a
      002842 74 C0            [12] 1872 	mov	a,#0xc0
      002844 C0 E0            [24] 1873 	push	acc
      002846 E4               [12] 1874 	clr	a
      002847 C0 E0            [24] 1875 	push	acc
      002849 8A 82            [24] 1876 	mov	dpl,r2
      00284B 8B 83            [24] 1877 	mov	dph,r3
      00284D 12 30 41         [24] 1878 	lcall	__modsint
      002850 AA 82            [24] 1879 	mov	r2,dpl
      002852 AB 83            [24] 1880 	mov	r3,dph
      002854 15 81            [12] 1881 	dec	sp
      002856 15 81            [12] 1882 	dec	sp
      002858 C0 02            [24] 1883 	push	ar2
      00285A C0 03            [24] 1884 	push	ar3
      00285C 90 00 30         [24] 1885 	mov	dptr,#0x0030
      00285F 12 2E 63         [24] 1886 	lcall	__mulint
      002862 AA 82            [24] 1887 	mov	r2,dpl
      002864 AB 83            [24] 1888 	mov	r3,dph
      002866 15 81            [12] 1889 	dec	sp
      002868 15 81            [12] 1890 	dec	sp
      00286A 78 34            [12] 1891 	mov	r0,#_x
      00286C 74 FF            [12] 1892 	mov	a,#0xff
      00286E 26               [12] 1893 	add	a,@r0
      00286F FC               [12] 1894 	mov	r4,a
      002870 74 FF            [12] 1895 	mov	a,#0xff
      002872 08               [12] 1896 	inc	r0
      002873 36               [12] 1897 	addc	a,@r0
      002874 FD               [12] 1898 	mov	r5,a
      002875 74 30            [12] 1899 	mov	a,#0x30
      002877 2C               [12] 1900 	add	a,r4
      002878 FC               [12] 1901 	mov	r4,a
      002879 E4               [12] 1902 	clr	a
      00287A 3D               [12] 1903 	addc	a,r5
      00287B FD               [12] 1904 	mov	r5,a
      00287C C0 03            [24] 1905 	push	ar3
      00287E C0 02            [24] 1906 	push	ar2
      002880 74 30            [12] 1907 	mov	a,#0x30
      002882 C0 E0            [24] 1908 	push	acc
      002884 E4               [12] 1909 	clr	a
      002885 C0 E0            [24] 1910 	push	acc
      002887 8C 82            [24] 1911 	mov	dpl,r4
      002889 8D 83            [24] 1912 	mov	dph,r5
      00288B 12 30 41         [24] 1913 	lcall	__modsint
      00288E AC 82            [24] 1914 	mov	r4,dpl
      002890 AD 83            [24] 1915 	mov	r5,dph
      002892 15 81            [12] 1916 	dec	sp
      002894 15 81            [12] 1917 	dec	sp
      002896 D0 02            [24] 1918 	pop	ar2
      002898 D0 03            [24] 1919 	pop	ar3
      00289A EC               [12] 1920 	mov	a,r4
      00289B 2A               [12] 1921 	add	a,r2
      00289C FE               [12] 1922 	mov	r6,a
      00289D ED               [12] 1923 	mov	a,r5
      00289E 3B               [12] 1924 	addc	a,r3
      00289F FF               [12] 1925 	mov	r7,a
      0028A0 EE               [12] 1926 	mov	a,r6
      0028A1 24 00            [12] 1927 	add	a,#_u
      0028A3 F5 82            [12] 1928 	mov	dpl,a
      0028A5 EF               [12] 1929 	mov	a,r7
      0028A6 34 88            [12] 1930 	addc	a,#(_u >> 8)
      0028A8 F5 83            [12] 1931 	mov	dph,a
      0028AA E0               [24] 1932 	movx	a,@dptr
      0028AB FF               [12] 1933 	mov	r7,a
      0028AC A8 10            [24] 1934 	mov	r0,_bp
      0028AE 08               [12] 1935 	inc	r0
      0028AF EF               [12] 1936 	mov	a,r7
      0028B0 26               [12] 1937 	add	a,@r0
      0028B1 F6               [12] 1938 	mov	@r0,a
                                   1939 ;	life.c:208: UPDN(-1, 0);
      0028B2 78 34            [12] 1940 	mov	r0,#_x
      0028B4 E5 10            [12] 1941 	mov	a,_bp
      0028B6 24 06            [12] 1942 	add	a,#0x06
      0028B8 F9               [12] 1943 	mov	r1,a
      0028B9 E6               [12] 1944 	mov	a,@r0
      0028BA F7               [12] 1945 	mov	@r1,a
      0028BB 08               [12] 1946 	inc	r0
      0028BC 09               [12] 1947 	inc	r1
      0028BD E6               [12] 1948 	mov	a,@r0
      0028BE F7               [12] 1949 	mov	@r1,a
      0028BF E5 10            [12] 1950 	mov	a,_bp
      0028C1 24 06            [12] 1951 	add	a,#0x06
      0028C3 F8               [12] 1952 	mov	r0,a
      0028C4 74 30            [12] 1953 	mov	a,#0x30
      0028C6 26               [12] 1954 	add	a,@r0
      0028C7 FE               [12] 1955 	mov	r6,a
      0028C8 E4               [12] 1956 	clr	a
      0028C9 08               [12] 1957 	inc	r0
      0028CA 36               [12] 1958 	addc	a,@r0
      0028CB FF               [12] 1959 	mov	r7,a
      0028CC C0 05            [24] 1960 	push	ar5
      0028CE C0 04            [24] 1961 	push	ar4
      0028D0 C0 03            [24] 1962 	push	ar3
      0028D2 C0 02            [24] 1963 	push	ar2
      0028D4 74 30            [12] 1964 	mov	a,#0x30
      0028D6 C0 E0            [24] 1965 	push	acc
      0028D8 E4               [12] 1966 	clr	a
      0028D9 C0 E0            [24] 1967 	push	acc
      0028DB 8E 82            [24] 1968 	mov	dpl,r6
      0028DD 8F 83            [24] 1969 	mov	dph,r7
      0028DF 12 30 41         [24] 1970 	lcall	__modsint
      0028E2 C8               [12] 1971 	xch	a,r0
      0028E3 E5 10            [12] 1972 	mov	a,_bp
      0028E5 24 08            [12] 1973 	add	a,#0x08
      0028E7 C8               [12] 1974 	xch	a,r0
      0028E8 A6 82            [24] 1975 	mov	@r0,dpl
      0028EA 08               [12] 1976 	inc	r0
      0028EB A6 83            [24] 1977 	mov	@r0,dph
      0028ED 15 81            [12] 1978 	dec	sp
      0028EF 15 81            [12] 1979 	dec	sp
      0028F1 D0 02            [24] 1980 	pop	ar2
      0028F3 D0 03            [24] 1981 	pop	ar3
      0028F5 E5 10            [12] 1982 	mov	a,_bp
      0028F7 24 08            [12] 1983 	add	a,#0x08
      0028F9 F8               [12] 1984 	mov	r0,a
      0028FA E6               [12] 1985 	mov	a,@r0
      0028FB 2A               [12] 1986 	add	a,r2
      0028FC FE               [12] 1987 	mov	r6,a
      0028FD 08               [12] 1988 	inc	r0
      0028FE E6               [12] 1989 	mov	a,@r0
      0028FF 3B               [12] 1990 	addc	a,r3
      002900 FF               [12] 1991 	mov	r7,a
      002901 EE               [12] 1992 	mov	a,r6
      002902 24 00            [12] 1993 	add	a,#_u
      002904 F5 82            [12] 1994 	mov	dpl,a
      002906 EF               [12] 1995 	mov	a,r7
      002907 34 88            [12] 1996 	addc	a,#(_u >> 8)
      002909 F5 83            [12] 1997 	mov	dph,a
      00290B E0               [24] 1998 	movx	a,@dptr
      00290C FF               [12] 1999 	mov	r7,a
      00290D A8 10            [24] 2000 	mov	r0,_bp
      00290F 08               [12] 2001 	inc	r0
      002910 EF               [12] 2002 	mov	a,r7
      002911 26               [12] 2003 	add	a,@r0
      002912 F6               [12] 2004 	mov	@r0,a
                                   2005 ;	life.c:209: UPDN(-1, 1);
      002913 E5 10            [12] 2006 	mov	a,_bp
      002915 24 06            [12] 2007 	add	a,#0x06
      002917 F8               [12] 2008 	mov	r0,a
      002918 74 31            [12] 2009 	mov	a,#0x31
      00291A 26               [12] 2010 	add	a,@r0
      00291B FE               [12] 2011 	mov	r6,a
      00291C E4               [12] 2012 	clr	a
      00291D 08               [12] 2013 	inc	r0
      00291E 36               [12] 2014 	addc	a,@r0
      00291F FF               [12] 2015 	mov	r7,a
      002920 C0 03            [24] 2016 	push	ar3
      002922 C0 02            [24] 2017 	push	ar2
      002924 74 30            [12] 2018 	mov	a,#0x30
      002926 C0 E0            [24] 2019 	push	acc
      002928 E4               [12] 2020 	clr	a
      002929 C0 E0            [24] 2021 	push	acc
      00292B 8E 82            [24] 2022 	mov	dpl,r6
      00292D 8F 83            [24] 2023 	mov	dph,r7
      00292F 12 30 41         [24] 2024 	lcall	__modsint
      002932 AE 82            [24] 2025 	mov	r6,dpl
      002934 AF 83            [24] 2026 	mov	r7,dph
      002936 15 81            [12] 2027 	dec	sp
      002938 15 81            [12] 2028 	dec	sp
      00293A D0 02            [24] 2029 	pop	ar2
      00293C D0 03            [24] 2030 	pop	ar3
      00293E D0 04            [24] 2031 	pop	ar4
      002940 D0 05            [24] 2032 	pop	ar5
      002942 EE               [12] 2033 	mov	a,r6
      002943 2A               [12] 2034 	add	a,r2
      002944 FA               [12] 2035 	mov	r2,a
      002945 EF               [12] 2036 	mov	a,r7
      002946 3B               [12] 2037 	addc	a,r3
      002947 FB               [12] 2038 	mov	r3,a
      002948 EA               [12] 2039 	mov	a,r2
      002949 24 00            [12] 2040 	add	a,#_u
      00294B F5 82            [12] 2041 	mov	dpl,a
      00294D EB               [12] 2042 	mov	a,r3
      00294E 34 88            [12] 2043 	addc	a,#(_u >> 8)
      002950 F5 83            [12] 2044 	mov	dph,a
      002952 E0               [24] 2045 	movx	a,@dptr
      002953 FB               [12] 2046 	mov	r3,a
      002954 A8 10            [24] 2047 	mov	r0,_bp
      002956 08               [12] 2048 	inc	r0
      002957 EB               [12] 2049 	mov	a,r3
      002958 26               [12] 2050 	add	a,@r0
      002959 F6               [12] 2051 	mov	@r0,a
                                   2052 ;	life.c:210: UPDN(0, -1);
      00295A 78 36            [12] 2053 	mov	r0,#_y
      00295C E5 10            [12] 2054 	mov	a,_bp
      00295E 24 0A            [12] 2055 	add	a,#0x0a
      002960 F9               [12] 2056 	mov	r1,a
      002961 E6               [12] 2057 	mov	a,@r0
      002962 F7               [12] 2058 	mov	@r1,a
      002963 08               [12] 2059 	inc	r0
      002964 09               [12] 2060 	inc	r1
      002965 E6               [12] 2061 	mov	a,@r0
      002966 F7               [12] 2062 	mov	@r1,a
      002967 E5 10            [12] 2063 	mov	a,_bp
      002969 24 0A            [12] 2064 	add	a,#0x0a
      00296B F8               [12] 2065 	mov	r0,a
      00296C 74 C0            [12] 2066 	mov	a,#0xc0
      00296E 26               [12] 2067 	add	a,@r0
      00296F FA               [12] 2068 	mov	r2,a
      002970 E4               [12] 2069 	clr	a
      002971 08               [12] 2070 	inc	r0
      002972 36               [12] 2071 	addc	a,@r0
      002973 FB               [12] 2072 	mov	r3,a
      002974 C0 07            [24] 2073 	push	ar7
      002976 C0 06            [24] 2074 	push	ar6
      002978 C0 05            [24] 2075 	push	ar5
      00297A C0 04            [24] 2076 	push	ar4
      00297C 74 C0            [12] 2077 	mov	a,#0xc0
      00297E C0 E0            [24] 2078 	push	acc
      002980 E4               [12] 2079 	clr	a
      002981 C0 E0            [24] 2080 	push	acc
      002983 8A 82            [24] 2081 	mov	dpl,r2
      002985 8B 83            [24] 2082 	mov	dph,r3
      002987 12 30 41         [24] 2083 	lcall	__modsint
      00298A AA 82            [24] 2084 	mov	r2,dpl
      00298C AB 83            [24] 2085 	mov	r3,dph
      00298E 15 81            [12] 2086 	dec	sp
      002990 15 81            [12] 2087 	dec	sp
      002992 C0 02            [24] 2088 	push	ar2
      002994 C0 03            [24] 2089 	push	ar3
      002996 90 00 30         [24] 2090 	mov	dptr,#0x0030
      002999 12 2E 63         [24] 2091 	lcall	__mulint
      00299C C8               [12] 2092 	xch	a,r0
      00299D E5 10            [12] 2093 	mov	a,_bp
      00299F 24 0C            [12] 2094 	add	a,#0x0c
      0029A1 C8               [12] 2095 	xch	a,r0
      0029A2 A6 82            [24] 2096 	mov	@r0,dpl
      0029A4 08               [12] 2097 	inc	r0
      0029A5 A6 83            [24] 2098 	mov	@r0,dph
      0029A7 15 81            [12] 2099 	dec	sp
      0029A9 15 81            [12] 2100 	dec	sp
      0029AB D0 04            [24] 2101 	pop	ar4
      0029AD D0 05            [24] 2102 	pop	ar5
      0029AF D0 06            [24] 2103 	pop	ar6
      0029B1 D0 07            [24] 2104 	pop	ar7
      0029B3 E5 10            [12] 2105 	mov	a,_bp
      0029B5 24 0C            [12] 2106 	add	a,#0x0c
      0029B7 F8               [12] 2107 	mov	r0,a
      0029B8 EC               [12] 2108 	mov	a,r4
      0029B9 26               [12] 2109 	add	a,@r0
      0029BA FA               [12] 2110 	mov	r2,a
      0029BB ED               [12] 2111 	mov	a,r5
      0029BC 08               [12] 2112 	inc	r0
      0029BD 36               [12] 2113 	addc	a,@r0
      0029BE FB               [12] 2114 	mov	r3,a
      0029BF EA               [12] 2115 	mov	a,r2
      0029C0 24 00            [12] 2116 	add	a,#_u
      0029C2 F5 82            [12] 2117 	mov	dpl,a
      0029C4 EB               [12] 2118 	mov	a,r3
      0029C5 34 88            [12] 2119 	addc	a,#(_u >> 8)
      0029C7 F5 83            [12] 2120 	mov	dph,a
      0029C9 E0               [24] 2121 	movx	a,@dptr
      0029CA FB               [12] 2122 	mov	r3,a
      0029CB A8 10            [24] 2123 	mov	r0,_bp
      0029CD 08               [12] 2124 	inc	r0
      0029CE EB               [12] 2125 	mov	a,r3
      0029CF 26               [12] 2126 	add	a,@r0
      0029D0 F6               [12] 2127 	mov	@r0,a
                                   2128 ;	life.c:211: UPDN(0, 0);
      0029D1 E5 10            [12] 2129 	mov	a,_bp
      0029D3 24 0C            [12] 2130 	add	a,#0x0c
      0029D5 F8               [12] 2131 	mov	r0,a
      0029D6 E5 10            [12] 2132 	mov	a,_bp
      0029D8 24 08            [12] 2133 	add	a,#0x08
      0029DA F9               [12] 2134 	mov	r1,a
      0029DB E7               [12] 2135 	mov	a,@r1
      0029DC 26               [12] 2136 	add	a,@r0
      0029DD FA               [12] 2137 	mov	r2,a
      0029DE 09               [12] 2138 	inc	r1
      0029DF E7               [12] 2139 	mov	a,@r1
      0029E0 08               [12] 2140 	inc	r0
      0029E1 36               [12] 2141 	addc	a,@r0
      0029E2 FB               [12] 2142 	mov	r3,a
      0029E3 EA               [12] 2143 	mov	a,r2
      0029E4 24 00            [12] 2144 	add	a,#_u
      0029E6 F5 82            [12] 2145 	mov	dpl,a
      0029E8 EB               [12] 2146 	mov	a,r3
      0029E9 34 88            [12] 2147 	addc	a,#(_u >> 8)
      0029EB F5 83            [12] 2148 	mov	dph,a
      0029ED E0               [24] 2149 	movx	a,@dptr
      0029EE FB               [12] 2150 	mov	r3,a
      0029EF A8 10            [24] 2151 	mov	r0,_bp
      0029F1 08               [12] 2152 	inc	r0
      0029F2 EB               [12] 2153 	mov	a,r3
      0029F3 26               [12] 2154 	add	a,@r0
      0029F4 F6               [12] 2155 	mov	@r0,a
                                   2156 ;	life.c:212: UPDN(0, 1);
      0029F5 E5 10            [12] 2157 	mov	a,_bp
      0029F7 24 0C            [12] 2158 	add	a,#0x0c
      0029F9 F8               [12] 2159 	mov	r0,a
      0029FA EE               [12] 2160 	mov	a,r6
      0029FB 26               [12] 2161 	add	a,@r0
      0029FC FA               [12] 2162 	mov	r2,a
      0029FD EF               [12] 2163 	mov	a,r7
      0029FE 08               [12] 2164 	inc	r0
      0029FF 36               [12] 2165 	addc	a,@r0
      002A00 FB               [12] 2166 	mov	r3,a
      002A01 EA               [12] 2167 	mov	a,r2
      002A02 24 00            [12] 2168 	add	a,#_u
      002A04 F5 82            [12] 2169 	mov	dpl,a
      002A06 EB               [12] 2170 	mov	a,r3
      002A07 34 88            [12] 2171 	addc	a,#(_u >> 8)
      002A09 F5 83            [12] 2172 	mov	dph,a
      002A0B E0               [24] 2173 	movx	a,@dptr
      002A0C FB               [12] 2174 	mov	r3,a
      002A0D A8 10            [24] 2175 	mov	r0,_bp
      002A0F 08               [12] 2176 	inc	r0
      002A10 E5 10            [12] 2177 	mov	a,_bp
      002A12 24 0C            [12] 2178 	add	a,#0x0c
      002A14 F9               [12] 2179 	mov	r1,a
      002A15 EB               [12] 2180 	mov	a,r3
      002A16 26               [12] 2181 	add	a,@r0
      002A17 F7               [12] 2182 	mov	@r1,a
                                   2183 ;	life.c:213: UPDN(1, -1);
      002A18 E5 10            [12] 2184 	mov	a,_bp
      002A1A 24 0A            [12] 2185 	add	a,#0x0a
      002A1C F8               [12] 2186 	mov	r0,a
      002A1D 74 C1            [12] 2187 	mov	a,#0xc1
      002A1F 26               [12] 2188 	add	a,@r0
      002A20 FA               [12] 2189 	mov	r2,a
      002A21 E4               [12] 2190 	clr	a
      002A22 08               [12] 2191 	inc	r0
      002A23 36               [12] 2192 	addc	a,@r0
      002A24 FB               [12] 2193 	mov	r3,a
      002A25 C0 07            [24] 2194 	push	ar7
      002A27 C0 06            [24] 2195 	push	ar6
      002A29 C0 05            [24] 2196 	push	ar5
      002A2B C0 04            [24] 2197 	push	ar4
      002A2D 74 C0            [12] 2198 	mov	a,#0xc0
      002A2F C0 E0            [24] 2199 	push	acc
      002A31 E4               [12] 2200 	clr	a
      002A32 C0 E0            [24] 2201 	push	acc
      002A34 8A 82            [24] 2202 	mov	dpl,r2
      002A36 8B 83            [24] 2203 	mov	dph,r3
      002A38 12 30 41         [24] 2204 	lcall	__modsint
      002A3B AA 82            [24] 2205 	mov	r2,dpl
      002A3D AB 83            [24] 2206 	mov	r3,dph
      002A3F 15 81            [12] 2207 	dec	sp
      002A41 15 81            [12] 2208 	dec	sp
      002A43 C0 02            [24] 2209 	push	ar2
      002A45 C0 03            [24] 2210 	push	ar3
      002A47 90 00 30         [24] 2211 	mov	dptr,#0x0030
      002A4A 12 2E 63         [24] 2212 	lcall	__mulint
      002A4D AA 82            [24] 2213 	mov	r2,dpl
      002A4F AB 83            [24] 2214 	mov	r3,dph
      002A51 15 81            [12] 2215 	dec	sp
      002A53 15 81            [12] 2216 	dec	sp
      002A55 D0 04            [24] 2217 	pop	ar4
      002A57 D0 05            [24] 2218 	pop	ar5
      002A59 D0 06            [24] 2219 	pop	ar6
      002A5B D0 07            [24] 2220 	pop	ar7
      002A5D EC               [12] 2221 	mov	a,r4
      002A5E 2A               [12] 2222 	add	a,r2
      002A5F FC               [12] 2223 	mov	r4,a
      002A60 ED               [12] 2224 	mov	a,r5
      002A61 3B               [12] 2225 	addc	a,r3
      002A62 FD               [12] 2226 	mov	r5,a
      002A63 EC               [12] 2227 	mov	a,r4
      002A64 24 00            [12] 2228 	add	a,#_u
      002A66 F5 82            [12] 2229 	mov	dpl,a
      002A68 ED               [12] 2230 	mov	a,r5
      002A69 34 88            [12] 2231 	addc	a,#(_u >> 8)
      002A6B F5 83            [12] 2232 	mov	dph,a
      002A6D E0               [24] 2233 	movx	a,@dptr
      002A6E FD               [12] 2234 	mov	r5,a
      002A6F E5 10            [12] 2235 	mov	a,_bp
      002A71 24 0C            [12] 2236 	add	a,#0x0c
      002A73 F8               [12] 2237 	mov	r0,a
      002A74 E5 10            [12] 2238 	mov	a,_bp
      002A76 24 0C            [12] 2239 	add	a,#0x0c
      002A78 F9               [12] 2240 	mov	r1,a
      002A79 ED               [12] 2241 	mov	a,r5
      002A7A 26               [12] 2242 	add	a,@r0
      002A7B F7               [12] 2243 	mov	@r1,a
                                   2244 ;	life.c:214: UPDN(1, 0);
      002A7C E5 10            [12] 2245 	mov	a,_bp
      002A7E 24 08            [12] 2246 	add	a,#0x08
      002A80 F8               [12] 2247 	mov	r0,a
      002A81 E6               [12] 2248 	mov	a,@r0
      002A82 2A               [12] 2249 	add	a,r2
      002A83 FC               [12] 2250 	mov	r4,a
      002A84 08               [12] 2251 	inc	r0
      002A85 E6               [12] 2252 	mov	a,@r0
      002A86 3B               [12] 2253 	addc	a,r3
      002A87 FD               [12] 2254 	mov	r5,a
      002A88 EC               [12] 2255 	mov	a,r4
      002A89 24 00            [12] 2256 	add	a,#_u
      002A8B F5 82            [12] 2257 	mov	dpl,a
      002A8D ED               [12] 2258 	mov	a,r5
      002A8E 34 88            [12] 2259 	addc	a,#(_u >> 8)
      002A90 F5 83            [12] 2260 	mov	dph,a
      002A92 E0               [24] 2261 	movx	a,@dptr
      002A93 FD               [12] 2262 	mov	r5,a
      002A94 E5 10            [12] 2263 	mov	a,_bp
      002A96 24 0C            [12] 2264 	add	a,#0x0c
      002A98 F8               [12] 2265 	mov	r0,a
      002A99 ED               [12] 2266 	mov	a,r5
      002A9A 26               [12] 2267 	add	a,@r0
      002A9B FD               [12] 2268 	mov	r5,a
                                   2269 ;	life.c:215: UPDN(1, 1);
      002A9C 78 41            [12] 2270 	mov	r0,#_dy
      002A9E 76 01            [12] 2271 	mov	@r0,#0x01
      002AA0 08               [12] 2272 	inc	r0
      002AA1 76 00            [12] 2273 	mov	@r0,#0x00
      002AA3 78 3F            [12] 2274 	mov	r0,#_dx
      002AA5 76 01            [12] 2275 	mov	@r0,#0x01
      002AA7 08               [12] 2276 	inc	r0
      002AA8 76 00            [12] 2277 	mov	@r0,#0x00
      002AAA EE               [12] 2278 	mov	a,r6
      002AAB 2A               [12] 2279 	add	a,r2
      002AAC FE               [12] 2280 	mov	r6,a
      002AAD EF               [12] 2281 	mov	a,r7
      002AAE 3B               [12] 2282 	addc	a,r3
      002AAF FF               [12] 2283 	mov	r7,a
      002AB0 EE               [12] 2284 	mov	a,r6
      002AB1 24 00            [12] 2285 	add	a,#_u
      002AB3 F5 82            [12] 2286 	mov	dpl,a
      002AB5 EF               [12] 2287 	mov	a,r7
      002AB6 34 88            [12] 2288 	addc	a,#(_u >> 8)
      002AB8 F5 83            [12] 2289 	mov	dph,a
      002ABA E0               [24] 2290 	movx	a,@dptr
      002ABB 2D               [12] 2291 	add	a,r5
      002ABC FF               [12] 2292 	mov	r7,a
      002ABD 78 3C            [12] 2293 	mov	r0,#_n
      002ABF A6 07            [24] 2294 	mov	@r0,ar7
                                   2295 ;	life.c:218: nu[A2D(W, y, x)] = (n == 3) || ((n == 2) && u[A2D(W, y, x)]);
      002AC1 A8 10            [24] 2296 	mov	r0,_bp
      002AC3 08               [12] 2297 	inc	r0
      002AC4 08               [12] 2298 	inc	r0
      002AC5 E6               [12] 2299 	mov	a,@r0
      002AC6 24 00            [12] 2300 	add	a,#_nu
      002AC8 FD               [12] 2301 	mov	r5,a
      002AC9 08               [12] 2302 	inc	r0
      002ACA E6               [12] 2303 	mov	a,@r0
      002ACB 34 AC            [12] 2304 	addc	a,#(_nu >> 8)
      002ACD FE               [12] 2305 	mov	r6,a
      002ACE BF 03 02         [24] 2306 	cjne	r7,#0x03,00624$
      002AD1 80 28            [24] 2307 	sjmp	00293$
      002AD3                       2308 00624$:
      002AD3 BF 02 21         [24] 2309 	cjne	r7,#0x02,00292$
      002AD6 E5 10            [12] 2310 	mov	a,_bp
      002AD8 24 04            [12] 2311 	add	a,#0x04
      002ADA F8               [12] 2312 	mov	r0,a
      002ADB E5 10            [12] 2313 	mov	a,_bp
      002ADD 24 06            [12] 2314 	add	a,#0x06
      002ADF F9               [12] 2315 	mov	r1,a
      002AE0 E7               [12] 2316 	mov	a,@r1
      002AE1 26               [12] 2317 	add	a,@r0
      002AE2 FC               [12] 2318 	mov	r4,a
      002AE3 09               [12] 2319 	inc	r1
      002AE4 E7               [12] 2320 	mov	a,@r1
      002AE5 08               [12] 2321 	inc	r0
      002AE6 36               [12] 2322 	addc	a,@r0
      002AE7 FF               [12] 2323 	mov	r7,a
      002AE8 EC               [12] 2324 	mov	a,r4
      002AE9 24 00            [12] 2325 	add	a,#_u
      002AEB FC               [12] 2326 	mov	r4,a
      002AEC EF               [12] 2327 	mov	a,r7
      002AED 34 88            [12] 2328 	addc	a,#(_u >> 8)
      002AEF FF               [12] 2329 	mov	r7,a
      002AF0 8C 82            [24] 2330 	mov	dpl,r4
      002AF2 8F 83            [24] 2331 	mov	dph,r7
      002AF4 E0               [24] 2332 	movx	a,@dptr
      002AF5 70 04            [24] 2333 	jnz	00293$
      002AF7                       2334 00292$:
                                   2335 ;	assignBit
      002AF7 C2 00            [12] 2336 	clr	b0
      002AF9 80 02            [24] 2337 	sjmp	00294$
      002AFB                       2338 00293$:
                                   2339 ;	assignBit
      002AFB D2 00            [12] 2340 	setb	b0
      002AFD                       2341 00294$:
      002AFD A2 00            [12] 2342 	mov	c,b0
      002AFF E4               [12] 2343 	clr	a
      002B00 33               [12] 2344 	rlc	a
      002B01 8D 82            [24] 2345 	mov	dpl,r5
      002B03 8E 83            [24] 2346 	mov	dph,r6
      002B05 F0               [24] 2347 	movx	@dptr,a
                                   2348 ;	life.c:219: cycle2 |= pu[A2D(W, y, x)] ^ nu[A2D(W, y, x)];
      002B06 78 36            [12] 2349 	mov	r0,#_y
      002B08 E6               [12] 2350 	mov	a,@r0
      002B09 C0 E0            [24] 2351 	push	acc
      002B0B 08               [12] 2352 	inc	r0
      002B0C E6               [12] 2353 	mov	a,@r0
      002B0D C0 E0            [24] 2354 	push	acc
      002B0F 90 00 30         [24] 2355 	mov	dptr,#0x0030
      002B12 12 2E 63         [24] 2356 	lcall	__mulint
      002B15 AE 82            [24] 2357 	mov	r6,dpl
      002B17 AF 83            [24] 2358 	mov	r7,dph
      002B19 15 81            [12] 2359 	dec	sp
      002B1B 15 81            [12] 2360 	dec	sp
      002B1D 78 34            [12] 2361 	mov	r0,#_x
      002B1F E6               [12] 2362 	mov	a,@r0
      002B20 2E               [12] 2363 	add	a,r6
      002B21 FE               [12] 2364 	mov	r6,a
      002B22 08               [12] 2365 	inc	r0
      002B23 E6               [12] 2366 	mov	a,@r0
      002B24 3F               [12] 2367 	addc	a,r7
      002B25 FF               [12] 2368 	mov	r7,a
      002B26 EE               [12] 2369 	mov	a,r6
      002B27 24 00            [12] 2370 	add	a,#_pu
      002B29 F5 82            [12] 2371 	mov	dpl,a
      002B2B EF               [12] 2372 	mov	a,r7
      002B2C 34 64            [12] 2373 	addc	a,#(_pu >> 8)
      002B2E F5 83            [12] 2374 	mov	dph,a
      002B30 E0               [24] 2375 	movx	a,@dptr
      002B31 FD               [12] 2376 	mov	r5,a
      002B32 EE               [12] 2377 	mov	a,r6
      002B33 24 00            [12] 2378 	add	a,#_nu
      002B35 F5 82            [12] 2379 	mov	dpl,a
      002B37 EF               [12] 2380 	mov	a,r7
      002B38 34 AC            [12] 2381 	addc	a,#(_nu >> 8)
      002B3A F5 83            [12] 2382 	mov	dph,a
      002B3C E0               [24] 2383 	movx	a,@dptr
      002B3D FC               [12] 2384 	mov	r4,a
      002B3E 6D               [12] 2385 	xrl	a,r5
      002B3F 78 3E            [12] 2386 	mov	r0,#_cycle2
      002B41 46               [12] 2387 	orl	a,@r0
      002B42 F6               [12] 2388 	mov	@r0,a
                                   2389 ;	life.c:220: fixed |= u[A2D(W, y, x)] ^ nu[A2D(W, y, x)];
      002B43 EE               [12] 2390 	mov	a,r6
      002B44 24 00            [12] 2391 	add	a,#_u
      002B46 F5 82            [12] 2392 	mov	dpl,a
      002B48 EF               [12] 2393 	mov	a,r7
      002B49 34 88            [12] 2394 	addc	a,#(_u >> 8)
      002B4B F5 83            [12] 2395 	mov	dph,a
      002B4D E0               [24] 2396 	movx	a,@dptr
      002B4E FF               [12] 2397 	mov	r7,a
      002B4F EC               [12] 2398 	mov	a,r4
      002B50 6F               [12] 2399 	xrl	a,r7
      002B51 78 3D            [12] 2400 	mov	r0,#_fixed
      002B53 46               [12] 2401 	orl	a,@r0
      002B54 F6               [12] 2402 	mov	@r0,a
                                   2403 ;	life.c:199: for (x = 0; x < W; x++) {
      002B55 78 34            [12] 2404 	mov	r0,#_x
      002B57 06               [12] 2405 	inc	@r0
      002B58 B6 00 02         [24] 2406 	cjne	@r0,#0x00,00628$
      002B5B 08               [12] 2407 	inc	r0
      002B5C 06               [12] 2408 	inc	@r0
      002B5D                       2409 00628$:
      002B5D 78 34            [12] 2410 	mov	r0,#_x
      002B5F C3               [12] 2411 	clr	c
      002B60 E6               [12] 2412 	mov	a,@r0
      002B61 94 30            [12] 2413 	subb	a,#0x30
      002B63 08               [12] 2414 	inc	r0
      002B64 E6               [12] 2415 	mov	a,@r0
      002B65 64 80            [12] 2416 	xrl	a,#0x80
      002B67 94 80            [12] 2417 	subb	a,#0x80
      002B69 50 03            [24] 2418 	jnc	00629$
      002B6B 02 27 DD         [24] 2419 	ljmp	00265$
      002B6E                       2420 00629$:
                                   2421 ;	life.c:196: for (y = 0; y < H; y++) {
      002B6E 78 36            [12] 2422 	mov	r0,#_y
      002B70 06               [12] 2423 	inc	@r0
      002B71 B6 00 02         [24] 2424 	cjne	@r0,#0x00,00630$
      002B74 08               [12] 2425 	inc	r0
      002B75 06               [12] 2426 	inc	@r0
      002B76                       2427 00630$:
      002B76 78 36            [12] 2428 	mov	r0,#_y
      002B78 C3               [12] 2429 	clr	c
      002B79 E6               [12] 2430 	mov	a,@r0
      002B7A 94 C0            [12] 2431 	subb	a,#0xc0
      002B7C 08               [12] 2432 	inc	r0
      002B7D E6               [12] 2433 	mov	a,@r0
      002B7E 64 80            [12] 2434 	xrl	a,#0x80
      002B80 94 80            [12] 2435 	subb	a,#0x80
      002B82 50 03            [24] 2436 	jnc	00631$
      002B84 02 27 C1         [24] 2437 	ljmp	00267$
      002B87                       2438 00631$:
                                   2439 ;	life.c:224: OE76 = OE76_0;
      002B87 78 33            [12] 2440 	mov	r0,#_OE76
      002B89 76 3F            [12] 2441 	mov	@r0,#0x3f
                                   2442 ;	life.c:225: flashOE();
      002B8B 12 20 CD         [24] 2443 	lcall	_flashOE
                                   2444 ;	life.c:227: cycle2 = !cycle2;
      002B8E 78 3E            [12] 2445 	mov	r0,#_cycle2
      002B90 E6               [12] 2446 	mov	a,@r0
      002B91 B4 01 00         [24] 2447 	cjne	a,#0x01,00632$
      002B94                       2448 00632$:
      002B94 92 00            [24] 2449 	mov	b0,c
      002B96 78 3E            [12] 2450 	mov	r0,#_cycle2
      002B98 E4               [12] 2451 	clr	a
      002B99 33               [12] 2452 	rlc	a
      002B9A F6               [12] 2453 	mov	@r0,a
                                   2454 ;	life.c:228: fixed = !fixed;
      002B9B 78 3D            [12] 2455 	mov	r0,#_fixed
      002B9D E6               [12] 2456 	mov	a,@r0
      002B9E B4 01 00         [24] 2457 	cjne	a,#0x01,00633$
      002BA1                       2458 00633$:
      002BA1 92 00            [24] 2459 	mov	b0,c
      002BA3 78 3D            [12] 2460 	mov	r0,#_fixed
      002BA5 E4               [12] 2461 	clr	a
      002BA6 33               [12] 2462 	rlc	a
      002BA7 F6               [12] 2463 	mov	@r0,a
                                   2464 ;	life.c:230: memcpy(pu, u, sizeof (u));
      002BA8 E4               [12] 2465 	clr	a
      002BA9 C0 E0            [24] 2466 	push	acc
      002BAB 74 24            [12] 2467 	mov	a,#0x24
      002BAD C0 E0            [24] 2468 	push	acc
      002BAF 74 00            [12] 2469 	mov	a,#_u
      002BB1 C0 E0            [24] 2470 	push	acc
      002BB3 74 88            [12] 2471 	mov	a,#(_u >> 8)
      002BB5 C0 E0            [24] 2472 	push	acc
      002BB7 E4               [12] 2473 	clr	a
      002BB8 C0 E0            [24] 2474 	push	acc
      002BBA 90 64 00         [24] 2475 	mov	dptr,#_pu
      002BBD 75 F0 00         [24] 2476 	mov	b,#0x00
      002BC0 12 2F 01         [24] 2477 	lcall	___memcpy
      002BC3 E5 81            [12] 2478 	mov	a,sp
      002BC5 24 FB            [12] 2479 	add	a,#0xfb
      002BC7 F5 81            [12] 2480 	mov	sp,a
                                   2481 ;	life.c:231: memcpy(u, nu, sizeof (nu));
      002BC9 E4               [12] 2482 	clr	a
      002BCA C0 E0            [24] 2483 	push	acc
      002BCC 74 24            [12] 2484 	mov	a,#0x24
      002BCE C0 E0            [24] 2485 	push	acc
      002BD0 74 00            [12] 2486 	mov	a,#_nu
      002BD2 C0 E0            [24] 2487 	push	acc
      002BD4 74 AC            [12] 2488 	mov	a,#(_nu >> 8)
      002BD6 C0 E0            [24] 2489 	push	acc
      002BD8 E4               [12] 2490 	clr	a
      002BD9 C0 E0            [24] 2491 	push	acc
      002BDB 90 88 00         [24] 2492 	mov	dptr,#_u
      002BDE 75 F0 00         [24] 2493 	mov	b,#0x00
      002BE1 12 2F 01         [24] 2494 	lcall	___memcpy
      002BE4 E5 81            [12] 2495 	mov	a,sp
      002BE6 24 FB            [12] 2496 	add	a,#0xfb
      002BE8 F5 81            [12] 2497 	mov	sp,a
                                   2498 ;	life.c:285: if (fixed || cycle2) {
      002BEA 78 3D            [12] 2499 	mov	r0,#_fixed
      002BEC E6               [12] 2500 	mov	a,@r0
      002BED 70 08            [24] 2501 	jnz	00135$
      002BEF 78 3E            [12] 2502 	mov	r0,#_cycle2
      002BF1 E6               [12] 2503 	mov	a,@r0
      002BF2 70 03            [24] 2504 	jnz	00635$
      002BF4 02 2C 8B         [24] 2505 	ljmp	00136$
      002BF7                       2506 00635$:
      002BF7                       2507 00135$:
                                   2508 ;	life.c:286: printstr("DONE ");
      002BF7 7D B1            [12] 2509 	mov	r5,#___str_10
      002BF9 7E 31            [12] 2510 	mov	r6,#(___str_10 >> 8)
      002BFB 7F 80            [12] 2511 	mov	r7,#0x80
                                   2512 ;	life.c:35: return;
      002BFD                       2513 00270$:
                                   2514 ;	life.c:33: for (; *s; s++) putchar(*s);
      002BFD 8D 82            [24] 2515 	mov	dpl,r5
      002BFF 8E 83            [24] 2516 	mov	dph,r6
      002C01 8F F0            [24] 2517 	mov	b,r7
      002C03 12 30 25         [24] 2518 	lcall	__gptrget
      002C06 FC               [12] 2519 	mov	r4,a
      002C07 60 1C            [24] 2520 	jz	00228$
      002C09 7B 00            [12] 2521 	mov	r3,#0x00
      002C0B 8C 82            [24] 2522 	mov	dpl,r4
      002C0D 8B 83            [24] 2523 	mov	dph,r3
      002C0F C0 07            [24] 2524 	push	ar7
      002C11 C0 06            [24] 2525 	push	ar6
      002C13 C0 05            [24] 2526 	push	ar5
      002C15 12 2E 32         [24] 2527 	lcall	_putchar
      002C18 D0 05            [24] 2528 	pop	ar5
      002C1A D0 06            [24] 2529 	pop	ar6
      002C1C D0 07            [24] 2530 	pop	ar7
      002C1E 0D               [12] 2531 	inc	r5
                                   2532 ;	life.c:286: printstr("DONE ");
      002C1F BD 00 DB         [24] 2533 	cjne	r5,#0x00,00270$
      002C22 0E               [12] 2534 	inc	r6
      002C23 80 D8            [24] 2535 	sjmp	00270$
      002C25                       2536 00228$:
                                   2537 ;	life.c:287: if (fixed) printstr("FIXED\r\n");
      002C25 78 3D            [12] 2538 	mov	r0,#_fixed
      002C27 E6               [12] 2539 	mov	a,@r0
      002C28 60 2E            [24] 2540 	jz	00133$
      002C2A 7D B7            [12] 2541 	mov	r5,#___str_11
      002C2C 7E 31            [12] 2542 	mov	r6,#(___str_11 >> 8)
      002C2E 7F 80            [12] 2543 	mov	r7,#0x80
                                   2544 ;	life.c:35: return;
      002C30                       2545 00273$:
                                   2546 ;	life.c:33: for (; *s; s++) putchar(*s);
      002C30 8D 82            [24] 2547 	mov	dpl,r5
      002C32 8E 83            [24] 2548 	mov	dph,r6
      002C34 8F F0            [24] 2549 	mov	b,r7
      002C36 12 30 25         [24] 2550 	lcall	__gptrget
      002C39 FC               [12] 2551 	mov	r4,a
      002C3A 60 4A            [24] 2552 	jz	00134$
      002C3C 7B 00            [12] 2553 	mov	r3,#0x00
      002C3E 8C 82            [24] 2554 	mov	dpl,r4
      002C40 8B 83            [24] 2555 	mov	dph,r3
      002C42 C0 07            [24] 2556 	push	ar7
      002C44 C0 06            [24] 2557 	push	ar6
      002C46 C0 05            [24] 2558 	push	ar5
      002C48 12 2E 32         [24] 2559 	lcall	_putchar
      002C4B D0 05            [24] 2560 	pop	ar5
      002C4D D0 06            [24] 2561 	pop	ar6
      002C4F D0 07            [24] 2562 	pop	ar7
      002C51 0D               [12] 2563 	inc	r5
                                   2564 ;	life.c:287: if (fixed) printstr("FIXED\r\n");
      002C52 BD 00 DB         [24] 2565 	cjne	r5,#0x00,00273$
      002C55 0E               [12] 2566 	inc	r6
      002C56 80 D8            [24] 2567 	sjmp	00273$
      002C58                       2568 00133$:
                                   2569 ;	life.c:288: else printstr("CYCLE2\r\n");
      002C58 7D BF            [12] 2570 	mov	r5,#___str_12
      002C5A 7E 31            [12] 2571 	mov	r6,#(___str_12 >> 8)
      002C5C 7F 80            [12] 2572 	mov	r7,#0x80
                                   2573 ;	life.c:35: return;
      002C5E                       2574 00276$:
                                   2575 ;	life.c:33: for (; *s; s++) putchar(*s);
      002C5E 8D 82            [24] 2576 	mov	dpl,r5
      002C60 8E 83            [24] 2577 	mov	dph,r6
      002C62 8F F0            [24] 2578 	mov	b,r7
      002C64 12 30 25         [24] 2579 	lcall	__gptrget
      002C67 FC               [12] 2580 	mov	r4,a
      002C68 60 1C            [24] 2581 	jz	00134$
      002C6A 7B 00            [12] 2582 	mov	r3,#0x00
      002C6C 8C 82            [24] 2583 	mov	dpl,r4
      002C6E 8B 83            [24] 2584 	mov	dph,r3
      002C70 C0 07            [24] 2585 	push	ar7
      002C72 C0 06            [24] 2586 	push	ar6
      002C74 C0 05            [24] 2587 	push	ar5
      002C76 12 2E 32         [24] 2588 	lcall	_putchar
      002C79 D0 05            [24] 2589 	pop	ar5
      002C7B D0 06            [24] 2590 	pop	ar6
      002C7D D0 07            [24] 2591 	pop	ar7
      002C7F 0D               [12] 2592 	inc	r5
                                   2593 ;	life.c:288: else printstr("CYCLE2\r\n");
      002C80 BD 00 DB         [24] 2594 	cjne	r5,#0x00,00276$
      002C83 0E               [12] 2595 	inc	r6
      002C84 80 D8            [24] 2596 	sjmp	00276$
      002C86                       2597 00134$:
                                   2598 ;	life.c:289: (void)getchar();
      002C86 12 2E 3C         [24] 2599 	lcall	_getchar
                                   2600 ;	life.c:290: break;
      002C89 80 50            [24] 2601 	sjmp	00145$
      002C8B                       2602 00136$:
                                   2603 ;	life.c:293: c = getchar_poll();
      002C8B 12 2E 49         [24] 2604 	lcall	_getchar_poll
      002C8E AE 82            [24] 2605 	mov	r6,dpl
      002C90 AF 83            [24] 2606 	mov	r7,dph
      002C92 78 3A            [12] 2607 	mov	r0,#_c
      002C94 A6 06            [24] 2608 	mov	@r0,ar6
      002C96 08               [12] 2609 	inc	r0
      002C97 A6 07            [24] 2610 	mov	@r0,ar7
                                   2611 ;	life.c:294: if (c > 0) {
      002C99 C3               [12] 2612 	clr	c
      002C9A E4               [12] 2613 	clr	a
      002C9B 9E               [12] 2614 	subb	a,r6
      002C9C 74 80            [12] 2615 	mov	a,#(0x00 ^ 0x80)
      002C9E 8F F0            [24] 2616 	mov	b,r7
      002CA0 63 F0 80         [24] 2617 	xrl	b,#0x80
      002CA3 95 F0            [12] 2618 	subb	a,b
      002CA5 40 03            [24] 2619 	jc	00643$
      002CA7 02 27 96         [24] 2620 	ljmp	00280$
      002CAA                       2621 00643$:
                                   2622 ;	life.c:295: c = toupper(c);
      002CAA 8E 82            [24] 2623 	mov	dpl,r6
      002CAC 8F 83            [24] 2624 	mov	dph,r7
      002CAE 12 2F FE         [24] 2625 	lcall	_toupper
      002CB1 AE 82            [24] 2626 	mov	r6,dpl
      002CB3 AF 83            [24] 2627 	mov	r7,dph
      002CB5 78 3A            [12] 2628 	mov	r0,#_c
      002CB7 A6 06            [24] 2629 	mov	@r0,ar6
      002CB9 08               [12] 2630 	inc	r0
      002CBA A6 07            [24] 2631 	mov	@r0,ar7
                                   2632 ;	life.c:296: if (c == (int)'T') i0 = 1;
      002CBC BE 54 0A         [24] 2633 	cjne	r6,#0x54,00141$
      002CBF BF 00 07         [24] 2634 	cjne	r7,#0x00,00141$
      002CC2 78 31            [12] 2635 	mov	r0,#_i0
      002CC4 76 01            [12] 2636 	mov	@r0,#0x01
      002CC6 02 27 96         [24] 2637 	ljmp	00280$
      002CC9                       2638 00141$:
                                   2639 ;	life.c:297: else if (c == (int)'B') i1 = 1;
      002CC9 BE 42 05         [24] 2640 	cjne	r6,#0x42,00646$
      002CCC BF 00 02         [24] 2641 	cjne	r7,#0x00,00646$
      002CCF 80 03            [24] 2642 	sjmp	00647$
      002CD1                       2643 00646$:
      002CD1 02 27 96         [24] 2644 	ljmp	00280$
      002CD4                       2645 00647$:
      002CD4 78 32            [12] 2646 	mov	r0,#_i1
      002CD6 76 01            [12] 2647 	mov	@r0,#0x01
      002CD8 02 27 96         [24] 2648 	ljmp	00280$
      002CDB                       2649 00145$:
                                   2650 ;	life.c:301: if (i1) {
      002CDB 78 32            [12] 2651 	mov	r0,#_i1
      002CDD E6               [12] 2652 	mov	a,@r0
      002CDE 60 31            [24] 2653 	jz	00286$
                                   2654 ;	life.c:302: printstr("BREAK\r\n");
      002CE0 7D C8            [12] 2655 	mov	r5,#___str_13
      002CE2 7E 31            [12] 2656 	mov	r6,#(___str_13 >> 8)
      002CE4 7F 80            [12] 2657 	mov	r7,#0x80
                                   2658 ;	life.c:35: return;
      002CE6                       2659 00283$:
                                   2660 ;	life.c:33: for (; *s; s++) putchar(*s);
      002CE6 8D 82            [24] 2661 	mov	dpl,r5
      002CE8 8E 83            [24] 2662 	mov	dph,r6
      002CEA 8F F0            [24] 2663 	mov	b,r7
      002CEC 12 30 25         [24] 2664 	lcall	__gptrget
      002CEF FC               [12] 2665 	mov	r4,a
      002CF0 60 1C            [24] 2666 	jz	00234$
      002CF2 7B 00            [12] 2667 	mov	r3,#0x00
      002CF4 8C 82            [24] 2668 	mov	dpl,r4
      002CF6 8B 83            [24] 2669 	mov	dph,r3
      002CF8 C0 07            [24] 2670 	push	ar7
      002CFA C0 06            [24] 2671 	push	ar6
      002CFC C0 05            [24] 2672 	push	ar5
      002CFE 12 2E 32         [24] 2673 	lcall	_putchar
      002D01 D0 05            [24] 2674 	pop	ar5
      002D03 D0 06            [24] 2675 	pop	ar6
      002D05 D0 07            [24] 2676 	pop	ar7
      002D07 0D               [12] 2677 	inc	r5
                                   2678 ;	life.c:302: printstr("BREAK\r\n");
      002D08 BD 00 DB         [24] 2679 	cjne	r5,#0x00,00283$
      002D0B 0E               [12] 2680 	inc	r6
      002D0C 80 D8            [24] 2681 	sjmp	00283$
      002D0E                       2682 00234$:
                                   2683 ;	life.c:303: (void)getchar();
      002D0E 12 2E 3C         [24] 2684 	lcall	_getchar
      002D11                       2685 00286$:
                                   2686 ;	life.c:256: for (i0 = 0; !i0; ) {	
      002D11 78 31            [12] 2687 	mov	r0,#_i0
      002D13 E6               [12] 2688 	mov	a,@r0
      002D14 70 03            [24] 2689 	jnz	00651$
      002D16 02 23 CD         [24] 2690 	ljmp	00285$
      002D19                       2691 00651$:
                                   2692 ;	life.c:307: term:
      002D19                       2693 00149$:
                                   2694 ;	life.c:308: EA = 0;
                                   2695 ;	assignBit
      002D19 C2 AF            [12] 2696 	clr	_EA
                                   2697 ;	life.c:309: printstr("TERM\r\n");
      002D1B 7D D0            [12] 2698 	mov	r5,#___str_14
      002D1D 7E 31            [12] 2699 	mov	r6,#(___str_14 >> 8)
      002D1F 7F 80            [12] 2700 	mov	r7,#0x80
                                   2701 ;	life.c:35: return;
      002D21                       2702 00288$:
                                   2703 ;	life.c:33: for (; *s; s++) putchar(*s);
      002D21 8D 82            [24] 2704 	mov	dpl,r5
      002D23 8E 83            [24] 2705 	mov	dph,r6
      002D25 8F F0            [24] 2706 	mov	b,r7
      002D27 12 30 25         [24] 2707 	lcall	__gptrget
      002D2A FC               [12] 2708 	mov	r4,a
      002D2B 60 1C            [24] 2709 	jz	00236$
      002D2D 7B 00            [12] 2710 	mov	r3,#0x00
      002D2F 8C 82            [24] 2711 	mov	dpl,r4
      002D31 8B 83            [24] 2712 	mov	dph,r3
      002D33 C0 07            [24] 2713 	push	ar7
      002D35 C0 06            [24] 2714 	push	ar6
      002D37 C0 05            [24] 2715 	push	ar5
      002D39 12 2E 32         [24] 2716 	lcall	_putchar
      002D3C D0 05            [24] 2717 	pop	ar5
      002D3E D0 06            [24] 2718 	pop	ar6
      002D40 D0 07            [24] 2719 	pop	ar7
      002D42 0D               [12] 2720 	inc	r5
                                   2721 ;	life.c:309: printstr("TERM\r\n");
      002D43 BD 00 DB         [24] 2722 	cjne	r5,#0x00,00288$
      002D46 0E               [12] 2723 	inc	r6
      002D47 80 D8            [24] 2724 	sjmp	00288$
      002D49                       2725 00236$:
                                   2726 ;	life.c:310: (void)getchar();
      002D49 12 2E 3C         [24] 2727 	lcall	_getchar
                                   2728 ;	life.c:312: PCON |= 2;
      002D4C 43 87 02         [24] 2729 	orl	_PCON,#0x02
                                   2730 ;	life.c:314: return;
                                   2731 ;	life.c:315: }
      002D4F 85 10 81         [24] 2732 	mov	sp,_bp
      002D52 D0 10            [24] 2733 	pop	_bp
      002D54 22               [24] 2734 	ret
                                   2735 	.area CSEG    (CODE)
                                   2736 	.area CONST   (CODE)
                                   2737 	.area CONST   (CODE)
      00314D                       2738 ___str_0:
      00314D 1B                    2739 	.db 0x1b
      00314E 5B 3F 32 35 6C        2740 	.ascii "[?25l"
      003153 00                    2741 	.db 0x00
                                   2742 	.area CSEG    (CODE)
                                   2743 	.area CONST   (CODE)
      003154                       2744 ___str_1:
      003154 1B                    2745 	.db 0x1b
      003155 5B 32 4A 47 45 4E 20  2746 	.ascii "[2JGEN "
      00315C 00                    2747 	.db 0x00
                                   2748 	.area CSEG    (CODE)
                                   2749 	.area CONST   (CODE)
      00315D                       2750 ___str_2:
      00315D 0D                    2751 	.db 0x0d
      00315E 0A                    2752 	.db 0x0a
      00315F 00                    2753 	.db 0x00
                                   2754 	.area CSEG    (CODE)
                                   2755 	.area CONST   (CODE)
      003160                       2756 ___str_3:
      003160 1B                    2757 	.db 0x1b
      003161 5B 3F 32 35 68        2758 	.ascii "[?25h"
      003166 00                    2759 	.db 0x00
                                   2760 	.area CSEG    (CODE)
                                   2761 	.area CONST   (CODE)
      003167                       2762 ___str_4:
      003167 4C 4F 41 44 20 30 20  2763 	.ascii "LOAD 0 1 ~ # <"
             31 20 7E 20 23 20 3C
      003175 00                    2764 	.db 0x00
                                   2765 	.area CSEG    (CODE)
                                   2766 	.area CONST   (CODE)
      003176                       2767 ___str_5:
      003176 3E                    2768 	.ascii ">"
      003177 0D                    2769 	.db 0x0d
      003178 0A                    2770 	.db 0x0a
      003179 00                    2771 	.db 0x00
                                   2772 	.area CSEG    (CODE)
                                   2773 	.area CONST   (CODE)
      00317A                       2774 ___str_6:
      00317A 52 41 4E 44 4F 4D     2775 	.ascii "RANDOM"
      003180 00                    2776 	.db 0x00
                                   2777 	.area CSEG    (CODE)
                                   2778 	.area CONST   (CODE)
      003181                       2779 ___str_7:
      003181 1B                    2780 	.db 0x1b
      003182 5B 3F 32 35 68        2781 	.ascii "[?25h"
      003187 1B                    2782 	.db 0x1b
      003188 5B 6D                 2783 	.ascii "[m"
      00318A 00                    2784 	.db 0x00
                                   2785 	.area CSEG    (CODE)
                                   2786 	.area CONST   (CODE)
      00318B                       2787 ___str_8:
      00318B 4C 49 46 45 20 49 4E  2788 	.ascii "LIFE INIT T L R P"
             49 54 20 54 20 4C 20
             52 20 50
      00319C 0D                    2789 	.db 0x0d
      00319D 0A                    2790 	.db 0x0a
      00319E 00                    2791 	.db 0x00
                                   2792 	.area CSEG    (CODE)
                                   2793 	.area CONST   (CODE)
      00319F                       2794 ___str_9:
      00319F 52 45 41 44 59 20 54  2795 	.ascii "READY T L R P S"
             20 4C 20 52 20 50 20
             53
      0031AE 0D                    2796 	.db 0x0d
      0031AF 0A                    2797 	.db 0x0a
      0031B0 00                    2798 	.db 0x00
                                   2799 	.area CSEG    (CODE)
                                   2800 	.area CONST   (CODE)
      0031B1                       2801 ___str_10:
      0031B1 44 4F 4E 45 20        2802 	.ascii "DONE "
      0031B6 00                    2803 	.db 0x00
                                   2804 	.area CSEG    (CODE)
                                   2805 	.area CONST   (CODE)
      0031B7                       2806 ___str_11:
      0031B7 46 49 58 45 44        2807 	.ascii "FIXED"
      0031BC 0D                    2808 	.db 0x0d
      0031BD 0A                    2809 	.db 0x0a
      0031BE 00                    2810 	.db 0x00
                                   2811 	.area CSEG    (CODE)
                                   2812 	.area CONST   (CODE)
      0031BF                       2813 ___str_12:
      0031BF 43 59 43 4C 45 32     2814 	.ascii "CYCLE2"
      0031C5 0D                    2815 	.db 0x0d
      0031C6 0A                    2816 	.db 0x0a
      0031C7 00                    2817 	.db 0x00
                                   2818 	.area CSEG    (CODE)
                                   2819 	.area CONST   (CODE)
      0031C8                       2820 ___str_13:
      0031C8 42 52 45 41 4B        2821 	.ascii "BREAK"
      0031CD 0D                    2822 	.db 0x0d
      0031CE 0A                    2823 	.db 0x0a
      0031CF 00                    2824 	.db 0x00
                                   2825 	.area CSEG    (CODE)
                                   2826 	.area CONST   (CODE)
      0031D0                       2827 ___str_14:
      0031D0 54 45 52 4D           2828 	.ascii "TERM"
      0031D4 0D                    2829 	.db 0x0d
      0031D5 0A                    2830 	.db 0x0a
      0031D6 00                    2831 	.db 0x00
                                   2832 	.area CSEG    (CODE)
                                   2833 	.area XINIT   (CODE)
                                   2834 	.area CABS    (ABS,CODE)
