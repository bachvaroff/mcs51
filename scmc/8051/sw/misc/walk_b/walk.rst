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
                           00FFFE   321 _RND	=	0xfffe
      004300                        322 _g:
      004300                        323 	.ds 9648
      0068B0                        324 _queue:
      0068B0                        325 	.ds 38592
      00FF70                        326 _hp:
      00FF70                        327 	.ds 2
      00FF72                        328 _tp:
      00FF72                        329 	.ds 2
                           00F006   330 _OEreg	=	0xf006
                                    331 ;--------------------------------------------------------
                                    332 ; absolute external ram data
                                    333 ;--------------------------------------------------------
                                    334 	.area XABS    (ABS,XDATA)
                                    335 ;--------------------------------------------------------
                                    336 ; external initialized ram data
                                    337 ;--------------------------------------------------------
                                    338 	.area XISEG   (XDATA)
      00FF74                        339 _neigh:
      00FF74                        340 	.ds 64
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
      002006 02 26 AB         [24]  379 	ljmp	_main
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
                                    420 ;	walk.c:30: void int0(void) __interrupt IE0_VECTOR __using 1 {
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
                                    435 ;	walk.c:31: i0 = 0u;
      002078 78 11            [12]  436 	mov	r0,#_i0
      00207A 76 00            [12]  437 	mov	@r0,#0x00
                                    438 ;	walk.c:32: }
      00207C D0 D0            [24]  439 	pop	psw
      00207E 32               [24]  440 	reti
                                    441 ;	eliminated unneeded push/pop dpl
                                    442 ;	eliminated unneeded push/pop dph
                                    443 ;	eliminated unneeded push/pop b
                                    444 ;	eliminated unneeded push/pop acc
                                    445 ;------------------------------------------------------------
                                    446 ;Allocation info for local variables in function 'reset'
                                    447 ;------------------------------------------------------------
                                    448 ;	walk.c:34: static void reset(void) __naked {
                                    449 ;	-----------------------------------------
                                    450 ;	 function reset
                                    451 ;	-----------------------------------------
      00207F                        452 _reset:
                                    453 ;	naked function: no prologue.
                                    454 ;	walk.c:37: __endasm;
      00207F 43 87 02         [24]  455 	orl	pcon, #2
                                    456 ;	walk.c:38: }
                                    457 ;	naked function: no epilogue.
                                    458 ;------------------------------------------------------------
                                    459 ;Allocation info for local variables in function 'bang'
                                    460 ;------------------------------------------------------------
                                    461 ;	walk.c:40: static void bang(void) {
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
                                    474 ;	walk.c:41: (void)puts("Memory error");
      002082 90 41 EF         [24]  475 	mov	dptr,#___str_0
      002085 75 F0 80         [24]  476 	mov	b,#0x80
      002088 12 2E 36         [24]  477 	lcall	_puts
                                    478 ;	walk.c:42: reset();
                                    479 ;	walk.c:44: return;
                                    480 ;	walk.c:45: }
      00208B 02 20 7F         [24]  481 	ljmp	_reset
                                    482 ;------------------------------------------------------------
                                    483 ;Allocation info for local variables in function 'flashOE'
                                    484 ;------------------------------------------------------------
                                    485 ;mask                      Allocated to registers r7 
                                    486 ;------------------------------------------------------------
                                    487 ;	walk.c:87: static void flashOE(uint8_t mask) {
                                    488 ;	-----------------------------------------
                                    489 ;	 function flashOE
                                    490 ;	-----------------------------------------
      00208E                        491 _flashOE:
      00208E AF 82            [24]  492 	mov	r7,dpl
                                    493 ;	walk.c:88: P1_7 = 0;
                                    494 ;	assignBit
      002090 C2 97            [12]  495 	clr	_P1_7
                                    496 ;	walk.c:89: OEreg = OE76;
      002092 78 12            [12]  497 	mov	r0,#_OE76
      002094 90 F0 06         [24]  498 	mov	dptr,#_OEreg
      002097 E6               [12]  499 	mov	a,@r0
      002098 F0               [24]  500 	movx	@dptr,a
                                    501 ;	walk.c:90: P1_7 = 1;
                                    502 ;	assignBit
      002099 D2 97            [12]  503 	setb	_P1_7
                                    504 ;	walk.c:91: OE76 ^= mask;
      00209B 78 12            [12]  505 	mov	r0,#_OE76
      00209D EF               [12]  506 	mov	a,r7
      00209E 66               [12]  507 	xrl	a,@r0
      00209F F6               [12]  508 	mov	@r0,a
                                    509 ;	walk.c:93: return;
                                    510 ;	walk.c:94: }
      0020A0 22               [24]  511 	ret
                                    512 ;------------------------------------------------------------
                                    513 ;Allocation info for local variables in function 'update'
                                    514 ;------------------------------------------------------------
                                    515 ;cur                       Allocated to stack - _bp -5
                                    516 ;j                         Allocated to stack - _bp -6
                                    517 ;t                         Allocated to stack - _bp +1
                                    518 ;sloc0                     Allocated to stack - _bp +4
                                    519 ;sloc1                     Allocated to stack - _bp +6
                                    520 ;sloc2                     Allocated to stack - _bp +8
                                    521 ;------------------------------------------------------------
                                    522 ;	walk.c:96: static uint8_t update(struct node *t, struct node *cur, uint8_t j) {
                                    523 ;	-----------------------------------------
                                    524 ;	 function update
                                    525 ;	-----------------------------------------
      0020A1                        526 _update:
      0020A1 C0 10            [24]  527 	push	_bp
      0020A3 85 81 10         [24]  528 	mov	_bp,sp
      0020A6 C0 82            [24]  529 	push	dpl
      0020A8 C0 83            [24]  530 	push	dph
      0020AA C0 F0            [24]  531 	push	b
      0020AC E5 81            [12]  532 	mov	a,sp
      0020AE 24 07            [12]  533 	add	a,#0x07
      0020B0 F5 81            [12]  534 	mov	sp,a
                                    535 ;	walk.c:97: t->r = cur->r + neigh[j].r;
      0020B2 E5 10            [12]  536 	mov	a,_bp
      0020B4 24 FB            [12]  537 	add	a,#0xfb
      0020B6 F8               [12]  538 	mov	r0,a
      0020B7 86 02            [24]  539 	mov	ar2,@r0
      0020B9 08               [12]  540 	inc	r0
      0020BA 86 03            [24]  541 	mov	ar3,@r0
      0020BC 08               [12]  542 	inc	r0
      0020BD 86 04            [24]  543 	mov	ar4,@r0
      0020BF 8A 82            [24]  544 	mov	dpl,r2
      0020C1 8B 83            [24]  545 	mov	dph,r3
      0020C3 8C F0            [24]  546 	mov	b,r4
      0020C5 E5 10            [12]  547 	mov	a,_bp
      0020C7 24 04            [12]  548 	add	a,#0x04
      0020C9 F8               [12]  549 	mov	r0,a
      0020CA 12 2E F5         [24]  550 	lcall	__gptrget
      0020CD F6               [12]  551 	mov	@r0,a
      0020CE A3               [24]  552 	inc	dptr
      0020CF 12 2E F5         [24]  553 	lcall	__gptrget
      0020D2 08               [12]  554 	inc	r0
      0020D3 F6               [12]  555 	mov	@r0,a
      0020D4 E5 10            [12]  556 	mov	a,_bp
      0020D6 24 FA            [12]  557 	add	a,#0xfa
      0020D8 F8               [12]  558 	mov	r0,a
      0020D9 E5 10            [12]  559 	mov	a,_bp
      0020DB 24 06            [12]  560 	add	a,#0x06
      0020DD F9               [12]  561 	mov	r1,a
      0020DE E6               [12]  562 	mov	a,@r0
      0020DF 75 F0 04         [24]  563 	mov	b,#0x04
      0020E2 A4               [48]  564 	mul	ab
      0020E3 F7               [12]  565 	mov	@r1,a
      0020E4 09               [12]  566 	inc	r1
      0020E5 A7 F0            [24]  567 	mov	@r1,b
      0020E7 E5 10            [12]  568 	mov	a,_bp
      0020E9 24 06            [12]  569 	add	a,#0x06
      0020EB F8               [12]  570 	mov	r0,a
      0020EC E6               [12]  571 	mov	a,@r0
      0020ED 24 74            [12]  572 	add	a,#_neigh
      0020EF F5 82            [12]  573 	mov	dpl,a
      0020F1 08               [12]  574 	inc	r0
      0020F2 E6               [12]  575 	mov	a,@r0
      0020F3 34 FF            [12]  576 	addc	a,#(_neigh >> 8)
      0020F5 F5 83            [12]  577 	mov	dph,a
      0020F7 E0               [24]  578 	movx	a,@dptr
      0020F8 FF               [12]  579 	mov	r7,a
      0020F9 A3               [24]  580 	inc	dptr
      0020FA E0               [24]  581 	movx	a,@dptr
      0020FB FE               [12]  582 	mov	r6,a
      0020FC E5 10            [12]  583 	mov	a,_bp
      0020FE 24 04            [12]  584 	add	a,#0x04
      002100 F8               [12]  585 	mov	r0,a
      002101 EF               [12]  586 	mov	a,r7
      002102 26               [12]  587 	add	a,@r0
      002103 FF               [12]  588 	mov	r7,a
      002104 EE               [12]  589 	mov	a,r6
      002105 08               [12]  590 	inc	r0
      002106 36               [12]  591 	addc	a,@r0
      002107 FE               [12]  592 	mov	r6,a
      002108 A8 10            [24]  593 	mov	r0,_bp
      00210A 08               [12]  594 	inc	r0
      00210B 86 82            [24]  595 	mov	dpl,@r0
      00210D 08               [12]  596 	inc	r0
      00210E 86 83            [24]  597 	mov	dph,@r0
      002110 08               [12]  598 	inc	r0
      002111 86 F0            [24]  599 	mov	b,@r0
      002113 EF               [12]  600 	mov	a,r7
      002114 12 2C EA         [24]  601 	lcall	__gptrput
      002117 A3               [24]  602 	inc	dptr
      002118 EE               [12]  603 	mov	a,r6
      002119 12 2C EA         [24]  604 	lcall	__gptrput
                                    605 ;	walk.c:98: t->c = cur->c + neigh[j].c;
      00211C A8 10            [24]  606 	mov	r0,_bp
      00211E 08               [12]  607 	inc	r0
      00211F E5 10            [12]  608 	mov	a,_bp
      002121 24 08            [12]  609 	add	a,#0x08
      002123 F9               [12]  610 	mov	r1,a
      002124 74 02            [12]  611 	mov	a,#0x02
      002126 26               [12]  612 	add	a,@r0
      002127 F7               [12]  613 	mov	@r1,a
      002128 E4               [12]  614 	clr	a
      002129 08               [12]  615 	inc	r0
      00212A 36               [12]  616 	addc	a,@r0
      00212B 09               [12]  617 	inc	r1
      00212C F7               [12]  618 	mov	@r1,a
      00212D 08               [12]  619 	inc	r0
      00212E 09               [12]  620 	inc	r1
      00212F E6               [12]  621 	mov	a,@r0
      002130 F7               [12]  622 	mov	@r1,a
      002131 74 02            [12]  623 	mov	a,#0x02
      002133 2A               [12]  624 	add	a,r2
      002134 FA               [12]  625 	mov	r2,a
      002135 E4               [12]  626 	clr	a
      002136 3B               [12]  627 	addc	a,r3
      002137 FB               [12]  628 	mov	r3,a
      002138 8A 82            [24]  629 	mov	dpl,r2
      00213A 8B 83            [24]  630 	mov	dph,r3
      00213C 8C F0            [24]  631 	mov	b,r4
      00213E 12 2E F5         [24]  632 	lcall	__gptrget
      002141 FA               [12]  633 	mov	r2,a
      002142 A3               [24]  634 	inc	dptr
      002143 12 2E F5         [24]  635 	lcall	__gptrget
      002146 FB               [12]  636 	mov	r3,a
      002147 E5 10            [12]  637 	mov	a,_bp
      002149 24 06            [12]  638 	add	a,#0x06
      00214B F8               [12]  639 	mov	r0,a
      00214C E6               [12]  640 	mov	a,@r0
      00214D 24 74            [12]  641 	add	a,#_neigh
      00214F FC               [12]  642 	mov	r4,a
      002150 08               [12]  643 	inc	r0
      002151 E6               [12]  644 	mov	a,@r0
      002152 34 FF            [12]  645 	addc	a,#(_neigh >> 8)
      002154 FD               [12]  646 	mov	r5,a
      002155 8C 82            [24]  647 	mov	dpl,r4
      002157 8D 83            [24]  648 	mov	dph,r5
      002159 A3               [24]  649 	inc	dptr
      00215A A3               [24]  650 	inc	dptr
      00215B E0               [24]  651 	movx	a,@dptr
      00215C FC               [12]  652 	mov	r4,a
      00215D A3               [24]  653 	inc	dptr
      00215E E0               [24]  654 	movx	a,@dptr
      00215F FD               [12]  655 	mov	r5,a
      002160 EC               [12]  656 	mov	a,r4
      002161 2A               [12]  657 	add	a,r2
      002162 FA               [12]  658 	mov	r2,a
      002163 ED               [12]  659 	mov	a,r5
      002164 3B               [12]  660 	addc	a,r3
      002165 FB               [12]  661 	mov	r3,a
      002166 E5 10            [12]  662 	mov	a,_bp
      002168 24 08            [12]  663 	add	a,#0x08
      00216A F8               [12]  664 	mov	r0,a
      00216B 86 82            [24]  665 	mov	dpl,@r0
      00216D 08               [12]  666 	inc	r0
      00216E 86 83            [24]  667 	mov	dph,@r0
      002170 08               [12]  668 	inc	r0
      002171 86 F0            [24]  669 	mov	b,@r0
      002173 EA               [12]  670 	mov	a,r2
      002174 12 2C EA         [24]  671 	lcall	__gptrput
      002177 A3               [24]  672 	inc	dptr
      002178 EB               [12]  673 	mov	a,r3
      002179 12 2C EA         [24]  674 	lcall	__gptrput
                                    675 ;	walk.c:100: if (t->r < 0) t->r += ROWS;
      00217C A8 10            [24]  676 	mov	r0,_bp
      00217E 08               [12]  677 	inc	r0
      00217F 86 82            [24]  678 	mov	dpl,@r0
      002181 08               [12]  679 	inc	r0
      002182 86 83            [24]  680 	mov	dph,@r0
      002184 08               [12]  681 	inc	r0
      002185 86 F0            [24]  682 	mov	b,@r0
      002187 12 2E F5         [24]  683 	lcall	__gptrget
      00218A FD               [12]  684 	mov	r5,a
      00218B A3               [24]  685 	inc	dptr
      00218C 12 2E F5         [24]  686 	lcall	__gptrget
      00218F FC               [12]  687 	mov	r4,a
      002190 EE               [12]  688 	mov	a,r6
      002191 30 E7 1D         [24]  689 	jnb	acc.7,00104$
      002194 74 30            [12]  690 	mov	a,#0x30
      002196 2D               [12]  691 	add	a,r5
      002197 FF               [12]  692 	mov	r7,a
      002198 E4               [12]  693 	clr	a
      002199 3C               [12]  694 	addc	a,r4
      00219A FE               [12]  695 	mov	r6,a
      00219B A8 10            [24]  696 	mov	r0,_bp
      00219D 08               [12]  697 	inc	r0
      00219E 86 82            [24]  698 	mov	dpl,@r0
      0021A0 08               [12]  699 	inc	r0
      0021A1 86 83            [24]  700 	mov	dph,@r0
      0021A3 08               [12]  701 	inc	r0
      0021A4 86 F0            [24]  702 	mov	b,@r0
      0021A6 EF               [12]  703 	mov	a,r7
      0021A7 12 2C EA         [24]  704 	lcall	__gptrput
      0021AA A3               [24]  705 	inc	dptr
      0021AB EE               [12]  706 	mov	a,r6
      0021AC 12 2C EA         [24]  707 	lcall	__gptrput
      0021AF 80 27            [24]  708 	sjmp	00105$
      0021B1                        709 00104$:
                                    710 ;	walk.c:101: else if (t->r >= ROWS) t->r -= ROWS;
      0021B1 C3               [12]  711 	clr	c
      0021B2 ED               [12]  712 	mov	a,r5
      0021B3 94 30            [12]  713 	subb	a,#0x30
      0021B5 EC               [12]  714 	mov	a,r4
      0021B6 64 80            [12]  715 	xrl	a,#0x80
      0021B8 94 80            [12]  716 	subb	a,#0x80
      0021BA 40 1C            [24]  717 	jc	00105$
      0021BC ED               [12]  718 	mov	a,r5
      0021BD 24 D0            [12]  719 	add	a,#0xd0
      0021BF FD               [12]  720 	mov	r5,a
      0021C0 EC               [12]  721 	mov	a,r4
      0021C1 34 FF            [12]  722 	addc	a,#0xff
      0021C3 FC               [12]  723 	mov	r4,a
      0021C4 A8 10            [24]  724 	mov	r0,_bp
      0021C6 08               [12]  725 	inc	r0
      0021C7 86 82            [24]  726 	mov	dpl,@r0
      0021C9 08               [12]  727 	inc	r0
      0021CA 86 83            [24]  728 	mov	dph,@r0
      0021CC 08               [12]  729 	inc	r0
      0021CD 86 F0            [24]  730 	mov	b,@r0
      0021CF ED               [12]  731 	mov	a,r5
      0021D0 12 2C EA         [24]  732 	lcall	__gptrput
      0021D3 A3               [24]  733 	inc	dptr
      0021D4 EC               [12]  734 	mov	a,r4
      0021D5 12 2C EA         [24]  735 	lcall	__gptrput
      0021D8                        736 00105$:
                                    737 ;	walk.c:102: if (t->c < 0) t->c += COLS;
      0021D8 E5 10            [12]  738 	mov	a,_bp
      0021DA 24 08            [12]  739 	add	a,#0x08
      0021DC F8               [12]  740 	mov	r0,a
      0021DD 86 82            [24]  741 	mov	dpl,@r0
      0021DF 08               [12]  742 	inc	r0
      0021E0 86 83            [24]  743 	mov	dph,@r0
      0021E2 08               [12]  744 	inc	r0
      0021E3 86 F0            [24]  745 	mov	b,@r0
      0021E5 12 2E F5         [24]  746 	lcall	__gptrget
      0021E8 A3               [24]  747 	inc	dptr
      0021E9 12 2E F5         [24]  748 	lcall	__gptrget
      0021EC 30 E7 35         [24]  749 	jnb	acc.7,00109$
      0021EF E5 10            [12]  750 	mov	a,_bp
      0021F1 24 08            [12]  751 	add	a,#0x08
      0021F3 F8               [12]  752 	mov	r0,a
      0021F4 86 82            [24]  753 	mov	dpl,@r0
      0021F6 08               [12]  754 	inc	r0
      0021F7 86 83            [24]  755 	mov	dph,@r0
      0021F9 08               [12]  756 	inc	r0
      0021FA 86 F0            [24]  757 	mov	b,@r0
      0021FC 12 2E F5         [24]  758 	lcall	__gptrget
      0021FF FE               [12]  759 	mov	r6,a
      002200 A3               [24]  760 	inc	dptr
      002201 12 2E F5         [24]  761 	lcall	__gptrget
      002204 FF               [12]  762 	mov	r7,a
      002205 74 C9            [12]  763 	mov	a,#0xc9
      002207 2E               [12]  764 	add	a,r6
      002208 FE               [12]  765 	mov	r6,a
      002209 E4               [12]  766 	clr	a
      00220A 3F               [12]  767 	addc	a,r7
      00220B FF               [12]  768 	mov	r7,a
      00220C E5 10            [12]  769 	mov	a,_bp
      00220E 24 08            [12]  770 	add	a,#0x08
      002210 F8               [12]  771 	mov	r0,a
      002211 86 82            [24]  772 	mov	dpl,@r0
      002213 08               [12]  773 	inc	r0
      002214 86 83            [24]  774 	mov	dph,@r0
      002216 08               [12]  775 	inc	r0
      002217 86 F0            [24]  776 	mov	b,@r0
      002219 EE               [12]  777 	mov	a,r6
      00221A 12 2C EA         [24]  778 	lcall	__gptrput
      00221D A3               [24]  779 	inc	dptr
      00221E EF               [12]  780 	mov	a,r7
      00221F 12 2C EA         [24]  781 	lcall	__gptrput
      002222 80 55            [24]  782 	sjmp	00110$
      002224                        783 00109$:
                                    784 ;	walk.c:103: else if (t->c >= COLS) t->c -= COLS;
      002224 E5 10            [12]  785 	mov	a,_bp
      002226 24 08            [12]  786 	add	a,#0x08
      002228 F8               [12]  787 	mov	r0,a
      002229 86 82            [24]  788 	mov	dpl,@r0
      00222B 08               [12]  789 	inc	r0
      00222C 86 83            [24]  790 	mov	dph,@r0
      00222E 08               [12]  791 	inc	r0
      00222F 86 F0            [24]  792 	mov	b,@r0
      002231 12 2E F5         [24]  793 	lcall	__gptrget
      002234 FE               [12]  794 	mov	r6,a
      002235 A3               [24]  795 	inc	dptr
      002236 12 2E F5         [24]  796 	lcall	__gptrget
      002239 FF               [12]  797 	mov	r7,a
      00223A C3               [12]  798 	clr	c
      00223B EE               [12]  799 	mov	a,r6
      00223C 94 C9            [12]  800 	subb	a,#0xc9
      00223E EF               [12]  801 	mov	a,r7
      00223F 64 80            [12]  802 	xrl	a,#0x80
      002241 94 80            [12]  803 	subb	a,#0x80
      002243 40 34            [24]  804 	jc	00110$
      002245 E5 10            [12]  805 	mov	a,_bp
      002247 24 08            [12]  806 	add	a,#0x08
      002249 F8               [12]  807 	mov	r0,a
      00224A 86 82            [24]  808 	mov	dpl,@r0
      00224C 08               [12]  809 	inc	r0
      00224D 86 83            [24]  810 	mov	dph,@r0
      00224F 08               [12]  811 	inc	r0
      002250 86 F0            [24]  812 	mov	b,@r0
      002252 12 2E F5         [24]  813 	lcall	__gptrget
      002255 FE               [12]  814 	mov	r6,a
      002256 A3               [24]  815 	inc	dptr
      002257 12 2E F5         [24]  816 	lcall	__gptrget
      00225A FF               [12]  817 	mov	r7,a
      00225B EE               [12]  818 	mov	a,r6
      00225C 24 37            [12]  819 	add	a,#0x37
      00225E FE               [12]  820 	mov	r6,a
      00225F EF               [12]  821 	mov	a,r7
      002260 34 FF            [12]  822 	addc	a,#0xff
      002262 FF               [12]  823 	mov	r7,a
      002263 E5 10            [12]  824 	mov	a,_bp
      002265 24 08            [12]  825 	add	a,#0x08
      002267 F8               [12]  826 	mov	r0,a
      002268 86 82            [24]  827 	mov	dpl,@r0
      00226A 08               [12]  828 	inc	r0
      00226B 86 83            [24]  829 	mov	dph,@r0
      00226D 08               [12]  830 	inc	r0
      00226E 86 F0            [24]  831 	mov	b,@r0
      002270 EE               [12]  832 	mov	a,r6
      002271 12 2C EA         [24]  833 	lcall	__gptrput
      002274 A3               [24]  834 	inc	dptr
      002275 EF               [12]  835 	mov	a,r7
      002276 12 2C EA         [24]  836 	lcall	__gptrput
      002279                        837 00110$:
                                    838 ;	walk.c:105: if (g[t->r][t->c] == 0xaau) return 0u;
      002279 A8 10            [24]  839 	mov	r0,_bp
      00227B 08               [12]  840 	inc	r0
      00227C 86 82            [24]  841 	mov	dpl,@r0
      00227E 08               [12]  842 	inc	r0
      00227F 86 83            [24]  843 	mov	dph,@r0
      002281 08               [12]  844 	inc	r0
      002282 86 F0            [24]  845 	mov	b,@r0
      002284 12 2E F5         [24]  846 	lcall	__gptrget
      002287 FE               [12]  847 	mov	r6,a
      002288 A3               [24]  848 	inc	dptr
      002289 12 2E F5         [24]  849 	lcall	__gptrget
      00228C FF               [12]  850 	mov	r7,a
      00228D C0 06            [24]  851 	push	ar6
      00228F C0 07            [24]  852 	push	ar7
      002291 90 00 C9         [24]  853 	mov	dptr,#0x00c9
      002294 12 2D 05         [24]  854 	lcall	__mulint
      002297 AE 82            [24]  855 	mov	r6,dpl
      002299 AF 83            [24]  856 	mov	r7,dph
      00229B 15 81            [12]  857 	dec	sp
      00229D 15 81            [12]  858 	dec	sp
      00229F EE               [12]  859 	mov	a,r6
      0022A0 24 00            [12]  860 	add	a,#_g
      0022A2 FE               [12]  861 	mov	r6,a
      0022A3 EF               [12]  862 	mov	a,r7
      0022A4 34 43            [12]  863 	addc	a,#(_g >> 8)
      0022A6 FF               [12]  864 	mov	r7,a
      0022A7 E5 10            [12]  865 	mov	a,_bp
      0022A9 24 08            [12]  866 	add	a,#0x08
      0022AB F8               [12]  867 	mov	r0,a
      0022AC 86 82            [24]  868 	mov	dpl,@r0
      0022AE 08               [12]  869 	inc	r0
      0022AF 86 83            [24]  870 	mov	dph,@r0
      0022B1 08               [12]  871 	inc	r0
      0022B2 86 F0            [24]  872 	mov	b,@r0
      0022B4 12 2E F5         [24]  873 	lcall	__gptrget
      0022B7 FC               [12]  874 	mov	r4,a
      0022B8 A3               [24]  875 	inc	dptr
      0022B9 12 2E F5         [24]  876 	lcall	__gptrget
      0022BC FD               [12]  877 	mov	r5,a
      0022BD EC               [12]  878 	mov	a,r4
      0022BE 2E               [12]  879 	add	a,r6
      0022BF F5 82            [12]  880 	mov	dpl,a
      0022C1 ED               [12]  881 	mov	a,r5
      0022C2 3F               [12]  882 	addc	a,r7
      0022C3 F5 83            [12]  883 	mov	dph,a
      0022C5 E0               [24]  884 	movx	a,@dptr
      0022C6 FF               [12]  885 	mov	r7,a
      0022C7 BF AA 05         [24]  886 	cjne	r7,#0xaa,00114$
      0022CA 75 82 00         [24]  887 	mov	dpl,#0x00
      0022CD 80 59            [24]  888 	sjmp	00116$
      0022CF                        889 00114$:
                                    890 ;	walk.c:106: else if (g[t->r][t->c] != 0x55u) bang();
      0022CF A8 10            [24]  891 	mov	r0,_bp
      0022D1 08               [12]  892 	inc	r0
      0022D2 86 82            [24]  893 	mov	dpl,@r0
      0022D4 08               [12]  894 	inc	r0
      0022D5 86 83            [24]  895 	mov	dph,@r0
      0022D7 08               [12]  896 	inc	r0
      0022D8 86 F0            [24]  897 	mov	b,@r0
      0022DA 12 2E F5         [24]  898 	lcall	__gptrget
      0022DD FE               [12]  899 	mov	r6,a
      0022DE A3               [24]  900 	inc	dptr
      0022DF 12 2E F5         [24]  901 	lcall	__gptrget
      0022E2 FF               [12]  902 	mov	r7,a
      0022E3 C0 06            [24]  903 	push	ar6
      0022E5 C0 07            [24]  904 	push	ar7
      0022E7 90 00 C9         [24]  905 	mov	dptr,#0x00c9
      0022EA 12 2D 05         [24]  906 	lcall	__mulint
      0022ED AE 82            [24]  907 	mov	r6,dpl
      0022EF AF 83            [24]  908 	mov	r7,dph
      0022F1 15 81            [12]  909 	dec	sp
      0022F3 15 81            [12]  910 	dec	sp
      0022F5 EE               [12]  911 	mov	a,r6
      0022F6 24 00            [12]  912 	add	a,#_g
      0022F8 FE               [12]  913 	mov	r6,a
      0022F9 EF               [12]  914 	mov	a,r7
      0022FA 34 43            [12]  915 	addc	a,#(_g >> 8)
      0022FC FF               [12]  916 	mov	r7,a
      0022FD E5 10            [12]  917 	mov	a,_bp
      0022FF 24 08            [12]  918 	add	a,#0x08
      002301 F8               [12]  919 	mov	r0,a
      002302 86 82            [24]  920 	mov	dpl,@r0
      002304 08               [12]  921 	inc	r0
      002305 86 83            [24]  922 	mov	dph,@r0
      002307 08               [12]  923 	inc	r0
      002308 86 F0            [24]  924 	mov	b,@r0
      00230A 12 2E F5         [24]  925 	lcall	__gptrget
      00230D FC               [12]  926 	mov	r4,a
      00230E A3               [24]  927 	inc	dptr
      00230F 12 2E F5         [24]  928 	lcall	__gptrget
      002312 FD               [12]  929 	mov	r5,a
      002313 EC               [12]  930 	mov	a,r4
      002314 2E               [12]  931 	add	a,r6
      002315 F5 82            [12]  932 	mov	dpl,a
      002317 ED               [12]  933 	mov	a,r5
      002318 3F               [12]  934 	addc	a,r7
      002319 F5 83            [12]  935 	mov	dph,a
      00231B E0               [24]  936 	movx	a,@dptr
      00231C FF               [12]  937 	mov	r7,a
      00231D BF 55 02         [24]  938 	cjne	r7,#0x55,00148$
      002320 80 03            [24]  939 	sjmp	00115$
      002322                        940 00148$:
      002322 12 20 82         [24]  941 	lcall	_bang
      002325                        942 00115$:
                                    943 ;	walk.c:108: return 1u;
      002325 75 82 01         [24]  944 	mov	dpl,#0x01
      002328                        945 00116$:
                                    946 ;	walk.c:109: }
      002328 85 10 81         [24]  947 	mov	sp,_bp
      00232B D0 10            [24]  948 	pop	_bp
      00232D 22               [24]  949 	ret
                                    950 ;------------------------------------------------------------
                                    951 ;Allocation info for local variables in function 'walk'
                                    952 ;------------------------------------------------------------
                                    953 ;nstart                    Allocated to registers r5 r6 r7 
                                    954 ;cur                       Allocated to stack - _bp +7
                                    955 ;t                         Allocated to stack - _bp +11
                                    956 ;scramble                  Allocated to stack - _bp +15
                                    957 ;ti                        Allocated to registers r2 
                                    958 ;tj                        Allocated to registers r6 
                                    959 ;tx                        Allocated to stack - _bp +31
                                    960 ;j                         Allocated to stack - _bp +32
                                    961 ;sloc0                     Allocated to stack - _bp +1
                                    962 ;sloc1                     Allocated to stack - _bp +3
                                    963 ;sloc2                     Allocated to stack - _bp +35
                                    964 ;sloc3                     Allocated to stack - _bp +4
                                    965 ;------------------------------------------------------------
                                    966 ;	walk.c:111: static void walk(struct node *nstart) {
                                    967 ;	-----------------------------------------
                                    968 ;	 function walk
                                    969 ;	-----------------------------------------
      00232E                        970 _walk:
      00232E C0 10            [24]  971 	push	_bp
      002330 E5 81            [12]  972 	mov	a,sp
      002332 F5 10            [12]  973 	mov	_bp,a
      002334 24 20            [12]  974 	add	a,#0x20
      002336 F5 81            [12]  975 	mov	sp,a
                                    976 ;	walk.c:116: if (!qadd(nstart)) bang();
      002338 AD 82            [24]  977 	mov	r5,dpl
      00233A AE 83            [24]  978 	mov	r6,dph
      00233C AF F0            [24]  979 	mov	r7,b
      00233E C0 07            [24]  980 	push	ar7
      002340 C0 06            [24]  981 	push	ar6
      002342 C0 05            [24]  982 	push	ar5
      002344 12 2A 97         [24]  983 	lcall	_qadd
      002347 E5 82            [12]  984 	mov	a,dpl
      002349 D0 05            [24]  985 	pop	ar5
      00234B D0 06            [24]  986 	pop	ar6
      00234D D0 07            [24]  987 	pop	ar7
      00234F 70 0F            [24]  988 	jnz	00102$
      002351 C0 07            [24]  989 	push	ar7
      002353 C0 06            [24]  990 	push	ar6
      002355 C0 05            [24]  991 	push	ar5
      002357 12 20 82         [24]  992 	lcall	_bang
      00235A D0 05            [24]  993 	pop	ar5
      00235C D0 06            [24]  994 	pop	ar6
      00235E D0 07            [24]  995 	pop	ar7
      002360                        996 00102$:
                                    997 ;	walk.c:117: g[nstart->r][nstart->c] = 0xaau;
      002360 8D 82            [24]  998 	mov	dpl,r5
      002362 8E 83            [24]  999 	mov	dph,r6
      002364 8F F0            [24] 1000 	mov	b,r7
      002366 12 2E F5         [24] 1001 	lcall	__gptrget
      002369 FB               [12] 1002 	mov	r3,a
      00236A A3               [24] 1003 	inc	dptr
      00236B 12 2E F5         [24] 1004 	lcall	__gptrget
      00236E FC               [12] 1005 	mov	r4,a
      00236F C0 07            [24] 1006 	push	ar7
      002371 C0 06            [24] 1007 	push	ar6
      002373 C0 05            [24] 1008 	push	ar5
      002375 C0 03            [24] 1009 	push	ar3
      002377 C0 04            [24] 1010 	push	ar4
      002379 90 00 C9         [24] 1011 	mov	dptr,#0x00c9
      00237C 12 2D 05         [24] 1012 	lcall	__mulint
      00237F AB 82            [24] 1013 	mov	r3,dpl
      002381 AC 83            [24] 1014 	mov	r4,dph
      002383 15 81            [12] 1015 	dec	sp
      002385 15 81            [12] 1016 	dec	sp
      002387 D0 05            [24] 1017 	pop	ar5
      002389 D0 06            [24] 1018 	pop	ar6
      00238B D0 07            [24] 1019 	pop	ar7
      00238D EB               [12] 1020 	mov	a,r3
      00238E 24 00            [12] 1021 	add	a,#_g
      002390 FB               [12] 1022 	mov	r3,a
      002391 EC               [12] 1023 	mov	a,r4
      002392 34 43            [12] 1024 	addc	a,#(_g >> 8)
      002394 FC               [12] 1025 	mov	r4,a
      002395 74 02            [12] 1026 	mov	a,#0x02
      002397 2D               [12] 1027 	add	a,r5
      002398 FD               [12] 1028 	mov	r5,a
      002399 E4               [12] 1029 	clr	a
      00239A 3E               [12] 1030 	addc	a,r6
      00239B FE               [12] 1031 	mov	r6,a
      00239C 8D 82            [24] 1032 	mov	dpl,r5
      00239E 8E 83            [24] 1033 	mov	dph,r6
      0023A0 8F F0            [24] 1034 	mov	b,r7
      0023A2 12 2E F5         [24] 1035 	lcall	__gptrget
      0023A5 FD               [12] 1036 	mov	r5,a
      0023A6 A3               [24] 1037 	inc	dptr
      0023A7 12 2E F5         [24] 1038 	lcall	__gptrget
      0023AA FE               [12] 1039 	mov	r6,a
      0023AB ED               [12] 1040 	mov	a,r5
      0023AC 2B               [12] 1041 	add	a,r3
      0023AD F5 82            [12] 1042 	mov	dpl,a
      0023AF EE               [12] 1043 	mov	a,r6
      0023B0 3C               [12] 1044 	addc	a,r4
      0023B1 F5 83            [12] 1045 	mov	dph,a
      0023B3 74 AA            [12] 1046 	mov	a,#0xaa
      0023B5 F0               [24] 1047 	movx	@dptr,a
                                   1048 ;	walk.c:119: process:
      0023B6 E5 10            [12] 1049 	mov	a,_bp
      0023B8 24 0F            [12] 1050 	add	a,#0x0f
      0023BA FF               [12] 1051 	mov	r7,a
      0023BB E5 10            [12] 1052 	mov	a,_bp
      0023BD 24 0B            [12] 1053 	add	a,#0x0b
      0023BF F9               [12] 1054 	mov	r1,a
      0023C0 E5 10            [12] 1055 	mov	a,_bp
      0023C2 24 03            [12] 1056 	add	a,#0x03
      0023C4 F8               [12] 1057 	mov	r0,a
      0023C5 A6 01            [24] 1058 	mov	@r0,ar1
      0023C7 74 02            [12] 1059 	mov	a,#0x02
      0023C9 29               [12] 1060 	add	a,r1
      0023CA F8               [12] 1061 	mov	r0,a
      0023CB E5 10            [12] 1062 	mov	a,_bp
      0023CD 24 07            [12] 1063 	add	a,#0x07
      0023CF FD               [12] 1064 	mov	r5,a
      0023D0                       1065 00103$:
                                   1066 ;	walk.c:120: if (!qget(&cur)) goto term;
      0023D0 8D 02            [24] 1067 	mov	ar2,r5
      0023D2 7B 00            [12] 1068 	mov	r3,#0x00
      0023D4 7C 40            [12] 1069 	mov	r4,#0x40
      0023D6 8A 82            [24] 1070 	mov	dpl,r2
      0023D8 8B 83            [24] 1071 	mov	dph,r3
      0023DA 8C F0            [24] 1072 	mov	b,r4
      0023DC C0 07            [24] 1073 	push	ar7
      0023DE C0 05            [24] 1074 	push	ar5
      0023E0 C0 01            [24] 1075 	push	ar1
      0023E2 C0 00            [24] 1076 	push	ar0
      0023E4 12 2B 89         [24] 1077 	lcall	_qget
      0023E7 E5 82            [12] 1078 	mov	a,dpl
      0023E9 D0 00            [24] 1079 	pop	ar0
      0023EB D0 01            [24] 1080 	pop	ar1
      0023ED D0 05            [24] 1081 	pop	ar5
      0023EF D0 07            [24] 1082 	pop	ar7
      0023F1 70 03            [24] 1083 	jnz	00184$
      0023F3 02 26 A5         [24] 1084 	ljmp	00119$
      0023F6                       1085 00184$:
                                   1086 ;	walk.c:122: printf("\033[2;1H% 8d% 8d% 8d% 8d", hp, tp, cur.r, cur.c);
      0023F6 74 02            [12] 1087 	mov	a,#0x02
      0023F8 2D               [12] 1088 	add	a,r5
      0023F9 FC               [12] 1089 	mov	r4,a
      0023FA C0 00            [24] 1090 	push	ar0
      0023FC A8 10            [24] 1091 	mov	r0,_bp
      0023FE 08               [12] 1092 	inc	r0
      0023FF C0 01            [24] 1093 	push	ar1
      002401 A9 04            [24] 1094 	mov	r1,ar4
      002403 E7               [12] 1095 	mov	a,@r1
      002404 F6               [12] 1096 	mov	@r0,a
      002405 09               [12] 1097 	inc	r1
      002406 E7               [12] 1098 	mov	a,@r1
      002407 08               [12] 1099 	inc	r0
      002408 F6               [12] 1100 	mov	@r0,a
      002409 D0 01            [24] 1101 	pop	ar1
      00240B A8 05            [24] 1102 	mov	r0,ar5
      00240D 86 03            [24] 1103 	mov	ar3,@r0
      00240F 08               [12] 1104 	inc	r0
      002410 86 06            [24] 1105 	mov	ar6,@r0
      002412 D0 00            [24] 1106 	pop	ar0
      002414 C0 07            [24] 1107 	push	ar7
      002416 C0 05            [24] 1108 	push	ar5
      002418 C0 04            [24] 1109 	push	ar4
      00241A C0 01            [24] 1110 	push	ar1
      00241C C0 00            [24] 1111 	push	ar0
      00241E 85 00 F0         [24] 1112 	mov	b,ar0
      002421 A8 10            [24] 1113 	mov	r0,_bp
      002423 08               [12] 1114 	inc	r0
      002424 E6               [12] 1115 	mov	a,@r0
      002425 C0 E0            [24] 1116 	push	acc
      002427 08               [12] 1117 	inc	r0
      002428 E6               [12] 1118 	mov	a,@r0
      002429 C0 E0            [24] 1119 	push	acc
      00242B C0 03            [24] 1120 	push	ar3
      00242D C0 06            [24] 1121 	push	ar6
      00242F 90 FF 72         [24] 1122 	mov	dptr,#_tp
      002432 E0               [24] 1123 	movx	a,@dptr
      002433 C0 E0            [24] 1124 	push	acc
      002435 A3               [24] 1125 	inc	dptr
      002436 E0               [24] 1126 	movx	a,@dptr
      002437 C0 E0            [24] 1127 	push	acc
      002439 90 FF 70         [24] 1128 	mov	dptr,#_hp
      00243C E0               [24] 1129 	movx	a,@dptr
      00243D C0 E0            [24] 1130 	push	acc
      00243F A3               [24] 1131 	inc	dptr
      002440 E0               [24] 1132 	movx	a,@dptr
      002441 C0 E0            [24] 1133 	push	acc
      002443 74 FC            [12] 1134 	mov	a,#___str_1
      002445 C0 E0            [24] 1135 	push	acc
      002447 74 41            [12] 1136 	mov	a,#(___str_1 >> 8)
      002449 C0 E0            [24] 1137 	push	acc
      00244B 74 80            [12] 1138 	mov	a,#0x80
      00244D C0 E0            [24] 1139 	push	acc
      00244F 12 2E BC         [24] 1140 	lcall	_printf
      002452 E5 81            [12] 1141 	mov	a,sp
      002454 24 F5            [12] 1142 	add	a,#0xf5
      002456 F5 81            [12] 1143 	mov	sp,a
      002458 D0 00            [24] 1144 	pop	ar0
      00245A D0 01            [24] 1145 	pop	ar1
      00245C D0 04            [24] 1146 	pop	ar4
      00245E D0 05            [24] 1147 	pop	ar5
      002460 D0 07            [24] 1148 	pop	ar7
                                   1149 ;	walk.c:124: printf("\033[%d;%dH.", cur.r + 4, cur.c + 1);
      002462 C0 00            [24] 1150 	push	ar0
      002464 A8 04            [24] 1151 	mov	r0,ar4
      002466 86 04            [24] 1152 	mov	ar4,@r0
      002468 08               [12] 1153 	inc	r0
      002469 86 06            [24] 1154 	mov	ar6,@r0
      00246B D0 00            [24] 1155 	pop	ar0
      00246D 0C               [12] 1156 	inc	r4
      00246E BC 00 01         [24] 1157 	cjne	r4,#0x00,00185$
      002471 0E               [12] 1158 	inc	r6
      002472                       1159 00185$:
      002472 C0 00            [24] 1160 	push	ar0
      002474 A8 05            [24] 1161 	mov	r0,ar5
      002476 86 02            [24] 1162 	mov	ar2,@r0
      002478 08               [12] 1163 	inc	r0
      002479 86 03            [24] 1164 	mov	ar3,@r0
      00247B D0 00            [24] 1165 	pop	ar0
      00247D 74 04            [12] 1166 	mov	a,#0x04
      00247F 2A               [12] 1167 	add	a,r2
      002480 FA               [12] 1168 	mov	r2,a
      002481 E4               [12] 1169 	clr	a
      002482 3B               [12] 1170 	addc	a,r3
      002483 FB               [12] 1171 	mov	r3,a
      002484 C0 07            [24] 1172 	push	ar7
      002486 C0 05            [24] 1173 	push	ar5
      002488 C0 01            [24] 1174 	push	ar1
      00248A C0 00            [24] 1175 	push	ar0
      00248C C0 04            [24] 1176 	push	ar4
      00248E C0 06            [24] 1177 	push	ar6
      002490 C0 02            [24] 1178 	push	ar2
      002492 C0 03            [24] 1179 	push	ar3
      002494 74 13            [12] 1180 	mov	a,#___str_2
      002496 C0 E0            [24] 1181 	push	acc
      002498 74 42            [12] 1182 	mov	a,#(___str_2 >> 8)
      00249A C0 E0            [24] 1183 	push	acc
      00249C 74 80            [12] 1184 	mov	a,#0x80
      00249E C0 E0            [24] 1185 	push	acc
      0024A0 12 2E BC         [24] 1186 	lcall	_printf
      0024A3 E5 81            [12] 1187 	mov	a,sp
      0024A5 24 F9            [12] 1188 	add	a,#0xf9
      0024A7 F5 81            [12] 1189 	mov	sp,a
                                   1190 ;	walk.c:125: flashOE(OE76_MASK6);
      0024A9 75 82 40         [24] 1191 	mov	dpl,#0x40
      0024AC 12 20 8E         [24] 1192 	lcall	_flashOE
      0024AF D0 00            [24] 1193 	pop	ar0
      0024B1 D0 01            [24] 1194 	pop	ar1
      0024B3 D0 05            [24] 1195 	pop	ar5
      0024B5 D0 07            [24] 1196 	pop	ar7
                                   1197 ;	walk.c:127: for (j = 0u; j < NMAX; j++)
      0024B7 7E 00            [12] 1198 	mov	r6,#0x00
                                   1199 ;	walk.c:151: return;
                                   1200 ;	walk.c:127: for (j = 0u; j < NMAX; j++)
      0024B9                       1201 00120$:
                                   1202 ;	walk.c:128: scramble[j] = j;
      0024B9 EE               [12] 1203 	mov	a,r6
      0024BA 2F               [12] 1204 	add	a,r7
      0024BB C0 00            [24] 1205 	push	ar0
      0024BD F8               [12] 1206 	mov	r0,a
      0024BE A6 06            [24] 1207 	mov	@r0,ar6
      0024C0 D0 00            [24] 1208 	pop	ar0
                                   1209 ;	walk.c:127: for (j = 0u; j < NMAX; j++)
      0024C2 0E               [12] 1210 	inc	r6
      0024C3 BE 10 00         [24] 1211 	cjne	r6,#0x10,00186$
      0024C6                       1212 00186$:
      0024C6 40 F1            [24] 1213 	jc	00120$
                                   1214 ;	walk.c:130: do ti = (uint8_t)(rand() % NMAX);
      0024C8 7C 00            [12] 1215 	mov	r4,#0x00
      0024CA                       1216 00107$:
      0024CA C0 07            [24] 1217 	push	ar7
      0024CC C0 05            [24] 1218 	push	ar5
      0024CE C0 04            [24] 1219 	push	ar4
      0024D0 C0 01            [24] 1220 	push	ar1
      0024D2 C0 00            [24] 1221 	push	ar0
      0024D4 12 2C 0D         [24] 1222 	lcall	_rand
      0024D7 AA 82            [24] 1223 	mov	r2,dpl
      0024D9 D0 00            [24] 1224 	pop	ar0
      0024DB D0 01            [24] 1225 	pop	ar1
      0024DD D0 04            [24] 1226 	pop	ar4
      0024DF D0 05            [24] 1227 	pop	ar5
      0024E1 D0 07            [24] 1228 	pop	ar7
      0024E3 53 02 0F         [24] 1229 	anl	ar2,#0x0f
      0024E6 7B 00            [12] 1230 	mov	r3,#0x00
                                   1231 ;	walk.c:131: while (ti == j);
      0024E8 EA               [12] 1232 	mov	a,r2
      0024E9 B5 04 02         [24] 1233 	cjne	a,ar4,00188$
      0024EC 80 DC            [24] 1234 	sjmp	00107$
      0024EE                       1235 00188$:
                                   1236 ;	walk.c:132: do tj = (uint8_t)(rand() % NMAX);
      0024EE                       1237 00110$:
      0024EE C0 05            [24] 1238 	push	ar5
      0024F0 C0 07            [24] 1239 	push	ar7
      0024F2 C0 04            [24] 1240 	push	ar4
      0024F4 C0 02            [24] 1241 	push	ar2
      0024F6 C0 01            [24] 1242 	push	ar1
      0024F8 C0 00            [24] 1243 	push	ar0
      0024FA 12 2C 0D         [24] 1244 	lcall	_rand
      0024FD AB 82            [24] 1245 	mov	r3,dpl
      0024FF D0 00            [24] 1246 	pop	ar0
      002501 D0 01            [24] 1247 	pop	ar1
      002503 D0 02            [24] 1248 	pop	ar2
      002505 D0 04            [24] 1249 	pop	ar4
      002507 D0 07            [24] 1250 	pop	ar7
      002509 53 03 0F         [24] 1251 	anl	ar3,#0x0f
      00250C 8B 06            [24] 1252 	mov	ar6,r3
                                   1253 ;	walk.c:133: while (ti == tj);
      00250E EA               [12] 1254 	mov	a,r2
      00250F B5 06 04         [24] 1255 	cjne	a,ar6,00189$
      002512 D0 05            [24] 1256 	pop	ar5
      002514 80 D8            [24] 1257 	sjmp	00110$
      002516                       1258 00189$:
                                   1259 ;	walk.c:134: tx = scramble[ti];
      002516 EA               [12] 1260 	mov	a,r2
      002517 2F               [12] 1261 	add	a,r7
      002518 FB               [12] 1262 	mov	r3,a
      002519 C0 00            [24] 1263 	push	ar0
      00251B E5 10            [12] 1264 	mov	a,_bp
      00251D 24 1F            [12] 1265 	add	a,#0x1f
      00251F F8               [12] 1266 	mov	r0,a
      002520 C0 01            [24] 1267 	push	ar1
      002522 A9 03            [24] 1268 	mov	r1,ar3
      002524 E7               [12] 1269 	mov	a,@r1
      002525 F6               [12] 1270 	mov	@r0,a
                                   1271 ;	walk.c:135: scramble[ti] = scramble[tj];
      002526 EE               [12] 1272 	mov	a,r6
      002527 2F               [12] 1273 	add	a,r7
      002528 FD               [12] 1274 	mov	r5,a
      002529 A8 05            [24] 1275 	mov	r0,ar5
      00252B 86 02            [24] 1276 	mov	ar2,@r0
      00252D A8 03            [24] 1277 	mov	r0,ar3
      00252F A6 02            [24] 1278 	mov	@r0,ar2
                                   1279 ;	walk.c:136: scramble[tj] = tx;
      002531 A8 05            [24] 1280 	mov	r0,ar5
      002533 E5 10            [12] 1281 	mov	a,_bp
      002535 24 1F            [12] 1282 	add	a,#0x1f
      002537 F9               [12] 1283 	mov	r1,a
      002538 E7               [12] 1284 	mov	a,@r1
      002539 F6               [12] 1285 	mov	@r0,a
      00253A D0 00            [24] 1286 	pop	ar0
      00253C D0 01            [24] 1287 	pop	ar1
                                   1288 ;	walk.c:129: for (j = 0u; j < NMAX; j++) {
      00253E 0C               [12] 1289 	inc	r4
      00253F BC 10 00         [24] 1290 	cjne	r4,#0x10,00190$
      002542                       1291 00190$:
      002542 D0 05            [24] 1292 	pop	ar5
      002544 40 84            [24] 1293 	jc	00107$
                                   1294 ;	walk.c:139: for (j = 0u; j < NMAX; j++)
      002546 C0 00            [24] 1295 	push	ar0
      002548 A8 10            [24] 1296 	mov	r0,_bp
      00254A 08               [12] 1297 	inc	r0
      00254B A6 05            [24] 1298 	mov	@r0,ar5
      00254D E5 10            [12] 1299 	mov	a,_bp
      00254F 24 20            [12] 1300 	add	a,#0x20
      002551 F8               [12] 1301 	mov	r0,a
      002552 76 00            [12] 1302 	mov	@r0,#0x00
      002554 D0 00            [24] 1303 	pop	ar0
      002556                       1304 00124$:
                                   1305 ;	walk.c:140: if (update(&t, &cur, scramble[j])) {
      002556 C0 05            [24] 1306 	push	ar5
      002558 C0 00            [24] 1307 	push	ar0
      00255A E5 10            [12] 1308 	mov	a,_bp
      00255C 24 20            [12] 1309 	add	a,#0x20
      00255E F8               [12] 1310 	mov	r0,a
      00255F E6               [12] 1311 	mov	a,@r0
      002560 2F               [12] 1312 	add	a,r7
      002561 FA               [12] 1313 	mov	r2,a
      002562 A8 02            [24] 1314 	mov	r0,ar2
      002564 86 03            [24] 1315 	mov	ar3,@r0
      002566 A8 10            [24] 1316 	mov	r0,_bp
      002568 08               [12] 1317 	inc	r0
      002569 C0 01            [24] 1318 	push	ar1
      00256B E5 10            [12] 1319 	mov	a,_bp
      00256D 24 04            [12] 1320 	add	a,#0x04
      00256F F9               [12] 1321 	mov	r1,a
      002570 E6               [12] 1322 	mov	a,@r0
      002571 F7               [12] 1323 	mov	@r1,a
      002572 09               [12] 1324 	inc	r1
      002573 77 00            [12] 1325 	mov	@r1,#0x00
      002575 09               [12] 1326 	inc	r1
      002576 77 40            [12] 1327 	mov	@r1,#0x40
      002578 D0 01            [24] 1328 	pop	ar1
      00257A D0 00            [24] 1329 	pop	ar0
      00257C 89 02            [24] 1330 	mov	ar2,r1
      00257E 7C 00            [12] 1331 	mov	r4,#0x00
      002580 7E 40            [12] 1332 	mov	r6,#0x40
      002582 C0 07            [24] 1333 	push	ar7
      002584 C0 05            [24] 1334 	push	ar5
      002586 C0 01            [24] 1335 	push	ar1
      002588 C0 00            [24] 1336 	push	ar0
      00258A C0 03            [24] 1337 	push	ar3
      00258C 85 00 F0         [24] 1338 	mov	b,ar0
      00258F E5 10            [12] 1339 	mov	a,_bp
      002591 24 04            [12] 1340 	add	a,#0x04
      002593 F8               [12] 1341 	mov	r0,a
      002594 E6               [12] 1342 	mov	a,@r0
      002595 C0 E0            [24] 1343 	push	acc
      002597 08               [12] 1344 	inc	r0
      002598 E6               [12] 1345 	mov	a,@r0
      002599 C0 E0            [24] 1346 	push	acc
      00259B 08               [12] 1347 	inc	r0
      00259C E6               [12] 1348 	mov	a,@r0
      00259D C0 E0            [24] 1349 	push	acc
      00259F 8A 82            [24] 1350 	mov	dpl,r2
      0025A1 8C 83            [24] 1351 	mov	dph,r4
      0025A3 8E F0            [24] 1352 	mov	b,r6
      0025A5 12 20 A1         [24] 1353 	lcall	_update
      0025A8 AE 82            [24] 1354 	mov	r6,dpl
      0025AA E5 81            [12] 1355 	mov	a,sp
      0025AC 24 FC            [12] 1356 	add	a,#0xfc
      0025AE F5 81            [12] 1357 	mov	sp,a
      0025B0 D0 00            [24] 1358 	pop	ar0
      0025B2 D0 01            [24] 1359 	pop	ar1
      0025B4 D0 05            [24] 1360 	pop	ar5
      0025B6 D0 07            [24] 1361 	pop	ar7
      0025B8 D0 05            [24] 1362 	pop	ar5
      0025BA EE               [12] 1363 	mov	a,r6
      0025BB 70 03            [24] 1364 	jnz	00192$
      0025BD 02 26 8B         [24] 1365 	ljmp	00125$
      0025C0                       1366 00192$:
                                   1367 ;	walk.c:141: if (!qadd(&t)) bang();
      0025C0 C0 00            [24] 1368 	push	ar0
      0025C2 E5 10            [12] 1369 	mov	a,_bp
      0025C4 24 03            [12] 1370 	add	a,#0x03
      0025C6 F8               [12] 1371 	mov	r0,a
      0025C7 86 03            [24] 1372 	mov	ar3,@r0
      0025C9 7C 00            [12] 1373 	mov	r4,#0x00
      0025CB 7E 40            [12] 1374 	mov	r6,#0x40
      0025CD D0 00            [24] 1375 	pop	ar0
      0025CF 8B 82            [24] 1376 	mov	dpl,r3
      0025D1 8C 83            [24] 1377 	mov	dph,r4
      0025D3 8E F0            [24] 1378 	mov	b,r6
      0025D5 C0 07            [24] 1379 	push	ar7
      0025D7 C0 05            [24] 1380 	push	ar5
      0025D9 C0 01            [24] 1381 	push	ar1
      0025DB C0 00            [24] 1382 	push	ar0
      0025DD 12 2A 97         [24] 1383 	lcall	_qadd
      0025E0 E5 82            [12] 1384 	mov	a,dpl
      0025E2 D0 00            [24] 1385 	pop	ar0
      0025E4 D0 01            [24] 1386 	pop	ar1
      0025E6 D0 05            [24] 1387 	pop	ar5
      0025E8 D0 07            [24] 1388 	pop	ar7
      0025EA 70 13            [24] 1389 	jnz	00115$
      0025EC C0 07            [24] 1390 	push	ar7
      0025EE C0 05            [24] 1391 	push	ar5
      0025F0 C0 01            [24] 1392 	push	ar1
      0025F2 C0 00            [24] 1393 	push	ar0
      0025F4 12 20 82         [24] 1394 	lcall	_bang
      0025F7 D0 00            [24] 1395 	pop	ar0
      0025F9 D0 01            [24] 1396 	pop	ar1
      0025FB D0 05            [24] 1397 	pop	ar5
      0025FD D0 07            [24] 1398 	pop	ar7
      0025FF                       1399 00115$:
                                   1400 ;	walk.c:142: g[t.r][t.c] = 0xaau;
      0025FF 87 04            [24] 1401 	mov	ar4,@r1
      002601 09               [12] 1402 	inc	r1
      002602 87 06            [24] 1403 	mov	ar6,@r1
      002604 19               [12] 1404 	dec	r1
      002605 C0 07            [24] 1405 	push	ar7
      002607 C0 05            [24] 1406 	push	ar5
      002609 C0 01            [24] 1407 	push	ar1
      00260B C0 00            [24] 1408 	push	ar0
      00260D C0 04            [24] 1409 	push	ar4
      00260F C0 06            [24] 1410 	push	ar6
      002611 90 00 C9         [24] 1411 	mov	dptr,#0x00c9
      002614 12 2D 05         [24] 1412 	lcall	__mulint
      002617 AC 82            [24] 1413 	mov	r4,dpl
      002619 AE 83            [24] 1414 	mov	r6,dph
      00261B 15 81            [12] 1415 	dec	sp
      00261D 15 81            [12] 1416 	dec	sp
      00261F D0 00            [24] 1417 	pop	ar0
      002621 D0 01            [24] 1418 	pop	ar1
      002623 D0 05            [24] 1419 	pop	ar5
      002625 D0 07            [24] 1420 	pop	ar7
      002627 EC               [12] 1421 	mov	a,r4
      002628 24 00            [12] 1422 	add	a,#_g
      00262A FC               [12] 1423 	mov	r4,a
      00262B EE               [12] 1424 	mov	a,r6
      00262C 34 43            [12] 1425 	addc	a,#(_g >> 8)
      00262E FE               [12] 1426 	mov	r6,a
      00262F 86 02            [24] 1427 	mov	ar2,@r0
      002631 08               [12] 1428 	inc	r0
      002632 86 03            [24] 1429 	mov	ar3,@r0
      002634 18               [12] 1430 	dec	r0
      002635 EA               [12] 1431 	mov	a,r2
      002636 2C               [12] 1432 	add	a,r4
      002637 F5 82            [12] 1433 	mov	dpl,a
      002639 EB               [12] 1434 	mov	a,r3
      00263A 3E               [12] 1435 	addc	a,r6
      00263B F5 83            [12] 1436 	mov	dph,a
      00263D 74 AA            [12] 1437 	mov	a,#0xaa
      00263F F0               [24] 1438 	movx	@dptr,a
                                   1439 ;	walk.c:144: printf("\033[%d;%dHo", t.r + 4, t.c + 1);
      002640 86 04            [24] 1440 	mov	ar4,@r0
      002642 08               [12] 1441 	inc	r0
      002643 86 06            [24] 1442 	mov	ar6,@r0
      002645 18               [12] 1443 	dec	r0
      002646 0C               [12] 1444 	inc	r4
      002647 BC 00 01         [24] 1445 	cjne	r4,#0x00,00194$
      00264A 0E               [12] 1446 	inc	r6
      00264B                       1447 00194$:
      00264B 87 02            [24] 1448 	mov	ar2,@r1
      00264D 09               [12] 1449 	inc	r1
      00264E 87 03            [24] 1450 	mov	ar3,@r1
      002650 19               [12] 1451 	dec	r1
      002651 74 04            [12] 1452 	mov	a,#0x04
      002653 2A               [12] 1453 	add	a,r2
      002654 FA               [12] 1454 	mov	r2,a
      002655 E4               [12] 1455 	clr	a
      002656 3B               [12] 1456 	addc	a,r3
      002657 FB               [12] 1457 	mov	r3,a
      002658 C0 07            [24] 1458 	push	ar7
      00265A C0 05            [24] 1459 	push	ar5
      00265C C0 01            [24] 1460 	push	ar1
      00265E C0 00            [24] 1461 	push	ar0
      002660 C0 04            [24] 1462 	push	ar4
      002662 C0 06            [24] 1463 	push	ar6
      002664 C0 02            [24] 1464 	push	ar2
      002666 C0 03            [24] 1465 	push	ar3
      002668 74 1D            [12] 1466 	mov	a,#___str_3
      00266A C0 E0            [24] 1467 	push	acc
      00266C 74 42            [12] 1468 	mov	a,#(___str_3 >> 8)
      00266E C0 E0            [24] 1469 	push	acc
      002670 74 80            [12] 1470 	mov	a,#0x80
      002672 C0 E0            [24] 1471 	push	acc
      002674 12 2E BC         [24] 1472 	lcall	_printf
      002677 E5 81            [12] 1473 	mov	a,sp
      002679 24 F9            [12] 1474 	add	a,#0xf9
      00267B F5 81            [12] 1475 	mov	sp,a
                                   1476 ;	walk.c:145: flashOE(OE76_MASK7);
      00267D 75 82 80         [24] 1477 	mov	dpl,#0x80
      002680 12 20 8E         [24] 1478 	lcall	_flashOE
      002683 D0 00            [24] 1479 	pop	ar0
      002685 D0 01            [24] 1480 	pop	ar1
      002687 D0 05            [24] 1481 	pop	ar5
      002689 D0 07            [24] 1482 	pop	ar7
      00268B                       1483 00125$:
                                   1484 ;	walk.c:139: for (j = 0u; j < NMAX; j++)
      00268B C0 00            [24] 1485 	push	ar0
      00268D E5 10            [12] 1486 	mov	a,_bp
      00268F 24 20            [12] 1487 	add	a,#0x20
      002691 F8               [12] 1488 	mov	r0,a
      002692 06               [12] 1489 	inc	@r0
      002693 E5 10            [12] 1490 	mov	a,_bp
      002695 24 20            [12] 1491 	add	a,#0x20
      002697 F8               [12] 1492 	mov	r0,a
      002698 B6 10 00         [24] 1493 	cjne	@r0,#0x10,00195$
      00269B                       1494 00195$:
      00269B D0 00            [24] 1495 	pop	ar0
      00269D 50 03            [24] 1496 	jnc	00196$
      00269F 02 25 56         [24] 1497 	ljmp	00124$
      0026A2                       1498 00196$:
                                   1499 ;	walk.c:148: goto process;
      0026A2 02 23 D0         [24] 1500 	ljmp	00103$
                                   1501 ;	walk.c:150: term:
      0026A5                       1502 00119$:
                                   1503 ;	walk.c:151: return;
                                   1504 ;	walk.c:152: }
      0026A5 85 10 81         [24] 1505 	mov	sp,_bp
      0026A8 D0 10            [24] 1506 	pop	_bp
      0026AA 22               [24] 1507 	ret
                                   1508 ;------------------------------------------------------------
                                   1509 ;Allocation info for local variables in function 'main'
                                   1510 ;------------------------------------------------------------
                                   1511 ;initial                   Allocated to stack - _bp +5
                                   1512 ;N                         Allocated to stack - _bp +9
                                   1513 ;i                         Allocated to stack - _bp +11
                                   1514 ;j                         Allocated to registers r2 r6 
                                   1515 ;sloc0                     Allocated to stack - _bp +1
                                   1516 ;sloc1                     Allocated to stack - _bp +3
                                   1517 ;sloc2                     Allocated to stack - _bp +15
                                   1518 ;------------------------------------------------------------
                                   1519 ;	walk.c:154: int main(void) {
                                   1520 ;	-----------------------------------------
                                   1521 ;	 function main
                                   1522 ;	-----------------------------------------
      0026AB                       1523 _main:
      0026AB C0 10            [24] 1524 	push	_bp
      0026AD E5 81            [12] 1525 	mov	a,sp
      0026AF F5 10            [12] 1526 	mov	_bp,a
      0026B1 24 0C            [12] 1527 	add	a,#0x0c
      0026B3 F5 81            [12] 1528 	mov	sp,a
                                   1529 ;	walk.c:159: i0 = 1u;
      0026B5 78 11            [12] 1530 	mov	r0,#_i0
      0026B7 76 01            [12] 1531 	mov	@r0,#0x01
                                   1532 ;	walk.c:161: P1_7 = 1;
                                   1533 ;	assignBit
      0026B9 D2 97            [12] 1534 	setb	_P1_7
                                   1535 ;	walk.c:162: IT0 = 1;
                                   1536 ;	assignBit
      0026BB D2 88            [12] 1537 	setb	_IT0
                                   1538 ;	walk.c:163: EX0 = 1;
                                   1539 ;	assignBit
      0026BD D2 A8            [12] 1540 	setb	_EX0
                                   1541 ;	walk.c:164: EA = 1;
                                   1542 ;	assignBit
      0026BF D2 AF            [12] 1543 	setb	_EA
                                   1544 ;	walk.c:166: srand(RND);
      0026C1 90 FF FE         [24] 1545 	mov	dptr,#_RND
      0026C4 E0               [24] 1546 	movx	a,@dptr
      0026C5 FE               [12] 1547 	mov	r6,a
      0026C6 A3               [24] 1548 	inc	dptr
      0026C7 E0               [24] 1549 	movx	a,@dptr
      0026C8 FF               [12] 1550 	mov	r7,a
      0026C9 8E 82            [24] 1551 	mov	dpl,r6
      0026CB 8F 83            [24] 1552 	mov	dph,r7
      0026CD 12 2C D1         [24] 1553 	lcall	_srand
                                   1554 ;	walk.c:167: qinit();
      0026D0 12 2A 89         [24] 1555 	lcall	_qinit
                                   1556 ;	walk.c:169: puts("\033[2J\033[?25l");
      0026D3 90 42 27         [24] 1557 	mov	dptr,#___str_4
      0026D6 75 F0 80         [24] 1558 	mov	b,#0x80
      0026D9 12 2E 36         [24] 1559 	lcall	_puts
                                   1560 ;	walk.c:171: while (i0) {
      0026DC E5 10            [12] 1561 	mov	a,_bp
      0026DE 24 05            [12] 1562 	add	a,#0x05
      0026E0 F9               [12] 1563 	mov	r1,a
      0026E1 FF               [12] 1564 	mov	r7,a
      0026E2 E5 10            [12] 1565 	mov	a,_bp
      0026E4 24 09            [12] 1566 	add	a,#0x09
      0026E6 F8               [12] 1567 	mov	r0,a
      0026E7 E4               [12] 1568 	clr	a
      0026E8 F6               [12] 1569 	mov	@r0,a
      0026E9 08               [12] 1570 	inc	r0
      0026EA F6               [12] 1571 	mov	@r0,a
      0026EB                       1572 00108$:
      0026EB 78 11            [12] 1573 	mov	r0,#_i0
      0026ED E6               [12] 1574 	mov	a,@r0
      0026EE 70 03            [24] 1575 	jnz	00181$
      0026F0 02 2A 72         [24] 1576 	ljmp	00110$
      0026F3                       1577 00181$:
                                   1578 ;	walk.c:172: for (i = 0; i < ROWS; i++)
      0026F3 7B 00            [12] 1579 	mov	r3,#0x00
      0026F5 7C 00            [12] 1580 	mov	r4,#0x00
      0026F7 A8 10            [24] 1581 	mov	r0,_bp
      0026F9 08               [12] 1582 	inc	r0
      0026FA E4               [12] 1583 	clr	a
      0026FB F6               [12] 1584 	mov	@r0,a
      0026FC 08               [12] 1585 	inc	r0
      0026FD F6               [12] 1586 	mov	@r0,a
                                   1587 ;	walk.c:173: for (j = 0; j < COLS; j++)
      0026FE                       1588 00124$:
      0026FE A8 10            [24] 1589 	mov	r0,_bp
      002700 08               [12] 1590 	inc	r0
      002701 C0 01            [24] 1591 	push	ar1
      002703 E5 10            [12] 1592 	mov	a,_bp
      002705 24 03            [12] 1593 	add	a,#0x03
      002707 F9               [12] 1594 	mov	r1,a
      002708 E6               [12] 1595 	mov	a,@r0
      002709 24 00            [12] 1596 	add	a,#_g
      00270B F7               [12] 1597 	mov	@r1,a
      00270C 08               [12] 1598 	inc	r0
      00270D E6               [12] 1599 	mov	a,@r0
      00270E 34 43            [12] 1600 	addc	a,#(_g >> 8)
      002710 09               [12] 1601 	inc	r1
      002711 F7               [12] 1602 	mov	@r1,a
      002712 D0 01            [24] 1603 	pop	ar1
      002714 7A 00            [12] 1604 	mov	r2,#0x00
      002716 7E 00            [12] 1605 	mov	r6,#0x00
      002718                       1606 00111$:
                                   1607 ;	walk.c:174: g[i][j] = 0x55u;
      002718 E5 10            [12] 1608 	mov	a,_bp
      00271A 24 03            [12] 1609 	add	a,#0x03
      00271C F8               [12] 1610 	mov	r0,a
      00271D EA               [12] 1611 	mov	a,r2
      00271E 26               [12] 1612 	add	a,@r0
      00271F F5 82            [12] 1613 	mov	dpl,a
      002721 EE               [12] 1614 	mov	a,r6
      002722 08               [12] 1615 	inc	r0
      002723 36               [12] 1616 	addc	a,@r0
      002724 F5 83            [12] 1617 	mov	dph,a
      002726 74 55            [12] 1618 	mov	a,#0x55
      002728 F0               [24] 1619 	movx	@dptr,a
                                   1620 ;	walk.c:173: for (j = 0; j < COLS; j++)
      002729 0A               [12] 1621 	inc	r2
      00272A BA 00 01         [24] 1622 	cjne	r2,#0x00,00182$
      00272D 0E               [12] 1623 	inc	r6
      00272E                       1624 00182$:
      00272E C3               [12] 1625 	clr	c
      00272F EA               [12] 1626 	mov	a,r2
      002730 94 C9            [12] 1627 	subb	a,#0xc9
      002732 EE               [12] 1628 	mov	a,r6
      002733 64 80            [12] 1629 	xrl	a,#0x80
      002735 94 80            [12] 1630 	subb	a,#0x80
      002737 40 DF            [24] 1631 	jc	00111$
                                   1632 ;	walk.c:172: for (i = 0; i < ROWS; i++)
      002739 A8 10            [24] 1633 	mov	r0,_bp
      00273B 08               [12] 1634 	inc	r0
      00273C 74 C9            [12] 1635 	mov	a,#0xc9
      00273E 26               [12] 1636 	add	a,@r0
      00273F F6               [12] 1637 	mov	@r0,a
      002740 E4               [12] 1638 	clr	a
      002741 08               [12] 1639 	inc	r0
      002742 36               [12] 1640 	addc	a,@r0
      002743 F6               [12] 1641 	mov	@r0,a
      002744 0B               [12] 1642 	inc	r3
      002745 BB 00 01         [24] 1643 	cjne	r3,#0x00,00184$
      002748 0C               [12] 1644 	inc	r4
      002749                       1645 00184$:
      002749 C3               [12] 1646 	clr	c
      00274A EB               [12] 1647 	mov	a,r3
      00274B 94 30            [12] 1648 	subb	a,#0x30
      00274D EC               [12] 1649 	mov	a,r4
      00274E 64 80            [12] 1650 	xrl	a,#0x80
      002750 94 80            [12] 1651 	subb	a,#0x80
      002752 40 AA            [24] 1652 	jc	00124$
                                   1653 ;	walk.c:176: initial.r = rand() % ROWS;
      002754 E5 10            [12] 1654 	mov	a,_bp
      002756 24 05            [12] 1655 	add	a,#0x05
      002758 F8               [12] 1656 	mov	r0,a
      002759 C0 07            [24] 1657 	push	ar7
      00275B C0 01            [24] 1658 	push	ar1
      00275D C0 00            [24] 1659 	push	ar0
      00275F 12 2C 0D         [24] 1660 	lcall	_rand
      002762 AD 82            [24] 1661 	mov	r5,dpl
      002764 AE 83            [24] 1662 	mov	r6,dph
      002766 74 30            [12] 1663 	mov	a,#0x30
      002768 C0 E0            [24] 1664 	push	acc
      00276A E4               [12] 1665 	clr	a
      00276B C0 E0            [24] 1666 	push	acc
      00276D 8D 82            [24] 1667 	mov	dpl,r5
      00276F 8E 83            [24] 1668 	mov	dph,r6
      002771 12 2F 11         [24] 1669 	lcall	__modsint
      002774 AD 82            [24] 1670 	mov	r5,dpl
      002776 AE 83            [24] 1671 	mov	r6,dph
      002778 15 81            [12] 1672 	dec	sp
      00277A 15 81            [12] 1673 	dec	sp
      00277C D0 00            [24] 1674 	pop	ar0
      00277E D0 01            [24] 1675 	pop	ar1
      002780 A6 05            [24] 1676 	mov	@r0,ar5
      002782 08               [12] 1677 	inc	r0
      002783 A6 06            [24] 1678 	mov	@r0,ar6
      002785 18               [12] 1679 	dec	r0
                                   1680 ;	walk.c:177: initial.c = rand() % COLS;
      002786 74 02            [12] 1681 	mov	a,#0x02
      002788 29               [12] 1682 	add	a,r1
      002789 F8               [12] 1683 	mov	r0,a
      00278A C0 01            [24] 1684 	push	ar1
      00278C C0 00            [24] 1685 	push	ar0
      00278E 12 2C 0D         [24] 1686 	lcall	_rand
      002791 AD 82            [24] 1687 	mov	r5,dpl
      002793 AE 83            [24] 1688 	mov	r6,dph
      002795 74 C9            [12] 1689 	mov	a,#0xc9
      002797 C0 E0            [24] 1690 	push	acc
      002799 E4               [12] 1691 	clr	a
      00279A C0 E0            [24] 1692 	push	acc
      00279C 8D 82            [24] 1693 	mov	dpl,r5
      00279E 8E 83            [24] 1694 	mov	dph,r6
      0027A0 12 2F 11         [24] 1695 	lcall	__modsint
      0027A3 AD 82            [24] 1696 	mov	r5,dpl
      0027A5 AE 83            [24] 1697 	mov	r6,dph
      0027A7 15 81            [12] 1698 	dec	sp
      0027A9 15 81            [12] 1699 	dec	sp
      0027AB D0 00            [24] 1700 	pop	ar0
      0027AD A6 05            [24] 1701 	mov	@r0,ar5
      0027AF 08               [12] 1702 	inc	r0
      0027B0 A6 06            [24] 1703 	mov	@r0,ar6
      0027B2 18               [12] 1704 	dec	r0
                                   1705 ;	walk.c:179: puts("\033[2J\033[?25l");
      0027B3 90 42 27         [24] 1706 	mov	dptr,#___str_4
      0027B6 75 F0 80         [24] 1707 	mov	b,#0x80
      0027B9 C0 00            [24] 1708 	push	ar0
      0027BB 12 2E 36         [24] 1709 	lcall	_puts
      0027BE D0 00            [24] 1710 	pop	ar0
      0027C0 D0 01            [24] 1711 	pop	ar1
                                   1712 ;	walk.c:180: printf("\033[1;1H% 8u% 8d% 8d", N, initial.r, initial.c);
      0027C2 86 05            [24] 1713 	mov	ar5,@r0
      0027C4 08               [12] 1714 	inc	r0
      0027C5 86 06            [24] 1715 	mov	ar6,@r0
      0027C7 18               [12] 1716 	dec	r0
      0027C8 87 03            [24] 1717 	mov	ar3,@r1
      0027CA 09               [12] 1718 	inc	r1
      0027CB 87 04            [24] 1719 	mov	ar4,@r1
      0027CD 19               [12] 1720 	dec	r1
      0027CE C0 01            [24] 1721 	push	ar1
      0027D0 C0 05            [24] 1722 	push	ar5
      0027D2 C0 06            [24] 1723 	push	ar6
      0027D4 C0 03            [24] 1724 	push	ar3
      0027D6 C0 04            [24] 1725 	push	ar4
      0027D8 E5 10            [12] 1726 	mov	a,_bp
      0027DA 24 09            [12] 1727 	add	a,#0x09
      0027DC F8               [12] 1728 	mov	r0,a
      0027DD E6               [12] 1729 	mov	a,@r0
      0027DE C0 E0            [24] 1730 	push	acc
      0027E0 08               [12] 1731 	inc	r0
      0027E1 E6               [12] 1732 	mov	a,@r0
      0027E2 C0 E0            [24] 1733 	push	acc
      0027E4 74 32            [12] 1734 	mov	a,#___str_5
      0027E6 C0 E0            [24] 1735 	push	acc
      0027E8 74 42            [12] 1736 	mov	a,#(___str_5 >> 8)
      0027EA C0 E0            [24] 1737 	push	acc
      0027EC 74 80            [12] 1738 	mov	a,#0x80
      0027EE C0 E0            [24] 1739 	push	acc
      0027F0 12 2E BC         [24] 1740 	lcall	_printf
      0027F3 E5 81            [12] 1741 	mov	a,sp
      0027F5 24 F7            [12] 1742 	add	a,#0xf7
      0027F7 F5 81            [12] 1743 	mov	sp,a
      0027F9 D0 01            [24] 1744 	pop	ar1
      0027FB D0 07            [24] 1745 	pop	ar7
                                   1746 ;	walk.c:182: for (i = 0; i < REG; i++) {
      0027FD E5 10            [12] 1747 	mov	a,_bp
      0027FF 24 0B            [12] 1748 	add	a,#0x0b
      002801 F8               [12] 1749 	mov	r0,a
      002802 E4               [12] 1750 	clr	a
      002803 F6               [12] 1751 	mov	@r0,a
      002804 08               [12] 1752 	inc	r0
      002805 F6               [12] 1753 	mov	@r0,a
      002806                       1754 00115$:
                                   1755 ;	walk.c:183: neigh[i].r = neigh[REG + i].r * (1 + rand() % 32);
      002806 C0 07            [24] 1756 	push	ar7
      002808 E5 10            [12] 1757 	mov	a,_bp
      00280A 24 0B            [12] 1758 	add	a,#0x0b
      00280C F8               [12] 1759 	mov	r0,a
      00280D E6               [12] 1760 	mov	a,@r0
      00280E 25 E0            [12] 1761 	add	a,acc
      002810 FB               [12] 1762 	mov	r3,a
      002811 08               [12] 1763 	inc	r0
      002812 E6               [12] 1764 	mov	a,@r0
      002813 33               [12] 1765 	rlc	a
      002814 FC               [12] 1766 	mov	r4,a
      002815 EB               [12] 1767 	mov	a,r3
      002816 2B               [12] 1768 	add	a,r3
      002817 FB               [12] 1769 	mov	r3,a
      002818 EC               [12] 1770 	mov	a,r4
      002819 33               [12] 1771 	rlc	a
      00281A FC               [12] 1772 	mov	r4,a
      00281B E5 10            [12] 1773 	mov	a,_bp
      00281D 24 03            [12] 1774 	add	a,#0x03
      00281F F8               [12] 1775 	mov	r0,a
      002820 EB               [12] 1776 	mov	a,r3
      002821 24 74            [12] 1777 	add	a,#_neigh
      002823 F6               [12] 1778 	mov	@r0,a
      002824 EC               [12] 1779 	mov	a,r4
      002825 34 FF            [12] 1780 	addc	a,#(_neigh >> 8)
      002827 08               [12] 1781 	inc	r0
      002828 F6               [12] 1782 	mov	@r0,a
      002829 E5 10            [12] 1783 	mov	a,_bp
      00282B 24 0B            [12] 1784 	add	a,#0x0b
      00282D F8               [12] 1785 	mov	r0,a
      00282E 86 06            [24] 1786 	mov	ar6,@r0
      002830 74 08            [12] 1787 	mov	a,#0x08
      002832 2E               [12] 1788 	add	a,r6
      002833 FE               [12] 1789 	mov	r6,a
      002834 C2 D5            [12] 1790 	clr	F0
      002836 75 F0 04         [24] 1791 	mov	b,#0x04
      002839 EE               [12] 1792 	mov	a,r6
      00283A 30 E7 04         [24] 1793 	jnb	acc.7,00186$
      00283D B2 D5            [12] 1794 	cpl	F0
      00283F F4               [12] 1795 	cpl	a
      002840 04               [12] 1796 	inc	a
      002841                       1797 00186$:
      002841 A4               [48] 1798 	mul	ab
      002842 30 D5 0A         [24] 1799 	jnb	F0,00187$
      002845 F4               [12] 1800 	cpl	a
      002846 24 01            [12] 1801 	add	a,#0x01
      002848 C5 F0            [12] 1802 	xch	a,b
      00284A F4               [12] 1803 	cpl	a
      00284B 34 00            [12] 1804 	addc	a,#0x00
      00284D C5 F0            [12] 1805 	xch	a,b
      00284F                       1806 00187$:
      00284F FE               [12] 1807 	mov	r6,a
      002850 AD F0            [24] 1808 	mov	r5,b
      002852 24 74            [12] 1809 	add	a,#_neigh
      002854 F5 82            [12] 1810 	mov	dpl,a
      002856 ED               [12] 1811 	mov	a,r5
      002857 34 FF            [12] 1812 	addc	a,#(_neigh >> 8)
      002859 F5 83            [12] 1813 	mov	dph,a
      00285B A8 10            [24] 1814 	mov	r0,_bp
      00285D 08               [12] 1815 	inc	r0
      00285E E0               [24] 1816 	movx	a,@dptr
      00285F F6               [12] 1817 	mov	@r0,a
      002860 A3               [24] 1818 	inc	dptr
      002861 E0               [24] 1819 	movx	a,@dptr
      002862 08               [12] 1820 	inc	r0
      002863 F6               [12] 1821 	mov	@r0,a
      002864 C0 06            [24] 1822 	push	ar6
      002866 C0 05            [24] 1823 	push	ar5
      002868 C0 04            [24] 1824 	push	ar4
      00286A C0 03            [24] 1825 	push	ar3
      00286C C0 01            [24] 1826 	push	ar1
      00286E 12 2C 0D         [24] 1827 	lcall	_rand
      002871 AA 82            [24] 1828 	mov	r2,dpl
      002873 AF 83            [24] 1829 	mov	r7,dph
      002875 74 20            [12] 1830 	mov	a,#0x20
      002877 C0 E0            [24] 1831 	push	acc
      002879 E4               [12] 1832 	clr	a
      00287A C0 E0            [24] 1833 	push	acc
      00287C 8A 82            [24] 1834 	mov	dpl,r2
      00287E 8F 83            [24] 1835 	mov	dph,r7
      002880 12 2F 11         [24] 1836 	lcall	__modsint
      002883 AA 82            [24] 1837 	mov	r2,dpl
      002885 AF 83            [24] 1838 	mov	r7,dph
      002887 15 81            [12] 1839 	dec	sp
      002889 15 81            [12] 1840 	dec	sp
      00288B D0 01            [24] 1841 	pop	ar1
      00288D D0 03            [24] 1842 	pop	ar3
      00288F D0 04            [24] 1843 	pop	ar4
      002891 D0 05            [24] 1844 	pop	ar5
      002893 D0 06            [24] 1845 	pop	ar6
      002895 0A               [12] 1846 	inc	r2
      002896 BA 00 01         [24] 1847 	cjne	r2,#0x00,00188$
      002899 0F               [12] 1848 	inc	r7
      00289A                       1849 00188$:
      00289A C0 06            [24] 1850 	push	ar6
      00289C C0 05            [24] 1851 	push	ar5
      00289E C0 04            [24] 1852 	push	ar4
      0028A0 C0 03            [24] 1853 	push	ar3
      0028A2 C0 01            [24] 1854 	push	ar1
      0028A4 C0 02            [24] 1855 	push	ar2
      0028A6 C0 07            [24] 1856 	push	ar7
      0028A8 A8 10            [24] 1857 	mov	r0,_bp
      0028AA 08               [12] 1858 	inc	r0
      0028AB 86 82            [24] 1859 	mov	dpl,@r0
      0028AD 08               [12] 1860 	inc	r0
      0028AE 86 83            [24] 1861 	mov	dph,@r0
      0028B0 12 2D 05         [24] 1862 	lcall	__mulint
      0028B3 AA 82            [24] 1863 	mov	r2,dpl
      0028B5 AF 83            [24] 1864 	mov	r7,dph
      0028B7 15 81            [12] 1865 	dec	sp
      0028B9 15 81            [12] 1866 	dec	sp
      0028BB D0 01            [24] 1867 	pop	ar1
      0028BD D0 03            [24] 1868 	pop	ar3
      0028BF D0 04            [24] 1869 	pop	ar4
      0028C1 D0 05            [24] 1870 	pop	ar5
      0028C3 D0 06            [24] 1871 	pop	ar6
      0028C5 E5 10            [12] 1872 	mov	a,_bp
      0028C7 24 03            [12] 1873 	add	a,#0x03
      0028C9 F8               [12] 1874 	mov	r0,a
      0028CA 86 82            [24] 1875 	mov	dpl,@r0
      0028CC 08               [12] 1876 	inc	r0
      0028CD 86 83            [24] 1877 	mov	dph,@r0
      0028CF EA               [12] 1878 	mov	a,r2
      0028D0 F0               [24] 1879 	movx	@dptr,a
      0028D1 EF               [12] 1880 	mov	a,r7
      0028D2 A3               [24] 1881 	inc	dptr
      0028D3 F0               [24] 1882 	movx	@dptr,a
                                   1883 ;	walk.c:184: neigh[i].c = neigh[REG + i].c * (1 + rand() % 32);
      0028D4 EB               [12] 1884 	mov	a,r3
      0028D5 24 74            [12] 1885 	add	a,#_neigh
      0028D7 FB               [12] 1886 	mov	r3,a
      0028D8 EC               [12] 1887 	mov	a,r4
      0028D9 34 FF            [12] 1888 	addc	a,#(_neigh >> 8)
      0028DB FC               [12] 1889 	mov	r4,a
      0028DC 74 02            [12] 1890 	mov	a,#0x02
      0028DE 2B               [12] 1891 	add	a,r3
      0028DF FA               [12] 1892 	mov	r2,a
      0028E0 E4               [12] 1893 	clr	a
      0028E1 3C               [12] 1894 	addc	a,r4
      0028E2 FF               [12] 1895 	mov	r7,a
      0028E3 EE               [12] 1896 	mov	a,r6
      0028E4 24 74            [12] 1897 	add	a,#_neigh
      0028E6 FE               [12] 1898 	mov	r6,a
      0028E7 ED               [12] 1899 	mov	a,r5
      0028E8 34 FF            [12] 1900 	addc	a,#(_neigh >> 8)
      0028EA FD               [12] 1901 	mov	r5,a
      0028EB 8E 82            [24] 1902 	mov	dpl,r6
      0028ED 8D 83            [24] 1903 	mov	dph,r5
      0028EF A3               [24] 1904 	inc	dptr
      0028F0 A3               [24] 1905 	inc	dptr
      0028F1 E5 10            [12] 1906 	mov	a,_bp
      0028F3 24 03            [12] 1907 	add	a,#0x03
      0028F5 F8               [12] 1908 	mov	r0,a
      0028F6 E0               [24] 1909 	movx	a,@dptr
      0028F7 F6               [12] 1910 	mov	@r0,a
      0028F8 A3               [24] 1911 	inc	dptr
      0028F9 E0               [24] 1912 	movx	a,@dptr
      0028FA 08               [12] 1913 	inc	r0
      0028FB F6               [12] 1914 	mov	@r0,a
      0028FC C0 07            [24] 1915 	push	ar7
      0028FE C0 04            [24] 1916 	push	ar4
      002900 C0 03            [24] 1917 	push	ar3
      002902 C0 02            [24] 1918 	push	ar2
      002904 C0 01            [24] 1919 	push	ar1
      002906 12 2C 0D         [24] 1920 	lcall	_rand
      002909 AD 82            [24] 1921 	mov	r5,dpl
      00290B AE 83            [24] 1922 	mov	r6,dph
      00290D 74 20            [12] 1923 	mov	a,#0x20
      00290F C0 E0            [24] 1924 	push	acc
      002911 E4               [12] 1925 	clr	a
      002912 C0 E0            [24] 1926 	push	acc
      002914 8D 82            [24] 1927 	mov	dpl,r5
      002916 8E 83            [24] 1928 	mov	dph,r6
      002918 12 2F 11         [24] 1929 	lcall	__modsint
      00291B AD 82            [24] 1930 	mov	r5,dpl
      00291D AE 83            [24] 1931 	mov	r6,dph
      00291F 15 81            [12] 1932 	dec	sp
      002921 15 81            [12] 1933 	dec	sp
      002923 D0 01            [24] 1934 	pop	ar1
      002925 D0 02            [24] 1935 	pop	ar2
      002927 D0 03            [24] 1936 	pop	ar3
      002929 D0 04            [24] 1937 	pop	ar4
      00292B D0 07            [24] 1938 	pop	ar7
      00292D 0D               [12] 1939 	inc	r5
      00292E BD 00 01         [24] 1940 	cjne	r5,#0x00,00189$
      002931 0E               [12] 1941 	inc	r6
      002932                       1942 00189$:
      002932 C0 07            [24] 1943 	push	ar7
      002934 C0 04            [24] 1944 	push	ar4
      002936 C0 03            [24] 1945 	push	ar3
      002938 C0 02            [24] 1946 	push	ar2
      00293A C0 01            [24] 1947 	push	ar1
      00293C C0 05            [24] 1948 	push	ar5
      00293E C0 06            [24] 1949 	push	ar6
      002940 E5 10            [12] 1950 	mov	a,_bp
      002942 24 03            [12] 1951 	add	a,#0x03
      002944 F8               [12] 1952 	mov	r0,a
      002945 86 82            [24] 1953 	mov	dpl,@r0
      002947 08               [12] 1954 	inc	r0
      002948 86 83            [24] 1955 	mov	dph,@r0
      00294A 12 2D 05         [24] 1956 	lcall	__mulint
      00294D AD 82            [24] 1957 	mov	r5,dpl
      00294F AE 83            [24] 1958 	mov	r6,dph
      002951 15 81            [12] 1959 	dec	sp
      002953 15 81            [12] 1960 	dec	sp
      002955 D0 01            [24] 1961 	pop	ar1
      002957 D0 02            [24] 1962 	pop	ar2
      002959 D0 03            [24] 1963 	pop	ar3
      00295B D0 04            [24] 1964 	pop	ar4
      00295D D0 07            [24] 1965 	pop	ar7
      00295F 8A 82            [24] 1966 	mov	dpl,r2
      002961 8F 83            [24] 1967 	mov	dph,r7
      002963 ED               [12] 1968 	mov	a,r5
      002964 F0               [24] 1969 	movx	@dptr,a
      002965 EE               [12] 1970 	mov	a,r6
      002966 A3               [24] 1971 	inc	dptr
      002967 F0               [24] 1972 	movx	@dptr,a
                                   1973 ;	walk.c:185: printf("% 8d% 8d", neigh[i].r, neigh[i].c);
      002968 8B 82            [24] 1974 	mov	dpl,r3
      00296A 8C 83            [24] 1975 	mov	dph,r4
      00296C E0               [24] 1976 	movx	a,@dptr
      00296D FB               [12] 1977 	mov	r3,a
      00296E A3               [24] 1978 	inc	dptr
      00296F E0               [24] 1979 	movx	a,@dptr
      002970 FC               [12] 1980 	mov	r4,a
      002971 C0 07            [24] 1981 	push	ar7
      002973 C0 01            [24] 1982 	push	ar1
      002975 C0 05            [24] 1983 	push	ar5
      002977 C0 06            [24] 1984 	push	ar6
      002979 C0 03            [24] 1985 	push	ar3
      00297B C0 04            [24] 1986 	push	ar4
      00297D 74 45            [12] 1987 	mov	a,#___str_6
      00297F C0 E0            [24] 1988 	push	acc
      002981 74 42            [12] 1989 	mov	a,#(___str_6 >> 8)
      002983 C0 E0            [24] 1990 	push	acc
      002985 74 80            [12] 1991 	mov	a,#0x80
      002987 C0 E0            [24] 1992 	push	acc
      002989 12 2E BC         [24] 1993 	lcall	_printf
      00298C E5 81            [12] 1994 	mov	a,sp
      00298E 24 F9            [12] 1995 	add	a,#0xf9
      002990 F5 81            [12] 1996 	mov	sp,a
      002992 D0 01            [24] 1997 	pop	ar1
      002994 D0 07            [24] 1998 	pop	ar7
                                   1999 ;	walk.c:182: for (i = 0; i < REG; i++) {
      002996 E5 10            [12] 2000 	mov	a,_bp
      002998 24 0B            [12] 2001 	add	a,#0x0b
      00299A F8               [12] 2002 	mov	r0,a
      00299B 06               [12] 2003 	inc	@r0
      00299C B6 00 02         [24] 2004 	cjne	@r0,#0x00,00190$
      00299F 08               [12] 2005 	inc	r0
      0029A0 06               [12] 2006 	inc	@r0
      0029A1                       2007 00190$:
      0029A1 E5 10            [12] 2008 	mov	a,_bp
      0029A3 24 0B            [12] 2009 	add	a,#0x0b
      0029A5 F8               [12] 2010 	mov	r0,a
      0029A6 86 05            [24] 2011 	mov	ar5,@r0
      0029A8 08               [12] 2012 	inc	r0
      0029A9 86 06            [24] 2013 	mov	ar6,@r0
      0029AB C3               [12] 2014 	clr	c
      0029AC ED               [12] 2015 	mov	a,r5
      0029AD 94 08            [12] 2016 	subb	a,#0x08
      0029AF EE               [12] 2017 	mov	a,r6
      0029B0 94 00            [12] 2018 	subb	a,#0x00
      0029B2 D0 07            [24] 2019 	pop	ar7
      0029B4 50 03            [24] 2020 	jnc	00191$
      0029B6 02 28 06         [24] 2021 	ljmp	00115$
      0029B9                       2022 00191$:
                                   2023 ;	walk.c:188: OE76 = OE76_0;
      0029B9 78 12            [12] 2024 	mov	r0,#_OE76
      0029BB 76 3F            [12] 2025 	mov	@r0,#0x3f
                                   2026 ;	walk.c:189: flashOE(OE76_NC);
      0029BD 75 82 00         [24] 2027 	mov	dpl,#0x00
      0029C0 C0 07            [24] 2028 	push	ar7
      0029C2 C0 01            [24] 2029 	push	ar1
      0029C4 12 20 8E         [24] 2030 	lcall	_flashOE
      0029C7 D0 01            [24] 2031 	pop	ar1
      0029C9 D0 07            [24] 2032 	pop	ar7
                                   2033 ;	walk.c:191: walk(&initial);
      0029CB 8F 04            [24] 2034 	mov	ar4,r7
      0029CD 7D 00            [12] 2035 	mov	r5,#0x00
      0029CF 7E 40            [12] 2036 	mov	r6,#0x40
      0029D1 8C 82            [24] 2037 	mov	dpl,r4
      0029D3 8D 83            [24] 2038 	mov	dph,r5
      0029D5 8E F0            [24] 2039 	mov	b,r6
      0029D7 C0 07            [24] 2040 	push	ar7
      0029D9 C0 01            [24] 2041 	push	ar1
      0029DB 12 23 2E         [24] 2042 	lcall	_walk
      0029DE D0 01            [24] 2043 	pop	ar1
      0029E0 D0 07            [24] 2044 	pop	ar7
                                   2045 ;	walk.c:193: for (i = 0; i < ROWS; i++)
      0029E2 E5 10            [12] 2046 	mov	a,_bp
      0029E4 24 0B            [12] 2047 	add	a,#0x0b
      0029E6 F8               [12] 2048 	mov	r0,a
      0029E7 E4               [12] 2049 	clr	a
      0029E8 F6               [12] 2050 	mov	@r0,a
      0029E9 08               [12] 2051 	inc	r0
      0029EA F6               [12] 2052 	mov	@r0,a
      0029EB 7B 00            [12] 2053 	mov	r3,#0x00
      0029ED 7C 00            [12] 2054 	mov	r4,#0x00
                                   2055 ;	walk.c:194: for (j = 0; j < COLS; j++)
      0029EF                       2056 00131$:
      0029EF E5 10            [12] 2057 	mov	a,_bp
      0029F1 24 03            [12] 2058 	add	a,#0x03
      0029F3 F8               [12] 2059 	mov	r0,a
      0029F4 EB               [12] 2060 	mov	a,r3
      0029F5 24 00            [12] 2061 	add	a,#_g
      0029F7 F6               [12] 2062 	mov	@r0,a
      0029F8 EC               [12] 2063 	mov	a,r4
      0029F9 34 43            [12] 2064 	addc	a,#(_g >> 8)
      0029FB 08               [12] 2065 	inc	r0
      0029FC F6               [12] 2066 	mov	@r0,a
      0029FD 7A 00            [12] 2067 	mov	r2,#0x00
      0029FF 7E 00            [12] 2068 	mov	r6,#0x00
      002A01                       2069 00117$:
                                   2070 ;	walk.c:195: if (g[i][j] != 0xaau) bang();
      002A01 E5 10            [12] 2071 	mov	a,_bp
      002A03 24 03            [12] 2072 	add	a,#0x03
      002A05 F8               [12] 2073 	mov	r0,a
      002A06 EA               [12] 2074 	mov	a,r2
      002A07 26               [12] 2075 	add	a,@r0
      002A08 F5 82            [12] 2076 	mov	dpl,a
      002A0A EE               [12] 2077 	mov	a,r6
      002A0B 08               [12] 2078 	inc	r0
      002A0C 36               [12] 2079 	addc	a,@r0
      002A0D F5 83            [12] 2080 	mov	dph,a
      002A0F E0               [24] 2081 	movx	a,@dptr
      002A10 FD               [12] 2082 	mov	r5,a
      002A11 BD AA 02         [24] 2083 	cjne	r5,#0xaa,00192$
      002A14 80 1B            [24] 2084 	sjmp	00118$
      002A16                       2085 00192$:
      002A16 C0 07            [24] 2086 	push	ar7
      002A18 C0 06            [24] 2087 	push	ar6
      002A1A C0 04            [24] 2088 	push	ar4
      002A1C C0 03            [24] 2089 	push	ar3
      002A1E C0 02            [24] 2090 	push	ar2
      002A20 C0 01            [24] 2091 	push	ar1
      002A22 12 20 82         [24] 2092 	lcall	_bang
      002A25 D0 01            [24] 2093 	pop	ar1
      002A27 D0 02            [24] 2094 	pop	ar2
      002A29 D0 03            [24] 2095 	pop	ar3
      002A2B D0 04            [24] 2096 	pop	ar4
      002A2D D0 06            [24] 2097 	pop	ar6
      002A2F D0 07            [24] 2098 	pop	ar7
      002A31                       2099 00118$:
                                   2100 ;	walk.c:194: for (j = 0; j < COLS; j++)
      002A31 0A               [12] 2101 	inc	r2
      002A32 BA 00 01         [24] 2102 	cjne	r2,#0x00,00193$
      002A35 0E               [12] 2103 	inc	r6
      002A36                       2104 00193$:
      002A36 C3               [12] 2105 	clr	c
      002A37 EA               [12] 2106 	mov	a,r2
      002A38 94 C9            [12] 2107 	subb	a,#0xc9
      002A3A EE               [12] 2108 	mov	a,r6
      002A3B 64 80            [12] 2109 	xrl	a,#0x80
      002A3D 94 80            [12] 2110 	subb	a,#0x80
      002A3F 40 C0            [24] 2111 	jc	00117$
                                   2112 ;	walk.c:193: for (i = 0; i < ROWS; i++)
      002A41 74 C9            [12] 2113 	mov	a,#0xc9
      002A43 2B               [12] 2114 	add	a,r3
      002A44 FB               [12] 2115 	mov	r3,a
      002A45 E4               [12] 2116 	clr	a
      002A46 3C               [12] 2117 	addc	a,r4
      002A47 FC               [12] 2118 	mov	r4,a
      002A48 E5 10            [12] 2119 	mov	a,_bp
      002A4A 24 0B            [12] 2120 	add	a,#0x0b
      002A4C F8               [12] 2121 	mov	r0,a
      002A4D 06               [12] 2122 	inc	@r0
      002A4E B6 00 02         [24] 2123 	cjne	@r0,#0x00,00195$
      002A51 08               [12] 2124 	inc	r0
      002A52 06               [12] 2125 	inc	@r0
      002A53                       2126 00195$:
      002A53 E5 10            [12] 2127 	mov	a,_bp
      002A55 24 0B            [12] 2128 	add	a,#0x0b
      002A57 F8               [12] 2129 	mov	r0,a
      002A58 C3               [12] 2130 	clr	c
      002A59 E6               [12] 2131 	mov	a,@r0
      002A5A 94 30            [12] 2132 	subb	a,#0x30
      002A5C 08               [12] 2133 	inc	r0
      002A5D E6               [12] 2134 	mov	a,@r0
      002A5E 64 80            [12] 2135 	xrl	a,#0x80
      002A60 94 80            [12] 2136 	subb	a,#0x80
      002A62 40 8B            [24] 2137 	jc	00131$
                                   2138 ;	walk.c:197: N++;
      002A64 E5 10            [12] 2139 	mov	a,_bp
      002A66 24 09            [12] 2140 	add	a,#0x09
      002A68 F8               [12] 2141 	mov	r0,a
      002A69 06               [12] 2142 	inc	@r0
      002A6A B6 00 02         [24] 2143 	cjne	@r0,#0x00,00197$
      002A6D 08               [12] 2144 	inc	r0
      002A6E 06               [12] 2145 	inc	@r0
      002A6F                       2146 00197$:
      002A6F 02 26 EB         [24] 2147 	ljmp	00108$
      002A72                       2148 00110$:
                                   2149 ;	walk.c:200: EA = 0;
                                   2150 ;	assignBit
      002A72 C2 AF            [12] 2151 	clr	_EA
                                   2152 ;	walk.c:202: puts("\033[2J\033[?25h");
      002A74 90 42 4E         [24] 2153 	mov	dptr,#___str_7
      002A77 75 F0 80         [24] 2154 	mov	b,#0x80
      002A7A 12 2E 36         [24] 2155 	lcall	_puts
                                   2156 ;	walk.c:206: __endasm;
      002A7D 02 00 00         [24] 2157 	ljmp	0
                                   2158 ;	walk.c:208: return 0;
      002A80 90 00 00         [24] 2159 	mov	dptr,#0x0000
                                   2160 ;	walk.c:209: }
      002A83 85 10 81         [24] 2161 	mov	sp,_bp
      002A86 D0 10            [24] 2162 	pop	_bp
      002A88 22               [24] 2163 	ret
                                   2164 ;------------------------------------------------------------
                                   2165 ;Allocation info for local variables in function 'qinit'
                                   2166 ;------------------------------------------------------------
                                   2167 ;	walk.c:211: static void qinit(void) {
                                   2168 ;	-----------------------------------------
                                   2169 ;	 function qinit
                                   2170 ;	-----------------------------------------
      002A89                       2171 _qinit:
                                   2172 ;	walk.c:212: hp = tp = 0;
      002A89 90 FF 72         [24] 2173 	mov	dptr,#_tp
      002A8C E4               [12] 2174 	clr	a
      002A8D F0               [24] 2175 	movx	@dptr,a
      002A8E A3               [24] 2176 	inc	dptr
      002A8F F0               [24] 2177 	movx	@dptr,a
      002A90 90 FF 70         [24] 2178 	mov	dptr,#_hp
      002A93 F0               [24] 2179 	movx	@dptr,a
      002A94 A3               [24] 2180 	inc	dptr
      002A95 F0               [24] 2181 	movx	@dptr,a
                                   2182 ;	walk.c:213: return;
                                   2183 ;	walk.c:214: }
      002A96 22               [24] 2184 	ret
                                   2185 ;------------------------------------------------------------
                                   2186 ;Allocation info for local variables in function 'qadd'
                                   2187 ;------------------------------------------------------------
                                   2188 ;t                         Allocated to registers r7 r5 r6 
                                   2189 ;sloc0                     Allocated to stack - _bp +1
                                   2190 ;sloc1                     Allocated to stack - _bp +3
                                   2191 ;sloc2                     Allocated to stack - _bp +5
                                   2192 ;sloc3                     Allocated to stack - _bp +10
                                   2193 ;------------------------------------------------------------
                                   2194 ;	walk.c:216: static uint8_t qadd(struct node *t) {
                                   2195 ;	-----------------------------------------
                                   2196 ;	 function qadd
                                   2197 ;	-----------------------------------------
      002A97                       2198 _qadd:
      002A97 C0 10            [24] 2199 	push	_bp
      002A99 E5 81            [12] 2200 	mov	a,sp
      002A9B F5 10            [12] 2201 	mov	_bp,a
      002A9D 24 06            [12] 2202 	add	a,#0x06
      002A9F F5 81            [12] 2203 	mov	sp,a
      002AA1 AF 82            [24] 2204 	mov	r7,dpl
      002AA3 AD 83            [24] 2205 	mov	r5,dph
      002AA5 AE F0            [24] 2206 	mov	r6,b
                                   2207 ;	walk.c:217: if (((hp + 1) % QMAX) == tp) return 0u;
      002AA7 90 FF 70         [24] 2208 	mov	dptr,#_hp
      002AAA E0               [24] 2209 	movx	a,@dptr
      002AAB FB               [12] 2210 	mov	r3,a
      002AAC A3               [24] 2211 	inc	dptr
      002AAD E0               [24] 2212 	movx	a,@dptr
      002AAE FC               [12] 2213 	mov	r4,a
      002AAF A8 10            [24] 2214 	mov	r0,_bp
      002AB1 08               [12] 2215 	inc	r0
      002AB2 74 01            [12] 2216 	mov	a,#0x01
      002AB4 2B               [12] 2217 	add	a,r3
      002AB5 F6               [12] 2218 	mov	@r0,a
      002AB6 E4               [12] 2219 	clr	a
      002AB7 3C               [12] 2220 	addc	a,r4
      002AB8 08               [12] 2221 	inc	r0
      002AB9 F6               [12] 2222 	mov	@r0,a
      002ABA C0 07            [24] 2223 	push	ar7
      002ABC C0 06            [24] 2224 	push	ar6
      002ABE C0 05            [24] 2225 	push	ar5
      002AC0 C0 04            [24] 2226 	push	ar4
      002AC2 C0 03            [24] 2227 	push	ar3
      002AC4 74 B0            [12] 2228 	mov	a,#0xb0
      002AC6 C0 E0            [24] 2229 	push	acc
      002AC8 74 25            [12] 2230 	mov	a,#0x25
      002ACA C0 E0            [24] 2231 	push	acc
      002ACC A8 10            [24] 2232 	mov	r0,_bp
      002ACE 08               [12] 2233 	inc	r0
      002ACF 86 82            [24] 2234 	mov	dpl,@r0
      002AD1 08               [12] 2235 	inc	r0
      002AD2 86 83            [24] 2236 	mov	dph,@r0
      002AD4 12 2F 11         [24] 2237 	lcall	__modsint
      002AD7 A8 10            [24] 2238 	mov	r0,_bp
      002AD9 08               [12] 2239 	inc	r0
      002ADA 08               [12] 2240 	inc	r0
      002ADB 08               [12] 2241 	inc	r0
      002ADC A6 82            [24] 2242 	mov	@r0,dpl
      002ADE 08               [12] 2243 	inc	r0
      002ADF A6 83            [24] 2244 	mov	@r0,dph
      002AE1 15 81            [12] 2245 	dec	sp
      002AE3 15 81            [12] 2246 	dec	sp
      002AE5 D0 03            [24] 2247 	pop	ar3
      002AE7 D0 04            [24] 2248 	pop	ar4
      002AE9 D0 05            [24] 2249 	pop	ar5
      002AEB D0 06            [24] 2250 	pop	ar6
      002AED D0 07            [24] 2251 	pop	ar7
      002AEF 90 FF 72         [24] 2252 	mov	dptr,#_tp
      002AF2 E5 10            [12] 2253 	mov	a,_bp
      002AF4 24 05            [12] 2254 	add	a,#0x05
      002AF6 F8               [12] 2255 	mov	r0,a
      002AF7 E0               [24] 2256 	movx	a,@dptr
      002AF8 F6               [12] 2257 	mov	@r0,a
      002AF9 A3               [24] 2258 	inc	dptr
      002AFA E0               [24] 2259 	movx	a,@dptr
      002AFB 08               [12] 2260 	inc	r0
      002AFC F6               [12] 2261 	mov	@r0,a
      002AFD E5 10            [12] 2262 	mov	a,_bp
      002AFF 24 03            [12] 2263 	add	a,#0x03
      002B01 F8               [12] 2264 	mov	r0,a
      002B02 E5 10            [12] 2265 	mov	a,_bp
      002B04 24 05            [12] 2266 	add	a,#0x05
      002B06 F9               [12] 2267 	mov	r1,a
      002B07 86 F0            [24] 2268 	mov	b,@r0
      002B09 E7               [12] 2269 	mov	a,@r1
      002B0A B5 F0 0A         [24] 2270 	cjne	a,b,00109$
      002B0D 08               [12] 2271 	inc	r0
      002B0E 86 F0            [24] 2272 	mov	b,@r0
      002B10 09               [12] 2273 	inc	r1
      002B11 E7               [12] 2274 	mov	a,@r1
      002B12 B5 F0 02         [24] 2275 	cjne	a,b,00109$
      002B15 80 02            [24] 2276 	sjmp	00110$
      002B17                       2277 00109$:
      002B17 80 05            [24] 2278 	sjmp	00102$
      002B19                       2279 00110$:
      002B19 75 82 00         [24] 2280 	mov	dpl,#0x00
      002B1C 80 65            [24] 2281 	sjmp	00103$
      002B1E                       2282 00102$:
                                   2283 ;	walk.c:218: queue[hp] = *t;
      002B1E 8F 02            [24] 2284 	mov	ar2,r7
      002B20 8E 07            [24] 2285 	mov	ar7,r6
      002B22 EB               [12] 2286 	mov	a,r3
      002B23 2B               [12] 2287 	add	a,r3
      002B24 FB               [12] 2288 	mov	r3,a
      002B25 EC               [12] 2289 	mov	a,r4
      002B26 33               [12] 2290 	rlc	a
      002B27 FC               [12] 2291 	mov	r4,a
      002B28 EB               [12] 2292 	mov	a,r3
      002B29 2B               [12] 2293 	add	a,r3
      002B2A FB               [12] 2294 	mov	r3,a
      002B2B EC               [12] 2295 	mov	a,r4
      002B2C 33               [12] 2296 	rlc	a
      002B2D FC               [12] 2297 	mov	r4,a
      002B2E EB               [12] 2298 	mov	a,r3
      002B2F 24 B0            [12] 2299 	add	a,#_queue
      002B31 FB               [12] 2300 	mov	r3,a
      002B32 EC               [12] 2301 	mov	a,r4
      002B33 34 68            [12] 2302 	addc	a,#(_queue >> 8)
      002B35 FC               [12] 2303 	mov	r4,a
      002B36 7E 00            [12] 2304 	mov	r6,#0x00
      002B38 74 04            [12] 2305 	mov	a,#0x04
      002B3A C0 E0            [24] 2306 	push	acc
      002B3C E4               [12] 2307 	clr	a
      002B3D C0 E0            [24] 2308 	push	acc
      002B3F C0 02            [24] 2309 	push	ar2
      002B41 C0 05            [24] 2310 	push	ar5
      002B43 C0 07            [24] 2311 	push	ar7
      002B45 8B 82            [24] 2312 	mov	dpl,r3
      002B47 8C 83            [24] 2313 	mov	dph,r4
      002B49 8E F0            [24] 2314 	mov	b,r6
      002B4B 12 2D A3         [24] 2315 	lcall	___memcpy
      002B4E E5 81            [12] 2316 	mov	a,sp
      002B50 24 FB            [12] 2317 	add	a,#0xfb
      002B52 F5 81            [12] 2318 	mov	sp,a
                                   2319 ;	walk.c:219: hp = (hp + 1) % QMAX;
      002B54 90 FF 70         [24] 2320 	mov	dptr,#_hp
      002B57 E0               [24] 2321 	movx	a,@dptr
      002B58 FD               [12] 2322 	mov	r5,a
      002B59 A3               [24] 2323 	inc	dptr
      002B5A E0               [24] 2324 	movx	a,@dptr
      002B5B FE               [12] 2325 	mov	r6,a
      002B5C 0D               [12] 2326 	inc	r5
      002B5D BD 00 01         [24] 2327 	cjne	r5,#0x00,00111$
      002B60 0E               [12] 2328 	inc	r6
      002B61                       2329 00111$:
      002B61 74 B0            [12] 2330 	mov	a,#0xb0
      002B63 C0 E0            [24] 2331 	push	acc
      002B65 74 25            [12] 2332 	mov	a,#0x25
      002B67 C0 E0            [24] 2333 	push	acc
      002B69 8D 82            [24] 2334 	mov	dpl,r5
      002B6B 8E 83            [24] 2335 	mov	dph,r6
      002B6D 12 2F 11         [24] 2336 	lcall	__modsint
      002B70 AD 82            [24] 2337 	mov	r5,dpl
      002B72 AE 83            [24] 2338 	mov	r6,dph
      002B74 15 81            [12] 2339 	dec	sp
      002B76 15 81            [12] 2340 	dec	sp
      002B78 90 FF 70         [24] 2341 	mov	dptr,#_hp
      002B7B ED               [12] 2342 	mov	a,r5
      002B7C F0               [24] 2343 	movx	@dptr,a
      002B7D EE               [12] 2344 	mov	a,r6
      002B7E A3               [24] 2345 	inc	dptr
      002B7F F0               [24] 2346 	movx	@dptr,a
                                   2347 ;	walk.c:220: return 1u;
      002B80 75 82 01         [24] 2348 	mov	dpl,#0x01
      002B83                       2349 00103$:
                                   2350 ;	walk.c:221: }
      002B83 85 10 81         [24] 2351 	mov	sp,_bp
      002B86 D0 10            [24] 2352 	pop	_bp
      002B88 22               [24] 2353 	ret
                                   2354 ;------------------------------------------------------------
                                   2355 ;Allocation info for local variables in function 'qget'
                                   2356 ;------------------------------------------------------------
                                   2357 ;t                         Allocated to registers r5 r6 r7 
                                   2358 ;------------------------------------------------------------
                                   2359 ;	walk.c:223: static uint8_t qget(struct node *t) {
                                   2360 ;	-----------------------------------------
                                   2361 ;	 function qget
                                   2362 ;	-----------------------------------------
      002B89                       2363 _qget:
      002B89 AD 82            [24] 2364 	mov	r5,dpl
      002B8B AE 83            [24] 2365 	mov	r6,dph
      002B8D AF F0            [24] 2366 	mov	r7,b
                                   2367 ;	walk.c:224: if (hp == tp) return 0u;
      002B8F 90 FF 70         [24] 2368 	mov	dptr,#_hp
      002B92 E0               [24] 2369 	movx	a,@dptr
      002B93 FB               [12] 2370 	mov	r3,a
      002B94 A3               [24] 2371 	inc	dptr
      002B95 E0               [24] 2372 	movx	a,@dptr
      002B96 FC               [12] 2373 	mov	r4,a
      002B97 90 FF 72         [24] 2374 	mov	dptr,#_tp
      002B9A E0               [24] 2375 	movx	a,@dptr
      002B9B F9               [12] 2376 	mov	r1,a
      002B9C A3               [24] 2377 	inc	dptr
      002B9D E0               [24] 2378 	movx	a,@dptr
      002B9E FA               [12] 2379 	mov	r2,a
      002B9F EB               [12] 2380 	mov	a,r3
      002BA0 B5 01 08         [24] 2381 	cjne	a,ar1,00102$
      002BA3 EC               [12] 2382 	mov	a,r4
      002BA4 B5 02 04         [24] 2383 	cjne	a,ar2,00102$
      002BA7 75 82 00         [24] 2384 	mov	dpl,#0x00
      002BAA 22               [24] 2385 	ret
      002BAB                       2386 00102$:
                                   2387 ;	walk.c:225: *t = queue[tp];
      002BAB E9               [12] 2388 	mov	a,r1
      002BAC 29               [12] 2389 	add	a,r1
      002BAD F9               [12] 2390 	mov	r1,a
      002BAE EA               [12] 2391 	mov	a,r2
      002BAF 33               [12] 2392 	rlc	a
      002BB0 FA               [12] 2393 	mov	r2,a
      002BB1 E9               [12] 2394 	mov	a,r1
      002BB2 29               [12] 2395 	add	a,r1
      002BB3 F9               [12] 2396 	mov	r1,a
      002BB4 EA               [12] 2397 	mov	a,r2
      002BB5 33               [12] 2398 	rlc	a
      002BB6 FA               [12] 2399 	mov	r2,a
      002BB7 E9               [12] 2400 	mov	a,r1
      002BB8 24 B0            [12] 2401 	add	a,#_queue
      002BBA F9               [12] 2402 	mov	r1,a
      002BBB EA               [12] 2403 	mov	a,r2
      002BBC 34 68            [12] 2404 	addc	a,#(_queue >> 8)
      002BBE FA               [12] 2405 	mov	r2,a
      002BBF 7C 00            [12] 2406 	mov	r4,#0x00
      002BC1 74 04            [12] 2407 	mov	a,#0x04
      002BC3 C0 E0            [24] 2408 	push	acc
      002BC5 E4               [12] 2409 	clr	a
      002BC6 C0 E0            [24] 2410 	push	acc
      002BC8 C0 01            [24] 2411 	push	ar1
      002BCA C0 02            [24] 2412 	push	ar2
      002BCC C0 04            [24] 2413 	push	ar4
      002BCE 8D 82            [24] 2414 	mov	dpl,r5
      002BD0 8E 83            [24] 2415 	mov	dph,r6
      002BD2 8F F0            [24] 2416 	mov	b,r7
      002BD4 12 2D A3         [24] 2417 	lcall	___memcpy
      002BD7 E5 81            [12] 2418 	mov	a,sp
      002BD9 24 FB            [12] 2419 	add	a,#0xfb
      002BDB F5 81            [12] 2420 	mov	sp,a
                                   2421 ;	walk.c:226: tp = (tp + 1) % QMAX;
      002BDD 90 FF 72         [24] 2422 	mov	dptr,#_tp
      002BE0 E0               [24] 2423 	movx	a,@dptr
      002BE1 FE               [12] 2424 	mov	r6,a
      002BE2 A3               [24] 2425 	inc	dptr
      002BE3 E0               [24] 2426 	movx	a,@dptr
      002BE4 FF               [12] 2427 	mov	r7,a
      002BE5 0E               [12] 2428 	inc	r6
      002BE6 BE 00 01         [24] 2429 	cjne	r6,#0x00,00111$
      002BE9 0F               [12] 2430 	inc	r7
      002BEA                       2431 00111$:
      002BEA 74 B0            [12] 2432 	mov	a,#0xb0
      002BEC C0 E0            [24] 2433 	push	acc
      002BEE 74 25            [12] 2434 	mov	a,#0x25
      002BF0 C0 E0            [24] 2435 	push	acc
      002BF2 8E 82            [24] 2436 	mov	dpl,r6
      002BF4 8F 83            [24] 2437 	mov	dph,r7
      002BF6 12 2F 11         [24] 2438 	lcall	__modsint
      002BF9 AE 82            [24] 2439 	mov	r6,dpl
      002BFB AF 83            [24] 2440 	mov	r7,dph
      002BFD 15 81            [12] 2441 	dec	sp
      002BFF 15 81            [12] 2442 	dec	sp
      002C01 90 FF 72         [24] 2443 	mov	dptr,#_tp
      002C04 EE               [12] 2444 	mov	a,r6
      002C05 F0               [24] 2445 	movx	@dptr,a
      002C06 EF               [12] 2446 	mov	a,r7
      002C07 A3               [24] 2447 	inc	dptr
      002C08 F0               [24] 2448 	movx	@dptr,a
                                   2449 ;	walk.c:227: return 1u;
      002C09 75 82 01         [24] 2450 	mov	dpl,#0x01
                                   2451 ;	walk.c:228: }
      002C0C 22               [24] 2452 	ret
                                   2453 	.area CSEG    (CODE)
                                   2454 	.area CONST   (CODE)
                                   2455 	.area CONST   (CODE)
      0041EF                       2456 ___str_0:
      0041EF 4D 65 6D 6F 72 79 20  2457 	.ascii "Memory error"
             65 72 72 6F 72
      0041FB 00                    2458 	.db 0x00
                                   2459 	.area CSEG    (CODE)
                                   2460 	.area CONST   (CODE)
      0041FC                       2461 ___str_1:
      0041FC 1B                    2462 	.db 0x1b
      0041FD 5B 32 3B 31 48 25 20  2463 	.ascii "[2;1H% 8d% 8d% 8d% 8d"
             38 64 25 20 38 64 25
             20 38 64 25 20 38 64
      004212 00                    2464 	.db 0x00
                                   2465 	.area CSEG    (CODE)
                                   2466 	.area CONST   (CODE)
      004213                       2467 ___str_2:
      004213 1B                    2468 	.db 0x1b
      004214 5B 25 64 3B 25 64 48  2469 	.ascii "[%d;%dH."
             2E
      00421C 00                    2470 	.db 0x00
                                   2471 	.area CSEG    (CODE)
                                   2472 	.area CONST   (CODE)
      00421D                       2473 ___str_3:
      00421D 1B                    2474 	.db 0x1b
      00421E 5B 25 64 3B 25 64 48  2475 	.ascii "[%d;%dHo"
             6F
      004226 00                    2476 	.db 0x00
                                   2477 	.area CSEG    (CODE)
                                   2478 	.area CONST   (CODE)
      004227                       2479 ___str_4:
      004227 1B                    2480 	.db 0x1b
      004228 5B 32 4A              2481 	.ascii "[2J"
      00422B 1B                    2482 	.db 0x1b
      00422C 5B 3F 32 35 6C        2483 	.ascii "[?25l"
      004231 00                    2484 	.db 0x00
                                   2485 	.area CSEG    (CODE)
                                   2486 	.area CONST   (CODE)
      004232                       2487 ___str_5:
      004232 1B                    2488 	.db 0x1b
      004233 5B 31 3B 31 48 25 20  2489 	.ascii "[1;1H% 8u% 8d% 8d"
             38 75 25 20 38 64 25
             20 38 64
      004244 00                    2490 	.db 0x00
                                   2491 	.area CSEG    (CODE)
                                   2492 	.area CONST   (CODE)
      004245                       2493 ___str_6:
      004245 25 20 38 64 25 20 38  2494 	.ascii "% 8d% 8d"
             64
      00424D 00                    2495 	.db 0x00
                                   2496 	.area CSEG    (CODE)
                                   2497 	.area CONST   (CODE)
      00424E                       2498 ___str_7:
      00424E 1B                    2499 	.db 0x1b
      00424F 5B 32 4A              2500 	.ascii "[2J"
      004252 1B                    2501 	.db 0x1b
      004253 5B 3F 32 35 68        2502 	.ascii "[?25h"
      004258 00                    2503 	.db 0x00
                                   2504 	.area CSEG    (CODE)
                                   2505 	.area XINIT   (CODE)
      004264                       2506 __xinit__neigh:
      004264 FF FF                 2507 	.byte #0xff, #0xff	; -1
      004266 01 00                 2508 	.byte #0x01, #0x00	;  1
      004268 FF FF                 2509 	.byte #0xff, #0xff	; -1
      00426A FF FF                 2510 	.byte #0xff, #0xff	; -1
      00426C 01 00                 2511 	.byte #0x01, #0x00	;  1
      00426E FF FF                 2512 	.byte #0xff, #0xff	; -1
      004270 01 00                 2513 	.byte #0x01, #0x00	;  1
      004272 01 00                 2514 	.byte #0x01, #0x00	;  1
      004274 FF FF                 2515 	.byte #0xff, #0xff	; -1
      004276 00 00                 2516 	.byte #0x00, #0x00	;  0
      004278 00 00                 2517 	.byte #0x00, #0x00	;  0
      00427A FF FF                 2518 	.byte #0xff, #0xff	; -1
      00427C 01 00                 2519 	.byte #0x01, #0x00	;  1
      00427E 00 00                 2520 	.byte #0x00, #0x00	;  0
      004280 00 00                 2521 	.byte #0x00, #0x00	;  0
      004282 01 00                 2522 	.byte #0x01, #0x00	;  1
      004284 FF FF                 2523 	.byte #0xff, #0xff	; -1
      004286 01 00                 2524 	.byte #0x01, #0x00	;  1
      004288 FF FF                 2525 	.byte #0xff, #0xff	; -1
      00428A FF FF                 2526 	.byte #0xff, #0xff	; -1
      00428C 01 00                 2527 	.byte #0x01, #0x00	;  1
      00428E FF FF                 2528 	.byte #0xff, #0xff	; -1
      004290 01 00                 2529 	.byte #0x01, #0x00	;  1
      004292 01 00                 2530 	.byte #0x01, #0x00	;  1
      004294 FF FF                 2531 	.byte #0xff, #0xff	; -1
      004296 00 00                 2532 	.byte #0x00, #0x00	;  0
      004298 00 00                 2533 	.byte #0x00, #0x00	;  0
      00429A FF FF                 2534 	.byte #0xff, #0xff	; -1
      00429C 01 00                 2535 	.byte #0x01, #0x00	;  1
      00429E 00 00                 2536 	.byte #0x00, #0x00	;  0
      0042A0 00 00                 2537 	.byte #0x00, #0x00	;  0
      0042A2 01 00                 2538 	.byte #0x01, #0x00	;  1
                                   2539 	.area CABS    (ABS,CODE)
