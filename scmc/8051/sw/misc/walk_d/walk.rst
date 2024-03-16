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
      002006 02 26 DD         [24]  377 	ljmp	_main
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
                                    394 ;	walk.c:12: __endasm;
      002065 E5 82            [12]  395 	mov	a, dpl
      002067 02 00 3C         [24]  396 	ljmp	0x003c
                                    397 ;	walk.c:13: }
                                    398 ;	naked function: no epilogue.
                                    399 ;------------------------------------------------------------
                                    400 ;Allocation info for local variables in function 'getchar'
                                    401 ;------------------------------------------------------------
                                    402 ;	walk.c:15: int getchar(void) __naked {
                                    403 ;	-----------------------------------------
                                    404 ;	 function getchar
                                    405 ;	-----------------------------------------
      00206A                        406 _getchar:
                                    407 ;	naked function: no prologue.
                                    408 ;	walk.c:21: __endasm;
      00206A 12 00 36         [24]  409 	lcall	0x0036
      00206D F5 82            [12]  410 	mov	dpl, a
      00206F 75 83 00         [24]  411 	mov	dph, #0
      002072 22               [24]  412 	ret
                                    413 ;	walk.c:22: }
                                    414 ;	naked function: no epilogue.
                                    415 ;------------------------------------------------------------
                                    416 ;Allocation info for local variables in function 'int0'
                                    417 ;------------------------------------------------------------
                                    418 ;	walk.c:28: void int0(void) __interrupt IE0_VECTOR __using 1 {
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
                                    433 ;	walk.c:29: i0 = 0u;
      002078 78 11            [12]  434 	mov	r0,#_i0
      00207A 76 00            [12]  435 	mov	@r0,#0x00
                                    436 ;	walk.c:30: }
      00207C D0 D0            [24]  437 	pop	psw
      00207E 32               [24]  438 	reti
                                    439 ;	eliminated unneeded push/pop dpl
                                    440 ;	eliminated unneeded push/pop dph
                                    441 ;	eliminated unneeded push/pop b
                                    442 ;	eliminated unneeded push/pop acc
                                    443 ;------------------------------------------------------------
                                    444 ;Allocation info for local variables in function 'bang'
                                    445 ;------------------------------------------------------------
                                    446 ;	walk.c:36: static void bang(void) {
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
                                    459 ;	walk.c:37: (void)puts("Memory error");
      00207F 90 41 66         [24]  460 	mov	dptr,#___str_0
      002082 75 F0 80         [24]  461 	mov	b,#0x80
      002085 12 2D AD         [24]  462 	lcall	_puts
                                    463 ;	walk.c:33: PCON |= 2;
      002088 43 87 02         [24]  464 	orl	_PCON,#0x02
                                    465 ;	walk.c:40: return;
                                    466 ;	walk.c:41: }
      00208B 22               [24]  467 	ret
                                    468 ;------------------------------------------------------------
                                    469 ;Allocation info for local variables in function 'setOE'
                                    470 ;------------------------------------------------------------
                                    471 ;mask                      Allocated to registers r7 
                                    472 ;------------------------------------------------------------
                                    473 ;	walk.c:83: static void setOE(uint8_t mask) {
                                    474 ;	-----------------------------------------
                                    475 ;	 function setOE
                                    476 ;	-----------------------------------------
      00208C                        477 _setOE:
      00208C AF 82            [24]  478 	mov	r7,dpl
                                    479 ;	walk.c:84: OE76 |= mask;
      00208E 78 12            [12]  480 	mov	r0,#_OE76
      002090 EF               [12]  481 	mov	a,r7
      002091 46               [12]  482 	orl	a,@r0
      002092 F6               [12]  483 	mov	@r0,a
                                    484 ;	walk.c:85: P1_7 = 0;
                                    485 ;	assignBit
      002093 C2 97            [12]  486 	clr	_P1_7
                                    487 ;	walk.c:90: __endasm;
      002095 00               [12]  488 	nop
      002096 00               [12]  489 	nop
      002097 00               [12]  490 	nop
                                    491 ;	walk.c:91: OEreg = OE76;
      002098 78 12            [12]  492 	mov	r0,#_OE76
      00209A 90 F0 06         [24]  493 	mov	dptr,#_OEreg
      00209D E6               [12]  494 	mov	a,@r0
      00209E F0               [24]  495 	movx	@dptr,a
                                    496 ;	walk.c:92: P1_7 = 1;
                                    497 ;	assignBit
      00209F D2 97            [12]  498 	setb	_P1_7
                                    499 ;	walk.c:97: __endasm;
      0020A1 00               [12]  500 	nop
      0020A2 00               [12]  501 	nop
      0020A3 00               [12]  502 	nop
                                    503 ;	walk.c:99: return;
                                    504 ;	walk.c:100: }
      0020A4 22               [24]  505 	ret
                                    506 ;------------------------------------------------------------
                                    507 ;Allocation info for local variables in function 'unsetOE'
                                    508 ;------------------------------------------------------------
                                    509 ;mask                      Allocated to registers r7 
                                    510 ;------------------------------------------------------------
                                    511 ;	walk.c:102: static void unsetOE(uint8_t mask) {
                                    512 ;	-----------------------------------------
                                    513 ;	 function unsetOE
                                    514 ;	-----------------------------------------
      0020A5                        515 _unsetOE:
                                    516 ;	walk.c:103: OE76 &= ~mask;
      0020A5 E5 82            [12]  517 	mov	a,dpl
      0020A7 F4               [12]  518 	cpl	a
      0020A8 FF               [12]  519 	mov	r7,a
      0020A9 78 12            [12]  520 	mov	r0,#_OE76
      0020AB 56               [12]  521 	anl	a,@r0
      0020AC F6               [12]  522 	mov	@r0,a
                                    523 ;	walk.c:104: P1_7 = 0;
                                    524 ;	assignBit
      0020AD C2 97            [12]  525 	clr	_P1_7
                                    526 ;	walk.c:109: __endasm;
      0020AF 00               [12]  527 	nop
      0020B0 00               [12]  528 	nop
      0020B1 00               [12]  529 	nop
                                    530 ;	walk.c:110: OEreg = OE76;
      0020B2 78 12            [12]  531 	mov	r0,#_OE76
      0020B4 90 F0 06         [24]  532 	mov	dptr,#_OEreg
      0020B7 E6               [12]  533 	mov	a,@r0
      0020B8 F0               [24]  534 	movx	@dptr,a
                                    535 ;	walk.c:111: P1_7 = 1;
                                    536 ;	assignBit
      0020B9 D2 97            [12]  537 	setb	_P1_7
                                    538 ;	walk.c:116: __endasm;
      0020BB 00               [12]  539 	nop
      0020BC 00               [12]  540 	nop
      0020BD 00               [12]  541 	nop
                                    542 ;	walk.c:118: return;
                                    543 ;	walk.c:119: }
      0020BE 22               [24]  544 	ret
                                    545 ;------------------------------------------------------------
                                    546 ;Allocation info for local variables in function 'flipOE'
                                    547 ;------------------------------------------------------------
                                    548 ;mask                      Allocated to registers r7 
                                    549 ;------------------------------------------------------------
                                    550 ;	walk.c:121: static void flipOE(uint8_t mask) {
                                    551 ;	-----------------------------------------
                                    552 ;	 function flipOE
                                    553 ;	-----------------------------------------
      0020BF                        554 _flipOE:
      0020BF AF 82            [24]  555 	mov	r7,dpl
                                    556 ;	walk.c:122: OE76 ^= mask;
      0020C1 78 12            [12]  557 	mov	r0,#_OE76
      0020C3 EF               [12]  558 	mov	a,r7
      0020C4 66               [12]  559 	xrl	a,@r0
      0020C5 F6               [12]  560 	mov	@r0,a
                                    561 ;	walk.c:123: P1_7 = 0;
                                    562 ;	assignBit
      0020C6 C2 97            [12]  563 	clr	_P1_7
                                    564 ;	walk.c:128: __endasm;
      0020C8 00               [12]  565 	nop
      0020C9 00               [12]  566 	nop
      0020CA 00               [12]  567 	nop
                                    568 ;	walk.c:129: OEreg = OE76;
      0020CB 78 12            [12]  569 	mov	r0,#_OE76
      0020CD 90 F0 06         [24]  570 	mov	dptr,#_OEreg
      0020D0 E6               [12]  571 	mov	a,@r0
      0020D1 F0               [24]  572 	movx	@dptr,a
                                    573 ;	walk.c:130: P1_7 = 1;
                                    574 ;	assignBit
      0020D2 D2 97            [12]  575 	setb	_P1_7
                                    576 ;	walk.c:135: __endasm;
      0020D4 00               [12]  577 	nop
      0020D5 00               [12]  578 	nop
      0020D6 00               [12]  579 	nop
                                    580 ;	walk.c:137: return;
                                    581 ;	walk.c:138: }
      0020D7 22               [24]  582 	ret
                                    583 ;------------------------------------------------------------
                                    584 ;Allocation info for local variables in function 'update'
                                    585 ;------------------------------------------------------------
                                    586 ;cur                       Allocated to stack - _bp -5
                                    587 ;j                         Allocated to stack - _bp -6
                                    588 ;t                         Allocated to stack - _bp +1
                                    589 ;sloc0                     Allocated to stack - _bp +4
                                    590 ;sloc1                     Allocated to stack - _bp +6
                                    591 ;sloc2                     Allocated to stack - _bp +8
                                    592 ;------------------------------------------------------------
                                    593 ;	walk.c:140: static uint8_t update(struct node *t, struct node *cur, uint8_t j) {
                                    594 ;	-----------------------------------------
                                    595 ;	 function update
                                    596 ;	-----------------------------------------
      0020D8                        597 _update:
      0020D8 C0 10            [24]  598 	push	_bp
      0020DA 85 81 10         [24]  599 	mov	_bp,sp
      0020DD C0 82            [24]  600 	push	dpl
      0020DF C0 83            [24]  601 	push	dph
      0020E1 C0 F0            [24]  602 	push	b
      0020E3 E5 81            [12]  603 	mov	a,sp
      0020E5 24 07            [12]  604 	add	a,#0x07
      0020E7 F5 81            [12]  605 	mov	sp,a
                                    606 ;	walk.c:141: t->r = cur->r + neigh[j].r;
      0020E9 E5 10            [12]  607 	mov	a,_bp
      0020EB 24 FB            [12]  608 	add	a,#0xfb
      0020ED F8               [12]  609 	mov	r0,a
      0020EE 86 02            [24]  610 	mov	ar2,@r0
      0020F0 08               [12]  611 	inc	r0
      0020F1 86 03            [24]  612 	mov	ar3,@r0
      0020F3 08               [12]  613 	inc	r0
      0020F4 86 04            [24]  614 	mov	ar4,@r0
      0020F6 8A 82            [24]  615 	mov	dpl,r2
      0020F8 8B 83            [24]  616 	mov	dph,r3
      0020FA 8C F0            [24]  617 	mov	b,r4
      0020FC E5 10            [12]  618 	mov	a,_bp
      0020FE 24 04            [12]  619 	add	a,#0x04
      002100 F8               [12]  620 	mov	r0,a
      002101 12 2E 6C         [24]  621 	lcall	__gptrget
      002104 F6               [12]  622 	mov	@r0,a
      002105 A3               [24]  623 	inc	dptr
      002106 12 2E 6C         [24]  624 	lcall	__gptrget
      002109 08               [12]  625 	inc	r0
      00210A F6               [12]  626 	mov	@r0,a
      00210B E5 10            [12]  627 	mov	a,_bp
      00210D 24 FA            [12]  628 	add	a,#0xfa
      00210F F8               [12]  629 	mov	r0,a
      002110 E5 10            [12]  630 	mov	a,_bp
      002112 24 06            [12]  631 	add	a,#0x06
      002114 F9               [12]  632 	mov	r1,a
      002115 E6               [12]  633 	mov	a,@r0
      002116 75 F0 04         [24]  634 	mov	b,#0x04
      002119 A4               [48]  635 	mul	ab
      00211A F7               [12]  636 	mov	@r1,a
      00211B 09               [12]  637 	inc	r1
      00211C A7 F0            [24]  638 	mov	@r1,b
      00211E E5 10            [12]  639 	mov	a,_bp
      002120 24 06            [12]  640 	add	a,#0x06
      002122 F8               [12]  641 	mov	r0,a
      002123 E6               [12]  642 	mov	a,@r0
      002124 24 72            [12]  643 	add	a,#_neigh
      002126 F5 82            [12]  644 	mov	dpl,a
      002128 08               [12]  645 	inc	r0
      002129 E6               [12]  646 	mov	a,@r0
      00212A 34 FF            [12]  647 	addc	a,#(_neigh >> 8)
      00212C F5 83            [12]  648 	mov	dph,a
      00212E E0               [24]  649 	movx	a,@dptr
      00212F FF               [12]  650 	mov	r7,a
      002130 A3               [24]  651 	inc	dptr
      002131 E0               [24]  652 	movx	a,@dptr
      002132 FE               [12]  653 	mov	r6,a
      002133 E5 10            [12]  654 	mov	a,_bp
      002135 24 04            [12]  655 	add	a,#0x04
      002137 F8               [12]  656 	mov	r0,a
      002138 EF               [12]  657 	mov	a,r7
      002139 26               [12]  658 	add	a,@r0
      00213A FF               [12]  659 	mov	r7,a
      00213B EE               [12]  660 	mov	a,r6
      00213C 08               [12]  661 	inc	r0
      00213D 36               [12]  662 	addc	a,@r0
      00213E FE               [12]  663 	mov	r6,a
      00213F A8 10            [24]  664 	mov	r0,_bp
      002141 08               [12]  665 	inc	r0
      002142 86 82            [24]  666 	mov	dpl,@r0
      002144 08               [12]  667 	inc	r0
      002145 86 83            [24]  668 	mov	dph,@r0
      002147 08               [12]  669 	inc	r0
      002148 86 F0            [24]  670 	mov	b,@r0
      00214A EF               [12]  671 	mov	a,r7
      00214B 12 2C 61         [24]  672 	lcall	__gptrput
      00214E A3               [24]  673 	inc	dptr
      00214F EE               [12]  674 	mov	a,r6
      002150 12 2C 61         [24]  675 	lcall	__gptrput
                                    676 ;	walk.c:142: t->c = cur->c + neigh[j].c;
      002153 A8 10            [24]  677 	mov	r0,_bp
      002155 08               [12]  678 	inc	r0
      002156 E5 10            [12]  679 	mov	a,_bp
      002158 24 08            [12]  680 	add	a,#0x08
      00215A F9               [12]  681 	mov	r1,a
      00215B 74 02            [12]  682 	mov	a,#0x02
      00215D 26               [12]  683 	add	a,@r0
      00215E F7               [12]  684 	mov	@r1,a
      00215F E4               [12]  685 	clr	a
      002160 08               [12]  686 	inc	r0
      002161 36               [12]  687 	addc	a,@r0
      002162 09               [12]  688 	inc	r1
      002163 F7               [12]  689 	mov	@r1,a
      002164 08               [12]  690 	inc	r0
      002165 09               [12]  691 	inc	r1
      002166 E6               [12]  692 	mov	a,@r0
      002167 F7               [12]  693 	mov	@r1,a
      002168 74 02            [12]  694 	mov	a,#0x02
      00216A 2A               [12]  695 	add	a,r2
      00216B FA               [12]  696 	mov	r2,a
      00216C E4               [12]  697 	clr	a
      00216D 3B               [12]  698 	addc	a,r3
      00216E FB               [12]  699 	mov	r3,a
      00216F 8A 82            [24]  700 	mov	dpl,r2
      002171 8B 83            [24]  701 	mov	dph,r3
      002173 8C F0            [24]  702 	mov	b,r4
      002175 12 2E 6C         [24]  703 	lcall	__gptrget
      002178 FA               [12]  704 	mov	r2,a
      002179 A3               [24]  705 	inc	dptr
      00217A 12 2E 6C         [24]  706 	lcall	__gptrget
      00217D FB               [12]  707 	mov	r3,a
      00217E E5 10            [12]  708 	mov	a,_bp
      002180 24 06            [12]  709 	add	a,#0x06
      002182 F8               [12]  710 	mov	r0,a
      002183 E6               [12]  711 	mov	a,@r0
      002184 24 72            [12]  712 	add	a,#_neigh
      002186 FC               [12]  713 	mov	r4,a
      002187 08               [12]  714 	inc	r0
      002188 E6               [12]  715 	mov	a,@r0
      002189 34 FF            [12]  716 	addc	a,#(_neigh >> 8)
      00218B FD               [12]  717 	mov	r5,a
      00218C 8C 82            [24]  718 	mov	dpl,r4
      00218E 8D 83            [24]  719 	mov	dph,r5
      002190 A3               [24]  720 	inc	dptr
      002191 A3               [24]  721 	inc	dptr
      002192 E0               [24]  722 	movx	a,@dptr
      002193 FC               [12]  723 	mov	r4,a
      002194 A3               [24]  724 	inc	dptr
      002195 E0               [24]  725 	movx	a,@dptr
      002196 FD               [12]  726 	mov	r5,a
      002197 EC               [12]  727 	mov	a,r4
      002198 2A               [12]  728 	add	a,r2
      002199 FA               [12]  729 	mov	r2,a
      00219A ED               [12]  730 	mov	a,r5
      00219B 3B               [12]  731 	addc	a,r3
      00219C FB               [12]  732 	mov	r3,a
      00219D E5 10            [12]  733 	mov	a,_bp
      00219F 24 08            [12]  734 	add	a,#0x08
      0021A1 F8               [12]  735 	mov	r0,a
      0021A2 86 82            [24]  736 	mov	dpl,@r0
      0021A4 08               [12]  737 	inc	r0
      0021A5 86 83            [24]  738 	mov	dph,@r0
      0021A7 08               [12]  739 	inc	r0
      0021A8 86 F0            [24]  740 	mov	b,@r0
      0021AA EA               [12]  741 	mov	a,r2
      0021AB 12 2C 61         [24]  742 	lcall	__gptrput
      0021AE A3               [24]  743 	inc	dptr
      0021AF EB               [12]  744 	mov	a,r3
      0021B0 12 2C 61         [24]  745 	lcall	__gptrput
                                    746 ;	walk.c:144: if (t->r < 0) t->r += ROWS;
      0021B3 A8 10            [24]  747 	mov	r0,_bp
      0021B5 08               [12]  748 	inc	r0
      0021B6 86 82            [24]  749 	mov	dpl,@r0
      0021B8 08               [12]  750 	inc	r0
      0021B9 86 83            [24]  751 	mov	dph,@r0
      0021BB 08               [12]  752 	inc	r0
      0021BC 86 F0            [24]  753 	mov	b,@r0
      0021BE 12 2E 6C         [24]  754 	lcall	__gptrget
      0021C1 FD               [12]  755 	mov	r5,a
      0021C2 A3               [24]  756 	inc	dptr
      0021C3 12 2E 6C         [24]  757 	lcall	__gptrget
      0021C6 FC               [12]  758 	mov	r4,a
      0021C7 EE               [12]  759 	mov	a,r6
      0021C8 30 E7 1D         [24]  760 	jnb	acc.7,00104$
      0021CB 74 30            [12]  761 	mov	a,#0x30
      0021CD 2D               [12]  762 	add	a,r5
      0021CE FF               [12]  763 	mov	r7,a
      0021CF E4               [12]  764 	clr	a
      0021D0 3C               [12]  765 	addc	a,r4
      0021D1 FE               [12]  766 	mov	r6,a
      0021D2 A8 10            [24]  767 	mov	r0,_bp
      0021D4 08               [12]  768 	inc	r0
      0021D5 86 82            [24]  769 	mov	dpl,@r0
      0021D7 08               [12]  770 	inc	r0
      0021D8 86 83            [24]  771 	mov	dph,@r0
      0021DA 08               [12]  772 	inc	r0
      0021DB 86 F0            [24]  773 	mov	b,@r0
      0021DD EF               [12]  774 	mov	a,r7
      0021DE 12 2C 61         [24]  775 	lcall	__gptrput
      0021E1 A3               [24]  776 	inc	dptr
      0021E2 EE               [12]  777 	mov	a,r6
      0021E3 12 2C 61         [24]  778 	lcall	__gptrput
      0021E6 80 27            [24]  779 	sjmp	00105$
      0021E8                        780 00104$:
                                    781 ;	walk.c:145: else if (t->r >= ROWS) t->r -= ROWS;
      0021E8 C3               [12]  782 	clr	c
      0021E9 ED               [12]  783 	mov	a,r5
      0021EA 94 30            [12]  784 	subb	a,#0x30
      0021EC EC               [12]  785 	mov	a,r4
      0021ED 64 80            [12]  786 	xrl	a,#0x80
      0021EF 94 80            [12]  787 	subb	a,#0x80
      0021F1 40 1C            [24]  788 	jc	00105$
      0021F3 ED               [12]  789 	mov	a,r5
      0021F4 24 D0            [12]  790 	add	a,#0xd0
      0021F6 FD               [12]  791 	mov	r5,a
      0021F7 EC               [12]  792 	mov	a,r4
      0021F8 34 FF            [12]  793 	addc	a,#0xff
      0021FA FC               [12]  794 	mov	r4,a
      0021FB A8 10            [24]  795 	mov	r0,_bp
      0021FD 08               [12]  796 	inc	r0
      0021FE 86 82            [24]  797 	mov	dpl,@r0
      002200 08               [12]  798 	inc	r0
      002201 86 83            [24]  799 	mov	dph,@r0
      002203 08               [12]  800 	inc	r0
      002204 86 F0            [24]  801 	mov	b,@r0
      002206 ED               [12]  802 	mov	a,r5
      002207 12 2C 61         [24]  803 	lcall	__gptrput
      00220A A3               [24]  804 	inc	dptr
      00220B EC               [12]  805 	mov	a,r4
      00220C 12 2C 61         [24]  806 	lcall	__gptrput
      00220F                        807 00105$:
                                    808 ;	walk.c:146: if (t->c < 0) t->c += COLS;
      00220F E5 10            [12]  809 	mov	a,_bp
      002211 24 08            [12]  810 	add	a,#0x08
      002213 F8               [12]  811 	mov	r0,a
      002214 86 82            [24]  812 	mov	dpl,@r0
      002216 08               [12]  813 	inc	r0
      002217 86 83            [24]  814 	mov	dph,@r0
      002219 08               [12]  815 	inc	r0
      00221A 86 F0            [24]  816 	mov	b,@r0
      00221C 12 2E 6C         [24]  817 	lcall	__gptrget
      00221F A3               [24]  818 	inc	dptr
      002220 12 2E 6C         [24]  819 	lcall	__gptrget
      002223 30 E7 35         [24]  820 	jnb	acc.7,00109$
      002226 E5 10            [12]  821 	mov	a,_bp
      002228 24 08            [12]  822 	add	a,#0x08
      00222A F8               [12]  823 	mov	r0,a
      00222B 86 82            [24]  824 	mov	dpl,@r0
      00222D 08               [12]  825 	inc	r0
      00222E 86 83            [24]  826 	mov	dph,@r0
      002230 08               [12]  827 	inc	r0
      002231 86 F0            [24]  828 	mov	b,@r0
      002233 12 2E 6C         [24]  829 	lcall	__gptrget
      002236 FE               [12]  830 	mov	r6,a
      002237 A3               [24]  831 	inc	dptr
      002238 12 2E 6C         [24]  832 	lcall	__gptrget
      00223B FF               [12]  833 	mov	r7,a
      00223C 74 C9            [12]  834 	mov	a,#0xc9
      00223E 2E               [12]  835 	add	a,r6
      00223F FE               [12]  836 	mov	r6,a
      002240 E4               [12]  837 	clr	a
      002241 3F               [12]  838 	addc	a,r7
      002242 FF               [12]  839 	mov	r7,a
      002243 E5 10            [12]  840 	mov	a,_bp
      002245 24 08            [12]  841 	add	a,#0x08
      002247 F8               [12]  842 	mov	r0,a
      002248 86 82            [24]  843 	mov	dpl,@r0
      00224A 08               [12]  844 	inc	r0
      00224B 86 83            [24]  845 	mov	dph,@r0
      00224D 08               [12]  846 	inc	r0
      00224E 86 F0            [24]  847 	mov	b,@r0
      002250 EE               [12]  848 	mov	a,r6
      002251 12 2C 61         [24]  849 	lcall	__gptrput
      002254 A3               [24]  850 	inc	dptr
      002255 EF               [12]  851 	mov	a,r7
      002256 12 2C 61         [24]  852 	lcall	__gptrput
      002259 80 55            [24]  853 	sjmp	00110$
      00225B                        854 00109$:
                                    855 ;	walk.c:147: else if (t->c >= COLS) t->c -= COLS;
      00225B E5 10            [12]  856 	mov	a,_bp
      00225D 24 08            [12]  857 	add	a,#0x08
      00225F F8               [12]  858 	mov	r0,a
      002260 86 82            [24]  859 	mov	dpl,@r0
      002262 08               [12]  860 	inc	r0
      002263 86 83            [24]  861 	mov	dph,@r0
      002265 08               [12]  862 	inc	r0
      002266 86 F0            [24]  863 	mov	b,@r0
      002268 12 2E 6C         [24]  864 	lcall	__gptrget
      00226B FE               [12]  865 	mov	r6,a
      00226C A3               [24]  866 	inc	dptr
      00226D 12 2E 6C         [24]  867 	lcall	__gptrget
      002270 FF               [12]  868 	mov	r7,a
      002271 C3               [12]  869 	clr	c
      002272 EE               [12]  870 	mov	a,r6
      002273 94 C9            [12]  871 	subb	a,#0xc9
      002275 EF               [12]  872 	mov	a,r7
      002276 64 80            [12]  873 	xrl	a,#0x80
      002278 94 80            [12]  874 	subb	a,#0x80
      00227A 40 34            [24]  875 	jc	00110$
      00227C E5 10            [12]  876 	mov	a,_bp
      00227E 24 08            [12]  877 	add	a,#0x08
      002280 F8               [12]  878 	mov	r0,a
      002281 86 82            [24]  879 	mov	dpl,@r0
      002283 08               [12]  880 	inc	r0
      002284 86 83            [24]  881 	mov	dph,@r0
      002286 08               [12]  882 	inc	r0
      002287 86 F0            [24]  883 	mov	b,@r0
      002289 12 2E 6C         [24]  884 	lcall	__gptrget
      00228C FE               [12]  885 	mov	r6,a
      00228D A3               [24]  886 	inc	dptr
      00228E 12 2E 6C         [24]  887 	lcall	__gptrget
      002291 FF               [12]  888 	mov	r7,a
      002292 EE               [12]  889 	mov	a,r6
      002293 24 37            [12]  890 	add	a,#0x37
      002295 FE               [12]  891 	mov	r6,a
      002296 EF               [12]  892 	mov	a,r7
      002297 34 FF            [12]  893 	addc	a,#0xff
      002299 FF               [12]  894 	mov	r7,a
      00229A E5 10            [12]  895 	mov	a,_bp
      00229C 24 08            [12]  896 	add	a,#0x08
      00229E F8               [12]  897 	mov	r0,a
      00229F 86 82            [24]  898 	mov	dpl,@r0
      0022A1 08               [12]  899 	inc	r0
      0022A2 86 83            [24]  900 	mov	dph,@r0
      0022A4 08               [12]  901 	inc	r0
      0022A5 86 F0            [24]  902 	mov	b,@r0
      0022A7 EE               [12]  903 	mov	a,r6
      0022A8 12 2C 61         [24]  904 	lcall	__gptrput
      0022AB A3               [24]  905 	inc	dptr
      0022AC EF               [12]  906 	mov	a,r7
      0022AD 12 2C 61         [24]  907 	lcall	__gptrput
      0022B0                        908 00110$:
                                    909 ;	walk.c:149: if (g[t->r][t->c] == 0xaau) return 0u;
      0022B0 A8 10            [24]  910 	mov	r0,_bp
      0022B2 08               [12]  911 	inc	r0
      0022B3 86 82            [24]  912 	mov	dpl,@r0
      0022B5 08               [12]  913 	inc	r0
      0022B6 86 83            [24]  914 	mov	dph,@r0
      0022B8 08               [12]  915 	inc	r0
      0022B9 86 F0            [24]  916 	mov	b,@r0
      0022BB 12 2E 6C         [24]  917 	lcall	__gptrget
      0022BE FE               [12]  918 	mov	r6,a
      0022BF A3               [24]  919 	inc	dptr
      0022C0 12 2E 6C         [24]  920 	lcall	__gptrget
      0022C3 FF               [12]  921 	mov	r7,a
      0022C4 C0 06            [24]  922 	push	ar6
      0022C6 C0 07            [24]  923 	push	ar7
      0022C8 90 00 C9         [24]  924 	mov	dptr,#0x00c9
      0022CB 12 2C 7C         [24]  925 	lcall	__mulint
      0022CE AE 82            [24]  926 	mov	r6,dpl
      0022D0 AF 83            [24]  927 	mov	r7,dph
      0022D2 15 81            [12]  928 	dec	sp
      0022D4 15 81            [12]  929 	dec	sp
      0022D6 EE               [12]  930 	mov	a,r6
      0022D7 24 00            [12]  931 	add	a,#_g
      0022D9 FE               [12]  932 	mov	r6,a
      0022DA EF               [12]  933 	mov	a,r7
      0022DB 34 43            [12]  934 	addc	a,#(_g >> 8)
      0022DD FF               [12]  935 	mov	r7,a
      0022DE E5 10            [12]  936 	mov	a,_bp
      0022E0 24 08            [12]  937 	add	a,#0x08
      0022E2 F8               [12]  938 	mov	r0,a
      0022E3 86 82            [24]  939 	mov	dpl,@r0
      0022E5 08               [12]  940 	inc	r0
      0022E6 86 83            [24]  941 	mov	dph,@r0
      0022E8 08               [12]  942 	inc	r0
      0022E9 86 F0            [24]  943 	mov	b,@r0
      0022EB 12 2E 6C         [24]  944 	lcall	__gptrget
      0022EE FC               [12]  945 	mov	r4,a
      0022EF A3               [24]  946 	inc	dptr
      0022F0 12 2E 6C         [24]  947 	lcall	__gptrget
      0022F3 FD               [12]  948 	mov	r5,a
      0022F4 EC               [12]  949 	mov	a,r4
      0022F5 2E               [12]  950 	add	a,r6
      0022F6 F5 82            [12]  951 	mov	dpl,a
      0022F8 ED               [12]  952 	mov	a,r5
      0022F9 3F               [12]  953 	addc	a,r7
      0022FA F5 83            [12]  954 	mov	dph,a
      0022FC E0               [24]  955 	movx	a,@dptr
      0022FD FF               [12]  956 	mov	r7,a
      0022FE BF AA 05         [24]  957 	cjne	r7,#0xaa,00114$
      002301 75 82 00         [24]  958 	mov	dpl,#0x00
      002304 80 59            [24]  959 	sjmp	00116$
      002306                        960 00114$:
                                    961 ;	walk.c:150: else if (g[t->r][t->c] != 0x55u) bang();
      002306 A8 10            [24]  962 	mov	r0,_bp
      002308 08               [12]  963 	inc	r0
      002309 86 82            [24]  964 	mov	dpl,@r0
      00230B 08               [12]  965 	inc	r0
      00230C 86 83            [24]  966 	mov	dph,@r0
      00230E 08               [12]  967 	inc	r0
      00230F 86 F0            [24]  968 	mov	b,@r0
      002311 12 2E 6C         [24]  969 	lcall	__gptrget
      002314 FE               [12]  970 	mov	r6,a
      002315 A3               [24]  971 	inc	dptr
      002316 12 2E 6C         [24]  972 	lcall	__gptrget
      002319 FF               [12]  973 	mov	r7,a
      00231A C0 06            [24]  974 	push	ar6
      00231C C0 07            [24]  975 	push	ar7
      00231E 90 00 C9         [24]  976 	mov	dptr,#0x00c9
      002321 12 2C 7C         [24]  977 	lcall	__mulint
      002324 AE 82            [24]  978 	mov	r6,dpl
      002326 AF 83            [24]  979 	mov	r7,dph
      002328 15 81            [12]  980 	dec	sp
      00232A 15 81            [12]  981 	dec	sp
      00232C EE               [12]  982 	mov	a,r6
      00232D 24 00            [12]  983 	add	a,#_g
      00232F FE               [12]  984 	mov	r6,a
      002330 EF               [12]  985 	mov	a,r7
      002331 34 43            [12]  986 	addc	a,#(_g >> 8)
      002333 FF               [12]  987 	mov	r7,a
      002334 E5 10            [12]  988 	mov	a,_bp
      002336 24 08            [12]  989 	add	a,#0x08
      002338 F8               [12]  990 	mov	r0,a
      002339 86 82            [24]  991 	mov	dpl,@r0
      00233B 08               [12]  992 	inc	r0
      00233C 86 83            [24]  993 	mov	dph,@r0
      00233E 08               [12]  994 	inc	r0
      00233F 86 F0            [24]  995 	mov	b,@r0
      002341 12 2E 6C         [24]  996 	lcall	__gptrget
      002344 FC               [12]  997 	mov	r4,a
      002345 A3               [24]  998 	inc	dptr
      002346 12 2E 6C         [24]  999 	lcall	__gptrget
      002349 FD               [12] 1000 	mov	r5,a
      00234A EC               [12] 1001 	mov	a,r4
      00234B 2E               [12] 1002 	add	a,r6
      00234C F5 82            [12] 1003 	mov	dpl,a
      00234E ED               [12] 1004 	mov	a,r5
      00234F 3F               [12] 1005 	addc	a,r7
      002350 F5 83            [12] 1006 	mov	dph,a
      002352 E0               [24] 1007 	movx	a,@dptr
      002353 FF               [12] 1008 	mov	r7,a
      002354 BF 55 02         [24] 1009 	cjne	r7,#0x55,00148$
      002357 80 03            [24] 1010 	sjmp	00115$
      002359                       1011 00148$:
      002359 12 20 7F         [24] 1012 	lcall	_bang
      00235C                       1013 00115$:
                                   1014 ;	walk.c:152: return 1u;
      00235C 75 82 01         [24] 1015 	mov	dpl,#0x01
      00235F                       1016 00116$:
                                   1017 ;	walk.c:153: }
      00235F 85 10 81         [24] 1018 	mov	sp,_bp
      002362 D0 10            [24] 1019 	pop	_bp
      002364 22               [24] 1020 	ret
                                   1021 ;------------------------------------------------------------
                                   1022 ;Allocation info for local variables in function 'walk'
                                   1023 ;------------------------------------------------------------
                                   1024 ;nstart                    Allocated to registers 
                                   1025 ;cur                       Allocated to stack - _bp +10
                                   1026 ;t                         Allocated to stack - _bp +14
                                   1027 ;j                         Allocated to stack - _bp +18
                                   1028 ;f                         Allocated to registers r3 
                                   1029 ;sloc0                     Allocated to stack - _bp +1
                                   1030 ;sloc1                     Allocated to stack - _bp +2
                                   1031 ;sloc2                     Allocated to stack - _bp +3
                                   1032 ;sloc3                     Allocated to stack - _bp +17
                                   1033 ;sloc4                     Allocated to stack - _bp +4
                                   1034 ;sloc5                     Allocated to stack - _bp +5
                                   1035 ;sloc6                     Allocated to stack - _bp +6
                                   1036 ;sloc7                     Allocated to stack - _bp +7
                                   1037 ;------------------------------------------------------------
                                   1038 ;	walk.c:155: static void walk(struct node *nstart) {
                                   1039 ;	-----------------------------------------
                                   1040 ;	 function walk
                                   1041 ;	-----------------------------------------
      002365                       1042 _walk:
      002365 C0 10            [24] 1043 	push	_bp
      002367 E5 81            [12] 1044 	mov	a,sp
      002369 F5 10            [12] 1045 	mov	_bp,a
      00236B 24 12            [12] 1046 	add	a,#0x12
      00236D F5 81            [12] 1047 	mov	sp,a
      00236F AD 82            [24] 1048 	mov	r5,dpl
      002371 AE 83            [24] 1049 	mov	r6,dph
      002373 AF F0            [24] 1050 	mov	r7,b
                                   1051 ;	walk.c:159: cur = *nstart;
      002375 E5 10            [12] 1052 	mov	a,_bp
      002377 24 0A            [12] 1053 	add	a,#0x0a
      002379 F9               [12] 1054 	mov	r1,a
      00237A FA               [12] 1055 	mov	r2,a
      00237B 7B 00            [12] 1056 	mov	r3,#0x00
      00237D 7C 40            [12] 1057 	mov	r4,#0x40
      00237F C0 01            [24] 1058 	push	ar1
      002381 74 04            [12] 1059 	mov	a,#0x04
      002383 C0 E0            [24] 1060 	push	acc
      002385 E4               [12] 1061 	clr	a
      002386 C0 E0            [24] 1062 	push	acc
      002388 C0 05            [24] 1063 	push	ar5
      00238A C0 06            [24] 1064 	push	ar6
      00238C C0 07            [24] 1065 	push	ar7
      00238E 8A 82            [24] 1066 	mov	dpl,r2
      002390 8B 83            [24] 1067 	mov	dph,r3
      002392 8C F0            [24] 1068 	mov	b,r4
      002394 12 2D 1A         [24] 1069 	lcall	___memcpy
      002397 E5 81            [12] 1070 	mov	a,sp
      002399 24 FB            [12] 1071 	add	a,#0xfb
      00239B F5 81            [12] 1072 	mov	sp,a
      00239D D0 01            [24] 1073 	pop	ar1
                                   1074 ;	walk.c:161: process:
      00239F E5 10            [12] 1075 	mov	a,_bp
      0023A1 24 06            [12] 1076 	add	a,#0x06
      0023A3 F8               [12] 1077 	mov	r0,a
      0023A4 A6 01            [24] 1078 	mov	@r0,ar1
      0023A6 E5 10            [12] 1079 	mov	a,_bp
      0023A8 24 0E            [12] 1080 	add	a,#0x0e
      0023AA FE               [12] 1081 	mov	r6,a
      0023AB E5 10            [12] 1082 	mov	a,_bp
      0023AD 24 03            [12] 1083 	add	a,#0x03
      0023AF F8               [12] 1084 	mov	r0,a
      0023B0 A6 01            [24] 1085 	mov	@r0,ar1
      0023B2 E5 10            [12] 1086 	mov	a,_bp
      0023B4 24 05            [12] 1087 	add	a,#0x05
      0023B6 F8               [12] 1088 	mov	r0,a
      0023B7 A6 01            [24] 1089 	mov	@r0,ar1
      0023B9 E5 10            [12] 1090 	mov	a,_bp
      0023BB 24 04            [12] 1091 	add	a,#0x04
      0023BD F8               [12] 1092 	mov	r0,a
      0023BE A6 06            [24] 1093 	mov	@r0,ar6
      0023C0 89 02            [24] 1094 	mov	ar2,r1
      0023C2 A8 10            [24] 1095 	mov	r0,_bp
      0023C4 08               [12] 1096 	inc	r0
      0023C5 A6 06            [24] 1097 	mov	@r0,ar6
      0023C7 A8 10            [24] 1098 	mov	r0,_bp
      0023C9 08               [12] 1099 	inc	r0
      0023CA 08               [12] 1100 	inc	r0
      0023CB A6 01            [24] 1101 	mov	@r0,ar1
      0023CD 74 02            [12] 1102 	mov	a,#0x02
      0023CF 29               [12] 1103 	add	a,r1
      0023D0 F8               [12] 1104 	mov	r0,a
      0023D1                       1105 00101$:
                                   1106 ;	walk.c:162: g[cur.r][cur.c] = 0xaau;
      0023D1 C0 02            [24] 1107 	push	ar2
      0023D3 87 02            [24] 1108 	mov	ar2,@r1
      0023D5 09               [12] 1109 	inc	r1
      0023D6 87 05            [24] 1110 	mov	ar5,@r1
      0023D8 19               [12] 1111 	dec	r1
      0023D9 C0 06            [24] 1112 	push	ar6
      0023DB C0 01            [24] 1113 	push	ar1
      0023DD C0 00            [24] 1114 	push	ar0
      0023DF C0 02            [24] 1115 	push	ar2
      0023E1 C0 05            [24] 1116 	push	ar5
      0023E3 90 00 C9         [24] 1117 	mov	dptr,#0x00c9
      0023E6 12 2C 7C         [24] 1118 	lcall	__mulint
      0023E9 AA 82            [24] 1119 	mov	r2,dpl
      0023EB AD 83            [24] 1120 	mov	r5,dph
      0023ED 15 81            [12] 1121 	dec	sp
      0023EF 15 81            [12] 1122 	dec	sp
      0023F1 D0 00            [24] 1123 	pop	ar0
      0023F3 D0 01            [24] 1124 	pop	ar1
      0023F5 EA               [12] 1125 	mov	a,r2
      0023F6 24 00            [12] 1126 	add	a,#_g
      0023F8 FF               [12] 1127 	mov	r7,a
      0023F9 ED               [12] 1128 	mov	a,r5
      0023FA 34 43            [12] 1129 	addc	a,#(_g >> 8)
      0023FC FC               [12] 1130 	mov	r4,a
      0023FD 86 02            [24] 1131 	mov	ar2,@r0
      0023FF 08               [12] 1132 	inc	r0
      002400 86 05            [24] 1133 	mov	ar5,@r0
      002402 18               [12] 1134 	dec	r0
      002403 EA               [12] 1135 	mov	a,r2
      002404 2F               [12] 1136 	add	a,r7
      002405 F5 82            [12] 1137 	mov	dpl,a
      002407 ED               [12] 1138 	mov	a,r5
      002408 3C               [12] 1139 	addc	a,r4
      002409 F5 83            [12] 1140 	mov	dph,a
      00240B 74 AA            [12] 1141 	mov	a,#0xaa
      00240D F0               [24] 1142 	movx	@dptr,a
                                   1143 ;	walk.c:164: printf("\033[%d;%dHo", cur.r + 4, cur.c + 1);
      00240E 86 02            [24] 1144 	mov	ar2,@r0
      002410 08               [12] 1145 	inc	r0
      002411 86 05            [24] 1146 	mov	ar5,@r0
      002413 18               [12] 1147 	dec	r0
      002414 74 01            [12] 1148 	mov	a,#0x01
      002416 2A               [12] 1149 	add	a,r2
      002417 FF               [12] 1150 	mov	r7,a
      002418 E4               [12] 1151 	clr	a
      002419 3D               [12] 1152 	addc	a,r5
      00241A FC               [12] 1153 	mov	r4,a
      00241B 87 02            [24] 1154 	mov	ar2,@r1
      00241D 09               [12] 1155 	inc	r1
      00241E 87 05            [24] 1156 	mov	ar5,@r1
      002420 19               [12] 1157 	dec	r1
      002421 74 04            [12] 1158 	mov	a,#0x04
      002423 2A               [12] 1159 	add	a,r2
      002424 FA               [12] 1160 	mov	r2,a
      002425 E4               [12] 1161 	clr	a
      002426 3D               [12] 1162 	addc	a,r5
      002427 FD               [12] 1163 	mov	r5,a
      002428 C0 02            [24] 1164 	push	ar2
      00242A C0 01            [24] 1165 	push	ar1
      00242C C0 00            [24] 1166 	push	ar0
      00242E C0 07            [24] 1167 	push	ar7
      002430 C0 04            [24] 1168 	push	ar4
      002432 C0 02            [24] 1169 	push	ar2
      002434 C0 05            [24] 1170 	push	ar5
      002436 74 73            [12] 1171 	mov	a,#___str_1
      002438 C0 E0            [24] 1172 	push	acc
      00243A 74 41            [12] 1173 	mov	a,#(___str_1 >> 8)
      00243C C0 E0            [24] 1174 	push	acc
      00243E 74 80            [12] 1175 	mov	a,#0x80
      002440 C0 E0            [24] 1176 	push	acc
      002442 12 2E 33         [24] 1177 	lcall	_printf
      002445 E5 81            [12] 1178 	mov	a,sp
      002447 24 F9            [12] 1179 	add	a,#0xf9
      002449 F5 81            [12] 1180 	mov	sp,a
                                   1181 ;	walk.c:165: setOE(OE76_MASK7);
      00244B 75 82 80         [24] 1182 	mov	dpl,#0x80
      00244E 12 20 8C         [24] 1183 	lcall	_setOE
      002451 D0 00            [24] 1184 	pop	ar0
      002453 D0 01            [24] 1185 	pop	ar1
      002455 D0 02            [24] 1186 	pop	ar2
      002457 D0 06            [24] 1187 	pop	ar6
                                   1188 ;	walk.c:193: return;
      002459 D0 02            [24] 1189 	pop	ar2
                                   1190 ;	walk.c:167: next:
      00245B                       1191 00102$:
                                   1192 ;	walk.c:168: printf("\033[2;1H% 8d% 8d% 8d", sp, cur.r, cur.c);
      00245B C0 02            [24] 1193 	push	ar2
      00245D 86 07            [24] 1194 	mov	ar7,@r0
      00245F 08               [12] 1195 	inc	r0
      002460 86 04            [24] 1196 	mov	ar4,@r0
      002462 18               [12] 1197 	dec	r0
      002463 87 02            [24] 1198 	mov	ar2,@r1
      002465 09               [12] 1199 	inc	r1
      002466 87 05            [24] 1200 	mov	ar5,@r1
      002468 19               [12] 1201 	dec	r1
      002469 C0 06            [24] 1202 	push	ar6
      00246B C0 02            [24] 1203 	push	ar2
      00246D C0 01            [24] 1204 	push	ar1
      00246F C0 00            [24] 1205 	push	ar0
      002471 C0 07            [24] 1206 	push	ar7
      002473 C0 04            [24] 1207 	push	ar4
      002475 C0 02            [24] 1208 	push	ar2
      002477 C0 05            [24] 1209 	push	ar5
      002479 90 FF 70         [24] 1210 	mov	dptr,#_sp
      00247C E0               [24] 1211 	movx	a,@dptr
      00247D C0 E0            [24] 1212 	push	acc
      00247F A3               [24] 1213 	inc	dptr
      002480 E0               [24] 1214 	movx	a,@dptr
      002481 C0 E0            [24] 1215 	push	acc
      002483 74 7D            [12] 1216 	mov	a,#___str_2
      002485 C0 E0            [24] 1217 	push	acc
      002487 74 41            [12] 1218 	mov	a,#(___str_2 >> 8)
      002489 C0 E0            [24] 1219 	push	acc
      00248B 74 80            [12] 1220 	mov	a,#0x80
      00248D C0 E0            [24] 1221 	push	acc
      00248F 12 2E 33         [24] 1222 	lcall	_printf
      002492 E5 81            [12] 1223 	mov	a,sp
      002494 24 F7            [12] 1224 	add	a,#0xf7
      002496 F5 81            [12] 1225 	mov	sp,a
                                   1226 ;	walk.c:169: unsetOE(OE76_MASK7 | OE76_MASK6);
      002498 75 82 C0         [24] 1227 	mov	dpl,#0xc0
      00249B 12 20 A5         [24] 1228 	lcall	_unsetOE
      00249E D0 00            [24] 1229 	pop	ar0
      0024A0 D0 01            [24] 1230 	pop	ar1
      0024A2 D0 02            [24] 1231 	pop	ar2
      0024A4 D0 06            [24] 1232 	pop	ar6
                                   1233 ;	walk.c:171: for (j = 0u, f = 0u; j < NMAX; j++) {
      0024A6 7B 00            [12] 1234 	mov	r3,#0x00
      0024A8 C0 00            [24] 1235 	push	ar0
      0024AA E5 10            [12] 1236 	mov	a,_bp
      0024AC 24 12            [12] 1237 	add	a,#0x12
      0024AE F8               [12] 1238 	mov	r0,a
      0024AF 76 00            [12] 1239 	mov	@r0,#0x00
      0024B1 D0 00            [24] 1240 	pop	ar0
                                   1241 ;	walk.c:193: return;
      0024B3 D0 02            [24] 1242 	pop	ar2
                                   1243 ;	walk.c:171: for (j = 0u, f = 0u; j < NMAX; j++) {
      0024B5                       1244 00119$:
      0024B5 C0 00            [24] 1245 	push	ar0
      0024B7 E5 10            [12] 1246 	mov	a,_bp
      0024B9 24 12            [12] 1247 	add	a,#0x12
      0024BB F8               [12] 1248 	mov	r0,a
      0024BC B6 10 00         [24] 1249 	cjne	@r0,#0x10,00159$
      0024BF                       1250 00159$:
      0024BF D0 00            [24] 1251 	pop	ar0
      0024C1 50 7A            [24] 1252 	jnc	00106$
                                   1253 ;	walk.c:172: if (!update(&t, &cur, j)) continue;
      0024C3 C0 02            [24] 1254 	push	ar2
      0024C5 C0 00            [24] 1255 	push	ar0
      0024C7 E5 10            [12] 1256 	mov	a,_bp
      0024C9 24 06            [12] 1257 	add	a,#0x06
      0024CB F8               [12] 1258 	mov	r0,a
      0024CC C0 01            [24] 1259 	push	ar1
      0024CE E5 10            [12] 1260 	mov	a,_bp
      0024D0 24 07            [12] 1261 	add	a,#0x07
      0024D2 F9               [12] 1262 	mov	r1,a
      0024D3 E6               [12] 1263 	mov	a,@r0
      0024D4 F7               [12] 1264 	mov	@r1,a
      0024D5 09               [12] 1265 	inc	r1
      0024D6 77 00            [12] 1266 	mov	@r1,#0x00
      0024D8 09               [12] 1267 	inc	r1
      0024D9 77 40            [12] 1268 	mov	@r1,#0x40
      0024DB D0 01            [24] 1269 	pop	ar1
      0024DD D0 00            [24] 1270 	pop	ar0
      0024DF 8E 04            [24] 1271 	mov	ar4,r6
      0024E1 7D 00            [12] 1272 	mov	r5,#0x00
      0024E3 7F 40            [12] 1273 	mov	r7,#0x40
      0024E5 C0 06            [24] 1274 	push	ar6
      0024E7 C0 03            [24] 1275 	push	ar3
      0024E9 C0 02            [24] 1276 	push	ar2
      0024EB C0 01            [24] 1277 	push	ar1
      0024ED C0 00            [24] 1278 	push	ar0
      0024EF 85 00 F0         [24] 1279 	mov	b,ar0
      0024F2 E5 10            [12] 1280 	mov	a,_bp
      0024F4 24 12            [12] 1281 	add	a,#0x12
      0024F6 F8               [12] 1282 	mov	r0,a
      0024F7 E6               [12] 1283 	mov	a,@r0
      0024F8 C0 E0            [24] 1284 	push	acc
      0024FA A8 F0            [24] 1285 	mov	r0,b
      0024FC 85 00 F0         [24] 1286 	mov	b,ar0
      0024FF E5 10            [12] 1287 	mov	a,_bp
      002501 24 07            [12] 1288 	add	a,#0x07
      002503 F8               [12] 1289 	mov	r0,a
      002504 E6               [12] 1290 	mov	a,@r0
      002505 C0 E0            [24] 1291 	push	acc
      002507 08               [12] 1292 	inc	r0
      002508 E6               [12] 1293 	mov	a,@r0
      002509 C0 E0            [24] 1294 	push	acc
      00250B 08               [12] 1295 	inc	r0
      00250C E6               [12] 1296 	mov	a,@r0
      00250D C0 E0            [24] 1297 	push	acc
      00250F 8C 82            [24] 1298 	mov	dpl,r4
      002511 8D 83            [24] 1299 	mov	dph,r5
      002513 8F F0            [24] 1300 	mov	b,r7
      002515 12 20 D8         [24] 1301 	lcall	_update
      002518 AF 82            [24] 1302 	mov	r7,dpl
      00251A E5 81            [12] 1303 	mov	a,sp
      00251C 24 FC            [12] 1304 	add	a,#0xfc
      00251E F5 81            [12] 1305 	mov	sp,a
      002520 D0 00            [24] 1306 	pop	ar0
      002522 D0 01            [24] 1307 	pop	ar1
      002524 D0 02            [24] 1308 	pop	ar2
      002526 D0 03            [24] 1309 	pop	ar3
      002528 D0 06            [24] 1310 	pop	ar6
      00252A D0 02            [24] 1311 	pop	ar2
      00252C EF               [12] 1312 	mov	a,r7
      00252D 60 01            [24] 1313 	jz	00105$
                                   1314 ;	walk.c:173: f++;
      00252F 0B               [12] 1315 	inc	r3
      002530                       1316 00105$:
                                   1317 ;	walk.c:171: for (j = 0u, f = 0u; j < NMAX; j++) {
      002530 C0 00            [24] 1318 	push	ar0
      002532 E5 10            [12] 1319 	mov	a,_bp
      002534 24 12            [12] 1320 	add	a,#0x12
      002536 F8               [12] 1321 	mov	r0,a
      002537 06               [12] 1322 	inc	@r0
      002538 D0 00            [24] 1323 	pop	ar0
      00253A 02 24 B5         [24] 1324 	ljmp	00119$
      00253D                       1325 00106$:
                                   1326 ;	walk.c:176: if (f) {
      00253D EB               [12] 1327 	mov	a,r3
      00253E 70 03            [24] 1328 	jnz	00162$
      002540 02 26 57         [24] 1329 	ljmp	00115$
      002543                       1330 00162$:
                                   1331 ;	walk.c:177: while (1) {
      002543                       1332 00112$:
                                   1333 ;	walk.c:178: j = (uint8_t)(rand() % NMAX);
      002543 C0 02            [24] 1334 	push	ar2
      002545 C0 06            [24] 1335 	push	ar6
      002547 C0 02            [24] 1336 	push	ar2
      002549 C0 01            [24] 1337 	push	ar1
      00254B C0 00            [24] 1338 	push	ar0
      00254D 12 2B 84         [24] 1339 	lcall	_rand
      002550 AD 82            [24] 1340 	mov	r5,dpl
      002552 D0 00            [24] 1341 	pop	ar0
      002554 D0 01            [24] 1342 	pop	ar1
      002556 D0 02            [24] 1343 	pop	ar2
      002558 D0 06            [24] 1344 	pop	ar6
      00255A 53 05 0F         [24] 1345 	anl	ar5,#0x0f
      00255D 8D 04            [24] 1346 	mov	ar4,r5
                                   1347 ;	walk.c:179: if (!update(&t, &cur, j)) continue;
      00255F C0 00            [24] 1348 	push	ar0
      002561 E5 10            [12] 1349 	mov	a,_bp
      002563 24 05            [12] 1350 	add	a,#0x05
      002565 F8               [12] 1351 	mov	r0,a
      002566 C0 01            [24] 1352 	push	ar1
      002568 E5 10            [12] 1353 	mov	a,_bp
      00256A 24 07            [12] 1354 	add	a,#0x07
      00256C F9               [12] 1355 	mov	r1,a
      00256D E6               [12] 1356 	mov	a,@r0
      00256E F7               [12] 1357 	mov	@r1,a
      00256F 09               [12] 1358 	inc	r1
      002570 77 00            [12] 1359 	mov	@r1,#0x00
      002572 09               [12] 1360 	inc	r1
      002573 77 40            [12] 1361 	mov	@r1,#0x40
      002575 D0 01            [24] 1362 	pop	ar1
      002577 E5 10            [12] 1363 	mov	a,_bp
      002579 24 04            [12] 1364 	add	a,#0x04
      00257B F8               [12] 1365 	mov	r0,a
      00257C 86 02            [24] 1366 	mov	ar2,@r0
      00257E 7D 00            [12] 1367 	mov	r5,#0x00
      002580 7F 40            [12] 1368 	mov	r7,#0x40
      002582 D0 00            [24] 1369 	pop	ar0
      002584 C0 06            [24] 1370 	push	ar6
      002586 C0 02            [24] 1371 	push	ar2
      002588 C0 01            [24] 1372 	push	ar1
      00258A C0 00            [24] 1373 	push	ar0
      00258C C0 04            [24] 1374 	push	ar4
      00258E 85 00 F0         [24] 1375 	mov	b,ar0
      002591 E5 10            [12] 1376 	mov	a,_bp
      002593 24 07            [12] 1377 	add	a,#0x07
      002595 F8               [12] 1378 	mov	r0,a
      002596 E6               [12] 1379 	mov	a,@r0
      002597 C0 E0            [24] 1380 	push	acc
      002599 08               [12] 1381 	inc	r0
      00259A E6               [12] 1382 	mov	a,@r0
      00259B C0 E0            [24] 1383 	push	acc
      00259D 08               [12] 1384 	inc	r0
      00259E E6               [12] 1385 	mov	a,@r0
      00259F C0 E0            [24] 1386 	push	acc
      0025A1 8A 82            [24] 1387 	mov	dpl,r2
      0025A3 8D 83            [24] 1388 	mov	dph,r5
      0025A5 8F F0            [24] 1389 	mov	b,r7
      0025A7 12 20 D8         [24] 1390 	lcall	_update
      0025AA AF 82            [24] 1391 	mov	r7,dpl
      0025AC E5 81            [12] 1392 	mov	a,sp
      0025AE 24 FC            [12] 1393 	add	a,#0xfc
      0025B0 F5 81            [12] 1394 	mov	sp,a
      0025B2 D0 00            [24] 1395 	pop	ar0
      0025B4 D0 01            [24] 1396 	pop	ar1
      0025B6 D0 02            [24] 1397 	pop	ar2
      0025B8 D0 06            [24] 1398 	pop	ar6
      0025BA D0 02            [24] 1399 	pop	ar2
      0025BC EF               [12] 1400 	mov	a,r7
      0025BD 60 84            [24] 1401 	jz	00112$
                                   1402 ;	walk.c:180: if (!stpush(&cur)) bang();
      0025BF 8A 04            [24] 1403 	mov	ar4,r2
      0025C1 7D 00            [12] 1404 	mov	r5,#0x00
      0025C3 7F 40            [12] 1405 	mov	r7,#0x40
      0025C5 8C 82            [24] 1406 	mov	dpl,r4
      0025C7 8D 83            [24] 1407 	mov	dph,r5
      0025C9 8F F0            [24] 1408 	mov	b,r7
      0025CB C0 06            [24] 1409 	push	ar6
      0025CD C0 02            [24] 1410 	push	ar2
      0025CF C0 01            [24] 1411 	push	ar1
      0025D1 C0 00            [24] 1412 	push	ar0
      0025D3 12 2A C1         [24] 1413 	lcall	_stpush
      0025D6 E5 82            [12] 1414 	mov	a,dpl
      0025D8 D0 00            [24] 1415 	pop	ar0
      0025DA D0 01            [24] 1416 	pop	ar1
      0025DC D0 02            [24] 1417 	pop	ar2
      0025DE D0 06            [24] 1418 	pop	ar6
      0025E0 70 13            [24] 1419 	jnz	00110$
      0025E2 C0 06            [24] 1420 	push	ar6
      0025E4 C0 02            [24] 1421 	push	ar2
      0025E6 C0 01            [24] 1422 	push	ar1
      0025E8 C0 00            [24] 1423 	push	ar0
      0025EA 12 20 7F         [24] 1424 	lcall	_bang
      0025ED D0 00            [24] 1425 	pop	ar0
      0025EF D0 01            [24] 1426 	pop	ar1
      0025F1 D0 02            [24] 1427 	pop	ar2
      0025F3 D0 06            [24] 1428 	pop	ar6
      0025F5                       1429 00110$:
                                   1430 ;	walk.c:181: cur = t;
      0025F5 C0 02            [24] 1431 	push	ar2
      0025F7 C0 00            [24] 1432 	push	ar0
      0025F9 A8 10            [24] 1433 	mov	r0,_bp
      0025FB 08               [12] 1434 	inc	r0
      0025FC C0 01            [24] 1435 	push	ar1
      0025FE E5 10            [12] 1436 	mov	a,_bp
      002600 24 07            [12] 1437 	add	a,#0x07
      002602 F9               [12] 1438 	mov	r1,a
      002603 E6               [12] 1439 	mov	a,@r0
      002604 F7               [12] 1440 	mov	@r1,a
      002605 09               [12] 1441 	inc	r1
      002606 77 00            [12] 1442 	mov	@r1,#0x00
      002608 09               [12] 1443 	inc	r1
      002609 77 40            [12] 1444 	mov	@r1,#0x40
      00260B D0 01            [24] 1445 	pop	ar1
      00260D A8 10            [24] 1446 	mov	r0,_bp
      00260F 08               [12] 1447 	inc	r0
      002610 08               [12] 1448 	inc	r0
      002611 86 02            [24] 1449 	mov	ar2,@r0
      002613 7B 00            [12] 1450 	mov	r3,#0x00
      002615 7F 40            [12] 1451 	mov	r7,#0x40
      002617 D0 00            [24] 1452 	pop	ar0
      002619 C0 06            [24] 1453 	push	ar6
      00261B C0 02            [24] 1454 	push	ar2
      00261D C0 01            [24] 1455 	push	ar1
      00261F C0 00            [24] 1456 	push	ar0
      002621 74 04            [12] 1457 	mov	a,#0x04
      002623 C0 E0            [24] 1458 	push	acc
      002625 E4               [12] 1459 	clr	a
      002626 C0 E0            [24] 1460 	push	acc
      002628 85 00 F0         [24] 1461 	mov	b,ar0
      00262B E5 10            [12] 1462 	mov	a,_bp
      00262D 24 07            [12] 1463 	add	a,#0x07
      00262F F8               [12] 1464 	mov	r0,a
      002630 E6               [12] 1465 	mov	a,@r0
      002631 C0 E0            [24] 1466 	push	acc
      002633 08               [12] 1467 	inc	r0
      002634 E6               [12] 1468 	mov	a,@r0
      002635 C0 E0            [24] 1469 	push	acc
      002637 08               [12] 1470 	inc	r0
      002638 E6               [12] 1471 	mov	a,@r0
      002639 C0 E0            [24] 1472 	push	acc
      00263B 8A 82            [24] 1473 	mov	dpl,r2
      00263D 8B 83            [24] 1474 	mov	dph,r3
      00263F 8F F0            [24] 1475 	mov	b,r7
      002641 12 2D 1A         [24] 1476 	lcall	___memcpy
      002644 E5 81            [12] 1477 	mov	a,sp
      002646 24 FB            [12] 1478 	add	a,#0xfb
      002648 F5 81            [12] 1479 	mov	sp,a
      00264A D0 00            [24] 1480 	pop	ar0
      00264C D0 01            [24] 1481 	pop	ar1
      00264E D0 02            [24] 1482 	pop	ar2
      002650 D0 06            [24] 1483 	pop	ar6
                                   1484 ;	walk.c:182: goto process;
      002652 D0 02            [24] 1485 	pop	ar2
      002654 02 23 D1         [24] 1486 	ljmp	00101$
      002657                       1487 00115$:
                                   1488 ;	walk.c:186: printf("\033[%d;%dH.", cur.r + 4, cur.c + 1);
      002657 86 05            [24] 1489 	mov	ar5,@r0
      002659 08               [12] 1490 	inc	r0
      00265A 86 07            [24] 1491 	mov	ar7,@r0
      00265C 18               [12] 1492 	dec	r0
      00265D 0D               [12] 1493 	inc	r5
      00265E BD 00 01         [24] 1494 	cjne	r5,#0x00,00165$
      002661 0F               [12] 1495 	inc	r7
      002662                       1496 00165$:
      002662 87 03            [24] 1497 	mov	ar3,@r1
      002664 09               [12] 1498 	inc	r1
      002665 87 04            [24] 1499 	mov	ar4,@r1
      002667 19               [12] 1500 	dec	r1
      002668 74 04            [12] 1501 	mov	a,#0x04
      00266A 2B               [12] 1502 	add	a,r3
      00266B FB               [12] 1503 	mov	r3,a
      00266C E4               [12] 1504 	clr	a
      00266D 3C               [12] 1505 	addc	a,r4
      00266E FC               [12] 1506 	mov	r4,a
      00266F C0 06            [24] 1507 	push	ar6
      002671 C0 02            [24] 1508 	push	ar2
      002673 C0 01            [24] 1509 	push	ar1
      002675 C0 00            [24] 1510 	push	ar0
      002677 C0 05            [24] 1511 	push	ar5
      002679 C0 07            [24] 1512 	push	ar7
      00267B C0 03            [24] 1513 	push	ar3
      00267D C0 04            [24] 1514 	push	ar4
      00267F 74 90            [12] 1515 	mov	a,#___str_3
      002681 C0 E0            [24] 1516 	push	acc
      002683 74 41            [12] 1517 	mov	a,#(___str_3 >> 8)
      002685 C0 E0            [24] 1518 	push	acc
      002687 74 80            [12] 1519 	mov	a,#0x80
      002689 C0 E0            [24] 1520 	push	acc
      00268B 12 2E 33         [24] 1521 	lcall	_printf
      00268E E5 81            [12] 1522 	mov	a,sp
      002690 24 F9            [12] 1523 	add	a,#0xf9
      002692 F5 81            [12] 1524 	mov	sp,a
                                   1525 ;	walk.c:187: setOE(OE76_MASK6);
      002694 75 82 40         [24] 1526 	mov	dpl,#0x40
      002697 12 20 8C         [24] 1527 	lcall	_setOE
      00269A D0 00            [24] 1528 	pop	ar0
      00269C D0 01            [24] 1529 	pop	ar1
      00269E D0 02            [24] 1530 	pop	ar2
      0026A0 D0 06            [24] 1531 	pop	ar6
                                   1532 ;	walk.c:189: if (stpop(&cur)) goto next;
      0026A2 C0 00            [24] 1533 	push	ar0
      0026A4 E5 10            [12] 1534 	mov	a,_bp
      0026A6 24 03            [12] 1535 	add	a,#0x03
      0026A8 F8               [12] 1536 	mov	r0,a
      0026A9 86 04            [24] 1537 	mov	ar4,@r0
      0026AB 7D 00            [12] 1538 	mov	r5,#0x00
      0026AD 7F 40            [12] 1539 	mov	r7,#0x40
      0026AF D0 00            [24] 1540 	pop	ar0
      0026B1 8C 82            [24] 1541 	mov	dpl,r4
      0026B3 8D 83            [24] 1542 	mov	dph,r5
      0026B5 8F F0            [24] 1543 	mov	b,r7
      0026B7 C0 06            [24] 1544 	push	ar6
      0026B9 C0 02            [24] 1545 	push	ar2
      0026BB C0 01            [24] 1546 	push	ar1
      0026BD C0 00            [24] 1547 	push	ar0
      0026BF 12 2B 22         [24] 1548 	lcall	_stpop
      0026C2 E5 82            [12] 1549 	mov	a,dpl
      0026C4 D0 00            [24] 1550 	pop	ar0
      0026C6 D0 01            [24] 1551 	pop	ar1
      0026C8 D0 02            [24] 1552 	pop	ar2
      0026CA D0 06            [24] 1553 	pop	ar6
      0026CC 60 03            [24] 1554 	jz	00166$
      0026CE 02 24 5B         [24] 1555 	ljmp	00102$
      0026D1                       1556 00166$:
                                   1557 ;	walk.c:191: unsetOE(OE76_MASK7 | OE76_MASK6);
      0026D1 75 82 C0         [24] 1558 	mov	dpl,#0xc0
      0026D4 12 20 A5         [24] 1559 	lcall	_unsetOE
                                   1560 ;	walk.c:193: return;
                                   1561 ;	walk.c:194: }
      0026D7 85 10 81         [24] 1562 	mov	sp,_bp
      0026DA D0 10            [24] 1563 	pop	_bp
      0026DC 22               [24] 1564 	ret
                                   1565 ;------------------------------------------------------------
                                   1566 ;Allocation info for local variables in function 'main'
                                   1567 ;------------------------------------------------------------
                                   1568 ;initial                   Allocated to stack - _bp +7
                                   1569 ;N                         Allocated to stack - _bp +11
                                   1570 ;i                         Allocated to stack - _bp +5
                                   1571 ;j                         Allocated to registers r2 r6 
                                   1572 ;sloc0                     Allocated to stack - _bp +1
                                   1573 ;sloc1                     Allocated to stack - _bp +3
                                   1574 ;sloc2                     Allocated to stack - _bp +15
                                   1575 ;------------------------------------------------------------
                                   1576 ;	walk.c:196: void main(void) {
                                   1577 ;	-----------------------------------------
                                   1578 ;	 function main
                                   1579 ;	-----------------------------------------
      0026DD                       1580 _main:
      0026DD C0 10            [24] 1581 	push	_bp
      0026DF E5 81            [12] 1582 	mov	a,sp
      0026E1 F5 10            [12] 1583 	mov	_bp,a
      0026E3 24 0C            [12] 1584 	add	a,#0x0c
      0026E5 F5 81            [12] 1585 	mov	sp,a
                                   1586 ;	walk.c:201: i0 = 1u;
      0026E7 78 11            [12] 1587 	mov	r0,#_i0
      0026E9 76 01            [12] 1588 	mov	@r0,#0x01
                                   1589 ;	walk.c:203: P1_7 = 1;
                                   1590 ;	assignBit
      0026EB D2 97            [12] 1591 	setb	_P1_7
                                   1592 ;	walk.c:204: IT0 = 1;
                                   1593 ;	assignBit
      0026ED D2 88            [12] 1594 	setb	_IT0
                                   1595 ;	walk.c:205: EX0 = 1;
                                   1596 ;	assignBit
      0026EF D2 A8            [12] 1597 	setb	_EX0
                                   1598 ;	walk.c:206: EA = 1;
                                   1599 ;	assignBit
      0026F1 D2 AF            [12] 1600 	setb	_EA
                                   1601 ;	walk.c:208: srand(RND);
      0026F3 90 80 00         [24] 1602 	mov	dptr,#_RND
      0026F6 E0               [24] 1603 	movx	a,@dptr
      0026F7 FE               [12] 1604 	mov	r6,a
      0026F8 A3               [24] 1605 	inc	dptr
      0026F9 E0               [24] 1606 	movx	a,@dptr
      0026FA FF               [12] 1607 	mov	r7,a
      0026FB 8E 82            [24] 1608 	mov	dpl,r6
      0026FD 8F 83            [24] 1609 	mov	dph,r7
      0026FF 12 2C 48         [24] 1610 	lcall	_srand
                                   1611 ;	walk.c:209: stinit();
      002702 12 2A B8         [24] 1612 	lcall	_stinit
                                   1613 ;	walk.c:211: puts("\033[2J\033[?25l");
      002705 90 41 9A         [24] 1614 	mov	dptr,#___str_4
      002708 75 F0 80         [24] 1615 	mov	b,#0x80
      00270B 12 2D AD         [24] 1616 	lcall	_puts
                                   1617 ;	walk.c:213: while (i0) {
      00270E E5 10            [12] 1618 	mov	a,_bp
      002710 24 07            [12] 1619 	add	a,#0x07
      002712 F9               [12] 1620 	mov	r1,a
      002713 FF               [12] 1621 	mov	r7,a
      002714 E5 10            [12] 1622 	mov	a,_bp
      002716 24 0B            [12] 1623 	add	a,#0x0b
      002718 F8               [12] 1624 	mov	r0,a
      002719 E4               [12] 1625 	clr	a
      00271A F6               [12] 1626 	mov	@r0,a
      00271B 08               [12] 1627 	inc	r0
      00271C F6               [12] 1628 	mov	@r0,a
      00271D                       1629 00108$:
      00271D 78 11            [12] 1630 	mov	r0,#_i0
      00271F E6               [12] 1631 	mov	a,@r0
      002720 70 03            [24] 1632 	jnz	00182$
      002722 02 2A A4         [24] 1633 	ljmp	00110$
      002725                       1634 00182$:
                                   1635 ;	walk.c:214: for (i = 0; i < ROWS; i++)
      002725 7B 00            [12] 1636 	mov	r3,#0x00
      002727 7C 00            [12] 1637 	mov	r4,#0x00
      002729 A8 10            [24] 1638 	mov	r0,_bp
      00272B 08               [12] 1639 	inc	r0
      00272C E4               [12] 1640 	clr	a
      00272D F6               [12] 1641 	mov	@r0,a
      00272E 08               [12] 1642 	inc	r0
      00272F F6               [12] 1643 	mov	@r0,a
                                   1644 ;	walk.c:215: for (j = 0; j < COLS; j++)
      002730                       1645 00125$:
      002730 A8 10            [24] 1646 	mov	r0,_bp
      002732 08               [12] 1647 	inc	r0
      002733 C0 01            [24] 1648 	push	ar1
      002735 E5 10            [12] 1649 	mov	a,_bp
      002737 24 03            [12] 1650 	add	a,#0x03
      002739 F9               [12] 1651 	mov	r1,a
      00273A E6               [12] 1652 	mov	a,@r0
      00273B 24 00            [12] 1653 	add	a,#_g
      00273D F7               [12] 1654 	mov	@r1,a
      00273E 08               [12] 1655 	inc	r0
      00273F E6               [12] 1656 	mov	a,@r0
      002740 34 43            [12] 1657 	addc	a,#(_g >> 8)
      002742 09               [12] 1658 	inc	r1
      002743 F7               [12] 1659 	mov	@r1,a
      002744 D0 01            [24] 1660 	pop	ar1
      002746 7A 00            [12] 1661 	mov	r2,#0x00
      002748 7E 00            [12] 1662 	mov	r6,#0x00
      00274A                       1663 00112$:
                                   1664 ;	walk.c:216: g[i][j] = 0x55u;
      00274A E5 10            [12] 1665 	mov	a,_bp
      00274C 24 03            [12] 1666 	add	a,#0x03
      00274E F8               [12] 1667 	mov	r0,a
      00274F EA               [12] 1668 	mov	a,r2
      002750 26               [12] 1669 	add	a,@r0
      002751 F5 82            [12] 1670 	mov	dpl,a
      002753 EE               [12] 1671 	mov	a,r6
      002754 08               [12] 1672 	inc	r0
      002755 36               [12] 1673 	addc	a,@r0
      002756 F5 83            [12] 1674 	mov	dph,a
      002758 74 55            [12] 1675 	mov	a,#0x55
      00275A F0               [24] 1676 	movx	@dptr,a
                                   1677 ;	walk.c:215: for (j = 0; j < COLS; j++)
      00275B 0A               [12] 1678 	inc	r2
      00275C BA 00 01         [24] 1679 	cjne	r2,#0x00,00183$
      00275F 0E               [12] 1680 	inc	r6
      002760                       1681 00183$:
      002760 C3               [12] 1682 	clr	c
      002761 EA               [12] 1683 	mov	a,r2
      002762 94 C9            [12] 1684 	subb	a,#0xc9
      002764 EE               [12] 1685 	mov	a,r6
      002765 64 80            [12] 1686 	xrl	a,#0x80
      002767 94 80            [12] 1687 	subb	a,#0x80
      002769 40 DF            [24] 1688 	jc	00112$
                                   1689 ;	walk.c:214: for (i = 0; i < ROWS; i++)
      00276B A8 10            [24] 1690 	mov	r0,_bp
      00276D 08               [12] 1691 	inc	r0
      00276E 74 C9            [12] 1692 	mov	a,#0xc9
      002770 26               [12] 1693 	add	a,@r0
      002771 F6               [12] 1694 	mov	@r0,a
      002772 E4               [12] 1695 	clr	a
      002773 08               [12] 1696 	inc	r0
      002774 36               [12] 1697 	addc	a,@r0
      002775 F6               [12] 1698 	mov	@r0,a
      002776 0B               [12] 1699 	inc	r3
      002777 BB 00 01         [24] 1700 	cjne	r3,#0x00,00185$
      00277A 0C               [12] 1701 	inc	r4
      00277B                       1702 00185$:
      00277B C3               [12] 1703 	clr	c
      00277C EB               [12] 1704 	mov	a,r3
      00277D 94 30            [12] 1705 	subb	a,#0x30
      00277F EC               [12] 1706 	mov	a,r4
      002780 64 80            [12] 1707 	xrl	a,#0x80
      002782 94 80            [12] 1708 	subb	a,#0x80
      002784 40 AA            [24] 1709 	jc	00125$
                                   1710 ;	walk.c:218: initial.r = rand() % ROWS;
      002786 E5 10            [12] 1711 	mov	a,_bp
      002788 24 07            [12] 1712 	add	a,#0x07
      00278A F8               [12] 1713 	mov	r0,a
      00278B C0 07            [24] 1714 	push	ar7
      00278D C0 01            [24] 1715 	push	ar1
      00278F C0 00            [24] 1716 	push	ar0
      002791 12 2B 84         [24] 1717 	lcall	_rand
      002794 AD 82            [24] 1718 	mov	r5,dpl
      002796 AE 83            [24] 1719 	mov	r6,dph
      002798 74 30            [12] 1720 	mov	a,#0x30
      00279A C0 E0            [24] 1721 	push	acc
      00279C E4               [12] 1722 	clr	a
      00279D C0 E0            [24] 1723 	push	acc
      00279F 8D 82            [24] 1724 	mov	dpl,r5
      0027A1 8E 83            [24] 1725 	mov	dph,r6
      0027A3 12 2E 88         [24] 1726 	lcall	__modsint
      0027A6 AD 82            [24] 1727 	mov	r5,dpl
      0027A8 AE 83            [24] 1728 	mov	r6,dph
      0027AA 15 81            [12] 1729 	dec	sp
      0027AC 15 81            [12] 1730 	dec	sp
      0027AE D0 00            [24] 1731 	pop	ar0
      0027B0 D0 01            [24] 1732 	pop	ar1
      0027B2 A6 05            [24] 1733 	mov	@r0,ar5
      0027B4 08               [12] 1734 	inc	r0
      0027B5 A6 06            [24] 1735 	mov	@r0,ar6
      0027B7 18               [12] 1736 	dec	r0
                                   1737 ;	walk.c:219: initial.c = rand() % COLS;
      0027B8 74 02            [12] 1738 	mov	a,#0x02
      0027BA 29               [12] 1739 	add	a,r1
      0027BB F8               [12] 1740 	mov	r0,a
      0027BC C0 01            [24] 1741 	push	ar1
      0027BE C0 00            [24] 1742 	push	ar0
      0027C0 12 2B 84         [24] 1743 	lcall	_rand
      0027C3 AD 82            [24] 1744 	mov	r5,dpl
      0027C5 AE 83            [24] 1745 	mov	r6,dph
      0027C7 74 C9            [12] 1746 	mov	a,#0xc9
      0027C9 C0 E0            [24] 1747 	push	acc
      0027CB E4               [12] 1748 	clr	a
      0027CC C0 E0            [24] 1749 	push	acc
      0027CE 8D 82            [24] 1750 	mov	dpl,r5
      0027D0 8E 83            [24] 1751 	mov	dph,r6
      0027D2 12 2E 88         [24] 1752 	lcall	__modsint
      0027D5 AD 82            [24] 1753 	mov	r5,dpl
      0027D7 AE 83            [24] 1754 	mov	r6,dph
      0027D9 15 81            [12] 1755 	dec	sp
      0027DB 15 81            [12] 1756 	dec	sp
      0027DD D0 00            [24] 1757 	pop	ar0
      0027DF A6 05            [24] 1758 	mov	@r0,ar5
      0027E1 08               [12] 1759 	inc	r0
      0027E2 A6 06            [24] 1760 	mov	@r0,ar6
      0027E4 18               [12] 1761 	dec	r0
                                   1762 ;	walk.c:221: puts("\033[2J\033[?25l");
      0027E5 90 41 9A         [24] 1763 	mov	dptr,#___str_4
      0027E8 75 F0 80         [24] 1764 	mov	b,#0x80
      0027EB C0 00            [24] 1765 	push	ar0
      0027ED 12 2D AD         [24] 1766 	lcall	_puts
      0027F0 D0 00            [24] 1767 	pop	ar0
      0027F2 D0 01            [24] 1768 	pop	ar1
                                   1769 ;	walk.c:222: printf("\033[1;1H% 8u% 8d% 8d", N, initial.r, initial.c);
      0027F4 86 05            [24] 1770 	mov	ar5,@r0
      0027F6 08               [12] 1771 	inc	r0
      0027F7 86 06            [24] 1772 	mov	ar6,@r0
      0027F9 18               [12] 1773 	dec	r0
      0027FA 87 03            [24] 1774 	mov	ar3,@r1
      0027FC 09               [12] 1775 	inc	r1
      0027FD 87 04            [24] 1776 	mov	ar4,@r1
      0027FF 19               [12] 1777 	dec	r1
      002800 C0 01            [24] 1778 	push	ar1
      002802 C0 05            [24] 1779 	push	ar5
      002804 C0 06            [24] 1780 	push	ar6
      002806 C0 03            [24] 1781 	push	ar3
      002808 C0 04            [24] 1782 	push	ar4
      00280A E5 10            [12] 1783 	mov	a,_bp
      00280C 24 0B            [12] 1784 	add	a,#0x0b
      00280E F8               [12] 1785 	mov	r0,a
      00280F E6               [12] 1786 	mov	a,@r0
      002810 C0 E0            [24] 1787 	push	acc
      002812 08               [12] 1788 	inc	r0
      002813 E6               [12] 1789 	mov	a,@r0
      002814 C0 E0            [24] 1790 	push	acc
      002816 74 A5            [12] 1791 	mov	a,#___str_5
      002818 C0 E0            [24] 1792 	push	acc
      00281A 74 41            [12] 1793 	mov	a,#(___str_5 >> 8)
      00281C C0 E0            [24] 1794 	push	acc
      00281E 74 80            [12] 1795 	mov	a,#0x80
      002820 C0 E0            [24] 1796 	push	acc
      002822 12 2E 33         [24] 1797 	lcall	_printf
      002825 E5 81            [12] 1798 	mov	a,sp
      002827 24 F7            [12] 1799 	add	a,#0xf7
      002829 F5 81            [12] 1800 	mov	sp,a
      00282B D0 01            [24] 1801 	pop	ar1
      00282D D0 07            [24] 1802 	pop	ar7
                                   1803 ;	walk.c:224: for (i = 0; i < REG; i++) {
      00282F E5 10            [12] 1804 	mov	a,_bp
      002831 24 05            [12] 1805 	add	a,#0x05
      002833 F8               [12] 1806 	mov	r0,a
      002834 E4               [12] 1807 	clr	a
      002835 F6               [12] 1808 	mov	@r0,a
      002836 08               [12] 1809 	inc	r0
      002837 F6               [12] 1810 	mov	@r0,a
      002838                       1811 00116$:
                                   1812 ;	walk.c:225: neigh[i].r = neigh[REG + i].r * (1 + rand() % 8);
      002838 C0 07            [24] 1813 	push	ar7
      00283A E5 10            [12] 1814 	mov	a,_bp
      00283C 24 05            [12] 1815 	add	a,#0x05
      00283E F8               [12] 1816 	mov	r0,a
      00283F E6               [12] 1817 	mov	a,@r0
      002840 25 E0            [12] 1818 	add	a,acc
      002842 FB               [12] 1819 	mov	r3,a
      002843 08               [12] 1820 	inc	r0
      002844 E6               [12] 1821 	mov	a,@r0
      002845 33               [12] 1822 	rlc	a
      002846 FC               [12] 1823 	mov	r4,a
      002847 EB               [12] 1824 	mov	a,r3
      002848 2B               [12] 1825 	add	a,r3
      002849 FB               [12] 1826 	mov	r3,a
      00284A EC               [12] 1827 	mov	a,r4
      00284B 33               [12] 1828 	rlc	a
      00284C FC               [12] 1829 	mov	r4,a
      00284D E5 10            [12] 1830 	mov	a,_bp
      00284F 24 03            [12] 1831 	add	a,#0x03
      002851 F8               [12] 1832 	mov	r0,a
      002852 EB               [12] 1833 	mov	a,r3
      002853 24 72            [12] 1834 	add	a,#_neigh
      002855 F6               [12] 1835 	mov	@r0,a
      002856 EC               [12] 1836 	mov	a,r4
      002857 34 FF            [12] 1837 	addc	a,#(_neigh >> 8)
      002859 08               [12] 1838 	inc	r0
      00285A F6               [12] 1839 	mov	@r0,a
      00285B E5 10            [12] 1840 	mov	a,_bp
      00285D 24 05            [12] 1841 	add	a,#0x05
      00285F F8               [12] 1842 	mov	r0,a
      002860 86 06            [24] 1843 	mov	ar6,@r0
      002862 74 08            [12] 1844 	mov	a,#0x08
      002864 2E               [12] 1845 	add	a,r6
      002865 FE               [12] 1846 	mov	r6,a
      002866 C2 D5            [12] 1847 	clr	F0
      002868 75 F0 04         [24] 1848 	mov	b,#0x04
      00286B EE               [12] 1849 	mov	a,r6
      00286C 30 E7 04         [24] 1850 	jnb	acc.7,00187$
      00286F B2 D5            [12] 1851 	cpl	F0
      002871 F4               [12] 1852 	cpl	a
      002872 04               [12] 1853 	inc	a
      002873                       1854 00187$:
      002873 A4               [48] 1855 	mul	ab
      002874 30 D5 0A         [24] 1856 	jnb	F0,00188$
      002877 F4               [12] 1857 	cpl	a
      002878 24 01            [12] 1858 	add	a,#0x01
      00287A C5 F0            [12] 1859 	xch	a,b
      00287C F4               [12] 1860 	cpl	a
      00287D 34 00            [12] 1861 	addc	a,#0x00
      00287F C5 F0            [12] 1862 	xch	a,b
      002881                       1863 00188$:
      002881 FE               [12] 1864 	mov	r6,a
      002882 AD F0            [24] 1865 	mov	r5,b
      002884 24 72            [12] 1866 	add	a,#_neigh
      002886 F5 82            [12] 1867 	mov	dpl,a
      002888 ED               [12] 1868 	mov	a,r5
      002889 34 FF            [12] 1869 	addc	a,#(_neigh >> 8)
      00288B F5 83            [12] 1870 	mov	dph,a
      00288D A8 10            [24] 1871 	mov	r0,_bp
      00288F 08               [12] 1872 	inc	r0
      002890 E0               [24] 1873 	movx	a,@dptr
      002891 F6               [12] 1874 	mov	@r0,a
      002892 A3               [24] 1875 	inc	dptr
      002893 E0               [24] 1876 	movx	a,@dptr
      002894 08               [12] 1877 	inc	r0
      002895 F6               [12] 1878 	mov	@r0,a
      002896 C0 06            [24] 1879 	push	ar6
      002898 C0 05            [24] 1880 	push	ar5
      00289A C0 04            [24] 1881 	push	ar4
      00289C C0 03            [24] 1882 	push	ar3
      00289E C0 01            [24] 1883 	push	ar1
      0028A0 12 2B 84         [24] 1884 	lcall	_rand
      0028A3 AA 82            [24] 1885 	mov	r2,dpl
      0028A5 AF 83            [24] 1886 	mov	r7,dph
      0028A7 74 08            [12] 1887 	mov	a,#0x08
      0028A9 C0 E0            [24] 1888 	push	acc
      0028AB E4               [12] 1889 	clr	a
      0028AC C0 E0            [24] 1890 	push	acc
      0028AE 8A 82            [24] 1891 	mov	dpl,r2
      0028B0 8F 83            [24] 1892 	mov	dph,r7
      0028B2 12 2E 88         [24] 1893 	lcall	__modsint
      0028B5 AA 82            [24] 1894 	mov	r2,dpl
      0028B7 AF 83            [24] 1895 	mov	r7,dph
      0028B9 15 81            [12] 1896 	dec	sp
      0028BB 15 81            [12] 1897 	dec	sp
      0028BD D0 01            [24] 1898 	pop	ar1
      0028BF D0 03            [24] 1899 	pop	ar3
      0028C1 D0 04            [24] 1900 	pop	ar4
      0028C3 D0 05            [24] 1901 	pop	ar5
      0028C5 D0 06            [24] 1902 	pop	ar6
      0028C7 0A               [12] 1903 	inc	r2
      0028C8 BA 00 01         [24] 1904 	cjne	r2,#0x00,00189$
      0028CB 0F               [12] 1905 	inc	r7
      0028CC                       1906 00189$:
      0028CC C0 06            [24] 1907 	push	ar6
      0028CE C0 05            [24] 1908 	push	ar5
      0028D0 C0 04            [24] 1909 	push	ar4
      0028D2 C0 03            [24] 1910 	push	ar3
      0028D4 C0 01            [24] 1911 	push	ar1
      0028D6 C0 02            [24] 1912 	push	ar2
      0028D8 C0 07            [24] 1913 	push	ar7
      0028DA A8 10            [24] 1914 	mov	r0,_bp
      0028DC 08               [12] 1915 	inc	r0
      0028DD 86 82            [24] 1916 	mov	dpl,@r0
      0028DF 08               [12] 1917 	inc	r0
      0028E0 86 83            [24] 1918 	mov	dph,@r0
      0028E2 12 2C 7C         [24] 1919 	lcall	__mulint
      0028E5 AA 82            [24] 1920 	mov	r2,dpl
      0028E7 AF 83            [24] 1921 	mov	r7,dph
      0028E9 15 81            [12] 1922 	dec	sp
      0028EB 15 81            [12] 1923 	dec	sp
      0028ED D0 01            [24] 1924 	pop	ar1
      0028EF D0 03            [24] 1925 	pop	ar3
      0028F1 D0 04            [24] 1926 	pop	ar4
      0028F3 D0 05            [24] 1927 	pop	ar5
      0028F5 D0 06            [24] 1928 	pop	ar6
      0028F7 E5 10            [12] 1929 	mov	a,_bp
      0028F9 24 03            [12] 1930 	add	a,#0x03
      0028FB F8               [12] 1931 	mov	r0,a
      0028FC 86 82            [24] 1932 	mov	dpl,@r0
      0028FE 08               [12] 1933 	inc	r0
      0028FF 86 83            [24] 1934 	mov	dph,@r0
      002901 EA               [12] 1935 	mov	a,r2
      002902 F0               [24] 1936 	movx	@dptr,a
      002903 EF               [12] 1937 	mov	a,r7
      002904 A3               [24] 1938 	inc	dptr
      002905 F0               [24] 1939 	movx	@dptr,a
                                   1940 ;	walk.c:226: neigh[i].c = neigh[REG + i].c * (1 + rand() % 8);
      002906 EB               [12] 1941 	mov	a,r3
      002907 24 72            [12] 1942 	add	a,#_neigh
      002909 FB               [12] 1943 	mov	r3,a
      00290A EC               [12] 1944 	mov	a,r4
      00290B 34 FF            [12] 1945 	addc	a,#(_neigh >> 8)
      00290D FC               [12] 1946 	mov	r4,a
      00290E 74 02            [12] 1947 	mov	a,#0x02
      002910 2B               [12] 1948 	add	a,r3
      002911 FA               [12] 1949 	mov	r2,a
      002912 E4               [12] 1950 	clr	a
      002913 3C               [12] 1951 	addc	a,r4
      002914 FF               [12] 1952 	mov	r7,a
      002915 EE               [12] 1953 	mov	a,r6
      002916 24 72            [12] 1954 	add	a,#_neigh
      002918 FE               [12] 1955 	mov	r6,a
      002919 ED               [12] 1956 	mov	a,r5
      00291A 34 FF            [12] 1957 	addc	a,#(_neigh >> 8)
      00291C FD               [12] 1958 	mov	r5,a
      00291D 8E 82            [24] 1959 	mov	dpl,r6
      00291F 8D 83            [24] 1960 	mov	dph,r5
      002921 A3               [24] 1961 	inc	dptr
      002922 A3               [24] 1962 	inc	dptr
      002923 E5 10            [12] 1963 	mov	a,_bp
      002925 24 03            [12] 1964 	add	a,#0x03
      002927 F8               [12] 1965 	mov	r0,a
      002928 E0               [24] 1966 	movx	a,@dptr
      002929 F6               [12] 1967 	mov	@r0,a
      00292A A3               [24] 1968 	inc	dptr
      00292B E0               [24] 1969 	movx	a,@dptr
      00292C 08               [12] 1970 	inc	r0
      00292D F6               [12] 1971 	mov	@r0,a
      00292E C0 07            [24] 1972 	push	ar7
      002930 C0 04            [24] 1973 	push	ar4
      002932 C0 03            [24] 1974 	push	ar3
      002934 C0 02            [24] 1975 	push	ar2
      002936 C0 01            [24] 1976 	push	ar1
      002938 12 2B 84         [24] 1977 	lcall	_rand
      00293B AD 82            [24] 1978 	mov	r5,dpl
      00293D AE 83            [24] 1979 	mov	r6,dph
      00293F 74 08            [12] 1980 	mov	a,#0x08
      002941 C0 E0            [24] 1981 	push	acc
      002943 E4               [12] 1982 	clr	a
      002944 C0 E0            [24] 1983 	push	acc
      002946 8D 82            [24] 1984 	mov	dpl,r5
      002948 8E 83            [24] 1985 	mov	dph,r6
      00294A 12 2E 88         [24] 1986 	lcall	__modsint
      00294D AD 82            [24] 1987 	mov	r5,dpl
      00294F AE 83            [24] 1988 	mov	r6,dph
      002951 15 81            [12] 1989 	dec	sp
      002953 15 81            [12] 1990 	dec	sp
      002955 D0 01            [24] 1991 	pop	ar1
      002957 D0 02            [24] 1992 	pop	ar2
      002959 D0 03            [24] 1993 	pop	ar3
      00295B D0 04            [24] 1994 	pop	ar4
      00295D D0 07            [24] 1995 	pop	ar7
      00295F 0D               [12] 1996 	inc	r5
      002960 BD 00 01         [24] 1997 	cjne	r5,#0x00,00190$
      002963 0E               [12] 1998 	inc	r6
      002964                       1999 00190$:
      002964 C0 07            [24] 2000 	push	ar7
      002966 C0 04            [24] 2001 	push	ar4
      002968 C0 03            [24] 2002 	push	ar3
      00296A C0 02            [24] 2003 	push	ar2
      00296C C0 01            [24] 2004 	push	ar1
      00296E C0 05            [24] 2005 	push	ar5
      002970 C0 06            [24] 2006 	push	ar6
      002972 E5 10            [12] 2007 	mov	a,_bp
      002974 24 03            [12] 2008 	add	a,#0x03
      002976 F8               [12] 2009 	mov	r0,a
      002977 86 82            [24] 2010 	mov	dpl,@r0
      002979 08               [12] 2011 	inc	r0
      00297A 86 83            [24] 2012 	mov	dph,@r0
      00297C 12 2C 7C         [24] 2013 	lcall	__mulint
      00297F AD 82            [24] 2014 	mov	r5,dpl
      002981 AE 83            [24] 2015 	mov	r6,dph
      002983 15 81            [12] 2016 	dec	sp
      002985 15 81            [12] 2017 	dec	sp
      002987 D0 01            [24] 2018 	pop	ar1
      002989 D0 02            [24] 2019 	pop	ar2
      00298B D0 03            [24] 2020 	pop	ar3
      00298D D0 04            [24] 2021 	pop	ar4
      00298F D0 07            [24] 2022 	pop	ar7
      002991 8A 82            [24] 2023 	mov	dpl,r2
      002993 8F 83            [24] 2024 	mov	dph,r7
      002995 ED               [12] 2025 	mov	a,r5
      002996 F0               [24] 2026 	movx	@dptr,a
      002997 EE               [12] 2027 	mov	a,r6
      002998 A3               [24] 2028 	inc	dptr
      002999 F0               [24] 2029 	movx	@dptr,a
                                   2030 ;	walk.c:227: printf("% 8d% 8d", neigh[i].r, neigh[i].c);
      00299A 8B 82            [24] 2031 	mov	dpl,r3
      00299C 8C 83            [24] 2032 	mov	dph,r4
      00299E E0               [24] 2033 	movx	a,@dptr
      00299F FB               [12] 2034 	mov	r3,a
      0029A0 A3               [24] 2035 	inc	dptr
      0029A1 E0               [24] 2036 	movx	a,@dptr
      0029A2 FC               [12] 2037 	mov	r4,a
      0029A3 C0 07            [24] 2038 	push	ar7
      0029A5 C0 01            [24] 2039 	push	ar1
      0029A7 C0 05            [24] 2040 	push	ar5
      0029A9 C0 06            [24] 2041 	push	ar6
      0029AB C0 03            [24] 2042 	push	ar3
      0029AD C0 04            [24] 2043 	push	ar4
      0029AF 74 B8            [12] 2044 	mov	a,#___str_6
      0029B1 C0 E0            [24] 2045 	push	acc
      0029B3 74 41            [12] 2046 	mov	a,#(___str_6 >> 8)
      0029B5 C0 E0            [24] 2047 	push	acc
      0029B7 74 80            [12] 2048 	mov	a,#0x80
      0029B9 C0 E0            [24] 2049 	push	acc
      0029BB 12 2E 33         [24] 2050 	lcall	_printf
      0029BE E5 81            [12] 2051 	mov	a,sp
      0029C0 24 F9            [12] 2052 	add	a,#0xf9
      0029C2 F5 81            [12] 2053 	mov	sp,a
      0029C4 D0 01            [24] 2054 	pop	ar1
      0029C6 D0 07            [24] 2055 	pop	ar7
                                   2056 ;	walk.c:224: for (i = 0; i < REG; i++) {
      0029C8 E5 10            [12] 2057 	mov	a,_bp
      0029CA 24 05            [12] 2058 	add	a,#0x05
      0029CC F8               [12] 2059 	mov	r0,a
      0029CD 06               [12] 2060 	inc	@r0
      0029CE B6 00 02         [24] 2061 	cjne	@r0,#0x00,00191$
      0029D1 08               [12] 2062 	inc	r0
      0029D2 06               [12] 2063 	inc	@r0
      0029D3                       2064 00191$:
      0029D3 E5 10            [12] 2065 	mov	a,_bp
      0029D5 24 05            [12] 2066 	add	a,#0x05
      0029D7 F8               [12] 2067 	mov	r0,a
      0029D8 86 05            [24] 2068 	mov	ar5,@r0
      0029DA 08               [12] 2069 	inc	r0
      0029DB 86 06            [24] 2070 	mov	ar6,@r0
      0029DD C3               [12] 2071 	clr	c
      0029DE ED               [12] 2072 	mov	a,r5
      0029DF 94 08            [12] 2073 	subb	a,#0x08
      0029E1 EE               [12] 2074 	mov	a,r6
      0029E2 94 00            [12] 2075 	subb	a,#0x00
      0029E4 D0 07            [24] 2076 	pop	ar7
      0029E6 50 03            [24] 2077 	jnc	00192$
      0029E8 02 28 38         [24] 2078 	ljmp	00116$
      0029EB                       2079 00192$:
                                   2080 ;	walk.c:230: OE76 = OE76_0;
      0029EB 78 12            [12] 2081 	mov	r0,#_OE76
      0029ED 76 3F            [12] 2082 	mov	@r0,#0x3f
                                   2083 ;	walk.c:231: setOE(OE76_NC);
      0029EF 75 82 00         [24] 2084 	mov	dpl,#0x00
      0029F2 C0 07            [24] 2085 	push	ar7
      0029F4 C0 01            [24] 2086 	push	ar1
      0029F6 12 20 8C         [24] 2087 	lcall	_setOE
      0029F9 D0 01            [24] 2088 	pop	ar1
      0029FB D0 07            [24] 2089 	pop	ar7
                                   2090 ;	walk.c:233: walk(&initial);
      0029FD 8F 04            [24] 2091 	mov	ar4,r7
      0029FF 7D 00            [12] 2092 	mov	r5,#0x00
      002A01 7E 40            [12] 2093 	mov	r6,#0x40
      002A03 8C 82            [24] 2094 	mov	dpl,r4
      002A05 8D 83            [24] 2095 	mov	dph,r5
      002A07 8E F0            [24] 2096 	mov	b,r6
      002A09 C0 07            [24] 2097 	push	ar7
      002A0B C0 01            [24] 2098 	push	ar1
      002A0D 12 23 65         [24] 2099 	lcall	_walk
      002A10 D0 01            [24] 2100 	pop	ar1
      002A12 D0 07            [24] 2101 	pop	ar7
                                   2102 ;	walk.c:235: for (i = 0; i < ROWS; i++)
      002A14 E5 10            [12] 2103 	mov	a,_bp
      002A16 24 05            [12] 2104 	add	a,#0x05
      002A18 F8               [12] 2105 	mov	r0,a
      002A19 E4               [12] 2106 	clr	a
      002A1A F6               [12] 2107 	mov	@r0,a
      002A1B 08               [12] 2108 	inc	r0
      002A1C F6               [12] 2109 	mov	@r0,a
      002A1D 7B 00            [12] 2110 	mov	r3,#0x00
      002A1F 7C 00            [12] 2111 	mov	r4,#0x00
                                   2112 ;	walk.c:236: for (j = 0; j < COLS; j++)
      002A21                       2113 00132$:
      002A21 E5 10            [12] 2114 	mov	a,_bp
      002A23 24 03            [12] 2115 	add	a,#0x03
      002A25 F8               [12] 2116 	mov	r0,a
      002A26 EB               [12] 2117 	mov	a,r3
      002A27 24 00            [12] 2118 	add	a,#_g
      002A29 F6               [12] 2119 	mov	@r0,a
      002A2A EC               [12] 2120 	mov	a,r4
      002A2B 34 43            [12] 2121 	addc	a,#(_g >> 8)
      002A2D 08               [12] 2122 	inc	r0
      002A2E F6               [12] 2123 	mov	@r0,a
      002A2F 7A 00            [12] 2124 	mov	r2,#0x00
      002A31 7E 00            [12] 2125 	mov	r6,#0x00
      002A33                       2126 00118$:
                                   2127 ;	walk.c:237: if (g[i][j] != 0xaau) bang();
      002A33 E5 10            [12] 2128 	mov	a,_bp
      002A35 24 03            [12] 2129 	add	a,#0x03
      002A37 F8               [12] 2130 	mov	r0,a
      002A38 EA               [12] 2131 	mov	a,r2
      002A39 26               [12] 2132 	add	a,@r0
      002A3A F5 82            [12] 2133 	mov	dpl,a
      002A3C EE               [12] 2134 	mov	a,r6
      002A3D 08               [12] 2135 	inc	r0
      002A3E 36               [12] 2136 	addc	a,@r0
      002A3F F5 83            [12] 2137 	mov	dph,a
      002A41 E0               [24] 2138 	movx	a,@dptr
      002A42 FD               [12] 2139 	mov	r5,a
      002A43 BD AA 02         [24] 2140 	cjne	r5,#0xaa,00193$
      002A46 80 1B            [24] 2141 	sjmp	00119$
      002A48                       2142 00193$:
      002A48 C0 07            [24] 2143 	push	ar7
      002A4A C0 06            [24] 2144 	push	ar6
      002A4C C0 04            [24] 2145 	push	ar4
      002A4E C0 03            [24] 2146 	push	ar3
      002A50 C0 02            [24] 2147 	push	ar2
      002A52 C0 01            [24] 2148 	push	ar1
      002A54 12 20 7F         [24] 2149 	lcall	_bang
      002A57 D0 01            [24] 2150 	pop	ar1
      002A59 D0 02            [24] 2151 	pop	ar2
      002A5B D0 03            [24] 2152 	pop	ar3
      002A5D D0 04            [24] 2153 	pop	ar4
      002A5F D0 06            [24] 2154 	pop	ar6
      002A61 D0 07            [24] 2155 	pop	ar7
      002A63                       2156 00119$:
                                   2157 ;	walk.c:236: for (j = 0; j < COLS; j++)
      002A63 0A               [12] 2158 	inc	r2
      002A64 BA 00 01         [24] 2159 	cjne	r2,#0x00,00194$
      002A67 0E               [12] 2160 	inc	r6
      002A68                       2161 00194$:
      002A68 C3               [12] 2162 	clr	c
      002A69 EA               [12] 2163 	mov	a,r2
      002A6A 94 C9            [12] 2164 	subb	a,#0xc9
      002A6C EE               [12] 2165 	mov	a,r6
      002A6D 64 80            [12] 2166 	xrl	a,#0x80
      002A6F 94 80            [12] 2167 	subb	a,#0x80
      002A71 40 C0            [24] 2168 	jc	00118$
                                   2169 ;	walk.c:235: for (i = 0; i < ROWS; i++)
      002A73 74 C9            [12] 2170 	mov	a,#0xc9
      002A75 2B               [12] 2171 	add	a,r3
      002A76 FB               [12] 2172 	mov	r3,a
      002A77 E4               [12] 2173 	clr	a
      002A78 3C               [12] 2174 	addc	a,r4
      002A79 FC               [12] 2175 	mov	r4,a
      002A7A E5 10            [12] 2176 	mov	a,_bp
      002A7C 24 05            [12] 2177 	add	a,#0x05
      002A7E F8               [12] 2178 	mov	r0,a
      002A7F 06               [12] 2179 	inc	@r0
      002A80 B6 00 02         [24] 2180 	cjne	@r0,#0x00,00196$
      002A83 08               [12] 2181 	inc	r0
      002A84 06               [12] 2182 	inc	@r0
      002A85                       2183 00196$:
      002A85 E5 10            [12] 2184 	mov	a,_bp
      002A87 24 05            [12] 2185 	add	a,#0x05
      002A89 F8               [12] 2186 	mov	r0,a
      002A8A C3               [12] 2187 	clr	c
      002A8B E6               [12] 2188 	mov	a,@r0
      002A8C 94 30            [12] 2189 	subb	a,#0x30
      002A8E 08               [12] 2190 	inc	r0
      002A8F E6               [12] 2191 	mov	a,@r0
      002A90 64 80            [12] 2192 	xrl	a,#0x80
      002A92 94 80            [12] 2193 	subb	a,#0x80
      002A94 40 8B            [24] 2194 	jc	00132$
                                   2195 ;	walk.c:239: N++;
      002A96 E5 10            [12] 2196 	mov	a,_bp
      002A98 24 0B            [12] 2197 	add	a,#0x0b
      002A9A F8               [12] 2198 	mov	r0,a
      002A9B 06               [12] 2199 	inc	@r0
      002A9C B6 00 02         [24] 2200 	cjne	@r0,#0x00,00198$
      002A9F 08               [12] 2201 	inc	r0
      002AA0 06               [12] 2202 	inc	@r0
      002AA1                       2203 00198$:
      002AA1 02 27 1D         [24] 2204 	ljmp	00108$
      002AA4                       2205 00110$:
                                   2206 ;	walk.c:242: EA = 0;
                                   2207 ;	assignBit
      002AA4 C2 AF            [12] 2208 	clr	_EA
                                   2209 ;	walk.c:244: puts("\033[2J\033[?25h");
      002AA6 90 41 C1         [24] 2210 	mov	dptr,#___str_7
      002AA9 75 F0 80         [24] 2211 	mov	b,#0x80
      002AAC 12 2D AD         [24] 2212 	lcall	_puts
                                   2213 ;	walk.c:33: PCON |= 2;
      002AAF 43 87 02         [24] 2214 	orl	_PCON,#0x02
                                   2215 ;	walk.c:248: return;
                                   2216 ;	walk.c:249: }
      002AB2 85 10 81         [24] 2217 	mov	sp,_bp
      002AB5 D0 10            [24] 2218 	pop	_bp
      002AB7 22               [24] 2219 	ret
                                   2220 ;------------------------------------------------------------
                                   2221 ;Allocation info for local variables in function 'stinit'
                                   2222 ;------------------------------------------------------------
                                   2223 ;	walk.c:251: static void stinit(void) {
                                   2224 ;	-----------------------------------------
                                   2225 ;	 function stinit
                                   2226 ;	-----------------------------------------
      002AB8                       2227 _stinit:
                                   2228 ;	walk.c:252: sp = -1;
      002AB8 90 FF 70         [24] 2229 	mov	dptr,#_sp
      002ABB 74 FF            [12] 2230 	mov	a,#0xff
      002ABD F0               [24] 2231 	movx	@dptr,a
      002ABE A3               [24] 2232 	inc	dptr
      002ABF F0               [24] 2233 	movx	@dptr,a
                                   2234 ;	walk.c:253: return;
                                   2235 ;	walk.c:254: }
      002AC0 22               [24] 2236 	ret
                                   2237 ;------------------------------------------------------------
                                   2238 ;Allocation info for local variables in function 'stpush'
                                   2239 ;------------------------------------------------------------
                                   2240 ;t                         Allocated to registers r5 r6 r7 
                                   2241 ;------------------------------------------------------------
                                   2242 ;	walk.c:256: static uint8_t stpush(struct node *t) {
                                   2243 ;	-----------------------------------------
                                   2244 ;	 function stpush
                                   2245 ;	-----------------------------------------
      002AC1                       2246 _stpush:
      002AC1 AD 82            [24] 2247 	mov	r5,dpl
      002AC3 AE 83            [24] 2248 	mov	r6,dph
      002AC5 AF F0            [24] 2249 	mov	r7,b
                                   2250 ;	walk.c:257: if (sp == (SMAX - 1)) return 0u;
      002AC7 90 FF 70         [24] 2251 	mov	dptr,#_sp
      002ACA E0               [24] 2252 	movx	a,@dptr
      002ACB FB               [12] 2253 	mov	r3,a
      002ACC A3               [24] 2254 	inc	dptr
      002ACD E0               [24] 2255 	movx	a,@dptr
      002ACE FC               [12] 2256 	mov	r4,a
      002ACF BB AF 07         [24] 2257 	cjne	r3,#0xaf,00102$
      002AD2 BC 25 04         [24] 2258 	cjne	r4,#0x25,00102$
      002AD5 75 82 00         [24] 2259 	mov	dpl,#0x00
      002AD8 22               [24] 2260 	ret
      002AD9                       2261 00102$:
                                   2262 ;	walk.c:258: sp++;
      002AD9 90 FF 70         [24] 2263 	mov	dptr,#_sp
      002ADC 74 01            [12] 2264 	mov	a,#0x01
      002ADE 2B               [12] 2265 	add	a,r3
      002ADF F0               [24] 2266 	movx	@dptr,a
      002AE0 E4               [12] 2267 	clr	a
      002AE1 3C               [12] 2268 	addc	a,r4
      002AE2 A3               [24] 2269 	inc	dptr
      002AE3 F0               [24] 2270 	movx	@dptr,a
                                   2271 ;	walk.c:259: stack[sp] = *t;
      002AE4 90 FF 70         [24] 2272 	mov	dptr,#_sp
      002AE7 E0               [24] 2273 	movx	a,@dptr
      002AE8 FB               [12] 2274 	mov	r3,a
      002AE9 A3               [24] 2275 	inc	dptr
      002AEA E0               [24] 2276 	movx	a,@dptr
      002AEB FC               [12] 2277 	mov	r4,a
      002AEC EB               [12] 2278 	mov	a,r3
      002AED 2B               [12] 2279 	add	a,r3
      002AEE FB               [12] 2280 	mov	r3,a
      002AEF EC               [12] 2281 	mov	a,r4
      002AF0 33               [12] 2282 	rlc	a
      002AF1 FC               [12] 2283 	mov	r4,a
      002AF2 EB               [12] 2284 	mov	a,r3
      002AF3 2B               [12] 2285 	add	a,r3
      002AF4 FB               [12] 2286 	mov	r3,a
      002AF5 EC               [12] 2287 	mov	a,r4
      002AF6 33               [12] 2288 	rlc	a
      002AF7 FC               [12] 2289 	mov	r4,a
      002AF8 EB               [12] 2290 	mov	a,r3
      002AF9 24 B0            [12] 2291 	add	a,#_stack
      002AFB FB               [12] 2292 	mov	r3,a
      002AFC EC               [12] 2293 	mov	a,r4
      002AFD 34 68            [12] 2294 	addc	a,#(_stack >> 8)
      002AFF FC               [12] 2295 	mov	r4,a
      002B00 7A 00            [12] 2296 	mov	r2,#0x00
      002B02 74 04            [12] 2297 	mov	a,#0x04
      002B04 C0 E0            [24] 2298 	push	acc
      002B06 E4               [12] 2299 	clr	a
      002B07 C0 E0            [24] 2300 	push	acc
      002B09 C0 05            [24] 2301 	push	ar5
      002B0B C0 06            [24] 2302 	push	ar6
      002B0D C0 07            [24] 2303 	push	ar7
      002B0F 8B 82            [24] 2304 	mov	dpl,r3
      002B11 8C 83            [24] 2305 	mov	dph,r4
      002B13 8A F0            [24] 2306 	mov	b,r2
      002B15 12 2D 1A         [24] 2307 	lcall	___memcpy
      002B18 E5 81            [12] 2308 	mov	a,sp
      002B1A 24 FB            [12] 2309 	add	a,#0xfb
      002B1C F5 81            [12] 2310 	mov	sp,a
                                   2311 ;	walk.c:260: return 1u;
      002B1E 75 82 01         [24] 2312 	mov	dpl,#0x01
                                   2313 ;	walk.c:261: }
      002B21 22               [24] 2314 	ret
                                   2315 ;------------------------------------------------------------
                                   2316 ;Allocation info for local variables in function 'stpop'
                                   2317 ;------------------------------------------------------------
                                   2318 ;t                         Allocated to registers r5 r6 r7 
                                   2319 ;------------------------------------------------------------
                                   2320 ;	walk.c:263: static uint8_t stpop(struct node *t) {
                                   2321 ;	-----------------------------------------
                                   2322 ;	 function stpop
                                   2323 ;	-----------------------------------------
      002B22                       2324 _stpop:
      002B22 AD 82            [24] 2325 	mov	r5,dpl
      002B24 AE 83            [24] 2326 	mov	r6,dph
      002B26 AF F0            [24] 2327 	mov	r7,b
                                   2328 ;	walk.c:264: if (sp == -1) return 0u;
      002B28 90 FF 70         [24] 2329 	mov	dptr,#_sp
      002B2B E0               [24] 2330 	movx	a,@dptr
      002B2C FB               [12] 2331 	mov	r3,a
      002B2D A3               [24] 2332 	inc	dptr
      002B2E E0               [24] 2333 	movx	a,@dptr
      002B2F FC               [12] 2334 	mov	r4,a
      002B30 BB FF 07         [24] 2335 	cjne	r3,#0xff,00102$
      002B33 BC FF 04         [24] 2336 	cjne	r4,#0xff,00102$
      002B36 75 82 00         [24] 2337 	mov	dpl,#0x00
      002B39 22               [24] 2338 	ret
      002B3A                       2339 00102$:
                                   2340 ;	walk.c:265: *t = stack[sp];
      002B3A EB               [12] 2341 	mov	a,r3
      002B3B 2B               [12] 2342 	add	a,r3
      002B3C FB               [12] 2343 	mov	r3,a
      002B3D EC               [12] 2344 	mov	a,r4
      002B3E 33               [12] 2345 	rlc	a
      002B3F FC               [12] 2346 	mov	r4,a
      002B40 EB               [12] 2347 	mov	a,r3
      002B41 2B               [12] 2348 	add	a,r3
      002B42 FB               [12] 2349 	mov	r3,a
      002B43 EC               [12] 2350 	mov	a,r4
      002B44 33               [12] 2351 	rlc	a
      002B45 FC               [12] 2352 	mov	r4,a
      002B46 EB               [12] 2353 	mov	a,r3
      002B47 24 B0            [12] 2354 	add	a,#_stack
      002B49 FB               [12] 2355 	mov	r3,a
      002B4A EC               [12] 2356 	mov	a,r4
      002B4B 34 68            [12] 2357 	addc	a,#(_stack >> 8)
      002B4D FC               [12] 2358 	mov	r4,a
      002B4E 7A 00            [12] 2359 	mov	r2,#0x00
      002B50 74 04            [12] 2360 	mov	a,#0x04
      002B52 C0 E0            [24] 2361 	push	acc
      002B54 E4               [12] 2362 	clr	a
      002B55 C0 E0            [24] 2363 	push	acc
      002B57 C0 03            [24] 2364 	push	ar3
      002B59 C0 04            [24] 2365 	push	ar4
      002B5B C0 02            [24] 2366 	push	ar2
      002B5D 8D 82            [24] 2367 	mov	dpl,r5
      002B5F 8E 83            [24] 2368 	mov	dph,r6
      002B61 8F F0            [24] 2369 	mov	b,r7
      002B63 12 2D 1A         [24] 2370 	lcall	___memcpy
      002B66 E5 81            [12] 2371 	mov	a,sp
      002B68 24 FB            [12] 2372 	add	a,#0xfb
      002B6A F5 81            [12] 2373 	mov	sp,a
                                   2374 ;	walk.c:266: sp--;
      002B6C 90 FF 70         [24] 2375 	mov	dptr,#_sp
      002B6F E0               [24] 2376 	movx	a,@dptr
      002B70 24 FF            [12] 2377 	add	a,#0xff
      002B72 FE               [12] 2378 	mov	r6,a
      002B73 A3               [24] 2379 	inc	dptr
      002B74 E0               [24] 2380 	movx	a,@dptr
      002B75 34 FF            [12] 2381 	addc	a,#0xff
      002B77 FF               [12] 2382 	mov	r7,a
      002B78 90 FF 70         [24] 2383 	mov	dptr,#_sp
      002B7B EE               [12] 2384 	mov	a,r6
      002B7C F0               [24] 2385 	movx	@dptr,a
      002B7D EF               [12] 2386 	mov	a,r7
      002B7E A3               [24] 2387 	inc	dptr
      002B7F F0               [24] 2388 	movx	@dptr,a
                                   2389 ;	walk.c:267: return 1u;
      002B80 75 82 01         [24] 2390 	mov	dpl,#0x01
                                   2391 ;	walk.c:268: }
      002B83 22               [24] 2392 	ret
                                   2393 	.area CSEG    (CODE)
                                   2394 	.area CONST   (CODE)
                                   2395 	.area CONST   (CODE)
      004166                       2396 ___str_0:
      004166 4D 65 6D 6F 72 79 20  2397 	.ascii "Memory error"
             65 72 72 6F 72
      004172 00                    2398 	.db 0x00
                                   2399 	.area CSEG    (CODE)
                                   2400 	.area CONST   (CODE)
      004173                       2401 ___str_1:
      004173 1B                    2402 	.db 0x1b
      004174 5B 25 64 3B 25 64 48  2403 	.ascii "[%d;%dHo"
             6F
      00417C 00                    2404 	.db 0x00
                                   2405 	.area CSEG    (CODE)
                                   2406 	.area CONST   (CODE)
      00417D                       2407 ___str_2:
      00417D 1B                    2408 	.db 0x1b
      00417E 5B 32 3B 31 48 25 20  2409 	.ascii "[2;1H% 8d% 8d% 8d"
             38 64 25 20 38 64 25
             20 38 64
      00418F 00                    2410 	.db 0x00
                                   2411 	.area CSEG    (CODE)
                                   2412 	.area CONST   (CODE)
      004190                       2413 ___str_3:
      004190 1B                    2414 	.db 0x1b
      004191 5B 25 64 3B 25 64 48  2415 	.ascii "[%d;%dH."
             2E
      004199 00                    2416 	.db 0x00
                                   2417 	.area CSEG    (CODE)
                                   2418 	.area CONST   (CODE)
      00419A                       2419 ___str_4:
      00419A 1B                    2420 	.db 0x1b
      00419B 5B 32 4A              2421 	.ascii "[2J"
      00419E 1B                    2422 	.db 0x1b
      00419F 5B 3F 32 35 6C        2423 	.ascii "[?25l"
      0041A4 00                    2424 	.db 0x00
                                   2425 	.area CSEG    (CODE)
                                   2426 	.area CONST   (CODE)
      0041A5                       2427 ___str_5:
      0041A5 1B                    2428 	.db 0x1b
      0041A6 5B 31 3B 31 48 25 20  2429 	.ascii "[1;1H% 8u% 8d% 8d"
             38 75 25 20 38 64 25
             20 38 64
      0041B7 00                    2430 	.db 0x00
                                   2431 	.area CSEG    (CODE)
                                   2432 	.area CONST   (CODE)
      0041B8                       2433 ___str_6:
      0041B8 25 20 38 64 25 20 38  2434 	.ascii "% 8d% 8d"
             64
      0041C0 00                    2435 	.db 0x00
                                   2436 	.area CSEG    (CODE)
                                   2437 	.area CONST   (CODE)
      0041C1                       2438 ___str_7:
      0041C1 1B                    2439 	.db 0x1b
      0041C2 5B 32 4A              2440 	.ascii "[2J"
      0041C5 1B                    2441 	.db 0x1b
      0041C6 5B 3F 32 35 68        2442 	.ascii "[?25h"
      0041CB 00                    2443 	.db 0x00
                                   2444 	.area CSEG    (CODE)
                                   2445 	.area XINIT   (CODE)
      0041D7                       2446 __xinit__neigh:
      0041D7 FF FF                 2447 	.byte #0xff, #0xff	; -1
      0041D9 01 00                 2448 	.byte #0x01, #0x00	;  1
      0041DB FF FF                 2449 	.byte #0xff, #0xff	; -1
      0041DD FF FF                 2450 	.byte #0xff, #0xff	; -1
      0041DF 01 00                 2451 	.byte #0x01, #0x00	;  1
      0041E1 FF FF                 2452 	.byte #0xff, #0xff	; -1
      0041E3 01 00                 2453 	.byte #0x01, #0x00	;  1
      0041E5 01 00                 2454 	.byte #0x01, #0x00	;  1
      0041E7 FF FF                 2455 	.byte #0xff, #0xff	; -1
      0041E9 00 00                 2456 	.byte #0x00, #0x00	;  0
      0041EB 00 00                 2457 	.byte #0x00, #0x00	;  0
      0041ED FF FF                 2458 	.byte #0xff, #0xff	; -1
      0041EF 01 00                 2459 	.byte #0x01, #0x00	;  1
      0041F1 00 00                 2460 	.byte #0x00, #0x00	;  0
      0041F3 00 00                 2461 	.byte #0x00, #0x00	;  0
      0041F5 01 00                 2462 	.byte #0x01, #0x00	;  1
      0041F7 FF FF                 2463 	.byte #0xff, #0xff	; -1
      0041F9 01 00                 2464 	.byte #0x01, #0x00	;  1
      0041FB FF FF                 2465 	.byte #0xff, #0xff	; -1
      0041FD FF FF                 2466 	.byte #0xff, #0xff	; -1
      0041FF 01 00                 2467 	.byte #0x01, #0x00	;  1
      004201 FF FF                 2468 	.byte #0xff, #0xff	; -1
      004203 01 00                 2469 	.byte #0x01, #0x00	;  1
      004205 01 00                 2470 	.byte #0x01, #0x00	;  1
      004207 FF FF                 2471 	.byte #0xff, #0xff	; -1
      004209 00 00                 2472 	.byte #0x00, #0x00	;  0
      00420B 00 00                 2473 	.byte #0x00, #0x00	;  0
      00420D FF FF                 2474 	.byte #0xff, #0xff	; -1
      00420F 01 00                 2475 	.byte #0x01, #0x00	;  1
      004211 00 00                 2476 	.byte #0x00, #0x00	;  0
      004213 00 00                 2477 	.byte #0x00, #0x00	;  0
      004215 01 00                 2478 	.byte #0x01, #0x00	;  1
                                   2479 	.area CABS    (ABS,CODE)
