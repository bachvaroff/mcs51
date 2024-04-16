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
      004310                        322 _g:
      004310                        323 	.ds 9648
      0068C0                        324 _queue:
      0068C0                        325 	.ds 38592
      00FF80                        326 _hp:
      00FF80                        327 	.ds 2
      00FF82                        328 _tp:
      00FF82                        329 	.ds 2
                           00F006   330 _OEreg	=	0xf006
                                    331 ;--------------------------------------------------------
                                    332 ; absolute external ram data
                                    333 ;--------------------------------------------------------
                                    334 	.area XABS    (ABS,XDATA)
                                    335 ;--------------------------------------------------------
                                    336 ; external initialized ram data
                                    337 ;--------------------------------------------------------
                                    338 	.area XISEG   (XDATA)
      00FF84                        339 _neigh:
      00FF84                        340 	.ds 64
                                    341 	.area HOME    (CODE)
                                    342 	.area GSINIT0 (CODE)
                                    343 	.area GSINIT1 (CODE)
                                    344 	.area GSINIT2 (CODE)
                                    345 	.area GSINIT3 (CODE)
                                    346 	.area GSINIT4 (CODE)
                                    347 	.area GSINIT5 (CODE)
                                    348 	.area GSINIT  (CODE)
                                    349 	.area GSFINAL (CODE)
                                    350 	.area CSEG    (CODE)
                                    351 ;--------------------------------------------------------
                                    352 ; interrupt vector 
                                    353 ;--------------------------------------------------------
                                    354 	.area HOME    (CODE)
      002000                        355 __interrupt_vect:
      002000 02 20 09         [24]  356 	ljmp	__sdcc_gsinit_startup
      002003 02 20 7B         [24]  357 	ljmp	_int0
                                    358 ;--------------------------------------------------------
                                    359 ; global & static initialisations
                                    360 ;--------------------------------------------------------
                                    361 	.area HOME    (CODE)
                                    362 	.area GSINIT  (CODE)
                                    363 	.area GSFINAL (CODE)
                                    364 	.area GSINIT  (CODE)
                                    365 	.globl __sdcc_gsinit_startup
                                    366 	.globl __sdcc_program_startup
                                    367 	.globl __start__stack
                                    368 	.globl __mcs51_genXINIT
                                    369 	.globl __mcs51_genXRAMCLEAR
                                    370 	.globl __mcs51_genRAMCLEAR
                                    371 	.area GSFINAL (CODE)
      002062 02 20 06         [24]  372 	ljmp	__sdcc_program_startup
                                    373 ;--------------------------------------------------------
                                    374 ; Home
                                    375 ;--------------------------------------------------------
                                    376 	.area HOME    (CODE)
                                    377 	.area HOME    (CODE)
      002006                        378 __sdcc_program_startup:
      002006 02 27 16         [24]  379 	ljmp	_main
                                    380 ;	return from main will return to caller
                                    381 ;--------------------------------------------------------
                                    382 ; code
                                    383 ;--------------------------------------------------------
                                    384 	.area CSEG    (CODE)
                                    385 ;------------------------------------------------------------
                                    386 ;Allocation info for local variables in function 'putchar'
                                    387 ;------------------------------------------------------------
                                    388 ;c                         Allocated to registers 
                                    389 ;------------------------------------------------------------
                                    390 ;	walk.c:7: int putchar(int c) __naked {
                                    391 ;	-----------------------------------------
                                    392 ;	 function putchar
                                    393 ;	-----------------------------------------
      002065                        394 _putchar:
                                    395 ;	naked function: no prologue.
                                    396 ;	walk.c:14: __endasm;
      002065 C0 E0            [24]  397 	push	acc
      002067 E5 82            [12]  398 	mov	a, dpl
      002069 12 00 3C         [24]  399 	lcall	0x003c
      00206C D0 E0            [24]  400 	pop	acc
                                    401 ;	walk.c:15: }
                                    402 ;	naked function: no epilogue.
                                    403 ;------------------------------------------------------------
                                    404 ;Allocation info for local variables in function 'getchar'
                                    405 ;------------------------------------------------------------
                                    406 ;	walk.c:17: int getchar(void) __naked {
                                    407 ;	-----------------------------------------
                                    408 ;	 function getchar
                                    409 ;	-----------------------------------------
      00206E                        410 _getchar:
                                    411 ;	naked function: no prologue.
                                    412 ;	walk.c:25: __endasm;
      00206E C0 E0            [24]  413 	push	acc
      002070 12 00 36         [24]  414 	lcall	0x0036
      002073 F5 82            [12]  415 	mov	dpl, a
      002075 75 83 00         [24]  416 	mov	dph, #0
      002078 D0 E0            [24]  417 	pop	acc
      00207A 22               [24]  418 	ret
                                    419 ;	walk.c:26: }
                                    420 ;	naked function: no epilogue.
                                    421 ;------------------------------------------------------------
                                    422 ;Allocation info for local variables in function 'int0'
                                    423 ;------------------------------------------------------------
                                    424 ;	walk.c:32: void int0(void) __interrupt IE0_VECTOR __using 1 {
                                    425 ;	-----------------------------------------
                                    426 ;	 function int0
                                    427 ;	-----------------------------------------
      00207B                        428 _int0:
                           00000F   429 	ar7 = 0x0f
                           00000E   430 	ar6 = 0x0e
                           00000D   431 	ar5 = 0x0d
                           00000C   432 	ar4 = 0x0c
                           00000B   433 	ar3 = 0x0b
                           00000A   434 	ar2 = 0x0a
                           000009   435 	ar1 = 0x09
                           000008   436 	ar0 = 0x08
      00207B C0 D0            [24]  437 	push	psw
      00207D 75 D0 08         [24]  438 	mov	psw,#0x08
                                    439 ;	walk.c:33: i0 = 0u;
      002080 78 11            [12]  440 	mov	r0,#_i0
      002082 76 00            [12]  441 	mov	@r0,#0x00
                                    442 ;	walk.c:34: }
      002084 D0 D0            [24]  443 	pop	psw
      002086 32               [24]  444 	reti
                                    445 ;	eliminated unneeded push/pop dpl
                                    446 ;	eliminated unneeded push/pop dph
                                    447 ;	eliminated unneeded push/pop b
                                    448 ;	eliminated unneeded push/pop acc
                                    449 ;------------------------------------------------------------
                                    450 ;Allocation info for local variables in function 'bang'
                                    451 ;------------------------------------------------------------
                                    452 ;	walk.c:40: static void bang(void) {
                                    453 ;	-----------------------------------------
                                    454 ;	 function bang
                                    455 ;	-----------------------------------------
      002087                        456 _bang:
                           000007   457 	ar7 = 0x07
                           000006   458 	ar6 = 0x06
                           000005   459 	ar5 = 0x05
                           000004   460 	ar4 = 0x04
                           000003   461 	ar3 = 0x03
                           000002   462 	ar2 = 0x02
                           000001   463 	ar1 = 0x01
                           000000   464 	ar0 = 0x00
                                    465 ;	walk.c:41: (void)puts("Memory error");
      002087 90 42 57         [24]  466 	mov	dptr,#___str_0
      00208A 75 F0 80         [24]  467 	mov	b,#0x80
      00208D 12 2E 9E         [24]  468 	lcall	_puts
                                    469 ;	walk.c:37: PCON |= 2;
      002090 43 87 02         [24]  470 	orl	_PCON,#0x02
                                    471 ;	walk.c:44: return;
                                    472 ;	walk.c:45: }
      002093 22               [24]  473 	ret
                                    474 ;------------------------------------------------------------
                                    475 ;Allocation info for local variables in function 'setOE'
                                    476 ;------------------------------------------------------------
                                    477 ;mask                      Allocated to registers r7 
                                    478 ;------------------------------------------------------------
                                    479 ;	walk.c:87: static void setOE(uint8_t mask) {
                                    480 ;	-----------------------------------------
                                    481 ;	 function setOE
                                    482 ;	-----------------------------------------
      002094                        483 _setOE:
      002094 AF 82            [24]  484 	mov	r7,dpl
                                    485 ;	walk.c:88: OE76 |= mask;
      002096 78 12            [12]  486 	mov	r0,#_OE76
      002098 EF               [12]  487 	mov	a,r7
      002099 46               [12]  488 	orl	a,@r0
      00209A F6               [12]  489 	mov	@r0,a
                                    490 ;	walk.c:89: P1_7 = 0;
                                    491 ;	assignBit
      00209B C2 97            [12]  492 	clr	_P1_7
                                    493 ;	walk.c:94: __endasm;
      00209D 00               [12]  494 	nop
      00209E 00               [12]  495 	nop
      00209F 00               [12]  496 	nop
                                    497 ;	walk.c:95: OEreg = OE76;
      0020A0 78 12            [12]  498 	mov	r0,#_OE76
      0020A2 90 F0 06         [24]  499 	mov	dptr,#_OEreg
      0020A5 E6               [12]  500 	mov	a,@r0
      0020A6 F0               [24]  501 	movx	@dptr,a
                                    502 ;	walk.c:96: P1_7 = 1;
                                    503 ;	assignBit
      0020A7 D2 97            [12]  504 	setb	_P1_7
                                    505 ;	walk.c:101: __endasm;
      0020A9 00               [12]  506 	nop
      0020AA 00               [12]  507 	nop
      0020AB 00               [12]  508 	nop
                                    509 ;	walk.c:103: return;
                                    510 ;	walk.c:104: }
      0020AC 22               [24]  511 	ret
                                    512 ;------------------------------------------------------------
                                    513 ;Allocation info for local variables in function 'unsetOE'
                                    514 ;------------------------------------------------------------
                                    515 ;mask                      Allocated to registers r7 
                                    516 ;------------------------------------------------------------
                                    517 ;	walk.c:106: static void unsetOE(uint8_t mask) {
                                    518 ;	-----------------------------------------
                                    519 ;	 function unsetOE
                                    520 ;	-----------------------------------------
      0020AD                        521 _unsetOE:
                                    522 ;	walk.c:107: OE76 &= ~mask;
      0020AD E5 82            [12]  523 	mov	a,dpl
      0020AF F4               [12]  524 	cpl	a
      0020B0 FF               [12]  525 	mov	r7,a
      0020B1 78 12            [12]  526 	mov	r0,#_OE76
      0020B3 56               [12]  527 	anl	a,@r0
      0020B4 F6               [12]  528 	mov	@r0,a
                                    529 ;	walk.c:108: P1_7 = 0;
                                    530 ;	assignBit
      0020B5 C2 97            [12]  531 	clr	_P1_7
                                    532 ;	walk.c:113: __endasm;
      0020B7 00               [12]  533 	nop
      0020B8 00               [12]  534 	nop
      0020B9 00               [12]  535 	nop
                                    536 ;	walk.c:114: OEreg = OE76;
      0020BA 78 12            [12]  537 	mov	r0,#_OE76
      0020BC 90 F0 06         [24]  538 	mov	dptr,#_OEreg
      0020BF E6               [12]  539 	mov	a,@r0
      0020C0 F0               [24]  540 	movx	@dptr,a
                                    541 ;	walk.c:115: P1_7 = 1;
                                    542 ;	assignBit
      0020C1 D2 97            [12]  543 	setb	_P1_7
                                    544 ;	walk.c:120: __endasm;
      0020C3 00               [12]  545 	nop
      0020C4 00               [12]  546 	nop
      0020C5 00               [12]  547 	nop
                                    548 ;	walk.c:122: return;
                                    549 ;	walk.c:123: }
      0020C6 22               [24]  550 	ret
                                    551 ;------------------------------------------------------------
                                    552 ;Allocation info for local variables in function 'flipOE'
                                    553 ;------------------------------------------------------------
                                    554 ;mask                      Allocated to registers r7 
                                    555 ;------------------------------------------------------------
                                    556 ;	walk.c:125: static void flipOE(uint8_t mask) {
                                    557 ;	-----------------------------------------
                                    558 ;	 function flipOE
                                    559 ;	-----------------------------------------
      0020C7                        560 _flipOE:
      0020C7 AF 82            [24]  561 	mov	r7,dpl
                                    562 ;	walk.c:126: OE76 ^= mask;
      0020C9 78 12            [12]  563 	mov	r0,#_OE76
      0020CB EF               [12]  564 	mov	a,r7
      0020CC 66               [12]  565 	xrl	a,@r0
      0020CD F6               [12]  566 	mov	@r0,a
                                    567 ;	walk.c:127: P1_7 = 0;
                                    568 ;	assignBit
      0020CE C2 97            [12]  569 	clr	_P1_7
                                    570 ;	walk.c:132: __endasm;
      0020D0 00               [12]  571 	nop
      0020D1 00               [12]  572 	nop
      0020D2 00               [12]  573 	nop
                                    574 ;	walk.c:133: OEreg = OE76;
      0020D3 78 12            [12]  575 	mov	r0,#_OE76
      0020D5 90 F0 06         [24]  576 	mov	dptr,#_OEreg
      0020D8 E6               [12]  577 	mov	a,@r0
      0020D9 F0               [24]  578 	movx	@dptr,a
                                    579 ;	walk.c:134: P1_7 = 1;
                                    580 ;	assignBit
      0020DA D2 97            [12]  581 	setb	_P1_7
                                    582 ;	walk.c:139: __endasm;
      0020DC 00               [12]  583 	nop
      0020DD 00               [12]  584 	nop
      0020DE 00               [12]  585 	nop
                                    586 ;	walk.c:141: return;
                                    587 ;	walk.c:142: }
      0020DF 22               [24]  588 	ret
                                    589 ;------------------------------------------------------------
                                    590 ;Allocation info for local variables in function 'update'
                                    591 ;------------------------------------------------------------
                                    592 ;cur                       Allocated to stack - _bp -5
                                    593 ;j                         Allocated to stack - _bp -6
                                    594 ;t                         Allocated to stack - _bp +1
                                    595 ;sloc0                     Allocated to stack - _bp +4
                                    596 ;sloc1                     Allocated to stack - _bp +6
                                    597 ;sloc2                     Allocated to stack - _bp +8
                                    598 ;------------------------------------------------------------
                                    599 ;	walk.c:144: static uint8_t update(struct node *t, struct node *cur, uint8_t j) {
                                    600 ;	-----------------------------------------
                                    601 ;	 function update
                                    602 ;	-----------------------------------------
      0020E0                        603 _update:
      0020E0 C0 10            [24]  604 	push	_bp
      0020E2 85 81 10         [24]  605 	mov	_bp,sp
      0020E5 C0 82            [24]  606 	push	dpl
      0020E7 C0 83            [24]  607 	push	dph
      0020E9 C0 F0            [24]  608 	push	b
      0020EB E5 81            [12]  609 	mov	a,sp
      0020ED 24 07            [12]  610 	add	a,#0x07
      0020EF F5 81            [12]  611 	mov	sp,a
                                    612 ;	walk.c:145: t->r = cur->r + neigh[j].r;
      0020F1 E5 10            [12]  613 	mov	a,_bp
      0020F3 24 FB            [12]  614 	add	a,#0xfb
      0020F5 F8               [12]  615 	mov	r0,a
      0020F6 86 02            [24]  616 	mov	ar2,@r0
      0020F8 08               [12]  617 	inc	r0
      0020F9 86 03            [24]  618 	mov	ar3,@r0
      0020FB 08               [12]  619 	inc	r0
      0020FC 86 04            [24]  620 	mov	ar4,@r0
      0020FE 8A 82            [24]  621 	mov	dpl,r2
      002100 8B 83            [24]  622 	mov	dph,r3
      002102 8C F0            [24]  623 	mov	b,r4
      002104 E5 10            [12]  624 	mov	a,_bp
      002106 24 04            [12]  625 	add	a,#0x04
      002108 F8               [12]  626 	mov	r0,a
      002109 12 2F 5D         [24]  627 	lcall	__gptrget
      00210C F6               [12]  628 	mov	@r0,a
      00210D A3               [24]  629 	inc	dptr
      00210E 12 2F 5D         [24]  630 	lcall	__gptrget
      002111 08               [12]  631 	inc	r0
      002112 F6               [12]  632 	mov	@r0,a
      002113 E5 10            [12]  633 	mov	a,_bp
      002115 24 FA            [12]  634 	add	a,#0xfa
      002117 F8               [12]  635 	mov	r0,a
      002118 E5 10            [12]  636 	mov	a,_bp
      00211A 24 06            [12]  637 	add	a,#0x06
      00211C F9               [12]  638 	mov	r1,a
      00211D E6               [12]  639 	mov	a,@r0
      00211E 75 F0 04         [24]  640 	mov	b,#0x04
      002121 A4               [48]  641 	mul	ab
      002122 F7               [12]  642 	mov	@r1,a
      002123 09               [12]  643 	inc	r1
      002124 A7 F0            [24]  644 	mov	@r1,b
      002126 E5 10            [12]  645 	mov	a,_bp
      002128 24 06            [12]  646 	add	a,#0x06
      00212A F8               [12]  647 	mov	r0,a
      00212B E6               [12]  648 	mov	a,@r0
      00212C 24 84            [12]  649 	add	a,#_neigh
      00212E F5 82            [12]  650 	mov	dpl,a
      002130 08               [12]  651 	inc	r0
      002131 E6               [12]  652 	mov	a,@r0
      002132 34 FF            [12]  653 	addc	a,#(_neigh >> 8)
      002134 F5 83            [12]  654 	mov	dph,a
      002136 E0               [24]  655 	movx	a,@dptr
      002137 FF               [12]  656 	mov	r7,a
      002138 A3               [24]  657 	inc	dptr
      002139 E0               [24]  658 	movx	a,@dptr
      00213A FE               [12]  659 	mov	r6,a
      00213B E5 10            [12]  660 	mov	a,_bp
      00213D 24 04            [12]  661 	add	a,#0x04
      00213F F8               [12]  662 	mov	r0,a
      002140 EF               [12]  663 	mov	a,r7
      002141 26               [12]  664 	add	a,@r0
      002142 FF               [12]  665 	mov	r7,a
      002143 EE               [12]  666 	mov	a,r6
      002144 08               [12]  667 	inc	r0
      002145 36               [12]  668 	addc	a,@r0
      002146 FE               [12]  669 	mov	r6,a
      002147 A8 10            [24]  670 	mov	r0,_bp
      002149 08               [12]  671 	inc	r0
      00214A 86 82            [24]  672 	mov	dpl,@r0
      00214C 08               [12]  673 	inc	r0
      00214D 86 83            [24]  674 	mov	dph,@r0
      00214F 08               [12]  675 	inc	r0
      002150 86 F0            [24]  676 	mov	b,@r0
      002152 EF               [12]  677 	mov	a,r7
      002153 12 2D 52         [24]  678 	lcall	__gptrput
      002156 A3               [24]  679 	inc	dptr
      002157 EE               [12]  680 	mov	a,r6
      002158 12 2D 52         [24]  681 	lcall	__gptrput
                                    682 ;	walk.c:146: t->c = cur->c + neigh[j].c;
      00215B A8 10            [24]  683 	mov	r0,_bp
      00215D 08               [12]  684 	inc	r0
      00215E E5 10            [12]  685 	mov	a,_bp
      002160 24 08            [12]  686 	add	a,#0x08
      002162 F9               [12]  687 	mov	r1,a
      002163 74 02            [12]  688 	mov	a,#0x02
      002165 26               [12]  689 	add	a,@r0
      002166 F7               [12]  690 	mov	@r1,a
      002167 E4               [12]  691 	clr	a
      002168 08               [12]  692 	inc	r0
      002169 36               [12]  693 	addc	a,@r0
      00216A 09               [12]  694 	inc	r1
      00216B F7               [12]  695 	mov	@r1,a
      00216C 08               [12]  696 	inc	r0
      00216D 09               [12]  697 	inc	r1
      00216E E6               [12]  698 	mov	a,@r0
      00216F F7               [12]  699 	mov	@r1,a
      002170 74 02            [12]  700 	mov	a,#0x02
      002172 2A               [12]  701 	add	a,r2
      002173 FA               [12]  702 	mov	r2,a
      002174 E4               [12]  703 	clr	a
      002175 3B               [12]  704 	addc	a,r3
      002176 FB               [12]  705 	mov	r3,a
      002177 8A 82            [24]  706 	mov	dpl,r2
      002179 8B 83            [24]  707 	mov	dph,r3
      00217B 8C F0            [24]  708 	mov	b,r4
      00217D 12 2F 5D         [24]  709 	lcall	__gptrget
      002180 FA               [12]  710 	mov	r2,a
      002181 A3               [24]  711 	inc	dptr
      002182 12 2F 5D         [24]  712 	lcall	__gptrget
      002185 FB               [12]  713 	mov	r3,a
      002186 E5 10            [12]  714 	mov	a,_bp
      002188 24 06            [12]  715 	add	a,#0x06
      00218A F8               [12]  716 	mov	r0,a
      00218B E6               [12]  717 	mov	a,@r0
      00218C 24 84            [12]  718 	add	a,#_neigh
      00218E FC               [12]  719 	mov	r4,a
      00218F 08               [12]  720 	inc	r0
      002190 E6               [12]  721 	mov	a,@r0
      002191 34 FF            [12]  722 	addc	a,#(_neigh >> 8)
      002193 FD               [12]  723 	mov	r5,a
      002194 8C 82            [24]  724 	mov	dpl,r4
      002196 8D 83            [24]  725 	mov	dph,r5
      002198 A3               [24]  726 	inc	dptr
      002199 A3               [24]  727 	inc	dptr
      00219A E0               [24]  728 	movx	a,@dptr
      00219B FC               [12]  729 	mov	r4,a
      00219C A3               [24]  730 	inc	dptr
      00219D E0               [24]  731 	movx	a,@dptr
      00219E FD               [12]  732 	mov	r5,a
      00219F EC               [12]  733 	mov	a,r4
      0021A0 2A               [12]  734 	add	a,r2
      0021A1 FA               [12]  735 	mov	r2,a
      0021A2 ED               [12]  736 	mov	a,r5
      0021A3 3B               [12]  737 	addc	a,r3
      0021A4 FB               [12]  738 	mov	r3,a
      0021A5 E5 10            [12]  739 	mov	a,_bp
      0021A7 24 08            [12]  740 	add	a,#0x08
      0021A9 F8               [12]  741 	mov	r0,a
      0021AA 86 82            [24]  742 	mov	dpl,@r0
      0021AC 08               [12]  743 	inc	r0
      0021AD 86 83            [24]  744 	mov	dph,@r0
      0021AF 08               [12]  745 	inc	r0
      0021B0 86 F0            [24]  746 	mov	b,@r0
      0021B2 EA               [12]  747 	mov	a,r2
      0021B3 12 2D 52         [24]  748 	lcall	__gptrput
      0021B6 A3               [24]  749 	inc	dptr
      0021B7 EB               [12]  750 	mov	a,r3
      0021B8 12 2D 52         [24]  751 	lcall	__gptrput
                                    752 ;	walk.c:148: if (t->r < 0) t->r += ROWS;
      0021BB A8 10            [24]  753 	mov	r0,_bp
      0021BD 08               [12]  754 	inc	r0
      0021BE 86 82            [24]  755 	mov	dpl,@r0
      0021C0 08               [12]  756 	inc	r0
      0021C1 86 83            [24]  757 	mov	dph,@r0
      0021C3 08               [12]  758 	inc	r0
      0021C4 86 F0            [24]  759 	mov	b,@r0
      0021C6 12 2F 5D         [24]  760 	lcall	__gptrget
      0021C9 FD               [12]  761 	mov	r5,a
      0021CA A3               [24]  762 	inc	dptr
      0021CB 12 2F 5D         [24]  763 	lcall	__gptrget
      0021CE FC               [12]  764 	mov	r4,a
      0021CF EE               [12]  765 	mov	a,r6
      0021D0 30 E7 1D         [24]  766 	jnb	acc.7,00104$
      0021D3 74 30            [12]  767 	mov	a,#0x30
      0021D5 2D               [12]  768 	add	a,r5
      0021D6 FF               [12]  769 	mov	r7,a
      0021D7 E4               [12]  770 	clr	a
      0021D8 3C               [12]  771 	addc	a,r4
      0021D9 FE               [12]  772 	mov	r6,a
      0021DA A8 10            [24]  773 	mov	r0,_bp
      0021DC 08               [12]  774 	inc	r0
      0021DD 86 82            [24]  775 	mov	dpl,@r0
      0021DF 08               [12]  776 	inc	r0
      0021E0 86 83            [24]  777 	mov	dph,@r0
      0021E2 08               [12]  778 	inc	r0
      0021E3 86 F0            [24]  779 	mov	b,@r0
      0021E5 EF               [12]  780 	mov	a,r7
      0021E6 12 2D 52         [24]  781 	lcall	__gptrput
      0021E9 A3               [24]  782 	inc	dptr
      0021EA EE               [12]  783 	mov	a,r6
      0021EB 12 2D 52         [24]  784 	lcall	__gptrput
      0021EE 80 27            [24]  785 	sjmp	00105$
      0021F0                        786 00104$:
                                    787 ;	walk.c:149: else if (t->r >= ROWS) t->r -= ROWS;
      0021F0 C3               [12]  788 	clr	c
      0021F1 ED               [12]  789 	mov	a,r5
      0021F2 94 30            [12]  790 	subb	a,#0x30
      0021F4 EC               [12]  791 	mov	a,r4
      0021F5 64 80            [12]  792 	xrl	a,#0x80
      0021F7 94 80            [12]  793 	subb	a,#0x80
      0021F9 40 1C            [24]  794 	jc	00105$
      0021FB ED               [12]  795 	mov	a,r5
      0021FC 24 D0            [12]  796 	add	a,#0xd0
      0021FE FD               [12]  797 	mov	r5,a
      0021FF EC               [12]  798 	mov	a,r4
      002200 34 FF            [12]  799 	addc	a,#0xff
      002202 FC               [12]  800 	mov	r4,a
      002203 A8 10            [24]  801 	mov	r0,_bp
      002205 08               [12]  802 	inc	r0
      002206 86 82            [24]  803 	mov	dpl,@r0
      002208 08               [12]  804 	inc	r0
      002209 86 83            [24]  805 	mov	dph,@r0
      00220B 08               [12]  806 	inc	r0
      00220C 86 F0            [24]  807 	mov	b,@r0
      00220E ED               [12]  808 	mov	a,r5
      00220F 12 2D 52         [24]  809 	lcall	__gptrput
      002212 A3               [24]  810 	inc	dptr
      002213 EC               [12]  811 	mov	a,r4
      002214 12 2D 52         [24]  812 	lcall	__gptrput
      002217                        813 00105$:
                                    814 ;	walk.c:150: if (t->c < 0) t->c += COLS;
      002217 E5 10            [12]  815 	mov	a,_bp
      002219 24 08            [12]  816 	add	a,#0x08
      00221B F8               [12]  817 	mov	r0,a
      00221C 86 82            [24]  818 	mov	dpl,@r0
      00221E 08               [12]  819 	inc	r0
      00221F 86 83            [24]  820 	mov	dph,@r0
      002221 08               [12]  821 	inc	r0
      002222 86 F0            [24]  822 	mov	b,@r0
      002224 12 2F 5D         [24]  823 	lcall	__gptrget
      002227 A3               [24]  824 	inc	dptr
      002228 12 2F 5D         [24]  825 	lcall	__gptrget
      00222B 30 E7 35         [24]  826 	jnb	acc.7,00109$
      00222E E5 10            [12]  827 	mov	a,_bp
      002230 24 08            [12]  828 	add	a,#0x08
      002232 F8               [12]  829 	mov	r0,a
      002233 86 82            [24]  830 	mov	dpl,@r0
      002235 08               [12]  831 	inc	r0
      002236 86 83            [24]  832 	mov	dph,@r0
      002238 08               [12]  833 	inc	r0
      002239 86 F0            [24]  834 	mov	b,@r0
      00223B 12 2F 5D         [24]  835 	lcall	__gptrget
      00223E FE               [12]  836 	mov	r6,a
      00223F A3               [24]  837 	inc	dptr
      002240 12 2F 5D         [24]  838 	lcall	__gptrget
      002243 FF               [12]  839 	mov	r7,a
      002244 74 C9            [12]  840 	mov	a,#0xc9
      002246 2E               [12]  841 	add	a,r6
      002247 FE               [12]  842 	mov	r6,a
      002248 E4               [12]  843 	clr	a
      002249 3F               [12]  844 	addc	a,r7
      00224A FF               [12]  845 	mov	r7,a
      00224B E5 10            [12]  846 	mov	a,_bp
      00224D 24 08            [12]  847 	add	a,#0x08
      00224F F8               [12]  848 	mov	r0,a
      002250 86 82            [24]  849 	mov	dpl,@r0
      002252 08               [12]  850 	inc	r0
      002253 86 83            [24]  851 	mov	dph,@r0
      002255 08               [12]  852 	inc	r0
      002256 86 F0            [24]  853 	mov	b,@r0
      002258 EE               [12]  854 	mov	a,r6
      002259 12 2D 52         [24]  855 	lcall	__gptrput
      00225C A3               [24]  856 	inc	dptr
      00225D EF               [12]  857 	mov	a,r7
      00225E 12 2D 52         [24]  858 	lcall	__gptrput
      002261 80 55            [24]  859 	sjmp	00110$
      002263                        860 00109$:
                                    861 ;	walk.c:151: else if (t->c >= COLS) t->c -= COLS;
      002263 E5 10            [12]  862 	mov	a,_bp
      002265 24 08            [12]  863 	add	a,#0x08
      002267 F8               [12]  864 	mov	r0,a
      002268 86 82            [24]  865 	mov	dpl,@r0
      00226A 08               [12]  866 	inc	r0
      00226B 86 83            [24]  867 	mov	dph,@r0
      00226D 08               [12]  868 	inc	r0
      00226E 86 F0            [24]  869 	mov	b,@r0
      002270 12 2F 5D         [24]  870 	lcall	__gptrget
      002273 FE               [12]  871 	mov	r6,a
      002274 A3               [24]  872 	inc	dptr
      002275 12 2F 5D         [24]  873 	lcall	__gptrget
      002278 FF               [12]  874 	mov	r7,a
      002279 C3               [12]  875 	clr	c
      00227A EE               [12]  876 	mov	a,r6
      00227B 94 C9            [12]  877 	subb	a,#0xc9
      00227D EF               [12]  878 	mov	a,r7
      00227E 64 80            [12]  879 	xrl	a,#0x80
      002280 94 80            [12]  880 	subb	a,#0x80
      002282 40 34            [24]  881 	jc	00110$
      002284 E5 10            [12]  882 	mov	a,_bp
      002286 24 08            [12]  883 	add	a,#0x08
      002288 F8               [12]  884 	mov	r0,a
      002289 86 82            [24]  885 	mov	dpl,@r0
      00228B 08               [12]  886 	inc	r0
      00228C 86 83            [24]  887 	mov	dph,@r0
      00228E 08               [12]  888 	inc	r0
      00228F 86 F0            [24]  889 	mov	b,@r0
      002291 12 2F 5D         [24]  890 	lcall	__gptrget
      002294 FE               [12]  891 	mov	r6,a
      002295 A3               [24]  892 	inc	dptr
      002296 12 2F 5D         [24]  893 	lcall	__gptrget
      002299 FF               [12]  894 	mov	r7,a
      00229A EE               [12]  895 	mov	a,r6
      00229B 24 37            [12]  896 	add	a,#0x37
      00229D FE               [12]  897 	mov	r6,a
      00229E EF               [12]  898 	mov	a,r7
      00229F 34 FF            [12]  899 	addc	a,#0xff
      0022A1 FF               [12]  900 	mov	r7,a
      0022A2 E5 10            [12]  901 	mov	a,_bp
      0022A4 24 08            [12]  902 	add	a,#0x08
      0022A6 F8               [12]  903 	mov	r0,a
      0022A7 86 82            [24]  904 	mov	dpl,@r0
      0022A9 08               [12]  905 	inc	r0
      0022AA 86 83            [24]  906 	mov	dph,@r0
      0022AC 08               [12]  907 	inc	r0
      0022AD 86 F0            [24]  908 	mov	b,@r0
      0022AF EE               [12]  909 	mov	a,r6
      0022B0 12 2D 52         [24]  910 	lcall	__gptrput
      0022B3 A3               [24]  911 	inc	dptr
      0022B4 EF               [12]  912 	mov	a,r7
      0022B5 12 2D 52         [24]  913 	lcall	__gptrput
      0022B8                        914 00110$:
                                    915 ;	walk.c:153: if (g[t->r][t->c] == 0xaau) return 0u;
      0022B8 A8 10            [24]  916 	mov	r0,_bp
      0022BA 08               [12]  917 	inc	r0
      0022BB 86 82            [24]  918 	mov	dpl,@r0
      0022BD 08               [12]  919 	inc	r0
      0022BE 86 83            [24]  920 	mov	dph,@r0
      0022C0 08               [12]  921 	inc	r0
      0022C1 86 F0            [24]  922 	mov	b,@r0
      0022C3 12 2F 5D         [24]  923 	lcall	__gptrget
      0022C6 FE               [12]  924 	mov	r6,a
      0022C7 A3               [24]  925 	inc	dptr
      0022C8 12 2F 5D         [24]  926 	lcall	__gptrget
      0022CB FF               [12]  927 	mov	r7,a
      0022CC C0 06            [24]  928 	push	ar6
      0022CE C0 07            [24]  929 	push	ar7
      0022D0 90 00 C9         [24]  930 	mov	dptr,#0x00c9
      0022D3 12 2D 6D         [24]  931 	lcall	__mulint
      0022D6 AE 82            [24]  932 	mov	r6,dpl
      0022D8 AF 83            [24]  933 	mov	r7,dph
      0022DA 15 81            [12]  934 	dec	sp
      0022DC 15 81            [12]  935 	dec	sp
      0022DE EE               [12]  936 	mov	a,r6
      0022DF 24 10            [12]  937 	add	a,#_g
      0022E1 FE               [12]  938 	mov	r6,a
      0022E2 EF               [12]  939 	mov	a,r7
      0022E3 34 43            [12]  940 	addc	a,#(_g >> 8)
      0022E5 FF               [12]  941 	mov	r7,a
      0022E6 E5 10            [12]  942 	mov	a,_bp
      0022E8 24 08            [12]  943 	add	a,#0x08
      0022EA F8               [12]  944 	mov	r0,a
      0022EB 86 82            [24]  945 	mov	dpl,@r0
      0022ED 08               [12]  946 	inc	r0
      0022EE 86 83            [24]  947 	mov	dph,@r0
      0022F0 08               [12]  948 	inc	r0
      0022F1 86 F0            [24]  949 	mov	b,@r0
      0022F3 12 2F 5D         [24]  950 	lcall	__gptrget
      0022F6 FC               [12]  951 	mov	r4,a
      0022F7 A3               [24]  952 	inc	dptr
      0022F8 12 2F 5D         [24]  953 	lcall	__gptrget
      0022FB FD               [12]  954 	mov	r5,a
      0022FC EC               [12]  955 	mov	a,r4
      0022FD 2E               [12]  956 	add	a,r6
      0022FE F5 82            [12]  957 	mov	dpl,a
      002300 ED               [12]  958 	mov	a,r5
      002301 3F               [12]  959 	addc	a,r7
      002302 F5 83            [12]  960 	mov	dph,a
      002304 E0               [24]  961 	movx	a,@dptr
      002305 FF               [12]  962 	mov	r7,a
      002306 BF AA 05         [24]  963 	cjne	r7,#0xaa,00114$
      002309 75 82 00         [24]  964 	mov	dpl,#0x00
      00230C 80 59            [24]  965 	sjmp	00116$
      00230E                        966 00114$:
                                    967 ;	walk.c:154: else if (g[t->r][t->c] != 0x55u) bang();
      00230E A8 10            [24]  968 	mov	r0,_bp
      002310 08               [12]  969 	inc	r0
      002311 86 82            [24]  970 	mov	dpl,@r0
      002313 08               [12]  971 	inc	r0
      002314 86 83            [24]  972 	mov	dph,@r0
      002316 08               [12]  973 	inc	r0
      002317 86 F0            [24]  974 	mov	b,@r0
      002319 12 2F 5D         [24]  975 	lcall	__gptrget
      00231C FE               [12]  976 	mov	r6,a
      00231D A3               [24]  977 	inc	dptr
      00231E 12 2F 5D         [24]  978 	lcall	__gptrget
      002321 FF               [12]  979 	mov	r7,a
      002322 C0 06            [24]  980 	push	ar6
      002324 C0 07            [24]  981 	push	ar7
      002326 90 00 C9         [24]  982 	mov	dptr,#0x00c9
      002329 12 2D 6D         [24]  983 	lcall	__mulint
      00232C AE 82            [24]  984 	mov	r6,dpl
      00232E AF 83            [24]  985 	mov	r7,dph
      002330 15 81            [12]  986 	dec	sp
      002332 15 81            [12]  987 	dec	sp
      002334 EE               [12]  988 	mov	a,r6
      002335 24 10            [12]  989 	add	a,#_g
      002337 FE               [12]  990 	mov	r6,a
      002338 EF               [12]  991 	mov	a,r7
      002339 34 43            [12]  992 	addc	a,#(_g >> 8)
      00233B FF               [12]  993 	mov	r7,a
      00233C E5 10            [12]  994 	mov	a,_bp
      00233E 24 08            [12]  995 	add	a,#0x08
      002340 F8               [12]  996 	mov	r0,a
      002341 86 82            [24]  997 	mov	dpl,@r0
      002343 08               [12]  998 	inc	r0
      002344 86 83            [24]  999 	mov	dph,@r0
      002346 08               [12] 1000 	inc	r0
      002347 86 F0            [24] 1001 	mov	b,@r0
      002349 12 2F 5D         [24] 1002 	lcall	__gptrget
      00234C FC               [12] 1003 	mov	r4,a
      00234D A3               [24] 1004 	inc	dptr
      00234E 12 2F 5D         [24] 1005 	lcall	__gptrget
      002351 FD               [12] 1006 	mov	r5,a
      002352 EC               [12] 1007 	mov	a,r4
      002353 2E               [12] 1008 	add	a,r6
      002354 F5 82            [12] 1009 	mov	dpl,a
      002356 ED               [12] 1010 	mov	a,r5
      002357 3F               [12] 1011 	addc	a,r7
      002358 F5 83            [12] 1012 	mov	dph,a
      00235A E0               [24] 1013 	movx	a,@dptr
      00235B FF               [12] 1014 	mov	r7,a
      00235C BF 55 02         [24] 1015 	cjne	r7,#0x55,00148$
      00235F 80 03            [24] 1016 	sjmp	00115$
      002361                       1017 00148$:
      002361 12 20 87         [24] 1018 	lcall	_bang
      002364                       1019 00115$:
                                   1020 ;	walk.c:156: return 1u;
      002364 75 82 01         [24] 1021 	mov	dpl,#0x01
      002367                       1022 00116$:
                                   1023 ;	walk.c:157: }
      002367 85 10 81         [24] 1024 	mov	sp,_bp
      00236A D0 10            [24] 1025 	pop	_bp
      00236C 22               [24] 1026 	ret
                                   1027 ;------------------------------------------------------------
                                   1028 ;Allocation info for local variables in function 'walk'
                                   1029 ;------------------------------------------------------------
                                   1030 ;nstart                    Allocated to registers r5 r6 r7 
                                   1031 ;cur                       Allocated to stack - _bp +7
                                   1032 ;t                         Allocated to stack - _bp +11
                                   1033 ;scramble                  Allocated to stack - _bp +15
                                   1034 ;ti                        Allocated to registers r2 
                                   1035 ;tj                        Allocated to registers r6 
                                   1036 ;tx                        Allocated to stack - _bp +31
                                   1037 ;j                         Allocated to stack - _bp +32
                                   1038 ;sloc0                     Allocated to stack - _bp +1
                                   1039 ;sloc1                     Allocated to stack - _bp +3
                                   1040 ;sloc2                     Allocated to stack - _bp +35
                                   1041 ;sloc3                     Allocated to stack - _bp +4
                                   1042 ;------------------------------------------------------------
                                   1043 ;	walk.c:159: static void walk(struct node *nstart) {
                                   1044 ;	-----------------------------------------
                                   1045 ;	 function walk
                                   1046 ;	-----------------------------------------
      00236D                       1047 _walk:
      00236D C0 10            [24] 1048 	push	_bp
      00236F E5 81            [12] 1049 	mov	a,sp
      002371 F5 10            [12] 1050 	mov	_bp,a
      002373 24 20            [12] 1051 	add	a,#0x20
      002375 F5 81            [12] 1052 	mov	sp,a
                                   1053 ;	walk.c:164: if (!qadd(nstart)) bang();
      002377 AD 82            [24] 1054 	mov	r5,dpl
      002379 AE 83            [24] 1055 	mov	r6,dph
      00237B AF F0            [24] 1056 	mov	r7,b
      00237D C0 07            [24] 1057 	push	ar7
      00237F C0 06            [24] 1058 	push	ar6
      002381 C0 05            [24] 1059 	push	ar5
      002383 12 2A FF         [24] 1060 	lcall	_qadd
      002386 E5 82            [12] 1061 	mov	a,dpl
      002388 D0 05            [24] 1062 	pop	ar5
      00238A D0 06            [24] 1063 	pop	ar6
      00238C D0 07            [24] 1064 	pop	ar7
      00238E 70 0F            [24] 1065 	jnz	00102$
      002390 C0 07            [24] 1066 	push	ar7
      002392 C0 06            [24] 1067 	push	ar6
      002394 C0 05            [24] 1068 	push	ar5
      002396 12 20 87         [24] 1069 	lcall	_bang
      002399 D0 05            [24] 1070 	pop	ar5
      00239B D0 06            [24] 1071 	pop	ar6
      00239D D0 07            [24] 1072 	pop	ar7
      00239F                       1073 00102$:
                                   1074 ;	walk.c:165: g[nstart->r][nstart->c] = 0xaau;
      00239F 8D 82            [24] 1075 	mov	dpl,r5
      0023A1 8E 83            [24] 1076 	mov	dph,r6
      0023A3 8F F0            [24] 1077 	mov	b,r7
      0023A5 12 2F 5D         [24] 1078 	lcall	__gptrget
      0023A8 FB               [12] 1079 	mov	r3,a
      0023A9 A3               [24] 1080 	inc	dptr
      0023AA 12 2F 5D         [24] 1081 	lcall	__gptrget
      0023AD FC               [12] 1082 	mov	r4,a
      0023AE C0 07            [24] 1083 	push	ar7
      0023B0 C0 06            [24] 1084 	push	ar6
      0023B2 C0 05            [24] 1085 	push	ar5
      0023B4 C0 03            [24] 1086 	push	ar3
      0023B6 C0 04            [24] 1087 	push	ar4
      0023B8 90 00 C9         [24] 1088 	mov	dptr,#0x00c9
      0023BB 12 2D 6D         [24] 1089 	lcall	__mulint
      0023BE AB 82            [24] 1090 	mov	r3,dpl
      0023C0 AC 83            [24] 1091 	mov	r4,dph
      0023C2 15 81            [12] 1092 	dec	sp
      0023C4 15 81            [12] 1093 	dec	sp
      0023C6 D0 05            [24] 1094 	pop	ar5
      0023C8 D0 06            [24] 1095 	pop	ar6
      0023CA D0 07            [24] 1096 	pop	ar7
      0023CC EB               [12] 1097 	mov	a,r3
      0023CD 24 10            [12] 1098 	add	a,#_g
      0023CF FB               [12] 1099 	mov	r3,a
      0023D0 EC               [12] 1100 	mov	a,r4
      0023D1 34 43            [12] 1101 	addc	a,#(_g >> 8)
      0023D3 FC               [12] 1102 	mov	r4,a
      0023D4 74 02            [12] 1103 	mov	a,#0x02
      0023D6 2D               [12] 1104 	add	a,r5
      0023D7 FD               [12] 1105 	mov	r5,a
      0023D8 E4               [12] 1106 	clr	a
      0023D9 3E               [12] 1107 	addc	a,r6
      0023DA FE               [12] 1108 	mov	r6,a
      0023DB 8D 82            [24] 1109 	mov	dpl,r5
      0023DD 8E 83            [24] 1110 	mov	dph,r6
      0023DF 8F F0            [24] 1111 	mov	b,r7
      0023E1 12 2F 5D         [24] 1112 	lcall	__gptrget
      0023E4 FD               [12] 1113 	mov	r5,a
      0023E5 A3               [24] 1114 	inc	dptr
      0023E6 12 2F 5D         [24] 1115 	lcall	__gptrget
      0023E9 FE               [12] 1116 	mov	r6,a
      0023EA ED               [12] 1117 	mov	a,r5
      0023EB 2B               [12] 1118 	add	a,r3
      0023EC F5 82            [12] 1119 	mov	dpl,a
      0023EE EE               [12] 1120 	mov	a,r6
      0023EF 3C               [12] 1121 	addc	a,r4
      0023F0 F5 83            [12] 1122 	mov	dph,a
      0023F2 74 AA            [12] 1123 	mov	a,#0xaa
      0023F4 F0               [24] 1124 	movx	@dptr,a
                                   1125 ;	walk.c:167: process:
      0023F5 E5 10            [12] 1126 	mov	a,_bp
      0023F7 24 0F            [12] 1127 	add	a,#0x0f
      0023F9 FF               [12] 1128 	mov	r7,a
      0023FA E5 10            [12] 1129 	mov	a,_bp
      0023FC 24 0B            [12] 1130 	add	a,#0x0b
      0023FE F9               [12] 1131 	mov	r1,a
      0023FF E5 10            [12] 1132 	mov	a,_bp
      002401 24 03            [12] 1133 	add	a,#0x03
      002403 F8               [12] 1134 	mov	r0,a
      002404 A6 01            [24] 1135 	mov	@r0,ar1
      002406 74 02            [12] 1136 	mov	a,#0x02
      002408 29               [12] 1137 	add	a,r1
      002409 F8               [12] 1138 	mov	r0,a
      00240A E5 10            [12] 1139 	mov	a,_bp
      00240C 24 07            [12] 1140 	add	a,#0x07
      00240E FD               [12] 1141 	mov	r5,a
      00240F                       1142 00103$:
                                   1143 ;	walk.c:168: unsetOE(OE76_MASK7 | OE76_MASK6);
      00240F 75 82 C0         [24] 1144 	mov	dpl,#0xc0
      002412 C0 07            [24] 1145 	push	ar7
      002414 C0 05            [24] 1146 	push	ar5
      002416 C0 01            [24] 1147 	push	ar1
      002418 C0 00            [24] 1148 	push	ar0
      00241A 12 20 AD         [24] 1149 	lcall	_unsetOE
      00241D D0 00            [24] 1150 	pop	ar0
      00241F D0 01            [24] 1151 	pop	ar1
      002421 D0 05            [24] 1152 	pop	ar5
                                   1153 ;	walk.c:170: if (!qget(&cur)) goto term;
      002423 8D 02            [24] 1154 	mov	ar2,r5
      002425 7B 00            [12] 1155 	mov	r3,#0x00
      002427 7C 40            [12] 1156 	mov	r4,#0x40
      002429 8A 82            [24] 1157 	mov	dpl,r2
      00242B 8B 83            [24] 1158 	mov	dph,r3
      00242D 8C F0            [24] 1159 	mov	b,r4
      00242F C0 05            [24] 1160 	push	ar5
      002431 C0 01            [24] 1161 	push	ar1
      002433 C0 00            [24] 1162 	push	ar0
      002435 12 2B F1         [24] 1163 	lcall	_qget
      002438 E5 82            [12] 1164 	mov	a,dpl
      00243A D0 00            [24] 1165 	pop	ar0
      00243C D0 01            [24] 1166 	pop	ar1
      00243E D0 05            [24] 1167 	pop	ar5
      002440 D0 07            [24] 1168 	pop	ar7
      002442 70 03            [24] 1169 	jnz	00184$
      002444 02 27 10         [24] 1170 	ljmp	00119$
      002447                       1171 00184$:
                                   1172 ;	walk.c:172: printf("\033[2;1H% 8d% 8d% 8d% 8d", hp, tp, cur.r, cur.c);
      002447 74 02            [12] 1173 	mov	a,#0x02
      002449 2D               [12] 1174 	add	a,r5
      00244A FC               [12] 1175 	mov	r4,a
      00244B C0 00            [24] 1176 	push	ar0
      00244D A8 10            [24] 1177 	mov	r0,_bp
      00244F 08               [12] 1178 	inc	r0
      002450 C0 01            [24] 1179 	push	ar1
      002452 A9 04            [24] 1180 	mov	r1,ar4
      002454 E7               [12] 1181 	mov	a,@r1
      002455 F6               [12] 1182 	mov	@r0,a
      002456 09               [12] 1183 	inc	r1
      002457 E7               [12] 1184 	mov	a,@r1
      002458 08               [12] 1185 	inc	r0
      002459 F6               [12] 1186 	mov	@r0,a
      00245A D0 01            [24] 1187 	pop	ar1
      00245C A8 05            [24] 1188 	mov	r0,ar5
      00245E 86 03            [24] 1189 	mov	ar3,@r0
      002460 08               [12] 1190 	inc	r0
      002461 86 06            [24] 1191 	mov	ar6,@r0
      002463 D0 00            [24] 1192 	pop	ar0
      002465 C0 07            [24] 1193 	push	ar7
      002467 C0 05            [24] 1194 	push	ar5
      002469 C0 04            [24] 1195 	push	ar4
      00246B C0 01            [24] 1196 	push	ar1
      00246D C0 00            [24] 1197 	push	ar0
      00246F 85 00 F0         [24] 1198 	mov	b,ar0
      002472 A8 10            [24] 1199 	mov	r0,_bp
      002474 08               [12] 1200 	inc	r0
      002475 E6               [12] 1201 	mov	a,@r0
      002476 C0 E0            [24] 1202 	push	acc
      002478 08               [12] 1203 	inc	r0
      002479 E6               [12] 1204 	mov	a,@r0
      00247A C0 E0            [24] 1205 	push	acc
      00247C C0 03            [24] 1206 	push	ar3
      00247E C0 06            [24] 1207 	push	ar6
      002480 90 FF 82         [24] 1208 	mov	dptr,#_tp
      002483 E0               [24] 1209 	movx	a,@dptr
      002484 C0 E0            [24] 1210 	push	acc
      002486 A3               [24] 1211 	inc	dptr
      002487 E0               [24] 1212 	movx	a,@dptr
      002488 C0 E0            [24] 1213 	push	acc
      00248A 90 FF 80         [24] 1214 	mov	dptr,#_hp
      00248D E0               [24] 1215 	movx	a,@dptr
      00248E C0 E0            [24] 1216 	push	acc
      002490 A3               [24] 1217 	inc	dptr
      002491 E0               [24] 1218 	movx	a,@dptr
      002492 C0 E0            [24] 1219 	push	acc
      002494 74 64            [12] 1220 	mov	a,#___str_1
      002496 C0 E0            [24] 1221 	push	acc
      002498 74 42            [12] 1222 	mov	a,#(___str_1 >> 8)
      00249A C0 E0            [24] 1223 	push	acc
      00249C 74 80            [12] 1224 	mov	a,#0x80
      00249E C0 E0            [24] 1225 	push	acc
      0024A0 12 2F 24         [24] 1226 	lcall	_printf
      0024A3 E5 81            [12] 1227 	mov	a,sp
      0024A5 24 F5            [12] 1228 	add	a,#0xf5
      0024A7 F5 81            [12] 1229 	mov	sp,a
      0024A9 D0 00            [24] 1230 	pop	ar0
      0024AB D0 01            [24] 1231 	pop	ar1
      0024AD D0 04            [24] 1232 	pop	ar4
      0024AF D0 05            [24] 1233 	pop	ar5
      0024B1 D0 07            [24] 1234 	pop	ar7
                                   1235 ;	walk.c:174: printf("\033[%d;%dH.", cur.r + 4, cur.c + 1);
      0024B3 C0 00            [24] 1236 	push	ar0
      0024B5 A8 04            [24] 1237 	mov	r0,ar4
      0024B7 86 04            [24] 1238 	mov	ar4,@r0
      0024B9 08               [12] 1239 	inc	r0
      0024BA 86 06            [24] 1240 	mov	ar6,@r0
      0024BC D0 00            [24] 1241 	pop	ar0
      0024BE 0C               [12] 1242 	inc	r4
      0024BF BC 00 01         [24] 1243 	cjne	r4,#0x00,00185$
      0024C2 0E               [12] 1244 	inc	r6
      0024C3                       1245 00185$:
      0024C3 C0 00            [24] 1246 	push	ar0
      0024C5 A8 05            [24] 1247 	mov	r0,ar5
      0024C7 86 02            [24] 1248 	mov	ar2,@r0
      0024C9 08               [12] 1249 	inc	r0
      0024CA 86 03            [24] 1250 	mov	ar3,@r0
      0024CC D0 00            [24] 1251 	pop	ar0
      0024CE 74 04            [12] 1252 	mov	a,#0x04
      0024D0 2A               [12] 1253 	add	a,r2
      0024D1 FA               [12] 1254 	mov	r2,a
      0024D2 E4               [12] 1255 	clr	a
      0024D3 3B               [12] 1256 	addc	a,r3
      0024D4 FB               [12] 1257 	mov	r3,a
      0024D5 C0 07            [24] 1258 	push	ar7
      0024D7 C0 05            [24] 1259 	push	ar5
      0024D9 C0 01            [24] 1260 	push	ar1
      0024DB C0 00            [24] 1261 	push	ar0
      0024DD C0 04            [24] 1262 	push	ar4
      0024DF C0 06            [24] 1263 	push	ar6
      0024E1 C0 02            [24] 1264 	push	ar2
      0024E3 C0 03            [24] 1265 	push	ar3
      0024E5 74 7B            [12] 1266 	mov	a,#___str_2
      0024E7 C0 E0            [24] 1267 	push	acc
      0024E9 74 42            [12] 1268 	mov	a,#(___str_2 >> 8)
      0024EB C0 E0            [24] 1269 	push	acc
      0024ED 74 80            [12] 1270 	mov	a,#0x80
      0024EF C0 E0            [24] 1271 	push	acc
      0024F1 12 2F 24         [24] 1272 	lcall	_printf
      0024F4 E5 81            [12] 1273 	mov	a,sp
      0024F6 24 F9            [12] 1274 	add	a,#0xf9
      0024F8 F5 81            [12] 1275 	mov	sp,a
                                   1276 ;	walk.c:175: setOE(OE76_MASK6);
      0024FA 75 82 40         [24] 1277 	mov	dpl,#0x40
      0024FD 12 20 94         [24] 1278 	lcall	_setOE
      002500 D0 00            [24] 1279 	pop	ar0
      002502 D0 01            [24] 1280 	pop	ar1
      002504 D0 05            [24] 1281 	pop	ar5
      002506 D0 07            [24] 1282 	pop	ar7
                                   1283 ;	walk.c:177: for (j = 0u; j < NMAX; j++)
      002508 7E 00            [12] 1284 	mov	r6,#0x00
                                   1285 ;	walk.c:204: return;
                                   1286 ;	walk.c:177: for (j = 0u; j < NMAX; j++)
      00250A                       1287 00120$:
                                   1288 ;	walk.c:178: scramble[j] = j;
      00250A EE               [12] 1289 	mov	a,r6
      00250B 2F               [12] 1290 	add	a,r7
      00250C C0 00            [24] 1291 	push	ar0
      00250E F8               [12] 1292 	mov	r0,a
      00250F A6 06            [24] 1293 	mov	@r0,ar6
      002511 D0 00            [24] 1294 	pop	ar0
                                   1295 ;	walk.c:177: for (j = 0u; j < NMAX; j++)
      002513 0E               [12] 1296 	inc	r6
      002514 BE 10 00         [24] 1297 	cjne	r6,#0x10,00186$
      002517                       1298 00186$:
      002517 40 F1            [24] 1299 	jc	00120$
                                   1300 ;	walk.c:180: do ti = (uint8_t)(rand() % NMAX);
      002519 7C 00            [12] 1301 	mov	r4,#0x00
      00251B                       1302 00107$:
      00251B C0 07            [24] 1303 	push	ar7
      00251D C0 05            [24] 1304 	push	ar5
      00251F C0 04            [24] 1305 	push	ar4
      002521 C0 01            [24] 1306 	push	ar1
      002523 C0 00            [24] 1307 	push	ar0
      002525 12 2C 75         [24] 1308 	lcall	_rand
      002528 AA 82            [24] 1309 	mov	r2,dpl
      00252A D0 00            [24] 1310 	pop	ar0
      00252C D0 01            [24] 1311 	pop	ar1
      00252E D0 04            [24] 1312 	pop	ar4
      002530 D0 05            [24] 1313 	pop	ar5
      002532 D0 07            [24] 1314 	pop	ar7
      002534 53 02 0F         [24] 1315 	anl	ar2,#0x0f
      002537 7B 00            [12] 1316 	mov	r3,#0x00
                                   1317 ;	walk.c:181: while (ti == j);
      002539 EA               [12] 1318 	mov	a,r2
      00253A B5 04 02         [24] 1319 	cjne	a,ar4,00188$
      00253D 80 DC            [24] 1320 	sjmp	00107$
      00253F                       1321 00188$:
                                   1322 ;	walk.c:182: do tj = (uint8_t)(rand() % NMAX);
      00253F                       1323 00110$:
      00253F C0 05            [24] 1324 	push	ar5
      002541 C0 07            [24] 1325 	push	ar7
      002543 C0 04            [24] 1326 	push	ar4
      002545 C0 02            [24] 1327 	push	ar2
      002547 C0 01            [24] 1328 	push	ar1
      002549 C0 00            [24] 1329 	push	ar0
      00254B 12 2C 75         [24] 1330 	lcall	_rand
      00254E AB 82            [24] 1331 	mov	r3,dpl
      002550 D0 00            [24] 1332 	pop	ar0
      002552 D0 01            [24] 1333 	pop	ar1
      002554 D0 02            [24] 1334 	pop	ar2
      002556 D0 04            [24] 1335 	pop	ar4
      002558 D0 07            [24] 1336 	pop	ar7
      00255A 53 03 0F         [24] 1337 	anl	ar3,#0x0f
      00255D 8B 06            [24] 1338 	mov	ar6,r3
                                   1339 ;	walk.c:183: while (ti == tj);
      00255F EA               [12] 1340 	mov	a,r2
      002560 B5 06 04         [24] 1341 	cjne	a,ar6,00189$
      002563 D0 05            [24] 1342 	pop	ar5
      002565 80 D8            [24] 1343 	sjmp	00110$
      002567                       1344 00189$:
                                   1345 ;	walk.c:184: tx = scramble[ti];
      002567 EA               [12] 1346 	mov	a,r2
      002568 2F               [12] 1347 	add	a,r7
      002569 FB               [12] 1348 	mov	r3,a
      00256A C0 00            [24] 1349 	push	ar0
      00256C E5 10            [12] 1350 	mov	a,_bp
      00256E 24 1F            [12] 1351 	add	a,#0x1f
      002570 F8               [12] 1352 	mov	r0,a
      002571 C0 01            [24] 1353 	push	ar1
      002573 A9 03            [24] 1354 	mov	r1,ar3
      002575 E7               [12] 1355 	mov	a,@r1
      002576 F6               [12] 1356 	mov	@r0,a
                                   1357 ;	walk.c:185: scramble[ti] = scramble[tj];
      002577 EE               [12] 1358 	mov	a,r6
      002578 2F               [12] 1359 	add	a,r7
      002579 FD               [12] 1360 	mov	r5,a
      00257A A8 05            [24] 1361 	mov	r0,ar5
      00257C 86 02            [24] 1362 	mov	ar2,@r0
      00257E A8 03            [24] 1363 	mov	r0,ar3
      002580 A6 02            [24] 1364 	mov	@r0,ar2
                                   1365 ;	walk.c:186: scramble[tj] = tx;
      002582 A8 05            [24] 1366 	mov	r0,ar5
      002584 E5 10            [12] 1367 	mov	a,_bp
      002586 24 1F            [12] 1368 	add	a,#0x1f
      002588 F9               [12] 1369 	mov	r1,a
      002589 E7               [12] 1370 	mov	a,@r1
      00258A F6               [12] 1371 	mov	@r0,a
      00258B D0 00            [24] 1372 	pop	ar0
      00258D D0 01            [24] 1373 	pop	ar1
                                   1374 ;	walk.c:179: for (j = 0u; j < NMAX; j++) {
      00258F 0C               [12] 1375 	inc	r4
      002590 BC 10 00         [24] 1376 	cjne	r4,#0x10,00190$
      002593                       1377 00190$:
      002593 D0 05            [24] 1378 	pop	ar5
      002595 40 84            [24] 1379 	jc	00107$
                                   1380 ;	walk.c:189: for (j = 0u; j < NMAX; j++) {
      002597 C0 00            [24] 1381 	push	ar0
      002599 A8 10            [24] 1382 	mov	r0,_bp
      00259B 08               [12] 1383 	inc	r0
      00259C A6 05            [24] 1384 	mov	@r0,ar5
      00259E E5 10            [12] 1385 	mov	a,_bp
      0025A0 24 20            [12] 1386 	add	a,#0x20
      0025A2 F8               [12] 1387 	mov	r0,a
      0025A3 76 00            [12] 1388 	mov	@r0,#0x00
      0025A5 D0 00            [24] 1389 	pop	ar0
      0025A7                       1390 00124$:
                                   1391 ;	walk.c:190: unsetOE(OE76_MASK7);
      0025A7 C0 05            [24] 1392 	push	ar5
      0025A9 75 82 80         [24] 1393 	mov	dpl,#0x80
      0025AC C0 07            [24] 1394 	push	ar7
      0025AE C0 05            [24] 1395 	push	ar5
      0025B0 C0 01            [24] 1396 	push	ar1
      0025B2 C0 00            [24] 1397 	push	ar0
      0025B4 12 20 AD         [24] 1398 	lcall	_unsetOE
      0025B7 D0 00            [24] 1399 	pop	ar0
      0025B9 D0 01            [24] 1400 	pop	ar1
      0025BB D0 05            [24] 1401 	pop	ar5
      0025BD D0 07            [24] 1402 	pop	ar7
                                   1403 ;	walk.c:192: if (update(&t, &cur, scramble[j])) {
      0025BF C0 00            [24] 1404 	push	ar0
      0025C1 E5 10            [12] 1405 	mov	a,_bp
      0025C3 24 20            [12] 1406 	add	a,#0x20
      0025C5 F8               [12] 1407 	mov	r0,a
      0025C6 E6               [12] 1408 	mov	a,@r0
      0025C7 2F               [12] 1409 	add	a,r7
      0025C8 FA               [12] 1410 	mov	r2,a
      0025C9 A8 02            [24] 1411 	mov	r0,ar2
      0025CB 86 03            [24] 1412 	mov	ar3,@r0
      0025CD A8 10            [24] 1413 	mov	r0,_bp
      0025CF 08               [12] 1414 	inc	r0
      0025D0 C0 01            [24] 1415 	push	ar1
      0025D2 E5 10            [12] 1416 	mov	a,_bp
      0025D4 24 04            [12] 1417 	add	a,#0x04
      0025D6 F9               [12] 1418 	mov	r1,a
      0025D7 E6               [12] 1419 	mov	a,@r0
      0025D8 F7               [12] 1420 	mov	@r1,a
      0025D9 09               [12] 1421 	inc	r1
      0025DA 77 00            [12] 1422 	mov	@r1,#0x00
      0025DC 09               [12] 1423 	inc	r1
      0025DD 77 40            [12] 1424 	mov	@r1,#0x40
      0025DF D0 01            [24] 1425 	pop	ar1
      0025E1 D0 00            [24] 1426 	pop	ar0
      0025E3 89 02            [24] 1427 	mov	ar2,r1
      0025E5 7C 00            [12] 1428 	mov	r4,#0x00
      0025E7 7E 40            [12] 1429 	mov	r6,#0x40
      0025E9 C0 07            [24] 1430 	push	ar7
      0025EB C0 05            [24] 1431 	push	ar5
      0025ED C0 01            [24] 1432 	push	ar1
      0025EF C0 00            [24] 1433 	push	ar0
      0025F1 C0 03            [24] 1434 	push	ar3
      0025F3 85 00 F0         [24] 1435 	mov	b,ar0
      0025F6 E5 10            [12] 1436 	mov	a,_bp
      0025F8 24 04            [12] 1437 	add	a,#0x04
      0025FA F8               [12] 1438 	mov	r0,a
      0025FB E6               [12] 1439 	mov	a,@r0
      0025FC C0 E0            [24] 1440 	push	acc
      0025FE 08               [12] 1441 	inc	r0
      0025FF E6               [12] 1442 	mov	a,@r0
      002600 C0 E0            [24] 1443 	push	acc
      002602 08               [12] 1444 	inc	r0
      002603 E6               [12] 1445 	mov	a,@r0
      002604 C0 E0            [24] 1446 	push	acc
      002606 8A 82            [24] 1447 	mov	dpl,r2
      002608 8C 83            [24] 1448 	mov	dph,r4
      00260A 8E F0            [24] 1449 	mov	b,r6
      00260C 12 20 E0         [24] 1450 	lcall	_update
      00260F AE 82            [24] 1451 	mov	r6,dpl
      002611 E5 81            [12] 1452 	mov	a,sp
      002613 24 FC            [12] 1453 	add	a,#0xfc
      002615 F5 81            [12] 1454 	mov	sp,a
      002617 D0 00            [24] 1455 	pop	ar0
      002619 D0 01            [24] 1456 	pop	ar1
      00261B D0 05            [24] 1457 	pop	ar5
      00261D D0 07            [24] 1458 	pop	ar7
      00261F D0 05            [24] 1459 	pop	ar5
      002621 EE               [12] 1460 	mov	a,r6
      002622 70 03            [24] 1461 	jnz	00192$
      002624 02 26 F6         [24] 1462 	ljmp	00125$
      002627                       1463 00192$:
                                   1464 ;	walk.c:193: if (!qadd(&t)) bang();
      002627 C0 00            [24] 1465 	push	ar0
      002629 E5 10            [12] 1466 	mov	a,_bp
      00262B 24 03            [12] 1467 	add	a,#0x03
      00262D F8               [12] 1468 	mov	r0,a
      00262E 86 03            [24] 1469 	mov	ar3,@r0
      002630 7C 00            [12] 1470 	mov	r4,#0x00
      002632 7E 40            [12] 1471 	mov	r6,#0x40
      002634 D0 00            [24] 1472 	pop	ar0
      002636 8B 82            [24] 1473 	mov	dpl,r3
      002638 8C 83            [24] 1474 	mov	dph,r4
      00263A 8E F0            [24] 1475 	mov	b,r6
      00263C C0 07            [24] 1476 	push	ar7
      00263E C0 05            [24] 1477 	push	ar5
      002640 C0 01            [24] 1478 	push	ar1
      002642 C0 00            [24] 1479 	push	ar0
      002644 12 2A FF         [24] 1480 	lcall	_qadd
      002647 E5 82            [12] 1481 	mov	a,dpl
      002649 D0 00            [24] 1482 	pop	ar0
      00264B D0 01            [24] 1483 	pop	ar1
      00264D D0 05            [24] 1484 	pop	ar5
      00264F D0 07            [24] 1485 	pop	ar7
      002651 70 13            [24] 1486 	jnz	00115$
      002653 C0 07            [24] 1487 	push	ar7
      002655 C0 05            [24] 1488 	push	ar5
      002657 C0 01            [24] 1489 	push	ar1
      002659 C0 00            [24] 1490 	push	ar0
      00265B 12 20 87         [24] 1491 	lcall	_bang
      00265E D0 00            [24] 1492 	pop	ar0
      002660 D0 01            [24] 1493 	pop	ar1
      002662 D0 05            [24] 1494 	pop	ar5
      002664 D0 07            [24] 1495 	pop	ar7
      002666                       1496 00115$:
                                   1497 ;	walk.c:194: g[t.r][t.c] = 0xaau;
      002666 87 04            [24] 1498 	mov	ar4,@r1
      002668 09               [12] 1499 	inc	r1
      002669 87 06            [24] 1500 	mov	ar6,@r1
      00266B 19               [12] 1501 	dec	r1
      00266C C0 07            [24] 1502 	push	ar7
      00266E C0 05            [24] 1503 	push	ar5
      002670 C0 01            [24] 1504 	push	ar1
      002672 C0 00            [24] 1505 	push	ar0
      002674 C0 04            [24] 1506 	push	ar4
      002676 C0 06            [24] 1507 	push	ar6
      002678 90 00 C9         [24] 1508 	mov	dptr,#0x00c9
      00267B 12 2D 6D         [24] 1509 	lcall	__mulint
      00267E AC 82            [24] 1510 	mov	r4,dpl
      002680 AE 83            [24] 1511 	mov	r6,dph
      002682 15 81            [12] 1512 	dec	sp
      002684 15 81            [12] 1513 	dec	sp
      002686 D0 00            [24] 1514 	pop	ar0
      002688 EC               [12] 1515 	mov	a,r4
      002689 24 10            [12] 1516 	add	a,#_g
      00268B FC               [12] 1517 	mov	r4,a
      00268C EE               [12] 1518 	mov	a,r6
      00268D 34 43            [12] 1519 	addc	a,#(_g >> 8)
      00268F FE               [12] 1520 	mov	r6,a
      002690 86 02            [24] 1521 	mov	ar2,@r0
      002692 08               [12] 1522 	inc	r0
      002693 86 03            [24] 1523 	mov	ar3,@r0
      002695 18               [12] 1524 	dec	r0
      002696 EA               [12] 1525 	mov	a,r2
      002697 2C               [12] 1526 	add	a,r4
      002698 F5 82            [12] 1527 	mov	dpl,a
      00269A EB               [12] 1528 	mov	a,r3
      00269B 3E               [12] 1529 	addc	a,r6
      00269C F5 83            [12] 1530 	mov	dph,a
      00269E 74 AA            [12] 1531 	mov	a,#0xaa
      0026A0 F0               [24] 1532 	movx	@dptr,a
                                   1533 ;	walk.c:196: setOE(OE76_MASK7);
      0026A1 75 82 80         [24] 1534 	mov	dpl,#0x80
      0026A4 C0 00            [24] 1535 	push	ar0
      0026A6 12 20 94         [24] 1536 	lcall	_setOE
      0026A9 D0 00            [24] 1537 	pop	ar0
      0026AB D0 01            [24] 1538 	pop	ar1
      0026AD D0 05            [24] 1539 	pop	ar5
      0026AF D0 07            [24] 1540 	pop	ar7
                                   1541 ;	walk.c:197: printf("\033[%d;%dHo", t.r + 4, t.c + 1);
      0026B1 86 04            [24] 1542 	mov	ar4,@r0
      0026B3 08               [12] 1543 	inc	r0
      0026B4 86 06            [24] 1544 	mov	ar6,@r0
      0026B6 18               [12] 1545 	dec	r0
      0026B7 0C               [12] 1546 	inc	r4
      0026B8 BC 00 01         [24] 1547 	cjne	r4,#0x00,00194$
      0026BB 0E               [12] 1548 	inc	r6
      0026BC                       1549 00194$:
      0026BC 87 02            [24] 1550 	mov	ar2,@r1
      0026BE 09               [12] 1551 	inc	r1
      0026BF 87 03            [24] 1552 	mov	ar3,@r1
      0026C1 19               [12] 1553 	dec	r1
      0026C2 74 04            [12] 1554 	mov	a,#0x04
      0026C4 2A               [12] 1555 	add	a,r2
      0026C5 FA               [12] 1556 	mov	r2,a
      0026C6 E4               [12] 1557 	clr	a
      0026C7 3B               [12] 1558 	addc	a,r3
      0026C8 FB               [12] 1559 	mov	r3,a
      0026C9 C0 07            [24] 1560 	push	ar7
      0026CB C0 05            [24] 1561 	push	ar5
      0026CD C0 01            [24] 1562 	push	ar1
      0026CF C0 00            [24] 1563 	push	ar0
      0026D1 C0 04            [24] 1564 	push	ar4
      0026D3 C0 06            [24] 1565 	push	ar6
      0026D5 C0 02            [24] 1566 	push	ar2
      0026D7 C0 03            [24] 1567 	push	ar3
      0026D9 74 85            [12] 1568 	mov	a,#___str_3
      0026DB C0 E0            [24] 1569 	push	acc
      0026DD 74 42            [12] 1570 	mov	a,#(___str_3 >> 8)
      0026DF C0 E0            [24] 1571 	push	acc
      0026E1 74 80            [12] 1572 	mov	a,#0x80
      0026E3 C0 E0            [24] 1573 	push	acc
      0026E5 12 2F 24         [24] 1574 	lcall	_printf
      0026E8 E5 81            [12] 1575 	mov	a,sp
      0026EA 24 F9            [12] 1576 	add	a,#0xf9
      0026EC F5 81            [12] 1577 	mov	sp,a
      0026EE D0 00            [24] 1578 	pop	ar0
      0026F0 D0 01            [24] 1579 	pop	ar1
      0026F2 D0 05            [24] 1580 	pop	ar5
      0026F4 D0 07            [24] 1581 	pop	ar7
      0026F6                       1582 00125$:
                                   1583 ;	walk.c:189: for (j = 0u; j < NMAX; j++) {
      0026F6 C0 00            [24] 1584 	push	ar0
      0026F8 E5 10            [12] 1585 	mov	a,_bp
      0026FA 24 20            [12] 1586 	add	a,#0x20
      0026FC F8               [12] 1587 	mov	r0,a
      0026FD 06               [12] 1588 	inc	@r0
      0026FE E5 10            [12] 1589 	mov	a,_bp
      002700 24 20            [12] 1590 	add	a,#0x20
      002702 F8               [12] 1591 	mov	r0,a
      002703 B6 10 00         [24] 1592 	cjne	@r0,#0x10,00195$
      002706                       1593 00195$:
      002706 D0 00            [24] 1594 	pop	ar0
      002708 50 03            [24] 1595 	jnc	00196$
      00270A 02 25 A7         [24] 1596 	ljmp	00124$
      00270D                       1597 00196$:
                                   1598 ;	walk.c:201: goto process;
      00270D 02 24 0F         [24] 1599 	ljmp	00103$
                                   1600 ;	walk.c:203: term:
      002710                       1601 00119$:
                                   1602 ;	walk.c:204: return;
                                   1603 ;	walk.c:205: }
      002710 85 10 81         [24] 1604 	mov	sp,_bp
      002713 D0 10            [24] 1605 	pop	_bp
      002715 22               [24] 1606 	ret
                                   1607 ;------------------------------------------------------------
                                   1608 ;Allocation info for local variables in function 'main'
                                   1609 ;------------------------------------------------------------
                                   1610 ;initial                   Allocated to stack - _bp +5
                                   1611 ;N                         Allocated to stack - _bp +9
                                   1612 ;i                         Allocated to stack - _bp +11
                                   1613 ;j                         Allocated to registers r2 r6 
                                   1614 ;sloc0                     Allocated to stack - _bp +1
                                   1615 ;sloc1                     Allocated to stack - _bp +3
                                   1616 ;sloc2                     Allocated to stack - _bp +15
                                   1617 ;------------------------------------------------------------
                                   1618 ;	walk.c:207: void main(void) {
                                   1619 ;	-----------------------------------------
                                   1620 ;	 function main
                                   1621 ;	-----------------------------------------
      002716                       1622 _main:
      002716 C0 10            [24] 1623 	push	_bp
      002718 E5 81            [12] 1624 	mov	a,sp
      00271A F5 10            [12] 1625 	mov	_bp,a
      00271C 24 0C            [12] 1626 	add	a,#0x0c
      00271E F5 81            [12] 1627 	mov	sp,a
                                   1628 ;	walk.c:212: i0 = 1u;
      002720 78 11            [12] 1629 	mov	r0,#_i0
      002722 76 01            [12] 1630 	mov	@r0,#0x01
                                   1631 ;	walk.c:214: P1_7 = 1;
                                   1632 ;	assignBit
      002724 D2 97            [12] 1633 	setb	_P1_7
                                   1634 ;	walk.c:215: IT0 = 1;
                                   1635 ;	assignBit
      002726 D2 88            [12] 1636 	setb	_IT0
                                   1637 ;	walk.c:216: EX0 = 1;
                                   1638 ;	assignBit
      002728 D2 A8            [12] 1639 	setb	_EX0
                                   1640 ;	walk.c:217: EA = 1;
                                   1641 ;	assignBit
      00272A D2 AF            [12] 1642 	setb	_EA
                                   1643 ;	walk.c:219: srand(RND);
      00272C 90 80 00         [24] 1644 	mov	dptr,#_RND
      00272F E0               [24] 1645 	movx	a,@dptr
      002730 FE               [12] 1646 	mov	r6,a
      002731 A3               [24] 1647 	inc	dptr
      002732 E0               [24] 1648 	movx	a,@dptr
      002733 FF               [12] 1649 	mov	r7,a
      002734 8E 82            [24] 1650 	mov	dpl,r6
      002736 8F 83            [24] 1651 	mov	dph,r7
      002738 12 2D 39         [24] 1652 	lcall	_srand
                                   1653 ;	walk.c:220: qinit();
      00273B 12 2A F1         [24] 1654 	lcall	_qinit
                                   1655 ;	walk.c:222: puts("\033[2J\033[?25l");
      00273E 90 42 8F         [24] 1656 	mov	dptr,#___str_4
      002741 75 F0 80         [24] 1657 	mov	b,#0x80
      002744 12 2E 9E         [24] 1658 	lcall	_puts
                                   1659 ;	walk.c:224: while (i0) {
      002747 E5 10            [12] 1660 	mov	a,_bp
      002749 24 05            [12] 1661 	add	a,#0x05
      00274B F9               [12] 1662 	mov	r1,a
      00274C FF               [12] 1663 	mov	r7,a
      00274D E5 10            [12] 1664 	mov	a,_bp
      00274F 24 09            [12] 1665 	add	a,#0x09
      002751 F8               [12] 1666 	mov	r0,a
      002752 E4               [12] 1667 	clr	a
      002753 F6               [12] 1668 	mov	@r0,a
      002754 08               [12] 1669 	inc	r0
      002755 F6               [12] 1670 	mov	@r0,a
      002756                       1671 00108$:
      002756 78 11            [12] 1672 	mov	r0,#_i0
      002758 E6               [12] 1673 	mov	a,@r0
      002759 70 03            [24] 1674 	jnz	00182$
      00275B 02 2A DD         [24] 1675 	ljmp	00110$
      00275E                       1676 00182$:
                                   1677 ;	walk.c:225: for (i = 0; i < ROWS; i++)
      00275E 7B 00            [12] 1678 	mov	r3,#0x00
      002760 7C 00            [12] 1679 	mov	r4,#0x00
      002762 A8 10            [24] 1680 	mov	r0,_bp
      002764 08               [12] 1681 	inc	r0
      002765 E4               [12] 1682 	clr	a
      002766 F6               [12] 1683 	mov	@r0,a
      002767 08               [12] 1684 	inc	r0
      002768 F6               [12] 1685 	mov	@r0,a
                                   1686 ;	walk.c:226: for (j = 0; j < COLS; j++)
      002769                       1687 00125$:
      002769 A8 10            [24] 1688 	mov	r0,_bp
      00276B 08               [12] 1689 	inc	r0
      00276C C0 01            [24] 1690 	push	ar1
      00276E E5 10            [12] 1691 	mov	a,_bp
      002770 24 03            [12] 1692 	add	a,#0x03
      002772 F9               [12] 1693 	mov	r1,a
      002773 E6               [12] 1694 	mov	a,@r0
      002774 24 10            [12] 1695 	add	a,#_g
      002776 F7               [12] 1696 	mov	@r1,a
      002777 08               [12] 1697 	inc	r0
      002778 E6               [12] 1698 	mov	a,@r0
      002779 34 43            [12] 1699 	addc	a,#(_g >> 8)
      00277B 09               [12] 1700 	inc	r1
      00277C F7               [12] 1701 	mov	@r1,a
      00277D D0 01            [24] 1702 	pop	ar1
      00277F 7A 00            [12] 1703 	mov	r2,#0x00
      002781 7E 00            [12] 1704 	mov	r6,#0x00
      002783                       1705 00112$:
                                   1706 ;	walk.c:227: g[i][j] = 0x55u;
      002783 E5 10            [12] 1707 	mov	a,_bp
      002785 24 03            [12] 1708 	add	a,#0x03
      002787 F8               [12] 1709 	mov	r0,a
      002788 EA               [12] 1710 	mov	a,r2
      002789 26               [12] 1711 	add	a,@r0
      00278A F5 82            [12] 1712 	mov	dpl,a
      00278C EE               [12] 1713 	mov	a,r6
      00278D 08               [12] 1714 	inc	r0
      00278E 36               [12] 1715 	addc	a,@r0
      00278F F5 83            [12] 1716 	mov	dph,a
      002791 74 55            [12] 1717 	mov	a,#0x55
      002793 F0               [24] 1718 	movx	@dptr,a
                                   1719 ;	walk.c:226: for (j = 0; j < COLS; j++)
      002794 0A               [12] 1720 	inc	r2
      002795 BA 00 01         [24] 1721 	cjne	r2,#0x00,00183$
      002798 0E               [12] 1722 	inc	r6
      002799                       1723 00183$:
      002799 C3               [12] 1724 	clr	c
      00279A EA               [12] 1725 	mov	a,r2
      00279B 94 C9            [12] 1726 	subb	a,#0xc9
      00279D EE               [12] 1727 	mov	a,r6
      00279E 64 80            [12] 1728 	xrl	a,#0x80
      0027A0 94 80            [12] 1729 	subb	a,#0x80
      0027A2 40 DF            [24] 1730 	jc	00112$
                                   1731 ;	walk.c:225: for (i = 0; i < ROWS; i++)
      0027A4 A8 10            [24] 1732 	mov	r0,_bp
      0027A6 08               [12] 1733 	inc	r0
      0027A7 74 C9            [12] 1734 	mov	a,#0xc9
      0027A9 26               [12] 1735 	add	a,@r0
      0027AA F6               [12] 1736 	mov	@r0,a
      0027AB E4               [12] 1737 	clr	a
      0027AC 08               [12] 1738 	inc	r0
      0027AD 36               [12] 1739 	addc	a,@r0
      0027AE F6               [12] 1740 	mov	@r0,a
      0027AF 0B               [12] 1741 	inc	r3
      0027B0 BB 00 01         [24] 1742 	cjne	r3,#0x00,00185$
      0027B3 0C               [12] 1743 	inc	r4
      0027B4                       1744 00185$:
      0027B4 C3               [12] 1745 	clr	c
      0027B5 EB               [12] 1746 	mov	a,r3
      0027B6 94 30            [12] 1747 	subb	a,#0x30
      0027B8 EC               [12] 1748 	mov	a,r4
      0027B9 64 80            [12] 1749 	xrl	a,#0x80
      0027BB 94 80            [12] 1750 	subb	a,#0x80
      0027BD 40 AA            [24] 1751 	jc	00125$
                                   1752 ;	walk.c:229: initial.r = rand() % ROWS;
      0027BF E5 10            [12] 1753 	mov	a,_bp
      0027C1 24 05            [12] 1754 	add	a,#0x05
      0027C3 F8               [12] 1755 	mov	r0,a
      0027C4 C0 07            [24] 1756 	push	ar7
      0027C6 C0 01            [24] 1757 	push	ar1
      0027C8 C0 00            [24] 1758 	push	ar0
      0027CA 12 2C 75         [24] 1759 	lcall	_rand
      0027CD AD 82            [24] 1760 	mov	r5,dpl
      0027CF AE 83            [24] 1761 	mov	r6,dph
      0027D1 74 30            [12] 1762 	mov	a,#0x30
      0027D3 C0 E0            [24] 1763 	push	acc
      0027D5 E4               [12] 1764 	clr	a
      0027D6 C0 E0            [24] 1765 	push	acc
      0027D8 8D 82            [24] 1766 	mov	dpl,r5
      0027DA 8E 83            [24] 1767 	mov	dph,r6
      0027DC 12 2F 79         [24] 1768 	lcall	__modsint
      0027DF AD 82            [24] 1769 	mov	r5,dpl
      0027E1 AE 83            [24] 1770 	mov	r6,dph
      0027E3 15 81            [12] 1771 	dec	sp
      0027E5 15 81            [12] 1772 	dec	sp
      0027E7 D0 00            [24] 1773 	pop	ar0
      0027E9 D0 01            [24] 1774 	pop	ar1
      0027EB A6 05            [24] 1775 	mov	@r0,ar5
      0027ED 08               [12] 1776 	inc	r0
      0027EE A6 06            [24] 1777 	mov	@r0,ar6
      0027F0 18               [12] 1778 	dec	r0
                                   1779 ;	walk.c:230: initial.c = rand() % COLS;
      0027F1 74 02            [12] 1780 	mov	a,#0x02
      0027F3 29               [12] 1781 	add	a,r1
      0027F4 F8               [12] 1782 	mov	r0,a
      0027F5 C0 01            [24] 1783 	push	ar1
      0027F7 C0 00            [24] 1784 	push	ar0
      0027F9 12 2C 75         [24] 1785 	lcall	_rand
      0027FC AD 82            [24] 1786 	mov	r5,dpl
      0027FE AE 83            [24] 1787 	mov	r6,dph
      002800 74 C9            [12] 1788 	mov	a,#0xc9
      002802 C0 E0            [24] 1789 	push	acc
      002804 E4               [12] 1790 	clr	a
      002805 C0 E0            [24] 1791 	push	acc
      002807 8D 82            [24] 1792 	mov	dpl,r5
      002809 8E 83            [24] 1793 	mov	dph,r6
      00280B 12 2F 79         [24] 1794 	lcall	__modsint
      00280E AD 82            [24] 1795 	mov	r5,dpl
      002810 AE 83            [24] 1796 	mov	r6,dph
      002812 15 81            [12] 1797 	dec	sp
      002814 15 81            [12] 1798 	dec	sp
      002816 D0 00            [24] 1799 	pop	ar0
      002818 A6 05            [24] 1800 	mov	@r0,ar5
      00281A 08               [12] 1801 	inc	r0
      00281B A6 06            [24] 1802 	mov	@r0,ar6
      00281D 18               [12] 1803 	dec	r0
                                   1804 ;	walk.c:232: puts("\033[2J\033[?25l");
      00281E 90 42 8F         [24] 1805 	mov	dptr,#___str_4
      002821 75 F0 80         [24] 1806 	mov	b,#0x80
      002824 C0 00            [24] 1807 	push	ar0
      002826 12 2E 9E         [24] 1808 	lcall	_puts
      002829 D0 00            [24] 1809 	pop	ar0
      00282B D0 01            [24] 1810 	pop	ar1
                                   1811 ;	walk.c:233: printf("\033[1;1H% 8u% 8d% 8d", N, initial.r, initial.c);
      00282D 86 05            [24] 1812 	mov	ar5,@r0
      00282F 08               [12] 1813 	inc	r0
      002830 86 06            [24] 1814 	mov	ar6,@r0
      002832 18               [12] 1815 	dec	r0
      002833 87 03            [24] 1816 	mov	ar3,@r1
      002835 09               [12] 1817 	inc	r1
      002836 87 04            [24] 1818 	mov	ar4,@r1
      002838 19               [12] 1819 	dec	r1
      002839 C0 01            [24] 1820 	push	ar1
      00283B C0 05            [24] 1821 	push	ar5
      00283D C0 06            [24] 1822 	push	ar6
      00283F C0 03            [24] 1823 	push	ar3
      002841 C0 04            [24] 1824 	push	ar4
      002843 E5 10            [12] 1825 	mov	a,_bp
      002845 24 09            [12] 1826 	add	a,#0x09
      002847 F8               [12] 1827 	mov	r0,a
      002848 E6               [12] 1828 	mov	a,@r0
      002849 C0 E0            [24] 1829 	push	acc
      00284B 08               [12] 1830 	inc	r0
      00284C E6               [12] 1831 	mov	a,@r0
      00284D C0 E0            [24] 1832 	push	acc
      00284F 74 9A            [12] 1833 	mov	a,#___str_5
      002851 C0 E0            [24] 1834 	push	acc
      002853 74 42            [12] 1835 	mov	a,#(___str_5 >> 8)
      002855 C0 E0            [24] 1836 	push	acc
      002857 74 80            [12] 1837 	mov	a,#0x80
      002859 C0 E0            [24] 1838 	push	acc
      00285B 12 2F 24         [24] 1839 	lcall	_printf
      00285E E5 81            [12] 1840 	mov	a,sp
      002860 24 F7            [12] 1841 	add	a,#0xf7
      002862 F5 81            [12] 1842 	mov	sp,a
      002864 D0 01            [24] 1843 	pop	ar1
      002866 D0 07            [24] 1844 	pop	ar7
                                   1845 ;	walk.c:235: for (i = 0; i < REG; i++) {
      002868 E5 10            [12] 1846 	mov	a,_bp
      00286A 24 0B            [12] 1847 	add	a,#0x0b
      00286C F8               [12] 1848 	mov	r0,a
      00286D E4               [12] 1849 	clr	a
      00286E F6               [12] 1850 	mov	@r0,a
      00286F 08               [12] 1851 	inc	r0
      002870 F6               [12] 1852 	mov	@r0,a
      002871                       1853 00116$:
                                   1854 ;	walk.c:236: neigh[i].r = neigh[REG + i].r * (1 + rand() % 32);
      002871 C0 07            [24] 1855 	push	ar7
      002873 E5 10            [12] 1856 	mov	a,_bp
      002875 24 0B            [12] 1857 	add	a,#0x0b
      002877 F8               [12] 1858 	mov	r0,a
      002878 E6               [12] 1859 	mov	a,@r0
      002879 25 E0            [12] 1860 	add	a,acc
      00287B FB               [12] 1861 	mov	r3,a
      00287C 08               [12] 1862 	inc	r0
      00287D E6               [12] 1863 	mov	a,@r0
      00287E 33               [12] 1864 	rlc	a
      00287F FC               [12] 1865 	mov	r4,a
      002880 EB               [12] 1866 	mov	a,r3
      002881 2B               [12] 1867 	add	a,r3
      002882 FB               [12] 1868 	mov	r3,a
      002883 EC               [12] 1869 	mov	a,r4
      002884 33               [12] 1870 	rlc	a
      002885 FC               [12] 1871 	mov	r4,a
      002886 E5 10            [12] 1872 	mov	a,_bp
      002888 24 03            [12] 1873 	add	a,#0x03
      00288A F8               [12] 1874 	mov	r0,a
      00288B EB               [12] 1875 	mov	a,r3
      00288C 24 84            [12] 1876 	add	a,#_neigh
      00288E F6               [12] 1877 	mov	@r0,a
      00288F EC               [12] 1878 	mov	a,r4
      002890 34 FF            [12] 1879 	addc	a,#(_neigh >> 8)
      002892 08               [12] 1880 	inc	r0
      002893 F6               [12] 1881 	mov	@r0,a
      002894 E5 10            [12] 1882 	mov	a,_bp
      002896 24 0B            [12] 1883 	add	a,#0x0b
      002898 F8               [12] 1884 	mov	r0,a
      002899 86 06            [24] 1885 	mov	ar6,@r0
      00289B 74 08            [12] 1886 	mov	a,#0x08
      00289D 2E               [12] 1887 	add	a,r6
      00289E FE               [12] 1888 	mov	r6,a
      00289F C2 D5            [12] 1889 	clr	F0
      0028A1 75 F0 04         [24] 1890 	mov	b,#0x04
      0028A4 EE               [12] 1891 	mov	a,r6
      0028A5 30 E7 04         [24] 1892 	jnb	acc.7,00187$
      0028A8 B2 D5            [12] 1893 	cpl	F0
      0028AA F4               [12] 1894 	cpl	a
      0028AB 04               [12] 1895 	inc	a
      0028AC                       1896 00187$:
      0028AC A4               [48] 1897 	mul	ab
      0028AD 30 D5 0A         [24] 1898 	jnb	F0,00188$
      0028B0 F4               [12] 1899 	cpl	a
      0028B1 24 01            [12] 1900 	add	a,#0x01
      0028B3 C5 F0            [12] 1901 	xch	a,b
      0028B5 F4               [12] 1902 	cpl	a
      0028B6 34 00            [12] 1903 	addc	a,#0x00
      0028B8 C5 F0            [12] 1904 	xch	a,b
      0028BA                       1905 00188$:
      0028BA FE               [12] 1906 	mov	r6,a
      0028BB AD F0            [24] 1907 	mov	r5,b
      0028BD 24 84            [12] 1908 	add	a,#_neigh
      0028BF F5 82            [12] 1909 	mov	dpl,a
      0028C1 ED               [12] 1910 	mov	a,r5
      0028C2 34 FF            [12] 1911 	addc	a,#(_neigh >> 8)
      0028C4 F5 83            [12] 1912 	mov	dph,a
      0028C6 A8 10            [24] 1913 	mov	r0,_bp
      0028C8 08               [12] 1914 	inc	r0
      0028C9 E0               [24] 1915 	movx	a,@dptr
      0028CA F6               [12] 1916 	mov	@r0,a
      0028CB A3               [24] 1917 	inc	dptr
      0028CC E0               [24] 1918 	movx	a,@dptr
      0028CD 08               [12] 1919 	inc	r0
      0028CE F6               [12] 1920 	mov	@r0,a
      0028CF C0 06            [24] 1921 	push	ar6
      0028D1 C0 05            [24] 1922 	push	ar5
      0028D3 C0 04            [24] 1923 	push	ar4
      0028D5 C0 03            [24] 1924 	push	ar3
      0028D7 C0 01            [24] 1925 	push	ar1
      0028D9 12 2C 75         [24] 1926 	lcall	_rand
      0028DC AA 82            [24] 1927 	mov	r2,dpl
      0028DE AF 83            [24] 1928 	mov	r7,dph
      0028E0 74 20            [12] 1929 	mov	a,#0x20
      0028E2 C0 E0            [24] 1930 	push	acc
      0028E4 E4               [12] 1931 	clr	a
      0028E5 C0 E0            [24] 1932 	push	acc
      0028E7 8A 82            [24] 1933 	mov	dpl,r2
      0028E9 8F 83            [24] 1934 	mov	dph,r7
      0028EB 12 2F 79         [24] 1935 	lcall	__modsint
      0028EE AA 82            [24] 1936 	mov	r2,dpl
      0028F0 AF 83            [24] 1937 	mov	r7,dph
      0028F2 15 81            [12] 1938 	dec	sp
      0028F4 15 81            [12] 1939 	dec	sp
      0028F6 D0 01            [24] 1940 	pop	ar1
      0028F8 D0 03            [24] 1941 	pop	ar3
      0028FA D0 04            [24] 1942 	pop	ar4
      0028FC D0 05            [24] 1943 	pop	ar5
      0028FE D0 06            [24] 1944 	pop	ar6
      002900 0A               [12] 1945 	inc	r2
      002901 BA 00 01         [24] 1946 	cjne	r2,#0x00,00189$
      002904 0F               [12] 1947 	inc	r7
      002905                       1948 00189$:
      002905 C0 06            [24] 1949 	push	ar6
      002907 C0 05            [24] 1950 	push	ar5
      002909 C0 04            [24] 1951 	push	ar4
      00290B C0 03            [24] 1952 	push	ar3
      00290D C0 01            [24] 1953 	push	ar1
      00290F C0 02            [24] 1954 	push	ar2
      002911 C0 07            [24] 1955 	push	ar7
      002913 A8 10            [24] 1956 	mov	r0,_bp
      002915 08               [12] 1957 	inc	r0
      002916 86 82            [24] 1958 	mov	dpl,@r0
      002918 08               [12] 1959 	inc	r0
      002919 86 83            [24] 1960 	mov	dph,@r0
      00291B 12 2D 6D         [24] 1961 	lcall	__mulint
      00291E AA 82            [24] 1962 	mov	r2,dpl
      002920 AF 83            [24] 1963 	mov	r7,dph
      002922 15 81            [12] 1964 	dec	sp
      002924 15 81            [12] 1965 	dec	sp
      002926 D0 01            [24] 1966 	pop	ar1
      002928 D0 03            [24] 1967 	pop	ar3
      00292A D0 04            [24] 1968 	pop	ar4
      00292C D0 05            [24] 1969 	pop	ar5
      00292E D0 06            [24] 1970 	pop	ar6
      002930 E5 10            [12] 1971 	mov	a,_bp
      002932 24 03            [12] 1972 	add	a,#0x03
      002934 F8               [12] 1973 	mov	r0,a
      002935 86 82            [24] 1974 	mov	dpl,@r0
      002937 08               [12] 1975 	inc	r0
      002938 86 83            [24] 1976 	mov	dph,@r0
      00293A EA               [12] 1977 	mov	a,r2
      00293B F0               [24] 1978 	movx	@dptr,a
      00293C EF               [12] 1979 	mov	a,r7
      00293D A3               [24] 1980 	inc	dptr
      00293E F0               [24] 1981 	movx	@dptr,a
                                   1982 ;	walk.c:237: neigh[i].c = neigh[REG + i].c * (1 + rand() % 32);
      00293F EB               [12] 1983 	mov	a,r3
      002940 24 84            [12] 1984 	add	a,#_neigh
      002942 FB               [12] 1985 	mov	r3,a
      002943 EC               [12] 1986 	mov	a,r4
      002944 34 FF            [12] 1987 	addc	a,#(_neigh >> 8)
      002946 FC               [12] 1988 	mov	r4,a
      002947 74 02            [12] 1989 	mov	a,#0x02
      002949 2B               [12] 1990 	add	a,r3
      00294A FA               [12] 1991 	mov	r2,a
      00294B E4               [12] 1992 	clr	a
      00294C 3C               [12] 1993 	addc	a,r4
      00294D FF               [12] 1994 	mov	r7,a
      00294E EE               [12] 1995 	mov	a,r6
      00294F 24 84            [12] 1996 	add	a,#_neigh
      002951 FE               [12] 1997 	mov	r6,a
      002952 ED               [12] 1998 	mov	a,r5
      002953 34 FF            [12] 1999 	addc	a,#(_neigh >> 8)
      002955 FD               [12] 2000 	mov	r5,a
      002956 8E 82            [24] 2001 	mov	dpl,r6
      002958 8D 83            [24] 2002 	mov	dph,r5
      00295A A3               [24] 2003 	inc	dptr
      00295B A3               [24] 2004 	inc	dptr
      00295C E5 10            [12] 2005 	mov	a,_bp
      00295E 24 03            [12] 2006 	add	a,#0x03
      002960 F8               [12] 2007 	mov	r0,a
      002961 E0               [24] 2008 	movx	a,@dptr
      002962 F6               [12] 2009 	mov	@r0,a
      002963 A3               [24] 2010 	inc	dptr
      002964 E0               [24] 2011 	movx	a,@dptr
      002965 08               [12] 2012 	inc	r0
      002966 F6               [12] 2013 	mov	@r0,a
      002967 C0 07            [24] 2014 	push	ar7
      002969 C0 04            [24] 2015 	push	ar4
      00296B C0 03            [24] 2016 	push	ar3
      00296D C0 02            [24] 2017 	push	ar2
      00296F C0 01            [24] 2018 	push	ar1
      002971 12 2C 75         [24] 2019 	lcall	_rand
      002974 AD 82            [24] 2020 	mov	r5,dpl
      002976 AE 83            [24] 2021 	mov	r6,dph
      002978 74 20            [12] 2022 	mov	a,#0x20
      00297A C0 E0            [24] 2023 	push	acc
      00297C E4               [12] 2024 	clr	a
      00297D C0 E0            [24] 2025 	push	acc
      00297F 8D 82            [24] 2026 	mov	dpl,r5
      002981 8E 83            [24] 2027 	mov	dph,r6
      002983 12 2F 79         [24] 2028 	lcall	__modsint
      002986 AD 82            [24] 2029 	mov	r5,dpl
      002988 AE 83            [24] 2030 	mov	r6,dph
      00298A 15 81            [12] 2031 	dec	sp
      00298C 15 81            [12] 2032 	dec	sp
      00298E D0 01            [24] 2033 	pop	ar1
      002990 D0 02            [24] 2034 	pop	ar2
      002992 D0 03            [24] 2035 	pop	ar3
      002994 D0 04            [24] 2036 	pop	ar4
      002996 D0 07            [24] 2037 	pop	ar7
      002998 0D               [12] 2038 	inc	r5
      002999 BD 00 01         [24] 2039 	cjne	r5,#0x00,00190$
      00299C 0E               [12] 2040 	inc	r6
      00299D                       2041 00190$:
      00299D C0 07            [24] 2042 	push	ar7
      00299F C0 04            [24] 2043 	push	ar4
      0029A1 C0 03            [24] 2044 	push	ar3
      0029A3 C0 02            [24] 2045 	push	ar2
      0029A5 C0 01            [24] 2046 	push	ar1
      0029A7 C0 05            [24] 2047 	push	ar5
      0029A9 C0 06            [24] 2048 	push	ar6
      0029AB E5 10            [12] 2049 	mov	a,_bp
      0029AD 24 03            [12] 2050 	add	a,#0x03
      0029AF F8               [12] 2051 	mov	r0,a
      0029B0 86 82            [24] 2052 	mov	dpl,@r0
      0029B2 08               [12] 2053 	inc	r0
      0029B3 86 83            [24] 2054 	mov	dph,@r0
      0029B5 12 2D 6D         [24] 2055 	lcall	__mulint
      0029B8 AD 82            [24] 2056 	mov	r5,dpl
      0029BA AE 83            [24] 2057 	mov	r6,dph
      0029BC 15 81            [12] 2058 	dec	sp
      0029BE 15 81            [12] 2059 	dec	sp
      0029C0 D0 01            [24] 2060 	pop	ar1
      0029C2 D0 02            [24] 2061 	pop	ar2
      0029C4 D0 03            [24] 2062 	pop	ar3
      0029C6 D0 04            [24] 2063 	pop	ar4
      0029C8 D0 07            [24] 2064 	pop	ar7
      0029CA 8A 82            [24] 2065 	mov	dpl,r2
      0029CC 8F 83            [24] 2066 	mov	dph,r7
      0029CE ED               [12] 2067 	mov	a,r5
      0029CF F0               [24] 2068 	movx	@dptr,a
      0029D0 EE               [12] 2069 	mov	a,r6
      0029D1 A3               [24] 2070 	inc	dptr
      0029D2 F0               [24] 2071 	movx	@dptr,a
                                   2072 ;	walk.c:238: printf("% 8d% 8d", neigh[i].r, neigh[i].c);
      0029D3 8B 82            [24] 2073 	mov	dpl,r3
      0029D5 8C 83            [24] 2074 	mov	dph,r4
      0029D7 E0               [24] 2075 	movx	a,@dptr
      0029D8 FB               [12] 2076 	mov	r3,a
      0029D9 A3               [24] 2077 	inc	dptr
      0029DA E0               [24] 2078 	movx	a,@dptr
      0029DB FC               [12] 2079 	mov	r4,a
      0029DC C0 07            [24] 2080 	push	ar7
      0029DE C0 01            [24] 2081 	push	ar1
      0029E0 C0 05            [24] 2082 	push	ar5
      0029E2 C0 06            [24] 2083 	push	ar6
      0029E4 C0 03            [24] 2084 	push	ar3
      0029E6 C0 04            [24] 2085 	push	ar4
      0029E8 74 AD            [12] 2086 	mov	a,#___str_6
      0029EA C0 E0            [24] 2087 	push	acc
      0029EC 74 42            [12] 2088 	mov	a,#(___str_6 >> 8)
      0029EE C0 E0            [24] 2089 	push	acc
      0029F0 74 80            [12] 2090 	mov	a,#0x80
      0029F2 C0 E0            [24] 2091 	push	acc
      0029F4 12 2F 24         [24] 2092 	lcall	_printf
      0029F7 E5 81            [12] 2093 	mov	a,sp
      0029F9 24 F9            [12] 2094 	add	a,#0xf9
      0029FB F5 81            [12] 2095 	mov	sp,a
      0029FD D0 01            [24] 2096 	pop	ar1
      0029FF D0 07            [24] 2097 	pop	ar7
                                   2098 ;	walk.c:235: for (i = 0; i < REG; i++) {
      002A01 E5 10            [12] 2099 	mov	a,_bp
      002A03 24 0B            [12] 2100 	add	a,#0x0b
      002A05 F8               [12] 2101 	mov	r0,a
      002A06 06               [12] 2102 	inc	@r0
      002A07 B6 00 02         [24] 2103 	cjne	@r0,#0x00,00191$
      002A0A 08               [12] 2104 	inc	r0
      002A0B 06               [12] 2105 	inc	@r0
      002A0C                       2106 00191$:
      002A0C E5 10            [12] 2107 	mov	a,_bp
      002A0E 24 0B            [12] 2108 	add	a,#0x0b
      002A10 F8               [12] 2109 	mov	r0,a
      002A11 86 05            [24] 2110 	mov	ar5,@r0
      002A13 08               [12] 2111 	inc	r0
      002A14 86 06            [24] 2112 	mov	ar6,@r0
      002A16 C3               [12] 2113 	clr	c
      002A17 ED               [12] 2114 	mov	a,r5
      002A18 94 08            [12] 2115 	subb	a,#0x08
      002A1A EE               [12] 2116 	mov	a,r6
      002A1B 94 00            [12] 2117 	subb	a,#0x00
      002A1D D0 07            [24] 2118 	pop	ar7
      002A1F 50 03            [24] 2119 	jnc	00192$
      002A21 02 28 71         [24] 2120 	ljmp	00116$
      002A24                       2121 00192$:
                                   2122 ;	walk.c:241: OE76 = OE76_0;
      002A24 78 12            [12] 2123 	mov	r0,#_OE76
      002A26 76 3F            [12] 2124 	mov	@r0,#0x3f
                                   2125 ;	walk.c:242: setOE(OE76_NC);
      002A28 75 82 00         [24] 2126 	mov	dpl,#0x00
      002A2B C0 07            [24] 2127 	push	ar7
      002A2D C0 01            [24] 2128 	push	ar1
      002A2F 12 20 94         [24] 2129 	lcall	_setOE
      002A32 D0 01            [24] 2130 	pop	ar1
      002A34 D0 07            [24] 2131 	pop	ar7
                                   2132 ;	walk.c:244: walk(&initial);
      002A36 8F 04            [24] 2133 	mov	ar4,r7
      002A38 7D 00            [12] 2134 	mov	r5,#0x00
      002A3A 7E 40            [12] 2135 	mov	r6,#0x40
      002A3C 8C 82            [24] 2136 	mov	dpl,r4
      002A3E 8D 83            [24] 2137 	mov	dph,r5
      002A40 8E F0            [24] 2138 	mov	b,r6
      002A42 C0 07            [24] 2139 	push	ar7
      002A44 C0 01            [24] 2140 	push	ar1
      002A46 12 23 6D         [24] 2141 	lcall	_walk
      002A49 D0 01            [24] 2142 	pop	ar1
      002A4B D0 07            [24] 2143 	pop	ar7
                                   2144 ;	walk.c:246: for (i = 0; i < ROWS; i++)
      002A4D E5 10            [12] 2145 	mov	a,_bp
      002A4F 24 0B            [12] 2146 	add	a,#0x0b
      002A51 F8               [12] 2147 	mov	r0,a
      002A52 E4               [12] 2148 	clr	a
      002A53 F6               [12] 2149 	mov	@r0,a
      002A54 08               [12] 2150 	inc	r0
      002A55 F6               [12] 2151 	mov	@r0,a
      002A56 7B 00            [12] 2152 	mov	r3,#0x00
      002A58 7C 00            [12] 2153 	mov	r4,#0x00
                                   2154 ;	walk.c:247: for (j = 0; j < COLS; j++)
      002A5A                       2155 00132$:
      002A5A E5 10            [12] 2156 	mov	a,_bp
      002A5C 24 03            [12] 2157 	add	a,#0x03
      002A5E F8               [12] 2158 	mov	r0,a
      002A5F EB               [12] 2159 	mov	a,r3
      002A60 24 10            [12] 2160 	add	a,#_g
      002A62 F6               [12] 2161 	mov	@r0,a
      002A63 EC               [12] 2162 	mov	a,r4
      002A64 34 43            [12] 2163 	addc	a,#(_g >> 8)
      002A66 08               [12] 2164 	inc	r0
      002A67 F6               [12] 2165 	mov	@r0,a
      002A68 7A 00            [12] 2166 	mov	r2,#0x00
      002A6A 7E 00            [12] 2167 	mov	r6,#0x00
      002A6C                       2168 00118$:
                                   2169 ;	walk.c:248: if (g[i][j] != 0xaau) bang();
      002A6C E5 10            [12] 2170 	mov	a,_bp
      002A6E 24 03            [12] 2171 	add	a,#0x03
      002A70 F8               [12] 2172 	mov	r0,a
      002A71 EA               [12] 2173 	mov	a,r2
      002A72 26               [12] 2174 	add	a,@r0
      002A73 F5 82            [12] 2175 	mov	dpl,a
      002A75 EE               [12] 2176 	mov	a,r6
      002A76 08               [12] 2177 	inc	r0
      002A77 36               [12] 2178 	addc	a,@r0
      002A78 F5 83            [12] 2179 	mov	dph,a
      002A7A E0               [24] 2180 	movx	a,@dptr
      002A7B FD               [12] 2181 	mov	r5,a
      002A7C BD AA 02         [24] 2182 	cjne	r5,#0xaa,00193$
      002A7F 80 1B            [24] 2183 	sjmp	00119$
      002A81                       2184 00193$:
      002A81 C0 07            [24] 2185 	push	ar7
      002A83 C0 06            [24] 2186 	push	ar6
      002A85 C0 04            [24] 2187 	push	ar4
      002A87 C0 03            [24] 2188 	push	ar3
      002A89 C0 02            [24] 2189 	push	ar2
      002A8B C0 01            [24] 2190 	push	ar1
      002A8D 12 20 87         [24] 2191 	lcall	_bang
      002A90 D0 01            [24] 2192 	pop	ar1
      002A92 D0 02            [24] 2193 	pop	ar2
      002A94 D0 03            [24] 2194 	pop	ar3
      002A96 D0 04            [24] 2195 	pop	ar4
      002A98 D0 06            [24] 2196 	pop	ar6
      002A9A D0 07            [24] 2197 	pop	ar7
      002A9C                       2198 00119$:
                                   2199 ;	walk.c:247: for (j = 0; j < COLS; j++)
      002A9C 0A               [12] 2200 	inc	r2
      002A9D BA 00 01         [24] 2201 	cjne	r2,#0x00,00194$
      002AA0 0E               [12] 2202 	inc	r6
      002AA1                       2203 00194$:
      002AA1 C3               [12] 2204 	clr	c
      002AA2 EA               [12] 2205 	mov	a,r2
      002AA3 94 C9            [12] 2206 	subb	a,#0xc9
      002AA5 EE               [12] 2207 	mov	a,r6
      002AA6 64 80            [12] 2208 	xrl	a,#0x80
      002AA8 94 80            [12] 2209 	subb	a,#0x80
      002AAA 40 C0            [24] 2210 	jc	00118$
                                   2211 ;	walk.c:246: for (i = 0; i < ROWS; i++)
      002AAC 74 C9            [12] 2212 	mov	a,#0xc9
      002AAE 2B               [12] 2213 	add	a,r3
      002AAF FB               [12] 2214 	mov	r3,a
      002AB0 E4               [12] 2215 	clr	a
      002AB1 3C               [12] 2216 	addc	a,r4
      002AB2 FC               [12] 2217 	mov	r4,a
      002AB3 E5 10            [12] 2218 	mov	a,_bp
      002AB5 24 0B            [12] 2219 	add	a,#0x0b
      002AB7 F8               [12] 2220 	mov	r0,a
      002AB8 06               [12] 2221 	inc	@r0
      002AB9 B6 00 02         [24] 2222 	cjne	@r0,#0x00,00196$
      002ABC 08               [12] 2223 	inc	r0
      002ABD 06               [12] 2224 	inc	@r0
      002ABE                       2225 00196$:
      002ABE E5 10            [12] 2226 	mov	a,_bp
      002AC0 24 0B            [12] 2227 	add	a,#0x0b
      002AC2 F8               [12] 2228 	mov	r0,a
      002AC3 C3               [12] 2229 	clr	c
      002AC4 E6               [12] 2230 	mov	a,@r0
      002AC5 94 30            [12] 2231 	subb	a,#0x30
      002AC7 08               [12] 2232 	inc	r0
      002AC8 E6               [12] 2233 	mov	a,@r0
      002AC9 64 80            [12] 2234 	xrl	a,#0x80
      002ACB 94 80            [12] 2235 	subb	a,#0x80
      002ACD 40 8B            [24] 2236 	jc	00132$
                                   2237 ;	walk.c:250: N++;
      002ACF E5 10            [12] 2238 	mov	a,_bp
      002AD1 24 09            [12] 2239 	add	a,#0x09
      002AD3 F8               [12] 2240 	mov	r0,a
      002AD4 06               [12] 2241 	inc	@r0
      002AD5 B6 00 02         [24] 2242 	cjne	@r0,#0x00,00198$
      002AD8 08               [12] 2243 	inc	r0
      002AD9 06               [12] 2244 	inc	@r0
      002ADA                       2245 00198$:
      002ADA 02 27 56         [24] 2246 	ljmp	00108$
      002ADD                       2247 00110$:
                                   2248 ;	walk.c:253: EA = 0;
                                   2249 ;	assignBit
      002ADD C2 AF            [12] 2250 	clr	_EA
                                   2251 ;	walk.c:255: puts("\033[2J\033[?25h");
      002ADF 90 42 B6         [24] 2252 	mov	dptr,#___str_7
      002AE2 75 F0 80         [24] 2253 	mov	b,#0x80
      002AE5 12 2E 9E         [24] 2254 	lcall	_puts
                                   2255 ;	walk.c:37: PCON |= 2;
      002AE8 43 87 02         [24] 2256 	orl	_PCON,#0x02
                                   2257 ;	walk.c:259: return;
                                   2258 ;	walk.c:260: }
      002AEB 85 10 81         [24] 2259 	mov	sp,_bp
      002AEE D0 10            [24] 2260 	pop	_bp
      002AF0 22               [24] 2261 	ret
                                   2262 ;------------------------------------------------------------
                                   2263 ;Allocation info for local variables in function 'qinit'
                                   2264 ;------------------------------------------------------------
                                   2265 ;	walk.c:262: static void qinit(void) {
                                   2266 ;	-----------------------------------------
                                   2267 ;	 function qinit
                                   2268 ;	-----------------------------------------
      002AF1                       2269 _qinit:
                                   2270 ;	walk.c:263: hp = tp = 0;
      002AF1 90 FF 82         [24] 2271 	mov	dptr,#_tp
      002AF4 E4               [12] 2272 	clr	a
      002AF5 F0               [24] 2273 	movx	@dptr,a
      002AF6 A3               [24] 2274 	inc	dptr
      002AF7 F0               [24] 2275 	movx	@dptr,a
      002AF8 90 FF 80         [24] 2276 	mov	dptr,#_hp
      002AFB F0               [24] 2277 	movx	@dptr,a
      002AFC A3               [24] 2278 	inc	dptr
      002AFD F0               [24] 2279 	movx	@dptr,a
                                   2280 ;	walk.c:264: return;
                                   2281 ;	walk.c:265: }
      002AFE 22               [24] 2282 	ret
                                   2283 ;------------------------------------------------------------
                                   2284 ;Allocation info for local variables in function 'qadd'
                                   2285 ;------------------------------------------------------------
                                   2286 ;t                         Allocated to registers r7 r5 r6 
                                   2287 ;sloc0                     Allocated to stack - _bp +1
                                   2288 ;sloc1                     Allocated to stack - _bp +3
                                   2289 ;sloc2                     Allocated to stack - _bp +5
                                   2290 ;sloc3                     Allocated to stack - _bp +10
                                   2291 ;------------------------------------------------------------
                                   2292 ;	walk.c:267: static uint8_t qadd(struct node *t) {
                                   2293 ;	-----------------------------------------
                                   2294 ;	 function qadd
                                   2295 ;	-----------------------------------------
      002AFF                       2296 _qadd:
      002AFF C0 10            [24] 2297 	push	_bp
      002B01 E5 81            [12] 2298 	mov	a,sp
      002B03 F5 10            [12] 2299 	mov	_bp,a
      002B05 24 06            [12] 2300 	add	a,#0x06
      002B07 F5 81            [12] 2301 	mov	sp,a
      002B09 AF 82            [24] 2302 	mov	r7,dpl
      002B0B AD 83            [24] 2303 	mov	r5,dph
      002B0D AE F0            [24] 2304 	mov	r6,b
                                   2305 ;	walk.c:268: if (((hp + 1) % QMAX) == tp) return 0u;
      002B0F 90 FF 80         [24] 2306 	mov	dptr,#_hp
      002B12 E0               [24] 2307 	movx	a,@dptr
      002B13 FB               [12] 2308 	mov	r3,a
      002B14 A3               [24] 2309 	inc	dptr
      002B15 E0               [24] 2310 	movx	a,@dptr
      002B16 FC               [12] 2311 	mov	r4,a
      002B17 A8 10            [24] 2312 	mov	r0,_bp
      002B19 08               [12] 2313 	inc	r0
      002B1A 74 01            [12] 2314 	mov	a,#0x01
      002B1C 2B               [12] 2315 	add	a,r3
      002B1D F6               [12] 2316 	mov	@r0,a
      002B1E E4               [12] 2317 	clr	a
      002B1F 3C               [12] 2318 	addc	a,r4
      002B20 08               [12] 2319 	inc	r0
      002B21 F6               [12] 2320 	mov	@r0,a
      002B22 C0 07            [24] 2321 	push	ar7
      002B24 C0 06            [24] 2322 	push	ar6
      002B26 C0 05            [24] 2323 	push	ar5
      002B28 C0 04            [24] 2324 	push	ar4
      002B2A C0 03            [24] 2325 	push	ar3
      002B2C 74 B0            [12] 2326 	mov	a,#0xb0
      002B2E C0 E0            [24] 2327 	push	acc
      002B30 74 25            [12] 2328 	mov	a,#0x25
      002B32 C0 E0            [24] 2329 	push	acc
      002B34 A8 10            [24] 2330 	mov	r0,_bp
      002B36 08               [12] 2331 	inc	r0
      002B37 86 82            [24] 2332 	mov	dpl,@r0
      002B39 08               [12] 2333 	inc	r0
      002B3A 86 83            [24] 2334 	mov	dph,@r0
      002B3C 12 2F 79         [24] 2335 	lcall	__modsint
      002B3F A8 10            [24] 2336 	mov	r0,_bp
      002B41 08               [12] 2337 	inc	r0
      002B42 08               [12] 2338 	inc	r0
      002B43 08               [12] 2339 	inc	r0
      002B44 A6 82            [24] 2340 	mov	@r0,dpl
      002B46 08               [12] 2341 	inc	r0
      002B47 A6 83            [24] 2342 	mov	@r0,dph
      002B49 15 81            [12] 2343 	dec	sp
      002B4B 15 81            [12] 2344 	dec	sp
      002B4D D0 03            [24] 2345 	pop	ar3
      002B4F D0 04            [24] 2346 	pop	ar4
      002B51 D0 05            [24] 2347 	pop	ar5
      002B53 D0 06            [24] 2348 	pop	ar6
      002B55 D0 07            [24] 2349 	pop	ar7
      002B57 90 FF 82         [24] 2350 	mov	dptr,#_tp
      002B5A E5 10            [12] 2351 	mov	a,_bp
      002B5C 24 05            [12] 2352 	add	a,#0x05
      002B5E F8               [12] 2353 	mov	r0,a
      002B5F E0               [24] 2354 	movx	a,@dptr
      002B60 F6               [12] 2355 	mov	@r0,a
      002B61 A3               [24] 2356 	inc	dptr
      002B62 E0               [24] 2357 	movx	a,@dptr
      002B63 08               [12] 2358 	inc	r0
      002B64 F6               [12] 2359 	mov	@r0,a
      002B65 E5 10            [12] 2360 	mov	a,_bp
      002B67 24 03            [12] 2361 	add	a,#0x03
      002B69 F8               [12] 2362 	mov	r0,a
      002B6A E5 10            [12] 2363 	mov	a,_bp
      002B6C 24 05            [12] 2364 	add	a,#0x05
      002B6E F9               [12] 2365 	mov	r1,a
      002B6F 86 F0            [24] 2366 	mov	b,@r0
      002B71 E7               [12] 2367 	mov	a,@r1
      002B72 B5 F0 0A         [24] 2368 	cjne	a,b,00109$
      002B75 08               [12] 2369 	inc	r0
      002B76 86 F0            [24] 2370 	mov	b,@r0
      002B78 09               [12] 2371 	inc	r1
      002B79 E7               [12] 2372 	mov	a,@r1
      002B7A B5 F0 02         [24] 2373 	cjne	a,b,00109$
      002B7D 80 02            [24] 2374 	sjmp	00110$
      002B7F                       2375 00109$:
      002B7F 80 05            [24] 2376 	sjmp	00102$
      002B81                       2377 00110$:
      002B81 75 82 00         [24] 2378 	mov	dpl,#0x00
      002B84 80 65            [24] 2379 	sjmp	00103$
      002B86                       2380 00102$:
                                   2381 ;	walk.c:269: queue[hp] = *t;
      002B86 8F 02            [24] 2382 	mov	ar2,r7
      002B88 8E 07            [24] 2383 	mov	ar7,r6
      002B8A EB               [12] 2384 	mov	a,r3
      002B8B 2B               [12] 2385 	add	a,r3
      002B8C FB               [12] 2386 	mov	r3,a
      002B8D EC               [12] 2387 	mov	a,r4
      002B8E 33               [12] 2388 	rlc	a
      002B8F FC               [12] 2389 	mov	r4,a
      002B90 EB               [12] 2390 	mov	a,r3
      002B91 2B               [12] 2391 	add	a,r3
      002B92 FB               [12] 2392 	mov	r3,a
      002B93 EC               [12] 2393 	mov	a,r4
      002B94 33               [12] 2394 	rlc	a
      002B95 FC               [12] 2395 	mov	r4,a
      002B96 EB               [12] 2396 	mov	a,r3
      002B97 24 C0            [12] 2397 	add	a,#_queue
      002B99 FB               [12] 2398 	mov	r3,a
      002B9A EC               [12] 2399 	mov	a,r4
      002B9B 34 68            [12] 2400 	addc	a,#(_queue >> 8)
      002B9D FC               [12] 2401 	mov	r4,a
      002B9E 7E 00            [12] 2402 	mov	r6,#0x00
      002BA0 74 04            [12] 2403 	mov	a,#0x04
      002BA2 C0 E0            [24] 2404 	push	acc
      002BA4 E4               [12] 2405 	clr	a
      002BA5 C0 E0            [24] 2406 	push	acc
      002BA7 C0 02            [24] 2407 	push	ar2
      002BA9 C0 05            [24] 2408 	push	ar5
      002BAB C0 07            [24] 2409 	push	ar7
      002BAD 8B 82            [24] 2410 	mov	dpl,r3
      002BAF 8C 83            [24] 2411 	mov	dph,r4
      002BB1 8E F0            [24] 2412 	mov	b,r6
      002BB3 12 2E 0B         [24] 2413 	lcall	___memcpy
      002BB6 E5 81            [12] 2414 	mov	a,sp
      002BB8 24 FB            [12] 2415 	add	a,#0xfb
      002BBA F5 81            [12] 2416 	mov	sp,a
                                   2417 ;	walk.c:270: hp = (hp + 1) % QMAX;
      002BBC 90 FF 80         [24] 2418 	mov	dptr,#_hp
      002BBF E0               [24] 2419 	movx	a,@dptr
      002BC0 FD               [12] 2420 	mov	r5,a
      002BC1 A3               [24] 2421 	inc	dptr
      002BC2 E0               [24] 2422 	movx	a,@dptr
      002BC3 FE               [12] 2423 	mov	r6,a
      002BC4 0D               [12] 2424 	inc	r5
      002BC5 BD 00 01         [24] 2425 	cjne	r5,#0x00,00111$
      002BC8 0E               [12] 2426 	inc	r6
      002BC9                       2427 00111$:
      002BC9 74 B0            [12] 2428 	mov	a,#0xb0
      002BCB C0 E0            [24] 2429 	push	acc
      002BCD 74 25            [12] 2430 	mov	a,#0x25
      002BCF C0 E0            [24] 2431 	push	acc
      002BD1 8D 82            [24] 2432 	mov	dpl,r5
      002BD3 8E 83            [24] 2433 	mov	dph,r6
      002BD5 12 2F 79         [24] 2434 	lcall	__modsint
      002BD8 AD 82            [24] 2435 	mov	r5,dpl
      002BDA AE 83            [24] 2436 	mov	r6,dph
      002BDC 15 81            [12] 2437 	dec	sp
      002BDE 15 81            [12] 2438 	dec	sp
      002BE0 90 FF 80         [24] 2439 	mov	dptr,#_hp
      002BE3 ED               [12] 2440 	mov	a,r5
      002BE4 F0               [24] 2441 	movx	@dptr,a
      002BE5 EE               [12] 2442 	mov	a,r6
      002BE6 A3               [24] 2443 	inc	dptr
      002BE7 F0               [24] 2444 	movx	@dptr,a
                                   2445 ;	walk.c:271: return 1u;
      002BE8 75 82 01         [24] 2446 	mov	dpl,#0x01
      002BEB                       2447 00103$:
                                   2448 ;	walk.c:272: }
      002BEB 85 10 81         [24] 2449 	mov	sp,_bp
      002BEE D0 10            [24] 2450 	pop	_bp
      002BF0 22               [24] 2451 	ret
                                   2452 ;------------------------------------------------------------
                                   2453 ;Allocation info for local variables in function 'qget'
                                   2454 ;------------------------------------------------------------
                                   2455 ;t                         Allocated to registers r5 r6 r7 
                                   2456 ;------------------------------------------------------------
                                   2457 ;	walk.c:274: static uint8_t qget(struct node *t) {
                                   2458 ;	-----------------------------------------
                                   2459 ;	 function qget
                                   2460 ;	-----------------------------------------
      002BF1                       2461 _qget:
      002BF1 AD 82            [24] 2462 	mov	r5,dpl
      002BF3 AE 83            [24] 2463 	mov	r6,dph
      002BF5 AF F0            [24] 2464 	mov	r7,b
                                   2465 ;	walk.c:275: if (hp == tp) return 0u;
      002BF7 90 FF 80         [24] 2466 	mov	dptr,#_hp
      002BFA E0               [24] 2467 	movx	a,@dptr
      002BFB FB               [12] 2468 	mov	r3,a
      002BFC A3               [24] 2469 	inc	dptr
      002BFD E0               [24] 2470 	movx	a,@dptr
      002BFE FC               [12] 2471 	mov	r4,a
      002BFF 90 FF 82         [24] 2472 	mov	dptr,#_tp
      002C02 E0               [24] 2473 	movx	a,@dptr
      002C03 F9               [12] 2474 	mov	r1,a
      002C04 A3               [24] 2475 	inc	dptr
      002C05 E0               [24] 2476 	movx	a,@dptr
      002C06 FA               [12] 2477 	mov	r2,a
      002C07 EB               [12] 2478 	mov	a,r3
      002C08 B5 01 08         [24] 2479 	cjne	a,ar1,00102$
      002C0B EC               [12] 2480 	mov	a,r4
      002C0C B5 02 04         [24] 2481 	cjne	a,ar2,00102$
      002C0F 75 82 00         [24] 2482 	mov	dpl,#0x00
      002C12 22               [24] 2483 	ret
      002C13                       2484 00102$:
                                   2485 ;	walk.c:276: *t = queue[tp];
      002C13 E9               [12] 2486 	mov	a,r1
      002C14 29               [12] 2487 	add	a,r1
      002C15 F9               [12] 2488 	mov	r1,a
      002C16 EA               [12] 2489 	mov	a,r2
      002C17 33               [12] 2490 	rlc	a
      002C18 FA               [12] 2491 	mov	r2,a
      002C19 E9               [12] 2492 	mov	a,r1
      002C1A 29               [12] 2493 	add	a,r1
      002C1B F9               [12] 2494 	mov	r1,a
      002C1C EA               [12] 2495 	mov	a,r2
      002C1D 33               [12] 2496 	rlc	a
      002C1E FA               [12] 2497 	mov	r2,a
      002C1F E9               [12] 2498 	mov	a,r1
      002C20 24 C0            [12] 2499 	add	a,#_queue
      002C22 F9               [12] 2500 	mov	r1,a
      002C23 EA               [12] 2501 	mov	a,r2
      002C24 34 68            [12] 2502 	addc	a,#(_queue >> 8)
      002C26 FA               [12] 2503 	mov	r2,a
      002C27 7C 00            [12] 2504 	mov	r4,#0x00
      002C29 74 04            [12] 2505 	mov	a,#0x04
      002C2B C0 E0            [24] 2506 	push	acc
      002C2D E4               [12] 2507 	clr	a
      002C2E C0 E0            [24] 2508 	push	acc
      002C30 C0 01            [24] 2509 	push	ar1
      002C32 C0 02            [24] 2510 	push	ar2
      002C34 C0 04            [24] 2511 	push	ar4
      002C36 8D 82            [24] 2512 	mov	dpl,r5
      002C38 8E 83            [24] 2513 	mov	dph,r6
      002C3A 8F F0            [24] 2514 	mov	b,r7
      002C3C 12 2E 0B         [24] 2515 	lcall	___memcpy
      002C3F E5 81            [12] 2516 	mov	a,sp
      002C41 24 FB            [12] 2517 	add	a,#0xfb
      002C43 F5 81            [12] 2518 	mov	sp,a
                                   2519 ;	walk.c:277: tp = (tp + 1) % QMAX;
      002C45 90 FF 82         [24] 2520 	mov	dptr,#_tp
      002C48 E0               [24] 2521 	movx	a,@dptr
      002C49 FE               [12] 2522 	mov	r6,a
      002C4A A3               [24] 2523 	inc	dptr
      002C4B E0               [24] 2524 	movx	a,@dptr
      002C4C FF               [12] 2525 	mov	r7,a
      002C4D 0E               [12] 2526 	inc	r6
      002C4E BE 00 01         [24] 2527 	cjne	r6,#0x00,00111$
      002C51 0F               [12] 2528 	inc	r7
      002C52                       2529 00111$:
      002C52 74 B0            [12] 2530 	mov	a,#0xb0
      002C54 C0 E0            [24] 2531 	push	acc
      002C56 74 25            [12] 2532 	mov	a,#0x25
      002C58 C0 E0            [24] 2533 	push	acc
      002C5A 8E 82            [24] 2534 	mov	dpl,r6
      002C5C 8F 83            [24] 2535 	mov	dph,r7
      002C5E 12 2F 79         [24] 2536 	lcall	__modsint
      002C61 AE 82            [24] 2537 	mov	r6,dpl
      002C63 AF 83            [24] 2538 	mov	r7,dph
      002C65 15 81            [12] 2539 	dec	sp
      002C67 15 81            [12] 2540 	dec	sp
      002C69 90 FF 82         [24] 2541 	mov	dptr,#_tp
      002C6C EE               [12] 2542 	mov	a,r6
      002C6D F0               [24] 2543 	movx	@dptr,a
      002C6E EF               [12] 2544 	mov	a,r7
      002C6F A3               [24] 2545 	inc	dptr
      002C70 F0               [24] 2546 	movx	@dptr,a
                                   2547 ;	walk.c:278: return 1u;
      002C71 75 82 01         [24] 2548 	mov	dpl,#0x01
                                   2549 ;	walk.c:279: }
      002C74 22               [24] 2550 	ret
                                   2551 	.area CSEG    (CODE)
                                   2552 	.area CONST   (CODE)
                                   2553 	.area CONST   (CODE)
      004257                       2554 ___str_0:
      004257 4D 65 6D 6F 72 79 20  2555 	.ascii "Memory error"
             65 72 72 6F 72
      004263 00                    2556 	.db 0x00
                                   2557 	.area CSEG    (CODE)
                                   2558 	.area CONST   (CODE)
      004264                       2559 ___str_1:
      004264 1B                    2560 	.db 0x1b
      004265 5B 32 3B 31 48 25 20  2561 	.ascii "[2;1H% 8d% 8d% 8d% 8d"
             38 64 25 20 38 64 25
             20 38 64 25 20 38 64
      00427A 00                    2562 	.db 0x00
                                   2563 	.area CSEG    (CODE)
                                   2564 	.area CONST   (CODE)
      00427B                       2565 ___str_2:
      00427B 1B                    2566 	.db 0x1b
      00427C 5B 25 64 3B 25 64 48  2567 	.ascii "[%d;%dH."
             2E
      004284 00                    2568 	.db 0x00
                                   2569 	.area CSEG    (CODE)
                                   2570 	.area CONST   (CODE)
      004285                       2571 ___str_3:
      004285 1B                    2572 	.db 0x1b
      004286 5B 25 64 3B 25 64 48  2573 	.ascii "[%d;%dHo"
             6F
      00428E 00                    2574 	.db 0x00
                                   2575 	.area CSEG    (CODE)
                                   2576 	.area CONST   (CODE)
      00428F                       2577 ___str_4:
      00428F 1B                    2578 	.db 0x1b
      004290 5B 32 4A              2579 	.ascii "[2J"
      004293 1B                    2580 	.db 0x1b
      004294 5B 3F 32 35 6C        2581 	.ascii "[?25l"
      004299 00                    2582 	.db 0x00
                                   2583 	.area CSEG    (CODE)
                                   2584 	.area CONST   (CODE)
      00429A                       2585 ___str_5:
      00429A 1B                    2586 	.db 0x1b
      00429B 5B 31 3B 31 48 25 20  2587 	.ascii "[1;1H% 8u% 8d% 8d"
             38 75 25 20 38 64 25
             20 38 64
      0042AC 00                    2588 	.db 0x00
                                   2589 	.area CSEG    (CODE)
                                   2590 	.area CONST   (CODE)
      0042AD                       2591 ___str_6:
      0042AD 25 20 38 64 25 20 38  2592 	.ascii "% 8d% 8d"
             64
      0042B5 00                    2593 	.db 0x00
                                   2594 	.area CSEG    (CODE)
                                   2595 	.area CONST   (CODE)
      0042B6                       2596 ___str_7:
      0042B6 1B                    2597 	.db 0x1b
      0042B7 5B 32 4A              2598 	.ascii "[2J"
      0042BA 1B                    2599 	.db 0x1b
      0042BB 5B 3F 32 35 68        2600 	.ascii "[?25h"
      0042C0 00                    2601 	.db 0x00
                                   2602 	.area CSEG    (CODE)
                                   2603 	.area XINIT   (CODE)
      0042CC                       2604 __xinit__neigh:
      0042CC FF FF                 2605 	.byte #0xff, #0xff	; -1
      0042CE 01 00                 2606 	.byte #0x01, #0x00	;  1
      0042D0 FF FF                 2607 	.byte #0xff, #0xff	; -1
      0042D2 FF FF                 2608 	.byte #0xff, #0xff	; -1
      0042D4 01 00                 2609 	.byte #0x01, #0x00	;  1
      0042D6 FF FF                 2610 	.byte #0xff, #0xff	; -1
      0042D8 01 00                 2611 	.byte #0x01, #0x00	;  1
      0042DA 01 00                 2612 	.byte #0x01, #0x00	;  1
      0042DC FF FF                 2613 	.byte #0xff, #0xff	; -1
      0042DE 00 00                 2614 	.byte #0x00, #0x00	;  0
      0042E0 00 00                 2615 	.byte #0x00, #0x00	;  0
      0042E2 FF FF                 2616 	.byte #0xff, #0xff	; -1
      0042E4 01 00                 2617 	.byte #0x01, #0x00	;  1
      0042E6 00 00                 2618 	.byte #0x00, #0x00	;  0
      0042E8 00 00                 2619 	.byte #0x00, #0x00	;  0
      0042EA 01 00                 2620 	.byte #0x01, #0x00	;  1
      0042EC FF FF                 2621 	.byte #0xff, #0xff	; -1
      0042EE 01 00                 2622 	.byte #0x01, #0x00	;  1
      0042F0 FF FF                 2623 	.byte #0xff, #0xff	; -1
      0042F2 FF FF                 2624 	.byte #0xff, #0xff	; -1
      0042F4 01 00                 2625 	.byte #0x01, #0x00	;  1
      0042F6 FF FF                 2626 	.byte #0xff, #0xff	; -1
      0042F8 01 00                 2627 	.byte #0x01, #0x00	;  1
      0042FA 01 00                 2628 	.byte #0x01, #0x00	;  1
      0042FC FF FF                 2629 	.byte #0xff, #0xff	; -1
      0042FE 00 00                 2630 	.byte #0x00, #0x00	;  0
      004300 00 00                 2631 	.byte #0x00, #0x00	;  0
      004302 FF FF                 2632 	.byte #0xff, #0xff	; -1
      004304 01 00                 2633 	.byte #0x01, #0x00	;  1
      004306 00 00                 2634 	.byte #0x00, #0x00	;  0
      004308 00 00                 2635 	.byte #0x00, #0x00	;  0
      00430A 01 00                 2636 	.byte #0x01, #0x00	;  1
                                   2637 	.area CABS    (ABS,CODE)
