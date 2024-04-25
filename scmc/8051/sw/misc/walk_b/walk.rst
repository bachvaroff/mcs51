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
      004310                        322 _g:
      004310                        323 	.ds 9216
      006710                        324 _queue:
      006710                        325 	.ds 36864
      00F710                        326 _hp:
      00F710                        327 	.ds 2
      00F712                        328 _tp:
      00F712                        329 	.ds 2
                           00F006   330 _OEreg	=	0xf006
                                    331 ;--------------------------------------------------------
                                    332 ; absolute external ram data
                                    333 ;--------------------------------------------------------
                                    334 	.area XABS    (ABS,XDATA)
                                    335 ;--------------------------------------------------------
                                    336 ; external initialized ram data
                                    337 ;--------------------------------------------------------
                                    338 	.area XISEG   (XDATA)
      00F714                        339 _neigh:
      00F714                        340 	.ds 64
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
      002003 02 20 7C         [24]  357 	ljmp	_int0
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
      002006 02 27 17         [24]  379 	ljmp	_main
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
                                    390 ;	walk.c:7: int putchar(int c) __naked {
                                    391 ;	-----------------------------------------
                                    392 ;	 function putchar
                                    393 ;	-----------------------------------------
      002065                        394 _putchar:
                                    395 ;	naked function: no prologue.
                                    396 ;	walk.c:15: __endasm;
      002065 C0 E0            [24]  397 	push	acc
      002067 E5 82            [12]  398 	mov	a, dpl
      002069 12 00 3C         [24]  399 	lcall	0x003c
      00206C D0 E0            [24]  400 	pop	acc
      00206E 22               [24]  401 	ret
                                    402 ;	walk.c:16: }
                                    403 ;	naked function: no epilogue.
                                    404 ;------------------------------------------------------------
                                    405 ;Allocation info for local variables in function 'getchar'
                                    406 ;------------------------------------------------------------
                                    407 ;	walk.c:18: int getchar(void) __naked {
                                    408 ;	-----------------------------------------
                                    409 ;	 function getchar
                                    410 ;	-----------------------------------------
      00206F                        411 _getchar:
                                    412 ;	naked function: no prologue.
                                    413 ;	walk.c:26: __endasm;
      00206F C0 E0            [24]  414 	push	acc
      002071 12 00 36         [24]  415 	lcall	0x0036
      002074 F5 82            [12]  416 	mov	dpl, a
      002076 75 83 00         [24]  417 	mov	dph, #0
      002079 D0 E0            [24]  418 	pop	acc
      00207B 22               [24]  419 	ret
                                    420 ;	walk.c:27: }
                                    421 ;	naked function: no epilogue.
                                    422 ;------------------------------------------------------------
                                    423 ;Allocation info for local variables in function 'int0'
                                    424 ;------------------------------------------------------------
                                    425 ;	walk.c:33: void int0(void) __interrupt IE0_VECTOR __using 1 {
                                    426 ;	-----------------------------------------
                                    427 ;	 function int0
                                    428 ;	-----------------------------------------
      00207C                        429 _int0:
                           00000F   430 	ar7 = 0x0f
                           00000E   431 	ar6 = 0x0e
                           00000D   432 	ar5 = 0x0d
                           00000C   433 	ar4 = 0x0c
                           00000B   434 	ar3 = 0x0b
                           00000A   435 	ar2 = 0x0a
                           000009   436 	ar1 = 0x09
                           000008   437 	ar0 = 0x08
      00207C C0 D0            [24]  438 	push	psw
      00207E 75 D0 08         [24]  439 	mov	psw,#0x08
                                    440 ;	walk.c:34: i0 = 0u;
      002081 78 11            [12]  441 	mov	r0,#_i0
      002083 76 00            [12]  442 	mov	@r0,#0x00
                                    443 ;	walk.c:35: }
      002085 D0 D0            [24]  444 	pop	psw
      002087 32               [24]  445 	reti
                                    446 ;	eliminated unneeded push/pop dpl
                                    447 ;	eliminated unneeded push/pop dph
                                    448 ;	eliminated unneeded push/pop b
                                    449 ;	eliminated unneeded push/pop acc
                                    450 ;------------------------------------------------------------
                                    451 ;Allocation info for local variables in function 'bang'
                                    452 ;------------------------------------------------------------
                                    453 ;	walk.c:41: static void bang(void) {
                                    454 ;	-----------------------------------------
                                    455 ;	 function bang
                                    456 ;	-----------------------------------------
      002088                        457 _bang:
                           000007   458 	ar7 = 0x07
                           000006   459 	ar6 = 0x06
                           000005   460 	ar5 = 0x05
                           000004   461 	ar4 = 0x04
                           000003   462 	ar3 = 0x03
                           000002   463 	ar2 = 0x02
                           000001   464 	ar1 = 0x01
                           000000   465 	ar0 = 0x00
                                    466 ;	walk.c:42: (void)puts("Memory error");
      002088 90 42 55         [24]  467 	mov	dptr,#___str_0
      00208B 75 F0 80         [24]  468 	mov	b,#0x80
      00208E 12 2E 9C         [24]  469 	lcall	_puts
                                    470 ;	walk.c:38: PCON |= 2;
      002091 43 87 02         [24]  471 	orl	_PCON,#0x02
                                    472 ;	walk.c:45: return;
                                    473 ;	walk.c:46: }
      002094 22               [24]  474 	ret
                                    475 ;------------------------------------------------------------
                                    476 ;Allocation info for local variables in function 'setOE'
                                    477 ;------------------------------------------------------------
                                    478 ;mask                      Allocated to registers r7 
                                    479 ;------------------------------------------------------------
                                    480 ;	walk.c:88: static void setOE(uint8_t mask) {
                                    481 ;	-----------------------------------------
                                    482 ;	 function setOE
                                    483 ;	-----------------------------------------
      002095                        484 _setOE:
      002095 AF 82            [24]  485 	mov	r7,dpl
                                    486 ;	walk.c:89: OE76 |= mask;
      002097 78 12            [12]  487 	mov	r0,#_OE76
      002099 EF               [12]  488 	mov	a,r7
      00209A 46               [12]  489 	orl	a,@r0
      00209B F6               [12]  490 	mov	@r0,a
                                    491 ;	walk.c:90: P1_7 = 0;
                                    492 ;	assignBit
      00209C C2 97            [12]  493 	clr	_P1_7
                                    494 ;	walk.c:95: __endasm;
      00209E 00               [12]  495 	nop
      00209F 00               [12]  496 	nop
      0020A0 00               [12]  497 	nop
                                    498 ;	walk.c:96: OEreg = OE76;
      0020A1 78 12            [12]  499 	mov	r0,#_OE76
      0020A3 90 F0 06         [24]  500 	mov	dptr,#_OEreg
      0020A6 E6               [12]  501 	mov	a,@r0
      0020A7 F0               [24]  502 	movx	@dptr,a
                                    503 ;	walk.c:97: P1_7 = 1;
                                    504 ;	assignBit
      0020A8 D2 97            [12]  505 	setb	_P1_7
                                    506 ;	walk.c:102: __endasm;
      0020AA 00               [12]  507 	nop
      0020AB 00               [12]  508 	nop
      0020AC 00               [12]  509 	nop
                                    510 ;	walk.c:104: return;
                                    511 ;	walk.c:105: }
      0020AD 22               [24]  512 	ret
                                    513 ;------------------------------------------------------------
                                    514 ;Allocation info for local variables in function 'unsetOE'
                                    515 ;------------------------------------------------------------
                                    516 ;mask                      Allocated to registers r7 
                                    517 ;------------------------------------------------------------
                                    518 ;	walk.c:107: static void unsetOE(uint8_t mask) {
                                    519 ;	-----------------------------------------
                                    520 ;	 function unsetOE
                                    521 ;	-----------------------------------------
      0020AE                        522 _unsetOE:
                                    523 ;	walk.c:108: OE76 &= ~mask;
      0020AE E5 82            [12]  524 	mov	a,dpl
      0020B0 F4               [12]  525 	cpl	a
      0020B1 FF               [12]  526 	mov	r7,a
      0020B2 78 12            [12]  527 	mov	r0,#_OE76
      0020B4 56               [12]  528 	anl	a,@r0
      0020B5 F6               [12]  529 	mov	@r0,a
                                    530 ;	walk.c:109: P1_7 = 0;
                                    531 ;	assignBit
      0020B6 C2 97            [12]  532 	clr	_P1_7
                                    533 ;	walk.c:114: __endasm;
      0020B8 00               [12]  534 	nop
      0020B9 00               [12]  535 	nop
      0020BA 00               [12]  536 	nop
                                    537 ;	walk.c:115: OEreg = OE76;
      0020BB 78 12            [12]  538 	mov	r0,#_OE76
      0020BD 90 F0 06         [24]  539 	mov	dptr,#_OEreg
      0020C0 E6               [12]  540 	mov	a,@r0
      0020C1 F0               [24]  541 	movx	@dptr,a
                                    542 ;	walk.c:116: P1_7 = 1;
                                    543 ;	assignBit
      0020C2 D2 97            [12]  544 	setb	_P1_7
                                    545 ;	walk.c:121: __endasm;
      0020C4 00               [12]  546 	nop
      0020C5 00               [12]  547 	nop
      0020C6 00               [12]  548 	nop
                                    549 ;	walk.c:123: return;
                                    550 ;	walk.c:124: }
      0020C7 22               [24]  551 	ret
                                    552 ;------------------------------------------------------------
                                    553 ;Allocation info for local variables in function 'flipOE'
                                    554 ;------------------------------------------------------------
                                    555 ;mask                      Allocated to registers r7 
                                    556 ;------------------------------------------------------------
                                    557 ;	walk.c:126: static void flipOE(uint8_t mask) {
                                    558 ;	-----------------------------------------
                                    559 ;	 function flipOE
                                    560 ;	-----------------------------------------
      0020C8                        561 _flipOE:
      0020C8 AF 82            [24]  562 	mov	r7,dpl
                                    563 ;	walk.c:127: OE76 ^= mask;
      0020CA 78 12            [12]  564 	mov	r0,#_OE76
      0020CC EF               [12]  565 	mov	a,r7
      0020CD 66               [12]  566 	xrl	a,@r0
      0020CE F6               [12]  567 	mov	@r0,a
                                    568 ;	walk.c:128: P1_7 = 0;
                                    569 ;	assignBit
      0020CF C2 97            [12]  570 	clr	_P1_7
                                    571 ;	walk.c:133: __endasm;
      0020D1 00               [12]  572 	nop
      0020D2 00               [12]  573 	nop
      0020D3 00               [12]  574 	nop
                                    575 ;	walk.c:134: OEreg = OE76;
      0020D4 78 12            [12]  576 	mov	r0,#_OE76
      0020D6 90 F0 06         [24]  577 	mov	dptr,#_OEreg
      0020D9 E6               [12]  578 	mov	a,@r0
      0020DA F0               [24]  579 	movx	@dptr,a
                                    580 ;	walk.c:135: P1_7 = 1;
                                    581 ;	assignBit
      0020DB D2 97            [12]  582 	setb	_P1_7
                                    583 ;	walk.c:140: __endasm;
      0020DD 00               [12]  584 	nop
      0020DE 00               [12]  585 	nop
      0020DF 00               [12]  586 	nop
                                    587 ;	walk.c:142: return;
                                    588 ;	walk.c:143: }
      0020E0 22               [24]  589 	ret
                                    590 ;------------------------------------------------------------
                                    591 ;Allocation info for local variables in function 'update'
                                    592 ;------------------------------------------------------------
                                    593 ;cur                       Allocated to stack - _bp -5
                                    594 ;j                         Allocated to stack - _bp -6
                                    595 ;t                         Allocated to stack - _bp +1
                                    596 ;sloc0                     Allocated to stack - _bp +4
                                    597 ;sloc1                     Allocated to stack - _bp +6
                                    598 ;sloc2                     Allocated to stack - _bp +8
                                    599 ;------------------------------------------------------------
                                    600 ;	walk.c:145: static uint8_t update(struct node *t, struct node *cur, uint8_t j) {
                                    601 ;	-----------------------------------------
                                    602 ;	 function update
                                    603 ;	-----------------------------------------
      0020E1                        604 _update:
      0020E1 C0 10            [24]  605 	push	_bp
      0020E3 85 81 10         [24]  606 	mov	_bp,sp
      0020E6 C0 82            [24]  607 	push	dpl
      0020E8 C0 83            [24]  608 	push	dph
      0020EA C0 F0            [24]  609 	push	b
      0020EC E5 81            [12]  610 	mov	a,sp
      0020EE 24 07            [12]  611 	add	a,#0x07
      0020F0 F5 81            [12]  612 	mov	sp,a
                                    613 ;	walk.c:146: t->r = cur->r + neigh[j].r;
      0020F2 E5 10            [12]  614 	mov	a,_bp
      0020F4 24 FB            [12]  615 	add	a,#0xfb
      0020F6 F8               [12]  616 	mov	r0,a
      0020F7 86 02            [24]  617 	mov	ar2,@r0
      0020F9 08               [12]  618 	inc	r0
      0020FA 86 03            [24]  619 	mov	ar3,@r0
      0020FC 08               [12]  620 	inc	r0
      0020FD 86 04            [24]  621 	mov	ar4,@r0
      0020FF 8A 82            [24]  622 	mov	dpl,r2
      002101 8B 83            [24]  623 	mov	dph,r3
      002103 8C F0            [24]  624 	mov	b,r4
      002105 E5 10            [12]  625 	mov	a,_bp
      002107 24 04            [12]  626 	add	a,#0x04
      002109 F8               [12]  627 	mov	r0,a
      00210A 12 2F 5B         [24]  628 	lcall	__gptrget
      00210D F6               [12]  629 	mov	@r0,a
      00210E A3               [24]  630 	inc	dptr
      00210F 12 2F 5B         [24]  631 	lcall	__gptrget
      002112 08               [12]  632 	inc	r0
      002113 F6               [12]  633 	mov	@r0,a
      002114 E5 10            [12]  634 	mov	a,_bp
      002116 24 FA            [12]  635 	add	a,#0xfa
      002118 F8               [12]  636 	mov	r0,a
      002119 E5 10            [12]  637 	mov	a,_bp
      00211B 24 06            [12]  638 	add	a,#0x06
      00211D F9               [12]  639 	mov	r1,a
      00211E E6               [12]  640 	mov	a,@r0
      00211F 75 F0 04         [24]  641 	mov	b,#0x04
      002122 A4               [48]  642 	mul	ab
      002123 F7               [12]  643 	mov	@r1,a
      002124 09               [12]  644 	inc	r1
      002125 A7 F0            [24]  645 	mov	@r1,b
      002127 E5 10            [12]  646 	mov	a,_bp
      002129 24 06            [12]  647 	add	a,#0x06
      00212B F8               [12]  648 	mov	r0,a
      00212C E6               [12]  649 	mov	a,@r0
      00212D 24 14            [12]  650 	add	a,#_neigh
      00212F F5 82            [12]  651 	mov	dpl,a
      002131 08               [12]  652 	inc	r0
      002132 E6               [12]  653 	mov	a,@r0
      002133 34 F7            [12]  654 	addc	a,#(_neigh >> 8)
      002135 F5 83            [12]  655 	mov	dph,a
      002137 E0               [24]  656 	movx	a,@dptr
      002138 FF               [12]  657 	mov	r7,a
      002139 A3               [24]  658 	inc	dptr
      00213A E0               [24]  659 	movx	a,@dptr
      00213B FE               [12]  660 	mov	r6,a
      00213C E5 10            [12]  661 	mov	a,_bp
      00213E 24 04            [12]  662 	add	a,#0x04
      002140 F8               [12]  663 	mov	r0,a
      002141 EF               [12]  664 	mov	a,r7
      002142 26               [12]  665 	add	a,@r0
      002143 FF               [12]  666 	mov	r7,a
      002144 EE               [12]  667 	mov	a,r6
      002145 08               [12]  668 	inc	r0
      002146 36               [12]  669 	addc	a,@r0
      002147 FE               [12]  670 	mov	r6,a
      002148 A8 10            [24]  671 	mov	r0,_bp
      00214A 08               [12]  672 	inc	r0
      00214B 86 82            [24]  673 	mov	dpl,@r0
      00214D 08               [12]  674 	inc	r0
      00214E 86 83            [24]  675 	mov	dph,@r0
      002150 08               [12]  676 	inc	r0
      002151 86 F0            [24]  677 	mov	b,@r0
      002153 EF               [12]  678 	mov	a,r7
      002154 12 2D 50         [24]  679 	lcall	__gptrput
      002157 A3               [24]  680 	inc	dptr
      002158 EE               [12]  681 	mov	a,r6
      002159 12 2D 50         [24]  682 	lcall	__gptrput
                                    683 ;	walk.c:147: t->c = cur->c + neigh[j].c;
      00215C A8 10            [24]  684 	mov	r0,_bp
      00215E 08               [12]  685 	inc	r0
      00215F E5 10            [12]  686 	mov	a,_bp
      002161 24 08            [12]  687 	add	a,#0x08
      002163 F9               [12]  688 	mov	r1,a
      002164 74 02            [12]  689 	mov	a,#0x02
      002166 26               [12]  690 	add	a,@r0
      002167 F7               [12]  691 	mov	@r1,a
      002168 E4               [12]  692 	clr	a
      002169 08               [12]  693 	inc	r0
      00216A 36               [12]  694 	addc	a,@r0
      00216B 09               [12]  695 	inc	r1
      00216C F7               [12]  696 	mov	@r1,a
      00216D 08               [12]  697 	inc	r0
      00216E 09               [12]  698 	inc	r1
      00216F E6               [12]  699 	mov	a,@r0
      002170 F7               [12]  700 	mov	@r1,a
      002171 74 02            [12]  701 	mov	a,#0x02
      002173 2A               [12]  702 	add	a,r2
      002174 FA               [12]  703 	mov	r2,a
      002175 E4               [12]  704 	clr	a
      002176 3B               [12]  705 	addc	a,r3
      002177 FB               [12]  706 	mov	r3,a
      002178 8A 82            [24]  707 	mov	dpl,r2
      00217A 8B 83            [24]  708 	mov	dph,r3
      00217C 8C F0            [24]  709 	mov	b,r4
      00217E 12 2F 5B         [24]  710 	lcall	__gptrget
      002181 FA               [12]  711 	mov	r2,a
      002182 A3               [24]  712 	inc	dptr
      002183 12 2F 5B         [24]  713 	lcall	__gptrget
      002186 FB               [12]  714 	mov	r3,a
      002187 E5 10            [12]  715 	mov	a,_bp
      002189 24 06            [12]  716 	add	a,#0x06
      00218B F8               [12]  717 	mov	r0,a
      00218C E6               [12]  718 	mov	a,@r0
      00218D 24 14            [12]  719 	add	a,#_neigh
      00218F FC               [12]  720 	mov	r4,a
      002190 08               [12]  721 	inc	r0
      002191 E6               [12]  722 	mov	a,@r0
      002192 34 F7            [12]  723 	addc	a,#(_neigh >> 8)
      002194 FD               [12]  724 	mov	r5,a
      002195 8C 82            [24]  725 	mov	dpl,r4
      002197 8D 83            [24]  726 	mov	dph,r5
      002199 A3               [24]  727 	inc	dptr
      00219A A3               [24]  728 	inc	dptr
      00219B E0               [24]  729 	movx	a,@dptr
      00219C FC               [12]  730 	mov	r4,a
      00219D A3               [24]  731 	inc	dptr
      00219E E0               [24]  732 	movx	a,@dptr
      00219F FD               [12]  733 	mov	r5,a
      0021A0 EC               [12]  734 	mov	a,r4
      0021A1 2A               [12]  735 	add	a,r2
      0021A2 FA               [12]  736 	mov	r2,a
      0021A3 ED               [12]  737 	mov	a,r5
      0021A4 3B               [12]  738 	addc	a,r3
      0021A5 FB               [12]  739 	mov	r3,a
      0021A6 E5 10            [12]  740 	mov	a,_bp
      0021A8 24 08            [12]  741 	add	a,#0x08
      0021AA F8               [12]  742 	mov	r0,a
      0021AB 86 82            [24]  743 	mov	dpl,@r0
      0021AD 08               [12]  744 	inc	r0
      0021AE 86 83            [24]  745 	mov	dph,@r0
      0021B0 08               [12]  746 	inc	r0
      0021B1 86 F0            [24]  747 	mov	b,@r0
      0021B3 EA               [12]  748 	mov	a,r2
      0021B4 12 2D 50         [24]  749 	lcall	__gptrput
      0021B7 A3               [24]  750 	inc	dptr
      0021B8 EB               [12]  751 	mov	a,r3
      0021B9 12 2D 50         [24]  752 	lcall	__gptrput
                                    753 ;	walk.c:149: if (t->r < 0) t->r += ROWS;
      0021BC A8 10            [24]  754 	mov	r0,_bp
      0021BE 08               [12]  755 	inc	r0
      0021BF 86 82            [24]  756 	mov	dpl,@r0
      0021C1 08               [12]  757 	inc	r0
      0021C2 86 83            [24]  758 	mov	dph,@r0
      0021C4 08               [12]  759 	inc	r0
      0021C5 86 F0            [24]  760 	mov	b,@r0
      0021C7 12 2F 5B         [24]  761 	lcall	__gptrget
      0021CA FD               [12]  762 	mov	r5,a
      0021CB A3               [24]  763 	inc	dptr
      0021CC 12 2F 5B         [24]  764 	lcall	__gptrget
      0021CF FC               [12]  765 	mov	r4,a
      0021D0 EE               [12]  766 	mov	a,r6
      0021D1 30 E7 1D         [24]  767 	jnb	acc.7,00104$
      0021D4 74 30            [12]  768 	mov	a,#0x30
      0021D6 2D               [12]  769 	add	a,r5
      0021D7 FF               [12]  770 	mov	r7,a
      0021D8 E4               [12]  771 	clr	a
      0021D9 3C               [12]  772 	addc	a,r4
      0021DA FE               [12]  773 	mov	r6,a
      0021DB A8 10            [24]  774 	mov	r0,_bp
      0021DD 08               [12]  775 	inc	r0
      0021DE 86 82            [24]  776 	mov	dpl,@r0
      0021E0 08               [12]  777 	inc	r0
      0021E1 86 83            [24]  778 	mov	dph,@r0
      0021E3 08               [12]  779 	inc	r0
      0021E4 86 F0            [24]  780 	mov	b,@r0
      0021E6 EF               [12]  781 	mov	a,r7
      0021E7 12 2D 50         [24]  782 	lcall	__gptrput
      0021EA A3               [24]  783 	inc	dptr
      0021EB EE               [12]  784 	mov	a,r6
      0021EC 12 2D 50         [24]  785 	lcall	__gptrput
      0021EF 80 27            [24]  786 	sjmp	00105$
      0021F1                        787 00104$:
                                    788 ;	walk.c:150: else if (t->r >= ROWS) t->r -= ROWS;
      0021F1 C3               [12]  789 	clr	c
      0021F2 ED               [12]  790 	mov	a,r5
      0021F3 94 30            [12]  791 	subb	a,#0x30
      0021F5 EC               [12]  792 	mov	a,r4
      0021F6 64 80            [12]  793 	xrl	a,#0x80
      0021F8 94 80            [12]  794 	subb	a,#0x80
      0021FA 40 1C            [24]  795 	jc	00105$
      0021FC ED               [12]  796 	mov	a,r5
      0021FD 24 D0            [12]  797 	add	a,#0xd0
      0021FF FD               [12]  798 	mov	r5,a
      002200 EC               [12]  799 	mov	a,r4
      002201 34 FF            [12]  800 	addc	a,#0xff
      002203 FC               [12]  801 	mov	r4,a
      002204 A8 10            [24]  802 	mov	r0,_bp
      002206 08               [12]  803 	inc	r0
      002207 86 82            [24]  804 	mov	dpl,@r0
      002209 08               [12]  805 	inc	r0
      00220A 86 83            [24]  806 	mov	dph,@r0
      00220C 08               [12]  807 	inc	r0
      00220D 86 F0            [24]  808 	mov	b,@r0
      00220F ED               [12]  809 	mov	a,r5
      002210 12 2D 50         [24]  810 	lcall	__gptrput
      002213 A3               [24]  811 	inc	dptr
      002214 EC               [12]  812 	mov	a,r4
      002215 12 2D 50         [24]  813 	lcall	__gptrput
      002218                        814 00105$:
                                    815 ;	walk.c:151: if (t->c < 0) t->c += COLS;
      002218 E5 10            [12]  816 	mov	a,_bp
      00221A 24 08            [12]  817 	add	a,#0x08
      00221C F8               [12]  818 	mov	r0,a
      00221D 86 82            [24]  819 	mov	dpl,@r0
      00221F 08               [12]  820 	inc	r0
      002220 86 83            [24]  821 	mov	dph,@r0
      002222 08               [12]  822 	inc	r0
      002223 86 F0            [24]  823 	mov	b,@r0
      002225 12 2F 5B         [24]  824 	lcall	__gptrget
      002228 A3               [24]  825 	inc	dptr
      002229 12 2F 5B         [24]  826 	lcall	__gptrget
      00222C 30 E7 35         [24]  827 	jnb	acc.7,00109$
      00222F E5 10            [12]  828 	mov	a,_bp
      002231 24 08            [12]  829 	add	a,#0x08
      002233 F8               [12]  830 	mov	r0,a
      002234 86 82            [24]  831 	mov	dpl,@r0
      002236 08               [12]  832 	inc	r0
      002237 86 83            [24]  833 	mov	dph,@r0
      002239 08               [12]  834 	inc	r0
      00223A 86 F0            [24]  835 	mov	b,@r0
      00223C 12 2F 5B         [24]  836 	lcall	__gptrget
      00223F FE               [12]  837 	mov	r6,a
      002240 A3               [24]  838 	inc	dptr
      002241 12 2F 5B         [24]  839 	lcall	__gptrget
      002244 FF               [12]  840 	mov	r7,a
      002245 74 C0            [12]  841 	mov	a,#0xc0
      002247 2E               [12]  842 	add	a,r6
      002248 FE               [12]  843 	mov	r6,a
      002249 E4               [12]  844 	clr	a
      00224A 3F               [12]  845 	addc	a,r7
      00224B FF               [12]  846 	mov	r7,a
      00224C E5 10            [12]  847 	mov	a,_bp
      00224E 24 08            [12]  848 	add	a,#0x08
      002250 F8               [12]  849 	mov	r0,a
      002251 86 82            [24]  850 	mov	dpl,@r0
      002253 08               [12]  851 	inc	r0
      002254 86 83            [24]  852 	mov	dph,@r0
      002256 08               [12]  853 	inc	r0
      002257 86 F0            [24]  854 	mov	b,@r0
      002259 EE               [12]  855 	mov	a,r6
      00225A 12 2D 50         [24]  856 	lcall	__gptrput
      00225D A3               [24]  857 	inc	dptr
      00225E EF               [12]  858 	mov	a,r7
      00225F 12 2D 50         [24]  859 	lcall	__gptrput
      002262 80 55            [24]  860 	sjmp	00110$
      002264                        861 00109$:
                                    862 ;	walk.c:152: else if (t->c >= COLS) t->c -= COLS;
      002264 E5 10            [12]  863 	mov	a,_bp
      002266 24 08            [12]  864 	add	a,#0x08
      002268 F8               [12]  865 	mov	r0,a
      002269 86 82            [24]  866 	mov	dpl,@r0
      00226B 08               [12]  867 	inc	r0
      00226C 86 83            [24]  868 	mov	dph,@r0
      00226E 08               [12]  869 	inc	r0
      00226F 86 F0            [24]  870 	mov	b,@r0
      002271 12 2F 5B         [24]  871 	lcall	__gptrget
      002274 FE               [12]  872 	mov	r6,a
      002275 A3               [24]  873 	inc	dptr
      002276 12 2F 5B         [24]  874 	lcall	__gptrget
      002279 FF               [12]  875 	mov	r7,a
      00227A C3               [12]  876 	clr	c
      00227B EE               [12]  877 	mov	a,r6
      00227C 94 C0            [12]  878 	subb	a,#0xc0
      00227E EF               [12]  879 	mov	a,r7
      00227F 64 80            [12]  880 	xrl	a,#0x80
      002281 94 80            [12]  881 	subb	a,#0x80
      002283 40 34            [24]  882 	jc	00110$
      002285 E5 10            [12]  883 	mov	a,_bp
      002287 24 08            [12]  884 	add	a,#0x08
      002289 F8               [12]  885 	mov	r0,a
      00228A 86 82            [24]  886 	mov	dpl,@r0
      00228C 08               [12]  887 	inc	r0
      00228D 86 83            [24]  888 	mov	dph,@r0
      00228F 08               [12]  889 	inc	r0
      002290 86 F0            [24]  890 	mov	b,@r0
      002292 12 2F 5B         [24]  891 	lcall	__gptrget
      002295 FE               [12]  892 	mov	r6,a
      002296 A3               [24]  893 	inc	dptr
      002297 12 2F 5B         [24]  894 	lcall	__gptrget
      00229A FF               [12]  895 	mov	r7,a
      00229B EE               [12]  896 	mov	a,r6
      00229C 24 40            [12]  897 	add	a,#0x40
      00229E FE               [12]  898 	mov	r6,a
      00229F EF               [12]  899 	mov	a,r7
      0022A0 34 FF            [12]  900 	addc	a,#0xff
      0022A2 FF               [12]  901 	mov	r7,a
      0022A3 E5 10            [12]  902 	mov	a,_bp
      0022A5 24 08            [12]  903 	add	a,#0x08
      0022A7 F8               [12]  904 	mov	r0,a
      0022A8 86 82            [24]  905 	mov	dpl,@r0
      0022AA 08               [12]  906 	inc	r0
      0022AB 86 83            [24]  907 	mov	dph,@r0
      0022AD 08               [12]  908 	inc	r0
      0022AE 86 F0            [24]  909 	mov	b,@r0
      0022B0 EE               [12]  910 	mov	a,r6
      0022B1 12 2D 50         [24]  911 	lcall	__gptrput
      0022B4 A3               [24]  912 	inc	dptr
      0022B5 EF               [12]  913 	mov	a,r7
      0022B6 12 2D 50         [24]  914 	lcall	__gptrput
      0022B9                        915 00110$:
                                    916 ;	walk.c:154: if (g[t->r][t->c] == 0xaau) return 0u;
      0022B9 A8 10            [24]  917 	mov	r0,_bp
      0022BB 08               [12]  918 	inc	r0
      0022BC 86 82            [24]  919 	mov	dpl,@r0
      0022BE 08               [12]  920 	inc	r0
      0022BF 86 83            [24]  921 	mov	dph,@r0
      0022C1 08               [12]  922 	inc	r0
      0022C2 86 F0            [24]  923 	mov	b,@r0
      0022C4 12 2F 5B         [24]  924 	lcall	__gptrget
      0022C7 FE               [12]  925 	mov	r6,a
      0022C8 A3               [24]  926 	inc	dptr
      0022C9 12 2F 5B         [24]  927 	lcall	__gptrget
      0022CC FF               [12]  928 	mov	r7,a
      0022CD C0 06            [24]  929 	push	ar6
      0022CF C0 07            [24]  930 	push	ar7
      0022D1 90 00 C0         [24]  931 	mov	dptr,#0x00c0
      0022D4 12 2D 6B         [24]  932 	lcall	__mulint
      0022D7 AE 82            [24]  933 	mov	r6,dpl
      0022D9 AF 83            [24]  934 	mov	r7,dph
      0022DB 15 81            [12]  935 	dec	sp
      0022DD 15 81            [12]  936 	dec	sp
      0022DF EE               [12]  937 	mov	a,r6
      0022E0 24 10            [12]  938 	add	a,#_g
      0022E2 FE               [12]  939 	mov	r6,a
      0022E3 EF               [12]  940 	mov	a,r7
      0022E4 34 43            [12]  941 	addc	a,#(_g >> 8)
      0022E6 FF               [12]  942 	mov	r7,a
      0022E7 E5 10            [12]  943 	mov	a,_bp
      0022E9 24 08            [12]  944 	add	a,#0x08
      0022EB F8               [12]  945 	mov	r0,a
      0022EC 86 82            [24]  946 	mov	dpl,@r0
      0022EE 08               [12]  947 	inc	r0
      0022EF 86 83            [24]  948 	mov	dph,@r0
      0022F1 08               [12]  949 	inc	r0
      0022F2 86 F0            [24]  950 	mov	b,@r0
      0022F4 12 2F 5B         [24]  951 	lcall	__gptrget
      0022F7 FC               [12]  952 	mov	r4,a
      0022F8 A3               [24]  953 	inc	dptr
      0022F9 12 2F 5B         [24]  954 	lcall	__gptrget
      0022FC FD               [12]  955 	mov	r5,a
      0022FD EC               [12]  956 	mov	a,r4
      0022FE 2E               [12]  957 	add	a,r6
      0022FF F5 82            [12]  958 	mov	dpl,a
      002301 ED               [12]  959 	mov	a,r5
      002302 3F               [12]  960 	addc	a,r7
      002303 F5 83            [12]  961 	mov	dph,a
      002305 E0               [24]  962 	movx	a,@dptr
      002306 FF               [12]  963 	mov	r7,a
      002307 BF AA 05         [24]  964 	cjne	r7,#0xaa,00114$
      00230A 75 82 00         [24]  965 	mov	dpl,#0x00
      00230D 80 59            [24]  966 	sjmp	00116$
      00230F                        967 00114$:
                                    968 ;	walk.c:155: else if (g[t->r][t->c] != 0x55u) bang();
      00230F A8 10            [24]  969 	mov	r0,_bp
      002311 08               [12]  970 	inc	r0
      002312 86 82            [24]  971 	mov	dpl,@r0
      002314 08               [12]  972 	inc	r0
      002315 86 83            [24]  973 	mov	dph,@r0
      002317 08               [12]  974 	inc	r0
      002318 86 F0            [24]  975 	mov	b,@r0
      00231A 12 2F 5B         [24]  976 	lcall	__gptrget
      00231D FE               [12]  977 	mov	r6,a
      00231E A3               [24]  978 	inc	dptr
      00231F 12 2F 5B         [24]  979 	lcall	__gptrget
      002322 FF               [12]  980 	mov	r7,a
      002323 C0 06            [24]  981 	push	ar6
      002325 C0 07            [24]  982 	push	ar7
      002327 90 00 C0         [24]  983 	mov	dptr,#0x00c0
      00232A 12 2D 6B         [24]  984 	lcall	__mulint
      00232D AE 82            [24]  985 	mov	r6,dpl
      00232F AF 83            [24]  986 	mov	r7,dph
      002331 15 81            [12]  987 	dec	sp
      002333 15 81            [12]  988 	dec	sp
      002335 EE               [12]  989 	mov	a,r6
      002336 24 10            [12]  990 	add	a,#_g
      002338 FE               [12]  991 	mov	r6,a
      002339 EF               [12]  992 	mov	a,r7
      00233A 34 43            [12]  993 	addc	a,#(_g >> 8)
      00233C FF               [12]  994 	mov	r7,a
      00233D E5 10            [12]  995 	mov	a,_bp
      00233F 24 08            [12]  996 	add	a,#0x08
      002341 F8               [12]  997 	mov	r0,a
      002342 86 82            [24]  998 	mov	dpl,@r0
      002344 08               [12]  999 	inc	r0
      002345 86 83            [24] 1000 	mov	dph,@r0
      002347 08               [12] 1001 	inc	r0
      002348 86 F0            [24] 1002 	mov	b,@r0
      00234A 12 2F 5B         [24] 1003 	lcall	__gptrget
      00234D FC               [12] 1004 	mov	r4,a
      00234E A3               [24] 1005 	inc	dptr
      00234F 12 2F 5B         [24] 1006 	lcall	__gptrget
      002352 FD               [12] 1007 	mov	r5,a
      002353 EC               [12] 1008 	mov	a,r4
      002354 2E               [12] 1009 	add	a,r6
      002355 F5 82            [12] 1010 	mov	dpl,a
      002357 ED               [12] 1011 	mov	a,r5
      002358 3F               [12] 1012 	addc	a,r7
      002359 F5 83            [12] 1013 	mov	dph,a
      00235B E0               [24] 1014 	movx	a,@dptr
      00235C FF               [12] 1015 	mov	r7,a
      00235D BF 55 02         [24] 1016 	cjne	r7,#0x55,00148$
      002360 80 03            [24] 1017 	sjmp	00115$
      002362                       1018 00148$:
      002362 12 20 88         [24] 1019 	lcall	_bang
      002365                       1020 00115$:
                                   1021 ;	walk.c:157: return 1u;
      002365 75 82 01         [24] 1022 	mov	dpl,#0x01
      002368                       1023 00116$:
                                   1024 ;	walk.c:158: }
      002368 85 10 81         [24] 1025 	mov	sp,_bp
      00236B D0 10            [24] 1026 	pop	_bp
      00236D 22               [24] 1027 	ret
                                   1028 ;------------------------------------------------------------
                                   1029 ;Allocation info for local variables in function 'walk'
                                   1030 ;------------------------------------------------------------
                                   1031 ;nstart                    Allocated to registers r5 r6 r7 
                                   1032 ;cur                       Allocated to stack - _bp +7
                                   1033 ;t                         Allocated to stack - _bp +11
                                   1034 ;scramble                  Allocated to stack - _bp +15
                                   1035 ;ti                        Allocated to registers r2 
                                   1036 ;tj                        Allocated to registers r6 
                                   1037 ;tx                        Allocated to stack - _bp +31
                                   1038 ;j                         Allocated to stack - _bp +32
                                   1039 ;sloc0                     Allocated to stack - _bp +1
                                   1040 ;sloc1                     Allocated to stack - _bp +3
                                   1041 ;sloc2                     Allocated to stack - _bp +35
                                   1042 ;sloc3                     Allocated to stack - _bp +4
                                   1043 ;------------------------------------------------------------
                                   1044 ;	walk.c:160: static void walk(struct node *nstart) {
                                   1045 ;	-----------------------------------------
                                   1046 ;	 function walk
                                   1047 ;	-----------------------------------------
      00236E                       1048 _walk:
      00236E C0 10            [24] 1049 	push	_bp
      002370 E5 81            [12] 1050 	mov	a,sp
      002372 F5 10            [12] 1051 	mov	_bp,a
      002374 24 20            [12] 1052 	add	a,#0x20
      002376 F5 81            [12] 1053 	mov	sp,a
                                   1054 ;	walk.c:165: if (!qadd(nstart)) bang();
      002378 AD 82            [24] 1055 	mov	r5,dpl
      00237A AE 83            [24] 1056 	mov	r6,dph
      00237C AF F0            [24] 1057 	mov	r7,b
      00237E C0 07            [24] 1058 	push	ar7
      002380 C0 06            [24] 1059 	push	ar6
      002382 C0 05            [24] 1060 	push	ar5
      002384 12 2B 00         [24] 1061 	lcall	_qadd
      002387 E5 82            [12] 1062 	mov	a,dpl
      002389 D0 05            [24] 1063 	pop	ar5
      00238B D0 06            [24] 1064 	pop	ar6
      00238D D0 07            [24] 1065 	pop	ar7
      00238F 70 0F            [24] 1066 	jnz	00102$
      002391 C0 07            [24] 1067 	push	ar7
      002393 C0 06            [24] 1068 	push	ar6
      002395 C0 05            [24] 1069 	push	ar5
      002397 12 20 88         [24] 1070 	lcall	_bang
      00239A D0 05            [24] 1071 	pop	ar5
      00239C D0 06            [24] 1072 	pop	ar6
      00239E D0 07            [24] 1073 	pop	ar7
      0023A0                       1074 00102$:
                                   1075 ;	walk.c:166: g[nstart->r][nstart->c] = 0xaau;
      0023A0 8D 82            [24] 1076 	mov	dpl,r5
      0023A2 8E 83            [24] 1077 	mov	dph,r6
      0023A4 8F F0            [24] 1078 	mov	b,r7
      0023A6 12 2F 5B         [24] 1079 	lcall	__gptrget
      0023A9 FB               [12] 1080 	mov	r3,a
      0023AA A3               [24] 1081 	inc	dptr
      0023AB 12 2F 5B         [24] 1082 	lcall	__gptrget
      0023AE FC               [12] 1083 	mov	r4,a
      0023AF C0 07            [24] 1084 	push	ar7
      0023B1 C0 06            [24] 1085 	push	ar6
      0023B3 C0 05            [24] 1086 	push	ar5
      0023B5 C0 03            [24] 1087 	push	ar3
      0023B7 C0 04            [24] 1088 	push	ar4
      0023B9 90 00 C0         [24] 1089 	mov	dptr,#0x00c0
      0023BC 12 2D 6B         [24] 1090 	lcall	__mulint
      0023BF AB 82            [24] 1091 	mov	r3,dpl
      0023C1 AC 83            [24] 1092 	mov	r4,dph
      0023C3 15 81            [12] 1093 	dec	sp
      0023C5 15 81            [12] 1094 	dec	sp
      0023C7 D0 05            [24] 1095 	pop	ar5
      0023C9 D0 06            [24] 1096 	pop	ar6
      0023CB D0 07            [24] 1097 	pop	ar7
      0023CD EB               [12] 1098 	mov	a,r3
      0023CE 24 10            [12] 1099 	add	a,#_g
      0023D0 FB               [12] 1100 	mov	r3,a
      0023D1 EC               [12] 1101 	mov	a,r4
      0023D2 34 43            [12] 1102 	addc	a,#(_g >> 8)
      0023D4 FC               [12] 1103 	mov	r4,a
      0023D5 74 02            [12] 1104 	mov	a,#0x02
      0023D7 2D               [12] 1105 	add	a,r5
      0023D8 FD               [12] 1106 	mov	r5,a
      0023D9 E4               [12] 1107 	clr	a
      0023DA 3E               [12] 1108 	addc	a,r6
      0023DB FE               [12] 1109 	mov	r6,a
      0023DC 8D 82            [24] 1110 	mov	dpl,r5
      0023DE 8E 83            [24] 1111 	mov	dph,r6
      0023E0 8F F0            [24] 1112 	mov	b,r7
      0023E2 12 2F 5B         [24] 1113 	lcall	__gptrget
      0023E5 FD               [12] 1114 	mov	r5,a
      0023E6 A3               [24] 1115 	inc	dptr
      0023E7 12 2F 5B         [24] 1116 	lcall	__gptrget
      0023EA FE               [12] 1117 	mov	r6,a
      0023EB ED               [12] 1118 	mov	a,r5
      0023EC 2B               [12] 1119 	add	a,r3
      0023ED F5 82            [12] 1120 	mov	dpl,a
      0023EF EE               [12] 1121 	mov	a,r6
      0023F0 3C               [12] 1122 	addc	a,r4
      0023F1 F5 83            [12] 1123 	mov	dph,a
      0023F3 74 AA            [12] 1124 	mov	a,#0xaa
      0023F5 F0               [24] 1125 	movx	@dptr,a
                                   1126 ;	walk.c:168: process:
      0023F6 E5 10            [12] 1127 	mov	a,_bp
      0023F8 24 0F            [12] 1128 	add	a,#0x0f
      0023FA FF               [12] 1129 	mov	r7,a
      0023FB E5 10            [12] 1130 	mov	a,_bp
      0023FD 24 0B            [12] 1131 	add	a,#0x0b
      0023FF F9               [12] 1132 	mov	r1,a
      002400 E5 10            [12] 1133 	mov	a,_bp
      002402 24 03            [12] 1134 	add	a,#0x03
      002404 F8               [12] 1135 	mov	r0,a
      002405 A6 01            [24] 1136 	mov	@r0,ar1
      002407 74 02            [12] 1137 	mov	a,#0x02
      002409 29               [12] 1138 	add	a,r1
      00240A F8               [12] 1139 	mov	r0,a
      00240B E5 10            [12] 1140 	mov	a,_bp
      00240D 24 07            [12] 1141 	add	a,#0x07
      00240F FD               [12] 1142 	mov	r5,a
      002410                       1143 00103$:
                                   1144 ;	walk.c:169: unsetOE(OE76_MASK7 | OE76_MASK6);
      002410 75 82 C0         [24] 1145 	mov	dpl,#0xc0
      002413 C0 07            [24] 1146 	push	ar7
      002415 C0 05            [24] 1147 	push	ar5
      002417 C0 01            [24] 1148 	push	ar1
      002419 C0 00            [24] 1149 	push	ar0
      00241B 12 20 AE         [24] 1150 	lcall	_unsetOE
      00241E D0 00            [24] 1151 	pop	ar0
      002420 D0 01            [24] 1152 	pop	ar1
      002422 D0 05            [24] 1153 	pop	ar5
                                   1154 ;	walk.c:171: if (!qget(&cur)) goto term;
      002424 8D 02            [24] 1155 	mov	ar2,r5
      002426 7B 00            [12] 1156 	mov	r3,#0x00
      002428 7C 40            [12] 1157 	mov	r4,#0x40
      00242A 8A 82            [24] 1158 	mov	dpl,r2
      00242C 8B 83            [24] 1159 	mov	dph,r3
      00242E 8C F0            [24] 1160 	mov	b,r4
      002430 C0 05            [24] 1161 	push	ar5
      002432 C0 01            [24] 1162 	push	ar1
      002434 C0 00            [24] 1163 	push	ar0
      002436 12 2B F0         [24] 1164 	lcall	_qget
      002439 E5 82            [12] 1165 	mov	a,dpl
      00243B D0 00            [24] 1166 	pop	ar0
      00243D D0 01            [24] 1167 	pop	ar1
      00243F D0 05            [24] 1168 	pop	ar5
      002441 D0 07            [24] 1169 	pop	ar7
      002443 70 03            [24] 1170 	jnz	00184$
      002445 02 27 11         [24] 1171 	ljmp	00119$
      002448                       1172 00184$:
                                   1173 ;	walk.c:173: printf("\033[2;1H% 8d% 8d% 8d% 8d", hp, tp, cur.r, cur.c);
      002448 74 02            [12] 1174 	mov	a,#0x02
      00244A 2D               [12] 1175 	add	a,r5
      00244B FC               [12] 1176 	mov	r4,a
      00244C C0 00            [24] 1177 	push	ar0
      00244E A8 10            [24] 1178 	mov	r0,_bp
      002450 08               [12] 1179 	inc	r0
      002451 C0 01            [24] 1180 	push	ar1
      002453 A9 04            [24] 1181 	mov	r1,ar4
      002455 E7               [12] 1182 	mov	a,@r1
      002456 F6               [12] 1183 	mov	@r0,a
      002457 09               [12] 1184 	inc	r1
      002458 E7               [12] 1185 	mov	a,@r1
      002459 08               [12] 1186 	inc	r0
      00245A F6               [12] 1187 	mov	@r0,a
      00245B D0 01            [24] 1188 	pop	ar1
      00245D A8 05            [24] 1189 	mov	r0,ar5
      00245F 86 03            [24] 1190 	mov	ar3,@r0
      002461 08               [12] 1191 	inc	r0
      002462 86 06            [24] 1192 	mov	ar6,@r0
      002464 D0 00            [24] 1193 	pop	ar0
      002466 C0 07            [24] 1194 	push	ar7
      002468 C0 05            [24] 1195 	push	ar5
      00246A C0 04            [24] 1196 	push	ar4
      00246C C0 01            [24] 1197 	push	ar1
      00246E C0 00            [24] 1198 	push	ar0
      002470 85 00 F0         [24] 1199 	mov	b,ar0
      002473 A8 10            [24] 1200 	mov	r0,_bp
      002475 08               [12] 1201 	inc	r0
      002476 E6               [12] 1202 	mov	a,@r0
      002477 C0 E0            [24] 1203 	push	acc
      002479 08               [12] 1204 	inc	r0
      00247A E6               [12] 1205 	mov	a,@r0
      00247B C0 E0            [24] 1206 	push	acc
      00247D C0 03            [24] 1207 	push	ar3
      00247F C0 06            [24] 1208 	push	ar6
      002481 90 F7 12         [24] 1209 	mov	dptr,#_tp
      002484 E0               [24] 1210 	movx	a,@dptr
      002485 C0 E0            [24] 1211 	push	acc
      002487 A3               [24] 1212 	inc	dptr
      002488 E0               [24] 1213 	movx	a,@dptr
      002489 C0 E0            [24] 1214 	push	acc
      00248B 90 F7 10         [24] 1215 	mov	dptr,#_hp
      00248E E0               [24] 1216 	movx	a,@dptr
      00248F C0 E0            [24] 1217 	push	acc
      002491 A3               [24] 1218 	inc	dptr
      002492 E0               [24] 1219 	movx	a,@dptr
      002493 C0 E0            [24] 1220 	push	acc
      002495 74 62            [12] 1221 	mov	a,#___str_1
      002497 C0 E0            [24] 1222 	push	acc
      002499 74 42            [12] 1223 	mov	a,#(___str_1 >> 8)
      00249B C0 E0            [24] 1224 	push	acc
      00249D 74 80            [12] 1225 	mov	a,#0x80
      00249F C0 E0            [24] 1226 	push	acc
      0024A1 12 2F 22         [24] 1227 	lcall	_printf
      0024A4 E5 81            [12] 1228 	mov	a,sp
      0024A6 24 F5            [12] 1229 	add	a,#0xf5
      0024A8 F5 81            [12] 1230 	mov	sp,a
      0024AA D0 00            [24] 1231 	pop	ar0
      0024AC D0 01            [24] 1232 	pop	ar1
      0024AE D0 04            [24] 1233 	pop	ar4
      0024B0 D0 05            [24] 1234 	pop	ar5
      0024B2 D0 07            [24] 1235 	pop	ar7
                                   1236 ;	walk.c:175: printf("\033[%d;%dH.", cur.r + 4, cur.c + 1);
      0024B4 C0 00            [24] 1237 	push	ar0
      0024B6 A8 04            [24] 1238 	mov	r0,ar4
      0024B8 86 04            [24] 1239 	mov	ar4,@r0
      0024BA 08               [12] 1240 	inc	r0
      0024BB 86 06            [24] 1241 	mov	ar6,@r0
      0024BD D0 00            [24] 1242 	pop	ar0
      0024BF 0C               [12] 1243 	inc	r4
      0024C0 BC 00 01         [24] 1244 	cjne	r4,#0x00,00185$
      0024C3 0E               [12] 1245 	inc	r6
      0024C4                       1246 00185$:
      0024C4 C0 00            [24] 1247 	push	ar0
      0024C6 A8 05            [24] 1248 	mov	r0,ar5
      0024C8 86 02            [24] 1249 	mov	ar2,@r0
      0024CA 08               [12] 1250 	inc	r0
      0024CB 86 03            [24] 1251 	mov	ar3,@r0
      0024CD D0 00            [24] 1252 	pop	ar0
      0024CF 74 04            [12] 1253 	mov	a,#0x04
      0024D1 2A               [12] 1254 	add	a,r2
      0024D2 FA               [12] 1255 	mov	r2,a
      0024D3 E4               [12] 1256 	clr	a
      0024D4 3B               [12] 1257 	addc	a,r3
      0024D5 FB               [12] 1258 	mov	r3,a
      0024D6 C0 07            [24] 1259 	push	ar7
      0024D8 C0 05            [24] 1260 	push	ar5
      0024DA C0 01            [24] 1261 	push	ar1
      0024DC C0 00            [24] 1262 	push	ar0
      0024DE C0 04            [24] 1263 	push	ar4
      0024E0 C0 06            [24] 1264 	push	ar6
      0024E2 C0 02            [24] 1265 	push	ar2
      0024E4 C0 03            [24] 1266 	push	ar3
      0024E6 74 79            [12] 1267 	mov	a,#___str_2
      0024E8 C0 E0            [24] 1268 	push	acc
      0024EA 74 42            [12] 1269 	mov	a,#(___str_2 >> 8)
      0024EC C0 E0            [24] 1270 	push	acc
      0024EE 74 80            [12] 1271 	mov	a,#0x80
      0024F0 C0 E0            [24] 1272 	push	acc
      0024F2 12 2F 22         [24] 1273 	lcall	_printf
      0024F5 E5 81            [12] 1274 	mov	a,sp
      0024F7 24 F9            [12] 1275 	add	a,#0xf9
      0024F9 F5 81            [12] 1276 	mov	sp,a
                                   1277 ;	walk.c:176: setOE(OE76_MASK6);
      0024FB 75 82 40         [24] 1278 	mov	dpl,#0x40
      0024FE 12 20 95         [24] 1279 	lcall	_setOE
      002501 D0 00            [24] 1280 	pop	ar0
      002503 D0 01            [24] 1281 	pop	ar1
      002505 D0 05            [24] 1282 	pop	ar5
      002507 D0 07            [24] 1283 	pop	ar7
                                   1284 ;	walk.c:178: for (j = 0u; j < NMAX; j++)
      002509 7E 00            [12] 1285 	mov	r6,#0x00
                                   1286 ;	walk.c:205: return;
                                   1287 ;	walk.c:178: for (j = 0u; j < NMAX; j++)
      00250B                       1288 00120$:
                                   1289 ;	walk.c:179: scramble[j] = j;
      00250B EE               [12] 1290 	mov	a,r6
      00250C 2F               [12] 1291 	add	a,r7
      00250D C0 00            [24] 1292 	push	ar0
      00250F F8               [12] 1293 	mov	r0,a
      002510 A6 06            [24] 1294 	mov	@r0,ar6
      002512 D0 00            [24] 1295 	pop	ar0
                                   1296 ;	walk.c:178: for (j = 0u; j < NMAX; j++)
      002514 0E               [12] 1297 	inc	r6
      002515 BE 10 00         [24] 1298 	cjne	r6,#0x10,00186$
      002518                       1299 00186$:
      002518 40 F1            [24] 1300 	jc	00120$
                                   1301 ;	walk.c:181: do ti = (uint8_t)(rand() % NMAX);
      00251A 7C 00            [12] 1302 	mov	r4,#0x00
      00251C                       1303 00107$:
      00251C C0 07            [24] 1304 	push	ar7
      00251E C0 05            [24] 1305 	push	ar5
      002520 C0 04            [24] 1306 	push	ar4
      002522 C0 01            [24] 1307 	push	ar1
      002524 C0 00            [24] 1308 	push	ar0
      002526 12 2C 73         [24] 1309 	lcall	_rand
      002529 AA 82            [24] 1310 	mov	r2,dpl
      00252B D0 00            [24] 1311 	pop	ar0
      00252D D0 01            [24] 1312 	pop	ar1
      00252F D0 04            [24] 1313 	pop	ar4
      002531 D0 05            [24] 1314 	pop	ar5
      002533 D0 07            [24] 1315 	pop	ar7
      002535 53 02 0F         [24] 1316 	anl	ar2,#0x0f
      002538 7B 00            [12] 1317 	mov	r3,#0x00
                                   1318 ;	walk.c:182: while (ti == j);
      00253A EA               [12] 1319 	mov	a,r2
      00253B B5 04 02         [24] 1320 	cjne	a,ar4,00188$
      00253E 80 DC            [24] 1321 	sjmp	00107$
      002540                       1322 00188$:
                                   1323 ;	walk.c:183: do tj = (uint8_t)(rand() % NMAX);
      002540                       1324 00110$:
      002540 C0 05            [24] 1325 	push	ar5
      002542 C0 07            [24] 1326 	push	ar7
      002544 C0 04            [24] 1327 	push	ar4
      002546 C0 02            [24] 1328 	push	ar2
      002548 C0 01            [24] 1329 	push	ar1
      00254A C0 00            [24] 1330 	push	ar0
      00254C 12 2C 73         [24] 1331 	lcall	_rand
      00254F AB 82            [24] 1332 	mov	r3,dpl
      002551 D0 00            [24] 1333 	pop	ar0
      002553 D0 01            [24] 1334 	pop	ar1
      002555 D0 02            [24] 1335 	pop	ar2
      002557 D0 04            [24] 1336 	pop	ar4
      002559 D0 07            [24] 1337 	pop	ar7
      00255B 53 03 0F         [24] 1338 	anl	ar3,#0x0f
      00255E 8B 06            [24] 1339 	mov	ar6,r3
                                   1340 ;	walk.c:184: while (ti == tj);
      002560 EA               [12] 1341 	mov	a,r2
      002561 B5 06 04         [24] 1342 	cjne	a,ar6,00189$
      002564 D0 05            [24] 1343 	pop	ar5
      002566 80 D8            [24] 1344 	sjmp	00110$
      002568                       1345 00189$:
                                   1346 ;	walk.c:185: tx = scramble[ti];
      002568 EA               [12] 1347 	mov	a,r2
      002569 2F               [12] 1348 	add	a,r7
      00256A FB               [12] 1349 	mov	r3,a
      00256B C0 00            [24] 1350 	push	ar0
      00256D E5 10            [12] 1351 	mov	a,_bp
      00256F 24 1F            [12] 1352 	add	a,#0x1f
      002571 F8               [12] 1353 	mov	r0,a
      002572 C0 01            [24] 1354 	push	ar1
      002574 A9 03            [24] 1355 	mov	r1,ar3
      002576 E7               [12] 1356 	mov	a,@r1
      002577 F6               [12] 1357 	mov	@r0,a
                                   1358 ;	walk.c:186: scramble[ti] = scramble[tj];
      002578 EE               [12] 1359 	mov	a,r6
      002579 2F               [12] 1360 	add	a,r7
      00257A FD               [12] 1361 	mov	r5,a
      00257B A8 05            [24] 1362 	mov	r0,ar5
      00257D 86 02            [24] 1363 	mov	ar2,@r0
      00257F A8 03            [24] 1364 	mov	r0,ar3
      002581 A6 02            [24] 1365 	mov	@r0,ar2
                                   1366 ;	walk.c:187: scramble[tj] = tx;
      002583 A8 05            [24] 1367 	mov	r0,ar5
      002585 E5 10            [12] 1368 	mov	a,_bp
      002587 24 1F            [12] 1369 	add	a,#0x1f
      002589 F9               [12] 1370 	mov	r1,a
      00258A E7               [12] 1371 	mov	a,@r1
      00258B F6               [12] 1372 	mov	@r0,a
      00258C D0 00            [24] 1373 	pop	ar0
      00258E D0 01            [24] 1374 	pop	ar1
                                   1375 ;	walk.c:180: for (j = 0u; j < NMAX; j++) {
      002590 0C               [12] 1376 	inc	r4
      002591 BC 10 00         [24] 1377 	cjne	r4,#0x10,00190$
      002594                       1378 00190$:
      002594 D0 05            [24] 1379 	pop	ar5
      002596 40 84            [24] 1380 	jc	00107$
                                   1381 ;	walk.c:190: for (j = 0u; j < NMAX; j++) {
      002598 C0 00            [24] 1382 	push	ar0
      00259A A8 10            [24] 1383 	mov	r0,_bp
      00259C 08               [12] 1384 	inc	r0
      00259D A6 05            [24] 1385 	mov	@r0,ar5
      00259F E5 10            [12] 1386 	mov	a,_bp
      0025A1 24 20            [12] 1387 	add	a,#0x20
      0025A3 F8               [12] 1388 	mov	r0,a
      0025A4 76 00            [12] 1389 	mov	@r0,#0x00
      0025A6 D0 00            [24] 1390 	pop	ar0
      0025A8                       1391 00124$:
                                   1392 ;	walk.c:191: unsetOE(OE76_MASK7);
      0025A8 C0 05            [24] 1393 	push	ar5
      0025AA 75 82 80         [24] 1394 	mov	dpl,#0x80
      0025AD C0 07            [24] 1395 	push	ar7
      0025AF C0 05            [24] 1396 	push	ar5
      0025B1 C0 01            [24] 1397 	push	ar1
      0025B3 C0 00            [24] 1398 	push	ar0
      0025B5 12 20 AE         [24] 1399 	lcall	_unsetOE
      0025B8 D0 00            [24] 1400 	pop	ar0
      0025BA D0 01            [24] 1401 	pop	ar1
      0025BC D0 05            [24] 1402 	pop	ar5
      0025BE D0 07            [24] 1403 	pop	ar7
                                   1404 ;	walk.c:193: if (update(&t, &cur, scramble[j])) {
      0025C0 C0 00            [24] 1405 	push	ar0
      0025C2 E5 10            [12] 1406 	mov	a,_bp
      0025C4 24 20            [12] 1407 	add	a,#0x20
      0025C6 F8               [12] 1408 	mov	r0,a
      0025C7 E6               [12] 1409 	mov	a,@r0
      0025C8 2F               [12] 1410 	add	a,r7
      0025C9 FA               [12] 1411 	mov	r2,a
      0025CA A8 02            [24] 1412 	mov	r0,ar2
      0025CC 86 03            [24] 1413 	mov	ar3,@r0
      0025CE A8 10            [24] 1414 	mov	r0,_bp
      0025D0 08               [12] 1415 	inc	r0
      0025D1 C0 01            [24] 1416 	push	ar1
      0025D3 E5 10            [12] 1417 	mov	a,_bp
      0025D5 24 04            [12] 1418 	add	a,#0x04
      0025D7 F9               [12] 1419 	mov	r1,a
      0025D8 E6               [12] 1420 	mov	a,@r0
      0025D9 F7               [12] 1421 	mov	@r1,a
      0025DA 09               [12] 1422 	inc	r1
      0025DB 77 00            [12] 1423 	mov	@r1,#0x00
      0025DD 09               [12] 1424 	inc	r1
      0025DE 77 40            [12] 1425 	mov	@r1,#0x40
      0025E0 D0 01            [24] 1426 	pop	ar1
      0025E2 D0 00            [24] 1427 	pop	ar0
      0025E4 89 02            [24] 1428 	mov	ar2,r1
      0025E6 7C 00            [12] 1429 	mov	r4,#0x00
      0025E8 7E 40            [12] 1430 	mov	r6,#0x40
      0025EA C0 07            [24] 1431 	push	ar7
      0025EC C0 05            [24] 1432 	push	ar5
      0025EE C0 01            [24] 1433 	push	ar1
      0025F0 C0 00            [24] 1434 	push	ar0
      0025F2 C0 03            [24] 1435 	push	ar3
      0025F4 85 00 F0         [24] 1436 	mov	b,ar0
      0025F7 E5 10            [12] 1437 	mov	a,_bp
      0025F9 24 04            [12] 1438 	add	a,#0x04
      0025FB F8               [12] 1439 	mov	r0,a
      0025FC E6               [12] 1440 	mov	a,@r0
      0025FD C0 E0            [24] 1441 	push	acc
      0025FF 08               [12] 1442 	inc	r0
      002600 E6               [12] 1443 	mov	a,@r0
      002601 C0 E0            [24] 1444 	push	acc
      002603 08               [12] 1445 	inc	r0
      002604 E6               [12] 1446 	mov	a,@r0
      002605 C0 E0            [24] 1447 	push	acc
      002607 8A 82            [24] 1448 	mov	dpl,r2
      002609 8C 83            [24] 1449 	mov	dph,r4
      00260B 8E F0            [24] 1450 	mov	b,r6
      00260D 12 20 E1         [24] 1451 	lcall	_update
      002610 AE 82            [24] 1452 	mov	r6,dpl
      002612 E5 81            [12] 1453 	mov	a,sp
      002614 24 FC            [12] 1454 	add	a,#0xfc
      002616 F5 81            [12] 1455 	mov	sp,a
      002618 D0 00            [24] 1456 	pop	ar0
      00261A D0 01            [24] 1457 	pop	ar1
      00261C D0 05            [24] 1458 	pop	ar5
      00261E D0 07            [24] 1459 	pop	ar7
      002620 D0 05            [24] 1460 	pop	ar5
      002622 EE               [12] 1461 	mov	a,r6
      002623 70 03            [24] 1462 	jnz	00192$
      002625 02 26 F7         [24] 1463 	ljmp	00125$
      002628                       1464 00192$:
                                   1465 ;	walk.c:194: if (!qadd(&t)) bang();
      002628 C0 00            [24] 1466 	push	ar0
      00262A E5 10            [12] 1467 	mov	a,_bp
      00262C 24 03            [12] 1468 	add	a,#0x03
      00262E F8               [12] 1469 	mov	r0,a
      00262F 86 03            [24] 1470 	mov	ar3,@r0
      002631 7C 00            [12] 1471 	mov	r4,#0x00
      002633 7E 40            [12] 1472 	mov	r6,#0x40
      002635 D0 00            [24] 1473 	pop	ar0
      002637 8B 82            [24] 1474 	mov	dpl,r3
      002639 8C 83            [24] 1475 	mov	dph,r4
      00263B 8E F0            [24] 1476 	mov	b,r6
      00263D C0 07            [24] 1477 	push	ar7
      00263F C0 05            [24] 1478 	push	ar5
      002641 C0 01            [24] 1479 	push	ar1
      002643 C0 00            [24] 1480 	push	ar0
      002645 12 2B 00         [24] 1481 	lcall	_qadd
      002648 E5 82            [12] 1482 	mov	a,dpl
      00264A D0 00            [24] 1483 	pop	ar0
      00264C D0 01            [24] 1484 	pop	ar1
      00264E D0 05            [24] 1485 	pop	ar5
      002650 D0 07            [24] 1486 	pop	ar7
      002652 70 13            [24] 1487 	jnz	00115$
      002654 C0 07            [24] 1488 	push	ar7
      002656 C0 05            [24] 1489 	push	ar5
      002658 C0 01            [24] 1490 	push	ar1
      00265A C0 00            [24] 1491 	push	ar0
      00265C 12 20 88         [24] 1492 	lcall	_bang
      00265F D0 00            [24] 1493 	pop	ar0
      002661 D0 01            [24] 1494 	pop	ar1
      002663 D0 05            [24] 1495 	pop	ar5
      002665 D0 07            [24] 1496 	pop	ar7
      002667                       1497 00115$:
                                   1498 ;	walk.c:195: g[t.r][t.c] = 0xaau;
      002667 87 04            [24] 1499 	mov	ar4,@r1
      002669 09               [12] 1500 	inc	r1
      00266A 87 06            [24] 1501 	mov	ar6,@r1
      00266C 19               [12] 1502 	dec	r1
      00266D C0 07            [24] 1503 	push	ar7
      00266F C0 05            [24] 1504 	push	ar5
      002671 C0 01            [24] 1505 	push	ar1
      002673 C0 00            [24] 1506 	push	ar0
      002675 C0 04            [24] 1507 	push	ar4
      002677 C0 06            [24] 1508 	push	ar6
      002679 90 00 C0         [24] 1509 	mov	dptr,#0x00c0
      00267C 12 2D 6B         [24] 1510 	lcall	__mulint
      00267F AC 82            [24] 1511 	mov	r4,dpl
      002681 AE 83            [24] 1512 	mov	r6,dph
      002683 15 81            [12] 1513 	dec	sp
      002685 15 81            [12] 1514 	dec	sp
      002687 D0 00            [24] 1515 	pop	ar0
      002689 EC               [12] 1516 	mov	a,r4
      00268A 24 10            [12] 1517 	add	a,#_g
      00268C FC               [12] 1518 	mov	r4,a
      00268D EE               [12] 1519 	mov	a,r6
      00268E 34 43            [12] 1520 	addc	a,#(_g >> 8)
      002690 FE               [12] 1521 	mov	r6,a
      002691 86 02            [24] 1522 	mov	ar2,@r0
      002693 08               [12] 1523 	inc	r0
      002694 86 03            [24] 1524 	mov	ar3,@r0
      002696 18               [12] 1525 	dec	r0
      002697 EA               [12] 1526 	mov	a,r2
      002698 2C               [12] 1527 	add	a,r4
      002699 F5 82            [12] 1528 	mov	dpl,a
      00269B EB               [12] 1529 	mov	a,r3
      00269C 3E               [12] 1530 	addc	a,r6
      00269D F5 83            [12] 1531 	mov	dph,a
      00269F 74 AA            [12] 1532 	mov	a,#0xaa
      0026A1 F0               [24] 1533 	movx	@dptr,a
                                   1534 ;	walk.c:197: setOE(OE76_MASK7);
      0026A2 75 82 80         [24] 1535 	mov	dpl,#0x80
      0026A5 C0 00            [24] 1536 	push	ar0
      0026A7 12 20 95         [24] 1537 	lcall	_setOE
      0026AA D0 00            [24] 1538 	pop	ar0
      0026AC D0 01            [24] 1539 	pop	ar1
      0026AE D0 05            [24] 1540 	pop	ar5
      0026B0 D0 07            [24] 1541 	pop	ar7
                                   1542 ;	walk.c:198: printf("\033[%d;%dHo", t.r + 4, t.c + 1);
      0026B2 86 04            [24] 1543 	mov	ar4,@r0
      0026B4 08               [12] 1544 	inc	r0
      0026B5 86 06            [24] 1545 	mov	ar6,@r0
      0026B7 18               [12] 1546 	dec	r0
      0026B8 0C               [12] 1547 	inc	r4
      0026B9 BC 00 01         [24] 1548 	cjne	r4,#0x00,00194$
      0026BC 0E               [12] 1549 	inc	r6
      0026BD                       1550 00194$:
      0026BD 87 02            [24] 1551 	mov	ar2,@r1
      0026BF 09               [12] 1552 	inc	r1
      0026C0 87 03            [24] 1553 	mov	ar3,@r1
      0026C2 19               [12] 1554 	dec	r1
      0026C3 74 04            [12] 1555 	mov	a,#0x04
      0026C5 2A               [12] 1556 	add	a,r2
      0026C6 FA               [12] 1557 	mov	r2,a
      0026C7 E4               [12] 1558 	clr	a
      0026C8 3B               [12] 1559 	addc	a,r3
      0026C9 FB               [12] 1560 	mov	r3,a
      0026CA C0 07            [24] 1561 	push	ar7
      0026CC C0 05            [24] 1562 	push	ar5
      0026CE C0 01            [24] 1563 	push	ar1
      0026D0 C0 00            [24] 1564 	push	ar0
      0026D2 C0 04            [24] 1565 	push	ar4
      0026D4 C0 06            [24] 1566 	push	ar6
      0026D6 C0 02            [24] 1567 	push	ar2
      0026D8 C0 03            [24] 1568 	push	ar3
      0026DA 74 83            [12] 1569 	mov	a,#___str_3
      0026DC C0 E0            [24] 1570 	push	acc
      0026DE 74 42            [12] 1571 	mov	a,#(___str_3 >> 8)
      0026E0 C0 E0            [24] 1572 	push	acc
      0026E2 74 80            [12] 1573 	mov	a,#0x80
      0026E4 C0 E0            [24] 1574 	push	acc
      0026E6 12 2F 22         [24] 1575 	lcall	_printf
      0026E9 E5 81            [12] 1576 	mov	a,sp
      0026EB 24 F9            [12] 1577 	add	a,#0xf9
      0026ED F5 81            [12] 1578 	mov	sp,a
      0026EF D0 00            [24] 1579 	pop	ar0
      0026F1 D0 01            [24] 1580 	pop	ar1
      0026F3 D0 05            [24] 1581 	pop	ar5
      0026F5 D0 07            [24] 1582 	pop	ar7
      0026F7                       1583 00125$:
                                   1584 ;	walk.c:190: for (j = 0u; j < NMAX; j++) {
      0026F7 C0 00            [24] 1585 	push	ar0
      0026F9 E5 10            [12] 1586 	mov	a,_bp
      0026FB 24 20            [12] 1587 	add	a,#0x20
      0026FD F8               [12] 1588 	mov	r0,a
      0026FE 06               [12] 1589 	inc	@r0
      0026FF E5 10            [12] 1590 	mov	a,_bp
      002701 24 20            [12] 1591 	add	a,#0x20
      002703 F8               [12] 1592 	mov	r0,a
      002704 B6 10 00         [24] 1593 	cjne	@r0,#0x10,00195$
      002707                       1594 00195$:
      002707 D0 00            [24] 1595 	pop	ar0
      002709 50 03            [24] 1596 	jnc	00196$
      00270B 02 25 A8         [24] 1597 	ljmp	00124$
      00270E                       1598 00196$:
                                   1599 ;	walk.c:202: goto process;
      00270E 02 24 10         [24] 1600 	ljmp	00103$
                                   1601 ;	walk.c:204: term:
      002711                       1602 00119$:
                                   1603 ;	walk.c:205: return;
                                   1604 ;	walk.c:206: }
      002711 85 10 81         [24] 1605 	mov	sp,_bp
      002714 D0 10            [24] 1606 	pop	_bp
      002716 22               [24] 1607 	ret
                                   1608 ;------------------------------------------------------------
                                   1609 ;Allocation info for local variables in function 'main'
                                   1610 ;------------------------------------------------------------
                                   1611 ;initial                   Allocated to stack - _bp +5
                                   1612 ;N                         Allocated to stack - _bp +9
                                   1613 ;i                         Allocated to stack - _bp +11
                                   1614 ;j                         Allocated to registers r2 r6 
                                   1615 ;sloc0                     Allocated to stack - _bp +1
                                   1616 ;sloc1                     Allocated to stack - _bp +3
                                   1617 ;sloc2                     Allocated to stack - _bp +15
                                   1618 ;------------------------------------------------------------
                                   1619 ;	walk.c:208: void main(void) {
                                   1620 ;	-----------------------------------------
                                   1621 ;	 function main
                                   1622 ;	-----------------------------------------
      002717                       1623 _main:
      002717 C0 10            [24] 1624 	push	_bp
      002719 E5 81            [12] 1625 	mov	a,sp
      00271B F5 10            [12] 1626 	mov	_bp,a
      00271D 24 0C            [12] 1627 	add	a,#0x0c
      00271F F5 81            [12] 1628 	mov	sp,a
                                   1629 ;	walk.c:213: i0 = 1u;
      002721 78 11            [12] 1630 	mov	r0,#_i0
      002723 76 01            [12] 1631 	mov	@r0,#0x01
                                   1632 ;	walk.c:215: P1_7 = 1;
                                   1633 ;	assignBit
      002725 D2 97            [12] 1634 	setb	_P1_7
                                   1635 ;	walk.c:216: IT0 = 1;
                                   1636 ;	assignBit
      002727 D2 88            [12] 1637 	setb	_IT0
                                   1638 ;	walk.c:217: EX0 = 1;
                                   1639 ;	assignBit
      002729 D2 A8            [12] 1640 	setb	_EX0
                                   1641 ;	walk.c:218: EA = 1;
                                   1642 ;	assignBit
      00272B D2 AF            [12] 1643 	setb	_EA
                                   1644 ;	walk.c:220: srand(RND);
      00272D 90 80 00         [24] 1645 	mov	dptr,#_RND
      002730 E0               [24] 1646 	movx	a,@dptr
      002731 FE               [12] 1647 	mov	r6,a
      002732 A3               [24] 1648 	inc	dptr
      002733 E0               [24] 1649 	movx	a,@dptr
      002734 FF               [12] 1650 	mov	r7,a
      002735 8E 82            [24] 1651 	mov	dpl,r6
      002737 8F 83            [24] 1652 	mov	dph,r7
      002739 12 2D 37         [24] 1653 	lcall	_srand
                                   1654 ;	walk.c:221: qinit();
      00273C 12 2A F2         [24] 1655 	lcall	_qinit
                                   1656 ;	walk.c:223: puts("\033[2J\033[?25l");
      00273F 90 42 8D         [24] 1657 	mov	dptr,#___str_4
      002742 75 F0 80         [24] 1658 	mov	b,#0x80
      002745 12 2E 9C         [24] 1659 	lcall	_puts
                                   1660 ;	walk.c:225: while (i0) {
      002748 E5 10            [12] 1661 	mov	a,_bp
      00274A 24 05            [12] 1662 	add	a,#0x05
      00274C F9               [12] 1663 	mov	r1,a
      00274D FF               [12] 1664 	mov	r7,a
      00274E E5 10            [12] 1665 	mov	a,_bp
      002750 24 09            [12] 1666 	add	a,#0x09
      002752 F8               [12] 1667 	mov	r0,a
      002753 E4               [12] 1668 	clr	a
      002754 F6               [12] 1669 	mov	@r0,a
      002755 08               [12] 1670 	inc	r0
      002756 F6               [12] 1671 	mov	@r0,a
      002757                       1672 00108$:
      002757 78 11            [12] 1673 	mov	r0,#_i0
      002759 E6               [12] 1674 	mov	a,@r0
      00275A 70 03            [24] 1675 	jnz	00182$
      00275C 02 2A DE         [24] 1676 	ljmp	00110$
      00275F                       1677 00182$:
                                   1678 ;	walk.c:226: for (i = 0; i < ROWS; i++)
      00275F 7B 00            [12] 1679 	mov	r3,#0x00
      002761 7C 00            [12] 1680 	mov	r4,#0x00
      002763 A8 10            [24] 1681 	mov	r0,_bp
      002765 08               [12] 1682 	inc	r0
      002766 E4               [12] 1683 	clr	a
      002767 F6               [12] 1684 	mov	@r0,a
      002768 08               [12] 1685 	inc	r0
      002769 F6               [12] 1686 	mov	@r0,a
                                   1687 ;	walk.c:227: for (j = 0; j < COLS; j++)
      00276A                       1688 00125$:
      00276A A8 10            [24] 1689 	mov	r0,_bp
      00276C 08               [12] 1690 	inc	r0
      00276D C0 01            [24] 1691 	push	ar1
      00276F E5 10            [12] 1692 	mov	a,_bp
      002771 24 03            [12] 1693 	add	a,#0x03
      002773 F9               [12] 1694 	mov	r1,a
      002774 E6               [12] 1695 	mov	a,@r0
      002775 24 10            [12] 1696 	add	a,#_g
      002777 F7               [12] 1697 	mov	@r1,a
      002778 08               [12] 1698 	inc	r0
      002779 E6               [12] 1699 	mov	a,@r0
      00277A 34 43            [12] 1700 	addc	a,#(_g >> 8)
      00277C 09               [12] 1701 	inc	r1
      00277D F7               [12] 1702 	mov	@r1,a
      00277E D0 01            [24] 1703 	pop	ar1
      002780 7A 00            [12] 1704 	mov	r2,#0x00
      002782 7E 00            [12] 1705 	mov	r6,#0x00
      002784                       1706 00112$:
                                   1707 ;	walk.c:228: g[i][j] = 0x55u;
      002784 E5 10            [12] 1708 	mov	a,_bp
      002786 24 03            [12] 1709 	add	a,#0x03
      002788 F8               [12] 1710 	mov	r0,a
      002789 EA               [12] 1711 	mov	a,r2
      00278A 26               [12] 1712 	add	a,@r0
      00278B F5 82            [12] 1713 	mov	dpl,a
      00278D EE               [12] 1714 	mov	a,r6
      00278E 08               [12] 1715 	inc	r0
      00278F 36               [12] 1716 	addc	a,@r0
      002790 F5 83            [12] 1717 	mov	dph,a
      002792 74 55            [12] 1718 	mov	a,#0x55
      002794 F0               [24] 1719 	movx	@dptr,a
                                   1720 ;	walk.c:227: for (j = 0; j < COLS; j++)
      002795 0A               [12] 1721 	inc	r2
      002796 BA 00 01         [24] 1722 	cjne	r2,#0x00,00183$
      002799 0E               [12] 1723 	inc	r6
      00279A                       1724 00183$:
      00279A C3               [12] 1725 	clr	c
      00279B EA               [12] 1726 	mov	a,r2
      00279C 94 C0            [12] 1727 	subb	a,#0xc0
      00279E EE               [12] 1728 	mov	a,r6
      00279F 64 80            [12] 1729 	xrl	a,#0x80
      0027A1 94 80            [12] 1730 	subb	a,#0x80
      0027A3 40 DF            [24] 1731 	jc	00112$
                                   1732 ;	walk.c:226: for (i = 0; i < ROWS; i++)
      0027A5 A8 10            [24] 1733 	mov	r0,_bp
      0027A7 08               [12] 1734 	inc	r0
      0027A8 74 C0            [12] 1735 	mov	a,#0xc0
      0027AA 26               [12] 1736 	add	a,@r0
      0027AB F6               [12] 1737 	mov	@r0,a
      0027AC E4               [12] 1738 	clr	a
      0027AD 08               [12] 1739 	inc	r0
      0027AE 36               [12] 1740 	addc	a,@r0
      0027AF F6               [12] 1741 	mov	@r0,a
      0027B0 0B               [12] 1742 	inc	r3
      0027B1 BB 00 01         [24] 1743 	cjne	r3,#0x00,00185$
      0027B4 0C               [12] 1744 	inc	r4
      0027B5                       1745 00185$:
      0027B5 C3               [12] 1746 	clr	c
      0027B6 EB               [12] 1747 	mov	a,r3
      0027B7 94 30            [12] 1748 	subb	a,#0x30
      0027B9 EC               [12] 1749 	mov	a,r4
      0027BA 64 80            [12] 1750 	xrl	a,#0x80
      0027BC 94 80            [12] 1751 	subb	a,#0x80
      0027BE 40 AA            [24] 1752 	jc	00125$
                                   1753 ;	walk.c:230: initial.r = rand() % ROWS;
      0027C0 E5 10            [12] 1754 	mov	a,_bp
      0027C2 24 05            [12] 1755 	add	a,#0x05
      0027C4 F8               [12] 1756 	mov	r0,a
      0027C5 C0 07            [24] 1757 	push	ar7
      0027C7 C0 01            [24] 1758 	push	ar1
      0027C9 C0 00            [24] 1759 	push	ar0
      0027CB 12 2C 73         [24] 1760 	lcall	_rand
      0027CE AD 82            [24] 1761 	mov	r5,dpl
      0027D0 AE 83            [24] 1762 	mov	r6,dph
      0027D2 74 30            [12] 1763 	mov	a,#0x30
      0027D4 C0 E0            [24] 1764 	push	acc
      0027D6 E4               [12] 1765 	clr	a
      0027D7 C0 E0            [24] 1766 	push	acc
      0027D9 8D 82            [24] 1767 	mov	dpl,r5
      0027DB 8E 83            [24] 1768 	mov	dph,r6
      0027DD 12 2F 77         [24] 1769 	lcall	__modsint
      0027E0 AD 82            [24] 1770 	mov	r5,dpl
      0027E2 AE 83            [24] 1771 	mov	r6,dph
      0027E4 15 81            [12] 1772 	dec	sp
      0027E6 15 81            [12] 1773 	dec	sp
      0027E8 D0 00            [24] 1774 	pop	ar0
      0027EA D0 01            [24] 1775 	pop	ar1
      0027EC A6 05            [24] 1776 	mov	@r0,ar5
      0027EE 08               [12] 1777 	inc	r0
      0027EF A6 06            [24] 1778 	mov	@r0,ar6
      0027F1 18               [12] 1779 	dec	r0
                                   1780 ;	walk.c:231: initial.c = rand() % COLS;
      0027F2 74 02            [12] 1781 	mov	a,#0x02
      0027F4 29               [12] 1782 	add	a,r1
      0027F5 F8               [12] 1783 	mov	r0,a
      0027F6 C0 01            [24] 1784 	push	ar1
      0027F8 C0 00            [24] 1785 	push	ar0
      0027FA 12 2C 73         [24] 1786 	lcall	_rand
      0027FD AD 82            [24] 1787 	mov	r5,dpl
      0027FF AE 83            [24] 1788 	mov	r6,dph
      002801 74 C0            [12] 1789 	mov	a,#0xc0
      002803 C0 E0            [24] 1790 	push	acc
      002805 E4               [12] 1791 	clr	a
      002806 C0 E0            [24] 1792 	push	acc
      002808 8D 82            [24] 1793 	mov	dpl,r5
      00280A 8E 83            [24] 1794 	mov	dph,r6
      00280C 12 2F 77         [24] 1795 	lcall	__modsint
      00280F AD 82            [24] 1796 	mov	r5,dpl
      002811 AE 83            [24] 1797 	mov	r6,dph
      002813 15 81            [12] 1798 	dec	sp
      002815 15 81            [12] 1799 	dec	sp
      002817 D0 00            [24] 1800 	pop	ar0
      002819 A6 05            [24] 1801 	mov	@r0,ar5
      00281B 08               [12] 1802 	inc	r0
      00281C A6 06            [24] 1803 	mov	@r0,ar6
      00281E 18               [12] 1804 	dec	r0
                                   1805 ;	walk.c:233: puts("\033[2J\033[?25l");
      00281F 90 42 8D         [24] 1806 	mov	dptr,#___str_4
      002822 75 F0 80         [24] 1807 	mov	b,#0x80
      002825 C0 00            [24] 1808 	push	ar0
      002827 12 2E 9C         [24] 1809 	lcall	_puts
      00282A D0 00            [24] 1810 	pop	ar0
      00282C D0 01            [24] 1811 	pop	ar1
                                   1812 ;	walk.c:234: printf("\033[1;1H% 8u% 8d% 8d", N, initial.r, initial.c);
      00282E 86 05            [24] 1813 	mov	ar5,@r0
      002830 08               [12] 1814 	inc	r0
      002831 86 06            [24] 1815 	mov	ar6,@r0
      002833 18               [12] 1816 	dec	r0
      002834 87 03            [24] 1817 	mov	ar3,@r1
      002836 09               [12] 1818 	inc	r1
      002837 87 04            [24] 1819 	mov	ar4,@r1
      002839 19               [12] 1820 	dec	r1
      00283A C0 01            [24] 1821 	push	ar1
      00283C C0 05            [24] 1822 	push	ar5
      00283E C0 06            [24] 1823 	push	ar6
      002840 C0 03            [24] 1824 	push	ar3
      002842 C0 04            [24] 1825 	push	ar4
      002844 E5 10            [12] 1826 	mov	a,_bp
      002846 24 09            [12] 1827 	add	a,#0x09
      002848 F8               [12] 1828 	mov	r0,a
      002849 E6               [12] 1829 	mov	a,@r0
      00284A C0 E0            [24] 1830 	push	acc
      00284C 08               [12] 1831 	inc	r0
      00284D E6               [12] 1832 	mov	a,@r0
      00284E C0 E0            [24] 1833 	push	acc
      002850 74 98            [12] 1834 	mov	a,#___str_5
      002852 C0 E0            [24] 1835 	push	acc
      002854 74 42            [12] 1836 	mov	a,#(___str_5 >> 8)
      002856 C0 E0            [24] 1837 	push	acc
      002858 74 80            [12] 1838 	mov	a,#0x80
      00285A C0 E0            [24] 1839 	push	acc
      00285C 12 2F 22         [24] 1840 	lcall	_printf
      00285F E5 81            [12] 1841 	mov	a,sp
      002861 24 F7            [12] 1842 	add	a,#0xf7
      002863 F5 81            [12] 1843 	mov	sp,a
      002865 D0 01            [24] 1844 	pop	ar1
      002867 D0 07            [24] 1845 	pop	ar7
                                   1846 ;	walk.c:236: for (i = 0; i < REG; i++) {
      002869 E5 10            [12] 1847 	mov	a,_bp
      00286B 24 0B            [12] 1848 	add	a,#0x0b
      00286D F8               [12] 1849 	mov	r0,a
      00286E E4               [12] 1850 	clr	a
      00286F F6               [12] 1851 	mov	@r0,a
      002870 08               [12] 1852 	inc	r0
      002871 F6               [12] 1853 	mov	@r0,a
      002872                       1854 00116$:
                                   1855 ;	walk.c:237: neigh[i].r = neigh[REG + i].r * (1 + rand() % 32);
      002872 C0 07            [24] 1856 	push	ar7
      002874 E5 10            [12] 1857 	mov	a,_bp
      002876 24 0B            [12] 1858 	add	a,#0x0b
      002878 F8               [12] 1859 	mov	r0,a
      002879 E6               [12] 1860 	mov	a,@r0
      00287A 25 E0            [12] 1861 	add	a,acc
      00287C FB               [12] 1862 	mov	r3,a
      00287D 08               [12] 1863 	inc	r0
      00287E E6               [12] 1864 	mov	a,@r0
      00287F 33               [12] 1865 	rlc	a
      002880 FC               [12] 1866 	mov	r4,a
      002881 EB               [12] 1867 	mov	a,r3
      002882 2B               [12] 1868 	add	a,r3
      002883 FB               [12] 1869 	mov	r3,a
      002884 EC               [12] 1870 	mov	a,r4
      002885 33               [12] 1871 	rlc	a
      002886 FC               [12] 1872 	mov	r4,a
      002887 E5 10            [12] 1873 	mov	a,_bp
      002889 24 03            [12] 1874 	add	a,#0x03
      00288B F8               [12] 1875 	mov	r0,a
      00288C EB               [12] 1876 	mov	a,r3
      00288D 24 14            [12] 1877 	add	a,#_neigh
      00288F F6               [12] 1878 	mov	@r0,a
      002890 EC               [12] 1879 	mov	a,r4
      002891 34 F7            [12] 1880 	addc	a,#(_neigh >> 8)
      002893 08               [12] 1881 	inc	r0
      002894 F6               [12] 1882 	mov	@r0,a
      002895 E5 10            [12] 1883 	mov	a,_bp
      002897 24 0B            [12] 1884 	add	a,#0x0b
      002899 F8               [12] 1885 	mov	r0,a
      00289A 86 06            [24] 1886 	mov	ar6,@r0
      00289C 74 08            [12] 1887 	mov	a,#0x08
      00289E 2E               [12] 1888 	add	a,r6
      00289F FE               [12] 1889 	mov	r6,a
      0028A0 C2 D5            [12] 1890 	clr	F0
      0028A2 75 F0 04         [24] 1891 	mov	b,#0x04
      0028A5 EE               [12] 1892 	mov	a,r6
      0028A6 30 E7 04         [24] 1893 	jnb	acc.7,00187$
      0028A9 B2 D5            [12] 1894 	cpl	F0
      0028AB F4               [12] 1895 	cpl	a
      0028AC 04               [12] 1896 	inc	a
      0028AD                       1897 00187$:
      0028AD A4               [48] 1898 	mul	ab
      0028AE 30 D5 0A         [24] 1899 	jnb	F0,00188$
      0028B1 F4               [12] 1900 	cpl	a
      0028B2 24 01            [12] 1901 	add	a,#0x01
      0028B4 C5 F0            [12] 1902 	xch	a,b
      0028B6 F4               [12] 1903 	cpl	a
      0028B7 34 00            [12] 1904 	addc	a,#0x00
      0028B9 C5 F0            [12] 1905 	xch	a,b
      0028BB                       1906 00188$:
      0028BB FE               [12] 1907 	mov	r6,a
      0028BC AD F0            [24] 1908 	mov	r5,b
      0028BE 24 14            [12] 1909 	add	a,#_neigh
      0028C0 F5 82            [12] 1910 	mov	dpl,a
      0028C2 ED               [12] 1911 	mov	a,r5
      0028C3 34 F7            [12] 1912 	addc	a,#(_neigh >> 8)
      0028C5 F5 83            [12] 1913 	mov	dph,a
      0028C7 A8 10            [24] 1914 	mov	r0,_bp
      0028C9 08               [12] 1915 	inc	r0
      0028CA E0               [24] 1916 	movx	a,@dptr
      0028CB F6               [12] 1917 	mov	@r0,a
      0028CC A3               [24] 1918 	inc	dptr
      0028CD E0               [24] 1919 	movx	a,@dptr
      0028CE 08               [12] 1920 	inc	r0
      0028CF F6               [12] 1921 	mov	@r0,a
      0028D0 C0 06            [24] 1922 	push	ar6
      0028D2 C0 05            [24] 1923 	push	ar5
      0028D4 C0 04            [24] 1924 	push	ar4
      0028D6 C0 03            [24] 1925 	push	ar3
      0028D8 C0 01            [24] 1926 	push	ar1
      0028DA 12 2C 73         [24] 1927 	lcall	_rand
      0028DD AA 82            [24] 1928 	mov	r2,dpl
      0028DF AF 83            [24] 1929 	mov	r7,dph
      0028E1 74 20            [12] 1930 	mov	a,#0x20
      0028E3 C0 E0            [24] 1931 	push	acc
      0028E5 E4               [12] 1932 	clr	a
      0028E6 C0 E0            [24] 1933 	push	acc
      0028E8 8A 82            [24] 1934 	mov	dpl,r2
      0028EA 8F 83            [24] 1935 	mov	dph,r7
      0028EC 12 2F 77         [24] 1936 	lcall	__modsint
      0028EF AA 82            [24] 1937 	mov	r2,dpl
      0028F1 AF 83            [24] 1938 	mov	r7,dph
      0028F3 15 81            [12] 1939 	dec	sp
      0028F5 15 81            [12] 1940 	dec	sp
      0028F7 D0 01            [24] 1941 	pop	ar1
      0028F9 D0 03            [24] 1942 	pop	ar3
      0028FB D0 04            [24] 1943 	pop	ar4
      0028FD D0 05            [24] 1944 	pop	ar5
      0028FF D0 06            [24] 1945 	pop	ar6
      002901 0A               [12] 1946 	inc	r2
      002902 BA 00 01         [24] 1947 	cjne	r2,#0x00,00189$
      002905 0F               [12] 1948 	inc	r7
      002906                       1949 00189$:
      002906 C0 06            [24] 1950 	push	ar6
      002908 C0 05            [24] 1951 	push	ar5
      00290A C0 04            [24] 1952 	push	ar4
      00290C C0 03            [24] 1953 	push	ar3
      00290E C0 01            [24] 1954 	push	ar1
      002910 C0 02            [24] 1955 	push	ar2
      002912 C0 07            [24] 1956 	push	ar7
      002914 A8 10            [24] 1957 	mov	r0,_bp
      002916 08               [12] 1958 	inc	r0
      002917 86 82            [24] 1959 	mov	dpl,@r0
      002919 08               [12] 1960 	inc	r0
      00291A 86 83            [24] 1961 	mov	dph,@r0
      00291C 12 2D 6B         [24] 1962 	lcall	__mulint
      00291F AA 82            [24] 1963 	mov	r2,dpl
      002921 AF 83            [24] 1964 	mov	r7,dph
      002923 15 81            [12] 1965 	dec	sp
      002925 15 81            [12] 1966 	dec	sp
      002927 D0 01            [24] 1967 	pop	ar1
      002929 D0 03            [24] 1968 	pop	ar3
      00292B D0 04            [24] 1969 	pop	ar4
      00292D D0 05            [24] 1970 	pop	ar5
      00292F D0 06            [24] 1971 	pop	ar6
      002931 E5 10            [12] 1972 	mov	a,_bp
      002933 24 03            [12] 1973 	add	a,#0x03
      002935 F8               [12] 1974 	mov	r0,a
      002936 86 82            [24] 1975 	mov	dpl,@r0
      002938 08               [12] 1976 	inc	r0
      002939 86 83            [24] 1977 	mov	dph,@r0
      00293B EA               [12] 1978 	mov	a,r2
      00293C F0               [24] 1979 	movx	@dptr,a
      00293D EF               [12] 1980 	mov	a,r7
      00293E A3               [24] 1981 	inc	dptr
      00293F F0               [24] 1982 	movx	@dptr,a
                                   1983 ;	walk.c:238: neigh[i].c = neigh[REG + i].c * (1 + rand() % 32);
      002940 EB               [12] 1984 	mov	a,r3
      002941 24 14            [12] 1985 	add	a,#_neigh
      002943 FB               [12] 1986 	mov	r3,a
      002944 EC               [12] 1987 	mov	a,r4
      002945 34 F7            [12] 1988 	addc	a,#(_neigh >> 8)
      002947 FC               [12] 1989 	mov	r4,a
      002948 74 02            [12] 1990 	mov	a,#0x02
      00294A 2B               [12] 1991 	add	a,r3
      00294B FA               [12] 1992 	mov	r2,a
      00294C E4               [12] 1993 	clr	a
      00294D 3C               [12] 1994 	addc	a,r4
      00294E FF               [12] 1995 	mov	r7,a
      00294F EE               [12] 1996 	mov	a,r6
      002950 24 14            [12] 1997 	add	a,#_neigh
      002952 FE               [12] 1998 	mov	r6,a
      002953 ED               [12] 1999 	mov	a,r5
      002954 34 F7            [12] 2000 	addc	a,#(_neigh >> 8)
      002956 FD               [12] 2001 	mov	r5,a
      002957 8E 82            [24] 2002 	mov	dpl,r6
      002959 8D 83            [24] 2003 	mov	dph,r5
      00295B A3               [24] 2004 	inc	dptr
      00295C A3               [24] 2005 	inc	dptr
      00295D E5 10            [12] 2006 	mov	a,_bp
      00295F 24 03            [12] 2007 	add	a,#0x03
      002961 F8               [12] 2008 	mov	r0,a
      002962 E0               [24] 2009 	movx	a,@dptr
      002963 F6               [12] 2010 	mov	@r0,a
      002964 A3               [24] 2011 	inc	dptr
      002965 E0               [24] 2012 	movx	a,@dptr
      002966 08               [12] 2013 	inc	r0
      002967 F6               [12] 2014 	mov	@r0,a
      002968 C0 07            [24] 2015 	push	ar7
      00296A C0 04            [24] 2016 	push	ar4
      00296C C0 03            [24] 2017 	push	ar3
      00296E C0 02            [24] 2018 	push	ar2
      002970 C0 01            [24] 2019 	push	ar1
      002972 12 2C 73         [24] 2020 	lcall	_rand
      002975 AD 82            [24] 2021 	mov	r5,dpl
      002977 AE 83            [24] 2022 	mov	r6,dph
      002979 74 20            [12] 2023 	mov	a,#0x20
      00297B C0 E0            [24] 2024 	push	acc
      00297D E4               [12] 2025 	clr	a
      00297E C0 E0            [24] 2026 	push	acc
      002980 8D 82            [24] 2027 	mov	dpl,r5
      002982 8E 83            [24] 2028 	mov	dph,r6
      002984 12 2F 77         [24] 2029 	lcall	__modsint
      002987 AD 82            [24] 2030 	mov	r5,dpl
      002989 AE 83            [24] 2031 	mov	r6,dph
      00298B 15 81            [12] 2032 	dec	sp
      00298D 15 81            [12] 2033 	dec	sp
      00298F D0 01            [24] 2034 	pop	ar1
      002991 D0 02            [24] 2035 	pop	ar2
      002993 D0 03            [24] 2036 	pop	ar3
      002995 D0 04            [24] 2037 	pop	ar4
      002997 D0 07            [24] 2038 	pop	ar7
      002999 0D               [12] 2039 	inc	r5
      00299A BD 00 01         [24] 2040 	cjne	r5,#0x00,00190$
      00299D 0E               [12] 2041 	inc	r6
      00299E                       2042 00190$:
      00299E C0 07            [24] 2043 	push	ar7
      0029A0 C0 04            [24] 2044 	push	ar4
      0029A2 C0 03            [24] 2045 	push	ar3
      0029A4 C0 02            [24] 2046 	push	ar2
      0029A6 C0 01            [24] 2047 	push	ar1
      0029A8 C0 05            [24] 2048 	push	ar5
      0029AA C0 06            [24] 2049 	push	ar6
      0029AC E5 10            [12] 2050 	mov	a,_bp
      0029AE 24 03            [12] 2051 	add	a,#0x03
      0029B0 F8               [12] 2052 	mov	r0,a
      0029B1 86 82            [24] 2053 	mov	dpl,@r0
      0029B3 08               [12] 2054 	inc	r0
      0029B4 86 83            [24] 2055 	mov	dph,@r0
      0029B6 12 2D 6B         [24] 2056 	lcall	__mulint
      0029B9 AD 82            [24] 2057 	mov	r5,dpl
      0029BB AE 83            [24] 2058 	mov	r6,dph
      0029BD 15 81            [12] 2059 	dec	sp
      0029BF 15 81            [12] 2060 	dec	sp
      0029C1 D0 01            [24] 2061 	pop	ar1
      0029C3 D0 02            [24] 2062 	pop	ar2
      0029C5 D0 03            [24] 2063 	pop	ar3
      0029C7 D0 04            [24] 2064 	pop	ar4
      0029C9 D0 07            [24] 2065 	pop	ar7
      0029CB 8A 82            [24] 2066 	mov	dpl,r2
      0029CD 8F 83            [24] 2067 	mov	dph,r7
      0029CF ED               [12] 2068 	mov	a,r5
      0029D0 F0               [24] 2069 	movx	@dptr,a
      0029D1 EE               [12] 2070 	mov	a,r6
      0029D2 A3               [24] 2071 	inc	dptr
      0029D3 F0               [24] 2072 	movx	@dptr,a
                                   2073 ;	walk.c:239: printf("% 8d% 8d", neigh[i].r, neigh[i].c);
      0029D4 8B 82            [24] 2074 	mov	dpl,r3
      0029D6 8C 83            [24] 2075 	mov	dph,r4
      0029D8 E0               [24] 2076 	movx	a,@dptr
      0029D9 FB               [12] 2077 	mov	r3,a
      0029DA A3               [24] 2078 	inc	dptr
      0029DB E0               [24] 2079 	movx	a,@dptr
      0029DC FC               [12] 2080 	mov	r4,a
      0029DD C0 07            [24] 2081 	push	ar7
      0029DF C0 01            [24] 2082 	push	ar1
      0029E1 C0 05            [24] 2083 	push	ar5
      0029E3 C0 06            [24] 2084 	push	ar6
      0029E5 C0 03            [24] 2085 	push	ar3
      0029E7 C0 04            [24] 2086 	push	ar4
      0029E9 74 AB            [12] 2087 	mov	a,#___str_6
      0029EB C0 E0            [24] 2088 	push	acc
      0029ED 74 42            [12] 2089 	mov	a,#(___str_6 >> 8)
      0029EF C0 E0            [24] 2090 	push	acc
      0029F1 74 80            [12] 2091 	mov	a,#0x80
      0029F3 C0 E0            [24] 2092 	push	acc
      0029F5 12 2F 22         [24] 2093 	lcall	_printf
      0029F8 E5 81            [12] 2094 	mov	a,sp
      0029FA 24 F9            [12] 2095 	add	a,#0xf9
      0029FC F5 81            [12] 2096 	mov	sp,a
      0029FE D0 01            [24] 2097 	pop	ar1
      002A00 D0 07            [24] 2098 	pop	ar7
                                   2099 ;	walk.c:236: for (i = 0; i < REG; i++) {
      002A02 E5 10            [12] 2100 	mov	a,_bp
      002A04 24 0B            [12] 2101 	add	a,#0x0b
      002A06 F8               [12] 2102 	mov	r0,a
      002A07 06               [12] 2103 	inc	@r0
      002A08 B6 00 02         [24] 2104 	cjne	@r0,#0x00,00191$
      002A0B 08               [12] 2105 	inc	r0
      002A0C 06               [12] 2106 	inc	@r0
      002A0D                       2107 00191$:
      002A0D E5 10            [12] 2108 	mov	a,_bp
      002A0F 24 0B            [12] 2109 	add	a,#0x0b
      002A11 F8               [12] 2110 	mov	r0,a
      002A12 86 05            [24] 2111 	mov	ar5,@r0
      002A14 08               [12] 2112 	inc	r0
      002A15 86 06            [24] 2113 	mov	ar6,@r0
      002A17 C3               [12] 2114 	clr	c
      002A18 ED               [12] 2115 	mov	a,r5
      002A19 94 08            [12] 2116 	subb	a,#0x08
      002A1B EE               [12] 2117 	mov	a,r6
      002A1C 94 00            [12] 2118 	subb	a,#0x00
      002A1E D0 07            [24] 2119 	pop	ar7
      002A20 50 03            [24] 2120 	jnc	00192$
      002A22 02 28 72         [24] 2121 	ljmp	00116$
      002A25                       2122 00192$:
                                   2123 ;	walk.c:242: OE76 = OE76_0;
      002A25 78 12            [12] 2124 	mov	r0,#_OE76
      002A27 76 3F            [12] 2125 	mov	@r0,#0x3f
                                   2126 ;	walk.c:243: setOE(OE76_NC);
      002A29 75 82 00         [24] 2127 	mov	dpl,#0x00
      002A2C C0 07            [24] 2128 	push	ar7
      002A2E C0 01            [24] 2129 	push	ar1
      002A30 12 20 95         [24] 2130 	lcall	_setOE
      002A33 D0 01            [24] 2131 	pop	ar1
      002A35 D0 07            [24] 2132 	pop	ar7
                                   2133 ;	walk.c:245: walk(&initial);
      002A37 8F 04            [24] 2134 	mov	ar4,r7
      002A39 7D 00            [12] 2135 	mov	r5,#0x00
      002A3B 7E 40            [12] 2136 	mov	r6,#0x40
      002A3D 8C 82            [24] 2137 	mov	dpl,r4
      002A3F 8D 83            [24] 2138 	mov	dph,r5
      002A41 8E F0            [24] 2139 	mov	b,r6
      002A43 C0 07            [24] 2140 	push	ar7
      002A45 C0 01            [24] 2141 	push	ar1
      002A47 12 23 6E         [24] 2142 	lcall	_walk
      002A4A D0 01            [24] 2143 	pop	ar1
      002A4C D0 07            [24] 2144 	pop	ar7
                                   2145 ;	walk.c:247: for (i = 0; i < ROWS; i++)
      002A4E E5 10            [12] 2146 	mov	a,_bp
      002A50 24 0B            [12] 2147 	add	a,#0x0b
      002A52 F8               [12] 2148 	mov	r0,a
      002A53 E4               [12] 2149 	clr	a
      002A54 F6               [12] 2150 	mov	@r0,a
      002A55 08               [12] 2151 	inc	r0
      002A56 F6               [12] 2152 	mov	@r0,a
      002A57 7B 00            [12] 2153 	mov	r3,#0x00
      002A59 7C 00            [12] 2154 	mov	r4,#0x00
                                   2155 ;	walk.c:248: for (j = 0; j < COLS; j++)
      002A5B                       2156 00132$:
      002A5B E5 10            [12] 2157 	mov	a,_bp
      002A5D 24 03            [12] 2158 	add	a,#0x03
      002A5F F8               [12] 2159 	mov	r0,a
      002A60 EB               [12] 2160 	mov	a,r3
      002A61 24 10            [12] 2161 	add	a,#_g
      002A63 F6               [12] 2162 	mov	@r0,a
      002A64 EC               [12] 2163 	mov	a,r4
      002A65 34 43            [12] 2164 	addc	a,#(_g >> 8)
      002A67 08               [12] 2165 	inc	r0
      002A68 F6               [12] 2166 	mov	@r0,a
      002A69 7A 00            [12] 2167 	mov	r2,#0x00
      002A6B 7E 00            [12] 2168 	mov	r6,#0x00
      002A6D                       2169 00118$:
                                   2170 ;	walk.c:249: if (g[i][j] != 0xaau) bang();
      002A6D E5 10            [12] 2171 	mov	a,_bp
      002A6F 24 03            [12] 2172 	add	a,#0x03
      002A71 F8               [12] 2173 	mov	r0,a
      002A72 EA               [12] 2174 	mov	a,r2
      002A73 26               [12] 2175 	add	a,@r0
      002A74 F5 82            [12] 2176 	mov	dpl,a
      002A76 EE               [12] 2177 	mov	a,r6
      002A77 08               [12] 2178 	inc	r0
      002A78 36               [12] 2179 	addc	a,@r0
      002A79 F5 83            [12] 2180 	mov	dph,a
      002A7B E0               [24] 2181 	movx	a,@dptr
      002A7C FD               [12] 2182 	mov	r5,a
      002A7D BD AA 02         [24] 2183 	cjne	r5,#0xaa,00193$
      002A80 80 1B            [24] 2184 	sjmp	00119$
      002A82                       2185 00193$:
      002A82 C0 07            [24] 2186 	push	ar7
      002A84 C0 06            [24] 2187 	push	ar6
      002A86 C0 04            [24] 2188 	push	ar4
      002A88 C0 03            [24] 2189 	push	ar3
      002A8A C0 02            [24] 2190 	push	ar2
      002A8C C0 01            [24] 2191 	push	ar1
      002A8E 12 20 88         [24] 2192 	lcall	_bang
      002A91 D0 01            [24] 2193 	pop	ar1
      002A93 D0 02            [24] 2194 	pop	ar2
      002A95 D0 03            [24] 2195 	pop	ar3
      002A97 D0 04            [24] 2196 	pop	ar4
      002A99 D0 06            [24] 2197 	pop	ar6
      002A9B D0 07            [24] 2198 	pop	ar7
      002A9D                       2199 00119$:
                                   2200 ;	walk.c:248: for (j = 0; j < COLS; j++)
      002A9D 0A               [12] 2201 	inc	r2
      002A9E BA 00 01         [24] 2202 	cjne	r2,#0x00,00194$
      002AA1 0E               [12] 2203 	inc	r6
      002AA2                       2204 00194$:
      002AA2 C3               [12] 2205 	clr	c
      002AA3 EA               [12] 2206 	mov	a,r2
      002AA4 94 C0            [12] 2207 	subb	a,#0xc0
      002AA6 EE               [12] 2208 	mov	a,r6
      002AA7 64 80            [12] 2209 	xrl	a,#0x80
      002AA9 94 80            [12] 2210 	subb	a,#0x80
      002AAB 40 C0            [24] 2211 	jc	00118$
                                   2212 ;	walk.c:247: for (i = 0; i < ROWS; i++)
      002AAD 74 C0            [12] 2213 	mov	a,#0xc0
      002AAF 2B               [12] 2214 	add	a,r3
      002AB0 FB               [12] 2215 	mov	r3,a
      002AB1 E4               [12] 2216 	clr	a
      002AB2 3C               [12] 2217 	addc	a,r4
      002AB3 FC               [12] 2218 	mov	r4,a
      002AB4 E5 10            [12] 2219 	mov	a,_bp
      002AB6 24 0B            [12] 2220 	add	a,#0x0b
      002AB8 F8               [12] 2221 	mov	r0,a
      002AB9 06               [12] 2222 	inc	@r0
      002ABA B6 00 02         [24] 2223 	cjne	@r0,#0x00,00196$
      002ABD 08               [12] 2224 	inc	r0
      002ABE 06               [12] 2225 	inc	@r0
      002ABF                       2226 00196$:
      002ABF E5 10            [12] 2227 	mov	a,_bp
      002AC1 24 0B            [12] 2228 	add	a,#0x0b
      002AC3 F8               [12] 2229 	mov	r0,a
      002AC4 C3               [12] 2230 	clr	c
      002AC5 E6               [12] 2231 	mov	a,@r0
      002AC6 94 30            [12] 2232 	subb	a,#0x30
      002AC8 08               [12] 2233 	inc	r0
      002AC9 E6               [12] 2234 	mov	a,@r0
      002ACA 64 80            [12] 2235 	xrl	a,#0x80
      002ACC 94 80            [12] 2236 	subb	a,#0x80
      002ACE 40 8B            [24] 2237 	jc	00132$
                                   2238 ;	walk.c:251: N++;
      002AD0 E5 10            [12] 2239 	mov	a,_bp
      002AD2 24 09            [12] 2240 	add	a,#0x09
      002AD4 F8               [12] 2241 	mov	r0,a
      002AD5 06               [12] 2242 	inc	@r0
      002AD6 B6 00 02         [24] 2243 	cjne	@r0,#0x00,00198$
      002AD9 08               [12] 2244 	inc	r0
      002ADA 06               [12] 2245 	inc	@r0
      002ADB                       2246 00198$:
      002ADB 02 27 57         [24] 2247 	ljmp	00108$
      002ADE                       2248 00110$:
                                   2249 ;	walk.c:254: EA = 0;
                                   2250 ;	assignBit
      002ADE C2 AF            [12] 2251 	clr	_EA
                                   2252 ;	walk.c:256: puts("\033[2J\033[?25h");
      002AE0 90 42 B4         [24] 2253 	mov	dptr,#___str_7
      002AE3 75 F0 80         [24] 2254 	mov	b,#0x80
      002AE6 12 2E 9C         [24] 2255 	lcall	_puts
                                   2256 ;	walk.c:38: PCON |= 2;
      002AE9 43 87 02         [24] 2257 	orl	_PCON,#0x02
                                   2258 ;	walk.c:260: return;
                                   2259 ;	walk.c:261: }
      002AEC 85 10 81         [24] 2260 	mov	sp,_bp
      002AEF D0 10            [24] 2261 	pop	_bp
      002AF1 22               [24] 2262 	ret
                                   2263 ;------------------------------------------------------------
                                   2264 ;Allocation info for local variables in function 'qinit'
                                   2265 ;------------------------------------------------------------
                                   2266 ;	walk.c:263: static void qinit(void) {
                                   2267 ;	-----------------------------------------
                                   2268 ;	 function qinit
                                   2269 ;	-----------------------------------------
      002AF2                       2270 _qinit:
                                   2271 ;	walk.c:264: hp = tp = 0;
      002AF2 90 F7 12         [24] 2272 	mov	dptr,#_tp
      002AF5 E4               [12] 2273 	clr	a
      002AF6 F0               [24] 2274 	movx	@dptr,a
      002AF7 A3               [24] 2275 	inc	dptr
      002AF8 F0               [24] 2276 	movx	@dptr,a
      002AF9 90 F7 10         [24] 2277 	mov	dptr,#_hp
      002AFC F0               [24] 2278 	movx	@dptr,a
      002AFD A3               [24] 2279 	inc	dptr
      002AFE F0               [24] 2280 	movx	@dptr,a
                                   2281 ;	walk.c:265: return;
                                   2282 ;	walk.c:266: }
      002AFF 22               [24] 2283 	ret
                                   2284 ;------------------------------------------------------------
                                   2285 ;Allocation info for local variables in function 'qadd'
                                   2286 ;------------------------------------------------------------
                                   2287 ;t                         Allocated to registers r7 r5 r6 
                                   2288 ;sloc0                     Allocated to stack - _bp +1
                                   2289 ;sloc1                     Allocated to stack - _bp +3
                                   2290 ;sloc2                     Allocated to stack - _bp +5
                                   2291 ;sloc3                     Allocated to stack - _bp +10
                                   2292 ;------------------------------------------------------------
                                   2293 ;	walk.c:268: static uint8_t qadd(struct node *t) {
                                   2294 ;	-----------------------------------------
                                   2295 ;	 function qadd
                                   2296 ;	-----------------------------------------
      002B00                       2297 _qadd:
      002B00 C0 10            [24] 2298 	push	_bp
      002B02 E5 81            [12] 2299 	mov	a,sp
      002B04 F5 10            [12] 2300 	mov	_bp,a
      002B06 24 06            [12] 2301 	add	a,#0x06
      002B08 F5 81            [12] 2302 	mov	sp,a
      002B0A AF 82            [24] 2303 	mov	r7,dpl
      002B0C AD 83            [24] 2304 	mov	r5,dph
      002B0E AE F0            [24] 2305 	mov	r6,b
                                   2306 ;	walk.c:269: if (((hp + 1) % QMAX) == tp) return 0u;
      002B10 90 F7 10         [24] 2307 	mov	dptr,#_hp
      002B13 E0               [24] 2308 	movx	a,@dptr
      002B14 FB               [12] 2309 	mov	r3,a
      002B15 A3               [24] 2310 	inc	dptr
      002B16 E0               [24] 2311 	movx	a,@dptr
      002B17 FC               [12] 2312 	mov	r4,a
      002B18 A8 10            [24] 2313 	mov	r0,_bp
      002B1A 08               [12] 2314 	inc	r0
      002B1B 74 01            [12] 2315 	mov	a,#0x01
      002B1D 2B               [12] 2316 	add	a,r3
      002B1E F6               [12] 2317 	mov	@r0,a
      002B1F E4               [12] 2318 	clr	a
      002B20 3C               [12] 2319 	addc	a,r4
      002B21 08               [12] 2320 	inc	r0
      002B22 F6               [12] 2321 	mov	@r0,a
      002B23 C0 07            [24] 2322 	push	ar7
      002B25 C0 06            [24] 2323 	push	ar6
      002B27 C0 05            [24] 2324 	push	ar5
      002B29 C0 04            [24] 2325 	push	ar4
      002B2B C0 03            [24] 2326 	push	ar3
      002B2D E4               [12] 2327 	clr	a
      002B2E C0 E0            [24] 2328 	push	acc
      002B30 74 24            [12] 2329 	mov	a,#0x24
      002B32 C0 E0            [24] 2330 	push	acc
      002B34 A8 10            [24] 2331 	mov	r0,_bp
      002B36 08               [12] 2332 	inc	r0
      002B37 86 82            [24] 2333 	mov	dpl,@r0
      002B39 08               [12] 2334 	inc	r0
      002B3A 86 83            [24] 2335 	mov	dph,@r0
      002B3C 12 2F 77         [24] 2336 	lcall	__modsint
      002B3F A8 10            [24] 2337 	mov	r0,_bp
      002B41 08               [12] 2338 	inc	r0
      002B42 08               [12] 2339 	inc	r0
      002B43 08               [12] 2340 	inc	r0
      002B44 A6 82            [24] 2341 	mov	@r0,dpl
      002B46 08               [12] 2342 	inc	r0
      002B47 A6 83            [24] 2343 	mov	@r0,dph
      002B49 15 81            [12] 2344 	dec	sp
      002B4B 15 81            [12] 2345 	dec	sp
      002B4D D0 03            [24] 2346 	pop	ar3
      002B4F D0 04            [24] 2347 	pop	ar4
      002B51 D0 05            [24] 2348 	pop	ar5
      002B53 D0 06            [24] 2349 	pop	ar6
      002B55 D0 07            [24] 2350 	pop	ar7
      002B57 90 F7 12         [24] 2351 	mov	dptr,#_tp
      002B5A E5 10            [12] 2352 	mov	a,_bp
      002B5C 24 05            [12] 2353 	add	a,#0x05
      002B5E F8               [12] 2354 	mov	r0,a
      002B5F E0               [24] 2355 	movx	a,@dptr
      002B60 F6               [12] 2356 	mov	@r0,a
      002B61 A3               [24] 2357 	inc	dptr
      002B62 E0               [24] 2358 	movx	a,@dptr
      002B63 08               [12] 2359 	inc	r0
      002B64 F6               [12] 2360 	mov	@r0,a
      002B65 E5 10            [12] 2361 	mov	a,_bp
      002B67 24 03            [12] 2362 	add	a,#0x03
      002B69 F8               [12] 2363 	mov	r0,a
      002B6A E5 10            [12] 2364 	mov	a,_bp
      002B6C 24 05            [12] 2365 	add	a,#0x05
      002B6E F9               [12] 2366 	mov	r1,a
      002B6F 86 F0            [24] 2367 	mov	b,@r0
      002B71 E7               [12] 2368 	mov	a,@r1
      002B72 B5 F0 0A         [24] 2369 	cjne	a,b,00109$
      002B75 08               [12] 2370 	inc	r0
      002B76 86 F0            [24] 2371 	mov	b,@r0
      002B78 09               [12] 2372 	inc	r1
      002B79 E7               [12] 2373 	mov	a,@r1
      002B7A B5 F0 02         [24] 2374 	cjne	a,b,00109$
      002B7D 80 02            [24] 2375 	sjmp	00110$
      002B7F                       2376 00109$:
      002B7F 80 05            [24] 2377 	sjmp	00102$
      002B81                       2378 00110$:
      002B81 75 82 00         [24] 2379 	mov	dpl,#0x00
      002B84 80 64            [24] 2380 	sjmp	00103$
      002B86                       2381 00102$:
                                   2382 ;	walk.c:270: queue[hp] = *t;
      002B86 8F 02            [24] 2383 	mov	ar2,r7
      002B88 8E 07            [24] 2384 	mov	ar7,r6
      002B8A EB               [12] 2385 	mov	a,r3
      002B8B 2B               [12] 2386 	add	a,r3
      002B8C FB               [12] 2387 	mov	r3,a
      002B8D EC               [12] 2388 	mov	a,r4
      002B8E 33               [12] 2389 	rlc	a
      002B8F FC               [12] 2390 	mov	r4,a
      002B90 EB               [12] 2391 	mov	a,r3
      002B91 2B               [12] 2392 	add	a,r3
      002B92 FB               [12] 2393 	mov	r3,a
      002B93 EC               [12] 2394 	mov	a,r4
      002B94 33               [12] 2395 	rlc	a
      002B95 FC               [12] 2396 	mov	r4,a
      002B96 EB               [12] 2397 	mov	a,r3
      002B97 24 10            [12] 2398 	add	a,#_queue
      002B99 FB               [12] 2399 	mov	r3,a
      002B9A EC               [12] 2400 	mov	a,r4
      002B9B 34 67            [12] 2401 	addc	a,#(_queue >> 8)
      002B9D FC               [12] 2402 	mov	r4,a
      002B9E 7E 00            [12] 2403 	mov	r6,#0x00
      002BA0 74 04            [12] 2404 	mov	a,#0x04
      002BA2 C0 E0            [24] 2405 	push	acc
      002BA4 E4               [12] 2406 	clr	a
      002BA5 C0 E0            [24] 2407 	push	acc
      002BA7 C0 02            [24] 2408 	push	ar2
      002BA9 C0 05            [24] 2409 	push	ar5
      002BAB C0 07            [24] 2410 	push	ar7
      002BAD 8B 82            [24] 2411 	mov	dpl,r3
      002BAF 8C 83            [24] 2412 	mov	dph,r4
      002BB1 8E F0            [24] 2413 	mov	b,r6
      002BB3 12 2E 09         [24] 2414 	lcall	___memcpy
      002BB6 E5 81            [12] 2415 	mov	a,sp
      002BB8 24 FB            [12] 2416 	add	a,#0xfb
      002BBA F5 81            [12] 2417 	mov	sp,a
                                   2418 ;	walk.c:271: hp = (hp + 1) % QMAX;
      002BBC 90 F7 10         [24] 2419 	mov	dptr,#_hp
      002BBF E0               [24] 2420 	movx	a,@dptr
      002BC0 FD               [12] 2421 	mov	r5,a
      002BC1 A3               [24] 2422 	inc	dptr
      002BC2 E0               [24] 2423 	movx	a,@dptr
      002BC3 FE               [12] 2424 	mov	r6,a
      002BC4 0D               [12] 2425 	inc	r5
      002BC5 BD 00 01         [24] 2426 	cjne	r5,#0x00,00111$
      002BC8 0E               [12] 2427 	inc	r6
      002BC9                       2428 00111$:
      002BC9 E4               [12] 2429 	clr	a
      002BCA C0 E0            [24] 2430 	push	acc
      002BCC 74 24            [12] 2431 	mov	a,#0x24
      002BCE C0 E0            [24] 2432 	push	acc
      002BD0 8D 82            [24] 2433 	mov	dpl,r5
      002BD2 8E 83            [24] 2434 	mov	dph,r6
      002BD4 12 2F 77         [24] 2435 	lcall	__modsint
      002BD7 AD 82            [24] 2436 	mov	r5,dpl
      002BD9 AE 83            [24] 2437 	mov	r6,dph
      002BDB 15 81            [12] 2438 	dec	sp
      002BDD 15 81            [12] 2439 	dec	sp
      002BDF 90 F7 10         [24] 2440 	mov	dptr,#_hp
      002BE2 ED               [12] 2441 	mov	a,r5
      002BE3 F0               [24] 2442 	movx	@dptr,a
      002BE4 EE               [12] 2443 	mov	a,r6
      002BE5 A3               [24] 2444 	inc	dptr
      002BE6 F0               [24] 2445 	movx	@dptr,a
                                   2446 ;	walk.c:272: return 1u;
      002BE7 75 82 01         [24] 2447 	mov	dpl,#0x01
      002BEA                       2448 00103$:
                                   2449 ;	walk.c:273: }
      002BEA 85 10 81         [24] 2450 	mov	sp,_bp
      002BED D0 10            [24] 2451 	pop	_bp
      002BEF 22               [24] 2452 	ret
                                   2453 ;------------------------------------------------------------
                                   2454 ;Allocation info for local variables in function 'qget'
                                   2455 ;------------------------------------------------------------
                                   2456 ;t                         Allocated to registers r5 r6 r7 
                                   2457 ;------------------------------------------------------------
                                   2458 ;	walk.c:275: static uint8_t qget(struct node *t) {
                                   2459 ;	-----------------------------------------
                                   2460 ;	 function qget
                                   2461 ;	-----------------------------------------
      002BF0                       2462 _qget:
      002BF0 AD 82            [24] 2463 	mov	r5,dpl
      002BF2 AE 83            [24] 2464 	mov	r6,dph
      002BF4 AF F0            [24] 2465 	mov	r7,b
                                   2466 ;	walk.c:276: if (hp == tp) return 0u;
      002BF6 90 F7 10         [24] 2467 	mov	dptr,#_hp
      002BF9 E0               [24] 2468 	movx	a,@dptr
      002BFA FB               [12] 2469 	mov	r3,a
      002BFB A3               [24] 2470 	inc	dptr
      002BFC E0               [24] 2471 	movx	a,@dptr
      002BFD FC               [12] 2472 	mov	r4,a
      002BFE 90 F7 12         [24] 2473 	mov	dptr,#_tp
      002C01 E0               [24] 2474 	movx	a,@dptr
      002C02 F9               [12] 2475 	mov	r1,a
      002C03 A3               [24] 2476 	inc	dptr
      002C04 E0               [24] 2477 	movx	a,@dptr
      002C05 FA               [12] 2478 	mov	r2,a
      002C06 EB               [12] 2479 	mov	a,r3
      002C07 B5 01 08         [24] 2480 	cjne	a,ar1,00102$
      002C0A EC               [12] 2481 	mov	a,r4
      002C0B B5 02 04         [24] 2482 	cjne	a,ar2,00102$
      002C0E 75 82 00         [24] 2483 	mov	dpl,#0x00
      002C11 22               [24] 2484 	ret
      002C12                       2485 00102$:
                                   2486 ;	walk.c:277: *t = queue[tp];
      002C12 E9               [12] 2487 	mov	a,r1
      002C13 29               [12] 2488 	add	a,r1
      002C14 F9               [12] 2489 	mov	r1,a
      002C15 EA               [12] 2490 	mov	a,r2
      002C16 33               [12] 2491 	rlc	a
      002C17 FA               [12] 2492 	mov	r2,a
      002C18 E9               [12] 2493 	mov	a,r1
      002C19 29               [12] 2494 	add	a,r1
      002C1A F9               [12] 2495 	mov	r1,a
      002C1B EA               [12] 2496 	mov	a,r2
      002C1C 33               [12] 2497 	rlc	a
      002C1D FA               [12] 2498 	mov	r2,a
      002C1E E9               [12] 2499 	mov	a,r1
      002C1F 24 10            [12] 2500 	add	a,#_queue
      002C21 F9               [12] 2501 	mov	r1,a
      002C22 EA               [12] 2502 	mov	a,r2
      002C23 34 67            [12] 2503 	addc	a,#(_queue >> 8)
      002C25 FA               [12] 2504 	mov	r2,a
      002C26 7C 00            [12] 2505 	mov	r4,#0x00
      002C28 74 04            [12] 2506 	mov	a,#0x04
      002C2A C0 E0            [24] 2507 	push	acc
      002C2C E4               [12] 2508 	clr	a
      002C2D C0 E0            [24] 2509 	push	acc
      002C2F C0 01            [24] 2510 	push	ar1
      002C31 C0 02            [24] 2511 	push	ar2
      002C33 C0 04            [24] 2512 	push	ar4
      002C35 8D 82            [24] 2513 	mov	dpl,r5
      002C37 8E 83            [24] 2514 	mov	dph,r6
      002C39 8F F0            [24] 2515 	mov	b,r7
      002C3B 12 2E 09         [24] 2516 	lcall	___memcpy
      002C3E E5 81            [12] 2517 	mov	a,sp
      002C40 24 FB            [12] 2518 	add	a,#0xfb
      002C42 F5 81            [12] 2519 	mov	sp,a
                                   2520 ;	walk.c:278: tp = (tp + 1) % QMAX;
      002C44 90 F7 12         [24] 2521 	mov	dptr,#_tp
      002C47 E0               [24] 2522 	movx	a,@dptr
      002C48 FE               [12] 2523 	mov	r6,a
      002C49 A3               [24] 2524 	inc	dptr
      002C4A E0               [24] 2525 	movx	a,@dptr
      002C4B FF               [12] 2526 	mov	r7,a
      002C4C 0E               [12] 2527 	inc	r6
      002C4D BE 00 01         [24] 2528 	cjne	r6,#0x00,00111$
      002C50 0F               [12] 2529 	inc	r7
      002C51                       2530 00111$:
      002C51 E4               [12] 2531 	clr	a
      002C52 C0 E0            [24] 2532 	push	acc
      002C54 74 24            [12] 2533 	mov	a,#0x24
      002C56 C0 E0            [24] 2534 	push	acc
      002C58 8E 82            [24] 2535 	mov	dpl,r6
      002C5A 8F 83            [24] 2536 	mov	dph,r7
      002C5C 12 2F 77         [24] 2537 	lcall	__modsint
      002C5F AE 82            [24] 2538 	mov	r6,dpl
      002C61 AF 83            [24] 2539 	mov	r7,dph
      002C63 15 81            [12] 2540 	dec	sp
      002C65 15 81            [12] 2541 	dec	sp
      002C67 90 F7 12         [24] 2542 	mov	dptr,#_tp
      002C6A EE               [12] 2543 	mov	a,r6
      002C6B F0               [24] 2544 	movx	@dptr,a
      002C6C EF               [12] 2545 	mov	a,r7
      002C6D A3               [24] 2546 	inc	dptr
      002C6E F0               [24] 2547 	movx	@dptr,a
                                   2548 ;	walk.c:279: return 1u;
      002C6F 75 82 01         [24] 2549 	mov	dpl,#0x01
                                   2550 ;	walk.c:280: }
      002C72 22               [24] 2551 	ret
                                   2552 	.area CSEG    (CODE)
                                   2553 	.area CONST   (CODE)
                                   2554 	.area CONST   (CODE)
      004255                       2555 ___str_0:
      004255 4D 65 6D 6F 72 79 20  2556 	.ascii "Memory error"
             65 72 72 6F 72
      004261 00                    2557 	.db 0x00
                                   2558 	.area CSEG    (CODE)
                                   2559 	.area CONST   (CODE)
      004262                       2560 ___str_1:
      004262 1B                    2561 	.db 0x1b
      004263 5B 32 3B 31 48 25 20  2562 	.ascii "[2;1H% 8d% 8d% 8d% 8d"
             38 64 25 20 38 64 25
             20 38 64 25 20 38 64
      004278 00                    2563 	.db 0x00
                                   2564 	.area CSEG    (CODE)
                                   2565 	.area CONST   (CODE)
      004279                       2566 ___str_2:
      004279 1B                    2567 	.db 0x1b
      00427A 5B 25 64 3B 25 64 48  2568 	.ascii "[%d;%dH."
             2E
      004282 00                    2569 	.db 0x00
                                   2570 	.area CSEG    (CODE)
                                   2571 	.area CONST   (CODE)
      004283                       2572 ___str_3:
      004283 1B                    2573 	.db 0x1b
      004284 5B 25 64 3B 25 64 48  2574 	.ascii "[%d;%dHo"
             6F
      00428C 00                    2575 	.db 0x00
                                   2576 	.area CSEG    (CODE)
                                   2577 	.area CONST   (CODE)
      00428D                       2578 ___str_4:
      00428D 1B                    2579 	.db 0x1b
      00428E 5B 32 4A              2580 	.ascii "[2J"
      004291 1B                    2581 	.db 0x1b
      004292 5B 3F 32 35 6C        2582 	.ascii "[?25l"
      004297 00                    2583 	.db 0x00
                                   2584 	.area CSEG    (CODE)
                                   2585 	.area CONST   (CODE)
      004298                       2586 ___str_5:
      004298 1B                    2587 	.db 0x1b
      004299 5B 31 3B 31 48 25 20  2588 	.ascii "[1;1H% 8u% 8d% 8d"
             38 75 25 20 38 64 25
             20 38 64
      0042AA 00                    2589 	.db 0x00
                                   2590 	.area CSEG    (CODE)
                                   2591 	.area CONST   (CODE)
      0042AB                       2592 ___str_6:
      0042AB 25 20 38 64 25 20 38  2593 	.ascii "% 8d% 8d"
             64
      0042B3 00                    2594 	.db 0x00
                                   2595 	.area CSEG    (CODE)
                                   2596 	.area CONST   (CODE)
      0042B4                       2597 ___str_7:
      0042B4 1B                    2598 	.db 0x1b
      0042B5 5B 32 4A              2599 	.ascii "[2J"
      0042B8 1B                    2600 	.db 0x1b
      0042B9 5B 3F 32 35 68        2601 	.ascii "[?25h"
      0042BE 00                    2602 	.db 0x00
                                   2603 	.area CSEG    (CODE)
                                   2604 	.area XINIT   (CODE)
      0042CA                       2605 __xinit__neigh:
      0042CA FF FF                 2606 	.byte #0xff, #0xff	; -1
      0042CC 01 00                 2607 	.byte #0x01, #0x00	;  1
      0042CE FF FF                 2608 	.byte #0xff, #0xff	; -1
      0042D0 FF FF                 2609 	.byte #0xff, #0xff	; -1
      0042D2 01 00                 2610 	.byte #0x01, #0x00	;  1
      0042D4 FF FF                 2611 	.byte #0xff, #0xff	; -1
      0042D6 01 00                 2612 	.byte #0x01, #0x00	;  1
      0042D8 01 00                 2613 	.byte #0x01, #0x00	;  1
      0042DA FF FF                 2614 	.byte #0xff, #0xff	; -1
      0042DC 00 00                 2615 	.byte #0x00, #0x00	;  0
      0042DE 00 00                 2616 	.byte #0x00, #0x00	;  0
      0042E0 FF FF                 2617 	.byte #0xff, #0xff	; -1
      0042E2 01 00                 2618 	.byte #0x01, #0x00	;  1
      0042E4 00 00                 2619 	.byte #0x00, #0x00	;  0
      0042E6 00 00                 2620 	.byte #0x00, #0x00	;  0
      0042E8 01 00                 2621 	.byte #0x01, #0x00	;  1
      0042EA FF FF                 2622 	.byte #0xff, #0xff	; -1
      0042EC 01 00                 2623 	.byte #0x01, #0x00	;  1
      0042EE FF FF                 2624 	.byte #0xff, #0xff	; -1
      0042F0 FF FF                 2625 	.byte #0xff, #0xff	; -1
      0042F2 01 00                 2626 	.byte #0x01, #0x00	;  1
      0042F4 FF FF                 2627 	.byte #0xff, #0xff	; -1
      0042F6 01 00                 2628 	.byte #0x01, #0x00	;  1
      0042F8 01 00                 2629 	.byte #0x01, #0x00	;  1
      0042FA FF FF                 2630 	.byte #0xff, #0xff	; -1
      0042FC 00 00                 2631 	.byte #0x00, #0x00	;  0
      0042FE 00 00                 2632 	.byte #0x00, #0x00	;  0
      004300 FF FF                 2633 	.byte #0xff, #0xff	; -1
      004302 01 00                 2634 	.byte #0x01, #0x00	;  1
      004304 00 00                 2635 	.byte #0x00, #0x00	;  0
      004306 00 00                 2636 	.byte #0x00, #0x00	;  0
      004308 01 00                 2637 	.byte #0x01, #0x00	;  1
                                   2638 	.area CABS    (ABS,CODE)
