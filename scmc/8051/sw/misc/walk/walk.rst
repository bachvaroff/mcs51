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
      004000                        319 _g:
      004000                        320 	.ds 9216
      006400                        321 _stack:
      006400                        322 	.ds 36864
      00F400                        323 _sp:
      00F400                        324 	.ds 2
      00F402                        325 _main_R_65536_64:
      00F402                        326 	.ds 2
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
                                    368 ;initial                   Allocated to stack - _bp +5
                                    369 ;i                         Allocated to stack - _bp +3
                                    370 ;j                         Allocated to registers r4 r5 
                                    371 ;sloc0                     Allocated to stack - _bp +1
                                    372 ;R                         Allocated with name '_main_R_65536_64'
                                    373 ;------------------------------------------------------------
                                    374 ;	walk.c:133: static volatile __xdata int *R = (__xdata int *)0xfffe;
      002062 90 F4 02         [24]  375 	mov	dptr,#_main_R_65536_64
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
      002006 02 27 06         [24]  389 	ljmp	_main
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
                                    478 ;	walk.c:73: static int update(struct node *t, struct node *cur, int j) {
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
                                    499 ;	walk.c:74: t->r = cur->r + neigh[j].r;
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
      0020B4 12 2C 7A         [24]  514 	lcall	__gptrget
      0020B7 F6               [12]  515 	mov	@r0,a
      0020B8 A3               [24]  516 	inc	dptr
      0020B9 12 2C 7A         [24]  517 	lcall	__gptrget
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
      0020DE 24 74            [12]  546 	add	a,#_neigh
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
      002107 12 2A 6F         [24]  577 	lcall	__gptrput
      00210A A3               [24]  578 	inc	dptr
      00210B EE               [12]  579 	mov	a,r6
      00210C 12 2A 6F         [24]  580 	lcall	__gptrput
                                    581 ;	walk.c:75: t->c = cur->c + neigh[j].c;
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
      002131 12 2C 7A         [24]  608 	lcall	__gptrget
      002134 FA               [12]  609 	mov	r2,a
      002135 A3               [24]  610 	inc	dptr
      002136 12 2C 7A         [24]  611 	lcall	__gptrget
      002139 FB               [12]  612 	mov	r3,a
      00213A E5 10            [12]  613 	mov	a,_bp
      00213C 24 06            [12]  614 	add	a,#0x06
      00213E F8               [12]  615 	mov	r0,a
      00213F E6               [12]  616 	mov	a,@r0
      002140 24 74            [12]  617 	add	a,#_neigh
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
      002169 12 2A 6F         [24]  649 	lcall	__gptrput
      00216C A3               [24]  650 	inc	dptr
      00216D EB               [12]  651 	mov	a,r3
      00216E 12 2A 6F         [24]  652 	lcall	__gptrput
                                    653 ;	walk.c:77: if (t->r < 0) t->r += ROWS;
      002171 A8 10            [24]  654 	mov	r0,_bp
      002173 08               [12]  655 	inc	r0
      002174 86 82            [24]  656 	mov	dpl,@r0
      002176 08               [12]  657 	inc	r0
      002177 86 83            [24]  658 	mov	dph,@r0
      002179 08               [12]  659 	inc	r0
      00217A 86 F0            [24]  660 	mov	b,@r0
      00217C 12 2C 7A         [24]  661 	lcall	__gptrget
      00217F FD               [12]  662 	mov	r5,a
      002180 A3               [24]  663 	inc	dptr
      002181 12 2C 7A         [24]  664 	lcall	__gptrget
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
      00219C 12 2A 6F         [24]  682 	lcall	__gptrput
      00219F A3               [24]  683 	inc	dptr
      0021A0 EE               [12]  684 	mov	a,r6
      0021A1 12 2A 6F         [24]  685 	lcall	__gptrput
      0021A4 80 27            [24]  686 	sjmp	00105$
      0021A6                        687 00104$:
                                    688 ;	walk.c:78: else if (t->r >= ROWS) t->r -= ROWS;
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
      0021C5 12 2A 6F         [24]  710 	lcall	__gptrput
      0021C8 A3               [24]  711 	inc	dptr
      0021C9 EC               [12]  712 	mov	a,r4
      0021CA 12 2A 6F         [24]  713 	lcall	__gptrput
      0021CD                        714 00105$:
                                    715 ;	walk.c:79: if (t->c < 0) t->c += COLS;
      0021CD E5 10            [12]  716 	mov	a,_bp
      0021CF 24 08            [12]  717 	add	a,#0x08
      0021D1 F8               [12]  718 	mov	r0,a
      0021D2 86 82            [24]  719 	mov	dpl,@r0
      0021D4 08               [12]  720 	inc	r0
      0021D5 86 83            [24]  721 	mov	dph,@r0
      0021D7 08               [12]  722 	inc	r0
      0021D8 86 F0            [24]  723 	mov	b,@r0
      0021DA 12 2C 7A         [24]  724 	lcall	__gptrget
      0021DD A3               [24]  725 	inc	dptr
      0021DE 12 2C 7A         [24]  726 	lcall	__gptrget
      0021E1 30 E7 35         [24]  727 	jnb	acc.7,00109$
      0021E4 E5 10            [12]  728 	mov	a,_bp
      0021E6 24 08            [12]  729 	add	a,#0x08
      0021E8 F8               [12]  730 	mov	r0,a
      0021E9 86 82            [24]  731 	mov	dpl,@r0
      0021EB 08               [12]  732 	inc	r0
      0021EC 86 83            [24]  733 	mov	dph,@r0
      0021EE 08               [12]  734 	inc	r0
      0021EF 86 F0            [24]  735 	mov	b,@r0
      0021F1 12 2C 7A         [24]  736 	lcall	__gptrget
      0021F4 FE               [12]  737 	mov	r6,a
      0021F5 A3               [24]  738 	inc	dptr
      0021F6 12 2C 7A         [24]  739 	lcall	__gptrget
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
      00220F 12 2A 6F         [24]  756 	lcall	__gptrput
      002212 A3               [24]  757 	inc	dptr
      002213 EF               [12]  758 	mov	a,r7
      002214 12 2A 6F         [24]  759 	lcall	__gptrput
      002217 80 55            [24]  760 	sjmp	00110$
      002219                        761 00109$:
                                    762 ;	walk.c:80: else if (t->c >= COLS) t->c -= COLS;
      002219 E5 10            [12]  763 	mov	a,_bp
      00221B 24 08            [12]  764 	add	a,#0x08
      00221D F8               [12]  765 	mov	r0,a
      00221E 86 82            [24]  766 	mov	dpl,@r0
      002220 08               [12]  767 	inc	r0
      002221 86 83            [24]  768 	mov	dph,@r0
      002223 08               [12]  769 	inc	r0
      002224 86 F0            [24]  770 	mov	b,@r0
      002226 12 2C 7A         [24]  771 	lcall	__gptrget
      002229 FE               [12]  772 	mov	r6,a
      00222A A3               [24]  773 	inc	dptr
      00222B 12 2C 7A         [24]  774 	lcall	__gptrget
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
      002247 12 2C 7A         [24]  791 	lcall	__gptrget
      00224A FE               [12]  792 	mov	r6,a
      00224B A3               [24]  793 	inc	dptr
      00224C 12 2C 7A         [24]  794 	lcall	__gptrget
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
      002266 12 2A 6F         [24]  811 	lcall	__gptrput
      002269 A3               [24]  812 	inc	dptr
      00226A EF               [12]  813 	mov	a,r7
      00226B 12 2A 6F         [24]  814 	lcall	__gptrput
      00226E                        815 00110$:
                                    816 ;	walk.c:82: if (g[t->r][t->c] == 0xaa) return 0;
      00226E A8 10            [24]  817 	mov	r0,_bp
      002270 08               [12]  818 	inc	r0
      002271 86 82            [24]  819 	mov	dpl,@r0
      002273 08               [12]  820 	inc	r0
      002274 86 83            [24]  821 	mov	dph,@r0
      002276 08               [12]  822 	inc	r0
      002277 86 F0            [24]  823 	mov	b,@r0
      002279 12 2C 7A         [24]  824 	lcall	__gptrget
      00227C FE               [12]  825 	mov	r6,a
      00227D A3               [24]  826 	inc	dptr
      00227E 12 2C 7A         [24]  827 	lcall	__gptrget
      002281 FF               [12]  828 	mov	r7,a
      002282 C0 06            [24]  829 	push	ar6
      002284 C0 07            [24]  830 	push	ar7
      002286 90 00 C0         [24]  831 	mov	dptr,#0x00c0
      002289 12 2A 8A         [24]  832 	lcall	__mulint
      00228C AE 82            [24]  833 	mov	r6,dpl
      00228E AF 83            [24]  834 	mov	r7,dph
      002290 15 81            [12]  835 	dec	sp
      002292 15 81            [12]  836 	dec	sp
      002294 EE               [12]  837 	mov	a,r6
      002295 24 00            [12]  838 	add	a,#_g
      002297 FE               [12]  839 	mov	r6,a
      002298 EF               [12]  840 	mov	a,r7
      002299 34 40            [12]  841 	addc	a,#(_g >> 8)
      00229B FF               [12]  842 	mov	r7,a
      00229C E5 10            [12]  843 	mov	a,_bp
      00229E 24 08            [12]  844 	add	a,#0x08
      0022A0 F8               [12]  845 	mov	r0,a
      0022A1 86 82            [24]  846 	mov	dpl,@r0
      0022A3 08               [12]  847 	inc	r0
      0022A4 86 83            [24]  848 	mov	dph,@r0
      0022A6 08               [12]  849 	inc	r0
      0022A7 86 F0            [24]  850 	mov	b,@r0
      0022A9 12 2C 7A         [24]  851 	lcall	__gptrget
      0022AC FC               [12]  852 	mov	r4,a
      0022AD A3               [24]  853 	inc	dptr
      0022AE 12 2C 7A         [24]  854 	lcall	__gptrget
      0022B1 FD               [12]  855 	mov	r5,a
      0022B2 EC               [12]  856 	mov	a,r4
      0022B3 2E               [12]  857 	add	a,r6
      0022B4 F5 82            [12]  858 	mov	dpl,a
      0022B6 ED               [12]  859 	mov	a,r5
      0022B7 3F               [12]  860 	addc	a,r7
      0022B8 F5 83            [12]  861 	mov	dph,a
      0022BA E0               [24]  862 	movx	a,@dptr
      0022BB FF               [12]  863 	mov	r7,a
      0022BC BF AA 05         [24]  864 	cjne	r7,#0xaa,00114$
      0022BF 90 00 00         [24]  865 	mov	dptr,#0x0000
      0022C2 80 62            [24]  866 	sjmp	00116$
      0022C4                        867 00114$:
                                    868 ;	walk.c:83: else if (g[t->r][t->c] != 0x55) {
      0022C4 A8 10            [24]  869 	mov	r0,_bp
      0022C6 08               [12]  870 	inc	r0
      0022C7 86 82            [24]  871 	mov	dpl,@r0
      0022C9 08               [12]  872 	inc	r0
      0022CA 86 83            [24]  873 	mov	dph,@r0
      0022CC 08               [12]  874 	inc	r0
      0022CD 86 F0            [24]  875 	mov	b,@r0
      0022CF 12 2C 7A         [24]  876 	lcall	__gptrget
      0022D2 FE               [12]  877 	mov	r6,a
      0022D3 A3               [24]  878 	inc	dptr
      0022D4 12 2C 7A         [24]  879 	lcall	__gptrget
      0022D7 FF               [12]  880 	mov	r7,a
      0022D8 C0 06            [24]  881 	push	ar6
      0022DA C0 07            [24]  882 	push	ar7
      0022DC 90 00 C0         [24]  883 	mov	dptr,#0x00c0
      0022DF 12 2A 8A         [24]  884 	lcall	__mulint
      0022E2 AE 82            [24]  885 	mov	r6,dpl
      0022E4 AF 83            [24]  886 	mov	r7,dph
      0022E6 15 81            [12]  887 	dec	sp
      0022E8 15 81            [12]  888 	dec	sp
      0022EA EE               [12]  889 	mov	a,r6
      0022EB 24 00            [12]  890 	add	a,#_g
      0022ED FE               [12]  891 	mov	r6,a
      0022EE EF               [12]  892 	mov	a,r7
      0022EF 34 40            [12]  893 	addc	a,#(_g >> 8)
      0022F1 FF               [12]  894 	mov	r7,a
      0022F2 E5 10            [12]  895 	mov	a,_bp
      0022F4 24 08            [12]  896 	add	a,#0x08
      0022F6 F8               [12]  897 	mov	r0,a
      0022F7 86 82            [24]  898 	mov	dpl,@r0
      0022F9 08               [12]  899 	inc	r0
      0022FA 86 83            [24]  900 	mov	dph,@r0
      0022FC 08               [12]  901 	inc	r0
      0022FD 86 F0            [24]  902 	mov	b,@r0
      0022FF 12 2C 7A         [24]  903 	lcall	__gptrget
      002302 FC               [12]  904 	mov	r4,a
      002303 A3               [24]  905 	inc	dptr
      002304 12 2C 7A         [24]  906 	lcall	__gptrget
      002307 FD               [12]  907 	mov	r5,a
      002308 EC               [12]  908 	mov	a,r4
      002309 2E               [12]  909 	add	a,r6
      00230A F5 82            [12]  910 	mov	dpl,a
      00230C ED               [12]  911 	mov	a,r5
      00230D 3F               [12]  912 	addc	a,r7
      00230E F5 83            [12]  913 	mov	dph,a
      002310 E0               [24]  914 	movx	a,@dptr
      002311 FF               [12]  915 	mov	r7,a
      002312 BF 55 02         [24]  916 	cjne	r7,#0x55,00148$
      002315 80 0C            [24]  917 	sjmp	00115$
      002317                        918 00148$:
                                    919 ;	walk.c:84: (void)puts("Memory error");
      002317 90 3F 94         [24]  920 	mov	dptr,#___str_0
      00231A 75 F0 80         [24]  921 	mov	b,#0x80
      00231D 12 2B BB         [24]  922 	lcall	_puts
                                    923 ;	walk.c:85: reset();
      002320 12 20 88         [24]  924 	lcall	_reset
      002323                        925 00115$:
                                    926 ;	walk.c:88: return 1;
      002323 90 00 01         [24]  927 	mov	dptr,#0x0001
      002326                        928 00116$:
                                    929 ;	walk.c:89: }
      002326 85 10 81         [24]  930 	mov	sp,_bp
      002329 D0 10            [24]  931 	pop	_bp
      00232B 22               [24]  932 	ret
                                    933 ;------------------------------------------------------------
                                    934 ;Allocation info for local variables in function 'walk'
                                    935 ;------------------------------------------------------------
                                    936 ;nstart                    Allocated to registers 
                                    937 ;cur                       Allocated to stack - _bp +10
                                    938 ;t                         Allocated to stack - _bp +14
                                    939 ;j                         Allocated to stack - _bp +18
                                    940 ;f                         Allocated to stack - _bp +20
                                    941 ;sloc0                     Allocated to stack - _bp +1
                                    942 ;sloc1                     Allocated to stack - _bp +2
                                    943 ;sloc2                     Allocated to stack - _bp +3
                                    944 ;sloc3                     Allocated to stack - _bp +19
                                    945 ;sloc4                     Allocated to stack - _bp +4
                                    946 ;sloc5                     Allocated to stack - _bp +5
                                    947 ;sloc6                     Allocated to stack - _bp +6
                                    948 ;sloc7                     Allocated to stack - _bp +7
                                    949 ;------------------------------------------------------------
                                    950 ;	walk.c:91: static void walk(struct node *nstart) {
                                    951 ;	-----------------------------------------
                                    952 ;	 function walk
                                    953 ;	-----------------------------------------
      00232C                        954 _walk:
      00232C C0 10            [24]  955 	push	_bp
      00232E E5 81            [12]  956 	mov	a,sp
      002330 F5 10            [12]  957 	mov	_bp,a
      002332 24 15            [12]  958 	add	a,#0x15
      002334 F5 81            [12]  959 	mov	sp,a
      002336 AD 82            [24]  960 	mov	r5,dpl
      002338 AE 83            [24]  961 	mov	r6,dph
      00233A AF F0            [24]  962 	mov	r7,b
                                    963 ;	walk.c:95: cur = *nstart;
      00233C E5 10            [12]  964 	mov	a,_bp
      00233E 24 0A            [12]  965 	add	a,#0x0a
      002340 F9               [12]  966 	mov	r1,a
      002341 FA               [12]  967 	mov	r2,a
      002342 7B 00            [12]  968 	mov	r3,#0x00
      002344 7C 40            [12]  969 	mov	r4,#0x40
      002346 C0 01            [24]  970 	push	ar1
      002348 74 04            [12]  971 	mov	a,#0x04
      00234A C0 E0            [24]  972 	push	acc
      00234C E4               [12]  973 	clr	a
      00234D C0 E0            [24]  974 	push	acc
      00234F C0 05            [24]  975 	push	ar5
      002351 C0 06            [24]  976 	push	ar6
      002353 C0 07            [24]  977 	push	ar7
      002355 8A 82            [24]  978 	mov	dpl,r2
      002357 8B 83            [24]  979 	mov	dph,r3
      002359 8C F0            [24]  980 	mov	b,r4
      00235B 12 2B 28         [24]  981 	lcall	___memcpy
      00235E E5 81            [12]  982 	mov	a,sp
      002360 24 FB            [12]  983 	add	a,#0xfb
      002362 F5 81            [12]  984 	mov	sp,a
      002364 D0 01            [24]  985 	pop	ar1
                                    986 ;	walk.c:97: process:
      002366 E5 10            [12]  987 	mov	a,_bp
      002368 24 06            [12]  988 	add	a,#0x06
      00236A F8               [12]  989 	mov	r0,a
      00236B A6 01            [24]  990 	mov	@r0,ar1
      00236D E5 10            [12]  991 	mov	a,_bp
      00236F 24 0E            [12]  992 	add	a,#0x0e
      002371 FE               [12]  993 	mov	r6,a
      002372 E5 10            [12]  994 	mov	a,_bp
      002374 24 03            [12]  995 	add	a,#0x03
      002376 F8               [12]  996 	mov	r0,a
      002377 A6 01            [24]  997 	mov	@r0,ar1
      002379 E5 10            [12]  998 	mov	a,_bp
      00237B 24 05            [12]  999 	add	a,#0x05
      00237D F8               [12] 1000 	mov	r0,a
      00237E A6 01            [24] 1001 	mov	@r0,ar1
      002380 E5 10            [12] 1002 	mov	a,_bp
      002382 24 04            [12] 1003 	add	a,#0x04
      002384 F8               [12] 1004 	mov	r0,a
      002385 A6 06            [24] 1005 	mov	@r0,ar6
      002387 89 02            [24] 1006 	mov	ar2,r1
      002389 A8 10            [24] 1007 	mov	r0,_bp
      00238B 08               [12] 1008 	inc	r0
      00238C A6 06            [24] 1009 	mov	@r0,ar6
      00238E A8 10            [24] 1010 	mov	r0,_bp
      002390 08               [12] 1011 	inc	r0
      002391 08               [12] 1012 	inc	r0
      002392 A6 01            [24] 1013 	mov	@r0,ar1
      002394 74 02            [12] 1014 	mov	a,#0x02
      002396 29               [12] 1015 	add	a,r1
      002397 F8               [12] 1016 	mov	r0,a
      002398                       1017 00101$:
                                   1018 ;	walk.c:98: g[cur.r][cur.c] = 0xaa;
      002398 C0 02            [24] 1019 	push	ar2
      00239A 87 02            [24] 1020 	mov	ar2,@r1
      00239C 09               [12] 1021 	inc	r1
      00239D 87 05            [24] 1022 	mov	ar5,@r1
      00239F 19               [12] 1023 	dec	r1
      0023A0 C0 06            [24] 1024 	push	ar6
      0023A2 C0 01            [24] 1025 	push	ar1
      0023A4 C0 00            [24] 1026 	push	ar0
      0023A6 C0 02            [24] 1027 	push	ar2
      0023A8 C0 05            [24] 1028 	push	ar5
      0023AA 90 00 C0         [24] 1029 	mov	dptr,#0x00c0
      0023AD 12 2A 8A         [24] 1030 	lcall	__mulint
      0023B0 AA 82            [24] 1031 	mov	r2,dpl
      0023B2 AD 83            [24] 1032 	mov	r5,dph
      0023B4 15 81            [12] 1033 	dec	sp
      0023B6 15 81            [12] 1034 	dec	sp
      0023B8 D0 00            [24] 1035 	pop	ar0
      0023BA D0 01            [24] 1036 	pop	ar1
      0023BC EA               [12] 1037 	mov	a,r2
      0023BD 24 00            [12] 1038 	add	a,#_g
      0023BF FF               [12] 1039 	mov	r7,a
      0023C0 ED               [12] 1040 	mov	a,r5
      0023C1 34 40            [12] 1041 	addc	a,#(_g >> 8)
      0023C3 FC               [12] 1042 	mov	r4,a
      0023C4 86 02            [24] 1043 	mov	ar2,@r0
      0023C6 08               [12] 1044 	inc	r0
      0023C7 86 05            [24] 1045 	mov	ar5,@r0
      0023C9 18               [12] 1046 	dec	r0
      0023CA EA               [12] 1047 	mov	a,r2
      0023CB 2F               [12] 1048 	add	a,r7
      0023CC F5 82            [12] 1049 	mov	dpl,a
      0023CE ED               [12] 1050 	mov	a,r5
      0023CF 3C               [12] 1051 	addc	a,r4
      0023D0 F5 83            [12] 1052 	mov	dph,a
      0023D2 74 AA            [12] 1053 	mov	a,#0xaa
      0023D4 F0               [24] 1054 	movx	@dptr,a
                                   1055 ;	walk.c:99: printf("\033[%d;%dHo", cur.r + 3, cur.c + 1);
      0023D5 86 02            [24] 1056 	mov	ar2,@r0
      0023D7 08               [12] 1057 	inc	r0
      0023D8 86 05            [24] 1058 	mov	ar5,@r0
      0023DA 18               [12] 1059 	dec	r0
      0023DB 74 01            [12] 1060 	mov	a,#0x01
      0023DD 2A               [12] 1061 	add	a,r2
      0023DE FF               [12] 1062 	mov	r7,a
      0023DF E4               [12] 1063 	clr	a
      0023E0 3D               [12] 1064 	addc	a,r5
      0023E1 FC               [12] 1065 	mov	r4,a
      0023E2 87 02            [24] 1066 	mov	ar2,@r1
      0023E4 09               [12] 1067 	inc	r1
      0023E5 87 05            [24] 1068 	mov	ar5,@r1
      0023E7 19               [12] 1069 	dec	r1
      0023E8 74 03            [12] 1070 	mov	a,#0x03
      0023EA 2A               [12] 1071 	add	a,r2
      0023EB FA               [12] 1072 	mov	r2,a
      0023EC E4               [12] 1073 	clr	a
      0023ED 3D               [12] 1074 	addc	a,r5
      0023EE FD               [12] 1075 	mov	r5,a
      0023EF C0 02            [24] 1076 	push	ar2
      0023F1 C0 01            [24] 1077 	push	ar1
      0023F3 C0 00            [24] 1078 	push	ar0
      0023F5 C0 07            [24] 1079 	push	ar7
      0023F7 C0 04            [24] 1080 	push	ar4
      0023F9 C0 02            [24] 1081 	push	ar2
      0023FB C0 05            [24] 1082 	push	ar5
      0023FD 74 A1            [12] 1083 	mov	a,#___str_1
      0023FF C0 E0            [24] 1084 	push	acc
      002401 74 3F            [12] 1085 	mov	a,#(___str_1 >> 8)
      002403 C0 E0            [24] 1086 	push	acc
      002405 74 80            [12] 1087 	mov	a,#0x80
      002407 C0 E0            [24] 1088 	push	acc
      002409 12 2C 41         [24] 1089 	lcall	_printf
      00240C E5 81            [12] 1090 	mov	a,sp
      00240E 24 F9            [12] 1091 	add	a,#0xf9
      002410 F5 81            [12] 1092 	mov	sp,a
      002412 D0 00            [24] 1093 	pop	ar0
      002414 D0 01            [24] 1094 	pop	ar1
      002416 D0 02            [24] 1095 	pop	ar2
      002418 D0 06            [24] 1096 	pop	ar6
                                   1097 ;	walk.c:129: return;
      00241A D0 02            [24] 1098 	pop	ar2
                                   1099 ;	walk.c:101: next:
      00241C                       1100 00102$:
                                   1101 ;	walk.c:102: printf("\033[1;1H% 8d% 8d% 8d", sp, cur.r, cur.c);
      00241C C0 02            [24] 1102 	push	ar2
      00241E 86 07            [24] 1103 	mov	ar7,@r0
      002420 08               [12] 1104 	inc	r0
      002421 86 04            [24] 1105 	mov	ar4,@r0
      002423 18               [12] 1106 	dec	r0
      002424 87 02            [24] 1107 	mov	ar2,@r1
      002426 09               [12] 1108 	inc	r1
      002427 87 05            [24] 1109 	mov	ar5,@r1
      002429 19               [12] 1110 	dec	r1
      00242A C0 06            [24] 1111 	push	ar6
      00242C C0 02            [24] 1112 	push	ar2
      00242E C0 01            [24] 1113 	push	ar1
      002430 C0 00            [24] 1114 	push	ar0
      002432 C0 07            [24] 1115 	push	ar7
      002434 C0 04            [24] 1116 	push	ar4
      002436 C0 02            [24] 1117 	push	ar2
      002438 C0 05            [24] 1118 	push	ar5
      00243A 90 F4 00         [24] 1119 	mov	dptr,#_sp
      00243D E0               [24] 1120 	movx	a,@dptr
      00243E C0 E0            [24] 1121 	push	acc
      002440 A3               [24] 1122 	inc	dptr
      002441 E0               [24] 1123 	movx	a,@dptr
      002442 C0 E0            [24] 1124 	push	acc
      002444 74 AB            [12] 1125 	mov	a,#___str_2
      002446 C0 E0            [24] 1126 	push	acc
      002448 74 3F            [12] 1127 	mov	a,#(___str_2 >> 8)
      00244A C0 E0            [24] 1128 	push	acc
      00244C 74 80            [12] 1129 	mov	a,#0x80
      00244E C0 E0            [24] 1130 	push	acc
      002450 12 2C 41         [24] 1131 	lcall	_printf
      002453 E5 81            [12] 1132 	mov	a,sp
      002455 24 F7            [12] 1133 	add	a,#0xf7
      002457 F5 81            [12] 1134 	mov	sp,a
      002459 D0 00            [24] 1135 	pop	ar0
      00245B D0 01            [24] 1136 	pop	ar1
      00245D D0 02            [24] 1137 	pop	ar2
      00245F D0 06            [24] 1138 	pop	ar6
                                   1139 ;	walk.c:104: for (j = 0, f = 0; j < NMAX; j++) {
      002461 C0 00            [24] 1140 	push	ar0
      002463 E5 10            [12] 1141 	mov	a,_bp
      002465 24 14            [12] 1142 	add	a,#0x14
      002467 F8               [12] 1143 	mov	r0,a
      002468 E4               [12] 1144 	clr	a
      002469 F6               [12] 1145 	mov	@r0,a
      00246A 08               [12] 1146 	inc	r0
      00246B F6               [12] 1147 	mov	@r0,a
      00246C E5 10            [12] 1148 	mov	a,_bp
      00246E 24 12            [12] 1149 	add	a,#0x12
      002470 F8               [12] 1150 	mov	r0,a
      002471 E4               [12] 1151 	clr	a
      002472 F6               [12] 1152 	mov	@r0,a
      002473 08               [12] 1153 	inc	r0
      002474 F6               [12] 1154 	mov	@r0,a
      002475 D0 00            [24] 1155 	pop	ar0
                                   1156 ;	walk.c:129: return;
      002477 D0 02            [24] 1157 	pop	ar2
                                   1158 ;	walk.c:104: for (j = 0, f = 0; j < NMAX; j++) {
      002479                       1159 00120$:
      002479 C0 00            [24] 1160 	push	ar0
      00247B E5 10            [12] 1161 	mov	a,_bp
      00247D 24 12            [12] 1162 	add	a,#0x12
      00247F F8               [12] 1163 	mov	r0,a
      002480 C3               [12] 1164 	clr	c
      002481 E6               [12] 1165 	mov	a,@r0
      002482 94 08            [12] 1166 	subb	a,#0x08
      002484 08               [12] 1167 	inc	r0
      002485 E6               [12] 1168 	mov	a,@r0
      002486 64 80            [12] 1169 	xrl	a,#0x80
      002488 94 80            [12] 1170 	subb	a,#0x80
      00248A D0 00            [24] 1171 	pop	ar0
      00248C 40 03            [24] 1172 	jc	00160$
      00248E 02 25 21         [24] 1173 	ljmp	00106$
      002491                       1174 00160$:
                                   1175 ;	walk.c:105: if (!update(&t, &cur, j)) continue;
      002491 C0 02            [24] 1176 	push	ar2
      002493 C0 00            [24] 1177 	push	ar0
      002495 E5 10            [12] 1178 	mov	a,_bp
      002497 24 06            [12] 1179 	add	a,#0x06
      002499 F8               [12] 1180 	mov	r0,a
      00249A C0 01            [24] 1181 	push	ar1
      00249C E5 10            [12] 1182 	mov	a,_bp
      00249E 24 07            [12] 1183 	add	a,#0x07
      0024A0 F9               [12] 1184 	mov	r1,a
      0024A1 E6               [12] 1185 	mov	a,@r0
      0024A2 F7               [12] 1186 	mov	@r1,a
      0024A3 09               [12] 1187 	inc	r1
      0024A4 77 00            [12] 1188 	mov	@r1,#0x00
      0024A6 09               [12] 1189 	inc	r1
      0024A7 77 40            [12] 1190 	mov	@r1,#0x40
      0024A9 D0 01            [24] 1191 	pop	ar1
      0024AB D0 00            [24] 1192 	pop	ar0
      0024AD 8E 04            [24] 1193 	mov	ar4,r6
      0024AF 7D 00            [12] 1194 	mov	r5,#0x00
      0024B1 7F 40            [12] 1195 	mov	r7,#0x40
      0024B3 C0 06            [24] 1196 	push	ar6
      0024B5 C0 02            [24] 1197 	push	ar2
      0024B7 C0 01            [24] 1198 	push	ar1
      0024B9 C0 00            [24] 1199 	push	ar0
      0024BB 85 00 F0         [24] 1200 	mov	b,ar0
      0024BE E5 10            [12] 1201 	mov	a,_bp
      0024C0 24 12            [12] 1202 	add	a,#0x12
      0024C2 F8               [12] 1203 	mov	r0,a
      0024C3 E6               [12] 1204 	mov	a,@r0
      0024C4 C0 E0            [24] 1205 	push	acc
      0024C6 08               [12] 1206 	inc	r0
      0024C7 E6               [12] 1207 	mov	a,@r0
      0024C8 C0 E0            [24] 1208 	push	acc
      0024CA A8 F0            [24] 1209 	mov	r0,b
      0024CC 85 00 F0         [24] 1210 	mov	b,ar0
      0024CF E5 10            [12] 1211 	mov	a,_bp
      0024D1 24 07            [12] 1212 	add	a,#0x07
      0024D3 F8               [12] 1213 	mov	r0,a
      0024D4 E6               [12] 1214 	mov	a,@r0
      0024D5 C0 E0            [24] 1215 	push	acc
      0024D7 08               [12] 1216 	inc	r0
      0024D8 E6               [12] 1217 	mov	a,@r0
      0024D9 C0 E0            [24] 1218 	push	acc
      0024DB 08               [12] 1219 	inc	r0
      0024DC E6               [12] 1220 	mov	a,@r0
      0024DD C0 E0            [24] 1221 	push	acc
      0024DF 8C 82            [24] 1222 	mov	dpl,r4
      0024E1 8D 83            [24] 1223 	mov	dph,r5
      0024E3 8F F0            [24] 1224 	mov	b,r7
      0024E5 12 20 8B         [24] 1225 	lcall	_update
      0024E8 AD 82            [24] 1226 	mov	r5,dpl
      0024EA AF 83            [24] 1227 	mov	r7,dph
      0024EC E5 81            [12] 1228 	mov	a,sp
      0024EE 24 FB            [12] 1229 	add	a,#0xfb
      0024F0 F5 81            [12] 1230 	mov	sp,a
      0024F2 D0 00            [24] 1231 	pop	ar0
      0024F4 D0 01            [24] 1232 	pop	ar1
      0024F6 D0 02            [24] 1233 	pop	ar2
      0024F8 D0 06            [24] 1234 	pop	ar6
      0024FA D0 02            [24] 1235 	pop	ar2
      0024FC ED               [12] 1236 	mov	a,r5
      0024FD 4F               [12] 1237 	orl	a,r7
      0024FE 60 0F            [24] 1238 	jz	00105$
                                   1239 ;	walk.c:106: f++;
      002500 C0 00            [24] 1240 	push	ar0
      002502 E5 10            [12] 1241 	mov	a,_bp
      002504 24 14            [12] 1242 	add	a,#0x14
      002506 F8               [12] 1243 	mov	r0,a
      002507 06               [12] 1244 	inc	@r0
      002508 B6 00 02         [24] 1245 	cjne	@r0,#0x00,00162$
      00250B 08               [12] 1246 	inc	r0
      00250C 06               [12] 1247 	inc	@r0
      00250D                       1248 00162$:
      00250D D0 00            [24] 1249 	pop	ar0
      00250F                       1250 00105$:
                                   1251 ;	walk.c:104: for (j = 0, f = 0; j < NMAX; j++) {
      00250F C0 00            [24] 1252 	push	ar0
      002511 E5 10            [12] 1253 	mov	a,_bp
      002513 24 12            [12] 1254 	add	a,#0x12
      002515 F8               [12] 1255 	mov	r0,a
      002516 06               [12] 1256 	inc	@r0
      002517 B6 00 02         [24] 1257 	cjne	@r0,#0x00,00163$
      00251A 08               [12] 1258 	inc	r0
      00251B 06               [12] 1259 	inc	@r0
      00251C                       1260 00163$:
      00251C D0 00            [24] 1261 	pop	ar0
      00251E 02 24 79         [24] 1262 	ljmp	00120$
      002521                       1263 00106$:
                                   1264 ;	walk.c:109: if (f) {
      002521 C0 00            [24] 1265 	push	ar0
      002523 E5 10            [12] 1266 	mov	a,_bp
      002525 24 14            [12] 1267 	add	a,#0x14
      002527 F8               [12] 1268 	mov	r0,a
      002528 E6               [12] 1269 	mov	a,@r0
      002529 08               [12] 1270 	inc	r0
      00252A 46               [12] 1271 	orl	a,@r0
      00252B D0 00            [24] 1272 	pop	ar0
      00252D 70 03            [24] 1273 	jnz	00164$
      00252F 02 26 87         [24] 1274 	ljmp	00115$
      002532                       1275 00164$:
                                   1276 ;	walk.c:110: while (1) {
      002532                       1277 00112$:
                                   1278 ;	walk.c:111: j = rand() % NMAX;
      002532 C0 02            [24] 1279 	push	ar2
      002534 C0 06            [24] 1280 	push	ar6
      002536 C0 02            [24] 1281 	push	ar2
      002538 C0 01            [24] 1282 	push	ar1
      00253A C0 00            [24] 1283 	push	ar0
      00253C 12 29 92         [24] 1284 	lcall	_rand
      00253F AD 82            [24] 1285 	mov	r5,dpl
      002541 AF 83            [24] 1286 	mov	r7,dph
      002543 74 08            [12] 1287 	mov	a,#0x08
      002545 C0 E0            [24] 1288 	push	acc
      002547 E4               [12] 1289 	clr	a
      002548 C0 E0            [24] 1290 	push	acc
      00254A 8D 82            [24] 1291 	mov	dpl,r5
      00254C 8F 83            [24] 1292 	mov	dph,r7
      00254E 12 2C 96         [24] 1293 	lcall	__modsint
      002551 C0 00            [24] 1294 	push	ar0
      002553 C8               [12] 1295 	xch	a,r0
      002554 E5 10            [12] 1296 	mov	a,_bp
      002556 24 12            [12] 1297 	add	a,#0x12
      002558 C8               [12] 1298 	xch	a,r0
      002559 A6 82            [24] 1299 	mov	@r0,dpl
      00255B 08               [12] 1300 	inc	r0
      00255C A6 83            [24] 1301 	mov	@r0,dph
      00255E D0 00            [24] 1302 	pop	ar0
      002560 15 81            [12] 1303 	dec	sp
      002562 15 81            [12] 1304 	dec	sp
      002564 D0 00            [24] 1305 	pop	ar0
      002566 D0 01            [24] 1306 	pop	ar1
      002568 D0 02            [24] 1307 	pop	ar2
      00256A D0 06            [24] 1308 	pop	ar6
                                   1309 ;	walk.c:112: if (!update(&t, &cur, j)) continue;
      00256C C0 00            [24] 1310 	push	ar0
      00256E E5 10            [12] 1311 	mov	a,_bp
      002570 24 05            [12] 1312 	add	a,#0x05
      002572 F8               [12] 1313 	mov	r0,a
      002573 C0 01            [24] 1314 	push	ar1
      002575 E5 10            [12] 1315 	mov	a,_bp
      002577 24 07            [12] 1316 	add	a,#0x07
      002579 F9               [12] 1317 	mov	r1,a
      00257A E6               [12] 1318 	mov	a,@r0
      00257B F7               [12] 1319 	mov	@r1,a
      00257C 09               [12] 1320 	inc	r1
      00257D 77 00            [12] 1321 	mov	@r1,#0x00
      00257F 09               [12] 1322 	inc	r1
      002580 77 40            [12] 1323 	mov	@r1,#0x40
      002582 D0 01            [24] 1324 	pop	ar1
      002584 E5 10            [12] 1325 	mov	a,_bp
      002586 24 04            [12] 1326 	add	a,#0x04
      002588 F8               [12] 1327 	mov	r0,a
      002589 86 04            [24] 1328 	mov	ar4,@r0
      00258B 7D 00            [12] 1329 	mov	r5,#0x00
      00258D 7F 40            [12] 1330 	mov	r7,#0x40
      00258F D0 00            [24] 1331 	pop	ar0
      002591 C0 06            [24] 1332 	push	ar6
      002593 C0 02            [24] 1333 	push	ar2
      002595 C0 01            [24] 1334 	push	ar1
      002597 C0 00            [24] 1335 	push	ar0
      002599 85 00 F0         [24] 1336 	mov	b,ar0
      00259C E5 10            [12] 1337 	mov	a,_bp
      00259E 24 12            [12] 1338 	add	a,#0x12
      0025A0 F8               [12] 1339 	mov	r0,a
      0025A1 E6               [12] 1340 	mov	a,@r0
      0025A2 C0 E0            [24] 1341 	push	acc
      0025A4 08               [12] 1342 	inc	r0
      0025A5 E6               [12] 1343 	mov	a,@r0
      0025A6 C0 E0            [24] 1344 	push	acc
      0025A8 A8 F0            [24] 1345 	mov	r0,b
      0025AA 85 00 F0         [24] 1346 	mov	b,ar0
      0025AD E5 10            [12] 1347 	mov	a,_bp
      0025AF 24 07            [12] 1348 	add	a,#0x07
      0025B1 F8               [12] 1349 	mov	r0,a
      0025B2 E6               [12] 1350 	mov	a,@r0
      0025B3 C0 E0            [24] 1351 	push	acc
      0025B5 08               [12] 1352 	inc	r0
      0025B6 E6               [12] 1353 	mov	a,@r0
      0025B7 C0 E0            [24] 1354 	push	acc
      0025B9 08               [12] 1355 	inc	r0
      0025BA E6               [12] 1356 	mov	a,@r0
      0025BB C0 E0            [24] 1357 	push	acc
      0025BD 8C 82            [24] 1358 	mov	dpl,r4
      0025BF 8D 83            [24] 1359 	mov	dph,r5
      0025C1 8F F0            [24] 1360 	mov	b,r7
      0025C3 12 20 8B         [24] 1361 	lcall	_update
      0025C6 AD 82            [24] 1362 	mov	r5,dpl
      0025C8 AF 83            [24] 1363 	mov	r7,dph
      0025CA E5 81            [12] 1364 	mov	a,sp
      0025CC 24 FB            [12] 1365 	add	a,#0xfb
      0025CE F5 81            [12] 1366 	mov	sp,a
      0025D0 D0 00            [24] 1367 	pop	ar0
      0025D2 D0 01            [24] 1368 	pop	ar1
      0025D4 D0 02            [24] 1369 	pop	ar2
      0025D6 D0 06            [24] 1370 	pop	ar6
      0025D8 D0 02            [24] 1371 	pop	ar2
      0025DA ED               [12] 1372 	mov	a,r5
      0025DB 4F               [12] 1373 	orl	a,r7
      0025DC 70 03            [24] 1374 	jnz	00165$
      0025DE 02 25 32         [24] 1375 	ljmp	00112$
      0025E1                       1376 00165$:
                                   1377 ;	walk.c:114: if (!stpush(&cur)) {
      0025E1 8A 04            [24] 1378 	mov	ar4,r2
      0025E3 7D 00            [12] 1379 	mov	r5,#0x00
      0025E5 7F 40            [12] 1380 	mov	r7,#0x40
      0025E7 8C 82            [24] 1381 	mov	dpl,r4
      0025E9 8D 83            [24] 1382 	mov	dph,r5
      0025EB 8F F0            [24] 1383 	mov	b,r7
      0025ED C0 06            [24] 1384 	push	ar6
      0025EF C0 02            [24] 1385 	push	ar2
      0025F1 C0 01            [24] 1386 	push	ar1
      0025F3 C0 00            [24] 1387 	push	ar0
      0025F5 12 28 CF         [24] 1388 	lcall	_stpush
      0025F8 E5 82            [12] 1389 	mov	a,dpl
      0025FA 85 83 F0         [24] 1390 	mov	b,dph
      0025FD D0 00            [24] 1391 	pop	ar0
      0025FF D0 01            [24] 1392 	pop	ar1
      002601 D0 02            [24] 1393 	pop	ar2
      002603 D0 06            [24] 1394 	pop	ar6
      002605 45 F0            [12] 1395 	orl	a,b
      002607 70 1C            [24] 1396 	jnz	00110$
                                   1397 ;	walk.c:115: (void)puts("Memory error");
      002609 90 3F 94         [24] 1398 	mov	dptr,#___str_0
      00260C 75 F0 80         [24] 1399 	mov	b,#0x80
      00260F C0 06            [24] 1400 	push	ar6
      002611 C0 02            [24] 1401 	push	ar2
      002613 C0 01            [24] 1402 	push	ar1
      002615 C0 00            [24] 1403 	push	ar0
      002617 12 2B BB         [24] 1404 	lcall	_puts
      00261A D0 00            [24] 1405 	pop	ar0
      00261C D0 01            [24] 1406 	pop	ar1
      00261E D0 02            [24] 1407 	pop	ar2
      002620 D0 06            [24] 1408 	pop	ar6
                                   1409 ;	walk.c:116: reset();
      002622 12 20 88         [24] 1410 	lcall	_reset
      002625                       1411 00110$:
                                   1412 ;	walk.c:118: cur = t;
      002625 C0 02            [24] 1413 	push	ar2
      002627 C0 00            [24] 1414 	push	ar0
      002629 A8 10            [24] 1415 	mov	r0,_bp
      00262B 08               [12] 1416 	inc	r0
      00262C C0 01            [24] 1417 	push	ar1
      00262E E5 10            [12] 1418 	mov	a,_bp
      002630 24 07            [12] 1419 	add	a,#0x07
      002632 F9               [12] 1420 	mov	r1,a
      002633 E6               [12] 1421 	mov	a,@r0
      002634 F7               [12] 1422 	mov	@r1,a
      002635 09               [12] 1423 	inc	r1
      002636 77 00            [12] 1424 	mov	@r1,#0x00
      002638 09               [12] 1425 	inc	r1
      002639 77 40            [12] 1426 	mov	@r1,#0x40
      00263B D0 01            [24] 1427 	pop	ar1
      00263D A8 10            [24] 1428 	mov	r0,_bp
      00263F 08               [12] 1429 	inc	r0
      002640 08               [12] 1430 	inc	r0
      002641 86 02            [24] 1431 	mov	ar2,@r0
      002643 7B 00            [12] 1432 	mov	r3,#0x00
      002645 7F 40            [12] 1433 	mov	r7,#0x40
      002647 D0 00            [24] 1434 	pop	ar0
      002649 C0 06            [24] 1435 	push	ar6
      00264B C0 02            [24] 1436 	push	ar2
      00264D C0 01            [24] 1437 	push	ar1
      00264F C0 00            [24] 1438 	push	ar0
      002651 74 04            [12] 1439 	mov	a,#0x04
      002653 C0 E0            [24] 1440 	push	acc
      002655 E4               [12] 1441 	clr	a
      002656 C0 E0            [24] 1442 	push	acc
      002658 85 00 F0         [24] 1443 	mov	b,ar0
      00265B E5 10            [12] 1444 	mov	a,_bp
      00265D 24 07            [12] 1445 	add	a,#0x07
      00265F F8               [12] 1446 	mov	r0,a
      002660 E6               [12] 1447 	mov	a,@r0
      002661 C0 E0            [24] 1448 	push	acc
      002663 08               [12] 1449 	inc	r0
      002664 E6               [12] 1450 	mov	a,@r0
      002665 C0 E0            [24] 1451 	push	acc
      002667 08               [12] 1452 	inc	r0
      002668 E6               [12] 1453 	mov	a,@r0
      002669 C0 E0            [24] 1454 	push	acc
      00266B 8A 82            [24] 1455 	mov	dpl,r2
      00266D 8B 83            [24] 1456 	mov	dph,r3
      00266F 8F F0            [24] 1457 	mov	b,r7
      002671 12 2B 28         [24] 1458 	lcall	___memcpy
      002674 E5 81            [12] 1459 	mov	a,sp
      002676 24 FB            [12] 1460 	add	a,#0xfb
      002678 F5 81            [12] 1461 	mov	sp,a
      00267A D0 00            [24] 1462 	pop	ar0
      00267C D0 01            [24] 1463 	pop	ar1
      00267E D0 02            [24] 1464 	pop	ar2
      002680 D0 06            [24] 1465 	pop	ar6
                                   1466 ;	walk.c:119: goto process;
      002682 D0 02            [24] 1467 	pop	ar2
      002684 02 23 98         [24] 1468 	ljmp	00101$
      002687                       1469 00115$:
                                   1470 ;	walk.c:123: printf("\033[%d;%dH.", cur.r + 3, cur.c + 1);
      002687 86 05            [24] 1471 	mov	ar5,@r0
      002689 08               [12] 1472 	inc	r0
      00268A 86 07            [24] 1473 	mov	ar7,@r0
      00268C 18               [12] 1474 	dec	r0
      00268D 0D               [12] 1475 	inc	r5
      00268E BD 00 01         [24] 1476 	cjne	r5,#0x00,00167$
      002691 0F               [12] 1477 	inc	r7
      002692                       1478 00167$:
      002692 87 03            [24] 1479 	mov	ar3,@r1
      002694 09               [12] 1480 	inc	r1
      002695 87 04            [24] 1481 	mov	ar4,@r1
      002697 19               [12] 1482 	dec	r1
      002698 74 03            [12] 1483 	mov	a,#0x03
      00269A 2B               [12] 1484 	add	a,r3
      00269B FB               [12] 1485 	mov	r3,a
      00269C E4               [12] 1486 	clr	a
      00269D 3C               [12] 1487 	addc	a,r4
      00269E FC               [12] 1488 	mov	r4,a
      00269F C0 06            [24] 1489 	push	ar6
      0026A1 C0 02            [24] 1490 	push	ar2
      0026A3 C0 01            [24] 1491 	push	ar1
      0026A5 C0 00            [24] 1492 	push	ar0
      0026A7 C0 05            [24] 1493 	push	ar5
      0026A9 C0 07            [24] 1494 	push	ar7
      0026AB C0 03            [24] 1495 	push	ar3
      0026AD C0 04            [24] 1496 	push	ar4
      0026AF 74 BE            [12] 1497 	mov	a,#___str_3
      0026B1 C0 E0            [24] 1498 	push	acc
      0026B3 74 3F            [12] 1499 	mov	a,#(___str_3 >> 8)
      0026B5 C0 E0            [24] 1500 	push	acc
      0026B7 74 80            [12] 1501 	mov	a,#0x80
      0026B9 C0 E0            [24] 1502 	push	acc
      0026BB 12 2C 41         [24] 1503 	lcall	_printf
      0026BE E5 81            [12] 1504 	mov	a,sp
      0026C0 24 F9            [12] 1505 	add	a,#0xf9
      0026C2 F5 81            [12] 1506 	mov	sp,a
      0026C4 D0 00            [24] 1507 	pop	ar0
      0026C6 D0 01            [24] 1508 	pop	ar1
      0026C8 D0 02            [24] 1509 	pop	ar2
      0026CA D0 06            [24] 1510 	pop	ar6
                                   1511 ;	walk.c:125: if (!stpop(&cur)) goto term;
      0026CC C0 00            [24] 1512 	push	ar0
      0026CE E5 10            [12] 1513 	mov	a,_bp
      0026D0 24 03            [12] 1514 	add	a,#0x03
      0026D2 F8               [12] 1515 	mov	r0,a
      0026D3 86 04            [24] 1516 	mov	ar4,@r0
      0026D5 7D 00            [12] 1517 	mov	r5,#0x00
      0026D7 7F 40            [12] 1518 	mov	r7,#0x40
      0026D9 D0 00            [24] 1519 	pop	ar0
      0026DB 8C 82            [24] 1520 	mov	dpl,r4
      0026DD 8D 83            [24] 1521 	mov	dph,r5
      0026DF 8F F0            [24] 1522 	mov	b,r7
      0026E1 C0 06            [24] 1523 	push	ar6
      0026E3 C0 02            [24] 1524 	push	ar2
      0026E5 C0 01            [24] 1525 	push	ar1
      0026E7 C0 00            [24] 1526 	push	ar0
      0026E9 12 29 30         [24] 1527 	lcall	_stpop
      0026EC E5 82            [12] 1528 	mov	a,dpl
      0026EE 85 83 F0         [24] 1529 	mov	b,dph
      0026F1 D0 00            [24] 1530 	pop	ar0
      0026F3 D0 01            [24] 1531 	pop	ar1
      0026F5 D0 02            [24] 1532 	pop	ar2
      0026F7 D0 06            [24] 1533 	pop	ar6
      0026F9 45 F0            [12] 1534 	orl	a,b
      0026FB 60 03            [24] 1535 	jz	00168$
      0026FD 02 24 1C         [24] 1536 	ljmp	00102$
      002700                       1537 00168$:
                                   1538 ;	walk.c:129: return;
                                   1539 ;	walk.c:130: }
      002700 85 10 81         [24] 1540 	mov	sp,_bp
      002703 D0 10            [24] 1541 	pop	_bp
      002705 22               [24] 1542 	ret
                                   1543 ;------------------------------------------------------------
                                   1544 ;Allocation info for local variables in function 'main'
                                   1545 ;------------------------------------------------------------
                                   1546 ;initial                   Allocated to stack - _bp +5
                                   1547 ;i                         Allocated to stack - _bp +3
                                   1548 ;j                         Allocated to registers r4 r5 
                                   1549 ;sloc0                     Allocated to stack - _bp +1
                                   1550 ;R                         Allocated with name '_main_R_65536_64'
                                   1551 ;------------------------------------------------------------
                                   1552 ;	walk.c:132: int main(void) {
                                   1553 ;	-----------------------------------------
                                   1554 ;	 function main
                                   1555 ;	-----------------------------------------
      002706                       1556 _main:
      002706 C0 10            [24] 1557 	push	_bp
      002708 E5 81            [12] 1558 	mov	a,sp
      00270A F5 10            [12] 1559 	mov	_bp,a
      00270C 24 08            [12] 1560 	add	a,#0x08
      00270E F5 81            [12] 1561 	mov	sp,a
                                   1562 ;	walk.c:137: i0 = 1;
      002710 78 11            [12] 1563 	mov	r0,#_i0
      002712 76 01            [12] 1564 	mov	@r0,#0x01
                                   1565 ;	walk.c:139: IT0 = 1;
                                   1566 ;	assignBit
      002714 D2 88            [12] 1567 	setb	_IT0
                                   1568 ;	walk.c:140: EX0 = 1;
                                   1569 ;	assignBit
      002716 D2 A8            [12] 1570 	setb	_EX0
                                   1571 ;	walk.c:141: EA = 1;
                                   1572 ;	assignBit
      002718 D2 AF            [12] 1573 	setb	_EA
                                   1574 ;	walk.c:143: srand(*R);
      00271A 90 F4 02         [24] 1575 	mov	dptr,#_main_R_65536_64
      00271D E0               [24] 1576 	movx	a,@dptr
      00271E FE               [12] 1577 	mov	r6,a
      00271F A3               [24] 1578 	inc	dptr
      002720 E0               [24] 1579 	movx	a,@dptr
      002721 FF               [12] 1580 	mov	r7,a
      002722 8E 82            [24] 1581 	mov	dpl,r6
      002724 8F 83            [24] 1582 	mov	dph,r7
      002726 E0               [24] 1583 	movx	a,@dptr
      002727 FE               [12] 1584 	mov	r6,a
      002728 A3               [24] 1585 	inc	dptr
      002729 E0               [24] 1586 	movx	a,@dptr
      00272A FF               [12] 1587 	mov	r7,a
      00272B 8E 82            [24] 1588 	mov	dpl,r6
      00272D 8F 83            [24] 1589 	mov	dph,r7
      00272F 12 2A 56         [24] 1590 	lcall	_srand
                                   1591 ;	walk.c:144: stinit();
      002732 12 28 C6         [24] 1592 	lcall	_stinit
                                   1593 ;	walk.c:146: while (i0) {
      002735 E5 10            [12] 1594 	mov	a,_bp
      002737 24 05            [12] 1595 	add	a,#0x05
      002739 FF               [12] 1596 	mov	r7,a
      00273A FE               [12] 1597 	mov	r6,a
      00273B                       1598 00107$:
      00273B 78 11            [12] 1599 	mov	r0,#_i0
      00273D E6               [12] 1600 	mov	a,@r0
      00273E 70 03            [24] 1601 	jnz	00168$
      002740 02 28 B8         [24] 1602 	ljmp	00109$
      002743                       1603 00168$:
                                   1604 ;	walk.c:147: for (i = 0; i < ROWS; i++)
      002743 E5 10            [12] 1605 	mov	a,_bp
      002745 24 03            [12] 1606 	add	a,#0x03
      002747 F8               [12] 1607 	mov	r0,a
      002748 E4               [12] 1608 	clr	a
      002749 F6               [12] 1609 	mov	@r0,a
      00274A 08               [12] 1610 	inc	r0
      00274B F6               [12] 1611 	mov	@r0,a
      00274C 7A 00            [12] 1612 	mov	r2,#0x00
      00274E 7B 00            [12] 1613 	mov	r3,#0x00
                                   1614 ;	walk.c:148: for (j = 0; j < COLS; j++)
      002750                       1615 00121$:
      002750 A8 10            [24] 1616 	mov	r0,_bp
      002752 08               [12] 1617 	inc	r0
      002753 EA               [12] 1618 	mov	a,r2
      002754 24 00            [12] 1619 	add	a,#_g
      002756 F6               [12] 1620 	mov	@r0,a
      002757 EB               [12] 1621 	mov	a,r3
      002758 34 40            [12] 1622 	addc	a,#(_g >> 8)
      00275A 08               [12] 1623 	inc	r0
      00275B F6               [12] 1624 	mov	@r0,a
      00275C 7C 00            [12] 1625 	mov	r4,#0x00
      00275E 7D 00            [12] 1626 	mov	r5,#0x00
      002760                       1627 00110$:
                                   1628 ;	walk.c:149: g[i][j] = 0x55;
      002760 A8 10            [24] 1629 	mov	r0,_bp
      002762 08               [12] 1630 	inc	r0
      002763 EC               [12] 1631 	mov	a,r4
      002764 26               [12] 1632 	add	a,@r0
      002765 F5 82            [12] 1633 	mov	dpl,a
      002767 ED               [12] 1634 	mov	a,r5
      002768 08               [12] 1635 	inc	r0
      002769 36               [12] 1636 	addc	a,@r0
      00276A F5 83            [12] 1637 	mov	dph,a
      00276C 74 55            [12] 1638 	mov	a,#0x55
      00276E F0               [24] 1639 	movx	@dptr,a
                                   1640 ;	walk.c:148: for (j = 0; j < COLS; j++)
      00276F 0C               [12] 1641 	inc	r4
      002770 BC 00 01         [24] 1642 	cjne	r4,#0x00,00169$
      002773 0D               [12] 1643 	inc	r5
      002774                       1644 00169$:
      002774 C3               [12] 1645 	clr	c
      002775 EC               [12] 1646 	mov	a,r4
      002776 94 C0            [12] 1647 	subb	a,#0xc0
      002778 ED               [12] 1648 	mov	a,r5
      002779 64 80            [12] 1649 	xrl	a,#0x80
      00277B 94 80            [12] 1650 	subb	a,#0x80
      00277D 40 E1            [24] 1651 	jc	00110$
                                   1652 ;	walk.c:147: for (i = 0; i < ROWS; i++)
      00277F 74 C0            [12] 1653 	mov	a,#0xc0
      002781 2A               [12] 1654 	add	a,r2
      002782 FA               [12] 1655 	mov	r2,a
      002783 E4               [12] 1656 	clr	a
      002784 3B               [12] 1657 	addc	a,r3
      002785 FB               [12] 1658 	mov	r3,a
      002786 E5 10            [12] 1659 	mov	a,_bp
      002788 24 03            [12] 1660 	add	a,#0x03
      00278A F8               [12] 1661 	mov	r0,a
      00278B 06               [12] 1662 	inc	@r0
      00278C B6 00 02         [24] 1663 	cjne	@r0,#0x00,00171$
      00278F 08               [12] 1664 	inc	r0
      002790 06               [12] 1665 	inc	@r0
      002791                       1666 00171$:
      002791 E5 10            [12] 1667 	mov	a,_bp
      002793 24 03            [12] 1668 	add	a,#0x03
      002795 F8               [12] 1669 	mov	r0,a
      002796 C3               [12] 1670 	clr	c
      002797 E6               [12] 1671 	mov	a,@r0
      002798 94 30            [12] 1672 	subb	a,#0x30
      00279A 08               [12] 1673 	inc	r0
      00279B E6               [12] 1674 	mov	a,@r0
      00279C 64 80            [12] 1675 	xrl	a,#0x80
      00279E 94 80            [12] 1676 	subb	a,#0x80
      0027A0 40 AE            [24] 1677 	jc	00121$
                                   1678 ;	walk.c:151: puts("\033[2J");
      0027A2 90 3F C8         [24] 1679 	mov	dptr,#___str_4
      0027A5 75 F0 80         [24] 1680 	mov	b,#0x80
      0027A8 C0 07            [24] 1681 	push	ar7
      0027AA C0 06            [24] 1682 	push	ar6
      0027AC 12 2B BB         [24] 1683 	lcall	_puts
                                   1684 ;	walk.c:152: initial.r = rand() % ROWS;
      0027AF E5 10            [12] 1685 	mov	a,_bp
      0027B1 24 05            [12] 1686 	add	a,#0x05
      0027B3 F9               [12] 1687 	mov	r1,a
      0027B4 C0 01            [24] 1688 	push	ar1
      0027B6 12 29 92         [24] 1689 	lcall	_rand
      0027B9 AC 82            [24] 1690 	mov	r4,dpl
      0027BB AD 83            [24] 1691 	mov	r5,dph
      0027BD 74 30            [12] 1692 	mov	a,#0x30
      0027BF C0 E0            [24] 1693 	push	acc
      0027C1 E4               [12] 1694 	clr	a
      0027C2 C0 E0            [24] 1695 	push	acc
      0027C4 8C 82            [24] 1696 	mov	dpl,r4
      0027C6 8D 83            [24] 1697 	mov	dph,r5
      0027C8 12 2C 96         [24] 1698 	lcall	__modsint
      0027CB AC 82            [24] 1699 	mov	r4,dpl
      0027CD AD 83            [24] 1700 	mov	r5,dph
      0027CF 15 81            [12] 1701 	dec	sp
      0027D1 15 81            [12] 1702 	dec	sp
      0027D3 D0 01            [24] 1703 	pop	ar1
      0027D5 D0 06            [24] 1704 	pop	ar6
      0027D7 D0 07            [24] 1705 	pop	ar7
      0027D9 A7 04            [24] 1706 	mov	@r1,ar4
      0027DB 09               [12] 1707 	inc	r1
      0027DC A7 05            [24] 1708 	mov	@r1,ar5
      0027DE 19               [12] 1709 	dec	r1
                                   1710 ;	walk.c:153: initial.c = rand() % COLS;
      0027DF 74 02            [12] 1711 	mov	a,#0x02
      0027E1 2F               [12] 1712 	add	a,r7
      0027E2 F9               [12] 1713 	mov	r1,a
      0027E3 C0 07            [24] 1714 	push	ar7
      0027E5 C0 06            [24] 1715 	push	ar6
      0027E7 C0 01            [24] 1716 	push	ar1
      0027E9 12 29 92         [24] 1717 	lcall	_rand
      0027EC AC 82            [24] 1718 	mov	r4,dpl
      0027EE AD 83            [24] 1719 	mov	r5,dph
      0027F0 74 C0            [12] 1720 	mov	a,#0xc0
      0027F2 C0 E0            [24] 1721 	push	acc
      0027F4 E4               [12] 1722 	clr	a
      0027F5 C0 E0            [24] 1723 	push	acc
      0027F7 8C 82            [24] 1724 	mov	dpl,r4
      0027F9 8D 83            [24] 1725 	mov	dph,r5
      0027FB 12 2C 96         [24] 1726 	lcall	__modsint
      0027FE AC 82            [24] 1727 	mov	r4,dpl
      002800 AD 83            [24] 1728 	mov	r5,dph
      002802 15 81            [12] 1729 	dec	sp
      002804 15 81            [12] 1730 	dec	sp
      002806 D0 01            [24] 1731 	pop	ar1
      002808 D0 06            [24] 1732 	pop	ar6
      00280A A7 04            [24] 1733 	mov	@r1,ar4
      00280C 09               [12] 1734 	inc	r1
      00280D A7 05            [24] 1735 	mov	@r1,ar5
      00280F 19               [12] 1736 	dec	r1
                                   1737 ;	walk.c:154: walk(&initial);
      002810 8E 03            [24] 1738 	mov	ar3,r6
      002812 7C 00            [12] 1739 	mov	r4,#0x00
      002814 7D 40            [12] 1740 	mov	r5,#0x40
      002816 8B 82            [24] 1741 	mov	dpl,r3
      002818 8C 83            [24] 1742 	mov	dph,r4
      00281A 8D F0            [24] 1743 	mov	b,r5
      00281C C0 06            [24] 1744 	push	ar6
      00281E 12 23 2C         [24] 1745 	lcall	_walk
      002821 D0 06            [24] 1746 	pop	ar6
      002823 D0 07            [24] 1747 	pop	ar7
                                   1748 ;	walk.c:156: for (i = 0; i < ROWS; i++)
      002825 E5 10            [12] 1749 	mov	a,_bp
      002827 24 03            [12] 1750 	add	a,#0x03
      002829 F8               [12] 1751 	mov	r0,a
      00282A E4               [12] 1752 	clr	a
      00282B F6               [12] 1753 	mov	@r0,a
      00282C 08               [12] 1754 	inc	r0
      00282D F6               [12] 1755 	mov	@r0,a
      00282E 7A 00            [12] 1756 	mov	r2,#0x00
      002830 7B 00            [12] 1757 	mov	r3,#0x00
                                   1758 ;	walk.c:157: for (j = 0; j < COLS; j++)
      002832                       1759 00126$:
      002832 A8 10            [24] 1760 	mov	r0,_bp
      002834 08               [12] 1761 	inc	r0
      002835 EA               [12] 1762 	mov	a,r2
      002836 24 00            [12] 1763 	add	a,#_g
      002838 F6               [12] 1764 	mov	@r0,a
      002839 EB               [12] 1765 	mov	a,r3
      00283A 34 40            [12] 1766 	addc	a,#(_g >> 8)
      00283C 08               [12] 1767 	inc	r0
      00283D F6               [12] 1768 	mov	@r0,a
      00283E 7C 00            [12] 1769 	mov	r4,#0x00
      002840 7D 00            [12] 1770 	mov	r5,#0x00
      002842                       1771 00114$:
                                   1772 ;	walk.c:158: if (g[i][j] != 0xaa) {
      002842 C0 06            [24] 1773 	push	ar6
      002844 A8 10            [24] 1774 	mov	r0,_bp
      002846 08               [12] 1775 	inc	r0
      002847 EC               [12] 1776 	mov	a,r4
      002848 26               [12] 1777 	add	a,@r0
      002849 F5 82            [12] 1778 	mov	dpl,a
      00284B ED               [12] 1779 	mov	a,r5
      00284C 08               [12] 1780 	inc	r0
      00284D 36               [12] 1781 	addc	a,@r0
      00284E F5 83            [12] 1782 	mov	dph,a
      002850 E0               [24] 1783 	movx	a,@dptr
      002851 FE               [12] 1784 	mov	r6,a
      002852 BE AA 04         [24] 1785 	cjne	r6,#0xaa,00173$
      002855 D0 06            [24] 1786 	pop	ar6
      002857 80 26            [24] 1787 	sjmp	00115$
      002859                       1788 00173$:
      002859 D0 06            [24] 1789 	pop	ar6
                                   1790 ;	walk.c:159: (void)puts("Memory error");
      00285B 90 3F 94         [24] 1791 	mov	dptr,#___str_0
      00285E 75 F0 80         [24] 1792 	mov	b,#0x80
      002861 C0 07            [24] 1793 	push	ar7
      002863 C0 06            [24] 1794 	push	ar6
      002865 C0 05            [24] 1795 	push	ar5
      002867 C0 04            [24] 1796 	push	ar4
      002869 C0 03            [24] 1797 	push	ar3
      00286B C0 02            [24] 1798 	push	ar2
      00286D 12 2B BB         [24] 1799 	lcall	_puts
      002870 D0 02            [24] 1800 	pop	ar2
      002872 D0 03            [24] 1801 	pop	ar3
      002874 D0 04            [24] 1802 	pop	ar4
      002876 D0 05            [24] 1803 	pop	ar5
      002878 D0 06            [24] 1804 	pop	ar6
      00287A D0 07            [24] 1805 	pop	ar7
                                   1806 ;	walk.c:160: reset();
      00287C 12 20 88         [24] 1807 	lcall	_reset
      00287F                       1808 00115$:
                                   1809 ;	walk.c:157: for (j = 0; j < COLS; j++)
      00287F 0C               [12] 1810 	inc	r4
      002880 BC 00 01         [24] 1811 	cjne	r4,#0x00,00174$
      002883 0D               [12] 1812 	inc	r5
      002884                       1813 00174$:
      002884 C3               [12] 1814 	clr	c
      002885 EC               [12] 1815 	mov	a,r4
      002886 94 C0            [12] 1816 	subb	a,#0xc0
      002888 ED               [12] 1817 	mov	a,r5
      002889 64 80            [12] 1818 	xrl	a,#0x80
      00288B 94 80            [12] 1819 	subb	a,#0x80
      00288D 40 B3            [24] 1820 	jc	00114$
                                   1821 ;	walk.c:156: for (i = 0; i < ROWS; i++)
      00288F 74 C0            [12] 1822 	mov	a,#0xc0
      002891 2A               [12] 1823 	add	a,r2
      002892 FA               [12] 1824 	mov	r2,a
      002893 E4               [12] 1825 	clr	a
      002894 3B               [12] 1826 	addc	a,r3
      002895 FB               [12] 1827 	mov	r3,a
      002896 E5 10            [12] 1828 	mov	a,_bp
      002898 24 03            [12] 1829 	add	a,#0x03
      00289A F8               [12] 1830 	mov	r0,a
      00289B 06               [12] 1831 	inc	@r0
      00289C B6 00 02         [24] 1832 	cjne	@r0,#0x00,00176$
      00289F 08               [12] 1833 	inc	r0
      0028A0 06               [12] 1834 	inc	@r0
      0028A1                       1835 00176$:
      0028A1 E5 10            [12] 1836 	mov	a,_bp
      0028A3 24 03            [12] 1837 	add	a,#0x03
      0028A5 F8               [12] 1838 	mov	r0,a
      0028A6 C3               [12] 1839 	clr	c
      0028A7 E6               [12] 1840 	mov	a,@r0
      0028A8 94 30            [12] 1841 	subb	a,#0x30
      0028AA 08               [12] 1842 	inc	r0
      0028AB E6               [12] 1843 	mov	a,@r0
      0028AC 64 80            [12] 1844 	xrl	a,#0x80
      0028AE 94 80            [12] 1845 	subb	a,#0x80
      0028B0 50 03            [24] 1846 	jnc	00177$
      0028B2 02 28 32         [24] 1847 	ljmp	00126$
      0028B5                       1848 00177$:
      0028B5 02 27 3B         [24] 1849 	ljmp	00107$
      0028B8                       1850 00109$:
                                   1851 ;	walk.c:164: EA = 0;
                                   1852 ;	assignBit
      0028B8 C2 AF            [12] 1853 	clr	_EA
                                   1854 ;	walk.c:168: __endasm;
      0028BA 02 00 00         [24] 1855 	ljmp	0
                                   1856 ;	walk.c:170: return 0;
      0028BD 90 00 00         [24] 1857 	mov	dptr,#0x0000
                                   1858 ;	walk.c:171: }
      0028C0 85 10 81         [24] 1859 	mov	sp,_bp
      0028C3 D0 10            [24] 1860 	pop	_bp
      0028C5 22               [24] 1861 	ret
                                   1862 ;------------------------------------------------------------
                                   1863 ;Allocation info for local variables in function 'stinit'
                                   1864 ;------------------------------------------------------------
                                   1865 ;	walk.c:173: static void stinit(void) {
                                   1866 ;	-----------------------------------------
                                   1867 ;	 function stinit
                                   1868 ;	-----------------------------------------
      0028C6                       1869 _stinit:
                                   1870 ;	walk.c:174: sp = -1;
      0028C6 90 F4 00         [24] 1871 	mov	dptr,#_sp
      0028C9 74 FF            [12] 1872 	mov	a,#0xff
      0028CB F0               [24] 1873 	movx	@dptr,a
      0028CC A3               [24] 1874 	inc	dptr
      0028CD F0               [24] 1875 	movx	@dptr,a
                                   1876 ;	walk.c:175: return;
                                   1877 ;	walk.c:176: }
      0028CE 22               [24] 1878 	ret
                                   1879 ;------------------------------------------------------------
                                   1880 ;Allocation info for local variables in function 'stpush'
                                   1881 ;------------------------------------------------------------
                                   1882 ;t                         Allocated to registers r5 r6 r7 
                                   1883 ;------------------------------------------------------------
                                   1884 ;	walk.c:178: static int stpush(struct node *t) {
                                   1885 ;	-----------------------------------------
                                   1886 ;	 function stpush
                                   1887 ;	-----------------------------------------
      0028CF                       1888 _stpush:
      0028CF AD 82            [24] 1889 	mov	r5,dpl
      0028D1 AE 83            [24] 1890 	mov	r6,dph
      0028D3 AF F0            [24] 1891 	mov	r7,b
                                   1892 ;	walk.c:179: if (sp == (SMAX - 1)) return 0;
      0028D5 90 F4 00         [24] 1893 	mov	dptr,#_sp
      0028D8 E0               [24] 1894 	movx	a,@dptr
      0028D9 FB               [12] 1895 	mov	r3,a
      0028DA A3               [24] 1896 	inc	dptr
      0028DB E0               [24] 1897 	movx	a,@dptr
      0028DC FC               [12] 1898 	mov	r4,a
      0028DD BB FF 07         [24] 1899 	cjne	r3,#0xff,00102$
      0028E0 BC 23 04         [24] 1900 	cjne	r4,#0x23,00102$
      0028E3 90 00 00         [24] 1901 	mov	dptr,#0x0000
      0028E6 22               [24] 1902 	ret
      0028E7                       1903 00102$:
                                   1904 ;	walk.c:180: sp++;
      0028E7 90 F4 00         [24] 1905 	mov	dptr,#_sp
      0028EA 74 01            [12] 1906 	mov	a,#0x01
      0028EC 2B               [12] 1907 	add	a,r3
      0028ED F0               [24] 1908 	movx	@dptr,a
      0028EE E4               [12] 1909 	clr	a
      0028EF 3C               [12] 1910 	addc	a,r4
      0028F0 A3               [24] 1911 	inc	dptr
      0028F1 F0               [24] 1912 	movx	@dptr,a
                                   1913 ;	walk.c:181: stack[sp] = *t;
      0028F2 90 F4 00         [24] 1914 	mov	dptr,#_sp
      0028F5 E0               [24] 1915 	movx	a,@dptr
      0028F6 FB               [12] 1916 	mov	r3,a
      0028F7 A3               [24] 1917 	inc	dptr
      0028F8 E0               [24] 1918 	movx	a,@dptr
      0028F9 FC               [12] 1919 	mov	r4,a
      0028FA EB               [12] 1920 	mov	a,r3
      0028FB 2B               [12] 1921 	add	a,r3
      0028FC FB               [12] 1922 	mov	r3,a
      0028FD EC               [12] 1923 	mov	a,r4
      0028FE 33               [12] 1924 	rlc	a
      0028FF FC               [12] 1925 	mov	r4,a
      002900 EB               [12] 1926 	mov	a,r3
      002901 2B               [12] 1927 	add	a,r3
      002902 FB               [12] 1928 	mov	r3,a
      002903 EC               [12] 1929 	mov	a,r4
      002904 33               [12] 1930 	rlc	a
      002905 FC               [12] 1931 	mov	r4,a
      002906 EB               [12] 1932 	mov	a,r3
      002907 24 00            [12] 1933 	add	a,#_stack
      002909 FB               [12] 1934 	mov	r3,a
      00290A EC               [12] 1935 	mov	a,r4
      00290B 34 64            [12] 1936 	addc	a,#(_stack >> 8)
      00290D FC               [12] 1937 	mov	r4,a
      00290E 7A 00            [12] 1938 	mov	r2,#0x00
      002910 74 04            [12] 1939 	mov	a,#0x04
      002912 C0 E0            [24] 1940 	push	acc
      002914 E4               [12] 1941 	clr	a
      002915 C0 E0            [24] 1942 	push	acc
      002917 C0 05            [24] 1943 	push	ar5
      002919 C0 06            [24] 1944 	push	ar6
      00291B C0 07            [24] 1945 	push	ar7
      00291D 8B 82            [24] 1946 	mov	dpl,r3
      00291F 8C 83            [24] 1947 	mov	dph,r4
      002921 8A F0            [24] 1948 	mov	b,r2
      002923 12 2B 28         [24] 1949 	lcall	___memcpy
      002926 E5 81            [12] 1950 	mov	a,sp
      002928 24 FB            [12] 1951 	add	a,#0xfb
      00292A F5 81            [12] 1952 	mov	sp,a
                                   1953 ;	walk.c:182: return 1;
      00292C 90 00 01         [24] 1954 	mov	dptr,#0x0001
                                   1955 ;	walk.c:183: }
      00292F 22               [24] 1956 	ret
                                   1957 ;------------------------------------------------------------
                                   1958 ;Allocation info for local variables in function 'stpop'
                                   1959 ;------------------------------------------------------------
                                   1960 ;t                         Allocated to registers r5 r6 r7 
                                   1961 ;------------------------------------------------------------
                                   1962 ;	walk.c:185: static int stpop(struct node *t) {
                                   1963 ;	-----------------------------------------
                                   1964 ;	 function stpop
                                   1965 ;	-----------------------------------------
      002930                       1966 _stpop:
      002930 AD 82            [24] 1967 	mov	r5,dpl
      002932 AE 83            [24] 1968 	mov	r6,dph
      002934 AF F0            [24] 1969 	mov	r7,b
                                   1970 ;	walk.c:186: if (sp == -1) return 0;
      002936 90 F4 00         [24] 1971 	mov	dptr,#_sp
      002939 E0               [24] 1972 	movx	a,@dptr
      00293A FB               [12] 1973 	mov	r3,a
      00293B A3               [24] 1974 	inc	dptr
      00293C E0               [24] 1975 	movx	a,@dptr
      00293D FC               [12] 1976 	mov	r4,a
      00293E BB FF 07         [24] 1977 	cjne	r3,#0xff,00102$
      002941 BC FF 04         [24] 1978 	cjne	r4,#0xff,00102$
      002944 90 00 00         [24] 1979 	mov	dptr,#0x0000
      002947 22               [24] 1980 	ret
      002948                       1981 00102$:
                                   1982 ;	walk.c:187: *t = stack[sp];
      002948 EB               [12] 1983 	mov	a,r3
      002949 2B               [12] 1984 	add	a,r3
      00294A FB               [12] 1985 	mov	r3,a
      00294B EC               [12] 1986 	mov	a,r4
      00294C 33               [12] 1987 	rlc	a
      00294D FC               [12] 1988 	mov	r4,a
      00294E EB               [12] 1989 	mov	a,r3
      00294F 2B               [12] 1990 	add	a,r3
      002950 FB               [12] 1991 	mov	r3,a
      002951 EC               [12] 1992 	mov	a,r4
      002952 33               [12] 1993 	rlc	a
      002953 FC               [12] 1994 	mov	r4,a
      002954 EB               [12] 1995 	mov	a,r3
      002955 24 00            [12] 1996 	add	a,#_stack
      002957 FB               [12] 1997 	mov	r3,a
      002958 EC               [12] 1998 	mov	a,r4
      002959 34 64            [12] 1999 	addc	a,#(_stack >> 8)
      00295B FC               [12] 2000 	mov	r4,a
      00295C 7A 00            [12] 2001 	mov	r2,#0x00
      00295E 74 04            [12] 2002 	mov	a,#0x04
      002960 C0 E0            [24] 2003 	push	acc
      002962 E4               [12] 2004 	clr	a
      002963 C0 E0            [24] 2005 	push	acc
      002965 C0 03            [24] 2006 	push	ar3
      002967 C0 04            [24] 2007 	push	ar4
      002969 C0 02            [24] 2008 	push	ar2
      00296B 8D 82            [24] 2009 	mov	dpl,r5
      00296D 8E 83            [24] 2010 	mov	dph,r6
      00296F 8F F0            [24] 2011 	mov	b,r7
      002971 12 2B 28         [24] 2012 	lcall	___memcpy
      002974 E5 81            [12] 2013 	mov	a,sp
      002976 24 FB            [12] 2014 	add	a,#0xfb
      002978 F5 81            [12] 2015 	mov	sp,a
                                   2016 ;	walk.c:188: sp--;
      00297A 90 F4 00         [24] 2017 	mov	dptr,#_sp
      00297D E0               [24] 2018 	movx	a,@dptr
      00297E 24 FF            [12] 2019 	add	a,#0xff
      002980 FE               [12] 2020 	mov	r6,a
      002981 A3               [24] 2021 	inc	dptr
      002982 E0               [24] 2022 	movx	a,@dptr
      002983 34 FF            [12] 2023 	addc	a,#0xff
      002985 FF               [12] 2024 	mov	r7,a
      002986 90 F4 00         [24] 2025 	mov	dptr,#_sp
      002989 EE               [12] 2026 	mov	a,r6
      00298A F0               [24] 2027 	movx	@dptr,a
      00298B EF               [12] 2028 	mov	a,r7
      00298C A3               [24] 2029 	inc	dptr
      00298D F0               [24] 2030 	movx	@dptr,a
                                   2031 ;	walk.c:189: return 1;
      00298E 90 00 01         [24] 2032 	mov	dptr,#0x0001
                                   2033 ;	walk.c:190: }
      002991 22               [24] 2034 	ret
                                   2035 	.area CSEG    (CODE)
                                   2036 	.area CONST   (CODE)
      003F74                       2037 _neigh:
      003F74 FF FF                 2038 	.byte #0xff, #0xff	; -1
      003F76 FF FF                 2039 	.byte #0xff, #0xff	; -1
      003F78 FF FF                 2040 	.byte #0xff, #0xff	; -1
      003F7A 00 00                 2041 	.byte #0x00, #0x00	;  0
      003F7C FF FF                 2042 	.byte #0xff, #0xff	; -1
      003F7E 01 00                 2043 	.byte #0x01, #0x00	;  1
      003F80 00 00                 2044 	.byte #0x00, #0x00	;  0
      003F82 FF FF                 2045 	.byte #0xff, #0xff	; -1
      003F84 00 00                 2046 	.byte #0x00, #0x00	;  0
      003F86 01 00                 2047 	.byte #0x01, #0x00	;  1
      003F88 01 00                 2048 	.byte #0x01, #0x00	;  1
      003F8A FF FF                 2049 	.byte #0xff, #0xff	; -1
      003F8C 01 00                 2050 	.byte #0x01, #0x00	;  1
      003F8E 00 00                 2051 	.byte #0x00, #0x00	;  0
      003F90 01 00                 2052 	.byte #0x01, #0x00	;  1
      003F92 01 00                 2053 	.byte #0x01, #0x00	;  1
                                   2054 	.area CONST   (CODE)
      003F94                       2055 ___str_0:
      003F94 4D 65 6D 6F 72 79 20  2056 	.ascii "Memory error"
             65 72 72 6F 72
      003FA0 00                    2057 	.db 0x00
                                   2058 	.area CSEG    (CODE)
                                   2059 	.area CONST   (CODE)
      003FA1                       2060 ___str_1:
      003FA1 1B                    2061 	.db 0x1b
      003FA2 5B 25 64 3B 25 64 48  2062 	.ascii "[%d;%dHo"
             6F
      003FAA 00                    2063 	.db 0x00
                                   2064 	.area CSEG    (CODE)
                                   2065 	.area CONST   (CODE)
      003FAB                       2066 ___str_2:
      003FAB 1B                    2067 	.db 0x1b
      003FAC 5B 31 3B 31 48 25 20  2068 	.ascii "[1;1H% 8d% 8d% 8d"
             38 64 25 20 38 64 25
             20 38 64
      003FBD 00                    2069 	.db 0x00
                                   2070 	.area CSEG    (CODE)
                                   2071 	.area CONST   (CODE)
      003FBE                       2072 ___str_3:
      003FBE 1B                    2073 	.db 0x1b
      003FBF 5B 25 64 3B 25 64 48  2074 	.ascii "[%d;%dH."
             2E
      003FC7 00                    2075 	.db 0x00
                                   2076 	.area CSEG    (CODE)
                                   2077 	.area CONST   (CODE)
      003FC8                       2078 ___str_4:
      003FC8 1B                    2079 	.db 0x1b
      003FC9 5B 32 4A              2080 	.ascii "[2J"
      003FCC 00                    2081 	.db 0x00
                                   2082 	.area CSEG    (CODE)
                                   2083 	.area XINIT   (CODE)
                                   2084 	.area CABS    (ABS,CODE)
