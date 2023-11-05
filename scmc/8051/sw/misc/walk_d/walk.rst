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
      004200                        322 _g:
      004200                        323 	.ds 9648
      0067B0                        324 _stack:
      0067B0                        325 	.ds 38592
      00FE70                        326 _sp:
      00FE70                        327 	.ds 2
                           00F006   328 _OEreg	=	0xf006
                                    329 ;--------------------------------------------------------
                                    330 ; absolute external ram data
                                    331 ;--------------------------------------------------------
                                    332 	.area XABS    (ABS,XDATA)
                                    333 ;--------------------------------------------------------
                                    334 ; external initialized ram data
                                    335 ;--------------------------------------------------------
                                    336 	.area XISEG   (XDATA)
      00FE72                        337 _neigh:
      00FE72                        338 	.ds 64
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
      002003 02 20 73         [24]  355 	ljmp	_int0
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
      002006 02 26 98         [24]  377 	ljmp	_main
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
                                    388 ;	walk.c:9: int putchar(int c) __naked {
                                    389 ;	-----------------------------------------
                                    390 ;	 function putchar
                                    391 ;	-----------------------------------------
      002065                        392 _putchar:
                                    393 ;	naked function: no prologue.
                                    394 ;	walk.c:14: __endasm;
      002065 E5 82            [12]  395 	mov	a, dpl
      002067 02 00 30         [24]  396 	ljmp	0x0030
                                    397 ;	walk.c:15: }
                                    398 ;	naked function: no epilogue.
                                    399 ;------------------------------------------------------------
                                    400 ;Allocation info for local variables in function 'getchar'
                                    401 ;------------------------------------------------------------
                                    402 ;	walk.c:17: int getchar(void) __naked {
                                    403 ;	-----------------------------------------
                                    404 ;	 function getchar
                                    405 ;	-----------------------------------------
      00206A                        406 _getchar:
                                    407 ;	naked function: no prologue.
                                    408 ;	walk.c:23: __endasm;
      00206A 12 00 32         [24]  409 	lcall	0x0032
      00206D F5 82            [12]  410 	mov	dpl, a
      00206F 75 83 00         [24]  411 	mov	dph, #0
      002072 22               [24]  412 	ret
                                    413 ;	walk.c:24: }
                                    414 ;	naked function: no epilogue.
                                    415 ;------------------------------------------------------------
                                    416 ;Allocation info for local variables in function 'int0'
                                    417 ;------------------------------------------------------------
                                    418 ;	walk.c:30: void int0(void) __interrupt IE0_VECTOR __using 1 {
                                    419 ;	-----------------------------------------
                                    420 ;	 function int0
                                    421 ;	-----------------------------------------
      002073                        422 _int0:
                           00000F   423 	ar7 = 0x0f
                           00000E   424 	ar6 = 0x0e
                           00000D   425 	ar5 = 0x0d
                           00000C   426 	ar4 = 0x0c
                           00000B   427 	ar3 = 0x0b
                           00000A   428 	ar2 = 0x0a
                           000009   429 	ar1 = 0x09
                           000008   430 	ar0 = 0x08
      002073 C0 D0            [24]  431 	push	psw
      002075 75 D0 08         [24]  432 	mov	psw,#0x08
                                    433 ;	walk.c:31: i0 = 0u;
      002078 78 11            [12]  434 	mov	r0,#_i0
      00207A 76 00            [12]  435 	mov	@r0,#0x00
                                    436 ;	walk.c:32: }
      00207C D0 D0            [24]  437 	pop	psw
      00207E 32               [24]  438 	reti
                                    439 ;	eliminated unneeded push/pop dpl
                                    440 ;	eliminated unneeded push/pop dph
                                    441 ;	eliminated unneeded push/pop b
                                    442 ;	eliminated unneeded push/pop acc
                                    443 ;------------------------------------------------------------
                                    444 ;Allocation info for local variables in function 'bang'
                                    445 ;------------------------------------------------------------
                                    446 ;	walk.c:38: static void bang(void) {
                                    447 ;	-----------------------------------------
                                    448 ;	 function bang
                                    449 ;	-----------------------------------------
      00207F                        450 _bang:
                           000007   451 	ar7 = 0x07
                           000006   452 	ar6 = 0x06
                           000005   453 	ar5 = 0x05
                           000004   454 	ar4 = 0x04
                           000003   455 	ar3 = 0x03
                           000002   456 	ar2 = 0x02
                           000001   457 	ar1 = 0x01
                           000000   458 	ar0 = 0x00
                                    459 ;	walk.c:39: (void)puts("Memory error");
      00207F 90 41 21         [24]  460 	mov	dptr,#___str_0
      002082 75 F0 80         [24]  461 	mov	b,#0x80
      002085 12 2D 68         [24]  462 	lcall	_puts
                                    463 ;	walk.c:35: PCON |= 2;
      002088 43 87 02         [24]  464 	orl	_PCON,#0x02
                                    465 ;	walk.c:42: return;
                                    466 ;	walk.c:43: }
      00208B 22               [24]  467 	ret
                                    468 ;------------------------------------------------------------
                                    469 ;Allocation info for local variables in function 'flashOE'
                                    470 ;------------------------------------------------------------
                                    471 ;mask                      Allocated to registers r7 
                                    472 ;------------------------------------------------------------
                                    473 ;	walk.c:85: static void flashOE(uint8_t mask) {
                                    474 ;	-----------------------------------------
                                    475 ;	 function flashOE
                                    476 ;	-----------------------------------------
      00208C                        477 _flashOE:
      00208C AF 82            [24]  478 	mov	r7,dpl
                                    479 ;	walk.c:86: P1_7 = 0;
                                    480 ;	assignBit
      00208E C2 97            [12]  481 	clr	_P1_7
                                    482 ;	walk.c:87: OEreg = OE76;
      002090 78 12            [12]  483 	mov	r0,#_OE76
      002092 90 F0 06         [24]  484 	mov	dptr,#_OEreg
      002095 E6               [12]  485 	mov	a,@r0
      002096 F0               [24]  486 	movx	@dptr,a
                                    487 ;	walk.c:88: P1_7 = 1;
                                    488 ;	assignBit
      002097 D2 97            [12]  489 	setb	_P1_7
                                    490 ;	walk.c:89: OE76 ^= mask;
      002099 78 12            [12]  491 	mov	r0,#_OE76
      00209B EF               [12]  492 	mov	a,r7
      00209C 66               [12]  493 	xrl	a,@r0
      00209D F6               [12]  494 	mov	@r0,a
                                    495 ;	walk.c:91: return;
                                    496 ;	walk.c:92: }
      00209E 22               [24]  497 	ret
                                    498 ;------------------------------------------------------------
                                    499 ;Allocation info for local variables in function 'update'
                                    500 ;------------------------------------------------------------
                                    501 ;cur                       Allocated to stack - _bp -5
                                    502 ;j                         Allocated to stack - _bp -6
                                    503 ;t                         Allocated to stack - _bp +1
                                    504 ;sloc0                     Allocated to stack - _bp +4
                                    505 ;sloc1                     Allocated to stack - _bp +6
                                    506 ;sloc2                     Allocated to stack - _bp +8
                                    507 ;------------------------------------------------------------
                                    508 ;	walk.c:94: static uint8_t update(struct node *t, struct node *cur, uint8_t j) {
                                    509 ;	-----------------------------------------
                                    510 ;	 function update
                                    511 ;	-----------------------------------------
      00209F                        512 _update:
      00209F C0 10            [24]  513 	push	_bp
      0020A1 85 81 10         [24]  514 	mov	_bp,sp
      0020A4 C0 82            [24]  515 	push	dpl
      0020A6 C0 83            [24]  516 	push	dph
      0020A8 C0 F0            [24]  517 	push	b
      0020AA E5 81            [12]  518 	mov	a,sp
      0020AC 24 07            [12]  519 	add	a,#0x07
      0020AE F5 81            [12]  520 	mov	sp,a
                                    521 ;	walk.c:95: t->r = cur->r + neigh[j].r;
      0020B0 E5 10            [12]  522 	mov	a,_bp
      0020B2 24 FB            [12]  523 	add	a,#0xfb
      0020B4 F8               [12]  524 	mov	r0,a
      0020B5 86 02            [24]  525 	mov	ar2,@r0
      0020B7 08               [12]  526 	inc	r0
      0020B8 86 03            [24]  527 	mov	ar3,@r0
      0020BA 08               [12]  528 	inc	r0
      0020BB 86 04            [24]  529 	mov	ar4,@r0
      0020BD 8A 82            [24]  530 	mov	dpl,r2
      0020BF 8B 83            [24]  531 	mov	dph,r3
      0020C1 8C F0            [24]  532 	mov	b,r4
      0020C3 E5 10            [12]  533 	mov	a,_bp
      0020C5 24 04            [12]  534 	add	a,#0x04
      0020C7 F8               [12]  535 	mov	r0,a
      0020C8 12 2E 27         [24]  536 	lcall	__gptrget
      0020CB F6               [12]  537 	mov	@r0,a
      0020CC A3               [24]  538 	inc	dptr
      0020CD 12 2E 27         [24]  539 	lcall	__gptrget
      0020D0 08               [12]  540 	inc	r0
      0020D1 F6               [12]  541 	mov	@r0,a
      0020D2 E5 10            [12]  542 	mov	a,_bp
      0020D4 24 FA            [12]  543 	add	a,#0xfa
      0020D6 F8               [12]  544 	mov	r0,a
      0020D7 E5 10            [12]  545 	mov	a,_bp
      0020D9 24 06            [12]  546 	add	a,#0x06
      0020DB F9               [12]  547 	mov	r1,a
      0020DC E6               [12]  548 	mov	a,@r0
      0020DD 75 F0 04         [24]  549 	mov	b,#0x04
      0020E0 A4               [48]  550 	mul	ab
      0020E1 F7               [12]  551 	mov	@r1,a
      0020E2 09               [12]  552 	inc	r1
      0020E3 A7 F0            [24]  553 	mov	@r1,b
      0020E5 E5 10            [12]  554 	mov	a,_bp
      0020E7 24 06            [12]  555 	add	a,#0x06
      0020E9 F8               [12]  556 	mov	r0,a
      0020EA E6               [12]  557 	mov	a,@r0
      0020EB 24 72            [12]  558 	add	a,#_neigh
      0020ED F5 82            [12]  559 	mov	dpl,a
      0020EF 08               [12]  560 	inc	r0
      0020F0 E6               [12]  561 	mov	a,@r0
      0020F1 34 FE            [12]  562 	addc	a,#(_neigh >> 8)
      0020F3 F5 83            [12]  563 	mov	dph,a
      0020F5 E0               [24]  564 	movx	a,@dptr
      0020F6 FF               [12]  565 	mov	r7,a
      0020F7 A3               [24]  566 	inc	dptr
      0020F8 E0               [24]  567 	movx	a,@dptr
      0020F9 FE               [12]  568 	mov	r6,a
      0020FA E5 10            [12]  569 	mov	a,_bp
      0020FC 24 04            [12]  570 	add	a,#0x04
      0020FE F8               [12]  571 	mov	r0,a
      0020FF EF               [12]  572 	mov	a,r7
      002100 26               [12]  573 	add	a,@r0
      002101 FF               [12]  574 	mov	r7,a
      002102 EE               [12]  575 	mov	a,r6
      002103 08               [12]  576 	inc	r0
      002104 36               [12]  577 	addc	a,@r0
      002105 FE               [12]  578 	mov	r6,a
      002106 A8 10            [24]  579 	mov	r0,_bp
      002108 08               [12]  580 	inc	r0
      002109 86 82            [24]  581 	mov	dpl,@r0
      00210B 08               [12]  582 	inc	r0
      00210C 86 83            [24]  583 	mov	dph,@r0
      00210E 08               [12]  584 	inc	r0
      00210F 86 F0            [24]  585 	mov	b,@r0
      002111 EF               [12]  586 	mov	a,r7
      002112 12 2C 1C         [24]  587 	lcall	__gptrput
      002115 A3               [24]  588 	inc	dptr
      002116 EE               [12]  589 	mov	a,r6
      002117 12 2C 1C         [24]  590 	lcall	__gptrput
                                    591 ;	walk.c:96: t->c = cur->c + neigh[j].c;
      00211A A8 10            [24]  592 	mov	r0,_bp
      00211C 08               [12]  593 	inc	r0
      00211D E5 10            [12]  594 	mov	a,_bp
      00211F 24 08            [12]  595 	add	a,#0x08
      002121 F9               [12]  596 	mov	r1,a
      002122 74 02            [12]  597 	mov	a,#0x02
      002124 26               [12]  598 	add	a,@r0
      002125 F7               [12]  599 	mov	@r1,a
      002126 E4               [12]  600 	clr	a
      002127 08               [12]  601 	inc	r0
      002128 36               [12]  602 	addc	a,@r0
      002129 09               [12]  603 	inc	r1
      00212A F7               [12]  604 	mov	@r1,a
      00212B 08               [12]  605 	inc	r0
      00212C 09               [12]  606 	inc	r1
      00212D E6               [12]  607 	mov	a,@r0
      00212E F7               [12]  608 	mov	@r1,a
      00212F 74 02            [12]  609 	mov	a,#0x02
      002131 2A               [12]  610 	add	a,r2
      002132 FA               [12]  611 	mov	r2,a
      002133 E4               [12]  612 	clr	a
      002134 3B               [12]  613 	addc	a,r3
      002135 FB               [12]  614 	mov	r3,a
      002136 8A 82            [24]  615 	mov	dpl,r2
      002138 8B 83            [24]  616 	mov	dph,r3
      00213A 8C F0            [24]  617 	mov	b,r4
      00213C 12 2E 27         [24]  618 	lcall	__gptrget
      00213F FA               [12]  619 	mov	r2,a
      002140 A3               [24]  620 	inc	dptr
      002141 12 2E 27         [24]  621 	lcall	__gptrget
      002144 FB               [12]  622 	mov	r3,a
      002145 E5 10            [12]  623 	mov	a,_bp
      002147 24 06            [12]  624 	add	a,#0x06
      002149 F8               [12]  625 	mov	r0,a
      00214A E6               [12]  626 	mov	a,@r0
      00214B 24 72            [12]  627 	add	a,#_neigh
      00214D FC               [12]  628 	mov	r4,a
      00214E 08               [12]  629 	inc	r0
      00214F E6               [12]  630 	mov	a,@r0
      002150 34 FE            [12]  631 	addc	a,#(_neigh >> 8)
      002152 FD               [12]  632 	mov	r5,a
      002153 8C 82            [24]  633 	mov	dpl,r4
      002155 8D 83            [24]  634 	mov	dph,r5
      002157 A3               [24]  635 	inc	dptr
      002158 A3               [24]  636 	inc	dptr
      002159 E0               [24]  637 	movx	a,@dptr
      00215A FC               [12]  638 	mov	r4,a
      00215B A3               [24]  639 	inc	dptr
      00215C E0               [24]  640 	movx	a,@dptr
      00215D FD               [12]  641 	mov	r5,a
      00215E EC               [12]  642 	mov	a,r4
      00215F 2A               [12]  643 	add	a,r2
      002160 FA               [12]  644 	mov	r2,a
      002161 ED               [12]  645 	mov	a,r5
      002162 3B               [12]  646 	addc	a,r3
      002163 FB               [12]  647 	mov	r3,a
      002164 E5 10            [12]  648 	mov	a,_bp
      002166 24 08            [12]  649 	add	a,#0x08
      002168 F8               [12]  650 	mov	r0,a
      002169 86 82            [24]  651 	mov	dpl,@r0
      00216B 08               [12]  652 	inc	r0
      00216C 86 83            [24]  653 	mov	dph,@r0
      00216E 08               [12]  654 	inc	r0
      00216F 86 F0            [24]  655 	mov	b,@r0
      002171 EA               [12]  656 	mov	a,r2
      002172 12 2C 1C         [24]  657 	lcall	__gptrput
      002175 A3               [24]  658 	inc	dptr
      002176 EB               [12]  659 	mov	a,r3
      002177 12 2C 1C         [24]  660 	lcall	__gptrput
                                    661 ;	walk.c:98: if (t->r < 0) t->r += ROWS;
      00217A A8 10            [24]  662 	mov	r0,_bp
      00217C 08               [12]  663 	inc	r0
      00217D 86 82            [24]  664 	mov	dpl,@r0
      00217F 08               [12]  665 	inc	r0
      002180 86 83            [24]  666 	mov	dph,@r0
      002182 08               [12]  667 	inc	r0
      002183 86 F0            [24]  668 	mov	b,@r0
      002185 12 2E 27         [24]  669 	lcall	__gptrget
      002188 FD               [12]  670 	mov	r5,a
      002189 A3               [24]  671 	inc	dptr
      00218A 12 2E 27         [24]  672 	lcall	__gptrget
      00218D FC               [12]  673 	mov	r4,a
      00218E EE               [12]  674 	mov	a,r6
      00218F 30 E7 1D         [24]  675 	jnb	acc.7,00104$
      002192 74 30            [12]  676 	mov	a,#0x30
      002194 2D               [12]  677 	add	a,r5
      002195 FF               [12]  678 	mov	r7,a
      002196 E4               [12]  679 	clr	a
      002197 3C               [12]  680 	addc	a,r4
      002198 FE               [12]  681 	mov	r6,a
      002199 A8 10            [24]  682 	mov	r0,_bp
      00219B 08               [12]  683 	inc	r0
      00219C 86 82            [24]  684 	mov	dpl,@r0
      00219E 08               [12]  685 	inc	r0
      00219F 86 83            [24]  686 	mov	dph,@r0
      0021A1 08               [12]  687 	inc	r0
      0021A2 86 F0            [24]  688 	mov	b,@r0
      0021A4 EF               [12]  689 	mov	a,r7
      0021A5 12 2C 1C         [24]  690 	lcall	__gptrput
      0021A8 A3               [24]  691 	inc	dptr
      0021A9 EE               [12]  692 	mov	a,r6
      0021AA 12 2C 1C         [24]  693 	lcall	__gptrput
      0021AD 80 27            [24]  694 	sjmp	00105$
      0021AF                        695 00104$:
                                    696 ;	walk.c:99: else if (t->r >= ROWS) t->r -= ROWS;
      0021AF C3               [12]  697 	clr	c
      0021B0 ED               [12]  698 	mov	a,r5
      0021B1 94 30            [12]  699 	subb	a,#0x30
      0021B3 EC               [12]  700 	mov	a,r4
      0021B4 64 80            [12]  701 	xrl	a,#0x80
      0021B6 94 80            [12]  702 	subb	a,#0x80
      0021B8 40 1C            [24]  703 	jc	00105$
      0021BA ED               [12]  704 	mov	a,r5
      0021BB 24 D0            [12]  705 	add	a,#0xd0
      0021BD FD               [12]  706 	mov	r5,a
      0021BE EC               [12]  707 	mov	a,r4
      0021BF 34 FF            [12]  708 	addc	a,#0xff
      0021C1 FC               [12]  709 	mov	r4,a
      0021C2 A8 10            [24]  710 	mov	r0,_bp
      0021C4 08               [12]  711 	inc	r0
      0021C5 86 82            [24]  712 	mov	dpl,@r0
      0021C7 08               [12]  713 	inc	r0
      0021C8 86 83            [24]  714 	mov	dph,@r0
      0021CA 08               [12]  715 	inc	r0
      0021CB 86 F0            [24]  716 	mov	b,@r0
      0021CD ED               [12]  717 	mov	a,r5
      0021CE 12 2C 1C         [24]  718 	lcall	__gptrput
      0021D1 A3               [24]  719 	inc	dptr
      0021D2 EC               [12]  720 	mov	a,r4
      0021D3 12 2C 1C         [24]  721 	lcall	__gptrput
      0021D6                        722 00105$:
                                    723 ;	walk.c:100: if (t->c < 0) t->c += COLS;
      0021D6 E5 10            [12]  724 	mov	a,_bp
      0021D8 24 08            [12]  725 	add	a,#0x08
      0021DA F8               [12]  726 	mov	r0,a
      0021DB 86 82            [24]  727 	mov	dpl,@r0
      0021DD 08               [12]  728 	inc	r0
      0021DE 86 83            [24]  729 	mov	dph,@r0
      0021E0 08               [12]  730 	inc	r0
      0021E1 86 F0            [24]  731 	mov	b,@r0
      0021E3 12 2E 27         [24]  732 	lcall	__gptrget
      0021E6 A3               [24]  733 	inc	dptr
      0021E7 12 2E 27         [24]  734 	lcall	__gptrget
      0021EA 30 E7 35         [24]  735 	jnb	acc.7,00109$
      0021ED E5 10            [12]  736 	mov	a,_bp
      0021EF 24 08            [12]  737 	add	a,#0x08
      0021F1 F8               [12]  738 	mov	r0,a
      0021F2 86 82            [24]  739 	mov	dpl,@r0
      0021F4 08               [12]  740 	inc	r0
      0021F5 86 83            [24]  741 	mov	dph,@r0
      0021F7 08               [12]  742 	inc	r0
      0021F8 86 F0            [24]  743 	mov	b,@r0
      0021FA 12 2E 27         [24]  744 	lcall	__gptrget
      0021FD FE               [12]  745 	mov	r6,a
      0021FE A3               [24]  746 	inc	dptr
      0021FF 12 2E 27         [24]  747 	lcall	__gptrget
      002202 FF               [12]  748 	mov	r7,a
      002203 74 C9            [12]  749 	mov	a,#0xc9
      002205 2E               [12]  750 	add	a,r6
      002206 FE               [12]  751 	mov	r6,a
      002207 E4               [12]  752 	clr	a
      002208 3F               [12]  753 	addc	a,r7
      002209 FF               [12]  754 	mov	r7,a
      00220A E5 10            [12]  755 	mov	a,_bp
      00220C 24 08            [12]  756 	add	a,#0x08
      00220E F8               [12]  757 	mov	r0,a
      00220F 86 82            [24]  758 	mov	dpl,@r0
      002211 08               [12]  759 	inc	r0
      002212 86 83            [24]  760 	mov	dph,@r0
      002214 08               [12]  761 	inc	r0
      002215 86 F0            [24]  762 	mov	b,@r0
      002217 EE               [12]  763 	mov	a,r6
      002218 12 2C 1C         [24]  764 	lcall	__gptrput
      00221B A3               [24]  765 	inc	dptr
      00221C EF               [12]  766 	mov	a,r7
      00221D 12 2C 1C         [24]  767 	lcall	__gptrput
      002220 80 55            [24]  768 	sjmp	00110$
      002222                        769 00109$:
                                    770 ;	walk.c:101: else if (t->c >= COLS) t->c -= COLS;
      002222 E5 10            [12]  771 	mov	a,_bp
      002224 24 08            [12]  772 	add	a,#0x08
      002226 F8               [12]  773 	mov	r0,a
      002227 86 82            [24]  774 	mov	dpl,@r0
      002229 08               [12]  775 	inc	r0
      00222A 86 83            [24]  776 	mov	dph,@r0
      00222C 08               [12]  777 	inc	r0
      00222D 86 F0            [24]  778 	mov	b,@r0
      00222F 12 2E 27         [24]  779 	lcall	__gptrget
      002232 FE               [12]  780 	mov	r6,a
      002233 A3               [24]  781 	inc	dptr
      002234 12 2E 27         [24]  782 	lcall	__gptrget
      002237 FF               [12]  783 	mov	r7,a
      002238 C3               [12]  784 	clr	c
      002239 EE               [12]  785 	mov	a,r6
      00223A 94 C9            [12]  786 	subb	a,#0xc9
      00223C EF               [12]  787 	mov	a,r7
      00223D 64 80            [12]  788 	xrl	a,#0x80
      00223F 94 80            [12]  789 	subb	a,#0x80
      002241 40 34            [24]  790 	jc	00110$
      002243 E5 10            [12]  791 	mov	a,_bp
      002245 24 08            [12]  792 	add	a,#0x08
      002247 F8               [12]  793 	mov	r0,a
      002248 86 82            [24]  794 	mov	dpl,@r0
      00224A 08               [12]  795 	inc	r0
      00224B 86 83            [24]  796 	mov	dph,@r0
      00224D 08               [12]  797 	inc	r0
      00224E 86 F0            [24]  798 	mov	b,@r0
      002250 12 2E 27         [24]  799 	lcall	__gptrget
      002253 FE               [12]  800 	mov	r6,a
      002254 A3               [24]  801 	inc	dptr
      002255 12 2E 27         [24]  802 	lcall	__gptrget
      002258 FF               [12]  803 	mov	r7,a
      002259 EE               [12]  804 	mov	a,r6
      00225A 24 37            [12]  805 	add	a,#0x37
      00225C FE               [12]  806 	mov	r6,a
      00225D EF               [12]  807 	mov	a,r7
      00225E 34 FF            [12]  808 	addc	a,#0xff
      002260 FF               [12]  809 	mov	r7,a
      002261 E5 10            [12]  810 	mov	a,_bp
      002263 24 08            [12]  811 	add	a,#0x08
      002265 F8               [12]  812 	mov	r0,a
      002266 86 82            [24]  813 	mov	dpl,@r0
      002268 08               [12]  814 	inc	r0
      002269 86 83            [24]  815 	mov	dph,@r0
      00226B 08               [12]  816 	inc	r0
      00226C 86 F0            [24]  817 	mov	b,@r0
      00226E EE               [12]  818 	mov	a,r6
      00226F 12 2C 1C         [24]  819 	lcall	__gptrput
      002272 A3               [24]  820 	inc	dptr
      002273 EF               [12]  821 	mov	a,r7
      002274 12 2C 1C         [24]  822 	lcall	__gptrput
      002277                        823 00110$:
                                    824 ;	walk.c:103: if (g[t->r][t->c] == 0xaau) return 0u;
      002277 A8 10            [24]  825 	mov	r0,_bp
      002279 08               [12]  826 	inc	r0
      00227A 86 82            [24]  827 	mov	dpl,@r0
      00227C 08               [12]  828 	inc	r0
      00227D 86 83            [24]  829 	mov	dph,@r0
      00227F 08               [12]  830 	inc	r0
      002280 86 F0            [24]  831 	mov	b,@r0
      002282 12 2E 27         [24]  832 	lcall	__gptrget
      002285 FE               [12]  833 	mov	r6,a
      002286 A3               [24]  834 	inc	dptr
      002287 12 2E 27         [24]  835 	lcall	__gptrget
      00228A FF               [12]  836 	mov	r7,a
      00228B C0 06            [24]  837 	push	ar6
      00228D C0 07            [24]  838 	push	ar7
      00228F 90 00 C9         [24]  839 	mov	dptr,#0x00c9
      002292 12 2C 37         [24]  840 	lcall	__mulint
      002295 AE 82            [24]  841 	mov	r6,dpl
      002297 AF 83            [24]  842 	mov	r7,dph
      002299 15 81            [12]  843 	dec	sp
      00229B 15 81            [12]  844 	dec	sp
      00229D EE               [12]  845 	mov	a,r6
      00229E 24 00            [12]  846 	add	a,#_g
      0022A0 FE               [12]  847 	mov	r6,a
      0022A1 EF               [12]  848 	mov	a,r7
      0022A2 34 42            [12]  849 	addc	a,#(_g >> 8)
      0022A4 FF               [12]  850 	mov	r7,a
      0022A5 E5 10            [12]  851 	mov	a,_bp
      0022A7 24 08            [12]  852 	add	a,#0x08
      0022A9 F8               [12]  853 	mov	r0,a
      0022AA 86 82            [24]  854 	mov	dpl,@r0
      0022AC 08               [12]  855 	inc	r0
      0022AD 86 83            [24]  856 	mov	dph,@r0
      0022AF 08               [12]  857 	inc	r0
      0022B0 86 F0            [24]  858 	mov	b,@r0
      0022B2 12 2E 27         [24]  859 	lcall	__gptrget
      0022B5 FC               [12]  860 	mov	r4,a
      0022B6 A3               [24]  861 	inc	dptr
      0022B7 12 2E 27         [24]  862 	lcall	__gptrget
      0022BA FD               [12]  863 	mov	r5,a
      0022BB EC               [12]  864 	mov	a,r4
      0022BC 2E               [12]  865 	add	a,r6
      0022BD F5 82            [12]  866 	mov	dpl,a
      0022BF ED               [12]  867 	mov	a,r5
      0022C0 3F               [12]  868 	addc	a,r7
      0022C1 F5 83            [12]  869 	mov	dph,a
      0022C3 E0               [24]  870 	movx	a,@dptr
      0022C4 FF               [12]  871 	mov	r7,a
      0022C5 BF AA 05         [24]  872 	cjne	r7,#0xaa,00114$
      0022C8 75 82 00         [24]  873 	mov	dpl,#0x00
      0022CB 80 59            [24]  874 	sjmp	00116$
      0022CD                        875 00114$:
                                    876 ;	walk.c:104: else if (g[t->r][t->c] != 0x55u) bang();
      0022CD A8 10            [24]  877 	mov	r0,_bp
      0022CF 08               [12]  878 	inc	r0
      0022D0 86 82            [24]  879 	mov	dpl,@r0
      0022D2 08               [12]  880 	inc	r0
      0022D3 86 83            [24]  881 	mov	dph,@r0
      0022D5 08               [12]  882 	inc	r0
      0022D6 86 F0            [24]  883 	mov	b,@r0
      0022D8 12 2E 27         [24]  884 	lcall	__gptrget
      0022DB FE               [12]  885 	mov	r6,a
      0022DC A3               [24]  886 	inc	dptr
      0022DD 12 2E 27         [24]  887 	lcall	__gptrget
      0022E0 FF               [12]  888 	mov	r7,a
      0022E1 C0 06            [24]  889 	push	ar6
      0022E3 C0 07            [24]  890 	push	ar7
      0022E5 90 00 C9         [24]  891 	mov	dptr,#0x00c9
      0022E8 12 2C 37         [24]  892 	lcall	__mulint
      0022EB AE 82            [24]  893 	mov	r6,dpl
      0022ED AF 83            [24]  894 	mov	r7,dph
      0022EF 15 81            [12]  895 	dec	sp
      0022F1 15 81            [12]  896 	dec	sp
      0022F3 EE               [12]  897 	mov	a,r6
      0022F4 24 00            [12]  898 	add	a,#_g
      0022F6 FE               [12]  899 	mov	r6,a
      0022F7 EF               [12]  900 	mov	a,r7
      0022F8 34 42            [12]  901 	addc	a,#(_g >> 8)
      0022FA FF               [12]  902 	mov	r7,a
      0022FB E5 10            [12]  903 	mov	a,_bp
      0022FD 24 08            [12]  904 	add	a,#0x08
      0022FF F8               [12]  905 	mov	r0,a
      002300 86 82            [24]  906 	mov	dpl,@r0
      002302 08               [12]  907 	inc	r0
      002303 86 83            [24]  908 	mov	dph,@r0
      002305 08               [12]  909 	inc	r0
      002306 86 F0            [24]  910 	mov	b,@r0
      002308 12 2E 27         [24]  911 	lcall	__gptrget
      00230B FC               [12]  912 	mov	r4,a
      00230C A3               [24]  913 	inc	dptr
      00230D 12 2E 27         [24]  914 	lcall	__gptrget
      002310 FD               [12]  915 	mov	r5,a
      002311 EC               [12]  916 	mov	a,r4
      002312 2E               [12]  917 	add	a,r6
      002313 F5 82            [12]  918 	mov	dpl,a
      002315 ED               [12]  919 	mov	a,r5
      002316 3F               [12]  920 	addc	a,r7
      002317 F5 83            [12]  921 	mov	dph,a
      002319 E0               [24]  922 	movx	a,@dptr
      00231A FF               [12]  923 	mov	r7,a
      00231B BF 55 02         [24]  924 	cjne	r7,#0x55,00148$
      00231E 80 03            [24]  925 	sjmp	00115$
      002320                        926 00148$:
      002320 12 20 7F         [24]  927 	lcall	_bang
      002323                        928 00115$:
                                    929 ;	walk.c:106: return 1u;
      002323 75 82 01         [24]  930 	mov	dpl,#0x01
      002326                        931 00116$:
                                    932 ;	walk.c:107: }
      002326 85 10 81         [24]  933 	mov	sp,_bp
      002329 D0 10            [24]  934 	pop	_bp
      00232B 22               [24]  935 	ret
                                    936 ;------------------------------------------------------------
                                    937 ;Allocation info for local variables in function 'walk'
                                    938 ;------------------------------------------------------------
                                    939 ;nstart                    Allocated to registers 
                                    940 ;cur                       Allocated to stack - _bp +10
                                    941 ;t                         Allocated to stack - _bp +14
                                    942 ;j                         Allocated to stack - _bp +18
                                    943 ;f                         Allocated to registers r3 
                                    944 ;sloc0                     Allocated to stack - _bp +1
                                    945 ;sloc1                     Allocated to stack - _bp +2
                                    946 ;sloc2                     Allocated to stack - _bp +3
                                    947 ;sloc3                     Allocated to stack - _bp +17
                                    948 ;sloc4                     Allocated to stack - _bp +4
                                    949 ;sloc5                     Allocated to stack - _bp +5
                                    950 ;sloc6                     Allocated to stack - _bp +6
                                    951 ;sloc7                     Allocated to stack - _bp +7
                                    952 ;------------------------------------------------------------
                                    953 ;	walk.c:109: static void walk(struct node *nstart) {
                                    954 ;	-----------------------------------------
                                    955 ;	 function walk
                                    956 ;	-----------------------------------------
      00232C                        957 _walk:
      00232C C0 10            [24]  958 	push	_bp
      00232E E5 81            [12]  959 	mov	a,sp
      002330 F5 10            [12]  960 	mov	_bp,a
      002332 24 12            [12]  961 	add	a,#0x12
      002334 F5 81            [12]  962 	mov	sp,a
      002336 AD 82            [24]  963 	mov	r5,dpl
      002338 AE 83            [24]  964 	mov	r6,dph
      00233A AF F0            [24]  965 	mov	r7,b
                                    966 ;	walk.c:113: cur = *nstart;
      00233C E5 10            [12]  967 	mov	a,_bp
      00233E 24 0A            [12]  968 	add	a,#0x0a
      002340 F9               [12]  969 	mov	r1,a
      002341 FA               [12]  970 	mov	r2,a
      002342 7B 00            [12]  971 	mov	r3,#0x00
      002344 7C 40            [12]  972 	mov	r4,#0x40
      002346 C0 01            [24]  973 	push	ar1
      002348 74 04            [12]  974 	mov	a,#0x04
      00234A C0 E0            [24]  975 	push	acc
      00234C E4               [12]  976 	clr	a
      00234D C0 E0            [24]  977 	push	acc
      00234F C0 05            [24]  978 	push	ar5
      002351 C0 06            [24]  979 	push	ar6
      002353 C0 07            [24]  980 	push	ar7
      002355 8A 82            [24]  981 	mov	dpl,r2
      002357 8B 83            [24]  982 	mov	dph,r3
      002359 8C F0            [24]  983 	mov	b,r4
      00235B 12 2C D5         [24]  984 	lcall	___memcpy
      00235E E5 81            [12]  985 	mov	a,sp
      002360 24 FB            [12]  986 	add	a,#0xfb
      002362 F5 81            [12]  987 	mov	sp,a
      002364 D0 01            [24]  988 	pop	ar1
                                    989 ;	walk.c:115: process:
      002366 E5 10            [12]  990 	mov	a,_bp
      002368 24 06            [12]  991 	add	a,#0x06
      00236A F8               [12]  992 	mov	r0,a
      00236B A6 01            [24]  993 	mov	@r0,ar1
      00236D E5 10            [12]  994 	mov	a,_bp
      00236F 24 0E            [12]  995 	add	a,#0x0e
      002371 FE               [12]  996 	mov	r6,a
      002372 E5 10            [12]  997 	mov	a,_bp
      002374 24 03            [12]  998 	add	a,#0x03
      002376 F8               [12]  999 	mov	r0,a
      002377 A6 01            [24] 1000 	mov	@r0,ar1
      002379 E5 10            [12] 1001 	mov	a,_bp
      00237B 24 05            [12] 1002 	add	a,#0x05
      00237D F8               [12] 1003 	mov	r0,a
      00237E A6 01            [24] 1004 	mov	@r0,ar1
      002380 E5 10            [12] 1005 	mov	a,_bp
      002382 24 04            [12] 1006 	add	a,#0x04
      002384 F8               [12] 1007 	mov	r0,a
      002385 A6 06            [24] 1008 	mov	@r0,ar6
      002387 89 02            [24] 1009 	mov	ar2,r1
      002389 A8 10            [24] 1010 	mov	r0,_bp
      00238B 08               [12] 1011 	inc	r0
      00238C A6 06            [24] 1012 	mov	@r0,ar6
      00238E A8 10            [24] 1013 	mov	r0,_bp
      002390 08               [12] 1014 	inc	r0
      002391 08               [12] 1015 	inc	r0
      002392 A6 01            [24] 1016 	mov	@r0,ar1
      002394 74 02            [12] 1017 	mov	a,#0x02
      002396 29               [12] 1018 	add	a,r1
      002397 F8               [12] 1019 	mov	r0,a
      002398                       1020 00101$:
                                   1021 ;	walk.c:116: g[cur.r][cur.c] = 0xaau;
      002398 C0 02            [24] 1022 	push	ar2
      00239A 87 02            [24] 1023 	mov	ar2,@r1
      00239C 09               [12] 1024 	inc	r1
      00239D 87 05            [24] 1025 	mov	ar5,@r1
      00239F 19               [12] 1026 	dec	r1
      0023A0 C0 06            [24] 1027 	push	ar6
      0023A2 C0 01            [24] 1028 	push	ar1
      0023A4 C0 00            [24] 1029 	push	ar0
      0023A6 C0 02            [24] 1030 	push	ar2
      0023A8 C0 05            [24] 1031 	push	ar5
      0023AA 90 00 C9         [24] 1032 	mov	dptr,#0x00c9
      0023AD 12 2C 37         [24] 1033 	lcall	__mulint
      0023B0 AA 82            [24] 1034 	mov	r2,dpl
      0023B2 AD 83            [24] 1035 	mov	r5,dph
      0023B4 15 81            [12] 1036 	dec	sp
      0023B6 15 81            [12] 1037 	dec	sp
      0023B8 D0 00            [24] 1038 	pop	ar0
      0023BA D0 01            [24] 1039 	pop	ar1
      0023BC EA               [12] 1040 	mov	a,r2
      0023BD 24 00            [12] 1041 	add	a,#_g
      0023BF FF               [12] 1042 	mov	r7,a
      0023C0 ED               [12] 1043 	mov	a,r5
      0023C1 34 42            [12] 1044 	addc	a,#(_g >> 8)
      0023C3 FC               [12] 1045 	mov	r4,a
      0023C4 86 02            [24] 1046 	mov	ar2,@r0
      0023C6 08               [12] 1047 	inc	r0
      0023C7 86 05            [24] 1048 	mov	ar5,@r0
      0023C9 18               [12] 1049 	dec	r0
      0023CA EA               [12] 1050 	mov	a,r2
      0023CB 2F               [12] 1051 	add	a,r7
      0023CC F5 82            [12] 1052 	mov	dpl,a
      0023CE ED               [12] 1053 	mov	a,r5
      0023CF 3C               [12] 1054 	addc	a,r4
      0023D0 F5 83            [12] 1055 	mov	dph,a
      0023D2 74 AA            [12] 1056 	mov	a,#0xaa
      0023D4 F0               [24] 1057 	movx	@dptr,a
                                   1058 ;	walk.c:118: printf("\033[%d;%dHo", cur.r + 4, cur.c + 1);
      0023D5 86 02            [24] 1059 	mov	ar2,@r0
      0023D7 08               [12] 1060 	inc	r0
      0023D8 86 05            [24] 1061 	mov	ar5,@r0
      0023DA 18               [12] 1062 	dec	r0
      0023DB 74 01            [12] 1063 	mov	a,#0x01
      0023DD 2A               [12] 1064 	add	a,r2
      0023DE FF               [12] 1065 	mov	r7,a
      0023DF E4               [12] 1066 	clr	a
      0023E0 3D               [12] 1067 	addc	a,r5
      0023E1 FC               [12] 1068 	mov	r4,a
      0023E2 87 02            [24] 1069 	mov	ar2,@r1
      0023E4 09               [12] 1070 	inc	r1
      0023E5 87 05            [24] 1071 	mov	ar5,@r1
      0023E7 19               [12] 1072 	dec	r1
      0023E8 74 04            [12] 1073 	mov	a,#0x04
      0023EA 2A               [12] 1074 	add	a,r2
      0023EB FA               [12] 1075 	mov	r2,a
      0023EC E4               [12] 1076 	clr	a
      0023ED 3D               [12] 1077 	addc	a,r5
      0023EE FD               [12] 1078 	mov	r5,a
      0023EF C0 02            [24] 1079 	push	ar2
      0023F1 C0 01            [24] 1080 	push	ar1
      0023F3 C0 00            [24] 1081 	push	ar0
      0023F5 C0 07            [24] 1082 	push	ar7
      0023F7 C0 04            [24] 1083 	push	ar4
      0023F9 C0 02            [24] 1084 	push	ar2
      0023FB C0 05            [24] 1085 	push	ar5
      0023FD 74 2E            [12] 1086 	mov	a,#___str_1
      0023FF C0 E0            [24] 1087 	push	acc
      002401 74 41            [12] 1088 	mov	a,#(___str_1 >> 8)
      002403 C0 E0            [24] 1089 	push	acc
      002405 74 80            [12] 1090 	mov	a,#0x80
      002407 C0 E0            [24] 1091 	push	acc
      002409 12 2D EE         [24] 1092 	lcall	_printf
      00240C E5 81            [12] 1093 	mov	a,sp
      00240E 24 F9            [12] 1094 	add	a,#0xf9
      002410 F5 81            [12] 1095 	mov	sp,a
                                   1096 ;	walk.c:119: flashOE(OE76_MASK7);
      002412 75 82 80         [24] 1097 	mov	dpl,#0x80
      002415 12 20 8C         [24] 1098 	lcall	_flashOE
      002418 D0 00            [24] 1099 	pop	ar0
      00241A D0 01            [24] 1100 	pop	ar1
      00241C D0 02            [24] 1101 	pop	ar2
      00241E D0 06            [24] 1102 	pop	ar6
                                   1103 ;	walk.c:144: return;
      002420 D0 02            [24] 1104 	pop	ar2
                                   1105 ;	walk.c:121: next:
      002422                       1106 00102$:
                                   1107 ;	walk.c:122: printf("\033[2;1H% 8d% 8d% 8d", sp, cur.r, cur.c);
      002422 C0 02            [24] 1108 	push	ar2
      002424 86 07            [24] 1109 	mov	ar7,@r0
      002426 08               [12] 1110 	inc	r0
      002427 86 04            [24] 1111 	mov	ar4,@r0
      002429 18               [12] 1112 	dec	r0
      00242A 87 02            [24] 1113 	mov	ar2,@r1
      00242C 09               [12] 1114 	inc	r1
      00242D 87 05            [24] 1115 	mov	ar5,@r1
      00242F 19               [12] 1116 	dec	r1
      002430 C0 06            [24] 1117 	push	ar6
      002432 C0 02            [24] 1118 	push	ar2
      002434 C0 01            [24] 1119 	push	ar1
      002436 C0 00            [24] 1120 	push	ar0
      002438 C0 07            [24] 1121 	push	ar7
      00243A C0 04            [24] 1122 	push	ar4
      00243C C0 02            [24] 1123 	push	ar2
      00243E C0 05            [24] 1124 	push	ar5
      002440 90 FE 70         [24] 1125 	mov	dptr,#_sp
      002443 E0               [24] 1126 	movx	a,@dptr
      002444 C0 E0            [24] 1127 	push	acc
      002446 A3               [24] 1128 	inc	dptr
      002447 E0               [24] 1129 	movx	a,@dptr
      002448 C0 E0            [24] 1130 	push	acc
      00244A 74 38            [12] 1131 	mov	a,#___str_2
      00244C C0 E0            [24] 1132 	push	acc
      00244E 74 41            [12] 1133 	mov	a,#(___str_2 >> 8)
      002450 C0 E0            [24] 1134 	push	acc
      002452 74 80            [12] 1135 	mov	a,#0x80
      002454 C0 E0            [24] 1136 	push	acc
      002456 12 2D EE         [24] 1137 	lcall	_printf
      002459 E5 81            [12] 1138 	mov	a,sp
      00245B 24 F7            [12] 1139 	add	a,#0xf7
      00245D F5 81            [12] 1140 	mov	sp,a
      00245F D0 00            [24] 1141 	pop	ar0
      002461 D0 01            [24] 1142 	pop	ar1
      002463 D0 02            [24] 1143 	pop	ar2
      002465 D0 06            [24] 1144 	pop	ar6
                                   1145 ;	walk.c:124: for (j = 0u, f = 0u; j < NMAX; j++) {
      002467 7B 00            [12] 1146 	mov	r3,#0x00
      002469 C0 00            [24] 1147 	push	ar0
      00246B E5 10            [12] 1148 	mov	a,_bp
      00246D 24 12            [12] 1149 	add	a,#0x12
      00246F F8               [12] 1150 	mov	r0,a
      002470 76 00            [12] 1151 	mov	@r0,#0x00
      002472 D0 00            [24] 1152 	pop	ar0
                                   1153 ;	walk.c:144: return;
      002474 D0 02            [24] 1154 	pop	ar2
                                   1155 ;	walk.c:124: for (j = 0u, f = 0u; j < NMAX; j++) {
      002476                       1156 00119$:
      002476 C0 00            [24] 1157 	push	ar0
      002478 E5 10            [12] 1158 	mov	a,_bp
      00247A 24 12            [12] 1159 	add	a,#0x12
      00247C F8               [12] 1160 	mov	r0,a
      00247D B6 10 00         [24] 1161 	cjne	@r0,#0x10,00159$
      002480                       1162 00159$:
      002480 D0 00            [24] 1163 	pop	ar0
      002482 50 7A            [24] 1164 	jnc	00106$
                                   1165 ;	walk.c:125: if (!update(&t, &cur, j)) continue;
      002484 C0 02            [24] 1166 	push	ar2
      002486 C0 00            [24] 1167 	push	ar0
      002488 E5 10            [12] 1168 	mov	a,_bp
      00248A 24 06            [12] 1169 	add	a,#0x06
      00248C F8               [12] 1170 	mov	r0,a
      00248D C0 01            [24] 1171 	push	ar1
      00248F E5 10            [12] 1172 	mov	a,_bp
      002491 24 07            [12] 1173 	add	a,#0x07
      002493 F9               [12] 1174 	mov	r1,a
      002494 E6               [12] 1175 	mov	a,@r0
      002495 F7               [12] 1176 	mov	@r1,a
      002496 09               [12] 1177 	inc	r1
      002497 77 00            [12] 1178 	mov	@r1,#0x00
      002499 09               [12] 1179 	inc	r1
      00249A 77 40            [12] 1180 	mov	@r1,#0x40
      00249C D0 01            [24] 1181 	pop	ar1
      00249E D0 00            [24] 1182 	pop	ar0
      0024A0 8E 04            [24] 1183 	mov	ar4,r6
      0024A2 7D 00            [12] 1184 	mov	r5,#0x00
      0024A4 7F 40            [12] 1185 	mov	r7,#0x40
      0024A6 C0 06            [24] 1186 	push	ar6
      0024A8 C0 03            [24] 1187 	push	ar3
      0024AA C0 02            [24] 1188 	push	ar2
      0024AC C0 01            [24] 1189 	push	ar1
      0024AE C0 00            [24] 1190 	push	ar0
      0024B0 85 00 F0         [24] 1191 	mov	b,ar0
      0024B3 E5 10            [12] 1192 	mov	a,_bp
      0024B5 24 12            [12] 1193 	add	a,#0x12
      0024B7 F8               [12] 1194 	mov	r0,a
      0024B8 E6               [12] 1195 	mov	a,@r0
      0024B9 C0 E0            [24] 1196 	push	acc
      0024BB A8 F0            [24] 1197 	mov	r0,b
      0024BD 85 00 F0         [24] 1198 	mov	b,ar0
      0024C0 E5 10            [12] 1199 	mov	a,_bp
      0024C2 24 07            [12] 1200 	add	a,#0x07
      0024C4 F8               [12] 1201 	mov	r0,a
      0024C5 E6               [12] 1202 	mov	a,@r0
      0024C6 C0 E0            [24] 1203 	push	acc
      0024C8 08               [12] 1204 	inc	r0
      0024C9 E6               [12] 1205 	mov	a,@r0
      0024CA C0 E0            [24] 1206 	push	acc
      0024CC 08               [12] 1207 	inc	r0
      0024CD E6               [12] 1208 	mov	a,@r0
      0024CE C0 E0            [24] 1209 	push	acc
      0024D0 8C 82            [24] 1210 	mov	dpl,r4
      0024D2 8D 83            [24] 1211 	mov	dph,r5
      0024D4 8F F0            [24] 1212 	mov	b,r7
      0024D6 12 20 9F         [24] 1213 	lcall	_update
      0024D9 AF 82            [24] 1214 	mov	r7,dpl
      0024DB E5 81            [12] 1215 	mov	a,sp
      0024DD 24 FC            [12] 1216 	add	a,#0xfc
      0024DF F5 81            [12] 1217 	mov	sp,a
      0024E1 D0 00            [24] 1218 	pop	ar0
      0024E3 D0 01            [24] 1219 	pop	ar1
      0024E5 D0 02            [24] 1220 	pop	ar2
      0024E7 D0 03            [24] 1221 	pop	ar3
      0024E9 D0 06            [24] 1222 	pop	ar6
      0024EB D0 02            [24] 1223 	pop	ar2
      0024ED EF               [12] 1224 	mov	a,r7
      0024EE 60 01            [24] 1225 	jz	00105$
                                   1226 ;	walk.c:126: f++;
      0024F0 0B               [12] 1227 	inc	r3
      0024F1                       1228 00105$:
                                   1229 ;	walk.c:124: for (j = 0u, f = 0u; j < NMAX; j++) {
      0024F1 C0 00            [24] 1230 	push	ar0
      0024F3 E5 10            [12] 1231 	mov	a,_bp
      0024F5 24 12            [12] 1232 	add	a,#0x12
      0024F7 F8               [12] 1233 	mov	r0,a
      0024F8 06               [12] 1234 	inc	@r0
      0024F9 D0 00            [24] 1235 	pop	ar0
      0024FB 02 24 76         [24] 1236 	ljmp	00119$
      0024FE                       1237 00106$:
                                   1238 ;	walk.c:129: if (f) {
      0024FE EB               [12] 1239 	mov	a,r3
      0024FF 70 03            [24] 1240 	jnz	00162$
      002501 02 26 18         [24] 1241 	ljmp	00115$
      002504                       1242 00162$:
                                   1243 ;	walk.c:130: while (1) {
      002504                       1244 00112$:
                                   1245 ;	walk.c:131: j = (uint8_t)(rand() % NMAX);
      002504 C0 02            [24] 1246 	push	ar2
      002506 C0 06            [24] 1247 	push	ar6
      002508 C0 02            [24] 1248 	push	ar2
      00250A C0 01            [24] 1249 	push	ar1
      00250C C0 00            [24] 1250 	push	ar0
      00250E 12 2B 3F         [24] 1251 	lcall	_rand
      002511 AD 82            [24] 1252 	mov	r5,dpl
      002513 D0 00            [24] 1253 	pop	ar0
      002515 D0 01            [24] 1254 	pop	ar1
      002517 D0 02            [24] 1255 	pop	ar2
      002519 D0 06            [24] 1256 	pop	ar6
      00251B 53 05 0F         [24] 1257 	anl	ar5,#0x0f
      00251E 8D 04            [24] 1258 	mov	ar4,r5
                                   1259 ;	walk.c:132: if (!update(&t, &cur, j)) continue;
      002520 C0 00            [24] 1260 	push	ar0
      002522 E5 10            [12] 1261 	mov	a,_bp
      002524 24 05            [12] 1262 	add	a,#0x05
      002526 F8               [12] 1263 	mov	r0,a
      002527 C0 01            [24] 1264 	push	ar1
      002529 E5 10            [12] 1265 	mov	a,_bp
      00252B 24 07            [12] 1266 	add	a,#0x07
      00252D F9               [12] 1267 	mov	r1,a
      00252E E6               [12] 1268 	mov	a,@r0
      00252F F7               [12] 1269 	mov	@r1,a
      002530 09               [12] 1270 	inc	r1
      002531 77 00            [12] 1271 	mov	@r1,#0x00
      002533 09               [12] 1272 	inc	r1
      002534 77 40            [12] 1273 	mov	@r1,#0x40
      002536 D0 01            [24] 1274 	pop	ar1
      002538 E5 10            [12] 1275 	mov	a,_bp
      00253A 24 04            [12] 1276 	add	a,#0x04
      00253C F8               [12] 1277 	mov	r0,a
      00253D 86 02            [24] 1278 	mov	ar2,@r0
      00253F 7D 00            [12] 1279 	mov	r5,#0x00
      002541 7F 40            [12] 1280 	mov	r7,#0x40
      002543 D0 00            [24] 1281 	pop	ar0
      002545 C0 06            [24] 1282 	push	ar6
      002547 C0 02            [24] 1283 	push	ar2
      002549 C0 01            [24] 1284 	push	ar1
      00254B C0 00            [24] 1285 	push	ar0
      00254D C0 04            [24] 1286 	push	ar4
      00254F 85 00 F0         [24] 1287 	mov	b,ar0
      002552 E5 10            [12] 1288 	mov	a,_bp
      002554 24 07            [12] 1289 	add	a,#0x07
      002556 F8               [12] 1290 	mov	r0,a
      002557 E6               [12] 1291 	mov	a,@r0
      002558 C0 E0            [24] 1292 	push	acc
      00255A 08               [12] 1293 	inc	r0
      00255B E6               [12] 1294 	mov	a,@r0
      00255C C0 E0            [24] 1295 	push	acc
      00255E 08               [12] 1296 	inc	r0
      00255F E6               [12] 1297 	mov	a,@r0
      002560 C0 E0            [24] 1298 	push	acc
      002562 8A 82            [24] 1299 	mov	dpl,r2
      002564 8D 83            [24] 1300 	mov	dph,r5
      002566 8F F0            [24] 1301 	mov	b,r7
      002568 12 20 9F         [24] 1302 	lcall	_update
      00256B AF 82            [24] 1303 	mov	r7,dpl
      00256D E5 81            [12] 1304 	mov	a,sp
      00256F 24 FC            [12] 1305 	add	a,#0xfc
      002571 F5 81            [12] 1306 	mov	sp,a
      002573 D0 00            [24] 1307 	pop	ar0
      002575 D0 01            [24] 1308 	pop	ar1
      002577 D0 02            [24] 1309 	pop	ar2
      002579 D0 06            [24] 1310 	pop	ar6
      00257B D0 02            [24] 1311 	pop	ar2
      00257D EF               [12] 1312 	mov	a,r7
      00257E 60 84            [24] 1313 	jz	00112$
                                   1314 ;	walk.c:133: if (!stpush(&cur)) bang();
      002580 8A 04            [24] 1315 	mov	ar4,r2
      002582 7D 00            [12] 1316 	mov	r5,#0x00
      002584 7F 40            [12] 1317 	mov	r7,#0x40
      002586 8C 82            [24] 1318 	mov	dpl,r4
      002588 8D 83            [24] 1319 	mov	dph,r5
      00258A 8F F0            [24] 1320 	mov	b,r7
      00258C C0 06            [24] 1321 	push	ar6
      00258E C0 02            [24] 1322 	push	ar2
      002590 C0 01            [24] 1323 	push	ar1
      002592 C0 00            [24] 1324 	push	ar0
      002594 12 2A 7C         [24] 1325 	lcall	_stpush
      002597 E5 82            [12] 1326 	mov	a,dpl
      002599 D0 00            [24] 1327 	pop	ar0
      00259B D0 01            [24] 1328 	pop	ar1
      00259D D0 02            [24] 1329 	pop	ar2
      00259F D0 06            [24] 1330 	pop	ar6
      0025A1 70 13            [24] 1331 	jnz	00110$
      0025A3 C0 06            [24] 1332 	push	ar6
      0025A5 C0 02            [24] 1333 	push	ar2
      0025A7 C0 01            [24] 1334 	push	ar1
      0025A9 C0 00            [24] 1335 	push	ar0
      0025AB 12 20 7F         [24] 1336 	lcall	_bang
      0025AE D0 00            [24] 1337 	pop	ar0
      0025B0 D0 01            [24] 1338 	pop	ar1
      0025B2 D0 02            [24] 1339 	pop	ar2
      0025B4 D0 06            [24] 1340 	pop	ar6
      0025B6                       1341 00110$:
                                   1342 ;	walk.c:134: cur = t;
      0025B6 C0 02            [24] 1343 	push	ar2
      0025B8 C0 00            [24] 1344 	push	ar0
      0025BA A8 10            [24] 1345 	mov	r0,_bp
      0025BC 08               [12] 1346 	inc	r0
      0025BD C0 01            [24] 1347 	push	ar1
      0025BF E5 10            [12] 1348 	mov	a,_bp
      0025C1 24 07            [12] 1349 	add	a,#0x07
      0025C3 F9               [12] 1350 	mov	r1,a
      0025C4 E6               [12] 1351 	mov	a,@r0
      0025C5 F7               [12] 1352 	mov	@r1,a
      0025C6 09               [12] 1353 	inc	r1
      0025C7 77 00            [12] 1354 	mov	@r1,#0x00
      0025C9 09               [12] 1355 	inc	r1
      0025CA 77 40            [12] 1356 	mov	@r1,#0x40
      0025CC D0 01            [24] 1357 	pop	ar1
      0025CE A8 10            [24] 1358 	mov	r0,_bp
      0025D0 08               [12] 1359 	inc	r0
      0025D1 08               [12] 1360 	inc	r0
      0025D2 86 02            [24] 1361 	mov	ar2,@r0
      0025D4 7B 00            [12] 1362 	mov	r3,#0x00
      0025D6 7F 40            [12] 1363 	mov	r7,#0x40
      0025D8 D0 00            [24] 1364 	pop	ar0
      0025DA C0 06            [24] 1365 	push	ar6
      0025DC C0 02            [24] 1366 	push	ar2
      0025DE C0 01            [24] 1367 	push	ar1
      0025E0 C0 00            [24] 1368 	push	ar0
      0025E2 74 04            [12] 1369 	mov	a,#0x04
      0025E4 C0 E0            [24] 1370 	push	acc
      0025E6 E4               [12] 1371 	clr	a
      0025E7 C0 E0            [24] 1372 	push	acc
      0025E9 85 00 F0         [24] 1373 	mov	b,ar0
      0025EC E5 10            [12] 1374 	mov	a,_bp
      0025EE 24 07            [12] 1375 	add	a,#0x07
      0025F0 F8               [12] 1376 	mov	r0,a
      0025F1 E6               [12] 1377 	mov	a,@r0
      0025F2 C0 E0            [24] 1378 	push	acc
      0025F4 08               [12] 1379 	inc	r0
      0025F5 E6               [12] 1380 	mov	a,@r0
      0025F6 C0 E0            [24] 1381 	push	acc
      0025F8 08               [12] 1382 	inc	r0
      0025F9 E6               [12] 1383 	mov	a,@r0
      0025FA C0 E0            [24] 1384 	push	acc
      0025FC 8A 82            [24] 1385 	mov	dpl,r2
      0025FE 8B 83            [24] 1386 	mov	dph,r3
      002600 8F F0            [24] 1387 	mov	b,r7
      002602 12 2C D5         [24] 1388 	lcall	___memcpy
      002605 E5 81            [12] 1389 	mov	a,sp
      002607 24 FB            [12] 1390 	add	a,#0xfb
      002609 F5 81            [12] 1391 	mov	sp,a
      00260B D0 00            [24] 1392 	pop	ar0
      00260D D0 01            [24] 1393 	pop	ar1
      00260F D0 02            [24] 1394 	pop	ar2
      002611 D0 06            [24] 1395 	pop	ar6
                                   1396 ;	walk.c:135: goto process;
      002613 D0 02            [24] 1397 	pop	ar2
      002615 02 23 98         [24] 1398 	ljmp	00101$
      002618                       1399 00115$:
                                   1400 ;	walk.c:139: printf("\033[%d;%dH.", cur.r + 4, cur.c + 1);
      002618 86 05            [24] 1401 	mov	ar5,@r0
      00261A 08               [12] 1402 	inc	r0
      00261B 86 07            [24] 1403 	mov	ar7,@r0
      00261D 18               [12] 1404 	dec	r0
      00261E 0D               [12] 1405 	inc	r5
      00261F BD 00 01         [24] 1406 	cjne	r5,#0x00,00165$
      002622 0F               [12] 1407 	inc	r7
      002623                       1408 00165$:
      002623 87 03            [24] 1409 	mov	ar3,@r1
      002625 09               [12] 1410 	inc	r1
      002626 87 04            [24] 1411 	mov	ar4,@r1
      002628 19               [12] 1412 	dec	r1
      002629 74 04            [12] 1413 	mov	a,#0x04
      00262B 2B               [12] 1414 	add	a,r3
      00262C FB               [12] 1415 	mov	r3,a
      00262D E4               [12] 1416 	clr	a
      00262E 3C               [12] 1417 	addc	a,r4
      00262F FC               [12] 1418 	mov	r4,a
      002630 C0 06            [24] 1419 	push	ar6
      002632 C0 02            [24] 1420 	push	ar2
      002634 C0 01            [24] 1421 	push	ar1
      002636 C0 00            [24] 1422 	push	ar0
      002638 C0 05            [24] 1423 	push	ar5
      00263A C0 07            [24] 1424 	push	ar7
      00263C C0 03            [24] 1425 	push	ar3
      00263E C0 04            [24] 1426 	push	ar4
      002640 74 4B            [12] 1427 	mov	a,#___str_3
      002642 C0 E0            [24] 1428 	push	acc
      002644 74 41            [12] 1429 	mov	a,#(___str_3 >> 8)
      002646 C0 E0            [24] 1430 	push	acc
      002648 74 80            [12] 1431 	mov	a,#0x80
      00264A C0 E0            [24] 1432 	push	acc
      00264C 12 2D EE         [24] 1433 	lcall	_printf
      00264F E5 81            [12] 1434 	mov	a,sp
      002651 24 F9            [12] 1435 	add	a,#0xf9
      002653 F5 81            [12] 1436 	mov	sp,a
                                   1437 ;	walk.c:140: flashOE(OE76_MASK6);
      002655 75 82 40         [24] 1438 	mov	dpl,#0x40
      002658 12 20 8C         [24] 1439 	lcall	_flashOE
      00265B D0 00            [24] 1440 	pop	ar0
      00265D D0 01            [24] 1441 	pop	ar1
      00265F D0 02            [24] 1442 	pop	ar2
      002661 D0 06            [24] 1443 	pop	ar6
                                   1444 ;	walk.c:142: if (stpop(&cur)) goto next;
      002663 C0 00            [24] 1445 	push	ar0
      002665 E5 10            [12] 1446 	mov	a,_bp
      002667 24 03            [12] 1447 	add	a,#0x03
      002669 F8               [12] 1448 	mov	r0,a
      00266A 86 04            [24] 1449 	mov	ar4,@r0
      00266C 7D 00            [12] 1450 	mov	r5,#0x00
      00266E 7F 40            [12] 1451 	mov	r7,#0x40
      002670 D0 00            [24] 1452 	pop	ar0
      002672 8C 82            [24] 1453 	mov	dpl,r4
      002674 8D 83            [24] 1454 	mov	dph,r5
      002676 8F F0            [24] 1455 	mov	b,r7
      002678 C0 06            [24] 1456 	push	ar6
      00267A C0 02            [24] 1457 	push	ar2
      00267C C0 01            [24] 1458 	push	ar1
      00267E C0 00            [24] 1459 	push	ar0
      002680 12 2A DD         [24] 1460 	lcall	_stpop
      002683 E5 82            [12] 1461 	mov	a,dpl
      002685 D0 00            [24] 1462 	pop	ar0
      002687 D0 01            [24] 1463 	pop	ar1
      002689 D0 02            [24] 1464 	pop	ar2
      00268B D0 06            [24] 1465 	pop	ar6
      00268D 60 03            [24] 1466 	jz	00166$
      00268F 02 24 22         [24] 1467 	ljmp	00102$
      002692                       1468 00166$:
                                   1469 ;	walk.c:144: return;
                                   1470 ;	walk.c:145: }
      002692 85 10 81         [24] 1471 	mov	sp,_bp
      002695 D0 10            [24] 1472 	pop	_bp
      002697 22               [24] 1473 	ret
                                   1474 ;------------------------------------------------------------
                                   1475 ;Allocation info for local variables in function 'main'
                                   1476 ;------------------------------------------------------------
                                   1477 ;initial                   Allocated to stack - _bp +9
                                   1478 ;N                         Allocated to stack - _bp +5
                                   1479 ;i                         Allocated to stack - _bp +7
                                   1480 ;j                         Allocated to registers r2 r6 
                                   1481 ;sloc0                     Allocated to stack - _bp +1
                                   1482 ;sloc1                     Allocated to stack - _bp +3
                                   1483 ;sloc2                     Allocated to stack - _bp +15
                                   1484 ;------------------------------------------------------------
                                   1485 ;	walk.c:147: void main(void) {
                                   1486 ;	-----------------------------------------
                                   1487 ;	 function main
                                   1488 ;	-----------------------------------------
      002698                       1489 _main:
      002698 C0 10            [24] 1490 	push	_bp
      00269A E5 81            [12] 1491 	mov	a,sp
      00269C F5 10            [12] 1492 	mov	_bp,a
      00269E 24 0C            [12] 1493 	add	a,#0x0c
      0026A0 F5 81            [12] 1494 	mov	sp,a
                                   1495 ;	walk.c:152: i0 = 1u;
      0026A2 78 11            [12] 1496 	mov	r0,#_i0
      0026A4 76 01            [12] 1497 	mov	@r0,#0x01
                                   1498 ;	walk.c:154: P1_7 = 1;
                                   1499 ;	assignBit
      0026A6 D2 97            [12] 1500 	setb	_P1_7
                                   1501 ;	walk.c:155: IT0 = 1;
                                   1502 ;	assignBit
      0026A8 D2 88            [12] 1503 	setb	_IT0
                                   1504 ;	walk.c:156: EX0 = 1;
                                   1505 ;	assignBit
      0026AA D2 A8            [12] 1506 	setb	_EX0
                                   1507 ;	walk.c:157: EA = 1;
                                   1508 ;	assignBit
      0026AC D2 AF            [12] 1509 	setb	_EA
                                   1510 ;	walk.c:159: srand(RND);
      0026AE 90 80 00         [24] 1511 	mov	dptr,#_RND
      0026B1 E0               [24] 1512 	movx	a,@dptr
      0026B2 FE               [12] 1513 	mov	r6,a
      0026B3 A3               [24] 1514 	inc	dptr
      0026B4 E0               [24] 1515 	movx	a,@dptr
      0026B5 FF               [12] 1516 	mov	r7,a
      0026B6 8E 82            [24] 1517 	mov	dpl,r6
      0026B8 8F 83            [24] 1518 	mov	dph,r7
      0026BA 12 2C 03         [24] 1519 	lcall	_srand
                                   1520 ;	walk.c:160: stinit();
      0026BD 12 2A 73         [24] 1521 	lcall	_stinit
                                   1522 ;	walk.c:162: puts("\033[2J\033[?25l");
      0026C0 90 41 55         [24] 1523 	mov	dptr,#___str_4
      0026C3 75 F0 80         [24] 1524 	mov	b,#0x80
      0026C6 12 2D 68         [24] 1525 	lcall	_puts
                                   1526 ;	walk.c:164: while (i0) {
      0026C9 E5 10            [12] 1527 	mov	a,_bp
      0026CB 24 09            [12] 1528 	add	a,#0x09
      0026CD F9               [12] 1529 	mov	r1,a
      0026CE FF               [12] 1530 	mov	r7,a
      0026CF E5 10            [12] 1531 	mov	a,_bp
      0026D1 24 05            [12] 1532 	add	a,#0x05
      0026D3 F8               [12] 1533 	mov	r0,a
      0026D4 E4               [12] 1534 	clr	a
      0026D5 F6               [12] 1535 	mov	@r0,a
      0026D6 08               [12] 1536 	inc	r0
      0026D7 F6               [12] 1537 	mov	@r0,a
      0026D8                       1538 00108$:
      0026D8 78 11            [12] 1539 	mov	r0,#_i0
      0026DA E6               [12] 1540 	mov	a,@r0
      0026DB 70 03            [24] 1541 	jnz	00182$
      0026DD 02 2A 5F         [24] 1542 	ljmp	00110$
      0026E0                       1543 00182$:
                                   1544 ;	walk.c:165: for (i = 0; i < ROWS; i++)
      0026E0 7B 00            [12] 1545 	mov	r3,#0x00
      0026E2 7C 00            [12] 1546 	mov	r4,#0x00
      0026E4 A8 10            [24] 1547 	mov	r0,_bp
      0026E6 08               [12] 1548 	inc	r0
      0026E7 E4               [12] 1549 	clr	a
      0026E8 F6               [12] 1550 	mov	@r0,a
      0026E9 08               [12] 1551 	inc	r0
      0026EA F6               [12] 1552 	mov	@r0,a
                                   1553 ;	walk.c:166: for (j = 0; j < COLS; j++)
      0026EB                       1554 00125$:
      0026EB A8 10            [24] 1555 	mov	r0,_bp
      0026ED 08               [12] 1556 	inc	r0
      0026EE C0 01            [24] 1557 	push	ar1
      0026F0 E5 10            [12] 1558 	mov	a,_bp
      0026F2 24 03            [12] 1559 	add	a,#0x03
      0026F4 F9               [12] 1560 	mov	r1,a
      0026F5 E6               [12] 1561 	mov	a,@r0
      0026F6 24 00            [12] 1562 	add	a,#_g
      0026F8 F7               [12] 1563 	mov	@r1,a
      0026F9 08               [12] 1564 	inc	r0
      0026FA E6               [12] 1565 	mov	a,@r0
      0026FB 34 42            [12] 1566 	addc	a,#(_g >> 8)
      0026FD 09               [12] 1567 	inc	r1
      0026FE F7               [12] 1568 	mov	@r1,a
      0026FF D0 01            [24] 1569 	pop	ar1
      002701 7A 00            [12] 1570 	mov	r2,#0x00
      002703 7E 00            [12] 1571 	mov	r6,#0x00
      002705                       1572 00112$:
                                   1573 ;	walk.c:167: g[i][j] = 0x55u;
      002705 E5 10            [12] 1574 	mov	a,_bp
      002707 24 03            [12] 1575 	add	a,#0x03
      002709 F8               [12] 1576 	mov	r0,a
      00270A EA               [12] 1577 	mov	a,r2
      00270B 26               [12] 1578 	add	a,@r0
      00270C F5 82            [12] 1579 	mov	dpl,a
      00270E EE               [12] 1580 	mov	a,r6
      00270F 08               [12] 1581 	inc	r0
      002710 36               [12] 1582 	addc	a,@r0
      002711 F5 83            [12] 1583 	mov	dph,a
      002713 74 55            [12] 1584 	mov	a,#0x55
      002715 F0               [24] 1585 	movx	@dptr,a
                                   1586 ;	walk.c:166: for (j = 0; j < COLS; j++)
      002716 0A               [12] 1587 	inc	r2
      002717 BA 00 01         [24] 1588 	cjne	r2,#0x00,00183$
      00271A 0E               [12] 1589 	inc	r6
      00271B                       1590 00183$:
      00271B C3               [12] 1591 	clr	c
      00271C EA               [12] 1592 	mov	a,r2
      00271D 94 C9            [12] 1593 	subb	a,#0xc9
      00271F EE               [12] 1594 	mov	a,r6
      002720 64 80            [12] 1595 	xrl	a,#0x80
      002722 94 80            [12] 1596 	subb	a,#0x80
      002724 40 DF            [24] 1597 	jc	00112$
                                   1598 ;	walk.c:165: for (i = 0; i < ROWS; i++)
      002726 A8 10            [24] 1599 	mov	r0,_bp
      002728 08               [12] 1600 	inc	r0
      002729 74 C9            [12] 1601 	mov	a,#0xc9
      00272B 26               [12] 1602 	add	a,@r0
      00272C F6               [12] 1603 	mov	@r0,a
      00272D E4               [12] 1604 	clr	a
      00272E 08               [12] 1605 	inc	r0
      00272F 36               [12] 1606 	addc	a,@r0
      002730 F6               [12] 1607 	mov	@r0,a
      002731 0B               [12] 1608 	inc	r3
      002732 BB 00 01         [24] 1609 	cjne	r3,#0x00,00185$
      002735 0C               [12] 1610 	inc	r4
      002736                       1611 00185$:
      002736 C3               [12] 1612 	clr	c
      002737 EB               [12] 1613 	mov	a,r3
      002738 94 30            [12] 1614 	subb	a,#0x30
      00273A EC               [12] 1615 	mov	a,r4
      00273B 64 80            [12] 1616 	xrl	a,#0x80
      00273D 94 80            [12] 1617 	subb	a,#0x80
      00273F 40 AA            [24] 1618 	jc	00125$
                                   1619 ;	walk.c:169: initial.r = rand() % ROWS;
      002741 E5 10            [12] 1620 	mov	a,_bp
      002743 24 09            [12] 1621 	add	a,#0x09
      002745 F8               [12] 1622 	mov	r0,a
      002746 C0 07            [24] 1623 	push	ar7
      002748 C0 01            [24] 1624 	push	ar1
      00274A C0 00            [24] 1625 	push	ar0
      00274C 12 2B 3F         [24] 1626 	lcall	_rand
      00274F AD 82            [24] 1627 	mov	r5,dpl
      002751 AE 83            [24] 1628 	mov	r6,dph
      002753 74 30            [12] 1629 	mov	a,#0x30
      002755 C0 E0            [24] 1630 	push	acc
      002757 E4               [12] 1631 	clr	a
      002758 C0 E0            [24] 1632 	push	acc
      00275A 8D 82            [24] 1633 	mov	dpl,r5
      00275C 8E 83            [24] 1634 	mov	dph,r6
      00275E 12 2E 43         [24] 1635 	lcall	__modsint
      002761 AD 82            [24] 1636 	mov	r5,dpl
      002763 AE 83            [24] 1637 	mov	r6,dph
      002765 15 81            [12] 1638 	dec	sp
      002767 15 81            [12] 1639 	dec	sp
      002769 D0 00            [24] 1640 	pop	ar0
      00276B D0 01            [24] 1641 	pop	ar1
      00276D A6 05            [24] 1642 	mov	@r0,ar5
      00276F 08               [12] 1643 	inc	r0
      002770 A6 06            [24] 1644 	mov	@r0,ar6
      002772 18               [12] 1645 	dec	r0
                                   1646 ;	walk.c:170: initial.c = rand() % COLS;
      002773 74 02            [12] 1647 	mov	a,#0x02
      002775 29               [12] 1648 	add	a,r1
      002776 F8               [12] 1649 	mov	r0,a
      002777 C0 01            [24] 1650 	push	ar1
      002779 C0 00            [24] 1651 	push	ar0
      00277B 12 2B 3F         [24] 1652 	lcall	_rand
      00277E AD 82            [24] 1653 	mov	r5,dpl
      002780 AE 83            [24] 1654 	mov	r6,dph
      002782 74 C9            [12] 1655 	mov	a,#0xc9
      002784 C0 E0            [24] 1656 	push	acc
      002786 E4               [12] 1657 	clr	a
      002787 C0 E0            [24] 1658 	push	acc
      002789 8D 82            [24] 1659 	mov	dpl,r5
      00278B 8E 83            [24] 1660 	mov	dph,r6
      00278D 12 2E 43         [24] 1661 	lcall	__modsint
      002790 AD 82            [24] 1662 	mov	r5,dpl
      002792 AE 83            [24] 1663 	mov	r6,dph
      002794 15 81            [12] 1664 	dec	sp
      002796 15 81            [12] 1665 	dec	sp
      002798 D0 00            [24] 1666 	pop	ar0
      00279A A6 05            [24] 1667 	mov	@r0,ar5
      00279C 08               [12] 1668 	inc	r0
      00279D A6 06            [24] 1669 	mov	@r0,ar6
      00279F 18               [12] 1670 	dec	r0
                                   1671 ;	walk.c:172: puts("\033[2J\033[?25l");
      0027A0 90 41 55         [24] 1672 	mov	dptr,#___str_4
      0027A3 75 F0 80         [24] 1673 	mov	b,#0x80
      0027A6 C0 00            [24] 1674 	push	ar0
      0027A8 12 2D 68         [24] 1675 	lcall	_puts
      0027AB D0 00            [24] 1676 	pop	ar0
      0027AD D0 01            [24] 1677 	pop	ar1
                                   1678 ;	walk.c:173: printf("\033[1;1H% 8u% 8d% 8d", N, initial.r, initial.c);
      0027AF 86 05            [24] 1679 	mov	ar5,@r0
      0027B1 08               [12] 1680 	inc	r0
      0027B2 86 06            [24] 1681 	mov	ar6,@r0
      0027B4 18               [12] 1682 	dec	r0
      0027B5 87 03            [24] 1683 	mov	ar3,@r1
      0027B7 09               [12] 1684 	inc	r1
      0027B8 87 04            [24] 1685 	mov	ar4,@r1
      0027BA 19               [12] 1686 	dec	r1
      0027BB C0 01            [24] 1687 	push	ar1
      0027BD C0 05            [24] 1688 	push	ar5
      0027BF C0 06            [24] 1689 	push	ar6
      0027C1 C0 03            [24] 1690 	push	ar3
      0027C3 C0 04            [24] 1691 	push	ar4
      0027C5 E5 10            [12] 1692 	mov	a,_bp
      0027C7 24 05            [12] 1693 	add	a,#0x05
      0027C9 F8               [12] 1694 	mov	r0,a
      0027CA E6               [12] 1695 	mov	a,@r0
      0027CB C0 E0            [24] 1696 	push	acc
      0027CD 08               [12] 1697 	inc	r0
      0027CE E6               [12] 1698 	mov	a,@r0
      0027CF C0 E0            [24] 1699 	push	acc
      0027D1 74 60            [12] 1700 	mov	a,#___str_5
      0027D3 C0 E0            [24] 1701 	push	acc
      0027D5 74 41            [12] 1702 	mov	a,#(___str_5 >> 8)
      0027D7 C0 E0            [24] 1703 	push	acc
      0027D9 74 80            [12] 1704 	mov	a,#0x80
      0027DB C0 E0            [24] 1705 	push	acc
      0027DD 12 2D EE         [24] 1706 	lcall	_printf
      0027E0 E5 81            [12] 1707 	mov	a,sp
      0027E2 24 F7            [12] 1708 	add	a,#0xf7
      0027E4 F5 81            [12] 1709 	mov	sp,a
      0027E6 D0 01            [24] 1710 	pop	ar1
      0027E8 D0 07            [24] 1711 	pop	ar7
                                   1712 ;	walk.c:175: for (i = 0; i < REG; i++) {
      0027EA E5 10            [12] 1713 	mov	a,_bp
      0027EC 24 07            [12] 1714 	add	a,#0x07
      0027EE F8               [12] 1715 	mov	r0,a
      0027EF E4               [12] 1716 	clr	a
      0027F0 F6               [12] 1717 	mov	@r0,a
      0027F1 08               [12] 1718 	inc	r0
      0027F2 F6               [12] 1719 	mov	@r0,a
      0027F3                       1720 00116$:
                                   1721 ;	walk.c:176: neigh[i].r = neigh[REG + i].r * (1 + rand() % 8);
      0027F3 C0 07            [24] 1722 	push	ar7
      0027F5 E5 10            [12] 1723 	mov	a,_bp
      0027F7 24 07            [12] 1724 	add	a,#0x07
      0027F9 F8               [12] 1725 	mov	r0,a
      0027FA E6               [12] 1726 	mov	a,@r0
      0027FB 25 E0            [12] 1727 	add	a,acc
      0027FD FB               [12] 1728 	mov	r3,a
      0027FE 08               [12] 1729 	inc	r0
      0027FF E6               [12] 1730 	mov	a,@r0
      002800 33               [12] 1731 	rlc	a
      002801 FC               [12] 1732 	mov	r4,a
      002802 EB               [12] 1733 	mov	a,r3
      002803 2B               [12] 1734 	add	a,r3
      002804 FB               [12] 1735 	mov	r3,a
      002805 EC               [12] 1736 	mov	a,r4
      002806 33               [12] 1737 	rlc	a
      002807 FC               [12] 1738 	mov	r4,a
      002808 E5 10            [12] 1739 	mov	a,_bp
      00280A 24 03            [12] 1740 	add	a,#0x03
      00280C F8               [12] 1741 	mov	r0,a
      00280D EB               [12] 1742 	mov	a,r3
      00280E 24 72            [12] 1743 	add	a,#_neigh
      002810 F6               [12] 1744 	mov	@r0,a
      002811 EC               [12] 1745 	mov	a,r4
      002812 34 FE            [12] 1746 	addc	a,#(_neigh >> 8)
      002814 08               [12] 1747 	inc	r0
      002815 F6               [12] 1748 	mov	@r0,a
      002816 E5 10            [12] 1749 	mov	a,_bp
      002818 24 07            [12] 1750 	add	a,#0x07
      00281A F8               [12] 1751 	mov	r0,a
      00281B 86 06            [24] 1752 	mov	ar6,@r0
      00281D 74 08            [12] 1753 	mov	a,#0x08
      00281F 2E               [12] 1754 	add	a,r6
      002820 FE               [12] 1755 	mov	r6,a
      002821 C2 D5            [12] 1756 	clr	F0
      002823 75 F0 04         [24] 1757 	mov	b,#0x04
      002826 EE               [12] 1758 	mov	a,r6
      002827 30 E7 04         [24] 1759 	jnb	acc.7,00187$
      00282A B2 D5            [12] 1760 	cpl	F0
      00282C F4               [12] 1761 	cpl	a
      00282D 04               [12] 1762 	inc	a
      00282E                       1763 00187$:
      00282E A4               [48] 1764 	mul	ab
      00282F 30 D5 0A         [24] 1765 	jnb	F0,00188$
      002832 F4               [12] 1766 	cpl	a
      002833 24 01            [12] 1767 	add	a,#0x01
      002835 C5 F0            [12] 1768 	xch	a,b
      002837 F4               [12] 1769 	cpl	a
      002838 34 00            [12] 1770 	addc	a,#0x00
      00283A C5 F0            [12] 1771 	xch	a,b
      00283C                       1772 00188$:
      00283C FE               [12] 1773 	mov	r6,a
      00283D AD F0            [24] 1774 	mov	r5,b
      00283F 24 72            [12] 1775 	add	a,#_neigh
      002841 F5 82            [12] 1776 	mov	dpl,a
      002843 ED               [12] 1777 	mov	a,r5
      002844 34 FE            [12] 1778 	addc	a,#(_neigh >> 8)
      002846 F5 83            [12] 1779 	mov	dph,a
      002848 A8 10            [24] 1780 	mov	r0,_bp
      00284A 08               [12] 1781 	inc	r0
      00284B E0               [24] 1782 	movx	a,@dptr
      00284C F6               [12] 1783 	mov	@r0,a
      00284D A3               [24] 1784 	inc	dptr
      00284E E0               [24] 1785 	movx	a,@dptr
      00284F 08               [12] 1786 	inc	r0
      002850 F6               [12] 1787 	mov	@r0,a
      002851 C0 06            [24] 1788 	push	ar6
      002853 C0 05            [24] 1789 	push	ar5
      002855 C0 04            [24] 1790 	push	ar4
      002857 C0 03            [24] 1791 	push	ar3
      002859 C0 01            [24] 1792 	push	ar1
      00285B 12 2B 3F         [24] 1793 	lcall	_rand
      00285E AA 82            [24] 1794 	mov	r2,dpl
      002860 AF 83            [24] 1795 	mov	r7,dph
      002862 74 08            [12] 1796 	mov	a,#0x08
      002864 C0 E0            [24] 1797 	push	acc
      002866 E4               [12] 1798 	clr	a
      002867 C0 E0            [24] 1799 	push	acc
      002869 8A 82            [24] 1800 	mov	dpl,r2
      00286B 8F 83            [24] 1801 	mov	dph,r7
      00286D 12 2E 43         [24] 1802 	lcall	__modsint
      002870 AA 82            [24] 1803 	mov	r2,dpl
      002872 AF 83            [24] 1804 	mov	r7,dph
      002874 15 81            [12] 1805 	dec	sp
      002876 15 81            [12] 1806 	dec	sp
      002878 D0 01            [24] 1807 	pop	ar1
      00287A D0 03            [24] 1808 	pop	ar3
      00287C D0 04            [24] 1809 	pop	ar4
      00287E D0 05            [24] 1810 	pop	ar5
      002880 D0 06            [24] 1811 	pop	ar6
      002882 0A               [12] 1812 	inc	r2
      002883 BA 00 01         [24] 1813 	cjne	r2,#0x00,00189$
      002886 0F               [12] 1814 	inc	r7
      002887                       1815 00189$:
      002887 C0 06            [24] 1816 	push	ar6
      002889 C0 05            [24] 1817 	push	ar5
      00288B C0 04            [24] 1818 	push	ar4
      00288D C0 03            [24] 1819 	push	ar3
      00288F C0 01            [24] 1820 	push	ar1
      002891 C0 02            [24] 1821 	push	ar2
      002893 C0 07            [24] 1822 	push	ar7
      002895 A8 10            [24] 1823 	mov	r0,_bp
      002897 08               [12] 1824 	inc	r0
      002898 86 82            [24] 1825 	mov	dpl,@r0
      00289A 08               [12] 1826 	inc	r0
      00289B 86 83            [24] 1827 	mov	dph,@r0
      00289D 12 2C 37         [24] 1828 	lcall	__mulint
      0028A0 AA 82            [24] 1829 	mov	r2,dpl
      0028A2 AF 83            [24] 1830 	mov	r7,dph
      0028A4 15 81            [12] 1831 	dec	sp
      0028A6 15 81            [12] 1832 	dec	sp
      0028A8 D0 01            [24] 1833 	pop	ar1
      0028AA D0 03            [24] 1834 	pop	ar3
      0028AC D0 04            [24] 1835 	pop	ar4
      0028AE D0 05            [24] 1836 	pop	ar5
      0028B0 D0 06            [24] 1837 	pop	ar6
      0028B2 E5 10            [12] 1838 	mov	a,_bp
      0028B4 24 03            [12] 1839 	add	a,#0x03
      0028B6 F8               [12] 1840 	mov	r0,a
      0028B7 86 82            [24] 1841 	mov	dpl,@r0
      0028B9 08               [12] 1842 	inc	r0
      0028BA 86 83            [24] 1843 	mov	dph,@r0
      0028BC EA               [12] 1844 	mov	a,r2
      0028BD F0               [24] 1845 	movx	@dptr,a
      0028BE EF               [12] 1846 	mov	a,r7
      0028BF A3               [24] 1847 	inc	dptr
      0028C0 F0               [24] 1848 	movx	@dptr,a
                                   1849 ;	walk.c:177: neigh[i].c = neigh[REG + i].c * (1 + rand() % 8);
      0028C1 EB               [12] 1850 	mov	a,r3
      0028C2 24 72            [12] 1851 	add	a,#_neigh
      0028C4 FB               [12] 1852 	mov	r3,a
      0028C5 EC               [12] 1853 	mov	a,r4
      0028C6 34 FE            [12] 1854 	addc	a,#(_neigh >> 8)
      0028C8 FC               [12] 1855 	mov	r4,a
      0028C9 74 02            [12] 1856 	mov	a,#0x02
      0028CB 2B               [12] 1857 	add	a,r3
      0028CC FA               [12] 1858 	mov	r2,a
      0028CD E4               [12] 1859 	clr	a
      0028CE 3C               [12] 1860 	addc	a,r4
      0028CF FF               [12] 1861 	mov	r7,a
      0028D0 EE               [12] 1862 	mov	a,r6
      0028D1 24 72            [12] 1863 	add	a,#_neigh
      0028D3 FE               [12] 1864 	mov	r6,a
      0028D4 ED               [12] 1865 	mov	a,r5
      0028D5 34 FE            [12] 1866 	addc	a,#(_neigh >> 8)
      0028D7 FD               [12] 1867 	mov	r5,a
      0028D8 8E 82            [24] 1868 	mov	dpl,r6
      0028DA 8D 83            [24] 1869 	mov	dph,r5
      0028DC A3               [24] 1870 	inc	dptr
      0028DD A3               [24] 1871 	inc	dptr
      0028DE E5 10            [12] 1872 	mov	a,_bp
      0028E0 24 03            [12] 1873 	add	a,#0x03
      0028E2 F8               [12] 1874 	mov	r0,a
      0028E3 E0               [24] 1875 	movx	a,@dptr
      0028E4 F6               [12] 1876 	mov	@r0,a
      0028E5 A3               [24] 1877 	inc	dptr
      0028E6 E0               [24] 1878 	movx	a,@dptr
      0028E7 08               [12] 1879 	inc	r0
      0028E8 F6               [12] 1880 	mov	@r0,a
      0028E9 C0 07            [24] 1881 	push	ar7
      0028EB C0 04            [24] 1882 	push	ar4
      0028ED C0 03            [24] 1883 	push	ar3
      0028EF C0 02            [24] 1884 	push	ar2
      0028F1 C0 01            [24] 1885 	push	ar1
      0028F3 12 2B 3F         [24] 1886 	lcall	_rand
      0028F6 AD 82            [24] 1887 	mov	r5,dpl
      0028F8 AE 83            [24] 1888 	mov	r6,dph
      0028FA 74 08            [12] 1889 	mov	a,#0x08
      0028FC C0 E0            [24] 1890 	push	acc
      0028FE E4               [12] 1891 	clr	a
      0028FF C0 E0            [24] 1892 	push	acc
      002901 8D 82            [24] 1893 	mov	dpl,r5
      002903 8E 83            [24] 1894 	mov	dph,r6
      002905 12 2E 43         [24] 1895 	lcall	__modsint
      002908 AD 82            [24] 1896 	mov	r5,dpl
      00290A AE 83            [24] 1897 	mov	r6,dph
      00290C 15 81            [12] 1898 	dec	sp
      00290E 15 81            [12] 1899 	dec	sp
      002910 D0 01            [24] 1900 	pop	ar1
      002912 D0 02            [24] 1901 	pop	ar2
      002914 D0 03            [24] 1902 	pop	ar3
      002916 D0 04            [24] 1903 	pop	ar4
      002918 D0 07            [24] 1904 	pop	ar7
      00291A 0D               [12] 1905 	inc	r5
      00291B BD 00 01         [24] 1906 	cjne	r5,#0x00,00190$
      00291E 0E               [12] 1907 	inc	r6
      00291F                       1908 00190$:
      00291F C0 07            [24] 1909 	push	ar7
      002921 C0 04            [24] 1910 	push	ar4
      002923 C0 03            [24] 1911 	push	ar3
      002925 C0 02            [24] 1912 	push	ar2
      002927 C0 01            [24] 1913 	push	ar1
      002929 C0 05            [24] 1914 	push	ar5
      00292B C0 06            [24] 1915 	push	ar6
      00292D E5 10            [12] 1916 	mov	a,_bp
      00292F 24 03            [12] 1917 	add	a,#0x03
      002931 F8               [12] 1918 	mov	r0,a
      002932 86 82            [24] 1919 	mov	dpl,@r0
      002934 08               [12] 1920 	inc	r0
      002935 86 83            [24] 1921 	mov	dph,@r0
      002937 12 2C 37         [24] 1922 	lcall	__mulint
      00293A AD 82            [24] 1923 	mov	r5,dpl
      00293C AE 83            [24] 1924 	mov	r6,dph
      00293E 15 81            [12] 1925 	dec	sp
      002940 15 81            [12] 1926 	dec	sp
      002942 D0 01            [24] 1927 	pop	ar1
      002944 D0 02            [24] 1928 	pop	ar2
      002946 D0 03            [24] 1929 	pop	ar3
      002948 D0 04            [24] 1930 	pop	ar4
      00294A D0 07            [24] 1931 	pop	ar7
      00294C 8A 82            [24] 1932 	mov	dpl,r2
      00294E 8F 83            [24] 1933 	mov	dph,r7
      002950 ED               [12] 1934 	mov	a,r5
      002951 F0               [24] 1935 	movx	@dptr,a
      002952 EE               [12] 1936 	mov	a,r6
      002953 A3               [24] 1937 	inc	dptr
      002954 F0               [24] 1938 	movx	@dptr,a
                                   1939 ;	walk.c:178: printf("% 8d% 8d", neigh[i].r, neigh[i].c);
      002955 8B 82            [24] 1940 	mov	dpl,r3
      002957 8C 83            [24] 1941 	mov	dph,r4
      002959 E0               [24] 1942 	movx	a,@dptr
      00295A FB               [12] 1943 	mov	r3,a
      00295B A3               [24] 1944 	inc	dptr
      00295C E0               [24] 1945 	movx	a,@dptr
      00295D FC               [12] 1946 	mov	r4,a
      00295E C0 07            [24] 1947 	push	ar7
      002960 C0 01            [24] 1948 	push	ar1
      002962 C0 05            [24] 1949 	push	ar5
      002964 C0 06            [24] 1950 	push	ar6
      002966 C0 03            [24] 1951 	push	ar3
      002968 C0 04            [24] 1952 	push	ar4
      00296A 74 73            [12] 1953 	mov	a,#___str_6
      00296C C0 E0            [24] 1954 	push	acc
      00296E 74 41            [12] 1955 	mov	a,#(___str_6 >> 8)
      002970 C0 E0            [24] 1956 	push	acc
      002972 74 80            [12] 1957 	mov	a,#0x80
      002974 C0 E0            [24] 1958 	push	acc
      002976 12 2D EE         [24] 1959 	lcall	_printf
      002979 E5 81            [12] 1960 	mov	a,sp
      00297B 24 F9            [12] 1961 	add	a,#0xf9
      00297D F5 81            [12] 1962 	mov	sp,a
      00297F D0 01            [24] 1963 	pop	ar1
      002981 D0 07            [24] 1964 	pop	ar7
                                   1965 ;	walk.c:175: for (i = 0; i < REG; i++) {
      002983 E5 10            [12] 1966 	mov	a,_bp
      002985 24 07            [12] 1967 	add	a,#0x07
      002987 F8               [12] 1968 	mov	r0,a
      002988 06               [12] 1969 	inc	@r0
      002989 B6 00 02         [24] 1970 	cjne	@r0,#0x00,00191$
      00298C 08               [12] 1971 	inc	r0
      00298D 06               [12] 1972 	inc	@r0
      00298E                       1973 00191$:
      00298E E5 10            [12] 1974 	mov	a,_bp
      002990 24 07            [12] 1975 	add	a,#0x07
      002992 F8               [12] 1976 	mov	r0,a
      002993 86 05            [24] 1977 	mov	ar5,@r0
      002995 08               [12] 1978 	inc	r0
      002996 86 06            [24] 1979 	mov	ar6,@r0
      002998 C3               [12] 1980 	clr	c
      002999 ED               [12] 1981 	mov	a,r5
      00299A 94 08            [12] 1982 	subb	a,#0x08
      00299C EE               [12] 1983 	mov	a,r6
      00299D 94 00            [12] 1984 	subb	a,#0x00
      00299F D0 07            [24] 1985 	pop	ar7
      0029A1 50 03            [24] 1986 	jnc	00192$
      0029A3 02 27 F3         [24] 1987 	ljmp	00116$
      0029A6                       1988 00192$:
                                   1989 ;	walk.c:181: OE76 = OE76_0;
      0029A6 78 12            [12] 1990 	mov	r0,#_OE76
      0029A8 76 3F            [12] 1991 	mov	@r0,#0x3f
                                   1992 ;	walk.c:182: flashOE(OE76_NC);
      0029AA 75 82 00         [24] 1993 	mov	dpl,#0x00
      0029AD C0 07            [24] 1994 	push	ar7
      0029AF C0 01            [24] 1995 	push	ar1
      0029B1 12 20 8C         [24] 1996 	lcall	_flashOE
      0029B4 D0 01            [24] 1997 	pop	ar1
      0029B6 D0 07            [24] 1998 	pop	ar7
                                   1999 ;	walk.c:184: walk(&initial);
      0029B8 8F 04            [24] 2000 	mov	ar4,r7
      0029BA 7D 00            [12] 2001 	mov	r5,#0x00
      0029BC 7E 40            [12] 2002 	mov	r6,#0x40
      0029BE 8C 82            [24] 2003 	mov	dpl,r4
      0029C0 8D 83            [24] 2004 	mov	dph,r5
      0029C2 8E F0            [24] 2005 	mov	b,r6
      0029C4 C0 07            [24] 2006 	push	ar7
      0029C6 C0 01            [24] 2007 	push	ar1
      0029C8 12 23 2C         [24] 2008 	lcall	_walk
      0029CB D0 01            [24] 2009 	pop	ar1
      0029CD D0 07            [24] 2010 	pop	ar7
                                   2011 ;	walk.c:186: for (i = 0; i < ROWS; i++)
      0029CF E5 10            [12] 2012 	mov	a,_bp
      0029D1 24 07            [12] 2013 	add	a,#0x07
      0029D3 F8               [12] 2014 	mov	r0,a
      0029D4 E4               [12] 2015 	clr	a
      0029D5 F6               [12] 2016 	mov	@r0,a
      0029D6 08               [12] 2017 	inc	r0
      0029D7 F6               [12] 2018 	mov	@r0,a
      0029D8 7B 00            [12] 2019 	mov	r3,#0x00
      0029DA 7C 00            [12] 2020 	mov	r4,#0x00
                                   2021 ;	walk.c:187: for (j = 0; j < COLS; j++)
      0029DC                       2022 00132$:
      0029DC E5 10            [12] 2023 	mov	a,_bp
      0029DE 24 03            [12] 2024 	add	a,#0x03
      0029E0 F8               [12] 2025 	mov	r0,a
      0029E1 EB               [12] 2026 	mov	a,r3
      0029E2 24 00            [12] 2027 	add	a,#_g
      0029E4 F6               [12] 2028 	mov	@r0,a
      0029E5 EC               [12] 2029 	mov	a,r4
      0029E6 34 42            [12] 2030 	addc	a,#(_g >> 8)
      0029E8 08               [12] 2031 	inc	r0
      0029E9 F6               [12] 2032 	mov	@r0,a
      0029EA 7A 00            [12] 2033 	mov	r2,#0x00
      0029EC 7E 00            [12] 2034 	mov	r6,#0x00
      0029EE                       2035 00118$:
                                   2036 ;	walk.c:188: if (g[i][j] != 0xaau) bang();
      0029EE E5 10            [12] 2037 	mov	a,_bp
      0029F0 24 03            [12] 2038 	add	a,#0x03
      0029F2 F8               [12] 2039 	mov	r0,a
      0029F3 EA               [12] 2040 	mov	a,r2
      0029F4 26               [12] 2041 	add	a,@r0
      0029F5 F5 82            [12] 2042 	mov	dpl,a
      0029F7 EE               [12] 2043 	mov	a,r6
      0029F8 08               [12] 2044 	inc	r0
      0029F9 36               [12] 2045 	addc	a,@r0
      0029FA F5 83            [12] 2046 	mov	dph,a
      0029FC E0               [24] 2047 	movx	a,@dptr
      0029FD FD               [12] 2048 	mov	r5,a
      0029FE BD AA 02         [24] 2049 	cjne	r5,#0xaa,00193$
      002A01 80 1B            [24] 2050 	sjmp	00119$
      002A03                       2051 00193$:
      002A03 C0 07            [24] 2052 	push	ar7
      002A05 C0 06            [24] 2053 	push	ar6
      002A07 C0 04            [24] 2054 	push	ar4
      002A09 C0 03            [24] 2055 	push	ar3
      002A0B C0 02            [24] 2056 	push	ar2
      002A0D C0 01            [24] 2057 	push	ar1
      002A0F 12 20 7F         [24] 2058 	lcall	_bang
      002A12 D0 01            [24] 2059 	pop	ar1
      002A14 D0 02            [24] 2060 	pop	ar2
      002A16 D0 03            [24] 2061 	pop	ar3
      002A18 D0 04            [24] 2062 	pop	ar4
      002A1A D0 06            [24] 2063 	pop	ar6
      002A1C D0 07            [24] 2064 	pop	ar7
      002A1E                       2065 00119$:
                                   2066 ;	walk.c:187: for (j = 0; j < COLS; j++)
      002A1E 0A               [12] 2067 	inc	r2
      002A1F BA 00 01         [24] 2068 	cjne	r2,#0x00,00194$
      002A22 0E               [12] 2069 	inc	r6
      002A23                       2070 00194$:
      002A23 C3               [12] 2071 	clr	c
      002A24 EA               [12] 2072 	mov	a,r2
      002A25 94 C9            [12] 2073 	subb	a,#0xc9
      002A27 EE               [12] 2074 	mov	a,r6
      002A28 64 80            [12] 2075 	xrl	a,#0x80
      002A2A 94 80            [12] 2076 	subb	a,#0x80
      002A2C 40 C0            [24] 2077 	jc	00118$
                                   2078 ;	walk.c:186: for (i = 0; i < ROWS; i++)
      002A2E 74 C9            [12] 2079 	mov	a,#0xc9
      002A30 2B               [12] 2080 	add	a,r3
      002A31 FB               [12] 2081 	mov	r3,a
      002A32 E4               [12] 2082 	clr	a
      002A33 3C               [12] 2083 	addc	a,r4
      002A34 FC               [12] 2084 	mov	r4,a
      002A35 E5 10            [12] 2085 	mov	a,_bp
      002A37 24 07            [12] 2086 	add	a,#0x07
      002A39 F8               [12] 2087 	mov	r0,a
      002A3A 06               [12] 2088 	inc	@r0
      002A3B B6 00 02         [24] 2089 	cjne	@r0,#0x00,00196$
      002A3E 08               [12] 2090 	inc	r0
      002A3F 06               [12] 2091 	inc	@r0
      002A40                       2092 00196$:
      002A40 E5 10            [12] 2093 	mov	a,_bp
      002A42 24 07            [12] 2094 	add	a,#0x07
      002A44 F8               [12] 2095 	mov	r0,a
      002A45 C3               [12] 2096 	clr	c
      002A46 E6               [12] 2097 	mov	a,@r0
      002A47 94 30            [12] 2098 	subb	a,#0x30
      002A49 08               [12] 2099 	inc	r0
      002A4A E6               [12] 2100 	mov	a,@r0
      002A4B 64 80            [12] 2101 	xrl	a,#0x80
      002A4D 94 80            [12] 2102 	subb	a,#0x80
      002A4F 40 8B            [24] 2103 	jc	00132$
                                   2104 ;	walk.c:190: N++;
      002A51 E5 10            [12] 2105 	mov	a,_bp
      002A53 24 05            [12] 2106 	add	a,#0x05
      002A55 F8               [12] 2107 	mov	r0,a
      002A56 06               [12] 2108 	inc	@r0
      002A57 B6 00 02         [24] 2109 	cjne	@r0,#0x00,00198$
      002A5A 08               [12] 2110 	inc	r0
      002A5B 06               [12] 2111 	inc	@r0
      002A5C                       2112 00198$:
      002A5C 02 26 D8         [24] 2113 	ljmp	00108$
      002A5F                       2114 00110$:
                                   2115 ;	walk.c:193: EA = 0;
                                   2116 ;	assignBit
      002A5F C2 AF            [12] 2117 	clr	_EA
                                   2118 ;	walk.c:195: puts("\033[2J\033[?25h");
      002A61 90 41 7C         [24] 2119 	mov	dptr,#___str_7
      002A64 75 F0 80         [24] 2120 	mov	b,#0x80
      002A67 12 2D 68         [24] 2121 	lcall	_puts
                                   2122 ;	walk.c:35: PCON |= 2;
      002A6A 43 87 02         [24] 2123 	orl	_PCON,#0x02
                                   2124 ;	walk.c:197: reset();
                                   2125 ;	walk.c:198: }
      002A6D 85 10 81         [24] 2126 	mov	sp,_bp
      002A70 D0 10            [24] 2127 	pop	_bp
      002A72 22               [24] 2128 	ret
                                   2129 ;------------------------------------------------------------
                                   2130 ;Allocation info for local variables in function 'stinit'
                                   2131 ;------------------------------------------------------------
                                   2132 ;	walk.c:200: static void stinit(void) {
                                   2133 ;	-----------------------------------------
                                   2134 ;	 function stinit
                                   2135 ;	-----------------------------------------
      002A73                       2136 _stinit:
                                   2137 ;	walk.c:201: sp = -1;
      002A73 90 FE 70         [24] 2138 	mov	dptr,#_sp
      002A76 74 FF            [12] 2139 	mov	a,#0xff
      002A78 F0               [24] 2140 	movx	@dptr,a
      002A79 A3               [24] 2141 	inc	dptr
      002A7A F0               [24] 2142 	movx	@dptr,a
                                   2143 ;	walk.c:202: return;
                                   2144 ;	walk.c:203: }
      002A7B 22               [24] 2145 	ret
                                   2146 ;------------------------------------------------------------
                                   2147 ;Allocation info for local variables in function 'stpush'
                                   2148 ;------------------------------------------------------------
                                   2149 ;t                         Allocated to registers r5 r6 r7 
                                   2150 ;------------------------------------------------------------
                                   2151 ;	walk.c:205: static uint8_t stpush(struct node *t) {
                                   2152 ;	-----------------------------------------
                                   2153 ;	 function stpush
                                   2154 ;	-----------------------------------------
      002A7C                       2155 _stpush:
      002A7C AD 82            [24] 2156 	mov	r5,dpl
      002A7E AE 83            [24] 2157 	mov	r6,dph
      002A80 AF F0            [24] 2158 	mov	r7,b
                                   2159 ;	walk.c:206: if (sp == (SMAX - 1)) return 0u;
      002A82 90 FE 70         [24] 2160 	mov	dptr,#_sp
      002A85 E0               [24] 2161 	movx	a,@dptr
      002A86 FB               [12] 2162 	mov	r3,a
      002A87 A3               [24] 2163 	inc	dptr
      002A88 E0               [24] 2164 	movx	a,@dptr
      002A89 FC               [12] 2165 	mov	r4,a
      002A8A BB AF 07         [24] 2166 	cjne	r3,#0xaf,00102$
      002A8D BC 25 04         [24] 2167 	cjne	r4,#0x25,00102$
      002A90 75 82 00         [24] 2168 	mov	dpl,#0x00
      002A93 22               [24] 2169 	ret
      002A94                       2170 00102$:
                                   2171 ;	walk.c:207: sp++;
      002A94 90 FE 70         [24] 2172 	mov	dptr,#_sp
      002A97 74 01            [12] 2173 	mov	a,#0x01
      002A99 2B               [12] 2174 	add	a,r3
      002A9A F0               [24] 2175 	movx	@dptr,a
      002A9B E4               [12] 2176 	clr	a
      002A9C 3C               [12] 2177 	addc	a,r4
      002A9D A3               [24] 2178 	inc	dptr
      002A9E F0               [24] 2179 	movx	@dptr,a
                                   2180 ;	walk.c:208: stack[sp] = *t;
      002A9F 90 FE 70         [24] 2181 	mov	dptr,#_sp
      002AA2 E0               [24] 2182 	movx	a,@dptr
      002AA3 FB               [12] 2183 	mov	r3,a
      002AA4 A3               [24] 2184 	inc	dptr
      002AA5 E0               [24] 2185 	movx	a,@dptr
      002AA6 FC               [12] 2186 	mov	r4,a
      002AA7 EB               [12] 2187 	mov	a,r3
      002AA8 2B               [12] 2188 	add	a,r3
      002AA9 FB               [12] 2189 	mov	r3,a
      002AAA EC               [12] 2190 	mov	a,r4
      002AAB 33               [12] 2191 	rlc	a
      002AAC FC               [12] 2192 	mov	r4,a
      002AAD EB               [12] 2193 	mov	a,r3
      002AAE 2B               [12] 2194 	add	a,r3
      002AAF FB               [12] 2195 	mov	r3,a
      002AB0 EC               [12] 2196 	mov	a,r4
      002AB1 33               [12] 2197 	rlc	a
      002AB2 FC               [12] 2198 	mov	r4,a
      002AB3 EB               [12] 2199 	mov	a,r3
      002AB4 24 B0            [12] 2200 	add	a,#_stack
      002AB6 FB               [12] 2201 	mov	r3,a
      002AB7 EC               [12] 2202 	mov	a,r4
      002AB8 34 67            [12] 2203 	addc	a,#(_stack >> 8)
      002ABA FC               [12] 2204 	mov	r4,a
      002ABB 7A 00            [12] 2205 	mov	r2,#0x00
      002ABD 74 04            [12] 2206 	mov	a,#0x04
      002ABF C0 E0            [24] 2207 	push	acc
      002AC1 E4               [12] 2208 	clr	a
      002AC2 C0 E0            [24] 2209 	push	acc
      002AC4 C0 05            [24] 2210 	push	ar5
      002AC6 C0 06            [24] 2211 	push	ar6
      002AC8 C0 07            [24] 2212 	push	ar7
      002ACA 8B 82            [24] 2213 	mov	dpl,r3
      002ACC 8C 83            [24] 2214 	mov	dph,r4
      002ACE 8A F0            [24] 2215 	mov	b,r2
      002AD0 12 2C D5         [24] 2216 	lcall	___memcpy
      002AD3 E5 81            [12] 2217 	mov	a,sp
      002AD5 24 FB            [12] 2218 	add	a,#0xfb
      002AD7 F5 81            [12] 2219 	mov	sp,a
                                   2220 ;	walk.c:209: return 1u;
      002AD9 75 82 01         [24] 2221 	mov	dpl,#0x01
                                   2222 ;	walk.c:210: }
      002ADC 22               [24] 2223 	ret
                                   2224 ;------------------------------------------------------------
                                   2225 ;Allocation info for local variables in function 'stpop'
                                   2226 ;------------------------------------------------------------
                                   2227 ;t                         Allocated to registers r5 r6 r7 
                                   2228 ;------------------------------------------------------------
                                   2229 ;	walk.c:212: static uint8_t stpop(struct node *t) {
                                   2230 ;	-----------------------------------------
                                   2231 ;	 function stpop
                                   2232 ;	-----------------------------------------
      002ADD                       2233 _stpop:
      002ADD AD 82            [24] 2234 	mov	r5,dpl
      002ADF AE 83            [24] 2235 	mov	r6,dph
      002AE1 AF F0            [24] 2236 	mov	r7,b
                                   2237 ;	walk.c:213: if (sp == -1) return 0u;
      002AE3 90 FE 70         [24] 2238 	mov	dptr,#_sp
      002AE6 E0               [24] 2239 	movx	a,@dptr
      002AE7 FB               [12] 2240 	mov	r3,a
      002AE8 A3               [24] 2241 	inc	dptr
      002AE9 E0               [24] 2242 	movx	a,@dptr
      002AEA FC               [12] 2243 	mov	r4,a
      002AEB BB FF 07         [24] 2244 	cjne	r3,#0xff,00102$
      002AEE BC FF 04         [24] 2245 	cjne	r4,#0xff,00102$
      002AF1 75 82 00         [24] 2246 	mov	dpl,#0x00
      002AF4 22               [24] 2247 	ret
      002AF5                       2248 00102$:
                                   2249 ;	walk.c:214: *t = stack[sp];
      002AF5 EB               [12] 2250 	mov	a,r3
      002AF6 2B               [12] 2251 	add	a,r3
      002AF7 FB               [12] 2252 	mov	r3,a
      002AF8 EC               [12] 2253 	mov	a,r4
      002AF9 33               [12] 2254 	rlc	a
      002AFA FC               [12] 2255 	mov	r4,a
      002AFB EB               [12] 2256 	mov	a,r3
      002AFC 2B               [12] 2257 	add	a,r3
      002AFD FB               [12] 2258 	mov	r3,a
      002AFE EC               [12] 2259 	mov	a,r4
      002AFF 33               [12] 2260 	rlc	a
      002B00 FC               [12] 2261 	mov	r4,a
      002B01 EB               [12] 2262 	mov	a,r3
      002B02 24 B0            [12] 2263 	add	a,#_stack
      002B04 FB               [12] 2264 	mov	r3,a
      002B05 EC               [12] 2265 	mov	a,r4
      002B06 34 67            [12] 2266 	addc	a,#(_stack >> 8)
      002B08 FC               [12] 2267 	mov	r4,a
      002B09 7A 00            [12] 2268 	mov	r2,#0x00
      002B0B 74 04            [12] 2269 	mov	a,#0x04
      002B0D C0 E0            [24] 2270 	push	acc
      002B0F E4               [12] 2271 	clr	a
      002B10 C0 E0            [24] 2272 	push	acc
      002B12 C0 03            [24] 2273 	push	ar3
      002B14 C0 04            [24] 2274 	push	ar4
      002B16 C0 02            [24] 2275 	push	ar2
      002B18 8D 82            [24] 2276 	mov	dpl,r5
      002B1A 8E 83            [24] 2277 	mov	dph,r6
      002B1C 8F F0            [24] 2278 	mov	b,r7
      002B1E 12 2C D5         [24] 2279 	lcall	___memcpy
      002B21 E5 81            [12] 2280 	mov	a,sp
      002B23 24 FB            [12] 2281 	add	a,#0xfb
      002B25 F5 81            [12] 2282 	mov	sp,a
                                   2283 ;	walk.c:215: sp--;
      002B27 90 FE 70         [24] 2284 	mov	dptr,#_sp
      002B2A E0               [24] 2285 	movx	a,@dptr
      002B2B 24 FF            [12] 2286 	add	a,#0xff
      002B2D FE               [12] 2287 	mov	r6,a
      002B2E A3               [24] 2288 	inc	dptr
      002B2F E0               [24] 2289 	movx	a,@dptr
      002B30 34 FF            [12] 2290 	addc	a,#0xff
      002B32 FF               [12] 2291 	mov	r7,a
      002B33 90 FE 70         [24] 2292 	mov	dptr,#_sp
      002B36 EE               [12] 2293 	mov	a,r6
      002B37 F0               [24] 2294 	movx	@dptr,a
      002B38 EF               [12] 2295 	mov	a,r7
      002B39 A3               [24] 2296 	inc	dptr
      002B3A F0               [24] 2297 	movx	@dptr,a
                                   2298 ;	walk.c:216: return 1u;
      002B3B 75 82 01         [24] 2299 	mov	dpl,#0x01
                                   2300 ;	walk.c:217: }
      002B3E 22               [24] 2301 	ret
                                   2302 	.area CSEG    (CODE)
                                   2303 	.area CONST   (CODE)
                                   2304 	.area CONST   (CODE)
      004121                       2305 ___str_0:
      004121 4D 65 6D 6F 72 79 20  2306 	.ascii "Memory error"
             65 72 72 6F 72
      00412D 00                    2307 	.db 0x00
                                   2308 	.area CSEG    (CODE)
                                   2309 	.area CONST   (CODE)
      00412E                       2310 ___str_1:
      00412E 1B                    2311 	.db 0x1b
      00412F 5B 25 64 3B 25 64 48  2312 	.ascii "[%d;%dHo"
             6F
      004137 00                    2313 	.db 0x00
                                   2314 	.area CSEG    (CODE)
                                   2315 	.area CONST   (CODE)
      004138                       2316 ___str_2:
      004138 1B                    2317 	.db 0x1b
      004139 5B 32 3B 31 48 25 20  2318 	.ascii "[2;1H% 8d% 8d% 8d"
             38 64 25 20 38 64 25
             20 38 64
      00414A 00                    2319 	.db 0x00
                                   2320 	.area CSEG    (CODE)
                                   2321 	.area CONST   (CODE)
      00414B                       2322 ___str_3:
      00414B 1B                    2323 	.db 0x1b
      00414C 5B 25 64 3B 25 64 48  2324 	.ascii "[%d;%dH."
             2E
      004154 00                    2325 	.db 0x00
                                   2326 	.area CSEG    (CODE)
                                   2327 	.area CONST   (CODE)
      004155                       2328 ___str_4:
      004155 1B                    2329 	.db 0x1b
      004156 5B 32 4A              2330 	.ascii "[2J"
      004159 1B                    2331 	.db 0x1b
      00415A 5B 3F 32 35 6C        2332 	.ascii "[?25l"
      00415F 00                    2333 	.db 0x00
                                   2334 	.area CSEG    (CODE)
                                   2335 	.area CONST   (CODE)
      004160                       2336 ___str_5:
      004160 1B                    2337 	.db 0x1b
      004161 5B 31 3B 31 48 25 20  2338 	.ascii "[1;1H% 8u% 8d% 8d"
             38 75 25 20 38 64 25
             20 38 64
      004172 00                    2339 	.db 0x00
                                   2340 	.area CSEG    (CODE)
                                   2341 	.area CONST   (CODE)
      004173                       2342 ___str_6:
      004173 25 20 38 64 25 20 38  2343 	.ascii "% 8d% 8d"
             64
      00417B 00                    2344 	.db 0x00
                                   2345 	.area CSEG    (CODE)
                                   2346 	.area CONST   (CODE)
      00417C                       2347 ___str_7:
      00417C 1B                    2348 	.db 0x1b
      00417D 5B 32 4A              2349 	.ascii "[2J"
      004180 1B                    2350 	.db 0x1b
      004181 5B 3F 32 35 68        2351 	.ascii "[?25h"
      004186 00                    2352 	.db 0x00
                                   2353 	.area CSEG    (CODE)
                                   2354 	.area XINIT   (CODE)
      004192                       2355 __xinit__neigh:
      004192 FF FF                 2356 	.byte #0xff, #0xff	; -1
      004194 01 00                 2357 	.byte #0x01, #0x00	;  1
      004196 FF FF                 2358 	.byte #0xff, #0xff	; -1
      004198 FF FF                 2359 	.byte #0xff, #0xff	; -1
      00419A 01 00                 2360 	.byte #0x01, #0x00	;  1
      00419C FF FF                 2361 	.byte #0xff, #0xff	; -1
      00419E 01 00                 2362 	.byte #0x01, #0x00	;  1
      0041A0 01 00                 2363 	.byte #0x01, #0x00	;  1
      0041A2 FF FF                 2364 	.byte #0xff, #0xff	; -1
      0041A4 00 00                 2365 	.byte #0x00, #0x00	;  0
      0041A6 00 00                 2366 	.byte #0x00, #0x00	;  0
      0041A8 FF FF                 2367 	.byte #0xff, #0xff	; -1
      0041AA 01 00                 2368 	.byte #0x01, #0x00	;  1
      0041AC 00 00                 2369 	.byte #0x00, #0x00	;  0
      0041AE 00 00                 2370 	.byte #0x00, #0x00	;  0
      0041B0 01 00                 2371 	.byte #0x01, #0x00	;  1
      0041B2 FF FF                 2372 	.byte #0xff, #0xff	; -1
      0041B4 01 00                 2373 	.byte #0x01, #0x00	;  1
      0041B6 FF FF                 2374 	.byte #0xff, #0xff	; -1
      0041B8 FF FF                 2375 	.byte #0xff, #0xff	; -1
      0041BA 01 00                 2376 	.byte #0x01, #0x00	;  1
      0041BC FF FF                 2377 	.byte #0xff, #0xff	; -1
      0041BE 01 00                 2378 	.byte #0x01, #0x00	;  1
      0041C0 01 00                 2379 	.byte #0x01, #0x00	;  1
      0041C2 FF FF                 2380 	.byte #0xff, #0xff	; -1
      0041C4 00 00                 2381 	.byte #0x00, #0x00	;  0
      0041C6 00 00                 2382 	.byte #0x00, #0x00	;  0
      0041C8 FF FF                 2383 	.byte #0xff, #0xff	; -1
      0041CA 01 00                 2384 	.byte #0x01, #0x00	;  1
      0041CC 00 00                 2385 	.byte #0x00, #0x00	;  0
      0041CE 00 00                 2386 	.byte #0x00, #0x00	;  0
      0041D0 01 00                 2387 	.byte #0x01, #0x00	;  1
                                   2388 	.area CABS    (ABS,CODE)
