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
      00FEF4                        337 _neigh_tmpl:
      00FEF4                        338 	.ds 64
      00FF34                        339 _neigh:
      00FF34                        340 	.ds 64
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
      002003 02 20 73         [24]  357 	ljmp	_int0
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
      002006 02 26 E7         [24]  379 	ljmp	_main
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
                                    390 ;	walk.c:9: int putchar(int c) __naked {
                                    391 ;	-----------------------------------------
                                    392 ;	 function putchar
                                    393 ;	-----------------------------------------
      002065                        394 _putchar:
                                    395 ;	naked function: no prologue.
                                    396 ;	walk.c:14: __endasm;
      002065 E5 82            [12]  397 	mov	a, dpl
      002067 02 00 30         [24]  398 	ljmp	0x0030
                                    399 ;	walk.c:15: }
                                    400 ;	naked function: no epilogue.
                                    401 ;------------------------------------------------------------
                                    402 ;Allocation info for local variables in function 'getchar'
                                    403 ;------------------------------------------------------------
                                    404 ;	walk.c:17: int getchar(void) __naked {
                                    405 ;	-----------------------------------------
                                    406 ;	 function getchar
                                    407 ;	-----------------------------------------
      00206A                        408 _getchar:
                                    409 ;	naked function: no prologue.
                                    410 ;	walk.c:23: __endasm;
      00206A 12 00 32         [24]  411 	lcall	0x0032
      00206D F5 82            [12]  412 	mov	dpl, a
      00206F 75 83 00         [24]  413 	mov	dph, #0
      002072 22               [24]  414 	ret
                                    415 ;	walk.c:24: }
                                    416 ;	naked function: no epilogue.
                                    417 ;------------------------------------------------------------
                                    418 ;Allocation info for local variables in function 'int0'
                                    419 ;------------------------------------------------------------
                                    420 ;	walk.c:28: void int0(void) __interrupt IE0_VECTOR __using 1 {
                                    421 ;	-----------------------------------------
                                    422 ;	 function int0
                                    423 ;	-----------------------------------------
      002073                        424 _int0:
                           00000F   425 	ar7 = 0x0f
                           00000E   426 	ar6 = 0x0e
                           00000D   427 	ar5 = 0x0d
                           00000C   428 	ar4 = 0x0c
                           00000B   429 	ar3 = 0x0b
                           00000A   430 	ar2 = 0x0a
                           000009   431 	ar1 = 0x09
                           000008   432 	ar0 = 0x08
      002073 C0 D0            [24]  433 	push	psw
      002075 75 D0 08         [24]  434 	mov	psw,#0x08
                                    435 ;	walk.c:29: i0 = 0u;
      002078 78 11            [12]  436 	mov	r0,#_i0
      00207A 76 00            [12]  437 	mov	@r0,#0x00
                                    438 ;	walk.c:30: }
      00207C D0 D0            [24]  439 	pop	psw
      00207E 32               [24]  440 	reti
                                    441 ;	eliminated unneeded push/pop dpl
                                    442 ;	eliminated unneeded push/pop dph
                                    443 ;	eliminated unneeded push/pop b
                                    444 ;	eliminated unneeded push/pop acc
                                    445 ;------------------------------------------------------------
                                    446 ;Allocation info for local variables in function 'reset'
                                    447 ;------------------------------------------------------------
                                    448 ;	walk.c:32: static void reset(void) __naked {
                                    449 ;	-----------------------------------------
                                    450 ;	 function reset
                                    451 ;	-----------------------------------------
      00207F                        452 _reset:
                                    453 ;	naked function: no prologue.
                                    454 ;	walk.c:35: __endasm;
      00207F 43 87 02         [24]  455 	orl	pcon, #2
                                    456 ;	walk.c:36: }
                                    457 ;	naked function: no epilogue.
                                    458 ;------------------------------------------------------------
                                    459 ;Allocation info for local variables in function 'bang'
                                    460 ;------------------------------------------------------------
                                    461 ;	walk.c:38: static void bang(void) {
                                    462 ;	-----------------------------------------
                                    463 ;	 function bang
                                    464 ;	-----------------------------------------
      002082                        465 _bang:
                           000007   466 	ar7 = 0x07
                           000006   467 	ar6 = 0x06
                           000005   468 	ar5 = 0x05
                           000004   469 	ar4 = 0x04
                           000003   470 	ar3 = 0x03
                           000002   471 	ar2 = 0x02
                           000001   472 	ar1 = 0x01
                           000000   473 	ar0 = 0x00
                                    474 ;	walk.c:39: (void)puts("Memory error");
      002082 90 41 4A         [24]  475 	mov	dptr,#___str_0
      002085 75 F0 80         [24]  476 	mov	b,#0x80
      002088 12 2D 91         [24]  477 	lcall	_puts
                                    478 ;	walk.c:40: reset();
                                    479 ;	walk.c:42: return;
                                    480 ;	walk.c:43: }
      00208B 02 20 7F         [24]  481 	ljmp	_reset
                                    482 ;------------------------------------------------------------
                                    483 ;Allocation info for local variables in function 'flashOE'
                                    484 ;------------------------------------------------------------
                                    485 ;mask                      Allocated to registers r7 
                                    486 ;OEreg                     Allocated to stack - _bp +1
                                    487 ;------------------------------------------------------------
                                    488 ;	walk.c:98: static void flashOE(uint8_t mask) {
                                    489 ;	-----------------------------------------
                                    490 ;	 function flashOE
                                    491 ;	-----------------------------------------
      00208E                        492 _flashOE:
      00208E C0 10            [24]  493 	push	_bp
      002090 85 81 10         [24]  494 	mov	_bp,sp
      002093 05 81            [12]  495 	inc	sp
      002095 05 81            [12]  496 	inc	sp
      002097 AF 82            [24]  497 	mov	r7,dpl
                                    498 ;	walk.c:101: P1_7 = 0;
                                    499 ;	assignBit
      002099 C2 97            [12]  500 	clr	_P1_7
                                    501 ;	walk.c:102: *OEreg = OE76;
      00209B 90 F0 06         [24]  502 	mov	dptr,#0xf006
      00209E 78 12            [12]  503 	mov	r0,#_OE76
      0020A0 E6               [12]  504 	mov	a,@r0
      0020A1 F0               [24]  505 	movx	@dptr,a
                                    506 ;	walk.c:103: P1_7 = 1;
                                    507 ;	assignBit
      0020A2 D2 97            [12]  508 	setb	_P1_7
                                    509 ;	walk.c:104: OE76 ^= mask;
      0020A4 78 12            [12]  510 	mov	r0,#_OE76
      0020A6 EF               [12]  511 	mov	a,r7
      0020A7 66               [12]  512 	xrl	a,@r0
      0020A8 F6               [12]  513 	mov	@r0,a
                                    514 ;	walk.c:106: return;
                                    515 ;	walk.c:107: }
      0020A9 85 10 81         [24]  516 	mov	sp,_bp
      0020AC D0 10            [24]  517 	pop	_bp
      0020AE 22               [24]  518 	ret
                                    519 ;------------------------------------------------------------
                                    520 ;Allocation info for local variables in function 'update'
                                    521 ;------------------------------------------------------------
                                    522 ;cur                       Allocated to stack - _bp -5
                                    523 ;j                         Allocated to stack - _bp -6
                                    524 ;t                         Allocated to stack - _bp +1
                                    525 ;sloc0                     Allocated to stack - _bp +4
                                    526 ;sloc1                     Allocated to stack - _bp +6
                                    527 ;sloc2                     Allocated to stack - _bp +8
                                    528 ;------------------------------------------------------------
                                    529 ;	walk.c:109: static int update(struct node *t, struct node *cur, char j) {
                                    530 ;	-----------------------------------------
                                    531 ;	 function update
                                    532 ;	-----------------------------------------
      0020AF                        533 _update:
      0020AF C0 10            [24]  534 	push	_bp
      0020B1 85 81 10         [24]  535 	mov	_bp,sp
      0020B4 C0 82            [24]  536 	push	dpl
      0020B6 C0 83            [24]  537 	push	dph
      0020B8 C0 F0            [24]  538 	push	b
      0020BA E5 81            [12]  539 	mov	a,sp
      0020BC 24 07            [12]  540 	add	a,#0x07
      0020BE F5 81            [12]  541 	mov	sp,a
                                    542 ;	walk.c:110: t->r = cur->r + neigh[j].r;
      0020C0 E5 10            [12]  543 	mov	a,_bp
      0020C2 24 FB            [12]  544 	add	a,#0xfb
      0020C4 F8               [12]  545 	mov	r0,a
      0020C5 86 02            [24]  546 	mov	ar2,@r0
      0020C7 08               [12]  547 	inc	r0
      0020C8 86 03            [24]  548 	mov	ar3,@r0
      0020CA 08               [12]  549 	inc	r0
      0020CB 86 04            [24]  550 	mov	ar4,@r0
      0020CD 8A 82            [24]  551 	mov	dpl,r2
      0020CF 8B 83            [24]  552 	mov	dph,r3
      0020D1 8C F0            [24]  553 	mov	b,r4
      0020D3 E5 10            [12]  554 	mov	a,_bp
      0020D5 24 04            [12]  555 	add	a,#0x04
      0020D7 F8               [12]  556 	mov	r0,a
      0020D8 12 2E 50         [24]  557 	lcall	__gptrget
      0020DB F6               [12]  558 	mov	@r0,a
      0020DC A3               [24]  559 	inc	dptr
      0020DD 12 2E 50         [24]  560 	lcall	__gptrget
      0020E0 08               [12]  561 	inc	r0
      0020E1 F6               [12]  562 	mov	@r0,a
      0020E2 E5 10            [12]  563 	mov	a,_bp
      0020E4 24 FA            [12]  564 	add	a,#0xfa
      0020E6 F8               [12]  565 	mov	r0,a
      0020E7 E5 10            [12]  566 	mov	a,_bp
      0020E9 24 06            [12]  567 	add	a,#0x06
      0020EB F9               [12]  568 	mov	r1,a
      0020EC E6               [12]  569 	mov	a,@r0
      0020ED 75 F0 04         [24]  570 	mov	b,#0x04
      0020F0 A4               [48]  571 	mul	ab
      0020F1 F7               [12]  572 	mov	@r1,a
      0020F2 09               [12]  573 	inc	r1
      0020F3 A7 F0            [24]  574 	mov	@r1,b
      0020F5 E5 10            [12]  575 	mov	a,_bp
      0020F7 24 06            [12]  576 	add	a,#0x06
      0020F9 F8               [12]  577 	mov	r0,a
      0020FA E6               [12]  578 	mov	a,@r0
      0020FB 24 34            [12]  579 	add	a,#_neigh
      0020FD F5 82            [12]  580 	mov	dpl,a
      0020FF 08               [12]  581 	inc	r0
      002100 E6               [12]  582 	mov	a,@r0
      002101 34 FF            [12]  583 	addc	a,#(_neigh >> 8)
      002103 F5 83            [12]  584 	mov	dph,a
      002105 E0               [24]  585 	movx	a,@dptr
      002106 FF               [12]  586 	mov	r7,a
      002107 A3               [24]  587 	inc	dptr
      002108 E0               [24]  588 	movx	a,@dptr
      002109 FE               [12]  589 	mov	r6,a
      00210A E5 10            [12]  590 	mov	a,_bp
      00210C 24 04            [12]  591 	add	a,#0x04
      00210E F8               [12]  592 	mov	r0,a
      00210F EF               [12]  593 	mov	a,r7
      002110 26               [12]  594 	add	a,@r0
      002111 FF               [12]  595 	mov	r7,a
      002112 EE               [12]  596 	mov	a,r6
      002113 08               [12]  597 	inc	r0
      002114 36               [12]  598 	addc	a,@r0
      002115 FE               [12]  599 	mov	r6,a
      002116 A8 10            [24]  600 	mov	r0,_bp
      002118 08               [12]  601 	inc	r0
      002119 86 82            [24]  602 	mov	dpl,@r0
      00211B 08               [12]  603 	inc	r0
      00211C 86 83            [24]  604 	mov	dph,@r0
      00211E 08               [12]  605 	inc	r0
      00211F 86 F0            [24]  606 	mov	b,@r0
      002121 EF               [12]  607 	mov	a,r7
      002122 12 2C 45         [24]  608 	lcall	__gptrput
      002125 A3               [24]  609 	inc	dptr
      002126 EE               [12]  610 	mov	a,r6
      002127 12 2C 45         [24]  611 	lcall	__gptrput
                                    612 ;	walk.c:111: t->c = cur->c + neigh[j].c;
      00212A A8 10            [24]  613 	mov	r0,_bp
      00212C 08               [12]  614 	inc	r0
      00212D E5 10            [12]  615 	mov	a,_bp
      00212F 24 08            [12]  616 	add	a,#0x08
      002131 F9               [12]  617 	mov	r1,a
      002132 74 02            [12]  618 	mov	a,#0x02
      002134 26               [12]  619 	add	a,@r0
      002135 F7               [12]  620 	mov	@r1,a
      002136 E4               [12]  621 	clr	a
      002137 08               [12]  622 	inc	r0
      002138 36               [12]  623 	addc	a,@r0
      002139 09               [12]  624 	inc	r1
      00213A F7               [12]  625 	mov	@r1,a
      00213B 08               [12]  626 	inc	r0
      00213C 09               [12]  627 	inc	r1
      00213D E6               [12]  628 	mov	a,@r0
      00213E F7               [12]  629 	mov	@r1,a
      00213F 74 02            [12]  630 	mov	a,#0x02
      002141 2A               [12]  631 	add	a,r2
      002142 FA               [12]  632 	mov	r2,a
      002143 E4               [12]  633 	clr	a
      002144 3B               [12]  634 	addc	a,r3
      002145 FB               [12]  635 	mov	r3,a
      002146 8A 82            [24]  636 	mov	dpl,r2
      002148 8B 83            [24]  637 	mov	dph,r3
      00214A 8C F0            [24]  638 	mov	b,r4
      00214C 12 2E 50         [24]  639 	lcall	__gptrget
      00214F FA               [12]  640 	mov	r2,a
      002150 A3               [24]  641 	inc	dptr
      002151 12 2E 50         [24]  642 	lcall	__gptrget
      002154 FB               [12]  643 	mov	r3,a
      002155 E5 10            [12]  644 	mov	a,_bp
      002157 24 06            [12]  645 	add	a,#0x06
      002159 F8               [12]  646 	mov	r0,a
      00215A E6               [12]  647 	mov	a,@r0
      00215B 24 34            [12]  648 	add	a,#_neigh
      00215D FC               [12]  649 	mov	r4,a
      00215E 08               [12]  650 	inc	r0
      00215F E6               [12]  651 	mov	a,@r0
      002160 34 FF            [12]  652 	addc	a,#(_neigh >> 8)
      002162 FD               [12]  653 	mov	r5,a
      002163 8C 82            [24]  654 	mov	dpl,r4
      002165 8D 83            [24]  655 	mov	dph,r5
      002167 A3               [24]  656 	inc	dptr
      002168 A3               [24]  657 	inc	dptr
      002169 E0               [24]  658 	movx	a,@dptr
      00216A FC               [12]  659 	mov	r4,a
      00216B A3               [24]  660 	inc	dptr
      00216C E0               [24]  661 	movx	a,@dptr
      00216D FD               [12]  662 	mov	r5,a
      00216E EC               [12]  663 	mov	a,r4
      00216F 2A               [12]  664 	add	a,r2
      002170 FA               [12]  665 	mov	r2,a
      002171 ED               [12]  666 	mov	a,r5
      002172 3B               [12]  667 	addc	a,r3
      002173 FB               [12]  668 	mov	r3,a
      002174 E5 10            [12]  669 	mov	a,_bp
      002176 24 08            [12]  670 	add	a,#0x08
      002178 F8               [12]  671 	mov	r0,a
      002179 86 82            [24]  672 	mov	dpl,@r0
      00217B 08               [12]  673 	inc	r0
      00217C 86 83            [24]  674 	mov	dph,@r0
      00217E 08               [12]  675 	inc	r0
      00217F 86 F0            [24]  676 	mov	b,@r0
      002181 EA               [12]  677 	mov	a,r2
      002182 12 2C 45         [24]  678 	lcall	__gptrput
      002185 A3               [24]  679 	inc	dptr
      002186 EB               [12]  680 	mov	a,r3
      002187 12 2C 45         [24]  681 	lcall	__gptrput
                                    682 ;	walk.c:113: if (t->r < 0) t->r += ROWS;
      00218A A8 10            [24]  683 	mov	r0,_bp
      00218C 08               [12]  684 	inc	r0
      00218D 86 82            [24]  685 	mov	dpl,@r0
      00218F 08               [12]  686 	inc	r0
      002190 86 83            [24]  687 	mov	dph,@r0
      002192 08               [12]  688 	inc	r0
      002193 86 F0            [24]  689 	mov	b,@r0
      002195 12 2E 50         [24]  690 	lcall	__gptrget
      002198 FD               [12]  691 	mov	r5,a
      002199 A3               [24]  692 	inc	dptr
      00219A 12 2E 50         [24]  693 	lcall	__gptrget
      00219D FC               [12]  694 	mov	r4,a
      00219E EE               [12]  695 	mov	a,r6
      00219F 30 E7 1D         [24]  696 	jnb	acc.7,00104$
      0021A2 74 30            [12]  697 	mov	a,#0x30
      0021A4 2D               [12]  698 	add	a,r5
      0021A5 FF               [12]  699 	mov	r7,a
      0021A6 E4               [12]  700 	clr	a
      0021A7 3C               [12]  701 	addc	a,r4
      0021A8 FE               [12]  702 	mov	r6,a
      0021A9 A8 10            [24]  703 	mov	r0,_bp
      0021AB 08               [12]  704 	inc	r0
      0021AC 86 82            [24]  705 	mov	dpl,@r0
      0021AE 08               [12]  706 	inc	r0
      0021AF 86 83            [24]  707 	mov	dph,@r0
      0021B1 08               [12]  708 	inc	r0
      0021B2 86 F0            [24]  709 	mov	b,@r0
      0021B4 EF               [12]  710 	mov	a,r7
      0021B5 12 2C 45         [24]  711 	lcall	__gptrput
      0021B8 A3               [24]  712 	inc	dptr
      0021B9 EE               [12]  713 	mov	a,r6
      0021BA 12 2C 45         [24]  714 	lcall	__gptrput
      0021BD 80 27            [24]  715 	sjmp	00105$
      0021BF                        716 00104$:
                                    717 ;	walk.c:114: else if (t->r >= ROWS) t->r -= ROWS;
      0021BF C3               [12]  718 	clr	c
      0021C0 ED               [12]  719 	mov	a,r5
      0021C1 94 30            [12]  720 	subb	a,#0x30
      0021C3 EC               [12]  721 	mov	a,r4
      0021C4 64 80            [12]  722 	xrl	a,#0x80
      0021C6 94 80            [12]  723 	subb	a,#0x80
      0021C8 40 1C            [24]  724 	jc	00105$
      0021CA ED               [12]  725 	mov	a,r5
      0021CB 24 D0            [12]  726 	add	a,#0xd0
      0021CD FD               [12]  727 	mov	r5,a
      0021CE EC               [12]  728 	mov	a,r4
      0021CF 34 FF            [12]  729 	addc	a,#0xff
      0021D1 FC               [12]  730 	mov	r4,a
      0021D2 A8 10            [24]  731 	mov	r0,_bp
      0021D4 08               [12]  732 	inc	r0
      0021D5 86 82            [24]  733 	mov	dpl,@r0
      0021D7 08               [12]  734 	inc	r0
      0021D8 86 83            [24]  735 	mov	dph,@r0
      0021DA 08               [12]  736 	inc	r0
      0021DB 86 F0            [24]  737 	mov	b,@r0
      0021DD ED               [12]  738 	mov	a,r5
      0021DE 12 2C 45         [24]  739 	lcall	__gptrput
      0021E1 A3               [24]  740 	inc	dptr
      0021E2 EC               [12]  741 	mov	a,r4
      0021E3 12 2C 45         [24]  742 	lcall	__gptrput
      0021E6                        743 00105$:
                                    744 ;	walk.c:115: if (t->c < 0) t->c += COLS;
      0021E6 E5 10            [12]  745 	mov	a,_bp
      0021E8 24 08            [12]  746 	add	a,#0x08
      0021EA F8               [12]  747 	mov	r0,a
      0021EB 86 82            [24]  748 	mov	dpl,@r0
      0021ED 08               [12]  749 	inc	r0
      0021EE 86 83            [24]  750 	mov	dph,@r0
      0021F0 08               [12]  751 	inc	r0
      0021F1 86 F0            [24]  752 	mov	b,@r0
      0021F3 12 2E 50         [24]  753 	lcall	__gptrget
      0021F6 A3               [24]  754 	inc	dptr
      0021F7 12 2E 50         [24]  755 	lcall	__gptrget
      0021FA 30 E7 35         [24]  756 	jnb	acc.7,00109$
      0021FD E5 10            [12]  757 	mov	a,_bp
      0021FF 24 08            [12]  758 	add	a,#0x08
      002201 F8               [12]  759 	mov	r0,a
      002202 86 82            [24]  760 	mov	dpl,@r0
      002204 08               [12]  761 	inc	r0
      002205 86 83            [24]  762 	mov	dph,@r0
      002207 08               [12]  763 	inc	r0
      002208 86 F0            [24]  764 	mov	b,@r0
      00220A 12 2E 50         [24]  765 	lcall	__gptrget
      00220D FE               [12]  766 	mov	r6,a
      00220E A3               [24]  767 	inc	dptr
      00220F 12 2E 50         [24]  768 	lcall	__gptrget
      002212 FF               [12]  769 	mov	r7,a
      002213 74 C9            [12]  770 	mov	a,#0xc9
      002215 2E               [12]  771 	add	a,r6
      002216 FE               [12]  772 	mov	r6,a
      002217 E4               [12]  773 	clr	a
      002218 3F               [12]  774 	addc	a,r7
      002219 FF               [12]  775 	mov	r7,a
      00221A E5 10            [12]  776 	mov	a,_bp
      00221C 24 08            [12]  777 	add	a,#0x08
      00221E F8               [12]  778 	mov	r0,a
      00221F 86 82            [24]  779 	mov	dpl,@r0
      002221 08               [12]  780 	inc	r0
      002222 86 83            [24]  781 	mov	dph,@r0
      002224 08               [12]  782 	inc	r0
      002225 86 F0            [24]  783 	mov	b,@r0
      002227 EE               [12]  784 	mov	a,r6
      002228 12 2C 45         [24]  785 	lcall	__gptrput
      00222B A3               [24]  786 	inc	dptr
      00222C EF               [12]  787 	mov	a,r7
      00222D 12 2C 45         [24]  788 	lcall	__gptrput
      002230 80 55            [24]  789 	sjmp	00110$
      002232                        790 00109$:
                                    791 ;	walk.c:116: else if (t->c >= COLS) t->c -= COLS;
      002232 E5 10            [12]  792 	mov	a,_bp
      002234 24 08            [12]  793 	add	a,#0x08
      002236 F8               [12]  794 	mov	r0,a
      002237 86 82            [24]  795 	mov	dpl,@r0
      002239 08               [12]  796 	inc	r0
      00223A 86 83            [24]  797 	mov	dph,@r0
      00223C 08               [12]  798 	inc	r0
      00223D 86 F0            [24]  799 	mov	b,@r0
      00223F 12 2E 50         [24]  800 	lcall	__gptrget
      002242 FE               [12]  801 	mov	r6,a
      002243 A3               [24]  802 	inc	dptr
      002244 12 2E 50         [24]  803 	lcall	__gptrget
      002247 FF               [12]  804 	mov	r7,a
      002248 C3               [12]  805 	clr	c
      002249 EE               [12]  806 	mov	a,r6
      00224A 94 C9            [12]  807 	subb	a,#0xc9
      00224C EF               [12]  808 	mov	a,r7
      00224D 64 80            [12]  809 	xrl	a,#0x80
      00224F 94 80            [12]  810 	subb	a,#0x80
      002251 40 34            [24]  811 	jc	00110$
      002253 E5 10            [12]  812 	mov	a,_bp
      002255 24 08            [12]  813 	add	a,#0x08
      002257 F8               [12]  814 	mov	r0,a
      002258 86 82            [24]  815 	mov	dpl,@r0
      00225A 08               [12]  816 	inc	r0
      00225B 86 83            [24]  817 	mov	dph,@r0
      00225D 08               [12]  818 	inc	r0
      00225E 86 F0            [24]  819 	mov	b,@r0
      002260 12 2E 50         [24]  820 	lcall	__gptrget
      002263 FE               [12]  821 	mov	r6,a
      002264 A3               [24]  822 	inc	dptr
      002265 12 2E 50         [24]  823 	lcall	__gptrget
      002268 FF               [12]  824 	mov	r7,a
      002269 EE               [12]  825 	mov	a,r6
      00226A 24 37            [12]  826 	add	a,#0x37
      00226C FE               [12]  827 	mov	r6,a
      00226D EF               [12]  828 	mov	a,r7
      00226E 34 FF            [12]  829 	addc	a,#0xff
      002270 FF               [12]  830 	mov	r7,a
      002271 E5 10            [12]  831 	mov	a,_bp
      002273 24 08            [12]  832 	add	a,#0x08
      002275 F8               [12]  833 	mov	r0,a
      002276 86 82            [24]  834 	mov	dpl,@r0
      002278 08               [12]  835 	inc	r0
      002279 86 83            [24]  836 	mov	dph,@r0
      00227B 08               [12]  837 	inc	r0
      00227C 86 F0            [24]  838 	mov	b,@r0
      00227E EE               [12]  839 	mov	a,r6
      00227F 12 2C 45         [24]  840 	lcall	__gptrput
      002282 A3               [24]  841 	inc	dptr
      002283 EF               [12]  842 	mov	a,r7
      002284 12 2C 45         [24]  843 	lcall	__gptrput
      002287                        844 00110$:
                                    845 ;	walk.c:118: if (g[t->r][t->c] == 0xaa) return 0;
      002287 A8 10            [24]  846 	mov	r0,_bp
      002289 08               [12]  847 	inc	r0
      00228A 86 82            [24]  848 	mov	dpl,@r0
      00228C 08               [12]  849 	inc	r0
      00228D 86 83            [24]  850 	mov	dph,@r0
      00228F 08               [12]  851 	inc	r0
      002290 86 F0            [24]  852 	mov	b,@r0
      002292 12 2E 50         [24]  853 	lcall	__gptrget
      002295 FE               [12]  854 	mov	r6,a
      002296 A3               [24]  855 	inc	dptr
      002297 12 2E 50         [24]  856 	lcall	__gptrget
      00229A FF               [12]  857 	mov	r7,a
      00229B C0 06            [24]  858 	push	ar6
      00229D C0 07            [24]  859 	push	ar7
      00229F 90 00 C9         [24]  860 	mov	dptr,#0x00c9
      0022A2 12 2C 60         [24]  861 	lcall	__mulint
      0022A5 AE 82            [24]  862 	mov	r6,dpl
      0022A7 AF 83            [24]  863 	mov	r7,dph
      0022A9 15 81            [12]  864 	dec	sp
      0022AB 15 81            [12]  865 	dec	sp
      0022AD EE               [12]  866 	mov	a,r6
      0022AE 24 80            [12]  867 	add	a,#_g
      0022B0 FE               [12]  868 	mov	r6,a
      0022B1 EF               [12]  869 	mov	a,r7
      0022B2 34 42            [12]  870 	addc	a,#(_g >> 8)
      0022B4 FF               [12]  871 	mov	r7,a
      0022B5 E5 10            [12]  872 	mov	a,_bp
      0022B7 24 08            [12]  873 	add	a,#0x08
      0022B9 F8               [12]  874 	mov	r0,a
      0022BA 86 82            [24]  875 	mov	dpl,@r0
      0022BC 08               [12]  876 	inc	r0
      0022BD 86 83            [24]  877 	mov	dph,@r0
      0022BF 08               [12]  878 	inc	r0
      0022C0 86 F0            [24]  879 	mov	b,@r0
      0022C2 12 2E 50         [24]  880 	lcall	__gptrget
      0022C5 FC               [12]  881 	mov	r4,a
      0022C6 A3               [24]  882 	inc	dptr
      0022C7 12 2E 50         [24]  883 	lcall	__gptrget
      0022CA FD               [12]  884 	mov	r5,a
      0022CB EC               [12]  885 	mov	a,r4
      0022CC 2E               [12]  886 	add	a,r6
      0022CD F5 82            [12]  887 	mov	dpl,a
      0022CF ED               [12]  888 	mov	a,r5
      0022D0 3F               [12]  889 	addc	a,r7
      0022D1 F5 83            [12]  890 	mov	dph,a
      0022D3 E0               [24]  891 	movx	a,@dptr
      0022D4 FF               [12]  892 	mov	r7,a
      0022D5 BF AA 05         [24]  893 	cjne	r7,#0xaa,00114$
      0022D8 90 00 00         [24]  894 	mov	dptr,#0x0000
      0022DB 80 59            [24]  895 	sjmp	00116$
      0022DD                        896 00114$:
                                    897 ;	walk.c:119: else if (g[t->r][t->c] != 0x55) bang();
      0022DD A8 10            [24]  898 	mov	r0,_bp
      0022DF 08               [12]  899 	inc	r0
      0022E0 86 82            [24]  900 	mov	dpl,@r0
      0022E2 08               [12]  901 	inc	r0
      0022E3 86 83            [24]  902 	mov	dph,@r0
      0022E5 08               [12]  903 	inc	r0
      0022E6 86 F0            [24]  904 	mov	b,@r0
      0022E8 12 2E 50         [24]  905 	lcall	__gptrget
      0022EB FE               [12]  906 	mov	r6,a
      0022EC A3               [24]  907 	inc	dptr
      0022ED 12 2E 50         [24]  908 	lcall	__gptrget
      0022F0 FF               [12]  909 	mov	r7,a
      0022F1 C0 06            [24]  910 	push	ar6
      0022F3 C0 07            [24]  911 	push	ar7
      0022F5 90 00 C9         [24]  912 	mov	dptr,#0x00c9
      0022F8 12 2C 60         [24]  913 	lcall	__mulint
      0022FB AE 82            [24]  914 	mov	r6,dpl
      0022FD AF 83            [24]  915 	mov	r7,dph
      0022FF 15 81            [12]  916 	dec	sp
      002301 15 81            [12]  917 	dec	sp
      002303 EE               [12]  918 	mov	a,r6
      002304 24 80            [12]  919 	add	a,#_g
      002306 FE               [12]  920 	mov	r6,a
      002307 EF               [12]  921 	mov	a,r7
      002308 34 42            [12]  922 	addc	a,#(_g >> 8)
      00230A FF               [12]  923 	mov	r7,a
      00230B E5 10            [12]  924 	mov	a,_bp
      00230D 24 08            [12]  925 	add	a,#0x08
      00230F F8               [12]  926 	mov	r0,a
      002310 86 82            [24]  927 	mov	dpl,@r0
      002312 08               [12]  928 	inc	r0
      002313 86 83            [24]  929 	mov	dph,@r0
      002315 08               [12]  930 	inc	r0
      002316 86 F0            [24]  931 	mov	b,@r0
      002318 12 2E 50         [24]  932 	lcall	__gptrget
      00231B FC               [12]  933 	mov	r4,a
      00231C A3               [24]  934 	inc	dptr
      00231D 12 2E 50         [24]  935 	lcall	__gptrget
      002320 FD               [12]  936 	mov	r5,a
      002321 EC               [12]  937 	mov	a,r4
      002322 2E               [12]  938 	add	a,r6
      002323 F5 82            [12]  939 	mov	dpl,a
      002325 ED               [12]  940 	mov	a,r5
      002326 3F               [12]  941 	addc	a,r7
      002327 F5 83            [12]  942 	mov	dph,a
      002329 E0               [24]  943 	movx	a,@dptr
      00232A FF               [12]  944 	mov	r7,a
      00232B BF 55 02         [24]  945 	cjne	r7,#0x55,00148$
      00232E 80 03            [24]  946 	sjmp	00115$
      002330                        947 00148$:
      002330 12 20 82         [24]  948 	lcall	_bang
      002333                        949 00115$:
                                    950 ;	walk.c:121: return 1;
      002333 90 00 01         [24]  951 	mov	dptr,#0x0001
      002336                        952 00116$:
                                    953 ;	walk.c:122: }
      002336 85 10 81         [24]  954 	mov	sp,_bp
      002339 D0 10            [24]  955 	pop	_bp
      00233B 22               [24]  956 	ret
                                    957 ;------------------------------------------------------------
                                    958 ;Allocation info for local variables in function 'walk'
                                    959 ;------------------------------------------------------------
                                    960 ;nstart                    Allocated to registers 
                                    961 ;cur                       Allocated to stack - _bp +10
                                    962 ;t                         Allocated to stack - _bp +14
                                    963 ;j                         Allocated to stack - _bp +18
                                    964 ;f                         Allocated to registers r3 
                                    965 ;sloc0                     Allocated to stack - _bp +1
                                    966 ;sloc1                     Allocated to stack - _bp +2
                                    967 ;sloc2                     Allocated to stack - _bp +3
                                    968 ;sloc3                     Allocated to stack - _bp +17
                                    969 ;sloc4                     Allocated to stack - _bp +4
                                    970 ;sloc5                     Allocated to stack - _bp +5
                                    971 ;sloc6                     Allocated to stack - _bp +6
                                    972 ;sloc7                     Allocated to stack - _bp +7
                                    973 ;------------------------------------------------------------
                                    974 ;	walk.c:124: static void walk(struct node *nstart) {
                                    975 ;	-----------------------------------------
                                    976 ;	 function walk
                                    977 ;	-----------------------------------------
      00233C                        978 _walk:
      00233C C0 10            [24]  979 	push	_bp
      00233E E5 81            [12]  980 	mov	a,sp
      002340 F5 10            [12]  981 	mov	_bp,a
      002342 24 12            [12]  982 	add	a,#0x12
      002344 F5 81            [12]  983 	mov	sp,a
      002346 AD 82            [24]  984 	mov	r5,dpl
      002348 AE 83            [24]  985 	mov	r6,dph
      00234A AF F0            [24]  986 	mov	r7,b
                                    987 ;	walk.c:128: cur = *nstart;
      00234C E5 10            [12]  988 	mov	a,_bp
      00234E 24 0A            [12]  989 	add	a,#0x0a
      002350 F9               [12]  990 	mov	r1,a
      002351 FA               [12]  991 	mov	r2,a
      002352 7B 00            [12]  992 	mov	r3,#0x00
      002354 7C 40            [12]  993 	mov	r4,#0x40
      002356 C0 01            [24]  994 	push	ar1
      002358 74 04            [12]  995 	mov	a,#0x04
      00235A C0 E0            [24]  996 	push	acc
      00235C E4               [12]  997 	clr	a
      00235D C0 E0            [24]  998 	push	acc
      00235F C0 05            [24]  999 	push	ar5
      002361 C0 06            [24] 1000 	push	ar6
      002363 C0 07            [24] 1001 	push	ar7
      002365 8A 82            [24] 1002 	mov	dpl,r2
      002367 8B 83            [24] 1003 	mov	dph,r3
      002369 8C F0            [24] 1004 	mov	b,r4
      00236B 12 2C FE         [24] 1005 	lcall	___memcpy
      00236E E5 81            [12] 1006 	mov	a,sp
      002370 24 FB            [12] 1007 	add	a,#0xfb
      002372 F5 81            [12] 1008 	mov	sp,a
      002374 D0 01            [24] 1009 	pop	ar1
                                   1010 ;	walk.c:130: process:
      002376 E5 10            [12] 1011 	mov	a,_bp
      002378 24 06            [12] 1012 	add	a,#0x06
      00237A F8               [12] 1013 	mov	r0,a
      00237B A6 01            [24] 1014 	mov	@r0,ar1
      00237D E5 10            [12] 1015 	mov	a,_bp
      00237F 24 0E            [12] 1016 	add	a,#0x0e
      002381 FE               [12] 1017 	mov	r6,a
      002382 E5 10            [12] 1018 	mov	a,_bp
      002384 24 03            [12] 1019 	add	a,#0x03
      002386 F8               [12] 1020 	mov	r0,a
      002387 A6 01            [24] 1021 	mov	@r0,ar1
      002389 E5 10            [12] 1022 	mov	a,_bp
      00238B 24 05            [12] 1023 	add	a,#0x05
      00238D F8               [12] 1024 	mov	r0,a
      00238E A6 01            [24] 1025 	mov	@r0,ar1
      002390 E5 10            [12] 1026 	mov	a,_bp
      002392 24 04            [12] 1027 	add	a,#0x04
      002394 F8               [12] 1028 	mov	r0,a
      002395 A6 06            [24] 1029 	mov	@r0,ar6
      002397 89 02            [24] 1030 	mov	ar2,r1
      002399 A8 10            [24] 1031 	mov	r0,_bp
      00239B 08               [12] 1032 	inc	r0
      00239C A6 06            [24] 1033 	mov	@r0,ar6
      00239E A8 10            [24] 1034 	mov	r0,_bp
      0023A0 08               [12] 1035 	inc	r0
      0023A1 08               [12] 1036 	inc	r0
      0023A2 A6 01            [24] 1037 	mov	@r0,ar1
      0023A4 74 02            [12] 1038 	mov	a,#0x02
      0023A6 29               [12] 1039 	add	a,r1
      0023A7 F8               [12] 1040 	mov	r0,a
      0023A8                       1041 00101$:
                                   1042 ;	walk.c:131: g[cur.r][cur.c] = 0xaa;
      0023A8 C0 02            [24] 1043 	push	ar2
      0023AA 87 02            [24] 1044 	mov	ar2,@r1
      0023AC 09               [12] 1045 	inc	r1
      0023AD 87 05            [24] 1046 	mov	ar5,@r1
      0023AF 19               [12] 1047 	dec	r1
      0023B0 C0 06            [24] 1048 	push	ar6
      0023B2 C0 01            [24] 1049 	push	ar1
      0023B4 C0 00            [24] 1050 	push	ar0
      0023B6 C0 02            [24] 1051 	push	ar2
      0023B8 C0 05            [24] 1052 	push	ar5
      0023BA 90 00 C9         [24] 1053 	mov	dptr,#0x00c9
      0023BD 12 2C 60         [24] 1054 	lcall	__mulint
      0023C0 AA 82            [24] 1055 	mov	r2,dpl
      0023C2 AD 83            [24] 1056 	mov	r5,dph
      0023C4 15 81            [12] 1057 	dec	sp
      0023C6 15 81            [12] 1058 	dec	sp
      0023C8 D0 00            [24] 1059 	pop	ar0
      0023CA D0 01            [24] 1060 	pop	ar1
      0023CC EA               [12] 1061 	mov	a,r2
      0023CD 24 80            [12] 1062 	add	a,#_g
      0023CF FF               [12] 1063 	mov	r7,a
      0023D0 ED               [12] 1064 	mov	a,r5
      0023D1 34 42            [12] 1065 	addc	a,#(_g >> 8)
      0023D3 FC               [12] 1066 	mov	r4,a
      0023D4 86 02            [24] 1067 	mov	ar2,@r0
      0023D6 08               [12] 1068 	inc	r0
      0023D7 86 05            [24] 1069 	mov	ar5,@r0
      0023D9 18               [12] 1070 	dec	r0
      0023DA EA               [12] 1071 	mov	a,r2
      0023DB 2F               [12] 1072 	add	a,r7
      0023DC F5 82            [12] 1073 	mov	dpl,a
      0023DE ED               [12] 1074 	mov	a,r5
      0023DF 3C               [12] 1075 	addc	a,r4
      0023E0 F5 83            [12] 1076 	mov	dph,a
      0023E2 74 AA            [12] 1077 	mov	a,#0xaa
      0023E4 F0               [24] 1078 	movx	@dptr,a
                                   1079 ;	walk.c:132: printf("\033[%d;%dHo", cur.r + 4, cur.c + 1);
      0023E5 86 02            [24] 1080 	mov	ar2,@r0
      0023E7 08               [12] 1081 	inc	r0
      0023E8 86 05            [24] 1082 	mov	ar5,@r0
      0023EA 18               [12] 1083 	dec	r0
      0023EB 74 01            [12] 1084 	mov	a,#0x01
      0023ED 2A               [12] 1085 	add	a,r2
      0023EE FF               [12] 1086 	mov	r7,a
      0023EF E4               [12] 1087 	clr	a
      0023F0 3D               [12] 1088 	addc	a,r5
      0023F1 FC               [12] 1089 	mov	r4,a
      0023F2 87 02            [24] 1090 	mov	ar2,@r1
      0023F4 09               [12] 1091 	inc	r1
      0023F5 87 05            [24] 1092 	mov	ar5,@r1
      0023F7 19               [12] 1093 	dec	r1
      0023F8 74 04            [12] 1094 	mov	a,#0x04
      0023FA 2A               [12] 1095 	add	a,r2
      0023FB FA               [12] 1096 	mov	r2,a
      0023FC E4               [12] 1097 	clr	a
      0023FD 3D               [12] 1098 	addc	a,r5
      0023FE FD               [12] 1099 	mov	r5,a
      0023FF C0 02            [24] 1100 	push	ar2
      002401 C0 01            [24] 1101 	push	ar1
      002403 C0 00            [24] 1102 	push	ar0
      002405 C0 07            [24] 1103 	push	ar7
      002407 C0 04            [24] 1104 	push	ar4
      002409 C0 02            [24] 1105 	push	ar2
      00240B C0 05            [24] 1106 	push	ar5
      00240D 74 57            [12] 1107 	mov	a,#___str_1
      00240F C0 E0            [24] 1108 	push	acc
      002411 74 41            [12] 1109 	mov	a,#(___str_1 >> 8)
      002413 C0 E0            [24] 1110 	push	acc
      002415 74 80            [12] 1111 	mov	a,#0x80
      002417 C0 E0            [24] 1112 	push	acc
      002419 12 2E 17         [24] 1113 	lcall	_printf
      00241C E5 81            [12] 1114 	mov	a,sp
      00241E 24 F9            [12] 1115 	add	a,#0xf9
      002420 F5 81            [12] 1116 	mov	sp,a
                                   1117 ;	walk.c:133: flashOE(OE76_MASK7);
      002422 75 82 80         [24] 1118 	mov	dpl,#0x80
      002425 12 20 8E         [24] 1119 	lcall	_flashOE
      002428 D0 00            [24] 1120 	pop	ar0
      00242A D0 01            [24] 1121 	pop	ar1
      00242C D0 02            [24] 1122 	pop	ar2
      00242E D0 06            [24] 1123 	pop	ar6
                                   1124 ;	walk.c:161: return;
      002430 D0 02            [24] 1125 	pop	ar2
                                   1126 ;	walk.c:135: next:
      002432                       1127 00102$:
                                   1128 ;	walk.c:136: printf("\033[2;1H% 8d% 8d% 8d", sp, cur.r, cur.c);
      002432 C0 02            [24] 1129 	push	ar2
      002434 86 07            [24] 1130 	mov	ar7,@r0
      002436 08               [12] 1131 	inc	r0
      002437 86 04            [24] 1132 	mov	ar4,@r0
      002439 18               [12] 1133 	dec	r0
      00243A 87 02            [24] 1134 	mov	ar2,@r1
      00243C 09               [12] 1135 	inc	r1
      00243D 87 05            [24] 1136 	mov	ar5,@r1
      00243F 19               [12] 1137 	dec	r1
      002440 C0 06            [24] 1138 	push	ar6
      002442 C0 02            [24] 1139 	push	ar2
      002444 C0 01            [24] 1140 	push	ar1
      002446 C0 00            [24] 1141 	push	ar0
      002448 C0 07            [24] 1142 	push	ar7
      00244A C0 04            [24] 1143 	push	ar4
      00244C C0 02            [24] 1144 	push	ar2
      00244E C0 05            [24] 1145 	push	ar5
      002450 90 FE F0         [24] 1146 	mov	dptr,#_sp
      002453 E0               [24] 1147 	movx	a,@dptr
      002454 C0 E0            [24] 1148 	push	acc
      002456 A3               [24] 1149 	inc	dptr
      002457 E0               [24] 1150 	movx	a,@dptr
      002458 C0 E0            [24] 1151 	push	acc
      00245A 74 61            [12] 1152 	mov	a,#___str_2
      00245C C0 E0            [24] 1153 	push	acc
      00245E 74 41            [12] 1154 	mov	a,#(___str_2 >> 8)
      002460 C0 E0            [24] 1155 	push	acc
      002462 74 80            [12] 1156 	mov	a,#0x80
      002464 C0 E0            [24] 1157 	push	acc
      002466 12 2E 17         [24] 1158 	lcall	_printf
      002469 E5 81            [12] 1159 	mov	a,sp
      00246B 24 F7            [12] 1160 	add	a,#0xf7
      00246D F5 81            [12] 1161 	mov	sp,a
      00246F D0 00            [24] 1162 	pop	ar0
      002471 D0 01            [24] 1163 	pop	ar1
      002473 D0 02            [24] 1164 	pop	ar2
      002475 D0 06            [24] 1165 	pop	ar6
                                   1166 ;	walk.c:138: for (j = 0, f = 0; j < NMAX; j++) {
      002477 7B 00            [12] 1167 	mov	r3,#0x00
      002479 C0 00            [24] 1168 	push	ar0
      00247B E5 10            [12] 1169 	mov	a,_bp
      00247D 24 12            [12] 1170 	add	a,#0x12
      00247F F8               [12] 1171 	mov	r0,a
      002480 76 00            [12] 1172 	mov	@r0,#0x00
      002482 D0 00            [24] 1173 	pop	ar0
                                   1174 ;	walk.c:161: return;
      002484 D0 02            [24] 1175 	pop	ar2
                                   1176 ;	walk.c:138: for (j = 0, f = 0; j < NMAX; j++) {
      002486                       1177 00119$:
      002486 C0 00            [24] 1178 	push	ar0
      002488 E5 10            [12] 1179 	mov	a,_bp
      00248A 24 12            [12] 1180 	add	a,#0x12
      00248C F8               [12] 1181 	mov	r0,a
      00248D B6 10 00         [24] 1182 	cjne	@r0,#0x10,00159$
      002490                       1183 00159$:
      002490 D0 00            [24] 1184 	pop	ar0
      002492 40 03            [24] 1185 	jc	00160$
      002494 02 25 14         [24] 1186 	ljmp	00106$
      002497                       1187 00160$:
                                   1188 ;	walk.c:139: if (!update(&t, &cur, j)) continue;
      002497 C0 02            [24] 1189 	push	ar2
      002499 C0 00            [24] 1190 	push	ar0
      00249B E5 10            [12] 1191 	mov	a,_bp
      00249D 24 06            [12] 1192 	add	a,#0x06
      00249F F8               [12] 1193 	mov	r0,a
      0024A0 C0 01            [24] 1194 	push	ar1
      0024A2 E5 10            [12] 1195 	mov	a,_bp
      0024A4 24 07            [12] 1196 	add	a,#0x07
      0024A6 F9               [12] 1197 	mov	r1,a
      0024A7 E6               [12] 1198 	mov	a,@r0
      0024A8 F7               [12] 1199 	mov	@r1,a
      0024A9 09               [12] 1200 	inc	r1
      0024AA 77 00            [12] 1201 	mov	@r1,#0x00
      0024AC 09               [12] 1202 	inc	r1
      0024AD 77 40            [12] 1203 	mov	@r1,#0x40
      0024AF D0 01            [24] 1204 	pop	ar1
      0024B1 D0 00            [24] 1205 	pop	ar0
      0024B3 8E 04            [24] 1206 	mov	ar4,r6
      0024B5 7D 00            [12] 1207 	mov	r5,#0x00
      0024B7 7F 40            [12] 1208 	mov	r7,#0x40
      0024B9 C0 06            [24] 1209 	push	ar6
      0024BB C0 03            [24] 1210 	push	ar3
      0024BD C0 02            [24] 1211 	push	ar2
      0024BF C0 01            [24] 1212 	push	ar1
      0024C1 C0 00            [24] 1213 	push	ar0
      0024C3 85 00 F0         [24] 1214 	mov	b,ar0
      0024C6 E5 10            [12] 1215 	mov	a,_bp
      0024C8 24 12            [12] 1216 	add	a,#0x12
      0024CA F8               [12] 1217 	mov	r0,a
      0024CB E6               [12] 1218 	mov	a,@r0
      0024CC C0 E0            [24] 1219 	push	acc
      0024CE A8 F0            [24] 1220 	mov	r0,b
      0024D0 85 00 F0         [24] 1221 	mov	b,ar0
      0024D3 E5 10            [12] 1222 	mov	a,_bp
      0024D5 24 07            [12] 1223 	add	a,#0x07
      0024D7 F8               [12] 1224 	mov	r0,a
      0024D8 E6               [12] 1225 	mov	a,@r0
      0024D9 C0 E0            [24] 1226 	push	acc
      0024DB 08               [12] 1227 	inc	r0
      0024DC E6               [12] 1228 	mov	a,@r0
      0024DD C0 E0            [24] 1229 	push	acc
      0024DF 08               [12] 1230 	inc	r0
      0024E0 E6               [12] 1231 	mov	a,@r0
      0024E1 C0 E0            [24] 1232 	push	acc
      0024E3 8C 82            [24] 1233 	mov	dpl,r4
      0024E5 8D 83            [24] 1234 	mov	dph,r5
      0024E7 8F F0            [24] 1235 	mov	b,r7
      0024E9 12 20 AF         [24] 1236 	lcall	_update
      0024EC AD 82            [24] 1237 	mov	r5,dpl
      0024EE AF 83            [24] 1238 	mov	r7,dph
      0024F0 E5 81            [12] 1239 	mov	a,sp
      0024F2 24 FC            [12] 1240 	add	a,#0xfc
      0024F4 F5 81            [12] 1241 	mov	sp,a
      0024F6 D0 00            [24] 1242 	pop	ar0
      0024F8 D0 01            [24] 1243 	pop	ar1
      0024FA D0 02            [24] 1244 	pop	ar2
      0024FC D0 03            [24] 1245 	pop	ar3
      0024FE D0 06            [24] 1246 	pop	ar6
      002500 D0 02            [24] 1247 	pop	ar2
      002502 ED               [12] 1248 	mov	a,r5
      002503 4F               [12] 1249 	orl	a,r7
      002504 60 01            [24] 1250 	jz	00105$
                                   1251 ;	walk.c:140: f++;
      002506 0B               [12] 1252 	inc	r3
      002507                       1253 00105$:
                                   1254 ;	walk.c:138: for (j = 0, f = 0; j < NMAX; j++) {
      002507 C0 00            [24] 1255 	push	ar0
      002509 E5 10            [12] 1256 	mov	a,_bp
      00250B 24 12            [12] 1257 	add	a,#0x12
      00250D F8               [12] 1258 	mov	r0,a
      00250E 06               [12] 1259 	inc	@r0
      00250F D0 00            [24] 1260 	pop	ar0
      002511 02 24 86         [24] 1261 	ljmp	00119$
      002514                       1262 00106$:
                                   1263 ;	walk.c:143: if (f) {
      002514 EB               [12] 1264 	mov	a,r3
      002515 70 03            [24] 1265 	jnz	00162$
      002517 02 26 4C         [24] 1266 	ljmp	00115$
      00251A                       1267 00162$:
                                   1268 ;	walk.c:144: while (1) {
      00251A                       1269 00112$:
                                   1270 ;	walk.c:145: j = rand() % NMAX;
      00251A C0 02            [24] 1271 	push	ar2
      00251C C0 06            [24] 1272 	push	ar6
      00251E C0 02            [24] 1273 	push	ar2
      002520 C0 01            [24] 1274 	push	ar1
      002522 C0 00            [24] 1275 	push	ar0
      002524 12 2B 68         [24] 1276 	lcall	_rand
      002527 AD 82            [24] 1277 	mov	r5,dpl
      002529 AF 83            [24] 1278 	mov	r7,dph
      00252B 74 10            [12] 1279 	mov	a,#0x10
      00252D C0 E0            [24] 1280 	push	acc
      00252F E4               [12] 1281 	clr	a
      002530 C0 E0            [24] 1282 	push	acc
      002532 8D 82            [24] 1283 	mov	dpl,r5
      002534 8F 83            [24] 1284 	mov	dph,r7
      002536 12 2E 6C         [24] 1285 	lcall	__modsint
      002539 AD 82            [24] 1286 	mov	r5,dpl
      00253B 15 81            [12] 1287 	dec	sp
      00253D 15 81            [12] 1288 	dec	sp
      00253F D0 00            [24] 1289 	pop	ar0
      002541 D0 01            [24] 1290 	pop	ar1
      002543 D0 02            [24] 1291 	pop	ar2
      002545 D0 06            [24] 1292 	pop	ar6
      002547 8D 04            [24] 1293 	mov	ar4,r5
                                   1294 ;	walk.c:146: if (!update(&t, &cur, j)) continue;
      002549 C0 00            [24] 1295 	push	ar0
      00254B E5 10            [12] 1296 	mov	a,_bp
      00254D 24 05            [12] 1297 	add	a,#0x05
      00254F F8               [12] 1298 	mov	r0,a
      002550 C0 01            [24] 1299 	push	ar1
      002552 E5 10            [12] 1300 	mov	a,_bp
      002554 24 07            [12] 1301 	add	a,#0x07
      002556 F9               [12] 1302 	mov	r1,a
      002557 E6               [12] 1303 	mov	a,@r0
      002558 F7               [12] 1304 	mov	@r1,a
      002559 09               [12] 1305 	inc	r1
      00255A 77 00            [12] 1306 	mov	@r1,#0x00
      00255C 09               [12] 1307 	inc	r1
      00255D 77 40            [12] 1308 	mov	@r1,#0x40
      00255F D0 01            [24] 1309 	pop	ar1
      002561 E5 10            [12] 1310 	mov	a,_bp
      002563 24 04            [12] 1311 	add	a,#0x04
      002565 F8               [12] 1312 	mov	r0,a
      002566 86 02            [24] 1313 	mov	ar2,@r0
      002568 7D 00            [12] 1314 	mov	r5,#0x00
      00256A 7F 40            [12] 1315 	mov	r7,#0x40
      00256C D0 00            [24] 1316 	pop	ar0
      00256E C0 06            [24] 1317 	push	ar6
      002570 C0 02            [24] 1318 	push	ar2
      002572 C0 01            [24] 1319 	push	ar1
      002574 C0 00            [24] 1320 	push	ar0
      002576 C0 04            [24] 1321 	push	ar4
      002578 85 00 F0         [24] 1322 	mov	b,ar0
      00257B E5 10            [12] 1323 	mov	a,_bp
      00257D 24 07            [12] 1324 	add	a,#0x07
      00257F F8               [12] 1325 	mov	r0,a
      002580 E6               [12] 1326 	mov	a,@r0
      002581 C0 E0            [24] 1327 	push	acc
      002583 08               [12] 1328 	inc	r0
      002584 E6               [12] 1329 	mov	a,@r0
      002585 C0 E0            [24] 1330 	push	acc
      002587 08               [12] 1331 	inc	r0
      002588 E6               [12] 1332 	mov	a,@r0
      002589 C0 E0            [24] 1333 	push	acc
      00258B 8A 82            [24] 1334 	mov	dpl,r2
      00258D 8D 83            [24] 1335 	mov	dph,r5
      00258F 8F F0            [24] 1336 	mov	b,r7
      002591 12 20 AF         [24] 1337 	lcall	_update
      002594 AD 82            [24] 1338 	mov	r5,dpl
      002596 AF 83            [24] 1339 	mov	r7,dph
      002598 E5 81            [12] 1340 	mov	a,sp
      00259A 24 FC            [12] 1341 	add	a,#0xfc
      00259C F5 81            [12] 1342 	mov	sp,a
      00259E D0 00            [24] 1343 	pop	ar0
      0025A0 D0 01            [24] 1344 	pop	ar1
      0025A2 D0 02            [24] 1345 	pop	ar2
      0025A4 D0 06            [24] 1346 	pop	ar6
      0025A6 D0 02            [24] 1347 	pop	ar2
      0025A8 ED               [12] 1348 	mov	a,r5
      0025A9 4F               [12] 1349 	orl	a,r7
      0025AA 70 03            [24] 1350 	jnz	00163$
      0025AC 02 25 1A         [24] 1351 	ljmp	00112$
      0025AF                       1352 00163$:
                                   1353 ;	walk.c:147: if (!stpush(&cur)) bang();
      0025AF 8A 04            [24] 1354 	mov	ar4,r2
      0025B1 7D 00            [12] 1355 	mov	r5,#0x00
      0025B3 7F 40            [12] 1356 	mov	r7,#0x40
      0025B5 8C 82            [24] 1357 	mov	dpl,r4
      0025B7 8D 83            [24] 1358 	mov	dph,r5
      0025B9 8F F0            [24] 1359 	mov	b,r7
      0025BB C0 06            [24] 1360 	push	ar6
      0025BD C0 02            [24] 1361 	push	ar2
      0025BF C0 01            [24] 1362 	push	ar1
      0025C1 C0 00            [24] 1363 	push	ar0
      0025C3 12 2A A5         [24] 1364 	lcall	_stpush
      0025C6 E5 82            [12] 1365 	mov	a,dpl
      0025C8 85 83 F0         [24] 1366 	mov	b,dph
      0025CB D0 00            [24] 1367 	pop	ar0
      0025CD D0 01            [24] 1368 	pop	ar1
      0025CF D0 02            [24] 1369 	pop	ar2
      0025D1 D0 06            [24] 1370 	pop	ar6
      0025D3 45 F0            [12] 1371 	orl	a,b
      0025D5 70 13            [24] 1372 	jnz	00110$
      0025D7 C0 06            [24] 1373 	push	ar6
      0025D9 C0 02            [24] 1374 	push	ar2
      0025DB C0 01            [24] 1375 	push	ar1
      0025DD C0 00            [24] 1376 	push	ar0
      0025DF 12 20 82         [24] 1377 	lcall	_bang
      0025E2 D0 00            [24] 1378 	pop	ar0
      0025E4 D0 01            [24] 1379 	pop	ar1
      0025E6 D0 02            [24] 1380 	pop	ar2
      0025E8 D0 06            [24] 1381 	pop	ar6
      0025EA                       1382 00110$:
                                   1383 ;	walk.c:148: cur = t;
      0025EA C0 02            [24] 1384 	push	ar2
      0025EC C0 00            [24] 1385 	push	ar0
      0025EE A8 10            [24] 1386 	mov	r0,_bp
      0025F0 08               [12] 1387 	inc	r0
      0025F1 C0 01            [24] 1388 	push	ar1
      0025F3 E5 10            [12] 1389 	mov	a,_bp
      0025F5 24 07            [12] 1390 	add	a,#0x07
      0025F7 F9               [12] 1391 	mov	r1,a
      0025F8 E6               [12] 1392 	mov	a,@r0
      0025F9 F7               [12] 1393 	mov	@r1,a
      0025FA 09               [12] 1394 	inc	r1
      0025FB 77 00            [12] 1395 	mov	@r1,#0x00
      0025FD 09               [12] 1396 	inc	r1
      0025FE 77 40            [12] 1397 	mov	@r1,#0x40
      002600 D0 01            [24] 1398 	pop	ar1
      002602 A8 10            [24] 1399 	mov	r0,_bp
      002604 08               [12] 1400 	inc	r0
      002605 08               [12] 1401 	inc	r0
      002606 86 02            [24] 1402 	mov	ar2,@r0
      002608 7B 00            [12] 1403 	mov	r3,#0x00
      00260A 7F 40            [12] 1404 	mov	r7,#0x40
      00260C D0 00            [24] 1405 	pop	ar0
      00260E C0 06            [24] 1406 	push	ar6
      002610 C0 02            [24] 1407 	push	ar2
      002612 C0 01            [24] 1408 	push	ar1
      002614 C0 00            [24] 1409 	push	ar0
      002616 74 04            [12] 1410 	mov	a,#0x04
      002618 C0 E0            [24] 1411 	push	acc
      00261A E4               [12] 1412 	clr	a
      00261B C0 E0            [24] 1413 	push	acc
      00261D 85 00 F0         [24] 1414 	mov	b,ar0
      002620 E5 10            [12] 1415 	mov	a,_bp
      002622 24 07            [12] 1416 	add	a,#0x07
      002624 F8               [12] 1417 	mov	r0,a
      002625 E6               [12] 1418 	mov	a,@r0
      002626 C0 E0            [24] 1419 	push	acc
      002628 08               [12] 1420 	inc	r0
      002629 E6               [12] 1421 	mov	a,@r0
      00262A C0 E0            [24] 1422 	push	acc
      00262C 08               [12] 1423 	inc	r0
      00262D E6               [12] 1424 	mov	a,@r0
      00262E C0 E0            [24] 1425 	push	acc
      002630 8A 82            [24] 1426 	mov	dpl,r2
      002632 8B 83            [24] 1427 	mov	dph,r3
      002634 8F F0            [24] 1428 	mov	b,r7
      002636 12 2C FE         [24] 1429 	lcall	___memcpy
      002639 E5 81            [12] 1430 	mov	a,sp
      00263B 24 FB            [12] 1431 	add	a,#0xfb
      00263D F5 81            [12] 1432 	mov	sp,a
      00263F D0 00            [24] 1433 	pop	ar0
      002641 D0 01            [24] 1434 	pop	ar1
      002643 D0 02            [24] 1435 	pop	ar2
      002645 D0 06            [24] 1436 	pop	ar6
                                   1437 ;	walk.c:149: goto process;
      002647 D0 02            [24] 1438 	pop	ar2
      002649 02 23 A8         [24] 1439 	ljmp	00101$
      00264C                       1440 00115$:
                                   1441 ;	walk.c:153: printf("\033[%d;%dH.", cur.r + 4, cur.c + 1);
      00264C 86 05            [24] 1442 	mov	ar5,@r0
      00264E 08               [12] 1443 	inc	r0
      00264F 86 07            [24] 1444 	mov	ar7,@r0
      002651 18               [12] 1445 	dec	r0
      002652 0D               [12] 1446 	inc	r5
      002653 BD 00 01         [24] 1447 	cjne	r5,#0x00,00165$
      002656 0F               [12] 1448 	inc	r7
      002657                       1449 00165$:
      002657 87 03            [24] 1450 	mov	ar3,@r1
      002659 09               [12] 1451 	inc	r1
      00265A 87 04            [24] 1452 	mov	ar4,@r1
      00265C 19               [12] 1453 	dec	r1
      00265D 74 04            [12] 1454 	mov	a,#0x04
      00265F 2B               [12] 1455 	add	a,r3
      002660 FB               [12] 1456 	mov	r3,a
      002661 E4               [12] 1457 	clr	a
      002662 3C               [12] 1458 	addc	a,r4
      002663 FC               [12] 1459 	mov	r4,a
      002664 C0 06            [24] 1460 	push	ar6
      002666 C0 02            [24] 1461 	push	ar2
      002668 C0 01            [24] 1462 	push	ar1
      00266A C0 00            [24] 1463 	push	ar0
      00266C C0 05            [24] 1464 	push	ar5
      00266E C0 07            [24] 1465 	push	ar7
      002670 C0 03            [24] 1466 	push	ar3
      002672 C0 04            [24] 1467 	push	ar4
      002674 74 74            [12] 1468 	mov	a,#___str_3
      002676 C0 E0            [24] 1469 	push	acc
      002678 74 41            [12] 1470 	mov	a,#(___str_3 >> 8)
      00267A C0 E0            [24] 1471 	push	acc
      00267C 74 80            [12] 1472 	mov	a,#0x80
      00267E C0 E0            [24] 1473 	push	acc
      002680 12 2E 17         [24] 1474 	lcall	_printf
      002683 E5 81            [12] 1475 	mov	a,sp
      002685 24 F9            [12] 1476 	add	a,#0xf9
      002687 F5 81            [12] 1477 	mov	sp,a
                                   1478 ;	walk.c:154: flashOE(OE76_MASK7);
      002689 75 82 80         [24] 1479 	mov	dpl,#0x80
      00268C 12 20 8E         [24] 1480 	lcall	_flashOE
      00268F D0 00            [24] 1481 	pop	ar0
      002691 D0 01            [24] 1482 	pop	ar1
      002693 D0 02            [24] 1483 	pop	ar2
      002695 D0 06            [24] 1484 	pop	ar6
                                   1485 ;	walk.c:156: if (stpop(&cur)) {
      002697 C0 00            [24] 1486 	push	ar0
      002699 E5 10            [12] 1487 	mov	a,_bp
      00269B 24 03            [12] 1488 	add	a,#0x03
      00269D F8               [12] 1489 	mov	r0,a
      00269E 86 04            [24] 1490 	mov	ar4,@r0
      0026A0 7D 00            [12] 1491 	mov	r5,#0x00
      0026A2 7F 40            [12] 1492 	mov	r7,#0x40
      0026A4 D0 00            [24] 1493 	pop	ar0
      0026A6 8C 82            [24] 1494 	mov	dpl,r4
      0026A8 8D 83            [24] 1495 	mov	dph,r5
      0026AA 8F F0            [24] 1496 	mov	b,r7
      0026AC C0 06            [24] 1497 	push	ar6
      0026AE C0 02            [24] 1498 	push	ar2
      0026B0 C0 01            [24] 1499 	push	ar1
      0026B2 C0 00            [24] 1500 	push	ar0
      0026B4 12 2B 06         [24] 1501 	lcall	_stpop
      0026B7 E5 82            [12] 1502 	mov	a,dpl
      0026B9 85 83 F0         [24] 1503 	mov	b,dph
      0026BC D0 00            [24] 1504 	pop	ar0
      0026BE D0 01            [24] 1505 	pop	ar1
      0026C0 D0 02            [24] 1506 	pop	ar2
      0026C2 D0 06            [24] 1507 	pop	ar6
      0026C4 45 F0            [12] 1508 	orl	a,b
      0026C6 60 19            [24] 1509 	jz	00117$
                                   1510 ;	walk.c:157: flashOE(OE76_MASK6);
      0026C8 75 82 40         [24] 1511 	mov	dpl,#0x40
      0026CB C0 06            [24] 1512 	push	ar6
      0026CD C0 02            [24] 1513 	push	ar2
      0026CF C0 01            [24] 1514 	push	ar1
      0026D1 C0 00            [24] 1515 	push	ar0
      0026D3 12 20 8E         [24] 1516 	lcall	_flashOE
      0026D6 D0 00            [24] 1517 	pop	ar0
      0026D8 D0 01            [24] 1518 	pop	ar1
      0026DA D0 02            [24] 1519 	pop	ar2
      0026DC D0 06            [24] 1520 	pop	ar6
                                   1521 ;	walk.c:158: goto next;
      0026DE 02 24 32         [24] 1522 	ljmp	00102$
      0026E1                       1523 00117$:
                                   1524 ;	walk.c:161: return;
                                   1525 ;	walk.c:162: }
      0026E1 85 10 81         [24] 1526 	mov	sp,_bp
      0026E4 D0 10            [24] 1527 	pop	_bp
      0026E6 22               [24] 1528 	ret
                                   1529 ;------------------------------------------------------------
                                   1530 ;Allocation info for local variables in function 'main'
                                   1531 ;------------------------------------------------------------
                                   1532 ;initial                   Allocated to stack - _bp +7
                                   1533 ;N                         Allocated to stack - _bp +11
                                   1534 ;i                         Allocated to stack - _bp +5
                                   1535 ;j                         Allocated to registers r2 r6 
                                   1536 ;sloc0                     Allocated to stack - _bp +1
                                   1537 ;sloc1                     Allocated to stack - _bp +3
                                   1538 ;sloc2                     Allocated to stack - _bp +15
                                   1539 ;------------------------------------------------------------
                                   1540 ;	walk.c:164: int main(void) {
                                   1541 ;	-----------------------------------------
                                   1542 ;	 function main
                                   1543 ;	-----------------------------------------
      0026E7                       1544 _main:
      0026E7 C0 10            [24] 1545 	push	_bp
      0026E9 E5 81            [12] 1546 	mov	a,sp
      0026EB F5 10            [12] 1547 	mov	_bp,a
      0026ED 24 0C            [12] 1548 	add	a,#0x0c
      0026EF F5 81            [12] 1549 	mov	sp,a
                                   1550 ;	walk.c:169: i0 = 1u;
      0026F1 78 11            [12] 1551 	mov	r0,#_i0
      0026F3 76 01            [12] 1552 	mov	@r0,#0x01
                                   1553 ;	walk.c:171: P1_7 = 1;
                                   1554 ;	assignBit
      0026F5 D2 97            [12] 1555 	setb	_P1_7
                                   1556 ;	walk.c:172: IT0 = 1;
                                   1557 ;	assignBit
      0026F7 D2 88            [12] 1558 	setb	_IT0
                                   1559 ;	walk.c:173: EX0 = 1;
                                   1560 ;	assignBit
      0026F9 D2 A8            [12] 1561 	setb	_EX0
                                   1562 ;	walk.c:174: EA = 1;
                                   1563 ;	assignBit
      0026FB D2 AF            [12] 1564 	setb	_EA
                                   1565 ;	walk.c:176: srand(*R);
      0026FD 90 FE F2         [24] 1566 	mov	dptr,#_R
      002700 E0               [24] 1567 	movx	a,@dptr
      002701 FE               [12] 1568 	mov	r6,a
      002702 A3               [24] 1569 	inc	dptr
      002703 E0               [24] 1570 	movx	a,@dptr
      002704 FF               [12] 1571 	mov	r7,a
      002705 8E 82            [24] 1572 	mov	dpl,r6
      002707 8F 83            [24] 1573 	mov	dph,r7
      002709 E0               [24] 1574 	movx	a,@dptr
      00270A FE               [12] 1575 	mov	r6,a
      00270B A3               [24] 1576 	inc	dptr
      00270C E0               [24] 1577 	movx	a,@dptr
      00270D FF               [12] 1578 	mov	r7,a
      00270E 8E 82            [24] 1579 	mov	dpl,r6
      002710 8F 83            [24] 1580 	mov	dph,r7
      002712 12 2C 2C         [24] 1581 	lcall	_srand
                                   1582 ;	walk.c:177: stinit();
      002715 12 2A 9C         [24] 1583 	lcall	_stinit
                                   1584 ;	walk.c:179: puts("\033[2J\033[?25l");
      002718 90 41 7E         [24] 1585 	mov	dptr,#___str_4
      00271B 75 F0 80         [24] 1586 	mov	b,#0x80
      00271E 12 2D 91         [24] 1587 	lcall	_puts
                                   1588 ;	walk.c:181: while (i0) {
      002721 E5 10            [12] 1589 	mov	a,_bp
      002723 24 07            [12] 1590 	add	a,#0x07
      002725 F9               [12] 1591 	mov	r1,a
      002726 FF               [12] 1592 	mov	r7,a
      002727 E5 10            [12] 1593 	mov	a,_bp
      002729 24 0B            [12] 1594 	add	a,#0x0b
      00272B F8               [12] 1595 	mov	r0,a
      00272C E4               [12] 1596 	clr	a
      00272D F6               [12] 1597 	mov	@r0,a
      00272E 08               [12] 1598 	inc	r0
      00272F F6               [12] 1599 	mov	@r0,a
      002730                       1600 00108$:
      002730 78 11            [12] 1601 	mov	r0,#_i0
      002732 E6               [12] 1602 	mov	a,@r0
      002733 70 03            [24] 1603 	jnz	00181$
      002735 02 2A 85         [24] 1604 	ljmp	00110$
      002738                       1605 00181$:
                                   1606 ;	walk.c:182: for (i = 0; i < ROWS; i++)
      002738 7B 00            [12] 1607 	mov	r3,#0x00
      00273A 7C 00            [12] 1608 	mov	r4,#0x00
      00273C A8 10            [24] 1609 	mov	r0,_bp
      00273E 08               [12] 1610 	inc	r0
      00273F E4               [12] 1611 	clr	a
      002740 F6               [12] 1612 	mov	@r0,a
      002741 08               [12] 1613 	inc	r0
      002742 F6               [12] 1614 	mov	@r0,a
                                   1615 ;	walk.c:183: for (j = 0; j < COLS; j++)
      002743                       1616 00124$:
      002743 A8 10            [24] 1617 	mov	r0,_bp
      002745 08               [12] 1618 	inc	r0
      002746 C0 01            [24] 1619 	push	ar1
      002748 E5 10            [12] 1620 	mov	a,_bp
      00274A 24 03            [12] 1621 	add	a,#0x03
      00274C F9               [12] 1622 	mov	r1,a
      00274D E6               [12] 1623 	mov	a,@r0
      00274E 24 80            [12] 1624 	add	a,#_g
      002750 F7               [12] 1625 	mov	@r1,a
      002751 08               [12] 1626 	inc	r0
      002752 E6               [12] 1627 	mov	a,@r0
      002753 34 42            [12] 1628 	addc	a,#(_g >> 8)
      002755 09               [12] 1629 	inc	r1
      002756 F7               [12] 1630 	mov	@r1,a
      002757 D0 01            [24] 1631 	pop	ar1
      002759 7A 00            [12] 1632 	mov	r2,#0x00
      00275B 7E 00            [12] 1633 	mov	r6,#0x00
      00275D                       1634 00111$:
                                   1635 ;	walk.c:184: g[i][j] = 0x55;
      00275D E5 10            [12] 1636 	mov	a,_bp
      00275F 24 03            [12] 1637 	add	a,#0x03
      002761 F8               [12] 1638 	mov	r0,a
      002762 EA               [12] 1639 	mov	a,r2
      002763 26               [12] 1640 	add	a,@r0
      002764 F5 82            [12] 1641 	mov	dpl,a
      002766 EE               [12] 1642 	mov	a,r6
      002767 08               [12] 1643 	inc	r0
      002768 36               [12] 1644 	addc	a,@r0
      002769 F5 83            [12] 1645 	mov	dph,a
      00276B 74 55            [12] 1646 	mov	a,#0x55
      00276D F0               [24] 1647 	movx	@dptr,a
                                   1648 ;	walk.c:183: for (j = 0; j < COLS; j++)
      00276E 0A               [12] 1649 	inc	r2
      00276F BA 00 01         [24] 1650 	cjne	r2,#0x00,00182$
      002772 0E               [12] 1651 	inc	r6
      002773                       1652 00182$:
      002773 C3               [12] 1653 	clr	c
      002774 EA               [12] 1654 	mov	a,r2
      002775 94 C9            [12] 1655 	subb	a,#0xc9
      002777 EE               [12] 1656 	mov	a,r6
      002778 64 80            [12] 1657 	xrl	a,#0x80
      00277A 94 80            [12] 1658 	subb	a,#0x80
      00277C 40 DF            [24] 1659 	jc	00111$
                                   1660 ;	walk.c:182: for (i = 0; i < ROWS; i++)
      00277E A8 10            [24] 1661 	mov	r0,_bp
      002780 08               [12] 1662 	inc	r0
      002781 74 C9            [12] 1663 	mov	a,#0xc9
      002783 26               [12] 1664 	add	a,@r0
      002784 F6               [12] 1665 	mov	@r0,a
      002785 E4               [12] 1666 	clr	a
      002786 08               [12] 1667 	inc	r0
      002787 36               [12] 1668 	addc	a,@r0
      002788 F6               [12] 1669 	mov	@r0,a
      002789 0B               [12] 1670 	inc	r3
      00278A BB 00 01         [24] 1671 	cjne	r3,#0x00,00184$
      00278D 0C               [12] 1672 	inc	r4
      00278E                       1673 00184$:
      00278E C3               [12] 1674 	clr	c
      00278F EB               [12] 1675 	mov	a,r3
      002790 94 30            [12] 1676 	subb	a,#0x30
      002792 EC               [12] 1677 	mov	a,r4
      002793 64 80            [12] 1678 	xrl	a,#0x80
      002795 94 80            [12] 1679 	subb	a,#0x80
      002797 40 AA            [24] 1680 	jc	00124$
                                   1681 ;	walk.c:186: initial.r = rand() % ROWS;
      002799 E5 10            [12] 1682 	mov	a,_bp
      00279B 24 07            [12] 1683 	add	a,#0x07
      00279D F8               [12] 1684 	mov	r0,a
      00279E C0 07            [24] 1685 	push	ar7
      0027A0 C0 01            [24] 1686 	push	ar1
      0027A2 C0 00            [24] 1687 	push	ar0
      0027A4 12 2B 68         [24] 1688 	lcall	_rand
      0027A7 AD 82            [24] 1689 	mov	r5,dpl
      0027A9 AE 83            [24] 1690 	mov	r6,dph
      0027AB 74 30            [12] 1691 	mov	a,#0x30
      0027AD C0 E0            [24] 1692 	push	acc
      0027AF E4               [12] 1693 	clr	a
      0027B0 C0 E0            [24] 1694 	push	acc
      0027B2 8D 82            [24] 1695 	mov	dpl,r5
      0027B4 8E 83            [24] 1696 	mov	dph,r6
      0027B6 12 2E 6C         [24] 1697 	lcall	__modsint
      0027B9 AD 82            [24] 1698 	mov	r5,dpl
      0027BB AE 83            [24] 1699 	mov	r6,dph
      0027BD 15 81            [12] 1700 	dec	sp
      0027BF 15 81            [12] 1701 	dec	sp
      0027C1 D0 00            [24] 1702 	pop	ar0
      0027C3 D0 01            [24] 1703 	pop	ar1
      0027C5 A6 05            [24] 1704 	mov	@r0,ar5
      0027C7 08               [12] 1705 	inc	r0
      0027C8 A6 06            [24] 1706 	mov	@r0,ar6
      0027CA 18               [12] 1707 	dec	r0
                                   1708 ;	walk.c:187: initial.c = rand() % COLS;
      0027CB 74 02            [12] 1709 	mov	a,#0x02
      0027CD 29               [12] 1710 	add	a,r1
      0027CE F8               [12] 1711 	mov	r0,a
      0027CF C0 01            [24] 1712 	push	ar1
      0027D1 C0 00            [24] 1713 	push	ar0
      0027D3 12 2B 68         [24] 1714 	lcall	_rand
      0027D6 AD 82            [24] 1715 	mov	r5,dpl
      0027D8 AE 83            [24] 1716 	mov	r6,dph
      0027DA 74 C9            [12] 1717 	mov	a,#0xc9
      0027DC C0 E0            [24] 1718 	push	acc
      0027DE E4               [12] 1719 	clr	a
      0027DF C0 E0            [24] 1720 	push	acc
      0027E1 8D 82            [24] 1721 	mov	dpl,r5
      0027E3 8E 83            [24] 1722 	mov	dph,r6
      0027E5 12 2E 6C         [24] 1723 	lcall	__modsint
      0027E8 AD 82            [24] 1724 	mov	r5,dpl
      0027EA AE 83            [24] 1725 	mov	r6,dph
      0027EC 15 81            [12] 1726 	dec	sp
      0027EE 15 81            [12] 1727 	dec	sp
      0027F0 D0 00            [24] 1728 	pop	ar0
      0027F2 A6 05            [24] 1729 	mov	@r0,ar5
      0027F4 08               [12] 1730 	inc	r0
      0027F5 A6 06            [24] 1731 	mov	@r0,ar6
      0027F7 18               [12] 1732 	dec	r0
                                   1733 ;	walk.c:189: puts("\033[2J\033[?25l");
      0027F8 90 41 7E         [24] 1734 	mov	dptr,#___str_4
      0027FB 75 F0 80         [24] 1735 	mov	b,#0x80
      0027FE C0 00            [24] 1736 	push	ar0
      002800 12 2D 91         [24] 1737 	lcall	_puts
      002803 D0 00            [24] 1738 	pop	ar0
      002805 D0 01            [24] 1739 	pop	ar1
                                   1740 ;	walk.c:190: printf("\033[1;1H% 8u% 8d% 8d", N, initial.r, initial.c);
      002807 86 05            [24] 1741 	mov	ar5,@r0
      002809 08               [12] 1742 	inc	r0
      00280A 86 06            [24] 1743 	mov	ar6,@r0
      00280C 18               [12] 1744 	dec	r0
      00280D 87 03            [24] 1745 	mov	ar3,@r1
      00280F 09               [12] 1746 	inc	r1
      002810 87 04            [24] 1747 	mov	ar4,@r1
      002812 19               [12] 1748 	dec	r1
      002813 C0 01            [24] 1749 	push	ar1
      002815 C0 05            [24] 1750 	push	ar5
      002817 C0 06            [24] 1751 	push	ar6
      002819 C0 03            [24] 1752 	push	ar3
      00281B C0 04            [24] 1753 	push	ar4
      00281D E5 10            [12] 1754 	mov	a,_bp
      00281F 24 0B            [12] 1755 	add	a,#0x0b
      002821 F8               [12] 1756 	mov	r0,a
      002822 E6               [12] 1757 	mov	a,@r0
      002823 C0 E0            [24] 1758 	push	acc
      002825 08               [12] 1759 	inc	r0
      002826 E6               [12] 1760 	mov	a,@r0
      002827 C0 E0            [24] 1761 	push	acc
      002829 74 89            [12] 1762 	mov	a,#___str_5
      00282B C0 E0            [24] 1763 	push	acc
      00282D 74 41            [12] 1764 	mov	a,#(___str_5 >> 8)
      00282F C0 E0            [24] 1765 	push	acc
      002831 74 80            [12] 1766 	mov	a,#0x80
      002833 C0 E0            [24] 1767 	push	acc
      002835 12 2E 17         [24] 1768 	lcall	_printf
      002838 E5 81            [12] 1769 	mov	a,sp
      00283A 24 F7            [12] 1770 	add	a,#0xf7
      00283C F5 81            [12] 1771 	mov	sp,a
      00283E D0 01            [24] 1772 	pop	ar1
      002840 D0 07            [24] 1773 	pop	ar7
                                   1774 ;	walk.c:191: for (i = 0; i < (2 * REG); i++) {
      002842 E5 10            [12] 1775 	mov	a,_bp
      002844 24 05            [12] 1776 	add	a,#0x05
      002846 F8               [12] 1777 	mov	r0,a
      002847 E4               [12] 1778 	clr	a
      002848 F6               [12] 1779 	mov	@r0,a
      002849 08               [12] 1780 	inc	r0
      00284A F6               [12] 1781 	mov	@r0,a
      00284B                       1782 00115$:
                                   1783 ;	walk.c:192: neigh[i].r = neigh_tmpl[i].r * (1 + rand() % 4);
      00284B C0 07            [24] 1784 	push	ar7
      00284D E5 10            [12] 1785 	mov	a,_bp
      00284F 24 05            [12] 1786 	add	a,#0x05
      002851 F8               [12] 1787 	mov	r0,a
      002852 E6               [12] 1788 	mov	a,@r0
      002853 25 E0            [12] 1789 	add	a,acc
      002855 FB               [12] 1790 	mov	r3,a
      002856 08               [12] 1791 	inc	r0
      002857 E6               [12] 1792 	mov	a,@r0
      002858 33               [12] 1793 	rlc	a
      002859 FC               [12] 1794 	mov	r4,a
      00285A EB               [12] 1795 	mov	a,r3
      00285B 2B               [12] 1796 	add	a,r3
      00285C FB               [12] 1797 	mov	r3,a
      00285D EC               [12] 1798 	mov	a,r4
      00285E 33               [12] 1799 	rlc	a
      00285F FC               [12] 1800 	mov	r4,a
      002860 EB               [12] 1801 	mov	a,r3
      002861 24 34            [12] 1802 	add	a,#_neigh
      002863 FA               [12] 1803 	mov	r2,a
      002864 EC               [12] 1804 	mov	a,r4
      002865 34 FF            [12] 1805 	addc	a,#(_neigh >> 8)
      002867 FF               [12] 1806 	mov	r7,a
      002868 EB               [12] 1807 	mov	a,r3
      002869 24 F4            [12] 1808 	add	a,#_neigh_tmpl
      00286B F5 82            [12] 1809 	mov	dpl,a
      00286D EC               [12] 1810 	mov	a,r4
      00286E 34 FE            [12] 1811 	addc	a,#(_neigh_tmpl >> 8)
      002870 F5 83            [12] 1812 	mov	dph,a
      002872 E5 10            [12] 1813 	mov	a,_bp
      002874 24 03            [12] 1814 	add	a,#0x03
      002876 F8               [12] 1815 	mov	r0,a
      002877 E0               [24] 1816 	movx	a,@dptr
      002878 F6               [12] 1817 	mov	@r0,a
      002879 A3               [24] 1818 	inc	dptr
      00287A E0               [24] 1819 	movx	a,@dptr
      00287B 08               [12] 1820 	inc	r0
      00287C F6               [12] 1821 	mov	@r0,a
      00287D C0 07            [24] 1822 	push	ar7
      00287F C0 04            [24] 1823 	push	ar4
      002881 C0 03            [24] 1824 	push	ar3
      002883 C0 02            [24] 1825 	push	ar2
      002885 C0 01            [24] 1826 	push	ar1
      002887 12 2B 68         [24] 1827 	lcall	_rand
      00288A AD 82            [24] 1828 	mov	r5,dpl
      00288C AE 83            [24] 1829 	mov	r6,dph
      00288E 74 04            [12] 1830 	mov	a,#0x04
      002890 C0 E0            [24] 1831 	push	acc
      002892 E4               [12] 1832 	clr	a
      002893 C0 E0            [24] 1833 	push	acc
      002895 8D 82            [24] 1834 	mov	dpl,r5
      002897 8E 83            [24] 1835 	mov	dph,r6
      002899 12 2E 6C         [24] 1836 	lcall	__modsint
      00289C AD 82            [24] 1837 	mov	r5,dpl
      00289E AE 83            [24] 1838 	mov	r6,dph
      0028A0 15 81            [12] 1839 	dec	sp
      0028A2 15 81            [12] 1840 	dec	sp
      0028A4 D0 01            [24] 1841 	pop	ar1
      0028A6 D0 02            [24] 1842 	pop	ar2
      0028A8 D0 03            [24] 1843 	pop	ar3
      0028AA D0 04            [24] 1844 	pop	ar4
      0028AC D0 07            [24] 1845 	pop	ar7
      0028AE 0D               [12] 1846 	inc	r5
      0028AF BD 00 01         [24] 1847 	cjne	r5,#0x00,00186$
      0028B2 0E               [12] 1848 	inc	r6
      0028B3                       1849 00186$:
      0028B3 C0 07            [24] 1850 	push	ar7
      0028B5 C0 04            [24] 1851 	push	ar4
      0028B7 C0 03            [24] 1852 	push	ar3
      0028B9 C0 02            [24] 1853 	push	ar2
      0028BB C0 01            [24] 1854 	push	ar1
      0028BD C0 05            [24] 1855 	push	ar5
      0028BF C0 06            [24] 1856 	push	ar6
      0028C1 E5 10            [12] 1857 	mov	a,_bp
      0028C3 24 03            [12] 1858 	add	a,#0x03
      0028C5 F8               [12] 1859 	mov	r0,a
      0028C6 86 82            [24] 1860 	mov	dpl,@r0
      0028C8 08               [12] 1861 	inc	r0
      0028C9 86 83            [24] 1862 	mov	dph,@r0
      0028CB 12 2C 60         [24] 1863 	lcall	__mulint
      0028CE AD 82            [24] 1864 	mov	r5,dpl
      0028D0 AE 83            [24] 1865 	mov	r6,dph
      0028D2 15 81            [12] 1866 	dec	sp
      0028D4 15 81            [12] 1867 	dec	sp
      0028D6 D0 01            [24] 1868 	pop	ar1
      0028D8 D0 02            [24] 1869 	pop	ar2
      0028DA D0 03            [24] 1870 	pop	ar3
      0028DC D0 04            [24] 1871 	pop	ar4
      0028DE D0 07            [24] 1872 	pop	ar7
      0028E0 8A 82            [24] 1873 	mov	dpl,r2
      0028E2 8F 83            [24] 1874 	mov	dph,r7
      0028E4 ED               [12] 1875 	mov	a,r5
      0028E5 F0               [24] 1876 	movx	@dptr,a
      0028E6 EE               [12] 1877 	mov	a,r6
      0028E7 A3               [24] 1878 	inc	dptr
      0028E8 F0               [24] 1879 	movx	@dptr,a
                                   1880 ;	walk.c:193: neigh[i].c = neigh_tmpl[i].c * (1 + rand() % 4);
      0028E9 EB               [12] 1881 	mov	a,r3
      0028EA 24 34            [12] 1882 	add	a,#_neigh
      0028EC FE               [12] 1883 	mov	r6,a
      0028ED EC               [12] 1884 	mov	a,r4
      0028EE 34 FF            [12] 1885 	addc	a,#(_neigh >> 8)
      0028F0 FF               [12] 1886 	mov	r7,a
      0028F1 74 02            [12] 1887 	mov	a,#0x02
      0028F3 2E               [12] 1888 	add	a,r6
      0028F4 FA               [12] 1889 	mov	r2,a
      0028F5 E4               [12] 1890 	clr	a
      0028F6 3F               [12] 1891 	addc	a,r7
      0028F7 FD               [12] 1892 	mov	r5,a
      0028F8 EB               [12] 1893 	mov	a,r3
      0028F9 24 F4            [12] 1894 	add	a,#_neigh_tmpl
      0028FB FB               [12] 1895 	mov	r3,a
      0028FC EC               [12] 1896 	mov	a,r4
      0028FD 34 FE            [12] 1897 	addc	a,#(_neigh_tmpl >> 8)
      0028FF FC               [12] 1898 	mov	r4,a
      002900 8B 82            [24] 1899 	mov	dpl,r3
      002902 8C 83            [24] 1900 	mov	dph,r4
      002904 A3               [24] 1901 	inc	dptr
      002905 A3               [24] 1902 	inc	dptr
      002906 E5 10            [12] 1903 	mov	a,_bp
      002908 24 03            [12] 1904 	add	a,#0x03
      00290A F8               [12] 1905 	mov	r0,a
      00290B E0               [24] 1906 	movx	a,@dptr
      00290C F6               [12] 1907 	mov	@r0,a
      00290D A3               [24] 1908 	inc	dptr
      00290E E0               [24] 1909 	movx	a,@dptr
      00290F 08               [12] 1910 	inc	r0
      002910 F6               [12] 1911 	mov	@r0,a
      002911 C0 07            [24] 1912 	push	ar7
      002913 C0 06            [24] 1913 	push	ar6
      002915 C0 05            [24] 1914 	push	ar5
      002917 C0 02            [24] 1915 	push	ar2
      002919 C0 01            [24] 1916 	push	ar1
      00291B 12 2B 68         [24] 1917 	lcall	_rand
      00291E AB 82            [24] 1918 	mov	r3,dpl
      002920 AC 83            [24] 1919 	mov	r4,dph
      002922 74 04            [12] 1920 	mov	a,#0x04
      002924 C0 E0            [24] 1921 	push	acc
      002926 E4               [12] 1922 	clr	a
      002927 C0 E0            [24] 1923 	push	acc
      002929 8B 82            [24] 1924 	mov	dpl,r3
      00292B 8C 83            [24] 1925 	mov	dph,r4
      00292D 12 2E 6C         [24] 1926 	lcall	__modsint
      002930 AB 82            [24] 1927 	mov	r3,dpl
      002932 AC 83            [24] 1928 	mov	r4,dph
      002934 15 81            [12] 1929 	dec	sp
      002936 15 81            [12] 1930 	dec	sp
      002938 D0 01            [24] 1931 	pop	ar1
      00293A D0 02            [24] 1932 	pop	ar2
      00293C D0 05            [24] 1933 	pop	ar5
      00293E D0 06            [24] 1934 	pop	ar6
      002940 D0 07            [24] 1935 	pop	ar7
      002942 0B               [12] 1936 	inc	r3
      002943 BB 00 01         [24] 1937 	cjne	r3,#0x00,00187$
      002946 0C               [12] 1938 	inc	r4
      002947                       1939 00187$:
      002947 C0 07            [24] 1940 	push	ar7
      002949 C0 06            [24] 1941 	push	ar6
      00294B C0 05            [24] 1942 	push	ar5
      00294D C0 02            [24] 1943 	push	ar2
      00294F C0 01            [24] 1944 	push	ar1
      002951 C0 03            [24] 1945 	push	ar3
      002953 C0 04            [24] 1946 	push	ar4
      002955 E5 10            [12] 1947 	mov	a,_bp
      002957 24 03            [12] 1948 	add	a,#0x03
      002959 F8               [12] 1949 	mov	r0,a
      00295A 86 82            [24] 1950 	mov	dpl,@r0
      00295C 08               [12] 1951 	inc	r0
      00295D 86 83            [24] 1952 	mov	dph,@r0
      00295F 12 2C 60         [24] 1953 	lcall	__mulint
      002962 AB 82            [24] 1954 	mov	r3,dpl
      002964 AC 83            [24] 1955 	mov	r4,dph
      002966 15 81            [12] 1956 	dec	sp
      002968 15 81            [12] 1957 	dec	sp
      00296A D0 01            [24] 1958 	pop	ar1
      00296C D0 02            [24] 1959 	pop	ar2
      00296E D0 05            [24] 1960 	pop	ar5
      002970 D0 06            [24] 1961 	pop	ar6
      002972 D0 07            [24] 1962 	pop	ar7
      002974 8A 82            [24] 1963 	mov	dpl,r2
      002976 8D 83            [24] 1964 	mov	dph,r5
      002978 EB               [12] 1965 	mov	a,r3
      002979 F0               [24] 1966 	movx	@dptr,a
      00297A EC               [12] 1967 	mov	a,r4
      00297B A3               [24] 1968 	inc	dptr
      00297C F0               [24] 1969 	movx	@dptr,a
                                   1970 ;	walk.c:194: printf("% 8d% 8d", neigh[i].r, neigh[i].c);
      00297D 8E 82            [24] 1971 	mov	dpl,r6
      00297F 8F 83            [24] 1972 	mov	dph,r7
      002981 E0               [24] 1973 	movx	a,@dptr
      002982 FE               [12] 1974 	mov	r6,a
      002983 A3               [24] 1975 	inc	dptr
      002984 E0               [24] 1976 	movx	a,@dptr
      002985 FF               [12] 1977 	mov	r7,a
      002986 C0 07            [24] 1978 	push	ar7
      002988 C0 01            [24] 1979 	push	ar1
      00298A C0 03            [24] 1980 	push	ar3
      00298C C0 04            [24] 1981 	push	ar4
      00298E C0 06            [24] 1982 	push	ar6
      002990 C0 07            [24] 1983 	push	ar7
      002992 74 9C            [12] 1984 	mov	a,#___str_6
      002994 C0 E0            [24] 1985 	push	acc
      002996 74 41            [12] 1986 	mov	a,#(___str_6 >> 8)
      002998 C0 E0            [24] 1987 	push	acc
      00299A 74 80            [12] 1988 	mov	a,#0x80
      00299C C0 E0            [24] 1989 	push	acc
      00299E 12 2E 17         [24] 1990 	lcall	_printf
      0029A1 E5 81            [12] 1991 	mov	a,sp
      0029A3 24 F9            [12] 1992 	add	a,#0xf9
      0029A5 F5 81            [12] 1993 	mov	sp,a
      0029A7 D0 01            [24] 1994 	pop	ar1
      0029A9 D0 07            [24] 1995 	pop	ar7
                                   1996 ;	walk.c:191: for (i = 0; i < (2 * REG); i++) {
      0029AB E5 10            [12] 1997 	mov	a,_bp
      0029AD 24 05            [12] 1998 	add	a,#0x05
      0029AF F8               [12] 1999 	mov	r0,a
      0029B0 06               [12] 2000 	inc	@r0
      0029B1 B6 00 02         [24] 2001 	cjne	@r0,#0x00,00188$
      0029B4 08               [12] 2002 	inc	r0
      0029B5 06               [12] 2003 	inc	@r0
      0029B6                       2004 00188$:
      0029B6 E5 10            [12] 2005 	mov	a,_bp
      0029B8 24 05            [12] 2006 	add	a,#0x05
      0029BA F8               [12] 2007 	mov	r0,a
      0029BB C3               [12] 2008 	clr	c
      0029BC E6               [12] 2009 	mov	a,@r0
      0029BD 94 08            [12] 2010 	subb	a,#0x08
      0029BF 08               [12] 2011 	inc	r0
      0029C0 E6               [12] 2012 	mov	a,@r0
      0029C1 64 80            [12] 2013 	xrl	a,#0x80
      0029C3 94 80            [12] 2014 	subb	a,#0x80
      0029C5 D0 07            [24] 2015 	pop	ar7
      0029C7 50 03            [24] 2016 	jnc	00189$
      0029C9 02 28 4B         [24] 2017 	ljmp	00115$
      0029CC                       2018 00189$:
                                   2019 ;	walk.c:197: OE76 = OE76_0;
      0029CC 78 12            [12] 2020 	mov	r0,#_OE76
      0029CE 76 3F            [12] 2021 	mov	@r0,#0x3f
                                   2022 ;	walk.c:198: flashOE(OE76_NC);
      0029D0 75 82 00         [24] 2023 	mov	dpl,#0x00
      0029D3 C0 07            [24] 2024 	push	ar7
      0029D5 C0 01            [24] 2025 	push	ar1
      0029D7 12 20 8E         [24] 2026 	lcall	_flashOE
      0029DA D0 01            [24] 2027 	pop	ar1
      0029DC D0 07            [24] 2028 	pop	ar7
                                   2029 ;	walk.c:200: walk(&initial);
      0029DE 8F 04            [24] 2030 	mov	ar4,r7
      0029E0 7D 00            [12] 2031 	mov	r5,#0x00
      0029E2 7E 40            [12] 2032 	mov	r6,#0x40
      0029E4 8C 82            [24] 2033 	mov	dpl,r4
      0029E6 8D 83            [24] 2034 	mov	dph,r5
      0029E8 8E F0            [24] 2035 	mov	b,r6
      0029EA C0 07            [24] 2036 	push	ar7
      0029EC C0 01            [24] 2037 	push	ar1
      0029EE 12 23 3C         [24] 2038 	lcall	_walk
      0029F1 D0 01            [24] 2039 	pop	ar1
      0029F3 D0 07            [24] 2040 	pop	ar7
                                   2041 ;	walk.c:202: for (i = 0; i < ROWS; i++)
      0029F5 E5 10            [12] 2042 	mov	a,_bp
      0029F7 24 05            [12] 2043 	add	a,#0x05
      0029F9 F8               [12] 2044 	mov	r0,a
      0029FA E4               [12] 2045 	clr	a
      0029FB F6               [12] 2046 	mov	@r0,a
      0029FC 08               [12] 2047 	inc	r0
      0029FD F6               [12] 2048 	mov	@r0,a
      0029FE 7B 00            [12] 2049 	mov	r3,#0x00
      002A00 7C 00            [12] 2050 	mov	r4,#0x00
                                   2051 ;	walk.c:203: for (j = 0; j < COLS; j++)
      002A02                       2052 00131$:
      002A02 E5 10            [12] 2053 	mov	a,_bp
      002A04 24 03            [12] 2054 	add	a,#0x03
      002A06 F8               [12] 2055 	mov	r0,a
      002A07 EB               [12] 2056 	mov	a,r3
      002A08 24 80            [12] 2057 	add	a,#_g
      002A0A F6               [12] 2058 	mov	@r0,a
      002A0B EC               [12] 2059 	mov	a,r4
      002A0C 34 42            [12] 2060 	addc	a,#(_g >> 8)
      002A0E 08               [12] 2061 	inc	r0
      002A0F F6               [12] 2062 	mov	@r0,a
      002A10 7A 00            [12] 2063 	mov	r2,#0x00
      002A12 7E 00            [12] 2064 	mov	r6,#0x00
      002A14                       2065 00117$:
                                   2066 ;	walk.c:204: if (g[i][j] != 0xaa) bang();
      002A14 E5 10            [12] 2067 	mov	a,_bp
      002A16 24 03            [12] 2068 	add	a,#0x03
      002A18 F8               [12] 2069 	mov	r0,a
      002A19 EA               [12] 2070 	mov	a,r2
      002A1A 26               [12] 2071 	add	a,@r0
      002A1B F5 82            [12] 2072 	mov	dpl,a
      002A1D EE               [12] 2073 	mov	a,r6
      002A1E 08               [12] 2074 	inc	r0
      002A1F 36               [12] 2075 	addc	a,@r0
      002A20 F5 83            [12] 2076 	mov	dph,a
      002A22 E0               [24] 2077 	movx	a,@dptr
      002A23 FD               [12] 2078 	mov	r5,a
      002A24 BD AA 02         [24] 2079 	cjne	r5,#0xaa,00190$
      002A27 80 1B            [24] 2080 	sjmp	00118$
      002A29                       2081 00190$:
      002A29 C0 07            [24] 2082 	push	ar7
      002A2B C0 06            [24] 2083 	push	ar6
      002A2D C0 04            [24] 2084 	push	ar4
      002A2F C0 03            [24] 2085 	push	ar3
      002A31 C0 02            [24] 2086 	push	ar2
      002A33 C0 01            [24] 2087 	push	ar1
      002A35 12 20 82         [24] 2088 	lcall	_bang
      002A38 D0 01            [24] 2089 	pop	ar1
      002A3A D0 02            [24] 2090 	pop	ar2
      002A3C D0 03            [24] 2091 	pop	ar3
      002A3E D0 04            [24] 2092 	pop	ar4
      002A40 D0 06            [24] 2093 	pop	ar6
      002A42 D0 07            [24] 2094 	pop	ar7
      002A44                       2095 00118$:
                                   2096 ;	walk.c:203: for (j = 0; j < COLS; j++)
      002A44 0A               [12] 2097 	inc	r2
      002A45 BA 00 01         [24] 2098 	cjne	r2,#0x00,00191$
      002A48 0E               [12] 2099 	inc	r6
      002A49                       2100 00191$:
      002A49 C3               [12] 2101 	clr	c
      002A4A EA               [12] 2102 	mov	a,r2
      002A4B 94 C9            [12] 2103 	subb	a,#0xc9
      002A4D EE               [12] 2104 	mov	a,r6
      002A4E 64 80            [12] 2105 	xrl	a,#0x80
      002A50 94 80            [12] 2106 	subb	a,#0x80
      002A52 40 C0            [24] 2107 	jc	00117$
                                   2108 ;	walk.c:202: for (i = 0; i < ROWS; i++)
      002A54 74 C9            [12] 2109 	mov	a,#0xc9
      002A56 2B               [12] 2110 	add	a,r3
      002A57 FB               [12] 2111 	mov	r3,a
      002A58 E4               [12] 2112 	clr	a
      002A59 3C               [12] 2113 	addc	a,r4
      002A5A FC               [12] 2114 	mov	r4,a
      002A5B E5 10            [12] 2115 	mov	a,_bp
      002A5D 24 05            [12] 2116 	add	a,#0x05
      002A5F F8               [12] 2117 	mov	r0,a
      002A60 06               [12] 2118 	inc	@r0
      002A61 B6 00 02         [24] 2119 	cjne	@r0,#0x00,00193$
      002A64 08               [12] 2120 	inc	r0
      002A65 06               [12] 2121 	inc	@r0
      002A66                       2122 00193$:
      002A66 E5 10            [12] 2123 	mov	a,_bp
      002A68 24 05            [12] 2124 	add	a,#0x05
      002A6A F8               [12] 2125 	mov	r0,a
      002A6B C3               [12] 2126 	clr	c
      002A6C E6               [12] 2127 	mov	a,@r0
      002A6D 94 30            [12] 2128 	subb	a,#0x30
      002A6F 08               [12] 2129 	inc	r0
      002A70 E6               [12] 2130 	mov	a,@r0
      002A71 64 80            [12] 2131 	xrl	a,#0x80
      002A73 94 80            [12] 2132 	subb	a,#0x80
      002A75 40 8B            [24] 2133 	jc	00131$
                                   2134 ;	walk.c:206: N++;
      002A77 E5 10            [12] 2135 	mov	a,_bp
      002A79 24 0B            [12] 2136 	add	a,#0x0b
      002A7B F8               [12] 2137 	mov	r0,a
      002A7C 06               [12] 2138 	inc	@r0
      002A7D B6 00 02         [24] 2139 	cjne	@r0,#0x00,00195$
      002A80 08               [12] 2140 	inc	r0
      002A81 06               [12] 2141 	inc	@r0
      002A82                       2142 00195$:
      002A82 02 27 30         [24] 2143 	ljmp	00108$
      002A85                       2144 00110$:
                                   2145 ;	walk.c:209: EA = 0;
                                   2146 ;	assignBit
      002A85 C2 AF            [12] 2147 	clr	_EA
                                   2148 ;	walk.c:211: puts("\033[2J\033[?25h");
      002A87 90 41 A5         [24] 2149 	mov	dptr,#___str_7
      002A8A 75 F0 80         [24] 2150 	mov	b,#0x80
      002A8D 12 2D 91         [24] 2151 	lcall	_puts
                                   2152 ;	walk.c:215: __endasm;
      002A90 02 00 00         [24] 2153 	ljmp	0
                                   2154 ;	walk.c:217: return 0;
      002A93 90 00 00         [24] 2155 	mov	dptr,#0x0000
                                   2156 ;	walk.c:218: }
      002A96 85 10 81         [24] 2157 	mov	sp,_bp
      002A99 D0 10            [24] 2158 	pop	_bp
      002A9B 22               [24] 2159 	ret
                                   2160 ;------------------------------------------------------------
                                   2161 ;Allocation info for local variables in function 'stinit'
                                   2162 ;------------------------------------------------------------
                                   2163 ;	walk.c:220: static void stinit(void) {
                                   2164 ;	-----------------------------------------
                                   2165 ;	 function stinit
                                   2166 ;	-----------------------------------------
      002A9C                       2167 _stinit:
                                   2168 ;	walk.c:221: sp = -1;
      002A9C 90 FE F0         [24] 2169 	mov	dptr,#_sp
      002A9F 74 FF            [12] 2170 	mov	a,#0xff
      002AA1 F0               [24] 2171 	movx	@dptr,a
      002AA2 A3               [24] 2172 	inc	dptr
      002AA3 F0               [24] 2173 	movx	@dptr,a
                                   2174 ;	walk.c:222: return;
                                   2175 ;	walk.c:223: }
      002AA4 22               [24] 2176 	ret
                                   2177 ;------------------------------------------------------------
                                   2178 ;Allocation info for local variables in function 'stpush'
                                   2179 ;------------------------------------------------------------
                                   2180 ;t                         Allocated to registers r5 r6 r7 
                                   2181 ;------------------------------------------------------------
                                   2182 ;	walk.c:225: static int stpush(struct node *t) {
                                   2183 ;	-----------------------------------------
                                   2184 ;	 function stpush
                                   2185 ;	-----------------------------------------
      002AA5                       2186 _stpush:
      002AA5 AD 82            [24] 2187 	mov	r5,dpl
      002AA7 AE 83            [24] 2188 	mov	r6,dph
      002AA9 AF F0            [24] 2189 	mov	r7,b
                                   2190 ;	walk.c:226: if (sp == (SMAX - 1)) return 0;
      002AAB 90 FE F0         [24] 2191 	mov	dptr,#_sp
      002AAE E0               [24] 2192 	movx	a,@dptr
      002AAF FB               [12] 2193 	mov	r3,a
      002AB0 A3               [24] 2194 	inc	dptr
      002AB1 E0               [24] 2195 	movx	a,@dptr
      002AB2 FC               [12] 2196 	mov	r4,a
      002AB3 BB AF 07         [24] 2197 	cjne	r3,#0xaf,00102$
      002AB6 BC 25 04         [24] 2198 	cjne	r4,#0x25,00102$
      002AB9 90 00 00         [24] 2199 	mov	dptr,#0x0000
      002ABC 22               [24] 2200 	ret
      002ABD                       2201 00102$:
                                   2202 ;	walk.c:227: sp++;
      002ABD 90 FE F0         [24] 2203 	mov	dptr,#_sp
      002AC0 74 01            [12] 2204 	mov	a,#0x01
      002AC2 2B               [12] 2205 	add	a,r3
      002AC3 F0               [24] 2206 	movx	@dptr,a
      002AC4 E4               [12] 2207 	clr	a
      002AC5 3C               [12] 2208 	addc	a,r4
      002AC6 A3               [24] 2209 	inc	dptr
      002AC7 F0               [24] 2210 	movx	@dptr,a
                                   2211 ;	walk.c:228: stack[sp] = *t;
      002AC8 90 FE F0         [24] 2212 	mov	dptr,#_sp
      002ACB E0               [24] 2213 	movx	a,@dptr
      002ACC FB               [12] 2214 	mov	r3,a
      002ACD A3               [24] 2215 	inc	dptr
      002ACE E0               [24] 2216 	movx	a,@dptr
      002ACF FC               [12] 2217 	mov	r4,a
      002AD0 EB               [12] 2218 	mov	a,r3
      002AD1 2B               [12] 2219 	add	a,r3
      002AD2 FB               [12] 2220 	mov	r3,a
      002AD3 EC               [12] 2221 	mov	a,r4
      002AD4 33               [12] 2222 	rlc	a
      002AD5 FC               [12] 2223 	mov	r4,a
      002AD6 EB               [12] 2224 	mov	a,r3
      002AD7 2B               [12] 2225 	add	a,r3
      002AD8 FB               [12] 2226 	mov	r3,a
      002AD9 EC               [12] 2227 	mov	a,r4
      002ADA 33               [12] 2228 	rlc	a
      002ADB FC               [12] 2229 	mov	r4,a
      002ADC EB               [12] 2230 	mov	a,r3
      002ADD 24 30            [12] 2231 	add	a,#_stack
      002ADF FB               [12] 2232 	mov	r3,a
      002AE0 EC               [12] 2233 	mov	a,r4
      002AE1 34 68            [12] 2234 	addc	a,#(_stack >> 8)
      002AE3 FC               [12] 2235 	mov	r4,a
      002AE4 7A 00            [12] 2236 	mov	r2,#0x00
      002AE6 74 04            [12] 2237 	mov	a,#0x04
      002AE8 C0 E0            [24] 2238 	push	acc
      002AEA E4               [12] 2239 	clr	a
      002AEB C0 E0            [24] 2240 	push	acc
      002AED C0 05            [24] 2241 	push	ar5
      002AEF C0 06            [24] 2242 	push	ar6
      002AF1 C0 07            [24] 2243 	push	ar7
      002AF3 8B 82            [24] 2244 	mov	dpl,r3
      002AF5 8C 83            [24] 2245 	mov	dph,r4
      002AF7 8A F0            [24] 2246 	mov	b,r2
      002AF9 12 2C FE         [24] 2247 	lcall	___memcpy
      002AFC E5 81            [12] 2248 	mov	a,sp
      002AFE 24 FB            [12] 2249 	add	a,#0xfb
      002B00 F5 81            [12] 2250 	mov	sp,a
                                   2251 ;	walk.c:229: return 1;
      002B02 90 00 01         [24] 2252 	mov	dptr,#0x0001
                                   2253 ;	walk.c:230: }
      002B05 22               [24] 2254 	ret
                                   2255 ;------------------------------------------------------------
                                   2256 ;Allocation info for local variables in function 'stpop'
                                   2257 ;------------------------------------------------------------
                                   2258 ;t                         Allocated to registers r5 r6 r7 
                                   2259 ;------------------------------------------------------------
                                   2260 ;	walk.c:232: static int stpop(struct node *t) {
                                   2261 ;	-----------------------------------------
                                   2262 ;	 function stpop
                                   2263 ;	-----------------------------------------
      002B06                       2264 _stpop:
      002B06 AD 82            [24] 2265 	mov	r5,dpl
      002B08 AE 83            [24] 2266 	mov	r6,dph
      002B0A AF F0            [24] 2267 	mov	r7,b
                                   2268 ;	walk.c:233: if (sp == -1) return 0;
      002B0C 90 FE F0         [24] 2269 	mov	dptr,#_sp
      002B0F E0               [24] 2270 	movx	a,@dptr
      002B10 FB               [12] 2271 	mov	r3,a
      002B11 A3               [24] 2272 	inc	dptr
      002B12 E0               [24] 2273 	movx	a,@dptr
      002B13 FC               [12] 2274 	mov	r4,a
      002B14 BB FF 07         [24] 2275 	cjne	r3,#0xff,00102$
      002B17 BC FF 04         [24] 2276 	cjne	r4,#0xff,00102$
      002B1A 90 00 00         [24] 2277 	mov	dptr,#0x0000
      002B1D 22               [24] 2278 	ret
      002B1E                       2279 00102$:
                                   2280 ;	walk.c:234: *t = stack[sp];
      002B1E EB               [12] 2281 	mov	a,r3
      002B1F 2B               [12] 2282 	add	a,r3
      002B20 FB               [12] 2283 	mov	r3,a
      002B21 EC               [12] 2284 	mov	a,r4
      002B22 33               [12] 2285 	rlc	a
      002B23 FC               [12] 2286 	mov	r4,a
      002B24 EB               [12] 2287 	mov	a,r3
      002B25 2B               [12] 2288 	add	a,r3
      002B26 FB               [12] 2289 	mov	r3,a
      002B27 EC               [12] 2290 	mov	a,r4
      002B28 33               [12] 2291 	rlc	a
      002B29 FC               [12] 2292 	mov	r4,a
      002B2A EB               [12] 2293 	mov	a,r3
      002B2B 24 30            [12] 2294 	add	a,#_stack
      002B2D FB               [12] 2295 	mov	r3,a
      002B2E EC               [12] 2296 	mov	a,r4
      002B2F 34 68            [12] 2297 	addc	a,#(_stack >> 8)
      002B31 FC               [12] 2298 	mov	r4,a
      002B32 7A 00            [12] 2299 	mov	r2,#0x00
      002B34 74 04            [12] 2300 	mov	a,#0x04
      002B36 C0 E0            [24] 2301 	push	acc
      002B38 E4               [12] 2302 	clr	a
      002B39 C0 E0            [24] 2303 	push	acc
      002B3B C0 03            [24] 2304 	push	ar3
      002B3D C0 04            [24] 2305 	push	ar4
      002B3F C0 02            [24] 2306 	push	ar2
      002B41 8D 82            [24] 2307 	mov	dpl,r5
      002B43 8E 83            [24] 2308 	mov	dph,r6
      002B45 8F F0            [24] 2309 	mov	b,r7
      002B47 12 2C FE         [24] 2310 	lcall	___memcpy
      002B4A E5 81            [12] 2311 	mov	a,sp
      002B4C 24 FB            [12] 2312 	add	a,#0xfb
      002B4E F5 81            [12] 2313 	mov	sp,a
                                   2314 ;	walk.c:235: sp--;
      002B50 90 FE F0         [24] 2315 	mov	dptr,#_sp
      002B53 E0               [24] 2316 	movx	a,@dptr
      002B54 24 FF            [12] 2317 	add	a,#0xff
      002B56 FE               [12] 2318 	mov	r6,a
      002B57 A3               [24] 2319 	inc	dptr
      002B58 E0               [24] 2320 	movx	a,@dptr
      002B59 34 FF            [12] 2321 	addc	a,#0xff
      002B5B FF               [12] 2322 	mov	r7,a
      002B5C 90 FE F0         [24] 2323 	mov	dptr,#_sp
      002B5F EE               [12] 2324 	mov	a,r6
      002B60 F0               [24] 2325 	movx	@dptr,a
      002B61 EF               [12] 2326 	mov	a,r7
      002B62 A3               [24] 2327 	inc	dptr
      002B63 F0               [24] 2328 	movx	@dptr,a
                                   2329 ;	walk.c:236: return 1;
      002B64 90 00 01         [24] 2330 	mov	dptr,#0x0001
                                   2331 ;	walk.c:237: }
      002B67 22               [24] 2332 	ret
                                   2333 	.area CSEG    (CODE)
                                   2334 	.area CONST   (CODE)
                                   2335 	.area CONST   (CODE)
      00414A                       2336 ___str_0:
      00414A 4D 65 6D 6F 72 79 20  2337 	.ascii "Memory error"
             65 72 72 6F 72
      004156 00                    2338 	.db 0x00
                                   2339 	.area CSEG    (CODE)
                                   2340 	.area CONST   (CODE)
      004157                       2341 ___str_1:
      004157 1B                    2342 	.db 0x1b
      004158 5B 25 64 3B 25 64 48  2343 	.ascii "[%d;%dHo"
             6F
      004160 00                    2344 	.db 0x00
                                   2345 	.area CSEG    (CODE)
                                   2346 	.area CONST   (CODE)
      004161                       2347 ___str_2:
      004161 1B                    2348 	.db 0x1b
      004162 5B 32 3B 31 48 25 20  2349 	.ascii "[2;1H% 8d% 8d% 8d"
             38 64 25 20 38 64 25
             20 38 64
      004173 00                    2350 	.db 0x00
                                   2351 	.area CSEG    (CODE)
                                   2352 	.area CONST   (CODE)
      004174                       2353 ___str_3:
      004174 1B                    2354 	.db 0x1b
      004175 5B 25 64 3B 25 64 48  2355 	.ascii "[%d;%dH."
             2E
      00417D 00                    2356 	.db 0x00
                                   2357 	.area CSEG    (CODE)
                                   2358 	.area CONST   (CODE)
      00417E                       2359 ___str_4:
      00417E 1B                    2360 	.db 0x1b
      00417F 5B 32 4A              2361 	.ascii "[2J"
      004182 1B                    2362 	.db 0x1b
      004183 5B 3F 32 35 6C        2363 	.ascii "[?25l"
      004188 00                    2364 	.db 0x00
                                   2365 	.area CSEG    (CODE)
                                   2366 	.area CONST   (CODE)
      004189                       2367 ___str_5:
      004189 1B                    2368 	.db 0x1b
      00418A 5B 31 3B 31 48 25 20  2369 	.ascii "[1;1H% 8u% 8d% 8d"
             38 75 25 20 38 64 25
             20 38 64
      00419B 00                    2370 	.db 0x00
                                   2371 	.area CSEG    (CODE)
                                   2372 	.area CONST   (CODE)
      00419C                       2373 ___str_6:
      00419C 25 20 38 64 25 20 38  2374 	.ascii "% 8d% 8d"
             64
      0041A4 00                    2375 	.db 0x00
                                   2376 	.area CSEG    (CODE)
                                   2377 	.area CONST   (CODE)
      0041A5                       2378 ___str_7:
      0041A5 1B                    2379 	.db 0x1b
      0041A6 5B 32 4A              2380 	.ascii "[2J"
      0041A9 1B                    2381 	.db 0x1b
      0041AA 5B 3F 32 35 68        2382 	.ascii "[?25h"
      0041AF 00                    2383 	.db 0x00
                                   2384 	.area CSEG    (CODE)
                                   2385 	.area XINIT   (CODE)
      0041BB                       2386 __xinit__R:
      0041BB FE FF                 2387 	.byte #0xfe,#0xff
      0041BD                       2388 __xinit__neigh_tmpl:
      0041BD FF FF                 2389 	.byte #0xff, #0xff	; -1
      0041BF 01 00                 2390 	.byte #0x01, #0x00	;  1
      0041C1 FF FF                 2391 	.byte #0xff, #0xff	; -1
      0041C3 FF FF                 2392 	.byte #0xff, #0xff	; -1
      0041C5 01 00                 2393 	.byte #0x01, #0x00	;  1
      0041C7 FF FF                 2394 	.byte #0xff, #0xff	; -1
      0041C9 01 00                 2395 	.byte #0x01, #0x00	;  1
      0041CB 01 00                 2396 	.byte #0x01, #0x00	;  1
      0041CD FF FF                 2397 	.byte #0xff, #0xff	; -1
      0041CF 00 00                 2398 	.byte #0x00, #0x00	;  0
      0041D1 00 00                 2399 	.byte #0x00, #0x00	;  0
      0041D3 FF FF                 2400 	.byte #0xff, #0xff	; -1
      0041D5 01 00                 2401 	.byte #0x01, #0x00	;  1
      0041D7 00 00                 2402 	.byte #0x00, #0x00	;  0
      0041D9 00 00                 2403 	.byte #0x00, #0x00	;  0
      0041DB 01 00                 2404 	.byte #0x01, #0x00	;  1
      0041DD FF FF                 2405 	.byte #0xff, #0xff	; -1
      0041DF 01 00                 2406 	.byte #0x01, #0x00	;  1
      0041E1 FF FF                 2407 	.byte #0xff, #0xff	; -1
      0041E3 FF FF                 2408 	.byte #0xff, #0xff	; -1
      0041E5 01 00                 2409 	.byte #0x01, #0x00	;  1
      0041E7 FF FF                 2410 	.byte #0xff, #0xff	; -1
      0041E9 01 00                 2411 	.byte #0x01, #0x00	;  1
      0041EB 01 00                 2412 	.byte #0x01, #0x00	;  1
      0041ED FF FF                 2413 	.byte #0xff, #0xff	; -1
      0041EF 00 00                 2414 	.byte #0x00, #0x00	;  0
      0041F1 00 00                 2415 	.byte #0x00, #0x00	;  0
      0041F3 FF FF                 2416 	.byte #0xff, #0xff	; -1
      0041F5 01 00                 2417 	.byte #0x01, #0x00	;  1
      0041F7 00 00                 2418 	.byte #0x00, #0x00	;  0
      0041F9 00 00                 2419 	.byte #0x00, #0x00	;  0
      0041FB 01 00                 2420 	.byte #0x01, #0x00	;  1
      0041FD                       2421 __xinit__neigh:
      0041FD FF FF                 2422 	.byte #0xff, #0xff	; -1
      0041FF 01 00                 2423 	.byte #0x01, #0x00	;  1
      004201 FF FF                 2424 	.byte #0xff, #0xff	; -1
      004203 FF FF                 2425 	.byte #0xff, #0xff	; -1
      004205 01 00                 2426 	.byte #0x01, #0x00	;  1
      004207 FF FF                 2427 	.byte #0xff, #0xff	; -1
      004209 01 00                 2428 	.byte #0x01, #0x00	;  1
      00420B 01 00                 2429 	.byte #0x01, #0x00	;  1
      00420D FF FF                 2430 	.byte #0xff, #0xff	; -1
      00420F 00 00                 2431 	.byte #0x00, #0x00	;  0
      004211 00 00                 2432 	.byte #0x00, #0x00	;  0
      004213 FF FF                 2433 	.byte #0xff, #0xff	; -1
      004215 01 00                 2434 	.byte #0x01, #0x00	;  1
      004217 00 00                 2435 	.byte #0x00, #0x00	;  0
      004219 00 00                 2436 	.byte #0x00, #0x00	;  0
      00421B 01 00                 2437 	.byte #0x01, #0x00	;  1
      00421D FF FF                 2438 	.byte #0xff, #0xff	; -1
      00421F 01 00                 2439 	.byte #0x01, #0x00	;  1
      004221 FF FF                 2440 	.byte #0xff, #0xff	; -1
      004223 FF FF                 2441 	.byte #0xff, #0xff	; -1
      004225 01 00                 2442 	.byte #0x01, #0x00	;  1
      004227 FF FF                 2443 	.byte #0xff, #0xff	; -1
      004229 01 00                 2444 	.byte #0x01, #0x00	;  1
      00422B 01 00                 2445 	.byte #0x01, #0x00	;  1
      00422D FF FF                 2446 	.byte #0xff, #0xff	; -1
      00422F 00 00                 2447 	.byte #0x00, #0x00	;  0
      004231 00 00                 2448 	.byte #0x00, #0x00	;  0
      004233 FF FF                 2449 	.byte #0xff, #0xff	; -1
      004235 01 00                 2450 	.byte #0x01, #0x00	;  1
      004237 00 00                 2451 	.byte #0x00, #0x00	;  0
      004239 00 00                 2452 	.byte #0x00, #0x00	;  0
      00423B 01 00                 2453 	.byte #0x01, #0x00	;  1
                                   2454 	.area CABS    (ABS,CODE)
