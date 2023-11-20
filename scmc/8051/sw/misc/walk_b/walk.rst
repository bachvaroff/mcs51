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
      004310                        323 	.ds 9648
      0068C0                        324 _queue:
      0068C0                        325 	.ds 38592
      00FF80                        326 _hp:
      00FF80                        327 	.ds 2
      00FF82                        328 _tp:
      00FF82                        329 	.ds 2
                           00F006   330 _OEreg	=	0xf006
                                    331 ;--------------------------------------------------------
                                    332 ; absolute external ram data
                                    333 ;--------------------------------------------------------
                                    334 	.area XABS    (ABS,XDATA)
                                    335 ;--------------------------------------------------------
                                    336 ; external initialized ram data
                                    337 ;--------------------------------------------------------
                                    338 	.area XISEG   (XDATA)
      00FF84                        339 _neigh:
      00FF84                        340 	.ds 64
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
      002006 02 27 0E         [24]  379 	ljmp	_main
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
                                    446 ;Allocation info for local variables in function 'bang'
                                    447 ;------------------------------------------------------------
                                    448 ;	walk.c:38: static void bang(void) {
                                    449 ;	-----------------------------------------
                                    450 ;	 function bang
                                    451 ;	-----------------------------------------
      00207F                        452 _bang:
                           000007   453 	ar7 = 0x07
                           000006   454 	ar6 = 0x06
                           000005   455 	ar5 = 0x05
                           000004   456 	ar4 = 0x04
                           000003   457 	ar3 = 0x03
                           000002   458 	ar2 = 0x02
                           000001   459 	ar1 = 0x01
                           000000   460 	ar0 = 0x00
                                    461 ;	walk.c:39: (void)puts("Memory error");
      00207F 90 42 4F         [24]  462 	mov	dptr,#___str_0
      002082 75 F0 80         [24]  463 	mov	b,#0x80
      002085 12 2E 96         [24]  464 	lcall	_puts
                                    465 ;	walk.c:35: PCON |= 2;
      002088 43 87 02         [24]  466 	orl	_PCON,#0x02
                                    467 ;	walk.c:42: return;
                                    468 ;	walk.c:43: }
      00208B 22               [24]  469 	ret
                                    470 ;------------------------------------------------------------
                                    471 ;Allocation info for local variables in function 'setOE'
                                    472 ;------------------------------------------------------------
                                    473 ;mask                      Allocated to registers r7 
                                    474 ;------------------------------------------------------------
                                    475 ;	walk.c:85: static void setOE(uint8_t mask) {
                                    476 ;	-----------------------------------------
                                    477 ;	 function setOE
                                    478 ;	-----------------------------------------
      00208C                        479 _setOE:
      00208C AF 82            [24]  480 	mov	r7,dpl
                                    481 ;	walk.c:86: OE76 |= mask;
      00208E 78 12            [12]  482 	mov	r0,#_OE76
      002090 EF               [12]  483 	mov	a,r7
      002091 46               [12]  484 	orl	a,@r0
      002092 F6               [12]  485 	mov	@r0,a
                                    486 ;	walk.c:87: P1_7 = 0;
                                    487 ;	assignBit
      002093 C2 97            [12]  488 	clr	_P1_7
                                    489 ;	walk.c:92: __endasm;
      002095 00               [12]  490 	nop
      002096 00               [12]  491 	nop
      002097 00               [12]  492 	nop
                                    493 ;	walk.c:93: OEreg = OE76;
      002098 78 12            [12]  494 	mov	r0,#_OE76
      00209A 90 F0 06         [24]  495 	mov	dptr,#_OEreg
      00209D E6               [12]  496 	mov	a,@r0
      00209E F0               [24]  497 	movx	@dptr,a
                                    498 ;	walk.c:94: P1_7 = 1;
                                    499 ;	assignBit
      00209F D2 97            [12]  500 	setb	_P1_7
                                    501 ;	walk.c:99: __endasm;
      0020A1 00               [12]  502 	nop
      0020A2 00               [12]  503 	nop
      0020A3 00               [12]  504 	nop
                                    505 ;	walk.c:101: return;
                                    506 ;	walk.c:102: }
      0020A4 22               [24]  507 	ret
                                    508 ;------------------------------------------------------------
                                    509 ;Allocation info for local variables in function 'unsetOE'
                                    510 ;------------------------------------------------------------
                                    511 ;mask                      Allocated to registers r7 
                                    512 ;------------------------------------------------------------
                                    513 ;	walk.c:104: static void unsetOE(uint8_t mask) {
                                    514 ;	-----------------------------------------
                                    515 ;	 function unsetOE
                                    516 ;	-----------------------------------------
      0020A5                        517 _unsetOE:
                                    518 ;	walk.c:105: OE76 &= ~mask;
      0020A5 E5 82            [12]  519 	mov	a,dpl
      0020A7 F4               [12]  520 	cpl	a
      0020A8 FF               [12]  521 	mov	r7,a
      0020A9 78 12            [12]  522 	mov	r0,#_OE76
      0020AB 56               [12]  523 	anl	a,@r0
      0020AC F6               [12]  524 	mov	@r0,a
                                    525 ;	walk.c:106: P1_7 = 0;
                                    526 ;	assignBit
      0020AD C2 97            [12]  527 	clr	_P1_7
                                    528 ;	walk.c:111: __endasm;
      0020AF 00               [12]  529 	nop
      0020B0 00               [12]  530 	nop
      0020B1 00               [12]  531 	nop
                                    532 ;	walk.c:112: OEreg = OE76;
      0020B2 78 12            [12]  533 	mov	r0,#_OE76
      0020B4 90 F0 06         [24]  534 	mov	dptr,#_OEreg
      0020B7 E6               [12]  535 	mov	a,@r0
      0020B8 F0               [24]  536 	movx	@dptr,a
                                    537 ;	walk.c:113: P1_7 = 1;
                                    538 ;	assignBit
      0020B9 D2 97            [12]  539 	setb	_P1_7
                                    540 ;	walk.c:118: __endasm;
      0020BB 00               [12]  541 	nop
      0020BC 00               [12]  542 	nop
      0020BD 00               [12]  543 	nop
                                    544 ;	walk.c:120: return;
                                    545 ;	walk.c:121: }
      0020BE 22               [24]  546 	ret
                                    547 ;------------------------------------------------------------
                                    548 ;Allocation info for local variables in function 'flipOE'
                                    549 ;------------------------------------------------------------
                                    550 ;mask                      Allocated to registers r7 
                                    551 ;------------------------------------------------------------
                                    552 ;	walk.c:123: static void flipOE(uint8_t mask) {
                                    553 ;	-----------------------------------------
                                    554 ;	 function flipOE
                                    555 ;	-----------------------------------------
      0020BF                        556 _flipOE:
      0020BF AF 82            [24]  557 	mov	r7,dpl
                                    558 ;	walk.c:124: OE76 ^= mask;
      0020C1 78 12            [12]  559 	mov	r0,#_OE76
      0020C3 EF               [12]  560 	mov	a,r7
      0020C4 66               [12]  561 	xrl	a,@r0
      0020C5 F6               [12]  562 	mov	@r0,a
                                    563 ;	walk.c:125: P1_7 = 0;
                                    564 ;	assignBit
      0020C6 C2 97            [12]  565 	clr	_P1_7
                                    566 ;	walk.c:130: __endasm;
      0020C8 00               [12]  567 	nop
      0020C9 00               [12]  568 	nop
      0020CA 00               [12]  569 	nop
                                    570 ;	walk.c:131: OEreg = OE76;
      0020CB 78 12            [12]  571 	mov	r0,#_OE76
      0020CD 90 F0 06         [24]  572 	mov	dptr,#_OEreg
      0020D0 E6               [12]  573 	mov	a,@r0
      0020D1 F0               [24]  574 	movx	@dptr,a
                                    575 ;	walk.c:132: P1_7 = 1;
                                    576 ;	assignBit
      0020D2 D2 97            [12]  577 	setb	_P1_7
                                    578 ;	walk.c:137: __endasm;
      0020D4 00               [12]  579 	nop
      0020D5 00               [12]  580 	nop
      0020D6 00               [12]  581 	nop
                                    582 ;	walk.c:139: return;
                                    583 ;	walk.c:140: }
      0020D7 22               [24]  584 	ret
                                    585 ;------------------------------------------------------------
                                    586 ;Allocation info for local variables in function 'update'
                                    587 ;------------------------------------------------------------
                                    588 ;cur                       Allocated to stack - _bp -5
                                    589 ;j                         Allocated to stack - _bp -6
                                    590 ;t                         Allocated to stack - _bp +1
                                    591 ;sloc0                     Allocated to stack - _bp +4
                                    592 ;sloc1                     Allocated to stack - _bp +6
                                    593 ;sloc2                     Allocated to stack - _bp +8
                                    594 ;------------------------------------------------------------
                                    595 ;	walk.c:142: static uint8_t update(struct node *t, struct node *cur, uint8_t j) {
                                    596 ;	-----------------------------------------
                                    597 ;	 function update
                                    598 ;	-----------------------------------------
      0020D8                        599 _update:
      0020D8 C0 10            [24]  600 	push	_bp
      0020DA 85 81 10         [24]  601 	mov	_bp,sp
      0020DD C0 82            [24]  602 	push	dpl
      0020DF C0 83            [24]  603 	push	dph
      0020E1 C0 F0            [24]  604 	push	b
      0020E3 E5 81            [12]  605 	mov	a,sp
      0020E5 24 07            [12]  606 	add	a,#0x07
      0020E7 F5 81            [12]  607 	mov	sp,a
                                    608 ;	walk.c:143: t->r = cur->r + neigh[j].r;
      0020E9 E5 10            [12]  609 	mov	a,_bp
      0020EB 24 FB            [12]  610 	add	a,#0xfb
      0020ED F8               [12]  611 	mov	r0,a
      0020EE 86 02            [24]  612 	mov	ar2,@r0
      0020F0 08               [12]  613 	inc	r0
      0020F1 86 03            [24]  614 	mov	ar3,@r0
      0020F3 08               [12]  615 	inc	r0
      0020F4 86 04            [24]  616 	mov	ar4,@r0
      0020F6 8A 82            [24]  617 	mov	dpl,r2
      0020F8 8B 83            [24]  618 	mov	dph,r3
      0020FA 8C F0            [24]  619 	mov	b,r4
      0020FC E5 10            [12]  620 	mov	a,_bp
      0020FE 24 04            [12]  621 	add	a,#0x04
      002100 F8               [12]  622 	mov	r0,a
      002101 12 2F 55         [24]  623 	lcall	__gptrget
      002104 F6               [12]  624 	mov	@r0,a
      002105 A3               [24]  625 	inc	dptr
      002106 12 2F 55         [24]  626 	lcall	__gptrget
      002109 08               [12]  627 	inc	r0
      00210A F6               [12]  628 	mov	@r0,a
      00210B E5 10            [12]  629 	mov	a,_bp
      00210D 24 FA            [12]  630 	add	a,#0xfa
      00210F F8               [12]  631 	mov	r0,a
      002110 E5 10            [12]  632 	mov	a,_bp
      002112 24 06            [12]  633 	add	a,#0x06
      002114 F9               [12]  634 	mov	r1,a
      002115 E6               [12]  635 	mov	a,@r0
      002116 75 F0 04         [24]  636 	mov	b,#0x04
      002119 A4               [48]  637 	mul	ab
      00211A F7               [12]  638 	mov	@r1,a
      00211B 09               [12]  639 	inc	r1
      00211C A7 F0            [24]  640 	mov	@r1,b
      00211E E5 10            [12]  641 	mov	a,_bp
      002120 24 06            [12]  642 	add	a,#0x06
      002122 F8               [12]  643 	mov	r0,a
      002123 E6               [12]  644 	mov	a,@r0
      002124 24 84            [12]  645 	add	a,#_neigh
      002126 F5 82            [12]  646 	mov	dpl,a
      002128 08               [12]  647 	inc	r0
      002129 E6               [12]  648 	mov	a,@r0
      00212A 34 FF            [12]  649 	addc	a,#(_neigh >> 8)
      00212C F5 83            [12]  650 	mov	dph,a
      00212E E0               [24]  651 	movx	a,@dptr
      00212F FF               [12]  652 	mov	r7,a
      002130 A3               [24]  653 	inc	dptr
      002131 E0               [24]  654 	movx	a,@dptr
      002132 FE               [12]  655 	mov	r6,a
      002133 E5 10            [12]  656 	mov	a,_bp
      002135 24 04            [12]  657 	add	a,#0x04
      002137 F8               [12]  658 	mov	r0,a
      002138 EF               [12]  659 	mov	a,r7
      002139 26               [12]  660 	add	a,@r0
      00213A FF               [12]  661 	mov	r7,a
      00213B EE               [12]  662 	mov	a,r6
      00213C 08               [12]  663 	inc	r0
      00213D 36               [12]  664 	addc	a,@r0
      00213E FE               [12]  665 	mov	r6,a
      00213F A8 10            [24]  666 	mov	r0,_bp
      002141 08               [12]  667 	inc	r0
      002142 86 82            [24]  668 	mov	dpl,@r0
      002144 08               [12]  669 	inc	r0
      002145 86 83            [24]  670 	mov	dph,@r0
      002147 08               [12]  671 	inc	r0
      002148 86 F0            [24]  672 	mov	b,@r0
      00214A EF               [12]  673 	mov	a,r7
      00214B 12 2D 4A         [24]  674 	lcall	__gptrput
      00214E A3               [24]  675 	inc	dptr
      00214F EE               [12]  676 	mov	a,r6
      002150 12 2D 4A         [24]  677 	lcall	__gptrput
                                    678 ;	walk.c:144: t->c = cur->c + neigh[j].c;
      002153 A8 10            [24]  679 	mov	r0,_bp
      002155 08               [12]  680 	inc	r0
      002156 E5 10            [12]  681 	mov	a,_bp
      002158 24 08            [12]  682 	add	a,#0x08
      00215A F9               [12]  683 	mov	r1,a
      00215B 74 02            [12]  684 	mov	a,#0x02
      00215D 26               [12]  685 	add	a,@r0
      00215E F7               [12]  686 	mov	@r1,a
      00215F E4               [12]  687 	clr	a
      002160 08               [12]  688 	inc	r0
      002161 36               [12]  689 	addc	a,@r0
      002162 09               [12]  690 	inc	r1
      002163 F7               [12]  691 	mov	@r1,a
      002164 08               [12]  692 	inc	r0
      002165 09               [12]  693 	inc	r1
      002166 E6               [12]  694 	mov	a,@r0
      002167 F7               [12]  695 	mov	@r1,a
      002168 74 02            [12]  696 	mov	a,#0x02
      00216A 2A               [12]  697 	add	a,r2
      00216B FA               [12]  698 	mov	r2,a
      00216C E4               [12]  699 	clr	a
      00216D 3B               [12]  700 	addc	a,r3
      00216E FB               [12]  701 	mov	r3,a
      00216F 8A 82            [24]  702 	mov	dpl,r2
      002171 8B 83            [24]  703 	mov	dph,r3
      002173 8C F0            [24]  704 	mov	b,r4
      002175 12 2F 55         [24]  705 	lcall	__gptrget
      002178 FA               [12]  706 	mov	r2,a
      002179 A3               [24]  707 	inc	dptr
      00217A 12 2F 55         [24]  708 	lcall	__gptrget
      00217D FB               [12]  709 	mov	r3,a
      00217E E5 10            [12]  710 	mov	a,_bp
      002180 24 06            [12]  711 	add	a,#0x06
      002182 F8               [12]  712 	mov	r0,a
      002183 E6               [12]  713 	mov	a,@r0
      002184 24 84            [12]  714 	add	a,#_neigh
      002186 FC               [12]  715 	mov	r4,a
      002187 08               [12]  716 	inc	r0
      002188 E6               [12]  717 	mov	a,@r0
      002189 34 FF            [12]  718 	addc	a,#(_neigh >> 8)
      00218B FD               [12]  719 	mov	r5,a
      00218C 8C 82            [24]  720 	mov	dpl,r4
      00218E 8D 83            [24]  721 	mov	dph,r5
      002190 A3               [24]  722 	inc	dptr
      002191 A3               [24]  723 	inc	dptr
      002192 E0               [24]  724 	movx	a,@dptr
      002193 FC               [12]  725 	mov	r4,a
      002194 A3               [24]  726 	inc	dptr
      002195 E0               [24]  727 	movx	a,@dptr
      002196 FD               [12]  728 	mov	r5,a
      002197 EC               [12]  729 	mov	a,r4
      002198 2A               [12]  730 	add	a,r2
      002199 FA               [12]  731 	mov	r2,a
      00219A ED               [12]  732 	mov	a,r5
      00219B 3B               [12]  733 	addc	a,r3
      00219C FB               [12]  734 	mov	r3,a
      00219D E5 10            [12]  735 	mov	a,_bp
      00219F 24 08            [12]  736 	add	a,#0x08
      0021A1 F8               [12]  737 	mov	r0,a
      0021A2 86 82            [24]  738 	mov	dpl,@r0
      0021A4 08               [12]  739 	inc	r0
      0021A5 86 83            [24]  740 	mov	dph,@r0
      0021A7 08               [12]  741 	inc	r0
      0021A8 86 F0            [24]  742 	mov	b,@r0
      0021AA EA               [12]  743 	mov	a,r2
      0021AB 12 2D 4A         [24]  744 	lcall	__gptrput
      0021AE A3               [24]  745 	inc	dptr
      0021AF EB               [12]  746 	mov	a,r3
      0021B0 12 2D 4A         [24]  747 	lcall	__gptrput
                                    748 ;	walk.c:146: if (t->r < 0) t->r += ROWS;
      0021B3 A8 10            [24]  749 	mov	r0,_bp
      0021B5 08               [12]  750 	inc	r0
      0021B6 86 82            [24]  751 	mov	dpl,@r0
      0021B8 08               [12]  752 	inc	r0
      0021B9 86 83            [24]  753 	mov	dph,@r0
      0021BB 08               [12]  754 	inc	r0
      0021BC 86 F0            [24]  755 	mov	b,@r0
      0021BE 12 2F 55         [24]  756 	lcall	__gptrget
      0021C1 FD               [12]  757 	mov	r5,a
      0021C2 A3               [24]  758 	inc	dptr
      0021C3 12 2F 55         [24]  759 	lcall	__gptrget
      0021C6 FC               [12]  760 	mov	r4,a
      0021C7 EE               [12]  761 	mov	a,r6
      0021C8 30 E7 1D         [24]  762 	jnb	acc.7,00104$
      0021CB 74 30            [12]  763 	mov	a,#0x30
      0021CD 2D               [12]  764 	add	a,r5
      0021CE FF               [12]  765 	mov	r7,a
      0021CF E4               [12]  766 	clr	a
      0021D0 3C               [12]  767 	addc	a,r4
      0021D1 FE               [12]  768 	mov	r6,a
      0021D2 A8 10            [24]  769 	mov	r0,_bp
      0021D4 08               [12]  770 	inc	r0
      0021D5 86 82            [24]  771 	mov	dpl,@r0
      0021D7 08               [12]  772 	inc	r0
      0021D8 86 83            [24]  773 	mov	dph,@r0
      0021DA 08               [12]  774 	inc	r0
      0021DB 86 F0            [24]  775 	mov	b,@r0
      0021DD EF               [12]  776 	mov	a,r7
      0021DE 12 2D 4A         [24]  777 	lcall	__gptrput
      0021E1 A3               [24]  778 	inc	dptr
      0021E2 EE               [12]  779 	mov	a,r6
      0021E3 12 2D 4A         [24]  780 	lcall	__gptrput
      0021E6 80 27            [24]  781 	sjmp	00105$
      0021E8                        782 00104$:
                                    783 ;	walk.c:147: else if (t->r >= ROWS) t->r -= ROWS;
      0021E8 C3               [12]  784 	clr	c
      0021E9 ED               [12]  785 	mov	a,r5
      0021EA 94 30            [12]  786 	subb	a,#0x30
      0021EC EC               [12]  787 	mov	a,r4
      0021ED 64 80            [12]  788 	xrl	a,#0x80
      0021EF 94 80            [12]  789 	subb	a,#0x80
      0021F1 40 1C            [24]  790 	jc	00105$
      0021F3 ED               [12]  791 	mov	a,r5
      0021F4 24 D0            [12]  792 	add	a,#0xd0
      0021F6 FD               [12]  793 	mov	r5,a
      0021F7 EC               [12]  794 	mov	a,r4
      0021F8 34 FF            [12]  795 	addc	a,#0xff
      0021FA FC               [12]  796 	mov	r4,a
      0021FB A8 10            [24]  797 	mov	r0,_bp
      0021FD 08               [12]  798 	inc	r0
      0021FE 86 82            [24]  799 	mov	dpl,@r0
      002200 08               [12]  800 	inc	r0
      002201 86 83            [24]  801 	mov	dph,@r0
      002203 08               [12]  802 	inc	r0
      002204 86 F0            [24]  803 	mov	b,@r0
      002206 ED               [12]  804 	mov	a,r5
      002207 12 2D 4A         [24]  805 	lcall	__gptrput
      00220A A3               [24]  806 	inc	dptr
      00220B EC               [12]  807 	mov	a,r4
      00220C 12 2D 4A         [24]  808 	lcall	__gptrput
      00220F                        809 00105$:
                                    810 ;	walk.c:148: if (t->c < 0) t->c += COLS;
      00220F E5 10            [12]  811 	mov	a,_bp
      002211 24 08            [12]  812 	add	a,#0x08
      002213 F8               [12]  813 	mov	r0,a
      002214 86 82            [24]  814 	mov	dpl,@r0
      002216 08               [12]  815 	inc	r0
      002217 86 83            [24]  816 	mov	dph,@r0
      002219 08               [12]  817 	inc	r0
      00221A 86 F0            [24]  818 	mov	b,@r0
      00221C 12 2F 55         [24]  819 	lcall	__gptrget
      00221F A3               [24]  820 	inc	dptr
      002220 12 2F 55         [24]  821 	lcall	__gptrget
      002223 30 E7 35         [24]  822 	jnb	acc.7,00109$
      002226 E5 10            [12]  823 	mov	a,_bp
      002228 24 08            [12]  824 	add	a,#0x08
      00222A F8               [12]  825 	mov	r0,a
      00222B 86 82            [24]  826 	mov	dpl,@r0
      00222D 08               [12]  827 	inc	r0
      00222E 86 83            [24]  828 	mov	dph,@r0
      002230 08               [12]  829 	inc	r0
      002231 86 F0            [24]  830 	mov	b,@r0
      002233 12 2F 55         [24]  831 	lcall	__gptrget
      002236 FE               [12]  832 	mov	r6,a
      002237 A3               [24]  833 	inc	dptr
      002238 12 2F 55         [24]  834 	lcall	__gptrget
      00223B FF               [12]  835 	mov	r7,a
      00223C 74 C9            [12]  836 	mov	a,#0xc9
      00223E 2E               [12]  837 	add	a,r6
      00223F FE               [12]  838 	mov	r6,a
      002240 E4               [12]  839 	clr	a
      002241 3F               [12]  840 	addc	a,r7
      002242 FF               [12]  841 	mov	r7,a
      002243 E5 10            [12]  842 	mov	a,_bp
      002245 24 08            [12]  843 	add	a,#0x08
      002247 F8               [12]  844 	mov	r0,a
      002248 86 82            [24]  845 	mov	dpl,@r0
      00224A 08               [12]  846 	inc	r0
      00224B 86 83            [24]  847 	mov	dph,@r0
      00224D 08               [12]  848 	inc	r0
      00224E 86 F0            [24]  849 	mov	b,@r0
      002250 EE               [12]  850 	mov	a,r6
      002251 12 2D 4A         [24]  851 	lcall	__gptrput
      002254 A3               [24]  852 	inc	dptr
      002255 EF               [12]  853 	mov	a,r7
      002256 12 2D 4A         [24]  854 	lcall	__gptrput
      002259 80 55            [24]  855 	sjmp	00110$
      00225B                        856 00109$:
                                    857 ;	walk.c:149: else if (t->c >= COLS) t->c -= COLS;
      00225B E5 10            [12]  858 	mov	a,_bp
      00225D 24 08            [12]  859 	add	a,#0x08
      00225F F8               [12]  860 	mov	r0,a
      002260 86 82            [24]  861 	mov	dpl,@r0
      002262 08               [12]  862 	inc	r0
      002263 86 83            [24]  863 	mov	dph,@r0
      002265 08               [12]  864 	inc	r0
      002266 86 F0            [24]  865 	mov	b,@r0
      002268 12 2F 55         [24]  866 	lcall	__gptrget
      00226B FE               [12]  867 	mov	r6,a
      00226C A3               [24]  868 	inc	dptr
      00226D 12 2F 55         [24]  869 	lcall	__gptrget
      002270 FF               [12]  870 	mov	r7,a
      002271 C3               [12]  871 	clr	c
      002272 EE               [12]  872 	mov	a,r6
      002273 94 C9            [12]  873 	subb	a,#0xc9
      002275 EF               [12]  874 	mov	a,r7
      002276 64 80            [12]  875 	xrl	a,#0x80
      002278 94 80            [12]  876 	subb	a,#0x80
      00227A 40 34            [24]  877 	jc	00110$
      00227C E5 10            [12]  878 	mov	a,_bp
      00227E 24 08            [12]  879 	add	a,#0x08
      002280 F8               [12]  880 	mov	r0,a
      002281 86 82            [24]  881 	mov	dpl,@r0
      002283 08               [12]  882 	inc	r0
      002284 86 83            [24]  883 	mov	dph,@r0
      002286 08               [12]  884 	inc	r0
      002287 86 F0            [24]  885 	mov	b,@r0
      002289 12 2F 55         [24]  886 	lcall	__gptrget
      00228C FE               [12]  887 	mov	r6,a
      00228D A3               [24]  888 	inc	dptr
      00228E 12 2F 55         [24]  889 	lcall	__gptrget
      002291 FF               [12]  890 	mov	r7,a
      002292 EE               [12]  891 	mov	a,r6
      002293 24 37            [12]  892 	add	a,#0x37
      002295 FE               [12]  893 	mov	r6,a
      002296 EF               [12]  894 	mov	a,r7
      002297 34 FF            [12]  895 	addc	a,#0xff
      002299 FF               [12]  896 	mov	r7,a
      00229A E5 10            [12]  897 	mov	a,_bp
      00229C 24 08            [12]  898 	add	a,#0x08
      00229E F8               [12]  899 	mov	r0,a
      00229F 86 82            [24]  900 	mov	dpl,@r0
      0022A1 08               [12]  901 	inc	r0
      0022A2 86 83            [24]  902 	mov	dph,@r0
      0022A4 08               [12]  903 	inc	r0
      0022A5 86 F0            [24]  904 	mov	b,@r0
      0022A7 EE               [12]  905 	mov	a,r6
      0022A8 12 2D 4A         [24]  906 	lcall	__gptrput
      0022AB A3               [24]  907 	inc	dptr
      0022AC EF               [12]  908 	mov	a,r7
      0022AD 12 2D 4A         [24]  909 	lcall	__gptrput
      0022B0                        910 00110$:
                                    911 ;	walk.c:151: if (g[t->r][t->c] == 0xaau) return 0u;
      0022B0 A8 10            [24]  912 	mov	r0,_bp
      0022B2 08               [12]  913 	inc	r0
      0022B3 86 82            [24]  914 	mov	dpl,@r0
      0022B5 08               [12]  915 	inc	r0
      0022B6 86 83            [24]  916 	mov	dph,@r0
      0022B8 08               [12]  917 	inc	r0
      0022B9 86 F0            [24]  918 	mov	b,@r0
      0022BB 12 2F 55         [24]  919 	lcall	__gptrget
      0022BE FE               [12]  920 	mov	r6,a
      0022BF A3               [24]  921 	inc	dptr
      0022C0 12 2F 55         [24]  922 	lcall	__gptrget
      0022C3 FF               [12]  923 	mov	r7,a
      0022C4 C0 06            [24]  924 	push	ar6
      0022C6 C0 07            [24]  925 	push	ar7
      0022C8 90 00 C9         [24]  926 	mov	dptr,#0x00c9
      0022CB 12 2D 65         [24]  927 	lcall	__mulint
      0022CE AE 82            [24]  928 	mov	r6,dpl
      0022D0 AF 83            [24]  929 	mov	r7,dph
      0022D2 15 81            [12]  930 	dec	sp
      0022D4 15 81            [12]  931 	dec	sp
      0022D6 EE               [12]  932 	mov	a,r6
      0022D7 24 10            [12]  933 	add	a,#_g
      0022D9 FE               [12]  934 	mov	r6,a
      0022DA EF               [12]  935 	mov	a,r7
      0022DB 34 43            [12]  936 	addc	a,#(_g >> 8)
      0022DD FF               [12]  937 	mov	r7,a
      0022DE E5 10            [12]  938 	mov	a,_bp
      0022E0 24 08            [12]  939 	add	a,#0x08
      0022E2 F8               [12]  940 	mov	r0,a
      0022E3 86 82            [24]  941 	mov	dpl,@r0
      0022E5 08               [12]  942 	inc	r0
      0022E6 86 83            [24]  943 	mov	dph,@r0
      0022E8 08               [12]  944 	inc	r0
      0022E9 86 F0            [24]  945 	mov	b,@r0
      0022EB 12 2F 55         [24]  946 	lcall	__gptrget
      0022EE FC               [12]  947 	mov	r4,a
      0022EF A3               [24]  948 	inc	dptr
      0022F0 12 2F 55         [24]  949 	lcall	__gptrget
      0022F3 FD               [12]  950 	mov	r5,a
      0022F4 EC               [12]  951 	mov	a,r4
      0022F5 2E               [12]  952 	add	a,r6
      0022F6 F5 82            [12]  953 	mov	dpl,a
      0022F8 ED               [12]  954 	mov	a,r5
      0022F9 3F               [12]  955 	addc	a,r7
      0022FA F5 83            [12]  956 	mov	dph,a
      0022FC E0               [24]  957 	movx	a,@dptr
      0022FD FF               [12]  958 	mov	r7,a
      0022FE BF AA 05         [24]  959 	cjne	r7,#0xaa,00114$
      002301 75 82 00         [24]  960 	mov	dpl,#0x00
      002304 80 59            [24]  961 	sjmp	00116$
      002306                        962 00114$:
                                    963 ;	walk.c:152: else if (g[t->r][t->c] != 0x55u) bang();
      002306 A8 10            [24]  964 	mov	r0,_bp
      002308 08               [12]  965 	inc	r0
      002309 86 82            [24]  966 	mov	dpl,@r0
      00230B 08               [12]  967 	inc	r0
      00230C 86 83            [24]  968 	mov	dph,@r0
      00230E 08               [12]  969 	inc	r0
      00230F 86 F0            [24]  970 	mov	b,@r0
      002311 12 2F 55         [24]  971 	lcall	__gptrget
      002314 FE               [12]  972 	mov	r6,a
      002315 A3               [24]  973 	inc	dptr
      002316 12 2F 55         [24]  974 	lcall	__gptrget
      002319 FF               [12]  975 	mov	r7,a
      00231A C0 06            [24]  976 	push	ar6
      00231C C0 07            [24]  977 	push	ar7
      00231E 90 00 C9         [24]  978 	mov	dptr,#0x00c9
      002321 12 2D 65         [24]  979 	lcall	__mulint
      002324 AE 82            [24]  980 	mov	r6,dpl
      002326 AF 83            [24]  981 	mov	r7,dph
      002328 15 81            [12]  982 	dec	sp
      00232A 15 81            [12]  983 	dec	sp
      00232C EE               [12]  984 	mov	a,r6
      00232D 24 10            [12]  985 	add	a,#_g
      00232F FE               [12]  986 	mov	r6,a
      002330 EF               [12]  987 	mov	a,r7
      002331 34 43            [12]  988 	addc	a,#(_g >> 8)
      002333 FF               [12]  989 	mov	r7,a
      002334 E5 10            [12]  990 	mov	a,_bp
      002336 24 08            [12]  991 	add	a,#0x08
      002338 F8               [12]  992 	mov	r0,a
      002339 86 82            [24]  993 	mov	dpl,@r0
      00233B 08               [12]  994 	inc	r0
      00233C 86 83            [24]  995 	mov	dph,@r0
      00233E 08               [12]  996 	inc	r0
      00233F 86 F0            [24]  997 	mov	b,@r0
      002341 12 2F 55         [24]  998 	lcall	__gptrget
      002344 FC               [12]  999 	mov	r4,a
      002345 A3               [24] 1000 	inc	dptr
      002346 12 2F 55         [24] 1001 	lcall	__gptrget
      002349 FD               [12] 1002 	mov	r5,a
      00234A EC               [12] 1003 	mov	a,r4
      00234B 2E               [12] 1004 	add	a,r6
      00234C F5 82            [12] 1005 	mov	dpl,a
      00234E ED               [12] 1006 	mov	a,r5
      00234F 3F               [12] 1007 	addc	a,r7
      002350 F5 83            [12] 1008 	mov	dph,a
      002352 E0               [24] 1009 	movx	a,@dptr
      002353 FF               [12] 1010 	mov	r7,a
      002354 BF 55 02         [24] 1011 	cjne	r7,#0x55,00148$
      002357 80 03            [24] 1012 	sjmp	00115$
      002359                       1013 00148$:
      002359 12 20 7F         [24] 1014 	lcall	_bang
      00235C                       1015 00115$:
                                   1016 ;	walk.c:154: return 1u;
      00235C 75 82 01         [24] 1017 	mov	dpl,#0x01
      00235F                       1018 00116$:
                                   1019 ;	walk.c:155: }
      00235F 85 10 81         [24] 1020 	mov	sp,_bp
      002362 D0 10            [24] 1021 	pop	_bp
      002364 22               [24] 1022 	ret
                                   1023 ;------------------------------------------------------------
                                   1024 ;Allocation info for local variables in function 'walk'
                                   1025 ;------------------------------------------------------------
                                   1026 ;nstart                    Allocated to registers r5 r6 r7 
                                   1027 ;cur                       Allocated to stack - _bp +7
                                   1028 ;t                         Allocated to stack - _bp +11
                                   1029 ;scramble                  Allocated to stack - _bp +15
                                   1030 ;ti                        Allocated to registers r2 
                                   1031 ;tj                        Allocated to registers r6 
                                   1032 ;tx                        Allocated to stack - _bp +31
                                   1033 ;j                         Allocated to stack - _bp +32
                                   1034 ;sloc0                     Allocated to stack - _bp +1
                                   1035 ;sloc1                     Allocated to stack - _bp +3
                                   1036 ;sloc2                     Allocated to stack - _bp +35
                                   1037 ;sloc3                     Allocated to stack - _bp +4
                                   1038 ;------------------------------------------------------------
                                   1039 ;	walk.c:157: static void walk(struct node *nstart) {
                                   1040 ;	-----------------------------------------
                                   1041 ;	 function walk
                                   1042 ;	-----------------------------------------
      002365                       1043 _walk:
      002365 C0 10            [24] 1044 	push	_bp
      002367 E5 81            [12] 1045 	mov	a,sp
      002369 F5 10            [12] 1046 	mov	_bp,a
      00236B 24 20            [12] 1047 	add	a,#0x20
      00236D F5 81            [12] 1048 	mov	sp,a
                                   1049 ;	walk.c:162: if (!qadd(nstart)) bang();
      00236F AD 82            [24] 1050 	mov	r5,dpl
      002371 AE 83            [24] 1051 	mov	r6,dph
      002373 AF F0            [24] 1052 	mov	r7,b
      002375 C0 07            [24] 1053 	push	ar7
      002377 C0 06            [24] 1054 	push	ar6
      002379 C0 05            [24] 1055 	push	ar5
      00237B 12 2A F7         [24] 1056 	lcall	_qadd
      00237E E5 82            [12] 1057 	mov	a,dpl
      002380 D0 05            [24] 1058 	pop	ar5
      002382 D0 06            [24] 1059 	pop	ar6
      002384 D0 07            [24] 1060 	pop	ar7
      002386 70 0F            [24] 1061 	jnz	00102$
      002388 C0 07            [24] 1062 	push	ar7
      00238A C0 06            [24] 1063 	push	ar6
      00238C C0 05            [24] 1064 	push	ar5
      00238E 12 20 7F         [24] 1065 	lcall	_bang
      002391 D0 05            [24] 1066 	pop	ar5
      002393 D0 06            [24] 1067 	pop	ar6
      002395 D0 07            [24] 1068 	pop	ar7
      002397                       1069 00102$:
                                   1070 ;	walk.c:163: g[nstart->r][nstart->c] = 0xaau;
      002397 8D 82            [24] 1071 	mov	dpl,r5
      002399 8E 83            [24] 1072 	mov	dph,r6
      00239B 8F F0            [24] 1073 	mov	b,r7
      00239D 12 2F 55         [24] 1074 	lcall	__gptrget
      0023A0 FB               [12] 1075 	mov	r3,a
      0023A1 A3               [24] 1076 	inc	dptr
      0023A2 12 2F 55         [24] 1077 	lcall	__gptrget
      0023A5 FC               [12] 1078 	mov	r4,a
      0023A6 C0 07            [24] 1079 	push	ar7
      0023A8 C0 06            [24] 1080 	push	ar6
      0023AA C0 05            [24] 1081 	push	ar5
      0023AC C0 03            [24] 1082 	push	ar3
      0023AE C0 04            [24] 1083 	push	ar4
      0023B0 90 00 C9         [24] 1084 	mov	dptr,#0x00c9
      0023B3 12 2D 65         [24] 1085 	lcall	__mulint
      0023B6 AB 82            [24] 1086 	mov	r3,dpl
      0023B8 AC 83            [24] 1087 	mov	r4,dph
      0023BA 15 81            [12] 1088 	dec	sp
      0023BC 15 81            [12] 1089 	dec	sp
      0023BE D0 05            [24] 1090 	pop	ar5
      0023C0 D0 06            [24] 1091 	pop	ar6
      0023C2 D0 07            [24] 1092 	pop	ar7
      0023C4 EB               [12] 1093 	mov	a,r3
      0023C5 24 10            [12] 1094 	add	a,#_g
      0023C7 FB               [12] 1095 	mov	r3,a
      0023C8 EC               [12] 1096 	mov	a,r4
      0023C9 34 43            [12] 1097 	addc	a,#(_g >> 8)
      0023CB FC               [12] 1098 	mov	r4,a
      0023CC 74 02            [12] 1099 	mov	a,#0x02
      0023CE 2D               [12] 1100 	add	a,r5
      0023CF FD               [12] 1101 	mov	r5,a
      0023D0 E4               [12] 1102 	clr	a
      0023D1 3E               [12] 1103 	addc	a,r6
      0023D2 FE               [12] 1104 	mov	r6,a
      0023D3 8D 82            [24] 1105 	mov	dpl,r5
      0023D5 8E 83            [24] 1106 	mov	dph,r6
      0023D7 8F F0            [24] 1107 	mov	b,r7
      0023D9 12 2F 55         [24] 1108 	lcall	__gptrget
      0023DC FD               [12] 1109 	mov	r5,a
      0023DD A3               [24] 1110 	inc	dptr
      0023DE 12 2F 55         [24] 1111 	lcall	__gptrget
      0023E1 FE               [12] 1112 	mov	r6,a
      0023E2 ED               [12] 1113 	mov	a,r5
      0023E3 2B               [12] 1114 	add	a,r3
      0023E4 F5 82            [12] 1115 	mov	dpl,a
      0023E6 EE               [12] 1116 	mov	a,r6
      0023E7 3C               [12] 1117 	addc	a,r4
      0023E8 F5 83            [12] 1118 	mov	dph,a
      0023EA 74 AA            [12] 1119 	mov	a,#0xaa
      0023EC F0               [24] 1120 	movx	@dptr,a
                                   1121 ;	walk.c:165: process:
      0023ED E5 10            [12] 1122 	mov	a,_bp
      0023EF 24 0F            [12] 1123 	add	a,#0x0f
      0023F1 FF               [12] 1124 	mov	r7,a
      0023F2 E5 10            [12] 1125 	mov	a,_bp
      0023F4 24 0B            [12] 1126 	add	a,#0x0b
      0023F6 F9               [12] 1127 	mov	r1,a
      0023F7 E5 10            [12] 1128 	mov	a,_bp
      0023F9 24 03            [12] 1129 	add	a,#0x03
      0023FB F8               [12] 1130 	mov	r0,a
      0023FC A6 01            [24] 1131 	mov	@r0,ar1
      0023FE 74 02            [12] 1132 	mov	a,#0x02
      002400 29               [12] 1133 	add	a,r1
      002401 F8               [12] 1134 	mov	r0,a
      002402 E5 10            [12] 1135 	mov	a,_bp
      002404 24 07            [12] 1136 	add	a,#0x07
      002406 FD               [12] 1137 	mov	r5,a
      002407                       1138 00103$:
                                   1139 ;	walk.c:166: unsetOE(OE76_MASK7 | OE76_MASK6);
      002407 75 82 C0         [24] 1140 	mov	dpl,#0xc0
      00240A C0 07            [24] 1141 	push	ar7
      00240C C0 05            [24] 1142 	push	ar5
      00240E C0 01            [24] 1143 	push	ar1
      002410 C0 00            [24] 1144 	push	ar0
      002412 12 20 A5         [24] 1145 	lcall	_unsetOE
      002415 D0 00            [24] 1146 	pop	ar0
      002417 D0 01            [24] 1147 	pop	ar1
      002419 D0 05            [24] 1148 	pop	ar5
                                   1149 ;	walk.c:168: if (!qget(&cur)) goto term;
      00241B 8D 02            [24] 1150 	mov	ar2,r5
      00241D 7B 00            [12] 1151 	mov	r3,#0x00
      00241F 7C 40            [12] 1152 	mov	r4,#0x40
      002421 8A 82            [24] 1153 	mov	dpl,r2
      002423 8B 83            [24] 1154 	mov	dph,r3
      002425 8C F0            [24] 1155 	mov	b,r4
      002427 C0 05            [24] 1156 	push	ar5
      002429 C0 01            [24] 1157 	push	ar1
      00242B C0 00            [24] 1158 	push	ar0
      00242D 12 2B E9         [24] 1159 	lcall	_qget
      002430 E5 82            [12] 1160 	mov	a,dpl
      002432 D0 00            [24] 1161 	pop	ar0
      002434 D0 01            [24] 1162 	pop	ar1
      002436 D0 05            [24] 1163 	pop	ar5
      002438 D0 07            [24] 1164 	pop	ar7
      00243A 70 03            [24] 1165 	jnz	00184$
      00243C 02 27 08         [24] 1166 	ljmp	00119$
      00243F                       1167 00184$:
                                   1168 ;	walk.c:170: printf("\033[2;1H% 8d% 8d% 8d% 8d", hp, tp, cur.r, cur.c);
      00243F 74 02            [12] 1169 	mov	a,#0x02
      002441 2D               [12] 1170 	add	a,r5
      002442 FC               [12] 1171 	mov	r4,a
      002443 C0 00            [24] 1172 	push	ar0
      002445 A8 10            [24] 1173 	mov	r0,_bp
      002447 08               [12] 1174 	inc	r0
      002448 C0 01            [24] 1175 	push	ar1
      00244A A9 04            [24] 1176 	mov	r1,ar4
      00244C E7               [12] 1177 	mov	a,@r1
      00244D F6               [12] 1178 	mov	@r0,a
      00244E 09               [12] 1179 	inc	r1
      00244F E7               [12] 1180 	mov	a,@r1
      002450 08               [12] 1181 	inc	r0
      002451 F6               [12] 1182 	mov	@r0,a
      002452 D0 01            [24] 1183 	pop	ar1
      002454 A8 05            [24] 1184 	mov	r0,ar5
      002456 86 03            [24] 1185 	mov	ar3,@r0
      002458 08               [12] 1186 	inc	r0
      002459 86 06            [24] 1187 	mov	ar6,@r0
      00245B D0 00            [24] 1188 	pop	ar0
      00245D C0 07            [24] 1189 	push	ar7
      00245F C0 05            [24] 1190 	push	ar5
      002461 C0 04            [24] 1191 	push	ar4
      002463 C0 01            [24] 1192 	push	ar1
      002465 C0 00            [24] 1193 	push	ar0
      002467 85 00 F0         [24] 1194 	mov	b,ar0
      00246A A8 10            [24] 1195 	mov	r0,_bp
      00246C 08               [12] 1196 	inc	r0
      00246D E6               [12] 1197 	mov	a,@r0
      00246E C0 E0            [24] 1198 	push	acc
      002470 08               [12] 1199 	inc	r0
      002471 E6               [12] 1200 	mov	a,@r0
      002472 C0 E0            [24] 1201 	push	acc
      002474 C0 03            [24] 1202 	push	ar3
      002476 C0 06            [24] 1203 	push	ar6
      002478 90 FF 82         [24] 1204 	mov	dptr,#_tp
      00247B E0               [24] 1205 	movx	a,@dptr
      00247C C0 E0            [24] 1206 	push	acc
      00247E A3               [24] 1207 	inc	dptr
      00247F E0               [24] 1208 	movx	a,@dptr
      002480 C0 E0            [24] 1209 	push	acc
      002482 90 FF 80         [24] 1210 	mov	dptr,#_hp
      002485 E0               [24] 1211 	movx	a,@dptr
      002486 C0 E0            [24] 1212 	push	acc
      002488 A3               [24] 1213 	inc	dptr
      002489 E0               [24] 1214 	movx	a,@dptr
      00248A C0 E0            [24] 1215 	push	acc
      00248C 74 5C            [12] 1216 	mov	a,#___str_1
      00248E C0 E0            [24] 1217 	push	acc
      002490 74 42            [12] 1218 	mov	a,#(___str_1 >> 8)
      002492 C0 E0            [24] 1219 	push	acc
      002494 74 80            [12] 1220 	mov	a,#0x80
      002496 C0 E0            [24] 1221 	push	acc
      002498 12 2F 1C         [24] 1222 	lcall	_printf
      00249B E5 81            [12] 1223 	mov	a,sp
      00249D 24 F5            [12] 1224 	add	a,#0xf5
      00249F F5 81            [12] 1225 	mov	sp,a
      0024A1 D0 00            [24] 1226 	pop	ar0
      0024A3 D0 01            [24] 1227 	pop	ar1
      0024A5 D0 04            [24] 1228 	pop	ar4
      0024A7 D0 05            [24] 1229 	pop	ar5
      0024A9 D0 07            [24] 1230 	pop	ar7
                                   1231 ;	walk.c:172: printf("\033[%d;%dH.", cur.r + 4, cur.c + 1);
      0024AB C0 00            [24] 1232 	push	ar0
      0024AD A8 04            [24] 1233 	mov	r0,ar4
      0024AF 86 04            [24] 1234 	mov	ar4,@r0
      0024B1 08               [12] 1235 	inc	r0
      0024B2 86 06            [24] 1236 	mov	ar6,@r0
      0024B4 D0 00            [24] 1237 	pop	ar0
      0024B6 0C               [12] 1238 	inc	r4
      0024B7 BC 00 01         [24] 1239 	cjne	r4,#0x00,00185$
      0024BA 0E               [12] 1240 	inc	r6
      0024BB                       1241 00185$:
      0024BB C0 00            [24] 1242 	push	ar0
      0024BD A8 05            [24] 1243 	mov	r0,ar5
      0024BF 86 02            [24] 1244 	mov	ar2,@r0
      0024C1 08               [12] 1245 	inc	r0
      0024C2 86 03            [24] 1246 	mov	ar3,@r0
      0024C4 D0 00            [24] 1247 	pop	ar0
      0024C6 74 04            [12] 1248 	mov	a,#0x04
      0024C8 2A               [12] 1249 	add	a,r2
      0024C9 FA               [12] 1250 	mov	r2,a
      0024CA E4               [12] 1251 	clr	a
      0024CB 3B               [12] 1252 	addc	a,r3
      0024CC FB               [12] 1253 	mov	r3,a
      0024CD C0 07            [24] 1254 	push	ar7
      0024CF C0 05            [24] 1255 	push	ar5
      0024D1 C0 01            [24] 1256 	push	ar1
      0024D3 C0 00            [24] 1257 	push	ar0
      0024D5 C0 04            [24] 1258 	push	ar4
      0024D7 C0 06            [24] 1259 	push	ar6
      0024D9 C0 02            [24] 1260 	push	ar2
      0024DB C0 03            [24] 1261 	push	ar3
      0024DD 74 73            [12] 1262 	mov	a,#___str_2
      0024DF C0 E0            [24] 1263 	push	acc
      0024E1 74 42            [12] 1264 	mov	a,#(___str_2 >> 8)
      0024E3 C0 E0            [24] 1265 	push	acc
      0024E5 74 80            [12] 1266 	mov	a,#0x80
      0024E7 C0 E0            [24] 1267 	push	acc
      0024E9 12 2F 1C         [24] 1268 	lcall	_printf
      0024EC E5 81            [12] 1269 	mov	a,sp
      0024EE 24 F9            [12] 1270 	add	a,#0xf9
      0024F0 F5 81            [12] 1271 	mov	sp,a
                                   1272 ;	walk.c:173: setOE(OE76_MASK6);
      0024F2 75 82 40         [24] 1273 	mov	dpl,#0x40
      0024F5 12 20 8C         [24] 1274 	lcall	_setOE
      0024F8 D0 00            [24] 1275 	pop	ar0
      0024FA D0 01            [24] 1276 	pop	ar1
      0024FC D0 05            [24] 1277 	pop	ar5
      0024FE D0 07            [24] 1278 	pop	ar7
                                   1279 ;	walk.c:175: for (j = 0u; j < NMAX; j++)
      002500 7E 00            [12] 1280 	mov	r6,#0x00
                                   1281 ;	walk.c:202: return;
                                   1282 ;	walk.c:175: for (j = 0u; j < NMAX; j++)
      002502                       1283 00120$:
                                   1284 ;	walk.c:176: scramble[j] = j;
      002502 EE               [12] 1285 	mov	a,r6
      002503 2F               [12] 1286 	add	a,r7
      002504 C0 00            [24] 1287 	push	ar0
      002506 F8               [12] 1288 	mov	r0,a
      002507 A6 06            [24] 1289 	mov	@r0,ar6
      002509 D0 00            [24] 1290 	pop	ar0
                                   1291 ;	walk.c:175: for (j = 0u; j < NMAX; j++)
      00250B 0E               [12] 1292 	inc	r6
      00250C BE 10 00         [24] 1293 	cjne	r6,#0x10,00186$
      00250F                       1294 00186$:
      00250F 40 F1            [24] 1295 	jc	00120$
                                   1296 ;	walk.c:178: do ti = (uint8_t)(rand() % NMAX);
      002511 7C 00            [12] 1297 	mov	r4,#0x00
      002513                       1298 00107$:
      002513 C0 07            [24] 1299 	push	ar7
      002515 C0 05            [24] 1300 	push	ar5
      002517 C0 04            [24] 1301 	push	ar4
      002519 C0 01            [24] 1302 	push	ar1
      00251B C0 00            [24] 1303 	push	ar0
      00251D 12 2C 6D         [24] 1304 	lcall	_rand
      002520 AA 82            [24] 1305 	mov	r2,dpl
      002522 D0 00            [24] 1306 	pop	ar0
      002524 D0 01            [24] 1307 	pop	ar1
      002526 D0 04            [24] 1308 	pop	ar4
      002528 D0 05            [24] 1309 	pop	ar5
      00252A D0 07            [24] 1310 	pop	ar7
      00252C 53 02 0F         [24] 1311 	anl	ar2,#0x0f
      00252F 7B 00            [12] 1312 	mov	r3,#0x00
                                   1313 ;	walk.c:179: while (ti == j);
      002531 EA               [12] 1314 	mov	a,r2
      002532 B5 04 02         [24] 1315 	cjne	a,ar4,00188$
      002535 80 DC            [24] 1316 	sjmp	00107$
      002537                       1317 00188$:
                                   1318 ;	walk.c:180: do tj = (uint8_t)(rand() % NMAX);
      002537                       1319 00110$:
      002537 C0 05            [24] 1320 	push	ar5
      002539 C0 07            [24] 1321 	push	ar7
      00253B C0 04            [24] 1322 	push	ar4
      00253D C0 02            [24] 1323 	push	ar2
      00253F C0 01            [24] 1324 	push	ar1
      002541 C0 00            [24] 1325 	push	ar0
      002543 12 2C 6D         [24] 1326 	lcall	_rand
      002546 AB 82            [24] 1327 	mov	r3,dpl
      002548 D0 00            [24] 1328 	pop	ar0
      00254A D0 01            [24] 1329 	pop	ar1
      00254C D0 02            [24] 1330 	pop	ar2
      00254E D0 04            [24] 1331 	pop	ar4
      002550 D0 07            [24] 1332 	pop	ar7
      002552 53 03 0F         [24] 1333 	anl	ar3,#0x0f
      002555 8B 06            [24] 1334 	mov	ar6,r3
                                   1335 ;	walk.c:181: while (ti == tj);
      002557 EA               [12] 1336 	mov	a,r2
      002558 B5 06 04         [24] 1337 	cjne	a,ar6,00189$
      00255B D0 05            [24] 1338 	pop	ar5
      00255D 80 D8            [24] 1339 	sjmp	00110$
      00255F                       1340 00189$:
                                   1341 ;	walk.c:182: tx = scramble[ti];
      00255F EA               [12] 1342 	mov	a,r2
      002560 2F               [12] 1343 	add	a,r7
      002561 FB               [12] 1344 	mov	r3,a
      002562 C0 00            [24] 1345 	push	ar0
      002564 E5 10            [12] 1346 	mov	a,_bp
      002566 24 1F            [12] 1347 	add	a,#0x1f
      002568 F8               [12] 1348 	mov	r0,a
      002569 C0 01            [24] 1349 	push	ar1
      00256B A9 03            [24] 1350 	mov	r1,ar3
      00256D E7               [12] 1351 	mov	a,@r1
      00256E F6               [12] 1352 	mov	@r0,a
                                   1353 ;	walk.c:183: scramble[ti] = scramble[tj];
      00256F EE               [12] 1354 	mov	a,r6
      002570 2F               [12] 1355 	add	a,r7
      002571 FD               [12] 1356 	mov	r5,a
      002572 A8 05            [24] 1357 	mov	r0,ar5
      002574 86 02            [24] 1358 	mov	ar2,@r0
      002576 A8 03            [24] 1359 	mov	r0,ar3
      002578 A6 02            [24] 1360 	mov	@r0,ar2
                                   1361 ;	walk.c:184: scramble[tj] = tx;
      00257A A8 05            [24] 1362 	mov	r0,ar5
      00257C E5 10            [12] 1363 	mov	a,_bp
      00257E 24 1F            [12] 1364 	add	a,#0x1f
      002580 F9               [12] 1365 	mov	r1,a
      002581 E7               [12] 1366 	mov	a,@r1
      002582 F6               [12] 1367 	mov	@r0,a
      002583 D0 00            [24] 1368 	pop	ar0
      002585 D0 01            [24] 1369 	pop	ar1
                                   1370 ;	walk.c:177: for (j = 0u; j < NMAX; j++) {
      002587 0C               [12] 1371 	inc	r4
      002588 BC 10 00         [24] 1372 	cjne	r4,#0x10,00190$
      00258B                       1373 00190$:
      00258B D0 05            [24] 1374 	pop	ar5
      00258D 40 84            [24] 1375 	jc	00107$
                                   1376 ;	walk.c:187: for (j = 0u; j < NMAX; j++) {
      00258F C0 00            [24] 1377 	push	ar0
      002591 A8 10            [24] 1378 	mov	r0,_bp
      002593 08               [12] 1379 	inc	r0
      002594 A6 05            [24] 1380 	mov	@r0,ar5
      002596 E5 10            [12] 1381 	mov	a,_bp
      002598 24 20            [12] 1382 	add	a,#0x20
      00259A F8               [12] 1383 	mov	r0,a
      00259B 76 00            [12] 1384 	mov	@r0,#0x00
      00259D D0 00            [24] 1385 	pop	ar0
      00259F                       1386 00124$:
                                   1387 ;	walk.c:188: unsetOE(OE76_MASK7);
      00259F C0 05            [24] 1388 	push	ar5
      0025A1 75 82 80         [24] 1389 	mov	dpl,#0x80
      0025A4 C0 07            [24] 1390 	push	ar7
      0025A6 C0 05            [24] 1391 	push	ar5
      0025A8 C0 01            [24] 1392 	push	ar1
      0025AA C0 00            [24] 1393 	push	ar0
      0025AC 12 20 A5         [24] 1394 	lcall	_unsetOE
      0025AF D0 00            [24] 1395 	pop	ar0
      0025B1 D0 01            [24] 1396 	pop	ar1
      0025B3 D0 05            [24] 1397 	pop	ar5
      0025B5 D0 07            [24] 1398 	pop	ar7
                                   1399 ;	walk.c:190: if (update(&t, &cur, scramble[j])) {
      0025B7 C0 00            [24] 1400 	push	ar0
      0025B9 E5 10            [12] 1401 	mov	a,_bp
      0025BB 24 20            [12] 1402 	add	a,#0x20
      0025BD F8               [12] 1403 	mov	r0,a
      0025BE E6               [12] 1404 	mov	a,@r0
      0025BF 2F               [12] 1405 	add	a,r7
      0025C0 FA               [12] 1406 	mov	r2,a
      0025C1 A8 02            [24] 1407 	mov	r0,ar2
      0025C3 86 03            [24] 1408 	mov	ar3,@r0
      0025C5 A8 10            [24] 1409 	mov	r0,_bp
      0025C7 08               [12] 1410 	inc	r0
      0025C8 C0 01            [24] 1411 	push	ar1
      0025CA E5 10            [12] 1412 	mov	a,_bp
      0025CC 24 04            [12] 1413 	add	a,#0x04
      0025CE F9               [12] 1414 	mov	r1,a
      0025CF E6               [12] 1415 	mov	a,@r0
      0025D0 F7               [12] 1416 	mov	@r1,a
      0025D1 09               [12] 1417 	inc	r1
      0025D2 77 00            [12] 1418 	mov	@r1,#0x00
      0025D4 09               [12] 1419 	inc	r1
      0025D5 77 40            [12] 1420 	mov	@r1,#0x40
      0025D7 D0 01            [24] 1421 	pop	ar1
      0025D9 D0 00            [24] 1422 	pop	ar0
      0025DB 89 02            [24] 1423 	mov	ar2,r1
      0025DD 7C 00            [12] 1424 	mov	r4,#0x00
      0025DF 7E 40            [12] 1425 	mov	r6,#0x40
      0025E1 C0 07            [24] 1426 	push	ar7
      0025E3 C0 05            [24] 1427 	push	ar5
      0025E5 C0 01            [24] 1428 	push	ar1
      0025E7 C0 00            [24] 1429 	push	ar0
      0025E9 C0 03            [24] 1430 	push	ar3
      0025EB 85 00 F0         [24] 1431 	mov	b,ar0
      0025EE E5 10            [12] 1432 	mov	a,_bp
      0025F0 24 04            [12] 1433 	add	a,#0x04
      0025F2 F8               [12] 1434 	mov	r0,a
      0025F3 E6               [12] 1435 	mov	a,@r0
      0025F4 C0 E0            [24] 1436 	push	acc
      0025F6 08               [12] 1437 	inc	r0
      0025F7 E6               [12] 1438 	mov	a,@r0
      0025F8 C0 E0            [24] 1439 	push	acc
      0025FA 08               [12] 1440 	inc	r0
      0025FB E6               [12] 1441 	mov	a,@r0
      0025FC C0 E0            [24] 1442 	push	acc
      0025FE 8A 82            [24] 1443 	mov	dpl,r2
      002600 8C 83            [24] 1444 	mov	dph,r4
      002602 8E F0            [24] 1445 	mov	b,r6
      002604 12 20 D8         [24] 1446 	lcall	_update
      002607 AE 82            [24] 1447 	mov	r6,dpl
      002609 E5 81            [12] 1448 	mov	a,sp
      00260B 24 FC            [12] 1449 	add	a,#0xfc
      00260D F5 81            [12] 1450 	mov	sp,a
      00260F D0 00            [24] 1451 	pop	ar0
      002611 D0 01            [24] 1452 	pop	ar1
      002613 D0 05            [24] 1453 	pop	ar5
      002615 D0 07            [24] 1454 	pop	ar7
      002617 D0 05            [24] 1455 	pop	ar5
      002619 EE               [12] 1456 	mov	a,r6
      00261A 70 03            [24] 1457 	jnz	00192$
      00261C 02 26 EE         [24] 1458 	ljmp	00125$
      00261F                       1459 00192$:
                                   1460 ;	walk.c:191: if (!qadd(&t)) bang();
      00261F C0 00            [24] 1461 	push	ar0
      002621 E5 10            [12] 1462 	mov	a,_bp
      002623 24 03            [12] 1463 	add	a,#0x03
      002625 F8               [12] 1464 	mov	r0,a
      002626 86 03            [24] 1465 	mov	ar3,@r0
      002628 7C 00            [12] 1466 	mov	r4,#0x00
      00262A 7E 40            [12] 1467 	mov	r6,#0x40
      00262C D0 00            [24] 1468 	pop	ar0
      00262E 8B 82            [24] 1469 	mov	dpl,r3
      002630 8C 83            [24] 1470 	mov	dph,r4
      002632 8E F0            [24] 1471 	mov	b,r6
      002634 C0 07            [24] 1472 	push	ar7
      002636 C0 05            [24] 1473 	push	ar5
      002638 C0 01            [24] 1474 	push	ar1
      00263A C0 00            [24] 1475 	push	ar0
      00263C 12 2A F7         [24] 1476 	lcall	_qadd
      00263F E5 82            [12] 1477 	mov	a,dpl
      002641 D0 00            [24] 1478 	pop	ar0
      002643 D0 01            [24] 1479 	pop	ar1
      002645 D0 05            [24] 1480 	pop	ar5
      002647 D0 07            [24] 1481 	pop	ar7
      002649 70 13            [24] 1482 	jnz	00115$
      00264B C0 07            [24] 1483 	push	ar7
      00264D C0 05            [24] 1484 	push	ar5
      00264F C0 01            [24] 1485 	push	ar1
      002651 C0 00            [24] 1486 	push	ar0
      002653 12 20 7F         [24] 1487 	lcall	_bang
      002656 D0 00            [24] 1488 	pop	ar0
      002658 D0 01            [24] 1489 	pop	ar1
      00265A D0 05            [24] 1490 	pop	ar5
      00265C D0 07            [24] 1491 	pop	ar7
      00265E                       1492 00115$:
                                   1493 ;	walk.c:192: g[t.r][t.c] = 0xaau;
      00265E 87 04            [24] 1494 	mov	ar4,@r1
      002660 09               [12] 1495 	inc	r1
      002661 87 06            [24] 1496 	mov	ar6,@r1
      002663 19               [12] 1497 	dec	r1
      002664 C0 07            [24] 1498 	push	ar7
      002666 C0 05            [24] 1499 	push	ar5
      002668 C0 01            [24] 1500 	push	ar1
      00266A C0 00            [24] 1501 	push	ar0
      00266C C0 04            [24] 1502 	push	ar4
      00266E C0 06            [24] 1503 	push	ar6
      002670 90 00 C9         [24] 1504 	mov	dptr,#0x00c9
      002673 12 2D 65         [24] 1505 	lcall	__mulint
      002676 AC 82            [24] 1506 	mov	r4,dpl
      002678 AE 83            [24] 1507 	mov	r6,dph
      00267A 15 81            [12] 1508 	dec	sp
      00267C 15 81            [12] 1509 	dec	sp
      00267E D0 00            [24] 1510 	pop	ar0
      002680 EC               [12] 1511 	mov	a,r4
      002681 24 10            [12] 1512 	add	a,#_g
      002683 FC               [12] 1513 	mov	r4,a
      002684 EE               [12] 1514 	mov	a,r6
      002685 34 43            [12] 1515 	addc	a,#(_g >> 8)
      002687 FE               [12] 1516 	mov	r6,a
      002688 86 02            [24] 1517 	mov	ar2,@r0
      00268A 08               [12] 1518 	inc	r0
      00268B 86 03            [24] 1519 	mov	ar3,@r0
      00268D 18               [12] 1520 	dec	r0
      00268E EA               [12] 1521 	mov	a,r2
      00268F 2C               [12] 1522 	add	a,r4
      002690 F5 82            [12] 1523 	mov	dpl,a
      002692 EB               [12] 1524 	mov	a,r3
      002693 3E               [12] 1525 	addc	a,r6
      002694 F5 83            [12] 1526 	mov	dph,a
      002696 74 AA            [12] 1527 	mov	a,#0xaa
      002698 F0               [24] 1528 	movx	@dptr,a
                                   1529 ;	walk.c:194: setOE(OE76_MASK7);
      002699 75 82 80         [24] 1530 	mov	dpl,#0x80
      00269C C0 00            [24] 1531 	push	ar0
      00269E 12 20 8C         [24] 1532 	lcall	_setOE
      0026A1 D0 00            [24] 1533 	pop	ar0
      0026A3 D0 01            [24] 1534 	pop	ar1
      0026A5 D0 05            [24] 1535 	pop	ar5
      0026A7 D0 07            [24] 1536 	pop	ar7
                                   1537 ;	walk.c:195: printf("\033[%d;%dHo", t.r + 4, t.c + 1);
      0026A9 86 04            [24] 1538 	mov	ar4,@r0
      0026AB 08               [12] 1539 	inc	r0
      0026AC 86 06            [24] 1540 	mov	ar6,@r0
      0026AE 18               [12] 1541 	dec	r0
      0026AF 0C               [12] 1542 	inc	r4
      0026B0 BC 00 01         [24] 1543 	cjne	r4,#0x00,00194$
      0026B3 0E               [12] 1544 	inc	r6
      0026B4                       1545 00194$:
      0026B4 87 02            [24] 1546 	mov	ar2,@r1
      0026B6 09               [12] 1547 	inc	r1
      0026B7 87 03            [24] 1548 	mov	ar3,@r1
      0026B9 19               [12] 1549 	dec	r1
      0026BA 74 04            [12] 1550 	mov	a,#0x04
      0026BC 2A               [12] 1551 	add	a,r2
      0026BD FA               [12] 1552 	mov	r2,a
      0026BE E4               [12] 1553 	clr	a
      0026BF 3B               [12] 1554 	addc	a,r3
      0026C0 FB               [12] 1555 	mov	r3,a
      0026C1 C0 07            [24] 1556 	push	ar7
      0026C3 C0 05            [24] 1557 	push	ar5
      0026C5 C0 01            [24] 1558 	push	ar1
      0026C7 C0 00            [24] 1559 	push	ar0
      0026C9 C0 04            [24] 1560 	push	ar4
      0026CB C0 06            [24] 1561 	push	ar6
      0026CD C0 02            [24] 1562 	push	ar2
      0026CF C0 03            [24] 1563 	push	ar3
      0026D1 74 7D            [12] 1564 	mov	a,#___str_3
      0026D3 C0 E0            [24] 1565 	push	acc
      0026D5 74 42            [12] 1566 	mov	a,#(___str_3 >> 8)
      0026D7 C0 E0            [24] 1567 	push	acc
      0026D9 74 80            [12] 1568 	mov	a,#0x80
      0026DB C0 E0            [24] 1569 	push	acc
      0026DD 12 2F 1C         [24] 1570 	lcall	_printf
      0026E0 E5 81            [12] 1571 	mov	a,sp
      0026E2 24 F9            [12] 1572 	add	a,#0xf9
      0026E4 F5 81            [12] 1573 	mov	sp,a
      0026E6 D0 00            [24] 1574 	pop	ar0
      0026E8 D0 01            [24] 1575 	pop	ar1
      0026EA D0 05            [24] 1576 	pop	ar5
      0026EC D0 07            [24] 1577 	pop	ar7
      0026EE                       1578 00125$:
                                   1579 ;	walk.c:187: for (j = 0u; j < NMAX; j++) {
      0026EE C0 00            [24] 1580 	push	ar0
      0026F0 E5 10            [12] 1581 	mov	a,_bp
      0026F2 24 20            [12] 1582 	add	a,#0x20
      0026F4 F8               [12] 1583 	mov	r0,a
      0026F5 06               [12] 1584 	inc	@r0
      0026F6 E5 10            [12] 1585 	mov	a,_bp
      0026F8 24 20            [12] 1586 	add	a,#0x20
      0026FA F8               [12] 1587 	mov	r0,a
      0026FB B6 10 00         [24] 1588 	cjne	@r0,#0x10,00195$
      0026FE                       1589 00195$:
      0026FE D0 00            [24] 1590 	pop	ar0
      002700 50 03            [24] 1591 	jnc	00196$
      002702 02 25 9F         [24] 1592 	ljmp	00124$
      002705                       1593 00196$:
                                   1594 ;	walk.c:199: goto process;
      002705 02 24 07         [24] 1595 	ljmp	00103$
                                   1596 ;	walk.c:201: term:
      002708                       1597 00119$:
                                   1598 ;	walk.c:202: return;
                                   1599 ;	walk.c:203: }
      002708 85 10 81         [24] 1600 	mov	sp,_bp
      00270B D0 10            [24] 1601 	pop	_bp
      00270D 22               [24] 1602 	ret
                                   1603 ;------------------------------------------------------------
                                   1604 ;Allocation info for local variables in function 'main'
                                   1605 ;------------------------------------------------------------
                                   1606 ;initial                   Allocated to stack - _bp +5
                                   1607 ;N                         Allocated to stack - _bp +9
                                   1608 ;i                         Allocated to stack - _bp +11
                                   1609 ;j                         Allocated to registers r2 r6 
                                   1610 ;sloc0                     Allocated to stack - _bp +1
                                   1611 ;sloc1                     Allocated to stack - _bp +3
                                   1612 ;sloc2                     Allocated to stack - _bp +15
                                   1613 ;------------------------------------------------------------
                                   1614 ;	walk.c:205: void main(void) {
                                   1615 ;	-----------------------------------------
                                   1616 ;	 function main
                                   1617 ;	-----------------------------------------
      00270E                       1618 _main:
      00270E C0 10            [24] 1619 	push	_bp
      002710 E5 81            [12] 1620 	mov	a,sp
      002712 F5 10            [12] 1621 	mov	_bp,a
      002714 24 0C            [12] 1622 	add	a,#0x0c
      002716 F5 81            [12] 1623 	mov	sp,a
                                   1624 ;	walk.c:210: i0 = 1u;
      002718 78 11            [12] 1625 	mov	r0,#_i0
      00271A 76 01            [12] 1626 	mov	@r0,#0x01
                                   1627 ;	walk.c:212: P1_7 = 1;
                                   1628 ;	assignBit
      00271C D2 97            [12] 1629 	setb	_P1_7
                                   1630 ;	walk.c:213: IT0 = 1;
                                   1631 ;	assignBit
      00271E D2 88            [12] 1632 	setb	_IT0
                                   1633 ;	walk.c:214: EX0 = 1;
                                   1634 ;	assignBit
      002720 D2 A8            [12] 1635 	setb	_EX0
                                   1636 ;	walk.c:215: EA = 1;
                                   1637 ;	assignBit
      002722 D2 AF            [12] 1638 	setb	_EA
                                   1639 ;	walk.c:217: srand(RND);
      002724 90 80 00         [24] 1640 	mov	dptr,#_RND
      002727 E0               [24] 1641 	movx	a,@dptr
      002728 FE               [12] 1642 	mov	r6,a
      002729 A3               [24] 1643 	inc	dptr
      00272A E0               [24] 1644 	movx	a,@dptr
      00272B FF               [12] 1645 	mov	r7,a
      00272C 8E 82            [24] 1646 	mov	dpl,r6
      00272E 8F 83            [24] 1647 	mov	dph,r7
      002730 12 2D 31         [24] 1648 	lcall	_srand
                                   1649 ;	walk.c:218: qinit();
      002733 12 2A E9         [24] 1650 	lcall	_qinit
                                   1651 ;	walk.c:220: puts("\033[2J\033[?25l");
      002736 90 42 87         [24] 1652 	mov	dptr,#___str_4
      002739 75 F0 80         [24] 1653 	mov	b,#0x80
      00273C 12 2E 96         [24] 1654 	lcall	_puts
                                   1655 ;	walk.c:222: while (i0) {
      00273F E5 10            [12] 1656 	mov	a,_bp
      002741 24 05            [12] 1657 	add	a,#0x05
      002743 F9               [12] 1658 	mov	r1,a
      002744 FF               [12] 1659 	mov	r7,a
      002745 E5 10            [12] 1660 	mov	a,_bp
      002747 24 09            [12] 1661 	add	a,#0x09
      002749 F8               [12] 1662 	mov	r0,a
      00274A E4               [12] 1663 	clr	a
      00274B F6               [12] 1664 	mov	@r0,a
      00274C 08               [12] 1665 	inc	r0
      00274D F6               [12] 1666 	mov	@r0,a
      00274E                       1667 00108$:
      00274E 78 11            [12] 1668 	mov	r0,#_i0
      002750 E6               [12] 1669 	mov	a,@r0
      002751 70 03            [24] 1670 	jnz	00182$
      002753 02 2A D5         [24] 1671 	ljmp	00110$
      002756                       1672 00182$:
                                   1673 ;	walk.c:223: for (i = 0; i < ROWS; i++)
      002756 7B 00            [12] 1674 	mov	r3,#0x00
      002758 7C 00            [12] 1675 	mov	r4,#0x00
      00275A A8 10            [24] 1676 	mov	r0,_bp
      00275C 08               [12] 1677 	inc	r0
      00275D E4               [12] 1678 	clr	a
      00275E F6               [12] 1679 	mov	@r0,a
      00275F 08               [12] 1680 	inc	r0
      002760 F6               [12] 1681 	mov	@r0,a
                                   1682 ;	walk.c:224: for (j = 0; j < COLS; j++)
      002761                       1683 00125$:
      002761 A8 10            [24] 1684 	mov	r0,_bp
      002763 08               [12] 1685 	inc	r0
      002764 C0 01            [24] 1686 	push	ar1
      002766 E5 10            [12] 1687 	mov	a,_bp
      002768 24 03            [12] 1688 	add	a,#0x03
      00276A F9               [12] 1689 	mov	r1,a
      00276B E6               [12] 1690 	mov	a,@r0
      00276C 24 10            [12] 1691 	add	a,#_g
      00276E F7               [12] 1692 	mov	@r1,a
      00276F 08               [12] 1693 	inc	r0
      002770 E6               [12] 1694 	mov	a,@r0
      002771 34 43            [12] 1695 	addc	a,#(_g >> 8)
      002773 09               [12] 1696 	inc	r1
      002774 F7               [12] 1697 	mov	@r1,a
      002775 D0 01            [24] 1698 	pop	ar1
      002777 7A 00            [12] 1699 	mov	r2,#0x00
      002779 7E 00            [12] 1700 	mov	r6,#0x00
      00277B                       1701 00112$:
                                   1702 ;	walk.c:225: g[i][j] = 0x55u;
      00277B E5 10            [12] 1703 	mov	a,_bp
      00277D 24 03            [12] 1704 	add	a,#0x03
      00277F F8               [12] 1705 	mov	r0,a
      002780 EA               [12] 1706 	mov	a,r2
      002781 26               [12] 1707 	add	a,@r0
      002782 F5 82            [12] 1708 	mov	dpl,a
      002784 EE               [12] 1709 	mov	a,r6
      002785 08               [12] 1710 	inc	r0
      002786 36               [12] 1711 	addc	a,@r0
      002787 F5 83            [12] 1712 	mov	dph,a
      002789 74 55            [12] 1713 	mov	a,#0x55
      00278B F0               [24] 1714 	movx	@dptr,a
                                   1715 ;	walk.c:224: for (j = 0; j < COLS; j++)
      00278C 0A               [12] 1716 	inc	r2
      00278D BA 00 01         [24] 1717 	cjne	r2,#0x00,00183$
      002790 0E               [12] 1718 	inc	r6
      002791                       1719 00183$:
      002791 C3               [12] 1720 	clr	c
      002792 EA               [12] 1721 	mov	a,r2
      002793 94 C9            [12] 1722 	subb	a,#0xc9
      002795 EE               [12] 1723 	mov	a,r6
      002796 64 80            [12] 1724 	xrl	a,#0x80
      002798 94 80            [12] 1725 	subb	a,#0x80
      00279A 40 DF            [24] 1726 	jc	00112$
                                   1727 ;	walk.c:223: for (i = 0; i < ROWS; i++)
      00279C A8 10            [24] 1728 	mov	r0,_bp
      00279E 08               [12] 1729 	inc	r0
      00279F 74 C9            [12] 1730 	mov	a,#0xc9
      0027A1 26               [12] 1731 	add	a,@r0
      0027A2 F6               [12] 1732 	mov	@r0,a
      0027A3 E4               [12] 1733 	clr	a
      0027A4 08               [12] 1734 	inc	r0
      0027A5 36               [12] 1735 	addc	a,@r0
      0027A6 F6               [12] 1736 	mov	@r0,a
      0027A7 0B               [12] 1737 	inc	r3
      0027A8 BB 00 01         [24] 1738 	cjne	r3,#0x00,00185$
      0027AB 0C               [12] 1739 	inc	r4
      0027AC                       1740 00185$:
      0027AC C3               [12] 1741 	clr	c
      0027AD EB               [12] 1742 	mov	a,r3
      0027AE 94 30            [12] 1743 	subb	a,#0x30
      0027B0 EC               [12] 1744 	mov	a,r4
      0027B1 64 80            [12] 1745 	xrl	a,#0x80
      0027B3 94 80            [12] 1746 	subb	a,#0x80
      0027B5 40 AA            [24] 1747 	jc	00125$
                                   1748 ;	walk.c:227: initial.r = rand() % ROWS;
      0027B7 E5 10            [12] 1749 	mov	a,_bp
      0027B9 24 05            [12] 1750 	add	a,#0x05
      0027BB F8               [12] 1751 	mov	r0,a
      0027BC C0 07            [24] 1752 	push	ar7
      0027BE C0 01            [24] 1753 	push	ar1
      0027C0 C0 00            [24] 1754 	push	ar0
      0027C2 12 2C 6D         [24] 1755 	lcall	_rand
      0027C5 AD 82            [24] 1756 	mov	r5,dpl
      0027C7 AE 83            [24] 1757 	mov	r6,dph
      0027C9 74 30            [12] 1758 	mov	a,#0x30
      0027CB C0 E0            [24] 1759 	push	acc
      0027CD E4               [12] 1760 	clr	a
      0027CE C0 E0            [24] 1761 	push	acc
      0027D0 8D 82            [24] 1762 	mov	dpl,r5
      0027D2 8E 83            [24] 1763 	mov	dph,r6
      0027D4 12 2F 71         [24] 1764 	lcall	__modsint
      0027D7 AD 82            [24] 1765 	mov	r5,dpl
      0027D9 AE 83            [24] 1766 	mov	r6,dph
      0027DB 15 81            [12] 1767 	dec	sp
      0027DD 15 81            [12] 1768 	dec	sp
      0027DF D0 00            [24] 1769 	pop	ar0
      0027E1 D0 01            [24] 1770 	pop	ar1
      0027E3 A6 05            [24] 1771 	mov	@r0,ar5
      0027E5 08               [12] 1772 	inc	r0
      0027E6 A6 06            [24] 1773 	mov	@r0,ar6
      0027E8 18               [12] 1774 	dec	r0
                                   1775 ;	walk.c:228: initial.c = rand() % COLS;
      0027E9 74 02            [12] 1776 	mov	a,#0x02
      0027EB 29               [12] 1777 	add	a,r1
      0027EC F8               [12] 1778 	mov	r0,a
      0027ED C0 01            [24] 1779 	push	ar1
      0027EF C0 00            [24] 1780 	push	ar0
      0027F1 12 2C 6D         [24] 1781 	lcall	_rand
      0027F4 AD 82            [24] 1782 	mov	r5,dpl
      0027F6 AE 83            [24] 1783 	mov	r6,dph
      0027F8 74 C9            [12] 1784 	mov	a,#0xc9
      0027FA C0 E0            [24] 1785 	push	acc
      0027FC E4               [12] 1786 	clr	a
      0027FD C0 E0            [24] 1787 	push	acc
      0027FF 8D 82            [24] 1788 	mov	dpl,r5
      002801 8E 83            [24] 1789 	mov	dph,r6
      002803 12 2F 71         [24] 1790 	lcall	__modsint
      002806 AD 82            [24] 1791 	mov	r5,dpl
      002808 AE 83            [24] 1792 	mov	r6,dph
      00280A 15 81            [12] 1793 	dec	sp
      00280C 15 81            [12] 1794 	dec	sp
      00280E D0 00            [24] 1795 	pop	ar0
      002810 A6 05            [24] 1796 	mov	@r0,ar5
      002812 08               [12] 1797 	inc	r0
      002813 A6 06            [24] 1798 	mov	@r0,ar6
      002815 18               [12] 1799 	dec	r0
                                   1800 ;	walk.c:230: puts("\033[2J\033[?25l");
      002816 90 42 87         [24] 1801 	mov	dptr,#___str_4
      002819 75 F0 80         [24] 1802 	mov	b,#0x80
      00281C C0 00            [24] 1803 	push	ar0
      00281E 12 2E 96         [24] 1804 	lcall	_puts
      002821 D0 00            [24] 1805 	pop	ar0
      002823 D0 01            [24] 1806 	pop	ar1
                                   1807 ;	walk.c:231: printf("\033[1;1H% 8u% 8d% 8d", N, initial.r, initial.c);
      002825 86 05            [24] 1808 	mov	ar5,@r0
      002827 08               [12] 1809 	inc	r0
      002828 86 06            [24] 1810 	mov	ar6,@r0
      00282A 18               [12] 1811 	dec	r0
      00282B 87 03            [24] 1812 	mov	ar3,@r1
      00282D 09               [12] 1813 	inc	r1
      00282E 87 04            [24] 1814 	mov	ar4,@r1
      002830 19               [12] 1815 	dec	r1
      002831 C0 01            [24] 1816 	push	ar1
      002833 C0 05            [24] 1817 	push	ar5
      002835 C0 06            [24] 1818 	push	ar6
      002837 C0 03            [24] 1819 	push	ar3
      002839 C0 04            [24] 1820 	push	ar4
      00283B E5 10            [12] 1821 	mov	a,_bp
      00283D 24 09            [12] 1822 	add	a,#0x09
      00283F F8               [12] 1823 	mov	r0,a
      002840 E6               [12] 1824 	mov	a,@r0
      002841 C0 E0            [24] 1825 	push	acc
      002843 08               [12] 1826 	inc	r0
      002844 E6               [12] 1827 	mov	a,@r0
      002845 C0 E0            [24] 1828 	push	acc
      002847 74 92            [12] 1829 	mov	a,#___str_5
      002849 C0 E0            [24] 1830 	push	acc
      00284B 74 42            [12] 1831 	mov	a,#(___str_5 >> 8)
      00284D C0 E0            [24] 1832 	push	acc
      00284F 74 80            [12] 1833 	mov	a,#0x80
      002851 C0 E0            [24] 1834 	push	acc
      002853 12 2F 1C         [24] 1835 	lcall	_printf
      002856 E5 81            [12] 1836 	mov	a,sp
      002858 24 F7            [12] 1837 	add	a,#0xf7
      00285A F5 81            [12] 1838 	mov	sp,a
      00285C D0 01            [24] 1839 	pop	ar1
      00285E D0 07            [24] 1840 	pop	ar7
                                   1841 ;	walk.c:233: for (i = 0; i < REG; i++) {
      002860 E5 10            [12] 1842 	mov	a,_bp
      002862 24 0B            [12] 1843 	add	a,#0x0b
      002864 F8               [12] 1844 	mov	r0,a
      002865 E4               [12] 1845 	clr	a
      002866 F6               [12] 1846 	mov	@r0,a
      002867 08               [12] 1847 	inc	r0
      002868 F6               [12] 1848 	mov	@r0,a
      002869                       1849 00116$:
                                   1850 ;	walk.c:234: neigh[i].r = neigh[REG + i].r * (1 + rand() % 32);
      002869 C0 07            [24] 1851 	push	ar7
      00286B E5 10            [12] 1852 	mov	a,_bp
      00286D 24 0B            [12] 1853 	add	a,#0x0b
      00286F F8               [12] 1854 	mov	r0,a
      002870 E6               [12] 1855 	mov	a,@r0
      002871 25 E0            [12] 1856 	add	a,acc
      002873 FB               [12] 1857 	mov	r3,a
      002874 08               [12] 1858 	inc	r0
      002875 E6               [12] 1859 	mov	a,@r0
      002876 33               [12] 1860 	rlc	a
      002877 FC               [12] 1861 	mov	r4,a
      002878 EB               [12] 1862 	mov	a,r3
      002879 2B               [12] 1863 	add	a,r3
      00287A FB               [12] 1864 	mov	r3,a
      00287B EC               [12] 1865 	mov	a,r4
      00287C 33               [12] 1866 	rlc	a
      00287D FC               [12] 1867 	mov	r4,a
      00287E E5 10            [12] 1868 	mov	a,_bp
      002880 24 03            [12] 1869 	add	a,#0x03
      002882 F8               [12] 1870 	mov	r0,a
      002883 EB               [12] 1871 	mov	a,r3
      002884 24 84            [12] 1872 	add	a,#_neigh
      002886 F6               [12] 1873 	mov	@r0,a
      002887 EC               [12] 1874 	mov	a,r4
      002888 34 FF            [12] 1875 	addc	a,#(_neigh >> 8)
      00288A 08               [12] 1876 	inc	r0
      00288B F6               [12] 1877 	mov	@r0,a
      00288C E5 10            [12] 1878 	mov	a,_bp
      00288E 24 0B            [12] 1879 	add	a,#0x0b
      002890 F8               [12] 1880 	mov	r0,a
      002891 86 06            [24] 1881 	mov	ar6,@r0
      002893 74 08            [12] 1882 	mov	a,#0x08
      002895 2E               [12] 1883 	add	a,r6
      002896 FE               [12] 1884 	mov	r6,a
      002897 C2 D5            [12] 1885 	clr	F0
      002899 75 F0 04         [24] 1886 	mov	b,#0x04
      00289C EE               [12] 1887 	mov	a,r6
      00289D 30 E7 04         [24] 1888 	jnb	acc.7,00187$
      0028A0 B2 D5            [12] 1889 	cpl	F0
      0028A2 F4               [12] 1890 	cpl	a
      0028A3 04               [12] 1891 	inc	a
      0028A4                       1892 00187$:
      0028A4 A4               [48] 1893 	mul	ab
      0028A5 30 D5 0A         [24] 1894 	jnb	F0,00188$
      0028A8 F4               [12] 1895 	cpl	a
      0028A9 24 01            [12] 1896 	add	a,#0x01
      0028AB C5 F0            [12] 1897 	xch	a,b
      0028AD F4               [12] 1898 	cpl	a
      0028AE 34 00            [12] 1899 	addc	a,#0x00
      0028B0 C5 F0            [12] 1900 	xch	a,b
      0028B2                       1901 00188$:
      0028B2 FE               [12] 1902 	mov	r6,a
      0028B3 AD F0            [24] 1903 	mov	r5,b
      0028B5 24 84            [12] 1904 	add	a,#_neigh
      0028B7 F5 82            [12] 1905 	mov	dpl,a
      0028B9 ED               [12] 1906 	mov	a,r5
      0028BA 34 FF            [12] 1907 	addc	a,#(_neigh >> 8)
      0028BC F5 83            [12] 1908 	mov	dph,a
      0028BE A8 10            [24] 1909 	mov	r0,_bp
      0028C0 08               [12] 1910 	inc	r0
      0028C1 E0               [24] 1911 	movx	a,@dptr
      0028C2 F6               [12] 1912 	mov	@r0,a
      0028C3 A3               [24] 1913 	inc	dptr
      0028C4 E0               [24] 1914 	movx	a,@dptr
      0028C5 08               [12] 1915 	inc	r0
      0028C6 F6               [12] 1916 	mov	@r0,a
      0028C7 C0 06            [24] 1917 	push	ar6
      0028C9 C0 05            [24] 1918 	push	ar5
      0028CB C0 04            [24] 1919 	push	ar4
      0028CD C0 03            [24] 1920 	push	ar3
      0028CF C0 01            [24] 1921 	push	ar1
      0028D1 12 2C 6D         [24] 1922 	lcall	_rand
      0028D4 AA 82            [24] 1923 	mov	r2,dpl
      0028D6 AF 83            [24] 1924 	mov	r7,dph
      0028D8 74 20            [12] 1925 	mov	a,#0x20
      0028DA C0 E0            [24] 1926 	push	acc
      0028DC E4               [12] 1927 	clr	a
      0028DD C0 E0            [24] 1928 	push	acc
      0028DF 8A 82            [24] 1929 	mov	dpl,r2
      0028E1 8F 83            [24] 1930 	mov	dph,r7
      0028E3 12 2F 71         [24] 1931 	lcall	__modsint
      0028E6 AA 82            [24] 1932 	mov	r2,dpl
      0028E8 AF 83            [24] 1933 	mov	r7,dph
      0028EA 15 81            [12] 1934 	dec	sp
      0028EC 15 81            [12] 1935 	dec	sp
      0028EE D0 01            [24] 1936 	pop	ar1
      0028F0 D0 03            [24] 1937 	pop	ar3
      0028F2 D0 04            [24] 1938 	pop	ar4
      0028F4 D0 05            [24] 1939 	pop	ar5
      0028F6 D0 06            [24] 1940 	pop	ar6
      0028F8 0A               [12] 1941 	inc	r2
      0028F9 BA 00 01         [24] 1942 	cjne	r2,#0x00,00189$
      0028FC 0F               [12] 1943 	inc	r7
      0028FD                       1944 00189$:
      0028FD C0 06            [24] 1945 	push	ar6
      0028FF C0 05            [24] 1946 	push	ar5
      002901 C0 04            [24] 1947 	push	ar4
      002903 C0 03            [24] 1948 	push	ar3
      002905 C0 01            [24] 1949 	push	ar1
      002907 C0 02            [24] 1950 	push	ar2
      002909 C0 07            [24] 1951 	push	ar7
      00290B A8 10            [24] 1952 	mov	r0,_bp
      00290D 08               [12] 1953 	inc	r0
      00290E 86 82            [24] 1954 	mov	dpl,@r0
      002910 08               [12] 1955 	inc	r0
      002911 86 83            [24] 1956 	mov	dph,@r0
      002913 12 2D 65         [24] 1957 	lcall	__mulint
      002916 AA 82            [24] 1958 	mov	r2,dpl
      002918 AF 83            [24] 1959 	mov	r7,dph
      00291A 15 81            [12] 1960 	dec	sp
      00291C 15 81            [12] 1961 	dec	sp
      00291E D0 01            [24] 1962 	pop	ar1
      002920 D0 03            [24] 1963 	pop	ar3
      002922 D0 04            [24] 1964 	pop	ar4
      002924 D0 05            [24] 1965 	pop	ar5
      002926 D0 06            [24] 1966 	pop	ar6
      002928 E5 10            [12] 1967 	mov	a,_bp
      00292A 24 03            [12] 1968 	add	a,#0x03
      00292C F8               [12] 1969 	mov	r0,a
      00292D 86 82            [24] 1970 	mov	dpl,@r0
      00292F 08               [12] 1971 	inc	r0
      002930 86 83            [24] 1972 	mov	dph,@r0
      002932 EA               [12] 1973 	mov	a,r2
      002933 F0               [24] 1974 	movx	@dptr,a
      002934 EF               [12] 1975 	mov	a,r7
      002935 A3               [24] 1976 	inc	dptr
      002936 F0               [24] 1977 	movx	@dptr,a
                                   1978 ;	walk.c:235: neigh[i].c = neigh[REG + i].c * (1 + rand() % 32);
      002937 EB               [12] 1979 	mov	a,r3
      002938 24 84            [12] 1980 	add	a,#_neigh
      00293A FB               [12] 1981 	mov	r3,a
      00293B EC               [12] 1982 	mov	a,r4
      00293C 34 FF            [12] 1983 	addc	a,#(_neigh >> 8)
      00293E FC               [12] 1984 	mov	r4,a
      00293F 74 02            [12] 1985 	mov	a,#0x02
      002941 2B               [12] 1986 	add	a,r3
      002942 FA               [12] 1987 	mov	r2,a
      002943 E4               [12] 1988 	clr	a
      002944 3C               [12] 1989 	addc	a,r4
      002945 FF               [12] 1990 	mov	r7,a
      002946 EE               [12] 1991 	mov	a,r6
      002947 24 84            [12] 1992 	add	a,#_neigh
      002949 FE               [12] 1993 	mov	r6,a
      00294A ED               [12] 1994 	mov	a,r5
      00294B 34 FF            [12] 1995 	addc	a,#(_neigh >> 8)
      00294D FD               [12] 1996 	mov	r5,a
      00294E 8E 82            [24] 1997 	mov	dpl,r6
      002950 8D 83            [24] 1998 	mov	dph,r5
      002952 A3               [24] 1999 	inc	dptr
      002953 A3               [24] 2000 	inc	dptr
      002954 E5 10            [12] 2001 	mov	a,_bp
      002956 24 03            [12] 2002 	add	a,#0x03
      002958 F8               [12] 2003 	mov	r0,a
      002959 E0               [24] 2004 	movx	a,@dptr
      00295A F6               [12] 2005 	mov	@r0,a
      00295B A3               [24] 2006 	inc	dptr
      00295C E0               [24] 2007 	movx	a,@dptr
      00295D 08               [12] 2008 	inc	r0
      00295E F6               [12] 2009 	mov	@r0,a
      00295F C0 07            [24] 2010 	push	ar7
      002961 C0 04            [24] 2011 	push	ar4
      002963 C0 03            [24] 2012 	push	ar3
      002965 C0 02            [24] 2013 	push	ar2
      002967 C0 01            [24] 2014 	push	ar1
      002969 12 2C 6D         [24] 2015 	lcall	_rand
      00296C AD 82            [24] 2016 	mov	r5,dpl
      00296E AE 83            [24] 2017 	mov	r6,dph
      002970 74 20            [12] 2018 	mov	a,#0x20
      002972 C0 E0            [24] 2019 	push	acc
      002974 E4               [12] 2020 	clr	a
      002975 C0 E0            [24] 2021 	push	acc
      002977 8D 82            [24] 2022 	mov	dpl,r5
      002979 8E 83            [24] 2023 	mov	dph,r6
      00297B 12 2F 71         [24] 2024 	lcall	__modsint
      00297E AD 82            [24] 2025 	mov	r5,dpl
      002980 AE 83            [24] 2026 	mov	r6,dph
      002982 15 81            [12] 2027 	dec	sp
      002984 15 81            [12] 2028 	dec	sp
      002986 D0 01            [24] 2029 	pop	ar1
      002988 D0 02            [24] 2030 	pop	ar2
      00298A D0 03            [24] 2031 	pop	ar3
      00298C D0 04            [24] 2032 	pop	ar4
      00298E D0 07            [24] 2033 	pop	ar7
      002990 0D               [12] 2034 	inc	r5
      002991 BD 00 01         [24] 2035 	cjne	r5,#0x00,00190$
      002994 0E               [12] 2036 	inc	r6
      002995                       2037 00190$:
      002995 C0 07            [24] 2038 	push	ar7
      002997 C0 04            [24] 2039 	push	ar4
      002999 C0 03            [24] 2040 	push	ar3
      00299B C0 02            [24] 2041 	push	ar2
      00299D C0 01            [24] 2042 	push	ar1
      00299F C0 05            [24] 2043 	push	ar5
      0029A1 C0 06            [24] 2044 	push	ar6
      0029A3 E5 10            [12] 2045 	mov	a,_bp
      0029A5 24 03            [12] 2046 	add	a,#0x03
      0029A7 F8               [12] 2047 	mov	r0,a
      0029A8 86 82            [24] 2048 	mov	dpl,@r0
      0029AA 08               [12] 2049 	inc	r0
      0029AB 86 83            [24] 2050 	mov	dph,@r0
      0029AD 12 2D 65         [24] 2051 	lcall	__mulint
      0029B0 AD 82            [24] 2052 	mov	r5,dpl
      0029B2 AE 83            [24] 2053 	mov	r6,dph
      0029B4 15 81            [12] 2054 	dec	sp
      0029B6 15 81            [12] 2055 	dec	sp
      0029B8 D0 01            [24] 2056 	pop	ar1
      0029BA D0 02            [24] 2057 	pop	ar2
      0029BC D0 03            [24] 2058 	pop	ar3
      0029BE D0 04            [24] 2059 	pop	ar4
      0029C0 D0 07            [24] 2060 	pop	ar7
      0029C2 8A 82            [24] 2061 	mov	dpl,r2
      0029C4 8F 83            [24] 2062 	mov	dph,r7
      0029C6 ED               [12] 2063 	mov	a,r5
      0029C7 F0               [24] 2064 	movx	@dptr,a
      0029C8 EE               [12] 2065 	mov	a,r6
      0029C9 A3               [24] 2066 	inc	dptr
      0029CA F0               [24] 2067 	movx	@dptr,a
                                   2068 ;	walk.c:236: printf("% 8d% 8d", neigh[i].r, neigh[i].c);
      0029CB 8B 82            [24] 2069 	mov	dpl,r3
      0029CD 8C 83            [24] 2070 	mov	dph,r4
      0029CF E0               [24] 2071 	movx	a,@dptr
      0029D0 FB               [12] 2072 	mov	r3,a
      0029D1 A3               [24] 2073 	inc	dptr
      0029D2 E0               [24] 2074 	movx	a,@dptr
      0029D3 FC               [12] 2075 	mov	r4,a
      0029D4 C0 07            [24] 2076 	push	ar7
      0029D6 C0 01            [24] 2077 	push	ar1
      0029D8 C0 05            [24] 2078 	push	ar5
      0029DA C0 06            [24] 2079 	push	ar6
      0029DC C0 03            [24] 2080 	push	ar3
      0029DE C0 04            [24] 2081 	push	ar4
      0029E0 74 A5            [12] 2082 	mov	a,#___str_6
      0029E2 C0 E0            [24] 2083 	push	acc
      0029E4 74 42            [12] 2084 	mov	a,#(___str_6 >> 8)
      0029E6 C0 E0            [24] 2085 	push	acc
      0029E8 74 80            [12] 2086 	mov	a,#0x80
      0029EA C0 E0            [24] 2087 	push	acc
      0029EC 12 2F 1C         [24] 2088 	lcall	_printf
      0029EF E5 81            [12] 2089 	mov	a,sp
      0029F1 24 F9            [12] 2090 	add	a,#0xf9
      0029F3 F5 81            [12] 2091 	mov	sp,a
      0029F5 D0 01            [24] 2092 	pop	ar1
      0029F7 D0 07            [24] 2093 	pop	ar7
                                   2094 ;	walk.c:233: for (i = 0; i < REG; i++) {
      0029F9 E5 10            [12] 2095 	mov	a,_bp
      0029FB 24 0B            [12] 2096 	add	a,#0x0b
      0029FD F8               [12] 2097 	mov	r0,a
      0029FE 06               [12] 2098 	inc	@r0
      0029FF B6 00 02         [24] 2099 	cjne	@r0,#0x00,00191$
      002A02 08               [12] 2100 	inc	r0
      002A03 06               [12] 2101 	inc	@r0
      002A04                       2102 00191$:
      002A04 E5 10            [12] 2103 	mov	a,_bp
      002A06 24 0B            [12] 2104 	add	a,#0x0b
      002A08 F8               [12] 2105 	mov	r0,a
      002A09 86 05            [24] 2106 	mov	ar5,@r0
      002A0B 08               [12] 2107 	inc	r0
      002A0C 86 06            [24] 2108 	mov	ar6,@r0
      002A0E C3               [12] 2109 	clr	c
      002A0F ED               [12] 2110 	mov	a,r5
      002A10 94 08            [12] 2111 	subb	a,#0x08
      002A12 EE               [12] 2112 	mov	a,r6
      002A13 94 00            [12] 2113 	subb	a,#0x00
      002A15 D0 07            [24] 2114 	pop	ar7
      002A17 50 03            [24] 2115 	jnc	00192$
      002A19 02 28 69         [24] 2116 	ljmp	00116$
      002A1C                       2117 00192$:
                                   2118 ;	walk.c:239: OE76 = OE76_0;
      002A1C 78 12            [12] 2119 	mov	r0,#_OE76
      002A1E 76 3F            [12] 2120 	mov	@r0,#0x3f
                                   2121 ;	walk.c:240: setOE(OE76_NC);
      002A20 75 82 00         [24] 2122 	mov	dpl,#0x00
      002A23 C0 07            [24] 2123 	push	ar7
      002A25 C0 01            [24] 2124 	push	ar1
      002A27 12 20 8C         [24] 2125 	lcall	_setOE
      002A2A D0 01            [24] 2126 	pop	ar1
      002A2C D0 07            [24] 2127 	pop	ar7
                                   2128 ;	walk.c:242: walk(&initial);
      002A2E 8F 04            [24] 2129 	mov	ar4,r7
      002A30 7D 00            [12] 2130 	mov	r5,#0x00
      002A32 7E 40            [12] 2131 	mov	r6,#0x40
      002A34 8C 82            [24] 2132 	mov	dpl,r4
      002A36 8D 83            [24] 2133 	mov	dph,r5
      002A38 8E F0            [24] 2134 	mov	b,r6
      002A3A C0 07            [24] 2135 	push	ar7
      002A3C C0 01            [24] 2136 	push	ar1
      002A3E 12 23 65         [24] 2137 	lcall	_walk
      002A41 D0 01            [24] 2138 	pop	ar1
      002A43 D0 07            [24] 2139 	pop	ar7
                                   2140 ;	walk.c:244: for (i = 0; i < ROWS; i++)
      002A45 E5 10            [12] 2141 	mov	a,_bp
      002A47 24 0B            [12] 2142 	add	a,#0x0b
      002A49 F8               [12] 2143 	mov	r0,a
      002A4A E4               [12] 2144 	clr	a
      002A4B F6               [12] 2145 	mov	@r0,a
      002A4C 08               [12] 2146 	inc	r0
      002A4D F6               [12] 2147 	mov	@r0,a
      002A4E 7B 00            [12] 2148 	mov	r3,#0x00
      002A50 7C 00            [12] 2149 	mov	r4,#0x00
                                   2150 ;	walk.c:245: for (j = 0; j < COLS; j++)
      002A52                       2151 00132$:
      002A52 E5 10            [12] 2152 	mov	a,_bp
      002A54 24 03            [12] 2153 	add	a,#0x03
      002A56 F8               [12] 2154 	mov	r0,a
      002A57 EB               [12] 2155 	mov	a,r3
      002A58 24 10            [12] 2156 	add	a,#_g
      002A5A F6               [12] 2157 	mov	@r0,a
      002A5B EC               [12] 2158 	mov	a,r4
      002A5C 34 43            [12] 2159 	addc	a,#(_g >> 8)
      002A5E 08               [12] 2160 	inc	r0
      002A5F F6               [12] 2161 	mov	@r0,a
      002A60 7A 00            [12] 2162 	mov	r2,#0x00
      002A62 7E 00            [12] 2163 	mov	r6,#0x00
      002A64                       2164 00118$:
                                   2165 ;	walk.c:246: if (g[i][j] != 0xaau) bang();
      002A64 E5 10            [12] 2166 	mov	a,_bp
      002A66 24 03            [12] 2167 	add	a,#0x03
      002A68 F8               [12] 2168 	mov	r0,a
      002A69 EA               [12] 2169 	mov	a,r2
      002A6A 26               [12] 2170 	add	a,@r0
      002A6B F5 82            [12] 2171 	mov	dpl,a
      002A6D EE               [12] 2172 	mov	a,r6
      002A6E 08               [12] 2173 	inc	r0
      002A6F 36               [12] 2174 	addc	a,@r0
      002A70 F5 83            [12] 2175 	mov	dph,a
      002A72 E0               [24] 2176 	movx	a,@dptr
      002A73 FD               [12] 2177 	mov	r5,a
      002A74 BD AA 02         [24] 2178 	cjne	r5,#0xaa,00193$
      002A77 80 1B            [24] 2179 	sjmp	00119$
      002A79                       2180 00193$:
      002A79 C0 07            [24] 2181 	push	ar7
      002A7B C0 06            [24] 2182 	push	ar6
      002A7D C0 04            [24] 2183 	push	ar4
      002A7F C0 03            [24] 2184 	push	ar3
      002A81 C0 02            [24] 2185 	push	ar2
      002A83 C0 01            [24] 2186 	push	ar1
      002A85 12 20 7F         [24] 2187 	lcall	_bang
      002A88 D0 01            [24] 2188 	pop	ar1
      002A8A D0 02            [24] 2189 	pop	ar2
      002A8C D0 03            [24] 2190 	pop	ar3
      002A8E D0 04            [24] 2191 	pop	ar4
      002A90 D0 06            [24] 2192 	pop	ar6
      002A92 D0 07            [24] 2193 	pop	ar7
      002A94                       2194 00119$:
                                   2195 ;	walk.c:245: for (j = 0; j < COLS; j++)
      002A94 0A               [12] 2196 	inc	r2
      002A95 BA 00 01         [24] 2197 	cjne	r2,#0x00,00194$
      002A98 0E               [12] 2198 	inc	r6
      002A99                       2199 00194$:
      002A99 C3               [12] 2200 	clr	c
      002A9A EA               [12] 2201 	mov	a,r2
      002A9B 94 C9            [12] 2202 	subb	a,#0xc9
      002A9D EE               [12] 2203 	mov	a,r6
      002A9E 64 80            [12] 2204 	xrl	a,#0x80
      002AA0 94 80            [12] 2205 	subb	a,#0x80
      002AA2 40 C0            [24] 2206 	jc	00118$
                                   2207 ;	walk.c:244: for (i = 0; i < ROWS; i++)
      002AA4 74 C9            [12] 2208 	mov	a,#0xc9
      002AA6 2B               [12] 2209 	add	a,r3
      002AA7 FB               [12] 2210 	mov	r3,a
      002AA8 E4               [12] 2211 	clr	a
      002AA9 3C               [12] 2212 	addc	a,r4
      002AAA FC               [12] 2213 	mov	r4,a
      002AAB E5 10            [12] 2214 	mov	a,_bp
      002AAD 24 0B            [12] 2215 	add	a,#0x0b
      002AAF F8               [12] 2216 	mov	r0,a
      002AB0 06               [12] 2217 	inc	@r0
      002AB1 B6 00 02         [24] 2218 	cjne	@r0,#0x00,00196$
      002AB4 08               [12] 2219 	inc	r0
      002AB5 06               [12] 2220 	inc	@r0
      002AB6                       2221 00196$:
      002AB6 E5 10            [12] 2222 	mov	a,_bp
      002AB8 24 0B            [12] 2223 	add	a,#0x0b
      002ABA F8               [12] 2224 	mov	r0,a
      002ABB C3               [12] 2225 	clr	c
      002ABC E6               [12] 2226 	mov	a,@r0
      002ABD 94 30            [12] 2227 	subb	a,#0x30
      002ABF 08               [12] 2228 	inc	r0
      002AC0 E6               [12] 2229 	mov	a,@r0
      002AC1 64 80            [12] 2230 	xrl	a,#0x80
      002AC3 94 80            [12] 2231 	subb	a,#0x80
      002AC5 40 8B            [24] 2232 	jc	00132$
                                   2233 ;	walk.c:248: N++;
      002AC7 E5 10            [12] 2234 	mov	a,_bp
      002AC9 24 09            [12] 2235 	add	a,#0x09
      002ACB F8               [12] 2236 	mov	r0,a
      002ACC 06               [12] 2237 	inc	@r0
      002ACD B6 00 02         [24] 2238 	cjne	@r0,#0x00,00198$
      002AD0 08               [12] 2239 	inc	r0
      002AD1 06               [12] 2240 	inc	@r0
      002AD2                       2241 00198$:
      002AD2 02 27 4E         [24] 2242 	ljmp	00108$
      002AD5                       2243 00110$:
                                   2244 ;	walk.c:251: EA = 0;
                                   2245 ;	assignBit
      002AD5 C2 AF            [12] 2246 	clr	_EA
                                   2247 ;	walk.c:253: puts("\033[2J\033[?25h");
      002AD7 90 42 AE         [24] 2248 	mov	dptr,#___str_7
      002ADA 75 F0 80         [24] 2249 	mov	b,#0x80
      002ADD 12 2E 96         [24] 2250 	lcall	_puts
                                   2251 ;	walk.c:35: PCON |= 2;
      002AE0 43 87 02         [24] 2252 	orl	_PCON,#0x02
                                   2253 ;	walk.c:257: return;
                                   2254 ;	walk.c:258: }
      002AE3 85 10 81         [24] 2255 	mov	sp,_bp
      002AE6 D0 10            [24] 2256 	pop	_bp
      002AE8 22               [24] 2257 	ret
                                   2258 ;------------------------------------------------------------
                                   2259 ;Allocation info for local variables in function 'qinit'
                                   2260 ;------------------------------------------------------------
                                   2261 ;	walk.c:260: static void qinit(void) {
                                   2262 ;	-----------------------------------------
                                   2263 ;	 function qinit
                                   2264 ;	-----------------------------------------
      002AE9                       2265 _qinit:
                                   2266 ;	walk.c:261: hp = tp = 0;
      002AE9 90 FF 82         [24] 2267 	mov	dptr,#_tp
      002AEC E4               [12] 2268 	clr	a
      002AED F0               [24] 2269 	movx	@dptr,a
      002AEE A3               [24] 2270 	inc	dptr
      002AEF F0               [24] 2271 	movx	@dptr,a
      002AF0 90 FF 80         [24] 2272 	mov	dptr,#_hp
      002AF3 F0               [24] 2273 	movx	@dptr,a
      002AF4 A3               [24] 2274 	inc	dptr
      002AF5 F0               [24] 2275 	movx	@dptr,a
                                   2276 ;	walk.c:262: return;
                                   2277 ;	walk.c:263: }
      002AF6 22               [24] 2278 	ret
                                   2279 ;------------------------------------------------------------
                                   2280 ;Allocation info for local variables in function 'qadd'
                                   2281 ;------------------------------------------------------------
                                   2282 ;t                         Allocated to registers r7 r5 r6 
                                   2283 ;sloc0                     Allocated to stack - _bp +1
                                   2284 ;sloc1                     Allocated to stack - _bp +3
                                   2285 ;sloc2                     Allocated to stack - _bp +5
                                   2286 ;sloc3                     Allocated to stack - _bp +10
                                   2287 ;------------------------------------------------------------
                                   2288 ;	walk.c:265: static uint8_t qadd(struct node *t) {
                                   2289 ;	-----------------------------------------
                                   2290 ;	 function qadd
                                   2291 ;	-----------------------------------------
      002AF7                       2292 _qadd:
      002AF7 C0 10            [24] 2293 	push	_bp
      002AF9 E5 81            [12] 2294 	mov	a,sp
      002AFB F5 10            [12] 2295 	mov	_bp,a
      002AFD 24 06            [12] 2296 	add	a,#0x06
      002AFF F5 81            [12] 2297 	mov	sp,a
      002B01 AF 82            [24] 2298 	mov	r7,dpl
      002B03 AD 83            [24] 2299 	mov	r5,dph
      002B05 AE F0            [24] 2300 	mov	r6,b
                                   2301 ;	walk.c:266: if (((hp + 1) % QMAX) == tp) return 0u;
      002B07 90 FF 80         [24] 2302 	mov	dptr,#_hp
      002B0A E0               [24] 2303 	movx	a,@dptr
      002B0B FB               [12] 2304 	mov	r3,a
      002B0C A3               [24] 2305 	inc	dptr
      002B0D E0               [24] 2306 	movx	a,@dptr
      002B0E FC               [12] 2307 	mov	r4,a
      002B0F A8 10            [24] 2308 	mov	r0,_bp
      002B11 08               [12] 2309 	inc	r0
      002B12 74 01            [12] 2310 	mov	a,#0x01
      002B14 2B               [12] 2311 	add	a,r3
      002B15 F6               [12] 2312 	mov	@r0,a
      002B16 E4               [12] 2313 	clr	a
      002B17 3C               [12] 2314 	addc	a,r4
      002B18 08               [12] 2315 	inc	r0
      002B19 F6               [12] 2316 	mov	@r0,a
      002B1A C0 07            [24] 2317 	push	ar7
      002B1C C0 06            [24] 2318 	push	ar6
      002B1E C0 05            [24] 2319 	push	ar5
      002B20 C0 04            [24] 2320 	push	ar4
      002B22 C0 03            [24] 2321 	push	ar3
      002B24 74 B0            [12] 2322 	mov	a,#0xb0
      002B26 C0 E0            [24] 2323 	push	acc
      002B28 74 25            [12] 2324 	mov	a,#0x25
      002B2A C0 E0            [24] 2325 	push	acc
      002B2C A8 10            [24] 2326 	mov	r0,_bp
      002B2E 08               [12] 2327 	inc	r0
      002B2F 86 82            [24] 2328 	mov	dpl,@r0
      002B31 08               [12] 2329 	inc	r0
      002B32 86 83            [24] 2330 	mov	dph,@r0
      002B34 12 2F 71         [24] 2331 	lcall	__modsint
      002B37 A8 10            [24] 2332 	mov	r0,_bp
      002B39 08               [12] 2333 	inc	r0
      002B3A 08               [12] 2334 	inc	r0
      002B3B 08               [12] 2335 	inc	r0
      002B3C A6 82            [24] 2336 	mov	@r0,dpl
      002B3E 08               [12] 2337 	inc	r0
      002B3F A6 83            [24] 2338 	mov	@r0,dph
      002B41 15 81            [12] 2339 	dec	sp
      002B43 15 81            [12] 2340 	dec	sp
      002B45 D0 03            [24] 2341 	pop	ar3
      002B47 D0 04            [24] 2342 	pop	ar4
      002B49 D0 05            [24] 2343 	pop	ar5
      002B4B D0 06            [24] 2344 	pop	ar6
      002B4D D0 07            [24] 2345 	pop	ar7
      002B4F 90 FF 82         [24] 2346 	mov	dptr,#_tp
      002B52 E5 10            [12] 2347 	mov	a,_bp
      002B54 24 05            [12] 2348 	add	a,#0x05
      002B56 F8               [12] 2349 	mov	r0,a
      002B57 E0               [24] 2350 	movx	a,@dptr
      002B58 F6               [12] 2351 	mov	@r0,a
      002B59 A3               [24] 2352 	inc	dptr
      002B5A E0               [24] 2353 	movx	a,@dptr
      002B5B 08               [12] 2354 	inc	r0
      002B5C F6               [12] 2355 	mov	@r0,a
      002B5D E5 10            [12] 2356 	mov	a,_bp
      002B5F 24 03            [12] 2357 	add	a,#0x03
      002B61 F8               [12] 2358 	mov	r0,a
      002B62 E5 10            [12] 2359 	mov	a,_bp
      002B64 24 05            [12] 2360 	add	a,#0x05
      002B66 F9               [12] 2361 	mov	r1,a
      002B67 86 F0            [24] 2362 	mov	b,@r0
      002B69 E7               [12] 2363 	mov	a,@r1
      002B6A B5 F0 0A         [24] 2364 	cjne	a,b,00109$
      002B6D 08               [12] 2365 	inc	r0
      002B6E 86 F0            [24] 2366 	mov	b,@r0
      002B70 09               [12] 2367 	inc	r1
      002B71 E7               [12] 2368 	mov	a,@r1
      002B72 B5 F0 02         [24] 2369 	cjne	a,b,00109$
      002B75 80 02            [24] 2370 	sjmp	00110$
      002B77                       2371 00109$:
      002B77 80 05            [24] 2372 	sjmp	00102$
      002B79                       2373 00110$:
      002B79 75 82 00         [24] 2374 	mov	dpl,#0x00
      002B7C 80 65            [24] 2375 	sjmp	00103$
      002B7E                       2376 00102$:
                                   2377 ;	walk.c:267: queue[hp] = *t;
      002B7E 8F 02            [24] 2378 	mov	ar2,r7
      002B80 8E 07            [24] 2379 	mov	ar7,r6
      002B82 EB               [12] 2380 	mov	a,r3
      002B83 2B               [12] 2381 	add	a,r3
      002B84 FB               [12] 2382 	mov	r3,a
      002B85 EC               [12] 2383 	mov	a,r4
      002B86 33               [12] 2384 	rlc	a
      002B87 FC               [12] 2385 	mov	r4,a
      002B88 EB               [12] 2386 	mov	a,r3
      002B89 2B               [12] 2387 	add	a,r3
      002B8A FB               [12] 2388 	mov	r3,a
      002B8B EC               [12] 2389 	mov	a,r4
      002B8C 33               [12] 2390 	rlc	a
      002B8D FC               [12] 2391 	mov	r4,a
      002B8E EB               [12] 2392 	mov	a,r3
      002B8F 24 C0            [12] 2393 	add	a,#_queue
      002B91 FB               [12] 2394 	mov	r3,a
      002B92 EC               [12] 2395 	mov	a,r4
      002B93 34 68            [12] 2396 	addc	a,#(_queue >> 8)
      002B95 FC               [12] 2397 	mov	r4,a
      002B96 7E 00            [12] 2398 	mov	r6,#0x00
      002B98 74 04            [12] 2399 	mov	a,#0x04
      002B9A C0 E0            [24] 2400 	push	acc
      002B9C E4               [12] 2401 	clr	a
      002B9D C0 E0            [24] 2402 	push	acc
      002B9F C0 02            [24] 2403 	push	ar2
      002BA1 C0 05            [24] 2404 	push	ar5
      002BA3 C0 07            [24] 2405 	push	ar7
      002BA5 8B 82            [24] 2406 	mov	dpl,r3
      002BA7 8C 83            [24] 2407 	mov	dph,r4
      002BA9 8E F0            [24] 2408 	mov	b,r6
      002BAB 12 2E 03         [24] 2409 	lcall	___memcpy
      002BAE E5 81            [12] 2410 	mov	a,sp
      002BB0 24 FB            [12] 2411 	add	a,#0xfb
      002BB2 F5 81            [12] 2412 	mov	sp,a
                                   2413 ;	walk.c:268: hp = (hp + 1) % QMAX;
      002BB4 90 FF 80         [24] 2414 	mov	dptr,#_hp
      002BB7 E0               [24] 2415 	movx	a,@dptr
      002BB8 FD               [12] 2416 	mov	r5,a
      002BB9 A3               [24] 2417 	inc	dptr
      002BBA E0               [24] 2418 	movx	a,@dptr
      002BBB FE               [12] 2419 	mov	r6,a
      002BBC 0D               [12] 2420 	inc	r5
      002BBD BD 00 01         [24] 2421 	cjne	r5,#0x00,00111$
      002BC0 0E               [12] 2422 	inc	r6
      002BC1                       2423 00111$:
      002BC1 74 B0            [12] 2424 	mov	a,#0xb0
      002BC3 C0 E0            [24] 2425 	push	acc
      002BC5 74 25            [12] 2426 	mov	a,#0x25
      002BC7 C0 E0            [24] 2427 	push	acc
      002BC9 8D 82            [24] 2428 	mov	dpl,r5
      002BCB 8E 83            [24] 2429 	mov	dph,r6
      002BCD 12 2F 71         [24] 2430 	lcall	__modsint
      002BD0 AD 82            [24] 2431 	mov	r5,dpl
      002BD2 AE 83            [24] 2432 	mov	r6,dph
      002BD4 15 81            [12] 2433 	dec	sp
      002BD6 15 81            [12] 2434 	dec	sp
      002BD8 90 FF 80         [24] 2435 	mov	dptr,#_hp
      002BDB ED               [12] 2436 	mov	a,r5
      002BDC F0               [24] 2437 	movx	@dptr,a
      002BDD EE               [12] 2438 	mov	a,r6
      002BDE A3               [24] 2439 	inc	dptr
      002BDF F0               [24] 2440 	movx	@dptr,a
                                   2441 ;	walk.c:269: return 1u;
      002BE0 75 82 01         [24] 2442 	mov	dpl,#0x01
      002BE3                       2443 00103$:
                                   2444 ;	walk.c:270: }
      002BE3 85 10 81         [24] 2445 	mov	sp,_bp
      002BE6 D0 10            [24] 2446 	pop	_bp
      002BE8 22               [24] 2447 	ret
                                   2448 ;------------------------------------------------------------
                                   2449 ;Allocation info for local variables in function 'qget'
                                   2450 ;------------------------------------------------------------
                                   2451 ;t                         Allocated to registers r5 r6 r7 
                                   2452 ;------------------------------------------------------------
                                   2453 ;	walk.c:272: static uint8_t qget(struct node *t) {
                                   2454 ;	-----------------------------------------
                                   2455 ;	 function qget
                                   2456 ;	-----------------------------------------
      002BE9                       2457 _qget:
      002BE9 AD 82            [24] 2458 	mov	r5,dpl
      002BEB AE 83            [24] 2459 	mov	r6,dph
      002BED AF F0            [24] 2460 	mov	r7,b
                                   2461 ;	walk.c:273: if (hp == tp) return 0u;
      002BEF 90 FF 80         [24] 2462 	mov	dptr,#_hp
      002BF2 E0               [24] 2463 	movx	a,@dptr
      002BF3 FB               [12] 2464 	mov	r3,a
      002BF4 A3               [24] 2465 	inc	dptr
      002BF5 E0               [24] 2466 	movx	a,@dptr
      002BF6 FC               [12] 2467 	mov	r4,a
      002BF7 90 FF 82         [24] 2468 	mov	dptr,#_tp
      002BFA E0               [24] 2469 	movx	a,@dptr
      002BFB F9               [12] 2470 	mov	r1,a
      002BFC A3               [24] 2471 	inc	dptr
      002BFD E0               [24] 2472 	movx	a,@dptr
      002BFE FA               [12] 2473 	mov	r2,a
      002BFF EB               [12] 2474 	mov	a,r3
      002C00 B5 01 08         [24] 2475 	cjne	a,ar1,00102$
      002C03 EC               [12] 2476 	mov	a,r4
      002C04 B5 02 04         [24] 2477 	cjne	a,ar2,00102$
      002C07 75 82 00         [24] 2478 	mov	dpl,#0x00
      002C0A 22               [24] 2479 	ret
      002C0B                       2480 00102$:
                                   2481 ;	walk.c:274: *t = queue[tp];
      002C0B E9               [12] 2482 	mov	a,r1
      002C0C 29               [12] 2483 	add	a,r1
      002C0D F9               [12] 2484 	mov	r1,a
      002C0E EA               [12] 2485 	mov	a,r2
      002C0F 33               [12] 2486 	rlc	a
      002C10 FA               [12] 2487 	mov	r2,a
      002C11 E9               [12] 2488 	mov	a,r1
      002C12 29               [12] 2489 	add	a,r1
      002C13 F9               [12] 2490 	mov	r1,a
      002C14 EA               [12] 2491 	mov	a,r2
      002C15 33               [12] 2492 	rlc	a
      002C16 FA               [12] 2493 	mov	r2,a
      002C17 E9               [12] 2494 	mov	a,r1
      002C18 24 C0            [12] 2495 	add	a,#_queue
      002C1A F9               [12] 2496 	mov	r1,a
      002C1B EA               [12] 2497 	mov	a,r2
      002C1C 34 68            [12] 2498 	addc	a,#(_queue >> 8)
      002C1E FA               [12] 2499 	mov	r2,a
      002C1F 7C 00            [12] 2500 	mov	r4,#0x00
      002C21 74 04            [12] 2501 	mov	a,#0x04
      002C23 C0 E0            [24] 2502 	push	acc
      002C25 E4               [12] 2503 	clr	a
      002C26 C0 E0            [24] 2504 	push	acc
      002C28 C0 01            [24] 2505 	push	ar1
      002C2A C0 02            [24] 2506 	push	ar2
      002C2C C0 04            [24] 2507 	push	ar4
      002C2E 8D 82            [24] 2508 	mov	dpl,r5
      002C30 8E 83            [24] 2509 	mov	dph,r6
      002C32 8F F0            [24] 2510 	mov	b,r7
      002C34 12 2E 03         [24] 2511 	lcall	___memcpy
      002C37 E5 81            [12] 2512 	mov	a,sp
      002C39 24 FB            [12] 2513 	add	a,#0xfb
      002C3B F5 81            [12] 2514 	mov	sp,a
                                   2515 ;	walk.c:275: tp = (tp + 1) % QMAX;
      002C3D 90 FF 82         [24] 2516 	mov	dptr,#_tp
      002C40 E0               [24] 2517 	movx	a,@dptr
      002C41 FE               [12] 2518 	mov	r6,a
      002C42 A3               [24] 2519 	inc	dptr
      002C43 E0               [24] 2520 	movx	a,@dptr
      002C44 FF               [12] 2521 	mov	r7,a
      002C45 0E               [12] 2522 	inc	r6
      002C46 BE 00 01         [24] 2523 	cjne	r6,#0x00,00111$
      002C49 0F               [12] 2524 	inc	r7
      002C4A                       2525 00111$:
      002C4A 74 B0            [12] 2526 	mov	a,#0xb0
      002C4C C0 E0            [24] 2527 	push	acc
      002C4E 74 25            [12] 2528 	mov	a,#0x25
      002C50 C0 E0            [24] 2529 	push	acc
      002C52 8E 82            [24] 2530 	mov	dpl,r6
      002C54 8F 83            [24] 2531 	mov	dph,r7
      002C56 12 2F 71         [24] 2532 	lcall	__modsint
      002C59 AE 82            [24] 2533 	mov	r6,dpl
      002C5B AF 83            [24] 2534 	mov	r7,dph
      002C5D 15 81            [12] 2535 	dec	sp
      002C5F 15 81            [12] 2536 	dec	sp
      002C61 90 FF 82         [24] 2537 	mov	dptr,#_tp
      002C64 EE               [12] 2538 	mov	a,r6
      002C65 F0               [24] 2539 	movx	@dptr,a
      002C66 EF               [12] 2540 	mov	a,r7
      002C67 A3               [24] 2541 	inc	dptr
      002C68 F0               [24] 2542 	movx	@dptr,a
                                   2543 ;	walk.c:276: return 1u;
      002C69 75 82 01         [24] 2544 	mov	dpl,#0x01
                                   2545 ;	walk.c:277: }
      002C6C 22               [24] 2546 	ret
                                   2547 	.area CSEG    (CODE)
                                   2548 	.area CONST   (CODE)
                                   2549 	.area CONST   (CODE)
      00424F                       2550 ___str_0:
      00424F 4D 65 6D 6F 72 79 20  2551 	.ascii "Memory error"
             65 72 72 6F 72
      00425B 00                    2552 	.db 0x00
                                   2553 	.area CSEG    (CODE)
                                   2554 	.area CONST   (CODE)
      00425C                       2555 ___str_1:
      00425C 1B                    2556 	.db 0x1b
      00425D 5B 32 3B 31 48 25 20  2557 	.ascii "[2;1H% 8d% 8d% 8d% 8d"
             38 64 25 20 38 64 25
             20 38 64 25 20 38 64
      004272 00                    2558 	.db 0x00
                                   2559 	.area CSEG    (CODE)
                                   2560 	.area CONST   (CODE)
      004273                       2561 ___str_2:
      004273 1B                    2562 	.db 0x1b
      004274 5B 25 64 3B 25 64 48  2563 	.ascii "[%d;%dH."
             2E
      00427C 00                    2564 	.db 0x00
                                   2565 	.area CSEG    (CODE)
                                   2566 	.area CONST   (CODE)
      00427D                       2567 ___str_3:
      00427D 1B                    2568 	.db 0x1b
      00427E 5B 25 64 3B 25 64 48  2569 	.ascii "[%d;%dHo"
             6F
      004286 00                    2570 	.db 0x00
                                   2571 	.area CSEG    (CODE)
                                   2572 	.area CONST   (CODE)
      004287                       2573 ___str_4:
      004287 1B                    2574 	.db 0x1b
      004288 5B 32 4A              2575 	.ascii "[2J"
      00428B 1B                    2576 	.db 0x1b
      00428C 5B 3F 32 35 6C        2577 	.ascii "[?25l"
      004291 00                    2578 	.db 0x00
                                   2579 	.area CSEG    (CODE)
                                   2580 	.area CONST   (CODE)
      004292                       2581 ___str_5:
      004292 1B                    2582 	.db 0x1b
      004293 5B 31 3B 31 48 25 20  2583 	.ascii "[1;1H% 8u% 8d% 8d"
             38 75 25 20 38 64 25
             20 38 64
      0042A4 00                    2584 	.db 0x00
                                   2585 	.area CSEG    (CODE)
                                   2586 	.area CONST   (CODE)
      0042A5                       2587 ___str_6:
      0042A5 25 20 38 64 25 20 38  2588 	.ascii "% 8d% 8d"
             64
      0042AD 00                    2589 	.db 0x00
                                   2590 	.area CSEG    (CODE)
                                   2591 	.area CONST   (CODE)
      0042AE                       2592 ___str_7:
      0042AE 1B                    2593 	.db 0x1b
      0042AF 5B 32 4A              2594 	.ascii "[2J"
      0042B2 1B                    2595 	.db 0x1b
      0042B3 5B 3F 32 35 68        2596 	.ascii "[?25h"
      0042B8 00                    2597 	.db 0x00
                                   2598 	.area CSEG    (CODE)
                                   2599 	.area XINIT   (CODE)
      0042C4                       2600 __xinit__neigh:
      0042C4 FF FF                 2601 	.byte #0xff, #0xff	; -1
      0042C6 01 00                 2602 	.byte #0x01, #0x00	;  1
      0042C8 FF FF                 2603 	.byte #0xff, #0xff	; -1
      0042CA FF FF                 2604 	.byte #0xff, #0xff	; -1
      0042CC 01 00                 2605 	.byte #0x01, #0x00	;  1
      0042CE FF FF                 2606 	.byte #0xff, #0xff	; -1
      0042D0 01 00                 2607 	.byte #0x01, #0x00	;  1
      0042D2 01 00                 2608 	.byte #0x01, #0x00	;  1
      0042D4 FF FF                 2609 	.byte #0xff, #0xff	; -1
      0042D6 00 00                 2610 	.byte #0x00, #0x00	;  0
      0042D8 00 00                 2611 	.byte #0x00, #0x00	;  0
      0042DA FF FF                 2612 	.byte #0xff, #0xff	; -1
      0042DC 01 00                 2613 	.byte #0x01, #0x00	;  1
      0042DE 00 00                 2614 	.byte #0x00, #0x00	;  0
      0042E0 00 00                 2615 	.byte #0x00, #0x00	;  0
      0042E2 01 00                 2616 	.byte #0x01, #0x00	;  1
      0042E4 FF FF                 2617 	.byte #0xff, #0xff	; -1
      0042E6 01 00                 2618 	.byte #0x01, #0x00	;  1
      0042E8 FF FF                 2619 	.byte #0xff, #0xff	; -1
      0042EA FF FF                 2620 	.byte #0xff, #0xff	; -1
      0042EC 01 00                 2621 	.byte #0x01, #0x00	;  1
      0042EE FF FF                 2622 	.byte #0xff, #0xff	; -1
      0042F0 01 00                 2623 	.byte #0x01, #0x00	;  1
      0042F2 01 00                 2624 	.byte #0x01, #0x00	;  1
      0042F4 FF FF                 2625 	.byte #0xff, #0xff	; -1
      0042F6 00 00                 2626 	.byte #0x00, #0x00	;  0
      0042F8 00 00                 2627 	.byte #0x00, #0x00	;  0
      0042FA FF FF                 2628 	.byte #0xff, #0xff	; -1
      0042FC 01 00                 2629 	.byte #0x01, #0x00	;  1
      0042FE 00 00                 2630 	.byte #0x00, #0x00	;  0
      004300 00 00                 2631 	.byte #0x00, #0x00	;  0
      004302 01 00                 2632 	.byte #0x01, #0x00	;  1
                                   2633 	.area CABS    (ABS,CODE)
