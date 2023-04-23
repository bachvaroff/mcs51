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
                                    368 ;initial                   Allocated to stack - _bp +3
                                    369 ;i                         Allocated to stack - _bp +7
                                    370 ;j                         Allocated to registers r4 r5 
                                    371 ;sloc0                     Allocated to stack - _bp +1
                                    372 ;R                         Allocated with name '_main_R_65536_64'
                                    373 ;------------------------------------------------------------
                                    374 ;	walk.c:131: static volatile __xdata int *R = (__xdata int *)0xfffe;
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
      002006 02 26 7C         [24]  389 	ljmp	_main
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
      0020B4 12 2B F0         [24]  514 	lcall	__gptrget
      0020B7 F6               [12]  515 	mov	@r0,a
      0020B8 A3               [24]  516 	inc	dptr
      0020B9 12 2B F0         [24]  517 	lcall	__gptrget
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
      0020DE 24 EA            [12]  546 	add	a,#_neigh
      0020E0 F5 82            [12]  547 	mov	dpl,a
      0020E2 08               [12]  548 	inc	r0
      0020E3 E6               [12]  549 	mov	a,@r0
      0020E4 34 3E            [12]  550 	addc	a,#(_neigh >> 8)
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
      002107 12 29 E5         [24]  577 	lcall	__gptrput
      00210A A3               [24]  578 	inc	dptr
      00210B EE               [12]  579 	mov	a,r6
      00210C 12 29 E5         [24]  580 	lcall	__gptrput
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
      002131 12 2B F0         [24]  608 	lcall	__gptrget
      002134 FA               [12]  609 	mov	r2,a
      002135 A3               [24]  610 	inc	dptr
      002136 12 2B F0         [24]  611 	lcall	__gptrget
      002139 FB               [12]  612 	mov	r3,a
      00213A E5 10            [12]  613 	mov	a,_bp
      00213C 24 06            [12]  614 	add	a,#0x06
      00213E F8               [12]  615 	mov	r0,a
      00213F E6               [12]  616 	mov	a,@r0
      002140 24 EA            [12]  617 	add	a,#_neigh
      002142 FC               [12]  618 	mov	r4,a
      002143 08               [12]  619 	inc	r0
      002144 E6               [12]  620 	mov	a,@r0
      002145 34 3E            [12]  621 	addc	a,#(_neigh >> 8)
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
      002169 12 29 E5         [24]  649 	lcall	__gptrput
      00216C A3               [24]  650 	inc	dptr
      00216D EB               [12]  651 	mov	a,r3
      00216E 12 29 E5         [24]  652 	lcall	__gptrput
                                    653 ;	walk.c:77: if (t->r < 0) t->r += ROWS;
      002171 A8 10            [24]  654 	mov	r0,_bp
      002173 08               [12]  655 	inc	r0
      002174 86 82            [24]  656 	mov	dpl,@r0
      002176 08               [12]  657 	inc	r0
      002177 86 83            [24]  658 	mov	dph,@r0
      002179 08               [12]  659 	inc	r0
      00217A 86 F0            [24]  660 	mov	b,@r0
      00217C 12 2B F0         [24]  661 	lcall	__gptrget
      00217F FD               [12]  662 	mov	r5,a
      002180 A3               [24]  663 	inc	dptr
      002181 12 2B F0         [24]  664 	lcall	__gptrget
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
      00219C 12 29 E5         [24]  682 	lcall	__gptrput
      00219F A3               [24]  683 	inc	dptr
      0021A0 EE               [12]  684 	mov	a,r6
      0021A1 12 29 E5         [24]  685 	lcall	__gptrput
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
      0021C5 12 29 E5         [24]  710 	lcall	__gptrput
      0021C8 A3               [24]  711 	inc	dptr
      0021C9 EC               [12]  712 	mov	a,r4
      0021CA 12 29 E5         [24]  713 	lcall	__gptrput
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
      0021DA 12 2B F0         [24]  724 	lcall	__gptrget
      0021DD A3               [24]  725 	inc	dptr
      0021DE 12 2B F0         [24]  726 	lcall	__gptrget
      0021E1 30 E7 35         [24]  727 	jnb	acc.7,00109$
      0021E4 E5 10            [12]  728 	mov	a,_bp
      0021E6 24 08            [12]  729 	add	a,#0x08
      0021E8 F8               [12]  730 	mov	r0,a
      0021E9 86 82            [24]  731 	mov	dpl,@r0
      0021EB 08               [12]  732 	inc	r0
      0021EC 86 83            [24]  733 	mov	dph,@r0
      0021EE 08               [12]  734 	inc	r0
      0021EF 86 F0            [24]  735 	mov	b,@r0
      0021F1 12 2B F0         [24]  736 	lcall	__gptrget
      0021F4 FE               [12]  737 	mov	r6,a
      0021F5 A3               [24]  738 	inc	dptr
      0021F6 12 2B F0         [24]  739 	lcall	__gptrget
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
      00220F 12 29 E5         [24]  756 	lcall	__gptrput
      002212 A3               [24]  757 	inc	dptr
      002213 EF               [12]  758 	mov	a,r7
      002214 12 29 E5         [24]  759 	lcall	__gptrput
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
      002226 12 2B F0         [24]  771 	lcall	__gptrget
      002229 FE               [12]  772 	mov	r6,a
      00222A A3               [24]  773 	inc	dptr
      00222B 12 2B F0         [24]  774 	lcall	__gptrget
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
      002247 12 2B F0         [24]  791 	lcall	__gptrget
      00224A FE               [12]  792 	mov	r6,a
      00224B A3               [24]  793 	inc	dptr
      00224C 12 2B F0         [24]  794 	lcall	__gptrget
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
      002266 12 29 E5         [24]  811 	lcall	__gptrput
      002269 A3               [24]  812 	inc	dptr
      00226A EF               [12]  813 	mov	a,r7
      00226B 12 29 E5         [24]  814 	lcall	__gptrput
      00226E                        815 00110$:
                                    816 ;	walk.c:82: if (g[t->r][t->c] == 0xaa) return 0;
      00226E A8 10            [24]  817 	mov	r0,_bp
      002270 08               [12]  818 	inc	r0
      002271 86 82            [24]  819 	mov	dpl,@r0
      002273 08               [12]  820 	inc	r0
      002274 86 83            [24]  821 	mov	dph,@r0
      002276 08               [12]  822 	inc	r0
      002277 86 F0            [24]  823 	mov	b,@r0
      002279 12 2B F0         [24]  824 	lcall	__gptrget
      00227C FE               [12]  825 	mov	r6,a
      00227D A3               [24]  826 	inc	dptr
      00227E 12 2B F0         [24]  827 	lcall	__gptrget
      002281 FF               [12]  828 	mov	r7,a
      002282 C0 06            [24]  829 	push	ar6
      002284 C0 07            [24]  830 	push	ar7
      002286 90 00 C0         [24]  831 	mov	dptr,#0x00c0
      002289 12 2A 00         [24]  832 	lcall	__mulint
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
      0022A9 12 2B F0         [24]  851 	lcall	__gptrget
      0022AC FC               [12]  852 	mov	r4,a
      0022AD A3               [24]  853 	inc	dptr
      0022AE 12 2B F0         [24]  854 	lcall	__gptrget
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
      0022CF 12 2B F0         [24]  876 	lcall	__gptrget
      0022D2 FE               [12]  877 	mov	r6,a
      0022D3 A3               [24]  878 	inc	dptr
      0022D4 12 2B F0         [24]  879 	lcall	__gptrget
      0022D7 FF               [12]  880 	mov	r7,a
      0022D8 C0 06            [24]  881 	push	ar6
      0022DA C0 07            [24]  882 	push	ar7
      0022DC 90 00 C0         [24]  883 	mov	dptr,#0x00c0
      0022DF 12 2A 00         [24]  884 	lcall	__mulint
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
      0022FF 12 2B F0         [24]  903 	lcall	__gptrget
      002302 FC               [12]  904 	mov	r4,a
      002303 A3               [24]  905 	inc	dptr
      002304 12 2B F0         [24]  906 	lcall	__gptrget
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
      002317 90 3F 0A         [24]  920 	mov	dptr,#___str_0
      00231A 75 F0 80         [24]  921 	mov	b,#0x80
      00231D 12 2B 31         [24]  922 	lcall	_puts
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
                                    937 ;cur                       Allocated to stack - _bp +11
                                    938 ;t                         Allocated to stack - _bp +15
                                    939 ;j                         Allocated to stack - _bp +19
                                    940 ;f                         Allocated to registers r3 r2 
                                    941 ;sloc0                     Allocated to stack - _bp +1
                                    942 ;sloc1                     Allocated to stack - _bp +2
                                    943 ;sloc2                     Allocated to stack - _bp +3
                                    944 ;sloc3                     Allocated to stack - _bp +19
                                    945 ;sloc4                     Allocated to stack - _bp +4
                                    946 ;sloc5                     Allocated to stack - _bp +22
                                    947 ;sloc6                     Allocated to stack - _bp +5
                                    948 ;sloc7                     Allocated to stack - _bp +6
                                    949 ;sloc8                     Allocated to stack - _bp +7
                                    950 ;sloc9                     Allocated to stack - _bp +8
                                    951 ;------------------------------------------------------------
                                    952 ;	walk.c:91: static void walk(struct node *nstart) {
                                    953 ;	-----------------------------------------
                                    954 ;	 function walk
                                    955 ;	-----------------------------------------
      00232C                        956 _walk:
      00232C C0 10            [24]  957 	push	_bp
      00232E E5 81            [12]  958 	mov	a,sp
      002330 F5 10            [12]  959 	mov	_bp,a
      002332 24 14            [12]  960 	add	a,#0x14
      002334 F5 81            [12]  961 	mov	sp,a
      002336 AD 82            [24]  962 	mov	r5,dpl
      002338 AE 83            [24]  963 	mov	r6,dph
      00233A AF F0            [24]  964 	mov	r7,b
                                    965 ;	walk.c:95: cur = *nstart;
      00233C E5 10            [12]  966 	mov	a,_bp
      00233E 24 0B            [12]  967 	add	a,#0x0b
      002340 F9               [12]  968 	mov	r1,a
      002341 FA               [12]  969 	mov	r2,a
      002342 7B 00            [12]  970 	mov	r3,#0x00
      002344 7C 40            [12]  971 	mov	r4,#0x40
      002346 C0 01            [24]  972 	push	ar1
      002348 74 04            [12]  973 	mov	a,#0x04
      00234A C0 E0            [24]  974 	push	acc
      00234C E4               [12]  975 	clr	a
      00234D C0 E0            [24]  976 	push	acc
      00234F C0 05            [24]  977 	push	ar5
      002351 C0 06            [24]  978 	push	ar6
      002353 C0 07            [24]  979 	push	ar7
      002355 8A 82            [24]  980 	mov	dpl,r2
      002357 8B 83            [24]  981 	mov	dph,r3
      002359 8C F0            [24]  982 	mov	b,r4
      00235B 12 2A 9E         [24]  983 	lcall	___memcpy
      00235E E5 81            [12]  984 	mov	a,sp
      002360 24 FB            [12]  985 	add	a,#0xfb
      002362 F5 81            [12]  986 	mov	sp,a
      002364 D0 01            [24]  987 	pop	ar1
                                    988 ;	walk.c:97: process:
      002366 E5 10            [12]  989 	mov	a,_bp
      002368 24 07            [12]  990 	add	a,#0x07
      00236A F8               [12]  991 	mov	r0,a
      00236B A6 01            [24]  992 	mov	@r0,ar1
      00236D E5 10            [12]  993 	mov	a,_bp
      00236F 24 0F            [12]  994 	add	a,#0x0f
      002371 FE               [12]  995 	mov	r6,a
      002372 E5 10            [12]  996 	mov	a,_bp
      002374 24 03            [12]  997 	add	a,#0x03
      002376 F8               [12]  998 	mov	r0,a
      002377 A6 01            [24]  999 	mov	@r0,ar1
      002379 E5 10            [12] 1000 	mov	a,_bp
      00237B 24 06            [12] 1001 	add	a,#0x06
      00237D F8               [12] 1002 	mov	r0,a
      00237E A6 01            [24] 1003 	mov	@r0,ar1
      002380 E5 10            [12] 1004 	mov	a,_bp
      002382 24 05            [12] 1005 	add	a,#0x05
      002384 F8               [12] 1006 	mov	r0,a
      002385 A6 06            [24] 1007 	mov	@r0,ar6
      002387 E5 10            [12] 1008 	mov	a,_bp
      002389 24 04            [12] 1009 	add	a,#0x04
      00238B F8               [12] 1010 	mov	r0,a
      00238C A6 01            [24] 1011 	mov	@r0,ar1
      00238E A8 10            [24] 1012 	mov	r0,_bp
      002390 08               [12] 1013 	inc	r0
      002391 A6 06            [24] 1014 	mov	@r0,ar6
      002393 A8 10            [24] 1015 	mov	r0,_bp
      002395 08               [12] 1016 	inc	r0
      002396 08               [12] 1017 	inc	r0
      002397 A6 01            [24] 1018 	mov	@r0,ar1
      002399 74 02            [12] 1019 	mov	a,#0x02
      00239B 29               [12] 1020 	add	a,r1
      00239C F8               [12] 1021 	mov	r0,a
      00239D                       1022 00101$:
                                   1023 ;	walk.c:98: g[cur.r][cur.c] = 0xaa;
      00239D 87 02            [24] 1024 	mov	ar2,@r1
      00239F 09               [12] 1025 	inc	r1
      0023A0 87 05            [24] 1026 	mov	ar5,@r1
      0023A2 19               [12] 1027 	dec	r1
      0023A3 C0 06            [24] 1028 	push	ar6
      0023A5 C0 01            [24] 1029 	push	ar1
      0023A7 C0 00            [24] 1030 	push	ar0
      0023A9 C0 02            [24] 1031 	push	ar2
      0023AB C0 05            [24] 1032 	push	ar5
      0023AD 90 00 C0         [24] 1033 	mov	dptr,#0x00c0
      0023B0 12 2A 00         [24] 1034 	lcall	__mulint
      0023B3 AA 82            [24] 1035 	mov	r2,dpl
      0023B5 AD 83            [24] 1036 	mov	r5,dph
      0023B7 15 81            [12] 1037 	dec	sp
      0023B9 15 81            [12] 1038 	dec	sp
      0023BB D0 00            [24] 1039 	pop	ar0
      0023BD D0 01            [24] 1040 	pop	ar1
      0023BF D0 06            [24] 1041 	pop	ar6
      0023C1 EA               [12] 1042 	mov	a,r2
      0023C2 24 00            [12] 1043 	add	a,#_g
      0023C4 FF               [12] 1044 	mov	r7,a
      0023C5 ED               [12] 1045 	mov	a,r5
      0023C6 34 40            [12] 1046 	addc	a,#(_g >> 8)
      0023C8 FC               [12] 1047 	mov	r4,a
      0023C9 86 02            [24] 1048 	mov	ar2,@r0
      0023CB 08               [12] 1049 	inc	r0
      0023CC 86 05            [24] 1050 	mov	ar5,@r0
      0023CE 18               [12] 1051 	dec	r0
      0023CF EA               [12] 1052 	mov	a,r2
      0023D0 2F               [12] 1053 	add	a,r7
      0023D1 F5 82            [12] 1054 	mov	dpl,a
      0023D3 ED               [12] 1055 	mov	a,r5
      0023D4 3C               [12] 1056 	addc	a,r4
      0023D5 F5 83            [12] 1057 	mov	dph,a
      0023D7 74 AA            [12] 1058 	mov	a,#0xaa
      0023D9 F0               [24] 1059 	movx	@dptr,a
                                   1060 ;	walk.c:99: printf("\033[%d;%dHo", cur.r + 1, cur.c + 1);
      0023DA 86 02            [24] 1061 	mov	ar2,@r0
      0023DC 08               [12] 1062 	inc	r0
      0023DD 86 05            [24] 1063 	mov	ar5,@r0
      0023DF 18               [12] 1064 	dec	r0
      0023E0 74 01            [12] 1065 	mov	a,#0x01
      0023E2 2A               [12] 1066 	add	a,r2
      0023E3 FF               [12] 1067 	mov	r7,a
      0023E4 E4               [12] 1068 	clr	a
      0023E5 3D               [12] 1069 	addc	a,r5
      0023E6 FC               [12] 1070 	mov	r4,a
      0023E7 87 02            [24] 1071 	mov	ar2,@r1
      0023E9 09               [12] 1072 	inc	r1
      0023EA 87 05            [24] 1073 	mov	ar5,@r1
      0023EC 19               [12] 1074 	dec	r1
      0023ED 0A               [12] 1075 	inc	r2
      0023EE BA 00 01         [24] 1076 	cjne	r2,#0x00,00160$
      0023F1 0D               [12] 1077 	inc	r5
      0023F2                       1078 00160$:
      0023F2 C0 06            [24] 1079 	push	ar6
      0023F4 C0 01            [24] 1080 	push	ar1
      0023F6 C0 00            [24] 1081 	push	ar0
      0023F8 C0 07            [24] 1082 	push	ar7
      0023FA C0 04            [24] 1083 	push	ar4
      0023FC C0 02            [24] 1084 	push	ar2
      0023FE C0 05            [24] 1085 	push	ar5
      002400 74 17            [12] 1086 	mov	a,#___str_1
      002402 C0 E0            [24] 1087 	push	acc
      002404 74 3F            [12] 1088 	mov	a,#(___str_1 >> 8)
      002406 C0 E0            [24] 1089 	push	acc
      002408 74 80            [12] 1090 	mov	a,#0x80
      00240A C0 E0            [24] 1091 	push	acc
      00240C 12 2B B7         [24] 1092 	lcall	_printf
      00240F E5 81            [12] 1093 	mov	a,sp
      002411 24 F9            [12] 1094 	add	a,#0xf9
      002413 F5 81            [12] 1095 	mov	sp,a
      002415 D0 00            [24] 1096 	pop	ar0
      002417 D0 01            [24] 1097 	pop	ar1
      002419 D0 06            [24] 1098 	pop	ar6
                                   1099 ;	walk.c:127: return;
                                   1100 ;	walk.c:102: for (j = 0, f = 0; j < NMAX; j++) {
      00241B                       1101 00125$:
      00241B 7B 00            [12] 1102 	mov	r3,#0x00
      00241D 7A 00            [12] 1103 	mov	r2,#0x00
      00241F C0 00            [24] 1104 	push	ar0
      002421 E5 10            [12] 1105 	mov	a,_bp
      002423 24 13            [12] 1106 	add	a,#0x13
      002425 F8               [12] 1107 	mov	r0,a
      002426 E4               [12] 1108 	clr	a
      002427 F6               [12] 1109 	mov	@r0,a
      002428 08               [12] 1110 	inc	r0
      002429 F6               [12] 1111 	mov	@r0,a
      00242A D0 00            [24] 1112 	pop	ar0
      00242C                       1113 00120$:
      00242C C0 00            [24] 1114 	push	ar0
      00242E E5 10            [12] 1115 	mov	a,_bp
      002430 24 13            [12] 1116 	add	a,#0x13
      002432 F8               [12] 1117 	mov	r0,a
      002433 C3               [12] 1118 	clr	c
      002434 E6               [12] 1119 	mov	a,@r0
      002435 94 08            [12] 1120 	subb	a,#0x08
      002437 08               [12] 1121 	inc	r0
      002438 E6               [12] 1122 	mov	a,@r0
      002439 64 80            [12] 1123 	xrl	a,#0x80
      00243B 94 80            [12] 1124 	subb	a,#0x80
      00243D D0 00            [24] 1125 	pop	ar0
      00243F 40 03            [24] 1126 	jc	00161$
      002441 02 24 CE         [24] 1127 	ljmp	00106$
      002444                       1128 00161$:
                                   1129 ;	walk.c:103: if (!update(&t, &cur, j)) continue;
      002444 C0 00            [24] 1130 	push	ar0
      002446 C0 00            [24] 1131 	push	ar0
      002448 E5 10            [12] 1132 	mov	a,_bp
      00244A 24 07            [12] 1133 	add	a,#0x07
      00244C F8               [12] 1134 	mov	r0,a
      00244D C0 01            [24] 1135 	push	ar1
      00244F E5 10            [12] 1136 	mov	a,_bp
      002451 24 08            [12] 1137 	add	a,#0x08
      002453 F9               [12] 1138 	mov	r1,a
      002454 E6               [12] 1139 	mov	a,@r0
      002455 F7               [12] 1140 	mov	@r1,a
      002456 09               [12] 1141 	inc	r1
      002457 77 00            [12] 1142 	mov	@r1,#0x00
      002459 09               [12] 1143 	inc	r1
      00245A 77 40            [12] 1144 	mov	@r1,#0x40
      00245C D0 01            [24] 1145 	pop	ar1
      00245E D0 00            [24] 1146 	pop	ar0
      002460 8E 04            [24] 1147 	mov	ar4,r6
      002462 7D 00            [12] 1148 	mov	r5,#0x00
      002464 7F 40            [12] 1149 	mov	r7,#0x40
      002466 C0 06            [24] 1150 	push	ar6
      002468 C0 03            [24] 1151 	push	ar3
      00246A C0 02            [24] 1152 	push	ar2
      00246C C0 01            [24] 1153 	push	ar1
      00246E C0 00            [24] 1154 	push	ar0
      002470 85 00 F0         [24] 1155 	mov	b,ar0
      002473 E5 10            [12] 1156 	mov	a,_bp
      002475 24 13            [12] 1157 	add	a,#0x13
      002477 F8               [12] 1158 	mov	r0,a
      002478 E6               [12] 1159 	mov	a,@r0
      002479 C0 E0            [24] 1160 	push	acc
      00247B 08               [12] 1161 	inc	r0
      00247C E6               [12] 1162 	mov	a,@r0
      00247D C0 E0            [24] 1163 	push	acc
      00247F A8 F0            [24] 1164 	mov	r0,b
      002481 85 00 F0         [24] 1165 	mov	b,ar0
      002484 E5 10            [12] 1166 	mov	a,_bp
      002486 24 08            [12] 1167 	add	a,#0x08
      002488 F8               [12] 1168 	mov	r0,a
      002489 E6               [12] 1169 	mov	a,@r0
      00248A C0 E0            [24] 1170 	push	acc
      00248C 08               [12] 1171 	inc	r0
      00248D E6               [12] 1172 	mov	a,@r0
      00248E C0 E0            [24] 1173 	push	acc
      002490 08               [12] 1174 	inc	r0
      002491 E6               [12] 1175 	mov	a,@r0
      002492 C0 E0            [24] 1176 	push	acc
      002494 8C 82            [24] 1177 	mov	dpl,r4
      002496 8D 83            [24] 1178 	mov	dph,r5
      002498 8F F0            [24] 1179 	mov	b,r7
      00249A 12 20 8B         [24] 1180 	lcall	_update
      00249D AD 82            [24] 1181 	mov	r5,dpl
      00249F AF 83            [24] 1182 	mov	r7,dph
      0024A1 E5 81            [12] 1183 	mov	a,sp
      0024A3 24 FB            [12] 1184 	add	a,#0xfb
      0024A5 F5 81            [12] 1185 	mov	sp,a
      0024A7 D0 00            [24] 1186 	pop	ar0
      0024A9 D0 01            [24] 1187 	pop	ar1
      0024AB D0 02            [24] 1188 	pop	ar2
      0024AD D0 03            [24] 1189 	pop	ar3
      0024AF D0 06            [24] 1190 	pop	ar6
      0024B1 D0 00            [24] 1191 	pop	ar0
      0024B3 ED               [12] 1192 	mov	a,r5
      0024B4 4F               [12] 1193 	orl	a,r7
      0024B5 60 05            [24] 1194 	jz	00105$
                                   1195 ;	walk.c:104: f++;
      0024B7 0B               [12] 1196 	inc	r3
      0024B8 BB 00 01         [24] 1197 	cjne	r3,#0x00,00163$
      0024BB 0A               [12] 1198 	inc	r2
      0024BC                       1199 00163$:
      0024BC                       1200 00105$:
                                   1201 ;	walk.c:102: for (j = 0, f = 0; j < NMAX; j++) {
      0024BC C0 00            [24] 1202 	push	ar0
      0024BE E5 10            [12] 1203 	mov	a,_bp
      0024C0 24 13            [12] 1204 	add	a,#0x13
      0024C2 F8               [12] 1205 	mov	r0,a
      0024C3 06               [12] 1206 	inc	@r0
      0024C4 B6 00 02         [24] 1207 	cjne	@r0,#0x00,00164$
      0024C7 08               [12] 1208 	inc	r0
      0024C8 06               [12] 1209 	inc	@r0
      0024C9                       1210 00164$:
      0024C9 D0 00            [24] 1211 	pop	ar0
      0024CB 02 24 2C         [24] 1212 	ljmp	00120$
      0024CE                       1213 00106$:
                                   1214 ;	walk.c:107: if (f) {
      0024CE EB               [12] 1215 	mov	a,r3
      0024CF 4A               [12] 1216 	orl	a,r2
      0024D0 70 03            [24] 1217 	jnz	00165$
      0024D2 02 26 07         [24] 1218 	ljmp	00115$
      0024D5                       1219 00165$:
                                   1220 ;	walk.c:108: while (1) {
      0024D5                       1221 00112$:
                                   1222 ;	walk.c:109: j = rand() % NMAX;
      0024D5 C0 00            [24] 1223 	push	ar0
      0024D7 C0 06            [24] 1224 	push	ar6
      0024D9 C0 01            [24] 1225 	push	ar1
      0024DB C0 00            [24] 1226 	push	ar0
      0024DD 12 29 08         [24] 1227 	lcall	_rand
      0024E0 AD 82            [24] 1228 	mov	r5,dpl
      0024E2 AF 83            [24] 1229 	mov	r7,dph
      0024E4 74 08            [12] 1230 	mov	a,#0x08
      0024E6 C0 E0            [24] 1231 	push	acc
      0024E8 E4               [12] 1232 	clr	a
      0024E9 C0 E0            [24] 1233 	push	acc
      0024EB 8D 82            [24] 1234 	mov	dpl,r5
      0024ED 8F 83            [24] 1235 	mov	dph,r7
      0024EF 12 2C 0C         [24] 1236 	lcall	__modsint
      0024F2 AB 82            [24] 1237 	mov	r3,dpl
      0024F4 AA 83            [24] 1238 	mov	r2,dph
      0024F6 15 81            [12] 1239 	dec	sp
      0024F8 15 81            [12] 1240 	dec	sp
      0024FA D0 00            [24] 1241 	pop	ar0
      0024FC D0 01            [24] 1242 	pop	ar1
      0024FE D0 06            [24] 1243 	pop	ar6
                                   1244 ;	walk.c:110: if (!update(&t, &cur, j)) continue;
      002500 C0 00            [24] 1245 	push	ar0
      002502 E5 10            [12] 1246 	mov	a,_bp
      002504 24 06            [12] 1247 	add	a,#0x06
      002506 F8               [12] 1248 	mov	r0,a
      002507 C0 01            [24] 1249 	push	ar1
      002509 E5 10            [12] 1250 	mov	a,_bp
      00250B 24 08            [12] 1251 	add	a,#0x08
      00250D F9               [12] 1252 	mov	r1,a
      00250E E6               [12] 1253 	mov	a,@r0
      00250F F7               [12] 1254 	mov	@r1,a
      002510 09               [12] 1255 	inc	r1
      002511 77 00            [12] 1256 	mov	@r1,#0x00
      002513 09               [12] 1257 	inc	r1
      002514 77 40            [12] 1258 	mov	@r1,#0x40
      002516 D0 01            [24] 1259 	pop	ar1
      002518 E5 10            [12] 1260 	mov	a,_bp
      00251A 24 05            [12] 1261 	add	a,#0x05
      00251C F8               [12] 1262 	mov	r0,a
      00251D 86 04            [24] 1263 	mov	ar4,@r0
      00251F 7D 00            [12] 1264 	mov	r5,#0x00
      002521 7F 40            [12] 1265 	mov	r7,#0x40
      002523 D0 00            [24] 1266 	pop	ar0
      002525 C0 06            [24] 1267 	push	ar6
      002527 C0 01            [24] 1268 	push	ar1
      002529 C0 00            [24] 1269 	push	ar0
      00252B C0 03            [24] 1270 	push	ar3
      00252D C0 02            [24] 1271 	push	ar2
      00252F 85 00 F0         [24] 1272 	mov	b,ar0
      002532 E5 10            [12] 1273 	mov	a,_bp
      002534 24 08            [12] 1274 	add	a,#0x08
      002536 F8               [12] 1275 	mov	r0,a
      002537 E6               [12] 1276 	mov	a,@r0
      002538 C0 E0            [24] 1277 	push	acc
      00253A 08               [12] 1278 	inc	r0
      00253B E6               [12] 1279 	mov	a,@r0
      00253C C0 E0            [24] 1280 	push	acc
      00253E 08               [12] 1281 	inc	r0
      00253F E6               [12] 1282 	mov	a,@r0
      002540 C0 E0            [24] 1283 	push	acc
      002542 8C 82            [24] 1284 	mov	dpl,r4
      002544 8D 83            [24] 1285 	mov	dph,r5
      002546 8F F0            [24] 1286 	mov	b,r7
      002548 12 20 8B         [24] 1287 	lcall	_update
      00254B AD 82            [24] 1288 	mov	r5,dpl
      00254D AF 83            [24] 1289 	mov	r7,dph
      00254F E5 81            [12] 1290 	mov	a,sp
      002551 24 FB            [12] 1291 	add	a,#0xfb
      002553 F5 81            [12] 1292 	mov	sp,a
      002555 D0 00            [24] 1293 	pop	ar0
      002557 D0 01            [24] 1294 	pop	ar1
      002559 D0 06            [24] 1295 	pop	ar6
      00255B D0 00            [24] 1296 	pop	ar0
      00255D ED               [12] 1297 	mov	a,r5
      00255E 4F               [12] 1298 	orl	a,r7
      00255F 70 03            [24] 1299 	jnz	00166$
      002561 02 24 D5         [24] 1300 	ljmp	00112$
      002564                       1301 00166$:
                                   1302 ;	walk.c:112: if (!stpush(&cur)) {
      002564 C0 00            [24] 1303 	push	ar0
      002566 E5 10            [12] 1304 	mov	a,_bp
      002568 24 04            [12] 1305 	add	a,#0x04
      00256A F8               [12] 1306 	mov	r0,a
      00256B 86 02            [24] 1307 	mov	ar2,@r0
      00256D 7D 00            [12] 1308 	mov	r5,#0x00
      00256F 7F 40            [12] 1309 	mov	r7,#0x40
      002571 D0 00            [24] 1310 	pop	ar0
      002573 8A 82            [24] 1311 	mov	dpl,r2
      002575 8D 83            [24] 1312 	mov	dph,r5
      002577 8F F0            [24] 1313 	mov	b,r7
      002579 C0 06            [24] 1314 	push	ar6
      00257B C0 01            [24] 1315 	push	ar1
      00257D C0 00            [24] 1316 	push	ar0
      00257F 12 28 45         [24] 1317 	lcall	_stpush
      002582 E5 82            [12] 1318 	mov	a,dpl
      002584 85 83 F0         [24] 1319 	mov	b,dph
      002587 D0 00            [24] 1320 	pop	ar0
      002589 D0 01            [24] 1321 	pop	ar1
      00258B D0 06            [24] 1322 	pop	ar6
      00258D 45 F0            [12] 1323 	orl	a,b
      00258F 70 18            [24] 1324 	jnz	00110$
                                   1325 ;	walk.c:113: (void)puts("Memory error");
      002591 90 3F 0A         [24] 1326 	mov	dptr,#___str_0
      002594 75 F0 80         [24] 1327 	mov	b,#0x80
      002597 C0 06            [24] 1328 	push	ar6
      002599 C0 01            [24] 1329 	push	ar1
      00259B C0 00            [24] 1330 	push	ar0
      00259D 12 2B 31         [24] 1331 	lcall	_puts
      0025A0 D0 00            [24] 1332 	pop	ar0
      0025A2 D0 01            [24] 1333 	pop	ar1
      0025A4 D0 06            [24] 1334 	pop	ar6
                                   1335 ;	walk.c:114: reset();
      0025A6 12 20 88         [24] 1336 	lcall	_reset
      0025A9                       1337 00110$:
                                   1338 ;	walk.c:116: cur = t;
      0025A9 C0 00            [24] 1339 	push	ar0
      0025AB C0 00            [24] 1340 	push	ar0
      0025AD A8 10            [24] 1341 	mov	r0,_bp
      0025AF 08               [12] 1342 	inc	r0
      0025B0 C0 01            [24] 1343 	push	ar1
      0025B2 E5 10            [12] 1344 	mov	a,_bp
      0025B4 24 08            [12] 1345 	add	a,#0x08
      0025B6 F9               [12] 1346 	mov	r1,a
      0025B7 E6               [12] 1347 	mov	a,@r0
      0025B8 F7               [12] 1348 	mov	@r1,a
      0025B9 09               [12] 1349 	inc	r1
      0025BA 77 00            [12] 1350 	mov	@r1,#0x00
      0025BC 09               [12] 1351 	inc	r1
      0025BD 77 40            [12] 1352 	mov	@r1,#0x40
      0025BF D0 01            [24] 1353 	pop	ar1
      0025C1 A8 10            [24] 1354 	mov	r0,_bp
      0025C3 08               [12] 1355 	inc	r0
      0025C4 08               [12] 1356 	inc	r0
      0025C5 86 02            [24] 1357 	mov	ar2,@r0
      0025C7 7B 00            [12] 1358 	mov	r3,#0x00
      0025C9 7F 40            [12] 1359 	mov	r7,#0x40
      0025CB D0 00            [24] 1360 	pop	ar0
      0025CD C0 06            [24] 1361 	push	ar6
      0025CF C0 01            [24] 1362 	push	ar1
      0025D1 C0 00            [24] 1363 	push	ar0
      0025D3 74 04            [12] 1364 	mov	a,#0x04
      0025D5 C0 E0            [24] 1365 	push	acc
      0025D7 E4               [12] 1366 	clr	a
      0025D8 C0 E0            [24] 1367 	push	acc
      0025DA 85 00 F0         [24] 1368 	mov	b,ar0
      0025DD E5 10            [12] 1369 	mov	a,_bp
      0025DF 24 08            [12] 1370 	add	a,#0x08
      0025E1 F8               [12] 1371 	mov	r0,a
      0025E2 E6               [12] 1372 	mov	a,@r0
      0025E3 C0 E0            [24] 1373 	push	acc
      0025E5 08               [12] 1374 	inc	r0
      0025E6 E6               [12] 1375 	mov	a,@r0
      0025E7 C0 E0            [24] 1376 	push	acc
      0025E9 08               [12] 1377 	inc	r0
      0025EA E6               [12] 1378 	mov	a,@r0
      0025EB C0 E0            [24] 1379 	push	acc
      0025ED 8A 82            [24] 1380 	mov	dpl,r2
      0025EF 8B 83            [24] 1381 	mov	dph,r3
      0025F1 8F F0            [24] 1382 	mov	b,r7
      0025F3 12 2A 9E         [24] 1383 	lcall	___memcpy
      0025F6 E5 81            [12] 1384 	mov	a,sp
      0025F8 24 FB            [12] 1385 	add	a,#0xfb
      0025FA F5 81            [12] 1386 	mov	sp,a
      0025FC D0 00            [24] 1387 	pop	ar0
      0025FE D0 01            [24] 1388 	pop	ar1
      002600 D0 06            [24] 1389 	pop	ar6
                                   1390 ;	walk.c:117: goto process;
      002602 D0 00            [24] 1391 	pop	ar0
      002604 02 23 9D         [24] 1392 	ljmp	00101$
      002607                       1393 00115$:
                                   1394 ;	walk.c:121: printf("\033[%d;%dH.", cur.r + 1, cur.c + 1);
      002607 86 05            [24] 1395 	mov	ar5,@r0
      002609 08               [12] 1396 	inc	r0
      00260A 86 07            [24] 1397 	mov	ar7,@r0
      00260C 18               [12] 1398 	dec	r0
      00260D 0D               [12] 1399 	inc	r5
      00260E BD 00 01         [24] 1400 	cjne	r5,#0x00,00168$
      002611 0F               [12] 1401 	inc	r7
      002612                       1402 00168$:
      002612 87 03            [24] 1403 	mov	ar3,@r1
      002614 09               [12] 1404 	inc	r1
      002615 87 04            [24] 1405 	mov	ar4,@r1
      002617 19               [12] 1406 	dec	r1
      002618 0B               [12] 1407 	inc	r3
      002619 BB 00 01         [24] 1408 	cjne	r3,#0x00,00169$
      00261C 0C               [12] 1409 	inc	r4
      00261D                       1410 00169$:
      00261D C0 06            [24] 1411 	push	ar6
      00261F C0 01            [24] 1412 	push	ar1
      002621 C0 00            [24] 1413 	push	ar0
      002623 C0 05            [24] 1414 	push	ar5
      002625 C0 07            [24] 1415 	push	ar7
      002627 C0 03            [24] 1416 	push	ar3
      002629 C0 04            [24] 1417 	push	ar4
      00262B 74 21            [12] 1418 	mov	a,#___str_2
      00262D C0 E0            [24] 1419 	push	acc
      00262F 74 3F            [12] 1420 	mov	a,#(___str_2 >> 8)
      002631 C0 E0            [24] 1421 	push	acc
      002633 74 80            [12] 1422 	mov	a,#0x80
      002635 C0 E0            [24] 1423 	push	acc
      002637 12 2B B7         [24] 1424 	lcall	_printf
      00263A E5 81            [12] 1425 	mov	a,sp
      00263C 24 F9            [12] 1426 	add	a,#0xf9
      00263E F5 81            [12] 1427 	mov	sp,a
      002640 D0 00            [24] 1428 	pop	ar0
      002642 D0 01            [24] 1429 	pop	ar1
      002644 D0 06            [24] 1430 	pop	ar6
                                   1431 ;	walk.c:123: if (!stpop(&cur)) goto term;
      002646 C0 00            [24] 1432 	push	ar0
      002648 E5 10            [12] 1433 	mov	a,_bp
      00264A 24 03            [12] 1434 	add	a,#0x03
      00264C F8               [12] 1435 	mov	r0,a
      00264D 86 04            [24] 1436 	mov	ar4,@r0
      00264F 7D 00            [12] 1437 	mov	r5,#0x00
      002651 7F 40            [12] 1438 	mov	r7,#0x40
      002653 D0 00            [24] 1439 	pop	ar0
      002655 8C 82            [24] 1440 	mov	dpl,r4
      002657 8D 83            [24] 1441 	mov	dph,r5
      002659 8F F0            [24] 1442 	mov	b,r7
      00265B C0 06            [24] 1443 	push	ar6
      00265D C0 01            [24] 1444 	push	ar1
      00265F C0 00            [24] 1445 	push	ar0
      002661 12 28 A6         [24] 1446 	lcall	_stpop
      002664 E5 82            [12] 1447 	mov	a,dpl
      002666 85 83 F0         [24] 1448 	mov	b,dph
      002669 D0 00            [24] 1449 	pop	ar0
      00266B D0 01            [24] 1450 	pop	ar1
      00266D D0 06            [24] 1451 	pop	ar6
      00266F 45 F0            [12] 1452 	orl	a,b
      002671 60 03            [24] 1453 	jz	00170$
      002673 02 24 1B         [24] 1454 	ljmp	00125$
      002676                       1455 00170$:
                                   1456 ;	walk.c:127: return;
                                   1457 ;	walk.c:128: }
      002676 85 10 81         [24] 1458 	mov	sp,_bp
      002679 D0 10            [24] 1459 	pop	_bp
      00267B 22               [24] 1460 	ret
                                   1461 ;------------------------------------------------------------
                                   1462 ;Allocation info for local variables in function 'main'
                                   1463 ;------------------------------------------------------------
                                   1464 ;initial                   Allocated to stack - _bp +3
                                   1465 ;i                         Allocated to stack - _bp +7
                                   1466 ;j                         Allocated to registers r4 r5 
                                   1467 ;sloc0                     Allocated to stack - _bp +1
                                   1468 ;R                         Allocated with name '_main_R_65536_64'
                                   1469 ;------------------------------------------------------------
                                   1470 ;	walk.c:130: int main(void) {
                                   1471 ;	-----------------------------------------
                                   1472 ;	 function main
                                   1473 ;	-----------------------------------------
      00267C                       1474 _main:
      00267C C0 10            [24] 1475 	push	_bp
      00267E E5 81            [12] 1476 	mov	a,sp
      002680 F5 10            [12] 1477 	mov	_bp,a
      002682 24 08            [12] 1478 	add	a,#0x08
      002684 F5 81            [12] 1479 	mov	sp,a
                                   1480 ;	walk.c:135: i0 = 1;
      002686 78 11            [12] 1481 	mov	r0,#_i0
      002688 76 01            [12] 1482 	mov	@r0,#0x01
                                   1483 ;	walk.c:137: IT0 = 1;
                                   1484 ;	assignBit
      00268A D2 88            [12] 1485 	setb	_IT0
                                   1486 ;	walk.c:138: EX0 = 1;
                                   1487 ;	assignBit
      00268C D2 A8            [12] 1488 	setb	_EX0
                                   1489 ;	walk.c:139: EA = 1;
                                   1490 ;	assignBit
      00268E D2 AF            [12] 1491 	setb	_EA
                                   1492 ;	walk.c:141: srand(*R);
      002690 90 F4 02         [24] 1493 	mov	dptr,#_main_R_65536_64
      002693 E0               [24] 1494 	movx	a,@dptr
      002694 FE               [12] 1495 	mov	r6,a
      002695 A3               [24] 1496 	inc	dptr
      002696 E0               [24] 1497 	movx	a,@dptr
      002697 FF               [12] 1498 	mov	r7,a
      002698 8E 82            [24] 1499 	mov	dpl,r6
      00269A 8F 83            [24] 1500 	mov	dph,r7
      00269C E0               [24] 1501 	movx	a,@dptr
      00269D FE               [12] 1502 	mov	r6,a
      00269E A3               [24] 1503 	inc	dptr
      00269F E0               [24] 1504 	movx	a,@dptr
      0026A0 FF               [12] 1505 	mov	r7,a
      0026A1 8E 82            [24] 1506 	mov	dpl,r6
      0026A3 8F 83            [24] 1507 	mov	dph,r7
      0026A5 12 29 CC         [24] 1508 	lcall	_srand
                                   1509 ;	walk.c:142: stinit();
      0026A8 12 28 3C         [24] 1510 	lcall	_stinit
                                   1511 ;	walk.c:144: while (i0) {
      0026AB E5 10            [12] 1512 	mov	a,_bp
      0026AD 24 03            [12] 1513 	add	a,#0x03
      0026AF FF               [12] 1514 	mov	r7,a
      0026B0 FE               [12] 1515 	mov	r6,a
      0026B1                       1516 00107$:
      0026B1 78 11            [12] 1517 	mov	r0,#_i0
      0026B3 E6               [12] 1518 	mov	a,@r0
      0026B4 70 03            [24] 1519 	jnz	00168$
      0026B6 02 28 2E         [24] 1520 	ljmp	00109$
      0026B9                       1521 00168$:
                                   1522 ;	walk.c:145: for (i = 0; i < ROWS; i++)
      0026B9 E5 10            [12] 1523 	mov	a,_bp
      0026BB 24 07            [12] 1524 	add	a,#0x07
      0026BD F8               [12] 1525 	mov	r0,a
      0026BE E4               [12] 1526 	clr	a
      0026BF F6               [12] 1527 	mov	@r0,a
      0026C0 08               [12] 1528 	inc	r0
      0026C1 F6               [12] 1529 	mov	@r0,a
      0026C2 7A 00            [12] 1530 	mov	r2,#0x00
      0026C4 7B 00            [12] 1531 	mov	r3,#0x00
                                   1532 ;	walk.c:146: for (j = 0; j < COLS; j++)
      0026C6                       1533 00121$:
      0026C6 A8 10            [24] 1534 	mov	r0,_bp
      0026C8 08               [12] 1535 	inc	r0
      0026C9 EA               [12] 1536 	mov	a,r2
      0026CA 24 00            [12] 1537 	add	a,#_g
      0026CC F6               [12] 1538 	mov	@r0,a
      0026CD EB               [12] 1539 	mov	a,r3
      0026CE 34 40            [12] 1540 	addc	a,#(_g >> 8)
      0026D0 08               [12] 1541 	inc	r0
      0026D1 F6               [12] 1542 	mov	@r0,a
      0026D2 7C 00            [12] 1543 	mov	r4,#0x00
      0026D4 7D 00            [12] 1544 	mov	r5,#0x00
      0026D6                       1545 00110$:
                                   1546 ;	walk.c:147: g[i][j] = 0x55;
      0026D6 A8 10            [24] 1547 	mov	r0,_bp
      0026D8 08               [12] 1548 	inc	r0
      0026D9 EC               [12] 1549 	mov	a,r4
      0026DA 26               [12] 1550 	add	a,@r0
      0026DB F5 82            [12] 1551 	mov	dpl,a
      0026DD ED               [12] 1552 	mov	a,r5
      0026DE 08               [12] 1553 	inc	r0
      0026DF 36               [12] 1554 	addc	a,@r0
      0026E0 F5 83            [12] 1555 	mov	dph,a
      0026E2 74 55            [12] 1556 	mov	a,#0x55
      0026E4 F0               [24] 1557 	movx	@dptr,a
                                   1558 ;	walk.c:146: for (j = 0; j < COLS; j++)
      0026E5 0C               [12] 1559 	inc	r4
      0026E6 BC 00 01         [24] 1560 	cjne	r4,#0x00,00169$
      0026E9 0D               [12] 1561 	inc	r5
      0026EA                       1562 00169$:
      0026EA C3               [12] 1563 	clr	c
      0026EB EC               [12] 1564 	mov	a,r4
      0026EC 94 C0            [12] 1565 	subb	a,#0xc0
      0026EE ED               [12] 1566 	mov	a,r5
      0026EF 64 80            [12] 1567 	xrl	a,#0x80
      0026F1 94 80            [12] 1568 	subb	a,#0x80
      0026F3 40 E1            [24] 1569 	jc	00110$
                                   1570 ;	walk.c:145: for (i = 0; i < ROWS; i++)
      0026F5 74 C0            [12] 1571 	mov	a,#0xc0
      0026F7 2A               [12] 1572 	add	a,r2
      0026F8 FA               [12] 1573 	mov	r2,a
      0026F9 E4               [12] 1574 	clr	a
      0026FA 3B               [12] 1575 	addc	a,r3
      0026FB FB               [12] 1576 	mov	r3,a
      0026FC E5 10            [12] 1577 	mov	a,_bp
      0026FE 24 07            [12] 1578 	add	a,#0x07
      002700 F8               [12] 1579 	mov	r0,a
      002701 06               [12] 1580 	inc	@r0
      002702 B6 00 02         [24] 1581 	cjne	@r0,#0x00,00171$
      002705 08               [12] 1582 	inc	r0
      002706 06               [12] 1583 	inc	@r0
      002707                       1584 00171$:
      002707 E5 10            [12] 1585 	mov	a,_bp
      002709 24 07            [12] 1586 	add	a,#0x07
      00270B F8               [12] 1587 	mov	r0,a
      00270C C3               [12] 1588 	clr	c
      00270D E6               [12] 1589 	mov	a,@r0
      00270E 94 30            [12] 1590 	subb	a,#0x30
      002710 08               [12] 1591 	inc	r0
      002711 E6               [12] 1592 	mov	a,@r0
      002712 64 80            [12] 1593 	xrl	a,#0x80
      002714 94 80            [12] 1594 	subb	a,#0x80
      002716 40 AE            [24] 1595 	jc	00121$
                                   1596 ;	walk.c:149: puts("\033[2J");
      002718 90 3F 2B         [24] 1597 	mov	dptr,#___str_3
      00271B 75 F0 80         [24] 1598 	mov	b,#0x80
      00271E C0 07            [24] 1599 	push	ar7
      002720 C0 06            [24] 1600 	push	ar6
      002722 12 2B 31         [24] 1601 	lcall	_puts
                                   1602 ;	walk.c:150: initial.r = rand() % ROWS;
      002725 E5 10            [12] 1603 	mov	a,_bp
      002727 24 03            [12] 1604 	add	a,#0x03
      002729 F9               [12] 1605 	mov	r1,a
      00272A C0 01            [24] 1606 	push	ar1
      00272C 12 29 08         [24] 1607 	lcall	_rand
      00272F AC 82            [24] 1608 	mov	r4,dpl
      002731 AD 83            [24] 1609 	mov	r5,dph
      002733 74 30            [12] 1610 	mov	a,#0x30
      002735 C0 E0            [24] 1611 	push	acc
      002737 E4               [12] 1612 	clr	a
      002738 C0 E0            [24] 1613 	push	acc
      00273A 8C 82            [24] 1614 	mov	dpl,r4
      00273C 8D 83            [24] 1615 	mov	dph,r5
      00273E 12 2C 0C         [24] 1616 	lcall	__modsint
      002741 AC 82            [24] 1617 	mov	r4,dpl
      002743 AD 83            [24] 1618 	mov	r5,dph
      002745 15 81            [12] 1619 	dec	sp
      002747 15 81            [12] 1620 	dec	sp
      002749 D0 01            [24] 1621 	pop	ar1
      00274B D0 06            [24] 1622 	pop	ar6
      00274D D0 07            [24] 1623 	pop	ar7
      00274F A7 04            [24] 1624 	mov	@r1,ar4
      002751 09               [12] 1625 	inc	r1
      002752 A7 05            [24] 1626 	mov	@r1,ar5
      002754 19               [12] 1627 	dec	r1
                                   1628 ;	walk.c:151: initial.c = rand() % COLS;
      002755 74 02            [12] 1629 	mov	a,#0x02
      002757 2F               [12] 1630 	add	a,r7
      002758 F9               [12] 1631 	mov	r1,a
      002759 C0 07            [24] 1632 	push	ar7
      00275B C0 06            [24] 1633 	push	ar6
      00275D C0 01            [24] 1634 	push	ar1
      00275F 12 29 08         [24] 1635 	lcall	_rand
      002762 AC 82            [24] 1636 	mov	r4,dpl
      002764 AD 83            [24] 1637 	mov	r5,dph
      002766 74 C0            [12] 1638 	mov	a,#0xc0
      002768 C0 E0            [24] 1639 	push	acc
      00276A E4               [12] 1640 	clr	a
      00276B C0 E0            [24] 1641 	push	acc
      00276D 8C 82            [24] 1642 	mov	dpl,r4
      00276F 8D 83            [24] 1643 	mov	dph,r5
      002771 12 2C 0C         [24] 1644 	lcall	__modsint
      002774 AC 82            [24] 1645 	mov	r4,dpl
      002776 AD 83            [24] 1646 	mov	r5,dph
      002778 15 81            [12] 1647 	dec	sp
      00277A 15 81            [12] 1648 	dec	sp
      00277C D0 01            [24] 1649 	pop	ar1
      00277E D0 06            [24] 1650 	pop	ar6
      002780 A7 04            [24] 1651 	mov	@r1,ar4
      002782 09               [12] 1652 	inc	r1
      002783 A7 05            [24] 1653 	mov	@r1,ar5
      002785 19               [12] 1654 	dec	r1
                                   1655 ;	walk.c:152: walk(&initial);
      002786 8E 03            [24] 1656 	mov	ar3,r6
      002788 7C 00            [12] 1657 	mov	r4,#0x00
      00278A 7D 40            [12] 1658 	mov	r5,#0x40
      00278C 8B 82            [24] 1659 	mov	dpl,r3
      00278E 8C 83            [24] 1660 	mov	dph,r4
      002790 8D F0            [24] 1661 	mov	b,r5
      002792 C0 06            [24] 1662 	push	ar6
      002794 12 23 2C         [24] 1663 	lcall	_walk
      002797 D0 06            [24] 1664 	pop	ar6
      002799 D0 07            [24] 1665 	pop	ar7
                                   1666 ;	walk.c:154: for (i = 0; i < ROWS; i++)
      00279B E5 10            [12] 1667 	mov	a,_bp
      00279D 24 07            [12] 1668 	add	a,#0x07
      00279F F8               [12] 1669 	mov	r0,a
      0027A0 E4               [12] 1670 	clr	a
      0027A1 F6               [12] 1671 	mov	@r0,a
      0027A2 08               [12] 1672 	inc	r0
      0027A3 F6               [12] 1673 	mov	@r0,a
      0027A4 7A 00            [12] 1674 	mov	r2,#0x00
      0027A6 7B 00            [12] 1675 	mov	r3,#0x00
                                   1676 ;	walk.c:155: for (j = 0; j < COLS; j++)
      0027A8                       1677 00126$:
      0027A8 A8 10            [24] 1678 	mov	r0,_bp
      0027AA 08               [12] 1679 	inc	r0
      0027AB EA               [12] 1680 	mov	a,r2
      0027AC 24 00            [12] 1681 	add	a,#_g
      0027AE F6               [12] 1682 	mov	@r0,a
      0027AF EB               [12] 1683 	mov	a,r3
      0027B0 34 40            [12] 1684 	addc	a,#(_g >> 8)
      0027B2 08               [12] 1685 	inc	r0
      0027B3 F6               [12] 1686 	mov	@r0,a
      0027B4 7C 00            [12] 1687 	mov	r4,#0x00
      0027B6 7D 00            [12] 1688 	mov	r5,#0x00
      0027B8                       1689 00114$:
                                   1690 ;	walk.c:156: if (g[i][j] != 0xaa) {
      0027B8 C0 06            [24] 1691 	push	ar6
      0027BA A8 10            [24] 1692 	mov	r0,_bp
      0027BC 08               [12] 1693 	inc	r0
      0027BD EC               [12] 1694 	mov	a,r4
      0027BE 26               [12] 1695 	add	a,@r0
      0027BF F5 82            [12] 1696 	mov	dpl,a
      0027C1 ED               [12] 1697 	mov	a,r5
      0027C2 08               [12] 1698 	inc	r0
      0027C3 36               [12] 1699 	addc	a,@r0
      0027C4 F5 83            [12] 1700 	mov	dph,a
      0027C6 E0               [24] 1701 	movx	a,@dptr
      0027C7 FE               [12] 1702 	mov	r6,a
      0027C8 BE AA 04         [24] 1703 	cjne	r6,#0xaa,00173$
      0027CB D0 06            [24] 1704 	pop	ar6
      0027CD 80 26            [24] 1705 	sjmp	00115$
      0027CF                       1706 00173$:
      0027CF D0 06            [24] 1707 	pop	ar6
                                   1708 ;	walk.c:157: (void)puts("Memory error");
      0027D1 90 3F 0A         [24] 1709 	mov	dptr,#___str_0
      0027D4 75 F0 80         [24] 1710 	mov	b,#0x80
      0027D7 C0 07            [24] 1711 	push	ar7
      0027D9 C0 06            [24] 1712 	push	ar6
      0027DB C0 05            [24] 1713 	push	ar5
      0027DD C0 04            [24] 1714 	push	ar4
      0027DF C0 03            [24] 1715 	push	ar3
      0027E1 C0 02            [24] 1716 	push	ar2
      0027E3 12 2B 31         [24] 1717 	lcall	_puts
      0027E6 D0 02            [24] 1718 	pop	ar2
      0027E8 D0 03            [24] 1719 	pop	ar3
      0027EA D0 04            [24] 1720 	pop	ar4
      0027EC D0 05            [24] 1721 	pop	ar5
      0027EE D0 06            [24] 1722 	pop	ar6
      0027F0 D0 07            [24] 1723 	pop	ar7
                                   1724 ;	walk.c:158: reset();
      0027F2 12 20 88         [24] 1725 	lcall	_reset
      0027F5                       1726 00115$:
                                   1727 ;	walk.c:155: for (j = 0; j < COLS; j++)
      0027F5 0C               [12] 1728 	inc	r4
      0027F6 BC 00 01         [24] 1729 	cjne	r4,#0x00,00174$
      0027F9 0D               [12] 1730 	inc	r5
      0027FA                       1731 00174$:
      0027FA C3               [12] 1732 	clr	c
      0027FB EC               [12] 1733 	mov	a,r4
      0027FC 94 C0            [12] 1734 	subb	a,#0xc0
      0027FE ED               [12] 1735 	mov	a,r5
      0027FF 64 80            [12] 1736 	xrl	a,#0x80
      002801 94 80            [12] 1737 	subb	a,#0x80
      002803 40 B3            [24] 1738 	jc	00114$
                                   1739 ;	walk.c:154: for (i = 0; i < ROWS; i++)
      002805 74 C0            [12] 1740 	mov	a,#0xc0
      002807 2A               [12] 1741 	add	a,r2
      002808 FA               [12] 1742 	mov	r2,a
      002809 E4               [12] 1743 	clr	a
      00280A 3B               [12] 1744 	addc	a,r3
      00280B FB               [12] 1745 	mov	r3,a
      00280C E5 10            [12] 1746 	mov	a,_bp
      00280E 24 07            [12] 1747 	add	a,#0x07
      002810 F8               [12] 1748 	mov	r0,a
      002811 06               [12] 1749 	inc	@r0
      002812 B6 00 02         [24] 1750 	cjne	@r0,#0x00,00176$
      002815 08               [12] 1751 	inc	r0
      002816 06               [12] 1752 	inc	@r0
      002817                       1753 00176$:
      002817 E5 10            [12] 1754 	mov	a,_bp
      002819 24 07            [12] 1755 	add	a,#0x07
      00281B F8               [12] 1756 	mov	r0,a
      00281C C3               [12] 1757 	clr	c
      00281D E6               [12] 1758 	mov	a,@r0
      00281E 94 30            [12] 1759 	subb	a,#0x30
      002820 08               [12] 1760 	inc	r0
      002821 E6               [12] 1761 	mov	a,@r0
      002822 64 80            [12] 1762 	xrl	a,#0x80
      002824 94 80            [12] 1763 	subb	a,#0x80
      002826 50 03            [24] 1764 	jnc	00177$
      002828 02 27 A8         [24] 1765 	ljmp	00126$
      00282B                       1766 00177$:
      00282B 02 26 B1         [24] 1767 	ljmp	00107$
      00282E                       1768 00109$:
                                   1769 ;	walk.c:162: EA = 0;
                                   1770 ;	assignBit
      00282E C2 AF            [12] 1771 	clr	_EA
                                   1772 ;	walk.c:166: __endasm;
      002830 02 00 00         [24] 1773 	ljmp	0
                                   1774 ;	walk.c:168: return 0;
      002833 90 00 00         [24] 1775 	mov	dptr,#0x0000
                                   1776 ;	walk.c:169: }
      002836 85 10 81         [24] 1777 	mov	sp,_bp
      002839 D0 10            [24] 1778 	pop	_bp
      00283B 22               [24] 1779 	ret
                                   1780 ;------------------------------------------------------------
                                   1781 ;Allocation info for local variables in function 'stinit'
                                   1782 ;------------------------------------------------------------
                                   1783 ;	walk.c:171: static void stinit(void) {
                                   1784 ;	-----------------------------------------
                                   1785 ;	 function stinit
                                   1786 ;	-----------------------------------------
      00283C                       1787 _stinit:
                                   1788 ;	walk.c:172: sp = -1;
      00283C 90 F4 00         [24] 1789 	mov	dptr,#_sp
      00283F 74 FF            [12] 1790 	mov	a,#0xff
      002841 F0               [24] 1791 	movx	@dptr,a
      002842 A3               [24] 1792 	inc	dptr
      002843 F0               [24] 1793 	movx	@dptr,a
                                   1794 ;	walk.c:173: return;
                                   1795 ;	walk.c:174: }
      002844 22               [24] 1796 	ret
                                   1797 ;------------------------------------------------------------
                                   1798 ;Allocation info for local variables in function 'stpush'
                                   1799 ;------------------------------------------------------------
                                   1800 ;t                         Allocated to registers r5 r6 r7 
                                   1801 ;------------------------------------------------------------
                                   1802 ;	walk.c:176: static int stpush(struct node *t) {
                                   1803 ;	-----------------------------------------
                                   1804 ;	 function stpush
                                   1805 ;	-----------------------------------------
      002845                       1806 _stpush:
      002845 AD 82            [24] 1807 	mov	r5,dpl
      002847 AE 83            [24] 1808 	mov	r6,dph
      002849 AF F0            [24] 1809 	mov	r7,b
                                   1810 ;	walk.c:177: if (sp == (SMAX - 1)) return 0;
      00284B 90 F4 00         [24] 1811 	mov	dptr,#_sp
      00284E E0               [24] 1812 	movx	a,@dptr
      00284F FB               [12] 1813 	mov	r3,a
      002850 A3               [24] 1814 	inc	dptr
      002851 E0               [24] 1815 	movx	a,@dptr
      002852 FC               [12] 1816 	mov	r4,a
      002853 BB FF 07         [24] 1817 	cjne	r3,#0xff,00102$
      002856 BC 23 04         [24] 1818 	cjne	r4,#0x23,00102$
      002859 90 00 00         [24] 1819 	mov	dptr,#0x0000
      00285C 22               [24] 1820 	ret
      00285D                       1821 00102$:
                                   1822 ;	walk.c:178: sp++;
      00285D 90 F4 00         [24] 1823 	mov	dptr,#_sp
      002860 74 01            [12] 1824 	mov	a,#0x01
      002862 2B               [12] 1825 	add	a,r3
      002863 F0               [24] 1826 	movx	@dptr,a
      002864 E4               [12] 1827 	clr	a
      002865 3C               [12] 1828 	addc	a,r4
      002866 A3               [24] 1829 	inc	dptr
      002867 F0               [24] 1830 	movx	@dptr,a
                                   1831 ;	walk.c:179: stack[sp] = *t;
      002868 90 F4 00         [24] 1832 	mov	dptr,#_sp
      00286B E0               [24] 1833 	movx	a,@dptr
      00286C FB               [12] 1834 	mov	r3,a
      00286D A3               [24] 1835 	inc	dptr
      00286E E0               [24] 1836 	movx	a,@dptr
      00286F FC               [12] 1837 	mov	r4,a
      002870 EB               [12] 1838 	mov	a,r3
      002871 2B               [12] 1839 	add	a,r3
      002872 FB               [12] 1840 	mov	r3,a
      002873 EC               [12] 1841 	mov	a,r4
      002874 33               [12] 1842 	rlc	a
      002875 FC               [12] 1843 	mov	r4,a
      002876 EB               [12] 1844 	mov	a,r3
      002877 2B               [12] 1845 	add	a,r3
      002878 FB               [12] 1846 	mov	r3,a
      002879 EC               [12] 1847 	mov	a,r4
      00287A 33               [12] 1848 	rlc	a
      00287B FC               [12] 1849 	mov	r4,a
      00287C EB               [12] 1850 	mov	a,r3
      00287D 24 00            [12] 1851 	add	a,#_stack
      00287F FB               [12] 1852 	mov	r3,a
      002880 EC               [12] 1853 	mov	a,r4
      002881 34 64            [12] 1854 	addc	a,#(_stack >> 8)
      002883 FC               [12] 1855 	mov	r4,a
      002884 7A 00            [12] 1856 	mov	r2,#0x00
      002886 74 04            [12] 1857 	mov	a,#0x04
      002888 C0 E0            [24] 1858 	push	acc
      00288A E4               [12] 1859 	clr	a
      00288B C0 E0            [24] 1860 	push	acc
      00288D C0 05            [24] 1861 	push	ar5
      00288F C0 06            [24] 1862 	push	ar6
      002891 C0 07            [24] 1863 	push	ar7
      002893 8B 82            [24] 1864 	mov	dpl,r3
      002895 8C 83            [24] 1865 	mov	dph,r4
      002897 8A F0            [24] 1866 	mov	b,r2
      002899 12 2A 9E         [24] 1867 	lcall	___memcpy
      00289C E5 81            [12] 1868 	mov	a,sp
      00289E 24 FB            [12] 1869 	add	a,#0xfb
      0028A0 F5 81            [12] 1870 	mov	sp,a
                                   1871 ;	walk.c:180: return 1;
      0028A2 90 00 01         [24] 1872 	mov	dptr,#0x0001
                                   1873 ;	walk.c:181: }
      0028A5 22               [24] 1874 	ret
                                   1875 ;------------------------------------------------------------
                                   1876 ;Allocation info for local variables in function 'stpop'
                                   1877 ;------------------------------------------------------------
                                   1878 ;t                         Allocated to registers r5 r6 r7 
                                   1879 ;------------------------------------------------------------
                                   1880 ;	walk.c:183: static int stpop(struct node *t) {
                                   1881 ;	-----------------------------------------
                                   1882 ;	 function stpop
                                   1883 ;	-----------------------------------------
      0028A6                       1884 _stpop:
      0028A6 AD 82            [24] 1885 	mov	r5,dpl
      0028A8 AE 83            [24] 1886 	mov	r6,dph
      0028AA AF F0            [24] 1887 	mov	r7,b
                                   1888 ;	walk.c:184: if (sp == -1) return 0;
      0028AC 90 F4 00         [24] 1889 	mov	dptr,#_sp
      0028AF E0               [24] 1890 	movx	a,@dptr
      0028B0 FB               [12] 1891 	mov	r3,a
      0028B1 A3               [24] 1892 	inc	dptr
      0028B2 E0               [24] 1893 	movx	a,@dptr
      0028B3 FC               [12] 1894 	mov	r4,a
      0028B4 BB FF 07         [24] 1895 	cjne	r3,#0xff,00102$
      0028B7 BC FF 04         [24] 1896 	cjne	r4,#0xff,00102$
      0028BA 90 00 00         [24] 1897 	mov	dptr,#0x0000
      0028BD 22               [24] 1898 	ret
      0028BE                       1899 00102$:
                                   1900 ;	walk.c:185: *t = stack[sp];
      0028BE EB               [12] 1901 	mov	a,r3
      0028BF 2B               [12] 1902 	add	a,r3
      0028C0 FB               [12] 1903 	mov	r3,a
      0028C1 EC               [12] 1904 	mov	a,r4
      0028C2 33               [12] 1905 	rlc	a
      0028C3 FC               [12] 1906 	mov	r4,a
      0028C4 EB               [12] 1907 	mov	a,r3
      0028C5 2B               [12] 1908 	add	a,r3
      0028C6 FB               [12] 1909 	mov	r3,a
      0028C7 EC               [12] 1910 	mov	a,r4
      0028C8 33               [12] 1911 	rlc	a
      0028C9 FC               [12] 1912 	mov	r4,a
      0028CA EB               [12] 1913 	mov	a,r3
      0028CB 24 00            [12] 1914 	add	a,#_stack
      0028CD FB               [12] 1915 	mov	r3,a
      0028CE EC               [12] 1916 	mov	a,r4
      0028CF 34 64            [12] 1917 	addc	a,#(_stack >> 8)
      0028D1 FC               [12] 1918 	mov	r4,a
      0028D2 7A 00            [12] 1919 	mov	r2,#0x00
      0028D4 74 04            [12] 1920 	mov	a,#0x04
      0028D6 C0 E0            [24] 1921 	push	acc
      0028D8 E4               [12] 1922 	clr	a
      0028D9 C0 E0            [24] 1923 	push	acc
      0028DB C0 03            [24] 1924 	push	ar3
      0028DD C0 04            [24] 1925 	push	ar4
      0028DF C0 02            [24] 1926 	push	ar2
      0028E1 8D 82            [24] 1927 	mov	dpl,r5
      0028E3 8E 83            [24] 1928 	mov	dph,r6
      0028E5 8F F0            [24] 1929 	mov	b,r7
      0028E7 12 2A 9E         [24] 1930 	lcall	___memcpy
      0028EA E5 81            [12] 1931 	mov	a,sp
      0028EC 24 FB            [12] 1932 	add	a,#0xfb
      0028EE F5 81            [12] 1933 	mov	sp,a
                                   1934 ;	walk.c:186: sp--;
      0028F0 90 F4 00         [24] 1935 	mov	dptr,#_sp
      0028F3 E0               [24] 1936 	movx	a,@dptr
      0028F4 24 FF            [12] 1937 	add	a,#0xff
      0028F6 FE               [12] 1938 	mov	r6,a
      0028F7 A3               [24] 1939 	inc	dptr
      0028F8 E0               [24] 1940 	movx	a,@dptr
      0028F9 34 FF            [12] 1941 	addc	a,#0xff
      0028FB FF               [12] 1942 	mov	r7,a
      0028FC 90 F4 00         [24] 1943 	mov	dptr,#_sp
      0028FF EE               [12] 1944 	mov	a,r6
      002900 F0               [24] 1945 	movx	@dptr,a
      002901 EF               [12] 1946 	mov	a,r7
      002902 A3               [24] 1947 	inc	dptr
      002903 F0               [24] 1948 	movx	@dptr,a
                                   1949 ;	walk.c:187: return 1;
      002904 90 00 01         [24] 1950 	mov	dptr,#0x0001
                                   1951 ;	walk.c:188: }
      002907 22               [24] 1952 	ret
                                   1953 	.area CSEG    (CODE)
                                   1954 	.area CONST   (CODE)
      003EEA                       1955 _neigh:
      003EEA FF FF                 1956 	.byte #0xff, #0xff	; -1
      003EEC FF FF                 1957 	.byte #0xff, #0xff	; -1
      003EEE FF FF                 1958 	.byte #0xff, #0xff	; -1
      003EF0 00 00                 1959 	.byte #0x00, #0x00	;  0
      003EF2 FF FF                 1960 	.byte #0xff, #0xff	; -1
      003EF4 01 00                 1961 	.byte #0x01, #0x00	;  1
      003EF6 00 00                 1962 	.byte #0x00, #0x00	;  0
      003EF8 FF FF                 1963 	.byte #0xff, #0xff	; -1
      003EFA 00 00                 1964 	.byte #0x00, #0x00	;  0
      003EFC 01 00                 1965 	.byte #0x01, #0x00	;  1
      003EFE 01 00                 1966 	.byte #0x01, #0x00	;  1
      003F00 FF FF                 1967 	.byte #0xff, #0xff	; -1
      003F02 01 00                 1968 	.byte #0x01, #0x00	;  1
      003F04 00 00                 1969 	.byte #0x00, #0x00	;  0
      003F06 01 00                 1970 	.byte #0x01, #0x00	;  1
      003F08 01 00                 1971 	.byte #0x01, #0x00	;  1
                                   1972 	.area CONST   (CODE)
      003F0A                       1973 ___str_0:
      003F0A 4D 65 6D 6F 72 79 20  1974 	.ascii "Memory error"
             65 72 72 6F 72
      003F16 00                    1975 	.db 0x00
                                   1976 	.area CSEG    (CODE)
                                   1977 	.area CONST   (CODE)
      003F17                       1978 ___str_1:
      003F17 1B                    1979 	.db 0x1b
      003F18 5B 25 64 3B 25 64 48  1980 	.ascii "[%d;%dHo"
             6F
      003F20 00                    1981 	.db 0x00
                                   1982 	.area CSEG    (CODE)
                                   1983 	.area CONST   (CODE)
      003F21                       1984 ___str_2:
      003F21 1B                    1985 	.db 0x1b
      003F22 5B 25 64 3B 25 64 48  1986 	.ascii "[%d;%dH."
             2E
      003F2A 00                    1987 	.db 0x00
                                   1988 	.area CSEG    (CODE)
                                   1989 	.area CONST   (CODE)
      003F2B                       1990 ___str_3:
      003F2B 1B                    1991 	.db 0x1b
      003F2C 5B 32 4A              1992 	.ascii "[2J"
      003F2F 00                    1993 	.db 0x00
                                   1994 	.area CSEG    (CODE)
                                   1995 	.area XINIT   (CODE)
                                   1996 	.area CABS    (ABS,CODE)
