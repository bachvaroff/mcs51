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
      002006 02 27 88         [24]  389 	ljmp	_main
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
                                    478 ;	walk.c:74: static int update(struct node *t, struct node *cur, int j) {
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
      0020B4 12 2C FC         [24]  514 	lcall	__gptrget
      0020B7 F6               [12]  515 	mov	@r0,a
      0020B8 A3               [24]  516 	inc	dptr
      0020B9 12 2C FC         [24]  517 	lcall	__gptrget
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
      0020DE 24 F6            [12]  546 	add	a,#_neigh
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
      002107 12 2A F1         [24]  577 	lcall	__gptrput
      00210A A3               [24]  578 	inc	dptr
      00210B EE               [12]  579 	mov	a,r6
      00210C 12 2A F1         [24]  580 	lcall	__gptrput
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
      002131 12 2C FC         [24]  608 	lcall	__gptrget
      002134 FA               [12]  609 	mov	r2,a
      002135 A3               [24]  610 	inc	dptr
      002136 12 2C FC         [24]  611 	lcall	__gptrget
      002139 FB               [12]  612 	mov	r3,a
      00213A E5 10            [12]  613 	mov	a,_bp
      00213C 24 06            [12]  614 	add	a,#0x06
      00213E F8               [12]  615 	mov	r0,a
      00213F E6               [12]  616 	mov	a,@r0
      002140 24 F6            [12]  617 	add	a,#_neigh
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
      002169 12 2A F1         [24]  649 	lcall	__gptrput
      00216C A3               [24]  650 	inc	dptr
      00216D EB               [12]  651 	mov	a,r3
      00216E 12 2A F1         [24]  652 	lcall	__gptrput
                                    653 ;	walk.c:78: if (t->r < 0) t->r += ROWS;
      002171 A8 10            [24]  654 	mov	r0,_bp
      002173 08               [12]  655 	inc	r0
      002174 86 82            [24]  656 	mov	dpl,@r0
      002176 08               [12]  657 	inc	r0
      002177 86 83            [24]  658 	mov	dph,@r0
      002179 08               [12]  659 	inc	r0
      00217A 86 F0            [24]  660 	mov	b,@r0
      00217C 12 2C FC         [24]  661 	lcall	__gptrget
      00217F FD               [12]  662 	mov	r5,a
      002180 A3               [24]  663 	inc	dptr
      002181 12 2C FC         [24]  664 	lcall	__gptrget
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
      00219C 12 2A F1         [24]  682 	lcall	__gptrput
      00219F A3               [24]  683 	inc	dptr
      0021A0 EE               [12]  684 	mov	a,r6
      0021A1 12 2A F1         [24]  685 	lcall	__gptrput
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
      0021C5 12 2A F1         [24]  710 	lcall	__gptrput
      0021C8 A3               [24]  711 	inc	dptr
      0021C9 EC               [12]  712 	mov	a,r4
      0021CA 12 2A F1         [24]  713 	lcall	__gptrput
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
      0021DA 12 2C FC         [24]  724 	lcall	__gptrget
      0021DD A3               [24]  725 	inc	dptr
      0021DE 12 2C FC         [24]  726 	lcall	__gptrget
      0021E1 30 E7 35         [24]  727 	jnb	acc.7,00109$
      0021E4 E5 10            [12]  728 	mov	a,_bp
      0021E6 24 08            [12]  729 	add	a,#0x08
      0021E8 F8               [12]  730 	mov	r0,a
      0021E9 86 82            [24]  731 	mov	dpl,@r0
      0021EB 08               [12]  732 	inc	r0
      0021EC 86 83            [24]  733 	mov	dph,@r0
      0021EE 08               [12]  734 	inc	r0
      0021EF 86 F0            [24]  735 	mov	b,@r0
      0021F1 12 2C FC         [24]  736 	lcall	__gptrget
      0021F4 FE               [12]  737 	mov	r6,a
      0021F5 A3               [24]  738 	inc	dptr
      0021F6 12 2C FC         [24]  739 	lcall	__gptrget
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
      00220F 12 2A F1         [24]  756 	lcall	__gptrput
      002212 A3               [24]  757 	inc	dptr
      002213 EF               [12]  758 	mov	a,r7
      002214 12 2A F1         [24]  759 	lcall	__gptrput
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
      002226 12 2C FC         [24]  771 	lcall	__gptrget
      002229 FE               [12]  772 	mov	r6,a
      00222A A3               [24]  773 	inc	dptr
      00222B 12 2C FC         [24]  774 	lcall	__gptrget
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
      002247 12 2C FC         [24]  791 	lcall	__gptrget
      00224A FE               [12]  792 	mov	r6,a
      00224B A3               [24]  793 	inc	dptr
      00224C 12 2C FC         [24]  794 	lcall	__gptrget
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
      002266 12 2A F1         [24]  811 	lcall	__gptrput
      002269 A3               [24]  812 	inc	dptr
      00226A EF               [12]  813 	mov	a,r7
      00226B 12 2A F1         [24]  814 	lcall	__gptrput
      00226E                        815 00110$:
                                    816 ;	walk.c:83: return 1;
      00226E 90 00 01         [24]  817 	mov	dptr,#0x0001
                                    818 ;	walk.c:84: }
      002271 85 10 81         [24]  819 	mov	sp,_bp
      002274 D0 10            [24]  820 	pop	_bp
      002276 22               [24]  821 	ret
                                    822 ;------------------------------------------------------------
                                    823 ;Allocation info for local variables in function 'walk'
                                    824 ;------------------------------------------------------------
                                    825 ;nstart                    Allocated to registers 
                                    826 ;cur                       Allocated to stack - _bp +12
                                    827 ;t                         Allocated to stack - _bp +16
                                    828 ;j                         Allocated to stack - _bp +20
                                    829 ;f                         Allocated to stack - _bp +22
                                    830 ;sloc0                     Allocated to stack - _bp +1
                                    831 ;sloc1                     Allocated to stack - _bp +2
                                    832 ;sloc2                     Allocated to stack - _bp +3
                                    833 ;sloc3                     Allocated to stack - _bp +4
                                    834 ;sloc4                     Allocated to stack - _bp +20
                                    835 ;sloc5                     Allocated to stack - _bp +5
                                    836 ;sloc6                     Allocated to stack - _bp +22
                                    837 ;sloc7                     Allocated to stack - _bp +6
                                    838 ;sloc8                     Allocated to stack - _bp +7
                                    839 ;sloc9                     Allocated to stack - _bp +8
                                    840 ;sloc10                    Allocated to stack - _bp +11
                                    841 ;------------------------------------------------------------
                                    842 ;	walk.c:86: static void walk(struct node *nstart) {
                                    843 ;	-----------------------------------------
                                    844 ;	 function walk
                                    845 ;	-----------------------------------------
      002277                        846 _walk:
      002277 C0 10            [24]  847 	push	_bp
      002279 E5 81            [12]  848 	mov	a,sp
      00227B F5 10            [12]  849 	mov	_bp,a
      00227D 24 17            [12]  850 	add	a,#0x17
      00227F F5 81            [12]  851 	mov	sp,a
      002281 AD 82            [24]  852 	mov	r5,dpl
      002283 AE 83            [24]  853 	mov	r6,dph
      002285 AF F0            [24]  854 	mov	r7,b
                                    855 ;	walk.c:90: cur = *nstart;
      002287 E5 10            [12]  856 	mov	a,_bp
      002289 24 0C            [12]  857 	add	a,#0x0c
      00228B F9               [12]  858 	mov	r1,a
      00228C FA               [12]  859 	mov	r2,a
      00228D 7B 00            [12]  860 	mov	r3,#0x00
      00228F 7C 40            [12]  861 	mov	r4,#0x40
      002291 C0 01            [24]  862 	push	ar1
      002293 74 04            [12]  863 	mov	a,#0x04
      002295 C0 E0            [24]  864 	push	acc
      002297 E4               [12]  865 	clr	a
      002298 C0 E0            [24]  866 	push	acc
      00229A C0 05            [24]  867 	push	ar5
      00229C C0 06            [24]  868 	push	ar6
      00229E C0 07            [24]  869 	push	ar7
      0022A0 8A 82            [24]  870 	mov	dpl,r2
      0022A2 8B 83            [24]  871 	mov	dph,r3
      0022A4 8C F0            [24]  872 	mov	b,r4
      0022A6 12 2B AA         [24]  873 	lcall	___memcpy
      0022A9 E5 81            [12]  874 	mov	a,sp
      0022AB 24 FB            [12]  875 	add	a,#0xfb
      0022AD F5 81            [12]  876 	mov	sp,a
      0022AF D0 01            [24]  877 	pop	ar1
                                    878 ;	walk.c:92: process:
      0022B1 E5 10            [12]  879 	mov	a,_bp
      0022B3 24 07            [12]  880 	add	a,#0x07
      0022B5 F8               [12]  881 	mov	r0,a
      0022B6 A6 01            [24]  882 	mov	@r0,ar1
      0022B8 E5 10            [12]  883 	mov	a,_bp
      0022BA 24 10            [12]  884 	add	a,#0x10
      0022BC F8               [12]  885 	mov	r0,a
      0022BD C0 00            [24]  886 	push	ar0
      0022BF E5 10            [12]  887 	mov	a,_bp
      0022C1 24 06            [12]  888 	add	a,#0x06
      0022C3 F8               [12]  889 	mov	r0,a
      0022C4 A6 01            [24]  890 	mov	@r0,ar1
      0022C6 D0 00            [24]  891 	pop	ar0
      0022C8 74 02            [12]  892 	mov	a,#0x02
      0022CA 28               [12]  893 	add	a,r0
      0022CB FD               [12]  894 	mov	r5,a
      0022CC C0 00            [24]  895 	push	ar0
      0022CE E5 10            [12]  896 	mov	a,_bp
      0022D0 24 0B            [12]  897 	add	a,#0x0b
      0022D2 F8               [12]  898 	mov	r0,a
      0022D3 A6 01            [24]  899 	mov	@r0,ar1
      0022D5 D0 00            [24]  900 	pop	ar0
      0022D7 88 03            [24]  901 	mov	ar3,r0
      0022D9 C0 00            [24]  902 	push	ar0
      0022DB E5 10            [12]  903 	mov	a,_bp
      0022DD 24 05            [12]  904 	add	a,#0x05
      0022DF F8               [12]  905 	mov	r0,a
      0022E0 A6 05            [24]  906 	mov	@r0,ar5
      0022E2 A8 10            [24]  907 	mov	r0,_bp
      0022E4 08               [12]  908 	inc	r0
      0022E5 A6 01            [24]  909 	mov	@r0,ar1
      0022E7 D0 00            [24]  910 	pop	ar0
      0022E9 C0 01            [24]  911 	push	ar1
      0022EB A9 10            [24]  912 	mov	r1,_bp
      0022ED 09               [12]  913 	inc	r1
      0022EE 09               [12]  914 	inc	r1
      0022EF A7 00            [24]  915 	mov	@r1,ar0
      0022F1 D0 01            [24]  916 	pop	ar1
      0022F3 C0 00            [24]  917 	push	ar0
      0022F5 E5 10            [12]  918 	mov	a,_bp
      0022F7 24 03            [12]  919 	add	a,#0x03
      0022F9 F8               [12]  920 	mov	r0,a
      0022FA A6 01            [24]  921 	mov	@r0,ar1
      0022FC E5 10            [12]  922 	mov	a,_bp
      0022FE 24 04            [12]  923 	add	a,#0x04
      002300 F8               [12]  924 	mov	r0,a
      002301 74 02            [12]  925 	mov	a,#0x02
      002303 29               [12]  926 	add	a,r1
      002304 F6               [12]  927 	mov	@r0,a
      002305 D0 00            [24]  928 	pop	ar0
      002307                        929 00101$:
                                    930 ;	walk.c:93: g[cur.r][cur.c] = 0xaa;
      002307 87 02            [24]  931 	mov	ar2,@r1
      002309 09               [12]  932 	inc	r1
      00230A 87 06            [24]  933 	mov	ar6,@r1
      00230C 19               [12]  934 	dec	r1
      00230D C0 05            [24]  935 	push	ar5
      00230F C0 03            [24]  936 	push	ar3
      002311 C0 01            [24]  937 	push	ar1
      002313 C0 00            [24]  938 	push	ar0
      002315 C0 02            [24]  939 	push	ar2
      002317 C0 06            [24]  940 	push	ar6
      002319 90 00 C0         [24]  941 	mov	dptr,#0x00c0
      00231C 12 2B 0C         [24]  942 	lcall	__mulint
      00231F AA 82            [24]  943 	mov	r2,dpl
      002321 AE 83            [24]  944 	mov	r6,dph
      002323 15 81            [12]  945 	dec	sp
      002325 15 81            [12]  946 	dec	sp
      002327 D0 00            [24]  947 	pop	ar0
      002329 D0 01            [24]  948 	pop	ar1
      00232B D0 03            [24]  949 	pop	ar3
      00232D D0 05            [24]  950 	pop	ar5
      00232F EA               [12]  951 	mov	a,r2
      002330 24 00            [12]  952 	add	a,#_g
      002332 FF               [12]  953 	mov	r7,a
      002333 EE               [12]  954 	mov	a,r6
      002334 34 41            [12]  955 	addc	a,#(_g >> 8)
      002336 FC               [12]  956 	mov	r4,a
      002337 C0 00            [24]  957 	push	ar0
      002339 E5 10            [12]  958 	mov	a,_bp
      00233B 24 04            [12]  959 	add	a,#0x04
      00233D F8               [12]  960 	mov	r0,a
      00233E 86 00            [24]  961 	mov	ar0,@r0
      002340 86 02            [24]  962 	mov	ar2,@r0
      002342 08               [12]  963 	inc	r0
      002343 86 06            [24]  964 	mov	ar6,@r0
      002345 18               [12]  965 	dec	r0
      002346 EA               [12]  966 	mov	a,r2
      002347 2F               [12]  967 	add	a,r7
      002348 F5 82            [12]  968 	mov	dpl,a
      00234A EE               [12]  969 	mov	a,r6
      00234B 3C               [12]  970 	addc	a,r4
      00234C F5 83            [12]  971 	mov	dph,a
      00234E 74 AA            [12]  972 	mov	a,#0xaa
      002350 F0               [24]  973 	movx	@dptr,a
                                    974 ;	walk.c:94: printf("\033[%d;%dHo", cur.r + 1, cur.c + 1);
      002351 E5 10            [12]  975 	mov	a,_bp
      002353 24 04            [12]  976 	add	a,#0x04
      002355 F8               [12]  977 	mov	r0,a
      002356 86 00            [24]  978 	mov	ar0,@r0
      002358 86 02            [24]  979 	mov	ar2,@r0
      00235A 08               [12]  980 	inc	r0
      00235B 86 06            [24]  981 	mov	ar6,@r0
      00235D 18               [12]  982 	dec	r0
      00235E D0 00            [24]  983 	pop	ar0
      002360 74 01            [12]  984 	mov	a,#0x01
      002362 2A               [12]  985 	add	a,r2
      002363 FF               [12]  986 	mov	r7,a
      002364 E4               [12]  987 	clr	a
      002365 3E               [12]  988 	addc	a,r6
      002366 FC               [12]  989 	mov	r4,a
      002367 87 02            [24]  990 	mov	ar2,@r1
      002369 09               [12]  991 	inc	r1
      00236A 87 06            [24]  992 	mov	ar6,@r1
      00236C 19               [12]  993 	dec	r1
      00236D 0A               [12]  994 	inc	r2
      00236E BA 00 01         [24]  995 	cjne	r2,#0x00,00186$
      002371 0E               [12]  996 	inc	r6
      002372                        997 00186$:
      002372 C0 05            [24]  998 	push	ar5
      002374 C0 03            [24]  999 	push	ar3
      002376 C0 01            [24] 1000 	push	ar1
      002378 C0 00            [24] 1001 	push	ar0
      00237A C0 07            [24] 1002 	push	ar7
      00237C C0 04            [24] 1003 	push	ar4
      00237E C0 02            [24] 1004 	push	ar2
      002380 C0 06            [24] 1005 	push	ar6
      002382 74 16            [12] 1006 	mov	a,#___str_0
      002384 C0 E0            [24] 1007 	push	acc
      002386 74 40            [12] 1008 	mov	a,#(___str_0 >> 8)
      002388 C0 E0            [24] 1009 	push	acc
      00238A 74 80            [12] 1010 	mov	a,#0x80
      00238C C0 E0            [24] 1011 	push	acc
      00238E 12 2C C3         [24] 1012 	lcall	_printf
      002391 E5 81            [12] 1013 	mov	a,sp
      002393 24 F9            [12] 1014 	add	a,#0xf9
      002395 F5 81            [12] 1015 	mov	sp,a
      002397 D0 00            [24] 1016 	pop	ar0
      002399 D0 01            [24] 1017 	pop	ar1
      00239B D0 03            [24] 1018 	pop	ar3
      00239D D0 05            [24] 1019 	pop	ar5
                                   1020 ;	walk.c:133: return;
                                   1021 ;	walk.c:97: for (j = 0, f = 0; j < NMAX; j++) {
      00239F                       1022 00137$:
      00239F C0 00            [24] 1023 	push	ar0
      0023A1 E5 10            [12] 1024 	mov	a,_bp
      0023A3 24 16            [12] 1025 	add	a,#0x16
      0023A5 F8               [12] 1026 	mov	r0,a
      0023A6 E4               [12] 1027 	clr	a
      0023A7 F6               [12] 1028 	mov	@r0,a
      0023A8 08               [12] 1029 	inc	r0
      0023A9 F6               [12] 1030 	mov	@r0,a
      0023AA E5 10            [12] 1031 	mov	a,_bp
      0023AC 24 14            [12] 1032 	add	a,#0x14
      0023AE F8               [12] 1033 	mov	r0,a
      0023AF E4               [12] 1034 	clr	a
      0023B0 F6               [12] 1035 	mov	@r0,a
      0023B1 08               [12] 1036 	inc	r0
      0023B2 F6               [12] 1037 	mov	@r0,a
      0023B3 D0 00            [24] 1038 	pop	ar0
      0023B5                       1039 00130$:
      0023B5 C0 00            [24] 1040 	push	ar0
      0023B7 E5 10            [12] 1041 	mov	a,_bp
      0023B9 24 14            [12] 1042 	add	a,#0x14
      0023BB F8               [12] 1043 	mov	r0,a
      0023BC C3               [12] 1044 	clr	c
      0023BD E6               [12] 1045 	mov	a,@r0
      0023BE 94 08            [12] 1046 	subb	a,#0x08
      0023C0 08               [12] 1047 	inc	r0
      0023C1 E6               [12] 1048 	mov	a,@r0
      0023C2 64 80            [12] 1049 	xrl	a,#0x80
      0023C4 94 80            [12] 1050 	subb	a,#0x80
      0023C6 D0 00            [24] 1051 	pop	ar0
      0023C8 40 03            [24] 1052 	jc	00187$
      0023CA 02 24 F3         [24] 1053 	ljmp	00111$
      0023CD                       1054 00187$:
                                   1055 ;	walk.c:98: if (!update(&t, &cur, j)) continue;
      0023CD C0 00            [24] 1056 	push	ar0
      0023CF E5 10            [12] 1057 	mov	a,_bp
      0023D1 24 07            [12] 1058 	add	a,#0x07
      0023D3 F8               [12] 1059 	mov	r0,a
      0023D4 C0 01            [24] 1060 	push	ar1
      0023D6 E5 10            [12] 1061 	mov	a,_bp
      0023D8 24 08            [12] 1062 	add	a,#0x08
      0023DA F9               [12] 1063 	mov	r1,a
      0023DB E6               [12] 1064 	mov	a,@r0
      0023DC F7               [12] 1065 	mov	@r1,a
      0023DD 09               [12] 1066 	inc	r1
      0023DE 77 00            [12] 1067 	mov	@r1,#0x00
      0023E0 09               [12] 1068 	inc	r1
      0023E1 77 40            [12] 1069 	mov	@r1,#0x40
      0023E3 D0 01            [24] 1070 	pop	ar1
      0023E5 D0 00            [24] 1071 	pop	ar0
      0023E7 88 04            [24] 1072 	mov	ar4,r0
      0023E9 7E 00            [12] 1073 	mov	r6,#0x00
      0023EB 7F 40            [12] 1074 	mov	r7,#0x40
      0023ED C0 05            [24] 1075 	push	ar5
      0023EF C0 03            [24] 1076 	push	ar3
      0023F1 C0 01            [24] 1077 	push	ar1
      0023F3 C0 00            [24] 1078 	push	ar0
      0023F5 85 00 F0         [24] 1079 	mov	b,ar0
      0023F8 E5 10            [12] 1080 	mov	a,_bp
      0023FA 24 14            [12] 1081 	add	a,#0x14
      0023FC F8               [12] 1082 	mov	r0,a
      0023FD E6               [12] 1083 	mov	a,@r0
      0023FE C0 E0            [24] 1084 	push	acc
      002400 08               [12] 1085 	inc	r0
      002401 E6               [12] 1086 	mov	a,@r0
      002402 C0 E0            [24] 1087 	push	acc
      002404 A8 F0            [24] 1088 	mov	r0,b
      002406 85 00 F0         [24] 1089 	mov	b,ar0
      002409 E5 10            [12] 1090 	mov	a,_bp
      00240B 24 08            [12] 1091 	add	a,#0x08
      00240D F8               [12] 1092 	mov	r0,a
      00240E E6               [12] 1093 	mov	a,@r0
      00240F C0 E0            [24] 1094 	push	acc
      002411 08               [12] 1095 	inc	r0
      002412 E6               [12] 1096 	mov	a,@r0
      002413 C0 E0            [24] 1097 	push	acc
      002415 08               [12] 1098 	inc	r0
      002416 E6               [12] 1099 	mov	a,@r0
      002417 C0 E0            [24] 1100 	push	acc
      002419 8C 82            [24] 1101 	mov	dpl,r4
      00241B 8E 83            [24] 1102 	mov	dph,r6
      00241D 8F F0            [24] 1103 	mov	b,r7
      00241F 12 20 8B         [24] 1104 	lcall	_update
      002422 AE 82            [24] 1105 	mov	r6,dpl
      002424 AF 83            [24] 1106 	mov	r7,dph
      002426 E5 81            [12] 1107 	mov	a,sp
      002428 24 FB            [12] 1108 	add	a,#0xfb
      00242A F5 81            [12] 1109 	mov	sp,a
      00242C D0 00            [24] 1110 	pop	ar0
      00242E D0 01            [24] 1111 	pop	ar1
      002430 D0 03            [24] 1112 	pop	ar3
      002432 D0 05            [24] 1113 	pop	ar5
      002434 EE               [12] 1114 	mov	a,r6
      002435 4F               [12] 1115 	orl	a,r7
      002436 70 03            [24] 1116 	jnz	00188$
      002438 02 24 E1         [24] 1117 	ljmp	00110$
      00243B                       1118 00188$:
                                   1119 ;	walk.c:100: if (g[t.r][t.c] == 0x55) f++;
      00243B 86 06            [24] 1120 	mov	ar6,@r0
      00243D 08               [12] 1121 	inc	r0
      00243E 86 07            [24] 1122 	mov	ar7,@r0
      002440 18               [12] 1123 	dec	r0
      002441 C0 05            [24] 1124 	push	ar5
      002443 C0 03            [24] 1125 	push	ar3
      002445 C0 01            [24] 1126 	push	ar1
      002447 C0 00            [24] 1127 	push	ar0
      002449 C0 06            [24] 1128 	push	ar6
      00244B C0 07            [24] 1129 	push	ar7
      00244D 90 00 C0         [24] 1130 	mov	dptr,#0x00c0
      002450 12 2B 0C         [24] 1131 	lcall	__mulint
      002453 AE 82            [24] 1132 	mov	r6,dpl
      002455 AF 83            [24] 1133 	mov	r7,dph
      002457 15 81            [12] 1134 	dec	sp
      002459 15 81            [12] 1135 	dec	sp
      00245B D0 00            [24] 1136 	pop	ar0
      00245D D0 01            [24] 1137 	pop	ar1
      00245F D0 03            [24] 1138 	pop	ar3
      002461 D0 05            [24] 1139 	pop	ar5
      002463 EE               [12] 1140 	mov	a,r6
      002464 24 00            [12] 1141 	add	a,#_g
      002466 FA               [12] 1142 	mov	r2,a
      002467 EF               [12] 1143 	mov	a,r7
      002468 34 41            [12] 1144 	addc	a,#(_g >> 8)
      00246A FC               [12] 1145 	mov	r4,a
      00246B C0 00            [24] 1146 	push	ar0
      00246D E5 10            [12] 1147 	mov	a,_bp
      00246F 24 08            [12] 1148 	add	a,#0x08
      002471 F8               [12] 1149 	mov	r0,a
      002472 C0 01            [24] 1150 	push	ar1
      002474 A9 05            [24] 1151 	mov	r1,ar5
      002476 E7               [12] 1152 	mov	a,@r1
      002477 F6               [12] 1153 	mov	@r0,a
      002478 09               [12] 1154 	inc	r1
      002479 E7               [12] 1155 	mov	a,@r1
      00247A 08               [12] 1156 	inc	r0
      00247B F6               [12] 1157 	mov	@r0,a
      00247C D0 01            [24] 1158 	pop	ar1
      00247E E5 10            [12] 1159 	mov	a,_bp
      002480 24 08            [12] 1160 	add	a,#0x08
      002482 F8               [12] 1161 	mov	r0,a
      002483 E6               [12] 1162 	mov	a,@r0
      002484 2A               [12] 1163 	add	a,r2
      002485 F5 82            [12] 1164 	mov	dpl,a
      002487 08               [12] 1165 	inc	r0
      002488 E6               [12] 1166 	mov	a,@r0
      002489 3C               [12] 1167 	addc	a,r4
      00248A F5 83            [12] 1168 	mov	dph,a
      00248C D0 00            [24] 1169 	pop	ar0
      00248E E0               [24] 1170 	movx	a,@dptr
      00248F FC               [12] 1171 	mov	r4,a
      002490 BC 55 11         [24] 1172 	cjne	r4,#0x55,00108$
      002493 C0 00            [24] 1173 	push	ar0
      002495 E5 10            [12] 1174 	mov	a,_bp
      002497 24 16            [12] 1175 	add	a,#0x16
      002499 F8               [12] 1176 	mov	r0,a
      00249A 06               [12] 1177 	inc	@r0
      00249B B6 00 02         [24] 1178 	cjne	@r0,#0x00,00191$
      00249E 08               [12] 1179 	inc	r0
      00249F 06               [12] 1180 	inc	@r0
      0024A0                       1181 00191$:
      0024A0 D0 00            [24] 1182 	pop	ar0
      0024A2 80 3D            [24] 1183 	sjmp	00110$
      0024A4                       1184 00108$:
                                   1185 ;	walk.c:101: else if (g[t.r][t.c] != 0xaa) {
      0024A4 EE               [12] 1186 	mov	a,r6
      0024A5 24 00            [12] 1187 	add	a,#_g
      0024A7 FE               [12] 1188 	mov	r6,a
      0024A8 EF               [12] 1189 	mov	a,r7
      0024A9 34 41            [12] 1190 	addc	a,#(_g >> 8)
      0024AB FF               [12] 1191 	mov	r7,a
      0024AC C0 00            [24] 1192 	push	ar0
      0024AE E5 10            [12] 1193 	mov	a,_bp
      0024B0 24 08            [12] 1194 	add	a,#0x08
      0024B2 F8               [12] 1195 	mov	r0,a
      0024B3 E6               [12] 1196 	mov	a,@r0
      0024B4 2E               [12] 1197 	add	a,r6
      0024B5 F5 82            [12] 1198 	mov	dpl,a
      0024B7 08               [12] 1199 	inc	r0
      0024B8 E6               [12] 1200 	mov	a,@r0
      0024B9 3F               [12] 1201 	addc	a,r7
      0024BA F5 83            [12] 1202 	mov	dph,a
      0024BC D0 00            [24] 1203 	pop	ar0
      0024BE E0               [24] 1204 	movx	a,@dptr
      0024BF FF               [12] 1205 	mov	r7,a
      0024C0 BF AA 02         [24] 1206 	cjne	r7,#0xaa,00192$
      0024C3 80 1C            [24] 1207 	sjmp	00110$
      0024C5                       1208 00192$:
                                   1209 ;	walk.c:102: (void)puts("Memory error");
      0024C5 90 40 20         [24] 1210 	mov	dptr,#___str_1
      0024C8 75 F0 80         [24] 1211 	mov	b,#0x80
      0024CB C0 05            [24] 1212 	push	ar5
      0024CD C0 03            [24] 1213 	push	ar3
      0024CF C0 01            [24] 1214 	push	ar1
      0024D1 C0 00            [24] 1215 	push	ar0
      0024D3 12 2C 3D         [24] 1216 	lcall	_puts
      0024D6 D0 00            [24] 1217 	pop	ar0
      0024D8 D0 01            [24] 1218 	pop	ar1
      0024DA D0 03            [24] 1219 	pop	ar3
      0024DC D0 05            [24] 1220 	pop	ar5
                                   1221 ;	walk.c:103: reset();
      0024DE 12 20 88         [24] 1222 	lcall	_reset
      0024E1                       1223 00110$:
                                   1224 ;	walk.c:97: for (j = 0, f = 0; j < NMAX; j++) {
      0024E1 C0 00            [24] 1225 	push	ar0
      0024E3 E5 10            [12] 1226 	mov	a,_bp
      0024E5 24 14            [12] 1227 	add	a,#0x14
      0024E7 F8               [12] 1228 	mov	r0,a
      0024E8 06               [12] 1229 	inc	@r0
      0024E9 B6 00 02         [24] 1230 	cjne	@r0,#0x00,00193$
      0024EC 08               [12] 1231 	inc	r0
      0024ED 06               [12] 1232 	inc	@r0
      0024EE                       1233 00193$:
      0024EE D0 00            [24] 1234 	pop	ar0
      0024F0 02 23 B5         [24] 1235 	ljmp	00130$
      0024F3                       1236 00111$:
                                   1237 ;	walk.c:107: if (f) {
      0024F3 C0 00            [24] 1238 	push	ar0
      0024F5 E5 10            [12] 1239 	mov	a,_bp
      0024F7 24 16            [12] 1240 	add	a,#0x16
      0024F9 F8               [12] 1241 	mov	r0,a
      0024FA E6               [12] 1242 	mov	a,@r0
      0024FB 08               [12] 1243 	inc	r0
      0024FC 46               [12] 1244 	orl	a,@r0
      0024FD D0 00            [24] 1245 	pop	ar0
      0024FF 70 03            [24] 1246 	jnz	00194$
      002501 02 27 00         [24] 1247 	ljmp	00125$
      002504                       1248 00194$:
                                   1249 ;	walk.c:108: while (1) {
      002504                       1250 00122$:
                                   1251 ;	walk.c:109: j = rand() % NMAX;
      002504 C0 05            [24] 1252 	push	ar5
      002506 C0 05            [24] 1253 	push	ar5
      002508 C0 03            [24] 1254 	push	ar3
      00250A C0 01            [24] 1255 	push	ar1
      00250C C0 00            [24] 1256 	push	ar0
      00250E 12 2A 14         [24] 1257 	lcall	_rand
      002511 AE 82            [24] 1258 	mov	r6,dpl
      002513 AF 83            [24] 1259 	mov	r7,dph
      002515 74 08            [12] 1260 	mov	a,#0x08
      002517 C0 E0            [24] 1261 	push	acc
      002519 E4               [12] 1262 	clr	a
      00251A C0 E0            [24] 1263 	push	acc
      00251C 8E 82            [24] 1264 	mov	dpl,r6
      00251E 8F 83            [24] 1265 	mov	dph,r7
      002520 12 2D 18         [24] 1266 	lcall	__modsint
      002523 C0 00            [24] 1267 	push	ar0
      002525 C8               [12] 1268 	xch	a,r0
      002526 E5 10            [12] 1269 	mov	a,_bp
      002528 24 14            [12] 1270 	add	a,#0x14
      00252A C8               [12] 1271 	xch	a,r0
      00252B A6 82            [24] 1272 	mov	@r0,dpl
      00252D 08               [12] 1273 	inc	r0
      00252E A6 83            [24] 1274 	mov	@r0,dph
      002530 D0 00            [24] 1275 	pop	ar0
      002532 15 81            [12] 1276 	dec	sp
      002534 15 81            [12] 1277 	dec	sp
      002536 D0 00            [24] 1278 	pop	ar0
      002538 D0 01            [24] 1279 	pop	ar1
      00253A D0 03            [24] 1280 	pop	ar3
      00253C D0 05            [24] 1281 	pop	ar5
                                   1282 ;	walk.c:110: if (!update(&t, &cur, j)) continue;
      00253E C0 00            [24] 1283 	push	ar0
      002540 E5 10            [12] 1284 	mov	a,_bp
      002542 24 0B            [12] 1285 	add	a,#0x0b
      002544 F8               [12] 1286 	mov	r0,a
      002545 C0 01            [24] 1287 	push	ar1
      002547 E5 10            [12] 1288 	mov	a,_bp
      002549 24 08            [12] 1289 	add	a,#0x08
      00254B F9               [12] 1290 	mov	r1,a
      00254C E6               [12] 1291 	mov	a,@r0
      00254D F7               [12] 1292 	mov	@r1,a
      00254E 09               [12] 1293 	inc	r1
      00254F 77 00            [12] 1294 	mov	@r1,#0x00
      002551 09               [12] 1295 	inc	r1
      002552 77 40            [12] 1296 	mov	@r1,#0x40
      002554 D0 01            [24] 1297 	pop	ar1
      002556 D0 00            [24] 1298 	pop	ar0
      002558 8B 04            [24] 1299 	mov	ar4,r3
      00255A 7E 00            [12] 1300 	mov	r6,#0x00
      00255C 7F 40            [12] 1301 	mov	r7,#0x40
      00255E C0 05            [24] 1302 	push	ar5
      002560 C0 03            [24] 1303 	push	ar3
      002562 C0 01            [24] 1304 	push	ar1
      002564 C0 00            [24] 1305 	push	ar0
      002566 85 00 F0         [24] 1306 	mov	b,ar0
      002569 E5 10            [12] 1307 	mov	a,_bp
      00256B 24 14            [12] 1308 	add	a,#0x14
      00256D F8               [12] 1309 	mov	r0,a
      00256E E6               [12] 1310 	mov	a,@r0
      00256F C0 E0            [24] 1311 	push	acc
      002571 08               [12] 1312 	inc	r0
      002572 E6               [12] 1313 	mov	a,@r0
      002573 C0 E0            [24] 1314 	push	acc
      002575 A8 F0            [24] 1315 	mov	r0,b
      002577 85 00 F0         [24] 1316 	mov	b,ar0
      00257A E5 10            [12] 1317 	mov	a,_bp
      00257C 24 08            [12] 1318 	add	a,#0x08
      00257E F8               [12] 1319 	mov	r0,a
      00257F E6               [12] 1320 	mov	a,@r0
      002580 C0 E0            [24] 1321 	push	acc
      002582 08               [12] 1322 	inc	r0
      002583 E6               [12] 1323 	mov	a,@r0
      002584 C0 E0            [24] 1324 	push	acc
      002586 08               [12] 1325 	inc	r0
      002587 E6               [12] 1326 	mov	a,@r0
      002588 C0 E0            [24] 1327 	push	acc
      00258A 8C 82            [24] 1328 	mov	dpl,r4
      00258C 8E 83            [24] 1329 	mov	dph,r6
      00258E 8F F0            [24] 1330 	mov	b,r7
      002590 12 20 8B         [24] 1331 	lcall	_update
      002593 AE 82            [24] 1332 	mov	r6,dpl
      002595 AF 83            [24] 1333 	mov	r7,dph
      002597 E5 81            [12] 1334 	mov	a,sp
      002599 24 FB            [12] 1335 	add	a,#0xfb
      00259B F5 81            [12] 1336 	mov	sp,a
      00259D D0 00            [24] 1337 	pop	ar0
      00259F D0 01            [24] 1338 	pop	ar1
      0025A1 D0 03            [24] 1339 	pop	ar3
      0025A3 D0 05            [24] 1340 	pop	ar5
      0025A5 D0 05            [24] 1341 	pop	ar5
      0025A7 EE               [12] 1342 	mov	a,r6
      0025A8 4F               [12] 1343 	orl	a,r7
      0025A9 70 03            [24] 1344 	jnz	00195$
      0025AB 02 25 04         [24] 1345 	ljmp	00122$
      0025AE                       1346 00195$:
                                   1347 ;	walk.c:112: if (g[t.r][t.c] == 0xaa) continue;
      0025AE C0 00            [24] 1348 	push	ar0
      0025B0 A8 03            [24] 1349 	mov	r0,ar3
      0025B2 86 06            [24] 1350 	mov	ar6,@r0
      0025B4 08               [12] 1351 	inc	r0
      0025B5 86 07            [24] 1352 	mov	ar7,@r0
      0025B7 D0 00            [24] 1353 	pop	ar0
      0025B9 C0 05            [24] 1354 	push	ar5
      0025BB C0 03            [24] 1355 	push	ar3
      0025BD C0 01            [24] 1356 	push	ar1
      0025BF C0 00            [24] 1357 	push	ar0
      0025C1 C0 06            [24] 1358 	push	ar6
      0025C3 C0 07            [24] 1359 	push	ar7
      0025C5 90 00 C0         [24] 1360 	mov	dptr,#0x00c0
      0025C8 12 2B 0C         [24] 1361 	lcall	__mulint
      0025CB AE 82            [24] 1362 	mov	r6,dpl
      0025CD AF 83            [24] 1363 	mov	r7,dph
      0025CF 15 81            [12] 1364 	dec	sp
      0025D1 15 81            [12] 1365 	dec	sp
      0025D3 D0 00            [24] 1366 	pop	ar0
      0025D5 D0 01            [24] 1367 	pop	ar1
      0025D7 D0 03            [24] 1368 	pop	ar3
      0025D9 D0 05            [24] 1369 	pop	ar5
      0025DB EE               [12] 1370 	mov	a,r6
      0025DC 24 00            [12] 1371 	add	a,#_g
      0025DE FA               [12] 1372 	mov	r2,a
      0025DF EF               [12] 1373 	mov	a,r7
      0025E0 34 41            [12] 1374 	addc	a,#(_g >> 8)
      0025E2 FC               [12] 1375 	mov	r4,a
      0025E3 C0 00            [24] 1376 	push	ar0
      0025E5 E5 10            [12] 1377 	mov	a,_bp
      0025E7 24 05            [12] 1378 	add	a,#0x05
      0025E9 F8               [12] 1379 	mov	r0,a
      0025EA C0 01            [24] 1380 	push	ar1
      0025EC E5 10            [12] 1381 	mov	a,_bp
      0025EE 24 08            [12] 1382 	add	a,#0x08
      0025F0 F9               [12] 1383 	mov	r1,a
      0025F1 86 00            [24] 1384 	mov	ar0,@r0
      0025F3 E6               [12] 1385 	mov	a,@r0
      0025F4 F7               [12] 1386 	mov	@r1,a
      0025F5 08               [12] 1387 	inc	r0
      0025F6 E6               [12] 1388 	mov	a,@r0
      0025F7 09               [12] 1389 	inc	r1
      0025F8 F7               [12] 1390 	mov	@r1,a
      0025F9 18               [12] 1391 	dec	r0
      0025FA D0 01            [24] 1392 	pop	ar1
      0025FC E5 10            [12] 1393 	mov	a,_bp
      0025FE 24 08            [12] 1394 	add	a,#0x08
      002600 F8               [12] 1395 	mov	r0,a
      002601 E6               [12] 1396 	mov	a,@r0
      002602 2A               [12] 1397 	add	a,r2
      002603 F5 82            [12] 1398 	mov	dpl,a
      002605 08               [12] 1399 	inc	r0
      002606 E6               [12] 1400 	mov	a,@r0
      002607 3C               [12] 1401 	addc	a,r4
      002608 F5 83            [12] 1402 	mov	dph,a
      00260A D0 00            [24] 1403 	pop	ar0
      00260C E0               [24] 1404 	movx	a,@dptr
      00260D FC               [12] 1405 	mov	r4,a
      00260E BC AA 03         [24] 1406 	cjne	r4,#0xaa,00196$
      002611 02 25 04         [24] 1407 	ljmp	00122$
      002614                       1408 00196$:
                                   1409 ;	walk.c:113: else if (g[t.r][t.c] != 0x55) {
      002614 EE               [12] 1410 	mov	a,r6
      002615 24 00            [12] 1411 	add	a,#_g
      002617 FE               [12] 1412 	mov	r6,a
      002618 EF               [12] 1413 	mov	a,r7
      002619 34 41            [12] 1414 	addc	a,#(_g >> 8)
      00261B FF               [12] 1415 	mov	r7,a
      00261C C0 00            [24] 1416 	push	ar0
      00261E E5 10            [12] 1417 	mov	a,_bp
      002620 24 08            [12] 1418 	add	a,#0x08
      002622 F8               [12] 1419 	mov	r0,a
      002623 E6               [12] 1420 	mov	a,@r0
      002624 2E               [12] 1421 	add	a,r6
      002625 F5 82            [12] 1422 	mov	dpl,a
      002627 08               [12] 1423 	inc	r0
      002628 E6               [12] 1424 	mov	a,@r0
      002629 3F               [12] 1425 	addc	a,r7
      00262A F5 83            [12] 1426 	mov	dph,a
      00262C D0 00            [24] 1427 	pop	ar0
      00262E E0               [24] 1428 	movx	a,@dptr
      00262F FF               [12] 1429 	mov	r7,a
      002630 BF 55 02         [24] 1430 	cjne	r7,#0x55,00197$
      002633 80 1C            [24] 1431 	sjmp	00118$
      002635                       1432 00197$:
                                   1433 ;	walk.c:114: (void)puts("Memory error");
      002635 90 40 20         [24] 1434 	mov	dptr,#___str_1
      002638 75 F0 80         [24] 1435 	mov	b,#0x80
      00263B C0 05            [24] 1436 	push	ar5
      00263D C0 03            [24] 1437 	push	ar3
      00263F C0 01            [24] 1438 	push	ar1
      002641 C0 00            [24] 1439 	push	ar0
      002643 12 2C 3D         [24] 1440 	lcall	_puts
      002646 D0 00            [24] 1441 	pop	ar0
      002648 D0 01            [24] 1442 	pop	ar1
      00264A D0 03            [24] 1443 	pop	ar3
      00264C D0 05            [24] 1444 	pop	ar5
                                   1445 ;	walk.c:115: reset();
      00264E 12 20 88         [24] 1446 	lcall	_reset
      002651                       1447 00118$:
                                   1448 ;	walk.c:118: if (!stpush(&cur)) {
      002651 C0 00            [24] 1449 	push	ar0
      002653 A8 10            [24] 1450 	mov	r0,_bp
      002655 08               [12] 1451 	inc	r0
      002656 86 04            [24] 1452 	mov	ar4,@r0
      002658 7E 00            [12] 1453 	mov	r6,#0x00
      00265A 7F 40            [12] 1454 	mov	r7,#0x40
      00265C D0 00            [24] 1455 	pop	ar0
      00265E 8C 82            [24] 1456 	mov	dpl,r4
      002660 8E 83            [24] 1457 	mov	dph,r6
      002662 8F F0            [24] 1458 	mov	b,r7
      002664 C0 05            [24] 1459 	push	ar5
      002666 C0 03            [24] 1460 	push	ar3
      002668 C0 01            [24] 1461 	push	ar1
      00266A C0 00            [24] 1462 	push	ar0
      00266C 12 29 51         [24] 1463 	lcall	_stpush
      00266F E5 82            [12] 1464 	mov	a,dpl
      002671 85 83 F0         [24] 1465 	mov	b,dph
      002674 D0 00            [24] 1466 	pop	ar0
      002676 D0 01            [24] 1467 	pop	ar1
      002678 D0 03            [24] 1468 	pop	ar3
      00267A D0 05            [24] 1469 	pop	ar5
      00267C 45 F0            [12] 1470 	orl	a,b
      00267E 70 1C            [24] 1471 	jnz	00120$
                                   1472 ;	walk.c:119: (void)puts("Memory error");
      002680 90 40 20         [24] 1473 	mov	dptr,#___str_1
      002683 75 F0 80         [24] 1474 	mov	b,#0x80
      002686 C0 05            [24] 1475 	push	ar5
      002688 C0 03            [24] 1476 	push	ar3
      00268A C0 01            [24] 1477 	push	ar1
      00268C C0 00            [24] 1478 	push	ar0
      00268E 12 2C 3D         [24] 1479 	lcall	_puts
      002691 D0 00            [24] 1480 	pop	ar0
      002693 D0 01            [24] 1481 	pop	ar1
      002695 D0 03            [24] 1482 	pop	ar3
      002697 D0 05            [24] 1483 	pop	ar5
                                   1484 ;	walk.c:120: reset();
      002699 12 20 88         [24] 1485 	lcall	_reset
      00269C                       1486 00120$:
                                   1487 ;	walk.c:122: cur = t;
      00269C C0 05            [24] 1488 	push	ar5
      00269E C0 00            [24] 1489 	push	ar0
      0026A0 A8 10            [24] 1490 	mov	r0,_bp
      0026A2 08               [12] 1491 	inc	r0
      0026A3 08               [12] 1492 	inc	r0
      0026A4 C0 01            [24] 1493 	push	ar1
      0026A6 E5 10            [12] 1494 	mov	a,_bp
      0026A8 24 08            [12] 1495 	add	a,#0x08
      0026AA F9               [12] 1496 	mov	r1,a
      0026AB E6               [12] 1497 	mov	a,@r0
      0026AC F7               [12] 1498 	mov	@r1,a
      0026AD 09               [12] 1499 	inc	r1
      0026AE 77 00            [12] 1500 	mov	@r1,#0x00
      0026B0 09               [12] 1501 	inc	r1
      0026B1 77 40            [12] 1502 	mov	@r1,#0x40
      0026B3 D0 01            [24] 1503 	pop	ar1
      0026B5 E5 10            [12] 1504 	mov	a,_bp
      0026B7 24 03            [12] 1505 	add	a,#0x03
      0026B9 F8               [12] 1506 	mov	r0,a
      0026BA 86 02            [24] 1507 	mov	ar2,@r0
      0026BC 7D 00            [12] 1508 	mov	r5,#0x00
      0026BE 7F 40            [12] 1509 	mov	r7,#0x40
      0026C0 D0 00            [24] 1510 	pop	ar0
      0026C2 C0 05            [24] 1511 	push	ar5
      0026C4 C0 03            [24] 1512 	push	ar3
      0026C6 C0 01            [24] 1513 	push	ar1
      0026C8 C0 00            [24] 1514 	push	ar0
      0026CA 74 04            [12] 1515 	mov	a,#0x04
      0026CC C0 E0            [24] 1516 	push	acc
      0026CE E4               [12] 1517 	clr	a
      0026CF C0 E0            [24] 1518 	push	acc
      0026D1 85 00 F0         [24] 1519 	mov	b,ar0
      0026D4 E5 10            [12] 1520 	mov	a,_bp
      0026D6 24 08            [12] 1521 	add	a,#0x08
      0026D8 F8               [12] 1522 	mov	r0,a
      0026D9 E6               [12] 1523 	mov	a,@r0
      0026DA C0 E0            [24] 1524 	push	acc
      0026DC 08               [12] 1525 	inc	r0
      0026DD E6               [12] 1526 	mov	a,@r0
      0026DE C0 E0            [24] 1527 	push	acc
      0026E0 08               [12] 1528 	inc	r0
      0026E1 E6               [12] 1529 	mov	a,@r0
      0026E2 C0 E0            [24] 1530 	push	acc
      0026E4 8A 82            [24] 1531 	mov	dpl,r2
      0026E6 8D 83            [24] 1532 	mov	dph,r5
      0026E8 8F F0            [24] 1533 	mov	b,r7
      0026EA 12 2B AA         [24] 1534 	lcall	___memcpy
      0026ED E5 81            [12] 1535 	mov	a,sp
      0026EF 24 FB            [12] 1536 	add	a,#0xfb
      0026F1 F5 81            [12] 1537 	mov	sp,a
      0026F3 D0 00            [24] 1538 	pop	ar0
      0026F5 D0 01            [24] 1539 	pop	ar1
      0026F7 D0 03            [24] 1540 	pop	ar3
      0026F9 D0 05            [24] 1541 	pop	ar5
                                   1542 ;	walk.c:123: goto process;
      0026FB D0 05            [24] 1543 	pop	ar5
      0026FD 02 23 07         [24] 1544 	ljmp	00101$
      002700                       1545 00125$:
                                   1546 ;	walk.c:127: printf("\033[%d;%dH.", cur.r + 1, cur.c + 1);
      002700 C0 00            [24] 1547 	push	ar0
      002702 E5 10            [12] 1548 	mov	a,_bp
      002704 24 04            [12] 1549 	add	a,#0x04
      002706 F8               [12] 1550 	mov	r0,a
      002707 86 00            [24] 1551 	mov	ar0,@r0
      002709 86 06            [24] 1552 	mov	ar6,@r0
      00270B 08               [12] 1553 	inc	r0
      00270C 86 07            [24] 1554 	mov	ar7,@r0
      00270E 18               [12] 1555 	dec	r0
      00270F D0 00            [24] 1556 	pop	ar0
      002711 0E               [12] 1557 	inc	r6
      002712 BE 00 01         [24] 1558 	cjne	r6,#0x00,00199$
      002715 0F               [12] 1559 	inc	r7
      002716                       1560 00199$:
      002716 87 02            [24] 1561 	mov	ar2,@r1
      002718 09               [12] 1562 	inc	r1
      002719 87 04            [24] 1563 	mov	ar4,@r1
      00271B 19               [12] 1564 	dec	r1
      00271C 0A               [12] 1565 	inc	r2
      00271D BA 00 01         [24] 1566 	cjne	r2,#0x00,00200$
      002720 0C               [12] 1567 	inc	r4
      002721                       1568 00200$:
      002721 C0 05            [24] 1569 	push	ar5
      002723 C0 03            [24] 1570 	push	ar3
      002725 C0 01            [24] 1571 	push	ar1
      002727 C0 00            [24] 1572 	push	ar0
      002729 C0 06            [24] 1573 	push	ar6
      00272B C0 07            [24] 1574 	push	ar7
      00272D C0 02            [24] 1575 	push	ar2
      00272F C0 04            [24] 1576 	push	ar4
      002731 74 2D            [12] 1577 	mov	a,#___str_2
      002733 C0 E0            [24] 1578 	push	acc
      002735 74 40            [12] 1579 	mov	a,#(___str_2 >> 8)
      002737 C0 E0            [24] 1580 	push	acc
      002739 74 80            [12] 1581 	mov	a,#0x80
      00273B C0 E0            [24] 1582 	push	acc
      00273D 12 2C C3         [24] 1583 	lcall	_printf
      002740 E5 81            [12] 1584 	mov	a,sp
      002742 24 F9            [12] 1585 	add	a,#0xf9
      002744 F5 81            [12] 1586 	mov	sp,a
      002746 D0 00            [24] 1587 	pop	ar0
      002748 D0 01            [24] 1588 	pop	ar1
      00274A D0 03            [24] 1589 	pop	ar3
      00274C D0 05            [24] 1590 	pop	ar5
                                   1591 ;	walk.c:129: if (!stpop(&cur)) goto term;
      00274E C0 00            [24] 1592 	push	ar0
      002750 E5 10            [12] 1593 	mov	a,_bp
      002752 24 06            [12] 1594 	add	a,#0x06
      002754 F8               [12] 1595 	mov	r0,a
      002755 86 04            [24] 1596 	mov	ar4,@r0
      002757 7E 00            [12] 1597 	mov	r6,#0x00
      002759 7F 40            [12] 1598 	mov	r7,#0x40
      00275B D0 00            [24] 1599 	pop	ar0
      00275D 8C 82            [24] 1600 	mov	dpl,r4
      00275F 8E 83            [24] 1601 	mov	dph,r6
      002761 8F F0            [24] 1602 	mov	b,r7
      002763 C0 05            [24] 1603 	push	ar5
      002765 C0 03            [24] 1604 	push	ar3
      002767 C0 01            [24] 1605 	push	ar1
      002769 C0 00            [24] 1606 	push	ar0
      00276B 12 29 B2         [24] 1607 	lcall	_stpop
      00276E E5 82            [12] 1608 	mov	a,dpl
      002770 85 83 F0         [24] 1609 	mov	b,dph
      002773 D0 00            [24] 1610 	pop	ar0
      002775 D0 01            [24] 1611 	pop	ar1
      002777 D0 03            [24] 1612 	pop	ar3
      002779 D0 05            [24] 1613 	pop	ar5
      00277B 45 F0            [12] 1614 	orl	a,b
      00277D 60 03            [24] 1615 	jz	00201$
      00277F 02 23 9F         [24] 1616 	ljmp	00137$
      002782                       1617 00201$:
                                   1618 ;	walk.c:133: return;
                                   1619 ;	walk.c:134: }
      002782 85 10 81         [24] 1620 	mov	sp,_bp
      002785 D0 10            [24] 1621 	pop	_bp
      002787 22               [24] 1622 	ret
                                   1623 ;------------------------------------------------------------
                                   1624 ;Allocation info for local variables in function 'main'
                                   1625 ;------------------------------------------------------------
                                   1626 ;initial                   Allocated to stack - _bp +3
                                   1627 ;i                         Allocated to stack - _bp +7
                                   1628 ;j                         Allocated to registers r4 r5 
                                   1629 ;sloc0                     Allocated to stack - _bp +1
                                   1630 ;R                         Allocated with name '_main_R_65536_65'
                                   1631 ;------------------------------------------------------------
                                   1632 ;	walk.c:136: int main(void) {
                                   1633 ;	-----------------------------------------
                                   1634 ;	 function main
                                   1635 ;	-----------------------------------------
      002788                       1636 _main:
      002788 C0 10            [24] 1637 	push	_bp
      00278A E5 81            [12] 1638 	mov	a,sp
      00278C F5 10            [12] 1639 	mov	_bp,a
      00278E 24 08            [12] 1640 	add	a,#0x08
      002790 F5 81            [12] 1641 	mov	sp,a
                                   1642 ;	walk.c:141: i0 = 1;
      002792 78 11            [12] 1643 	mov	r0,#_i0
      002794 76 01            [12] 1644 	mov	@r0,#0x01
                                   1645 ;	walk.c:143: IT0 = 1;
                                   1646 ;	assignBit
      002796 D2 88            [12] 1647 	setb	_IT0
                                   1648 ;	walk.c:144: EX0 = 1;
                                   1649 ;	assignBit
      002798 D2 A8            [12] 1650 	setb	_EX0
                                   1651 ;	walk.c:145: EA = 1;
                                   1652 ;	assignBit
      00279A D2 AF            [12] 1653 	setb	_EA
                                   1654 ;	walk.c:147: srand(*R);
      00279C 90 F5 02         [24] 1655 	mov	dptr,#_main_R_65536_65
      00279F E0               [24] 1656 	movx	a,@dptr
      0027A0 FE               [12] 1657 	mov	r6,a
      0027A1 A3               [24] 1658 	inc	dptr
      0027A2 E0               [24] 1659 	movx	a,@dptr
      0027A3 FF               [12] 1660 	mov	r7,a
      0027A4 8E 82            [24] 1661 	mov	dpl,r6
      0027A6 8F 83            [24] 1662 	mov	dph,r7
      0027A8 E0               [24] 1663 	movx	a,@dptr
      0027A9 FE               [12] 1664 	mov	r6,a
      0027AA A3               [24] 1665 	inc	dptr
      0027AB E0               [24] 1666 	movx	a,@dptr
      0027AC FF               [12] 1667 	mov	r7,a
      0027AD 8E 82            [24] 1668 	mov	dpl,r6
      0027AF 8F 83            [24] 1669 	mov	dph,r7
      0027B1 12 2A D8         [24] 1670 	lcall	_srand
                                   1671 ;	walk.c:148: stinit();
      0027B4 12 29 48         [24] 1672 	lcall	_stinit
                                   1673 ;	walk.c:150: while (i0) {
      0027B7 E5 10            [12] 1674 	mov	a,_bp
      0027B9 24 03            [12] 1675 	add	a,#0x03
      0027BB FF               [12] 1676 	mov	r7,a
      0027BC FE               [12] 1677 	mov	r6,a
      0027BD                       1678 00107$:
      0027BD 78 11            [12] 1679 	mov	r0,#_i0
      0027BF E6               [12] 1680 	mov	a,@r0
      0027C0 70 03            [24] 1681 	jnz	00168$
      0027C2 02 29 3A         [24] 1682 	ljmp	00109$
      0027C5                       1683 00168$:
                                   1684 ;	walk.c:151: for (i = 0; i < ROWS; i++)
      0027C5 E5 10            [12] 1685 	mov	a,_bp
      0027C7 24 07            [12] 1686 	add	a,#0x07
      0027C9 F8               [12] 1687 	mov	r0,a
      0027CA E4               [12] 1688 	clr	a
      0027CB F6               [12] 1689 	mov	@r0,a
      0027CC 08               [12] 1690 	inc	r0
      0027CD F6               [12] 1691 	mov	@r0,a
      0027CE 7A 00            [12] 1692 	mov	r2,#0x00
      0027D0 7B 00            [12] 1693 	mov	r3,#0x00
                                   1694 ;	walk.c:152: for (j = 0; j < COLS; j++)
      0027D2                       1695 00121$:
      0027D2 A8 10            [24] 1696 	mov	r0,_bp
      0027D4 08               [12] 1697 	inc	r0
      0027D5 EA               [12] 1698 	mov	a,r2
      0027D6 24 00            [12] 1699 	add	a,#_g
      0027D8 F6               [12] 1700 	mov	@r0,a
      0027D9 EB               [12] 1701 	mov	a,r3
      0027DA 34 41            [12] 1702 	addc	a,#(_g >> 8)
      0027DC 08               [12] 1703 	inc	r0
      0027DD F6               [12] 1704 	mov	@r0,a
      0027DE 7C 00            [12] 1705 	mov	r4,#0x00
      0027E0 7D 00            [12] 1706 	mov	r5,#0x00
      0027E2                       1707 00110$:
                                   1708 ;	walk.c:153: g[i][j] = 0x55;
      0027E2 A8 10            [24] 1709 	mov	r0,_bp
      0027E4 08               [12] 1710 	inc	r0
      0027E5 EC               [12] 1711 	mov	a,r4
      0027E6 26               [12] 1712 	add	a,@r0
      0027E7 F5 82            [12] 1713 	mov	dpl,a
      0027E9 ED               [12] 1714 	mov	a,r5
      0027EA 08               [12] 1715 	inc	r0
      0027EB 36               [12] 1716 	addc	a,@r0
      0027EC F5 83            [12] 1717 	mov	dph,a
      0027EE 74 55            [12] 1718 	mov	a,#0x55
      0027F0 F0               [24] 1719 	movx	@dptr,a
                                   1720 ;	walk.c:152: for (j = 0; j < COLS; j++)
      0027F1 0C               [12] 1721 	inc	r4
      0027F2 BC 00 01         [24] 1722 	cjne	r4,#0x00,00169$
      0027F5 0D               [12] 1723 	inc	r5
      0027F6                       1724 00169$:
      0027F6 C3               [12] 1725 	clr	c
      0027F7 EC               [12] 1726 	mov	a,r4
      0027F8 94 C0            [12] 1727 	subb	a,#0xc0
      0027FA ED               [12] 1728 	mov	a,r5
      0027FB 64 80            [12] 1729 	xrl	a,#0x80
      0027FD 94 80            [12] 1730 	subb	a,#0x80
      0027FF 40 E1            [24] 1731 	jc	00110$
                                   1732 ;	walk.c:151: for (i = 0; i < ROWS; i++)
      002801 74 C0            [12] 1733 	mov	a,#0xc0
      002803 2A               [12] 1734 	add	a,r2
      002804 FA               [12] 1735 	mov	r2,a
      002805 E4               [12] 1736 	clr	a
      002806 3B               [12] 1737 	addc	a,r3
      002807 FB               [12] 1738 	mov	r3,a
      002808 E5 10            [12] 1739 	mov	a,_bp
      00280A 24 07            [12] 1740 	add	a,#0x07
      00280C F8               [12] 1741 	mov	r0,a
      00280D 06               [12] 1742 	inc	@r0
      00280E B6 00 02         [24] 1743 	cjne	@r0,#0x00,00171$
      002811 08               [12] 1744 	inc	r0
      002812 06               [12] 1745 	inc	@r0
      002813                       1746 00171$:
      002813 E5 10            [12] 1747 	mov	a,_bp
      002815 24 07            [12] 1748 	add	a,#0x07
      002817 F8               [12] 1749 	mov	r0,a
      002818 C3               [12] 1750 	clr	c
      002819 E6               [12] 1751 	mov	a,@r0
      00281A 94 30            [12] 1752 	subb	a,#0x30
      00281C 08               [12] 1753 	inc	r0
      00281D E6               [12] 1754 	mov	a,@r0
      00281E 64 80            [12] 1755 	xrl	a,#0x80
      002820 94 80            [12] 1756 	subb	a,#0x80
      002822 40 AE            [24] 1757 	jc	00121$
                                   1758 ;	walk.c:155: puts("\033[2J");
      002824 90 40 37         [24] 1759 	mov	dptr,#___str_3
      002827 75 F0 80         [24] 1760 	mov	b,#0x80
      00282A C0 07            [24] 1761 	push	ar7
      00282C C0 06            [24] 1762 	push	ar6
      00282E 12 2C 3D         [24] 1763 	lcall	_puts
                                   1764 ;	walk.c:156: initial.r = rand() % ROWS;
      002831 E5 10            [12] 1765 	mov	a,_bp
      002833 24 03            [12] 1766 	add	a,#0x03
      002835 F9               [12] 1767 	mov	r1,a
      002836 C0 01            [24] 1768 	push	ar1
      002838 12 2A 14         [24] 1769 	lcall	_rand
      00283B AC 82            [24] 1770 	mov	r4,dpl
      00283D AD 83            [24] 1771 	mov	r5,dph
      00283F 74 30            [12] 1772 	mov	a,#0x30
      002841 C0 E0            [24] 1773 	push	acc
      002843 E4               [12] 1774 	clr	a
      002844 C0 E0            [24] 1775 	push	acc
      002846 8C 82            [24] 1776 	mov	dpl,r4
      002848 8D 83            [24] 1777 	mov	dph,r5
      00284A 12 2D 18         [24] 1778 	lcall	__modsint
      00284D AC 82            [24] 1779 	mov	r4,dpl
      00284F AD 83            [24] 1780 	mov	r5,dph
      002851 15 81            [12] 1781 	dec	sp
      002853 15 81            [12] 1782 	dec	sp
      002855 D0 01            [24] 1783 	pop	ar1
      002857 D0 06            [24] 1784 	pop	ar6
      002859 D0 07            [24] 1785 	pop	ar7
      00285B A7 04            [24] 1786 	mov	@r1,ar4
      00285D 09               [12] 1787 	inc	r1
      00285E A7 05            [24] 1788 	mov	@r1,ar5
      002860 19               [12] 1789 	dec	r1
                                   1790 ;	walk.c:157: initial.c = rand() % COLS;
      002861 74 02            [12] 1791 	mov	a,#0x02
      002863 2F               [12] 1792 	add	a,r7
      002864 F9               [12] 1793 	mov	r1,a
      002865 C0 07            [24] 1794 	push	ar7
      002867 C0 06            [24] 1795 	push	ar6
      002869 C0 01            [24] 1796 	push	ar1
      00286B 12 2A 14         [24] 1797 	lcall	_rand
      00286E AC 82            [24] 1798 	mov	r4,dpl
      002870 AD 83            [24] 1799 	mov	r5,dph
      002872 74 C0            [12] 1800 	mov	a,#0xc0
      002874 C0 E0            [24] 1801 	push	acc
      002876 E4               [12] 1802 	clr	a
      002877 C0 E0            [24] 1803 	push	acc
      002879 8C 82            [24] 1804 	mov	dpl,r4
      00287B 8D 83            [24] 1805 	mov	dph,r5
      00287D 12 2D 18         [24] 1806 	lcall	__modsint
      002880 AC 82            [24] 1807 	mov	r4,dpl
      002882 AD 83            [24] 1808 	mov	r5,dph
      002884 15 81            [12] 1809 	dec	sp
      002886 15 81            [12] 1810 	dec	sp
      002888 D0 01            [24] 1811 	pop	ar1
      00288A D0 06            [24] 1812 	pop	ar6
      00288C A7 04            [24] 1813 	mov	@r1,ar4
      00288E 09               [12] 1814 	inc	r1
      00288F A7 05            [24] 1815 	mov	@r1,ar5
      002891 19               [12] 1816 	dec	r1
                                   1817 ;	walk.c:158: walk(&initial);
      002892 8E 03            [24] 1818 	mov	ar3,r6
      002894 7C 00            [12] 1819 	mov	r4,#0x00
      002896 7D 40            [12] 1820 	mov	r5,#0x40
      002898 8B 82            [24] 1821 	mov	dpl,r3
      00289A 8C 83            [24] 1822 	mov	dph,r4
      00289C 8D F0            [24] 1823 	mov	b,r5
      00289E C0 06            [24] 1824 	push	ar6
      0028A0 12 22 77         [24] 1825 	lcall	_walk
      0028A3 D0 06            [24] 1826 	pop	ar6
      0028A5 D0 07            [24] 1827 	pop	ar7
                                   1828 ;	walk.c:160: for (i = 0; i < ROWS; i++)
      0028A7 E5 10            [12] 1829 	mov	a,_bp
      0028A9 24 07            [12] 1830 	add	a,#0x07
      0028AB F8               [12] 1831 	mov	r0,a
      0028AC E4               [12] 1832 	clr	a
      0028AD F6               [12] 1833 	mov	@r0,a
      0028AE 08               [12] 1834 	inc	r0
      0028AF F6               [12] 1835 	mov	@r0,a
      0028B0 7A 00            [12] 1836 	mov	r2,#0x00
      0028B2 7B 00            [12] 1837 	mov	r3,#0x00
                                   1838 ;	walk.c:161: for (j = 0; j < COLS; j++)
      0028B4                       1839 00126$:
      0028B4 A8 10            [24] 1840 	mov	r0,_bp
      0028B6 08               [12] 1841 	inc	r0
      0028B7 EA               [12] 1842 	mov	a,r2
      0028B8 24 00            [12] 1843 	add	a,#_g
      0028BA F6               [12] 1844 	mov	@r0,a
      0028BB EB               [12] 1845 	mov	a,r3
      0028BC 34 41            [12] 1846 	addc	a,#(_g >> 8)
      0028BE 08               [12] 1847 	inc	r0
      0028BF F6               [12] 1848 	mov	@r0,a
      0028C0 7C 00            [12] 1849 	mov	r4,#0x00
      0028C2 7D 00            [12] 1850 	mov	r5,#0x00
      0028C4                       1851 00114$:
                                   1852 ;	walk.c:162: if (g[i][j] != 0xaa) {
      0028C4 C0 06            [24] 1853 	push	ar6
      0028C6 A8 10            [24] 1854 	mov	r0,_bp
      0028C8 08               [12] 1855 	inc	r0
      0028C9 EC               [12] 1856 	mov	a,r4
      0028CA 26               [12] 1857 	add	a,@r0
      0028CB F5 82            [12] 1858 	mov	dpl,a
      0028CD ED               [12] 1859 	mov	a,r5
      0028CE 08               [12] 1860 	inc	r0
      0028CF 36               [12] 1861 	addc	a,@r0
      0028D0 F5 83            [12] 1862 	mov	dph,a
      0028D2 E0               [24] 1863 	movx	a,@dptr
      0028D3 FE               [12] 1864 	mov	r6,a
      0028D4 BE AA 04         [24] 1865 	cjne	r6,#0xaa,00173$
      0028D7 D0 06            [24] 1866 	pop	ar6
      0028D9 80 26            [24] 1867 	sjmp	00115$
      0028DB                       1868 00173$:
      0028DB D0 06            [24] 1869 	pop	ar6
                                   1870 ;	walk.c:163: (void)puts("Memory error");
      0028DD 90 40 20         [24] 1871 	mov	dptr,#___str_1
      0028E0 75 F0 80         [24] 1872 	mov	b,#0x80
      0028E3 C0 07            [24] 1873 	push	ar7
      0028E5 C0 06            [24] 1874 	push	ar6
      0028E7 C0 05            [24] 1875 	push	ar5
      0028E9 C0 04            [24] 1876 	push	ar4
      0028EB C0 03            [24] 1877 	push	ar3
      0028ED C0 02            [24] 1878 	push	ar2
      0028EF 12 2C 3D         [24] 1879 	lcall	_puts
      0028F2 D0 02            [24] 1880 	pop	ar2
      0028F4 D0 03            [24] 1881 	pop	ar3
      0028F6 D0 04            [24] 1882 	pop	ar4
      0028F8 D0 05            [24] 1883 	pop	ar5
      0028FA D0 06            [24] 1884 	pop	ar6
      0028FC D0 07            [24] 1885 	pop	ar7
                                   1886 ;	walk.c:164: reset();
      0028FE 12 20 88         [24] 1887 	lcall	_reset
      002901                       1888 00115$:
                                   1889 ;	walk.c:161: for (j = 0; j < COLS; j++)
      002901 0C               [12] 1890 	inc	r4
      002902 BC 00 01         [24] 1891 	cjne	r4,#0x00,00174$
      002905 0D               [12] 1892 	inc	r5
      002906                       1893 00174$:
      002906 C3               [12] 1894 	clr	c
      002907 EC               [12] 1895 	mov	a,r4
      002908 94 C0            [12] 1896 	subb	a,#0xc0
      00290A ED               [12] 1897 	mov	a,r5
      00290B 64 80            [12] 1898 	xrl	a,#0x80
      00290D 94 80            [12] 1899 	subb	a,#0x80
      00290F 40 B3            [24] 1900 	jc	00114$
                                   1901 ;	walk.c:160: for (i = 0; i < ROWS; i++)
      002911 74 C0            [12] 1902 	mov	a,#0xc0
      002913 2A               [12] 1903 	add	a,r2
      002914 FA               [12] 1904 	mov	r2,a
      002915 E4               [12] 1905 	clr	a
      002916 3B               [12] 1906 	addc	a,r3
      002917 FB               [12] 1907 	mov	r3,a
      002918 E5 10            [12] 1908 	mov	a,_bp
      00291A 24 07            [12] 1909 	add	a,#0x07
      00291C F8               [12] 1910 	mov	r0,a
      00291D 06               [12] 1911 	inc	@r0
      00291E B6 00 02         [24] 1912 	cjne	@r0,#0x00,00176$
      002921 08               [12] 1913 	inc	r0
      002922 06               [12] 1914 	inc	@r0
      002923                       1915 00176$:
      002923 E5 10            [12] 1916 	mov	a,_bp
      002925 24 07            [12] 1917 	add	a,#0x07
      002927 F8               [12] 1918 	mov	r0,a
      002928 C3               [12] 1919 	clr	c
      002929 E6               [12] 1920 	mov	a,@r0
      00292A 94 30            [12] 1921 	subb	a,#0x30
      00292C 08               [12] 1922 	inc	r0
      00292D E6               [12] 1923 	mov	a,@r0
      00292E 64 80            [12] 1924 	xrl	a,#0x80
      002930 94 80            [12] 1925 	subb	a,#0x80
      002932 50 03            [24] 1926 	jnc	00177$
      002934 02 28 B4         [24] 1927 	ljmp	00126$
      002937                       1928 00177$:
      002937 02 27 BD         [24] 1929 	ljmp	00107$
      00293A                       1930 00109$:
                                   1931 ;	walk.c:168: EA = 0;
                                   1932 ;	assignBit
      00293A C2 AF            [12] 1933 	clr	_EA
                                   1934 ;	walk.c:172: __endasm;
      00293C 02 00 00         [24] 1935 	ljmp	0
                                   1936 ;	walk.c:174: return 0;
      00293F 90 00 00         [24] 1937 	mov	dptr,#0x0000
                                   1938 ;	walk.c:175: }
      002942 85 10 81         [24] 1939 	mov	sp,_bp
      002945 D0 10            [24] 1940 	pop	_bp
      002947 22               [24] 1941 	ret
                                   1942 ;------------------------------------------------------------
                                   1943 ;Allocation info for local variables in function 'stinit'
                                   1944 ;------------------------------------------------------------
                                   1945 ;	walk.c:177: static void stinit(void) {
                                   1946 ;	-----------------------------------------
                                   1947 ;	 function stinit
                                   1948 ;	-----------------------------------------
      002948                       1949 _stinit:
                                   1950 ;	walk.c:178: sp = -1;
      002948 90 F5 00         [24] 1951 	mov	dptr,#_sp
      00294B 74 FF            [12] 1952 	mov	a,#0xff
      00294D F0               [24] 1953 	movx	@dptr,a
      00294E A3               [24] 1954 	inc	dptr
      00294F F0               [24] 1955 	movx	@dptr,a
                                   1956 ;	walk.c:179: return;
                                   1957 ;	walk.c:180: }
      002950 22               [24] 1958 	ret
                                   1959 ;------------------------------------------------------------
                                   1960 ;Allocation info for local variables in function 'stpush'
                                   1961 ;------------------------------------------------------------
                                   1962 ;t                         Allocated to registers r5 r6 r7 
                                   1963 ;------------------------------------------------------------
                                   1964 ;	walk.c:182: static int stpush(struct node *t) {
                                   1965 ;	-----------------------------------------
                                   1966 ;	 function stpush
                                   1967 ;	-----------------------------------------
      002951                       1968 _stpush:
      002951 AD 82            [24] 1969 	mov	r5,dpl
      002953 AE 83            [24] 1970 	mov	r6,dph
      002955 AF F0            [24] 1971 	mov	r7,b
                                   1972 ;	walk.c:183: if (sp == (SMAX - 1)) return 0;
      002957 90 F5 00         [24] 1973 	mov	dptr,#_sp
      00295A E0               [24] 1974 	movx	a,@dptr
      00295B FB               [12] 1975 	mov	r3,a
      00295C A3               [24] 1976 	inc	dptr
      00295D E0               [24] 1977 	movx	a,@dptr
      00295E FC               [12] 1978 	mov	r4,a
      00295F BB FF 07         [24] 1979 	cjne	r3,#0xff,00102$
      002962 BC 23 04         [24] 1980 	cjne	r4,#0x23,00102$
      002965 90 00 00         [24] 1981 	mov	dptr,#0x0000
      002968 22               [24] 1982 	ret
      002969                       1983 00102$:
                                   1984 ;	walk.c:184: sp++;
      002969 90 F5 00         [24] 1985 	mov	dptr,#_sp
      00296C 74 01            [12] 1986 	mov	a,#0x01
      00296E 2B               [12] 1987 	add	a,r3
      00296F F0               [24] 1988 	movx	@dptr,a
      002970 E4               [12] 1989 	clr	a
      002971 3C               [12] 1990 	addc	a,r4
      002972 A3               [24] 1991 	inc	dptr
      002973 F0               [24] 1992 	movx	@dptr,a
                                   1993 ;	walk.c:185: stack[sp] = *t;
      002974 90 F5 00         [24] 1994 	mov	dptr,#_sp
      002977 E0               [24] 1995 	movx	a,@dptr
      002978 FB               [12] 1996 	mov	r3,a
      002979 A3               [24] 1997 	inc	dptr
      00297A E0               [24] 1998 	movx	a,@dptr
      00297B FC               [12] 1999 	mov	r4,a
      00297C EB               [12] 2000 	mov	a,r3
      00297D 2B               [12] 2001 	add	a,r3
      00297E FB               [12] 2002 	mov	r3,a
      00297F EC               [12] 2003 	mov	a,r4
      002980 33               [12] 2004 	rlc	a
      002981 FC               [12] 2005 	mov	r4,a
      002982 EB               [12] 2006 	mov	a,r3
      002983 2B               [12] 2007 	add	a,r3
      002984 FB               [12] 2008 	mov	r3,a
      002985 EC               [12] 2009 	mov	a,r4
      002986 33               [12] 2010 	rlc	a
      002987 FC               [12] 2011 	mov	r4,a
      002988 EB               [12] 2012 	mov	a,r3
      002989 24 00            [12] 2013 	add	a,#_stack
      00298B FB               [12] 2014 	mov	r3,a
      00298C EC               [12] 2015 	mov	a,r4
      00298D 34 65            [12] 2016 	addc	a,#(_stack >> 8)
      00298F FC               [12] 2017 	mov	r4,a
      002990 7A 00            [12] 2018 	mov	r2,#0x00
      002992 74 04            [12] 2019 	mov	a,#0x04
      002994 C0 E0            [24] 2020 	push	acc
      002996 E4               [12] 2021 	clr	a
      002997 C0 E0            [24] 2022 	push	acc
      002999 C0 05            [24] 2023 	push	ar5
      00299B C0 06            [24] 2024 	push	ar6
      00299D C0 07            [24] 2025 	push	ar7
      00299F 8B 82            [24] 2026 	mov	dpl,r3
      0029A1 8C 83            [24] 2027 	mov	dph,r4
      0029A3 8A F0            [24] 2028 	mov	b,r2
      0029A5 12 2B AA         [24] 2029 	lcall	___memcpy
      0029A8 E5 81            [12] 2030 	mov	a,sp
      0029AA 24 FB            [12] 2031 	add	a,#0xfb
      0029AC F5 81            [12] 2032 	mov	sp,a
                                   2033 ;	walk.c:186: return 1;
      0029AE 90 00 01         [24] 2034 	mov	dptr,#0x0001
                                   2035 ;	walk.c:187: }
      0029B1 22               [24] 2036 	ret
                                   2037 ;------------------------------------------------------------
                                   2038 ;Allocation info for local variables in function 'stpop'
                                   2039 ;------------------------------------------------------------
                                   2040 ;t                         Allocated to registers r5 r6 r7 
                                   2041 ;------------------------------------------------------------
                                   2042 ;	walk.c:189: static int stpop(struct node *t) {
                                   2043 ;	-----------------------------------------
                                   2044 ;	 function stpop
                                   2045 ;	-----------------------------------------
      0029B2                       2046 _stpop:
      0029B2 AD 82            [24] 2047 	mov	r5,dpl
      0029B4 AE 83            [24] 2048 	mov	r6,dph
      0029B6 AF F0            [24] 2049 	mov	r7,b
                                   2050 ;	walk.c:190: if (sp == -1) return 0;
      0029B8 90 F5 00         [24] 2051 	mov	dptr,#_sp
      0029BB E0               [24] 2052 	movx	a,@dptr
      0029BC FB               [12] 2053 	mov	r3,a
      0029BD A3               [24] 2054 	inc	dptr
      0029BE E0               [24] 2055 	movx	a,@dptr
      0029BF FC               [12] 2056 	mov	r4,a
      0029C0 BB FF 07         [24] 2057 	cjne	r3,#0xff,00102$
      0029C3 BC FF 04         [24] 2058 	cjne	r4,#0xff,00102$
      0029C6 90 00 00         [24] 2059 	mov	dptr,#0x0000
      0029C9 22               [24] 2060 	ret
      0029CA                       2061 00102$:
                                   2062 ;	walk.c:191: *t = stack[sp];
      0029CA EB               [12] 2063 	mov	a,r3
      0029CB 2B               [12] 2064 	add	a,r3
      0029CC FB               [12] 2065 	mov	r3,a
      0029CD EC               [12] 2066 	mov	a,r4
      0029CE 33               [12] 2067 	rlc	a
      0029CF FC               [12] 2068 	mov	r4,a
      0029D0 EB               [12] 2069 	mov	a,r3
      0029D1 2B               [12] 2070 	add	a,r3
      0029D2 FB               [12] 2071 	mov	r3,a
      0029D3 EC               [12] 2072 	mov	a,r4
      0029D4 33               [12] 2073 	rlc	a
      0029D5 FC               [12] 2074 	mov	r4,a
      0029D6 EB               [12] 2075 	mov	a,r3
      0029D7 24 00            [12] 2076 	add	a,#_stack
      0029D9 FB               [12] 2077 	mov	r3,a
      0029DA EC               [12] 2078 	mov	a,r4
      0029DB 34 65            [12] 2079 	addc	a,#(_stack >> 8)
      0029DD FC               [12] 2080 	mov	r4,a
      0029DE 7A 00            [12] 2081 	mov	r2,#0x00
      0029E0 74 04            [12] 2082 	mov	a,#0x04
      0029E2 C0 E0            [24] 2083 	push	acc
      0029E4 E4               [12] 2084 	clr	a
      0029E5 C0 E0            [24] 2085 	push	acc
      0029E7 C0 03            [24] 2086 	push	ar3
      0029E9 C0 04            [24] 2087 	push	ar4
      0029EB C0 02            [24] 2088 	push	ar2
      0029ED 8D 82            [24] 2089 	mov	dpl,r5
      0029EF 8E 83            [24] 2090 	mov	dph,r6
      0029F1 8F F0            [24] 2091 	mov	b,r7
      0029F3 12 2B AA         [24] 2092 	lcall	___memcpy
      0029F6 E5 81            [12] 2093 	mov	a,sp
      0029F8 24 FB            [12] 2094 	add	a,#0xfb
      0029FA F5 81            [12] 2095 	mov	sp,a
                                   2096 ;	walk.c:192: sp--;
      0029FC 90 F5 00         [24] 2097 	mov	dptr,#_sp
      0029FF E0               [24] 2098 	movx	a,@dptr
      002A00 24 FF            [12] 2099 	add	a,#0xff
      002A02 FE               [12] 2100 	mov	r6,a
      002A03 A3               [24] 2101 	inc	dptr
      002A04 E0               [24] 2102 	movx	a,@dptr
      002A05 34 FF            [12] 2103 	addc	a,#0xff
      002A07 FF               [12] 2104 	mov	r7,a
      002A08 90 F5 00         [24] 2105 	mov	dptr,#_sp
      002A0B EE               [12] 2106 	mov	a,r6
      002A0C F0               [24] 2107 	movx	@dptr,a
      002A0D EF               [12] 2108 	mov	a,r7
      002A0E A3               [24] 2109 	inc	dptr
      002A0F F0               [24] 2110 	movx	@dptr,a
                                   2111 ;	walk.c:193: return 1;
      002A10 90 00 01         [24] 2112 	mov	dptr,#0x0001
                                   2113 ;	walk.c:194: }
      002A13 22               [24] 2114 	ret
                                   2115 	.area CSEG    (CODE)
                                   2116 	.area CONST   (CODE)
      003FF6                       2117 _neigh:
      003FF6 FF FF                 2118 	.byte #0xff, #0xff	; -1
      003FF8 FF FF                 2119 	.byte #0xff, #0xff	; -1
      003FFA FF FF                 2120 	.byte #0xff, #0xff	; -1
      003FFC 00 00                 2121 	.byte #0x00, #0x00	;  0
      003FFE FF FF                 2122 	.byte #0xff, #0xff	; -1
      004000 01 00                 2123 	.byte #0x01, #0x00	;  1
      004002 00 00                 2124 	.byte #0x00, #0x00	;  0
      004004 FF FF                 2125 	.byte #0xff, #0xff	; -1
      004006 00 00                 2126 	.byte #0x00, #0x00	;  0
      004008 01 00                 2127 	.byte #0x01, #0x00	;  1
      00400A 01 00                 2128 	.byte #0x01, #0x00	;  1
      00400C FF FF                 2129 	.byte #0xff, #0xff	; -1
      00400E 01 00                 2130 	.byte #0x01, #0x00	;  1
      004010 00 00                 2131 	.byte #0x00, #0x00	;  0
      004012 01 00                 2132 	.byte #0x01, #0x00	;  1
      004014 01 00                 2133 	.byte #0x01, #0x00	;  1
                                   2134 	.area CONST   (CODE)
      004016                       2135 ___str_0:
      004016 1B                    2136 	.db 0x1b
      004017 5B 25 64 3B 25 64 48  2137 	.ascii "[%d;%dHo"
             6F
      00401F 00                    2138 	.db 0x00
                                   2139 	.area CSEG    (CODE)
                                   2140 	.area CONST   (CODE)
      004020                       2141 ___str_1:
      004020 4D 65 6D 6F 72 79 20  2142 	.ascii "Memory error"
             65 72 72 6F 72
      00402C 00                    2143 	.db 0x00
                                   2144 	.area CSEG    (CODE)
                                   2145 	.area CONST   (CODE)
      00402D                       2146 ___str_2:
      00402D 1B                    2147 	.db 0x1b
      00402E 5B 25 64 3B 25 64 48  2148 	.ascii "[%d;%dH."
             2E
      004036 00                    2149 	.db 0x00
                                   2150 	.area CSEG    (CODE)
                                   2151 	.area CONST   (CODE)
      004037                       2152 ___str_3:
      004037 1B                    2153 	.db 0x1b
      004038 5B 32 4A              2154 	.ascii "[2J"
      00403B 00                    2155 	.db 0x00
                                   2156 	.area CSEG    (CODE)
                                   2157 	.area XINIT   (CODE)
                                   2158 	.area CABS    (ABS,CODE)
