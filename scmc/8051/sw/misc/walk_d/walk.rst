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
      002006 02 26 CA         [24]  377 	ljmp	_main
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
      00207F 90 41 53         [24]  460 	mov	dptr,#___str_0
      002082 75 F0 80         [24]  461 	mov	b,#0x80
      002085 12 2D 9A         [24]  462 	lcall	_puts
                                    463 ;	walk.c:35: PCON |= 2;
      002088 43 87 02         [24]  464 	orl	_PCON,#0x02
                                    465 ;	walk.c:42: return;
                                    466 ;	walk.c:43: }
      00208B 22               [24]  467 	ret
                                    468 ;------------------------------------------------------------
                                    469 ;Allocation info for local variables in function 'setOE'
                                    470 ;------------------------------------------------------------
                                    471 ;mask                      Allocated to registers r7 
                                    472 ;------------------------------------------------------------
                                    473 ;	walk.c:85: static void setOE(uint8_t mask) {
                                    474 ;	-----------------------------------------
                                    475 ;	 function setOE
                                    476 ;	-----------------------------------------
      00208C                        477 _setOE:
      00208C AF 82            [24]  478 	mov	r7,dpl
                                    479 ;	walk.c:86: OE76 |= mask;
      00208E 78 12            [12]  480 	mov	r0,#_OE76
      002090 EF               [12]  481 	mov	a,r7
      002091 46               [12]  482 	orl	a,@r0
      002092 F6               [12]  483 	mov	@r0,a
                                    484 ;	walk.c:87: P1_7 = 0;
                                    485 ;	assignBit
      002093 C2 97            [12]  486 	clr	_P1_7
                                    487 ;	walk.c:88: OEreg = OE76;
      002095 78 12            [12]  488 	mov	r0,#_OE76
      002097 90 F0 06         [24]  489 	mov	dptr,#_OEreg
      00209A E6               [12]  490 	mov	a,@r0
      00209B F0               [24]  491 	movx	@dptr,a
                                    492 ;	walk.c:89: P1_7 = 1;
                                    493 ;	assignBit
      00209C D2 97            [12]  494 	setb	_P1_7
                                    495 ;	walk.c:91: return;
                                    496 ;	walk.c:92: }
      00209E 22               [24]  497 	ret
                                    498 ;------------------------------------------------------------
                                    499 ;Allocation info for local variables in function 'unsetOE'
                                    500 ;------------------------------------------------------------
                                    501 ;mask                      Allocated to registers r7 
                                    502 ;------------------------------------------------------------
                                    503 ;	walk.c:94: static void unsetOE(uint8_t mask) {
                                    504 ;	-----------------------------------------
                                    505 ;	 function unsetOE
                                    506 ;	-----------------------------------------
      00209F                        507 _unsetOE:
                                    508 ;	walk.c:95: OE76 &= ~mask;
      00209F E5 82            [12]  509 	mov	a,dpl
      0020A1 F4               [12]  510 	cpl	a
      0020A2 78 12            [12]  511 	mov	r0,#_OE76
      0020A4 56               [12]  512 	anl	a,@r0
      0020A5 F6               [12]  513 	mov	@r0,a
                                    514 ;	walk.c:96: P1_7 = 0;
                                    515 ;	assignBit
      0020A6 C2 97            [12]  516 	clr	_P1_7
                                    517 ;	walk.c:97: OEreg = OE76;
      0020A8 78 12            [12]  518 	mov	r0,#_OE76
      0020AA 90 F0 06         [24]  519 	mov	dptr,#_OEreg
      0020AD E6               [12]  520 	mov	a,@r0
      0020AE F0               [24]  521 	movx	@dptr,a
                                    522 ;	walk.c:98: P1_7 = 1;
                                    523 ;	assignBit
      0020AF D2 97            [12]  524 	setb	_P1_7
                                    525 ;	walk.c:100: return;
                                    526 ;	walk.c:101: }
      0020B1 22               [24]  527 	ret
                                    528 ;------------------------------------------------------------
                                    529 ;Allocation info for local variables in function 'flipOE'
                                    530 ;------------------------------------------------------------
                                    531 ;mask                      Allocated to registers r7 
                                    532 ;------------------------------------------------------------
                                    533 ;	walk.c:103: static void flipOE(uint8_t mask) {
                                    534 ;	-----------------------------------------
                                    535 ;	 function flipOE
                                    536 ;	-----------------------------------------
      0020B2                        537 _flipOE:
      0020B2 AF 82            [24]  538 	mov	r7,dpl
                                    539 ;	walk.c:104: OE76 ^= mask;
      0020B4 78 12            [12]  540 	mov	r0,#_OE76
      0020B6 EF               [12]  541 	mov	a,r7
      0020B7 66               [12]  542 	xrl	a,@r0
      0020B8 F6               [12]  543 	mov	@r0,a
                                    544 ;	walk.c:105: P1_7 = 0;
                                    545 ;	assignBit
      0020B9 C2 97            [12]  546 	clr	_P1_7
                                    547 ;	walk.c:106: OEreg = OE76;
      0020BB 78 12            [12]  548 	mov	r0,#_OE76
      0020BD 90 F0 06         [24]  549 	mov	dptr,#_OEreg
      0020C0 E6               [12]  550 	mov	a,@r0
      0020C1 F0               [24]  551 	movx	@dptr,a
                                    552 ;	walk.c:107: P1_7 = 1;
                                    553 ;	assignBit
      0020C2 D2 97            [12]  554 	setb	_P1_7
                                    555 ;	walk.c:109: return;
                                    556 ;	walk.c:110: }
      0020C4 22               [24]  557 	ret
                                    558 ;------------------------------------------------------------
                                    559 ;Allocation info for local variables in function 'update'
                                    560 ;------------------------------------------------------------
                                    561 ;cur                       Allocated to stack - _bp -5
                                    562 ;j                         Allocated to stack - _bp -6
                                    563 ;t                         Allocated to stack - _bp +1
                                    564 ;sloc0                     Allocated to stack - _bp +4
                                    565 ;sloc1                     Allocated to stack - _bp +6
                                    566 ;sloc2                     Allocated to stack - _bp +8
                                    567 ;------------------------------------------------------------
                                    568 ;	walk.c:112: static uint8_t update(struct node *t, struct node *cur, uint8_t j) {
                                    569 ;	-----------------------------------------
                                    570 ;	 function update
                                    571 ;	-----------------------------------------
      0020C5                        572 _update:
      0020C5 C0 10            [24]  573 	push	_bp
      0020C7 85 81 10         [24]  574 	mov	_bp,sp
      0020CA C0 82            [24]  575 	push	dpl
      0020CC C0 83            [24]  576 	push	dph
      0020CE C0 F0            [24]  577 	push	b
      0020D0 E5 81            [12]  578 	mov	a,sp
      0020D2 24 07            [12]  579 	add	a,#0x07
      0020D4 F5 81            [12]  580 	mov	sp,a
                                    581 ;	walk.c:113: t->r = cur->r + neigh[j].r;
      0020D6 E5 10            [12]  582 	mov	a,_bp
      0020D8 24 FB            [12]  583 	add	a,#0xfb
      0020DA F8               [12]  584 	mov	r0,a
      0020DB 86 02            [24]  585 	mov	ar2,@r0
      0020DD 08               [12]  586 	inc	r0
      0020DE 86 03            [24]  587 	mov	ar3,@r0
      0020E0 08               [12]  588 	inc	r0
      0020E1 86 04            [24]  589 	mov	ar4,@r0
      0020E3 8A 82            [24]  590 	mov	dpl,r2
      0020E5 8B 83            [24]  591 	mov	dph,r3
      0020E7 8C F0            [24]  592 	mov	b,r4
      0020E9 E5 10            [12]  593 	mov	a,_bp
      0020EB 24 04            [12]  594 	add	a,#0x04
      0020ED F8               [12]  595 	mov	r0,a
      0020EE 12 2E 59         [24]  596 	lcall	__gptrget
      0020F1 F6               [12]  597 	mov	@r0,a
      0020F2 A3               [24]  598 	inc	dptr
      0020F3 12 2E 59         [24]  599 	lcall	__gptrget
      0020F6 08               [12]  600 	inc	r0
      0020F7 F6               [12]  601 	mov	@r0,a
      0020F8 E5 10            [12]  602 	mov	a,_bp
      0020FA 24 FA            [12]  603 	add	a,#0xfa
      0020FC F8               [12]  604 	mov	r0,a
      0020FD E5 10            [12]  605 	mov	a,_bp
      0020FF 24 06            [12]  606 	add	a,#0x06
      002101 F9               [12]  607 	mov	r1,a
      002102 E6               [12]  608 	mov	a,@r0
      002103 75 F0 04         [24]  609 	mov	b,#0x04
      002106 A4               [48]  610 	mul	ab
      002107 F7               [12]  611 	mov	@r1,a
      002108 09               [12]  612 	inc	r1
      002109 A7 F0            [24]  613 	mov	@r1,b
      00210B E5 10            [12]  614 	mov	a,_bp
      00210D 24 06            [12]  615 	add	a,#0x06
      00210F F8               [12]  616 	mov	r0,a
      002110 E6               [12]  617 	mov	a,@r0
      002111 24 72            [12]  618 	add	a,#_neigh
      002113 F5 82            [12]  619 	mov	dpl,a
      002115 08               [12]  620 	inc	r0
      002116 E6               [12]  621 	mov	a,@r0
      002117 34 FF            [12]  622 	addc	a,#(_neigh >> 8)
      002119 F5 83            [12]  623 	mov	dph,a
      00211B E0               [24]  624 	movx	a,@dptr
      00211C FF               [12]  625 	mov	r7,a
      00211D A3               [24]  626 	inc	dptr
      00211E E0               [24]  627 	movx	a,@dptr
      00211F FE               [12]  628 	mov	r6,a
      002120 E5 10            [12]  629 	mov	a,_bp
      002122 24 04            [12]  630 	add	a,#0x04
      002124 F8               [12]  631 	mov	r0,a
      002125 EF               [12]  632 	mov	a,r7
      002126 26               [12]  633 	add	a,@r0
      002127 FF               [12]  634 	mov	r7,a
      002128 EE               [12]  635 	mov	a,r6
      002129 08               [12]  636 	inc	r0
      00212A 36               [12]  637 	addc	a,@r0
      00212B FE               [12]  638 	mov	r6,a
      00212C A8 10            [24]  639 	mov	r0,_bp
      00212E 08               [12]  640 	inc	r0
      00212F 86 82            [24]  641 	mov	dpl,@r0
      002131 08               [12]  642 	inc	r0
      002132 86 83            [24]  643 	mov	dph,@r0
      002134 08               [12]  644 	inc	r0
      002135 86 F0            [24]  645 	mov	b,@r0
      002137 EF               [12]  646 	mov	a,r7
      002138 12 2C 4E         [24]  647 	lcall	__gptrput
      00213B A3               [24]  648 	inc	dptr
      00213C EE               [12]  649 	mov	a,r6
      00213D 12 2C 4E         [24]  650 	lcall	__gptrput
                                    651 ;	walk.c:114: t->c = cur->c + neigh[j].c;
      002140 A8 10            [24]  652 	mov	r0,_bp
      002142 08               [12]  653 	inc	r0
      002143 E5 10            [12]  654 	mov	a,_bp
      002145 24 08            [12]  655 	add	a,#0x08
      002147 F9               [12]  656 	mov	r1,a
      002148 74 02            [12]  657 	mov	a,#0x02
      00214A 26               [12]  658 	add	a,@r0
      00214B F7               [12]  659 	mov	@r1,a
      00214C E4               [12]  660 	clr	a
      00214D 08               [12]  661 	inc	r0
      00214E 36               [12]  662 	addc	a,@r0
      00214F 09               [12]  663 	inc	r1
      002150 F7               [12]  664 	mov	@r1,a
      002151 08               [12]  665 	inc	r0
      002152 09               [12]  666 	inc	r1
      002153 E6               [12]  667 	mov	a,@r0
      002154 F7               [12]  668 	mov	@r1,a
      002155 74 02            [12]  669 	mov	a,#0x02
      002157 2A               [12]  670 	add	a,r2
      002158 FA               [12]  671 	mov	r2,a
      002159 E4               [12]  672 	clr	a
      00215A 3B               [12]  673 	addc	a,r3
      00215B FB               [12]  674 	mov	r3,a
      00215C 8A 82            [24]  675 	mov	dpl,r2
      00215E 8B 83            [24]  676 	mov	dph,r3
      002160 8C F0            [24]  677 	mov	b,r4
      002162 12 2E 59         [24]  678 	lcall	__gptrget
      002165 FA               [12]  679 	mov	r2,a
      002166 A3               [24]  680 	inc	dptr
      002167 12 2E 59         [24]  681 	lcall	__gptrget
      00216A FB               [12]  682 	mov	r3,a
      00216B E5 10            [12]  683 	mov	a,_bp
      00216D 24 06            [12]  684 	add	a,#0x06
      00216F F8               [12]  685 	mov	r0,a
      002170 E6               [12]  686 	mov	a,@r0
      002171 24 72            [12]  687 	add	a,#_neigh
      002173 FC               [12]  688 	mov	r4,a
      002174 08               [12]  689 	inc	r0
      002175 E6               [12]  690 	mov	a,@r0
      002176 34 FF            [12]  691 	addc	a,#(_neigh >> 8)
      002178 FD               [12]  692 	mov	r5,a
      002179 8C 82            [24]  693 	mov	dpl,r4
      00217B 8D 83            [24]  694 	mov	dph,r5
      00217D A3               [24]  695 	inc	dptr
      00217E A3               [24]  696 	inc	dptr
      00217F E0               [24]  697 	movx	a,@dptr
      002180 FC               [12]  698 	mov	r4,a
      002181 A3               [24]  699 	inc	dptr
      002182 E0               [24]  700 	movx	a,@dptr
      002183 FD               [12]  701 	mov	r5,a
      002184 EC               [12]  702 	mov	a,r4
      002185 2A               [12]  703 	add	a,r2
      002186 FA               [12]  704 	mov	r2,a
      002187 ED               [12]  705 	mov	a,r5
      002188 3B               [12]  706 	addc	a,r3
      002189 FB               [12]  707 	mov	r3,a
      00218A E5 10            [12]  708 	mov	a,_bp
      00218C 24 08            [12]  709 	add	a,#0x08
      00218E F8               [12]  710 	mov	r0,a
      00218F 86 82            [24]  711 	mov	dpl,@r0
      002191 08               [12]  712 	inc	r0
      002192 86 83            [24]  713 	mov	dph,@r0
      002194 08               [12]  714 	inc	r0
      002195 86 F0            [24]  715 	mov	b,@r0
      002197 EA               [12]  716 	mov	a,r2
      002198 12 2C 4E         [24]  717 	lcall	__gptrput
      00219B A3               [24]  718 	inc	dptr
      00219C EB               [12]  719 	mov	a,r3
      00219D 12 2C 4E         [24]  720 	lcall	__gptrput
                                    721 ;	walk.c:116: if (t->r < 0) t->r += ROWS;
      0021A0 A8 10            [24]  722 	mov	r0,_bp
      0021A2 08               [12]  723 	inc	r0
      0021A3 86 82            [24]  724 	mov	dpl,@r0
      0021A5 08               [12]  725 	inc	r0
      0021A6 86 83            [24]  726 	mov	dph,@r0
      0021A8 08               [12]  727 	inc	r0
      0021A9 86 F0            [24]  728 	mov	b,@r0
      0021AB 12 2E 59         [24]  729 	lcall	__gptrget
      0021AE FD               [12]  730 	mov	r5,a
      0021AF A3               [24]  731 	inc	dptr
      0021B0 12 2E 59         [24]  732 	lcall	__gptrget
      0021B3 FC               [12]  733 	mov	r4,a
      0021B4 EE               [12]  734 	mov	a,r6
      0021B5 30 E7 1D         [24]  735 	jnb	acc.7,00104$
      0021B8 74 30            [12]  736 	mov	a,#0x30
      0021BA 2D               [12]  737 	add	a,r5
      0021BB FF               [12]  738 	mov	r7,a
      0021BC E4               [12]  739 	clr	a
      0021BD 3C               [12]  740 	addc	a,r4
      0021BE FE               [12]  741 	mov	r6,a
      0021BF A8 10            [24]  742 	mov	r0,_bp
      0021C1 08               [12]  743 	inc	r0
      0021C2 86 82            [24]  744 	mov	dpl,@r0
      0021C4 08               [12]  745 	inc	r0
      0021C5 86 83            [24]  746 	mov	dph,@r0
      0021C7 08               [12]  747 	inc	r0
      0021C8 86 F0            [24]  748 	mov	b,@r0
      0021CA EF               [12]  749 	mov	a,r7
      0021CB 12 2C 4E         [24]  750 	lcall	__gptrput
      0021CE A3               [24]  751 	inc	dptr
      0021CF EE               [12]  752 	mov	a,r6
      0021D0 12 2C 4E         [24]  753 	lcall	__gptrput
      0021D3 80 27            [24]  754 	sjmp	00105$
      0021D5                        755 00104$:
                                    756 ;	walk.c:117: else if (t->r >= ROWS) t->r -= ROWS;
      0021D5 C3               [12]  757 	clr	c
      0021D6 ED               [12]  758 	mov	a,r5
      0021D7 94 30            [12]  759 	subb	a,#0x30
      0021D9 EC               [12]  760 	mov	a,r4
      0021DA 64 80            [12]  761 	xrl	a,#0x80
      0021DC 94 80            [12]  762 	subb	a,#0x80
      0021DE 40 1C            [24]  763 	jc	00105$
      0021E0 ED               [12]  764 	mov	a,r5
      0021E1 24 D0            [12]  765 	add	a,#0xd0
      0021E3 FD               [12]  766 	mov	r5,a
      0021E4 EC               [12]  767 	mov	a,r4
      0021E5 34 FF            [12]  768 	addc	a,#0xff
      0021E7 FC               [12]  769 	mov	r4,a
      0021E8 A8 10            [24]  770 	mov	r0,_bp
      0021EA 08               [12]  771 	inc	r0
      0021EB 86 82            [24]  772 	mov	dpl,@r0
      0021ED 08               [12]  773 	inc	r0
      0021EE 86 83            [24]  774 	mov	dph,@r0
      0021F0 08               [12]  775 	inc	r0
      0021F1 86 F0            [24]  776 	mov	b,@r0
      0021F3 ED               [12]  777 	mov	a,r5
      0021F4 12 2C 4E         [24]  778 	lcall	__gptrput
      0021F7 A3               [24]  779 	inc	dptr
      0021F8 EC               [12]  780 	mov	a,r4
      0021F9 12 2C 4E         [24]  781 	lcall	__gptrput
      0021FC                        782 00105$:
                                    783 ;	walk.c:118: if (t->c < 0) t->c += COLS;
      0021FC E5 10            [12]  784 	mov	a,_bp
      0021FE 24 08            [12]  785 	add	a,#0x08
      002200 F8               [12]  786 	mov	r0,a
      002201 86 82            [24]  787 	mov	dpl,@r0
      002203 08               [12]  788 	inc	r0
      002204 86 83            [24]  789 	mov	dph,@r0
      002206 08               [12]  790 	inc	r0
      002207 86 F0            [24]  791 	mov	b,@r0
      002209 12 2E 59         [24]  792 	lcall	__gptrget
      00220C A3               [24]  793 	inc	dptr
      00220D 12 2E 59         [24]  794 	lcall	__gptrget
      002210 30 E7 35         [24]  795 	jnb	acc.7,00109$
      002213 E5 10            [12]  796 	mov	a,_bp
      002215 24 08            [12]  797 	add	a,#0x08
      002217 F8               [12]  798 	mov	r0,a
      002218 86 82            [24]  799 	mov	dpl,@r0
      00221A 08               [12]  800 	inc	r0
      00221B 86 83            [24]  801 	mov	dph,@r0
      00221D 08               [12]  802 	inc	r0
      00221E 86 F0            [24]  803 	mov	b,@r0
      002220 12 2E 59         [24]  804 	lcall	__gptrget
      002223 FE               [12]  805 	mov	r6,a
      002224 A3               [24]  806 	inc	dptr
      002225 12 2E 59         [24]  807 	lcall	__gptrget
      002228 FF               [12]  808 	mov	r7,a
      002229 74 C9            [12]  809 	mov	a,#0xc9
      00222B 2E               [12]  810 	add	a,r6
      00222C FE               [12]  811 	mov	r6,a
      00222D E4               [12]  812 	clr	a
      00222E 3F               [12]  813 	addc	a,r7
      00222F FF               [12]  814 	mov	r7,a
      002230 E5 10            [12]  815 	mov	a,_bp
      002232 24 08            [12]  816 	add	a,#0x08
      002234 F8               [12]  817 	mov	r0,a
      002235 86 82            [24]  818 	mov	dpl,@r0
      002237 08               [12]  819 	inc	r0
      002238 86 83            [24]  820 	mov	dph,@r0
      00223A 08               [12]  821 	inc	r0
      00223B 86 F0            [24]  822 	mov	b,@r0
      00223D EE               [12]  823 	mov	a,r6
      00223E 12 2C 4E         [24]  824 	lcall	__gptrput
      002241 A3               [24]  825 	inc	dptr
      002242 EF               [12]  826 	mov	a,r7
      002243 12 2C 4E         [24]  827 	lcall	__gptrput
      002246 80 55            [24]  828 	sjmp	00110$
      002248                        829 00109$:
                                    830 ;	walk.c:119: else if (t->c >= COLS) t->c -= COLS;
      002248 E5 10            [12]  831 	mov	a,_bp
      00224A 24 08            [12]  832 	add	a,#0x08
      00224C F8               [12]  833 	mov	r0,a
      00224D 86 82            [24]  834 	mov	dpl,@r0
      00224F 08               [12]  835 	inc	r0
      002250 86 83            [24]  836 	mov	dph,@r0
      002252 08               [12]  837 	inc	r0
      002253 86 F0            [24]  838 	mov	b,@r0
      002255 12 2E 59         [24]  839 	lcall	__gptrget
      002258 FE               [12]  840 	mov	r6,a
      002259 A3               [24]  841 	inc	dptr
      00225A 12 2E 59         [24]  842 	lcall	__gptrget
      00225D FF               [12]  843 	mov	r7,a
      00225E C3               [12]  844 	clr	c
      00225F EE               [12]  845 	mov	a,r6
      002260 94 C9            [12]  846 	subb	a,#0xc9
      002262 EF               [12]  847 	mov	a,r7
      002263 64 80            [12]  848 	xrl	a,#0x80
      002265 94 80            [12]  849 	subb	a,#0x80
      002267 40 34            [24]  850 	jc	00110$
      002269 E5 10            [12]  851 	mov	a,_bp
      00226B 24 08            [12]  852 	add	a,#0x08
      00226D F8               [12]  853 	mov	r0,a
      00226E 86 82            [24]  854 	mov	dpl,@r0
      002270 08               [12]  855 	inc	r0
      002271 86 83            [24]  856 	mov	dph,@r0
      002273 08               [12]  857 	inc	r0
      002274 86 F0            [24]  858 	mov	b,@r0
      002276 12 2E 59         [24]  859 	lcall	__gptrget
      002279 FE               [12]  860 	mov	r6,a
      00227A A3               [24]  861 	inc	dptr
      00227B 12 2E 59         [24]  862 	lcall	__gptrget
      00227E FF               [12]  863 	mov	r7,a
      00227F EE               [12]  864 	mov	a,r6
      002280 24 37            [12]  865 	add	a,#0x37
      002282 FE               [12]  866 	mov	r6,a
      002283 EF               [12]  867 	mov	a,r7
      002284 34 FF            [12]  868 	addc	a,#0xff
      002286 FF               [12]  869 	mov	r7,a
      002287 E5 10            [12]  870 	mov	a,_bp
      002289 24 08            [12]  871 	add	a,#0x08
      00228B F8               [12]  872 	mov	r0,a
      00228C 86 82            [24]  873 	mov	dpl,@r0
      00228E 08               [12]  874 	inc	r0
      00228F 86 83            [24]  875 	mov	dph,@r0
      002291 08               [12]  876 	inc	r0
      002292 86 F0            [24]  877 	mov	b,@r0
      002294 EE               [12]  878 	mov	a,r6
      002295 12 2C 4E         [24]  879 	lcall	__gptrput
      002298 A3               [24]  880 	inc	dptr
      002299 EF               [12]  881 	mov	a,r7
      00229A 12 2C 4E         [24]  882 	lcall	__gptrput
      00229D                        883 00110$:
                                    884 ;	walk.c:121: if (g[t->r][t->c] == 0xaau) return 0u;
      00229D A8 10            [24]  885 	mov	r0,_bp
      00229F 08               [12]  886 	inc	r0
      0022A0 86 82            [24]  887 	mov	dpl,@r0
      0022A2 08               [12]  888 	inc	r0
      0022A3 86 83            [24]  889 	mov	dph,@r0
      0022A5 08               [12]  890 	inc	r0
      0022A6 86 F0            [24]  891 	mov	b,@r0
      0022A8 12 2E 59         [24]  892 	lcall	__gptrget
      0022AB FE               [12]  893 	mov	r6,a
      0022AC A3               [24]  894 	inc	dptr
      0022AD 12 2E 59         [24]  895 	lcall	__gptrget
      0022B0 FF               [12]  896 	mov	r7,a
      0022B1 C0 06            [24]  897 	push	ar6
      0022B3 C0 07            [24]  898 	push	ar7
      0022B5 90 00 C9         [24]  899 	mov	dptr,#0x00c9
      0022B8 12 2C 69         [24]  900 	lcall	__mulint
      0022BB AE 82            [24]  901 	mov	r6,dpl
      0022BD AF 83            [24]  902 	mov	r7,dph
      0022BF 15 81            [12]  903 	dec	sp
      0022C1 15 81            [12]  904 	dec	sp
      0022C3 EE               [12]  905 	mov	a,r6
      0022C4 24 00            [12]  906 	add	a,#_g
      0022C6 FE               [12]  907 	mov	r6,a
      0022C7 EF               [12]  908 	mov	a,r7
      0022C8 34 43            [12]  909 	addc	a,#(_g >> 8)
      0022CA FF               [12]  910 	mov	r7,a
      0022CB E5 10            [12]  911 	mov	a,_bp
      0022CD 24 08            [12]  912 	add	a,#0x08
      0022CF F8               [12]  913 	mov	r0,a
      0022D0 86 82            [24]  914 	mov	dpl,@r0
      0022D2 08               [12]  915 	inc	r0
      0022D3 86 83            [24]  916 	mov	dph,@r0
      0022D5 08               [12]  917 	inc	r0
      0022D6 86 F0            [24]  918 	mov	b,@r0
      0022D8 12 2E 59         [24]  919 	lcall	__gptrget
      0022DB FC               [12]  920 	mov	r4,a
      0022DC A3               [24]  921 	inc	dptr
      0022DD 12 2E 59         [24]  922 	lcall	__gptrget
      0022E0 FD               [12]  923 	mov	r5,a
      0022E1 EC               [12]  924 	mov	a,r4
      0022E2 2E               [12]  925 	add	a,r6
      0022E3 F5 82            [12]  926 	mov	dpl,a
      0022E5 ED               [12]  927 	mov	a,r5
      0022E6 3F               [12]  928 	addc	a,r7
      0022E7 F5 83            [12]  929 	mov	dph,a
      0022E9 E0               [24]  930 	movx	a,@dptr
      0022EA FF               [12]  931 	mov	r7,a
      0022EB BF AA 05         [24]  932 	cjne	r7,#0xaa,00114$
      0022EE 75 82 00         [24]  933 	mov	dpl,#0x00
      0022F1 80 59            [24]  934 	sjmp	00116$
      0022F3                        935 00114$:
                                    936 ;	walk.c:122: else if (g[t->r][t->c] != 0x55u) bang();
      0022F3 A8 10            [24]  937 	mov	r0,_bp
      0022F5 08               [12]  938 	inc	r0
      0022F6 86 82            [24]  939 	mov	dpl,@r0
      0022F8 08               [12]  940 	inc	r0
      0022F9 86 83            [24]  941 	mov	dph,@r0
      0022FB 08               [12]  942 	inc	r0
      0022FC 86 F0            [24]  943 	mov	b,@r0
      0022FE 12 2E 59         [24]  944 	lcall	__gptrget
      002301 FE               [12]  945 	mov	r6,a
      002302 A3               [24]  946 	inc	dptr
      002303 12 2E 59         [24]  947 	lcall	__gptrget
      002306 FF               [12]  948 	mov	r7,a
      002307 C0 06            [24]  949 	push	ar6
      002309 C0 07            [24]  950 	push	ar7
      00230B 90 00 C9         [24]  951 	mov	dptr,#0x00c9
      00230E 12 2C 69         [24]  952 	lcall	__mulint
      002311 AE 82            [24]  953 	mov	r6,dpl
      002313 AF 83            [24]  954 	mov	r7,dph
      002315 15 81            [12]  955 	dec	sp
      002317 15 81            [12]  956 	dec	sp
      002319 EE               [12]  957 	mov	a,r6
      00231A 24 00            [12]  958 	add	a,#_g
      00231C FE               [12]  959 	mov	r6,a
      00231D EF               [12]  960 	mov	a,r7
      00231E 34 43            [12]  961 	addc	a,#(_g >> 8)
      002320 FF               [12]  962 	mov	r7,a
      002321 E5 10            [12]  963 	mov	a,_bp
      002323 24 08            [12]  964 	add	a,#0x08
      002325 F8               [12]  965 	mov	r0,a
      002326 86 82            [24]  966 	mov	dpl,@r0
      002328 08               [12]  967 	inc	r0
      002329 86 83            [24]  968 	mov	dph,@r0
      00232B 08               [12]  969 	inc	r0
      00232C 86 F0            [24]  970 	mov	b,@r0
      00232E 12 2E 59         [24]  971 	lcall	__gptrget
      002331 FC               [12]  972 	mov	r4,a
      002332 A3               [24]  973 	inc	dptr
      002333 12 2E 59         [24]  974 	lcall	__gptrget
      002336 FD               [12]  975 	mov	r5,a
      002337 EC               [12]  976 	mov	a,r4
      002338 2E               [12]  977 	add	a,r6
      002339 F5 82            [12]  978 	mov	dpl,a
      00233B ED               [12]  979 	mov	a,r5
      00233C 3F               [12]  980 	addc	a,r7
      00233D F5 83            [12]  981 	mov	dph,a
      00233F E0               [24]  982 	movx	a,@dptr
      002340 FF               [12]  983 	mov	r7,a
      002341 BF 55 02         [24]  984 	cjne	r7,#0x55,00148$
      002344 80 03            [24]  985 	sjmp	00115$
      002346                        986 00148$:
      002346 12 20 7F         [24]  987 	lcall	_bang
      002349                        988 00115$:
                                    989 ;	walk.c:124: return 1u;
      002349 75 82 01         [24]  990 	mov	dpl,#0x01
      00234C                        991 00116$:
                                    992 ;	walk.c:125: }
      00234C 85 10 81         [24]  993 	mov	sp,_bp
      00234F D0 10            [24]  994 	pop	_bp
      002351 22               [24]  995 	ret
                                    996 ;------------------------------------------------------------
                                    997 ;Allocation info for local variables in function 'walk'
                                    998 ;------------------------------------------------------------
                                    999 ;nstart                    Allocated to registers 
                                   1000 ;cur                       Allocated to stack - _bp +10
                                   1001 ;t                         Allocated to stack - _bp +14
                                   1002 ;j                         Allocated to stack - _bp +18
                                   1003 ;f                         Allocated to registers r3 
                                   1004 ;sloc0                     Allocated to stack - _bp +1
                                   1005 ;sloc1                     Allocated to stack - _bp +2
                                   1006 ;sloc2                     Allocated to stack - _bp +3
                                   1007 ;sloc3                     Allocated to stack - _bp +17
                                   1008 ;sloc4                     Allocated to stack - _bp +4
                                   1009 ;sloc5                     Allocated to stack - _bp +5
                                   1010 ;sloc6                     Allocated to stack - _bp +6
                                   1011 ;sloc7                     Allocated to stack - _bp +7
                                   1012 ;------------------------------------------------------------
                                   1013 ;	walk.c:127: static void walk(struct node *nstart) {
                                   1014 ;	-----------------------------------------
                                   1015 ;	 function walk
                                   1016 ;	-----------------------------------------
      002352                       1017 _walk:
      002352 C0 10            [24] 1018 	push	_bp
      002354 E5 81            [12] 1019 	mov	a,sp
      002356 F5 10            [12] 1020 	mov	_bp,a
      002358 24 12            [12] 1021 	add	a,#0x12
      00235A F5 81            [12] 1022 	mov	sp,a
      00235C AD 82            [24] 1023 	mov	r5,dpl
      00235E AE 83            [24] 1024 	mov	r6,dph
      002360 AF F0            [24] 1025 	mov	r7,b
                                   1026 ;	walk.c:131: cur = *nstart;
      002362 E5 10            [12] 1027 	mov	a,_bp
      002364 24 0A            [12] 1028 	add	a,#0x0a
      002366 F9               [12] 1029 	mov	r1,a
      002367 FA               [12] 1030 	mov	r2,a
      002368 7B 00            [12] 1031 	mov	r3,#0x00
      00236A 7C 40            [12] 1032 	mov	r4,#0x40
      00236C C0 01            [24] 1033 	push	ar1
      00236E 74 04            [12] 1034 	mov	a,#0x04
      002370 C0 E0            [24] 1035 	push	acc
      002372 E4               [12] 1036 	clr	a
      002373 C0 E0            [24] 1037 	push	acc
      002375 C0 05            [24] 1038 	push	ar5
      002377 C0 06            [24] 1039 	push	ar6
      002379 C0 07            [24] 1040 	push	ar7
      00237B 8A 82            [24] 1041 	mov	dpl,r2
      00237D 8B 83            [24] 1042 	mov	dph,r3
      00237F 8C F0            [24] 1043 	mov	b,r4
      002381 12 2D 07         [24] 1044 	lcall	___memcpy
      002384 E5 81            [12] 1045 	mov	a,sp
      002386 24 FB            [12] 1046 	add	a,#0xfb
      002388 F5 81            [12] 1047 	mov	sp,a
      00238A D0 01            [24] 1048 	pop	ar1
                                   1049 ;	walk.c:133: process:
      00238C E5 10            [12] 1050 	mov	a,_bp
      00238E 24 06            [12] 1051 	add	a,#0x06
      002390 F8               [12] 1052 	mov	r0,a
      002391 A6 01            [24] 1053 	mov	@r0,ar1
      002393 E5 10            [12] 1054 	mov	a,_bp
      002395 24 0E            [12] 1055 	add	a,#0x0e
      002397 FE               [12] 1056 	mov	r6,a
      002398 E5 10            [12] 1057 	mov	a,_bp
      00239A 24 03            [12] 1058 	add	a,#0x03
      00239C F8               [12] 1059 	mov	r0,a
      00239D A6 01            [24] 1060 	mov	@r0,ar1
      00239F E5 10            [12] 1061 	mov	a,_bp
      0023A1 24 05            [12] 1062 	add	a,#0x05
      0023A3 F8               [12] 1063 	mov	r0,a
      0023A4 A6 01            [24] 1064 	mov	@r0,ar1
      0023A6 E5 10            [12] 1065 	mov	a,_bp
      0023A8 24 04            [12] 1066 	add	a,#0x04
      0023AA F8               [12] 1067 	mov	r0,a
      0023AB A6 06            [24] 1068 	mov	@r0,ar6
      0023AD 89 02            [24] 1069 	mov	ar2,r1
      0023AF A8 10            [24] 1070 	mov	r0,_bp
      0023B1 08               [12] 1071 	inc	r0
      0023B2 A6 06            [24] 1072 	mov	@r0,ar6
      0023B4 A8 10            [24] 1073 	mov	r0,_bp
      0023B6 08               [12] 1074 	inc	r0
      0023B7 08               [12] 1075 	inc	r0
      0023B8 A6 01            [24] 1076 	mov	@r0,ar1
      0023BA 74 02            [12] 1077 	mov	a,#0x02
      0023BC 29               [12] 1078 	add	a,r1
      0023BD F8               [12] 1079 	mov	r0,a
      0023BE                       1080 00101$:
                                   1081 ;	walk.c:134: g[cur.r][cur.c] = 0xaau;
      0023BE C0 02            [24] 1082 	push	ar2
      0023C0 87 02            [24] 1083 	mov	ar2,@r1
      0023C2 09               [12] 1084 	inc	r1
      0023C3 87 05            [24] 1085 	mov	ar5,@r1
      0023C5 19               [12] 1086 	dec	r1
      0023C6 C0 06            [24] 1087 	push	ar6
      0023C8 C0 01            [24] 1088 	push	ar1
      0023CA C0 00            [24] 1089 	push	ar0
      0023CC C0 02            [24] 1090 	push	ar2
      0023CE C0 05            [24] 1091 	push	ar5
      0023D0 90 00 C9         [24] 1092 	mov	dptr,#0x00c9
      0023D3 12 2C 69         [24] 1093 	lcall	__mulint
      0023D6 AA 82            [24] 1094 	mov	r2,dpl
      0023D8 AD 83            [24] 1095 	mov	r5,dph
      0023DA 15 81            [12] 1096 	dec	sp
      0023DC 15 81            [12] 1097 	dec	sp
      0023DE D0 00            [24] 1098 	pop	ar0
      0023E0 D0 01            [24] 1099 	pop	ar1
      0023E2 EA               [12] 1100 	mov	a,r2
      0023E3 24 00            [12] 1101 	add	a,#_g
      0023E5 FF               [12] 1102 	mov	r7,a
      0023E6 ED               [12] 1103 	mov	a,r5
      0023E7 34 43            [12] 1104 	addc	a,#(_g >> 8)
      0023E9 FC               [12] 1105 	mov	r4,a
      0023EA 86 02            [24] 1106 	mov	ar2,@r0
      0023EC 08               [12] 1107 	inc	r0
      0023ED 86 05            [24] 1108 	mov	ar5,@r0
      0023EF 18               [12] 1109 	dec	r0
      0023F0 EA               [12] 1110 	mov	a,r2
      0023F1 2F               [12] 1111 	add	a,r7
      0023F2 F5 82            [12] 1112 	mov	dpl,a
      0023F4 ED               [12] 1113 	mov	a,r5
      0023F5 3C               [12] 1114 	addc	a,r4
      0023F6 F5 83            [12] 1115 	mov	dph,a
      0023F8 74 AA            [12] 1116 	mov	a,#0xaa
      0023FA F0               [24] 1117 	movx	@dptr,a
                                   1118 ;	walk.c:136: printf("\033[%d;%dHo", cur.r + 4, cur.c + 1);
      0023FB 86 02            [24] 1119 	mov	ar2,@r0
      0023FD 08               [12] 1120 	inc	r0
      0023FE 86 05            [24] 1121 	mov	ar5,@r0
      002400 18               [12] 1122 	dec	r0
      002401 74 01            [12] 1123 	mov	a,#0x01
      002403 2A               [12] 1124 	add	a,r2
      002404 FF               [12] 1125 	mov	r7,a
      002405 E4               [12] 1126 	clr	a
      002406 3D               [12] 1127 	addc	a,r5
      002407 FC               [12] 1128 	mov	r4,a
      002408 87 02            [24] 1129 	mov	ar2,@r1
      00240A 09               [12] 1130 	inc	r1
      00240B 87 05            [24] 1131 	mov	ar5,@r1
      00240D 19               [12] 1132 	dec	r1
      00240E 74 04            [12] 1133 	mov	a,#0x04
      002410 2A               [12] 1134 	add	a,r2
      002411 FA               [12] 1135 	mov	r2,a
      002412 E4               [12] 1136 	clr	a
      002413 3D               [12] 1137 	addc	a,r5
      002414 FD               [12] 1138 	mov	r5,a
      002415 C0 02            [24] 1139 	push	ar2
      002417 C0 01            [24] 1140 	push	ar1
      002419 C0 00            [24] 1141 	push	ar0
      00241B C0 07            [24] 1142 	push	ar7
      00241D C0 04            [24] 1143 	push	ar4
      00241F C0 02            [24] 1144 	push	ar2
      002421 C0 05            [24] 1145 	push	ar5
      002423 74 60            [12] 1146 	mov	a,#___str_1
      002425 C0 E0            [24] 1147 	push	acc
      002427 74 41            [12] 1148 	mov	a,#(___str_1 >> 8)
      002429 C0 E0            [24] 1149 	push	acc
      00242B 74 80            [12] 1150 	mov	a,#0x80
      00242D C0 E0            [24] 1151 	push	acc
      00242F 12 2E 20         [24] 1152 	lcall	_printf
      002432 E5 81            [12] 1153 	mov	a,sp
      002434 24 F9            [12] 1154 	add	a,#0xf9
      002436 F5 81            [12] 1155 	mov	sp,a
                                   1156 ;	walk.c:137: setOE(OE76_MASK7);
      002438 75 82 80         [24] 1157 	mov	dpl,#0x80
      00243B 12 20 8C         [24] 1158 	lcall	_setOE
      00243E D0 00            [24] 1159 	pop	ar0
      002440 D0 01            [24] 1160 	pop	ar1
      002442 D0 02            [24] 1161 	pop	ar2
      002444 D0 06            [24] 1162 	pop	ar6
                                   1163 ;	walk.c:165: return;
      002446 D0 02            [24] 1164 	pop	ar2
                                   1165 ;	walk.c:139: next:
      002448                       1166 00102$:
                                   1167 ;	walk.c:140: printf("\033[2;1H% 8d% 8d% 8d", sp, cur.r, cur.c);
      002448 C0 02            [24] 1168 	push	ar2
      00244A 86 07            [24] 1169 	mov	ar7,@r0
      00244C 08               [12] 1170 	inc	r0
      00244D 86 04            [24] 1171 	mov	ar4,@r0
      00244F 18               [12] 1172 	dec	r0
      002450 87 02            [24] 1173 	mov	ar2,@r1
      002452 09               [12] 1174 	inc	r1
      002453 87 05            [24] 1175 	mov	ar5,@r1
      002455 19               [12] 1176 	dec	r1
      002456 C0 06            [24] 1177 	push	ar6
      002458 C0 02            [24] 1178 	push	ar2
      00245A C0 01            [24] 1179 	push	ar1
      00245C C0 00            [24] 1180 	push	ar0
      00245E C0 07            [24] 1181 	push	ar7
      002460 C0 04            [24] 1182 	push	ar4
      002462 C0 02            [24] 1183 	push	ar2
      002464 C0 05            [24] 1184 	push	ar5
      002466 90 FF 70         [24] 1185 	mov	dptr,#_sp
      002469 E0               [24] 1186 	movx	a,@dptr
      00246A C0 E0            [24] 1187 	push	acc
      00246C A3               [24] 1188 	inc	dptr
      00246D E0               [24] 1189 	movx	a,@dptr
      00246E C0 E0            [24] 1190 	push	acc
      002470 74 6A            [12] 1191 	mov	a,#___str_2
      002472 C0 E0            [24] 1192 	push	acc
      002474 74 41            [12] 1193 	mov	a,#(___str_2 >> 8)
      002476 C0 E0            [24] 1194 	push	acc
      002478 74 80            [12] 1195 	mov	a,#0x80
      00247A C0 E0            [24] 1196 	push	acc
      00247C 12 2E 20         [24] 1197 	lcall	_printf
      00247F E5 81            [12] 1198 	mov	a,sp
      002481 24 F7            [12] 1199 	add	a,#0xf7
      002483 F5 81            [12] 1200 	mov	sp,a
                                   1201 ;	walk.c:141: unsetOE(OE76_MASK7 | OE76_MASK6);
      002485 75 82 C0         [24] 1202 	mov	dpl,#0xc0
      002488 12 20 9F         [24] 1203 	lcall	_unsetOE
      00248B D0 00            [24] 1204 	pop	ar0
      00248D D0 01            [24] 1205 	pop	ar1
      00248F D0 02            [24] 1206 	pop	ar2
      002491 D0 06            [24] 1207 	pop	ar6
                                   1208 ;	walk.c:143: for (j = 0u, f = 0u; j < NMAX; j++) {
      002493 7B 00            [12] 1209 	mov	r3,#0x00
      002495 C0 00            [24] 1210 	push	ar0
      002497 E5 10            [12] 1211 	mov	a,_bp
      002499 24 12            [12] 1212 	add	a,#0x12
      00249B F8               [12] 1213 	mov	r0,a
      00249C 76 00            [12] 1214 	mov	@r0,#0x00
      00249E D0 00            [24] 1215 	pop	ar0
                                   1216 ;	walk.c:165: return;
      0024A0 D0 02            [24] 1217 	pop	ar2
                                   1218 ;	walk.c:143: for (j = 0u, f = 0u; j < NMAX; j++) {
      0024A2                       1219 00119$:
      0024A2 C0 00            [24] 1220 	push	ar0
      0024A4 E5 10            [12] 1221 	mov	a,_bp
      0024A6 24 12            [12] 1222 	add	a,#0x12
      0024A8 F8               [12] 1223 	mov	r0,a
      0024A9 B6 10 00         [24] 1224 	cjne	@r0,#0x10,00159$
      0024AC                       1225 00159$:
      0024AC D0 00            [24] 1226 	pop	ar0
      0024AE 50 7A            [24] 1227 	jnc	00106$
                                   1228 ;	walk.c:144: if (!update(&t, &cur, j)) continue;
      0024B0 C0 02            [24] 1229 	push	ar2
      0024B2 C0 00            [24] 1230 	push	ar0
      0024B4 E5 10            [12] 1231 	mov	a,_bp
      0024B6 24 06            [12] 1232 	add	a,#0x06
      0024B8 F8               [12] 1233 	mov	r0,a
      0024B9 C0 01            [24] 1234 	push	ar1
      0024BB E5 10            [12] 1235 	mov	a,_bp
      0024BD 24 07            [12] 1236 	add	a,#0x07
      0024BF F9               [12] 1237 	mov	r1,a
      0024C0 E6               [12] 1238 	mov	a,@r0
      0024C1 F7               [12] 1239 	mov	@r1,a
      0024C2 09               [12] 1240 	inc	r1
      0024C3 77 00            [12] 1241 	mov	@r1,#0x00
      0024C5 09               [12] 1242 	inc	r1
      0024C6 77 40            [12] 1243 	mov	@r1,#0x40
      0024C8 D0 01            [24] 1244 	pop	ar1
      0024CA D0 00            [24] 1245 	pop	ar0
      0024CC 8E 04            [24] 1246 	mov	ar4,r6
      0024CE 7D 00            [12] 1247 	mov	r5,#0x00
      0024D0 7F 40            [12] 1248 	mov	r7,#0x40
      0024D2 C0 06            [24] 1249 	push	ar6
      0024D4 C0 03            [24] 1250 	push	ar3
      0024D6 C0 02            [24] 1251 	push	ar2
      0024D8 C0 01            [24] 1252 	push	ar1
      0024DA C0 00            [24] 1253 	push	ar0
      0024DC 85 00 F0         [24] 1254 	mov	b,ar0
      0024DF E5 10            [12] 1255 	mov	a,_bp
      0024E1 24 12            [12] 1256 	add	a,#0x12
      0024E3 F8               [12] 1257 	mov	r0,a
      0024E4 E6               [12] 1258 	mov	a,@r0
      0024E5 C0 E0            [24] 1259 	push	acc
      0024E7 A8 F0            [24] 1260 	mov	r0,b
      0024E9 85 00 F0         [24] 1261 	mov	b,ar0
      0024EC E5 10            [12] 1262 	mov	a,_bp
      0024EE 24 07            [12] 1263 	add	a,#0x07
      0024F0 F8               [12] 1264 	mov	r0,a
      0024F1 E6               [12] 1265 	mov	a,@r0
      0024F2 C0 E0            [24] 1266 	push	acc
      0024F4 08               [12] 1267 	inc	r0
      0024F5 E6               [12] 1268 	mov	a,@r0
      0024F6 C0 E0            [24] 1269 	push	acc
      0024F8 08               [12] 1270 	inc	r0
      0024F9 E6               [12] 1271 	mov	a,@r0
      0024FA C0 E0            [24] 1272 	push	acc
      0024FC 8C 82            [24] 1273 	mov	dpl,r4
      0024FE 8D 83            [24] 1274 	mov	dph,r5
      002500 8F F0            [24] 1275 	mov	b,r7
      002502 12 20 C5         [24] 1276 	lcall	_update
      002505 AF 82            [24] 1277 	mov	r7,dpl
      002507 E5 81            [12] 1278 	mov	a,sp
      002509 24 FC            [12] 1279 	add	a,#0xfc
      00250B F5 81            [12] 1280 	mov	sp,a
      00250D D0 00            [24] 1281 	pop	ar0
      00250F D0 01            [24] 1282 	pop	ar1
      002511 D0 02            [24] 1283 	pop	ar2
      002513 D0 03            [24] 1284 	pop	ar3
      002515 D0 06            [24] 1285 	pop	ar6
      002517 D0 02            [24] 1286 	pop	ar2
      002519 EF               [12] 1287 	mov	a,r7
      00251A 60 01            [24] 1288 	jz	00105$
                                   1289 ;	walk.c:145: f++;
      00251C 0B               [12] 1290 	inc	r3
      00251D                       1291 00105$:
                                   1292 ;	walk.c:143: for (j = 0u, f = 0u; j < NMAX; j++) {
      00251D C0 00            [24] 1293 	push	ar0
      00251F E5 10            [12] 1294 	mov	a,_bp
      002521 24 12            [12] 1295 	add	a,#0x12
      002523 F8               [12] 1296 	mov	r0,a
      002524 06               [12] 1297 	inc	@r0
      002525 D0 00            [24] 1298 	pop	ar0
      002527 02 24 A2         [24] 1299 	ljmp	00119$
      00252A                       1300 00106$:
                                   1301 ;	walk.c:148: if (f) {
      00252A EB               [12] 1302 	mov	a,r3
      00252B 70 03            [24] 1303 	jnz	00162$
      00252D 02 26 44         [24] 1304 	ljmp	00115$
      002530                       1305 00162$:
                                   1306 ;	walk.c:149: while (1) {
      002530                       1307 00112$:
                                   1308 ;	walk.c:150: j = (uint8_t)(rand() % NMAX);
      002530 C0 02            [24] 1309 	push	ar2
      002532 C0 06            [24] 1310 	push	ar6
      002534 C0 02            [24] 1311 	push	ar2
      002536 C0 01            [24] 1312 	push	ar1
      002538 C0 00            [24] 1313 	push	ar0
      00253A 12 2B 71         [24] 1314 	lcall	_rand
      00253D AD 82            [24] 1315 	mov	r5,dpl
      00253F D0 00            [24] 1316 	pop	ar0
      002541 D0 01            [24] 1317 	pop	ar1
      002543 D0 02            [24] 1318 	pop	ar2
      002545 D0 06            [24] 1319 	pop	ar6
      002547 53 05 0F         [24] 1320 	anl	ar5,#0x0f
      00254A 8D 04            [24] 1321 	mov	ar4,r5
                                   1322 ;	walk.c:151: if (!update(&t, &cur, j)) continue;
      00254C C0 00            [24] 1323 	push	ar0
      00254E E5 10            [12] 1324 	mov	a,_bp
      002550 24 05            [12] 1325 	add	a,#0x05
      002552 F8               [12] 1326 	mov	r0,a
      002553 C0 01            [24] 1327 	push	ar1
      002555 E5 10            [12] 1328 	mov	a,_bp
      002557 24 07            [12] 1329 	add	a,#0x07
      002559 F9               [12] 1330 	mov	r1,a
      00255A E6               [12] 1331 	mov	a,@r0
      00255B F7               [12] 1332 	mov	@r1,a
      00255C 09               [12] 1333 	inc	r1
      00255D 77 00            [12] 1334 	mov	@r1,#0x00
      00255F 09               [12] 1335 	inc	r1
      002560 77 40            [12] 1336 	mov	@r1,#0x40
      002562 D0 01            [24] 1337 	pop	ar1
      002564 E5 10            [12] 1338 	mov	a,_bp
      002566 24 04            [12] 1339 	add	a,#0x04
      002568 F8               [12] 1340 	mov	r0,a
      002569 86 02            [24] 1341 	mov	ar2,@r0
      00256B 7D 00            [12] 1342 	mov	r5,#0x00
      00256D 7F 40            [12] 1343 	mov	r7,#0x40
      00256F D0 00            [24] 1344 	pop	ar0
      002571 C0 06            [24] 1345 	push	ar6
      002573 C0 02            [24] 1346 	push	ar2
      002575 C0 01            [24] 1347 	push	ar1
      002577 C0 00            [24] 1348 	push	ar0
      002579 C0 04            [24] 1349 	push	ar4
      00257B 85 00 F0         [24] 1350 	mov	b,ar0
      00257E E5 10            [12] 1351 	mov	a,_bp
      002580 24 07            [12] 1352 	add	a,#0x07
      002582 F8               [12] 1353 	mov	r0,a
      002583 E6               [12] 1354 	mov	a,@r0
      002584 C0 E0            [24] 1355 	push	acc
      002586 08               [12] 1356 	inc	r0
      002587 E6               [12] 1357 	mov	a,@r0
      002588 C0 E0            [24] 1358 	push	acc
      00258A 08               [12] 1359 	inc	r0
      00258B E6               [12] 1360 	mov	a,@r0
      00258C C0 E0            [24] 1361 	push	acc
      00258E 8A 82            [24] 1362 	mov	dpl,r2
      002590 8D 83            [24] 1363 	mov	dph,r5
      002592 8F F0            [24] 1364 	mov	b,r7
      002594 12 20 C5         [24] 1365 	lcall	_update
      002597 AF 82            [24] 1366 	mov	r7,dpl
      002599 E5 81            [12] 1367 	mov	a,sp
      00259B 24 FC            [12] 1368 	add	a,#0xfc
      00259D F5 81            [12] 1369 	mov	sp,a
      00259F D0 00            [24] 1370 	pop	ar0
      0025A1 D0 01            [24] 1371 	pop	ar1
      0025A3 D0 02            [24] 1372 	pop	ar2
      0025A5 D0 06            [24] 1373 	pop	ar6
      0025A7 D0 02            [24] 1374 	pop	ar2
      0025A9 EF               [12] 1375 	mov	a,r7
      0025AA 60 84            [24] 1376 	jz	00112$
                                   1377 ;	walk.c:152: if (!stpush(&cur)) bang();
      0025AC 8A 04            [24] 1378 	mov	ar4,r2
      0025AE 7D 00            [12] 1379 	mov	r5,#0x00
      0025B0 7F 40            [12] 1380 	mov	r7,#0x40
      0025B2 8C 82            [24] 1381 	mov	dpl,r4
      0025B4 8D 83            [24] 1382 	mov	dph,r5
      0025B6 8F F0            [24] 1383 	mov	b,r7
      0025B8 C0 06            [24] 1384 	push	ar6
      0025BA C0 02            [24] 1385 	push	ar2
      0025BC C0 01            [24] 1386 	push	ar1
      0025BE C0 00            [24] 1387 	push	ar0
      0025C0 12 2A AE         [24] 1388 	lcall	_stpush
      0025C3 E5 82            [12] 1389 	mov	a,dpl
      0025C5 D0 00            [24] 1390 	pop	ar0
      0025C7 D0 01            [24] 1391 	pop	ar1
      0025C9 D0 02            [24] 1392 	pop	ar2
      0025CB D0 06            [24] 1393 	pop	ar6
      0025CD 70 13            [24] 1394 	jnz	00110$
      0025CF C0 06            [24] 1395 	push	ar6
      0025D1 C0 02            [24] 1396 	push	ar2
      0025D3 C0 01            [24] 1397 	push	ar1
      0025D5 C0 00            [24] 1398 	push	ar0
      0025D7 12 20 7F         [24] 1399 	lcall	_bang
      0025DA D0 00            [24] 1400 	pop	ar0
      0025DC D0 01            [24] 1401 	pop	ar1
      0025DE D0 02            [24] 1402 	pop	ar2
      0025E0 D0 06            [24] 1403 	pop	ar6
      0025E2                       1404 00110$:
                                   1405 ;	walk.c:153: cur = t;
      0025E2 C0 02            [24] 1406 	push	ar2
      0025E4 C0 00            [24] 1407 	push	ar0
      0025E6 A8 10            [24] 1408 	mov	r0,_bp
      0025E8 08               [12] 1409 	inc	r0
      0025E9 C0 01            [24] 1410 	push	ar1
      0025EB E5 10            [12] 1411 	mov	a,_bp
      0025ED 24 07            [12] 1412 	add	a,#0x07
      0025EF F9               [12] 1413 	mov	r1,a
      0025F0 E6               [12] 1414 	mov	a,@r0
      0025F1 F7               [12] 1415 	mov	@r1,a
      0025F2 09               [12] 1416 	inc	r1
      0025F3 77 00            [12] 1417 	mov	@r1,#0x00
      0025F5 09               [12] 1418 	inc	r1
      0025F6 77 40            [12] 1419 	mov	@r1,#0x40
      0025F8 D0 01            [24] 1420 	pop	ar1
      0025FA A8 10            [24] 1421 	mov	r0,_bp
      0025FC 08               [12] 1422 	inc	r0
      0025FD 08               [12] 1423 	inc	r0
      0025FE 86 02            [24] 1424 	mov	ar2,@r0
      002600 7B 00            [12] 1425 	mov	r3,#0x00
      002602 7F 40            [12] 1426 	mov	r7,#0x40
      002604 D0 00            [24] 1427 	pop	ar0
      002606 C0 06            [24] 1428 	push	ar6
      002608 C0 02            [24] 1429 	push	ar2
      00260A C0 01            [24] 1430 	push	ar1
      00260C C0 00            [24] 1431 	push	ar0
      00260E 74 04            [12] 1432 	mov	a,#0x04
      002610 C0 E0            [24] 1433 	push	acc
      002612 E4               [12] 1434 	clr	a
      002613 C0 E0            [24] 1435 	push	acc
      002615 85 00 F0         [24] 1436 	mov	b,ar0
      002618 E5 10            [12] 1437 	mov	a,_bp
      00261A 24 07            [12] 1438 	add	a,#0x07
      00261C F8               [12] 1439 	mov	r0,a
      00261D E6               [12] 1440 	mov	a,@r0
      00261E C0 E0            [24] 1441 	push	acc
      002620 08               [12] 1442 	inc	r0
      002621 E6               [12] 1443 	mov	a,@r0
      002622 C0 E0            [24] 1444 	push	acc
      002624 08               [12] 1445 	inc	r0
      002625 E6               [12] 1446 	mov	a,@r0
      002626 C0 E0            [24] 1447 	push	acc
      002628 8A 82            [24] 1448 	mov	dpl,r2
      00262A 8B 83            [24] 1449 	mov	dph,r3
      00262C 8F F0            [24] 1450 	mov	b,r7
      00262E 12 2D 07         [24] 1451 	lcall	___memcpy
      002631 E5 81            [12] 1452 	mov	a,sp
      002633 24 FB            [12] 1453 	add	a,#0xfb
      002635 F5 81            [12] 1454 	mov	sp,a
      002637 D0 00            [24] 1455 	pop	ar0
      002639 D0 01            [24] 1456 	pop	ar1
      00263B D0 02            [24] 1457 	pop	ar2
      00263D D0 06            [24] 1458 	pop	ar6
                                   1459 ;	walk.c:154: goto process;
      00263F D0 02            [24] 1460 	pop	ar2
      002641 02 23 BE         [24] 1461 	ljmp	00101$
      002644                       1462 00115$:
                                   1463 ;	walk.c:158: printf("\033[%d;%dH.", cur.r + 4, cur.c + 1);
      002644 86 05            [24] 1464 	mov	ar5,@r0
      002646 08               [12] 1465 	inc	r0
      002647 86 07            [24] 1466 	mov	ar7,@r0
      002649 18               [12] 1467 	dec	r0
      00264A 0D               [12] 1468 	inc	r5
      00264B BD 00 01         [24] 1469 	cjne	r5,#0x00,00165$
      00264E 0F               [12] 1470 	inc	r7
      00264F                       1471 00165$:
      00264F 87 03            [24] 1472 	mov	ar3,@r1
      002651 09               [12] 1473 	inc	r1
      002652 87 04            [24] 1474 	mov	ar4,@r1
      002654 19               [12] 1475 	dec	r1
      002655 74 04            [12] 1476 	mov	a,#0x04
      002657 2B               [12] 1477 	add	a,r3
      002658 FB               [12] 1478 	mov	r3,a
      002659 E4               [12] 1479 	clr	a
      00265A 3C               [12] 1480 	addc	a,r4
      00265B FC               [12] 1481 	mov	r4,a
      00265C C0 06            [24] 1482 	push	ar6
      00265E C0 02            [24] 1483 	push	ar2
      002660 C0 01            [24] 1484 	push	ar1
      002662 C0 00            [24] 1485 	push	ar0
      002664 C0 05            [24] 1486 	push	ar5
      002666 C0 07            [24] 1487 	push	ar7
      002668 C0 03            [24] 1488 	push	ar3
      00266A C0 04            [24] 1489 	push	ar4
      00266C 74 7D            [12] 1490 	mov	a,#___str_3
      00266E C0 E0            [24] 1491 	push	acc
      002670 74 41            [12] 1492 	mov	a,#(___str_3 >> 8)
      002672 C0 E0            [24] 1493 	push	acc
      002674 74 80            [12] 1494 	mov	a,#0x80
      002676 C0 E0            [24] 1495 	push	acc
      002678 12 2E 20         [24] 1496 	lcall	_printf
      00267B E5 81            [12] 1497 	mov	a,sp
      00267D 24 F9            [12] 1498 	add	a,#0xf9
      00267F F5 81            [12] 1499 	mov	sp,a
                                   1500 ;	walk.c:159: setOE(OE76_MASK6);
      002681 75 82 40         [24] 1501 	mov	dpl,#0x40
      002684 12 20 8C         [24] 1502 	lcall	_setOE
      002687 D0 00            [24] 1503 	pop	ar0
      002689 D0 01            [24] 1504 	pop	ar1
      00268B D0 02            [24] 1505 	pop	ar2
      00268D D0 06            [24] 1506 	pop	ar6
                                   1507 ;	walk.c:161: if (stpop(&cur)) goto next;
      00268F C0 00            [24] 1508 	push	ar0
      002691 E5 10            [12] 1509 	mov	a,_bp
      002693 24 03            [12] 1510 	add	a,#0x03
      002695 F8               [12] 1511 	mov	r0,a
      002696 86 04            [24] 1512 	mov	ar4,@r0
      002698 7D 00            [12] 1513 	mov	r5,#0x00
      00269A 7F 40            [12] 1514 	mov	r7,#0x40
      00269C D0 00            [24] 1515 	pop	ar0
      00269E 8C 82            [24] 1516 	mov	dpl,r4
      0026A0 8D 83            [24] 1517 	mov	dph,r5
      0026A2 8F F0            [24] 1518 	mov	b,r7
      0026A4 C0 06            [24] 1519 	push	ar6
      0026A6 C0 02            [24] 1520 	push	ar2
      0026A8 C0 01            [24] 1521 	push	ar1
      0026AA C0 00            [24] 1522 	push	ar0
      0026AC 12 2B 0F         [24] 1523 	lcall	_stpop
      0026AF E5 82            [12] 1524 	mov	a,dpl
      0026B1 D0 00            [24] 1525 	pop	ar0
      0026B3 D0 01            [24] 1526 	pop	ar1
      0026B5 D0 02            [24] 1527 	pop	ar2
      0026B7 D0 06            [24] 1528 	pop	ar6
      0026B9 60 03            [24] 1529 	jz	00166$
      0026BB 02 24 48         [24] 1530 	ljmp	00102$
      0026BE                       1531 00166$:
                                   1532 ;	walk.c:163: unsetOE(OE76_MASK7 | OE76_MASK6);
      0026BE 75 82 C0         [24] 1533 	mov	dpl,#0xc0
      0026C1 12 20 9F         [24] 1534 	lcall	_unsetOE
                                   1535 ;	walk.c:165: return;
                                   1536 ;	walk.c:166: }
      0026C4 85 10 81         [24] 1537 	mov	sp,_bp
      0026C7 D0 10            [24] 1538 	pop	_bp
      0026C9 22               [24] 1539 	ret
                                   1540 ;------------------------------------------------------------
                                   1541 ;Allocation info for local variables in function 'main'
                                   1542 ;------------------------------------------------------------
                                   1543 ;initial                   Allocated to stack - _bp +7
                                   1544 ;N                         Allocated to stack - _bp +11
                                   1545 ;i                         Allocated to stack - _bp +5
                                   1546 ;j                         Allocated to registers r2 r6 
                                   1547 ;sloc0                     Allocated to stack - _bp +1
                                   1548 ;sloc1                     Allocated to stack - _bp +3
                                   1549 ;sloc2                     Allocated to stack - _bp +15
                                   1550 ;------------------------------------------------------------
                                   1551 ;	walk.c:168: void main(void) {
                                   1552 ;	-----------------------------------------
                                   1553 ;	 function main
                                   1554 ;	-----------------------------------------
      0026CA                       1555 _main:
      0026CA C0 10            [24] 1556 	push	_bp
      0026CC E5 81            [12] 1557 	mov	a,sp
      0026CE F5 10            [12] 1558 	mov	_bp,a
      0026D0 24 0C            [12] 1559 	add	a,#0x0c
      0026D2 F5 81            [12] 1560 	mov	sp,a
                                   1561 ;	walk.c:173: i0 = 1u;
      0026D4 78 11            [12] 1562 	mov	r0,#_i0
      0026D6 76 01            [12] 1563 	mov	@r0,#0x01
                                   1564 ;	walk.c:175: P1_7 = 1;
                                   1565 ;	assignBit
      0026D8 D2 97            [12] 1566 	setb	_P1_7
                                   1567 ;	walk.c:176: IT0 = 1;
                                   1568 ;	assignBit
      0026DA D2 88            [12] 1569 	setb	_IT0
                                   1570 ;	walk.c:177: EX0 = 1;
                                   1571 ;	assignBit
      0026DC D2 A8            [12] 1572 	setb	_EX0
                                   1573 ;	walk.c:178: EA = 1;
                                   1574 ;	assignBit
      0026DE D2 AF            [12] 1575 	setb	_EA
                                   1576 ;	walk.c:180: srand(RND);
      0026E0 90 80 00         [24] 1577 	mov	dptr,#_RND
      0026E3 E0               [24] 1578 	movx	a,@dptr
      0026E4 FE               [12] 1579 	mov	r6,a
      0026E5 A3               [24] 1580 	inc	dptr
      0026E6 E0               [24] 1581 	movx	a,@dptr
      0026E7 FF               [12] 1582 	mov	r7,a
      0026E8 8E 82            [24] 1583 	mov	dpl,r6
      0026EA 8F 83            [24] 1584 	mov	dph,r7
      0026EC 12 2C 35         [24] 1585 	lcall	_srand
                                   1586 ;	walk.c:181: stinit();
      0026EF 12 2A A5         [24] 1587 	lcall	_stinit
                                   1588 ;	walk.c:183: puts("\033[2J\033[?25l");
      0026F2 90 41 87         [24] 1589 	mov	dptr,#___str_4
      0026F5 75 F0 80         [24] 1590 	mov	b,#0x80
      0026F8 12 2D 9A         [24] 1591 	lcall	_puts
                                   1592 ;	walk.c:185: while (i0) {
      0026FB E5 10            [12] 1593 	mov	a,_bp
      0026FD 24 07            [12] 1594 	add	a,#0x07
      0026FF F9               [12] 1595 	mov	r1,a
      002700 FF               [12] 1596 	mov	r7,a
      002701 E5 10            [12] 1597 	mov	a,_bp
      002703 24 0B            [12] 1598 	add	a,#0x0b
      002705 F8               [12] 1599 	mov	r0,a
      002706 E4               [12] 1600 	clr	a
      002707 F6               [12] 1601 	mov	@r0,a
      002708 08               [12] 1602 	inc	r0
      002709 F6               [12] 1603 	mov	@r0,a
      00270A                       1604 00108$:
      00270A 78 11            [12] 1605 	mov	r0,#_i0
      00270C E6               [12] 1606 	mov	a,@r0
      00270D 70 03            [24] 1607 	jnz	00182$
      00270F 02 2A 91         [24] 1608 	ljmp	00110$
      002712                       1609 00182$:
                                   1610 ;	walk.c:186: for (i = 0; i < ROWS; i++)
      002712 7B 00            [12] 1611 	mov	r3,#0x00
      002714 7C 00            [12] 1612 	mov	r4,#0x00
      002716 A8 10            [24] 1613 	mov	r0,_bp
      002718 08               [12] 1614 	inc	r0
      002719 E4               [12] 1615 	clr	a
      00271A F6               [12] 1616 	mov	@r0,a
      00271B 08               [12] 1617 	inc	r0
      00271C F6               [12] 1618 	mov	@r0,a
                                   1619 ;	walk.c:187: for (j = 0; j < COLS; j++)
      00271D                       1620 00125$:
      00271D A8 10            [24] 1621 	mov	r0,_bp
      00271F 08               [12] 1622 	inc	r0
      002720 C0 01            [24] 1623 	push	ar1
      002722 E5 10            [12] 1624 	mov	a,_bp
      002724 24 03            [12] 1625 	add	a,#0x03
      002726 F9               [12] 1626 	mov	r1,a
      002727 E6               [12] 1627 	mov	a,@r0
      002728 24 00            [12] 1628 	add	a,#_g
      00272A F7               [12] 1629 	mov	@r1,a
      00272B 08               [12] 1630 	inc	r0
      00272C E6               [12] 1631 	mov	a,@r0
      00272D 34 43            [12] 1632 	addc	a,#(_g >> 8)
      00272F 09               [12] 1633 	inc	r1
      002730 F7               [12] 1634 	mov	@r1,a
      002731 D0 01            [24] 1635 	pop	ar1
      002733 7A 00            [12] 1636 	mov	r2,#0x00
      002735 7E 00            [12] 1637 	mov	r6,#0x00
      002737                       1638 00112$:
                                   1639 ;	walk.c:188: g[i][j] = 0x55u;
      002737 E5 10            [12] 1640 	mov	a,_bp
      002739 24 03            [12] 1641 	add	a,#0x03
      00273B F8               [12] 1642 	mov	r0,a
      00273C EA               [12] 1643 	mov	a,r2
      00273D 26               [12] 1644 	add	a,@r0
      00273E F5 82            [12] 1645 	mov	dpl,a
      002740 EE               [12] 1646 	mov	a,r6
      002741 08               [12] 1647 	inc	r0
      002742 36               [12] 1648 	addc	a,@r0
      002743 F5 83            [12] 1649 	mov	dph,a
      002745 74 55            [12] 1650 	mov	a,#0x55
      002747 F0               [24] 1651 	movx	@dptr,a
                                   1652 ;	walk.c:187: for (j = 0; j < COLS; j++)
      002748 0A               [12] 1653 	inc	r2
      002749 BA 00 01         [24] 1654 	cjne	r2,#0x00,00183$
      00274C 0E               [12] 1655 	inc	r6
      00274D                       1656 00183$:
      00274D C3               [12] 1657 	clr	c
      00274E EA               [12] 1658 	mov	a,r2
      00274F 94 C9            [12] 1659 	subb	a,#0xc9
      002751 EE               [12] 1660 	mov	a,r6
      002752 64 80            [12] 1661 	xrl	a,#0x80
      002754 94 80            [12] 1662 	subb	a,#0x80
      002756 40 DF            [24] 1663 	jc	00112$
                                   1664 ;	walk.c:186: for (i = 0; i < ROWS; i++)
      002758 A8 10            [24] 1665 	mov	r0,_bp
      00275A 08               [12] 1666 	inc	r0
      00275B 74 C9            [12] 1667 	mov	a,#0xc9
      00275D 26               [12] 1668 	add	a,@r0
      00275E F6               [12] 1669 	mov	@r0,a
      00275F E4               [12] 1670 	clr	a
      002760 08               [12] 1671 	inc	r0
      002761 36               [12] 1672 	addc	a,@r0
      002762 F6               [12] 1673 	mov	@r0,a
      002763 0B               [12] 1674 	inc	r3
      002764 BB 00 01         [24] 1675 	cjne	r3,#0x00,00185$
      002767 0C               [12] 1676 	inc	r4
      002768                       1677 00185$:
      002768 C3               [12] 1678 	clr	c
      002769 EB               [12] 1679 	mov	a,r3
      00276A 94 30            [12] 1680 	subb	a,#0x30
      00276C EC               [12] 1681 	mov	a,r4
      00276D 64 80            [12] 1682 	xrl	a,#0x80
      00276F 94 80            [12] 1683 	subb	a,#0x80
      002771 40 AA            [24] 1684 	jc	00125$
                                   1685 ;	walk.c:190: initial.r = rand() % ROWS;
      002773 E5 10            [12] 1686 	mov	a,_bp
      002775 24 07            [12] 1687 	add	a,#0x07
      002777 F8               [12] 1688 	mov	r0,a
      002778 C0 07            [24] 1689 	push	ar7
      00277A C0 01            [24] 1690 	push	ar1
      00277C C0 00            [24] 1691 	push	ar0
      00277E 12 2B 71         [24] 1692 	lcall	_rand
      002781 AD 82            [24] 1693 	mov	r5,dpl
      002783 AE 83            [24] 1694 	mov	r6,dph
      002785 74 30            [12] 1695 	mov	a,#0x30
      002787 C0 E0            [24] 1696 	push	acc
      002789 E4               [12] 1697 	clr	a
      00278A C0 E0            [24] 1698 	push	acc
      00278C 8D 82            [24] 1699 	mov	dpl,r5
      00278E 8E 83            [24] 1700 	mov	dph,r6
      002790 12 2E 75         [24] 1701 	lcall	__modsint
      002793 AD 82            [24] 1702 	mov	r5,dpl
      002795 AE 83            [24] 1703 	mov	r6,dph
      002797 15 81            [12] 1704 	dec	sp
      002799 15 81            [12] 1705 	dec	sp
      00279B D0 00            [24] 1706 	pop	ar0
      00279D D0 01            [24] 1707 	pop	ar1
      00279F A6 05            [24] 1708 	mov	@r0,ar5
      0027A1 08               [12] 1709 	inc	r0
      0027A2 A6 06            [24] 1710 	mov	@r0,ar6
      0027A4 18               [12] 1711 	dec	r0
                                   1712 ;	walk.c:191: initial.c = rand() % COLS;
      0027A5 74 02            [12] 1713 	mov	a,#0x02
      0027A7 29               [12] 1714 	add	a,r1
      0027A8 F8               [12] 1715 	mov	r0,a
      0027A9 C0 01            [24] 1716 	push	ar1
      0027AB C0 00            [24] 1717 	push	ar0
      0027AD 12 2B 71         [24] 1718 	lcall	_rand
      0027B0 AD 82            [24] 1719 	mov	r5,dpl
      0027B2 AE 83            [24] 1720 	mov	r6,dph
      0027B4 74 C9            [12] 1721 	mov	a,#0xc9
      0027B6 C0 E0            [24] 1722 	push	acc
      0027B8 E4               [12] 1723 	clr	a
      0027B9 C0 E0            [24] 1724 	push	acc
      0027BB 8D 82            [24] 1725 	mov	dpl,r5
      0027BD 8E 83            [24] 1726 	mov	dph,r6
      0027BF 12 2E 75         [24] 1727 	lcall	__modsint
      0027C2 AD 82            [24] 1728 	mov	r5,dpl
      0027C4 AE 83            [24] 1729 	mov	r6,dph
      0027C6 15 81            [12] 1730 	dec	sp
      0027C8 15 81            [12] 1731 	dec	sp
      0027CA D0 00            [24] 1732 	pop	ar0
      0027CC A6 05            [24] 1733 	mov	@r0,ar5
      0027CE 08               [12] 1734 	inc	r0
      0027CF A6 06            [24] 1735 	mov	@r0,ar6
      0027D1 18               [12] 1736 	dec	r0
                                   1737 ;	walk.c:193: puts("\033[2J\033[?25l");
      0027D2 90 41 87         [24] 1738 	mov	dptr,#___str_4
      0027D5 75 F0 80         [24] 1739 	mov	b,#0x80
      0027D8 C0 00            [24] 1740 	push	ar0
      0027DA 12 2D 9A         [24] 1741 	lcall	_puts
      0027DD D0 00            [24] 1742 	pop	ar0
      0027DF D0 01            [24] 1743 	pop	ar1
                                   1744 ;	walk.c:194: printf("\033[1;1H% 8u% 8d% 8d", N, initial.r, initial.c);
      0027E1 86 05            [24] 1745 	mov	ar5,@r0
      0027E3 08               [12] 1746 	inc	r0
      0027E4 86 06            [24] 1747 	mov	ar6,@r0
      0027E6 18               [12] 1748 	dec	r0
      0027E7 87 03            [24] 1749 	mov	ar3,@r1
      0027E9 09               [12] 1750 	inc	r1
      0027EA 87 04            [24] 1751 	mov	ar4,@r1
      0027EC 19               [12] 1752 	dec	r1
      0027ED C0 01            [24] 1753 	push	ar1
      0027EF C0 05            [24] 1754 	push	ar5
      0027F1 C0 06            [24] 1755 	push	ar6
      0027F3 C0 03            [24] 1756 	push	ar3
      0027F5 C0 04            [24] 1757 	push	ar4
      0027F7 E5 10            [12] 1758 	mov	a,_bp
      0027F9 24 0B            [12] 1759 	add	a,#0x0b
      0027FB F8               [12] 1760 	mov	r0,a
      0027FC E6               [12] 1761 	mov	a,@r0
      0027FD C0 E0            [24] 1762 	push	acc
      0027FF 08               [12] 1763 	inc	r0
      002800 E6               [12] 1764 	mov	a,@r0
      002801 C0 E0            [24] 1765 	push	acc
      002803 74 92            [12] 1766 	mov	a,#___str_5
      002805 C0 E0            [24] 1767 	push	acc
      002807 74 41            [12] 1768 	mov	a,#(___str_5 >> 8)
      002809 C0 E0            [24] 1769 	push	acc
      00280B 74 80            [12] 1770 	mov	a,#0x80
      00280D C0 E0            [24] 1771 	push	acc
      00280F 12 2E 20         [24] 1772 	lcall	_printf
      002812 E5 81            [12] 1773 	mov	a,sp
      002814 24 F7            [12] 1774 	add	a,#0xf7
      002816 F5 81            [12] 1775 	mov	sp,a
      002818 D0 01            [24] 1776 	pop	ar1
      00281A D0 07            [24] 1777 	pop	ar7
                                   1778 ;	walk.c:196: for (i = 0; i < REG; i++) {
      00281C E5 10            [12] 1779 	mov	a,_bp
      00281E 24 05            [12] 1780 	add	a,#0x05
      002820 F8               [12] 1781 	mov	r0,a
      002821 E4               [12] 1782 	clr	a
      002822 F6               [12] 1783 	mov	@r0,a
      002823 08               [12] 1784 	inc	r0
      002824 F6               [12] 1785 	mov	@r0,a
      002825                       1786 00116$:
                                   1787 ;	walk.c:197: neigh[i].r = neigh[REG + i].r * (1 + rand() % 8);
      002825 C0 07            [24] 1788 	push	ar7
      002827 E5 10            [12] 1789 	mov	a,_bp
      002829 24 05            [12] 1790 	add	a,#0x05
      00282B F8               [12] 1791 	mov	r0,a
      00282C E6               [12] 1792 	mov	a,@r0
      00282D 25 E0            [12] 1793 	add	a,acc
      00282F FB               [12] 1794 	mov	r3,a
      002830 08               [12] 1795 	inc	r0
      002831 E6               [12] 1796 	mov	a,@r0
      002832 33               [12] 1797 	rlc	a
      002833 FC               [12] 1798 	mov	r4,a
      002834 EB               [12] 1799 	mov	a,r3
      002835 2B               [12] 1800 	add	a,r3
      002836 FB               [12] 1801 	mov	r3,a
      002837 EC               [12] 1802 	mov	a,r4
      002838 33               [12] 1803 	rlc	a
      002839 FC               [12] 1804 	mov	r4,a
      00283A E5 10            [12] 1805 	mov	a,_bp
      00283C 24 03            [12] 1806 	add	a,#0x03
      00283E F8               [12] 1807 	mov	r0,a
      00283F EB               [12] 1808 	mov	a,r3
      002840 24 72            [12] 1809 	add	a,#_neigh
      002842 F6               [12] 1810 	mov	@r0,a
      002843 EC               [12] 1811 	mov	a,r4
      002844 34 FF            [12] 1812 	addc	a,#(_neigh >> 8)
      002846 08               [12] 1813 	inc	r0
      002847 F6               [12] 1814 	mov	@r0,a
      002848 E5 10            [12] 1815 	mov	a,_bp
      00284A 24 05            [12] 1816 	add	a,#0x05
      00284C F8               [12] 1817 	mov	r0,a
      00284D 86 06            [24] 1818 	mov	ar6,@r0
      00284F 74 08            [12] 1819 	mov	a,#0x08
      002851 2E               [12] 1820 	add	a,r6
      002852 FE               [12] 1821 	mov	r6,a
      002853 C2 D5            [12] 1822 	clr	F0
      002855 75 F0 04         [24] 1823 	mov	b,#0x04
      002858 EE               [12] 1824 	mov	a,r6
      002859 30 E7 04         [24] 1825 	jnb	acc.7,00187$
      00285C B2 D5            [12] 1826 	cpl	F0
      00285E F4               [12] 1827 	cpl	a
      00285F 04               [12] 1828 	inc	a
      002860                       1829 00187$:
      002860 A4               [48] 1830 	mul	ab
      002861 30 D5 0A         [24] 1831 	jnb	F0,00188$
      002864 F4               [12] 1832 	cpl	a
      002865 24 01            [12] 1833 	add	a,#0x01
      002867 C5 F0            [12] 1834 	xch	a,b
      002869 F4               [12] 1835 	cpl	a
      00286A 34 00            [12] 1836 	addc	a,#0x00
      00286C C5 F0            [12] 1837 	xch	a,b
      00286E                       1838 00188$:
      00286E FE               [12] 1839 	mov	r6,a
      00286F AD F0            [24] 1840 	mov	r5,b
      002871 24 72            [12] 1841 	add	a,#_neigh
      002873 F5 82            [12] 1842 	mov	dpl,a
      002875 ED               [12] 1843 	mov	a,r5
      002876 34 FF            [12] 1844 	addc	a,#(_neigh >> 8)
      002878 F5 83            [12] 1845 	mov	dph,a
      00287A A8 10            [24] 1846 	mov	r0,_bp
      00287C 08               [12] 1847 	inc	r0
      00287D E0               [24] 1848 	movx	a,@dptr
      00287E F6               [12] 1849 	mov	@r0,a
      00287F A3               [24] 1850 	inc	dptr
      002880 E0               [24] 1851 	movx	a,@dptr
      002881 08               [12] 1852 	inc	r0
      002882 F6               [12] 1853 	mov	@r0,a
      002883 C0 06            [24] 1854 	push	ar6
      002885 C0 05            [24] 1855 	push	ar5
      002887 C0 04            [24] 1856 	push	ar4
      002889 C0 03            [24] 1857 	push	ar3
      00288B C0 01            [24] 1858 	push	ar1
      00288D 12 2B 71         [24] 1859 	lcall	_rand
      002890 AA 82            [24] 1860 	mov	r2,dpl
      002892 AF 83            [24] 1861 	mov	r7,dph
      002894 74 08            [12] 1862 	mov	a,#0x08
      002896 C0 E0            [24] 1863 	push	acc
      002898 E4               [12] 1864 	clr	a
      002899 C0 E0            [24] 1865 	push	acc
      00289B 8A 82            [24] 1866 	mov	dpl,r2
      00289D 8F 83            [24] 1867 	mov	dph,r7
      00289F 12 2E 75         [24] 1868 	lcall	__modsint
      0028A2 AA 82            [24] 1869 	mov	r2,dpl
      0028A4 AF 83            [24] 1870 	mov	r7,dph
      0028A6 15 81            [12] 1871 	dec	sp
      0028A8 15 81            [12] 1872 	dec	sp
      0028AA D0 01            [24] 1873 	pop	ar1
      0028AC D0 03            [24] 1874 	pop	ar3
      0028AE D0 04            [24] 1875 	pop	ar4
      0028B0 D0 05            [24] 1876 	pop	ar5
      0028B2 D0 06            [24] 1877 	pop	ar6
      0028B4 0A               [12] 1878 	inc	r2
      0028B5 BA 00 01         [24] 1879 	cjne	r2,#0x00,00189$
      0028B8 0F               [12] 1880 	inc	r7
      0028B9                       1881 00189$:
      0028B9 C0 06            [24] 1882 	push	ar6
      0028BB C0 05            [24] 1883 	push	ar5
      0028BD C0 04            [24] 1884 	push	ar4
      0028BF C0 03            [24] 1885 	push	ar3
      0028C1 C0 01            [24] 1886 	push	ar1
      0028C3 C0 02            [24] 1887 	push	ar2
      0028C5 C0 07            [24] 1888 	push	ar7
      0028C7 A8 10            [24] 1889 	mov	r0,_bp
      0028C9 08               [12] 1890 	inc	r0
      0028CA 86 82            [24] 1891 	mov	dpl,@r0
      0028CC 08               [12] 1892 	inc	r0
      0028CD 86 83            [24] 1893 	mov	dph,@r0
      0028CF 12 2C 69         [24] 1894 	lcall	__mulint
      0028D2 AA 82            [24] 1895 	mov	r2,dpl
      0028D4 AF 83            [24] 1896 	mov	r7,dph
      0028D6 15 81            [12] 1897 	dec	sp
      0028D8 15 81            [12] 1898 	dec	sp
      0028DA D0 01            [24] 1899 	pop	ar1
      0028DC D0 03            [24] 1900 	pop	ar3
      0028DE D0 04            [24] 1901 	pop	ar4
      0028E0 D0 05            [24] 1902 	pop	ar5
      0028E2 D0 06            [24] 1903 	pop	ar6
      0028E4 E5 10            [12] 1904 	mov	a,_bp
      0028E6 24 03            [12] 1905 	add	a,#0x03
      0028E8 F8               [12] 1906 	mov	r0,a
      0028E9 86 82            [24] 1907 	mov	dpl,@r0
      0028EB 08               [12] 1908 	inc	r0
      0028EC 86 83            [24] 1909 	mov	dph,@r0
      0028EE EA               [12] 1910 	mov	a,r2
      0028EF F0               [24] 1911 	movx	@dptr,a
      0028F0 EF               [12] 1912 	mov	a,r7
      0028F1 A3               [24] 1913 	inc	dptr
      0028F2 F0               [24] 1914 	movx	@dptr,a
                                   1915 ;	walk.c:198: neigh[i].c = neigh[REG + i].c * (1 + rand() % 8);
      0028F3 EB               [12] 1916 	mov	a,r3
      0028F4 24 72            [12] 1917 	add	a,#_neigh
      0028F6 FB               [12] 1918 	mov	r3,a
      0028F7 EC               [12] 1919 	mov	a,r4
      0028F8 34 FF            [12] 1920 	addc	a,#(_neigh >> 8)
      0028FA FC               [12] 1921 	mov	r4,a
      0028FB 74 02            [12] 1922 	mov	a,#0x02
      0028FD 2B               [12] 1923 	add	a,r3
      0028FE FA               [12] 1924 	mov	r2,a
      0028FF E4               [12] 1925 	clr	a
      002900 3C               [12] 1926 	addc	a,r4
      002901 FF               [12] 1927 	mov	r7,a
      002902 EE               [12] 1928 	mov	a,r6
      002903 24 72            [12] 1929 	add	a,#_neigh
      002905 FE               [12] 1930 	mov	r6,a
      002906 ED               [12] 1931 	mov	a,r5
      002907 34 FF            [12] 1932 	addc	a,#(_neigh >> 8)
      002909 FD               [12] 1933 	mov	r5,a
      00290A 8E 82            [24] 1934 	mov	dpl,r6
      00290C 8D 83            [24] 1935 	mov	dph,r5
      00290E A3               [24] 1936 	inc	dptr
      00290F A3               [24] 1937 	inc	dptr
      002910 E5 10            [12] 1938 	mov	a,_bp
      002912 24 03            [12] 1939 	add	a,#0x03
      002914 F8               [12] 1940 	mov	r0,a
      002915 E0               [24] 1941 	movx	a,@dptr
      002916 F6               [12] 1942 	mov	@r0,a
      002917 A3               [24] 1943 	inc	dptr
      002918 E0               [24] 1944 	movx	a,@dptr
      002919 08               [12] 1945 	inc	r0
      00291A F6               [12] 1946 	mov	@r0,a
      00291B C0 07            [24] 1947 	push	ar7
      00291D C0 04            [24] 1948 	push	ar4
      00291F C0 03            [24] 1949 	push	ar3
      002921 C0 02            [24] 1950 	push	ar2
      002923 C0 01            [24] 1951 	push	ar1
      002925 12 2B 71         [24] 1952 	lcall	_rand
      002928 AD 82            [24] 1953 	mov	r5,dpl
      00292A AE 83            [24] 1954 	mov	r6,dph
      00292C 74 08            [12] 1955 	mov	a,#0x08
      00292E C0 E0            [24] 1956 	push	acc
      002930 E4               [12] 1957 	clr	a
      002931 C0 E0            [24] 1958 	push	acc
      002933 8D 82            [24] 1959 	mov	dpl,r5
      002935 8E 83            [24] 1960 	mov	dph,r6
      002937 12 2E 75         [24] 1961 	lcall	__modsint
      00293A AD 82            [24] 1962 	mov	r5,dpl
      00293C AE 83            [24] 1963 	mov	r6,dph
      00293E 15 81            [12] 1964 	dec	sp
      002940 15 81            [12] 1965 	dec	sp
      002942 D0 01            [24] 1966 	pop	ar1
      002944 D0 02            [24] 1967 	pop	ar2
      002946 D0 03            [24] 1968 	pop	ar3
      002948 D0 04            [24] 1969 	pop	ar4
      00294A D0 07            [24] 1970 	pop	ar7
      00294C 0D               [12] 1971 	inc	r5
      00294D BD 00 01         [24] 1972 	cjne	r5,#0x00,00190$
      002950 0E               [12] 1973 	inc	r6
      002951                       1974 00190$:
      002951 C0 07            [24] 1975 	push	ar7
      002953 C0 04            [24] 1976 	push	ar4
      002955 C0 03            [24] 1977 	push	ar3
      002957 C0 02            [24] 1978 	push	ar2
      002959 C0 01            [24] 1979 	push	ar1
      00295B C0 05            [24] 1980 	push	ar5
      00295D C0 06            [24] 1981 	push	ar6
      00295F E5 10            [12] 1982 	mov	a,_bp
      002961 24 03            [12] 1983 	add	a,#0x03
      002963 F8               [12] 1984 	mov	r0,a
      002964 86 82            [24] 1985 	mov	dpl,@r0
      002966 08               [12] 1986 	inc	r0
      002967 86 83            [24] 1987 	mov	dph,@r0
      002969 12 2C 69         [24] 1988 	lcall	__mulint
      00296C AD 82            [24] 1989 	mov	r5,dpl
      00296E AE 83            [24] 1990 	mov	r6,dph
      002970 15 81            [12] 1991 	dec	sp
      002972 15 81            [12] 1992 	dec	sp
      002974 D0 01            [24] 1993 	pop	ar1
      002976 D0 02            [24] 1994 	pop	ar2
      002978 D0 03            [24] 1995 	pop	ar3
      00297A D0 04            [24] 1996 	pop	ar4
      00297C D0 07            [24] 1997 	pop	ar7
      00297E 8A 82            [24] 1998 	mov	dpl,r2
      002980 8F 83            [24] 1999 	mov	dph,r7
      002982 ED               [12] 2000 	mov	a,r5
      002983 F0               [24] 2001 	movx	@dptr,a
      002984 EE               [12] 2002 	mov	a,r6
      002985 A3               [24] 2003 	inc	dptr
      002986 F0               [24] 2004 	movx	@dptr,a
                                   2005 ;	walk.c:199: printf("% 8d% 8d", neigh[i].r, neigh[i].c);
      002987 8B 82            [24] 2006 	mov	dpl,r3
      002989 8C 83            [24] 2007 	mov	dph,r4
      00298B E0               [24] 2008 	movx	a,@dptr
      00298C FB               [12] 2009 	mov	r3,a
      00298D A3               [24] 2010 	inc	dptr
      00298E E0               [24] 2011 	movx	a,@dptr
      00298F FC               [12] 2012 	mov	r4,a
      002990 C0 07            [24] 2013 	push	ar7
      002992 C0 01            [24] 2014 	push	ar1
      002994 C0 05            [24] 2015 	push	ar5
      002996 C0 06            [24] 2016 	push	ar6
      002998 C0 03            [24] 2017 	push	ar3
      00299A C0 04            [24] 2018 	push	ar4
      00299C 74 A5            [12] 2019 	mov	a,#___str_6
      00299E C0 E0            [24] 2020 	push	acc
      0029A0 74 41            [12] 2021 	mov	a,#(___str_6 >> 8)
      0029A2 C0 E0            [24] 2022 	push	acc
      0029A4 74 80            [12] 2023 	mov	a,#0x80
      0029A6 C0 E0            [24] 2024 	push	acc
      0029A8 12 2E 20         [24] 2025 	lcall	_printf
      0029AB E5 81            [12] 2026 	mov	a,sp
      0029AD 24 F9            [12] 2027 	add	a,#0xf9
      0029AF F5 81            [12] 2028 	mov	sp,a
      0029B1 D0 01            [24] 2029 	pop	ar1
      0029B3 D0 07            [24] 2030 	pop	ar7
                                   2031 ;	walk.c:196: for (i = 0; i < REG; i++) {
      0029B5 E5 10            [12] 2032 	mov	a,_bp
      0029B7 24 05            [12] 2033 	add	a,#0x05
      0029B9 F8               [12] 2034 	mov	r0,a
      0029BA 06               [12] 2035 	inc	@r0
      0029BB B6 00 02         [24] 2036 	cjne	@r0,#0x00,00191$
      0029BE 08               [12] 2037 	inc	r0
      0029BF 06               [12] 2038 	inc	@r0
      0029C0                       2039 00191$:
      0029C0 E5 10            [12] 2040 	mov	a,_bp
      0029C2 24 05            [12] 2041 	add	a,#0x05
      0029C4 F8               [12] 2042 	mov	r0,a
      0029C5 86 05            [24] 2043 	mov	ar5,@r0
      0029C7 08               [12] 2044 	inc	r0
      0029C8 86 06            [24] 2045 	mov	ar6,@r0
      0029CA C3               [12] 2046 	clr	c
      0029CB ED               [12] 2047 	mov	a,r5
      0029CC 94 08            [12] 2048 	subb	a,#0x08
      0029CE EE               [12] 2049 	mov	a,r6
      0029CF 94 00            [12] 2050 	subb	a,#0x00
      0029D1 D0 07            [24] 2051 	pop	ar7
      0029D3 50 03            [24] 2052 	jnc	00192$
      0029D5 02 28 25         [24] 2053 	ljmp	00116$
      0029D8                       2054 00192$:
                                   2055 ;	walk.c:202: OE76 = OE76_0;
      0029D8 78 12            [12] 2056 	mov	r0,#_OE76
      0029DA 76 3F            [12] 2057 	mov	@r0,#0x3f
                                   2058 ;	walk.c:203: setOE(OE76_NC);
      0029DC 75 82 00         [24] 2059 	mov	dpl,#0x00
      0029DF C0 07            [24] 2060 	push	ar7
      0029E1 C0 01            [24] 2061 	push	ar1
      0029E3 12 20 8C         [24] 2062 	lcall	_setOE
      0029E6 D0 01            [24] 2063 	pop	ar1
      0029E8 D0 07            [24] 2064 	pop	ar7
                                   2065 ;	walk.c:205: walk(&initial);
      0029EA 8F 04            [24] 2066 	mov	ar4,r7
      0029EC 7D 00            [12] 2067 	mov	r5,#0x00
      0029EE 7E 40            [12] 2068 	mov	r6,#0x40
      0029F0 8C 82            [24] 2069 	mov	dpl,r4
      0029F2 8D 83            [24] 2070 	mov	dph,r5
      0029F4 8E F0            [24] 2071 	mov	b,r6
      0029F6 C0 07            [24] 2072 	push	ar7
      0029F8 C0 01            [24] 2073 	push	ar1
      0029FA 12 23 52         [24] 2074 	lcall	_walk
      0029FD D0 01            [24] 2075 	pop	ar1
      0029FF D0 07            [24] 2076 	pop	ar7
                                   2077 ;	walk.c:207: for (i = 0; i < ROWS; i++)
      002A01 E5 10            [12] 2078 	mov	a,_bp
      002A03 24 05            [12] 2079 	add	a,#0x05
      002A05 F8               [12] 2080 	mov	r0,a
      002A06 E4               [12] 2081 	clr	a
      002A07 F6               [12] 2082 	mov	@r0,a
      002A08 08               [12] 2083 	inc	r0
      002A09 F6               [12] 2084 	mov	@r0,a
      002A0A 7B 00            [12] 2085 	mov	r3,#0x00
      002A0C 7C 00            [12] 2086 	mov	r4,#0x00
                                   2087 ;	walk.c:208: for (j = 0; j < COLS; j++)
      002A0E                       2088 00132$:
      002A0E E5 10            [12] 2089 	mov	a,_bp
      002A10 24 03            [12] 2090 	add	a,#0x03
      002A12 F8               [12] 2091 	mov	r0,a
      002A13 EB               [12] 2092 	mov	a,r3
      002A14 24 00            [12] 2093 	add	a,#_g
      002A16 F6               [12] 2094 	mov	@r0,a
      002A17 EC               [12] 2095 	mov	a,r4
      002A18 34 43            [12] 2096 	addc	a,#(_g >> 8)
      002A1A 08               [12] 2097 	inc	r0
      002A1B F6               [12] 2098 	mov	@r0,a
      002A1C 7A 00            [12] 2099 	mov	r2,#0x00
      002A1E 7E 00            [12] 2100 	mov	r6,#0x00
      002A20                       2101 00118$:
                                   2102 ;	walk.c:209: if (g[i][j] != 0xaau) bang();
      002A20 E5 10            [12] 2103 	mov	a,_bp
      002A22 24 03            [12] 2104 	add	a,#0x03
      002A24 F8               [12] 2105 	mov	r0,a
      002A25 EA               [12] 2106 	mov	a,r2
      002A26 26               [12] 2107 	add	a,@r0
      002A27 F5 82            [12] 2108 	mov	dpl,a
      002A29 EE               [12] 2109 	mov	a,r6
      002A2A 08               [12] 2110 	inc	r0
      002A2B 36               [12] 2111 	addc	a,@r0
      002A2C F5 83            [12] 2112 	mov	dph,a
      002A2E E0               [24] 2113 	movx	a,@dptr
      002A2F FD               [12] 2114 	mov	r5,a
      002A30 BD AA 02         [24] 2115 	cjne	r5,#0xaa,00193$
      002A33 80 1B            [24] 2116 	sjmp	00119$
      002A35                       2117 00193$:
      002A35 C0 07            [24] 2118 	push	ar7
      002A37 C0 06            [24] 2119 	push	ar6
      002A39 C0 04            [24] 2120 	push	ar4
      002A3B C0 03            [24] 2121 	push	ar3
      002A3D C0 02            [24] 2122 	push	ar2
      002A3F C0 01            [24] 2123 	push	ar1
      002A41 12 20 7F         [24] 2124 	lcall	_bang
      002A44 D0 01            [24] 2125 	pop	ar1
      002A46 D0 02            [24] 2126 	pop	ar2
      002A48 D0 03            [24] 2127 	pop	ar3
      002A4A D0 04            [24] 2128 	pop	ar4
      002A4C D0 06            [24] 2129 	pop	ar6
      002A4E D0 07            [24] 2130 	pop	ar7
      002A50                       2131 00119$:
                                   2132 ;	walk.c:208: for (j = 0; j < COLS; j++)
      002A50 0A               [12] 2133 	inc	r2
      002A51 BA 00 01         [24] 2134 	cjne	r2,#0x00,00194$
      002A54 0E               [12] 2135 	inc	r6
      002A55                       2136 00194$:
      002A55 C3               [12] 2137 	clr	c
      002A56 EA               [12] 2138 	mov	a,r2
      002A57 94 C9            [12] 2139 	subb	a,#0xc9
      002A59 EE               [12] 2140 	mov	a,r6
      002A5A 64 80            [12] 2141 	xrl	a,#0x80
      002A5C 94 80            [12] 2142 	subb	a,#0x80
      002A5E 40 C0            [24] 2143 	jc	00118$
                                   2144 ;	walk.c:207: for (i = 0; i < ROWS; i++)
      002A60 74 C9            [12] 2145 	mov	a,#0xc9
      002A62 2B               [12] 2146 	add	a,r3
      002A63 FB               [12] 2147 	mov	r3,a
      002A64 E4               [12] 2148 	clr	a
      002A65 3C               [12] 2149 	addc	a,r4
      002A66 FC               [12] 2150 	mov	r4,a
      002A67 E5 10            [12] 2151 	mov	a,_bp
      002A69 24 05            [12] 2152 	add	a,#0x05
      002A6B F8               [12] 2153 	mov	r0,a
      002A6C 06               [12] 2154 	inc	@r0
      002A6D B6 00 02         [24] 2155 	cjne	@r0,#0x00,00196$
      002A70 08               [12] 2156 	inc	r0
      002A71 06               [12] 2157 	inc	@r0
      002A72                       2158 00196$:
      002A72 E5 10            [12] 2159 	mov	a,_bp
      002A74 24 05            [12] 2160 	add	a,#0x05
      002A76 F8               [12] 2161 	mov	r0,a
      002A77 C3               [12] 2162 	clr	c
      002A78 E6               [12] 2163 	mov	a,@r0
      002A79 94 30            [12] 2164 	subb	a,#0x30
      002A7B 08               [12] 2165 	inc	r0
      002A7C E6               [12] 2166 	mov	a,@r0
      002A7D 64 80            [12] 2167 	xrl	a,#0x80
      002A7F 94 80            [12] 2168 	subb	a,#0x80
      002A81 40 8B            [24] 2169 	jc	00132$
                                   2170 ;	walk.c:211: N++;
      002A83 E5 10            [12] 2171 	mov	a,_bp
      002A85 24 0B            [12] 2172 	add	a,#0x0b
      002A87 F8               [12] 2173 	mov	r0,a
      002A88 06               [12] 2174 	inc	@r0
      002A89 B6 00 02         [24] 2175 	cjne	@r0,#0x00,00198$
      002A8C 08               [12] 2176 	inc	r0
      002A8D 06               [12] 2177 	inc	@r0
      002A8E                       2178 00198$:
      002A8E 02 27 0A         [24] 2179 	ljmp	00108$
      002A91                       2180 00110$:
                                   2181 ;	walk.c:214: EA = 0;
                                   2182 ;	assignBit
      002A91 C2 AF            [12] 2183 	clr	_EA
                                   2184 ;	walk.c:216: puts("\033[2J\033[?25h");
      002A93 90 41 AE         [24] 2185 	mov	dptr,#___str_7
      002A96 75 F0 80         [24] 2186 	mov	b,#0x80
      002A99 12 2D 9A         [24] 2187 	lcall	_puts
                                   2188 ;	walk.c:35: PCON |= 2;
      002A9C 43 87 02         [24] 2189 	orl	_PCON,#0x02
                                   2190 ;	walk.c:220: return;
                                   2191 ;	walk.c:221: }
      002A9F 85 10 81         [24] 2192 	mov	sp,_bp
      002AA2 D0 10            [24] 2193 	pop	_bp
      002AA4 22               [24] 2194 	ret
                                   2195 ;------------------------------------------------------------
                                   2196 ;Allocation info for local variables in function 'stinit'
                                   2197 ;------------------------------------------------------------
                                   2198 ;	walk.c:223: static void stinit(void) {
                                   2199 ;	-----------------------------------------
                                   2200 ;	 function stinit
                                   2201 ;	-----------------------------------------
      002AA5                       2202 _stinit:
                                   2203 ;	walk.c:224: sp = -1;
      002AA5 90 FF 70         [24] 2204 	mov	dptr,#_sp
      002AA8 74 FF            [12] 2205 	mov	a,#0xff
      002AAA F0               [24] 2206 	movx	@dptr,a
      002AAB A3               [24] 2207 	inc	dptr
      002AAC F0               [24] 2208 	movx	@dptr,a
                                   2209 ;	walk.c:225: return;
                                   2210 ;	walk.c:226: }
      002AAD 22               [24] 2211 	ret
                                   2212 ;------------------------------------------------------------
                                   2213 ;Allocation info for local variables in function 'stpush'
                                   2214 ;------------------------------------------------------------
                                   2215 ;t                         Allocated to registers r5 r6 r7 
                                   2216 ;------------------------------------------------------------
                                   2217 ;	walk.c:228: static uint8_t stpush(struct node *t) {
                                   2218 ;	-----------------------------------------
                                   2219 ;	 function stpush
                                   2220 ;	-----------------------------------------
      002AAE                       2221 _stpush:
      002AAE AD 82            [24] 2222 	mov	r5,dpl
      002AB0 AE 83            [24] 2223 	mov	r6,dph
      002AB2 AF F0            [24] 2224 	mov	r7,b
                                   2225 ;	walk.c:229: if (sp == (SMAX - 1)) return 0u;
      002AB4 90 FF 70         [24] 2226 	mov	dptr,#_sp
      002AB7 E0               [24] 2227 	movx	a,@dptr
      002AB8 FB               [12] 2228 	mov	r3,a
      002AB9 A3               [24] 2229 	inc	dptr
      002ABA E0               [24] 2230 	movx	a,@dptr
      002ABB FC               [12] 2231 	mov	r4,a
      002ABC BB AF 07         [24] 2232 	cjne	r3,#0xaf,00102$
      002ABF BC 25 04         [24] 2233 	cjne	r4,#0x25,00102$
      002AC2 75 82 00         [24] 2234 	mov	dpl,#0x00
      002AC5 22               [24] 2235 	ret
      002AC6                       2236 00102$:
                                   2237 ;	walk.c:230: sp++;
      002AC6 90 FF 70         [24] 2238 	mov	dptr,#_sp
      002AC9 74 01            [12] 2239 	mov	a,#0x01
      002ACB 2B               [12] 2240 	add	a,r3
      002ACC F0               [24] 2241 	movx	@dptr,a
      002ACD E4               [12] 2242 	clr	a
      002ACE 3C               [12] 2243 	addc	a,r4
      002ACF A3               [24] 2244 	inc	dptr
      002AD0 F0               [24] 2245 	movx	@dptr,a
                                   2246 ;	walk.c:231: stack[sp] = *t;
      002AD1 90 FF 70         [24] 2247 	mov	dptr,#_sp
      002AD4 E0               [24] 2248 	movx	a,@dptr
      002AD5 FB               [12] 2249 	mov	r3,a
      002AD6 A3               [24] 2250 	inc	dptr
      002AD7 E0               [24] 2251 	movx	a,@dptr
      002AD8 FC               [12] 2252 	mov	r4,a
      002AD9 EB               [12] 2253 	mov	a,r3
      002ADA 2B               [12] 2254 	add	a,r3
      002ADB FB               [12] 2255 	mov	r3,a
      002ADC EC               [12] 2256 	mov	a,r4
      002ADD 33               [12] 2257 	rlc	a
      002ADE FC               [12] 2258 	mov	r4,a
      002ADF EB               [12] 2259 	mov	a,r3
      002AE0 2B               [12] 2260 	add	a,r3
      002AE1 FB               [12] 2261 	mov	r3,a
      002AE2 EC               [12] 2262 	mov	a,r4
      002AE3 33               [12] 2263 	rlc	a
      002AE4 FC               [12] 2264 	mov	r4,a
      002AE5 EB               [12] 2265 	mov	a,r3
      002AE6 24 B0            [12] 2266 	add	a,#_stack
      002AE8 FB               [12] 2267 	mov	r3,a
      002AE9 EC               [12] 2268 	mov	a,r4
      002AEA 34 68            [12] 2269 	addc	a,#(_stack >> 8)
      002AEC FC               [12] 2270 	mov	r4,a
      002AED 7A 00            [12] 2271 	mov	r2,#0x00
      002AEF 74 04            [12] 2272 	mov	a,#0x04
      002AF1 C0 E0            [24] 2273 	push	acc
      002AF3 E4               [12] 2274 	clr	a
      002AF4 C0 E0            [24] 2275 	push	acc
      002AF6 C0 05            [24] 2276 	push	ar5
      002AF8 C0 06            [24] 2277 	push	ar6
      002AFA C0 07            [24] 2278 	push	ar7
      002AFC 8B 82            [24] 2279 	mov	dpl,r3
      002AFE 8C 83            [24] 2280 	mov	dph,r4
      002B00 8A F0            [24] 2281 	mov	b,r2
      002B02 12 2D 07         [24] 2282 	lcall	___memcpy
      002B05 E5 81            [12] 2283 	mov	a,sp
      002B07 24 FB            [12] 2284 	add	a,#0xfb
      002B09 F5 81            [12] 2285 	mov	sp,a
                                   2286 ;	walk.c:232: return 1u;
      002B0B 75 82 01         [24] 2287 	mov	dpl,#0x01
                                   2288 ;	walk.c:233: }
      002B0E 22               [24] 2289 	ret
                                   2290 ;------------------------------------------------------------
                                   2291 ;Allocation info for local variables in function 'stpop'
                                   2292 ;------------------------------------------------------------
                                   2293 ;t                         Allocated to registers r5 r6 r7 
                                   2294 ;------------------------------------------------------------
                                   2295 ;	walk.c:235: static uint8_t stpop(struct node *t) {
                                   2296 ;	-----------------------------------------
                                   2297 ;	 function stpop
                                   2298 ;	-----------------------------------------
      002B0F                       2299 _stpop:
      002B0F AD 82            [24] 2300 	mov	r5,dpl
      002B11 AE 83            [24] 2301 	mov	r6,dph
      002B13 AF F0            [24] 2302 	mov	r7,b
                                   2303 ;	walk.c:236: if (sp == -1) return 0u;
      002B15 90 FF 70         [24] 2304 	mov	dptr,#_sp
      002B18 E0               [24] 2305 	movx	a,@dptr
      002B19 FB               [12] 2306 	mov	r3,a
      002B1A A3               [24] 2307 	inc	dptr
      002B1B E0               [24] 2308 	movx	a,@dptr
      002B1C FC               [12] 2309 	mov	r4,a
      002B1D BB FF 07         [24] 2310 	cjne	r3,#0xff,00102$
      002B20 BC FF 04         [24] 2311 	cjne	r4,#0xff,00102$
      002B23 75 82 00         [24] 2312 	mov	dpl,#0x00
      002B26 22               [24] 2313 	ret
      002B27                       2314 00102$:
                                   2315 ;	walk.c:237: *t = stack[sp];
      002B27 EB               [12] 2316 	mov	a,r3
      002B28 2B               [12] 2317 	add	a,r3
      002B29 FB               [12] 2318 	mov	r3,a
      002B2A EC               [12] 2319 	mov	a,r4
      002B2B 33               [12] 2320 	rlc	a
      002B2C FC               [12] 2321 	mov	r4,a
      002B2D EB               [12] 2322 	mov	a,r3
      002B2E 2B               [12] 2323 	add	a,r3
      002B2F FB               [12] 2324 	mov	r3,a
      002B30 EC               [12] 2325 	mov	a,r4
      002B31 33               [12] 2326 	rlc	a
      002B32 FC               [12] 2327 	mov	r4,a
      002B33 EB               [12] 2328 	mov	a,r3
      002B34 24 B0            [12] 2329 	add	a,#_stack
      002B36 FB               [12] 2330 	mov	r3,a
      002B37 EC               [12] 2331 	mov	a,r4
      002B38 34 68            [12] 2332 	addc	a,#(_stack >> 8)
      002B3A FC               [12] 2333 	mov	r4,a
      002B3B 7A 00            [12] 2334 	mov	r2,#0x00
      002B3D 74 04            [12] 2335 	mov	a,#0x04
      002B3F C0 E0            [24] 2336 	push	acc
      002B41 E4               [12] 2337 	clr	a
      002B42 C0 E0            [24] 2338 	push	acc
      002B44 C0 03            [24] 2339 	push	ar3
      002B46 C0 04            [24] 2340 	push	ar4
      002B48 C0 02            [24] 2341 	push	ar2
      002B4A 8D 82            [24] 2342 	mov	dpl,r5
      002B4C 8E 83            [24] 2343 	mov	dph,r6
      002B4E 8F F0            [24] 2344 	mov	b,r7
      002B50 12 2D 07         [24] 2345 	lcall	___memcpy
      002B53 E5 81            [12] 2346 	mov	a,sp
      002B55 24 FB            [12] 2347 	add	a,#0xfb
      002B57 F5 81            [12] 2348 	mov	sp,a
                                   2349 ;	walk.c:238: sp--;
      002B59 90 FF 70         [24] 2350 	mov	dptr,#_sp
      002B5C E0               [24] 2351 	movx	a,@dptr
      002B5D 24 FF            [12] 2352 	add	a,#0xff
      002B5F FE               [12] 2353 	mov	r6,a
      002B60 A3               [24] 2354 	inc	dptr
      002B61 E0               [24] 2355 	movx	a,@dptr
      002B62 34 FF            [12] 2356 	addc	a,#0xff
      002B64 FF               [12] 2357 	mov	r7,a
      002B65 90 FF 70         [24] 2358 	mov	dptr,#_sp
      002B68 EE               [12] 2359 	mov	a,r6
      002B69 F0               [24] 2360 	movx	@dptr,a
      002B6A EF               [12] 2361 	mov	a,r7
      002B6B A3               [24] 2362 	inc	dptr
      002B6C F0               [24] 2363 	movx	@dptr,a
                                   2364 ;	walk.c:239: return 1u;
      002B6D 75 82 01         [24] 2365 	mov	dpl,#0x01
                                   2366 ;	walk.c:240: }
      002B70 22               [24] 2367 	ret
                                   2368 	.area CSEG    (CODE)
                                   2369 	.area CONST   (CODE)
                                   2370 	.area CONST   (CODE)
      004153                       2371 ___str_0:
      004153 4D 65 6D 6F 72 79 20  2372 	.ascii "Memory error"
             65 72 72 6F 72
      00415F 00                    2373 	.db 0x00
                                   2374 	.area CSEG    (CODE)
                                   2375 	.area CONST   (CODE)
      004160                       2376 ___str_1:
      004160 1B                    2377 	.db 0x1b
      004161 5B 25 64 3B 25 64 48  2378 	.ascii "[%d;%dHo"
             6F
      004169 00                    2379 	.db 0x00
                                   2380 	.area CSEG    (CODE)
                                   2381 	.area CONST   (CODE)
      00416A                       2382 ___str_2:
      00416A 1B                    2383 	.db 0x1b
      00416B 5B 32 3B 31 48 25 20  2384 	.ascii "[2;1H% 8d% 8d% 8d"
             38 64 25 20 38 64 25
             20 38 64
      00417C 00                    2385 	.db 0x00
                                   2386 	.area CSEG    (CODE)
                                   2387 	.area CONST   (CODE)
      00417D                       2388 ___str_3:
      00417D 1B                    2389 	.db 0x1b
      00417E 5B 25 64 3B 25 64 48  2390 	.ascii "[%d;%dH."
             2E
      004186 00                    2391 	.db 0x00
                                   2392 	.area CSEG    (CODE)
                                   2393 	.area CONST   (CODE)
      004187                       2394 ___str_4:
      004187 1B                    2395 	.db 0x1b
      004188 5B 32 4A              2396 	.ascii "[2J"
      00418B 1B                    2397 	.db 0x1b
      00418C 5B 3F 32 35 6C        2398 	.ascii "[?25l"
      004191 00                    2399 	.db 0x00
                                   2400 	.area CSEG    (CODE)
                                   2401 	.area CONST   (CODE)
      004192                       2402 ___str_5:
      004192 1B                    2403 	.db 0x1b
      004193 5B 31 3B 31 48 25 20  2404 	.ascii "[1;1H% 8u% 8d% 8d"
             38 75 25 20 38 64 25
             20 38 64
      0041A4 00                    2405 	.db 0x00
                                   2406 	.area CSEG    (CODE)
                                   2407 	.area CONST   (CODE)
      0041A5                       2408 ___str_6:
      0041A5 25 20 38 64 25 20 38  2409 	.ascii "% 8d% 8d"
             64
      0041AD 00                    2410 	.db 0x00
                                   2411 	.area CSEG    (CODE)
                                   2412 	.area CONST   (CODE)
      0041AE                       2413 ___str_7:
      0041AE 1B                    2414 	.db 0x1b
      0041AF 5B 32 4A              2415 	.ascii "[2J"
      0041B2 1B                    2416 	.db 0x1b
      0041B3 5B 3F 32 35 68        2417 	.ascii "[?25h"
      0041B8 00                    2418 	.db 0x00
                                   2419 	.area CSEG    (CODE)
                                   2420 	.area XINIT   (CODE)
      0041C4                       2421 __xinit__neigh:
      0041C4 FF FF                 2422 	.byte #0xff, #0xff	; -1
      0041C6 01 00                 2423 	.byte #0x01, #0x00	;  1
      0041C8 FF FF                 2424 	.byte #0xff, #0xff	; -1
      0041CA FF FF                 2425 	.byte #0xff, #0xff	; -1
      0041CC 01 00                 2426 	.byte #0x01, #0x00	;  1
      0041CE FF FF                 2427 	.byte #0xff, #0xff	; -1
      0041D0 01 00                 2428 	.byte #0x01, #0x00	;  1
      0041D2 01 00                 2429 	.byte #0x01, #0x00	;  1
      0041D4 FF FF                 2430 	.byte #0xff, #0xff	; -1
      0041D6 00 00                 2431 	.byte #0x00, #0x00	;  0
      0041D8 00 00                 2432 	.byte #0x00, #0x00	;  0
      0041DA FF FF                 2433 	.byte #0xff, #0xff	; -1
      0041DC 01 00                 2434 	.byte #0x01, #0x00	;  1
      0041DE 00 00                 2435 	.byte #0x00, #0x00	;  0
      0041E0 00 00                 2436 	.byte #0x00, #0x00	;  0
      0041E2 01 00                 2437 	.byte #0x01, #0x00	;  1
      0041E4 FF FF                 2438 	.byte #0xff, #0xff	; -1
      0041E6 01 00                 2439 	.byte #0x01, #0x00	;  1
      0041E8 FF FF                 2440 	.byte #0xff, #0xff	; -1
      0041EA FF FF                 2441 	.byte #0xff, #0xff	; -1
      0041EC 01 00                 2442 	.byte #0x01, #0x00	;  1
      0041EE FF FF                 2443 	.byte #0xff, #0xff	; -1
      0041F0 01 00                 2444 	.byte #0x01, #0x00	;  1
      0041F2 01 00                 2445 	.byte #0x01, #0x00	;  1
      0041F4 FF FF                 2446 	.byte #0xff, #0xff	; -1
      0041F6 00 00                 2447 	.byte #0x00, #0x00	;  0
      0041F8 00 00                 2448 	.byte #0x00, #0x00	;  0
      0041FA FF FF                 2449 	.byte #0xff, #0xff	; -1
      0041FC 01 00                 2450 	.byte #0x01, #0x00	;  1
      0041FE 00 00                 2451 	.byte #0x00, #0x00	;  0
      004200 00 00                 2452 	.byte #0x00, #0x00	;  0
      004202 01 00                 2453 	.byte #0x01, #0x00	;  1
                                   2454 	.area CABS    (ABS,CODE)
