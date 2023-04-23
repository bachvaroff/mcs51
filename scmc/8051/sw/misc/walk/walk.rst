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
                                    302 ;--------------------------------------------------------
                                    303 ; absolute internal ram data
                                    304 ;--------------------------------------------------------
                                    305 	.area IABS    (ABS,DATA)
                                    306 	.area IABS    (ABS,DATA)
                                    307 ;--------------------------------------------------------
                                    308 ; bit data
                                    309 ;--------------------------------------------------------
                                    310 	.area BSEG    (BIT)
                                    311 ;--------------------------------------------------------
                                    312 ; paged external ram data
                                    313 ;--------------------------------------------------------
                                    314 	.area PSEG    (PAG,XDATA)
                                    315 ;--------------------------------------------------------
                                    316 ; external ram data
                                    317 ;--------------------------------------------------------
                                    318 	.area XSEG    (XDATA)
      004100                        319 _g:
      004100                        320 	.ds 9216
      006500                        321 _stack:
      006500                        322 	.ds 36864
      00F500                        323 _sp:
      00F500                        324 	.ds 2
      00F502                        325 _main_R_65536_65:
      00F502                        326 	.ds 2
                                    327 ;--------------------------------------------------------
                                    328 ; absolute external ram data
                                    329 ;--------------------------------------------------------
                                    330 	.area XABS    (ABS,XDATA)
                                    331 ;--------------------------------------------------------
                                    332 ; external initialized ram data
                                    333 ;--------------------------------------------------------
                                    334 	.area XISEG   (XDATA)
                                    335 	.area HOME    (CODE)
                                    336 	.area GSINIT0 (CODE)
                                    337 	.area GSINIT1 (CODE)
                                    338 	.area GSINIT2 (CODE)
                                    339 	.area GSINIT3 (CODE)
                                    340 	.area GSINIT4 (CODE)
                                    341 	.area GSINIT5 (CODE)
                                    342 	.area GSINIT  (CODE)
                                    343 	.area GSFINAL (CODE)
                                    344 	.area CSEG    (CODE)
                                    345 ;--------------------------------------------------------
                                    346 ; interrupt vector 
                                    347 ;--------------------------------------------------------
                                    348 	.area HOME    (CODE)
      002000                        349 __interrupt_vect:
      002000 02 20 09         [24]  350 	ljmp	__sdcc_gsinit_startup
      002003 02 20 7C         [24]  351 	ljmp	_int0
                                    352 ;--------------------------------------------------------
                                    353 ; global & static initialisations
                                    354 ;--------------------------------------------------------
                                    355 	.area HOME    (CODE)
                                    356 	.area GSINIT  (CODE)
                                    357 	.area GSFINAL (CODE)
                                    358 	.area GSINIT  (CODE)
                                    359 	.globl __sdcc_gsinit_startup
                                    360 	.globl __sdcc_program_startup
                                    361 	.globl __start__stack
                                    362 	.globl __mcs51_genXINIT
                                    363 	.globl __mcs51_genXRAMCLEAR
                                    364 	.globl __mcs51_genRAMCLEAR
                                    365 ;------------------------------------------------------------
                                    366 ;Allocation info for local variables in function 'main'
                                    367 ;------------------------------------------------------------
                                    368 ;initial                   Allocated to stack - _bp +3
                                    369 ;i                         Allocated to stack - _bp +7
                                    370 ;j                         Allocated to registers r4 r5 
                                    371 ;sloc0                     Allocated to stack - _bp +1
                                    372 ;R                         Allocated with name '_main_R_65536_65'
                                    373 ;------------------------------------------------------------
                                    374 ;	walk.c:137: static volatile __xdata int *R = (__xdata int *)0xfffe;
      002062 90 F5 02         [24]  375 	mov	dptr,#_main_R_65536_65
      002065 74 FE            [12]  376 	mov	a,#0xfe
      002067 F0               [24]  377 	movx	@dptr,a
      002068 04               [12]  378 	inc	a
      002069 A3               [24]  379 	inc	dptr
      00206A F0               [24]  380 	movx	@dptr,a
                                    381 	.area GSFINAL (CODE)
      00206B 02 20 06         [24]  382 	ljmp	__sdcc_program_startup
                                    383 ;--------------------------------------------------------
                                    384 ; Home
                                    385 ;--------------------------------------------------------
                                    386 	.area HOME    (CODE)
                                    387 	.area HOME    (CODE)
      002006                        388 __sdcc_program_startup:
      002006 02 27 60         [24]  389 	ljmp	_main
                                    390 ;	return from main will return to caller
                                    391 ;--------------------------------------------------------
                                    392 ; code
                                    393 ;--------------------------------------------------------
                                    394 	.area CSEG    (CODE)
                                    395 ;------------------------------------------------------------
                                    396 ;Allocation info for local variables in function 'putchar'
                                    397 ;------------------------------------------------------------
                                    398 ;c                         Allocated to registers 
                                    399 ;------------------------------------------------------------
                                    400 ;	walk.c:8: int putchar(int c) __naked {
                                    401 ;	-----------------------------------------
                                    402 ;	 function putchar
                                    403 ;	-----------------------------------------
      00206E                        404 _putchar:
                                    405 ;	naked function: no prologue.
                                    406 ;	walk.c:13: __endasm;
      00206E E5 82            [12]  407 	mov	a, dpl
      002070 02 00 30         [24]  408 	ljmp	0x0030
                                    409 ;	walk.c:14: }
                                    410 ;	naked function: no epilogue.
                                    411 ;------------------------------------------------------------
                                    412 ;Allocation info for local variables in function 'getchar'
                                    413 ;------------------------------------------------------------
                                    414 ;	walk.c:16: int getchar(void) __naked {
                                    415 ;	-----------------------------------------
                                    416 ;	 function getchar
                                    417 ;	-----------------------------------------
      002073                        418 _getchar:
                                    419 ;	naked function: no prologue.
                                    420 ;	walk.c:22: __endasm;
      002073 12 00 32         [24]  421 	lcall	0x0032
      002076 F5 82            [12]  422 	mov	dpl, a
      002078 75 83 00         [24]  423 	mov	dph, #0
      00207B 22               [24]  424 	ret
                                    425 ;	walk.c:23: }
                                    426 ;	naked function: no epilogue.
                                    427 ;------------------------------------------------------------
                                    428 ;Allocation info for local variables in function 'int0'
                                    429 ;------------------------------------------------------------
                                    430 ;	walk.c:27: void int0(void) __interrupt IE0_VECTOR __using 1 {
                                    431 ;	-----------------------------------------
                                    432 ;	 function int0
                                    433 ;	-----------------------------------------
      00207C                        434 _int0:
                           00000F   435 	ar7 = 0x0f
                           00000E   436 	ar6 = 0x0e
                           00000D   437 	ar5 = 0x0d
                           00000C   438 	ar4 = 0x0c
                           00000B   439 	ar3 = 0x0b
                           00000A   440 	ar2 = 0x0a
                           000009   441 	ar1 = 0x09
                           000008   442 	ar0 = 0x08
      00207C C0 D0            [24]  443 	push	psw
      00207E 75 D0 08         [24]  444 	mov	psw,#0x08
                                    445 ;	walk.c:28: i0 = 0;
      002081 78 11            [12]  446 	mov	r0,#_i0
      002083 76 00            [12]  447 	mov	@r0,#0x00
                                    448 ;	walk.c:29: }
      002085 D0 D0            [24]  449 	pop	psw
      002087 32               [24]  450 	reti
                                    451 ;	eliminated unneeded push/pop dpl
                                    452 ;	eliminated unneeded push/pop dph
                                    453 ;	eliminated unneeded push/pop b
                                    454 ;	eliminated unneeded push/pop acc
                                    455 ;------------------------------------------------------------
                                    456 ;Allocation info for local variables in function 'reset'
                                    457 ;------------------------------------------------------------
                                    458 ;	walk.c:31: static void reset(void) __naked {
                                    459 ;	-----------------------------------------
                                    460 ;	 function reset
                                    461 ;	-----------------------------------------
      002088                        462 _reset:
                                    463 ;	naked function: no prologue.
                                    464 ;	walk.c:34: __endasm;
      002088 43 87 02         [24]  465 	orl	pcon, #2
                                    466 ;	walk.c:35: }
                                    467 ;	naked function: no epilogue.
                                    468 ;------------------------------------------------------------
                                    469 ;Allocation info for local variables in function 'update'
                                    470 ;------------------------------------------------------------
                                    471 ;cur                       Allocated to stack - _bp -5
                                    472 ;j                         Allocated to stack - _bp -7
                                    473 ;t                         Allocated to stack - _bp +1
                                    474 ;sloc0                     Allocated to stack - _bp +4
                                    475 ;sloc1                     Allocated to stack - _bp +6
                                    476 ;sloc2                     Allocated to stack - _bp +8
                                    477 ;------------------------------------------------------------
                                    478 ;	walk.c:74: static void update(struct node *t, struct node *cur, int j) {
                                    479 ;	-----------------------------------------
                                    480 ;	 function update
                                    481 ;	-----------------------------------------
      00208B                        482 _update:
                           000007   483 	ar7 = 0x07
                           000006   484 	ar6 = 0x06
                           000005   485 	ar5 = 0x05
                           000004   486 	ar4 = 0x04
                           000003   487 	ar3 = 0x03
                           000002   488 	ar2 = 0x02
                           000001   489 	ar1 = 0x01
                           000000   490 	ar0 = 0x00
      00208B C0 10            [24]  491 	push	_bp
      00208D 85 81 10         [24]  492 	mov	_bp,sp
      002090 C0 82            [24]  493 	push	dpl
      002092 C0 83            [24]  494 	push	dph
      002094 C0 F0            [24]  495 	push	b
      002096 E5 81            [12]  496 	mov	a,sp
      002098 24 07            [12]  497 	add	a,#0x07
      00209A F5 81            [12]  498 	mov	sp,a
                                    499 ;	walk.c:75: t->r = cur->r + neigh[j].r;
      00209C E5 10            [12]  500 	mov	a,_bp
      00209E 24 FB            [12]  501 	add	a,#0xfb
      0020A0 F8               [12]  502 	mov	r0,a
      0020A1 86 02            [24]  503 	mov	ar2,@r0
      0020A3 08               [12]  504 	inc	r0
      0020A4 86 03            [24]  505 	mov	ar3,@r0
      0020A6 08               [12]  506 	inc	r0
      0020A7 86 04            [24]  507 	mov	ar4,@r0
      0020A9 8A 82            [24]  508 	mov	dpl,r2
      0020AB 8B 83            [24]  509 	mov	dph,r3
      0020AD 8C F0            [24]  510 	mov	b,r4
      0020AF E5 10            [12]  511 	mov	a,_bp
      0020B1 24 04            [12]  512 	add	a,#0x04
      0020B3 F8               [12]  513 	mov	r0,a
      0020B4 12 2C D4         [24]  514 	lcall	__gptrget
      0020B7 F6               [12]  515 	mov	@r0,a
      0020B8 A3               [24]  516 	inc	dptr
      0020B9 12 2C D4         [24]  517 	lcall	__gptrget
      0020BC 08               [12]  518 	inc	r0
      0020BD F6               [12]  519 	mov	@r0,a
      0020BE E5 10            [12]  520 	mov	a,_bp
      0020C0 24 F9            [12]  521 	add	a,#0xf9
      0020C2 F8               [12]  522 	mov	r0,a
      0020C3 E5 10            [12]  523 	mov	a,_bp
      0020C5 24 06            [12]  524 	add	a,#0x06
      0020C7 F9               [12]  525 	mov	r1,a
      0020C8 E6               [12]  526 	mov	a,@r0
      0020C9 26               [12]  527 	add	a,@r0
      0020CA F7               [12]  528 	mov	@r1,a
      0020CB 08               [12]  529 	inc	r0
      0020CC E6               [12]  530 	mov	a,@r0
      0020CD 33               [12]  531 	rlc	a
      0020CE 09               [12]  532 	inc	r1
      0020CF F7               [12]  533 	mov	@r1,a
      0020D0 19               [12]  534 	dec	r1
      0020D1 E7               [12]  535 	mov	a,@r1
      0020D2 27               [12]  536 	add	a,@r1
      0020D3 F7               [12]  537 	mov	@r1,a
      0020D4 09               [12]  538 	inc	r1
      0020D5 E7               [12]  539 	mov	a,@r1
      0020D6 33               [12]  540 	rlc	a
      0020D7 F7               [12]  541 	mov	@r1,a
      0020D8 E5 10            [12]  542 	mov	a,_bp
      0020DA 24 06            [12]  543 	add	a,#0x06
      0020DC F8               [12]  544 	mov	r0,a
      0020DD E6               [12]  545 	mov	a,@r0
      0020DE 24 CE            [12]  546 	add	a,#_neigh
      0020E0 F5 82            [12]  547 	mov	dpl,a
      0020E2 08               [12]  548 	inc	r0
      0020E3 E6               [12]  549 	mov	a,@r0
      0020E4 34 3F            [12]  550 	addc	a,#(_neigh >> 8)
      0020E6 F5 83            [12]  551 	mov	dph,a
      0020E8 E4               [12]  552 	clr	a
      0020E9 93               [24]  553 	movc	a,@a+dptr
      0020EA FF               [12]  554 	mov	r7,a
      0020EB A3               [24]  555 	inc	dptr
      0020EC E4               [12]  556 	clr	a
      0020ED 93               [24]  557 	movc	a,@a+dptr
      0020EE FE               [12]  558 	mov	r6,a
      0020EF E5 10            [12]  559 	mov	a,_bp
      0020F1 24 04            [12]  560 	add	a,#0x04
      0020F3 F8               [12]  561 	mov	r0,a
      0020F4 EF               [12]  562 	mov	a,r7
      0020F5 26               [12]  563 	add	a,@r0
      0020F6 FF               [12]  564 	mov	r7,a
      0020F7 EE               [12]  565 	mov	a,r6
      0020F8 08               [12]  566 	inc	r0
      0020F9 36               [12]  567 	addc	a,@r0
      0020FA FE               [12]  568 	mov	r6,a
      0020FB A8 10            [24]  569 	mov	r0,_bp
      0020FD 08               [12]  570 	inc	r0
      0020FE 86 82            [24]  571 	mov	dpl,@r0
      002100 08               [12]  572 	inc	r0
      002101 86 83            [24]  573 	mov	dph,@r0
      002103 08               [12]  574 	inc	r0
      002104 86 F0            [24]  575 	mov	b,@r0
      002106 EF               [12]  576 	mov	a,r7
      002107 12 2A C9         [24]  577 	lcall	__gptrput
      00210A A3               [24]  578 	inc	dptr
      00210B EE               [12]  579 	mov	a,r6
      00210C 12 2A C9         [24]  580 	lcall	__gptrput
                                    581 ;	walk.c:76: t->c = cur->c + neigh[j].c;
      00210F A8 10            [24]  582 	mov	r0,_bp
      002111 08               [12]  583 	inc	r0
      002112 E5 10            [12]  584 	mov	a,_bp
      002114 24 08            [12]  585 	add	a,#0x08
      002116 F9               [12]  586 	mov	r1,a
      002117 74 02            [12]  587 	mov	a,#0x02
      002119 26               [12]  588 	add	a,@r0
      00211A F7               [12]  589 	mov	@r1,a
      00211B E4               [12]  590 	clr	a
      00211C 08               [12]  591 	inc	r0
      00211D 36               [12]  592 	addc	a,@r0
      00211E 09               [12]  593 	inc	r1
      00211F F7               [12]  594 	mov	@r1,a
      002120 08               [12]  595 	inc	r0
      002121 09               [12]  596 	inc	r1
      002122 E6               [12]  597 	mov	a,@r0
      002123 F7               [12]  598 	mov	@r1,a
      002124 74 02            [12]  599 	mov	a,#0x02
      002126 2A               [12]  600 	add	a,r2
      002127 FA               [12]  601 	mov	r2,a
      002128 E4               [12]  602 	clr	a
      002129 3B               [12]  603 	addc	a,r3
      00212A FB               [12]  604 	mov	r3,a
      00212B 8A 82            [24]  605 	mov	dpl,r2
      00212D 8B 83            [24]  606 	mov	dph,r3
      00212F 8C F0            [24]  607 	mov	b,r4
      002131 12 2C D4         [24]  608 	lcall	__gptrget
      002134 FA               [12]  609 	mov	r2,a
      002135 A3               [24]  610 	inc	dptr
      002136 12 2C D4         [24]  611 	lcall	__gptrget
      002139 FB               [12]  612 	mov	r3,a
      00213A E5 10            [12]  613 	mov	a,_bp
      00213C 24 06            [12]  614 	add	a,#0x06
      00213E F8               [12]  615 	mov	r0,a
      00213F E6               [12]  616 	mov	a,@r0
      002140 24 CE            [12]  617 	add	a,#_neigh
      002142 FC               [12]  618 	mov	r4,a
      002143 08               [12]  619 	inc	r0
      002144 E6               [12]  620 	mov	a,@r0
      002145 34 3F            [12]  621 	addc	a,#(_neigh >> 8)
      002147 FD               [12]  622 	mov	r5,a
      002148 8C 82            [24]  623 	mov	dpl,r4
      00214A 8D 83            [24]  624 	mov	dph,r5
      00214C A3               [24]  625 	inc	dptr
      00214D A3               [24]  626 	inc	dptr
      00214E E4               [12]  627 	clr	a
      00214F 93               [24]  628 	movc	a,@a+dptr
      002150 FC               [12]  629 	mov	r4,a
      002151 A3               [24]  630 	inc	dptr
      002152 E4               [12]  631 	clr	a
      002153 93               [24]  632 	movc	a,@a+dptr
      002154 FD               [12]  633 	mov	r5,a
      002155 EC               [12]  634 	mov	a,r4
      002156 2A               [12]  635 	add	a,r2
      002157 FA               [12]  636 	mov	r2,a
      002158 ED               [12]  637 	mov	a,r5
      002159 3B               [12]  638 	addc	a,r3
      00215A FB               [12]  639 	mov	r3,a
      00215B E5 10            [12]  640 	mov	a,_bp
      00215D 24 08            [12]  641 	add	a,#0x08
      00215F F8               [12]  642 	mov	r0,a
      002160 86 82            [24]  643 	mov	dpl,@r0
      002162 08               [12]  644 	inc	r0
      002163 86 83            [24]  645 	mov	dph,@r0
      002165 08               [12]  646 	inc	r0
      002166 86 F0            [24]  647 	mov	b,@r0
      002168 EA               [12]  648 	mov	a,r2
      002169 12 2A C9         [24]  649 	lcall	__gptrput
      00216C A3               [24]  650 	inc	dptr
      00216D EB               [12]  651 	mov	a,r3
      00216E 12 2A C9         [24]  652 	lcall	__gptrput
                                    653 ;	walk.c:78: if (t->r < 0) t->r += ROWS;
      002171 A8 10            [24]  654 	mov	r0,_bp
      002173 08               [12]  655 	inc	r0
      002174 86 82            [24]  656 	mov	dpl,@r0
      002176 08               [12]  657 	inc	r0
      002177 86 83            [24]  658 	mov	dph,@r0
      002179 08               [12]  659 	inc	r0
      00217A 86 F0            [24]  660 	mov	b,@r0
      00217C 12 2C D4         [24]  661 	lcall	__gptrget
      00217F FD               [12]  662 	mov	r5,a
      002180 A3               [24]  663 	inc	dptr
      002181 12 2C D4         [24]  664 	lcall	__gptrget
      002184 FC               [12]  665 	mov	r4,a
      002185 EE               [12]  666 	mov	a,r6
      002186 30 E7 1D         [24]  667 	jnb	acc.7,00104$
      002189 74 30            [12]  668 	mov	a,#0x30
      00218B 2D               [12]  669 	add	a,r5
      00218C FF               [12]  670 	mov	r7,a
      00218D E4               [12]  671 	clr	a
      00218E 3C               [12]  672 	addc	a,r4
      00218F FE               [12]  673 	mov	r6,a
      002190 A8 10            [24]  674 	mov	r0,_bp
      002192 08               [12]  675 	inc	r0
      002193 86 82            [24]  676 	mov	dpl,@r0
      002195 08               [12]  677 	inc	r0
      002196 86 83            [24]  678 	mov	dph,@r0
      002198 08               [12]  679 	inc	r0
      002199 86 F0            [24]  680 	mov	b,@r0
      00219B EF               [12]  681 	mov	a,r7
      00219C 12 2A C9         [24]  682 	lcall	__gptrput
      00219F A3               [24]  683 	inc	dptr
      0021A0 EE               [12]  684 	mov	a,r6
      0021A1 12 2A C9         [24]  685 	lcall	__gptrput
      0021A4 80 27            [24]  686 	sjmp	00105$
      0021A6                        687 00104$:
                                    688 ;	walk.c:79: else if (t->r >= ROWS) t->r -= ROWS;
      0021A6 C3               [12]  689 	clr	c
      0021A7 ED               [12]  690 	mov	a,r5
      0021A8 94 30            [12]  691 	subb	a,#0x30
      0021AA EC               [12]  692 	mov	a,r4
      0021AB 64 80            [12]  693 	xrl	a,#0x80
      0021AD 94 80            [12]  694 	subb	a,#0x80
      0021AF 40 1C            [24]  695 	jc	00105$
      0021B1 ED               [12]  696 	mov	a,r5
      0021B2 24 D0            [12]  697 	add	a,#0xd0
      0021B4 FD               [12]  698 	mov	r5,a
      0021B5 EC               [12]  699 	mov	a,r4
      0021B6 34 FF            [12]  700 	addc	a,#0xff
      0021B8 FC               [12]  701 	mov	r4,a
      0021B9 A8 10            [24]  702 	mov	r0,_bp
      0021BB 08               [12]  703 	inc	r0
      0021BC 86 82            [24]  704 	mov	dpl,@r0
      0021BE 08               [12]  705 	inc	r0
      0021BF 86 83            [24]  706 	mov	dph,@r0
      0021C1 08               [12]  707 	inc	r0
      0021C2 86 F0            [24]  708 	mov	b,@r0
      0021C4 ED               [12]  709 	mov	a,r5
      0021C5 12 2A C9         [24]  710 	lcall	__gptrput
      0021C8 A3               [24]  711 	inc	dptr
      0021C9 EC               [12]  712 	mov	a,r4
      0021CA 12 2A C9         [24]  713 	lcall	__gptrput
      0021CD                        714 00105$:
                                    715 ;	walk.c:80: if (t->c < 0) t->c += COLS;
      0021CD E5 10            [12]  716 	mov	a,_bp
      0021CF 24 08            [12]  717 	add	a,#0x08
      0021D1 F8               [12]  718 	mov	r0,a
      0021D2 86 82            [24]  719 	mov	dpl,@r0
      0021D4 08               [12]  720 	inc	r0
      0021D5 86 83            [24]  721 	mov	dph,@r0
      0021D7 08               [12]  722 	inc	r0
      0021D8 86 F0            [24]  723 	mov	b,@r0
      0021DA 12 2C D4         [24]  724 	lcall	__gptrget
      0021DD A3               [24]  725 	inc	dptr
      0021DE 12 2C D4         [24]  726 	lcall	__gptrget
      0021E1 30 E7 35         [24]  727 	jnb	acc.7,00109$
      0021E4 E5 10            [12]  728 	mov	a,_bp
      0021E6 24 08            [12]  729 	add	a,#0x08
      0021E8 F8               [12]  730 	mov	r0,a
      0021E9 86 82            [24]  731 	mov	dpl,@r0
      0021EB 08               [12]  732 	inc	r0
      0021EC 86 83            [24]  733 	mov	dph,@r0
      0021EE 08               [12]  734 	inc	r0
      0021EF 86 F0            [24]  735 	mov	b,@r0
      0021F1 12 2C D4         [24]  736 	lcall	__gptrget
      0021F4 FE               [12]  737 	mov	r6,a
      0021F5 A3               [24]  738 	inc	dptr
      0021F6 12 2C D4         [24]  739 	lcall	__gptrget
      0021F9 FF               [12]  740 	mov	r7,a
      0021FA 74 C0            [12]  741 	mov	a,#0xc0
      0021FC 2E               [12]  742 	add	a,r6
      0021FD FE               [12]  743 	mov	r6,a
      0021FE E4               [12]  744 	clr	a
      0021FF 3F               [12]  745 	addc	a,r7
      002200 FF               [12]  746 	mov	r7,a
      002201 E5 10            [12]  747 	mov	a,_bp
      002203 24 08            [12]  748 	add	a,#0x08
      002205 F8               [12]  749 	mov	r0,a
      002206 86 82            [24]  750 	mov	dpl,@r0
      002208 08               [12]  751 	inc	r0
      002209 86 83            [24]  752 	mov	dph,@r0
      00220B 08               [12]  753 	inc	r0
      00220C 86 F0            [24]  754 	mov	b,@r0
      00220E EE               [12]  755 	mov	a,r6
      00220F 12 2A C9         [24]  756 	lcall	__gptrput
      002212 A3               [24]  757 	inc	dptr
      002213 EF               [12]  758 	mov	a,r7
      002214 12 2A C9         [24]  759 	lcall	__gptrput
      002217 80 55            [24]  760 	sjmp	00110$
      002219                        761 00109$:
                                    762 ;	walk.c:81: else if (t->c >= COLS) t->c -= COLS;
      002219 E5 10            [12]  763 	mov	a,_bp
      00221B 24 08            [12]  764 	add	a,#0x08
      00221D F8               [12]  765 	mov	r0,a
      00221E 86 82            [24]  766 	mov	dpl,@r0
      002220 08               [12]  767 	inc	r0
      002221 86 83            [24]  768 	mov	dph,@r0
      002223 08               [12]  769 	inc	r0
      002224 86 F0            [24]  770 	mov	b,@r0
      002226 12 2C D4         [24]  771 	lcall	__gptrget
      002229 FE               [12]  772 	mov	r6,a
      00222A A3               [24]  773 	inc	dptr
      00222B 12 2C D4         [24]  774 	lcall	__gptrget
      00222E FF               [12]  775 	mov	r7,a
      00222F C3               [12]  776 	clr	c
      002230 EE               [12]  777 	mov	a,r6
      002231 94 C0            [12]  778 	subb	a,#0xc0
      002233 EF               [12]  779 	mov	a,r7
      002234 64 80            [12]  780 	xrl	a,#0x80
      002236 94 80            [12]  781 	subb	a,#0x80
      002238 40 34            [24]  782 	jc	00110$
      00223A E5 10            [12]  783 	mov	a,_bp
      00223C 24 08            [12]  784 	add	a,#0x08
      00223E F8               [12]  785 	mov	r0,a
      00223F 86 82            [24]  786 	mov	dpl,@r0
      002241 08               [12]  787 	inc	r0
      002242 86 83            [24]  788 	mov	dph,@r0
      002244 08               [12]  789 	inc	r0
      002245 86 F0            [24]  790 	mov	b,@r0
      002247 12 2C D4         [24]  791 	lcall	__gptrget
      00224A FE               [12]  792 	mov	r6,a
      00224B A3               [24]  793 	inc	dptr
      00224C 12 2C D4         [24]  794 	lcall	__gptrget
      00224F FF               [12]  795 	mov	r7,a
      002250 EE               [12]  796 	mov	a,r6
      002251 24 40            [12]  797 	add	a,#0x40
      002253 FE               [12]  798 	mov	r6,a
      002254 EF               [12]  799 	mov	a,r7
      002255 34 FF            [12]  800 	addc	a,#0xff
      002257 FF               [12]  801 	mov	r7,a
      002258 E5 10            [12]  802 	mov	a,_bp
      00225A 24 08            [12]  803 	add	a,#0x08
      00225C F8               [12]  804 	mov	r0,a
      00225D 86 82            [24]  805 	mov	dpl,@r0
      00225F 08               [12]  806 	inc	r0
      002260 86 83            [24]  807 	mov	dph,@r0
      002262 08               [12]  808 	inc	r0
      002263 86 F0            [24]  809 	mov	b,@r0
      002265 EE               [12]  810 	mov	a,r6
      002266 12 2A C9         [24]  811 	lcall	__gptrput
      002269 A3               [24]  812 	inc	dptr
      00226A EF               [12]  813 	mov	a,r7
      00226B 12 2A C9         [24]  814 	lcall	__gptrput
      00226E                        815 00110$:
                                    816 ;	walk.c:83: return;
                                    817 ;	walk.c:84: }
      00226E 85 10 81         [24]  818 	mov	sp,_bp
      002271 D0 10            [24]  819 	pop	_bp
      002273 22               [24]  820 	ret
                                    821 ;------------------------------------------------------------
                                    822 ;Allocation info for local variables in function 'walk'
                                    823 ;------------------------------------------------------------
                                    824 ;nstart                    Allocated to registers 
                                    825 ;cur                       Allocated to stack - _bp +14
                                    826 ;t                         Allocated to stack - _bp +18
                                    827 ;j                         Allocated to stack - _bp +22
                                    828 ;f                         Allocated to stack - _bp +24
                                    829 ;sloc0                     Allocated to stack - _bp +1
                                    830 ;sloc1                     Allocated to stack - _bp +2
                                    831 ;sloc2                     Allocated to stack - _bp +3
                                    832 ;sloc3                     Allocated to stack - _bp +4
                                    833 ;sloc4                     Allocated to stack - _bp +20
                                    834 ;sloc5                     Allocated to stack - _bp +5
                                    835 ;sloc6                     Allocated to stack - _bp +6
                                    836 ;sloc7                     Allocated to stack - _bp +8
                                    837 ;sloc8                     Allocated to stack - _bp +9
                                    838 ;sloc9                     Allocated to stack - _bp +10
                                    839 ;sloc10                    Allocated to stack - _bp +13
                                    840 ;------------------------------------------------------------
                                    841 ;	walk.c:86: static void walk(struct node *nstart) {
                                    842 ;	-----------------------------------------
                                    843 ;	 function walk
                                    844 ;	-----------------------------------------
      002274                        845 _walk:
      002274 C0 10            [24]  846 	push	_bp
      002276 E5 81            [12]  847 	mov	a,sp
      002278 F5 10            [12]  848 	mov	_bp,a
      00227A 24 19            [12]  849 	add	a,#0x19
      00227C F5 81            [12]  850 	mov	sp,a
      00227E AD 82            [24]  851 	mov	r5,dpl
      002280 AE 83            [24]  852 	mov	r6,dph
      002282 AF F0            [24]  853 	mov	r7,b
                                    854 ;	walk.c:90: cur = *nstart;
      002284 E5 10            [12]  855 	mov	a,_bp
      002286 24 0E            [12]  856 	add	a,#0x0e
      002288 F9               [12]  857 	mov	r1,a
      002289 FA               [12]  858 	mov	r2,a
      00228A 7B 00            [12]  859 	mov	r3,#0x00
      00228C 7C 40            [12]  860 	mov	r4,#0x40
      00228E C0 01            [24]  861 	push	ar1
      002290 74 04            [12]  862 	mov	a,#0x04
      002292 C0 E0            [24]  863 	push	acc
      002294 E4               [12]  864 	clr	a
      002295 C0 E0            [24]  865 	push	acc
      002297 C0 05            [24]  866 	push	ar5
      002299 C0 06            [24]  867 	push	ar6
      00229B C0 07            [24]  868 	push	ar7
      00229D 8A 82            [24]  869 	mov	dpl,r2
      00229F 8B 83            [24]  870 	mov	dph,r3
      0022A1 8C F0            [24]  871 	mov	b,r4
      0022A3 12 2B 82         [24]  872 	lcall	___memcpy
      0022A6 E5 81            [12]  873 	mov	a,sp
      0022A8 24 FB            [12]  874 	add	a,#0xfb
      0022AA F5 81            [12]  875 	mov	sp,a
      0022AC D0 01            [24]  876 	pop	ar1
                                    877 ;	walk.c:92: process:
      0022AE E5 10            [12]  878 	mov	a,_bp
      0022B0 24 09            [12]  879 	add	a,#0x09
      0022B2 F8               [12]  880 	mov	r0,a
      0022B3 A6 01            [24]  881 	mov	@r0,ar1
      0022B5 E5 10            [12]  882 	mov	a,_bp
      0022B7 24 12            [12]  883 	add	a,#0x12
      0022B9 F8               [12]  884 	mov	r0,a
      0022BA 24 02            [12]  885 	add	a,#0x02
      0022BC FE               [12]  886 	mov	r6,a
      0022BD C0 00            [24]  887 	push	ar0
      0022BF E5 10            [12]  888 	mov	a,_bp
      0022C1 24 08            [12]  889 	add	a,#0x08
      0022C3 F8               [12]  890 	mov	r0,a
      0022C4 A6 01            [24]  891 	mov	@r0,ar1
      0022C6 E5 10            [12]  892 	mov	a,_bp
      0022C8 24 0D            [12]  893 	add	a,#0x0d
      0022CA F8               [12]  894 	mov	r0,a
      0022CB A6 01            [24]  895 	mov	@r0,ar1
      0022CD D0 00            [24]  896 	pop	ar0
      0022CF 88 03            [24]  897 	mov	ar3,r0
      0022D1 C0 00            [24]  898 	push	ar0
      0022D3 E5 10            [12]  899 	mov	a,_bp
      0022D5 24 05            [12]  900 	add	a,#0x05
      0022D7 F8               [12]  901 	mov	r0,a
      0022D8 A6 06            [24]  902 	mov	@r0,ar6
      0022DA A8 10            [24]  903 	mov	r0,_bp
      0022DC 08               [12]  904 	inc	r0
      0022DD A6 01            [24]  905 	mov	@r0,ar1
      0022DF D0 00            [24]  906 	pop	ar0
      0022E1 C0 01            [24]  907 	push	ar1
      0022E3 A9 10            [24]  908 	mov	r1,_bp
      0022E5 09               [12]  909 	inc	r1
      0022E6 09               [12]  910 	inc	r1
      0022E7 A7 00            [24]  911 	mov	@r1,ar0
      0022E9 D0 01            [24]  912 	pop	ar1
      0022EB C0 00            [24]  913 	push	ar0
      0022ED E5 10            [12]  914 	mov	a,_bp
      0022EF 24 03            [12]  915 	add	a,#0x03
      0022F1 F8               [12]  916 	mov	r0,a
      0022F2 A6 01            [24]  917 	mov	@r0,ar1
      0022F4 E5 10            [12]  918 	mov	a,_bp
      0022F6 24 04            [12]  919 	add	a,#0x04
      0022F8 F8               [12]  920 	mov	r0,a
      0022F9 74 02            [12]  921 	mov	a,#0x02
      0022FB 29               [12]  922 	add	a,r1
      0022FC F6               [12]  923 	mov	@r0,a
      0022FD D0 00            [24]  924 	pop	ar0
      0022FF                        925 00101$:
                                    926 ;	walk.c:93: g[cur.r][cur.c] = 0xaa;
      0022FF 87 02            [24]  927 	mov	ar2,@r1
      002301 09               [12]  928 	inc	r1
      002302 87 05            [24]  929 	mov	ar5,@r1
      002304 19               [12]  930 	dec	r1
      002305 C0 06            [24]  931 	push	ar6
      002307 C0 03            [24]  932 	push	ar3
      002309 C0 01            [24]  933 	push	ar1
      00230B C0 00            [24]  934 	push	ar0
      00230D C0 02            [24]  935 	push	ar2
      00230F C0 05            [24]  936 	push	ar5
      002311 90 00 C0         [24]  937 	mov	dptr,#0x00c0
      002314 12 2A E4         [24]  938 	lcall	__mulint
      002317 AA 82            [24]  939 	mov	r2,dpl
      002319 AD 83            [24]  940 	mov	r5,dph
      00231B 15 81            [12]  941 	dec	sp
      00231D 15 81            [12]  942 	dec	sp
      00231F D0 00            [24]  943 	pop	ar0
      002321 D0 01            [24]  944 	pop	ar1
      002323 D0 03            [24]  945 	pop	ar3
      002325 D0 06            [24]  946 	pop	ar6
      002327 EA               [12]  947 	mov	a,r2
      002328 24 00            [12]  948 	add	a,#_g
      00232A FF               [12]  949 	mov	r7,a
      00232B ED               [12]  950 	mov	a,r5
      00232C 34 41            [12]  951 	addc	a,#(_g >> 8)
      00232E FC               [12]  952 	mov	r4,a
      00232F C0 00            [24]  953 	push	ar0
      002331 E5 10            [12]  954 	mov	a,_bp
      002333 24 04            [12]  955 	add	a,#0x04
      002335 F8               [12]  956 	mov	r0,a
      002336 86 00            [24]  957 	mov	ar0,@r0
      002338 86 02            [24]  958 	mov	ar2,@r0
      00233A 08               [12]  959 	inc	r0
      00233B 86 05            [24]  960 	mov	ar5,@r0
      00233D 18               [12]  961 	dec	r0
      00233E EA               [12]  962 	mov	a,r2
      00233F 2F               [12]  963 	add	a,r7
      002340 F5 82            [12]  964 	mov	dpl,a
      002342 ED               [12]  965 	mov	a,r5
      002343 3C               [12]  966 	addc	a,r4
      002344 F5 83            [12]  967 	mov	dph,a
      002346 74 AA            [12]  968 	mov	a,#0xaa
      002348 F0               [24]  969 	movx	@dptr,a
                                    970 ;	walk.c:94: printf("\033[%d;%dHo", cur.r + 1, cur.c + 1);
      002349 E5 10            [12]  971 	mov	a,_bp
      00234B 24 04            [12]  972 	add	a,#0x04
      00234D F8               [12]  973 	mov	r0,a
      00234E 86 00            [24]  974 	mov	ar0,@r0
      002350 86 02            [24]  975 	mov	ar2,@r0
      002352 08               [12]  976 	inc	r0
      002353 86 05            [24]  977 	mov	ar5,@r0
      002355 18               [12]  978 	dec	r0
      002356 D0 00            [24]  979 	pop	ar0
      002358 74 01            [12]  980 	mov	a,#0x01
      00235A 2A               [12]  981 	add	a,r2
      00235B FF               [12]  982 	mov	r7,a
      00235C E4               [12]  983 	clr	a
      00235D 3D               [12]  984 	addc	a,r5
      00235E FC               [12]  985 	mov	r4,a
      00235F 87 02            [24]  986 	mov	ar2,@r1
      002361 09               [12]  987 	inc	r1
      002362 87 05            [24]  988 	mov	ar5,@r1
      002364 19               [12]  989 	dec	r1
      002365 0A               [12]  990 	inc	r2
      002366 BA 00 01         [24]  991 	cjne	r2,#0x00,00174$
      002369 0D               [12]  992 	inc	r5
      00236A                        993 00174$:
      00236A C0 06            [24]  994 	push	ar6
      00236C C0 03            [24]  995 	push	ar3
      00236E C0 01            [24]  996 	push	ar1
      002370 C0 00            [24]  997 	push	ar0
      002372 C0 07            [24]  998 	push	ar7
      002374 C0 04            [24]  999 	push	ar4
      002376 C0 02            [24] 1000 	push	ar2
      002378 C0 05            [24] 1001 	push	ar5
      00237A 74 EE            [12] 1002 	mov	a,#___str_0
      00237C C0 E0            [24] 1003 	push	acc
      00237E 74 3F            [12] 1004 	mov	a,#(___str_0 >> 8)
      002380 C0 E0            [24] 1005 	push	acc
      002382 74 80            [12] 1006 	mov	a,#0x80
      002384 C0 E0            [24] 1007 	push	acc
      002386 12 2C 9B         [24] 1008 	lcall	_printf
      002389 E5 81            [12] 1009 	mov	a,sp
      00238B 24 F9            [12] 1010 	add	a,#0xf9
      00238D F5 81            [12] 1011 	mov	sp,a
      00238F D0 00            [24] 1012 	pop	ar0
      002391 D0 01            [24] 1013 	pop	ar1
      002393 D0 03            [24] 1014 	pop	ar3
      002395 D0 06            [24] 1015 	pop	ar6
                                   1016 ;	walk.c:133: return;
                                   1017 ;	walk.c:97: for (j = 0, f = 0; j < NMAX; j++) {
      002397                       1018 00132$:
      002397 C0 00            [24] 1019 	push	ar0
      002399 E5 10            [12] 1020 	mov	a,_bp
      00239B 24 18            [12] 1021 	add	a,#0x18
      00239D F8               [12] 1022 	mov	r0,a
      00239E E4               [12] 1023 	clr	a
      00239F F6               [12] 1024 	mov	@r0,a
      0023A0 08               [12] 1025 	inc	r0
      0023A1 F6               [12] 1026 	mov	@r0,a
      0023A2 E5 10            [12] 1027 	mov	a,_bp
      0023A4 24 16            [12] 1028 	add	a,#0x16
      0023A6 F8               [12] 1029 	mov	r0,a
      0023A7 E4               [12] 1030 	clr	a
      0023A8 F6               [12] 1031 	mov	@r0,a
      0023A9 08               [12] 1032 	inc	r0
      0023AA F6               [12] 1033 	mov	@r0,a
      0023AB D0 00            [24] 1034 	pop	ar0
      0023AD                       1035 00125$:
      0023AD C0 00            [24] 1036 	push	ar0
      0023AF E5 10            [12] 1037 	mov	a,_bp
      0023B1 24 16            [12] 1038 	add	a,#0x16
      0023B3 F8               [12] 1039 	mov	r0,a
      0023B4 C3               [12] 1040 	clr	c
      0023B5 E6               [12] 1041 	mov	a,@r0
      0023B6 94 08            [12] 1042 	subb	a,#0x08
      0023B8 08               [12] 1043 	inc	r0
      0023B9 E6               [12] 1044 	mov	a,@r0
      0023BA 64 80            [12] 1045 	xrl	a,#0x80
      0023BC 94 80            [12] 1046 	subb	a,#0x80
      0023BE D0 00            [24] 1047 	pop	ar0
      0023C0 40 03            [24] 1048 	jc	00175$
      0023C2 02 24 D4         [24] 1049 	ljmp	00108$
      0023C5                       1050 00175$:
                                   1051 ;	walk.c:98: update(&t, &cur, j);
      0023C5 C0 00            [24] 1052 	push	ar0
      0023C7 E5 10            [12] 1053 	mov	a,_bp
      0023C9 24 09            [12] 1054 	add	a,#0x09
      0023CB F8               [12] 1055 	mov	r0,a
      0023CC C0 01            [24] 1056 	push	ar1
      0023CE E5 10            [12] 1057 	mov	a,_bp
      0023D0 24 0A            [12] 1058 	add	a,#0x0a
      0023D2 F9               [12] 1059 	mov	r1,a
      0023D3 E6               [12] 1060 	mov	a,@r0
      0023D4 F7               [12] 1061 	mov	@r1,a
      0023D5 09               [12] 1062 	inc	r1
      0023D6 77 00            [12] 1063 	mov	@r1,#0x00
      0023D8 09               [12] 1064 	inc	r1
      0023D9 77 40            [12] 1065 	mov	@r1,#0x40
      0023DB D0 01            [24] 1066 	pop	ar1
      0023DD D0 00            [24] 1067 	pop	ar0
      0023DF 88 04            [24] 1068 	mov	ar4,r0
      0023E1 7D 00            [12] 1069 	mov	r5,#0x00
      0023E3 7F 40            [12] 1070 	mov	r7,#0x40
      0023E5 C0 06            [24] 1071 	push	ar6
      0023E7 C0 03            [24] 1072 	push	ar3
      0023E9 C0 01            [24] 1073 	push	ar1
      0023EB C0 00            [24] 1074 	push	ar0
      0023ED 85 00 F0         [24] 1075 	mov	b,ar0
      0023F0 E5 10            [12] 1076 	mov	a,_bp
      0023F2 24 16            [12] 1077 	add	a,#0x16
      0023F4 F8               [12] 1078 	mov	r0,a
      0023F5 E6               [12] 1079 	mov	a,@r0
      0023F6 C0 E0            [24] 1080 	push	acc
      0023F8 08               [12] 1081 	inc	r0
      0023F9 E6               [12] 1082 	mov	a,@r0
      0023FA C0 E0            [24] 1083 	push	acc
      0023FC A8 F0            [24] 1084 	mov	r0,b
      0023FE 85 00 F0         [24] 1085 	mov	b,ar0
      002401 E5 10            [12] 1086 	mov	a,_bp
      002403 24 0A            [12] 1087 	add	a,#0x0a
      002405 F8               [12] 1088 	mov	r0,a
      002406 E6               [12] 1089 	mov	a,@r0
      002407 C0 E0            [24] 1090 	push	acc
      002409 08               [12] 1091 	inc	r0
      00240A E6               [12] 1092 	mov	a,@r0
      00240B C0 E0            [24] 1093 	push	acc
      00240D 08               [12] 1094 	inc	r0
      00240E E6               [12] 1095 	mov	a,@r0
      00240F C0 E0            [24] 1096 	push	acc
      002411 8C 82            [24] 1097 	mov	dpl,r4
      002413 8D 83            [24] 1098 	mov	dph,r5
      002415 8F F0            [24] 1099 	mov	b,r7
      002417 12 20 8B         [24] 1100 	lcall	_update
      00241A E5 81            [12] 1101 	mov	a,sp
      00241C 24 FB            [12] 1102 	add	a,#0xfb
      00241E F5 81            [12] 1103 	mov	sp,a
      002420 D0 00            [24] 1104 	pop	ar0
                                   1105 ;	walk.c:100: if (g[t.r][t.c] == 0x55) f++;
      002422 86 05            [24] 1106 	mov	ar5,@r0
      002424 08               [12] 1107 	inc	r0
      002425 86 07            [24] 1108 	mov	ar7,@r0
      002427 18               [12] 1109 	dec	r0
      002428 C0 00            [24] 1110 	push	ar0
      00242A C0 05            [24] 1111 	push	ar5
      00242C C0 07            [24] 1112 	push	ar7
      00242E 90 00 C0         [24] 1113 	mov	dptr,#0x00c0
      002431 12 2A E4         [24] 1114 	lcall	__mulint
      002434 AC 82            [24] 1115 	mov	r4,dpl
      002436 AA 83            [24] 1116 	mov	r2,dph
      002438 15 81            [12] 1117 	dec	sp
      00243A 15 81            [12] 1118 	dec	sp
      00243C D0 00            [24] 1119 	pop	ar0
      00243E D0 01            [24] 1120 	pop	ar1
      002440 D0 03            [24] 1121 	pop	ar3
      002442 D0 06            [24] 1122 	pop	ar6
      002444 EC               [12] 1123 	mov	a,r4
      002445 24 00            [12] 1124 	add	a,#_g
      002447 FD               [12] 1125 	mov	r5,a
      002448 EA               [12] 1126 	mov	a,r2
      002449 34 41            [12] 1127 	addc	a,#(_g >> 8)
      00244B FF               [12] 1128 	mov	r7,a
      00244C C0 00            [24] 1129 	push	ar0
      00244E E5 10            [12] 1130 	mov	a,_bp
      002450 24 06            [12] 1131 	add	a,#0x06
      002452 F8               [12] 1132 	mov	r0,a
      002453 C0 01            [24] 1133 	push	ar1
      002455 A9 06            [24] 1134 	mov	r1,ar6
      002457 E7               [12] 1135 	mov	a,@r1
      002458 F6               [12] 1136 	mov	@r0,a
      002459 09               [12] 1137 	inc	r1
      00245A E7               [12] 1138 	mov	a,@r1
      00245B 08               [12] 1139 	inc	r0
      00245C F6               [12] 1140 	mov	@r0,a
      00245D D0 01            [24] 1141 	pop	ar1
      00245F E5 10            [12] 1142 	mov	a,_bp
      002461 24 06            [12] 1143 	add	a,#0x06
      002463 F8               [12] 1144 	mov	r0,a
      002464 E6               [12] 1145 	mov	a,@r0
      002465 2D               [12] 1146 	add	a,r5
      002466 F5 82            [12] 1147 	mov	dpl,a
      002468 08               [12] 1148 	inc	r0
      002469 E6               [12] 1149 	mov	a,@r0
      00246A 3F               [12] 1150 	addc	a,r7
      00246B F5 83            [12] 1151 	mov	dph,a
      00246D D0 00            [24] 1152 	pop	ar0
      00246F E0               [24] 1153 	movx	a,@dptr
      002470 FF               [12] 1154 	mov	r7,a
      002471 BF 55 11         [24] 1155 	cjne	r7,#0x55,00106$
      002474 C0 00            [24] 1156 	push	ar0
      002476 E5 10            [12] 1157 	mov	a,_bp
      002478 24 18            [12] 1158 	add	a,#0x18
      00247A F8               [12] 1159 	mov	r0,a
      00247B 06               [12] 1160 	inc	@r0
      00247C B6 00 02         [24] 1161 	cjne	@r0,#0x00,00178$
      00247F 08               [12] 1162 	inc	r0
      002480 06               [12] 1163 	inc	@r0
      002481                       1164 00178$:
      002481 D0 00            [24] 1165 	pop	ar0
      002483 80 3D            [24] 1166 	sjmp	00126$
      002485                       1167 00106$:
                                   1168 ;	walk.c:101: else if (g[t.r][t.c] != 0xaa) {
      002485 EC               [12] 1169 	mov	a,r4
      002486 24 00            [12] 1170 	add	a,#_g
      002488 FD               [12] 1171 	mov	r5,a
      002489 EA               [12] 1172 	mov	a,r2
      00248A 34 41            [12] 1173 	addc	a,#(_g >> 8)
      00248C FF               [12] 1174 	mov	r7,a
      00248D C0 00            [24] 1175 	push	ar0
      00248F E5 10            [12] 1176 	mov	a,_bp
      002491 24 06            [12] 1177 	add	a,#0x06
      002493 F8               [12] 1178 	mov	r0,a
      002494 E6               [12] 1179 	mov	a,@r0
      002495 2D               [12] 1180 	add	a,r5
      002496 F5 82            [12] 1181 	mov	dpl,a
      002498 08               [12] 1182 	inc	r0
      002499 E6               [12] 1183 	mov	a,@r0
      00249A 3F               [12] 1184 	addc	a,r7
      00249B F5 83            [12] 1185 	mov	dph,a
      00249D D0 00            [24] 1186 	pop	ar0
      00249F E0               [24] 1187 	movx	a,@dptr
      0024A0 FF               [12] 1188 	mov	r7,a
      0024A1 BF AA 02         [24] 1189 	cjne	r7,#0xaa,00179$
      0024A4 80 1C            [24] 1190 	sjmp	00126$
      0024A6                       1191 00179$:
                                   1192 ;	walk.c:102: (void)puts("Memory error");
      0024A6 90 3F F8         [24] 1193 	mov	dptr,#___str_1
      0024A9 75 F0 80         [24] 1194 	mov	b,#0x80
      0024AC C0 06            [24] 1195 	push	ar6
      0024AE C0 03            [24] 1196 	push	ar3
      0024B0 C0 01            [24] 1197 	push	ar1
      0024B2 C0 00            [24] 1198 	push	ar0
      0024B4 12 2C 15         [24] 1199 	lcall	_puts
      0024B7 D0 00            [24] 1200 	pop	ar0
      0024B9 D0 01            [24] 1201 	pop	ar1
      0024BB D0 03            [24] 1202 	pop	ar3
      0024BD D0 06            [24] 1203 	pop	ar6
                                   1204 ;	walk.c:103: reset();
      0024BF 12 20 88         [24] 1205 	lcall	_reset
      0024C2                       1206 00126$:
                                   1207 ;	walk.c:97: for (j = 0, f = 0; j < NMAX; j++) {
      0024C2 C0 00            [24] 1208 	push	ar0
      0024C4 E5 10            [12] 1209 	mov	a,_bp
      0024C6 24 16            [12] 1210 	add	a,#0x16
      0024C8 F8               [12] 1211 	mov	r0,a
      0024C9 06               [12] 1212 	inc	@r0
      0024CA B6 00 02         [24] 1213 	cjne	@r0,#0x00,00180$
      0024CD 08               [12] 1214 	inc	r0
      0024CE 06               [12] 1215 	inc	@r0
      0024CF                       1216 00180$:
      0024CF D0 00            [24] 1217 	pop	ar0
      0024D1 02 23 AD         [24] 1218 	ljmp	00125$
      0024D4                       1219 00108$:
                                   1220 ;	walk.c:107: if (f) {
      0024D4 C0 00            [24] 1221 	push	ar0
      0024D6 E5 10            [12] 1222 	mov	a,_bp
      0024D8 24 18            [12] 1223 	add	a,#0x18
      0024DA F8               [12] 1224 	mov	r0,a
      0024DB E6               [12] 1225 	mov	a,@r0
      0024DC 08               [12] 1226 	inc	r0
      0024DD 46               [12] 1227 	orl	a,@r0
      0024DE D0 00            [24] 1228 	pop	ar0
      0024E0 70 03            [24] 1229 	jnz	00181$
      0024E2 02 26 D8         [24] 1230 	ljmp	00120$
      0024E5                       1231 00181$:
                                   1232 ;	walk.c:108: while (1) {
      0024E5                       1233 00117$:
                                   1234 ;	walk.c:109: j = rand() % NMAX;
      0024E5 C0 06            [24] 1235 	push	ar6
      0024E7 C0 06            [24] 1236 	push	ar6
      0024E9 C0 03            [24] 1237 	push	ar3
      0024EB C0 01            [24] 1238 	push	ar1
      0024ED C0 00            [24] 1239 	push	ar0
      0024EF 12 29 EC         [24] 1240 	lcall	_rand
      0024F2 AD 82            [24] 1241 	mov	r5,dpl
      0024F4 AF 83            [24] 1242 	mov	r7,dph
      0024F6 74 08            [12] 1243 	mov	a,#0x08
      0024F8 C0 E0            [24] 1244 	push	acc
      0024FA E4               [12] 1245 	clr	a
      0024FB C0 E0            [24] 1246 	push	acc
      0024FD 8D 82            [24] 1247 	mov	dpl,r5
      0024FF 8F 83            [24] 1248 	mov	dph,r7
      002501 12 2C F0         [24] 1249 	lcall	__modsint
      002504 C0 00            [24] 1250 	push	ar0
      002506 C8               [12] 1251 	xch	a,r0
      002507 E5 10            [12] 1252 	mov	a,_bp
      002509 24 16            [12] 1253 	add	a,#0x16
      00250B C8               [12] 1254 	xch	a,r0
      00250C A6 82            [24] 1255 	mov	@r0,dpl
      00250E 08               [12] 1256 	inc	r0
      00250F A6 83            [24] 1257 	mov	@r0,dph
      002511 D0 00            [24] 1258 	pop	ar0
      002513 15 81            [12] 1259 	dec	sp
      002515 15 81            [12] 1260 	dec	sp
      002517 D0 00            [24] 1261 	pop	ar0
      002519 D0 01            [24] 1262 	pop	ar1
      00251B D0 03            [24] 1263 	pop	ar3
      00251D D0 06            [24] 1264 	pop	ar6
                                   1265 ;	walk.c:110: update(&t, &cur, j);
      00251F C0 00            [24] 1266 	push	ar0
      002521 E5 10            [12] 1267 	mov	a,_bp
      002523 24 0D            [12] 1268 	add	a,#0x0d
      002525 F8               [12] 1269 	mov	r0,a
      002526 C0 01            [24] 1270 	push	ar1
      002528 E5 10            [12] 1271 	mov	a,_bp
      00252A 24 0A            [12] 1272 	add	a,#0x0a
      00252C F9               [12] 1273 	mov	r1,a
      00252D E6               [12] 1274 	mov	a,@r0
      00252E F7               [12] 1275 	mov	@r1,a
      00252F 09               [12] 1276 	inc	r1
      002530 77 00            [12] 1277 	mov	@r1,#0x00
      002532 09               [12] 1278 	inc	r1
      002533 77 40            [12] 1279 	mov	@r1,#0x40
      002535 D0 01            [24] 1280 	pop	ar1
      002537 D0 00            [24] 1281 	pop	ar0
      002539 8B 04            [24] 1282 	mov	ar4,r3
      00253B 7D 00            [12] 1283 	mov	r5,#0x00
      00253D 7F 40            [12] 1284 	mov	r7,#0x40
      00253F C0 06            [24] 1285 	push	ar6
      002541 C0 03            [24] 1286 	push	ar3
      002543 C0 01            [24] 1287 	push	ar1
      002545 C0 00            [24] 1288 	push	ar0
      002547 85 00 F0         [24] 1289 	mov	b,ar0
      00254A E5 10            [12] 1290 	mov	a,_bp
      00254C 24 16            [12] 1291 	add	a,#0x16
      00254E F8               [12] 1292 	mov	r0,a
      00254F E6               [12] 1293 	mov	a,@r0
      002550 C0 E0            [24] 1294 	push	acc
      002552 08               [12] 1295 	inc	r0
      002553 E6               [12] 1296 	mov	a,@r0
      002554 C0 E0            [24] 1297 	push	acc
      002556 A8 F0            [24] 1298 	mov	r0,b
      002558 85 00 F0         [24] 1299 	mov	b,ar0
      00255B E5 10            [12] 1300 	mov	a,_bp
      00255D 24 0A            [12] 1301 	add	a,#0x0a
      00255F F8               [12] 1302 	mov	r0,a
      002560 E6               [12] 1303 	mov	a,@r0
      002561 C0 E0            [24] 1304 	push	acc
      002563 08               [12] 1305 	inc	r0
      002564 E6               [12] 1306 	mov	a,@r0
      002565 C0 E0            [24] 1307 	push	acc
      002567 08               [12] 1308 	inc	r0
      002568 E6               [12] 1309 	mov	a,@r0
      002569 C0 E0            [24] 1310 	push	acc
      00256B 8C 82            [24] 1311 	mov	dpl,r4
      00256D 8D 83            [24] 1312 	mov	dph,r5
      00256F 8F F0            [24] 1313 	mov	b,r7
      002571 12 20 8B         [24] 1314 	lcall	_update
      002574 E5 81            [12] 1315 	mov	a,sp
      002576 24 FB            [12] 1316 	add	a,#0xfb
      002578 F5 81            [12] 1317 	mov	sp,a
      00257A D0 00            [24] 1318 	pop	ar0
      00257C D0 01            [24] 1319 	pop	ar1
      00257E D0 03            [24] 1320 	pop	ar3
      002580 D0 06            [24] 1321 	pop	ar6
                                   1322 ;	walk.c:112: if (g[t.r][t.c] == 0xaa) continue;
      002582 C0 00            [24] 1323 	push	ar0
      002584 A8 03            [24] 1324 	mov	r0,ar3
      002586 86 06            [24] 1325 	mov	ar6,@r0
      002588 08               [12] 1326 	inc	r0
      002589 86 07            [24] 1327 	mov	ar7,@r0
      00258B D0 00            [24] 1328 	pop	ar0
      00258D C0 06            [24] 1329 	push	ar6
      00258F C0 03            [24] 1330 	push	ar3
      002591 C0 01            [24] 1331 	push	ar1
      002593 C0 00            [24] 1332 	push	ar0
      002595 C0 06            [24] 1333 	push	ar6
      002597 C0 07            [24] 1334 	push	ar7
      002599 90 00 C0         [24] 1335 	mov	dptr,#0x00c0
      00259C 12 2A E4         [24] 1336 	lcall	__mulint
      00259F AD 82            [24] 1337 	mov	r5,dpl
      0025A1 AC 83            [24] 1338 	mov	r4,dph
      0025A3 15 81            [12] 1339 	dec	sp
      0025A5 15 81            [12] 1340 	dec	sp
      0025A7 D0 00            [24] 1341 	pop	ar0
      0025A9 D0 01            [24] 1342 	pop	ar1
      0025AB D0 03            [24] 1343 	pop	ar3
      0025AD D0 06            [24] 1344 	pop	ar6
      0025AF ED               [12] 1345 	mov	a,r5
      0025B0 24 00            [12] 1346 	add	a,#_g
      0025B2 FE               [12] 1347 	mov	r6,a
      0025B3 EC               [12] 1348 	mov	a,r4
      0025B4 34 41            [12] 1349 	addc	a,#(_g >> 8)
      0025B6 FF               [12] 1350 	mov	r7,a
      0025B7 C0 00            [24] 1351 	push	ar0
      0025B9 E5 10            [12] 1352 	mov	a,_bp
      0025BB 24 05            [12] 1353 	add	a,#0x05
      0025BD F8               [12] 1354 	mov	r0,a
      0025BE C0 01            [24] 1355 	push	ar1
      0025C0 E5 10            [12] 1356 	mov	a,_bp
      0025C2 24 06            [12] 1357 	add	a,#0x06
      0025C4 F9               [12] 1358 	mov	r1,a
      0025C5 86 00            [24] 1359 	mov	ar0,@r0
      0025C7 E6               [12] 1360 	mov	a,@r0
      0025C8 F7               [12] 1361 	mov	@r1,a
      0025C9 08               [12] 1362 	inc	r0
      0025CA E6               [12] 1363 	mov	a,@r0
      0025CB 09               [12] 1364 	inc	r1
      0025CC F7               [12] 1365 	mov	@r1,a
      0025CD 18               [12] 1366 	dec	r0
      0025CE D0 01            [24] 1367 	pop	ar1
      0025D0 E5 10            [12] 1368 	mov	a,_bp
      0025D2 24 06            [12] 1369 	add	a,#0x06
      0025D4 F8               [12] 1370 	mov	r0,a
      0025D5 E6               [12] 1371 	mov	a,@r0
      0025D6 2E               [12] 1372 	add	a,r6
      0025D7 F5 82            [12] 1373 	mov	dpl,a
      0025D9 08               [12] 1374 	inc	r0
      0025DA E6               [12] 1375 	mov	a,@r0
      0025DB 3F               [12] 1376 	addc	a,r7
      0025DC F5 83            [12] 1377 	mov	dph,a
      0025DE D0 00            [24] 1378 	pop	ar0
      0025E0 E0               [24] 1379 	movx	a,@dptr
      0025E1 FF               [12] 1380 	mov	r7,a
      0025E2 BF AA 05         [24] 1381 	cjne	r7,#0xaa,00182$
      0025E5 D0 06            [24] 1382 	pop	ar6
      0025E7 02 24 E5         [24] 1383 	ljmp	00117$
      0025EA                       1384 00182$:
      0025EA D0 06            [24] 1385 	pop	ar6
                                   1386 ;	walk.c:113: else if (g[t.r][t.c] != 0x55) {
      0025EC ED               [12] 1387 	mov	a,r5
      0025ED 24 00            [12] 1388 	add	a,#_g
      0025EF FD               [12] 1389 	mov	r5,a
      0025F0 EC               [12] 1390 	mov	a,r4
      0025F1 34 41            [12] 1391 	addc	a,#(_g >> 8)
      0025F3 FF               [12] 1392 	mov	r7,a
      0025F4 C0 00            [24] 1393 	push	ar0
      0025F6 E5 10            [12] 1394 	mov	a,_bp
      0025F8 24 06            [12] 1395 	add	a,#0x06
      0025FA F8               [12] 1396 	mov	r0,a
      0025FB E6               [12] 1397 	mov	a,@r0
      0025FC 2D               [12] 1398 	add	a,r5
      0025FD F5 82            [12] 1399 	mov	dpl,a
      0025FF 08               [12] 1400 	inc	r0
      002600 E6               [12] 1401 	mov	a,@r0
      002601 3F               [12] 1402 	addc	a,r7
      002602 F5 83            [12] 1403 	mov	dph,a
      002604 D0 00            [24] 1404 	pop	ar0
      002606 E0               [24] 1405 	movx	a,@dptr
      002607 FF               [12] 1406 	mov	r7,a
      002608 BF 55 02         [24] 1407 	cjne	r7,#0x55,00183$
      00260B 80 1C            [24] 1408 	sjmp	00113$
      00260D                       1409 00183$:
                                   1410 ;	walk.c:114: (void)puts("Memory error");
      00260D 90 3F F8         [24] 1411 	mov	dptr,#___str_1
      002610 75 F0 80         [24] 1412 	mov	b,#0x80
      002613 C0 06            [24] 1413 	push	ar6
      002615 C0 03            [24] 1414 	push	ar3
      002617 C0 01            [24] 1415 	push	ar1
      002619 C0 00            [24] 1416 	push	ar0
      00261B 12 2C 15         [24] 1417 	lcall	_puts
      00261E D0 00            [24] 1418 	pop	ar0
      002620 D0 01            [24] 1419 	pop	ar1
      002622 D0 03            [24] 1420 	pop	ar3
      002624 D0 06            [24] 1421 	pop	ar6
                                   1422 ;	walk.c:115: reset();
      002626 12 20 88         [24] 1423 	lcall	_reset
      002629                       1424 00113$:
                                   1425 ;	walk.c:118: if (!stpush(&cur)) {
      002629 C0 00            [24] 1426 	push	ar0
      00262B A8 10            [24] 1427 	mov	r0,_bp
      00262D 08               [12] 1428 	inc	r0
      00262E 86 04            [24] 1429 	mov	ar4,@r0
      002630 7D 00            [12] 1430 	mov	r5,#0x00
      002632 7F 40            [12] 1431 	mov	r7,#0x40
      002634 D0 00            [24] 1432 	pop	ar0
      002636 8C 82            [24] 1433 	mov	dpl,r4
      002638 8D 83            [24] 1434 	mov	dph,r5
      00263A 8F F0            [24] 1435 	mov	b,r7
      00263C C0 06            [24] 1436 	push	ar6
      00263E C0 03            [24] 1437 	push	ar3
      002640 C0 01            [24] 1438 	push	ar1
      002642 C0 00            [24] 1439 	push	ar0
      002644 12 29 29         [24] 1440 	lcall	_stpush
      002647 E5 82            [12] 1441 	mov	a,dpl
      002649 85 83 F0         [24] 1442 	mov	b,dph
      00264C D0 00            [24] 1443 	pop	ar0
      00264E D0 01            [24] 1444 	pop	ar1
      002650 D0 03            [24] 1445 	pop	ar3
      002652 D0 06            [24] 1446 	pop	ar6
      002654 45 F0            [12] 1447 	orl	a,b
      002656 70 1C            [24] 1448 	jnz	00115$
                                   1449 ;	walk.c:119: (void)puts("Memory error");
      002658 90 3F F8         [24] 1450 	mov	dptr,#___str_1
      00265B 75 F0 80         [24] 1451 	mov	b,#0x80
      00265E C0 06            [24] 1452 	push	ar6
      002660 C0 03            [24] 1453 	push	ar3
      002662 C0 01            [24] 1454 	push	ar1
      002664 C0 00            [24] 1455 	push	ar0
      002666 12 2C 15         [24] 1456 	lcall	_puts
      002669 D0 00            [24] 1457 	pop	ar0
      00266B D0 01            [24] 1458 	pop	ar1
      00266D D0 03            [24] 1459 	pop	ar3
      00266F D0 06            [24] 1460 	pop	ar6
                                   1461 ;	walk.c:120: reset();
      002671 12 20 88         [24] 1462 	lcall	_reset
      002674                       1463 00115$:
                                   1464 ;	walk.c:122: cur = t;
      002674 C0 06            [24] 1465 	push	ar6
      002676 C0 00            [24] 1466 	push	ar0
      002678 A8 10            [24] 1467 	mov	r0,_bp
      00267A 08               [12] 1468 	inc	r0
      00267B 08               [12] 1469 	inc	r0
      00267C C0 01            [24] 1470 	push	ar1
      00267E E5 10            [12] 1471 	mov	a,_bp
      002680 24 0A            [12] 1472 	add	a,#0x0a
      002682 F9               [12] 1473 	mov	r1,a
      002683 E6               [12] 1474 	mov	a,@r0
      002684 F7               [12] 1475 	mov	@r1,a
      002685 09               [12] 1476 	inc	r1
      002686 77 00            [12] 1477 	mov	@r1,#0x00
      002688 09               [12] 1478 	inc	r1
      002689 77 40            [12] 1479 	mov	@r1,#0x40
      00268B D0 01            [24] 1480 	pop	ar1
      00268D E5 10            [12] 1481 	mov	a,_bp
      00268F 24 03            [12] 1482 	add	a,#0x03
      002691 F8               [12] 1483 	mov	r0,a
      002692 86 02            [24] 1484 	mov	ar2,@r0
      002694 7E 00            [12] 1485 	mov	r6,#0x00
      002696 7F 40            [12] 1486 	mov	r7,#0x40
      002698 D0 00            [24] 1487 	pop	ar0
      00269A C0 06            [24] 1488 	push	ar6
      00269C C0 03            [24] 1489 	push	ar3
      00269E C0 01            [24] 1490 	push	ar1
      0026A0 C0 00            [24] 1491 	push	ar0
      0026A2 74 04            [12] 1492 	mov	a,#0x04
      0026A4 C0 E0            [24] 1493 	push	acc
      0026A6 E4               [12] 1494 	clr	a
      0026A7 C0 E0            [24] 1495 	push	acc
      0026A9 85 00 F0         [24] 1496 	mov	b,ar0
      0026AC E5 10            [12] 1497 	mov	a,_bp
      0026AE 24 0A            [12] 1498 	add	a,#0x0a
      0026B0 F8               [12] 1499 	mov	r0,a
      0026B1 E6               [12] 1500 	mov	a,@r0
      0026B2 C0 E0            [24] 1501 	push	acc
      0026B4 08               [12] 1502 	inc	r0
      0026B5 E6               [12] 1503 	mov	a,@r0
      0026B6 C0 E0            [24] 1504 	push	acc
      0026B8 08               [12] 1505 	inc	r0
      0026B9 E6               [12] 1506 	mov	a,@r0
      0026BA C0 E0            [24] 1507 	push	acc
      0026BC 8A 82            [24] 1508 	mov	dpl,r2
      0026BE 8E 83            [24] 1509 	mov	dph,r6
      0026C0 8F F0            [24] 1510 	mov	b,r7
      0026C2 12 2B 82         [24] 1511 	lcall	___memcpy
      0026C5 E5 81            [12] 1512 	mov	a,sp
      0026C7 24 FB            [12] 1513 	add	a,#0xfb
      0026C9 F5 81            [12] 1514 	mov	sp,a
      0026CB D0 00            [24] 1515 	pop	ar0
      0026CD D0 01            [24] 1516 	pop	ar1
      0026CF D0 03            [24] 1517 	pop	ar3
      0026D1 D0 06            [24] 1518 	pop	ar6
                                   1519 ;	walk.c:123: goto process;
      0026D3 D0 06            [24] 1520 	pop	ar6
      0026D5 02 22 FF         [24] 1521 	ljmp	00101$
      0026D8                       1522 00120$:
                                   1523 ;	walk.c:127: printf("\033[%d;%dH.", cur.r + 1, cur.c + 1);
      0026D8 C0 00            [24] 1524 	push	ar0
      0026DA E5 10            [12] 1525 	mov	a,_bp
      0026DC 24 04            [12] 1526 	add	a,#0x04
      0026DE F8               [12] 1527 	mov	r0,a
      0026DF 86 00            [24] 1528 	mov	ar0,@r0
      0026E1 86 05            [24] 1529 	mov	ar5,@r0
      0026E3 08               [12] 1530 	inc	r0
      0026E4 86 07            [24] 1531 	mov	ar7,@r0
      0026E6 18               [12] 1532 	dec	r0
      0026E7 D0 00            [24] 1533 	pop	ar0
      0026E9 0D               [12] 1534 	inc	r5
      0026EA BD 00 01         [24] 1535 	cjne	r5,#0x00,00185$
      0026ED 0F               [12] 1536 	inc	r7
      0026EE                       1537 00185$:
      0026EE 87 02            [24] 1538 	mov	ar2,@r1
      0026F0 09               [12] 1539 	inc	r1
      0026F1 87 04            [24] 1540 	mov	ar4,@r1
      0026F3 19               [12] 1541 	dec	r1
      0026F4 0A               [12] 1542 	inc	r2
      0026F5 BA 00 01         [24] 1543 	cjne	r2,#0x00,00186$
      0026F8 0C               [12] 1544 	inc	r4
      0026F9                       1545 00186$:
      0026F9 C0 06            [24] 1546 	push	ar6
      0026FB C0 03            [24] 1547 	push	ar3
      0026FD C0 01            [24] 1548 	push	ar1
      0026FF C0 00            [24] 1549 	push	ar0
      002701 C0 05            [24] 1550 	push	ar5
      002703 C0 07            [24] 1551 	push	ar7
      002705 C0 02            [24] 1552 	push	ar2
      002707 C0 04            [24] 1553 	push	ar4
      002709 74 05            [12] 1554 	mov	a,#___str_2
      00270B C0 E0            [24] 1555 	push	acc
      00270D 74 40            [12] 1556 	mov	a,#(___str_2 >> 8)
      00270F C0 E0            [24] 1557 	push	acc
      002711 74 80            [12] 1558 	mov	a,#0x80
      002713 C0 E0            [24] 1559 	push	acc
      002715 12 2C 9B         [24] 1560 	lcall	_printf
      002718 E5 81            [12] 1561 	mov	a,sp
      00271A 24 F9            [12] 1562 	add	a,#0xf9
      00271C F5 81            [12] 1563 	mov	sp,a
      00271E D0 00            [24] 1564 	pop	ar0
      002720 D0 01            [24] 1565 	pop	ar1
      002722 D0 03            [24] 1566 	pop	ar3
      002724 D0 06            [24] 1567 	pop	ar6
                                   1568 ;	walk.c:129: if (!stpop(&cur)) goto term;
      002726 C0 00            [24] 1569 	push	ar0
      002728 E5 10            [12] 1570 	mov	a,_bp
      00272A 24 08            [12] 1571 	add	a,#0x08
      00272C F8               [12] 1572 	mov	r0,a
      00272D 86 04            [24] 1573 	mov	ar4,@r0
      00272F 7D 00            [12] 1574 	mov	r5,#0x00
      002731 7F 40            [12] 1575 	mov	r7,#0x40
      002733 D0 00            [24] 1576 	pop	ar0
      002735 8C 82            [24] 1577 	mov	dpl,r4
      002737 8D 83            [24] 1578 	mov	dph,r5
      002739 8F F0            [24] 1579 	mov	b,r7
      00273B C0 06            [24] 1580 	push	ar6
      00273D C0 03            [24] 1581 	push	ar3
      00273F C0 01            [24] 1582 	push	ar1
      002741 C0 00            [24] 1583 	push	ar0
      002743 12 29 8A         [24] 1584 	lcall	_stpop
      002746 E5 82            [12] 1585 	mov	a,dpl
      002748 85 83 F0         [24] 1586 	mov	b,dph
      00274B D0 00            [24] 1587 	pop	ar0
      00274D D0 01            [24] 1588 	pop	ar1
      00274F D0 03            [24] 1589 	pop	ar3
      002751 D0 06            [24] 1590 	pop	ar6
      002753 45 F0            [12] 1591 	orl	a,b
      002755 60 03            [24] 1592 	jz	00187$
      002757 02 23 97         [24] 1593 	ljmp	00132$
      00275A                       1594 00187$:
                                   1595 ;	walk.c:133: return;
                                   1596 ;	walk.c:134: }
      00275A 85 10 81         [24] 1597 	mov	sp,_bp
      00275D D0 10            [24] 1598 	pop	_bp
      00275F 22               [24] 1599 	ret
                                   1600 ;------------------------------------------------------------
                                   1601 ;Allocation info for local variables in function 'main'
                                   1602 ;------------------------------------------------------------
                                   1603 ;initial                   Allocated to stack - _bp +3
                                   1604 ;i                         Allocated to stack - _bp +7
                                   1605 ;j                         Allocated to registers r4 r5 
                                   1606 ;sloc0                     Allocated to stack - _bp +1
                                   1607 ;R                         Allocated with name '_main_R_65536_65'
                                   1608 ;------------------------------------------------------------
                                   1609 ;	walk.c:136: int main(void) {
                                   1610 ;	-----------------------------------------
                                   1611 ;	 function main
                                   1612 ;	-----------------------------------------
      002760                       1613 _main:
      002760 C0 10            [24] 1614 	push	_bp
      002762 E5 81            [12] 1615 	mov	a,sp
      002764 F5 10            [12] 1616 	mov	_bp,a
      002766 24 08            [12] 1617 	add	a,#0x08
      002768 F5 81            [12] 1618 	mov	sp,a
                                   1619 ;	walk.c:141: i0 = 1;
      00276A 78 11            [12] 1620 	mov	r0,#_i0
      00276C 76 01            [12] 1621 	mov	@r0,#0x01
                                   1622 ;	walk.c:143: IT0 = 1;
                                   1623 ;	assignBit
      00276E D2 88            [12] 1624 	setb	_IT0
                                   1625 ;	walk.c:144: EX0 = 1;
                                   1626 ;	assignBit
      002770 D2 A8            [12] 1627 	setb	_EX0
                                   1628 ;	walk.c:145: EA = 1;
                                   1629 ;	assignBit
      002772 D2 AF            [12] 1630 	setb	_EA
                                   1631 ;	walk.c:147: srand(*R);
      002774 90 F5 02         [24] 1632 	mov	dptr,#_main_R_65536_65
      002777 E0               [24] 1633 	movx	a,@dptr
      002778 FE               [12] 1634 	mov	r6,a
      002779 A3               [24] 1635 	inc	dptr
      00277A E0               [24] 1636 	movx	a,@dptr
      00277B FF               [12] 1637 	mov	r7,a
      00277C 8E 82            [24] 1638 	mov	dpl,r6
      00277E 8F 83            [24] 1639 	mov	dph,r7
      002780 E0               [24] 1640 	movx	a,@dptr
      002781 FE               [12] 1641 	mov	r6,a
      002782 A3               [24] 1642 	inc	dptr
      002783 E0               [24] 1643 	movx	a,@dptr
      002784 FF               [12] 1644 	mov	r7,a
      002785 8E 82            [24] 1645 	mov	dpl,r6
      002787 8F 83            [24] 1646 	mov	dph,r7
      002789 12 2A B0         [24] 1647 	lcall	_srand
                                   1648 ;	walk.c:148: stinit();
      00278C 12 29 20         [24] 1649 	lcall	_stinit
                                   1650 ;	walk.c:150: while (i0) {
      00278F E5 10            [12] 1651 	mov	a,_bp
      002791 24 03            [12] 1652 	add	a,#0x03
      002793 FF               [12] 1653 	mov	r7,a
      002794 FE               [12] 1654 	mov	r6,a
      002795                       1655 00107$:
      002795 78 11            [12] 1656 	mov	r0,#_i0
      002797 E6               [12] 1657 	mov	a,@r0
      002798 70 03            [24] 1658 	jnz	00168$
      00279A 02 29 12         [24] 1659 	ljmp	00109$
      00279D                       1660 00168$:
                                   1661 ;	walk.c:151: for (i = 0; i < ROWS; i++)
      00279D E5 10            [12] 1662 	mov	a,_bp
      00279F 24 07            [12] 1663 	add	a,#0x07
      0027A1 F8               [12] 1664 	mov	r0,a
      0027A2 E4               [12] 1665 	clr	a
      0027A3 F6               [12] 1666 	mov	@r0,a
      0027A4 08               [12] 1667 	inc	r0
      0027A5 F6               [12] 1668 	mov	@r0,a
      0027A6 7A 00            [12] 1669 	mov	r2,#0x00
      0027A8 7B 00            [12] 1670 	mov	r3,#0x00
                                   1671 ;	walk.c:152: for (j = 0; j < COLS; j++)
      0027AA                       1672 00121$:
      0027AA A8 10            [24] 1673 	mov	r0,_bp
      0027AC 08               [12] 1674 	inc	r0
      0027AD EA               [12] 1675 	mov	a,r2
      0027AE 24 00            [12] 1676 	add	a,#_g
      0027B0 F6               [12] 1677 	mov	@r0,a
      0027B1 EB               [12] 1678 	mov	a,r3
      0027B2 34 41            [12] 1679 	addc	a,#(_g >> 8)
      0027B4 08               [12] 1680 	inc	r0
      0027B5 F6               [12] 1681 	mov	@r0,a
      0027B6 7C 00            [12] 1682 	mov	r4,#0x00
      0027B8 7D 00            [12] 1683 	mov	r5,#0x00
      0027BA                       1684 00110$:
                                   1685 ;	walk.c:153: g[i][j] = 0x55;
      0027BA A8 10            [24] 1686 	mov	r0,_bp
      0027BC 08               [12] 1687 	inc	r0
      0027BD EC               [12] 1688 	mov	a,r4
      0027BE 26               [12] 1689 	add	a,@r0
      0027BF F5 82            [12] 1690 	mov	dpl,a
      0027C1 ED               [12] 1691 	mov	a,r5
      0027C2 08               [12] 1692 	inc	r0
      0027C3 36               [12] 1693 	addc	a,@r0
      0027C4 F5 83            [12] 1694 	mov	dph,a
      0027C6 74 55            [12] 1695 	mov	a,#0x55
      0027C8 F0               [24] 1696 	movx	@dptr,a
                                   1697 ;	walk.c:152: for (j = 0; j < COLS; j++)
      0027C9 0C               [12] 1698 	inc	r4
      0027CA BC 00 01         [24] 1699 	cjne	r4,#0x00,00169$
      0027CD 0D               [12] 1700 	inc	r5
      0027CE                       1701 00169$:
      0027CE C3               [12] 1702 	clr	c
      0027CF EC               [12] 1703 	mov	a,r4
      0027D0 94 C0            [12] 1704 	subb	a,#0xc0
      0027D2 ED               [12] 1705 	mov	a,r5
      0027D3 64 80            [12] 1706 	xrl	a,#0x80
      0027D5 94 80            [12] 1707 	subb	a,#0x80
      0027D7 40 E1            [24] 1708 	jc	00110$
                                   1709 ;	walk.c:151: for (i = 0; i < ROWS; i++)
      0027D9 74 C0            [12] 1710 	mov	a,#0xc0
      0027DB 2A               [12] 1711 	add	a,r2
      0027DC FA               [12] 1712 	mov	r2,a
      0027DD E4               [12] 1713 	clr	a
      0027DE 3B               [12] 1714 	addc	a,r3
      0027DF FB               [12] 1715 	mov	r3,a
      0027E0 E5 10            [12] 1716 	mov	a,_bp
      0027E2 24 07            [12] 1717 	add	a,#0x07
      0027E4 F8               [12] 1718 	mov	r0,a
      0027E5 06               [12] 1719 	inc	@r0
      0027E6 B6 00 02         [24] 1720 	cjne	@r0,#0x00,00171$
      0027E9 08               [12] 1721 	inc	r0
      0027EA 06               [12] 1722 	inc	@r0
      0027EB                       1723 00171$:
      0027EB E5 10            [12] 1724 	mov	a,_bp
      0027ED 24 07            [12] 1725 	add	a,#0x07
      0027EF F8               [12] 1726 	mov	r0,a
      0027F0 C3               [12] 1727 	clr	c
      0027F1 E6               [12] 1728 	mov	a,@r0
      0027F2 94 30            [12] 1729 	subb	a,#0x30
      0027F4 08               [12] 1730 	inc	r0
      0027F5 E6               [12] 1731 	mov	a,@r0
      0027F6 64 80            [12] 1732 	xrl	a,#0x80
      0027F8 94 80            [12] 1733 	subb	a,#0x80
      0027FA 40 AE            [24] 1734 	jc	00121$
                                   1735 ;	walk.c:155: puts("\033[2J");
      0027FC 90 40 0F         [24] 1736 	mov	dptr,#___str_3
      0027FF 75 F0 80         [24] 1737 	mov	b,#0x80
      002802 C0 07            [24] 1738 	push	ar7
      002804 C0 06            [24] 1739 	push	ar6
      002806 12 2C 15         [24] 1740 	lcall	_puts
                                   1741 ;	walk.c:156: initial.r = rand() % ROWS;
      002809 E5 10            [12] 1742 	mov	a,_bp
      00280B 24 03            [12] 1743 	add	a,#0x03
      00280D F9               [12] 1744 	mov	r1,a
      00280E C0 01            [24] 1745 	push	ar1
      002810 12 29 EC         [24] 1746 	lcall	_rand
      002813 AC 82            [24] 1747 	mov	r4,dpl
      002815 AD 83            [24] 1748 	mov	r5,dph
      002817 74 30            [12] 1749 	mov	a,#0x30
      002819 C0 E0            [24] 1750 	push	acc
      00281B E4               [12] 1751 	clr	a
      00281C C0 E0            [24] 1752 	push	acc
      00281E 8C 82            [24] 1753 	mov	dpl,r4
      002820 8D 83            [24] 1754 	mov	dph,r5
      002822 12 2C F0         [24] 1755 	lcall	__modsint
      002825 AC 82            [24] 1756 	mov	r4,dpl
      002827 AD 83            [24] 1757 	mov	r5,dph
      002829 15 81            [12] 1758 	dec	sp
      00282B 15 81            [12] 1759 	dec	sp
      00282D D0 01            [24] 1760 	pop	ar1
      00282F D0 06            [24] 1761 	pop	ar6
      002831 D0 07            [24] 1762 	pop	ar7
      002833 A7 04            [24] 1763 	mov	@r1,ar4
      002835 09               [12] 1764 	inc	r1
      002836 A7 05            [24] 1765 	mov	@r1,ar5
      002838 19               [12] 1766 	dec	r1
                                   1767 ;	walk.c:157: initial.c = rand() % COLS;
      002839 74 02            [12] 1768 	mov	a,#0x02
      00283B 2F               [12] 1769 	add	a,r7
      00283C F9               [12] 1770 	mov	r1,a
      00283D C0 07            [24] 1771 	push	ar7
      00283F C0 06            [24] 1772 	push	ar6
      002841 C0 01            [24] 1773 	push	ar1
      002843 12 29 EC         [24] 1774 	lcall	_rand
      002846 AC 82            [24] 1775 	mov	r4,dpl
      002848 AD 83            [24] 1776 	mov	r5,dph
      00284A 74 C0            [12] 1777 	mov	a,#0xc0
      00284C C0 E0            [24] 1778 	push	acc
      00284E E4               [12] 1779 	clr	a
      00284F C0 E0            [24] 1780 	push	acc
      002851 8C 82            [24] 1781 	mov	dpl,r4
      002853 8D 83            [24] 1782 	mov	dph,r5
      002855 12 2C F0         [24] 1783 	lcall	__modsint
      002858 AC 82            [24] 1784 	mov	r4,dpl
      00285A AD 83            [24] 1785 	mov	r5,dph
      00285C 15 81            [12] 1786 	dec	sp
      00285E 15 81            [12] 1787 	dec	sp
      002860 D0 01            [24] 1788 	pop	ar1
      002862 D0 06            [24] 1789 	pop	ar6
      002864 A7 04            [24] 1790 	mov	@r1,ar4
      002866 09               [12] 1791 	inc	r1
      002867 A7 05            [24] 1792 	mov	@r1,ar5
      002869 19               [12] 1793 	dec	r1
                                   1794 ;	walk.c:158: walk(&initial);
      00286A 8E 03            [24] 1795 	mov	ar3,r6
      00286C 7C 00            [12] 1796 	mov	r4,#0x00
      00286E 7D 40            [12] 1797 	mov	r5,#0x40
      002870 8B 82            [24] 1798 	mov	dpl,r3
      002872 8C 83            [24] 1799 	mov	dph,r4
      002874 8D F0            [24] 1800 	mov	b,r5
      002876 C0 06            [24] 1801 	push	ar6
      002878 12 22 74         [24] 1802 	lcall	_walk
      00287B D0 06            [24] 1803 	pop	ar6
      00287D D0 07            [24] 1804 	pop	ar7
                                   1805 ;	walk.c:160: for (i = 0; i < ROWS; i++)
      00287F E5 10            [12] 1806 	mov	a,_bp
      002881 24 07            [12] 1807 	add	a,#0x07
      002883 F8               [12] 1808 	mov	r0,a
      002884 E4               [12] 1809 	clr	a
      002885 F6               [12] 1810 	mov	@r0,a
      002886 08               [12] 1811 	inc	r0
      002887 F6               [12] 1812 	mov	@r0,a
      002888 7A 00            [12] 1813 	mov	r2,#0x00
      00288A 7B 00            [12] 1814 	mov	r3,#0x00
                                   1815 ;	walk.c:161: for (j = 0; j < COLS; j++)
      00288C                       1816 00126$:
      00288C A8 10            [24] 1817 	mov	r0,_bp
      00288E 08               [12] 1818 	inc	r0
      00288F EA               [12] 1819 	mov	a,r2
      002890 24 00            [12] 1820 	add	a,#_g
      002892 F6               [12] 1821 	mov	@r0,a
      002893 EB               [12] 1822 	mov	a,r3
      002894 34 41            [12] 1823 	addc	a,#(_g >> 8)
      002896 08               [12] 1824 	inc	r0
      002897 F6               [12] 1825 	mov	@r0,a
      002898 7C 00            [12] 1826 	mov	r4,#0x00
      00289A 7D 00            [12] 1827 	mov	r5,#0x00
      00289C                       1828 00114$:
                                   1829 ;	walk.c:162: if (g[i][j] != 0xaa) {
      00289C C0 06            [24] 1830 	push	ar6
      00289E A8 10            [24] 1831 	mov	r0,_bp
      0028A0 08               [12] 1832 	inc	r0
      0028A1 EC               [12] 1833 	mov	a,r4
      0028A2 26               [12] 1834 	add	a,@r0
      0028A3 F5 82            [12] 1835 	mov	dpl,a
      0028A5 ED               [12] 1836 	mov	a,r5
      0028A6 08               [12] 1837 	inc	r0
      0028A7 36               [12] 1838 	addc	a,@r0
      0028A8 F5 83            [12] 1839 	mov	dph,a
      0028AA E0               [24] 1840 	movx	a,@dptr
      0028AB FE               [12] 1841 	mov	r6,a
      0028AC BE AA 04         [24] 1842 	cjne	r6,#0xaa,00173$
      0028AF D0 06            [24] 1843 	pop	ar6
      0028B1 80 26            [24] 1844 	sjmp	00115$
      0028B3                       1845 00173$:
      0028B3 D0 06            [24] 1846 	pop	ar6
                                   1847 ;	walk.c:163: (void)puts("Memory error");
      0028B5 90 3F F8         [24] 1848 	mov	dptr,#___str_1
      0028B8 75 F0 80         [24] 1849 	mov	b,#0x80
      0028BB C0 07            [24] 1850 	push	ar7
      0028BD C0 06            [24] 1851 	push	ar6
      0028BF C0 05            [24] 1852 	push	ar5
      0028C1 C0 04            [24] 1853 	push	ar4
      0028C3 C0 03            [24] 1854 	push	ar3
      0028C5 C0 02            [24] 1855 	push	ar2
      0028C7 12 2C 15         [24] 1856 	lcall	_puts
      0028CA D0 02            [24] 1857 	pop	ar2
      0028CC D0 03            [24] 1858 	pop	ar3
      0028CE D0 04            [24] 1859 	pop	ar4
      0028D0 D0 05            [24] 1860 	pop	ar5
      0028D2 D0 06            [24] 1861 	pop	ar6
      0028D4 D0 07            [24] 1862 	pop	ar7
                                   1863 ;	walk.c:164: reset();
      0028D6 12 20 88         [24] 1864 	lcall	_reset
      0028D9                       1865 00115$:
                                   1866 ;	walk.c:161: for (j = 0; j < COLS; j++)
      0028D9 0C               [12] 1867 	inc	r4
      0028DA BC 00 01         [24] 1868 	cjne	r4,#0x00,00174$
      0028DD 0D               [12] 1869 	inc	r5
      0028DE                       1870 00174$:
      0028DE C3               [12] 1871 	clr	c
      0028DF EC               [12] 1872 	mov	a,r4
      0028E0 94 C0            [12] 1873 	subb	a,#0xc0
      0028E2 ED               [12] 1874 	mov	a,r5
      0028E3 64 80            [12] 1875 	xrl	a,#0x80
      0028E5 94 80            [12] 1876 	subb	a,#0x80
      0028E7 40 B3            [24] 1877 	jc	00114$
                                   1878 ;	walk.c:160: for (i = 0; i < ROWS; i++)
      0028E9 74 C0            [12] 1879 	mov	a,#0xc0
      0028EB 2A               [12] 1880 	add	a,r2
      0028EC FA               [12] 1881 	mov	r2,a
      0028ED E4               [12] 1882 	clr	a
      0028EE 3B               [12] 1883 	addc	a,r3
      0028EF FB               [12] 1884 	mov	r3,a
      0028F0 E5 10            [12] 1885 	mov	a,_bp
      0028F2 24 07            [12] 1886 	add	a,#0x07
      0028F4 F8               [12] 1887 	mov	r0,a
      0028F5 06               [12] 1888 	inc	@r0
      0028F6 B6 00 02         [24] 1889 	cjne	@r0,#0x00,00176$
      0028F9 08               [12] 1890 	inc	r0
      0028FA 06               [12] 1891 	inc	@r0
      0028FB                       1892 00176$:
      0028FB E5 10            [12] 1893 	mov	a,_bp
      0028FD 24 07            [12] 1894 	add	a,#0x07
      0028FF F8               [12] 1895 	mov	r0,a
      002900 C3               [12] 1896 	clr	c
      002901 E6               [12] 1897 	mov	a,@r0
      002902 94 30            [12] 1898 	subb	a,#0x30
      002904 08               [12] 1899 	inc	r0
      002905 E6               [12] 1900 	mov	a,@r0
      002906 64 80            [12] 1901 	xrl	a,#0x80
      002908 94 80            [12] 1902 	subb	a,#0x80
      00290A 50 03            [24] 1903 	jnc	00177$
      00290C 02 28 8C         [24] 1904 	ljmp	00126$
      00290F                       1905 00177$:
      00290F 02 27 95         [24] 1906 	ljmp	00107$
      002912                       1907 00109$:
                                   1908 ;	walk.c:168: EA = 0;
                                   1909 ;	assignBit
      002912 C2 AF            [12] 1910 	clr	_EA
                                   1911 ;	walk.c:172: __endasm;
      002914 02 00 00         [24] 1912 	ljmp	0
                                   1913 ;	walk.c:174: return 0;
      002917 90 00 00         [24] 1914 	mov	dptr,#0x0000
                                   1915 ;	walk.c:175: }
      00291A 85 10 81         [24] 1916 	mov	sp,_bp
      00291D D0 10            [24] 1917 	pop	_bp
      00291F 22               [24] 1918 	ret
                                   1919 ;------------------------------------------------------------
                                   1920 ;Allocation info for local variables in function 'stinit'
                                   1921 ;------------------------------------------------------------
                                   1922 ;	walk.c:177: static void stinit(void) {
                                   1923 ;	-----------------------------------------
                                   1924 ;	 function stinit
                                   1925 ;	-----------------------------------------
      002920                       1926 _stinit:
                                   1927 ;	walk.c:178: sp = -1;
      002920 90 F5 00         [24] 1928 	mov	dptr,#_sp
      002923 74 FF            [12] 1929 	mov	a,#0xff
      002925 F0               [24] 1930 	movx	@dptr,a
      002926 A3               [24] 1931 	inc	dptr
      002927 F0               [24] 1932 	movx	@dptr,a
                                   1933 ;	walk.c:179: return;
                                   1934 ;	walk.c:180: }
      002928 22               [24] 1935 	ret
                                   1936 ;------------------------------------------------------------
                                   1937 ;Allocation info for local variables in function 'stpush'
                                   1938 ;------------------------------------------------------------
                                   1939 ;t                         Allocated to registers r5 r6 r7 
                                   1940 ;------------------------------------------------------------
                                   1941 ;	walk.c:182: static int stpush(struct node *t) {
                                   1942 ;	-----------------------------------------
                                   1943 ;	 function stpush
                                   1944 ;	-----------------------------------------
      002929                       1945 _stpush:
      002929 AD 82            [24] 1946 	mov	r5,dpl
      00292B AE 83            [24] 1947 	mov	r6,dph
      00292D AF F0            [24] 1948 	mov	r7,b
                                   1949 ;	walk.c:183: if (sp == (SMAX - 1)) return 0;
      00292F 90 F5 00         [24] 1950 	mov	dptr,#_sp
      002932 E0               [24] 1951 	movx	a,@dptr
      002933 FB               [12] 1952 	mov	r3,a
      002934 A3               [24] 1953 	inc	dptr
      002935 E0               [24] 1954 	movx	a,@dptr
      002936 FC               [12] 1955 	mov	r4,a
      002937 BB FF 07         [24] 1956 	cjne	r3,#0xff,00102$
      00293A BC 23 04         [24] 1957 	cjne	r4,#0x23,00102$
      00293D 90 00 00         [24] 1958 	mov	dptr,#0x0000
      002940 22               [24] 1959 	ret
      002941                       1960 00102$:
                                   1961 ;	walk.c:184: sp++;
      002941 90 F5 00         [24] 1962 	mov	dptr,#_sp
      002944 74 01            [12] 1963 	mov	a,#0x01
      002946 2B               [12] 1964 	add	a,r3
      002947 F0               [24] 1965 	movx	@dptr,a
      002948 E4               [12] 1966 	clr	a
      002949 3C               [12] 1967 	addc	a,r4
      00294A A3               [24] 1968 	inc	dptr
      00294B F0               [24] 1969 	movx	@dptr,a
                                   1970 ;	walk.c:185: stack[sp] = *t;
      00294C 90 F5 00         [24] 1971 	mov	dptr,#_sp
      00294F E0               [24] 1972 	movx	a,@dptr
      002950 FB               [12] 1973 	mov	r3,a
      002951 A3               [24] 1974 	inc	dptr
      002952 E0               [24] 1975 	movx	a,@dptr
      002953 FC               [12] 1976 	mov	r4,a
      002954 EB               [12] 1977 	mov	a,r3
      002955 2B               [12] 1978 	add	a,r3
      002956 FB               [12] 1979 	mov	r3,a
      002957 EC               [12] 1980 	mov	a,r4
      002958 33               [12] 1981 	rlc	a
      002959 FC               [12] 1982 	mov	r4,a
      00295A EB               [12] 1983 	mov	a,r3
      00295B 2B               [12] 1984 	add	a,r3
      00295C FB               [12] 1985 	mov	r3,a
      00295D EC               [12] 1986 	mov	a,r4
      00295E 33               [12] 1987 	rlc	a
      00295F FC               [12] 1988 	mov	r4,a
      002960 EB               [12] 1989 	mov	a,r3
      002961 24 00            [12] 1990 	add	a,#_stack
      002963 FB               [12] 1991 	mov	r3,a
      002964 EC               [12] 1992 	mov	a,r4
      002965 34 65            [12] 1993 	addc	a,#(_stack >> 8)
      002967 FC               [12] 1994 	mov	r4,a
      002968 7A 00            [12] 1995 	mov	r2,#0x00
      00296A 74 04            [12] 1996 	mov	a,#0x04
      00296C C0 E0            [24] 1997 	push	acc
      00296E E4               [12] 1998 	clr	a
      00296F C0 E0            [24] 1999 	push	acc
      002971 C0 05            [24] 2000 	push	ar5
      002973 C0 06            [24] 2001 	push	ar6
      002975 C0 07            [24] 2002 	push	ar7
      002977 8B 82            [24] 2003 	mov	dpl,r3
      002979 8C 83            [24] 2004 	mov	dph,r4
      00297B 8A F0            [24] 2005 	mov	b,r2
      00297D 12 2B 82         [24] 2006 	lcall	___memcpy
      002980 E5 81            [12] 2007 	mov	a,sp
      002982 24 FB            [12] 2008 	add	a,#0xfb
      002984 F5 81            [12] 2009 	mov	sp,a
                                   2010 ;	walk.c:186: return 1;
      002986 90 00 01         [24] 2011 	mov	dptr,#0x0001
                                   2012 ;	walk.c:187: }
      002989 22               [24] 2013 	ret
                                   2014 ;------------------------------------------------------------
                                   2015 ;Allocation info for local variables in function 'stpop'
                                   2016 ;------------------------------------------------------------
                                   2017 ;t                         Allocated to registers r5 r6 r7 
                                   2018 ;------------------------------------------------------------
                                   2019 ;	walk.c:189: static int stpop(struct node *t) {
                                   2020 ;	-----------------------------------------
                                   2021 ;	 function stpop
                                   2022 ;	-----------------------------------------
      00298A                       2023 _stpop:
      00298A AD 82            [24] 2024 	mov	r5,dpl
      00298C AE 83            [24] 2025 	mov	r6,dph
      00298E AF F0            [24] 2026 	mov	r7,b
                                   2027 ;	walk.c:190: if (sp == -1) return 0;
      002990 90 F5 00         [24] 2028 	mov	dptr,#_sp
      002993 E0               [24] 2029 	movx	a,@dptr
      002994 FB               [12] 2030 	mov	r3,a
      002995 A3               [24] 2031 	inc	dptr
      002996 E0               [24] 2032 	movx	a,@dptr
      002997 FC               [12] 2033 	mov	r4,a
      002998 BB FF 07         [24] 2034 	cjne	r3,#0xff,00102$
      00299B BC FF 04         [24] 2035 	cjne	r4,#0xff,00102$
      00299E 90 00 00         [24] 2036 	mov	dptr,#0x0000
      0029A1 22               [24] 2037 	ret
      0029A2                       2038 00102$:
                                   2039 ;	walk.c:191: *t = stack[sp];
      0029A2 EB               [12] 2040 	mov	a,r3
      0029A3 2B               [12] 2041 	add	a,r3
      0029A4 FB               [12] 2042 	mov	r3,a
      0029A5 EC               [12] 2043 	mov	a,r4
      0029A6 33               [12] 2044 	rlc	a
      0029A7 FC               [12] 2045 	mov	r4,a
      0029A8 EB               [12] 2046 	mov	a,r3
      0029A9 2B               [12] 2047 	add	a,r3
      0029AA FB               [12] 2048 	mov	r3,a
      0029AB EC               [12] 2049 	mov	a,r4
      0029AC 33               [12] 2050 	rlc	a
      0029AD FC               [12] 2051 	mov	r4,a
      0029AE EB               [12] 2052 	mov	a,r3
      0029AF 24 00            [12] 2053 	add	a,#_stack
      0029B1 FB               [12] 2054 	mov	r3,a
      0029B2 EC               [12] 2055 	mov	a,r4
      0029B3 34 65            [12] 2056 	addc	a,#(_stack >> 8)
      0029B5 FC               [12] 2057 	mov	r4,a
      0029B6 7A 00            [12] 2058 	mov	r2,#0x00
      0029B8 74 04            [12] 2059 	mov	a,#0x04
      0029BA C0 E0            [24] 2060 	push	acc
      0029BC E4               [12] 2061 	clr	a
      0029BD C0 E0            [24] 2062 	push	acc
      0029BF C0 03            [24] 2063 	push	ar3
      0029C1 C0 04            [24] 2064 	push	ar4
      0029C3 C0 02            [24] 2065 	push	ar2
      0029C5 8D 82            [24] 2066 	mov	dpl,r5
      0029C7 8E 83            [24] 2067 	mov	dph,r6
      0029C9 8F F0            [24] 2068 	mov	b,r7
      0029CB 12 2B 82         [24] 2069 	lcall	___memcpy
      0029CE E5 81            [12] 2070 	mov	a,sp
      0029D0 24 FB            [12] 2071 	add	a,#0xfb
      0029D2 F5 81            [12] 2072 	mov	sp,a
                                   2073 ;	walk.c:192: sp--;
      0029D4 90 F5 00         [24] 2074 	mov	dptr,#_sp
      0029D7 E0               [24] 2075 	movx	a,@dptr
      0029D8 24 FF            [12] 2076 	add	a,#0xff
      0029DA FE               [12] 2077 	mov	r6,a
      0029DB A3               [24] 2078 	inc	dptr
      0029DC E0               [24] 2079 	movx	a,@dptr
      0029DD 34 FF            [12] 2080 	addc	a,#0xff
      0029DF FF               [12] 2081 	mov	r7,a
      0029E0 90 F5 00         [24] 2082 	mov	dptr,#_sp
      0029E3 EE               [12] 2083 	mov	a,r6
      0029E4 F0               [24] 2084 	movx	@dptr,a
      0029E5 EF               [12] 2085 	mov	a,r7
      0029E6 A3               [24] 2086 	inc	dptr
      0029E7 F0               [24] 2087 	movx	@dptr,a
                                   2088 ;	walk.c:193: return 1;
      0029E8 90 00 01         [24] 2089 	mov	dptr,#0x0001
                                   2090 ;	walk.c:194: }
      0029EB 22               [24] 2091 	ret
                                   2092 	.area CSEG    (CODE)
                                   2093 	.area CONST   (CODE)
      003FCE                       2094 _neigh:
      003FCE FF FF                 2095 	.byte #0xff, #0xff	; -1
      003FD0 FF FF                 2096 	.byte #0xff, #0xff	; -1
      003FD2 FF FF                 2097 	.byte #0xff, #0xff	; -1
      003FD4 00 00                 2098 	.byte #0x00, #0x00	;  0
      003FD6 FF FF                 2099 	.byte #0xff, #0xff	; -1
      003FD8 01 00                 2100 	.byte #0x01, #0x00	;  1
      003FDA 00 00                 2101 	.byte #0x00, #0x00	;  0
      003FDC FF FF                 2102 	.byte #0xff, #0xff	; -1
      003FDE 00 00                 2103 	.byte #0x00, #0x00	;  0
      003FE0 01 00                 2104 	.byte #0x01, #0x00	;  1
      003FE2 01 00                 2105 	.byte #0x01, #0x00	;  1
      003FE4 FF FF                 2106 	.byte #0xff, #0xff	; -1
      003FE6 01 00                 2107 	.byte #0x01, #0x00	;  1
      003FE8 00 00                 2108 	.byte #0x00, #0x00	;  0
      003FEA 01 00                 2109 	.byte #0x01, #0x00	;  1
      003FEC 01 00                 2110 	.byte #0x01, #0x00	;  1
                                   2111 	.area CONST   (CODE)
      003FEE                       2112 ___str_0:
      003FEE 1B                    2113 	.db 0x1b
      003FEF 5B 25 64 3B 25 64 48  2114 	.ascii "[%d;%dHo"
             6F
      003FF7 00                    2115 	.db 0x00
                                   2116 	.area CSEG    (CODE)
                                   2117 	.area CONST   (CODE)
      003FF8                       2118 ___str_1:
      003FF8 4D 65 6D 6F 72 79 20  2119 	.ascii "Memory error"
             65 72 72 6F 72
      004004 00                    2120 	.db 0x00
                                   2121 	.area CSEG    (CODE)
                                   2122 	.area CONST   (CODE)
      004005                       2123 ___str_2:
      004005 1B                    2124 	.db 0x1b
      004006 5B 25 64 3B 25 64 48  2125 	.ascii "[%d;%dH."
             2E
      00400E 00                    2126 	.db 0x00
                                   2127 	.area CSEG    (CODE)
                                   2128 	.area CONST   (CODE)
      00400F                       2129 ___str_3:
      00400F 1B                    2130 	.db 0x1b
      004010 5B 32 4A              2131 	.ascii "[2J"
      004013 00                    2132 	.db 0x00
                                   2133 	.area CSEG    (CODE)
                                   2134 	.area XINIT   (CODE)
                                   2135 	.area CABS    (ABS,CODE)
