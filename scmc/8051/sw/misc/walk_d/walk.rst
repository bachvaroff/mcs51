                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module walk
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _int0
                                     13 	.globl _srand
                                     14 	.globl _rand
                                     15 	.globl _puts
                                     16 	.globl _printf
                                     17 	.globl _CY
                                     18 	.globl _AC
                                     19 	.globl _F0
                                     20 	.globl _RS1
                                     21 	.globl _RS0
                                     22 	.globl _OV
                                     23 	.globl _FL
                                     24 	.globl _P
                                     25 	.globl _TF2
                                     26 	.globl _EXF2
                                     27 	.globl _RCLK
                                     28 	.globl _TCLK
                                     29 	.globl _EXEN2
                                     30 	.globl _TR2
                                     31 	.globl _C_T2
                                     32 	.globl _CP_RL2
                                     33 	.globl _T2CON_7
                                     34 	.globl _T2CON_6
                                     35 	.globl _T2CON_5
                                     36 	.globl _T2CON_4
                                     37 	.globl _T2CON_3
                                     38 	.globl _T2CON_2
                                     39 	.globl _T2CON_1
                                     40 	.globl _T2CON_0
                                     41 	.globl _PT2
                                     42 	.globl _PS
                                     43 	.globl _PT1
                                     44 	.globl _PX1
                                     45 	.globl _PT0
                                     46 	.globl _PX0
                                     47 	.globl _RD
                                     48 	.globl _WR
                                     49 	.globl _T1
                                     50 	.globl _T0
                                     51 	.globl _INT1
                                     52 	.globl _INT0
                                     53 	.globl _TXD
                                     54 	.globl _RXD
                                     55 	.globl _P3_7
                                     56 	.globl _P3_6
                                     57 	.globl _P3_5
                                     58 	.globl _P3_4
                                     59 	.globl _P3_3
                                     60 	.globl _P3_2
                                     61 	.globl _P3_1
                                     62 	.globl _P3_0
                                     63 	.globl _EA
                                     64 	.globl _ET2
                                     65 	.globl _ES
                                     66 	.globl _ET1
                                     67 	.globl _EX1
                                     68 	.globl _ET0
                                     69 	.globl _EX0
                                     70 	.globl _P2_7
                                     71 	.globl _P2_6
                                     72 	.globl _P2_5
                                     73 	.globl _P2_4
                                     74 	.globl _P2_3
                                     75 	.globl _P2_2
                                     76 	.globl _P2_1
                                     77 	.globl _P2_0
                                     78 	.globl _SM0
                                     79 	.globl _SM1
                                     80 	.globl _SM2
                                     81 	.globl _REN
                                     82 	.globl _TB8
                                     83 	.globl _RB8
                                     84 	.globl _TI
                                     85 	.globl _RI
                                     86 	.globl _T2EX
                                     87 	.globl _T2
                                     88 	.globl _P1_7
                                     89 	.globl _P1_6
                                     90 	.globl _P1_5
                                     91 	.globl _P1_4
                                     92 	.globl _P1_3
                                     93 	.globl _P1_2
                                     94 	.globl _P1_1
                                     95 	.globl _P1_0
                                     96 	.globl _TF1
                                     97 	.globl _TR1
                                     98 	.globl _TF0
                                     99 	.globl _TR0
                                    100 	.globl _IE1
                                    101 	.globl _IT1
                                    102 	.globl _IE0
                                    103 	.globl _IT0
                                    104 	.globl _P0_7
                                    105 	.globl _P0_6
                                    106 	.globl _P0_5
                                    107 	.globl _P0_4
                                    108 	.globl _P0_3
                                    109 	.globl _P0_2
                                    110 	.globl _P0_1
                                    111 	.globl _P0_0
                                    112 	.globl _B
                                    113 	.globl _A
                                    114 	.globl _ACC
                                    115 	.globl _PSW
                                    116 	.globl _TH2
                                    117 	.globl _TL2
                                    118 	.globl _RCAP2H
                                    119 	.globl _RCAP2L
                                    120 	.globl _T2MOD
                                    121 	.globl _T2CON
                                    122 	.globl _IP
                                    123 	.globl _P3
                                    124 	.globl _IE
                                    125 	.globl _P2
                                    126 	.globl _SBUF
                                    127 	.globl _SCON
                                    128 	.globl _P1
                                    129 	.globl _TH1
                                    130 	.globl _TH0
                                    131 	.globl _TL1
                                    132 	.globl _TL0
                                    133 	.globl _TMOD
                                    134 	.globl _TCON
                                    135 	.globl _PCON
                                    136 	.globl _DPH
                                    137 	.globl _DPL
                                    138 	.globl _SP
                                    139 	.globl _P0
                                    140 	.globl _putchar
                                    141 	.globl _getchar
                                    142 ;--------------------------------------------------------
                                    143 ; special function registers
                                    144 ;--------------------------------------------------------
                                    145 	.area RSEG    (ABS,DATA)
      000000                        146 	.org 0x0000
                           000080   147 _P0	=	0x0080
                           000081   148 _SP	=	0x0081
                           000082   149 _DPL	=	0x0082
                           000083   150 _DPH	=	0x0083
                           000087   151 _PCON	=	0x0087
                           000088   152 _TCON	=	0x0088
                           000089   153 _TMOD	=	0x0089
                           00008A   154 _TL0	=	0x008a
                           00008B   155 _TL1	=	0x008b
                           00008C   156 _TH0	=	0x008c
                           00008D   157 _TH1	=	0x008d
                           000090   158 _P1	=	0x0090
                           000098   159 _SCON	=	0x0098
                           000099   160 _SBUF	=	0x0099
                           0000A0   161 _P2	=	0x00a0
                           0000A8   162 _IE	=	0x00a8
                           0000B0   163 _P3	=	0x00b0
                           0000B8   164 _IP	=	0x00b8
                           0000C8   165 _T2CON	=	0x00c8
                           0000C9   166 _T2MOD	=	0x00c9
                           0000CA   167 _RCAP2L	=	0x00ca
                           0000CB   168 _RCAP2H	=	0x00cb
                           0000CC   169 _TL2	=	0x00cc
                           0000CD   170 _TH2	=	0x00cd
                           0000D0   171 _PSW	=	0x00d0
                           0000E0   172 _ACC	=	0x00e0
                           0000E0   173 _A	=	0x00e0
                           0000F0   174 _B	=	0x00f0
                                    175 ;--------------------------------------------------------
                                    176 ; special function bits
                                    177 ;--------------------------------------------------------
                                    178 	.area RSEG    (ABS,DATA)
      000000                        179 	.org 0x0000
                           000080   180 _P0_0	=	0x0080
                           000081   181 _P0_1	=	0x0081
                           000082   182 _P0_2	=	0x0082
                           000083   183 _P0_3	=	0x0083
                           000084   184 _P0_4	=	0x0084
                           000085   185 _P0_5	=	0x0085
                           000086   186 _P0_6	=	0x0086
                           000087   187 _P0_7	=	0x0087
                           000088   188 _IT0	=	0x0088
                           000089   189 _IE0	=	0x0089
                           00008A   190 _IT1	=	0x008a
                           00008B   191 _IE1	=	0x008b
                           00008C   192 _TR0	=	0x008c
                           00008D   193 _TF0	=	0x008d
                           00008E   194 _TR1	=	0x008e
                           00008F   195 _TF1	=	0x008f
                           000090   196 _P1_0	=	0x0090
                           000091   197 _P1_1	=	0x0091
                           000092   198 _P1_2	=	0x0092
                           000093   199 _P1_3	=	0x0093
                           000094   200 _P1_4	=	0x0094
                           000095   201 _P1_5	=	0x0095
                           000096   202 _P1_6	=	0x0096
                           000097   203 _P1_7	=	0x0097
                           000090   204 _T2	=	0x0090
                           000091   205 _T2EX	=	0x0091
                           000098   206 _RI	=	0x0098
                           000099   207 _TI	=	0x0099
                           00009A   208 _RB8	=	0x009a
                           00009B   209 _TB8	=	0x009b
                           00009C   210 _REN	=	0x009c
                           00009D   211 _SM2	=	0x009d
                           00009E   212 _SM1	=	0x009e
                           00009F   213 _SM0	=	0x009f
                           0000A0   214 _P2_0	=	0x00a0
                           0000A1   215 _P2_1	=	0x00a1
                           0000A2   216 _P2_2	=	0x00a2
                           0000A3   217 _P2_3	=	0x00a3
                           0000A4   218 _P2_4	=	0x00a4
                           0000A5   219 _P2_5	=	0x00a5
                           0000A6   220 _P2_6	=	0x00a6
                           0000A7   221 _P2_7	=	0x00a7
                           0000A8   222 _EX0	=	0x00a8
                           0000A9   223 _ET0	=	0x00a9
                           0000AA   224 _EX1	=	0x00aa
                           0000AB   225 _ET1	=	0x00ab
                           0000AC   226 _ES	=	0x00ac
                           0000AD   227 _ET2	=	0x00ad
                           0000AF   228 _EA	=	0x00af
                           0000B0   229 _P3_0	=	0x00b0
                           0000B1   230 _P3_1	=	0x00b1
                           0000B2   231 _P3_2	=	0x00b2
                           0000B3   232 _P3_3	=	0x00b3
                           0000B4   233 _P3_4	=	0x00b4
                           0000B5   234 _P3_5	=	0x00b5
                           0000B6   235 _P3_6	=	0x00b6
                           0000B7   236 _P3_7	=	0x00b7
                           0000B0   237 _RXD	=	0x00b0
                           0000B1   238 _TXD	=	0x00b1
                           0000B2   239 _INT0	=	0x00b2
                           0000B3   240 _INT1	=	0x00b3
                           0000B4   241 _T0	=	0x00b4
                           0000B5   242 _T1	=	0x00b5
                           0000B6   243 _WR	=	0x00b6
                           0000B7   244 _RD	=	0x00b7
                           0000B8   245 _PX0	=	0x00b8
                           0000B9   246 _PT0	=	0x00b9
                           0000BA   247 _PX1	=	0x00ba
                           0000BB   248 _PT1	=	0x00bb
                           0000BC   249 _PS	=	0x00bc
                           0000BD   250 _PT2	=	0x00bd
                           0000C8   251 _T2CON_0	=	0x00c8
                           0000C9   252 _T2CON_1	=	0x00c9
                           0000CA   253 _T2CON_2	=	0x00ca
                           0000CB   254 _T2CON_3	=	0x00cb
                           0000CC   255 _T2CON_4	=	0x00cc
                           0000CD   256 _T2CON_5	=	0x00cd
                           0000CE   257 _T2CON_6	=	0x00ce
                           0000CF   258 _T2CON_7	=	0x00cf
                           0000C8   259 _CP_RL2	=	0x00c8
                           0000C9   260 _C_T2	=	0x00c9
                           0000CA   261 _TR2	=	0x00ca
                           0000CB   262 _EXEN2	=	0x00cb
                           0000CC   263 _TCLK	=	0x00cc
                           0000CD   264 _RCLK	=	0x00cd
                           0000CE   265 _EXF2	=	0x00ce
                           0000CF   266 _TF2	=	0x00cf
                           0000D0   267 _P	=	0x00d0
                           0000D1   268 _FL	=	0x00d1
                           0000D2   269 _OV	=	0x00d2
                           0000D3   270 _RS0	=	0x00d3
                           0000D4   271 _RS1	=	0x00d4
                           0000D5   272 _F0	=	0x00d5
                           0000D6   273 _AC	=	0x00d6
                           0000D7   274 _CY	=	0x00d7
                                    275 ;--------------------------------------------------------
                                    276 ; overlayable register banks
                                    277 ;--------------------------------------------------------
                                    278 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        279 	.ds 8
                                    280 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        281 	.ds 8
                                    282 ;--------------------------------------------------------
                                    283 ; internal ram data
                                    284 ;--------------------------------------------------------
                                    285 	.area DSEG    (DATA)
                                    286 ;--------------------------------------------------------
                                    287 ; overlayable items in internal ram 
                                    288 ;--------------------------------------------------------
                                    289 ;--------------------------------------------------------
                                    290 ; Stack segment in internal ram 
                                    291 ;--------------------------------------------------------
                                    292 	.area	SSEG
      000021                        293 __start__stack:
      000021                        294 	.ds	1
                                    295 
                                    296 ;--------------------------------------------------------
                                    297 ; indirectly addressable internal ram data
                                    298 ;--------------------------------------------------------
                                    299 	.area ISEG    (DATA)
      000011                        300 _i0:
      000011                        301 	.ds 1
      000012                        302 _OE76:
      000012                        303 	.ds 1
                                    304 ;--------------------------------------------------------
                                    305 ; absolute internal ram data
                                    306 ;--------------------------------------------------------
                                    307 	.area IABS    (ABS,DATA)
                                    308 	.area IABS    (ABS,DATA)
                                    309 ;--------------------------------------------------------
                                    310 ; bit data
                                    311 ;--------------------------------------------------------
                                    312 	.area BSEG    (BIT)
                                    313 ;--------------------------------------------------------
                                    314 ; paged external ram data
                                    315 ;--------------------------------------------------------
                                    316 	.area PSEG    (PAG,XDATA)
                                    317 ;--------------------------------------------------------
                                    318 ; external ram data
                                    319 ;--------------------------------------------------------
                                    320 	.area XSEG    (XDATA)
                           008000   321 _RND	=	0x8000
      004300                        322 _g:
      004300                        323 	.ds 9648
      0068B0                        324 _stack:
      0068B0                        325 	.ds 38592
      00FF70                        326 _sp:
      00FF70                        327 	.ds 2
                           00F006   328 _OEreg	=	0xf006
                                    329 ;--------------------------------------------------------
                                    330 ; absolute external ram data
                                    331 ;--------------------------------------------------------
                                    332 	.area XABS    (ABS,XDATA)
                                    333 ;--------------------------------------------------------
                                    334 ; external initialized ram data
                                    335 ;--------------------------------------------------------
                                    336 	.area XISEG   (XDATA)
      00FF72                        337 _neigh:
      00FF72                        338 	.ds 64
                                    339 	.area HOME    (CODE)
                                    340 	.area GSINIT0 (CODE)
                                    341 	.area GSINIT1 (CODE)
                                    342 	.area GSINIT2 (CODE)
                                    343 	.area GSINIT3 (CODE)
                                    344 	.area GSINIT4 (CODE)
                                    345 	.area GSINIT5 (CODE)
                                    346 	.area GSINIT  (CODE)
                                    347 	.area GSFINAL (CODE)
                                    348 	.area CSEG    (CODE)
                                    349 ;--------------------------------------------------------
                                    350 ; interrupt vector 
                                    351 ;--------------------------------------------------------
                                    352 	.area HOME    (CODE)
      002000                        353 __interrupt_vect:
      002000 02 20 09         [24]  354 	ljmp	__sdcc_gsinit_startup
      002003 02 20 7C         [24]  355 	ljmp	_int0
                                    356 ;--------------------------------------------------------
                                    357 ; global & static initialisations
                                    358 ;--------------------------------------------------------
                                    359 	.area HOME    (CODE)
                                    360 	.area GSINIT  (CODE)
                                    361 	.area GSFINAL (CODE)
                                    362 	.area GSINIT  (CODE)
                                    363 	.globl __sdcc_gsinit_startup
                                    364 	.globl __sdcc_program_startup
                                    365 	.globl __start__stack
                                    366 	.globl __mcs51_genXINIT
                                    367 	.globl __mcs51_genXRAMCLEAR
                                    368 	.globl __mcs51_genRAMCLEAR
                                    369 	.area GSFINAL (CODE)
      002062 02 20 06         [24]  370 	ljmp	__sdcc_program_startup
                                    371 ;--------------------------------------------------------
                                    372 ; Home
                                    373 ;--------------------------------------------------------
                                    374 	.area HOME    (CODE)
                                    375 	.area HOME    (CODE)
      002006                        376 __sdcc_program_startup:
      002006 02 26 E6         [24]  377 	ljmp	_main
                                    378 ;	return from main will return to caller
                                    379 ;--------------------------------------------------------
                                    380 ; code
                                    381 ;--------------------------------------------------------
                                    382 	.area CSEG    (CODE)
                                    383 ;------------------------------------------------------------
                                    384 ;Allocation info for local variables in function 'putchar'
                                    385 ;------------------------------------------------------------
                                    386 ;c                         Allocated to registers 
                                    387 ;------------------------------------------------------------
                                    388 ;	walk.c:7: int putchar(int c) __naked {
                                    389 ;	-----------------------------------------
                                    390 ;	 function putchar
                                    391 ;	-----------------------------------------
      002065                        392 _putchar:
                                    393 ;	naked function: no prologue.
                                    394 ;	walk.c:15: __endasm;
      002065 C0 E0            [24]  395 	push	acc
      002067 E5 82            [12]  396 	mov	a, dpl
      002069 12 00 3C         [24]  397 	lcall	0x003c
      00206C D0 E0            [24]  398 	pop	acc
      00206E 22               [24]  399 	ret
                                    400 ;	walk.c:16: }
                                    401 ;	naked function: no epilogue.
                                    402 ;------------------------------------------------------------
                                    403 ;Allocation info for local variables in function 'getchar'
                                    404 ;------------------------------------------------------------
                                    405 ;	walk.c:18: int getchar(void) __naked {
                                    406 ;	-----------------------------------------
                                    407 ;	 function getchar
                                    408 ;	-----------------------------------------
      00206F                        409 _getchar:
                                    410 ;	naked function: no prologue.
                                    411 ;	walk.c:26: __endasm;
      00206F C0 E0            [24]  412 	push	acc
      002071 12 00 36         [24]  413 	lcall	0x0036
      002074 F5 82            [12]  414 	mov	dpl, a
      002076 75 83 00         [24]  415 	mov	dph, #0
      002079 D0 E0            [24]  416 	pop	acc
      00207B 22               [24]  417 	ret
                                    418 ;	walk.c:27: }
                                    419 ;	naked function: no epilogue.
                                    420 ;------------------------------------------------------------
                                    421 ;Allocation info for local variables in function 'int0'
                                    422 ;------------------------------------------------------------
                                    423 ;	walk.c:33: void int0(void) __interrupt IE0_VECTOR __using 1 {
                                    424 ;	-----------------------------------------
                                    425 ;	 function int0
                                    426 ;	-----------------------------------------
      00207C                        427 _int0:
                           00000F   428 	ar7 = 0x0f
                           00000E   429 	ar6 = 0x0e
                           00000D   430 	ar5 = 0x0d
                           00000C   431 	ar4 = 0x0c
                           00000B   432 	ar3 = 0x0b
                           00000A   433 	ar2 = 0x0a
                           000009   434 	ar1 = 0x09
                           000008   435 	ar0 = 0x08
      00207C C0 D0            [24]  436 	push	psw
      00207E 75 D0 08         [24]  437 	mov	psw,#0x08
                                    438 ;	walk.c:34: i0 = 0u;
      002081 78 11            [12]  439 	mov	r0,#_i0
      002083 76 00            [12]  440 	mov	@r0,#0x00
                                    441 ;	walk.c:35: }
      002085 D0 D0            [24]  442 	pop	psw
      002087 32               [24]  443 	reti
                                    444 ;	eliminated unneeded push/pop dpl
                                    445 ;	eliminated unneeded push/pop dph
                                    446 ;	eliminated unneeded push/pop b
                                    447 ;	eliminated unneeded push/pop acc
                                    448 ;------------------------------------------------------------
                                    449 ;Allocation info for local variables in function 'bang'
                                    450 ;------------------------------------------------------------
                                    451 ;	walk.c:41: static void bang(void) {
                                    452 ;	-----------------------------------------
                                    453 ;	 function bang
                                    454 ;	-----------------------------------------
      002088                        455 _bang:
                           000007   456 	ar7 = 0x07
                           000006   457 	ar6 = 0x06
                           000005   458 	ar5 = 0x05
                           000004   459 	ar4 = 0x04
                           000003   460 	ar3 = 0x03
                           000002   461 	ar2 = 0x02
                           000001   462 	ar1 = 0x01
                           000000   463 	ar0 = 0x00
                                    464 ;	walk.c:42: (void)puts("Memory error");
      002088 90 41 6F         [24]  465 	mov	dptr,#___str_0
      00208B 75 F0 80         [24]  466 	mov	b,#0x80
      00208E 12 2D B6         [24]  467 	lcall	_puts
                                    468 ;	walk.c:38: PCON |= 2;
      002091 43 87 02         [24]  469 	orl	_PCON,#0x02
                                    470 ;	walk.c:45: return;
                                    471 ;	walk.c:46: }
      002094 22               [24]  472 	ret
                                    473 ;------------------------------------------------------------
                                    474 ;Allocation info for local variables in function 'setOE'
                                    475 ;------------------------------------------------------------
                                    476 ;mask                      Allocated to registers r7 
                                    477 ;------------------------------------------------------------
                                    478 ;	walk.c:88: static void setOE(uint8_t mask) {
                                    479 ;	-----------------------------------------
                                    480 ;	 function setOE
                                    481 ;	-----------------------------------------
      002095                        482 _setOE:
      002095 AF 82            [24]  483 	mov	r7,dpl
                                    484 ;	walk.c:89: OE76 |= mask;
      002097 78 12            [12]  485 	mov	r0,#_OE76
      002099 EF               [12]  486 	mov	a,r7
      00209A 46               [12]  487 	orl	a,@r0
      00209B F6               [12]  488 	mov	@r0,a
                                    489 ;	walk.c:90: P1_7 = 0;
                                    490 ;	assignBit
      00209C C2 97            [12]  491 	clr	_P1_7
                                    492 ;	walk.c:95: __endasm;
      00209E 00               [12]  493 	nop
      00209F 00               [12]  494 	nop
      0020A0 00               [12]  495 	nop
                                    496 ;	walk.c:96: OEreg = OE76;
      0020A1 78 12            [12]  497 	mov	r0,#_OE76
      0020A3 90 F0 06         [24]  498 	mov	dptr,#_OEreg
      0020A6 E6               [12]  499 	mov	a,@r0
      0020A7 F0               [24]  500 	movx	@dptr,a
                                    501 ;	walk.c:97: P1_7 = 1;
                                    502 ;	assignBit
      0020A8 D2 97            [12]  503 	setb	_P1_7
                                    504 ;	walk.c:102: __endasm;
      0020AA 00               [12]  505 	nop
      0020AB 00               [12]  506 	nop
      0020AC 00               [12]  507 	nop
                                    508 ;	walk.c:104: return;
                                    509 ;	walk.c:105: }
      0020AD 22               [24]  510 	ret
                                    511 ;------------------------------------------------------------
                                    512 ;Allocation info for local variables in function 'unsetOE'
                                    513 ;------------------------------------------------------------
                                    514 ;mask                      Allocated to registers r7 
                                    515 ;------------------------------------------------------------
                                    516 ;	walk.c:107: static void unsetOE(uint8_t mask) {
                                    517 ;	-----------------------------------------
                                    518 ;	 function unsetOE
                                    519 ;	-----------------------------------------
      0020AE                        520 _unsetOE:
                                    521 ;	walk.c:108: OE76 &= ~mask;
      0020AE E5 82            [12]  522 	mov	a,dpl
      0020B0 F4               [12]  523 	cpl	a
      0020B1 FF               [12]  524 	mov	r7,a
      0020B2 78 12            [12]  525 	mov	r0,#_OE76
      0020B4 56               [12]  526 	anl	a,@r0
      0020B5 F6               [12]  527 	mov	@r0,a
                                    528 ;	walk.c:109: P1_7 = 0;
                                    529 ;	assignBit
      0020B6 C2 97            [12]  530 	clr	_P1_7
                                    531 ;	walk.c:114: __endasm;
      0020B8 00               [12]  532 	nop
      0020B9 00               [12]  533 	nop
      0020BA 00               [12]  534 	nop
                                    535 ;	walk.c:115: OEreg = OE76;
      0020BB 78 12            [12]  536 	mov	r0,#_OE76
      0020BD 90 F0 06         [24]  537 	mov	dptr,#_OEreg
      0020C0 E6               [12]  538 	mov	a,@r0
      0020C1 F0               [24]  539 	movx	@dptr,a
                                    540 ;	walk.c:116: P1_7 = 1;
                                    541 ;	assignBit
      0020C2 D2 97            [12]  542 	setb	_P1_7
                                    543 ;	walk.c:121: __endasm;
      0020C4 00               [12]  544 	nop
      0020C5 00               [12]  545 	nop
      0020C6 00               [12]  546 	nop
                                    547 ;	walk.c:123: return;
                                    548 ;	walk.c:124: }
      0020C7 22               [24]  549 	ret
                                    550 ;------------------------------------------------------------
                                    551 ;Allocation info for local variables in function 'flipOE'
                                    552 ;------------------------------------------------------------
                                    553 ;mask                      Allocated to registers r7 
                                    554 ;------------------------------------------------------------
                                    555 ;	walk.c:126: static void flipOE(uint8_t mask) {
                                    556 ;	-----------------------------------------
                                    557 ;	 function flipOE
                                    558 ;	-----------------------------------------
      0020C8                        559 _flipOE:
      0020C8 AF 82            [24]  560 	mov	r7,dpl
                                    561 ;	walk.c:127: OE76 ^= mask;
      0020CA 78 12            [12]  562 	mov	r0,#_OE76
      0020CC EF               [12]  563 	mov	a,r7
      0020CD 66               [12]  564 	xrl	a,@r0
      0020CE F6               [12]  565 	mov	@r0,a
                                    566 ;	walk.c:128: P1_7 = 0;
                                    567 ;	assignBit
      0020CF C2 97            [12]  568 	clr	_P1_7
                                    569 ;	walk.c:133: __endasm;
      0020D1 00               [12]  570 	nop
      0020D2 00               [12]  571 	nop
      0020D3 00               [12]  572 	nop
                                    573 ;	walk.c:134: OEreg = OE76;
      0020D4 78 12            [12]  574 	mov	r0,#_OE76
      0020D6 90 F0 06         [24]  575 	mov	dptr,#_OEreg
      0020D9 E6               [12]  576 	mov	a,@r0
      0020DA F0               [24]  577 	movx	@dptr,a
                                    578 ;	walk.c:135: P1_7 = 1;
                                    579 ;	assignBit
      0020DB D2 97            [12]  580 	setb	_P1_7
                                    581 ;	walk.c:140: __endasm;
      0020DD 00               [12]  582 	nop
      0020DE 00               [12]  583 	nop
      0020DF 00               [12]  584 	nop
                                    585 ;	walk.c:142: return;
                                    586 ;	walk.c:143: }
      0020E0 22               [24]  587 	ret
                                    588 ;------------------------------------------------------------
                                    589 ;Allocation info for local variables in function 'update'
                                    590 ;------------------------------------------------------------
                                    591 ;cur                       Allocated to stack - _bp -5
                                    592 ;j                         Allocated to stack - _bp -6
                                    593 ;t                         Allocated to stack - _bp +1
                                    594 ;sloc0                     Allocated to stack - _bp +4
                                    595 ;sloc1                     Allocated to stack - _bp +6
                                    596 ;sloc2                     Allocated to stack - _bp +8
                                    597 ;------------------------------------------------------------
                                    598 ;	walk.c:145: static uint8_t update(struct node *t, struct node *cur, uint8_t j) {
                                    599 ;	-----------------------------------------
                                    600 ;	 function update
                                    601 ;	-----------------------------------------
      0020E1                        602 _update:
      0020E1 C0 10            [24]  603 	push	_bp
      0020E3 85 81 10         [24]  604 	mov	_bp,sp
      0020E6 C0 82            [24]  605 	push	dpl
      0020E8 C0 83            [24]  606 	push	dph
      0020EA C0 F0            [24]  607 	push	b
      0020EC E5 81            [12]  608 	mov	a,sp
      0020EE 24 07            [12]  609 	add	a,#0x07
      0020F0 F5 81            [12]  610 	mov	sp,a
                                    611 ;	walk.c:146: t->r = cur->r + neigh[j].r;
      0020F2 E5 10            [12]  612 	mov	a,_bp
      0020F4 24 FB            [12]  613 	add	a,#0xfb
      0020F6 F8               [12]  614 	mov	r0,a
      0020F7 86 02            [24]  615 	mov	ar2,@r0
      0020F9 08               [12]  616 	inc	r0
      0020FA 86 03            [24]  617 	mov	ar3,@r0
      0020FC 08               [12]  618 	inc	r0
      0020FD 86 04            [24]  619 	mov	ar4,@r0
      0020FF 8A 82            [24]  620 	mov	dpl,r2
      002101 8B 83            [24]  621 	mov	dph,r3
      002103 8C F0            [24]  622 	mov	b,r4
      002105 E5 10            [12]  623 	mov	a,_bp
      002107 24 04            [12]  624 	add	a,#0x04
      002109 F8               [12]  625 	mov	r0,a
      00210A 12 2E 75         [24]  626 	lcall	__gptrget
      00210D F6               [12]  627 	mov	@r0,a
      00210E A3               [24]  628 	inc	dptr
      00210F 12 2E 75         [24]  629 	lcall	__gptrget
      002112 08               [12]  630 	inc	r0
      002113 F6               [12]  631 	mov	@r0,a
      002114 E5 10            [12]  632 	mov	a,_bp
      002116 24 FA            [12]  633 	add	a,#0xfa
      002118 F8               [12]  634 	mov	r0,a
      002119 E5 10            [12]  635 	mov	a,_bp
      00211B 24 06            [12]  636 	add	a,#0x06
      00211D F9               [12]  637 	mov	r1,a
      00211E E6               [12]  638 	mov	a,@r0
      00211F 75 F0 04         [24]  639 	mov	b,#0x04
      002122 A4               [48]  640 	mul	ab
      002123 F7               [12]  641 	mov	@r1,a
      002124 09               [12]  642 	inc	r1
      002125 A7 F0            [24]  643 	mov	@r1,b
      002127 E5 10            [12]  644 	mov	a,_bp
      002129 24 06            [12]  645 	add	a,#0x06
      00212B F8               [12]  646 	mov	r0,a
      00212C E6               [12]  647 	mov	a,@r0
      00212D 24 72            [12]  648 	add	a,#_neigh
      00212F F5 82            [12]  649 	mov	dpl,a
      002131 08               [12]  650 	inc	r0
      002132 E6               [12]  651 	mov	a,@r0
      002133 34 FF            [12]  652 	addc	a,#(_neigh >> 8)
      002135 F5 83            [12]  653 	mov	dph,a
      002137 E0               [24]  654 	movx	a,@dptr
      002138 FF               [12]  655 	mov	r7,a
      002139 A3               [24]  656 	inc	dptr
      00213A E0               [24]  657 	movx	a,@dptr
      00213B FE               [12]  658 	mov	r6,a
      00213C E5 10            [12]  659 	mov	a,_bp
      00213E 24 04            [12]  660 	add	a,#0x04
      002140 F8               [12]  661 	mov	r0,a
      002141 EF               [12]  662 	mov	a,r7
      002142 26               [12]  663 	add	a,@r0
      002143 FF               [12]  664 	mov	r7,a
      002144 EE               [12]  665 	mov	a,r6
      002145 08               [12]  666 	inc	r0
      002146 36               [12]  667 	addc	a,@r0
      002147 FE               [12]  668 	mov	r6,a
      002148 A8 10            [24]  669 	mov	r0,_bp
      00214A 08               [12]  670 	inc	r0
      00214B 86 82            [24]  671 	mov	dpl,@r0
      00214D 08               [12]  672 	inc	r0
      00214E 86 83            [24]  673 	mov	dph,@r0
      002150 08               [12]  674 	inc	r0
      002151 86 F0            [24]  675 	mov	b,@r0
      002153 EF               [12]  676 	mov	a,r7
      002154 12 2C 6A         [24]  677 	lcall	__gptrput
      002157 A3               [24]  678 	inc	dptr
      002158 EE               [12]  679 	mov	a,r6
      002159 12 2C 6A         [24]  680 	lcall	__gptrput
                                    681 ;	walk.c:147: t->c = cur->c + neigh[j].c;
      00215C A8 10            [24]  682 	mov	r0,_bp
      00215E 08               [12]  683 	inc	r0
      00215F E5 10            [12]  684 	mov	a,_bp
      002161 24 08            [12]  685 	add	a,#0x08
      002163 F9               [12]  686 	mov	r1,a
      002164 74 02            [12]  687 	mov	a,#0x02
      002166 26               [12]  688 	add	a,@r0
      002167 F7               [12]  689 	mov	@r1,a
      002168 E4               [12]  690 	clr	a
      002169 08               [12]  691 	inc	r0
      00216A 36               [12]  692 	addc	a,@r0
      00216B 09               [12]  693 	inc	r1
      00216C F7               [12]  694 	mov	@r1,a
      00216D 08               [12]  695 	inc	r0
      00216E 09               [12]  696 	inc	r1
      00216F E6               [12]  697 	mov	a,@r0
      002170 F7               [12]  698 	mov	@r1,a
      002171 74 02            [12]  699 	mov	a,#0x02
      002173 2A               [12]  700 	add	a,r2
      002174 FA               [12]  701 	mov	r2,a
      002175 E4               [12]  702 	clr	a
      002176 3B               [12]  703 	addc	a,r3
      002177 FB               [12]  704 	mov	r3,a
      002178 8A 82            [24]  705 	mov	dpl,r2
      00217A 8B 83            [24]  706 	mov	dph,r3
      00217C 8C F0            [24]  707 	mov	b,r4
      00217E 12 2E 75         [24]  708 	lcall	__gptrget
      002181 FA               [12]  709 	mov	r2,a
      002182 A3               [24]  710 	inc	dptr
      002183 12 2E 75         [24]  711 	lcall	__gptrget
      002186 FB               [12]  712 	mov	r3,a
      002187 E5 10            [12]  713 	mov	a,_bp
      002189 24 06            [12]  714 	add	a,#0x06
      00218B F8               [12]  715 	mov	r0,a
      00218C E6               [12]  716 	mov	a,@r0
      00218D 24 72            [12]  717 	add	a,#_neigh
      00218F FC               [12]  718 	mov	r4,a
      002190 08               [12]  719 	inc	r0
      002191 E6               [12]  720 	mov	a,@r0
      002192 34 FF            [12]  721 	addc	a,#(_neigh >> 8)
      002194 FD               [12]  722 	mov	r5,a
      002195 8C 82            [24]  723 	mov	dpl,r4
      002197 8D 83            [24]  724 	mov	dph,r5
      002199 A3               [24]  725 	inc	dptr
      00219A A3               [24]  726 	inc	dptr
      00219B E0               [24]  727 	movx	a,@dptr
      00219C FC               [12]  728 	mov	r4,a
      00219D A3               [24]  729 	inc	dptr
      00219E E0               [24]  730 	movx	a,@dptr
      00219F FD               [12]  731 	mov	r5,a
      0021A0 EC               [12]  732 	mov	a,r4
      0021A1 2A               [12]  733 	add	a,r2
      0021A2 FA               [12]  734 	mov	r2,a
      0021A3 ED               [12]  735 	mov	a,r5
      0021A4 3B               [12]  736 	addc	a,r3
      0021A5 FB               [12]  737 	mov	r3,a
      0021A6 E5 10            [12]  738 	mov	a,_bp
      0021A8 24 08            [12]  739 	add	a,#0x08
      0021AA F8               [12]  740 	mov	r0,a
      0021AB 86 82            [24]  741 	mov	dpl,@r0
      0021AD 08               [12]  742 	inc	r0
      0021AE 86 83            [24]  743 	mov	dph,@r0
      0021B0 08               [12]  744 	inc	r0
      0021B1 86 F0            [24]  745 	mov	b,@r0
      0021B3 EA               [12]  746 	mov	a,r2
      0021B4 12 2C 6A         [24]  747 	lcall	__gptrput
      0021B7 A3               [24]  748 	inc	dptr
      0021B8 EB               [12]  749 	mov	a,r3
      0021B9 12 2C 6A         [24]  750 	lcall	__gptrput
                                    751 ;	walk.c:149: if (t->r < 0) t->r += ROWS;
      0021BC A8 10            [24]  752 	mov	r0,_bp
      0021BE 08               [12]  753 	inc	r0
      0021BF 86 82            [24]  754 	mov	dpl,@r0
      0021C1 08               [12]  755 	inc	r0
      0021C2 86 83            [24]  756 	mov	dph,@r0
      0021C4 08               [12]  757 	inc	r0
      0021C5 86 F0            [24]  758 	mov	b,@r0
      0021C7 12 2E 75         [24]  759 	lcall	__gptrget
      0021CA FD               [12]  760 	mov	r5,a
      0021CB A3               [24]  761 	inc	dptr
      0021CC 12 2E 75         [24]  762 	lcall	__gptrget
      0021CF FC               [12]  763 	mov	r4,a
      0021D0 EE               [12]  764 	mov	a,r6
      0021D1 30 E7 1D         [24]  765 	jnb	acc.7,00104$
      0021D4 74 30            [12]  766 	mov	a,#0x30
      0021D6 2D               [12]  767 	add	a,r5
      0021D7 FF               [12]  768 	mov	r7,a
      0021D8 E4               [12]  769 	clr	a
      0021D9 3C               [12]  770 	addc	a,r4
      0021DA FE               [12]  771 	mov	r6,a
      0021DB A8 10            [24]  772 	mov	r0,_bp
      0021DD 08               [12]  773 	inc	r0
      0021DE 86 82            [24]  774 	mov	dpl,@r0
      0021E0 08               [12]  775 	inc	r0
      0021E1 86 83            [24]  776 	mov	dph,@r0
      0021E3 08               [12]  777 	inc	r0
      0021E4 86 F0            [24]  778 	mov	b,@r0
      0021E6 EF               [12]  779 	mov	a,r7
      0021E7 12 2C 6A         [24]  780 	lcall	__gptrput
      0021EA A3               [24]  781 	inc	dptr
      0021EB EE               [12]  782 	mov	a,r6
      0021EC 12 2C 6A         [24]  783 	lcall	__gptrput
      0021EF 80 27            [24]  784 	sjmp	00105$
      0021F1                        785 00104$:
                                    786 ;	walk.c:150: else if (t->r >= ROWS) t->r -= ROWS;
      0021F1 C3               [12]  787 	clr	c
      0021F2 ED               [12]  788 	mov	a,r5
      0021F3 94 30            [12]  789 	subb	a,#0x30
      0021F5 EC               [12]  790 	mov	a,r4
      0021F6 64 80            [12]  791 	xrl	a,#0x80
      0021F8 94 80            [12]  792 	subb	a,#0x80
      0021FA 40 1C            [24]  793 	jc	00105$
      0021FC ED               [12]  794 	mov	a,r5
      0021FD 24 D0            [12]  795 	add	a,#0xd0
      0021FF FD               [12]  796 	mov	r5,a
      002200 EC               [12]  797 	mov	a,r4
      002201 34 FF            [12]  798 	addc	a,#0xff
      002203 FC               [12]  799 	mov	r4,a
      002204 A8 10            [24]  800 	mov	r0,_bp
      002206 08               [12]  801 	inc	r0
      002207 86 82            [24]  802 	mov	dpl,@r0
      002209 08               [12]  803 	inc	r0
      00220A 86 83            [24]  804 	mov	dph,@r0
      00220C 08               [12]  805 	inc	r0
      00220D 86 F0            [24]  806 	mov	b,@r0
      00220F ED               [12]  807 	mov	a,r5
      002210 12 2C 6A         [24]  808 	lcall	__gptrput
      002213 A3               [24]  809 	inc	dptr
      002214 EC               [12]  810 	mov	a,r4
      002215 12 2C 6A         [24]  811 	lcall	__gptrput
      002218                        812 00105$:
                                    813 ;	walk.c:151: if (t->c < 0) t->c += COLS;
      002218 E5 10            [12]  814 	mov	a,_bp
      00221A 24 08            [12]  815 	add	a,#0x08
      00221C F8               [12]  816 	mov	r0,a
      00221D 86 82            [24]  817 	mov	dpl,@r0
      00221F 08               [12]  818 	inc	r0
      002220 86 83            [24]  819 	mov	dph,@r0
      002222 08               [12]  820 	inc	r0
      002223 86 F0            [24]  821 	mov	b,@r0
      002225 12 2E 75         [24]  822 	lcall	__gptrget
      002228 A3               [24]  823 	inc	dptr
      002229 12 2E 75         [24]  824 	lcall	__gptrget
      00222C 30 E7 35         [24]  825 	jnb	acc.7,00109$
      00222F E5 10            [12]  826 	mov	a,_bp
      002231 24 08            [12]  827 	add	a,#0x08
      002233 F8               [12]  828 	mov	r0,a
      002234 86 82            [24]  829 	mov	dpl,@r0
      002236 08               [12]  830 	inc	r0
      002237 86 83            [24]  831 	mov	dph,@r0
      002239 08               [12]  832 	inc	r0
      00223A 86 F0            [24]  833 	mov	b,@r0
      00223C 12 2E 75         [24]  834 	lcall	__gptrget
      00223F FE               [12]  835 	mov	r6,a
      002240 A3               [24]  836 	inc	dptr
      002241 12 2E 75         [24]  837 	lcall	__gptrget
      002244 FF               [12]  838 	mov	r7,a
      002245 74 C9            [12]  839 	mov	a,#0xc9
      002247 2E               [12]  840 	add	a,r6
      002248 FE               [12]  841 	mov	r6,a
      002249 E4               [12]  842 	clr	a
      00224A 3F               [12]  843 	addc	a,r7
      00224B FF               [12]  844 	mov	r7,a
      00224C E5 10            [12]  845 	mov	a,_bp
      00224E 24 08            [12]  846 	add	a,#0x08
      002250 F8               [12]  847 	mov	r0,a
      002251 86 82            [24]  848 	mov	dpl,@r0
      002253 08               [12]  849 	inc	r0
      002254 86 83            [24]  850 	mov	dph,@r0
      002256 08               [12]  851 	inc	r0
      002257 86 F0            [24]  852 	mov	b,@r0
      002259 EE               [12]  853 	mov	a,r6
      00225A 12 2C 6A         [24]  854 	lcall	__gptrput
      00225D A3               [24]  855 	inc	dptr
      00225E EF               [12]  856 	mov	a,r7
      00225F 12 2C 6A         [24]  857 	lcall	__gptrput
      002262 80 55            [24]  858 	sjmp	00110$
      002264                        859 00109$:
                                    860 ;	walk.c:152: else if (t->c >= COLS) t->c -= COLS;
      002264 E5 10            [12]  861 	mov	a,_bp
      002266 24 08            [12]  862 	add	a,#0x08
      002268 F8               [12]  863 	mov	r0,a
      002269 86 82            [24]  864 	mov	dpl,@r0
      00226B 08               [12]  865 	inc	r0
      00226C 86 83            [24]  866 	mov	dph,@r0
      00226E 08               [12]  867 	inc	r0
      00226F 86 F0            [24]  868 	mov	b,@r0
      002271 12 2E 75         [24]  869 	lcall	__gptrget
      002274 FE               [12]  870 	mov	r6,a
      002275 A3               [24]  871 	inc	dptr
      002276 12 2E 75         [24]  872 	lcall	__gptrget
      002279 FF               [12]  873 	mov	r7,a
      00227A C3               [12]  874 	clr	c
      00227B EE               [12]  875 	mov	a,r6
      00227C 94 C9            [12]  876 	subb	a,#0xc9
      00227E EF               [12]  877 	mov	a,r7
      00227F 64 80            [12]  878 	xrl	a,#0x80
      002281 94 80            [12]  879 	subb	a,#0x80
      002283 40 34            [24]  880 	jc	00110$
      002285 E5 10            [12]  881 	mov	a,_bp
      002287 24 08            [12]  882 	add	a,#0x08
      002289 F8               [12]  883 	mov	r0,a
      00228A 86 82            [24]  884 	mov	dpl,@r0
      00228C 08               [12]  885 	inc	r0
      00228D 86 83            [24]  886 	mov	dph,@r0
      00228F 08               [12]  887 	inc	r0
      002290 86 F0            [24]  888 	mov	b,@r0
      002292 12 2E 75         [24]  889 	lcall	__gptrget
      002295 FE               [12]  890 	mov	r6,a
      002296 A3               [24]  891 	inc	dptr
      002297 12 2E 75         [24]  892 	lcall	__gptrget
      00229A FF               [12]  893 	mov	r7,a
      00229B EE               [12]  894 	mov	a,r6
      00229C 24 37            [12]  895 	add	a,#0x37
      00229E FE               [12]  896 	mov	r6,a
      00229F EF               [12]  897 	mov	a,r7
      0022A0 34 FF            [12]  898 	addc	a,#0xff
      0022A2 FF               [12]  899 	mov	r7,a
      0022A3 E5 10            [12]  900 	mov	a,_bp
      0022A5 24 08            [12]  901 	add	a,#0x08
      0022A7 F8               [12]  902 	mov	r0,a
      0022A8 86 82            [24]  903 	mov	dpl,@r0
      0022AA 08               [12]  904 	inc	r0
      0022AB 86 83            [24]  905 	mov	dph,@r0
      0022AD 08               [12]  906 	inc	r0
      0022AE 86 F0            [24]  907 	mov	b,@r0
      0022B0 EE               [12]  908 	mov	a,r6
      0022B1 12 2C 6A         [24]  909 	lcall	__gptrput
      0022B4 A3               [24]  910 	inc	dptr
      0022B5 EF               [12]  911 	mov	a,r7
      0022B6 12 2C 6A         [24]  912 	lcall	__gptrput
      0022B9                        913 00110$:
                                    914 ;	walk.c:154: if (g[t->r][t->c] == 0xaau) return 0u;
      0022B9 A8 10            [24]  915 	mov	r0,_bp
      0022BB 08               [12]  916 	inc	r0
      0022BC 86 82            [24]  917 	mov	dpl,@r0
      0022BE 08               [12]  918 	inc	r0
      0022BF 86 83            [24]  919 	mov	dph,@r0
      0022C1 08               [12]  920 	inc	r0
      0022C2 86 F0            [24]  921 	mov	b,@r0
      0022C4 12 2E 75         [24]  922 	lcall	__gptrget
      0022C7 FE               [12]  923 	mov	r6,a
      0022C8 A3               [24]  924 	inc	dptr
      0022C9 12 2E 75         [24]  925 	lcall	__gptrget
      0022CC FF               [12]  926 	mov	r7,a
      0022CD C0 06            [24]  927 	push	ar6
      0022CF C0 07            [24]  928 	push	ar7
      0022D1 90 00 C9         [24]  929 	mov	dptr,#0x00c9
      0022D4 12 2C 85         [24]  930 	lcall	__mulint
      0022D7 AE 82            [24]  931 	mov	r6,dpl
      0022D9 AF 83            [24]  932 	mov	r7,dph
      0022DB 15 81            [12]  933 	dec	sp
      0022DD 15 81            [12]  934 	dec	sp
      0022DF EE               [12]  935 	mov	a,r6
      0022E0 24 00            [12]  936 	add	a,#_g
      0022E2 FE               [12]  937 	mov	r6,a
      0022E3 EF               [12]  938 	mov	a,r7
      0022E4 34 43            [12]  939 	addc	a,#(_g >> 8)
      0022E6 FF               [12]  940 	mov	r7,a
      0022E7 E5 10            [12]  941 	mov	a,_bp
      0022E9 24 08            [12]  942 	add	a,#0x08
      0022EB F8               [12]  943 	mov	r0,a
      0022EC 86 82            [24]  944 	mov	dpl,@r0
      0022EE 08               [12]  945 	inc	r0
      0022EF 86 83            [24]  946 	mov	dph,@r0
      0022F1 08               [12]  947 	inc	r0
      0022F2 86 F0            [24]  948 	mov	b,@r0
      0022F4 12 2E 75         [24]  949 	lcall	__gptrget
      0022F7 FC               [12]  950 	mov	r4,a
      0022F8 A3               [24]  951 	inc	dptr
      0022F9 12 2E 75         [24]  952 	lcall	__gptrget
      0022FC FD               [12]  953 	mov	r5,a
      0022FD EC               [12]  954 	mov	a,r4
      0022FE 2E               [12]  955 	add	a,r6
      0022FF F5 82            [12]  956 	mov	dpl,a
      002301 ED               [12]  957 	mov	a,r5
      002302 3F               [12]  958 	addc	a,r7
      002303 F5 83            [12]  959 	mov	dph,a
      002305 E0               [24]  960 	movx	a,@dptr
      002306 FF               [12]  961 	mov	r7,a
      002307 BF AA 05         [24]  962 	cjne	r7,#0xaa,00114$
      00230A 75 82 00         [24]  963 	mov	dpl,#0x00
      00230D 80 59            [24]  964 	sjmp	00116$
      00230F                        965 00114$:
                                    966 ;	walk.c:155: else if (g[t->r][t->c] != 0x55u) bang();
      00230F A8 10            [24]  967 	mov	r0,_bp
      002311 08               [12]  968 	inc	r0
      002312 86 82            [24]  969 	mov	dpl,@r0
      002314 08               [12]  970 	inc	r0
      002315 86 83            [24]  971 	mov	dph,@r0
      002317 08               [12]  972 	inc	r0
      002318 86 F0            [24]  973 	mov	b,@r0
      00231A 12 2E 75         [24]  974 	lcall	__gptrget
      00231D FE               [12]  975 	mov	r6,a
      00231E A3               [24]  976 	inc	dptr
      00231F 12 2E 75         [24]  977 	lcall	__gptrget
      002322 FF               [12]  978 	mov	r7,a
      002323 C0 06            [24]  979 	push	ar6
      002325 C0 07            [24]  980 	push	ar7
      002327 90 00 C9         [24]  981 	mov	dptr,#0x00c9
      00232A 12 2C 85         [24]  982 	lcall	__mulint
      00232D AE 82            [24]  983 	mov	r6,dpl
      00232F AF 83            [24]  984 	mov	r7,dph
      002331 15 81            [12]  985 	dec	sp
      002333 15 81            [12]  986 	dec	sp
      002335 EE               [12]  987 	mov	a,r6
      002336 24 00            [12]  988 	add	a,#_g
      002338 FE               [12]  989 	mov	r6,a
      002339 EF               [12]  990 	mov	a,r7
      00233A 34 43            [12]  991 	addc	a,#(_g >> 8)
      00233C FF               [12]  992 	mov	r7,a
      00233D E5 10            [12]  993 	mov	a,_bp
      00233F 24 08            [12]  994 	add	a,#0x08
      002341 F8               [12]  995 	mov	r0,a
      002342 86 82            [24]  996 	mov	dpl,@r0
      002344 08               [12]  997 	inc	r0
      002345 86 83            [24]  998 	mov	dph,@r0
      002347 08               [12]  999 	inc	r0
      002348 86 F0            [24] 1000 	mov	b,@r0
      00234A 12 2E 75         [24] 1001 	lcall	__gptrget
      00234D FC               [12] 1002 	mov	r4,a
      00234E A3               [24] 1003 	inc	dptr
      00234F 12 2E 75         [24] 1004 	lcall	__gptrget
      002352 FD               [12] 1005 	mov	r5,a
      002353 EC               [12] 1006 	mov	a,r4
      002354 2E               [12] 1007 	add	a,r6
      002355 F5 82            [12] 1008 	mov	dpl,a
      002357 ED               [12] 1009 	mov	a,r5
      002358 3F               [12] 1010 	addc	a,r7
      002359 F5 83            [12] 1011 	mov	dph,a
      00235B E0               [24] 1012 	movx	a,@dptr
      00235C FF               [12] 1013 	mov	r7,a
      00235D BF 55 02         [24] 1014 	cjne	r7,#0x55,00148$
      002360 80 03            [24] 1015 	sjmp	00115$
      002362                       1016 00148$:
      002362 12 20 88         [24] 1017 	lcall	_bang
      002365                       1018 00115$:
                                   1019 ;	walk.c:157: return 1u;
      002365 75 82 01         [24] 1020 	mov	dpl,#0x01
      002368                       1021 00116$:
                                   1022 ;	walk.c:158: }
      002368 85 10 81         [24] 1023 	mov	sp,_bp
      00236B D0 10            [24] 1024 	pop	_bp
      00236D 22               [24] 1025 	ret
                                   1026 ;------------------------------------------------------------
                                   1027 ;Allocation info for local variables in function 'walk'
                                   1028 ;------------------------------------------------------------
                                   1029 ;nstart                    Allocated to registers 
                                   1030 ;cur                       Allocated to stack - _bp +10
                                   1031 ;t                         Allocated to stack - _bp +14
                                   1032 ;j                         Allocated to stack - _bp +18
                                   1033 ;f                         Allocated to registers r3 
                                   1034 ;sloc0                     Allocated to stack - _bp +1
                                   1035 ;sloc1                     Allocated to stack - _bp +2
                                   1036 ;sloc2                     Allocated to stack - _bp +3
                                   1037 ;sloc3                     Allocated to stack - _bp +17
                                   1038 ;sloc4                     Allocated to stack - _bp +4
                                   1039 ;sloc5                     Allocated to stack - _bp +5
                                   1040 ;sloc6                     Allocated to stack - _bp +6
                                   1041 ;sloc7                     Allocated to stack - _bp +7
                                   1042 ;------------------------------------------------------------
                                   1043 ;	walk.c:160: static void walk(struct node *nstart) {
                                   1044 ;	-----------------------------------------
                                   1045 ;	 function walk
                                   1046 ;	-----------------------------------------
      00236E                       1047 _walk:
      00236E C0 10            [24] 1048 	push	_bp
      002370 E5 81            [12] 1049 	mov	a,sp
      002372 F5 10            [12] 1050 	mov	_bp,a
      002374 24 12            [12] 1051 	add	a,#0x12
      002376 F5 81            [12] 1052 	mov	sp,a
      002378 AD 82            [24] 1053 	mov	r5,dpl
      00237A AE 83            [24] 1054 	mov	r6,dph
      00237C AF F0            [24] 1055 	mov	r7,b
                                   1056 ;	walk.c:164: cur = *nstart;
      00237E E5 10            [12] 1057 	mov	a,_bp
      002380 24 0A            [12] 1058 	add	a,#0x0a
      002382 F9               [12] 1059 	mov	r1,a
      002383 FA               [12] 1060 	mov	r2,a
      002384 7B 00            [12] 1061 	mov	r3,#0x00
      002386 7C 40            [12] 1062 	mov	r4,#0x40
      002388 C0 01            [24] 1063 	push	ar1
      00238A 74 04            [12] 1064 	mov	a,#0x04
      00238C C0 E0            [24] 1065 	push	acc
      00238E E4               [12] 1066 	clr	a
      00238F C0 E0            [24] 1067 	push	acc
      002391 C0 05            [24] 1068 	push	ar5
      002393 C0 06            [24] 1069 	push	ar6
      002395 C0 07            [24] 1070 	push	ar7
      002397 8A 82            [24] 1071 	mov	dpl,r2
      002399 8B 83            [24] 1072 	mov	dph,r3
      00239B 8C F0            [24] 1073 	mov	b,r4
      00239D 12 2D 23         [24] 1074 	lcall	___memcpy
      0023A0 E5 81            [12] 1075 	mov	a,sp
      0023A2 24 FB            [12] 1076 	add	a,#0xfb
      0023A4 F5 81            [12] 1077 	mov	sp,a
      0023A6 D0 01            [24] 1078 	pop	ar1
                                   1079 ;	walk.c:166: process:
      0023A8 E5 10            [12] 1080 	mov	a,_bp
      0023AA 24 06            [12] 1081 	add	a,#0x06
      0023AC F8               [12] 1082 	mov	r0,a
      0023AD A6 01            [24] 1083 	mov	@r0,ar1
      0023AF E5 10            [12] 1084 	mov	a,_bp
      0023B1 24 0E            [12] 1085 	add	a,#0x0e
      0023B3 FE               [12] 1086 	mov	r6,a
      0023B4 E5 10            [12] 1087 	mov	a,_bp
      0023B6 24 03            [12] 1088 	add	a,#0x03
      0023B8 F8               [12] 1089 	mov	r0,a
      0023B9 A6 01            [24] 1090 	mov	@r0,ar1
      0023BB E5 10            [12] 1091 	mov	a,_bp
      0023BD 24 05            [12] 1092 	add	a,#0x05
      0023BF F8               [12] 1093 	mov	r0,a
      0023C0 A6 01            [24] 1094 	mov	@r0,ar1
      0023C2 E5 10            [12] 1095 	mov	a,_bp
      0023C4 24 04            [12] 1096 	add	a,#0x04
      0023C6 F8               [12] 1097 	mov	r0,a
      0023C7 A6 06            [24] 1098 	mov	@r0,ar6
      0023C9 89 02            [24] 1099 	mov	ar2,r1
      0023CB A8 10            [24] 1100 	mov	r0,_bp
      0023CD 08               [12] 1101 	inc	r0
      0023CE A6 06            [24] 1102 	mov	@r0,ar6
      0023D0 A8 10            [24] 1103 	mov	r0,_bp
      0023D2 08               [12] 1104 	inc	r0
      0023D3 08               [12] 1105 	inc	r0
      0023D4 A6 01            [24] 1106 	mov	@r0,ar1
      0023D6 74 02            [12] 1107 	mov	a,#0x02
      0023D8 29               [12] 1108 	add	a,r1
      0023D9 F8               [12] 1109 	mov	r0,a
      0023DA                       1110 00101$:
                                   1111 ;	walk.c:167: g[cur.r][cur.c] = 0xaau;
      0023DA C0 02            [24] 1112 	push	ar2
      0023DC 87 02            [24] 1113 	mov	ar2,@r1
      0023DE 09               [12] 1114 	inc	r1
      0023DF 87 05            [24] 1115 	mov	ar5,@r1
      0023E1 19               [12] 1116 	dec	r1
      0023E2 C0 06            [24] 1117 	push	ar6
      0023E4 C0 01            [24] 1118 	push	ar1
      0023E6 C0 00            [24] 1119 	push	ar0
      0023E8 C0 02            [24] 1120 	push	ar2
      0023EA C0 05            [24] 1121 	push	ar5
      0023EC 90 00 C9         [24] 1122 	mov	dptr,#0x00c9
      0023EF 12 2C 85         [24] 1123 	lcall	__mulint
      0023F2 AA 82            [24] 1124 	mov	r2,dpl
      0023F4 AD 83            [24] 1125 	mov	r5,dph
      0023F6 15 81            [12] 1126 	dec	sp
      0023F8 15 81            [12] 1127 	dec	sp
      0023FA D0 00            [24] 1128 	pop	ar0
      0023FC D0 01            [24] 1129 	pop	ar1
      0023FE EA               [12] 1130 	mov	a,r2
      0023FF 24 00            [12] 1131 	add	a,#_g
      002401 FF               [12] 1132 	mov	r7,a
      002402 ED               [12] 1133 	mov	a,r5
      002403 34 43            [12] 1134 	addc	a,#(_g >> 8)
      002405 FC               [12] 1135 	mov	r4,a
      002406 86 02            [24] 1136 	mov	ar2,@r0
      002408 08               [12] 1137 	inc	r0
      002409 86 05            [24] 1138 	mov	ar5,@r0
      00240B 18               [12] 1139 	dec	r0
      00240C EA               [12] 1140 	mov	a,r2
      00240D 2F               [12] 1141 	add	a,r7
      00240E F5 82            [12] 1142 	mov	dpl,a
      002410 ED               [12] 1143 	mov	a,r5
      002411 3C               [12] 1144 	addc	a,r4
      002412 F5 83            [12] 1145 	mov	dph,a
      002414 74 AA            [12] 1146 	mov	a,#0xaa
      002416 F0               [24] 1147 	movx	@dptr,a
                                   1148 ;	walk.c:169: printf("\033[%d;%dHo", cur.r + 4, cur.c + 1);
      002417 86 02            [24] 1149 	mov	ar2,@r0
      002419 08               [12] 1150 	inc	r0
      00241A 86 05            [24] 1151 	mov	ar5,@r0
      00241C 18               [12] 1152 	dec	r0
      00241D 74 01            [12] 1153 	mov	a,#0x01
      00241F 2A               [12] 1154 	add	a,r2
      002420 FF               [12] 1155 	mov	r7,a
      002421 E4               [12] 1156 	clr	a
      002422 3D               [12] 1157 	addc	a,r5
      002423 FC               [12] 1158 	mov	r4,a
      002424 87 02            [24] 1159 	mov	ar2,@r1
      002426 09               [12] 1160 	inc	r1
      002427 87 05            [24] 1161 	mov	ar5,@r1
      002429 19               [12] 1162 	dec	r1
      00242A 74 04            [12] 1163 	mov	a,#0x04
      00242C 2A               [12] 1164 	add	a,r2
      00242D FA               [12] 1165 	mov	r2,a
      00242E E4               [12] 1166 	clr	a
      00242F 3D               [12] 1167 	addc	a,r5
      002430 FD               [12] 1168 	mov	r5,a
      002431 C0 02            [24] 1169 	push	ar2
      002433 C0 01            [24] 1170 	push	ar1
      002435 C0 00            [24] 1171 	push	ar0
      002437 C0 07            [24] 1172 	push	ar7
      002439 C0 04            [24] 1173 	push	ar4
      00243B C0 02            [24] 1174 	push	ar2
      00243D C0 05            [24] 1175 	push	ar5
      00243F 74 7C            [12] 1176 	mov	a,#___str_1
      002441 C0 E0            [24] 1177 	push	acc
      002443 74 41            [12] 1178 	mov	a,#(___str_1 >> 8)
      002445 C0 E0            [24] 1179 	push	acc
      002447 74 80            [12] 1180 	mov	a,#0x80
      002449 C0 E0            [24] 1181 	push	acc
      00244B 12 2E 3C         [24] 1182 	lcall	_printf
      00244E E5 81            [12] 1183 	mov	a,sp
      002450 24 F9            [12] 1184 	add	a,#0xf9
      002452 F5 81            [12] 1185 	mov	sp,a
                                   1186 ;	walk.c:170: setOE(OE76_MASK7);
      002454 75 82 80         [24] 1187 	mov	dpl,#0x80
      002457 12 20 95         [24] 1188 	lcall	_setOE
      00245A D0 00            [24] 1189 	pop	ar0
      00245C D0 01            [24] 1190 	pop	ar1
      00245E D0 02            [24] 1191 	pop	ar2
      002460 D0 06            [24] 1192 	pop	ar6
                                   1193 ;	walk.c:198: return;
      002462 D0 02            [24] 1194 	pop	ar2
                                   1195 ;	walk.c:172: next:
      002464                       1196 00102$:
                                   1197 ;	walk.c:173: printf("\033[2;1H% 8d% 8d% 8d", sp, cur.r, cur.c);
      002464 C0 02            [24] 1198 	push	ar2
      002466 86 07            [24] 1199 	mov	ar7,@r0
      002468 08               [12] 1200 	inc	r0
      002469 86 04            [24] 1201 	mov	ar4,@r0
      00246B 18               [12] 1202 	dec	r0
      00246C 87 02            [24] 1203 	mov	ar2,@r1
      00246E 09               [12] 1204 	inc	r1
      00246F 87 05            [24] 1205 	mov	ar5,@r1
      002471 19               [12] 1206 	dec	r1
      002472 C0 06            [24] 1207 	push	ar6
      002474 C0 02            [24] 1208 	push	ar2
      002476 C0 01            [24] 1209 	push	ar1
      002478 C0 00            [24] 1210 	push	ar0
      00247A C0 07            [24] 1211 	push	ar7
      00247C C0 04            [24] 1212 	push	ar4
      00247E C0 02            [24] 1213 	push	ar2
      002480 C0 05            [24] 1214 	push	ar5
      002482 90 FF 70         [24] 1215 	mov	dptr,#_sp
      002485 E0               [24] 1216 	movx	a,@dptr
      002486 C0 E0            [24] 1217 	push	acc
      002488 A3               [24] 1218 	inc	dptr
      002489 E0               [24] 1219 	movx	a,@dptr
      00248A C0 E0            [24] 1220 	push	acc
      00248C 74 86            [12] 1221 	mov	a,#___str_2
      00248E C0 E0            [24] 1222 	push	acc
      002490 74 41            [12] 1223 	mov	a,#(___str_2 >> 8)
      002492 C0 E0            [24] 1224 	push	acc
      002494 74 80            [12] 1225 	mov	a,#0x80
      002496 C0 E0            [24] 1226 	push	acc
      002498 12 2E 3C         [24] 1227 	lcall	_printf
      00249B E5 81            [12] 1228 	mov	a,sp
      00249D 24 F7            [12] 1229 	add	a,#0xf7
      00249F F5 81            [12] 1230 	mov	sp,a
                                   1231 ;	walk.c:174: unsetOE(OE76_MASK7 | OE76_MASK6);
      0024A1 75 82 C0         [24] 1232 	mov	dpl,#0xc0
      0024A4 12 20 AE         [24] 1233 	lcall	_unsetOE
      0024A7 D0 00            [24] 1234 	pop	ar0
      0024A9 D0 01            [24] 1235 	pop	ar1
      0024AB D0 02            [24] 1236 	pop	ar2
      0024AD D0 06            [24] 1237 	pop	ar6
                                   1238 ;	walk.c:176: for (j = 0u, f = 0u; j < NMAX; j++) {
      0024AF 7B 00            [12] 1239 	mov	r3,#0x00
      0024B1 C0 00            [24] 1240 	push	ar0
      0024B3 E5 10            [12] 1241 	mov	a,_bp
      0024B5 24 12            [12] 1242 	add	a,#0x12
      0024B7 F8               [12] 1243 	mov	r0,a
      0024B8 76 00            [12] 1244 	mov	@r0,#0x00
      0024BA D0 00            [24] 1245 	pop	ar0
                                   1246 ;	walk.c:198: return;
      0024BC D0 02            [24] 1247 	pop	ar2
                                   1248 ;	walk.c:176: for (j = 0u, f = 0u; j < NMAX; j++) {
      0024BE                       1249 00119$:
      0024BE C0 00            [24] 1250 	push	ar0
      0024C0 E5 10            [12] 1251 	mov	a,_bp
      0024C2 24 12            [12] 1252 	add	a,#0x12
      0024C4 F8               [12] 1253 	mov	r0,a
      0024C5 B6 10 00         [24] 1254 	cjne	@r0,#0x10,00159$
      0024C8                       1255 00159$:
      0024C8 D0 00            [24] 1256 	pop	ar0
      0024CA 50 7A            [24] 1257 	jnc	00106$
                                   1258 ;	walk.c:177: if (!update(&t, &cur, j)) continue;
      0024CC C0 02            [24] 1259 	push	ar2
      0024CE C0 00            [24] 1260 	push	ar0
      0024D0 E5 10            [12] 1261 	mov	a,_bp
      0024D2 24 06            [12] 1262 	add	a,#0x06
      0024D4 F8               [12] 1263 	mov	r0,a
      0024D5 C0 01            [24] 1264 	push	ar1
      0024D7 E5 10            [12] 1265 	mov	a,_bp
      0024D9 24 07            [12] 1266 	add	a,#0x07
      0024DB F9               [12] 1267 	mov	r1,a
      0024DC E6               [12] 1268 	mov	a,@r0
      0024DD F7               [12] 1269 	mov	@r1,a
      0024DE 09               [12] 1270 	inc	r1
      0024DF 77 00            [12] 1271 	mov	@r1,#0x00
      0024E1 09               [12] 1272 	inc	r1
      0024E2 77 40            [12] 1273 	mov	@r1,#0x40
      0024E4 D0 01            [24] 1274 	pop	ar1
      0024E6 D0 00            [24] 1275 	pop	ar0
      0024E8 8E 04            [24] 1276 	mov	ar4,r6
      0024EA 7D 00            [12] 1277 	mov	r5,#0x00
      0024EC 7F 40            [12] 1278 	mov	r7,#0x40
      0024EE C0 06            [24] 1279 	push	ar6
      0024F0 C0 03            [24] 1280 	push	ar3
      0024F2 C0 02            [24] 1281 	push	ar2
      0024F4 C0 01            [24] 1282 	push	ar1
      0024F6 C0 00            [24] 1283 	push	ar0
      0024F8 85 00 F0         [24] 1284 	mov	b,ar0
      0024FB E5 10            [12] 1285 	mov	a,_bp
      0024FD 24 12            [12] 1286 	add	a,#0x12
      0024FF F8               [12] 1287 	mov	r0,a
      002500 E6               [12] 1288 	mov	a,@r0
      002501 C0 E0            [24] 1289 	push	acc
      002503 A8 F0            [24] 1290 	mov	r0,b
      002505 85 00 F0         [24] 1291 	mov	b,ar0
      002508 E5 10            [12] 1292 	mov	a,_bp
      00250A 24 07            [12] 1293 	add	a,#0x07
      00250C F8               [12] 1294 	mov	r0,a
      00250D E6               [12] 1295 	mov	a,@r0
      00250E C0 E0            [24] 1296 	push	acc
      002510 08               [12] 1297 	inc	r0
      002511 E6               [12] 1298 	mov	a,@r0
      002512 C0 E0            [24] 1299 	push	acc
      002514 08               [12] 1300 	inc	r0
      002515 E6               [12] 1301 	mov	a,@r0
      002516 C0 E0            [24] 1302 	push	acc
      002518 8C 82            [24] 1303 	mov	dpl,r4
      00251A 8D 83            [24] 1304 	mov	dph,r5
      00251C 8F F0            [24] 1305 	mov	b,r7
      00251E 12 20 E1         [24] 1306 	lcall	_update
      002521 AF 82            [24] 1307 	mov	r7,dpl
      002523 E5 81            [12] 1308 	mov	a,sp
      002525 24 FC            [12] 1309 	add	a,#0xfc
      002527 F5 81            [12] 1310 	mov	sp,a
      002529 D0 00            [24] 1311 	pop	ar0
      00252B D0 01            [24] 1312 	pop	ar1
      00252D D0 02            [24] 1313 	pop	ar2
      00252F D0 03            [24] 1314 	pop	ar3
      002531 D0 06            [24] 1315 	pop	ar6
      002533 D0 02            [24] 1316 	pop	ar2
      002535 EF               [12] 1317 	mov	a,r7
      002536 60 01            [24] 1318 	jz	00105$
                                   1319 ;	walk.c:178: f++;
      002538 0B               [12] 1320 	inc	r3
      002539                       1321 00105$:
                                   1322 ;	walk.c:176: for (j = 0u, f = 0u; j < NMAX; j++) {
      002539 C0 00            [24] 1323 	push	ar0
      00253B E5 10            [12] 1324 	mov	a,_bp
      00253D 24 12            [12] 1325 	add	a,#0x12
      00253F F8               [12] 1326 	mov	r0,a
      002540 06               [12] 1327 	inc	@r0
      002541 D0 00            [24] 1328 	pop	ar0
      002543 02 24 BE         [24] 1329 	ljmp	00119$
      002546                       1330 00106$:
                                   1331 ;	walk.c:181: if (f) {
      002546 EB               [12] 1332 	mov	a,r3
      002547 70 03            [24] 1333 	jnz	00162$
      002549 02 26 60         [24] 1334 	ljmp	00115$
      00254C                       1335 00162$:
                                   1336 ;	walk.c:182: while (1) {
      00254C                       1337 00112$:
                                   1338 ;	walk.c:183: j = (uint8_t)(rand() % NMAX);
      00254C C0 02            [24] 1339 	push	ar2
      00254E C0 06            [24] 1340 	push	ar6
      002550 C0 02            [24] 1341 	push	ar2
      002552 C0 01            [24] 1342 	push	ar1
      002554 C0 00            [24] 1343 	push	ar0
      002556 12 2B 8D         [24] 1344 	lcall	_rand
      002559 AD 82            [24] 1345 	mov	r5,dpl
      00255B D0 00            [24] 1346 	pop	ar0
      00255D D0 01            [24] 1347 	pop	ar1
      00255F D0 02            [24] 1348 	pop	ar2
      002561 D0 06            [24] 1349 	pop	ar6
      002563 53 05 0F         [24] 1350 	anl	ar5,#0x0f
      002566 8D 04            [24] 1351 	mov	ar4,r5
                                   1352 ;	walk.c:184: if (!update(&t, &cur, j)) continue;
      002568 C0 00            [24] 1353 	push	ar0
      00256A E5 10            [12] 1354 	mov	a,_bp
      00256C 24 05            [12] 1355 	add	a,#0x05
      00256E F8               [12] 1356 	mov	r0,a
      00256F C0 01            [24] 1357 	push	ar1
      002571 E5 10            [12] 1358 	mov	a,_bp
      002573 24 07            [12] 1359 	add	a,#0x07
      002575 F9               [12] 1360 	mov	r1,a
      002576 E6               [12] 1361 	mov	a,@r0
      002577 F7               [12] 1362 	mov	@r1,a
      002578 09               [12] 1363 	inc	r1
      002579 77 00            [12] 1364 	mov	@r1,#0x00
      00257B 09               [12] 1365 	inc	r1
      00257C 77 40            [12] 1366 	mov	@r1,#0x40
      00257E D0 01            [24] 1367 	pop	ar1
      002580 E5 10            [12] 1368 	mov	a,_bp
      002582 24 04            [12] 1369 	add	a,#0x04
      002584 F8               [12] 1370 	mov	r0,a
      002585 86 02            [24] 1371 	mov	ar2,@r0
      002587 7D 00            [12] 1372 	mov	r5,#0x00
      002589 7F 40            [12] 1373 	mov	r7,#0x40
      00258B D0 00            [24] 1374 	pop	ar0
      00258D C0 06            [24] 1375 	push	ar6
      00258F C0 02            [24] 1376 	push	ar2
      002591 C0 01            [24] 1377 	push	ar1
      002593 C0 00            [24] 1378 	push	ar0
      002595 C0 04            [24] 1379 	push	ar4
      002597 85 00 F0         [24] 1380 	mov	b,ar0
      00259A E5 10            [12] 1381 	mov	a,_bp
      00259C 24 07            [12] 1382 	add	a,#0x07
      00259E F8               [12] 1383 	mov	r0,a
      00259F E6               [12] 1384 	mov	a,@r0
      0025A0 C0 E0            [24] 1385 	push	acc
      0025A2 08               [12] 1386 	inc	r0
      0025A3 E6               [12] 1387 	mov	a,@r0
      0025A4 C0 E0            [24] 1388 	push	acc
      0025A6 08               [12] 1389 	inc	r0
      0025A7 E6               [12] 1390 	mov	a,@r0
      0025A8 C0 E0            [24] 1391 	push	acc
      0025AA 8A 82            [24] 1392 	mov	dpl,r2
      0025AC 8D 83            [24] 1393 	mov	dph,r5
      0025AE 8F F0            [24] 1394 	mov	b,r7
      0025B0 12 20 E1         [24] 1395 	lcall	_update
      0025B3 AF 82            [24] 1396 	mov	r7,dpl
      0025B5 E5 81            [12] 1397 	mov	a,sp
      0025B7 24 FC            [12] 1398 	add	a,#0xfc
      0025B9 F5 81            [12] 1399 	mov	sp,a
      0025BB D0 00            [24] 1400 	pop	ar0
      0025BD D0 01            [24] 1401 	pop	ar1
      0025BF D0 02            [24] 1402 	pop	ar2
      0025C1 D0 06            [24] 1403 	pop	ar6
      0025C3 D0 02            [24] 1404 	pop	ar2
      0025C5 EF               [12] 1405 	mov	a,r7
      0025C6 60 84            [24] 1406 	jz	00112$
                                   1407 ;	walk.c:185: if (!stpush(&cur)) bang();
      0025C8 8A 04            [24] 1408 	mov	ar4,r2
      0025CA 7D 00            [12] 1409 	mov	r5,#0x00
      0025CC 7F 40            [12] 1410 	mov	r7,#0x40
      0025CE 8C 82            [24] 1411 	mov	dpl,r4
      0025D0 8D 83            [24] 1412 	mov	dph,r5
      0025D2 8F F0            [24] 1413 	mov	b,r7
      0025D4 C0 06            [24] 1414 	push	ar6
      0025D6 C0 02            [24] 1415 	push	ar2
      0025D8 C0 01            [24] 1416 	push	ar1
      0025DA C0 00            [24] 1417 	push	ar0
      0025DC 12 2A CA         [24] 1418 	lcall	_stpush
      0025DF E5 82            [12] 1419 	mov	a,dpl
      0025E1 D0 00            [24] 1420 	pop	ar0
      0025E3 D0 01            [24] 1421 	pop	ar1
      0025E5 D0 02            [24] 1422 	pop	ar2
      0025E7 D0 06            [24] 1423 	pop	ar6
      0025E9 70 13            [24] 1424 	jnz	00110$
      0025EB C0 06            [24] 1425 	push	ar6
      0025ED C0 02            [24] 1426 	push	ar2
      0025EF C0 01            [24] 1427 	push	ar1
      0025F1 C0 00            [24] 1428 	push	ar0
      0025F3 12 20 88         [24] 1429 	lcall	_bang
      0025F6 D0 00            [24] 1430 	pop	ar0
      0025F8 D0 01            [24] 1431 	pop	ar1
      0025FA D0 02            [24] 1432 	pop	ar2
      0025FC D0 06            [24] 1433 	pop	ar6
      0025FE                       1434 00110$:
                                   1435 ;	walk.c:186: cur = t;
      0025FE C0 02            [24] 1436 	push	ar2
      002600 C0 00            [24] 1437 	push	ar0
      002602 A8 10            [24] 1438 	mov	r0,_bp
      002604 08               [12] 1439 	inc	r0
      002605 C0 01            [24] 1440 	push	ar1
      002607 E5 10            [12] 1441 	mov	a,_bp
      002609 24 07            [12] 1442 	add	a,#0x07
      00260B F9               [12] 1443 	mov	r1,a
      00260C E6               [12] 1444 	mov	a,@r0
      00260D F7               [12] 1445 	mov	@r1,a
      00260E 09               [12] 1446 	inc	r1
      00260F 77 00            [12] 1447 	mov	@r1,#0x00
      002611 09               [12] 1448 	inc	r1
      002612 77 40            [12] 1449 	mov	@r1,#0x40
      002614 D0 01            [24] 1450 	pop	ar1
      002616 A8 10            [24] 1451 	mov	r0,_bp
      002618 08               [12] 1452 	inc	r0
      002619 08               [12] 1453 	inc	r0
      00261A 86 02            [24] 1454 	mov	ar2,@r0
      00261C 7B 00            [12] 1455 	mov	r3,#0x00
      00261E 7F 40            [12] 1456 	mov	r7,#0x40
      002620 D0 00            [24] 1457 	pop	ar0
      002622 C0 06            [24] 1458 	push	ar6
      002624 C0 02            [24] 1459 	push	ar2
      002626 C0 01            [24] 1460 	push	ar1
      002628 C0 00            [24] 1461 	push	ar0
      00262A 74 04            [12] 1462 	mov	a,#0x04
      00262C C0 E0            [24] 1463 	push	acc
      00262E E4               [12] 1464 	clr	a
      00262F C0 E0            [24] 1465 	push	acc
      002631 85 00 F0         [24] 1466 	mov	b,ar0
      002634 E5 10            [12] 1467 	mov	a,_bp
      002636 24 07            [12] 1468 	add	a,#0x07
      002638 F8               [12] 1469 	mov	r0,a
      002639 E6               [12] 1470 	mov	a,@r0
      00263A C0 E0            [24] 1471 	push	acc
      00263C 08               [12] 1472 	inc	r0
      00263D E6               [12] 1473 	mov	a,@r0
      00263E C0 E0            [24] 1474 	push	acc
      002640 08               [12] 1475 	inc	r0
      002641 E6               [12] 1476 	mov	a,@r0
      002642 C0 E0            [24] 1477 	push	acc
      002644 8A 82            [24] 1478 	mov	dpl,r2
      002646 8B 83            [24] 1479 	mov	dph,r3
      002648 8F F0            [24] 1480 	mov	b,r7
      00264A 12 2D 23         [24] 1481 	lcall	___memcpy
      00264D E5 81            [12] 1482 	mov	a,sp
      00264F 24 FB            [12] 1483 	add	a,#0xfb
      002651 F5 81            [12] 1484 	mov	sp,a
      002653 D0 00            [24] 1485 	pop	ar0
      002655 D0 01            [24] 1486 	pop	ar1
      002657 D0 02            [24] 1487 	pop	ar2
      002659 D0 06            [24] 1488 	pop	ar6
                                   1489 ;	walk.c:187: goto process;
      00265B D0 02            [24] 1490 	pop	ar2
      00265D 02 23 DA         [24] 1491 	ljmp	00101$
      002660                       1492 00115$:
                                   1493 ;	walk.c:191: printf("\033[%d;%dH.", cur.r + 4, cur.c + 1);
      002660 86 05            [24] 1494 	mov	ar5,@r0
      002662 08               [12] 1495 	inc	r0
      002663 86 07            [24] 1496 	mov	ar7,@r0
      002665 18               [12] 1497 	dec	r0
      002666 0D               [12] 1498 	inc	r5
      002667 BD 00 01         [24] 1499 	cjne	r5,#0x00,00165$
      00266A 0F               [12] 1500 	inc	r7
      00266B                       1501 00165$:
      00266B 87 03            [24] 1502 	mov	ar3,@r1
      00266D 09               [12] 1503 	inc	r1
      00266E 87 04            [24] 1504 	mov	ar4,@r1
      002670 19               [12] 1505 	dec	r1
      002671 74 04            [12] 1506 	mov	a,#0x04
      002673 2B               [12] 1507 	add	a,r3
      002674 FB               [12] 1508 	mov	r3,a
      002675 E4               [12] 1509 	clr	a
      002676 3C               [12] 1510 	addc	a,r4
      002677 FC               [12] 1511 	mov	r4,a
      002678 C0 06            [24] 1512 	push	ar6
      00267A C0 02            [24] 1513 	push	ar2
      00267C C0 01            [24] 1514 	push	ar1
      00267E C0 00            [24] 1515 	push	ar0
      002680 C0 05            [24] 1516 	push	ar5
      002682 C0 07            [24] 1517 	push	ar7
      002684 C0 03            [24] 1518 	push	ar3
      002686 C0 04            [24] 1519 	push	ar4
      002688 74 99            [12] 1520 	mov	a,#___str_3
      00268A C0 E0            [24] 1521 	push	acc
      00268C 74 41            [12] 1522 	mov	a,#(___str_3 >> 8)
      00268E C0 E0            [24] 1523 	push	acc
      002690 74 80            [12] 1524 	mov	a,#0x80
      002692 C0 E0            [24] 1525 	push	acc
      002694 12 2E 3C         [24] 1526 	lcall	_printf
      002697 E5 81            [12] 1527 	mov	a,sp
      002699 24 F9            [12] 1528 	add	a,#0xf9
      00269B F5 81            [12] 1529 	mov	sp,a
                                   1530 ;	walk.c:192: setOE(OE76_MASK6);
      00269D 75 82 40         [24] 1531 	mov	dpl,#0x40
      0026A0 12 20 95         [24] 1532 	lcall	_setOE
      0026A3 D0 00            [24] 1533 	pop	ar0
      0026A5 D0 01            [24] 1534 	pop	ar1
      0026A7 D0 02            [24] 1535 	pop	ar2
      0026A9 D0 06            [24] 1536 	pop	ar6
                                   1537 ;	walk.c:194: if (stpop(&cur)) goto next;
      0026AB C0 00            [24] 1538 	push	ar0
      0026AD E5 10            [12] 1539 	mov	a,_bp
      0026AF 24 03            [12] 1540 	add	a,#0x03
      0026B1 F8               [12] 1541 	mov	r0,a
      0026B2 86 04            [24] 1542 	mov	ar4,@r0
      0026B4 7D 00            [12] 1543 	mov	r5,#0x00
      0026B6 7F 40            [12] 1544 	mov	r7,#0x40
      0026B8 D0 00            [24] 1545 	pop	ar0
      0026BA 8C 82            [24] 1546 	mov	dpl,r4
      0026BC 8D 83            [24] 1547 	mov	dph,r5
      0026BE 8F F0            [24] 1548 	mov	b,r7
      0026C0 C0 06            [24] 1549 	push	ar6
      0026C2 C0 02            [24] 1550 	push	ar2
      0026C4 C0 01            [24] 1551 	push	ar1
      0026C6 C0 00            [24] 1552 	push	ar0
      0026C8 12 2B 2B         [24] 1553 	lcall	_stpop
      0026CB E5 82            [12] 1554 	mov	a,dpl
      0026CD D0 00            [24] 1555 	pop	ar0
      0026CF D0 01            [24] 1556 	pop	ar1
      0026D1 D0 02            [24] 1557 	pop	ar2
      0026D3 D0 06            [24] 1558 	pop	ar6
      0026D5 60 03            [24] 1559 	jz	00166$
      0026D7 02 24 64         [24] 1560 	ljmp	00102$
      0026DA                       1561 00166$:
                                   1562 ;	walk.c:196: unsetOE(OE76_MASK7 | OE76_MASK6);
      0026DA 75 82 C0         [24] 1563 	mov	dpl,#0xc0
      0026DD 12 20 AE         [24] 1564 	lcall	_unsetOE
                                   1565 ;	walk.c:198: return;
                                   1566 ;	walk.c:199: }
      0026E0 85 10 81         [24] 1567 	mov	sp,_bp
      0026E3 D0 10            [24] 1568 	pop	_bp
      0026E5 22               [24] 1569 	ret
                                   1570 ;------------------------------------------------------------
                                   1571 ;Allocation info for local variables in function 'main'
                                   1572 ;------------------------------------------------------------
                                   1573 ;initial                   Allocated to stack - _bp +7
                                   1574 ;N                         Allocated to stack - _bp +11
                                   1575 ;i                         Allocated to stack - _bp +5
                                   1576 ;j                         Allocated to registers r2 r6 
                                   1577 ;sloc0                     Allocated to stack - _bp +1
                                   1578 ;sloc1                     Allocated to stack - _bp +3
                                   1579 ;sloc2                     Allocated to stack - _bp +15
                                   1580 ;------------------------------------------------------------
                                   1581 ;	walk.c:201: void main(void) {
                                   1582 ;	-----------------------------------------
                                   1583 ;	 function main
                                   1584 ;	-----------------------------------------
      0026E6                       1585 _main:
      0026E6 C0 10            [24] 1586 	push	_bp
      0026E8 E5 81            [12] 1587 	mov	a,sp
      0026EA F5 10            [12] 1588 	mov	_bp,a
      0026EC 24 0C            [12] 1589 	add	a,#0x0c
      0026EE F5 81            [12] 1590 	mov	sp,a
                                   1591 ;	walk.c:206: i0 = 1u;
      0026F0 78 11            [12] 1592 	mov	r0,#_i0
      0026F2 76 01            [12] 1593 	mov	@r0,#0x01
                                   1594 ;	walk.c:208: P1_7 = 1;
                                   1595 ;	assignBit
      0026F4 D2 97            [12] 1596 	setb	_P1_7
                                   1597 ;	walk.c:209: IT0 = 1;
                                   1598 ;	assignBit
      0026F6 D2 88            [12] 1599 	setb	_IT0
                                   1600 ;	walk.c:210: EX0 = 1;
                                   1601 ;	assignBit
      0026F8 D2 A8            [12] 1602 	setb	_EX0
                                   1603 ;	walk.c:211: EA = 1;
                                   1604 ;	assignBit
      0026FA D2 AF            [12] 1605 	setb	_EA
                                   1606 ;	walk.c:213: srand(RND);
      0026FC 90 80 00         [24] 1607 	mov	dptr,#_RND
      0026FF E0               [24] 1608 	movx	a,@dptr
      002700 FE               [12] 1609 	mov	r6,a
      002701 A3               [24] 1610 	inc	dptr
      002702 E0               [24] 1611 	movx	a,@dptr
      002703 FF               [12] 1612 	mov	r7,a
      002704 8E 82            [24] 1613 	mov	dpl,r6
      002706 8F 83            [24] 1614 	mov	dph,r7
      002708 12 2C 51         [24] 1615 	lcall	_srand
                                   1616 ;	walk.c:214: stinit();
      00270B 12 2A C1         [24] 1617 	lcall	_stinit
                                   1618 ;	walk.c:216: puts("\033[2J\033[?25l");
      00270E 90 41 A3         [24] 1619 	mov	dptr,#___str_4
      002711 75 F0 80         [24] 1620 	mov	b,#0x80
      002714 12 2D B6         [24] 1621 	lcall	_puts
                                   1622 ;	walk.c:218: while (i0) {
      002717 E5 10            [12] 1623 	mov	a,_bp
      002719 24 07            [12] 1624 	add	a,#0x07
      00271B F9               [12] 1625 	mov	r1,a
      00271C FF               [12] 1626 	mov	r7,a
      00271D E5 10            [12] 1627 	mov	a,_bp
      00271F 24 0B            [12] 1628 	add	a,#0x0b
      002721 F8               [12] 1629 	mov	r0,a
      002722 E4               [12] 1630 	clr	a
      002723 F6               [12] 1631 	mov	@r0,a
      002724 08               [12] 1632 	inc	r0
      002725 F6               [12] 1633 	mov	@r0,a
      002726                       1634 00108$:
      002726 78 11            [12] 1635 	mov	r0,#_i0
      002728 E6               [12] 1636 	mov	a,@r0
      002729 70 03            [24] 1637 	jnz	00182$
      00272B 02 2A AD         [24] 1638 	ljmp	00110$
      00272E                       1639 00182$:
                                   1640 ;	walk.c:219: for (i = 0; i < ROWS; i++)
      00272E 7B 00            [12] 1641 	mov	r3,#0x00
      002730 7C 00            [12] 1642 	mov	r4,#0x00
      002732 A8 10            [24] 1643 	mov	r0,_bp
      002734 08               [12] 1644 	inc	r0
      002735 E4               [12] 1645 	clr	a
      002736 F6               [12] 1646 	mov	@r0,a
      002737 08               [12] 1647 	inc	r0
      002738 F6               [12] 1648 	mov	@r0,a
                                   1649 ;	walk.c:220: for (j = 0; j < COLS; j++)
      002739                       1650 00125$:
      002739 A8 10            [24] 1651 	mov	r0,_bp
      00273B 08               [12] 1652 	inc	r0
      00273C C0 01            [24] 1653 	push	ar1
      00273E E5 10            [12] 1654 	mov	a,_bp
      002740 24 03            [12] 1655 	add	a,#0x03
      002742 F9               [12] 1656 	mov	r1,a
      002743 E6               [12] 1657 	mov	a,@r0
      002744 24 00            [12] 1658 	add	a,#_g
      002746 F7               [12] 1659 	mov	@r1,a
      002747 08               [12] 1660 	inc	r0
      002748 E6               [12] 1661 	mov	a,@r0
      002749 34 43            [12] 1662 	addc	a,#(_g >> 8)
      00274B 09               [12] 1663 	inc	r1
      00274C F7               [12] 1664 	mov	@r1,a
      00274D D0 01            [24] 1665 	pop	ar1
      00274F 7A 00            [12] 1666 	mov	r2,#0x00
      002751 7E 00            [12] 1667 	mov	r6,#0x00
      002753                       1668 00112$:
                                   1669 ;	walk.c:221: g[i][j] = 0x55u;
      002753 E5 10            [12] 1670 	mov	a,_bp
      002755 24 03            [12] 1671 	add	a,#0x03
      002757 F8               [12] 1672 	mov	r0,a
      002758 EA               [12] 1673 	mov	a,r2
      002759 26               [12] 1674 	add	a,@r0
      00275A F5 82            [12] 1675 	mov	dpl,a
      00275C EE               [12] 1676 	mov	a,r6
      00275D 08               [12] 1677 	inc	r0
      00275E 36               [12] 1678 	addc	a,@r0
      00275F F5 83            [12] 1679 	mov	dph,a
      002761 74 55            [12] 1680 	mov	a,#0x55
      002763 F0               [24] 1681 	movx	@dptr,a
                                   1682 ;	walk.c:220: for (j = 0; j < COLS; j++)
      002764 0A               [12] 1683 	inc	r2
      002765 BA 00 01         [24] 1684 	cjne	r2,#0x00,00183$
      002768 0E               [12] 1685 	inc	r6
      002769                       1686 00183$:
      002769 C3               [12] 1687 	clr	c
      00276A EA               [12] 1688 	mov	a,r2
      00276B 94 C9            [12] 1689 	subb	a,#0xc9
      00276D EE               [12] 1690 	mov	a,r6
      00276E 64 80            [12] 1691 	xrl	a,#0x80
      002770 94 80            [12] 1692 	subb	a,#0x80
      002772 40 DF            [24] 1693 	jc	00112$
                                   1694 ;	walk.c:219: for (i = 0; i < ROWS; i++)
      002774 A8 10            [24] 1695 	mov	r0,_bp
      002776 08               [12] 1696 	inc	r0
      002777 74 C9            [12] 1697 	mov	a,#0xc9
      002779 26               [12] 1698 	add	a,@r0
      00277A F6               [12] 1699 	mov	@r0,a
      00277B E4               [12] 1700 	clr	a
      00277C 08               [12] 1701 	inc	r0
      00277D 36               [12] 1702 	addc	a,@r0
      00277E F6               [12] 1703 	mov	@r0,a
      00277F 0B               [12] 1704 	inc	r3
      002780 BB 00 01         [24] 1705 	cjne	r3,#0x00,00185$
      002783 0C               [12] 1706 	inc	r4
      002784                       1707 00185$:
      002784 C3               [12] 1708 	clr	c
      002785 EB               [12] 1709 	mov	a,r3
      002786 94 30            [12] 1710 	subb	a,#0x30
      002788 EC               [12] 1711 	mov	a,r4
      002789 64 80            [12] 1712 	xrl	a,#0x80
      00278B 94 80            [12] 1713 	subb	a,#0x80
      00278D 40 AA            [24] 1714 	jc	00125$
                                   1715 ;	walk.c:223: initial.r = rand() % ROWS;
      00278F E5 10            [12] 1716 	mov	a,_bp
      002791 24 07            [12] 1717 	add	a,#0x07
      002793 F8               [12] 1718 	mov	r0,a
      002794 C0 07            [24] 1719 	push	ar7
      002796 C0 01            [24] 1720 	push	ar1
      002798 C0 00            [24] 1721 	push	ar0
      00279A 12 2B 8D         [24] 1722 	lcall	_rand
      00279D AD 82            [24] 1723 	mov	r5,dpl
      00279F AE 83            [24] 1724 	mov	r6,dph
      0027A1 74 30            [12] 1725 	mov	a,#0x30
      0027A3 C0 E0            [24] 1726 	push	acc
      0027A5 E4               [12] 1727 	clr	a
      0027A6 C0 E0            [24] 1728 	push	acc
      0027A8 8D 82            [24] 1729 	mov	dpl,r5
      0027AA 8E 83            [24] 1730 	mov	dph,r6
      0027AC 12 2E 91         [24] 1731 	lcall	__modsint
      0027AF AD 82            [24] 1732 	mov	r5,dpl
      0027B1 AE 83            [24] 1733 	mov	r6,dph
      0027B3 15 81            [12] 1734 	dec	sp
      0027B5 15 81            [12] 1735 	dec	sp
      0027B7 D0 00            [24] 1736 	pop	ar0
      0027B9 D0 01            [24] 1737 	pop	ar1
      0027BB A6 05            [24] 1738 	mov	@r0,ar5
      0027BD 08               [12] 1739 	inc	r0
      0027BE A6 06            [24] 1740 	mov	@r0,ar6
      0027C0 18               [12] 1741 	dec	r0
                                   1742 ;	walk.c:224: initial.c = rand() % COLS;
      0027C1 74 02            [12] 1743 	mov	a,#0x02
      0027C3 29               [12] 1744 	add	a,r1
      0027C4 F8               [12] 1745 	mov	r0,a
      0027C5 C0 01            [24] 1746 	push	ar1
      0027C7 C0 00            [24] 1747 	push	ar0
      0027C9 12 2B 8D         [24] 1748 	lcall	_rand
      0027CC AD 82            [24] 1749 	mov	r5,dpl
      0027CE AE 83            [24] 1750 	mov	r6,dph
      0027D0 74 C9            [12] 1751 	mov	a,#0xc9
      0027D2 C0 E0            [24] 1752 	push	acc
      0027D4 E4               [12] 1753 	clr	a
      0027D5 C0 E0            [24] 1754 	push	acc
      0027D7 8D 82            [24] 1755 	mov	dpl,r5
      0027D9 8E 83            [24] 1756 	mov	dph,r6
      0027DB 12 2E 91         [24] 1757 	lcall	__modsint
      0027DE AD 82            [24] 1758 	mov	r5,dpl
      0027E0 AE 83            [24] 1759 	mov	r6,dph
      0027E2 15 81            [12] 1760 	dec	sp
      0027E4 15 81            [12] 1761 	dec	sp
      0027E6 D0 00            [24] 1762 	pop	ar0
      0027E8 A6 05            [24] 1763 	mov	@r0,ar5
      0027EA 08               [12] 1764 	inc	r0
      0027EB A6 06            [24] 1765 	mov	@r0,ar6
      0027ED 18               [12] 1766 	dec	r0
                                   1767 ;	walk.c:226: puts("\033[2J\033[?25l");
      0027EE 90 41 A3         [24] 1768 	mov	dptr,#___str_4
      0027F1 75 F0 80         [24] 1769 	mov	b,#0x80
      0027F4 C0 00            [24] 1770 	push	ar0
      0027F6 12 2D B6         [24] 1771 	lcall	_puts
      0027F9 D0 00            [24] 1772 	pop	ar0
      0027FB D0 01            [24] 1773 	pop	ar1
                                   1774 ;	walk.c:227: printf("\033[1;1H% 8u% 8d% 8d", N, initial.r, initial.c);
      0027FD 86 05            [24] 1775 	mov	ar5,@r0
      0027FF 08               [12] 1776 	inc	r0
      002800 86 06            [24] 1777 	mov	ar6,@r0
      002802 18               [12] 1778 	dec	r0
      002803 87 03            [24] 1779 	mov	ar3,@r1
      002805 09               [12] 1780 	inc	r1
      002806 87 04            [24] 1781 	mov	ar4,@r1
      002808 19               [12] 1782 	dec	r1
      002809 C0 01            [24] 1783 	push	ar1
      00280B C0 05            [24] 1784 	push	ar5
      00280D C0 06            [24] 1785 	push	ar6
      00280F C0 03            [24] 1786 	push	ar3
      002811 C0 04            [24] 1787 	push	ar4
      002813 E5 10            [12] 1788 	mov	a,_bp
      002815 24 0B            [12] 1789 	add	a,#0x0b
      002817 F8               [12] 1790 	mov	r0,a
      002818 E6               [12] 1791 	mov	a,@r0
      002819 C0 E0            [24] 1792 	push	acc
      00281B 08               [12] 1793 	inc	r0
      00281C E6               [12] 1794 	mov	a,@r0
      00281D C0 E0            [24] 1795 	push	acc
      00281F 74 AE            [12] 1796 	mov	a,#___str_5
      002821 C0 E0            [24] 1797 	push	acc
      002823 74 41            [12] 1798 	mov	a,#(___str_5 >> 8)
      002825 C0 E0            [24] 1799 	push	acc
      002827 74 80            [12] 1800 	mov	a,#0x80
      002829 C0 E0            [24] 1801 	push	acc
      00282B 12 2E 3C         [24] 1802 	lcall	_printf
      00282E E5 81            [12] 1803 	mov	a,sp
      002830 24 F7            [12] 1804 	add	a,#0xf7
      002832 F5 81            [12] 1805 	mov	sp,a
      002834 D0 01            [24] 1806 	pop	ar1
      002836 D0 07            [24] 1807 	pop	ar7
                                   1808 ;	walk.c:229: for (i = 0; i < REG; i++) {
      002838 E5 10            [12] 1809 	mov	a,_bp
      00283A 24 05            [12] 1810 	add	a,#0x05
      00283C F8               [12] 1811 	mov	r0,a
      00283D E4               [12] 1812 	clr	a
      00283E F6               [12] 1813 	mov	@r0,a
      00283F 08               [12] 1814 	inc	r0
      002840 F6               [12] 1815 	mov	@r0,a
      002841                       1816 00116$:
                                   1817 ;	walk.c:230: neigh[i].r = neigh[REG + i].r * (1 + rand() % 8);
      002841 C0 07            [24] 1818 	push	ar7
      002843 E5 10            [12] 1819 	mov	a,_bp
      002845 24 05            [12] 1820 	add	a,#0x05
      002847 F8               [12] 1821 	mov	r0,a
      002848 E6               [12] 1822 	mov	a,@r0
      002849 25 E0            [12] 1823 	add	a,acc
      00284B FB               [12] 1824 	mov	r3,a
      00284C 08               [12] 1825 	inc	r0
      00284D E6               [12] 1826 	mov	a,@r0
      00284E 33               [12] 1827 	rlc	a
      00284F FC               [12] 1828 	mov	r4,a
      002850 EB               [12] 1829 	mov	a,r3
      002851 2B               [12] 1830 	add	a,r3
      002852 FB               [12] 1831 	mov	r3,a
      002853 EC               [12] 1832 	mov	a,r4
      002854 33               [12] 1833 	rlc	a
      002855 FC               [12] 1834 	mov	r4,a
      002856 E5 10            [12] 1835 	mov	a,_bp
      002858 24 03            [12] 1836 	add	a,#0x03
      00285A F8               [12] 1837 	mov	r0,a
      00285B EB               [12] 1838 	mov	a,r3
      00285C 24 72            [12] 1839 	add	a,#_neigh
      00285E F6               [12] 1840 	mov	@r0,a
      00285F EC               [12] 1841 	mov	a,r4
      002860 34 FF            [12] 1842 	addc	a,#(_neigh >> 8)
      002862 08               [12] 1843 	inc	r0
      002863 F6               [12] 1844 	mov	@r0,a
      002864 E5 10            [12] 1845 	mov	a,_bp
      002866 24 05            [12] 1846 	add	a,#0x05
      002868 F8               [12] 1847 	mov	r0,a
      002869 86 06            [24] 1848 	mov	ar6,@r0
      00286B 74 08            [12] 1849 	mov	a,#0x08
      00286D 2E               [12] 1850 	add	a,r6
      00286E FE               [12] 1851 	mov	r6,a
      00286F C2 D5            [12] 1852 	clr	F0
      002871 75 F0 04         [24] 1853 	mov	b,#0x04
      002874 EE               [12] 1854 	mov	a,r6
      002875 30 E7 04         [24] 1855 	jnb	acc.7,00187$
      002878 B2 D5            [12] 1856 	cpl	F0
      00287A F4               [12] 1857 	cpl	a
      00287B 04               [12] 1858 	inc	a
      00287C                       1859 00187$:
      00287C A4               [48] 1860 	mul	ab
      00287D 30 D5 0A         [24] 1861 	jnb	F0,00188$
      002880 F4               [12] 1862 	cpl	a
      002881 24 01            [12] 1863 	add	a,#0x01
      002883 C5 F0            [12] 1864 	xch	a,b
      002885 F4               [12] 1865 	cpl	a
      002886 34 00            [12] 1866 	addc	a,#0x00
      002888 C5 F0            [12] 1867 	xch	a,b
      00288A                       1868 00188$:
      00288A FE               [12] 1869 	mov	r6,a
      00288B AD F0            [24] 1870 	mov	r5,b
      00288D 24 72            [12] 1871 	add	a,#_neigh
      00288F F5 82            [12] 1872 	mov	dpl,a
      002891 ED               [12] 1873 	mov	a,r5
      002892 34 FF            [12] 1874 	addc	a,#(_neigh >> 8)
      002894 F5 83            [12] 1875 	mov	dph,a
      002896 A8 10            [24] 1876 	mov	r0,_bp
      002898 08               [12] 1877 	inc	r0
      002899 E0               [24] 1878 	movx	a,@dptr
      00289A F6               [12] 1879 	mov	@r0,a
      00289B A3               [24] 1880 	inc	dptr
      00289C E0               [24] 1881 	movx	a,@dptr
      00289D 08               [12] 1882 	inc	r0
      00289E F6               [12] 1883 	mov	@r0,a
      00289F C0 06            [24] 1884 	push	ar6
      0028A1 C0 05            [24] 1885 	push	ar5
      0028A3 C0 04            [24] 1886 	push	ar4
      0028A5 C0 03            [24] 1887 	push	ar3
      0028A7 C0 01            [24] 1888 	push	ar1
      0028A9 12 2B 8D         [24] 1889 	lcall	_rand
      0028AC AA 82            [24] 1890 	mov	r2,dpl
      0028AE AF 83            [24] 1891 	mov	r7,dph
      0028B0 74 08            [12] 1892 	mov	a,#0x08
      0028B2 C0 E0            [24] 1893 	push	acc
      0028B4 E4               [12] 1894 	clr	a
      0028B5 C0 E0            [24] 1895 	push	acc
      0028B7 8A 82            [24] 1896 	mov	dpl,r2
      0028B9 8F 83            [24] 1897 	mov	dph,r7
      0028BB 12 2E 91         [24] 1898 	lcall	__modsint
      0028BE AA 82            [24] 1899 	mov	r2,dpl
      0028C0 AF 83            [24] 1900 	mov	r7,dph
      0028C2 15 81            [12] 1901 	dec	sp
      0028C4 15 81            [12] 1902 	dec	sp
      0028C6 D0 01            [24] 1903 	pop	ar1
      0028C8 D0 03            [24] 1904 	pop	ar3
      0028CA D0 04            [24] 1905 	pop	ar4
      0028CC D0 05            [24] 1906 	pop	ar5
      0028CE D0 06            [24] 1907 	pop	ar6
      0028D0 0A               [12] 1908 	inc	r2
      0028D1 BA 00 01         [24] 1909 	cjne	r2,#0x00,00189$
      0028D4 0F               [12] 1910 	inc	r7
      0028D5                       1911 00189$:
      0028D5 C0 06            [24] 1912 	push	ar6
      0028D7 C0 05            [24] 1913 	push	ar5
      0028D9 C0 04            [24] 1914 	push	ar4
      0028DB C0 03            [24] 1915 	push	ar3
      0028DD C0 01            [24] 1916 	push	ar1
      0028DF C0 02            [24] 1917 	push	ar2
      0028E1 C0 07            [24] 1918 	push	ar7
      0028E3 A8 10            [24] 1919 	mov	r0,_bp
      0028E5 08               [12] 1920 	inc	r0
      0028E6 86 82            [24] 1921 	mov	dpl,@r0
      0028E8 08               [12] 1922 	inc	r0
      0028E9 86 83            [24] 1923 	mov	dph,@r0
      0028EB 12 2C 85         [24] 1924 	lcall	__mulint
      0028EE AA 82            [24] 1925 	mov	r2,dpl
      0028F0 AF 83            [24] 1926 	mov	r7,dph
      0028F2 15 81            [12] 1927 	dec	sp
      0028F4 15 81            [12] 1928 	dec	sp
      0028F6 D0 01            [24] 1929 	pop	ar1
      0028F8 D0 03            [24] 1930 	pop	ar3
      0028FA D0 04            [24] 1931 	pop	ar4
      0028FC D0 05            [24] 1932 	pop	ar5
      0028FE D0 06            [24] 1933 	pop	ar6
      002900 E5 10            [12] 1934 	mov	a,_bp
      002902 24 03            [12] 1935 	add	a,#0x03
      002904 F8               [12] 1936 	mov	r0,a
      002905 86 82            [24] 1937 	mov	dpl,@r0
      002907 08               [12] 1938 	inc	r0
      002908 86 83            [24] 1939 	mov	dph,@r0
      00290A EA               [12] 1940 	mov	a,r2
      00290B F0               [24] 1941 	movx	@dptr,a
      00290C EF               [12] 1942 	mov	a,r7
      00290D A3               [24] 1943 	inc	dptr
      00290E F0               [24] 1944 	movx	@dptr,a
                                   1945 ;	walk.c:231: neigh[i].c = neigh[REG + i].c * (1 + rand() % 8);
      00290F EB               [12] 1946 	mov	a,r3
      002910 24 72            [12] 1947 	add	a,#_neigh
      002912 FB               [12] 1948 	mov	r3,a
      002913 EC               [12] 1949 	mov	a,r4
      002914 34 FF            [12] 1950 	addc	a,#(_neigh >> 8)
      002916 FC               [12] 1951 	mov	r4,a
      002917 74 02            [12] 1952 	mov	a,#0x02
      002919 2B               [12] 1953 	add	a,r3
      00291A FA               [12] 1954 	mov	r2,a
      00291B E4               [12] 1955 	clr	a
      00291C 3C               [12] 1956 	addc	a,r4
      00291D FF               [12] 1957 	mov	r7,a
      00291E EE               [12] 1958 	mov	a,r6
      00291F 24 72            [12] 1959 	add	a,#_neigh
      002921 FE               [12] 1960 	mov	r6,a
      002922 ED               [12] 1961 	mov	a,r5
      002923 34 FF            [12] 1962 	addc	a,#(_neigh >> 8)
      002925 FD               [12] 1963 	mov	r5,a
      002926 8E 82            [24] 1964 	mov	dpl,r6
      002928 8D 83            [24] 1965 	mov	dph,r5
      00292A A3               [24] 1966 	inc	dptr
      00292B A3               [24] 1967 	inc	dptr
      00292C E5 10            [12] 1968 	mov	a,_bp
      00292E 24 03            [12] 1969 	add	a,#0x03
      002930 F8               [12] 1970 	mov	r0,a
      002931 E0               [24] 1971 	movx	a,@dptr
      002932 F6               [12] 1972 	mov	@r0,a
      002933 A3               [24] 1973 	inc	dptr
      002934 E0               [24] 1974 	movx	a,@dptr
      002935 08               [12] 1975 	inc	r0
      002936 F6               [12] 1976 	mov	@r0,a
      002937 C0 07            [24] 1977 	push	ar7
      002939 C0 04            [24] 1978 	push	ar4
      00293B C0 03            [24] 1979 	push	ar3
      00293D C0 02            [24] 1980 	push	ar2
      00293F C0 01            [24] 1981 	push	ar1
      002941 12 2B 8D         [24] 1982 	lcall	_rand
      002944 AD 82            [24] 1983 	mov	r5,dpl
      002946 AE 83            [24] 1984 	mov	r6,dph
      002948 74 08            [12] 1985 	mov	a,#0x08
      00294A C0 E0            [24] 1986 	push	acc
      00294C E4               [12] 1987 	clr	a
      00294D C0 E0            [24] 1988 	push	acc
      00294F 8D 82            [24] 1989 	mov	dpl,r5
      002951 8E 83            [24] 1990 	mov	dph,r6
      002953 12 2E 91         [24] 1991 	lcall	__modsint
      002956 AD 82            [24] 1992 	mov	r5,dpl
      002958 AE 83            [24] 1993 	mov	r6,dph
      00295A 15 81            [12] 1994 	dec	sp
      00295C 15 81            [12] 1995 	dec	sp
      00295E D0 01            [24] 1996 	pop	ar1
      002960 D0 02            [24] 1997 	pop	ar2
      002962 D0 03            [24] 1998 	pop	ar3
      002964 D0 04            [24] 1999 	pop	ar4
      002966 D0 07            [24] 2000 	pop	ar7
      002968 0D               [12] 2001 	inc	r5
      002969 BD 00 01         [24] 2002 	cjne	r5,#0x00,00190$
      00296C 0E               [12] 2003 	inc	r6
      00296D                       2004 00190$:
      00296D C0 07            [24] 2005 	push	ar7
      00296F C0 04            [24] 2006 	push	ar4
      002971 C0 03            [24] 2007 	push	ar3
      002973 C0 02            [24] 2008 	push	ar2
      002975 C0 01            [24] 2009 	push	ar1
      002977 C0 05            [24] 2010 	push	ar5
      002979 C0 06            [24] 2011 	push	ar6
      00297B E5 10            [12] 2012 	mov	a,_bp
      00297D 24 03            [12] 2013 	add	a,#0x03
      00297F F8               [12] 2014 	mov	r0,a
      002980 86 82            [24] 2015 	mov	dpl,@r0
      002982 08               [12] 2016 	inc	r0
      002983 86 83            [24] 2017 	mov	dph,@r0
      002985 12 2C 85         [24] 2018 	lcall	__mulint
      002988 AD 82            [24] 2019 	mov	r5,dpl
      00298A AE 83            [24] 2020 	mov	r6,dph
      00298C 15 81            [12] 2021 	dec	sp
      00298E 15 81            [12] 2022 	dec	sp
      002990 D0 01            [24] 2023 	pop	ar1
      002992 D0 02            [24] 2024 	pop	ar2
      002994 D0 03            [24] 2025 	pop	ar3
      002996 D0 04            [24] 2026 	pop	ar4
      002998 D0 07            [24] 2027 	pop	ar7
      00299A 8A 82            [24] 2028 	mov	dpl,r2
      00299C 8F 83            [24] 2029 	mov	dph,r7
      00299E ED               [12] 2030 	mov	a,r5
      00299F F0               [24] 2031 	movx	@dptr,a
      0029A0 EE               [12] 2032 	mov	a,r6
      0029A1 A3               [24] 2033 	inc	dptr
      0029A2 F0               [24] 2034 	movx	@dptr,a
                                   2035 ;	walk.c:232: printf("% 8d% 8d", neigh[i].r, neigh[i].c);
      0029A3 8B 82            [24] 2036 	mov	dpl,r3
      0029A5 8C 83            [24] 2037 	mov	dph,r4
      0029A7 E0               [24] 2038 	movx	a,@dptr
      0029A8 FB               [12] 2039 	mov	r3,a
      0029A9 A3               [24] 2040 	inc	dptr
      0029AA E0               [24] 2041 	movx	a,@dptr
      0029AB FC               [12] 2042 	mov	r4,a
      0029AC C0 07            [24] 2043 	push	ar7
      0029AE C0 01            [24] 2044 	push	ar1
      0029B0 C0 05            [24] 2045 	push	ar5
      0029B2 C0 06            [24] 2046 	push	ar6
      0029B4 C0 03            [24] 2047 	push	ar3
      0029B6 C0 04            [24] 2048 	push	ar4
      0029B8 74 C1            [12] 2049 	mov	a,#___str_6
      0029BA C0 E0            [24] 2050 	push	acc
      0029BC 74 41            [12] 2051 	mov	a,#(___str_6 >> 8)
      0029BE C0 E0            [24] 2052 	push	acc
      0029C0 74 80            [12] 2053 	mov	a,#0x80
      0029C2 C0 E0            [24] 2054 	push	acc
      0029C4 12 2E 3C         [24] 2055 	lcall	_printf
      0029C7 E5 81            [12] 2056 	mov	a,sp
      0029C9 24 F9            [12] 2057 	add	a,#0xf9
      0029CB F5 81            [12] 2058 	mov	sp,a
      0029CD D0 01            [24] 2059 	pop	ar1
      0029CF D0 07            [24] 2060 	pop	ar7
                                   2061 ;	walk.c:229: for (i = 0; i < REG; i++) {
      0029D1 E5 10            [12] 2062 	mov	a,_bp
      0029D3 24 05            [12] 2063 	add	a,#0x05
      0029D5 F8               [12] 2064 	mov	r0,a
      0029D6 06               [12] 2065 	inc	@r0
      0029D7 B6 00 02         [24] 2066 	cjne	@r0,#0x00,00191$
      0029DA 08               [12] 2067 	inc	r0
      0029DB 06               [12] 2068 	inc	@r0
      0029DC                       2069 00191$:
      0029DC E5 10            [12] 2070 	mov	a,_bp
      0029DE 24 05            [12] 2071 	add	a,#0x05
      0029E0 F8               [12] 2072 	mov	r0,a
      0029E1 86 05            [24] 2073 	mov	ar5,@r0
      0029E3 08               [12] 2074 	inc	r0
      0029E4 86 06            [24] 2075 	mov	ar6,@r0
      0029E6 C3               [12] 2076 	clr	c
      0029E7 ED               [12] 2077 	mov	a,r5
      0029E8 94 08            [12] 2078 	subb	a,#0x08
      0029EA EE               [12] 2079 	mov	a,r6
      0029EB 94 00            [12] 2080 	subb	a,#0x00
      0029ED D0 07            [24] 2081 	pop	ar7
      0029EF 50 03            [24] 2082 	jnc	00192$
      0029F1 02 28 41         [24] 2083 	ljmp	00116$
      0029F4                       2084 00192$:
                                   2085 ;	walk.c:235: OE76 = OE76_0;
      0029F4 78 12            [12] 2086 	mov	r0,#_OE76
      0029F6 76 3F            [12] 2087 	mov	@r0,#0x3f
                                   2088 ;	walk.c:236: setOE(OE76_NC);
      0029F8 75 82 00         [24] 2089 	mov	dpl,#0x00
      0029FB C0 07            [24] 2090 	push	ar7
      0029FD C0 01            [24] 2091 	push	ar1
      0029FF 12 20 95         [24] 2092 	lcall	_setOE
      002A02 D0 01            [24] 2093 	pop	ar1
      002A04 D0 07            [24] 2094 	pop	ar7
                                   2095 ;	walk.c:238: walk(&initial);
      002A06 8F 04            [24] 2096 	mov	ar4,r7
      002A08 7D 00            [12] 2097 	mov	r5,#0x00
      002A0A 7E 40            [12] 2098 	mov	r6,#0x40
      002A0C 8C 82            [24] 2099 	mov	dpl,r4
      002A0E 8D 83            [24] 2100 	mov	dph,r5
      002A10 8E F0            [24] 2101 	mov	b,r6
      002A12 C0 07            [24] 2102 	push	ar7
      002A14 C0 01            [24] 2103 	push	ar1
      002A16 12 23 6E         [24] 2104 	lcall	_walk
      002A19 D0 01            [24] 2105 	pop	ar1
      002A1B D0 07            [24] 2106 	pop	ar7
                                   2107 ;	walk.c:240: for (i = 0; i < ROWS; i++)
      002A1D E5 10            [12] 2108 	mov	a,_bp
      002A1F 24 05            [12] 2109 	add	a,#0x05
      002A21 F8               [12] 2110 	mov	r0,a
      002A22 E4               [12] 2111 	clr	a
      002A23 F6               [12] 2112 	mov	@r0,a
      002A24 08               [12] 2113 	inc	r0
      002A25 F6               [12] 2114 	mov	@r0,a
      002A26 7B 00            [12] 2115 	mov	r3,#0x00
      002A28 7C 00            [12] 2116 	mov	r4,#0x00
                                   2117 ;	walk.c:241: for (j = 0; j < COLS; j++)
      002A2A                       2118 00132$:
      002A2A E5 10            [12] 2119 	mov	a,_bp
      002A2C 24 03            [12] 2120 	add	a,#0x03
      002A2E F8               [12] 2121 	mov	r0,a
      002A2F EB               [12] 2122 	mov	a,r3
      002A30 24 00            [12] 2123 	add	a,#_g
      002A32 F6               [12] 2124 	mov	@r0,a
      002A33 EC               [12] 2125 	mov	a,r4
      002A34 34 43            [12] 2126 	addc	a,#(_g >> 8)
      002A36 08               [12] 2127 	inc	r0
      002A37 F6               [12] 2128 	mov	@r0,a
      002A38 7A 00            [12] 2129 	mov	r2,#0x00
      002A3A 7E 00            [12] 2130 	mov	r6,#0x00
      002A3C                       2131 00118$:
                                   2132 ;	walk.c:242: if (g[i][j] != 0xaau) bang();
      002A3C E5 10            [12] 2133 	mov	a,_bp
      002A3E 24 03            [12] 2134 	add	a,#0x03
      002A40 F8               [12] 2135 	mov	r0,a
      002A41 EA               [12] 2136 	mov	a,r2
      002A42 26               [12] 2137 	add	a,@r0
      002A43 F5 82            [12] 2138 	mov	dpl,a
      002A45 EE               [12] 2139 	mov	a,r6
      002A46 08               [12] 2140 	inc	r0
      002A47 36               [12] 2141 	addc	a,@r0
      002A48 F5 83            [12] 2142 	mov	dph,a
      002A4A E0               [24] 2143 	movx	a,@dptr
      002A4B FD               [12] 2144 	mov	r5,a
      002A4C BD AA 02         [24] 2145 	cjne	r5,#0xaa,00193$
      002A4F 80 1B            [24] 2146 	sjmp	00119$
      002A51                       2147 00193$:
      002A51 C0 07            [24] 2148 	push	ar7
      002A53 C0 06            [24] 2149 	push	ar6
      002A55 C0 04            [24] 2150 	push	ar4
      002A57 C0 03            [24] 2151 	push	ar3
      002A59 C0 02            [24] 2152 	push	ar2
      002A5B C0 01            [24] 2153 	push	ar1
      002A5D 12 20 88         [24] 2154 	lcall	_bang
      002A60 D0 01            [24] 2155 	pop	ar1
      002A62 D0 02            [24] 2156 	pop	ar2
      002A64 D0 03            [24] 2157 	pop	ar3
      002A66 D0 04            [24] 2158 	pop	ar4
      002A68 D0 06            [24] 2159 	pop	ar6
      002A6A D0 07            [24] 2160 	pop	ar7
      002A6C                       2161 00119$:
                                   2162 ;	walk.c:241: for (j = 0; j < COLS; j++)
      002A6C 0A               [12] 2163 	inc	r2
      002A6D BA 00 01         [24] 2164 	cjne	r2,#0x00,00194$
      002A70 0E               [12] 2165 	inc	r6
      002A71                       2166 00194$:
      002A71 C3               [12] 2167 	clr	c
      002A72 EA               [12] 2168 	mov	a,r2
      002A73 94 C9            [12] 2169 	subb	a,#0xc9
      002A75 EE               [12] 2170 	mov	a,r6
      002A76 64 80            [12] 2171 	xrl	a,#0x80
      002A78 94 80            [12] 2172 	subb	a,#0x80
      002A7A 40 C0            [24] 2173 	jc	00118$
                                   2174 ;	walk.c:240: for (i = 0; i < ROWS; i++)
      002A7C 74 C9            [12] 2175 	mov	a,#0xc9
      002A7E 2B               [12] 2176 	add	a,r3
      002A7F FB               [12] 2177 	mov	r3,a
      002A80 E4               [12] 2178 	clr	a
      002A81 3C               [12] 2179 	addc	a,r4
      002A82 FC               [12] 2180 	mov	r4,a
      002A83 E5 10            [12] 2181 	mov	a,_bp
      002A85 24 05            [12] 2182 	add	a,#0x05
      002A87 F8               [12] 2183 	mov	r0,a
      002A88 06               [12] 2184 	inc	@r0
      002A89 B6 00 02         [24] 2185 	cjne	@r0,#0x00,00196$
      002A8C 08               [12] 2186 	inc	r0
      002A8D 06               [12] 2187 	inc	@r0
      002A8E                       2188 00196$:
      002A8E E5 10            [12] 2189 	mov	a,_bp
      002A90 24 05            [12] 2190 	add	a,#0x05
      002A92 F8               [12] 2191 	mov	r0,a
      002A93 C3               [12] 2192 	clr	c
      002A94 E6               [12] 2193 	mov	a,@r0
      002A95 94 30            [12] 2194 	subb	a,#0x30
      002A97 08               [12] 2195 	inc	r0
      002A98 E6               [12] 2196 	mov	a,@r0
      002A99 64 80            [12] 2197 	xrl	a,#0x80
      002A9B 94 80            [12] 2198 	subb	a,#0x80
      002A9D 40 8B            [24] 2199 	jc	00132$
                                   2200 ;	walk.c:244: N++;
      002A9F E5 10            [12] 2201 	mov	a,_bp
      002AA1 24 0B            [12] 2202 	add	a,#0x0b
      002AA3 F8               [12] 2203 	mov	r0,a
      002AA4 06               [12] 2204 	inc	@r0
      002AA5 B6 00 02         [24] 2205 	cjne	@r0,#0x00,00198$
      002AA8 08               [12] 2206 	inc	r0
      002AA9 06               [12] 2207 	inc	@r0
      002AAA                       2208 00198$:
      002AAA 02 27 26         [24] 2209 	ljmp	00108$
      002AAD                       2210 00110$:
                                   2211 ;	walk.c:247: EA = 0;
                                   2212 ;	assignBit
      002AAD C2 AF            [12] 2213 	clr	_EA
                                   2214 ;	walk.c:249: puts("\033[2J\033[?25h");
      002AAF 90 41 CA         [24] 2215 	mov	dptr,#___str_7
      002AB2 75 F0 80         [24] 2216 	mov	b,#0x80
      002AB5 12 2D B6         [24] 2217 	lcall	_puts
                                   2218 ;	walk.c:38: PCON |= 2;
      002AB8 43 87 02         [24] 2219 	orl	_PCON,#0x02
                                   2220 ;	walk.c:253: return;
                                   2221 ;	walk.c:254: }
      002ABB 85 10 81         [24] 2222 	mov	sp,_bp
      002ABE D0 10            [24] 2223 	pop	_bp
      002AC0 22               [24] 2224 	ret
                                   2225 ;------------------------------------------------------------
                                   2226 ;Allocation info for local variables in function 'stinit'
                                   2227 ;------------------------------------------------------------
                                   2228 ;	walk.c:256: static void stinit(void) {
                                   2229 ;	-----------------------------------------
                                   2230 ;	 function stinit
                                   2231 ;	-----------------------------------------
      002AC1                       2232 _stinit:
                                   2233 ;	walk.c:257: sp = -1;
      002AC1 90 FF 70         [24] 2234 	mov	dptr,#_sp
      002AC4 74 FF            [12] 2235 	mov	a,#0xff
      002AC6 F0               [24] 2236 	movx	@dptr,a
      002AC7 A3               [24] 2237 	inc	dptr
      002AC8 F0               [24] 2238 	movx	@dptr,a
                                   2239 ;	walk.c:258: return;
                                   2240 ;	walk.c:259: }
      002AC9 22               [24] 2241 	ret
                                   2242 ;------------------------------------------------------------
                                   2243 ;Allocation info for local variables in function 'stpush'
                                   2244 ;------------------------------------------------------------
                                   2245 ;t                         Allocated to registers r5 r6 r7 
                                   2246 ;------------------------------------------------------------
                                   2247 ;	walk.c:261: static uint8_t stpush(struct node *t) {
                                   2248 ;	-----------------------------------------
                                   2249 ;	 function stpush
                                   2250 ;	-----------------------------------------
      002ACA                       2251 _stpush:
      002ACA AD 82            [24] 2252 	mov	r5,dpl
      002ACC AE 83            [24] 2253 	mov	r6,dph
      002ACE AF F0            [24] 2254 	mov	r7,b
                                   2255 ;	walk.c:262: if (sp == (SMAX - 1)) return 0u;
      002AD0 90 FF 70         [24] 2256 	mov	dptr,#_sp
      002AD3 E0               [24] 2257 	movx	a,@dptr
      002AD4 FB               [12] 2258 	mov	r3,a
      002AD5 A3               [24] 2259 	inc	dptr
      002AD6 E0               [24] 2260 	movx	a,@dptr
      002AD7 FC               [12] 2261 	mov	r4,a
      002AD8 BB AF 07         [24] 2262 	cjne	r3,#0xaf,00102$
      002ADB BC 25 04         [24] 2263 	cjne	r4,#0x25,00102$
      002ADE 75 82 00         [24] 2264 	mov	dpl,#0x00
      002AE1 22               [24] 2265 	ret
      002AE2                       2266 00102$:
                                   2267 ;	walk.c:263: sp++;
      002AE2 90 FF 70         [24] 2268 	mov	dptr,#_sp
      002AE5 74 01            [12] 2269 	mov	a,#0x01
      002AE7 2B               [12] 2270 	add	a,r3
      002AE8 F0               [24] 2271 	movx	@dptr,a
      002AE9 E4               [12] 2272 	clr	a
      002AEA 3C               [12] 2273 	addc	a,r4
      002AEB A3               [24] 2274 	inc	dptr
      002AEC F0               [24] 2275 	movx	@dptr,a
                                   2276 ;	walk.c:264: stack[sp] = *t;
      002AED 90 FF 70         [24] 2277 	mov	dptr,#_sp
      002AF0 E0               [24] 2278 	movx	a,@dptr
      002AF1 FB               [12] 2279 	mov	r3,a
      002AF2 A3               [24] 2280 	inc	dptr
      002AF3 E0               [24] 2281 	movx	a,@dptr
      002AF4 FC               [12] 2282 	mov	r4,a
      002AF5 EB               [12] 2283 	mov	a,r3
      002AF6 2B               [12] 2284 	add	a,r3
      002AF7 FB               [12] 2285 	mov	r3,a
      002AF8 EC               [12] 2286 	mov	a,r4
      002AF9 33               [12] 2287 	rlc	a
      002AFA FC               [12] 2288 	mov	r4,a
      002AFB EB               [12] 2289 	mov	a,r3
      002AFC 2B               [12] 2290 	add	a,r3
      002AFD FB               [12] 2291 	mov	r3,a
      002AFE EC               [12] 2292 	mov	a,r4
      002AFF 33               [12] 2293 	rlc	a
      002B00 FC               [12] 2294 	mov	r4,a
      002B01 EB               [12] 2295 	mov	a,r3
      002B02 24 B0            [12] 2296 	add	a,#_stack
      002B04 FB               [12] 2297 	mov	r3,a
      002B05 EC               [12] 2298 	mov	a,r4
      002B06 34 68            [12] 2299 	addc	a,#(_stack >> 8)
      002B08 FC               [12] 2300 	mov	r4,a
      002B09 7A 00            [12] 2301 	mov	r2,#0x00
      002B0B 74 04            [12] 2302 	mov	a,#0x04
      002B0D C0 E0            [24] 2303 	push	acc
      002B0F E4               [12] 2304 	clr	a
      002B10 C0 E0            [24] 2305 	push	acc
      002B12 C0 05            [24] 2306 	push	ar5
      002B14 C0 06            [24] 2307 	push	ar6
      002B16 C0 07            [24] 2308 	push	ar7
      002B18 8B 82            [24] 2309 	mov	dpl,r3
      002B1A 8C 83            [24] 2310 	mov	dph,r4
      002B1C 8A F0            [24] 2311 	mov	b,r2
      002B1E 12 2D 23         [24] 2312 	lcall	___memcpy
      002B21 E5 81            [12] 2313 	mov	a,sp
      002B23 24 FB            [12] 2314 	add	a,#0xfb
      002B25 F5 81            [12] 2315 	mov	sp,a
                                   2316 ;	walk.c:265: return 1u;
      002B27 75 82 01         [24] 2317 	mov	dpl,#0x01
                                   2318 ;	walk.c:266: }
      002B2A 22               [24] 2319 	ret
                                   2320 ;------------------------------------------------------------
                                   2321 ;Allocation info for local variables in function 'stpop'
                                   2322 ;------------------------------------------------------------
                                   2323 ;t                         Allocated to registers r5 r6 r7 
                                   2324 ;------------------------------------------------------------
                                   2325 ;	walk.c:268: static uint8_t stpop(struct node *t) {
                                   2326 ;	-----------------------------------------
                                   2327 ;	 function stpop
                                   2328 ;	-----------------------------------------
      002B2B                       2329 _stpop:
      002B2B AD 82            [24] 2330 	mov	r5,dpl
      002B2D AE 83            [24] 2331 	mov	r6,dph
      002B2F AF F0            [24] 2332 	mov	r7,b
                                   2333 ;	walk.c:269: if (sp == -1) return 0u;
      002B31 90 FF 70         [24] 2334 	mov	dptr,#_sp
      002B34 E0               [24] 2335 	movx	a,@dptr
      002B35 FB               [12] 2336 	mov	r3,a
      002B36 A3               [24] 2337 	inc	dptr
      002B37 E0               [24] 2338 	movx	a,@dptr
      002B38 FC               [12] 2339 	mov	r4,a
      002B39 BB FF 07         [24] 2340 	cjne	r3,#0xff,00102$
      002B3C BC FF 04         [24] 2341 	cjne	r4,#0xff,00102$
      002B3F 75 82 00         [24] 2342 	mov	dpl,#0x00
      002B42 22               [24] 2343 	ret
      002B43                       2344 00102$:
                                   2345 ;	walk.c:270: *t = stack[sp];
      002B43 EB               [12] 2346 	mov	a,r3
      002B44 2B               [12] 2347 	add	a,r3
      002B45 FB               [12] 2348 	mov	r3,a
      002B46 EC               [12] 2349 	mov	a,r4
      002B47 33               [12] 2350 	rlc	a
      002B48 FC               [12] 2351 	mov	r4,a
      002B49 EB               [12] 2352 	mov	a,r3
      002B4A 2B               [12] 2353 	add	a,r3
      002B4B FB               [12] 2354 	mov	r3,a
      002B4C EC               [12] 2355 	mov	a,r4
      002B4D 33               [12] 2356 	rlc	a
      002B4E FC               [12] 2357 	mov	r4,a
      002B4F EB               [12] 2358 	mov	a,r3
      002B50 24 B0            [12] 2359 	add	a,#_stack
      002B52 FB               [12] 2360 	mov	r3,a
      002B53 EC               [12] 2361 	mov	a,r4
      002B54 34 68            [12] 2362 	addc	a,#(_stack >> 8)
      002B56 FC               [12] 2363 	mov	r4,a
      002B57 7A 00            [12] 2364 	mov	r2,#0x00
      002B59 74 04            [12] 2365 	mov	a,#0x04
      002B5B C0 E0            [24] 2366 	push	acc
      002B5D E4               [12] 2367 	clr	a
      002B5E C0 E0            [24] 2368 	push	acc
      002B60 C0 03            [24] 2369 	push	ar3
      002B62 C0 04            [24] 2370 	push	ar4
      002B64 C0 02            [24] 2371 	push	ar2
      002B66 8D 82            [24] 2372 	mov	dpl,r5
      002B68 8E 83            [24] 2373 	mov	dph,r6
      002B6A 8F F0            [24] 2374 	mov	b,r7
      002B6C 12 2D 23         [24] 2375 	lcall	___memcpy
      002B6F E5 81            [12] 2376 	mov	a,sp
      002B71 24 FB            [12] 2377 	add	a,#0xfb
      002B73 F5 81            [12] 2378 	mov	sp,a
                                   2379 ;	walk.c:271: sp--;
      002B75 90 FF 70         [24] 2380 	mov	dptr,#_sp
      002B78 E0               [24] 2381 	movx	a,@dptr
      002B79 24 FF            [12] 2382 	add	a,#0xff
      002B7B FE               [12] 2383 	mov	r6,a
      002B7C A3               [24] 2384 	inc	dptr
      002B7D E0               [24] 2385 	movx	a,@dptr
      002B7E 34 FF            [12] 2386 	addc	a,#0xff
      002B80 FF               [12] 2387 	mov	r7,a
      002B81 90 FF 70         [24] 2388 	mov	dptr,#_sp
      002B84 EE               [12] 2389 	mov	a,r6
      002B85 F0               [24] 2390 	movx	@dptr,a
      002B86 EF               [12] 2391 	mov	a,r7
      002B87 A3               [24] 2392 	inc	dptr
      002B88 F0               [24] 2393 	movx	@dptr,a
                                   2394 ;	walk.c:272: return 1u;
      002B89 75 82 01         [24] 2395 	mov	dpl,#0x01
                                   2396 ;	walk.c:273: }
      002B8C 22               [24] 2397 	ret
                                   2398 	.area CSEG    (CODE)
                                   2399 	.area CONST   (CODE)
                                   2400 	.area CONST   (CODE)
      00416F                       2401 ___str_0:
      00416F 4D 65 6D 6F 72 79 20  2402 	.ascii "Memory error"
             65 72 72 6F 72
      00417B 00                    2403 	.db 0x00
                                   2404 	.area CSEG    (CODE)
                                   2405 	.area CONST   (CODE)
      00417C                       2406 ___str_1:
      00417C 1B                    2407 	.db 0x1b
      00417D 5B 25 64 3B 25 64 48  2408 	.ascii "[%d;%dHo"
             6F
      004185 00                    2409 	.db 0x00
                                   2410 	.area CSEG    (CODE)
                                   2411 	.area CONST   (CODE)
      004186                       2412 ___str_2:
      004186 1B                    2413 	.db 0x1b
      004187 5B 32 3B 31 48 25 20  2414 	.ascii "[2;1H% 8d% 8d% 8d"
             38 64 25 20 38 64 25
             20 38 64
      004198 00                    2415 	.db 0x00
                                   2416 	.area CSEG    (CODE)
                                   2417 	.area CONST   (CODE)
      004199                       2418 ___str_3:
      004199 1B                    2419 	.db 0x1b
      00419A 5B 25 64 3B 25 64 48  2420 	.ascii "[%d;%dH."
             2E
      0041A2 00                    2421 	.db 0x00
                                   2422 	.area CSEG    (CODE)
                                   2423 	.area CONST   (CODE)
      0041A3                       2424 ___str_4:
      0041A3 1B                    2425 	.db 0x1b
      0041A4 5B 32 4A              2426 	.ascii "[2J"
      0041A7 1B                    2427 	.db 0x1b
      0041A8 5B 3F 32 35 6C        2428 	.ascii "[?25l"
      0041AD 00                    2429 	.db 0x00
                                   2430 	.area CSEG    (CODE)
                                   2431 	.area CONST   (CODE)
      0041AE                       2432 ___str_5:
      0041AE 1B                    2433 	.db 0x1b
      0041AF 5B 31 3B 31 48 25 20  2434 	.ascii "[1;1H% 8u% 8d% 8d"
             38 75 25 20 38 64 25
             20 38 64
      0041C0 00                    2435 	.db 0x00
                                   2436 	.area CSEG    (CODE)
                                   2437 	.area CONST   (CODE)
      0041C1                       2438 ___str_6:
      0041C1 25 20 38 64 25 20 38  2439 	.ascii "% 8d% 8d"
             64
      0041C9 00                    2440 	.db 0x00
                                   2441 	.area CSEG    (CODE)
                                   2442 	.area CONST   (CODE)
      0041CA                       2443 ___str_7:
      0041CA 1B                    2444 	.db 0x1b
      0041CB 5B 32 4A              2445 	.ascii "[2J"
      0041CE 1B                    2446 	.db 0x1b
      0041CF 5B 3F 32 35 68        2447 	.ascii "[?25h"
      0041D4 00                    2448 	.db 0x00
                                   2449 	.area CSEG    (CODE)
                                   2450 	.area XINIT   (CODE)
      0041E0                       2451 __xinit__neigh:
      0041E0 FF FF                 2452 	.byte #0xff, #0xff	; -1
      0041E2 01 00                 2453 	.byte #0x01, #0x00	;  1
      0041E4 FF FF                 2454 	.byte #0xff, #0xff	; -1
      0041E6 FF FF                 2455 	.byte #0xff, #0xff	; -1
      0041E8 01 00                 2456 	.byte #0x01, #0x00	;  1
      0041EA FF FF                 2457 	.byte #0xff, #0xff	; -1
      0041EC 01 00                 2458 	.byte #0x01, #0x00	;  1
      0041EE 01 00                 2459 	.byte #0x01, #0x00	;  1
      0041F0 FF FF                 2460 	.byte #0xff, #0xff	; -1
      0041F2 00 00                 2461 	.byte #0x00, #0x00	;  0
      0041F4 00 00                 2462 	.byte #0x00, #0x00	;  0
      0041F6 FF FF                 2463 	.byte #0xff, #0xff	; -1
      0041F8 01 00                 2464 	.byte #0x01, #0x00	;  1
      0041FA 00 00                 2465 	.byte #0x00, #0x00	;  0
      0041FC 00 00                 2466 	.byte #0x00, #0x00	;  0
      0041FE 01 00                 2467 	.byte #0x01, #0x00	;  1
      004200 FF FF                 2468 	.byte #0xff, #0xff	; -1
      004202 01 00                 2469 	.byte #0x01, #0x00	;  1
      004204 FF FF                 2470 	.byte #0xff, #0xff	; -1
      004206 FF FF                 2471 	.byte #0xff, #0xff	; -1
      004208 01 00                 2472 	.byte #0x01, #0x00	;  1
      00420A FF FF                 2473 	.byte #0xff, #0xff	; -1
      00420C 01 00                 2474 	.byte #0x01, #0x00	;  1
      00420E 01 00                 2475 	.byte #0x01, #0x00	;  1
      004210 FF FF                 2476 	.byte #0xff, #0xff	; -1
      004212 00 00                 2477 	.byte #0x00, #0x00	;  0
      004214 00 00                 2478 	.byte #0x00, #0x00	;  0
      004216 FF FF                 2479 	.byte #0xff, #0xff	; -1
      004218 01 00                 2480 	.byte #0x01, #0x00	;  1
      00421A 00 00                 2481 	.byte #0x00, #0x00	;  0
      00421C 00 00                 2482 	.byte #0x00, #0x00	;  0
      00421E 01 00                 2483 	.byte #0x01, #0x00	;  1
                                   2484 	.area CABS    (ABS,CODE)
