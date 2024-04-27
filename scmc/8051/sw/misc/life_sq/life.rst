                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module life
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _show
                                     13 	.globl _int1
                                     14 	.globl _int0
                                     15 	.globl _print16x
                                     16 	.globl _printstr
                                     17 	.globl _getchar
                                     18 	.globl _putchar
                                     19 	.globl _toupper
                                     20 	.globl ___memcpy
                                     21 	.globl _memset
                                     22 	.globl _CY
                                     23 	.globl _AC
                                     24 	.globl _F0
                                     25 	.globl _RS1
                                     26 	.globl _RS0
                                     27 	.globl _OV
                                     28 	.globl _FL
                                     29 	.globl _P
                                     30 	.globl _TF2
                                     31 	.globl _EXF2
                                     32 	.globl _RCLK
                                     33 	.globl _TCLK
                                     34 	.globl _EXEN2
                                     35 	.globl _TR2
                                     36 	.globl _C_T2
                                     37 	.globl _CP_RL2
                                     38 	.globl _T2CON_7
                                     39 	.globl _T2CON_6
                                     40 	.globl _T2CON_5
                                     41 	.globl _T2CON_4
                                     42 	.globl _T2CON_3
                                     43 	.globl _T2CON_2
                                     44 	.globl _T2CON_1
                                     45 	.globl _T2CON_0
                                     46 	.globl _PT2
                                     47 	.globl _PS
                                     48 	.globl _PT1
                                     49 	.globl _PX1
                                     50 	.globl _PT0
                                     51 	.globl _PX0
                                     52 	.globl _RD
                                     53 	.globl _WR
                                     54 	.globl _T1
                                     55 	.globl _T0
                                     56 	.globl _INT1
                                     57 	.globl _INT0
                                     58 	.globl _TXD
                                     59 	.globl _RXD
                                     60 	.globl _P3_7
                                     61 	.globl _P3_6
                                     62 	.globl _P3_5
                                     63 	.globl _P3_4
                                     64 	.globl _P3_3
                                     65 	.globl _P3_2
                                     66 	.globl _P3_1
                                     67 	.globl _P3_0
                                     68 	.globl _EA
                                     69 	.globl _ET2
                                     70 	.globl _ES
                                     71 	.globl _ET1
                                     72 	.globl _EX1
                                     73 	.globl _ET0
                                     74 	.globl _EX0
                                     75 	.globl _P2_7
                                     76 	.globl _P2_6
                                     77 	.globl _P2_5
                                     78 	.globl _P2_4
                                     79 	.globl _P2_3
                                     80 	.globl _P2_2
                                     81 	.globl _P2_1
                                     82 	.globl _P2_0
                                     83 	.globl _SM0
                                     84 	.globl _SM1
                                     85 	.globl _SM2
                                     86 	.globl _REN
                                     87 	.globl _TB8
                                     88 	.globl _RB8
                                     89 	.globl _TI
                                     90 	.globl _RI
                                     91 	.globl _T2EX
                                     92 	.globl _T2
                                     93 	.globl _P1_7
                                     94 	.globl _P1_6
                                     95 	.globl _P1_5
                                     96 	.globl _P1_4
                                     97 	.globl _P1_3
                                     98 	.globl _P1_2
                                     99 	.globl _P1_1
                                    100 	.globl _P1_0
                                    101 	.globl _TF1
                                    102 	.globl _TR1
                                    103 	.globl _TF0
                                    104 	.globl _TR0
                                    105 	.globl _IE1
                                    106 	.globl _IT1
                                    107 	.globl _IE0
                                    108 	.globl _IT0
                                    109 	.globl _P0_7
                                    110 	.globl _P0_6
                                    111 	.globl _P0_5
                                    112 	.globl _P0_4
                                    113 	.globl _P0_3
                                    114 	.globl _P0_2
                                    115 	.globl _P0_1
                                    116 	.globl _P0_0
                                    117 	.globl _B
                                    118 	.globl _A
                                    119 	.globl _ACC
                                    120 	.globl _PSW
                                    121 	.globl _TH2
                                    122 	.globl _TL2
                                    123 	.globl _RCAP2H
                                    124 	.globl _RCAP2L
                                    125 	.globl _T2MOD
                                    126 	.globl _T2CON
                                    127 	.globl _IP
                                    128 	.globl _P3
                                    129 	.globl _IE
                                    130 	.globl _P2
                                    131 	.globl _SBUF
                                    132 	.globl _SCON
                                    133 	.globl _P1
                                    134 	.globl _TH1
                                    135 	.globl _TH0
                                    136 	.globl _TL1
                                    137 	.globl _TL0
                                    138 	.globl _TMOD
                                    139 	.globl _TCON
                                    140 	.globl _PCON
                                    141 	.globl _DPH
                                    142 	.globl _DPL
                                    143 	.globl _SP
                                    144 	.globl _P0
                                    145 ;--------------------------------------------------------
                                    146 ; special function registers
                                    147 ;--------------------------------------------------------
                                    148 	.area RSEG    (ABS,DATA)
      000000                        149 	.org 0x0000
                           000080   150 _P0	=	0x0080
                           000081   151 _SP	=	0x0081
                           000082   152 _DPL	=	0x0082
                           000083   153 _DPH	=	0x0083
                           000087   154 _PCON	=	0x0087
                           000088   155 _TCON	=	0x0088
                           000089   156 _TMOD	=	0x0089
                           00008A   157 _TL0	=	0x008a
                           00008B   158 _TL1	=	0x008b
                           00008C   159 _TH0	=	0x008c
                           00008D   160 _TH1	=	0x008d
                           000090   161 _P1	=	0x0090
                           000098   162 _SCON	=	0x0098
                           000099   163 _SBUF	=	0x0099
                           0000A0   164 _P2	=	0x00a0
                           0000A8   165 _IE	=	0x00a8
                           0000B0   166 _P3	=	0x00b0
                           0000B8   167 _IP	=	0x00b8
                           0000C8   168 _T2CON	=	0x00c8
                           0000C9   169 _T2MOD	=	0x00c9
                           0000CA   170 _RCAP2L	=	0x00ca
                           0000CB   171 _RCAP2H	=	0x00cb
                           0000CC   172 _TL2	=	0x00cc
                           0000CD   173 _TH2	=	0x00cd
                           0000D0   174 _PSW	=	0x00d0
                           0000E0   175 _ACC	=	0x00e0
                           0000E0   176 _A	=	0x00e0
                           0000F0   177 _B	=	0x00f0
                                    178 ;--------------------------------------------------------
                                    179 ; special function bits
                                    180 ;--------------------------------------------------------
                                    181 	.area RSEG    (ABS,DATA)
      000000                        182 	.org 0x0000
                           000080   183 _P0_0	=	0x0080
                           000081   184 _P0_1	=	0x0081
                           000082   185 _P0_2	=	0x0082
                           000083   186 _P0_3	=	0x0083
                           000084   187 _P0_4	=	0x0084
                           000085   188 _P0_5	=	0x0085
                           000086   189 _P0_6	=	0x0086
                           000087   190 _P0_7	=	0x0087
                           000088   191 _IT0	=	0x0088
                           000089   192 _IE0	=	0x0089
                           00008A   193 _IT1	=	0x008a
                           00008B   194 _IE1	=	0x008b
                           00008C   195 _TR0	=	0x008c
                           00008D   196 _TF0	=	0x008d
                           00008E   197 _TR1	=	0x008e
                           00008F   198 _TF1	=	0x008f
                           000090   199 _P1_0	=	0x0090
                           000091   200 _P1_1	=	0x0091
                           000092   201 _P1_2	=	0x0092
                           000093   202 _P1_3	=	0x0093
                           000094   203 _P1_4	=	0x0094
                           000095   204 _P1_5	=	0x0095
                           000096   205 _P1_6	=	0x0096
                           000097   206 _P1_7	=	0x0097
                           000090   207 _T2	=	0x0090
                           000091   208 _T2EX	=	0x0091
                           000098   209 _RI	=	0x0098
                           000099   210 _TI	=	0x0099
                           00009A   211 _RB8	=	0x009a
                           00009B   212 _TB8	=	0x009b
                           00009C   213 _REN	=	0x009c
                           00009D   214 _SM2	=	0x009d
                           00009E   215 _SM1	=	0x009e
                           00009F   216 _SM0	=	0x009f
                           0000A0   217 _P2_0	=	0x00a0
                           0000A1   218 _P2_1	=	0x00a1
                           0000A2   219 _P2_2	=	0x00a2
                           0000A3   220 _P2_3	=	0x00a3
                           0000A4   221 _P2_4	=	0x00a4
                           0000A5   222 _P2_5	=	0x00a5
                           0000A6   223 _P2_6	=	0x00a6
                           0000A7   224 _P2_7	=	0x00a7
                           0000A8   225 _EX0	=	0x00a8
                           0000A9   226 _ET0	=	0x00a9
                           0000AA   227 _EX1	=	0x00aa
                           0000AB   228 _ET1	=	0x00ab
                           0000AC   229 _ES	=	0x00ac
                           0000AD   230 _ET2	=	0x00ad
                           0000AF   231 _EA	=	0x00af
                           0000B0   232 _P3_0	=	0x00b0
                           0000B1   233 _P3_1	=	0x00b1
                           0000B2   234 _P3_2	=	0x00b2
                           0000B3   235 _P3_3	=	0x00b3
                           0000B4   236 _P3_4	=	0x00b4
                           0000B5   237 _P3_5	=	0x00b5
                           0000B6   238 _P3_6	=	0x00b6
                           0000B7   239 _P3_7	=	0x00b7
                           0000B0   240 _RXD	=	0x00b0
                           0000B1   241 _TXD	=	0x00b1
                           0000B2   242 _INT0	=	0x00b2
                           0000B3   243 _INT1	=	0x00b3
                           0000B4   244 _T0	=	0x00b4
                           0000B5   245 _T1	=	0x00b5
                           0000B6   246 _WR	=	0x00b6
                           0000B7   247 _RD	=	0x00b7
                           0000B8   248 _PX0	=	0x00b8
                           0000B9   249 _PT0	=	0x00b9
                           0000BA   250 _PX1	=	0x00ba
                           0000BB   251 _PT1	=	0x00bb
                           0000BC   252 _PS	=	0x00bc
                           0000BD   253 _PT2	=	0x00bd
                           0000C8   254 _T2CON_0	=	0x00c8
                           0000C9   255 _T2CON_1	=	0x00c9
                           0000CA   256 _T2CON_2	=	0x00ca
                           0000CB   257 _T2CON_3	=	0x00cb
                           0000CC   258 _T2CON_4	=	0x00cc
                           0000CD   259 _T2CON_5	=	0x00cd
                           0000CE   260 _T2CON_6	=	0x00ce
                           0000CF   261 _T2CON_7	=	0x00cf
                           0000C8   262 _CP_RL2	=	0x00c8
                           0000C9   263 _C_T2	=	0x00c9
                           0000CA   264 _TR2	=	0x00ca
                           0000CB   265 _EXEN2	=	0x00cb
                           0000CC   266 _TCLK	=	0x00cc
                           0000CD   267 _RCLK	=	0x00cd
                           0000CE   268 _EXF2	=	0x00ce
                           0000CF   269 _TF2	=	0x00cf
                           0000D0   270 _P	=	0x00d0
                           0000D1   271 _FL	=	0x00d1
                           0000D2   272 _OV	=	0x00d2
                           0000D3   273 _RS0	=	0x00d3
                           0000D4   274 _RS1	=	0x00d4
                           0000D5   275 _F0	=	0x00d5
                           0000D6   276 _AC	=	0x00d6
                           0000D7   277 _CY	=	0x00d7
                                    278 ;--------------------------------------------------------
                                    279 ; overlayable register banks
                                    280 ;--------------------------------------------------------
                                    281 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        282 	.ds 8
                                    283 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        284 	.ds 8
                                    285 ;--------------------------------------------------------
                                    286 ; overlayable bit register bank
                                    287 ;--------------------------------------------------------
                                    288 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        289 bits:
      000020                        290 	.ds 1
                           008000   291 	b0 = bits[0]
                           008100   292 	b1 = bits[1]
                           008200   293 	b2 = bits[2]
                           008300   294 	b3 = bits[3]
                           008400   295 	b4 = bits[4]
                           008500   296 	b5 = bits[5]
                           008600   297 	b6 = bits[6]
                           008700   298 	b7 = bits[7]
                                    299 ;--------------------------------------------------------
                                    300 ; internal ram data
                                    301 ;--------------------------------------------------------
                                    302 	.area DSEG    (DATA)
                                    303 ;--------------------------------------------------------
                                    304 ; overlayable items in internal ram 
                                    305 ;--------------------------------------------------------
                                    306 ;--------------------------------------------------------
                                    307 ; Stack segment in internal ram 
                                    308 ;--------------------------------------------------------
                                    309 	.area	SSEG
      00004B                        310 __start__stack:
      00004B                        311 	.ds	1
                                    312 
                                    313 ;--------------------------------------------------------
                                    314 ; indirectly addressable internal ram data
                                    315 ;--------------------------------------------------------
                                    316 	.area ISEG    (DATA)
      000021                        317 _i0:
      000021                        318 	.ds 1
      000022                        319 _i1:
      000022                        320 	.ds 1
      000023                        321 _x:
      000023                        322 	.ds 2
      000025                        323 _y:
      000025                        324 	.ds 2
      000027                        325 _j:
      000027                        326 	.ds 2
      000029                        327 _c:
      000029                        328 	.ds 2
      00002B                        329 _bstep:
      00002B                        330 	.ds 1
      00002C                        331 _n:
      00002C                        332 	.ds 1
      00002D                        333 _fixed:
      00002D                        334 	.ds 1
      00002E                        335 _cycle2:
      00002E                        336 	.ds 1
      00002F                        337 _dx:
      00002F                        338 	.ds 2
      000031                        339 _dy:
      000031                        340 	.ds 2
      000033                        341 _generation:
      000033                        342 	.ds 4
      000037                        343 _busy:
      000037                        344 	.ds 4
                                    345 ;--------------------------------------------------------
                                    346 ; absolute internal ram data
                                    347 ;--------------------------------------------------------
                                    348 	.area IABS    (ABS,DATA)
                                    349 	.area IABS    (ABS,DATA)
                                    350 ;--------------------------------------------------------
                                    351 ; bit data
                                    352 ;--------------------------------------------------------
                                    353 	.area BSEG    (BIT)
                                    354 ;--------------------------------------------------------
                                    355 ; paged external ram data
                                    356 ;--------------------------------------------------------
                                    357 	.area PSEG    (PAG,XDATA)
                                    358 ;--------------------------------------------------------
                                    359 ; external ram data
                                    360 ;--------------------------------------------------------
                                    361 	.area XSEG    (XDATA)
      004000                        362 _pu:
      004000                        363 	.ds 2048
      004800                        364 _u:
      004800                        365 	.ds 2048
      005000                        366 _nu:
      005000                        367 	.ds 2048
                                    368 ;--------------------------------------------------------
                                    369 ; absolute external ram data
                                    370 ;--------------------------------------------------------
                                    371 	.area XABS    (ABS,XDATA)
                                    372 ;--------------------------------------------------------
                                    373 ; external initialized ram data
                                    374 ;--------------------------------------------------------
                                    375 	.area XISEG   (XDATA)
                                    376 	.area HOME    (CODE)
                                    377 	.area GSINIT0 (CODE)
                                    378 	.area GSINIT1 (CODE)
                                    379 	.area GSINIT2 (CODE)
                                    380 	.area GSINIT3 (CODE)
                                    381 	.area GSINIT4 (CODE)
                                    382 	.area GSINIT5 (CODE)
                                    383 	.area GSINIT  (CODE)
                                    384 	.area GSFINAL (CODE)
                                    385 	.area CSEG    (CODE)
                                    386 ;--------------------------------------------------------
                                    387 ; interrupt vector 
                                    388 ;--------------------------------------------------------
                                    389 	.area HOME    (CODE)
      002000                        390 __interrupt_vect:
      002000 02 20 19         [24]  391 	ljmp	__sdcc_gsinit_startup
      002003 02 20 C5         [24]  392 	ljmp	_int0
      002006                        393 	.ds	5
      00200B 32               [24]  394 	reti
      00200C                        395 	.ds	7
      002013 02 20 D1         [24]  396 	ljmp	_int1
                                    397 ;--------------------------------------------------------
                                    398 ; global & static initialisations
                                    399 ;--------------------------------------------------------
                                    400 	.area HOME    (CODE)
                                    401 	.area GSINIT  (CODE)
                                    402 	.area GSFINAL (CODE)
                                    403 	.area GSINIT  (CODE)
                                    404 	.globl __sdcc_gsinit_startup
                                    405 	.globl __sdcc_program_startup
                                    406 	.globl __start__stack
                                    407 	.globl __mcs51_genXINIT
                                    408 	.globl __mcs51_genXRAMCLEAR
                                    409 	.globl __mcs51_genRAMCLEAR
                                    410 ;	life.c:117: __idata static const char busy[4] = { '\\', '|', '/', '-' };
      002072 78 37            [12]  411 	mov	r0,#_busy
      002074 76 5C            [12]  412 	mov	@r0,#0x5c
      002076 78 38            [12]  413 	mov	r0,#(_busy + 0x0001)
      002078 76 7C            [12]  414 	mov	@r0,#0x7c
      00207A 78 39            [12]  415 	mov	r0,#(_busy + 0x0002)
      00207C 76 2F            [12]  416 	mov	@r0,#0x2f
      00207E 78 3A            [12]  417 	mov	r0,#(_busy + 0x0003)
      002080 76 2D            [12]  418 	mov	@r0,#0x2d
                                    419 	.area GSFINAL (CODE)
      0020C2 02 20 16         [24]  420 	ljmp	__sdcc_program_startup
                                    421 ;--------------------------------------------------------
                                    422 ; Home
                                    423 ;--------------------------------------------------------
                                    424 	.area HOME    (CODE)
                                    425 	.area HOME    (CODE)
      002016                        426 __sdcc_program_startup:
      002016 02 21 C6         [24]  427 	ljmp	_main
                                    428 ;	return from main will return to caller
                                    429 ;--------------------------------------------------------
                                    430 ; code
                                    431 ;--------------------------------------------------------
                                    432 	.area CSEG    (CODE)
                                    433 ;------------------------------------------------------------
                                    434 ;Allocation info for local variables in function 'int0'
                                    435 ;------------------------------------------------------------
                                    436 ;	life.c:9: void int0(void) __interrupt IE0_VECTOR __using 1 {
                                    437 ;	-----------------------------------------
                                    438 ;	 function int0
                                    439 ;	-----------------------------------------
      0020C5                        440 _int0:
                           00000F   441 	ar7 = 0x0f
                           00000E   442 	ar6 = 0x0e
                           00000D   443 	ar5 = 0x0d
                           00000C   444 	ar4 = 0x0c
                           00000B   445 	ar3 = 0x0b
                           00000A   446 	ar2 = 0x0a
                           000009   447 	ar1 = 0x09
                           000008   448 	ar0 = 0x08
      0020C5 C0 D0            [24]  449 	push	psw
      0020C7 75 D0 08         [24]  450 	mov	psw,#0x08
                                    451 ;	life.c:10: i0 = 1;
      0020CA 78 21            [12]  452 	mov	r0,#_i0
      0020CC 76 01            [12]  453 	mov	@r0,#0x01
                                    454 ;	life.c:11: }
      0020CE D0 D0            [24]  455 	pop	psw
      0020D0 32               [24]  456 	reti
                                    457 ;	eliminated unneeded push/pop dpl
                                    458 ;	eliminated unneeded push/pop dph
                                    459 ;	eliminated unneeded push/pop b
                                    460 ;	eliminated unneeded push/pop acc
                                    461 ;------------------------------------------------------------
                                    462 ;Allocation info for local variables in function 'int1'
                                    463 ;------------------------------------------------------------
                                    464 ;	life.c:13: void int1(void) __interrupt IE1_VECTOR __using 1 {
                                    465 ;	-----------------------------------------
                                    466 ;	 function int1
                                    467 ;	-----------------------------------------
      0020D1                        468 _int1:
      0020D1 C0 D0            [24]  469 	push	psw
      0020D3 75 D0 08         [24]  470 	mov	psw,#0x08
                                    471 ;	life.c:14: i1 = 1;
      0020D6 78 22            [12]  472 	mov	r0,#_i1
      0020D8 76 01            [12]  473 	mov	@r0,#0x01
                                    474 ;	life.c:15: }
      0020DA D0 D0            [24]  475 	pop	psw
      0020DC 32               [24]  476 	reti
                                    477 ;	eliminated unneeded push/pop dpl
                                    478 ;	eliminated unneeded push/pop dph
                                    479 ;	eliminated unneeded push/pop b
                                    480 ;	eliminated unneeded push/pop acc
                                    481 ;------------------------------------------------------------
                                    482 ;Allocation info for local variables in function 'show'
                                    483 ;------------------------------------------------------------
                                    484 ;hdr                       Allocated to registers r7 
                                    485 ;------------------------------------------------------------
                                    486 ;	life.c:51: void show(char hdr) {
                                    487 ;	-----------------------------------------
                                    488 ;	 function show
                                    489 ;	-----------------------------------------
      0020DD                        490 _show:
                           000007   491 	ar7 = 0x07
                           000006   492 	ar6 = 0x06
                           000005   493 	ar5 = 0x05
                           000004   494 	ar4 = 0x04
                           000003   495 	ar3 = 0x03
                           000002   496 	ar2 = 0x02
                           000001   497 	ar1 = 0x01
                           000000   498 	ar0 = 0x00
                                    499 ;	life.c:52: if (hdr) {
      0020DD E5 82            [12]  500 	mov	a,dpl
      0020DF FF               [12]  501 	mov	r7,a
      0020E0 60 58            [24]  502 	jz	00102$
                                    503 ;	life.c:53: printstr("\033[2J\033[mGEN ");
      0020E2 90 2D 77         [24]  504 	mov	dptr,#___str_0
      0020E5 75 F0 80         [24]  505 	mov	b,#0x80
      0020E8 12 28 87         [24]  506 	lcall	_printstr
                                    507 ;	life.c:45: print16x(generation[1]);
      0020EB 78 35            [12]  508 	mov	r0,#(_generation + 0x0002)
      0020ED 86 06            [24]  509 	mov	ar6,@r0
      0020EF 08               [12]  510 	inc	r0
      0020F0 86 07            [24]  511 	mov	ar7,@r0
      0020F2 8E 82            [24]  512 	mov	dpl,r6
      0020F4 8F 83            [24]  513 	mov	dph,r7
      0020F6 12 29 9F         [24]  514 	lcall	_print16x
                                    515 ;	life.c:46: print16x(generation[0]);
      0020F9 78 33            [12]  516 	mov	r0,#_generation
      0020FB 86 06            [24]  517 	mov	ar6,@r0
      0020FD 08               [12]  518 	inc	r0
      0020FE 86 07            [24]  519 	mov	ar7,@r0
      002100 8E 82            [24]  520 	mov	dpl,r6
      002102 8F 83            [24]  521 	mov	dph,r7
      002104 12 29 9F         [24]  522 	lcall	_print16x
                                    523 ;	life.c:55: printstr("\r\n");
      002107 90 2D 83         [24]  524 	mov	dptr,#___str_1
      00210A 75 F0 80         [24]  525 	mov	b,#0x80
      00210D 12 28 87         [24]  526 	lcall	_printstr
                                    527 ;	life.c:38: generation[0]++;
      002110 78 33            [12]  528 	mov	r0,#_generation
      002112 86 06            [24]  529 	mov	ar6,@r0
      002114 08               [12]  530 	inc	r0
      002115 86 07            [24]  531 	mov	ar7,@r0
      002117 0E               [12]  532 	inc	r6
      002118 BE 00 01         [24]  533 	cjne	r6,#0x00,00147$
      00211B 0F               [12]  534 	inc	r7
      00211C                        535 00147$:
      00211C 78 33            [12]  536 	mov	r0,#_generation
      00211E A6 06            [24]  537 	mov	@r0,ar6
      002120 08               [12]  538 	inc	r0
      002121 A6 07            [24]  539 	mov	@r0,ar7
                                    540 ;	life.c:39: if (!generation[0]) generation[1]++;
      002123 EE               [12]  541 	mov	a,r6
      002124 4F               [12]  542 	orl	a,r7
      002125 70 13            [24]  543 	jnz	00102$
      002127 78 35            [12]  544 	mov	r0,#(_generation + 0x0002)
      002129 86 06            [24]  545 	mov	ar6,@r0
      00212B 08               [12]  546 	inc	r0
      00212C 86 07            [24]  547 	mov	ar7,@r0
      00212E 0E               [12]  548 	inc	r6
      00212F BE 00 01         [24]  549 	cjne	r6,#0x00,00149$
      002132 0F               [12]  550 	inc	r7
      002133                        551 00149$:
      002133 78 35            [12]  552 	mov	r0,#(_generation + 0x0002)
      002135 A6 06            [24]  553 	mov	@r0,ar6
      002137 08               [12]  554 	inc	r0
      002138 A6 07            [24]  555 	mov	@r0,ar7
                                    556 ;	life.c:56: updategen();
      00213A                        557 00102$:
                                    558 ;	life.c:59: for (x = 0; x < W; x++) {
      00213A 78 23            [12]  559 	mov	r0,#_x
      00213C E4               [12]  560 	clr	a
      00213D F6               [12]  561 	mov	@r0,a
      00213E 08               [12]  562 	inc	r0
      00213F F6               [12]  563 	mov	@r0,a
      002140                        564 00114$:
                                    565 ;	life.c:60: for (y = 0; y < H; y++)
      002140 78 25            [12]  566 	mov	r0,#_y
      002142 E4               [12]  567 	clr	a
      002143 F6               [12]  568 	mov	@r0,a
      002144 08               [12]  569 	inc	r0
      002145 F6               [12]  570 	mov	@r0,a
      002146                        571 00112$:
                                    572 ;	life.c:61: if (u[A2D(W, y, x)]) {
      002146 78 25            [12]  573 	mov	r0,#_y
      002148 86 06            [24]  574 	mov	ar6,@r0
      00214A 08               [12]  575 	inc	r0
      00214B E6               [12]  576 	mov	a,@r0
      00214C C4               [12]  577 	swap	a
      00214D 23               [12]  578 	rl	a
      00214E 54 E0            [12]  579 	anl	a,#0xe0
      002150 CE               [12]  580 	xch	a,r6
      002151 C4               [12]  581 	swap	a
      002152 23               [12]  582 	rl	a
      002153 CE               [12]  583 	xch	a,r6
      002154 6E               [12]  584 	xrl	a,r6
      002155 CE               [12]  585 	xch	a,r6
      002156 54 E0            [12]  586 	anl	a,#0xe0
      002158 CE               [12]  587 	xch	a,r6
      002159 6E               [12]  588 	xrl	a,r6
      00215A FF               [12]  589 	mov	r7,a
      00215B 78 23            [12]  590 	mov	r0,#_x
      00215D E6               [12]  591 	mov	a,@r0
      00215E 2E               [12]  592 	add	a,r6
      00215F FE               [12]  593 	mov	r6,a
      002160 08               [12]  594 	inc	r0
      002161 E6               [12]  595 	mov	a,@r0
      002162 3F               [12]  596 	addc	a,r7
      002163 FF               [12]  597 	mov	r7,a
      002164 EE               [12]  598 	mov	a,r6
      002165 24 00            [12]  599 	add	a,#_u
      002167 FE               [12]  600 	mov	r6,a
      002168 EF               [12]  601 	mov	a,r7
      002169 34 48            [12]  602 	addc	a,#(_u >> 8)
      00216B FF               [12]  603 	mov	r7,a
      00216C 8E 82            [24]  604 	mov	dpl,r6
      00216E 8F 83            [24]  605 	mov	dph,r7
      002170 E0               [24]  606 	movx	a,@dptr
      002171 60 0E            [24]  607 	jz	00104$
                                    608 ;	life.c:62: putchar('['); putchar(']');
      002173 90 00 5B         [24]  609 	mov	dptr,#0x005b
      002176 12 28 56         [24]  610 	lcall	_putchar
      002179 90 00 5D         [24]  611 	mov	dptr,#0x005d
      00217C 12 28 56         [24]  612 	lcall	_putchar
      00217F 80 0C            [24]  613 	sjmp	00113$
      002181                        614 00104$:
                                    615 ;	life.c:64: putchar('#'); putchar('#');
      002181 90 00 23         [24]  616 	mov	dptr,#0x0023
      002184 12 28 56         [24]  617 	lcall	_putchar
      002187 90 00 23         [24]  618 	mov	dptr,#0x0023
      00218A 12 28 56         [24]  619 	lcall	_putchar
      00218D                        620 00113$:
                                    621 ;	life.c:60: for (y = 0; y < H; y++)
      00218D 78 25            [12]  622 	mov	r0,#_y
      00218F 06               [12]  623 	inc	@r0
      002190 B6 00 02         [24]  624 	cjne	@r0,#0x00,00151$
      002193 08               [12]  625 	inc	r0
      002194 06               [12]  626 	inc	@r0
      002195                        627 00151$:
      002195 78 25            [12]  628 	mov	r0,#_y
      002197 C3               [12]  629 	clr	c
      002198 E6               [12]  630 	mov	a,@r0
      002199 94 40            [12]  631 	subb	a,#0x40
      00219B 08               [12]  632 	inc	r0
      00219C E6               [12]  633 	mov	a,@r0
      00219D 64 80            [12]  634 	xrl	a,#0x80
      00219F 94 80            [12]  635 	subb	a,#0x80
      0021A1 40 A3            [24]  636 	jc	00112$
                                    637 ;	life.c:66: printstr("\r\n");
      0021A3 90 2D 83         [24]  638 	mov	dptr,#___str_1
      0021A6 75 F0 80         [24]  639 	mov	b,#0x80
      0021A9 12 28 87         [24]  640 	lcall	_printstr
                                    641 ;	life.c:59: for (x = 0; x < W; x++) {
      0021AC 78 23            [12]  642 	mov	r0,#_x
      0021AE 06               [12]  643 	inc	@r0
      0021AF B6 00 02         [24]  644 	cjne	@r0,#0x00,00153$
      0021B2 08               [12]  645 	inc	r0
      0021B3 06               [12]  646 	inc	@r0
      0021B4                        647 00153$:
      0021B4 78 23            [12]  648 	mov	r0,#_x
      0021B6 C3               [12]  649 	clr	c
      0021B7 E6               [12]  650 	mov	a,@r0
      0021B8 94 20            [12]  651 	subb	a,#0x20
      0021BA 08               [12]  652 	inc	r0
      0021BB E6               [12]  653 	mov	a,@r0
      0021BC 64 80            [12]  654 	xrl	a,#0x80
      0021BE 94 80            [12]  655 	subb	a,#0x80
      0021C0 50 03            [24]  656 	jnc	00154$
      0021C2 02 21 40         [24]  657 	ljmp	00114$
      0021C5                        658 00154$:
                                    659 ;	life.c:69: return;
                                    660 ;	life.c:70: }
      0021C5 22               [24]  661 	ret
                                    662 ;------------------------------------------------------------
                                    663 ;Allocation info for local variables in function 'main'
                                    664 ;------------------------------------------------------------
                                    665 ;sloc0                     Allocated to stack - _bp +1
                                    666 ;sloc1                     Allocated to stack - _bp +2
                                    667 ;sloc2                     Allocated to stack - _bp +4
                                    668 ;sloc3                     Allocated to stack - _bp +6
                                    669 ;sloc4                     Allocated to stack - _bp +8
                                    670 ;sloc5                     Allocated to stack - _bp +10
                                    671 ;sloc6                     Allocated to stack - _bp +12
                                    672 ;------------------------------------------------------------
                                    673 ;	life.c:161: void main(void) {
                                    674 ;	-----------------------------------------
                                    675 ;	 function main
                                    676 ;	-----------------------------------------
      0021C6                        677 _main:
      0021C6 C0 10            [24]  678 	push	_bp
      0021C8 E5 81            [12]  679 	mov	a,sp
      0021CA F5 10            [12]  680 	mov	_bp,a
      0021CC 24 0D            [12]  681 	add	a,#0x0d
      0021CE F5 81            [12]  682 	mov	sp,a
                                    683 ;	life.c:162: IT0 = 1;
                                    684 ;	assignBit
      0021D0 D2 88            [12]  685 	setb	_IT0
                                    686 ;	life.c:163: IT1 = 1;
                                    687 ;	assignBit
      0021D2 D2 8A            [12]  688 	setb	_IT1
                                    689 ;	life.c:164: EX0 = 1;
                                    690 ;	assignBit
      0021D4 D2 A8            [12]  691 	setb	_EX0
                                    692 ;	life.c:165: EX1 = 1;
                                    693 ;	assignBit
      0021D6 D2 AA            [12]  694 	setb	_EX1
                                    695 ;	life.c:166: EA = 1;
                                    696 ;	assignBit
      0021D8 D2 AF            [12]  697 	setb	_EA
                                    698 ;	life.c:168: for (i0 = 0; !i0; ) {		
      0021DA 78 21            [12]  699 	mov	r0,#_i0
      0021DC 76 00            [12]  700 	mov	@r0,#0x00
      0021DE                        701 00204$:
                                    702 ;	life.c:169: printstr("\033[2J\033[mLIFE INIT\r\n");
      0021DE 90 2D 91         [24]  703 	mov	dptr,#___str_4
      0021E1 75 F0 80         [24]  704 	mov	b,#0x80
      0021E4 12 28 87         [24]  705 	lcall	_printstr
                                    706 ;	life.c:170: while (1) {
      0021E7                        707 00108$:
                                    708 ;	life.c:171: c = toupper(getchar());
      0021E7 12 28 60         [24]  709 	lcall	_getchar
      0021EA 12 2C 28         [24]  710 	lcall	_toupper
      0021ED AE 82            [24]  711 	mov	r6,dpl
      0021EF AF 83            [24]  712 	mov	r7,dph
      0021F1 78 29            [12]  713 	mov	r0,#_c
      0021F3 A6 06            [24]  714 	mov	@r0,ar6
      0021F5 08               [12]  715 	inc	r0
      0021F6 A6 07            [24]  716 	mov	@r0,ar7
                                    717 ;	life.c:172: if (i0 || (c == (int)'T')) goto terminate;
      0021F8 78 21            [12]  718 	mov	r0,#_i0
      0021FA E6               [12]  719 	mov	a,@r0
      0021FB 60 03            [24]  720 	jz	00333$
      0021FD 02 28 3F         [24]  721 	ljmp	00133$
      002200                        722 00333$:
      002200 BE 54 06         [24]  723 	cjne	r6,#0x54,00334$
      002203 BF 00 03         [24]  724 	cjne	r7,#0x00,00334$
      002206 02 28 3F         [24]  725 	ljmp	00133$
      002209                        726 00334$:
                                    727 ;	life.c:173: else if (c == (int)'L') break;
      002209 BE 4C DB         [24]  728 	cjne	r6,#0x4c,00108$
      00220C BF 00 D8         [24]  729 	cjne	r7,#0x00,00108$
                                    730 ;	life.c:176: reload:
      00220F                        731 00110$:
                                    732 ;	life.c:73: memset(u, 0, sizeof (u));
      00220F E4               [12]  733 	clr	a
      002210 C0 E0            [24]  734 	push	acc
      002212 74 08            [12]  735 	mov	a,#0x08
      002214 C0 E0            [24]  736 	push	acc
      002216 E4               [12]  737 	clr	a
      002217 C0 E0            [24]  738 	push	acc
      002219 90 48 00         [24]  739 	mov	dptr,#_u
      00221C 75 F0 00         [24]  740 	mov	b,#0x00
      00221F 12 2B BE         [24]  741 	lcall	_memset
      002222 15 81            [12]  742 	dec	sp
      002224 15 81            [12]  743 	dec	sp
      002226 15 81            [12]  744 	dec	sp
                                    745 ;	life.c:74: memset(pu, 0, sizeof (pu));
      002228 E4               [12]  746 	clr	a
      002229 C0 E0            [24]  747 	push	acc
      00222B 74 08            [12]  748 	mov	a,#0x08
      00222D C0 E0            [24]  749 	push	acc
      00222F E4               [12]  750 	clr	a
      002230 C0 E0            [24]  751 	push	acc
      002232 90 40 00         [24]  752 	mov	dptr,#_pu
      002235 75 F0 00         [24]  753 	mov	b,#0x00
      002238 12 2B BE         [24]  754 	lcall	_memset
      00223B 15 81            [12]  755 	dec	sp
      00223D 15 81            [12]  756 	dec	sp
      00223F 15 81            [12]  757 	dec	sp
                                    758 ;	life.c:80: j = 0;
      002241 78 27            [12]  759 	mov	r0,#_j
      002243 E4               [12]  760 	clr	a
      002244 F6               [12]  761 	mov	@r0,a
      002245 08               [12]  762 	inc	r0
      002246 F6               [12]  763 	mov	@r0,a
                                    764 ;	life.c:82: printstr("LOAD <");
      002247 90 2D 86         [24]  765 	mov	dptr,#___str_2
      00224A 75 F0 80         [24]  766 	mov	b,#0x80
      00224D 12 28 87         [24]  767 	lcall	_printstr
                                    768 ;	life.c:84: for (y = 0; y < H; y++) {
      002250 78 25            [12]  769 	mov	r0,#_y
      002252 E4               [12]  770 	clr	a
      002253 F6               [12]  771 	mov	@r0,a
      002254 08               [12]  772 	inc	r0
      002255 F6               [12]  773 	mov	@r0,a
      002256                        774 00194$:
                                    775 ;	life.c:85: for (x = 0; x < W; x++) {
      002256 78 23            [12]  776 	mov	r0,#_x
      002258 E4               [12]  777 	clr	a
      002259 F6               [12]  778 	mov	@r0,a
      00225A 08               [12]  779 	inc	r0
      00225B F6               [12]  780 	mov	@r0,a
                                    781 ;	life.c:86: while (1) {
      00225C                        782 00147$:
                                    783 ;	life.c:87: c = toupper(getchar());
      00225C 12 28 60         [24]  784 	lcall	_getchar
      00225F 12 2C 28         [24]  785 	lcall	_toupper
      002262 AE 82            [24]  786 	mov	r6,dpl
      002264 AF 83            [24]  787 	mov	r7,dph
      002266 78 29            [12]  788 	mov	r0,#_c
      002268 A6 06            [24]  789 	mov	@r0,ar6
      00226A 08               [12]  790 	inc	r0
      00226B A6 07            [24]  791 	mov	@r0,ar7
                                    792 ;	life.c:88: if (c == (int)'0') {
      00226D BE 30 37         [24]  793 	cjne	r6,#0x30,00145$
      002270 BF 00 34         [24]  794 	cjne	r7,#0x00,00145$
                                    795 ;	life.c:89: u[A2D(W, y, x)] = 0;
      002273 78 25            [12]  796 	mov	r0,#_y
      002275 86 04            [24]  797 	mov	ar4,@r0
      002277 08               [12]  798 	inc	r0
      002278 E6               [12]  799 	mov	a,@r0
      002279 C4               [12]  800 	swap	a
      00227A 23               [12]  801 	rl	a
      00227B 54 E0            [12]  802 	anl	a,#0xe0
      00227D CC               [12]  803 	xch	a,r4
      00227E C4               [12]  804 	swap	a
      00227F 23               [12]  805 	rl	a
      002280 CC               [12]  806 	xch	a,r4
      002281 6C               [12]  807 	xrl	a,r4
      002282 CC               [12]  808 	xch	a,r4
      002283 54 E0            [12]  809 	anl	a,#0xe0
      002285 CC               [12]  810 	xch	a,r4
      002286 6C               [12]  811 	xrl	a,r4
      002287 FD               [12]  812 	mov	r5,a
      002288 78 23            [12]  813 	mov	r0,#_x
      00228A E6               [12]  814 	mov	a,@r0
      00228B 2C               [12]  815 	add	a,r4
      00228C FC               [12]  816 	mov	r4,a
      00228D 08               [12]  817 	inc	r0
      00228E E6               [12]  818 	mov	a,@r0
      00228F 3D               [12]  819 	addc	a,r5
      002290 FD               [12]  820 	mov	r5,a
      002291 EC               [12]  821 	mov	a,r4
      002292 24 00            [12]  822 	add	a,#_u
      002294 F5 82            [12]  823 	mov	dpl,a
      002296 ED               [12]  824 	mov	a,r5
      002297 34 48            [12]  825 	addc	a,#(_u >> 8)
      002299 F5 83            [12]  826 	mov	dph,a
      00229B E4               [12]  827 	clr	a
      00229C F0               [24]  828 	movx	@dptr,a
                                    829 ;	life.c:90: j++;
      00229D 78 27            [12]  830 	mov	r0,#_j
      00229F 06               [12]  831 	inc	@r0
      0022A0 B6 00 02         [24]  832 	cjne	@r0,#0x00,00339$
      0022A3 08               [12]  833 	inc	r0
      0022A4 06               [12]  834 	inc	@r0
      0022A5                        835 00339$:
                                    836 ;	life.c:91: break;
      0022A5 80 4E            [24]  837 	sjmp	00150$
      0022A7                        838 00145$:
                                    839 ;	life.c:92: } else if (c == (int)'1') {
      0022A7 BE 31 38         [24]  840 	cjne	r6,#0x31,00143$
      0022AA BF 00 35         [24]  841 	cjne	r7,#0x00,00143$
                                    842 ;	life.c:93: u[A2D(W, y, x)] = 1;
      0022AD 78 25            [12]  843 	mov	r0,#_y
      0022AF 86 04            [24]  844 	mov	ar4,@r0
      0022B1 08               [12]  845 	inc	r0
      0022B2 E6               [12]  846 	mov	a,@r0
      0022B3 C4               [12]  847 	swap	a
      0022B4 23               [12]  848 	rl	a
      0022B5 54 E0            [12]  849 	anl	a,#0xe0
      0022B7 CC               [12]  850 	xch	a,r4
      0022B8 C4               [12]  851 	swap	a
      0022B9 23               [12]  852 	rl	a
      0022BA CC               [12]  853 	xch	a,r4
      0022BB 6C               [12]  854 	xrl	a,r4
      0022BC CC               [12]  855 	xch	a,r4
      0022BD 54 E0            [12]  856 	anl	a,#0xe0
      0022BF CC               [12]  857 	xch	a,r4
      0022C0 6C               [12]  858 	xrl	a,r4
      0022C1 FD               [12]  859 	mov	r5,a
      0022C2 78 23            [12]  860 	mov	r0,#_x
      0022C4 E6               [12]  861 	mov	a,@r0
      0022C5 2C               [12]  862 	add	a,r4
      0022C6 FC               [12]  863 	mov	r4,a
      0022C7 08               [12]  864 	inc	r0
      0022C8 E6               [12]  865 	mov	a,@r0
      0022C9 3D               [12]  866 	addc	a,r5
      0022CA FD               [12]  867 	mov	r5,a
      0022CB EC               [12]  868 	mov	a,r4
      0022CC 24 00            [12]  869 	add	a,#_u
      0022CE F5 82            [12]  870 	mov	dpl,a
      0022D0 ED               [12]  871 	mov	a,r5
      0022D1 34 48            [12]  872 	addc	a,#(_u >> 8)
      0022D3 F5 83            [12]  873 	mov	dph,a
      0022D5 74 01            [12]  874 	mov	a,#0x01
      0022D7 F0               [24]  875 	movx	@dptr,a
                                    876 ;	life.c:94: j++;
      0022D8 78 27            [12]  877 	mov	r0,#_j
      0022DA 06               [12]  878 	inc	@r0
      0022DB B6 00 02         [24]  879 	cjne	@r0,#0x00,00342$
      0022DE 08               [12]  880 	inc	r0
      0022DF 06               [12]  881 	inc	@r0
      0022E0                        882 00342$:
                                    883 ;	life.c:95: break;
      0022E0 80 13            [24]  884 	sjmp	00150$
      0022E2                        885 00143$:
                                    886 ;	life.c:96: } else if (c == (int)'S') goto br_inner;
      0022E2 BE 53 05         [24]  887 	cjne	r6,#0x53,00343$
      0022E5 BF 00 02         [24]  888 	cjne	r7,#0x00,00343$
      0022E8 80 24            [24]  889 	sjmp	00195$
      0022EA                        890 00343$:
                                    891 ;	life.c:97: else if (c == (int)'#') goto out;
      0022EA BE 23 05         [24]  892 	cjne	r6,#0x23,00344$
      0022ED BF 00 02         [24]  893 	cjne	r7,#0x00,00344$
      0022F0 80 35            [24]  894 	sjmp	00160$
      0022F2                        895 00344$:
      0022F2 02 22 5C         [24]  896 	ljmp	00147$
                                    897 ;	life.c:101: break;
      0022F5                        898 00150$:
                                    899 ;	life.c:85: for (x = 0; x < W; x++) {
      0022F5 78 23            [12]  900 	mov	r0,#_x
      0022F7 06               [12]  901 	inc	@r0
      0022F8 B6 00 02         [24]  902 	cjne	@r0,#0x00,00345$
      0022FB 08               [12]  903 	inc	r0
      0022FC 06               [12]  904 	inc	@r0
      0022FD                        905 00345$:
      0022FD 78 23            [12]  906 	mov	r0,#_x
      0022FF C3               [12]  907 	clr	c
      002300 E6               [12]  908 	mov	a,@r0
      002301 94 20            [12]  909 	subb	a,#0x20
      002303 08               [12]  910 	inc	r0
      002304 E6               [12]  911 	mov	a,@r0
      002305 64 80            [12]  912 	xrl	a,#0x80
      002307 94 80            [12]  913 	subb	a,#0x80
      002309 50 03            [24]  914 	jnc	00346$
      00230B 02 22 5C         [24]  915 	ljmp	00147$
      00230E                        916 00346$:
      00230E                        917 00195$:
                                    918 ;	life.c:84: for (y = 0; y < H; y++) {
      00230E 78 25            [12]  919 	mov	r0,#_y
      002310 06               [12]  920 	inc	@r0
      002311 B6 00 02         [24]  921 	cjne	@r0,#0x00,00347$
      002314 08               [12]  922 	inc	r0
      002315 06               [12]  923 	inc	@r0
      002316                        924 00347$:
      002316 78 25            [12]  925 	mov	r0,#_y
      002318 C3               [12]  926 	clr	c
      002319 E6               [12]  927 	mov	a,@r0
      00231A 94 40            [12]  928 	subb	a,#0x40
      00231C 08               [12]  929 	inc	r0
      00231D E6               [12]  930 	mov	a,@r0
      00231E 64 80            [12]  931 	xrl	a,#0x80
      002320 94 80            [12]  932 	subb	a,#0x80
      002322 50 03            [24]  933 	jnc	00348$
      002324 02 22 56         [24]  934 	ljmp	00194$
      002327                        935 00348$:
                                    936 ;	life.c:105: out:
      002327                        937 00160$:
                                    938 ;	life.c:106: if (c != (int)'#')
      002327 BE 23 05         [24]  939 	cjne	r6,#0x23,00349$
      00232A BF 00 02         [24]  940 	cjne	r7,#0x00,00349$
      00232D 80 14            [24]  941 	sjmp	00159$
      00232F                        942 00349$:
                                    943 ;	life.c:107: while (1) {
      00232F                        944 00156$:
                                    945 ;	life.c:108: c = getchar();
      00232F 12 28 60         [24]  946 	lcall	_getchar
      002332 AE 82            [24]  947 	mov	r6,dpl
      002334 AF 83            [24]  948 	mov	r7,dph
      002336 78 29            [12]  949 	mov	r0,#_c
      002338 A6 06            [24]  950 	mov	@r0,ar6
      00233A 08               [12]  951 	inc	r0
      00233B A6 07            [24]  952 	mov	@r0,ar7
                                    953 ;	life.c:109: if (c == (int)'#') break;
      00233D BE 23 EF         [24]  954 	cjne	r6,#0x23,00156$
      002340 BF 00 EC         [24]  955 	cjne	r7,#0x00,00156$
      002343                        956 00159$:
                                    957 ;	life.c:111: print16x(j);
      002343 78 27            [12]  958 	mov	r0,#_j
      002345 86 82            [24]  959 	mov	dpl,@r0
      002347 08               [12]  960 	inc	r0
      002348 86 83            [24]  961 	mov	dph,@r0
      00234A 12 29 9F         [24]  962 	lcall	_print16x
                                    963 ;	life.c:112: printstr(">\r\n");
      00234D 90 2D 8D         [24]  964 	mov	dptr,#___str_3
      002350 75 F0 80         [24]  965 	mov	b,#0x80
      002353 12 28 87         [24]  966 	lcall	_printstr
                                    967 ;	life.c:179: show(0);
      002356 75 82 00         [24]  968 	mov	dpl,#0x00
      002359 12 20 DD         [24]  969 	lcall	_show
                                    970 ;	life.c:181: printstr("READY\r\n");
      00235C 90 2D A4         [24]  971 	mov	dptr,#___str_5
      00235F 75 F0 80         [24]  972 	mov	b,#0x80
      002362 12 28 87         [24]  973 	lcall	_printstr
                                    974 ;	life.c:182: while (1) {
      002365                        975 00121$:
                                    976 ;	life.c:183: c = toupper(getchar());
      002365 12 28 60         [24]  977 	lcall	_getchar
      002368 12 2C 28         [24]  978 	lcall	_toupper
      00236B AE 82            [24]  979 	mov	r6,dpl
      00236D AF 83            [24]  980 	mov	r7,dph
      00236F 78 29            [12]  981 	mov	r0,#_c
      002371 A6 06            [24]  982 	mov	@r0,ar6
      002373 08               [12]  983 	inc	r0
      002374 A6 07            [24]  984 	mov	@r0,ar7
                                    985 ;	life.c:184: if (i0 || (c == (int)'T')) goto terminate;
      002376 78 21            [12]  986 	mov	r0,#_i0
      002378 E6               [12]  987 	mov	a,@r0
      002379 60 03            [24]  988 	jz	00352$
      00237B 02 28 3F         [24]  989 	ljmp	00133$
      00237E                        990 00352$:
      00237E BE 54 06         [24]  991 	cjne	r6,#0x54,00353$
      002381 BF 00 03         [24]  992 	cjne	r7,#0x00,00353$
      002384 02 28 3F         [24]  993 	ljmp	00133$
      002387                        994 00353$:
                                    995 ;	life.c:185: else if (c == (int)'L') goto reload;
      002387 BE 4C 06         [24]  996 	cjne	r6,#0x4c,00354$
      00238A BF 00 03         [24]  997 	cjne	r7,#0x00,00354$
      00238D 02 22 0F         [24]  998 	ljmp	00110$
      002390                        999 00354$:
                                   1000 ;	life.c:186: else if (c == (int)'S') break;
      002390 BE 53 D2         [24] 1001 	cjne	r6,#0x53,00121$
      002393 BF 00 CF         [24] 1002 	cjne	r7,#0x00,00121$
                                   1003 ;	life.c:31: generation[0] = 0;
      002396 78 33            [12] 1004 	mov	r0,#_generation
      002398 76 00            [12] 1005 	mov	@r0,#0x00
      00239A 08               [12] 1006 	inc	r0
      00239B 76 00            [12] 1007 	mov	@r0,#0x00
                                   1008 ;	life.c:32: generation[1] = 0;
      00239D 78 35            [12] 1009 	mov	r0,#(_generation + 0x0002)
      00239F 76 00            [12] 1010 	mov	@r0,#0x00
      0023A1 08               [12] 1011 	inc	r0
      0023A2 76 00            [12] 1012 	mov	@r0,#0x00
                                   1013 ;	life.c:191: for (i1 = 0; !i0 && !i1; ) {
      0023A4 78 22            [12] 1014 	mov	r0,#_i1
      0023A6 76 00            [12] 1015 	mov	@r0,#0x00
      0023A8                       1016 00202$:
      0023A8 78 21            [12] 1017 	mov	r0,#_i0
      0023AA E6               [12] 1018 	mov	a,@r0
      0023AB 60 03            [24] 1019 	jz	00357$
      0023AD 02 28 26         [24] 1020 	ljmp	00129$
      0023B0                       1021 00357$:
      0023B0 78 22            [12] 1022 	mov	r0,#_i1
      0023B2 E6               [12] 1023 	mov	a,@r0
      0023B3 60 03            [24] 1024 	jz	00358$
      0023B5 02 28 26         [24] 1025 	ljmp	00129$
      0023B8                       1026 00358$:
                                   1027 ;	life.c:192: show(1);
      0023B8 75 82 01         [24] 1028 	mov	dpl,#0x01
      0023BB 12 20 DD         [24] 1029 	lcall	_show
                                   1030 ;	life.c:120: fixed = 0;
      0023BE 78 2D            [12] 1031 	mov	r0,#_fixed
      0023C0 76 00            [12] 1032 	mov	@r0,#0x00
                                   1033 ;	life.c:121: cycle2 = 0;
      0023C2 78 2E            [12] 1034 	mov	r0,#_cycle2
      0023C4 76 00            [12] 1035 	mov	@r0,#0x00
                                   1036 ;	life.c:122: bstep = 0;
      0023C6 78 2B            [12] 1037 	mov	r0,#_bstep
      0023C8 76 00            [12] 1038 	mov	@r0,#0x00
                                   1039 ;	life.c:124: for (y = 0; y < H; y++) {
      0023CA 78 25            [12] 1040 	mov	r0,#_y
      0023CC E4               [12] 1041 	clr	a
      0023CD F6               [12] 1042 	mov	@r0,a
      0023CE 08               [12] 1043 	inc	r0
      0023CF F6               [12] 1044 	mov	@r0,a
      0023D0                       1045 00198$:
                                   1046 ;	life.c:125: putchar(busy[bstep]); putchar('\r');
      0023D0 78 2B            [12] 1047 	mov	r0,#_bstep
      0023D2 E6               [12] 1048 	mov	a,@r0
      0023D3 24 37            [12] 1049 	add	a,#_busy
      0023D5 F9               [12] 1050 	mov	r1,a
      0023D6 87 07            [24] 1051 	mov	ar7,@r1
      0023D8 7E 00            [12] 1052 	mov	r6,#0x00
      0023DA 8F 82            [24] 1053 	mov	dpl,r7
      0023DC 8E 83            [24] 1054 	mov	dph,r6
      0023DE 12 28 56         [24] 1055 	lcall	_putchar
      0023E1 90 00 0D         [24] 1056 	mov	dptr,#0x000d
      0023E4 12 28 56         [24] 1057 	lcall	_putchar
                                   1058 ;	life.c:126: bstep = (bstep + 1) & 3;
      0023E7 78 2B            [12] 1059 	mov	r0,#_bstep
      0023E9 86 07            [24] 1060 	mov	ar7,@r0
      0023EB 0F               [12] 1061 	inc	r7
      0023EC 78 2B            [12] 1062 	mov	r0,#_bstep
      0023EE 74 03            [12] 1063 	mov	a,#0x03
      0023F0 5F               [12] 1064 	anl	a,r7
      0023F1 F6               [12] 1065 	mov	@r0,a
                                   1066 ;	life.c:127: for (x = 0; x < W; x++) {
      0023F2 78 23            [12] 1067 	mov	r0,#_x
      0023F4 E4               [12] 1068 	clr	a
      0023F5 F6               [12] 1069 	mov	@r0,a
      0023F6 08               [12] 1070 	inc	r0
      0023F7 F6               [12] 1071 	mov	@r0,a
      0023F8                       1072 00196$:
                                   1073 ;	life.c:128: n = -u[A2D(W, y, x)];
      0023F8 78 25            [12] 1074 	mov	r0,#_y
      0023FA E5 10            [12] 1075 	mov	a,_bp
      0023FC 24 04            [12] 1076 	add	a,#0x04
      0023FE F9               [12] 1077 	mov	r1,a
      0023FF E6               [12] 1078 	mov	a,@r0
      002400 F7               [12] 1079 	mov	@r1,a
      002401 08               [12] 1080 	inc	r0
      002402 E6               [12] 1081 	mov	a,@r0
      002403 C4               [12] 1082 	swap	a
      002404 23               [12] 1083 	rl	a
      002405 54 E0            [12] 1084 	anl	a,#0xe0
      002407 C7               [12] 1085 	xch	a,@r1
      002408 C4               [12] 1086 	swap	a
      002409 23               [12] 1087 	rl	a
      00240A C7               [12] 1088 	xch	a,@r1
      00240B 67               [12] 1089 	xrl	a,@r1
      00240C C7               [12] 1090 	xch	a,@r1
      00240D 54 E0            [12] 1091 	anl	a,#0xe0
      00240F C7               [12] 1092 	xch	a,@r1
      002410 67               [12] 1093 	xrl	a,@r1
      002411 09               [12] 1094 	inc	r1
      002412 F7               [12] 1095 	mov	@r1,a
      002413 E5 10            [12] 1096 	mov	a,_bp
      002415 24 04            [12] 1097 	add	a,#0x04
      002417 F8               [12] 1098 	mov	r0,a
      002418 79 23            [12] 1099 	mov	r1,#_x
      00241A E7               [12] 1100 	mov	a,@r1
      00241B 26               [12] 1101 	add	a,@r0
      00241C C0 E0            [24] 1102 	push	acc
      00241E 09               [12] 1103 	inc	r1
      00241F E7               [12] 1104 	mov	a,@r1
      002420 08               [12] 1105 	inc	r0
      002421 36               [12] 1106 	addc	a,@r0
      002422 C0 E0            [24] 1107 	push	acc
      002424 E5 10            [12] 1108 	mov	a,_bp
      002426 24 03            [12] 1109 	add	a,#0x03
      002428 F8               [12] 1110 	mov	r0,a
      002429 D0 E0            [24] 1111 	pop	acc
      00242B F6               [12] 1112 	mov	@r0,a
      00242C 18               [12] 1113 	dec	r0
      00242D D0 E0            [24] 1114 	pop	acc
      00242F F6               [12] 1115 	mov	@r0,a
      002430 A8 10            [24] 1116 	mov	r0,_bp
      002432 08               [12] 1117 	inc	r0
      002433 08               [12] 1118 	inc	r0
      002434 E6               [12] 1119 	mov	a,@r0
      002435 24 00            [12] 1120 	add	a,#_u
      002437 F5 82            [12] 1121 	mov	dpl,a
      002439 08               [12] 1122 	inc	r0
      00243A E6               [12] 1123 	mov	a,@r0
      00243B 34 48            [12] 1124 	addc	a,#(_u >> 8)
      00243D F5 83            [12] 1125 	mov	dph,a
      00243F E0               [24] 1126 	movx	a,@dptr
      002440 FB               [12] 1127 	mov	r3,a
      002441 A8 10            [24] 1128 	mov	r0,_bp
      002443 08               [12] 1129 	inc	r0
      002444 C3               [12] 1130 	clr	c
      002445 E4               [12] 1131 	clr	a
      002446 9B               [12] 1132 	subb	a,r3
      002447 F6               [12] 1133 	mov	@r0,a
                                   1134 ;	life.c:135: UPDN(-1, -1);
      002448 78 25            [12] 1135 	mov	r0,#_y
      00244A 74 FF            [12] 1136 	mov	a,#0xff
      00244C 26               [12] 1137 	add	a,@r0
      00244D FA               [12] 1138 	mov	r2,a
      00244E 74 FF            [12] 1139 	mov	a,#0xff
      002450 08               [12] 1140 	inc	r0
      002451 36               [12] 1141 	addc	a,@r0
      002452 FB               [12] 1142 	mov	r3,a
      002453 74 40            [12] 1143 	mov	a,#0x40
      002455 2A               [12] 1144 	add	a,r2
      002456 FA               [12] 1145 	mov	r2,a
      002457 E4               [12] 1146 	clr	a
      002458 3B               [12] 1147 	addc	a,r3
      002459 FB               [12] 1148 	mov	r3,a
      00245A 74 40            [12] 1149 	mov	a,#0x40
      00245C C0 E0            [24] 1150 	push	acc
      00245E E4               [12] 1151 	clr	a
      00245F C0 E0            [24] 1152 	push	acc
      002461 8A 82            [24] 1153 	mov	dpl,r2
      002463 8B 83            [24] 1154 	mov	dph,r3
      002465 12 2C 6B         [24] 1155 	lcall	__modsint
      002468 AA 82            [24] 1156 	mov	r2,dpl
      00246A AB 83            [24] 1157 	mov	r3,dph
      00246C 15 81            [12] 1158 	dec	sp
      00246E 15 81            [12] 1159 	dec	sp
      002470 EB               [12] 1160 	mov	a,r3
      002471 C4               [12] 1161 	swap	a
      002472 23               [12] 1162 	rl	a
      002473 54 E0            [12] 1163 	anl	a,#0xe0
      002475 CA               [12] 1164 	xch	a,r2
      002476 C4               [12] 1165 	swap	a
      002477 23               [12] 1166 	rl	a
      002478 CA               [12] 1167 	xch	a,r2
      002479 6A               [12] 1168 	xrl	a,r2
      00247A CA               [12] 1169 	xch	a,r2
      00247B 54 E0            [12] 1170 	anl	a,#0xe0
      00247D CA               [12] 1171 	xch	a,r2
      00247E 6A               [12] 1172 	xrl	a,r2
      00247F FB               [12] 1173 	mov	r3,a
      002480 78 23            [12] 1174 	mov	r0,#_x
      002482 74 FF            [12] 1175 	mov	a,#0xff
      002484 26               [12] 1176 	add	a,@r0
      002485 FC               [12] 1177 	mov	r4,a
      002486 74 FF            [12] 1178 	mov	a,#0xff
      002488 08               [12] 1179 	inc	r0
      002489 36               [12] 1180 	addc	a,@r0
      00248A FD               [12] 1181 	mov	r5,a
      00248B 74 20            [12] 1182 	mov	a,#0x20
      00248D 2C               [12] 1183 	add	a,r4
      00248E FC               [12] 1184 	mov	r4,a
      00248F E4               [12] 1185 	clr	a
      002490 3D               [12] 1186 	addc	a,r5
      002491 FD               [12] 1187 	mov	r5,a
      002492 C0 03            [24] 1188 	push	ar3
      002494 C0 02            [24] 1189 	push	ar2
      002496 74 20            [12] 1190 	mov	a,#0x20
      002498 C0 E0            [24] 1191 	push	acc
      00249A E4               [12] 1192 	clr	a
      00249B C0 E0            [24] 1193 	push	acc
      00249D 8C 82            [24] 1194 	mov	dpl,r4
      00249F 8D 83            [24] 1195 	mov	dph,r5
      0024A1 12 2C 6B         [24] 1196 	lcall	__modsint
      0024A4 AC 82            [24] 1197 	mov	r4,dpl
      0024A6 AD 83            [24] 1198 	mov	r5,dph
      0024A8 15 81            [12] 1199 	dec	sp
      0024AA 15 81            [12] 1200 	dec	sp
      0024AC D0 02            [24] 1201 	pop	ar2
      0024AE D0 03            [24] 1202 	pop	ar3
      0024B0 EC               [12] 1203 	mov	a,r4
      0024B1 2A               [12] 1204 	add	a,r2
      0024B2 FE               [12] 1205 	mov	r6,a
      0024B3 ED               [12] 1206 	mov	a,r5
      0024B4 3B               [12] 1207 	addc	a,r3
      0024B5 FF               [12] 1208 	mov	r7,a
      0024B6 EE               [12] 1209 	mov	a,r6
      0024B7 24 00            [12] 1210 	add	a,#_u
      0024B9 F5 82            [12] 1211 	mov	dpl,a
      0024BB EF               [12] 1212 	mov	a,r7
      0024BC 34 48            [12] 1213 	addc	a,#(_u >> 8)
      0024BE F5 83            [12] 1214 	mov	dph,a
      0024C0 E0               [24] 1215 	movx	a,@dptr
      0024C1 FF               [12] 1216 	mov	r7,a
      0024C2 A8 10            [24] 1217 	mov	r0,_bp
      0024C4 08               [12] 1218 	inc	r0
      0024C5 EF               [12] 1219 	mov	a,r7
      0024C6 26               [12] 1220 	add	a,@r0
      0024C7 F6               [12] 1221 	mov	@r0,a
                                   1222 ;	life.c:136: UPDN(-1, 0);
      0024C8 78 23            [12] 1223 	mov	r0,#_x
      0024CA E5 10            [12] 1224 	mov	a,_bp
      0024CC 24 06            [12] 1225 	add	a,#0x06
      0024CE F9               [12] 1226 	mov	r1,a
      0024CF E6               [12] 1227 	mov	a,@r0
      0024D0 F7               [12] 1228 	mov	@r1,a
      0024D1 08               [12] 1229 	inc	r0
      0024D2 09               [12] 1230 	inc	r1
      0024D3 E6               [12] 1231 	mov	a,@r0
      0024D4 F7               [12] 1232 	mov	@r1,a
      0024D5 E5 10            [12] 1233 	mov	a,_bp
      0024D7 24 06            [12] 1234 	add	a,#0x06
      0024D9 F8               [12] 1235 	mov	r0,a
      0024DA 74 20            [12] 1236 	mov	a,#0x20
      0024DC 26               [12] 1237 	add	a,@r0
      0024DD FE               [12] 1238 	mov	r6,a
      0024DE E4               [12] 1239 	clr	a
      0024DF 08               [12] 1240 	inc	r0
      0024E0 36               [12] 1241 	addc	a,@r0
      0024E1 FF               [12] 1242 	mov	r7,a
      0024E2 C0 05            [24] 1243 	push	ar5
      0024E4 C0 04            [24] 1244 	push	ar4
      0024E6 C0 03            [24] 1245 	push	ar3
      0024E8 C0 02            [24] 1246 	push	ar2
      0024EA 74 20            [12] 1247 	mov	a,#0x20
      0024EC C0 E0            [24] 1248 	push	acc
      0024EE E4               [12] 1249 	clr	a
      0024EF C0 E0            [24] 1250 	push	acc
      0024F1 8E 82            [24] 1251 	mov	dpl,r6
      0024F3 8F 83            [24] 1252 	mov	dph,r7
      0024F5 12 2C 6B         [24] 1253 	lcall	__modsint
      0024F8 C8               [12] 1254 	xch	a,r0
      0024F9 E5 10            [12] 1255 	mov	a,_bp
      0024FB 24 08            [12] 1256 	add	a,#0x08
      0024FD C8               [12] 1257 	xch	a,r0
      0024FE A6 82            [24] 1258 	mov	@r0,dpl
      002500 08               [12] 1259 	inc	r0
      002501 A6 83            [24] 1260 	mov	@r0,dph
      002503 15 81            [12] 1261 	dec	sp
      002505 15 81            [12] 1262 	dec	sp
      002507 D0 02            [24] 1263 	pop	ar2
      002509 D0 03            [24] 1264 	pop	ar3
      00250B E5 10            [12] 1265 	mov	a,_bp
      00250D 24 08            [12] 1266 	add	a,#0x08
      00250F F8               [12] 1267 	mov	r0,a
      002510 E6               [12] 1268 	mov	a,@r0
      002511 2A               [12] 1269 	add	a,r2
      002512 FE               [12] 1270 	mov	r6,a
      002513 08               [12] 1271 	inc	r0
      002514 E6               [12] 1272 	mov	a,@r0
      002515 3B               [12] 1273 	addc	a,r3
      002516 FF               [12] 1274 	mov	r7,a
      002517 EE               [12] 1275 	mov	a,r6
      002518 24 00            [12] 1276 	add	a,#_u
      00251A F5 82            [12] 1277 	mov	dpl,a
      00251C EF               [12] 1278 	mov	a,r7
      00251D 34 48            [12] 1279 	addc	a,#(_u >> 8)
      00251F F5 83            [12] 1280 	mov	dph,a
      002521 E0               [24] 1281 	movx	a,@dptr
      002522 FF               [12] 1282 	mov	r7,a
      002523 A8 10            [24] 1283 	mov	r0,_bp
      002525 08               [12] 1284 	inc	r0
      002526 EF               [12] 1285 	mov	a,r7
      002527 26               [12] 1286 	add	a,@r0
      002528 F6               [12] 1287 	mov	@r0,a
                                   1288 ;	life.c:137: UPDN(-1, 1);
      002529 E5 10            [12] 1289 	mov	a,_bp
      00252B 24 06            [12] 1290 	add	a,#0x06
      00252D F8               [12] 1291 	mov	r0,a
      00252E 74 21            [12] 1292 	mov	a,#0x21
      002530 26               [12] 1293 	add	a,@r0
      002531 FE               [12] 1294 	mov	r6,a
      002532 E4               [12] 1295 	clr	a
      002533 08               [12] 1296 	inc	r0
      002534 36               [12] 1297 	addc	a,@r0
      002535 FF               [12] 1298 	mov	r7,a
      002536 C0 03            [24] 1299 	push	ar3
      002538 C0 02            [24] 1300 	push	ar2
      00253A 74 20            [12] 1301 	mov	a,#0x20
      00253C C0 E0            [24] 1302 	push	acc
      00253E E4               [12] 1303 	clr	a
      00253F C0 E0            [24] 1304 	push	acc
      002541 8E 82            [24] 1305 	mov	dpl,r6
      002543 8F 83            [24] 1306 	mov	dph,r7
      002545 12 2C 6B         [24] 1307 	lcall	__modsint
      002548 AE 82            [24] 1308 	mov	r6,dpl
      00254A AF 83            [24] 1309 	mov	r7,dph
      00254C 15 81            [12] 1310 	dec	sp
      00254E 15 81            [12] 1311 	dec	sp
      002550 D0 02            [24] 1312 	pop	ar2
      002552 D0 03            [24] 1313 	pop	ar3
      002554 D0 04            [24] 1314 	pop	ar4
      002556 D0 05            [24] 1315 	pop	ar5
      002558 EE               [12] 1316 	mov	a,r6
      002559 2A               [12] 1317 	add	a,r2
      00255A FA               [12] 1318 	mov	r2,a
      00255B EF               [12] 1319 	mov	a,r7
      00255C 3B               [12] 1320 	addc	a,r3
      00255D FB               [12] 1321 	mov	r3,a
      00255E EA               [12] 1322 	mov	a,r2
      00255F 24 00            [12] 1323 	add	a,#_u
      002561 F5 82            [12] 1324 	mov	dpl,a
      002563 EB               [12] 1325 	mov	a,r3
      002564 34 48            [12] 1326 	addc	a,#(_u >> 8)
      002566 F5 83            [12] 1327 	mov	dph,a
      002568 E0               [24] 1328 	movx	a,@dptr
      002569 FB               [12] 1329 	mov	r3,a
      00256A A8 10            [24] 1330 	mov	r0,_bp
      00256C 08               [12] 1331 	inc	r0
      00256D EB               [12] 1332 	mov	a,r3
      00256E 26               [12] 1333 	add	a,@r0
      00256F F6               [12] 1334 	mov	@r0,a
                                   1335 ;	life.c:138: UPDN(0, -1);
      002570 78 25            [12] 1336 	mov	r0,#_y
      002572 E5 10            [12] 1337 	mov	a,_bp
      002574 24 0A            [12] 1338 	add	a,#0x0a
      002576 F9               [12] 1339 	mov	r1,a
      002577 E6               [12] 1340 	mov	a,@r0
      002578 F7               [12] 1341 	mov	@r1,a
      002579 08               [12] 1342 	inc	r0
      00257A 09               [12] 1343 	inc	r1
      00257B E6               [12] 1344 	mov	a,@r0
      00257C F7               [12] 1345 	mov	@r1,a
      00257D E5 10            [12] 1346 	mov	a,_bp
      00257F 24 0A            [12] 1347 	add	a,#0x0a
      002581 F8               [12] 1348 	mov	r0,a
      002582 74 40            [12] 1349 	mov	a,#0x40
      002584 26               [12] 1350 	add	a,@r0
      002585 FA               [12] 1351 	mov	r2,a
      002586 E4               [12] 1352 	clr	a
      002587 08               [12] 1353 	inc	r0
      002588 36               [12] 1354 	addc	a,@r0
      002589 FB               [12] 1355 	mov	r3,a
      00258A C0 07            [24] 1356 	push	ar7
      00258C C0 06            [24] 1357 	push	ar6
      00258E C0 05            [24] 1358 	push	ar5
      002590 C0 04            [24] 1359 	push	ar4
      002592 74 40            [12] 1360 	mov	a,#0x40
      002594 C0 E0            [24] 1361 	push	acc
      002596 E4               [12] 1362 	clr	a
      002597 C0 E0            [24] 1363 	push	acc
      002599 8A 82            [24] 1364 	mov	dpl,r2
      00259B 8B 83            [24] 1365 	mov	dph,r3
      00259D 12 2C 6B         [24] 1366 	lcall	__modsint
      0025A0 AA 82            [24] 1367 	mov	r2,dpl
      0025A2 AB 83            [24] 1368 	mov	r3,dph
      0025A4 15 81            [12] 1369 	dec	sp
      0025A6 15 81            [12] 1370 	dec	sp
      0025A8 D0 04            [24] 1371 	pop	ar4
      0025AA D0 05            [24] 1372 	pop	ar5
      0025AC D0 06            [24] 1373 	pop	ar6
      0025AE D0 07            [24] 1374 	pop	ar7
      0025B0 E5 10            [12] 1375 	mov	a,_bp
      0025B2 24 0C            [12] 1376 	add	a,#0x0c
      0025B4 F8               [12] 1377 	mov	r0,a
      0025B5 A6 02            [24] 1378 	mov	@r0,ar2
      0025B7 EB               [12] 1379 	mov	a,r3
      0025B8 C4               [12] 1380 	swap	a
      0025B9 23               [12] 1381 	rl	a
      0025BA 54 E0            [12] 1382 	anl	a,#0xe0
      0025BC C6               [12] 1383 	xch	a,@r0
      0025BD C4               [12] 1384 	swap	a
      0025BE 23               [12] 1385 	rl	a
      0025BF C6               [12] 1386 	xch	a,@r0
      0025C0 66               [12] 1387 	xrl	a,@r0
      0025C1 C6               [12] 1388 	xch	a,@r0
      0025C2 54 E0            [12] 1389 	anl	a,#0xe0
      0025C4 C6               [12] 1390 	xch	a,@r0
      0025C5 66               [12] 1391 	xrl	a,@r0
      0025C6 08               [12] 1392 	inc	r0
      0025C7 F6               [12] 1393 	mov	@r0,a
      0025C8 E5 10            [12] 1394 	mov	a,_bp
      0025CA 24 0C            [12] 1395 	add	a,#0x0c
      0025CC F8               [12] 1396 	mov	r0,a
      0025CD EC               [12] 1397 	mov	a,r4
      0025CE 26               [12] 1398 	add	a,@r0
      0025CF FA               [12] 1399 	mov	r2,a
      0025D0 ED               [12] 1400 	mov	a,r5
      0025D1 08               [12] 1401 	inc	r0
      0025D2 36               [12] 1402 	addc	a,@r0
      0025D3 FB               [12] 1403 	mov	r3,a
      0025D4 EA               [12] 1404 	mov	a,r2
      0025D5 24 00            [12] 1405 	add	a,#_u
      0025D7 F5 82            [12] 1406 	mov	dpl,a
      0025D9 EB               [12] 1407 	mov	a,r3
      0025DA 34 48            [12] 1408 	addc	a,#(_u >> 8)
      0025DC F5 83            [12] 1409 	mov	dph,a
      0025DE E0               [24] 1410 	movx	a,@dptr
      0025DF FB               [12] 1411 	mov	r3,a
      0025E0 A8 10            [24] 1412 	mov	r0,_bp
      0025E2 08               [12] 1413 	inc	r0
      0025E3 EB               [12] 1414 	mov	a,r3
      0025E4 26               [12] 1415 	add	a,@r0
      0025E5 F6               [12] 1416 	mov	@r0,a
                                   1417 ;	life.c:139: UPDN(0, 0);
      0025E6 E5 10            [12] 1418 	mov	a,_bp
      0025E8 24 0C            [12] 1419 	add	a,#0x0c
      0025EA F8               [12] 1420 	mov	r0,a
      0025EB E5 10            [12] 1421 	mov	a,_bp
      0025ED 24 08            [12] 1422 	add	a,#0x08
      0025EF F9               [12] 1423 	mov	r1,a
      0025F0 E7               [12] 1424 	mov	a,@r1
      0025F1 26               [12] 1425 	add	a,@r0
      0025F2 FA               [12] 1426 	mov	r2,a
      0025F3 09               [12] 1427 	inc	r1
      0025F4 E7               [12] 1428 	mov	a,@r1
      0025F5 08               [12] 1429 	inc	r0
      0025F6 36               [12] 1430 	addc	a,@r0
      0025F7 FB               [12] 1431 	mov	r3,a
      0025F8 EA               [12] 1432 	mov	a,r2
      0025F9 24 00            [12] 1433 	add	a,#_u
      0025FB F5 82            [12] 1434 	mov	dpl,a
      0025FD EB               [12] 1435 	mov	a,r3
      0025FE 34 48            [12] 1436 	addc	a,#(_u >> 8)
      002600 F5 83            [12] 1437 	mov	dph,a
      002602 E0               [24] 1438 	movx	a,@dptr
      002603 FB               [12] 1439 	mov	r3,a
      002604 A8 10            [24] 1440 	mov	r0,_bp
      002606 08               [12] 1441 	inc	r0
      002607 EB               [12] 1442 	mov	a,r3
      002608 26               [12] 1443 	add	a,@r0
      002609 F6               [12] 1444 	mov	@r0,a
                                   1445 ;	life.c:140: UPDN(0, 1);
      00260A E5 10            [12] 1446 	mov	a,_bp
      00260C 24 0C            [12] 1447 	add	a,#0x0c
      00260E F8               [12] 1448 	mov	r0,a
      00260F EE               [12] 1449 	mov	a,r6
      002610 26               [12] 1450 	add	a,@r0
      002611 FA               [12] 1451 	mov	r2,a
      002612 EF               [12] 1452 	mov	a,r7
      002613 08               [12] 1453 	inc	r0
      002614 36               [12] 1454 	addc	a,@r0
      002615 FB               [12] 1455 	mov	r3,a
      002616 EA               [12] 1456 	mov	a,r2
      002617 24 00            [12] 1457 	add	a,#_u
      002619 F5 82            [12] 1458 	mov	dpl,a
      00261B EB               [12] 1459 	mov	a,r3
      00261C 34 48            [12] 1460 	addc	a,#(_u >> 8)
      00261E F5 83            [12] 1461 	mov	dph,a
      002620 E0               [24] 1462 	movx	a,@dptr
      002621 FB               [12] 1463 	mov	r3,a
      002622 A8 10            [24] 1464 	mov	r0,_bp
      002624 08               [12] 1465 	inc	r0
      002625 E5 10            [12] 1466 	mov	a,_bp
      002627 24 0C            [12] 1467 	add	a,#0x0c
      002629 F9               [12] 1468 	mov	r1,a
      00262A EB               [12] 1469 	mov	a,r3
      00262B 26               [12] 1470 	add	a,@r0
      00262C F7               [12] 1471 	mov	@r1,a
                                   1472 ;	life.c:141: UPDN(1, -1);
      00262D E5 10            [12] 1473 	mov	a,_bp
      00262F 24 0A            [12] 1474 	add	a,#0x0a
      002631 F8               [12] 1475 	mov	r0,a
      002632 74 41            [12] 1476 	mov	a,#0x41
      002634 26               [12] 1477 	add	a,@r0
      002635 FA               [12] 1478 	mov	r2,a
      002636 E4               [12] 1479 	clr	a
      002637 08               [12] 1480 	inc	r0
      002638 36               [12] 1481 	addc	a,@r0
      002639 FB               [12] 1482 	mov	r3,a
      00263A C0 07            [24] 1483 	push	ar7
      00263C C0 06            [24] 1484 	push	ar6
      00263E C0 05            [24] 1485 	push	ar5
      002640 C0 04            [24] 1486 	push	ar4
      002642 74 40            [12] 1487 	mov	a,#0x40
      002644 C0 E0            [24] 1488 	push	acc
      002646 E4               [12] 1489 	clr	a
      002647 C0 E0            [24] 1490 	push	acc
      002649 8A 82            [24] 1491 	mov	dpl,r2
      00264B 8B 83            [24] 1492 	mov	dph,r3
      00264D 12 2C 6B         [24] 1493 	lcall	__modsint
      002650 AA 82            [24] 1494 	mov	r2,dpl
      002652 AB 83            [24] 1495 	mov	r3,dph
      002654 15 81            [12] 1496 	dec	sp
      002656 15 81            [12] 1497 	dec	sp
      002658 D0 04            [24] 1498 	pop	ar4
      00265A D0 05            [24] 1499 	pop	ar5
      00265C D0 06            [24] 1500 	pop	ar6
      00265E D0 07            [24] 1501 	pop	ar7
      002660 EB               [12] 1502 	mov	a,r3
      002661 C4               [12] 1503 	swap	a
      002662 23               [12] 1504 	rl	a
      002663 54 E0            [12] 1505 	anl	a,#0xe0
      002665 CA               [12] 1506 	xch	a,r2
      002666 C4               [12] 1507 	swap	a
      002667 23               [12] 1508 	rl	a
      002668 CA               [12] 1509 	xch	a,r2
      002669 6A               [12] 1510 	xrl	a,r2
      00266A CA               [12] 1511 	xch	a,r2
      00266B 54 E0            [12] 1512 	anl	a,#0xe0
      00266D CA               [12] 1513 	xch	a,r2
      00266E 6A               [12] 1514 	xrl	a,r2
      00266F FB               [12] 1515 	mov	r3,a
      002670 EC               [12] 1516 	mov	a,r4
      002671 2A               [12] 1517 	add	a,r2
      002672 FC               [12] 1518 	mov	r4,a
      002673 ED               [12] 1519 	mov	a,r5
      002674 3B               [12] 1520 	addc	a,r3
      002675 FD               [12] 1521 	mov	r5,a
      002676 EC               [12] 1522 	mov	a,r4
      002677 24 00            [12] 1523 	add	a,#_u
      002679 F5 82            [12] 1524 	mov	dpl,a
      00267B ED               [12] 1525 	mov	a,r5
      00267C 34 48            [12] 1526 	addc	a,#(_u >> 8)
      00267E F5 83            [12] 1527 	mov	dph,a
      002680 E0               [24] 1528 	movx	a,@dptr
      002681 FD               [12] 1529 	mov	r5,a
      002682 E5 10            [12] 1530 	mov	a,_bp
      002684 24 0C            [12] 1531 	add	a,#0x0c
      002686 F8               [12] 1532 	mov	r0,a
      002687 E5 10            [12] 1533 	mov	a,_bp
      002689 24 0C            [12] 1534 	add	a,#0x0c
      00268B F9               [12] 1535 	mov	r1,a
      00268C ED               [12] 1536 	mov	a,r5
      00268D 26               [12] 1537 	add	a,@r0
      00268E F7               [12] 1538 	mov	@r1,a
                                   1539 ;	life.c:142: UPDN(1, 0);
      00268F E5 10            [12] 1540 	mov	a,_bp
      002691 24 08            [12] 1541 	add	a,#0x08
      002693 F8               [12] 1542 	mov	r0,a
      002694 E6               [12] 1543 	mov	a,@r0
      002695 2A               [12] 1544 	add	a,r2
      002696 FC               [12] 1545 	mov	r4,a
      002697 08               [12] 1546 	inc	r0
      002698 E6               [12] 1547 	mov	a,@r0
      002699 3B               [12] 1548 	addc	a,r3
      00269A FD               [12] 1549 	mov	r5,a
      00269B EC               [12] 1550 	mov	a,r4
      00269C 24 00            [12] 1551 	add	a,#_u
      00269E F5 82            [12] 1552 	mov	dpl,a
      0026A0 ED               [12] 1553 	mov	a,r5
      0026A1 34 48            [12] 1554 	addc	a,#(_u >> 8)
      0026A3 F5 83            [12] 1555 	mov	dph,a
      0026A5 E0               [24] 1556 	movx	a,@dptr
      0026A6 FD               [12] 1557 	mov	r5,a
      0026A7 E5 10            [12] 1558 	mov	a,_bp
      0026A9 24 0C            [12] 1559 	add	a,#0x0c
      0026AB F8               [12] 1560 	mov	r0,a
      0026AC ED               [12] 1561 	mov	a,r5
      0026AD 26               [12] 1562 	add	a,@r0
      0026AE FD               [12] 1563 	mov	r5,a
                                   1564 ;	life.c:143: UPDN(1, 1);
      0026AF 78 31            [12] 1565 	mov	r0,#_dy
      0026B1 76 01            [12] 1566 	mov	@r0,#0x01
      0026B3 08               [12] 1567 	inc	r0
      0026B4 76 00            [12] 1568 	mov	@r0,#0x00
      0026B6 78 2F            [12] 1569 	mov	r0,#_dx
      0026B8 76 01            [12] 1570 	mov	@r0,#0x01
      0026BA 08               [12] 1571 	inc	r0
      0026BB 76 00            [12] 1572 	mov	@r0,#0x00
      0026BD EE               [12] 1573 	mov	a,r6
      0026BE 2A               [12] 1574 	add	a,r2
      0026BF FE               [12] 1575 	mov	r6,a
      0026C0 EF               [12] 1576 	mov	a,r7
      0026C1 3B               [12] 1577 	addc	a,r3
      0026C2 FF               [12] 1578 	mov	r7,a
      0026C3 EE               [12] 1579 	mov	a,r6
      0026C4 24 00            [12] 1580 	add	a,#_u
      0026C6 F5 82            [12] 1581 	mov	dpl,a
      0026C8 EF               [12] 1582 	mov	a,r7
      0026C9 34 48            [12] 1583 	addc	a,#(_u >> 8)
      0026CB F5 83            [12] 1584 	mov	dph,a
      0026CD E0               [24] 1585 	movx	a,@dptr
      0026CE 2D               [12] 1586 	add	a,r5
      0026CF FF               [12] 1587 	mov	r7,a
      0026D0 78 2C            [12] 1588 	mov	r0,#_n
      0026D2 A6 07            [24] 1589 	mov	@r0,ar7
                                   1590 ;	life.c:146: nu[A2D(W, y, x)] = (n == 3) || ((n == 2) && u[A2D(W, y, x)]);
      0026D4 A8 10            [24] 1591 	mov	r0,_bp
      0026D6 08               [12] 1592 	inc	r0
      0026D7 08               [12] 1593 	inc	r0
      0026D8 E6               [12] 1594 	mov	a,@r0
      0026D9 24 00            [12] 1595 	add	a,#_nu
      0026DB FD               [12] 1596 	mov	r5,a
      0026DC 08               [12] 1597 	inc	r0
      0026DD E6               [12] 1598 	mov	a,@r0
      0026DE 34 50            [12] 1599 	addc	a,#(_nu >> 8)
      0026E0 FE               [12] 1600 	mov	r6,a
      0026E1 BF 03 02         [24] 1601 	cjne	r7,#0x03,00359$
      0026E4 80 28            [24] 1602 	sjmp	00209$
      0026E6                       1603 00359$:
      0026E6 BF 02 21         [24] 1604 	cjne	r7,#0x02,00208$
      0026E9 E5 10            [12] 1605 	mov	a,_bp
      0026EB 24 04            [12] 1606 	add	a,#0x04
      0026ED F8               [12] 1607 	mov	r0,a
      0026EE E5 10            [12] 1608 	mov	a,_bp
      0026F0 24 06            [12] 1609 	add	a,#0x06
      0026F2 F9               [12] 1610 	mov	r1,a
      0026F3 E7               [12] 1611 	mov	a,@r1
      0026F4 26               [12] 1612 	add	a,@r0
      0026F5 FC               [12] 1613 	mov	r4,a
      0026F6 09               [12] 1614 	inc	r1
      0026F7 E7               [12] 1615 	mov	a,@r1
      0026F8 08               [12] 1616 	inc	r0
      0026F9 36               [12] 1617 	addc	a,@r0
      0026FA FF               [12] 1618 	mov	r7,a
      0026FB EC               [12] 1619 	mov	a,r4
      0026FC 24 00            [12] 1620 	add	a,#_u
      0026FE FC               [12] 1621 	mov	r4,a
      0026FF EF               [12] 1622 	mov	a,r7
      002700 34 48            [12] 1623 	addc	a,#(_u >> 8)
      002702 FF               [12] 1624 	mov	r7,a
      002703 8C 82            [24] 1625 	mov	dpl,r4
      002705 8F 83            [24] 1626 	mov	dph,r7
      002707 E0               [24] 1627 	movx	a,@dptr
      002708 70 04            [24] 1628 	jnz	00209$
      00270A                       1629 00208$:
                                   1630 ;	assignBit
      00270A C2 00            [12] 1631 	clr	b0
      00270C 80 02            [24] 1632 	sjmp	00210$
      00270E                       1633 00209$:
                                   1634 ;	assignBit
      00270E D2 00            [12] 1635 	setb	b0
      002710                       1636 00210$:
      002710 A2 00            [12] 1637 	mov	c,b0
      002712 E4               [12] 1638 	clr	a
      002713 33               [12] 1639 	rlc	a
      002714 8D 82            [24] 1640 	mov	dpl,r5
      002716 8E 83            [24] 1641 	mov	dph,r6
      002718 F0               [24] 1642 	movx	@dptr,a
                                   1643 ;	life.c:147: cycle2 |= pu[A2D(W, y, x)] ^ nu[A2D(W, y, x)];
      002719 78 25            [12] 1644 	mov	r0,#_y
      00271B 86 06            [24] 1645 	mov	ar6,@r0
      00271D 08               [12] 1646 	inc	r0
      00271E E6               [12] 1647 	mov	a,@r0
      00271F C4               [12] 1648 	swap	a
      002720 23               [12] 1649 	rl	a
      002721 54 E0            [12] 1650 	anl	a,#0xe0
      002723 CE               [12] 1651 	xch	a,r6
      002724 C4               [12] 1652 	swap	a
      002725 23               [12] 1653 	rl	a
      002726 CE               [12] 1654 	xch	a,r6
      002727 6E               [12] 1655 	xrl	a,r6
      002728 CE               [12] 1656 	xch	a,r6
      002729 54 E0            [12] 1657 	anl	a,#0xe0
      00272B CE               [12] 1658 	xch	a,r6
      00272C 6E               [12] 1659 	xrl	a,r6
      00272D FF               [12] 1660 	mov	r7,a
      00272E 78 23            [12] 1661 	mov	r0,#_x
      002730 E6               [12] 1662 	mov	a,@r0
      002731 2E               [12] 1663 	add	a,r6
      002732 FE               [12] 1664 	mov	r6,a
      002733 08               [12] 1665 	inc	r0
      002734 E6               [12] 1666 	mov	a,@r0
      002735 3F               [12] 1667 	addc	a,r7
      002736 FF               [12] 1668 	mov	r7,a
      002737 EE               [12] 1669 	mov	a,r6
      002738 24 00            [12] 1670 	add	a,#_pu
      00273A F5 82            [12] 1671 	mov	dpl,a
      00273C EF               [12] 1672 	mov	a,r7
      00273D 34 40            [12] 1673 	addc	a,#(_pu >> 8)
      00273F F5 83            [12] 1674 	mov	dph,a
      002741 E0               [24] 1675 	movx	a,@dptr
      002742 FD               [12] 1676 	mov	r5,a
      002743 EE               [12] 1677 	mov	a,r6
      002744 24 00            [12] 1678 	add	a,#_nu
      002746 F5 82            [12] 1679 	mov	dpl,a
      002748 EF               [12] 1680 	mov	a,r7
      002749 34 50            [12] 1681 	addc	a,#(_nu >> 8)
      00274B F5 83            [12] 1682 	mov	dph,a
      00274D E0               [24] 1683 	movx	a,@dptr
      00274E FC               [12] 1684 	mov	r4,a
      00274F 6D               [12] 1685 	xrl	a,r5
      002750 78 2E            [12] 1686 	mov	r0,#_cycle2
      002752 46               [12] 1687 	orl	a,@r0
      002753 F6               [12] 1688 	mov	@r0,a
                                   1689 ;	life.c:148: fixed |= u[A2D(W, y, x)] ^ nu[A2D(W, y, x)];
      002754 EE               [12] 1690 	mov	a,r6
      002755 24 00            [12] 1691 	add	a,#_u
      002757 F5 82            [12] 1692 	mov	dpl,a
      002759 EF               [12] 1693 	mov	a,r7
      00275A 34 48            [12] 1694 	addc	a,#(_u >> 8)
      00275C F5 83            [12] 1695 	mov	dph,a
      00275E E0               [24] 1696 	movx	a,@dptr
      00275F FF               [12] 1697 	mov	r7,a
      002760 EC               [12] 1698 	mov	a,r4
      002761 6F               [12] 1699 	xrl	a,r7
      002762 78 2D            [12] 1700 	mov	r0,#_fixed
      002764 46               [12] 1701 	orl	a,@r0
      002765 F6               [12] 1702 	mov	@r0,a
                                   1703 ;	life.c:127: for (x = 0; x < W; x++) {
      002766 78 23            [12] 1704 	mov	r0,#_x
      002768 06               [12] 1705 	inc	@r0
      002769 B6 00 02         [24] 1706 	cjne	@r0,#0x00,00363$
      00276C 08               [12] 1707 	inc	r0
      00276D 06               [12] 1708 	inc	@r0
      00276E                       1709 00363$:
      00276E 78 23            [12] 1710 	mov	r0,#_x
      002770 C3               [12] 1711 	clr	c
      002771 E6               [12] 1712 	mov	a,@r0
      002772 94 20            [12] 1713 	subb	a,#0x20
      002774 08               [12] 1714 	inc	r0
      002775 E6               [12] 1715 	mov	a,@r0
      002776 64 80            [12] 1716 	xrl	a,#0x80
      002778 94 80            [12] 1717 	subb	a,#0x80
      00277A 50 03            [24] 1718 	jnc	00364$
      00277C 02 23 F8         [24] 1719 	ljmp	00196$
      00277F                       1720 00364$:
                                   1721 ;	life.c:124: for (y = 0; y < H; y++) {
      00277F 78 25            [12] 1722 	mov	r0,#_y
      002781 06               [12] 1723 	inc	@r0
      002782 B6 00 02         [24] 1724 	cjne	@r0,#0x00,00365$
      002785 08               [12] 1725 	inc	r0
      002786 06               [12] 1726 	inc	@r0
      002787                       1727 00365$:
      002787 78 25            [12] 1728 	mov	r0,#_y
      002789 C3               [12] 1729 	clr	c
      00278A E6               [12] 1730 	mov	a,@r0
      00278B 94 40            [12] 1731 	subb	a,#0x40
      00278D 08               [12] 1732 	inc	r0
      00278E E6               [12] 1733 	mov	a,@r0
      00278F 64 80            [12] 1734 	xrl	a,#0x80
      002791 94 80            [12] 1735 	subb	a,#0x80
      002793 50 03            [24] 1736 	jnc	00366$
      002795 02 23 D0         [24] 1737 	ljmp	00198$
      002798                       1738 00366$:
                                   1739 ;	life.c:152: cycle2 = !cycle2;
      002798 78 2E            [12] 1740 	mov	r0,#_cycle2
      00279A E6               [12] 1741 	mov	a,@r0
      00279B B4 01 00         [24] 1742 	cjne	a,#0x01,00367$
      00279E                       1743 00367$:
      00279E 92 00            [24] 1744 	mov	b0,c
      0027A0 78 2E            [12] 1745 	mov	r0,#_cycle2
      0027A2 E4               [12] 1746 	clr	a
      0027A3 33               [12] 1747 	rlc	a
      0027A4 F6               [12] 1748 	mov	@r0,a
                                   1749 ;	life.c:153: fixed = !fixed;
      0027A5 78 2D            [12] 1750 	mov	r0,#_fixed
      0027A7 E6               [12] 1751 	mov	a,@r0
      0027A8 B4 01 00         [24] 1752 	cjne	a,#0x01,00368$
      0027AB                       1753 00368$:
      0027AB 92 00            [24] 1754 	mov	b0,c
      0027AD 78 2D            [12] 1755 	mov	r0,#_fixed
      0027AF E4               [12] 1756 	clr	a
      0027B0 33               [12] 1757 	rlc	a
      0027B1 F6               [12] 1758 	mov	@r0,a
                                   1759 ;	life.c:155: memcpy(pu, u, sizeof (u));
      0027B2 E4               [12] 1760 	clr	a
      0027B3 C0 E0            [24] 1761 	push	acc
      0027B5 74 08            [12] 1762 	mov	a,#0x08
      0027B7 C0 E0            [24] 1763 	push	acc
      0027B9 74 00            [12] 1764 	mov	a,#_u
      0027BB C0 E0            [24] 1765 	push	acc
      0027BD 74 48            [12] 1766 	mov	a,#(_u >> 8)
      0027BF C0 E0            [24] 1767 	push	acc
      0027C1 E4               [12] 1768 	clr	a
      0027C2 C0 E0            [24] 1769 	push	acc
      0027C4 90 40 00         [24] 1770 	mov	dptr,#_pu
      0027C7 75 F0 00         [24] 1771 	mov	b,#0x00
      0027CA 12 2B 2B         [24] 1772 	lcall	___memcpy
      0027CD E5 81            [12] 1773 	mov	a,sp
      0027CF 24 FB            [12] 1774 	add	a,#0xfb
      0027D1 F5 81            [12] 1775 	mov	sp,a
                                   1776 ;	life.c:156: memcpy(u, nu, sizeof (nu));
      0027D3 E4               [12] 1777 	clr	a
      0027D4 C0 E0            [24] 1778 	push	acc
      0027D6 74 08            [12] 1779 	mov	a,#0x08
      0027D8 C0 E0            [24] 1780 	push	acc
      0027DA 74 00            [12] 1781 	mov	a,#_nu
      0027DC C0 E0            [24] 1782 	push	acc
      0027DE 74 50            [12] 1783 	mov	a,#(_nu >> 8)
      0027E0 C0 E0            [24] 1784 	push	acc
      0027E2 E4               [12] 1785 	clr	a
      0027E3 C0 E0            [24] 1786 	push	acc
      0027E5 90 48 00         [24] 1787 	mov	dptr,#_u
      0027E8 75 F0 00         [24] 1788 	mov	b,#0x00
      0027EB 12 2B 2B         [24] 1789 	lcall	___memcpy
      0027EE E5 81            [12] 1790 	mov	a,sp
      0027F0 24 FB            [12] 1791 	add	a,#0xfb
      0027F2 F5 81            [12] 1792 	mov	sp,a
                                   1793 ;	life.c:194: if (fixed || cycle2) {
      0027F4 78 2D            [12] 1794 	mov	r0,#_fixed
      0027F6 E6               [12] 1795 	mov	a,@r0
      0027F7 70 08            [24] 1796 	jnz	00126$
      0027F9 78 2E            [12] 1797 	mov	r0,#_cycle2
      0027FB E6               [12] 1798 	mov	a,@r0
      0027FC 70 03            [24] 1799 	jnz	00370$
      0027FE 02 23 A8         [24] 1800 	ljmp	00202$
      002801                       1801 00370$:
      002801                       1802 00126$:
                                   1803 ;	life.c:195: printstr("DONE ");
      002801 90 2D AC         [24] 1804 	mov	dptr,#___str_6
      002804 75 F0 80         [24] 1805 	mov	b,#0x80
      002807 12 28 87         [24] 1806 	lcall	_printstr
                                   1807 ;	life.c:196: if (fixed) printstr("FIXED\r\n");
      00280A 78 2D            [12] 1808 	mov	r0,#_fixed
      00280C E6               [12] 1809 	mov	a,@r0
      00280D 60 0B            [24] 1810 	jz	00124$
      00280F 90 2D B2         [24] 1811 	mov	dptr,#___str_7
      002812 75 F0 80         [24] 1812 	mov	b,#0x80
      002815 12 28 87         [24] 1813 	lcall	_printstr
      002818 80 09            [24] 1814 	sjmp	00125$
      00281A                       1815 00124$:
                                   1816 ;	life.c:197: else printstr("CYCLE2\r\n");
      00281A 90 2D BA         [24] 1817 	mov	dptr,#___str_8
      00281D 75 F0 80         [24] 1818 	mov	b,#0x80
      002820 12 28 87         [24] 1819 	lcall	_printstr
      002823                       1820 00125$:
                                   1821 ;	life.c:198: (void)getchar();
      002823 12 28 60         [24] 1822 	lcall	_getchar
                                   1823 ;	life.c:199: break;
      002826                       1824 00129$:
                                   1825 ;	life.c:203: if (i1) {
      002826 78 22            [12] 1826 	mov	r0,#_i1
      002828 E6               [12] 1827 	mov	a,@r0
      002829 60 0C            [24] 1828 	jz	00205$
                                   1829 ;	life.c:204: printstr("BREAK\r\n");
      00282B 90 2D C3         [24] 1830 	mov	dptr,#___str_9
      00282E 75 F0 80         [24] 1831 	mov	b,#0x80
      002831 12 28 87         [24] 1832 	lcall	_printstr
                                   1833 ;	life.c:205: (void)getchar();
      002834 12 28 60         [24] 1834 	lcall	_getchar
      002837                       1835 00205$:
                                   1836 ;	life.c:168: for (i0 = 0; !i0; ) {		
      002837 78 21            [12] 1837 	mov	r0,#_i0
      002839 E6               [12] 1838 	mov	a,@r0
      00283A 70 03            [24] 1839 	jnz	00373$
      00283C 02 21 DE         [24] 1840 	ljmp	00204$
      00283F                       1841 00373$:
                                   1842 ;	life.c:209: terminate:
      00283F                       1843 00133$:
                                   1844 ;	life.c:210: EA = 0;
                                   1845 ;	assignBit
      00283F C2 AF            [12] 1846 	clr	_EA
                                   1847 ;	life.c:211: printstr("TERM\r\n");
      002841 90 2D CB         [24] 1848 	mov	dptr,#___str_10
      002844 75 F0 80         [24] 1849 	mov	b,#0x80
      002847 12 28 87         [24] 1850 	lcall	_printstr
                                   1851 ;	life.c:212: (void)getchar();
      00284A 12 28 60         [24] 1852 	lcall	_getchar
                                   1853 ;	life.c:214: PCON |= 2;
      00284D 43 87 02         [24] 1854 	orl	_PCON,#0x02
                                   1855 ;	life.c:216: return;
                                   1856 ;	life.c:217: }
      002850 85 10 81         [24] 1857 	mov	sp,_bp
      002853 D0 10            [24] 1858 	pop	_bp
      002855 22               [24] 1859 	ret
                                   1860 	.area CSEG    (CODE)
                                   1861 	.area CONST   (CODE)
                                   1862 	.area CONST   (CODE)
      002D77                       1863 ___str_0:
      002D77 1B                    1864 	.db 0x1b
      002D78 5B 32 4A              1865 	.ascii "[2J"
      002D7B 1B                    1866 	.db 0x1b
      002D7C 5B 6D 47 45 4E 20     1867 	.ascii "[mGEN "
      002D82 00                    1868 	.db 0x00
                                   1869 	.area CSEG    (CODE)
                                   1870 	.area CONST   (CODE)
      002D83                       1871 ___str_1:
      002D83 0D                    1872 	.db 0x0d
      002D84 0A                    1873 	.db 0x0a
      002D85 00                    1874 	.db 0x00
                                   1875 	.area CSEG    (CODE)
                                   1876 	.area CONST   (CODE)
      002D86                       1877 ___str_2:
      002D86 4C 4F 41 44 20 3C     1878 	.ascii "LOAD <"
      002D8C 00                    1879 	.db 0x00
                                   1880 	.area CSEG    (CODE)
                                   1881 	.area CONST   (CODE)
      002D8D                       1882 ___str_3:
      002D8D 3E                    1883 	.ascii ">"
      002D8E 0D                    1884 	.db 0x0d
      002D8F 0A                    1885 	.db 0x0a
      002D90 00                    1886 	.db 0x00
                                   1887 	.area CSEG    (CODE)
                                   1888 	.area CONST   (CODE)
      002D91                       1889 ___str_4:
      002D91 1B                    1890 	.db 0x1b
      002D92 5B 32 4A              1891 	.ascii "[2J"
      002D95 1B                    1892 	.db 0x1b
      002D96 5B 6D 4C 49 46 45 20  1893 	.ascii "[mLIFE INIT"
             49 4E 49 54
      002DA1 0D                    1894 	.db 0x0d
      002DA2 0A                    1895 	.db 0x0a
      002DA3 00                    1896 	.db 0x00
                                   1897 	.area CSEG    (CODE)
                                   1898 	.area CONST   (CODE)
      002DA4                       1899 ___str_5:
      002DA4 52 45 41 44 59        1900 	.ascii "READY"
      002DA9 0D                    1901 	.db 0x0d
      002DAA 0A                    1902 	.db 0x0a
      002DAB 00                    1903 	.db 0x00
                                   1904 	.area CSEG    (CODE)
                                   1905 	.area CONST   (CODE)
      002DAC                       1906 ___str_6:
      002DAC 44 4F 4E 45 20        1907 	.ascii "DONE "
      002DB1 00                    1908 	.db 0x00
                                   1909 	.area CSEG    (CODE)
                                   1910 	.area CONST   (CODE)
      002DB2                       1911 ___str_7:
      002DB2 46 49 58 45 44        1912 	.ascii "FIXED"
      002DB7 0D                    1913 	.db 0x0d
      002DB8 0A                    1914 	.db 0x0a
      002DB9 00                    1915 	.db 0x00
                                   1916 	.area CSEG    (CODE)
                                   1917 	.area CONST   (CODE)
      002DBA                       1918 ___str_8:
      002DBA 43 59 43 4C 45 32     1919 	.ascii "CYCLE2"
      002DC0 0D                    1920 	.db 0x0d
      002DC1 0A                    1921 	.db 0x0a
      002DC2 00                    1922 	.db 0x00
                                   1923 	.area CSEG    (CODE)
                                   1924 	.area CONST   (CODE)
      002DC3                       1925 ___str_9:
      002DC3 42 52 45 41 4B        1926 	.ascii "BREAK"
      002DC8 0D                    1927 	.db 0x0d
      002DC9 0A                    1928 	.db 0x0a
      002DCA 00                    1929 	.db 0x00
                                   1930 	.area CSEG    (CODE)
                                   1931 	.area CONST   (CODE)
      002DCB                       1932 ___str_10:
      002DCB 54 45 52 4D           1933 	.ascii "TERM"
      002DCF 0D                    1934 	.db 0x0d
      002DD0 0A                    1935 	.db 0x0a
      002DD1 00                    1936 	.db 0x00
                                   1937 	.area CSEG    (CODE)
                                   1938 	.area XINIT   (CODE)
                                   1939 	.area CABS    (ABS,CODE)
