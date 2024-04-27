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
                                    140 ;--------------------------------------------------------
                                    141 ; special function registers
                                    142 ;--------------------------------------------------------
                                    143 	.area RSEG    (ABS,DATA)
      000000                        144 	.org 0x0000
                           000080   145 _P0	=	0x0080
                           000081   146 _SP	=	0x0081
                           000082   147 _DPL	=	0x0082
                           000083   148 _DPH	=	0x0083
                           000087   149 _PCON	=	0x0087
                           000088   150 _TCON	=	0x0088
                           000089   151 _TMOD	=	0x0089
                           00008A   152 _TL0	=	0x008a
                           00008B   153 _TL1	=	0x008b
                           00008C   154 _TH0	=	0x008c
                           00008D   155 _TH1	=	0x008d
                           000090   156 _P1	=	0x0090
                           000098   157 _SCON	=	0x0098
                           000099   158 _SBUF	=	0x0099
                           0000A0   159 _P2	=	0x00a0
                           0000A8   160 _IE	=	0x00a8
                           0000B0   161 _P3	=	0x00b0
                           0000B8   162 _IP	=	0x00b8
                           0000C8   163 _T2CON	=	0x00c8
                           0000C9   164 _T2MOD	=	0x00c9
                           0000CA   165 _RCAP2L	=	0x00ca
                           0000CB   166 _RCAP2H	=	0x00cb
                           0000CC   167 _TL2	=	0x00cc
                           0000CD   168 _TH2	=	0x00cd
                           0000D0   169 _PSW	=	0x00d0
                           0000E0   170 _ACC	=	0x00e0
                           0000E0   171 _A	=	0x00e0
                           0000F0   172 _B	=	0x00f0
                                    173 ;--------------------------------------------------------
                                    174 ; special function bits
                                    175 ;--------------------------------------------------------
                                    176 	.area RSEG    (ABS,DATA)
      000000                        177 	.org 0x0000
                           000080   178 _P0_0	=	0x0080
                           000081   179 _P0_1	=	0x0081
                           000082   180 _P0_2	=	0x0082
                           000083   181 _P0_3	=	0x0083
                           000084   182 _P0_4	=	0x0084
                           000085   183 _P0_5	=	0x0085
                           000086   184 _P0_6	=	0x0086
                           000087   185 _P0_7	=	0x0087
                           000088   186 _IT0	=	0x0088
                           000089   187 _IE0	=	0x0089
                           00008A   188 _IT1	=	0x008a
                           00008B   189 _IE1	=	0x008b
                           00008C   190 _TR0	=	0x008c
                           00008D   191 _TF0	=	0x008d
                           00008E   192 _TR1	=	0x008e
                           00008F   193 _TF1	=	0x008f
                           000090   194 _P1_0	=	0x0090
                           000091   195 _P1_1	=	0x0091
                           000092   196 _P1_2	=	0x0092
                           000093   197 _P1_3	=	0x0093
                           000094   198 _P1_4	=	0x0094
                           000095   199 _P1_5	=	0x0095
                           000096   200 _P1_6	=	0x0096
                           000097   201 _P1_7	=	0x0097
                           000090   202 _T2	=	0x0090
                           000091   203 _T2EX	=	0x0091
                           000098   204 _RI	=	0x0098
                           000099   205 _TI	=	0x0099
                           00009A   206 _RB8	=	0x009a
                           00009B   207 _TB8	=	0x009b
                           00009C   208 _REN	=	0x009c
                           00009D   209 _SM2	=	0x009d
                           00009E   210 _SM1	=	0x009e
                           00009F   211 _SM0	=	0x009f
                           0000A0   212 _P2_0	=	0x00a0
                           0000A1   213 _P2_1	=	0x00a1
                           0000A2   214 _P2_2	=	0x00a2
                           0000A3   215 _P2_3	=	0x00a3
                           0000A4   216 _P2_4	=	0x00a4
                           0000A5   217 _P2_5	=	0x00a5
                           0000A6   218 _P2_6	=	0x00a6
                           0000A7   219 _P2_7	=	0x00a7
                           0000A8   220 _EX0	=	0x00a8
                           0000A9   221 _ET0	=	0x00a9
                           0000AA   222 _EX1	=	0x00aa
                           0000AB   223 _ET1	=	0x00ab
                           0000AC   224 _ES	=	0x00ac
                           0000AD   225 _ET2	=	0x00ad
                           0000AF   226 _EA	=	0x00af
                           0000B0   227 _P3_0	=	0x00b0
                           0000B1   228 _P3_1	=	0x00b1
                           0000B2   229 _P3_2	=	0x00b2
                           0000B3   230 _P3_3	=	0x00b3
                           0000B4   231 _P3_4	=	0x00b4
                           0000B5   232 _P3_5	=	0x00b5
                           0000B6   233 _P3_6	=	0x00b6
                           0000B7   234 _P3_7	=	0x00b7
                           0000B0   235 _RXD	=	0x00b0
                           0000B1   236 _TXD	=	0x00b1
                           0000B2   237 _INT0	=	0x00b2
                           0000B3   238 _INT1	=	0x00b3
                           0000B4   239 _T0	=	0x00b4
                           0000B5   240 _T1	=	0x00b5
                           0000B6   241 _WR	=	0x00b6
                           0000B7   242 _RD	=	0x00b7
                           0000B8   243 _PX0	=	0x00b8
                           0000B9   244 _PT0	=	0x00b9
                           0000BA   245 _PX1	=	0x00ba
                           0000BB   246 _PT1	=	0x00bb
                           0000BC   247 _PS	=	0x00bc
                           0000BD   248 _PT2	=	0x00bd
                           0000C8   249 _T2CON_0	=	0x00c8
                           0000C9   250 _T2CON_1	=	0x00c9
                           0000CA   251 _T2CON_2	=	0x00ca
                           0000CB   252 _T2CON_3	=	0x00cb
                           0000CC   253 _T2CON_4	=	0x00cc
                           0000CD   254 _T2CON_5	=	0x00cd
                           0000CE   255 _T2CON_6	=	0x00ce
                           0000CF   256 _T2CON_7	=	0x00cf
                           0000C8   257 _CP_RL2	=	0x00c8
                           0000C9   258 _C_T2	=	0x00c9
                           0000CA   259 _TR2	=	0x00ca
                           0000CB   260 _EXEN2	=	0x00cb
                           0000CC   261 _TCLK	=	0x00cc
                           0000CD   262 _RCLK	=	0x00cd
                           0000CE   263 _EXF2	=	0x00ce
                           0000CF   264 _TF2	=	0x00cf
                           0000D0   265 _P	=	0x00d0
                           0000D1   266 _FL	=	0x00d1
                           0000D2   267 _OV	=	0x00d2
                           0000D3   268 _RS0	=	0x00d3
                           0000D4   269 _RS1	=	0x00d4
                           0000D5   270 _F0	=	0x00d5
                           0000D6   271 _AC	=	0x00d6
                           0000D7   272 _CY	=	0x00d7
                                    273 ;--------------------------------------------------------
                                    274 ; overlayable register banks
                                    275 ;--------------------------------------------------------
                                    276 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        277 	.ds 8
                                    278 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        279 	.ds 8
                                    280 ;--------------------------------------------------------
                                    281 ; internal ram data
                                    282 ;--------------------------------------------------------
                                    283 	.area DSEG    (DATA)
                                    284 ;--------------------------------------------------------
                                    285 ; overlayable items in internal ram 
                                    286 ;--------------------------------------------------------
                                    287 ;--------------------------------------------------------
                                    288 ; Stack segment in internal ram 
                                    289 ;--------------------------------------------------------
                                    290 	.area	SSEG
      000031                        291 __start__stack:
      000031                        292 	.ds	1
                                    293 
                                    294 ;--------------------------------------------------------
                                    295 ; indirectly addressable internal ram data
                                    296 ;--------------------------------------------------------
                                    297 	.area ISEG    (DATA)
      000011                        298 _i0:
      000011                        299 	.ds 1
      000012                        300 _OE76:
      000012                        301 	.ds 1
                                    302 ;--------------------------------------------------------
                                    303 ; absolute internal ram data
                                    304 ;--------------------------------------------------------
                                    305 	.area IABS    (ABS,DATA)
                                    306 	.area IABS    (ABS,DATA)
                                    307 ;--------------------------------------------------------
                                    308 ; bit data
                                    309 ;--------------------------------------------------------
                                    310 	.area BSEG    (BIT)
                                    311 ;--------------------------------------------------------
                                    312 ; paged external ram data
                                    313 ;--------------------------------------------------------
                                    314 	.area PSEG    (PAG,XDATA)
                                    315 ;--------------------------------------------------------
                                    316 ; external ram data
                                    317 ;--------------------------------------------------------
                                    318 	.area XSEG    (XDATA)
                           008000   319 _RND	=	0x8000
      004800                        320 _g:
      004800                        321 	.ds 9216
      006C00                        322 _queue:
      006C00                        323 	.ds 36864
      00FC00                        324 _hp:
      00FC00                        325 	.ds 2
      00FC02                        326 _tp:
      00FC02                        327 	.ds 2
                           00F006   328 _OEreg	=	0xf006
                                    329 ;--------------------------------------------------------
                                    330 ; absolute external ram data
                                    331 ;--------------------------------------------------------
                                    332 	.area XABS    (ABS,XDATA)
                                    333 ;--------------------------------------------------------
                                    334 ; external initialized ram data
                                    335 ;--------------------------------------------------------
                                    336 	.area XISEG   (XDATA)
      00FC04                        337 _neigh:
      00FC04                        338 	.ds 64
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
      002003 02 20 A5         [24]  355 	ljmp	_int0
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
      0020A2 02 20 06         [24]  370 	ljmp	__sdcc_program_startup
                                    371 ;--------------------------------------------------------
                                    372 ; Home
                                    373 ;--------------------------------------------------------
                                    374 	.area HOME    (CODE)
                                    375 	.area HOME    (CODE)
      002006                        376 __sdcc_program_startup:
      002006 02 27 40         [24]  377 	ljmp	_main
                                    378 ;	return from main will return to caller
                                    379 ;--------------------------------------------------------
                                    380 ; code
                                    381 ;--------------------------------------------------------
                                    382 	.area CSEG    (CODE)
                                    383 ;------------------------------------------------------------
                                    384 ;Allocation info for local variables in function 'int0'
                                    385 ;------------------------------------------------------------
                                    386 ;	walk.c:12: void int0(void) __interrupt IE0_VECTOR __using 1 {
                                    387 ;	-----------------------------------------
                                    388 ;	 function int0
                                    389 ;	-----------------------------------------
      0020A5                        390 _int0:
                           00000F   391 	ar7 = 0x0f
                           00000E   392 	ar6 = 0x0e
                           00000D   393 	ar5 = 0x0d
                           00000C   394 	ar4 = 0x0c
                           00000B   395 	ar3 = 0x0b
                           00000A   396 	ar2 = 0x0a
                           000009   397 	ar1 = 0x09
                           000008   398 	ar0 = 0x08
      0020A5 C0 D0            [24]  399 	push	psw
      0020A7 75 D0 08         [24]  400 	mov	psw,#0x08
                                    401 ;	walk.c:13: i0 = 0u;
      0020AA 78 11            [12]  402 	mov	r0,#_i0
      0020AC 76 00            [12]  403 	mov	@r0,#0x00
                                    404 ;	walk.c:14: }
      0020AE D0 D0            [24]  405 	pop	psw
      0020B0 32               [24]  406 	reti
                                    407 ;	eliminated unneeded push/pop dpl
                                    408 ;	eliminated unneeded push/pop dph
                                    409 ;	eliminated unneeded push/pop b
                                    410 ;	eliminated unneeded push/pop acc
                                    411 ;------------------------------------------------------------
                                    412 ;Allocation info for local variables in function 'bang'
                                    413 ;------------------------------------------------------------
                                    414 ;	walk.c:20: static void bang(void) {
                                    415 ;	-----------------------------------------
                                    416 ;	 function bang
                                    417 ;	-----------------------------------------
      0020B1                        418 _bang:
                           000007   419 	ar7 = 0x07
                           000006   420 	ar6 = 0x06
                           000005   421 	ar5 = 0x05
                           000004   422 	ar4 = 0x04
                           000003   423 	ar3 = 0x03
                           000002   424 	ar2 = 0x02
                           000001   425 	ar1 = 0x01
                           000000   426 	ar0 = 0x00
                                    427 ;	walk.c:21: (void)puts("Memory error");
      0020B1 90 45 53         [24]  428 	mov	dptr,#___str_0
      0020B4 75 F0 80         [24]  429 	mov	b,#0x80
      0020B7 12 2E C5         [24]  430 	lcall	_puts
                                    431 ;	walk.c:17: PCON |= 2;
      0020BA 43 87 02         [24]  432 	orl	_PCON,#0x02
                                    433 ;	walk.c:24: return;
                                    434 ;	walk.c:25: }
      0020BD 22               [24]  435 	ret
                                    436 ;------------------------------------------------------------
                                    437 ;Allocation info for local variables in function 'setOE'
                                    438 ;------------------------------------------------------------
                                    439 ;mask                      Allocated to registers r7 
                                    440 ;------------------------------------------------------------
                                    441 ;	walk.c:67: static void setOE(uint8_t mask) {
                                    442 ;	-----------------------------------------
                                    443 ;	 function setOE
                                    444 ;	-----------------------------------------
      0020BE                        445 _setOE:
      0020BE AF 82            [24]  446 	mov	r7,dpl
                                    447 ;	walk.c:68: OE76 |= mask;
      0020C0 78 12            [12]  448 	mov	r0,#_OE76
      0020C2 EF               [12]  449 	mov	a,r7
      0020C3 46               [12]  450 	orl	a,@r0
      0020C4 F6               [12]  451 	mov	@r0,a
                                    452 ;	walk.c:69: P1_7 = 0;
                                    453 ;	assignBit
      0020C5 C2 97            [12]  454 	clr	_P1_7
                                    455 ;	walk.c:74: __endasm;
      0020C7 00               [12]  456 	nop
      0020C8 00               [12]  457 	nop
      0020C9 00               [12]  458 	nop
                                    459 ;	walk.c:75: OEreg = OE76;
      0020CA 78 12            [12]  460 	mov	r0,#_OE76
      0020CC 90 F0 06         [24]  461 	mov	dptr,#_OEreg
      0020CF E6               [12]  462 	mov	a,@r0
      0020D0 F0               [24]  463 	movx	@dptr,a
                                    464 ;	walk.c:76: P1_7 = 1;
                                    465 ;	assignBit
      0020D1 D2 97            [12]  466 	setb	_P1_7
                                    467 ;	walk.c:81: __endasm;
      0020D3 00               [12]  468 	nop
      0020D4 00               [12]  469 	nop
      0020D5 00               [12]  470 	nop
                                    471 ;	walk.c:83: return;
                                    472 ;	walk.c:84: }
      0020D6 22               [24]  473 	ret
                                    474 ;------------------------------------------------------------
                                    475 ;Allocation info for local variables in function 'unsetOE'
                                    476 ;------------------------------------------------------------
                                    477 ;mask                      Allocated to registers r7 
                                    478 ;------------------------------------------------------------
                                    479 ;	walk.c:86: static void unsetOE(uint8_t mask) {
                                    480 ;	-----------------------------------------
                                    481 ;	 function unsetOE
                                    482 ;	-----------------------------------------
      0020D7                        483 _unsetOE:
                                    484 ;	walk.c:87: OE76 &= ~mask;
      0020D7 E5 82            [12]  485 	mov	a,dpl
      0020D9 F4               [12]  486 	cpl	a
      0020DA FF               [12]  487 	mov	r7,a
      0020DB 78 12            [12]  488 	mov	r0,#_OE76
      0020DD 56               [12]  489 	anl	a,@r0
      0020DE F6               [12]  490 	mov	@r0,a
                                    491 ;	walk.c:88: P1_7 = 0;
                                    492 ;	assignBit
      0020DF C2 97            [12]  493 	clr	_P1_7
                                    494 ;	walk.c:93: __endasm;
      0020E1 00               [12]  495 	nop
      0020E2 00               [12]  496 	nop
      0020E3 00               [12]  497 	nop
                                    498 ;	walk.c:94: OEreg = OE76;
      0020E4 78 12            [12]  499 	mov	r0,#_OE76
      0020E6 90 F0 06         [24]  500 	mov	dptr,#_OEreg
      0020E9 E6               [12]  501 	mov	a,@r0
      0020EA F0               [24]  502 	movx	@dptr,a
                                    503 ;	walk.c:95: P1_7 = 1;
                                    504 ;	assignBit
      0020EB D2 97            [12]  505 	setb	_P1_7
                                    506 ;	walk.c:100: __endasm;
      0020ED 00               [12]  507 	nop
      0020EE 00               [12]  508 	nop
      0020EF 00               [12]  509 	nop
                                    510 ;	walk.c:102: return;
                                    511 ;	walk.c:103: }
      0020F0 22               [24]  512 	ret
                                    513 ;------------------------------------------------------------
                                    514 ;Allocation info for local variables in function 'flipOE'
                                    515 ;------------------------------------------------------------
                                    516 ;mask                      Allocated to registers r7 
                                    517 ;------------------------------------------------------------
                                    518 ;	walk.c:105: static void flipOE(uint8_t mask) {
                                    519 ;	-----------------------------------------
                                    520 ;	 function flipOE
                                    521 ;	-----------------------------------------
      0020F1                        522 _flipOE:
      0020F1 AF 82            [24]  523 	mov	r7,dpl
                                    524 ;	walk.c:106: OE76 ^= mask;
      0020F3 78 12            [12]  525 	mov	r0,#_OE76
      0020F5 EF               [12]  526 	mov	a,r7
      0020F6 66               [12]  527 	xrl	a,@r0
      0020F7 F6               [12]  528 	mov	@r0,a
                                    529 ;	walk.c:107: P1_7 = 0;
                                    530 ;	assignBit
      0020F8 C2 97            [12]  531 	clr	_P1_7
                                    532 ;	walk.c:112: __endasm;
      0020FA 00               [12]  533 	nop
      0020FB 00               [12]  534 	nop
      0020FC 00               [12]  535 	nop
                                    536 ;	walk.c:113: OEreg = OE76;
      0020FD 78 12            [12]  537 	mov	r0,#_OE76
      0020FF 90 F0 06         [24]  538 	mov	dptr,#_OEreg
      002102 E6               [12]  539 	mov	a,@r0
      002103 F0               [24]  540 	movx	@dptr,a
                                    541 ;	walk.c:114: P1_7 = 1;
                                    542 ;	assignBit
      002104 D2 97            [12]  543 	setb	_P1_7
                                    544 ;	walk.c:119: __endasm;
      002106 00               [12]  545 	nop
      002107 00               [12]  546 	nop
      002108 00               [12]  547 	nop
                                    548 ;	walk.c:121: return;
                                    549 ;	walk.c:122: }
      002109 22               [24]  550 	ret
                                    551 ;------------------------------------------------------------
                                    552 ;Allocation info for local variables in function 'update'
                                    553 ;------------------------------------------------------------
                                    554 ;cur                       Allocated to stack - _bp -5
                                    555 ;j                         Allocated to stack - _bp -6
                                    556 ;t                         Allocated to stack - _bp +1
                                    557 ;sloc0                     Allocated to stack - _bp +4
                                    558 ;sloc1                     Allocated to stack - _bp +6
                                    559 ;sloc2                     Allocated to stack - _bp +8
                                    560 ;------------------------------------------------------------
                                    561 ;	walk.c:124: static uint8_t update(struct node *t, struct node *cur, uint8_t j) {
                                    562 ;	-----------------------------------------
                                    563 ;	 function update
                                    564 ;	-----------------------------------------
      00210A                        565 _update:
      00210A C0 10            [24]  566 	push	_bp
      00210C 85 81 10         [24]  567 	mov	_bp,sp
      00210F C0 82            [24]  568 	push	dpl
      002111 C0 83            [24]  569 	push	dph
      002113 C0 F0            [24]  570 	push	b
      002115 E5 81            [12]  571 	mov	a,sp
      002117 24 07            [12]  572 	add	a,#0x07
      002119 F5 81            [12]  573 	mov	sp,a
                                    574 ;	walk.c:125: t->r = cur->r + neigh[j].r;
      00211B E5 10            [12]  575 	mov	a,_bp
      00211D 24 FB            [12]  576 	add	a,#0xfb
      00211F F8               [12]  577 	mov	r0,a
      002120 86 02            [24]  578 	mov	ar2,@r0
      002122 08               [12]  579 	inc	r0
      002123 86 03            [24]  580 	mov	ar3,@r0
      002125 08               [12]  581 	inc	r0
      002126 86 04            [24]  582 	mov	ar4,@r0
      002128 8A 82            [24]  583 	mov	dpl,r2
      00212A 8B 83            [24]  584 	mov	dph,r3
      00212C 8C F0            [24]  585 	mov	b,r4
      00212E E5 10            [12]  586 	mov	a,_bp
      002130 24 04            [12]  587 	add	a,#0x04
      002132 F8               [12]  588 	mov	r0,a
      002133 12 2F 84         [24]  589 	lcall	__gptrget
      002136 F6               [12]  590 	mov	@r0,a
      002137 A3               [24]  591 	inc	dptr
      002138 12 2F 84         [24]  592 	lcall	__gptrget
      00213B 08               [12]  593 	inc	r0
      00213C F6               [12]  594 	mov	@r0,a
      00213D E5 10            [12]  595 	mov	a,_bp
      00213F 24 FA            [12]  596 	add	a,#0xfa
      002141 F8               [12]  597 	mov	r0,a
      002142 E5 10            [12]  598 	mov	a,_bp
      002144 24 06            [12]  599 	add	a,#0x06
      002146 F9               [12]  600 	mov	r1,a
      002147 E6               [12]  601 	mov	a,@r0
      002148 75 F0 04         [24]  602 	mov	b,#0x04
      00214B A4               [48]  603 	mul	ab
      00214C F7               [12]  604 	mov	@r1,a
      00214D 09               [12]  605 	inc	r1
      00214E A7 F0            [24]  606 	mov	@r1,b
      002150 E5 10            [12]  607 	mov	a,_bp
      002152 24 06            [12]  608 	add	a,#0x06
      002154 F8               [12]  609 	mov	r0,a
      002155 E6               [12]  610 	mov	a,@r0
      002156 24 04            [12]  611 	add	a,#_neigh
      002158 F5 82            [12]  612 	mov	dpl,a
      00215A 08               [12]  613 	inc	r0
      00215B E6               [12]  614 	mov	a,@r0
      00215C 34 FC            [12]  615 	addc	a,#(_neigh >> 8)
      00215E F5 83            [12]  616 	mov	dph,a
      002160 E0               [24]  617 	movx	a,@dptr
      002161 FF               [12]  618 	mov	r7,a
      002162 A3               [24]  619 	inc	dptr
      002163 E0               [24]  620 	movx	a,@dptr
      002164 FE               [12]  621 	mov	r6,a
      002165 E5 10            [12]  622 	mov	a,_bp
      002167 24 04            [12]  623 	add	a,#0x04
      002169 F8               [12]  624 	mov	r0,a
      00216A EF               [12]  625 	mov	a,r7
      00216B 26               [12]  626 	add	a,@r0
      00216C FF               [12]  627 	mov	r7,a
      00216D EE               [12]  628 	mov	a,r6
      00216E 08               [12]  629 	inc	r0
      00216F 36               [12]  630 	addc	a,@r0
      002170 FE               [12]  631 	mov	r6,a
      002171 A8 10            [24]  632 	mov	r0,_bp
      002173 08               [12]  633 	inc	r0
      002174 86 82            [24]  634 	mov	dpl,@r0
      002176 08               [12]  635 	inc	r0
      002177 86 83            [24]  636 	mov	dph,@r0
      002179 08               [12]  637 	inc	r0
      00217A 86 F0            [24]  638 	mov	b,@r0
      00217C EF               [12]  639 	mov	a,r7
      00217D 12 2D 79         [24]  640 	lcall	__gptrput
      002180 A3               [24]  641 	inc	dptr
      002181 EE               [12]  642 	mov	a,r6
      002182 12 2D 79         [24]  643 	lcall	__gptrput
                                    644 ;	walk.c:126: t->c = cur->c + neigh[j].c;
      002185 A8 10            [24]  645 	mov	r0,_bp
      002187 08               [12]  646 	inc	r0
      002188 E5 10            [12]  647 	mov	a,_bp
      00218A 24 08            [12]  648 	add	a,#0x08
      00218C F9               [12]  649 	mov	r1,a
      00218D 74 02            [12]  650 	mov	a,#0x02
      00218F 26               [12]  651 	add	a,@r0
      002190 F7               [12]  652 	mov	@r1,a
      002191 E4               [12]  653 	clr	a
      002192 08               [12]  654 	inc	r0
      002193 36               [12]  655 	addc	a,@r0
      002194 09               [12]  656 	inc	r1
      002195 F7               [12]  657 	mov	@r1,a
      002196 08               [12]  658 	inc	r0
      002197 09               [12]  659 	inc	r1
      002198 E6               [12]  660 	mov	a,@r0
      002199 F7               [12]  661 	mov	@r1,a
      00219A 74 02            [12]  662 	mov	a,#0x02
      00219C 2A               [12]  663 	add	a,r2
      00219D FA               [12]  664 	mov	r2,a
      00219E E4               [12]  665 	clr	a
      00219F 3B               [12]  666 	addc	a,r3
      0021A0 FB               [12]  667 	mov	r3,a
      0021A1 8A 82            [24]  668 	mov	dpl,r2
      0021A3 8B 83            [24]  669 	mov	dph,r3
      0021A5 8C F0            [24]  670 	mov	b,r4
      0021A7 12 2F 84         [24]  671 	lcall	__gptrget
      0021AA FA               [12]  672 	mov	r2,a
      0021AB A3               [24]  673 	inc	dptr
      0021AC 12 2F 84         [24]  674 	lcall	__gptrget
      0021AF FB               [12]  675 	mov	r3,a
      0021B0 E5 10            [12]  676 	mov	a,_bp
      0021B2 24 06            [12]  677 	add	a,#0x06
      0021B4 F8               [12]  678 	mov	r0,a
      0021B5 E6               [12]  679 	mov	a,@r0
      0021B6 24 04            [12]  680 	add	a,#_neigh
      0021B8 FC               [12]  681 	mov	r4,a
      0021B9 08               [12]  682 	inc	r0
      0021BA E6               [12]  683 	mov	a,@r0
      0021BB 34 FC            [12]  684 	addc	a,#(_neigh >> 8)
      0021BD FD               [12]  685 	mov	r5,a
      0021BE 8C 82            [24]  686 	mov	dpl,r4
      0021C0 8D 83            [24]  687 	mov	dph,r5
      0021C2 A3               [24]  688 	inc	dptr
      0021C3 A3               [24]  689 	inc	dptr
      0021C4 E0               [24]  690 	movx	a,@dptr
      0021C5 FC               [12]  691 	mov	r4,a
      0021C6 A3               [24]  692 	inc	dptr
      0021C7 E0               [24]  693 	movx	a,@dptr
      0021C8 FD               [12]  694 	mov	r5,a
      0021C9 EC               [12]  695 	mov	a,r4
      0021CA 2A               [12]  696 	add	a,r2
      0021CB FA               [12]  697 	mov	r2,a
      0021CC ED               [12]  698 	mov	a,r5
      0021CD 3B               [12]  699 	addc	a,r3
      0021CE FB               [12]  700 	mov	r3,a
      0021CF E5 10            [12]  701 	mov	a,_bp
      0021D1 24 08            [12]  702 	add	a,#0x08
      0021D3 F8               [12]  703 	mov	r0,a
      0021D4 86 82            [24]  704 	mov	dpl,@r0
      0021D6 08               [12]  705 	inc	r0
      0021D7 86 83            [24]  706 	mov	dph,@r0
      0021D9 08               [12]  707 	inc	r0
      0021DA 86 F0            [24]  708 	mov	b,@r0
      0021DC EA               [12]  709 	mov	a,r2
      0021DD 12 2D 79         [24]  710 	lcall	__gptrput
      0021E0 A3               [24]  711 	inc	dptr
      0021E1 EB               [12]  712 	mov	a,r3
      0021E2 12 2D 79         [24]  713 	lcall	__gptrput
                                    714 ;	walk.c:128: if (t->r < 0) t->r += ROWS;
      0021E5 A8 10            [24]  715 	mov	r0,_bp
      0021E7 08               [12]  716 	inc	r0
      0021E8 86 82            [24]  717 	mov	dpl,@r0
      0021EA 08               [12]  718 	inc	r0
      0021EB 86 83            [24]  719 	mov	dph,@r0
      0021ED 08               [12]  720 	inc	r0
      0021EE 86 F0            [24]  721 	mov	b,@r0
      0021F0 12 2F 84         [24]  722 	lcall	__gptrget
      0021F3 FD               [12]  723 	mov	r5,a
      0021F4 A3               [24]  724 	inc	dptr
      0021F5 12 2F 84         [24]  725 	lcall	__gptrget
      0021F8 FC               [12]  726 	mov	r4,a
      0021F9 EE               [12]  727 	mov	a,r6
      0021FA 30 E7 1D         [24]  728 	jnb	acc.7,00104$
      0021FD 74 30            [12]  729 	mov	a,#0x30
      0021FF 2D               [12]  730 	add	a,r5
      002200 FF               [12]  731 	mov	r7,a
      002201 E4               [12]  732 	clr	a
      002202 3C               [12]  733 	addc	a,r4
      002203 FE               [12]  734 	mov	r6,a
      002204 A8 10            [24]  735 	mov	r0,_bp
      002206 08               [12]  736 	inc	r0
      002207 86 82            [24]  737 	mov	dpl,@r0
      002209 08               [12]  738 	inc	r0
      00220A 86 83            [24]  739 	mov	dph,@r0
      00220C 08               [12]  740 	inc	r0
      00220D 86 F0            [24]  741 	mov	b,@r0
      00220F EF               [12]  742 	mov	a,r7
      002210 12 2D 79         [24]  743 	lcall	__gptrput
      002213 A3               [24]  744 	inc	dptr
      002214 EE               [12]  745 	mov	a,r6
      002215 12 2D 79         [24]  746 	lcall	__gptrput
      002218 80 27            [24]  747 	sjmp	00105$
      00221A                        748 00104$:
                                    749 ;	walk.c:129: else if (t->r >= ROWS) t->r -= ROWS;
      00221A C3               [12]  750 	clr	c
      00221B ED               [12]  751 	mov	a,r5
      00221C 94 30            [12]  752 	subb	a,#0x30
      00221E EC               [12]  753 	mov	a,r4
      00221F 64 80            [12]  754 	xrl	a,#0x80
      002221 94 80            [12]  755 	subb	a,#0x80
      002223 40 1C            [24]  756 	jc	00105$
      002225 ED               [12]  757 	mov	a,r5
      002226 24 D0            [12]  758 	add	a,#0xd0
      002228 FD               [12]  759 	mov	r5,a
      002229 EC               [12]  760 	mov	a,r4
      00222A 34 FF            [12]  761 	addc	a,#0xff
      00222C FC               [12]  762 	mov	r4,a
      00222D A8 10            [24]  763 	mov	r0,_bp
      00222F 08               [12]  764 	inc	r0
      002230 86 82            [24]  765 	mov	dpl,@r0
      002232 08               [12]  766 	inc	r0
      002233 86 83            [24]  767 	mov	dph,@r0
      002235 08               [12]  768 	inc	r0
      002236 86 F0            [24]  769 	mov	b,@r0
      002238 ED               [12]  770 	mov	a,r5
      002239 12 2D 79         [24]  771 	lcall	__gptrput
      00223C A3               [24]  772 	inc	dptr
      00223D EC               [12]  773 	mov	a,r4
      00223E 12 2D 79         [24]  774 	lcall	__gptrput
      002241                        775 00105$:
                                    776 ;	walk.c:130: if (t->c < 0) t->c += COLS;
      002241 E5 10            [12]  777 	mov	a,_bp
      002243 24 08            [12]  778 	add	a,#0x08
      002245 F8               [12]  779 	mov	r0,a
      002246 86 82            [24]  780 	mov	dpl,@r0
      002248 08               [12]  781 	inc	r0
      002249 86 83            [24]  782 	mov	dph,@r0
      00224B 08               [12]  783 	inc	r0
      00224C 86 F0            [24]  784 	mov	b,@r0
      00224E 12 2F 84         [24]  785 	lcall	__gptrget
      002251 A3               [24]  786 	inc	dptr
      002252 12 2F 84         [24]  787 	lcall	__gptrget
      002255 30 E7 35         [24]  788 	jnb	acc.7,00109$
      002258 E5 10            [12]  789 	mov	a,_bp
      00225A 24 08            [12]  790 	add	a,#0x08
      00225C F8               [12]  791 	mov	r0,a
      00225D 86 82            [24]  792 	mov	dpl,@r0
      00225F 08               [12]  793 	inc	r0
      002260 86 83            [24]  794 	mov	dph,@r0
      002262 08               [12]  795 	inc	r0
      002263 86 F0            [24]  796 	mov	b,@r0
      002265 12 2F 84         [24]  797 	lcall	__gptrget
      002268 FE               [12]  798 	mov	r6,a
      002269 A3               [24]  799 	inc	dptr
      00226A 12 2F 84         [24]  800 	lcall	__gptrget
      00226D FF               [12]  801 	mov	r7,a
      00226E 74 C0            [12]  802 	mov	a,#0xc0
      002270 2E               [12]  803 	add	a,r6
      002271 FE               [12]  804 	mov	r6,a
      002272 E4               [12]  805 	clr	a
      002273 3F               [12]  806 	addc	a,r7
      002274 FF               [12]  807 	mov	r7,a
      002275 E5 10            [12]  808 	mov	a,_bp
      002277 24 08            [12]  809 	add	a,#0x08
      002279 F8               [12]  810 	mov	r0,a
      00227A 86 82            [24]  811 	mov	dpl,@r0
      00227C 08               [12]  812 	inc	r0
      00227D 86 83            [24]  813 	mov	dph,@r0
      00227F 08               [12]  814 	inc	r0
      002280 86 F0            [24]  815 	mov	b,@r0
      002282 EE               [12]  816 	mov	a,r6
      002283 12 2D 79         [24]  817 	lcall	__gptrput
      002286 A3               [24]  818 	inc	dptr
      002287 EF               [12]  819 	mov	a,r7
      002288 12 2D 79         [24]  820 	lcall	__gptrput
      00228B 80 55            [24]  821 	sjmp	00110$
      00228D                        822 00109$:
                                    823 ;	walk.c:131: else if (t->c >= COLS) t->c -= COLS;
      00228D E5 10            [12]  824 	mov	a,_bp
      00228F 24 08            [12]  825 	add	a,#0x08
      002291 F8               [12]  826 	mov	r0,a
      002292 86 82            [24]  827 	mov	dpl,@r0
      002294 08               [12]  828 	inc	r0
      002295 86 83            [24]  829 	mov	dph,@r0
      002297 08               [12]  830 	inc	r0
      002298 86 F0            [24]  831 	mov	b,@r0
      00229A 12 2F 84         [24]  832 	lcall	__gptrget
      00229D FE               [12]  833 	mov	r6,a
      00229E A3               [24]  834 	inc	dptr
      00229F 12 2F 84         [24]  835 	lcall	__gptrget
      0022A2 FF               [12]  836 	mov	r7,a
      0022A3 C3               [12]  837 	clr	c
      0022A4 EE               [12]  838 	mov	a,r6
      0022A5 94 C0            [12]  839 	subb	a,#0xc0
      0022A7 EF               [12]  840 	mov	a,r7
      0022A8 64 80            [12]  841 	xrl	a,#0x80
      0022AA 94 80            [12]  842 	subb	a,#0x80
      0022AC 40 34            [24]  843 	jc	00110$
      0022AE E5 10            [12]  844 	mov	a,_bp
      0022B0 24 08            [12]  845 	add	a,#0x08
      0022B2 F8               [12]  846 	mov	r0,a
      0022B3 86 82            [24]  847 	mov	dpl,@r0
      0022B5 08               [12]  848 	inc	r0
      0022B6 86 83            [24]  849 	mov	dph,@r0
      0022B8 08               [12]  850 	inc	r0
      0022B9 86 F0            [24]  851 	mov	b,@r0
      0022BB 12 2F 84         [24]  852 	lcall	__gptrget
      0022BE FE               [12]  853 	mov	r6,a
      0022BF A3               [24]  854 	inc	dptr
      0022C0 12 2F 84         [24]  855 	lcall	__gptrget
      0022C3 FF               [12]  856 	mov	r7,a
      0022C4 EE               [12]  857 	mov	a,r6
      0022C5 24 40            [12]  858 	add	a,#0x40
      0022C7 FE               [12]  859 	mov	r6,a
      0022C8 EF               [12]  860 	mov	a,r7
      0022C9 34 FF            [12]  861 	addc	a,#0xff
      0022CB FF               [12]  862 	mov	r7,a
      0022CC E5 10            [12]  863 	mov	a,_bp
      0022CE 24 08            [12]  864 	add	a,#0x08
      0022D0 F8               [12]  865 	mov	r0,a
      0022D1 86 82            [24]  866 	mov	dpl,@r0
      0022D3 08               [12]  867 	inc	r0
      0022D4 86 83            [24]  868 	mov	dph,@r0
      0022D6 08               [12]  869 	inc	r0
      0022D7 86 F0            [24]  870 	mov	b,@r0
      0022D9 EE               [12]  871 	mov	a,r6
      0022DA 12 2D 79         [24]  872 	lcall	__gptrput
      0022DD A3               [24]  873 	inc	dptr
      0022DE EF               [12]  874 	mov	a,r7
      0022DF 12 2D 79         [24]  875 	lcall	__gptrput
      0022E2                        876 00110$:
                                    877 ;	walk.c:133: if (g[t->r][t->c] == 0xaau) return 0u;
      0022E2 A8 10            [24]  878 	mov	r0,_bp
      0022E4 08               [12]  879 	inc	r0
      0022E5 86 82            [24]  880 	mov	dpl,@r0
      0022E7 08               [12]  881 	inc	r0
      0022E8 86 83            [24]  882 	mov	dph,@r0
      0022EA 08               [12]  883 	inc	r0
      0022EB 86 F0            [24]  884 	mov	b,@r0
      0022ED 12 2F 84         [24]  885 	lcall	__gptrget
      0022F0 FE               [12]  886 	mov	r6,a
      0022F1 A3               [24]  887 	inc	dptr
      0022F2 12 2F 84         [24]  888 	lcall	__gptrget
      0022F5 FF               [12]  889 	mov	r7,a
      0022F6 C0 06            [24]  890 	push	ar6
      0022F8 C0 07            [24]  891 	push	ar7
      0022FA 90 00 C0         [24]  892 	mov	dptr,#0x00c0
      0022FD 12 2D 94         [24]  893 	lcall	__mulint
      002300 AE 82            [24]  894 	mov	r6,dpl
      002302 AF 83            [24]  895 	mov	r7,dph
      002304 15 81            [12]  896 	dec	sp
      002306 15 81            [12]  897 	dec	sp
      002308 EE               [12]  898 	mov	a,r6
      002309 24 00            [12]  899 	add	a,#_g
      00230B FE               [12]  900 	mov	r6,a
      00230C EF               [12]  901 	mov	a,r7
      00230D 34 48            [12]  902 	addc	a,#(_g >> 8)
      00230F FF               [12]  903 	mov	r7,a
      002310 E5 10            [12]  904 	mov	a,_bp
      002312 24 08            [12]  905 	add	a,#0x08
      002314 F8               [12]  906 	mov	r0,a
      002315 86 82            [24]  907 	mov	dpl,@r0
      002317 08               [12]  908 	inc	r0
      002318 86 83            [24]  909 	mov	dph,@r0
      00231A 08               [12]  910 	inc	r0
      00231B 86 F0            [24]  911 	mov	b,@r0
      00231D 12 2F 84         [24]  912 	lcall	__gptrget
      002320 FC               [12]  913 	mov	r4,a
      002321 A3               [24]  914 	inc	dptr
      002322 12 2F 84         [24]  915 	lcall	__gptrget
      002325 FD               [12]  916 	mov	r5,a
      002326 EC               [12]  917 	mov	a,r4
      002327 2E               [12]  918 	add	a,r6
      002328 F5 82            [12]  919 	mov	dpl,a
      00232A ED               [12]  920 	mov	a,r5
      00232B 3F               [12]  921 	addc	a,r7
      00232C F5 83            [12]  922 	mov	dph,a
      00232E E0               [24]  923 	movx	a,@dptr
      00232F FF               [12]  924 	mov	r7,a
      002330 BF AA 05         [24]  925 	cjne	r7,#0xaa,00114$
      002333 75 82 00         [24]  926 	mov	dpl,#0x00
      002336 80 59            [24]  927 	sjmp	00116$
      002338                        928 00114$:
                                    929 ;	walk.c:134: else if (g[t->r][t->c] != 0x55u) bang();
      002338 A8 10            [24]  930 	mov	r0,_bp
      00233A 08               [12]  931 	inc	r0
      00233B 86 82            [24]  932 	mov	dpl,@r0
      00233D 08               [12]  933 	inc	r0
      00233E 86 83            [24]  934 	mov	dph,@r0
      002340 08               [12]  935 	inc	r0
      002341 86 F0            [24]  936 	mov	b,@r0
      002343 12 2F 84         [24]  937 	lcall	__gptrget
      002346 FE               [12]  938 	mov	r6,a
      002347 A3               [24]  939 	inc	dptr
      002348 12 2F 84         [24]  940 	lcall	__gptrget
      00234B FF               [12]  941 	mov	r7,a
      00234C C0 06            [24]  942 	push	ar6
      00234E C0 07            [24]  943 	push	ar7
      002350 90 00 C0         [24]  944 	mov	dptr,#0x00c0
      002353 12 2D 94         [24]  945 	lcall	__mulint
      002356 AE 82            [24]  946 	mov	r6,dpl
      002358 AF 83            [24]  947 	mov	r7,dph
      00235A 15 81            [12]  948 	dec	sp
      00235C 15 81            [12]  949 	dec	sp
      00235E EE               [12]  950 	mov	a,r6
      00235F 24 00            [12]  951 	add	a,#_g
      002361 FE               [12]  952 	mov	r6,a
      002362 EF               [12]  953 	mov	a,r7
      002363 34 48            [12]  954 	addc	a,#(_g >> 8)
      002365 FF               [12]  955 	mov	r7,a
      002366 E5 10            [12]  956 	mov	a,_bp
      002368 24 08            [12]  957 	add	a,#0x08
      00236A F8               [12]  958 	mov	r0,a
      00236B 86 82            [24]  959 	mov	dpl,@r0
      00236D 08               [12]  960 	inc	r0
      00236E 86 83            [24]  961 	mov	dph,@r0
      002370 08               [12]  962 	inc	r0
      002371 86 F0            [24]  963 	mov	b,@r0
      002373 12 2F 84         [24]  964 	lcall	__gptrget
      002376 FC               [12]  965 	mov	r4,a
      002377 A3               [24]  966 	inc	dptr
      002378 12 2F 84         [24]  967 	lcall	__gptrget
      00237B FD               [12]  968 	mov	r5,a
      00237C EC               [12]  969 	mov	a,r4
      00237D 2E               [12]  970 	add	a,r6
      00237E F5 82            [12]  971 	mov	dpl,a
      002380 ED               [12]  972 	mov	a,r5
      002381 3F               [12]  973 	addc	a,r7
      002382 F5 83            [12]  974 	mov	dph,a
      002384 E0               [24]  975 	movx	a,@dptr
      002385 FF               [12]  976 	mov	r7,a
      002386 BF 55 02         [24]  977 	cjne	r7,#0x55,00148$
      002389 80 03            [24]  978 	sjmp	00115$
      00238B                        979 00148$:
      00238B 12 20 B1         [24]  980 	lcall	_bang
      00238E                        981 00115$:
                                    982 ;	walk.c:136: return 1u;
      00238E 75 82 01         [24]  983 	mov	dpl,#0x01
      002391                        984 00116$:
                                    985 ;	walk.c:137: }
      002391 85 10 81         [24]  986 	mov	sp,_bp
      002394 D0 10            [24]  987 	pop	_bp
      002396 22               [24]  988 	ret
                                    989 ;------------------------------------------------------------
                                    990 ;Allocation info for local variables in function 'walk'
                                    991 ;------------------------------------------------------------
                                    992 ;nstart                    Allocated to registers r5 r6 r7 
                                    993 ;cur                       Allocated to stack - _bp +7
                                    994 ;t                         Allocated to stack - _bp +11
                                    995 ;scramble                  Allocated to stack - _bp +15
                                    996 ;ti                        Allocated to registers r2 
                                    997 ;tj                        Allocated to registers r6 
                                    998 ;tx                        Allocated to stack - _bp +31
                                    999 ;j                         Allocated to stack - _bp +32
                                   1000 ;sloc0                     Allocated to stack - _bp +1
                                   1001 ;sloc1                     Allocated to stack - _bp +3
                                   1002 ;sloc2                     Allocated to stack - _bp +35
                                   1003 ;sloc3                     Allocated to stack - _bp +4
                                   1004 ;------------------------------------------------------------
                                   1005 ;	walk.c:139: static void walk(struct node *nstart) {
                                   1006 ;	-----------------------------------------
                                   1007 ;	 function walk
                                   1008 ;	-----------------------------------------
      002397                       1009 _walk:
      002397 C0 10            [24] 1010 	push	_bp
      002399 E5 81            [12] 1011 	mov	a,sp
      00239B F5 10            [12] 1012 	mov	_bp,a
      00239D 24 20            [12] 1013 	add	a,#0x20
      00239F F5 81            [12] 1014 	mov	sp,a
                                   1015 ;	walk.c:144: if (!qadd(nstart)) bang();
      0023A1 AD 82            [24] 1016 	mov	r5,dpl
      0023A3 AE 83            [24] 1017 	mov	r6,dph
      0023A5 AF F0            [24] 1018 	mov	r7,b
      0023A7 C0 07            [24] 1019 	push	ar7
      0023A9 C0 06            [24] 1020 	push	ar6
      0023AB C0 05            [24] 1021 	push	ar5
      0023AD 12 2B 29         [24] 1022 	lcall	_qadd
      0023B0 E5 82            [12] 1023 	mov	a,dpl
      0023B2 D0 05            [24] 1024 	pop	ar5
      0023B4 D0 06            [24] 1025 	pop	ar6
      0023B6 D0 07            [24] 1026 	pop	ar7
      0023B8 70 0F            [24] 1027 	jnz	00102$
      0023BA C0 07            [24] 1028 	push	ar7
      0023BC C0 06            [24] 1029 	push	ar6
      0023BE C0 05            [24] 1030 	push	ar5
      0023C0 12 20 B1         [24] 1031 	lcall	_bang
      0023C3 D0 05            [24] 1032 	pop	ar5
      0023C5 D0 06            [24] 1033 	pop	ar6
      0023C7 D0 07            [24] 1034 	pop	ar7
      0023C9                       1035 00102$:
                                   1036 ;	walk.c:145: g[nstart->r][nstart->c] = 0xaau;
      0023C9 8D 82            [24] 1037 	mov	dpl,r5
      0023CB 8E 83            [24] 1038 	mov	dph,r6
      0023CD 8F F0            [24] 1039 	mov	b,r7
      0023CF 12 2F 84         [24] 1040 	lcall	__gptrget
      0023D2 FB               [12] 1041 	mov	r3,a
      0023D3 A3               [24] 1042 	inc	dptr
      0023D4 12 2F 84         [24] 1043 	lcall	__gptrget
      0023D7 FC               [12] 1044 	mov	r4,a
      0023D8 C0 07            [24] 1045 	push	ar7
      0023DA C0 06            [24] 1046 	push	ar6
      0023DC C0 05            [24] 1047 	push	ar5
      0023DE C0 03            [24] 1048 	push	ar3
      0023E0 C0 04            [24] 1049 	push	ar4
      0023E2 90 00 C0         [24] 1050 	mov	dptr,#0x00c0
      0023E5 12 2D 94         [24] 1051 	lcall	__mulint
      0023E8 AB 82            [24] 1052 	mov	r3,dpl
      0023EA AC 83            [24] 1053 	mov	r4,dph
      0023EC 15 81            [12] 1054 	dec	sp
      0023EE 15 81            [12] 1055 	dec	sp
      0023F0 D0 05            [24] 1056 	pop	ar5
      0023F2 D0 06            [24] 1057 	pop	ar6
      0023F4 D0 07            [24] 1058 	pop	ar7
      0023F6 EB               [12] 1059 	mov	a,r3
      0023F7 24 00            [12] 1060 	add	a,#_g
      0023F9 FB               [12] 1061 	mov	r3,a
      0023FA EC               [12] 1062 	mov	a,r4
      0023FB 34 48            [12] 1063 	addc	a,#(_g >> 8)
      0023FD FC               [12] 1064 	mov	r4,a
      0023FE 74 02            [12] 1065 	mov	a,#0x02
      002400 2D               [12] 1066 	add	a,r5
      002401 FD               [12] 1067 	mov	r5,a
      002402 E4               [12] 1068 	clr	a
      002403 3E               [12] 1069 	addc	a,r6
      002404 FE               [12] 1070 	mov	r6,a
      002405 8D 82            [24] 1071 	mov	dpl,r5
      002407 8E 83            [24] 1072 	mov	dph,r6
      002409 8F F0            [24] 1073 	mov	b,r7
      00240B 12 2F 84         [24] 1074 	lcall	__gptrget
      00240E FD               [12] 1075 	mov	r5,a
      00240F A3               [24] 1076 	inc	dptr
      002410 12 2F 84         [24] 1077 	lcall	__gptrget
      002413 FE               [12] 1078 	mov	r6,a
      002414 ED               [12] 1079 	mov	a,r5
      002415 2B               [12] 1080 	add	a,r3
      002416 F5 82            [12] 1081 	mov	dpl,a
      002418 EE               [12] 1082 	mov	a,r6
      002419 3C               [12] 1083 	addc	a,r4
      00241A F5 83            [12] 1084 	mov	dph,a
      00241C 74 AA            [12] 1085 	mov	a,#0xaa
      00241E F0               [24] 1086 	movx	@dptr,a
                                   1087 ;	walk.c:147: process:
      00241F E5 10            [12] 1088 	mov	a,_bp
      002421 24 0F            [12] 1089 	add	a,#0x0f
      002423 FF               [12] 1090 	mov	r7,a
      002424 E5 10            [12] 1091 	mov	a,_bp
      002426 24 0B            [12] 1092 	add	a,#0x0b
      002428 F9               [12] 1093 	mov	r1,a
      002429 E5 10            [12] 1094 	mov	a,_bp
      00242B 24 03            [12] 1095 	add	a,#0x03
      00242D F8               [12] 1096 	mov	r0,a
      00242E A6 01            [24] 1097 	mov	@r0,ar1
      002430 74 02            [12] 1098 	mov	a,#0x02
      002432 29               [12] 1099 	add	a,r1
      002433 F8               [12] 1100 	mov	r0,a
      002434 E5 10            [12] 1101 	mov	a,_bp
      002436 24 07            [12] 1102 	add	a,#0x07
      002438 FD               [12] 1103 	mov	r5,a
      002439                       1104 00103$:
                                   1105 ;	walk.c:148: unsetOE(OE76_MASK7 | OE76_MASK6);
      002439 75 82 C0         [24] 1106 	mov	dpl,#0xc0
      00243C C0 07            [24] 1107 	push	ar7
      00243E C0 05            [24] 1108 	push	ar5
      002440 C0 01            [24] 1109 	push	ar1
      002442 C0 00            [24] 1110 	push	ar0
      002444 12 20 D7         [24] 1111 	lcall	_unsetOE
      002447 D0 00            [24] 1112 	pop	ar0
      002449 D0 01            [24] 1113 	pop	ar1
      00244B D0 05            [24] 1114 	pop	ar5
                                   1115 ;	walk.c:150: if (!qget(&cur)) goto term;
      00244D 8D 02            [24] 1116 	mov	ar2,r5
      00244F 7B 00            [12] 1117 	mov	r3,#0x00
      002451 7C 40            [12] 1118 	mov	r4,#0x40
      002453 8A 82            [24] 1119 	mov	dpl,r2
      002455 8B 83            [24] 1120 	mov	dph,r3
      002457 8C F0            [24] 1121 	mov	b,r4
      002459 C0 05            [24] 1122 	push	ar5
      00245B C0 01            [24] 1123 	push	ar1
      00245D C0 00            [24] 1124 	push	ar0
      00245F 12 2C 19         [24] 1125 	lcall	_qget
      002462 E5 82            [12] 1126 	mov	a,dpl
      002464 D0 00            [24] 1127 	pop	ar0
      002466 D0 01            [24] 1128 	pop	ar1
      002468 D0 05            [24] 1129 	pop	ar5
      00246A D0 07            [24] 1130 	pop	ar7
      00246C 70 03            [24] 1131 	jnz	00184$
      00246E 02 27 3A         [24] 1132 	ljmp	00119$
      002471                       1133 00184$:
                                   1134 ;	walk.c:152: printf("\033[2;1H% 8d% 8d% 8d% 8d", hp, tp, cur.r, cur.c);
      002471 74 02            [12] 1135 	mov	a,#0x02
      002473 2D               [12] 1136 	add	a,r5
      002474 FC               [12] 1137 	mov	r4,a
      002475 C0 00            [24] 1138 	push	ar0
      002477 A8 10            [24] 1139 	mov	r0,_bp
      002479 08               [12] 1140 	inc	r0
      00247A C0 01            [24] 1141 	push	ar1
      00247C A9 04            [24] 1142 	mov	r1,ar4
      00247E E7               [12] 1143 	mov	a,@r1
      00247F F6               [12] 1144 	mov	@r0,a
      002480 09               [12] 1145 	inc	r1
      002481 E7               [12] 1146 	mov	a,@r1
      002482 08               [12] 1147 	inc	r0
      002483 F6               [12] 1148 	mov	@r0,a
      002484 D0 01            [24] 1149 	pop	ar1
      002486 A8 05            [24] 1150 	mov	r0,ar5
      002488 86 03            [24] 1151 	mov	ar3,@r0
      00248A 08               [12] 1152 	inc	r0
      00248B 86 06            [24] 1153 	mov	ar6,@r0
      00248D D0 00            [24] 1154 	pop	ar0
      00248F C0 07            [24] 1155 	push	ar7
      002491 C0 05            [24] 1156 	push	ar5
      002493 C0 04            [24] 1157 	push	ar4
      002495 C0 01            [24] 1158 	push	ar1
      002497 C0 00            [24] 1159 	push	ar0
      002499 85 00 F0         [24] 1160 	mov	b,ar0
      00249C A8 10            [24] 1161 	mov	r0,_bp
      00249E 08               [12] 1162 	inc	r0
      00249F E6               [12] 1163 	mov	a,@r0
      0024A0 C0 E0            [24] 1164 	push	acc
      0024A2 08               [12] 1165 	inc	r0
      0024A3 E6               [12] 1166 	mov	a,@r0
      0024A4 C0 E0            [24] 1167 	push	acc
      0024A6 C0 03            [24] 1168 	push	ar3
      0024A8 C0 06            [24] 1169 	push	ar6
      0024AA 90 FC 02         [24] 1170 	mov	dptr,#_tp
      0024AD E0               [24] 1171 	movx	a,@dptr
      0024AE C0 E0            [24] 1172 	push	acc
      0024B0 A3               [24] 1173 	inc	dptr
      0024B1 E0               [24] 1174 	movx	a,@dptr
      0024B2 C0 E0            [24] 1175 	push	acc
      0024B4 90 FC 00         [24] 1176 	mov	dptr,#_hp
      0024B7 E0               [24] 1177 	movx	a,@dptr
      0024B8 C0 E0            [24] 1178 	push	acc
      0024BA A3               [24] 1179 	inc	dptr
      0024BB E0               [24] 1180 	movx	a,@dptr
      0024BC C0 E0            [24] 1181 	push	acc
      0024BE 74 60            [12] 1182 	mov	a,#___str_1
      0024C0 C0 E0            [24] 1183 	push	acc
      0024C2 74 45            [12] 1184 	mov	a,#(___str_1 >> 8)
      0024C4 C0 E0            [24] 1185 	push	acc
      0024C6 74 80            [12] 1186 	mov	a,#0x80
      0024C8 C0 E0            [24] 1187 	push	acc
      0024CA 12 2F 4B         [24] 1188 	lcall	_printf
      0024CD E5 81            [12] 1189 	mov	a,sp
      0024CF 24 F5            [12] 1190 	add	a,#0xf5
      0024D1 F5 81            [12] 1191 	mov	sp,a
      0024D3 D0 00            [24] 1192 	pop	ar0
      0024D5 D0 01            [24] 1193 	pop	ar1
      0024D7 D0 04            [24] 1194 	pop	ar4
      0024D9 D0 05            [24] 1195 	pop	ar5
      0024DB D0 07            [24] 1196 	pop	ar7
                                   1197 ;	walk.c:154: printf("\033[%d;%dH.", cur.r + 4, cur.c + 1);
      0024DD C0 00            [24] 1198 	push	ar0
      0024DF A8 04            [24] 1199 	mov	r0,ar4
      0024E1 86 04            [24] 1200 	mov	ar4,@r0
      0024E3 08               [12] 1201 	inc	r0
      0024E4 86 06            [24] 1202 	mov	ar6,@r0
      0024E6 D0 00            [24] 1203 	pop	ar0
      0024E8 0C               [12] 1204 	inc	r4
      0024E9 BC 00 01         [24] 1205 	cjne	r4,#0x00,00185$
      0024EC 0E               [12] 1206 	inc	r6
      0024ED                       1207 00185$:
      0024ED C0 00            [24] 1208 	push	ar0
      0024EF A8 05            [24] 1209 	mov	r0,ar5
      0024F1 86 02            [24] 1210 	mov	ar2,@r0
      0024F3 08               [12] 1211 	inc	r0
      0024F4 86 03            [24] 1212 	mov	ar3,@r0
      0024F6 D0 00            [24] 1213 	pop	ar0
      0024F8 74 04            [12] 1214 	mov	a,#0x04
      0024FA 2A               [12] 1215 	add	a,r2
      0024FB FA               [12] 1216 	mov	r2,a
      0024FC E4               [12] 1217 	clr	a
      0024FD 3B               [12] 1218 	addc	a,r3
      0024FE FB               [12] 1219 	mov	r3,a
      0024FF C0 07            [24] 1220 	push	ar7
      002501 C0 05            [24] 1221 	push	ar5
      002503 C0 01            [24] 1222 	push	ar1
      002505 C0 00            [24] 1223 	push	ar0
      002507 C0 04            [24] 1224 	push	ar4
      002509 C0 06            [24] 1225 	push	ar6
      00250B C0 02            [24] 1226 	push	ar2
      00250D C0 03            [24] 1227 	push	ar3
      00250F 74 77            [12] 1228 	mov	a,#___str_2
      002511 C0 E0            [24] 1229 	push	acc
      002513 74 45            [12] 1230 	mov	a,#(___str_2 >> 8)
      002515 C0 E0            [24] 1231 	push	acc
      002517 74 80            [12] 1232 	mov	a,#0x80
      002519 C0 E0            [24] 1233 	push	acc
      00251B 12 2F 4B         [24] 1234 	lcall	_printf
      00251E E5 81            [12] 1235 	mov	a,sp
      002520 24 F9            [12] 1236 	add	a,#0xf9
      002522 F5 81            [12] 1237 	mov	sp,a
                                   1238 ;	walk.c:155: setOE(OE76_MASK6);
      002524 75 82 40         [24] 1239 	mov	dpl,#0x40
      002527 12 20 BE         [24] 1240 	lcall	_setOE
      00252A D0 00            [24] 1241 	pop	ar0
      00252C D0 01            [24] 1242 	pop	ar1
      00252E D0 05            [24] 1243 	pop	ar5
      002530 D0 07            [24] 1244 	pop	ar7
                                   1245 ;	walk.c:157: for (j = 0u; j < NMAX; j++)
      002532 7E 00            [12] 1246 	mov	r6,#0x00
                                   1247 ;	walk.c:184: return;
                                   1248 ;	walk.c:157: for (j = 0u; j < NMAX; j++)
      002534                       1249 00120$:
                                   1250 ;	walk.c:158: scramble[j] = j;
      002534 EE               [12] 1251 	mov	a,r6
      002535 2F               [12] 1252 	add	a,r7
      002536 C0 00            [24] 1253 	push	ar0
      002538 F8               [12] 1254 	mov	r0,a
      002539 A6 06            [24] 1255 	mov	@r0,ar6
      00253B D0 00            [24] 1256 	pop	ar0
                                   1257 ;	walk.c:157: for (j = 0u; j < NMAX; j++)
      00253D 0E               [12] 1258 	inc	r6
      00253E BE 10 00         [24] 1259 	cjne	r6,#0x10,00186$
      002541                       1260 00186$:
      002541 40 F1            [24] 1261 	jc	00120$
                                   1262 ;	walk.c:160: do ti = (uint8_t)(rand() % NMAX);
      002543 7C 00            [12] 1263 	mov	r4,#0x00
      002545                       1264 00107$:
      002545 C0 07            [24] 1265 	push	ar7
      002547 C0 05            [24] 1266 	push	ar5
      002549 C0 04            [24] 1267 	push	ar4
      00254B C0 01            [24] 1268 	push	ar1
      00254D C0 00            [24] 1269 	push	ar0
      00254F 12 2C 9C         [24] 1270 	lcall	_rand
      002552 AA 82            [24] 1271 	mov	r2,dpl
      002554 D0 00            [24] 1272 	pop	ar0
      002556 D0 01            [24] 1273 	pop	ar1
      002558 D0 04            [24] 1274 	pop	ar4
      00255A D0 05            [24] 1275 	pop	ar5
      00255C D0 07            [24] 1276 	pop	ar7
      00255E 53 02 0F         [24] 1277 	anl	ar2,#0x0f
      002561 7B 00            [12] 1278 	mov	r3,#0x00
                                   1279 ;	walk.c:161: while (ti == j);
      002563 EA               [12] 1280 	mov	a,r2
      002564 B5 04 02         [24] 1281 	cjne	a,ar4,00188$
      002567 80 DC            [24] 1282 	sjmp	00107$
      002569                       1283 00188$:
                                   1284 ;	walk.c:162: do tj = (uint8_t)(rand() % NMAX);
      002569                       1285 00110$:
      002569 C0 05            [24] 1286 	push	ar5
      00256B C0 07            [24] 1287 	push	ar7
      00256D C0 04            [24] 1288 	push	ar4
      00256F C0 02            [24] 1289 	push	ar2
      002571 C0 01            [24] 1290 	push	ar1
      002573 C0 00            [24] 1291 	push	ar0
      002575 12 2C 9C         [24] 1292 	lcall	_rand
      002578 AB 82            [24] 1293 	mov	r3,dpl
      00257A D0 00            [24] 1294 	pop	ar0
      00257C D0 01            [24] 1295 	pop	ar1
      00257E D0 02            [24] 1296 	pop	ar2
      002580 D0 04            [24] 1297 	pop	ar4
      002582 D0 07            [24] 1298 	pop	ar7
      002584 53 03 0F         [24] 1299 	anl	ar3,#0x0f
      002587 8B 06            [24] 1300 	mov	ar6,r3
                                   1301 ;	walk.c:163: while (ti == tj);
      002589 EA               [12] 1302 	mov	a,r2
      00258A B5 06 04         [24] 1303 	cjne	a,ar6,00189$
      00258D D0 05            [24] 1304 	pop	ar5
      00258F 80 D8            [24] 1305 	sjmp	00110$
      002591                       1306 00189$:
                                   1307 ;	walk.c:164: tx = scramble[ti];
      002591 EA               [12] 1308 	mov	a,r2
      002592 2F               [12] 1309 	add	a,r7
      002593 FB               [12] 1310 	mov	r3,a
      002594 C0 00            [24] 1311 	push	ar0
      002596 E5 10            [12] 1312 	mov	a,_bp
      002598 24 1F            [12] 1313 	add	a,#0x1f
      00259A F8               [12] 1314 	mov	r0,a
      00259B C0 01            [24] 1315 	push	ar1
      00259D A9 03            [24] 1316 	mov	r1,ar3
      00259F E7               [12] 1317 	mov	a,@r1
      0025A0 F6               [12] 1318 	mov	@r0,a
                                   1319 ;	walk.c:165: scramble[ti] = scramble[tj];
      0025A1 EE               [12] 1320 	mov	a,r6
      0025A2 2F               [12] 1321 	add	a,r7
      0025A3 FD               [12] 1322 	mov	r5,a
      0025A4 A8 05            [24] 1323 	mov	r0,ar5
      0025A6 86 02            [24] 1324 	mov	ar2,@r0
      0025A8 A8 03            [24] 1325 	mov	r0,ar3
      0025AA A6 02            [24] 1326 	mov	@r0,ar2
                                   1327 ;	walk.c:166: scramble[tj] = tx;
      0025AC A8 05            [24] 1328 	mov	r0,ar5
      0025AE E5 10            [12] 1329 	mov	a,_bp
      0025B0 24 1F            [12] 1330 	add	a,#0x1f
      0025B2 F9               [12] 1331 	mov	r1,a
      0025B3 E7               [12] 1332 	mov	a,@r1
      0025B4 F6               [12] 1333 	mov	@r0,a
      0025B5 D0 00            [24] 1334 	pop	ar0
      0025B7 D0 01            [24] 1335 	pop	ar1
                                   1336 ;	walk.c:159: for (j = 0u; j < NMAX; j++) {
      0025B9 0C               [12] 1337 	inc	r4
      0025BA BC 10 00         [24] 1338 	cjne	r4,#0x10,00190$
      0025BD                       1339 00190$:
      0025BD D0 05            [24] 1340 	pop	ar5
      0025BF 40 84            [24] 1341 	jc	00107$
                                   1342 ;	walk.c:169: for (j = 0u; j < NMAX; j++) {
      0025C1 C0 00            [24] 1343 	push	ar0
      0025C3 A8 10            [24] 1344 	mov	r0,_bp
      0025C5 08               [12] 1345 	inc	r0
      0025C6 A6 05            [24] 1346 	mov	@r0,ar5
      0025C8 E5 10            [12] 1347 	mov	a,_bp
      0025CA 24 20            [12] 1348 	add	a,#0x20
      0025CC F8               [12] 1349 	mov	r0,a
      0025CD 76 00            [12] 1350 	mov	@r0,#0x00
      0025CF D0 00            [24] 1351 	pop	ar0
      0025D1                       1352 00124$:
                                   1353 ;	walk.c:170: unsetOE(OE76_MASK7);
      0025D1 C0 05            [24] 1354 	push	ar5
      0025D3 75 82 80         [24] 1355 	mov	dpl,#0x80
      0025D6 C0 07            [24] 1356 	push	ar7
      0025D8 C0 05            [24] 1357 	push	ar5
      0025DA C0 01            [24] 1358 	push	ar1
      0025DC C0 00            [24] 1359 	push	ar0
      0025DE 12 20 D7         [24] 1360 	lcall	_unsetOE
      0025E1 D0 00            [24] 1361 	pop	ar0
      0025E3 D0 01            [24] 1362 	pop	ar1
      0025E5 D0 05            [24] 1363 	pop	ar5
      0025E7 D0 07            [24] 1364 	pop	ar7
                                   1365 ;	walk.c:172: if (update(&t, &cur, scramble[j])) {
      0025E9 C0 00            [24] 1366 	push	ar0
      0025EB E5 10            [12] 1367 	mov	a,_bp
      0025ED 24 20            [12] 1368 	add	a,#0x20
      0025EF F8               [12] 1369 	mov	r0,a
      0025F0 E6               [12] 1370 	mov	a,@r0
      0025F1 2F               [12] 1371 	add	a,r7
      0025F2 FA               [12] 1372 	mov	r2,a
      0025F3 A8 02            [24] 1373 	mov	r0,ar2
      0025F5 86 03            [24] 1374 	mov	ar3,@r0
      0025F7 A8 10            [24] 1375 	mov	r0,_bp
      0025F9 08               [12] 1376 	inc	r0
      0025FA C0 01            [24] 1377 	push	ar1
      0025FC E5 10            [12] 1378 	mov	a,_bp
      0025FE 24 04            [12] 1379 	add	a,#0x04
      002600 F9               [12] 1380 	mov	r1,a
      002601 E6               [12] 1381 	mov	a,@r0
      002602 F7               [12] 1382 	mov	@r1,a
      002603 09               [12] 1383 	inc	r1
      002604 77 00            [12] 1384 	mov	@r1,#0x00
      002606 09               [12] 1385 	inc	r1
      002607 77 40            [12] 1386 	mov	@r1,#0x40
      002609 D0 01            [24] 1387 	pop	ar1
      00260B D0 00            [24] 1388 	pop	ar0
      00260D 89 02            [24] 1389 	mov	ar2,r1
      00260F 7C 00            [12] 1390 	mov	r4,#0x00
      002611 7E 40            [12] 1391 	mov	r6,#0x40
      002613 C0 07            [24] 1392 	push	ar7
      002615 C0 05            [24] 1393 	push	ar5
      002617 C0 01            [24] 1394 	push	ar1
      002619 C0 00            [24] 1395 	push	ar0
      00261B C0 03            [24] 1396 	push	ar3
      00261D 85 00 F0         [24] 1397 	mov	b,ar0
      002620 E5 10            [12] 1398 	mov	a,_bp
      002622 24 04            [12] 1399 	add	a,#0x04
      002624 F8               [12] 1400 	mov	r0,a
      002625 E6               [12] 1401 	mov	a,@r0
      002626 C0 E0            [24] 1402 	push	acc
      002628 08               [12] 1403 	inc	r0
      002629 E6               [12] 1404 	mov	a,@r0
      00262A C0 E0            [24] 1405 	push	acc
      00262C 08               [12] 1406 	inc	r0
      00262D E6               [12] 1407 	mov	a,@r0
      00262E C0 E0            [24] 1408 	push	acc
      002630 8A 82            [24] 1409 	mov	dpl,r2
      002632 8C 83            [24] 1410 	mov	dph,r4
      002634 8E F0            [24] 1411 	mov	b,r6
      002636 12 21 0A         [24] 1412 	lcall	_update
      002639 AE 82            [24] 1413 	mov	r6,dpl
      00263B E5 81            [12] 1414 	mov	a,sp
      00263D 24 FC            [12] 1415 	add	a,#0xfc
      00263F F5 81            [12] 1416 	mov	sp,a
      002641 D0 00            [24] 1417 	pop	ar0
      002643 D0 01            [24] 1418 	pop	ar1
      002645 D0 05            [24] 1419 	pop	ar5
      002647 D0 07            [24] 1420 	pop	ar7
      002649 D0 05            [24] 1421 	pop	ar5
      00264B EE               [12] 1422 	mov	a,r6
      00264C 70 03            [24] 1423 	jnz	00192$
      00264E 02 27 20         [24] 1424 	ljmp	00125$
      002651                       1425 00192$:
                                   1426 ;	walk.c:173: if (!qadd(&t)) bang();
      002651 C0 00            [24] 1427 	push	ar0
      002653 E5 10            [12] 1428 	mov	a,_bp
      002655 24 03            [12] 1429 	add	a,#0x03
      002657 F8               [12] 1430 	mov	r0,a
      002658 86 03            [24] 1431 	mov	ar3,@r0
      00265A 7C 00            [12] 1432 	mov	r4,#0x00
      00265C 7E 40            [12] 1433 	mov	r6,#0x40
      00265E D0 00            [24] 1434 	pop	ar0
      002660 8B 82            [24] 1435 	mov	dpl,r3
      002662 8C 83            [24] 1436 	mov	dph,r4
      002664 8E F0            [24] 1437 	mov	b,r6
      002666 C0 07            [24] 1438 	push	ar7
      002668 C0 05            [24] 1439 	push	ar5
      00266A C0 01            [24] 1440 	push	ar1
      00266C C0 00            [24] 1441 	push	ar0
      00266E 12 2B 29         [24] 1442 	lcall	_qadd
      002671 E5 82            [12] 1443 	mov	a,dpl
      002673 D0 00            [24] 1444 	pop	ar0
      002675 D0 01            [24] 1445 	pop	ar1
      002677 D0 05            [24] 1446 	pop	ar5
      002679 D0 07            [24] 1447 	pop	ar7
      00267B 70 13            [24] 1448 	jnz	00115$
      00267D C0 07            [24] 1449 	push	ar7
      00267F C0 05            [24] 1450 	push	ar5
      002681 C0 01            [24] 1451 	push	ar1
      002683 C0 00            [24] 1452 	push	ar0
      002685 12 20 B1         [24] 1453 	lcall	_bang
      002688 D0 00            [24] 1454 	pop	ar0
      00268A D0 01            [24] 1455 	pop	ar1
      00268C D0 05            [24] 1456 	pop	ar5
      00268E D0 07            [24] 1457 	pop	ar7
      002690                       1458 00115$:
                                   1459 ;	walk.c:174: g[t.r][t.c] = 0xaau;
      002690 87 04            [24] 1460 	mov	ar4,@r1
      002692 09               [12] 1461 	inc	r1
      002693 87 06            [24] 1462 	mov	ar6,@r1
      002695 19               [12] 1463 	dec	r1
      002696 C0 07            [24] 1464 	push	ar7
      002698 C0 05            [24] 1465 	push	ar5
      00269A C0 01            [24] 1466 	push	ar1
      00269C C0 00            [24] 1467 	push	ar0
      00269E C0 04            [24] 1468 	push	ar4
      0026A0 C0 06            [24] 1469 	push	ar6
      0026A2 90 00 C0         [24] 1470 	mov	dptr,#0x00c0
      0026A5 12 2D 94         [24] 1471 	lcall	__mulint
      0026A8 AC 82            [24] 1472 	mov	r4,dpl
      0026AA AE 83            [24] 1473 	mov	r6,dph
      0026AC 15 81            [12] 1474 	dec	sp
      0026AE 15 81            [12] 1475 	dec	sp
      0026B0 D0 00            [24] 1476 	pop	ar0
      0026B2 EC               [12] 1477 	mov	a,r4
      0026B3 24 00            [12] 1478 	add	a,#_g
      0026B5 FC               [12] 1479 	mov	r4,a
      0026B6 EE               [12] 1480 	mov	a,r6
      0026B7 34 48            [12] 1481 	addc	a,#(_g >> 8)
      0026B9 FE               [12] 1482 	mov	r6,a
      0026BA 86 02            [24] 1483 	mov	ar2,@r0
      0026BC 08               [12] 1484 	inc	r0
      0026BD 86 03            [24] 1485 	mov	ar3,@r0
      0026BF 18               [12] 1486 	dec	r0
      0026C0 EA               [12] 1487 	mov	a,r2
      0026C1 2C               [12] 1488 	add	a,r4
      0026C2 F5 82            [12] 1489 	mov	dpl,a
      0026C4 EB               [12] 1490 	mov	a,r3
      0026C5 3E               [12] 1491 	addc	a,r6
      0026C6 F5 83            [12] 1492 	mov	dph,a
      0026C8 74 AA            [12] 1493 	mov	a,#0xaa
      0026CA F0               [24] 1494 	movx	@dptr,a
                                   1495 ;	walk.c:176: setOE(OE76_MASK7);
      0026CB 75 82 80         [24] 1496 	mov	dpl,#0x80
      0026CE C0 00            [24] 1497 	push	ar0
      0026D0 12 20 BE         [24] 1498 	lcall	_setOE
      0026D3 D0 00            [24] 1499 	pop	ar0
      0026D5 D0 01            [24] 1500 	pop	ar1
      0026D7 D0 05            [24] 1501 	pop	ar5
      0026D9 D0 07            [24] 1502 	pop	ar7
                                   1503 ;	walk.c:177: printf("\033[%d;%dHo", t.r + 4, t.c + 1);
      0026DB 86 04            [24] 1504 	mov	ar4,@r0
      0026DD 08               [12] 1505 	inc	r0
      0026DE 86 06            [24] 1506 	mov	ar6,@r0
      0026E0 18               [12] 1507 	dec	r0
      0026E1 0C               [12] 1508 	inc	r4
      0026E2 BC 00 01         [24] 1509 	cjne	r4,#0x00,00194$
      0026E5 0E               [12] 1510 	inc	r6
      0026E6                       1511 00194$:
      0026E6 87 02            [24] 1512 	mov	ar2,@r1
      0026E8 09               [12] 1513 	inc	r1
      0026E9 87 03            [24] 1514 	mov	ar3,@r1
      0026EB 19               [12] 1515 	dec	r1
      0026EC 74 04            [12] 1516 	mov	a,#0x04
      0026EE 2A               [12] 1517 	add	a,r2
      0026EF FA               [12] 1518 	mov	r2,a
      0026F0 E4               [12] 1519 	clr	a
      0026F1 3B               [12] 1520 	addc	a,r3
      0026F2 FB               [12] 1521 	mov	r3,a
      0026F3 C0 07            [24] 1522 	push	ar7
      0026F5 C0 05            [24] 1523 	push	ar5
      0026F7 C0 01            [24] 1524 	push	ar1
      0026F9 C0 00            [24] 1525 	push	ar0
      0026FB C0 04            [24] 1526 	push	ar4
      0026FD C0 06            [24] 1527 	push	ar6
      0026FF C0 02            [24] 1528 	push	ar2
      002701 C0 03            [24] 1529 	push	ar3
      002703 74 81            [12] 1530 	mov	a,#___str_3
      002705 C0 E0            [24] 1531 	push	acc
      002707 74 45            [12] 1532 	mov	a,#(___str_3 >> 8)
      002709 C0 E0            [24] 1533 	push	acc
      00270B 74 80            [12] 1534 	mov	a,#0x80
      00270D C0 E0            [24] 1535 	push	acc
      00270F 12 2F 4B         [24] 1536 	lcall	_printf
      002712 E5 81            [12] 1537 	mov	a,sp
      002714 24 F9            [12] 1538 	add	a,#0xf9
      002716 F5 81            [12] 1539 	mov	sp,a
      002718 D0 00            [24] 1540 	pop	ar0
      00271A D0 01            [24] 1541 	pop	ar1
      00271C D0 05            [24] 1542 	pop	ar5
      00271E D0 07            [24] 1543 	pop	ar7
      002720                       1544 00125$:
                                   1545 ;	walk.c:169: for (j = 0u; j < NMAX; j++) {
      002720 C0 00            [24] 1546 	push	ar0
      002722 E5 10            [12] 1547 	mov	a,_bp
      002724 24 20            [12] 1548 	add	a,#0x20
      002726 F8               [12] 1549 	mov	r0,a
      002727 06               [12] 1550 	inc	@r0
      002728 E5 10            [12] 1551 	mov	a,_bp
      00272A 24 20            [12] 1552 	add	a,#0x20
      00272C F8               [12] 1553 	mov	r0,a
      00272D B6 10 00         [24] 1554 	cjne	@r0,#0x10,00195$
      002730                       1555 00195$:
      002730 D0 00            [24] 1556 	pop	ar0
      002732 50 03            [24] 1557 	jnc	00196$
      002734 02 25 D1         [24] 1558 	ljmp	00124$
      002737                       1559 00196$:
                                   1560 ;	walk.c:181: goto process;
      002737 02 24 39         [24] 1561 	ljmp	00103$
                                   1562 ;	walk.c:183: term:
      00273A                       1563 00119$:
                                   1564 ;	walk.c:184: return;
                                   1565 ;	walk.c:185: }
      00273A 85 10 81         [24] 1566 	mov	sp,_bp
      00273D D0 10            [24] 1567 	pop	_bp
      00273F 22               [24] 1568 	ret
                                   1569 ;------------------------------------------------------------
                                   1570 ;Allocation info for local variables in function 'main'
                                   1571 ;------------------------------------------------------------
                                   1572 ;initial                   Allocated to stack - _bp +5
                                   1573 ;N                         Allocated to stack - _bp +9
                                   1574 ;i                         Allocated to stack - _bp +11
                                   1575 ;j                         Allocated to registers r2 r6 
                                   1576 ;sloc0                     Allocated to stack - _bp +1
                                   1577 ;sloc1                     Allocated to stack - _bp +3
                                   1578 ;sloc2                     Allocated to stack - _bp +15
                                   1579 ;------------------------------------------------------------
                                   1580 ;	walk.c:187: void main(void) {
                                   1581 ;	-----------------------------------------
                                   1582 ;	 function main
                                   1583 ;	-----------------------------------------
      002740                       1584 _main:
      002740 C0 10            [24] 1585 	push	_bp
      002742 E5 81            [12] 1586 	mov	a,sp
      002744 F5 10            [12] 1587 	mov	_bp,a
      002746 24 0C            [12] 1588 	add	a,#0x0c
      002748 F5 81            [12] 1589 	mov	sp,a
                                   1590 ;	walk.c:192: i0 = 1u;
      00274A 78 11            [12] 1591 	mov	r0,#_i0
      00274C 76 01            [12] 1592 	mov	@r0,#0x01
                                   1593 ;	walk.c:194: P1_7 = 1;
                                   1594 ;	assignBit
      00274E D2 97            [12] 1595 	setb	_P1_7
                                   1596 ;	walk.c:195: IT0 = 1;
                                   1597 ;	assignBit
      002750 D2 88            [12] 1598 	setb	_IT0
                                   1599 ;	walk.c:196: EX0 = 1;
                                   1600 ;	assignBit
      002752 D2 A8            [12] 1601 	setb	_EX0
                                   1602 ;	walk.c:197: EA = 1;
                                   1603 ;	assignBit
      002754 D2 AF            [12] 1604 	setb	_EA
                                   1605 ;	walk.c:199: srand(RND);
      002756 90 80 00         [24] 1606 	mov	dptr,#_RND
      002759 E0               [24] 1607 	movx	a,@dptr
      00275A FE               [12] 1608 	mov	r6,a
      00275B A3               [24] 1609 	inc	dptr
      00275C E0               [24] 1610 	movx	a,@dptr
      00275D FF               [12] 1611 	mov	r7,a
      00275E 8E 82            [24] 1612 	mov	dpl,r6
      002760 8F 83            [24] 1613 	mov	dph,r7
      002762 12 2D 60         [24] 1614 	lcall	_srand
                                   1615 ;	walk.c:200: qinit();
      002765 12 2B 1B         [24] 1616 	lcall	_qinit
                                   1617 ;	walk.c:202: puts("\033[2J\033[?25l");
      002768 90 45 8B         [24] 1618 	mov	dptr,#___str_4
      00276B 75 F0 80         [24] 1619 	mov	b,#0x80
      00276E 12 2E C5         [24] 1620 	lcall	_puts
                                   1621 ;	walk.c:204: while (i0) {
      002771 E5 10            [12] 1622 	mov	a,_bp
      002773 24 05            [12] 1623 	add	a,#0x05
      002775 F9               [12] 1624 	mov	r1,a
      002776 FF               [12] 1625 	mov	r7,a
      002777 E5 10            [12] 1626 	mov	a,_bp
      002779 24 09            [12] 1627 	add	a,#0x09
      00277B F8               [12] 1628 	mov	r0,a
      00277C E4               [12] 1629 	clr	a
      00277D F6               [12] 1630 	mov	@r0,a
      00277E 08               [12] 1631 	inc	r0
      00277F F6               [12] 1632 	mov	@r0,a
      002780                       1633 00108$:
      002780 78 11            [12] 1634 	mov	r0,#_i0
      002782 E6               [12] 1635 	mov	a,@r0
      002783 70 03            [24] 1636 	jnz	00182$
      002785 02 2B 07         [24] 1637 	ljmp	00110$
      002788                       1638 00182$:
                                   1639 ;	walk.c:205: for (i = 0; i < ROWS; i++)
      002788 7B 00            [12] 1640 	mov	r3,#0x00
      00278A 7C 00            [12] 1641 	mov	r4,#0x00
      00278C A8 10            [24] 1642 	mov	r0,_bp
      00278E 08               [12] 1643 	inc	r0
      00278F E4               [12] 1644 	clr	a
      002790 F6               [12] 1645 	mov	@r0,a
      002791 08               [12] 1646 	inc	r0
      002792 F6               [12] 1647 	mov	@r0,a
                                   1648 ;	walk.c:206: for (j = 0; j < COLS; j++)
      002793                       1649 00125$:
      002793 A8 10            [24] 1650 	mov	r0,_bp
      002795 08               [12] 1651 	inc	r0
      002796 C0 01            [24] 1652 	push	ar1
      002798 E5 10            [12] 1653 	mov	a,_bp
      00279A 24 03            [12] 1654 	add	a,#0x03
      00279C F9               [12] 1655 	mov	r1,a
      00279D E6               [12] 1656 	mov	a,@r0
      00279E 24 00            [12] 1657 	add	a,#_g
      0027A0 F7               [12] 1658 	mov	@r1,a
      0027A1 08               [12] 1659 	inc	r0
      0027A2 E6               [12] 1660 	mov	a,@r0
      0027A3 34 48            [12] 1661 	addc	a,#(_g >> 8)
      0027A5 09               [12] 1662 	inc	r1
      0027A6 F7               [12] 1663 	mov	@r1,a
      0027A7 D0 01            [24] 1664 	pop	ar1
      0027A9 7A 00            [12] 1665 	mov	r2,#0x00
      0027AB 7E 00            [12] 1666 	mov	r6,#0x00
      0027AD                       1667 00112$:
                                   1668 ;	walk.c:207: g[i][j] = 0x55u;
      0027AD E5 10            [12] 1669 	mov	a,_bp
      0027AF 24 03            [12] 1670 	add	a,#0x03
      0027B1 F8               [12] 1671 	mov	r0,a
      0027B2 EA               [12] 1672 	mov	a,r2
      0027B3 26               [12] 1673 	add	a,@r0
      0027B4 F5 82            [12] 1674 	mov	dpl,a
      0027B6 EE               [12] 1675 	mov	a,r6
      0027B7 08               [12] 1676 	inc	r0
      0027B8 36               [12] 1677 	addc	a,@r0
      0027B9 F5 83            [12] 1678 	mov	dph,a
      0027BB 74 55            [12] 1679 	mov	a,#0x55
      0027BD F0               [24] 1680 	movx	@dptr,a
                                   1681 ;	walk.c:206: for (j = 0; j < COLS; j++)
      0027BE 0A               [12] 1682 	inc	r2
      0027BF BA 00 01         [24] 1683 	cjne	r2,#0x00,00183$
      0027C2 0E               [12] 1684 	inc	r6
      0027C3                       1685 00183$:
      0027C3 C3               [12] 1686 	clr	c
      0027C4 EA               [12] 1687 	mov	a,r2
      0027C5 94 C0            [12] 1688 	subb	a,#0xc0
      0027C7 EE               [12] 1689 	mov	a,r6
      0027C8 64 80            [12] 1690 	xrl	a,#0x80
      0027CA 94 80            [12] 1691 	subb	a,#0x80
      0027CC 40 DF            [24] 1692 	jc	00112$
                                   1693 ;	walk.c:205: for (i = 0; i < ROWS; i++)
      0027CE A8 10            [24] 1694 	mov	r0,_bp
      0027D0 08               [12] 1695 	inc	r0
      0027D1 74 C0            [12] 1696 	mov	a,#0xc0
      0027D3 26               [12] 1697 	add	a,@r0
      0027D4 F6               [12] 1698 	mov	@r0,a
      0027D5 E4               [12] 1699 	clr	a
      0027D6 08               [12] 1700 	inc	r0
      0027D7 36               [12] 1701 	addc	a,@r0
      0027D8 F6               [12] 1702 	mov	@r0,a
      0027D9 0B               [12] 1703 	inc	r3
      0027DA BB 00 01         [24] 1704 	cjne	r3,#0x00,00185$
      0027DD 0C               [12] 1705 	inc	r4
      0027DE                       1706 00185$:
      0027DE C3               [12] 1707 	clr	c
      0027DF EB               [12] 1708 	mov	a,r3
      0027E0 94 30            [12] 1709 	subb	a,#0x30
      0027E2 EC               [12] 1710 	mov	a,r4
      0027E3 64 80            [12] 1711 	xrl	a,#0x80
      0027E5 94 80            [12] 1712 	subb	a,#0x80
      0027E7 40 AA            [24] 1713 	jc	00125$
                                   1714 ;	walk.c:209: initial.r = rand() % ROWS;
      0027E9 E5 10            [12] 1715 	mov	a,_bp
      0027EB 24 05            [12] 1716 	add	a,#0x05
      0027ED F8               [12] 1717 	mov	r0,a
      0027EE C0 07            [24] 1718 	push	ar7
      0027F0 C0 01            [24] 1719 	push	ar1
      0027F2 C0 00            [24] 1720 	push	ar0
      0027F4 12 2C 9C         [24] 1721 	lcall	_rand
      0027F7 AD 82            [24] 1722 	mov	r5,dpl
      0027F9 AE 83            [24] 1723 	mov	r6,dph
      0027FB 74 30            [12] 1724 	mov	a,#0x30
      0027FD C0 E0            [24] 1725 	push	acc
      0027FF E4               [12] 1726 	clr	a
      002800 C0 E0            [24] 1727 	push	acc
      002802 8D 82            [24] 1728 	mov	dpl,r5
      002804 8E 83            [24] 1729 	mov	dph,r6
      002806 12 2F A0         [24] 1730 	lcall	__modsint
      002809 AD 82            [24] 1731 	mov	r5,dpl
      00280B AE 83            [24] 1732 	mov	r6,dph
      00280D 15 81            [12] 1733 	dec	sp
      00280F 15 81            [12] 1734 	dec	sp
      002811 D0 00            [24] 1735 	pop	ar0
      002813 D0 01            [24] 1736 	pop	ar1
      002815 A6 05            [24] 1737 	mov	@r0,ar5
      002817 08               [12] 1738 	inc	r0
      002818 A6 06            [24] 1739 	mov	@r0,ar6
      00281A 18               [12] 1740 	dec	r0
                                   1741 ;	walk.c:210: initial.c = rand() % COLS;
      00281B 74 02            [12] 1742 	mov	a,#0x02
      00281D 29               [12] 1743 	add	a,r1
      00281E F8               [12] 1744 	mov	r0,a
      00281F C0 01            [24] 1745 	push	ar1
      002821 C0 00            [24] 1746 	push	ar0
      002823 12 2C 9C         [24] 1747 	lcall	_rand
      002826 AD 82            [24] 1748 	mov	r5,dpl
      002828 AE 83            [24] 1749 	mov	r6,dph
      00282A 74 C0            [12] 1750 	mov	a,#0xc0
      00282C C0 E0            [24] 1751 	push	acc
      00282E E4               [12] 1752 	clr	a
      00282F C0 E0            [24] 1753 	push	acc
      002831 8D 82            [24] 1754 	mov	dpl,r5
      002833 8E 83            [24] 1755 	mov	dph,r6
      002835 12 2F A0         [24] 1756 	lcall	__modsint
      002838 AD 82            [24] 1757 	mov	r5,dpl
      00283A AE 83            [24] 1758 	mov	r6,dph
      00283C 15 81            [12] 1759 	dec	sp
      00283E 15 81            [12] 1760 	dec	sp
      002840 D0 00            [24] 1761 	pop	ar0
      002842 A6 05            [24] 1762 	mov	@r0,ar5
      002844 08               [12] 1763 	inc	r0
      002845 A6 06            [24] 1764 	mov	@r0,ar6
      002847 18               [12] 1765 	dec	r0
                                   1766 ;	walk.c:212: puts("\033[2J\033[?25l");
      002848 90 45 8B         [24] 1767 	mov	dptr,#___str_4
      00284B 75 F0 80         [24] 1768 	mov	b,#0x80
      00284E C0 00            [24] 1769 	push	ar0
      002850 12 2E C5         [24] 1770 	lcall	_puts
      002853 D0 00            [24] 1771 	pop	ar0
      002855 D0 01            [24] 1772 	pop	ar1
                                   1773 ;	walk.c:213: printf("\033[1;1H% 8u% 8d% 8d", N, initial.r, initial.c);
      002857 86 05            [24] 1774 	mov	ar5,@r0
      002859 08               [12] 1775 	inc	r0
      00285A 86 06            [24] 1776 	mov	ar6,@r0
      00285C 18               [12] 1777 	dec	r0
      00285D 87 03            [24] 1778 	mov	ar3,@r1
      00285F 09               [12] 1779 	inc	r1
      002860 87 04            [24] 1780 	mov	ar4,@r1
      002862 19               [12] 1781 	dec	r1
      002863 C0 01            [24] 1782 	push	ar1
      002865 C0 05            [24] 1783 	push	ar5
      002867 C0 06            [24] 1784 	push	ar6
      002869 C0 03            [24] 1785 	push	ar3
      00286B C0 04            [24] 1786 	push	ar4
      00286D E5 10            [12] 1787 	mov	a,_bp
      00286F 24 09            [12] 1788 	add	a,#0x09
      002871 F8               [12] 1789 	mov	r0,a
      002872 E6               [12] 1790 	mov	a,@r0
      002873 C0 E0            [24] 1791 	push	acc
      002875 08               [12] 1792 	inc	r0
      002876 E6               [12] 1793 	mov	a,@r0
      002877 C0 E0            [24] 1794 	push	acc
      002879 74 96            [12] 1795 	mov	a,#___str_5
      00287B C0 E0            [24] 1796 	push	acc
      00287D 74 45            [12] 1797 	mov	a,#(___str_5 >> 8)
      00287F C0 E0            [24] 1798 	push	acc
      002881 74 80            [12] 1799 	mov	a,#0x80
      002883 C0 E0            [24] 1800 	push	acc
      002885 12 2F 4B         [24] 1801 	lcall	_printf
      002888 E5 81            [12] 1802 	mov	a,sp
      00288A 24 F7            [12] 1803 	add	a,#0xf7
      00288C F5 81            [12] 1804 	mov	sp,a
      00288E D0 01            [24] 1805 	pop	ar1
      002890 D0 07            [24] 1806 	pop	ar7
                                   1807 ;	walk.c:215: for (i = 0; i < REG; i++) {
      002892 E5 10            [12] 1808 	mov	a,_bp
      002894 24 0B            [12] 1809 	add	a,#0x0b
      002896 F8               [12] 1810 	mov	r0,a
      002897 E4               [12] 1811 	clr	a
      002898 F6               [12] 1812 	mov	@r0,a
      002899 08               [12] 1813 	inc	r0
      00289A F6               [12] 1814 	mov	@r0,a
      00289B                       1815 00116$:
                                   1816 ;	walk.c:216: neigh[i].r = neigh[REG + i].r * (1 + rand() % 32);
      00289B C0 07            [24] 1817 	push	ar7
      00289D E5 10            [12] 1818 	mov	a,_bp
      00289F 24 0B            [12] 1819 	add	a,#0x0b
      0028A1 F8               [12] 1820 	mov	r0,a
      0028A2 E6               [12] 1821 	mov	a,@r0
      0028A3 25 E0            [12] 1822 	add	a,acc
      0028A5 FB               [12] 1823 	mov	r3,a
      0028A6 08               [12] 1824 	inc	r0
      0028A7 E6               [12] 1825 	mov	a,@r0
      0028A8 33               [12] 1826 	rlc	a
      0028A9 FC               [12] 1827 	mov	r4,a
      0028AA EB               [12] 1828 	mov	a,r3
      0028AB 2B               [12] 1829 	add	a,r3
      0028AC FB               [12] 1830 	mov	r3,a
      0028AD EC               [12] 1831 	mov	a,r4
      0028AE 33               [12] 1832 	rlc	a
      0028AF FC               [12] 1833 	mov	r4,a
      0028B0 E5 10            [12] 1834 	mov	a,_bp
      0028B2 24 03            [12] 1835 	add	a,#0x03
      0028B4 F8               [12] 1836 	mov	r0,a
      0028B5 EB               [12] 1837 	mov	a,r3
      0028B6 24 04            [12] 1838 	add	a,#_neigh
      0028B8 F6               [12] 1839 	mov	@r0,a
      0028B9 EC               [12] 1840 	mov	a,r4
      0028BA 34 FC            [12] 1841 	addc	a,#(_neigh >> 8)
      0028BC 08               [12] 1842 	inc	r0
      0028BD F6               [12] 1843 	mov	@r0,a
      0028BE E5 10            [12] 1844 	mov	a,_bp
      0028C0 24 0B            [12] 1845 	add	a,#0x0b
      0028C2 F8               [12] 1846 	mov	r0,a
      0028C3 86 06            [24] 1847 	mov	ar6,@r0
      0028C5 74 08            [12] 1848 	mov	a,#0x08
      0028C7 2E               [12] 1849 	add	a,r6
      0028C8 FE               [12] 1850 	mov	r6,a
      0028C9 C2 D5            [12] 1851 	clr	F0
      0028CB 75 F0 04         [24] 1852 	mov	b,#0x04
      0028CE EE               [12] 1853 	mov	a,r6
      0028CF 30 E7 04         [24] 1854 	jnb	acc.7,00187$
      0028D2 B2 D5            [12] 1855 	cpl	F0
      0028D4 F4               [12] 1856 	cpl	a
      0028D5 04               [12] 1857 	inc	a
      0028D6                       1858 00187$:
      0028D6 A4               [48] 1859 	mul	ab
      0028D7 30 D5 0A         [24] 1860 	jnb	F0,00188$
      0028DA F4               [12] 1861 	cpl	a
      0028DB 24 01            [12] 1862 	add	a,#0x01
      0028DD C5 F0            [12] 1863 	xch	a,b
      0028DF F4               [12] 1864 	cpl	a
      0028E0 34 00            [12] 1865 	addc	a,#0x00
      0028E2 C5 F0            [12] 1866 	xch	a,b
      0028E4                       1867 00188$:
      0028E4 FE               [12] 1868 	mov	r6,a
      0028E5 AD F0            [24] 1869 	mov	r5,b
      0028E7 24 04            [12] 1870 	add	a,#_neigh
      0028E9 F5 82            [12] 1871 	mov	dpl,a
      0028EB ED               [12] 1872 	mov	a,r5
      0028EC 34 FC            [12] 1873 	addc	a,#(_neigh >> 8)
      0028EE F5 83            [12] 1874 	mov	dph,a
      0028F0 A8 10            [24] 1875 	mov	r0,_bp
      0028F2 08               [12] 1876 	inc	r0
      0028F3 E0               [24] 1877 	movx	a,@dptr
      0028F4 F6               [12] 1878 	mov	@r0,a
      0028F5 A3               [24] 1879 	inc	dptr
      0028F6 E0               [24] 1880 	movx	a,@dptr
      0028F7 08               [12] 1881 	inc	r0
      0028F8 F6               [12] 1882 	mov	@r0,a
      0028F9 C0 06            [24] 1883 	push	ar6
      0028FB C0 05            [24] 1884 	push	ar5
      0028FD C0 04            [24] 1885 	push	ar4
      0028FF C0 03            [24] 1886 	push	ar3
      002901 C0 01            [24] 1887 	push	ar1
      002903 12 2C 9C         [24] 1888 	lcall	_rand
      002906 AA 82            [24] 1889 	mov	r2,dpl
      002908 AF 83            [24] 1890 	mov	r7,dph
      00290A 74 20            [12] 1891 	mov	a,#0x20
      00290C C0 E0            [24] 1892 	push	acc
      00290E E4               [12] 1893 	clr	a
      00290F C0 E0            [24] 1894 	push	acc
      002911 8A 82            [24] 1895 	mov	dpl,r2
      002913 8F 83            [24] 1896 	mov	dph,r7
      002915 12 2F A0         [24] 1897 	lcall	__modsint
      002918 AA 82            [24] 1898 	mov	r2,dpl
      00291A AF 83            [24] 1899 	mov	r7,dph
      00291C 15 81            [12] 1900 	dec	sp
      00291E 15 81            [12] 1901 	dec	sp
      002920 D0 01            [24] 1902 	pop	ar1
      002922 D0 03            [24] 1903 	pop	ar3
      002924 D0 04            [24] 1904 	pop	ar4
      002926 D0 05            [24] 1905 	pop	ar5
      002928 D0 06            [24] 1906 	pop	ar6
      00292A 0A               [12] 1907 	inc	r2
      00292B BA 00 01         [24] 1908 	cjne	r2,#0x00,00189$
      00292E 0F               [12] 1909 	inc	r7
      00292F                       1910 00189$:
      00292F C0 06            [24] 1911 	push	ar6
      002931 C0 05            [24] 1912 	push	ar5
      002933 C0 04            [24] 1913 	push	ar4
      002935 C0 03            [24] 1914 	push	ar3
      002937 C0 01            [24] 1915 	push	ar1
      002939 C0 02            [24] 1916 	push	ar2
      00293B C0 07            [24] 1917 	push	ar7
      00293D A8 10            [24] 1918 	mov	r0,_bp
      00293F 08               [12] 1919 	inc	r0
      002940 86 82            [24] 1920 	mov	dpl,@r0
      002942 08               [12] 1921 	inc	r0
      002943 86 83            [24] 1922 	mov	dph,@r0
      002945 12 2D 94         [24] 1923 	lcall	__mulint
      002948 AA 82            [24] 1924 	mov	r2,dpl
      00294A AF 83            [24] 1925 	mov	r7,dph
      00294C 15 81            [12] 1926 	dec	sp
      00294E 15 81            [12] 1927 	dec	sp
      002950 D0 01            [24] 1928 	pop	ar1
      002952 D0 03            [24] 1929 	pop	ar3
      002954 D0 04            [24] 1930 	pop	ar4
      002956 D0 05            [24] 1931 	pop	ar5
      002958 D0 06            [24] 1932 	pop	ar6
      00295A E5 10            [12] 1933 	mov	a,_bp
      00295C 24 03            [12] 1934 	add	a,#0x03
      00295E F8               [12] 1935 	mov	r0,a
      00295F 86 82            [24] 1936 	mov	dpl,@r0
      002961 08               [12] 1937 	inc	r0
      002962 86 83            [24] 1938 	mov	dph,@r0
      002964 EA               [12] 1939 	mov	a,r2
      002965 F0               [24] 1940 	movx	@dptr,a
      002966 EF               [12] 1941 	mov	a,r7
      002967 A3               [24] 1942 	inc	dptr
      002968 F0               [24] 1943 	movx	@dptr,a
                                   1944 ;	walk.c:217: neigh[i].c = neigh[REG + i].c * (1 + rand() % 32);
      002969 EB               [12] 1945 	mov	a,r3
      00296A 24 04            [12] 1946 	add	a,#_neigh
      00296C FB               [12] 1947 	mov	r3,a
      00296D EC               [12] 1948 	mov	a,r4
      00296E 34 FC            [12] 1949 	addc	a,#(_neigh >> 8)
      002970 FC               [12] 1950 	mov	r4,a
      002971 74 02            [12] 1951 	mov	a,#0x02
      002973 2B               [12] 1952 	add	a,r3
      002974 FA               [12] 1953 	mov	r2,a
      002975 E4               [12] 1954 	clr	a
      002976 3C               [12] 1955 	addc	a,r4
      002977 FF               [12] 1956 	mov	r7,a
      002978 EE               [12] 1957 	mov	a,r6
      002979 24 04            [12] 1958 	add	a,#_neigh
      00297B FE               [12] 1959 	mov	r6,a
      00297C ED               [12] 1960 	mov	a,r5
      00297D 34 FC            [12] 1961 	addc	a,#(_neigh >> 8)
      00297F FD               [12] 1962 	mov	r5,a
      002980 8E 82            [24] 1963 	mov	dpl,r6
      002982 8D 83            [24] 1964 	mov	dph,r5
      002984 A3               [24] 1965 	inc	dptr
      002985 A3               [24] 1966 	inc	dptr
      002986 E5 10            [12] 1967 	mov	a,_bp
      002988 24 03            [12] 1968 	add	a,#0x03
      00298A F8               [12] 1969 	mov	r0,a
      00298B E0               [24] 1970 	movx	a,@dptr
      00298C F6               [12] 1971 	mov	@r0,a
      00298D A3               [24] 1972 	inc	dptr
      00298E E0               [24] 1973 	movx	a,@dptr
      00298F 08               [12] 1974 	inc	r0
      002990 F6               [12] 1975 	mov	@r0,a
      002991 C0 07            [24] 1976 	push	ar7
      002993 C0 04            [24] 1977 	push	ar4
      002995 C0 03            [24] 1978 	push	ar3
      002997 C0 02            [24] 1979 	push	ar2
      002999 C0 01            [24] 1980 	push	ar1
      00299B 12 2C 9C         [24] 1981 	lcall	_rand
      00299E AD 82            [24] 1982 	mov	r5,dpl
      0029A0 AE 83            [24] 1983 	mov	r6,dph
      0029A2 74 20            [12] 1984 	mov	a,#0x20
      0029A4 C0 E0            [24] 1985 	push	acc
      0029A6 E4               [12] 1986 	clr	a
      0029A7 C0 E0            [24] 1987 	push	acc
      0029A9 8D 82            [24] 1988 	mov	dpl,r5
      0029AB 8E 83            [24] 1989 	mov	dph,r6
      0029AD 12 2F A0         [24] 1990 	lcall	__modsint
      0029B0 AD 82            [24] 1991 	mov	r5,dpl
      0029B2 AE 83            [24] 1992 	mov	r6,dph
      0029B4 15 81            [12] 1993 	dec	sp
      0029B6 15 81            [12] 1994 	dec	sp
      0029B8 D0 01            [24] 1995 	pop	ar1
      0029BA D0 02            [24] 1996 	pop	ar2
      0029BC D0 03            [24] 1997 	pop	ar3
      0029BE D0 04            [24] 1998 	pop	ar4
      0029C0 D0 07            [24] 1999 	pop	ar7
      0029C2 0D               [12] 2000 	inc	r5
      0029C3 BD 00 01         [24] 2001 	cjne	r5,#0x00,00190$
      0029C6 0E               [12] 2002 	inc	r6
      0029C7                       2003 00190$:
      0029C7 C0 07            [24] 2004 	push	ar7
      0029C9 C0 04            [24] 2005 	push	ar4
      0029CB C0 03            [24] 2006 	push	ar3
      0029CD C0 02            [24] 2007 	push	ar2
      0029CF C0 01            [24] 2008 	push	ar1
      0029D1 C0 05            [24] 2009 	push	ar5
      0029D3 C0 06            [24] 2010 	push	ar6
      0029D5 E5 10            [12] 2011 	mov	a,_bp
      0029D7 24 03            [12] 2012 	add	a,#0x03
      0029D9 F8               [12] 2013 	mov	r0,a
      0029DA 86 82            [24] 2014 	mov	dpl,@r0
      0029DC 08               [12] 2015 	inc	r0
      0029DD 86 83            [24] 2016 	mov	dph,@r0
      0029DF 12 2D 94         [24] 2017 	lcall	__mulint
      0029E2 AD 82            [24] 2018 	mov	r5,dpl
      0029E4 AE 83            [24] 2019 	mov	r6,dph
      0029E6 15 81            [12] 2020 	dec	sp
      0029E8 15 81            [12] 2021 	dec	sp
      0029EA D0 01            [24] 2022 	pop	ar1
      0029EC D0 02            [24] 2023 	pop	ar2
      0029EE D0 03            [24] 2024 	pop	ar3
      0029F0 D0 04            [24] 2025 	pop	ar4
      0029F2 D0 07            [24] 2026 	pop	ar7
      0029F4 8A 82            [24] 2027 	mov	dpl,r2
      0029F6 8F 83            [24] 2028 	mov	dph,r7
      0029F8 ED               [12] 2029 	mov	a,r5
      0029F9 F0               [24] 2030 	movx	@dptr,a
      0029FA EE               [12] 2031 	mov	a,r6
      0029FB A3               [24] 2032 	inc	dptr
      0029FC F0               [24] 2033 	movx	@dptr,a
                                   2034 ;	walk.c:218: printf("% 8d% 8d", neigh[i].r, neigh[i].c);
      0029FD 8B 82            [24] 2035 	mov	dpl,r3
      0029FF 8C 83            [24] 2036 	mov	dph,r4
      002A01 E0               [24] 2037 	movx	a,@dptr
      002A02 FB               [12] 2038 	mov	r3,a
      002A03 A3               [24] 2039 	inc	dptr
      002A04 E0               [24] 2040 	movx	a,@dptr
      002A05 FC               [12] 2041 	mov	r4,a
      002A06 C0 07            [24] 2042 	push	ar7
      002A08 C0 01            [24] 2043 	push	ar1
      002A0A C0 05            [24] 2044 	push	ar5
      002A0C C0 06            [24] 2045 	push	ar6
      002A0E C0 03            [24] 2046 	push	ar3
      002A10 C0 04            [24] 2047 	push	ar4
      002A12 74 A9            [12] 2048 	mov	a,#___str_6
      002A14 C0 E0            [24] 2049 	push	acc
      002A16 74 45            [12] 2050 	mov	a,#(___str_6 >> 8)
      002A18 C0 E0            [24] 2051 	push	acc
      002A1A 74 80            [12] 2052 	mov	a,#0x80
      002A1C C0 E0            [24] 2053 	push	acc
      002A1E 12 2F 4B         [24] 2054 	lcall	_printf
      002A21 E5 81            [12] 2055 	mov	a,sp
      002A23 24 F9            [12] 2056 	add	a,#0xf9
      002A25 F5 81            [12] 2057 	mov	sp,a
      002A27 D0 01            [24] 2058 	pop	ar1
      002A29 D0 07            [24] 2059 	pop	ar7
                                   2060 ;	walk.c:215: for (i = 0; i < REG; i++) {
      002A2B E5 10            [12] 2061 	mov	a,_bp
      002A2D 24 0B            [12] 2062 	add	a,#0x0b
      002A2F F8               [12] 2063 	mov	r0,a
      002A30 06               [12] 2064 	inc	@r0
      002A31 B6 00 02         [24] 2065 	cjne	@r0,#0x00,00191$
      002A34 08               [12] 2066 	inc	r0
      002A35 06               [12] 2067 	inc	@r0
      002A36                       2068 00191$:
      002A36 E5 10            [12] 2069 	mov	a,_bp
      002A38 24 0B            [12] 2070 	add	a,#0x0b
      002A3A F8               [12] 2071 	mov	r0,a
      002A3B 86 05            [24] 2072 	mov	ar5,@r0
      002A3D 08               [12] 2073 	inc	r0
      002A3E 86 06            [24] 2074 	mov	ar6,@r0
      002A40 C3               [12] 2075 	clr	c
      002A41 ED               [12] 2076 	mov	a,r5
      002A42 94 08            [12] 2077 	subb	a,#0x08
      002A44 EE               [12] 2078 	mov	a,r6
      002A45 94 00            [12] 2079 	subb	a,#0x00
      002A47 D0 07            [24] 2080 	pop	ar7
      002A49 50 03            [24] 2081 	jnc	00192$
      002A4B 02 28 9B         [24] 2082 	ljmp	00116$
      002A4E                       2083 00192$:
                                   2084 ;	walk.c:221: OE76 = OE76_0;
      002A4E 78 12            [12] 2085 	mov	r0,#_OE76
      002A50 76 3F            [12] 2086 	mov	@r0,#0x3f
                                   2087 ;	walk.c:222: setOE(OE76_NC);
      002A52 75 82 00         [24] 2088 	mov	dpl,#0x00
      002A55 C0 07            [24] 2089 	push	ar7
      002A57 C0 01            [24] 2090 	push	ar1
      002A59 12 20 BE         [24] 2091 	lcall	_setOE
      002A5C D0 01            [24] 2092 	pop	ar1
      002A5E D0 07            [24] 2093 	pop	ar7
                                   2094 ;	walk.c:224: walk(&initial);
      002A60 8F 04            [24] 2095 	mov	ar4,r7
      002A62 7D 00            [12] 2096 	mov	r5,#0x00
      002A64 7E 40            [12] 2097 	mov	r6,#0x40
      002A66 8C 82            [24] 2098 	mov	dpl,r4
      002A68 8D 83            [24] 2099 	mov	dph,r5
      002A6A 8E F0            [24] 2100 	mov	b,r6
      002A6C C0 07            [24] 2101 	push	ar7
      002A6E C0 01            [24] 2102 	push	ar1
      002A70 12 23 97         [24] 2103 	lcall	_walk
      002A73 D0 01            [24] 2104 	pop	ar1
      002A75 D0 07            [24] 2105 	pop	ar7
                                   2106 ;	walk.c:226: for (i = 0; i < ROWS; i++)
      002A77 E5 10            [12] 2107 	mov	a,_bp
      002A79 24 0B            [12] 2108 	add	a,#0x0b
      002A7B F8               [12] 2109 	mov	r0,a
      002A7C E4               [12] 2110 	clr	a
      002A7D F6               [12] 2111 	mov	@r0,a
      002A7E 08               [12] 2112 	inc	r0
      002A7F F6               [12] 2113 	mov	@r0,a
      002A80 7B 00            [12] 2114 	mov	r3,#0x00
      002A82 7C 00            [12] 2115 	mov	r4,#0x00
                                   2116 ;	walk.c:227: for (j = 0; j < COLS; j++)
      002A84                       2117 00132$:
      002A84 E5 10            [12] 2118 	mov	a,_bp
      002A86 24 03            [12] 2119 	add	a,#0x03
      002A88 F8               [12] 2120 	mov	r0,a
      002A89 EB               [12] 2121 	mov	a,r3
      002A8A 24 00            [12] 2122 	add	a,#_g
      002A8C F6               [12] 2123 	mov	@r0,a
      002A8D EC               [12] 2124 	mov	a,r4
      002A8E 34 48            [12] 2125 	addc	a,#(_g >> 8)
      002A90 08               [12] 2126 	inc	r0
      002A91 F6               [12] 2127 	mov	@r0,a
      002A92 7A 00            [12] 2128 	mov	r2,#0x00
      002A94 7E 00            [12] 2129 	mov	r6,#0x00
      002A96                       2130 00118$:
                                   2131 ;	walk.c:228: if (g[i][j] != 0xaau) bang();
      002A96 E5 10            [12] 2132 	mov	a,_bp
      002A98 24 03            [12] 2133 	add	a,#0x03
      002A9A F8               [12] 2134 	mov	r0,a
      002A9B EA               [12] 2135 	mov	a,r2
      002A9C 26               [12] 2136 	add	a,@r0
      002A9D F5 82            [12] 2137 	mov	dpl,a
      002A9F EE               [12] 2138 	mov	a,r6
      002AA0 08               [12] 2139 	inc	r0
      002AA1 36               [12] 2140 	addc	a,@r0
      002AA2 F5 83            [12] 2141 	mov	dph,a
      002AA4 E0               [24] 2142 	movx	a,@dptr
      002AA5 FD               [12] 2143 	mov	r5,a
      002AA6 BD AA 02         [24] 2144 	cjne	r5,#0xaa,00193$
      002AA9 80 1B            [24] 2145 	sjmp	00119$
      002AAB                       2146 00193$:
      002AAB C0 07            [24] 2147 	push	ar7
      002AAD C0 06            [24] 2148 	push	ar6
      002AAF C0 04            [24] 2149 	push	ar4
      002AB1 C0 03            [24] 2150 	push	ar3
      002AB3 C0 02            [24] 2151 	push	ar2
      002AB5 C0 01            [24] 2152 	push	ar1
      002AB7 12 20 B1         [24] 2153 	lcall	_bang
      002ABA D0 01            [24] 2154 	pop	ar1
      002ABC D0 02            [24] 2155 	pop	ar2
      002ABE D0 03            [24] 2156 	pop	ar3
      002AC0 D0 04            [24] 2157 	pop	ar4
      002AC2 D0 06            [24] 2158 	pop	ar6
      002AC4 D0 07            [24] 2159 	pop	ar7
      002AC6                       2160 00119$:
                                   2161 ;	walk.c:227: for (j = 0; j < COLS; j++)
      002AC6 0A               [12] 2162 	inc	r2
      002AC7 BA 00 01         [24] 2163 	cjne	r2,#0x00,00194$
      002ACA 0E               [12] 2164 	inc	r6
      002ACB                       2165 00194$:
      002ACB C3               [12] 2166 	clr	c
      002ACC EA               [12] 2167 	mov	a,r2
      002ACD 94 C0            [12] 2168 	subb	a,#0xc0
      002ACF EE               [12] 2169 	mov	a,r6
      002AD0 64 80            [12] 2170 	xrl	a,#0x80
      002AD2 94 80            [12] 2171 	subb	a,#0x80
      002AD4 40 C0            [24] 2172 	jc	00118$
                                   2173 ;	walk.c:226: for (i = 0; i < ROWS; i++)
      002AD6 74 C0            [12] 2174 	mov	a,#0xc0
      002AD8 2B               [12] 2175 	add	a,r3
      002AD9 FB               [12] 2176 	mov	r3,a
      002ADA E4               [12] 2177 	clr	a
      002ADB 3C               [12] 2178 	addc	a,r4
      002ADC FC               [12] 2179 	mov	r4,a
      002ADD E5 10            [12] 2180 	mov	a,_bp
      002ADF 24 0B            [12] 2181 	add	a,#0x0b
      002AE1 F8               [12] 2182 	mov	r0,a
      002AE2 06               [12] 2183 	inc	@r0
      002AE3 B6 00 02         [24] 2184 	cjne	@r0,#0x00,00196$
      002AE6 08               [12] 2185 	inc	r0
      002AE7 06               [12] 2186 	inc	@r0
      002AE8                       2187 00196$:
      002AE8 E5 10            [12] 2188 	mov	a,_bp
      002AEA 24 0B            [12] 2189 	add	a,#0x0b
      002AEC F8               [12] 2190 	mov	r0,a
      002AED C3               [12] 2191 	clr	c
      002AEE E6               [12] 2192 	mov	a,@r0
      002AEF 94 30            [12] 2193 	subb	a,#0x30
      002AF1 08               [12] 2194 	inc	r0
      002AF2 E6               [12] 2195 	mov	a,@r0
      002AF3 64 80            [12] 2196 	xrl	a,#0x80
      002AF5 94 80            [12] 2197 	subb	a,#0x80
      002AF7 40 8B            [24] 2198 	jc	00132$
                                   2199 ;	walk.c:230: N++;
      002AF9 E5 10            [12] 2200 	mov	a,_bp
      002AFB 24 09            [12] 2201 	add	a,#0x09
      002AFD F8               [12] 2202 	mov	r0,a
      002AFE 06               [12] 2203 	inc	@r0
      002AFF B6 00 02         [24] 2204 	cjne	@r0,#0x00,00198$
      002B02 08               [12] 2205 	inc	r0
      002B03 06               [12] 2206 	inc	@r0
      002B04                       2207 00198$:
      002B04 02 27 80         [24] 2208 	ljmp	00108$
      002B07                       2209 00110$:
                                   2210 ;	walk.c:233: EA = 0;
                                   2211 ;	assignBit
      002B07 C2 AF            [12] 2212 	clr	_EA
                                   2213 ;	walk.c:235: puts("\033[2J\033[?25h");
      002B09 90 45 B2         [24] 2214 	mov	dptr,#___str_7
      002B0C 75 F0 80         [24] 2215 	mov	b,#0x80
      002B0F 12 2E C5         [24] 2216 	lcall	_puts
                                   2217 ;	walk.c:17: PCON |= 2;
      002B12 43 87 02         [24] 2218 	orl	_PCON,#0x02
                                   2219 ;	walk.c:239: return;
                                   2220 ;	walk.c:240: }
      002B15 85 10 81         [24] 2221 	mov	sp,_bp
      002B18 D0 10            [24] 2222 	pop	_bp
      002B1A 22               [24] 2223 	ret
                                   2224 ;------------------------------------------------------------
                                   2225 ;Allocation info for local variables in function 'qinit'
                                   2226 ;------------------------------------------------------------
                                   2227 ;	walk.c:242: static void qinit(void) {
                                   2228 ;	-----------------------------------------
                                   2229 ;	 function qinit
                                   2230 ;	-----------------------------------------
      002B1B                       2231 _qinit:
                                   2232 ;	walk.c:243: hp = tp = 0;
      002B1B 90 FC 02         [24] 2233 	mov	dptr,#_tp
      002B1E E4               [12] 2234 	clr	a
      002B1F F0               [24] 2235 	movx	@dptr,a
      002B20 A3               [24] 2236 	inc	dptr
      002B21 F0               [24] 2237 	movx	@dptr,a
      002B22 90 FC 00         [24] 2238 	mov	dptr,#_hp
      002B25 F0               [24] 2239 	movx	@dptr,a
      002B26 A3               [24] 2240 	inc	dptr
      002B27 F0               [24] 2241 	movx	@dptr,a
                                   2242 ;	walk.c:244: return;
                                   2243 ;	walk.c:245: }
      002B28 22               [24] 2244 	ret
                                   2245 ;------------------------------------------------------------
                                   2246 ;Allocation info for local variables in function 'qadd'
                                   2247 ;------------------------------------------------------------
                                   2248 ;t                         Allocated to registers r7 r5 r6 
                                   2249 ;sloc0                     Allocated to stack - _bp +1
                                   2250 ;sloc1                     Allocated to stack - _bp +3
                                   2251 ;sloc2                     Allocated to stack - _bp +5
                                   2252 ;sloc3                     Allocated to stack - _bp +10
                                   2253 ;------------------------------------------------------------
                                   2254 ;	walk.c:247: static uint8_t qadd(struct node *t) {
                                   2255 ;	-----------------------------------------
                                   2256 ;	 function qadd
                                   2257 ;	-----------------------------------------
      002B29                       2258 _qadd:
      002B29 C0 10            [24] 2259 	push	_bp
      002B2B E5 81            [12] 2260 	mov	a,sp
      002B2D F5 10            [12] 2261 	mov	_bp,a
      002B2F 24 06            [12] 2262 	add	a,#0x06
      002B31 F5 81            [12] 2263 	mov	sp,a
      002B33 AF 82            [24] 2264 	mov	r7,dpl
      002B35 AD 83            [24] 2265 	mov	r5,dph
      002B37 AE F0            [24] 2266 	mov	r6,b
                                   2267 ;	walk.c:248: if (((hp + 1) % QMAX) == tp) return 0u;
      002B39 90 FC 00         [24] 2268 	mov	dptr,#_hp
      002B3C E0               [24] 2269 	movx	a,@dptr
      002B3D FB               [12] 2270 	mov	r3,a
      002B3E A3               [24] 2271 	inc	dptr
      002B3F E0               [24] 2272 	movx	a,@dptr
      002B40 FC               [12] 2273 	mov	r4,a
      002B41 A8 10            [24] 2274 	mov	r0,_bp
      002B43 08               [12] 2275 	inc	r0
      002B44 74 01            [12] 2276 	mov	a,#0x01
      002B46 2B               [12] 2277 	add	a,r3
      002B47 F6               [12] 2278 	mov	@r0,a
      002B48 E4               [12] 2279 	clr	a
      002B49 3C               [12] 2280 	addc	a,r4
      002B4A 08               [12] 2281 	inc	r0
      002B4B F6               [12] 2282 	mov	@r0,a
      002B4C C0 07            [24] 2283 	push	ar7
      002B4E C0 06            [24] 2284 	push	ar6
      002B50 C0 05            [24] 2285 	push	ar5
      002B52 C0 04            [24] 2286 	push	ar4
      002B54 C0 03            [24] 2287 	push	ar3
      002B56 E4               [12] 2288 	clr	a
      002B57 C0 E0            [24] 2289 	push	acc
      002B59 74 24            [12] 2290 	mov	a,#0x24
      002B5B C0 E0            [24] 2291 	push	acc
      002B5D A8 10            [24] 2292 	mov	r0,_bp
      002B5F 08               [12] 2293 	inc	r0
      002B60 86 82            [24] 2294 	mov	dpl,@r0
      002B62 08               [12] 2295 	inc	r0
      002B63 86 83            [24] 2296 	mov	dph,@r0
      002B65 12 2F A0         [24] 2297 	lcall	__modsint
      002B68 A8 10            [24] 2298 	mov	r0,_bp
      002B6A 08               [12] 2299 	inc	r0
      002B6B 08               [12] 2300 	inc	r0
      002B6C 08               [12] 2301 	inc	r0
      002B6D A6 82            [24] 2302 	mov	@r0,dpl
      002B6F 08               [12] 2303 	inc	r0
      002B70 A6 83            [24] 2304 	mov	@r0,dph
      002B72 15 81            [12] 2305 	dec	sp
      002B74 15 81            [12] 2306 	dec	sp
      002B76 D0 03            [24] 2307 	pop	ar3
      002B78 D0 04            [24] 2308 	pop	ar4
      002B7A D0 05            [24] 2309 	pop	ar5
      002B7C D0 06            [24] 2310 	pop	ar6
      002B7E D0 07            [24] 2311 	pop	ar7
      002B80 90 FC 02         [24] 2312 	mov	dptr,#_tp
      002B83 E5 10            [12] 2313 	mov	a,_bp
      002B85 24 05            [12] 2314 	add	a,#0x05
      002B87 F8               [12] 2315 	mov	r0,a
      002B88 E0               [24] 2316 	movx	a,@dptr
      002B89 F6               [12] 2317 	mov	@r0,a
      002B8A A3               [24] 2318 	inc	dptr
      002B8B E0               [24] 2319 	movx	a,@dptr
      002B8C 08               [12] 2320 	inc	r0
      002B8D F6               [12] 2321 	mov	@r0,a
      002B8E E5 10            [12] 2322 	mov	a,_bp
      002B90 24 03            [12] 2323 	add	a,#0x03
      002B92 F8               [12] 2324 	mov	r0,a
      002B93 E5 10            [12] 2325 	mov	a,_bp
      002B95 24 05            [12] 2326 	add	a,#0x05
      002B97 F9               [12] 2327 	mov	r1,a
      002B98 86 F0            [24] 2328 	mov	b,@r0
      002B9A E7               [12] 2329 	mov	a,@r1
      002B9B B5 F0 0A         [24] 2330 	cjne	a,b,00109$
      002B9E 08               [12] 2331 	inc	r0
      002B9F 86 F0            [24] 2332 	mov	b,@r0
      002BA1 09               [12] 2333 	inc	r1
      002BA2 E7               [12] 2334 	mov	a,@r1
      002BA3 B5 F0 02         [24] 2335 	cjne	a,b,00109$
      002BA6 80 02            [24] 2336 	sjmp	00110$
      002BA8                       2337 00109$:
      002BA8 80 05            [24] 2338 	sjmp	00102$
      002BAA                       2339 00110$:
      002BAA 75 82 00         [24] 2340 	mov	dpl,#0x00
      002BAD 80 64            [24] 2341 	sjmp	00103$
      002BAF                       2342 00102$:
                                   2343 ;	walk.c:249: queue[hp] = *t;
      002BAF 8F 02            [24] 2344 	mov	ar2,r7
      002BB1 8E 07            [24] 2345 	mov	ar7,r6
      002BB3 EB               [12] 2346 	mov	a,r3
      002BB4 2B               [12] 2347 	add	a,r3
      002BB5 FB               [12] 2348 	mov	r3,a
      002BB6 EC               [12] 2349 	mov	a,r4
      002BB7 33               [12] 2350 	rlc	a
      002BB8 FC               [12] 2351 	mov	r4,a
      002BB9 EB               [12] 2352 	mov	a,r3
      002BBA 2B               [12] 2353 	add	a,r3
      002BBB FB               [12] 2354 	mov	r3,a
      002BBC EC               [12] 2355 	mov	a,r4
      002BBD 33               [12] 2356 	rlc	a
      002BBE FC               [12] 2357 	mov	r4,a
      002BBF EB               [12] 2358 	mov	a,r3
      002BC0 24 00            [12] 2359 	add	a,#_queue
      002BC2 FB               [12] 2360 	mov	r3,a
      002BC3 EC               [12] 2361 	mov	a,r4
      002BC4 34 6C            [12] 2362 	addc	a,#(_queue >> 8)
      002BC6 FC               [12] 2363 	mov	r4,a
      002BC7 7E 00            [12] 2364 	mov	r6,#0x00
      002BC9 74 04            [12] 2365 	mov	a,#0x04
      002BCB C0 E0            [24] 2366 	push	acc
      002BCD E4               [12] 2367 	clr	a
      002BCE C0 E0            [24] 2368 	push	acc
      002BD0 C0 02            [24] 2369 	push	ar2
      002BD2 C0 05            [24] 2370 	push	ar5
      002BD4 C0 07            [24] 2371 	push	ar7
      002BD6 8B 82            [24] 2372 	mov	dpl,r3
      002BD8 8C 83            [24] 2373 	mov	dph,r4
      002BDA 8E F0            [24] 2374 	mov	b,r6
      002BDC 12 2E 32         [24] 2375 	lcall	___memcpy
      002BDF E5 81            [12] 2376 	mov	a,sp
      002BE1 24 FB            [12] 2377 	add	a,#0xfb
      002BE3 F5 81            [12] 2378 	mov	sp,a
                                   2379 ;	walk.c:250: hp = (hp + 1) % QMAX;
      002BE5 90 FC 00         [24] 2380 	mov	dptr,#_hp
      002BE8 E0               [24] 2381 	movx	a,@dptr
      002BE9 FD               [12] 2382 	mov	r5,a
      002BEA A3               [24] 2383 	inc	dptr
      002BEB E0               [24] 2384 	movx	a,@dptr
      002BEC FE               [12] 2385 	mov	r6,a
      002BED 0D               [12] 2386 	inc	r5
      002BEE BD 00 01         [24] 2387 	cjne	r5,#0x00,00111$
      002BF1 0E               [12] 2388 	inc	r6
      002BF2                       2389 00111$:
      002BF2 E4               [12] 2390 	clr	a
      002BF3 C0 E0            [24] 2391 	push	acc
      002BF5 74 24            [12] 2392 	mov	a,#0x24
      002BF7 C0 E0            [24] 2393 	push	acc
      002BF9 8D 82            [24] 2394 	mov	dpl,r5
      002BFB 8E 83            [24] 2395 	mov	dph,r6
      002BFD 12 2F A0         [24] 2396 	lcall	__modsint
      002C00 AD 82            [24] 2397 	mov	r5,dpl
      002C02 AE 83            [24] 2398 	mov	r6,dph
      002C04 15 81            [12] 2399 	dec	sp
      002C06 15 81            [12] 2400 	dec	sp
      002C08 90 FC 00         [24] 2401 	mov	dptr,#_hp
      002C0B ED               [12] 2402 	mov	a,r5
      002C0C F0               [24] 2403 	movx	@dptr,a
      002C0D EE               [12] 2404 	mov	a,r6
      002C0E A3               [24] 2405 	inc	dptr
      002C0F F0               [24] 2406 	movx	@dptr,a
                                   2407 ;	walk.c:251: return 1u;
      002C10 75 82 01         [24] 2408 	mov	dpl,#0x01
      002C13                       2409 00103$:
                                   2410 ;	walk.c:252: }
      002C13 85 10 81         [24] 2411 	mov	sp,_bp
      002C16 D0 10            [24] 2412 	pop	_bp
      002C18 22               [24] 2413 	ret
                                   2414 ;------------------------------------------------------------
                                   2415 ;Allocation info for local variables in function 'qget'
                                   2416 ;------------------------------------------------------------
                                   2417 ;t                         Allocated to registers r5 r6 r7 
                                   2418 ;------------------------------------------------------------
                                   2419 ;	walk.c:254: static uint8_t qget(struct node *t) {
                                   2420 ;	-----------------------------------------
                                   2421 ;	 function qget
                                   2422 ;	-----------------------------------------
      002C19                       2423 _qget:
      002C19 AD 82            [24] 2424 	mov	r5,dpl
      002C1B AE 83            [24] 2425 	mov	r6,dph
      002C1D AF F0            [24] 2426 	mov	r7,b
                                   2427 ;	walk.c:255: if (hp == tp) return 0u;
      002C1F 90 FC 00         [24] 2428 	mov	dptr,#_hp
      002C22 E0               [24] 2429 	movx	a,@dptr
      002C23 FB               [12] 2430 	mov	r3,a
      002C24 A3               [24] 2431 	inc	dptr
      002C25 E0               [24] 2432 	movx	a,@dptr
      002C26 FC               [12] 2433 	mov	r4,a
      002C27 90 FC 02         [24] 2434 	mov	dptr,#_tp
      002C2A E0               [24] 2435 	movx	a,@dptr
      002C2B F9               [12] 2436 	mov	r1,a
      002C2C A3               [24] 2437 	inc	dptr
      002C2D E0               [24] 2438 	movx	a,@dptr
      002C2E FA               [12] 2439 	mov	r2,a
      002C2F EB               [12] 2440 	mov	a,r3
      002C30 B5 01 08         [24] 2441 	cjne	a,ar1,00102$
      002C33 EC               [12] 2442 	mov	a,r4
      002C34 B5 02 04         [24] 2443 	cjne	a,ar2,00102$
      002C37 75 82 00         [24] 2444 	mov	dpl,#0x00
      002C3A 22               [24] 2445 	ret
      002C3B                       2446 00102$:
                                   2447 ;	walk.c:256: *t = queue[tp];
      002C3B E9               [12] 2448 	mov	a,r1
      002C3C 29               [12] 2449 	add	a,r1
      002C3D F9               [12] 2450 	mov	r1,a
      002C3E EA               [12] 2451 	mov	a,r2
      002C3F 33               [12] 2452 	rlc	a
      002C40 FA               [12] 2453 	mov	r2,a
      002C41 E9               [12] 2454 	mov	a,r1
      002C42 29               [12] 2455 	add	a,r1
      002C43 F9               [12] 2456 	mov	r1,a
      002C44 EA               [12] 2457 	mov	a,r2
      002C45 33               [12] 2458 	rlc	a
      002C46 FA               [12] 2459 	mov	r2,a
      002C47 E9               [12] 2460 	mov	a,r1
      002C48 24 00            [12] 2461 	add	a,#_queue
      002C4A F9               [12] 2462 	mov	r1,a
      002C4B EA               [12] 2463 	mov	a,r2
      002C4C 34 6C            [12] 2464 	addc	a,#(_queue >> 8)
      002C4E FA               [12] 2465 	mov	r2,a
      002C4F 7C 00            [12] 2466 	mov	r4,#0x00
      002C51 74 04            [12] 2467 	mov	a,#0x04
      002C53 C0 E0            [24] 2468 	push	acc
      002C55 E4               [12] 2469 	clr	a
      002C56 C0 E0            [24] 2470 	push	acc
      002C58 C0 01            [24] 2471 	push	ar1
      002C5A C0 02            [24] 2472 	push	ar2
      002C5C C0 04            [24] 2473 	push	ar4
      002C5E 8D 82            [24] 2474 	mov	dpl,r5
      002C60 8E 83            [24] 2475 	mov	dph,r6
      002C62 8F F0            [24] 2476 	mov	b,r7
      002C64 12 2E 32         [24] 2477 	lcall	___memcpy
      002C67 E5 81            [12] 2478 	mov	a,sp
      002C69 24 FB            [12] 2479 	add	a,#0xfb
      002C6B F5 81            [12] 2480 	mov	sp,a
                                   2481 ;	walk.c:257: tp = (tp + 1) % QMAX;
      002C6D 90 FC 02         [24] 2482 	mov	dptr,#_tp
      002C70 E0               [24] 2483 	movx	a,@dptr
      002C71 FE               [12] 2484 	mov	r6,a
      002C72 A3               [24] 2485 	inc	dptr
      002C73 E0               [24] 2486 	movx	a,@dptr
      002C74 FF               [12] 2487 	mov	r7,a
      002C75 0E               [12] 2488 	inc	r6
      002C76 BE 00 01         [24] 2489 	cjne	r6,#0x00,00111$
      002C79 0F               [12] 2490 	inc	r7
      002C7A                       2491 00111$:
      002C7A E4               [12] 2492 	clr	a
      002C7B C0 E0            [24] 2493 	push	acc
      002C7D 74 24            [12] 2494 	mov	a,#0x24
      002C7F C0 E0            [24] 2495 	push	acc
      002C81 8E 82            [24] 2496 	mov	dpl,r6
      002C83 8F 83            [24] 2497 	mov	dph,r7
      002C85 12 2F A0         [24] 2498 	lcall	__modsint
      002C88 AE 82            [24] 2499 	mov	r6,dpl
      002C8A AF 83            [24] 2500 	mov	r7,dph
      002C8C 15 81            [12] 2501 	dec	sp
      002C8E 15 81            [12] 2502 	dec	sp
      002C90 90 FC 02         [24] 2503 	mov	dptr,#_tp
      002C93 EE               [12] 2504 	mov	a,r6
      002C94 F0               [24] 2505 	movx	@dptr,a
      002C95 EF               [12] 2506 	mov	a,r7
      002C96 A3               [24] 2507 	inc	dptr
      002C97 F0               [24] 2508 	movx	@dptr,a
                                   2509 ;	walk.c:258: return 1u;
      002C98 75 82 01         [24] 2510 	mov	dpl,#0x01
                                   2511 ;	walk.c:259: }
      002C9B 22               [24] 2512 	ret
                                   2513 	.area CSEG    (CODE)
                                   2514 	.area CONST   (CODE)
                                   2515 	.area CONST   (CODE)
      004553                       2516 ___str_0:
      004553 4D 65 6D 6F 72 79 20  2517 	.ascii "Memory error"
             65 72 72 6F 72
      00455F 00                    2518 	.db 0x00
                                   2519 	.area CSEG    (CODE)
                                   2520 	.area CONST   (CODE)
      004560                       2521 ___str_1:
      004560 1B                    2522 	.db 0x1b
      004561 5B 32 3B 31 48 25 20  2523 	.ascii "[2;1H% 8d% 8d% 8d% 8d"
             38 64 25 20 38 64 25
             20 38 64 25 20 38 64
      004576 00                    2524 	.db 0x00
                                   2525 	.area CSEG    (CODE)
                                   2526 	.area CONST   (CODE)
      004577                       2527 ___str_2:
      004577 1B                    2528 	.db 0x1b
      004578 5B 25 64 3B 25 64 48  2529 	.ascii "[%d;%dH."
             2E
      004580 00                    2530 	.db 0x00
                                   2531 	.area CSEG    (CODE)
                                   2532 	.area CONST   (CODE)
      004581                       2533 ___str_3:
      004581 1B                    2534 	.db 0x1b
      004582 5B 25 64 3B 25 64 48  2535 	.ascii "[%d;%dHo"
             6F
      00458A 00                    2536 	.db 0x00
                                   2537 	.area CSEG    (CODE)
                                   2538 	.area CONST   (CODE)
      00458B                       2539 ___str_4:
      00458B 1B                    2540 	.db 0x1b
      00458C 5B 32 4A              2541 	.ascii "[2J"
      00458F 1B                    2542 	.db 0x1b
      004590 5B 3F 32 35 6C        2543 	.ascii "[?25l"
      004595 00                    2544 	.db 0x00
                                   2545 	.area CSEG    (CODE)
                                   2546 	.area CONST   (CODE)
      004596                       2547 ___str_5:
      004596 1B                    2548 	.db 0x1b
      004597 5B 31 3B 31 48 25 20  2549 	.ascii "[1;1H% 8u% 8d% 8d"
             38 75 25 20 38 64 25
             20 38 64
      0045A8 00                    2550 	.db 0x00
                                   2551 	.area CSEG    (CODE)
                                   2552 	.area CONST   (CODE)
      0045A9                       2553 ___str_6:
      0045A9 25 20 38 64 25 20 38  2554 	.ascii "% 8d% 8d"
             64
      0045B1 00                    2555 	.db 0x00
                                   2556 	.area CSEG    (CODE)
                                   2557 	.area CONST   (CODE)
      0045B2                       2558 ___str_7:
      0045B2 1B                    2559 	.db 0x1b
      0045B3 5B 32 4A              2560 	.ascii "[2J"
      0045B6 1B                    2561 	.db 0x1b
      0045B7 5B 3F 32 35 68        2562 	.ascii "[?25h"
      0045BC 00                    2563 	.db 0x00
                                   2564 	.area CSEG    (CODE)
                                   2565 	.area XINIT   (CODE)
      0045C8                       2566 __xinit__neigh:
      0045C8 FF FF                 2567 	.byte #0xff, #0xff	; -1
      0045CA 01 00                 2568 	.byte #0x01, #0x00	;  1
      0045CC FF FF                 2569 	.byte #0xff, #0xff	; -1
      0045CE FF FF                 2570 	.byte #0xff, #0xff	; -1
      0045D0 01 00                 2571 	.byte #0x01, #0x00	;  1
      0045D2 FF FF                 2572 	.byte #0xff, #0xff	; -1
      0045D4 01 00                 2573 	.byte #0x01, #0x00	;  1
      0045D6 01 00                 2574 	.byte #0x01, #0x00	;  1
      0045D8 FF FF                 2575 	.byte #0xff, #0xff	; -1
      0045DA 00 00                 2576 	.byte #0x00, #0x00	;  0
      0045DC 00 00                 2577 	.byte #0x00, #0x00	;  0
      0045DE FF FF                 2578 	.byte #0xff, #0xff	; -1
      0045E0 01 00                 2579 	.byte #0x01, #0x00	;  1
      0045E2 00 00                 2580 	.byte #0x00, #0x00	;  0
      0045E4 00 00                 2581 	.byte #0x00, #0x00	;  0
      0045E6 01 00                 2582 	.byte #0x01, #0x00	;  1
      0045E8 FF FF                 2583 	.byte #0xff, #0xff	; -1
      0045EA 01 00                 2584 	.byte #0x01, #0x00	;  1
      0045EC FF FF                 2585 	.byte #0xff, #0xff	; -1
      0045EE FF FF                 2586 	.byte #0xff, #0xff	; -1
      0045F0 01 00                 2587 	.byte #0x01, #0x00	;  1
      0045F2 FF FF                 2588 	.byte #0xff, #0xff	; -1
      0045F4 01 00                 2589 	.byte #0x01, #0x00	;  1
      0045F6 01 00                 2590 	.byte #0x01, #0x00	;  1
      0045F8 FF FF                 2591 	.byte #0xff, #0xff	; -1
      0045FA 00 00                 2592 	.byte #0x00, #0x00	;  0
      0045FC 00 00                 2593 	.byte #0x00, #0x00	;  0
      0045FE FF FF                 2594 	.byte #0xff, #0xff	; -1
      004600 01 00                 2595 	.byte #0x01, #0x00	;  1
      004602 00 00                 2596 	.byte #0x00, #0x00	;  0
      004604 00 00                 2597 	.byte #0x00, #0x00	;  0
      004606 01 00                 2598 	.byte #0x01, #0x00	;  1
                                   2599 	.area CABS    (ABS,CODE)
