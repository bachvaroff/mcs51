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
      004200                        319 _g:
      004200                        320 	.ds 9696
      0067E0                        321 _stack:
      0067E0                        322 	.ds 38784
      00FF60                        323 _sp:
      00FF60                        324 	.ds 2
      00FF62                        325 _main_R_65536_64:
      00FF62                        326 	.ds 2
                                    327 ;--------------------------------------------------------
                                    328 ; absolute external ram data
                                    329 ;--------------------------------------------------------
                                    330 	.area XABS    (ABS,XDATA)
                                    331 ;--------------------------------------------------------
                                    332 ; external initialized ram data
                                    333 ;--------------------------------------------------------
                                    334 	.area XISEG   (XDATA)
      00FF64                        335 _neigh_tmpl:
      00FF64                        336 	.ds 64
      00FFA4                        337 _neigh:
      00FFA4                        338 	.ds 64
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
      002003 02 20 7C         [24]  355 	ljmp	_int0
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
                                    369 ;------------------------------------------------------------
                                    370 ;Allocation info for local variables in function 'main'
                                    371 ;------------------------------------------------------------
                                    372 ;initial                   Allocated to stack - _bp +5
                                    373 ;N                         Allocated to stack - _bp +9
                                    374 ;i                         Allocated to stack - _bp +11
                                    375 ;j                         Allocated to registers r2 r6 
                                    376 ;sloc0                     Allocated to stack - _bp +1
                                    377 ;sloc1                     Allocated to stack - _bp +3
                                    378 ;sloc2                     Allocated to stack - _bp +15
                                    379 ;R                         Allocated with name '_main_R_65536_64'
                                    380 ;------------------------------------------------------------
                                    381 ;	walk.c:142: static volatile __xdata int *R = (__xdata int *)0xfffe;
      002062 90 FF 62         [24]  382 	mov	dptr,#_main_R_65536_64
      002065 74 FE            [12]  383 	mov	a,#0xfe
      002067 F0               [24]  384 	movx	@dptr,a
      002068 04               [12]  385 	inc	a
      002069 A3               [24]  386 	inc	dptr
      00206A F0               [24]  387 	movx	@dptr,a
                                    388 	.area GSFINAL (CODE)
      00206B 02 20 06         [24]  389 	ljmp	__sdcc_program_startup
                                    390 ;--------------------------------------------------------
                                    391 ; Home
                                    392 ;--------------------------------------------------------
                                    393 	.area HOME    (CODE)
                                    394 	.area HOME    (CODE)
      002006                        395 __sdcc_program_startup:
      002006 02 26 AD         [24]  396 	ljmp	_main
                                    397 ;	return from main will return to caller
                                    398 ;--------------------------------------------------------
                                    399 ; code
                                    400 ;--------------------------------------------------------
                                    401 	.area CSEG    (CODE)
                                    402 ;------------------------------------------------------------
                                    403 ;Allocation info for local variables in function 'putchar'
                                    404 ;------------------------------------------------------------
                                    405 ;c                         Allocated to registers 
                                    406 ;------------------------------------------------------------
                                    407 ;	walk.c:8: int putchar(int c) __naked {
                                    408 ;	-----------------------------------------
                                    409 ;	 function putchar
                                    410 ;	-----------------------------------------
      00206E                        411 _putchar:
                                    412 ;	naked function: no prologue.
                                    413 ;	walk.c:13: __endasm;
      00206E E5 82            [12]  414 	mov	a, dpl
      002070 02 00 30         [24]  415 	ljmp	0x0030
                                    416 ;	walk.c:14: }
                                    417 ;	naked function: no epilogue.
                                    418 ;------------------------------------------------------------
                                    419 ;Allocation info for local variables in function 'getchar'
                                    420 ;------------------------------------------------------------
                                    421 ;	walk.c:16: int getchar(void) __naked {
                                    422 ;	-----------------------------------------
                                    423 ;	 function getchar
                                    424 ;	-----------------------------------------
      002073                        425 _getchar:
                                    426 ;	naked function: no prologue.
                                    427 ;	walk.c:22: __endasm;
      002073 12 00 32         [24]  428 	lcall	0x0032
      002076 F5 82            [12]  429 	mov	dpl, a
      002078 75 83 00         [24]  430 	mov	dph, #0
      00207B 22               [24]  431 	ret
                                    432 ;	walk.c:23: }
                                    433 ;	naked function: no epilogue.
                                    434 ;------------------------------------------------------------
                                    435 ;Allocation info for local variables in function 'int0'
                                    436 ;------------------------------------------------------------
                                    437 ;	walk.c:27: void int0(void) __interrupt IE0_VECTOR __using 1 {
                                    438 ;	-----------------------------------------
                                    439 ;	 function int0
                                    440 ;	-----------------------------------------
      00207C                        441 _int0:
                           00000F   442 	ar7 = 0x0f
                           00000E   443 	ar6 = 0x0e
                           00000D   444 	ar5 = 0x0d
                           00000C   445 	ar4 = 0x0c
                           00000B   446 	ar3 = 0x0b
                           00000A   447 	ar2 = 0x0a
                           000009   448 	ar1 = 0x09
                           000008   449 	ar0 = 0x08
      00207C C0 D0            [24]  450 	push	psw
      00207E 75 D0 08         [24]  451 	mov	psw,#0x08
                                    452 ;	walk.c:28: i0 = 0;
      002081 78 11            [12]  453 	mov	r0,#_i0
      002083 76 00            [12]  454 	mov	@r0,#0x00
                                    455 ;	walk.c:29: }
      002085 D0 D0            [24]  456 	pop	psw
      002087 32               [24]  457 	reti
                                    458 ;	eliminated unneeded push/pop dpl
                                    459 ;	eliminated unneeded push/pop dph
                                    460 ;	eliminated unneeded push/pop b
                                    461 ;	eliminated unneeded push/pop acc
                                    462 ;------------------------------------------------------------
                                    463 ;Allocation info for local variables in function 'reset'
                                    464 ;------------------------------------------------------------
                                    465 ;	walk.c:31: static void reset(void) __naked {
                                    466 ;	-----------------------------------------
                                    467 ;	 function reset
                                    468 ;	-----------------------------------------
      002088                        469 _reset:
                                    470 ;	naked function: no prologue.
                                    471 ;	walk.c:34: __endasm;
      002088 43 87 02         [24]  472 	orl	pcon, #2
                                    473 ;	walk.c:35: }
                                    474 ;	naked function: no epilogue.
                                    475 ;------------------------------------------------------------
                                    476 ;Allocation info for local variables in function 'bang'
                                    477 ;------------------------------------------------------------
                                    478 ;	walk.c:37: static void bang(void) {
                                    479 ;	-----------------------------------------
                                    480 ;	 function bang
                                    481 ;	-----------------------------------------
      00208B                        482 _bang:
                           000007   483 	ar7 = 0x07
                           000006   484 	ar6 = 0x06
                           000005   485 	ar5 = 0x05
                           000004   486 	ar4 = 0x04
                           000003   487 	ar3 = 0x03
                           000002   488 	ar2 = 0x02
                           000001   489 	ar1 = 0x01
                           000000   490 	ar0 = 0x00
                                    491 ;	walk.c:38: (void)puts("Memory error");
      00208B 90 40 FC         [24]  492 	mov	dptr,#___str_0
      00208E 75 F0 80         [24]  493 	mov	b,#0x80
      002091 12 2D 43         [24]  494 	lcall	_puts
                                    495 ;	walk.c:39: reset();
                                    496 ;	walk.c:41: return;
                                    497 ;	walk.c:42: }
      002094 02 20 88         [24]  498 	ljmp	_reset
                                    499 ;------------------------------------------------------------
                                    500 ;Allocation info for local variables in function 'update'
                                    501 ;------------------------------------------------------------
                                    502 ;cur                       Allocated to stack - _bp -5
                                    503 ;j                         Allocated to stack - _bp -6
                                    504 ;t                         Allocated to stack - _bp +1
                                    505 ;sloc0                     Allocated to stack - _bp +4
                                    506 ;sloc1                     Allocated to stack - _bp +6
                                    507 ;sloc2                     Allocated to stack - _bp +8
                                    508 ;------------------------------------------------------------
                                    509 ;	walk.c:88: static int update(struct node *t, struct node *cur, char j) {
                                    510 ;	-----------------------------------------
                                    511 ;	 function update
                                    512 ;	-----------------------------------------
      002097                        513 _update:
      002097 C0 10            [24]  514 	push	_bp
      002099 85 81 10         [24]  515 	mov	_bp,sp
      00209C C0 82            [24]  516 	push	dpl
      00209E C0 83            [24]  517 	push	dph
      0020A0 C0 F0            [24]  518 	push	b
      0020A2 E5 81            [12]  519 	mov	a,sp
      0020A4 24 07            [12]  520 	add	a,#0x07
      0020A6 F5 81            [12]  521 	mov	sp,a
                                    522 ;	walk.c:89: t->r = cur->r + neigh[j].r;
      0020A8 E5 10            [12]  523 	mov	a,_bp
      0020AA 24 FB            [12]  524 	add	a,#0xfb
      0020AC F8               [12]  525 	mov	r0,a
      0020AD 86 02            [24]  526 	mov	ar2,@r0
      0020AF 08               [12]  527 	inc	r0
      0020B0 86 03            [24]  528 	mov	ar3,@r0
      0020B2 08               [12]  529 	inc	r0
      0020B3 86 04            [24]  530 	mov	ar4,@r0
      0020B5 8A 82            [24]  531 	mov	dpl,r2
      0020B7 8B 83            [24]  532 	mov	dph,r3
      0020B9 8C F0            [24]  533 	mov	b,r4
      0020BB E5 10            [12]  534 	mov	a,_bp
      0020BD 24 04            [12]  535 	add	a,#0x04
      0020BF F8               [12]  536 	mov	r0,a
      0020C0 12 2E 02         [24]  537 	lcall	__gptrget
      0020C3 F6               [12]  538 	mov	@r0,a
      0020C4 A3               [24]  539 	inc	dptr
      0020C5 12 2E 02         [24]  540 	lcall	__gptrget
      0020C8 08               [12]  541 	inc	r0
      0020C9 F6               [12]  542 	mov	@r0,a
      0020CA E5 10            [12]  543 	mov	a,_bp
      0020CC 24 FA            [12]  544 	add	a,#0xfa
      0020CE F8               [12]  545 	mov	r0,a
      0020CF E5 10            [12]  546 	mov	a,_bp
      0020D1 24 06            [12]  547 	add	a,#0x06
      0020D3 F9               [12]  548 	mov	r1,a
      0020D4 E6               [12]  549 	mov	a,@r0
      0020D5 75 F0 04         [24]  550 	mov	b,#0x04
      0020D8 A4               [48]  551 	mul	ab
      0020D9 F7               [12]  552 	mov	@r1,a
      0020DA 09               [12]  553 	inc	r1
      0020DB A7 F0            [24]  554 	mov	@r1,b
      0020DD E5 10            [12]  555 	mov	a,_bp
      0020DF 24 06            [12]  556 	add	a,#0x06
      0020E1 F8               [12]  557 	mov	r0,a
      0020E2 E6               [12]  558 	mov	a,@r0
      0020E3 24 A4            [12]  559 	add	a,#_neigh
      0020E5 F5 82            [12]  560 	mov	dpl,a
      0020E7 08               [12]  561 	inc	r0
      0020E8 E6               [12]  562 	mov	a,@r0
      0020E9 34 FF            [12]  563 	addc	a,#(_neigh >> 8)
      0020EB F5 83            [12]  564 	mov	dph,a
      0020ED E0               [24]  565 	movx	a,@dptr
      0020EE FF               [12]  566 	mov	r7,a
      0020EF A3               [24]  567 	inc	dptr
      0020F0 E0               [24]  568 	movx	a,@dptr
      0020F1 FE               [12]  569 	mov	r6,a
      0020F2 E5 10            [12]  570 	mov	a,_bp
      0020F4 24 04            [12]  571 	add	a,#0x04
      0020F6 F8               [12]  572 	mov	r0,a
      0020F7 EF               [12]  573 	mov	a,r7
      0020F8 26               [12]  574 	add	a,@r0
      0020F9 FF               [12]  575 	mov	r7,a
      0020FA EE               [12]  576 	mov	a,r6
      0020FB 08               [12]  577 	inc	r0
      0020FC 36               [12]  578 	addc	a,@r0
      0020FD FE               [12]  579 	mov	r6,a
      0020FE A8 10            [24]  580 	mov	r0,_bp
      002100 08               [12]  581 	inc	r0
      002101 86 82            [24]  582 	mov	dpl,@r0
      002103 08               [12]  583 	inc	r0
      002104 86 83            [24]  584 	mov	dph,@r0
      002106 08               [12]  585 	inc	r0
      002107 86 F0            [24]  586 	mov	b,@r0
      002109 EF               [12]  587 	mov	a,r7
      00210A 12 2B F7         [24]  588 	lcall	__gptrput
      00210D A3               [24]  589 	inc	dptr
      00210E EE               [12]  590 	mov	a,r6
      00210F 12 2B F7         [24]  591 	lcall	__gptrput
                                    592 ;	walk.c:90: t->c = cur->c + neigh[j].c;
      002112 A8 10            [24]  593 	mov	r0,_bp
      002114 08               [12]  594 	inc	r0
      002115 E5 10            [12]  595 	mov	a,_bp
      002117 24 08            [12]  596 	add	a,#0x08
      002119 F9               [12]  597 	mov	r1,a
      00211A 74 02            [12]  598 	mov	a,#0x02
      00211C 26               [12]  599 	add	a,@r0
      00211D F7               [12]  600 	mov	@r1,a
      00211E E4               [12]  601 	clr	a
      00211F 08               [12]  602 	inc	r0
      002120 36               [12]  603 	addc	a,@r0
      002121 09               [12]  604 	inc	r1
      002122 F7               [12]  605 	mov	@r1,a
      002123 08               [12]  606 	inc	r0
      002124 09               [12]  607 	inc	r1
      002125 E6               [12]  608 	mov	a,@r0
      002126 F7               [12]  609 	mov	@r1,a
      002127 74 02            [12]  610 	mov	a,#0x02
      002129 2A               [12]  611 	add	a,r2
      00212A FA               [12]  612 	mov	r2,a
      00212B E4               [12]  613 	clr	a
      00212C 3B               [12]  614 	addc	a,r3
      00212D FB               [12]  615 	mov	r3,a
      00212E 8A 82            [24]  616 	mov	dpl,r2
      002130 8B 83            [24]  617 	mov	dph,r3
      002132 8C F0            [24]  618 	mov	b,r4
      002134 12 2E 02         [24]  619 	lcall	__gptrget
      002137 FA               [12]  620 	mov	r2,a
      002138 A3               [24]  621 	inc	dptr
      002139 12 2E 02         [24]  622 	lcall	__gptrget
      00213C FB               [12]  623 	mov	r3,a
      00213D E5 10            [12]  624 	mov	a,_bp
      00213F 24 06            [12]  625 	add	a,#0x06
      002141 F8               [12]  626 	mov	r0,a
      002142 E6               [12]  627 	mov	a,@r0
      002143 24 A4            [12]  628 	add	a,#_neigh
      002145 FC               [12]  629 	mov	r4,a
      002146 08               [12]  630 	inc	r0
      002147 E6               [12]  631 	mov	a,@r0
      002148 34 FF            [12]  632 	addc	a,#(_neigh >> 8)
      00214A FD               [12]  633 	mov	r5,a
      00214B 8C 82            [24]  634 	mov	dpl,r4
      00214D 8D 83            [24]  635 	mov	dph,r5
      00214F A3               [24]  636 	inc	dptr
      002150 A3               [24]  637 	inc	dptr
      002151 E0               [24]  638 	movx	a,@dptr
      002152 FC               [12]  639 	mov	r4,a
      002153 A3               [24]  640 	inc	dptr
      002154 E0               [24]  641 	movx	a,@dptr
      002155 FD               [12]  642 	mov	r5,a
      002156 EC               [12]  643 	mov	a,r4
      002157 2A               [12]  644 	add	a,r2
      002158 FA               [12]  645 	mov	r2,a
      002159 ED               [12]  646 	mov	a,r5
      00215A 3B               [12]  647 	addc	a,r3
      00215B FB               [12]  648 	mov	r3,a
      00215C E5 10            [12]  649 	mov	a,_bp
      00215E 24 08            [12]  650 	add	a,#0x08
      002160 F8               [12]  651 	mov	r0,a
      002161 86 82            [24]  652 	mov	dpl,@r0
      002163 08               [12]  653 	inc	r0
      002164 86 83            [24]  654 	mov	dph,@r0
      002166 08               [12]  655 	inc	r0
      002167 86 F0            [24]  656 	mov	b,@r0
      002169 EA               [12]  657 	mov	a,r2
      00216A 12 2B F7         [24]  658 	lcall	__gptrput
      00216D A3               [24]  659 	inc	dptr
      00216E EB               [12]  660 	mov	a,r3
      00216F 12 2B F7         [24]  661 	lcall	__gptrput
                                    662 ;	walk.c:92: if (t->r < 0) t->r += ROWS;
      002172 A8 10            [24]  663 	mov	r0,_bp
      002174 08               [12]  664 	inc	r0
      002175 86 82            [24]  665 	mov	dpl,@r0
      002177 08               [12]  666 	inc	r0
      002178 86 83            [24]  667 	mov	dph,@r0
      00217A 08               [12]  668 	inc	r0
      00217B 86 F0            [24]  669 	mov	b,@r0
      00217D 12 2E 02         [24]  670 	lcall	__gptrget
      002180 FD               [12]  671 	mov	r5,a
      002181 A3               [24]  672 	inc	dptr
      002182 12 2E 02         [24]  673 	lcall	__gptrget
      002185 FC               [12]  674 	mov	r4,a
      002186 EE               [12]  675 	mov	a,r6
      002187 30 E7 1D         [24]  676 	jnb	acc.7,00104$
      00218A 74 30            [12]  677 	mov	a,#0x30
      00218C 2D               [12]  678 	add	a,r5
      00218D FF               [12]  679 	mov	r7,a
      00218E E4               [12]  680 	clr	a
      00218F 3C               [12]  681 	addc	a,r4
      002190 FE               [12]  682 	mov	r6,a
      002191 A8 10            [24]  683 	mov	r0,_bp
      002193 08               [12]  684 	inc	r0
      002194 86 82            [24]  685 	mov	dpl,@r0
      002196 08               [12]  686 	inc	r0
      002197 86 83            [24]  687 	mov	dph,@r0
      002199 08               [12]  688 	inc	r0
      00219A 86 F0            [24]  689 	mov	b,@r0
      00219C EF               [12]  690 	mov	a,r7
      00219D 12 2B F7         [24]  691 	lcall	__gptrput
      0021A0 A3               [24]  692 	inc	dptr
      0021A1 EE               [12]  693 	mov	a,r6
      0021A2 12 2B F7         [24]  694 	lcall	__gptrput
      0021A5 80 27            [24]  695 	sjmp	00105$
      0021A7                        696 00104$:
                                    697 ;	walk.c:93: else if (t->r >= ROWS) t->r -= ROWS;
      0021A7 C3               [12]  698 	clr	c
      0021A8 ED               [12]  699 	mov	a,r5
      0021A9 94 30            [12]  700 	subb	a,#0x30
      0021AB EC               [12]  701 	mov	a,r4
      0021AC 64 80            [12]  702 	xrl	a,#0x80
      0021AE 94 80            [12]  703 	subb	a,#0x80
      0021B0 40 1C            [24]  704 	jc	00105$
      0021B2 ED               [12]  705 	mov	a,r5
      0021B3 24 D0            [12]  706 	add	a,#0xd0
      0021B5 FD               [12]  707 	mov	r5,a
      0021B6 EC               [12]  708 	mov	a,r4
      0021B7 34 FF            [12]  709 	addc	a,#0xff
      0021B9 FC               [12]  710 	mov	r4,a
      0021BA A8 10            [24]  711 	mov	r0,_bp
      0021BC 08               [12]  712 	inc	r0
      0021BD 86 82            [24]  713 	mov	dpl,@r0
      0021BF 08               [12]  714 	inc	r0
      0021C0 86 83            [24]  715 	mov	dph,@r0
      0021C2 08               [12]  716 	inc	r0
      0021C3 86 F0            [24]  717 	mov	b,@r0
      0021C5 ED               [12]  718 	mov	a,r5
      0021C6 12 2B F7         [24]  719 	lcall	__gptrput
      0021C9 A3               [24]  720 	inc	dptr
      0021CA EC               [12]  721 	mov	a,r4
      0021CB 12 2B F7         [24]  722 	lcall	__gptrput
      0021CE                        723 00105$:
                                    724 ;	walk.c:94: if (t->c < 0) t->c += COLS;
      0021CE E5 10            [12]  725 	mov	a,_bp
      0021D0 24 08            [12]  726 	add	a,#0x08
      0021D2 F8               [12]  727 	mov	r0,a
      0021D3 86 82            [24]  728 	mov	dpl,@r0
      0021D5 08               [12]  729 	inc	r0
      0021D6 86 83            [24]  730 	mov	dph,@r0
      0021D8 08               [12]  731 	inc	r0
      0021D9 86 F0            [24]  732 	mov	b,@r0
      0021DB 12 2E 02         [24]  733 	lcall	__gptrget
      0021DE A3               [24]  734 	inc	dptr
      0021DF 12 2E 02         [24]  735 	lcall	__gptrget
      0021E2 30 E7 35         [24]  736 	jnb	acc.7,00109$
      0021E5 E5 10            [12]  737 	mov	a,_bp
      0021E7 24 08            [12]  738 	add	a,#0x08
      0021E9 F8               [12]  739 	mov	r0,a
      0021EA 86 82            [24]  740 	mov	dpl,@r0
      0021EC 08               [12]  741 	inc	r0
      0021ED 86 83            [24]  742 	mov	dph,@r0
      0021EF 08               [12]  743 	inc	r0
      0021F0 86 F0            [24]  744 	mov	b,@r0
      0021F2 12 2E 02         [24]  745 	lcall	__gptrget
      0021F5 FE               [12]  746 	mov	r6,a
      0021F6 A3               [24]  747 	inc	dptr
      0021F7 12 2E 02         [24]  748 	lcall	__gptrget
      0021FA FF               [12]  749 	mov	r7,a
      0021FB 74 CA            [12]  750 	mov	a,#0xca
      0021FD 2E               [12]  751 	add	a,r6
      0021FE FE               [12]  752 	mov	r6,a
      0021FF E4               [12]  753 	clr	a
      002200 3F               [12]  754 	addc	a,r7
      002201 FF               [12]  755 	mov	r7,a
      002202 E5 10            [12]  756 	mov	a,_bp
      002204 24 08            [12]  757 	add	a,#0x08
      002206 F8               [12]  758 	mov	r0,a
      002207 86 82            [24]  759 	mov	dpl,@r0
      002209 08               [12]  760 	inc	r0
      00220A 86 83            [24]  761 	mov	dph,@r0
      00220C 08               [12]  762 	inc	r0
      00220D 86 F0            [24]  763 	mov	b,@r0
      00220F EE               [12]  764 	mov	a,r6
      002210 12 2B F7         [24]  765 	lcall	__gptrput
      002213 A3               [24]  766 	inc	dptr
      002214 EF               [12]  767 	mov	a,r7
      002215 12 2B F7         [24]  768 	lcall	__gptrput
      002218 80 55            [24]  769 	sjmp	00110$
      00221A                        770 00109$:
                                    771 ;	walk.c:95: else if (t->c >= COLS) t->c -= COLS;
      00221A E5 10            [12]  772 	mov	a,_bp
      00221C 24 08            [12]  773 	add	a,#0x08
      00221E F8               [12]  774 	mov	r0,a
      00221F 86 82            [24]  775 	mov	dpl,@r0
      002221 08               [12]  776 	inc	r0
      002222 86 83            [24]  777 	mov	dph,@r0
      002224 08               [12]  778 	inc	r0
      002225 86 F0            [24]  779 	mov	b,@r0
      002227 12 2E 02         [24]  780 	lcall	__gptrget
      00222A FE               [12]  781 	mov	r6,a
      00222B A3               [24]  782 	inc	dptr
      00222C 12 2E 02         [24]  783 	lcall	__gptrget
      00222F FF               [12]  784 	mov	r7,a
      002230 C3               [12]  785 	clr	c
      002231 EE               [12]  786 	mov	a,r6
      002232 94 CA            [12]  787 	subb	a,#0xca
      002234 EF               [12]  788 	mov	a,r7
      002235 64 80            [12]  789 	xrl	a,#0x80
      002237 94 80            [12]  790 	subb	a,#0x80
      002239 40 34            [24]  791 	jc	00110$
      00223B E5 10            [12]  792 	mov	a,_bp
      00223D 24 08            [12]  793 	add	a,#0x08
      00223F F8               [12]  794 	mov	r0,a
      002240 86 82            [24]  795 	mov	dpl,@r0
      002242 08               [12]  796 	inc	r0
      002243 86 83            [24]  797 	mov	dph,@r0
      002245 08               [12]  798 	inc	r0
      002246 86 F0            [24]  799 	mov	b,@r0
      002248 12 2E 02         [24]  800 	lcall	__gptrget
      00224B FE               [12]  801 	mov	r6,a
      00224C A3               [24]  802 	inc	dptr
      00224D 12 2E 02         [24]  803 	lcall	__gptrget
      002250 FF               [12]  804 	mov	r7,a
      002251 EE               [12]  805 	mov	a,r6
      002252 24 36            [12]  806 	add	a,#0x36
      002254 FE               [12]  807 	mov	r6,a
      002255 EF               [12]  808 	mov	a,r7
      002256 34 FF            [12]  809 	addc	a,#0xff
      002258 FF               [12]  810 	mov	r7,a
      002259 E5 10            [12]  811 	mov	a,_bp
      00225B 24 08            [12]  812 	add	a,#0x08
      00225D F8               [12]  813 	mov	r0,a
      00225E 86 82            [24]  814 	mov	dpl,@r0
      002260 08               [12]  815 	inc	r0
      002261 86 83            [24]  816 	mov	dph,@r0
      002263 08               [12]  817 	inc	r0
      002264 86 F0            [24]  818 	mov	b,@r0
      002266 EE               [12]  819 	mov	a,r6
      002267 12 2B F7         [24]  820 	lcall	__gptrput
      00226A A3               [24]  821 	inc	dptr
      00226B EF               [12]  822 	mov	a,r7
      00226C 12 2B F7         [24]  823 	lcall	__gptrput
      00226F                        824 00110$:
                                    825 ;	walk.c:97: if (g[t->r][t->c] == 0xaa) return 0;
      00226F A8 10            [24]  826 	mov	r0,_bp
      002271 08               [12]  827 	inc	r0
      002272 86 82            [24]  828 	mov	dpl,@r0
      002274 08               [12]  829 	inc	r0
      002275 86 83            [24]  830 	mov	dph,@r0
      002277 08               [12]  831 	inc	r0
      002278 86 F0            [24]  832 	mov	b,@r0
      00227A 12 2E 02         [24]  833 	lcall	__gptrget
      00227D FE               [12]  834 	mov	r6,a
      00227E A3               [24]  835 	inc	dptr
      00227F 12 2E 02         [24]  836 	lcall	__gptrget
      002282 FF               [12]  837 	mov	r7,a
      002283 C0 06            [24]  838 	push	ar6
      002285 C0 07            [24]  839 	push	ar7
      002287 90 00 CA         [24]  840 	mov	dptr,#0x00ca
      00228A 12 2C 12         [24]  841 	lcall	__mulint
      00228D AE 82            [24]  842 	mov	r6,dpl
      00228F AF 83            [24]  843 	mov	r7,dph
      002291 15 81            [12]  844 	dec	sp
      002293 15 81            [12]  845 	dec	sp
      002295 EE               [12]  846 	mov	a,r6
      002296 24 00            [12]  847 	add	a,#_g
      002298 FE               [12]  848 	mov	r6,a
      002299 EF               [12]  849 	mov	a,r7
      00229A 34 42            [12]  850 	addc	a,#(_g >> 8)
      00229C FF               [12]  851 	mov	r7,a
      00229D E5 10            [12]  852 	mov	a,_bp
      00229F 24 08            [12]  853 	add	a,#0x08
      0022A1 F8               [12]  854 	mov	r0,a
      0022A2 86 82            [24]  855 	mov	dpl,@r0
      0022A4 08               [12]  856 	inc	r0
      0022A5 86 83            [24]  857 	mov	dph,@r0
      0022A7 08               [12]  858 	inc	r0
      0022A8 86 F0            [24]  859 	mov	b,@r0
      0022AA 12 2E 02         [24]  860 	lcall	__gptrget
      0022AD FC               [12]  861 	mov	r4,a
      0022AE A3               [24]  862 	inc	dptr
      0022AF 12 2E 02         [24]  863 	lcall	__gptrget
      0022B2 FD               [12]  864 	mov	r5,a
      0022B3 EC               [12]  865 	mov	a,r4
      0022B4 2E               [12]  866 	add	a,r6
      0022B5 F5 82            [12]  867 	mov	dpl,a
      0022B7 ED               [12]  868 	mov	a,r5
      0022B8 3F               [12]  869 	addc	a,r7
      0022B9 F5 83            [12]  870 	mov	dph,a
      0022BB E0               [24]  871 	movx	a,@dptr
      0022BC FF               [12]  872 	mov	r7,a
      0022BD BF AA 05         [24]  873 	cjne	r7,#0xaa,00114$
      0022C0 90 00 00         [24]  874 	mov	dptr,#0x0000
      0022C3 80 59            [24]  875 	sjmp	00116$
      0022C5                        876 00114$:
                                    877 ;	walk.c:98: else if (g[t->r][t->c] != 0x55) bang();
      0022C5 A8 10            [24]  878 	mov	r0,_bp
      0022C7 08               [12]  879 	inc	r0
      0022C8 86 82            [24]  880 	mov	dpl,@r0
      0022CA 08               [12]  881 	inc	r0
      0022CB 86 83            [24]  882 	mov	dph,@r0
      0022CD 08               [12]  883 	inc	r0
      0022CE 86 F0            [24]  884 	mov	b,@r0
      0022D0 12 2E 02         [24]  885 	lcall	__gptrget
      0022D3 FE               [12]  886 	mov	r6,a
      0022D4 A3               [24]  887 	inc	dptr
      0022D5 12 2E 02         [24]  888 	lcall	__gptrget
      0022D8 FF               [12]  889 	mov	r7,a
      0022D9 C0 06            [24]  890 	push	ar6
      0022DB C0 07            [24]  891 	push	ar7
      0022DD 90 00 CA         [24]  892 	mov	dptr,#0x00ca
      0022E0 12 2C 12         [24]  893 	lcall	__mulint
      0022E3 AE 82            [24]  894 	mov	r6,dpl
      0022E5 AF 83            [24]  895 	mov	r7,dph
      0022E7 15 81            [12]  896 	dec	sp
      0022E9 15 81            [12]  897 	dec	sp
      0022EB EE               [12]  898 	mov	a,r6
      0022EC 24 00            [12]  899 	add	a,#_g
      0022EE FE               [12]  900 	mov	r6,a
      0022EF EF               [12]  901 	mov	a,r7
      0022F0 34 42            [12]  902 	addc	a,#(_g >> 8)
      0022F2 FF               [12]  903 	mov	r7,a
      0022F3 E5 10            [12]  904 	mov	a,_bp
      0022F5 24 08            [12]  905 	add	a,#0x08
      0022F7 F8               [12]  906 	mov	r0,a
      0022F8 86 82            [24]  907 	mov	dpl,@r0
      0022FA 08               [12]  908 	inc	r0
      0022FB 86 83            [24]  909 	mov	dph,@r0
      0022FD 08               [12]  910 	inc	r0
      0022FE 86 F0            [24]  911 	mov	b,@r0
      002300 12 2E 02         [24]  912 	lcall	__gptrget
      002303 FC               [12]  913 	mov	r4,a
      002304 A3               [24]  914 	inc	dptr
      002305 12 2E 02         [24]  915 	lcall	__gptrget
      002308 FD               [12]  916 	mov	r5,a
      002309 EC               [12]  917 	mov	a,r4
      00230A 2E               [12]  918 	add	a,r6
      00230B F5 82            [12]  919 	mov	dpl,a
      00230D ED               [12]  920 	mov	a,r5
      00230E 3F               [12]  921 	addc	a,r7
      00230F F5 83            [12]  922 	mov	dph,a
      002311 E0               [24]  923 	movx	a,@dptr
      002312 FF               [12]  924 	mov	r7,a
      002313 BF 55 02         [24]  925 	cjne	r7,#0x55,00148$
      002316 80 03            [24]  926 	sjmp	00115$
      002318                        927 00148$:
      002318 12 20 8B         [24]  928 	lcall	_bang
      00231B                        929 00115$:
                                    930 ;	walk.c:100: return 1;
      00231B 90 00 01         [24]  931 	mov	dptr,#0x0001
      00231E                        932 00116$:
                                    933 ;	walk.c:101: }
      00231E 85 10 81         [24]  934 	mov	sp,_bp
      002321 D0 10            [24]  935 	pop	_bp
      002323 22               [24]  936 	ret
                                    937 ;------------------------------------------------------------
                                    938 ;Allocation info for local variables in function 'walk'
                                    939 ;------------------------------------------------------------
                                    940 ;nstart                    Allocated to registers 
                                    941 ;cur                       Allocated to stack - _bp +10
                                    942 ;t                         Allocated to stack - _bp +14
                                    943 ;j                         Allocated to stack - _bp +18
                                    944 ;f                         Allocated to registers r3 
                                    945 ;sloc0                     Allocated to stack - _bp +1
                                    946 ;sloc1                     Allocated to stack - _bp +2
                                    947 ;sloc2                     Allocated to stack - _bp +3
                                    948 ;sloc3                     Allocated to stack - _bp +17
                                    949 ;sloc4                     Allocated to stack - _bp +4
                                    950 ;sloc5                     Allocated to stack - _bp +5
                                    951 ;sloc6                     Allocated to stack - _bp +6
                                    952 ;sloc7                     Allocated to stack - _bp +7
                                    953 ;------------------------------------------------------------
                                    954 ;	walk.c:103: static void walk(struct node *nstart) {
                                    955 ;	-----------------------------------------
                                    956 ;	 function walk
                                    957 ;	-----------------------------------------
      002324                        958 _walk:
      002324 C0 10            [24]  959 	push	_bp
      002326 E5 81            [12]  960 	mov	a,sp
      002328 F5 10            [12]  961 	mov	_bp,a
      00232A 24 12            [12]  962 	add	a,#0x12
      00232C F5 81            [12]  963 	mov	sp,a
      00232E AD 82            [24]  964 	mov	r5,dpl
      002330 AE 83            [24]  965 	mov	r6,dph
      002332 AF F0            [24]  966 	mov	r7,b
                                    967 ;	walk.c:107: cur = *nstart;
      002334 E5 10            [12]  968 	mov	a,_bp
      002336 24 0A            [12]  969 	add	a,#0x0a
      002338 F9               [12]  970 	mov	r1,a
      002339 FA               [12]  971 	mov	r2,a
      00233A 7B 00            [12]  972 	mov	r3,#0x00
      00233C 7C 40            [12]  973 	mov	r4,#0x40
      00233E C0 01            [24]  974 	push	ar1
      002340 74 04            [12]  975 	mov	a,#0x04
      002342 C0 E0            [24]  976 	push	acc
      002344 E4               [12]  977 	clr	a
      002345 C0 E0            [24]  978 	push	acc
      002347 C0 05            [24]  979 	push	ar5
      002349 C0 06            [24]  980 	push	ar6
      00234B C0 07            [24]  981 	push	ar7
      00234D 8A 82            [24]  982 	mov	dpl,r2
      00234F 8B 83            [24]  983 	mov	dph,r3
      002351 8C F0            [24]  984 	mov	b,r4
      002353 12 2C B0         [24]  985 	lcall	___memcpy
      002356 E5 81            [12]  986 	mov	a,sp
      002358 24 FB            [12]  987 	add	a,#0xfb
      00235A F5 81            [12]  988 	mov	sp,a
      00235C D0 01            [24]  989 	pop	ar1
                                    990 ;	walk.c:109: process:
      00235E E5 10            [12]  991 	mov	a,_bp
      002360 24 06            [12]  992 	add	a,#0x06
      002362 F8               [12]  993 	mov	r0,a
      002363 A6 01            [24]  994 	mov	@r0,ar1
      002365 E5 10            [12]  995 	mov	a,_bp
      002367 24 0E            [12]  996 	add	a,#0x0e
      002369 FE               [12]  997 	mov	r6,a
      00236A E5 10            [12]  998 	mov	a,_bp
      00236C 24 03            [12]  999 	add	a,#0x03
      00236E F8               [12] 1000 	mov	r0,a
      00236F A6 01            [24] 1001 	mov	@r0,ar1
      002371 E5 10            [12] 1002 	mov	a,_bp
      002373 24 05            [12] 1003 	add	a,#0x05
      002375 F8               [12] 1004 	mov	r0,a
      002376 A6 01            [24] 1005 	mov	@r0,ar1
      002378 E5 10            [12] 1006 	mov	a,_bp
      00237A 24 04            [12] 1007 	add	a,#0x04
      00237C F8               [12] 1008 	mov	r0,a
      00237D A6 06            [24] 1009 	mov	@r0,ar6
      00237F 89 02            [24] 1010 	mov	ar2,r1
      002381 A8 10            [24] 1011 	mov	r0,_bp
      002383 08               [12] 1012 	inc	r0
      002384 A6 06            [24] 1013 	mov	@r0,ar6
      002386 A8 10            [24] 1014 	mov	r0,_bp
      002388 08               [12] 1015 	inc	r0
      002389 08               [12] 1016 	inc	r0
      00238A A6 01            [24] 1017 	mov	@r0,ar1
      00238C 74 02            [12] 1018 	mov	a,#0x02
      00238E 29               [12] 1019 	add	a,r1
      00238F F8               [12] 1020 	mov	r0,a
      002390                       1021 00101$:
                                   1022 ;	walk.c:110: g[cur.r][cur.c] = 0xaa;
      002390 C0 02            [24] 1023 	push	ar2
      002392 87 02            [24] 1024 	mov	ar2,@r1
      002394 09               [12] 1025 	inc	r1
      002395 87 05            [24] 1026 	mov	ar5,@r1
      002397 19               [12] 1027 	dec	r1
      002398 C0 06            [24] 1028 	push	ar6
      00239A C0 01            [24] 1029 	push	ar1
      00239C C0 00            [24] 1030 	push	ar0
      00239E C0 02            [24] 1031 	push	ar2
      0023A0 C0 05            [24] 1032 	push	ar5
      0023A2 90 00 CA         [24] 1033 	mov	dptr,#0x00ca
      0023A5 12 2C 12         [24] 1034 	lcall	__mulint
      0023A8 AA 82            [24] 1035 	mov	r2,dpl
      0023AA AD 83            [24] 1036 	mov	r5,dph
      0023AC 15 81            [12] 1037 	dec	sp
      0023AE 15 81            [12] 1038 	dec	sp
      0023B0 D0 00            [24] 1039 	pop	ar0
      0023B2 D0 01            [24] 1040 	pop	ar1
      0023B4 EA               [12] 1041 	mov	a,r2
      0023B5 24 00            [12] 1042 	add	a,#_g
      0023B7 FF               [12] 1043 	mov	r7,a
      0023B8 ED               [12] 1044 	mov	a,r5
      0023B9 34 42            [12] 1045 	addc	a,#(_g >> 8)
      0023BB FC               [12] 1046 	mov	r4,a
      0023BC 86 02            [24] 1047 	mov	ar2,@r0
      0023BE 08               [12] 1048 	inc	r0
      0023BF 86 05            [24] 1049 	mov	ar5,@r0
      0023C1 18               [12] 1050 	dec	r0
      0023C2 EA               [12] 1051 	mov	a,r2
      0023C3 2F               [12] 1052 	add	a,r7
      0023C4 F5 82            [12] 1053 	mov	dpl,a
      0023C6 ED               [12] 1054 	mov	a,r5
      0023C7 3C               [12] 1055 	addc	a,r4
      0023C8 F5 83            [12] 1056 	mov	dph,a
      0023CA 74 AA            [12] 1057 	mov	a,#0xaa
      0023CC F0               [24] 1058 	movx	@dptr,a
                                   1059 ;	walk.c:111: printf("\033[%d;%dHo", cur.r + 4, cur.c + 1);
      0023CD 86 02            [24] 1060 	mov	ar2,@r0
      0023CF 08               [12] 1061 	inc	r0
      0023D0 86 05            [24] 1062 	mov	ar5,@r0
      0023D2 18               [12] 1063 	dec	r0
      0023D3 74 01            [12] 1064 	mov	a,#0x01
      0023D5 2A               [12] 1065 	add	a,r2
      0023D6 FF               [12] 1066 	mov	r7,a
      0023D7 E4               [12] 1067 	clr	a
      0023D8 3D               [12] 1068 	addc	a,r5
      0023D9 FC               [12] 1069 	mov	r4,a
      0023DA 87 02            [24] 1070 	mov	ar2,@r1
      0023DC 09               [12] 1071 	inc	r1
      0023DD 87 05            [24] 1072 	mov	ar5,@r1
      0023DF 19               [12] 1073 	dec	r1
      0023E0 74 04            [12] 1074 	mov	a,#0x04
      0023E2 2A               [12] 1075 	add	a,r2
      0023E3 FA               [12] 1076 	mov	r2,a
      0023E4 E4               [12] 1077 	clr	a
      0023E5 3D               [12] 1078 	addc	a,r5
      0023E6 FD               [12] 1079 	mov	r5,a
      0023E7 C0 02            [24] 1080 	push	ar2
      0023E9 C0 01            [24] 1081 	push	ar1
      0023EB C0 00            [24] 1082 	push	ar0
      0023ED C0 07            [24] 1083 	push	ar7
      0023EF C0 04            [24] 1084 	push	ar4
      0023F1 C0 02            [24] 1085 	push	ar2
      0023F3 C0 05            [24] 1086 	push	ar5
      0023F5 74 09            [12] 1087 	mov	a,#___str_1
      0023F7 C0 E0            [24] 1088 	push	acc
      0023F9 74 41            [12] 1089 	mov	a,#(___str_1 >> 8)
      0023FB C0 E0            [24] 1090 	push	acc
      0023FD 74 80            [12] 1091 	mov	a,#0x80
      0023FF C0 E0            [24] 1092 	push	acc
      002401 12 2D C9         [24] 1093 	lcall	_printf
      002404 E5 81            [12] 1094 	mov	a,sp
      002406 24 F9            [12] 1095 	add	a,#0xf9
      002408 F5 81            [12] 1096 	mov	sp,a
      00240A D0 00            [24] 1097 	pop	ar0
      00240C D0 01            [24] 1098 	pop	ar1
      00240E D0 02            [24] 1099 	pop	ar2
      002410 D0 06            [24] 1100 	pop	ar6
                                   1101 ;	walk.c:138: return;
      002412 D0 02            [24] 1102 	pop	ar2
                                   1103 ;	walk.c:113: next:
      002414                       1104 00102$:
                                   1105 ;	walk.c:114: printf("\033[2;1H% 8d% 8d% 8d", sp, cur.r, cur.c);
      002414 C0 02            [24] 1106 	push	ar2
      002416 86 07            [24] 1107 	mov	ar7,@r0
      002418 08               [12] 1108 	inc	r0
      002419 86 04            [24] 1109 	mov	ar4,@r0
      00241B 18               [12] 1110 	dec	r0
      00241C 87 02            [24] 1111 	mov	ar2,@r1
      00241E 09               [12] 1112 	inc	r1
      00241F 87 05            [24] 1113 	mov	ar5,@r1
      002421 19               [12] 1114 	dec	r1
      002422 C0 06            [24] 1115 	push	ar6
      002424 C0 02            [24] 1116 	push	ar2
      002426 C0 01            [24] 1117 	push	ar1
      002428 C0 00            [24] 1118 	push	ar0
      00242A C0 07            [24] 1119 	push	ar7
      00242C C0 04            [24] 1120 	push	ar4
      00242E C0 02            [24] 1121 	push	ar2
      002430 C0 05            [24] 1122 	push	ar5
      002432 90 FF 60         [24] 1123 	mov	dptr,#_sp
      002435 E0               [24] 1124 	movx	a,@dptr
      002436 C0 E0            [24] 1125 	push	acc
      002438 A3               [24] 1126 	inc	dptr
      002439 E0               [24] 1127 	movx	a,@dptr
      00243A C0 E0            [24] 1128 	push	acc
      00243C 74 13            [12] 1129 	mov	a,#___str_2
      00243E C0 E0            [24] 1130 	push	acc
      002440 74 41            [12] 1131 	mov	a,#(___str_2 >> 8)
      002442 C0 E0            [24] 1132 	push	acc
      002444 74 80            [12] 1133 	mov	a,#0x80
      002446 C0 E0            [24] 1134 	push	acc
      002448 12 2D C9         [24] 1135 	lcall	_printf
      00244B E5 81            [12] 1136 	mov	a,sp
      00244D 24 F7            [12] 1137 	add	a,#0xf7
      00244F F5 81            [12] 1138 	mov	sp,a
      002451 D0 00            [24] 1139 	pop	ar0
      002453 D0 01            [24] 1140 	pop	ar1
      002455 D0 02            [24] 1141 	pop	ar2
      002457 D0 06            [24] 1142 	pop	ar6
                                   1143 ;	walk.c:116: for (j = 0, f = 0; j < NMAX; j++) {
      002459 7B 00            [12] 1144 	mov	r3,#0x00
      00245B C0 00            [24] 1145 	push	ar0
      00245D E5 10            [12] 1146 	mov	a,_bp
      00245F 24 12            [12] 1147 	add	a,#0x12
      002461 F8               [12] 1148 	mov	r0,a
      002462 76 00            [12] 1149 	mov	@r0,#0x00
      002464 D0 00            [24] 1150 	pop	ar0
                                   1151 ;	walk.c:138: return;
      002466 D0 02            [24] 1152 	pop	ar2
                                   1153 ;	walk.c:116: for (j = 0, f = 0; j < NMAX; j++) {
      002468                       1154 00120$:
      002468 C0 00            [24] 1155 	push	ar0
      00246A E5 10            [12] 1156 	mov	a,_bp
      00246C 24 12            [12] 1157 	add	a,#0x12
      00246E F8               [12] 1158 	mov	r0,a
      00246F B6 10 00         [24] 1159 	cjne	@r0,#0x10,00160$
      002472                       1160 00160$:
      002472 D0 00            [24] 1161 	pop	ar0
      002474 40 03            [24] 1162 	jc	00161$
      002476 02 24 F6         [24] 1163 	ljmp	00106$
      002479                       1164 00161$:
                                   1165 ;	walk.c:117: if (!update(&t, &cur, j)) continue;
      002479 C0 02            [24] 1166 	push	ar2
      00247B C0 00            [24] 1167 	push	ar0
      00247D E5 10            [12] 1168 	mov	a,_bp
      00247F 24 06            [12] 1169 	add	a,#0x06
      002481 F8               [12] 1170 	mov	r0,a
      002482 C0 01            [24] 1171 	push	ar1
      002484 E5 10            [12] 1172 	mov	a,_bp
      002486 24 07            [12] 1173 	add	a,#0x07
      002488 F9               [12] 1174 	mov	r1,a
      002489 E6               [12] 1175 	mov	a,@r0
      00248A F7               [12] 1176 	mov	@r1,a
      00248B 09               [12] 1177 	inc	r1
      00248C 77 00            [12] 1178 	mov	@r1,#0x00
      00248E 09               [12] 1179 	inc	r1
      00248F 77 40            [12] 1180 	mov	@r1,#0x40
      002491 D0 01            [24] 1181 	pop	ar1
      002493 D0 00            [24] 1182 	pop	ar0
      002495 8E 04            [24] 1183 	mov	ar4,r6
      002497 7D 00            [12] 1184 	mov	r5,#0x00
      002499 7F 40            [12] 1185 	mov	r7,#0x40
      00249B C0 06            [24] 1186 	push	ar6
      00249D C0 03            [24] 1187 	push	ar3
      00249F C0 02            [24] 1188 	push	ar2
      0024A1 C0 01            [24] 1189 	push	ar1
      0024A3 C0 00            [24] 1190 	push	ar0
      0024A5 85 00 F0         [24] 1191 	mov	b,ar0
      0024A8 E5 10            [12] 1192 	mov	a,_bp
      0024AA 24 12            [12] 1193 	add	a,#0x12
      0024AC F8               [12] 1194 	mov	r0,a
      0024AD E6               [12] 1195 	mov	a,@r0
      0024AE C0 E0            [24] 1196 	push	acc
      0024B0 A8 F0            [24] 1197 	mov	r0,b
      0024B2 85 00 F0         [24] 1198 	mov	b,ar0
      0024B5 E5 10            [12] 1199 	mov	a,_bp
      0024B7 24 07            [12] 1200 	add	a,#0x07
      0024B9 F8               [12] 1201 	mov	r0,a
      0024BA E6               [12] 1202 	mov	a,@r0
      0024BB C0 E0            [24] 1203 	push	acc
      0024BD 08               [12] 1204 	inc	r0
      0024BE E6               [12] 1205 	mov	a,@r0
      0024BF C0 E0            [24] 1206 	push	acc
      0024C1 08               [12] 1207 	inc	r0
      0024C2 E6               [12] 1208 	mov	a,@r0
      0024C3 C0 E0            [24] 1209 	push	acc
      0024C5 8C 82            [24] 1210 	mov	dpl,r4
      0024C7 8D 83            [24] 1211 	mov	dph,r5
      0024C9 8F F0            [24] 1212 	mov	b,r7
      0024CB 12 20 97         [24] 1213 	lcall	_update
      0024CE AD 82            [24] 1214 	mov	r5,dpl
      0024D0 AF 83            [24] 1215 	mov	r7,dph
      0024D2 E5 81            [12] 1216 	mov	a,sp
      0024D4 24 FC            [12] 1217 	add	a,#0xfc
      0024D6 F5 81            [12] 1218 	mov	sp,a
      0024D8 D0 00            [24] 1219 	pop	ar0
      0024DA D0 01            [24] 1220 	pop	ar1
      0024DC D0 02            [24] 1221 	pop	ar2
      0024DE D0 03            [24] 1222 	pop	ar3
      0024E0 D0 06            [24] 1223 	pop	ar6
      0024E2 D0 02            [24] 1224 	pop	ar2
      0024E4 ED               [12] 1225 	mov	a,r5
      0024E5 4F               [12] 1226 	orl	a,r7
      0024E6 60 01            [24] 1227 	jz	00105$
                                   1228 ;	walk.c:118: f++;
      0024E8 0B               [12] 1229 	inc	r3
      0024E9                       1230 00105$:
                                   1231 ;	walk.c:116: for (j = 0, f = 0; j < NMAX; j++) {
      0024E9 C0 00            [24] 1232 	push	ar0
      0024EB E5 10            [12] 1233 	mov	a,_bp
      0024ED 24 12            [12] 1234 	add	a,#0x12
      0024EF F8               [12] 1235 	mov	r0,a
      0024F0 06               [12] 1236 	inc	@r0
      0024F1 D0 00            [24] 1237 	pop	ar0
      0024F3 02 24 68         [24] 1238 	ljmp	00120$
      0024F6                       1239 00106$:
                                   1240 ;	walk.c:121: if (f) {
      0024F6 EB               [12] 1241 	mov	a,r3
      0024F7 70 03            [24] 1242 	jnz	00163$
      0024F9 02 26 2E         [24] 1243 	ljmp	00115$
      0024FC                       1244 00163$:
                                   1245 ;	walk.c:122: while (1) {
      0024FC                       1246 00112$:
                                   1247 ;	walk.c:123: j = rand() % NMAX;
      0024FC C0 02            [24] 1248 	push	ar2
      0024FE C0 06            [24] 1249 	push	ar6
      002500 C0 02            [24] 1250 	push	ar2
      002502 C0 01            [24] 1251 	push	ar1
      002504 C0 00            [24] 1252 	push	ar0
      002506 12 2B 1A         [24] 1253 	lcall	_rand
      002509 AD 82            [24] 1254 	mov	r5,dpl
      00250B AF 83            [24] 1255 	mov	r7,dph
      00250D 74 10            [12] 1256 	mov	a,#0x10
      00250F C0 E0            [24] 1257 	push	acc
      002511 E4               [12] 1258 	clr	a
      002512 C0 E0            [24] 1259 	push	acc
      002514 8D 82            [24] 1260 	mov	dpl,r5
      002516 8F 83            [24] 1261 	mov	dph,r7
      002518 12 2E 1E         [24] 1262 	lcall	__modsint
      00251B AD 82            [24] 1263 	mov	r5,dpl
      00251D 15 81            [12] 1264 	dec	sp
      00251F 15 81            [12] 1265 	dec	sp
      002521 D0 00            [24] 1266 	pop	ar0
      002523 D0 01            [24] 1267 	pop	ar1
      002525 D0 02            [24] 1268 	pop	ar2
      002527 D0 06            [24] 1269 	pop	ar6
      002529 8D 04            [24] 1270 	mov	ar4,r5
                                   1271 ;	walk.c:124: if (!update(&t, &cur, j)) continue;
      00252B C0 00            [24] 1272 	push	ar0
      00252D E5 10            [12] 1273 	mov	a,_bp
      00252F 24 05            [12] 1274 	add	a,#0x05
      002531 F8               [12] 1275 	mov	r0,a
      002532 C0 01            [24] 1276 	push	ar1
      002534 E5 10            [12] 1277 	mov	a,_bp
      002536 24 07            [12] 1278 	add	a,#0x07
      002538 F9               [12] 1279 	mov	r1,a
      002539 E6               [12] 1280 	mov	a,@r0
      00253A F7               [12] 1281 	mov	@r1,a
      00253B 09               [12] 1282 	inc	r1
      00253C 77 00            [12] 1283 	mov	@r1,#0x00
      00253E 09               [12] 1284 	inc	r1
      00253F 77 40            [12] 1285 	mov	@r1,#0x40
      002541 D0 01            [24] 1286 	pop	ar1
      002543 E5 10            [12] 1287 	mov	a,_bp
      002545 24 04            [12] 1288 	add	a,#0x04
      002547 F8               [12] 1289 	mov	r0,a
      002548 86 02            [24] 1290 	mov	ar2,@r0
      00254A 7D 00            [12] 1291 	mov	r5,#0x00
      00254C 7F 40            [12] 1292 	mov	r7,#0x40
      00254E D0 00            [24] 1293 	pop	ar0
      002550 C0 06            [24] 1294 	push	ar6
      002552 C0 02            [24] 1295 	push	ar2
      002554 C0 01            [24] 1296 	push	ar1
      002556 C0 00            [24] 1297 	push	ar0
      002558 C0 04            [24] 1298 	push	ar4
      00255A 85 00 F0         [24] 1299 	mov	b,ar0
      00255D E5 10            [12] 1300 	mov	a,_bp
      00255F 24 07            [12] 1301 	add	a,#0x07
      002561 F8               [12] 1302 	mov	r0,a
      002562 E6               [12] 1303 	mov	a,@r0
      002563 C0 E0            [24] 1304 	push	acc
      002565 08               [12] 1305 	inc	r0
      002566 E6               [12] 1306 	mov	a,@r0
      002567 C0 E0            [24] 1307 	push	acc
      002569 08               [12] 1308 	inc	r0
      00256A E6               [12] 1309 	mov	a,@r0
      00256B C0 E0            [24] 1310 	push	acc
      00256D 8A 82            [24] 1311 	mov	dpl,r2
      00256F 8D 83            [24] 1312 	mov	dph,r5
      002571 8F F0            [24] 1313 	mov	b,r7
      002573 12 20 97         [24] 1314 	lcall	_update
      002576 AD 82            [24] 1315 	mov	r5,dpl
      002578 AF 83            [24] 1316 	mov	r7,dph
      00257A E5 81            [12] 1317 	mov	a,sp
      00257C 24 FC            [12] 1318 	add	a,#0xfc
      00257E F5 81            [12] 1319 	mov	sp,a
      002580 D0 00            [24] 1320 	pop	ar0
      002582 D0 01            [24] 1321 	pop	ar1
      002584 D0 02            [24] 1322 	pop	ar2
      002586 D0 06            [24] 1323 	pop	ar6
      002588 D0 02            [24] 1324 	pop	ar2
      00258A ED               [12] 1325 	mov	a,r5
      00258B 4F               [12] 1326 	orl	a,r7
      00258C 70 03            [24] 1327 	jnz	00164$
      00258E 02 24 FC         [24] 1328 	ljmp	00112$
      002591                       1329 00164$:
                                   1330 ;	walk.c:126: if (!stpush(&cur)) bang();
      002591 8A 04            [24] 1331 	mov	ar4,r2
      002593 7D 00            [12] 1332 	mov	r5,#0x00
      002595 7F 40            [12] 1333 	mov	r7,#0x40
      002597 8C 82            [24] 1334 	mov	dpl,r4
      002599 8D 83            [24] 1335 	mov	dph,r5
      00259B 8F F0            [24] 1336 	mov	b,r7
      00259D C0 06            [24] 1337 	push	ar6
      00259F C0 02            [24] 1338 	push	ar2
      0025A1 C0 01            [24] 1339 	push	ar1
      0025A3 C0 00            [24] 1340 	push	ar0
      0025A5 12 2A 57         [24] 1341 	lcall	_stpush
      0025A8 E5 82            [12] 1342 	mov	a,dpl
      0025AA 85 83 F0         [24] 1343 	mov	b,dph
      0025AD D0 00            [24] 1344 	pop	ar0
      0025AF D0 01            [24] 1345 	pop	ar1
      0025B1 D0 02            [24] 1346 	pop	ar2
      0025B3 D0 06            [24] 1347 	pop	ar6
      0025B5 45 F0            [12] 1348 	orl	a,b
      0025B7 70 13            [24] 1349 	jnz	00110$
      0025B9 C0 06            [24] 1350 	push	ar6
      0025BB C0 02            [24] 1351 	push	ar2
      0025BD C0 01            [24] 1352 	push	ar1
      0025BF C0 00            [24] 1353 	push	ar0
      0025C1 12 20 8B         [24] 1354 	lcall	_bang
      0025C4 D0 00            [24] 1355 	pop	ar0
      0025C6 D0 01            [24] 1356 	pop	ar1
      0025C8 D0 02            [24] 1357 	pop	ar2
      0025CA D0 06            [24] 1358 	pop	ar6
      0025CC                       1359 00110$:
                                   1360 ;	walk.c:127: cur = t;
      0025CC C0 02            [24] 1361 	push	ar2
      0025CE C0 00            [24] 1362 	push	ar0
      0025D0 A8 10            [24] 1363 	mov	r0,_bp
      0025D2 08               [12] 1364 	inc	r0
      0025D3 C0 01            [24] 1365 	push	ar1
      0025D5 E5 10            [12] 1366 	mov	a,_bp
      0025D7 24 07            [12] 1367 	add	a,#0x07
      0025D9 F9               [12] 1368 	mov	r1,a
      0025DA E6               [12] 1369 	mov	a,@r0
      0025DB F7               [12] 1370 	mov	@r1,a
      0025DC 09               [12] 1371 	inc	r1
      0025DD 77 00            [12] 1372 	mov	@r1,#0x00
      0025DF 09               [12] 1373 	inc	r1
      0025E0 77 40            [12] 1374 	mov	@r1,#0x40
      0025E2 D0 01            [24] 1375 	pop	ar1
      0025E4 A8 10            [24] 1376 	mov	r0,_bp
      0025E6 08               [12] 1377 	inc	r0
      0025E7 08               [12] 1378 	inc	r0
      0025E8 86 02            [24] 1379 	mov	ar2,@r0
      0025EA 7B 00            [12] 1380 	mov	r3,#0x00
      0025EC 7F 40            [12] 1381 	mov	r7,#0x40
      0025EE D0 00            [24] 1382 	pop	ar0
      0025F0 C0 06            [24] 1383 	push	ar6
      0025F2 C0 02            [24] 1384 	push	ar2
      0025F4 C0 01            [24] 1385 	push	ar1
      0025F6 C0 00            [24] 1386 	push	ar0
      0025F8 74 04            [12] 1387 	mov	a,#0x04
      0025FA C0 E0            [24] 1388 	push	acc
      0025FC E4               [12] 1389 	clr	a
      0025FD C0 E0            [24] 1390 	push	acc
      0025FF 85 00 F0         [24] 1391 	mov	b,ar0
      002602 E5 10            [12] 1392 	mov	a,_bp
      002604 24 07            [12] 1393 	add	a,#0x07
      002606 F8               [12] 1394 	mov	r0,a
      002607 E6               [12] 1395 	mov	a,@r0
      002608 C0 E0            [24] 1396 	push	acc
      00260A 08               [12] 1397 	inc	r0
      00260B E6               [12] 1398 	mov	a,@r0
      00260C C0 E0            [24] 1399 	push	acc
      00260E 08               [12] 1400 	inc	r0
      00260F E6               [12] 1401 	mov	a,@r0
      002610 C0 E0            [24] 1402 	push	acc
      002612 8A 82            [24] 1403 	mov	dpl,r2
      002614 8B 83            [24] 1404 	mov	dph,r3
      002616 8F F0            [24] 1405 	mov	b,r7
      002618 12 2C B0         [24] 1406 	lcall	___memcpy
      00261B E5 81            [12] 1407 	mov	a,sp
      00261D 24 FB            [12] 1408 	add	a,#0xfb
      00261F F5 81            [12] 1409 	mov	sp,a
      002621 D0 00            [24] 1410 	pop	ar0
      002623 D0 01            [24] 1411 	pop	ar1
      002625 D0 02            [24] 1412 	pop	ar2
      002627 D0 06            [24] 1413 	pop	ar6
                                   1414 ;	walk.c:128: goto process;
      002629 D0 02            [24] 1415 	pop	ar2
      00262B 02 23 90         [24] 1416 	ljmp	00101$
      00262E                       1417 00115$:
                                   1418 ;	walk.c:132: printf("\033[%d;%dH.", cur.r + 4, cur.c + 1);
      00262E 86 05            [24] 1419 	mov	ar5,@r0
      002630 08               [12] 1420 	inc	r0
      002631 86 07            [24] 1421 	mov	ar7,@r0
      002633 18               [12] 1422 	dec	r0
      002634 0D               [12] 1423 	inc	r5
      002635 BD 00 01         [24] 1424 	cjne	r5,#0x00,00166$
      002638 0F               [12] 1425 	inc	r7
      002639                       1426 00166$:
      002639 87 03            [24] 1427 	mov	ar3,@r1
      00263B 09               [12] 1428 	inc	r1
      00263C 87 04            [24] 1429 	mov	ar4,@r1
      00263E 19               [12] 1430 	dec	r1
      00263F 74 04            [12] 1431 	mov	a,#0x04
      002641 2B               [12] 1432 	add	a,r3
      002642 FB               [12] 1433 	mov	r3,a
      002643 E4               [12] 1434 	clr	a
      002644 3C               [12] 1435 	addc	a,r4
      002645 FC               [12] 1436 	mov	r4,a
      002646 C0 06            [24] 1437 	push	ar6
      002648 C0 02            [24] 1438 	push	ar2
      00264A C0 01            [24] 1439 	push	ar1
      00264C C0 00            [24] 1440 	push	ar0
      00264E C0 05            [24] 1441 	push	ar5
      002650 C0 07            [24] 1442 	push	ar7
      002652 C0 03            [24] 1443 	push	ar3
      002654 C0 04            [24] 1444 	push	ar4
      002656 74 26            [12] 1445 	mov	a,#___str_3
      002658 C0 E0            [24] 1446 	push	acc
      00265A 74 41            [12] 1447 	mov	a,#(___str_3 >> 8)
      00265C C0 E0            [24] 1448 	push	acc
      00265E 74 80            [12] 1449 	mov	a,#0x80
      002660 C0 E0            [24] 1450 	push	acc
      002662 12 2D C9         [24] 1451 	lcall	_printf
      002665 E5 81            [12] 1452 	mov	a,sp
      002667 24 F9            [12] 1453 	add	a,#0xf9
      002669 F5 81            [12] 1454 	mov	sp,a
      00266B D0 00            [24] 1455 	pop	ar0
      00266D D0 01            [24] 1456 	pop	ar1
      00266F D0 02            [24] 1457 	pop	ar2
      002671 D0 06            [24] 1458 	pop	ar6
                                   1459 ;	walk.c:134: if (!stpop(&cur)) goto term;
      002673 C0 00            [24] 1460 	push	ar0
      002675 E5 10            [12] 1461 	mov	a,_bp
      002677 24 03            [12] 1462 	add	a,#0x03
      002679 F8               [12] 1463 	mov	r0,a
      00267A 86 04            [24] 1464 	mov	ar4,@r0
      00267C 7D 00            [12] 1465 	mov	r5,#0x00
      00267E 7F 40            [12] 1466 	mov	r7,#0x40
      002680 D0 00            [24] 1467 	pop	ar0
      002682 8C 82            [24] 1468 	mov	dpl,r4
      002684 8D 83            [24] 1469 	mov	dph,r5
      002686 8F F0            [24] 1470 	mov	b,r7
      002688 C0 06            [24] 1471 	push	ar6
      00268A C0 02            [24] 1472 	push	ar2
      00268C C0 01            [24] 1473 	push	ar1
      00268E C0 00            [24] 1474 	push	ar0
      002690 12 2A B8         [24] 1475 	lcall	_stpop
      002693 E5 82            [12] 1476 	mov	a,dpl
      002695 85 83 F0         [24] 1477 	mov	b,dph
      002698 D0 00            [24] 1478 	pop	ar0
      00269A D0 01            [24] 1479 	pop	ar1
      00269C D0 02            [24] 1480 	pop	ar2
      00269E D0 06            [24] 1481 	pop	ar6
      0026A0 45 F0            [12] 1482 	orl	a,b
      0026A2 60 03            [24] 1483 	jz	00167$
      0026A4 02 24 14         [24] 1484 	ljmp	00102$
      0026A7                       1485 00167$:
                                   1486 ;	walk.c:138: return;
                                   1487 ;	walk.c:139: }
      0026A7 85 10 81         [24] 1488 	mov	sp,_bp
      0026AA D0 10            [24] 1489 	pop	_bp
      0026AC 22               [24] 1490 	ret
                                   1491 ;------------------------------------------------------------
                                   1492 ;Allocation info for local variables in function 'main'
                                   1493 ;------------------------------------------------------------
                                   1494 ;initial                   Allocated to stack - _bp +5
                                   1495 ;N                         Allocated to stack - _bp +9
                                   1496 ;i                         Allocated to stack - _bp +11
                                   1497 ;j                         Allocated to registers r2 r6 
                                   1498 ;sloc0                     Allocated to stack - _bp +1
                                   1499 ;sloc1                     Allocated to stack - _bp +3
                                   1500 ;sloc2                     Allocated to stack - _bp +15
                                   1501 ;R                         Allocated with name '_main_R_65536_64'
                                   1502 ;------------------------------------------------------------
                                   1503 ;	walk.c:141: int main(void) {
                                   1504 ;	-----------------------------------------
                                   1505 ;	 function main
                                   1506 ;	-----------------------------------------
      0026AD                       1507 _main:
      0026AD C0 10            [24] 1508 	push	_bp
      0026AF E5 81            [12] 1509 	mov	a,sp
      0026B1 F5 10            [12] 1510 	mov	_bp,a
      0026B3 24 0C            [12] 1511 	add	a,#0x0c
      0026B5 F5 81            [12] 1512 	mov	sp,a
                                   1513 ;	walk.c:147: i0 = 1;
      0026B7 78 11            [12] 1514 	mov	r0,#_i0
      0026B9 76 01            [12] 1515 	mov	@r0,#0x01
                                   1516 ;	walk.c:149: IT0 = 1;
                                   1517 ;	assignBit
      0026BB D2 88            [12] 1518 	setb	_IT0
                                   1519 ;	walk.c:150: EX0 = 1;
                                   1520 ;	assignBit
      0026BD D2 A8            [12] 1521 	setb	_EX0
                                   1522 ;	walk.c:151: EA = 1;
                                   1523 ;	assignBit
      0026BF D2 AF            [12] 1524 	setb	_EA
                                   1525 ;	walk.c:153: srand(*R);
      0026C1 90 FF 62         [24] 1526 	mov	dptr,#_main_R_65536_64
      0026C4 E0               [24] 1527 	movx	a,@dptr
      0026C5 FE               [12] 1528 	mov	r6,a
      0026C6 A3               [24] 1529 	inc	dptr
      0026C7 E0               [24] 1530 	movx	a,@dptr
      0026C8 FF               [12] 1531 	mov	r7,a
      0026C9 8E 82            [24] 1532 	mov	dpl,r6
      0026CB 8F 83            [24] 1533 	mov	dph,r7
      0026CD E0               [24] 1534 	movx	a,@dptr
      0026CE FE               [12] 1535 	mov	r6,a
      0026CF A3               [24] 1536 	inc	dptr
      0026D0 E0               [24] 1537 	movx	a,@dptr
      0026D1 FF               [12] 1538 	mov	r7,a
      0026D2 8E 82            [24] 1539 	mov	dpl,r6
      0026D4 8F 83            [24] 1540 	mov	dph,r7
      0026D6 12 2B DE         [24] 1541 	lcall	_srand
                                   1542 ;	walk.c:154: stinit();
      0026D9 12 2A 4E         [24] 1543 	lcall	_stinit
                                   1544 ;	walk.c:156: puts("\033[2J\033[?25l");
      0026DC 90 41 30         [24] 1545 	mov	dptr,#___str_4
      0026DF 75 F0 80         [24] 1546 	mov	b,#0x80
      0026E2 12 2D 43         [24] 1547 	lcall	_puts
                                   1548 ;	walk.c:158: while (i0) {
      0026E5 E5 10            [12] 1549 	mov	a,_bp
      0026E7 24 05            [12] 1550 	add	a,#0x05
      0026E9 F9               [12] 1551 	mov	r1,a
      0026EA FF               [12] 1552 	mov	r7,a
      0026EB E5 10            [12] 1553 	mov	a,_bp
      0026ED 24 09            [12] 1554 	add	a,#0x09
      0026EF F8               [12] 1555 	mov	r0,a
      0026F0 E4               [12] 1556 	clr	a
      0026F1 F6               [12] 1557 	mov	@r0,a
      0026F2 08               [12] 1558 	inc	r0
      0026F3 F6               [12] 1559 	mov	@r0,a
      0026F4                       1560 00108$:
      0026F4 78 11            [12] 1561 	mov	r0,#_i0
      0026F6 E6               [12] 1562 	mov	a,@r0
      0026F7 70 03            [24] 1563 	jnz	00181$
      0026F9 02 2A 37         [24] 1564 	ljmp	00110$
      0026FC                       1565 00181$:
                                   1566 ;	walk.c:159: for (i = 0; i < ROWS; i++)
      0026FC 7B 00            [12] 1567 	mov	r3,#0x00
      0026FE 7C 00            [12] 1568 	mov	r4,#0x00
      002700 A8 10            [24] 1569 	mov	r0,_bp
      002702 08               [12] 1570 	inc	r0
      002703 E4               [12] 1571 	clr	a
      002704 F6               [12] 1572 	mov	@r0,a
      002705 08               [12] 1573 	inc	r0
      002706 F6               [12] 1574 	mov	@r0,a
                                   1575 ;	walk.c:160: for (j = 0; j < COLS; j++)
      002707                       1576 00124$:
      002707 A8 10            [24] 1577 	mov	r0,_bp
      002709 08               [12] 1578 	inc	r0
      00270A C0 01            [24] 1579 	push	ar1
      00270C E5 10            [12] 1580 	mov	a,_bp
      00270E 24 03            [12] 1581 	add	a,#0x03
      002710 F9               [12] 1582 	mov	r1,a
      002711 E6               [12] 1583 	mov	a,@r0
      002712 24 00            [12] 1584 	add	a,#_g
      002714 F7               [12] 1585 	mov	@r1,a
      002715 08               [12] 1586 	inc	r0
      002716 E6               [12] 1587 	mov	a,@r0
      002717 34 42            [12] 1588 	addc	a,#(_g >> 8)
      002719 09               [12] 1589 	inc	r1
      00271A F7               [12] 1590 	mov	@r1,a
      00271B D0 01            [24] 1591 	pop	ar1
      00271D 7A 00            [12] 1592 	mov	r2,#0x00
      00271F 7E 00            [12] 1593 	mov	r6,#0x00
      002721                       1594 00111$:
                                   1595 ;	walk.c:161: g[i][j] = 0x55;
      002721 E5 10            [12] 1596 	mov	a,_bp
      002723 24 03            [12] 1597 	add	a,#0x03
      002725 F8               [12] 1598 	mov	r0,a
      002726 EA               [12] 1599 	mov	a,r2
      002727 26               [12] 1600 	add	a,@r0
      002728 F5 82            [12] 1601 	mov	dpl,a
      00272A EE               [12] 1602 	mov	a,r6
      00272B 08               [12] 1603 	inc	r0
      00272C 36               [12] 1604 	addc	a,@r0
      00272D F5 83            [12] 1605 	mov	dph,a
      00272F 74 55            [12] 1606 	mov	a,#0x55
      002731 F0               [24] 1607 	movx	@dptr,a
                                   1608 ;	walk.c:160: for (j = 0; j < COLS; j++)
      002732 0A               [12] 1609 	inc	r2
      002733 BA 00 01         [24] 1610 	cjne	r2,#0x00,00182$
      002736 0E               [12] 1611 	inc	r6
      002737                       1612 00182$:
      002737 C3               [12] 1613 	clr	c
      002738 EA               [12] 1614 	mov	a,r2
      002739 94 CA            [12] 1615 	subb	a,#0xca
      00273B EE               [12] 1616 	mov	a,r6
      00273C 64 80            [12] 1617 	xrl	a,#0x80
      00273E 94 80            [12] 1618 	subb	a,#0x80
      002740 40 DF            [24] 1619 	jc	00111$
                                   1620 ;	walk.c:159: for (i = 0; i < ROWS; i++)
      002742 A8 10            [24] 1621 	mov	r0,_bp
      002744 08               [12] 1622 	inc	r0
      002745 74 CA            [12] 1623 	mov	a,#0xca
      002747 26               [12] 1624 	add	a,@r0
      002748 F6               [12] 1625 	mov	@r0,a
      002749 E4               [12] 1626 	clr	a
      00274A 08               [12] 1627 	inc	r0
      00274B 36               [12] 1628 	addc	a,@r0
      00274C F6               [12] 1629 	mov	@r0,a
      00274D 0B               [12] 1630 	inc	r3
      00274E BB 00 01         [24] 1631 	cjne	r3,#0x00,00184$
      002751 0C               [12] 1632 	inc	r4
      002752                       1633 00184$:
      002752 C3               [12] 1634 	clr	c
      002753 EB               [12] 1635 	mov	a,r3
      002754 94 30            [12] 1636 	subb	a,#0x30
      002756 EC               [12] 1637 	mov	a,r4
      002757 64 80            [12] 1638 	xrl	a,#0x80
      002759 94 80            [12] 1639 	subb	a,#0x80
      00275B 40 AA            [24] 1640 	jc	00124$
                                   1641 ;	walk.c:163: initial.r = rand() % ROWS;
      00275D E5 10            [12] 1642 	mov	a,_bp
      00275F 24 05            [12] 1643 	add	a,#0x05
      002761 F8               [12] 1644 	mov	r0,a
      002762 C0 07            [24] 1645 	push	ar7
      002764 C0 01            [24] 1646 	push	ar1
      002766 C0 00            [24] 1647 	push	ar0
      002768 12 2B 1A         [24] 1648 	lcall	_rand
      00276B AD 82            [24] 1649 	mov	r5,dpl
      00276D AE 83            [24] 1650 	mov	r6,dph
      00276F 74 30            [12] 1651 	mov	a,#0x30
      002771 C0 E0            [24] 1652 	push	acc
      002773 E4               [12] 1653 	clr	a
      002774 C0 E0            [24] 1654 	push	acc
      002776 8D 82            [24] 1655 	mov	dpl,r5
      002778 8E 83            [24] 1656 	mov	dph,r6
      00277A 12 2E 1E         [24] 1657 	lcall	__modsint
      00277D AD 82            [24] 1658 	mov	r5,dpl
      00277F AE 83            [24] 1659 	mov	r6,dph
      002781 15 81            [12] 1660 	dec	sp
      002783 15 81            [12] 1661 	dec	sp
      002785 D0 00            [24] 1662 	pop	ar0
      002787 D0 01            [24] 1663 	pop	ar1
      002789 A6 05            [24] 1664 	mov	@r0,ar5
      00278B 08               [12] 1665 	inc	r0
      00278C A6 06            [24] 1666 	mov	@r0,ar6
      00278E 18               [12] 1667 	dec	r0
                                   1668 ;	walk.c:164: initial.c = rand() % COLS;
      00278F 74 02            [12] 1669 	mov	a,#0x02
      002791 29               [12] 1670 	add	a,r1
      002792 F8               [12] 1671 	mov	r0,a
      002793 C0 01            [24] 1672 	push	ar1
      002795 C0 00            [24] 1673 	push	ar0
      002797 12 2B 1A         [24] 1674 	lcall	_rand
      00279A AD 82            [24] 1675 	mov	r5,dpl
      00279C AE 83            [24] 1676 	mov	r6,dph
      00279E 74 CA            [12] 1677 	mov	a,#0xca
      0027A0 C0 E0            [24] 1678 	push	acc
      0027A2 E4               [12] 1679 	clr	a
      0027A3 C0 E0            [24] 1680 	push	acc
      0027A5 8D 82            [24] 1681 	mov	dpl,r5
      0027A7 8E 83            [24] 1682 	mov	dph,r6
      0027A9 12 2E 1E         [24] 1683 	lcall	__modsint
      0027AC AD 82            [24] 1684 	mov	r5,dpl
      0027AE AE 83            [24] 1685 	mov	r6,dph
      0027B0 15 81            [12] 1686 	dec	sp
      0027B2 15 81            [12] 1687 	dec	sp
      0027B4 D0 00            [24] 1688 	pop	ar0
      0027B6 A6 05            [24] 1689 	mov	@r0,ar5
      0027B8 08               [12] 1690 	inc	r0
      0027B9 A6 06            [24] 1691 	mov	@r0,ar6
      0027BB 18               [12] 1692 	dec	r0
                                   1693 ;	walk.c:166: puts("\033[2J\033[?25l");
      0027BC 90 41 30         [24] 1694 	mov	dptr,#___str_4
      0027BF 75 F0 80         [24] 1695 	mov	b,#0x80
      0027C2 C0 00            [24] 1696 	push	ar0
      0027C4 12 2D 43         [24] 1697 	lcall	_puts
      0027C7 D0 00            [24] 1698 	pop	ar0
      0027C9 D0 01            [24] 1699 	pop	ar1
                                   1700 ;	walk.c:167: printf("\033[1;1H% 8u% 8d% 8d", N, initial.r, initial.c);
      0027CB 86 05            [24] 1701 	mov	ar5,@r0
      0027CD 08               [12] 1702 	inc	r0
      0027CE 86 06            [24] 1703 	mov	ar6,@r0
      0027D0 18               [12] 1704 	dec	r0
      0027D1 87 03            [24] 1705 	mov	ar3,@r1
      0027D3 09               [12] 1706 	inc	r1
      0027D4 87 04            [24] 1707 	mov	ar4,@r1
      0027D6 19               [12] 1708 	dec	r1
      0027D7 C0 01            [24] 1709 	push	ar1
      0027D9 C0 05            [24] 1710 	push	ar5
      0027DB C0 06            [24] 1711 	push	ar6
      0027DD C0 03            [24] 1712 	push	ar3
      0027DF C0 04            [24] 1713 	push	ar4
      0027E1 E5 10            [12] 1714 	mov	a,_bp
      0027E3 24 09            [12] 1715 	add	a,#0x09
      0027E5 F8               [12] 1716 	mov	r0,a
      0027E6 E6               [12] 1717 	mov	a,@r0
      0027E7 C0 E0            [24] 1718 	push	acc
      0027E9 08               [12] 1719 	inc	r0
      0027EA E6               [12] 1720 	mov	a,@r0
      0027EB C0 E0            [24] 1721 	push	acc
      0027ED 74 3B            [12] 1722 	mov	a,#___str_5
      0027EF C0 E0            [24] 1723 	push	acc
      0027F1 74 41            [12] 1724 	mov	a,#(___str_5 >> 8)
      0027F3 C0 E0            [24] 1725 	push	acc
      0027F5 74 80            [12] 1726 	mov	a,#0x80
      0027F7 C0 E0            [24] 1727 	push	acc
      0027F9 12 2D C9         [24] 1728 	lcall	_printf
      0027FC E5 81            [12] 1729 	mov	a,sp
      0027FE 24 F7            [12] 1730 	add	a,#0xf7
      002800 F5 81            [12] 1731 	mov	sp,a
      002802 D0 01            [24] 1732 	pop	ar1
      002804 D0 07            [24] 1733 	pop	ar7
                                   1734 ;	walk.c:169: for (i = 0; i < (2 * REG); i++) {
      002806 E5 10            [12] 1735 	mov	a,_bp
      002808 24 0B            [12] 1736 	add	a,#0x0b
      00280A F8               [12] 1737 	mov	r0,a
      00280B E4               [12] 1738 	clr	a
      00280C F6               [12] 1739 	mov	@r0,a
      00280D 08               [12] 1740 	inc	r0
      00280E F6               [12] 1741 	mov	@r0,a
      00280F                       1742 00115$:
                                   1743 ;	walk.c:170: neigh[i].r = neigh_tmpl[i].r * (1 + rand() % 4);
      00280F C0 07            [24] 1744 	push	ar7
      002811 E5 10            [12] 1745 	mov	a,_bp
      002813 24 0B            [12] 1746 	add	a,#0x0b
      002815 F8               [12] 1747 	mov	r0,a
      002816 E6               [12] 1748 	mov	a,@r0
      002817 25 E0            [12] 1749 	add	a,acc
      002819 FB               [12] 1750 	mov	r3,a
      00281A 08               [12] 1751 	inc	r0
      00281B E6               [12] 1752 	mov	a,@r0
      00281C 33               [12] 1753 	rlc	a
      00281D FC               [12] 1754 	mov	r4,a
      00281E EB               [12] 1755 	mov	a,r3
      00281F 2B               [12] 1756 	add	a,r3
      002820 FB               [12] 1757 	mov	r3,a
      002821 EC               [12] 1758 	mov	a,r4
      002822 33               [12] 1759 	rlc	a
      002823 FC               [12] 1760 	mov	r4,a
      002824 EB               [12] 1761 	mov	a,r3
      002825 24 A4            [12] 1762 	add	a,#_neigh
      002827 FA               [12] 1763 	mov	r2,a
      002828 EC               [12] 1764 	mov	a,r4
      002829 34 FF            [12] 1765 	addc	a,#(_neigh >> 8)
      00282B FF               [12] 1766 	mov	r7,a
      00282C EB               [12] 1767 	mov	a,r3
      00282D 24 64            [12] 1768 	add	a,#_neigh_tmpl
      00282F F5 82            [12] 1769 	mov	dpl,a
      002831 EC               [12] 1770 	mov	a,r4
      002832 34 FF            [12] 1771 	addc	a,#(_neigh_tmpl >> 8)
      002834 F5 83            [12] 1772 	mov	dph,a
      002836 E5 10            [12] 1773 	mov	a,_bp
      002838 24 03            [12] 1774 	add	a,#0x03
      00283A F8               [12] 1775 	mov	r0,a
      00283B E0               [24] 1776 	movx	a,@dptr
      00283C F6               [12] 1777 	mov	@r0,a
      00283D A3               [24] 1778 	inc	dptr
      00283E E0               [24] 1779 	movx	a,@dptr
      00283F 08               [12] 1780 	inc	r0
      002840 F6               [12] 1781 	mov	@r0,a
      002841 C0 07            [24] 1782 	push	ar7
      002843 C0 04            [24] 1783 	push	ar4
      002845 C0 03            [24] 1784 	push	ar3
      002847 C0 02            [24] 1785 	push	ar2
      002849 C0 01            [24] 1786 	push	ar1
      00284B 12 2B 1A         [24] 1787 	lcall	_rand
      00284E AD 82            [24] 1788 	mov	r5,dpl
      002850 AE 83            [24] 1789 	mov	r6,dph
      002852 74 04            [12] 1790 	mov	a,#0x04
      002854 C0 E0            [24] 1791 	push	acc
      002856 E4               [12] 1792 	clr	a
      002857 C0 E0            [24] 1793 	push	acc
      002859 8D 82            [24] 1794 	mov	dpl,r5
      00285B 8E 83            [24] 1795 	mov	dph,r6
      00285D 12 2E 1E         [24] 1796 	lcall	__modsint
      002860 AD 82            [24] 1797 	mov	r5,dpl
      002862 AE 83            [24] 1798 	mov	r6,dph
      002864 15 81            [12] 1799 	dec	sp
      002866 15 81            [12] 1800 	dec	sp
      002868 D0 01            [24] 1801 	pop	ar1
      00286A D0 02            [24] 1802 	pop	ar2
      00286C D0 03            [24] 1803 	pop	ar3
      00286E D0 04            [24] 1804 	pop	ar4
      002870 D0 07            [24] 1805 	pop	ar7
      002872 0D               [12] 1806 	inc	r5
      002873 BD 00 01         [24] 1807 	cjne	r5,#0x00,00186$
      002876 0E               [12] 1808 	inc	r6
      002877                       1809 00186$:
      002877 C0 07            [24] 1810 	push	ar7
      002879 C0 04            [24] 1811 	push	ar4
      00287B C0 03            [24] 1812 	push	ar3
      00287D C0 02            [24] 1813 	push	ar2
      00287F C0 01            [24] 1814 	push	ar1
      002881 C0 05            [24] 1815 	push	ar5
      002883 C0 06            [24] 1816 	push	ar6
      002885 E5 10            [12] 1817 	mov	a,_bp
      002887 24 03            [12] 1818 	add	a,#0x03
      002889 F8               [12] 1819 	mov	r0,a
      00288A 86 82            [24] 1820 	mov	dpl,@r0
      00288C 08               [12] 1821 	inc	r0
      00288D 86 83            [24] 1822 	mov	dph,@r0
      00288F 12 2C 12         [24] 1823 	lcall	__mulint
      002892 AD 82            [24] 1824 	mov	r5,dpl
      002894 AE 83            [24] 1825 	mov	r6,dph
      002896 15 81            [12] 1826 	dec	sp
      002898 15 81            [12] 1827 	dec	sp
      00289A D0 01            [24] 1828 	pop	ar1
      00289C D0 02            [24] 1829 	pop	ar2
      00289E D0 03            [24] 1830 	pop	ar3
      0028A0 D0 04            [24] 1831 	pop	ar4
      0028A2 D0 07            [24] 1832 	pop	ar7
      0028A4 8A 82            [24] 1833 	mov	dpl,r2
      0028A6 8F 83            [24] 1834 	mov	dph,r7
      0028A8 ED               [12] 1835 	mov	a,r5
      0028A9 F0               [24] 1836 	movx	@dptr,a
      0028AA EE               [12] 1837 	mov	a,r6
      0028AB A3               [24] 1838 	inc	dptr
      0028AC F0               [24] 1839 	movx	@dptr,a
                                   1840 ;	walk.c:171: neigh[i].c = neigh_tmpl[i].c * (1 + rand() % 4);
      0028AD EB               [12] 1841 	mov	a,r3
      0028AE 24 A4            [12] 1842 	add	a,#_neigh
      0028B0 FE               [12] 1843 	mov	r6,a
      0028B1 EC               [12] 1844 	mov	a,r4
      0028B2 34 FF            [12] 1845 	addc	a,#(_neigh >> 8)
      0028B4 FF               [12] 1846 	mov	r7,a
      0028B5 74 02            [12] 1847 	mov	a,#0x02
      0028B7 2E               [12] 1848 	add	a,r6
      0028B8 FA               [12] 1849 	mov	r2,a
      0028B9 E4               [12] 1850 	clr	a
      0028BA 3F               [12] 1851 	addc	a,r7
      0028BB FD               [12] 1852 	mov	r5,a
      0028BC EB               [12] 1853 	mov	a,r3
      0028BD 24 64            [12] 1854 	add	a,#_neigh_tmpl
      0028BF FB               [12] 1855 	mov	r3,a
      0028C0 EC               [12] 1856 	mov	a,r4
      0028C1 34 FF            [12] 1857 	addc	a,#(_neigh_tmpl >> 8)
      0028C3 FC               [12] 1858 	mov	r4,a
      0028C4 8B 82            [24] 1859 	mov	dpl,r3
      0028C6 8C 83            [24] 1860 	mov	dph,r4
      0028C8 A3               [24] 1861 	inc	dptr
      0028C9 A3               [24] 1862 	inc	dptr
      0028CA E5 10            [12] 1863 	mov	a,_bp
      0028CC 24 03            [12] 1864 	add	a,#0x03
      0028CE F8               [12] 1865 	mov	r0,a
      0028CF E0               [24] 1866 	movx	a,@dptr
      0028D0 F6               [12] 1867 	mov	@r0,a
      0028D1 A3               [24] 1868 	inc	dptr
      0028D2 E0               [24] 1869 	movx	a,@dptr
      0028D3 08               [12] 1870 	inc	r0
      0028D4 F6               [12] 1871 	mov	@r0,a
      0028D5 C0 07            [24] 1872 	push	ar7
      0028D7 C0 06            [24] 1873 	push	ar6
      0028D9 C0 05            [24] 1874 	push	ar5
      0028DB C0 02            [24] 1875 	push	ar2
      0028DD C0 01            [24] 1876 	push	ar1
      0028DF 12 2B 1A         [24] 1877 	lcall	_rand
      0028E2 AB 82            [24] 1878 	mov	r3,dpl
      0028E4 AC 83            [24] 1879 	mov	r4,dph
      0028E6 74 04            [12] 1880 	mov	a,#0x04
      0028E8 C0 E0            [24] 1881 	push	acc
      0028EA E4               [12] 1882 	clr	a
      0028EB C0 E0            [24] 1883 	push	acc
      0028ED 8B 82            [24] 1884 	mov	dpl,r3
      0028EF 8C 83            [24] 1885 	mov	dph,r4
      0028F1 12 2E 1E         [24] 1886 	lcall	__modsint
      0028F4 AB 82            [24] 1887 	mov	r3,dpl
      0028F6 AC 83            [24] 1888 	mov	r4,dph
      0028F8 15 81            [12] 1889 	dec	sp
      0028FA 15 81            [12] 1890 	dec	sp
      0028FC D0 01            [24] 1891 	pop	ar1
      0028FE D0 02            [24] 1892 	pop	ar2
      002900 D0 05            [24] 1893 	pop	ar5
      002902 D0 06            [24] 1894 	pop	ar6
      002904 D0 07            [24] 1895 	pop	ar7
      002906 0B               [12] 1896 	inc	r3
      002907 BB 00 01         [24] 1897 	cjne	r3,#0x00,00187$
      00290A 0C               [12] 1898 	inc	r4
      00290B                       1899 00187$:
      00290B C0 07            [24] 1900 	push	ar7
      00290D C0 06            [24] 1901 	push	ar6
      00290F C0 05            [24] 1902 	push	ar5
      002911 C0 02            [24] 1903 	push	ar2
      002913 C0 01            [24] 1904 	push	ar1
      002915 C0 03            [24] 1905 	push	ar3
      002917 C0 04            [24] 1906 	push	ar4
      002919 E5 10            [12] 1907 	mov	a,_bp
      00291B 24 03            [12] 1908 	add	a,#0x03
      00291D F8               [12] 1909 	mov	r0,a
      00291E 86 82            [24] 1910 	mov	dpl,@r0
      002920 08               [12] 1911 	inc	r0
      002921 86 83            [24] 1912 	mov	dph,@r0
      002923 12 2C 12         [24] 1913 	lcall	__mulint
      002926 AB 82            [24] 1914 	mov	r3,dpl
      002928 AC 83            [24] 1915 	mov	r4,dph
      00292A 15 81            [12] 1916 	dec	sp
      00292C 15 81            [12] 1917 	dec	sp
      00292E D0 01            [24] 1918 	pop	ar1
      002930 D0 02            [24] 1919 	pop	ar2
      002932 D0 05            [24] 1920 	pop	ar5
      002934 D0 06            [24] 1921 	pop	ar6
      002936 D0 07            [24] 1922 	pop	ar7
      002938 8A 82            [24] 1923 	mov	dpl,r2
      00293A 8D 83            [24] 1924 	mov	dph,r5
      00293C EB               [12] 1925 	mov	a,r3
      00293D F0               [24] 1926 	movx	@dptr,a
      00293E EC               [12] 1927 	mov	a,r4
      00293F A3               [24] 1928 	inc	dptr
      002940 F0               [24] 1929 	movx	@dptr,a
                                   1930 ;	walk.c:172: printf("% 8d% 8d", neigh[i].r, neigh[i].c);
      002941 8E 82            [24] 1931 	mov	dpl,r6
      002943 8F 83            [24] 1932 	mov	dph,r7
      002945 E0               [24] 1933 	movx	a,@dptr
      002946 FE               [12] 1934 	mov	r6,a
      002947 A3               [24] 1935 	inc	dptr
      002948 E0               [24] 1936 	movx	a,@dptr
      002949 FF               [12] 1937 	mov	r7,a
      00294A C0 07            [24] 1938 	push	ar7
      00294C C0 01            [24] 1939 	push	ar1
      00294E C0 03            [24] 1940 	push	ar3
      002950 C0 04            [24] 1941 	push	ar4
      002952 C0 06            [24] 1942 	push	ar6
      002954 C0 07            [24] 1943 	push	ar7
      002956 74 4E            [12] 1944 	mov	a,#___str_6
      002958 C0 E0            [24] 1945 	push	acc
      00295A 74 41            [12] 1946 	mov	a,#(___str_6 >> 8)
      00295C C0 E0            [24] 1947 	push	acc
      00295E 74 80            [12] 1948 	mov	a,#0x80
      002960 C0 E0            [24] 1949 	push	acc
      002962 12 2D C9         [24] 1950 	lcall	_printf
      002965 E5 81            [12] 1951 	mov	a,sp
      002967 24 F9            [12] 1952 	add	a,#0xf9
      002969 F5 81            [12] 1953 	mov	sp,a
      00296B D0 01            [24] 1954 	pop	ar1
      00296D D0 07            [24] 1955 	pop	ar7
                                   1956 ;	walk.c:169: for (i = 0; i < (2 * REG); i++) {
      00296F E5 10            [12] 1957 	mov	a,_bp
      002971 24 0B            [12] 1958 	add	a,#0x0b
      002973 F8               [12] 1959 	mov	r0,a
      002974 06               [12] 1960 	inc	@r0
      002975 B6 00 02         [24] 1961 	cjne	@r0,#0x00,00188$
      002978 08               [12] 1962 	inc	r0
      002979 06               [12] 1963 	inc	@r0
      00297A                       1964 00188$:
      00297A E5 10            [12] 1965 	mov	a,_bp
      00297C 24 0B            [12] 1966 	add	a,#0x0b
      00297E F8               [12] 1967 	mov	r0,a
      00297F C3               [12] 1968 	clr	c
      002980 E6               [12] 1969 	mov	a,@r0
      002981 94 08            [12] 1970 	subb	a,#0x08
      002983 08               [12] 1971 	inc	r0
      002984 E6               [12] 1972 	mov	a,@r0
      002985 64 80            [12] 1973 	xrl	a,#0x80
      002987 94 80            [12] 1974 	subb	a,#0x80
      002989 D0 07            [24] 1975 	pop	ar7
      00298B 50 03            [24] 1976 	jnc	00189$
      00298D 02 28 0F         [24] 1977 	ljmp	00115$
      002990                       1978 00189$:
                                   1979 ;	walk.c:175: walk(&initial);
      002990 8F 04            [24] 1980 	mov	ar4,r7
      002992 7D 00            [12] 1981 	mov	r5,#0x00
      002994 7E 40            [12] 1982 	mov	r6,#0x40
      002996 8C 82            [24] 1983 	mov	dpl,r4
      002998 8D 83            [24] 1984 	mov	dph,r5
      00299A 8E F0            [24] 1985 	mov	b,r6
      00299C C0 07            [24] 1986 	push	ar7
      00299E C0 01            [24] 1987 	push	ar1
      0029A0 12 23 24         [24] 1988 	lcall	_walk
      0029A3 D0 01            [24] 1989 	pop	ar1
      0029A5 D0 07            [24] 1990 	pop	ar7
                                   1991 ;	walk.c:177: for (i = 0; i < ROWS; i++)
      0029A7 E5 10            [12] 1992 	mov	a,_bp
      0029A9 24 0B            [12] 1993 	add	a,#0x0b
      0029AB F8               [12] 1994 	mov	r0,a
      0029AC E4               [12] 1995 	clr	a
      0029AD F6               [12] 1996 	mov	@r0,a
      0029AE 08               [12] 1997 	inc	r0
      0029AF F6               [12] 1998 	mov	@r0,a
      0029B0 7B 00            [12] 1999 	mov	r3,#0x00
      0029B2 7C 00            [12] 2000 	mov	r4,#0x00
                                   2001 ;	walk.c:178: for (j = 0; j < COLS; j++)
      0029B4                       2002 00131$:
      0029B4 E5 10            [12] 2003 	mov	a,_bp
      0029B6 24 03            [12] 2004 	add	a,#0x03
      0029B8 F8               [12] 2005 	mov	r0,a
      0029B9 EB               [12] 2006 	mov	a,r3
      0029BA 24 00            [12] 2007 	add	a,#_g
      0029BC F6               [12] 2008 	mov	@r0,a
      0029BD EC               [12] 2009 	mov	a,r4
      0029BE 34 42            [12] 2010 	addc	a,#(_g >> 8)
      0029C0 08               [12] 2011 	inc	r0
      0029C1 F6               [12] 2012 	mov	@r0,a
      0029C2 7A 00            [12] 2013 	mov	r2,#0x00
      0029C4 7E 00            [12] 2014 	mov	r6,#0x00
      0029C6                       2015 00117$:
                                   2016 ;	walk.c:179: if (g[i][j] != 0xaa) bang();
      0029C6 E5 10            [12] 2017 	mov	a,_bp
      0029C8 24 03            [12] 2018 	add	a,#0x03
      0029CA F8               [12] 2019 	mov	r0,a
      0029CB EA               [12] 2020 	mov	a,r2
      0029CC 26               [12] 2021 	add	a,@r0
      0029CD F5 82            [12] 2022 	mov	dpl,a
      0029CF EE               [12] 2023 	mov	a,r6
      0029D0 08               [12] 2024 	inc	r0
      0029D1 36               [12] 2025 	addc	a,@r0
      0029D2 F5 83            [12] 2026 	mov	dph,a
      0029D4 E0               [24] 2027 	movx	a,@dptr
      0029D5 FD               [12] 2028 	mov	r5,a
      0029D6 BD AA 02         [24] 2029 	cjne	r5,#0xaa,00190$
      0029D9 80 1B            [24] 2030 	sjmp	00118$
      0029DB                       2031 00190$:
      0029DB C0 07            [24] 2032 	push	ar7
      0029DD C0 06            [24] 2033 	push	ar6
      0029DF C0 04            [24] 2034 	push	ar4
      0029E1 C0 03            [24] 2035 	push	ar3
      0029E3 C0 02            [24] 2036 	push	ar2
      0029E5 C0 01            [24] 2037 	push	ar1
      0029E7 12 20 8B         [24] 2038 	lcall	_bang
      0029EA D0 01            [24] 2039 	pop	ar1
      0029EC D0 02            [24] 2040 	pop	ar2
      0029EE D0 03            [24] 2041 	pop	ar3
      0029F0 D0 04            [24] 2042 	pop	ar4
      0029F2 D0 06            [24] 2043 	pop	ar6
      0029F4 D0 07            [24] 2044 	pop	ar7
      0029F6                       2045 00118$:
                                   2046 ;	walk.c:178: for (j = 0; j < COLS; j++)
      0029F6 0A               [12] 2047 	inc	r2
      0029F7 BA 00 01         [24] 2048 	cjne	r2,#0x00,00191$
      0029FA 0E               [12] 2049 	inc	r6
      0029FB                       2050 00191$:
      0029FB C3               [12] 2051 	clr	c
      0029FC EA               [12] 2052 	mov	a,r2
      0029FD 94 CA            [12] 2053 	subb	a,#0xca
      0029FF EE               [12] 2054 	mov	a,r6
      002A00 64 80            [12] 2055 	xrl	a,#0x80
      002A02 94 80            [12] 2056 	subb	a,#0x80
      002A04 40 C0            [24] 2057 	jc	00117$
                                   2058 ;	walk.c:177: for (i = 0; i < ROWS; i++)
      002A06 74 CA            [12] 2059 	mov	a,#0xca
      002A08 2B               [12] 2060 	add	a,r3
      002A09 FB               [12] 2061 	mov	r3,a
      002A0A E4               [12] 2062 	clr	a
      002A0B 3C               [12] 2063 	addc	a,r4
      002A0C FC               [12] 2064 	mov	r4,a
      002A0D E5 10            [12] 2065 	mov	a,_bp
      002A0F 24 0B            [12] 2066 	add	a,#0x0b
      002A11 F8               [12] 2067 	mov	r0,a
      002A12 06               [12] 2068 	inc	@r0
      002A13 B6 00 02         [24] 2069 	cjne	@r0,#0x00,00193$
      002A16 08               [12] 2070 	inc	r0
      002A17 06               [12] 2071 	inc	@r0
      002A18                       2072 00193$:
      002A18 E5 10            [12] 2073 	mov	a,_bp
      002A1A 24 0B            [12] 2074 	add	a,#0x0b
      002A1C F8               [12] 2075 	mov	r0,a
      002A1D C3               [12] 2076 	clr	c
      002A1E E6               [12] 2077 	mov	a,@r0
      002A1F 94 30            [12] 2078 	subb	a,#0x30
      002A21 08               [12] 2079 	inc	r0
      002A22 E6               [12] 2080 	mov	a,@r0
      002A23 64 80            [12] 2081 	xrl	a,#0x80
      002A25 94 80            [12] 2082 	subb	a,#0x80
      002A27 40 8B            [24] 2083 	jc	00131$
                                   2084 ;	walk.c:181: N++;
      002A29 E5 10            [12] 2085 	mov	a,_bp
      002A2B 24 09            [12] 2086 	add	a,#0x09
      002A2D F8               [12] 2087 	mov	r0,a
      002A2E 06               [12] 2088 	inc	@r0
      002A2F B6 00 02         [24] 2089 	cjne	@r0,#0x00,00195$
      002A32 08               [12] 2090 	inc	r0
      002A33 06               [12] 2091 	inc	@r0
      002A34                       2092 00195$:
      002A34 02 26 F4         [24] 2093 	ljmp	00108$
      002A37                       2094 00110$:
                                   2095 ;	walk.c:184: EA = 0;
                                   2096 ;	assignBit
      002A37 C2 AF            [12] 2097 	clr	_EA
                                   2098 ;	walk.c:186: puts("\033[2J\033[?25h");
      002A39 90 41 57         [24] 2099 	mov	dptr,#___str_7
      002A3C 75 F0 80         [24] 2100 	mov	b,#0x80
      002A3F 12 2D 43         [24] 2101 	lcall	_puts
                                   2102 ;	walk.c:190: __endasm;
      002A42 02 00 00         [24] 2103 	ljmp	0
                                   2104 ;	walk.c:192: return 0;
      002A45 90 00 00         [24] 2105 	mov	dptr,#0x0000
                                   2106 ;	walk.c:193: }
      002A48 85 10 81         [24] 2107 	mov	sp,_bp
      002A4B D0 10            [24] 2108 	pop	_bp
      002A4D 22               [24] 2109 	ret
                                   2110 ;------------------------------------------------------------
                                   2111 ;Allocation info for local variables in function 'stinit'
                                   2112 ;------------------------------------------------------------
                                   2113 ;	walk.c:195: static void stinit(void) {
                                   2114 ;	-----------------------------------------
                                   2115 ;	 function stinit
                                   2116 ;	-----------------------------------------
      002A4E                       2117 _stinit:
                                   2118 ;	walk.c:196: sp = -1;
      002A4E 90 FF 60         [24] 2119 	mov	dptr,#_sp
      002A51 74 FF            [12] 2120 	mov	a,#0xff
      002A53 F0               [24] 2121 	movx	@dptr,a
      002A54 A3               [24] 2122 	inc	dptr
      002A55 F0               [24] 2123 	movx	@dptr,a
                                   2124 ;	walk.c:197: return;
                                   2125 ;	walk.c:198: }
      002A56 22               [24] 2126 	ret
                                   2127 ;------------------------------------------------------------
                                   2128 ;Allocation info for local variables in function 'stpush'
                                   2129 ;------------------------------------------------------------
                                   2130 ;t                         Allocated to registers r5 r6 r7 
                                   2131 ;------------------------------------------------------------
                                   2132 ;	walk.c:200: static int stpush(struct node *t) {
                                   2133 ;	-----------------------------------------
                                   2134 ;	 function stpush
                                   2135 ;	-----------------------------------------
      002A57                       2136 _stpush:
      002A57 AD 82            [24] 2137 	mov	r5,dpl
      002A59 AE 83            [24] 2138 	mov	r6,dph
      002A5B AF F0            [24] 2139 	mov	r7,b
                                   2140 ;	walk.c:201: if (sp == (SMAX - 1)) return 0;
      002A5D 90 FF 60         [24] 2141 	mov	dptr,#_sp
      002A60 E0               [24] 2142 	movx	a,@dptr
      002A61 FB               [12] 2143 	mov	r3,a
      002A62 A3               [24] 2144 	inc	dptr
      002A63 E0               [24] 2145 	movx	a,@dptr
      002A64 FC               [12] 2146 	mov	r4,a
      002A65 BB DF 07         [24] 2147 	cjne	r3,#0xdf,00102$
      002A68 BC 25 04         [24] 2148 	cjne	r4,#0x25,00102$
      002A6B 90 00 00         [24] 2149 	mov	dptr,#0x0000
      002A6E 22               [24] 2150 	ret
      002A6F                       2151 00102$:
                                   2152 ;	walk.c:202: sp++;
      002A6F 90 FF 60         [24] 2153 	mov	dptr,#_sp
      002A72 74 01            [12] 2154 	mov	a,#0x01
      002A74 2B               [12] 2155 	add	a,r3
      002A75 F0               [24] 2156 	movx	@dptr,a
      002A76 E4               [12] 2157 	clr	a
      002A77 3C               [12] 2158 	addc	a,r4
      002A78 A3               [24] 2159 	inc	dptr
      002A79 F0               [24] 2160 	movx	@dptr,a
                                   2161 ;	walk.c:203: stack[sp] = *t;
      002A7A 90 FF 60         [24] 2162 	mov	dptr,#_sp
      002A7D E0               [24] 2163 	movx	a,@dptr
      002A7E FB               [12] 2164 	mov	r3,a
      002A7F A3               [24] 2165 	inc	dptr
      002A80 E0               [24] 2166 	movx	a,@dptr
      002A81 FC               [12] 2167 	mov	r4,a
      002A82 EB               [12] 2168 	mov	a,r3
      002A83 2B               [12] 2169 	add	a,r3
      002A84 FB               [12] 2170 	mov	r3,a
      002A85 EC               [12] 2171 	mov	a,r4
      002A86 33               [12] 2172 	rlc	a
      002A87 FC               [12] 2173 	mov	r4,a
      002A88 EB               [12] 2174 	mov	a,r3
      002A89 2B               [12] 2175 	add	a,r3
      002A8A FB               [12] 2176 	mov	r3,a
      002A8B EC               [12] 2177 	mov	a,r4
      002A8C 33               [12] 2178 	rlc	a
      002A8D FC               [12] 2179 	mov	r4,a
      002A8E EB               [12] 2180 	mov	a,r3
      002A8F 24 E0            [12] 2181 	add	a,#_stack
      002A91 FB               [12] 2182 	mov	r3,a
      002A92 EC               [12] 2183 	mov	a,r4
      002A93 34 67            [12] 2184 	addc	a,#(_stack >> 8)
      002A95 FC               [12] 2185 	mov	r4,a
      002A96 7A 00            [12] 2186 	mov	r2,#0x00
      002A98 74 04            [12] 2187 	mov	a,#0x04
      002A9A C0 E0            [24] 2188 	push	acc
      002A9C E4               [12] 2189 	clr	a
      002A9D C0 E0            [24] 2190 	push	acc
      002A9F C0 05            [24] 2191 	push	ar5
      002AA1 C0 06            [24] 2192 	push	ar6
      002AA3 C0 07            [24] 2193 	push	ar7
      002AA5 8B 82            [24] 2194 	mov	dpl,r3
      002AA7 8C 83            [24] 2195 	mov	dph,r4
      002AA9 8A F0            [24] 2196 	mov	b,r2
      002AAB 12 2C B0         [24] 2197 	lcall	___memcpy
      002AAE E5 81            [12] 2198 	mov	a,sp
      002AB0 24 FB            [12] 2199 	add	a,#0xfb
      002AB2 F5 81            [12] 2200 	mov	sp,a
                                   2201 ;	walk.c:204: return 1;
      002AB4 90 00 01         [24] 2202 	mov	dptr,#0x0001
                                   2203 ;	walk.c:205: }
      002AB7 22               [24] 2204 	ret
                                   2205 ;------------------------------------------------------------
                                   2206 ;Allocation info for local variables in function 'stpop'
                                   2207 ;------------------------------------------------------------
                                   2208 ;t                         Allocated to registers r5 r6 r7 
                                   2209 ;------------------------------------------------------------
                                   2210 ;	walk.c:207: static int stpop(struct node *t) {
                                   2211 ;	-----------------------------------------
                                   2212 ;	 function stpop
                                   2213 ;	-----------------------------------------
      002AB8                       2214 _stpop:
      002AB8 AD 82            [24] 2215 	mov	r5,dpl
      002ABA AE 83            [24] 2216 	mov	r6,dph
      002ABC AF F0            [24] 2217 	mov	r7,b
                                   2218 ;	walk.c:208: if (sp == -1) return 0;
      002ABE 90 FF 60         [24] 2219 	mov	dptr,#_sp
      002AC1 E0               [24] 2220 	movx	a,@dptr
      002AC2 FB               [12] 2221 	mov	r3,a
      002AC3 A3               [24] 2222 	inc	dptr
      002AC4 E0               [24] 2223 	movx	a,@dptr
      002AC5 FC               [12] 2224 	mov	r4,a
      002AC6 BB FF 07         [24] 2225 	cjne	r3,#0xff,00102$
      002AC9 BC FF 04         [24] 2226 	cjne	r4,#0xff,00102$
      002ACC 90 00 00         [24] 2227 	mov	dptr,#0x0000
      002ACF 22               [24] 2228 	ret
      002AD0                       2229 00102$:
                                   2230 ;	walk.c:209: *t = stack[sp];
      002AD0 EB               [12] 2231 	mov	a,r3
      002AD1 2B               [12] 2232 	add	a,r3
      002AD2 FB               [12] 2233 	mov	r3,a
      002AD3 EC               [12] 2234 	mov	a,r4
      002AD4 33               [12] 2235 	rlc	a
      002AD5 FC               [12] 2236 	mov	r4,a
      002AD6 EB               [12] 2237 	mov	a,r3
      002AD7 2B               [12] 2238 	add	a,r3
      002AD8 FB               [12] 2239 	mov	r3,a
      002AD9 EC               [12] 2240 	mov	a,r4
      002ADA 33               [12] 2241 	rlc	a
      002ADB FC               [12] 2242 	mov	r4,a
      002ADC EB               [12] 2243 	mov	a,r3
      002ADD 24 E0            [12] 2244 	add	a,#_stack
      002ADF FB               [12] 2245 	mov	r3,a
      002AE0 EC               [12] 2246 	mov	a,r4
      002AE1 34 67            [12] 2247 	addc	a,#(_stack >> 8)
      002AE3 FC               [12] 2248 	mov	r4,a
      002AE4 7A 00            [12] 2249 	mov	r2,#0x00
      002AE6 74 04            [12] 2250 	mov	a,#0x04
      002AE8 C0 E0            [24] 2251 	push	acc
      002AEA E4               [12] 2252 	clr	a
      002AEB C0 E0            [24] 2253 	push	acc
      002AED C0 03            [24] 2254 	push	ar3
      002AEF C0 04            [24] 2255 	push	ar4
      002AF1 C0 02            [24] 2256 	push	ar2
      002AF3 8D 82            [24] 2257 	mov	dpl,r5
      002AF5 8E 83            [24] 2258 	mov	dph,r6
      002AF7 8F F0            [24] 2259 	mov	b,r7
      002AF9 12 2C B0         [24] 2260 	lcall	___memcpy
      002AFC E5 81            [12] 2261 	mov	a,sp
      002AFE 24 FB            [12] 2262 	add	a,#0xfb
      002B00 F5 81            [12] 2263 	mov	sp,a
                                   2264 ;	walk.c:210: sp--;
      002B02 90 FF 60         [24] 2265 	mov	dptr,#_sp
      002B05 E0               [24] 2266 	movx	a,@dptr
      002B06 24 FF            [12] 2267 	add	a,#0xff
      002B08 FE               [12] 2268 	mov	r6,a
      002B09 A3               [24] 2269 	inc	dptr
      002B0A E0               [24] 2270 	movx	a,@dptr
      002B0B 34 FF            [12] 2271 	addc	a,#0xff
      002B0D FF               [12] 2272 	mov	r7,a
      002B0E 90 FF 60         [24] 2273 	mov	dptr,#_sp
      002B11 EE               [12] 2274 	mov	a,r6
      002B12 F0               [24] 2275 	movx	@dptr,a
      002B13 EF               [12] 2276 	mov	a,r7
      002B14 A3               [24] 2277 	inc	dptr
      002B15 F0               [24] 2278 	movx	@dptr,a
                                   2279 ;	walk.c:211: return 1;
      002B16 90 00 01         [24] 2280 	mov	dptr,#0x0001
                                   2281 ;	walk.c:212: }
      002B19 22               [24] 2282 	ret
                                   2283 	.area CSEG    (CODE)
                                   2284 	.area CONST   (CODE)
                                   2285 	.area CONST   (CODE)
      0040FC                       2286 ___str_0:
      0040FC 4D 65 6D 6F 72 79 20  2287 	.ascii "Memory error"
             65 72 72 6F 72
      004108 00                    2288 	.db 0x00
                                   2289 	.area CSEG    (CODE)
                                   2290 	.area CONST   (CODE)
      004109                       2291 ___str_1:
      004109 1B                    2292 	.db 0x1b
      00410A 5B 25 64 3B 25 64 48  2293 	.ascii "[%d;%dHo"
             6F
      004112 00                    2294 	.db 0x00
                                   2295 	.area CSEG    (CODE)
                                   2296 	.area CONST   (CODE)
      004113                       2297 ___str_2:
      004113 1B                    2298 	.db 0x1b
      004114 5B 32 3B 31 48 25 20  2299 	.ascii "[2;1H% 8d% 8d% 8d"
             38 64 25 20 38 64 25
             20 38 64
      004125 00                    2300 	.db 0x00
                                   2301 	.area CSEG    (CODE)
                                   2302 	.area CONST   (CODE)
      004126                       2303 ___str_3:
      004126 1B                    2304 	.db 0x1b
      004127 5B 25 64 3B 25 64 48  2305 	.ascii "[%d;%dH."
             2E
      00412F 00                    2306 	.db 0x00
                                   2307 	.area CSEG    (CODE)
                                   2308 	.area CONST   (CODE)
      004130                       2309 ___str_4:
      004130 1B                    2310 	.db 0x1b
      004131 5B 32 4A              2311 	.ascii "[2J"
      004134 1B                    2312 	.db 0x1b
      004135 5B 3F 32 35 6C        2313 	.ascii "[?25l"
      00413A 00                    2314 	.db 0x00
                                   2315 	.area CSEG    (CODE)
                                   2316 	.area CONST   (CODE)
      00413B                       2317 ___str_5:
      00413B 1B                    2318 	.db 0x1b
      00413C 5B 31 3B 31 48 25 20  2319 	.ascii "[1;1H% 8u% 8d% 8d"
             38 75 25 20 38 64 25
             20 38 64
      00414D 00                    2320 	.db 0x00
                                   2321 	.area CSEG    (CODE)
                                   2322 	.area CONST   (CODE)
      00414E                       2323 ___str_6:
      00414E 25 20 38 64 25 20 38  2324 	.ascii "% 8d% 8d"
             64
      004156 00                    2325 	.db 0x00
                                   2326 	.area CSEG    (CODE)
                                   2327 	.area CONST   (CODE)
      004157                       2328 ___str_7:
      004157 1B                    2329 	.db 0x1b
      004158 5B 32 4A              2330 	.ascii "[2J"
      00415B 1B                    2331 	.db 0x1b
      00415C 5B 3F 32 35 68        2332 	.ascii "[?25h"
      004161 00                    2333 	.db 0x00
                                   2334 	.area CSEG    (CODE)
                                   2335 	.area XINIT   (CODE)
      00416D                       2336 __xinit__neigh_tmpl:
      00416D FF FF                 2337 	.byte #0xff, #0xff	; -1
      00416F 01 00                 2338 	.byte #0x01, #0x00	;  1
      004171 FF FF                 2339 	.byte #0xff, #0xff	; -1
      004173 FF FF                 2340 	.byte #0xff, #0xff	; -1
      004175 01 00                 2341 	.byte #0x01, #0x00	;  1
      004177 FF FF                 2342 	.byte #0xff, #0xff	; -1
      004179 01 00                 2343 	.byte #0x01, #0x00	;  1
      00417B 01 00                 2344 	.byte #0x01, #0x00	;  1
      00417D FF FF                 2345 	.byte #0xff, #0xff	; -1
      00417F 00 00                 2346 	.byte #0x00, #0x00	;  0
      004181 00 00                 2347 	.byte #0x00, #0x00	;  0
      004183 FF FF                 2348 	.byte #0xff, #0xff	; -1
      004185 01 00                 2349 	.byte #0x01, #0x00	;  1
      004187 00 00                 2350 	.byte #0x00, #0x00	;  0
      004189 00 00                 2351 	.byte #0x00, #0x00	;  0
      00418B 01 00                 2352 	.byte #0x01, #0x00	;  1
      00418D FF FF                 2353 	.byte #0xff, #0xff	; -1
      00418F 01 00                 2354 	.byte #0x01, #0x00	;  1
      004191 FF FF                 2355 	.byte #0xff, #0xff	; -1
      004193 FF FF                 2356 	.byte #0xff, #0xff	; -1
      004195 01 00                 2357 	.byte #0x01, #0x00	;  1
      004197 FF FF                 2358 	.byte #0xff, #0xff	; -1
      004199 01 00                 2359 	.byte #0x01, #0x00	;  1
      00419B 01 00                 2360 	.byte #0x01, #0x00	;  1
      00419D FF FF                 2361 	.byte #0xff, #0xff	; -1
      00419F 00 00                 2362 	.byte #0x00, #0x00	;  0
      0041A1 00 00                 2363 	.byte #0x00, #0x00	;  0
      0041A3 FF FF                 2364 	.byte #0xff, #0xff	; -1
      0041A5 01 00                 2365 	.byte #0x01, #0x00	;  1
      0041A7 00 00                 2366 	.byte #0x00, #0x00	;  0
      0041A9 00 00                 2367 	.byte #0x00, #0x00	;  0
      0041AB 01 00                 2368 	.byte #0x01, #0x00	;  1
      0041AD                       2369 __xinit__neigh:
      0041AD FF FF                 2370 	.byte #0xff, #0xff	; -1
      0041AF 01 00                 2371 	.byte #0x01, #0x00	;  1
      0041B1 FF FF                 2372 	.byte #0xff, #0xff	; -1
      0041B3 FF FF                 2373 	.byte #0xff, #0xff	; -1
      0041B5 01 00                 2374 	.byte #0x01, #0x00	;  1
      0041B7 FF FF                 2375 	.byte #0xff, #0xff	; -1
      0041B9 01 00                 2376 	.byte #0x01, #0x00	;  1
      0041BB 01 00                 2377 	.byte #0x01, #0x00	;  1
      0041BD FF FF                 2378 	.byte #0xff, #0xff	; -1
      0041BF 00 00                 2379 	.byte #0x00, #0x00	;  0
      0041C1 00 00                 2380 	.byte #0x00, #0x00	;  0
      0041C3 FF FF                 2381 	.byte #0xff, #0xff	; -1
      0041C5 01 00                 2382 	.byte #0x01, #0x00	;  1
      0041C7 00 00                 2383 	.byte #0x00, #0x00	;  0
      0041C9 00 00                 2384 	.byte #0x00, #0x00	;  0
      0041CB 01 00                 2385 	.byte #0x01, #0x00	;  1
      0041CD FF FF                 2386 	.byte #0xff, #0xff	; -1
      0041CF 01 00                 2387 	.byte #0x01, #0x00	;  1
      0041D1 FF FF                 2388 	.byte #0xff, #0xff	; -1
      0041D3 FF FF                 2389 	.byte #0xff, #0xff	; -1
      0041D5 01 00                 2390 	.byte #0x01, #0x00	;  1
      0041D7 FF FF                 2391 	.byte #0xff, #0xff	; -1
      0041D9 01 00                 2392 	.byte #0x01, #0x00	;  1
      0041DB 01 00                 2393 	.byte #0x01, #0x00	;  1
      0041DD FF FF                 2394 	.byte #0xff, #0xff	; -1
      0041DF 00 00                 2395 	.byte #0x00, #0x00	;  0
      0041E1 00 00                 2396 	.byte #0x00, #0x00	;  0
      0041E3 FF FF                 2397 	.byte #0xff, #0xff	; -1
      0041E5 01 00                 2398 	.byte #0x01, #0x00	;  1
      0041E7 00 00                 2399 	.byte #0x00, #0x00	;  0
      0041E9 00 00                 2400 	.byte #0x00, #0x00	;  0
      0041EB 01 00                 2401 	.byte #0x01, #0x00	;  1
                                   2402 	.area CABS    (ABS,CODE)
