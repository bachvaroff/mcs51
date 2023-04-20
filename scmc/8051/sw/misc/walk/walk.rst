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
      00F402                        326 _main_R_65536_62:
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
                                    373 ;R                         Allocated with name '_main_R_65536_62'
                                    374 ;------------------------------------------------------------
                                    375 ;	walk.c:115: static volatile __xdata int *R = (__xdata int *)0xfffe;
      002062 90 F4 02         [24]  376 	mov	dptr,#_main_R_65536_62
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
      002006 02 26 12         [24]  390 	ljmp	_main
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
      0020BA 12 29 A1         [24]  524 	lcall	___memcpy
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
      00210E 12 29 03         [24]  573 	lcall	__mulint
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
      002154 BB 00 01         [24]  618 	cjne	r3,#0x00,00210$
      002157 0D               [12]  619 	inc	r5
      002158                        620 00210$:
      002158 C0 06            [24]  621 	push	ar6
      00215A C0 02            [24]  622 	push	ar2
      00215C C0 01            [24]  623 	push	ar1
      00215E C0 00            [24]  624 	push	ar0
      002160 C0 04            [24]  625 	push	ar4
      002162 C0 07            [24]  626 	push	ar7
      002164 C0 03            [24]  627 	push	ar3
      002166 C0 05            [24]  628 	push	ar5
      002168 74 18            [12]  629 	mov	a,#___str_0
      00216A C0 E0            [24]  630 	push	acc
      00216C 74 3E            [12]  631 	mov	a,#(___str_0 >> 8)
      00216E C0 E0            [24]  632 	push	acc
      002170 74 80            [12]  633 	mov	a,#0x80
      002172 C0 E0            [24]  634 	push	acc
      002174 12 2A BA         [24]  635 	lcall	_printf
      002177 E5 81            [12]  636 	mov	a,sp
      002179 24 F9            [12]  637 	add	a,#0xf9
      00217B F5 81            [12]  638 	mov	sp,a
      00217D D0 00            [24]  639 	pop	ar0
      00217F D0 01            [24]  640 	pop	ar1
      002181 D0 02            [24]  641 	pop	ar2
      002183 D0 06            [24]  642 	pop	ar6
                                    643 ;	walk.c:111: return;
                                    644 ;	walk.c:74: for (j = 0, f = 0; j < NMAX; j++) {
      002185                        645 00144$:
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
      00219B                        662 00134$:
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
      0021AE 40 03            [24]  675 	jc	00211$
      0021B0 02 23 4C         [24]  676 	ljmp	00114$
      0021B3                        677 00211$:
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
      0021DE 24 08            [12]  713 	add	a,#_neigh
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
      002220 24 08            [12]  759 	add	a,#_neigh
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
      002250 30 E7 03         [24]  796 	jnb	acc.7,00212$
      002253 02 23 3A         [24]  797 	ljmp	00113$
      002256                        798 00212$:
      002256 BC 30 06         [24]  799 	cjne	r4,#0x30,00213$
      002259 BB 00 03         [24]  800 	cjne	r3,#0x00,00213$
      00225C 02 23 3A         [24]  801 	ljmp	00113$
      00225F                        802 00213$:
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
      002271 30 E7 03         [24]  814 	jnb	acc.7,00214$
      002274 02 23 3A         [24]  815 	ljmp	00113$
      002277                        816 00214$:
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
      002288 BD C0 06         [24]  827 	cjne	r5,#0xc0,00215$
      00228B BF 00 03         [24]  828 	cjne	r7,#0x00,00215$
      00228E 02 23 3A         [24]  829 	ljmp	00113$
      002291                        830 00215$:
                                    831 ;	walk.c:79: if (g[t.r][t.c] == 0x55) f++;
      002291 C0 06            [24]  832 	push	ar6
      002293 C0 02            [24]  833 	push	ar2
      002295 C0 01            [24]  834 	push	ar1
      002297 C0 00            [24]  835 	push	ar0
      002299 C0 04            [24]  836 	push	ar4
      00229B C0 03            [24]  837 	push	ar3
      00229D 90 00 C0         [24]  838 	mov	dptr,#0x00c0
      0022A0 12 29 03         [24]  839 	lcall	__mulint
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
      0022ED B6 00 02         [24]  886 	cjne	@r0,#0x00,00218$
      0022F0 08               [12]  887 	inc	r0
      0022F1 06               [12]  888 	inc	@r0
      0022F2                        889 00218$:
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
      002319 BF AA 02         [24]  918 	cjne	r7,#0xaa,00219$
      00231C 80 1C            [24]  919 	sjmp	00113$
      00231E                        920 00219$:
                                    921 ;	walk.c:81: (void)puts("Memory error");
      00231E 90 3E 22         [24]  922 	mov	dptr,#___str_1
      002321 75 F0 80         [24]  923 	mov	b,#0x80
      002324 C0 06            [24]  924 	push	ar6
      002326 C0 02            [24]  925 	push	ar2
      002328 C0 01            [24]  926 	push	ar1
      00232A C0 00            [24]  927 	push	ar0
      00232C 12 2A 34         [24]  928 	lcall	_puts
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
      002342 B6 00 02         [24]  942 	cjne	@r0,#0x00,00220$
      002345 08               [12]  943 	inc	r0
      002346 06               [12]  944 	inc	@r0
      002347                        945 00220$:
      002347 D0 00            [24]  946 	pop	ar0
      002349 02 21 9B         [24]  947 	ljmp	00134$
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
      002358 70 03            [24]  958 	jnz	00221$
      00235A 02 25 90         [24]  959 	ljmp	00129$
      00235D                        960 00221$:
                                    961 ;	walk.c:87: while (1) {
      00235D                        962 00126$:
                                    963 ;	walk.c:88: j = rand() % NMAX;
      00235D C0 06            [24]  964 	push	ar6
      00235F C0 02            [24]  965 	push	ar2
      002361 C0 01            [24]  966 	push	ar1
      002363 C0 00            [24]  967 	push	ar0
      002365 12 28 26         [24]  968 	lcall	_rand
      002368 AD 82            [24]  969 	mov	r5,dpl
      00236A AF 83            [24]  970 	mov	r7,dph
      00236C 74 04            [12]  971 	mov	a,#0x04
      00236E C0 E0            [24]  972 	push	acc
      002370 E4               [12]  973 	clr	a
      002371 C0 E0            [24]  974 	push	acc
      002373 8D 82            [24]  975 	mov	dpl,r5
      002375 8F 83            [24]  976 	mov	dph,r7
      002377 12 2B 0F         [24]  977 	lcall	__modsint
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
      0023BF 24 08            [12] 1027 	add	a,#_neigh
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
      0023F9 24 08            [12] 1069 	add	a,#_neigh
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
      00242A 30 E7 03         [24] 1106 	jnb	acc.7,00222$
      00242D 02 23 5D         [24] 1107 	ljmp	00126$
      002430                       1108 00222$:
      002430 BC 30 06         [24] 1109 	cjne	r4,#0x30,00223$
      002433 BB 00 03         [24] 1110 	cjne	r3,#0x00,00223$
      002436 02 23 5D         [24] 1111 	ljmp	00126$
      002439                       1112 00223$:
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
      00244B 30 E7 03         [24] 1124 	jnb	acc.7,00224$
      00244E 02 23 5D         [24] 1125 	ljmp	00126$
      002451                       1126 00224$:
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
      002462 BD C0 06         [24] 1137 	cjne	r5,#0xc0,00225$
      002465 BF 00 03         [24] 1138 	cjne	r7,#0x00,00225$
      002468 02 23 5D         [24] 1139 	ljmp	00126$
      00246B                       1140 00225$:
                                   1141 ;	walk.c:93: if (g[t.r][t.c] == 0xaa) continue;
      00246B C0 06            [24] 1142 	push	ar6
      00246D C0 02            [24] 1143 	push	ar2
      00246F C0 01            [24] 1144 	push	ar1
      002471 C0 00            [24] 1145 	push	ar0
      002473 C0 04            [24] 1146 	push	ar4
      002475 C0 03            [24] 1147 	push	ar3
      002477 90 00 C0         [24] 1148 	mov	dptr,#0x00c0
      00247A 12 29 03         [24] 1149 	lcall	__mulint
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
      0024BC BC AA 03         [24] 1190 	cjne	r4,#0xaa,00226$
      0024BF 02 23 5D         [24] 1191 	ljmp	00126$
      0024C2                       1192 00226$:
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
      0024E5 BF 55 02         [24] 1218 	cjne	r7,#0x55,00227$
      0024E8 80 1C            [24] 1219 	sjmp	00124$
      0024EA                       1220 00227$:
                                   1221 ;	walk.c:95: (void)puts("Memory error");
      0024EA 90 3E 22         [24] 1222 	mov	dptr,#___str_1
      0024ED 75 F0 80         [24] 1223 	mov	b,#0x80
      0024F0 C0 06            [24] 1224 	push	ar6
      0024F2 C0 02            [24] 1225 	push	ar2
      0024F4 C0 01            [24] 1226 	push	ar1
      0024F6 C0 00            [24] 1227 	push	ar0
      0024F8 12 2A 34         [24] 1228 	lcall	_puts
      0024FB D0 00            [24] 1229 	pop	ar0
      0024FD D0 01            [24] 1230 	pop	ar1
      0024FF D0 02            [24] 1231 	pop	ar2
      002501 D0 06            [24] 1232 	pop	ar6
                                   1233 ;	walk.c:96: reset();
      002503 12 20 88         [24] 1234 	lcall	_reset
      002506                       1235 00124$:
                                   1236 ;	walk.c:99: (void)stpush(&cur);
      002506 C0 06            [24] 1237 	push	ar6
      002508 C0 00            [24] 1238 	push	ar0
      00250A A8 10            [24] 1239 	mov	r0,_bp
      00250C 08               [12] 1240 	inc	r0
      00250D 08               [12] 1241 	inc	r0
      00250E 86 04            [24] 1242 	mov	ar4,@r0
      002510 7D 00            [12] 1243 	mov	r5,#0x00
      002512 7F 40            [12] 1244 	mov	r7,#0x40
      002514 D0 00            [24] 1245 	pop	ar0
      002516 8C 82            [24] 1246 	mov	dpl,r4
      002518 8D 83            [24] 1247 	mov	dph,r5
      00251A 8F F0            [24] 1248 	mov	b,r7
      00251C C0 06            [24] 1249 	push	ar6
      00251E C0 02            [24] 1250 	push	ar2
      002520 C0 01            [24] 1251 	push	ar1
      002522 C0 00            [24] 1252 	push	ar0
      002524 12 27 63         [24] 1253 	lcall	_stpush
      002527 D0 00            [24] 1254 	pop	ar0
      002529 D0 01            [24] 1255 	pop	ar1
      00252B D0 02            [24] 1256 	pop	ar2
      00252D D0 06            [24] 1257 	pop	ar6
                                   1258 ;	walk.c:100: cur = t;
      00252F C0 00            [24] 1259 	push	ar0
      002531 A8 10            [24] 1260 	mov	r0,_bp
      002533 08               [12] 1261 	inc	r0
      002534 C0 01            [24] 1262 	push	ar1
      002536 E5 10            [12] 1263 	mov	a,_bp
      002538 24 09            [12] 1264 	add	a,#0x09
      00253A F9               [12] 1265 	mov	r1,a
      00253B E6               [12] 1266 	mov	a,@r0
      00253C F7               [12] 1267 	mov	@r1,a
      00253D 09               [12] 1268 	inc	r1
      00253E 77 00            [12] 1269 	mov	@r1,#0x00
      002540 09               [12] 1270 	inc	r1
      002541 77 40            [12] 1271 	mov	@r1,#0x40
      002543 D0 01            [24] 1272 	pop	ar1
      002545 E5 10            [12] 1273 	mov	a,_bp
      002547 24 08            [12] 1274 	add	a,#0x08
      002549 F8               [12] 1275 	mov	r0,a
      00254A 86 03            [24] 1276 	mov	ar3,@r0
      00254C 7E 00            [12] 1277 	mov	r6,#0x00
      00254E 7F 40            [12] 1278 	mov	r7,#0x40
      002550 D0 00            [24] 1279 	pop	ar0
      002552 C0 06            [24] 1280 	push	ar6
      002554 C0 02            [24] 1281 	push	ar2
      002556 C0 01            [24] 1282 	push	ar1
      002558 C0 00            [24] 1283 	push	ar0
      00255A 74 04            [12] 1284 	mov	a,#0x04
      00255C C0 E0            [24] 1285 	push	acc
      00255E E4               [12] 1286 	clr	a
      00255F C0 E0            [24] 1287 	push	acc
      002561 85 00 F0         [24] 1288 	mov	b,ar0
      002564 E5 10            [12] 1289 	mov	a,_bp
      002566 24 09            [12] 1290 	add	a,#0x09
      002568 F8               [12] 1291 	mov	r0,a
      002569 E6               [12] 1292 	mov	a,@r0
      00256A C0 E0            [24] 1293 	push	acc
      00256C 08               [12] 1294 	inc	r0
      00256D E6               [12] 1295 	mov	a,@r0
      00256E C0 E0            [24] 1296 	push	acc
      002570 08               [12] 1297 	inc	r0
      002571 E6               [12] 1298 	mov	a,@r0
      002572 C0 E0            [24] 1299 	push	acc
      002574 8B 82            [24] 1300 	mov	dpl,r3
      002576 8E 83            [24] 1301 	mov	dph,r6
      002578 8F F0            [24] 1302 	mov	b,r7
      00257A 12 29 A1         [24] 1303 	lcall	___memcpy
      00257D E5 81            [12] 1304 	mov	a,sp
      00257F 24 FB            [12] 1305 	add	a,#0xfb
      002581 F5 81            [12] 1306 	mov	sp,a
      002583 D0 00            [24] 1307 	pop	ar0
      002585 D0 01            [24] 1308 	pop	ar1
      002587 D0 02            [24] 1309 	pop	ar2
      002589 D0 06            [24] 1310 	pop	ar6
                                   1311 ;	walk.c:101: goto process;
      00258B D0 06            [24] 1312 	pop	ar6
      00258D 02 20 F9         [24] 1313 	ljmp	00101$
      002590                       1314 00129$:
                                   1315 ;	walk.c:105: printf("\033[%d;%dH.", cur.r + 1, cur.c + 1);
      002590 C0 00            [24] 1316 	push	ar0
      002592 A8 02            [24] 1317 	mov	r0,ar2
      002594 86 05            [24] 1318 	mov	ar5,@r0
      002596 08               [12] 1319 	inc	r0
      002597 86 07            [24] 1320 	mov	ar7,@r0
      002599 D0 00            [24] 1321 	pop	ar0
      00259B 0D               [12] 1322 	inc	r5
      00259C BD 00 01         [24] 1323 	cjne	r5,#0x00,00228$
      00259F 0F               [12] 1324 	inc	r7
      0025A0                       1325 00228$:
      0025A0 87 03            [24] 1326 	mov	ar3,@r1
      0025A2 09               [12] 1327 	inc	r1
      0025A3 87 04            [24] 1328 	mov	ar4,@r1
      0025A5 19               [12] 1329 	dec	r1
      0025A6 0B               [12] 1330 	inc	r3
      0025A7 BB 00 01         [24] 1331 	cjne	r3,#0x00,00229$
      0025AA 0C               [12] 1332 	inc	r4
      0025AB                       1333 00229$:
      0025AB C0 06            [24] 1334 	push	ar6
      0025AD C0 02            [24] 1335 	push	ar2
      0025AF C0 01            [24] 1336 	push	ar1
      0025B1 C0 00            [24] 1337 	push	ar0
      0025B3 C0 05            [24] 1338 	push	ar5
      0025B5 C0 07            [24] 1339 	push	ar7
      0025B7 C0 03            [24] 1340 	push	ar3
      0025B9 C0 04            [24] 1341 	push	ar4
      0025BB 74 2F            [12] 1342 	mov	a,#___str_2
      0025BD C0 E0            [24] 1343 	push	acc
      0025BF 74 3E            [12] 1344 	mov	a,#(___str_2 >> 8)
      0025C1 C0 E0            [24] 1345 	push	acc
      0025C3 74 80            [12] 1346 	mov	a,#0x80
      0025C5 C0 E0            [24] 1347 	push	acc
      0025C7 12 2A BA         [24] 1348 	lcall	_printf
      0025CA E5 81            [12] 1349 	mov	a,sp
      0025CC 24 F9            [12] 1350 	add	a,#0xf9
      0025CE F5 81            [12] 1351 	mov	sp,a
      0025D0 D0 00            [24] 1352 	pop	ar0
      0025D2 D0 01            [24] 1353 	pop	ar1
      0025D4 D0 02            [24] 1354 	pop	ar2
      0025D6 D0 06            [24] 1355 	pop	ar6
                                   1356 ;	walk.c:107: if (!stpop(&cur)) goto term;
      0025D8 C0 00            [24] 1357 	push	ar0
      0025DA E5 10            [12] 1358 	mov	a,_bp
      0025DC 24 05            [12] 1359 	add	a,#0x05
      0025DE F8               [12] 1360 	mov	r0,a
      0025DF 86 04            [24] 1361 	mov	ar4,@r0
      0025E1 7D 00            [12] 1362 	mov	r5,#0x00
      0025E3 7F 40            [12] 1363 	mov	r7,#0x40
      0025E5 D0 00            [24] 1364 	pop	ar0
      0025E7 8C 82            [24] 1365 	mov	dpl,r4
      0025E9 8D 83            [24] 1366 	mov	dph,r5
      0025EB 8F F0            [24] 1367 	mov	b,r7
      0025ED C0 06            [24] 1368 	push	ar6
      0025EF C0 02            [24] 1369 	push	ar2
      0025F1 C0 01            [24] 1370 	push	ar1
      0025F3 C0 00            [24] 1371 	push	ar0
      0025F5 12 27 C4         [24] 1372 	lcall	_stpop
      0025F8 E5 82            [12] 1373 	mov	a,dpl
      0025FA 85 83 F0         [24] 1374 	mov	b,dph
      0025FD D0 00            [24] 1375 	pop	ar0
      0025FF D0 01            [24] 1376 	pop	ar1
      002601 D0 02            [24] 1377 	pop	ar2
      002603 D0 06            [24] 1378 	pop	ar6
      002605 45 F0            [12] 1379 	orl	a,b
      002607 60 03            [24] 1380 	jz	00230$
      002609 02 21 85         [24] 1381 	ljmp	00144$
      00260C                       1382 00230$:
                                   1383 ;	walk.c:111: return;
                                   1384 ;	walk.c:112: }
      00260C 85 10 81         [24] 1385 	mov	sp,_bp
      00260F D0 10            [24] 1386 	pop	_bp
      002611 22               [24] 1387 	ret
                                   1388 ;------------------------------------------------------------
                                   1389 ;Allocation info for local variables in function 'main'
                                   1390 ;------------------------------------------------------------
                                   1391 ;initial                   Allocated to stack - _bp +3
                                   1392 ;i                         Allocated to stack - _bp +7
                                   1393 ;j                         Allocated to registers r4 r5 
                                   1394 ;sloc0                     Allocated to stack - _bp +1
                                   1395 ;R                         Allocated with name '_main_R_65536_62'
                                   1396 ;------------------------------------------------------------
                                   1397 ;	walk.c:114: int main(void) {
                                   1398 ;	-----------------------------------------
                                   1399 ;	 function main
                                   1400 ;	-----------------------------------------
      002612                       1401 _main:
      002612 C0 10            [24] 1402 	push	_bp
      002614 E5 81            [12] 1403 	mov	a,sp
      002616 F5 10            [12] 1404 	mov	_bp,a
      002618 24 08            [12] 1405 	add	a,#0x08
      00261A F5 81            [12] 1406 	mov	sp,a
                                   1407 ;	walk.c:119: i0 = 1;
      00261C 78 11            [12] 1408 	mov	r0,#_i0
      00261E 76 01            [12] 1409 	mov	@r0,#0x01
                                   1410 ;	walk.c:121: IT0 = 1;
                                   1411 ;	assignBit
      002620 D2 88            [12] 1412 	setb	_IT0
                                   1413 ;	walk.c:122: EX0 = 1;
                                   1414 ;	assignBit
      002622 D2 A8            [12] 1415 	setb	_EX0
                                   1416 ;	walk.c:123: EA = 1;
                                   1417 ;	assignBit
      002624 D2 AF            [12] 1418 	setb	_EA
                                   1419 ;	walk.c:125: srand(*R);
      002626 90 F4 02         [24] 1420 	mov	dptr,#_main_R_65536_62
      002629 E0               [24] 1421 	movx	a,@dptr
      00262A FE               [12] 1422 	mov	r6,a
      00262B A3               [24] 1423 	inc	dptr
      00262C E0               [24] 1424 	movx	a,@dptr
      00262D FF               [12] 1425 	mov	r7,a
      00262E 8E 82            [24] 1426 	mov	dpl,r6
      002630 8F 83            [24] 1427 	mov	dph,r7
      002632 E0               [24] 1428 	movx	a,@dptr
      002633 FE               [12] 1429 	mov	r6,a
      002634 A3               [24] 1430 	inc	dptr
      002635 E0               [24] 1431 	movx	a,@dptr
      002636 FF               [12] 1432 	mov	r7,a
      002637 8E 82            [24] 1433 	mov	dpl,r6
      002639 8F 83            [24] 1434 	mov	dph,r7
      00263B 12 28 EA         [24] 1435 	lcall	_srand
                                   1436 ;	walk.c:126: stinit();
      00263E 12 27 5A         [24] 1437 	lcall	_stinit
                                   1438 ;	walk.c:128: while (i0) {
      002641 E5 10            [12] 1439 	mov	a,_bp
      002643 24 03            [12] 1440 	add	a,#0x03
      002645 FF               [12] 1441 	mov	r7,a
      002646 FE               [12] 1442 	mov	r6,a
      002647                       1443 00103$:
      002647 78 11            [12] 1444 	mov	r0,#_i0
      002649 E6               [12] 1445 	mov	a,@r0
      00264A 70 03            [24] 1446 	jnz	00138$
      00264C 02 27 4C         [24] 1447 	ljmp	00105$
      00264F                       1448 00138$:
                                   1449 ;	walk.c:129: for (i = 0; i < ROWS; i++)
      00264F E5 10            [12] 1450 	mov	a,_bp
      002651 24 07            [12] 1451 	add	a,#0x07
      002653 F8               [12] 1452 	mov	r0,a
      002654 E4               [12] 1453 	clr	a
      002655 F6               [12] 1454 	mov	@r0,a
      002656 08               [12] 1455 	inc	r0
      002657 F6               [12] 1456 	mov	@r0,a
      002658 7A 00            [12] 1457 	mov	r2,#0x00
      00265A 7B 00            [12] 1458 	mov	r3,#0x00
                                   1459 ;	walk.c:130: for (j = 0; j < COLS; j++)
      00265C                       1460 00113$:
      00265C A8 10            [24] 1461 	mov	r0,_bp
      00265E 08               [12] 1462 	inc	r0
      00265F EA               [12] 1463 	mov	a,r2
      002660 24 00            [12] 1464 	add	a,#_g
      002662 F6               [12] 1465 	mov	@r0,a
      002663 EB               [12] 1466 	mov	a,r3
      002664 34 40            [12] 1467 	addc	a,#(_g >> 8)
      002666 08               [12] 1468 	inc	r0
      002667 F6               [12] 1469 	mov	@r0,a
      002668 7C 00            [12] 1470 	mov	r4,#0x00
      00266A 7D 00            [12] 1471 	mov	r5,#0x00
      00266C                       1472 00106$:
                                   1473 ;	walk.c:131: g[i][j] = 0x55;
      00266C A8 10            [24] 1474 	mov	r0,_bp
      00266E 08               [12] 1475 	inc	r0
      00266F EC               [12] 1476 	mov	a,r4
      002670 26               [12] 1477 	add	a,@r0
      002671 F5 82            [12] 1478 	mov	dpl,a
      002673 ED               [12] 1479 	mov	a,r5
      002674 08               [12] 1480 	inc	r0
      002675 36               [12] 1481 	addc	a,@r0
      002676 F5 83            [12] 1482 	mov	dph,a
      002678 74 55            [12] 1483 	mov	a,#0x55
      00267A F0               [24] 1484 	movx	@dptr,a
                                   1485 ;	walk.c:130: for (j = 0; j < COLS; j++)
      00267B 0C               [12] 1486 	inc	r4
      00267C BC 00 01         [24] 1487 	cjne	r4,#0x00,00139$
      00267F 0D               [12] 1488 	inc	r5
      002680                       1489 00139$:
      002680 C3               [12] 1490 	clr	c
      002681 EC               [12] 1491 	mov	a,r4
      002682 94 C0            [12] 1492 	subb	a,#0xc0
      002684 ED               [12] 1493 	mov	a,r5
      002685 64 80            [12] 1494 	xrl	a,#0x80
      002687 94 80            [12] 1495 	subb	a,#0x80
      002689 40 E1            [24] 1496 	jc	00106$
                                   1497 ;	walk.c:129: for (i = 0; i < ROWS; i++)
      00268B 74 C0            [12] 1498 	mov	a,#0xc0
      00268D 2A               [12] 1499 	add	a,r2
      00268E FA               [12] 1500 	mov	r2,a
      00268F E4               [12] 1501 	clr	a
      002690 3B               [12] 1502 	addc	a,r3
      002691 FB               [12] 1503 	mov	r3,a
      002692 E5 10            [12] 1504 	mov	a,_bp
      002694 24 07            [12] 1505 	add	a,#0x07
      002696 F8               [12] 1506 	mov	r0,a
      002697 06               [12] 1507 	inc	@r0
      002698 B6 00 02         [24] 1508 	cjne	@r0,#0x00,00141$
      00269B 08               [12] 1509 	inc	r0
      00269C 06               [12] 1510 	inc	@r0
      00269D                       1511 00141$:
      00269D E5 10            [12] 1512 	mov	a,_bp
      00269F 24 07            [12] 1513 	add	a,#0x07
      0026A1 F8               [12] 1514 	mov	r0,a
      0026A2 C3               [12] 1515 	clr	c
      0026A3 E6               [12] 1516 	mov	a,@r0
      0026A4 94 30            [12] 1517 	subb	a,#0x30
      0026A6 08               [12] 1518 	inc	r0
      0026A7 E6               [12] 1519 	mov	a,@r0
      0026A8 64 80            [12] 1520 	xrl	a,#0x80
      0026AA 94 80            [12] 1521 	subb	a,#0x80
      0026AC 40 AE            [24] 1522 	jc	00113$
                                   1523 ;	walk.c:133: printf("%s", "\033[2J");
      0026AE C0 07            [24] 1524 	push	ar7
      0026B0 C0 06            [24] 1525 	push	ar6
      0026B2 74 3C            [12] 1526 	mov	a,#___str_4
      0026B4 C0 E0            [24] 1527 	push	acc
      0026B6 74 3E            [12] 1528 	mov	a,#(___str_4 >> 8)
      0026B8 C0 E0            [24] 1529 	push	acc
      0026BA 74 80            [12] 1530 	mov	a,#0x80
      0026BC C0 E0            [24] 1531 	push	acc
      0026BE 74 39            [12] 1532 	mov	a,#___str_3
      0026C0 C0 E0            [24] 1533 	push	acc
      0026C2 74 3E            [12] 1534 	mov	a,#(___str_3 >> 8)
      0026C4 C0 E0            [24] 1535 	push	acc
      0026C6 74 80            [12] 1536 	mov	a,#0x80
      0026C8 C0 E0            [24] 1537 	push	acc
      0026CA 12 2A BA         [24] 1538 	lcall	_printf
      0026CD E5 81            [12] 1539 	mov	a,sp
      0026CF 24 FA            [12] 1540 	add	a,#0xfa
      0026D1 F5 81            [12] 1541 	mov	sp,a
                                   1542 ;	walk.c:134: initial.r = rand() % ROWS;
      0026D3 E5 10            [12] 1543 	mov	a,_bp
      0026D5 24 03            [12] 1544 	add	a,#0x03
      0026D7 F9               [12] 1545 	mov	r1,a
      0026D8 C0 01            [24] 1546 	push	ar1
      0026DA 12 28 26         [24] 1547 	lcall	_rand
      0026DD AC 82            [24] 1548 	mov	r4,dpl
      0026DF AD 83            [24] 1549 	mov	r5,dph
      0026E1 74 30            [12] 1550 	mov	a,#0x30
      0026E3 C0 E0            [24] 1551 	push	acc
      0026E5 E4               [12] 1552 	clr	a
      0026E6 C0 E0            [24] 1553 	push	acc
      0026E8 8C 82            [24] 1554 	mov	dpl,r4
      0026EA 8D 83            [24] 1555 	mov	dph,r5
      0026EC 12 2B 0F         [24] 1556 	lcall	__modsint
      0026EF AC 82            [24] 1557 	mov	r4,dpl
      0026F1 AD 83            [24] 1558 	mov	r5,dph
      0026F3 15 81            [12] 1559 	dec	sp
      0026F5 15 81            [12] 1560 	dec	sp
      0026F7 D0 01            [24] 1561 	pop	ar1
      0026F9 D0 06            [24] 1562 	pop	ar6
      0026FB D0 07            [24] 1563 	pop	ar7
      0026FD A7 04            [24] 1564 	mov	@r1,ar4
      0026FF 09               [12] 1565 	inc	r1
      002700 A7 05            [24] 1566 	mov	@r1,ar5
      002702 19               [12] 1567 	dec	r1
                                   1568 ;	walk.c:135: initial.c = rand() % COLS;
      002703 74 02            [12] 1569 	mov	a,#0x02
      002705 2F               [12] 1570 	add	a,r7
      002706 F9               [12] 1571 	mov	r1,a
      002707 C0 07            [24] 1572 	push	ar7
      002709 C0 06            [24] 1573 	push	ar6
      00270B C0 01            [24] 1574 	push	ar1
      00270D 12 28 26         [24] 1575 	lcall	_rand
      002710 AC 82            [24] 1576 	mov	r4,dpl
      002712 AD 83            [24] 1577 	mov	r5,dph
      002714 74 C0            [12] 1578 	mov	a,#0xc0
      002716 C0 E0            [24] 1579 	push	acc
      002718 E4               [12] 1580 	clr	a
      002719 C0 E0            [24] 1581 	push	acc
      00271B 8C 82            [24] 1582 	mov	dpl,r4
      00271D 8D 83            [24] 1583 	mov	dph,r5
      00271F 12 2B 0F         [24] 1584 	lcall	__modsint
      002722 AC 82            [24] 1585 	mov	r4,dpl
      002724 AD 83            [24] 1586 	mov	r5,dph
      002726 15 81            [12] 1587 	dec	sp
      002728 15 81            [12] 1588 	dec	sp
      00272A D0 01            [24] 1589 	pop	ar1
      00272C D0 06            [24] 1590 	pop	ar6
      00272E A7 04            [24] 1591 	mov	@r1,ar4
      002730 09               [12] 1592 	inc	r1
      002731 A7 05            [24] 1593 	mov	@r1,ar5
      002733 19               [12] 1594 	dec	r1
                                   1595 ;	walk.c:136: walk(&initial);
      002734 8E 03            [24] 1596 	mov	ar3,r6
      002736 7C 00            [12] 1597 	mov	r4,#0x00
      002738 7D 40            [12] 1598 	mov	r5,#0x40
      00273A 8B 82            [24] 1599 	mov	dpl,r3
      00273C 8C 83            [24] 1600 	mov	dph,r4
      00273E 8D F0            [24] 1601 	mov	b,r5
      002740 C0 06            [24] 1602 	push	ar6
      002742 12 20 8B         [24] 1603 	lcall	_walk
      002745 D0 06            [24] 1604 	pop	ar6
      002747 D0 07            [24] 1605 	pop	ar7
      002749 02 26 47         [24] 1606 	ljmp	00103$
      00274C                       1607 00105$:
                                   1608 ;	walk.c:139: EA = 0;
                                   1609 ;	assignBit
      00274C C2 AF            [12] 1610 	clr	_EA
                                   1611 ;	walk.c:143: __endasm;
      00274E 02 00 00         [24] 1612 	ljmp	0
                                   1613 ;	walk.c:145: return 0;
      002751 90 00 00         [24] 1614 	mov	dptr,#0x0000
                                   1615 ;	walk.c:146: }
      002754 85 10 81         [24] 1616 	mov	sp,_bp
      002757 D0 10            [24] 1617 	pop	_bp
      002759 22               [24] 1618 	ret
                                   1619 ;------------------------------------------------------------
                                   1620 ;Allocation info for local variables in function 'stinit'
                                   1621 ;------------------------------------------------------------
                                   1622 ;	walk.c:148: static void stinit(void) {
                                   1623 ;	-----------------------------------------
                                   1624 ;	 function stinit
                                   1625 ;	-----------------------------------------
      00275A                       1626 _stinit:
                                   1627 ;	walk.c:149: sp = -1;
      00275A 90 F4 00         [24] 1628 	mov	dptr,#_sp
      00275D 74 FF            [12] 1629 	mov	a,#0xff
      00275F F0               [24] 1630 	movx	@dptr,a
      002760 A3               [24] 1631 	inc	dptr
      002761 F0               [24] 1632 	movx	@dptr,a
                                   1633 ;	walk.c:150: return;
                                   1634 ;	walk.c:151: }
      002762 22               [24] 1635 	ret
                                   1636 ;------------------------------------------------------------
                                   1637 ;Allocation info for local variables in function 'stpush'
                                   1638 ;------------------------------------------------------------
                                   1639 ;t                         Allocated to registers r5 r6 r7 
                                   1640 ;------------------------------------------------------------
                                   1641 ;	walk.c:153: static int stpush(struct node *t) {
                                   1642 ;	-----------------------------------------
                                   1643 ;	 function stpush
                                   1644 ;	-----------------------------------------
      002763                       1645 _stpush:
      002763 AD 82            [24] 1646 	mov	r5,dpl
      002765 AE 83            [24] 1647 	mov	r6,dph
      002767 AF F0            [24] 1648 	mov	r7,b
                                   1649 ;	walk.c:154: if (sp == (SMAX - 1)) return 0;
      002769 90 F4 00         [24] 1650 	mov	dptr,#_sp
      00276C E0               [24] 1651 	movx	a,@dptr
      00276D FB               [12] 1652 	mov	r3,a
      00276E A3               [24] 1653 	inc	dptr
      00276F E0               [24] 1654 	movx	a,@dptr
      002770 FC               [12] 1655 	mov	r4,a
      002771 BB FF 07         [24] 1656 	cjne	r3,#0xff,00102$
      002774 BC 23 04         [24] 1657 	cjne	r4,#0x23,00102$
      002777 90 00 00         [24] 1658 	mov	dptr,#0x0000
      00277A 22               [24] 1659 	ret
      00277B                       1660 00102$:
                                   1661 ;	walk.c:155: sp++;
      00277B 90 F4 00         [24] 1662 	mov	dptr,#_sp
      00277E 74 01            [12] 1663 	mov	a,#0x01
      002780 2B               [12] 1664 	add	a,r3
      002781 F0               [24] 1665 	movx	@dptr,a
      002782 E4               [12] 1666 	clr	a
      002783 3C               [12] 1667 	addc	a,r4
      002784 A3               [24] 1668 	inc	dptr
      002785 F0               [24] 1669 	movx	@dptr,a
                                   1670 ;	walk.c:156: stack[sp] = *t;
      002786 90 F4 00         [24] 1671 	mov	dptr,#_sp
      002789 E0               [24] 1672 	movx	a,@dptr
      00278A FB               [12] 1673 	mov	r3,a
      00278B A3               [24] 1674 	inc	dptr
      00278C E0               [24] 1675 	movx	a,@dptr
      00278D FC               [12] 1676 	mov	r4,a
      00278E EB               [12] 1677 	mov	a,r3
      00278F 2B               [12] 1678 	add	a,r3
      002790 FB               [12] 1679 	mov	r3,a
      002791 EC               [12] 1680 	mov	a,r4
      002792 33               [12] 1681 	rlc	a
      002793 FC               [12] 1682 	mov	r4,a
      002794 EB               [12] 1683 	mov	a,r3
      002795 2B               [12] 1684 	add	a,r3
      002796 FB               [12] 1685 	mov	r3,a
      002797 EC               [12] 1686 	mov	a,r4
      002798 33               [12] 1687 	rlc	a
      002799 FC               [12] 1688 	mov	r4,a
      00279A EB               [12] 1689 	mov	a,r3
      00279B 24 00            [12] 1690 	add	a,#_stack
      00279D FB               [12] 1691 	mov	r3,a
      00279E EC               [12] 1692 	mov	a,r4
      00279F 34 64            [12] 1693 	addc	a,#(_stack >> 8)
      0027A1 FC               [12] 1694 	mov	r4,a
      0027A2 7A 00            [12] 1695 	mov	r2,#0x00
      0027A4 74 04            [12] 1696 	mov	a,#0x04
      0027A6 C0 E0            [24] 1697 	push	acc
      0027A8 E4               [12] 1698 	clr	a
      0027A9 C0 E0            [24] 1699 	push	acc
      0027AB C0 05            [24] 1700 	push	ar5
      0027AD C0 06            [24] 1701 	push	ar6
      0027AF C0 07            [24] 1702 	push	ar7
      0027B1 8B 82            [24] 1703 	mov	dpl,r3
      0027B3 8C 83            [24] 1704 	mov	dph,r4
      0027B5 8A F0            [24] 1705 	mov	b,r2
      0027B7 12 29 A1         [24] 1706 	lcall	___memcpy
      0027BA E5 81            [12] 1707 	mov	a,sp
      0027BC 24 FB            [12] 1708 	add	a,#0xfb
      0027BE F5 81            [12] 1709 	mov	sp,a
                                   1710 ;	walk.c:157: return 1;
      0027C0 90 00 01         [24] 1711 	mov	dptr,#0x0001
                                   1712 ;	walk.c:158: }
      0027C3 22               [24] 1713 	ret
                                   1714 ;------------------------------------------------------------
                                   1715 ;Allocation info for local variables in function 'stpop'
                                   1716 ;------------------------------------------------------------
                                   1717 ;t                         Allocated to registers r5 r6 r7 
                                   1718 ;------------------------------------------------------------
                                   1719 ;	walk.c:160: static int stpop(struct node *t) {
                                   1720 ;	-----------------------------------------
                                   1721 ;	 function stpop
                                   1722 ;	-----------------------------------------
      0027C4                       1723 _stpop:
      0027C4 AD 82            [24] 1724 	mov	r5,dpl
      0027C6 AE 83            [24] 1725 	mov	r6,dph
      0027C8 AF F0            [24] 1726 	mov	r7,b
                                   1727 ;	walk.c:161: if (sp == -1) return 0;
      0027CA 90 F4 00         [24] 1728 	mov	dptr,#_sp
      0027CD E0               [24] 1729 	movx	a,@dptr
      0027CE FB               [12] 1730 	mov	r3,a
      0027CF A3               [24] 1731 	inc	dptr
      0027D0 E0               [24] 1732 	movx	a,@dptr
      0027D1 FC               [12] 1733 	mov	r4,a
      0027D2 BB FF 07         [24] 1734 	cjne	r3,#0xff,00102$
      0027D5 BC FF 04         [24] 1735 	cjne	r4,#0xff,00102$
      0027D8 90 00 00         [24] 1736 	mov	dptr,#0x0000
      0027DB 22               [24] 1737 	ret
      0027DC                       1738 00102$:
                                   1739 ;	walk.c:162: *t = stack[sp];
      0027DC EB               [12] 1740 	mov	a,r3
      0027DD 2B               [12] 1741 	add	a,r3
      0027DE FB               [12] 1742 	mov	r3,a
      0027DF EC               [12] 1743 	mov	a,r4
      0027E0 33               [12] 1744 	rlc	a
      0027E1 FC               [12] 1745 	mov	r4,a
      0027E2 EB               [12] 1746 	mov	a,r3
      0027E3 2B               [12] 1747 	add	a,r3
      0027E4 FB               [12] 1748 	mov	r3,a
      0027E5 EC               [12] 1749 	mov	a,r4
      0027E6 33               [12] 1750 	rlc	a
      0027E7 FC               [12] 1751 	mov	r4,a
      0027E8 EB               [12] 1752 	mov	a,r3
      0027E9 24 00            [12] 1753 	add	a,#_stack
      0027EB FB               [12] 1754 	mov	r3,a
      0027EC EC               [12] 1755 	mov	a,r4
      0027ED 34 64            [12] 1756 	addc	a,#(_stack >> 8)
      0027EF FC               [12] 1757 	mov	r4,a
      0027F0 7A 00            [12] 1758 	mov	r2,#0x00
      0027F2 74 04            [12] 1759 	mov	a,#0x04
      0027F4 C0 E0            [24] 1760 	push	acc
      0027F6 E4               [12] 1761 	clr	a
      0027F7 C0 E0            [24] 1762 	push	acc
      0027F9 C0 03            [24] 1763 	push	ar3
      0027FB C0 04            [24] 1764 	push	ar4
      0027FD C0 02            [24] 1765 	push	ar2
      0027FF 8D 82            [24] 1766 	mov	dpl,r5
      002801 8E 83            [24] 1767 	mov	dph,r6
      002803 8F F0            [24] 1768 	mov	b,r7
      002805 12 29 A1         [24] 1769 	lcall	___memcpy
      002808 E5 81            [12] 1770 	mov	a,sp
      00280A 24 FB            [12] 1771 	add	a,#0xfb
      00280C F5 81            [12] 1772 	mov	sp,a
                                   1773 ;	walk.c:163: sp--;
      00280E 90 F4 00         [24] 1774 	mov	dptr,#_sp
      002811 E0               [24] 1775 	movx	a,@dptr
      002812 24 FF            [12] 1776 	add	a,#0xff
      002814 FE               [12] 1777 	mov	r6,a
      002815 A3               [24] 1778 	inc	dptr
      002816 E0               [24] 1779 	movx	a,@dptr
      002817 34 FF            [12] 1780 	addc	a,#0xff
      002819 FF               [12] 1781 	mov	r7,a
      00281A 90 F4 00         [24] 1782 	mov	dptr,#_sp
      00281D EE               [12] 1783 	mov	a,r6
      00281E F0               [24] 1784 	movx	@dptr,a
      00281F EF               [12] 1785 	mov	a,r7
      002820 A3               [24] 1786 	inc	dptr
      002821 F0               [24] 1787 	movx	@dptr,a
                                   1788 ;	walk.c:164: return 1;
      002822 90 00 01         [24] 1789 	mov	dptr,#0x0001
                                   1790 ;	walk.c:165: }
      002825 22               [24] 1791 	ret
                                   1792 	.area CSEG    (CODE)
                                   1793 	.area CONST   (CODE)
      003E08                       1794 _neigh:
      003E08 FF FF                 1795 	.byte #0xff, #0xff	; -1
      003E0A 00 00                 1796 	.byte #0x00, #0x00	;  0
      003E0C 00 00                 1797 	.byte #0x00, #0x00	;  0
      003E0E FF FF                 1798 	.byte #0xff, #0xff	; -1
      003E10 00 00                 1799 	.byte #0x00, #0x00	;  0
      003E12 01 00                 1800 	.byte #0x01, #0x00	;  1
      003E14 01 00                 1801 	.byte #0x01, #0x00	;  1
      003E16 00 00                 1802 	.byte #0x00, #0x00	;  0
                                   1803 	.area CONST   (CODE)
      003E18                       1804 ___str_0:
      003E18 1B                    1805 	.db 0x1b
      003E19 5B 25 64 3B 25 64 48  1806 	.ascii "[%d;%dHo"
             6F
      003E21 00                    1807 	.db 0x00
                                   1808 	.area CSEG    (CODE)
                                   1809 	.area CONST   (CODE)
      003E22                       1810 ___str_1:
      003E22 4D 65 6D 6F 72 79 20  1811 	.ascii "Memory error"
             65 72 72 6F 72
      003E2E 00                    1812 	.db 0x00
                                   1813 	.area CSEG    (CODE)
                                   1814 	.area CONST   (CODE)
      003E2F                       1815 ___str_2:
      003E2F 1B                    1816 	.db 0x1b
      003E30 5B 25 64 3B 25 64 48  1817 	.ascii "[%d;%dH."
             2E
      003E38 00                    1818 	.db 0x00
                                   1819 	.area CSEG    (CODE)
                                   1820 	.area CONST   (CODE)
      003E39                       1821 ___str_3:
      003E39 25 73                 1822 	.ascii "%s"
      003E3B 00                    1823 	.db 0x00
                                   1824 	.area CSEG    (CODE)
                                   1825 	.area CONST   (CODE)
      003E3C                       1826 ___str_4:
      003E3C 1B                    1827 	.db 0x1b
      003E3D 5B 32 4A              1828 	.ascii "[2J"
      003E40 00                    1829 	.db 0x00
                                   1830 	.area CSEG    (CODE)
                                   1831 	.area XINIT   (CODE)
                                   1832 	.area CABS    (ABS,CODE)
