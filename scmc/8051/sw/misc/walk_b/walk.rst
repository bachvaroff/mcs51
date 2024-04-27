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
      000021                        291 __start__stack:
      000021                        292 	.ds	1
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
      002003 02 20 65         [24]  355 	ljmp	_int0
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
      002006 02 27 00         [24]  377 	ljmp	_main
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
      002065                        390 _int0:
                           00000F   391 	ar7 = 0x0f
                           00000E   392 	ar6 = 0x0e
                           00000D   393 	ar5 = 0x0d
                           00000C   394 	ar4 = 0x0c
                           00000B   395 	ar3 = 0x0b
                           00000A   396 	ar2 = 0x0a
                           000009   397 	ar1 = 0x09
                           000008   398 	ar0 = 0x08
      002065 C0 D0            [24]  399 	push	psw
      002067 75 D0 08         [24]  400 	mov	psw,#0x08
                                    401 ;	walk.c:13: i0 = 0u;
      00206A 78 11            [12]  402 	mov	r0,#_i0
      00206C 76 00            [12]  403 	mov	@r0,#0x00
                                    404 ;	walk.c:14: }
      00206E D0 D0            [24]  405 	pop	psw
      002070 32               [24]  406 	reti
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
      002071                        418 _bang:
                           000007   419 	ar7 = 0x07
                           000006   420 	ar6 = 0x06
                           000005   421 	ar5 = 0x05
                           000004   422 	ar4 = 0x04
                           000003   423 	ar3 = 0x03
                           000002   424 	ar2 = 0x02
                           000001   425 	ar1 = 0x01
                           000000   426 	ar0 = 0x00
                                    427 ;	walk.c:21: (void)puts("Memory error");
      002071 90 45 54         [24]  428 	mov	dptr,#___str_0
      002074 75 F0 80         [24]  429 	mov	b,#0x80
      002077 12 2E 85         [24]  430 	lcall	_puts
                                    431 ;	walk.c:17: PCON |= 2;
      00207A 43 87 02         [24]  432 	orl	_PCON,#0x02
                                    433 ;	walk.c:24: return;
                                    434 ;	walk.c:25: }
      00207D 22               [24]  435 	ret
                                    436 ;------------------------------------------------------------
                                    437 ;Allocation info for local variables in function 'setOE'
                                    438 ;------------------------------------------------------------
                                    439 ;mask                      Allocated to registers r7 
                                    440 ;------------------------------------------------------------
                                    441 ;	walk.c:67: static void setOE(uint8_t mask) {
                                    442 ;	-----------------------------------------
                                    443 ;	 function setOE
                                    444 ;	-----------------------------------------
      00207E                        445 _setOE:
      00207E AF 82            [24]  446 	mov	r7,dpl
                                    447 ;	walk.c:68: OE76 |= mask;
      002080 78 12            [12]  448 	mov	r0,#_OE76
      002082 EF               [12]  449 	mov	a,r7
      002083 46               [12]  450 	orl	a,@r0
      002084 F6               [12]  451 	mov	@r0,a
                                    452 ;	walk.c:69: P1_7 = 0;
                                    453 ;	assignBit
      002085 C2 97            [12]  454 	clr	_P1_7
                                    455 ;	walk.c:74: __endasm;
      002087 00               [12]  456 	nop
      002088 00               [12]  457 	nop
      002089 00               [12]  458 	nop
                                    459 ;	walk.c:75: OEreg = OE76;
      00208A 78 12            [12]  460 	mov	r0,#_OE76
      00208C 90 F0 06         [24]  461 	mov	dptr,#_OEreg
      00208F E6               [12]  462 	mov	a,@r0
      002090 F0               [24]  463 	movx	@dptr,a
                                    464 ;	walk.c:76: P1_7 = 1;
                                    465 ;	assignBit
      002091 D2 97            [12]  466 	setb	_P1_7
                                    467 ;	walk.c:81: __endasm;
      002093 00               [12]  468 	nop
      002094 00               [12]  469 	nop
      002095 00               [12]  470 	nop
                                    471 ;	walk.c:83: return;
                                    472 ;	walk.c:84: }
      002096 22               [24]  473 	ret
                                    474 ;------------------------------------------------------------
                                    475 ;Allocation info for local variables in function 'unsetOE'
                                    476 ;------------------------------------------------------------
                                    477 ;mask                      Allocated to registers r7 
                                    478 ;------------------------------------------------------------
                                    479 ;	walk.c:86: static void unsetOE(uint8_t mask) {
                                    480 ;	-----------------------------------------
                                    481 ;	 function unsetOE
                                    482 ;	-----------------------------------------
      002097                        483 _unsetOE:
                                    484 ;	walk.c:87: OE76 &= ~mask;
      002097 E5 82            [12]  485 	mov	a,dpl
      002099 F4               [12]  486 	cpl	a
      00209A FF               [12]  487 	mov	r7,a
      00209B 78 12            [12]  488 	mov	r0,#_OE76
      00209D 56               [12]  489 	anl	a,@r0
      00209E F6               [12]  490 	mov	@r0,a
                                    491 ;	walk.c:88: P1_7 = 0;
                                    492 ;	assignBit
      00209F C2 97            [12]  493 	clr	_P1_7
                                    494 ;	walk.c:93: __endasm;
      0020A1 00               [12]  495 	nop
      0020A2 00               [12]  496 	nop
      0020A3 00               [12]  497 	nop
                                    498 ;	walk.c:94: OEreg = OE76;
      0020A4 78 12            [12]  499 	mov	r0,#_OE76
      0020A6 90 F0 06         [24]  500 	mov	dptr,#_OEreg
      0020A9 E6               [12]  501 	mov	a,@r0
      0020AA F0               [24]  502 	movx	@dptr,a
                                    503 ;	walk.c:95: P1_7 = 1;
                                    504 ;	assignBit
      0020AB D2 97            [12]  505 	setb	_P1_7
                                    506 ;	walk.c:100: __endasm;
      0020AD 00               [12]  507 	nop
      0020AE 00               [12]  508 	nop
      0020AF 00               [12]  509 	nop
                                    510 ;	walk.c:102: return;
                                    511 ;	walk.c:103: }
      0020B0 22               [24]  512 	ret
                                    513 ;------------------------------------------------------------
                                    514 ;Allocation info for local variables in function 'flipOE'
                                    515 ;------------------------------------------------------------
                                    516 ;mask                      Allocated to registers r7 
                                    517 ;------------------------------------------------------------
                                    518 ;	walk.c:105: static void flipOE(uint8_t mask) {
                                    519 ;	-----------------------------------------
                                    520 ;	 function flipOE
                                    521 ;	-----------------------------------------
      0020B1                        522 _flipOE:
      0020B1 AF 82            [24]  523 	mov	r7,dpl
                                    524 ;	walk.c:106: OE76 ^= mask;
      0020B3 78 12            [12]  525 	mov	r0,#_OE76
      0020B5 EF               [12]  526 	mov	a,r7
      0020B6 66               [12]  527 	xrl	a,@r0
      0020B7 F6               [12]  528 	mov	@r0,a
                                    529 ;	walk.c:107: P1_7 = 0;
                                    530 ;	assignBit
      0020B8 C2 97            [12]  531 	clr	_P1_7
                                    532 ;	walk.c:112: __endasm;
      0020BA 00               [12]  533 	nop
      0020BB 00               [12]  534 	nop
      0020BC 00               [12]  535 	nop
                                    536 ;	walk.c:113: OEreg = OE76;
      0020BD 78 12            [12]  537 	mov	r0,#_OE76
      0020BF 90 F0 06         [24]  538 	mov	dptr,#_OEreg
      0020C2 E6               [12]  539 	mov	a,@r0
      0020C3 F0               [24]  540 	movx	@dptr,a
                                    541 ;	walk.c:114: P1_7 = 1;
                                    542 ;	assignBit
      0020C4 D2 97            [12]  543 	setb	_P1_7
                                    544 ;	walk.c:119: __endasm;
      0020C6 00               [12]  545 	nop
      0020C7 00               [12]  546 	nop
      0020C8 00               [12]  547 	nop
                                    548 ;	walk.c:121: return;
                                    549 ;	walk.c:122: }
      0020C9 22               [24]  550 	ret
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
      0020CA                        565 _update:
      0020CA C0 10            [24]  566 	push	_bp
      0020CC 85 81 10         [24]  567 	mov	_bp,sp
      0020CF C0 82            [24]  568 	push	dpl
      0020D1 C0 83            [24]  569 	push	dph
      0020D3 C0 F0            [24]  570 	push	b
      0020D5 E5 81            [12]  571 	mov	a,sp
      0020D7 24 07            [12]  572 	add	a,#0x07
      0020D9 F5 81            [12]  573 	mov	sp,a
                                    574 ;	walk.c:125: t->r = cur->r + neigh[j].r;
      0020DB E5 10            [12]  575 	mov	a,_bp
      0020DD 24 FB            [12]  576 	add	a,#0xfb
      0020DF F8               [12]  577 	mov	r0,a
      0020E0 86 02            [24]  578 	mov	ar2,@r0
      0020E2 08               [12]  579 	inc	r0
      0020E3 86 03            [24]  580 	mov	ar3,@r0
      0020E5 08               [12]  581 	inc	r0
      0020E6 86 04            [24]  582 	mov	ar4,@r0
      0020E8 8A 82            [24]  583 	mov	dpl,r2
      0020EA 8B 83            [24]  584 	mov	dph,r3
      0020EC 8C F0            [24]  585 	mov	b,r4
      0020EE E5 10            [12]  586 	mov	a,_bp
      0020F0 24 04            [12]  587 	add	a,#0x04
      0020F2 F8               [12]  588 	mov	r0,a
      0020F3 12 2F 44         [24]  589 	lcall	__gptrget
      0020F6 F6               [12]  590 	mov	@r0,a
      0020F7 A3               [24]  591 	inc	dptr
      0020F8 12 2F 44         [24]  592 	lcall	__gptrget
      0020FB 08               [12]  593 	inc	r0
      0020FC F6               [12]  594 	mov	@r0,a
      0020FD E5 10            [12]  595 	mov	a,_bp
      0020FF 24 FA            [12]  596 	add	a,#0xfa
      002101 F8               [12]  597 	mov	r0,a
      002102 E5 10            [12]  598 	mov	a,_bp
      002104 24 06            [12]  599 	add	a,#0x06
      002106 F9               [12]  600 	mov	r1,a
      002107 E6               [12]  601 	mov	a,@r0
      002108 75 F0 04         [24]  602 	mov	b,#0x04
      00210B A4               [48]  603 	mul	ab
      00210C F7               [12]  604 	mov	@r1,a
      00210D 09               [12]  605 	inc	r1
      00210E A7 F0            [24]  606 	mov	@r1,b
      002110 E5 10            [12]  607 	mov	a,_bp
      002112 24 06            [12]  608 	add	a,#0x06
      002114 F8               [12]  609 	mov	r0,a
      002115 E6               [12]  610 	mov	a,@r0
      002116 24 04            [12]  611 	add	a,#_neigh
      002118 F5 82            [12]  612 	mov	dpl,a
      00211A 08               [12]  613 	inc	r0
      00211B E6               [12]  614 	mov	a,@r0
      00211C 34 FC            [12]  615 	addc	a,#(_neigh >> 8)
      00211E F5 83            [12]  616 	mov	dph,a
      002120 E0               [24]  617 	movx	a,@dptr
      002121 FF               [12]  618 	mov	r7,a
      002122 A3               [24]  619 	inc	dptr
      002123 E0               [24]  620 	movx	a,@dptr
      002124 FE               [12]  621 	mov	r6,a
      002125 E5 10            [12]  622 	mov	a,_bp
      002127 24 04            [12]  623 	add	a,#0x04
      002129 F8               [12]  624 	mov	r0,a
      00212A EF               [12]  625 	mov	a,r7
      00212B 26               [12]  626 	add	a,@r0
      00212C FF               [12]  627 	mov	r7,a
      00212D EE               [12]  628 	mov	a,r6
      00212E 08               [12]  629 	inc	r0
      00212F 36               [12]  630 	addc	a,@r0
      002130 FE               [12]  631 	mov	r6,a
      002131 A8 10            [24]  632 	mov	r0,_bp
      002133 08               [12]  633 	inc	r0
      002134 86 82            [24]  634 	mov	dpl,@r0
      002136 08               [12]  635 	inc	r0
      002137 86 83            [24]  636 	mov	dph,@r0
      002139 08               [12]  637 	inc	r0
      00213A 86 F0            [24]  638 	mov	b,@r0
      00213C EF               [12]  639 	mov	a,r7
      00213D 12 2D 39         [24]  640 	lcall	__gptrput
      002140 A3               [24]  641 	inc	dptr
      002141 EE               [12]  642 	mov	a,r6
      002142 12 2D 39         [24]  643 	lcall	__gptrput
                                    644 ;	walk.c:126: t->c = cur->c + neigh[j].c;
      002145 A8 10            [24]  645 	mov	r0,_bp
      002147 08               [12]  646 	inc	r0
      002148 E5 10            [12]  647 	mov	a,_bp
      00214A 24 08            [12]  648 	add	a,#0x08
      00214C F9               [12]  649 	mov	r1,a
      00214D 74 02            [12]  650 	mov	a,#0x02
      00214F 26               [12]  651 	add	a,@r0
      002150 F7               [12]  652 	mov	@r1,a
      002151 E4               [12]  653 	clr	a
      002152 08               [12]  654 	inc	r0
      002153 36               [12]  655 	addc	a,@r0
      002154 09               [12]  656 	inc	r1
      002155 F7               [12]  657 	mov	@r1,a
      002156 08               [12]  658 	inc	r0
      002157 09               [12]  659 	inc	r1
      002158 E6               [12]  660 	mov	a,@r0
      002159 F7               [12]  661 	mov	@r1,a
      00215A 74 02            [12]  662 	mov	a,#0x02
      00215C 2A               [12]  663 	add	a,r2
      00215D FA               [12]  664 	mov	r2,a
      00215E E4               [12]  665 	clr	a
      00215F 3B               [12]  666 	addc	a,r3
      002160 FB               [12]  667 	mov	r3,a
      002161 8A 82            [24]  668 	mov	dpl,r2
      002163 8B 83            [24]  669 	mov	dph,r3
      002165 8C F0            [24]  670 	mov	b,r4
      002167 12 2F 44         [24]  671 	lcall	__gptrget
      00216A FA               [12]  672 	mov	r2,a
      00216B A3               [24]  673 	inc	dptr
      00216C 12 2F 44         [24]  674 	lcall	__gptrget
      00216F FB               [12]  675 	mov	r3,a
      002170 E5 10            [12]  676 	mov	a,_bp
      002172 24 06            [12]  677 	add	a,#0x06
      002174 F8               [12]  678 	mov	r0,a
      002175 E6               [12]  679 	mov	a,@r0
      002176 24 04            [12]  680 	add	a,#_neigh
      002178 FC               [12]  681 	mov	r4,a
      002179 08               [12]  682 	inc	r0
      00217A E6               [12]  683 	mov	a,@r0
      00217B 34 FC            [12]  684 	addc	a,#(_neigh >> 8)
      00217D FD               [12]  685 	mov	r5,a
      00217E 8C 82            [24]  686 	mov	dpl,r4
      002180 8D 83            [24]  687 	mov	dph,r5
      002182 A3               [24]  688 	inc	dptr
      002183 A3               [24]  689 	inc	dptr
      002184 E0               [24]  690 	movx	a,@dptr
      002185 FC               [12]  691 	mov	r4,a
      002186 A3               [24]  692 	inc	dptr
      002187 E0               [24]  693 	movx	a,@dptr
      002188 FD               [12]  694 	mov	r5,a
      002189 EC               [12]  695 	mov	a,r4
      00218A 2A               [12]  696 	add	a,r2
      00218B FA               [12]  697 	mov	r2,a
      00218C ED               [12]  698 	mov	a,r5
      00218D 3B               [12]  699 	addc	a,r3
      00218E FB               [12]  700 	mov	r3,a
      00218F E5 10            [12]  701 	mov	a,_bp
      002191 24 08            [12]  702 	add	a,#0x08
      002193 F8               [12]  703 	mov	r0,a
      002194 86 82            [24]  704 	mov	dpl,@r0
      002196 08               [12]  705 	inc	r0
      002197 86 83            [24]  706 	mov	dph,@r0
      002199 08               [12]  707 	inc	r0
      00219A 86 F0            [24]  708 	mov	b,@r0
      00219C EA               [12]  709 	mov	a,r2
      00219D 12 2D 39         [24]  710 	lcall	__gptrput
      0021A0 A3               [24]  711 	inc	dptr
      0021A1 EB               [12]  712 	mov	a,r3
      0021A2 12 2D 39         [24]  713 	lcall	__gptrput
                                    714 ;	walk.c:128: if (t->r < 0) t->r += ROWS;
      0021A5 A8 10            [24]  715 	mov	r0,_bp
      0021A7 08               [12]  716 	inc	r0
      0021A8 86 82            [24]  717 	mov	dpl,@r0
      0021AA 08               [12]  718 	inc	r0
      0021AB 86 83            [24]  719 	mov	dph,@r0
      0021AD 08               [12]  720 	inc	r0
      0021AE 86 F0            [24]  721 	mov	b,@r0
      0021B0 12 2F 44         [24]  722 	lcall	__gptrget
      0021B3 FD               [12]  723 	mov	r5,a
      0021B4 A3               [24]  724 	inc	dptr
      0021B5 12 2F 44         [24]  725 	lcall	__gptrget
      0021B8 FC               [12]  726 	mov	r4,a
      0021B9 EE               [12]  727 	mov	a,r6
      0021BA 30 E7 1D         [24]  728 	jnb	acc.7,00104$
      0021BD 74 30            [12]  729 	mov	a,#0x30
      0021BF 2D               [12]  730 	add	a,r5
      0021C0 FF               [12]  731 	mov	r7,a
      0021C1 E4               [12]  732 	clr	a
      0021C2 3C               [12]  733 	addc	a,r4
      0021C3 FE               [12]  734 	mov	r6,a
      0021C4 A8 10            [24]  735 	mov	r0,_bp
      0021C6 08               [12]  736 	inc	r0
      0021C7 86 82            [24]  737 	mov	dpl,@r0
      0021C9 08               [12]  738 	inc	r0
      0021CA 86 83            [24]  739 	mov	dph,@r0
      0021CC 08               [12]  740 	inc	r0
      0021CD 86 F0            [24]  741 	mov	b,@r0
      0021CF EF               [12]  742 	mov	a,r7
      0021D0 12 2D 39         [24]  743 	lcall	__gptrput
      0021D3 A3               [24]  744 	inc	dptr
      0021D4 EE               [12]  745 	mov	a,r6
      0021D5 12 2D 39         [24]  746 	lcall	__gptrput
      0021D8 80 27            [24]  747 	sjmp	00105$
      0021DA                        748 00104$:
                                    749 ;	walk.c:129: else if (t->r >= ROWS) t->r -= ROWS;
      0021DA C3               [12]  750 	clr	c
      0021DB ED               [12]  751 	mov	a,r5
      0021DC 94 30            [12]  752 	subb	a,#0x30
      0021DE EC               [12]  753 	mov	a,r4
      0021DF 64 80            [12]  754 	xrl	a,#0x80
      0021E1 94 80            [12]  755 	subb	a,#0x80
      0021E3 40 1C            [24]  756 	jc	00105$
      0021E5 ED               [12]  757 	mov	a,r5
      0021E6 24 D0            [12]  758 	add	a,#0xd0
      0021E8 FD               [12]  759 	mov	r5,a
      0021E9 EC               [12]  760 	mov	a,r4
      0021EA 34 FF            [12]  761 	addc	a,#0xff
      0021EC FC               [12]  762 	mov	r4,a
      0021ED A8 10            [24]  763 	mov	r0,_bp
      0021EF 08               [12]  764 	inc	r0
      0021F0 86 82            [24]  765 	mov	dpl,@r0
      0021F2 08               [12]  766 	inc	r0
      0021F3 86 83            [24]  767 	mov	dph,@r0
      0021F5 08               [12]  768 	inc	r0
      0021F6 86 F0            [24]  769 	mov	b,@r0
      0021F8 ED               [12]  770 	mov	a,r5
      0021F9 12 2D 39         [24]  771 	lcall	__gptrput
      0021FC A3               [24]  772 	inc	dptr
      0021FD EC               [12]  773 	mov	a,r4
      0021FE 12 2D 39         [24]  774 	lcall	__gptrput
      002201                        775 00105$:
                                    776 ;	walk.c:130: if (t->c < 0) t->c += COLS;
      002201 E5 10            [12]  777 	mov	a,_bp
      002203 24 08            [12]  778 	add	a,#0x08
      002205 F8               [12]  779 	mov	r0,a
      002206 86 82            [24]  780 	mov	dpl,@r0
      002208 08               [12]  781 	inc	r0
      002209 86 83            [24]  782 	mov	dph,@r0
      00220B 08               [12]  783 	inc	r0
      00220C 86 F0            [24]  784 	mov	b,@r0
      00220E 12 2F 44         [24]  785 	lcall	__gptrget
      002211 A3               [24]  786 	inc	dptr
      002212 12 2F 44         [24]  787 	lcall	__gptrget
      002215 30 E7 35         [24]  788 	jnb	acc.7,00109$
      002218 E5 10            [12]  789 	mov	a,_bp
      00221A 24 08            [12]  790 	add	a,#0x08
      00221C F8               [12]  791 	mov	r0,a
      00221D 86 82            [24]  792 	mov	dpl,@r0
      00221F 08               [12]  793 	inc	r0
      002220 86 83            [24]  794 	mov	dph,@r0
      002222 08               [12]  795 	inc	r0
      002223 86 F0            [24]  796 	mov	b,@r0
      002225 12 2F 44         [24]  797 	lcall	__gptrget
      002228 FE               [12]  798 	mov	r6,a
      002229 A3               [24]  799 	inc	dptr
      00222A 12 2F 44         [24]  800 	lcall	__gptrget
      00222D FF               [12]  801 	mov	r7,a
      00222E 74 C0            [12]  802 	mov	a,#0xc0
      002230 2E               [12]  803 	add	a,r6
      002231 FE               [12]  804 	mov	r6,a
      002232 E4               [12]  805 	clr	a
      002233 3F               [12]  806 	addc	a,r7
      002234 FF               [12]  807 	mov	r7,a
      002235 E5 10            [12]  808 	mov	a,_bp
      002237 24 08            [12]  809 	add	a,#0x08
      002239 F8               [12]  810 	mov	r0,a
      00223A 86 82            [24]  811 	mov	dpl,@r0
      00223C 08               [12]  812 	inc	r0
      00223D 86 83            [24]  813 	mov	dph,@r0
      00223F 08               [12]  814 	inc	r0
      002240 86 F0            [24]  815 	mov	b,@r0
      002242 EE               [12]  816 	mov	a,r6
      002243 12 2D 39         [24]  817 	lcall	__gptrput
      002246 A3               [24]  818 	inc	dptr
      002247 EF               [12]  819 	mov	a,r7
      002248 12 2D 39         [24]  820 	lcall	__gptrput
      00224B 80 55            [24]  821 	sjmp	00110$
      00224D                        822 00109$:
                                    823 ;	walk.c:131: else if (t->c >= COLS) t->c -= COLS;
      00224D E5 10            [12]  824 	mov	a,_bp
      00224F 24 08            [12]  825 	add	a,#0x08
      002251 F8               [12]  826 	mov	r0,a
      002252 86 82            [24]  827 	mov	dpl,@r0
      002254 08               [12]  828 	inc	r0
      002255 86 83            [24]  829 	mov	dph,@r0
      002257 08               [12]  830 	inc	r0
      002258 86 F0            [24]  831 	mov	b,@r0
      00225A 12 2F 44         [24]  832 	lcall	__gptrget
      00225D FE               [12]  833 	mov	r6,a
      00225E A3               [24]  834 	inc	dptr
      00225F 12 2F 44         [24]  835 	lcall	__gptrget
      002262 FF               [12]  836 	mov	r7,a
      002263 C3               [12]  837 	clr	c
      002264 EE               [12]  838 	mov	a,r6
      002265 94 C0            [12]  839 	subb	a,#0xc0
      002267 EF               [12]  840 	mov	a,r7
      002268 64 80            [12]  841 	xrl	a,#0x80
      00226A 94 80            [12]  842 	subb	a,#0x80
      00226C 40 34            [24]  843 	jc	00110$
      00226E E5 10            [12]  844 	mov	a,_bp
      002270 24 08            [12]  845 	add	a,#0x08
      002272 F8               [12]  846 	mov	r0,a
      002273 86 82            [24]  847 	mov	dpl,@r0
      002275 08               [12]  848 	inc	r0
      002276 86 83            [24]  849 	mov	dph,@r0
      002278 08               [12]  850 	inc	r0
      002279 86 F0            [24]  851 	mov	b,@r0
      00227B 12 2F 44         [24]  852 	lcall	__gptrget
      00227E FE               [12]  853 	mov	r6,a
      00227F A3               [24]  854 	inc	dptr
      002280 12 2F 44         [24]  855 	lcall	__gptrget
      002283 FF               [12]  856 	mov	r7,a
      002284 EE               [12]  857 	mov	a,r6
      002285 24 40            [12]  858 	add	a,#0x40
      002287 FE               [12]  859 	mov	r6,a
      002288 EF               [12]  860 	mov	a,r7
      002289 34 FF            [12]  861 	addc	a,#0xff
      00228B FF               [12]  862 	mov	r7,a
      00228C E5 10            [12]  863 	mov	a,_bp
      00228E 24 08            [12]  864 	add	a,#0x08
      002290 F8               [12]  865 	mov	r0,a
      002291 86 82            [24]  866 	mov	dpl,@r0
      002293 08               [12]  867 	inc	r0
      002294 86 83            [24]  868 	mov	dph,@r0
      002296 08               [12]  869 	inc	r0
      002297 86 F0            [24]  870 	mov	b,@r0
      002299 EE               [12]  871 	mov	a,r6
      00229A 12 2D 39         [24]  872 	lcall	__gptrput
      00229D A3               [24]  873 	inc	dptr
      00229E EF               [12]  874 	mov	a,r7
      00229F 12 2D 39         [24]  875 	lcall	__gptrput
      0022A2                        876 00110$:
                                    877 ;	walk.c:133: if (g[t->r][t->c] == 0xaau) return 0u;
      0022A2 A8 10            [24]  878 	mov	r0,_bp
      0022A4 08               [12]  879 	inc	r0
      0022A5 86 82            [24]  880 	mov	dpl,@r0
      0022A7 08               [12]  881 	inc	r0
      0022A8 86 83            [24]  882 	mov	dph,@r0
      0022AA 08               [12]  883 	inc	r0
      0022AB 86 F0            [24]  884 	mov	b,@r0
      0022AD 12 2F 44         [24]  885 	lcall	__gptrget
      0022B0 FE               [12]  886 	mov	r6,a
      0022B1 A3               [24]  887 	inc	dptr
      0022B2 12 2F 44         [24]  888 	lcall	__gptrget
      0022B5 FF               [12]  889 	mov	r7,a
      0022B6 C0 06            [24]  890 	push	ar6
      0022B8 C0 07            [24]  891 	push	ar7
      0022BA 90 00 C0         [24]  892 	mov	dptr,#0x00c0
      0022BD 12 2D 54         [24]  893 	lcall	__mulint
      0022C0 AE 82            [24]  894 	mov	r6,dpl
      0022C2 AF 83            [24]  895 	mov	r7,dph
      0022C4 15 81            [12]  896 	dec	sp
      0022C6 15 81            [12]  897 	dec	sp
      0022C8 EE               [12]  898 	mov	a,r6
      0022C9 24 00            [12]  899 	add	a,#_g
      0022CB FE               [12]  900 	mov	r6,a
      0022CC EF               [12]  901 	mov	a,r7
      0022CD 34 48            [12]  902 	addc	a,#(_g >> 8)
      0022CF FF               [12]  903 	mov	r7,a
      0022D0 E5 10            [12]  904 	mov	a,_bp
      0022D2 24 08            [12]  905 	add	a,#0x08
      0022D4 F8               [12]  906 	mov	r0,a
      0022D5 86 82            [24]  907 	mov	dpl,@r0
      0022D7 08               [12]  908 	inc	r0
      0022D8 86 83            [24]  909 	mov	dph,@r0
      0022DA 08               [12]  910 	inc	r0
      0022DB 86 F0            [24]  911 	mov	b,@r0
      0022DD 12 2F 44         [24]  912 	lcall	__gptrget
      0022E0 FC               [12]  913 	mov	r4,a
      0022E1 A3               [24]  914 	inc	dptr
      0022E2 12 2F 44         [24]  915 	lcall	__gptrget
      0022E5 FD               [12]  916 	mov	r5,a
      0022E6 EC               [12]  917 	mov	a,r4
      0022E7 2E               [12]  918 	add	a,r6
      0022E8 F5 82            [12]  919 	mov	dpl,a
      0022EA ED               [12]  920 	mov	a,r5
      0022EB 3F               [12]  921 	addc	a,r7
      0022EC F5 83            [12]  922 	mov	dph,a
      0022EE E0               [24]  923 	movx	a,@dptr
      0022EF FF               [12]  924 	mov	r7,a
      0022F0 BF AA 05         [24]  925 	cjne	r7,#0xaa,00114$
      0022F3 75 82 00         [24]  926 	mov	dpl,#0x00
      0022F6 80 59            [24]  927 	sjmp	00116$
      0022F8                        928 00114$:
                                    929 ;	walk.c:134: else if (g[t->r][t->c] != 0x55u) bang();
      0022F8 A8 10            [24]  930 	mov	r0,_bp
      0022FA 08               [12]  931 	inc	r0
      0022FB 86 82            [24]  932 	mov	dpl,@r0
      0022FD 08               [12]  933 	inc	r0
      0022FE 86 83            [24]  934 	mov	dph,@r0
      002300 08               [12]  935 	inc	r0
      002301 86 F0            [24]  936 	mov	b,@r0
      002303 12 2F 44         [24]  937 	lcall	__gptrget
      002306 FE               [12]  938 	mov	r6,a
      002307 A3               [24]  939 	inc	dptr
      002308 12 2F 44         [24]  940 	lcall	__gptrget
      00230B FF               [12]  941 	mov	r7,a
      00230C C0 06            [24]  942 	push	ar6
      00230E C0 07            [24]  943 	push	ar7
      002310 90 00 C0         [24]  944 	mov	dptr,#0x00c0
      002313 12 2D 54         [24]  945 	lcall	__mulint
      002316 AE 82            [24]  946 	mov	r6,dpl
      002318 AF 83            [24]  947 	mov	r7,dph
      00231A 15 81            [12]  948 	dec	sp
      00231C 15 81            [12]  949 	dec	sp
      00231E EE               [12]  950 	mov	a,r6
      00231F 24 00            [12]  951 	add	a,#_g
      002321 FE               [12]  952 	mov	r6,a
      002322 EF               [12]  953 	mov	a,r7
      002323 34 48            [12]  954 	addc	a,#(_g >> 8)
      002325 FF               [12]  955 	mov	r7,a
      002326 E5 10            [12]  956 	mov	a,_bp
      002328 24 08            [12]  957 	add	a,#0x08
      00232A F8               [12]  958 	mov	r0,a
      00232B 86 82            [24]  959 	mov	dpl,@r0
      00232D 08               [12]  960 	inc	r0
      00232E 86 83            [24]  961 	mov	dph,@r0
      002330 08               [12]  962 	inc	r0
      002331 86 F0            [24]  963 	mov	b,@r0
      002333 12 2F 44         [24]  964 	lcall	__gptrget
      002336 FC               [12]  965 	mov	r4,a
      002337 A3               [24]  966 	inc	dptr
      002338 12 2F 44         [24]  967 	lcall	__gptrget
      00233B FD               [12]  968 	mov	r5,a
      00233C EC               [12]  969 	mov	a,r4
      00233D 2E               [12]  970 	add	a,r6
      00233E F5 82            [12]  971 	mov	dpl,a
      002340 ED               [12]  972 	mov	a,r5
      002341 3F               [12]  973 	addc	a,r7
      002342 F5 83            [12]  974 	mov	dph,a
      002344 E0               [24]  975 	movx	a,@dptr
      002345 FF               [12]  976 	mov	r7,a
      002346 BF 55 02         [24]  977 	cjne	r7,#0x55,00148$
      002349 80 03            [24]  978 	sjmp	00115$
      00234B                        979 00148$:
      00234B 12 20 71         [24]  980 	lcall	_bang
      00234E                        981 00115$:
                                    982 ;	walk.c:136: return 1u;
      00234E 75 82 01         [24]  983 	mov	dpl,#0x01
      002351                        984 00116$:
                                    985 ;	walk.c:137: }
      002351 85 10 81         [24]  986 	mov	sp,_bp
      002354 D0 10            [24]  987 	pop	_bp
      002356 22               [24]  988 	ret
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
      002357                       1009 _walk:
      002357 C0 10            [24] 1010 	push	_bp
      002359 E5 81            [12] 1011 	mov	a,sp
      00235B F5 10            [12] 1012 	mov	_bp,a
      00235D 24 20            [12] 1013 	add	a,#0x20
      00235F F5 81            [12] 1014 	mov	sp,a
                                   1015 ;	walk.c:144: if (!qadd(nstart)) bang();
      002361 AD 82            [24] 1016 	mov	r5,dpl
      002363 AE 83            [24] 1017 	mov	r6,dph
      002365 AF F0            [24] 1018 	mov	r7,b
      002367 C0 07            [24] 1019 	push	ar7
      002369 C0 06            [24] 1020 	push	ar6
      00236B C0 05            [24] 1021 	push	ar5
      00236D 12 2A E9         [24] 1022 	lcall	_qadd
      002370 E5 82            [12] 1023 	mov	a,dpl
      002372 D0 05            [24] 1024 	pop	ar5
      002374 D0 06            [24] 1025 	pop	ar6
      002376 D0 07            [24] 1026 	pop	ar7
      002378 70 0F            [24] 1027 	jnz	00102$
      00237A C0 07            [24] 1028 	push	ar7
      00237C C0 06            [24] 1029 	push	ar6
      00237E C0 05            [24] 1030 	push	ar5
      002380 12 20 71         [24] 1031 	lcall	_bang
      002383 D0 05            [24] 1032 	pop	ar5
      002385 D0 06            [24] 1033 	pop	ar6
      002387 D0 07            [24] 1034 	pop	ar7
      002389                       1035 00102$:
                                   1036 ;	walk.c:145: g[nstart->r][nstart->c] = 0xaau;
      002389 8D 82            [24] 1037 	mov	dpl,r5
      00238B 8E 83            [24] 1038 	mov	dph,r6
      00238D 8F F0            [24] 1039 	mov	b,r7
      00238F 12 2F 44         [24] 1040 	lcall	__gptrget
      002392 FB               [12] 1041 	mov	r3,a
      002393 A3               [24] 1042 	inc	dptr
      002394 12 2F 44         [24] 1043 	lcall	__gptrget
      002397 FC               [12] 1044 	mov	r4,a
      002398 C0 07            [24] 1045 	push	ar7
      00239A C0 06            [24] 1046 	push	ar6
      00239C C0 05            [24] 1047 	push	ar5
      00239E C0 03            [24] 1048 	push	ar3
      0023A0 C0 04            [24] 1049 	push	ar4
      0023A2 90 00 C0         [24] 1050 	mov	dptr,#0x00c0
      0023A5 12 2D 54         [24] 1051 	lcall	__mulint
      0023A8 AB 82            [24] 1052 	mov	r3,dpl
      0023AA AC 83            [24] 1053 	mov	r4,dph
      0023AC 15 81            [12] 1054 	dec	sp
      0023AE 15 81            [12] 1055 	dec	sp
      0023B0 D0 05            [24] 1056 	pop	ar5
      0023B2 D0 06            [24] 1057 	pop	ar6
      0023B4 D0 07            [24] 1058 	pop	ar7
      0023B6 EB               [12] 1059 	mov	a,r3
      0023B7 24 00            [12] 1060 	add	a,#_g
      0023B9 FB               [12] 1061 	mov	r3,a
      0023BA EC               [12] 1062 	mov	a,r4
      0023BB 34 48            [12] 1063 	addc	a,#(_g >> 8)
      0023BD FC               [12] 1064 	mov	r4,a
      0023BE 74 02            [12] 1065 	mov	a,#0x02
      0023C0 2D               [12] 1066 	add	a,r5
      0023C1 FD               [12] 1067 	mov	r5,a
      0023C2 E4               [12] 1068 	clr	a
      0023C3 3E               [12] 1069 	addc	a,r6
      0023C4 FE               [12] 1070 	mov	r6,a
      0023C5 8D 82            [24] 1071 	mov	dpl,r5
      0023C7 8E 83            [24] 1072 	mov	dph,r6
      0023C9 8F F0            [24] 1073 	mov	b,r7
      0023CB 12 2F 44         [24] 1074 	lcall	__gptrget
      0023CE FD               [12] 1075 	mov	r5,a
      0023CF A3               [24] 1076 	inc	dptr
      0023D0 12 2F 44         [24] 1077 	lcall	__gptrget
      0023D3 FE               [12] 1078 	mov	r6,a
      0023D4 ED               [12] 1079 	mov	a,r5
      0023D5 2B               [12] 1080 	add	a,r3
      0023D6 F5 82            [12] 1081 	mov	dpl,a
      0023D8 EE               [12] 1082 	mov	a,r6
      0023D9 3C               [12] 1083 	addc	a,r4
      0023DA F5 83            [12] 1084 	mov	dph,a
      0023DC 74 AA            [12] 1085 	mov	a,#0xaa
      0023DE F0               [24] 1086 	movx	@dptr,a
                                   1087 ;	walk.c:147: process:
      0023DF E5 10            [12] 1088 	mov	a,_bp
      0023E1 24 0F            [12] 1089 	add	a,#0x0f
      0023E3 FF               [12] 1090 	mov	r7,a
      0023E4 E5 10            [12] 1091 	mov	a,_bp
      0023E6 24 0B            [12] 1092 	add	a,#0x0b
      0023E8 F9               [12] 1093 	mov	r1,a
      0023E9 E5 10            [12] 1094 	mov	a,_bp
      0023EB 24 03            [12] 1095 	add	a,#0x03
      0023ED F8               [12] 1096 	mov	r0,a
      0023EE A6 01            [24] 1097 	mov	@r0,ar1
      0023F0 74 02            [12] 1098 	mov	a,#0x02
      0023F2 29               [12] 1099 	add	a,r1
      0023F3 F8               [12] 1100 	mov	r0,a
      0023F4 E5 10            [12] 1101 	mov	a,_bp
      0023F6 24 07            [12] 1102 	add	a,#0x07
      0023F8 FD               [12] 1103 	mov	r5,a
      0023F9                       1104 00103$:
                                   1105 ;	walk.c:148: unsetOE(OE76_MASK7 | OE76_MASK6);
      0023F9 75 82 C0         [24] 1106 	mov	dpl,#0xc0
      0023FC C0 07            [24] 1107 	push	ar7
      0023FE C0 05            [24] 1108 	push	ar5
      002400 C0 01            [24] 1109 	push	ar1
      002402 C0 00            [24] 1110 	push	ar0
      002404 12 20 97         [24] 1111 	lcall	_unsetOE
      002407 D0 00            [24] 1112 	pop	ar0
      002409 D0 01            [24] 1113 	pop	ar1
      00240B D0 05            [24] 1114 	pop	ar5
                                   1115 ;	walk.c:150: if (!qget(&cur)) goto term;
      00240D 8D 02            [24] 1116 	mov	ar2,r5
      00240F 7B 00            [12] 1117 	mov	r3,#0x00
      002411 7C 40            [12] 1118 	mov	r4,#0x40
      002413 8A 82            [24] 1119 	mov	dpl,r2
      002415 8B 83            [24] 1120 	mov	dph,r3
      002417 8C F0            [24] 1121 	mov	b,r4
      002419 C0 05            [24] 1122 	push	ar5
      00241B C0 01            [24] 1123 	push	ar1
      00241D C0 00            [24] 1124 	push	ar0
      00241F 12 2B D9         [24] 1125 	lcall	_qget
      002422 E5 82            [12] 1126 	mov	a,dpl
      002424 D0 00            [24] 1127 	pop	ar0
      002426 D0 01            [24] 1128 	pop	ar1
      002428 D0 05            [24] 1129 	pop	ar5
      00242A D0 07            [24] 1130 	pop	ar7
      00242C 70 03            [24] 1131 	jnz	00184$
      00242E 02 26 FA         [24] 1132 	ljmp	00119$
      002431                       1133 00184$:
                                   1134 ;	walk.c:152: printf("\033[2;1H% 8d% 8d% 8d% 8d", hp, tp, cur.r, cur.c);
      002431 74 02            [12] 1135 	mov	a,#0x02
      002433 2D               [12] 1136 	add	a,r5
      002434 FC               [12] 1137 	mov	r4,a
      002435 C0 00            [24] 1138 	push	ar0
      002437 A8 10            [24] 1139 	mov	r0,_bp
      002439 08               [12] 1140 	inc	r0
      00243A C0 01            [24] 1141 	push	ar1
      00243C A9 04            [24] 1142 	mov	r1,ar4
      00243E E7               [12] 1143 	mov	a,@r1
      00243F F6               [12] 1144 	mov	@r0,a
      002440 09               [12] 1145 	inc	r1
      002441 E7               [12] 1146 	mov	a,@r1
      002442 08               [12] 1147 	inc	r0
      002443 F6               [12] 1148 	mov	@r0,a
      002444 D0 01            [24] 1149 	pop	ar1
      002446 A8 05            [24] 1150 	mov	r0,ar5
      002448 86 03            [24] 1151 	mov	ar3,@r0
      00244A 08               [12] 1152 	inc	r0
      00244B 86 06            [24] 1153 	mov	ar6,@r0
      00244D D0 00            [24] 1154 	pop	ar0
      00244F C0 07            [24] 1155 	push	ar7
      002451 C0 05            [24] 1156 	push	ar5
      002453 C0 04            [24] 1157 	push	ar4
      002455 C0 01            [24] 1158 	push	ar1
      002457 C0 00            [24] 1159 	push	ar0
      002459 85 00 F0         [24] 1160 	mov	b,ar0
      00245C A8 10            [24] 1161 	mov	r0,_bp
      00245E 08               [12] 1162 	inc	r0
      00245F E6               [12] 1163 	mov	a,@r0
      002460 C0 E0            [24] 1164 	push	acc
      002462 08               [12] 1165 	inc	r0
      002463 E6               [12] 1166 	mov	a,@r0
      002464 C0 E0            [24] 1167 	push	acc
      002466 C0 03            [24] 1168 	push	ar3
      002468 C0 06            [24] 1169 	push	ar6
      00246A 90 FC 02         [24] 1170 	mov	dptr,#_tp
      00246D E0               [24] 1171 	movx	a,@dptr
      00246E C0 E0            [24] 1172 	push	acc
      002470 A3               [24] 1173 	inc	dptr
      002471 E0               [24] 1174 	movx	a,@dptr
      002472 C0 E0            [24] 1175 	push	acc
      002474 90 FC 00         [24] 1176 	mov	dptr,#_hp
      002477 E0               [24] 1177 	movx	a,@dptr
      002478 C0 E0            [24] 1178 	push	acc
      00247A A3               [24] 1179 	inc	dptr
      00247B E0               [24] 1180 	movx	a,@dptr
      00247C C0 E0            [24] 1181 	push	acc
      00247E 74 61            [12] 1182 	mov	a,#___str_1
      002480 C0 E0            [24] 1183 	push	acc
      002482 74 45            [12] 1184 	mov	a,#(___str_1 >> 8)
      002484 C0 E0            [24] 1185 	push	acc
      002486 74 80            [12] 1186 	mov	a,#0x80
      002488 C0 E0            [24] 1187 	push	acc
      00248A 12 2F 0B         [24] 1188 	lcall	_printf
      00248D E5 81            [12] 1189 	mov	a,sp
      00248F 24 F5            [12] 1190 	add	a,#0xf5
      002491 F5 81            [12] 1191 	mov	sp,a
      002493 D0 00            [24] 1192 	pop	ar0
      002495 D0 01            [24] 1193 	pop	ar1
      002497 D0 04            [24] 1194 	pop	ar4
      002499 D0 05            [24] 1195 	pop	ar5
      00249B D0 07            [24] 1196 	pop	ar7
                                   1197 ;	walk.c:154: printf("\033[%d;%dH.", cur.r + 4, cur.c + 1);
      00249D C0 00            [24] 1198 	push	ar0
      00249F A8 04            [24] 1199 	mov	r0,ar4
      0024A1 86 04            [24] 1200 	mov	ar4,@r0
      0024A3 08               [12] 1201 	inc	r0
      0024A4 86 06            [24] 1202 	mov	ar6,@r0
      0024A6 D0 00            [24] 1203 	pop	ar0
      0024A8 0C               [12] 1204 	inc	r4
      0024A9 BC 00 01         [24] 1205 	cjne	r4,#0x00,00185$
      0024AC 0E               [12] 1206 	inc	r6
      0024AD                       1207 00185$:
      0024AD C0 00            [24] 1208 	push	ar0
      0024AF A8 05            [24] 1209 	mov	r0,ar5
      0024B1 86 02            [24] 1210 	mov	ar2,@r0
      0024B3 08               [12] 1211 	inc	r0
      0024B4 86 03            [24] 1212 	mov	ar3,@r0
      0024B6 D0 00            [24] 1213 	pop	ar0
      0024B8 74 04            [12] 1214 	mov	a,#0x04
      0024BA 2A               [12] 1215 	add	a,r2
      0024BB FA               [12] 1216 	mov	r2,a
      0024BC E4               [12] 1217 	clr	a
      0024BD 3B               [12] 1218 	addc	a,r3
      0024BE FB               [12] 1219 	mov	r3,a
      0024BF C0 07            [24] 1220 	push	ar7
      0024C1 C0 05            [24] 1221 	push	ar5
      0024C3 C0 01            [24] 1222 	push	ar1
      0024C5 C0 00            [24] 1223 	push	ar0
      0024C7 C0 04            [24] 1224 	push	ar4
      0024C9 C0 06            [24] 1225 	push	ar6
      0024CB C0 02            [24] 1226 	push	ar2
      0024CD C0 03            [24] 1227 	push	ar3
      0024CF 74 78            [12] 1228 	mov	a,#___str_2
      0024D1 C0 E0            [24] 1229 	push	acc
      0024D3 74 45            [12] 1230 	mov	a,#(___str_2 >> 8)
      0024D5 C0 E0            [24] 1231 	push	acc
      0024D7 74 80            [12] 1232 	mov	a,#0x80
      0024D9 C0 E0            [24] 1233 	push	acc
      0024DB 12 2F 0B         [24] 1234 	lcall	_printf
      0024DE E5 81            [12] 1235 	mov	a,sp
      0024E0 24 F9            [12] 1236 	add	a,#0xf9
      0024E2 F5 81            [12] 1237 	mov	sp,a
                                   1238 ;	walk.c:155: setOE(OE76_MASK6);
      0024E4 75 82 40         [24] 1239 	mov	dpl,#0x40
      0024E7 12 20 7E         [24] 1240 	lcall	_setOE
      0024EA D0 00            [24] 1241 	pop	ar0
      0024EC D0 01            [24] 1242 	pop	ar1
      0024EE D0 05            [24] 1243 	pop	ar5
      0024F0 D0 07            [24] 1244 	pop	ar7
                                   1245 ;	walk.c:157: for (j = 0u; j < NMAX; j++)
      0024F2 7E 00            [12] 1246 	mov	r6,#0x00
                                   1247 ;	walk.c:184: return;
                                   1248 ;	walk.c:157: for (j = 0u; j < NMAX; j++)
      0024F4                       1249 00120$:
                                   1250 ;	walk.c:158: scramble[j] = j;
      0024F4 EE               [12] 1251 	mov	a,r6
      0024F5 2F               [12] 1252 	add	a,r7
      0024F6 C0 00            [24] 1253 	push	ar0
      0024F8 F8               [12] 1254 	mov	r0,a
      0024F9 A6 06            [24] 1255 	mov	@r0,ar6
      0024FB D0 00            [24] 1256 	pop	ar0
                                   1257 ;	walk.c:157: for (j = 0u; j < NMAX; j++)
      0024FD 0E               [12] 1258 	inc	r6
      0024FE BE 10 00         [24] 1259 	cjne	r6,#0x10,00186$
      002501                       1260 00186$:
      002501 40 F1            [24] 1261 	jc	00120$
                                   1262 ;	walk.c:160: do ti = (uint8_t)(rand() % NMAX);
      002503 7C 00            [12] 1263 	mov	r4,#0x00
      002505                       1264 00107$:
      002505 C0 07            [24] 1265 	push	ar7
      002507 C0 05            [24] 1266 	push	ar5
      002509 C0 04            [24] 1267 	push	ar4
      00250B C0 01            [24] 1268 	push	ar1
      00250D C0 00            [24] 1269 	push	ar0
      00250F 12 2C 5C         [24] 1270 	lcall	_rand
      002512 AA 82            [24] 1271 	mov	r2,dpl
      002514 D0 00            [24] 1272 	pop	ar0
      002516 D0 01            [24] 1273 	pop	ar1
      002518 D0 04            [24] 1274 	pop	ar4
      00251A D0 05            [24] 1275 	pop	ar5
      00251C D0 07            [24] 1276 	pop	ar7
      00251E 53 02 0F         [24] 1277 	anl	ar2,#0x0f
      002521 7B 00            [12] 1278 	mov	r3,#0x00
                                   1279 ;	walk.c:161: while (ti == j);
      002523 EA               [12] 1280 	mov	a,r2
      002524 B5 04 02         [24] 1281 	cjne	a,ar4,00188$
      002527 80 DC            [24] 1282 	sjmp	00107$
      002529                       1283 00188$:
                                   1284 ;	walk.c:162: do tj = (uint8_t)(rand() % NMAX);
      002529                       1285 00110$:
      002529 C0 05            [24] 1286 	push	ar5
      00252B C0 07            [24] 1287 	push	ar7
      00252D C0 04            [24] 1288 	push	ar4
      00252F C0 02            [24] 1289 	push	ar2
      002531 C0 01            [24] 1290 	push	ar1
      002533 C0 00            [24] 1291 	push	ar0
      002535 12 2C 5C         [24] 1292 	lcall	_rand
      002538 AB 82            [24] 1293 	mov	r3,dpl
      00253A D0 00            [24] 1294 	pop	ar0
      00253C D0 01            [24] 1295 	pop	ar1
      00253E D0 02            [24] 1296 	pop	ar2
      002540 D0 04            [24] 1297 	pop	ar4
      002542 D0 07            [24] 1298 	pop	ar7
      002544 53 03 0F         [24] 1299 	anl	ar3,#0x0f
      002547 8B 06            [24] 1300 	mov	ar6,r3
                                   1301 ;	walk.c:163: while (ti == tj);
      002549 EA               [12] 1302 	mov	a,r2
      00254A B5 06 04         [24] 1303 	cjne	a,ar6,00189$
      00254D D0 05            [24] 1304 	pop	ar5
      00254F 80 D8            [24] 1305 	sjmp	00110$
      002551                       1306 00189$:
                                   1307 ;	walk.c:164: tx = scramble[ti];
      002551 EA               [12] 1308 	mov	a,r2
      002552 2F               [12] 1309 	add	a,r7
      002553 FB               [12] 1310 	mov	r3,a
      002554 C0 00            [24] 1311 	push	ar0
      002556 E5 10            [12] 1312 	mov	a,_bp
      002558 24 1F            [12] 1313 	add	a,#0x1f
      00255A F8               [12] 1314 	mov	r0,a
      00255B C0 01            [24] 1315 	push	ar1
      00255D A9 03            [24] 1316 	mov	r1,ar3
      00255F E7               [12] 1317 	mov	a,@r1
      002560 F6               [12] 1318 	mov	@r0,a
                                   1319 ;	walk.c:165: scramble[ti] = scramble[tj];
      002561 EE               [12] 1320 	mov	a,r6
      002562 2F               [12] 1321 	add	a,r7
      002563 FD               [12] 1322 	mov	r5,a
      002564 A8 05            [24] 1323 	mov	r0,ar5
      002566 86 02            [24] 1324 	mov	ar2,@r0
      002568 A8 03            [24] 1325 	mov	r0,ar3
      00256A A6 02            [24] 1326 	mov	@r0,ar2
                                   1327 ;	walk.c:166: scramble[tj] = tx;
      00256C A8 05            [24] 1328 	mov	r0,ar5
      00256E E5 10            [12] 1329 	mov	a,_bp
      002570 24 1F            [12] 1330 	add	a,#0x1f
      002572 F9               [12] 1331 	mov	r1,a
      002573 E7               [12] 1332 	mov	a,@r1
      002574 F6               [12] 1333 	mov	@r0,a
      002575 D0 00            [24] 1334 	pop	ar0
      002577 D0 01            [24] 1335 	pop	ar1
                                   1336 ;	walk.c:159: for (j = 0u; j < NMAX; j++) {
      002579 0C               [12] 1337 	inc	r4
      00257A BC 10 00         [24] 1338 	cjne	r4,#0x10,00190$
      00257D                       1339 00190$:
      00257D D0 05            [24] 1340 	pop	ar5
      00257F 40 84            [24] 1341 	jc	00107$
                                   1342 ;	walk.c:169: for (j = 0u; j < NMAX; j++) {
      002581 C0 00            [24] 1343 	push	ar0
      002583 A8 10            [24] 1344 	mov	r0,_bp
      002585 08               [12] 1345 	inc	r0
      002586 A6 05            [24] 1346 	mov	@r0,ar5
      002588 E5 10            [12] 1347 	mov	a,_bp
      00258A 24 20            [12] 1348 	add	a,#0x20
      00258C F8               [12] 1349 	mov	r0,a
      00258D 76 00            [12] 1350 	mov	@r0,#0x00
      00258F D0 00            [24] 1351 	pop	ar0
      002591                       1352 00124$:
                                   1353 ;	walk.c:170: unsetOE(OE76_MASK7);
      002591 C0 05            [24] 1354 	push	ar5
      002593 75 82 80         [24] 1355 	mov	dpl,#0x80
      002596 C0 07            [24] 1356 	push	ar7
      002598 C0 05            [24] 1357 	push	ar5
      00259A C0 01            [24] 1358 	push	ar1
      00259C C0 00            [24] 1359 	push	ar0
      00259E 12 20 97         [24] 1360 	lcall	_unsetOE
      0025A1 D0 00            [24] 1361 	pop	ar0
      0025A3 D0 01            [24] 1362 	pop	ar1
      0025A5 D0 05            [24] 1363 	pop	ar5
      0025A7 D0 07            [24] 1364 	pop	ar7
                                   1365 ;	walk.c:172: if (update(&t, &cur, scramble[j])) {
      0025A9 C0 00            [24] 1366 	push	ar0
      0025AB E5 10            [12] 1367 	mov	a,_bp
      0025AD 24 20            [12] 1368 	add	a,#0x20
      0025AF F8               [12] 1369 	mov	r0,a
      0025B0 E6               [12] 1370 	mov	a,@r0
      0025B1 2F               [12] 1371 	add	a,r7
      0025B2 FA               [12] 1372 	mov	r2,a
      0025B3 A8 02            [24] 1373 	mov	r0,ar2
      0025B5 86 03            [24] 1374 	mov	ar3,@r0
      0025B7 A8 10            [24] 1375 	mov	r0,_bp
      0025B9 08               [12] 1376 	inc	r0
      0025BA C0 01            [24] 1377 	push	ar1
      0025BC E5 10            [12] 1378 	mov	a,_bp
      0025BE 24 04            [12] 1379 	add	a,#0x04
      0025C0 F9               [12] 1380 	mov	r1,a
      0025C1 E6               [12] 1381 	mov	a,@r0
      0025C2 F7               [12] 1382 	mov	@r1,a
      0025C3 09               [12] 1383 	inc	r1
      0025C4 77 00            [12] 1384 	mov	@r1,#0x00
      0025C6 09               [12] 1385 	inc	r1
      0025C7 77 40            [12] 1386 	mov	@r1,#0x40
      0025C9 D0 01            [24] 1387 	pop	ar1
      0025CB D0 00            [24] 1388 	pop	ar0
      0025CD 89 02            [24] 1389 	mov	ar2,r1
      0025CF 7C 00            [12] 1390 	mov	r4,#0x00
      0025D1 7E 40            [12] 1391 	mov	r6,#0x40
      0025D3 C0 07            [24] 1392 	push	ar7
      0025D5 C0 05            [24] 1393 	push	ar5
      0025D7 C0 01            [24] 1394 	push	ar1
      0025D9 C0 00            [24] 1395 	push	ar0
      0025DB C0 03            [24] 1396 	push	ar3
      0025DD 85 00 F0         [24] 1397 	mov	b,ar0
      0025E0 E5 10            [12] 1398 	mov	a,_bp
      0025E2 24 04            [12] 1399 	add	a,#0x04
      0025E4 F8               [12] 1400 	mov	r0,a
      0025E5 E6               [12] 1401 	mov	a,@r0
      0025E6 C0 E0            [24] 1402 	push	acc
      0025E8 08               [12] 1403 	inc	r0
      0025E9 E6               [12] 1404 	mov	a,@r0
      0025EA C0 E0            [24] 1405 	push	acc
      0025EC 08               [12] 1406 	inc	r0
      0025ED E6               [12] 1407 	mov	a,@r0
      0025EE C0 E0            [24] 1408 	push	acc
      0025F0 8A 82            [24] 1409 	mov	dpl,r2
      0025F2 8C 83            [24] 1410 	mov	dph,r4
      0025F4 8E F0            [24] 1411 	mov	b,r6
      0025F6 12 20 CA         [24] 1412 	lcall	_update
      0025F9 AE 82            [24] 1413 	mov	r6,dpl
      0025FB E5 81            [12] 1414 	mov	a,sp
      0025FD 24 FC            [12] 1415 	add	a,#0xfc
      0025FF F5 81            [12] 1416 	mov	sp,a
      002601 D0 00            [24] 1417 	pop	ar0
      002603 D0 01            [24] 1418 	pop	ar1
      002605 D0 05            [24] 1419 	pop	ar5
      002607 D0 07            [24] 1420 	pop	ar7
      002609 D0 05            [24] 1421 	pop	ar5
      00260B EE               [12] 1422 	mov	a,r6
      00260C 70 03            [24] 1423 	jnz	00192$
      00260E 02 26 E0         [24] 1424 	ljmp	00125$
      002611                       1425 00192$:
                                   1426 ;	walk.c:173: if (!qadd(&t)) bang();
      002611 C0 00            [24] 1427 	push	ar0
      002613 E5 10            [12] 1428 	mov	a,_bp
      002615 24 03            [12] 1429 	add	a,#0x03
      002617 F8               [12] 1430 	mov	r0,a
      002618 86 03            [24] 1431 	mov	ar3,@r0
      00261A 7C 00            [12] 1432 	mov	r4,#0x00
      00261C 7E 40            [12] 1433 	mov	r6,#0x40
      00261E D0 00            [24] 1434 	pop	ar0
      002620 8B 82            [24] 1435 	mov	dpl,r3
      002622 8C 83            [24] 1436 	mov	dph,r4
      002624 8E F0            [24] 1437 	mov	b,r6
      002626 C0 07            [24] 1438 	push	ar7
      002628 C0 05            [24] 1439 	push	ar5
      00262A C0 01            [24] 1440 	push	ar1
      00262C C0 00            [24] 1441 	push	ar0
      00262E 12 2A E9         [24] 1442 	lcall	_qadd
      002631 E5 82            [12] 1443 	mov	a,dpl
      002633 D0 00            [24] 1444 	pop	ar0
      002635 D0 01            [24] 1445 	pop	ar1
      002637 D0 05            [24] 1446 	pop	ar5
      002639 D0 07            [24] 1447 	pop	ar7
      00263B 70 13            [24] 1448 	jnz	00115$
      00263D C0 07            [24] 1449 	push	ar7
      00263F C0 05            [24] 1450 	push	ar5
      002641 C0 01            [24] 1451 	push	ar1
      002643 C0 00            [24] 1452 	push	ar0
      002645 12 20 71         [24] 1453 	lcall	_bang
      002648 D0 00            [24] 1454 	pop	ar0
      00264A D0 01            [24] 1455 	pop	ar1
      00264C D0 05            [24] 1456 	pop	ar5
      00264E D0 07            [24] 1457 	pop	ar7
      002650                       1458 00115$:
                                   1459 ;	walk.c:174: g[t.r][t.c] = 0xaau;
      002650 87 04            [24] 1460 	mov	ar4,@r1
      002652 09               [12] 1461 	inc	r1
      002653 87 06            [24] 1462 	mov	ar6,@r1
      002655 19               [12] 1463 	dec	r1
      002656 C0 07            [24] 1464 	push	ar7
      002658 C0 05            [24] 1465 	push	ar5
      00265A C0 01            [24] 1466 	push	ar1
      00265C C0 00            [24] 1467 	push	ar0
      00265E C0 04            [24] 1468 	push	ar4
      002660 C0 06            [24] 1469 	push	ar6
      002662 90 00 C0         [24] 1470 	mov	dptr,#0x00c0
      002665 12 2D 54         [24] 1471 	lcall	__mulint
      002668 AC 82            [24] 1472 	mov	r4,dpl
      00266A AE 83            [24] 1473 	mov	r6,dph
      00266C 15 81            [12] 1474 	dec	sp
      00266E 15 81            [12] 1475 	dec	sp
      002670 D0 00            [24] 1476 	pop	ar0
      002672 EC               [12] 1477 	mov	a,r4
      002673 24 00            [12] 1478 	add	a,#_g
      002675 FC               [12] 1479 	mov	r4,a
      002676 EE               [12] 1480 	mov	a,r6
      002677 34 48            [12] 1481 	addc	a,#(_g >> 8)
      002679 FE               [12] 1482 	mov	r6,a
      00267A 86 02            [24] 1483 	mov	ar2,@r0
      00267C 08               [12] 1484 	inc	r0
      00267D 86 03            [24] 1485 	mov	ar3,@r0
      00267F 18               [12] 1486 	dec	r0
      002680 EA               [12] 1487 	mov	a,r2
      002681 2C               [12] 1488 	add	a,r4
      002682 F5 82            [12] 1489 	mov	dpl,a
      002684 EB               [12] 1490 	mov	a,r3
      002685 3E               [12] 1491 	addc	a,r6
      002686 F5 83            [12] 1492 	mov	dph,a
      002688 74 AA            [12] 1493 	mov	a,#0xaa
      00268A F0               [24] 1494 	movx	@dptr,a
                                   1495 ;	walk.c:176: setOE(OE76_MASK7);
      00268B 75 82 80         [24] 1496 	mov	dpl,#0x80
      00268E C0 00            [24] 1497 	push	ar0
      002690 12 20 7E         [24] 1498 	lcall	_setOE
      002693 D0 00            [24] 1499 	pop	ar0
      002695 D0 01            [24] 1500 	pop	ar1
      002697 D0 05            [24] 1501 	pop	ar5
      002699 D0 07            [24] 1502 	pop	ar7
                                   1503 ;	walk.c:177: printf("\033[%d;%dHo", t.r + 4, t.c + 1);
      00269B 86 04            [24] 1504 	mov	ar4,@r0
      00269D 08               [12] 1505 	inc	r0
      00269E 86 06            [24] 1506 	mov	ar6,@r0
      0026A0 18               [12] 1507 	dec	r0
      0026A1 0C               [12] 1508 	inc	r4
      0026A2 BC 00 01         [24] 1509 	cjne	r4,#0x00,00194$
      0026A5 0E               [12] 1510 	inc	r6
      0026A6                       1511 00194$:
      0026A6 87 02            [24] 1512 	mov	ar2,@r1
      0026A8 09               [12] 1513 	inc	r1
      0026A9 87 03            [24] 1514 	mov	ar3,@r1
      0026AB 19               [12] 1515 	dec	r1
      0026AC 74 04            [12] 1516 	mov	a,#0x04
      0026AE 2A               [12] 1517 	add	a,r2
      0026AF FA               [12] 1518 	mov	r2,a
      0026B0 E4               [12] 1519 	clr	a
      0026B1 3B               [12] 1520 	addc	a,r3
      0026B2 FB               [12] 1521 	mov	r3,a
      0026B3 C0 07            [24] 1522 	push	ar7
      0026B5 C0 05            [24] 1523 	push	ar5
      0026B7 C0 01            [24] 1524 	push	ar1
      0026B9 C0 00            [24] 1525 	push	ar0
      0026BB C0 04            [24] 1526 	push	ar4
      0026BD C0 06            [24] 1527 	push	ar6
      0026BF C0 02            [24] 1528 	push	ar2
      0026C1 C0 03            [24] 1529 	push	ar3
      0026C3 74 82            [12] 1530 	mov	a,#___str_3
      0026C5 C0 E0            [24] 1531 	push	acc
      0026C7 74 45            [12] 1532 	mov	a,#(___str_3 >> 8)
      0026C9 C0 E0            [24] 1533 	push	acc
      0026CB 74 80            [12] 1534 	mov	a,#0x80
      0026CD C0 E0            [24] 1535 	push	acc
      0026CF 12 2F 0B         [24] 1536 	lcall	_printf
      0026D2 E5 81            [12] 1537 	mov	a,sp
      0026D4 24 F9            [12] 1538 	add	a,#0xf9
      0026D6 F5 81            [12] 1539 	mov	sp,a
      0026D8 D0 00            [24] 1540 	pop	ar0
      0026DA D0 01            [24] 1541 	pop	ar1
      0026DC D0 05            [24] 1542 	pop	ar5
      0026DE D0 07            [24] 1543 	pop	ar7
      0026E0                       1544 00125$:
                                   1545 ;	walk.c:169: for (j = 0u; j < NMAX; j++) {
      0026E0 C0 00            [24] 1546 	push	ar0
      0026E2 E5 10            [12] 1547 	mov	a,_bp
      0026E4 24 20            [12] 1548 	add	a,#0x20
      0026E6 F8               [12] 1549 	mov	r0,a
      0026E7 06               [12] 1550 	inc	@r0
      0026E8 E5 10            [12] 1551 	mov	a,_bp
      0026EA 24 20            [12] 1552 	add	a,#0x20
      0026EC F8               [12] 1553 	mov	r0,a
      0026ED B6 10 00         [24] 1554 	cjne	@r0,#0x10,00195$
      0026F0                       1555 00195$:
      0026F0 D0 00            [24] 1556 	pop	ar0
      0026F2 50 03            [24] 1557 	jnc	00196$
      0026F4 02 25 91         [24] 1558 	ljmp	00124$
      0026F7                       1559 00196$:
                                   1560 ;	walk.c:181: goto process;
      0026F7 02 23 F9         [24] 1561 	ljmp	00103$
                                   1562 ;	walk.c:183: term:
      0026FA                       1563 00119$:
                                   1564 ;	walk.c:184: return;
                                   1565 ;	walk.c:185: }
      0026FA 85 10 81         [24] 1566 	mov	sp,_bp
      0026FD D0 10            [24] 1567 	pop	_bp
      0026FF 22               [24] 1568 	ret
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
      002700                       1584 _main:
      002700 C0 10            [24] 1585 	push	_bp
      002702 E5 81            [12] 1586 	mov	a,sp
      002704 F5 10            [12] 1587 	mov	_bp,a
      002706 24 0C            [12] 1588 	add	a,#0x0c
      002708 F5 81            [12] 1589 	mov	sp,a
                                   1590 ;	walk.c:192: i0 = 1u;
      00270A 78 11            [12] 1591 	mov	r0,#_i0
      00270C 76 01            [12] 1592 	mov	@r0,#0x01
                                   1593 ;	walk.c:194: P1_7 = 1;
                                   1594 ;	assignBit
      00270E D2 97            [12] 1595 	setb	_P1_7
                                   1596 ;	walk.c:195: IT0 = 1;
                                   1597 ;	assignBit
      002710 D2 88            [12] 1598 	setb	_IT0
                                   1599 ;	walk.c:196: EX0 = 1;
                                   1600 ;	assignBit
      002712 D2 A8            [12] 1601 	setb	_EX0
                                   1602 ;	walk.c:197: EA = 1;
                                   1603 ;	assignBit
      002714 D2 AF            [12] 1604 	setb	_EA
                                   1605 ;	walk.c:199: srand(RND);
      002716 90 80 00         [24] 1606 	mov	dptr,#_RND
      002719 E0               [24] 1607 	movx	a,@dptr
      00271A FE               [12] 1608 	mov	r6,a
      00271B A3               [24] 1609 	inc	dptr
      00271C E0               [24] 1610 	movx	a,@dptr
      00271D FF               [12] 1611 	mov	r7,a
      00271E 8E 82            [24] 1612 	mov	dpl,r6
      002720 8F 83            [24] 1613 	mov	dph,r7
      002722 12 2D 20         [24] 1614 	lcall	_srand
                                   1615 ;	walk.c:200: qinit();
      002725 12 2A DB         [24] 1616 	lcall	_qinit
                                   1617 ;	walk.c:202: puts("\033[2J\033[?25l");
      002728 90 45 8C         [24] 1618 	mov	dptr,#___str_4
      00272B 75 F0 80         [24] 1619 	mov	b,#0x80
      00272E 12 2E 85         [24] 1620 	lcall	_puts
                                   1621 ;	walk.c:204: while (i0) {
      002731 E5 10            [12] 1622 	mov	a,_bp
      002733 24 05            [12] 1623 	add	a,#0x05
      002735 F9               [12] 1624 	mov	r1,a
      002736 FF               [12] 1625 	mov	r7,a
      002737 E5 10            [12] 1626 	mov	a,_bp
      002739 24 09            [12] 1627 	add	a,#0x09
      00273B F8               [12] 1628 	mov	r0,a
      00273C E4               [12] 1629 	clr	a
      00273D F6               [12] 1630 	mov	@r0,a
      00273E 08               [12] 1631 	inc	r0
      00273F F6               [12] 1632 	mov	@r0,a
      002740                       1633 00108$:
      002740 78 11            [12] 1634 	mov	r0,#_i0
      002742 E6               [12] 1635 	mov	a,@r0
      002743 70 03            [24] 1636 	jnz	00182$
      002745 02 2A C7         [24] 1637 	ljmp	00110$
      002748                       1638 00182$:
                                   1639 ;	walk.c:205: for (i = 0; i < ROWS; i++)
      002748 7B 00            [12] 1640 	mov	r3,#0x00
      00274A 7C 00            [12] 1641 	mov	r4,#0x00
      00274C A8 10            [24] 1642 	mov	r0,_bp
      00274E 08               [12] 1643 	inc	r0
      00274F E4               [12] 1644 	clr	a
      002750 F6               [12] 1645 	mov	@r0,a
      002751 08               [12] 1646 	inc	r0
      002752 F6               [12] 1647 	mov	@r0,a
                                   1648 ;	walk.c:206: for (j = 0; j < COLS; j++)
      002753                       1649 00125$:
      002753 A8 10            [24] 1650 	mov	r0,_bp
      002755 08               [12] 1651 	inc	r0
      002756 C0 01            [24] 1652 	push	ar1
      002758 E5 10            [12] 1653 	mov	a,_bp
      00275A 24 03            [12] 1654 	add	a,#0x03
      00275C F9               [12] 1655 	mov	r1,a
      00275D E6               [12] 1656 	mov	a,@r0
      00275E 24 00            [12] 1657 	add	a,#_g
      002760 F7               [12] 1658 	mov	@r1,a
      002761 08               [12] 1659 	inc	r0
      002762 E6               [12] 1660 	mov	a,@r0
      002763 34 48            [12] 1661 	addc	a,#(_g >> 8)
      002765 09               [12] 1662 	inc	r1
      002766 F7               [12] 1663 	mov	@r1,a
      002767 D0 01            [24] 1664 	pop	ar1
      002769 7A 00            [12] 1665 	mov	r2,#0x00
      00276B 7E 00            [12] 1666 	mov	r6,#0x00
      00276D                       1667 00112$:
                                   1668 ;	walk.c:207: g[i][j] = 0x55u;
      00276D E5 10            [12] 1669 	mov	a,_bp
      00276F 24 03            [12] 1670 	add	a,#0x03
      002771 F8               [12] 1671 	mov	r0,a
      002772 EA               [12] 1672 	mov	a,r2
      002773 26               [12] 1673 	add	a,@r0
      002774 F5 82            [12] 1674 	mov	dpl,a
      002776 EE               [12] 1675 	mov	a,r6
      002777 08               [12] 1676 	inc	r0
      002778 36               [12] 1677 	addc	a,@r0
      002779 F5 83            [12] 1678 	mov	dph,a
      00277B 74 55            [12] 1679 	mov	a,#0x55
      00277D F0               [24] 1680 	movx	@dptr,a
                                   1681 ;	walk.c:206: for (j = 0; j < COLS; j++)
      00277E 0A               [12] 1682 	inc	r2
      00277F BA 00 01         [24] 1683 	cjne	r2,#0x00,00183$
      002782 0E               [12] 1684 	inc	r6
      002783                       1685 00183$:
      002783 C3               [12] 1686 	clr	c
      002784 EA               [12] 1687 	mov	a,r2
      002785 94 C0            [12] 1688 	subb	a,#0xc0
      002787 EE               [12] 1689 	mov	a,r6
      002788 64 80            [12] 1690 	xrl	a,#0x80
      00278A 94 80            [12] 1691 	subb	a,#0x80
      00278C 40 DF            [24] 1692 	jc	00112$
                                   1693 ;	walk.c:205: for (i = 0; i < ROWS; i++)
      00278E A8 10            [24] 1694 	mov	r0,_bp
      002790 08               [12] 1695 	inc	r0
      002791 74 C0            [12] 1696 	mov	a,#0xc0
      002793 26               [12] 1697 	add	a,@r0
      002794 F6               [12] 1698 	mov	@r0,a
      002795 E4               [12] 1699 	clr	a
      002796 08               [12] 1700 	inc	r0
      002797 36               [12] 1701 	addc	a,@r0
      002798 F6               [12] 1702 	mov	@r0,a
      002799 0B               [12] 1703 	inc	r3
      00279A BB 00 01         [24] 1704 	cjne	r3,#0x00,00185$
      00279D 0C               [12] 1705 	inc	r4
      00279E                       1706 00185$:
      00279E C3               [12] 1707 	clr	c
      00279F EB               [12] 1708 	mov	a,r3
      0027A0 94 30            [12] 1709 	subb	a,#0x30
      0027A2 EC               [12] 1710 	mov	a,r4
      0027A3 64 80            [12] 1711 	xrl	a,#0x80
      0027A5 94 80            [12] 1712 	subb	a,#0x80
      0027A7 40 AA            [24] 1713 	jc	00125$
                                   1714 ;	walk.c:209: initial.r = rand() % ROWS;
      0027A9 E5 10            [12] 1715 	mov	a,_bp
      0027AB 24 05            [12] 1716 	add	a,#0x05
      0027AD F8               [12] 1717 	mov	r0,a
      0027AE C0 07            [24] 1718 	push	ar7
      0027B0 C0 01            [24] 1719 	push	ar1
      0027B2 C0 00            [24] 1720 	push	ar0
      0027B4 12 2C 5C         [24] 1721 	lcall	_rand
      0027B7 AD 82            [24] 1722 	mov	r5,dpl
      0027B9 AE 83            [24] 1723 	mov	r6,dph
      0027BB 74 30            [12] 1724 	mov	a,#0x30
      0027BD C0 E0            [24] 1725 	push	acc
      0027BF E4               [12] 1726 	clr	a
      0027C0 C0 E0            [24] 1727 	push	acc
      0027C2 8D 82            [24] 1728 	mov	dpl,r5
      0027C4 8E 83            [24] 1729 	mov	dph,r6
      0027C6 12 2F 60         [24] 1730 	lcall	__modsint
      0027C9 AD 82            [24] 1731 	mov	r5,dpl
      0027CB AE 83            [24] 1732 	mov	r6,dph
      0027CD 15 81            [12] 1733 	dec	sp
      0027CF 15 81            [12] 1734 	dec	sp
      0027D1 D0 00            [24] 1735 	pop	ar0
      0027D3 D0 01            [24] 1736 	pop	ar1
      0027D5 A6 05            [24] 1737 	mov	@r0,ar5
      0027D7 08               [12] 1738 	inc	r0
      0027D8 A6 06            [24] 1739 	mov	@r0,ar6
      0027DA 18               [12] 1740 	dec	r0
                                   1741 ;	walk.c:210: initial.c = rand() % COLS;
      0027DB 74 02            [12] 1742 	mov	a,#0x02
      0027DD 29               [12] 1743 	add	a,r1
      0027DE F8               [12] 1744 	mov	r0,a
      0027DF C0 01            [24] 1745 	push	ar1
      0027E1 C0 00            [24] 1746 	push	ar0
      0027E3 12 2C 5C         [24] 1747 	lcall	_rand
      0027E6 AD 82            [24] 1748 	mov	r5,dpl
      0027E8 AE 83            [24] 1749 	mov	r6,dph
      0027EA 74 C0            [12] 1750 	mov	a,#0xc0
      0027EC C0 E0            [24] 1751 	push	acc
      0027EE E4               [12] 1752 	clr	a
      0027EF C0 E0            [24] 1753 	push	acc
      0027F1 8D 82            [24] 1754 	mov	dpl,r5
      0027F3 8E 83            [24] 1755 	mov	dph,r6
      0027F5 12 2F 60         [24] 1756 	lcall	__modsint
      0027F8 AD 82            [24] 1757 	mov	r5,dpl
      0027FA AE 83            [24] 1758 	mov	r6,dph
      0027FC 15 81            [12] 1759 	dec	sp
      0027FE 15 81            [12] 1760 	dec	sp
      002800 D0 00            [24] 1761 	pop	ar0
      002802 A6 05            [24] 1762 	mov	@r0,ar5
      002804 08               [12] 1763 	inc	r0
      002805 A6 06            [24] 1764 	mov	@r0,ar6
      002807 18               [12] 1765 	dec	r0
                                   1766 ;	walk.c:212: puts("\033[2J\033[?25l");
      002808 90 45 8C         [24] 1767 	mov	dptr,#___str_4
      00280B 75 F0 80         [24] 1768 	mov	b,#0x80
      00280E C0 00            [24] 1769 	push	ar0
      002810 12 2E 85         [24] 1770 	lcall	_puts
      002813 D0 00            [24] 1771 	pop	ar0
      002815 D0 01            [24] 1772 	pop	ar1
                                   1773 ;	walk.c:213: printf("\033[1;1H% 8u% 8d% 8d", N, initial.r, initial.c);
      002817 86 05            [24] 1774 	mov	ar5,@r0
      002819 08               [12] 1775 	inc	r0
      00281A 86 06            [24] 1776 	mov	ar6,@r0
      00281C 18               [12] 1777 	dec	r0
      00281D 87 03            [24] 1778 	mov	ar3,@r1
      00281F 09               [12] 1779 	inc	r1
      002820 87 04            [24] 1780 	mov	ar4,@r1
      002822 19               [12] 1781 	dec	r1
      002823 C0 01            [24] 1782 	push	ar1
      002825 C0 05            [24] 1783 	push	ar5
      002827 C0 06            [24] 1784 	push	ar6
      002829 C0 03            [24] 1785 	push	ar3
      00282B C0 04            [24] 1786 	push	ar4
      00282D E5 10            [12] 1787 	mov	a,_bp
      00282F 24 09            [12] 1788 	add	a,#0x09
      002831 F8               [12] 1789 	mov	r0,a
      002832 E6               [12] 1790 	mov	a,@r0
      002833 C0 E0            [24] 1791 	push	acc
      002835 08               [12] 1792 	inc	r0
      002836 E6               [12] 1793 	mov	a,@r0
      002837 C0 E0            [24] 1794 	push	acc
      002839 74 97            [12] 1795 	mov	a,#___str_5
      00283B C0 E0            [24] 1796 	push	acc
      00283D 74 45            [12] 1797 	mov	a,#(___str_5 >> 8)
      00283F C0 E0            [24] 1798 	push	acc
      002841 74 80            [12] 1799 	mov	a,#0x80
      002843 C0 E0            [24] 1800 	push	acc
      002845 12 2F 0B         [24] 1801 	lcall	_printf
      002848 E5 81            [12] 1802 	mov	a,sp
      00284A 24 F7            [12] 1803 	add	a,#0xf7
      00284C F5 81            [12] 1804 	mov	sp,a
      00284E D0 01            [24] 1805 	pop	ar1
      002850 D0 07            [24] 1806 	pop	ar7
                                   1807 ;	walk.c:215: for (i = 0; i < REG; i++) {
      002852 E5 10            [12] 1808 	mov	a,_bp
      002854 24 0B            [12] 1809 	add	a,#0x0b
      002856 F8               [12] 1810 	mov	r0,a
      002857 E4               [12] 1811 	clr	a
      002858 F6               [12] 1812 	mov	@r0,a
      002859 08               [12] 1813 	inc	r0
      00285A F6               [12] 1814 	mov	@r0,a
      00285B                       1815 00116$:
                                   1816 ;	walk.c:216: neigh[i].r = neigh[REG + i].r * (1 + rand() % 32);
      00285B C0 07            [24] 1817 	push	ar7
      00285D E5 10            [12] 1818 	mov	a,_bp
      00285F 24 0B            [12] 1819 	add	a,#0x0b
      002861 F8               [12] 1820 	mov	r0,a
      002862 E6               [12] 1821 	mov	a,@r0
      002863 25 E0            [12] 1822 	add	a,acc
      002865 FB               [12] 1823 	mov	r3,a
      002866 08               [12] 1824 	inc	r0
      002867 E6               [12] 1825 	mov	a,@r0
      002868 33               [12] 1826 	rlc	a
      002869 FC               [12] 1827 	mov	r4,a
      00286A EB               [12] 1828 	mov	a,r3
      00286B 2B               [12] 1829 	add	a,r3
      00286C FB               [12] 1830 	mov	r3,a
      00286D EC               [12] 1831 	mov	a,r4
      00286E 33               [12] 1832 	rlc	a
      00286F FC               [12] 1833 	mov	r4,a
      002870 E5 10            [12] 1834 	mov	a,_bp
      002872 24 03            [12] 1835 	add	a,#0x03
      002874 F8               [12] 1836 	mov	r0,a
      002875 EB               [12] 1837 	mov	a,r3
      002876 24 04            [12] 1838 	add	a,#_neigh
      002878 F6               [12] 1839 	mov	@r0,a
      002879 EC               [12] 1840 	mov	a,r4
      00287A 34 FC            [12] 1841 	addc	a,#(_neigh >> 8)
      00287C 08               [12] 1842 	inc	r0
      00287D F6               [12] 1843 	mov	@r0,a
      00287E E5 10            [12] 1844 	mov	a,_bp
      002880 24 0B            [12] 1845 	add	a,#0x0b
      002882 F8               [12] 1846 	mov	r0,a
      002883 86 06            [24] 1847 	mov	ar6,@r0
      002885 74 08            [12] 1848 	mov	a,#0x08
      002887 2E               [12] 1849 	add	a,r6
      002888 FE               [12] 1850 	mov	r6,a
      002889 C2 D5            [12] 1851 	clr	F0
      00288B 75 F0 04         [24] 1852 	mov	b,#0x04
      00288E EE               [12] 1853 	mov	a,r6
      00288F 30 E7 04         [24] 1854 	jnb	acc.7,00187$
      002892 B2 D5            [12] 1855 	cpl	F0
      002894 F4               [12] 1856 	cpl	a
      002895 04               [12] 1857 	inc	a
      002896                       1858 00187$:
      002896 A4               [48] 1859 	mul	ab
      002897 30 D5 0A         [24] 1860 	jnb	F0,00188$
      00289A F4               [12] 1861 	cpl	a
      00289B 24 01            [12] 1862 	add	a,#0x01
      00289D C5 F0            [12] 1863 	xch	a,b
      00289F F4               [12] 1864 	cpl	a
      0028A0 34 00            [12] 1865 	addc	a,#0x00
      0028A2 C5 F0            [12] 1866 	xch	a,b
      0028A4                       1867 00188$:
      0028A4 FE               [12] 1868 	mov	r6,a
      0028A5 AD F0            [24] 1869 	mov	r5,b
      0028A7 24 04            [12] 1870 	add	a,#_neigh
      0028A9 F5 82            [12] 1871 	mov	dpl,a
      0028AB ED               [12] 1872 	mov	a,r5
      0028AC 34 FC            [12] 1873 	addc	a,#(_neigh >> 8)
      0028AE F5 83            [12] 1874 	mov	dph,a
      0028B0 A8 10            [24] 1875 	mov	r0,_bp
      0028B2 08               [12] 1876 	inc	r0
      0028B3 E0               [24] 1877 	movx	a,@dptr
      0028B4 F6               [12] 1878 	mov	@r0,a
      0028B5 A3               [24] 1879 	inc	dptr
      0028B6 E0               [24] 1880 	movx	a,@dptr
      0028B7 08               [12] 1881 	inc	r0
      0028B8 F6               [12] 1882 	mov	@r0,a
      0028B9 C0 06            [24] 1883 	push	ar6
      0028BB C0 05            [24] 1884 	push	ar5
      0028BD C0 04            [24] 1885 	push	ar4
      0028BF C0 03            [24] 1886 	push	ar3
      0028C1 C0 01            [24] 1887 	push	ar1
      0028C3 12 2C 5C         [24] 1888 	lcall	_rand
      0028C6 AA 82            [24] 1889 	mov	r2,dpl
      0028C8 AF 83            [24] 1890 	mov	r7,dph
      0028CA 74 20            [12] 1891 	mov	a,#0x20
      0028CC C0 E0            [24] 1892 	push	acc
      0028CE E4               [12] 1893 	clr	a
      0028CF C0 E0            [24] 1894 	push	acc
      0028D1 8A 82            [24] 1895 	mov	dpl,r2
      0028D3 8F 83            [24] 1896 	mov	dph,r7
      0028D5 12 2F 60         [24] 1897 	lcall	__modsint
      0028D8 AA 82            [24] 1898 	mov	r2,dpl
      0028DA AF 83            [24] 1899 	mov	r7,dph
      0028DC 15 81            [12] 1900 	dec	sp
      0028DE 15 81            [12] 1901 	dec	sp
      0028E0 D0 01            [24] 1902 	pop	ar1
      0028E2 D0 03            [24] 1903 	pop	ar3
      0028E4 D0 04            [24] 1904 	pop	ar4
      0028E6 D0 05            [24] 1905 	pop	ar5
      0028E8 D0 06            [24] 1906 	pop	ar6
      0028EA 0A               [12] 1907 	inc	r2
      0028EB BA 00 01         [24] 1908 	cjne	r2,#0x00,00189$
      0028EE 0F               [12] 1909 	inc	r7
      0028EF                       1910 00189$:
      0028EF C0 06            [24] 1911 	push	ar6
      0028F1 C0 05            [24] 1912 	push	ar5
      0028F3 C0 04            [24] 1913 	push	ar4
      0028F5 C0 03            [24] 1914 	push	ar3
      0028F7 C0 01            [24] 1915 	push	ar1
      0028F9 C0 02            [24] 1916 	push	ar2
      0028FB C0 07            [24] 1917 	push	ar7
      0028FD A8 10            [24] 1918 	mov	r0,_bp
      0028FF 08               [12] 1919 	inc	r0
      002900 86 82            [24] 1920 	mov	dpl,@r0
      002902 08               [12] 1921 	inc	r0
      002903 86 83            [24] 1922 	mov	dph,@r0
      002905 12 2D 54         [24] 1923 	lcall	__mulint
      002908 AA 82            [24] 1924 	mov	r2,dpl
      00290A AF 83            [24] 1925 	mov	r7,dph
      00290C 15 81            [12] 1926 	dec	sp
      00290E 15 81            [12] 1927 	dec	sp
      002910 D0 01            [24] 1928 	pop	ar1
      002912 D0 03            [24] 1929 	pop	ar3
      002914 D0 04            [24] 1930 	pop	ar4
      002916 D0 05            [24] 1931 	pop	ar5
      002918 D0 06            [24] 1932 	pop	ar6
      00291A E5 10            [12] 1933 	mov	a,_bp
      00291C 24 03            [12] 1934 	add	a,#0x03
      00291E F8               [12] 1935 	mov	r0,a
      00291F 86 82            [24] 1936 	mov	dpl,@r0
      002921 08               [12] 1937 	inc	r0
      002922 86 83            [24] 1938 	mov	dph,@r0
      002924 EA               [12] 1939 	mov	a,r2
      002925 F0               [24] 1940 	movx	@dptr,a
      002926 EF               [12] 1941 	mov	a,r7
      002927 A3               [24] 1942 	inc	dptr
      002928 F0               [24] 1943 	movx	@dptr,a
                                   1944 ;	walk.c:217: neigh[i].c = neigh[REG + i].c * (1 + rand() % 32);
      002929 EB               [12] 1945 	mov	a,r3
      00292A 24 04            [12] 1946 	add	a,#_neigh
      00292C FB               [12] 1947 	mov	r3,a
      00292D EC               [12] 1948 	mov	a,r4
      00292E 34 FC            [12] 1949 	addc	a,#(_neigh >> 8)
      002930 FC               [12] 1950 	mov	r4,a
      002931 74 02            [12] 1951 	mov	a,#0x02
      002933 2B               [12] 1952 	add	a,r3
      002934 FA               [12] 1953 	mov	r2,a
      002935 E4               [12] 1954 	clr	a
      002936 3C               [12] 1955 	addc	a,r4
      002937 FF               [12] 1956 	mov	r7,a
      002938 EE               [12] 1957 	mov	a,r6
      002939 24 04            [12] 1958 	add	a,#_neigh
      00293B FE               [12] 1959 	mov	r6,a
      00293C ED               [12] 1960 	mov	a,r5
      00293D 34 FC            [12] 1961 	addc	a,#(_neigh >> 8)
      00293F FD               [12] 1962 	mov	r5,a
      002940 8E 82            [24] 1963 	mov	dpl,r6
      002942 8D 83            [24] 1964 	mov	dph,r5
      002944 A3               [24] 1965 	inc	dptr
      002945 A3               [24] 1966 	inc	dptr
      002946 E5 10            [12] 1967 	mov	a,_bp
      002948 24 03            [12] 1968 	add	a,#0x03
      00294A F8               [12] 1969 	mov	r0,a
      00294B E0               [24] 1970 	movx	a,@dptr
      00294C F6               [12] 1971 	mov	@r0,a
      00294D A3               [24] 1972 	inc	dptr
      00294E E0               [24] 1973 	movx	a,@dptr
      00294F 08               [12] 1974 	inc	r0
      002950 F6               [12] 1975 	mov	@r0,a
      002951 C0 07            [24] 1976 	push	ar7
      002953 C0 04            [24] 1977 	push	ar4
      002955 C0 03            [24] 1978 	push	ar3
      002957 C0 02            [24] 1979 	push	ar2
      002959 C0 01            [24] 1980 	push	ar1
      00295B 12 2C 5C         [24] 1981 	lcall	_rand
      00295E AD 82            [24] 1982 	mov	r5,dpl
      002960 AE 83            [24] 1983 	mov	r6,dph
      002962 74 20            [12] 1984 	mov	a,#0x20
      002964 C0 E0            [24] 1985 	push	acc
      002966 E4               [12] 1986 	clr	a
      002967 C0 E0            [24] 1987 	push	acc
      002969 8D 82            [24] 1988 	mov	dpl,r5
      00296B 8E 83            [24] 1989 	mov	dph,r6
      00296D 12 2F 60         [24] 1990 	lcall	__modsint
      002970 AD 82            [24] 1991 	mov	r5,dpl
      002972 AE 83            [24] 1992 	mov	r6,dph
      002974 15 81            [12] 1993 	dec	sp
      002976 15 81            [12] 1994 	dec	sp
      002978 D0 01            [24] 1995 	pop	ar1
      00297A D0 02            [24] 1996 	pop	ar2
      00297C D0 03            [24] 1997 	pop	ar3
      00297E D0 04            [24] 1998 	pop	ar4
      002980 D0 07            [24] 1999 	pop	ar7
      002982 0D               [12] 2000 	inc	r5
      002983 BD 00 01         [24] 2001 	cjne	r5,#0x00,00190$
      002986 0E               [12] 2002 	inc	r6
      002987                       2003 00190$:
      002987 C0 07            [24] 2004 	push	ar7
      002989 C0 04            [24] 2005 	push	ar4
      00298B C0 03            [24] 2006 	push	ar3
      00298D C0 02            [24] 2007 	push	ar2
      00298F C0 01            [24] 2008 	push	ar1
      002991 C0 05            [24] 2009 	push	ar5
      002993 C0 06            [24] 2010 	push	ar6
      002995 E5 10            [12] 2011 	mov	a,_bp
      002997 24 03            [12] 2012 	add	a,#0x03
      002999 F8               [12] 2013 	mov	r0,a
      00299A 86 82            [24] 2014 	mov	dpl,@r0
      00299C 08               [12] 2015 	inc	r0
      00299D 86 83            [24] 2016 	mov	dph,@r0
      00299F 12 2D 54         [24] 2017 	lcall	__mulint
      0029A2 AD 82            [24] 2018 	mov	r5,dpl
      0029A4 AE 83            [24] 2019 	mov	r6,dph
      0029A6 15 81            [12] 2020 	dec	sp
      0029A8 15 81            [12] 2021 	dec	sp
      0029AA D0 01            [24] 2022 	pop	ar1
      0029AC D0 02            [24] 2023 	pop	ar2
      0029AE D0 03            [24] 2024 	pop	ar3
      0029B0 D0 04            [24] 2025 	pop	ar4
      0029B2 D0 07            [24] 2026 	pop	ar7
      0029B4 8A 82            [24] 2027 	mov	dpl,r2
      0029B6 8F 83            [24] 2028 	mov	dph,r7
      0029B8 ED               [12] 2029 	mov	a,r5
      0029B9 F0               [24] 2030 	movx	@dptr,a
      0029BA EE               [12] 2031 	mov	a,r6
      0029BB A3               [24] 2032 	inc	dptr
      0029BC F0               [24] 2033 	movx	@dptr,a
                                   2034 ;	walk.c:218: printf("% 8d% 8d", neigh[i].r, neigh[i].c);
      0029BD 8B 82            [24] 2035 	mov	dpl,r3
      0029BF 8C 83            [24] 2036 	mov	dph,r4
      0029C1 E0               [24] 2037 	movx	a,@dptr
      0029C2 FB               [12] 2038 	mov	r3,a
      0029C3 A3               [24] 2039 	inc	dptr
      0029C4 E0               [24] 2040 	movx	a,@dptr
      0029C5 FC               [12] 2041 	mov	r4,a
      0029C6 C0 07            [24] 2042 	push	ar7
      0029C8 C0 01            [24] 2043 	push	ar1
      0029CA C0 05            [24] 2044 	push	ar5
      0029CC C0 06            [24] 2045 	push	ar6
      0029CE C0 03            [24] 2046 	push	ar3
      0029D0 C0 04            [24] 2047 	push	ar4
      0029D2 74 AA            [12] 2048 	mov	a,#___str_6
      0029D4 C0 E0            [24] 2049 	push	acc
      0029D6 74 45            [12] 2050 	mov	a,#(___str_6 >> 8)
      0029D8 C0 E0            [24] 2051 	push	acc
      0029DA 74 80            [12] 2052 	mov	a,#0x80
      0029DC C0 E0            [24] 2053 	push	acc
      0029DE 12 2F 0B         [24] 2054 	lcall	_printf
      0029E1 E5 81            [12] 2055 	mov	a,sp
      0029E3 24 F9            [12] 2056 	add	a,#0xf9
      0029E5 F5 81            [12] 2057 	mov	sp,a
      0029E7 D0 01            [24] 2058 	pop	ar1
      0029E9 D0 07            [24] 2059 	pop	ar7
                                   2060 ;	walk.c:215: for (i = 0; i < REG; i++) {
      0029EB E5 10            [12] 2061 	mov	a,_bp
      0029ED 24 0B            [12] 2062 	add	a,#0x0b
      0029EF F8               [12] 2063 	mov	r0,a
      0029F0 06               [12] 2064 	inc	@r0
      0029F1 B6 00 02         [24] 2065 	cjne	@r0,#0x00,00191$
      0029F4 08               [12] 2066 	inc	r0
      0029F5 06               [12] 2067 	inc	@r0
      0029F6                       2068 00191$:
      0029F6 E5 10            [12] 2069 	mov	a,_bp
      0029F8 24 0B            [12] 2070 	add	a,#0x0b
      0029FA F8               [12] 2071 	mov	r0,a
      0029FB 86 05            [24] 2072 	mov	ar5,@r0
      0029FD 08               [12] 2073 	inc	r0
      0029FE 86 06            [24] 2074 	mov	ar6,@r0
      002A00 C3               [12] 2075 	clr	c
      002A01 ED               [12] 2076 	mov	a,r5
      002A02 94 08            [12] 2077 	subb	a,#0x08
      002A04 EE               [12] 2078 	mov	a,r6
      002A05 94 00            [12] 2079 	subb	a,#0x00
      002A07 D0 07            [24] 2080 	pop	ar7
      002A09 50 03            [24] 2081 	jnc	00192$
      002A0B 02 28 5B         [24] 2082 	ljmp	00116$
      002A0E                       2083 00192$:
                                   2084 ;	walk.c:221: OE76 = OE76_0;
      002A0E 78 12            [12] 2085 	mov	r0,#_OE76
      002A10 76 3F            [12] 2086 	mov	@r0,#0x3f
                                   2087 ;	walk.c:222: setOE(OE76_NC);
      002A12 75 82 00         [24] 2088 	mov	dpl,#0x00
      002A15 C0 07            [24] 2089 	push	ar7
      002A17 C0 01            [24] 2090 	push	ar1
      002A19 12 20 7E         [24] 2091 	lcall	_setOE
      002A1C D0 01            [24] 2092 	pop	ar1
      002A1E D0 07            [24] 2093 	pop	ar7
                                   2094 ;	walk.c:224: walk(&initial);
      002A20 8F 04            [24] 2095 	mov	ar4,r7
      002A22 7D 00            [12] 2096 	mov	r5,#0x00
      002A24 7E 40            [12] 2097 	mov	r6,#0x40
      002A26 8C 82            [24] 2098 	mov	dpl,r4
      002A28 8D 83            [24] 2099 	mov	dph,r5
      002A2A 8E F0            [24] 2100 	mov	b,r6
      002A2C C0 07            [24] 2101 	push	ar7
      002A2E C0 01            [24] 2102 	push	ar1
      002A30 12 23 57         [24] 2103 	lcall	_walk
      002A33 D0 01            [24] 2104 	pop	ar1
      002A35 D0 07            [24] 2105 	pop	ar7
                                   2106 ;	walk.c:226: for (i = 0; i < ROWS; i++)
      002A37 E5 10            [12] 2107 	mov	a,_bp
      002A39 24 0B            [12] 2108 	add	a,#0x0b
      002A3B F8               [12] 2109 	mov	r0,a
      002A3C E4               [12] 2110 	clr	a
      002A3D F6               [12] 2111 	mov	@r0,a
      002A3E 08               [12] 2112 	inc	r0
      002A3F F6               [12] 2113 	mov	@r0,a
      002A40 7B 00            [12] 2114 	mov	r3,#0x00
      002A42 7C 00            [12] 2115 	mov	r4,#0x00
                                   2116 ;	walk.c:227: for (j = 0; j < COLS; j++)
      002A44                       2117 00132$:
      002A44 E5 10            [12] 2118 	mov	a,_bp
      002A46 24 03            [12] 2119 	add	a,#0x03
      002A48 F8               [12] 2120 	mov	r0,a
      002A49 EB               [12] 2121 	mov	a,r3
      002A4A 24 00            [12] 2122 	add	a,#_g
      002A4C F6               [12] 2123 	mov	@r0,a
      002A4D EC               [12] 2124 	mov	a,r4
      002A4E 34 48            [12] 2125 	addc	a,#(_g >> 8)
      002A50 08               [12] 2126 	inc	r0
      002A51 F6               [12] 2127 	mov	@r0,a
      002A52 7A 00            [12] 2128 	mov	r2,#0x00
      002A54 7E 00            [12] 2129 	mov	r6,#0x00
      002A56                       2130 00118$:
                                   2131 ;	walk.c:228: if (g[i][j] != 0xaau) bang();
      002A56 E5 10            [12] 2132 	mov	a,_bp
      002A58 24 03            [12] 2133 	add	a,#0x03
      002A5A F8               [12] 2134 	mov	r0,a
      002A5B EA               [12] 2135 	mov	a,r2
      002A5C 26               [12] 2136 	add	a,@r0
      002A5D F5 82            [12] 2137 	mov	dpl,a
      002A5F EE               [12] 2138 	mov	a,r6
      002A60 08               [12] 2139 	inc	r0
      002A61 36               [12] 2140 	addc	a,@r0
      002A62 F5 83            [12] 2141 	mov	dph,a
      002A64 E0               [24] 2142 	movx	a,@dptr
      002A65 FD               [12] 2143 	mov	r5,a
      002A66 BD AA 02         [24] 2144 	cjne	r5,#0xaa,00193$
      002A69 80 1B            [24] 2145 	sjmp	00119$
      002A6B                       2146 00193$:
      002A6B C0 07            [24] 2147 	push	ar7
      002A6D C0 06            [24] 2148 	push	ar6
      002A6F C0 04            [24] 2149 	push	ar4
      002A71 C0 03            [24] 2150 	push	ar3
      002A73 C0 02            [24] 2151 	push	ar2
      002A75 C0 01            [24] 2152 	push	ar1
      002A77 12 20 71         [24] 2153 	lcall	_bang
      002A7A D0 01            [24] 2154 	pop	ar1
      002A7C D0 02            [24] 2155 	pop	ar2
      002A7E D0 03            [24] 2156 	pop	ar3
      002A80 D0 04            [24] 2157 	pop	ar4
      002A82 D0 06            [24] 2158 	pop	ar6
      002A84 D0 07            [24] 2159 	pop	ar7
      002A86                       2160 00119$:
                                   2161 ;	walk.c:227: for (j = 0; j < COLS; j++)
      002A86 0A               [12] 2162 	inc	r2
      002A87 BA 00 01         [24] 2163 	cjne	r2,#0x00,00194$
      002A8A 0E               [12] 2164 	inc	r6
      002A8B                       2165 00194$:
      002A8B C3               [12] 2166 	clr	c
      002A8C EA               [12] 2167 	mov	a,r2
      002A8D 94 C0            [12] 2168 	subb	a,#0xc0
      002A8F EE               [12] 2169 	mov	a,r6
      002A90 64 80            [12] 2170 	xrl	a,#0x80
      002A92 94 80            [12] 2171 	subb	a,#0x80
      002A94 40 C0            [24] 2172 	jc	00118$
                                   2173 ;	walk.c:226: for (i = 0; i < ROWS; i++)
      002A96 74 C0            [12] 2174 	mov	a,#0xc0
      002A98 2B               [12] 2175 	add	a,r3
      002A99 FB               [12] 2176 	mov	r3,a
      002A9A E4               [12] 2177 	clr	a
      002A9B 3C               [12] 2178 	addc	a,r4
      002A9C FC               [12] 2179 	mov	r4,a
      002A9D E5 10            [12] 2180 	mov	a,_bp
      002A9F 24 0B            [12] 2181 	add	a,#0x0b
      002AA1 F8               [12] 2182 	mov	r0,a
      002AA2 06               [12] 2183 	inc	@r0
      002AA3 B6 00 02         [24] 2184 	cjne	@r0,#0x00,00196$
      002AA6 08               [12] 2185 	inc	r0
      002AA7 06               [12] 2186 	inc	@r0
      002AA8                       2187 00196$:
      002AA8 E5 10            [12] 2188 	mov	a,_bp
      002AAA 24 0B            [12] 2189 	add	a,#0x0b
      002AAC F8               [12] 2190 	mov	r0,a
      002AAD C3               [12] 2191 	clr	c
      002AAE E6               [12] 2192 	mov	a,@r0
      002AAF 94 30            [12] 2193 	subb	a,#0x30
      002AB1 08               [12] 2194 	inc	r0
      002AB2 E6               [12] 2195 	mov	a,@r0
      002AB3 64 80            [12] 2196 	xrl	a,#0x80
      002AB5 94 80            [12] 2197 	subb	a,#0x80
      002AB7 40 8B            [24] 2198 	jc	00132$
                                   2199 ;	walk.c:230: N++;
      002AB9 E5 10            [12] 2200 	mov	a,_bp
      002ABB 24 09            [12] 2201 	add	a,#0x09
      002ABD F8               [12] 2202 	mov	r0,a
      002ABE 06               [12] 2203 	inc	@r0
      002ABF B6 00 02         [24] 2204 	cjne	@r0,#0x00,00198$
      002AC2 08               [12] 2205 	inc	r0
      002AC3 06               [12] 2206 	inc	@r0
      002AC4                       2207 00198$:
      002AC4 02 27 40         [24] 2208 	ljmp	00108$
      002AC7                       2209 00110$:
                                   2210 ;	walk.c:233: EA = 0;
                                   2211 ;	assignBit
      002AC7 C2 AF            [12] 2212 	clr	_EA
                                   2213 ;	walk.c:235: puts("\033[2J\033[?25h");
      002AC9 90 45 B3         [24] 2214 	mov	dptr,#___str_7
      002ACC 75 F0 80         [24] 2215 	mov	b,#0x80
      002ACF 12 2E 85         [24] 2216 	lcall	_puts
                                   2217 ;	walk.c:17: PCON |= 2;
      002AD2 43 87 02         [24] 2218 	orl	_PCON,#0x02
                                   2219 ;	walk.c:239: return;
                                   2220 ;	walk.c:240: }
      002AD5 85 10 81         [24] 2221 	mov	sp,_bp
      002AD8 D0 10            [24] 2222 	pop	_bp
      002ADA 22               [24] 2223 	ret
                                   2224 ;------------------------------------------------------------
                                   2225 ;Allocation info for local variables in function 'qinit'
                                   2226 ;------------------------------------------------------------
                                   2227 ;	walk.c:242: static void qinit(void) {
                                   2228 ;	-----------------------------------------
                                   2229 ;	 function qinit
                                   2230 ;	-----------------------------------------
      002ADB                       2231 _qinit:
                                   2232 ;	walk.c:243: hp = tp = 0;
      002ADB 90 FC 02         [24] 2233 	mov	dptr,#_tp
      002ADE E4               [12] 2234 	clr	a
      002ADF F0               [24] 2235 	movx	@dptr,a
      002AE0 A3               [24] 2236 	inc	dptr
      002AE1 F0               [24] 2237 	movx	@dptr,a
      002AE2 90 FC 00         [24] 2238 	mov	dptr,#_hp
      002AE5 F0               [24] 2239 	movx	@dptr,a
      002AE6 A3               [24] 2240 	inc	dptr
      002AE7 F0               [24] 2241 	movx	@dptr,a
                                   2242 ;	walk.c:244: return;
                                   2243 ;	walk.c:245: }
      002AE8 22               [24] 2244 	ret
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
      002AE9                       2258 _qadd:
      002AE9 C0 10            [24] 2259 	push	_bp
      002AEB E5 81            [12] 2260 	mov	a,sp
      002AED F5 10            [12] 2261 	mov	_bp,a
      002AEF 24 06            [12] 2262 	add	a,#0x06
      002AF1 F5 81            [12] 2263 	mov	sp,a
      002AF3 AF 82            [24] 2264 	mov	r7,dpl
      002AF5 AD 83            [24] 2265 	mov	r5,dph
      002AF7 AE F0            [24] 2266 	mov	r6,b
                                   2267 ;	walk.c:248: if (((hp + 1) % QMAX) == tp) return 0u;
      002AF9 90 FC 00         [24] 2268 	mov	dptr,#_hp
      002AFC E0               [24] 2269 	movx	a,@dptr
      002AFD FB               [12] 2270 	mov	r3,a
      002AFE A3               [24] 2271 	inc	dptr
      002AFF E0               [24] 2272 	movx	a,@dptr
      002B00 FC               [12] 2273 	mov	r4,a
      002B01 A8 10            [24] 2274 	mov	r0,_bp
      002B03 08               [12] 2275 	inc	r0
      002B04 74 01            [12] 2276 	mov	a,#0x01
      002B06 2B               [12] 2277 	add	a,r3
      002B07 F6               [12] 2278 	mov	@r0,a
      002B08 E4               [12] 2279 	clr	a
      002B09 3C               [12] 2280 	addc	a,r4
      002B0A 08               [12] 2281 	inc	r0
      002B0B F6               [12] 2282 	mov	@r0,a
      002B0C C0 07            [24] 2283 	push	ar7
      002B0E C0 06            [24] 2284 	push	ar6
      002B10 C0 05            [24] 2285 	push	ar5
      002B12 C0 04            [24] 2286 	push	ar4
      002B14 C0 03            [24] 2287 	push	ar3
      002B16 E4               [12] 2288 	clr	a
      002B17 C0 E0            [24] 2289 	push	acc
      002B19 74 24            [12] 2290 	mov	a,#0x24
      002B1B C0 E0            [24] 2291 	push	acc
      002B1D A8 10            [24] 2292 	mov	r0,_bp
      002B1F 08               [12] 2293 	inc	r0
      002B20 86 82            [24] 2294 	mov	dpl,@r0
      002B22 08               [12] 2295 	inc	r0
      002B23 86 83            [24] 2296 	mov	dph,@r0
      002B25 12 2F 60         [24] 2297 	lcall	__modsint
      002B28 A8 10            [24] 2298 	mov	r0,_bp
      002B2A 08               [12] 2299 	inc	r0
      002B2B 08               [12] 2300 	inc	r0
      002B2C 08               [12] 2301 	inc	r0
      002B2D A6 82            [24] 2302 	mov	@r0,dpl
      002B2F 08               [12] 2303 	inc	r0
      002B30 A6 83            [24] 2304 	mov	@r0,dph
      002B32 15 81            [12] 2305 	dec	sp
      002B34 15 81            [12] 2306 	dec	sp
      002B36 D0 03            [24] 2307 	pop	ar3
      002B38 D0 04            [24] 2308 	pop	ar4
      002B3A D0 05            [24] 2309 	pop	ar5
      002B3C D0 06            [24] 2310 	pop	ar6
      002B3E D0 07            [24] 2311 	pop	ar7
      002B40 90 FC 02         [24] 2312 	mov	dptr,#_tp
      002B43 E5 10            [12] 2313 	mov	a,_bp
      002B45 24 05            [12] 2314 	add	a,#0x05
      002B47 F8               [12] 2315 	mov	r0,a
      002B48 E0               [24] 2316 	movx	a,@dptr
      002B49 F6               [12] 2317 	mov	@r0,a
      002B4A A3               [24] 2318 	inc	dptr
      002B4B E0               [24] 2319 	movx	a,@dptr
      002B4C 08               [12] 2320 	inc	r0
      002B4D F6               [12] 2321 	mov	@r0,a
      002B4E E5 10            [12] 2322 	mov	a,_bp
      002B50 24 03            [12] 2323 	add	a,#0x03
      002B52 F8               [12] 2324 	mov	r0,a
      002B53 E5 10            [12] 2325 	mov	a,_bp
      002B55 24 05            [12] 2326 	add	a,#0x05
      002B57 F9               [12] 2327 	mov	r1,a
      002B58 86 F0            [24] 2328 	mov	b,@r0
      002B5A E7               [12] 2329 	mov	a,@r1
      002B5B B5 F0 0A         [24] 2330 	cjne	a,b,00109$
      002B5E 08               [12] 2331 	inc	r0
      002B5F 86 F0            [24] 2332 	mov	b,@r0
      002B61 09               [12] 2333 	inc	r1
      002B62 E7               [12] 2334 	mov	a,@r1
      002B63 B5 F0 02         [24] 2335 	cjne	a,b,00109$
      002B66 80 02            [24] 2336 	sjmp	00110$
      002B68                       2337 00109$:
      002B68 80 05            [24] 2338 	sjmp	00102$
      002B6A                       2339 00110$:
      002B6A 75 82 00         [24] 2340 	mov	dpl,#0x00
      002B6D 80 64            [24] 2341 	sjmp	00103$
      002B6F                       2342 00102$:
                                   2343 ;	walk.c:249: queue[hp] = *t;
      002B6F 8F 02            [24] 2344 	mov	ar2,r7
      002B71 8E 07            [24] 2345 	mov	ar7,r6
      002B73 EB               [12] 2346 	mov	a,r3
      002B74 2B               [12] 2347 	add	a,r3
      002B75 FB               [12] 2348 	mov	r3,a
      002B76 EC               [12] 2349 	mov	a,r4
      002B77 33               [12] 2350 	rlc	a
      002B78 FC               [12] 2351 	mov	r4,a
      002B79 EB               [12] 2352 	mov	a,r3
      002B7A 2B               [12] 2353 	add	a,r3
      002B7B FB               [12] 2354 	mov	r3,a
      002B7C EC               [12] 2355 	mov	a,r4
      002B7D 33               [12] 2356 	rlc	a
      002B7E FC               [12] 2357 	mov	r4,a
      002B7F EB               [12] 2358 	mov	a,r3
      002B80 24 00            [12] 2359 	add	a,#_queue
      002B82 FB               [12] 2360 	mov	r3,a
      002B83 EC               [12] 2361 	mov	a,r4
      002B84 34 6C            [12] 2362 	addc	a,#(_queue >> 8)
      002B86 FC               [12] 2363 	mov	r4,a
      002B87 7E 00            [12] 2364 	mov	r6,#0x00
      002B89 74 04            [12] 2365 	mov	a,#0x04
      002B8B C0 E0            [24] 2366 	push	acc
      002B8D E4               [12] 2367 	clr	a
      002B8E C0 E0            [24] 2368 	push	acc
      002B90 C0 02            [24] 2369 	push	ar2
      002B92 C0 05            [24] 2370 	push	ar5
      002B94 C0 07            [24] 2371 	push	ar7
      002B96 8B 82            [24] 2372 	mov	dpl,r3
      002B98 8C 83            [24] 2373 	mov	dph,r4
      002B9A 8E F0            [24] 2374 	mov	b,r6
      002B9C 12 2D F2         [24] 2375 	lcall	___memcpy
      002B9F E5 81            [12] 2376 	mov	a,sp
      002BA1 24 FB            [12] 2377 	add	a,#0xfb
      002BA3 F5 81            [12] 2378 	mov	sp,a
                                   2379 ;	walk.c:250: hp = (hp + 1) % QMAX;
      002BA5 90 FC 00         [24] 2380 	mov	dptr,#_hp
      002BA8 E0               [24] 2381 	movx	a,@dptr
      002BA9 FD               [12] 2382 	mov	r5,a
      002BAA A3               [24] 2383 	inc	dptr
      002BAB E0               [24] 2384 	movx	a,@dptr
      002BAC FE               [12] 2385 	mov	r6,a
      002BAD 0D               [12] 2386 	inc	r5
      002BAE BD 00 01         [24] 2387 	cjne	r5,#0x00,00111$
      002BB1 0E               [12] 2388 	inc	r6
      002BB2                       2389 00111$:
      002BB2 E4               [12] 2390 	clr	a
      002BB3 C0 E0            [24] 2391 	push	acc
      002BB5 74 24            [12] 2392 	mov	a,#0x24
      002BB7 C0 E0            [24] 2393 	push	acc
      002BB9 8D 82            [24] 2394 	mov	dpl,r5
      002BBB 8E 83            [24] 2395 	mov	dph,r6
      002BBD 12 2F 60         [24] 2396 	lcall	__modsint
      002BC0 AD 82            [24] 2397 	mov	r5,dpl
      002BC2 AE 83            [24] 2398 	mov	r6,dph
      002BC4 15 81            [12] 2399 	dec	sp
      002BC6 15 81            [12] 2400 	dec	sp
      002BC8 90 FC 00         [24] 2401 	mov	dptr,#_hp
      002BCB ED               [12] 2402 	mov	a,r5
      002BCC F0               [24] 2403 	movx	@dptr,a
      002BCD EE               [12] 2404 	mov	a,r6
      002BCE A3               [24] 2405 	inc	dptr
      002BCF F0               [24] 2406 	movx	@dptr,a
                                   2407 ;	walk.c:251: return 1u;
      002BD0 75 82 01         [24] 2408 	mov	dpl,#0x01
      002BD3                       2409 00103$:
                                   2410 ;	walk.c:252: }
      002BD3 85 10 81         [24] 2411 	mov	sp,_bp
      002BD6 D0 10            [24] 2412 	pop	_bp
      002BD8 22               [24] 2413 	ret
                                   2414 ;------------------------------------------------------------
                                   2415 ;Allocation info for local variables in function 'qget'
                                   2416 ;------------------------------------------------------------
                                   2417 ;t                         Allocated to registers r5 r6 r7 
                                   2418 ;------------------------------------------------------------
                                   2419 ;	walk.c:254: static uint8_t qget(struct node *t) {
                                   2420 ;	-----------------------------------------
                                   2421 ;	 function qget
                                   2422 ;	-----------------------------------------
      002BD9                       2423 _qget:
      002BD9 AD 82            [24] 2424 	mov	r5,dpl
      002BDB AE 83            [24] 2425 	mov	r6,dph
      002BDD AF F0            [24] 2426 	mov	r7,b
                                   2427 ;	walk.c:255: if (hp == tp) return 0u;
      002BDF 90 FC 00         [24] 2428 	mov	dptr,#_hp
      002BE2 E0               [24] 2429 	movx	a,@dptr
      002BE3 FB               [12] 2430 	mov	r3,a
      002BE4 A3               [24] 2431 	inc	dptr
      002BE5 E0               [24] 2432 	movx	a,@dptr
      002BE6 FC               [12] 2433 	mov	r4,a
      002BE7 90 FC 02         [24] 2434 	mov	dptr,#_tp
      002BEA E0               [24] 2435 	movx	a,@dptr
      002BEB F9               [12] 2436 	mov	r1,a
      002BEC A3               [24] 2437 	inc	dptr
      002BED E0               [24] 2438 	movx	a,@dptr
      002BEE FA               [12] 2439 	mov	r2,a
      002BEF EB               [12] 2440 	mov	a,r3
      002BF0 B5 01 08         [24] 2441 	cjne	a,ar1,00102$
      002BF3 EC               [12] 2442 	mov	a,r4
      002BF4 B5 02 04         [24] 2443 	cjne	a,ar2,00102$
      002BF7 75 82 00         [24] 2444 	mov	dpl,#0x00
      002BFA 22               [24] 2445 	ret
      002BFB                       2446 00102$:
                                   2447 ;	walk.c:256: *t = queue[tp];
      002BFB E9               [12] 2448 	mov	a,r1
      002BFC 29               [12] 2449 	add	a,r1
      002BFD F9               [12] 2450 	mov	r1,a
      002BFE EA               [12] 2451 	mov	a,r2
      002BFF 33               [12] 2452 	rlc	a
      002C00 FA               [12] 2453 	mov	r2,a
      002C01 E9               [12] 2454 	mov	a,r1
      002C02 29               [12] 2455 	add	a,r1
      002C03 F9               [12] 2456 	mov	r1,a
      002C04 EA               [12] 2457 	mov	a,r2
      002C05 33               [12] 2458 	rlc	a
      002C06 FA               [12] 2459 	mov	r2,a
      002C07 E9               [12] 2460 	mov	a,r1
      002C08 24 00            [12] 2461 	add	a,#_queue
      002C0A F9               [12] 2462 	mov	r1,a
      002C0B EA               [12] 2463 	mov	a,r2
      002C0C 34 6C            [12] 2464 	addc	a,#(_queue >> 8)
      002C0E FA               [12] 2465 	mov	r2,a
      002C0F 7C 00            [12] 2466 	mov	r4,#0x00
      002C11 74 04            [12] 2467 	mov	a,#0x04
      002C13 C0 E0            [24] 2468 	push	acc
      002C15 E4               [12] 2469 	clr	a
      002C16 C0 E0            [24] 2470 	push	acc
      002C18 C0 01            [24] 2471 	push	ar1
      002C1A C0 02            [24] 2472 	push	ar2
      002C1C C0 04            [24] 2473 	push	ar4
      002C1E 8D 82            [24] 2474 	mov	dpl,r5
      002C20 8E 83            [24] 2475 	mov	dph,r6
      002C22 8F F0            [24] 2476 	mov	b,r7
      002C24 12 2D F2         [24] 2477 	lcall	___memcpy
      002C27 E5 81            [12] 2478 	mov	a,sp
      002C29 24 FB            [12] 2479 	add	a,#0xfb
      002C2B F5 81            [12] 2480 	mov	sp,a
                                   2481 ;	walk.c:257: tp = (tp + 1) % QMAX;
      002C2D 90 FC 02         [24] 2482 	mov	dptr,#_tp
      002C30 E0               [24] 2483 	movx	a,@dptr
      002C31 FE               [12] 2484 	mov	r6,a
      002C32 A3               [24] 2485 	inc	dptr
      002C33 E0               [24] 2486 	movx	a,@dptr
      002C34 FF               [12] 2487 	mov	r7,a
      002C35 0E               [12] 2488 	inc	r6
      002C36 BE 00 01         [24] 2489 	cjne	r6,#0x00,00111$
      002C39 0F               [12] 2490 	inc	r7
      002C3A                       2491 00111$:
      002C3A E4               [12] 2492 	clr	a
      002C3B C0 E0            [24] 2493 	push	acc
      002C3D 74 24            [12] 2494 	mov	a,#0x24
      002C3F C0 E0            [24] 2495 	push	acc
      002C41 8E 82            [24] 2496 	mov	dpl,r6
      002C43 8F 83            [24] 2497 	mov	dph,r7
      002C45 12 2F 60         [24] 2498 	lcall	__modsint
      002C48 AE 82            [24] 2499 	mov	r6,dpl
      002C4A AF 83            [24] 2500 	mov	r7,dph
      002C4C 15 81            [12] 2501 	dec	sp
      002C4E 15 81            [12] 2502 	dec	sp
      002C50 90 FC 02         [24] 2503 	mov	dptr,#_tp
      002C53 EE               [12] 2504 	mov	a,r6
      002C54 F0               [24] 2505 	movx	@dptr,a
      002C55 EF               [12] 2506 	mov	a,r7
      002C56 A3               [24] 2507 	inc	dptr
      002C57 F0               [24] 2508 	movx	@dptr,a
                                   2509 ;	walk.c:258: return 1u;
      002C58 75 82 01         [24] 2510 	mov	dpl,#0x01
                                   2511 ;	walk.c:259: }
      002C5B 22               [24] 2512 	ret
                                   2513 	.area CSEG    (CODE)
                                   2514 	.area CONST   (CODE)
                                   2515 	.area CONST   (CODE)
      004554                       2516 ___str_0:
      004554 4D 65 6D 6F 72 79 20  2517 	.ascii "Memory error"
             65 72 72 6F 72
      004560 00                    2518 	.db 0x00
                                   2519 	.area CSEG    (CODE)
                                   2520 	.area CONST   (CODE)
      004561                       2521 ___str_1:
      004561 1B                    2522 	.db 0x1b
      004562 5B 32 3B 31 48 25 20  2523 	.ascii "[2;1H% 8d% 8d% 8d% 8d"
             38 64 25 20 38 64 25
             20 38 64 25 20 38 64
      004577 00                    2524 	.db 0x00
                                   2525 	.area CSEG    (CODE)
                                   2526 	.area CONST   (CODE)
      004578                       2527 ___str_2:
      004578 1B                    2528 	.db 0x1b
      004579 5B 25 64 3B 25 64 48  2529 	.ascii "[%d;%dH."
             2E
      004581 00                    2530 	.db 0x00
                                   2531 	.area CSEG    (CODE)
                                   2532 	.area CONST   (CODE)
      004582                       2533 ___str_3:
      004582 1B                    2534 	.db 0x1b
      004583 5B 25 64 3B 25 64 48  2535 	.ascii "[%d;%dHo"
             6F
      00458B 00                    2536 	.db 0x00
                                   2537 	.area CSEG    (CODE)
                                   2538 	.area CONST   (CODE)
      00458C                       2539 ___str_4:
      00458C 1B                    2540 	.db 0x1b
      00458D 5B 32 4A              2541 	.ascii "[2J"
      004590 1B                    2542 	.db 0x1b
      004591 5B 3F 32 35 6C        2543 	.ascii "[?25l"
      004596 00                    2544 	.db 0x00
                                   2545 	.area CSEG    (CODE)
                                   2546 	.area CONST   (CODE)
      004597                       2547 ___str_5:
      004597 1B                    2548 	.db 0x1b
      004598 5B 31 3B 31 48 25 20  2549 	.ascii "[1;1H% 8u% 8d% 8d"
             38 75 25 20 38 64 25
             20 38 64
      0045A9 00                    2550 	.db 0x00
                                   2551 	.area CSEG    (CODE)
                                   2552 	.area CONST   (CODE)
      0045AA                       2553 ___str_6:
      0045AA 25 20 38 64 25 20 38  2554 	.ascii "% 8d% 8d"
             64
      0045B2 00                    2555 	.db 0x00
                                   2556 	.area CSEG    (CODE)
                                   2557 	.area CONST   (CODE)
      0045B3                       2558 ___str_7:
      0045B3 1B                    2559 	.db 0x1b
      0045B4 5B 32 4A              2560 	.ascii "[2J"
      0045B7 1B                    2561 	.db 0x1b
      0045B8 5B 3F 32 35 68        2562 	.ascii "[?25h"
      0045BD 00                    2563 	.db 0x00
                                   2564 	.area CSEG    (CODE)
                                   2565 	.area XINIT   (CODE)
      0045D9                       2566 __xinit__neigh:
      0045D9 FF FF                 2567 	.byte #0xff, #0xff	; -1
      0045DB 01 00                 2568 	.byte #0x01, #0x00	;  1
      0045DD FF FF                 2569 	.byte #0xff, #0xff	; -1
      0045DF FF FF                 2570 	.byte #0xff, #0xff	; -1
      0045E1 01 00                 2571 	.byte #0x01, #0x00	;  1
      0045E3 FF FF                 2572 	.byte #0xff, #0xff	; -1
      0045E5 01 00                 2573 	.byte #0x01, #0x00	;  1
      0045E7 01 00                 2574 	.byte #0x01, #0x00	;  1
      0045E9 FF FF                 2575 	.byte #0xff, #0xff	; -1
      0045EB 00 00                 2576 	.byte #0x00, #0x00	;  0
      0045ED 00 00                 2577 	.byte #0x00, #0x00	;  0
      0045EF FF FF                 2578 	.byte #0xff, #0xff	; -1
      0045F1 01 00                 2579 	.byte #0x01, #0x00	;  1
      0045F3 00 00                 2580 	.byte #0x00, #0x00	;  0
      0045F5 00 00                 2581 	.byte #0x00, #0x00	;  0
      0045F7 01 00                 2582 	.byte #0x01, #0x00	;  1
      0045F9 FF FF                 2583 	.byte #0xff, #0xff	; -1
      0045FB 01 00                 2584 	.byte #0x01, #0x00	;  1
      0045FD FF FF                 2585 	.byte #0xff, #0xff	; -1
      0045FF FF FF                 2586 	.byte #0xff, #0xff	; -1
      004601 01 00                 2587 	.byte #0x01, #0x00	;  1
      004603 FF FF                 2588 	.byte #0xff, #0xff	; -1
      004605 01 00                 2589 	.byte #0x01, #0x00	;  1
      004607 01 00                 2590 	.byte #0x01, #0x00	;  1
      004609 FF FF                 2591 	.byte #0xff, #0xff	; -1
      00460B 00 00                 2592 	.byte #0x00, #0x00	;  0
      00460D 00 00                 2593 	.byte #0x00, #0x00	;  0
      00460F FF FF                 2594 	.byte #0xff, #0xff	; -1
      004611 01 00                 2595 	.byte #0x01, #0x00	;  1
      004613 00 00                 2596 	.byte #0x00, #0x00	;  0
      004615 00 00                 2597 	.byte #0x00, #0x00	;  0
      004617 01 00                 2598 	.byte #0x01, #0x00	;  1
                                   2599 	.area CABS    (ABS,CODE)
