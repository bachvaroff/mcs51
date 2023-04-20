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
                                     12 	.globl _walk
                                     13 	.globl _int0
                                     14 	.globl _srand
                                     15 	.globl _rand
                                     16 	.globl _puts
                                     17 	.globl _printf
                                     18 	.globl _CY
                                     19 	.globl _AC
                                     20 	.globl _F0
                                     21 	.globl _RS1
                                     22 	.globl _RS0
                                     23 	.globl _OV
                                     24 	.globl _FL
                                     25 	.globl _P
                                     26 	.globl _TF2
                                     27 	.globl _EXF2
                                     28 	.globl _RCLK
                                     29 	.globl _TCLK
                                     30 	.globl _EXEN2
                                     31 	.globl _TR2
                                     32 	.globl _C_T2
                                     33 	.globl _CP_RL2
                                     34 	.globl _T2CON_7
                                     35 	.globl _T2CON_6
                                     36 	.globl _T2CON_5
                                     37 	.globl _T2CON_4
                                     38 	.globl _T2CON_3
                                     39 	.globl _T2CON_2
                                     40 	.globl _T2CON_1
                                     41 	.globl _T2CON_0
                                     42 	.globl _PT2
                                     43 	.globl _PS
                                     44 	.globl _PT1
                                     45 	.globl _PX1
                                     46 	.globl _PT0
                                     47 	.globl _PX0
                                     48 	.globl _RD
                                     49 	.globl _WR
                                     50 	.globl _T1
                                     51 	.globl _T0
                                     52 	.globl _INT1
                                     53 	.globl _INT0
                                     54 	.globl _TXD
                                     55 	.globl _RXD
                                     56 	.globl _P3_7
                                     57 	.globl _P3_6
                                     58 	.globl _P3_5
                                     59 	.globl _P3_4
                                     60 	.globl _P3_3
                                     61 	.globl _P3_2
                                     62 	.globl _P3_1
                                     63 	.globl _P3_0
                                     64 	.globl _EA
                                     65 	.globl _ET2
                                     66 	.globl _ES
                                     67 	.globl _ET1
                                     68 	.globl _EX1
                                     69 	.globl _ET0
                                     70 	.globl _EX0
                                     71 	.globl _P2_7
                                     72 	.globl _P2_6
                                     73 	.globl _P2_5
                                     74 	.globl _P2_4
                                     75 	.globl _P2_3
                                     76 	.globl _P2_2
                                     77 	.globl _P2_1
                                     78 	.globl _P2_0
                                     79 	.globl _SM0
                                     80 	.globl _SM1
                                     81 	.globl _SM2
                                     82 	.globl _REN
                                     83 	.globl _TB8
                                     84 	.globl _RB8
                                     85 	.globl _TI
                                     86 	.globl _RI
                                     87 	.globl _T2EX
                                     88 	.globl _T2
                                     89 	.globl _P1_7
                                     90 	.globl _P1_6
                                     91 	.globl _P1_5
                                     92 	.globl _P1_4
                                     93 	.globl _P1_3
                                     94 	.globl _P1_2
                                     95 	.globl _P1_1
                                     96 	.globl _P1_0
                                     97 	.globl _TF1
                                     98 	.globl _TR1
                                     99 	.globl _TF0
                                    100 	.globl _TR0
                                    101 	.globl _IE1
                                    102 	.globl _IT1
                                    103 	.globl _IE0
                                    104 	.globl _IT0
                                    105 	.globl _P0_7
                                    106 	.globl _P0_6
                                    107 	.globl _P0_5
                                    108 	.globl _P0_4
                                    109 	.globl _P0_3
                                    110 	.globl _P0_2
                                    111 	.globl _P0_1
                                    112 	.globl _P0_0
                                    113 	.globl _B
                                    114 	.globl _A
                                    115 	.globl _ACC
                                    116 	.globl _PSW
                                    117 	.globl _TH2
                                    118 	.globl _TL2
                                    119 	.globl _RCAP2H
                                    120 	.globl _RCAP2L
                                    121 	.globl _T2MOD
                                    122 	.globl _T2CON
                                    123 	.globl _IP
                                    124 	.globl _P3
                                    125 	.globl _IE
                                    126 	.globl _P2
                                    127 	.globl _SBUF
                                    128 	.globl _SCON
                                    129 	.globl _P1
                                    130 	.globl _TH1
                                    131 	.globl _TH0
                                    132 	.globl _TL1
                                    133 	.globl _TL0
                                    134 	.globl _TMOD
                                    135 	.globl _TCON
                                    136 	.globl _PCON
                                    137 	.globl _DPH
                                    138 	.globl _DPL
                                    139 	.globl _SP
                                    140 	.globl _P0
                                    141 	.globl _putchar
                                    142 	.globl _getchar
                                    143 ;--------------------------------------------------------
                                    144 ; special function registers
                                    145 ;--------------------------------------------------------
                                    146 	.area RSEG    (ABS,DATA)
      000000                        147 	.org 0x0000
                           000080   148 _P0	=	0x0080
                           000081   149 _SP	=	0x0081
                           000082   150 _DPL	=	0x0082
                           000083   151 _DPH	=	0x0083
                           000087   152 _PCON	=	0x0087
                           000088   153 _TCON	=	0x0088
                           000089   154 _TMOD	=	0x0089
                           00008A   155 _TL0	=	0x008a
                           00008B   156 _TL1	=	0x008b
                           00008C   157 _TH0	=	0x008c
                           00008D   158 _TH1	=	0x008d
                           000090   159 _P1	=	0x0090
                           000098   160 _SCON	=	0x0098
                           000099   161 _SBUF	=	0x0099
                           0000A0   162 _P2	=	0x00a0
                           0000A8   163 _IE	=	0x00a8
                           0000B0   164 _P3	=	0x00b0
                           0000B8   165 _IP	=	0x00b8
                           0000C8   166 _T2CON	=	0x00c8
                           0000C9   167 _T2MOD	=	0x00c9
                           0000CA   168 _RCAP2L	=	0x00ca
                           0000CB   169 _RCAP2H	=	0x00cb
                           0000CC   170 _TL2	=	0x00cc
                           0000CD   171 _TH2	=	0x00cd
                           0000D0   172 _PSW	=	0x00d0
                           0000E0   173 _ACC	=	0x00e0
                           0000E0   174 _A	=	0x00e0
                           0000F0   175 _B	=	0x00f0
                                    176 ;--------------------------------------------------------
                                    177 ; special function bits
                                    178 ;--------------------------------------------------------
                                    179 	.area RSEG    (ABS,DATA)
      000000                        180 	.org 0x0000
                           000080   181 _P0_0	=	0x0080
                           000081   182 _P0_1	=	0x0081
                           000082   183 _P0_2	=	0x0082
                           000083   184 _P0_3	=	0x0083
                           000084   185 _P0_4	=	0x0084
                           000085   186 _P0_5	=	0x0085
                           000086   187 _P0_6	=	0x0086
                           000087   188 _P0_7	=	0x0087
                           000088   189 _IT0	=	0x0088
                           000089   190 _IE0	=	0x0089
                           00008A   191 _IT1	=	0x008a
                           00008B   192 _IE1	=	0x008b
                           00008C   193 _TR0	=	0x008c
                           00008D   194 _TF0	=	0x008d
                           00008E   195 _TR1	=	0x008e
                           00008F   196 _TF1	=	0x008f
                           000090   197 _P1_0	=	0x0090
                           000091   198 _P1_1	=	0x0091
                           000092   199 _P1_2	=	0x0092
                           000093   200 _P1_3	=	0x0093
                           000094   201 _P1_4	=	0x0094
                           000095   202 _P1_5	=	0x0095
                           000096   203 _P1_6	=	0x0096
                           000097   204 _P1_7	=	0x0097
                           000090   205 _T2	=	0x0090
                           000091   206 _T2EX	=	0x0091
                           000098   207 _RI	=	0x0098
                           000099   208 _TI	=	0x0099
                           00009A   209 _RB8	=	0x009a
                           00009B   210 _TB8	=	0x009b
                           00009C   211 _REN	=	0x009c
                           00009D   212 _SM2	=	0x009d
                           00009E   213 _SM1	=	0x009e
                           00009F   214 _SM0	=	0x009f
                           0000A0   215 _P2_0	=	0x00a0
                           0000A1   216 _P2_1	=	0x00a1
                           0000A2   217 _P2_2	=	0x00a2
                           0000A3   218 _P2_3	=	0x00a3
                           0000A4   219 _P2_4	=	0x00a4
                           0000A5   220 _P2_5	=	0x00a5
                           0000A6   221 _P2_6	=	0x00a6
                           0000A7   222 _P2_7	=	0x00a7
                           0000A8   223 _EX0	=	0x00a8
                           0000A9   224 _ET0	=	0x00a9
                           0000AA   225 _EX1	=	0x00aa
                           0000AB   226 _ET1	=	0x00ab
                           0000AC   227 _ES	=	0x00ac
                           0000AD   228 _ET2	=	0x00ad
                           0000AF   229 _EA	=	0x00af
                           0000B0   230 _P3_0	=	0x00b0
                           0000B1   231 _P3_1	=	0x00b1
                           0000B2   232 _P3_2	=	0x00b2
                           0000B3   233 _P3_3	=	0x00b3
                           0000B4   234 _P3_4	=	0x00b4
                           0000B5   235 _P3_5	=	0x00b5
                           0000B6   236 _P3_6	=	0x00b6
                           0000B7   237 _P3_7	=	0x00b7
                           0000B0   238 _RXD	=	0x00b0
                           0000B1   239 _TXD	=	0x00b1
                           0000B2   240 _INT0	=	0x00b2
                           0000B3   241 _INT1	=	0x00b3
                           0000B4   242 _T0	=	0x00b4
                           0000B5   243 _T1	=	0x00b5
                           0000B6   244 _WR	=	0x00b6
                           0000B7   245 _RD	=	0x00b7
                           0000B8   246 _PX0	=	0x00b8
                           0000B9   247 _PT0	=	0x00b9
                           0000BA   248 _PX1	=	0x00ba
                           0000BB   249 _PT1	=	0x00bb
                           0000BC   250 _PS	=	0x00bc
                           0000BD   251 _PT2	=	0x00bd
                           0000C8   252 _T2CON_0	=	0x00c8
                           0000C9   253 _T2CON_1	=	0x00c9
                           0000CA   254 _T2CON_2	=	0x00ca
                           0000CB   255 _T2CON_3	=	0x00cb
                           0000CC   256 _T2CON_4	=	0x00cc
                           0000CD   257 _T2CON_5	=	0x00cd
                           0000CE   258 _T2CON_6	=	0x00ce
                           0000CF   259 _T2CON_7	=	0x00cf
                           0000C8   260 _CP_RL2	=	0x00c8
                           0000C9   261 _C_T2	=	0x00c9
                           0000CA   262 _TR2	=	0x00ca
                           0000CB   263 _EXEN2	=	0x00cb
                           0000CC   264 _TCLK	=	0x00cc
                           0000CD   265 _RCLK	=	0x00cd
                           0000CE   266 _EXF2	=	0x00ce
                           0000CF   267 _TF2	=	0x00cf
                           0000D0   268 _P	=	0x00d0
                           0000D1   269 _FL	=	0x00d1
                           0000D2   270 _OV	=	0x00d2
                           0000D3   271 _RS0	=	0x00d3
                           0000D4   272 _RS1	=	0x00d4
                           0000D5   273 _F0	=	0x00d5
                           0000D6   274 _AC	=	0x00d6
                           0000D7   275 _CY	=	0x00d7
                                    276 ;--------------------------------------------------------
                                    277 ; overlayable register banks
                                    278 ;--------------------------------------------------------
                                    279 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        280 	.ds 8
                                    281 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        282 	.ds 8
                                    283 ;--------------------------------------------------------
                                    284 ; internal ram data
                                    285 ;--------------------------------------------------------
                                    286 	.area DSEG    (DATA)
                                    287 ;--------------------------------------------------------
                                    288 ; overlayable items in internal ram 
                                    289 ;--------------------------------------------------------
                                    290 ;--------------------------------------------------------
                                    291 ; Stack segment in internal ram 
                                    292 ;--------------------------------------------------------
                                    293 	.area	SSEG
      000021                        294 __start__stack:
      000021                        295 	.ds	1
                                    296 
                                    297 ;--------------------------------------------------------
                                    298 ; indirectly addressable internal ram data
                                    299 ;--------------------------------------------------------
                                    300 	.area ISEG    (DATA)
      000011                        301 _i0:
      000011                        302 	.ds 1
                                    303 ;--------------------------------------------------------
                                    304 ; absolute internal ram data
                                    305 ;--------------------------------------------------------
                                    306 	.area IABS    (ABS,DATA)
                                    307 	.area IABS    (ABS,DATA)
                                    308 ;--------------------------------------------------------
                                    309 ; bit data
                                    310 ;--------------------------------------------------------
                                    311 	.area BSEG    (BIT)
                                    312 ;--------------------------------------------------------
                                    313 ; paged external ram data
                                    314 ;--------------------------------------------------------
                                    315 	.area PSEG    (PAG,XDATA)
                                    316 ;--------------------------------------------------------
                                    317 ; external ram data
                                    318 ;--------------------------------------------------------
                                    319 	.area XSEG    (XDATA)
      004000                        320 _g:
      004000                        321 	.ds 9216
      006400                        322 _stack:
      006400                        323 	.ds 36864
      00F400                        324 _sp:
      00F400                        325 	.ds 2
      00F402                        326 _main_R_65536_63:
      00F402                        327 	.ds 2
                                    328 ;--------------------------------------------------------
                                    329 ; absolute external ram data
                                    330 ;--------------------------------------------------------
                                    331 	.area XABS    (ABS,XDATA)
                                    332 ;--------------------------------------------------------
                                    333 ; external initialized ram data
                                    334 ;--------------------------------------------------------
                                    335 	.area XISEG   (XDATA)
                                    336 	.area HOME    (CODE)
                                    337 	.area GSINIT0 (CODE)
                                    338 	.area GSINIT1 (CODE)
                                    339 	.area GSINIT2 (CODE)
                                    340 	.area GSINIT3 (CODE)
                                    341 	.area GSINIT4 (CODE)
                                    342 	.area GSINIT5 (CODE)
                                    343 	.area GSINIT  (CODE)
                                    344 	.area GSFINAL (CODE)
                                    345 	.area CSEG    (CODE)
                                    346 ;--------------------------------------------------------
                                    347 ; interrupt vector 
                                    348 ;--------------------------------------------------------
                                    349 	.area HOME    (CODE)
      002000                        350 __interrupt_vect:
      002000 02 20 09         [24]  351 	ljmp	__sdcc_gsinit_startup
      002003 02 20 7C         [24]  352 	ljmp	_int0
                                    353 ;--------------------------------------------------------
                                    354 ; global & static initialisations
                                    355 ;--------------------------------------------------------
                                    356 	.area HOME    (CODE)
                                    357 	.area GSINIT  (CODE)
                                    358 	.area GSFINAL (CODE)
                                    359 	.area GSINIT  (CODE)
                                    360 	.globl __sdcc_gsinit_startup
                                    361 	.globl __sdcc_program_startup
                                    362 	.globl __start__stack
                                    363 	.globl __mcs51_genXINIT
                                    364 	.globl __mcs51_genXRAMCLEAR
                                    365 	.globl __mcs51_genRAMCLEAR
                                    366 ;------------------------------------------------------------
                                    367 ;Allocation info for local variables in function 'main'
                                    368 ;------------------------------------------------------------
                                    369 ;initial                   Allocated to stack - _bp +3
                                    370 ;i                         Allocated to stack - _bp +7
                                    371 ;j                         Allocated to registers r4 r5 
                                    372 ;sloc0                     Allocated to stack - _bp +1
                                    373 ;R                         Allocated with name '_main_R_65536_63'
                                    374 ;------------------------------------------------------------
                                    375 ;	walk.c:118: static volatile __xdata int *R = (__xdata int *)0xfffe;
      002062 90 F4 02         [24]  376 	mov	dptr,#_main_R_65536_63
      002065 74 FE            [12]  377 	mov	a,#0xfe
      002067 F0               [24]  378 	movx	@dptr,a
      002068 04               [12]  379 	inc	a
      002069 A3               [24]  380 	inc	dptr
      00206A F0               [24]  381 	movx	@dptr,a
                                    382 	.area GSFINAL (CODE)
      00206B 02 20 06         [24]  383 	ljmp	__sdcc_program_startup
                                    384 ;--------------------------------------------------------
                                    385 ; Home
                                    386 ;--------------------------------------------------------
                                    387 	.area HOME    (CODE)
                                    388 	.area HOME    (CODE)
      002006                        389 __sdcc_program_startup:
      002006 02 26 37         [24]  390 	ljmp	_main
                                    391 ;	return from main will return to caller
                                    392 ;--------------------------------------------------------
                                    393 ; code
                                    394 ;--------------------------------------------------------
                                    395 	.area CSEG    (CODE)
                                    396 ;------------------------------------------------------------
                                    397 ;Allocation info for local variables in function 'putchar'
                                    398 ;------------------------------------------------------------
                                    399 ;c                         Allocated to registers 
                                    400 ;------------------------------------------------------------
                                    401 ;	walk.c:8: int putchar(int c) __naked {
                                    402 ;	-----------------------------------------
                                    403 ;	 function putchar
                                    404 ;	-----------------------------------------
      00206E                        405 _putchar:
                                    406 ;	naked function: no prologue.
                                    407 ;	walk.c:13: __endasm;
      00206E E5 82            [12]  408 	mov	a, dpl
      002070 02 00 30         [24]  409 	ljmp	0x0030
                                    410 ;	walk.c:14: }
                                    411 ;	naked function: no epilogue.
                                    412 ;------------------------------------------------------------
                                    413 ;Allocation info for local variables in function 'getchar'
                                    414 ;------------------------------------------------------------
                                    415 ;	walk.c:16: int getchar(void) __naked {
                                    416 ;	-----------------------------------------
                                    417 ;	 function getchar
                                    418 ;	-----------------------------------------
      002073                        419 _getchar:
                                    420 ;	naked function: no prologue.
                                    421 ;	walk.c:22: __endasm;
      002073 12 00 32         [24]  422 	lcall	0x0032
      002076 F5 82            [12]  423 	mov	dpl, a
      002078 75 83 00         [24]  424 	mov	dph, #0
      00207B 22               [24]  425 	ret
                                    426 ;	walk.c:23: }
                                    427 ;	naked function: no epilogue.
                                    428 ;------------------------------------------------------------
                                    429 ;Allocation info for local variables in function 'int0'
                                    430 ;------------------------------------------------------------
                                    431 ;	walk.c:27: void int0(void) __interrupt IE0_VECTOR __using 1 {
                                    432 ;	-----------------------------------------
                                    433 ;	 function int0
                                    434 ;	-----------------------------------------
      00207C                        435 _int0:
                           00000F   436 	ar7 = 0x0f
                           00000E   437 	ar6 = 0x0e
                           00000D   438 	ar5 = 0x0d
                           00000C   439 	ar4 = 0x0c
                           00000B   440 	ar3 = 0x0b
                           00000A   441 	ar2 = 0x0a
                           000009   442 	ar1 = 0x09
                           000008   443 	ar0 = 0x08
      00207C C0 D0            [24]  444 	push	psw
      00207E 75 D0 08         [24]  445 	mov	psw,#0x08
                                    446 ;	walk.c:28: i0 = 0;
      002081 78 11            [12]  447 	mov	r0,#_i0
      002083 76 00            [12]  448 	mov	@r0,#0x00
                                    449 ;	walk.c:29: }
      002085 D0 D0            [24]  450 	pop	psw
      002087 32               [24]  451 	reti
                                    452 ;	eliminated unneeded push/pop dpl
                                    453 ;	eliminated unneeded push/pop dph
                                    454 ;	eliminated unneeded push/pop b
                                    455 ;	eliminated unneeded push/pop acc
                                    456 ;------------------------------------------------------------
                                    457 ;Allocation info for local variables in function 'reset'
                                    458 ;------------------------------------------------------------
                                    459 ;	walk.c:31: static void reset(void) __naked {
                                    460 ;	-----------------------------------------
                                    461 ;	 function reset
                                    462 ;	-----------------------------------------
      002088                        463 _reset:
                                    464 ;	naked function: no prologue.
                                    465 ;	walk.c:34: __endasm;
      002088 43 87 02         [24]  466 	orl	pcon, #2
                                    467 ;	walk.c:35: }
                                    468 ;	naked function: no epilogue.
                                    469 ;------------------------------------------------------------
                                    470 ;Allocation info for local variables in function 'walk'
                                    471 ;------------------------------------------------------------
                                    472 ;nstart                    Allocated to registers 
                                    473 ;cur                       Allocated to stack - _bp +12
                                    474 ;t                         Allocated to stack - _bp +16
                                    475 ;j                         Allocated to stack - _bp +20
                                    476 ;f                         Allocated to stack - _bp +22
                                    477 ;sloc0                     Allocated to stack - _bp +1
                                    478 ;sloc1                     Allocated to stack - _bp +2
                                    479 ;sloc2                     Allocated to stack - _bp +3
                                    480 ;sloc3                     Allocated to stack - _bp +5
                                    481 ;sloc4                     Allocated to stack - _bp +6
                                    482 ;sloc5                     Allocated to stack - _bp +8
                                    483 ;sloc6                     Allocated to stack - _bp +9
                                    484 ;------------------------------------------------------------
                                    485 ;	walk.c:63: void walk(struct node *nstart) {
                                    486 ;	-----------------------------------------
                                    487 ;	 function walk
                                    488 ;	-----------------------------------------
      00208B                        489 _walk:
                           000007   490 	ar7 = 0x07
                           000006   491 	ar6 = 0x06
                           000005   492 	ar5 = 0x05
                           000004   493 	ar4 = 0x04
                           000003   494 	ar3 = 0x03
                           000002   495 	ar2 = 0x02
                           000001   496 	ar1 = 0x01
                           000000   497 	ar0 = 0x00
      00208B C0 10            [24]  498 	push	_bp
      00208D E5 81            [12]  499 	mov	a,sp
      00208F F5 10            [12]  500 	mov	_bp,a
      002091 24 17            [12]  501 	add	a,#0x17
      002093 F5 81            [12]  502 	mov	sp,a
      002095 AD 82            [24]  503 	mov	r5,dpl
      002097 AE 83            [24]  504 	mov	r6,dph
      002099 AF F0            [24]  505 	mov	r7,b
                                    506 ;	walk.c:67: cur = *nstart;
      00209B E5 10            [12]  507 	mov	a,_bp
      00209D 24 0C            [12]  508 	add	a,#0x0c
      00209F F9               [12]  509 	mov	r1,a
      0020A0 FA               [12]  510 	mov	r2,a
      0020A1 7B 00            [12]  511 	mov	r3,#0x00
      0020A3 7C 40            [12]  512 	mov	r4,#0x40
      0020A5 C0 01            [24]  513 	push	ar1
      0020A7 74 04            [12]  514 	mov	a,#0x04
      0020A9 C0 E0            [24]  515 	push	acc
      0020AB E4               [12]  516 	clr	a
      0020AC C0 E0            [24]  517 	push	acc
      0020AE C0 05            [24]  518 	push	ar5
      0020B0 C0 06            [24]  519 	push	ar6
      0020B2 C0 07            [24]  520 	push	ar7
      0020B4 8A 82            [24]  521 	mov	dpl,r2
      0020B6 8B 83            [24]  522 	mov	dph,r3
      0020B8 8C F0            [24]  523 	mov	b,r4
      0020BA 12 2A 3E         [24]  524 	lcall	___memcpy
      0020BD E5 81            [12]  525 	mov	a,sp
      0020BF 24 FB            [12]  526 	add	a,#0xfb
      0020C1 F5 81            [12]  527 	mov	sp,a
      0020C3 D0 01            [24]  528 	pop	ar1
                                    529 ;	walk.c:69: process:
      0020C5 E5 10            [12]  530 	mov	a,_bp
      0020C7 24 10            [12]  531 	add	a,#0x10
      0020C9 F8               [12]  532 	mov	r0,a
      0020CA C0 00            [24]  533 	push	ar0
      0020CC E5 10            [12]  534 	mov	a,_bp
      0020CE 24 05            [12]  535 	add	a,#0x05
      0020D0 F8               [12]  536 	mov	r0,a
      0020D1 A6 01            [24]  537 	mov	@r0,ar1
      0020D3 D0 00            [24]  538 	pop	ar0
      0020D5 88 06            [24]  539 	mov	ar6,r0
      0020D7 C0 00            [24]  540 	push	ar0
      0020D9 A8 10            [24]  541 	mov	r0,_bp
      0020DB 08               [12]  542 	inc	r0
      0020DC 08               [12]  543 	inc	r0
      0020DD A6 01            [24]  544 	mov	@r0,ar1
      0020DF D0 00            [24]  545 	pop	ar0
      0020E1 C0 01            [24]  546 	push	ar1
      0020E3 A9 10            [24]  547 	mov	r1,_bp
      0020E5 09               [12]  548 	inc	r1
      0020E6 A7 00            [24]  549 	mov	@r1,ar0
      0020E8 D0 01            [24]  550 	pop	ar1
      0020EA C0 00            [24]  551 	push	ar0
      0020EC E5 10            [12]  552 	mov	a,_bp
      0020EE 24 08            [12]  553 	add	a,#0x08
      0020F0 F8               [12]  554 	mov	r0,a
      0020F1 A6 01            [24]  555 	mov	@r0,ar1
      0020F3 D0 00            [24]  556 	pop	ar0
      0020F5 74 02            [12]  557 	mov	a,#0x02
      0020F7 29               [12]  558 	add	a,r1
      0020F8 FA               [12]  559 	mov	r2,a
      0020F9                        560 00101$:
                                    561 ;	walk.c:70: g[cur.r][cur.c] = 0xaa;
      0020F9 87 03            [24]  562 	mov	ar3,@r1
      0020FB 09               [12]  563 	inc	r1
      0020FC 87 04            [24]  564 	mov	ar4,@r1
      0020FE 19               [12]  565 	dec	r1
      0020FF C0 06            [24]  566 	push	ar6
      002101 C0 02            [24]  567 	push	ar2
      002103 C0 01            [24]  568 	push	ar1
      002105 C0 00            [24]  569 	push	ar0
      002107 C0 03            [24]  570 	push	ar3
      002109 C0 04            [24]  571 	push	ar4
      00210B 90 00 C0         [24]  572 	mov	dptr,#0x00c0
      00210E 12 29 A0         [24]  573 	lcall	__mulint
      002111 AB 82            [24]  574 	mov	r3,dpl
      002113 AC 83            [24]  575 	mov	r4,dph
      002115 15 81            [12]  576 	dec	sp
      002117 15 81            [12]  577 	dec	sp
      002119 D0 00            [24]  578 	pop	ar0
      00211B D0 01            [24]  579 	pop	ar1
      00211D D0 02            [24]  580 	pop	ar2
      00211F D0 06            [24]  581 	pop	ar6
      002121 EB               [12]  582 	mov	a,r3
      002122 24 00            [12]  583 	add	a,#_g
      002124 FB               [12]  584 	mov	r3,a
      002125 EC               [12]  585 	mov	a,r4
      002126 34 40            [12]  586 	addc	a,#(_g >> 8)
      002128 FF               [12]  587 	mov	r7,a
      002129 C0 00            [24]  588 	push	ar0
      00212B A8 02            [24]  589 	mov	r0,ar2
      00212D 86 04            [24]  590 	mov	ar4,@r0
      00212F 08               [12]  591 	inc	r0
      002130 86 05            [24]  592 	mov	ar5,@r0
      002132 EC               [12]  593 	mov	a,r4
      002133 2B               [12]  594 	add	a,r3
      002134 F5 82            [12]  595 	mov	dpl,a
      002136 ED               [12]  596 	mov	a,r5
      002137 3F               [12]  597 	addc	a,r7
      002138 F5 83            [12]  598 	mov	dph,a
      00213A 74 AA            [12]  599 	mov	a,#0xaa
      00213C F0               [24]  600 	movx	@dptr,a
                                    601 ;	walk.c:71: printf("\033[%d;%dHo", cur.r + 1, cur.c + 1);
      00213D A8 02            [24]  602 	mov	r0,ar2
      00213F 86 04            [24]  603 	mov	ar4,@r0
      002141 08               [12]  604 	inc	r0
      002142 86 05            [24]  605 	mov	ar5,@r0
      002144 D0 00            [24]  606 	pop	ar0
      002146 74 01            [12]  607 	mov	a,#0x01
      002148 2C               [12]  608 	add	a,r4
      002149 FC               [12]  609 	mov	r4,a
      00214A E4               [12]  610 	clr	a
      00214B 3D               [12]  611 	addc	a,r5
      00214C FF               [12]  612 	mov	r7,a
      00214D 87 03            [24]  613 	mov	ar3,@r1
      00214F 09               [12]  614 	inc	r1
      002150 87 05            [24]  615 	mov	ar5,@r1
      002152 19               [12]  616 	dec	r1
      002153 0B               [12]  617 	inc	r3
      002154 BB 00 01         [24]  618 	cjne	r3,#0x00,00216$
      002157 0D               [12]  619 	inc	r5
      002158                        620 00216$:
      002158 C0 06            [24]  621 	push	ar6
      00215A C0 02            [24]  622 	push	ar2
      00215C C0 01            [24]  623 	push	ar1
      00215E C0 00            [24]  624 	push	ar0
      002160 C0 04            [24]  625 	push	ar4
      002162 C0 07            [24]  626 	push	ar7
      002164 C0 03            [24]  627 	push	ar3
      002166 C0 05            [24]  628 	push	ar5
      002168 74 B5            [12]  629 	mov	a,#___str_0
      00216A C0 E0            [24]  630 	push	acc
      00216C 74 3E            [12]  631 	mov	a,#(___str_0 >> 8)
      00216E C0 E0            [24]  632 	push	acc
      002170 74 80            [12]  633 	mov	a,#0x80
      002172 C0 E0            [24]  634 	push	acc
      002174 12 2B 57         [24]  635 	lcall	_printf
      002177 E5 81            [12]  636 	mov	a,sp
      002179 24 F9            [12]  637 	add	a,#0xf9
      00217B F5 81            [12]  638 	mov	sp,a
      00217D D0 00            [24]  639 	pop	ar0
      00217F D0 01            [24]  640 	pop	ar1
      002181 D0 02            [24]  641 	pop	ar2
      002183 D0 06            [24]  642 	pop	ar6
                                    643 ;	walk.c:114: return;
                                    644 ;	walk.c:74: for (j = 0, f = 0; j < NMAX; j++) {
      002185                        645 00146$:
      002185 C0 00            [24]  646 	push	ar0
      002187 E5 10            [12]  647 	mov	a,_bp
      002189 24 16            [12]  648 	add	a,#0x16
      00218B F8               [12]  649 	mov	r0,a
      00218C E4               [12]  650 	clr	a
      00218D F6               [12]  651 	mov	@r0,a
      00218E 08               [12]  652 	inc	r0
      00218F F6               [12]  653 	mov	@r0,a
      002190 E5 10            [12]  654 	mov	a,_bp
      002192 24 14            [12]  655 	add	a,#0x14
      002194 F8               [12]  656 	mov	r0,a
      002195 E4               [12]  657 	clr	a
      002196 F6               [12]  658 	mov	@r0,a
      002197 08               [12]  659 	inc	r0
      002198 F6               [12]  660 	mov	@r0,a
      002199 D0 00            [24]  661 	pop	ar0
      00219B                        662 00136$:
      00219B C0 00            [24]  663 	push	ar0
      00219D E5 10            [12]  664 	mov	a,_bp
      00219F 24 14            [12]  665 	add	a,#0x14
      0021A1 F8               [12]  666 	mov	r0,a
      0021A2 C3               [12]  667 	clr	c
      0021A3 E6               [12]  668 	mov	a,@r0
      0021A4 94 04            [12]  669 	subb	a,#0x04
      0021A6 08               [12]  670 	inc	r0
      0021A7 E6               [12]  671 	mov	a,@r0
      0021A8 64 80            [12]  672 	xrl	a,#0x80
      0021AA 94 80            [12]  673 	subb	a,#0x80
      0021AC D0 00            [24]  674 	pop	ar0
      0021AE 40 03            [24]  675 	jc	00217$
      0021B0 02 23 4C         [24]  676 	ljmp	00114$
      0021B3                        677 00217$:
                                    678 ;	walk.c:75: t.r = cur.r + neigh[j].r;
      0021B3 C0 00            [24]  679 	push	ar0
      0021B5 E5 10            [12]  680 	mov	a,_bp
      0021B7 24 03            [12]  681 	add	a,#0x03
      0021B9 F8               [12]  682 	mov	r0,a
      0021BA E5 10            [12]  683 	mov	a,_bp
      0021BC 24 10            [12]  684 	add	a,#0x10
      0021BE F6               [12]  685 	mov	@r0,a
      0021BF E5 10            [12]  686 	mov	a,_bp
      0021C1 24 06            [12]  687 	add	a,#0x06
      0021C3 F8               [12]  688 	mov	r0,a
      0021C4 E7               [12]  689 	mov	a,@r1
      0021C5 F6               [12]  690 	mov	@r0,a
      0021C6 09               [12]  691 	inc	r1
      0021C7 E7               [12]  692 	mov	a,@r1
      0021C8 08               [12]  693 	inc	r0
      0021C9 F6               [12]  694 	mov	@r0,a
      0021CA 19               [12]  695 	dec	r1
      0021CB E5 10            [12]  696 	mov	a,_bp
      0021CD 24 14            [12]  697 	add	a,#0x14
      0021CF F8               [12]  698 	mov	r0,a
      0021D0 E6               [12]  699 	mov	a,@r0
      0021D1 26               [12]  700 	add	a,@r0
      0021D2 FB               [12]  701 	mov	r3,a
      0021D3 08               [12]  702 	inc	r0
      0021D4 E6               [12]  703 	mov	a,@r0
      0021D5 33               [12]  704 	rlc	a
      0021D6 FF               [12]  705 	mov	r7,a
      0021D7 EB               [12]  706 	mov	a,r3
      0021D8 2B               [12]  707 	add	a,r3
      0021D9 FB               [12]  708 	mov	r3,a
      0021DA EF               [12]  709 	mov	a,r7
      0021DB 33               [12]  710 	rlc	a
      0021DC FF               [12]  711 	mov	r7,a
      0021DD EB               [12]  712 	mov	a,r3
      0021DE 24 A5            [12]  713 	add	a,#_neigh
      0021E0 F5 82            [12]  714 	mov	dpl,a
      0021E2 EF               [12]  715 	mov	a,r7
      0021E3 34 3E            [12]  716 	addc	a,#(_neigh >> 8)
      0021E5 F5 83            [12]  717 	mov	dph,a
      0021E7 E4               [12]  718 	clr	a
      0021E8 93               [24]  719 	movc	a,@a+dptr
      0021E9 FC               [12]  720 	mov	r4,a
      0021EA A3               [24]  721 	inc	dptr
      0021EB E4               [12]  722 	clr	a
      0021EC 93               [24]  723 	movc	a,@a+dptr
      0021ED FD               [12]  724 	mov	r5,a
      0021EE E5 10            [12]  725 	mov	a,_bp
      0021F0 24 06            [12]  726 	add	a,#0x06
      0021F2 F8               [12]  727 	mov	r0,a
      0021F3 EC               [12]  728 	mov	a,r4
      0021F4 26               [12]  729 	add	a,@r0
      0021F5 FC               [12]  730 	mov	r4,a
      0021F6 ED               [12]  731 	mov	a,r5
      0021F7 08               [12]  732 	inc	r0
      0021F8 36               [12]  733 	addc	a,@r0
      0021F9 FD               [12]  734 	mov	r5,a
      0021FA E5 10            [12]  735 	mov	a,_bp
      0021FC 24 03            [12]  736 	add	a,#0x03
      0021FE F8               [12]  737 	mov	r0,a
      0021FF 86 00            [24]  738 	mov	ar0,@r0
      002201 A6 04            [24]  739 	mov	@r0,ar4
      002203 08               [12]  740 	inc	r0
      002204 A6 05            [24]  741 	mov	@r0,ar5
      002206 18               [12]  742 	dec	r0
      002207 D0 00            [24]  743 	pop	ar0
                                    744 ;	walk.c:76: t.c = cur.c + neigh[j].c;
      002209 C0 01            [24]  745 	push	ar1
      00220B E5 10            [12]  746 	mov	a,_bp
      00220D 24 06            [12]  747 	add	a,#0x06
      00220F F9               [12]  748 	mov	r1,a
      002210 74 02            [12]  749 	mov	a,#0x02
      002212 28               [12]  750 	add	a,r0
      002213 F7               [12]  751 	mov	@r1,a
      002214 D0 01            [24]  752 	pop	ar1
      002216 C0 00            [24]  753 	push	ar0
      002218 A8 02            [24]  754 	mov	r0,ar2
      00221A 86 04            [24]  755 	mov	ar4,@r0
      00221C 08               [12]  756 	inc	r0
      00221D 86 05            [24]  757 	mov	ar5,@r0
      00221F EB               [12]  758 	mov	a,r3
      002220 24 A5            [12]  759 	add	a,#_neigh
      002222 FB               [12]  760 	mov	r3,a
      002223 EF               [12]  761 	mov	a,r7
      002224 34 3E            [12]  762 	addc	a,#(_neigh >> 8)
      002226 FF               [12]  763 	mov	r7,a
      002227 8B 82            [24]  764 	mov	dpl,r3
      002229 8F 83            [24]  765 	mov	dph,r7
      00222B A3               [24]  766 	inc	dptr
      00222C A3               [24]  767 	inc	dptr
      00222D E4               [12]  768 	clr	a
      00222E 93               [24]  769 	movc	a,@a+dptr
      00222F FB               [12]  770 	mov	r3,a
      002230 A3               [24]  771 	inc	dptr
      002231 E4               [12]  772 	clr	a
      002232 93               [24]  773 	movc	a,@a+dptr
      002233 FF               [12]  774 	mov	r7,a
      002234 EB               [12]  775 	mov	a,r3
      002235 2C               [12]  776 	add	a,r4
      002236 FC               [12]  777 	mov	r4,a
      002237 EF               [12]  778 	mov	a,r7
      002238 3D               [12]  779 	addc	a,r5
      002239 FD               [12]  780 	mov	r5,a
      00223A E5 10            [12]  781 	mov	a,_bp
      00223C 24 06            [12]  782 	add	a,#0x06
      00223E F8               [12]  783 	mov	r0,a
      00223F 86 00            [24]  784 	mov	ar0,@r0
      002241 A6 04            [24]  785 	mov	@r0,ar4
      002243 08               [12]  786 	inc	r0
      002244 A6 05            [24]  787 	mov	@r0,ar5
      002246 18               [12]  788 	dec	r0
      002247 D0 00            [24]  789 	pop	ar0
                                    790 ;	walk.c:77: if ((t.r < 0) || (t.r == ROWS) || (t.c < 0) || (t.c == COLS)) continue;
      002249 86 04            [24]  791 	mov	ar4,@r0
      00224B 08               [12]  792 	inc	r0
      00224C 86 03            [24]  793 	mov	ar3,@r0
      00224E 18               [12]  794 	dec	r0
      00224F EB               [12]  795 	mov	a,r3
      002250 30 E7 03         [24]  796 	jnb	acc.7,00218$
      002253 02 23 3A         [24]  797 	ljmp	00113$
      002256                        798 00218$:
      002256 BC 30 06         [24]  799 	cjne	r4,#0x30,00219$
      002259 BB 00 03         [24]  800 	cjne	r3,#0x00,00219$
      00225C 02 23 3A         [24]  801 	ljmp	00113$
      00225F                        802 00219$:
      00225F C0 00            [24]  803 	push	ar0
      002261 E5 10            [12]  804 	mov	a,_bp
      002263 24 06            [12]  805 	add	a,#0x06
      002265 F8               [12]  806 	mov	r0,a
      002266 86 00            [24]  807 	mov	ar0,@r0
      002268 86 05            [24]  808 	mov	ar5,@r0
      00226A 08               [12]  809 	inc	r0
      00226B 86 07            [24]  810 	mov	ar7,@r0
      00226D 18               [12]  811 	dec	r0
      00226E D0 00            [24]  812 	pop	ar0
      002270 EF               [12]  813 	mov	a,r7
      002271 30 E7 03         [24]  814 	jnb	acc.7,00220$
      002274 02 23 3A         [24]  815 	ljmp	00113$
      002277                        816 00220$:
      002277 C0 00            [24]  817 	push	ar0
      002279 E5 10            [12]  818 	mov	a,_bp
      00227B 24 06            [12]  819 	add	a,#0x06
      00227D F8               [12]  820 	mov	r0,a
      00227E 86 00            [24]  821 	mov	ar0,@r0
      002280 86 05            [24]  822 	mov	ar5,@r0
      002282 08               [12]  823 	inc	r0
      002283 86 07            [24]  824 	mov	ar7,@r0
      002285 18               [12]  825 	dec	r0
      002286 D0 00            [24]  826 	pop	ar0
      002288 BD C0 06         [24]  827 	cjne	r5,#0xc0,00221$
      00228B BF 00 03         [24]  828 	cjne	r7,#0x00,00221$
      00228E 02 23 3A         [24]  829 	ljmp	00113$
      002291                        830 00221$:
                                    831 ;	walk.c:79: if (g[t.r][t.c] == 0x55) f++;
      002291 C0 06            [24]  832 	push	ar6
      002293 C0 02            [24]  833 	push	ar2
      002295 C0 01            [24]  834 	push	ar1
      002297 C0 00            [24]  835 	push	ar0
      002299 C0 04            [24]  836 	push	ar4
      00229B C0 03            [24]  837 	push	ar3
      00229D 90 00 C0         [24]  838 	mov	dptr,#0x00c0
      0022A0 12 29 A0         [24]  839 	lcall	__mulint
      0022A3 AD 82            [24]  840 	mov	r5,dpl
      0022A5 AF 83            [24]  841 	mov	r7,dph
      0022A7 15 81            [12]  842 	dec	sp
      0022A9 15 81            [12]  843 	dec	sp
      0022AB D0 00            [24]  844 	pop	ar0
      0022AD D0 01            [24]  845 	pop	ar1
      0022AF D0 02            [24]  846 	pop	ar2
      0022B1 D0 06            [24]  847 	pop	ar6
      0022B3 C0 00            [24]  848 	push	ar0
      0022B5 E5 10            [12]  849 	mov	a,_bp
      0022B7 24 03            [12]  850 	add	a,#0x03
      0022B9 F8               [12]  851 	mov	r0,a
      0022BA ED               [12]  852 	mov	a,r5
      0022BB 24 00            [12]  853 	add	a,#_g
      0022BD F6               [12]  854 	mov	@r0,a
      0022BE EF               [12]  855 	mov	a,r7
      0022BF 34 40            [12]  856 	addc	a,#(_g >> 8)
      0022C1 08               [12]  857 	inc	r0
      0022C2 F6               [12]  858 	mov	@r0,a
      0022C3 E5 10            [12]  859 	mov	a,_bp
      0022C5 24 06            [12]  860 	add	a,#0x06
      0022C7 F8               [12]  861 	mov	r0,a
      0022C8 86 00            [24]  862 	mov	ar0,@r0
      0022CA 86 03            [24]  863 	mov	ar3,@r0
      0022CC 08               [12]  864 	inc	r0
      0022CD 86 04            [24]  865 	mov	ar4,@r0
      0022CF 18               [12]  866 	dec	r0
      0022D0 E5 10            [12]  867 	mov	a,_bp
      0022D2 24 03            [12]  868 	add	a,#0x03
      0022D4 F8               [12]  869 	mov	r0,a
      0022D5 EB               [12]  870 	mov	a,r3
      0022D6 26               [12]  871 	add	a,@r0
      0022D7 F5 82            [12]  872 	mov	dpl,a
      0022D9 EC               [12]  873 	mov	a,r4
      0022DA 08               [12]  874 	inc	r0
      0022DB 36               [12]  875 	addc	a,@r0
      0022DC F5 83            [12]  876 	mov	dph,a
      0022DE D0 00            [24]  877 	pop	ar0
      0022E0 E0               [24]  878 	movx	a,@dptr
      0022E1 FC               [12]  879 	mov	r4,a
      0022E2 BC 55 11         [24]  880 	cjne	r4,#0x55,00111$
      0022E5 C0 00            [24]  881 	push	ar0
      0022E7 E5 10            [12]  882 	mov	a,_bp
      0022E9 24 16            [12]  883 	add	a,#0x16
      0022EB F8               [12]  884 	mov	r0,a
      0022EC 06               [12]  885 	inc	@r0
      0022ED B6 00 02         [24]  886 	cjne	@r0,#0x00,00224$
      0022F0 08               [12]  887 	inc	r0
      0022F1 06               [12]  888 	inc	@r0
      0022F2                        889 00224$:
      0022F2 D0 00            [24]  890 	pop	ar0
      0022F4 80 44            [24]  891 	sjmp	00113$
      0022F6                        892 00111$:
                                    893 ;	walk.c:80: else if (g[t.r][t.c] != 0xaa) {
      0022F6 ED               [12]  894 	mov	a,r5
      0022F7 24 00            [12]  895 	add	a,#_g
      0022F9 FD               [12]  896 	mov	r5,a
      0022FA EF               [12]  897 	mov	a,r7
      0022FB 34 40            [12]  898 	addc	a,#(_g >> 8)
      0022FD FF               [12]  899 	mov	r7,a
      0022FE C0 00            [24]  900 	push	ar0
      002300 E5 10            [12]  901 	mov	a,_bp
      002302 24 06            [12]  902 	add	a,#0x06
      002304 F8               [12]  903 	mov	r0,a
      002305 86 00            [24]  904 	mov	ar0,@r0
      002307 86 03            [24]  905 	mov	ar3,@r0
      002309 08               [12]  906 	inc	r0
      00230A 86 04            [24]  907 	mov	ar4,@r0
      00230C 18               [12]  908 	dec	r0
      00230D D0 00            [24]  909 	pop	ar0
      00230F EB               [12]  910 	mov	a,r3
      002310 2D               [12]  911 	add	a,r5
      002311 F5 82            [12]  912 	mov	dpl,a
      002313 EC               [12]  913 	mov	a,r4
      002314 3F               [12]  914 	addc	a,r7
      002315 F5 83            [12]  915 	mov	dph,a
      002317 E0               [24]  916 	movx	a,@dptr
      002318 FF               [12]  917 	mov	r7,a
      002319 BF AA 02         [24]  918 	cjne	r7,#0xaa,00225$
      00231C 80 1C            [24]  919 	sjmp	00113$
      00231E                        920 00225$:
                                    921 ;	walk.c:81: (void)puts("Memory error");
      00231E 90 3E BF         [24]  922 	mov	dptr,#___str_1
      002321 75 F0 80         [24]  923 	mov	b,#0x80
      002324 C0 06            [24]  924 	push	ar6
      002326 C0 02            [24]  925 	push	ar2
      002328 C0 01            [24]  926 	push	ar1
      00232A C0 00            [24]  927 	push	ar0
      00232C 12 2A D1         [24]  928 	lcall	_puts
      00232F D0 00            [24]  929 	pop	ar0
      002331 D0 01            [24]  930 	pop	ar1
      002333 D0 02            [24]  931 	pop	ar2
      002335 D0 06            [24]  932 	pop	ar6
                                    933 ;	walk.c:82: reset();
      002337 12 20 88         [24]  934 	lcall	_reset
      00233A                        935 00113$:
                                    936 ;	walk.c:74: for (j = 0, f = 0; j < NMAX; j++) {
      00233A C0 00            [24]  937 	push	ar0
      00233C E5 10            [12]  938 	mov	a,_bp
      00233E 24 14            [12]  939 	add	a,#0x14
      002340 F8               [12]  940 	mov	r0,a
      002341 06               [12]  941 	inc	@r0
      002342 B6 00 02         [24]  942 	cjne	@r0,#0x00,00226$
      002345 08               [12]  943 	inc	r0
      002346 06               [12]  944 	inc	@r0
      002347                        945 00226$:
      002347 D0 00            [24]  946 	pop	ar0
      002349 02 21 9B         [24]  947 	ljmp	00136$
      00234C                        948 00114$:
                                    949 ;	walk.c:86: if (f) {
      00234C C0 00            [24]  950 	push	ar0
      00234E E5 10            [12]  951 	mov	a,_bp
      002350 24 16            [12]  952 	add	a,#0x16
      002352 F8               [12]  953 	mov	r0,a
      002353 E6               [12]  954 	mov	a,@r0
      002354 08               [12]  955 	inc	r0
      002355 46               [12]  956 	orl	a,@r0
      002356 D0 00            [24]  957 	pop	ar0
      002358 70 03            [24]  958 	jnz	00227$
      00235A 02 25 B5         [24]  959 	ljmp	00131$
      00235D                        960 00227$:
                                    961 ;	walk.c:87: while (1) {
      00235D                        962 00128$:
                                    963 ;	walk.c:88: j = rand() % NMAX;
      00235D C0 06            [24]  964 	push	ar6
      00235F C0 02            [24]  965 	push	ar2
      002361 C0 01            [24]  966 	push	ar1
      002363 C0 00            [24]  967 	push	ar0
      002365 12 28 C3         [24]  968 	lcall	_rand
      002368 AD 82            [24]  969 	mov	r5,dpl
      00236A AF 83            [24]  970 	mov	r7,dph
      00236C 74 04            [12]  971 	mov	a,#0x04
      00236E C0 E0            [24]  972 	push	acc
      002370 E4               [12]  973 	clr	a
      002371 C0 E0            [24]  974 	push	acc
      002373 8D 82            [24]  975 	mov	dpl,r5
      002375 8F 83            [24]  976 	mov	dph,r7
      002377 12 2B AC         [24]  977 	lcall	__modsint
      00237A AD 82            [24]  978 	mov	r5,dpl
      00237C AF 83            [24]  979 	mov	r7,dph
      00237E 15 81            [12]  980 	dec	sp
      002380 15 81            [12]  981 	dec	sp
      002382 D0 00            [24]  982 	pop	ar0
      002384 D0 01            [24]  983 	pop	ar1
      002386 D0 02            [24]  984 	pop	ar2
      002388 D0 06            [24]  985 	pop	ar6
      00238A C0 00            [24]  986 	push	ar0
      00238C E5 10            [12]  987 	mov	a,_bp
      00238E 24 14            [12]  988 	add	a,#0x14
      002390 F8               [12]  989 	mov	r0,a
      002391 A6 05            [24]  990 	mov	@r0,ar5
      002393 08               [12]  991 	inc	r0
      002394 A6 07            [24]  992 	mov	@r0,ar7
                                    993 ;	walk.c:89: t.r = cur.r + neigh[j].r;
      002396 E5 10            [12]  994 	mov	a,_bp
      002398 24 06            [12]  995 	add	a,#0x06
      00239A F8               [12]  996 	mov	r0,a
      00239B E5 10            [12]  997 	mov	a,_bp
      00239D 24 10            [12]  998 	add	a,#0x10
      00239F F6               [12]  999 	mov	@r0,a
      0023A0 E5 10            [12] 1000 	mov	a,_bp
      0023A2 24 03            [12] 1001 	add	a,#0x03
      0023A4 F8               [12] 1002 	mov	r0,a
      0023A5 E7               [12] 1003 	mov	a,@r1
      0023A6 F6               [12] 1004 	mov	@r0,a
      0023A7 09               [12] 1005 	inc	r1
      0023A8 E7               [12] 1006 	mov	a,@r1
      0023A9 08               [12] 1007 	inc	r0
      0023AA F6               [12] 1008 	mov	@r0,a
      0023AB 19               [12] 1009 	dec	r1
      0023AC E5 10            [12] 1010 	mov	a,_bp
      0023AE 24 14            [12] 1011 	add	a,#0x14
      0023B0 F8               [12] 1012 	mov	r0,a
      0023B1 E6               [12] 1013 	mov	a,@r0
      0023B2 26               [12] 1014 	add	a,@r0
      0023B3 FC               [12] 1015 	mov	r4,a
      0023B4 08               [12] 1016 	inc	r0
      0023B5 E6               [12] 1017 	mov	a,@r0
      0023B6 33               [12] 1018 	rlc	a
      0023B7 FD               [12] 1019 	mov	r5,a
      0023B8 EC               [12] 1020 	mov	a,r4
      0023B9 2C               [12] 1021 	add	a,r4
      0023BA FC               [12] 1022 	mov	r4,a
      0023BB ED               [12] 1023 	mov	a,r5
      0023BC 33               [12] 1024 	rlc	a
      0023BD FD               [12] 1025 	mov	r5,a
      0023BE EC               [12] 1026 	mov	a,r4
      0023BF 24 A5            [12] 1027 	add	a,#_neigh
      0023C1 F5 82            [12] 1028 	mov	dpl,a
      0023C3 ED               [12] 1029 	mov	a,r5
      0023C4 34 3E            [12] 1030 	addc	a,#(_neigh >> 8)
      0023C6 F5 83            [12] 1031 	mov	dph,a
      0023C8 E4               [12] 1032 	clr	a
      0023C9 93               [24] 1033 	movc	a,@a+dptr
      0023CA FB               [12] 1034 	mov	r3,a
      0023CB A3               [24] 1035 	inc	dptr
      0023CC E4               [12] 1036 	clr	a
      0023CD 93               [24] 1037 	movc	a,@a+dptr
      0023CE FF               [12] 1038 	mov	r7,a
      0023CF E5 10            [12] 1039 	mov	a,_bp
      0023D1 24 03            [12] 1040 	add	a,#0x03
      0023D3 F8               [12] 1041 	mov	r0,a
      0023D4 EB               [12] 1042 	mov	a,r3
      0023D5 26               [12] 1043 	add	a,@r0
      0023D6 FB               [12] 1044 	mov	r3,a
      0023D7 EF               [12] 1045 	mov	a,r7
      0023D8 08               [12] 1046 	inc	r0
      0023D9 36               [12] 1047 	addc	a,@r0
      0023DA FF               [12] 1048 	mov	r7,a
      0023DB E5 10            [12] 1049 	mov	a,_bp
      0023DD 24 06            [12] 1050 	add	a,#0x06
      0023DF F8               [12] 1051 	mov	r0,a
      0023E0 86 00            [24] 1052 	mov	ar0,@r0
      0023E2 A6 03            [24] 1053 	mov	@r0,ar3
      0023E4 08               [12] 1054 	inc	r0
      0023E5 A6 07            [24] 1055 	mov	@r0,ar7
      0023E7 18               [12] 1056 	dec	r0
                                   1057 ;	walk.c:90: t.c = cur.c + neigh[j].c;
      0023E8 E5 10            [12] 1058 	mov	a,_bp
      0023EA 24 06            [12] 1059 	add	a,#0x06
      0023EC F8               [12] 1060 	mov	r0,a
      0023ED 74 02            [12] 1061 	mov	a,#0x02
      0023EF 2E               [12] 1062 	add	a,r6
      0023F0 F6               [12] 1063 	mov	@r0,a
      0023F1 A8 02            [24] 1064 	mov	r0,ar2
      0023F3 86 03            [24] 1065 	mov	ar3,@r0
      0023F5 08               [12] 1066 	inc	r0
      0023F6 86 07            [24] 1067 	mov	ar7,@r0
      0023F8 EC               [12] 1068 	mov	a,r4
      0023F9 24 A5            [12] 1069 	add	a,#_neigh
      0023FB FC               [12] 1070 	mov	r4,a
      0023FC ED               [12] 1071 	mov	a,r5
      0023FD 34 3E            [12] 1072 	addc	a,#(_neigh >> 8)
      0023FF FD               [12] 1073 	mov	r5,a
      002400 8C 82            [24] 1074 	mov	dpl,r4
      002402 8D 83            [24] 1075 	mov	dph,r5
      002404 A3               [24] 1076 	inc	dptr
      002405 A3               [24] 1077 	inc	dptr
      002406 E4               [12] 1078 	clr	a
      002407 93               [24] 1079 	movc	a,@a+dptr
      002408 FC               [12] 1080 	mov	r4,a
      002409 A3               [24] 1081 	inc	dptr
      00240A E4               [12] 1082 	clr	a
      00240B 93               [24] 1083 	movc	a,@a+dptr
      00240C FD               [12] 1084 	mov	r5,a
      00240D EC               [12] 1085 	mov	a,r4
      00240E 2B               [12] 1086 	add	a,r3
      00240F FB               [12] 1087 	mov	r3,a
      002410 ED               [12] 1088 	mov	a,r5
      002411 3F               [12] 1089 	addc	a,r7
      002412 FF               [12] 1090 	mov	r7,a
      002413 E5 10            [12] 1091 	mov	a,_bp
      002415 24 06            [12] 1092 	add	a,#0x06
      002417 F8               [12] 1093 	mov	r0,a
      002418 86 00            [24] 1094 	mov	ar0,@r0
      00241A A6 03            [24] 1095 	mov	@r0,ar3
      00241C 08               [12] 1096 	inc	r0
      00241D A6 07            [24] 1097 	mov	@r0,ar7
      00241F 18               [12] 1098 	dec	r0
                                   1099 ;	walk.c:91: if ((t.r < 0) || (t.r == ROWS) || (t.c < 0) || (t.c == COLS)) continue;
      002420 A8 06            [24] 1100 	mov	r0,ar6
      002422 86 04            [24] 1101 	mov	ar4,@r0
      002424 08               [12] 1102 	inc	r0
      002425 86 03            [24] 1103 	mov	ar3,@r0
      002427 D0 00            [24] 1104 	pop	ar0
      002429 EB               [12] 1105 	mov	a,r3
      00242A 30 E7 03         [24] 1106 	jnb	acc.7,00228$
      00242D 02 23 5D         [24] 1107 	ljmp	00128$
      002430                       1108 00228$:
      002430 BC 30 06         [24] 1109 	cjne	r4,#0x30,00229$
      002433 BB 00 03         [24] 1110 	cjne	r3,#0x00,00229$
      002436 02 23 5D         [24] 1111 	ljmp	00128$
      002439                       1112 00229$:
      002439 C0 00            [24] 1113 	push	ar0
      00243B E5 10            [12] 1114 	mov	a,_bp
      00243D 24 06            [12] 1115 	add	a,#0x06
      00243F F8               [12] 1116 	mov	r0,a
      002440 86 00            [24] 1117 	mov	ar0,@r0
      002442 86 05            [24] 1118 	mov	ar5,@r0
      002444 08               [12] 1119 	inc	r0
      002445 86 07            [24] 1120 	mov	ar7,@r0
      002447 18               [12] 1121 	dec	r0
      002448 D0 00            [24] 1122 	pop	ar0
      00244A EF               [12] 1123 	mov	a,r7
      00244B 30 E7 03         [24] 1124 	jnb	acc.7,00230$
      00244E 02 23 5D         [24] 1125 	ljmp	00128$
      002451                       1126 00230$:
      002451 C0 00            [24] 1127 	push	ar0
      002453 E5 10            [12] 1128 	mov	a,_bp
      002455 24 06            [12] 1129 	add	a,#0x06
      002457 F8               [12] 1130 	mov	r0,a
      002458 86 00            [24] 1131 	mov	ar0,@r0
      00245A 86 05            [24] 1132 	mov	ar5,@r0
      00245C 08               [12] 1133 	inc	r0
      00245D 86 07            [24] 1134 	mov	ar7,@r0
      00245F 18               [12] 1135 	dec	r0
      002460 D0 00            [24] 1136 	pop	ar0
      002462 BD C0 06         [24] 1137 	cjne	r5,#0xc0,00231$
      002465 BF 00 03         [24] 1138 	cjne	r7,#0x00,00231$
      002468 02 23 5D         [24] 1139 	ljmp	00128$
      00246B                       1140 00231$:
                                   1141 ;	walk.c:93: if (g[t.r][t.c] == 0xaa) continue;
      00246B C0 06            [24] 1142 	push	ar6
      00246D C0 02            [24] 1143 	push	ar2
      00246F C0 01            [24] 1144 	push	ar1
      002471 C0 00            [24] 1145 	push	ar0
      002473 C0 04            [24] 1146 	push	ar4
      002475 C0 03            [24] 1147 	push	ar3
      002477 90 00 C0         [24] 1148 	mov	dptr,#0x00c0
      00247A 12 29 A0         [24] 1149 	lcall	__mulint
      00247D AD 82            [24] 1150 	mov	r5,dpl
      00247F AF 83            [24] 1151 	mov	r7,dph
      002481 15 81            [12] 1152 	dec	sp
      002483 15 81            [12] 1153 	dec	sp
      002485 D0 00            [24] 1154 	pop	ar0
      002487 D0 01            [24] 1155 	pop	ar1
      002489 D0 02            [24] 1156 	pop	ar2
      00248B D0 06            [24] 1157 	pop	ar6
      00248D C0 00            [24] 1158 	push	ar0
      00248F E5 10            [12] 1159 	mov	a,_bp
      002491 24 03            [12] 1160 	add	a,#0x03
      002493 F8               [12] 1161 	mov	r0,a
      002494 ED               [12] 1162 	mov	a,r5
      002495 24 00            [12] 1163 	add	a,#_g
      002497 F6               [12] 1164 	mov	@r0,a
      002498 EF               [12] 1165 	mov	a,r7
      002499 34 40            [12] 1166 	addc	a,#(_g >> 8)
      00249B 08               [12] 1167 	inc	r0
      00249C F6               [12] 1168 	mov	@r0,a
      00249D E5 10            [12] 1169 	mov	a,_bp
      00249F 24 06            [12] 1170 	add	a,#0x06
      0024A1 F8               [12] 1171 	mov	r0,a
      0024A2 86 00            [24] 1172 	mov	ar0,@r0
      0024A4 86 03            [24] 1173 	mov	ar3,@r0
      0024A6 08               [12] 1174 	inc	r0
      0024A7 86 04            [24] 1175 	mov	ar4,@r0
      0024A9 18               [12] 1176 	dec	r0
      0024AA E5 10            [12] 1177 	mov	a,_bp
      0024AC 24 03            [12] 1178 	add	a,#0x03
      0024AE F8               [12] 1179 	mov	r0,a
      0024AF EB               [12] 1180 	mov	a,r3
      0024B0 26               [12] 1181 	add	a,@r0
      0024B1 F5 82            [12] 1182 	mov	dpl,a
      0024B3 EC               [12] 1183 	mov	a,r4
      0024B4 08               [12] 1184 	inc	r0
      0024B5 36               [12] 1185 	addc	a,@r0
      0024B6 F5 83            [12] 1186 	mov	dph,a
      0024B8 D0 00            [24] 1187 	pop	ar0
      0024BA E0               [24] 1188 	movx	a,@dptr
      0024BB FC               [12] 1189 	mov	r4,a
      0024BC BC AA 03         [24] 1190 	cjne	r4,#0xaa,00232$
      0024BF 02 23 5D         [24] 1191 	ljmp	00128$
      0024C2                       1192 00232$:
                                   1193 ;	walk.c:94: else if (g[t.r][t.c] != 0x55) {
      0024C2 ED               [12] 1194 	mov	a,r5
      0024C3 24 00            [12] 1195 	add	a,#_g
      0024C5 FD               [12] 1196 	mov	r5,a
      0024C6 EF               [12] 1197 	mov	a,r7
      0024C7 34 40            [12] 1198 	addc	a,#(_g >> 8)
      0024C9 FF               [12] 1199 	mov	r7,a
      0024CA C0 00            [24] 1200 	push	ar0
      0024CC E5 10            [12] 1201 	mov	a,_bp
      0024CE 24 06            [12] 1202 	add	a,#0x06
      0024D0 F8               [12] 1203 	mov	r0,a
      0024D1 86 00            [24] 1204 	mov	ar0,@r0
      0024D3 86 03            [24] 1205 	mov	ar3,@r0
      0024D5 08               [12] 1206 	inc	r0
      0024D6 86 04            [24] 1207 	mov	ar4,@r0
      0024D8 18               [12] 1208 	dec	r0
      0024D9 D0 00            [24] 1209 	pop	ar0
      0024DB EB               [12] 1210 	mov	a,r3
      0024DC 2D               [12] 1211 	add	a,r5
      0024DD F5 82            [12] 1212 	mov	dpl,a
      0024DF EC               [12] 1213 	mov	a,r4
      0024E0 3F               [12] 1214 	addc	a,r7
      0024E1 F5 83            [12] 1215 	mov	dph,a
      0024E3 E0               [24] 1216 	movx	a,@dptr
      0024E4 FF               [12] 1217 	mov	r7,a
      0024E5 BF 55 02         [24] 1218 	cjne	r7,#0x55,00233$
      0024E8 80 1C            [24] 1219 	sjmp	00124$
      0024EA                       1220 00233$:
                                   1221 ;	walk.c:95: (void)puts("Memory error");
      0024EA 90 3E BF         [24] 1222 	mov	dptr,#___str_1
      0024ED 75 F0 80         [24] 1223 	mov	b,#0x80
      0024F0 C0 06            [24] 1224 	push	ar6
      0024F2 C0 02            [24] 1225 	push	ar2
      0024F4 C0 01            [24] 1226 	push	ar1
      0024F6 C0 00            [24] 1227 	push	ar0
      0024F8 12 2A D1         [24] 1228 	lcall	_puts
      0024FB D0 00            [24] 1229 	pop	ar0
      0024FD D0 01            [24] 1230 	pop	ar1
      0024FF D0 02            [24] 1231 	pop	ar2
      002501 D0 06            [24] 1232 	pop	ar6
                                   1233 ;	walk.c:96: reset();
      002503 12 20 88         [24] 1234 	lcall	_reset
      002506                       1235 00124$:
                                   1236 ;	walk.c:99: if (!stpush(&cur)) {
      002506 C0 00            [24] 1237 	push	ar0
      002508 A8 10            [24] 1238 	mov	r0,_bp
      00250A 08               [12] 1239 	inc	r0
      00250B 08               [12] 1240 	inc	r0
      00250C 86 04            [24] 1241 	mov	ar4,@r0
      00250E 7D 00            [12] 1242 	mov	r5,#0x00
      002510 7F 40            [12] 1243 	mov	r7,#0x40
      002512 D0 00            [24] 1244 	pop	ar0
      002514 8C 82            [24] 1245 	mov	dpl,r4
      002516 8D 83            [24] 1246 	mov	dph,r5
      002518 8F F0            [24] 1247 	mov	b,r7
      00251A C0 06            [24] 1248 	push	ar6
      00251C C0 02            [24] 1249 	push	ar2
      00251E C0 01            [24] 1250 	push	ar1
      002520 C0 00            [24] 1251 	push	ar0
      002522 12 28 00         [24] 1252 	lcall	_stpush
      002525 E5 82            [12] 1253 	mov	a,dpl
      002527 85 83 F0         [24] 1254 	mov	b,dph
      00252A D0 00            [24] 1255 	pop	ar0
      00252C D0 01            [24] 1256 	pop	ar1
      00252E D0 02            [24] 1257 	pop	ar2
      002530 D0 06            [24] 1258 	pop	ar6
      002532 45 F0            [12] 1259 	orl	a,b
      002534 70 1C            [24] 1260 	jnz	00126$
                                   1261 ;	walk.c:100: (void)puts("Memory error");
      002536 90 3E BF         [24] 1262 	mov	dptr,#___str_1
      002539 75 F0 80         [24] 1263 	mov	b,#0x80
      00253C C0 06            [24] 1264 	push	ar6
      00253E C0 02            [24] 1265 	push	ar2
      002540 C0 01            [24] 1266 	push	ar1
      002542 C0 00            [24] 1267 	push	ar0
      002544 12 2A D1         [24] 1268 	lcall	_puts
      002547 D0 00            [24] 1269 	pop	ar0
      002549 D0 01            [24] 1270 	pop	ar1
      00254B D0 02            [24] 1271 	pop	ar2
      00254D D0 06            [24] 1272 	pop	ar6
                                   1273 ;	walk.c:101: reset();
      00254F 12 20 88         [24] 1274 	lcall	_reset
      002552                       1275 00126$:
                                   1276 ;	walk.c:103: cur = t;
      002552 C0 06            [24] 1277 	push	ar6
      002554 C0 00            [24] 1278 	push	ar0
      002556 A8 10            [24] 1279 	mov	r0,_bp
      002558 08               [12] 1280 	inc	r0
      002559 C0 01            [24] 1281 	push	ar1
      00255B E5 10            [12] 1282 	mov	a,_bp
      00255D 24 09            [12] 1283 	add	a,#0x09
      00255F F9               [12] 1284 	mov	r1,a
      002560 E6               [12] 1285 	mov	a,@r0
      002561 F7               [12] 1286 	mov	@r1,a
      002562 09               [12] 1287 	inc	r1
      002563 77 00            [12] 1288 	mov	@r1,#0x00
      002565 09               [12] 1289 	inc	r1
      002566 77 40            [12] 1290 	mov	@r1,#0x40
      002568 D0 01            [24] 1291 	pop	ar1
      00256A E5 10            [12] 1292 	mov	a,_bp
      00256C 24 08            [12] 1293 	add	a,#0x08
      00256E F8               [12] 1294 	mov	r0,a
      00256F 86 03            [24] 1295 	mov	ar3,@r0
      002571 7E 00            [12] 1296 	mov	r6,#0x00
      002573 7F 40            [12] 1297 	mov	r7,#0x40
      002575 D0 00            [24] 1298 	pop	ar0
      002577 C0 06            [24] 1299 	push	ar6
      002579 C0 02            [24] 1300 	push	ar2
      00257B C0 01            [24] 1301 	push	ar1
      00257D C0 00            [24] 1302 	push	ar0
      00257F 74 04            [12] 1303 	mov	a,#0x04
      002581 C0 E0            [24] 1304 	push	acc
      002583 E4               [12] 1305 	clr	a
      002584 C0 E0            [24] 1306 	push	acc
      002586 85 00 F0         [24] 1307 	mov	b,ar0
      002589 E5 10            [12] 1308 	mov	a,_bp
      00258B 24 09            [12] 1309 	add	a,#0x09
      00258D F8               [12] 1310 	mov	r0,a
      00258E E6               [12] 1311 	mov	a,@r0
      00258F C0 E0            [24] 1312 	push	acc
      002591 08               [12] 1313 	inc	r0
      002592 E6               [12] 1314 	mov	a,@r0
      002593 C0 E0            [24] 1315 	push	acc
      002595 08               [12] 1316 	inc	r0
      002596 E6               [12] 1317 	mov	a,@r0
      002597 C0 E0            [24] 1318 	push	acc
      002599 8B 82            [24] 1319 	mov	dpl,r3
      00259B 8E 83            [24] 1320 	mov	dph,r6
      00259D 8F F0            [24] 1321 	mov	b,r7
      00259F 12 2A 3E         [24] 1322 	lcall	___memcpy
      0025A2 E5 81            [12] 1323 	mov	a,sp
      0025A4 24 FB            [12] 1324 	add	a,#0xfb
      0025A6 F5 81            [12] 1325 	mov	sp,a
      0025A8 D0 00            [24] 1326 	pop	ar0
      0025AA D0 01            [24] 1327 	pop	ar1
      0025AC D0 02            [24] 1328 	pop	ar2
      0025AE D0 06            [24] 1329 	pop	ar6
                                   1330 ;	walk.c:104: goto process;
      0025B0 D0 06            [24] 1331 	pop	ar6
      0025B2 02 20 F9         [24] 1332 	ljmp	00101$
      0025B5                       1333 00131$:
                                   1334 ;	walk.c:108: printf("\033[%d;%dH.", cur.r + 1, cur.c + 1);
      0025B5 C0 00            [24] 1335 	push	ar0
      0025B7 A8 02            [24] 1336 	mov	r0,ar2
      0025B9 86 05            [24] 1337 	mov	ar5,@r0
      0025BB 08               [12] 1338 	inc	r0
      0025BC 86 07            [24] 1339 	mov	ar7,@r0
      0025BE D0 00            [24] 1340 	pop	ar0
      0025C0 0D               [12] 1341 	inc	r5
      0025C1 BD 00 01         [24] 1342 	cjne	r5,#0x00,00235$
      0025C4 0F               [12] 1343 	inc	r7
      0025C5                       1344 00235$:
      0025C5 87 03            [24] 1345 	mov	ar3,@r1
      0025C7 09               [12] 1346 	inc	r1
      0025C8 87 04            [24] 1347 	mov	ar4,@r1
      0025CA 19               [12] 1348 	dec	r1
      0025CB 0B               [12] 1349 	inc	r3
      0025CC BB 00 01         [24] 1350 	cjne	r3,#0x00,00236$
      0025CF 0C               [12] 1351 	inc	r4
      0025D0                       1352 00236$:
      0025D0 C0 06            [24] 1353 	push	ar6
      0025D2 C0 02            [24] 1354 	push	ar2
      0025D4 C0 01            [24] 1355 	push	ar1
      0025D6 C0 00            [24] 1356 	push	ar0
      0025D8 C0 05            [24] 1357 	push	ar5
      0025DA C0 07            [24] 1358 	push	ar7
      0025DC C0 03            [24] 1359 	push	ar3
      0025DE C0 04            [24] 1360 	push	ar4
      0025E0 74 CC            [12] 1361 	mov	a,#___str_2
      0025E2 C0 E0            [24] 1362 	push	acc
      0025E4 74 3E            [12] 1363 	mov	a,#(___str_2 >> 8)
      0025E6 C0 E0            [24] 1364 	push	acc
      0025E8 74 80            [12] 1365 	mov	a,#0x80
      0025EA C0 E0            [24] 1366 	push	acc
      0025EC 12 2B 57         [24] 1367 	lcall	_printf
      0025EF E5 81            [12] 1368 	mov	a,sp
      0025F1 24 F9            [12] 1369 	add	a,#0xf9
      0025F3 F5 81            [12] 1370 	mov	sp,a
      0025F5 D0 00            [24] 1371 	pop	ar0
      0025F7 D0 01            [24] 1372 	pop	ar1
      0025F9 D0 02            [24] 1373 	pop	ar2
      0025FB D0 06            [24] 1374 	pop	ar6
                                   1375 ;	walk.c:110: if (!stpop(&cur)) goto term;
      0025FD C0 00            [24] 1376 	push	ar0
      0025FF E5 10            [12] 1377 	mov	a,_bp
      002601 24 05            [12] 1378 	add	a,#0x05
      002603 F8               [12] 1379 	mov	r0,a
      002604 86 04            [24] 1380 	mov	ar4,@r0
      002606 7D 00            [12] 1381 	mov	r5,#0x00
      002608 7F 40            [12] 1382 	mov	r7,#0x40
      00260A D0 00            [24] 1383 	pop	ar0
      00260C 8C 82            [24] 1384 	mov	dpl,r4
      00260E 8D 83            [24] 1385 	mov	dph,r5
      002610 8F F0            [24] 1386 	mov	b,r7
      002612 C0 06            [24] 1387 	push	ar6
      002614 C0 02            [24] 1388 	push	ar2
      002616 C0 01            [24] 1389 	push	ar1
      002618 C0 00            [24] 1390 	push	ar0
      00261A 12 28 61         [24] 1391 	lcall	_stpop
      00261D E5 82            [12] 1392 	mov	a,dpl
      00261F 85 83 F0         [24] 1393 	mov	b,dph
      002622 D0 00            [24] 1394 	pop	ar0
      002624 D0 01            [24] 1395 	pop	ar1
      002626 D0 02            [24] 1396 	pop	ar2
      002628 D0 06            [24] 1397 	pop	ar6
      00262A 45 F0            [12] 1398 	orl	a,b
      00262C 60 03            [24] 1399 	jz	00237$
      00262E 02 21 85         [24] 1400 	ljmp	00146$
      002631                       1401 00237$:
                                   1402 ;	walk.c:114: return;
                                   1403 ;	walk.c:115: }
      002631 85 10 81         [24] 1404 	mov	sp,_bp
      002634 D0 10            [24] 1405 	pop	_bp
      002636 22               [24] 1406 	ret
                                   1407 ;------------------------------------------------------------
                                   1408 ;Allocation info for local variables in function 'main'
                                   1409 ;------------------------------------------------------------
                                   1410 ;initial                   Allocated to stack - _bp +3
                                   1411 ;i                         Allocated to stack - _bp +7
                                   1412 ;j                         Allocated to registers r4 r5 
                                   1413 ;sloc0                     Allocated to stack - _bp +1
                                   1414 ;R                         Allocated with name '_main_R_65536_63'
                                   1415 ;------------------------------------------------------------
                                   1416 ;	walk.c:117: int main(void) {
                                   1417 ;	-----------------------------------------
                                   1418 ;	 function main
                                   1419 ;	-----------------------------------------
      002637                       1420 _main:
      002637 C0 10            [24] 1421 	push	_bp
      002639 E5 81            [12] 1422 	mov	a,sp
      00263B F5 10            [12] 1423 	mov	_bp,a
      00263D 24 08            [12] 1424 	add	a,#0x08
      00263F F5 81            [12] 1425 	mov	sp,a
                                   1426 ;	walk.c:122: i0 = 1;
      002641 78 11            [12] 1427 	mov	r0,#_i0
      002643 76 01            [12] 1428 	mov	@r0,#0x01
                                   1429 ;	walk.c:124: IT0 = 1;
                                   1430 ;	assignBit
      002645 D2 88            [12] 1431 	setb	_IT0
                                   1432 ;	walk.c:125: EX0 = 1;
                                   1433 ;	assignBit
      002647 D2 A8            [12] 1434 	setb	_EX0
                                   1435 ;	walk.c:126: EA = 1;
                                   1436 ;	assignBit
      002649 D2 AF            [12] 1437 	setb	_EA
                                   1438 ;	walk.c:128: srand(*R);
      00264B 90 F4 02         [24] 1439 	mov	dptr,#_main_R_65536_63
      00264E E0               [24] 1440 	movx	a,@dptr
      00264F FE               [12] 1441 	mov	r6,a
      002650 A3               [24] 1442 	inc	dptr
      002651 E0               [24] 1443 	movx	a,@dptr
      002652 FF               [12] 1444 	mov	r7,a
      002653 8E 82            [24] 1445 	mov	dpl,r6
      002655 8F 83            [24] 1446 	mov	dph,r7
      002657 E0               [24] 1447 	movx	a,@dptr
      002658 FE               [12] 1448 	mov	r6,a
      002659 A3               [24] 1449 	inc	dptr
      00265A E0               [24] 1450 	movx	a,@dptr
      00265B FF               [12] 1451 	mov	r7,a
      00265C 8E 82            [24] 1452 	mov	dpl,r6
      00265E 8F 83            [24] 1453 	mov	dph,r7
      002660 12 29 87         [24] 1454 	lcall	_srand
                                   1455 ;	walk.c:129: stinit();
      002663 12 27 F7         [24] 1456 	lcall	_stinit
                                   1457 ;	walk.c:131: while (i0) {
      002666 E5 10            [12] 1458 	mov	a,_bp
      002668 24 03            [12] 1459 	add	a,#0x03
      00266A FF               [12] 1460 	mov	r7,a
      00266B FE               [12] 1461 	mov	r6,a
      00266C                       1462 00107$:
      00266C 78 11            [12] 1463 	mov	r0,#_i0
      00266E E6               [12] 1464 	mov	a,@r0
      00266F 70 03            [24] 1465 	jnz	00168$
      002671 02 27 E9         [24] 1466 	ljmp	00109$
      002674                       1467 00168$:
                                   1468 ;	walk.c:132: for (i = 0; i < ROWS; i++)
      002674 E5 10            [12] 1469 	mov	a,_bp
      002676 24 07            [12] 1470 	add	a,#0x07
      002678 F8               [12] 1471 	mov	r0,a
      002679 E4               [12] 1472 	clr	a
      00267A F6               [12] 1473 	mov	@r0,a
      00267B 08               [12] 1474 	inc	r0
      00267C F6               [12] 1475 	mov	@r0,a
      00267D 7A 00            [12] 1476 	mov	r2,#0x00
      00267F 7B 00            [12] 1477 	mov	r3,#0x00
                                   1478 ;	walk.c:133: for (j = 0; j < COLS; j++)
      002681                       1479 00121$:
      002681 A8 10            [24] 1480 	mov	r0,_bp
      002683 08               [12] 1481 	inc	r0
      002684 EA               [12] 1482 	mov	a,r2
      002685 24 00            [12] 1483 	add	a,#_g
      002687 F6               [12] 1484 	mov	@r0,a
      002688 EB               [12] 1485 	mov	a,r3
      002689 34 40            [12] 1486 	addc	a,#(_g >> 8)
      00268B 08               [12] 1487 	inc	r0
      00268C F6               [12] 1488 	mov	@r0,a
      00268D 7C 00            [12] 1489 	mov	r4,#0x00
      00268F 7D 00            [12] 1490 	mov	r5,#0x00
      002691                       1491 00110$:
                                   1492 ;	walk.c:134: g[i][j] = 0x55;
      002691 A8 10            [24] 1493 	mov	r0,_bp
      002693 08               [12] 1494 	inc	r0
      002694 EC               [12] 1495 	mov	a,r4
      002695 26               [12] 1496 	add	a,@r0
      002696 F5 82            [12] 1497 	mov	dpl,a
      002698 ED               [12] 1498 	mov	a,r5
      002699 08               [12] 1499 	inc	r0
      00269A 36               [12] 1500 	addc	a,@r0
      00269B F5 83            [12] 1501 	mov	dph,a
      00269D 74 55            [12] 1502 	mov	a,#0x55
      00269F F0               [24] 1503 	movx	@dptr,a
                                   1504 ;	walk.c:133: for (j = 0; j < COLS; j++)
      0026A0 0C               [12] 1505 	inc	r4
      0026A1 BC 00 01         [24] 1506 	cjne	r4,#0x00,00169$
      0026A4 0D               [12] 1507 	inc	r5
      0026A5                       1508 00169$:
      0026A5 C3               [12] 1509 	clr	c
      0026A6 EC               [12] 1510 	mov	a,r4
      0026A7 94 C0            [12] 1511 	subb	a,#0xc0
      0026A9 ED               [12] 1512 	mov	a,r5
      0026AA 64 80            [12] 1513 	xrl	a,#0x80
      0026AC 94 80            [12] 1514 	subb	a,#0x80
      0026AE 40 E1            [24] 1515 	jc	00110$
                                   1516 ;	walk.c:132: for (i = 0; i < ROWS; i++)
      0026B0 74 C0            [12] 1517 	mov	a,#0xc0
      0026B2 2A               [12] 1518 	add	a,r2
      0026B3 FA               [12] 1519 	mov	r2,a
      0026B4 E4               [12] 1520 	clr	a
      0026B5 3B               [12] 1521 	addc	a,r3
      0026B6 FB               [12] 1522 	mov	r3,a
      0026B7 E5 10            [12] 1523 	mov	a,_bp
      0026B9 24 07            [12] 1524 	add	a,#0x07
      0026BB F8               [12] 1525 	mov	r0,a
      0026BC 06               [12] 1526 	inc	@r0
      0026BD B6 00 02         [24] 1527 	cjne	@r0,#0x00,00171$
      0026C0 08               [12] 1528 	inc	r0
      0026C1 06               [12] 1529 	inc	@r0
      0026C2                       1530 00171$:
      0026C2 E5 10            [12] 1531 	mov	a,_bp
      0026C4 24 07            [12] 1532 	add	a,#0x07
      0026C6 F8               [12] 1533 	mov	r0,a
      0026C7 C3               [12] 1534 	clr	c
      0026C8 E6               [12] 1535 	mov	a,@r0
      0026C9 94 30            [12] 1536 	subb	a,#0x30
      0026CB 08               [12] 1537 	inc	r0
      0026CC E6               [12] 1538 	mov	a,@r0
      0026CD 64 80            [12] 1539 	xrl	a,#0x80
      0026CF 94 80            [12] 1540 	subb	a,#0x80
      0026D1 40 AE            [24] 1541 	jc	00121$
                                   1542 ;	walk.c:136: puts("\033[2J");
      0026D3 90 3E D6         [24] 1543 	mov	dptr,#___str_3
      0026D6 75 F0 80         [24] 1544 	mov	b,#0x80
      0026D9 C0 07            [24] 1545 	push	ar7
      0026DB C0 06            [24] 1546 	push	ar6
      0026DD 12 2A D1         [24] 1547 	lcall	_puts
                                   1548 ;	walk.c:137: initial.r = rand() % ROWS;
      0026E0 E5 10            [12] 1549 	mov	a,_bp
      0026E2 24 03            [12] 1550 	add	a,#0x03
      0026E4 F9               [12] 1551 	mov	r1,a
      0026E5 C0 01            [24] 1552 	push	ar1
      0026E7 12 28 C3         [24] 1553 	lcall	_rand
      0026EA AC 82            [24] 1554 	mov	r4,dpl
      0026EC AD 83            [24] 1555 	mov	r5,dph
      0026EE 74 30            [12] 1556 	mov	a,#0x30
      0026F0 C0 E0            [24] 1557 	push	acc
      0026F2 E4               [12] 1558 	clr	a
      0026F3 C0 E0            [24] 1559 	push	acc
      0026F5 8C 82            [24] 1560 	mov	dpl,r4
      0026F7 8D 83            [24] 1561 	mov	dph,r5
      0026F9 12 2B AC         [24] 1562 	lcall	__modsint
      0026FC AC 82            [24] 1563 	mov	r4,dpl
      0026FE AD 83            [24] 1564 	mov	r5,dph
      002700 15 81            [12] 1565 	dec	sp
      002702 15 81            [12] 1566 	dec	sp
      002704 D0 01            [24] 1567 	pop	ar1
      002706 D0 06            [24] 1568 	pop	ar6
      002708 D0 07            [24] 1569 	pop	ar7
      00270A A7 04            [24] 1570 	mov	@r1,ar4
      00270C 09               [12] 1571 	inc	r1
      00270D A7 05            [24] 1572 	mov	@r1,ar5
      00270F 19               [12] 1573 	dec	r1
                                   1574 ;	walk.c:138: initial.c = rand() % COLS;
      002710 74 02            [12] 1575 	mov	a,#0x02
      002712 2F               [12] 1576 	add	a,r7
      002713 F9               [12] 1577 	mov	r1,a
      002714 C0 07            [24] 1578 	push	ar7
      002716 C0 06            [24] 1579 	push	ar6
      002718 C0 01            [24] 1580 	push	ar1
      00271A 12 28 C3         [24] 1581 	lcall	_rand
      00271D AC 82            [24] 1582 	mov	r4,dpl
      00271F AD 83            [24] 1583 	mov	r5,dph
      002721 74 C0            [12] 1584 	mov	a,#0xc0
      002723 C0 E0            [24] 1585 	push	acc
      002725 E4               [12] 1586 	clr	a
      002726 C0 E0            [24] 1587 	push	acc
      002728 8C 82            [24] 1588 	mov	dpl,r4
      00272A 8D 83            [24] 1589 	mov	dph,r5
      00272C 12 2B AC         [24] 1590 	lcall	__modsint
      00272F AC 82            [24] 1591 	mov	r4,dpl
      002731 AD 83            [24] 1592 	mov	r5,dph
      002733 15 81            [12] 1593 	dec	sp
      002735 15 81            [12] 1594 	dec	sp
      002737 D0 01            [24] 1595 	pop	ar1
      002739 D0 06            [24] 1596 	pop	ar6
      00273B A7 04            [24] 1597 	mov	@r1,ar4
      00273D 09               [12] 1598 	inc	r1
      00273E A7 05            [24] 1599 	mov	@r1,ar5
      002740 19               [12] 1600 	dec	r1
                                   1601 ;	walk.c:139: walk(&initial);
      002741 8E 03            [24] 1602 	mov	ar3,r6
      002743 7C 00            [12] 1603 	mov	r4,#0x00
      002745 7D 40            [12] 1604 	mov	r5,#0x40
      002747 8B 82            [24] 1605 	mov	dpl,r3
      002749 8C 83            [24] 1606 	mov	dph,r4
      00274B 8D F0            [24] 1607 	mov	b,r5
      00274D C0 06            [24] 1608 	push	ar6
      00274F 12 20 8B         [24] 1609 	lcall	_walk
      002752 D0 06            [24] 1610 	pop	ar6
      002754 D0 07            [24] 1611 	pop	ar7
                                   1612 ;	walk.c:141: for (i = 0; i < ROWS; i++)
      002756 E5 10            [12] 1613 	mov	a,_bp
      002758 24 07            [12] 1614 	add	a,#0x07
      00275A F8               [12] 1615 	mov	r0,a
      00275B E4               [12] 1616 	clr	a
      00275C F6               [12] 1617 	mov	@r0,a
      00275D 08               [12] 1618 	inc	r0
      00275E F6               [12] 1619 	mov	@r0,a
      00275F 7A 00            [12] 1620 	mov	r2,#0x00
      002761 7B 00            [12] 1621 	mov	r3,#0x00
                                   1622 ;	walk.c:142: for (j = 0; j < COLS; j++)
      002763                       1623 00126$:
      002763 A8 10            [24] 1624 	mov	r0,_bp
      002765 08               [12] 1625 	inc	r0
      002766 EA               [12] 1626 	mov	a,r2
      002767 24 00            [12] 1627 	add	a,#_g
      002769 F6               [12] 1628 	mov	@r0,a
      00276A EB               [12] 1629 	mov	a,r3
      00276B 34 40            [12] 1630 	addc	a,#(_g >> 8)
      00276D 08               [12] 1631 	inc	r0
      00276E F6               [12] 1632 	mov	@r0,a
      00276F 7C 00            [12] 1633 	mov	r4,#0x00
      002771 7D 00            [12] 1634 	mov	r5,#0x00
      002773                       1635 00114$:
                                   1636 ;	walk.c:143: if (g[i][j] != 0xaa) {
      002773 C0 06            [24] 1637 	push	ar6
      002775 A8 10            [24] 1638 	mov	r0,_bp
      002777 08               [12] 1639 	inc	r0
      002778 EC               [12] 1640 	mov	a,r4
      002779 26               [12] 1641 	add	a,@r0
      00277A F5 82            [12] 1642 	mov	dpl,a
      00277C ED               [12] 1643 	mov	a,r5
      00277D 08               [12] 1644 	inc	r0
      00277E 36               [12] 1645 	addc	a,@r0
      00277F F5 83            [12] 1646 	mov	dph,a
      002781 E0               [24] 1647 	movx	a,@dptr
      002782 FE               [12] 1648 	mov	r6,a
      002783 BE AA 04         [24] 1649 	cjne	r6,#0xaa,00173$
      002786 D0 06            [24] 1650 	pop	ar6
      002788 80 26            [24] 1651 	sjmp	00115$
      00278A                       1652 00173$:
      00278A D0 06            [24] 1653 	pop	ar6
                                   1654 ;	walk.c:144: (void)puts("Memory error");
      00278C 90 3E BF         [24] 1655 	mov	dptr,#___str_1
      00278F 75 F0 80         [24] 1656 	mov	b,#0x80
      002792 C0 07            [24] 1657 	push	ar7
      002794 C0 06            [24] 1658 	push	ar6
      002796 C0 05            [24] 1659 	push	ar5
      002798 C0 04            [24] 1660 	push	ar4
      00279A C0 03            [24] 1661 	push	ar3
      00279C C0 02            [24] 1662 	push	ar2
      00279E 12 2A D1         [24] 1663 	lcall	_puts
      0027A1 D0 02            [24] 1664 	pop	ar2
      0027A3 D0 03            [24] 1665 	pop	ar3
      0027A5 D0 04            [24] 1666 	pop	ar4
      0027A7 D0 05            [24] 1667 	pop	ar5
      0027A9 D0 06            [24] 1668 	pop	ar6
      0027AB D0 07            [24] 1669 	pop	ar7
                                   1670 ;	walk.c:145: reset();
      0027AD 12 20 88         [24] 1671 	lcall	_reset
      0027B0                       1672 00115$:
                                   1673 ;	walk.c:142: for (j = 0; j < COLS; j++)
      0027B0 0C               [12] 1674 	inc	r4
      0027B1 BC 00 01         [24] 1675 	cjne	r4,#0x00,00174$
      0027B4 0D               [12] 1676 	inc	r5
      0027B5                       1677 00174$:
      0027B5 C3               [12] 1678 	clr	c
      0027B6 EC               [12] 1679 	mov	a,r4
      0027B7 94 C0            [12] 1680 	subb	a,#0xc0
      0027B9 ED               [12] 1681 	mov	a,r5
      0027BA 64 80            [12] 1682 	xrl	a,#0x80
      0027BC 94 80            [12] 1683 	subb	a,#0x80
      0027BE 40 B3            [24] 1684 	jc	00114$
                                   1685 ;	walk.c:141: for (i = 0; i < ROWS; i++)
      0027C0 74 C0            [12] 1686 	mov	a,#0xc0
      0027C2 2A               [12] 1687 	add	a,r2
      0027C3 FA               [12] 1688 	mov	r2,a
      0027C4 E4               [12] 1689 	clr	a
      0027C5 3B               [12] 1690 	addc	a,r3
      0027C6 FB               [12] 1691 	mov	r3,a
      0027C7 E5 10            [12] 1692 	mov	a,_bp
      0027C9 24 07            [12] 1693 	add	a,#0x07
      0027CB F8               [12] 1694 	mov	r0,a
      0027CC 06               [12] 1695 	inc	@r0
      0027CD B6 00 02         [24] 1696 	cjne	@r0,#0x00,00176$
      0027D0 08               [12] 1697 	inc	r0
      0027D1 06               [12] 1698 	inc	@r0
      0027D2                       1699 00176$:
      0027D2 E5 10            [12] 1700 	mov	a,_bp
      0027D4 24 07            [12] 1701 	add	a,#0x07
      0027D6 F8               [12] 1702 	mov	r0,a
      0027D7 C3               [12] 1703 	clr	c
      0027D8 E6               [12] 1704 	mov	a,@r0
      0027D9 94 30            [12] 1705 	subb	a,#0x30
      0027DB 08               [12] 1706 	inc	r0
      0027DC E6               [12] 1707 	mov	a,@r0
      0027DD 64 80            [12] 1708 	xrl	a,#0x80
      0027DF 94 80            [12] 1709 	subb	a,#0x80
      0027E1 50 03            [24] 1710 	jnc	00177$
      0027E3 02 27 63         [24] 1711 	ljmp	00126$
      0027E6                       1712 00177$:
      0027E6 02 26 6C         [24] 1713 	ljmp	00107$
      0027E9                       1714 00109$:
                                   1715 ;	walk.c:149: EA = 0;
                                   1716 ;	assignBit
      0027E9 C2 AF            [12] 1717 	clr	_EA
                                   1718 ;	walk.c:153: __endasm;
      0027EB 02 00 00         [24] 1719 	ljmp	0
                                   1720 ;	walk.c:155: return 0;
      0027EE 90 00 00         [24] 1721 	mov	dptr,#0x0000
                                   1722 ;	walk.c:156: }
      0027F1 85 10 81         [24] 1723 	mov	sp,_bp
      0027F4 D0 10            [24] 1724 	pop	_bp
      0027F6 22               [24] 1725 	ret
                                   1726 ;------------------------------------------------------------
                                   1727 ;Allocation info for local variables in function 'stinit'
                                   1728 ;------------------------------------------------------------
                                   1729 ;	walk.c:158: static void stinit(void) {
                                   1730 ;	-----------------------------------------
                                   1731 ;	 function stinit
                                   1732 ;	-----------------------------------------
      0027F7                       1733 _stinit:
                                   1734 ;	walk.c:159: sp = -1;
      0027F7 90 F4 00         [24] 1735 	mov	dptr,#_sp
      0027FA 74 FF            [12] 1736 	mov	a,#0xff
      0027FC F0               [24] 1737 	movx	@dptr,a
      0027FD A3               [24] 1738 	inc	dptr
      0027FE F0               [24] 1739 	movx	@dptr,a
                                   1740 ;	walk.c:160: return;
                                   1741 ;	walk.c:161: }
      0027FF 22               [24] 1742 	ret
                                   1743 ;------------------------------------------------------------
                                   1744 ;Allocation info for local variables in function 'stpush'
                                   1745 ;------------------------------------------------------------
                                   1746 ;t                         Allocated to registers r5 r6 r7 
                                   1747 ;------------------------------------------------------------
                                   1748 ;	walk.c:163: static int stpush(struct node *t) {
                                   1749 ;	-----------------------------------------
                                   1750 ;	 function stpush
                                   1751 ;	-----------------------------------------
      002800                       1752 _stpush:
      002800 AD 82            [24] 1753 	mov	r5,dpl
      002802 AE 83            [24] 1754 	mov	r6,dph
      002804 AF F0            [24] 1755 	mov	r7,b
                                   1756 ;	walk.c:164: if (sp == (SMAX - 1)) return 0;
      002806 90 F4 00         [24] 1757 	mov	dptr,#_sp
      002809 E0               [24] 1758 	movx	a,@dptr
      00280A FB               [12] 1759 	mov	r3,a
      00280B A3               [24] 1760 	inc	dptr
      00280C E0               [24] 1761 	movx	a,@dptr
      00280D FC               [12] 1762 	mov	r4,a
      00280E BB FF 07         [24] 1763 	cjne	r3,#0xff,00102$
      002811 BC 23 04         [24] 1764 	cjne	r4,#0x23,00102$
      002814 90 00 00         [24] 1765 	mov	dptr,#0x0000
      002817 22               [24] 1766 	ret
      002818                       1767 00102$:
                                   1768 ;	walk.c:165: sp++;
      002818 90 F4 00         [24] 1769 	mov	dptr,#_sp
      00281B 74 01            [12] 1770 	mov	a,#0x01
      00281D 2B               [12] 1771 	add	a,r3
      00281E F0               [24] 1772 	movx	@dptr,a
      00281F E4               [12] 1773 	clr	a
      002820 3C               [12] 1774 	addc	a,r4
      002821 A3               [24] 1775 	inc	dptr
      002822 F0               [24] 1776 	movx	@dptr,a
                                   1777 ;	walk.c:166: stack[sp] = *t;
      002823 90 F4 00         [24] 1778 	mov	dptr,#_sp
      002826 E0               [24] 1779 	movx	a,@dptr
      002827 FB               [12] 1780 	mov	r3,a
      002828 A3               [24] 1781 	inc	dptr
      002829 E0               [24] 1782 	movx	a,@dptr
      00282A FC               [12] 1783 	mov	r4,a
      00282B EB               [12] 1784 	mov	a,r3
      00282C 2B               [12] 1785 	add	a,r3
      00282D FB               [12] 1786 	mov	r3,a
      00282E EC               [12] 1787 	mov	a,r4
      00282F 33               [12] 1788 	rlc	a
      002830 FC               [12] 1789 	mov	r4,a
      002831 EB               [12] 1790 	mov	a,r3
      002832 2B               [12] 1791 	add	a,r3
      002833 FB               [12] 1792 	mov	r3,a
      002834 EC               [12] 1793 	mov	a,r4
      002835 33               [12] 1794 	rlc	a
      002836 FC               [12] 1795 	mov	r4,a
      002837 EB               [12] 1796 	mov	a,r3
      002838 24 00            [12] 1797 	add	a,#_stack
      00283A FB               [12] 1798 	mov	r3,a
      00283B EC               [12] 1799 	mov	a,r4
      00283C 34 64            [12] 1800 	addc	a,#(_stack >> 8)
      00283E FC               [12] 1801 	mov	r4,a
      00283F 7A 00            [12] 1802 	mov	r2,#0x00
      002841 74 04            [12] 1803 	mov	a,#0x04
      002843 C0 E0            [24] 1804 	push	acc
      002845 E4               [12] 1805 	clr	a
      002846 C0 E0            [24] 1806 	push	acc
      002848 C0 05            [24] 1807 	push	ar5
      00284A C0 06            [24] 1808 	push	ar6
      00284C C0 07            [24] 1809 	push	ar7
      00284E 8B 82            [24] 1810 	mov	dpl,r3
      002850 8C 83            [24] 1811 	mov	dph,r4
      002852 8A F0            [24] 1812 	mov	b,r2
      002854 12 2A 3E         [24] 1813 	lcall	___memcpy
      002857 E5 81            [12] 1814 	mov	a,sp
      002859 24 FB            [12] 1815 	add	a,#0xfb
      00285B F5 81            [12] 1816 	mov	sp,a
                                   1817 ;	walk.c:167: return 1;
      00285D 90 00 01         [24] 1818 	mov	dptr,#0x0001
                                   1819 ;	walk.c:168: }
      002860 22               [24] 1820 	ret
                                   1821 ;------------------------------------------------------------
                                   1822 ;Allocation info for local variables in function 'stpop'
                                   1823 ;------------------------------------------------------------
                                   1824 ;t                         Allocated to registers r5 r6 r7 
                                   1825 ;------------------------------------------------------------
                                   1826 ;	walk.c:170: static int stpop(struct node *t) {
                                   1827 ;	-----------------------------------------
                                   1828 ;	 function stpop
                                   1829 ;	-----------------------------------------
      002861                       1830 _stpop:
      002861 AD 82            [24] 1831 	mov	r5,dpl
      002863 AE 83            [24] 1832 	mov	r6,dph
      002865 AF F0            [24] 1833 	mov	r7,b
                                   1834 ;	walk.c:171: if (sp == -1) return 0;
      002867 90 F4 00         [24] 1835 	mov	dptr,#_sp
      00286A E0               [24] 1836 	movx	a,@dptr
      00286B FB               [12] 1837 	mov	r3,a
      00286C A3               [24] 1838 	inc	dptr
      00286D E0               [24] 1839 	movx	a,@dptr
      00286E FC               [12] 1840 	mov	r4,a
      00286F BB FF 07         [24] 1841 	cjne	r3,#0xff,00102$
      002872 BC FF 04         [24] 1842 	cjne	r4,#0xff,00102$
      002875 90 00 00         [24] 1843 	mov	dptr,#0x0000
      002878 22               [24] 1844 	ret
      002879                       1845 00102$:
                                   1846 ;	walk.c:172: *t = stack[sp];
      002879 EB               [12] 1847 	mov	a,r3
      00287A 2B               [12] 1848 	add	a,r3
      00287B FB               [12] 1849 	mov	r3,a
      00287C EC               [12] 1850 	mov	a,r4
      00287D 33               [12] 1851 	rlc	a
      00287E FC               [12] 1852 	mov	r4,a
      00287F EB               [12] 1853 	mov	a,r3
      002880 2B               [12] 1854 	add	a,r3
      002881 FB               [12] 1855 	mov	r3,a
      002882 EC               [12] 1856 	mov	a,r4
      002883 33               [12] 1857 	rlc	a
      002884 FC               [12] 1858 	mov	r4,a
      002885 EB               [12] 1859 	mov	a,r3
      002886 24 00            [12] 1860 	add	a,#_stack
      002888 FB               [12] 1861 	mov	r3,a
      002889 EC               [12] 1862 	mov	a,r4
      00288A 34 64            [12] 1863 	addc	a,#(_stack >> 8)
      00288C FC               [12] 1864 	mov	r4,a
      00288D 7A 00            [12] 1865 	mov	r2,#0x00
      00288F 74 04            [12] 1866 	mov	a,#0x04
      002891 C0 E0            [24] 1867 	push	acc
      002893 E4               [12] 1868 	clr	a
      002894 C0 E0            [24] 1869 	push	acc
      002896 C0 03            [24] 1870 	push	ar3
      002898 C0 04            [24] 1871 	push	ar4
      00289A C0 02            [24] 1872 	push	ar2
      00289C 8D 82            [24] 1873 	mov	dpl,r5
      00289E 8E 83            [24] 1874 	mov	dph,r6
      0028A0 8F F0            [24] 1875 	mov	b,r7
      0028A2 12 2A 3E         [24] 1876 	lcall	___memcpy
      0028A5 E5 81            [12] 1877 	mov	a,sp
      0028A7 24 FB            [12] 1878 	add	a,#0xfb
      0028A9 F5 81            [12] 1879 	mov	sp,a
                                   1880 ;	walk.c:173: sp--;
      0028AB 90 F4 00         [24] 1881 	mov	dptr,#_sp
      0028AE E0               [24] 1882 	movx	a,@dptr
      0028AF 24 FF            [12] 1883 	add	a,#0xff
      0028B1 FE               [12] 1884 	mov	r6,a
      0028B2 A3               [24] 1885 	inc	dptr
      0028B3 E0               [24] 1886 	movx	a,@dptr
      0028B4 34 FF            [12] 1887 	addc	a,#0xff
      0028B6 FF               [12] 1888 	mov	r7,a
      0028B7 90 F4 00         [24] 1889 	mov	dptr,#_sp
      0028BA EE               [12] 1890 	mov	a,r6
      0028BB F0               [24] 1891 	movx	@dptr,a
      0028BC EF               [12] 1892 	mov	a,r7
      0028BD A3               [24] 1893 	inc	dptr
      0028BE F0               [24] 1894 	movx	@dptr,a
                                   1895 ;	walk.c:174: return 1;
      0028BF 90 00 01         [24] 1896 	mov	dptr,#0x0001
                                   1897 ;	walk.c:175: }
      0028C2 22               [24] 1898 	ret
                                   1899 	.area CSEG    (CODE)
                                   1900 	.area CONST   (CODE)
      003EA5                       1901 _neigh:
      003EA5 FF FF                 1902 	.byte #0xff, #0xff	; -1
      003EA7 00 00                 1903 	.byte #0x00, #0x00	;  0
      003EA9 00 00                 1904 	.byte #0x00, #0x00	;  0
      003EAB FF FF                 1905 	.byte #0xff, #0xff	; -1
      003EAD 00 00                 1906 	.byte #0x00, #0x00	;  0
      003EAF 01 00                 1907 	.byte #0x01, #0x00	;  1
      003EB1 01 00                 1908 	.byte #0x01, #0x00	;  1
      003EB3 00 00                 1909 	.byte #0x00, #0x00	;  0
                                   1910 	.area CONST   (CODE)
      003EB5                       1911 ___str_0:
      003EB5 1B                    1912 	.db 0x1b
      003EB6 5B 25 64 3B 25 64 48  1913 	.ascii "[%d;%dHo"
             6F
      003EBE 00                    1914 	.db 0x00
                                   1915 	.area CSEG    (CODE)
                                   1916 	.area CONST   (CODE)
      003EBF                       1917 ___str_1:
      003EBF 4D 65 6D 6F 72 79 20  1918 	.ascii "Memory error"
             65 72 72 6F 72
      003ECB 00                    1919 	.db 0x00
                                   1920 	.area CSEG    (CODE)
                                   1921 	.area CONST   (CODE)
      003ECC                       1922 ___str_2:
      003ECC 1B                    1923 	.db 0x1b
      003ECD 5B 25 64 3B 25 64 48  1924 	.ascii "[%d;%dH."
             2E
      003ED5 00                    1925 	.db 0x00
                                   1926 	.area CSEG    (CODE)
                                   1927 	.area CONST   (CODE)
      003ED6                       1928 ___str_3:
      003ED6 1B                    1929 	.db 0x1b
      003ED7 5B 32 4A              1930 	.ascii "[2J"
      003EDA 00                    1931 	.db 0x00
                                   1932 	.area CSEG    (CODE)
                                   1933 	.area XINIT   (CODE)
                                   1934 	.area CABS    (ABS,CODE)
