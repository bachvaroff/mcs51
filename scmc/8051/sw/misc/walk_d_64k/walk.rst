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
      004240                        321 _g:
      004240                        322 	.ds 9648
      0067F0                        323 _stack:
      0067F0                        324 	.ds 38592
      00FEB0                        325 _sp:
      00FEB0                        326 	.ds 2
                                    327 ;--------------------------------------------------------
                                    328 ; absolute external ram data
                                    329 ;--------------------------------------------------------
                                    330 	.area XABS    (ABS,XDATA)
                                    331 ;--------------------------------------------------------
                                    332 ; external initialized ram data
                                    333 ;--------------------------------------------------------
                                    334 	.area XISEG   (XDATA)
      00FEB2                        335 _R:
      00FEB2                        336 	.ds 2
      00FEB4                        337 _neigh_tmpl:
      00FEB4                        338 	.ds 64
      00FEF4                        339 _neigh:
      00FEF4                        340 	.ds 64
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
      002006 02 26 E1         [24]  379 	ljmp	_main
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
      002082 90 41 44         [24]  475 	mov	dptr,#___str_0
      002085 75 F0 80         [24]  476 	mov	b,#0x80
      002088 12 2D 8B         [24]  477 	lcall	_puts
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
      0020D8 12 2E 4A         [24]  557 	lcall	__gptrget
      0020DB F6               [12]  558 	mov	@r0,a
      0020DC A3               [24]  559 	inc	dptr
      0020DD 12 2E 4A         [24]  560 	lcall	__gptrget
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
      0020FB 24 F4            [12]  579 	add	a,#_neigh
      0020FD F5 82            [12]  580 	mov	dpl,a
      0020FF 08               [12]  581 	inc	r0
      002100 E6               [12]  582 	mov	a,@r0
      002101 34 FE            [12]  583 	addc	a,#(_neigh >> 8)
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
      002122 12 2C 3F         [24]  608 	lcall	__gptrput
      002125 A3               [24]  609 	inc	dptr
      002126 EE               [12]  610 	mov	a,r6
      002127 12 2C 3F         [24]  611 	lcall	__gptrput
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
      00214C 12 2E 4A         [24]  639 	lcall	__gptrget
      00214F FA               [12]  640 	mov	r2,a
      002150 A3               [24]  641 	inc	dptr
      002151 12 2E 4A         [24]  642 	lcall	__gptrget
      002154 FB               [12]  643 	mov	r3,a
      002155 E5 10            [12]  644 	mov	a,_bp
      002157 24 06            [12]  645 	add	a,#0x06
      002159 F8               [12]  646 	mov	r0,a
      00215A E6               [12]  647 	mov	a,@r0
      00215B 24 F4            [12]  648 	add	a,#_neigh
      00215D FC               [12]  649 	mov	r4,a
      00215E 08               [12]  650 	inc	r0
      00215F E6               [12]  651 	mov	a,@r0
      002160 34 FE            [12]  652 	addc	a,#(_neigh >> 8)
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
      002182 12 2C 3F         [24]  678 	lcall	__gptrput
      002185 A3               [24]  679 	inc	dptr
      002186 EB               [12]  680 	mov	a,r3
      002187 12 2C 3F         [24]  681 	lcall	__gptrput
                                    682 ;	walk.c:113: if (t->r < 0) t->r += ROWS;
      00218A A8 10            [24]  683 	mov	r0,_bp
      00218C 08               [12]  684 	inc	r0
      00218D 86 82            [24]  685 	mov	dpl,@r0
      00218F 08               [12]  686 	inc	r0
      002190 86 83            [24]  687 	mov	dph,@r0
      002192 08               [12]  688 	inc	r0
      002193 86 F0            [24]  689 	mov	b,@r0
      002195 12 2E 4A         [24]  690 	lcall	__gptrget
      002198 FD               [12]  691 	mov	r5,a
      002199 A3               [24]  692 	inc	dptr
      00219A 12 2E 4A         [24]  693 	lcall	__gptrget
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
      0021B5 12 2C 3F         [24]  711 	lcall	__gptrput
      0021B8 A3               [24]  712 	inc	dptr
      0021B9 EE               [12]  713 	mov	a,r6
      0021BA 12 2C 3F         [24]  714 	lcall	__gptrput
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
      0021DE 12 2C 3F         [24]  739 	lcall	__gptrput
      0021E1 A3               [24]  740 	inc	dptr
      0021E2 EC               [12]  741 	mov	a,r4
      0021E3 12 2C 3F         [24]  742 	lcall	__gptrput
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
      0021F3 12 2E 4A         [24]  753 	lcall	__gptrget
      0021F6 A3               [24]  754 	inc	dptr
      0021F7 12 2E 4A         [24]  755 	lcall	__gptrget
      0021FA 30 E7 35         [24]  756 	jnb	acc.7,00109$
      0021FD E5 10            [12]  757 	mov	a,_bp
      0021FF 24 08            [12]  758 	add	a,#0x08
      002201 F8               [12]  759 	mov	r0,a
      002202 86 82            [24]  760 	mov	dpl,@r0
      002204 08               [12]  761 	inc	r0
      002205 86 83            [24]  762 	mov	dph,@r0
      002207 08               [12]  763 	inc	r0
      002208 86 F0            [24]  764 	mov	b,@r0
      00220A 12 2E 4A         [24]  765 	lcall	__gptrget
      00220D FE               [12]  766 	mov	r6,a
      00220E A3               [24]  767 	inc	dptr
      00220F 12 2E 4A         [24]  768 	lcall	__gptrget
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
      002228 12 2C 3F         [24]  785 	lcall	__gptrput
      00222B A3               [24]  786 	inc	dptr
      00222C EF               [12]  787 	mov	a,r7
      00222D 12 2C 3F         [24]  788 	lcall	__gptrput
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
      00223F 12 2E 4A         [24]  800 	lcall	__gptrget
      002242 FE               [12]  801 	mov	r6,a
      002243 A3               [24]  802 	inc	dptr
      002244 12 2E 4A         [24]  803 	lcall	__gptrget
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
      002260 12 2E 4A         [24]  820 	lcall	__gptrget
      002263 FE               [12]  821 	mov	r6,a
      002264 A3               [24]  822 	inc	dptr
      002265 12 2E 4A         [24]  823 	lcall	__gptrget
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
      00227F 12 2C 3F         [24]  840 	lcall	__gptrput
      002282 A3               [24]  841 	inc	dptr
      002283 EF               [12]  842 	mov	a,r7
      002284 12 2C 3F         [24]  843 	lcall	__gptrput
      002287                        844 00110$:
                                    845 ;	walk.c:118: if (g[t->r][t->c] == 0xaa) return 0;
      002287 A8 10            [24]  846 	mov	r0,_bp
      002289 08               [12]  847 	inc	r0
      00228A 86 82            [24]  848 	mov	dpl,@r0
      00228C 08               [12]  849 	inc	r0
      00228D 86 83            [24]  850 	mov	dph,@r0
      00228F 08               [12]  851 	inc	r0
      002290 86 F0            [24]  852 	mov	b,@r0
      002292 12 2E 4A         [24]  853 	lcall	__gptrget
      002295 FE               [12]  854 	mov	r6,a
      002296 A3               [24]  855 	inc	dptr
      002297 12 2E 4A         [24]  856 	lcall	__gptrget
      00229A FF               [12]  857 	mov	r7,a
      00229B C0 06            [24]  858 	push	ar6
      00229D C0 07            [24]  859 	push	ar7
      00229F 90 00 C9         [24]  860 	mov	dptr,#0x00c9
      0022A2 12 2C 5A         [24]  861 	lcall	__mulint
      0022A5 AE 82            [24]  862 	mov	r6,dpl
      0022A7 AF 83            [24]  863 	mov	r7,dph
      0022A9 15 81            [12]  864 	dec	sp
      0022AB 15 81            [12]  865 	dec	sp
      0022AD EE               [12]  866 	mov	a,r6
      0022AE 24 40            [12]  867 	add	a,#_g
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
      0022C2 12 2E 4A         [24]  880 	lcall	__gptrget
      0022C5 FC               [12]  881 	mov	r4,a
      0022C6 A3               [24]  882 	inc	dptr
      0022C7 12 2E 4A         [24]  883 	lcall	__gptrget
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
      0022E8 12 2E 4A         [24]  905 	lcall	__gptrget
      0022EB FE               [12]  906 	mov	r6,a
      0022EC A3               [24]  907 	inc	dptr
      0022ED 12 2E 4A         [24]  908 	lcall	__gptrget
      0022F0 FF               [12]  909 	mov	r7,a
      0022F1 C0 06            [24]  910 	push	ar6
      0022F3 C0 07            [24]  911 	push	ar7
      0022F5 90 00 C9         [24]  912 	mov	dptr,#0x00c9
      0022F8 12 2C 5A         [24]  913 	lcall	__mulint
      0022FB AE 82            [24]  914 	mov	r6,dpl
      0022FD AF 83            [24]  915 	mov	r7,dph
      0022FF 15 81            [12]  916 	dec	sp
      002301 15 81            [12]  917 	dec	sp
      002303 EE               [12]  918 	mov	a,r6
      002304 24 40            [12]  919 	add	a,#_g
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
      002318 12 2E 4A         [24]  932 	lcall	__gptrget
      00231B FC               [12]  933 	mov	r4,a
      00231C A3               [24]  934 	inc	dptr
      00231D 12 2E 4A         [24]  935 	lcall	__gptrget
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
      00236B 12 2C F8         [24] 1005 	lcall	___memcpy
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
      0023BD 12 2C 5A         [24] 1054 	lcall	__mulint
      0023C0 AA 82            [24] 1055 	mov	r2,dpl
      0023C2 AD 83            [24] 1056 	mov	r5,dph
      0023C4 15 81            [12] 1057 	dec	sp
      0023C6 15 81            [12] 1058 	dec	sp
      0023C8 D0 00            [24] 1059 	pop	ar0
      0023CA D0 01            [24] 1060 	pop	ar1
      0023CC EA               [12] 1061 	mov	a,r2
      0023CD 24 40            [12] 1062 	add	a,#_g
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
      00240D 74 51            [12] 1107 	mov	a,#___str_1
      00240F C0 E0            [24] 1108 	push	acc
      002411 74 41            [12] 1109 	mov	a,#(___str_1 >> 8)
      002413 C0 E0            [24] 1110 	push	acc
      002415 74 80            [12] 1111 	mov	a,#0x80
      002417 C0 E0            [24] 1112 	push	acc
      002419 12 2E 11         [24] 1113 	lcall	_printf
      00241C E5 81            [12] 1114 	mov	a,sp
      00241E 24 F9            [12] 1115 	add	a,#0xf9
      002420 F5 81            [12] 1116 	mov	sp,a
      002422 D0 00            [24] 1117 	pop	ar0
      002424 D0 01            [24] 1118 	pop	ar1
      002426 D0 02            [24] 1119 	pop	ar2
      002428 D0 06            [24] 1120 	pop	ar6
                                   1121 ;	walk.c:161: return;
      00242A D0 02            [24] 1122 	pop	ar2
                                   1123 ;	walk.c:134: next:
      00242C                       1124 00102$:
                                   1125 ;	walk.c:135: printf("\033[2;1H% 8d% 8d% 8d", sp, cur.r, cur.c);
      00242C C0 02            [24] 1126 	push	ar2
      00242E 86 07            [24] 1127 	mov	ar7,@r0
      002430 08               [12] 1128 	inc	r0
      002431 86 04            [24] 1129 	mov	ar4,@r0
      002433 18               [12] 1130 	dec	r0
      002434 87 02            [24] 1131 	mov	ar2,@r1
      002436 09               [12] 1132 	inc	r1
      002437 87 05            [24] 1133 	mov	ar5,@r1
      002439 19               [12] 1134 	dec	r1
      00243A C0 06            [24] 1135 	push	ar6
      00243C C0 02            [24] 1136 	push	ar2
      00243E C0 01            [24] 1137 	push	ar1
      002440 C0 00            [24] 1138 	push	ar0
      002442 C0 07            [24] 1139 	push	ar7
      002444 C0 04            [24] 1140 	push	ar4
      002446 C0 02            [24] 1141 	push	ar2
      002448 C0 05            [24] 1142 	push	ar5
      00244A 90 FE B0         [24] 1143 	mov	dptr,#_sp
      00244D E0               [24] 1144 	movx	a,@dptr
      00244E C0 E0            [24] 1145 	push	acc
      002450 A3               [24] 1146 	inc	dptr
      002451 E0               [24] 1147 	movx	a,@dptr
      002452 C0 E0            [24] 1148 	push	acc
      002454 74 5B            [12] 1149 	mov	a,#___str_2
      002456 C0 E0            [24] 1150 	push	acc
      002458 74 41            [12] 1151 	mov	a,#(___str_2 >> 8)
      00245A C0 E0            [24] 1152 	push	acc
      00245C 74 80            [12] 1153 	mov	a,#0x80
      00245E C0 E0            [24] 1154 	push	acc
      002460 12 2E 11         [24] 1155 	lcall	_printf
      002463 E5 81            [12] 1156 	mov	a,sp
      002465 24 F7            [12] 1157 	add	a,#0xf7
      002467 F5 81            [12] 1158 	mov	sp,a
      002469 D0 00            [24] 1159 	pop	ar0
      00246B D0 01            [24] 1160 	pop	ar1
      00246D D0 02            [24] 1161 	pop	ar2
      00246F D0 06            [24] 1162 	pop	ar6
                                   1163 ;	walk.c:137: for (j = 0, f = 0; j < NMAX; j++) {
      002471 7B 00            [12] 1164 	mov	r3,#0x00
      002473 C0 00            [24] 1165 	push	ar0
      002475 E5 10            [12] 1166 	mov	a,_bp
      002477 24 12            [12] 1167 	add	a,#0x12
      002479 F8               [12] 1168 	mov	r0,a
      00247A 76 00            [12] 1169 	mov	@r0,#0x00
      00247C D0 00            [24] 1170 	pop	ar0
                                   1171 ;	walk.c:161: return;
      00247E D0 02            [24] 1172 	pop	ar2
                                   1173 ;	walk.c:137: for (j = 0, f = 0; j < NMAX; j++) {
      002480                       1174 00120$:
      002480 C0 00            [24] 1175 	push	ar0
      002482 E5 10            [12] 1176 	mov	a,_bp
      002484 24 12            [12] 1177 	add	a,#0x12
      002486 F8               [12] 1178 	mov	r0,a
      002487 B6 10 00         [24] 1179 	cjne	@r0,#0x10,00160$
      00248A                       1180 00160$:
      00248A D0 00            [24] 1181 	pop	ar0
      00248C 40 03            [24] 1182 	jc	00161$
      00248E 02 25 0E         [24] 1183 	ljmp	00106$
      002491                       1184 00161$:
                                   1185 ;	walk.c:138: if (!update(&t, &cur, j)) continue;
      002491 C0 02            [24] 1186 	push	ar2
      002493 C0 00            [24] 1187 	push	ar0
      002495 E5 10            [12] 1188 	mov	a,_bp
      002497 24 06            [12] 1189 	add	a,#0x06
      002499 F8               [12] 1190 	mov	r0,a
      00249A C0 01            [24] 1191 	push	ar1
      00249C E5 10            [12] 1192 	mov	a,_bp
      00249E 24 07            [12] 1193 	add	a,#0x07
      0024A0 F9               [12] 1194 	mov	r1,a
      0024A1 E6               [12] 1195 	mov	a,@r0
      0024A2 F7               [12] 1196 	mov	@r1,a
      0024A3 09               [12] 1197 	inc	r1
      0024A4 77 00            [12] 1198 	mov	@r1,#0x00
      0024A6 09               [12] 1199 	inc	r1
      0024A7 77 40            [12] 1200 	mov	@r1,#0x40
      0024A9 D0 01            [24] 1201 	pop	ar1
      0024AB D0 00            [24] 1202 	pop	ar0
      0024AD 8E 04            [24] 1203 	mov	ar4,r6
      0024AF 7D 00            [12] 1204 	mov	r5,#0x00
      0024B1 7F 40            [12] 1205 	mov	r7,#0x40
      0024B3 C0 06            [24] 1206 	push	ar6
      0024B5 C0 03            [24] 1207 	push	ar3
      0024B7 C0 02            [24] 1208 	push	ar2
      0024B9 C0 01            [24] 1209 	push	ar1
      0024BB C0 00            [24] 1210 	push	ar0
      0024BD 85 00 F0         [24] 1211 	mov	b,ar0
      0024C0 E5 10            [12] 1212 	mov	a,_bp
      0024C2 24 12            [12] 1213 	add	a,#0x12
      0024C4 F8               [12] 1214 	mov	r0,a
      0024C5 E6               [12] 1215 	mov	a,@r0
      0024C6 C0 E0            [24] 1216 	push	acc
      0024C8 A8 F0            [24] 1217 	mov	r0,b
      0024CA 85 00 F0         [24] 1218 	mov	b,ar0
      0024CD E5 10            [12] 1219 	mov	a,_bp
      0024CF 24 07            [12] 1220 	add	a,#0x07
      0024D1 F8               [12] 1221 	mov	r0,a
      0024D2 E6               [12] 1222 	mov	a,@r0
      0024D3 C0 E0            [24] 1223 	push	acc
      0024D5 08               [12] 1224 	inc	r0
      0024D6 E6               [12] 1225 	mov	a,@r0
      0024D7 C0 E0            [24] 1226 	push	acc
      0024D9 08               [12] 1227 	inc	r0
      0024DA E6               [12] 1228 	mov	a,@r0
      0024DB C0 E0            [24] 1229 	push	acc
      0024DD 8C 82            [24] 1230 	mov	dpl,r4
      0024DF 8D 83            [24] 1231 	mov	dph,r5
      0024E1 8F F0            [24] 1232 	mov	b,r7
      0024E3 12 20 AF         [24] 1233 	lcall	_update
      0024E6 AD 82            [24] 1234 	mov	r5,dpl
      0024E8 AF 83            [24] 1235 	mov	r7,dph
      0024EA E5 81            [12] 1236 	mov	a,sp
      0024EC 24 FC            [12] 1237 	add	a,#0xfc
      0024EE F5 81            [12] 1238 	mov	sp,a
      0024F0 D0 00            [24] 1239 	pop	ar0
      0024F2 D0 01            [24] 1240 	pop	ar1
      0024F4 D0 02            [24] 1241 	pop	ar2
      0024F6 D0 03            [24] 1242 	pop	ar3
      0024F8 D0 06            [24] 1243 	pop	ar6
      0024FA D0 02            [24] 1244 	pop	ar2
      0024FC ED               [12] 1245 	mov	a,r5
      0024FD 4F               [12] 1246 	orl	a,r7
      0024FE 60 01            [24] 1247 	jz	00105$
                                   1248 ;	walk.c:139: f++;
      002500 0B               [12] 1249 	inc	r3
      002501                       1250 00105$:
                                   1251 ;	walk.c:137: for (j = 0, f = 0; j < NMAX; j++) {
      002501 C0 00            [24] 1252 	push	ar0
      002503 E5 10            [12] 1253 	mov	a,_bp
      002505 24 12            [12] 1254 	add	a,#0x12
      002507 F8               [12] 1255 	mov	r0,a
      002508 06               [12] 1256 	inc	@r0
      002509 D0 00            [24] 1257 	pop	ar0
      00250B 02 24 80         [24] 1258 	ljmp	00120$
      00250E                       1259 00106$:
                                   1260 ;	walk.c:142: if (f) {
      00250E EB               [12] 1261 	mov	a,r3
      00250F 70 03            [24] 1262 	jnz	00163$
      002511 02 26 4C         [24] 1263 	ljmp	00115$
      002514                       1264 00163$:
                                   1265 ;	walk.c:143: while (1) {
      002514                       1266 00112$:
                                   1267 ;	walk.c:144: j = rand() % NMAX;
      002514 C0 02            [24] 1268 	push	ar2
      002516 C0 06            [24] 1269 	push	ar6
      002518 C0 02            [24] 1270 	push	ar2
      00251A C0 01            [24] 1271 	push	ar1
      00251C C0 00            [24] 1272 	push	ar0
      00251E 12 2B 62         [24] 1273 	lcall	_rand
      002521 AD 82            [24] 1274 	mov	r5,dpl
      002523 AF 83            [24] 1275 	mov	r7,dph
      002525 74 10            [12] 1276 	mov	a,#0x10
      002527 C0 E0            [24] 1277 	push	acc
      002529 E4               [12] 1278 	clr	a
      00252A C0 E0            [24] 1279 	push	acc
      00252C 8D 82            [24] 1280 	mov	dpl,r5
      00252E 8F 83            [24] 1281 	mov	dph,r7
      002530 12 2E 66         [24] 1282 	lcall	__modsint
      002533 AD 82            [24] 1283 	mov	r5,dpl
      002535 15 81            [12] 1284 	dec	sp
      002537 15 81            [12] 1285 	dec	sp
      002539 D0 00            [24] 1286 	pop	ar0
      00253B D0 01            [24] 1287 	pop	ar1
      00253D D0 02            [24] 1288 	pop	ar2
      00253F D0 06            [24] 1289 	pop	ar6
      002541 8D 04            [24] 1290 	mov	ar4,r5
                                   1291 ;	walk.c:145: if (!update(&t, &cur, j)) continue;
      002543 C0 00            [24] 1292 	push	ar0
      002545 E5 10            [12] 1293 	mov	a,_bp
      002547 24 05            [12] 1294 	add	a,#0x05
      002549 F8               [12] 1295 	mov	r0,a
      00254A C0 01            [24] 1296 	push	ar1
      00254C E5 10            [12] 1297 	mov	a,_bp
      00254E 24 07            [12] 1298 	add	a,#0x07
      002550 F9               [12] 1299 	mov	r1,a
      002551 E6               [12] 1300 	mov	a,@r0
      002552 F7               [12] 1301 	mov	@r1,a
      002553 09               [12] 1302 	inc	r1
      002554 77 00            [12] 1303 	mov	@r1,#0x00
      002556 09               [12] 1304 	inc	r1
      002557 77 40            [12] 1305 	mov	@r1,#0x40
      002559 D0 01            [24] 1306 	pop	ar1
      00255B E5 10            [12] 1307 	mov	a,_bp
      00255D 24 04            [12] 1308 	add	a,#0x04
      00255F F8               [12] 1309 	mov	r0,a
      002560 86 02            [24] 1310 	mov	ar2,@r0
      002562 7D 00            [12] 1311 	mov	r5,#0x00
      002564 7F 40            [12] 1312 	mov	r7,#0x40
      002566 D0 00            [24] 1313 	pop	ar0
      002568 C0 06            [24] 1314 	push	ar6
      00256A C0 02            [24] 1315 	push	ar2
      00256C C0 01            [24] 1316 	push	ar1
      00256E C0 00            [24] 1317 	push	ar0
      002570 C0 04            [24] 1318 	push	ar4
      002572 85 00 F0         [24] 1319 	mov	b,ar0
      002575 E5 10            [12] 1320 	mov	a,_bp
      002577 24 07            [12] 1321 	add	a,#0x07
      002579 F8               [12] 1322 	mov	r0,a
      00257A E6               [12] 1323 	mov	a,@r0
      00257B C0 E0            [24] 1324 	push	acc
      00257D 08               [12] 1325 	inc	r0
      00257E E6               [12] 1326 	mov	a,@r0
      00257F C0 E0            [24] 1327 	push	acc
      002581 08               [12] 1328 	inc	r0
      002582 E6               [12] 1329 	mov	a,@r0
      002583 C0 E0            [24] 1330 	push	acc
      002585 8A 82            [24] 1331 	mov	dpl,r2
      002587 8D 83            [24] 1332 	mov	dph,r5
      002589 8F F0            [24] 1333 	mov	b,r7
      00258B 12 20 AF         [24] 1334 	lcall	_update
      00258E AD 82            [24] 1335 	mov	r5,dpl
      002590 AF 83            [24] 1336 	mov	r7,dph
      002592 E5 81            [12] 1337 	mov	a,sp
      002594 24 FC            [12] 1338 	add	a,#0xfc
      002596 F5 81            [12] 1339 	mov	sp,a
      002598 D0 00            [24] 1340 	pop	ar0
      00259A D0 01            [24] 1341 	pop	ar1
      00259C D0 02            [24] 1342 	pop	ar2
      00259E D0 06            [24] 1343 	pop	ar6
      0025A0 D0 02            [24] 1344 	pop	ar2
      0025A2 ED               [12] 1345 	mov	a,r5
      0025A3 4F               [12] 1346 	orl	a,r7
      0025A4 70 03            [24] 1347 	jnz	00164$
      0025A6 02 25 14         [24] 1348 	ljmp	00112$
      0025A9                       1349 00164$:
                                   1350 ;	walk.c:147: if (!stpush(&cur)) bang();
      0025A9 8A 04            [24] 1351 	mov	ar4,r2
      0025AB 7D 00            [12] 1352 	mov	r5,#0x00
      0025AD 7F 40            [12] 1353 	mov	r7,#0x40
      0025AF 8C 82            [24] 1354 	mov	dpl,r4
      0025B1 8D 83            [24] 1355 	mov	dph,r5
      0025B3 8F F0            [24] 1356 	mov	b,r7
      0025B5 C0 06            [24] 1357 	push	ar6
      0025B7 C0 02            [24] 1358 	push	ar2
      0025B9 C0 01            [24] 1359 	push	ar1
      0025BB C0 00            [24] 1360 	push	ar0
      0025BD 12 2A 9F         [24] 1361 	lcall	_stpush
      0025C0 E5 82            [12] 1362 	mov	a,dpl
      0025C2 85 83 F0         [24] 1363 	mov	b,dph
      0025C5 D0 00            [24] 1364 	pop	ar0
      0025C7 D0 01            [24] 1365 	pop	ar1
      0025C9 D0 02            [24] 1366 	pop	ar2
      0025CB D0 06            [24] 1367 	pop	ar6
      0025CD 45 F0            [12] 1368 	orl	a,b
      0025CF 70 13            [24] 1369 	jnz	00110$
      0025D1 C0 06            [24] 1370 	push	ar6
      0025D3 C0 02            [24] 1371 	push	ar2
      0025D5 C0 01            [24] 1372 	push	ar1
      0025D7 C0 00            [24] 1373 	push	ar0
      0025D9 12 20 82         [24] 1374 	lcall	_bang
      0025DC D0 00            [24] 1375 	pop	ar0
      0025DE D0 01            [24] 1376 	pop	ar1
      0025E0 D0 02            [24] 1377 	pop	ar2
      0025E2 D0 06            [24] 1378 	pop	ar6
      0025E4                       1379 00110$:
                                   1380 ;	walk.c:148: cur = t;
      0025E4 C0 02            [24] 1381 	push	ar2
      0025E6 C0 00            [24] 1382 	push	ar0
      0025E8 A8 10            [24] 1383 	mov	r0,_bp
      0025EA 08               [12] 1384 	inc	r0
      0025EB C0 01            [24] 1385 	push	ar1
      0025ED E5 10            [12] 1386 	mov	a,_bp
      0025EF 24 07            [12] 1387 	add	a,#0x07
      0025F1 F9               [12] 1388 	mov	r1,a
      0025F2 E6               [12] 1389 	mov	a,@r0
      0025F3 F7               [12] 1390 	mov	@r1,a
      0025F4 09               [12] 1391 	inc	r1
      0025F5 77 00            [12] 1392 	mov	@r1,#0x00
      0025F7 09               [12] 1393 	inc	r1
      0025F8 77 40            [12] 1394 	mov	@r1,#0x40
      0025FA D0 01            [24] 1395 	pop	ar1
      0025FC A8 10            [24] 1396 	mov	r0,_bp
      0025FE 08               [12] 1397 	inc	r0
      0025FF 08               [12] 1398 	inc	r0
      002600 86 02            [24] 1399 	mov	ar2,@r0
      002602 7B 00            [12] 1400 	mov	r3,#0x00
      002604 7F 40            [12] 1401 	mov	r7,#0x40
      002606 D0 00            [24] 1402 	pop	ar0
      002608 C0 06            [24] 1403 	push	ar6
      00260A C0 02            [24] 1404 	push	ar2
      00260C C0 01            [24] 1405 	push	ar1
      00260E C0 00            [24] 1406 	push	ar0
      002610 74 04            [12] 1407 	mov	a,#0x04
      002612 C0 E0            [24] 1408 	push	acc
      002614 E4               [12] 1409 	clr	a
      002615 C0 E0            [24] 1410 	push	acc
      002617 85 00 F0         [24] 1411 	mov	b,ar0
      00261A E5 10            [12] 1412 	mov	a,_bp
      00261C 24 07            [12] 1413 	add	a,#0x07
      00261E F8               [12] 1414 	mov	r0,a
      00261F E6               [12] 1415 	mov	a,@r0
      002620 C0 E0            [24] 1416 	push	acc
      002622 08               [12] 1417 	inc	r0
      002623 E6               [12] 1418 	mov	a,@r0
      002624 C0 E0            [24] 1419 	push	acc
      002626 08               [12] 1420 	inc	r0
      002627 E6               [12] 1421 	mov	a,@r0
      002628 C0 E0            [24] 1422 	push	acc
      00262A 8A 82            [24] 1423 	mov	dpl,r2
      00262C 8B 83            [24] 1424 	mov	dph,r3
      00262E 8F F0            [24] 1425 	mov	b,r7
      002630 12 2C F8         [24] 1426 	lcall	___memcpy
      002633 E5 81            [12] 1427 	mov	a,sp
      002635 24 FB            [12] 1428 	add	a,#0xfb
      002637 F5 81            [12] 1429 	mov	sp,a
                                   1430 ;	walk.c:149: flashOE(OE76_MASK7);
      002639 75 82 80         [24] 1431 	mov	dpl,#0x80
      00263C 12 20 8E         [24] 1432 	lcall	_flashOE
      00263F D0 00            [24] 1433 	pop	ar0
      002641 D0 01            [24] 1434 	pop	ar1
      002643 D0 02            [24] 1435 	pop	ar2
      002645 D0 06            [24] 1436 	pop	ar6
                                   1437 ;	walk.c:150: goto process;
      002647 D0 02            [24] 1438 	pop	ar2
      002649 02 23 A8         [24] 1439 	ljmp	00101$
      00264C                       1440 00115$:
                                   1441 ;	walk.c:154: printf("\033[%d;%dH.", cur.r + 4, cur.c + 1);
      00264C 86 05            [24] 1442 	mov	ar5,@r0
      00264E 08               [12] 1443 	inc	r0
      00264F 86 07            [24] 1444 	mov	ar7,@r0
      002651 18               [12] 1445 	dec	r0
      002652 0D               [12] 1446 	inc	r5
      002653 BD 00 01         [24] 1447 	cjne	r5,#0x00,00166$
      002656 0F               [12] 1448 	inc	r7
      002657                       1449 00166$:
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
      002674 74 6E            [12] 1468 	mov	a,#___str_3
      002676 C0 E0            [24] 1469 	push	acc
      002678 74 41            [12] 1470 	mov	a,#(___str_3 >> 8)
      00267A C0 E0            [24] 1471 	push	acc
      00267C 74 80            [12] 1472 	mov	a,#0x80
      00267E C0 E0            [24] 1473 	push	acc
      002680 12 2E 11         [24] 1474 	lcall	_printf
      002683 E5 81            [12] 1475 	mov	a,sp
      002685 24 F9            [12] 1476 	add	a,#0xf9
      002687 F5 81            [12] 1477 	mov	sp,a
      002689 D0 00            [24] 1478 	pop	ar0
      00268B D0 01            [24] 1479 	pop	ar1
      00268D D0 02            [24] 1480 	pop	ar2
      00268F D0 06            [24] 1481 	pop	ar6
                                   1482 ;	walk.c:156: if (!stpop(&cur)) goto term;
      002691 C0 00            [24] 1483 	push	ar0
      002693 E5 10            [12] 1484 	mov	a,_bp
      002695 24 03            [12] 1485 	add	a,#0x03
      002697 F8               [12] 1486 	mov	r0,a
      002698 86 04            [24] 1487 	mov	ar4,@r0
      00269A 7D 00            [12] 1488 	mov	r5,#0x00
      00269C 7F 40            [12] 1489 	mov	r7,#0x40
      00269E D0 00            [24] 1490 	pop	ar0
      0026A0 8C 82            [24] 1491 	mov	dpl,r4
      0026A2 8D 83            [24] 1492 	mov	dph,r5
      0026A4 8F F0            [24] 1493 	mov	b,r7
      0026A6 C0 06            [24] 1494 	push	ar6
      0026A8 C0 02            [24] 1495 	push	ar2
      0026AA C0 01            [24] 1496 	push	ar1
      0026AC C0 00            [24] 1497 	push	ar0
      0026AE 12 2B 00         [24] 1498 	lcall	_stpop
      0026B1 E5 82            [12] 1499 	mov	a,dpl
      0026B3 85 83 F0         [24] 1500 	mov	b,dph
      0026B6 D0 00            [24] 1501 	pop	ar0
      0026B8 D0 01            [24] 1502 	pop	ar1
      0026BA D0 02            [24] 1503 	pop	ar2
      0026BC D0 06            [24] 1504 	pop	ar6
      0026BE 45 F0            [12] 1505 	orl	a,b
      0026C0 60 19            [24] 1506 	jz	00118$
                                   1507 ;	walk.c:157: flashOE(OE76_MASK6);
      0026C2 75 82 40         [24] 1508 	mov	dpl,#0x40
      0026C5 C0 06            [24] 1509 	push	ar6
      0026C7 C0 02            [24] 1510 	push	ar2
      0026C9 C0 01            [24] 1511 	push	ar1
      0026CB C0 00            [24] 1512 	push	ar0
      0026CD 12 20 8E         [24] 1513 	lcall	_flashOE
      0026D0 D0 00            [24] 1514 	pop	ar0
      0026D2 D0 01            [24] 1515 	pop	ar1
      0026D4 D0 02            [24] 1516 	pop	ar2
      0026D6 D0 06            [24] 1517 	pop	ar6
                                   1518 ;	walk.c:158: goto next;
      0026D8 02 24 2C         [24] 1519 	ljmp	00102$
                                   1520 ;	walk.c:160: term:
      0026DB                       1521 00118$:
                                   1522 ;	walk.c:161: return;
                                   1523 ;	walk.c:162: }
      0026DB 85 10 81         [24] 1524 	mov	sp,_bp
      0026DE D0 10            [24] 1525 	pop	_bp
      0026E0 22               [24] 1526 	ret
                                   1527 ;------------------------------------------------------------
                                   1528 ;Allocation info for local variables in function 'main'
                                   1529 ;------------------------------------------------------------
                                   1530 ;initial                   Allocated to stack - _bp +7
                                   1531 ;N                         Allocated to stack - _bp +11
                                   1532 ;i                         Allocated to stack - _bp +5
                                   1533 ;j                         Allocated to registers r2 r6 
                                   1534 ;sloc0                     Allocated to stack - _bp +1
                                   1535 ;sloc1                     Allocated to stack - _bp +3
                                   1536 ;sloc2                     Allocated to stack - _bp +15
                                   1537 ;------------------------------------------------------------
                                   1538 ;	walk.c:164: int main(void) {
                                   1539 ;	-----------------------------------------
                                   1540 ;	 function main
                                   1541 ;	-----------------------------------------
      0026E1                       1542 _main:
      0026E1 C0 10            [24] 1543 	push	_bp
      0026E3 E5 81            [12] 1544 	mov	a,sp
      0026E5 F5 10            [12] 1545 	mov	_bp,a
      0026E7 24 0C            [12] 1546 	add	a,#0x0c
      0026E9 F5 81            [12] 1547 	mov	sp,a
                                   1548 ;	walk.c:169: i0 = 1u;
      0026EB 78 11            [12] 1549 	mov	r0,#_i0
      0026ED 76 01            [12] 1550 	mov	@r0,#0x01
                                   1551 ;	walk.c:171: P1_7 = 1;
                                   1552 ;	assignBit
      0026EF D2 97            [12] 1553 	setb	_P1_7
                                   1554 ;	walk.c:172: IT0 = 1;
                                   1555 ;	assignBit
      0026F1 D2 88            [12] 1556 	setb	_IT0
                                   1557 ;	walk.c:173: EX0 = 1;
                                   1558 ;	assignBit
      0026F3 D2 A8            [12] 1559 	setb	_EX0
                                   1560 ;	walk.c:174: EA = 1;
                                   1561 ;	assignBit
      0026F5 D2 AF            [12] 1562 	setb	_EA
                                   1563 ;	walk.c:176: srand(*R);
      0026F7 90 FE B2         [24] 1564 	mov	dptr,#_R
      0026FA E0               [24] 1565 	movx	a,@dptr
      0026FB FE               [12] 1566 	mov	r6,a
      0026FC A3               [24] 1567 	inc	dptr
      0026FD E0               [24] 1568 	movx	a,@dptr
      0026FE FF               [12] 1569 	mov	r7,a
      0026FF 8E 82            [24] 1570 	mov	dpl,r6
      002701 8F 83            [24] 1571 	mov	dph,r7
      002703 E0               [24] 1572 	movx	a,@dptr
      002704 FE               [12] 1573 	mov	r6,a
      002705 A3               [24] 1574 	inc	dptr
      002706 E0               [24] 1575 	movx	a,@dptr
      002707 FF               [12] 1576 	mov	r7,a
      002708 8E 82            [24] 1577 	mov	dpl,r6
      00270A 8F 83            [24] 1578 	mov	dph,r7
      00270C 12 2C 26         [24] 1579 	lcall	_srand
                                   1580 ;	walk.c:177: stinit();
      00270F 12 2A 96         [24] 1581 	lcall	_stinit
                                   1582 ;	walk.c:179: puts("\033[2J\033[?25l");
      002712 90 41 78         [24] 1583 	mov	dptr,#___str_4
      002715 75 F0 80         [24] 1584 	mov	b,#0x80
      002718 12 2D 8B         [24] 1585 	lcall	_puts
                                   1586 ;	walk.c:181: while (i0) {
      00271B E5 10            [12] 1587 	mov	a,_bp
      00271D 24 07            [12] 1588 	add	a,#0x07
      00271F F9               [12] 1589 	mov	r1,a
      002720 FF               [12] 1590 	mov	r7,a
      002721 E5 10            [12] 1591 	mov	a,_bp
      002723 24 0B            [12] 1592 	add	a,#0x0b
      002725 F8               [12] 1593 	mov	r0,a
      002726 E4               [12] 1594 	clr	a
      002727 F6               [12] 1595 	mov	@r0,a
      002728 08               [12] 1596 	inc	r0
      002729 F6               [12] 1597 	mov	@r0,a
      00272A                       1598 00108$:
      00272A 78 11            [12] 1599 	mov	r0,#_i0
      00272C E6               [12] 1600 	mov	a,@r0
      00272D 70 03            [24] 1601 	jnz	00181$
      00272F 02 2A 7F         [24] 1602 	ljmp	00110$
      002732                       1603 00181$:
                                   1604 ;	walk.c:182: for (i = 0; i < ROWS; i++)
      002732 7B 00            [12] 1605 	mov	r3,#0x00
      002734 7C 00            [12] 1606 	mov	r4,#0x00
      002736 A8 10            [24] 1607 	mov	r0,_bp
      002738 08               [12] 1608 	inc	r0
      002739 E4               [12] 1609 	clr	a
      00273A F6               [12] 1610 	mov	@r0,a
      00273B 08               [12] 1611 	inc	r0
      00273C F6               [12] 1612 	mov	@r0,a
                                   1613 ;	walk.c:183: for (j = 0; j < COLS; j++)
      00273D                       1614 00124$:
      00273D A8 10            [24] 1615 	mov	r0,_bp
      00273F 08               [12] 1616 	inc	r0
      002740 C0 01            [24] 1617 	push	ar1
      002742 E5 10            [12] 1618 	mov	a,_bp
      002744 24 03            [12] 1619 	add	a,#0x03
      002746 F9               [12] 1620 	mov	r1,a
      002747 E6               [12] 1621 	mov	a,@r0
      002748 24 40            [12] 1622 	add	a,#_g
      00274A F7               [12] 1623 	mov	@r1,a
      00274B 08               [12] 1624 	inc	r0
      00274C E6               [12] 1625 	mov	a,@r0
      00274D 34 42            [12] 1626 	addc	a,#(_g >> 8)
      00274F 09               [12] 1627 	inc	r1
      002750 F7               [12] 1628 	mov	@r1,a
      002751 D0 01            [24] 1629 	pop	ar1
      002753 7A 00            [12] 1630 	mov	r2,#0x00
      002755 7E 00            [12] 1631 	mov	r6,#0x00
      002757                       1632 00111$:
                                   1633 ;	walk.c:184: g[i][j] = 0x55;
      002757 E5 10            [12] 1634 	mov	a,_bp
      002759 24 03            [12] 1635 	add	a,#0x03
      00275B F8               [12] 1636 	mov	r0,a
      00275C EA               [12] 1637 	mov	a,r2
      00275D 26               [12] 1638 	add	a,@r0
      00275E F5 82            [12] 1639 	mov	dpl,a
      002760 EE               [12] 1640 	mov	a,r6
      002761 08               [12] 1641 	inc	r0
      002762 36               [12] 1642 	addc	a,@r0
      002763 F5 83            [12] 1643 	mov	dph,a
      002765 74 55            [12] 1644 	mov	a,#0x55
      002767 F0               [24] 1645 	movx	@dptr,a
                                   1646 ;	walk.c:183: for (j = 0; j < COLS; j++)
      002768 0A               [12] 1647 	inc	r2
      002769 BA 00 01         [24] 1648 	cjne	r2,#0x00,00182$
      00276C 0E               [12] 1649 	inc	r6
      00276D                       1650 00182$:
      00276D C3               [12] 1651 	clr	c
      00276E EA               [12] 1652 	mov	a,r2
      00276F 94 C9            [12] 1653 	subb	a,#0xc9
      002771 EE               [12] 1654 	mov	a,r6
      002772 64 80            [12] 1655 	xrl	a,#0x80
      002774 94 80            [12] 1656 	subb	a,#0x80
      002776 40 DF            [24] 1657 	jc	00111$
                                   1658 ;	walk.c:182: for (i = 0; i < ROWS; i++)
      002778 A8 10            [24] 1659 	mov	r0,_bp
      00277A 08               [12] 1660 	inc	r0
      00277B 74 C9            [12] 1661 	mov	a,#0xc9
      00277D 26               [12] 1662 	add	a,@r0
      00277E F6               [12] 1663 	mov	@r0,a
      00277F E4               [12] 1664 	clr	a
      002780 08               [12] 1665 	inc	r0
      002781 36               [12] 1666 	addc	a,@r0
      002782 F6               [12] 1667 	mov	@r0,a
      002783 0B               [12] 1668 	inc	r3
      002784 BB 00 01         [24] 1669 	cjne	r3,#0x00,00184$
      002787 0C               [12] 1670 	inc	r4
      002788                       1671 00184$:
      002788 C3               [12] 1672 	clr	c
      002789 EB               [12] 1673 	mov	a,r3
      00278A 94 30            [12] 1674 	subb	a,#0x30
      00278C EC               [12] 1675 	mov	a,r4
      00278D 64 80            [12] 1676 	xrl	a,#0x80
      00278F 94 80            [12] 1677 	subb	a,#0x80
      002791 40 AA            [24] 1678 	jc	00124$
                                   1679 ;	walk.c:186: initial.r = rand() % ROWS;
      002793 E5 10            [12] 1680 	mov	a,_bp
      002795 24 07            [12] 1681 	add	a,#0x07
      002797 F8               [12] 1682 	mov	r0,a
      002798 C0 07            [24] 1683 	push	ar7
      00279A C0 01            [24] 1684 	push	ar1
      00279C C0 00            [24] 1685 	push	ar0
      00279E 12 2B 62         [24] 1686 	lcall	_rand
      0027A1 AD 82            [24] 1687 	mov	r5,dpl
      0027A3 AE 83            [24] 1688 	mov	r6,dph
      0027A5 74 30            [12] 1689 	mov	a,#0x30
      0027A7 C0 E0            [24] 1690 	push	acc
      0027A9 E4               [12] 1691 	clr	a
      0027AA C0 E0            [24] 1692 	push	acc
      0027AC 8D 82            [24] 1693 	mov	dpl,r5
      0027AE 8E 83            [24] 1694 	mov	dph,r6
      0027B0 12 2E 66         [24] 1695 	lcall	__modsint
      0027B3 AD 82            [24] 1696 	mov	r5,dpl
      0027B5 AE 83            [24] 1697 	mov	r6,dph
      0027B7 15 81            [12] 1698 	dec	sp
      0027B9 15 81            [12] 1699 	dec	sp
      0027BB D0 00            [24] 1700 	pop	ar0
      0027BD D0 01            [24] 1701 	pop	ar1
      0027BF A6 05            [24] 1702 	mov	@r0,ar5
      0027C1 08               [12] 1703 	inc	r0
      0027C2 A6 06            [24] 1704 	mov	@r0,ar6
      0027C4 18               [12] 1705 	dec	r0
                                   1706 ;	walk.c:187: initial.c = rand() % COLS;
      0027C5 74 02            [12] 1707 	mov	a,#0x02
      0027C7 29               [12] 1708 	add	a,r1
      0027C8 F8               [12] 1709 	mov	r0,a
      0027C9 C0 01            [24] 1710 	push	ar1
      0027CB C0 00            [24] 1711 	push	ar0
      0027CD 12 2B 62         [24] 1712 	lcall	_rand
      0027D0 AD 82            [24] 1713 	mov	r5,dpl
      0027D2 AE 83            [24] 1714 	mov	r6,dph
      0027D4 74 C9            [12] 1715 	mov	a,#0xc9
      0027D6 C0 E0            [24] 1716 	push	acc
      0027D8 E4               [12] 1717 	clr	a
      0027D9 C0 E0            [24] 1718 	push	acc
      0027DB 8D 82            [24] 1719 	mov	dpl,r5
      0027DD 8E 83            [24] 1720 	mov	dph,r6
      0027DF 12 2E 66         [24] 1721 	lcall	__modsint
      0027E2 AD 82            [24] 1722 	mov	r5,dpl
      0027E4 AE 83            [24] 1723 	mov	r6,dph
      0027E6 15 81            [12] 1724 	dec	sp
      0027E8 15 81            [12] 1725 	dec	sp
      0027EA D0 00            [24] 1726 	pop	ar0
      0027EC A6 05            [24] 1727 	mov	@r0,ar5
      0027EE 08               [12] 1728 	inc	r0
      0027EF A6 06            [24] 1729 	mov	@r0,ar6
      0027F1 18               [12] 1730 	dec	r0
                                   1731 ;	walk.c:189: puts("\033[2J\033[?25l");
      0027F2 90 41 78         [24] 1732 	mov	dptr,#___str_4
      0027F5 75 F0 80         [24] 1733 	mov	b,#0x80
      0027F8 C0 00            [24] 1734 	push	ar0
      0027FA 12 2D 8B         [24] 1735 	lcall	_puts
      0027FD D0 00            [24] 1736 	pop	ar0
      0027FF D0 01            [24] 1737 	pop	ar1
                                   1738 ;	walk.c:190: printf("\033[1;1H% 8u% 8d% 8d", N, initial.r, initial.c);
      002801 86 05            [24] 1739 	mov	ar5,@r0
      002803 08               [12] 1740 	inc	r0
      002804 86 06            [24] 1741 	mov	ar6,@r0
      002806 18               [12] 1742 	dec	r0
      002807 87 03            [24] 1743 	mov	ar3,@r1
      002809 09               [12] 1744 	inc	r1
      00280A 87 04            [24] 1745 	mov	ar4,@r1
      00280C 19               [12] 1746 	dec	r1
      00280D C0 01            [24] 1747 	push	ar1
      00280F C0 05            [24] 1748 	push	ar5
      002811 C0 06            [24] 1749 	push	ar6
      002813 C0 03            [24] 1750 	push	ar3
      002815 C0 04            [24] 1751 	push	ar4
      002817 E5 10            [12] 1752 	mov	a,_bp
      002819 24 0B            [12] 1753 	add	a,#0x0b
      00281B F8               [12] 1754 	mov	r0,a
      00281C E6               [12] 1755 	mov	a,@r0
      00281D C0 E0            [24] 1756 	push	acc
      00281F 08               [12] 1757 	inc	r0
      002820 E6               [12] 1758 	mov	a,@r0
      002821 C0 E0            [24] 1759 	push	acc
      002823 74 83            [12] 1760 	mov	a,#___str_5
      002825 C0 E0            [24] 1761 	push	acc
      002827 74 41            [12] 1762 	mov	a,#(___str_5 >> 8)
      002829 C0 E0            [24] 1763 	push	acc
      00282B 74 80            [12] 1764 	mov	a,#0x80
      00282D C0 E0            [24] 1765 	push	acc
      00282F 12 2E 11         [24] 1766 	lcall	_printf
      002832 E5 81            [12] 1767 	mov	a,sp
      002834 24 F7            [12] 1768 	add	a,#0xf7
      002836 F5 81            [12] 1769 	mov	sp,a
      002838 D0 01            [24] 1770 	pop	ar1
      00283A D0 07            [24] 1771 	pop	ar7
                                   1772 ;	walk.c:192: for (i = 0; i < (2 * REG); i++) {
      00283C E5 10            [12] 1773 	mov	a,_bp
      00283E 24 05            [12] 1774 	add	a,#0x05
      002840 F8               [12] 1775 	mov	r0,a
      002841 E4               [12] 1776 	clr	a
      002842 F6               [12] 1777 	mov	@r0,a
      002843 08               [12] 1778 	inc	r0
      002844 F6               [12] 1779 	mov	@r0,a
      002845                       1780 00115$:
                                   1781 ;	walk.c:193: neigh[i].r = neigh_tmpl[i].r * (1 + rand() % 4);
      002845 C0 07            [24] 1782 	push	ar7
      002847 E5 10            [12] 1783 	mov	a,_bp
      002849 24 05            [12] 1784 	add	a,#0x05
      00284B F8               [12] 1785 	mov	r0,a
      00284C E6               [12] 1786 	mov	a,@r0
      00284D 25 E0            [12] 1787 	add	a,acc
      00284F FB               [12] 1788 	mov	r3,a
      002850 08               [12] 1789 	inc	r0
      002851 E6               [12] 1790 	mov	a,@r0
      002852 33               [12] 1791 	rlc	a
      002853 FC               [12] 1792 	mov	r4,a
      002854 EB               [12] 1793 	mov	a,r3
      002855 2B               [12] 1794 	add	a,r3
      002856 FB               [12] 1795 	mov	r3,a
      002857 EC               [12] 1796 	mov	a,r4
      002858 33               [12] 1797 	rlc	a
      002859 FC               [12] 1798 	mov	r4,a
      00285A EB               [12] 1799 	mov	a,r3
      00285B 24 F4            [12] 1800 	add	a,#_neigh
      00285D FA               [12] 1801 	mov	r2,a
      00285E EC               [12] 1802 	mov	a,r4
      00285F 34 FE            [12] 1803 	addc	a,#(_neigh >> 8)
      002861 FF               [12] 1804 	mov	r7,a
      002862 EB               [12] 1805 	mov	a,r3
      002863 24 B4            [12] 1806 	add	a,#_neigh_tmpl
      002865 F5 82            [12] 1807 	mov	dpl,a
      002867 EC               [12] 1808 	mov	a,r4
      002868 34 FE            [12] 1809 	addc	a,#(_neigh_tmpl >> 8)
      00286A F5 83            [12] 1810 	mov	dph,a
      00286C E5 10            [12] 1811 	mov	a,_bp
      00286E 24 03            [12] 1812 	add	a,#0x03
      002870 F8               [12] 1813 	mov	r0,a
      002871 E0               [24] 1814 	movx	a,@dptr
      002872 F6               [12] 1815 	mov	@r0,a
      002873 A3               [24] 1816 	inc	dptr
      002874 E0               [24] 1817 	movx	a,@dptr
      002875 08               [12] 1818 	inc	r0
      002876 F6               [12] 1819 	mov	@r0,a
      002877 C0 07            [24] 1820 	push	ar7
      002879 C0 04            [24] 1821 	push	ar4
      00287B C0 03            [24] 1822 	push	ar3
      00287D C0 02            [24] 1823 	push	ar2
      00287F C0 01            [24] 1824 	push	ar1
      002881 12 2B 62         [24] 1825 	lcall	_rand
      002884 AD 82            [24] 1826 	mov	r5,dpl
      002886 AE 83            [24] 1827 	mov	r6,dph
      002888 74 04            [12] 1828 	mov	a,#0x04
      00288A C0 E0            [24] 1829 	push	acc
      00288C E4               [12] 1830 	clr	a
      00288D C0 E0            [24] 1831 	push	acc
      00288F 8D 82            [24] 1832 	mov	dpl,r5
      002891 8E 83            [24] 1833 	mov	dph,r6
      002893 12 2E 66         [24] 1834 	lcall	__modsint
      002896 AD 82            [24] 1835 	mov	r5,dpl
      002898 AE 83            [24] 1836 	mov	r6,dph
      00289A 15 81            [12] 1837 	dec	sp
      00289C 15 81            [12] 1838 	dec	sp
      00289E D0 01            [24] 1839 	pop	ar1
      0028A0 D0 02            [24] 1840 	pop	ar2
      0028A2 D0 03            [24] 1841 	pop	ar3
      0028A4 D0 04            [24] 1842 	pop	ar4
      0028A6 D0 07            [24] 1843 	pop	ar7
      0028A8 0D               [12] 1844 	inc	r5
      0028A9 BD 00 01         [24] 1845 	cjne	r5,#0x00,00186$
      0028AC 0E               [12] 1846 	inc	r6
      0028AD                       1847 00186$:
      0028AD C0 07            [24] 1848 	push	ar7
      0028AF C0 04            [24] 1849 	push	ar4
      0028B1 C0 03            [24] 1850 	push	ar3
      0028B3 C0 02            [24] 1851 	push	ar2
      0028B5 C0 01            [24] 1852 	push	ar1
      0028B7 C0 05            [24] 1853 	push	ar5
      0028B9 C0 06            [24] 1854 	push	ar6
      0028BB E5 10            [12] 1855 	mov	a,_bp
      0028BD 24 03            [12] 1856 	add	a,#0x03
      0028BF F8               [12] 1857 	mov	r0,a
      0028C0 86 82            [24] 1858 	mov	dpl,@r0
      0028C2 08               [12] 1859 	inc	r0
      0028C3 86 83            [24] 1860 	mov	dph,@r0
      0028C5 12 2C 5A         [24] 1861 	lcall	__mulint
      0028C8 AD 82            [24] 1862 	mov	r5,dpl
      0028CA AE 83            [24] 1863 	mov	r6,dph
      0028CC 15 81            [12] 1864 	dec	sp
      0028CE 15 81            [12] 1865 	dec	sp
      0028D0 D0 01            [24] 1866 	pop	ar1
      0028D2 D0 02            [24] 1867 	pop	ar2
      0028D4 D0 03            [24] 1868 	pop	ar3
      0028D6 D0 04            [24] 1869 	pop	ar4
      0028D8 D0 07            [24] 1870 	pop	ar7
      0028DA 8A 82            [24] 1871 	mov	dpl,r2
      0028DC 8F 83            [24] 1872 	mov	dph,r7
      0028DE ED               [12] 1873 	mov	a,r5
      0028DF F0               [24] 1874 	movx	@dptr,a
      0028E0 EE               [12] 1875 	mov	a,r6
      0028E1 A3               [24] 1876 	inc	dptr
      0028E2 F0               [24] 1877 	movx	@dptr,a
                                   1878 ;	walk.c:194: neigh[i].c = neigh_tmpl[i].c * (1 + rand() % 4);
      0028E3 EB               [12] 1879 	mov	a,r3
      0028E4 24 F4            [12] 1880 	add	a,#_neigh
      0028E6 FE               [12] 1881 	mov	r6,a
      0028E7 EC               [12] 1882 	mov	a,r4
      0028E8 34 FE            [12] 1883 	addc	a,#(_neigh >> 8)
      0028EA FF               [12] 1884 	mov	r7,a
      0028EB 74 02            [12] 1885 	mov	a,#0x02
      0028ED 2E               [12] 1886 	add	a,r6
      0028EE FA               [12] 1887 	mov	r2,a
      0028EF E4               [12] 1888 	clr	a
      0028F0 3F               [12] 1889 	addc	a,r7
      0028F1 FD               [12] 1890 	mov	r5,a
      0028F2 EB               [12] 1891 	mov	a,r3
      0028F3 24 B4            [12] 1892 	add	a,#_neigh_tmpl
      0028F5 FB               [12] 1893 	mov	r3,a
      0028F6 EC               [12] 1894 	mov	a,r4
      0028F7 34 FE            [12] 1895 	addc	a,#(_neigh_tmpl >> 8)
      0028F9 FC               [12] 1896 	mov	r4,a
      0028FA 8B 82            [24] 1897 	mov	dpl,r3
      0028FC 8C 83            [24] 1898 	mov	dph,r4
      0028FE A3               [24] 1899 	inc	dptr
      0028FF A3               [24] 1900 	inc	dptr
      002900 E5 10            [12] 1901 	mov	a,_bp
      002902 24 03            [12] 1902 	add	a,#0x03
      002904 F8               [12] 1903 	mov	r0,a
      002905 E0               [24] 1904 	movx	a,@dptr
      002906 F6               [12] 1905 	mov	@r0,a
      002907 A3               [24] 1906 	inc	dptr
      002908 E0               [24] 1907 	movx	a,@dptr
      002909 08               [12] 1908 	inc	r0
      00290A F6               [12] 1909 	mov	@r0,a
      00290B C0 07            [24] 1910 	push	ar7
      00290D C0 06            [24] 1911 	push	ar6
      00290F C0 05            [24] 1912 	push	ar5
      002911 C0 02            [24] 1913 	push	ar2
      002913 C0 01            [24] 1914 	push	ar1
      002915 12 2B 62         [24] 1915 	lcall	_rand
      002918 AB 82            [24] 1916 	mov	r3,dpl
      00291A AC 83            [24] 1917 	mov	r4,dph
      00291C 74 04            [12] 1918 	mov	a,#0x04
      00291E C0 E0            [24] 1919 	push	acc
      002920 E4               [12] 1920 	clr	a
      002921 C0 E0            [24] 1921 	push	acc
      002923 8B 82            [24] 1922 	mov	dpl,r3
      002925 8C 83            [24] 1923 	mov	dph,r4
      002927 12 2E 66         [24] 1924 	lcall	__modsint
      00292A AB 82            [24] 1925 	mov	r3,dpl
      00292C AC 83            [24] 1926 	mov	r4,dph
      00292E 15 81            [12] 1927 	dec	sp
      002930 15 81            [12] 1928 	dec	sp
      002932 D0 01            [24] 1929 	pop	ar1
      002934 D0 02            [24] 1930 	pop	ar2
      002936 D0 05            [24] 1931 	pop	ar5
      002938 D0 06            [24] 1932 	pop	ar6
      00293A D0 07            [24] 1933 	pop	ar7
      00293C 0B               [12] 1934 	inc	r3
      00293D BB 00 01         [24] 1935 	cjne	r3,#0x00,00187$
      002940 0C               [12] 1936 	inc	r4
      002941                       1937 00187$:
      002941 C0 07            [24] 1938 	push	ar7
      002943 C0 06            [24] 1939 	push	ar6
      002945 C0 05            [24] 1940 	push	ar5
      002947 C0 02            [24] 1941 	push	ar2
      002949 C0 01            [24] 1942 	push	ar1
      00294B C0 03            [24] 1943 	push	ar3
      00294D C0 04            [24] 1944 	push	ar4
      00294F E5 10            [12] 1945 	mov	a,_bp
      002951 24 03            [12] 1946 	add	a,#0x03
      002953 F8               [12] 1947 	mov	r0,a
      002954 86 82            [24] 1948 	mov	dpl,@r0
      002956 08               [12] 1949 	inc	r0
      002957 86 83            [24] 1950 	mov	dph,@r0
      002959 12 2C 5A         [24] 1951 	lcall	__mulint
      00295C AB 82            [24] 1952 	mov	r3,dpl
      00295E AC 83            [24] 1953 	mov	r4,dph
      002960 15 81            [12] 1954 	dec	sp
      002962 15 81            [12] 1955 	dec	sp
      002964 D0 01            [24] 1956 	pop	ar1
      002966 D0 02            [24] 1957 	pop	ar2
      002968 D0 05            [24] 1958 	pop	ar5
      00296A D0 06            [24] 1959 	pop	ar6
      00296C D0 07            [24] 1960 	pop	ar7
      00296E 8A 82            [24] 1961 	mov	dpl,r2
      002970 8D 83            [24] 1962 	mov	dph,r5
      002972 EB               [12] 1963 	mov	a,r3
      002973 F0               [24] 1964 	movx	@dptr,a
      002974 EC               [12] 1965 	mov	a,r4
      002975 A3               [24] 1966 	inc	dptr
      002976 F0               [24] 1967 	movx	@dptr,a
                                   1968 ;	walk.c:195: printf("% 8d% 8d", neigh[i].r, neigh[i].c);
      002977 8E 82            [24] 1969 	mov	dpl,r6
      002979 8F 83            [24] 1970 	mov	dph,r7
      00297B E0               [24] 1971 	movx	a,@dptr
      00297C FE               [12] 1972 	mov	r6,a
      00297D A3               [24] 1973 	inc	dptr
      00297E E0               [24] 1974 	movx	a,@dptr
      00297F FF               [12] 1975 	mov	r7,a
      002980 C0 07            [24] 1976 	push	ar7
      002982 C0 01            [24] 1977 	push	ar1
      002984 C0 03            [24] 1978 	push	ar3
      002986 C0 04            [24] 1979 	push	ar4
      002988 C0 06            [24] 1980 	push	ar6
      00298A C0 07            [24] 1981 	push	ar7
      00298C 74 96            [12] 1982 	mov	a,#___str_6
      00298E C0 E0            [24] 1983 	push	acc
      002990 74 41            [12] 1984 	mov	a,#(___str_6 >> 8)
      002992 C0 E0            [24] 1985 	push	acc
      002994 74 80            [12] 1986 	mov	a,#0x80
      002996 C0 E0            [24] 1987 	push	acc
      002998 12 2E 11         [24] 1988 	lcall	_printf
      00299B E5 81            [12] 1989 	mov	a,sp
      00299D 24 F9            [12] 1990 	add	a,#0xf9
      00299F F5 81            [12] 1991 	mov	sp,a
      0029A1 D0 01            [24] 1992 	pop	ar1
      0029A3 D0 07            [24] 1993 	pop	ar7
                                   1994 ;	walk.c:192: for (i = 0; i < (2 * REG); i++) {
      0029A5 E5 10            [12] 1995 	mov	a,_bp
      0029A7 24 05            [12] 1996 	add	a,#0x05
      0029A9 F8               [12] 1997 	mov	r0,a
      0029AA 06               [12] 1998 	inc	@r0
      0029AB B6 00 02         [24] 1999 	cjne	@r0,#0x00,00188$
      0029AE 08               [12] 2000 	inc	r0
      0029AF 06               [12] 2001 	inc	@r0
      0029B0                       2002 00188$:
      0029B0 E5 10            [12] 2003 	mov	a,_bp
      0029B2 24 05            [12] 2004 	add	a,#0x05
      0029B4 F8               [12] 2005 	mov	r0,a
      0029B5 C3               [12] 2006 	clr	c
      0029B6 E6               [12] 2007 	mov	a,@r0
      0029B7 94 08            [12] 2008 	subb	a,#0x08
      0029B9 08               [12] 2009 	inc	r0
      0029BA E6               [12] 2010 	mov	a,@r0
      0029BB 64 80            [12] 2011 	xrl	a,#0x80
      0029BD 94 80            [12] 2012 	subb	a,#0x80
      0029BF D0 07            [24] 2013 	pop	ar7
      0029C1 50 03            [24] 2014 	jnc	00189$
      0029C3 02 28 45         [24] 2015 	ljmp	00115$
      0029C6                       2016 00189$:
                                   2017 ;	walk.c:198: OE76 = OE76_0;
      0029C6 78 12            [12] 2018 	mov	r0,#_OE76
      0029C8 76 3F            [12] 2019 	mov	@r0,#0x3f
                                   2020 ;	walk.c:199: flashOE(OE76_NC);
      0029CA 75 82 00         [24] 2021 	mov	dpl,#0x00
      0029CD C0 07            [24] 2022 	push	ar7
      0029CF C0 01            [24] 2023 	push	ar1
      0029D1 12 20 8E         [24] 2024 	lcall	_flashOE
      0029D4 D0 01            [24] 2025 	pop	ar1
      0029D6 D0 07            [24] 2026 	pop	ar7
                                   2027 ;	walk.c:201: walk(&initial);
      0029D8 8F 04            [24] 2028 	mov	ar4,r7
      0029DA 7D 00            [12] 2029 	mov	r5,#0x00
      0029DC 7E 40            [12] 2030 	mov	r6,#0x40
      0029DE 8C 82            [24] 2031 	mov	dpl,r4
      0029E0 8D 83            [24] 2032 	mov	dph,r5
      0029E2 8E F0            [24] 2033 	mov	b,r6
      0029E4 C0 07            [24] 2034 	push	ar7
      0029E6 C0 01            [24] 2035 	push	ar1
      0029E8 12 23 3C         [24] 2036 	lcall	_walk
      0029EB D0 01            [24] 2037 	pop	ar1
      0029ED D0 07            [24] 2038 	pop	ar7
                                   2039 ;	walk.c:203: for (i = 0; i < ROWS; i++)
      0029EF E5 10            [12] 2040 	mov	a,_bp
      0029F1 24 05            [12] 2041 	add	a,#0x05
      0029F3 F8               [12] 2042 	mov	r0,a
      0029F4 E4               [12] 2043 	clr	a
      0029F5 F6               [12] 2044 	mov	@r0,a
      0029F6 08               [12] 2045 	inc	r0
      0029F7 F6               [12] 2046 	mov	@r0,a
      0029F8 7B 00            [12] 2047 	mov	r3,#0x00
      0029FA 7C 00            [12] 2048 	mov	r4,#0x00
                                   2049 ;	walk.c:204: for (j = 0; j < COLS; j++)
      0029FC                       2050 00131$:
      0029FC E5 10            [12] 2051 	mov	a,_bp
      0029FE 24 03            [12] 2052 	add	a,#0x03
      002A00 F8               [12] 2053 	mov	r0,a
      002A01 EB               [12] 2054 	mov	a,r3
      002A02 24 40            [12] 2055 	add	a,#_g
      002A04 F6               [12] 2056 	mov	@r0,a
      002A05 EC               [12] 2057 	mov	a,r4
      002A06 34 42            [12] 2058 	addc	a,#(_g >> 8)
      002A08 08               [12] 2059 	inc	r0
      002A09 F6               [12] 2060 	mov	@r0,a
      002A0A 7A 00            [12] 2061 	mov	r2,#0x00
      002A0C 7E 00            [12] 2062 	mov	r6,#0x00
      002A0E                       2063 00117$:
                                   2064 ;	walk.c:205: if (g[i][j] != 0xaa) bang();
      002A0E E5 10            [12] 2065 	mov	a,_bp
      002A10 24 03            [12] 2066 	add	a,#0x03
      002A12 F8               [12] 2067 	mov	r0,a
      002A13 EA               [12] 2068 	mov	a,r2
      002A14 26               [12] 2069 	add	a,@r0
      002A15 F5 82            [12] 2070 	mov	dpl,a
      002A17 EE               [12] 2071 	mov	a,r6
      002A18 08               [12] 2072 	inc	r0
      002A19 36               [12] 2073 	addc	a,@r0
      002A1A F5 83            [12] 2074 	mov	dph,a
      002A1C E0               [24] 2075 	movx	a,@dptr
      002A1D FD               [12] 2076 	mov	r5,a
      002A1E BD AA 02         [24] 2077 	cjne	r5,#0xaa,00190$
      002A21 80 1B            [24] 2078 	sjmp	00118$
      002A23                       2079 00190$:
      002A23 C0 07            [24] 2080 	push	ar7
      002A25 C0 06            [24] 2081 	push	ar6
      002A27 C0 04            [24] 2082 	push	ar4
      002A29 C0 03            [24] 2083 	push	ar3
      002A2B C0 02            [24] 2084 	push	ar2
      002A2D C0 01            [24] 2085 	push	ar1
      002A2F 12 20 82         [24] 2086 	lcall	_bang
      002A32 D0 01            [24] 2087 	pop	ar1
      002A34 D0 02            [24] 2088 	pop	ar2
      002A36 D0 03            [24] 2089 	pop	ar3
      002A38 D0 04            [24] 2090 	pop	ar4
      002A3A D0 06            [24] 2091 	pop	ar6
      002A3C D0 07            [24] 2092 	pop	ar7
      002A3E                       2093 00118$:
                                   2094 ;	walk.c:204: for (j = 0; j < COLS; j++)
      002A3E 0A               [12] 2095 	inc	r2
      002A3F BA 00 01         [24] 2096 	cjne	r2,#0x00,00191$
      002A42 0E               [12] 2097 	inc	r6
      002A43                       2098 00191$:
      002A43 C3               [12] 2099 	clr	c
      002A44 EA               [12] 2100 	mov	a,r2
      002A45 94 C9            [12] 2101 	subb	a,#0xc9
      002A47 EE               [12] 2102 	mov	a,r6
      002A48 64 80            [12] 2103 	xrl	a,#0x80
      002A4A 94 80            [12] 2104 	subb	a,#0x80
      002A4C 40 C0            [24] 2105 	jc	00117$
                                   2106 ;	walk.c:203: for (i = 0; i < ROWS; i++)
      002A4E 74 C9            [12] 2107 	mov	a,#0xc9
      002A50 2B               [12] 2108 	add	a,r3
      002A51 FB               [12] 2109 	mov	r3,a
      002A52 E4               [12] 2110 	clr	a
      002A53 3C               [12] 2111 	addc	a,r4
      002A54 FC               [12] 2112 	mov	r4,a
      002A55 E5 10            [12] 2113 	mov	a,_bp
      002A57 24 05            [12] 2114 	add	a,#0x05
      002A59 F8               [12] 2115 	mov	r0,a
      002A5A 06               [12] 2116 	inc	@r0
      002A5B B6 00 02         [24] 2117 	cjne	@r0,#0x00,00193$
      002A5E 08               [12] 2118 	inc	r0
      002A5F 06               [12] 2119 	inc	@r0
      002A60                       2120 00193$:
      002A60 E5 10            [12] 2121 	mov	a,_bp
      002A62 24 05            [12] 2122 	add	a,#0x05
      002A64 F8               [12] 2123 	mov	r0,a
      002A65 C3               [12] 2124 	clr	c
      002A66 E6               [12] 2125 	mov	a,@r0
      002A67 94 30            [12] 2126 	subb	a,#0x30
      002A69 08               [12] 2127 	inc	r0
      002A6A E6               [12] 2128 	mov	a,@r0
      002A6B 64 80            [12] 2129 	xrl	a,#0x80
      002A6D 94 80            [12] 2130 	subb	a,#0x80
      002A6F 40 8B            [24] 2131 	jc	00131$
                                   2132 ;	walk.c:207: N++;
      002A71 E5 10            [12] 2133 	mov	a,_bp
      002A73 24 0B            [12] 2134 	add	a,#0x0b
      002A75 F8               [12] 2135 	mov	r0,a
      002A76 06               [12] 2136 	inc	@r0
      002A77 B6 00 02         [24] 2137 	cjne	@r0,#0x00,00195$
      002A7A 08               [12] 2138 	inc	r0
      002A7B 06               [12] 2139 	inc	@r0
      002A7C                       2140 00195$:
      002A7C 02 27 2A         [24] 2141 	ljmp	00108$
      002A7F                       2142 00110$:
                                   2143 ;	walk.c:210: EA = 0;
                                   2144 ;	assignBit
      002A7F C2 AF            [12] 2145 	clr	_EA
                                   2146 ;	walk.c:212: puts("\033[2J\033[?25h");
      002A81 90 41 9F         [24] 2147 	mov	dptr,#___str_7
      002A84 75 F0 80         [24] 2148 	mov	b,#0x80
      002A87 12 2D 8B         [24] 2149 	lcall	_puts
                                   2150 ;	walk.c:216: __endasm;
      002A8A 02 00 00         [24] 2151 	ljmp	0
                                   2152 ;	walk.c:218: return 0;
      002A8D 90 00 00         [24] 2153 	mov	dptr,#0x0000
                                   2154 ;	walk.c:219: }
      002A90 85 10 81         [24] 2155 	mov	sp,_bp
      002A93 D0 10            [24] 2156 	pop	_bp
      002A95 22               [24] 2157 	ret
                                   2158 ;------------------------------------------------------------
                                   2159 ;Allocation info for local variables in function 'stinit'
                                   2160 ;------------------------------------------------------------
                                   2161 ;	walk.c:221: static void stinit(void) {
                                   2162 ;	-----------------------------------------
                                   2163 ;	 function stinit
                                   2164 ;	-----------------------------------------
      002A96                       2165 _stinit:
                                   2166 ;	walk.c:222: sp = -1;
      002A96 90 FE B0         [24] 2167 	mov	dptr,#_sp
      002A99 74 FF            [12] 2168 	mov	a,#0xff
      002A9B F0               [24] 2169 	movx	@dptr,a
      002A9C A3               [24] 2170 	inc	dptr
      002A9D F0               [24] 2171 	movx	@dptr,a
                                   2172 ;	walk.c:223: return;
                                   2173 ;	walk.c:224: }
      002A9E 22               [24] 2174 	ret
                                   2175 ;------------------------------------------------------------
                                   2176 ;Allocation info for local variables in function 'stpush'
                                   2177 ;------------------------------------------------------------
                                   2178 ;t                         Allocated to registers r5 r6 r7 
                                   2179 ;------------------------------------------------------------
                                   2180 ;	walk.c:226: static int stpush(struct node *t) {
                                   2181 ;	-----------------------------------------
                                   2182 ;	 function stpush
                                   2183 ;	-----------------------------------------
      002A9F                       2184 _stpush:
      002A9F AD 82            [24] 2185 	mov	r5,dpl
      002AA1 AE 83            [24] 2186 	mov	r6,dph
      002AA3 AF F0            [24] 2187 	mov	r7,b
                                   2188 ;	walk.c:227: if (sp == (SMAX - 1)) return 0;
      002AA5 90 FE B0         [24] 2189 	mov	dptr,#_sp
      002AA8 E0               [24] 2190 	movx	a,@dptr
      002AA9 FB               [12] 2191 	mov	r3,a
      002AAA A3               [24] 2192 	inc	dptr
      002AAB E0               [24] 2193 	movx	a,@dptr
      002AAC FC               [12] 2194 	mov	r4,a
      002AAD BB AF 07         [24] 2195 	cjne	r3,#0xaf,00102$
      002AB0 BC 25 04         [24] 2196 	cjne	r4,#0x25,00102$
      002AB3 90 00 00         [24] 2197 	mov	dptr,#0x0000
      002AB6 22               [24] 2198 	ret
      002AB7                       2199 00102$:
                                   2200 ;	walk.c:228: sp++;
      002AB7 90 FE B0         [24] 2201 	mov	dptr,#_sp
      002ABA 74 01            [12] 2202 	mov	a,#0x01
      002ABC 2B               [12] 2203 	add	a,r3
      002ABD F0               [24] 2204 	movx	@dptr,a
      002ABE E4               [12] 2205 	clr	a
      002ABF 3C               [12] 2206 	addc	a,r4
      002AC0 A3               [24] 2207 	inc	dptr
      002AC1 F0               [24] 2208 	movx	@dptr,a
                                   2209 ;	walk.c:229: stack[sp] = *t;
      002AC2 90 FE B0         [24] 2210 	mov	dptr,#_sp
      002AC5 E0               [24] 2211 	movx	a,@dptr
      002AC6 FB               [12] 2212 	mov	r3,a
      002AC7 A3               [24] 2213 	inc	dptr
      002AC8 E0               [24] 2214 	movx	a,@dptr
      002AC9 FC               [12] 2215 	mov	r4,a
      002ACA EB               [12] 2216 	mov	a,r3
      002ACB 2B               [12] 2217 	add	a,r3
      002ACC FB               [12] 2218 	mov	r3,a
      002ACD EC               [12] 2219 	mov	a,r4
      002ACE 33               [12] 2220 	rlc	a
      002ACF FC               [12] 2221 	mov	r4,a
      002AD0 EB               [12] 2222 	mov	a,r3
      002AD1 2B               [12] 2223 	add	a,r3
      002AD2 FB               [12] 2224 	mov	r3,a
      002AD3 EC               [12] 2225 	mov	a,r4
      002AD4 33               [12] 2226 	rlc	a
      002AD5 FC               [12] 2227 	mov	r4,a
      002AD6 EB               [12] 2228 	mov	a,r3
      002AD7 24 F0            [12] 2229 	add	a,#_stack
      002AD9 FB               [12] 2230 	mov	r3,a
      002ADA EC               [12] 2231 	mov	a,r4
      002ADB 34 67            [12] 2232 	addc	a,#(_stack >> 8)
      002ADD FC               [12] 2233 	mov	r4,a
      002ADE 7A 00            [12] 2234 	mov	r2,#0x00
      002AE0 74 04            [12] 2235 	mov	a,#0x04
      002AE2 C0 E0            [24] 2236 	push	acc
      002AE4 E4               [12] 2237 	clr	a
      002AE5 C0 E0            [24] 2238 	push	acc
      002AE7 C0 05            [24] 2239 	push	ar5
      002AE9 C0 06            [24] 2240 	push	ar6
      002AEB C0 07            [24] 2241 	push	ar7
      002AED 8B 82            [24] 2242 	mov	dpl,r3
      002AEF 8C 83            [24] 2243 	mov	dph,r4
      002AF1 8A F0            [24] 2244 	mov	b,r2
      002AF3 12 2C F8         [24] 2245 	lcall	___memcpy
      002AF6 E5 81            [12] 2246 	mov	a,sp
      002AF8 24 FB            [12] 2247 	add	a,#0xfb
      002AFA F5 81            [12] 2248 	mov	sp,a
                                   2249 ;	walk.c:230: return 1;
      002AFC 90 00 01         [24] 2250 	mov	dptr,#0x0001
                                   2251 ;	walk.c:231: }
      002AFF 22               [24] 2252 	ret
                                   2253 ;------------------------------------------------------------
                                   2254 ;Allocation info for local variables in function 'stpop'
                                   2255 ;------------------------------------------------------------
                                   2256 ;t                         Allocated to registers r5 r6 r7 
                                   2257 ;------------------------------------------------------------
                                   2258 ;	walk.c:233: static int stpop(struct node *t) {
                                   2259 ;	-----------------------------------------
                                   2260 ;	 function stpop
                                   2261 ;	-----------------------------------------
      002B00                       2262 _stpop:
      002B00 AD 82            [24] 2263 	mov	r5,dpl
      002B02 AE 83            [24] 2264 	mov	r6,dph
      002B04 AF F0            [24] 2265 	mov	r7,b
                                   2266 ;	walk.c:234: if (sp == -1) return 0;
      002B06 90 FE B0         [24] 2267 	mov	dptr,#_sp
      002B09 E0               [24] 2268 	movx	a,@dptr
      002B0A FB               [12] 2269 	mov	r3,a
      002B0B A3               [24] 2270 	inc	dptr
      002B0C E0               [24] 2271 	movx	a,@dptr
      002B0D FC               [12] 2272 	mov	r4,a
      002B0E BB FF 07         [24] 2273 	cjne	r3,#0xff,00102$
      002B11 BC FF 04         [24] 2274 	cjne	r4,#0xff,00102$
      002B14 90 00 00         [24] 2275 	mov	dptr,#0x0000
      002B17 22               [24] 2276 	ret
      002B18                       2277 00102$:
                                   2278 ;	walk.c:235: *t = stack[sp];
      002B18 EB               [12] 2279 	mov	a,r3
      002B19 2B               [12] 2280 	add	a,r3
      002B1A FB               [12] 2281 	mov	r3,a
      002B1B EC               [12] 2282 	mov	a,r4
      002B1C 33               [12] 2283 	rlc	a
      002B1D FC               [12] 2284 	mov	r4,a
      002B1E EB               [12] 2285 	mov	a,r3
      002B1F 2B               [12] 2286 	add	a,r3
      002B20 FB               [12] 2287 	mov	r3,a
      002B21 EC               [12] 2288 	mov	a,r4
      002B22 33               [12] 2289 	rlc	a
      002B23 FC               [12] 2290 	mov	r4,a
      002B24 EB               [12] 2291 	mov	a,r3
      002B25 24 F0            [12] 2292 	add	a,#_stack
      002B27 FB               [12] 2293 	mov	r3,a
      002B28 EC               [12] 2294 	mov	a,r4
      002B29 34 67            [12] 2295 	addc	a,#(_stack >> 8)
      002B2B FC               [12] 2296 	mov	r4,a
      002B2C 7A 00            [12] 2297 	mov	r2,#0x00
      002B2E 74 04            [12] 2298 	mov	a,#0x04
      002B30 C0 E0            [24] 2299 	push	acc
      002B32 E4               [12] 2300 	clr	a
      002B33 C0 E0            [24] 2301 	push	acc
      002B35 C0 03            [24] 2302 	push	ar3
      002B37 C0 04            [24] 2303 	push	ar4
      002B39 C0 02            [24] 2304 	push	ar2
      002B3B 8D 82            [24] 2305 	mov	dpl,r5
      002B3D 8E 83            [24] 2306 	mov	dph,r6
      002B3F 8F F0            [24] 2307 	mov	b,r7
      002B41 12 2C F8         [24] 2308 	lcall	___memcpy
      002B44 E5 81            [12] 2309 	mov	a,sp
      002B46 24 FB            [12] 2310 	add	a,#0xfb
      002B48 F5 81            [12] 2311 	mov	sp,a
                                   2312 ;	walk.c:236: sp--;
      002B4A 90 FE B0         [24] 2313 	mov	dptr,#_sp
      002B4D E0               [24] 2314 	movx	a,@dptr
      002B4E 24 FF            [12] 2315 	add	a,#0xff
      002B50 FE               [12] 2316 	mov	r6,a
      002B51 A3               [24] 2317 	inc	dptr
      002B52 E0               [24] 2318 	movx	a,@dptr
      002B53 34 FF            [12] 2319 	addc	a,#0xff
      002B55 FF               [12] 2320 	mov	r7,a
      002B56 90 FE B0         [24] 2321 	mov	dptr,#_sp
      002B59 EE               [12] 2322 	mov	a,r6
      002B5A F0               [24] 2323 	movx	@dptr,a
      002B5B EF               [12] 2324 	mov	a,r7
      002B5C A3               [24] 2325 	inc	dptr
      002B5D F0               [24] 2326 	movx	@dptr,a
                                   2327 ;	walk.c:237: return 1;
      002B5E 90 00 01         [24] 2328 	mov	dptr,#0x0001
                                   2329 ;	walk.c:238: }
      002B61 22               [24] 2330 	ret
                                   2331 	.area CSEG    (CODE)
                                   2332 	.area CONST   (CODE)
                                   2333 	.area CONST   (CODE)
      004144                       2334 ___str_0:
      004144 4D 65 6D 6F 72 79 20  2335 	.ascii "Memory error"
             65 72 72 6F 72
      004150 00                    2336 	.db 0x00
                                   2337 	.area CSEG    (CODE)
                                   2338 	.area CONST   (CODE)
      004151                       2339 ___str_1:
      004151 1B                    2340 	.db 0x1b
      004152 5B 25 64 3B 25 64 48  2341 	.ascii "[%d;%dHo"
             6F
      00415A 00                    2342 	.db 0x00
                                   2343 	.area CSEG    (CODE)
                                   2344 	.area CONST   (CODE)
      00415B                       2345 ___str_2:
      00415B 1B                    2346 	.db 0x1b
      00415C 5B 32 3B 31 48 25 20  2347 	.ascii "[2;1H% 8d% 8d% 8d"
             38 64 25 20 38 64 25
             20 38 64
      00416D 00                    2348 	.db 0x00
                                   2349 	.area CSEG    (CODE)
                                   2350 	.area CONST   (CODE)
      00416E                       2351 ___str_3:
      00416E 1B                    2352 	.db 0x1b
      00416F 5B 25 64 3B 25 64 48  2353 	.ascii "[%d;%dH."
             2E
      004177 00                    2354 	.db 0x00
                                   2355 	.area CSEG    (CODE)
                                   2356 	.area CONST   (CODE)
      004178                       2357 ___str_4:
      004178 1B                    2358 	.db 0x1b
      004179 5B 32 4A              2359 	.ascii "[2J"
      00417C 1B                    2360 	.db 0x1b
      00417D 5B 3F 32 35 6C        2361 	.ascii "[?25l"
      004182 00                    2362 	.db 0x00
                                   2363 	.area CSEG    (CODE)
                                   2364 	.area CONST   (CODE)
      004183                       2365 ___str_5:
      004183 1B                    2366 	.db 0x1b
      004184 5B 31 3B 31 48 25 20  2367 	.ascii "[1;1H% 8u% 8d% 8d"
             38 75 25 20 38 64 25
             20 38 64
      004195 00                    2368 	.db 0x00
                                   2369 	.area CSEG    (CODE)
                                   2370 	.area CONST   (CODE)
      004196                       2371 ___str_6:
      004196 25 20 38 64 25 20 38  2372 	.ascii "% 8d% 8d"
             64
      00419E 00                    2373 	.db 0x00
                                   2374 	.area CSEG    (CODE)
                                   2375 	.area CONST   (CODE)
      00419F                       2376 ___str_7:
      00419F 1B                    2377 	.db 0x1b
      0041A0 5B 32 4A              2378 	.ascii "[2J"
      0041A3 1B                    2379 	.db 0x1b
      0041A4 5B 3F 32 35 68        2380 	.ascii "[?25h"
      0041A9 00                    2381 	.db 0x00
                                   2382 	.area CSEG    (CODE)
                                   2383 	.area XINIT   (CODE)
      0041B5                       2384 __xinit__R:
      0041B5 FE FF                 2385 	.byte #0xfe,#0xff
      0041B7                       2386 __xinit__neigh_tmpl:
      0041B7 FF FF                 2387 	.byte #0xff, #0xff	; -1
      0041B9 01 00                 2388 	.byte #0x01, #0x00	;  1
      0041BB FF FF                 2389 	.byte #0xff, #0xff	; -1
      0041BD FF FF                 2390 	.byte #0xff, #0xff	; -1
      0041BF 01 00                 2391 	.byte #0x01, #0x00	;  1
      0041C1 FF FF                 2392 	.byte #0xff, #0xff	; -1
      0041C3 01 00                 2393 	.byte #0x01, #0x00	;  1
      0041C5 01 00                 2394 	.byte #0x01, #0x00	;  1
      0041C7 FF FF                 2395 	.byte #0xff, #0xff	; -1
      0041C9 00 00                 2396 	.byte #0x00, #0x00	;  0
      0041CB 00 00                 2397 	.byte #0x00, #0x00	;  0
      0041CD FF FF                 2398 	.byte #0xff, #0xff	; -1
      0041CF 01 00                 2399 	.byte #0x01, #0x00	;  1
      0041D1 00 00                 2400 	.byte #0x00, #0x00	;  0
      0041D3 00 00                 2401 	.byte #0x00, #0x00	;  0
      0041D5 01 00                 2402 	.byte #0x01, #0x00	;  1
      0041D7 FF FF                 2403 	.byte #0xff, #0xff	; -1
      0041D9 01 00                 2404 	.byte #0x01, #0x00	;  1
      0041DB FF FF                 2405 	.byte #0xff, #0xff	; -1
      0041DD FF FF                 2406 	.byte #0xff, #0xff	; -1
      0041DF 01 00                 2407 	.byte #0x01, #0x00	;  1
      0041E1 FF FF                 2408 	.byte #0xff, #0xff	; -1
      0041E3 01 00                 2409 	.byte #0x01, #0x00	;  1
      0041E5 01 00                 2410 	.byte #0x01, #0x00	;  1
      0041E7 FF FF                 2411 	.byte #0xff, #0xff	; -1
      0041E9 00 00                 2412 	.byte #0x00, #0x00	;  0
      0041EB 00 00                 2413 	.byte #0x00, #0x00	;  0
      0041ED FF FF                 2414 	.byte #0xff, #0xff	; -1
      0041EF 01 00                 2415 	.byte #0x01, #0x00	;  1
      0041F1 00 00                 2416 	.byte #0x00, #0x00	;  0
      0041F3 00 00                 2417 	.byte #0x00, #0x00	;  0
      0041F5 01 00                 2418 	.byte #0x01, #0x00	;  1
      0041F7                       2419 __xinit__neigh:
      0041F7 FF FF                 2420 	.byte #0xff, #0xff	; -1
      0041F9 01 00                 2421 	.byte #0x01, #0x00	;  1
      0041FB FF FF                 2422 	.byte #0xff, #0xff	; -1
      0041FD FF FF                 2423 	.byte #0xff, #0xff	; -1
      0041FF 01 00                 2424 	.byte #0x01, #0x00	;  1
      004201 FF FF                 2425 	.byte #0xff, #0xff	; -1
      004203 01 00                 2426 	.byte #0x01, #0x00	;  1
      004205 01 00                 2427 	.byte #0x01, #0x00	;  1
      004207 FF FF                 2428 	.byte #0xff, #0xff	; -1
      004209 00 00                 2429 	.byte #0x00, #0x00	;  0
      00420B 00 00                 2430 	.byte #0x00, #0x00	;  0
      00420D FF FF                 2431 	.byte #0xff, #0xff	; -1
      00420F 01 00                 2432 	.byte #0x01, #0x00	;  1
      004211 00 00                 2433 	.byte #0x00, #0x00	;  0
      004213 00 00                 2434 	.byte #0x00, #0x00	;  0
      004215 01 00                 2435 	.byte #0x01, #0x00	;  1
      004217 FF FF                 2436 	.byte #0xff, #0xff	; -1
      004219 01 00                 2437 	.byte #0x01, #0x00	;  1
      00421B FF FF                 2438 	.byte #0xff, #0xff	; -1
      00421D FF FF                 2439 	.byte #0xff, #0xff	; -1
      00421F 01 00                 2440 	.byte #0x01, #0x00	;  1
      004221 FF FF                 2441 	.byte #0xff, #0xff	; -1
      004223 01 00                 2442 	.byte #0x01, #0x00	;  1
      004225 01 00                 2443 	.byte #0x01, #0x00	;  1
      004227 FF FF                 2444 	.byte #0xff, #0xff	; -1
      004229 00 00                 2445 	.byte #0x00, #0x00	;  0
      00422B 00 00                 2446 	.byte #0x00, #0x00	;  0
      00422D FF FF                 2447 	.byte #0xff, #0xff	; -1
      00422F 01 00                 2448 	.byte #0x01, #0x00	;  1
      004231 00 00                 2449 	.byte #0x00, #0x00	;  0
      004233 00 00                 2450 	.byte #0x00, #0x00	;  0
      004235 01 00                 2451 	.byte #0x01, #0x00	;  1
                                   2452 	.area CABS    (ABS,CODE)
