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
      002006 02 26 9A         [24]  377 	ljmp	_main
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
                                    444 ;Allocation info for local variables in function 'reset'
                                    445 ;------------------------------------------------------------
                                    446 ;	walk.c:34: static void reset(void) __naked {
                                    447 ;	-----------------------------------------
                                    448 ;	 function reset
                                    449 ;	-----------------------------------------
      00207F                        450 _reset:
                                    451 ;	naked function: no prologue.
                                    452 ;	walk.c:37: __endasm;
      00207F 43 87 02         [24]  453 	orl	pcon, #2
                                    454 ;	walk.c:38: }
                                    455 ;	naked function: no epilogue.
                                    456 ;------------------------------------------------------------
                                    457 ;Allocation info for local variables in function 'bang'
                                    458 ;------------------------------------------------------------
                                    459 ;	walk.c:40: static void bang(void) {
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
                                    472 ;	walk.c:41: (void)puts("Memory error");
      002082 90 41 26         [24]  473 	mov	dptr,#___str_0
      002085 75 F0 80         [24]  474 	mov	b,#0x80
      002088 12 2D 6D         [24]  475 	lcall	_puts
                                    476 ;	walk.c:42: reset();
                                    477 ;	walk.c:44: return;
                                    478 ;	walk.c:45: }
      00208B 02 20 7F         [24]  479 	ljmp	_reset
                                    480 ;------------------------------------------------------------
                                    481 ;Allocation info for local variables in function 'flashOE'
                                    482 ;------------------------------------------------------------
                                    483 ;mask                      Allocated to registers r7 
                                    484 ;------------------------------------------------------------
                                    485 ;	walk.c:87: static void flashOE(uint8_t mask) {
                                    486 ;	-----------------------------------------
                                    487 ;	 function flashOE
                                    488 ;	-----------------------------------------
      00208E                        489 _flashOE:
      00208E AF 82            [24]  490 	mov	r7,dpl
                                    491 ;	walk.c:88: P1_7 = 0;
                                    492 ;	assignBit
      002090 C2 97            [12]  493 	clr	_P1_7
                                    494 ;	walk.c:89: OEreg = OE76;
      002092 78 12            [12]  495 	mov	r0,#_OE76
      002094 90 F0 06         [24]  496 	mov	dptr,#_OEreg
      002097 E6               [12]  497 	mov	a,@r0
      002098 F0               [24]  498 	movx	@dptr,a
                                    499 ;	walk.c:90: P1_7 = 1;
                                    500 ;	assignBit
      002099 D2 97            [12]  501 	setb	_P1_7
                                    502 ;	walk.c:91: OE76 ^= mask;
      00209B 78 12            [12]  503 	mov	r0,#_OE76
      00209D EF               [12]  504 	mov	a,r7
      00209E 66               [12]  505 	xrl	a,@r0
      00209F F6               [12]  506 	mov	@r0,a
                                    507 ;	walk.c:93: return;
                                    508 ;	walk.c:94: }
      0020A0 22               [24]  509 	ret
                                    510 ;------------------------------------------------------------
                                    511 ;Allocation info for local variables in function 'update'
                                    512 ;------------------------------------------------------------
                                    513 ;cur                       Allocated to stack - _bp -5
                                    514 ;j                         Allocated to stack - _bp -6
                                    515 ;t                         Allocated to stack - _bp +1
                                    516 ;sloc0                     Allocated to stack - _bp +4
                                    517 ;sloc1                     Allocated to stack - _bp +6
                                    518 ;sloc2                     Allocated to stack - _bp +8
                                    519 ;------------------------------------------------------------
                                    520 ;	walk.c:96: static uint8_t update(struct node *t, struct node *cur, uint8_t j) {
                                    521 ;	-----------------------------------------
                                    522 ;	 function update
                                    523 ;	-----------------------------------------
      0020A1                        524 _update:
      0020A1 C0 10            [24]  525 	push	_bp
      0020A3 85 81 10         [24]  526 	mov	_bp,sp
      0020A6 C0 82            [24]  527 	push	dpl
      0020A8 C0 83            [24]  528 	push	dph
      0020AA C0 F0            [24]  529 	push	b
      0020AC E5 81            [12]  530 	mov	a,sp
      0020AE 24 07            [12]  531 	add	a,#0x07
      0020B0 F5 81            [12]  532 	mov	sp,a
                                    533 ;	walk.c:97: t->r = cur->r + neigh[j].r;
      0020B2 E5 10            [12]  534 	mov	a,_bp
      0020B4 24 FB            [12]  535 	add	a,#0xfb
      0020B6 F8               [12]  536 	mov	r0,a
      0020B7 86 02            [24]  537 	mov	ar2,@r0
      0020B9 08               [12]  538 	inc	r0
      0020BA 86 03            [24]  539 	mov	ar3,@r0
      0020BC 08               [12]  540 	inc	r0
      0020BD 86 04            [24]  541 	mov	ar4,@r0
      0020BF 8A 82            [24]  542 	mov	dpl,r2
      0020C1 8B 83            [24]  543 	mov	dph,r3
      0020C3 8C F0            [24]  544 	mov	b,r4
      0020C5 E5 10            [12]  545 	mov	a,_bp
      0020C7 24 04            [12]  546 	add	a,#0x04
      0020C9 F8               [12]  547 	mov	r0,a
      0020CA 12 2E 2C         [24]  548 	lcall	__gptrget
      0020CD F6               [12]  549 	mov	@r0,a
      0020CE A3               [24]  550 	inc	dptr
      0020CF 12 2E 2C         [24]  551 	lcall	__gptrget
      0020D2 08               [12]  552 	inc	r0
      0020D3 F6               [12]  553 	mov	@r0,a
      0020D4 E5 10            [12]  554 	mov	a,_bp
      0020D6 24 FA            [12]  555 	add	a,#0xfa
      0020D8 F8               [12]  556 	mov	r0,a
      0020D9 E5 10            [12]  557 	mov	a,_bp
      0020DB 24 06            [12]  558 	add	a,#0x06
      0020DD F9               [12]  559 	mov	r1,a
      0020DE E6               [12]  560 	mov	a,@r0
      0020DF 75 F0 04         [24]  561 	mov	b,#0x04
      0020E2 A4               [48]  562 	mul	ab
      0020E3 F7               [12]  563 	mov	@r1,a
      0020E4 09               [12]  564 	inc	r1
      0020E5 A7 F0            [24]  565 	mov	@r1,b
      0020E7 E5 10            [12]  566 	mov	a,_bp
      0020E9 24 06            [12]  567 	add	a,#0x06
      0020EB F8               [12]  568 	mov	r0,a
      0020EC E6               [12]  569 	mov	a,@r0
      0020ED 24 72            [12]  570 	add	a,#_neigh
      0020EF F5 82            [12]  571 	mov	dpl,a
      0020F1 08               [12]  572 	inc	r0
      0020F2 E6               [12]  573 	mov	a,@r0
      0020F3 34 FE            [12]  574 	addc	a,#(_neigh >> 8)
      0020F5 F5 83            [12]  575 	mov	dph,a
      0020F7 E0               [24]  576 	movx	a,@dptr
      0020F8 FF               [12]  577 	mov	r7,a
      0020F9 A3               [24]  578 	inc	dptr
      0020FA E0               [24]  579 	movx	a,@dptr
      0020FB FE               [12]  580 	mov	r6,a
      0020FC E5 10            [12]  581 	mov	a,_bp
      0020FE 24 04            [12]  582 	add	a,#0x04
      002100 F8               [12]  583 	mov	r0,a
      002101 EF               [12]  584 	mov	a,r7
      002102 26               [12]  585 	add	a,@r0
      002103 FF               [12]  586 	mov	r7,a
      002104 EE               [12]  587 	mov	a,r6
      002105 08               [12]  588 	inc	r0
      002106 36               [12]  589 	addc	a,@r0
      002107 FE               [12]  590 	mov	r6,a
      002108 A8 10            [24]  591 	mov	r0,_bp
      00210A 08               [12]  592 	inc	r0
      00210B 86 82            [24]  593 	mov	dpl,@r0
      00210D 08               [12]  594 	inc	r0
      00210E 86 83            [24]  595 	mov	dph,@r0
      002110 08               [12]  596 	inc	r0
      002111 86 F0            [24]  597 	mov	b,@r0
      002113 EF               [12]  598 	mov	a,r7
      002114 12 2C 21         [24]  599 	lcall	__gptrput
      002117 A3               [24]  600 	inc	dptr
      002118 EE               [12]  601 	mov	a,r6
      002119 12 2C 21         [24]  602 	lcall	__gptrput
                                    603 ;	walk.c:98: t->c = cur->c + neigh[j].c;
      00211C A8 10            [24]  604 	mov	r0,_bp
      00211E 08               [12]  605 	inc	r0
      00211F E5 10            [12]  606 	mov	a,_bp
      002121 24 08            [12]  607 	add	a,#0x08
      002123 F9               [12]  608 	mov	r1,a
      002124 74 02            [12]  609 	mov	a,#0x02
      002126 26               [12]  610 	add	a,@r0
      002127 F7               [12]  611 	mov	@r1,a
      002128 E4               [12]  612 	clr	a
      002129 08               [12]  613 	inc	r0
      00212A 36               [12]  614 	addc	a,@r0
      00212B 09               [12]  615 	inc	r1
      00212C F7               [12]  616 	mov	@r1,a
      00212D 08               [12]  617 	inc	r0
      00212E 09               [12]  618 	inc	r1
      00212F E6               [12]  619 	mov	a,@r0
      002130 F7               [12]  620 	mov	@r1,a
      002131 74 02            [12]  621 	mov	a,#0x02
      002133 2A               [12]  622 	add	a,r2
      002134 FA               [12]  623 	mov	r2,a
      002135 E4               [12]  624 	clr	a
      002136 3B               [12]  625 	addc	a,r3
      002137 FB               [12]  626 	mov	r3,a
      002138 8A 82            [24]  627 	mov	dpl,r2
      00213A 8B 83            [24]  628 	mov	dph,r3
      00213C 8C F0            [24]  629 	mov	b,r4
      00213E 12 2E 2C         [24]  630 	lcall	__gptrget
      002141 FA               [12]  631 	mov	r2,a
      002142 A3               [24]  632 	inc	dptr
      002143 12 2E 2C         [24]  633 	lcall	__gptrget
      002146 FB               [12]  634 	mov	r3,a
      002147 E5 10            [12]  635 	mov	a,_bp
      002149 24 06            [12]  636 	add	a,#0x06
      00214B F8               [12]  637 	mov	r0,a
      00214C E6               [12]  638 	mov	a,@r0
      00214D 24 72            [12]  639 	add	a,#_neigh
      00214F FC               [12]  640 	mov	r4,a
      002150 08               [12]  641 	inc	r0
      002151 E6               [12]  642 	mov	a,@r0
      002152 34 FE            [12]  643 	addc	a,#(_neigh >> 8)
      002154 FD               [12]  644 	mov	r5,a
      002155 8C 82            [24]  645 	mov	dpl,r4
      002157 8D 83            [24]  646 	mov	dph,r5
      002159 A3               [24]  647 	inc	dptr
      00215A A3               [24]  648 	inc	dptr
      00215B E0               [24]  649 	movx	a,@dptr
      00215C FC               [12]  650 	mov	r4,a
      00215D A3               [24]  651 	inc	dptr
      00215E E0               [24]  652 	movx	a,@dptr
      00215F FD               [12]  653 	mov	r5,a
      002160 EC               [12]  654 	mov	a,r4
      002161 2A               [12]  655 	add	a,r2
      002162 FA               [12]  656 	mov	r2,a
      002163 ED               [12]  657 	mov	a,r5
      002164 3B               [12]  658 	addc	a,r3
      002165 FB               [12]  659 	mov	r3,a
      002166 E5 10            [12]  660 	mov	a,_bp
      002168 24 08            [12]  661 	add	a,#0x08
      00216A F8               [12]  662 	mov	r0,a
      00216B 86 82            [24]  663 	mov	dpl,@r0
      00216D 08               [12]  664 	inc	r0
      00216E 86 83            [24]  665 	mov	dph,@r0
      002170 08               [12]  666 	inc	r0
      002171 86 F0            [24]  667 	mov	b,@r0
      002173 EA               [12]  668 	mov	a,r2
      002174 12 2C 21         [24]  669 	lcall	__gptrput
      002177 A3               [24]  670 	inc	dptr
      002178 EB               [12]  671 	mov	a,r3
      002179 12 2C 21         [24]  672 	lcall	__gptrput
                                    673 ;	walk.c:100: if (t->r < 0) t->r += ROWS;
      00217C A8 10            [24]  674 	mov	r0,_bp
      00217E 08               [12]  675 	inc	r0
      00217F 86 82            [24]  676 	mov	dpl,@r0
      002181 08               [12]  677 	inc	r0
      002182 86 83            [24]  678 	mov	dph,@r0
      002184 08               [12]  679 	inc	r0
      002185 86 F0            [24]  680 	mov	b,@r0
      002187 12 2E 2C         [24]  681 	lcall	__gptrget
      00218A FD               [12]  682 	mov	r5,a
      00218B A3               [24]  683 	inc	dptr
      00218C 12 2E 2C         [24]  684 	lcall	__gptrget
      00218F FC               [12]  685 	mov	r4,a
      002190 EE               [12]  686 	mov	a,r6
      002191 30 E7 1D         [24]  687 	jnb	acc.7,00104$
      002194 74 30            [12]  688 	mov	a,#0x30
      002196 2D               [12]  689 	add	a,r5
      002197 FF               [12]  690 	mov	r7,a
      002198 E4               [12]  691 	clr	a
      002199 3C               [12]  692 	addc	a,r4
      00219A FE               [12]  693 	mov	r6,a
      00219B A8 10            [24]  694 	mov	r0,_bp
      00219D 08               [12]  695 	inc	r0
      00219E 86 82            [24]  696 	mov	dpl,@r0
      0021A0 08               [12]  697 	inc	r0
      0021A1 86 83            [24]  698 	mov	dph,@r0
      0021A3 08               [12]  699 	inc	r0
      0021A4 86 F0            [24]  700 	mov	b,@r0
      0021A6 EF               [12]  701 	mov	a,r7
      0021A7 12 2C 21         [24]  702 	lcall	__gptrput
      0021AA A3               [24]  703 	inc	dptr
      0021AB EE               [12]  704 	mov	a,r6
      0021AC 12 2C 21         [24]  705 	lcall	__gptrput
      0021AF 80 27            [24]  706 	sjmp	00105$
      0021B1                        707 00104$:
                                    708 ;	walk.c:101: else if (t->r >= ROWS) t->r -= ROWS;
      0021B1 C3               [12]  709 	clr	c
      0021B2 ED               [12]  710 	mov	a,r5
      0021B3 94 30            [12]  711 	subb	a,#0x30
      0021B5 EC               [12]  712 	mov	a,r4
      0021B6 64 80            [12]  713 	xrl	a,#0x80
      0021B8 94 80            [12]  714 	subb	a,#0x80
      0021BA 40 1C            [24]  715 	jc	00105$
      0021BC ED               [12]  716 	mov	a,r5
      0021BD 24 D0            [12]  717 	add	a,#0xd0
      0021BF FD               [12]  718 	mov	r5,a
      0021C0 EC               [12]  719 	mov	a,r4
      0021C1 34 FF            [12]  720 	addc	a,#0xff
      0021C3 FC               [12]  721 	mov	r4,a
      0021C4 A8 10            [24]  722 	mov	r0,_bp
      0021C6 08               [12]  723 	inc	r0
      0021C7 86 82            [24]  724 	mov	dpl,@r0
      0021C9 08               [12]  725 	inc	r0
      0021CA 86 83            [24]  726 	mov	dph,@r0
      0021CC 08               [12]  727 	inc	r0
      0021CD 86 F0            [24]  728 	mov	b,@r0
      0021CF ED               [12]  729 	mov	a,r5
      0021D0 12 2C 21         [24]  730 	lcall	__gptrput
      0021D3 A3               [24]  731 	inc	dptr
      0021D4 EC               [12]  732 	mov	a,r4
      0021D5 12 2C 21         [24]  733 	lcall	__gptrput
      0021D8                        734 00105$:
                                    735 ;	walk.c:102: if (t->c < 0) t->c += COLS;
      0021D8 E5 10            [12]  736 	mov	a,_bp
      0021DA 24 08            [12]  737 	add	a,#0x08
      0021DC F8               [12]  738 	mov	r0,a
      0021DD 86 82            [24]  739 	mov	dpl,@r0
      0021DF 08               [12]  740 	inc	r0
      0021E0 86 83            [24]  741 	mov	dph,@r0
      0021E2 08               [12]  742 	inc	r0
      0021E3 86 F0            [24]  743 	mov	b,@r0
      0021E5 12 2E 2C         [24]  744 	lcall	__gptrget
      0021E8 A3               [24]  745 	inc	dptr
      0021E9 12 2E 2C         [24]  746 	lcall	__gptrget
      0021EC 30 E7 35         [24]  747 	jnb	acc.7,00109$
      0021EF E5 10            [12]  748 	mov	a,_bp
      0021F1 24 08            [12]  749 	add	a,#0x08
      0021F3 F8               [12]  750 	mov	r0,a
      0021F4 86 82            [24]  751 	mov	dpl,@r0
      0021F6 08               [12]  752 	inc	r0
      0021F7 86 83            [24]  753 	mov	dph,@r0
      0021F9 08               [12]  754 	inc	r0
      0021FA 86 F0            [24]  755 	mov	b,@r0
      0021FC 12 2E 2C         [24]  756 	lcall	__gptrget
      0021FF FE               [12]  757 	mov	r6,a
      002200 A3               [24]  758 	inc	dptr
      002201 12 2E 2C         [24]  759 	lcall	__gptrget
      002204 FF               [12]  760 	mov	r7,a
      002205 74 C9            [12]  761 	mov	a,#0xc9
      002207 2E               [12]  762 	add	a,r6
      002208 FE               [12]  763 	mov	r6,a
      002209 E4               [12]  764 	clr	a
      00220A 3F               [12]  765 	addc	a,r7
      00220B FF               [12]  766 	mov	r7,a
      00220C E5 10            [12]  767 	mov	a,_bp
      00220E 24 08            [12]  768 	add	a,#0x08
      002210 F8               [12]  769 	mov	r0,a
      002211 86 82            [24]  770 	mov	dpl,@r0
      002213 08               [12]  771 	inc	r0
      002214 86 83            [24]  772 	mov	dph,@r0
      002216 08               [12]  773 	inc	r0
      002217 86 F0            [24]  774 	mov	b,@r0
      002219 EE               [12]  775 	mov	a,r6
      00221A 12 2C 21         [24]  776 	lcall	__gptrput
      00221D A3               [24]  777 	inc	dptr
      00221E EF               [12]  778 	mov	a,r7
      00221F 12 2C 21         [24]  779 	lcall	__gptrput
      002222 80 55            [24]  780 	sjmp	00110$
      002224                        781 00109$:
                                    782 ;	walk.c:103: else if (t->c >= COLS) t->c -= COLS;
      002224 E5 10            [12]  783 	mov	a,_bp
      002226 24 08            [12]  784 	add	a,#0x08
      002228 F8               [12]  785 	mov	r0,a
      002229 86 82            [24]  786 	mov	dpl,@r0
      00222B 08               [12]  787 	inc	r0
      00222C 86 83            [24]  788 	mov	dph,@r0
      00222E 08               [12]  789 	inc	r0
      00222F 86 F0            [24]  790 	mov	b,@r0
      002231 12 2E 2C         [24]  791 	lcall	__gptrget
      002234 FE               [12]  792 	mov	r6,a
      002235 A3               [24]  793 	inc	dptr
      002236 12 2E 2C         [24]  794 	lcall	__gptrget
      002239 FF               [12]  795 	mov	r7,a
      00223A C3               [12]  796 	clr	c
      00223B EE               [12]  797 	mov	a,r6
      00223C 94 C9            [12]  798 	subb	a,#0xc9
      00223E EF               [12]  799 	mov	a,r7
      00223F 64 80            [12]  800 	xrl	a,#0x80
      002241 94 80            [12]  801 	subb	a,#0x80
      002243 40 34            [24]  802 	jc	00110$
      002245 E5 10            [12]  803 	mov	a,_bp
      002247 24 08            [12]  804 	add	a,#0x08
      002249 F8               [12]  805 	mov	r0,a
      00224A 86 82            [24]  806 	mov	dpl,@r0
      00224C 08               [12]  807 	inc	r0
      00224D 86 83            [24]  808 	mov	dph,@r0
      00224F 08               [12]  809 	inc	r0
      002250 86 F0            [24]  810 	mov	b,@r0
      002252 12 2E 2C         [24]  811 	lcall	__gptrget
      002255 FE               [12]  812 	mov	r6,a
      002256 A3               [24]  813 	inc	dptr
      002257 12 2E 2C         [24]  814 	lcall	__gptrget
      00225A FF               [12]  815 	mov	r7,a
      00225B EE               [12]  816 	mov	a,r6
      00225C 24 37            [12]  817 	add	a,#0x37
      00225E FE               [12]  818 	mov	r6,a
      00225F EF               [12]  819 	mov	a,r7
      002260 34 FF            [12]  820 	addc	a,#0xff
      002262 FF               [12]  821 	mov	r7,a
      002263 E5 10            [12]  822 	mov	a,_bp
      002265 24 08            [12]  823 	add	a,#0x08
      002267 F8               [12]  824 	mov	r0,a
      002268 86 82            [24]  825 	mov	dpl,@r0
      00226A 08               [12]  826 	inc	r0
      00226B 86 83            [24]  827 	mov	dph,@r0
      00226D 08               [12]  828 	inc	r0
      00226E 86 F0            [24]  829 	mov	b,@r0
      002270 EE               [12]  830 	mov	a,r6
      002271 12 2C 21         [24]  831 	lcall	__gptrput
      002274 A3               [24]  832 	inc	dptr
      002275 EF               [12]  833 	mov	a,r7
      002276 12 2C 21         [24]  834 	lcall	__gptrput
      002279                        835 00110$:
                                    836 ;	walk.c:105: if (g[t->r][t->c] == 0xaau) return 0u;
      002279 A8 10            [24]  837 	mov	r0,_bp
      00227B 08               [12]  838 	inc	r0
      00227C 86 82            [24]  839 	mov	dpl,@r0
      00227E 08               [12]  840 	inc	r0
      00227F 86 83            [24]  841 	mov	dph,@r0
      002281 08               [12]  842 	inc	r0
      002282 86 F0            [24]  843 	mov	b,@r0
      002284 12 2E 2C         [24]  844 	lcall	__gptrget
      002287 FE               [12]  845 	mov	r6,a
      002288 A3               [24]  846 	inc	dptr
      002289 12 2E 2C         [24]  847 	lcall	__gptrget
      00228C FF               [12]  848 	mov	r7,a
      00228D C0 06            [24]  849 	push	ar6
      00228F C0 07            [24]  850 	push	ar7
      002291 90 00 C9         [24]  851 	mov	dptr,#0x00c9
      002294 12 2C 3C         [24]  852 	lcall	__mulint
      002297 AE 82            [24]  853 	mov	r6,dpl
      002299 AF 83            [24]  854 	mov	r7,dph
      00229B 15 81            [12]  855 	dec	sp
      00229D 15 81            [12]  856 	dec	sp
      00229F EE               [12]  857 	mov	a,r6
      0022A0 24 00            [12]  858 	add	a,#_g
      0022A2 FE               [12]  859 	mov	r6,a
      0022A3 EF               [12]  860 	mov	a,r7
      0022A4 34 42            [12]  861 	addc	a,#(_g >> 8)
      0022A6 FF               [12]  862 	mov	r7,a
      0022A7 E5 10            [12]  863 	mov	a,_bp
      0022A9 24 08            [12]  864 	add	a,#0x08
      0022AB F8               [12]  865 	mov	r0,a
      0022AC 86 82            [24]  866 	mov	dpl,@r0
      0022AE 08               [12]  867 	inc	r0
      0022AF 86 83            [24]  868 	mov	dph,@r0
      0022B1 08               [12]  869 	inc	r0
      0022B2 86 F0            [24]  870 	mov	b,@r0
      0022B4 12 2E 2C         [24]  871 	lcall	__gptrget
      0022B7 FC               [12]  872 	mov	r4,a
      0022B8 A3               [24]  873 	inc	dptr
      0022B9 12 2E 2C         [24]  874 	lcall	__gptrget
      0022BC FD               [12]  875 	mov	r5,a
      0022BD EC               [12]  876 	mov	a,r4
      0022BE 2E               [12]  877 	add	a,r6
      0022BF F5 82            [12]  878 	mov	dpl,a
      0022C1 ED               [12]  879 	mov	a,r5
      0022C2 3F               [12]  880 	addc	a,r7
      0022C3 F5 83            [12]  881 	mov	dph,a
      0022C5 E0               [24]  882 	movx	a,@dptr
      0022C6 FF               [12]  883 	mov	r7,a
      0022C7 BF AA 05         [24]  884 	cjne	r7,#0xaa,00114$
      0022CA 75 82 00         [24]  885 	mov	dpl,#0x00
      0022CD 80 59            [24]  886 	sjmp	00116$
      0022CF                        887 00114$:
                                    888 ;	walk.c:106: else if (g[t->r][t->c] != 0x55u) bang();
      0022CF A8 10            [24]  889 	mov	r0,_bp
      0022D1 08               [12]  890 	inc	r0
      0022D2 86 82            [24]  891 	mov	dpl,@r0
      0022D4 08               [12]  892 	inc	r0
      0022D5 86 83            [24]  893 	mov	dph,@r0
      0022D7 08               [12]  894 	inc	r0
      0022D8 86 F0            [24]  895 	mov	b,@r0
      0022DA 12 2E 2C         [24]  896 	lcall	__gptrget
      0022DD FE               [12]  897 	mov	r6,a
      0022DE A3               [24]  898 	inc	dptr
      0022DF 12 2E 2C         [24]  899 	lcall	__gptrget
      0022E2 FF               [12]  900 	mov	r7,a
      0022E3 C0 06            [24]  901 	push	ar6
      0022E5 C0 07            [24]  902 	push	ar7
      0022E7 90 00 C9         [24]  903 	mov	dptr,#0x00c9
      0022EA 12 2C 3C         [24]  904 	lcall	__mulint
      0022ED AE 82            [24]  905 	mov	r6,dpl
      0022EF AF 83            [24]  906 	mov	r7,dph
      0022F1 15 81            [12]  907 	dec	sp
      0022F3 15 81            [12]  908 	dec	sp
      0022F5 EE               [12]  909 	mov	a,r6
      0022F6 24 00            [12]  910 	add	a,#_g
      0022F8 FE               [12]  911 	mov	r6,a
      0022F9 EF               [12]  912 	mov	a,r7
      0022FA 34 42            [12]  913 	addc	a,#(_g >> 8)
      0022FC FF               [12]  914 	mov	r7,a
      0022FD E5 10            [12]  915 	mov	a,_bp
      0022FF 24 08            [12]  916 	add	a,#0x08
      002301 F8               [12]  917 	mov	r0,a
      002302 86 82            [24]  918 	mov	dpl,@r0
      002304 08               [12]  919 	inc	r0
      002305 86 83            [24]  920 	mov	dph,@r0
      002307 08               [12]  921 	inc	r0
      002308 86 F0            [24]  922 	mov	b,@r0
      00230A 12 2E 2C         [24]  923 	lcall	__gptrget
      00230D FC               [12]  924 	mov	r4,a
      00230E A3               [24]  925 	inc	dptr
      00230F 12 2E 2C         [24]  926 	lcall	__gptrget
      002312 FD               [12]  927 	mov	r5,a
      002313 EC               [12]  928 	mov	a,r4
      002314 2E               [12]  929 	add	a,r6
      002315 F5 82            [12]  930 	mov	dpl,a
      002317 ED               [12]  931 	mov	a,r5
      002318 3F               [12]  932 	addc	a,r7
      002319 F5 83            [12]  933 	mov	dph,a
      00231B E0               [24]  934 	movx	a,@dptr
      00231C FF               [12]  935 	mov	r7,a
      00231D BF 55 02         [24]  936 	cjne	r7,#0x55,00148$
      002320 80 03            [24]  937 	sjmp	00115$
      002322                        938 00148$:
      002322 12 20 82         [24]  939 	lcall	_bang
      002325                        940 00115$:
                                    941 ;	walk.c:108: return 1u;
      002325 75 82 01         [24]  942 	mov	dpl,#0x01
      002328                        943 00116$:
                                    944 ;	walk.c:109: }
      002328 85 10 81         [24]  945 	mov	sp,_bp
      00232B D0 10            [24]  946 	pop	_bp
      00232D 22               [24]  947 	ret
                                    948 ;------------------------------------------------------------
                                    949 ;Allocation info for local variables in function 'walk'
                                    950 ;------------------------------------------------------------
                                    951 ;nstart                    Allocated to registers 
                                    952 ;cur                       Allocated to stack - _bp +10
                                    953 ;t                         Allocated to stack - _bp +14
                                    954 ;j                         Allocated to stack - _bp +18
                                    955 ;f                         Allocated to registers r3 
                                    956 ;sloc0                     Allocated to stack - _bp +1
                                    957 ;sloc1                     Allocated to stack - _bp +2
                                    958 ;sloc2                     Allocated to stack - _bp +3
                                    959 ;sloc3                     Allocated to stack - _bp +17
                                    960 ;sloc4                     Allocated to stack - _bp +4
                                    961 ;sloc5                     Allocated to stack - _bp +5
                                    962 ;sloc6                     Allocated to stack - _bp +6
                                    963 ;sloc7                     Allocated to stack - _bp +7
                                    964 ;------------------------------------------------------------
                                    965 ;	walk.c:111: static void walk(struct node *nstart) {
                                    966 ;	-----------------------------------------
                                    967 ;	 function walk
                                    968 ;	-----------------------------------------
      00232E                        969 _walk:
      00232E C0 10            [24]  970 	push	_bp
      002330 E5 81            [12]  971 	mov	a,sp
      002332 F5 10            [12]  972 	mov	_bp,a
      002334 24 12            [12]  973 	add	a,#0x12
      002336 F5 81            [12]  974 	mov	sp,a
      002338 AD 82            [24]  975 	mov	r5,dpl
      00233A AE 83            [24]  976 	mov	r6,dph
      00233C AF F0            [24]  977 	mov	r7,b
                                    978 ;	walk.c:115: cur = *nstart;
      00233E E5 10            [12]  979 	mov	a,_bp
      002340 24 0A            [12]  980 	add	a,#0x0a
      002342 F9               [12]  981 	mov	r1,a
      002343 FA               [12]  982 	mov	r2,a
      002344 7B 00            [12]  983 	mov	r3,#0x00
      002346 7C 40            [12]  984 	mov	r4,#0x40
      002348 C0 01            [24]  985 	push	ar1
      00234A 74 04            [12]  986 	mov	a,#0x04
      00234C C0 E0            [24]  987 	push	acc
      00234E E4               [12]  988 	clr	a
      00234F C0 E0            [24]  989 	push	acc
      002351 C0 05            [24]  990 	push	ar5
      002353 C0 06            [24]  991 	push	ar6
      002355 C0 07            [24]  992 	push	ar7
      002357 8A 82            [24]  993 	mov	dpl,r2
      002359 8B 83            [24]  994 	mov	dph,r3
      00235B 8C F0            [24]  995 	mov	b,r4
      00235D 12 2C DA         [24]  996 	lcall	___memcpy
      002360 E5 81            [12]  997 	mov	a,sp
      002362 24 FB            [12]  998 	add	a,#0xfb
      002364 F5 81            [12]  999 	mov	sp,a
      002366 D0 01            [24] 1000 	pop	ar1
                                   1001 ;	walk.c:117: process:
      002368 E5 10            [12] 1002 	mov	a,_bp
      00236A 24 06            [12] 1003 	add	a,#0x06
      00236C F8               [12] 1004 	mov	r0,a
      00236D A6 01            [24] 1005 	mov	@r0,ar1
      00236F E5 10            [12] 1006 	mov	a,_bp
      002371 24 0E            [12] 1007 	add	a,#0x0e
      002373 FE               [12] 1008 	mov	r6,a
      002374 E5 10            [12] 1009 	mov	a,_bp
      002376 24 03            [12] 1010 	add	a,#0x03
      002378 F8               [12] 1011 	mov	r0,a
      002379 A6 01            [24] 1012 	mov	@r0,ar1
      00237B E5 10            [12] 1013 	mov	a,_bp
      00237D 24 05            [12] 1014 	add	a,#0x05
      00237F F8               [12] 1015 	mov	r0,a
      002380 A6 01            [24] 1016 	mov	@r0,ar1
      002382 E5 10            [12] 1017 	mov	a,_bp
      002384 24 04            [12] 1018 	add	a,#0x04
      002386 F8               [12] 1019 	mov	r0,a
      002387 A6 06            [24] 1020 	mov	@r0,ar6
      002389 89 02            [24] 1021 	mov	ar2,r1
      00238B A8 10            [24] 1022 	mov	r0,_bp
      00238D 08               [12] 1023 	inc	r0
      00238E A6 06            [24] 1024 	mov	@r0,ar6
      002390 A8 10            [24] 1025 	mov	r0,_bp
      002392 08               [12] 1026 	inc	r0
      002393 08               [12] 1027 	inc	r0
      002394 A6 01            [24] 1028 	mov	@r0,ar1
      002396 74 02            [12] 1029 	mov	a,#0x02
      002398 29               [12] 1030 	add	a,r1
      002399 F8               [12] 1031 	mov	r0,a
      00239A                       1032 00101$:
                                   1033 ;	walk.c:118: g[cur.r][cur.c] = 0xaau;
      00239A C0 02            [24] 1034 	push	ar2
      00239C 87 02            [24] 1035 	mov	ar2,@r1
      00239E 09               [12] 1036 	inc	r1
      00239F 87 05            [24] 1037 	mov	ar5,@r1
      0023A1 19               [12] 1038 	dec	r1
      0023A2 C0 06            [24] 1039 	push	ar6
      0023A4 C0 01            [24] 1040 	push	ar1
      0023A6 C0 00            [24] 1041 	push	ar0
      0023A8 C0 02            [24] 1042 	push	ar2
      0023AA C0 05            [24] 1043 	push	ar5
      0023AC 90 00 C9         [24] 1044 	mov	dptr,#0x00c9
      0023AF 12 2C 3C         [24] 1045 	lcall	__mulint
      0023B2 AA 82            [24] 1046 	mov	r2,dpl
      0023B4 AD 83            [24] 1047 	mov	r5,dph
      0023B6 15 81            [12] 1048 	dec	sp
      0023B8 15 81            [12] 1049 	dec	sp
      0023BA D0 00            [24] 1050 	pop	ar0
      0023BC D0 01            [24] 1051 	pop	ar1
      0023BE EA               [12] 1052 	mov	a,r2
      0023BF 24 00            [12] 1053 	add	a,#_g
      0023C1 FF               [12] 1054 	mov	r7,a
      0023C2 ED               [12] 1055 	mov	a,r5
      0023C3 34 42            [12] 1056 	addc	a,#(_g >> 8)
      0023C5 FC               [12] 1057 	mov	r4,a
      0023C6 86 02            [24] 1058 	mov	ar2,@r0
      0023C8 08               [12] 1059 	inc	r0
      0023C9 86 05            [24] 1060 	mov	ar5,@r0
      0023CB 18               [12] 1061 	dec	r0
      0023CC EA               [12] 1062 	mov	a,r2
      0023CD 2F               [12] 1063 	add	a,r7
      0023CE F5 82            [12] 1064 	mov	dpl,a
      0023D0 ED               [12] 1065 	mov	a,r5
      0023D1 3C               [12] 1066 	addc	a,r4
      0023D2 F5 83            [12] 1067 	mov	dph,a
      0023D4 74 AA            [12] 1068 	mov	a,#0xaa
      0023D6 F0               [24] 1069 	movx	@dptr,a
                                   1070 ;	walk.c:120: printf("\033[%d;%dHo", cur.r + 4, cur.c + 1);
      0023D7 86 02            [24] 1071 	mov	ar2,@r0
      0023D9 08               [12] 1072 	inc	r0
      0023DA 86 05            [24] 1073 	mov	ar5,@r0
      0023DC 18               [12] 1074 	dec	r0
      0023DD 74 01            [12] 1075 	mov	a,#0x01
      0023DF 2A               [12] 1076 	add	a,r2
      0023E0 FF               [12] 1077 	mov	r7,a
      0023E1 E4               [12] 1078 	clr	a
      0023E2 3D               [12] 1079 	addc	a,r5
      0023E3 FC               [12] 1080 	mov	r4,a
      0023E4 87 02            [24] 1081 	mov	ar2,@r1
      0023E6 09               [12] 1082 	inc	r1
      0023E7 87 05            [24] 1083 	mov	ar5,@r1
      0023E9 19               [12] 1084 	dec	r1
      0023EA 74 04            [12] 1085 	mov	a,#0x04
      0023EC 2A               [12] 1086 	add	a,r2
      0023ED FA               [12] 1087 	mov	r2,a
      0023EE E4               [12] 1088 	clr	a
      0023EF 3D               [12] 1089 	addc	a,r5
      0023F0 FD               [12] 1090 	mov	r5,a
      0023F1 C0 02            [24] 1091 	push	ar2
      0023F3 C0 01            [24] 1092 	push	ar1
      0023F5 C0 00            [24] 1093 	push	ar0
      0023F7 C0 07            [24] 1094 	push	ar7
      0023F9 C0 04            [24] 1095 	push	ar4
      0023FB C0 02            [24] 1096 	push	ar2
      0023FD C0 05            [24] 1097 	push	ar5
      0023FF 74 33            [12] 1098 	mov	a,#___str_1
      002401 C0 E0            [24] 1099 	push	acc
      002403 74 41            [12] 1100 	mov	a,#(___str_1 >> 8)
      002405 C0 E0            [24] 1101 	push	acc
      002407 74 80            [12] 1102 	mov	a,#0x80
      002409 C0 E0            [24] 1103 	push	acc
      00240B 12 2D F3         [24] 1104 	lcall	_printf
      00240E E5 81            [12] 1105 	mov	a,sp
      002410 24 F9            [12] 1106 	add	a,#0xf9
      002412 F5 81            [12] 1107 	mov	sp,a
                                   1108 ;	walk.c:121: flashOE(OE76_MASK7);
      002414 75 82 80         [24] 1109 	mov	dpl,#0x80
      002417 12 20 8E         [24] 1110 	lcall	_flashOE
      00241A D0 00            [24] 1111 	pop	ar0
      00241C D0 01            [24] 1112 	pop	ar1
      00241E D0 02            [24] 1113 	pop	ar2
      002420 D0 06            [24] 1114 	pop	ar6
                                   1115 ;	walk.c:146: return;
      002422 D0 02            [24] 1116 	pop	ar2
                                   1117 ;	walk.c:123: next:
      002424                       1118 00102$:
                                   1119 ;	walk.c:124: printf("\033[2;1H% 8d% 8d% 8d", sp, cur.r, cur.c);
      002424 C0 02            [24] 1120 	push	ar2
      002426 86 07            [24] 1121 	mov	ar7,@r0
      002428 08               [12] 1122 	inc	r0
      002429 86 04            [24] 1123 	mov	ar4,@r0
      00242B 18               [12] 1124 	dec	r0
      00242C 87 02            [24] 1125 	mov	ar2,@r1
      00242E 09               [12] 1126 	inc	r1
      00242F 87 05            [24] 1127 	mov	ar5,@r1
      002431 19               [12] 1128 	dec	r1
      002432 C0 06            [24] 1129 	push	ar6
      002434 C0 02            [24] 1130 	push	ar2
      002436 C0 01            [24] 1131 	push	ar1
      002438 C0 00            [24] 1132 	push	ar0
      00243A C0 07            [24] 1133 	push	ar7
      00243C C0 04            [24] 1134 	push	ar4
      00243E C0 02            [24] 1135 	push	ar2
      002440 C0 05            [24] 1136 	push	ar5
      002442 90 FE 70         [24] 1137 	mov	dptr,#_sp
      002445 E0               [24] 1138 	movx	a,@dptr
      002446 C0 E0            [24] 1139 	push	acc
      002448 A3               [24] 1140 	inc	dptr
      002449 E0               [24] 1141 	movx	a,@dptr
      00244A C0 E0            [24] 1142 	push	acc
      00244C 74 3D            [12] 1143 	mov	a,#___str_2
      00244E C0 E0            [24] 1144 	push	acc
      002450 74 41            [12] 1145 	mov	a,#(___str_2 >> 8)
      002452 C0 E0            [24] 1146 	push	acc
      002454 74 80            [12] 1147 	mov	a,#0x80
      002456 C0 E0            [24] 1148 	push	acc
      002458 12 2D F3         [24] 1149 	lcall	_printf
      00245B E5 81            [12] 1150 	mov	a,sp
      00245D 24 F7            [12] 1151 	add	a,#0xf7
      00245F F5 81            [12] 1152 	mov	sp,a
      002461 D0 00            [24] 1153 	pop	ar0
      002463 D0 01            [24] 1154 	pop	ar1
      002465 D0 02            [24] 1155 	pop	ar2
      002467 D0 06            [24] 1156 	pop	ar6
                                   1157 ;	walk.c:126: for (j = 0u, f = 0u; j < NMAX; j++) {
      002469 7B 00            [12] 1158 	mov	r3,#0x00
      00246B C0 00            [24] 1159 	push	ar0
      00246D E5 10            [12] 1160 	mov	a,_bp
      00246F 24 12            [12] 1161 	add	a,#0x12
      002471 F8               [12] 1162 	mov	r0,a
      002472 76 00            [12] 1163 	mov	@r0,#0x00
      002474 D0 00            [24] 1164 	pop	ar0
                                   1165 ;	walk.c:146: return;
      002476 D0 02            [24] 1166 	pop	ar2
                                   1167 ;	walk.c:126: for (j = 0u, f = 0u; j < NMAX; j++) {
      002478                       1168 00119$:
      002478 C0 00            [24] 1169 	push	ar0
      00247A E5 10            [12] 1170 	mov	a,_bp
      00247C 24 12            [12] 1171 	add	a,#0x12
      00247E F8               [12] 1172 	mov	r0,a
      00247F B6 10 00         [24] 1173 	cjne	@r0,#0x10,00159$
      002482                       1174 00159$:
      002482 D0 00            [24] 1175 	pop	ar0
      002484 50 7A            [24] 1176 	jnc	00106$
                                   1177 ;	walk.c:127: if (!update(&t, &cur, j)) continue;
      002486 C0 02            [24] 1178 	push	ar2
      002488 C0 00            [24] 1179 	push	ar0
      00248A E5 10            [12] 1180 	mov	a,_bp
      00248C 24 06            [12] 1181 	add	a,#0x06
      00248E F8               [12] 1182 	mov	r0,a
      00248F C0 01            [24] 1183 	push	ar1
      002491 E5 10            [12] 1184 	mov	a,_bp
      002493 24 07            [12] 1185 	add	a,#0x07
      002495 F9               [12] 1186 	mov	r1,a
      002496 E6               [12] 1187 	mov	a,@r0
      002497 F7               [12] 1188 	mov	@r1,a
      002498 09               [12] 1189 	inc	r1
      002499 77 00            [12] 1190 	mov	@r1,#0x00
      00249B 09               [12] 1191 	inc	r1
      00249C 77 40            [12] 1192 	mov	@r1,#0x40
      00249E D0 01            [24] 1193 	pop	ar1
      0024A0 D0 00            [24] 1194 	pop	ar0
      0024A2 8E 04            [24] 1195 	mov	ar4,r6
      0024A4 7D 00            [12] 1196 	mov	r5,#0x00
      0024A6 7F 40            [12] 1197 	mov	r7,#0x40
      0024A8 C0 06            [24] 1198 	push	ar6
      0024AA C0 03            [24] 1199 	push	ar3
      0024AC C0 02            [24] 1200 	push	ar2
      0024AE C0 01            [24] 1201 	push	ar1
      0024B0 C0 00            [24] 1202 	push	ar0
      0024B2 85 00 F0         [24] 1203 	mov	b,ar0
      0024B5 E5 10            [12] 1204 	mov	a,_bp
      0024B7 24 12            [12] 1205 	add	a,#0x12
      0024B9 F8               [12] 1206 	mov	r0,a
      0024BA E6               [12] 1207 	mov	a,@r0
      0024BB C0 E0            [24] 1208 	push	acc
      0024BD A8 F0            [24] 1209 	mov	r0,b
      0024BF 85 00 F0         [24] 1210 	mov	b,ar0
      0024C2 E5 10            [12] 1211 	mov	a,_bp
      0024C4 24 07            [12] 1212 	add	a,#0x07
      0024C6 F8               [12] 1213 	mov	r0,a
      0024C7 E6               [12] 1214 	mov	a,@r0
      0024C8 C0 E0            [24] 1215 	push	acc
      0024CA 08               [12] 1216 	inc	r0
      0024CB E6               [12] 1217 	mov	a,@r0
      0024CC C0 E0            [24] 1218 	push	acc
      0024CE 08               [12] 1219 	inc	r0
      0024CF E6               [12] 1220 	mov	a,@r0
      0024D0 C0 E0            [24] 1221 	push	acc
      0024D2 8C 82            [24] 1222 	mov	dpl,r4
      0024D4 8D 83            [24] 1223 	mov	dph,r5
      0024D6 8F F0            [24] 1224 	mov	b,r7
      0024D8 12 20 A1         [24] 1225 	lcall	_update
      0024DB AF 82            [24] 1226 	mov	r7,dpl
      0024DD E5 81            [12] 1227 	mov	a,sp
      0024DF 24 FC            [12] 1228 	add	a,#0xfc
      0024E1 F5 81            [12] 1229 	mov	sp,a
      0024E3 D0 00            [24] 1230 	pop	ar0
      0024E5 D0 01            [24] 1231 	pop	ar1
      0024E7 D0 02            [24] 1232 	pop	ar2
      0024E9 D0 03            [24] 1233 	pop	ar3
      0024EB D0 06            [24] 1234 	pop	ar6
      0024ED D0 02            [24] 1235 	pop	ar2
      0024EF EF               [12] 1236 	mov	a,r7
      0024F0 60 01            [24] 1237 	jz	00105$
                                   1238 ;	walk.c:128: f++;
      0024F2 0B               [12] 1239 	inc	r3
      0024F3                       1240 00105$:
                                   1241 ;	walk.c:126: for (j = 0u, f = 0u; j < NMAX; j++) {
      0024F3 C0 00            [24] 1242 	push	ar0
      0024F5 E5 10            [12] 1243 	mov	a,_bp
      0024F7 24 12            [12] 1244 	add	a,#0x12
      0024F9 F8               [12] 1245 	mov	r0,a
      0024FA 06               [12] 1246 	inc	@r0
      0024FB D0 00            [24] 1247 	pop	ar0
      0024FD 02 24 78         [24] 1248 	ljmp	00119$
      002500                       1249 00106$:
                                   1250 ;	walk.c:131: if (f) {
      002500 EB               [12] 1251 	mov	a,r3
      002501 70 03            [24] 1252 	jnz	00162$
      002503 02 26 1A         [24] 1253 	ljmp	00115$
      002506                       1254 00162$:
                                   1255 ;	walk.c:132: while (1) {
      002506                       1256 00112$:
                                   1257 ;	walk.c:133: j = (uint8_t)(rand() % NMAX);
      002506 C0 02            [24] 1258 	push	ar2
      002508 C0 06            [24] 1259 	push	ar6
      00250A C0 02            [24] 1260 	push	ar2
      00250C C0 01            [24] 1261 	push	ar1
      00250E C0 00            [24] 1262 	push	ar0
      002510 12 2B 44         [24] 1263 	lcall	_rand
      002513 AD 82            [24] 1264 	mov	r5,dpl
      002515 D0 00            [24] 1265 	pop	ar0
      002517 D0 01            [24] 1266 	pop	ar1
      002519 D0 02            [24] 1267 	pop	ar2
      00251B D0 06            [24] 1268 	pop	ar6
      00251D 53 05 0F         [24] 1269 	anl	ar5,#0x0f
      002520 8D 04            [24] 1270 	mov	ar4,r5
                                   1271 ;	walk.c:134: if (!update(&t, &cur, j)) continue;
      002522 C0 00            [24] 1272 	push	ar0
      002524 E5 10            [12] 1273 	mov	a,_bp
      002526 24 05            [12] 1274 	add	a,#0x05
      002528 F8               [12] 1275 	mov	r0,a
      002529 C0 01            [24] 1276 	push	ar1
      00252B E5 10            [12] 1277 	mov	a,_bp
      00252D 24 07            [12] 1278 	add	a,#0x07
      00252F F9               [12] 1279 	mov	r1,a
      002530 E6               [12] 1280 	mov	a,@r0
      002531 F7               [12] 1281 	mov	@r1,a
      002532 09               [12] 1282 	inc	r1
      002533 77 00            [12] 1283 	mov	@r1,#0x00
      002535 09               [12] 1284 	inc	r1
      002536 77 40            [12] 1285 	mov	@r1,#0x40
      002538 D0 01            [24] 1286 	pop	ar1
      00253A E5 10            [12] 1287 	mov	a,_bp
      00253C 24 04            [12] 1288 	add	a,#0x04
      00253E F8               [12] 1289 	mov	r0,a
      00253F 86 02            [24] 1290 	mov	ar2,@r0
      002541 7D 00            [12] 1291 	mov	r5,#0x00
      002543 7F 40            [12] 1292 	mov	r7,#0x40
      002545 D0 00            [24] 1293 	pop	ar0
      002547 C0 06            [24] 1294 	push	ar6
      002549 C0 02            [24] 1295 	push	ar2
      00254B C0 01            [24] 1296 	push	ar1
      00254D C0 00            [24] 1297 	push	ar0
      00254F C0 04            [24] 1298 	push	ar4
      002551 85 00 F0         [24] 1299 	mov	b,ar0
      002554 E5 10            [12] 1300 	mov	a,_bp
      002556 24 07            [12] 1301 	add	a,#0x07
      002558 F8               [12] 1302 	mov	r0,a
      002559 E6               [12] 1303 	mov	a,@r0
      00255A C0 E0            [24] 1304 	push	acc
      00255C 08               [12] 1305 	inc	r0
      00255D E6               [12] 1306 	mov	a,@r0
      00255E C0 E0            [24] 1307 	push	acc
      002560 08               [12] 1308 	inc	r0
      002561 E6               [12] 1309 	mov	a,@r0
      002562 C0 E0            [24] 1310 	push	acc
      002564 8A 82            [24] 1311 	mov	dpl,r2
      002566 8D 83            [24] 1312 	mov	dph,r5
      002568 8F F0            [24] 1313 	mov	b,r7
      00256A 12 20 A1         [24] 1314 	lcall	_update
      00256D AF 82            [24] 1315 	mov	r7,dpl
      00256F E5 81            [12] 1316 	mov	a,sp
      002571 24 FC            [12] 1317 	add	a,#0xfc
      002573 F5 81            [12] 1318 	mov	sp,a
      002575 D0 00            [24] 1319 	pop	ar0
      002577 D0 01            [24] 1320 	pop	ar1
      002579 D0 02            [24] 1321 	pop	ar2
      00257B D0 06            [24] 1322 	pop	ar6
      00257D D0 02            [24] 1323 	pop	ar2
      00257F EF               [12] 1324 	mov	a,r7
      002580 60 84            [24] 1325 	jz	00112$
                                   1326 ;	walk.c:135: if (!stpush(&cur)) bang();
      002582 8A 04            [24] 1327 	mov	ar4,r2
      002584 7D 00            [12] 1328 	mov	r5,#0x00
      002586 7F 40            [12] 1329 	mov	r7,#0x40
      002588 8C 82            [24] 1330 	mov	dpl,r4
      00258A 8D 83            [24] 1331 	mov	dph,r5
      00258C 8F F0            [24] 1332 	mov	b,r7
      00258E C0 06            [24] 1333 	push	ar6
      002590 C0 02            [24] 1334 	push	ar2
      002592 C0 01            [24] 1335 	push	ar1
      002594 C0 00            [24] 1336 	push	ar0
      002596 12 2A 81         [24] 1337 	lcall	_stpush
      002599 E5 82            [12] 1338 	mov	a,dpl
      00259B D0 00            [24] 1339 	pop	ar0
      00259D D0 01            [24] 1340 	pop	ar1
      00259F D0 02            [24] 1341 	pop	ar2
      0025A1 D0 06            [24] 1342 	pop	ar6
      0025A3 70 13            [24] 1343 	jnz	00110$
      0025A5 C0 06            [24] 1344 	push	ar6
      0025A7 C0 02            [24] 1345 	push	ar2
      0025A9 C0 01            [24] 1346 	push	ar1
      0025AB C0 00            [24] 1347 	push	ar0
      0025AD 12 20 82         [24] 1348 	lcall	_bang
      0025B0 D0 00            [24] 1349 	pop	ar0
      0025B2 D0 01            [24] 1350 	pop	ar1
      0025B4 D0 02            [24] 1351 	pop	ar2
      0025B6 D0 06            [24] 1352 	pop	ar6
      0025B8                       1353 00110$:
                                   1354 ;	walk.c:136: cur = t;
      0025B8 C0 02            [24] 1355 	push	ar2
      0025BA C0 00            [24] 1356 	push	ar0
      0025BC A8 10            [24] 1357 	mov	r0,_bp
      0025BE 08               [12] 1358 	inc	r0
      0025BF C0 01            [24] 1359 	push	ar1
      0025C1 E5 10            [12] 1360 	mov	a,_bp
      0025C3 24 07            [12] 1361 	add	a,#0x07
      0025C5 F9               [12] 1362 	mov	r1,a
      0025C6 E6               [12] 1363 	mov	a,@r0
      0025C7 F7               [12] 1364 	mov	@r1,a
      0025C8 09               [12] 1365 	inc	r1
      0025C9 77 00            [12] 1366 	mov	@r1,#0x00
      0025CB 09               [12] 1367 	inc	r1
      0025CC 77 40            [12] 1368 	mov	@r1,#0x40
      0025CE D0 01            [24] 1369 	pop	ar1
      0025D0 A8 10            [24] 1370 	mov	r0,_bp
      0025D2 08               [12] 1371 	inc	r0
      0025D3 08               [12] 1372 	inc	r0
      0025D4 86 02            [24] 1373 	mov	ar2,@r0
      0025D6 7B 00            [12] 1374 	mov	r3,#0x00
      0025D8 7F 40            [12] 1375 	mov	r7,#0x40
      0025DA D0 00            [24] 1376 	pop	ar0
      0025DC C0 06            [24] 1377 	push	ar6
      0025DE C0 02            [24] 1378 	push	ar2
      0025E0 C0 01            [24] 1379 	push	ar1
      0025E2 C0 00            [24] 1380 	push	ar0
      0025E4 74 04            [12] 1381 	mov	a,#0x04
      0025E6 C0 E0            [24] 1382 	push	acc
      0025E8 E4               [12] 1383 	clr	a
      0025E9 C0 E0            [24] 1384 	push	acc
      0025EB 85 00 F0         [24] 1385 	mov	b,ar0
      0025EE E5 10            [12] 1386 	mov	a,_bp
      0025F0 24 07            [12] 1387 	add	a,#0x07
      0025F2 F8               [12] 1388 	mov	r0,a
      0025F3 E6               [12] 1389 	mov	a,@r0
      0025F4 C0 E0            [24] 1390 	push	acc
      0025F6 08               [12] 1391 	inc	r0
      0025F7 E6               [12] 1392 	mov	a,@r0
      0025F8 C0 E0            [24] 1393 	push	acc
      0025FA 08               [12] 1394 	inc	r0
      0025FB E6               [12] 1395 	mov	a,@r0
      0025FC C0 E0            [24] 1396 	push	acc
      0025FE 8A 82            [24] 1397 	mov	dpl,r2
      002600 8B 83            [24] 1398 	mov	dph,r3
      002602 8F F0            [24] 1399 	mov	b,r7
      002604 12 2C DA         [24] 1400 	lcall	___memcpy
      002607 E5 81            [12] 1401 	mov	a,sp
      002609 24 FB            [12] 1402 	add	a,#0xfb
      00260B F5 81            [12] 1403 	mov	sp,a
      00260D D0 00            [24] 1404 	pop	ar0
      00260F D0 01            [24] 1405 	pop	ar1
      002611 D0 02            [24] 1406 	pop	ar2
      002613 D0 06            [24] 1407 	pop	ar6
                                   1408 ;	walk.c:137: goto process;
      002615 D0 02            [24] 1409 	pop	ar2
      002617 02 23 9A         [24] 1410 	ljmp	00101$
      00261A                       1411 00115$:
                                   1412 ;	walk.c:141: printf("\033[%d;%dH.", cur.r + 4, cur.c + 1);
      00261A 86 05            [24] 1413 	mov	ar5,@r0
      00261C 08               [12] 1414 	inc	r0
      00261D 86 07            [24] 1415 	mov	ar7,@r0
      00261F 18               [12] 1416 	dec	r0
      002620 0D               [12] 1417 	inc	r5
      002621 BD 00 01         [24] 1418 	cjne	r5,#0x00,00165$
      002624 0F               [12] 1419 	inc	r7
      002625                       1420 00165$:
      002625 87 03            [24] 1421 	mov	ar3,@r1
      002627 09               [12] 1422 	inc	r1
      002628 87 04            [24] 1423 	mov	ar4,@r1
      00262A 19               [12] 1424 	dec	r1
      00262B 74 04            [12] 1425 	mov	a,#0x04
      00262D 2B               [12] 1426 	add	a,r3
      00262E FB               [12] 1427 	mov	r3,a
      00262F E4               [12] 1428 	clr	a
      002630 3C               [12] 1429 	addc	a,r4
      002631 FC               [12] 1430 	mov	r4,a
      002632 C0 06            [24] 1431 	push	ar6
      002634 C0 02            [24] 1432 	push	ar2
      002636 C0 01            [24] 1433 	push	ar1
      002638 C0 00            [24] 1434 	push	ar0
      00263A C0 05            [24] 1435 	push	ar5
      00263C C0 07            [24] 1436 	push	ar7
      00263E C0 03            [24] 1437 	push	ar3
      002640 C0 04            [24] 1438 	push	ar4
      002642 74 50            [12] 1439 	mov	a,#___str_3
      002644 C0 E0            [24] 1440 	push	acc
      002646 74 41            [12] 1441 	mov	a,#(___str_3 >> 8)
      002648 C0 E0            [24] 1442 	push	acc
      00264A 74 80            [12] 1443 	mov	a,#0x80
      00264C C0 E0            [24] 1444 	push	acc
      00264E 12 2D F3         [24] 1445 	lcall	_printf
      002651 E5 81            [12] 1446 	mov	a,sp
      002653 24 F9            [12] 1447 	add	a,#0xf9
      002655 F5 81            [12] 1448 	mov	sp,a
                                   1449 ;	walk.c:142: flashOE(OE76_MASK6);
      002657 75 82 40         [24] 1450 	mov	dpl,#0x40
      00265A 12 20 8E         [24] 1451 	lcall	_flashOE
      00265D D0 00            [24] 1452 	pop	ar0
      00265F D0 01            [24] 1453 	pop	ar1
      002661 D0 02            [24] 1454 	pop	ar2
      002663 D0 06            [24] 1455 	pop	ar6
                                   1456 ;	walk.c:144: if (stpop(&cur)) goto next;
      002665 C0 00            [24] 1457 	push	ar0
      002667 E5 10            [12] 1458 	mov	a,_bp
      002669 24 03            [12] 1459 	add	a,#0x03
      00266B F8               [12] 1460 	mov	r0,a
      00266C 86 04            [24] 1461 	mov	ar4,@r0
      00266E 7D 00            [12] 1462 	mov	r5,#0x00
      002670 7F 40            [12] 1463 	mov	r7,#0x40
      002672 D0 00            [24] 1464 	pop	ar0
      002674 8C 82            [24] 1465 	mov	dpl,r4
      002676 8D 83            [24] 1466 	mov	dph,r5
      002678 8F F0            [24] 1467 	mov	b,r7
      00267A C0 06            [24] 1468 	push	ar6
      00267C C0 02            [24] 1469 	push	ar2
      00267E C0 01            [24] 1470 	push	ar1
      002680 C0 00            [24] 1471 	push	ar0
      002682 12 2A E2         [24] 1472 	lcall	_stpop
      002685 E5 82            [12] 1473 	mov	a,dpl
      002687 D0 00            [24] 1474 	pop	ar0
      002689 D0 01            [24] 1475 	pop	ar1
      00268B D0 02            [24] 1476 	pop	ar2
      00268D D0 06            [24] 1477 	pop	ar6
      00268F 60 03            [24] 1478 	jz	00166$
      002691 02 24 24         [24] 1479 	ljmp	00102$
      002694                       1480 00166$:
                                   1481 ;	walk.c:146: return;
                                   1482 ;	walk.c:147: }
      002694 85 10 81         [24] 1483 	mov	sp,_bp
      002697 D0 10            [24] 1484 	pop	_bp
      002699 22               [24] 1485 	ret
                                   1486 ;------------------------------------------------------------
                                   1487 ;Allocation info for local variables in function 'main'
                                   1488 ;------------------------------------------------------------
                                   1489 ;initial                   Allocated to stack - _bp +7
                                   1490 ;N                         Allocated to stack - _bp +11
                                   1491 ;i                         Allocated to stack - _bp +5
                                   1492 ;j                         Allocated to registers r2 r6 
                                   1493 ;sloc0                     Allocated to stack - _bp +1
                                   1494 ;sloc1                     Allocated to stack - _bp +3
                                   1495 ;sloc2                     Allocated to stack - _bp +15
                                   1496 ;------------------------------------------------------------
                                   1497 ;	walk.c:149: int main(void) {
                                   1498 ;	-----------------------------------------
                                   1499 ;	 function main
                                   1500 ;	-----------------------------------------
      00269A                       1501 _main:
      00269A C0 10            [24] 1502 	push	_bp
      00269C E5 81            [12] 1503 	mov	a,sp
      00269E F5 10            [12] 1504 	mov	_bp,a
      0026A0 24 0C            [12] 1505 	add	a,#0x0c
      0026A2 F5 81            [12] 1506 	mov	sp,a
                                   1507 ;	walk.c:154: i0 = 1u;
      0026A4 78 11            [12] 1508 	mov	r0,#_i0
      0026A6 76 01            [12] 1509 	mov	@r0,#0x01
                                   1510 ;	walk.c:156: P1_7 = 1;
                                   1511 ;	assignBit
      0026A8 D2 97            [12] 1512 	setb	_P1_7
                                   1513 ;	walk.c:157: IT0 = 1;
                                   1514 ;	assignBit
      0026AA D2 88            [12] 1515 	setb	_IT0
                                   1516 ;	walk.c:158: EX0 = 1;
                                   1517 ;	assignBit
      0026AC D2 A8            [12] 1518 	setb	_EX0
                                   1519 ;	walk.c:159: EA = 1;
                                   1520 ;	assignBit
      0026AE D2 AF            [12] 1521 	setb	_EA
                                   1522 ;	walk.c:161: srand(RND);
      0026B0 90 80 00         [24] 1523 	mov	dptr,#_RND
      0026B3 E0               [24] 1524 	movx	a,@dptr
      0026B4 FE               [12] 1525 	mov	r6,a
      0026B5 A3               [24] 1526 	inc	dptr
      0026B6 E0               [24] 1527 	movx	a,@dptr
      0026B7 FF               [12] 1528 	mov	r7,a
      0026B8 8E 82            [24] 1529 	mov	dpl,r6
      0026BA 8F 83            [24] 1530 	mov	dph,r7
      0026BC 12 2C 08         [24] 1531 	lcall	_srand
                                   1532 ;	walk.c:162: stinit();
      0026BF 12 2A 78         [24] 1533 	lcall	_stinit
                                   1534 ;	walk.c:164: puts("\033[2J\033[?25l");
      0026C2 90 41 5A         [24] 1535 	mov	dptr,#___str_4
      0026C5 75 F0 80         [24] 1536 	mov	b,#0x80
      0026C8 12 2D 6D         [24] 1537 	lcall	_puts
                                   1538 ;	walk.c:166: while (i0) {
      0026CB E5 10            [12] 1539 	mov	a,_bp
      0026CD 24 07            [12] 1540 	add	a,#0x07
      0026CF F9               [12] 1541 	mov	r1,a
      0026D0 FF               [12] 1542 	mov	r7,a
      0026D1 E5 10            [12] 1543 	mov	a,_bp
      0026D3 24 0B            [12] 1544 	add	a,#0x0b
      0026D5 F8               [12] 1545 	mov	r0,a
      0026D6 E4               [12] 1546 	clr	a
      0026D7 F6               [12] 1547 	mov	@r0,a
      0026D8 08               [12] 1548 	inc	r0
      0026D9 F6               [12] 1549 	mov	@r0,a
      0026DA                       1550 00108$:
      0026DA 78 11            [12] 1551 	mov	r0,#_i0
      0026DC E6               [12] 1552 	mov	a,@r0
      0026DD 70 03            [24] 1553 	jnz	00181$
      0026DF 02 2A 61         [24] 1554 	ljmp	00110$
      0026E2                       1555 00181$:
                                   1556 ;	walk.c:167: for (i = 0; i < ROWS; i++)
      0026E2 7B 00            [12] 1557 	mov	r3,#0x00
      0026E4 7C 00            [12] 1558 	mov	r4,#0x00
      0026E6 A8 10            [24] 1559 	mov	r0,_bp
      0026E8 08               [12] 1560 	inc	r0
      0026E9 E4               [12] 1561 	clr	a
      0026EA F6               [12] 1562 	mov	@r0,a
      0026EB 08               [12] 1563 	inc	r0
      0026EC F6               [12] 1564 	mov	@r0,a
                                   1565 ;	walk.c:168: for (j = 0; j < COLS; j++)
      0026ED                       1566 00124$:
      0026ED A8 10            [24] 1567 	mov	r0,_bp
      0026EF 08               [12] 1568 	inc	r0
      0026F0 C0 01            [24] 1569 	push	ar1
      0026F2 E5 10            [12] 1570 	mov	a,_bp
      0026F4 24 03            [12] 1571 	add	a,#0x03
      0026F6 F9               [12] 1572 	mov	r1,a
      0026F7 E6               [12] 1573 	mov	a,@r0
      0026F8 24 00            [12] 1574 	add	a,#_g
      0026FA F7               [12] 1575 	mov	@r1,a
      0026FB 08               [12] 1576 	inc	r0
      0026FC E6               [12] 1577 	mov	a,@r0
      0026FD 34 42            [12] 1578 	addc	a,#(_g >> 8)
      0026FF 09               [12] 1579 	inc	r1
      002700 F7               [12] 1580 	mov	@r1,a
      002701 D0 01            [24] 1581 	pop	ar1
      002703 7A 00            [12] 1582 	mov	r2,#0x00
      002705 7E 00            [12] 1583 	mov	r6,#0x00
      002707                       1584 00111$:
                                   1585 ;	walk.c:169: g[i][j] = 0x55u;
      002707 E5 10            [12] 1586 	mov	a,_bp
      002709 24 03            [12] 1587 	add	a,#0x03
      00270B F8               [12] 1588 	mov	r0,a
      00270C EA               [12] 1589 	mov	a,r2
      00270D 26               [12] 1590 	add	a,@r0
      00270E F5 82            [12] 1591 	mov	dpl,a
      002710 EE               [12] 1592 	mov	a,r6
      002711 08               [12] 1593 	inc	r0
      002712 36               [12] 1594 	addc	a,@r0
      002713 F5 83            [12] 1595 	mov	dph,a
      002715 74 55            [12] 1596 	mov	a,#0x55
      002717 F0               [24] 1597 	movx	@dptr,a
                                   1598 ;	walk.c:168: for (j = 0; j < COLS; j++)
      002718 0A               [12] 1599 	inc	r2
      002719 BA 00 01         [24] 1600 	cjne	r2,#0x00,00182$
      00271C 0E               [12] 1601 	inc	r6
      00271D                       1602 00182$:
      00271D C3               [12] 1603 	clr	c
      00271E EA               [12] 1604 	mov	a,r2
      00271F 94 C9            [12] 1605 	subb	a,#0xc9
      002721 EE               [12] 1606 	mov	a,r6
      002722 64 80            [12] 1607 	xrl	a,#0x80
      002724 94 80            [12] 1608 	subb	a,#0x80
      002726 40 DF            [24] 1609 	jc	00111$
                                   1610 ;	walk.c:167: for (i = 0; i < ROWS; i++)
      002728 A8 10            [24] 1611 	mov	r0,_bp
      00272A 08               [12] 1612 	inc	r0
      00272B 74 C9            [12] 1613 	mov	a,#0xc9
      00272D 26               [12] 1614 	add	a,@r0
      00272E F6               [12] 1615 	mov	@r0,a
      00272F E4               [12] 1616 	clr	a
      002730 08               [12] 1617 	inc	r0
      002731 36               [12] 1618 	addc	a,@r0
      002732 F6               [12] 1619 	mov	@r0,a
      002733 0B               [12] 1620 	inc	r3
      002734 BB 00 01         [24] 1621 	cjne	r3,#0x00,00184$
      002737 0C               [12] 1622 	inc	r4
      002738                       1623 00184$:
      002738 C3               [12] 1624 	clr	c
      002739 EB               [12] 1625 	mov	a,r3
      00273A 94 30            [12] 1626 	subb	a,#0x30
      00273C EC               [12] 1627 	mov	a,r4
      00273D 64 80            [12] 1628 	xrl	a,#0x80
      00273F 94 80            [12] 1629 	subb	a,#0x80
      002741 40 AA            [24] 1630 	jc	00124$
                                   1631 ;	walk.c:171: initial.r = rand() % ROWS;
      002743 E5 10            [12] 1632 	mov	a,_bp
      002745 24 07            [12] 1633 	add	a,#0x07
      002747 F8               [12] 1634 	mov	r0,a
      002748 C0 07            [24] 1635 	push	ar7
      00274A C0 01            [24] 1636 	push	ar1
      00274C C0 00            [24] 1637 	push	ar0
      00274E 12 2B 44         [24] 1638 	lcall	_rand
      002751 AD 82            [24] 1639 	mov	r5,dpl
      002753 AE 83            [24] 1640 	mov	r6,dph
      002755 74 30            [12] 1641 	mov	a,#0x30
      002757 C0 E0            [24] 1642 	push	acc
      002759 E4               [12] 1643 	clr	a
      00275A C0 E0            [24] 1644 	push	acc
      00275C 8D 82            [24] 1645 	mov	dpl,r5
      00275E 8E 83            [24] 1646 	mov	dph,r6
      002760 12 2E 48         [24] 1647 	lcall	__modsint
      002763 AD 82            [24] 1648 	mov	r5,dpl
      002765 AE 83            [24] 1649 	mov	r6,dph
      002767 15 81            [12] 1650 	dec	sp
      002769 15 81            [12] 1651 	dec	sp
      00276B D0 00            [24] 1652 	pop	ar0
      00276D D0 01            [24] 1653 	pop	ar1
      00276F A6 05            [24] 1654 	mov	@r0,ar5
      002771 08               [12] 1655 	inc	r0
      002772 A6 06            [24] 1656 	mov	@r0,ar6
      002774 18               [12] 1657 	dec	r0
                                   1658 ;	walk.c:172: initial.c = rand() % COLS;
      002775 74 02            [12] 1659 	mov	a,#0x02
      002777 29               [12] 1660 	add	a,r1
      002778 F8               [12] 1661 	mov	r0,a
      002779 C0 01            [24] 1662 	push	ar1
      00277B C0 00            [24] 1663 	push	ar0
      00277D 12 2B 44         [24] 1664 	lcall	_rand
      002780 AD 82            [24] 1665 	mov	r5,dpl
      002782 AE 83            [24] 1666 	mov	r6,dph
      002784 74 C9            [12] 1667 	mov	a,#0xc9
      002786 C0 E0            [24] 1668 	push	acc
      002788 E4               [12] 1669 	clr	a
      002789 C0 E0            [24] 1670 	push	acc
      00278B 8D 82            [24] 1671 	mov	dpl,r5
      00278D 8E 83            [24] 1672 	mov	dph,r6
      00278F 12 2E 48         [24] 1673 	lcall	__modsint
      002792 AD 82            [24] 1674 	mov	r5,dpl
      002794 AE 83            [24] 1675 	mov	r6,dph
      002796 15 81            [12] 1676 	dec	sp
      002798 15 81            [12] 1677 	dec	sp
      00279A D0 00            [24] 1678 	pop	ar0
      00279C A6 05            [24] 1679 	mov	@r0,ar5
      00279E 08               [12] 1680 	inc	r0
      00279F A6 06            [24] 1681 	mov	@r0,ar6
      0027A1 18               [12] 1682 	dec	r0
                                   1683 ;	walk.c:174: puts("\033[2J\033[?25l");
      0027A2 90 41 5A         [24] 1684 	mov	dptr,#___str_4
      0027A5 75 F0 80         [24] 1685 	mov	b,#0x80
      0027A8 C0 00            [24] 1686 	push	ar0
      0027AA 12 2D 6D         [24] 1687 	lcall	_puts
      0027AD D0 00            [24] 1688 	pop	ar0
      0027AF D0 01            [24] 1689 	pop	ar1
                                   1690 ;	walk.c:175: printf("\033[1;1H% 8u% 8d% 8d", N, initial.r, initial.c);
      0027B1 86 05            [24] 1691 	mov	ar5,@r0
      0027B3 08               [12] 1692 	inc	r0
      0027B4 86 06            [24] 1693 	mov	ar6,@r0
      0027B6 18               [12] 1694 	dec	r0
      0027B7 87 03            [24] 1695 	mov	ar3,@r1
      0027B9 09               [12] 1696 	inc	r1
      0027BA 87 04            [24] 1697 	mov	ar4,@r1
      0027BC 19               [12] 1698 	dec	r1
      0027BD C0 01            [24] 1699 	push	ar1
      0027BF C0 05            [24] 1700 	push	ar5
      0027C1 C0 06            [24] 1701 	push	ar6
      0027C3 C0 03            [24] 1702 	push	ar3
      0027C5 C0 04            [24] 1703 	push	ar4
      0027C7 E5 10            [12] 1704 	mov	a,_bp
      0027C9 24 0B            [12] 1705 	add	a,#0x0b
      0027CB F8               [12] 1706 	mov	r0,a
      0027CC E6               [12] 1707 	mov	a,@r0
      0027CD C0 E0            [24] 1708 	push	acc
      0027CF 08               [12] 1709 	inc	r0
      0027D0 E6               [12] 1710 	mov	a,@r0
      0027D1 C0 E0            [24] 1711 	push	acc
      0027D3 74 65            [12] 1712 	mov	a,#___str_5
      0027D5 C0 E0            [24] 1713 	push	acc
      0027D7 74 41            [12] 1714 	mov	a,#(___str_5 >> 8)
      0027D9 C0 E0            [24] 1715 	push	acc
      0027DB 74 80            [12] 1716 	mov	a,#0x80
      0027DD C0 E0            [24] 1717 	push	acc
      0027DF 12 2D F3         [24] 1718 	lcall	_printf
      0027E2 E5 81            [12] 1719 	mov	a,sp
      0027E4 24 F7            [12] 1720 	add	a,#0xf7
      0027E6 F5 81            [12] 1721 	mov	sp,a
      0027E8 D0 01            [24] 1722 	pop	ar1
      0027EA D0 07            [24] 1723 	pop	ar7
                                   1724 ;	walk.c:177: for (i = 0; i < REG; i++) {
      0027EC E5 10            [12] 1725 	mov	a,_bp
      0027EE 24 05            [12] 1726 	add	a,#0x05
      0027F0 F8               [12] 1727 	mov	r0,a
      0027F1 E4               [12] 1728 	clr	a
      0027F2 F6               [12] 1729 	mov	@r0,a
      0027F3 08               [12] 1730 	inc	r0
      0027F4 F6               [12] 1731 	mov	@r0,a
      0027F5                       1732 00115$:
                                   1733 ;	walk.c:178: neigh[i].r = neigh[REG + i].r * (1 + rand() % 8);
      0027F5 C0 07            [24] 1734 	push	ar7
      0027F7 E5 10            [12] 1735 	mov	a,_bp
      0027F9 24 05            [12] 1736 	add	a,#0x05
      0027FB F8               [12] 1737 	mov	r0,a
      0027FC E6               [12] 1738 	mov	a,@r0
      0027FD 25 E0            [12] 1739 	add	a,acc
      0027FF FB               [12] 1740 	mov	r3,a
      002800 08               [12] 1741 	inc	r0
      002801 E6               [12] 1742 	mov	a,@r0
      002802 33               [12] 1743 	rlc	a
      002803 FC               [12] 1744 	mov	r4,a
      002804 EB               [12] 1745 	mov	a,r3
      002805 2B               [12] 1746 	add	a,r3
      002806 FB               [12] 1747 	mov	r3,a
      002807 EC               [12] 1748 	mov	a,r4
      002808 33               [12] 1749 	rlc	a
      002809 FC               [12] 1750 	mov	r4,a
      00280A E5 10            [12] 1751 	mov	a,_bp
      00280C 24 03            [12] 1752 	add	a,#0x03
      00280E F8               [12] 1753 	mov	r0,a
      00280F EB               [12] 1754 	mov	a,r3
      002810 24 72            [12] 1755 	add	a,#_neigh
      002812 F6               [12] 1756 	mov	@r0,a
      002813 EC               [12] 1757 	mov	a,r4
      002814 34 FE            [12] 1758 	addc	a,#(_neigh >> 8)
      002816 08               [12] 1759 	inc	r0
      002817 F6               [12] 1760 	mov	@r0,a
      002818 E5 10            [12] 1761 	mov	a,_bp
      00281A 24 05            [12] 1762 	add	a,#0x05
      00281C F8               [12] 1763 	mov	r0,a
      00281D 86 06            [24] 1764 	mov	ar6,@r0
      00281F 74 08            [12] 1765 	mov	a,#0x08
      002821 2E               [12] 1766 	add	a,r6
      002822 FE               [12] 1767 	mov	r6,a
      002823 C2 D5            [12] 1768 	clr	F0
      002825 75 F0 04         [24] 1769 	mov	b,#0x04
      002828 EE               [12] 1770 	mov	a,r6
      002829 30 E7 04         [24] 1771 	jnb	acc.7,00186$
      00282C B2 D5            [12] 1772 	cpl	F0
      00282E F4               [12] 1773 	cpl	a
      00282F 04               [12] 1774 	inc	a
      002830                       1775 00186$:
      002830 A4               [48] 1776 	mul	ab
      002831 30 D5 0A         [24] 1777 	jnb	F0,00187$
      002834 F4               [12] 1778 	cpl	a
      002835 24 01            [12] 1779 	add	a,#0x01
      002837 C5 F0            [12] 1780 	xch	a,b
      002839 F4               [12] 1781 	cpl	a
      00283A 34 00            [12] 1782 	addc	a,#0x00
      00283C C5 F0            [12] 1783 	xch	a,b
      00283E                       1784 00187$:
      00283E FE               [12] 1785 	mov	r6,a
      00283F AD F0            [24] 1786 	mov	r5,b
      002841 24 72            [12] 1787 	add	a,#_neigh
      002843 F5 82            [12] 1788 	mov	dpl,a
      002845 ED               [12] 1789 	mov	a,r5
      002846 34 FE            [12] 1790 	addc	a,#(_neigh >> 8)
      002848 F5 83            [12] 1791 	mov	dph,a
      00284A A8 10            [24] 1792 	mov	r0,_bp
      00284C 08               [12] 1793 	inc	r0
      00284D E0               [24] 1794 	movx	a,@dptr
      00284E F6               [12] 1795 	mov	@r0,a
      00284F A3               [24] 1796 	inc	dptr
      002850 E0               [24] 1797 	movx	a,@dptr
      002851 08               [12] 1798 	inc	r0
      002852 F6               [12] 1799 	mov	@r0,a
      002853 C0 06            [24] 1800 	push	ar6
      002855 C0 05            [24] 1801 	push	ar5
      002857 C0 04            [24] 1802 	push	ar4
      002859 C0 03            [24] 1803 	push	ar3
      00285B C0 01            [24] 1804 	push	ar1
      00285D 12 2B 44         [24] 1805 	lcall	_rand
      002860 AA 82            [24] 1806 	mov	r2,dpl
      002862 AF 83            [24] 1807 	mov	r7,dph
      002864 74 08            [12] 1808 	mov	a,#0x08
      002866 C0 E0            [24] 1809 	push	acc
      002868 E4               [12] 1810 	clr	a
      002869 C0 E0            [24] 1811 	push	acc
      00286B 8A 82            [24] 1812 	mov	dpl,r2
      00286D 8F 83            [24] 1813 	mov	dph,r7
      00286F 12 2E 48         [24] 1814 	lcall	__modsint
      002872 AA 82            [24] 1815 	mov	r2,dpl
      002874 AF 83            [24] 1816 	mov	r7,dph
      002876 15 81            [12] 1817 	dec	sp
      002878 15 81            [12] 1818 	dec	sp
      00287A D0 01            [24] 1819 	pop	ar1
      00287C D0 03            [24] 1820 	pop	ar3
      00287E D0 04            [24] 1821 	pop	ar4
      002880 D0 05            [24] 1822 	pop	ar5
      002882 D0 06            [24] 1823 	pop	ar6
      002884 0A               [12] 1824 	inc	r2
      002885 BA 00 01         [24] 1825 	cjne	r2,#0x00,00188$
      002888 0F               [12] 1826 	inc	r7
      002889                       1827 00188$:
      002889 C0 06            [24] 1828 	push	ar6
      00288B C0 05            [24] 1829 	push	ar5
      00288D C0 04            [24] 1830 	push	ar4
      00288F C0 03            [24] 1831 	push	ar3
      002891 C0 01            [24] 1832 	push	ar1
      002893 C0 02            [24] 1833 	push	ar2
      002895 C0 07            [24] 1834 	push	ar7
      002897 A8 10            [24] 1835 	mov	r0,_bp
      002899 08               [12] 1836 	inc	r0
      00289A 86 82            [24] 1837 	mov	dpl,@r0
      00289C 08               [12] 1838 	inc	r0
      00289D 86 83            [24] 1839 	mov	dph,@r0
      00289F 12 2C 3C         [24] 1840 	lcall	__mulint
      0028A2 AA 82            [24] 1841 	mov	r2,dpl
      0028A4 AF 83            [24] 1842 	mov	r7,dph
      0028A6 15 81            [12] 1843 	dec	sp
      0028A8 15 81            [12] 1844 	dec	sp
      0028AA D0 01            [24] 1845 	pop	ar1
      0028AC D0 03            [24] 1846 	pop	ar3
      0028AE D0 04            [24] 1847 	pop	ar4
      0028B0 D0 05            [24] 1848 	pop	ar5
      0028B2 D0 06            [24] 1849 	pop	ar6
      0028B4 E5 10            [12] 1850 	mov	a,_bp
      0028B6 24 03            [12] 1851 	add	a,#0x03
      0028B8 F8               [12] 1852 	mov	r0,a
      0028B9 86 82            [24] 1853 	mov	dpl,@r0
      0028BB 08               [12] 1854 	inc	r0
      0028BC 86 83            [24] 1855 	mov	dph,@r0
      0028BE EA               [12] 1856 	mov	a,r2
      0028BF F0               [24] 1857 	movx	@dptr,a
      0028C0 EF               [12] 1858 	mov	a,r7
      0028C1 A3               [24] 1859 	inc	dptr
      0028C2 F0               [24] 1860 	movx	@dptr,a
                                   1861 ;	walk.c:179: neigh[i].c = neigh[REG + i].c * (1 + rand() % 8);
      0028C3 EB               [12] 1862 	mov	a,r3
      0028C4 24 72            [12] 1863 	add	a,#_neigh
      0028C6 FB               [12] 1864 	mov	r3,a
      0028C7 EC               [12] 1865 	mov	a,r4
      0028C8 34 FE            [12] 1866 	addc	a,#(_neigh >> 8)
      0028CA FC               [12] 1867 	mov	r4,a
      0028CB 74 02            [12] 1868 	mov	a,#0x02
      0028CD 2B               [12] 1869 	add	a,r3
      0028CE FA               [12] 1870 	mov	r2,a
      0028CF E4               [12] 1871 	clr	a
      0028D0 3C               [12] 1872 	addc	a,r4
      0028D1 FF               [12] 1873 	mov	r7,a
      0028D2 EE               [12] 1874 	mov	a,r6
      0028D3 24 72            [12] 1875 	add	a,#_neigh
      0028D5 FE               [12] 1876 	mov	r6,a
      0028D6 ED               [12] 1877 	mov	a,r5
      0028D7 34 FE            [12] 1878 	addc	a,#(_neigh >> 8)
      0028D9 FD               [12] 1879 	mov	r5,a
      0028DA 8E 82            [24] 1880 	mov	dpl,r6
      0028DC 8D 83            [24] 1881 	mov	dph,r5
      0028DE A3               [24] 1882 	inc	dptr
      0028DF A3               [24] 1883 	inc	dptr
      0028E0 E5 10            [12] 1884 	mov	a,_bp
      0028E2 24 03            [12] 1885 	add	a,#0x03
      0028E4 F8               [12] 1886 	mov	r0,a
      0028E5 E0               [24] 1887 	movx	a,@dptr
      0028E6 F6               [12] 1888 	mov	@r0,a
      0028E7 A3               [24] 1889 	inc	dptr
      0028E8 E0               [24] 1890 	movx	a,@dptr
      0028E9 08               [12] 1891 	inc	r0
      0028EA F6               [12] 1892 	mov	@r0,a
      0028EB C0 07            [24] 1893 	push	ar7
      0028ED C0 04            [24] 1894 	push	ar4
      0028EF C0 03            [24] 1895 	push	ar3
      0028F1 C0 02            [24] 1896 	push	ar2
      0028F3 C0 01            [24] 1897 	push	ar1
      0028F5 12 2B 44         [24] 1898 	lcall	_rand
      0028F8 AD 82            [24] 1899 	mov	r5,dpl
      0028FA AE 83            [24] 1900 	mov	r6,dph
      0028FC 74 08            [12] 1901 	mov	a,#0x08
      0028FE C0 E0            [24] 1902 	push	acc
      002900 E4               [12] 1903 	clr	a
      002901 C0 E0            [24] 1904 	push	acc
      002903 8D 82            [24] 1905 	mov	dpl,r5
      002905 8E 83            [24] 1906 	mov	dph,r6
      002907 12 2E 48         [24] 1907 	lcall	__modsint
      00290A AD 82            [24] 1908 	mov	r5,dpl
      00290C AE 83            [24] 1909 	mov	r6,dph
      00290E 15 81            [12] 1910 	dec	sp
      002910 15 81            [12] 1911 	dec	sp
      002912 D0 01            [24] 1912 	pop	ar1
      002914 D0 02            [24] 1913 	pop	ar2
      002916 D0 03            [24] 1914 	pop	ar3
      002918 D0 04            [24] 1915 	pop	ar4
      00291A D0 07            [24] 1916 	pop	ar7
      00291C 0D               [12] 1917 	inc	r5
      00291D BD 00 01         [24] 1918 	cjne	r5,#0x00,00189$
      002920 0E               [12] 1919 	inc	r6
      002921                       1920 00189$:
      002921 C0 07            [24] 1921 	push	ar7
      002923 C0 04            [24] 1922 	push	ar4
      002925 C0 03            [24] 1923 	push	ar3
      002927 C0 02            [24] 1924 	push	ar2
      002929 C0 01            [24] 1925 	push	ar1
      00292B C0 05            [24] 1926 	push	ar5
      00292D C0 06            [24] 1927 	push	ar6
      00292F E5 10            [12] 1928 	mov	a,_bp
      002931 24 03            [12] 1929 	add	a,#0x03
      002933 F8               [12] 1930 	mov	r0,a
      002934 86 82            [24] 1931 	mov	dpl,@r0
      002936 08               [12] 1932 	inc	r0
      002937 86 83            [24] 1933 	mov	dph,@r0
      002939 12 2C 3C         [24] 1934 	lcall	__mulint
      00293C AD 82            [24] 1935 	mov	r5,dpl
      00293E AE 83            [24] 1936 	mov	r6,dph
      002940 15 81            [12] 1937 	dec	sp
      002942 15 81            [12] 1938 	dec	sp
      002944 D0 01            [24] 1939 	pop	ar1
      002946 D0 02            [24] 1940 	pop	ar2
      002948 D0 03            [24] 1941 	pop	ar3
      00294A D0 04            [24] 1942 	pop	ar4
      00294C D0 07            [24] 1943 	pop	ar7
      00294E 8A 82            [24] 1944 	mov	dpl,r2
      002950 8F 83            [24] 1945 	mov	dph,r7
      002952 ED               [12] 1946 	mov	a,r5
      002953 F0               [24] 1947 	movx	@dptr,a
      002954 EE               [12] 1948 	mov	a,r6
      002955 A3               [24] 1949 	inc	dptr
      002956 F0               [24] 1950 	movx	@dptr,a
                                   1951 ;	walk.c:180: printf("% 8d% 8d", neigh[i].r, neigh[i].c);
      002957 8B 82            [24] 1952 	mov	dpl,r3
      002959 8C 83            [24] 1953 	mov	dph,r4
      00295B E0               [24] 1954 	movx	a,@dptr
      00295C FB               [12] 1955 	mov	r3,a
      00295D A3               [24] 1956 	inc	dptr
      00295E E0               [24] 1957 	movx	a,@dptr
      00295F FC               [12] 1958 	mov	r4,a
      002960 C0 07            [24] 1959 	push	ar7
      002962 C0 01            [24] 1960 	push	ar1
      002964 C0 05            [24] 1961 	push	ar5
      002966 C0 06            [24] 1962 	push	ar6
      002968 C0 03            [24] 1963 	push	ar3
      00296A C0 04            [24] 1964 	push	ar4
      00296C 74 78            [12] 1965 	mov	a,#___str_6
      00296E C0 E0            [24] 1966 	push	acc
      002970 74 41            [12] 1967 	mov	a,#(___str_6 >> 8)
      002972 C0 E0            [24] 1968 	push	acc
      002974 74 80            [12] 1969 	mov	a,#0x80
      002976 C0 E0            [24] 1970 	push	acc
      002978 12 2D F3         [24] 1971 	lcall	_printf
      00297B E5 81            [12] 1972 	mov	a,sp
      00297D 24 F9            [12] 1973 	add	a,#0xf9
      00297F F5 81            [12] 1974 	mov	sp,a
      002981 D0 01            [24] 1975 	pop	ar1
      002983 D0 07            [24] 1976 	pop	ar7
                                   1977 ;	walk.c:177: for (i = 0; i < REG; i++) {
      002985 E5 10            [12] 1978 	mov	a,_bp
      002987 24 05            [12] 1979 	add	a,#0x05
      002989 F8               [12] 1980 	mov	r0,a
      00298A 06               [12] 1981 	inc	@r0
      00298B B6 00 02         [24] 1982 	cjne	@r0,#0x00,00190$
      00298E 08               [12] 1983 	inc	r0
      00298F 06               [12] 1984 	inc	@r0
      002990                       1985 00190$:
      002990 E5 10            [12] 1986 	mov	a,_bp
      002992 24 05            [12] 1987 	add	a,#0x05
      002994 F8               [12] 1988 	mov	r0,a
      002995 86 05            [24] 1989 	mov	ar5,@r0
      002997 08               [12] 1990 	inc	r0
      002998 86 06            [24] 1991 	mov	ar6,@r0
      00299A C3               [12] 1992 	clr	c
      00299B ED               [12] 1993 	mov	a,r5
      00299C 94 08            [12] 1994 	subb	a,#0x08
      00299E EE               [12] 1995 	mov	a,r6
      00299F 94 00            [12] 1996 	subb	a,#0x00
      0029A1 D0 07            [24] 1997 	pop	ar7
      0029A3 50 03            [24] 1998 	jnc	00191$
      0029A5 02 27 F5         [24] 1999 	ljmp	00115$
      0029A8                       2000 00191$:
                                   2001 ;	walk.c:183: OE76 = OE76_0;
      0029A8 78 12            [12] 2002 	mov	r0,#_OE76
      0029AA 76 3F            [12] 2003 	mov	@r0,#0x3f
                                   2004 ;	walk.c:184: flashOE(OE76_NC);
      0029AC 75 82 00         [24] 2005 	mov	dpl,#0x00
      0029AF C0 07            [24] 2006 	push	ar7
      0029B1 C0 01            [24] 2007 	push	ar1
      0029B3 12 20 8E         [24] 2008 	lcall	_flashOE
      0029B6 D0 01            [24] 2009 	pop	ar1
      0029B8 D0 07            [24] 2010 	pop	ar7
                                   2011 ;	walk.c:186: walk(&initial);
      0029BA 8F 04            [24] 2012 	mov	ar4,r7
      0029BC 7D 00            [12] 2013 	mov	r5,#0x00
      0029BE 7E 40            [12] 2014 	mov	r6,#0x40
      0029C0 8C 82            [24] 2015 	mov	dpl,r4
      0029C2 8D 83            [24] 2016 	mov	dph,r5
      0029C4 8E F0            [24] 2017 	mov	b,r6
      0029C6 C0 07            [24] 2018 	push	ar7
      0029C8 C0 01            [24] 2019 	push	ar1
      0029CA 12 23 2E         [24] 2020 	lcall	_walk
      0029CD D0 01            [24] 2021 	pop	ar1
      0029CF D0 07            [24] 2022 	pop	ar7
                                   2023 ;	walk.c:188: for (i = 0; i < ROWS; i++)
      0029D1 E5 10            [12] 2024 	mov	a,_bp
      0029D3 24 05            [12] 2025 	add	a,#0x05
      0029D5 F8               [12] 2026 	mov	r0,a
      0029D6 E4               [12] 2027 	clr	a
      0029D7 F6               [12] 2028 	mov	@r0,a
      0029D8 08               [12] 2029 	inc	r0
      0029D9 F6               [12] 2030 	mov	@r0,a
      0029DA 7B 00            [12] 2031 	mov	r3,#0x00
      0029DC 7C 00            [12] 2032 	mov	r4,#0x00
                                   2033 ;	walk.c:189: for (j = 0; j < COLS; j++)
      0029DE                       2034 00131$:
      0029DE E5 10            [12] 2035 	mov	a,_bp
      0029E0 24 03            [12] 2036 	add	a,#0x03
      0029E2 F8               [12] 2037 	mov	r0,a
      0029E3 EB               [12] 2038 	mov	a,r3
      0029E4 24 00            [12] 2039 	add	a,#_g
      0029E6 F6               [12] 2040 	mov	@r0,a
      0029E7 EC               [12] 2041 	mov	a,r4
      0029E8 34 42            [12] 2042 	addc	a,#(_g >> 8)
      0029EA 08               [12] 2043 	inc	r0
      0029EB F6               [12] 2044 	mov	@r0,a
      0029EC 7A 00            [12] 2045 	mov	r2,#0x00
      0029EE 7E 00            [12] 2046 	mov	r6,#0x00
      0029F0                       2047 00117$:
                                   2048 ;	walk.c:190: if (g[i][j] != 0xaau) bang();
      0029F0 E5 10            [12] 2049 	mov	a,_bp
      0029F2 24 03            [12] 2050 	add	a,#0x03
      0029F4 F8               [12] 2051 	mov	r0,a
      0029F5 EA               [12] 2052 	mov	a,r2
      0029F6 26               [12] 2053 	add	a,@r0
      0029F7 F5 82            [12] 2054 	mov	dpl,a
      0029F9 EE               [12] 2055 	mov	a,r6
      0029FA 08               [12] 2056 	inc	r0
      0029FB 36               [12] 2057 	addc	a,@r0
      0029FC F5 83            [12] 2058 	mov	dph,a
      0029FE E0               [24] 2059 	movx	a,@dptr
      0029FF FD               [12] 2060 	mov	r5,a
      002A00 BD AA 02         [24] 2061 	cjne	r5,#0xaa,00192$
      002A03 80 1B            [24] 2062 	sjmp	00118$
      002A05                       2063 00192$:
      002A05 C0 07            [24] 2064 	push	ar7
      002A07 C0 06            [24] 2065 	push	ar6
      002A09 C0 04            [24] 2066 	push	ar4
      002A0B C0 03            [24] 2067 	push	ar3
      002A0D C0 02            [24] 2068 	push	ar2
      002A0F C0 01            [24] 2069 	push	ar1
      002A11 12 20 82         [24] 2070 	lcall	_bang
      002A14 D0 01            [24] 2071 	pop	ar1
      002A16 D0 02            [24] 2072 	pop	ar2
      002A18 D0 03            [24] 2073 	pop	ar3
      002A1A D0 04            [24] 2074 	pop	ar4
      002A1C D0 06            [24] 2075 	pop	ar6
      002A1E D0 07            [24] 2076 	pop	ar7
      002A20                       2077 00118$:
                                   2078 ;	walk.c:189: for (j = 0; j < COLS; j++)
      002A20 0A               [12] 2079 	inc	r2
      002A21 BA 00 01         [24] 2080 	cjne	r2,#0x00,00193$
      002A24 0E               [12] 2081 	inc	r6
      002A25                       2082 00193$:
      002A25 C3               [12] 2083 	clr	c
      002A26 EA               [12] 2084 	mov	a,r2
      002A27 94 C9            [12] 2085 	subb	a,#0xc9
      002A29 EE               [12] 2086 	mov	a,r6
      002A2A 64 80            [12] 2087 	xrl	a,#0x80
      002A2C 94 80            [12] 2088 	subb	a,#0x80
      002A2E 40 C0            [24] 2089 	jc	00117$
                                   2090 ;	walk.c:188: for (i = 0; i < ROWS; i++)
      002A30 74 C9            [12] 2091 	mov	a,#0xc9
      002A32 2B               [12] 2092 	add	a,r3
      002A33 FB               [12] 2093 	mov	r3,a
      002A34 E4               [12] 2094 	clr	a
      002A35 3C               [12] 2095 	addc	a,r4
      002A36 FC               [12] 2096 	mov	r4,a
      002A37 E5 10            [12] 2097 	mov	a,_bp
      002A39 24 05            [12] 2098 	add	a,#0x05
      002A3B F8               [12] 2099 	mov	r0,a
      002A3C 06               [12] 2100 	inc	@r0
      002A3D B6 00 02         [24] 2101 	cjne	@r0,#0x00,00195$
      002A40 08               [12] 2102 	inc	r0
      002A41 06               [12] 2103 	inc	@r0
      002A42                       2104 00195$:
      002A42 E5 10            [12] 2105 	mov	a,_bp
      002A44 24 05            [12] 2106 	add	a,#0x05
      002A46 F8               [12] 2107 	mov	r0,a
      002A47 C3               [12] 2108 	clr	c
      002A48 E6               [12] 2109 	mov	a,@r0
      002A49 94 30            [12] 2110 	subb	a,#0x30
      002A4B 08               [12] 2111 	inc	r0
      002A4C E6               [12] 2112 	mov	a,@r0
      002A4D 64 80            [12] 2113 	xrl	a,#0x80
      002A4F 94 80            [12] 2114 	subb	a,#0x80
      002A51 40 8B            [24] 2115 	jc	00131$
                                   2116 ;	walk.c:192: N++;
      002A53 E5 10            [12] 2117 	mov	a,_bp
      002A55 24 0B            [12] 2118 	add	a,#0x0b
      002A57 F8               [12] 2119 	mov	r0,a
      002A58 06               [12] 2120 	inc	@r0
      002A59 B6 00 02         [24] 2121 	cjne	@r0,#0x00,00197$
      002A5C 08               [12] 2122 	inc	r0
      002A5D 06               [12] 2123 	inc	@r0
      002A5E                       2124 00197$:
      002A5E 02 26 DA         [24] 2125 	ljmp	00108$
      002A61                       2126 00110$:
                                   2127 ;	walk.c:195: EA = 0;
                                   2128 ;	assignBit
      002A61 C2 AF            [12] 2129 	clr	_EA
                                   2130 ;	walk.c:197: puts("\033[2J\033[?25h");
      002A63 90 41 81         [24] 2131 	mov	dptr,#___str_7
      002A66 75 F0 80         [24] 2132 	mov	b,#0x80
      002A69 12 2D 6D         [24] 2133 	lcall	_puts
                                   2134 ;	walk.c:201: __endasm;
      002A6C 02 00 00         [24] 2135 	ljmp	0
                                   2136 ;	walk.c:203: return 0;
      002A6F 90 00 00         [24] 2137 	mov	dptr,#0x0000
                                   2138 ;	walk.c:204: }
      002A72 85 10 81         [24] 2139 	mov	sp,_bp
      002A75 D0 10            [24] 2140 	pop	_bp
      002A77 22               [24] 2141 	ret
                                   2142 ;------------------------------------------------------------
                                   2143 ;Allocation info for local variables in function 'stinit'
                                   2144 ;------------------------------------------------------------
                                   2145 ;	walk.c:206: static void stinit(void) {
                                   2146 ;	-----------------------------------------
                                   2147 ;	 function stinit
                                   2148 ;	-----------------------------------------
      002A78                       2149 _stinit:
                                   2150 ;	walk.c:207: sp = -1;
      002A78 90 FE 70         [24] 2151 	mov	dptr,#_sp
      002A7B 74 FF            [12] 2152 	mov	a,#0xff
      002A7D F0               [24] 2153 	movx	@dptr,a
      002A7E A3               [24] 2154 	inc	dptr
      002A7F F0               [24] 2155 	movx	@dptr,a
                                   2156 ;	walk.c:208: return;
                                   2157 ;	walk.c:209: }
      002A80 22               [24] 2158 	ret
                                   2159 ;------------------------------------------------------------
                                   2160 ;Allocation info for local variables in function 'stpush'
                                   2161 ;------------------------------------------------------------
                                   2162 ;t                         Allocated to registers r5 r6 r7 
                                   2163 ;------------------------------------------------------------
                                   2164 ;	walk.c:211: static uint8_t stpush(struct node *t) {
                                   2165 ;	-----------------------------------------
                                   2166 ;	 function stpush
                                   2167 ;	-----------------------------------------
      002A81                       2168 _stpush:
      002A81 AD 82            [24] 2169 	mov	r5,dpl
      002A83 AE 83            [24] 2170 	mov	r6,dph
      002A85 AF F0            [24] 2171 	mov	r7,b
                                   2172 ;	walk.c:212: if (sp == (SMAX - 1)) return 0u;
      002A87 90 FE 70         [24] 2173 	mov	dptr,#_sp
      002A8A E0               [24] 2174 	movx	a,@dptr
      002A8B FB               [12] 2175 	mov	r3,a
      002A8C A3               [24] 2176 	inc	dptr
      002A8D E0               [24] 2177 	movx	a,@dptr
      002A8E FC               [12] 2178 	mov	r4,a
      002A8F BB AF 07         [24] 2179 	cjne	r3,#0xaf,00102$
      002A92 BC 25 04         [24] 2180 	cjne	r4,#0x25,00102$
      002A95 75 82 00         [24] 2181 	mov	dpl,#0x00
      002A98 22               [24] 2182 	ret
      002A99                       2183 00102$:
                                   2184 ;	walk.c:213: sp++;
      002A99 90 FE 70         [24] 2185 	mov	dptr,#_sp
      002A9C 74 01            [12] 2186 	mov	a,#0x01
      002A9E 2B               [12] 2187 	add	a,r3
      002A9F F0               [24] 2188 	movx	@dptr,a
      002AA0 E4               [12] 2189 	clr	a
      002AA1 3C               [12] 2190 	addc	a,r4
      002AA2 A3               [24] 2191 	inc	dptr
      002AA3 F0               [24] 2192 	movx	@dptr,a
                                   2193 ;	walk.c:214: stack[sp] = *t;
      002AA4 90 FE 70         [24] 2194 	mov	dptr,#_sp
      002AA7 E0               [24] 2195 	movx	a,@dptr
      002AA8 FB               [12] 2196 	mov	r3,a
      002AA9 A3               [24] 2197 	inc	dptr
      002AAA E0               [24] 2198 	movx	a,@dptr
      002AAB FC               [12] 2199 	mov	r4,a
      002AAC EB               [12] 2200 	mov	a,r3
      002AAD 2B               [12] 2201 	add	a,r3
      002AAE FB               [12] 2202 	mov	r3,a
      002AAF EC               [12] 2203 	mov	a,r4
      002AB0 33               [12] 2204 	rlc	a
      002AB1 FC               [12] 2205 	mov	r4,a
      002AB2 EB               [12] 2206 	mov	a,r3
      002AB3 2B               [12] 2207 	add	a,r3
      002AB4 FB               [12] 2208 	mov	r3,a
      002AB5 EC               [12] 2209 	mov	a,r4
      002AB6 33               [12] 2210 	rlc	a
      002AB7 FC               [12] 2211 	mov	r4,a
      002AB8 EB               [12] 2212 	mov	a,r3
      002AB9 24 B0            [12] 2213 	add	a,#_stack
      002ABB FB               [12] 2214 	mov	r3,a
      002ABC EC               [12] 2215 	mov	a,r4
      002ABD 34 67            [12] 2216 	addc	a,#(_stack >> 8)
      002ABF FC               [12] 2217 	mov	r4,a
      002AC0 7A 00            [12] 2218 	mov	r2,#0x00
      002AC2 74 04            [12] 2219 	mov	a,#0x04
      002AC4 C0 E0            [24] 2220 	push	acc
      002AC6 E4               [12] 2221 	clr	a
      002AC7 C0 E0            [24] 2222 	push	acc
      002AC9 C0 05            [24] 2223 	push	ar5
      002ACB C0 06            [24] 2224 	push	ar6
      002ACD C0 07            [24] 2225 	push	ar7
      002ACF 8B 82            [24] 2226 	mov	dpl,r3
      002AD1 8C 83            [24] 2227 	mov	dph,r4
      002AD3 8A F0            [24] 2228 	mov	b,r2
      002AD5 12 2C DA         [24] 2229 	lcall	___memcpy
      002AD8 E5 81            [12] 2230 	mov	a,sp
      002ADA 24 FB            [12] 2231 	add	a,#0xfb
      002ADC F5 81            [12] 2232 	mov	sp,a
                                   2233 ;	walk.c:215: return 1u;
      002ADE 75 82 01         [24] 2234 	mov	dpl,#0x01
                                   2235 ;	walk.c:216: }
      002AE1 22               [24] 2236 	ret
                                   2237 ;------------------------------------------------------------
                                   2238 ;Allocation info for local variables in function 'stpop'
                                   2239 ;------------------------------------------------------------
                                   2240 ;t                         Allocated to registers r5 r6 r7 
                                   2241 ;------------------------------------------------------------
                                   2242 ;	walk.c:218: static uint8_t stpop(struct node *t) {
                                   2243 ;	-----------------------------------------
                                   2244 ;	 function stpop
                                   2245 ;	-----------------------------------------
      002AE2                       2246 _stpop:
      002AE2 AD 82            [24] 2247 	mov	r5,dpl
      002AE4 AE 83            [24] 2248 	mov	r6,dph
      002AE6 AF F0            [24] 2249 	mov	r7,b
                                   2250 ;	walk.c:219: if (sp == -1) return 0u;
      002AE8 90 FE 70         [24] 2251 	mov	dptr,#_sp
      002AEB E0               [24] 2252 	movx	a,@dptr
      002AEC FB               [12] 2253 	mov	r3,a
      002AED A3               [24] 2254 	inc	dptr
      002AEE E0               [24] 2255 	movx	a,@dptr
      002AEF FC               [12] 2256 	mov	r4,a
      002AF0 BB FF 07         [24] 2257 	cjne	r3,#0xff,00102$
      002AF3 BC FF 04         [24] 2258 	cjne	r4,#0xff,00102$
      002AF6 75 82 00         [24] 2259 	mov	dpl,#0x00
      002AF9 22               [24] 2260 	ret
      002AFA                       2261 00102$:
                                   2262 ;	walk.c:220: *t = stack[sp];
      002AFA EB               [12] 2263 	mov	a,r3
      002AFB 2B               [12] 2264 	add	a,r3
      002AFC FB               [12] 2265 	mov	r3,a
      002AFD EC               [12] 2266 	mov	a,r4
      002AFE 33               [12] 2267 	rlc	a
      002AFF FC               [12] 2268 	mov	r4,a
      002B00 EB               [12] 2269 	mov	a,r3
      002B01 2B               [12] 2270 	add	a,r3
      002B02 FB               [12] 2271 	mov	r3,a
      002B03 EC               [12] 2272 	mov	a,r4
      002B04 33               [12] 2273 	rlc	a
      002B05 FC               [12] 2274 	mov	r4,a
      002B06 EB               [12] 2275 	mov	a,r3
      002B07 24 B0            [12] 2276 	add	a,#_stack
      002B09 FB               [12] 2277 	mov	r3,a
      002B0A EC               [12] 2278 	mov	a,r4
      002B0B 34 67            [12] 2279 	addc	a,#(_stack >> 8)
      002B0D FC               [12] 2280 	mov	r4,a
      002B0E 7A 00            [12] 2281 	mov	r2,#0x00
      002B10 74 04            [12] 2282 	mov	a,#0x04
      002B12 C0 E0            [24] 2283 	push	acc
      002B14 E4               [12] 2284 	clr	a
      002B15 C0 E0            [24] 2285 	push	acc
      002B17 C0 03            [24] 2286 	push	ar3
      002B19 C0 04            [24] 2287 	push	ar4
      002B1B C0 02            [24] 2288 	push	ar2
      002B1D 8D 82            [24] 2289 	mov	dpl,r5
      002B1F 8E 83            [24] 2290 	mov	dph,r6
      002B21 8F F0            [24] 2291 	mov	b,r7
      002B23 12 2C DA         [24] 2292 	lcall	___memcpy
      002B26 E5 81            [12] 2293 	mov	a,sp
      002B28 24 FB            [12] 2294 	add	a,#0xfb
      002B2A F5 81            [12] 2295 	mov	sp,a
                                   2296 ;	walk.c:221: sp--;
      002B2C 90 FE 70         [24] 2297 	mov	dptr,#_sp
      002B2F E0               [24] 2298 	movx	a,@dptr
      002B30 24 FF            [12] 2299 	add	a,#0xff
      002B32 FE               [12] 2300 	mov	r6,a
      002B33 A3               [24] 2301 	inc	dptr
      002B34 E0               [24] 2302 	movx	a,@dptr
      002B35 34 FF            [12] 2303 	addc	a,#0xff
      002B37 FF               [12] 2304 	mov	r7,a
      002B38 90 FE 70         [24] 2305 	mov	dptr,#_sp
      002B3B EE               [12] 2306 	mov	a,r6
      002B3C F0               [24] 2307 	movx	@dptr,a
      002B3D EF               [12] 2308 	mov	a,r7
      002B3E A3               [24] 2309 	inc	dptr
      002B3F F0               [24] 2310 	movx	@dptr,a
                                   2311 ;	walk.c:222: return 1u;
      002B40 75 82 01         [24] 2312 	mov	dpl,#0x01
                                   2313 ;	walk.c:223: }
      002B43 22               [24] 2314 	ret
                                   2315 	.area CSEG    (CODE)
                                   2316 	.area CONST   (CODE)
                                   2317 	.area CONST   (CODE)
      004126                       2318 ___str_0:
      004126 4D 65 6D 6F 72 79 20  2319 	.ascii "Memory error"
             65 72 72 6F 72
      004132 00                    2320 	.db 0x00
                                   2321 	.area CSEG    (CODE)
                                   2322 	.area CONST   (CODE)
      004133                       2323 ___str_1:
      004133 1B                    2324 	.db 0x1b
      004134 5B 25 64 3B 25 64 48  2325 	.ascii "[%d;%dHo"
             6F
      00413C 00                    2326 	.db 0x00
                                   2327 	.area CSEG    (CODE)
                                   2328 	.area CONST   (CODE)
      00413D                       2329 ___str_2:
      00413D 1B                    2330 	.db 0x1b
      00413E 5B 32 3B 31 48 25 20  2331 	.ascii "[2;1H% 8d% 8d% 8d"
             38 64 25 20 38 64 25
             20 38 64
      00414F 00                    2332 	.db 0x00
                                   2333 	.area CSEG    (CODE)
                                   2334 	.area CONST   (CODE)
      004150                       2335 ___str_3:
      004150 1B                    2336 	.db 0x1b
      004151 5B 25 64 3B 25 64 48  2337 	.ascii "[%d;%dH."
             2E
      004159 00                    2338 	.db 0x00
                                   2339 	.area CSEG    (CODE)
                                   2340 	.area CONST   (CODE)
      00415A                       2341 ___str_4:
      00415A 1B                    2342 	.db 0x1b
      00415B 5B 32 4A              2343 	.ascii "[2J"
      00415E 1B                    2344 	.db 0x1b
      00415F 5B 3F 32 35 6C        2345 	.ascii "[?25l"
      004164 00                    2346 	.db 0x00
                                   2347 	.area CSEG    (CODE)
                                   2348 	.area CONST   (CODE)
      004165                       2349 ___str_5:
      004165 1B                    2350 	.db 0x1b
      004166 5B 31 3B 31 48 25 20  2351 	.ascii "[1;1H% 8u% 8d% 8d"
             38 75 25 20 38 64 25
             20 38 64
      004177 00                    2352 	.db 0x00
                                   2353 	.area CSEG    (CODE)
                                   2354 	.area CONST   (CODE)
      004178                       2355 ___str_6:
      004178 25 20 38 64 25 20 38  2356 	.ascii "% 8d% 8d"
             64
      004180 00                    2357 	.db 0x00
                                   2358 	.area CSEG    (CODE)
                                   2359 	.area CONST   (CODE)
      004181                       2360 ___str_7:
      004181 1B                    2361 	.db 0x1b
      004182 5B 32 4A              2362 	.ascii "[2J"
      004185 1B                    2363 	.db 0x1b
      004186 5B 3F 32 35 68        2364 	.ascii "[?25h"
      00418B 00                    2365 	.db 0x00
                                   2366 	.area CSEG    (CODE)
                                   2367 	.area XINIT   (CODE)
      004197                       2368 __xinit__neigh:
      004197 FF FF                 2369 	.byte #0xff, #0xff	; -1
      004199 01 00                 2370 	.byte #0x01, #0x00	;  1
      00419B FF FF                 2371 	.byte #0xff, #0xff	; -1
      00419D FF FF                 2372 	.byte #0xff, #0xff	; -1
      00419F 01 00                 2373 	.byte #0x01, #0x00	;  1
      0041A1 FF FF                 2374 	.byte #0xff, #0xff	; -1
      0041A3 01 00                 2375 	.byte #0x01, #0x00	;  1
      0041A5 01 00                 2376 	.byte #0x01, #0x00	;  1
      0041A7 FF FF                 2377 	.byte #0xff, #0xff	; -1
      0041A9 00 00                 2378 	.byte #0x00, #0x00	;  0
      0041AB 00 00                 2379 	.byte #0x00, #0x00	;  0
      0041AD FF FF                 2380 	.byte #0xff, #0xff	; -1
      0041AF 01 00                 2381 	.byte #0x01, #0x00	;  1
      0041B1 00 00                 2382 	.byte #0x00, #0x00	;  0
      0041B3 00 00                 2383 	.byte #0x00, #0x00	;  0
      0041B5 01 00                 2384 	.byte #0x01, #0x00	;  1
      0041B7 FF FF                 2385 	.byte #0xff, #0xff	; -1
      0041B9 01 00                 2386 	.byte #0x01, #0x00	;  1
      0041BB FF FF                 2387 	.byte #0xff, #0xff	; -1
      0041BD FF FF                 2388 	.byte #0xff, #0xff	; -1
      0041BF 01 00                 2389 	.byte #0x01, #0x00	;  1
      0041C1 FF FF                 2390 	.byte #0xff, #0xff	; -1
      0041C3 01 00                 2391 	.byte #0x01, #0x00	;  1
      0041C5 01 00                 2392 	.byte #0x01, #0x00	;  1
      0041C7 FF FF                 2393 	.byte #0xff, #0xff	; -1
      0041C9 00 00                 2394 	.byte #0x00, #0x00	;  0
      0041CB 00 00                 2395 	.byte #0x00, #0x00	;  0
      0041CD FF FF                 2396 	.byte #0xff, #0xff	; -1
      0041CF 01 00                 2397 	.byte #0x01, #0x00	;  1
      0041D1 00 00                 2398 	.byte #0x00, #0x00	;  0
      0041D3 00 00                 2399 	.byte #0x00, #0x00	;  0
      0041D5 01 00                 2400 	.byte #0x01, #0x00	;  1
                                   2401 	.area CABS    (ABS,CODE)
