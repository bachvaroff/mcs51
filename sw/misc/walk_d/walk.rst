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
      004600                        320 _g:
      004600                        321 	.ds 9216
      006A00                        322 _stack:
      006A00                        323 	.ds 36864
      00FA00                        324 _sp:
      00FA00                        325 	.ds 2
                           00F006   326 _OEreg	=	0xf006
                                    327 ;--------------------------------------------------------
                                    328 ; absolute external ram data
                                    329 ;--------------------------------------------------------
                                    330 	.area XABS    (ABS,XDATA)
                                    331 ;--------------------------------------------------------
                                    332 ; external initialized ram data
                                    333 ;--------------------------------------------------------
                                    334 	.area XISEG   (XDATA)
      00FA02                        335 _neigh:
      00FA02                        336 	.ds 64
                                    337 	.area HOME    (CODE)
                                    338 	.area GSINIT0 (CODE)
                                    339 	.area GSINIT1 (CODE)
                                    340 	.area GSINIT2 (CODE)
                                    341 	.area GSINIT3 (CODE)
                                    342 	.area GSINIT4 (CODE)
                                    343 	.area GSINIT5 (CODE)
                                    344 	.area GSINIT  (CODE)
                                    345 	.area GSFINAL (CODE)
                                    346 	.area CSEG    (CODE)
                                    347 ;--------------------------------------------------------
                                    348 ; interrupt vector 
                                    349 ;--------------------------------------------------------
                                    350 	.area HOME    (CODE)
      002000                        351 __interrupt_vect:
      002000 02 20 09         [24]  352 	ljmp	__sdcc_gsinit_startup
      002003 02 20 65         [24]  353 	ljmp	_int0
                                    354 ;--------------------------------------------------------
                                    355 ; global & static initialisations
                                    356 ;--------------------------------------------------------
                                    357 	.area HOME    (CODE)
                                    358 	.area GSINIT  (CODE)
                                    359 	.area GSFINAL (CODE)
                                    360 	.area GSINIT  (CODE)
                                    361 	.globl __sdcc_gsinit_startup
                                    362 	.globl __sdcc_program_startup
                                    363 	.globl __start__stack
                                    364 	.globl __mcs51_genXINIT
                                    365 	.globl __mcs51_genXRAMCLEAR
                                    366 	.globl __mcs51_genRAMCLEAR
                                    367 	.area GSFINAL (CODE)
      002062 02 20 06         [24]  368 	ljmp	__sdcc_program_startup
                                    369 ;--------------------------------------------------------
                                    370 ; Home
                                    371 ;--------------------------------------------------------
                                    372 	.area HOME    (CODE)
                                    373 	.area HOME    (CODE)
      002006                        374 __sdcc_program_startup:
      002006 02 26 CF         [24]  375 	ljmp	_main
                                    376 ;	return from main will return to caller
                                    377 ;--------------------------------------------------------
                                    378 ; code
                                    379 ;--------------------------------------------------------
                                    380 	.area CSEG    (CODE)
                                    381 ;------------------------------------------------------------
                                    382 ;Allocation info for local variables in function 'int0'
                                    383 ;------------------------------------------------------------
                                    384 ;	walk.c:12: void int0(void) __interrupt IE0_VECTOR __using 1 {
                                    385 ;	-----------------------------------------
                                    386 ;	 function int0
                                    387 ;	-----------------------------------------
      002065                        388 _int0:
                           00000F   389 	ar7 = 0x0f
                           00000E   390 	ar6 = 0x0e
                           00000D   391 	ar5 = 0x0d
                           00000C   392 	ar4 = 0x0c
                           00000B   393 	ar3 = 0x0b
                           00000A   394 	ar2 = 0x0a
                           000009   395 	ar1 = 0x09
                           000008   396 	ar0 = 0x08
      002065 C0 D0            [24]  397 	push	psw
      002067 75 D0 08         [24]  398 	mov	psw,#0x08
                                    399 ;	walk.c:13: i0 = 0u;
      00206A 78 11            [12]  400 	mov	r0,#_i0
      00206C 76 00            [12]  401 	mov	@r0,#0x00
                                    402 ;	walk.c:14: }
      00206E D0 D0            [24]  403 	pop	psw
      002070 32               [24]  404 	reti
                                    405 ;	eliminated unneeded push/pop dpl
                                    406 ;	eliminated unneeded push/pop dph
                                    407 ;	eliminated unneeded push/pop b
                                    408 ;	eliminated unneeded push/pop acc
                                    409 ;------------------------------------------------------------
                                    410 ;Allocation info for local variables in function 'bang'
                                    411 ;------------------------------------------------------------
                                    412 ;	walk.c:20: static void bang(void) {
                                    413 ;	-----------------------------------------
                                    414 ;	 function bang
                                    415 ;	-----------------------------------------
      002071                        416 _bang:
                           000007   417 	ar7 = 0x07
                           000006   418 	ar6 = 0x06
                           000005   419 	ar5 = 0x05
                           000004   420 	ar4 = 0x04
                           000003   421 	ar3 = 0x03
                           000002   422 	ar2 = 0x02
                           000001   423 	ar1 = 0x01
                           000000   424 	ar0 = 0x00
                                    425 ;	walk.c:21: (void)puts("Memory error");
      002071 90 44 6E         [24]  426 	mov	dptr,#___str_0
      002074 75 F0 80         [24]  427 	mov	b,#0x80
      002077 12 2D 9F         [24]  428 	lcall	_puts
                                    429 ;	walk.c:17: PCON |= 2;
      00207A 43 87 02         [24]  430 	orl	_PCON,#0x02
                                    431 ;	walk.c:24: return;
                                    432 ;	walk.c:25: }
      00207D 22               [24]  433 	ret
                                    434 ;------------------------------------------------------------
                                    435 ;Allocation info for local variables in function 'setOE'
                                    436 ;------------------------------------------------------------
                                    437 ;mask                      Allocated to registers r7 
                                    438 ;------------------------------------------------------------
                                    439 ;	walk.c:67: static void setOE(uint8_t mask) {
                                    440 ;	-----------------------------------------
                                    441 ;	 function setOE
                                    442 ;	-----------------------------------------
      00207E                        443 _setOE:
      00207E AF 82            [24]  444 	mov	r7,dpl
                                    445 ;	walk.c:68: OE76 |= mask;
      002080 78 12            [12]  446 	mov	r0,#_OE76
      002082 EF               [12]  447 	mov	a,r7
      002083 46               [12]  448 	orl	a,@r0
      002084 F6               [12]  449 	mov	@r0,a
                                    450 ;	walk.c:69: P1_7 = 0;
                                    451 ;	assignBit
      002085 C2 97            [12]  452 	clr	_P1_7
                                    453 ;	walk.c:74: __endasm;
      002087 00               [12]  454 	nop
      002088 00               [12]  455 	nop
      002089 00               [12]  456 	nop
                                    457 ;	walk.c:75: OEreg = OE76;
      00208A 78 12            [12]  458 	mov	r0,#_OE76
      00208C 90 F0 06         [24]  459 	mov	dptr,#_OEreg
      00208F E6               [12]  460 	mov	a,@r0
      002090 F0               [24]  461 	movx	@dptr,a
                                    462 ;	walk.c:76: P1_7 = 1;
                                    463 ;	assignBit
      002091 D2 97            [12]  464 	setb	_P1_7
                                    465 ;	walk.c:81: __endasm;
      002093 00               [12]  466 	nop
      002094 00               [12]  467 	nop
      002095 00               [12]  468 	nop
                                    469 ;	walk.c:83: return;
                                    470 ;	walk.c:84: }
      002096 22               [24]  471 	ret
                                    472 ;------------------------------------------------------------
                                    473 ;Allocation info for local variables in function 'unsetOE'
                                    474 ;------------------------------------------------------------
                                    475 ;mask                      Allocated to registers r7 
                                    476 ;------------------------------------------------------------
                                    477 ;	walk.c:86: static void unsetOE(uint8_t mask) {
                                    478 ;	-----------------------------------------
                                    479 ;	 function unsetOE
                                    480 ;	-----------------------------------------
      002097                        481 _unsetOE:
                                    482 ;	walk.c:87: OE76 &= ~mask;
      002097 E5 82            [12]  483 	mov	a,dpl
      002099 F4               [12]  484 	cpl	a
      00209A FF               [12]  485 	mov	r7,a
      00209B 78 12            [12]  486 	mov	r0,#_OE76
      00209D 56               [12]  487 	anl	a,@r0
      00209E F6               [12]  488 	mov	@r0,a
                                    489 ;	walk.c:88: P1_7 = 0;
                                    490 ;	assignBit
      00209F C2 97            [12]  491 	clr	_P1_7
                                    492 ;	walk.c:93: __endasm;
      0020A1 00               [12]  493 	nop
      0020A2 00               [12]  494 	nop
      0020A3 00               [12]  495 	nop
                                    496 ;	walk.c:94: OEreg = OE76;
      0020A4 78 12            [12]  497 	mov	r0,#_OE76
      0020A6 90 F0 06         [24]  498 	mov	dptr,#_OEreg
      0020A9 E6               [12]  499 	mov	a,@r0
      0020AA F0               [24]  500 	movx	@dptr,a
                                    501 ;	walk.c:95: P1_7 = 1;
                                    502 ;	assignBit
      0020AB D2 97            [12]  503 	setb	_P1_7
                                    504 ;	walk.c:100: __endasm;
      0020AD 00               [12]  505 	nop
      0020AE 00               [12]  506 	nop
      0020AF 00               [12]  507 	nop
                                    508 ;	walk.c:102: return;
                                    509 ;	walk.c:103: }
      0020B0 22               [24]  510 	ret
                                    511 ;------------------------------------------------------------
                                    512 ;Allocation info for local variables in function 'flipOE'
                                    513 ;------------------------------------------------------------
                                    514 ;mask                      Allocated to registers r7 
                                    515 ;------------------------------------------------------------
                                    516 ;	walk.c:105: static void flipOE(uint8_t mask) {
                                    517 ;	-----------------------------------------
                                    518 ;	 function flipOE
                                    519 ;	-----------------------------------------
      0020B1                        520 _flipOE:
      0020B1 AF 82            [24]  521 	mov	r7,dpl
                                    522 ;	walk.c:106: OE76 ^= mask;
      0020B3 78 12            [12]  523 	mov	r0,#_OE76
      0020B5 EF               [12]  524 	mov	a,r7
      0020B6 66               [12]  525 	xrl	a,@r0
      0020B7 F6               [12]  526 	mov	@r0,a
                                    527 ;	walk.c:107: P1_7 = 0;
                                    528 ;	assignBit
      0020B8 C2 97            [12]  529 	clr	_P1_7
                                    530 ;	walk.c:112: __endasm;
      0020BA 00               [12]  531 	nop
      0020BB 00               [12]  532 	nop
      0020BC 00               [12]  533 	nop
                                    534 ;	walk.c:113: OEreg = OE76;
      0020BD 78 12            [12]  535 	mov	r0,#_OE76
      0020BF 90 F0 06         [24]  536 	mov	dptr,#_OEreg
      0020C2 E6               [12]  537 	mov	a,@r0
      0020C3 F0               [24]  538 	movx	@dptr,a
                                    539 ;	walk.c:114: P1_7 = 1;
                                    540 ;	assignBit
      0020C4 D2 97            [12]  541 	setb	_P1_7
                                    542 ;	walk.c:119: __endasm;
      0020C6 00               [12]  543 	nop
      0020C7 00               [12]  544 	nop
      0020C8 00               [12]  545 	nop
                                    546 ;	walk.c:121: return;
                                    547 ;	walk.c:122: }
      0020C9 22               [24]  548 	ret
                                    549 ;------------------------------------------------------------
                                    550 ;Allocation info for local variables in function 'update'
                                    551 ;------------------------------------------------------------
                                    552 ;cur                       Allocated to stack - _bp -5
                                    553 ;j                         Allocated to stack - _bp -6
                                    554 ;t                         Allocated to stack - _bp +1
                                    555 ;sloc0                     Allocated to stack - _bp +4
                                    556 ;sloc1                     Allocated to stack - _bp +6
                                    557 ;sloc2                     Allocated to stack - _bp +8
                                    558 ;------------------------------------------------------------
                                    559 ;	walk.c:124: static uint8_t update(struct node *t, struct node *cur, uint8_t j) {
                                    560 ;	-----------------------------------------
                                    561 ;	 function update
                                    562 ;	-----------------------------------------
      0020CA                        563 _update:
      0020CA C0 10            [24]  564 	push	_bp
      0020CC 85 81 10         [24]  565 	mov	_bp,sp
      0020CF C0 82            [24]  566 	push	dpl
      0020D1 C0 83            [24]  567 	push	dph
      0020D3 C0 F0            [24]  568 	push	b
      0020D5 E5 81            [12]  569 	mov	a,sp
      0020D7 24 07            [12]  570 	add	a,#0x07
      0020D9 F5 81            [12]  571 	mov	sp,a
                                    572 ;	walk.c:125: t->r = cur->r + neigh[j].r;
      0020DB E5 10            [12]  573 	mov	a,_bp
      0020DD 24 FB            [12]  574 	add	a,#0xfb
      0020DF F8               [12]  575 	mov	r0,a
      0020E0 86 02            [24]  576 	mov	ar2,@r0
      0020E2 08               [12]  577 	inc	r0
      0020E3 86 03            [24]  578 	mov	ar3,@r0
      0020E5 08               [12]  579 	inc	r0
      0020E6 86 04            [24]  580 	mov	ar4,@r0
      0020E8 8A 82            [24]  581 	mov	dpl,r2
      0020EA 8B 83            [24]  582 	mov	dph,r3
      0020EC 8C F0            [24]  583 	mov	b,r4
      0020EE E5 10            [12]  584 	mov	a,_bp
      0020F0 24 04            [12]  585 	add	a,#0x04
      0020F2 F8               [12]  586 	mov	r0,a
      0020F3 12 2E 5E         [24]  587 	lcall	__gptrget
      0020F6 F6               [12]  588 	mov	@r0,a
      0020F7 A3               [24]  589 	inc	dptr
      0020F8 12 2E 5E         [24]  590 	lcall	__gptrget
      0020FB 08               [12]  591 	inc	r0
      0020FC F6               [12]  592 	mov	@r0,a
      0020FD E5 10            [12]  593 	mov	a,_bp
      0020FF 24 FA            [12]  594 	add	a,#0xfa
      002101 F8               [12]  595 	mov	r0,a
      002102 E5 10            [12]  596 	mov	a,_bp
      002104 24 06            [12]  597 	add	a,#0x06
      002106 F9               [12]  598 	mov	r1,a
      002107 E6               [12]  599 	mov	a,@r0
      002108 75 F0 04         [24]  600 	mov	b,#0x04
      00210B A4               [48]  601 	mul	ab
      00210C F7               [12]  602 	mov	@r1,a
      00210D 09               [12]  603 	inc	r1
      00210E A7 F0            [24]  604 	mov	@r1,b
      002110 E5 10            [12]  605 	mov	a,_bp
      002112 24 06            [12]  606 	add	a,#0x06
      002114 F8               [12]  607 	mov	r0,a
      002115 E6               [12]  608 	mov	a,@r0
      002116 24 02            [12]  609 	add	a,#_neigh
      002118 F5 82            [12]  610 	mov	dpl,a
      00211A 08               [12]  611 	inc	r0
      00211B E6               [12]  612 	mov	a,@r0
      00211C 34 FA            [12]  613 	addc	a,#(_neigh >> 8)
      00211E F5 83            [12]  614 	mov	dph,a
      002120 E0               [24]  615 	movx	a,@dptr
      002121 FF               [12]  616 	mov	r7,a
      002122 A3               [24]  617 	inc	dptr
      002123 E0               [24]  618 	movx	a,@dptr
      002124 FE               [12]  619 	mov	r6,a
      002125 E5 10            [12]  620 	mov	a,_bp
      002127 24 04            [12]  621 	add	a,#0x04
      002129 F8               [12]  622 	mov	r0,a
      00212A EF               [12]  623 	mov	a,r7
      00212B 26               [12]  624 	add	a,@r0
      00212C FF               [12]  625 	mov	r7,a
      00212D EE               [12]  626 	mov	a,r6
      00212E 08               [12]  627 	inc	r0
      00212F 36               [12]  628 	addc	a,@r0
      002130 FE               [12]  629 	mov	r6,a
      002131 A8 10            [24]  630 	mov	r0,_bp
      002133 08               [12]  631 	inc	r0
      002134 86 82            [24]  632 	mov	dpl,@r0
      002136 08               [12]  633 	inc	r0
      002137 86 83            [24]  634 	mov	dph,@r0
      002139 08               [12]  635 	inc	r0
      00213A 86 F0            [24]  636 	mov	b,@r0
      00213C EF               [12]  637 	mov	a,r7
      00213D 12 2C 53         [24]  638 	lcall	__gptrput
      002140 A3               [24]  639 	inc	dptr
      002141 EE               [12]  640 	mov	a,r6
      002142 12 2C 53         [24]  641 	lcall	__gptrput
                                    642 ;	walk.c:126: t->c = cur->c + neigh[j].c;
      002145 A8 10            [24]  643 	mov	r0,_bp
      002147 08               [12]  644 	inc	r0
      002148 E5 10            [12]  645 	mov	a,_bp
      00214A 24 08            [12]  646 	add	a,#0x08
      00214C F9               [12]  647 	mov	r1,a
      00214D 74 02            [12]  648 	mov	a,#0x02
      00214F 26               [12]  649 	add	a,@r0
      002150 F7               [12]  650 	mov	@r1,a
      002151 E4               [12]  651 	clr	a
      002152 08               [12]  652 	inc	r0
      002153 36               [12]  653 	addc	a,@r0
      002154 09               [12]  654 	inc	r1
      002155 F7               [12]  655 	mov	@r1,a
      002156 08               [12]  656 	inc	r0
      002157 09               [12]  657 	inc	r1
      002158 E6               [12]  658 	mov	a,@r0
      002159 F7               [12]  659 	mov	@r1,a
      00215A 74 02            [12]  660 	mov	a,#0x02
      00215C 2A               [12]  661 	add	a,r2
      00215D FA               [12]  662 	mov	r2,a
      00215E E4               [12]  663 	clr	a
      00215F 3B               [12]  664 	addc	a,r3
      002160 FB               [12]  665 	mov	r3,a
      002161 8A 82            [24]  666 	mov	dpl,r2
      002163 8B 83            [24]  667 	mov	dph,r3
      002165 8C F0            [24]  668 	mov	b,r4
      002167 12 2E 5E         [24]  669 	lcall	__gptrget
      00216A FA               [12]  670 	mov	r2,a
      00216B A3               [24]  671 	inc	dptr
      00216C 12 2E 5E         [24]  672 	lcall	__gptrget
      00216F FB               [12]  673 	mov	r3,a
      002170 E5 10            [12]  674 	mov	a,_bp
      002172 24 06            [12]  675 	add	a,#0x06
      002174 F8               [12]  676 	mov	r0,a
      002175 E6               [12]  677 	mov	a,@r0
      002176 24 02            [12]  678 	add	a,#_neigh
      002178 FC               [12]  679 	mov	r4,a
      002179 08               [12]  680 	inc	r0
      00217A E6               [12]  681 	mov	a,@r0
      00217B 34 FA            [12]  682 	addc	a,#(_neigh >> 8)
      00217D FD               [12]  683 	mov	r5,a
      00217E 8C 82            [24]  684 	mov	dpl,r4
      002180 8D 83            [24]  685 	mov	dph,r5
      002182 A3               [24]  686 	inc	dptr
      002183 A3               [24]  687 	inc	dptr
      002184 E0               [24]  688 	movx	a,@dptr
      002185 FC               [12]  689 	mov	r4,a
      002186 A3               [24]  690 	inc	dptr
      002187 E0               [24]  691 	movx	a,@dptr
      002188 FD               [12]  692 	mov	r5,a
      002189 EC               [12]  693 	mov	a,r4
      00218A 2A               [12]  694 	add	a,r2
      00218B FA               [12]  695 	mov	r2,a
      00218C ED               [12]  696 	mov	a,r5
      00218D 3B               [12]  697 	addc	a,r3
      00218E FB               [12]  698 	mov	r3,a
      00218F E5 10            [12]  699 	mov	a,_bp
      002191 24 08            [12]  700 	add	a,#0x08
      002193 F8               [12]  701 	mov	r0,a
      002194 86 82            [24]  702 	mov	dpl,@r0
      002196 08               [12]  703 	inc	r0
      002197 86 83            [24]  704 	mov	dph,@r0
      002199 08               [12]  705 	inc	r0
      00219A 86 F0            [24]  706 	mov	b,@r0
      00219C EA               [12]  707 	mov	a,r2
      00219D 12 2C 53         [24]  708 	lcall	__gptrput
      0021A0 A3               [24]  709 	inc	dptr
      0021A1 EB               [12]  710 	mov	a,r3
      0021A2 12 2C 53         [24]  711 	lcall	__gptrput
                                    712 ;	walk.c:128: if (t->r < 0) t->r += ROWS;
      0021A5 A8 10            [24]  713 	mov	r0,_bp
      0021A7 08               [12]  714 	inc	r0
      0021A8 86 82            [24]  715 	mov	dpl,@r0
      0021AA 08               [12]  716 	inc	r0
      0021AB 86 83            [24]  717 	mov	dph,@r0
      0021AD 08               [12]  718 	inc	r0
      0021AE 86 F0            [24]  719 	mov	b,@r0
      0021B0 12 2E 5E         [24]  720 	lcall	__gptrget
      0021B3 FD               [12]  721 	mov	r5,a
      0021B4 A3               [24]  722 	inc	dptr
      0021B5 12 2E 5E         [24]  723 	lcall	__gptrget
      0021B8 FC               [12]  724 	mov	r4,a
      0021B9 EE               [12]  725 	mov	a,r6
      0021BA 30 E7 1D         [24]  726 	jnb	acc.7,00104$
      0021BD 74 30            [12]  727 	mov	a,#0x30
      0021BF 2D               [12]  728 	add	a,r5
      0021C0 FF               [12]  729 	mov	r7,a
      0021C1 E4               [12]  730 	clr	a
      0021C2 3C               [12]  731 	addc	a,r4
      0021C3 FE               [12]  732 	mov	r6,a
      0021C4 A8 10            [24]  733 	mov	r0,_bp
      0021C6 08               [12]  734 	inc	r0
      0021C7 86 82            [24]  735 	mov	dpl,@r0
      0021C9 08               [12]  736 	inc	r0
      0021CA 86 83            [24]  737 	mov	dph,@r0
      0021CC 08               [12]  738 	inc	r0
      0021CD 86 F0            [24]  739 	mov	b,@r0
      0021CF EF               [12]  740 	mov	a,r7
      0021D0 12 2C 53         [24]  741 	lcall	__gptrput
      0021D3 A3               [24]  742 	inc	dptr
      0021D4 EE               [12]  743 	mov	a,r6
      0021D5 12 2C 53         [24]  744 	lcall	__gptrput
      0021D8 80 27            [24]  745 	sjmp	00105$
      0021DA                        746 00104$:
                                    747 ;	walk.c:129: else if (t->r >= ROWS) t->r -= ROWS;
      0021DA C3               [12]  748 	clr	c
      0021DB ED               [12]  749 	mov	a,r5
      0021DC 94 30            [12]  750 	subb	a,#0x30
      0021DE EC               [12]  751 	mov	a,r4
      0021DF 64 80            [12]  752 	xrl	a,#0x80
      0021E1 94 80            [12]  753 	subb	a,#0x80
      0021E3 40 1C            [24]  754 	jc	00105$
      0021E5 ED               [12]  755 	mov	a,r5
      0021E6 24 D0            [12]  756 	add	a,#0xd0
      0021E8 FD               [12]  757 	mov	r5,a
      0021E9 EC               [12]  758 	mov	a,r4
      0021EA 34 FF            [12]  759 	addc	a,#0xff
      0021EC FC               [12]  760 	mov	r4,a
      0021ED A8 10            [24]  761 	mov	r0,_bp
      0021EF 08               [12]  762 	inc	r0
      0021F0 86 82            [24]  763 	mov	dpl,@r0
      0021F2 08               [12]  764 	inc	r0
      0021F3 86 83            [24]  765 	mov	dph,@r0
      0021F5 08               [12]  766 	inc	r0
      0021F6 86 F0            [24]  767 	mov	b,@r0
      0021F8 ED               [12]  768 	mov	a,r5
      0021F9 12 2C 53         [24]  769 	lcall	__gptrput
      0021FC A3               [24]  770 	inc	dptr
      0021FD EC               [12]  771 	mov	a,r4
      0021FE 12 2C 53         [24]  772 	lcall	__gptrput
      002201                        773 00105$:
                                    774 ;	walk.c:130: if (t->c < 0) t->c += COLS;
      002201 E5 10            [12]  775 	mov	a,_bp
      002203 24 08            [12]  776 	add	a,#0x08
      002205 F8               [12]  777 	mov	r0,a
      002206 86 82            [24]  778 	mov	dpl,@r0
      002208 08               [12]  779 	inc	r0
      002209 86 83            [24]  780 	mov	dph,@r0
      00220B 08               [12]  781 	inc	r0
      00220C 86 F0            [24]  782 	mov	b,@r0
      00220E 12 2E 5E         [24]  783 	lcall	__gptrget
      002211 A3               [24]  784 	inc	dptr
      002212 12 2E 5E         [24]  785 	lcall	__gptrget
      002215 30 E7 35         [24]  786 	jnb	acc.7,00109$
      002218 E5 10            [12]  787 	mov	a,_bp
      00221A 24 08            [12]  788 	add	a,#0x08
      00221C F8               [12]  789 	mov	r0,a
      00221D 86 82            [24]  790 	mov	dpl,@r0
      00221F 08               [12]  791 	inc	r0
      002220 86 83            [24]  792 	mov	dph,@r0
      002222 08               [12]  793 	inc	r0
      002223 86 F0            [24]  794 	mov	b,@r0
      002225 12 2E 5E         [24]  795 	lcall	__gptrget
      002228 FE               [12]  796 	mov	r6,a
      002229 A3               [24]  797 	inc	dptr
      00222A 12 2E 5E         [24]  798 	lcall	__gptrget
      00222D FF               [12]  799 	mov	r7,a
      00222E 74 C0            [12]  800 	mov	a,#0xc0
      002230 2E               [12]  801 	add	a,r6
      002231 FE               [12]  802 	mov	r6,a
      002232 E4               [12]  803 	clr	a
      002233 3F               [12]  804 	addc	a,r7
      002234 FF               [12]  805 	mov	r7,a
      002235 E5 10            [12]  806 	mov	a,_bp
      002237 24 08            [12]  807 	add	a,#0x08
      002239 F8               [12]  808 	mov	r0,a
      00223A 86 82            [24]  809 	mov	dpl,@r0
      00223C 08               [12]  810 	inc	r0
      00223D 86 83            [24]  811 	mov	dph,@r0
      00223F 08               [12]  812 	inc	r0
      002240 86 F0            [24]  813 	mov	b,@r0
      002242 EE               [12]  814 	mov	a,r6
      002243 12 2C 53         [24]  815 	lcall	__gptrput
      002246 A3               [24]  816 	inc	dptr
      002247 EF               [12]  817 	mov	a,r7
      002248 12 2C 53         [24]  818 	lcall	__gptrput
      00224B 80 55            [24]  819 	sjmp	00110$
      00224D                        820 00109$:
                                    821 ;	walk.c:131: else if (t->c >= COLS) t->c -= COLS;
      00224D E5 10            [12]  822 	mov	a,_bp
      00224F 24 08            [12]  823 	add	a,#0x08
      002251 F8               [12]  824 	mov	r0,a
      002252 86 82            [24]  825 	mov	dpl,@r0
      002254 08               [12]  826 	inc	r0
      002255 86 83            [24]  827 	mov	dph,@r0
      002257 08               [12]  828 	inc	r0
      002258 86 F0            [24]  829 	mov	b,@r0
      00225A 12 2E 5E         [24]  830 	lcall	__gptrget
      00225D FE               [12]  831 	mov	r6,a
      00225E A3               [24]  832 	inc	dptr
      00225F 12 2E 5E         [24]  833 	lcall	__gptrget
      002262 FF               [12]  834 	mov	r7,a
      002263 C3               [12]  835 	clr	c
      002264 EE               [12]  836 	mov	a,r6
      002265 94 C0            [12]  837 	subb	a,#0xc0
      002267 EF               [12]  838 	mov	a,r7
      002268 64 80            [12]  839 	xrl	a,#0x80
      00226A 94 80            [12]  840 	subb	a,#0x80
      00226C 40 34            [24]  841 	jc	00110$
      00226E E5 10            [12]  842 	mov	a,_bp
      002270 24 08            [12]  843 	add	a,#0x08
      002272 F8               [12]  844 	mov	r0,a
      002273 86 82            [24]  845 	mov	dpl,@r0
      002275 08               [12]  846 	inc	r0
      002276 86 83            [24]  847 	mov	dph,@r0
      002278 08               [12]  848 	inc	r0
      002279 86 F0            [24]  849 	mov	b,@r0
      00227B 12 2E 5E         [24]  850 	lcall	__gptrget
      00227E FE               [12]  851 	mov	r6,a
      00227F A3               [24]  852 	inc	dptr
      002280 12 2E 5E         [24]  853 	lcall	__gptrget
      002283 FF               [12]  854 	mov	r7,a
      002284 EE               [12]  855 	mov	a,r6
      002285 24 40            [12]  856 	add	a,#0x40
      002287 FE               [12]  857 	mov	r6,a
      002288 EF               [12]  858 	mov	a,r7
      002289 34 FF            [12]  859 	addc	a,#0xff
      00228B FF               [12]  860 	mov	r7,a
      00228C E5 10            [12]  861 	mov	a,_bp
      00228E 24 08            [12]  862 	add	a,#0x08
      002290 F8               [12]  863 	mov	r0,a
      002291 86 82            [24]  864 	mov	dpl,@r0
      002293 08               [12]  865 	inc	r0
      002294 86 83            [24]  866 	mov	dph,@r0
      002296 08               [12]  867 	inc	r0
      002297 86 F0            [24]  868 	mov	b,@r0
      002299 EE               [12]  869 	mov	a,r6
      00229A 12 2C 53         [24]  870 	lcall	__gptrput
      00229D A3               [24]  871 	inc	dptr
      00229E EF               [12]  872 	mov	a,r7
      00229F 12 2C 53         [24]  873 	lcall	__gptrput
      0022A2                        874 00110$:
                                    875 ;	walk.c:133: if (g[t->r][t->c] == 0xaau) return 0u;
      0022A2 A8 10            [24]  876 	mov	r0,_bp
      0022A4 08               [12]  877 	inc	r0
      0022A5 86 82            [24]  878 	mov	dpl,@r0
      0022A7 08               [12]  879 	inc	r0
      0022A8 86 83            [24]  880 	mov	dph,@r0
      0022AA 08               [12]  881 	inc	r0
      0022AB 86 F0            [24]  882 	mov	b,@r0
      0022AD 12 2E 5E         [24]  883 	lcall	__gptrget
      0022B0 FE               [12]  884 	mov	r6,a
      0022B1 A3               [24]  885 	inc	dptr
      0022B2 12 2E 5E         [24]  886 	lcall	__gptrget
      0022B5 FF               [12]  887 	mov	r7,a
      0022B6 C0 06            [24]  888 	push	ar6
      0022B8 C0 07            [24]  889 	push	ar7
      0022BA 90 00 C0         [24]  890 	mov	dptr,#0x00c0
      0022BD 12 2C 6E         [24]  891 	lcall	__mulint
      0022C0 AE 82            [24]  892 	mov	r6,dpl
      0022C2 AF 83            [24]  893 	mov	r7,dph
      0022C4 15 81            [12]  894 	dec	sp
      0022C6 15 81            [12]  895 	dec	sp
      0022C8 EE               [12]  896 	mov	a,r6
      0022C9 24 00            [12]  897 	add	a,#_g
      0022CB FE               [12]  898 	mov	r6,a
      0022CC EF               [12]  899 	mov	a,r7
      0022CD 34 46            [12]  900 	addc	a,#(_g >> 8)
      0022CF FF               [12]  901 	mov	r7,a
      0022D0 E5 10            [12]  902 	mov	a,_bp
      0022D2 24 08            [12]  903 	add	a,#0x08
      0022D4 F8               [12]  904 	mov	r0,a
      0022D5 86 82            [24]  905 	mov	dpl,@r0
      0022D7 08               [12]  906 	inc	r0
      0022D8 86 83            [24]  907 	mov	dph,@r0
      0022DA 08               [12]  908 	inc	r0
      0022DB 86 F0            [24]  909 	mov	b,@r0
      0022DD 12 2E 5E         [24]  910 	lcall	__gptrget
      0022E0 FC               [12]  911 	mov	r4,a
      0022E1 A3               [24]  912 	inc	dptr
      0022E2 12 2E 5E         [24]  913 	lcall	__gptrget
      0022E5 FD               [12]  914 	mov	r5,a
      0022E6 EC               [12]  915 	mov	a,r4
      0022E7 2E               [12]  916 	add	a,r6
      0022E8 F5 82            [12]  917 	mov	dpl,a
      0022EA ED               [12]  918 	mov	a,r5
      0022EB 3F               [12]  919 	addc	a,r7
      0022EC F5 83            [12]  920 	mov	dph,a
      0022EE E0               [24]  921 	movx	a,@dptr
      0022EF FF               [12]  922 	mov	r7,a
      0022F0 BF AA 05         [24]  923 	cjne	r7,#0xaa,00114$
      0022F3 75 82 00         [24]  924 	mov	dpl,#0x00
      0022F6 80 59            [24]  925 	sjmp	00116$
      0022F8                        926 00114$:
                                    927 ;	walk.c:134: else if (g[t->r][t->c] != 0x55u) bang();
      0022F8 A8 10            [24]  928 	mov	r0,_bp
      0022FA 08               [12]  929 	inc	r0
      0022FB 86 82            [24]  930 	mov	dpl,@r0
      0022FD 08               [12]  931 	inc	r0
      0022FE 86 83            [24]  932 	mov	dph,@r0
      002300 08               [12]  933 	inc	r0
      002301 86 F0            [24]  934 	mov	b,@r0
      002303 12 2E 5E         [24]  935 	lcall	__gptrget
      002306 FE               [12]  936 	mov	r6,a
      002307 A3               [24]  937 	inc	dptr
      002308 12 2E 5E         [24]  938 	lcall	__gptrget
      00230B FF               [12]  939 	mov	r7,a
      00230C C0 06            [24]  940 	push	ar6
      00230E C0 07            [24]  941 	push	ar7
      002310 90 00 C0         [24]  942 	mov	dptr,#0x00c0
      002313 12 2C 6E         [24]  943 	lcall	__mulint
      002316 AE 82            [24]  944 	mov	r6,dpl
      002318 AF 83            [24]  945 	mov	r7,dph
      00231A 15 81            [12]  946 	dec	sp
      00231C 15 81            [12]  947 	dec	sp
      00231E EE               [12]  948 	mov	a,r6
      00231F 24 00            [12]  949 	add	a,#_g
      002321 FE               [12]  950 	mov	r6,a
      002322 EF               [12]  951 	mov	a,r7
      002323 34 46            [12]  952 	addc	a,#(_g >> 8)
      002325 FF               [12]  953 	mov	r7,a
      002326 E5 10            [12]  954 	mov	a,_bp
      002328 24 08            [12]  955 	add	a,#0x08
      00232A F8               [12]  956 	mov	r0,a
      00232B 86 82            [24]  957 	mov	dpl,@r0
      00232D 08               [12]  958 	inc	r0
      00232E 86 83            [24]  959 	mov	dph,@r0
      002330 08               [12]  960 	inc	r0
      002331 86 F0            [24]  961 	mov	b,@r0
      002333 12 2E 5E         [24]  962 	lcall	__gptrget
      002336 FC               [12]  963 	mov	r4,a
      002337 A3               [24]  964 	inc	dptr
      002338 12 2E 5E         [24]  965 	lcall	__gptrget
      00233B FD               [12]  966 	mov	r5,a
      00233C EC               [12]  967 	mov	a,r4
      00233D 2E               [12]  968 	add	a,r6
      00233E F5 82            [12]  969 	mov	dpl,a
      002340 ED               [12]  970 	mov	a,r5
      002341 3F               [12]  971 	addc	a,r7
      002342 F5 83            [12]  972 	mov	dph,a
      002344 E0               [24]  973 	movx	a,@dptr
      002345 FF               [12]  974 	mov	r7,a
      002346 BF 55 02         [24]  975 	cjne	r7,#0x55,00148$
      002349 80 03            [24]  976 	sjmp	00115$
      00234B                        977 00148$:
      00234B 12 20 71         [24]  978 	lcall	_bang
      00234E                        979 00115$:
                                    980 ;	walk.c:136: return 1u;
      00234E 75 82 01         [24]  981 	mov	dpl,#0x01
      002351                        982 00116$:
                                    983 ;	walk.c:137: }
      002351 85 10 81         [24]  984 	mov	sp,_bp
      002354 D0 10            [24]  985 	pop	_bp
      002356 22               [24]  986 	ret
                                    987 ;------------------------------------------------------------
                                    988 ;Allocation info for local variables in function 'walk'
                                    989 ;------------------------------------------------------------
                                    990 ;nstart                    Allocated to registers 
                                    991 ;cur                       Allocated to stack - _bp +10
                                    992 ;t                         Allocated to stack - _bp +14
                                    993 ;j                         Allocated to stack - _bp +18
                                    994 ;f                         Allocated to registers r3 
                                    995 ;sloc0                     Allocated to stack - _bp +1
                                    996 ;sloc1                     Allocated to stack - _bp +2
                                    997 ;sloc2                     Allocated to stack - _bp +3
                                    998 ;sloc3                     Allocated to stack - _bp +17
                                    999 ;sloc4                     Allocated to stack - _bp +4
                                   1000 ;sloc5                     Allocated to stack - _bp +5
                                   1001 ;sloc6                     Allocated to stack - _bp +6
                                   1002 ;sloc7                     Allocated to stack - _bp +7
                                   1003 ;------------------------------------------------------------
                                   1004 ;	walk.c:139: static void walk(struct node *nstart) {
                                   1005 ;	-----------------------------------------
                                   1006 ;	 function walk
                                   1007 ;	-----------------------------------------
      002357                       1008 _walk:
      002357 C0 10            [24] 1009 	push	_bp
      002359 E5 81            [12] 1010 	mov	a,sp
      00235B F5 10            [12] 1011 	mov	_bp,a
      00235D 24 12            [12] 1012 	add	a,#0x12
      00235F F5 81            [12] 1013 	mov	sp,a
      002361 AD 82            [24] 1014 	mov	r5,dpl
      002363 AE 83            [24] 1015 	mov	r6,dph
      002365 AF F0            [24] 1016 	mov	r7,b
                                   1017 ;	walk.c:143: cur = *nstart;
      002367 E5 10            [12] 1018 	mov	a,_bp
      002369 24 0A            [12] 1019 	add	a,#0x0a
      00236B F9               [12] 1020 	mov	r1,a
      00236C FA               [12] 1021 	mov	r2,a
      00236D 7B 00            [12] 1022 	mov	r3,#0x00
      00236F 7C 40            [12] 1023 	mov	r4,#0x40
      002371 C0 01            [24] 1024 	push	ar1
      002373 74 04            [12] 1025 	mov	a,#0x04
      002375 C0 E0            [24] 1026 	push	acc
      002377 E4               [12] 1027 	clr	a
      002378 C0 E0            [24] 1028 	push	acc
      00237A C0 05            [24] 1029 	push	ar5
      00237C C0 06            [24] 1030 	push	ar6
      00237E C0 07            [24] 1031 	push	ar7
      002380 8A 82            [24] 1032 	mov	dpl,r2
      002382 8B 83            [24] 1033 	mov	dph,r3
      002384 8C F0            [24] 1034 	mov	b,r4
      002386 12 2D 0C         [24] 1035 	lcall	___memcpy
      002389 E5 81            [12] 1036 	mov	a,sp
      00238B 24 FB            [12] 1037 	add	a,#0xfb
      00238D F5 81            [12] 1038 	mov	sp,a
      00238F D0 01            [24] 1039 	pop	ar1
                                   1040 ;	walk.c:145: process:
      002391 E5 10            [12] 1041 	mov	a,_bp
      002393 24 06            [12] 1042 	add	a,#0x06
      002395 F8               [12] 1043 	mov	r0,a
      002396 A6 01            [24] 1044 	mov	@r0,ar1
      002398 E5 10            [12] 1045 	mov	a,_bp
      00239A 24 0E            [12] 1046 	add	a,#0x0e
      00239C FE               [12] 1047 	mov	r6,a
      00239D E5 10            [12] 1048 	mov	a,_bp
      00239F 24 03            [12] 1049 	add	a,#0x03
      0023A1 F8               [12] 1050 	mov	r0,a
      0023A2 A6 01            [24] 1051 	mov	@r0,ar1
      0023A4 E5 10            [12] 1052 	mov	a,_bp
      0023A6 24 05            [12] 1053 	add	a,#0x05
      0023A8 F8               [12] 1054 	mov	r0,a
      0023A9 A6 01            [24] 1055 	mov	@r0,ar1
      0023AB E5 10            [12] 1056 	mov	a,_bp
      0023AD 24 04            [12] 1057 	add	a,#0x04
      0023AF F8               [12] 1058 	mov	r0,a
      0023B0 A6 06            [24] 1059 	mov	@r0,ar6
      0023B2 89 02            [24] 1060 	mov	ar2,r1
      0023B4 A8 10            [24] 1061 	mov	r0,_bp
      0023B6 08               [12] 1062 	inc	r0
      0023B7 A6 06            [24] 1063 	mov	@r0,ar6
      0023B9 A8 10            [24] 1064 	mov	r0,_bp
      0023BB 08               [12] 1065 	inc	r0
      0023BC 08               [12] 1066 	inc	r0
      0023BD A6 01            [24] 1067 	mov	@r0,ar1
      0023BF 74 02            [12] 1068 	mov	a,#0x02
      0023C1 29               [12] 1069 	add	a,r1
      0023C2 F8               [12] 1070 	mov	r0,a
      0023C3                       1071 00101$:
                                   1072 ;	walk.c:146: g[cur.r][cur.c] = 0xaau;
      0023C3 C0 02            [24] 1073 	push	ar2
      0023C5 87 02            [24] 1074 	mov	ar2,@r1
      0023C7 09               [12] 1075 	inc	r1
      0023C8 87 05            [24] 1076 	mov	ar5,@r1
      0023CA 19               [12] 1077 	dec	r1
      0023CB C0 06            [24] 1078 	push	ar6
      0023CD C0 01            [24] 1079 	push	ar1
      0023CF C0 00            [24] 1080 	push	ar0
      0023D1 C0 02            [24] 1081 	push	ar2
      0023D3 C0 05            [24] 1082 	push	ar5
      0023D5 90 00 C0         [24] 1083 	mov	dptr,#0x00c0
      0023D8 12 2C 6E         [24] 1084 	lcall	__mulint
      0023DB AA 82            [24] 1085 	mov	r2,dpl
      0023DD AD 83            [24] 1086 	mov	r5,dph
      0023DF 15 81            [12] 1087 	dec	sp
      0023E1 15 81            [12] 1088 	dec	sp
      0023E3 D0 00            [24] 1089 	pop	ar0
      0023E5 D0 01            [24] 1090 	pop	ar1
      0023E7 EA               [12] 1091 	mov	a,r2
      0023E8 24 00            [12] 1092 	add	a,#_g
      0023EA FF               [12] 1093 	mov	r7,a
      0023EB ED               [12] 1094 	mov	a,r5
      0023EC 34 46            [12] 1095 	addc	a,#(_g >> 8)
      0023EE FC               [12] 1096 	mov	r4,a
      0023EF 86 02            [24] 1097 	mov	ar2,@r0
      0023F1 08               [12] 1098 	inc	r0
      0023F2 86 05            [24] 1099 	mov	ar5,@r0
      0023F4 18               [12] 1100 	dec	r0
      0023F5 EA               [12] 1101 	mov	a,r2
      0023F6 2F               [12] 1102 	add	a,r7
      0023F7 F5 82            [12] 1103 	mov	dpl,a
      0023F9 ED               [12] 1104 	mov	a,r5
      0023FA 3C               [12] 1105 	addc	a,r4
      0023FB F5 83            [12] 1106 	mov	dph,a
      0023FD 74 AA            [12] 1107 	mov	a,#0xaa
      0023FF F0               [24] 1108 	movx	@dptr,a
                                   1109 ;	walk.c:148: printf("\033[%d;%dHo", cur.r + 4, cur.c + 1);
      002400 86 02            [24] 1110 	mov	ar2,@r0
      002402 08               [12] 1111 	inc	r0
      002403 86 05            [24] 1112 	mov	ar5,@r0
      002405 18               [12] 1113 	dec	r0
      002406 74 01            [12] 1114 	mov	a,#0x01
      002408 2A               [12] 1115 	add	a,r2
      002409 FF               [12] 1116 	mov	r7,a
      00240A E4               [12] 1117 	clr	a
      00240B 3D               [12] 1118 	addc	a,r5
      00240C FC               [12] 1119 	mov	r4,a
      00240D 87 02            [24] 1120 	mov	ar2,@r1
      00240F 09               [12] 1121 	inc	r1
      002410 87 05            [24] 1122 	mov	ar5,@r1
      002412 19               [12] 1123 	dec	r1
      002413 74 04            [12] 1124 	mov	a,#0x04
      002415 2A               [12] 1125 	add	a,r2
      002416 FA               [12] 1126 	mov	r2,a
      002417 E4               [12] 1127 	clr	a
      002418 3D               [12] 1128 	addc	a,r5
      002419 FD               [12] 1129 	mov	r5,a
      00241A C0 02            [24] 1130 	push	ar2
      00241C C0 01            [24] 1131 	push	ar1
      00241E C0 00            [24] 1132 	push	ar0
      002420 C0 07            [24] 1133 	push	ar7
      002422 C0 04            [24] 1134 	push	ar4
      002424 C0 02            [24] 1135 	push	ar2
      002426 C0 05            [24] 1136 	push	ar5
      002428 74 7B            [12] 1137 	mov	a,#___str_1
      00242A C0 E0            [24] 1138 	push	acc
      00242C 74 44            [12] 1139 	mov	a,#(___str_1 >> 8)
      00242E C0 E0            [24] 1140 	push	acc
      002430 74 80            [12] 1141 	mov	a,#0x80
      002432 C0 E0            [24] 1142 	push	acc
      002434 12 2E 25         [24] 1143 	lcall	_printf
      002437 E5 81            [12] 1144 	mov	a,sp
      002439 24 F9            [12] 1145 	add	a,#0xf9
      00243B F5 81            [12] 1146 	mov	sp,a
                                   1147 ;	walk.c:149: setOE(OE76_MASK7);
      00243D 75 82 80         [24] 1148 	mov	dpl,#0x80
      002440 12 20 7E         [24] 1149 	lcall	_setOE
      002443 D0 00            [24] 1150 	pop	ar0
      002445 D0 01            [24] 1151 	pop	ar1
      002447 D0 02            [24] 1152 	pop	ar2
      002449 D0 06            [24] 1153 	pop	ar6
                                   1154 ;	walk.c:177: return;
      00244B D0 02            [24] 1155 	pop	ar2
                                   1156 ;	walk.c:151: next:
      00244D                       1157 00102$:
                                   1158 ;	walk.c:152: printf("\033[2;1H% 8d% 8d% 8d", sp, cur.r, cur.c);
      00244D C0 02            [24] 1159 	push	ar2
      00244F 86 07            [24] 1160 	mov	ar7,@r0
      002451 08               [12] 1161 	inc	r0
      002452 86 04            [24] 1162 	mov	ar4,@r0
      002454 18               [12] 1163 	dec	r0
      002455 87 02            [24] 1164 	mov	ar2,@r1
      002457 09               [12] 1165 	inc	r1
      002458 87 05            [24] 1166 	mov	ar5,@r1
      00245A 19               [12] 1167 	dec	r1
      00245B C0 06            [24] 1168 	push	ar6
      00245D C0 02            [24] 1169 	push	ar2
      00245F C0 01            [24] 1170 	push	ar1
      002461 C0 00            [24] 1171 	push	ar0
      002463 C0 07            [24] 1172 	push	ar7
      002465 C0 04            [24] 1173 	push	ar4
      002467 C0 02            [24] 1174 	push	ar2
      002469 C0 05            [24] 1175 	push	ar5
      00246B 90 FA 00         [24] 1176 	mov	dptr,#_sp
      00246E E0               [24] 1177 	movx	a,@dptr
      00246F C0 E0            [24] 1178 	push	acc
      002471 A3               [24] 1179 	inc	dptr
      002472 E0               [24] 1180 	movx	a,@dptr
      002473 C0 E0            [24] 1181 	push	acc
      002475 74 85            [12] 1182 	mov	a,#___str_2
      002477 C0 E0            [24] 1183 	push	acc
      002479 74 44            [12] 1184 	mov	a,#(___str_2 >> 8)
      00247B C0 E0            [24] 1185 	push	acc
      00247D 74 80            [12] 1186 	mov	a,#0x80
      00247F C0 E0            [24] 1187 	push	acc
      002481 12 2E 25         [24] 1188 	lcall	_printf
      002484 E5 81            [12] 1189 	mov	a,sp
      002486 24 F7            [12] 1190 	add	a,#0xf7
      002488 F5 81            [12] 1191 	mov	sp,a
                                   1192 ;	walk.c:153: unsetOE(OE76_MASK7 | OE76_MASK6);
      00248A 75 82 C0         [24] 1193 	mov	dpl,#0xc0
      00248D 12 20 97         [24] 1194 	lcall	_unsetOE
      002490 D0 00            [24] 1195 	pop	ar0
      002492 D0 01            [24] 1196 	pop	ar1
      002494 D0 02            [24] 1197 	pop	ar2
      002496 D0 06            [24] 1198 	pop	ar6
                                   1199 ;	walk.c:155: for (j = 0u, f = 0u; j < NMAX; j++) {
      002498 7B 00            [12] 1200 	mov	r3,#0x00
      00249A C0 00            [24] 1201 	push	ar0
      00249C E5 10            [12] 1202 	mov	a,_bp
      00249E 24 12            [12] 1203 	add	a,#0x12
      0024A0 F8               [12] 1204 	mov	r0,a
      0024A1 76 00            [12] 1205 	mov	@r0,#0x00
      0024A3 D0 00            [24] 1206 	pop	ar0
                                   1207 ;	walk.c:177: return;
      0024A5 D0 02            [24] 1208 	pop	ar2
                                   1209 ;	walk.c:155: for (j = 0u, f = 0u; j < NMAX; j++) {
      0024A7                       1210 00119$:
      0024A7 C0 00            [24] 1211 	push	ar0
      0024A9 E5 10            [12] 1212 	mov	a,_bp
      0024AB 24 12            [12] 1213 	add	a,#0x12
      0024AD F8               [12] 1214 	mov	r0,a
      0024AE B6 10 00         [24] 1215 	cjne	@r0,#0x10,00159$
      0024B1                       1216 00159$:
      0024B1 D0 00            [24] 1217 	pop	ar0
      0024B3 50 7A            [24] 1218 	jnc	00106$
                                   1219 ;	walk.c:156: if (!update(&t, &cur, j)) continue;
      0024B5 C0 02            [24] 1220 	push	ar2
      0024B7 C0 00            [24] 1221 	push	ar0
      0024B9 E5 10            [12] 1222 	mov	a,_bp
      0024BB 24 06            [12] 1223 	add	a,#0x06
      0024BD F8               [12] 1224 	mov	r0,a
      0024BE C0 01            [24] 1225 	push	ar1
      0024C0 E5 10            [12] 1226 	mov	a,_bp
      0024C2 24 07            [12] 1227 	add	a,#0x07
      0024C4 F9               [12] 1228 	mov	r1,a
      0024C5 E6               [12] 1229 	mov	a,@r0
      0024C6 F7               [12] 1230 	mov	@r1,a
      0024C7 09               [12] 1231 	inc	r1
      0024C8 77 00            [12] 1232 	mov	@r1,#0x00
      0024CA 09               [12] 1233 	inc	r1
      0024CB 77 40            [12] 1234 	mov	@r1,#0x40
      0024CD D0 01            [24] 1235 	pop	ar1
      0024CF D0 00            [24] 1236 	pop	ar0
      0024D1 8E 04            [24] 1237 	mov	ar4,r6
      0024D3 7D 00            [12] 1238 	mov	r5,#0x00
      0024D5 7F 40            [12] 1239 	mov	r7,#0x40
      0024D7 C0 06            [24] 1240 	push	ar6
      0024D9 C0 03            [24] 1241 	push	ar3
      0024DB C0 02            [24] 1242 	push	ar2
      0024DD C0 01            [24] 1243 	push	ar1
      0024DF C0 00            [24] 1244 	push	ar0
      0024E1 85 00 F0         [24] 1245 	mov	b,ar0
      0024E4 E5 10            [12] 1246 	mov	a,_bp
      0024E6 24 12            [12] 1247 	add	a,#0x12
      0024E8 F8               [12] 1248 	mov	r0,a
      0024E9 E6               [12] 1249 	mov	a,@r0
      0024EA C0 E0            [24] 1250 	push	acc
      0024EC A8 F0            [24] 1251 	mov	r0,b
      0024EE 85 00 F0         [24] 1252 	mov	b,ar0
      0024F1 E5 10            [12] 1253 	mov	a,_bp
      0024F3 24 07            [12] 1254 	add	a,#0x07
      0024F5 F8               [12] 1255 	mov	r0,a
      0024F6 E6               [12] 1256 	mov	a,@r0
      0024F7 C0 E0            [24] 1257 	push	acc
      0024F9 08               [12] 1258 	inc	r0
      0024FA E6               [12] 1259 	mov	a,@r0
      0024FB C0 E0            [24] 1260 	push	acc
      0024FD 08               [12] 1261 	inc	r0
      0024FE E6               [12] 1262 	mov	a,@r0
      0024FF C0 E0            [24] 1263 	push	acc
      002501 8C 82            [24] 1264 	mov	dpl,r4
      002503 8D 83            [24] 1265 	mov	dph,r5
      002505 8F F0            [24] 1266 	mov	b,r7
      002507 12 20 CA         [24] 1267 	lcall	_update
      00250A AF 82            [24] 1268 	mov	r7,dpl
      00250C E5 81            [12] 1269 	mov	a,sp
      00250E 24 FC            [12] 1270 	add	a,#0xfc
      002510 F5 81            [12] 1271 	mov	sp,a
      002512 D0 00            [24] 1272 	pop	ar0
      002514 D0 01            [24] 1273 	pop	ar1
      002516 D0 02            [24] 1274 	pop	ar2
      002518 D0 03            [24] 1275 	pop	ar3
      00251A D0 06            [24] 1276 	pop	ar6
      00251C D0 02            [24] 1277 	pop	ar2
      00251E EF               [12] 1278 	mov	a,r7
      00251F 60 01            [24] 1279 	jz	00105$
                                   1280 ;	walk.c:157: f++;
      002521 0B               [12] 1281 	inc	r3
      002522                       1282 00105$:
                                   1283 ;	walk.c:155: for (j = 0u, f = 0u; j < NMAX; j++) {
      002522 C0 00            [24] 1284 	push	ar0
      002524 E5 10            [12] 1285 	mov	a,_bp
      002526 24 12            [12] 1286 	add	a,#0x12
      002528 F8               [12] 1287 	mov	r0,a
      002529 06               [12] 1288 	inc	@r0
      00252A D0 00            [24] 1289 	pop	ar0
      00252C 02 24 A7         [24] 1290 	ljmp	00119$
      00252F                       1291 00106$:
                                   1292 ;	walk.c:160: if (f) {
      00252F EB               [12] 1293 	mov	a,r3
      002530 70 03            [24] 1294 	jnz	00162$
      002532 02 26 49         [24] 1295 	ljmp	00115$
      002535                       1296 00162$:
                                   1297 ;	walk.c:161: while (1) {
      002535                       1298 00112$:
                                   1299 ;	walk.c:162: j = (uint8_t)(rand() % NMAX);
      002535 C0 02            [24] 1300 	push	ar2
      002537 C0 06            [24] 1301 	push	ar6
      002539 C0 02            [24] 1302 	push	ar2
      00253B C0 01            [24] 1303 	push	ar1
      00253D C0 00            [24] 1304 	push	ar0
      00253F 12 2B 76         [24] 1305 	lcall	_rand
      002542 AD 82            [24] 1306 	mov	r5,dpl
      002544 D0 00            [24] 1307 	pop	ar0
      002546 D0 01            [24] 1308 	pop	ar1
      002548 D0 02            [24] 1309 	pop	ar2
      00254A D0 06            [24] 1310 	pop	ar6
      00254C 53 05 0F         [24] 1311 	anl	ar5,#0x0f
      00254F 8D 04            [24] 1312 	mov	ar4,r5
                                   1313 ;	walk.c:163: if (!update(&t, &cur, j)) continue;
      002551 C0 00            [24] 1314 	push	ar0
      002553 E5 10            [12] 1315 	mov	a,_bp
      002555 24 05            [12] 1316 	add	a,#0x05
      002557 F8               [12] 1317 	mov	r0,a
      002558 C0 01            [24] 1318 	push	ar1
      00255A E5 10            [12] 1319 	mov	a,_bp
      00255C 24 07            [12] 1320 	add	a,#0x07
      00255E F9               [12] 1321 	mov	r1,a
      00255F E6               [12] 1322 	mov	a,@r0
      002560 F7               [12] 1323 	mov	@r1,a
      002561 09               [12] 1324 	inc	r1
      002562 77 00            [12] 1325 	mov	@r1,#0x00
      002564 09               [12] 1326 	inc	r1
      002565 77 40            [12] 1327 	mov	@r1,#0x40
      002567 D0 01            [24] 1328 	pop	ar1
      002569 E5 10            [12] 1329 	mov	a,_bp
      00256B 24 04            [12] 1330 	add	a,#0x04
      00256D F8               [12] 1331 	mov	r0,a
      00256E 86 02            [24] 1332 	mov	ar2,@r0
      002570 7D 00            [12] 1333 	mov	r5,#0x00
      002572 7F 40            [12] 1334 	mov	r7,#0x40
      002574 D0 00            [24] 1335 	pop	ar0
      002576 C0 06            [24] 1336 	push	ar6
      002578 C0 02            [24] 1337 	push	ar2
      00257A C0 01            [24] 1338 	push	ar1
      00257C C0 00            [24] 1339 	push	ar0
      00257E C0 04            [24] 1340 	push	ar4
      002580 85 00 F0         [24] 1341 	mov	b,ar0
      002583 E5 10            [12] 1342 	mov	a,_bp
      002585 24 07            [12] 1343 	add	a,#0x07
      002587 F8               [12] 1344 	mov	r0,a
      002588 E6               [12] 1345 	mov	a,@r0
      002589 C0 E0            [24] 1346 	push	acc
      00258B 08               [12] 1347 	inc	r0
      00258C E6               [12] 1348 	mov	a,@r0
      00258D C0 E0            [24] 1349 	push	acc
      00258F 08               [12] 1350 	inc	r0
      002590 E6               [12] 1351 	mov	a,@r0
      002591 C0 E0            [24] 1352 	push	acc
      002593 8A 82            [24] 1353 	mov	dpl,r2
      002595 8D 83            [24] 1354 	mov	dph,r5
      002597 8F F0            [24] 1355 	mov	b,r7
      002599 12 20 CA         [24] 1356 	lcall	_update
      00259C AF 82            [24] 1357 	mov	r7,dpl
      00259E E5 81            [12] 1358 	mov	a,sp
      0025A0 24 FC            [12] 1359 	add	a,#0xfc
      0025A2 F5 81            [12] 1360 	mov	sp,a
      0025A4 D0 00            [24] 1361 	pop	ar0
      0025A6 D0 01            [24] 1362 	pop	ar1
      0025A8 D0 02            [24] 1363 	pop	ar2
      0025AA D0 06            [24] 1364 	pop	ar6
      0025AC D0 02            [24] 1365 	pop	ar2
      0025AE EF               [12] 1366 	mov	a,r7
      0025AF 60 84            [24] 1367 	jz	00112$
                                   1368 ;	walk.c:164: if (!stpush(&cur)) bang();
      0025B1 8A 04            [24] 1369 	mov	ar4,r2
      0025B3 7D 00            [12] 1370 	mov	r5,#0x00
      0025B5 7F 40            [12] 1371 	mov	r7,#0x40
      0025B7 8C 82            [24] 1372 	mov	dpl,r4
      0025B9 8D 83            [24] 1373 	mov	dph,r5
      0025BB 8F F0            [24] 1374 	mov	b,r7
      0025BD C0 06            [24] 1375 	push	ar6
      0025BF C0 02            [24] 1376 	push	ar2
      0025C1 C0 01            [24] 1377 	push	ar1
      0025C3 C0 00            [24] 1378 	push	ar0
      0025C5 12 2A B3         [24] 1379 	lcall	_stpush
      0025C8 E5 82            [12] 1380 	mov	a,dpl
      0025CA D0 00            [24] 1381 	pop	ar0
      0025CC D0 01            [24] 1382 	pop	ar1
      0025CE D0 02            [24] 1383 	pop	ar2
      0025D0 D0 06            [24] 1384 	pop	ar6
      0025D2 70 13            [24] 1385 	jnz	00110$
      0025D4 C0 06            [24] 1386 	push	ar6
      0025D6 C0 02            [24] 1387 	push	ar2
      0025D8 C0 01            [24] 1388 	push	ar1
      0025DA C0 00            [24] 1389 	push	ar0
      0025DC 12 20 71         [24] 1390 	lcall	_bang
      0025DF D0 00            [24] 1391 	pop	ar0
      0025E1 D0 01            [24] 1392 	pop	ar1
      0025E3 D0 02            [24] 1393 	pop	ar2
      0025E5 D0 06            [24] 1394 	pop	ar6
      0025E7                       1395 00110$:
                                   1396 ;	walk.c:165: cur = t;
      0025E7 C0 02            [24] 1397 	push	ar2
      0025E9 C0 00            [24] 1398 	push	ar0
      0025EB A8 10            [24] 1399 	mov	r0,_bp
      0025ED 08               [12] 1400 	inc	r0
      0025EE C0 01            [24] 1401 	push	ar1
      0025F0 E5 10            [12] 1402 	mov	a,_bp
      0025F2 24 07            [12] 1403 	add	a,#0x07
      0025F4 F9               [12] 1404 	mov	r1,a
      0025F5 E6               [12] 1405 	mov	a,@r0
      0025F6 F7               [12] 1406 	mov	@r1,a
      0025F7 09               [12] 1407 	inc	r1
      0025F8 77 00            [12] 1408 	mov	@r1,#0x00
      0025FA 09               [12] 1409 	inc	r1
      0025FB 77 40            [12] 1410 	mov	@r1,#0x40
      0025FD D0 01            [24] 1411 	pop	ar1
      0025FF A8 10            [24] 1412 	mov	r0,_bp
      002601 08               [12] 1413 	inc	r0
      002602 08               [12] 1414 	inc	r0
      002603 86 02            [24] 1415 	mov	ar2,@r0
      002605 7B 00            [12] 1416 	mov	r3,#0x00
      002607 7F 40            [12] 1417 	mov	r7,#0x40
      002609 D0 00            [24] 1418 	pop	ar0
      00260B C0 06            [24] 1419 	push	ar6
      00260D C0 02            [24] 1420 	push	ar2
      00260F C0 01            [24] 1421 	push	ar1
      002611 C0 00            [24] 1422 	push	ar0
      002613 74 04            [12] 1423 	mov	a,#0x04
      002615 C0 E0            [24] 1424 	push	acc
      002617 E4               [12] 1425 	clr	a
      002618 C0 E0            [24] 1426 	push	acc
      00261A 85 00 F0         [24] 1427 	mov	b,ar0
      00261D E5 10            [12] 1428 	mov	a,_bp
      00261F 24 07            [12] 1429 	add	a,#0x07
      002621 F8               [12] 1430 	mov	r0,a
      002622 E6               [12] 1431 	mov	a,@r0
      002623 C0 E0            [24] 1432 	push	acc
      002625 08               [12] 1433 	inc	r0
      002626 E6               [12] 1434 	mov	a,@r0
      002627 C0 E0            [24] 1435 	push	acc
      002629 08               [12] 1436 	inc	r0
      00262A E6               [12] 1437 	mov	a,@r0
      00262B C0 E0            [24] 1438 	push	acc
      00262D 8A 82            [24] 1439 	mov	dpl,r2
      00262F 8B 83            [24] 1440 	mov	dph,r3
      002631 8F F0            [24] 1441 	mov	b,r7
      002633 12 2D 0C         [24] 1442 	lcall	___memcpy
      002636 E5 81            [12] 1443 	mov	a,sp
      002638 24 FB            [12] 1444 	add	a,#0xfb
      00263A F5 81            [12] 1445 	mov	sp,a
      00263C D0 00            [24] 1446 	pop	ar0
      00263E D0 01            [24] 1447 	pop	ar1
      002640 D0 02            [24] 1448 	pop	ar2
      002642 D0 06            [24] 1449 	pop	ar6
                                   1450 ;	walk.c:166: goto process;
      002644 D0 02            [24] 1451 	pop	ar2
      002646 02 23 C3         [24] 1452 	ljmp	00101$
      002649                       1453 00115$:
                                   1454 ;	walk.c:170: printf("\033[%d;%dH.", cur.r + 4, cur.c + 1);
      002649 86 05            [24] 1455 	mov	ar5,@r0
      00264B 08               [12] 1456 	inc	r0
      00264C 86 07            [24] 1457 	mov	ar7,@r0
      00264E 18               [12] 1458 	dec	r0
      00264F 0D               [12] 1459 	inc	r5
      002650 BD 00 01         [24] 1460 	cjne	r5,#0x00,00165$
      002653 0F               [12] 1461 	inc	r7
      002654                       1462 00165$:
      002654 87 03            [24] 1463 	mov	ar3,@r1
      002656 09               [12] 1464 	inc	r1
      002657 87 04            [24] 1465 	mov	ar4,@r1
      002659 19               [12] 1466 	dec	r1
      00265A 74 04            [12] 1467 	mov	a,#0x04
      00265C 2B               [12] 1468 	add	a,r3
      00265D FB               [12] 1469 	mov	r3,a
      00265E E4               [12] 1470 	clr	a
      00265F 3C               [12] 1471 	addc	a,r4
      002660 FC               [12] 1472 	mov	r4,a
      002661 C0 06            [24] 1473 	push	ar6
      002663 C0 02            [24] 1474 	push	ar2
      002665 C0 01            [24] 1475 	push	ar1
      002667 C0 00            [24] 1476 	push	ar0
      002669 C0 05            [24] 1477 	push	ar5
      00266B C0 07            [24] 1478 	push	ar7
      00266D C0 03            [24] 1479 	push	ar3
      00266F C0 04            [24] 1480 	push	ar4
      002671 74 98            [12] 1481 	mov	a,#___str_3
      002673 C0 E0            [24] 1482 	push	acc
      002675 74 44            [12] 1483 	mov	a,#(___str_3 >> 8)
      002677 C0 E0            [24] 1484 	push	acc
      002679 74 80            [12] 1485 	mov	a,#0x80
      00267B C0 E0            [24] 1486 	push	acc
      00267D 12 2E 25         [24] 1487 	lcall	_printf
      002680 E5 81            [12] 1488 	mov	a,sp
      002682 24 F9            [12] 1489 	add	a,#0xf9
      002684 F5 81            [12] 1490 	mov	sp,a
                                   1491 ;	walk.c:171: setOE(OE76_MASK6);
      002686 75 82 40         [24] 1492 	mov	dpl,#0x40
      002689 12 20 7E         [24] 1493 	lcall	_setOE
      00268C D0 00            [24] 1494 	pop	ar0
      00268E D0 01            [24] 1495 	pop	ar1
      002690 D0 02            [24] 1496 	pop	ar2
      002692 D0 06            [24] 1497 	pop	ar6
                                   1498 ;	walk.c:173: if (stpop(&cur)) goto next;
      002694 C0 00            [24] 1499 	push	ar0
      002696 E5 10            [12] 1500 	mov	a,_bp
      002698 24 03            [12] 1501 	add	a,#0x03
      00269A F8               [12] 1502 	mov	r0,a
      00269B 86 04            [24] 1503 	mov	ar4,@r0
      00269D 7D 00            [12] 1504 	mov	r5,#0x00
      00269F 7F 40            [12] 1505 	mov	r7,#0x40
      0026A1 D0 00            [24] 1506 	pop	ar0
      0026A3 8C 82            [24] 1507 	mov	dpl,r4
      0026A5 8D 83            [24] 1508 	mov	dph,r5
      0026A7 8F F0            [24] 1509 	mov	b,r7
      0026A9 C0 06            [24] 1510 	push	ar6
      0026AB C0 02            [24] 1511 	push	ar2
      0026AD C0 01            [24] 1512 	push	ar1
      0026AF C0 00            [24] 1513 	push	ar0
      0026B1 12 2B 14         [24] 1514 	lcall	_stpop
      0026B4 E5 82            [12] 1515 	mov	a,dpl
      0026B6 D0 00            [24] 1516 	pop	ar0
      0026B8 D0 01            [24] 1517 	pop	ar1
      0026BA D0 02            [24] 1518 	pop	ar2
      0026BC D0 06            [24] 1519 	pop	ar6
      0026BE 60 03            [24] 1520 	jz	00166$
      0026C0 02 24 4D         [24] 1521 	ljmp	00102$
      0026C3                       1522 00166$:
                                   1523 ;	walk.c:175: unsetOE(OE76_MASK7 | OE76_MASK6);
      0026C3 75 82 C0         [24] 1524 	mov	dpl,#0xc0
      0026C6 12 20 97         [24] 1525 	lcall	_unsetOE
                                   1526 ;	walk.c:177: return;
                                   1527 ;	walk.c:178: }
      0026C9 85 10 81         [24] 1528 	mov	sp,_bp
      0026CC D0 10            [24] 1529 	pop	_bp
      0026CE 22               [24] 1530 	ret
                                   1531 ;------------------------------------------------------------
                                   1532 ;Allocation info for local variables in function 'main'
                                   1533 ;------------------------------------------------------------
                                   1534 ;initial                   Allocated to stack - _bp +9
                                   1535 ;N                         Allocated to stack - _bp +5
                                   1536 ;i                         Allocated to stack - _bp +7
                                   1537 ;j                         Allocated to registers r2 r6 
                                   1538 ;sloc0                     Allocated to stack - _bp +1
                                   1539 ;sloc1                     Allocated to stack - _bp +3
                                   1540 ;sloc2                     Allocated to stack - _bp +15
                                   1541 ;------------------------------------------------------------
                                   1542 ;	walk.c:180: void main(void) {
                                   1543 ;	-----------------------------------------
                                   1544 ;	 function main
                                   1545 ;	-----------------------------------------
      0026CF                       1546 _main:
      0026CF C0 10            [24] 1547 	push	_bp
      0026D1 E5 81            [12] 1548 	mov	a,sp
      0026D3 F5 10            [12] 1549 	mov	_bp,a
      0026D5 24 0C            [12] 1550 	add	a,#0x0c
      0026D7 F5 81            [12] 1551 	mov	sp,a
                                   1552 ;	walk.c:185: i0 = 1u;
      0026D9 78 11            [12] 1553 	mov	r0,#_i0
      0026DB 76 01            [12] 1554 	mov	@r0,#0x01
                                   1555 ;	walk.c:187: P1_7 = 1;
                                   1556 ;	assignBit
      0026DD D2 97            [12] 1557 	setb	_P1_7
                                   1558 ;	walk.c:188: IT0 = 1;
                                   1559 ;	assignBit
      0026DF D2 88            [12] 1560 	setb	_IT0
                                   1561 ;	walk.c:189: EX0 = 1;
                                   1562 ;	assignBit
      0026E1 D2 A8            [12] 1563 	setb	_EX0
                                   1564 ;	walk.c:190: EA = 1;
                                   1565 ;	assignBit
      0026E3 D2 AF            [12] 1566 	setb	_EA
                                   1567 ;	walk.c:192: srand(RND);
      0026E5 90 80 00         [24] 1568 	mov	dptr,#_RND
      0026E8 E0               [24] 1569 	movx	a,@dptr
      0026E9 FE               [12] 1570 	mov	r6,a
      0026EA A3               [24] 1571 	inc	dptr
      0026EB E0               [24] 1572 	movx	a,@dptr
      0026EC FF               [12] 1573 	mov	r7,a
      0026ED 8E 82            [24] 1574 	mov	dpl,r6
      0026EF 8F 83            [24] 1575 	mov	dph,r7
      0026F1 12 2C 3A         [24] 1576 	lcall	_srand
                                   1577 ;	walk.c:193: stinit();
      0026F4 12 2A AA         [24] 1578 	lcall	_stinit
                                   1579 ;	walk.c:195: puts("\033[2J\033[?25l");
      0026F7 90 44 A2         [24] 1580 	mov	dptr,#___str_4
      0026FA 75 F0 80         [24] 1581 	mov	b,#0x80
      0026FD 12 2D 9F         [24] 1582 	lcall	_puts
                                   1583 ;	walk.c:197: while (i0) {
      002700 E5 10            [12] 1584 	mov	a,_bp
      002702 24 09            [12] 1585 	add	a,#0x09
      002704 F9               [12] 1586 	mov	r1,a
      002705 FF               [12] 1587 	mov	r7,a
      002706 E5 10            [12] 1588 	mov	a,_bp
      002708 24 05            [12] 1589 	add	a,#0x05
      00270A F8               [12] 1590 	mov	r0,a
      00270B E4               [12] 1591 	clr	a
      00270C F6               [12] 1592 	mov	@r0,a
      00270D 08               [12] 1593 	inc	r0
      00270E F6               [12] 1594 	mov	@r0,a
      00270F                       1595 00108$:
      00270F 78 11            [12] 1596 	mov	r0,#_i0
      002711 E6               [12] 1597 	mov	a,@r0
      002712 70 03            [24] 1598 	jnz	00182$
      002714 02 2A 96         [24] 1599 	ljmp	00110$
      002717                       1600 00182$:
                                   1601 ;	walk.c:198: for (i = 0; i < ROWS; i++)
      002717 7B 00            [12] 1602 	mov	r3,#0x00
      002719 7C 00            [12] 1603 	mov	r4,#0x00
      00271B A8 10            [24] 1604 	mov	r0,_bp
      00271D 08               [12] 1605 	inc	r0
      00271E E4               [12] 1606 	clr	a
      00271F F6               [12] 1607 	mov	@r0,a
      002720 08               [12] 1608 	inc	r0
      002721 F6               [12] 1609 	mov	@r0,a
                                   1610 ;	walk.c:199: for (j = 0; j < COLS; j++)
      002722                       1611 00125$:
      002722 A8 10            [24] 1612 	mov	r0,_bp
      002724 08               [12] 1613 	inc	r0
      002725 C0 01            [24] 1614 	push	ar1
      002727 E5 10            [12] 1615 	mov	a,_bp
      002729 24 03            [12] 1616 	add	a,#0x03
      00272B F9               [12] 1617 	mov	r1,a
      00272C E6               [12] 1618 	mov	a,@r0
      00272D 24 00            [12] 1619 	add	a,#_g
      00272F F7               [12] 1620 	mov	@r1,a
      002730 08               [12] 1621 	inc	r0
      002731 E6               [12] 1622 	mov	a,@r0
      002732 34 46            [12] 1623 	addc	a,#(_g >> 8)
      002734 09               [12] 1624 	inc	r1
      002735 F7               [12] 1625 	mov	@r1,a
      002736 D0 01            [24] 1626 	pop	ar1
      002738 7A 00            [12] 1627 	mov	r2,#0x00
      00273A 7E 00            [12] 1628 	mov	r6,#0x00
      00273C                       1629 00112$:
                                   1630 ;	walk.c:200: g[i][j] = 0x55u;
      00273C E5 10            [12] 1631 	mov	a,_bp
      00273E 24 03            [12] 1632 	add	a,#0x03
      002740 F8               [12] 1633 	mov	r0,a
      002741 EA               [12] 1634 	mov	a,r2
      002742 26               [12] 1635 	add	a,@r0
      002743 F5 82            [12] 1636 	mov	dpl,a
      002745 EE               [12] 1637 	mov	a,r6
      002746 08               [12] 1638 	inc	r0
      002747 36               [12] 1639 	addc	a,@r0
      002748 F5 83            [12] 1640 	mov	dph,a
      00274A 74 55            [12] 1641 	mov	a,#0x55
      00274C F0               [24] 1642 	movx	@dptr,a
                                   1643 ;	walk.c:199: for (j = 0; j < COLS; j++)
      00274D 0A               [12] 1644 	inc	r2
      00274E BA 00 01         [24] 1645 	cjne	r2,#0x00,00183$
      002751 0E               [12] 1646 	inc	r6
      002752                       1647 00183$:
      002752 C3               [12] 1648 	clr	c
      002753 EA               [12] 1649 	mov	a,r2
      002754 94 C0            [12] 1650 	subb	a,#0xc0
      002756 EE               [12] 1651 	mov	a,r6
      002757 64 80            [12] 1652 	xrl	a,#0x80
      002759 94 80            [12] 1653 	subb	a,#0x80
      00275B 40 DF            [24] 1654 	jc	00112$
                                   1655 ;	walk.c:198: for (i = 0; i < ROWS; i++)
      00275D A8 10            [24] 1656 	mov	r0,_bp
      00275F 08               [12] 1657 	inc	r0
      002760 74 C0            [12] 1658 	mov	a,#0xc0
      002762 26               [12] 1659 	add	a,@r0
      002763 F6               [12] 1660 	mov	@r0,a
      002764 E4               [12] 1661 	clr	a
      002765 08               [12] 1662 	inc	r0
      002766 36               [12] 1663 	addc	a,@r0
      002767 F6               [12] 1664 	mov	@r0,a
      002768 0B               [12] 1665 	inc	r3
      002769 BB 00 01         [24] 1666 	cjne	r3,#0x00,00185$
      00276C 0C               [12] 1667 	inc	r4
      00276D                       1668 00185$:
      00276D C3               [12] 1669 	clr	c
      00276E EB               [12] 1670 	mov	a,r3
      00276F 94 30            [12] 1671 	subb	a,#0x30
      002771 EC               [12] 1672 	mov	a,r4
      002772 64 80            [12] 1673 	xrl	a,#0x80
      002774 94 80            [12] 1674 	subb	a,#0x80
      002776 40 AA            [24] 1675 	jc	00125$
                                   1676 ;	walk.c:202: initial.r = rand() % ROWS;
      002778 E5 10            [12] 1677 	mov	a,_bp
      00277A 24 09            [12] 1678 	add	a,#0x09
      00277C F8               [12] 1679 	mov	r0,a
      00277D C0 07            [24] 1680 	push	ar7
      00277F C0 01            [24] 1681 	push	ar1
      002781 C0 00            [24] 1682 	push	ar0
      002783 12 2B 76         [24] 1683 	lcall	_rand
      002786 AD 82            [24] 1684 	mov	r5,dpl
      002788 AE 83            [24] 1685 	mov	r6,dph
      00278A 74 30            [12] 1686 	mov	a,#0x30
      00278C C0 E0            [24] 1687 	push	acc
      00278E E4               [12] 1688 	clr	a
      00278F C0 E0            [24] 1689 	push	acc
      002791 8D 82            [24] 1690 	mov	dpl,r5
      002793 8E 83            [24] 1691 	mov	dph,r6
      002795 12 2E 7A         [24] 1692 	lcall	__modsint
      002798 AD 82            [24] 1693 	mov	r5,dpl
      00279A AE 83            [24] 1694 	mov	r6,dph
      00279C 15 81            [12] 1695 	dec	sp
      00279E 15 81            [12] 1696 	dec	sp
      0027A0 D0 00            [24] 1697 	pop	ar0
      0027A2 D0 01            [24] 1698 	pop	ar1
      0027A4 A6 05            [24] 1699 	mov	@r0,ar5
      0027A6 08               [12] 1700 	inc	r0
      0027A7 A6 06            [24] 1701 	mov	@r0,ar6
      0027A9 18               [12] 1702 	dec	r0
                                   1703 ;	walk.c:203: initial.c = rand() % COLS;
      0027AA 74 02            [12] 1704 	mov	a,#0x02
      0027AC 29               [12] 1705 	add	a,r1
      0027AD F8               [12] 1706 	mov	r0,a
      0027AE C0 01            [24] 1707 	push	ar1
      0027B0 C0 00            [24] 1708 	push	ar0
      0027B2 12 2B 76         [24] 1709 	lcall	_rand
      0027B5 AD 82            [24] 1710 	mov	r5,dpl
      0027B7 AE 83            [24] 1711 	mov	r6,dph
      0027B9 74 C0            [12] 1712 	mov	a,#0xc0
      0027BB C0 E0            [24] 1713 	push	acc
      0027BD E4               [12] 1714 	clr	a
      0027BE C0 E0            [24] 1715 	push	acc
      0027C0 8D 82            [24] 1716 	mov	dpl,r5
      0027C2 8E 83            [24] 1717 	mov	dph,r6
      0027C4 12 2E 7A         [24] 1718 	lcall	__modsint
      0027C7 AD 82            [24] 1719 	mov	r5,dpl
      0027C9 AE 83            [24] 1720 	mov	r6,dph
      0027CB 15 81            [12] 1721 	dec	sp
      0027CD 15 81            [12] 1722 	dec	sp
      0027CF D0 00            [24] 1723 	pop	ar0
      0027D1 A6 05            [24] 1724 	mov	@r0,ar5
      0027D3 08               [12] 1725 	inc	r0
      0027D4 A6 06            [24] 1726 	mov	@r0,ar6
      0027D6 18               [12] 1727 	dec	r0
                                   1728 ;	walk.c:205: puts("\033[2J\033[?25l");
      0027D7 90 44 A2         [24] 1729 	mov	dptr,#___str_4
      0027DA 75 F0 80         [24] 1730 	mov	b,#0x80
      0027DD C0 00            [24] 1731 	push	ar0
      0027DF 12 2D 9F         [24] 1732 	lcall	_puts
      0027E2 D0 00            [24] 1733 	pop	ar0
      0027E4 D0 01            [24] 1734 	pop	ar1
                                   1735 ;	walk.c:206: printf("\033[1;1H% 8u% 8d% 8d", N, initial.r, initial.c);
      0027E6 86 05            [24] 1736 	mov	ar5,@r0
      0027E8 08               [12] 1737 	inc	r0
      0027E9 86 06            [24] 1738 	mov	ar6,@r0
      0027EB 18               [12] 1739 	dec	r0
      0027EC 87 03            [24] 1740 	mov	ar3,@r1
      0027EE 09               [12] 1741 	inc	r1
      0027EF 87 04            [24] 1742 	mov	ar4,@r1
      0027F1 19               [12] 1743 	dec	r1
      0027F2 C0 01            [24] 1744 	push	ar1
      0027F4 C0 05            [24] 1745 	push	ar5
      0027F6 C0 06            [24] 1746 	push	ar6
      0027F8 C0 03            [24] 1747 	push	ar3
      0027FA C0 04            [24] 1748 	push	ar4
      0027FC E5 10            [12] 1749 	mov	a,_bp
      0027FE 24 05            [12] 1750 	add	a,#0x05
      002800 F8               [12] 1751 	mov	r0,a
      002801 E6               [12] 1752 	mov	a,@r0
      002802 C0 E0            [24] 1753 	push	acc
      002804 08               [12] 1754 	inc	r0
      002805 E6               [12] 1755 	mov	a,@r0
      002806 C0 E0            [24] 1756 	push	acc
      002808 74 AD            [12] 1757 	mov	a,#___str_5
      00280A C0 E0            [24] 1758 	push	acc
      00280C 74 44            [12] 1759 	mov	a,#(___str_5 >> 8)
      00280E C0 E0            [24] 1760 	push	acc
      002810 74 80            [12] 1761 	mov	a,#0x80
      002812 C0 E0            [24] 1762 	push	acc
      002814 12 2E 25         [24] 1763 	lcall	_printf
      002817 E5 81            [12] 1764 	mov	a,sp
      002819 24 F7            [12] 1765 	add	a,#0xf7
      00281B F5 81            [12] 1766 	mov	sp,a
      00281D D0 01            [24] 1767 	pop	ar1
      00281F D0 07            [24] 1768 	pop	ar7
                                   1769 ;	walk.c:208: for (i = 0; i < REG; i++) {
      002821 E5 10            [12] 1770 	mov	a,_bp
      002823 24 07            [12] 1771 	add	a,#0x07
      002825 F8               [12] 1772 	mov	r0,a
      002826 E4               [12] 1773 	clr	a
      002827 F6               [12] 1774 	mov	@r0,a
      002828 08               [12] 1775 	inc	r0
      002829 F6               [12] 1776 	mov	@r0,a
      00282A                       1777 00116$:
                                   1778 ;	walk.c:209: neigh[i].r = neigh[REG + i].r * (1 + rand() % 8);
      00282A C0 07            [24] 1779 	push	ar7
      00282C E5 10            [12] 1780 	mov	a,_bp
      00282E 24 07            [12] 1781 	add	a,#0x07
      002830 F8               [12] 1782 	mov	r0,a
      002831 E6               [12] 1783 	mov	a,@r0
      002832 25 E0            [12] 1784 	add	a,acc
      002834 FB               [12] 1785 	mov	r3,a
      002835 08               [12] 1786 	inc	r0
      002836 E6               [12] 1787 	mov	a,@r0
      002837 33               [12] 1788 	rlc	a
      002838 FC               [12] 1789 	mov	r4,a
      002839 EB               [12] 1790 	mov	a,r3
      00283A 2B               [12] 1791 	add	a,r3
      00283B FB               [12] 1792 	mov	r3,a
      00283C EC               [12] 1793 	mov	a,r4
      00283D 33               [12] 1794 	rlc	a
      00283E FC               [12] 1795 	mov	r4,a
      00283F E5 10            [12] 1796 	mov	a,_bp
      002841 24 03            [12] 1797 	add	a,#0x03
      002843 F8               [12] 1798 	mov	r0,a
      002844 EB               [12] 1799 	mov	a,r3
      002845 24 02            [12] 1800 	add	a,#_neigh
      002847 F6               [12] 1801 	mov	@r0,a
      002848 EC               [12] 1802 	mov	a,r4
      002849 34 FA            [12] 1803 	addc	a,#(_neigh >> 8)
      00284B 08               [12] 1804 	inc	r0
      00284C F6               [12] 1805 	mov	@r0,a
      00284D E5 10            [12] 1806 	mov	a,_bp
      00284F 24 07            [12] 1807 	add	a,#0x07
      002851 F8               [12] 1808 	mov	r0,a
      002852 86 06            [24] 1809 	mov	ar6,@r0
      002854 74 08            [12] 1810 	mov	a,#0x08
      002856 2E               [12] 1811 	add	a,r6
      002857 FE               [12] 1812 	mov	r6,a
      002858 C2 D5            [12] 1813 	clr	F0
      00285A 75 F0 04         [24] 1814 	mov	b,#0x04
      00285D EE               [12] 1815 	mov	a,r6
      00285E 30 E7 04         [24] 1816 	jnb	acc.7,00187$
      002861 B2 D5            [12] 1817 	cpl	F0
      002863 F4               [12] 1818 	cpl	a
      002864 04               [12] 1819 	inc	a
      002865                       1820 00187$:
      002865 A4               [48] 1821 	mul	ab
      002866 30 D5 0A         [24] 1822 	jnb	F0,00188$
      002869 F4               [12] 1823 	cpl	a
      00286A 24 01            [12] 1824 	add	a,#0x01
      00286C C5 F0            [12] 1825 	xch	a,b
      00286E F4               [12] 1826 	cpl	a
      00286F 34 00            [12] 1827 	addc	a,#0x00
      002871 C5 F0            [12] 1828 	xch	a,b
      002873                       1829 00188$:
      002873 FE               [12] 1830 	mov	r6,a
      002874 AD F0            [24] 1831 	mov	r5,b
      002876 24 02            [12] 1832 	add	a,#_neigh
      002878 F5 82            [12] 1833 	mov	dpl,a
      00287A ED               [12] 1834 	mov	a,r5
      00287B 34 FA            [12] 1835 	addc	a,#(_neigh >> 8)
      00287D F5 83            [12] 1836 	mov	dph,a
      00287F A8 10            [24] 1837 	mov	r0,_bp
      002881 08               [12] 1838 	inc	r0
      002882 E0               [24] 1839 	movx	a,@dptr
      002883 F6               [12] 1840 	mov	@r0,a
      002884 A3               [24] 1841 	inc	dptr
      002885 E0               [24] 1842 	movx	a,@dptr
      002886 08               [12] 1843 	inc	r0
      002887 F6               [12] 1844 	mov	@r0,a
      002888 C0 06            [24] 1845 	push	ar6
      00288A C0 05            [24] 1846 	push	ar5
      00288C C0 04            [24] 1847 	push	ar4
      00288E C0 03            [24] 1848 	push	ar3
      002890 C0 01            [24] 1849 	push	ar1
      002892 12 2B 76         [24] 1850 	lcall	_rand
      002895 AA 82            [24] 1851 	mov	r2,dpl
      002897 AF 83            [24] 1852 	mov	r7,dph
      002899 74 08            [12] 1853 	mov	a,#0x08
      00289B C0 E0            [24] 1854 	push	acc
      00289D E4               [12] 1855 	clr	a
      00289E C0 E0            [24] 1856 	push	acc
      0028A0 8A 82            [24] 1857 	mov	dpl,r2
      0028A2 8F 83            [24] 1858 	mov	dph,r7
      0028A4 12 2E 7A         [24] 1859 	lcall	__modsint
      0028A7 AA 82            [24] 1860 	mov	r2,dpl
      0028A9 AF 83            [24] 1861 	mov	r7,dph
      0028AB 15 81            [12] 1862 	dec	sp
      0028AD 15 81            [12] 1863 	dec	sp
      0028AF D0 01            [24] 1864 	pop	ar1
      0028B1 D0 03            [24] 1865 	pop	ar3
      0028B3 D0 04            [24] 1866 	pop	ar4
      0028B5 D0 05            [24] 1867 	pop	ar5
      0028B7 D0 06            [24] 1868 	pop	ar6
      0028B9 0A               [12] 1869 	inc	r2
      0028BA BA 00 01         [24] 1870 	cjne	r2,#0x00,00189$
      0028BD 0F               [12] 1871 	inc	r7
      0028BE                       1872 00189$:
      0028BE C0 06            [24] 1873 	push	ar6
      0028C0 C0 05            [24] 1874 	push	ar5
      0028C2 C0 04            [24] 1875 	push	ar4
      0028C4 C0 03            [24] 1876 	push	ar3
      0028C6 C0 01            [24] 1877 	push	ar1
      0028C8 C0 02            [24] 1878 	push	ar2
      0028CA C0 07            [24] 1879 	push	ar7
      0028CC A8 10            [24] 1880 	mov	r0,_bp
      0028CE 08               [12] 1881 	inc	r0
      0028CF 86 82            [24] 1882 	mov	dpl,@r0
      0028D1 08               [12] 1883 	inc	r0
      0028D2 86 83            [24] 1884 	mov	dph,@r0
      0028D4 12 2C 6E         [24] 1885 	lcall	__mulint
      0028D7 AA 82            [24] 1886 	mov	r2,dpl
      0028D9 AF 83            [24] 1887 	mov	r7,dph
      0028DB 15 81            [12] 1888 	dec	sp
      0028DD 15 81            [12] 1889 	dec	sp
      0028DF D0 01            [24] 1890 	pop	ar1
      0028E1 D0 03            [24] 1891 	pop	ar3
      0028E3 D0 04            [24] 1892 	pop	ar4
      0028E5 D0 05            [24] 1893 	pop	ar5
      0028E7 D0 06            [24] 1894 	pop	ar6
      0028E9 E5 10            [12] 1895 	mov	a,_bp
      0028EB 24 03            [12] 1896 	add	a,#0x03
      0028ED F8               [12] 1897 	mov	r0,a
      0028EE 86 82            [24] 1898 	mov	dpl,@r0
      0028F0 08               [12] 1899 	inc	r0
      0028F1 86 83            [24] 1900 	mov	dph,@r0
      0028F3 EA               [12] 1901 	mov	a,r2
      0028F4 F0               [24] 1902 	movx	@dptr,a
      0028F5 EF               [12] 1903 	mov	a,r7
      0028F6 A3               [24] 1904 	inc	dptr
      0028F7 F0               [24] 1905 	movx	@dptr,a
                                   1906 ;	walk.c:210: neigh[i].c = neigh[REG + i].c * (1 + rand() % 8);
      0028F8 EB               [12] 1907 	mov	a,r3
      0028F9 24 02            [12] 1908 	add	a,#_neigh
      0028FB FB               [12] 1909 	mov	r3,a
      0028FC EC               [12] 1910 	mov	a,r4
      0028FD 34 FA            [12] 1911 	addc	a,#(_neigh >> 8)
      0028FF FC               [12] 1912 	mov	r4,a
      002900 74 02            [12] 1913 	mov	a,#0x02
      002902 2B               [12] 1914 	add	a,r3
      002903 FA               [12] 1915 	mov	r2,a
      002904 E4               [12] 1916 	clr	a
      002905 3C               [12] 1917 	addc	a,r4
      002906 FF               [12] 1918 	mov	r7,a
      002907 EE               [12] 1919 	mov	a,r6
      002908 24 02            [12] 1920 	add	a,#_neigh
      00290A FE               [12] 1921 	mov	r6,a
      00290B ED               [12] 1922 	mov	a,r5
      00290C 34 FA            [12] 1923 	addc	a,#(_neigh >> 8)
      00290E FD               [12] 1924 	mov	r5,a
      00290F 8E 82            [24] 1925 	mov	dpl,r6
      002911 8D 83            [24] 1926 	mov	dph,r5
      002913 A3               [24] 1927 	inc	dptr
      002914 A3               [24] 1928 	inc	dptr
      002915 E5 10            [12] 1929 	mov	a,_bp
      002917 24 03            [12] 1930 	add	a,#0x03
      002919 F8               [12] 1931 	mov	r0,a
      00291A E0               [24] 1932 	movx	a,@dptr
      00291B F6               [12] 1933 	mov	@r0,a
      00291C A3               [24] 1934 	inc	dptr
      00291D E0               [24] 1935 	movx	a,@dptr
      00291E 08               [12] 1936 	inc	r0
      00291F F6               [12] 1937 	mov	@r0,a
      002920 C0 07            [24] 1938 	push	ar7
      002922 C0 04            [24] 1939 	push	ar4
      002924 C0 03            [24] 1940 	push	ar3
      002926 C0 02            [24] 1941 	push	ar2
      002928 C0 01            [24] 1942 	push	ar1
      00292A 12 2B 76         [24] 1943 	lcall	_rand
      00292D AD 82            [24] 1944 	mov	r5,dpl
      00292F AE 83            [24] 1945 	mov	r6,dph
      002931 74 08            [12] 1946 	mov	a,#0x08
      002933 C0 E0            [24] 1947 	push	acc
      002935 E4               [12] 1948 	clr	a
      002936 C0 E0            [24] 1949 	push	acc
      002938 8D 82            [24] 1950 	mov	dpl,r5
      00293A 8E 83            [24] 1951 	mov	dph,r6
      00293C 12 2E 7A         [24] 1952 	lcall	__modsint
      00293F AD 82            [24] 1953 	mov	r5,dpl
      002941 AE 83            [24] 1954 	mov	r6,dph
      002943 15 81            [12] 1955 	dec	sp
      002945 15 81            [12] 1956 	dec	sp
      002947 D0 01            [24] 1957 	pop	ar1
      002949 D0 02            [24] 1958 	pop	ar2
      00294B D0 03            [24] 1959 	pop	ar3
      00294D D0 04            [24] 1960 	pop	ar4
      00294F D0 07            [24] 1961 	pop	ar7
      002951 0D               [12] 1962 	inc	r5
      002952 BD 00 01         [24] 1963 	cjne	r5,#0x00,00190$
      002955 0E               [12] 1964 	inc	r6
      002956                       1965 00190$:
      002956 C0 07            [24] 1966 	push	ar7
      002958 C0 04            [24] 1967 	push	ar4
      00295A C0 03            [24] 1968 	push	ar3
      00295C C0 02            [24] 1969 	push	ar2
      00295E C0 01            [24] 1970 	push	ar1
      002960 C0 05            [24] 1971 	push	ar5
      002962 C0 06            [24] 1972 	push	ar6
      002964 E5 10            [12] 1973 	mov	a,_bp
      002966 24 03            [12] 1974 	add	a,#0x03
      002968 F8               [12] 1975 	mov	r0,a
      002969 86 82            [24] 1976 	mov	dpl,@r0
      00296B 08               [12] 1977 	inc	r0
      00296C 86 83            [24] 1978 	mov	dph,@r0
      00296E 12 2C 6E         [24] 1979 	lcall	__mulint
      002971 AD 82            [24] 1980 	mov	r5,dpl
      002973 AE 83            [24] 1981 	mov	r6,dph
      002975 15 81            [12] 1982 	dec	sp
      002977 15 81            [12] 1983 	dec	sp
      002979 D0 01            [24] 1984 	pop	ar1
      00297B D0 02            [24] 1985 	pop	ar2
      00297D D0 03            [24] 1986 	pop	ar3
      00297F D0 04            [24] 1987 	pop	ar4
      002981 D0 07            [24] 1988 	pop	ar7
      002983 8A 82            [24] 1989 	mov	dpl,r2
      002985 8F 83            [24] 1990 	mov	dph,r7
      002987 ED               [12] 1991 	mov	a,r5
      002988 F0               [24] 1992 	movx	@dptr,a
      002989 EE               [12] 1993 	mov	a,r6
      00298A A3               [24] 1994 	inc	dptr
      00298B F0               [24] 1995 	movx	@dptr,a
                                   1996 ;	walk.c:211: printf("% 8d% 8d", neigh[i].r, neigh[i].c);
      00298C 8B 82            [24] 1997 	mov	dpl,r3
      00298E 8C 83            [24] 1998 	mov	dph,r4
      002990 E0               [24] 1999 	movx	a,@dptr
      002991 FB               [12] 2000 	mov	r3,a
      002992 A3               [24] 2001 	inc	dptr
      002993 E0               [24] 2002 	movx	a,@dptr
      002994 FC               [12] 2003 	mov	r4,a
      002995 C0 07            [24] 2004 	push	ar7
      002997 C0 01            [24] 2005 	push	ar1
      002999 C0 05            [24] 2006 	push	ar5
      00299B C0 06            [24] 2007 	push	ar6
      00299D C0 03            [24] 2008 	push	ar3
      00299F C0 04            [24] 2009 	push	ar4
      0029A1 74 C0            [12] 2010 	mov	a,#___str_6
      0029A3 C0 E0            [24] 2011 	push	acc
      0029A5 74 44            [12] 2012 	mov	a,#(___str_6 >> 8)
      0029A7 C0 E0            [24] 2013 	push	acc
      0029A9 74 80            [12] 2014 	mov	a,#0x80
      0029AB C0 E0            [24] 2015 	push	acc
      0029AD 12 2E 25         [24] 2016 	lcall	_printf
      0029B0 E5 81            [12] 2017 	mov	a,sp
      0029B2 24 F9            [12] 2018 	add	a,#0xf9
      0029B4 F5 81            [12] 2019 	mov	sp,a
      0029B6 D0 01            [24] 2020 	pop	ar1
      0029B8 D0 07            [24] 2021 	pop	ar7
                                   2022 ;	walk.c:208: for (i = 0; i < REG; i++) {
      0029BA E5 10            [12] 2023 	mov	a,_bp
      0029BC 24 07            [12] 2024 	add	a,#0x07
      0029BE F8               [12] 2025 	mov	r0,a
      0029BF 06               [12] 2026 	inc	@r0
      0029C0 B6 00 02         [24] 2027 	cjne	@r0,#0x00,00191$
      0029C3 08               [12] 2028 	inc	r0
      0029C4 06               [12] 2029 	inc	@r0
      0029C5                       2030 00191$:
      0029C5 E5 10            [12] 2031 	mov	a,_bp
      0029C7 24 07            [12] 2032 	add	a,#0x07
      0029C9 F8               [12] 2033 	mov	r0,a
      0029CA 86 05            [24] 2034 	mov	ar5,@r0
      0029CC 08               [12] 2035 	inc	r0
      0029CD 86 06            [24] 2036 	mov	ar6,@r0
      0029CF C3               [12] 2037 	clr	c
      0029D0 ED               [12] 2038 	mov	a,r5
      0029D1 94 08            [12] 2039 	subb	a,#0x08
      0029D3 EE               [12] 2040 	mov	a,r6
      0029D4 94 00            [12] 2041 	subb	a,#0x00
      0029D6 D0 07            [24] 2042 	pop	ar7
      0029D8 50 03            [24] 2043 	jnc	00192$
      0029DA 02 28 2A         [24] 2044 	ljmp	00116$
      0029DD                       2045 00192$:
                                   2046 ;	walk.c:214: OE76 = OE76_0;
      0029DD 78 12            [12] 2047 	mov	r0,#_OE76
      0029DF 76 3F            [12] 2048 	mov	@r0,#0x3f
                                   2049 ;	walk.c:215: setOE(OE76_NC);
      0029E1 75 82 00         [24] 2050 	mov	dpl,#0x00
      0029E4 C0 07            [24] 2051 	push	ar7
      0029E6 C0 01            [24] 2052 	push	ar1
      0029E8 12 20 7E         [24] 2053 	lcall	_setOE
      0029EB D0 01            [24] 2054 	pop	ar1
      0029ED D0 07            [24] 2055 	pop	ar7
                                   2056 ;	walk.c:217: walk(&initial);
      0029EF 8F 04            [24] 2057 	mov	ar4,r7
      0029F1 7D 00            [12] 2058 	mov	r5,#0x00
      0029F3 7E 40            [12] 2059 	mov	r6,#0x40
      0029F5 8C 82            [24] 2060 	mov	dpl,r4
      0029F7 8D 83            [24] 2061 	mov	dph,r5
      0029F9 8E F0            [24] 2062 	mov	b,r6
      0029FB C0 07            [24] 2063 	push	ar7
      0029FD C0 01            [24] 2064 	push	ar1
      0029FF 12 23 57         [24] 2065 	lcall	_walk
      002A02 D0 01            [24] 2066 	pop	ar1
      002A04 D0 07            [24] 2067 	pop	ar7
                                   2068 ;	walk.c:219: for (i = 0; i < ROWS; i++)
      002A06 E5 10            [12] 2069 	mov	a,_bp
      002A08 24 07            [12] 2070 	add	a,#0x07
      002A0A F8               [12] 2071 	mov	r0,a
      002A0B E4               [12] 2072 	clr	a
      002A0C F6               [12] 2073 	mov	@r0,a
      002A0D 08               [12] 2074 	inc	r0
      002A0E F6               [12] 2075 	mov	@r0,a
      002A0F 7B 00            [12] 2076 	mov	r3,#0x00
      002A11 7C 00            [12] 2077 	mov	r4,#0x00
                                   2078 ;	walk.c:220: for (j = 0; j < COLS; j++)
      002A13                       2079 00132$:
      002A13 E5 10            [12] 2080 	mov	a,_bp
      002A15 24 03            [12] 2081 	add	a,#0x03
      002A17 F8               [12] 2082 	mov	r0,a
      002A18 EB               [12] 2083 	mov	a,r3
      002A19 24 00            [12] 2084 	add	a,#_g
      002A1B F6               [12] 2085 	mov	@r0,a
      002A1C EC               [12] 2086 	mov	a,r4
      002A1D 34 46            [12] 2087 	addc	a,#(_g >> 8)
      002A1F 08               [12] 2088 	inc	r0
      002A20 F6               [12] 2089 	mov	@r0,a
      002A21 7A 00            [12] 2090 	mov	r2,#0x00
      002A23 7E 00            [12] 2091 	mov	r6,#0x00
      002A25                       2092 00118$:
                                   2093 ;	walk.c:221: if (g[i][j] != 0xaau) bang();
      002A25 E5 10            [12] 2094 	mov	a,_bp
      002A27 24 03            [12] 2095 	add	a,#0x03
      002A29 F8               [12] 2096 	mov	r0,a
      002A2A EA               [12] 2097 	mov	a,r2
      002A2B 26               [12] 2098 	add	a,@r0
      002A2C F5 82            [12] 2099 	mov	dpl,a
      002A2E EE               [12] 2100 	mov	a,r6
      002A2F 08               [12] 2101 	inc	r0
      002A30 36               [12] 2102 	addc	a,@r0
      002A31 F5 83            [12] 2103 	mov	dph,a
      002A33 E0               [24] 2104 	movx	a,@dptr
      002A34 FD               [12] 2105 	mov	r5,a
      002A35 BD AA 02         [24] 2106 	cjne	r5,#0xaa,00193$
      002A38 80 1B            [24] 2107 	sjmp	00119$
      002A3A                       2108 00193$:
      002A3A C0 07            [24] 2109 	push	ar7
      002A3C C0 06            [24] 2110 	push	ar6
      002A3E C0 04            [24] 2111 	push	ar4
      002A40 C0 03            [24] 2112 	push	ar3
      002A42 C0 02            [24] 2113 	push	ar2
      002A44 C0 01            [24] 2114 	push	ar1
      002A46 12 20 71         [24] 2115 	lcall	_bang
      002A49 D0 01            [24] 2116 	pop	ar1
      002A4B D0 02            [24] 2117 	pop	ar2
      002A4D D0 03            [24] 2118 	pop	ar3
      002A4F D0 04            [24] 2119 	pop	ar4
      002A51 D0 06            [24] 2120 	pop	ar6
      002A53 D0 07            [24] 2121 	pop	ar7
      002A55                       2122 00119$:
                                   2123 ;	walk.c:220: for (j = 0; j < COLS; j++)
      002A55 0A               [12] 2124 	inc	r2
      002A56 BA 00 01         [24] 2125 	cjne	r2,#0x00,00194$
      002A59 0E               [12] 2126 	inc	r6
      002A5A                       2127 00194$:
      002A5A C3               [12] 2128 	clr	c
      002A5B EA               [12] 2129 	mov	a,r2
      002A5C 94 C0            [12] 2130 	subb	a,#0xc0
      002A5E EE               [12] 2131 	mov	a,r6
      002A5F 64 80            [12] 2132 	xrl	a,#0x80
      002A61 94 80            [12] 2133 	subb	a,#0x80
      002A63 40 C0            [24] 2134 	jc	00118$
                                   2135 ;	walk.c:219: for (i = 0; i < ROWS; i++)
      002A65 74 C0            [12] 2136 	mov	a,#0xc0
      002A67 2B               [12] 2137 	add	a,r3
      002A68 FB               [12] 2138 	mov	r3,a
      002A69 E4               [12] 2139 	clr	a
      002A6A 3C               [12] 2140 	addc	a,r4
      002A6B FC               [12] 2141 	mov	r4,a
      002A6C E5 10            [12] 2142 	mov	a,_bp
      002A6E 24 07            [12] 2143 	add	a,#0x07
      002A70 F8               [12] 2144 	mov	r0,a
      002A71 06               [12] 2145 	inc	@r0
      002A72 B6 00 02         [24] 2146 	cjne	@r0,#0x00,00196$
      002A75 08               [12] 2147 	inc	r0
      002A76 06               [12] 2148 	inc	@r0
      002A77                       2149 00196$:
      002A77 E5 10            [12] 2150 	mov	a,_bp
      002A79 24 07            [12] 2151 	add	a,#0x07
      002A7B F8               [12] 2152 	mov	r0,a
      002A7C C3               [12] 2153 	clr	c
      002A7D E6               [12] 2154 	mov	a,@r0
      002A7E 94 30            [12] 2155 	subb	a,#0x30
      002A80 08               [12] 2156 	inc	r0
      002A81 E6               [12] 2157 	mov	a,@r0
      002A82 64 80            [12] 2158 	xrl	a,#0x80
      002A84 94 80            [12] 2159 	subb	a,#0x80
      002A86 40 8B            [24] 2160 	jc	00132$
                                   2161 ;	walk.c:223: N++;
      002A88 E5 10            [12] 2162 	mov	a,_bp
      002A8A 24 05            [12] 2163 	add	a,#0x05
      002A8C F8               [12] 2164 	mov	r0,a
      002A8D 06               [12] 2165 	inc	@r0
      002A8E B6 00 02         [24] 2166 	cjne	@r0,#0x00,00198$
      002A91 08               [12] 2167 	inc	r0
      002A92 06               [12] 2168 	inc	@r0
      002A93                       2169 00198$:
      002A93 02 27 0F         [24] 2170 	ljmp	00108$
      002A96                       2171 00110$:
                                   2172 ;	walk.c:226: EA = 0;
                                   2173 ;	assignBit
      002A96 C2 AF            [12] 2174 	clr	_EA
                                   2175 ;	walk.c:228: puts("\033[2J\033[?25h");
      002A98 90 44 C9         [24] 2176 	mov	dptr,#___str_7
      002A9B 75 F0 80         [24] 2177 	mov	b,#0x80
      002A9E 12 2D 9F         [24] 2178 	lcall	_puts
                                   2179 ;	walk.c:17: PCON |= 2;
      002AA1 43 87 02         [24] 2180 	orl	_PCON,#0x02
                                   2181 ;	walk.c:232: return;
                                   2182 ;	walk.c:233: }
      002AA4 85 10 81         [24] 2183 	mov	sp,_bp
      002AA7 D0 10            [24] 2184 	pop	_bp
      002AA9 22               [24] 2185 	ret
                                   2186 ;------------------------------------------------------------
                                   2187 ;Allocation info for local variables in function 'stinit'
                                   2188 ;------------------------------------------------------------
                                   2189 ;	walk.c:235: static void stinit(void) {
                                   2190 ;	-----------------------------------------
                                   2191 ;	 function stinit
                                   2192 ;	-----------------------------------------
      002AAA                       2193 _stinit:
                                   2194 ;	walk.c:236: sp = -1;
      002AAA 90 FA 00         [24] 2195 	mov	dptr,#_sp
      002AAD 74 FF            [12] 2196 	mov	a,#0xff
      002AAF F0               [24] 2197 	movx	@dptr,a
      002AB0 A3               [24] 2198 	inc	dptr
      002AB1 F0               [24] 2199 	movx	@dptr,a
                                   2200 ;	walk.c:237: return;
                                   2201 ;	walk.c:238: }
      002AB2 22               [24] 2202 	ret
                                   2203 ;------------------------------------------------------------
                                   2204 ;Allocation info for local variables in function 'stpush'
                                   2205 ;------------------------------------------------------------
                                   2206 ;t                         Allocated to registers r5 r6 r7 
                                   2207 ;------------------------------------------------------------
                                   2208 ;	walk.c:240: static uint8_t stpush(struct node *t) {
                                   2209 ;	-----------------------------------------
                                   2210 ;	 function stpush
                                   2211 ;	-----------------------------------------
      002AB3                       2212 _stpush:
      002AB3 AD 82            [24] 2213 	mov	r5,dpl
      002AB5 AE 83            [24] 2214 	mov	r6,dph
      002AB7 AF F0            [24] 2215 	mov	r7,b
                                   2216 ;	walk.c:241: if (sp == (SMAX - 1)) return 0u;
      002AB9 90 FA 00         [24] 2217 	mov	dptr,#_sp
      002ABC E0               [24] 2218 	movx	a,@dptr
      002ABD FB               [12] 2219 	mov	r3,a
      002ABE A3               [24] 2220 	inc	dptr
      002ABF E0               [24] 2221 	movx	a,@dptr
      002AC0 FC               [12] 2222 	mov	r4,a
      002AC1 BB FF 07         [24] 2223 	cjne	r3,#0xff,00102$
      002AC4 BC 23 04         [24] 2224 	cjne	r4,#0x23,00102$
      002AC7 75 82 00         [24] 2225 	mov	dpl,#0x00
      002ACA 22               [24] 2226 	ret
      002ACB                       2227 00102$:
                                   2228 ;	walk.c:242: sp++;
      002ACB 90 FA 00         [24] 2229 	mov	dptr,#_sp
      002ACE 74 01            [12] 2230 	mov	a,#0x01
      002AD0 2B               [12] 2231 	add	a,r3
      002AD1 F0               [24] 2232 	movx	@dptr,a
      002AD2 E4               [12] 2233 	clr	a
      002AD3 3C               [12] 2234 	addc	a,r4
      002AD4 A3               [24] 2235 	inc	dptr
      002AD5 F0               [24] 2236 	movx	@dptr,a
                                   2237 ;	walk.c:243: stack[sp] = *t;
      002AD6 90 FA 00         [24] 2238 	mov	dptr,#_sp
      002AD9 E0               [24] 2239 	movx	a,@dptr
      002ADA FB               [12] 2240 	mov	r3,a
      002ADB A3               [24] 2241 	inc	dptr
      002ADC E0               [24] 2242 	movx	a,@dptr
      002ADD FC               [12] 2243 	mov	r4,a
      002ADE EB               [12] 2244 	mov	a,r3
      002ADF 2B               [12] 2245 	add	a,r3
      002AE0 FB               [12] 2246 	mov	r3,a
      002AE1 EC               [12] 2247 	mov	a,r4
      002AE2 33               [12] 2248 	rlc	a
      002AE3 FC               [12] 2249 	mov	r4,a
      002AE4 EB               [12] 2250 	mov	a,r3
      002AE5 2B               [12] 2251 	add	a,r3
      002AE6 FB               [12] 2252 	mov	r3,a
      002AE7 EC               [12] 2253 	mov	a,r4
      002AE8 33               [12] 2254 	rlc	a
      002AE9 FC               [12] 2255 	mov	r4,a
      002AEA EB               [12] 2256 	mov	a,r3
      002AEB 24 00            [12] 2257 	add	a,#_stack
      002AED FB               [12] 2258 	mov	r3,a
      002AEE EC               [12] 2259 	mov	a,r4
      002AEF 34 6A            [12] 2260 	addc	a,#(_stack >> 8)
      002AF1 FC               [12] 2261 	mov	r4,a
      002AF2 7A 00            [12] 2262 	mov	r2,#0x00
      002AF4 74 04            [12] 2263 	mov	a,#0x04
      002AF6 C0 E0            [24] 2264 	push	acc
      002AF8 E4               [12] 2265 	clr	a
      002AF9 C0 E0            [24] 2266 	push	acc
      002AFB C0 05            [24] 2267 	push	ar5
      002AFD C0 06            [24] 2268 	push	ar6
      002AFF C0 07            [24] 2269 	push	ar7
      002B01 8B 82            [24] 2270 	mov	dpl,r3
      002B03 8C 83            [24] 2271 	mov	dph,r4
      002B05 8A F0            [24] 2272 	mov	b,r2
      002B07 12 2D 0C         [24] 2273 	lcall	___memcpy
      002B0A E5 81            [12] 2274 	mov	a,sp
      002B0C 24 FB            [12] 2275 	add	a,#0xfb
      002B0E F5 81            [12] 2276 	mov	sp,a
                                   2277 ;	walk.c:244: return 1u;
      002B10 75 82 01         [24] 2278 	mov	dpl,#0x01
                                   2279 ;	walk.c:245: }
      002B13 22               [24] 2280 	ret
                                   2281 ;------------------------------------------------------------
                                   2282 ;Allocation info for local variables in function 'stpop'
                                   2283 ;------------------------------------------------------------
                                   2284 ;t                         Allocated to registers r5 r6 r7 
                                   2285 ;------------------------------------------------------------
                                   2286 ;	walk.c:247: static uint8_t stpop(struct node *t) {
                                   2287 ;	-----------------------------------------
                                   2288 ;	 function stpop
                                   2289 ;	-----------------------------------------
      002B14                       2290 _stpop:
      002B14 AD 82            [24] 2291 	mov	r5,dpl
      002B16 AE 83            [24] 2292 	mov	r6,dph
      002B18 AF F0            [24] 2293 	mov	r7,b
                                   2294 ;	walk.c:248: if (sp == -1) return 0u;
      002B1A 90 FA 00         [24] 2295 	mov	dptr,#_sp
      002B1D E0               [24] 2296 	movx	a,@dptr
      002B1E FB               [12] 2297 	mov	r3,a
      002B1F A3               [24] 2298 	inc	dptr
      002B20 E0               [24] 2299 	movx	a,@dptr
      002B21 FC               [12] 2300 	mov	r4,a
      002B22 BB FF 07         [24] 2301 	cjne	r3,#0xff,00102$
      002B25 BC FF 04         [24] 2302 	cjne	r4,#0xff,00102$
      002B28 75 82 00         [24] 2303 	mov	dpl,#0x00
      002B2B 22               [24] 2304 	ret
      002B2C                       2305 00102$:
                                   2306 ;	walk.c:249: *t = stack[sp];
      002B2C EB               [12] 2307 	mov	a,r3
      002B2D 2B               [12] 2308 	add	a,r3
      002B2E FB               [12] 2309 	mov	r3,a
      002B2F EC               [12] 2310 	mov	a,r4
      002B30 33               [12] 2311 	rlc	a
      002B31 FC               [12] 2312 	mov	r4,a
      002B32 EB               [12] 2313 	mov	a,r3
      002B33 2B               [12] 2314 	add	a,r3
      002B34 FB               [12] 2315 	mov	r3,a
      002B35 EC               [12] 2316 	mov	a,r4
      002B36 33               [12] 2317 	rlc	a
      002B37 FC               [12] 2318 	mov	r4,a
      002B38 EB               [12] 2319 	mov	a,r3
      002B39 24 00            [12] 2320 	add	a,#_stack
      002B3B FB               [12] 2321 	mov	r3,a
      002B3C EC               [12] 2322 	mov	a,r4
      002B3D 34 6A            [12] 2323 	addc	a,#(_stack >> 8)
      002B3F FC               [12] 2324 	mov	r4,a
      002B40 7A 00            [12] 2325 	mov	r2,#0x00
      002B42 74 04            [12] 2326 	mov	a,#0x04
      002B44 C0 E0            [24] 2327 	push	acc
      002B46 E4               [12] 2328 	clr	a
      002B47 C0 E0            [24] 2329 	push	acc
      002B49 C0 03            [24] 2330 	push	ar3
      002B4B C0 04            [24] 2331 	push	ar4
      002B4D C0 02            [24] 2332 	push	ar2
      002B4F 8D 82            [24] 2333 	mov	dpl,r5
      002B51 8E 83            [24] 2334 	mov	dph,r6
      002B53 8F F0            [24] 2335 	mov	b,r7
      002B55 12 2D 0C         [24] 2336 	lcall	___memcpy
      002B58 E5 81            [12] 2337 	mov	a,sp
      002B5A 24 FB            [12] 2338 	add	a,#0xfb
      002B5C F5 81            [12] 2339 	mov	sp,a
                                   2340 ;	walk.c:250: sp--;
      002B5E 90 FA 00         [24] 2341 	mov	dptr,#_sp
      002B61 E0               [24] 2342 	movx	a,@dptr
      002B62 24 FF            [12] 2343 	add	a,#0xff
      002B64 FE               [12] 2344 	mov	r6,a
      002B65 A3               [24] 2345 	inc	dptr
      002B66 E0               [24] 2346 	movx	a,@dptr
      002B67 34 FF            [12] 2347 	addc	a,#0xff
      002B69 FF               [12] 2348 	mov	r7,a
      002B6A 90 FA 00         [24] 2349 	mov	dptr,#_sp
      002B6D EE               [12] 2350 	mov	a,r6
      002B6E F0               [24] 2351 	movx	@dptr,a
      002B6F EF               [12] 2352 	mov	a,r7
      002B70 A3               [24] 2353 	inc	dptr
      002B71 F0               [24] 2354 	movx	@dptr,a
                                   2355 ;	walk.c:251: return 1u;
      002B72 75 82 01         [24] 2356 	mov	dpl,#0x01
                                   2357 ;	walk.c:252: }
      002B75 22               [24] 2358 	ret
                                   2359 	.area CSEG    (CODE)
                                   2360 	.area CONST   (CODE)
                                   2361 	.area CONST   (CODE)
      00446E                       2362 ___str_0:
      00446E 4D 65 6D 6F 72 79 20  2363 	.ascii "Memory error"
             65 72 72 6F 72
      00447A 00                    2364 	.db 0x00
                                   2365 	.area CSEG    (CODE)
                                   2366 	.area CONST   (CODE)
      00447B                       2367 ___str_1:
      00447B 1B                    2368 	.db 0x1b
      00447C 5B 25 64 3B 25 64 48  2369 	.ascii "[%d;%dHo"
             6F
      004484 00                    2370 	.db 0x00
                                   2371 	.area CSEG    (CODE)
                                   2372 	.area CONST   (CODE)
      004485                       2373 ___str_2:
      004485 1B                    2374 	.db 0x1b
      004486 5B 32 3B 31 48 25 20  2375 	.ascii "[2;1H% 8d% 8d% 8d"
             38 64 25 20 38 64 25
             20 38 64
      004497 00                    2376 	.db 0x00
                                   2377 	.area CSEG    (CODE)
                                   2378 	.area CONST   (CODE)
      004498                       2379 ___str_3:
      004498 1B                    2380 	.db 0x1b
      004499 5B 25 64 3B 25 64 48  2381 	.ascii "[%d;%dH."
             2E
      0044A1 00                    2382 	.db 0x00
                                   2383 	.area CSEG    (CODE)
                                   2384 	.area CONST   (CODE)
      0044A2                       2385 ___str_4:
      0044A2 1B                    2386 	.db 0x1b
      0044A3 5B 32 4A              2387 	.ascii "[2J"
      0044A6 1B                    2388 	.db 0x1b
      0044A7 5B 3F 32 35 6C        2389 	.ascii "[?25l"
      0044AC 00                    2390 	.db 0x00
                                   2391 	.area CSEG    (CODE)
                                   2392 	.area CONST   (CODE)
      0044AD                       2393 ___str_5:
      0044AD 1B                    2394 	.db 0x1b
      0044AE 5B 31 3B 31 48 25 20  2395 	.ascii "[1;1H% 8u% 8d% 8d"
             38 75 25 20 38 64 25
             20 38 64
      0044BF 00                    2396 	.db 0x00
                                   2397 	.area CSEG    (CODE)
                                   2398 	.area CONST   (CODE)
      0044C0                       2399 ___str_6:
      0044C0 25 20 38 64 25 20 38  2400 	.ascii "% 8d% 8d"
             64
      0044C8 00                    2401 	.db 0x00
                                   2402 	.area CSEG    (CODE)
                                   2403 	.area CONST   (CODE)
      0044C9                       2404 ___str_7:
      0044C9 1B                    2405 	.db 0x1b
      0044CA 5B 32 4A              2406 	.ascii "[2J"
      0044CD 1B                    2407 	.db 0x1b
      0044CE 5B 3F 32 35 68        2408 	.ascii "[?25h"
      0044D3 00                    2409 	.db 0x00
                                   2410 	.area CSEG    (CODE)
                                   2411 	.area XINIT   (CODE)
      0044EF                       2412 __xinit__neigh:
      0044EF FF FF                 2413 	.byte #0xff, #0xff	; -1
      0044F1 01 00                 2414 	.byte #0x01, #0x00	;  1
      0044F3 FF FF                 2415 	.byte #0xff, #0xff	; -1
      0044F5 FF FF                 2416 	.byte #0xff, #0xff	; -1
      0044F7 01 00                 2417 	.byte #0x01, #0x00	;  1
      0044F9 FF FF                 2418 	.byte #0xff, #0xff	; -1
      0044FB 01 00                 2419 	.byte #0x01, #0x00	;  1
      0044FD 01 00                 2420 	.byte #0x01, #0x00	;  1
      0044FF FF FF                 2421 	.byte #0xff, #0xff	; -1
      004501 00 00                 2422 	.byte #0x00, #0x00	;  0
      004503 00 00                 2423 	.byte #0x00, #0x00	;  0
      004505 FF FF                 2424 	.byte #0xff, #0xff	; -1
      004507 01 00                 2425 	.byte #0x01, #0x00	;  1
      004509 00 00                 2426 	.byte #0x00, #0x00	;  0
      00450B 00 00                 2427 	.byte #0x00, #0x00	;  0
      00450D 01 00                 2428 	.byte #0x01, #0x00	;  1
      00450F FF FF                 2429 	.byte #0xff, #0xff	; -1
      004511 01 00                 2430 	.byte #0x01, #0x00	;  1
      004513 FF FF                 2431 	.byte #0xff, #0xff	; -1
      004515 FF FF                 2432 	.byte #0xff, #0xff	; -1
      004517 01 00                 2433 	.byte #0x01, #0x00	;  1
      004519 FF FF                 2434 	.byte #0xff, #0xff	; -1
      00451B 01 00                 2435 	.byte #0x01, #0x00	;  1
      00451D 01 00                 2436 	.byte #0x01, #0x00	;  1
      00451F FF FF                 2437 	.byte #0xff, #0xff	; -1
      004521 00 00                 2438 	.byte #0x00, #0x00	;  0
      004523 00 00                 2439 	.byte #0x00, #0x00	;  0
      004525 FF FF                 2440 	.byte #0xff, #0xff	; -1
      004527 01 00                 2441 	.byte #0x01, #0x00	;  1
      004529 00 00                 2442 	.byte #0x00, #0x00	;  0
      00452B 00 00                 2443 	.byte #0x00, #0x00	;  0
      00452D 01 00                 2444 	.byte #0x01, #0x00	;  1
                                   2445 	.area CABS    (ABS,CODE)
