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
      004300                        321 _g:
      004300                        322 	.ds 9648
      0068B0                        323 _queue:
      0068B0                        324 	.ds 38592
      00FF70                        325 _hp:
      00FF70                        326 	.ds 2
      00FF72                        327 _tp:
      00FF72                        328 	.ds 2
                                    329 ;--------------------------------------------------------
                                    330 ; absolute external ram data
                                    331 ;--------------------------------------------------------
                                    332 	.area XABS    (ABS,XDATA)
                                    333 ;--------------------------------------------------------
                                    334 ; external initialized ram data
                                    335 ;--------------------------------------------------------
                                    336 	.area XISEG   (XDATA)
      00FF74                        337 _neigh:
      00FF74                        338 	.ds 64
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
      002006 02 26 B9         [24]  377 	ljmp	_main
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
                                    444 ;Allocation info for local variables in function 'reset'
                                    445 ;------------------------------------------------------------
                                    446 ;	walk.c:32: static void reset(void) __naked {
                                    447 ;	-----------------------------------------
                                    448 ;	 function reset
                                    449 ;	-----------------------------------------
      00207F                        450 _reset:
                                    451 ;	naked function: no prologue.
                                    452 ;	walk.c:35: __endasm;
      00207F 43 87 02         [24]  453 	orl	pcon, #2
                                    454 ;	walk.c:36: }
                                    455 ;	naked function: no epilogue.
                                    456 ;------------------------------------------------------------
                                    457 ;Allocation info for local variables in function 'bang'
                                    458 ;------------------------------------------------------------
                                    459 ;	walk.c:38: static void bang(void) {
                                    460 ;	-----------------------------------------
                                    461 ;	 function bang
                                    462 ;	-----------------------------------------
      002082                        463 _bang:
                           000007   464 	ar7 = 0x07
                           000006   465 	ar6 = 0x06
                           000005   466 	ar5 = 0x05
                           000004   467 	ar4 = 0x04
                           000003   468 	ar3 = 0x03
                           000002   469 	ar2 = 0x02
                           000001   470 	ar1 = 0x01
                           000000   471 	ar0 = 0x00
                                    472 ;	walk.c:39: (void)puts("Memory error");
      002082 90 41 FD         [24]  473 	mov	dptr,#___str_0
      002085 75 F0 80         [24]  474 	mov	b,#0x80
      002088 12 2E 44         [24]  475 	lcall	_puts
                                    476 ;	walk.c:40: reset();
                                    477 ;	walk.c:42: return;
                                    478 ;	walk.c:43: }
      00208B 02 20 7F         [24]  479 	ljmp	_reset
                                    480 ;------------------------------------------------------------
                                    481 ;Allocation info for local variables in function 'flashOE'
                                    482 ;------------------------------------------------------------
                                    483 ;mask                      Allocated to registers r7 
                                    484 ;OEreg                     Allocated to stack - _bp +1
                                    485 ;------------------------------------------------------------
                                    486 ;	walk.c:84: static void flashOE(uint8_t mask) {
                                    487 ;	-----------------------------------------
                                    488 ;	 function flashOE
                                    489 ;	-----------------------------------------
      00208E                        490 _flashOE:
      00208E C0 10            [24]  491 	push	_bp
      002090 85 81 10         [24]  492 	mov	_bp,sp
      002093 05 81            [12]  493 	inc	sp
      002095 05 81            [12]  494 	inc	sp
      002097 AF 82            [24]  495 	mov	r7,dpl
                                    496 ;	walk.c:87: P1_7 = 0;
                                    497 ;	assignBit
      002099 C2 97            [12]  498 	clr	_P1_7
                                    499 ;	walk.c:88: *OEreg = OE76;
      00209B 90 F0 06         [24]  500 	mov	dptr,#0xf006
      00209E 78 12            [12]  501 	mov	r0,#_OE76
      0020A0 E6               [12]  502 	mov	a,@r0
      0020A1 F0               [24]  503 	movx	@dptr,a
                                    504 ;	walk.c:89: P1_7 = 1;
                                    505 ;	assignBit
      0020A2 D2 97            [12]  506 	setb	_P1_7
                                    507 ;	walk.c:90: OE76 ^= mask;
      0020A4 78 12            [12]  508 	mov	r0,#_OE76
      0020A6 EF               [12]  509 	mov	a,r7
      0020A7 66               [12]  510 	xrl	a,@r0
      0020A8 F6               [12]  511 	mov	@r0,a
                                    512 ;	walk.c:92: return;
                                    513 ;	walk.c:93: }
      0020A9 85 10 81         [24]  514 	mov	sp,_bp
      0020AC D0 10            [24]  515 	pop	_bp
      0020AE 22               [24]  516 	ret
                                    517 ;------------------------------------------------------------
                                    518 ;Allocation info for local variables in function 'update'
                                    519 ;------------------------------------------------------------
                                    520 ;cur                       Allocated to stack - _bp -5
                                    521 ;j                         Allocated to stack - _bp -6
                                    522 ;t                         Allocated to stack - _bp +1
                                    523 ;sloc0                     Allocated to stack - _bp +4
                                    524 ;sloc1                     Allocated to stack - _bp +6
                                    525 ;sloc2                     Allocated to stack - _bp +8
                                    526 ;------------------------------------------------------------
                                    527 ;	walk.c:95: static uint8_t update(struct node *t, struct node *cur, uint8_t j) {
                                    528 ;	-----------------------------------------
                                    529 ;	 function update
                                    530 ;	-----------------------------------------
      0020AF                        531 _update:
      0020AF C0 10            [24]  532 	push	_bp
      0020B1 85 81 10         [24]  533 	mov	_bp,sp
      0020B4 C0 82            [24]  534 	push	dpl
      0020B6 C0 83            [24]  535 	push	dph
      0020B8 C0 F0            [24]  536 	push	b
      0020BA E5 81            [12]  537 	mov	a,sp
      0020BC 24 07            [12]  538 	add	a,#0x07
      0020BE F5 81            [12]  539 	mov	sp,a
                                    540 ;	walk.c:96: t->r = cur->r + neigh[j].r;
      0020C0 E5 10            [12]  541 	mov	a,_bp
      0020C2 24 FB            [12]  542 	add	a,#0xfb
      0020C4 F8               [12]  543 	mov	r0,a
      0020C5 86 02            [24]  544 	mov	ar2,@r0
      0020C7 08               [12]  545 	inc	r0
      0020C8 86 03            [24]  546 	mov	ar3,@r0
      0020CA 08               [12]  547 	inc	r0
      0020CB 86 04            [24]  548 	mov	ar4,@r0
      0020CD 8A 82            [24]  549 	mov	dpl,r2
      0020CF 8B 83            [24]  550 	mov	dph,r3
      0020D1 8C F0            [24]  551 	mov	b,r4
      0020D3 E5 10            [12]  552 	mov	a,_bp
      0020D5 24 04            [12]  553 	add	a,#0x04
      0020D7 F8               [12]  554 	mov	r0,a
      0020D8 12 2F 03         [24]  555 	lcall	__gptrget
      0020DB F6               [12]  556 	mov	@r0,a
      0020DC A3               [24]  557 	inc	dptr
      0020DD 12 2F 03         [24]  558 	lcall	__gptrget
      0020E0 08               [12]  559 	inc	r0
      0020E1 F6               [12]  560 	mov	@r0,a
      0020E2 E5 10            [12]  561 	mov	a,_bp
      0020E4 24 FA            [12]  562 	add	a,#0xfa
      0020E6 F8               [12]  563 	mov	r0,a
      0020E7 E5 10            [12]  564 	mov	a,_bp
      0020E9 24 06            [12]  565 	add	a,#0x06
      0020EB F9               [12]  566 	mov	r1,a
      0020EC E6               [12]  567 	mov	a,@r0
      0020ED 75 F0 04         [24]  568 	mov	b,#0x04
      0020F0 A4               [48]  569 	mul	ab
      0020F1 F7               [12]  570 	mov	@r1,a
      0020F2 09               [12]  571 	inc	r1
      0020F3 A7 F0            [24]  572 	mov	@r1,b
      0020F5 E5 10            [12]  573 	mov	a,_bp
      0020F7 24 06            [12]  574 	add	a,#0x06
      0020F9 F8               [12]  575 	mov	r0,a
      0020FA E6               [12]  576 	mov	a,@r0
      0020FB 24 74            [12]  577 	add	a,#_neigh
      0020FD F5 82            [12]  578 	mov	dpl,a
      0020FF 08               [12]  579 	inc	r0
      002100 E6               [12]  580 	mov	a,@r0
      002101 34 FF            [12]  581 	addc	a,#(_neigh >> 8)
      002103 F5 83            [12]  582 	mov	dph,a
      002105 E0               [24]  583 	movx	a,@dptr
      002106 FF               [12]  584 	mov	r7,a
      002107 A3               [24]  585 	inc	dptr
      002108 E0               [24]  586 	movx	a,@dptr
      002109 FE               [12]  587 	mov	r6,a
      00210A E5 10            [12]  588 	mov	a,_bp
      00210C 24 04            [12]  589 	add	a,#0x04
      00210E F8               [12]  590 	mov	r0,a
      00210F EF               [12]  591 	mov	a,r7
      002110 26               [12]  592 	add	a,@r0
      002111 FF               [12]  593 	mov	r7,a
      002112 EE               [12]  594 	mov	a,r6
      002113 08               [12]  595 	inc	r0
      002114 36               [12]  596 	addc	a,@r0
      002115 FE               [12]  597 	mov	r6,a
      002116 A8 10            [24]  598 	mov	r0,_bp
      002118 08               [12]  599 	inc	r0
      002119 86 82            [24]  600 	mov	dpl,@r0
      00211B 08               [12]  601 	inc	r0
      00211C 86 83            [24]  602 	mov	dph,@r0
      00211E 08               [12]  603 	inc	r0
      00211F 86 F0            [24]  604 	mov	b,@r0
      002121 EF               [12]  605 	mov	a,r7
      002122 12 2C F8         [24]  606 	lcall	__gptrput
      002125 A3               [24]  607 	inc	dptr
      002126 EE               [12]  608 	mov	a,r6
      002127 12 2C F8         [24]  609 	lcall	__gptrput
                                    610 ;	walk.c:97: t->c = cur->c + neigh[j].c;
      00212A A8 10            [24]  611 	mov	r0,_bp
      00212C 08               [12]  612 	inc	r0
      00212D E5 10            [12]  613 	mov	a,_bp
      00212F 24 08            [12]  614 	add	a,#0x08
      002131 F9               [12]  615 	mov	r1,a
      002132 74 02            [12]  616 	mov	a,#0x02
      002134 26               [12]  617 	add	a,@r0
      002135 F7               [12]  618 	mov	@r1,a
      002136 E4               [12]  619 	clr	a
      002137 08               [12]  620 	inc	r0
      002138 36               [12]  621 	addc	a,@r0
      002139 09               [12]  622 	inc	r1
      00213A F7               [12]  623 	mov	@r1,a
      00213B 08               [12]  624 	inc	r0
      00213C 09               [12]  625 	inc	r1
      00213D E6               [12]  626 	mov	a,@r0
      00213E F7               [12]  627 	mov	@r1,a
      00213F 74 02            [12]  628 	mov	a,#0x02
      002141 2A               [12]  629 	add	a,r2
      002142 FA               [12]  630 	mov	r2,a
      002143 E4               [12]  631 	clr	a
      002144 3B               [12]  632 	addc	a,r3
      002145 FB               [12]  633 	mov	r3,a
      002146 8A 82            [24]  634 	mov	dpl,r2
      002148 8B 83            [24]  635 	mov	dph,r3
      00214A 8C F0            [24]  636 	mov	b,r4
      00214C 12 2F 03         [24]  637 	lcall	__gptrget
      00214F FA               [12]  638 	mov	r2,a
      002150 A3               [24]  639 	inc	dptr
      002151 12 2F 03         [24]  640 	lcall	__gptrget
      002154 FB               [12]  641 	mov	r3,a
      002155 E5 10            [12]  642 	mov	a,_bp
      002157 24 06            [12]  643 	add	a,#0x06
      002159 F8               [12]  644 	mov	r0,a
      00215A E6               [12]  645 	mov	a,@r0
      00215B 24 74            [12]  646 	add	a,#_neigh
      00215D FC               [12]  647 	mov	r4,a
      00215E 08               [12]  648 	inc	r0
      00215F E6               [12]  649 	mov	a,@r0
      002160 34 FF            [12]  650 	addc	a,#(_neigh >> 8)
      002162 FD               [12]  651 	mov	r5,a
      002163 8C 82            [24]  652 	mov	dpl,r4
      002165 8D 83            [24]  653 	mov	dph,r5
      002167 A3               [24]  654 	inc	dptr
      002168 A3               [24]  655 	inc	dptr
      002169 E0               [24]  656 	movx	a,@dptr
      00216A FC               [12]  657 	mov	r4,a
      00216B A3               [24]  658 	inc	dptr
      00216C E0               [24]  659 	movx	a,@dptr
      00216D FD               [12]  660 	mov	r5,a
      00216E EC               [12]  661 	mov	a,r4
      00216F 2A               [12]  662 	add	a,r2
      002170 FA               [12]  663 	mov	r2,a
      002171 ED               [12]  664 	mov	a,r5
      002172 3B               [12]  665 	addc	a,r3
      002173 FB               [12]  666 	mov	r3,a
      002174 E5 10            [12]  667 	mov	a,_bp
      002176 24 08            [12]  668 	add	a,#0x08
      002178 F8               [12]  669 	mov	r0,a
      002179 86 82            [24]  670 	mov	dpl,@r0
      00217B 08               [12]  671 	inc	r0
      00217C 86 83            [24]  672 	mov	dph,@r0
      00217E 08               [12]  673 	inc	r0
      00217F 86 F0            [24]  674 	mov	b,@r0
      002181 EA               [12]  675 	mov	a,r2
      002182 12 2C F8         [24]  676 	lcall	__gptrput
      002185 A3               [24]  677 	inc	dptr
      002186 EB               [12]  678 	mov	a,r3
      002187 12 2C F8         [24]  679 	lcall	__gptrput
                                    680 ;	walk.c:99: if (t->r < 0) t->r += ROWS;
      00218A A8 10            [24]  681 	mov	r0,_bp
      00218C 08               [12]  682 	inc	r0
      00218D 86 82            [24]  683 	mov	dpl,@r0
      00218F 08               [12]  684 	inc	r0
      002190 86 83            [24]  685 	mov	dph,@r0
      002192 08               [12]  686 	inc	r0
      002193 86 F0            [24]  687 	mov	b,@r0
      002195 12 2F 03         [24]  688 	lcall	__gptrget
      002198 FD               [12]  689 	mov	r5,a
      002199 A3               [24]  690 	inc	dptr
      00219A 12 2F 03         [24]  691 	lcall	__gptrget
      00219D FC               [12]  692 	mov	r4,a
      00219E EE               [12]  693 	mov	a,r6
      00219F 30 E7 1D         [24]  694 	jnb	acc.7,00104$
      0021A2 74 30            [12]  695 	mov	a,#0x30
      0021A4 2D               [12]  696 	add	a,r5
      0021A5 FF               [12]  697 	mov	r7,a
      0021A6 E4               [12]  698 	clr	a
      0021A7 3C               [12]  699 	addc	a,r4
      0021A8 FE               [12]  700 	mov	r6,a
      0021A9 A8 10            [24]  701 	mov	r0,_bp
      0021AB 08               [12]  702 	inc	r0
      0021AC 86 82            [24]  703 	mov	dpl,@r0
      0021AE 08               [12]  704 	inc	r0
      0021AF 86 83            [24]  705 	mov	dph,@r0
      0021B1 08               [12]  706 	inc	r0
      0021B2 86 F0            [24]  707 	mov	b,@r0
      0021B4 EF               [12]  708 	mov	a,r7
      0021B5 12 2C F8         [24]  709 	lcall	__gptrput
      0021B8 A3               [24]  710 	inc	dptr
      0021B9 EE               [12]  711 	mov	a,r6
      0021BA 12 2C F8         [24]  712 	lcall	__gptrput
      0021BD 80 27            [24]  713 	sjmp	00105$
      0021BF                        714 00104$:
                                    715 ;	walk.c:100: else if (t->r >= ROWS) t->r -= ROWS;
      0021BF C3               [12]  716 	clr	c
      0021C0 ED               [12]  717 	mov	a,r5
      0021C1 94 30            [12]  718 	subb	a,#0x30
      0021C3 EC               [12]  719 	mov	a,r4
      0021C4 64 80            [12]  720 	xrl	a,#0x80
      0021C6 94 80            [12]  721 	subb	a,#0x80
      0021C8 40 1C            [24]  722 	jc	00105$
      0021CA ED               [12]  723 	mov	a,r5
      0021CB 24 D0            [12]  724 	add	a,#0xd0
      0021CD FD               [12]  725 	mov	r5,a
      0021CE EC               [12]  726 	mov	a,r4
      0021CF 34 FF            [12]  727 	addc	a,#0xff
      0021D1 FC               [12]  728 	mov	r4,a
      0021D2 A8 10            [24]  729 	mov	r0,_bp
      0021D4 08               [12]  730 	inc	r0
      0021D5 86 82            [24]  731 	mov	dpl,@r0
      0021D7 08               [12]  732 	inc	r0
      0021D8 86 83            [24]  733 	mov	dph,@r0
      0021DA 08               [12]  734 	inc	r0
      0021DB 86 F0            [24]  735 	mov	b,@r0
      0021DD ED               [12]  736 	mov	a,r5
      0021DE 12 2C F8         [24]  737 	lcall	__gptrput
      0021E1 A3               [24]  738 	inc	dptr
      0021E2 EC               [12]  739 	mov	a,r4
      0021E3 12 2C F8         [24]  740 	lcall	__gptrput
      0021E6                        741 00105$:
                                    742 ;	walk.c:101: if (t->c < 0) t->c += COLS;
      0021E6 E5 10            [12]  743 	mov	a,_bp
      0021E8 24 08            [12]  744 	add	a,#0x08
      0021EA F8               [12]  745 	mov	r0,a
      0021EB 86 82            [24]  746 	mov	dpl,@r0
      0021ED 08               [12]  747 	inc	r0
      0021EE 86 83            [24]  748 	mov	dph,@r0
      0021F0 08               [12]  749 	inc	r0
      0021F1 86 F0            [24]  750 	mov	b,@r0
      0021F3 12 2F 03         [24]  751 	lcall	__gptrget
      0021F6 A3               [24]  752 	inc	dptr
      0021F7 12 2F 03         [24]  753 	lcall	__gptrget
      0021FA 30 E7 35         [24]  754 	jnb	acc.7,00109$
      0021FD E5 10            [12]  755 	mov	a,_bp
      0021FF 24 08            [12]  756 	add	a,#0x08
      002201 F8               [12]  757 	mov	r0,a
      002202 86 82            [24]  758 	mov	dpl,@r0
      002204 08               [12]  759 	inc	r0
      002205 86 83            [24]  760 	mov	dph,@r0
      002207 08               [12]  761 	inc	r0
      002208 86 F0            [24]  762 	mov	b,@r0
      00220A 12 2F 03         [24]  763 	lcall	__gptrget
      00220D FE               [12]  764 	mov	r6,a
      00220E A3               [24]  765 	inc	dptr
      00220F 12 2F 03         [24]  766 	lcall	__gptrget
      002212 FF               [12]  767 	mov	r7,a
      002213 74 C9            [12]  768 	mov	a,#0xc9
      002215 2E               [12]  769 	add	a,r6
      002216 FE               [12]  770 	mov	r6,a
      002217 E4               [12]  771 	clr	a
      002218 3F               [12]  772 	addc	a,r7
      002219 FF               [12]  773 	mov	r7,a
      00221A E5 10            [12]  774 	mov	a,_bp
      00221C 24 08            [12]  775 	add	a,#0x08
      00221E F8               [12]  776 	mov	r0,a
      00221F 86 82            [24]  777 	mov	dpl,@r0
      002221 08               [12]  778 	inc	r0
      002222 86 83            [24]  779 	mov	dph,@r0
      002224 08               [12]  780 	inc	r0
      002225 86 F0            [24]  781 	mov	b,@r0
      002227 EE               [12]  782 	mov	a,r6
      002228 12 2C F8         [24]  783 	lcall	__gptrput
      00222B A3               [24]  784 	inc	dptr
      00222C EF               [12]  785 	mov	a,r7
      00222D 12 2C F8         [24]  786 	lcall	__gptrput
      002230 80 55            [24]  787 	sjmp	00110$
      002232                        788 00109$:
                                    789 ;	walk.c:102: else if (t->c >= COLS) t->c -= COLS;
      002232 E5 10            [12]  790 	mov	a,_bp
      002234 24 08            [12]  791 	add	a,#0x08
      002236 F8               [12]  792 	mov	r0,a
      002237 86 82            [24]  793 	mov	dpl,@r0
      002239 08               [12]  794 	inc	r0
      00223A 86 83            [24]  795 	mov	dph,@r0
      00223C 08               [12]  796 	inc	r0
      00223D 86 F0            [24]  797 	mov	b,@r0
      00223F 12 2F 03         [24]  798 	lcall	__gptrget
      002242 FE               [12]  799 	mov	r6,a
      002243 A3               [24]  800 	inc	dptr
      002244 12 2F 03         [24]  801 	lcall	__gptrget
      002247 FF               [12]  802 	mov	r7,a
      002248 C3               [12]  803 	clr	c
      002249 EE               [12]  804 	mov	a,r6
      00224A 94 C9            [12]  805 	subb	a,#0xc9
      00224C EF               [12]  806 	mov	a,r7
      00224D 64 80            [12]  807 	xrl	a,#0x80
      00224F 94 80            [12]  808 	subb	a,#0x80
      002251 40 34            [24]  809 	jc	00110$
      002253 E5 10            [12]  810 	mov	a,_bp
      002255 24 08            [12]  811 	add	a,#0x08
      002257 F8               [12]  812 	mov	r0,a
      002258 86 82            [24]  813 	mov	dpl,@r0
      00225A 08               [12]  814 	inc	r0
      00225B 86 83            [24]  815 	mov	dph,@r0
      00225D 08               [12]  816 	inc	r0
      00225E 86 F0            [24]  817 	mov	b,@r0
      002260 12 2F 03         [24]  818 	lcall	__gptrget
      002263 FE               [12]  819 	mov	r6,a
      002264 A3               [24]  820 	inc	dptr
      002265 12 2F 03         [24]  821 	lcall	__gptrget
      002268 FF               [12]  822 	mov	r7,a
      002269 EE               [12]  823 	mov	a,r6
      00226A 24 37            [12]  824 	add	a,#0x37
      00226C FE               [12]  825 	mov	r6,a
      00226D EF               [12]  826 	mov	a,r7
      00226E 34 FF            [12]  827 	addc	a,#0xff
      002270 FF               [12]  828 	mov	r7,a
      002271 E5 10            [12]  829 	mov	a,_bp
      002273 24 08            [12]  830 	add	a,#0x08
      002275 F8               [12]  831 	mov	r0,a
      002276 86 82            [24]  832 	mov	dpl,@r0
      002278 08               [12]  833 	inc	r0
      002279 86 83            [24]  834 	mov	dph,@r0
      00227B 08               [12]  835 	inc	r0
      00227C 86 F0            [24]  836 	mov	b,@r0
      00227E EE               [12]  837 	mov	a,r6
      00227F 12 2C F8         [24]  838 	lcall	__gptrput
      002282 A3               [24]  839 	inc	dptr
      002283 EF               [12]  840 	mov	a,r7
      002284 12 2C F8         [24]  841 	lcall	__gptrput
      002287                        842 00110$:
                                    843 ;	walk.c:104: if (g[t->r][t->c] == 0xaau) return 0u;
      002287 A8 10            [24]  844 	mov	r0,_bp
      002289 08               [12]  845 	inc	r0
      00228A 86 82            [24]  846 	mov	dpl,@r0
      00228C 08               [12]  847 	inc	r0
      00228D 86 83            [24]  848 	mov	dph,@r0
      00228F 08               [12]  849 	inc	r0
      002290 86 F0            [24]  850 	mov	b,@r0
      002292 12 2F 03         [24]  851 	lcall	__gptrget
      002295 FE               [12]  852 	mov	r6,a
      002296 A3               [24]  853 	inc	dptr
      002297 12 2F 03         [24]  854 	lcall	__gptrget
      00229A FF               [12]  855 	mov	r7,a
      00229B C0 06            [24]  856 	push	ar6
      00229D C0 07            [24]  857 	push	ar7
      00229F 90 00 C9         [24]  858 	mov	dptr,#0x00c9
      0022A2 12 2D 13         [24]  859 	lcall	__mulint
      0022A5 AE 82            [24]  860 	mov	r6,dpl
      0022A7 AF 83            [24]  861 	mov	r7,dph
      0022A9 15 81            [12]  862 	dec	sp
      0022AB 15 81            [12]  863 	dec	sp
      0022AD EE               [12]  864 	mov	a,r6
      0022AE 24 00            [12]  865 	add	a,#_g
      0022B0 FE               [12]  866 	mov	r6,a
      0022B1 EF               [12]  867 	mov	a,r7
      0022B2 34 43            [12]  868 	addc	a,#(_g >> 8)
      0022B4 FF               [12]  869 	mov	r7,a
      0022B5 E5 10            [12]  870 	mov	a,_bp
      0022B7 24 08            [12]  871 	add	a,#0x08
      0022B9 F8               [12]  872 	mov	r0,a
      0022BA 86 82            [24]  873 	mov	dpl,@r0
      0022BC 08               [12]  874 	inc	r0
      0022BD 86 83            [24]  875 	mov	dph,@r0
      0022BF 08               [12]  876 	inc	r0
      0022C0 86 F0            [24]  877 	mov	b,@r0
      0022C2 12 2F 03         [24]  878 	lcall	__gptrget
      0022C5 FC               [12]  879 	mov	r4,a
      0022C6 A3               [24]  880 	inc	dptr
      0022C7 12 2F 03         [24]  881 	lcall	__gptrget
      0022CA FD               [12]  882 	mov	r5,a
      0022CB EC               [12]  883 	mov	a,r4
      0022CC 2E               [12]  884 	add	a,r6
      0022CD F5 82            [12]  885 	mov	dpl,a
      0022CF ED               [12]  886 	mov	a,r5
      0022D0 3F               [12]  887 	addc	a,r7
      0022D1 F5 83            [12]  888 	mov	dph,a
      0022D3 E0               [24]  889 	movx	a,@dptr
      0022D4 FF               [12]  890 	mov	r7,a
      0022D5 BF AA 05         [24]  891 	cjne	r7,#0xaa,00114$
      0022D8 75 82 00         [24]  892 	mov	dpl,#0x00
      0022DB 80 59            [24]  893 	sjmp	00116$
      0022DD                        894 00114$:
                                    895 ;	walk.c:105: else if (g[t->r][t->c] != 0x55u) bang();
      0022DD A8 10            [24]  896 	mov	r0,_bp
      0022DF 08               [12]  897 	inc	r0
      0022E0 86 82            [24]  898 	mov	dpl,@r0
      0022E2 08               [12]  899 	inc	r0
      0022E3 86 83            [24]  900 	mov	dph,@r0
      0022E5 08               [12]  901 	inc	r0
      0022E6 86 F0            [24]  902 	mov	b,@r0
      0022E8 12 2F 03         [24]  903 	lcall	__gptrget
      0022EB FE               [12]  904 	mov	r6,a
      0022EC A3               [24]  905 	inc	dptr
      0022ED 12 2F 03         [24]  906 	lcall	__gptrget
      0022F0 FF               [12]  907 	mov	r7,a
      0022F1 C0 06            [24]  908 	push	ar6
      0022F3 C0 07            [24]  909 	push	ar7
      0022F5 90 00 C9         [24]  910 	mov	dptr,#0x00c9
      0022F8 12 2D 13         [24]  911 	lcall	__mulint
      0022FB AE 82            [24]  912 	mov	r6,dpl
      0022FD AF 83            [24]  913 	mov	r7,dph
      0022FF 15 81            [12]  914 	dec	sp
      002301 15 81            [12]  915 	dec	sp
      002303 EE               [12]  916 	mov	a,r6
      002304 24 00            [12]  917 	add	a,#_g
      002306 FE               [12]  918 	mov	r6,a
      002307 EF               [12]  919 	mov	a,r7
      002308 34 43            [12]  920 	addc	a,#(_g >> 8)
      00230A FF               [12]  921 	mov	r7,a
      00230B E5 10            [12]  922 	mov	a,_bp
      00230D 24 08            [12]  923 	add	a,#0x08
      00230F F8               [12]  924 	mov	r0,a
      002310 86 82            [24]  925 	mov	dpl,@r0
      002312 08               [12]  926 	inc	r0
      002313 86 83            [24]  927 	mov	dph,@r0
      002315 08               [12]  928 	inc	r0
      002316 86 F0            [24]  929 	mov	b,@r0
      002318 12 2F 03         [24]  930 	lcall	__gptrget
      00231B FC               [12]  931 	mov	r4,a
      00231C A3               [24]  932 	inc	dptr
      00231D 12 2F 03         [24]  933 	lcall	__gptrget
      002320 FD               [12]  934 	mov	r5,a
      002321 EC               [12]  935 	mov	a,r4
      002322 2E               [12]  936 	add	a,r6
      002323 F5 82            [12]  937 	mov	dpl,a
      002325 ED               [12]  938 	mov	a,r5
      002326 3F               [12]  939 	addc	a,r7
      002327 F5 83            [12]  940 	mov	dph,a
      002329 E0               [24]  941 	movx	a,@dptr
      00232A FF               [12]  942 	mov	r7,a
      00232B BF 55 02         [24]  943 	cjne	r7,#0x55,00148$
      00232E 80 03            [24]  944 	sjmp	00115$
      002330                        945 00148$:
      002330 12 20 82         [24]  946 	lcall	_bang
      002333                        947 00115$:
                                    948 ;	walk.c:107: return 1u;
      002333 75 82 01         [24]  949 	mov	dpl,#0x01
      002336                        950 00116$:
                                    951 ;	walk.c:108: }
      002336 85 10 81         [24]  952 	mov	sp,_bp
      002339 D0 10            [24]  953 	pop	_bp
      00233B 22               [24]  954 	ret
                                    955 ;------------------------------------------------------------
                                    956 ;Allocation info for local variables in function 'walk'
                                    957 ;------------------------------------------------------------
                                    958 ;nstart                    Allocated to registers r5 r6 r7 
                                    959 ;cur                       Allocated to stack - _bp +7
                                    960 ;t                         Allocated to stack - _bp +11
                                    961 ;scramble                  Allocated to stack - _bp +15
                                    962 ;ti                        Allocated to registers r2 
                                    963 ;tj                        Allocated to registers r6 
                                    964 ;tx                        Allocated to stack - _bp +31
                                    965 ;j                         Allocated to stack - _bp +32
                                    966 ;sloc0                     Allocated to stack - _bp +1
                                    967 ;sloc1                     Allocated to stack - _bp +3
                                    968 ;sloc2                     Allocated to stack - _bp +35
                                    969 ;sloc3                     Allocated to stack - _bp +4
                                    970 ;------------------------------------------------------------
                                    971 ;	walk.c:110: static void walk(struct node *nstart) {
                                    972 ;	-----------------------------------------
                                    973 ;	 function walk
                                    974 ;	-----------------------------------------
      00233C                        975 _walk:
      00233C C0 10            [24]  976 	push	_bp
      00233E E5 81            [12]  977 	mov	a,sp
      002340 F5 10            [12]  978 	mov	_bp,a
      002342 24 20            [12]  979 	add	a,#0x20
      002344 F5 81            [12]  980 	mov	sp,a
                                    981 ;	walk.c:115: if (!qadd(nstart)) bang();
      002346 AD 82            [24]  982 	mov	r5,dpl
      002348 AE 83            [24]  983 	mov	r6,dph
      00234A AF F0            [24]  984 	mov	r7,b
      00234C C0 07            [24]  985 	push	ar7
      00234E C0 06            [24]  986 	push	ar6
      002350 C0 05            [24]  987 	push	ar5
      002352 12 2A A5         [24]  988 	lcall	_qadd
      002355 E5 82            [12]  989 	mov	a,dpl
      002357 D0 05            [24]  990 	pop	ar5
      002359 D0 06            [24]  991 	pop	ar6
      00235B D0 07            [24]  992 	pop	ar7
      00235D 70 0F            [24]  993 	jnz	00102$
      00235F C0 07            [24]  994 	push	ar7
      002361 C0 06            [24]  995 	push	ar6
      002363 C0 05            [24]  996 	push	ar5
      002365 12 20 82         [24]  997 	lcall	_bang
      002368 D0 05            [24]  998 	pop	ar5
      00236A D0 06            [24]  999 	pop	ar6
      00236C D0 07            [24] 1000 	pop	ar7
      00236E                       1001 00102$:
                                   1002 ;	walk.c:116: g[nstart->r][nstart->c] = 0xaau;
      00236E 8D 82            [24] 1003 	mov	dpl,r5
      002370 8E 83            [24] 1004 	mov	dph,r6
      002372 8F F0            [24] 1005 	mov	b,r7
      002374 12 2F 03         [24] 1006 	lcall	__gptrget
      002377 FB               [12] 1007 	mov	r3,a
      002378 A3               [24] 1008 	inc	dptr
      002379 12 2F 03         [24] 1009 	lcall	__gptrget
      00237C FC               [12] 1010 	mov	r4,a
      00237D C0 07            [24] 1011 	push	ar7
      00237F C0 06            [24] 1012 	push	ar6
      002381 C0 05            [24] 1013 	push	ar5
      002383 C0 03            [24] 1014 	push	ar3
      002385 C0 04            [24] 1015 	push	ar4
      002387 90 00 C9         [24] 1016 	mov	dptr,#0x00c9
      00238A 12 2D 13         [24] 1017 	lcall	__mulint
      00238D AB 82            [24] 1018 	mov	r3,dpl
      00238F AC 83            [24] 1019 	mov	r4,dph
      002391 15 81            [12] 1020 	dec	sp
      002393 15 81            [12] 1021 	dec	sp
      002395 D0 05            [24] 1022 	pop	ar5
      002397 D0 06            [24] 1023 	pop	ar6
      002399 D0 07            [24] 1024 	pop	ar7
      00239B EB               [12] 1025 	mov	a,r3
      00239C 24 00            [12] 1026 	add	a,#_g
      00239E FB               [12] 1027 	mov	r3,a
      00239F EC               [12] 1028 	mov	a,r4
      0023A0 34 43            [12] 1029 	addc	a,#(_g >> 8)
      0023A2 FC               [12] 1030 	mov	r4,a
      0023A3 74 02            [12] 1031 	mov	a,#0x02
      0023A5 2D               [12] 1032 	add	a,r5
      0023A6 FD               [12] 1033 	mov	r5,a
      0023A7 E4               [12] 1034 	clr	a
      0023A8 3E               [12] 1035 	addc	a,r6
      0023A9 FE               [12] 1036 	mov	r6,a
      0023AA 8D 82            [24] 1037 	mov	dpl,r5
      0023AC 8E 83            [24] 1038 	mov	dph,r6
      0023AE 8F F0            [24] 1039 	mov	b,r7
      0023B0 12 2F 03         [24] 1040 	lcall	__gptrget
      0023B3 FD               [12] 1041 	mov	r5,a
      0023B4 A3               [24] 1042 	inc	dptr
      0023B5 12 2F 03         [24] 1043 	lcall	__gptrget
      0023B8 FE               [12] 1044 	mov	r6,a
      0023B9 ED               [12] 1045 	mov	a,r5
      0023BA 2B               [12] 1046 	add	a,r3
      0023BB F5 82            [12] 1047 	mov	dpl,a
      0023BD EE               [12] 1048 	mov	a,r6
      0023BE 3C               [12] 1049 	addc	a,r4
      0023BF F5 83            [12] 1050 	mov	dph,a
      0023C1 74 AA            [12] 1051 	mov	a,#0xaa
      0023C3 F0               [24] 1052 	movx	@dptr,a
                                   1053 ;	walk.c:118: process:
      0023C4 E5 10            [12] 1054 	mov	a,_bp
      0023C6 24 0F            [12] 1055 	add	a,#0x0f
      0023C8 FF               [12] 1056 	mov	r7,a
      0023C9 E5 10            [12] 1057 	mov	a,_bp
      0023CB 24 0B            [12] 1058 	add	a,#0x0b
      0023CD F9               [12] 1059 	mov	r1,a
      0023CE E5 10            [12] 1060 	mov	a,_bp
      0023D0 24 03            [12] 1061 	add	a,#0x03
      0023D2 F8               [12] 1062 	mov	r0,a
      0023D3 A6 01            [24] 1063 	mov	@r0,ar1
      0023D5 74 02            [12] 1064 	mov	a,#0x02
      0023D7 29               [12] 1065 	add	a,r1
      0023D8 F8               [12] 1066 	mov	r0,a
      0023D9 E5 10            [12] 1067 	mov	a,_bp
      0023DB 24 07            [12] 1068 	add	a,#0x07
      0023DD FD               [12] 1069 	mov	r5,a
      0023DE                       1070 00103$:
                                   1071 ;	walk.c:119: if (!qget(&cur)) goto term;
      0023DE 8D 02            [24] 1072 	mov	ar2,r5
      0023E0 7B 00            [12] 1073 	mov	r3,#0x00
      0023E2 7C 40            [12] 1074 	mov	r4,#0x40
      0023E4 8A 82            [24] 1075 	mov	dpl,r2
      0023E6 8B 83            [24] 1076 	mov	dph,r3
      0023E8 8C F0            [24] 1077 	mov	b,r4
      0023EA C0 07            [24] 1078 	push	ar7
      0023EC C0 05            [24] 1079 	push	ar5
      0023EE C0 01            [24] 1080 	push	ar1
      0023F0 C0 00            [24] 1081 	push	ar0
      0023F2 12 2B 97         [24] 1082 	lcall	_qget
      0023F5 E5 82            [12] 1083 	mov	a,dpl
      0023F7 D0 00            [24] 1084 	pop	ar0
      0023F9 D0 01            [24] 1085 	pop	ar1
      0023FB D0 05            [24] 1086 	pop	ar5
      0023FD D0 07            [24] 1087 	pop	ar7
      0023FF 70 03            [24] 1088 	jnz	00184$
      002401 02 26 B3         [24] 1089 	ljmp	00119$
      002404                       1090 00184$:
                                   1091 ;	walk.c:121: printf("\033[2;1H% 8d% 8d% 8d% 8d", hp, tp, cur.r, cur.c);
      002404 74 02            [12] 1092 	mov	a,#0x02
      002406 2D               [12] 1093 	add	a,r5
      002407 FC               [12] 1094 	mov	r4,a
      002408 C0 00            [24] 1095 	push	ar0
      00240A A8 10            [24] 1096 	mov	r0,_bp
      00240C 08               [12] 1097 	inc	r0
      00240D C0 01            [24] 1098 	push	ar1
      00240F A9 04            [24] 1099 	mov	r1,ar4
      002411 E7               [12] 1100 	mov	a,@r1
      002412 F6               [12] 1101 	mov	@r0,a
      002413 09               [12] 1102 	inc	r1
      002414 E7               [12] 1103 	mov	a,@r1
      002415 08               [12] 1104 	inc	r0
      002416 F6               [12] 1105 	mov	@r0,a
      002417 D0 01            [24] 1106 	pop	ar1
      002419 A8 05            [24] 1107 	mov	r0,ar5
      00241B 86 03            [24] 1108 	mov	ar3,@r0
      00241D 08               [12] 1109 	inc	r0
      00241E 86 06            [24] 1110 	mov	ar6,@r0
      002420 D0 00            [24] 1111 	pop	ar0
      002422 C0 07            [24] 1112 	push	ar7
      002424 C0 05            [24] 1113 	push	ar5
      002426 C0 04            [24] 1114 	push	ar4
      002428 C0 01            [24] 1115 	push	ar1
      00242A C0 00            [24] 1116 	push	ar0
      00242C 85 00 F0         [24] 1117 	mov	b,ar0
      00242F A8 10            [24] 1118 	mov	r0,_bp
      002431 08               [12] 1119 	inc	r0
      002432 E6               [12] 1120 	mov	a,@r0
      002433 C0 E0            [24] 1121 	push	acc
      002435 08               [12] 1122 	inc	r0
      002436 E6               [12] 1123 	mov	a,@r0
      002437 C0 E0            [24] 1124 	push	acc
      002439 C0 03            [24] 1125 	push	ar3
      00243B C0 06            [24] 1126 	push	ar6
      00243D 90 FF 72         [24] 1127 	mov	dptr,#_tp
      002440 E0               [24] 1128 	movx	a,@dptr
      002441 C0 E0            [24] 1129 	push	acc
      002443 A3               [24] 1130 	inc	dptr
      002444 E0               [24] 1131 	movx	a,@dptr
      002445 C0 E0            [24] 1132 	push	acc
      002447 90 FF 70         [24] 1133 	mov	dptr,#_hp
      00244A E0               [24] 1134 	movx	a,@dptr
      00244B C0 E0            [24] 1135 	push	acc
      00244D A3               [24] 1136 	inc	dptr
      00244E E0               [24] 1137 	movx	a,@dptr
      00244F C0 E0            [24] 1138 	push	acc
      002451 74 0A            [12] 1139 	mov	a,#___str_1
      002453 C0 E0            [24] 1140 	push	acc
      002455 74 42            [12] 1141 	mov	a,#(___str_1 >> 8)
      002457 C0 E0            [24] 1142 	push	acc
      002459 74 80            [12] 1143 	mov	a,#0x80
      00245B C0 E0            [24] 1144 	push	acc
      00245D 12 2E CA         [24] 1145 	lcall	_printf
      002460 E5 81            [12] 1146 	mov	a,sp
      002462 24 F5            [12] 1147 	add	a,#0xf5
      002464 F5 81            [12] 1148 	mov	sp,a
      002466 D0 00            [24] 1149 	pop	ar0
      002468 D0 01            [24] 1150 	pop	ar1
      00246A D0 04            [24] 1151 	pop	ar4
      00246C D0 05            [24] 1152 	pop	ar5
      00246E D0 07            [24] 1153 	pop	ar7
                                   1154 ;	walk.c:123: printf("\033[%d;%dH.", cur.r + 4, cur.c + 1);
      002470 C0 00            [24] 1155 	push	ar0
      002472 A8 04            [24] 1156 	mov	r0,ar4
      002474 86 04            [24] 1157 	mov	ar4,@r0
      002476 08               [12] 1158 	inc	r0
      002477 86 06            [24] 1159 	mov	ar6,@r0
      002479 D0 00            [24] 1160 	pop	ar0
      00247B 0C               [12] 1161 	inc	r4
      00247C BC 00 01         [24] 1162 	cjne	r4,#0x00,00185$
      00247F 0E               [12] 1163 	inc	r6
      002480                       1164 00185$:
      002480 C0 00            [24] 1165 	push	ar0
      002482 A8 05            [24] 1166 	mov	r0,ar5
      002484 86 02            [24] 1167 	mov	ar2,@r0
      002486 08               [12] 1168 	inc	r0
      002487 86 03            [24] 1169 	mov	ar3,@r0
      002489 D0 00            [24] 1170 	pop	ar0
      00248B 74 04            [12] 1171 	mov	a,#0x04
      00248D 2A               [12] 1172 	add	a,r2
      00248E FA               [12] 1173 	mov	r2,a
      00248F E4               [12] 1174 	clr	a
      002490 3B               [12] 1175 	addc	a,r3
      002491 FB               [12] 1176 	mov	r3,a
      002492 C0 07            [24] 1177 	push	ar7
      002494 C0 05            [24] 1178 	push	ar5
      002496 C0 01            [24] 1179 	push	ar1
      002498 C0 00            [24] 1180 	push	ar0
      00249A C0 04            [24] 1181 	push	ar4
      00249C C0 06            [24] 1182 	push	ar6
      00249E C0 02            [24] 1183 	push	ar2
      0024A0 C0 03            [24] 1184 	push	ar3
      0024A2 74 21            [12] 1185 	mov	a,#___str_2
      0024A4 C0 E0            [24] 1186 	push	acc
      0024A6 74 42            [12] 1187 	mov	a,#(___str_2 >> 8)
      0024A8 C0 E0            [24] 1188 	push	acc
      0024AA 74 80            [12] 1189 	mov	a,#0x80
      0024AC C0 E0            [24] 1190 	push	acc
      0024AE 12 2E CA         [24] 1191 	lcall	_printf
      0024B1 E5 81            [12] 1192 	mov	a,sp
      0024B3 24 F9            [12] 1193 	add	a,#0xf9
      0024B5 F5 81            [12] 1194 	mov	sp,a
                                   1195 ;	walk.c:124: flashOE(OE76_MASK6);
      0024B7 75 82 40         [24] 1196 	mov	dpl,#0x40
      0024BA 12 20 8E         [24] 1197 	lcall	_flashOE
      0024BD D0 00            [24] 1198 	pop	ar0
      0024BF D0 01            [24] 1199 	pop	ar1
      0024C1 D0 05            [24] 1200 	pop	ar5
      0024C3 D0 07            [24] 1201 	pop	ar7
                                   1202 ;	walk.c:126: for (j = 0u; j < NMAX; j++)
      0024C5 7E 00            [12] 1203 	mov	r6,#0x00
                                   1204 ;	walk.c:150: return;
                                   1205 ;	walk.c:126: for (j = 0u; j < NMAX; j++)
      0024C7                       1206 00120$:
                                   1207 ;	walk.c:127: scramble[j] = j;
      0024C7 EE               [12] 1208 	mov	a,r6
      0024C8 2F               [12] 1209 	add	a,r7
      0024C9 C0 00            [24] 1210 	push	ar0
      0024CB F8               [12] 1211 	mov	r0,a
      0024CC A6 06            [24] 1212 	mov	@r0,ar6
      0024CE D0 00            [24] 1213 	pop	ar0
                                   1214 ;	walk.c:126: for (j = 0u; j < NMAX; j++)
      0024D0 0E               [12] 1215 	inc	r6
      0024D1 BE 10 00         [24] 1216 	cjne	r6,#0x10,00186$
      0024D4                       1217 00186$:
      0024D4 40 F1            [24] 1218 	jc	00120$
                                   1219 ;	walk.c:129: do ti = (uint8_t)(rand() % NMAX);
      0024D6 7C 00            [12] 1220 	mov	r4,#0x00
      0024D8                       1221 00107$:
      0024D8 C0 07            [24] 1222 	push	ar7
      0024DA C0 05            [24] 1223 	push	ar5
      0024DC C0 04            [24] 1224 	push	ar4
      0024DE C0 01            [24] 1225 	push	ar1
      0024E0 C0 00            [24] 1226 	push	ar0
      0024E2 12 2C 1B         [24] 1227 	lcall	_rand
      0024E5 AA 82            [24] 1228 	mov	r2,dpl
      0024E7 D0 00            [24] 1229 	pop	ar0
      0024E9 D0 01            [24] 1230 	pop	ar1
      0024EB D0 04            [24] 1231 	pop	ar4
      0024ED D0 05            [24] 1232 	pop	ar5
      0024EF D0 07            [24] 1233 	pop	ar7
      0024F1 53 02 0F         [24] 1234 	anl	ar2,#0x0f
      0024F4 7B 00            [12] 1235 	mov	r3,#0x00
                                   1236 ;	walk.c:130: while (ti == j);
      0024F6 EA               [12] 1237 	mov	a,r2
      0024F7 B5 04 02         [24] 1238 	cjne	a,ar4,00188$
      0024FA 80 DC            [24] 1239 	sjmp	00107$
      0024FC                       1240 00188$:
                                   1241 ;	walk.c:131: do tj = (uint8_t)(rand() % NMAX);
      0024FC                       1242 00110$:
      0024FC C0 05            [24] 1243 	push	ar5
      0024FE C0 07            [24] 1244 	push	ar7
      002500 C0 04            [24] 1245 	push	ar4
      002502 C0 02            [24] 1246 	push	ar2
      002504 C0 01            [24] 1247 	push	ar1
      002506 C0 00            [24] 1248 	push	ar0
      002508 12 2C 1B         [24] 1249 	lcall	_rand
      00250B AB 82            [24] 1250 	mov	r3,dpl
      00250D D0 00            [24] 1251 	pop	ar0
      00250F D0 01            [24] 1252 	pop	ar1
      002511 D0 02            [24] 1253 	pop	ar2
      002513 D0 04            [24] 1254 	pop	ar4
      002515 D0 07            [24] 1255 	pop	ar7
      002517 53 03 0F         [24] 1256 	anl	ar3,#0x0f
      00251A 8B 06            [24] 1257 	mov	ar6,r3
                                   1258 ;	walk.c:132: while (ti == tj);
      00251C EA               [12] 1259 	mov	a,r2
      00251D B5 06 04         [24] 1260 	cjne	a,ar6,00189$
      002520 D0 05            [24] 1261 	pop	ar5
      002522 80 D8            [24] 1262 	sjmp	00110$
      002524                       1263 00189$:
                                   1264 ;	walk.c:133: tx = scramble[ti];
      002524 EA               [12] 1265 	mov	a,r2
      002525 2F               [12] 1266 	add	a,r7
      002526 FB               [12] 1267 	mov	r3,a
      002527 C0 00            [24] 1268 	push	ar0
      002529 E5 10            [12] 1269 	mov	a,_bp
      00252B 24 1F            [12] 1270 	add	a,#0x1f
      00252D F8               [12] 1271 	mov	r0,a
      00252E C0 01            [24] 1272 	push	ar1
      002530 A9 03            [24] 1273 	mov	r1,ar3
      002532 E7               [12] 1274 	mov	a,@r1
      002533 F6               [12] 1275 	mov	@r0,a
                                   1276 ;	walk.c:134: scramble[ti] = scramble[tj];
      002534 EE               [12] 1277 	mov	a,r6
      002535 2F               [12] 1278 	add	a,r7
      002536 FD               [12] 1279 	mov	r5,a
      002537 A8 05            [24] 1280 	mov	r0,ar5
      002539 86 02            [24] 1281 	mov	ar2,@r0
      00253B A8 03            [24] 1282 	mov	r0,ar3
      00253D A6 02            [24] 1283 	mov	@r0,ar2
                                   1284 ;	walk.c:135: scramble[tj] = tx;
      00253F A8 05            [24] 1285 	mov	r0,ar5
      002541 E5 10            [12] 1286 	mov	a,_bp
      002543 24 1F            [12] 1287 	add	a,#0x1f
      002545 F9               [12] 1288 	mov	r1,a
      002546 E7               [12] 1289 	mov	a,@r1
      002547 F6               [12] 1290 	mov	@r0,a
      002548 D0 00            [24] 1291 	pop	ar0
      00254A D0 01            [24] 1292 	pop	ar1
                                   1293 ;	walk.c:128: for (j = 0u; j < NMAX; j++) {
      00254C 0C               [12] 1294 	inc	r4
      00254D BC 10 00         [24] 1295 	cjne	r4,#0x10,00190$
      002550                       1296 00190$:
      002550 D0 05            [24] 1297 	pop	ar5
      002552 40 84            [24] 1298 	jc	00107$
                                   1299 ;	walk.c:138: for (j = 0u; j < NMAX; j++)
      002554 C0 00            [24] 1300 	push	ar0
      002556 A8 10            [24] 1301 	mov	r0,_bp
      002558 08               [12] 1302 	inc	r0
      002559 A6 05            [24] 1303 	mov	@r0,ar5
      00255B E5 10            [12] 1304 	mov	a,_bp
      00255D 24 20            [12] 1305 	add	a,#0x20
      00255F F8               [12] 1306 	mov	r0,a
      002560 76 00            [12] 1307 	mov	@r0,#0x00
      002562 D0 00            [24] 1308 	pop	ar0
      002564                       1309 00124$:
                                   1310 ;	walk.c:139: if (update(&t, &cur, scramble[j])) {
      002564 C0 05            [24] 1311 	push	ar5
      002566 C0 00            [24] 1312 	push	ar0
      002568 E5 10            [12] 1313 	mov	a,_bp
      00256A 24 20            [12] 1314 	add	a,#0x20
      00256C F8               [12] 1315 	mov	r0,a
      00256D E6               [12] 1316 	mov	a,@r0
      00256E 2F               [12] 1317 	add	a,r7
      00256F FA               [12] 1318 	mov	r2,a
      002570 A8 02            [24] 1319 	mov	r0,ar2
      002572 86 03            [24] 1320 	mov	ar3,@r0
      002574 A8 10            [24] 1321 	mov	r0,_bp
      002576 08               [12] 1322 	inc	r0
      002577 C0 01            [24] 1323 	push	ar1
      002579 E5 10            [12] 1324 	mov	a,_bp
      00257B 24 04            [12] 1325 	add	a,#0x04
      00257D F9               [12] 1326 	mov	r1,a
      00257E E6               [12] 1327 	mov	a,@r0
      00257F F7               [12] 1328 	mov	@r1,a
      002580 09               [12] 1329 	inc	r1
      002581 77 00            [12] 1330 	mov	@r1,#0x00
      002583 09               [12] 1331 	inc	r1
      002584 77 40            [12] 1332 	mov	@r1,#0x40
      002586 D0 01            [24] 1333 	pop	ar1
      002588 D0 00            [24] 1334 	pop	ar0
      00258A 89 02            [24] 1335 	mov	ar2,r1
      00258C 7C 00            [12] 1336 	mov	r4,#0x00
      00258E 7E 40            [12] 1337 	mov	r6,#0x40
      002590 C0 07            [24] 1338 	push	ar7
      002592 C0 05            [24] 1339 	push	ar5
      002594 C0 01            [24] 1340 	push	ar1
      002596 C0 00            [24] 1341 	push	ar0
      002598 C0 03            [24] 1342 	push	ar3
      00259A 85 00 F0         [24] 1343 	mov	b,ar0
      00259D E5 10            [12] 1344 	mov	a,_bp
      00259F 24 04            [12] 1345 	add	a,#0x04
      0025A1 F8               [12] 1346 	mov	r0,a
      0025A2 E6               [12] 1347 	mov	a,@r0
      0025A3 C0 E0            [24] 1348 	push	acc
      0025A5 08               [12] 1349 	inc	r0
      0025A6 E6               [12] 1350 	mov	a,@r0
      0025A7 C0 E0            [24] 1351 	push	acc
      0025A9 08               [12] 1352 	inc	r0
      0025AA E6               [12] 1353 	mov	a,@r0
      0025AB C0 E0            [24] 1354 	push	acc
      0025AD 8A 82            [24] 1355 	mov	dpl,r2
      0025AF 8C 83            [24] 1356 	mov	dph,r4
      0025B1 8E F0            [24] 1357 	mov	b,r6
      0025B3 12 20 AF         [24] 1358 	lcall	_update
      0025B6 AE 82            [24] 1359 	mov	r6,dpl
      0025B8 E5 81            [12] 1360 	mov	a,sp
      0025BA 24 FC            [12] 1361 	add	a,#0xfc
      0025BC F5 81            [12] 1362 	mov	sp,a
      0025BE D0 00            [24] 1363 	pop	ar0
      0025C0 D0 01            [24] 1364 	pop	ar1
      0025C2 D0 05            [24] 1365 	pop	ar5
      0025C4 D0 07            [24] 1366 	pop	ar7
      0025C6 D0 05            [24] 1367 	pop	ar5
      0025C8 EE               [12] 1368 	mov	a,r6
      0025C9 70 03            [24] 1369 	jnz	00192$
      0025CB 02 26 99         [24] 1370 	ljmp	00125$
      0025CE                       1371 00192$:
                                   1372 ;	walk.c:140: if (!qadd(&t)) bang();
      0025CE C0 00            [24] 1373 	push	ar0
      0025D0 E5 10            [12] 1374 	mov	a,_bp
      0025D2 24 03            [12] 1375 	add	a,#0x03
      0025D4 F8               [12] 1376 	mov	r0,a
      0025D5 86 03            [24] 1377 	mov	ar3,@r0
      0025D7 7C 00            [12] 1378 	mov	r4,#0x00
      0025D9 7E 40            [12] 1379 	mov	r6,#0x40
      0025DB D0 00            [24] 1380 	pop	ar0
      0025DD 8B 82            [24] 1381 	mov	dpl,r3
      0025DF 8C 83            [24] 1382 	mov	dph,r4
      0025E1 8E F0            [24] 1383 	mov	b,r6
      0025E3 C0 07            [24] 1384 	push	ar7
      0025E5 C0 05            [24] 1385 	push	ar5
      0025E7 C0 01            [24] 1386 	push	ar1
      0025E9 C0 00            [24] 1387 	push	ar0
      0025EB 12 2A A5         [24] 1388 	lcall	_qadd
      0025EE E5 82            [12] 1389 	mov	a,dpl
      0025F0 D0 00            [24] 1390 	pop	ar0
      0025F2 D0 01            [24] 1391 	pop	ar1
      0025F4 D0 05            [24] 1392 	pop	ar5
      0025F6 D0 07            [24] 1393 	pop	ar7
      0025F8 70 13            [24] 1394 	jnz	00115$
      0025FA C0 07            [24] 1395 	push	ar7
      0025FC C0 05            [24] 1396 	push	ar5
      0025FE C0 01            [24] 1397 	push	ar1
      002600 C0 00            [24] 1398 	push	ar0
      002602 12 20 82         [24] 1399 	lcall	_bang
      002605 D0 00            [24] 1400 	pop	ar0
      002607 D0 01            [24] 1401 	pop	ar1
      002609 D0 05            [24] 1402 	pop	ar5
      00260B D0 07            [24] 1403 	pop	ar7
      00260D                       1404 00115$:
                                   1405 ;	walk.c:141: g[t.r][t.c] = 0xaau;
      00260D 87 04            [24] 1406 	mov	ar4,@r1
      00260F 09               [12] 1407 	inc	r1
      002610 87 06            [24] 1408 	mov	ar6,@r1
      002612 19               [12] 1409 	dec	r1
      002613 C0 07            [24] 1410 	push	ar7
      002615 C0 05            [24] 1411 	push	ar5
      002617 C0 01            [24] 1412 	push	ar1
      002619 C0 00            [24] 1413 	push	ar0
      00261B C0 04            [24] 1414 	push	ar4
      00261D C0 06            [24] 1415 	push	ar6
      00261F 90 00 C9         [24] 1416 	mov	dptr,#0x00c9
      002622 12 2D 13         [24] 1417 	lcall	__mulint
      002625 AC 82            [24] 1418 	mov	r4,dpl
      002627 AE 83            [24] 1419 	mov	r6,dph
      002629 15 81            [12] 1420 	dec	sp
      00262B 15 81            [12] 1421 	dec	sp
      00262D D0 00            [24] 1422 	pop	ar0
      00262F D0 01            [24] 1423 	pop	ar1
      002631 D0 05            [24] 1424 	pop	ar5
      002633 D0 07            [24] 1425 	pop	ar7
      002635 EC               [12] 1426 	mov	a,r4
      002636 24 00            [12] 1427 	add	a,#_g
      002638 FC               [12] 1428 	mov	r4,a
      002639 EE               [12] 1429 	mov	a,r6
      00263A 34 43            [12] 1430 	addc	a,#(_g >> 8)
      00263C FE               [12] 1431 	mov	r6,a
      00263D 86 02            [24] 1432 	mov	ar2,@r0
      00263F 08               [12] 1433 	inc	r0
      002640 86 03            [24] 1434 	mov	ar3,@r0
      002642 18               [12] 1435 	dec	r0
      002643 EA               [12] 1436 	mov	a,r2
      002644 2C               [12] 1437 	add	a,r4
      002645 F5 82            [12] 1438 	mov	dpl,a
      002647 EB               [12] 1439 	mov	a,r3
      002648 3E               [12] 1440 	addc	a,r6
      002649 F5 83            [12] 1441 	mov	dph,a
      00264B 74 AA            [12] 1442 	mov	a,#0xaa
      00264D F0               [24] 1443 	movx	@dptr,a
                                   1444 ;	walk.c:143: printf("\033[%d;%dHo", t.r + 4, t.c + 1);
      00264E 86 04            [24] 1445 	mov	ar4,@r0
      002650 08               [12] 1446 	inc	r0
      002651 86 06            [24] 1447 	mov	ar6,@r0
      002653 18               [12] 1448 	dec	r0
      002654 0C               [12] 1449 	inc	r4
      002655 BC 00 01         [24] 1450 	cjne	r4,#0x00,00194$
      002658 0E               [12] 1451 	inc	r6
      002659                       1452 00194$:
      002659 87 02            [24] 1453 	mov	ar2,@r1
      00265B 09               [12] 1454 	inc	r1
      00265C 87 03            [24] 1455 	mov	ar3,@r1
      00265E 19               [12] 1456 	dec	r1
      00265F 74 04            [12] 1457 	mov	a,#0x04
      002661 2A               [12] 1458 	add	a,r2
      002662 FA               [12] 1459 	mov	r2,a
      002663 E4               [12] 1460 	clr	a
      002664 3B               [12] 1461 	addc	a,r3
      002665 FB               [12] 1462 	mov	r3,a
      002666 C0 07            [24] 1463 	push	ar7
      002668 C0 05            [24] 1464 	push	ar5
      00266A C0 01            [24] 1465 	push	ar1
      00266C C0 00            [24] 1466 	push	ar0
      00266E C0 04            [24] 1467 	push	ar4
      002670 C0 06            [24] 1468 	push	ar6
      002672 C0 02            [24] 1469 	push	ar2
      002674 C0 03            [24] 1470 	push	ar3
      002676 74 2B            [12] 1471 	mov	a,#___str_3
      002678 C0 E0            [24] 1472 	push	acc
      00267A 74 42            [12] 1473 	mov	a,#(___str_3 >> 8)
      00267C C0 E0            [24] 1474 	push	acc
      00267E 74 80            [12] 1475 	mov	a,#0x80
      002680 C0 E0            [24] 1476 	push	acc
      002682 12 2E CA         [24] 1477 	lcall	_printf
      002685 E5 81            [12] 1478 	mov	a,sp
      002687 24 F9            [12] 1479 	add	a,#0xf9
      002689 F5 81            [12] 1480 	mov	sp,a
                                   1481 ;	walk.c:144: flashOE(OE76_MASK7);
      00268B 75 82 80         [24] 1482 	mov	dpl,#0x80
      00268E 12 20 8E         [24] 1483 	lcall	_flashOE
      002691 D0 00            [24] 1484 	pop	ar0
      002693 D0 01            [24] 1485 	pop	ar1
      002695 D0 05            [24] 1486 	pop	ar5
      002697 D0 07            [24] 1487 	pop	ar7
      002699                       1488 00125$:
                                   1489 ;	walk.c:138: for (j = 0u; j < NMAX; j++)
      002699 C0 00            [24] 1490 	push	ar0
      00269B E5 10            [12] 1491 	mov	a,_bp
      00269D 24 20            [12] 1492 	add	a,#0x20
      00269F F8               [12] 1493 	mov	r0,a
      0026A0 06               [12] 1494 	inc	@r0
      0026A1 E5 10            [12] 1495 	mov	a,_bp
      0026A3 24 20            [12] 1496 	add	a,#0x20
      0026A5 F8               [12] 1497 	mov	r0,a
      0026A6 B6 10 00         [24] 1498 	cjne	@r0,#0x10,00195$
      0026A9                       1499 00195$:
      0026A9 D0 00            [24] 1500 	pop	ar0
      0026AB 50 03            [24] 1501 	jnc	00196$
      0026AD 02 25 64         [24] 1502 	ljmp	00124$
      0026B0                       1503 00196$:
                                   1504 ;	walk.c:147: goto process;
      0026B0 02 23 DE         [24] 1505 	ljmp	00103$
                                   1506 ;	walk.c:149: term:
      0026B3                       1507 00119$:
                                   1508 ;	walk.c:150: return;
                                   1509 ;	walk.c:151: }
      0026B3 85 10 81         [24] 1510 	mov	sp,_bp
      0026B6 D0 10            [24] 1511 	pop	_bp
      0026B8 22               [24] 1512 	ret
                                   1513 ;------------------------------------------------------------
                                   1514 ;Allocation info for local variables in function 'main'
                                   1515 ;------------------------------------------------------------
                                   1516 ;R                         Allocated to stack - _bp +9
                                   1517 ;initial                   Allocated to stack - _bp +11
                                   1518 ;N                         Allocated to stack - _bp +5
                                   1519 ;i                         Allocated to stack - _bp +7
                                   1520 ;j                         Allocated to registers r2 r6 
                                   1521 ;sloc0                     Allocated to stack - _bp +1
                                   1522 ;sloc1                     Allocated to stack - _bp +3
                                   1523 ;sloc2                     Allocated to stack - _bp +17
                                   1524 ;------------------------------------------------------------
                                   1525 ;	walk.c:153: int main(void) {
                                   1526 ;	-----------------------------------------
                                   1527 ;	 function main
                                   1528 ;	-----------------------------------------
      0026B9                       1529 _main:
      0026B9 C0 10            [24] 1530 	push	_bp
      0026BB E5 81            [12] 1531 	mov	a,sp
      0026BD F5 10            [12] 1532 	mov	_bp,a
      0026BF 24 0E            [12] 1533 	add	a,#0x0e
      0026C1 F5 81            [12] 1534 	mov	sp,a
                                   1535 ;	walk.c:159: i0 = 1u;
      0026C3 78 11            [12] 1536 	mov	r0,#_i0
      0026C5 76 01            [12] 1537 	mov	@r0,#0x01
                                   1538 ;	walk.c:161: P1_7 = 1;
                                   1539 ;	assignBit
      0026C7 D2 97            [12] 1540 	setb	_P1_7
                                   1541 ;	walk.c:162: IT0 = 1;
                                   1542 ;	assignBit
      0026C9 D2 88            [12] 1543 	setb	_IT0
                                   1544 ;	walk.c:163: EX0 = 1;
                                   1545 ;	assignBit
      0026CB D2 A8            [12] 1546 	setb	_EX0
                                   1547 ;	walk.c:164: EA = 1;
                                   1548 ;	assignBit
      0026CD D2 AF            [12] 1549 	setb	_EA
                                   1550 ;	walk.c:166: srand(*R);
      0026CF 90 FF FE         [24] 1551 	mov	dptr,#0xfffe
      0026D2 E0               [24] 1552 	movx	a,@dptr
      0026D3 FE               [12] 1553 	mov	r6,a
      0026D4 A3               [24] 1554 	inc	dptr
      0026D5 E0               [24] 1555 	movx	a,@dptr
      0026D6 FF               [12] 1556 	mov	r7,a
      0026D7 8E 82            [24] 1557 	mov	dpl,r6
      0026D9 8F 83            [24] 1558 	mov	dph,r7
      0026DB 12 2C DF         [24] 1559 	lcall	_srand
                                   1560 ;	walk.c:167: qinit();
      0026DE 12 2A 97         [24] 1561 	lcall	_qinit
                                   1562 ;	walk.c:169: puts("\033[2J\033[?25l");
      0026E1 90 42 35         [24] 1563 	mov	dptr,#___str_4
      0026E4 75 F0 80         [24] 1564 	mov	b,#0x80
      0026E7 12 2E 44         [24] 1565 	lcall	_puts
                                   1566 ;	walk.c:171: while (i0) {
      0026EA E5 10            [12] 1567 	mov	a,_bp
      0026EC 24 0B            [12] 1568 	add	a,#0x0b
      0026EE F9               [12] 1569 	mov	r1,a
      0026EF FF               [12] 1570 	mov	r7,a
      0026F0 E5 10            [12] 1571 	mov	a,_bp
      0026F2 24 05            [12] 1572 	add	a,#0x05
      0026F4 F8               [12] 1573 	mov	r0,a
      0026F5 E4               [12] 1574 	clr	a
      0026F6 F6               [12] 1575 	mov	@r0,a
      0026F7 08               [12] 1576 	inc	r0
      0026F8 F6               [12] 1577 	mov	@r0,a
      0026F9                       1578 00108$:
      0026F9 78 11            [12] 1579 	mov	r0,#_i0
      0026FB E6               [12] 1580 	mov	a,@r0
      0026FC 70 03            [24] 1581 	jnz	00181$
      0026FE 02 2A 80         [24] 1582 	ljmp	00110$
      002701                       1583 00181$:
                                   1584 ;	walk.c:172: for (i = 0; i < ROWS; i++)
      002701 7B 00            [12] 1585 	mov	r3,#0x00
      002703 7C 00            [12] 1586 	mov	r4,#0x00
      002705 A8 10            [24] 1587 	mov	r0,_bp
      002707 08               [12] 1588 	inc	r0
      002708 E4               [12] 1589 	clr	a
      002709 F6               [12] 1590 	mov	@r0,a
      00270A 08               [12] 1591 	inc	r0
      00270B F6               [12] 1592 	mov	@r0,a
                                   1593 ;	walk.c:173: for (j = 0; j < COLS; j++)
      00270C                       1594 00124$:
      00270C A8 10            [24] 1595 	mov	r0,_bp
      00270E 08               [12] 1596 	inc	r0
      00270F C0 01            [24] 1597 	push	ar1
      002711 E5 10            [12] 1598 	mov	a,_bp
      002713 24 03            [12] 1599 	add	a,#0x03
      002715 F9               [12] 1600 	mov	r1,a
      002716 E6               [12] 1601 	mov	a,@r0
      002717 24 00            [12] 1602 	add	a,#_g
      002719 F7               [12] 1603 	mov	@r1,a
      00271A 08               [12] 1604 	inc	r0
      00271B E6               [12] 1605 	mov	a,@r0
      00271C 34 43            [12] 1606 	addc	a,#(_g >> 8)
      00271E 09               [12] 1607 	inc	r1
      00271F F7               [12] 1608 	mov	@r1,a
      002720 D0 01            [24] 1609 	pop	ar1
      002722 7A 00            [12] 1610 	mov	r2,#0x00
      002724 7E 00            [12] 1611 	mov	r6,#0x00
      002726                       1612 00111$:
                                   1613 ;	walk.c:174: g[i][j] = 0x55u;
      002726 E5 10            [12] 1614 	mov	a,_bp
      002728 24 03            [12] 1615 	add	a,#0x03
      00272A F8               [12] 1616 	mov	r0,a
      00272B EA               [12] 1617 	mov	a,r2
      00272C 26               [12] 1618 	add	a,@r0
      00272D F5 82            [12] 1619 	mov	dpl,a
      00272F EE               [12] 1620 	mov	a,r6
      002730 08               [12] 1621 	inc	r0
      002731 36               [12] 1622 	addc	a,@r0
      002732 F5 83            [12] 1623 	mov	dph,a
      002734 74 55            [12] 1624 	mov	a,#0x55
      002736 F0               [24] 1625 	movx	@dptr,a
                                   1626 ;	walk.c:173: for (j = 0; j < COLS; j++)
      002737 0A               [12] 1627 	inc	r2
      002738 BA 00 01         [24] 1628 	cjne	r2,#0x00,00182$
      00273B 0E               [12] 1629 	inc	r6
      00273C                       1630 00182$:
      00273C C3               [12] 1631 	clr	c
      00273D EA               [12] 1632 	mov	a,r2
      00273E 94 C9            [12] 1633 	subb	a,#0xc9
      002740 EE               [12] 1634 	mov	a,r6
      002741 64 80            [12] 1635 	xrl	a,#0x80
      002743 94 80            [12] 1636 	subb	a,#0x80
      002745 40 DF            [24] 1637 	jc	00111$
                                   1638 ;	walk.c:172: for (i = 0; i < ROWS; i++)
      002747 A8 10            [24] 1639 	mov	r0,_bp
      002749 08               [12] 1640 	inc	r0
      00274A 74 C9            [12] 1641 	mov	a,#0xc9
      00274C 26               [12] 1642 	add	a,@r0
      00274D F6               [12] 1643 	mov	@r0,a
      00274E E4               [12] 1644 	clr	a
      00274F 08               [12] 1645 	inc	r0
      002750 36               [12] 1646 	addc	a,@r0
      002751 F6               [12] 1647 	mov	@r0,a
      002752 0B               [12] 1648 	inc	r3
      002753 BB 00 01         [24] 1649 	cjne	r3,#0x00,00184$
      002756 0C               [12] 1650 	inc	r4
      002757                       1651 00184$:
      002757 C3               [12] 1652 	clr	c
      002758 EB               [12] 1653 	mov	a,r3
      002759 94 30            [12] 1654 	subb	a,#0x30
      00275B EC               [12] 1655 	mov	a,r4
      00275C 64 80            [12] 1656 	xrl	a,#0x80
      00275E 94 80            [12] 1657 	subb	a,#0x80
      002760 40 AA            [24] 1658 	jc	00124$
                                   1659 ;	walk.c:176: initial.r = rand() % ROWS;
      002762 E5 10            [12] 1660 	mov	a,_bp
      002764 24 0B            [12] 1661 	add	a,#0x0b
      002766 F8               [12] 1662 	mov	r0,a
      002767 C0 07            [24] 1663 	push	ar7
      002769 C0 01            [24] 1664 	push	ar1
      00276B C0 00            [24] 1665 	push	ar0
      00276D 12 2C 1B         [24] 1666 	lcall	_rand
      002770 AD 82            [24] 1667 	mov	r5,dpl
      002772 AE 83            [24] 1668 	mov	r6,dph
      002774 74 30            [12] 1669 	mov	a,#0x30
      002776 C0 E0            [24] 1670 	push	acc
      002778 E4               [12] 1671 	clr	a
      002779 C0 E0            [24] 1672 	push	acc
      00277B 8D 82            [24] 1673 	mov	dpl,r5
      00277D 8E 83            [24] 1674 	mov	dph,r6
      00277F 12 2F 1F         [24] 1675 	lcall	__modsint
      002782 AD 82            [24] 1676 	mov	r5,dpl
      002784 AE 83            [24] 1677 	mov	r6,dph
      002786 15 81            [12] 1678 	dec	sp
      002788 15 81            [12] 1679 	dec	sp
      00278A D0 00            [24] 1680 	pop	ar0
      00278C D0 01            [24] 1681 	pop	ar1
      00278E A6 05            [24] 1682 	mov	@r0,ar5
      002790 08               [12] 1683 	inc	r0
      002791 A6 06            [24] 1684 	mov	@r0,ar6
      002793 18               [12] 1685 	dec	r0
                                   1686 ;	walk.c:177: initial.c = rand() % COLS;
      002794 74 02            [12] 1687 	mov	a,#0x02
      002796 29               [12] 1688 	add	a,r1
      002797 F8               [12] 1689 	mov	r0,a
      002798 C0 01            [24] 1690 	push	ar1
      00279A C0 00            [24] 1691 	push	ar0
      00279C 12 2C 1B         [24] 1692 	lcall	_rand
      00279F AD 82            [24] 1693 	mov	r5,dpl
      0027A1 AE 83            [24] 1694 	mov	r6,dph
      0027A3 74 C9            [12] 1695 	mov	a,#0xc9
      0027A5 C0 E0            [24] 1696 	push	acc
      0027A7 E4               [12] 1697 	clr	a
      0027A8 C0 E0            [24] 1698 	push	acc
      0027AA 8D 82            [24] 1699 	mov	dpl,r5
      0027AC 8E 83            [24] 1700 	mov	dph,r6
      0027AE 12 2F 1F         [24] 1701 	lcall	__modsint
      0027B1 AD 82            [24] 1702 	mov	r5,dpl
      0027B3 AE 83            [24] 1703 	mov	r6,dph
      0027B5 15 81            [12] 1704 	dec	sp
      0027B7 15 81            [12] 1705 	dec	sp
      0027B9 D0 00            [24] 1706 	pop	ar0
      0027BB A6 05            [24] 1707 	mov	@r0,ar5
      0027BD 08               [12] 1708 	inc	r0
      0027BE A6 06            [24] 1709 	mov	@r0,ar6
      0027C0 18               [12] 1710 	dec	r0
                                   1711 ;	walk.c:179: puts("\033[2J\033[?25l");
      0027C1 90 42 35         [24] 1712 	mov	dptr,#___str_4
      0027C4 75 F0 80         [24] 1713 	mov	b,#0x80
      0027C7 C0 00            [24] 1714 	push	ar0
      0027C9 12 2E 44         [24] 1715 	lcall	_puts
      0027CC D0 00            [24] 1716 	pop	ar0
      0027CE D0 01            [24] 1717 	pop	ar1
                                   1718 ;	walk.c:180: printf("\033[1;1H% 8u% 8d% 8d", N, initial.r, initial.c);
      0027D0 86 05            [24] 1719 	mov	ar5,@r0
      0027D2 08               [12] 1720 	inc	r0
      0027D3 86 06            [24] 1721 	mov	ar6,@r0
      0027D5 18               [12] 1722 	dec	r0
      0027D6 87 03            [24] 1723 	mov	ar3,@r1
      0027D8 09               [12] 1724 	inc	r1
      0027D9 87 04            [24] 1725 	mov	ar4,@r1
      0027DB 19               [12] 1726 	dec	r1
      0027DC C0 01            [24] 1727 	push	ar1
      0027DE C0 05            [24] 1728 	push	ar5
      0027E0 C0 06            [24] 1729 	push	ar6
      0027E2 C0 03            [24] 1730 	push	ar3
      0027E4 C0 04            [24] 1731 	push	ar4
      0027E6 E5 10            [12] 1732 	mov	a,_bp
      0027E8 24 05            [12] 1733 	add	a,#0x05
      0027EA F8               [12] 1734 	mov	r0,a
      0027EB E6               [12] 1735 	mov	a,@r0
      0027EC C0 E0            [24] 1736 	push	acc
      0027EE 08               [12] 1737 	inc	r0
      0027EF E6               [12] 1738 	mov	a,@r0
      0027F0 C0 E0            [24] 1739 	push	acc
      0027F2 74 40            [12] 1740 	mov	a,#___str_5
      0027F4 C0 E0            [24] 1741 	push	acc
      0027F6 74 42            [12] 1742 	mov	a,#(___str_5 >> 8)
      0027F8 C0 E0            [24] 1743 	push	acc
      0027FA 74 80            [12] 1744 	mov	a,#0x80
      0027FC C0 E0            [24] 1745 	push	acc
      0027FE 12 2E CA         [24] 1746 	lcall	_printf
      002801 E5 81            [12] 1747 	mov	a,sp
      002803 24 F7            [12] 1748 	add	a,#0xf7
      002805 F5 81            [12] 1749 	mov	sp,a
      002807 D0 01            [24] 1750 	pop	ar1
      002809 D0 07            [24] 1751 	pop	ar7
                                   1752 ;	walk.c:182: for (i = 0; i < REG; i++) {
      00280B E5 10            [12] 1753 	mov	a,_bp
      00280D 24 07            [12] 1754 	add	a,#0x07
      00280F F8               [12] 1755 	mov	r0,a
      002810 E4               [12] 1756 	clr	a
      002811 F6               [12] 1757 	mov	@r0,a
      002812 08               [12] 1758 	inc	r0
      002813 F6               [12] 1759 	mov	@r0,a
      002814                       1760 00115$:
                                   1761 ;	walk.c:183: neigh[i].r = neigh[REG + i].r * (1 + rand() % 32);
      002814 C0 07            [24] 1762 	push	ar7
      002816 E5 10            [12] 1763 	mov	a,_bp
      002818 24 07            [12] 1764 	add	a,#0x07
      00281A F8               [12] 1765 	mov	r0,a
      00281B E6               [12] 1766 	mov	a,@r0
      00281C 25 E0            [12] 1767 	add	a,acc
      00281E FB               [12] 1768 	mov	r3,a
      00281F 08               [12] 1769 	inc	r0
      002820 E6               [12] 1770 	mov	a,@r0
      002821 33               [12] 1771 	rlc	a
      002822 FC               [12] 1772 	mov	r4,a
      002823 EB               [12] 1773 	mov	a,r3
      002824 2B               [12] 1774 	add	a,r3
      002825 FB               [12] 1775 	mov	r3,a
      002826 EC               [12] 1776 	mov	a,r4
      002827 33               [12] 1777 	rlc	a
      002828 FC               [12] 1778 	mov	r4,a
      002829 E5 10            [12] 1779 	mov	a,_bp
      00282B 24 03            [12] 1780 	add	a,#0x03
      00282D F8               [12] 1781 	mov	r0,a
      00282E EB               [12] 1782 	mov	a,r3
      00282F 24 74            [12] 1783 	add	a,#_neigh
      002831 F6               [12] 1784 	mov	@r0,a
      002832 EC               [12] 1785 	mov	a,r4
      002833 34 FF            [12] 1786 	addc	a,#(_neigh >> 8)
      002835 08               [12] 1787 	inc	r0
      002836 F6               [12] 1788 	mov	@r0,a
      002837 E5 10            [12] 1789 	mov	a,_bp
      002839 24 07            [12] 1790 	add	a,#0x07
      00283B F8               [12] 1791 	mov	r0,a
      00283C 86 06            [24] 1792 	mov	ar6,@r0
      00283E 74 08            [12] 1793 	mov	a,#0x08
      002840 2E               [12] 1794 	add	a,r6
      002841 FE               [12] 1795 	mov	r6,a
      002842 C2 D5            [12] 1796 	clr	F0
      002844 75 F0 04         [24] 1797 	mov	b,#0x04
      002847 EE               [12] 1798 	mov	a,r6
      002848 30 E7 04         [24] 1799 	jnb	acc.7,00186$
      00284B B2 D5            [12] 1800 	cpl	F0
      00284D F4               [12] 1801 	cpl	a
      00284E 04               [12] 1802 	inc	a
      00284F                       1803 00186$:
      00284F A4               [48] 1804 	mul	ab
      002850 30 D5 0A         [24] 1805 	jnb	F0,00187$
      002853 F4               [12] 1806 	cpl	a
      002854 24 01            [12] 1807 	add	a,#0x01
      002856 C5 F0            [12] 1808 	xch	a,b
      002858 F4               [12] 1809 	cpl	a
      002859 34 00            [12] 1810 	addc	a,#0x00
      00285B C5 F0            [12] 1811 	xch	a,b
      00285D                       1812 00187$:
      00285D FE               [12] 1813 	mov	r6,a
      00285E AD F0            [24] 1814 	mov	r5,b
      002860 24 74            [12] 1815 	add	a,#_neigh
      002862 F5 82            [12] 1816 	mov	dpl,a
      002864 ED               [12] 1817 	mov	a,r5
      002865 34 FF            [12] 1818 	addc	a,#(_neigh >> 8)
      002867 F5 83            [12] 1819 	mov	dph,a
      002869 A8 10            [24] 1820 	mov	r0,_bp
      00286B 08               [12] 1821 	inc	r0
      00286C E0               [24] 1822 	movx	a,@dptr
      00286D F6               [12] 1823 	mov	@r0,a
      00286E A3               [24] 1824 	inc	dptr
      00286F E0               [24] 1825 	movx	a,@dptr
      002870 08               [12] 1826 	inc	r0
      002871 F6               [12] 1827 	mov	@r0,a
      002872 C0 06            [24] 1828 	push	ar6
      002874 C0 05            [24] 1829 	push	ar5
      002876 C0 04            [24] 1830 	push	ar4
      002878 C0 03            [24] 1831 	push	ar3
      00287A C0 01            [24] 1832 	push	ar1
      00287C 12 2C 1B         [24] 1833 	lcall	_rand
      00287F AA 82            [24] 1834 	mov	r2,dpl
      002881 AF 83            [24] 1835 	mov	r7,dph
      002883 74 20            [12] 1836 	mov	a,#0x20
      002885 C0 E0            [24] 1837 	push	acc
      002887 E4               [12] 1838 	clr	a
      002888 C0 E0            [24] 1839 	push	acc
      00288A 8A 82            [24] 1840 	mov	dpl,r2
      00288C 8F 83            [24] 1841 	mov	dph,r7
      00288E 12 2F 1F         [24] 1842 	lcall	__modsint
      002891 AA 82            [24] 1843 	mov	r2,dpl
      002893 AF 83            [24] 1844 	mov	r7,dph
      002895 15 81            [12] 1845 	dec	sp
      002897 15 81            [12] 1846 	dec	sp
      002899 D0 01            [24] 1847 	pop	ar1
      00289B D0 03            [24] 1848 	pop	ar3
      00289D D0 04            [24] 1849 	pop	ar4
      00289F D0 05            [24] 1850 	pop	ar5
      0028A1 D0 06            [24] 1851 	pop	ar6
      0028A3 0A               [12] 1852 	inc	r2
      0028A4 BA 00 01         [24] 1853 	cjne	r2,#0x00,00188$
      0028A7 0F               [12] 1854 	inc	r7
      0028A8                       1855 00188$:
      0028A8 C0 06            [24] 1856 	push	ar6
      0028AA C0 05            [24] 1857 	push	ar5
      0028AC C0 04            [24] 1858 	push	ar4
      0028AE C0 03            [24] 1859 	push	ar3
      0028B0 C0 01            [24] 1860 	push	ar1
      0028B2 C0 02            [24] 1861 	push	ar2
      0028B4 C0 07            [24] 1862 	push	ar7
      0028B6 A8 10            [24] 1863 	mov	r0,_bp
      0028B8 08               [12] 1864 	inc	r0
      0028B9 86 82            [24] 1865 	mov	dpl,@r0
      0028BB 08               [12] 1866 	inc	r0
      0028BC 86 83            [24] 1867 	mov	dph,@r0
      0028BE 12 2D 13         [24] 1868 	lcall	__mulint
      0028C1 AA 82            [24] 1869 	mov	r2,dpl
      0028C3 AF 83            [24] 1870 	mov	r7,dph
      0028C5 15 81            [12] 1871 	dec	sp
      0028C7 15 81            [12] 1872 	dec	sp
      0028C9 D0 01            [24] 1873 	pop	ar1
      0028CB D0 03            [24] 1874 	pop	ar3
      0028CD D0 04            [24] 1875 	pop	ar4
      0028CF D0 05            [24] 1876 	pop	ar5
      0028D1 D0 06            [24] 1877 	pop	ar6
      0028D3 E5 10            [12] 1878 	mov	a,_bp
      0028D5 24 03            [12] 1879 	add	a,#0x03
      0028D7 F8               [12] 1880 	mov	r0,a
      0028D8 86 82            [24] 1881 	mov	dpl,@r0
      0028DA 08               [12] 1882 	inc	r0
      0028DB 86 83            [24] 1883 	mov	dph,@r0
      0028DD EA               [12] 1884 	mov	a,r2
      0028DE F0               [24] 1885 	movx	@dptr,a
      0028DF EF               [12] 1886 	mov	a,r7
      0028E0 A3               [24] 1887 	inc	dptr
      0028E1 F0               [24] 1888 	movx	@dptr,a
                                   1889 ;	walk.c:184: neigh[i].c = neigh[REG + i].c * (1 + rand() % 32);
      0028E2 EB               [12] 1890 	mov	a,r3
      0028E3 24 74            [12] 1891 	add	a,#_neigh
      0028E5 FB               [12] 1892 	mov	r3,a
      0028E6 EC               [12] 1893 	mov	a,r4
      0028E7 34 FF            [12] 1894 	addc	a,#(_neigh >> 8)
      0028E9 FC               [12] 1895 	mov	r4,a
      0028EA 74 02            [12] 1896 	mov	a,#0x02
      0028EC 2B               [12] 1897 	add	a,r3
      0028ED FA               [12] 1898 	mov	r2,a
      0028EE E4               [12] 1899 	clr	a
      0028EF 3C               [12] 1900 	addc	a,r4
      0028F0 FF               [12] 1901 	mov	r7,a
      0028F1 EE               [12] 1902 	mov	a,r6
      0028F2 24 74            [12] 1903 	add	a,#_neigh
      0028F4 FE               [12] 1904 	mov	r6,a
      0028F5 ED               [12] 1905 	mov	a,r5
      0028F6 34 FF            [12] 1906 	addc	a,#(_neigh >> 8)
      0028F8 FD               [12] 1907 	mov	r5,a
      0028F9 8E 82            [24] 1908 	mov	dpl,r6
      0028FB 8D 83            [24] 1909 	mov	dph,r5
      0028FD A3               [24] 1910 	inc	dptr
      0028FE A3               [24] 1911 	inc	dptr
      0028FF E5 10            [12] 1912 	mov	a,_bp
      002901 24 03            [12] 1913 	add	a,#0x03
      002903 F8               [12] 1914 	mov	r0,a
      002904 E0               [24] 1915 	movx	a,@dptr
      002905 F6               [12] 1916 	mov	@r0,a
      002906 A3               [24] 1917 	inc	dptr
      002907 E0               [24] 1918 	movx	a,@dptr
      002908 08               [12] 1919 	inc	r0
      002909 F6               [12] 1920 	mov	@r0,a
      00290A C0 07            [24] 1921 	push	ar7
      00290C C0 04            [24] 1922 	push	ar4
      00290E C0 03            [24] 1923 	push	ar3
      002910 C0 02            [24] 1924 	push	ar2
      002912 C0 01            [24] 1925 	push	ar1
      002914 12 2C 1B         [24] 1926 	lcall	_rand
      002917 AD 82            [24] 1927 	mov	r5,dpl
      002919 AE 83            [24] 1928 	mov	r6,dph
      00291B 74 20            [12] 1929 	mov	a,#0x20
      00291D C0 E0            [24] 1930 	push	acc
      00291F E4               [12] 1931 	clr	a
      002920 C0 E0            [24] 1932 	push	acc
      002922 8D 82            [24] 1933 	mov	dpl,r5
      002924 8E 83            [24] 1934 	mov	dph,r6
      002926 12 2F 1F         [24] 1935 	lcall	__modsint
      002929 AD 82            [24] 1936 	mov	r5,dpl
      00292B AE 83            [24] 1937 	mov	r6,dph
      00292D 15 81            [12] 1938 	dec	sp
      00292F 15 81            [12] 1939 	dec	sp
      002931 D0 01            [24] 1940 	pop	ar1
      002933 D0 02            [24] 1941 	pop	ar2
      002935 D0 03            [24] 1942 	pop	ar3
      002937 D0 04            [24] 1943 	pop	ar4
      002939 D0 07            [24] 1944 	pop	ar7
      00293B 0D               [12] 1945 	inc	r5
      00293C BD 00 01         [24] 1946 	cjne	r5,#0x00,00189$
      00293F 0E               [12] 1947 	inc	r6
      002940                       1948 00189$:
      002940 C0 07            [24] 1949 	push	ar7
      002942 C0 04            [24] 1950 	push	ar4
      002944 C0 03            [24] 1951 	push	ar3
      002946 C0 02            [24] 1952 	push	ar2
      002948 C0 01            [24] 1953 	push	ar1
      00294A C0 05            [24] 1954 	push	ar5
      00294C C0 06            [24] 1955 	push	ar6
      00294E E5 10            [12] 1956 	mov	a,_bp
      002950 24 03            [12] 1957 	add	a,#0x03
      002952 F8               [12] 1958 	mov	r0,a
      002953 86 82            [24] 1959 	mov	dpl,@r0
      002955 08               [12] 1960 	inc	r0
      002956 86 83            [24] 1961 	mov	dph,@r0
      002958 12 2D 13         [24] 1962 	lcall	__mulint
      00295B AD 82            [24] 1963 	mov	r5,dpl
      00295D AE 83            [24] 1964 	mov	r6,dph
      00295F 15 81            [12] 1965 	dec	sp
      002961 15 81            [12] 1966 	dec	sp
      002963 D0 01            [24] 1967 	pop	ar1
      002965 D0 02            [24] 1968 	pop	ar2
      002967 D0 03            [24] 1969 	pop	ar3
      002969 D0 04            [24] 1970 	pop	ar4
      00296B D0 07            [24] 1971 	pop	ar7
      00296D 8A 82            [24] 1972 	mov	dpl,r2
      00296F 8F 83            [24] 1973 	mov	dph,r7
      002971 ED               [12] 1974 	mov	a,r5
      002972 F0               [24] 1975 	movx	@dptr,a
      002973 EE               [12] 1976 	mov	a,r6
      002974 A3               [24] 1977 	inc	dptr
      002975 F0               [24] 1978 	movx	@dptr,a
                                   1979 ;	walk.c:185: printf("% 8d% 8d", neigh[i].r, neigh[i].c);
      002976 8B 82            [24] 1980 	mov	dpl,r3
      002978 8C 83            [24] 1981 	mov	dph,r4
      00297A E0               [24] 1982 	movx	a,@dptr
      00297B FB               [12] 1983 	mov	r3,a
      00297C A3               [24] 1984 	inc	dptr
      00297D E0               [24] 1985 	movx	a,@dptr
      00297E FC               [12] 1986 	mov	r4,a
      00297F C0 07            [24] 1987 	push	ar7
      002981 C0 01            [24] 1988 	push	ar1
      002983 C0 05            [24] 1989 	push	ar5
      002985 C0 06            [24] 1990 	push	ar6
      002987 C0 03            [24] 1991 	push	ar3
      002989 C0 04            [24] 1992 	push	ar4
      00298B 74 53            [12] 1993 	mov	a,#___str_6
      00298D C0 E0            [24] 1994 	push	acc
      00298F 74 42            [12] 1995 	mov	a,#(___str_6 >> 8)
      002991 C0 E0            [24] 1996 	push	acc
      002993 74 80            [12] 1997 	mov	a,#0x80
      002995 C0 E0            [24] 1998 	push	acc
      002997 12 2E CA         [24] 1999 	lcall	_printf
      00299A E5 81            [12] 2000 	mov	a,sp
      00299C 24 F9            [12] 2001 	add	a,#0xf9
      00299E F5 81            [12] 2002 	mov	sp,a
      0029A0 D0 01            [24] 2003 	pop	ar1
      0029A2 D0 07            [24] 2004 	pop	ar7
                                   2005 ;	walk.c:182: for (i = 0; i < REG; i++) {
      0029A4 E5 10            [12] 2006 	mov	a,_bp
      0029A6 24 07            [12] 2007 	add	a,#0x07
      0029A8 F8               [12] 2008 	mov	r0,a
      0029A9 06               [12] 2009 	inc	@r0
      0029AA B6 00 02         [24] 2010 	cjne	@r0,#0x00,00190$
      0029AD 08               [12] 2011 	inc	r0
      0029AE 06               [12] 2012 	inc	@r0
      0029AF                       2013 00190$:
      0029AF E5 10            [12] 2014 	mov	a,_bp
      0029B1 24 07            [12] 2015 	add	a,#0x07
      0029B3 F8               [12] 2016 	mov	r0,a
      0029B4 86 05            [24] 2017 	mov	ar5,@r0
      0029B6 08               [12] 2018 	inc	r0
      0029B7 86 06            [24] 2019 	mov	ar6,@r0
      0029B9 C3               [12] 2020 	clr	c
      0029BA ED               [12] 2021 	mov	a,r5
      0029BB 94 08            [12] 2022 	subb	a,#0x08
      0029BD EE               [12] 2023 	mov	a,r6
      0029BE 94 00            [12] 2024 	subb	a,#0x00
      0029C0 D0 07            [24] 2025 	pop	ar7
      0029C2 50 03            [24] 2026 	jnc	00191$
      0029C4 02 28 14         [24] 2027 	ljmp	00115$
      0029C7                       2028 00191$:
                                   2029 ;	walk.c:188: OE76 = OE76_0;
      0029C7 78 12            [12] 2030 	mov	r0,#_OE76
      0029C9 76 3F            [12] 2031 	mov	@r0,#0x3f
                                   2032 ;	walk.c:189: flashOE(OE76_NC);
      0029CB 75 82 00         [24] 2033 	mov	dpl,#0x00
      0029CE C0 07            [24] 2034 	push	ar7
      0029D0 C0 01            [24] 2035 	push	ar1
      0029D2 12 20 8E         [24] 2036 	lcall	_flashOE
      0029D5 D0 01            [24] 2037 	pop	ar1
      0029D7 D0 07            [24] 2038 	pop	ar7
                                   2039 ;	walk.c:191: walk(&initial);
      0029D9 8F 04            [24] 2040 	mov	ar4,r7
      0029DB 7D 00            [12] 2041 	mov	r5,#0x00
      0029DD 7E 40            [12] 2042 	mov	r6,#0x40
      0029DF 8C 82            [24] 2043 	mov	dpl,r4
      0029E1 8D 83            [24] 2044 	mov	dph,r5
      0029E3 8E F0            [24] 2045 	mov	b,r6
      0029E5 C0 07            [24] 2046 	push	ar7
      0029E7 C0 01            [24] 2047 	push	ar1
      0029E9 12 23 3C         [24] 2048 	lcall	_walk
      0029EC D0 01            [24] 2049 	pop	ar1
      0029EE D0 07            [24] 2050 	pop	ar7
                                   2051 ;	walk.c:193: for (i = 0; i < ROWS; i++)
      0029F0 E5 10            [12] 2052 	mov	a,_bp
      0029F2 24 07            [12] 2053 	add	a,#0x07
      0029F4 F8               [12] 2054 	mov	r0,a
      0029F5 E4               [12] 2055 	clr	a
      0029F6 F6               [12] 2056 	mov	@r0,a
      0029F7 08               [12] 2057 	inc	r0
      0029F8 F6               [12] 2058 	mov	@r0,a
      0029F9 7B 00            [12] 2059 	mov	r3,#0x00
      0029FB 7C 00            [12] 2060 	mov	r4,#0x00
                                   2061 ;	walk.c:194: for (j = 0; j < COLS; j++)
      0029FD                       2062 00131$:
      0029FD E5 10            [12] 2063 	mov	a,_bp
      0029FF 24 03            [12] 2064 	add	a,#0x03
      002A01 F8               [12] 2065 	mov	r0,a
      002A02 EB               [12] 2066 	mov	a,r3
      002A03 24 00            [12] 2067 	add	a,#_g
      002A05 F6               [12] 2068 	mov	@r0,a
      002A06 EC               [12] 2069 	mov	a,r4
      002A07 34 43            [12] 2070 	addc	a,#(_g >> 8)
      002A09 08               [12] 2071 	inc	r0
      002A0A F6               [12] 2072 	mov	@r0,a
      002A0B 7A 00            [12] 2073 	mov	r2,#0x00
      002A0D 7E 00            [12] 2074 	mov	r6,#0x00
      002A0F                       2075 00117$:
                                   2076 ;	walk.c:195: if (g[i][j] != 0xaau) bang();
      002A0F E5 10            [12] 2077 	mov	a,_bp
      002A11 24 03            [12] 2078 	add	a,#0x03
      002A13 F8               [12] 2079 	mov	r0,a
      002A14 EA               [12] 2080 	mov	a,r2
      002A15 26               [12] 2081 	add	a,@r0
      002A16 F5 82            [12] 2082 	mov	dpl,a
      002A18 EE               [12] 2083 	mov	a,r6
      002A19 08               [12] 2084 	inc	r0
      002A1A 36               [12] 2085 	addc	a,@r0
      002A1B F5 83            [12] 2086 	mov	dph,a
      002A1D E0               [24] 2087 	movx	a,@dptr
      002A1E FD               [12] 2088 	mov	r5,a
      002A1F BD AA 02         [24] 2089 	cjne	r5,#0xaa,00192$
      002A22 80 1B            [24] 2090 	sjmp	00118$
      002A24                       2091 00192$:
      002A24 C0 07            [24] 2092 	push	ar7
      002A26 C0 06            [24] 2093 	push	ar6
      002A28 C0 04            [24] 2094 	push	ar4
      002A2A C0 03            [24] 2095 	push	ar3
      002A2C C0 02            [24] 2096 	push	ar2
      002A2E C0 01            [24] 2097 	push	ar1
      002A30 12 20 82         [24] 2098 	lcall	_bang
      002A33 D0 01            [24] 2099 	pop	ar1
      002A35 D0 02            [24] 2100 	pop	ar2
      002A37 D0 03            [24] 2101 	pop	ar3
      002A39 D0 04            [24] 2102 	pop	ar4
      002A3B D0 06            [24] 2103 	pop	ar6
      002A3D D0 07            [24] 2104 	pop	ar7
      002A3F                       2105 00118$:
                                   2106 ;	walk.c:194: for (j = 0; j < COLS; j++)
      002A3F 0A               [12] 2107 	inc	r2
      002A40 BA 00 01         [24] 2108 	cjne	r2,#0x00,00193$
      002A43 0E               [12] 2109 	inc	r6
      002A44                       2110 00193$:
      002A44 C3               [12] 2111 	clr	c
      002A45 EA               [12] 2112 	mov	a,r2
      002A46 94 C9            [12] 2113 	subb	a,#0xc9
      002A48 EE               [12] 2114 	mov	a,r6
      002A49 64 80            [12] 2115 	xrl	a,#0x80
      002A4B 94 80            [12] 2116 	subb	a,#0x80
      002A4D 40 C0            [24] 2117 	jc	00117$
                                   2118 ;	walk.c:193: for (i = 0; i < ROWS; i++)
      002A4F 74 C9            [12] 2119 	mov	a,#0xc9
      002A51 2B               [12] 2120 	add	a,r3
      002A52 FB               [12] 2121 	mov	r3,a
      002A53 E4               [12] 2122 	clr	a
      002A54 3C               [12] 2123 	addc	a,r4
      002A55 FC               [12] 2124 	mov	r4,a
      002A56 E5 10            [12] 2125 	mov	a,_bp
      002A58 24 07            [12] 2126 	add	a,#0x07
      002A5A F8               [12] 2127 	mov	r0,a
      002A5B 06               [12] 2128 	inc	@r0
      002A5C B6 00 02         [24] 2129 	cjne	@r0,#0x00,00195$
      002A5F 08               [12] 2130 	inc	r0
      002A60 06               [12] 2131 	inc	@r0
      002A61                       2132 00195$:
      002A61 E5 10            [12] 2133 	mov	a,_bp
      002A63 24 07            [12] 2134 	add	a,#0x07
      002A65 F8               [12] 2135 	mov	r0,a
      002A66 C3               [12] 2136 	clr	c
      002A67 E6               [12] 2137 	mov	a,@r0
      002A68 94 30            [12] 2138 	subb	a,#0x30
      002A6A 08               [12] 2139 	inc	r0
      002A6B E6               [12] 2140 	mov	a,@r0
      002A6C 64 80            [12] 2141 	xrl	a,#0x80
      002A6E 94 80            [12] 2142 	subb	a,#0x80
      002A70 40 8B            [24] 2143 	jc	00131$
                                   2144 ;	walk.c:197: N++;
      002A72 E5 10            [12] 2145 	mov	a,_bp
      002A74 24 05            [12] 2146 	add	a,#0x05
      002A76 F8               [12] 2147 	mov	r0,a
      002A77 06               [12] 2148 	inc	@r0
      002A78 B6 00 02         [24] 2149 	cjne	@r0,#0x00,00197$
      002A7B 08               [12] 2150 	inc	r0
      002A7C 06               [12] 2151 	inc	@r0
      002A7D                       2152 00197$:
      002A7D 02 26 F9         [24] 2153 	ljmp	00108$
      002A80                       2154 00110$:
                                   2155 ;	walk.c:200: EA = 0;
                                   2156 ;	assignBit
      002A80 C2 AF            [12] 2157 	clr	_EA
                                   2158 ;	walk.c:202: puts("\033[2J\033[?25h");
      002A82 90 42 5C         [24] 2159 	mov	dptr,#___str_7
      002A85 75 F0 80         [24] 2160 	mov	b,#0x80
      002A88 12 2E 44         [24] 2161 	lcall	_puts
                                   2162 ;	walk.c:206: __endasm;
      002A8B 02 00 00         [24] 2163 	ljmp	0
                                   2164 ;	walk.c:208: return 0;
      002A8E 90 00 00         [24] 2165 	mov	dptr,#0x0000
                                   2166 ;	walk.c:209: }
      002A91 85 10 81         [24] 2167 	mov	sp,_bp
      002A94 D0 10            [24] 2168 	pop	_bp
      002A96 22               [24] 2169 	ret
                                   2170 ;------------------------------------------------------------
                                   2171 ;Allocation info for local variables in function 'qinit'
                                   2172 ;------------------------------------------------------------
                                   2173 ;	walk.c:211: static void qinit(void) {
                                   2174 ;	-----------------------------------------
                                   2175 ;	 function qinit
                                   2176 ;	-----------------------------------------
      002A97                       2177 _qinit:
                                   2178 ;	walk.c:212: hp = tp = 0;
      002A97 90 FF 72         [24] 2179 	mov	dptr,#_tp
      002A9A E4               [12] 2180 	clr	a
      002A9B F0               [24] 2181 	movx	@dptr,a
      002A9C A3               [24] 2182 	inc	dptr
      002A9D F0               [24] 2183 	movx	@dptr,a
      002A9E 90 FF 70         [24] 2184 	mov	dptr,#_hp
      002AA1 F0               [24] 2185 	movx	@dptr,a
      002AA2 A3               [24] 2186 	inc	dptr
      002AA3 F0               [24] 2187 	movx	@dptr,a
                                   2188 ;	walk.c:213: return;
                                   2189 ;	walk.c:214: }
      002AA4 22               [24] 2190 	ret
                                   2191 ;------------------------------------------------------------
                                   2192 ;Allocation info for local variables in function 'qadd'
                                   2193 ;------------------------------------------------------------
                                   2194 ;t                         Allocated to registers r7 r5 r6 
                                   2195 ;sloc0                     Allocated to stack - _bp +1
                                   2196 ;sloc1                     Allocated to stack - _bp +3
                                   2197 ;sloc2                     Allocated to stack - _bp +5
                                   2198 ;sloc3                     Allocated to stack - _bp +10
                                   2199 ;------------------------------------------------------------
                                   2200 ;	walk.c:216: static uint8_t qadd(struct node *t) {
                                   2201 ;	-----------------------------------------
                                   2202 ;	 function qadd
                                   2203 ;	-----------------------------------------
      002AA5                       2204 _qadd:
      002AA5 C0 10            [24] 2205 	push	_bp
      002AA7 E5 81            [12] 2206 	mov	a,sp
      002AA9 F5 10            [12] 2207 	mov	_bp,a
      002AAB 24 06            [12] 2208 	add	a,#0x06
      002AAD F5 81            [12] 2209 	mov	sp,a
      002AAF AF 82            [24] 2210 	mov	r7,dpl
      002AB1 AD 83            [24] 2211 	mov	r5,dph
      002AB3 AE F0            [24] 2212 	mov	r6,b
                                   2213 ;	walk.c:217: if (((hp + 1) % QMAX) == tp) return 0u;
      002AB5 90 FF 70         [24] 2214 	mov	dptr,#_hp
      002AB8 E0               [24] 2215 	movx	a,@dptr
      002AB9 FB               [12] 2216 	mov	r3,a
      002ABA A3               [24] 2217 	inc	dptr
      002ABB E0               [24] 2218 	movx	a,@dptr
      002ABC FC               [12] 2219 	mov	r4,a
      002ABD A8 10            [24] 2220 	mov	r0,_bp
      002ABF 08               [12] 2221 	inc	r0
      002AC0 74 01            [12] 2222 	mov	a,#0x01
      002AC2 2B               [12] 2223 	add	a,r3
      002AC3 F6               [12] 2224 	mov	@r0,a
      002AC4 E4               [12] 2225 	clr	a
      002AC5 3C               [12] 2226 	addc	a,r4
      002AC6 08               [12] 2227 	inc	r0
      002AC7 F6               [12] 2228 	mov	@r0,a
      002AC8 C0 07            [24] 2229 	push	ar7
      002ACA C0 06            [24] 2230 	push	ar6
      002ACC C0 05            [24] 2231 	push	ar5
      002ACE C0 04            [24] 2232 	push	ar4
      002AD0 C0 03            [24] 2233 	push	ar3
      002AD2 74 B0            [12] 2234 	mov	a,#0xb0
      002AD4 C0 E0            [24] 2235 	push	acc
      002AD6 74 25            [12] 2236 	mov	a,#0x25
      002AD8 C0 E0            [24] 2237 	push	acc
      002ADA A8 10            [24] 2238 	mov	r0,_bp
      002ADC 08               [12] 2239 	inc	r0
      002ADD 86 82            [24] 2240 	mov	dpl,@r0
      002ADF 08               [12] 2241 	inc	r0
      002AE0 86 83            [24] 2242 	mov	dph,@r0
      002AE2 12 2F 1F         [24] 2243 	lcall	__modsint
      002AE5 A8 10            [24] 2244 	mov	r0,_bp
      002AE7 08               [12] 2245 	inc	r0
      002AE8 08               [12] 2246 	inc	r0
      002AE9 08               [12] 2247 	inc	r0
      002AEA A6 82            [24] 2248 	mov	@r0,dpl
      002AEC 08               [12] 2249 	inc	r0
      002AED A6 83            [24] 2250 	mov	@r0,dph
      002AEF 15 81            [12] 2251 	dec	sp
      002AF1 15 81            [12] 2252 	dec	sp
      002AF3 D0 03            [24] 2253 	pop	ar3
      002AF5 D0 04            [24] 2254 	pop	ar4
      002AF7 D0 05            [24] 2255 	pop	ar5
      002AF9 D0 06            [24] 2256 	pop	ar6
      002AFB D0 07            [24] 2257 	pop	ar7
      002AFD 90 FF 72         [24] 2258 	mov	dptr,#_tp
      002B00 E5 10            [12] 2259 	mov	a,_bp
      002B02 24 05            [12] 2260 	add	a,#0x05
      002B04 F8               [12] 2261 	mov	r0,a
      002B05 E0               [24] 2262 	movx	a,@dptr
      002B06 F6               [12] 2263 	mov	@r0,a
      002B07 A3               [24] 2264 	inc	dptr
      002B08 E0               [24] 2265 	movx	a,@dptr
      002B09 08               [12] 2266 	inc	r0
      002B0A F6               [12] 2267 	mov	@r0,a
      002B0B E5 10            [12] 2268 	mov	a,_bp
      002B0D 24 03            [12] 2269 	add	a,#0x03
      002B0F F8               [12] 2270 	mov	r0,a
      002B10 E5 10            [12] 2271 	mov	a,_bp
      002B12 24 05            [12] 2272 	add	a,#0x05
      002B14 F9               [12] 2273 	mov	r1,a
      002B15 86 F0            [24] 2274 	mov	b,@r0
      002B17 E7               [12] 2275 	mov	a,@r1
      002B18 B5 F0 0A         [24] 2276 	cjne	a,b,00109$
      002B1B 08               [12] 2277 	inc	r0
      002B1C 86 F0            [24] 2278 	mov	b,@r0
      002B1E 09               [12] 2279 	inc	r1
      002B1F E7               [12] 2280 	mov	a,@r1
      002B20 B5 F0 02         [24] 2281 	cjne	a,b,00109$
      002B23 80 02            [24] 2282 	sjmp	00110$
      002B25                       2283 00109$:
      002B25 80 05            [24] 2284 	sjmp	00102$
      002B27                       2285 00110$:
      002B27 75 82 00         [24] 2286 	mov	dpl,#0x00
      002B2A 80 65            [24] 2287 	sjmp	00103$
      002B2C                       2288 00102$:
                                   2289 ;	walk.c:218: queue[hp] = *t;
      002B2C 8F 02            [24] 2290 	mov	ar2,r7
      002B2E 8E 07            [24] 2291 	mov	ar7,r6
      002B30 EB               [12] 2292 	mov	a,r3
      002B31 2B               [12] 2293 	add	a,r3
      002B32 FB               [12] 2294 	mov	r3,a
      002B33 EC               [12] 2295 	mov	a,r4
      002B34 33               [12] 2296 	rlc	a
      002B35 FC               [12] 2297 	mov	r4,a
      002B36 EB               [12] 2298 	mov	a,r3
      002B37 2B               [12] 2299 	add	a,r3
      002B38 FB               [12] 2300 	mov	r3,a
      002B39 EC               [12] 2301 	mov	a,r4
      002B3A 33               [12] 2302 	rlc	a
      002B3B FC               [12] 2303 	mov	r4,a
      002B3C EB               [12] 2304 	mov	a,r3
      002B3D 24 B0            [12] 2305 	add	a,#_queue
      002B3F FB               [12] 2306 	mov	r3,a
      002B40 EC               [12] 2307 	mov	a,r4
      002B41 34 68            [12] 2308 	addc	a,#(_queue >> 8)
      002B43 FC               [12] 2309 	mov	r4,a
      002B44 7E 00            [12] 2310 	mov	r6,#0x00
      002B46 74 04            [12] 2311 	mov	a,#0x04
      002B48 C0 E0            [24] 2312 	push	acc
      002B4A E4               [12] 2313 	clr	a
      002B4B C0 E0            [24] 2314 	push	acc
      002B4D C0 02            [24] 2315 	push	ar2
      002B4F C0 05            [24] 2316 	push	ar5
      002B51 C0 07            [24] 2317 	push	ar7
      002B53 8B 82            [24] 2318 	mov	dpl,r3
      002B55 8C 83            [24] 2319 	mov	dph,r4
      002B57 8E F0            [24] 2320 	mov	b,r6
      002B59 12 2D B1         [24] 2321 	lcall	___memcpy
      002B5C E5 81            [12] 2322 	mov	a,sp
      002B5E 24 FB            [12] 2323 	add	a,#0xfb
      002B60 F5 81            [12] 2324 	mov	sp,a
                                   2325 ;	walk.c:219: hp = (hp + 1) % QMAX;
      002B62 90 FF 70         [24] 2326 	mov	dptr,#_hp
      002B65 E0               [24] 2327 	movx	a,@dptr
      002B66 FD               [12] 2328 	mov	r5,a
      002B67 A3               [24] 2329 	inc	dptr
      002B68 E0               [24] 2330 	movx	a,@dptr
      002B69 FE               [12] 2331 	mov	r6,a
      002B6A 0D               [12] 2332 	inc	r5
      002B6B BD 00 01         [24] 2333 	cjne	r5,#0x00,00111$
      002B6E 0E               [12] 2334 	inc	r6
      002B6F                       2335 00111$:
      002B6F 74 B0            [12] 2336 	mov	a,#0xb0
      002B71 C0 E0            [24] 2337 	push	acc
      002B73 74 25            [12] 2338 	mov	a,#0x25
      002B75 C0 E0            [24] 2339 	push	acc
      002B77 8D 82            [24] 2340 	mov	dpl,r5
      002B79 8E 83            [24] 2341 	mov	dph,r6
      002B7B 12 2F 1F         [24] 2342 	lcall	__modsint
      002B7E AD 82            [24] 2343 	mov	r5,dpl
      002B80 AE 83            [24] 2344 	mov	r6,dph
      002B82 15 81            [12] 2345 	dec	sp
      002B84 15 81            [12] 2346 	dec	sp
      002B86 90 FF 70         [24] 2347 	mov	dptr,#_hp
      002B89 ED               [12] 2348 	mov	a,r5
      002B8A F0               [24] 2349 	movx	@dptr,a
      002B8B EE               [12] 2350 	mov	a,r6
      002B8C A3               [24] 2351 	inc	dptr
      002B8D F0               [24] 2352 	movx	@dptr,a
                                   2353 ;	walk.c:220: return 1u;
      002B8E 75 82 01         [24] 2354 	mov	dpl,#0x01
      002B91                       2355 00103$:
                                   2356 ;	walk.c:221: }
      002B91 85 10 81         [24] 2357 	mov	sp,_bp
      002B94 D0 10            [24] 2358 	pop	_bp
      002B96 22               [24] 2359 	ret
                                   2360 ;------------------------------------------------------------
                                   2361 ;Allocation info for local variables in function 'qget'
                                   2362 ;------------------------------------------------------------
                                   2363 ;t                         Allocated to registers r5 r6 r7 
                                   2364 ;------------------------------------------------------------
                                   2365 ;	walk.c:223: static uint8_t qget(struct node *t) {
                                   2366 ;	-----------------------------------------
                                   2367 ;	 function qget
                                   2368 ;	-----------------------------------------
      002B97                       2369 _qget:
      002B97 AD 82            [24] 2370 	mov	r5,dpl
      002B99 AE 83            [24] 2371 	mov	r6,dph
      002B9B AF F0            [24] 2372 	mov	r7,b
                                   2373 ;	walk.c:224: if (hp == tp) return 0u;
      002B9D 90 FF 70         [24] 2374 	mov	dptr,#_hp
      002BA0 E0               [24] 2375 	movx	a,@dptr
      002BA1 FB               [12] 2376 	mov	r3,a
      002BA2 A3               [24] 2377 	inc	dptr
      002BA3 E0               [24] 2378 	movx	a,@dptr
      002BA4 FC               [12] 2379 	mov	r4,a
      002BA5 90 FF 72         [24] 2380 	mov	dptr,#_tp
      002BA8 E0               [24] 2381 	movx	a,@dptr
      002BA9 F9               [12] 2382 	mov	r1,a
      002BAA A3               [24] 2383 	inc	dptr
      002BAB E0               [24] 2384 	movx	a,@dptr
      002BAC FA               [12] 2385 	mov	r2,a
      002BAD EB               [12] 2386 	mov	a,r3
      002BAE B5 01 08         [24] 2387 	cjne	a,ar1,00102$
      002BB1 EC               [12] 2388 	mov	a,r4
      002BB2 B5 02 04         [24] 2389 	cjne	a,ar2,00102$
      002BB5 75 82 00         [24] 2390 	mov	dpl,#0x00
      002BB8 22               [24] 2391 	ret
      002BB9                       2392 00102$:
                                   2393 ;	walk.c:225: *t = queue[tp];
      002BB9 E9               [12] 2394 	mov	a,r1
      002BBA 29               [12] 2395 	add	a,r1
      002BBB F9               [12] 2396 	mov	r1,a
      002BBC EA               [12] 2397 	mov	a,r2
      002BBD 33               [12] 2398 	rlc	a
      002BBE FA               [12] 2399 	mov	r2,a
      002BBF E9               [12] 2400 	mov	a,r1
      002BC0 29               [12] 2401 	add	a,r1
      002BC1 F9               [12] 2402 	mov	r1,a
      002BC2 EA               [12] 2403 	mov	a,r2
      002BC3 33               [12] 2404 	rlc	a
      002BC4 FA               [12] 2405 	mov	r2,a
      002BC5 E9               [12] 2406 	mov	a,r1
      002BC6 24 B0            [12] 2407 	add	a,#_queue
      002BC8 F9               [12] 2408 	mov	r1,a
      002BC9 EA               [12] 2409 	mov	a,r2
      002BCA 34 68            [12] 2410 	addc	a,#(_queue >> 8)
      002BCC FA               [12] 2411 	mov	r2,a
      002BCD 7C 00            [12] 2412 	mov	r4,#0x00
      002BCF 74 04            [12] 2413 	mov	a,#0x04
      002BD1 C0 E0            [24] 2414 	push	acc
      002BD3 E4               [12] 2415 	clr	a
      002BD4 C0 E0            [24] 2416 	push	acc
      002BD6 C0 01            [24] 2417 	push	ar1
      002BD8 C0 02            [24] 2418 	push	ar2
      002BDA C0 04            [24] 2419 	push	ar4
      002BDC 8D 82            [24] 2420 	mov	dpl,r5
      002BDE 8E 83            [24] 2421 	mov	dph,r6
      002BE0 8F F0            [24] 2422 	mov	b,r7
      002BE2 12 2D B1         [24] 2423 	lcall	___memcpy
      002BE5 E5 81            [12] 2424 	mov	a,sp
      002BE7 24 FB            [12] 2425 	add	a,#0xfb
      002BE9 F5 81            [12] 2426 	mov	sp,a
                                   2427 ;	walk.c:226: tp = (tp + 1) % QMAX;
      002BEB 90 FF 72         [24] 2428 	mov	dptr,#_tp
      002BEE E0               [24] 2429 	movx	a,@dptr
      002BEF FE               [12] 2430 	mov	r6,a
      002BF0 A3               [24] 2431 	inc	dptr
      002BF1 E0               [24] 2432 	movx	a,@dptr
      002BF2 FF               [12] 2433 	mov	r7,a
      002BF3 0E               [12] 2434 	inc	r6
      002BF4 BE 00 01         [24] 2435 	cjne	r6,#0x00,00111$
      002BF7 0F               [12] 2436 	inc	r7
      002BF8                       2437 00111$:
      002BF8 74 B0            [12] 2438 	mov	a,#0xb0
      002BFA C0 E0            [24] 2439 	push	acc
      002BFC 74 25            [12] 2440 	mov	a,#0x25
      002BFE C0 E0            [24] 2441 	push	acc
      002C00 8E 82            [24] 2442 	mov	dpl,r6
      002C02 8F 83            [24] 2443 	mov	dph,r7
      002C04 12 2F 1F         [24] 2444 	lcall	__modsint
      002C07 AE 82            [24] 2445 	mov	r6,dpl
      002C09 AF 83            [24] 2446 	mov	r7,dph
      002C0B 15 81            [12] 2447 	dec	sp
      002C0D 15 81            [12] 2448 	dec	sp
      002C0F 90 FF 72         [24] 2449 	mov	dptr,#_tp
      002C12 EE               [12] 2450 	mov	a,r6
      002C13 F0               [24] 2451 	movx	@dptr,a
      002C14 EF               [12] 2452 	mov	a,r7
      002C15 A3               [24] 2453 	inc	dptr
      002C16 F0               [24] 2454 	movx	@dptr,a
                                   2455 ;	walk.c:227: return 1u;
      002C17 75 82 01         [24] 2456 	mov	dpl,#0x01
                                   2457 ;	walk.c:228: }
      002C1A 22               [24] 2458 	ret
                                   2459 	.area CSEG    (CODE)
                                   2460 	.area CONST   (CODE)
                                   2461 	.area CONST   (CODE)
      0041FD                       2462 ___str_0:
      0041FD 4D 65 6D 6F 72 79 20  2463 	.ascii "Memory error"
             65 72 72 6F 72
      004209 00                    2464 	.db 0x00
                                   2465 	.area CSEG    (CODE)
                                   2466 	.area CONST   (CODE)
      00420A                       2467 ___str_1:
      00420A 1B                    2468 	.db 0x1b
      00420B 5B 32 3B 31 48 25 20  2469 	.ascii "[2;1H% 8d% 8d% 8d% 8d"
             38 64 25 20 38 64 25
             20 38 64 25 20 38 64
      004220 00                    2470 	.db 0x00
                                   2471 	.area CSEG    (CODE)
                                   2472 	.area CONST   (CODE)
      004221                       2473 ___str_2:
      004221 1B                    2474 	.db 0x1b
      004222 5B 25 64 3B 25 64 48  2475 	.ascii "[%d;%dH."
             2E
      00422A 00                    2476 	.db 0x00
                                   2477 	.area CSEG    (CODE)
                                   2478 	.area CONST   (CODE)
      00422B                       2479 ___str_3:
      00422B 1B                    2480 	.db 0x1b
      00422C 5B 25 64 3B 25 64 48  2481 	.ascii "[%d;%dHo"
             6F
      004234 00                    2482 	.db 0x00
                                   2483 	.area CSEG    (CODE)
                                   2484 	.area CONST   (CODE)
      004235                       2485 ___str_4:
      004235 1B                    2486 	.db 0x1b
      004236 5B 32 4A              2487 	.ascii "[2J"
      004239 1B                    2488 	.db 0x1b
      00423A 5B 3F 32 35 6C        2489 	.ascii "[?25l"
      00423F 00                    2490 	.db 0x00
                                   2491 	.area CSEG    (CODE)
                                   2492 	.area CONST   (CODE)
      004240                       2493 ___str_5:
      004240 1B                    2494 	.db 0x1b
      004241 5B 31 3B 31 48 25 20  2495 	.ascii "[1;1H% 8u% 8d% 8d"
             38 75 25 20 38 64 25
             20 38 64
      004252 00                    2496 	.db 0x00
                                   2497 	.area CSEG    (CODE)
                                   2498 	.area CONST   (CODE)
      004253                       2499 ___str_6:
      004253 25 20 38 64 25 20 38  2500 	.ascii "% 8d% 8d"
             64
      00425B 00                    2501 	.db 0x00
                                   2502 	.area CSEG    (CODE)
                                   2503 	.area CONST   (CODE)
      00425C                       2504 ___str_7:
      00425C 1B                    2505 	.db 0x1b
      00425D 5B 32 4A              2506 	.ascii "[2J"
      004260 1B                    2507 	.db 0x1b
      004261 5B 3F 32 35 68        2508 	.ascii "[?25h"
      004266 00                    2509 	.db 0x00
                                   2510 	.area CSEG    (CODE)
                                   2511 	.area XINIT   (CODE)
      004272                       2512 __xinit__neigh:
      004272 FF FF                 2513 	.byte #0xff, #0xff	; -1
      004274 01 00                 2514 	.byte #0x01, #0x00	;  1
      004276 FF FF                 2515 	.byte #0xff, #0xff	; -1
      004278 FF FF                 2516 	.byte #0xff, #0xff	; -1
      00427A 01 00                 2517 	.byte #0x01, #0x00	;  1
      00427C FF FF                 2518 	.byte #0xff, #0xff	; -1
      00427E 01 00                 2519 	.byte #0x01, #0x00	;  1
      004280 01 00                 2520 	.byte #0x01, #0x00	;  1
      004282 FF FF                 2521 	.byte #0xff, #0xff	; -1
      004284 00 00                 2522 	.byte #0x00, #0x00	;  0
      004286 00 00                 2523 	.byte #0x00, #0x00	;  0
      004288 FF FF                 2524 	.byte #0xff, #0xff	; -1
      00428A 01 00                 2525 	.byte #0x01, #0x00	;  1
      00428C 00 00                 2526 	.byte #0x00, #0x00	;  0
      00428E 00 00                 2527 	.byte #0x00, #0x00	;  0
      004290 01 00                 2528 	.byte #0x01, #0x00	;  1
      004292 FF FF                 2529 	.byte #0xff, #0xff	; -1
      004294 01 00                 2530 	.byte #0x01, #0x00	;  1
      004296 FF FF                 2531 	.byte #0xff, #0xff	; -1
      004298 FF FF                 2532 	.byte #0xff, #0xff	; -1
      00429A 01 00                 2533 	.byte #0x01, #0x00	;  1
      00429C FF FF                 2534 	.byte #0xff, #0xff	; -1
      00429E 01 00                 2535 	.byte #0x01, #0x00	;  1
      0042A0 01 00                 2536 	.byte #0x01, #0x00	;  1
      0042A2 FF FF                 2537 	.byte #0xff, #0xff	; -1
      0042A4 00 00                 2538 	.byte #0x00, #0x00	;  0
      0042A6 00 00                 2539 	.byte #0x00, #0x00	;  0
      0042A8 FF FF                 2540 	.byte #0xff, #0xff	; -1
      0042AA 01 00                 2541 	.byte #0x01, #0x00	;  1
      0042AC 00 00                 2542 	.byte #0x00, #0x00	;  0
      0042AE 00 00                 2543 	.byte #0x00, #0x00	;  0
      0042B0 01 00                 2544 	.byte #0x01, #0x00	;  1
                                   2545 	.area CABS    (ABS,CODE)
