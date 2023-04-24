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
      00F502                        325 _main_R_65536_64:
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
                                    368 ;initial                   Allocated to stack - _bp +9
                                    369 ;N                         Allocated to stack - _bp +7
                                    370 ;i                         Allocated to stack - _bp +5
                                    371 ;j                         Allocated to registers r2 r6 
                                    372 ;sloc0                     Allocated to stack - _bp +1
                                    373 ;sloc1                     Allocated to stack - _bp +3
                                    374 ;R                         Allocated with name '_main_R_65536_64'
                                    375 ;------------------------------------------------------------
                                    376 ;	walk.c:133: static volatile __xdata int *R = (__xdata int *)0xfffe;
      002062 90 F5 02         [24]  377 	mov	dptr,#_main_R_65536_64
      002065 74 FE            [12]  378 	mov	a,#0xfe
      002067 F0               [24]  379 	movx	@dptr,a
      002068 04               [12]  380 	inc	a
      002069 A3               [24]  381 	inc	dptr
      00206A F0               [24]  382 	movx	@dptr,a
                                    383 	.area GSFINAL (CODE)
      00206B 02 20 06         [24]  384 	ljmp	__sdcc_program_startup
                                    385 ;--------------------------------------------------------
                                    386 ; Home
                                    387 ;--------------------------------------------------------
                                    388 	.area HOME    (CODE)
                                    389 	.area HOME    (CODE)
      002006                        390 __sdcc_program_startup:
      002006 02 27 06         [24]  391 	ljmp	_main
                                    392 ;	return from main will return to caller
                                    393 ;--------------------------------------------------------
                                    394 ; code
                                    395 ;--------------------------------------------------------
                                    396 	.area CSEG    (CODE)
                                    397 ;------------------------------------------------------------
                                    398 ;Allocation info for local variables in function 'putchar'
                                    399 ;------------------------------------------------------------
                                    400 ;c                         Allocated to registers 
                                    401 ;------------------------------------------------------------
                                    402 ;	walk.c:8: int putchar(int c) __naked {
                                    403 ;	-----------------------------------------
                                    404 ;	 function putchar
                                    405 ;	-----------------------------------------
      00206E                        406 _putchar:
                                    407 ;	naked function: no prologue.
                                    408 ;	walk.c:13: __endasm;
      00206E E5 82            [12]  409 	mov	a, dpl
      002070 02 00 30         [24]  410 	ljmp	0x0030
                                    411 ;	walk.c:14: }
                                    412 ;	naked function: no epilogue.
                                    413 ;------------------------------------------------------------
                                    414 ;Allocation info for local variables in function 'getchar'
                                    415 ;------------------------------------------------------------
                                    416 ;	walk.c:16: int getchar(void) __naked {
                                    417 ;	-----------------------------------------
                                    418 ;	 function getchar
                                    419 ;	-----------------------------------------
      002073                        420 _getchar:
                                    421 ;	naked function: no prologue.
                                    422 ;	walk.c:22: __endasm;
      002073 12 00 32         [24]  423 	lcall	0x0032
      002076 F5 82            [12]  424 	mov	dpl, a
      002078 75 83 00         [24]  425 	mov	dph, #0
      00207B 22               [24]  426 	ret
                                    427 ;	walk.c:23: }
                                    428 ;	naked function: no epilogue.
                                    429 ;------------------------------------------------------------
                                    430 ;Allocation info for local variables in function 'int0'
                                    431 ;------------------------------------------------------------
                                    432 ;	walk.c:27: void int0(void) __interrupt IE0_VECTOR __using 1 {
                                    433 ;	-----------------------------------------
                                    434 ;	 function int0
                                    435 ;	-----------------------------------------
      00207C                        436 _int0:
                           00000F   437 	ar7 = 0x0f
                           00000E   438 	ar6 = 0x0e
                           00000D   439 	ar5 = 0x0d
                           00000C   440 	ar4 = 0x0c
                           00000B   441 	ar3 = 0x0b
                           00000A   442 	ar2 = 0x0a
                           000009   443 	ar1 = 0x09
                           000008   444 	ar0 = 0x08
      00207C C0 D0            [24]  445 	push	psw
      00207E 75 D0 08         [24]  446 	mov	psw,#0x08
                                    447 ;	walk.c:28: i0 = 0;
      002081 78 11            [12]  448 	mov	r0,#_i0
      002083 76 00            [12]  449 	mov	@r0,#0x00
                                    450 ;	walk.c:29: }
      002085 D0 D0            [24]  451 	pop	psw
      002087 32               [24]  452 	reti
                                    453 ;	eliminated unneeded push/pop dpl
                                    454 ;	eliminated unneeded push/pop dph
                                    455 ;	eliminated unneeded push/pop b
                                    456 ;	eliminated unneeded push/pop acc
                                    457 ;------------------------------------------------------------
                                    458 ;Allocation info for local variables in function 'reset'
                                    459 ;------------------------------------------------------------
                                    460 ;	walk.c:31: static void reset(void) __naked {
                                    461 ;	-----------------------------------------
                                    462 ;	 function reset
                                    463 ;	-----------------------------------------
      002088                        464 _reset:
                                    465 ;	naked function: no prologue.
                                    466 ;	walk.c:34: __endasm;
      002088 43 87 02         [24]  467 	orl	pcon, #2
                                    468 ;	walk.c:35: }
                                    469 ;	naked function: no epilogue.
                                    470 ;------------------------------------------------------------
                                    471 ;Allocation info for local variables in function 'update'
                                    472 ;------------------------------------------------------------
                                    473 ;cur                       Allocated to stack - _bp -5
                                    474 ;j                         Allocated to stack - _bp -7
                                    475 ;t                         Allocated to stack - _bp +1
                                    476 ;sloc0                     Allocated to stack - _bp +4
                                    477 ;sloc1                     Allocated to stack - _bp +6
                                    478 ;sloc2                     Allocated to stack - _bp +8
                                    479 ;------------------------------------------------------------
                                    480 ;	walk.c:73: static int update(struct node *t, struct node *cur, int j) {
                                    481 ;	-----------------------------------------
                                    482 ;	 function update
                                    483 ;	-----------------------------------------
      00208B                        484 _update:
                           000007   485 	ar7 = 0x07
                           000006   486 	ar6 = 0x06
                           000005   487 	ar5 = 0x05
                           000004   488 	ar4 = 0x04
                           000003   489 	ar3 = 0x03
                           000002   490 	ar2 = 0x02
                           000001   491 	ar1 = 0x01
                           000000   492 	ar0 = 0x00
      00208B C0 10            [24]  493 	push	_bp
      00208D 85 81 10         [24]  494 	mov	_bp,sp
      002090 C0 82            [24]  495 	push	dpl
      002092 C0 83            [24]  496 	push	dph
      002094 C0 F0            [24]  497 	push	b
      002096 E5 81            [12]  498 	mov	a,sp
      002098 24 07            [12]  499 	add	a,#0x07
      00209A F5 81            [12]  500 	mov	sp,a
                                    501 ;	walk.c:74: t->r = cur->r + neigh[j].r;
      00209C E5 10            [12]  502 	mov	a,_bp
      00209E 24 FB            [12]  503 	add	a,#0xfb
      0020A0 F8               [12]  504 	mov	r0,a
      0020A1 86 02            [24]  505 	mov	ar2,@r0
      0020A3 08               [12]  506 	inc	r0
      0020A4 86 03            [24]  507 	mov	ar3,@r0
      0020A6 08               [12]  508 	inc	r0
      0020A7 86 04            [24]  509 	mov	ar4,@r0
      0020A9 8A 82            [24]  510 	mov	dpl,r2
      0020AB 8B 83            [24]  511 	mov	dph,r3
      0020AD 8C F0            [24]  512 	mov	b,r4
      0020AF E5 10            [12]  513 	mov	a,_bp
      0020B1 24 04            [12]  514 	add	a,#0x04
      0020B3 F8               [12]  515 	mov	r0,a
      0020B4 12 2C DD         [24]  516 	lcall	__gptrget
      0020B7 F6               [12]  517 	mov	@r0,a
      0020B8 A3               [24]  518 	inc	dptr
      0020B9 12 2C DD         [24]  519 	lcall	__gptrget
      0020BC 08               [12]  520 	inc	r0
      0020BD F6               [12]  521 	mov	@r0,a
      0020BE E5 10            [12]  522 	mov	a,_bp
      0020C0 24 F9            [12]  523 	add	a,#0xf9
      0020C2 F8               [12]  524 	mov	r0,a
      0020C3 E5 10            [12]  525 	mov	a,_bp
      0020C5 24 06            [12]  526 	add	a,#0x06
      0020C7 F9               [12]  527 	mov	r1,a
      0020C8 E6               [12]  528 	mov	a,@r0
      0020C9 26               [12]  529 	add	a,@r0
      0020CA F7               [12]  530 	mov	@r1,a
      0020CB 08               [12]  531 	inc	r0
      0020CC E6               [12]  532 	mov	a,@r0
      0020CD 33               [12]  533 	rlc	a
      0020CE 09               [12]  534 	inc	r1
      0020CF F7               [12]  535 	mov	@r1,a
      0020D0 19               [12]  536 	dec	r1
      0020D1 E7               [12]  537 	mov	a,@r1
      0020D2 27               [12]  538 	add	a,@r1
      0020D3 F7               [12]  539 	mov	@r1,a
      0020D4 09               [12]  540 	inc	r1
      0020D5 E7               [12]  541 	mov	a,@r1
      0020D6 33               [12]  542 	rlc	a
      0020D7 F7               [12]  543 	mov	@r1,a
      0020D8 E5 10            [12]  544 	mov	a,_bp
      0020DA 24 06            [12]  545 	add	a,#0x06
      0020DC F8               [12]  546 	mov	r0,a
      0020DD E6               [12]  547 	mov	a,@r0
      0020DE 24 D7            [12]  548 	add	a,#_neigh
      0020E0 F5 82            [12]  549 	mov	dpl,a
      0020E2 08               [12]  550 	inc	r0
      0020E3 E6               [12]  551 	mov	a,@r0
      0020E4 34 3F            [12]  552 	addc	a,#(_neigh >> 8)
      0020E6 F5 83            [12]  553 	mov	dph,a
      0020E8 E4               [12]  554 	clr	a
      0020E9 93               [24]  555 	movc	a,@a+dptr
      0020EA FF               [12]  556 	mov	r7,a
      0020EB A3               [24]  557 	inc	dptr
      0020EC E4               [12]  558 	clr	a
      0020ED 93               [24]  559 	movc	a,@a+dptr
      0020EE FE               [12]  560 	mov	r6,a
      0020EF E5 10            [12]  561 	mov	a,_bp
      0020F1 24 04            [12]  562 	add	a,#0x04
      0020F3 F8               [12]  563 	mov	r0,a
      0020F4 EF               [12]  564 	mov	a,r7
      0020F5 26               [12]  565 	add	a,@r0
      0020F6 FF               [12]  566 	mov	r7,a
      0020F7 EE               [12]  567 	mov	a,r6
      0020F8 08               [12]  568 	inc	r0
      0020F9 36               [12]  569 	addc	a,@r0
      0020FA FE               [12]  570 	mov	r6,a
      0020FB A8 10            [24]  571 	mov	r0,_bp
      0020FD 08               [12]  572 	inc	r0
      0020FE 86 82            [24]  573 	mov	dpl,@r0
      002100 08               [12]  574 	inc	r0
      002101 86 83            [24]  575 	mov	dph,@r0
      002103 08               [12]  576 	inc	r0
      002104 86 F0            [24]  577 	mov	b,@r0
      002106 EF               [12]  578 	mov	a,r7
      002107 12 2A D2         [24]  579 	lcall	__gptrput
      00210A A3               [24]  580 	inc	dptr
      00210B EE               [12]  581 	mov	a,r6
      00210C 12 2A D2         [24]  582 	lcall	__gptrput
                                    583 ;	walk.c:75: t->c = cur->c + neigh[j].c;
      00210F A8 10            [24]  584 	mov	r0,_bp
      002111 08               [12]  585 	inc	r0
      002112 E5 10            [12]  586 	mov	a,_bp
      002114 24 08            [12]  587 	add	a,#0x08
      002116 F9               [12]  588 	mov	r1,a
      002117 74 02            [12]  589 	mov	a,#0x02
      002119 26               [12]  590 	add	a,@r0
      00211A F7               [12]  591 	mov	@r1,a
      00211B E4               [12]  592 	clr	a
      00211C 08               [12]  593 	inc	r0
      00211D 36               [12]  594 	addc	a,@r0
      00211E 09               [12]  595 	inc	r1
      00211F F7               [12]  596 	mov	@r1,a
      002120 08               [12]  597 	inc	r0
      002121 09               [12]  598 	inc	r1
      002122 E6               [12]  599 	mov	a,@r0
      002123 F7               [12]  600 	mov	@r1,a
      002124 74 02            [12]  601 	mov	a,#0x02
      002126 2A               [12]  602 	add	a,r2
      002127 FA               [12]  603 	mov	r2,a
      002128 E4               [12]  604 	clr	a
      002129 3B               [12]  605 	addc	a,r3
      00212A FB               [12]  606 	mov	r3,a
      00212B 8A 82            [24]  607 	mov	dpl,r2
      00212D 8B 83            [24]  608 	mov	dph,r3
      00212F 8C F0            [24]  609 	mov	b,r4
      002131 12 2C DD         [24]  610 	lcall	__gptrget
      002134 FA               [12]  611 	mov	r2,a
      002135 A3               [24]  612 	inc	dptr
      002136 12 2C DD         [24]  613 	lcall	__gptrget
      002139 FB               [12]  614 	mov	r3,a
      00213A E5 10            [12]  615 	mov	a,_bp
      00213C 24 06            [12]  616 	add	a,#0x06
      00213E F8               [12]  617 	mov	r0,a
      00213F E6               [12]  618 	mov	a,@r0
      002140 24 D7            [12]  619 	add	a,#_neigh
      002142 FC               [12]  620 	mov	r4,a
      002143 08               [12]  621 	inc	r0
      002144 E6               [12]  622 	mov	a,@r0
      002145 34 3F            [12]  623 	addc	a,#(_neigh >> 8)
      002147 FD               [12]  624 	mov	r5,a
      002148 8C 82            [24]  625 	mov	dpl,r4
      00214A 8D 83            [24]  626 	mov	dph,r5
      00214C A3               [24]  627 	inc	dptr
      00214D A3               [24]  628 	inc	dptr
      00214E E4               [12]  629 	clr	a
      00214F 93               [24]  630 	movc	a,@a+dptr
      002150 FC               [12]  631 	mov	r4,a
      002151 A3               [24]  632 	inc	dptr
      002152 E4               [12]  633 	clr	a
      002153 93               [24]  634 	movc	a,@a+dptr
      002154 FD               [12]  635 	mov	r5,a
      002155 EC               [12]  636 	mov	a,r4
      002156 2A               [12]  637 	add	a,r2
      002157 FA               [12]  638 	mov	r2,a
      002158 ED               [12]  639 	mov	a,r5
      002159 3B               [12]  640 	addc	a,r3
      00215A FB               [12]  641 	mov	r3,a
      00215B E5 10            [12]  642 	mov	a,_bp
      00215D 24 08            [12]  643 	add	a,#0x08
      00215F F8               [12]  644 	mov	r0,a
      002160 86 82            [24]  645 	mov	dpl,@r0
      002162 08               [12]  646 	inc	r0
      002163 86 83            [24]  647 	mov	dph,@r0
      002165 08               [12]  648 	inc	r0
      002166 86 F0            [24]  649 	mov	b,@r0
      002168 EA               [12]  650 	mov	a,r2
      002169 12 2A D2         [24]  651 	lcall	__gptrput
      00216C A3               [24]  652 	inc	dptr
      00216D EB               [12]  653 	mov	a,r3
      00216E 12 2A D2         [24]  654 	lcall	__gptrput
                                    655 ;	walk.c:77: if (t->r < 0) t->r += ROWS;
      002171 A8 10            [24]  656 	mov	r0,_bp
      002173 08               [12]  657 	inc	r0
      002174 86 82            [24]  658 	mov	dpl,@r0
      002176 08               [12]  659 	inc	r0
      002177 86 83            [24]  660 	mov	dph,@r0
      002179 08               [12]  661 	inc	r0
      00217A 86 F0            [24]  662 	mov	b,@r0
      00217C 12 2C DD         [24]  663 	lcall	__gptrget
      00217F FD               [12]  664 	mov	r5,a
      002180 A3               [24]  665 	inc	dptr
      002181 12 2C DD         [24]  666 	lcall	__gptrget
      002184 FC               [12]  667 	mov	r4,a
      002185 EE               [12]  668 	mov	a,r6
      002186 30 E7 1D         [24]  669 	jnb	acc.7,00104$
      002189 74 30            [12]  670 	mov	a,#0x30
      00218B 2D               [12]  671 	add	a,r5
      00218C FF               [12]  672 	mov	r7,a
      00218D E4               [12]  673 	clr	a
      00218E 3C               [12]  674 	addc	a,r4
      00218F FE               [12]  675 	mov	r6,a
      002190 A8 10            [24]  676 	mov	r0,_bp
      002192 08               [12]  677 	inc	r0
      002193 86 82            [24]  678 	mov	dpl,@r0
      002195 08               [12]  679 	inc	r0
      002196 86 83            [24]  680 	mov	dph,@r0
      002198 08               [12]  681 	inc	r0
      002199 86 F0            [24]  682 	mov	b,@r0
      00219B EF               [12]  683 	mov	a,r7
      00219C 12 2A D2         [24]  684 	lcall	__gptrput
      00219F A3               [24]  685 	inc	dptr
      0021A0 EE               [12]  686 	mov	a,r6
      0021A1 12 2A D2         [24]  687 	lcall	__gptrput
      0021A4 80 27            [24]  688 	sjmp	00105$
      0021A6                        689 00104$:
                                    690 ;	walk.c:78: else if (t->r >= ROWS) t->r -= ROWS;
      0021A6 C3               [12]  691 	clr	c
      0021A7 ED               [12]  692 	mov	a,r5
      0021A8 94 30            [12]  693 	subb	a,#0x30
      0021AA EC               [12]  694 	mov	a,r4
      0021AB 64 80            [12]  695 	xrl	a,#0x80
      0021AD 94 80            [12]  696 	subb	a,#0x80
      0021AF 40 1C            [24]  697 	jc	00105$
      0021B1 ED               [12]  698 	mov	a,r5
      0021B2 24 D0            [12]  699 	add	a,#0xd0
      0021B4 FD               [12]  700 	mov	r5,a
      0021B5 EC               [12]  701 	mov	a,r4
      0021B6 34 FF            [12]  702 	addc	a,#0xff
      0021B8 FC               [12]  703 	mov	r4,a
      0021B9 A8 10            [24]  704 	mov	r0,_bp
      0021BB 08               [12]  705 	inc	r0
      0021BC 86 82            [24]  706 	mov	dpl,@r0
      0021BE 08               [12]  707 	inc	r0
      0021BF 86 83            [24]  708 	mov	dph,@r0
      0021C1 08               [12]  709 	inc	r0
      0021C2 86 F0            [24]  710 	mov	b,@r0
      0021C4 ED               [12]  711 	mov	a,r5
      0021C5 12 2A D2         [24]  712 	lcall	__gptrput
      0021C8 A3               [24]  713 	inc	dptr
      0021C9 EC               [12]  714 	mov	a,r4
      0021CA 12 2A D2         [24]  715 	lcall	__gptrput
      0021CD                        716 00105$:
                                    717 ;	walk.c:79: if (t->c < 0) t->c += COLS;
      0021CD E5 10            [12]  718 	mov	a,_bp
      0021CF 24 08            [12]  719 	add	a,#0x08
      0021D1 F8               [12]  720 	mov	r0,a
      0021D2 86 82            [24]  721 	mov	dpl,@r0
      0021D4 08               [12]  722 	inc	r0
      0021D5 86 83            [24]  723 	mov	dph,@r0
      0021D7 08               [12]  724 	inc	r0
      0021D8 86 F0            [24]  725 	mov	b,@r0
      0021DA 12 2C DD         [24]  726 	lcall	__gptrget
      0021DD A3               [24]  727 	inc	dptr
      0021DE 12 2C DD         [24]  728 	lcall	__gptrget
      0021E1 30 E7 35         [24]  729 	jnb	acc.7,00109$
      0021E4 E5 10            [12]  730 	mov	a,_bp
      0021E6 24 08            [12]  731 	add	a,#0x08
      0021E8 F8               [12]  732 	mov	r0,a
      0021E9 86 82            [24]  733 	mov	dpl,@r0
      0021EB 08               [12]  734 	inc	r0
      0021EC 86 83            [24]  735 	mov	dph,@r0
      0021EE 08               [12]  736 	inc	r0
      0021EF 86 F0            [24]  737 	mov	b,@r0
      0021F1 12 2C DD         [24]  738 	lcall	__gptrget
      0021F4 FE               [12]  739 	mov	r6,a
      0021F5 A3               [24]  740 	inc	dptr
      0021F6 12 2C DD         [24]  741 	lcall	__gptrget
      0021F9 FF               [12]  742 	mov	r7,a
      0021FA 74 C0            [12]  743 	mov	a,#0xc0
      0021FC 2E               [12]  744 	add	a,r6
      0021FD FE               [12]  745 	mov	r6,a
      0021FE E4               [12]  746 	clr	a
      0021FF 3F               [12]  747 	addc	a,r7
      002200 FF               [12]  748 	mov	r7,a
      002201 E5 10            [12]  749 	mov	a,_bp
      002203 24 08            [12]  750 	add	a,#0x08
      002205 F8               [12]  751 	mov	r0,a
      002206 86 82            [24]  752 	mov	dpl,@r0
      002208 08               [12]  753 	inc	r0
      002209 86 83            [24]  754 	mov	dph,@r0
      00220B 08               [12]  755 	inc	r0
      00220C 86 F0            [24]  756 	mov	b,@r0
      00220E EE               [12]  757 	mov	a,r6
      00220F 12 2A D2         [24]  758 	lcall	__gptrput
      002212 A3               [24]  759 	inc	dptr
      002213 EF               [12]  760 	mov	a,r7
      002214 12 2A D2         [24]  761 	lcall	__gptrput
      002217 80 55            [24]  762 	sjmp	00110$
      002219                        763 00109$:
                                    764 ;	walk.c:80: else if (t->c >= COLS) t->c -= COLS;
      002219 E5 10            [12]  765 	mov	a,_bp
      00221B 24 08            [12]  766 	add	a,#0x08
      00221D F8               [12]  767 	mov	r0,a
      00221E 86 82            [24]  768 	mov	dpl,@r0
      002220 08               [12]  769 	inc	r0
      002221 86 83            [24]  770 	mov	dph,@r0
      002223 08               [12]  771 	inc	r0
      002224 86 F0            [24]  772 	mov	b,@r0
      002226 12 2C DD         [24]  773 	lcall	__gptrget
      002229 FE               [12]  774 	mov	r6,a
      00222A A3               [24]  775 	inc	dptr
      00222B 12 2C DD         [24]  776 	lcall	__gptrget
      00222E FF               [12]  777 	mov	r7,a
      00222F C3               [12]  778 	clr	c
      002230 EE               [12]  779 	mov	a,r6
      002231 94 C0            [12]  780 	subb	a,#0xc0
      002233 EF               [12]  781 	mov	a,r7
      002234 64 80            [12]  782 	xrl	a,#0x80
      002236 94 80            [12]  783 	subb	a,#0x80
      002238 40 34            [24]  784 	jc	00110$
      00223A E5 10            [12]  785 	mov	a,_bp
      00223C 24 08            [12]  786 	add	a,#0x08
      00223E F8               [12]  787 	mov	r0,a
      00223F 86 82            [24]  788 	mov	dpl,@r0
      002241 08               [12]  789 	inc	r0
      002242 86 83            [24]  790 	mov	dph,@r0
      002244 08               [12]  791 	inc	r0
      002245 86 F0            [24]  792 	mov	b,@r0
      002247 12 2C DD         [24]  793 	lcall	__gptrget
      00224A FE               [12]  794 	mov	r6,a
      00224B A3               [24]  795 	inc	dptr
      00224C 12 2C DD         [24]  796 	lcall	__gptrget
      00224F FF               [12]  797 	mov	r7,a
      002250 EE               [12]  798 	mov	a,r6
      002251 24 40            [12]  799 	add	a,#0x40
      002253 FE               [12]  800 	mov	r6,a
      002254 EF               [12]  801 	mov	a,r7
      002255 34 FF            [12]  802 	addc	a,#0xff
      002257 FF               [12]  803 	mov	r7,a
      002258 E5 10            [12]  804 	mov	a,_bp
      00225A 24 08            [12]  805 	add	a,#0x08
      00225C F8               [12]  806 	mov	r0,a
      00225D 86 82            [24]  807 	mov	dpl,@r0
      00225F 08               [12]  808 	inc	r0
      002260 86 83            [24]  809 	mov	dph,@r0
      002262 08               [12]  810 	inc	r0
      002263 86 F0            [24]  811 	mov	b,@r0
      002265 EE               [12]  812 	mov	a,r6
      002266 12 2A D2         [24]  813 	lcall	__gptrput
      002269 A3               [24]  814 	inc	dptr
      00226A EF               [12]  815 	mov	a,r7
      00226B 12 2A D2         [24]  816 	lcall	__gptrput
      00226E                        817 00110$:
                                    818 ;	walk.c:82: if (g[t->r][t->c] == 0xaa) return 0;
      00226E A8 10            [24]  819 	mov	r0,_bp
      002270 08               [12]  820 	inc	r0
      002271 86 82            [24]  821 	mov	dpl,@r0
      002273 08               [12]  822 	inc	r0
      002274 86 83            [24]  823 	mov	dph,@r0
      002276 08               [12]  824 	inc	r0
      002277 86 F0            [24]  825 	mov	b,@r0
      002279 12 2C DD         [24]  826 	lcall	__gptrget
      00227C FE               [12]  827 	mov	r6,a
      00227D A3               [24]  828 	inc	dptr
      00227E 12 2C DD         [24]  829 	lcall	__gptrget
      002281 FF               [12]  830 	mov	r7,a
      002282 C0 06            [24]  831 	push	ar6
      002284 C0 07            [24]  832 	push	ar7
      002286 90 00 C0         [24]  833 	mov	dptr,#0x00c0
      002289 12 2A ED         [24]  834 	lcall	__mulint
      00228C AE 82            [24]  835 	mov	r6,dpl
      00228E AF 83            [24]  836 	mov	r7,dph
      002290 15 81            [12]  837 	dec	sp
      002292 15 81            [12]  838 	dec	sp
      002294 EE               [12]  839 	mov	a,r6
      002295 24 00            [12]  840 	add	a,#_g
      002297 FE               [12]  841 	mov	r6,a
      002298 EF               [12]  842 	mov	a,r7
      002299 34 41            [12]  843 	addc	a,#(_g >> 8)
      00229B FF               [12]  844 	mov	r7,a
      00229C E5 10            [12]  845 	mov	a,_bp
      00229E 24 08            [12]  846 	add	a,#0x08
      0022A0 F8               [12]  847 	mov	r0,a
      0022A1 86 82            [24]  848 	mov	dpl,@r0
      0022A3 08               [12]  849 	inc	r0
      0022A4 86 83            [24]  850 	mov	dph,@r0
      0022A6 08               [12]  851 	inc	r0
      0022A7 86 F0            [24]  852 	mov	b,@r0
      0022A9 12 2C DD         [24]  853 	lcall	__gptrget
      0022AC FC               [12]  854 	mov	r4,a
      0022AD A3               [24]  855 	inc	dptr
      0022AE 12 2C DD         [24]  856 	lcall	__gptrget
      0022B1 FD               [12]  857 	mov	r5,a
      0022B2 EC               [12]  858 	mov	a,r4
      0022B3 2E               [12]  859 	add	a,r6
      0022B4 F5 82            [12]  860 	mov	dpl,a
      0022B6 ED               [12]  861 	mov	a,r5
      0022B7 3F               [12]  862 	addc	a,r7
      0022B8 F5 83            [12]  863 	mov	dph,a
      0022BA E0               [24]  864 	movx	a,@dptr
      0022BB FF               [12]  865 	mov	r7,a
      0022BC BF AA 05         [24]  866 	cjne	r7,#0xaa,00114$
      0022BF 90 00 00         [24]  867 	mov	dptr,#0x0000
      0022C2 80 62            [24]  868 	sjmp	00116$
      0022C4                        869 00114$:
                                    870 ;	walk.c:83: else if (g[t->r][t->c] != 0x55) {
      0022C4 A8 10            [24]  871 	mov	r0,_bp
      0022C6 08               [12]  872 	inc	r0
      0022C7 86 82            [24]  873 	mov	dpl,@r0
      0022C9 08               [12]  874 	inc	r0
      0022CA 86 83            [24]  875 	mov	dph,@r0
      0022CC 08               [12]  876 	inc	r0
      0022CD 86 F0            [24]  877 	mov	b,@r0
      0022CF 12 2C DD         [24]  878 	lcall	__gptrget
      0022D2 FE               [12]  879 	mov	r6,a
      0022D3 A3               [24]  880 	inc	dptr
      0022D4 12 2C DD         [24]  881 	lcall	__gptrget
      0022D7 FF               [12]  882 	mov	r7,a
      0022D8 C0 06            [24]  883 	push	ar6
      0022DA C0 07            [24]  884 	push	ar7
      0022DC 90 00 C0         [24]  885 	mov	dptr,#0x00c0
      0022DF 12 2A ED         [24]  886 	lcall	__mulint
      0022E2 AE 82            [24]  887 	mov	r6,dpl
      0022E4 AF 83            [24]  888 	mov	r7,dph
      0022E6 15 81            [12]  889 	dec	sp
      0022E8 15 81            [12]  890 	dec	sp
      0022EA EE               [12]  891 	mov	a,r6
      0022EB 24 00            [12]  892 	add	a,#_g
      0022ED FE               [12]  893 	mov	r6,a
      0022EE EF               [12]  894 	mov	a,r7
      0022EF 34 41            [12]  895 	addc	a,#(_g >> 8)
      0022F1 FF               [12]  896 	mov	r7,a
      0022F2 E5 10            [12]  897 	mov	a,_bp
      0022F4 24 08            [12]  898 	add	a,#0x08
      0022F6 F8               [12]  899 	mov	r0,a
      0022F7 86 82            [24]  900 	mov	dpl,@r0
      0022F9 08               [12]  901 	inc	r0
      0022FA 86 83            [24]  902 	mov	dph,@r0
      0022FC 08               [12]  903 	inc	r0
      0022FD 86 F0            [24]  904 	mov	b,@r0
      0022FF 12 2C DD         [24]  905 	lcall	__gptrget
      002302 FC               [12]  906 	mov	r4,a
      002303 A3               [24]  907 	inc	dptr
      002304 12 2C DD         [24]  908 	lcall	__gptrget
      002307 FD               [12]  909 	mov	r5,a
      002308 EC               [12]  910 	mov	a,r4
      002309 2E               [12]  911 	add	a,r6
      00230A F5 82            [12]  912 	mov	dpl,a
      00230C ED               [12]  913 	mov	a,r5
      00230D 3F               [12]  914 	addc	a,r7
      00230E F5 83            [12]  915 	mov	dph,a
      002310 E0               [24]  916 	movx	a,@dptr
      002311 FF               [12]  917 	mov	r7,a
      002312 BF 55 02         [24]  918 	cjne	r7,#0x55,00148$
      002315 80 0C            [24]  919 	sjmp	00115$
      002317                        920 00148$:
                                    921 ;	walk.c:84: (void)puts("Memory error");
      002317 90 3F F7         [24]  922 	mov	dptr,#___str_0
      00231A 75 F0 80         [24]  923 	mov	b,#0x80
      00231D 12 2C 1E         [24]  924 	lcall	_puts
                                    925 ;	walk.c:85: reset();
      002320 12 20 88         [24]  926 	lcall	_reset
      002323                        927 00115$:
                                    928 ;	walk.c:88: return 1;
      002323 90 00 01         [24]  929 	mov	dptr,#0x0001
      002326                        930 00116$:
                                    931 ;	walk.c:89: }
      002326 85 10 81         [24]  932 	mov	sp,_bp
      002329 D0 10            [24]  933 	pop	_bp
      00232B 22               [24]  934 	ret
                                    935 ;------------------------------------------------------------
                                    936 ;Allocation info for local variables in function 'walk'
                                    937 ;------------------------------------------------------------
                                    938 ;nstart                    Allocated to registers 
                                    939 ;cur                       Allocated to stack - _bp +10
                                    940 ;t                         Allocated to stack - _bp +14
                                    941 ;j                         Allocated to stack - _bp +18
                                    942 ;f                         Allocated to stack - _bp +20
                                    943 ;sloc0                     Allocated to stack - _bp +1
                                    944 ;sloc1                     Allocated to stack - _bp +2
                                    945 ;sloc2                     Allocated to stack - _bp +3
                                    946 ;sloc3                     Allocated to stack - _bp +19
                                    947 ;sloc4                     Allocated to stack - _bp +4
                                    948 ;sloc5                     Allocated to stack - _bp +5
                                    949 ;sloc6                     Allocated to stack - _bp +6
                                    950 ;sloc7                     Allocated to stack - _bp +7
                                    951 ;------------------------------------------------------------
                                    952 ;	walk.c:91: static void walk(struct node *nstart) {
                                    953 ;	-----------------------------------------
                                    954 ;	 function walk
                                    955 ;	-----------------------------------------
      00232C                        956 _walk:
      00232C C0 10            [24]  957 	push	_bp
      00232E E5 81            [12]  958 	mov	a,sp
      002330 F5 10            [12]  959 	mov	_bp,a
      002332 24 15            [12]  960 	add	a,#0x15
      002334 F5 81            [12]  961 	mov	sp,a
      002336 AD 82            [24]  962 	mov	r5,dpl
      002338 AE 83            [24]  963 	mov	r6,dph
      00233A AF F0            [24]  964 	mov	r7,b
                                    965 ;	walk.c:95: cur = *nstart;
      00233C E5 10            [12]  966 	mov	a,_bp
      00233E 24 0A            [12]  967 	add	a,#0x0a
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
      00235B 12 2B 8B         [24]  983 	lcall	___memcpy
      00235E E5 81            [12]  984 	mov	a,sp
      002360 24 FB            [12]  985 	add	a,#0xfb
      002362 F5 81            [12]  986 	mov	sp,a
      002364 D0 01            [24]  987 	pop	ar1
                                    988 ;	walk.c:97: process:
      002366 E5 10            [12]  989 	mov	a,_bp
      002368 24 06            [12]  990 	add	a,#0x06
      00236A F8               [12]  991 	mov	r0,a
      00236B A6 01            [24]  992 	mov	@r0,ar1
      00236D E5 10            [12]  993 	mov	a,_bp
      00236F 24 0E            [12]  994 	add	a,#0x0e
      002371 FE               [12]  995 	mov	r6,a
      002372 E5 10            [12]  996 	mov	a,_bp
      002374 24 03            [12]  997 	add	a,#0x03
      002376 F8               [12]  998 	mov	r0,a
      002377 A6 01            [24]  999 	mov	@r0,ar1
      002379 E5 10            [12] 1000 	mov	a,_bp
      00237B 24 05            [12] 1001 	add	a,#0x05
      00237D F8               [12] 1002 	mov	r0,a
      00237E A6 01            [24] 1003 	mov	@r0,ar1
      002380 E5 10            [12] 1004 	mov	a,_bp
      002382 24 04            [12] 1005 	add	a,#0x04
      002384 F8               [12] 1006 	mov	r0,a
      002385 A6 06            [24] 1007 	mov	@r0,ar6
      002387 89 02            [24] 1008 	mov	ar2,r1
      002389 A8 10            [24] 1009 	mov	r0,_bp
      00238B 08               [12] 1010 	inc	r0
      00238C A6 06            [24] 1011 	mov	@r0,ar6
      00238E A8 10            [24] 1012 	mov	r0,_bp
      002390 08               [12] 1013 	inc	r0
      002391 08               [12] 1014 	inc	r0
      002392 A6 01            [24] 1015 	mov	@r0,ar1
      002394 74 02            [12] 1016 	mov	a,#0x02
      002396 29               [12] 1017 	add	a,r1
      002397 F8               [12] 1018 	mov	r0,a
      002398                       1019 00101$:
                                   1020 ;	walk.c:98: g[cur.r][cur.c] = 0xaa;
      002398 C0 02            [24] 1021 	push	ar2
      00239A 87 02            [24] 1022 	mov	ar2,@r1
      00239C 09               [12] 1023 	inc	r1
      00239D 87 05            [24] 1024 	mov	ar5,@r1
      00239F 19               [12] 1025 	dec	r1
      0023A0 C0 06            [24] 1026 	push	ar6
      0023A2 C0 01            [24] 1027 	push	ar1
      0023A4 C0 00            [24] 1028 	push	ar0
      0023A6 C0 02            [24] 1029 	push	ar2
      0023A8 C0 05            [24] 1030 	push	ar5
      0023AA 90 00 C0         [24] 1031 	mov	dptr,#0x00c0
      0023AD 12 2A ED         [24] 1032 	lcall	__mulint
      0023B0 AA 82            [24] 1033 	mov	r2,dpl
      0023B2 AD 83            [24] 1034 	mov	r5,dph
      0023B4 15 81            [12] 1035 	dec	sp
      0023B6 15 81            [12] 1036 	dec	sp
      0023B8 D0 00            [24] 1037 	pop	ar0
      0023BA D0 01            [24] 1038 	pop	ar1
      0023BC EA               [12] 1039 	mov	a,r2
      0023BD 24 00            [12] 1040 	add	a,#_g
      0023BF FF               [12] 1041 	mov	r7,a
      0023C0 ED               [12] 1042 	mov	a,r5
      0023C1 34 41            [12] 1043 	addc	a,#(_g >> 8)
      0023C3 FC               [12] 1044 	mov	r4,a
      0023C4 86 02            [24] 1045 	mov	ar2,@r0
      0023C6 08               [12] 1046 	inc	r0
      0023C7 86 05            [24] 1047 	mov	ar5,@r0
      0023C9 18               [12] 1048 	dec	r0
      0023CA EA               [12] 1049 	mov	a,r2
      0023CB 2F               [12] 1050 	add	a,r7
      0023CC F5 82            [12] 1051 	mov	dpl,a
      0023CE ED               [12] 1052 	mov	a,r5
      0023CF 3C               [12] 1053 	addc	a,r4
      0023D0 F5 83            [12] 1054 	mov	dph,a
      0023D2 74 AA            [12] 1055 	mov	a,#0xaa
      0023D4 F0               [24] 1056 	movx	@dptr,a
                                   1057 ;	walk.c:99: printf("\033[%d;%dHo", cur.r + 4, cur.c + 1);
      0023D5 86 02            [24] 1058 	mov	ar2,@r0
      0023D7 08               [12] 1059 	inc	r0
      0023D8 86 05            [24] 1060 	mov	ar5,@r0
      0023DA 18               [12] 1061 	dec	r0
      0023DB 74 01            [12] 1062 	mov	a,#0x01
      0023DD 2A               [12] 1063 	add	a,r2
      0023DE FF               [12] 1064 	mov	r7,a
      0023DF E4               [12] 1065 	clr	a
      0023E0 3D               [12] 1066 	addc	a,r5
      0023E1 FC               [12] 1067 	mov	r4,a
      0023E2 87 02            [24] 1068 	mov	ar2,@r1
      0023E4 09               [12] 1069 	inc	r1
      0023E5 87 05            [24] 1070 	mov	ar5,@r1
      0023E7 19               [12] 1071 	dec	r1
      0023E8 74 04            [12] 1072 	mov	a,#0x04
      0023EA 2A               [12] 1073 	add	a,r2
      0023EB FA               [12] 1074 	mov	r2,a
      0023EC E4               [12] 1075 	clr	a
      0023ED 3D               [12] 1076 	addc	a,r5
      0023EE FD               [12] 1077 	mov	r5,a
      0023EF C0 02            [24] 1078 	push	ar2
      0023F1 C0 01            [24] 1079 	push	ar1
      0023F3 C0 00            [24] 1080 	push	ar0
      0023F5 C0 07            [24] 1081 	push	ar7
      0023F7 C0 04            [24] 1082 	push	ar4
      0023F9 C0 02            [24] 1083 	push	ar2
      0023FB C0 05            [24] 1084 	push	ar5
      0023FD 74 04            [12] 1085 	mov	a,#___str_1
      0023FF C0 E0            [24] 1086 	push	acc
      002401 74 40            [12] 1087 	mov	a,#(___str_1 >> 8)
      002403 C0 E0            [24] 1088 	push	acc
      002405 74 80            [12] 1089 	mov	a,#0x80
      002407 C0 E0            [24] 1090 	push	acc
      002409 12 2C A4         [24] 1091 	lcall	_printf
      00240C E5 81            [12] 1092 	mov	a,sp
      00240E 24 F9            [12] 1093 	add	a,#0xf9
      002410 F5 81            [12] 1094 	mov	sp,a
      002412 D0 00            [24] 1095 	pop	ar0
      002414 D0 01            [24] 1096 	pop	ar1
      002416 D0 02            [24] 1097 	pop	ar2
      002418 D0 06            [24] 1098 	pop	ar6
                                   1099 ;	walk.c:129: return;
      00241A D0 02            [24] 1100 	pop	ar2
                                   1101 ;	walk.c:101: next:
      00241C                       1102 00102$:
                                   1103 ;	walk.c:102: printf("\033[2;1H% 8d% 8d% 8d", sp, cur.r, cur.c);
      00241C C0 02            [24] 1104 	push	ar2
      00241E 86 07            [24] 1105 	mov	ar7,@r0
      002420 08               [12] 1106 	inc	r0
      002421 86 04            [24] 1107 	mov	ar4,@r0
      002423 18               [12] 1108 	dec	r0
      002424 87 02            [24] 1109 	mov	ar2,@r1
      002426 09               [12] 1110 	inc	r1
      002427 87 05            [24] 1111 	mov	ar5,@r1
      002429 19               [12] 1112 	dec	r1
      00242A C0 06            [24] 1113 	push	ar6
      00242C C0 02            [24] 1114 	push	ar2
      00242E C0 01            [24] 1115 	push	ar1
      002430 C0 00            [24] 1116 	push	ar0
      002432 C0 07            [24] 1117 	push	ar7
      002434 C0 04            [24] 1118 	push	ar4
      002436 C0 02            [24] 1119 	push	ar2
      002438 C0 05            [24] 1120 	push	ar5
      00243A 90 F5 00         [24] 1121 	mov	dptr,#_sp
      00243D E0               [24] 1122 	movx	a,@dptr
      00243E C0 E0            [24] 1123 	push	acc
      002440 A3               [24] 1124 	inc	dptr
      002441 E0               [24] 1125 	movx	a,@dptr
      002442 C0 E0            [24] 1126 	push	acc
      002444 74 0E            [12] 1127 	mov	a,#___str_2
      002446 C0 E0            [24] 1128 	push	acc
      002448 74 40            [12] 1129 	mov	a,#(___str_2 >> 8)
      00244A C0 E0            [24] 1130 	push	acc
      00244C 74 80            [12] 1131 	mov	a,#0x80
      00244E C0 E0            [24] 1132 	push	acc
      002450 12 2C A4         [24] 1133 	lcall	_printf
      002453 E5 81            [12] 1134 	mov	a,sp
      002455 24 F7            [12] 1135 	add	a,#0xf7
      002457 F5 81            [12] 1136 	mov	sp,a
      002459 D0 00            [24] 1137 	pop	ar0
      00245B D0 01            [24] 1138 	pop	ar1
      00245D D0 02            [24] 1139 	pop	ar2
      00245F D0 06            [24] 1140 	pop	ar6
                                   1141 ;	walk.c:104: for (j = 0, f = 0; j < NMAX; j++) {
      002461 C0 00            [24] 1142 	push	ar0
      002463 E5 10            [12] 1143 	mov	a,_bp
      002465 24 14            [12] 1144 	add	a,#0x14
      002467 F8               [12] 1145 	mov	r0,a
      002468 E4               [12] 1146 	clr	a
      002469 F6               [12] 1147 	mov	@r0,a
      00246A 08               [12] 1148 	inc	r0
      00246B F6               [12] 1149 	mov	@r0,a
      00246C E5 10            [12] 1150 	mov	a,_bp
      00246E 24 12            [12] 1151 	add	a,#0x12
      002470 F8               [12] 1152 	mov	r0,a
      002471 E4               [12] 1153 	clr	a
      002472 F6               [12] 1154 	mov	@r0,a
      002473 08               [12] 1155 	inc	r0
      002474 F6               [12] 1156 	mov	@r0,a
      002475 D0 00            [24] 1157 	pop	ar0
                                   1158 ;	walk.c:129: return;
      002477 D0 02            [24] 1159 	pop	ar2
                                   1160 ;	walk.c:104: for (j = 0, f = 0; j < NMAX; j++) {
      002479                       1161 00120$:
      002479 C0 00            [24] 1162 	push	ar0
      00247B E5 10            [12] 1163 	mov	a,_bp
      00247D 24 12            [12] 1164 	add	a,#0x12
      00247F F8               [12] 1165 	mov	r0,a
      002480 C3               [12] 1166 	clr	c
      002481 E6               [12] 1167 	mov	a,@r0
      002482 94 08            [12] 1168 	subb	a,#0x08
      002484 08               [12] 1169 	inc	r0
      002485 E6               [12] 1170 	mov	a,@r0
      002486 64 80            [12] 1171 	xrl	a,#0x80
      002488 94 80            [12] 1172 	subb	a,#0x80
      00248A D0 00            [24] 1173 	pop	ar0
      00248C 40 03            [24] 1174 	jc	00160$
      00248E 02 25 21         [24] 1175 	ljmp	00106$
      002491                       1176 00160$:
                                   1177 ;	walk.c:105: if (!update(&t, &cur, j)) continue;
      002491 C0 02            [24] 1178 	push	ar2
      002493 C0 00            [24] 1179 	push	ar0
      002495 E5 10            [12] 1180 	mov	a,_bp
      002497 24 06            [12] 1181 	add	a,#0x06
      002499 F8               [12] 1182 	mov	r0,a
      00249A C0 01            [24] 1183 	push	ar1
      00249C E5 10            [12] 1184 	mov	a,_bp
      00249E 24 07            [12] 1185 	add	a,#0x07
      0024A0 F9               [12] 1186 	mov	r1,a
      0024A1 E6               [12] 1187 	mov	a,@r0
      0024A2 F7               [12] 1188 	mov	@r1,a
      0024A3 09               [12] 1189 	inc	r1
      0024A4 77 00            [12] 1190 	mov	@r1,#0x00
      0024A6 09               [12] 1191 	inc	r1
      0024A7 77 40            [12] 1192 	mov	@r1,#0x40
      0024A9 D0 01            [24] 1193 	pop	ar1
      0024AB D0 00            [24] 1194 	pop	ar0
      0024AD 8E 04            [24] 1195 	mov	ar4,r6
      0024AF 7D 00            [12] 1196 	mov	r5,#0x00
      0024B1 7F 40            [12] 1197 	mov	r7,#0x40
      0024B3 C0 06            [24] 1198 	push	ar6
      0024B5 C0 02            [24] 1199 	push	ar2
      0024B7 C0 01            [24] 1200 	push	ar1
      0024B9 C0 00            [24] 1201 	push	ar0
      0024BB 85 00 F0         [24] 1202 	mov	b,ar0
      0024BE E5 10            [12] 1203 	mov	a,_bp
      0024C0 24 12            [12] 1204 	add	a,#0x12
      0024C2 F8               [12] 1205 	mov	r0,a
      0024C3 E6               [12] 1206 	mov	a,@r0
      0024C4 C0 E0            [24] 1207 	push	acc
      0024C6 08               [12] 1208 	inc	r0
      0024C7 E6               [12] 1209 	mov	a,@r0
      0024C8 C0 E0            [24] 1210 	push	acc
      0024CA A8 F0            [24] 1211 	mov	r0,b
      0024CC 85 00 F0         [24] 1212 	mov	b,ar0
      0024CF E5 10            [12] 1213 	mov	a,_bp
      0024D1 24 07            [12] 1214 	add	a,#0x07
      0024D3 F8               [12] 1215 	mov	r0,a
      0024D4 E6               [12] 1216 	mov	a,@r0
      0024D5 C0 E0            [24] 1217 	push	acc
      0024D7 08               [12] 1218 	inc	r0
      0024D8 E6               [12] 1219 	mov	a,@r0
      0024D9 C0 E0            [24] 1220 	push	acc
      0024DB 08               [12] 1221 	inc	r0
      0024DC E6               [12] 1222 	mov	a,@r0
      0024DD C0 E0            [24] 1223 	push	acc
      0024DF 8C 82            [24] 1224 	mov	dpl,r4
      0024E1 8D 83            [24] 1225 	mov	dph,r5
      0024E3 8F F0            [24] 1226 	mov	b,r7
      0024E5 12 20 8B         [24] 1227 	lcall	_update
      0024E8 AD 82            [24] 1228 	mov	r5,dpl
      0024EA AF 83            [24] 1229 	mov	r7,dph
      0024EC E5 81            [12] 1230 	mov	a,sp
      0024EE 24 FB            [12] 1231 	add	a,#0xfb
      0024F0 F5 81            [12] 1232 	mov	sp,a
      0024F2 D0 00            [24] 1233 	pop	ar0
      0024F4 D0 01            [24] 1234 	pop	ar1
      0024F6 D0 02            [24] 1235 	pop	ar2
      0024F8 D0 06            [24] 1236 	pop	ar6
      0024FA D0 02            [24] 1237 	pop	ar2
      0024FC ED               [12] 1238 	mov	a,r5
      0024FD 4F               [12] 1239 	orl	a,r7
      0024FE 60 0F            [24] 1240 	jz	00105$
                                   1241 ;	walk.c:106: f++;
      002500 C0 00            [24] 1242 	push	ar0
      002502 E5 10            [12] 1243 	mov	a,_bp
      002504 24 14            [12] 1244 	add	a,#0x14
      002506 F8               [12] 1245 	mov	r0,a
      002507 06               [12] 1246 	inc	@r0
      002508 B6 00 02         [24] 1247 	cjne	@r0,#0x00,00162$
      00250B 08               [12] 1248 	inc	r0
      00250C 06               [12] 1249 	inc	@r0
      00250D                       1250 00162$:
      00250D D0 00            [24] 1251 	pop	ar0
      00250F                       1252 00105$:
                                   1253 ;	walk.c:104: for (j = 0, f = 0; j < NMAX; j++) {
      00250F C0 00            [24] 1254 	push	ar0
      002511 E5 10            [12] 1255 	mov	a,_bp
      002513 24 12            [12] 1256 	add	a,#0x12
      002515 F8               [12] 1257 	mov	r0,a
      002516 06               [12] 1258 	inc	@r0
      002517 B6 00 02         [24] 1259 	cjne	@r0,#0x00,00163$
      00251A 08               [12] 1260 	inc	r0
      00251B 06               [12] 1261 	inc	@r0
      00251C                       1262 00163$:
      00251C D0 00            [24] 1263 	pop	ar0
      00251E 02 24 79         [24] 1264 	ljmp	00120$
      002521                       1265 00106$:
                                   1266 ;	walk.c:109: if (f) {
      002521 C0 00            [24] 1267 	push	ar0
      002523 E5 10            [12] 1268 	mov	a,_bp
      002525 24 14            [12] 1269 	add	a,#0x14
      002527 F8               [12] 1270 	mov	r0,a
      002528 E6               [12] 1271 	mov	a,@r0
      002529 08               [12] 1272 	inc	r0
      00252A 46               [12] 1273 	orl	a,@r0
      00252B D0 00            [24] 1274 	pop	ar0
      00252D 70 03            [24] 1275 	jnz	00164$
      00252F 02 26 87         [24] 1276 	ljmp	00115$
      002532                       1277 00164$:
                                   1278 ;	walk.c:110: while (1) {
      002532                       1279 00112$:
                                   1280 ;	walk.c:111: j = rand() % NMAX;
      002532 C0 02            [24] 1281 	push	ar2
      002534 C0 06            [24] 1282 	push	ar6
      002536 C0 02            [24] 1283 	push	ar2
      002538 C0 01            [24] 1284 	push	ar1
      00253A C0 00            [24] 1285 	push	ar0
      00253C 12 29 F5         [24] 1286 	lcall	_rand
      00253F AD 82            [24] 1287 	mov	r5,dpl
      002541 AF 83            [24] 1288 	mov	r7,dph
      002543 74 08            [12] 1289 	mov	a,#0x08
      002545 C0 E0            [24] 1290 	push	acc
      002547 E4               [12] 1291 	clr	a
      002548 C0 E0            [24] 1292 	push	acc
      00254A 8D 82            [24] 1293 	mov	dpl,r5
      00254C 8F 83            [24] 1294 	mov	dph,r7
      00254E 12 2C F9         [24] 1295 	lcall	__modsint
      002551 C0 00            [24] 1296 	push	ar0
      002553 C8               [12] 1297 	xch	a,r0
      002554 E5 10            [12] 1298 	mov	a,_bp
      002556 24 12            [12] 1299 	add	a,#0x12
      002558 C8               [12] 1300 	xch	a,r0
      002559 A6 82            [24] 1301 	mov	@r0,dpl
      00255B 08               [12] 1302 	inc	r0
      00255C A6 83            [24] 1303 	mov	@r0,dph
      00255E D0 00            [24] 1304 	pop	ar0
      002560 15 81            [12] 1305 	dec	sp
      002562 15 81            [12] 1306 	dec	sp
      002564 D0 00            [24] 1307 	pop	ar0
      002566 D0 01            [24] 1308 	pop	ar1
      002568 D0 02            [24] 1309 	pop	ar2
      00256A D0 06            [24] 1310 	pop	ar6
                                   1311 ;	walk.c:112: if (!update(&t, &cur, j)) continue;
      00256C C0 00            [24] 1312 	push	ar0
      00256E E5 10            [12] 1313 	mov	a,_bp
      002570 24 05            [12] 1314 	add	a,#0x05
      002572 F8               [12] 1315 	mov	r0,a
      002573 C0 01            [24] 1316 	push	ar1
      002575 E5 10            [12] 1317 	mov	a,_bp
      002577 24 07            [12] 1318 	add	a,#0x07
      002579 F9               [12] 1319 	mov	r1,a
      00257A E6               [12] 1320 	mov	a,@r0
      00257B F7               [12] 1321 	mov	@r1,a
      00257C 09               [12] 1322 	inc	r1
      00257D 77 00            [12] 1323 	mov	@r1,#0x00
      00257F 09               [12] 1324 	inc	r1
      002580 77 40            [12] 1325 	mov	@r1,#0x40
      002582 D0 01            [24] 1326 	pop	ar1
      002584 E5 10            [12] 1327 	mov	a,_bp
      002586 24 04            [12] 1328 	add	a,#0x04
      002588 F8               [12] 1329 	mov	r0,a
      002589 86 04            [24] 1330 	mov	ar4,@r0
      00258B 7D 00            [12] 1331 	mov	r5,#0x00
      00258D 7F 40            [12] 1332 	mov	r7,#0x40
      00258F D0 00            [24] 1333 	pop	ar0
      002591 C0 06            [24] 1334 	push	ar6
      002593 C0 02            [24] 1335 	push	ar2
      002595 C0 01            [24] 1336 	push	ar1
      002597 C0 00            [24] 1337 	push	ar0
      002599 85 00 F0         [24] 1338 	mov	b,ar0
      00259C E5 10            [12] 1339 	mov	a,_bp
      00259E 24 12            [12] 1340 	add	a,#0x12
      0025A0 F8               [12] 1341 	mov	r0,a
      0025A1 E6               [12] 1342 	mov	a,@r0
      0025A2 C0 E0            [24] 1343 	push	acc
      0025A4 08               [12] 1344 	inc	r0
      0025A5 E6               [12] 1345 	mov	a,@r0
      0025A6 C0 E0            [24] 1346 	push	acc
      0025A8 A8 F0            [24] 1347 	mov	r0,b
      0025AA 85 00 F0         [24] 1348 	mov	b,ar0
      0025AD E5 10            [12] 1349 	mov	a,_bp
      0025AF 24 07            [12] 1350 	add	a,#0x07
      0025B1 F8               [12] 1351 	mov	r0,a
      0025B2 E6               [12] 1352 	mov	a,@r0
      0025B3 C0 E0            [24] 1353 	push	acc
      0025B5 08               [12] 1354 	inc	r0
      0025B6 E6               [12] 1355 	mov	a,@r0
      0025B7 C0 E0            [24] 1356 	push	acc
      0025B9 08               [12] 1357 	inc	r0
      0025BA E6               [12] 1358 	mov	a,@r0
      0025BB C0 E0            [24] 1359 	push	acc
      0025BD 8C 82            [24] 1360 	mov	dpl,r4
      0025BF 8D 83            [24] 1361 	mov	dph,r5
      0025C1 8F F0            [24] 1362 	mov	b,r7
      0025C3 12 20 8B         [24] 1363 	lcall	_update
      0025C6 AD 82            [24] 1364 	mov	r5,dpl
      0025C8 AF 83            [24] 1365 	mov	r7,dph
      0025CA E5 81            [12] 1366 	mov	a,sp
      0025CC 24 FB            [12] 1367 	add	a,#0xfb
      0025CE F5 81            [12] 1368 	mov	sp,a
      0025D0 D0 00            [24] 1369 	pop	ar0
      0025D2 D0 01            [24] 1370 	pop	ar1
      0025D4 D0 02            [24] 1371 	pop	ar2
      0025D6 D0 06            [24] 1372 	pop	ar6
      0025D8 D0 02            [24] 1373 	pop	ar2
      0025DA ED               [12] 1374 	mov	a,r5
      0025DB 4F               [12] 1375 	orl	a,r7
      0025DC 70 03            [24] 1376 	jnz	00165$
      0025DE 02 25 32         [24] 1377 	ljmp	00112$
      0025E1                       1378 00165$:
                                   1379 ;	walk.c:114: if (!stpush(&cur)) {
      0025E1 8A 04            [24] 1380 	mov	ar4,r2
      0025E3 7D 00            [12] 1381 	mov	r5,#0x00
      0025E5 7F 40            [12] 1382 	mov	r7,#0x40
      0025E7 8C 82            [24] 1383 	mov	dpl,r4
      0025E9 8D 83            [24] 1384 	mov	dph,r5
      0025EB 8F F0            [24] 1385 	mov	b,r7
      0025ED C0 06            [24] 1386 	push	ar6
      0025EF C0 02            [24] 1387 	push	ar2
      0025F1 C0 01            [24] 1388 	push	ar1
      0025F3 C0 00            [24] 1389 	push	ar0
      0025F5 12 29 32         [24] 1390 	lcall	_stpush
      0025F8 E5 82            [12] 1391 	mov	a,dpl
      0025FA 85 83 F0         [24] 1392 	mov	b,dph
      0025FD D0 00            [24] 1393 	pop	ar0
      0025FF D0 01            [24] 1394 	pop	ar1
      002601 D0 02            [24] 1395 	pop	ar2
      002603 D0 06            [24] 1396 	pop	ar6
      002605 45 F0            [12] 1397 	orl	a,b
      002607 70 1C            [24] 1398 	jnz	00110$
                                   1399 ;	walk.c:115: (void)puts("Memory error");
      002609 90 3F F7         [24] 1400 	mov	dptr,#___str_0
      00260C 75 F0 80         [24] 1401 	mov	b,#0x80
      00260F C0 06            [24] 1402 	push	ar6
      002611 C0 02            [24] 1403 	push	ar2
      002613 C0 01            [24] 1404 	push	ar1
      002615 C0 00            [24] 1405 	push	ar0
      002617 12 2C 1E         [24] 1406 	lcall	_puts
      00261A D0 00            [24] 1407 	pop	ar0
      00261C D0 01            [24] 1408 	pop	ar1
      00261E D0 02            [24] 1409 	pop	ar2
      002620 D0 06            [24] 1410 	pop	ar6
                                   1411 ;	walk.c:116: reset();
      002622 12 20 88         [24] 1412 	lcall	_reset
      002625                       1413 00110$:
                                   1414 ;	walk.c:118: cur = t;
      002625 C0 02            [24] 1415 	push	ar2
      002627 C0 00            [24] 1416 	push	ar0
      002629 A8 10            [24] 1417 	mov	r0,_bp
      00262B 08               [12] 1418 	inc	r0
      00262C C0 01            [24] 1419 	push	ar1
      00262E E5 10            [12] 1420 	mov	a,_bp
      002630 24 07            [12] 1421 	add	a,#0x07
      002632 F9               [12] 1422 	mov	r1,a
      002633 E6               [12] 1423 	mov	a,@r0
      002634 F7               [12] 1424 	mov	@r1,a
      002635 09               [12] 1425 	inc	r1
      002636 77 00            [12] 1426 	mov	@r1,#0x00
      002638 09               [12] 1427 	inc	r1
      002639 77 40            [12] 1428 	mov	@r1,#0x40
      00263B D0 01            [24] 1429 	pop	ar1
      00263D A8 10            [24] 1430 	mov	r0,_bp
      00263F 08               [12] 1431 	inc	r0
      002640 08               [12] 1432 	inc	r0
      002641 86 02            [24] 1433 	mov	ar2,@r0
      002643 7B 00            [12] 1434 	mov	r3,#0x00
      002645 7F 40            [12] 1435 	mov	r7,#0x40
      002647 D0 00            [24] 1436 	pop	ar0
      002649 C0 06            [24] 1437 	push	ar6
      00264B C0 02            [24] 1438 	push	ar2
      00264D C0 01            [24] 1439 	push	ar1
      00264F C0 00            [24] 1440 	push	ar0
      002651 74 04            [12] 1441 	mov	a,#0x04
      002653 C0 E0            [24] 1442 	push	acc
      002655 E4               [12] 1443 	clr	a
      002656 C0 E0            [24] 1444 	push	acc
      002658 85 00 F0         [24] 1445 	mov	b,ar0
      00265B E5 10            [12] 1446 	mov	a,_bp
      00265D 24 07            [12] 1447 	add	a,#0x07
      00265F F8               [12] 1448 	mov	r0,a
      002660 E6               [12] 1449 	mov	a,@r0
      002661 C0 E0            [24] 1450 	push	acc
      002663 08               [12] 1451 	inc	r0
      002664 E6               [12] 1452 	mov	a,@r0
      002665 C0 E0            [24] 1453 	push	acc
      002667 08               [12] 1454 	inc	r0
      002668 E6               [12] 1455 	mov	a,@r0
      002669 C0 E0            [24] 1456 	push	acc
      00266B 8A 82            [24] 1457 	mov	dpl,r2
      00266D 8B 83            [24] 1458 	mov	dph,r3
      00266F 8F F0            [24] 1459 	mov	b,r7
      002671 12 2B 8B         [24] 1460 	lcall	___memcpy
      002674 E5 81            [12] 1461 	mov	a,sp
      002676 24 FB            [12] 1462 	add	a,#0xfb
      002678 F5 81            [12] 1463 	mov	sp,a
      00267A D0 00            [24] 1464 	pop	ar0
      00267C D0 01            [24] 1465 	pop	ar1
      00267E D0 02            [24] 1466 	pop	ar2
      002680 D0 06            [24] 1467 	pop	ar6
                                   1468 ;	walk.c:119: goto process;
      002682 D0 02            [24] 1469 	pop	ar2
      002684 02 23 98         [24] 1470 	ljmp	00101$
      002687                       1471 00115$:
                                   1472 ;	walk.c:123: printf("\033[%d;%dH.", cur.r + 4, cur.c + 1);
      002687 86 05            [24] 1473 	mov	ar5,@r0
      002689 08               [12] 1474 	inc	r0
      00268A 86 07            [24] 1475 	mov	ar7,@r0
      00268C 18               [12] 1476 	dec	r0
      00268D 0D               [12] 1477 	inc	r5
      00268E BD 00 01         [24] 1478 	cjne	r5,#0x00,00167$
      002691 0F               [12] 1479 	inc	r7
      002692                       1480 00167$:
      002692 87 03            [24] 1481 	mov	ar3,@r1
      002694 09               [12] 1482 	inc	r1
      002695 87 04            [24] 1483 	mov	ar4,@r1
      002697 19               [12] 1484 	dec	r1
      002698 74 04            [12] 1485 	mov	a,#0x04
      00269A 2B               [12] 1486 	add	a,r3
      00269B FB               [12] 1487 	mov	r3,a
      00269C E4               [12] 1488 	clr	a
      00269D 3C               [12] 1489 	addc	a,r4
      00269E FC               [12] 1490 	mov	r4,a
      00269F C0 06            [24] 1491 	push	ar6
      0026A1 C0 02            [24] 1492 	push	ar2
      0026A3 C0 01            [24] 1493 	push	ar1
      0026A5 C0 00            [24] 1494 	push	ar0
      0026A7 C0 05            [24] 1495 	push	ar5
      0026A9 C0 07            [24] 1496 	push	ar7
      0026AB C0 03            [24] 1497 	push	ar3
      0026AD C0 04            [24] 1498 	push	ar4
      0026AF 74 21            [12] 1499 	mov	a,#___str_3
      0026B1 C0 E0            [24] 1500 	push	acc
      0026B3 74 40            [12] 1501 	mov	a,#(___str_3 >> 8)
      0026B5 C0 E0            [24] 1502 	push	acc
      0026B7 74 80            [12] 1503 	mov	a,#0x80
      0026B9 C0 E0            [24] 1504 	push	acc
      0026BB 12 2C A4         [24] 1505 	lcall	_printf
      0026BE E5 81            [12] 1506 	mov	a,sp
      0026C0 24 F9            [12] 1507 	add	a,#0xf9
      0026C2 F5 81            [12] 1508 	mov	sp,a
      0026C4 D0 00            [24] 1509 	pop	ar0
      0026C6 D0 01            [24] 1510 	pop	ar1
      0026C8 D0 02            [24] 1511 	pop	ar2
      0026CA D0 06            [24] 1512 	pop	ar6
                                   1513 ;	walk.c:125: if (!stpop(&cur)) goto term;
      0026CC C0 00            [24] 1514 	push	ar0
      0026CE E5 10            [12] 1515 	mov	a,_bp
      0026D0 24 03            [12] 1516 	add	a,#0x03
      0026D2 F8               [12] 1517 	mov	r0,a
      0026D3 86 04            [24] 1518 	mov	ar4,@r0
      0026D5 7D 00            [12] 1519 	mov	r5,#0x00
      0026D7 7F 40            [12] 1520 	mov	r7,#0x40
      0026D9 D0 00            [24] 1521 	pop	ar0
      0026DB 8C 82            [24] 1522 	mov	dpl,r4
      0026DD 8D 83            [24] 1523 	mov	dph,r5
      0026DF 8F F0            [24] 1524 	mov	b,r7
      0026E1 C0 06            [24] 1525 	push	ar6
      0026E3 C0 02            [24] 1526 	push	ar2
      0026E5 C0 01            [24] 1527 	push	ar1
      0026E7 C0 00            [24] 1528 	push	ar0
      0026E9 12 29 93         [24] 1529 	lcall	_stpop
      0026EC E5 82            [12] 1530 	mov	a,dpl
      0026EE 85 83 F0         [24] 1531 	mov	b,dph
      0026F1 D0 00            [24] 1532 	pop	ar0
      0026F3 D0 01            [24] 1533 	pop	ar1
      0026F5 D0 02            [24] 1534 	pop	ar2
      0026F7 D0 06            [24] 1535 	pop	ar6
      0026F9 45 F0            [12] 1536 	orl	a,b
      0026FB 60 03            [24] 1537 	jz	00168$
      0026FD 02 24 1C         [24] 1538 	ljmp	00102$
      002700                       1539 00168$:
                                   1540 ;	walk.c:129: return;
                                   1541 ;	walk.c:130: }
      002700 85 10 81         [24] 1542 	mov	sp,_bp
      002703 D0 10            [24] 1543 	pop	_bp
      002705 22               [24] 1544 	ret
                                   1545 ;------------------------------------------------------------
                                   1546 ;Allocation info for local variables in function 'main'
                                   1547 ;------------------------------------------------------------
                                   1548 ;initial                   Allocated to stack - _bp +9
                                   1549 ;N                         Allocated to stack - _bp +7
                                   1550 ;i                         Allocated to stack - _bp +5
                                   1551 ;j                         Allocated to registers r2 r6 
                                   1552 ;sloc0                     Allocated to stack - _bp +1
                                   1553 ;sloc1                     Allocated to stack - _bp +3
                                   1554 ;R                         Allocated with name '_main_R_65536_64'
                                   1555 ;------------------------------------------------------------
                                   1556 ;	walk.c:132: int main(void) {
                                   1557 ;	-----------------------------------------
                                   1558 ;	 function main
                                   1559 ;	-----------------------------------------
      002706                       1560 _main:
      002706 C0 10            [24] 1561 	push	_bp
      002708 E5 81            [12] 1562 	mov	a,sp
      00270A F5 10            [12] 1563 	mov	_bp,a
      00270C 24 0C            [12] 1564 	add	a,#0x0c
      00270E F5 81            [12] 1565 	mov	sp,a
                                   1566 ;	walk.c:138: i0 = 1;
      002710 78 11            [12] 1567 	mov	r0,#_i0
      002712 76 01            [12] 1568 	mov	@r0,#0x01
                                   1569 ;	walk.c:140: IT0 = 1;
                                   1570 ;	assignBit
      002714 D2 88            [12] 1571 	setb	_IT0
                                   1572 ;	walk.c:141: EX0 = 1;
                                   1573 ;	assignBit
      002716 D2 A8            [12] 1574 	setb	_EX0
                                   1575 ;	walk.c:142: EA = 1;
                                   1576 ;	assignBit
      002718 D2 AF            [12] 1577 	setb	_EA
                                   1578 ;	walk.c:144: srand(*R);
      00271A 90 F5 02         [24] 1579 	mov	dptr,#_main_R_65536_64
      00271D E0               [24] 1580 	movx	a,@dptr
      00271E FE               [12] 1581 	mov	r6,a
      00271F A3               [24] 1582 	inc	dptr
      002720 E0               [24] 1583 	movx	a,@dptr
      002721 FF               [12] 1584 	mov	r7,a
      002722 8E 82            [24] 1585 	mov	dpl,r6
      002724 8F 83            [24] 1586 	mov	dph,r7
      002726 E0               [24] 1587 	movx	a,@dptr
      002727 FE               [12] 1588 	mov	r6,a
      002728 A3               [24] 1589 	inc	dptr
      002729 E0               [24] 1590 	movx	a,@dptr
      00272A FF               [12] 1591 	mov	r7,a
      00272B 8E 82            [24] 1592 	mov	dpl,r6
      00272D 8F 83            [24] 1593 	mov	dph,r7
      00272F 12 2A B9         [24] 1594 	lcall	_srand
                                   1595 ;	walk.c:145: stinit();
      002732 12 29 29         [24] 1596 	lcall	_stinit
                                   1597 ;	walk.c:147: puts("\033[2J\033[?25l");
      002735 90 40 2B         [24] 1598 	mov	dptr,#___str_4
      002738 75 F0 80         [24] 1599 	mov	b,#0x80
      00273B 12 2C 1E         [24] 1600 	lcall	_puts
                                   1601 ;	walk.c:149: while (i0) {
      00273E E5 10            [12] 1602 	mov	a,_bp
      002740 24 09            [12] 1603 	add	a,#0x09
      002742 F9               [12] 1604 	mov	r1,a
      002743 FF               [12] 1605 	mov	r7,a
      002744 E5 10            [12] 1606 	mov	a,_bp
      002746 24 07            [12] 1607 	add	a,#0x07
      002748 F8               [12] 1608 	mov	r0,a
      002749 E4               [12] 1609 	clr	a
      00274A F6               [12] 1610 	mov	@r0,a
      00274B 08               [12] 1611 	inc	r0
      00274C F6               [12] 1612 	mov	@r0,a
      00274D                       1613 00107$:
      00274D 78 11            [12] 1614 	mov	r0,#_i0
      00274F E6               [12] 1615 	mov	a,@r0
      002750 70 03            [24] 1616 	jnz	00169$
      002752 02 29 12         [24] 1617 	ljmp	00109$
      002755                       1618 00169$:
                                   1619 ;	walk.c:150: for (i = 0; i < ROWS; i++)
      002755 7B 00            [12] 1620 	mov	r3,#0x00
      002757 7C 00            [12] 1621 	mov	r4,#0x00
      002759 A8 10            [24] 1622 	mov	r0,_bp
      00275B 08               [12] 1623 	inc	r0
      00275C E4               [12] 1624 	clr	a
      00275D F6               [12] 1625 	mov	@r0,a
      00275E 08               [12] 1626 	inc	r0
      00275F F6               [12] 1627 	mov	@r0,a
                                   1628 ;	walk.c:151: for (j = 0; j < COLS; j++)
      002760                       1629 00121$:
      002760 A8 10            [24] 1630 	mov	r0,_bp
      002762 08               [12] 1631 	inc	r0
      002763 C0 01            [24] 1632 	push	ar1
      002765 E5 10            [12] 1633 	mov	a,_bp
      002767 24 03            [12] 1634 	add	a,#0x03
      002769 F9               [12] 1635 	mov	r1,a
      00276A E6               [12] 1636 	mov	a,@r0
      00276B 24 00            [12] 1637 	add	a,#_g
      00276D F7               [12] 1638 	mov	@r1,a
      00276E 08               [12] 1639 	inc	r0
      00276F E6               [12] 1640 	mov	a,@r0
      002770 34 41            [12] 1641 	addc	a,#(_g >> 8)
      002772 09               [12] 1642 	inc	r1
      002773 F7               [12] 1643 	mov	@r1,a
      002774 D0 01            [24] 1644 	pop	ar1
      002776 7A 00            [12] 1645 	mov	r2,#0x00
      002778 7E 00            [12] 1646 	mov	r6,#0x00
      00277A                       1647 00110$:
                                   1648 ;	walk.c:152: g[i][j] = 0x55;
      00277A E5 10            [12] 1649 	mov	a,_bp
      00277C 24 03            [12] 1650 	add	a,#0x03
      00277E F8               [12] 1651 	mov	r0,a
      00277F EA               [12] 1652 	mov	a,r2
      002780 26               [12] 1653 	add	a,@r0
      002781 F5 82            [12] 1654 	mov	dpl,a
      002783 EE               [12] 1655 	mov	a,r6
      002784 08               [12] 1656 	inc	r0
      002785 36               [12] 1657 	addc	a,@r0
      002786 F5 83            [12] 1658 	mov	dph,a
      002788 74 55            [12] 1659 	mov	a,#0x55
      00278A F0               [24] 1660 	movx	@dptr,a
                                   1661 ;	walk.c:151: for (j = 0; j < COLS; j++)
      00278B 0A               [12] 1662 	inc	r2
      00278C BA 00 01         [24] 1663 	cjne	r2,#0x00,00170$
      00278F 0E               [12] 1664 	inc	r6
      002790                       1665 00170$:
      002790 C3               [12] 1666 	clr	c
      002791 EA               [12] 1667 	mov	a,r2
      002792 94 C0            [12] 1668 	subb	a,#0xc0
      002794 EE               [12] 1669 	mov	a,r6
      002795 64 80            [12] 1670 	xrl	a,#0x80
      002797 94 80            [12] 1671 	subb	a,#0x80
      002799 40 DF            [24] 1672 	jc	00110$
                                   1673 ;	walk.c:150: for (i = 0; i < ROWS; i++)
      00279B A8 10            [24] 1674 	mov	r0,_bp
      00279D 08               [12] 1675 	inc	r0
      00279E 74 C0            [12] 1676 	mov	a,#0xc0
      0027A0 26               [12] 1677 	add	a,@r0
      0027A1 F6               [12] 1678 	mov	@r0,a
      0027A2 E4               [12] 1679 	clr	a
      0027A3 08               [12] 1680 	inc	r0
      0027A4 36               [12] 1681 	addc	a,@r0
      0027A5 F6               [12] 1682 	mov	@r0,a
      0027A6 0B               [12] 1683 	inc	r3
      0027A7 BB 00 01         [24] 1684 	cjne	r3,#0x00,00172$
      0027AA 0C               [12] 1685 	inc	r4
      0027AB                       1686 00172$:
      0027AB C3               [12] 1687 	clr	c
      0027AC EB               [12] 1688 	mov	a,r3
      0027AD 94 30            [12] 1689 	subb	a,#0x30
      0027AF EC               [12] 1690 	mov	a,r4
      0027B0 64 80            [12] 1691 	xrl	a,#0x80
      0027B2 94 80            [12] 1692 	subb	a,#0x80
      0027B4 40 AA            [24] 1693 	jc	00121$
                                   1694 ;	walk.c:154: initial.r = rand() % ROWS;
      0027B6 E5 10            [12] 1695 	mov	a,_bp
      0027B8 24 09            [12] 1696 	add	a,#0x09
      0027BA F8               [12] 1697 	mov	r0,a
      0027BB C0 07            [24] 1698 	push	ar7
      0027BD C0 01            [24] 1699 	push	ar1
      0027BF C0 00            [24] 1700 	push	ar0
      0027C1 12 29 F5         [24] 1701 	lcall	_rand
      0027C4 AD 82            [24] 1702 	mov	r5,dpl
      0027C6 AE 83            [24] 1703 	mov	r6,dph
      0027C8 74 30            [12] 1704 	mov	a,#0x30
      0027CA C0 E0            [24] 1705 	push	acc
      0027CC E4               [12] 1706 	clr	a
      0027CD C0 E0            [24] 1707 	push	acc
      0027CF 8D 82            [24] 1708 	mov	dpl,r5
      0027D1 8E 83            [24] 1709 	mov	dph,r6
      0027D3 12 2C F9         [24] 1710 	lcall	__modsint
      0027D6 AD 82            [24] 1711 	mov	r5,dpl
      0027D8 AE 83            [24] 1712 	mov	r6,dph
      0027DA 15 81            [12] 1713 	dec	sp
      0027DC 15 81            [12] 1714 	dec	sp
      0027DE D0 00            [24] 1715 	pop	ar0
      0027E0 D0 01            [24] 1716 	pop	ar1
      0027E2 A6 05            [24] 1717 	mov	@r0,ar5
      0027E4 08               [12] 1718 	inc	r0
      0027E5 A6 06            [24] 1719 	mov	@r0,ar6
      0027E7 18               [12] 1720 	dec	r0
                                   1721 ;	walk.c:155: initial.c = rand() % COLS;
      0027E8 74 02            [12] 1722 	mov	a,#0x02
      0027EA 29               [12] 1723 	add	a,r1
      0027EB F8               [12] 1724 	mov	r0,a
      0027EC C0 01            [24] 1725 	push	ar1
      0027EE C0 00            [24] 1726 	push	ar0
      0027F0 12 29 F5         [24] 1727 	lcall	_rand
      0027F3 AD 82            [24] 1728 	mov	r5,dpl
      0027F5 AE 83            [24] 1729 	mov	r6,dph
      0027F7 74 C0            [12] 1730 	mov	a,#0xc0
      0027F9 C0 E0            [24] 1731 	push	acc
      0027FB E4               [12] 1732 	clr	a
      0027FC C0 E0            [24] 1733 	push	acc
      0027FE 8D 82            [24] 1734 	mov	dpl,r5
      002800 8E 83            [24] 1735 	mov	dph,r6
      002802 12 2C F9         [24] 1736 	lcall	__modsint
      002805 AD 82            [24] 1737 	mov	r5,dpl
      002807 AE 83            [24] 1738 	mov	r6,dph
      002809 15 81            [12] 1739 	dec	sp
      00280B 15 81            [12] 1740 	dec	sp
      00280D D0 00            [24] 1741 	pop	ar0
      00280F A6 05            [24] 1742 	mov	@r0,ar5
      002811 08               [12] 1743 	inc	r0
      002812 A6 06            [24] 1744 	mov	@r0,ar6
      002814 18               [12] 1745 	dec	r0
                                   1746 ;	walk.c:157: puts("\033[2J\033[?25l");
      002815 90 40 2B         [24] 1747 	mov	dptr,#___str_4
      002818 75 F0 80         [24] 1748 	mov	b,#0x80
      00281B C0 00            [24] 1749 	push	ar0
      00281D 12 2C 1E         [24] 1750 	lcall	_puts
      002820 D0 00            [24] 1751 	pop	ar0
      002822 D0 01            [24] 1752 	pop	ar1
                                   1753 ;	walk.c:158: printf("\033[1;1H% 8u% 8d% 8d", N, initial.r, initial.c);
      002824 86 05            [24] 1754 	mov	ar5,@r0
      002826 08               [12] 1755 	inc	r0
      002827 86 06            [24] 1756 	mov	ar6,@r0
      002829 18               [12] 1757 	dec	r0
      00282A 87 03            [24] 1758 	mov	ar3,@r1
      00282C 09               [12] 1759 	inc	r1
      00282D 87 04            [24] 1760 	mov	ar4,@r1
      00282F 19               [12] 1761 	dec	r1
      002830 C0 01            [24] 1762 	push	ar1
      002832 C0 05            [24] 1763 	push	ar5
      002834 C0 06            [24] 1764 	push	ar6
      002836 C0 03            [24] 1765 	push	ar3
      002838 C0 04            [24] 1766 	push	ar4
      00283A E5 10            [12] 1767 	mov	a,_bp
      00283C 24 07            [12] 1768 	add	a,#0x07
      00283E F8               [12] 1769 	mov	r0,a
      00283F E6               [12] 1770 	mov	a,@r0
      002840 C0 E0            [24] 1771 	push	acc
      002842 08               [12] 1772 	inc	r0
      002843 E6               [12] 1773 	mov	a,@r0
      002844 C0 E0            [24] 1774 	push	acc
      002846 74 36            [12] 1775 	mov	a,#___str_5
      002848 C0 E0            [24] 1776 	push	acc
      00284A 74 40            [12] 1777 	mov	a,#(___str_5 >> 8)
      00284C C0 E0            [24] 1778 	push	acc
      00284E 74 80            [12] 1779 	mov	a,#0x80
      002850 C0 E0            [24] 1780 	push	acc
      002852 12 2C A4         [24] 1781 	lcall	_printf
      002855 E5 81            [12] 1782 	mov	a,sp
      002857 24 F7            [12] 1783 	add	a,#0xf7
      002859 F5 81            [12] 1784 	mov	sp,a
      00285B D0 01            [24] 1785 	pop	ar1
      00285D D0 07            [24] 1786 	pop	ar7
                                   1787 ;	walk.c:160: walk(&initial);
      00285F 8F 04            [24] 1788 	mov	ar4,r7
      002861 7D 00            [12] 1789 	mov	r5,#0x00
      002863 7E 40            [12] 1790 	mov	r6,#0x40
      002865 8C 82            [24] 1791 	mov	dpl,r4
      002867 8D 83            [24] 1792 	mov	dph,r5
      002869 8E F0            [24] 1793 	mov	b,r6
      00286B C0 07            [24] 1794 	push	ar7
      00286D C0 01            [24] 1795 	push	ar1
      00286F 12 23 2C         [24] 1796 	lcall	_walk
      002872 D0 01            [24] 1797 	pop	ar1
      002874 D0 07            [24] 1798 	pop	ar7
                                   1799 ;	walk.c:162: for (i = 0; i < ROWS; i++)
      002876 E5 10            [12] 1800 	mov	a,_bp
      002878 24 05            [12] 1801 	add	a,#0x05
      00287A F8               [12] 1802 	mov	r0,a
      00287B E4               [12] 1803 	clr	a
      00287C F6               [12] 1804 	mov	@r0,a
      00287D 08               [12] 1805 	inc	r0
      00287E F6               [12] 1806 	mov	@r0,a
      00287F 7B 00            [12] 1807 	mov	r3,#0x00
      002881 7C 00            [12] 1808 	mov	r4,#0x00
                                   1809 ;	walk.c:163: for (j = 0; j < COLS; j++)
      002883                       1810 00126$:
      002883 E5 10            [12] 1811 	mov	a,_bp
      002885 24 03            [12] 1812 	add	a,#0x03
      002887 F8               [12] 1813 	mov	r0,a
      002888 EB               [12] 1814 	mov	a,r3
      002889 24 00            [12] 1815 	add	a,#_g
      00288B F6               [12] 1816 	mov	@r0,a
      00288C EC               [12] 1817 	mov	a,r4
      00288D 34 41            [12] 1818 	addc	a,#(_g >> 8)
      00288F 08               [12] 1819 	inc	r0
      002890 F6               [12] 1820 	mov	@r0,a
      002891 7A 00            [12] 1821 	mov	r2,#0x00
      002893 7E 00            [12] 1822 	mov	r6,#0x00
      002895                       1823 00114$:
                                   1824 ;	walk.c:164: if (g[i][j] != 0xaa) {
      002895 E5 10            [12] 1825 	mov	a,_bp
      002897 24 03            [12] 1826 	add	a,#0x03
      002899 F8               [12] 1827 	mov	r0,a
      00289A EA               [12] 1828 	mov	a,r2
      00289B 26               [12] 1829 	add	a,@r0
      00289C F5 82            [12] 1830 	mov	dpl,a
      00289E EE               [12] 1831 	mov	a,r6
      00289F 08               [12] 1832 	inc	r0
      0028A0 36               [12] 1833 	addc	a,@r0
      0028A1 F5 83            [12] 1834 	mov	dph,a
      0028A3 E0               [24] 1835 	movx	a,@dptr
      0028A4 FD               [12] 1836 	mov	r5,a
      0028A5 BD AA 02         [24] 1837 	cjne	r5,#0xaa,00174$
      0028A8 80 24            [24] 1838 	sjmp	00115$
      0028AA                       1839 00174$:
                                   1840 ;	walk.c:165: (void)puts("Memory error");
      0028AA 90 3F F7         [24] 1841 	mov	dptr,#___str_0
      0028AD 75 F0 80         [24] 1842 	mov	b,#0x80
      0028B0 C0 07            [24] 1843 	push	ar7
      0028B2 C0 06            [24] 1844 	push	ar6
      0028B4 C0 04            [24] 1845 	push	ar4
      0028B6 C0 03            [24] 1846 	push	ar3
      0028B8 C0 02            [24] 1847 	push	ar2
      0028BA C0 01            [24] 1848 	push	ar1
      0028BC 12 2C 1E         [24] 1849 	lcall	_puts
      0028BF D0 01            [24] 1850 	pop	ar1
      0028C1 D0 02            [24] 1851 	pop	ar2
      0028C3 D0 03            [24] 1852 	pop	ar3
      0028C5 D0 04            [24] 1853 	pop	ar4
      0028C7 D0 06            [24] 1854 	pop	ar6
      0028C9 D0 07            [24] 1855 	pop	ar7
                                   1856 ;	walk.c:166: reset();
      0028CB 12 20 88         [24] 1857 	lcall	_reset
      0028CE                       1858 00115$:
                                   1859 ;	walk.c:163: for (j = 0; j < COLS; j++)
      0028CE 0A               [12] 1860 	inc	r2
      0028CF BA 00 01         [24] 1861 	cjne	r2,#0x00,00175$
      0028D2 0E               [12] 1862 	inc	r6
      0028D3                       1863 00175$:
      0028D3 C3               [12] 1864 	clr	c
      0028D4 EA               [12] 1865 	mov	a,r2
      0028D5 94 C0            [12] 1866 	subb	a,#0xc0
      0028D7 EE               [12] 1867 	mov	a,r6
      0028D8 64 80            [12] 1868 	xrl	a,#0x80
      0028DA 94 80            [12] 1869 	subb	a,#0x80
      0028DC 40 B7            [24] 1870 	jc	00114$
                                   1871 ;	walk.c:162: for (i = 0; i < ROWS; i++)
      0028DE 74 C0            [12] 1872 	mov	a,#0xc0
      0028E0 2B               [12] 1873 	add	a,r3
      0028E1 FB               [12] 1874 	mov	r3,a
      0028E2 E4               [12] 1875 	clr	a
      0028E3 3C               [12] 1876 	addc	a,r4
      0028E4 FC               [12] 1877 	mov	r4,a
      0028E5 E5 10            [12] 1878 	mov	a,_bp
      0028E7 24 05            [12] 1879 	add	a,#0x05
      0028E9 F8               [12] 1880 	mov	r0,a
      0028EA 06               [12] 1881 	inc	@r0
      0028EB B6 00 02         [24] 1882 	cjne	@r0,#0x00,00177$
      0028EE 08               [12] 1883 	inc	r0
      0028EF 06               [12] 1884 	inc	@r0
      0028F0                       1885 00177$:
      0028F0 E5 10            [12] 1886 	mov	a,_bp
      0028F2 24 05            [12] 1887 	add	a,#0x05
      0028F4 F8               [12] 1888 	mov	r0,a
      0028F5 C3               [12] 1889 	clr	c
      0028F6 E6               [12] 1890 	mov	a,@r0
      0028F7 94 30            [12] 1891 	subb	a,#0x30
      0028F9 08               [12] 1892 	inc	r0
      0028FA E6               [12] 1893 	mov	a,@r0
      0028FB 64 80            [12] 1894 	xrl	a,#0x80
      0028FD 94 80            [12] 1895 	subb	a,#0x80
      0028FF 50 03            [24] 1896 	jnc	00178$
      002901 02 28 83         [24] 1897 	ljmp	00126$
      002904                       1898 00178$:
                                   1899 ;	walk.c:169: N++;
      002904 E5 10            [12] 1900 	mov	a,_bp
      002906 24 07            [12] 1901 	add	a,#0x07
      002908 F8               [12] 1902 	mov	r0,a
      002909 06               [12] 1903 	inc	@r0
      00290A B6 00 02         [24] 1904 	cjne	@r0,#0x00,00179$
      00290D 08               [12] 1905 	inc	r0
      00290E 06               [12] 1906 	inc	@r0
      00290F                       1907 00179$:
      00290F 02 27 4D         [24] 1908 	ljmp	00107$
      002912                       1909 00109$:
                                   1910 ;	walk.c:172: EA = 0;
                                   1911 ;	assignBit
      002912 C2 AF            [12] 1912 	clr	_EA
                                   1913 ;	walk.c:174: puts("\033[2J\033[?25h");
      002914 90 40 49         [24] 1914 	mov	dptr,#___str_6
      002917 75 F0 80         [24] 1915 	mov	b,#0x80
      00291A 12 2C 1E         [24] 1916 	lcall	_puts
                                   1917 ;	walk.c:178: __endasm;
      00291D 02 00 00         [24] 1918 	ljmp	0
                                   1919 ;	walk.c:180: return 0;
      002920 90 00 00         [24] 1920 	mov	dptr,#0x0000
                                   1921 ;	walk.c:181: }
      002923 85 10 81         [24] 1922 	mov	sp,_bp
      002926 D0 10            [24] 1923 	pop	_bp
      002928 22               [24] 1924 	ret
                                   1925 ;------------------------------------------------------------
                                   1926 ;Allocation info for local variables in function 'stinit'
                                   1927 ;------------------------------------------------------------
                                   1928 ;	walk.c:183: static void stinit(void) {
                                   1929 ;	-----------------------------------------
                                   1930 ;	 function stinit
                                   1931 ;	-----------------------------------------
      002929                       1932 _stinit:
                                   1933 ;	walk.c:184: sp = -1;
      002929 90 F5 00         [24] 1934 	mov	dptr,#_sp
      00292C 74 FF            [12] 1935 	mov	a,#0xff
      00292E F0               [24] 1936 	movx	@dptr,a
      00292F A3               [24] 1937 	inc	dptr
      002930 F0               [24] 1938 	movx	@dptr,a
                                   1939 ;	walk.c:185: return;
                                   1940 ;	walk.c:186: }
      002931 22               [24] 1941 	ret
                                   1942 ;------------------------------------------------------------
                                   1943 ;Allocation info for local variables in function 'stpush'
                                   1944 ;------------------------------------------------------------
                                   1945 ;t                         Allocated to registers r5 r6 r7 
                                   1946 ;------------------------------------------------------------
                                   1947 ;	walk.c:188: static int stpush(struct node *t) {
                                   1948 ;	-----------------------------------------
                                   1949 ;	 function stpush
                                   1950 ;	-----------------------------------------
      002932                       1951 _stpush:
      002932 AD 82            [24] 1952 	mov	r5,dpl
      002934 AE 83            [24] 1953 	mov	r6,dph
      002936 AF F0            [24] 1954 	mov	r7,b
                                   1955 ;	walk.c:189: if (sp == (SMAX - 1)) return 0;
      002938 90 F5 00         [24] 1956 	mov	dptr,#_sp
      00293B E0               [24] 1957 	movx	a,@dptr
      00293C FB               [12] 1958 	mov	r3,a
      00293D A3               [24] 1959 	inc	dptr
      00293E E0               [24] 1960 	movx	a,@dptr
      00293F FC               [12] 1961 	mov	r4,a
      002940 BB FF 07         [24] 1962 	cjne	r3,#0xff,00102$
      002943 BC 23 04         [24] 1963 	cjne	r4,#0x23,00102$
      002946 90 00 00         [24] 1964 	mov	dptr,#0x0000
      002949 22               [24] 1965 	ret
      00294A                       1966 00102$:
                                   1967 ;	walk.c:190: sp++;
      00294A 90 F5 00         [24] 1968 	mov	dptr,#_sp
      00294D 74 01            [12] 1969 	mov	a,#0x01
      00294F 2B               [12] 1970 	add	a,r3
      002950 F0               [24] 1971 	movx	@dptr,a
      002951 E4               [12] 1972 	clr	a
      002952 3C               [12] 1973 	addc	a,r4
      002953 A3               [24] 1974 	inc	dptr
      002954 F0               [24] 1975 	movx	@dptr,a
                                   1976 ;	walk.c:191: stack[sp] = *t;
      002955 90 F5 00         [24] 1977 	mov	dptr,#_sp
      002958 E0               [24] 1978 	movx	a,@dptr
      002959 FB               [12] 1979 	mov	r3,a
      00295A A3               [24] 1980 	inc	dptr
      00295B E0               [24] 1981 	movx	a,@dptr
      00295C FC               [12] 1982 	mov	r4,a
      00295D EB               [12] 1983 	mov	a,r3
      00295E 2B               [12] 1984 	add	a,r3
      00295F FB               [12] 1985 	mov	r3,a
      002960 EC               [12] 1986 	mov	a,r4
      002961 33               [12] 1987 	rlc	a
      002962 FC               [12] 1988 	mov	r4,a
      002963 EB               [12] 1989 	mov	a,r3
      002964 2B               [12] 1990 	add	a,r3
      002965 FB               [12] 1991 	mov	r3,a
      002966 EC               [12] 1992 	mov	a,r4
      002967 33               [12] 1993 	rlc	a
      002968 FC               [12] 1994 	mov	r4,a
      002969 EB               [12] 1995 	mov	a,r3
      00296A 24 00            [12] 1996 	add	a,#_stack
      00296C FB               [12] 1997 	mov	r3,a
      00296D EC               [12] 1998 	mov	a,r4
      00296E 34 65            [12] 1999 	addc	a,#(_stack >> 8)
      002970 FC               [12] 2000 	mov	r4,a
      002971 7A 00            [12] 2001 	mov	r2,#0x00
      002973 74 04            [12] 2002 	mov	a,#0x04
      002975 C0 E0            [24] 2003 	push	acc
      002977 E4               [12] 2004 	clr	a
      002978 C0 E0            [24] 2005 	push	acc
      00297A C0 05            [24] 2006 	push	ar5
      00297C C0 06            [24] 2007 	push	ar6
      00297E C0 07            [24] 2008 	push	ar7
      002980 8B 82            [24] 2009 	mov	dpl,r3
      002982 8C 83            [24] 2010 	mov	dph,r4
      002984 8A F0            [24] 2011 	mov	b,r2
      002986 12 2B 8B         [24] 2012 	lcall	___memcpy
      002989 E5 81            [12] 2013 	mov	a,sp
      00298B 24 FB            [12] 2014 	add	a,#0xfb
      00298D F5 81            [12] 2015 	mov	sp,a
                                   2016 ;	walk.c:192: return 1;
      00298F 90 00 01         [24] 2017 	mov	dptr,#0x0001
                                   2018 ;	walk.c:193: }
      002992 22               [24] 2019 	ret
                                   2020 ;------------------------------------------------------------
                                   2021 ;Allocation info for local variables in function 'stpop'
                                   2022 ;------------------------------------------------------------
                                   2023 ;t                         Allocated to registers r5 r6 r7 
                                   2024 ;------------------------------------------------------------
                                   2025 ;	walk.c:195: static int stpop(struct node *t) {
                                   2026 ;	-----------------------------------------
                                   2027 ;	 function stpop
                                   2028 ;	-----------------------------------------
      002993                       2029 _stpop:
      002993 AD 82            [24] 2030 	mov	r5,dpl
      002995 AE 83            [24] 2031 	mov	r6,dph
      002997 AF F0            [24] 2032 	mov	r7,b
                                   2033 ;	walk.c:196: if (sp == -1) return 0;
      002999 90 F5 00         [24] 2034 	mov	dptr,#_sp
      00299C E0               [24] 2035 	movx	a,@dptr
      00299D FB               [12] 2036 	mov	r3,a
      00299E A3               [24] 2037 	inc	dptr
      00299F E0               [24] 2038 	movx	a,@dptr
      0029A0 FC               [12] 2039 	mov	r4,a
      0029A1 BB FF 07         [24] 2040 	cjne	r3,#0xff,00102$
      0029A4 BC FF 04         [24] 2041 	cjne	r4,#0xff,00102$
      0029A7 90 00 00         [24] 2042 	mov	dptr,#0x0000
      0029AA 22               [24] 2043 	ret
      0029AB                       2044 00102$:
                                   2045 ;	walk.c:197: *t = stack[sp];
      0029AB EB               [12] 2046 	mov	a,r3
      0029AC 2B               [12] 2047 	add	a,r3
      0029AD FB               [12] 2048 	mov	r3,a
      0029AE EC               [12] 2049 	mov	a,r4
      0029AF 33               [12] 2050 	rlc	a
      0029B0 FC               [12] 2051 	mov	r4,a
      0029B1 EB               [12] 2052 	mov	a,r3
      0029B2 2B               [12] 2053 	add	a,r3
      0029B3 FB               [12] 2054 	mov	r3,a
      0029B4 EC               [12] 2055 	mov	a,r4
      0029B5 33               [12] 2056 	rlc	a
      0029B6 FC               [12] 2057 	mov	r4,a
      0029B7 EB               [12] 2058 	mov	a,r3
      0029B8 24 00            [12] 2059 	add	a,#_stack
      0029BA FB               [12] 2060 	mov	r3,a
      0029BB EC               [12] 2061 	mov	a,r4
      0029BC 34 65            [12] 2062 	addc	a,#(_stack >> 8)
      0029BE FC               [12] 2063 	mov	r4,a
      0029BF 7A 00            [12] 2064 	mov	r2,#0x00
      0029C1 74 04            [12] 2065 	mov	a,#0x04
      0029C3 C0 E0            [24] 2066 	push	acc
      0029C5 E4               [12] 2067 	clr	a
      0029C6 C0 E0            [24] 2068 	push	acc
      0029C8 C0 03            [24] 2069 	push	ar3
      0029CA C0 04            [24] 2070 	push	ar4
      0029CC C0 02            [24] 2071 	push	ar2
      0029CE 8D 82            [24] 2072 	mov	dpl,r5
      0029D0 8E 83            [24] 2073 	mov	dph,r6
      0029D2 8F F0            [24] 2074 	mov	b,r7
      0029D4 12 2B 8B         [24] 2075 	lcall	___memcpy
      0029D7 E5 81            [12] 2076 	mov	a,sp
      0029D9 24 FB            [12] 2077 	add	a,#0xfb
      0029DB F5 81            [12] 2078 	mov	sp,a
                                   2079 ;	walk.c:198: sp--;
      0029DD 90 F5 00         [24] 2080 	mov	dptr,#_sp
      0029E0 E0               [24] 2081 	movx	a,@dptr
      0029E1 24 FF            [12] 2082 	add	a,#0xff
      0029E3 FE               [12] 2083 	mov	r6,a
      0029E4 A3               [24] 2084 	inc	dptr
      0029E5 E0               [24] 2085 	movx	a,@dptr
      0029E6 34 FF            [12] 2086 	addc	a,#0xff
      0029E8 FF               [12] 2087 	mov	r7,a
      0029E9 90 F5 00         [24] 2088 	mov	dptr,#_sp
      0029EC EE               [12] 2089 	mov	a,r6
      0029ED F0               [24] 2090 	movx	@dptr,a
      0029EE EF               [12] 2091 	mov	a,r7
      0029EF A3               [24] 2092 	inc	dptr
      0029F0 F0               [24] 2093 	movx	@dptr,a
                                   2094 ;	walk.c:199: return 1;
      0029F1 90 00 01         [24] 2095 	mov	dptr,#0x0001
                                   2096 ;	walk.c:200: }
      0029F4 22               [24] 2097 	ret
                                   2098 	.area CSEG    (CODE)
                                   2099 	.area CONST   (CODE)
      003FD7                       2100 _neigh:
      003FD7 FF FF                 2101 	.byte #0xff, #0xff	; -1
      003FD9 FF FF                 2102 	.byte #0xff, #0xff	; -1
      003FDB FF FF                 2103 	.byte #0xff, #0xff	; -1
      003FDD 00 00                 2104 	.byte #0x00, #0x00	;  0
      003FDF FF FF                 2105 	.byte #0xff, #0xff	; -1
      003FE1 01 00                 2106 	.byte #0x01, #0x00	;  1
      003FE3 00 00                 2107 	.byte #0x00, #0x00	;  0
      003FE5 FF FF                 2108 	.byte #0xff, #0xff	; -1
      003FE7 00 00                 2109 	.byte #0x00, #0x00	;  0
      003FE9 01 00                 2110 	.byte #0x01, #0x00	;  1
      003FEB 01 00                 2111 	.byte #0x01, #0x00	;  1
      003FED FF FF                 2112 	.byte #0xff, #0xff	; -1
      003FEF 01 00                 2113 	.byte #0x01, #0x00	;  1
      003FF1 00 00                 2114 	.byte #0x00, #0x00	;  0
      003FF3 01 00                 2115 	.byte #0x01, #0x00	;  1
      003FF5 01 00                 2116 	.byte #0x01, #0x00	;  1
                                   2117 	.area CONST   (CODE)
      003FF7                       2118 ___str_0:
      003FF7 4D 65 6D 6F 72 79 20  2119 	.ascii "Memory error"
             65 72 72 6F 72
      004003 00                    2120 	.db 0x00
                                   2121 	.area CSEG    (CODE)
                                   2122 	.area CONST   (CODE)
      004004                       2123 ___str_1:
      004004 1B                    2124 	.db 0x1b
      004005 5B 25 64 3B 25 64 48  2125 	.ascii "[%d;%dHo"
             6F
      00400D 00                    2126 	.db 0x00
                                   2127 	.area CSEG    (CODE)
                                   2128 	.area CONST   (CODE)
      00400E                       2129 ___str_2:
      00400E 1B                    2130 	.db 0x1b
      00400F 5B 32 3B 31 48 25 20  2131 	.ascii "[2;1H% 8d% 8d% 8d"
             38 64 25 20 38 64 25
             20 38 64
      004020 00                    2132 	.db 0x00
                                   2133 	.area CSEG    (CODE)
                                   2134 	.area CONST   (CODE)
      004021                       2135 ___str_3:
      004021 1B                    2136 	.db 0x1b
      004022 5B 25 64 3B 25 64 48  2137 	.ascii "[%d;%dH."
             2E
      00402A 00                    2138 	.db 0x00
                                   2139 	.area CSEG    (CODE)
                                   2140 	.area CONST   (CODE)
      00402B                       2141 ___str_4:
      00402B 1B                    2142 	.db 0x1b
      00402C 5B 32 4A              2143 	.ascii "[2J"
      00402F 1B                    2144 	.db 0x1b
      004030 5B 3F 32 35 6C        2145 	.ascii "[?25l"
      004035 00                    2146 	.db 0x00
                                   2147 	.area CSEG    (CODE)
                                   2148 	.area CONST   (CODE)
      004036                       2149 ___str_5:
      004036 1B                    2150 	.db 0x1b
      004037 5B 31 3B 31 48 25 20  2151 	.ascii "[1;1H% 8u% 8d% 8d"
             38 75 25 20 38 64 25
             20 38 64
      004048 00                    2152 	.db 0x00
                                   2153 	.area CSEG    (CODE)
                                   2154 	.area CONST   (CODE)
      004049                       2155 ___str_6:
      004049 1B                    2156 	.db 0x1b
      00404A 5B 32 4A              2157 	.ascii "[2J"
      00404D 1B                    2158 	.db 0x1b
      00404E 5B 3F 32 35 68        2159 	.ascii "[?25h"
      004053 00                    2160 	.db 0x00
                                   2161 	.area CSEG    (CODE)
                                   2162 	.area XINIT   (CODE)
                                   2163 	.area CABS    (ABS,CODE)
