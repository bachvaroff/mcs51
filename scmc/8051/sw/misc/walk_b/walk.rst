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
      004500                        319 _g:
      004500                        320 	.ds 9504
      006A20                        321 _queue:
      006A20                        322 	.ds 38016
      00FEA0                        323 _hp:
      00FEA0                        324 	.ds 2
      00FEA2                        325 _tp:
      00FEA2                        326 	.ds 2
      00FEA4                        327 _main_R_65536_63:
      00FEA4                        328 	.ds 2
                                    329 ;--------------------------------------------------------
                                    330 ; absolute external ram data
                                    331 ;--------------------------------------------------------
                                    332 	.area XABS    (ABS,XDATA)
                                    333 ;--------------------------------------------------------
                                    334 ; external initialized ram data
                                    335 ;--------------------------------------------------------
                                    336 	.area XISEG   (XDATA)
      00FEA6                        337 _neigh_tmpl:
      00FEA6                        338 	.ds 64
      00FEE6                        339 _neigh:
      00FEE6                        340 	.ds 64
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
                                    371 ;------------------------------------------------------------
                                    372 ;Allocation info for local variables in function 'main'
                                    373 ;------------------------------------------------------------
                                    374 ;initial                   Allocated to stack - _bp +5
                                    375 ;N                         Allocated to stack - _bp +9
                                    376 ;i                         Allocated to stack - _bp +11
                                    377 ;j                         Allocated to registers r2 r6 
                                    378 ;sloc0                     Allocated to stack - _bp +1
                                    379 ;sloc1                     Allocated to stack - _bp +3
                                    380 ;sloc2                     Allocated to stack - _bp +15
                                    381 ;R                         Allocated with name '_main_R_65536_63'
                                    382 ;------------------------------------------------------------
                                    383 ;	walk.c:136: static volatile __xdata int *R = (__xdata int *)0xfffe;
      002062 90 FE A4         [24]  384 	mov	dptr,#_main_R_65536_63
      002065 74 FE            [12]  385 	mov	a,#0xfe
      002067 F0               [24]  386 	movx	@dptr,a
      002068 04               [12]  387 	inc	a
      002069 A3               [24]  388 	inc	dptr
      00206A F0               [24]  389 	movx	@dptr,a
                                    390 	.area GSFINAL (CODE)
      00206B 02 20 06         [24]  391 	ljmp	__sdcc_program_startup
                                    392 ;--------------------------------------------------------
                                    393 ; Home
                                    394 ;--------------------------------------------------------
                                    395 	.area HOME    (CODE)
                                    396 	.area HOME    (CODE)
      002006                        397 __sdcc_program_startup:
      002006 02 26 8D         [24]  398 	ljmp	_main
                                    399 ;	return from main will return to caller
                                    400 ;--------------------------------------------------------
                                    401 ; code
                                    402 ;--------------------------------------------------------
                                    403 	.area CSEG    (CODE)
                                    404 ;------------------------------------------------------------
                                    405 ;Allocation info for local variables in function 'putchar'
                                    406 ;------------------------------------------------------------
                                    407 ;c                         Allocated to registers 
                                    408 ;------------------------------------------------------------
                                    409 ;	walk.c:8: int putchar(int c) __naked {
                                    410 ;	-----------------------------------------
                                    411 ;	 function putchar
                                    412 ;	-----------------------------------------
      00206E                        413 _putchar:
                                    414 ;	naked function: no prologue.
                                    415 ;	walk.c:13: __endasm;
      00206E E5 82            [12]  416 	mov	a, dpl
      002070 02 00 30         [24]  417 	ljmp	0x0030
                                    418 ;	walk.c:14: }
                                    419 ;	naked function: no epilogue.
                                    420 ;------------------------------------------------------------
                                    421 ;Allocation info for local variables in function 'getchar'
                                    422 ;------------------------------------------------------------
                                    423 ;	walk.c:16: int getchar(void) __naked {
                                    424 ;	-----------------------------------------
                                    425 ;	 function getchar
                                    426 ;	-----------------------------------------
      002073                        427 _getchar:
                                    428 ;	naked function: no prologue.
                                    429 ;	walk.c:22: __endasm;
      002073 12 00 32         [24]  430 	lcall	0x0032
      002076 F5 82            [12]  431 	mov	dpl, a
      002078 75 83 00         [24]  432 	mov	dph, #0
      00207B 22               [24]  433 	ret
                                    434 ;	walk.c:23: }
                                    435 ;	naked function: no epilogue.
                                    436 ;------------------------------------------------------------
                                    437 ;Allocation info for local variables in function 'int0'
                                    438 ;------------------------------------------------------------
                                    439 ;	walk.c:27: void int0(void) __interrupt IE0_VECTOR __using 1 {
                                    440 ;	-----------------------------------------
                                    441 ;	 function int0
                                    442 ;	-----------------------------------------
      00207C                        443 _int0:
                           00000F   444 	ar7 = 0x0f
                           00000E   445 	ar6 = 0x0e
                           00000D   446 	ar5 = 0x0d
                           00000C   447 	ar4 = 0x0c
                           00000B   448 	ar3 = 0x0b
                           00000A   449 	ar2 = 0x0a
                           000009   450 	ar1 = 0x09
                           000008   451 	ar0 = 0x08
      00207C C0 D0            [24]  452 	push	psw
      00207E 75 D0 08         [24]  453 	mov	psw,#0x08
                                    454 ;	walk.c:28: i0 = 0;
      002081 78 11            [12]  455 	mov	r0,#_i0
      002083 76 00            [12]  456 	mov	@r0,#0x00
                                    457 ;	walk.c:29: }
      002085 D0 D0            [24]  458 	pop	psw
      002087 32               [24]  459 	reti
                                    460 ;	eliminated unneeded push/pop dpl
                                    461 ;	eliminated unneeded push/pop dph
                                    462 ;	eliminated unneeded push/pop b
                                    463 ;	eliminated unneeded push/pop acc
                                    464 ;------------------------------------------------------------
                                    465 ;Allocation info for local variables in function 'reset'
                                    466 ;------------------------------------------------------------
                                    467 ;	walk.c:31: static void reset(void) __naked {
                                    468 ;	-----------------------------------------
                                    469 ;	 function reset
                                    470 ;	-----------------------------------------
      002088                        471 _reset:
                                    472 ;	naked function: no prologue.
                                    473 ;	walk.c:34: __endasm;
      002088 43 87 02         [24]  474 	orl	pcon, #2
                                    475 ;	walk.c:35: }
                                    476 ;	naked function: no epilogue.
                                    477 ;------------------------------------------------------------
                                    478 ;Allocation info for local variables in function 'bang'
                                    479 ;------------------------------------------------------------
                                    480 ;	walk.c:37: static void bang(void) {
                                    481 ;	-----------------------------------------
                                    482 ;	 function bang
                                    483 ;	-----------------------------------------
      00208B                        484 _bang:
                           000007   485 	ar7 = 0x07
                           000006   486 	ar6 = 0x06
                           000005   487 	ar5 = 0x05
                           000004   488 	ar4 = 0x04
                           000003   489 	ar3 = 0x03
                           000002   490 	ar2 = 0x02
                           000001   491 	ar1 = 0x01
                           000000   492 	ar0 = 0x00
                                    493 ;	walk.c:38: (void)puts("Memory error");
      00208B 90 43 1F         [24]  494 	mov	dptr,#___str_0
      00208E 75 F0 80         [24]  495 	mov	b,#0x80
      002091 12 2F 66         [24]  496 	lcall	_puts
                                    497 ;	walk.c:39: reset();
                                    498 ;	walk.c:41: return;
                                    499 ;	walk.c:42: }
      002094 02 20 88         [24]  500 	ljmp	_reset
                                    501 ;------------------------------------------------------------
                                    502 ;Allocation info for local variables in function 'update'
                                    503 ;------------------------------------------------------------
                                    504 ;cur                       Allocated to stack - _bp -5
                                    505 ;j                         Allocated to stack - _bp -6
                                    506 ;t                         Allocated to stack - _bp +1
                                    507 ;sloc0                     Allocated to stack - _bp +4
                                    508 ;sloc1                     Allocated to stack - _bp +6
                                    509 ;sloc2                     Allocated to stack - _bp +8
                                    510 ;------------------------------------------------------------
                                    511 ;	walk.c:88: static int update(struct node *t, struct node *cur, char j) {
                                    512 ;	-----------------------------------------
                                    513 ;	 function update
                                    514 ;	-----------------------------------------
      002097                        515 _update:
      002097 C0 10            [24]  516 	push	_bp
      002099 85 81 10         [24]  517 	mov	_bp,sp
      00209C C0 82            [24]  518 	push	dpl
      00209E C0 83            [24]  519 	push	dph
      0020A0 C0 F0            [24]  520 	push	b
      0020A2 E5 81            [12]  521 	mov	a,sp
      0020A4 24 07            [12]  522 	add	a,#0x07
      0020A6 F5 81            [12]  523 	mov	sp,a
                                    524 ;	walk.c:89: t->r = cur->r + neigh[j].r;
      0020A8 E5 10            [12]  525 	mov	a,_bp
      0020AA 24 FB            [12]  526 	add	a,#0xfb
      0020AC F8               [12]  527 	mov	r0,a
      0020AD 86 02            [24]  528 	mov	ar2,@r0
      0020AF 08               [12]  529 	inc	r0
      0020B0 86 03            [24]  530 	mov	ar3,@r0
      0020B2 08               [12]  531 	inc	r0
      0020B3 86 04            [24]  532 	mov	ar4,@r0
      0020B5 8A 82            [24]  533 	mov	dpl,r2
      0020B7 8B 83            [24]  534 	mov	dph,r3
      0020B9 8C F0            [24]  535 	mov	b,r4
      0020BB E5 10            [12]  536 	mov	a,_bp
      0020BD 24 04            [12]  537 	add	a,#0x04
      0020BF F8               [12]  538 	mov	r0,a
      0020C0 12 30 25         [24]  539 	lcall	__gptrget
      0020C3 F6               [12]  540 	mov	@r0,a
      0020C4 A3               [24]  541 	inc	dptr
      0020C5 12 30 25         [24]  542 	lcall	__gptrget
      0020C8 08               [12]  543 	inc	r0
      0020C9 F6               [12]  544 	mov	@r0,a
      0020CA E5 10            [12]  545 	mov	a,_bp
      0020CC 24 FA            [12]  546 	add	a,#0xfa
      0020CE F8               [12]  547 	mov	r0,a
      0020CF E5 10            [12]  548 	mov	a,_bp
      0020D1 24 06            [12]  549 	add	a,#0x06
      0020D3 F9               [12]  550 	mov	r1,a
      0020D4 E6               [12]  551 	mov	a,@r0
      0020D5 75 F0 04         [24]  552 	mov	b,#0x04
      0020D8 A4               [48]  553 	mul	ab
      0020D9 F7               [12]  554 	mov	@r1,a
      0020DA 09               [12]  555 	inc	r1
      0020DB A7 F0            [24]  556 	mov	@r1,b
      0020DD E5 10            [12]  557 	mov	a,_bp
      0020DF 24 06            [12]  558 	add	a,#0x06
      0020E1 F8               [12]  559 	mov	r0,a
      0020E2 E6               [12]  560 	mov	a,@r0
      0020E3 24 E6            [12]  561 	add	a,#_neigh
      0020E5 F5 82            [12]  562 	mov	dpl,a
      0020E7 08               [12]  563 	inc	r0
      0020E8 E6               [12]  564 	mov	a,@r0
      0020E9 34 FE            [12]  565 	addc	a,#(_neigh >> 8)
      0020EB F5 83            [12]  566 	mov	dph,a
      0020ED E0               [24]  567 	movx	a,@dptr
      0020EE FF               [12]  568 	mov	r7,a
      0020EF A3               [24]  569 	inc	dptr
      0020F0 E0               [24]  570 	movx	a,@dptr
      0020F1 FE               [12]  571 	mov	r6,a
      0020F2 E5 10            [12]  572 	mov	a,_bp
      0020F4 24 04            [12]  573 	add	a,#0x04
      0020F6 F8               [12]  574 	mov	r0,a
      0020F7 EF               [12]  575 	mov	a,r7
      0020F8 26               [12]  576 	add	a,@r0
      0020F9 FF               [12]  577 	mov	r7,a
      0020FA EE               [12]  578 	mov	a,r6
      0020FB 08               [12]  579 	inc	r0
      0020FC 36               [12]  580 	addc	a,@r0
      0020FD FE               [12]  581 	mov	r6,a
      0020FE A8 10            [24]  582 	mov	r0,_bp
      002100 08               [12]  583 	inc	r0
      002101 86 82            [24]  584 	mov	dpl,@r0
      002103 08               [12]  585 	inc	r0
      002104 86 83            [24]  586 	mov	dph,@r0
      002106 08               [12]  587 	inc	r0
      002107 86 F0            [24]  588 	mov	b,@r0
      002109 EF               [12]  589 	mov	a,r7
      00210A 12 2E 1A         [24]  590 	lcall	__gptrput
      00210D A3               [24]  591 	inc	dptr
      00210E EE               [12]  592 	mov	a,r6
      00210F 12 2E 1A         [24]  593 	lcall	__gptrput
                                    594 ;	walk.c:90: t->c = cur->c + neigh[j].c;
      002112 A8 10            [24]  595 	mov	r0,_bp
      002114 08               [12]  596 	inc	r0
      002115 E5 10            [12]  597 	mov	a,_bp
      002117 24 08            [12]  598 	add	a,#0x08
      002119 F9               [12]  599 	mov	r1,a
      00211A 74 02            [12]  600 	mov	a,#0x02
      00211C 26               [12]  601 	add	a,@r0
      00211D F7               [12]  602 	mov	@r1,a
      00211E E4               [12]  603 	clr	a
      00211F 08               [12]  604 	inc	r0
      002120 36               [12]  605 	addc	a,@r0
      002121 09               [12]  606 	inc	r1
      002122 F7               [12]  607 	mov	@r1,a
      002123 08               [12]  608 	inc	r0
      002124 09               [12]  609 	inc	r1
      002125 E6               [12]  610 	mov	a,@r0
      002126 F7               [12]  611 	mov	@r1,a
      002127 74 02            [12]  612 	mov	a,#0x02
      002129 2A               [12]  613 	add	a,r2
      00212A FA               [12]  614 	mov	r2,a
      00212B E4               [12]  615 	clr	a
      00212C 3B               [12]  616 	addc	a,r3
      00212D FB               [12]  617 	mov	r3,a
      00212E 8A 82            [24]  618 	mov	dpl,r2
      002130 8B 83            [24]  619 	mov	dph,r3
      002132 8C F0            [24]  620 	mov	b,r4
      002134 12 30 25         [24]  621 	lcall	__gptrget
      002137 FA               [12]  622 	mov	r2,a
      002138 A3               [24]  623 	inc	dptr
      002139 12 30 25         [24]  624 	lcall	__gptrget
      00213C FB               [12]  625 	mov	r3,a
      00213D E5 10            [12]  626 	mov	a,_bp
      00213F 24 06            [12]  627 	add	a,#0x06
      002141 F8               [12]  628 	mov	r0,a
      002142 E6               [12]  629 	mov	a,@r0
      002143 24 E6            [12]  630 	add	a,#_neigh
      002145 FC               [12]  631 	mov	r4,a
      002146 08               [12]  632 	inc	r0
      002147 E6               [12]  633 	mov	a,@r0
      002148 34 FE            [12]  634 	addc	a,#(_neigh >> 8)
      00214A FD               [12]  635 	mov	r5,a
      00214B 8C 82            [24]  636 	mov	dpl,r4
      00214D 8D 83            [24]  637 	mov	dph,r5
      00214F A3               [24]  638 	inc	dptr
      002150 A3               [24]  639 	inc	dptr
      002151 E0               [24]  640 	movx	a,@dptr
      002152 FC               [12]  641 	mov	r4,a
      002153 A3               [24]  642 	inc	dptr
      002154 E0               [24]  643 	movx	a,@dptr
      002155 FD               [12]  644 	mov	r5,a
      002156 EC               [12]  645 	mov	a,r4
      002157 2A               [12]  646 	add	a,r2
      002158 FA               [12]  647 	mov	r2,a
      002159 ED               [12]  648 	mov	a,r5
      00215A 3B               [12]  649 	addc	a,r3
      00215B FB               [12]  650 	mov	r3,a
      00215C E5 10            [12]  651 	mov	a,_bp
      00215E 24 08            [12]  652 	add	a,#0x08
      002160 F8               [12]  653 	mov	r0,a
      002161 86 82            [24]  654 	mov	dpl,@r0
      002163 08               [12]  655 	inc	r0
      002164 86 83            [24]  656 	mov	dph,@r0
      002166 08               [12]  657 	inc	r0
      002167 86 F0            [24]  658 	mov	b,@r0
      002169 EA               [12]  659 	mov	a,r2
      00216A 12 2E 1A         [24]  660 	lcall	__gptrput
      00216D A3               [24]  661 	inc	dptr
      00216E EB               [12]  662 	mov	a,r3
      00216F 12 2E 1A         [24]  663 	lcall	__gptrput
                                    664 ;	walk.c:92: if (t->r < 0) t->r += ROWS;
      002172 A8 10            [24]  665 	mov	r0,_bp
      002174 08               [12]  666 	inc	r0
      002175 86 82            [24]  667 	mov	dpl,@r0
      002177 08               [12]  668 	inc	r0
      002178 86 83            [24]  669 	mov	dph,@r0
      00217A 08               [12]  670 	inc	r0
      00217B 86 F0            [24]  671 	mov	b,@r0
      00217D 12 30 25         [24]  672 	lcall	__gptrget
      002180 FD               [12]  673 	mov	r5,a
      002181 A3               [24]  674 	inc	dptr
      002182 12 30 25         [24]  675 	lcall	__gptrget
      002185 FC               [12]  676 	mov	r4,a
      002186 EE               [12]  677 	mov	a,r6
      002187 30 E7 1D         [24]  678 	jnb	acc.7,00104$
      00218A 74 30            [12]  679 	mov	a,#0x30
      00218C 2D               [12]  680 	add	a,r5
      00218D FF               [12]  681 	mov	r7,a
      00218E E4               [12]  682 	clr	a
      00218F 3C               [12]  683 	addc	a,r4
      002190 FE               [12]  684 	mov	r6,a
      002191 A8 10            [24]  685 	mov	r0,_bp
      002193 08               [12]  686 	inc	r0
      002194 86 82            [24]  687 	mov	dpl,@r0
      002196 08               [12]  688 	inc	r0
      002197 86 83            [24]  689 	mov	dph,@r0
      002199 08               [12]  690 	inc	r0
      00219A 86 F0            [24]  691 	mov	b,@r0
      00219C EF               [12]  692 	mov	a,r7
      00219D 12 2E 1A         [24]  693 	lcall	__gptrput
      0021A0 A3               [24]  694 	inc	dptr
      0021A1 EE               [12]  695 	mov	a,r6
      0021A2 12 2E 1A         [24]  696 	lcall	__gptrput
      0021A5 80 27            [24]  697 	sjmp	00105$
      0021A7                        698 00104$:
                                    699 ;	walk.c:93: else if (t->r >= ROWS) t->r -= ROWS;
      0021A7 C3               [12]  700 	clr	c
      0021A8 ED               [12]  701 	mov	a,r5
      0021A9 94 30            [12]  702 	subb	a,#0x30
      0021AB EC               [12]  703 	mov	a,r4
      0021AC 64 80            [12]  704 	xrl	a,#0x80
      0021AE 94 80            [12]  705 	subb	a,#0x80
      0021B0 40 1C            [24]  706 	jc	00105$
      0021B2 ED               [12]  707 	mov	a,r5
      0021B3 24 D0            [12]  708 	add	a,#0xd0
      0021B5 FD               [12]  709 	mov	r5,a
      0021B6 EC               [12]  710 	mov	a,r4
      0021B7 34 FF            [12]  711 	addc	a,#0xff
      0021B9 FC               [12]  712 	mov	r4,a
      0021BA A8 10            [24]  713 	mov	r0,_bp
      0021BC 08               [12]  714 	inc	r0
      0021BD 86 82            [24]  715 	mov	dpl,@r0
      0021BF 08               [12]  716 	inc	r0
      0021C0 86 83            [24]  717 	mov	dph,@r0
      0021C2 08               [12]  718 	inc	r0
      0021C3 86 F0            [24]  719 	mov	b,@r0
      0021C5 ED               [12]  720 	mov	a,r5
      0021C6 12 2E 1A         [24]  721 	lcall	__gptrput
      0021C9 A3               [24]  722 	inc	dptr
      0021CA EC               [12]  723 	mov	a,r4
      0021CB 12 2E 1A         [24]  724 	lcall	__gptrput
      0021CE                        725 00105$:
                                    726 ;	walk.c:94: if (t->c < 0) t->c += COLS;
      0021CE E5 10            [12]  727 	mov	a,_bp
      0021D0 24 08            [12]  728 	add	a,#0x08
      0021D2 F8               [12]  729 	mov	r0,a
      0021D3 86 82            [24]  730 	mov	dpl,@r0
      0021D5 08               [12]  731 	inc	r0
      0021D6 86 83            [24]  732 	mov	dph,@r0
      0021D8 08               [12]  733 	inc	r0
      0021D9 86 F0            [24]  734 	mov	b,@r0
      0021DB 12 30 25         [24]  735 	lcall	__gptrget
      0021DE A3               [24]  736 	inc	dptr
      0021DF 12 30 25         [24]  737 	lcall	__gptrget
      0021E2 30 E7 35         [24]  738 	jnb	acc.7,00109$
      0021E5 E5 10            [12]  739 	mov	a,_bp
      0021E7 24 08            [12]  740 	add	a,#0x08
      0021E9 F8               [12]  741 	mov	r0,a
      0021EA 86 82            [24]  742 	mov	dpl,@r0
      0021EC 08               [12]  743 	inc	r0
      0021ED 86 83            [24]  744 	mov	dph,@r0
      0021EF 08               [12]  745 	inc	r0
      0021F0 86 F0            [24]  746 	mov	b,@r0
      0021F2 12 30 25         [24]  747 	lcall	__gptrget
      0021F5 FE               [12]  748 	mov	r6,a
      0021F6 A3               [24]  749 	inc	dptr
      0021F7 12 30 25         [24]  750 	lcall	__gptrget
      0021FA FF               [12]  751 	mov	r7,a
      0021FB 74 C6            [12]  752 	mov	a,#0xc6
      0021FD 2E               [12]  753 	add	a,r6
      0021FE FE               [12]  754 	mov	r6,a
      0021FF E4               [12]  755 	clr	a
      002200 3F               [12]  756 	addc	a,r7
      002201 FF               [12]  757 	mov	r7,a
      002202 E5 10            [12]  758 	mov	a,_bp
      002204 24 08            [12]  759 	add	a,#0x08
      002206 F8               [12]  760 	mov	r0,a
      002207 86 82            [24]  761 	mov	dpl,@r0
      002209 08               [12]  762 	inc	r0
      00220A 86 83            [24]  763 	mov	dph,@r0
      00220C 08               [12]  764 	inc	r0
      00220D 86 F0            [24]  765 	mov	b,@r0
      00220F EE               [12]  766 	mov	a,r6
      002210 12 2E 1A         [24]  767 	lcall	__gptrput
      002213 A3               [24]  768 	inc	dptr
      002214 EF               [12]  769 	mov	a,r7
      002215 12 2E 1A         [24]  770 	lcall	__gptrput
      002218 80 55            [24]  771 	sjmp	00110$
      00221A                        772 00109$:
                                    773 ;	walk.c:95: else if (t->c >= COLS) t->c -= COLS;
      00221A E5 10            [12]  774 	mov	a,_bp
      00221C 24 08            [12]  775 	add	a,#0x08
      00221E F8               [12]  776 	mov	r0,a
      00221F 86 82            [24]  777 	mov	dpl,@r0
      002221 08               [12]  778 	inc	r0
      002222 86 83            [24]  779 	mov	dph,@r0
      002224 08               [12]  780 	inc	r0
      002225 86 F0            [24]  781 	mov	b,@r0
      002227 12 30 25         [24]  782 	lcall	__gptrget
      00222A FE               [12]  783 	mov	r6,a
      00222B A3               [24]  784 	inc	dptr
      00222C 12 30 25         [24]  785 	lcall	__gptrget
      00222F FF               [12]  786 	mov	r7,a
      002230 C3               [12]  787 	clr	c
      002231 EE               [12]  788 	mov	a,r6
      002232 94 C6            [12]  789 	subb	a,#0xc6
      002234 EF               [12]  790 	mov	a,r7
      002235 64 80            [12]  791 	xrl	a,#0x80
      002237 94 80            [12]  792 	subb	a,#0x80
      002239 40 34            [24]  793 	jc	00110$
      00223B E5 10            [12]  794 	mov	a,_bp
      00223D 24 08            [12]  795 	add	a,#0x08
      00223F F8               [12]  796 	mov	r0,a
      002240 86 82            [24]  797 	mov	dpl,@r0
      002242 08               [12]  798 	inc	r0
      002243 86 83            [24]  799 	mov	dph,@r0
      002245 08               [12]  800 	inc	r0
      002246 86 F0            [24]  801 	mov	b,@r0
      002248 12 30 25         [24]  802 	lcall	__gptrget
      00224B FE               [12]  803 	mov	r6,a
      00224C A3               [24]  804 	inc	dptr
      00224D 12 30 25         [24]  805 	lcall	__gptrget
      002250 FF               [12]  806 	mov	r7,a
      002251 EE               [12]  807 	mov	a,r6
      002252 24 3A            [12]  808 	add	a,#0x3a
      002254 FE               [12]  809 	mov	r6,a
      002255 EF               [12]  810 	mov	a,r7
      002256 34 FF            [12]  811 	addc	a,#0xff
      002258 FF               [12]  812 	mov	r7,a
      002259 E5 10            [12]  813 	mov	a,_bp
      00225B 24 08            [12]  814 	add	a,#0x08
      00225D F8               [12]  815 	mov	r0,a
      00225E 86 82            [24]  816 	mov	dpl,@r0
      002260 08               [12]  817 	inc	r0
      002261 86 83            [24]  818 	mov	dph,@r0
      002263 08               [12]  819 	inc	r0
      002264 86 F0            [24]  820 	mov	b,@r0
      002266 EE               [12]  821 	mov	a,r6
      002267 12 2E 1A         [24]  822 	lcall	__gptrput
      00226A A3               [24]  823 	inc	dptr
      00226B EF               [12]  824 	mov	a,r7
      00226C 12 2E 1A         [24]  825 	lcall	__gptrput
      00226F                        826 00110$:
                                    827 ;	walk.c:97: if (g[t->r][t->c] == 0xaa) return 0;
      00226F A8 10            [24]  828 	mov	r0,_bp
      002271 08               [12]  829 	inc	r0
      002272 86 82            [24]  830 	mov	dpl,@r0
      002274 08               [12]  831 	inc	r0
      002275 86 83            [24]  832 	mov	dph,@r0
      002277 08               [12]  833 	inc	r0
      002278 86 F0            [24]  834 	mov	b,@r0
      00227A 12 30 25         [24]  835 	lcall	__gptrget
      00227D FE               [12]  836 	mov	r6,a
      00227E A3               [24]  837 	inc	dptr
      00227F 12 30 25         [24]  838 	lcall	__gptrget
      002282 FF               [12]  839 	mov	r7,a
      002283 C0 06            [24]  840 	push	ar6
      002285 C0 07            [24]  841 	push	ar7
      002287 90 00 C6         [24]  842 	mov	dptr,#0x00c6
      00228A 12 2E 35         [24]  843 	lcall	__mulint
      00228D AE 82            [24]  844 	mov	r6,dpl
      00228F AF 83            [24]  845 	mov	r7,dph
      002291 15 81            [12]  846 	dec	sp
      002293 15 81            [12]  847 	dec	sp
      002295 EE               [12]  848 	mov	a,r6
      002296 24 00            [12]  849 	add	a,#_g
      002298 FE               [12]  850 	mov	r6,a
      002299 EF               [12]  851 	mov	a,r7
      00229A 34 45            [12]  852 	addc	a,#(_g >> 8)
      00229C FF               [12]  853 	mov	r7,a
      00229D E5 10            [12]  854 	mov	a,_bp
      00229F 24 08            [12]  855 	add	a,#0x08
      0022A1 F8               [12]  856 	mov	r0,a
      0022A2 86 82            [24]  857 	mov	dpl,@r0
      0022A4 08               [12]  858 	inc	r0
      0022A5 86 83            [24]  859 	mov	dph,@r0
      0022A7 08               [12]  860 	inc	r0
      0022A8 86 F0            [24]  861 	mov	b,@r0
      0022AA 12 30 25         [24]  862 	lcall	__gptrget
      0022AD FC               [12]  863 	mov	r4,a
      0022AE A3               [24]  864 	inc	dptr
      0022AF 12 30 25         [24]  865 	lcall	__gptrget
      0022B2 FD               [12]  866 	mov	r5,a
      0022B3 EC               [12]  867 	mov	a,r4
      0022B4 2E               [12]  868 	add	a,r6
      0022B5 F5 82            [12]  869 	mov	dpl,a
      0022B7 ED               [12]  870 	mov	a,r5
      0022B8 3F               [12]  871 	addc	a,r7
      0022B9 F5 83            [12]  872 	mov	dph,a
      0022BB E0               [24]  873 	movx	a,@dptr
      0022BC FF               [12]  874 	mov	r7,a
      0022BD BF AA 05         [24]  875 	cjne	r7,#0xaa,00114$
      0022C0 90 00 00         [24]  876 	mov	dptr,#0x0000
      0022C3 80 59            [24]  877 	sjmp	00116$
      0022C5                        878 00114$:
                                    879 ;	walk.c:98: else if (g[t->r][t->c] != 0x55) bang();
      0022C5 A8 10            [24]  880 	mov	r0,_bp
      0022C7 08               [12]  881 	inc	r0
      0022C8 86 82            [24]  882 	mov	dpl,@r0
      0022CA 08               [12]  883 	inc	r0
      0022CB 86 83            [24]  884 	mov	dph,@r0
      0022CD 08               [12]  885 	inc	r0
      0022CE 86 F0            [24]  886 	mov	b,@r0
      0022D0 12 30 25         [24]  887 	lcall	__gptrget
      0022D3 FE               [12]  888 	mov	r6,a
      0022D4 A3               [24]  889 	inc	dptr
      0022D5 12 30 25         [24]  890 	lcall	__gptrget
      0022D8 FF               [12]  891 	mov	r7,a
      0022D9 C0 06            [24]  892 	push	ar6
      0022DB C0 07            [24]  893 	push	ar7
      0022DD 90 00 C6         [24]  894 	mov	dptr,#0x00c6
      0022E0 12 2E 35         [24]  895 	lcall	__mulint
      0022E3 AE 82            [24]  896 	mov	r6,dpl
      0022E5 AF 83            [24]  897 	mov	r7,dph
      0022E7 15 81            [12]  898 	dec	sp
      0022E9 15 81            [12]  899 	dec	sp
      0022EB EE               [12]  900 	mov	a,r6
      0022EC 24 00            [12]  901 	add	a,#_g
      0022EE FE               [12]  902 	mov	r6,a
      0022EF EF               [12]  903 	mov	a,r7
      0022F0 34 45            [12]  904 	addc	a,#(_g >> 8)
      0022F2 FF               [12]  905 	mov	r7,a
      0022F3 E5 10            [12]  906 	mov	a,_bp
      0022F5 24 08            [12]  907 	add	a,#0x08
      0022F7 F8               [12]  908 	mov	r0,a
      0022F8 86 82            [24]  909 	mov	dpl,@r0
      0022FA 08               [12]  910 	inc	r0
      0022FB 86 83            [24]  911 	mov	dph,@r0
      0022FD 08               [12]  912 	inc	r0
      0022FE 86 F0            [24]  913 	mov	b,@r0
      002300 12 30 25         [24]  914 	lcall	__gptrget
      002303 FC               [12]  915 	mov	r4,a
      002304 A3               [24]  916 	inc	dptr
      002305 12 30 25         [24]  917 	lcall	__gptrget
      002308 FD               [12]  918 	mov	r5,a
      002309 EC               [12]  919 	mov	a,r4
      00230A 2E               [12]  920 	add	a,r6
      00230B F5 82            [12]  921 	mov	dpl,a
      00230D ED               [12]  922 	mov	a,r5
      00230E 3F               [12]  923 	addc	a,r7
      00230F F5 83            [12]  924 	mov	dph,a
      002311 E0               [24]  925 	movx	a,@dptr
      002312 FF               [12]  926 	mov	r7,a
      002313 BF 55 02         [24]  927 	cjne	r7,#0x55,00148$
      002316 80 03            [24]  928 	sjmp	00115$
      002318                        929 00148$:
      002318 12 20 8B         [24]  930 	lcall	_bang
      00231B                        931 00115$:
                                    932 ;	walk.c:100: return 1;
      00231B 90 00 01         [24]  933 	mov	dptr,#0x0001
      00231E                        934 00116$:
                                    935 ;	walk.c:101: }
      00231E 85 10 81         [24]  936 	mov	sp,_bp
      002321 D0 10            [24]  937 	pop	_bp
      002323 22               [24]  938 	ret
                                    939 ;------------------------------------------------------------
                                    940 ;Allocation info for local variables in function 'walk'
                                    941 ;------------------------------------------------------------
                                    942 ;nstart                    Allocated to registers r5 r6 r7 
                                    943 ;cur                       Allocated to stack - _bp +5
                                    944 ;t                         Allocated to stack - _bp +9
                                    945 ;j                         Allocated to stack - _bp +13
                                    946 ;r                         Allocated to registers r2 r3 
                                    947 ;sloc0                     Allocated to stack - _bp +15
                                    948 ;sloc1                     Allocated to stack - _bp +1
                                    949 ;sloc2                     Allocated to stack - _bp +2
                                    950 ;------------------------------------------------------------
                                    951 ;	walk.c:103: static void walk(struct node *nstart) {
                                    952 ;	-----------------------------------------
                                    953 ;	 function walk
                                    954 ;	-----------------------------------------
      002324                        955 _walk:
      002324 C0 10            [24]  956 	push	_bp
      002326 E5 81            [12]  957 	mov	a,sp
      002328 F5 10            [12]  958 	mov	_bp,a
      00232A 24 0D            [12]  959 	add	a,#0x0d
      00232C F5 81            [12]  960 	mov	sp,a
                                    961 ;	walk.c:108: if (!qadd(nstart)) bang();
      00232E AD 82            [24]  962 	mov	r5,dpl
      002330 AE 83            [24]  963 	mov	r6,dph
      002332 AF F0            [24]  964 	mov	r7,b
      002334 C0 07            [24]  965 	push	ar7
      002336 C0 06            [24]  966 	push	ar6
      002338 C0 05            [24]  967 	push	ar5
      00233A 12 2B C7         [24]  968 	lcall	_qadd
      00233D E5 82            [12]  969 	mov	a,dpl
      00233F 85 83 F0         [24]  970 	mov	b,dph
      002342 D0 05            [24]  971 	pop	ar5
      002344 D0 06            [24]  972 	pop	ar6
      002346 D0 07            [24]  973 	pop	ar7
      002348 45 F0            [12]  974 	orl	a,b
      00234A 70 0F            [24]  975 	jnz	00102$
      00234C C0 07            [24]  976 	push	ar7
      00234E C0 06            [24]  977 	push	ar6
      002350 C0 05            [24]  978 	push	ar5
      002352 12 20 8B         [24]  979 	lcall	_bang
      002355 D0 05            [24]  980 	pop	ar5
      002357 D0 06            [24]  981 	pop	ar6
      002359 D0 07            [24]  982 	pop	ar7
      00235B                        983 00102$:
                                    984 ;	walk.c:109: g[nstart->r][nstart->c] = 0xaa;
      00235B 8D 82            [24]  985 	mov	dpl,r5
      00235D 8E 83            [24]  986 	mov	dph,r6
      00235F 8F F0            [24]  987 	mov	b,r7
      002361 12 30 25         [24]  988 	lcall	__gptrget
      002364 FB               [12]  989 	mov	r3,a
      002365 A3               [24]  990 	inc	dptr
      002366 12 30 25         [24]  991 	lcall	__gptrget
      002369 FC               [12]  992 	mov	r4,a
      00236A C0 07            [24]  993 	push	ar7
      00236C C0 06            [24]  994 	push	ar6
      00236E C0 05            [24]  995 	push	ar5
      002370 C0 03            [24]  996 	push	ar3
      002372 C0 04            [24]  997 	push	ar4
      002374 90 00 C6         [24]  998 	mov	dptr,#0x00c6
      002377 12 2E 35         [24]  999 	lcall	__mulint
      00237A AB 82            [24] 1000 	mov	r3,dpl
      00237C AC 83            [24] 1001 	mov	r4,dph
      00237E 15 81            [12] 1002 	dec	sp
      002380 15 81            [12] 1003 	dec	sp
      002382 D0 05            [24] 1004 	pop	ar5
      002384 D0 06            [24] 1005 	pop	ar6
      002386 D0 07            [24] 1006 	pop	ar7
      002388 EB               [12] 1007 	mov	a,r3
      002389 24 00            [12] 1008 	add	a,#_g
      00238B FB               [12] 1009 	mov	r3,a
      00238C EC               [12] 1010 	mov	a,r4
      00238D 34 45            [12] 1011 	addc	a,#(_g >> 8)
      00238F FC               [12] 1012 	mov	r4,a
      002390 74 02            [12] 1013 	mov	a,#0x02
      002392 2D               [12] 1014 	add	a,r5
      002393 FD               [12] 1015 	mov	r5,a
      002394 E4               [12] 1016 	clr	a
      002395 3E               [12] 1017 	addc	a,r6
      002396 FE               [12] 1018 	mov	r6,a
      002397 8D 82            [24] 1019 	mov	dpl,r5
      002399 8E 83            [24] 1020 	mov	dph,r6
      00239B 8F F0            [24] 1021 	mov	b,r7
      00239D 12 30 25         [24] 1022 	lcall	__gptrget
      0023A0 FD               [12] 1023 	mov	r5,a
      0023A1 A3               [24] 1024 	inc	dptr
      0023A2 12 30 25         [24] 1025 	lcall	__gptrget
      0023A5 FE               [12] 1026 	mov	r6,a
      0023A6 ED               [12] 1027 	mov	a,r5
      0023A7 2B               [12] 1028 	add	a,r3
      0023A8 F5 82            [12] 1029 	mov	dpl,a
      0023AA EE               [12] 1030 	mov	a,r6
      0023AB 3C               [12] 1031 	addc	a,r4
      0023AC F5 83            [12] 1032 	mov	dph,a
      0023AE 74 AA            [12] 1033 	mov	a,#0xaa
      0023B0 F0               [24] 1034 	movx	@dptr,a
                                   1035 ;	walk.c:111: process:
      0023B1 E5 10            [12] 1036 	mov	a,_bp
      0023B3 24 05            [12] 1037 	add	a,#0x05
      0023B5 F9               [12] 1038 	mov	r1,a
      0023B6 24 02            [12] 1039 	add	a,#0x02
      0023B8 F8               [12] 1040 	mov	r0,a
      0023B9 C0 00            [24] 1041 	push	ar0
      0023BB A8 10            [24] 1042 	mov	r0,_bp
      0023BD 08               [12] 1043 	inc	r0
      0023BE A6 01            [24] 1044 	mov	@r0,ar1
      0023C0 D0 00            [24] 1045 	pop	ar0
      0023C2 E5 10            [12] 1046 	mov	a,_bp
      0023C4 24 09            [12] 1047 	add	a,#0x09
      0023C6 FE               [12] 1048 	mov	r6,a
      0023C7 FD               [12] 1049 	mov	r5,a
      0023C8 74 02            [12] 1050 	mov	a,#0x02
      0023CA 2E               [12] 1051 	add	a,r6
      0023CB FC               [12] 1052 	mov	r4,a
      0023CC                       1053 00103$:
                                   1054 ;	walk.c:112: if (!qget(&cur)) goto term;
      0023CC C0 05            [24] 1055 	push	ar5
      0023CE 89 02            [24] 1056 	mov	ar2,r1
      0023D0 7B 00            [12] 1057 	mov	r3,#0x00
      0023D2 7D 40            [12] 1058 	mov	r5,#0x40
      0023D4 8A 82            [24] 1059 	mov	dpl,r2
      0023D6 8B 83            [24] 1060 	mov	dph,r3
      0023D8 8D F0            [24] 1061 	mov	b,r5
      0023DA C0 06            [24] 1062 	push	ar6
      0023DC C0 05            [24] 1063 	push	ar5
      0023DE C0 04            [24] 1064 	push	ar4
      0023E0 C0 01            [24] 1065 	push	ar1
      0023E2 C0 00            [24] 1066 	push	ar0
      0023E4 12 2C B9         [24] 1067 	lcall	_qget
      0023E7 E5 82            [12] 1068 	mov	a,dpl
      0023E9 85 83 F0         [24] 1069 	mov	b,dph
      0023EC D0 00            [24] 1070 	pop	ar0
      0023EE D0 01            [24] 1071 	pop	ar1
      0023F0 D0 04            [24] 1072 	pop	ar4
      0023F2 D0 05            [24] 1073 	pop	ar5
      0023F4 D0 06            [24] 1074 	pop	ar6
      0023F6 D0 05            [24] 1075 	pop	ar5
      0023F8 45 F0            [12] 1076 	orl	a,b
      0023FA 70 03            [24] 1077 	jnz	00158$
      0023FC 02 26 87         [24] 1078 	ljmp	00115$
      0023FF                       1079 00158$:
                                   1080 ;	walk.c:113: r = rand() & 0x001f;
      0023FF C0 06            [24] 1081 	push	ar6
      002401 C0 05            [24] 1082 	push	ar5
      002403 C0 04            [24] 1083 	push	ar4
      002405 C0 01            [24] 1084 	push	ar1
      002407 C0 00            [24] 1085 	push	ar0
      002409 12 2D 3D         [24] 1086 	lcall	_rand
      00240C AA 82            [24] 1087 	mov	r2,dpl
      00240E D0 00            [24] 1088 	pop	ar0
      002410 D0 01            [24] 1089 	pop	ar1
      002412 D0 04            [24] 1090 	pop	ar4
      002414 D0 05            [24] 1091 	pop	ar5
      002416 D0 06            [24] 1092 	pop	ar6
      002418 53 02 1F         [24] 1093 	anl	ar2,#0x1f
      00241B 7B 00            [12] 1094 	mov	r3,#0x00
                                   1095 ;	walk.c:114: if (r < 16) {
      00241D C3               [12] 1096 	clr	c
      00241E EA               [12] 1097 	mov	a,r2
      00241F 94 10            [12] 1098 	subb	a,#0x10
      002421 EB               [12] 1099 	mov	a,r3
      002422 64 80            [12] 1100 	xrl	a,#0x80
      002424 94 80            [12] 1101 	subb	a,#0x80
      002426 50 4F            [24] 1102 	jnc	00109$
                                   1103 ;	walk.c:115: if (!qadd(&cur)) bang();
      002428 C0 05            [24] 1104 	push	ar5
      00242A 89 03            [24] 1105 	mov	ar3,r1
      00242C 8B 02            [24] 1106 	mov	ar2,r3
      00242E 7B 00            [12] 1107 	mov	r3,#0x00
      002430 7D 40            [12] 1108 	mov	r5,#0x40
      002432 8A 82            [24] 1109 	mov	dpl,r2
      002434 8B 83            [24] 1110 	mov	dph,r3
      002436 8D F0            [24] 1111 	mov	b,r5
      002438 C0 06            [24] 1112 	push	ar6
      00243A C0 05            [24] 1113 	push	ar5
      00243C C0 04            [24] 1114 	push	ar4
      00243E C0 01            [24] 1115 	push	ar1
      002440 C0 00            [24] 1116 	push	ar0
      002442 12 2B C7         [24] 1117 	lcall	_qadd
      002445 E5 82            [12] 1118 	mov	a,dpl
      002447 85 83 F0         [24] 1119 	mov	b,dph
      00244A D0 00            [24] 1120 	pop	ar0
      00244C D0 01            [24] 1121 	pop	ar1
      00244E D0 04            [24] 1122 	pop	ar4
      002450 D0 05            [24] 1123 	pop	ar5
      002452 D0 06            [24] 1124 	pop	ar6
      002454 D0 05            [24] 1125 	pop	ar5
      002456 45 F0            [12] 1126 	orl	a,b
      002458 60 03            [24] 1127 	jz	00160$
      00245A 02 23 CC         [24] 1128 	ljmp	00103$
      00245D                       1129 00160$:
      00245D C0 06            [24] 1130 	push	ar6
      00245F C0 05            [24] 1131 	push	ar5
      002461 C0 04            [24] 1132 	push	ar4
      002463 C0 01            [24] 1133 	push	ar1
      002465 C0 00            [24] 1134 	push	ar0
      002467 12 20 8B         [24] 1135 	lcall	_bang
      00246A D0 00            [24] 1136 	pop	ar0
      00246C D0 01            [24] 1137 	pop	ar1
      00246E D0 04            [24] 1138 	pop	ar4
      002470 D0 05            [24] 1139 	pop	ar5
      002472 D0 06            [24] 1140 	pop	ar6
                                   1141 ;	walk.c:116: goto process;
      002474 02 23 CC         [24] 1142 	ljmp	00103$
      002477                       1143 00109$:
                                   1144 ;	walk.c:119: printf("\033[%d;%dH.", cur.r + 4, cur.c + 1);
      002477 C0 05            [24] 1145 	push	ar5
      002479 86 02            [24] 1146 	mov	ar2,@r0
      00247B 08               [12] 1147 	inc	r0
      00247C 86 03            [24] 1148 	mov	ar3,@r0
      00247E 18               [12] 1149 	dec	r0
      00247F 74 01            [12] 1150 	mov	a,#0x01
      002481 2A               [12] 1151 	add	a,r2
      002482 FA               [12] 1152 	mov	r2,a
      002483 E4               [12] 1153 	clr	a
      002484 3B               [12] 1154 	addc	a,r3
      002485 FF               [12] 1155 	mov	r7,a
      002486 87 03            [24] 1156 	mov	ar3,@r1
      002488 09               [12] 1157 	inc	r1
      002489 87 05            [24] 1158 	mov	ar5,@r1
      00248B 19               [12] 1159 	dec	r1
      00248C 74 04            [12] 1160 	mov	a,#0x04
      00248E 2B               [12] 1161 	add	a,r3
      00248F FB               [12] 1162 	mov	r3,a
      002490 E4               [12] 1163 	clr	a
      002491 3D               [12] 1164 	addc	a,r5
      002492 FD               [12] 1165 	mov	r5,a
      002493 C0 06            [24] 1166 	push	ar6
      002495 C0 05            [24] 1167 	push	ar5
      002497 C0 04            [24] 1168 	push	ar4
      002499 C0 01            [24] 1169 	push	ar1
      00249B C0 00            [24] 1170 	push	ar0
      00249D C0 02            [24] 1171 	push	ar2
      00249F C0 07            [24] 1172 	push	ar7
      0024A1 C0 03            [24] 1173 	push	ar3
      0024A3 C0 05            [24] 1174 	push	ar5
      0024A5 74 2C            [12] 1175 	mov	a,#___str_1
      0024A7 C0 E0            [24] 1176 	push	acc
      0024A9 74 43            [12] 1177 	mov	a,#(___str_1 >> 8)
      0024AB C0 E0            [24] 1178 	push	acc
      0024AD 74 80            [12] 1179 	mov	a,#0x80
      0024AF C0 E0            [24] 1180 	push	acc
      0024B1 12 2F EC         [24] 1181 	lcall	_printf
      0024B4 E5 81            [12] 1182 	mov	a,sp
      0024B6 24 F9            [12] 1183 	add	a,#0xf9
      0024B8 F5 81            [12] 1184 	mov	sp,a
      0024BA D0 00            [24] 1185 	pop	ar0
      0024BC D0 01            [24] 1186 	pop	ar1
      0024BE D0 04            [24] 1187 	pop	ar4
      0024C0 D0 05            [24] 1188 	pop	ar5
                                   1189 ;	walk.c:120: printf("\033[2;1H% 8d% 8d% 8d% 8d", hp, tp, cur.r, cur.c);
      0024C2 86 07            [24] 1190 	mov	ar7,@r0
      0024C4 08               [12] 1191 	inc	r0
      0024C5 86 03            [24] 1192 	mov	ar3,@r0
      0024C7 18               [12] 1193 	dec	r0
      0024C8 87 02            [24] 1194 	mov	ar2,@r1
      0024CA 09               [12] 1195 	inc	r1
      0024CB 87 05            [24] 1196 	mov	ar5,@r1
      0024CD 19               [12] 1197 	dec	r1
      0024CE C0 05            [24] 1198 	push	ar5
      0024D0 C0 04            [24] 1199 	push	ar4
      0024D2 C0 01            [24] 1200 	push	ar1
      0024D4 C0 00            [24] 1201 	push	ar0
      0024D6 C0 07            [24] 1202 	push	ar7
      0024D8 C0 03            [24] 1203 	push	ar3
      0024DA C0 02            [24] 1204 	push	ar2
      0024DC C0 05            [24] 1205 	push	ar5
      0024DE 90 FE A2         [24] 1206 	mov	dptr,#_tp
      0024E1 E0               [24] 1207 	movx	a,@dptr
      0024E2 C0 E0            [24] 1208 	push	acc
      0024E4 A3               [24] 1209 	inc	dptr
      0024E5 E0               [24] 1210 	movx	a,@dptr
      0024E6 C0 E0            [24] 1211 	push	acc
      0024E8 90 FE A0         [24] 1212 	mov	dptr,#_hp
      0024EB E0               [24] 1213 	movx	a,@dptr
      0024EC C0 E0            [24] 1214 	push	acc
      0024EE A3               [24] 1215 	inc	dptr
      0024EF E0               [24] 1216 	movx	a,@dptr
      0024F0 C0 E0            [24] 1217 	push	acc
      0024F2 74 36            [12] 1218 	mov	a,#___str_2
      0024F4 C0 E0            [24] 1219 	push	acc
      0024F6 74 43            [12] 1220 	mov	a,#(___str_2 >> 8)
      0024F8 C0 E0            [24] 1221 	push	acc
      0024FA 74 80            [12] 1222 	mov	a,#0x80
      0024FC C0 E0            [24] 1223 	push	acc
      0024FE 12 2F EC         [24] 1224 	lcall	_printf
      002501 E5 81            [12] 1225 	mov	a,sp
      002503 24 F5            [12] 1226 	add	a,#0xf5
      002505 F5 81            [12] 1227 	mov	sp,a
      002507 D0 00            [24] 1228 	pop	ar0
      002509 D0 01            [24] 1229 	pop	ar1
      00250B D0 04            [24] 1230 	pop	ar4
      00250D D0 05            [24] 1231 	pop	ar5
      00250F D0 06            [24] 1232 	pop	ar6
                                   1233 ;	walk.c:122: for (j = 0; j < NMAX; j++)
      002511 C0 00            [24] 1234 	push	ar0
      002513 E5 10            [12] 1235 	mov	a,_bp
      002515 24 0D            [12] 1236 	add	a,#0x0d
      002517 F8               [12] 1237 	mov	r0,a
      002518 76 00            [12] 1238 	mov	@r0,#0x00
      00251A D0 00            [24] 1239 	pop	ar0
                                   1240 ;	walk.c:132: return;
      00251C D0 05            [24] 1241 	pop	ar5
                                   1242 ;	walk.c:122: for (j = 0; j < NMAX; j++)
      00251E                       1243 00116$:
                                   1244 ;	walk.c:123: if (update(&t, &cur, j)) {
      00251E C0 05            [24] 1245 	push	ar5
      002520 C0 00            [24] 1246 	push	ar0
      002522 A8 10            [24] 1247 	mov	r0,_bp
      002524 08               [12] 1248 	inc	r0
      002525 C0 01            [24] 1249 	push	ar1
      002527 A9 10            [24] 1250 	mov	r1,_bp
      002529 09               [12] 1251 	inc	r1
      00252A 09               [12] 1252 	inc	r1
      00252B E6               [12] 1253 	mov	a,@r0
      00252C F7               [12] 1254 	mov	@r1,a
      00252D 09               [12] 1255 	inc	r1
      00252E 77 00            [12] 1256 	mov	@r1,#0x00
      002530 09               [12] 1257 	inc	r1
      002531 77 40            [12] 1258 	mov	@r1,#0x40
      002533 D0 01            [24] 1259 	pop	ar1
      002535 D0 00            [24] 1260 	pop	ar0
      002537 8E 03            [24] 1261 	mov	ar3,r6
      002539 7D 00            [12] 1262 	mov	r5,#0x00
      00253B 7F 40            [12] 1263 	mov	r7,#0x40
      00253D C0 06            [24] 1264 	push	ar6
      00253F C0 04            [24] 1265 	push	ar4
      002541 C0 01            [24] 1266 	push	ar1
      002543 C0 00            [24] 1267 	push	ar0
      002545 85 00 F0         [24] 1268 	mov	b,ar0
      002548 E5 10            [12] 1269 	mov	a,_bp
      00254A 24 0D            [12] 1270 	add	a,#0x0d
      00254C F8               [12] 1271 	mov	r0,a
      00254D E6               [12] 1272 	mov	a,@r0
      00254E C0 E0            [24] 1273 	push	acc
      002550 A8 F0            [24] 1274 	mov	r0,b
      002552 85 00 F0         [24] 1275 	mov	b,ar0
      002555 A8 10            [24] 1276 	mov	r0,_bp
      002557 08               [12] 1277 	inc	r0
      002558 08               [12] 1278 	inc	r0
      002559 E6               [12] 1279 	mov	a,@r0
      00255A C0 E0            [24] 1280 	push	acc
      00255C 08               [12] 1281 	inc	r0
      00255D E6               [12] 1282 	mov	a,@r0
      00255E C0 E0            [24] 1283 	push	acc
      002560 08               [12] 1284 	inc	r0
      002561 E6               [12] 1285 	mov	a,@r0
      002562 C0 E0            [24] 1286 	push	acc
      002564 8B 82            [24] 1287 	mov	dpl,r3
      002566 8D 83            [24] 1288 	mov	dph,r5
      002568 8F F0            [24] 1289 	mov	b,r7
      00256A 12 20 97         [24] 1290 	lcall	_update
      00256D AD 82            [24] 1291 	mov	r5,dpl
      00256F AF 83            [24] 1292 	mov	r7,dph
      002571 E5 81            [12] 1293 	mov	a,sp
      002573 24 FC            [12] 1294 	add	a,#0xfc
      002575 F5 81            [12] 1295 	mov	sp,a
      002577 D0 00            [24] 1296 	pop	ar0
      002579 D0 01            [24] 1297 	pop	ar1
      00257B D0 04            [24] 1298 	pop	ar4
      00257D D0 06            [24] 1299 	pop	ar6
      00257F ED               [12] 1300 	mov	a,r5
      002580 4F               [12] 1301 	orl	a,r7
      002581 D0 05            [24] 1302 	pop	ar5
      002583 70 03            [24] 1303 	jnz	00161$
      002585 02 26 6D         [24] 1304 	ljmp	00117$
      002588                       1305 00161$:
                                   1306 ;	walk.c:124: if (!qadd(&t)) bang();
      002588 8D 02            [24] 1307 	mov	ar2,r5
      00258A 7B 00            [12] 1308 	mov	r3,#0x00
      00258C 7F 40            [12] 1309 	mov	r7,#0x40
      00258E 8A 82            [24] 1310 	mov	dpl,r2
      002590 8B 83            [24] 1311 	mov	dph,r3
      002592 8F F0            [24] 1312 	mov	b,r7
      002594 C0 06            [24] 1313 	push	ar6
      002596 C0 05            [24] 1314 	push	ar5
      002598 C0 04            [24] 1315 	push	ar4
      00259A C0 01            [24] 1316 	push	ar1
      00259C C0 00            [24] 1317 	push	ar0
      00259E 12 2B C7         [24] 1318 	lcall	_qadd
      0025A1 E5 82            [12] 1319 	mov	a,dpl
      0025A3 85 83 F0         [24] 1320 	mov	b,dph
      0025A6 D0 00            [24] 1321 	pop	ar0
      0025A8 D0 01            [24] 1322 	pop	ar1
      0025AA D0 04            [24] 1323 	pop	ar4
      0025AC D0 05            [24] 1324 	pop	ar5
      0025AE D0 06            [24] 1325 	pop	ar6
      0025B0 45 F0            [12] 1326 	orl	a,b
      0025B2 70 17            [24] 1327 	jnz	00111$
      0025B4 C0 06            [24] 1328 	push	ar6
      0025B6 C0 05            [24] 1329 	push	ar5
      0025B8 C0 04            [24] 1330 	push	ar4
      0025BA C0 01            [24] 1331 	push	ar1
      0025BC C0 00            [24] 1332 	push	ar0
      0025BE 12 20 8B         [24] 1333 	lcall	_bang
      0025C1 D0 00            [24] 1334 	pop	ar0
      0025C3 D0 01            [24] 1335 	pop	ar1
      0025C5 D0 04            [24] 1336 	pop	ar4
      0025C7 D0 05            [24] 1337 	pop	ar5
      0025C9 D0 06            [24] 1338 	pop	ar6
      0025CB                       1339 00111$:
                                   1340 ;	walk.c:125: g[t.r][t.c] = 0xaa;
      0025CB C0 05            [24] 1341 	push	ar5
      0025CD C0 00            [24] 1342 	push	ar0
      0025CF A8 06            [24] 1343 	mov	r0,ar6
      0025D1 86 03            [24] 1344 	mov	ar3,@r0
      0025D3 08               [12] 1345 	inc	r0
      0025D4 86 07            [24] 1346 	mov	ar7,@r0
      0025D6 D0 00            [24] 1347 	pop	ar0
      0025D8 C0 06            [24] 1348 	push	ar6
      0025DA C0 05            [24] 1349 	push	ar5
      0025DC C0 04            [24] 1350 	push	ar4
      0025DE C0 01            [24] 1351 	push	ar1
      0025E0 C0 00            [24] 1352 	push	ar0
      0025E2 C0 03            [24] 1353 	push	ar3
      0025E4 C0 07            [24] 1354 	push	ar7
      0025E6 90 00 C6         [24] 1355 	mov	dptr,#0x00c6
      0025E9 12 2E 35         [24] 1356 	lcall	__mulint
      0025EC AB 82            [24] 1357 	mov	r3,dpl
      0025EE AF 83            [24] 1358 	mov	r7,dph
      0025F0 15 81            [12] 1359 	dec	sp
      0025F2 15 81            [12] 1360 	dec	sp
      0025F4 D0 00            [24] 1361 	pop	ar0
      0025F6 D0 01            [24] 1362 	pop	ar1
      0025F8 D0 04            [24] 1363 	pop	ar4
      0025FA D0 05            [24] 1364 	pop	ar5
      0025FC D0 06            [24] 1365 	pop	ar6
      0025FE EB               [12] 1366 	mov	a,r3
      0025FF 24 00            [12] 1367 	add	a,#_g
      002601 FB               [12] 1368 	mov	r3,a
      002602 EF               [12] 1369 	mov	a,r7
      002603 34 45            [12] 1370 	addc	a,#(_g >> 8)
      002605 FF               [12] 1371 	mov	r7,a
      002606 C0 00            [24] 1372 	push	ar0
      002608 A8 04            [24] 1373 	mov	r0,ar4
      00260A 86 02            [24] 1374 	mov	ar2,@r0
      00260C 08               [12] 1375 	inc	r0
      00260D 86 05            [24] 1376 	mov	ar5,@r0
      00260F EA               [12] 1377 	mov	a,r2
      002610 2B               [12] 1378 	add	a,r3
      002611 F5 82            [12] 1379 	mov	dpl,a
      002613 ED               [12] 1380 	mov	a,r5
      002614 3F               [12] 1381 	addc	a,r7
      002615 F5 83            [12] 1382 	mov	dph,a
      002617 74 AA            [12] 1383 	mov	a,#0xaa
      002619 F0               [24] 1384 	movx	@dptr,a
                                   1385 ;	walk.c:126: printf("\033[%d;%dHo", t.r + 4, t.c + 1);
      00261A A8 04            [24] 1386 	mov	r0,ar4
      00261C 86 05            [24] 1387 	mov	ar5,@r0
      00261E 08               [12] 1388 	inc	r0
      00261F 86 07            [24] 1389 	mov	ar7,@r0
      002621 D0 00            [24] 1390 	pop	ar0
      002623 0D               [12] 1391 	inc	r5
      002624 BD 00 01         [24] 1392 	cjne	r5,#0x00,00163$
      002627 0F               [12] 1393 	inc	r7
      002628                       1394 00163$:
      002628 C0 00            [24] 1395 	push	ar0
      00262A A8 06            [24] 1396 	mov	r0,ar6
      00262C 86 02            [24] 1397 	mov	ar2,@r0
      00262E 08               [12] 1398 	inc	r0
      00262F 86 03            [24] 1399 	mov	ar3,@r0
      002631 D0 00            [24] 1400 	pop	ar0
      002633 74 04            [12] 1401 	mov	a,#0x04
      002635 2A               [12] 1402 	add	a,r2
      002636 FA               [12] 1403 	mov	r2,a
      002637 E4               [12] 1404 	clr	a
      002638 3B               [12] 1405 	addc	a,r3
      002639 FB               [12] 1406 	mov	r3,a
      00263A C0 06            [24] 1407 	push	ar6
      00263C C0 05            [24] 1408 	push	ar5
      00263E C0 04            [24] 1409 	push	ar4
      002640 C0 01            [24] 1410 	push	ar1
      002642 C0 00            [24] 1411 	push	ar0
      002644 C0 05            [24] 1412 	push	ar5
      002646 C0 07            [24] 1413 	push	ar7
      002648 C0 02            [24] 1414 	push	ar2
      00264A C0 03            [24] 1415 	push	ar3
      00264C 74 4D            [12] 1416 	mov	a,#___str_3
      00264E C0 E0            [24] 1417 	push	acc
      002650 74 43            [12] 1418 	mov	a,#(___str_3 >> 8)
      002652 C0 E0            [24] 1419 	push	acc
      002654 74 80            [12] 1420 	mov	a,#0x80
      002656 C0 E0            [24] 1421 	push	acc
      002658 12 2F EC         [24] 1422 	lcall	_printf
      00265B E5 81            [12] 1423 	mov	a,sp
      00265D 24 F9            [12] 1424 	add	a,#0xf9
      00265F F5 81            [12] 1425 	mov	sp,a
      002661 D0 00            [24] 1426 	pop	ar0
      002663 D0 01            [24] 1427 	pop	ar1
      002665 D0 04            [24] 1428 	pop	ar4
      002667 D0 05            [24] 1429 	pop	ar5
      002669 D0 06            [24] 1430 	pop	ar6
                                   1431 ;	walk.c:132: return;
      00266B D0 05            [24] 1432 	pop	ar5
                                   1433 ;	walk.c:126: printf("\033[%d;%dHo", t.r + 4, t.c + 1);
      00266D                       1434 00117$:
                                   1435 ;	walk.c:122: for (j = 0; j < NMAX; j++)
      00266D C0 00            [24] 1436 	push	ar0
      00266F E5 10            [12] 1437 	mov	a,_bp
      002671 24 0D            [12] 1438 	add	a,#0x0d
      002673 F8               [12] 1439 	mov	r0,a
      002674 06               [12] 1440 	inc	@r0
      002675 E5 10            [12] 1441 	mov	a,_bp
      002677 24 0D            [12] 1442 	add	a,#0x0d
      002679 F8               [12] 1443 	mov	r0,a
      00267A B6 10 00         [24] 1444 	cjne	@r0,#0x10,00164$
      00267D                       1445 00164$:
      00267D D0 00            [24] 1446 	pop	ar0
      00267F 50 03            [24] 1447 	jnc	00165$
      002681 02 25 1E         [24] 1448 	ljmp	00116$
      002684                       1449 00165$:
                                   1450 ;	walk.c:129: goto process;
      002684 02 23 CC         [24] 1451 	ljmp	00103$
                                   1452 ;	walk.c:131: term:
      002687                       1453 00115$:
                                   1454 ;	walk.c:132: return;
                                   1455 ;	walk.c:133: }
      002687 85 10 81         [24] 1456 	mov	sp,_bp
      00268A D0 10            [24] 1457 	pop	_bp
      00268C 22               [24] 1458 	ret
                                   1459 ;------------------------------------------------------------
                                   1460 ;Allocation info for local variables in function 'main'
                                   1461 ;------------------------------------------------------------
                                   1462 ;initial                   Allocated to stack - _bp +5
                                   1463 ;N                         Allocated to stack - _bp +9
                                   1464 ;i                         Allocated to stack - _bp +11
                                   1465 ;j                         Allocated to registers r2 r6 
                                   1466 ;sloc0                     Allocated to stack - _bp +1
                                   1467 ;sloc1                     Allocated to stack - _bp +3
                                   1468 ;sloc2                     Allocated to stack - _bp +15
                                   1469 ;R                         Allocated with name '_main_R_65536_63'
                                   1470 ;------------------------------------------------------------
                                   1471 ;	walk.c:135: int main(void) {
                                   1472 ;	-----------------------------------------
                                   1473 ;	 function main
                                   1474 ;	-----------------------------------------
      00268D                       1475 _main:
      00268D C0 10            [24] 1476 	push	_bp
      00268F E5 81            [12] 1477 	mov	a,sp
      002691 F5 10            [12] 1478 	mov	_bp,a
      002693 24 0C            [12] 1479 	add	a,#0x0c
      002695 F5 81            [12] 1480 	mov	sp,a
                                   1481 ;	walk.c:141: i0 = 1;
      002697 78 11            [12] 1482 	mov	r0,#_i0
      002699 76 01            [12] 1483 	mov	@r0,#0x01
                                   1484 ;	walk.c:143: IT0 = 1;
                                   1485 ;	assignBit
      00269B D2 88            [12] 1486 	setb	_IT0
                                   1487 ;	walk.c:144: EX0 = 1;
                                   1488 ;	assignBit
      00269D D2 A8            [12] 1489 	setb	_EX0
                                   1490 ;	walk.c:145: EA = 1;
                                   1491 ;	assignBit
      00269F D2 AF            [12] 1492 	setb	_EA
                                   1493 ;	walk.c:147: srand(*R);
      0026A1 90 FE A4         [24] 1494 	mov	dptr,#_main_R_65536_63
      0026A4 E0               [24] 1495 	movx	a,@dptr
      0026A5 FE               [12] 1496 	mov	r6,a
      0026A6 A3               [24] 1497 	inc	dptr
      0026A7 E0               [24] 1498 	movx	a,@dptr
      0026A8 FF               [12] 1499 	mov	r7,a
      0026A9 8E 82            [24] 1500 	mov	dpl,r6
      0026AB 8F 83            [24] 1501 	mov	dph,r7
      0026AD E0               [24] 1502 	movx	a,@dptr
      0026AE FE               [12] 1503 	mov	r6,a
      0026AF A3               [24] 1504 	inc	dptr
      0026B0 E0               [24] 1505 	movx	a,@dptr
      0026B1 FF               [12] 1506 	mov	r7,a
      0026B2 8E 82            [24] 1507 	mov	dpl,r6
      0026B4 8F 83            [24] 1508 	mov	dph,r7
      0026B6 12 2E 01         [24] 1509 	lcall	_srand
                                   1510 ;	walk.c:148: qinit();
      0026B9 12 2B B9         [24] 1511 	lcall	_qinit
                                   1512 ;	walk.c:150: puts("\033[2J\033[?25l");
      0026BC 90 43 57         [24] 1513 	mov	dptr,#___str_4
      0026BF 75 F0 80         [24] 1514 	mov	b,#0x80
      0026C2 12 2F 66         [24] 1515 	lcall	_puts
                                   1516 ;	walk.c:152: while (i0) {
      0026C5 E5 10            [12] 1517 	mov	a,_bp
      0026C7 24 05            [12] 1518 	add	a,#0x05
      0026C9 F9               [12] 1519 	mov	r1,a
      0026CA FF               [12] 1520 	mov	r7,a
      0026CB E5 10            [12] 1521 	mov	a,_bp
      0026CD 24 09            [12] 1522 	add	a,#0x09
      0026CF F8               [12] 1523 	mov	r0,a
      0026D0 E4               [12] 1524 	clr	a
      0026D1 F6               [12] 1525 	mov	@r0,a
      0026D2 08               [12] 1526 	inc	r0
      0026D3 F6               [12] 1527 	mov	@r0,a
      0026D4                       1528 00109$:
      0026D4 78 11            [12] 1529 	mov	r0,#_i0
      0026D6 E6               [12] 1530 	mov	a,@r0
      0026D7 70 03            [24] 1531 	jnz	00193$
      0026D9 02 2B A2         [24] 1532 	ljmp	00111$
      0026DC                       1533 00193$:
                                   1534 ;	walk.c:153: for (i = 0; i < ROWS; i++)
      0026DC 7B 00            [12] 1535 	mov	r3,#0x00
      0026DE 7C 00            [12] 1536 	mov	r4,#0x00
      0026E0 A8 10            [24] 1537 	mov	r0,_bp
      0026E2 08               [12] 1538 	inc	r0
      0026E3 E4               [12] 1539 	clr	a
      0026E4 F6               [12] 1540 	mov	@r0,a
      0026E5 08               [12] 1541 	inc	r0
      0026E6 F6               [12] 1542 	mov	@r0,a
                                   1543 ;	walk.c:154: for (j = 0; j < COLS; j++)
      0026E7                       1544 00127$:
      0026E7 A8 10            [24] 1545 	mov	r0,_bp
      0026E9 08               [12] 1546 	inc	r0
      0026EA C0 01            [24] 1547 	push	ar1
      0026EC E5 10            [12] 1548 	mov	a,_bp
      0026EE 24 03            [12] 1549 	add	a,#0x03
      0026F0 F9               [12] 1550 	mov	r1,a
      0026F1 E6               [12] 1551 	mov	a,@r0
      0026F2 24 00            [12] 1552 	add	a,#_g
      0026F4 F7               [12] 1553 	mov	@r1,a
      0026F5 08               [12] 1554 	inc	r0
      0026F6 E6               [12] 1555 	mov	a,@r0
      0026F7 34 45            [12] 1556 	addc	a,#(_g >> 8)
      0026F9 09               [12] 1557 	inc	r1
      0026FA F7               [12] 1558 	mov	@r1,a
      0026FB D0 01            [24] 1559 	pop	ar1
      0026FD 7A 00            [12] 1560 	mov	r2,#0x00
      0026FF 7E 00            [12] 1561 	mov	r6,#0x00
      002701                       1562 00112$:
                                   1563 ;	walk.c:155: g[i][j] = 0x55;
      002701 E5 10            [12] 1564 	mov	a,_bp
      002703 24 03            [12] 1565 	add	a,#0x03
      002705 F8               [12] 1566 	mov	r0,a
      002706 EA               [12] 1567 	mov	a,r2
      002707 26               [12] 1568 	add	a,@r0
      002708 F5 82            [12] 1569 	mov	dpl,a
      00270A EE               [12] 1570 	mov	a,r6
      00270B 08               [12] 1571 	inc	r0
      00270C 36               [12] 1572 	addc	a,@r0
      00270D F5 83            [12] 1573 	mov	dph,a
      00270F 74 55            [12] 1574 	mov	a,#0x55
      002711 F0               [24] 1575 	movx	@dptr,a
                                   1576 ;	walk.c:154: for (j = 0; j < COLS; j++)
      002712 0A               [12] 1577 	inc	r2
      002713 BA 00 01         [24] 1578 	cjne	r2,#0x00,00194$
      002716 0E               [12] 1579 	inc	r6
      002717                       1580 00194$:
      002717 C3               [12] 1581 	clr	c
      002718 EA               [12] 1582 	mov	a,r2
      002719 94 C6            [12] 1583 	subb	a,#0xc6
      00271B EE               [12] 1584 	mov	a,r6
      00271C 64 80            [12] 1585 	xrl	a,#0x80
      00271E 94 80            [12] 1586 	subb	a,#0x80
      002720 40 DF            [24] 1587 	jc	00112$
                                   1588 ;	walk.c:153: for (i = 0; i < ROWS; i++)
      002722 A8 10            [24] 1589 	mov	r0,_bp
      002724 08               [12] 1590 	inc	r0
      002725 74 C6            [12] 1591 	mov	a,#0xc6
      002727 26               [12] 1592 	add	a,@r0
      002728 F6               [12] 1593 	mov	@r0,a
      002729 E4               [12] 1594 	clr	a
      00272A 08               [12] 1595 	inc	r0
      00272B 36               [12] 1596 	addc	a,@r0
      00272C F6               [12] 1597 	mov	@r0,a
      00272D 0B               [12] 1598 	inc	r3
      00272E BB 00 01         [24] 1599 	cjne	r3,#0x00,00196$
      002731 0C               [12] 1600 	inc	r4
      002732                       1601 00196$:
      002732 C3               [12] 1602 	clr	c
      002733 EB               [12] 1603 	mov	a,r3
      002734 94 30            [12] 1604 	subb	a,#0x30
      002736 EC               [12] 1605 	mov	a,r4
      002737 64 80            [12] 1606 	xrl	a,#0x80
      002739 94 80            [12] 1607 	subb	a,#0x80
      00273B 40 AA            [24] 1608 	jc	00127$
                                   1609 ;	walk.c:157: initial.r = rand() % ROWS;
      00273D E5 10            [12] 1610 	mov	a,_bp
      00273F 24 05            [12] 1611 	add	a,#0x05
      002741 F8               [12] 1612 	mov	r0,a
      002742 C0 07            [24] 1613 	push	ar7
      002744 C0 01            [24] 1614 	push	ar1
      002746 C0 00            [24] 1615 	push	ar0
      002748 12 2D 3D         [24] 1616 	lcall	_rand
      00274B AD 82            [24] 1617 	mov	r5,dpl
      00274D AE 83            [24] 1618 	mov	r6,dph
      00274F 74 30            [12] 1619 	mov	a,#0x30
      002751 C0 E0            [24] 1620 	push	acc
      002753 E4               [12] 1621 	clr	a
      002754 C0 E0            [24] 1622 	push	acc
      002756 8D 82            [24] 1623 	mov	dpl,r5
      002758 8E 83            [24] 1624 	mov	dph,r6
      00275A 12 30 41         [24] 1625 	lcall	__modsint
      00275D AD 82            [24] 1626 	mov	r5,dpl
      00275F AE 83            [24] 1627 	mov	r6,dph
      002761 15 81            [12] 1628 	dec	sp
      002763 15 81            [12] 1629 	dec	sp
      002765 D0 00            [24] 1630 	pop	ar0
      002767 D0 01            [24] 1631 	pop	ar1
      002769 A6 05            [24] 1632 	mov	@r0,ar5
      00276B 08               [12] 1633 	inc	r0
      00276C A6 06            [24] 1634 	mov	@r0,ar6
      00276E 18               [12] 1635 	dec	r0
                                   1636 ;	walk.c:158: initial.c = rand() % COLS;
      00276F 74 02            [12] 1637 	mov	a,#0x02
      002771 29               [12] 1638 	add	a,r1
      002772 F8               [12] 1639 	mov	r0,a
      002773 C0 01            [24] 1640 	push	ar1
      002775 C0 00            [24] 1641 	push	ar0
      002777 12 2D 3D         [24] 1642 	lcall	_rand
      00277A AD 82            [24] 1643 	mov	r5,dpl
      00277C AE 83            [24] 1644 	mov	r6,dph
      00277E 74 C6            [12] 1645 	mov	a,#0xc6
      002780 C0 E0            [24] 1646 	push	acc
      002782 E4               [12] 1647 	clr	a
      002783 C0 E0            [24] 1648 	push	acc
      002785 8D 82            [24] 1649 	mov	dpl,r5
      002787 8E 83            [24] 1650 	mov	dph,r6
      002789 12 30 41         [24] 1651 	lcall	__modsint
      00278C AD 82            [24] 1652 	mov	r5,dpl
      00278E AE 83            [24] 1653 	mov	r6,dph
      002790 15 81            [12] 1654 	dec	sp
      002792 15 81            [12] 1655 	dec	sp
      002794 D0 00            [24] 1656 	pop	ar0
      002796 A6 05            [24] 1657 	mov	@r0,ar5
      002798 08               [12] 1658 	inc	r0
      002799 A6 06            [24] 1659 	mov	@r0,ar6
      00279B 18               [12] 1660 	dec	r0
                                   1661 ;	walk.c:160: puts("\033[2J\033[?25l");
      00279C 90 43 57         [24] 1662 	mov	dptr,#___str_4
      00279F 75 F0 80         [24] 1663 	mov	b,#0x80
      0027A2 C0 00            [24] 1664 	push	ar0
      0027A4 12 2F 66         [24] 1665 	lcall	_puts
      0027A7 D0 00            [24] 1666 	pop	ar0
      0027A9 D0 01            [24] 1667 	pop	ar1
                                   1668 ;	walk.c:161: printf("\033[1;1H% 8u% 8d% 8d", N, initial.r, initial.c);
      0027AB 86 05            [24] 1669 	mov	ar5,@r0
      0027AD 08               [12] 1670 	inc	r0
      0027AE 86 06            [24] 1671 	mov	ar6,@r0
      0027B0 18               [12] 1672 	dec	r0
      0027B1 87 03            [24] 1673 	mov	ar3,@r1
      0027B3 09               [12] 1674 	inc	r1
      0027B4 87 04            [24] 1675 	mov	ar4,@r1
      0027B6 19               [12] 1676 	dec	r1
      0027B7 C0 01            [24] 1677 	push	ar1
      0027B9 C0 05            [24] 1678 	push	ar5
      0027BB C0 06            [24] 1679 	push	ar6
      0027BD C0 03            [24] 1680 	push	ar3
      0027BF C0 04            [24] 1681 	push	ar4
      0027C1 E5 10            [12] 1682 	mov	a,_bp
      0027C3 24 09            [12] 1683 	add	a,#0x09
      0027C5 F8               [12] 1684 	mov	r0,a
      0027C6 E6               [12] 1685 	mov	a,@r0
      0027C7 C0 E0            [24] 1686 	push	acc
      0027C9 08               [12] 1687 	inc	r0
      0027CA E6               [12] 1688 	mov	a,@r0
      0027CB C0 E0            [24] 1689 	push	acc
      0027CD 74 62            [12] 1690 	mov	a,#___str_5
      0027CF C0 E0            [24] 1691 	push	acc
      0027D1 74 43            [12] 1692 	mov	a,#(___str_5 >> 8)
      0027D3 C0 E0            [24] 1693 	push	acc
      0027D5 74 80            [12] 1694 	mov	a,#0x80
      0027D7 C0 E0            [24] 1695 	push	acc
      0027D9 12 2F EC         [24] 1696 	lcall	_printf
      0027DC E5 81            [12] 1697 	mov	a,sp
      0027DE 24 F7            [12] 1698 	add	a,#0xf7
      0027E0 F5 81            [12] 1699 	mov	sp,a
      0027E2 D0 01            [24] 1700 	pop	ar1
      0027E4 D0 07            [24] 1701 	pop	ar7
                                   1702 ;	walk.c:163: for (i = 0; i < REG; i++) {
      0027E6 E5 10            [12] 1703 	mov	a,_bp
      0027E8 24 0B            [12] 1704 	add	a,#0x0b
      0027EA F8               [12] 1705 	mov	r0,a
      0027EB E4               [12] 1706 	clr	a
      0027EC F6               [12] 1707 	mov	@r0,a
      0027ED 08               [12] 1708 	inc	r0
      0027EE F6               [12] 1709 	mov	@r0,a
      0027EF                       1710 00116$:
                                   1711 ;	walk.c:164: neigh[i].r = neigh_tmpl[i].r * (1 + rand() % 4);
      0027EF C0 07            [24] 1712 	push	ar7
      0027F1 E5 10            [12] 1713 	mov	a,_bp
      0027F3 24 0B            [12] 1714 	add	a,#0x0b
      0027F5 F8               [12] 1715 	mov	r0,a
      0027F6 E6               [12] 1716 	mov	a,@r0
      0027F7 25 E0            [12] 1717 	add	a,acc
      0027F9 FB               [12] 1718 	mov	r3,a
      0027FA 08               [12] 1719 	inc	r0
      0027FB E6               [12] 1720 	mov	a,@r0
      0027FC 33               [12] 1721 	rlc	a
      0027FD FC               [12] 1722 	mov	r4,a
      0027FE EB               [12] 1723 	mov	a,r3
      0027FF 2B               [12] 1724 	add	a,r3
      002800 FB               [12] 1725 	mov	r3,a
      002801 EC               [12] 1726 	mov	a,r4
      002802 33               [12] 1727 	rlc	a
      002803 FC               [12] 1728 	mov	r4,a
      002804 EB               [12] 1729 	mov	a,r3
      002805 24 E6            [12] 1730 	add	a,#_neigh
      002807 FA               [12] 1731 	mov	r2,a
      002808 EC               [12] 1732 	mov	a,r4
      002809 34 FE            [12] 1733 	addc	a,#(_neigh >> 8)
      00280B FF               [12] 1734 	mov	r7,a
      00280C EB               [12] 1735 	mov	a,r3
      00280D 24 A6            [12] 1736 	add	a,#_neigh_tmpl
      00280F F5 82            [12] 1737 	mov	dpl,a
      002811 EC               [12] 1738 	mov	a,r4
      002812 34 FE            [12] 1739 	addc	a,#(_neigh_tmpl >> 8)
      002814 F5 83            [12] 1740 	mov	dph,a
      002816 E5 10            [12] 1741 	mov	a,_bp
      002818 24 03            [12] 1742 	add	a,#0x03
      00281A F8               [12] 1743 	mov	r0,a
      00281B E0               [24] 1744 	movx	a,@dptr
      00281C F6               [12] 1745 	mov	@r0,a
      00281D A3               [24] 1746 	inc	dptr
      00281E E0               [24] 1747 	movx	a,@dptr
      00281F 08               [12] 1748 	inc	r0
      002820 F6               [12] 1749 	mov	@r0,a
      002821 C0 07            [24] 1750 	push	ar7
      002823 C0 04            [24] 1751 	push	ar4
      002825 C0 03            [24] 1752 	push	ar3
      002827 C0 02            [24] 1753 	push	ar2
      002829 C0 01            [24] 1754 	push	ar1
      00282B 12 2D 3D         [24] 1755 	lcall	_rand
      00282E AD 82            [24] 1756 	mov	r5,dpl
      002830 AE 83            [24] 1757 	mov	r6,dph
      002832 74 04            [12] 1758 	mov	a,#0x04
      002834 C0 E0            [24] 1759 	push	acc
      002836 E4               [12] 1760 	clr	a
      002837 C0 E0            [24] 1761 	push	acc
      002839 8D 82            [24] 1762 	mov	dpl,r5
      00283B 8E 83            [24] 1763 	mov	dph,r6
      00283D 12 30 41         [24] 1764 	lcall	__modsint
      002840 AD 82            [24] 1765 	mov	r5,dpl
      002842 AE 83            [24] 1766 	mov	r6,dph
      002844 15 81            [12] 1767 	dec	sp
      002846 15 81            [12] 1768 	dec	sp
      002848 D0 01            [24] 1769 	pop	ar1
      00284A D0 02            [24] 1770 	pop	ar2
      00284C D0 03            [24] 1771 	pop	ar3
      00284E D0 04            [24] 1772 	pop	ar4
      002850 D0 07            [24] 1773 	pop	ar7
      002852 0D               [12] 1774 	inc	r5
      002853 BD 00 01         [24] 1775 	cjne	r5,#0x00,00198$
      002856 0E               [12] 1776 	inc	r6
      002857                       1777 00198$:
      002857 C0 07            [24] 1778 	push	ar7
      002859 C0 04            [24] 1779 	push	ar4
      00285B C0 03            [24] 1780 	push	ar3
      00285D C0 02            [24] 1781 	push	ar2
      00285F C0 01            [24] 1782 	push	ar1
      002861 C0 05            [24] 1783 	push	ar5
      002863 C0 06            [24] 1784 	push	ar6
      002865 E5 10            [12] 1785 	mov	a,_bp
      002867 24 03            [12] 1786 	add	a,#0x03
      002869 F8               [12] 1787 	mov	r0,a
      00286A 86 82            [24] 1788 	mov	dpl,@r0
      00286C 08               [12] 1789 	inc	r0
      00286D 86 83            [24] 1790 	mov	dph,@r0
      00286F 12 2E 35         [24] 1791 	lcall	__mulint
      002872 AD 82            [24] 1792 	mov	r5,dpl
      002874 AE 83            [24] 1793 	mov	r6,dph
      002876 15 81            [12] 1794 	dec	sp
      002878 15 81            [12] 1795 	dec	sp
      00287A D0 01            [24] 1796 	pop	ar1
      00287C D0 02            [24] 1797 	pop	ar2
      00287E D0 03            [24] 1798 	pop	ar3
      002880 D0 04            [24] 1799 	pop	ar4
      002882 D0 07            [24] 1800 	pop	ar7
      002884 8A 82            [24] 1801 	mov	dpl,r2
      002886 8F 83            [24] 1802 	mov	dph,r7
      002888 ED               [12] 1803 	mov	a,r5
      002889 F0               [24] 1804 	movx	@dptr,a
      00288A EE               [12] 1805 	mov	a,r6
      00288B A3               [24] 1806 	inc	dptr
      00288C F0               [24] 1807 	movx	@dptr,a
                                   1808 ;	walk.c:165: neigh[i].c = neigh_tmpl[i].c * (1 + rand() % 4);
      00288D EB               [12] 1809 	mov	a,r3
      00288E 24 E6            [12] 1810 	add	a,#_neigh
      002890 FE               [12] 1811 	mov	r6,a
      002891 EC               [12] 1812 	mov	a,r4
      002892 34 FE            [12] 1813 	addc	a,#(_neigh >> 8)
      002894 FF               [12] 1814 	mov	r7,a
      002895 74 02            [12] 1815 	mov	a,#0x02
      002897 2E               [12] 1816 	add	a,r6
      002898 FA               [12] 1817 	mov	r2,a
      002899 E4               [12] 1818 	clr	a
      00289A 3F               [12] 1819 	addc	a,r7
      00289B FD               [12] 1820 	mov	r5,a
      00289C EB               [12] 1821 	mov	a,r3
      00289D 24 A6            [12] 1822 	add	a,#_neigh_tmpl
      00289F FB               [12] 1823 	mov	r3,a
      0028A0 EC               [12] 1824 	mov	a,r4
      0028A1 34 FE            [12] 1825 	addc	a,#(_neigh_tmpl >> 8)
      0028A3 FC               [12] 1826 	mov	r4,a
      0028A4 8B 82            [24] 1827 	mov	dpl,r3
      0028A6 8C 83            [24] 1828 	mov	dph,r4
      0028A8 A3               [24] 1829 	inc	dptr
      0028A9 A3               [24] 1830 	inc	dptr
      0028AA E5 10            [12] 1831 	mov	a,_bp
      0028AC 24 03            [12] 1832 	add	a,#0x03
      0028AE F8               [12] 1833 	mov	r0,a
      0028AF E0               [24] 1834 	movx	a,@dptr
      0028B0 F6               [12] 1835 	mov	@r0,a
      0028B1 A3               [24] 1836 	inc	dptr
      0028B2 E0               [24] 1837 	movx	a,@dptr
      0028B3 08               [12] 1838 	inc	r0
      0028B4 F6               [12] 1839 	mov	@r0,a
      0028B5 C0 07            [24] 1840 	push	ar7
      0028B7 C0 06            [24] 1841 	push	ar6
      0028B9 C0 05            [24] 1842 	push	ar5
      0028BB C0 02            [24] 1843 	push	ar2
      0028BD C0 01            [24] 1844 	push	ar1
      0028BF 12 2D 3D         [24] 1845 	lcall	_rand
      0028C2 AB 82            [24] 1846 	mov	r3,dpl
      0028C4 AC 83            [24] 1847 	mov	r4,dph
      0028C6 74 04            [12] 1848 	mov	a,#0x04
      0028C8 C0 E0            [24] 1849 	push	acc
      0028CA E4               [12] 1850 	clr	a
      0028CB C0 E0            [24] 1851 	push	acc
      0028CD 8B 82            [24] 1852 	mov	dpl,r3
      0028CF 8C 83            [24] 1853 	mov	dph,r4
      0028D1 12 30 41         [24] 1854 	lcall	__modsint
      0028D4 AB 82            [24] 1855 	mov	r3,dpl
      0028D6 AC 83            [24] 1856 	mov	r4,dph
      0028D8 15 81            [12] 1857 	dec	sp
      0028DA 15 81            [12] 1858 	dec	sp
      0028DC D0 01            [24] 1859 	pop	ar1
      0028DE D0 02            [24] 1860 	pop	ar2
      0028E0 D0 05            [24] 1861 	pop	ar5
      0028E2 D0 06            [24] 1862 	pop	ar6
      0028E4 D0 07            [24] 1863 	pop	ar7
      0028E6 0B               [12] 1864 	inc	r3
      0028E7 BB 00 01         [24] 1865 	cjne	r3,#0x00,00199$
      0028EA 0C               [12] 1866 	inc	r4
      0028EB                       1867 00199$:
      0028EB C0 07            [24] 1868 	push	ar7
      0028ED C0 06            [24] 1869 	push	ar6
      0028EF C0 05            [24] 1870 	push	ar5
      0028F1 C0 02            [24] 1871 	push	ar2
      0028F3 C0 01            [24] 1872 	push	ar1
      0028F5 C0 03            [24] 1873 	push	ar3
      0028F7 C0 04            [24] 1874 	push	ar4
      0028F9 E5 10            [12] 1875 	mov	a,_bp
      0028FB 24 03            [12] 1876 	add	a,#0x03
      0028FD F8               [12] 1877 	mov	r0,a
      0028FE 86 82            [24] 1878 	mov	dpl,@r0
      002900 08               [12] 1879 	inc	r0
      002901 86 83            [24] 1880 	mov	dph,@r0
      002903 12 2E 35         [24] 1881 	lcall	__mulint
      002906 AB 82            [24] 1882 	mov	r3,dpl
      002908 AC 83            [24] 1883 	mov	r4,dph
      00290A 15 81            [12] 1884 	dec	sp
      00290C 15 81            [12] 1885 	dec	sp
      00290E D0 01            [24] 1886 	pop	ar1
      002910 D0 02            [24] 1887 	pop	ar2
      002912 D0 05            [24] 1888 	pop	ar5
      002914 D0 06            [24] 1889 	pop	ar6
      002916 D0 07            [24] 1890 	pop	ar7
      002918 8A 82            [24] 1891 	mov	dpl,r2
      00291A 8D 83            [24] 1892 	mov	dph,r5
      00291C EB               [12] 1893 	mov	a,r3
      00291D F0               [24] 1894 	movx	@dptr,a
      00291E EC               [12] 1895 	mov	a,r4
      00291F A3               [24] 1896 	inc	dptr
      002920 F0               [24] 1897 	movx	@dptr,a
                                   1898 ;	walk.c:166: printf("% 8d% 8d", neigh[i].r, neigh[i].c);
      002921 8E 82            [24] 1899 	mov	dpl,r6
      002923 8F 83            [24] 1900 	mov	dph,r7
      002925 E0               [24] 1901 	movx	a,@dptr
      002926 FE               [12] 1902 	mov	r6,a
      002927 A3               [24] 1903 	inc	dptr
      002928 E0               [24] 1904 	movx	a,@dptr
      002929 FF               [12] 1905 	mov	r7,a
      00292A C0 07            [24] 1906 	push	ar7
      00292C C0 01            [24] 1907 	push	ar1
      00292E C0 03            [24] 1908 	push	ar3
      002930 C0 04            [24] 1909 	push	ar4
      002932 C0 06            [24] 1910 	push	ar6
      002934 C0 07            [24] 1911 	push	ar7
      002936 74 75            [12] 1912 	mov	a,#___str_6
      002938 C0 E0            [24] 1913 	push	acc
      00293A 74 43            [12] 1914 	mov	a,#(___str_6 >> 8)
      00293C C0 E0            [24] 1915 	push	acc
      00293E 74 80            [12] 1916 	mov	a,#0x80
      002940 C0 E0            [24] 1917 	push	acc
      002942 12 2F EC         [24] 1918 	lcall	_printf
      002945 E5 81            [12] 1919 	mov	a,sp
      002947 24 F9            [12] 1920 	add	a,#0xf9
      002949 F5 81            [12] 1921 	mov	sp,a
      00294B D0 01            [24] 1922 	pop	ar1
      00294D D0 07            [24] 1923 	pop	ar7
                                   1924 ;	walk.c:163: for (i = 0; i < REG; i++) {
      00294F E5 10            [12] 1925 	mov	a,_bp
      002951 24 0B            [12] 1926 	add	a,#0x0b
      002953 F8               [12] 1927 	mov	r0,a
      002954 06               [12] 1928 	inc	@r0
      002955 B6 00 02         [24] 1929 	cjne	@r0,#0x00,00200$
      002958 08               [12] 1930 	inc	r0
      002959 06               [12] 1931 	inc	@r0
      00295A                       1932 00200$:
      00295A E5 10            [12] 1933 	mov	a,_bp
      00295C 24 0B            [12] 1934 	add	a,#0x0b
      00295E F8               [12] 1935 	mov	r0,a
      00295F C3               [12] 1936 	clr	c
      002960 E6               [12] 1937 	mov	a,@r0
      002961 94 04            [12] 1938 	subb	a,#0x04
      002963 08               [12] 1939 	inc	r0
      002964 E6               [12] 1940 	mov	a,@r0
      002965 64 80            [12] 1941 	xrl	a,#0x80
      002967 94 80            [12] 1942 	subb	a,#0x80
      002969 D0 07            [24] 1943 	pop	ar7
      00296B 50 03            [24] 1944 	jnc	00201$
      00296D 02 27 EF         [24] 1945 	ljmp	00116$
      002970                       1946 00201$:
                                   1947 ;	walk.c:169: for (i = REG; i < (2 * REG); i++) {
      002970 E5 10            [12] 1948 	mov	a,_bp
      002972 24 0B            [12] 1949 	add	a,#0x0b
      002974 F8               [12] 1950 	mov	r0,a
      002975 76 04            [12] 1951 	mov	@r0,#0x04
      002977 08               [12] 1952 	inc	r0
      002978 76 00            [12] 1953 	mov	@r0,#0x00
      00297A                       1954 00118$:
                                   1955 ;	walk.c:170: neigh[i].r = neigh_tmpl[i].r * (1 + rand() % 4);
      00297A C0 07            [24] 1956 	push	ar7
      00297C E5 10            [12] 1957 	mov	a,_bp
      00297E 24 0B            [12] 1958 	add	a,#0x0b
      002980 F8               [12] 1959 	mov	r0,a
      002981 E6               [12] 1960 	mov	a,@r0
      002982 25 E0            [12] 1961 	add	a,acc
      002984 FB               [12] 1962 	mov	r3,a
      002985 08               [12] 1963 	inc	r0
      002986 E6               [12] 1964 	mov	a,@r0
      002987 33               [12] 1965 	rlc	a
      002988 FC               [12] 1966 	mov	r4,a
      002989 EB               [12] 1967 	mov	a,r3
      00298A 2B               [12] 1968 	add	a,r3
      00298B FB               [12] 1969 	mov	r3,a
      00298C EC               [12] 1970 	mov	a,r4
      00298D 33               [12] 1971 	rlc	a
      00298E FC               [12] 1972 	mov	r4,a
      00298F EB               [12] 1973 	mov	a,r3
      002990 24 E6            [12] 1974 	add	a,#_neigh
      002992 FA               [12] 1975 	mov	r2,a
      002993 EC               [12] 1976 	mov	a,r4
      002994 34 FE            [12] 1977 	addc	a,#(_neigh >> 8)
      002996 FF               [12] 1978 	mov	r7,a
      002997 EB               [12] 1979 	mov	a,r3
      002998 24 A6            [12] 1980 	add	a,#_neigh_tmpl
      00299A F5 82            [12] 1981 	mov	dpl,a
      00299C EC               [12] 1982 	mov	a,r4
      00299D 34 FE            [12] 1983 	addc	a,#(_neigh_tmpl >> 8)
      00299F F5 83            [12] 1984 	mov	dph,a
      0029A1 E5 10            [12] 1985 	mov	a,_bp
      0029A3 24 03            [12] 1986 	add	a,#0x03
      0029A5 F8               [12] 1987 	mov	r0,a
      0029A6 E0               [24] 1988 	movx	a,@dptr
      0029A7 F6               [12] 1989 	mov	@r0,a
      0029A8 A3               [24] 1990 	inc	dptr
      0029A9 E0               [24] 1991 	movx	a,@dptr
      0029AA 08               [12] 1992 	inc	r0
      0029AB F6               [12] 1993 	mov	@r0,a
      0029AC C0 07            [24] 1994 	push	ar7
      0029AE C0 04            [24] 1995 	push	ar4
      0029B0 C0 03            [24] 1996 	push	ar3
      0029B2 C0 02            [24] 1997 	push	ar2
      0029B4 C0 01            [24] 1998 	push	ar1
      0029B6 12 2D 3D         [24] 1999 	lcall	_rand
      0029B9 AD 82            [24] 2000 	mov	r5,dpl
      0029BB AE 83            [24] 2001 	mov	r6,dph
      0029BD 74 04            [12] 2002 	mov	a,#0x04
      0029BF C0 E0            [24] 2003 	push	acc
      0029C1 E4               [12] 2004 	clr	a
      0029C2 C0 E0            [24] 2005 	push	acc
      0029C4 8D 82            [24] 2006 	mov	dpl,r5
      0029C6 8E 83            [24] 2007 	mov	dph,r6
      0029C8 12 30 41         [24] 2008 	lcall	__modsint
      0029CB AD 82            [24] 2009 	mov	r5,dpl
      0029CD AE 83            [24] 2010 	mov	r6,dph
      0029CF 15 81            [12] 2011 	dec	sp
      0029D1 15 81            [12] 2012 	dec	sp
      0029D3 D0 01            [24] 2013 	pop	ar1
      0029D5 D0 02            [24] 2014 	pop	ar2
      0029D7 D0 03            [24] 2015 	pop	ar3
      0029D9 D0 04            [24] 2016 	pop	ar4
      0029DB D0 07            [24] 2017 	pop	ar7
      0029DD 0D               [12] 2018 	inc	r5
      0029DE BD 00 01         [24] 2019 	cjne	r5,#0x00,00202$
      0029E1 0E               [12] 2020 	inc	r6
      0029E2                       2021 00202$:
      0029E2 C0 07            [24] 2022 	push	ar7
      0029E4 C0 04            [24] 2023 	push	ar4
      0029E6 C0 03            [24] 2024 	push	ar3
      0029E8 C0 02            [24] 2025 	push	ar2
      0029EA C0 01            [24] 2026 	push	ar1
      0029EC C0 05            [24] 2027 	push	ar5
      0029EE C0 06            [24] 2028 	push	ar6
      0029F0 E5 10            [12] 2029 	mov	a,_bp
      0029F2 24 03            [12] 2030 	add	a,#0x03
      0029F4 F8               [12] 2031 	mov	r0,a
      0029F5 86 82            [24] 2032 	mov	dpl,@r0
      0029F7 08               [12] 2033 	inc	r0
      0029F8 86 83            [24] 2034 	mov	dph,@r0
      0029FA 12 2E 35         [24] 2035 	lcall	__mulint
      0029FD AD 82            [24] 2036 	mov	r5,dpl
      0029FF AE 83            [24] 2037 	mov	r6,dph
      002A01 15 81            [12] 2038 	dec	sp
      002A03 15 81            [12] 2039 	dec	sp
      002A05 D0 01            [24] 2040 	pop	ar1
      002A07 D0 02            [24] 2041 	pop	ar2
      002A09 D0 03            [24] 2042 	pop	ar3
      002A0B D0 04            [24] 2043 	pop	ar4
      002A0D D0 07            [24] 2044 	pop	ar7
      002A0F 8A 82            [24] 2045 	mov	dpl,r2
      002A11 8F 83            [24] 2046 	mov	dph,r7
      002A13 ED               [12] 2047 	mov	a,r5
      002A14 F0               [24] 2048 	movx	@dptr,a
      002A15 EE               [12] 2049 	mov	a,r6
      002A16 A3               [24] 2050 	inc	dptr
      002A17 F0               [24] 2051 	movx	@dptr,a
                                   2052 ;	walk.c:171: neigh[i].c = neigh_tmpl[i].c * (1 + rand() % 4);
      002A18 EB               [12] 2053 	mov	a,r3
      002A19 24 E6            [12] 2054 	add	a,#_neigh
      002A1B FE               [12] 2055 	mov	r6,a
      002A1C EC               [12] 2056 	mov	a,r4
      002A1D 34 FE            [12] 2057 	addc	a,#(_neigh >> 8)
      002A1F FF               [12] 2058 	mov	r7,a
      002A20 74 02            [12] 2059 	mov	a,#0x02
      002A22 2E               [12] 2060 	add	a,r6
      002A23 FA               [12] 2061 	mov	r2,a
      002A24 E4               [12] 2062 	clr	a
      002A25 3F               [12] 2063 	addc	a,r7
      002A26 FD               [12] 2064 	mov	r5,a
      002A27 EB               [12] 2065 	mov	a,r3
      002A28 24 A6            [12] 2066 	add	a,#_neigh_tmpl
      002A2A FB               [12] 2067 	mov	r3,a
      002A2B EC               [12] 2068 	mov	a,r4
      002A2C 34 FE            [12] 2069 	addc	a,#(_neigh_tmpl >> 8)
      002A2E FC               [12] 2070 	mov	r4,a
      002A2F 8B 82            [24] 2071 	mov	dpl,r3
      002A31 8C 83            [24] 2072 	mov	dph,r4
      002A33 A3               [24] 2073 	inc	dptr
      002A34 A3               [24] 2074 	inc	dptr
      002A35 E5 10            [12] 2075 	mov	a,_bp
      002A37 24 03            [12] 2076 	add	a,#0x03
      002A39 F8               [12] 2077 	mov	r0,a
      002A3A E0               [24] 2078 	movx	a,@dptr
      002A3B F6               [12] 2079 	mov	@r0,a
      002A3C A3               [24] 2080 	inc	dptr
      002A3D E0               [24] 2081 	movx	a,@dptr
      002A3E 08               [12] 2082 	inc	r0
      002A3F F6               [12] 2083 	mov	@r0,a
      002A40 C0 07            [24] 2084 	push	ar7
      002A42 C0 06            [24] 2085 	push	ar6
      002A44 C0 05            [24] 2086 	push	ar5
      002A46 C0 02            [24] 2087 	push	ar2
      002A48 C0 01            [24] 2088 	push	ar1
      002A4A 12 2D 3D         [24] 2089 	lcall	_rand
      002A4D AB 82            [24] 2090 	mov	r3,dpl
      002A4F AC 83            [24] 2091 	mov	r4,dph
      002A51 74 04            [12] 2092 	mov	a,#0x04
      002A53 C0 E0            [24] 2093 	push	acc
      002A55 E4               [12] 2094 	clr	a
      002A56 C0 E0            [24] 2095 	push	acc
      002A58 8B 82            [24] 2096 	mov	dpl,r3
      002A5A 8C 83            [24] 2097 	mov	dph,r4
      002A5C 12 30 41         [24] 2098 	lcall	__modsint
      002A5F AB 82            [24] 2099 	mov	r3,dpl
      002A61 AC 83            [24] 2100 	mov	r4,dph
      002A63 15 81            [12] 2101 	dec	sp
      002A65 15 81            [12] 2102 	dec	sp
      002A67 D0 01            [24] 2103 	pop	ar1
      002A69 D0 02            [24] 2104 	pop	ar2
      002A6B D0 05            [24] 2105 	pop	ar5
      002A6D D0 06            [24] 2106 	pop	ar6
      002A6F D0 07            [24] 2107 	pop	ar7
      002A71 0B               [12] 2108 	inc	r3
      002A72 BB 00 01         [24] 2109 	cjne	r3,#0x00,00203$
      002A75 0C               [12] 2110 	inc	r4
      002A76                       2111 00203$:
      002A76 C0 07            [24] 2112 	push	ar7
      002A78 C0 06            [24] 2113 	push	ar6
      002A7A C0 05            [24] 2114 	push	ar5
      002A7C C0 02            [24] 2115 	push	ar2
      002A7E C0 01            [24] 2116 	push	ar1
      002A80 C0 03            [24] 2117 	push	ar3
      002A82 C0 04            [24] 2118 	push	ar4
      002A84 E5 10            [12] 2119 	mov	a,_bp
      002A86 24 03            [12] 2120 	add	a,#0x03
      002A88 F8               [12] 2121 	mov	r0,a
      002A89 86 82            [24] 2122 	mov	dpl,@r0
      002A8B 08               [12] 2123 	inc	r0
      002A8C 86 83            [24] 2124 	mov	dph,@r0
      002A8E 12 2E 35         [24] 2125 	lcall	__mulint
      002A91 AB 82            [24] 2126 	mov	r3,dpl
      002A93 AC 83            [24] 2127 	mov	r4,dph
      002A95 15 81            [12] 2128 	dec	sp
      002A97 15 81            [12] 2129 	dec	sp
      002A99 D0 01            [24] 2130 	pop	ar1
      002A9B D0 02            [24] 2131 	pop	ar2
      002A9D D0 05            [24] 2132 	pop	ar5
      002A9F D0 06            [24] 2133 	pop	ar6
      002AA1 D0 07            [24] 2134 	pop	ar7
      002AA3 8A 82            [24] 2135 	mov	dpl,r2
      002AA5 8D 83            [24] 2136 	mov	dph,r5
      002AA7 EB               [12] 2137 	mov	a,r3
      002AA8 F0               [24] 2138 	movx	@dptr,a
      002AA9 EC               [12] 2139 	mov	a,r4
      002AAA A3               [24] 2140 	inc	dptr
      002AAB F0               [24] 2141 	movx	@dptr,a
                                   2142 ;	walk.c:172: printf("% 8d% 8d", neigh[i].r, neigh[i].c);
      002AAC 8E 82            [24] 2143 	mov	dpl,r6
      002AAE 8F 83            [24] 2144 	mov	dph,r7
      002AB0 E0               [24] 2145 	movx	a,@dptr
      002AB1 FE               [12] 2146 	mov	r6,a
      002AB2 A3               [24] 2147 	inc	dptr
      002AB3 E0               [24] 2148 	movx	a,@dptr
      002AB4 FF               [12] 2149 	mov	r7,a
      002AB5 C0 07            [24] 2150 	push	ar7
      002AB7 C0 01            [24] 2151 	push	ar1
      002AB9 C0 03            [24] 2152 	push	ar3
      002ABB C0 04            [24] 2153 	push	ar4
      002ABD C0 06            [24] 2154 	push	ar6
      002ABF C0 07            [24] 2155 	push	ar7
      002AC1 74 75            [12] 2156 	mov	a,#___str_6
      002AC3 C0 E0            [24] 2157 	push	acc
      002AC5 74 43            [12] 2158 	mov	a,#(___str_6 >> 8)
      002AC7 C0 E0            [24] 2159 	push	acc
      002AC9 74 80            [12] 2160 	mov	a,#0x80
      002ACB C0 E0            [24] 2161 	push	acc
      002ACD 12 2F EC         [24] 2162 	lcall	_printf
      002AD0 E5 81            [12] 2163 	mov	a,sp
      002AD2 24 F9            [12] 2164 	add	a,#0xf9
      002AD4 F5 81            [12] 2165 	mov	sp,a
      002AD6 D0 01            [24] 2166 	pop	ar1
      002AD8 D0 07            [24] 2167 	pop	ar7
                                   2168 ;	walk.c:169: for (i = REG; i < (2 * REG); i++) {
      002ADA E5 10            [12] 2169 	mov	a,_bp
      002ADC 24 0B            [12] 2170 	add	a,#0x0b
      002ADE F8               [12] 2171 	mov	r0,a
      002ADF 06               [12] 2172 	inc	@r0
      002AE0 B6 00 02         [24] 2173 	cjne	@r0,#0x00,00204$
      002AE3 08               [12] 2174 	inc	r0
      002AE4 06               [12] 2175 	inc	@r0
      002AE5                       2176 00204$:
      002AE5 E5 10            [12] 2177 	mov	a,_bp
      002AE7 24 0B            [12] 2178 	add	a,#0x0b
      002AE9 F8               [12] 2179 	mov	r0,a
      002AEA C3               [12] 2180 	clr	c
      002AEB E6               [12] 2181 	mov	a,@r0
      002AEC 94 08            [12] 2182 	subb	a,#0x08
      002AEE 08               [12] 2183 	inc	r0
      002AEF E6               [12] 2184 	mov	a,@r0
      002AF0 64 80            [12] 2185 	xrl	a,#0x80
      002AF2 94 80            [12] 2186 	subb	a,#0x80
      002AF4 D0 07            [24] 2187 	pop	ar7
      002AF6 50 03            [24] 2188 	jnc	00205$
      002AF8 02 29 7A         [24] 2189 	ljmp	00118$
      002AFB                       2190 00205$:
                                   2191 ;	walk.c:175: walk(&initial);
      002AFB 8F 04            [24] 2192 	mov	ar4,r7
      002AFD 7D 00            [12] 2193 	mov	r5,#0x00
      002AFF 7E 40            [12] 2194 	mov	r6,#0x40
      002B01 8C 82            [24] 2195 	mov	dpl,r4
      002B03 8D 83            [24] 2196 	mov	dph,r5
      002B05 8E F0            [24] 2197 	mov	b,r6
      002B07 C0 07            [24] 2198 	push	ar7
      002B09 C0 01            [24] 2199 	push	ar1
      002B0B 12 23 24         [24] 2200 	lcall	_walk
      002B0E D0 01            [24] 2201 	pop	ar1
      002B10 D0 07            [24] 2202 	pop	ar7
                                   2203 ;	walk.c:177: for (i = 0; i < ROWS; i++)
      002B12 E5 10            [12] 2204 	mov	a,_bp
      002B14 24 0B            [12] 2205 	add	a,#0x0b
      002B16 F8               [12] 2206 	mov	r0,a
      002B17 E4               [12] 2207 	clr	a
      002B18 F6               [12] 2208 	mov	@r0,a
      002B19 08               [12] 2209 	inc	r0
      002B1A F6               [12] 2210 	mov	@r0,a
      002B1B 7B 00            [12] 2211 	mov	r3,#0x00
      002B1D 7C 00            [12] 2212 	mov	r4,#0x00
                                   2213 ;	walk.c:178: for (j = 0; j < COLS; j++)
      002B1F                       2214 00136$:
      002B1F E5 10            [12] 2215 	mov	a,_bp
      002B21 24 03            [12] 2216 	add	a,#0x03
      002B23 F8               [12] 2217 	mov	r0,a
      002B24 EB               [12] 2218 	mov	a,r3
      002B25 24 00            [12] 2219 	add	a,#_g
      002B27 F6               [12] 2220 	mov	@r0,a
      002B28 EC               [12] 2221 	mov	a,r4
      002B29 34 45            [12] 2222 	addc	a,#(_g >> 8)
      002B2B 08               [12] 2223 	inc	r0
      002B2C F6               [12] 2224 	mov	@r0,a
      002B2D 7A 00            [12] 2225 	mov	r2,#0x00
      002B2F 7E 00            [12] 2226 	mov	r6,#0x00
      002B31                       2227 00120$:
                                   2228 ;	walk.c:179: if (g[i][j] != 0xaa) bang();
      002B31 E5 10            [12] 2229 	mov	a,_bp
      002B33 24 03            [12] 2230 	add	a,#0x03
      002B35 F8               [12] 2231 	mov	r0,a
      002B36 EA               [12] 2232 	mov	a,r2
      002B37 26               [12] 2233 	add	a,@r0
      002B38 F5 82            [12] 2234 	mov	dpl,a
      002B3A EE               [12] 2235 	mov	a,r6
      002B3B 08               [12] 2236 	inc	r0
      002B3C 36               [12] 2237 	addc	a,@r0
      002B3D F5 83            [12] 2238 	mov	dph,a
      002B3F E0               [24] 2239 	movx	a,@dptr
      002B40 FD               [12] 2240 	mov	r5,a
      002B41 BD AA 02         [24] 2241 	cjne	r5,#0xaa,00206$
      002B44 80 1B            [24] 2242 	sjmp	00121$
      002B46                       2243 00206$:
      002B46 C0 07            [24] 2244 	push	ar7
      002B48 C0 06            [24] 2245 	push	ar6
      002B4A C0 04            [24] 2246 	push	ar4
      002B4C C0 03            [24] 2247 	push	ar3
      002B4E C0 02            [24] 2248 	push	ar2
      002B50 C0 01            [24] 2249 	push	ar1
      002B52 12 20 8B         [24] 2250 	lcall	_bang
      002B55 D0 01            [24] 2251 	pop	ar1
      002B57 D0 02            [24] 2252 	pop	ar2
      002B59 D0 03            [24] 2253 	pop	ar3
      002B5B D0 04            [24] 2254 	pop	ar4
      002B5D D0 06            [24] 2255 	pop	ar6
      002B5F D0 07            [24] 2256 	pop	ar7
      002B61                       2257 00121$:
                                   2258 ;	walk.c:178: for (j = 0; j < COLS; j++)
      002B61 0A               [12] 2259 	inc	r2
      002B62 BA 00 01         [24] 2260 	cjne	r2,#0x00,00207$
      002B65 0E               [12] 2261 	inc	r6
      002B66                       2262 00207$:
      002B66 C3               [12] 2263 	clr	c
      002B67 EA               [12] 2264 	mov	a,r2
      002B68 94 C6            [12] 2265 	subb	a,#0xc6
      002B6A EE               [12] 2266 	mov	a,r6
      002B6B 64 80            [12] 2267 	xrl	a,#0x80
      002B6D 94 80            [12] 2268 	subb	a,#0x80
      002B6F 40 C0            [24] 2269 	jc	00120$
                                   2270 ;	walk.c:177: for (i = 0; i < ROWS; i++)
      002B71 74 C6            [12] 2271 	mov	a,#0xc6
      002B73 2B               [12] 2272 	add	a,r3
      002B74 FB               [12] 2273 	mov	r3,a
      002B75 E4               [12] 2274 	clr	a
      002B76 3C               [12] 2275 	addc	a,r4
      002B77 FC               [12] 2276 	mov	r4,a
      002B78 E5 10            [12] 2277 	mov	a,_bp
      002B7A 24 0B            [12] 2278 	add	a,#0x0b
      002B7C F8               [12] 2279 	mov	r0,a
      002B7D 06               [12] 2280 	inc	@r0
      002B7E B6 00 02         [24] 2281 	cjne	@r0,#0x00,00209$
      002B81 08               [12] 2282 	inc	r0
      002B82 06               [12] 2283 	inc	@r0
      002B83                       2284 00209$:
      002B83 E5 10            [12] 2285 	mov	a,_bp
      002B85 24 0B            [12] 2286 	add	a,#0x0b
      002B87 F8               [12] 2287 	mov	r0,a
      002B88 C3               [12] 2288 	clr	c
      002B89 E6               [12] 2289 	mov	a,@r0
      002B8A 94 30            [12] 2290 	subb	a,#0x30
      002B8C 08               [12] 2291 	inc	r0
      002B8D E6               [12] 2292 	mov	a,@r0
      002B8E 64 80            [12] 2293 	xrl	a,#0x80
      002B90 94 80            [12] 2294 	subb	a,#0x80
      002B92 40 8B            [24] 2295 	jc	00136$
                                   2296 ;	walk.c:181: N++;
      002B94 E5 10            [12] 2297 	mov	a,_bp
      002B96 24 09            [12] 2298 	add	a,#0x09
      002B98 F8               [12] 2299 	mov	r0,a
      002B99 06               [12] 2300 	inc	@r0
      002B9A B6 00 02         [24] 2301 	cjne	@r0,#0x00,00211$
      002B9D 08               [12] 2302 	inc	r0
      002B9E 06               [12] 2303 	inc	@r0
      002B9F                       2304 00211$:
      002B9F 02 26 D4         [24] 2305 	ljmp	00109$
      002BA2                       2306 00111$:
                                   2307 ;	walk.c:184: EA = 0;
                                   2308 ;	assignBit
      002BA2 C2 AF            [12] 2309 	clr	_EA
                                   2310 ;	walk.c:186: puts("\033[2J\033[?25h");
      002BA4 90 43 7E         [24] 2311 	mov	dptr,#___str_7
      002BA7 75 F0 80         [24] 2312 	mov	b,#0x80
      002BAA 12 2F 66         [24] 2313 	lcall	_puts
                                   2314 ;	walk.c:190: __endasm;
      002BAD 02 00 00         [24] 2315 	ljmp	0
                                   2316 ;	walk.c:192: return 0;
      002BB0 90 00 00         [24] 2317 	mov	dptr,#0x0000
                                   2318 ;	walk.c:193: }
      002BB3 85 10 81         [24] 2319 	mov	sp,_bp
      002BB6 D0 10            [24] 2320 	pop	_bp
      002BB8 22               [24] 2321 	ret
                                   2322 ;------------------------------------------------------------
                                   2323 ;Allocation info for local variables in function 'qinit'
                                   2324 ;------------------------------------------------------------
                                   2325 ;	walk.c:195: static void qinit(void) {
                                   2326 ;	-----------------------------------------
                                   2327 ;	 function qinit
                                   2328 ;	-----------------------------------------
      002BB9                       2329 _qinit:
                                   2330 ;	walk.c:196: hp = tp = 0;
      002BB9 90 FE A2         [24] 2331 	mov	dptr,#_tp
      002BBC E4               [12] 2332 	clr	a
      002BBD F0               [24] 2333 	movx	@dptr,a
      002BBE A3               [24] 2334 	inc	dptr
      002BBF F0               [24] 2335 	movx	@dptr,a
      002BC0 90 FE A0         [24] 2336 	mov	dptr,#_hp
      002BC3 F0               [24] 2337 	movx	@dptr,a
      002BC4 A3               [24] 2338 	inc	dptr
      002BC5 F0               [24] 2339 	movx	@dptr,a
                                   2340 ;	walk.c:197: return;
                                   2341 ;	walk.c:198: }
      002BC6 22               [24] 2342 	ret
                                   2343 ;------------------------------------------------------------
                                   2344 ;Allocation info for local variables in function 'qadd'
                                   2345 ;------------------------------------------------------------
                                   2346 ;t                         Allocated to registers r7 r5 r6 
                                   2347 ;sloc0                     Allocated to stack - _bp +1
                                   2348 ;sloc1                     Allocated to stack - _bp +3
                                   2349 ;sloc2                     Allocated to stack - _bp +5
                                   2350 ;sloc3                     Allocated to stack - _bp +10
                                   2351 ;------------------------------------------------------------
                                   2352 ;	walk.c:200: static int qadd(struct node *t) {
                                   2353 ;	-----------------------------------------
                                   2354 ;	 function qadd
                                   2355 ;	-----------------------------------------
      002BC7                       2356 _qadd:
      002BC7 C0 10            [24] 2357 	push	_bp
      002BC9 E5 81            [12] 2358 	mov	a,sp
      002BCB F5 10            [12] 2359 	mov	_bp,a
      002BCD 24 06            [12] 2360 	add	a,#0x06
      002BCF F5 81            [12] 2361 	mov	sp,a
      002BD1 AF 82            [24] 2362 	mov	r7,dpl
      002BD3 AD 83            [24] 2363 	mov	r5,dph
      002BD5 AE F0            [24] 2364 	mov	r6,b
                                   2365 ;	walk.c:201: if (((hp + 1) % QMAX) == tp) return 0;
      002BD7 90 FE A0         [24] 2366 	mov	dptr,#_hp
      002BDA E0               [24] 2367 	movx	a,@dptr
      002BDB FB               [12] 2368 	mov	r3,a
      002BDC A3               [24] 2369 	inc	dptr
      002BDD E0               [24] 2370 	movx	a,@dptr
      002BDE FC               [12] 2371 	mov	r4,a
      002BDF A8 10            [24] 2372 	mov	r0,_bp
      002BE1 08               [12] 2373 	inc	r0
      002BE2 74 01            [12] 2374 	mov	a,#0x01
      002BE4 2B               [12] 2375 	add	a,r3
      002BE5 F6               [12] 2376 	mov	@r0,a
      002BE6 E4               [12] 2377 	clr	a
      002BE7 3C               [12] 2378 	addc	a,r4
      002BE8 08               [12] 2379 	inc	r0
      002BE9 F6               [12] 2380 	mov	@r0,a
      002BEA C0 07            [24] 2381 	push	ar7
      002BEC C0 06            [24] 2382 	push	ar6
      002BEE C0 05            [24] 2383 	push	ar5
      002BF0 C0 04            [24] 2384 	push	ar4
      002BF2 C0 03            [24] 2385 	push	ar3
      002BF4 74 20            [12] 2386 	mov	a,#0x20
      002BF6 C0 E0            [24] 2387 	push	acc
      002BF8 74 25            [12] 2388 	mov	a,#0x25
      002BFA C0 E0            [24] 2389 	push	acc
      002BFC A8 10            [24] 2390 	mov	r0,_bp
      002BFE 08               [12] 2391 	inc	r0
      002BFF 86 82            [24] 2392 	mov	dpl,@r0
      002C01 08               [12] 2393 	inc	r0
      002C02 86 83            [24] 2394 	mov	dph,@r0
      002C04 12 30 41         [24] 2395 	lcall	__modsint
      002C07 A8 10            [24] 2396 	mov	r0,_bp
      002C09 08               [12] 2397 	inc	r0
      002C0A 08               [12] 2398 	inc	r0
      002C0B 08               [12] 2399 	inc	r0
      002C0C A6 82            [24] 2400 	mov	@r0,dpl
      002C0E 08               [12] 2401 	inc	r0
      002C0F A6 83            [24] 2402 	mov	@r0,dph
      002C11 15 81            [12] 2403 	dec	sp
      002C13 15 81            [12] 2404 	dec	sp
      002C15 D0 03            [24] 2405 	pop	ar3
      002C17 D0 04            [24] 2406 	pop	ar4
      002C19 D0 05            [24] 2407 	pop	ar5
      002C1B D0 06            [24] 2408 	pop	ar6
      002C1D D0 07            [24] 2409 	pop	ar7
      002C1F 90 FE A2         [24] 2410 	mov	dptr,#_tp
      002C22 E5 10            [12] 2411 	mov	a,_bp
      002C24 24 05            [12] 2412 	add	a,#0x05
      002C26 F8               [12] 2413 	mov	r0,a
      002C27 E0               [24] 2414 	movx	a,@dptr
      002C28 F6               [12] 2415 	mov	@r0,a
      002C29 A3               [24] 2416 	inc	dptr
      002C2A E0               [24] 2417 	movx	a,@dptr
      002C2B 08               [12] 2418 	inc	r0
      002C2C F6               [12] 2419 	mov	@r0,a
      002C2D E5 10            [12] 2420 	mov	a,_bp
      002C2F 24 03            [12] 2421 	add	a,#0x03
      002C31 F8               [12] 2422 	mov	r0,a
      002C32 E5 10            [12] 2423 	mov	a,_bp
      002C34 24 05            [12] 2424 	add	a,#0x05
      002C36 F9               [12] 2425 	mov	r1,a
      002C37 86 F0            [24] 2426 	mov	b,@r0
      002C39 E7               [12] 2427 	mov	a,@r1
      002C3A B5 F0 0A         [24] 2428 	cjne	a,b,00109$
      002C3D 08               [12] 2429 	inc	r0
      002C3E 86 F0            [24] 2430 	mov	b,@r0
      002C40 09               [12] 2431 	inc	r1
      002C41 E7               [12] 2432 	mov	a,@r1
      002C42 B5 F0 02         [24] 2433 	cjne	a,b,00109$
      002C45 80 02            [24] 2434 	sjmp	00110$
      002C47                       2435 00109$:
      002C47 80 05            [24] 2436 	sjmp	00102$
      002C49                       2437 00110$:
      002C49 90 00 00         [24] 2438 	mov	dptr,#0x0000
      002C4C 80 65            [24] 2439 	sjmp	00103$
      002C4E                       2440 00102$:
                                   2441 ;	walk.c:202: queue[hp] = *t;
      002C4E 8F 02            [24] 2442 	mov	ar2,r7
      002C50 8E 07            [24] 2443 	mov	ar7,r6
      002C52 EB               [12] 2444 	mov	a,r3
      002C53 2B               [12] 2445 	add	a,r3
      002C54 FB               [12] 2446 	mov	r3,a
      002C55 EC               [12] 2447 	mov	a,r4
      002C56 33               [12] 2448 	rlc	a
      002C57 FC               [12] 2449 	mov	r4,a
      002C58 EB               [12] 2450 	mov	a,r3
      002C59 2B               [12] 2451 	add	a,r3
      002C5A FB               [12] 2452 	mov	r3,a
      002C5B EC               [12] 2453 	mov	a,r4
      002C5C 33               [12] 2454 	rlc	a
      002C5D FC               [12] 2455 	mov	r4,a
      002C5E EB               [12] 2456 	mov	a,r3
      002C5F 24 20            [12] 2457 	add	a,#_queue
      002C61 FB               [12] 2458 	mov	r3,a
      002C62 EC               [12] 2459 	mov	a,r4
      002C63 34 6A            [12] 2460 	addc	a,#(_queue >> 8)
      002C65 FC               [12] 2461 	mov	r4,a
      002C66 7E 00            [12] 2462 	mov	r6,#0x00
      002C68 74 04            [12] 2463 	mov	a,#0x04
      002C6A C0 E0            [24] 2464 	push	acc
      002C6C E4               [12] 2465 	clr	a
      002C6D C0 E0            [24] 2466 	push	acc
      002C6F C0 02            [24] 2467 	push	ar2
      002C71 C0 05            [24] 2468 	push	ar5
      002C73 C0 07            [24] 2469 	push	ar7
      002C75 8B 82            [24] 2470 	mov	dpl,r3
      002C77 8C 83            [24] 2471 	mov	dph,r4
      002C79 8E F0            [24] 2472 	mov	b,r6
      002C7B 12 2E D3         [24] 2473 	lcall	___memcpy
      002C7E E5 81            [12] 2474 	mov	a,sp
      002C80 24 FB            [12] 2475 	add	a,#0xfb
      002C82 F5 81            [12] 2476 	mov	sp,a
                                   2477 ;	walk.c:203: hp = (hp + 1) % QMAX;
      002C84 90 FE A0         [24] 2478 	mov	dptr,#_hp
      002C87 E0               [24] 2479 	movx	a,@dptr
      002C88 FD               [12] 2480 	mov	r5,a
      002C89 A3               [24] 2481 	inc	dptr
      002C8A E0               [24] 2482 	movx	a,@dptr
      002C8B FE               [12] 2483 	mov	r6,a
      002C8C 0D               [12] 2484 	inc	r5
      002C8D BD 00 01         [24] 2485 	cjne	r5,#0x00,00111$
      002C90 0E               [12] 2486 	inc	r6
      002C91                       2487 00111$:
      002C91 74 20            [12] 2488 	mov	a,#0x20
      002C93 C0 E0            [24] 2489 	push	acc
      002C95 74 25            [12] 2490 	mov	a,#0x25
      002C97 C0 E0            [24] 2491 	push	acc
      002C99 8D 82            [24] 2492 	mov	dpl,r5
      002C9B 8E 83            [24] 2493 	mov	dph,r6
      002C9D 12 30 41         [24] 2494 	lcall	__modsint
      002CA0 AD 82            [24] 2495 	mov	r5,dpl
      002CA2 AE 83            [24] 2496 	mov	r6,dph
      002CA4 15 81            [12] 2497 	dec	sp
      002CA6 15 81            [12] 2498 	dec	sp
      002CA8 90 FE A0         [24] 2499 	mov	dptr,#_hp
      002CAB ED               [12] 2500 	mov	a,r5
      002CAC F0               [24] 2501 	movx	@dptr,a
      002CAD EE               [12] 2502 	mov	a,r6
      002CAE A3               [24] 2503 	inc	dptr
      002CAF F0               [24] 2504 	movx	@dptr,a
                                   2505 ;	walk.c:204: return 1;
      002CB0 90 00 01         [24] 2506 	mov	dptr,#0x0001
      002CB3                       2507 00103$:
                                   2508 ;	walk.c:205: }
      002CB3 85 10 81         [24] 2509 	mov	sp,_bp
      002CB6 D0 10            [24] 2510 	pop	_bp
      002CB8 22               [24] 2511 	ret
                                   2512 ;------------------------------------------------------------
                                   2513 ;Allocation info for local variables in function 'qget'
                                   2514 ;------------------------------------------------------------
                                   2515 ;t                         Allocated to registers r5 r6 r7 
                                   2516 ;------------------------------------------------------------
                                   2517 ;	walk.c:207: static int qget(struct node *t) {
                                   2518 ;	-----------------------------------------
                                   2519 ;	 function qget
                                   2520 ;	-----------------------------------------
      002CB9                       2521 _qget:
      002CB9 AD 82            [24] 2522 	mov	r5,dpl
      002CBB AE 83            [24] 2523 	mov	r6,dph
      002CBD AF F0            [24] 2524 	mov	r7,b
                                   2525 ;	walk.c:208: if (hp == tp) return 0;
      002CBF 90 FE A0         [24] 2526 	mov	dptr,#_hp
      002CC2 E0               [24] 2527 	movx	a,@dptr
      002CC3 FB               [12] 2528 	mov	r3,a
      002CC4 A3               [24] 2529 	inc	dptr
      002CC5 E0               [24] 2530 	movx	a,@dptr
      002CC6 FC               [12] 2531 	mov	r4,a
      002CC7 90 FE A2         [24] 2532 	mov	dptr,#_tp
      002CCA E0               [24] 2533 	movx	a,@dptr
      002CCB F9               [12] 2534 	mov	r1,a
      002CCC A3               [24] 2535 	inc	dptr
      002CCD E0               [24] 2536 	movx	a,@dptr
      002CCE FA               [12] 2537 	mov	r2,a
      002CCF EB               [12] 2538 	mov	a,r3
      002CD0 B5 01 08         [24] 2539 	cjne	a,ar1,00102$
      002CD3 EC               [12] 2540 	mov	a,r4
      002CD4 B5 02 04         [24] 2541 	cjne	a,ar2,00102$
      002CD7 90 00 00         [24] 2542 	mov	dptr,#0x0000
      002CDA 22               [24] 2543 	ret
      002CDB                       2544 00102$:
                                   2545 ;	walk.c:209: *t = queue[tp];
      002CDB E9               [12] 2546 	mov	a,r1
      002CDC 29               [12] 2547 	add	a,r1
      002CDD F9               [12] 2548 	mov	r1,a
      002CDE EA               [12] 2549 	mov	a,r2
      002CDF 33               [12] 2550 	rlc	a
      002CE0 FA               [12] 2551 	mov	r2,a
      002CE1 E9               [12] 2552 	mov	a,r1
      002CE2 29               [12] 2553 	add	a,r1
      002CE3 F9               [12] 2554 	mov	r1,a
      002CE4 EA               [12] 2555 	mov	a,r2
      002CE5 33               [12] 2556 	rlc	a
      002CE6 FA               [12] 2557 	mov	r2,a
      002CE7 E9               [12] 2558 	mov	a,r1
      002CE8 24 20            [12] 2559 	add	a,#_queue
      002CEA F9               [12] 2560 	mov	r1,a
      002CEB EA               [12] 2561 	mov	a,r2
      002CEC 34 6A            [12] 2562 	addc	a,#(_queue >> 8)
      002CEE FA               [12] 2563 	mov	r2,a
      002CEF 7C 00            [12] 2564 	mov	r4,#0x00
      002CF1 74 04            [12] 2565 	mov	a,#0x04
      002CF3 C0 E0            [24] 2566 	push	acc
      002CF5 E4               [12] 2567 	clr	a
      002CF6 C0 E0            [24] 2568 	push	acc
      002CF8 C0 01            [24] 2569 	push	ar1
      002CFA C0 02            [24] 2570 	push	ar2
      002CFC C0 04            [24] 2571 	push	ar4
      002CFE 8D 82            [24] 2572 	mov	dpl,r5
      002D00 8E 83            [24] 2573 	mov	dph,r6
      002D02 8F F0            [24] 2574 	mov	b,r7
      002D04 12 2E D3         [24] 2575 	lcall	___memcpy
      002D07 E5 81            [12] 2576 	mov	a,sp
      002D09 24 FB            [12] 2577 	add	a,#0xfb
      002D0B F5 81            [12] 2578 	mov	sp,a
                                   2579 ;	walk.c:210: tp = (tp + 1) % QMAX;
      002D0D 90 FE A2         [24] 2580 	mov	dptr,#_tp
      002D10 E0               [24] 2581 	movx	a,@dptr
      002D11 FE               [12] 2582 	mov	r6,a
      002D12 A3               [24] 2583 	inc	dptr
      002D13 E0               [24] 2584 	movx	a,@dptr
      002D14 FF               [12] 2585 	mov	r7,a
      002D15 0E               [12] 2586 	inc	r6
      002D16 BE 00 01         [24] 2587 	cjne	r6,#0x00,00111$
      002D19 0F               [12] 2588 	inc	r7
      002D1A                       2589 00111$:
      002D1A 74 20            [12] 2590 	mov	a,#0x20
      002D1C C0 E0            [24] 2591 	push	acc
      002D1E 74 25            [12] 2592 	mov	a,#0x25
      002D20 C0 E0            [24] 2593 	push	acc
      002D22 8E 82            [24] 2594 	mov	dpl,r6
      002D24 8F 83            [24] 2595 	mov	dph,r7
      002D26 12 30 41         [24] 2596 	lcall	__modsint
      002D29 AE 82            [24] 2597 	mov	r6,dpl
      002D2B AF 83            [24] 2598 	mov	r7,dph
      002D2D 15 81            [12] 2599 	dec	sp
      002D2F 15 81            [12] 2600 	dec	sp
      002D31 90 FE A2         [24] 2601 	mov	dptr,#_tp
      002D34 EE               [12] 2602 	mov	a,r6
      002D35 F0               [24] 2603 	movx	@dptr,a
      002D36 EF               [12] 2604 	mov	a,r7
      002D37 A3               [24] 2605 	inc	dptr
      002D38 F0               [24] 2606 	movx	@dptr,a
                                   2607 ;	walk.c:211: return 1;
      002D39 90 00 01         [24] 2608 	mov	dptr,#0x0001
                                   2609 ;	walk.c:212: }
      002D3C 22               [24] 2610 	ret
                                   2611 	.area CSEG    (CODE)
                                   2612 	.area CONST   (CODE)
                                   2613 	.area CONST   (CODE)
      00431F                       2614 ___str_0:
      00431F 4D 65 6D 6F 72 79 20  2615 	.ascii "Memory error"
             65 72 72 6F 72
      00432B 00                    2616 	.db 0x00
                                   2617 	.area CSEG    (CODE)
                                   2618 	.area CONST   (CODE)
      00432C                       2619 ___str_1:
      00432C 1B                    2620 	.db 0x1b
      00432D 5B 25 64 3B 25 64 48  2621 	.ascii "[%d;%dH."
             2E
      004335 00                    2622 	.db 0x00
                                   2623 	.area CSEG    (CODE)
                                   2624 	.area CONST   (CODE)
      004336                       2625 ___str_2:
      004336 1B                    2626 	.db 0x1b
      004337 5B 32 3B 31 48 25 20  2627 	.ascii "[2;1H% 8d% 8d% 8d% 8d"
             38 64 25 20 38 64 25
             20 38 64 25 20 38 64
      00434C 00                    2628 	.db 0x00
                                   2629 	.area CSEG    (CODE)
                                   2630 	.area CONST   (CODE)
      00434D                       2631 ___str_3:
      00434D 1B                    2632 	.db 0x1b
      00434E 5B 25 64 3B 25 64 48  2633 	.ascii "[%d;%dHo"
             6F
      004356 00                    2634 	.db 0x00
                                   2635 	.area CSEG    (CODE)
                                   2636 	.area CONST   (CODE)
      004357                       2637 ___str_4:
      004357 1B                    2638 	.db 0x1b
      004358 5B 32 4A              2639 	.ascii "[2J"
      00435B 1B                    2640 	.db 0x1b
      00435C 5B 3F 32 35 6C        2641 	.ascii "[?25l"
      004361 00                    2642 	.db 0x00
                                   2643 	.area CSEG    (CODE)
                                   2644 	.area CONST   (CODE)
      004362                       2645 ___str_5:
      004362 1B                    2646 	.db 0x1b
      004363 5B 31 3B 31 48 25 20  2647 	.ascii "[1;1H% 8u% 8d% 8d"
             38 75 25 20 38 64 25
             20 38 64
      004374 00                    2648 	.db 0x00
                                   2649 	.area CSEG    (CODE)
                                   2650 	.area CONST   (CODE)
      004375                       2651 ___str_6:
      004375 25 20 38 64 25 20 38  2652 	.ascii "% 8d% 8d"
             64
      00437D 00                    2653 	.db 0x00
                                   2654 	.area CSEG    (CODE)
                                   2655 	.area CONST   (CODE)
      00437E                       2656 ___str_7:
      00437E 1B                    2657 	.db 0x1b
      00437F 5B 32 4A              2658 	.ascii "[2J"
      004382 1B                    2659 	.db 0x1b
      004383 5B 3F 32 35 68        2660 	.ascii "[?25h"
      004388 00                    2661 	.db 0x00
                                   2662 	.area CSEG    (CODE)
                                   2663 	.area XINIT   (CODE)
      004394                       2664 __xinit__neigh_tmpl:
      004394 FF FF                 2665 	.byte #0xff, #0xff	; -1
      004396 01 00                 2666 	.byte #0x01, #0x00	;  1
      004398 FF FF                 2667 	.byte #0xff, #0xff	; -1
      00439A FF FF                 2668 	.byte #0xff, #0xff	; -1
      00439C 01 00                 2669 	.byte #0x01, #0x00	;  1
      00439E FF FF                 2670 	.byte #0xff, #0xff	; -1
      0043A0 01 00                 2671 	.byte #0x01, #0x00	;  1
      0043A2 01 00                 2672 	.byte #0x01, #0x00	;  1
      0043A4 FF FF                 2673 	.byte #0xff, #0xff	; -1
      0043A6 00 00                 2674 	.byte #0x00, #0x00	;  0
      0043A8 00 00                 2675 	.byte #0x00, #0x00	;  0
      0043AA FF FF                 2676 	.byte #0xff, #0xff	; -1
      0043AC 01 00                 2677 	.byte #0x01, #0x00	;  1
      0043AE 00 00                 2678 	.byte #0x00, #0x00	;  0
      0043B0 00 00                 2679 	.byte #0x00, #0x00	;  0
      0043B2 01 00                 2680 	.byte #0x01, #0x00	;  1
      0043B4 FF FF                 2681 	.byte #0xff, #0xff	; -1
      0043B6 01 00                 2682 	.byte #0x01, #0x00	;  1
      0043B8 FF FF                 2683 	.byte #0xff, #0xff	; -1
      0043BA FF FF                 2684 	.byte #0xff, #0xff	; -1
      0043BC 01 00                 2685 	.byte #0x01, #0x00	;  1
      0043BE FF FF                 2686 	.byte #0xff, #0xff	; -1
      0043C0 01 00                 2687 	.byte #0x01, #0x00	;  1
      0043C2 01 00                 2688 	.byte #0x01, #0x00	;  1
      0043C4 FF FF                 2689 	.byte #0xff, #0xff	; -1
      0043C6 00 00                 2690 	.byte #0x00, #0x00	;  0
      0043C8 00 00                 2691 	.byte #0x00, #0x00	;  0
      0043CA FF FF                 2692 	.byte #0xff, #0xff	; -1
      0043CC 01 00                 2693 	.byte #0x01, #0x00	;  1
      0043CE 00 00                 2694 	.byte #0x00, #0x00	;  0
      0043D0 00 00                 2695 	.byte #0x00, #0x00	;  0
      0043D2 01 00                 2696 	.byte #0x01, #0x00	;  1
      0043D4                       2697 __xinit__neigh:
      0043D4 FF FF                 2698 	.byte #0xff, #0xff	; -1
      0043D6 01 00                 2699 	.byte #0x01, #0x00	;  1
      0043D8 FF FF                 2700 	.byte #0xff, #0xff	; -1
      0043DA FF FF                 2701 	.byte #0xff, #0xff	; -1
      0043DC 01 00                 2702 	.byte #0x01, #0x00	;  1
      0043DE FF FF                 2703 	.byte #0xff, #0xff	; -1
      0043E0 01 00                 2704 	.byte #0x01, #0x00	;  1
      0043E2 01 00                 2705 	.byte #0x01, #0x00	;  1
      0043E4 FF FF                 2706 	.byte #0xff, #0xff	; -1
      0043E6 00 00                 2707 	.byte #0x00, #0x00	;  0
      0043E8 00 00                 2708 	.byte #0x00, #0x00	;  0
      0043EA FF FF                 2709 	.byte #0xff, #0xff	; -1
      0043EC 01 00                 2710 	.byte #0x01, #0x00	;  1
      0043EE 00 00                 2711 	.byte #0x00, #0x00	;  0
      0043F0 00 00                 2712 	.byte #0x00, #0x00	;  0
      0043F2 01 00                 2713 	.byte #0x01, #0x00	;  1
      0043F4 FF FF                 2714 	.byte #0xff, #0xff	; -1
      0043F6 01 00                 2715 	.byte #0x01, #0x00	;  1
      0043F8 FF FF                 2716 	.byte #0xff, #0xff	; -1
      0043FA FF FF                 2717 	.byte #0xff, #0xff	; -1
      0043FC 01 00                 2718 	.byte #0x01, #0x00	;  1
      0043FE FF FF                 2719 	.byte #0xff, #0xff	; -1
      004400 01 00                 2720 	.byte #0x01, #0x00	;  1
      004402 01 00                 2721 	.byte #0x01, #0x00	;  1
      004404 FF FF                 2722 	.byte #0xff, #0xff	; -1
      004406 00 00                 2723 	.byte #0x00, #0x00	;  0
      004408 00 00                 2724 	.byte #0x00, #0x00	;  0
      00440A FF FF                 2725 	.byte #0xff, #0xff	; -1
      00440C 01 00                 2726 	.byte #0x01, #0x00	;  1
      00440E 00 00                 2727 	.byte #0x00, #0x00	;  0
      004410 00 00                 2728 	.byte #0x00, #0x00	;  0
      004412 01 00                 2729 	.byte #0x01, #0x00	;  1
                                   2730 	.area CABS    (ABS,CODE)
