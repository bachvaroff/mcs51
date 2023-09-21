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
      004280                        321 _g:
      004280                        322 	.ds 9648
      006830                        323 _stack:
      006830                        324 	.ds 38592
      00FEF0                        325 _sp:
      00FEF0                        326 	.ds 2
                                    327 ;--------------------------------------------------------
                                    328 ; absolute external ram data
                                    329 ;--------------------------------------------------------
                                    330 	.area XABS    (ABS,XDATA)
                                    331 ;--------------------------------------------------------
                                    332 ; external initialized ram data
                                    333 ;--------------------------------------------------------
                                    334 	.area XISEG   (XDATA)
      00FEF2                        335 _R:
      00FEF2                        336 	.ds 2
      00FEF4                        337 _neigh:
      00FEF4                        338 	.ds 64
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
      002006 02 26 D1         [24]  377 	ljmp	_main
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
      002082 90 41 64         [24]  473 	mov	dptr,#___str_0
      002085 75 F0 80         [24]  474 	mov	b,#0x80
      002088 12 2D AB         [24]  475 	lcall	_puts
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
                                    486 ;	walk.c:86: static void flashOE(uint8_t mask) {
                                    487 ;	-----------------------------------------
                                    488 ;	 function flashOE
                                    489 ;	-----------------------------------------
      00208E                        490 _flashOE:
      00208E C0 10            [24]  491 	push	_bp
      002090 85 81 10         [24]  492 	mov	_bp,sp
      002093 05 81            [12]  493 	inc	sp
      002095 05 81            [12]  494 	inc	sp
      002097 AF 82            [24]  495 	mov	r7,dpl
                                    496 ;	walk.c:89: P1_7 = 0;
                                    497 ;	assignBit
      002099 C2 97            [12]  498 	clr	_P1_7
                                    499 ;	walk.c:90: *OEreg = OE76;
      00209B 90 F0 06         [24]  500 	mov	dptr,#0xf006
      00209E 78 12            [12]  501 	mov	r0,#_OE76
      0020A0 E6               [12]  502 	mov	a,@r0
      0020A1 F0               [24]  503 	movx	@dptr,a
                                    504 ;	walk.c:91: P1_7 = 1;
                                    505 ;	assignBit
      0020A2 D2 97            [12]  506 	setb	_P1_7
                                    507 ;	walk.c:92: OE76 ^= mask;
      0020A4 78 12            [12]  508 	mov	r0,#_OE76
      0020A6 EF               [12]  509 	mov	a,r7
      0020A7 66               [12]  510 	xrl	a,@r0
      0020A8 F6               [12]  511 	mov	@r0,a
                                    512 ;	walk.c:94: return;
                                    513 ;	walk.c:95: }
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
                                    527 ;	walk.c:97: static int update(struct node *t, struct node *cur, char j) {
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
                                    540 ;	walk.c:98: t->r = cur->r + neigh[j].r;
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
      0020D8 12 2E 6A         [24]  555 	lcall	__gptrget
      0020DB F6               [12]  556 	mov	@r0,a
      0020DC A3               [24]  557 	inc	dptr
      0020DD 12 2E 6A         [24]  558 	lcall	__gptrget
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
      0020FB 24 F4            [12]  577 	add	a,#_neigh
      0020FD F5 82            [12]  578 	mov	dpl,a
      0020FF 08               [12]  579 	inc	r0
      002100 E6               [12]  580 	mov	a,@r0
      002101 34 FE            [12]  581 	addc	a,#(_neigh >> 8)
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
      002122 12 2C 5F         [24]  606 	lcall	__gptrput
      002125 A3               [24]  607 	inc	dptr
      002126 EE               [12]  608 	mov	a,r6
      002127 12 2C 5F         [24]  609 	lcall	__gptrput
                                    610 ;	walk.c:99: t->c = cur->c + neigh[j].c;
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
      00214C 12 2E 6A         [24]  637 	lcall	__gptrget
      00214F FA               [12]  638 	mov	r2,a
      002150 A3               [24]  639 	inc	dptr
      002151 12 2E 6A         [24]  640 	lcall	__gptrget
      002154 FB               [12]  641 	mov	r3,a
      002155 E5 10            [12]  642 	mov	a,_bp
      002157 24 06            [12]  643 	add	a,#0x06
      002159 F8               [12]  644 	mov	r0,a
      00215A E6               [12]  645 	mov	a,@r0
      00215B 24 F4            [12]  646 	add	a,#_neigh
      00215D FC               [12]  647 	mov	r4,a
      00215E 08               [12]  648 	inc	r0
      00215F E6               [12]  649 	mov	a,@r0
      002160 34 FE            [12]  650 	addc	a,#(_neigh >> 8)
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
      002182 12 2C 5F         [24]  676 	lcall	__gptrput
      002185 A3               [24]  677 	inc	dptr
      002186 EB               [12]  678 	mov	a,r3
      002187 12 2C 5F         [24]  679 	lcall	__gptrput
                                    680 ;	walk.c:101: if (t->r < 0) t->r += ROWS;
      00218A A8 10            [24]  681 	mov	r0,_bp
      00218C 08               [12]  682 	inc	r0
      00218D 86 82            [24]  683 	mov	dpl,@r0
      00218F 08               [12]  684 	inc	r0
      002190 86 83            [24]  685 	mov	dph,@r0
      002192 08               [12]  686 	inc	r0
      002193 86 F0            [24]  687 	mov	b,@r0
      002195 12 2E 6A         [24]  688 	lcall	__gptrget
      002198 FD               [12]  689 	mov	r5,a
      002199 A3               [24]  690 	inc	dptr
      00219A 12 2E 6A         [24]  691 	lcall	__gptrget
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
      0021B5 12 2C 5F         [24]  709 	lcall	__gptrput
      0021B8 A3               [24]  710 	inc	dptr
      0021B9 EE               [12]  711 	mov	a,r6
      0021BA 12 2C 5F         [24]  712 	lcall	__gptrput
      0021BD 80 27            [24]  713 	sjmp	00105$
      0021BF                        714 00104$:
                                    715 ;	walk.c:102: else if (t->r >= ROWS) t->r -= ROWS;
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
      0021DE 12 2C 5F         [24]  737 	lcall	__gptrput
      0021E1 A3               [24]  738 	inc	dptr
      0021E2 EC               [12]  739 	mov	a,r4
      0021E3 12 2C 5F         [24]  740 	lcall	__gptrput
      0021E6                        741 00105$:
                                    742 ;	walk.c:103: if (t->c < 0) t->c += COLS;
      0021E6 E5 10            [12]  743 	mov	a,_bp
      0021E8 24 08            [12]  744 	add	a,#0x08
      0021EA F8               [12]  745 	mov	r0,a
      0021EB 86 82            [24]  746 	mov	dpl,@r0
      0021ED 08               [12]  747 	inc	r0
      0021EE 86 83            [24]  748 	mov	dph,@r0
      0021F0 08               [12]  749 	inc	r0
      0021F1 86 F0            [24]  750 	mov	b,@r0
      0021F3 12 2E 6A         [24]  751 	lcall	__gptrget
      0021F6 A3               [24]  752 	inc	dptr
      0021F7 12 2E 6A         [24]  753 	lcall	__gptrget
      0021FA 30 E7 35         [24]  754 	jnb	acc.7,00109$
      0021FD E5 10            [12]  755 	mov	a,_bp
      0021FF 24 08            [12]  756 	add	a,#0x08
      002201 F8               [12]  757 	mov	r0,a
      002202 86 82            [24]  758 	mov	dpl,@r0
      002204 08               [12]  759 	inc	r0
      002205 86 83            [24]  760 	mov	dph,@r0
      002207 08               [12]  761 	inc	r0
      002208 86 F0            [24]  762 	mov	b,@r0
      00220A 12 2E 6A         [24]  763 	lcall	__gptrget
      00220D FE               [12]  764 	mov	r6,a
      00220E A3               [24]  765 	inc	dptr
      00220F 12 2E 6A         [24]  766 	lcall	__gptrget
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
      002228 12 2C 5F         [24]  783 	lcall	__gptrput
      00222B A3               [24]  784 	inc	dptr
      00222C EF               [12]  785 	mov	a,r7
      00222D 12 2C 5F         [24]  786 	lcall	__gptrput
      002230 80 55            [24]  787 	sjmp	00110$
      002232                        788 00109$:
                                    789 ;	walk.c:104: else if (t->c >= COLS) t->c -= COLS;
      002232 E5 10            [12]  790 	mov	a,_bp
      002234 24 08            [12]  791 	add	a,#0x08
      002236 F8               [12]  792 	mov	r0,a
      002237 86 82            [24]  793 	mov	dpl,@r0
      002239 08               [12]  794 	inc	r0
      00223A 86 83            [24]  795 	mov	dph,@r0
      00223C 08               [12]  796 	inc	r0
      00223D 86 F0            [24]  797 	mov	b,@r0
      00223F 12 2E 6A         [24]  798 	lcall	__gptrget
      002242 FE               [12]  799 	mov	r6,a
      002243 A3               [24]  800 	inc	dptr
      002244 12 2E 6A         [24]  801 	lcall	__gptrget
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
      002260 12 2E 6A         [24]  818 	lcall	__gptrget
      002263 FE               [12]  819 	mov	r6,a
      002264 A3               [24]  820 	inc	dptr
      002265 12 2E 6A         [24]  821 	lcall	__gptrget
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
      00227F 12 2C 5F         [24]  838 	lcall	__gptrput
      002282 A3               [24]  839 	inc	dptr
      002283 EF               [12]  840 	mov	a,r7
      002284 12 2C 5F         [24]  841 	lcall	__gptrput
      002287                        842 00110$:
                                    843 ;	walk.c:106: if (g[t->r][t->c] == 0xaa) return 0;
      002287 A8 10            [24]  844 	mov	r0,_bp
      002289 08               [12]  845 	inc	r0
      00228A 86 82            [24]  846 	mov	dpl,@r0
      00228C 08               [12]  847 	inc	r0
      00228D 86 83            [24]  848 	mov	dph,@r0
      00228F 08               [12]  849 	inc	r0
      002290 86 F0            [24]  850 	mov	b,@r0
      002292 12 2E 6A         [24]  851 	lcall	__gptrget
      002295 FE               [12]  852 	mov	r6,a
      002296 A3               [24]  853 	inc	dptr
      002297 12 2E 6A         [24]  854 	lcall	__gptrget
      00229A FF               [12]  855 	mov	r7,a
      00229B C0 06            [24]  856 	push	ar6
      00229D C0 07            [24]  857 	push	ar7
      00229F 90 00 C9         [24]  858 	mov	dptr,#0x00c9
      0022A2 12 2C 7A         [24]  859 	lcall	__mulint
      0022A5 AE 82            [24]  860 	mov	r6,dpl
      0022A7 AF 83            [24]  861 	mov	r7,dph
      0022A9 15 81            [12]  862 	dec	sp
      0022AB 15 81            [12]  863 	dec	sp
      0022AD EE               [12]  864 	mov	a,r6
      0022AE 24 80            [12]  865 	add	a,#_g
      0022B0 FE               [12]  866 	mov	r6,a
      0022B1 EF               [12]  867 	mov	a,r7
      0022B2 34 42            [12]  868 	addc	a,#(_g >> 8)
      0022B4 FF               [12]  869 	mov	r7,a
      0022B5 E5 10            [12]  870 	mov	a,_bp
      0022B7 24 08            [12]  871 	add	a,#0x08
      0022B9 F8               [12]  872 	mov	r0,a
      0022BA 86 82            [24]  873 	mov	dpl,@r0
      0022BC 08               [12]  874 	inc	r0
      0022BD 86 83            [24]  875 	mov	dph,@r0
      0022BF 08               [12]  876 	inc	r0
      0022C0 86 F0            [24]  877 	mov	b,@r0
      0022C2 12 2E 6A         [24]  878 	lcall	__gptrget
      0022C5 FC               [12]  879 	mov	r4,a
      0022C6 A3               [24]  880 	inc	dptr
      0022C7 12 2E 6A         [24]  881 	lcall	__gptrget
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
      0022D8 90 00 00         [24]  892 	mov	dptr,#0x0000
      0022DB 80 59            [24]  893 	sjmp	00116$
      0022DD                        894 00114$:
                                    895 ;	walk.c:107: else if (g[t->r][t->c] != 0x55) bang();
      0022DD A8 10            [24]  896 	mov	r0,_bp
      0022DF 08               [12]  897 	inc	r0
      0022E0 86 82            [24]  898 	mov	dpl,@r0
      0022E2 08               [12]  899 	inc	r0
      0022E3 86 83            [24]  900 	mov	dph,@r0
      0022E5 08               [12]  901 	inc	r0
      0022E6 86 F0            [24]  902 	mov	b,@r0
      0022E8 12 2E 6A         [24]  903 	lcall	__gptrget
      0022EB FE               [12]  904 	mov	r6,a
      0022EC A3               [24]  905 	inc	dptr
      0022ED 12 2E 6A         [24]  906 	lcall	__gptrget
      0022F0 FF               [12]  907 	mov	r7,a
      0022F1 C0 06            [24]  908 	push	ar6
      0022F3 C0 07            [24]  909 	push	ar7
      0022F5 90 00 C9         [24]  910 	mov	dptr,#0x00c9
      0022F8 12 2C 7A         [24]  911 	lcall	__mulint
      0022FB AE 82            [24]  912 	mov	r6,dpl
      0022FD AF 83            [24]  913 	mov	r7,dph
      0022FF 15 81            [12]  914 	dec	sp
      002301 15 81            [12]  915 	dec	sp
      002303 EE               [12]  916 	mov	a,r6
      002304 24 80            [12]  917 	add	a,#_g
      002306 FE               [12]  918 	mov	r6,a
      002307 EF               [12]  919 	mov	a,r7
      002308 34 42            [12]  920 	addc	a,#(_g >> 8)
      00230A FF               [12]  921 	mov	r7,a
      00230B E5 10            [12]  922 	mov	a,_bp
      00230D 24 08            [12]  923 	add	a,#0x08
      00230F F8               [12]  924 	mov	r0,a
      002310 86 82            [24]  925 	mov	dpl,@r0
      002312 08               [12]  926 	inc	r0
      002313 86 83            [24]  927 	mov	dph,@r0
      002315 08               [12]  928 	inc	r0
      002316 86 F0            [24]  929 	mov	b,@r0
      002318 12 2E 6A         [24]  930 	lcall	__gptrget
      00231B FC               [12]  931 	mov	r4,a
      00231C A3               [24]  932 	inc	dptr
      00231D 12 2E 6A         [24]  933 	lcall	__gptrget
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
                                    948 ;	walk.c:109: return 1;
      002333 90 00 01         [24]  949 	mov	dptr,#0x0001
      002336                        950 00116$:
                                    951 ;	walk.c:110: }
      002336 85 10 81         [24]  952 	mov	sp,_bp
      002339 D0 10            [24]  953 	pop	_bp
      00233B 22               [24]  954 	ret
                                    955 ;------------------------------------------------------------
                                    956 ;Allocation info for local variables in function 'walk'
                                    957 ;------------------------------------------------------------
                                    958 ;nstart                    Allocated to registers 
                                    959 ;cur                       Allocated to stack - _bp +10
                                    960 ;t                         Allocated to stack - _bp +14
                                    961 ;j                         Allocated to stack - _bp +18
                                    962 ;f                         Allocated to registers r3 
                                    963 ;sloc0                     Allocated to stack - _bp +1
                                    964 ;sloc1                     Allocated to stack - _bp +2
                                    965 ;sloc2                     Allocated to stack - _bp +3
                                    966 ;sloc3                     Allocated to stack - _bp +17
                                    967 ;sloc4                     Allocated to stack - _bp +4
                                    968 ;sloc5                     Allocated to stack - _bp +5
                                    969 ;sloc6                     Allocated to stack - _bp +6
                                    970 ;sloc7                     Allocated to stack - _bp +7
                                    971 ;------------------------------------------------------------
                                    972 ;	walk.c:112: static void walk(struct node *nstart) {
                                    973 ;	-----------------------------------------
                                    974 ;	 function walk
                                    975 ;	-----------------------------------------
      00233C                        976 _walk:
      00233C C0 10            [24]  977 	push	_bp
      00233E E5 81            [12]  978 	mov	a,sp
      002340 F5 10            [12]  979 	mov	_bp,a
      002342 24 12            [12]  980 	add	a,#0x12
      002344 F5 81            [12]  981 	mov	sp,a
      002346 AD 82            [24]  982 	mov	r5,dpl
      002348 AE 83            [24]  983 	mov	r6,dph
      00234A AF F0            [24]  984 	mov	r7,b
                                    985 ;	walk.c:116: cur = *nstart;
      00234C E5 10            [12]  986 	mov	a,_bp
      00234E 24 0A            [12]  987 	add	a,#0x0a
      002350 F9               [12]  988 	mov	r1,a
      002351 FA               [12]  989 	mov	r2,a
      002352 7B 00            [12]  990 	mov	r3,#0x00
      002354 7C 40            [12]  991 	mov	r4,#0x40
      002356 C0 01            [24]  992 	push	ar1
      002358 74 04            [12]  993 	mov	a,#0x04
      00235A C0 E0            [24]  994 	push	acc
      00235C E4               [12]  995 	clr	a
      00235D C0 E0            [24]  996 	push	acc
      00235F C0 05            [24]  997 	push	ar5
      002361 C0 06            [24]  998 	push	ar6
      002363 C0 07            [24]  999 	push	ar7
      002365 8A 82            [24] 1000 	mov	dpl,r2
      002367 8B 83            [24] 1001 	mov	dph,r3
      002369 8C F0            [24] 1002 	mov	b,r4
      00236B 12 2D 18         [24] 1003 	lcall	___memcpy
      00236E E5 81            [12] 1004 	mov	a,sp
      002370 24 FB            [12] 1005 	add	a,#0xfb
      002372 F5 81            [12] 1006 	mov	sp,a
      002374 D0 01            [24] 1007 	pop	ar1
                                   1008 ;	walk.c:118: process:
      002376 E5 10            [12] 1009 	mov	a,_bp
      002378 24 06            [12] 1010 	add	a,#0x06
      00237A F8               [12] 1011 	mov	r0,a
      00237B A6 01            [24] 1012 	mov	@r0,ar1
      00237D E5 10            [12] 1013 	mov	a,_bp
      00237F 24 0E            [12] 1014 	add	a,#0x0e
      002381 FE               [12] 1015 	mov	r6,a
      002382 E5 10            [12] 1016 	mov	a,_bp
      002384 24 03            [12] 1017 	add	a,#0x03
      002386 F8               [12] 1018 	mov	r0,a
      002387 A6 01            [24] 1019 	mov	@r0,ar1
      002389 E5 10            [12] 1020 	mov	a,_bp
      00238B 24 05            [12] 1021 	add	a,#0x05
      00238D F8               [12] 1022 	mov	r0,a
      00238E A6 01            [24] 1023 	mov	@r0,ar1
      002390 E5 10            [12] 1024 	mov	a,_bp
      002392 24 04            [12] 1025 	add	a,#0x04
      002394 F8               [12] 1026 	mov	r0,a
      002395 A6 06            [24] 1027 	mov	@r0,ar6
      002397 89 02            [24] 1028 	mov	ar2,r1
      002399 A8 10            [24] 1029 	mov	r0,_bp
      00239B 08               [12] 1030 	inc	r0
      00239C A6 06            [24] 1031 	mov	@r0,ar6
      00239E A8 10            [24] 1032 	mov	r0,_bp
      0023A0 08               [12] 1033 	inc	r0
      0023A1 08               [12] 1034 	inc	r0
      0023A2 A6 01            [24] 1035 	mov	@r0,ar1
      0023A4 74 02            [12] 1036 	mov	a,#0x02
      0023A6 29               [12] 1037 	add	a,r1
      0023A7 F8               [12] 1038 	mov	r0,a
      0023A8                       1039 00101$:
                                   1040 ;	walk.c:119: g[cur.r][cur.c] = 0xaa;
      0023A8 C0 02            [24] 1041 	push	ar2
      0023AA 87 02            [24] 1042 	mov	ar2,@r1
      0023AC 09               [12] 1043 	inc	r1
      0023AD 87 05            [24] 1044 	mov	ar5,@r1
      0023AF 19               [12] 1045 	dec	r1
      0023B0 C0 06            [24] 1046 	push	ar6
      0023B2 C0 01            [24] 1047 	push	ar1
      0023B4 C0 00            [24] 1048 	push	ar0
      0023B6 C0 02            [24] 1049 	push	ar2
      0023B8 C0 05            [24] 1050 	push	ar5
      0023BA 90 00 C9         [24] 1051 	mov	dptr,#0x00c9
      0023BD 12 2C 7A         [24] 1052 	lcall	__mulint
      0023C0 AA 82            [24] 1053 	mov	r2,dpl
      0023C2 AD 83            [24] 1054 	mov	r5,dph
      0023C4 15 81            [12] 1055 	dec	sp
      0023C6 15 81            [12] 1056 	dec	sp
      0023C8 D0 00            [24] 1057 	pop	ar0
      0023CA D0 01            [24] 1058 	pop	ar1
      0023CC EA               [12] 1059 	mov	a,r2
      0023CD 24 80            [12] 1060 	add	a,#_g
      0023CF FF               [12] 1061 	mov	r7,a
      0023D0 ED               [12] 1062 	mov	a,r5
      0023D1 34 42            [12] 1063 	addc	a,#(_g >> 8)
      0023D3 FC               [12] 1064 	mov	r4,a
      0023D4 86 02            [24] 1065 	mov	ar2,@r0
      0023D6 08               [12] 1066 	inc	r0
      0023D7 86 05            [24] 1067 	mov	ar5,@r0
      0023D9 18               [12] 1068 	dec	r0
      0023DA EA               [12] 1069 	mov	a,r2
      0023DB 2F               [12] 1070 	add	a,r7
      0023DC F5 82            [12] 1071 	mov	dpl,a
      0023DE ED               [12] 1072 	mov	a,r5
      0023DF 3C               [12] 1073 	addc	a,r4
      0023E0 F5 83            [12] 1074 	mov	dph,a
      0023E2 74 AA            [12] 1075 	mov	a,#0xaa
      0023E4 F0               [24] 1076 	movx	@dptr,a
                                   1077 ;	walk.c:120: printf("\033[%d;%dHo", cur.r + 4, cur.c + 1);
      0023E5 86 02            [24] 1078 	mov	ar2,@r0
      0023E7 08               [12] 1079 	inc	r0
      0023E8 86 05            [24] 1080 	mov	ar5,@r0
      0023EA 18               [12] 1081 	dec	r0
      0023EB 74 01            [12] 1082 	mov	a,#0x01
      0023ED 2A               [12] 1083 	add	a,r2
      0023EE FF               [12] 1084 	mov	r7,a
      0023EF E4               [12] 1085 	clr	a
      0023F0 3D               [12] 1086 	addc	a,r5
      0023F1 FC               [12] 1087 	mov	r4,a
      0023F2 87 02            [24] 1088 	mov	ar2,@r1
      0023F4 09               [12] 1089 	inc	r1
      0023F5 87 05            [24] 1090 	mov	ar5,@r1
      0023F7 19               [12] 1091 	dec	r1
      0023F8 74 04            [12] 1092 	mov	a,#0x04
      0023FA 2A               [12] 1093 	add	a,r2
      0023FB FA               [12] 1094 	mov	r2,a
      0023FC E4               [12] 1095 	clr	a
      0023FD 3D               [12] 1096 	addc	a,r5
      0023FE FD               [12] 1097 	mov	r5,a
      0023FF C0 02            [24] 1098 	push	ar2
      002401 C0 01            [24] 1099 	push	ar1
      002403 C0 00            [24] 1100 	push	ar0
      002405 C0 07            [24] 1101 	push	ar7
      002407 C0 04            [24] 1102 	push	ar4
      002409 C0 02            [24] 1103 	push	ar2
      00240B C0 05            [24] 1104 	push	ar5
      00240D 74 71            [12] 1105 	mov	a,#___str_1
      00240F C0 E0            [24] 1106 	push	acc
      002411 74 41            [12] 1107 	mov	a,#(___str_1 >> 8)
      002413 C0 E0            [24] 1108 	push	acc
      002415 74 80            [12] 1109 	mov	a,#0x80
      002417 C0 E0            [24] 1110 	push	acc
      002419 12 2E 31         [24] 1111 	lcall	_printf
      00241C E5 81            [12] 1112 	mov	a,sp
      00241E 24 F9            [12] 1113 	add	a,#0xf9
      002420 F5 81            [12] 1114 	mov	sp,a
                                   1115 ;	walk.c:121: flashOE(OE76_MASK7);
      002422 75 82 80         [24] 1116 	mov	dpl,#0x80
      002425 12 20 8E         [24] 1117 	lcall	_flashOE
      002428 D0 00            [24] 1118 	pop	ar0
      00242A D0 01            [24] 1119 	pop	ar1
      00242C D0 02            [24] 1120 	pop	ar2
      00242E D0 06            [24] 1121 	pop	ar6
                                   1122 ;	walk.c:146: return;
      002430 D0 02            [24] 1123 	pop	ar2
                                   1124 ;	walk.c:123: next:
      002432                       1125 00102$:
                                   1126 ;	walk.c:124: printf("\033[2;1H% 8d% 8d% 8d", sp, cur.r, cur.c);
      002432 C0 02            [24] 1127 	push	ar2
      002434 86 07            [24] 1128 	mov	ar7,@r0
      002436 08               [12] 1129 	inc	r0
      002437 86 04            [24] 1130 	mov	ar4,@r0
      002439 18               [12] 1131 	dec	r0
      00243A 87 02            [24] 1132 	mov	ar2,@r1
      00243C 09               [12] 1133 	inc	r1
      00243D 87 05            [24] 1134 	mov	ar5,@r1
      00243F 19               [12] 1135 	dec	r1
      002440 C0 06            [24] 1136 	push	ar6
      002442 C0 02            [24] 1137 	push	ar2
      002444 C0 01            [24] 1138 	push	ar1
      002446 C0 00            [24] 1139 	push	ar0
      002448 C0 07            [24] 1140 	push	ar7
      00244A C0 04            [24] 1141 	push	ar4
      00244C C0 02            [24] 1142 	push	ar2
      00244E C0 05            [24] 1143 	push	ar5
      002450 90 FE F0         [24] 1144 	mov	dptr,#_sp
      002453 E0               [24] 1145 	movx	a,@dptr
      002454 C0 E0            [24] 1146 	push	acc
      002456 A3               [24] 1147 	inc	dptr
      002457 E0               [24] 1148 	movx	a,@dptr
      002458 C0 E0            [24] 1149 	push	acc
      00245A 74 7B            [12] 1150 	mov	a,#___str_2
      00245C C0 E0            [24] 1151 	push	acc
      00245E 74 41            [12] 1152 	mov	a,#(___str_2 >> 8)
      002460 C0 E0            [24] 1153 	push	acc
      002462 74 80            [12] 1154 	mov	a,#0x80
      002464 C0 E0            [24] 1155 	push	acc
      002466 12 2E 31         [24] 1156 	lcall	_printf
      002469 E5 81            [12] 1157 	mov	a,sp
      00246B 24 F7            [12] 1158 	add	a,#0xf7
      00246D F5 81            [12] 1159 	mov	sp,a
      00246F D0 00            [24] 1160 	pop	ar0
      002471 D0 01            [24] 1161 	pop	ar1
      002473 D0 02            [24] 1162 	pop	ar2
      002475 D0 06            [24] 1163 	pop	ar6
                                   1164 ;	walk.c:126: for (j = 0, f = 0; j < NMAX; j++) {
      002477 7B 00            [12] 1165 	mov	r3,#0x00
      002479 C0 00            [24] 1166 	push	ar0
      00247B E5 10            [12] 1167 	mov	a,_bp
      00247D 24 12            [12] 1168 	add	a,#0x12
      00247F F8               [12] 1169 	mov	r0,a
      002480 76 00            [12] 1170 	mov	@r0,#0x00
      002482 D0 00            [24] 1171 	pop	ar0
                                   1172 ;	walk.c:146: return;
      002484 D0 02            [24] 1173 	pop	ar2
                                   1174 ;	walk.c:126: for (j = 0, f = 0; j < NMAX; j++) {
      002486                       1175 00119$:
      002486 C0 00            [24] 1176 	push	ar0
      002488 E5 10            [12] 1177 	mov	a,_bp
      00248A 24 12            [12] 1178 	add	a,#0x12
      00248C F8               [12] 1179 	mov	r0,a
      00248D B6 10 00         [24] 1180 	cjne	@r0,#0x10,00159$
      002490                       1181 00159$:
      002490 D0 00            [24] 1182 	pop	ar0
      002492 40 03            [24] 1183 	jc	00160$
      002494 02 25 14         [24] 1184 	ljmp	00106$
      002497                       1185 00160$:
                                   1186 ;	walk.c:127: if (!update(&t, &cur, j)) continue;
      002497 C0 02            [24] 1187 	push	ar2
      002499 C0 00            [24] 1188 	push	ar0
      00249B E5 10            [12] 1189 	mov	a,_bp
      00249D 24 06            [12] 1190 	add	a,#0x06
      00249F F8               [12] 1191 	mov	r0,a
      0024A0 C0 01            [24] 1192 	push	ar1
      0024A2 E5 10            [12] 1193 	mov	a,_bp
      0024A4 24 07            [12] 1194 	add	a,#0x07
      0024A6 F9               [12] 1195 	mov	r1,a
      0024A7 E6               [12] 1196 	mov	a,@r0
      0024A8 F7               [12] 1197 	mov	@r1,a
      0024A9 09               [12] 1198 	inc	r1
      0024AA 77 00            [12] 1199 	mov	@r1,#0x00
      0024AC 09               [12] 1200 	inc	r1
      0024AD 77 40            [12] 1201 	mov	@r1,#0x40
      0024AF D0 01            [24] 1202 	pop	ar1
      0024B1 D0 00            [24] 1203 	pop	ar0
      0024B3 8E 04            [24] 1204 	mov	ar4,r6
      0024B5 7D 00            [12] 1205 	mov	r5,#0x00
      0024B7 7F 40            [12] 1206 	mov	r7,#0x40
      0024B9 C0 06            [24] 1207 	push	ar6
      0024BB C0 03            [24] 1208 	push	ar3
      0024BD C0 02            [24] 1209 	push	ar2
      0024BF C0 01            [24] 1210 	push	ar1
      0024C1 C0 00            [24] 1211 	push	ar0
      0024C3 85 00 F0         [24] 1212 	mov	b,ar0
      0024C6 E5 10            [12] 1213 	mov	a,_bp
      0024C8 24 12            [12] 1214 	add	a,#0x12
      0024CA F8               [12] 1215 	mov	r0,a
      0024CB E6               [12] 1216 	mov	a,@r0
      0024CC C0 E0            [24] 1217 	push	acc
      0024CE A8 F0            [24] 1218 	mov	r0,b
      0024D0 85 00 F0         [24] 1219 	mov	b,ar0
      0024D3 E5 10            [12] 1220 	mov	a,_bp
      0024D5 24 07            [12] 1221 	add	a,#0x07
      0024D7 F8               [12] 1222 	mov	r0,a
      0024D8 E6               [12] 1223 	mov	a,@r0
      0024D9 C0 E0            [24] 1224 	push	acc
      0024DB 08               [12] 1225 	inc	r0
      0024DC E6               [12] 1226 	mov	a,@r0
      0024DD C0 E0            [24] 1227 	push	acc
      0024DF 08               [12] 1228 	inc	r0
      0024E0 E6               [12] 1229 	mov	a,@r0
      0024E1 C0 E0            [24] 1230 	push	acc
      0024E3 8C 82            [24] 1231 	mov	dpl,r4
      0024E5 8D 83            [24] 1232 	mov	dph,r5
      0024E7 8F F0            [24] 1233 	mov	b,r7
      0024E9 12 20 AF         [24] 1234 	lcall	_update
      0024EC AD 82            [24] 1235 	mov	r5,dpl
      0024EE AF 83            [24] 1236 	mov	r7,dph
      0024F0 E5 81            [12] 1237 	mov	a,sp
      0024F2 24 FC            [12] 1238 	add	a,#0xfc
      0024F4 F5 81            [12] 1239 	mov	sp,a
      0024F6 D0 00            [24] 1240 	pop	ar0
      0024F8 D0 01            [24] 1241 	pop	ar1
      0024FA D0 02            [24] 1242 	pop	ar2
      0024FC D0 03            [24] 1243 	pop	ar3
      0024FE D0 06            [24] 1244 	pop	ar6
      002500 D0 02            [24] 1245 	pop	ar2
      002502 ED               [12] 1246 	mov	a,r5
      002503 4F               [12] 1247 	orl	a,r7
      002504 60 01            [24] 1248 	jz	00105$
                                   1249 ;	walk.c:128: f++;
      002506 0B               [12] 1250 	inc	r3
      002507                       1251 00105$:
                                   1252 ;	walk.c:126: for (j = 0, f = 0; j < NMAX; j++) {
      002507 C0 00            [24] 1253 	push	ar0
      002509 E5 10            [12] 1254 	mov	a,_bp
      00250B 24 12            [12] 1255 	add	a,#0x12
      00250D F8               [12] 1256 	mov	r0,a
      00250E 06               [12] 1257 	inc	@r0
      00250F D0 00            [24] 1258 	pop	ar0
      002511 02 24 86         [24] 1259 	ljmp	00119$
      002514                       1260 00106$:
                                   1261 ;	walk.c:131: if (f) {
      002514 EB               [12] 1262 	mov	a,r3
      002515 70 03            [24] 1263 	jnz	00162$
      002517 02 26 4C         [24] 1264 	ljmp	00115$
      00251A                       1265 00162$:
                                   1266 ;	walk.c:132: while (1) {
      00251A                       1267 00112$:
                                   1268 ;	walk.c:133: j = rand() % NMAX;
      00251A C0 02            [24] 1269 	push	ar2
      00251C C0 06            [24] 1270 	push	ar6
      00251E C0 02            [24] 1271 	push	ar2
      002520 C0 01            [24] 1272 	push	ar1
      002522 C0 00            [24] 1273 	push	ar0
      002524 12 2B 82         [24] 1274 	lcall	_rand
      002527 AD 82            [24] 1275 	mov	r5,dpl
      002529 AF 83            [24] 1276 	mov	r7,dph
      00252B 74 10            [12] 1277 	mov	a,#0x10
      00252D C0 E0            [24] 1278 	push	acc
      00252F E4               [12] 1279 	clr	a
      002530 C0 E0            [24] 1280 	push	acc
      002532 8D 82            [24] 1281 	mov	dpl,r5
      002534 8F 83            [24] 1282 	mov	dph,r7
      002536 12 2E 86         [24] 1283 	lcall	__modsint
      002539 AD 82            [24] 1284 	mov	r5,dpl
      00253B 15 81            [12] 1285 	dec	sp
      00253D 15 81            [12] 1286 	dec	sp
      00253F D0 00            [24] 1287 	pop	ar0
      002541 D0 01            [24] 1288 	pop	ar1
      002543 D0 02            [24] 1289 	pop	ar2
      002545 D0 06            [24] 1290 	pop	ar6
      002547 8D 04            [24] 1291 	mov	ar4,r5
                                   1292 ;	walk.c:134: if (!update(&t, &cur, j)) continue;
      002549 C0 00            [24] 1293 	push	ar0
      00254B E5 10            [12] 1294 	mov	a,_bp
      00254D 24 05            [12] 1295 	add	a,#0x05
      00254F F8               [12] 1296 	mov	r0,a
      002550 C0 01            [24] 1297 	push	ar1
      002552 E5 10            [12] 1298 	mov	a,_bp
      002554 24 07            [12] 1299 	add	a,#0x07
      002556 F9               [12] 1300 	mov	r1,a
      002557 E6               [12] 1301 	mov	a,@r0
      002558 F7               [12] 1302 	mov	@r1,a
      002559 09               [12] 1303 	inc	r1
      00255A 77 00            [12] 1304 	mov	@r1,#0x00
      00255C 09               [12] 1305 	inc	r1
      00255D 77 40            [12] 1306 	mov	@r1,#0x40
      00255F D0 01            [24] 1307 	pop	ar1
      002561 E5 10            [12] 1308 	mov	a,_bp
      002563 24 04            [12] 1309 	add	a,#0x04
      002565 F8               [12] 1310 	mov	r0,a
      002566 86 02            [24] 1311 	mov	ar2,@r0
      002568 7D 00            [12] 1312 	mov	r5,#0x00
      00256A 7F 40            [12] 1313 	mov	r7,#0x40
      00256C D0 00            [24] 1314 	pop	ar0
      00256E C0 06            [24] 1315 	push	ar6
      002570 C0 02            [24] 1316 	push	ar2
      002572 C0 01            [24] 1317 	push	ar1
      002574 C0 00            [24] 1318 	push	ar0
      002576 C0 04            [24] 1319 	push	ar4
      002578 85 00 F0         [24] 1320 	mov	b,ar0
      00257B E5 10            [12] 1321 	mov	a,_bp
      00257D 24 07            [12] 1322 	add	a,#0x07
      00257F F8               [12] 1323 	mov	r0,a
      002580 E6               [12] 1324 	mov	a,@r0
      002581 C0 E0            [24] 1325 	push	acc
      002583 08               [12] 1326 	inc	r0
      002584 E6               [12] 1327 	mov	a,@r0
      002585 C0 E0            [24] 1328 	push	acc
      002587 08               [12] 1329 	inc	r0
      002588 E6               [12] 1330 	mov	a,@r0
      002589 C0 E0            [24] 1331 	push	acc
      00258B 8A 82            [24] 1332 	mov	dpl,r2
      00258D 8D 83            [24] 1333 	mov	dph,r5
      00258F 8F F0            [24] 1334 	mov	b,r7
      002591 12 20 AF         [24] 1335 	lcall	_update
      002594 AD 82            [24] 1336 	mov	r5,dpl
      002596 AF 83            [24] 1337 	mov	r7,dph
      002598 E5 81            [12] 1338 	mov	a,sp
      00259A 24 FC            [12] 1339 	add	a,#0xfc
      00259C F5 81            [12] 1340 	mov	sp,a
      00259E D0 00            [24] 1341 	pop	ar0
      0025A0 D0 01            [24] 1342 	pop	ar1
      0025A2 D0 02            [24] 1343 	pop	ar2
      0025A4 D0 06            [24] 1344 	pop	ar6
      0025A6 D0 02            [24] 1345 	pop	ar2
      0025A8 ED               [12] 1346 	mov	a,r5
      0025A9 4F               [12] 1347 	orl	a,r7
      0025AA 70 03            [24] 1348 	jnz	00163$
      0025AC 02 25 1A         [24] 1349 	ljmp	00112$
      0025AF                       1350 00163$:
                                   1351 ;	walk.c:135: if (!stpush(&cur)) bang();
      0025AF 8A 04            [24] 1352 	mov	ar4,r2
      0025B1 7D 00            [12] 1353 	mov	r5,#0x00
      0025B3 7F 40            [12] 1354 	mov	r7,#0x40
      0025B5 8C 82            [24] 1355 	mov	dpl,r4
      0025B7 8D 83            [24] 1356 	mov	dph,r5
      0025B9 8F F0            [24] 1357 	mov	b,r7
      0025BB C0 06            [24] 1358 	push	ar6
      0025BD C0 02            [24] 1359 	push	ar2
      0025BF C0 01            [24] 1360 	push	ar1
      0025C1 C0 00            [24] 1361 	push	ar0
      0025C3 12 2A BF         [24] 1362 	lcall	_stpush
      0025C6 E5 82            [12] 1363 	mov	a,dpl
      0025C8 85 83 F0         [24] 1364 	mov	b,dph
      0025CB D0 00            [24] 1365 	pop	ar0
      0025CD D0 01            [24] 1366 	pop	ar1
      0025CF D0 02            [24] 1367 	pop	ar2
      0025D1 D0 06            [24] 1368 	pop	ar6
      0025D3 45 F0            [12] 1369 	orl	a,b
      0025D5 70 13            [24] 1370 	jnz	00110$
      0025D7 C0 06            [24] 1371 	push	ar6
      0025D9 C0 02            [24] 1372 	push	ar2
      0025DB C0 01            [24] 1373 	push	ar1
      0025DD C0 00            [24] 1374 	push	ar0
      0025DF 12 20 82         [24] 1375 	lcall	_bang
      0025E2 D0 00            [24] 1376 	pop	ar0
      0025E4 D0 01            [24] 1377 	pop	ar1
      0025E6 D0 02            [24] 1378 	pop	ar2
      0025E8 D0 06            [24] 1379 	pop	ar6
      0025EA                       1380 00110$:
                                   1381 ;	walk.c:136: cur = t;
      0025EA C0 02            [24] 1382 	push	ar2
      0025EC C0 00            [24] 1383 	push	ar0
      0025EE A8 10            [24] 1384 	mov	r0,_bp
      0025F0 08               [12] 1385 	inc	r0
      0025F1 C0 01            [24] 1386 	push	ar1
      0025F3 E5 10            [12] 1387 	mov	a,_bp
      0025F5 24 07            [12] 1388 	add	a,#0x07
      0025F7 F9               [12] 1389 	mov	r1,a
      0025F8 E6               [12] 1390 	mov	a,@r0
      0025F9 F7               [12] 1391 	mov	@r1,a
      0025FA 09               [12] 1392 	inc	r1
      0025FB 77 00            [12] 1393 	mov	@r1,#0x00
      0025FD 09               [12] 1394 	inc	r1
      0025FE 77 40            [12] 1395 	mov	@r1,#0x40
      002600 D0 01            [24] 1396 	pop	ar1
      002602 A8 10            [24] 1397 	mov	r0,_bp
      002604 08               [12] 1398 	inc	r0
      002605 08               [12] 1399 	inc	r0
      002606 86 02            [24] 1400 	mov	ar2,@r0
      002608 7B 00            [12] 1401 	mov	r3,#0x00
      00260A 7F 40            [12] 1402 	mov	r7,#0x40
      00260C D0 00            [24] 1403 	pop	ar0
      00260E C0 06            [24] 1404 	push	ar6
      002610 C0 02            [24] 1405 	push	ar2
      002612 C0 01            [24] 1406 	push	ar1
      002614 C0 00            [24] 1407 	push	ar0
      002616 74 04            [12] 1408 	mov	a,#0x04
      002618 C0 E0            [24] 1409 	push	acc
      00261A E4               [12] 1410 	clr	a
      00261B C0 E0            [24] 1411 	push	acc
      00261D 85 00 F0         [24] 1412 	mov	b,ar0
      002620 E5 10            [12] 1413 	mov	a,_bp
      002622 24 07            [12] 1414 	add	a,#0x07
      002624 F8               [12] 1415 	mov	r0,a
      002625 E6               [12] 1416 	mov	a,@r0
      002626 C0 E0            [24] 1417 	push	acc
      002628 08               [12] 1418 	inc	r0
      002629 E6               [12] 1419 	mov	a,@r0
      00262A C0 E0            [24] 1420 	push	acc
      00262C 08               [12] 1421 	inc	r0
      00262D E6               [12] 1422 	mov	a,@r0
      00262E C0 E0            [24] 1423 	push	acc
      002630 8A 82            [24] 1424 	mov	dpl,r2
      002632 8B 83            [24] 1425 	mov	dph,r3
      002634 8F F0            [24] 1426 	mov	b,r7
      002636 12 2D 18         [24] 1427 	lcall	___memcpy
      002639 E5 81            [12] 1428 	mov	a,sp
      00263B 24 FB            [12] 1429 	add	a,#0xfb
      00263D F5 81            [12] 1430 	mov	sp,a
      00263F D0 00            [24] 1431 	pop	ar0
      002641 D0 01            [24] 1432 	pop	ar1
      002643 D0 02            [24] 1433 	pop	ar2
      002645 D0 06            [24] 1434 	pop	ar6
                                   1435 ;	walk.c:137: goto process;
      002647 D0 02            [24] 1436 	pop	ar2
      002649 02 23 A8         [24] 1437 	ljmp	00101$
      00264C                       1438 00115$:
                                   1439 ;	walk.c:141: printf("\033[%d;%dH.", cur.r + 4, cur.c + 1);
      00264C 86 05            [24] 1440 	mov	ar5,@r0
      00264E 08               [12] 1441 	inc	r0
      00264F 86 07            [24] 1442 	mov	ar7,@r0
      002651 18               [12] 1443 	dec	r0
      002652 0D               [12] 1444 	inc	r5
      002653 BD 00 01         [24] 1445 	cjne	r5,#0x00,00165$
      002656 0F               [12] 1446 	inc	r7
      002657                       1447 00165$:
      002657 87 03            [24] 1448 	mov	ar3,@r1
      002659 09               [12] 1449 	inc	r1
      00265A 87 04            [24] 1450 	mov	ar4,@r1
      00265C 19               [12] 1451 	dec	r1
      00265D 74 04            [12] 1452 	mov	a,#0x04
      00265F 2B               [12] 1453 	add	a,r3
      002660 FB               [12] 1454 	mov	r3,a
      002661 E4               [12] 1455 	clr	a
      002662 3C               [12] 1456 	addc	a,r4
      002663 FC               [12] 1457 	mov	r4,a
      002664 C0 06            [24] 1458 	push	ar6
      002666 C0 02            [24] 1459 	push	ar2
      002668 C0 01            [24] 1460 	push	ar1
      00266A C0 00            [24] 1461 	push	ar0
      00266C C0 05            [24] 1462 	push	ar5
      00266E C0 07            [24] 1463 	push	ar7
      002670 C0 03            [24] 1464 	push	ar3
      002672 C0 04            [24] 1465 	push	ar4
      002674 74 8E            [12] 1466 	mov	a,#___str_3
      002676 C0 E0            [24] 1467 	push	acc
      002678 74 41            [12] 1468 	mov	a,#(___str_3 >> 8)
      00267A C0 E0            [24] 1469 	push	acc
      00267C 74 80            [12] 1470 	mov	a,#0x80
      00267E C0 E0            [24] 1471 	push	acc
      002680 12 2E 31         [24] 1472 	lcall	_printf
      002683 E5 81            [12] 1473 	mov	a,sp
      002685 24 F9            [12] 1474 	add	a,#0xf9
      002687 F5 81            [12] 1475 	mov	sp,a
                                   1476 ;	walk.c:142: flashOE(OE76_MASK6);
      002689 75 82 40         [24] 1477 	mov	dpl,#0x40
      00268C 12 20 8E         [24] 1478 	lcall	_flashOE
      00268F D0 00            [24] 1479 	pop	ar0
      002691 D0 01            [24] 1480 	pop	ar1
      002693 D0 02            [24] 1481 	pop	ar2
      002695 D0 06            [24] 1482 	pop	ar6
                                   1483 ;	walk.c:144: if (stpop(&cur)) goto next;
      002697 C0 00            [24] 1484 	push	ar0
      002699 E5 10            [12] 1485 	mov	a,_bp
      00269B 24 03            [12] 1486 	add	a,#0x03
      00269D F8               [12] 1487 	mov	r0,a
      00269E 86 04            [24] 1488 	mov	ar4,@r0
      0026A0 7D 00            [12] 1489 	mov	r5,#0x00
      0026A2 7F 40            [12] 1490 	mov	r7,#0x40
      0026A4 D0 00            [24] 1491 	pop	ar0
      0026A6 8C 82            [24] 1492 	mov	dpl,r4
      0026A8 8D 83            [24] 1493 	mov	dph,r5
      0026AA 8F F0            [24] 1494 	mov	b,r7
      0026AC C0 06            [24] 1495 	push	ar6
      0026AE C0 02            [24] 1496 	push	ar2
      0026B0 C0 01            [24] 1497 	push	ar1
      0026B2 C0 00            [24] 1498 	push	ar0
      0026B4 12 2B 20         [24] 1499 	lcall	_stpop
      0026B7 E5 82            [12] 1500 	mov	a,dpl
      0026B9 85 83 F0         [24] 1501 	mov	b,dph
      0026BC D0 00            [24] 1502 	pop	ar0
      0026BE D0 01            [24] 1503 	pop	ar1
      0026C0 D0 02            [24] 1504 	pop	ar2
      0026C2 D0 06            [24] 1505 	pop	ar6
      0026C4 45 F0            [12] 1506 	orl	a,b
      0026C6 60 03            [24] 1507 	jz	00166$
      0026C8 02 24 32         [24] 1508 	ljmp	00102$
      0026CB                       1509 00166$:
                                   1510 ;	walk.c:146: return;
                                   1511 ;	walk.c:147: }
      0026CB 85 10 81         [24] 1512 	mov	sp,_bp
      0026CE D0 10            [24] 1513 	pop	_bp
      0026D0 22               [24] 1514 	ret
                                   1515 ;------------------------------------------------------------
                                   1516 ;Allocation info for local variables in function 'main'
                                   1517 ;------------------------------------------------------------
                                   1518 ;initial                   Allocated to stack - _bp +7
                                   1519 ;N                         Allocated to stack - _bp +11
                                   1520 ;i                         Allocated to stack - _bp +5
                                   1521 ;j                         Allocated to registers r2 r6 
                                   1522 ;sloc0                     Allocated to stack - _bp +1
                                   1523 ;sloc1                     Allocated to stack - _bp +3
                                   1524 ;sloc2                     Allocated to stack - _bp +15
                                   1525 ;------------------------------------------------------------
                                   1526 ;	walk.c:149: int main(void) {
                                   1527 ;	-----------------------------------------
                                   1528 ;	 function main
                                   1529 ;	-----------------------------------------
      0026D1                       1530 _main:
      0026D1 C0 10            [24] 1531 	push	_bp
      0026D3 E5 81            [12] 1532 	mov	a,sp
      0026D5 F5 10            [12] 1533 	mov	_bp,a
      0026D7 24 0C            [12] 1534 	add	a,#0x0c
      0026D9 F5 81            [12] 1535 	mov	sp,a
                                   1536 ;	walk.c:154: i0 = 1u;
      0026DB 78 11            [12] 1537 	mov	r0,#_i0
      0026DD 76 01            [12] 1538 	mov	@r0,#0x01
                                   1539 ;	walk.c:156: P1_7 = 1;
                                   1540 ;	assignBit
      0026DF D2 97            [12] 1541 	setb	_P1_7
                                   1542 ;	walk.c:157: IT0 = 1;
                                   1543 ;	assignBit
      0026E1 D2 88            [12] 1544 	setb	_IT0
                                   1545 ;	walk.c:158: EX0 = 1;
                                   1546 ;	assignBit
      0026E3 D2 A8            [12] 1547 	setb	_EX0
                                   1548 ;	walk.c:159: EA = 1;
                                   1549 ;	assignBit
      0026E5 D2 AF            [12] 1550 	setb	_EA
                                   1551 ;	walk.c:161: srand(*R);
      0026E7 90 FE F2         [24] 1552 	mov	dptr,#_R
      0026EA E0               [24] 1553 	movx	a,@dptr
      0026EB FE               [12] 1554 	mov	r6,a
      0026EC A3               [24] 1555 	inc	dptr
      0026ED E0               [24] 1556 	movx	a,@dptr
      0026EE FF               [12] 1557 	mov	r7,a
      0026EF 8E 82            [24] 1558 	mov	dpl,r6
      0026F1 8F 83            [24] 1559 	mov	dph,r7
      0026F3 E0               [24] 1560 	movx	a,@dptr
      0026F4 FE               [12] 1561 	mov	r6,a
      0026F5 A3               [24] 1562 	inc	dptr
      0026F6 E0               [24] 1563 	movx	a,@dptr
      0026F7 FF               [12] 1564 	mov	r7,a
      0026F8 8E 82            [24] 1565 	mov	dpl,r6
      0026FA 8F 83            [24] 1566 	mov	dph,r7
      0026FC 12 2C 46         [24] 1567 	lcall	_srand
                                   1568 ;	walk.c:162: stinit();
      0026FF 12 2A B6         [24] 1569 	lcall	_stinit
                                   1570 ;	walk.c:164: puts("\033[2J\033[?25l");
      002702 90 41 98         [24] 1571 	mov	dptr,#___str_4
      002705 75 F0 80         [24] 1572 	mov	b,#0x80
      002708 12 2D AB         [24] 1573 	lcall	_puts
                                   1574 ;	walk.c:166: while (i0) {
      00270B E5 10            [12] 1575 	mov	a,_bp
      00270D 24 07            [12] 1576 	add	a,#0x07
      00270F F9               [12] 1577 	mov	r1,a
      002710 FF               [12] 1578 	mov	r7,a
      002711 E5 10            [12] 1579 	mov	a,_bp
      002713 24 0B            [12] 1580 	add	a,#0x0b
      002715 F8               [12] 1581 	mov	r0,a
      002716 E4               [12] 1582 	clr	a
      002717 F6               [12] 1583 	mov	@r0,a
      002718 08               [12] 1584 	inc	r0
      002719 F6               [12] 1585 	mov	@r0,a
      00271A                       1586 00108$:
      00271A 78 11            [12] 1587 	mov	r0,#_i0
      00271C E6               [12] 1588 	mov	a,@r0
      00271D 70 03            [24] 1589 	jnz	00181$
      00271F 02 2A 9F         [24] 1590 	ljmp	00110$
      002722                       1591 00181$:
                                   1592 ;	walk.c:167: for (i = 0; i < ROWS; i++)
      002722 7B 00            [12] 1593 	mov	r3,#0x00
      002724 7C 00            [12] 1594 	mov	r4,#0x00
      002726 A8 10            [24] 1595 	mov	r0,_bp
      002728 08               [12] 1596 	inc	r0
      002729 E4               [12] 1597 	clr	a
      00272A F6               [12] 1598 	mov	@r0,a
      00272B 08               [12] 1599 	inc	r0
      00272C F6               [12] 1600 	mov	@r0,a
                                   1601 ;	walk.c:168: for (j = 0; j < COLS; j++)
      00272D                       1602 00124$:
      00272D A8 10            [24] 1603 	mov	r0,_bp
      00272F 08               [12] 1604 	inc	r0
      002730 C0 01            [24] 1605 	push	ar1
      002732 E5 10            [12] 1606 	mov	a,_bp
      002734 24 03            [12] 1607 	add	a,#0x03
      002736 F9               [12] 1608 	mov	r1,a
      002737 E6               [12] 1609 	mov	a,@r0
      002738 24 80            [12] 1610 	add	a,#_g
      00273A F7               [12] 1611 	mov	@r1,a
      00273B 08               [12] 1612 	inc	r0
      00273C E6               [12] 1613 	mov	a,@r0
      00273D 34 42            [12] 1614 	addc	a,#(_g >> 8)
      00273F 09               [12] 1615 	inc	r1
      002740 F7               [12] 1616 	mov	@r1,a
      002741 D0 01            [24] 1617 	pop	ar1
      002743 7A 00            [12] 1618 	mov	r2,#0x00
      002745 7E 00            [12] 1619 	mov	r6,#0x00
      002747                       1620 00111$:
                                   1621 ;	walk.c:169: g[i][j] = 0x55;
      002747 E5 10            [12] 1622 	mov	a,_bp
      002749 24 03            [12] 1623 	add	a,#0x03
      00274B F8               [12] 1624 	mov	r0,a
      00274C EA               [12] 1625 	mov	a,r2
      00274D 26               [12] 1626 	add	a,@r0
      00274E F5 82            [12] 1627 	mov	dpl,a
      002750 EE               [12] 1628 	mov	a,r6
      002751 08               [12] 1629 	inc	r0
      002752 36               [12] 1630 	addc	a,@r0
      002753 F5 83            [12] 1631 	mov	dph,a
      002755 74 55            [12] 1632 	mov	a,#0x55
      002757 F0               [24] 1633 	movx	@dptr,a
                                   1634 ;	walk.c:168: for (j = 0; j < COLS; j++)
      002758 0A               [12] 1635 	inc	r2
      002759 BA 00 01         [24] 1636 	cjne	r2,#0x00,00182$
      00275C 0E               [12] 1637 	inc	r6
      00275D                       1638 00182$:
      00275D C3               [12] 1639 	clr	c
      00275E EA               [12] 1640 	mov	a,r2
      00275F 94 C9            [12] 1641 	subb	a,#0xc9
      002761 EE               [12] 1642 	mov	a,r6
      002762 64 80            [12] 1643 	xrl	a,#0x80
      002764 94 80            [12] 1644 	subb	a,#0x80
      002766 40 DF            [24] 1645 	jc	00111$
                                   1646 ;	walk.c:167: for (i = 0; i < ROWS; i++)
      002768 A8 10            [24] 1647 	mov	r0,_bp
      00276A 08               [12] 1648 	inc	r0
      00276B 74 C9            [12] 1649 	mov	a,#0xc9
      00276D 26               [12] 1650 	add	a,@r0
      00276E F6               [12] 1651 	mov	@r0,a
      00276F E4               [12] 1652 	clr	a
      002770 08               [12] 1653 	inc	r0
      002771 36               [12] 1654 	addc	a,@r0
      002772 F6               [12] 1655 	mov	@r0,a
      002773 0B               [12] 1656 	inc	r3
      002774 BB 00 01         [24] 1657 	cjne	r3,#0x00,00184$
      002777 0C               [12] 1658 	inc	r4
      002778                       1659 00184$:
      002778 C3               [12] 1660 	clr	c
      002779 EB               [12] 1661 	mov	a,r3
      00277A 94 30            [12] 1662 	subb	a,#0x30
      00277C EC               [12] 1663 	mov	a,r4
      00277D 64 80            [12] 1664 	xrl	a,#0x80
      00277F 94 80            [12] 1665 	subb	a,#0x80
      002781 40 AA            [24] 1666 	jc	00124$
                                   1667 ;	walk.c:171: initial.r = rand() % ROWS;
      002783 E5 10            [12] 1668 	mov	a,_bp
      002785 24 07            [12] 1669 	add	a,#0x07
      002787 F8               [12] 1670 	mov	r0,a
      002788 C0 07            [24] 1671 	push	ar7
      00278A C0 01            [24] 1672 	push	ar1
      00278C C0 00            [24] 1673 	push	ar0
      00278E 12 2B 82         [24] 1674 	lcall	_rand
      002791 AD 82            [24] 1675 	mov	r5,dpl
      002793 AE 83            [24] 1676 	mov	r6,dph
      002795 74 30            [12] 1677 	mov	a,#0x30
      002797 C0 E0            [24] 1678 	push	acc
      002799 E4               [12] 1679 	clr	a
      00279A C0 E0            [24] 1680 	push	acc
      00279C 8D 82            [24] 1681 	mov	dpl,r5
      00279E 8E 83            [24] 1682 	mov	dph,r6
      0027A0 12 2E 86         [24] 1683 	lcall	__modsint
      0027A3 AD 82            [24] 1684 	mov	r5,dpl
      0027A5 AE 83            [24] 1685 	mov	r6,dph
      0027A7 15 81            [12] 1686 	dec	sp
      0027A9 15 81            [12] 1687 	dec	sp
      0027AB D0 00            [24] 1688 	pop	ar0
      0027AD D0 01            [24] 1689 	pop	ar1
      0027AF A6 05            [24] 1690 	mov	@r0,ar5
      0027B1 08               [12] 1691 	inc	r0
      0027B2 A6 06            [24] 1692 	mov	@r0,ar6
      0027B4 18               [12] 1693 	dec	r0
                                   1694 ;	walk.c:172: initial.c = rand() % COLS;
      0027B5 74 02            [12] 1695 	mov	a,#0x02
      0027B7 29               [12] 1696 	add	a,r1
      0027B8 F8               [12] 1697 	mov	r0,a
      0027B9 C0 01            [24] 1698 	push	ar1
      0027BB C0 00            [24] 1699 	push	ar0
      0027BD 12 2B 82         [24] 1700 	lcall	_rand
      0027C0 AD 82            [24] 1701 	mov	r5,dpl
      0027C2 AE 83            [24] 1702 	mov	r6,dph
      0027C4 74 C9            [12] 1703 	mov	a,#0xc9
      0027C6 C0 E0            [24] 1704 	push	acc
      0027C8 E4               [12] 1705 	clr	a
      0027C9 C0 E0            [24] 1706 	push	acc
      0027CB 8D 82            [24] 1707 	mov	dpl,r5
      0027CD 8E 83            [24] 1708 	mov	dph,r6
      0027CF 12 2E 86         [24] 1709 	lcall	__modsint
      0027D2 AD 82            [24] 1710 	mov	r5,dpl
      0027D4 AE 83            [24] 1711 	mov	r6,dph
      0027D6 15 81            [12] 1712 	dec	sp
      0027D8 15 81            [12] 1713 	dec	sp
      0027DA D0 00            [24] 1714 	pop	ar0
      0027DC A6 05            [24] 1715 	mov	@r0,ar5
      0027DE 08               [12] 1716 	inc	r0
      0027DF A6 06            [24] 1717 	mov	@r0,ar6
      0027E1 18               [12] 1718 	dec	r0
                                   1719 ;	walk.c:174: puts("\033[2J\033[?25l");
      0027E2 90 41 98         [24] 1720 	mov	dptr,#___str_4
      0027E5 75 F0 80         [24] 1721 	mov	b,#0x80
      0027E8 C0 00            [24] 1722 	push	ar0
      0027EA 12 2D AB         [24] 1723 	lcall	_puts
      0027ED D0 00            [24] 1724 	pop	ar0
      0027EF D0 01            [24] 1725 	pop	ar1
                                   1726 ;	walk.c:175: printf("\033[1;1H% 8u% 8d% 8d", N, initial.r, initial.c);
      0027F1 86 05            [24] 1727 	mov	ar5,@r0
      0027F3 08               [12] 1728 	inc	r0
      0027F4 86 06            [24] 1729 	mov	ar6,@r0
      0027F6 18               [12] 1730 	dec	r0
      0027F7 87 03            [24] 1731 	mov	ar3,@r1
      0027F9 09               [12] 1732 	inc	r1
      0027FA 87 04            [24] 1733 	mov	ar4,@r1
      0027FC 19               [12] 1734 	dec	r1
      0027FD C0 01            [24] 1735 	push	ar1
      0027FF C0 05            [24] 1736 	push	ar5
      002801 C0 06            [24] 1737 	push	ar6
      002803 C0 03            [24] 1738 	push	ar3
      002805 C0 04            [24] 1739 	push	ar4
      002807 E5 10            [12] 1740 	mov	a,_bp
      002809 24 0B            [12] 1741 	add	a,#0x0b
      00280B F8               [12] 1742 	mov	r0,a
      00280C E6               [12] 1743 	mov	a,@r0
      00280D C0 E0            [24] 1744 	push	acc
      00280F 08               [12] 1745 	inc	r0
      002810 E6               [12] 1746 	mov	a,@r0
      002811 C0 E0            [24] 1747 	push	acc
      002813 74 A3            [12] 1748 	mov	a,#___str_5
      002815 C0 E0            [24] 1749 	push	acc
      002817 74 41            [12] 1750 	mov	a,#(___str_5 >> 8)
      002819 C0 E0            [24] 1751 	push	acc
      00281B 74 80            [12] 1752 	mov	a,#0x80
      00281D C0 E0            [24] 1753 	push	acc
      00281F 12 2E 31         [24] 1754 	lcall	_printf
      002822 E5 81            [12] 1755 	mov	a,sp
      002824 24 F7            [12] 1756 	add	a,#0xf7
      002826 F5 81            [12] 1757 	mov	sp,a
      002828 D0 01            [24] 1758 	pop	ar1
      00282A D0 07            [24] 1759 	pop	ar7
                                   1760 ;	walk.c:176: for (i = 0; i < REG; i++) {
      00282C E5 10            [12] 1761 	mov	a,_bp
      00282E 24 05            [12] 1762 	add	a,#0x05
      002830 F8               [12] 1763 	mov	r0,a
      002831 E4               [12] 1764 	clr	a
      002832 F6               [12] 1765 	mov	@r0,a
      002833 08               [12] 1766 	inc	r0
      002834 F6               [12] 1767 	mov	@r0,a
      002835                       1768 00115$:
                                   1769 ;	walk.c:177: neigh[i].r = neigh[REG + i].r * (1 + rand() % 4);
      002835 C0 07            [24] 1770 	push	ar7
      002837 E5 10            [12] 1771 	mov	a,_bp
      002839 24 05            [12] 1772 	add	a,#0x05
      00283B F8               [12] 1773 	mov	r0,a
      00283C E6               [12] 1774 	mov	a,@r0
      00283D 25 E0            [12] 1775 	add	a,acc
      00283F FB               [12] 1776 	mov	r3,a
      002840 08               [12] 1777 	inc	r0
      002841 E6               [12] 1778 	mov	a,@r0
      002842 33               [12] 1779 	rlc	a
      002843 FC               [12] 1780 	mov	r4,a
      002844 EB               [12] 1781 	mov	a,r3
      002845 2B               [12] 1782 	add	a,r3
      002846 FB               [12] 1783 	mov	r3,a
      002847 EC               [12] 1784 	mov	a,r4
      002848 33               [12] 1785 	rlc	a
      002849 FC               [12] 1786 	mov	r4,a
      00284A E5 10            [12] 1787 	mov	a,_bp
      00284C 24 03            [12] 1788 	add	a,#0x03
      00284E F8               [12] 1789 	mov	r0,a
      00284F EB               [12] 1790 	mov	a,r3
      002850 24 F4            [12] 1791 	add	a,#_neigh
      002852 F6               [12] 1792 	mov	@r0,a
      002853 EC               [12] 1793 	mov	a,r4
      002854 34 FE            [12] 1794 	addc	a,#(_neigh >> 8)
      002856 08               [12] 1795 	inc	r0
      002857 F6               [12] 1796 	mov	@r0,a
      002858 E5 10            [12] 1797 	mov	a,_bp
      00285A 24 05            [12] 1798 	add	a,#0x05
      00285C F8               [12] 1799 	mov	r0,a
      00285D 86 06            [24] 1800 	mov	ar6,@r0
      00285F 74 08            [12] 1801 	mov	a,#0x08
      002861 2E               [12] 1802 	add	a,r6
      002862 FE               [12] 1803 	mov	r6,a
      002863 C2 D5            [12] 1804 	clr	F0
      002865 75 F0 04         [24] 1805 	mov	b,#0x04
      002868 EE               [12] 1806 	mov	a,r6
      002869 30 E7 04         [24] 1807 	jnb	acc.7,00186$
      00286C B2 D5            [12] 1808 	cpl	F0
      00286E F4               [12] 1809 	cpl	a
      00286F 04               [12] 1810 	inc	a
      002870                       1811 00186$:
      002870 A4               [48] 1812 	mul	ab
      002871 30 D5 0A         [24] 1813 	jnb	F0,00187$
      002874 F4               [12] 1814 	cpl	a
      002875 24 01            [12] 1815 	add	a,#0x01
      002877 C5 F0            [12] 1816 	xch	a,b
      002879 F4               [12] 1817 	cpl	a
      00287A 34 00            [12] 1818 	addc	a,#0x00
      00287C C5 F0            [12] 1819 	xch	a,b
      00287E                       1820 00187$:
      00287E FE               [12] 1821 	mov	r6,a
      00287F AD F0            [24] 1822 	mov	r5,b
      002881 24 F4            [12] 1823 	add	a,#_neigh
      002883 F5 82            [12] 1824 	mov	dpl,a
      002885 ED               [12] 1825 	mov	a,r5
      002886 34 FE            [12] 1826 	addc	a,#(_neigh >> 8)
      002888 F5 83            [12] 1827 	mov	dph,a
      00288A A8 10            [24] 1828 	mov	r0,_bp
      00288C 08               [12] 1829 	inc	r0
      00288D E0               [24] 1830 	movx	a,@dptr
      00288E F6               [12] 1831 	mov	@r0,a
      00288F A3               [24] 1832 	inc	dptr
      002890 E0               [24] 1833 	movx	a,@dptr
      002891 08               [12] 1834 	inc	r0
      002892 F6               [12] 1835 	mov	@r0,a
      002893 C0 06            [24] 1836 	push	ar6
      002895 C0 05            [24] 1837 	push	ar5
      002897 C0 04            [24] 1838 	push	ar4
      002899 C0 03            [24] 1839 	push	ar3
      00289B C0 01            [24] 1840 	push	ar1
      00289D 12 2B 82         [24] 1841 	lcall	_rand
      0028A0 AA 82            [24] 1842 	mov	r2,dpl
      0028A2 AF 83            [24] 1843 	mov	r7,dph
      0028A4 74 04            [12] 1844 	mov	a,#0x04
      0028A6 C0 E0            [24] 1845 	push	acc
      0028A8 E4               [12] 1846 	clr	a
      0028A9 C0 E0            [24] 1847 	push	acc
      0028AB 8A 82            [24] 1848 	mov	dpl,r2
      0028AD 8F 83            [24] 1849 	mov	dph,r7
      0028AF 12 2E 86         [24] 1850 	lcall	__modsint
      0028B2 AA 82            [24] 1851 	mov	r2,dpl
      0028B4 AF 83            [24] 1852 	mov	r7,dph
      0028B6 15 81            [12] 1853 	dec	sp
      0028B8 15 81            [12] 1854 	dec	sp
      0028BA D0 01            [24] 1855 	pop	ar1
      0028BC D0 03            [24] 1856 	pop	ar3
      0028BE D0 04            [24] 1857 	pop	ar4
      0028C0 D0 05            [24] 1858 	pop	ar5
      0028C2 D0 06            [24] 1859 	pop	ar6
      0028C4 0A               [12] 1860 	inc	r2
      0028C5 BA 00 01         [24] 1861 	cjne	r2,#0x00,00188$
      0028C8 0F               [12] 1862 	inc	r7
      0028C9                       1863 00188$:
      0028C9 C0 06            [24] 1864 	push	ar6
      0028CB C0 05            [24] 1865 	push	ar5
      0028CD C0 04            [24] 1866 	push	ar4
      0028CF C0 03            [24] 1867 	push	ar3
      0028D1 C0 01            [24] 1868 	push	ar1
      0028D3 C0 02            [24] 1869 	push	ar2
      0028D5 C0 07            [24] 1870 	push	ar7
      0028D7 A8 10            [24] 1871 	mov	r0,_bp
      0028D9 08               [12] 1872 	inc	r0
      0028DA 86 82            [24] 1873 	mov	dpl,@r0
      0028DC 08               [12] 1874 	inc	r0
      0028DD 86 83            [24] 1875 	mov	dph,@r0
      0028DF 12 2C 7A         [24] 1876 	lcall	__mulint
      0028E2 AA 82            [24] 1877 	mov	r2,dpl
      0028E4 AF 83            [24] 1878 	mov	r7,dph
      0028E6 15 81            [12] 1879 	dec	sp
      0028E8 15 81            [12] 1880 	dec	sp
      0028EA D0 01            [24] 1881 	pop	ar1
      0028EC D0 03            [24] 1882 	pop	ar3
      0028EE D0 04            [24] 1883 	pop	ar4
      0028F0 D0 05            [24] 1884 	pop	ar5
      0028F2 D0 06            [24] 1885 	pop	ar6
      0028F4 E5 10            [12] 1886 	mov	a,_bp
      0028F6 24 03            [12] 1887 	add	a,#0x03
      0028F8 F8               [12] 1888 	mov	r0,a
      0028F9 86 82            [24] 1889 	mov	dpl,@r0
      0028FB 08               [12] 1890 	inc	r0
      0028FC 86 83            [24] 1891 	mov	dph,@r0
      0028FE EA               [12] 1892 	mov	a,r2
      0028FF F0               [24] 1893 	movx	@dptr,a
      002900 EF               [12] 1894 	mov	a,r7
      002901 A3               [24] 1895 	inc	dptr
      002902 F0               [24] 1896 	movx	@dptr,a
                                   1897 ;	walk.c:178: neigh[i].c = neigh[REG + i].c * (1 + rand() % 4);
      002903 EB               [12] 1898 	mov	a,r3
      002904 24 F4            [12] 1899 	add	a,#_neigh
      002906 FB               [12] 1900 	mov	r3,a
      002907 EC               [12] 1901 	mov	a,r4
      002908 34 FE            [12] 1902 	addc	a,#(_neigh >> 8)
      00290A FC               [12] 1903 	mov	r4,a
      00290B 74 02            [12] 1904 	mov	a,#0x02
      00290D 2B               [12] 1905 	add	a,r3
      00290E FA               [12] 1906 	mov	r2,a
      00290F E4               [12] 1907 	clr	a
      002910 3C               [12] 1908 	addc	a,r4
      002911 FF               [12] 1909 	mov	r7,a
      002912 EE               [12] 1910 	mov	a,r6
      002913 24 F4            [12] 1911 	add	a,#_neigh
      002915 FE               [12] 1912 	mov	r6,a
      002916 ED               [12] 1913 	mov	a,r5
      002917 34 FE            [12] 1914 	addc	a,#(_neigh >> 8)
      002919 FD               [12] 1915 	mov	r5,a
      00291A 8E 82            [24] 1916 	mov	dpl,r6
      00291C 8D 83            [24] 1917 	mov	dph,r5
      00291E A3               [24] 1918 	inc	dptr
      00291F A3               [24] 1919 	inc	dptr
      002920 E5 10            [12] 1920 	mov	a,_bp
      002922 24 03            [12] 1921 	add	a,#0x03
      002924 F8               [12] 1922 	mov	r0,a
      002925 E0               [24] 1923 	movx	a,@dptr
      002926 F6               [12] 1924 	mov	@r0,a
      002927 A3               [24] 1925 	inc	dptr
      002928 E0               [24] 1926 	movx	a,@dptr
      002929 08               [12] 1927 	inc	r0
      00292A F6               [12] 1928 	mov	@r0,a
      00292B C0 07            [24] 1929 	push	ar7
      00292D C0 04            [24] 1930 	push	ar4
      00292F C0 03            [24] 1931 	push	ar3
      002931 C0 02            [24] 1932 	push	ar2
      002933 C0 01            [24] 1933 	push	ar1
      002935 12 2B 82         [24] 1934 	lcall	_rand
      002938 AD 82            [24] 1935 	mov	r5,dpl
      00293A AE 83            [24] 1936 	mov	r6,dph
      00293C 74 04            [12] 1937 	mov	a,#0x04
      00293E C0 E0            [24] 1938 	push	acc
      002940 E4               [12] 1939 	clr	a
      002941 C0 E0            [24] 1940 	push	acc
      002943 8D 82            [24] 1941 	mov	dpl,r5
      002945 8E 83            [24] 1942 	mov	dph,r6
      002947 12 2E 86         [24] 1943 	lcall	__modsint
      00294A AD 82            [24] 1944 	mov	r5,dpl
      00294C AE 83            [24] 1945 	mov	r6,dph
      00294E 15 81            [12] 1946 	dec	sp
      002950 15 81            [12] 1947 	dec	sp
      002952 D0 01            [24] 1948 	pop	ar1
      002954 D0 02            [24] 1949 	pop	ar2
      002956 D0 03            [24] 1950 	pop	ar3
      002958 D0 04            [24] 1951 	pop	ar4
      00295A D0 07            [24] 1952 	pop	ar7
      00295C 0D               [12] 1953 	inc	r5
      00295D BD 00 01         [24] 1954 	cjne	r5,#0x00,00189$
      002960 0E               [12] 1955 	inc	r6
      002961                       1956 00189$:
      002961 C0 07            [24] 1957 	push	ar7
      002963 C0 04            [24] 1958 	push	ar4
      002965 C0 03            [24] 1959 	push	ar3
      002967 C0 02            [24] 1960 	push	ar2
      002969 C0 01            [24] 1961 	push	ar1
      00296B C0 05            [24] 1962 	push	ar5
      00296D C0 06            [24] 1963 	push	ar6
      00296F E5 10            [12] 1964 	mov	a,_bp
      002971 24 03            [12] 1965 	add	a,#0x03
      002973 F8               [12] 1966 	mov	r0,a
      002974 86 82            [24] 1967 	mov	dpl,@r0
      002976 08               [12] 1968 	inc	r0
      002977 86 83            [24] 1969 	mov	dph,@r0
      002979 12 2C 7A         [24] 1970 	lcall	__mulint
      00297C AD 82            [24] 1971 	mov	r5,dpl
      00297E AE 83            [24] 1972 	mov	r6,dph
      002980 15 81            [12] 1973 	dec	sp
      002982 15 81            [12] 1974 	dec	sp
      002984 D0 01            [24] 1975 	pop	ar1
      002986 D0 02            [24] 1976 	pop	ar2
      002988 D0 03            [24] 1977 	pop	ar3
      00298A D0 04            [24] 1978 	pop	ar4
      00298C D0 07            [24] 1979 	pop	ar7
      00298E 8A 82            [24] 1980 	mov	dpl,r2
      002990 8F 83            [24] 1981 	mov	dph,r7
      002992 ED               [12] 1982 	mov	a,r5
      002993 F0               [24] 1983 	movx	@dptr,a
      002994 EE               [12] 1984 	mov	a,r6
      002995 A3               [24] 1985 	inc	dptr
      002996 F0               [24] 1986 	movx	@dptr,a
                                   1987 ;	walk.c:179: printf("% 8d% 8d", neigh[i].r, neigh[i].c);
      002997 8B 82            [24] 1988 	mov	dpl,r3
      002999 8C 83            [24] 1989 	mov	dph,r4
      00299B E0               [24] 1990 	movx	a,@dptr
      00299C FB               [12] 1991 	mov	r3,a
      00299D A3               [24] 1992 	inc	dptr
      00299E E0               [24] 1993 	movx	a,@dptr
      00299F FC               [12] 1994 	mov	r4,a
      0029A0 C0 07            [24] 1995 	push	ar7
      0029A2 C0 01            [24] 1996 	push	ar1
      0029A4 C0 05            [24] 1997 	push	ar5
      0029A6 C0 06            [24] 1998 	push	ar6
      0029A8 C0 03            [24] 1999 	push	ar3
      0029AA C0 04            [24] 2000 	push	ar4
      0029AC 74 B6            [12] 2001 	mov	a,#___str_6
      0029AE C0 E0            [24] 2002 	push	acc
      0029B0 74 41            [12] 2003 	mov	a,#(___str_6 >> 8)
      0029B2 C0 E0            [24] 2004 	push	acc
      0029B4 74 80            [12] 2005 	mov	a,#0x80
      0029B6 C0 E0            [24] 2006 	push	acc
      0029B8 12 2E 31         [24] 2007 	lcall	_printf
      0029BB E5 81            [12] 2008 	mov	a,sp
      0029BD 24 F9            [12] 2009 	add	a,#0xf9
      0029BF F5 81            [12] 2010 	mov	sp,a
      0029C1 D0 01            [24] 2011 	pop	ar1
      0029C3 D0 07            [24] 2012 	pop	ar7
                                   2013 ;	walk.c:176: for (i = 0; i < REG; i++) {
      0029C5 E5 10            [12] 2014 	mov	a,_bp
      0029C7 24 05            [12] 2015 	add	a,#0x05
      0029C9 F8               [12] 2016 	mov	r0,a
      0029CA 06               [12] 2017 	inc	@r0
      0029CB B6 00 02         [24] 2018 	cjne	@r0,#0x00,00190$
      0029CE 08               [12] 2019 	inc	r0
      0029CF 06               [12] 2020 	inc	@r0
      0029D0                       2021 00190$:
      0029D0 E5 10            [12] 2022 	mov	a,_bp
      0029D2 24 05            [12] 2023 	add	a,#0x05
      0029D4 F8               [12] 2024 	mov	r0,a
      0029D5 C3               [12] 2025 	clr	c
      0029D6 E6               [12] 2026 	mov	a,@r0
      0029D7 94 08            [12] 2027 	subb	a,#0x08
      0029D9 08               [12] 2028 	inc	r0
      0029DA E6               [12] 2029 	mov	a,@r0
      0029DB 64 80            [12] 2030 	xrl	a,#0x80
      0029DD 94 80            [12] 2031 	subb	a,#0x80
      0029DF D0 07            [24] 2032 	pop	ar7
      0029E1 50 03            [24] 2033 	jnc	00191$
      0029E3 02 28 35         [24] 2034 	ljmp	00115$
      0029E6                       2035 00191$:
                                   2036 ;	walk.c:182: OE76 = OE76_0;
      0029E6 78 12            [12] 2037 	mov	r0,#_OE76
      0029E8 76 3F            [12] 2038 	mov	@r0,#0x3f
                                   2039 ;	walk.c:183: flashOE(OE76_NC);
      0029EA 75 82 00         [24] 2040 	mov	dpl,#0x00
      0029ED C0 07            [24] 2041 	push	ar7
      0029EF C0 01            [24] 2042 	push	ar1
      0029F1 12 20 8E         [24] 2043 	lcall	_flashOE
      0029F4 D0 01            [24] 2044 	pop	ar1
      0029F6 D0 07            [24] 2045 	pop	ar7
                                   2046 ;	walk.c:185: walk(&initial);
      0029F8 8F 04            [24] 2047 	mov	ar4,r7
      0029FA 7D 00            [12] 2048 	mov	r5,#0x00
      0029FC 7E 40            [12] 2049 	mov	r6,#0x40
      0029FE 8C 82            [24] 2050 	mov	dpl,r4
      002A00 8D 83            [24] 2051 	mov	dph,r5
      002A02 8E F0            [24] 2052 	mov	b,r6
      002A04 C0 07            [24] 2053 	push	ar7
      002A06 C0 01            [24] 2054 	push	ar1
      002A08 12 23 3C         [24] 2055 	lcall	_walk
      002A0B D0 01            [24] 2056 	pop	ar1
      002A0D D0 07            [24] 2057 	pop	ar7
                                   2058 ;	walk.c:187: for (i = 0; i < ROWS; i++)
      002A0F E5 10            [12] 2059 	mov	a,_bp
      002A11 24 05            [12] 2060 	add	a,#0x05
      002A13 F8               [12] 2061 	mov	r0,a
      002A14 E4               [12] 2062 	clr	a
      002A15 F6               [12] 2063 	mov	@r0,a
      002A16 08               [12] 2064 	inc	r0
      002A17 F6               [12] 2065 	mov	@r0,a
      002A18 7B 00            [12] 2066 	mov	r3,#0x00
      002A1A 7C 00            [12] 2067 	mov	r4,#0x00
                                   2068 ;	walk.c:188: for (j = 0; j < COLS; j++)
      002A1C                       2069 00131$:
      002A1C E5 10            [12] 2070 	mov	a,_bp
      002A1E 24 03            [12] 2071 	add	a,#0x03
      002A20 F8               [12] 2072 	mov	r0,a
      002A21 EB               [12] 2073 	mov	a,r3
      002A22 24 80            [12] 2074 	add	a,#_g
      002A24 F6               [12] 2075 	mov	@r0,a
      002A25 EC               [12] 2076 	mov	a,r4
      002A26 34 42            [12] 2077 	addc	a,#(_g >> 8)
      002A28 08               [12] 2078 	inc	r0
      002A29 F6               [12] 2079 	mov	@r0,a
      002A2A 7A 00            [12] 2080 	mov	r2,#0x00
      002A2C 7E 00            [12] 2081 	mov	r6,#0x00
      002A2E                       2082 00117$:
                                   2083 ;	walk.c:189: if (g[i][j] != 0xaa) bang();
      002A2E E5 10            [12] 2084 	mov	a,_bp
      002A30 24 03            [12] 2085 	add	a,#0x03
      002A32 F8               [12] 2086 	mov	r0,a
      002A33 EA               [12] 2087 	mov	a,r2
      002A34 26               [12] 2088 	add	a,@r0
      002A35 F5 82            [12] 2089 	mov	dpl,a
      002A37 EE               [12] 2090 	mov	a,r6
      002A38 08               [12] 2091 	inc	r0
      002A39 36               [12] 2092 	addc	a,@r0
      002A3A F5 83            [12] 2093 	mov	dph,a
      002A3C E0               [24] 2094 	movx	a,@dptr
      002A3D FD               [12] 2095 	mov	r5,a
      002A3E BD AA 02         [24] 2096 	cjne	r5,#0xaa,00192$
      002A41 80 1B            [24] 2097 	sjmp	00118$
      002A43                       2098 00192$:
      002A43 C0 07            [24] 2099 	push	ar7
      002A45 C0 06            [24] 2100 	push	ar6
      002A47 C0 04            [24] 2101 	push	ar4
      002A49 C0 03            [24] 2102 	push	ar3
      002A4B C0 02            [24] 2103 	push	ar2
      002A4D C0 01            [24] 2104 	push	ar1
      002A4F 12 20 82         [24] 2105 	lcall	_bang
      002A52 D0 01            [24] 2106 	pop	ar1
      002A54 D0 02            [24] 2107 	pop	ar2
      002A56 D0 03            [24] 2108 	pop	ar3
      002A58 D0 04            [24] 2109 	pop	ar4
      002A5A D0 06            [24] 2110 	pop	ar6
      002A5C D0 07            [24] 2111 	pop	ar7
      002A5E                       2112 00118$:
                                   2113 ;	walk.c:188: for (j = 0; j < COLS; j++)
      002A5E 0A               [12] 2114 	inc	r2
      002A5F BA 00 01         [24] 2115 	cjne	r2,#0x00,00193$
      002A62 0E               [12] 2116 	inc	r6
      002A63                       2117 00193$:
      002A63 C3               [12] 2118 	clr	c
      002A64 EA               [12] 2119 	mov	a,r2
      002A65 94 C9            [12] 2120 	subb	a,#0xc9
      002A67 EE               [12] 2121 	mov	a,r6
      002A68 64 80            [12] 2122 	xrl	a,#0x80
      002A6A 94 80            [12] 2123 	subb	a,#0x80
      002A6C 40 C0            [24] 2124 	jc	00117$
                                   2125 ;	walk.c:187: for (i = 0; i < ROWS; i++)
      002A6E 74 C9            [12] 2126 	mov	a,#0xc9
      002A70 2B               [12] 2127 	add	a,r3
      002A71 FB               [12] 2128 	mov	r3,a
      002A72 E4               [12] 2129 	clr	a
      002A73 3C               [12] 2130 	addc	a,r4
      002A74 FC               [12] 2131 	mov	r4,a
      002A75 E5 10            [12] 2132 	mov	a,_bp
      002A77 24 05            [12] 2133 	add	a,#0x05
      002A79 F8               [12] 2134 	mov	r0,a
      002A7A 06               [12] 2135 	inc	@r0
      002A7B B6 00 02         [24] 2136 	cjne	@r0,#0x00,00195$
      002A7E 08               [12] 2137 	inc	r0
      002A7F 06               [12] 2138 	inc	@r0
      002A80                       2139 00195$:
      002A80 E5 10            [12] 2140 	mov	a,_bp
      002A82 24 05            [12] 2141 	add	a,#0x05
      002A84 F8               [12] 2142 	mov	r0,a
      002A85 C3               [12] 2143 	clr	c
      002A86 E6               [12] 2144 	mov	a,@r0
      002A87 94 30            [12] 2145 	subb	a,#0x30
      002A89 08               [12] 2146 	inc	r0
      002A8A E6               [12] 2147 	mov	a,@r0
      002A8B 64 80            [12] 2148 	xrl	a,#0x80
      002A8D 94 80            [12] 2149 	subb	a,#0x80
      002A8F 40 8B            [24] 2150 	jc	00131$
                                   2151 ;	walk.c:191: N++;
      002A91 E5 10            [12] 2152 	mov	a,_bp
      002A93 24 0B            [12] 2153 	add	a,#0x0b
      002A95 F8               [12] 2154 	mov	r0,a
      002A96 06               [12] 2155 	inc	@r0
      002A97 B6 00 02         [24] 2156 	cjne	@r0,#0x00,00197$
      002A9A 08               [12] 2157 	inc	r0
      002A9B 06               [12] 2158 	inc	@r0
      002A9C                       2159 00197$:
      002A9C 02 27 1A         [24] 2160 	ljmp	00108$
      002A9F                       2161 00110$:
                                   2162 ;	walk.c:194: EA = 0;
                                   2163 ;	assignBit
      002A9F C2 AF            [12] 2164 	clr	_EA
                                   2165 ;	walk.c:196: puts("\033[2J\033[?25h");
      002AA1 90 41 BF         [24] 2166 	mov	dptr,#___str_7
      002AA4 75 F0 80         [24] 2167 	mov	b,#0x80
      002AA7 12 2D AB         [24] 2168 	lcall	_puts
                                   2169 ;	walk.c:200: __endasm;
      002AAA 02 00 00         [24] 2170 	ljmp	0
                                   2171 ;	walk.c:202: return 0;
      002AAD 90 00 00         [24] 2172 	mov	dptr,#0x0000
                                   2173 ;	walk.c:203: }
      002AB0 85 10 81         [24] 2174 	mov	sp,_bp
      002AB3 D0 10            [24] 2175 	pop	_bp
      002AB5 22               [24] 2176 	ret
                                   2177 ;------------------------------------------------------------
                                   2178 ;Allocation info for local variables in function 'stinit'
                                   2179 ;------------------------------------------------------------
                                   2180 ;	walk.c:205: static void stinit(void) {
                                   2181 ;	-----------------------------------------
                                   2182 ;	 function stinit
                                   2183 ;	-----------------------------------------
      002AB6                       2184 _stinit:
                                   2185 ;	walk.c:206: sp = -1;
      002AB6 90 FE F0         [24] 2186 	mov	dptr,#_sp
      002AB9 74 FF            [12] 2187 	mov	a,#0xff
      002ABB F0               [24] 2188 	movx	@dptr,a
      002ABC A3               [24] 2189 	inc	dptr
      002ABD F0               [24] 2190 	movx	@dptr,a
                                   2191 ;	walk.c:207: return;
                                   2192 ;	walk.c:208: }
      002ABE 22               [24] 2193 	ret
                                   2194 ;------------------------------------------------------------
                                   2195 ;Allocation info for local variables in function 'stpush'
                                   2196 ;------------------------------------------------------------
                                   2197 ;t                         Allocated to registers r5 r6 r7 
                                   2198 ;------------------------------------------------------------
                                   2199 ;	walk.c:210: static int stpush(struct node *t) {
                                   2200 ;	-----------------------------------------
                                   2201 ;	 function stpush
                                   2202 ;	-----------------------------------------
      002ABF                       2203 _stpush:
      002ABF AD 82            [24] 2204 	mov	r5,dpl
      002AC1 AE 83            [24] 2205 	mov	r6,dph
      002AC3 AF F0            [24] 2206 	mov	r7,b
                                   2207 ;	walk.c:211: if (sp == (SMAX - 1)) return 0;
      002AC5 90 FE F0         [24] 2208 	mov	dptr,#_sp
      002AC8 E0               [24] 2209 	movx	a,@dptr
      002AC9 FB               [12] 2210 	mov	r3,a
      002ACA A3               [24] 2211 	inc	dptr
      002ACB E0               [24] 2212 	movx	a,@dptr
      002ACC FC               [12] 2213 	mov	r4,a
      002ACD BB AF 07         [24] 2214 	cjne	r3,#0xaf,00102$
      002AD0 BC 25 04         [24] 2215 	cjne	r4,#0x25,00102$
      002AD3 90 00 00         [24] 2216 	mov	dptr,#0x0000
      002AD6 22               [24] 2217 	ret
      002AD7                       2218 00102$:
                                   2219 ;	walk.c:212: sp++;
      002AD7 90 FE F0         [24] 2220 	mov	dptr,#_sp
      002ADA 74 01            [12] 2221 	mov	a,#0x01
      002ADC 2B               [12] 2222 	add	a,r3
      002ADD F0               [24] 2223 	movx	@dptr,a
      002ADE E4               [12] 2224 	clr	a
      002ADF 3C               [12] 2225 	addc	a,r4
      002AE0 A3               [24] 2226 	inc	dptr
      002AE1 F0               [24] 2227 	movx	@dptr,a
                                   2228 ;	walk.c:213: stack[sp] = *t;
      002AE2 90 FE F0         [24] 2229 	mov	dptr,#_sp
      002AE5 E0               [24] 2230 	movx	a,@dptr
      002AE6 FB               [12] 2231 	mov	r3,a
      002AE7 A3               [24] 2232 	inc	dptr
      002AE8 E0               [24] 2233 	movx	a,@dptr
      002AE9 FC               [12] 2234 	mov	r4,a
      002AEA EB               [12] 2235 	mov	a,r3
      002AEB 2B               [12] 2236 	add	a,r3
      002AEC FB               [12] 2237 	mov	r3,a
      002AED EC               [12] 2238 	mov	a,r4
      002AEE 33               [12] 2239 	rlc	a
      002AEF FC               [12] 2240 	mov	r4,a
      002AF0 EB               [12] 2241 	mov	a,r3
      002AF1 2B               [12] 2242 	add	a,r3
      002AF2 FB               [12] 2243 	mov	r3,a
      002AF3 EC               [12] 2244 	mov	a,r4
      002AF4 33               [12] 2245 	rlc	a
      002AF5 FC               [12] 2246 	mov	r4,a
      002AF6 EB               [12] 2247 	mov	a,r3
      002AF7 24 30            [12] 2248 	add	a,#_stack
      002AF9 FB               [12] 2249 	mov	r3,a
      002AFA EC               [12] 2250 	mov	a,r4
      002AFB 34 68            [12] 2251 	addc	a,#(_stack >> 8)
      002AFD FC               [12] 2252 	mov	r4,a
      002AFE 7A 00            [12] 2253 	mov	r2,#0x00
      002B00 74 04            [12] 2254 	mov	a,#0x04
      002B02 C0 E0            [24] 2255 	push	acc
      002B04 E4               [12] 2256 	clr	a
      002B05 C0 E0            [24] 2257 	push	acc
      002B07 C0 05            [24] 2258 	push	ar5
      002B09 C0 06            [24] 2259 	push	ar6
      002B0B C0 07            [24] 2260 	push	ar7
      002B0D 8B 82            [24] 2261 	mov	dpl,r3
      002B0F 8C 83            [24] 2262 	mov	dph,r4
      002B11 8A F0            [24] 2263 	mov	b,r2
      002B13 12 2D 18         [24] 2264 	lcall	___memcpy
      002B16 E5 81            [12] 2265 	mov	a,sp
      002B18 24 FB            [12] 2266 	add	a,#0xfb
      002B1A F5 81            [12] 2267 	mov	sp,a
                                   2268 ;	walk.c:214: return 1;
      002B1C 90 00 01         [24] 2269 	mov	dptr,#0x0001
                                   2270 ;	walk.c:215: }
      002B1F 22               [24] 2271 	ret
                                   2272 ;------------------------------------------------------------
                                   2273 ;Allocation info for local variables in function 'stpop'
                                   2274 ;------------------------------------------------------------
                                   2275 ;t                         Allocated to registers r5 r6 r7 
                                   2276 ;------------------------------------------------------------
                                   2277 ;	walk.c:217: static int stpop(struct node *t) {
                                   2278 ;	-----------------------------------------
                                   2279 ;	 function stpop
                                   2280 ;	-----------------------------------------
      002B20                       2281 _stpop:
      002B20 AD 82            [24] 2282 	mov	r5,dpl
      002B22 AE 83            [24] 2283 	mov	r6,dph
      002B24 AF F0            [24] 2284 	mov	r7,b
                                   2285 ;	walk.c:218: if (sp == -1) return 0;
      002B26 90 FE F0         [24] 2286 	mov	dptr,#_sp
      002B29 E0               [24] 2287 	movx	a,@dptr
      002B2A FB               [12] 2288 	mov	r3,a
      002B2B A3               [24] 2289 	inc	dptr
      002B2C E0               [24] 2290 	movx	a,@dptr
      002B2D FC               [12] 2291 	mov	r4,a
      002B2E BB FF 07         [24] 2292 	cjne	r3,#0xff,00102$
      002B31 BC FF 04         [24] 2293 	cjne	r4,#0xff,00102$
      002B34 90 00 00         [24] 2294 	mov	dptr,#0x0000
      002B37 22               [24] 2295 	ret
      002B38                       2296 00102$:
                                   2297 ;	walk.c:219: *t = stack[sp];
      002B38 EB               [12] 2298 	mov	a,r3
      002B39 2B               [12] 2299 	add	a,r3
      002B3A FB               [12] 2300 	mov	r3,a
      002B3B EC               [12] 2301 	mov	a,r4
      002B3C 33               [12] 2302 	rlc	a
      002B3D FC               [12] 2303 	mov	r4,a
      002B3E EB               [12] 2304 	mov	a,r3
      002B3F 2B               [12] 2305 	add	a,r3
      002B40 FB               [12] 2306 	mov	r3,a
      002B41 EC               [12] 2307 	mov	a,r4
      002B42 33               [12] 2308 	rlc	a
      002B43 FC               [12] 2309 	mov	r4,a
      002B44 EB               [12] 2310 	mov	a,r3
      002B45 24 30            [12] 2311 	add	a,#_stack
      002B47 FB               [12] 2312 	mov	r3,a
      002B48 EC               [12] 2313 	mov	a,r4
      002B49 34 68            [12] 2314 	addc	a,#(_stack >> 8)
      002B4B FC               [12] 2315 	mov	r4,a
      002B4C 7A 00            [12] 2316 	mov	r2,#0x00
      002B4E 74 04            [12] 2317 	mov	a,#0x04
      002B50 C0 E0            [24] 2318 	push	acc
      002B52 E4               [12] 2319 	clr	a
      002B53 C0 E0            [24] 2320 	push	acc
      002B55 C0 03            [24] 2321 	push	ar3
      002B57 C0 04            [24] 2322 	push	ar4
      002B59 C0 02            [24] 2323 	push	ar2
      002B5B 8D 82            [24] 2324 	mov	dpl,r5
      002B5D 8E 83            [24] 2325 	mov	dph,r6
      002B5F 8F F0            [24] 2326 	mov	b,r7
      002B61 12 2D 18         [24] 2327 	lcall	___memcpy
      002B64 E5 81            [12] 2328 	mov	a,sp
      002B66 24 FB            [12] 2329 	add	a,#0xfb
      002B68 F5 81            [12] 2330 	mov	sp,a
                                   2331 ;	walk.c:220: sp--;
      002B6A 90 FE F0         [24] 2332 	mov	dptr,#_sp
      002B6D E0               [24] 2333 	movx	a,@dptr
      002B6E 24 FF            [12] 2334 	add	a,#0xff
      002B70 FE               [12] 2335 	mov	r6,a
      002B71 A3               [24] 2336 	inc	dptr
      002B72 E0               [24] 2337 	movx	a,@dptr
      002B73 34 FF            [12] 2338 	addc	a,#0xff
      002B75 FF               [12] 2339 	mov	r7,a
      002B76 90 FE F0         [24] 2340 	mov	dptr,#_sp
      002B79 EE               [12] 2341 	mov	a,r6
      002B7A F0               [24] 2342 	movx	@dptr,a
      002B7B EF               [12] 2343 	mov	a,r7
      002B7C A3               [24] 2344 	inc	dptr
      002B7D F0               [24] 2345 	movx	@dptr,a
                                   2346 ;	walk.c:221: return 1;
      002B7E 90 00 01         [24] 2347 	mov	dptr,#0x0001
                                   2348 ;	walk.c:222: }
      002B81 22               [24] 2349 	ret
                                   2350 	.area CSEG    (CODE)
                                   2351 	.area CONST   (CODE)
                                   2352 	.area CONST   (CODE)
      004164                       2353 ___str_0:
      004164 4D 65 6D 6F 72 79 20  2354 	.ascii "Memory error"
             65 72 72 6F 72
      004170 00                    2355 	.db 0x00
                                   2356 	.area CSEG    (CODE)
                                   2357 	.area CONST   (CODE)
      004171                       2358 ___str_1:
      004171 1B                    2359 	.db 0x1b
      004172 5B 25 64 3B 25 64 48  2360 	.ascii "[%d;%dHo"
             6F
      00417A 00                    2361 	.db 0x00
                                   2362 	.area CSEG    (CODE)
                                   2363 	.area CONST   (CODE)
      00417B                       2364 ___str_2:
      00417B 1B                    2365 	.db 0x1b
      00417C 5B 32 3B 31 48 25 20  2366 	.ascii "[2;1H% 8d% 8d% 8d"
             38 64 25 20 38 64 25
             20 38 64
      00418D 00                    2367 	.db 0x00
                                   2368 	.area CSEG    (CODE)
                                   2369 	.area CONST   (CODE)
      00418E                       2370 ___str_3:
      00418E 1B                    2371 	.db 0x1b
      00418F 5B 25 64 3B 25 64 48  2372 	.ascii "[%d;%dH."
             2E
      004197 00                    2373 	.db 0x00
                                   2374 	.area CSEG    (CODE)
                                   2375 	.area CONST   (CODE)
      004198                       2376 ___str_4:
      004198 1B                    2377 	.db 0x1b
      004199 5B 32 4A              2378 	.ascii "[2J"
      00419C 1B                    2379 	.db 0x1b
      00419D 5B 3F 32 35 6C        2380 	.ascii "[?25l"
      0041A2 00                    2381 	.db 0x00
                                   2382 	.area CSEG    (CODE)
                                   2383 	.area CONST   (CODE)
      0041A3                       2384 ___str_5:
      0041A3 1B                    2385 	.db 0x1b
      0041A4 5B 31 3B 31 48 25 20  2386 	.ascii "[1;1H% 8u% 8d% 8d"
             38 75 25 20 38 64 25
             20 38 64
      0041B5 00                    2387 	.db 0x00
                                   2388 	.area CSEG    (CODE)
                                   2389 	.area CONST   (CODE)
      0041B6                       2390 ___str_6:
      0041B6 25 20 38 64 25 20 38  2391 	.ascii "% 8d% 8d"
             64
      0041BE 00                    2392 	.db 0x00
                                   2393 	.area CSEG    (CODE)
                                   2394 	.area CONST   (CODE)
      0041BF                       2395 ___str_7:
      0041BF 1B                    2396 	.db 0x1b
      0041C0 5B 32 4A              2397 	.ascii "[2J"
      0041C3 1B                    2398 	.db 0x1b
      0041C4 5B 3F 32 35 68        2399 	.ascii "[?25h"
      0041C9 00                    2400 	.db 0x00
                                   2401 	.area CSEG    (CODE)
                                   2402 	.area XINIT   (CODE)
      0041D5                       2403 __xinit__R:
      0041D5 FE FF                 2404 	.byte #0xfe,#0xff
      0041D7                       2405 __xinit__neigh:
      0041D7 FF FF                 2406 	.byte #0xff, #0xff	; -1
      0041D9 01 00                 2407 	.byte #0x01, #0x00	;  1
      0041DB FF FF                 2408 	.byte #0xff, #0xff	; -1
      0041DD FF FF                 2409 	.byte #0xff, #0xff	; -1
      0041DF 01 00                 2410 	.byte #0x01, #0x00	;  1
      0041E1 FF FF                 2411 	.byte #0xff, #0xff	; -1
      0041E3 01 00                 2412 	.byte #0x01, #0x00	;  1
      0041E5 01 00                 2413 	.byte #0x01, #0x00	;  1
      0041E7 FF FF                 2414 	.byte #0xff, #0xff	; -1
      0041E9 00 00                 2415 	.byte #0x00, #0x00	;  0
      0041EB 00 00                 2416 	.byte #0x00, #0x00	;  0
      0041ED FF FF                 2417 	.byte #0xff, #0xff	; -1
      0041EF 01 00                 2418 	.byte #0x01, #0x00	;  1
      0041F1 00 00                 2419 	.byte #0x00, #0x00	;  0
      0041F3 00 00                 2420 	.byte #0x00, #0x00	;  0
      0041F5 01 00                 2421 	.byte #0x01, #0x00	;  1
      0041F7 FF FF                 2422 	.byte #0xff, #0xff	; -1
      0041F9 01 00                 2423 	.byte #0x01, #0x00	;  1
      0041FB FF FF                 2424 	.byte #0xff, #0xff	; -1
      0041FD FF FF                 2425 	.byte #0xff, #0xff	; -1
      0041FF 01 00                 2426 	.byte #0x01, #0x00	;  1
      004201 FF FF                 2427 	.byte #0xff, #0xff	; -1
      004203 01 00                 2428 	.byte #0x01, #0x00	;  1
      004205 01 00                 2429 	.byte #0x01, #0x00	;  1
      004207 FF FF                 2430 	.byte #0xff, #0xff	; -1
      004209 00 00                 2431 	.byte #0x00, #0x00	;  0
      00420B 00 00                 2432 	.byte #0x00, #0x00	;  0
      00420D FF FF                 2433 	.byte #0xff, #0xff	; -1
      00420F 01 00                 2434 	.byte #0x01, #0x00	;  1
      004211 00 00                 2435 	.byte #0x00, #0x00	;  0
      004213 00 00                 2436 	.byte #0x00, #0x00	;  0
      004215 01 00                 2437 	.byte #0x01, #0x00	;  1
                                   2438 	.area CABS    (ABS,CODE)
