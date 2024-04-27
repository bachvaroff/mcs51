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
      00003B                        310 __start__stack:
      00003B                        311 	.ds	1
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
      002003 02 20 85         [24]  392 	ljmp	_int0
      002006                        393 	.ds	5
      00200B 32               [24]  394 	reti
      00200C                        395 	.ds	7
      002013 02 20 91         [24]  396 	ljmp	_int1
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
      002082 02 20 16         [24]  420 	ljmp	__sdcc_program_startup
                                    421 ;--------------------------------------------------------
                                    422 ; Home
                                    423 ;--------------------------------------------------------
                                    424 	.area HOME    (CODE)
                                    425 	.area HOME    (CODE)
      002016                        426 __sdcc_program_startup:
      002016 02 21 86         [24]  427 	ljmp	_main
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
      002085                        440 _int0:
                           00000F   441 	ar7 = 0x0f
                           00000E   442 	ar6 = 0x0e
                           00000D   443 	ar5 = 0x0d
                           00000C   444 	ar4 = 0x0c
                           00000B   445 	ar3 = 0x0b
                           00000A   446 	ar2 = 0x0a
                           000009   447 	ar1 = 0x09
                           000008   448 	ar0 = 0x08
      002085 C0 D0            [24]  449 	push	psw
      002087 75 D0 08         [24]  450 	mov	psw,#0x08
                                    451 ;	life.c:10: i0 = 1;
      00208A 78 21            [12]  452 	mov	r0,#_i0
      00208C 76 01            [12]  453 	mov	@r0,#0x01
                                    454 ;	life.c:11: }
      00208E D0 D0            [24]  455 	pop	psw
      002090 32               [24]  456 	reti
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
      002091                        468 _int1:
      002091 C0 D0            [24]  469 	push	psw
      002093 75 D0 08         [24]  470 	mov	psw,#0x08
                                    471 ;	life.c:14: i1 = 1;
      002096 78 22            [12]  472 	mov	r0,#_i1
      002098 76 01            [12]  473 	mov	@r0,#0x01
                                    474 ;	life.c:15: }
      00209A D0 D0            [24]  475 	pop	psw
      00209C 32               [24]  476 	reti
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
      00209D                        490 _show:
                           000007   491 	ar7 = 0x07
                           000006   492 	ar6 = 0x06
                           000005   493 	ar5 = 0x05
                           000004   494 	ar4 = 0x04
                           000003   495 	ar3 = 0x03
                           000002   496 	ar2 = 0x02
                           000001   497 	ar1 = 0x01
                           000000   498 	ar0 = 0x00
                                    499 ;	life.c:52: if (hdr) {
      00209D E5 82            [12]  500 	mov	a,dpl
      00209F FF               [12]  501 	mov	r7,a
      0020A0 60 58            [24]  502 	jz	00102$
                                    503 ;	life.c:53: printstr("\033[2J\033[mGEN ");
      0020A2 90 2D 78         [24]  504 	mov	dptr,#___str_0
      0020A5 75 F0 80         [24]  505 	mov	b,#0x80
      0020A8 12 28 47         [24]  506 	lcall	_printstr
                                    507 ;	life.c:45: print16x(generation[1]);
      0020AB 78 35            [12]  508 	mov	r0,#(_generation + 0x0002)
      0020AD 86 06            [24]  509 	mov	ar6,@r0
      0020AF 08               [12]  510 	inc	r0
      0020B0 86 07            [24]  511 	mov	ar7,@r0
      0020B2 8E 82            [24]  512 	mov	dpl,r6
      0020B4 8F 83            [24]  513 	mov	dph,r7
      0020B6 12 29 71         [24]  514 	lcall	_print16x
                                    515 ;	life.c:46: print16x(generation[0]);
      0020B9 78 33            [12]  516 	mov	r0,#_generation
      0020BB 86 06            [24]  517 	mov	ar6,@r0
      0020BD 08               [12]  518 	inc	r0
      0020BE 86 07            [24]  519 	mov	ar7,@r0
      0020C0 8E 82            [24]  520 	mov	dpl,r6
      0020C2 8F 83            [24]  521 	mov	dph,r7
      0020C4 12 29 71         [24]  522 	lcall	_print16x
                                    523 ;	life.c:55: printstr("\r\n");
      0020C7 90 2D 84         [24]  524 	mov	dptr,#___str_1
      0020CA 75 F0 80         [24]  525 	mov	b,#0x80
      0020CD 12 28 47         [24]  526 	lcall	_printstr
                                    527 ;	life.c:38: generation[0]++;
      0020D0 78 33            [12]  528 	mov	r0,#_generation
      0020D2 86 06            [24]  529 	mov	ar6,@r0
      0020D4 08               [12]  530 	inc	r0
      0020D5 86 07            [24]  531 	mov	ar7,@r0
      0020D7 0E               [12]  532 	inc	r6
      0020D8 BE 00 01         [24]  533 	cjne	r6,#0x00,00147$
      0020DB 0F               [12]  534 	inc	r7
      0020DC                        535 00147$:
      0020DC 78 33            [12]  536 	mov	r0,#_generation
      0020DE A6 06            [24]  537 	mov	@r0,ar6
      0020E0 08               [12]  538 	inc	r0
      0020E1 A6 07            [24]  539 	mov	@r0,ar7
                                    540 ;	life.c:39: if (!generation[0]) generation[1]++;
      0020E3 EE               [12]  541 	mov	a,r6
      0020E4 4F               [12]  542 	orl	a,r7
      0020E5 70 13            [24]  543 	jnz	00102$
      0020E7 78 35            [12]  544 	mov	r0,#(_generation + 0x0002)
      0020E9 86 06            [24]  545 	mov	ar6,@r0
      0020EB 08               [12]  546 	inc	r0
      0020EC 86 07            [24]  547 	mov	ar7,@r0
      0020EE 0E               [12]  548 	inc	r6
      0020EF BE 00 01         [24]  549 	cjne	r6,#0x00,00149$
      0020F2 0F               [12]  550 	inc	r7
      0020F3                        551 00149$:
      0020F3 78 35            [12]  552 	mov	r0,#(_generation + 0x0002)
      0020F5 A6 06            [24]  553 	mov	@r0,ar6
      0020F7 08               [12]  554 	inc	r0
      0020F8 A6 07            [24]  555 	mov	@r0,ar7
                                    556 ;	life.c:56: updategen();
      0020FA                        557 00102$:
                                    558 ;	life.c:59: for (x = 0; x < W; x++) {
      0020FA 78 23            [12]  559 	mov	r0,#_x
      0020FC E4               [12]  560 	clr	a
      0020FD F6               [12]  561 	mov	@r0,a
      0020FE 08               [12]  562 	inc	r0
      0020FF F6               [12]  563 	mov	@r0,a
      002100                        564 00114$:
                                    565 ;	life.c:60: for (y = 0; y < H; y++)
      002100 78 25            [12]  566 	mov	r0,#_y
      002102 E4               [12]  567 	clr	a
      002103 F6               [12]  568 	mov	@r0,a
      002104 08               [12]  569 	inc	r0
      002105 F6               [12]  570 	mov	@r0,a
      002106                        571 00112$:
                                    572 ;	life.c:61: if (u[A2D(W, y, x)]) {
      002106 78 25            [12]  573 	mov	r0,#_y
      002108 86 06            [24]  574 	mov	ar6,@r0
      00210A 08               [12]  575 	inc	r0
      00210B E6               [12]  576 	mov	a,@r0
      00210C C4               [12]  577 	swap	a
      00210D 23               [12]  578 	rl	a
      00210E 54 E0            [12]  579 	anl	a,#0xe0
      002110 CE               [12]  580 	xch	a,r6
      002111 C4               [12]  581 	swap	a
      002112 23               [12]  582 	rl	a
      002113 CE               [12]  583 	xch	a,r6
      002114 6E               [12]  584 	xrl	a,r6
      002115 CE               [12]  585 	xch	a,r6
      002116 54 E0            [12]  586 	anl	a,#0xe0
      002118 CE               [12]  587 	xch	a,r6
      002119 6E               [12]  588 	xrl	a,r6
      00211A FF               [12]  589 	mov	r7,a
      00211B 78 23            [12]  590 	mov	r0,#_x
      00211D E6               [12]  591 	mov	a,@r0
      00211E 2E               [12]  592 	add	a,r6
      00211F FE               [12]  593 	mov	r6,a
      002120 08               [12]  594 	inc	r0
      002121 E6               [12]  595 	mov	a,@r0
      002122 3F               [12]  596 	addc	a,r7
      002123 FF               [12]  597 	mov	r7,a
      002124 EE               [12]  598 	mov	a,r6
      002125 24 00            [12]  599 	add	a,#_u
      002127 FE               [12]  600 	mov	r6,a
      002128 EF               [12]  601 	mov	a,r7
      002129 34 48            [12]  602 	addc	a,#(_u >> 8)
      00212B FF               [12]  603 	mov	r7,a
      00212C 8E 82            [24]  604 	mov	dpl,r6
      00212E 8F 83            [24]  605 	mov	dph,r7
      002130 E0               [24]  606 	movx	a,@dptr
      002131 60 0E            [24]  607 	jz	00104$
                                    608 ;	life.c:62: putchar('['); putchar(']');
      002133 90 00 5B         [24]  609 	mov	dptr,#0x005b
      002136 12 28 16         [24]  610 	lcall	_putchar
      002139 90 00 5D         [24]  611 	mov	dptr,#0x005d
      00213C 12 28 16         [24]  612 	lcall	_putchar
      00213F 80 0C            [24]  613 	sjmp	00113$
      002141                        614 00104$:
                                    615 ;	life.c:64: putchar('#'); putchar('#');
      002141 90 00 23         [24]  616 	mov	dptr,#0x0023
      002144 12 28 16         [24]  617 	lcall	_putchar
      002147 90 00 23         [24]  618 	mov	dptr,#0x0023
      00214A 12 28 16         [24]  619 	lcall	_putchar
      00214D                        620 00113$:
                                    621 ;	life.c:60: for (y = 0; y < H; y++)
      00214D 78 25            [12]  622 	mov	r0,#_y
      00214F 06               [12]  623 	inc	@r0
      002150 B6 00 02         [24]  624 	cjne	@r0,#0x00,00151$
      002153 08               [12]  625 	inc	r0
      002154 06               [12]  626 	inc	@r0
      002155                        627 00151$:
      002155 78 25            [12]  628 	mov	r0,#_y
      002157 C3               [12]  629 	clr	c
      002158 E6               [12]  630 	mov	a,@r0
      002159 94 40            [12]  631 	subb	a,#0x40
      00215B 08               [12]  632 	inc	r0
      00215C E6               [12]  633 	mov	a,@r0
      00215D 64 80            [12]  634 	xrl	a,#0x80
      00215F 94 80            [12]  635 	subb	a,#0x80
      002161 40 A3            [24]  636 	jc	00112$
                                    637 ;	life.c:66: printstr("\r\n");
      002163 90 2D 84         [24]  638 	mov	dptr,#___str_1
      002166 75 F0 80         [24]  639 	mov	b,#0x80
      002169 12 28 47         [24]  640 	lcall	_printstr
                                    641 ;	life.c:59: for (x = 0; x < W; x++) {
      00216C 78 23            [12]  642 	mov	r0,#_x
      00216E 06               [12]  643 	inc	@r0
      00216F B6 00 02         [24]  644 	cjne	@r0,#0x00,00153$
      002172 08               [12]  645 	inc	r0
      002173 06               [12]  646 	inc	@r0
      002174                        647 00153$:
      002174 78 23            [12]  648 	mov	r0,#_x
      002176 C3               [12]  649 	clr	c
      002177 E6               [12]  650 	mov	a,@r0
      002178 94 20            [12]  651 	subb	a,#0x20
      00217A 08               [12]  652 	inc	r0
      00217B E6               [12]  653 	mov	a,@r0
      00217C 64 80            [12]  654 	xrl	a,#0x80
      00217E 94 80            [12]  655 	subb	a,#0x80
      002180 50 03            [24]  656 	jnc	00154$
      002182 02 21 00         [24]  657 	ljmp	00114$
      002185                        658 00154$:
                                    659 ;	life.c:69: return;
                                    660 ;	life.c:70: }
      002185 22               [24]  661 	ret
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
      002186                        677 _main:
      002186 C0 10            [24]  678 	push	_bp
      002188 E5 81            [12]  679 	mov	a,sp
      00218A F5 10            [12]  680 	mov	_bp,a
      00218C 24 0D            [12]  681 	add	a,#0x0d
      00218E F5 81            [12]  682 	mov	sp,a
                                    683 ;	life.c:162: IT0 = 1;
                                    684 ;	assignBit
      002190 D2 88            [12]  685 	setb	_IT0
                                    686 ;	life.c:163: IT1 = 1;
                                    687 ;	assignBit
      002192 D2 8A            [12]  688 	setb	_IT1
                                    689 ;	life.c:164: EX0 = 1;
                                    690 ;	assignBit
      002194 D2 A8            [12]  691 	setb	_EX0
                                    692 ;	life.c:165: EX1 = 1;
                                    693 ;	assignBit
      002196 D2 AA            [12]  694 	setb	_EX1
                                    695 ;	life.c:166: EA = 1;
                                    696 ;	assignBit
      002198 D2 AF            [12]  697 	setb	_EA
                                    698 ;	life.c:168: for (i0 = 0; !i0; ) {		
      00219A 78 21            [12]  699 	mov	r0,#_i0
      00219C 76 00            [12]  700 	mov	@r0,#0x00
      00219E                        701 00204$:
                                    702 ;	life.c:169: printstr("\033[2J\033[mLIFE INIT\r\n");
      00219E 90 2D 92         [24]  703 	mov	dptr,#___str_4
      0021A1 75 F0 80         [24]  704 	mov	b,#0x80
      0021A4 12 28 47         [24]  705 	lcall	_printstr
                                    706 ;	life.c:170: while (1) {
      0021A7                        707 00108$:
                                    708 ;	life.c:171: c = toupper(getchar());
      0021A7 12 28 20         [24]  709 	lcall	_getchar
      0021AA 12 2C 29         [24]  710 	lcall	_toupper
      0021AD AE 82            [24]  711 	mov	r6,dpl
      0021AF AF 83            [24]  712 	mov	r7,dph
      0021B1 78 29            [12]  713 	mov	r0,#_c
      0021B3 A6 06            [24]  714 	mov	@r0,ar6
      0021B5 08               [12]  715 	inc	r0
      0021B6 A6 07            [24]  716 	mov	@r0,ar7
                                    717 ;	life.c:172: if (i0 || (c == (int)'T')) goto terminate;
      0021B8 78 21            [12]  718 	mov	r0,#_i0
      0021BA E6               [12]  719 	mov	a,@r0
      0021BB 60 03            [24]  720 	jz	00333$
      0021BD 02 27 FF         [24]  721 	ljmp	00133$
      0021C0                        722 00333$:
      0021C0 BE 54 06         [24]  723 	cjne	r6,#0x54,00334$
      0021C3 BF 00 03         [24]  724 	cjne	r7,#0x00,00334$
      0021C6 02 27 FF         [24]  725 	ljmp	00133$
      0021C9                        726 00334$:
                                    727 ;	life.c:173: else if (c == (int)'L') break;
      0021C9 BE 4C DB         [24]  728 	cjne	r6,#0x4c,00108$
      0021CC BF 00 D8         [24]  729 	cjne	r7,#0x00,00108$
                                    730 ;	life.c:176: reload:
      0021CF                        731 00110$:
                                    732 ;	life.c:73: memset(u, 0, sizeof (u));
      0021CF E4               [12]  733 	clr	a
      0021D0 C0 E0            [24]  734 	push	acc
      0021D2 74 08            [12]  735 	mov	a,#0x08
      0021D4 C0 E0            [24]  736 	push	acc
      0021D6 E4               [12]  737 	clr	a
      0021D7 C0 E0            [24]  738 	push	acc
      0021D9 90 48 00         [24]  739 	mov	dptr,#_u
      0021DC 75 F0 00         [24]  740 	mov	b,#0x00
      0021DF 12 2B BF         [24]  741 	lcall	_memset
      0021E2 15 81            [12]  742 	dec	sp
      0021E4 15 81            [12]  743 	dec	sp
      0021E6 15 81            [12]  744 	dec	sp
                                    745 ;	life.c:74: memset(pu, 0, sizeof (pu));
      0021E8 E4               [12]  746 	clr	a
      0021E9 C0 E0            [24]  747 	push	acc
      0021EB 74 08            [12]  748 	mov	a,#0x08
      0021ED C0 E0            [24]  749 	push	acc
      0021EF E4               [12]  750 	clr	a
      0021F0 C0 E0            [24]  751 	push	acc
      0021F2 90 40 00         [24]  752 	mov	dptr,#_pu
      0021F5 75 F0 00         [24]  753 	mov	b,#0x00
      0021F8 12 2B BF         [24]  754 	lcall	_memset
      0021FB 15 81            [12]  755 	dec	sp
      0021FD 15 81            [12]  756 	dec	sp
      0021FF 15 81            [12]  757 	dec	sp
                                    758 ;	life.c:80: j = 0;
      002201 78 27            [12]  759 	mov	r0,#_j
      002203 E4               [12]  760 	clr	a
      002204 F6               [12]  761 	mov	@r0,a
      002205 08               [12]  762 	inc	r0
      002206 F6               [12]  763 	mov	@r0,a
                                    764 ;	life.c:82: printstr("LOAD <");
      002207 90 2D 87         [24]  765 	mov	dptr,#___str_2
      00220A 75 F0 80         [24]  766 	mov	b,#0x80
      00220D 12 28 47         [24]  767 	lcall	_printstr
                                    768 ;	life.c:84: for (y = 0; y < H; y++) {
      002210 78 25            [12]  769 	mov	r0,#_y
      002212 E4               [12]  770 	clr	a
      002213 F6               [12]  771 	mov	@r0,a
      002214 08               [12]  772 	inc	r0
      002215 F6               [12]  773 	mov	@r0,a
      002216                        774 00194$:
                                    775 ;	life.c:85: for (x = 0; x < W; x++) {
      002216 78 23            [12]  776 	mov	r0,#_x
      002218 E4               [12]  777 	clr	a
      002219 F6               [12]  778 	mov	@r0,a
      00221A 08               [12]  779 	inc	r0
      00221B F6               [12]  780 	mov	@r0,a
                                    781 ;	life.c:86: while (1) {
      00221C                        782 00147$:
                                    783 ;	life.c:87: c = toupper(getchar());
      00221C 12 28 20         [24]  784 	lcall	_getchar
      00221F 12 2C 29         [24]  785 	lcall	_toupper
      002222 AE 82            [24]  786 	mov	r6,dpl
      002224 AF 83            [24]  787 	mov	r7,dph
      002226 78 29            [12]  788 	mov	r0,#_c
      002228 A6 06            [24]  789 	mov	@r0,ar6
      00222A 08               [12]  790 	inc	r0
      00222B A6 07            [24]  791 	mov	@r0,ar7
                                    792 ;	life.c:88: if (c == (int)'0') {
      00222D BE 30 37         [24]  793 	cjne	r6,#0x30,00145$
      002230 BF 00 34         [24]  794 	cjne	r7,#0x00,00145$
                                    795 ;	life.c:89: u[A2D(W, y, x)] = 0;
      002233 78 25            [12]  796 	mov	r0,#_y
      002235 86 04            [24]  797 	mov	ar4,@r0
      002237 08               [12]  798 	inc	r0
      002238 E6               [12]  799 	mov	a,@r0
      002239 C4               [12]  800 	swap	a
      00223A 23               [12]  801 	rl	a
      00223B 54 E0            [12]  802 	anl	a,#0xe0
      00223D CC               [12]  803 	xch	a,r4
      00223E C4               [12]  804 	swap	a
      00223F 23               [12]  805 	rl	a
      002240 CC               [12]  806 	xch	a,r4
      002241 6C               [12]  807 	xrl	a,r4
      002242 CC               [12]  808 	xch	a,r4
      002243 54 E0            [12]  809 	anl	a,#0xe0
      002245 CC               [12]  810 	xch	a,r4
      002246 6C               [12]  811 	xrl	a,r4
      002247 FD               [12]  812 	mov	r5,a
      002248 78 23            [12]  813 	mov	r0,#_x
      00224A E6               [12]  814 	mov	a,@r0
      00224B 2C               [12]  815 	add	a,r4
      00224C FC               [12]  816 	mov	r4,a
      00224D 08               [12]  817 	inc	r0
      00224E E6               [12]  818 	mov	a,@r0
      00224F 3D               [12]  819 	addc	a,r5
      002250 FD               [12]  820 	mov	r5,a
      002251 EC               [12]  821 	mov	a,r4
      002252 24 00            [12]  822 	add	a,#_u
      002254 F5 82            [12]  823 	mov	dpl,a
      002256 ED               [12]  824 	mov	a,r5
      002257 34 48            [12]  825 	addc	a,#(_u >> 8)
      002259 F5 83            [12]  826 	mov	dph,a
      00225B E4               [12]  827 	clr	a
      00225C F0               [24]  828 	movx	@dptr,a
                                    829 ;	life.c:90: j++;
      00225D 78 27            [12]  830 	mov	r0,#_j
      00225F 06               [12]  831 	inc	@r0
      002260 B6 00 02         [24]  832 	cjne	@r0,#0x00,00339$
      002263 08               [12]  833 	inc	r0
      002264 06               [12]  834 	inc	@r0
      002265                        835 00339$:
                                    836 ;	life.c:91: break;
      002265 80 4E            [24]  837 	sjmp	00150$
      002267                        838 00145$:
                                    839 ;	life.c:92: } else if (c == (int)'1') {
      002267 BE 31 38         [24]  840 	cjne	r6,#0x31,00143$
      00226A BF 00 35         [24]  841 	cjne	r7,#0x00,00143$
                                    842 ;	life.c:93: u[A2D(W, y, x)] = 1;
      00226D 78 25            [12]  843 	mov	r0,#_y
      00226F 86 04            [24]  844 	mov	ar4,@r0
      002271 08               [12]  845 	inc	r0
      002272 E6               [12]  846 	mov	a,@r0
      002273 C4               [12]  847 	swap	a
      002274 23               [12]  848 	rl	a
      002275 54 E0            [12]  849 	anl	a,#0xe0
      002277 CC               [12]  850 	xch	a,r4
      002278 C4               [12]  851 	swap	a
      002279 23               [12]  852 	rl	a
      00227A CC               [12]  853 	xch	a,r4
      00227B 6C               [12]  854 	xrl	a,r4
      00227C CC               [12]  855 	xch	a,r4
      00227D 54 E0            [12]  856 	anl	a,#0xe0
      00227F CC               [12]  857 	xch	a,r4
      002280 6C               [12]  858 	xrl	a,r4
      002281 FD               [12]  859 	mov	r5,a
      002282 78 23            [12]  860 	mov	r0,#_x
      002284 E6               [12]  861 	mov	a,@r0
      002285 2C               [12]  862 	add	a,r4
      002286 FC               [12]  863 	mov	r4,a
      002287 08               [12]  864 	inc	r0
      002288 E6               [12]  865 	mov	a,@r0
      002289 3D               [12]  866 	addc	a,r5
      00228A FD               [12]  867 	mov	r5,a
      00228B EC               [12]  868 	mov	a,r4
      00228C 24 00            [12]  869 	add	a,#_u
      00228E F5 82            [12]  870 	mov	dpl,a
      002290 ED               [12]  871 	mov	a,r5
      002291 34 48            [12]  872 	addc	a,#(_u >> 8)
      002293 F5 83            [12]  873 	mov	dph,a
      002295 74 01            [12]  874 	mov	a,#0x01
      002297 F0               [24]  875 	movx	@dptr,a
                                    876 ;	life.c:94: j++;
      002298 78 27            [12]  877 	mov	r0,#_j
      00229A 06               [12]  878 	inc	@r0
      00229B B6 00 02         [24]  879 	cjne	@r0,#0x00,00342$
      00229E 08               [12]  880 	inc	r0
      00229F 06               [12]  881 	inc	@r0
      0022A0                        882 00342$:
                                    883 ;	life.c:95: break;
      0022A0 80 13            [24]  884 	sjmp	00150$
      0022A2                        885 00143$:
                                    886 ;	life.c:96: } else if (c == (int)'S') goto br_inner;
      0022A2 BE 53 05         [24]  887 	cjne	r6,#0x53,00343$
      0022A5 BF 00 02         [24]  888 	cjne	r7,#0x00,00343$
      0022A8 80 24            [24]  889 	sjmp	00195$
      0022AA                        890 00343$:
                                    891 ;	life.c:97: else if (c == (int)'#') goto out;
      0022AA BE 23 05         [24]  892 	cjne	r6,#0x23,00344$
      0022AD BF 00 02         [24]  893 	cjne	r7,#0x00,00344$
      0022B0 80 35            [24]  894 	sjmp	00160$
      0022B2                        895 00344$:
      0022B2 02 22 1C         [24]  896 	ljmp	00147$
                                    897 ;	life.c:101: break;
      0022B5                        898 00150$:
                                    899 ;	life.c:85: for (x = 0; x < W; x++) {
      0022B5 78 23            [12]  900 	mov	r0,#_x
      0022B7 06               [12]  901 	inc	@r0
      0022B8 B6 00 02         [24]  902 	cjne	@r0,#0x00,00345$
      0022BB 08               [12]  903 	inc	r0
      0022BC 06               [12]  904 	inc	@r0
      0022BD                        905 00345$:
      0022BD 78 23            [12]  906 	mov	r0,#_x
      0022BF C3               [12]  907 	clr	c
      0022C0 E6               [12]  908 	mov	a,@r0
      0022C1 94 20            [12]  909 	subb	a,#0x20
      0022C3 08               [12]  910 	inc	r0
      0022C4 E6               [12]  911 	mov	a,@r0
      0022C5 64 80            [12]  912 	xrl	a,#0x80
      0022C7 94 80            [12]  913 	subb	a,#0x80
      0022C9 50 03            [24]  914 	jnc	00346$
      0022CB 02 22 1C         [24]  915 	ljmp	00147$
      0022CE                        916 00346$:
      0022CE                        917 00195$:
                                    918 ;	life.c:84: for (y = 0; y < H; y++) {
      0022CE 78 25            [12]  919 	mov	r0,#_y
      0022D0 06               [12]  920 	inc	@r0
      0022D1 B6 00 02         [24]  921 	cjne	@r0,#0x00,00347$
      0022D4 08               [12]  922 	inc	r0
      0022D5 06               [12]  923 	inc	@r0
      0022D6                        924 00347$:
      0022D6 78 25            [12]  925 	mov	r0,#_y
      0022D8 C3               [12]  926 	clr	c
      0022D9 E6               [12]  927 	mov	a,@r0
      0022DA 94 40            [12]  928 	subb	a,#0x40
      0022DC 08               [12]  929 	inc	r0
      0022DD E6               [12]  930 	mov	a,@r0
      0022DE 64 80            [12]  931 	xrl	a,#0x80
      0022E0 94 80            [12]  932 	subb	a,#0x80
      0022E2 50 03            [24]  933 	jnc	00348$
      0022E4 02 22 16         [24]  934 	ljmp	00194$
      0022E7                        935 00348$:
                                    936 ;	life.c:105: out:
      0022E7                        937 00160$:
                                    938 ;	life.c:106: if (c != (int)'#')
      0022E7 BE 23 05         [24]  939 	cjne	r6,#0x23,00349$
      0022EA BF 00 02         [24]  940 	cjne	r7,#0x00,00349$
      0022ED 80 14            [24]  941 	sjmp	00159$
      0022EF                        942 00349$:
                                    943 ;	life.c:107: while (1) {
      0022EF                        944 00156$:
                                    945 ;	life.c:108: c = getchar();
      0022EF 12 28 20         [24]  946 	lcall	_getchar
      0022F2 AE 82            [24]  947 	mov	r6,dpl
      0022F4 AF 83            [24]  948 	mov	r7,dph
      0022F6 78 29            [12]  949 	mov	r0,#_c
      0022F8 A6 06            [24]  950 	mov	@r0,ar6
      0022FA 08               [12]  951 	inc	r0
      0022FB A6 07            [24]  952 	mov	@r0,ar7
                                    953 ;	life.c:109: if (c == (int)'#') break;
      0022FD BE 23 EF         [24]  954 	cjne	r6,#0x23,00156$
      002300 BF 00 EC         [24]  955 	cjne	r7,#0x00,00156$
      002303                        956 00159$:
                                    957 ;	life.c:111: print16x(j);
      002303 78 27            [12]  958 	mov	r0,#_j
      002305 86 82            [24]  959 	mov	dpl,@r0
      002307 08               [12]  960 	inc	r0
      002308 86 83            [24]  961 	mov	dph,@r0
      00230A 12 29 71         [24]  962 	lcall	_print16x
                                    963 ;	life.c:112: printstr(">\r\n");
      00230D 90 2D 8E         [24]  964 	mov	dptr,#___str_3
      002310 75 F0 80         [24]  965 	mov	b,#0x80
      002313 12 28 47         [24]  966 	lcall	_printstr
                                    967 ;	life.c:179: show(0);
      002316 75 82 00         [24]  968 	mov	dpl,#0x00
      002319 12 20 9D         [24]  969 	lcall	_show
                                    970 ;	life.c:181: printstr("READY\r\n");
      00231C 90 2D A5         [24]  971 	mov	dptr,#___str_5
      00231F 75 F0 80         [24]  972 	mov	b,#0x80
      002322 12 28 47         [24]  973 	lcall	_printstr
                                    974 ;	life.c:182: while (1) {
      002325                        975 00121$:
                                    976 ;	life.c:183: c = toupper(getchar());
      002325 12 28 20         [24]  977 	lcall	_getchar
      002328 12 2C 29         [24]  978 	lcall	_toupper
      00232B AE 82            [24]  979 	mov	r6,dpl
      00232D AF 83            [24]  980 	mov	r7,dph
      00232F 78 29            [12]  981 	mov	r0,#_c
      002331 A6 06            [24]  982 	mov	@r0,ar6
      002333 08               [12]  983 	inc	r0
      002334 A6 07            [24]  984 	mov	@r0,ar7
                                    985 ;	life.c:184: if (i0 || (c == (int)'T')) goto terminate;
      002336 78 21            [12]  986 	mov	r0,#_i0
      002338 E6               [12]  987 	mov	a,@r0
      002339 60 03            [24]  988 	jz	00352$
      00233B 02 27 FF         [24]  989 	ljmp	00133$
      00233E                        990 00352$:
      00233E BE 54 06         [24]  991 	cjne	r6,#0x54,00353$
      002341 BF 00 03         [24]  992 	cjne	r7,#0x00,00353$
      002344 02 27 FF         [24]  993 	ljmp	00133$
      002347                        994 00353$:
                                    995 ;	life.c:185: else if (c == (int)'L') goto reload;
      002347 BE 4C 06         [24]  996 	cjne	r6,#0x4c,00354$
      00234A BF 00 03         [24]  997 	cjne	r7,#0x00,00354$
      00234D 02 21 CF         [24]  998 	ljmp	00110$
      002350                        999 00354$:
                                   1000 ;	life.c:186: else if (c == (int)'S') break;
      002350 BE 53 D2         [24] 1001 	cjne	r6,#0x53,00121$
      002353 BF 00 CF         [24] 1002 	cjne	r7,#0x00,00121$
                                   1003 ;	life.c:31: generation[0] = 0;
      002356 78 33            [12] 1004 	mov	r0,#_generation
      002358 76 00            [12] 1005 	mov	@r0,#0x00
      00235A 08               [12] 1006 	inc	r0
      00235B 76 00            [12] 1007 	mov	@r0,#0x00
                                   1008 ;	life.c:32: generation[1] = 0;
      00235D 78 35            [12] 1009 	mov	r0,#(_generation + 0x0002)
      00235F 76 00            [12] 1010 	mov	@r0,#0x00
      002361 08               [12] 1011 	inc	r0
      002362 76 00            [12] 1012 	mov	@r0,#0x00
                                   1013 ;	life.c:191: for (i1 = 0; !i0 && !i1; ) {
      002364 78 22            [12] 1014 	mov	r0,#_i1
      002366 76 00            [12] 1015 	mov	@r0,#0x00
      002368                       1016 00202$:
      002368 78 21            [12] 1017 	mov	r0,#_i0
      00236A E6               [12] 1018 	mov	a,@r0
      00236B 60 03            [24] 1019 	jz	00357$
      00236D 02 27 E6         [24] 1020 	ljmp	00129$
      002370                       1021 00357$:
      002370 78 22            [12] 1022 	mov	r0,#_i1
      002372 E6               [12] 1023 	mov	a,@r0
      002373 60 03            [24] 1024 	jz	00358$
      002375 02 27 E6         [24] 1025 	ljmp	00129$
      002378                       1026 00358$:
                                   1027 ;	life.c:192: show(1);
      002378 75 82 01         [24] 1028 	mov	dpl,#0x01
      00237B 12 20 9D         [24] 1029 	lcall	_show
                                   1030 ;	life.c:120: fixed = 0;
      00237E 78 2D            [12] 1031 	mov	r0,#_fixed
      002380 76 00            [12] 1032 	mov	@r0,#0x00
                                   1033 ;	life.c:121: cycle2 = 0;
      002382 78 2E            [12] 1034 	mov	r0,#_cycle2
      002384 76 00            [12] 1035 	mov	@r0,#0x00
                                   1036 ;	life.c:122: bstep = 0;
      002386 78 2B            [12] 1037 	mov	r0,#_bstep
      002388 76 00            [12] 1038 	mov	@r0,#0x00
                                   1039 ;	life.c:124: for (y = 0; y < H; y++) {
      00238A 78 25            [12] 1040 	mov	r0,#_y
      00238C E4               [12] 1041 	clr	a
      00238D F6               [12] 1042 	mov	@r0,a
      00238E 08               [12] 1043 	inc	r0
      00238F F6               [12] 1044 	mov	@r0,a
      002390                       1045 00198$:
                                   1046 ;	life.c:125: putchar(busy[bstep]); putchar('\r');
      002390 78 2B            [12] 1047 	mov	r0,#_bstep
      002392 E6               [12] 1048 	mov	a,@r0
      002393 24 37            [12] 1049 	add	a,#_busy
      002395 F9               [12] 1050 	mov	r1,a
      002396 87 07            [24] 1051 	mov	ar7,@r1
      002398 7E 00            [12] 1052 	mov	r6,#0x00
      00239A 8F 82            [24] 1053 	mov	dpl,r7
      00239C 8E 83            [24] 1054 	mov	dph,r6
      00239E 12 28 16         [24] 1055 	lcall	_putchar
      0023A1 90 00 0D         [24] 1056 	mov	dptr,#0x000d
      0023A4 12 28 16         [24] 1057 	lcall	_putchar
                                   1058 ;	life.c:126: bstep = (bstep + 1) & 3;
      0023A7 78 2B            [12] 1059 	mov	r0,#_bstep
      0023A9 86 07            [24] 1060 	mov	ar7,@r0
      0023AB 0F               [12] 1061 	inc	r7
      0023AC 78 2B            [12] 1062 	mov	r0,#_bstep
      0023AE 74 03            [12] 1063 	mov	a,#0x03
      0023B0 5F               [12] 1064 	anl	a,r7
      0023B1 F6               [12] 1065 	mov	@r0,a
                                   1066 ;	life.c:127: for (x = 0; x < W; x++) {
      0023B2 78 23            [12] 1067 	mov	r0,#_x
      0023B4 E4               [12] 1068 	clr	a
      0023B5 F6               [12] 1069 	mov	@r0,a
      0023B6 08               [12] 1070 	inc	r0
      0023B7 F6               [12] 1071 	mov	@r0,a
      0023B8                       1072 00196$:
                                   1073 ;	life.c:128: n = -u[A2D(W, y, x)];
      0023B8 78 25            [12] 1074 	mov	r0,#_y
      0023BA E5 10            [12] 1075 	mov	a,_bp
      0023BC 24 04            [12] 1076 	add	a,#0x04
      0023BE F9               [12] 1077 	mov	r1,a
      0023BF E6               [12] 1078 	mov	a,@r0
      0023C0 F7               [12] 1079 	mov	@r1,a
      0023C1 08               [12] 1080 	inc	r0
      0023C2 E6               [12] 1081 	mov	a,@r0
      0023C3 C4               [12] 1082 	swap	a
      0023C4 23               [12] 1083 	rl	a
      0023C5 54 E0            [12] 1084 	anl	a,#0xe0
      0023C7 C7               [12] 1085 	xch	a,@r1
      0023C8 C4               [12] 1086 	swap	a
      0023C9 23               [12] 1087 	rl	a
      0023CA C7               [12] 1088 	xch	a,@r1
      0023CB 67               [12] 1089 	xrl	a,@r1
      0023CC C7               [12] 1090 	xch	a,@r1
      0023CD 54 E0            [12] 1091 	anl	a,#0xe0
      0023CF C7               [12] 1092 	xch	a,@r1
      0023D0 67               [12] 1093 	xrl	a,@r1
      0023D1 09               [12] 1094 	inc	r1
      0023D2 F7               [12] 1095 	mov	@r1,a
      0023D3 E5 10            [12] 1096 	mov	a,_bp
      0023D5 24 04            [12] 1097 	add	a,#0x04
      0023D7 F8               [12] 1098 	mov	r0,a
      0023D8 79 23            [12] 1099 	mov	r1,#_x
      0023DA E7               [12] 1100 	mov	a,@r1
      0023DB 26               [12] 1101 	add	a,@r0
      0023DC C0 E0            [24] 1102 	push	acc
      0023DE 09               [12] 1103 	inc	r1
      0023DF E7               [12] 1104 	mov	a,@r1
      0023E0 08               [12] 1105 	inc	r0
      0023E1 36               [12] 1106 	addc	a,@r0
      0023E2 C0 E0            [24] 1107 	push	acc
      0023E4 E5 10            [12] 1108 	mov	a,_bp
      0023E6 24 03            [12] 1109 	add	a,#0x03
      0023E8 F8               [12] 1110 	mov	r0,a
      0023E9 D0 E0            [24] 1111 	pop	acc
      0023EB F6               [12] 1112 	mov	@r0,a
      0023EC 18               [12] 1113 	dec	r0
      0023ED D0 E0            [24] 1114 	pop	acc
      0023EF F6               [12] 1115 	mov	@r0,a
      0023F0 A8 10            [24] 1116 	mov	r0,_bp
      0023F2 08               [12] 1117 	inc	r0
      0023F3 08               [12] 1118 	inc	r0
      0023F4 E6               [12] 1119 	mov	a,@r0
      0023F5 24 00            [12] 1120 	add	a,#_u
      0023F7 F5 82            [12] 1121 	mov	dpl,a
      0023F9 08               [12] 1122 	inc	r0
      0023FA E6               [12] 1123 	mov	a,@r0
      0023FB 34 48            [12] 1124 	addc	a,#(_u >> 8)
      0023FD F5 83            [12] 1125 	mov	dph,a
      0023FF E0               [24] 1126 	movx	a,@dptr
      002400 FB               [12] 1127 	mov	r3,a
      002401 A8 10            [24] 1128 	mov	r0,_bp
      002403 08               [12] 1129 	inc	r0
      002404 C3               [12] 1130 	clr	c
      002405 E4               [12] 1131 	clr	a
      002406 9B               [12] 1132 	subb	a,r3
      002407 F6               [12] 1133 	mov	@r0,a
                                   1134 ;	life.c:135: UPDN(-1, -1);
      002408 78 25            [12] 1135 	mov	r0,#_y
      00240A 74 FF            [12] 1136 	mov	a,#0xff
      00240C 26               [12] 1137 	add	a,@r0
      00240D FA               [12] 1138 	mov	r2,a
      00240E 74 FF            [12] 1139 	mov	a,#0xff
      002410 08               [12] 1140 	inc	r0
      002411 36               [12] 1141 	addc	a,@r0
      002412 FB               [12] 1142 	mov	r3,a
      002413 74 40            [12] 1143 	mov	a,#0x40
      002415 2A               [12] 1144 	add	a,r2
      002416 FA               [12] 1145 	mov	r2,a
      002417 E4               [12] 1146 	clr	a
      002418 3B               [12] 1147 	addc	a,r3
      002419 FB               [12] 1148 	mov	r3,a
      00241A 74 40            [12] 1149 	mov	a,#0x40
      00241C C0 E0            [24] 1150 	push	acc
      00241E E4               [12] 1151 	clr	a
      00241F C0 E0            [24] 1152 	push	acc
      002421 8A 82            [24] 1153 	mov	dpl,r2
      002423 8B 83            [24] 1154 	mov	dph,r3
      002425 12 2C 6C         [24] 1155 	lcall	__modsint
      002428 AA 82            [24] 1156 	mov	r2,dpl
      00242A AB 83            [24] 1157 	mov	r3,dph
      00242C 15 81            [12] 1158 	dec	sp
      00242E 15 81            [12] 1159 	dec	sp
      002430 EB               [12] 1160 	mov	a,r3
      002431 C4               [12] 1161 	swap	a
      002432 23               [12] 1162 	rl	a
      002433 54 E0            [12] 1163 	anl	a,#0xe0
      002435 CA               [12] 1164 	xch	a,r2
      002436 C4               [12] 1165 	swap	a
      002437 23               [12] 1166 	rl	a
      002438 CA               [12] 1167 	xch	a,r2
      002439 6A               [12] 1168 	xrl	a,r2
      00243A CA               [12] 1169 	xch	a,r2
      00243B 54 E0            [12] 1170 	anl	a,#0xe0
      00243D CA               [12] 1171 	xch	a,r2
      00243E 6A               [12] 1172 	xrl	a,r2
      00243F FB               [12] 1173 	mov	r3,a
      002440 78 23            [12] 1174 	mov	r0,#_x
      002442 74 FF            [12] 1175 	mov	a,#0xff
      002444 26               [12] 1176 	add	a,@r0
      002445 FC               [12] 1177 	mov	r4,a
      002446 74 FF            [12] 1178 	mov	a,#0xff
      002448 08               [12] 1179 	inc	r0
      002449 36               [12] 1180 	addc	a,@r0
      00244A FD               [12] 1181 	mov	r5,a
      00244B 74 20            [12] 1182 	mov	a,#0x20
      00244D 2C               [12] 1183 	add	a,r4
      00244E FC               [12] 1184 	mov	r4,a
      00244F E4               [12] 1185 	clr	a
      002450 3D               [12] 1186 	addc	a,r5
      002451 FD               [12] 1187 	mov	r5,a
      002452 C0 03            [24] 1188 	push	ar3
      002454 C0 02            [24] 1189 	push	ar2
      002456 74 20            [12] 1190 	mov	a,#0x20
      002458 C0 E0            [24] 1191 	push	acc
      00245A E4               [12] 1192 	clr	a
      00245B C0 E0            [24] 1193 	push	acc
      00245D 8C 82            [24] 1194 	mov	dpl,r4
      00245F 8D 83            [24] 1195 	mov	dph,r5
      002461 12 2C 6C         [24] 1196 	lcall	__modsint
      002464 AC 82            [24] 1197 	mov	r4,dpl
      002466 AD 83            [24] 1198 	mov	r5,dph
      002468 15 81            [12] 1199 	dec	sp
      00246A 15 81            [12] 1200 	dec	sp
      00246C D0 02            [24] 1201 	pop	ar2
      00246E D0 03            [24] 1202 	pop	ar3
      002470 EC               [12] 1203 	mov	a,r4
      002471 2A               [12] 1204 	add	a,r2
      002472 FE               [12] 1205 	mov	r6,a
      002473 ED               [12] 1206 	mov	a,r5
      002474 3B               [12] 1207 	addc	a,r3
      002475 FF               [12] 1208 	mov	r7,a
      002476 EE               [12] 1209 	mov	a,r6
      002477 24 00            [12] 1210 	add	a,#_u
      002479 F5 82            [12] 1211 	mov	dpl,a
      00247B EF               [12] 1212 	mov	a,r7
      00247C 34 48            [12] 1213 	addc	a,#(_u >> 8)
      00247E F5 83            [12] 1214 	mov	dph,a
      002480 E0               [24] 1215 	movx	a,@dptr
      002481 FF               [12] 1216 	mov	r7,a
      002482 A8 10            [24] 1217 	mov	r0,_bp
      002484 08               [12] 1218 	inc	r0
      002485 EF               [12] 1219 	mov	a,r7
      002486 26               [12] 1220 	add	a,@r0
      002487 F6               [12] 1221 	mov	@r0,a
                                   1222 ;	life.c:136: UPDN(-1, 0);
      002488 78 23            [12] 1223 	mov	r0,#_x
      00248A E5 10            [12] 1224 	mov	a,_bp
      00248C 24 06            [12] 1225 	add	a,#0x06
      00248E F9               [12] 1226 	mov	r1,a
      00248F E6               [12] 1227 	mov	a,@r0
      002490 F7               [12] 1228 	mov	@r1,a
      002491 08               [12] 1229 	inc	r0
      002492 09               [12] 1230 	inc	r1
      002493 E6               [12] 1231 	mov	a,@r0
      002494 F7               [12] 1232 	mov	@r1,a
      002495 E5 10            [12] 1233 	mov	a,_bp
      002497 24 06            [12] 1234 	add	a,#0x06
      002499 F8               [12] 1235 	mov	r0,a
      00249A 74 20            [12] 1236 	mov	a,#0x20
      00249C 26               [12] 1237 	add	a,@r0
      00249D FE               [12] 1238 	mov	r6,a
      00249E E4               [12] 1239 	clr	a
      00249F 08               [12] 1240 	inc	r0
      0024A0 36               [12] 1241 	addc	a,@r0
      0024A1 FF               [12] 1242 	mov	r7,a
      0024A2 C0 05            [24] 1243 	push	ar5
      0024A4 C0 04            [24] 1244 	push	ar4
      0024A6 C0 03            [24] 1245 	push	ar3
      0024A8 C0 02            [24] 1246 	push	ar2
      0024AA 74 20            [12] 1247 	mov	a,#0x20
      0024AC C0 E0            [24] 1248 	push	acc
      0024AE E4               [12] 1249 	clr	a
      0024AF C0 E0            [24] 1250 	push	acc
      0024B1 8E 82            [24] 1251 	mov	dpl,r6
      0024B3 8F 83            [24] 1252 	mov	dph,r7
      0024B5 12 2C 6C         [24] 1253 	lcall	__modsint
      0024B8 C8               [12] 1254 	xch	a,r0
      0024B9 E5 10            [12] 1255 	mov	a,_bp
      0024BB 24 08            [12] 1256 	add	a,#0x08
      0024BD C8               [12] 1257 	xch	a,r0
      0024BE A6 82            [24] 1258 	mov	@r0,dpl
      0024C0 08               [12] 1259 	inc	r0
      0024C1 A6 83            [24] 1260 	mov	@r0,dph
      0024C3 15 81            [12] 1261 	dec	sp
      0024C5 15 81            [12] 1262 	dec	sp
      0024C7 D0 02            [24] 1263 	pop	ar2
      0024C9 D0 03            [24] 1264 	pop	ar3
      0024CB E5 10            [12] 1265 	mov	a,_bp
      0024CD 24 08            [12] 1266 	add	a,#0x08
      0024CF F8               [12] 1267 	mov	r0,a
      0024D0 E6               [12] 1268 	mov	a,@r0
      0024D1 2A               [12] 1269 	add	a,r2
      0024D2 FE               [12] 1270 	mov	r6,a
      0024D3 08               [12] 1271 	inc	r0
      0024D4 E6               [12] 1272 	mov	a,@r0
      0024D5 3B               [12] 1273 	addc	a,r3
      0024D6 FF               [12] 1274 	mov	r7,a
      0024D7 EE               [12] 1275 	mov	a,r6
      0024D8 24 00            [12] 1276 	add	a,#_u
      0024DA F5 82            [12] 1277 	mov	dpl,a
      0024DC EF               [12] 1278 	mov	a,r7
      0024DD 34 48            [12] 1279 	addc	a,#(_u >> 8)
      0024DF F5 83            [12] 1280 	mov	dph,a
      0024E1 E0               [24] 1281 	movx	a,@dptr
      0024E2 FF               [12] 1282 	mov	r7,a
      0024E3 A8 10            [24] 1283 	mov	r0,_bp
      0024E5 08               [12] 1284 	inc	r0
      0024E6 EF               [12] 1285 	mov	a,r7
      0024E7 26               [12] 1286 	add	a,@r0
      0024E8 F6               [12] 1287 	mov	@r0,a
                                   1288 ;	life.c:137: UPDN(-1, 1);
      0024E9 E5 10            [12] 1289 	mov	a,_bp
      0024EB 24 06            [12] 1290 	add	a,#0x06
      0024ED F8               [12] 1291 	mov	r0,a
      0024EE 74 21            [12] 1292 	mov	a,#0x21
      0024F0 26               [12] 1293 	add	a,@r0
      0024F1 FE               [12] 1294 	mov	r6,a
      0024F2 E4               [12] 1295 	clr	a
      0024F3 08               [12] 1296 	inc	r0
      0024F4 36               [12] 1297 	addc	a,@r0
      0024F5 FF               [12] 1298 	mov	r7,a
      0024F6 C0 03            [24] 1299 	push	ar3
      0024F8 C0 02            [24] 1300 	push	ar2
      0024FA 74 20            [12] 1301 	mov	a,#0x20
      0024FC C0 E0            [24] 1302 	push	acc
      0024FE E4               [12] 1303 	clr	a
      0024FF C0 E0            [24] 1304 	push	acc
      002501 8E 82            [24] 1305 	mov	dpl,r6
      002503 8F 83            [24] 1306 	mov	dph,r7
      002505 12 2C 6C         [24] 1307 	lcall	__modsint
      002508 AE 82            [24] 1308 	mov	r6,dpl
      00250A AF 83            [24] 1309 	mov	r7,dph
      00250C 15 81            [12] 1310 	dec	sp
      00250E 15 81            [12] 1311 	dec	sp
      002510 D0 02            [24] 1312 	pop	ar2
      002512 D0 03            [24] 1313 	pop	ar3
      002514 D0 04            [24] 1314 	pop	ar4
      002516 D0 05            [24] 1315 	pop	ar5
      002518 EE               [12] 1316 	mov	a,r6
      002519 2A               [12] 1317 	add	a,r2
      00251A FA               [12] 1318 	mov	r2,a
      00251B EF               [12] 1319 	mov	a,r7
      00251C 3B               [12] 1320 	addc	a,r3
      00251D FB               [12] 1321 	mov	r3,a
      00251E EA               [12] 1322 	mov	a,r2
      00251F 24 00            [12] 1323 	add	a,#_u
      002521 F5 82            [12] 1324 	mov	dpl,a
      002523 EB               [12] 1325 	mov	a,r3
      002524 34 48            [12] 1326 	addc	a,#(_u >> 8)
      002526 F5 83            [12] 1327 	mov	dph,a
      002528 E0               [24] 1328 	movx	a,@dptr
      002529 FB               [12] 1329 	mov	r3,a
      00252A A8 10            [24] 1330 	mov	r0,_bp
      00252C 08               [12] 1331 	inc	r0
      00252D EB               [12] 1332 	mov	a,r3
      00252E 26               [12] 1333 	add	a,@r0
      00252F F6               [12] 1334 	mov	@r0,a
                                   1335 ;	life.c:138: UPDN(0, -1);
      002530 78 25            [12] 1336 	mov	r0,#_y
      002532 E5 10            [12] 1337 	mov	a,_bp
      002534 24 0A            [12] 1338 	add	a,#0x0a
      002536 F9               [12] 1339 	mov	r1,a
      002537 E6               [12] 1340 	mov	a,@r0
      002538 F7               [12] 1341 	mov	@r1,a
      002539 08               [12] 1342 	inc	r0
      00253A 09               [12] 1343 	inc	r1
      00253B E6               [12] 1344 	mov	a,@r0
      00253C F7               [12] 1345 	mov	@r1,a
      00253D E5 10            [12] 1346 	mov	a,_bp
      00253F 24 0A            [12] 1347 	add	a,#0x0a
      002541 F8               [12] 1348 	mov	r0,a
      002542 74 40            [12] 1349 	mov	a,#0x40
      002544 26               [12] 1350 	add	a,@r0
      002545 FA               [12] 1351 	mov	r2,a
      002546 E4               [12] 1352 	clr	a
      002547 08               [12] 1353 	inc	r0
      002548 36               [12] 1354 	addc	a,@r0
      002549 FB               [12] 1355 	mov	r3,a
      00254A C0 07            [24] 1356 	push	ar7
      00254C C0 06            [24] 1357 	push	ar6
      00254E C0 05            [24] 1358 	push	ar5
      002550 C0 04            [24] 1359 	push	ar4
      002552 74 40            [12] 1360 	mov	a,#0x40
      002554 C0 E0            [24] 1361 	push	acc
      002556 E4               [12] 1362 	clr	a
      002557 C0 E0            [24] 1363 	push	acc
      002559 8A 82            [24] 1364 	mov	dpl,r2
      00255B 8B 83            [24] 1365 	mov	dph,r3
      00255D 12 2C 6C         [24] 1366 	lcall	__modsint
      002560 AA 82            [24] 1367 	mov	r2,dpl
      002562 AB 83            [24] 1368 	mov	r3,dph
      002564 15 81            [12] 1369 	dec	sp
      002566 15 81            [12] 1370 	dec	sp
      002568 D0 04            [24] 1371 	pop	ar4
      00256A D0 05            [24] 1372 	pop	ar5
      00256C D0 06            [24] 1373 	pop	ar6
      00256E D0 07            [24] 1374 	pop	ar7
      002570 E5 10            [12] 1375 	mov	a,_bp
      002572 24 0C            [12] 1376 	add	a,#0x0c
      002574 F8               [12] 1377 	mov	r0,a
      002575 A6 02            [24] 1378 	mov	@r0,ar2
      002577 EB               [12] 1379 	mov	a,r3
      002578 C4               [12] 1380 	swap	a
      002579 23               [12] 1381 	rl	a
      00257A 54 E0            [12] 1382 	anl	a,#0xe0
      00257C C6               [12] 1383 	xch	a,@r0
      00257D C4               [12] 1384 	swap	a
      00257E 23               [12] 1385 	rl	a
      00257F C6               [12] 1386 	xch	a,@r0
      002580 66               [12] 1387 	xrl	a,@r0
      002581 C6               [12] 1388 	xch	a,@r0
      002582 54 E0            [12] 1389 	anl	a,#0xe0
      002584 C6               [12] 1390 	xch	a,@r0
      002585 66               [12] 1391 	xrl	a,@r0
      002586 08               [12] 1392 	inc	r0
      002587 F6               [12] 1393 	mov	@r0,a
      002588 E5 10            [12] 1394 	mov	a,_bp
      00258A 24 0C            [12] 1395 	add	a,#0x0c
      00258C F8               [12] 1396 	mov	r0,a
      00258D EC               [12] 1397 	mov	a,r4
      00258E 26               [12] 1398 	add	a,@r0
      00258F FA               [12] 1399 	mov	r2,a
      002590 ED               [12] 1400 	mov	a,r5
      002591 08               [12] 1401 	inc	r0
      002592 36               [12] 1402 	addc	a,@r0
      002593 FB               [12] 1403 	mov	r3,a
      002594 EA               [12] 1404 	mov	a,r2
      002595 24 00            [12] 1405 	add	a,#_u
      002597 F5 82            [12] 1406 	mov	dpl,a
      002599 EB               [12] 1407 	mov	a,r3
      00259A 34 48            [12] 1408 	addc	a,#(_u >> 8)
      00259C F5 83            [12] 1409 	mov	dph,a
      00259E E0               [24] 1410 	movx	a,@dptr
      00259F FB               [12] 1411 	mov	r3,a
      0025A0 A8 10            [24] 1412 	mov	r0,_bp
      0025A2 08               [12] 1413 	inc	r0
      0025A3 EB               [12] 1414 	mov	a,r3
      0025A4 26               [12] 1415 	add	a,@r0
      0025A5 F6               [12] 1416 	mov	@r0,a
                                   1417 ;	life.c:139: UPDN(0, 0);
      0025A6 E5 10            [12] 1418 	mov	a,_bp
      0025A8 24 0C            [12] 1419 	add	a,#0x0c
      0025AA F8               [12] 1420 	mov	r0,a
      0025AB E5 10            [12] 1421 	mov	a,_bp
      0025AD 24 08            [12] 1422 	add	a,#0x08
      0025AF F9               [12] 1423 	mov	r1,a
      0025B0 E7               [12] 1424 	mov	a,@r1
      0025B1 26               [12] 1425 	add	a,@r0
      0025B2 FA               [12] 1426 	mov	r2,a
      0025B3 09               [12] 1427 	inc	r1
      0025B4 E7               [12] 1428 	mov	a,@r1
      0025B5 08               [12] 1429 	inc	r0
      0025B6 36               [12] 1430 	addc	a,@r0
      0025B7 FB               [12] 1431 	mov	r3,a
      0025B8 EA               [12] 1432 	mov	a,r2
      0025B9 24 00            [12] 1433 	add	a,#_u
      0025BB F5 82            [12] 1434 	mov	dpl,a
      0025BD EB               [12] 1435 	mov	a,r3
      0025BE 34 48            [12] 1436 	addc	a,#(_u >> 8)
      0025C0 F5 83            [12] 1437 	mov	dph,a
      0025C2 E0               [24] 1438 	movx	a,@dptr
      0025C3 FB               [12] 1439 	mov	r3,a
      0025C4 A8 10            [24] 1440 	mov	r0,_bp
      0025C6 08               [12] 1441 	inc	r0
      0025C7 EB               [12] 1442 	mov	a,r3
      0025C8 26               [12] 1443 	add	a,@r0
      0025C9 F6               [12] 1444 	mov	@r0,a
                                   1445 ;	life.c:140: UPDN(0, 1);
      0025CA E5 10            [12] 1446 	mov	a,_bp
      0025CC 24 0C            [12] 1447 	add	a,#0x0c
      0025CE F8               [12] 1448 	mov	r0,a
      0025CF EE               [12] 1449 	mov	a,r6
      0025D0 26               [12] 1450 	add	a,@r0
      0025D1 FA               [12] 1451 	mov	r2,a
      0025D2 EF               [12] 1452 	mov	a,r7
      0025D3 08               [12] 1453 	inc	r0
      0025D4 36               [12] 1454 	addc	a,@r0
      0025D5 FB               [12] 1455 	mov	r3,a
      0025D6 EA               [12] 1456 	mov	a,r2
      0025D7 24 00            [12] 1457 	add	a,#_u
      0025D9 F5 82            [12] 1458 	mov	dpl,a
      0025DB EB               [12] 1459 	mov	a,r3
      0025DC 34 48            [12] 1460 	addc	a,#(_u >> 8)
      0025DE F5 83            [12] 1461 	mov	dph,a
      0025E0 E0               [24] 1462 	movx	a,@dptr
      0025E1 FB               [12] 1463 	mov	r3,a
      0025E2 A8 10            [24] 1464 	mov	r0,_bp
      0025E4 08               [12] 1465 	inc	r0
      0025E5 E5 10            [12] 1466 	mov	a,_bp
      0025E7 24 0C            [12] 1467 	add	a,#0x0c
      0025E9 F9               [12] 1468 	mov	r1,a
      0025EA EB               [12] 1469 	mov	a,r3
      0025EB 26               [12] 1470 	add	a,@r0
      0025EC F7               [12] 1471 	mov	@r1,a
                                   1472 ;	life.c:141: UPDN(1, -1);
      0025ED E5 10            [12] 1473 	mov	a,_bp
      0025EF 24 0A            [12] 1474 	add	a,#0x0a
      0025F1 F8               [12] 1475 	mov	r0,a
      0025F2 74 41            [12] 1476 	mov	a,#0x41
      0025F4 26               [12] 1477 	add	a,@r0
      0025F5 FA               [12] 1478 	mov	r2,a
      0025F6 E4               [12] 1479 	clr	a
      0025F7 08               [12] 1480 	inc	r0
      0025F8 36               [12] 1481 	addc	a,@r0
      0025F9 FB               [12] 1482 	mov	r3,a
      0025FA C0 07            [24] 1483 	push	ar7
      0025FC C0 06            [24] 1484 	push	ar6
      0025FE C0 05            [24] 1485 	push	ar5
      002600 C0 04            [24] 1486 	push	ar4
      002602 74 40            [12] 1487 	mov	a,#0x40
      002604 C0 E0            [24] 1488 	push	acc
      002606 E4               [12] 1489 	clr	a
      002607 C0 E0            [24] 1490 	push	acc
      002609 8A 82            [24] 1491 	mov	dpl,r2
      00260B 8B 83            [24] 1492 	mov	dph,r3
      00260D 12 2C 6C         [24] 1493 	lcall	__modsint
      002610 AA 82            [24] 1494 	mov	r2,dpl
      002612 AB 83            [24] 1495 	mov	r3,dph
      002614 15 81            [12] 1496 	dec	sp
      002616 15 81            [12] 1497 	dec	sp
      002618 D0 04            [24] 1498 	pop	ar4
      00261A D0 05            [24] 1499 	pop	ar5
      00261C D0 06            [24] 1500 	pop	ar6
      00261E D0 07            [24] 1501 	pop	ar7
      002620 EB               [12] 1502 	mov	a,r3
      002621 C4               [12] 1503 	swap	a
      002622 23               [12] 1504 	rl	a
      002623 54 E0            [12] 1505 	anl	a,#0xe0
      002625 CA               [12] 1506 	xch	a,r2
      002626 C4               [12] 1507 	swap	a
      002627 23               [12] 1508 	rl	a
      002628 CA               [12] 1509 	xch	a,r2
      002629 6A               [12] 1510 	xrl	a,r2
      00262A CA               [12] 1511 	xch	a,r2
      00262B 54 E0            [12] 1512 	anl	a,#0xe0
      00262D CA               [12] 1513 	xch	a,r2
      00262E 6A               [12] 1514 	xrl	a,r2
      00262F FB               [12] 1515 	mov	r3,a
      002630 EC               [12] 1516 	mov	a,r4
      002631 2A               [12] 1517 	add	a,r2
      002632 FC               [12] 1518 	mov	r4,a
      002633 ED               [12] 1519 	mov	a,r5
      002634 3B               [12] 1520 	addc	a,r3
      002635 FD               [12] 1521 	mov	r5,a
      002636 EC               [12] 1522 	mov	a,r4
      002637 24 00            [12] 1523 	add	a,#_u
      002639 F5 82            [12] 1524 	mov	dpl,a
      00263B ED               [12] 1525 	mov	a,r5
      00263C 34 48            [12] 1526 	addc	a,#(_u >> 8)
      00263E F5 83            [12] 1527 	mov	dph,a
      002640 E0               [24] 1528 	movx	a,@dptr
      002641 FD               [12] 1529 	mov	r5,a
      002642 E5 10            [12] 1530 	mov	a,_bp
      002644 24 0C            [12] 1531 	add	a,#0x0c
      002646 F8               [12] 1532 	mov	r0,a
      002647 E5 10            [12] 1533 	mov	a,_bp
      002649 24 0C            [12] 1534 	add	a,#0x0c
      00264B F9               [12] 1535 	mov	r1,a
      00264C ED               [12] 1536 	mov	a,r5
      00264D 26               [12] 1537 	add	a,@r0
      00264E F7               [12] 1538 	mov	@r1,a
                                   1539 ;	life.c:142: UPDN(1, 0);
      00264F E5 10            [12] 1540 	mov	a,_bp
      002651 24 08            [12] 1541 	add	a,#0x08
      002653 F8               [12] 1542 	mov	r0,a
      002654 E6               [12] 1543 	mov	a,@r0
      002655 2A               [12] 1544 	add	a,r2
      002656 FC               [12] 1545 	mov	r4,a
      002657 08               [12] 1546 	inc	r0
      002658 E6               [12] 1547 	mov	a,@r0
      002659 3B               [12] 1548 	addc	a,r3
      00265A FD               [12] 1549 	mov	r5,a
      00265B EC               [12] 1550 	mov	a,r4
      00265C 24 00            [12] 1551 	add	a,#_u
      00265E F5 82            [12] 1552 	mov	dpl,a
      002660 ED               [12] 1553 	mov	a,r5
      002661 34 48            [12] 1554 	addc	a,#(_u >> 8)
      002663 F5 83            [12] 1555 	mov	dph,a
      002665 E0               [24] 1556 	movx	a,@dptr
      002666 FD               [12] 1557 	mov	r5,a
      002667 E5 10            [12] 1558 	mov	a,_bp
      002669 24 0C            [12] 1559 	add	a,#0x0c
      00266B F8               [12] 1560 	mov	r0,a
      00266C ED               [12] 1561 	mov	a,r5
      00266D 26               [12] 1562 	add	a,@r0
      00266E FD               [12] 1563 	mov	r5,a
                                   1564 ;	life.c:143: UPDN(1, 1);
      00266F 78 31            [12] 1565 	mov	r0,#_dy
      002671 76 01            [12] 1566 	mov	@r0,#0x01
      002673 08               [12] 1567 	inc	r0
      002674 76 00            [12] 1568 	mov	@r0,#0x00
      002676 78 2F            [12] 1569 	mov	r0,#_dx
      002678 76 01            [12] 1570 	mov	@r0,#0x01
      00267A 08               [12] 1571 	inc	r0
      00267B 76 00            [12] 1572 	mov	@r0,#0x00
      00267D EE               [12] 1573 	mov	a,r6
      00267E 2A               [12] 1574 	add	a,r2
      00267F FE               [12] 1575 	mov	r6,a
      002680 EF               [12] 1576 	mov	a,r7
      002681 3B               [12] 1577 	addc	a,r3
      002682 FF               [12] 1578 	mov	r7,a
      002683 EE               [12] 1579 	mov	a,r6
      002684 24 00            [12] 1580 	add	a,#_u
      002686 F5 82            [12] 1581 	mov	dpl,a
      002688 EF               [12] 1582 	mov	a,r7
      002689 34 48            [12] 1583 	addc	a,#(_u >> 8)
      00268B F5 83            [12] 1584 	mov	dph,a
      00268D E0               [24] 1585 	movx	a,@dptr
      00268E 2D               [12] 1586 	add	a,r5
      00268F FF               [12] 1587 	mov	r7,a
      002690 78 2C            [12] 1588 	mov	r0,#_n
      002692 A6 07            [24] 1589 	mov	@r0,ar7
                                   1590 ;	life.c:146: nu[A2D(W, y, x)] = (n == 3) || ((n == 2) && u[A2D(W, y, x)]);
      002694 A8 10            [24] 1591 	mov	r0,_bp
      002696 08               [12] 1592 	inc	r0
      002697 08               [12] 1593 	inc	r0
      002698 E6               [12] 1594 	mov	a,@r0
      002699 24 00            [12] 1595 	add	a,#_nu
      00269B FD               [12] 1596 	mov	r5,a
      00269C 08               [12] 1597 	inc	r0
      00269D E6               [12] 1598 	mov	a,@r0
      00269E 34 50            [12] 1599 	addc	a,#(_nu >> 8)
      0026A0 FE               [12] 1600 	mov	r6,a
      0026A1 BF 03 02         [24] 1601 	cjne	r7,#0x03,00359$
      0026A4 80 28            [24] 1602 	sjmp	00209$
      0026A6                       1603 00359$:
      0026A6 BF 02 21         [24] 1604 	cjne	r7,#0x02,00208$
      0026A9 E5 10            [12] 1605 	mov	a,_bp
      0026AB 24 04            [12] 1606 	add	a,#0x04
      0026AD F8               [12] 1607 	mov	r0,a
      0026AE E5 10            [12] 1608 	mov	a,_bp
      0026B0 24 06            [12] 1609 	add	a,#0x06
      0026B2 F9               [12] 1610 	mov	r1,a
      0026B3 E7               [12] 1611 	mov	a,@r1
      0026B4 26               [12] 1612 	add	a,@r0
      0026B5 FC               [12] 1613 	mov	r4,a
      0026B6 09               [12] 1614 	inc	r1
      0026B7 E7               [12] 1615 	mov	a,@r1
      0026B8 08               [12] 1616 	inc	r0
      0026B9 36               [12] 1617 	addc	a,@r0
      0026BA FF               [12] 1618 	mov	r7,a
      0026BB EC               [12] 1619 	mov	a,r4
      0026BC 24 00            [12] 1620 	add	a,#_u
      0026BE FC               [12] 1621 	mov	r4,a
      0026BF EF               [12] 1622 	mov	a,r7
      0026C0 34 48            [12] 1623 	addc	a,#(_u >> 8)
      0026C2 FF               [12] 1624 	mov	r7,a
      0026C3 8C 82            [24] 1625 	mov	dpl,r4
      0026C5 8F 83            [24] 1626 	mov	dph,r7
      0026C7 E0               [24] 1627 	movx	a,@dptr
      0026C8 70 04            [24] 1628 	jnz	00209$
      0026CA                       1629 00208$:
                                   1630 ;	assignBit
      0026CA C2 00            [12] 1631 	clr	b0
      0026CC 80 02            [24] 1632 	sjmp	00210$
      0026CE                       1633 00209$:
                                   1634 ;	assignBit
      0026CE D2 00            [12] 1635 	setb	b0
      0026D0                       1636 00210$:
      0026D0 A2 00            [12] 1637 	mov	c,b0
      0026D2 E4               [12] 1638 	clr	a
      0026D3 33               [12] 1639 	rlc	a
      0026D4 8D 82            [24] 1640 	mov	dpl,r5
      0026D6 8E 83            [24] 1641 	mov	dph,r6
      0026D8 F0               [24] 1642 	movx	@dptr,a
                                   1643 ;	life.c:147: cycle2 |= pu[A2D(W, y, x)] ^ nu[A2D(W, y, x)];
      0026D9 78 25            [12] 1644 	mov	r0,#_y
      0026DB 86 06            [24] 1645 	mov	ar6,@r0
      0026DD 08               [12] 1646 	inc	r0
      0026DE E6               [12] 1647 	mov	a,@r0
      0026DF C4               [12] 1648 	swap	a
      0026E0 23               [12] 1649 	rl	a
      0026E1 54 E0            [12] 1650 	anl	a,#0xe0
      0026E3 CE               [12] 1651 	xch	a,r6
      0026E4 C4               [12] 1652 	swap	a
      0026E5 23               [12] 1653 	rl	a
      0026E6 CE               [12] 1654 	xch	a,r6
      0026E7 6E               [12] 1655 	xrl	a,r6
      0026E8 CE               [12] 1656 	xch	a,r6
      0026E9 54 E0            [12] 1657 	anl	a,#0xe0
      0026EB CE               [12] 1658 	xch	a,r6
      0026EC 6E               [12] 1659 	xrl	a,r6
      0026ED FF               [12] 1660 	mov	r7,a
      0026EE 78 23            [12] 1661 	mov	r0,#_x
      0026F0 E6               [12] 1662 	mov	a,@r0
      0026F1 2E               [12] 1663 	add	a,r6
      0026F2 FE               [12] 1664 	mov	r6,a
      0026F3 08               [12] 1665 	inc	r0
      0026F4 E6               [12] 1666 	mov	a,@r0
      0026F5 3F               [12] 1667 	addc	a,r7
      0026F6 FF               [12] 1668 	mov	r7,a
      0026F7 EE               [12] 1669 	mov	a,r6
      0026F8 24 00            [12] 1670 	add	a,#_pu
      0026FA F5 82            [12] 1671 	mov	dpl,a
      0026FC EF               [12] 1672 	mov	a,r7
      0026FD 34 40            [12] 1673 	addc	a,#(_pu >> 8)
      0026FF F5 83            [12] 1674 	mov	dph,a
      002701 E0               [24] 1675 	movx	a,@dptr
      002702 FD               [12] 1676 	mov	r5,a
      002703 EE               [12] 1677 	mov	a,r6
      002704 24 00            [12] 1678 	add	a,#_nu
      002706 F5 82            [12] 1679 	mov	dpl,a
      002708 EF               [12] 1680 	mov	a,r7
      002709 34 50            [12] 1681 	addc	a,#(_nu >> 8)
      00270B F5 83            [12] 1682 	mov	dph,a
      00270D E0               [24] 1683 	movx	a,@dptr
      00270E FC               [12] 1684 	mov	r4,a
      00270F 6D               [12] 1685 	xrl	a,r5
      002710 78 2E            [12] 1686 	mov	r0,#_cycle2
      002712 46               [12] 1687 	orl	a,@r0
      002713 F6               [12] 1688 	mov	@r0,a
                                   1689 ;	life.c:148: fixed |= u[A2D(W, y, x)] ^ nu[A2D(W, y, x)];
      002714 EE               [12] 1690 	mov	a,r6
      002715 24 00            [12] 1691 	add	a,#_u
      002717 F5 82            [12] 1692 	mov	dpl,a
      002719 EF               [12] 1693 	mov	a,r7
      00271A 34 48            [12] 1694 	addc	a,#(_u >> 8)
      00271C F5 83            [12] 1695 	mov	dph,a
      00271E E0               [24] 1696 	movx	a,@dptr
      00271F FF               [12] 1697 	mov	r7,a
      002720 EC               [12] 1698 	mov	a,r4
      002721 6F               [12] 1699 	xrl	a,r7
      002722 78 2D            [12] 1700 	mov	r0,#_fixed
      002724 46               [12] 1701 	orl	a,@r0
      002725 F6               [12] 1702 	mov	@r0,a
                                   1703 ;	life.c:127: for (x = 0; x < W; x++) {
      002726 78 23            [12] 1704 	mov	r0,#_x
      002728 06               [12] 1705 	inc	@r0
      002729 B6 00 02         [24] 1706 	cjne	@r0,#0x00,00363$
      00272C 08               [12] 1707 	inc	r0
      00272D 06               [12] 1708 	inc	@r0
      00272E                       1709 00363$:
      00272E 78 23            [12] 1710 	mov	r0,#_x
      002730 C3               [12] 1711 	clr	c
      002731 E6               [12] 1712 	mov	a,@r0
      002732 94 20            [12] 1713 	subb	a,#0x20
      002734 08               [12] 1714 	inc	r0
      002735 E6               [12] 1715 	mov	a,@r0
      002736 64 80            [12] 1716 	xrl	a,#0x80
      002738 94 80            [12] 1717 	subb	a,#0x80
      00273A 50 03            [24] 1718 	jnc	00364$
      00273C 02 23 B8         [24] 1719 	ljmp	00196$
      00273F                       1720 00364$:
                                   1721 ;	life.c:124: for (y = 0; y < H; y++) {
      00273F 78 25            [12] 1722 	mov	r0,#_y
      002741 06               [12] 1723 	inc	@r0
      002742 B6 00 02         [24] 1724 	cjne	@r0,#0x00,00365$
      002745 08               [12] 1725 	inc	r0
      002746 06               [12] 1726 	inc	@r0
      002747                       1727 00365$:
      002747 78 25            [12] 1728 	mov	r0,#_y
      002749 C3               [12] 1729 	clr	c
      00274A E6               [12] 1730 	mov	a,@r0
      00274B 94 40            [12] 1731 	subb	a,#0x40
      00274D 08               [12] 1732 	inc	r0
      00274E E6               [12] 1733 	mov	a,@r0
      00274F 64 80            [12] 1734 	xrl	a,#0x80
      002751 94 80            [12] 1735 	subb	a,#0x80
      002753 50 03            [24] 1736 	jnc	00366$
      002755 02 23 90         [24] 1737 	ljmp	00198$
      002758                       1738 00366$:
                                   1739 ;	life.c:152: cycle2 = !cycle2;
      002758 78 2E            [12] 1740 	mov	r0,#_cycle2
      00275A E6               [12] 1741 	mov	a,@r0
      00275B B4 01 00         [24] 1742 	cjne	a,#0x01,00367$
      00275E                       1743 00367$:
      00275E 92 00            [24] 1744 	mov	b0,c
      002760 78 2E            [12] 1745 	mov	r0,#_cycle2
      002762 E4               [12] 1746 	clr	a
      002763 33               [12] 1747 	rlc	a
      002764 F6               [12] 1748 	mov	@r0,a
                                   1749 ;	life.c:153: fixed = !fixed;
      002765 78 2D            [12] 1750 	mov	r0,#_fixed
      002767 E6               [12] 1751 	mov	a,@r0
      002768 B4 01 00         [24] 1752 	cjne	a,#0x01,00368$
      00276B                       1753 00368$:
      00276B 92 00            [24] 1754 	mov	b0,c
      00276D 78 2D            [12] 1755 	mov	r0,#_fixed
      00276F E4               [12] 1756 	clr	a
      002770 33               [12] 1757 	rlc	a
      002771 F6               [12] 1758 	mov	@r0,a
                                   1759 ;	life.c:155: memcpy(pu, u, sizeof (u));
      002772 E4               [12] 1760 	clr	a
      002773 C0 E0            [24] 1761 	push	acc
      002775 74 08            [12] 1762 	mov	a,#0x08
      002777 C0 E0            [24] 1763 	push	acc
      002779 74 00            [12] 1764 	mov	a,#_u
      00277B C0 E0            [24] 1765 	push	acc
      00277D 74 48            [12] 1766 	mov	a,#(_u >> 8)
      00277F C0 E0            [24] 1767 	push	acc
      002781 E4               [12] 1768 	clr	a
      002782 C0 E0            [24] 1769 	push	acc
      002784 90 40 00         [24] 1770 	mov	dptr,#_pu
      002787 75 F0 00         [24] 1771 	mov	b,#0x00
      00278A 12 2B 2C         [24] 1772 	lcall	___memcpy
      00278D E5 81            [12] 1773 	mov	a,sp
      00278F 24 FB            [12] 1774 	add	a,#0xfb
      002791 F5 81            [12] 1775 	mov	sp,a
                                   1776 ;	life.c:156: memcpy(u, nu, sizeof (nu));
      002793 E4               [12] 1777 	clr	a
      002794 C0 E0            [24] 1778 	push	acc
      002796 74 08            [12] 1779 	mov	a,#0x08
      002798 C0 E0            [24] 1780 	push	acc
      00279A 74 00            [12] 1781 	mov	a,#_nu
      00279C C0 E0            [24] 1782 	push	acc
      00279E 74 50            [12] 1783 	mov	a,#(_nu >> 8)
      0027A0 C0 E0            [24] 1784 	push	acc
      0027A2 E4               [12] 1785 	clr	a
      0027A3 C0 E0            [24] 1786 	push	acc
      0027A5 90 48 00         [24] 1787 	mov	dptr,#_u
      0027A8 75 F0 00         [24] 1788 	mov	b,#0x00
      0027AB 12 2B 2C         [24] 1789 	lcall	___memcpy
      0027AE E5 81            [12] 1790 	mov	a,sp
      0027B0 24 FB            [12] 1791 	add	a,#0xfb
      0027B2 F5 81            [12] 1792 	mov	sp,a
                                   1793 ;	life.c:194: if (fixed || cycle2) {
      0027B4 78 2D            [12] 1794 	mov	r0,#_fixed
      0027B6 E6               [12] 1795 	mov	a,@r0
      0027B7 70 08            [24] 1796 	jnz	00126$
      0027B9 78 2E            [12] 1797 	mov	r0,#_cycle2
      0027BB E6               [12] 1798 	mov	a,@r0
      0027BC 70 03            [24] 1799 	jnz	00370$
      0027BE 02 23 68         [24] 1800 	ljmp	00202$
      0027C1                       1801 00370$:
      0027C1                       1802 00126$:
                                   1803 ;	life.c:195: printstr("DONE ");
      0027C1 90 2D AD         [24] 1804 	mov	dptr,#___str_6
      0027C4 75 F0 80         [24] 1805 	mov	b,#0x80
      0027C7 12 28 47         [24] 1806 	lcall	_printstr
                                   1807 ;	life.c:196: if (fixed) printstr("FIXED\r\n");
      0027CA 78 2D            [12] 1808 	mov	r0,#_fixed
      0027CC E6               [12] 1809 	mov	a,@r0
      0027CD 60 0B            [24] 1810 	jz	00124$
      0027CF 90 2D B3         [24] 1811 	mov	dptr,#___str_7
      0027D2 75 F0 80         [24] 1812 	mov	b,#0x80
      0027D5 12 28 47         [24] 1813 	lcall	_printstr
      0027D8 80 09            [24] 1814 	sjmp	00125$
      0027DA                       1815 00124$:
                                   1816 ;	life.c:197: else printstr("CYCLE2\r\n");
      0027DA 90 2D BB         [24] 1817 	mov	dptr,#___str_8
      0027DD 75 F0 80         [24] 1818 	mov	b,#0x80
      0027E0 12 28 47         [24] 1819 	lcall	_printstr
      0027E3                       1820 00125$:
                                   1821 ;	life.c:198: (void)getchar();
      0027E3 12 28 20         [24] 1822 	lcall	_getchar
                                   1823 ;	life.c:199: break;
      0027E6                       1824 00129$:
                                   1825 ;	life.c:203: if (i1) {
      0027E6 78 22            [12] 1826 	mov	r0,#_i1
      0027E8 E6               [12] 1827 	mov	a,@r0
      0027E9 60 0C            [24] 1828 	jz	00205$
                                   1829 ;	life.c:204: printstr("BREAK\r\n");
      0027EB 90 2D C4         [24] 1830 	mov	dptr,#___str_9
      0027EE 75 F0 80         [24] 1831 	mov	b,#0x80
      0027F1 12 28 47         [24] 1832 	lcall	_printstr
                                   1833 ;	life.c:205: (void)getchar();
      0027F4 12 28 20         [24] 1834 	lcall	_getchar
      0027F7                       1835 00205$:
                                   1836 ;	life.c:168: for (i0 = 0; !i0; ) {		
      0027F7 78 21            [12] 1837 	mov	r0,#_i0
      0027F9 E6               [12] 1838 	mov	a,@r0
      0027FA 70 03            [24] 1839 	jnz	00373$
      0027FC 02 21 9E         [24] 1840 	ljmp	00204$
      0027FF                       1841 00373$:
                                   1842 ;	life.c:209: terminate:
      0027FF                       1843 00133$:
                                   1844 ;	life.c:210: EA = 0;
                                   1845 ;	assignBit
      0027FF C2 AF            [12] 1846 	clr	_EA
                                   1847 ;	life.c:211: printstr("TERM\r\n");
      002801 90 2D CC         [24] 1848 	mov	dptr,#___str_10
      002804 75 F0 80         [24] 1849 	mov	b,#0x80
      002807 12 28 47         [24] 1850 	lcall	_printstr
                                   1851 ;	life.c:212: (void)getchar();
      00280A 12 28 20         [24] 1852 	lcall	_getchar
                                   1853 ;	life.c:214: PCON |= 2;
      00280D 43 87 02         [24] 1854 	orl	_PCON,#0x02
                                   1855 ;	life.c:216: return;
                                   1856 ;	life.c:217: }
      002810 85 10 81         [24] 1857 	mov	sp,_bp
      002813 D0 10            [24] 1858 	pop	_bp
      002815 22               [24] 1859 	ret
                                   1860 	.area CSEG    (CODE)
                                   1861 	.area CONST   (CODE)
                                   1862 	.area CONST   (CODE)
      002D78                       1863 ___str_0:
      002D78 1B                    1864 	.db 0x1b
      002D79 5B 32 4A              1865 	.ascii "[2J"
      002D7C 1B                    1866 	.db 0x1b
      002D7D 5B 6D 47 45 4E 20     1867 	.ascii "[mGEN "
      002D83 00                    1868 	.db 0x00
                                   1869 	.area CSEG    (CODE)
                                   1870 	.area CONST   (CODE)
      002D84                       1871 ___str_1:
      002D84 0D                    1872 	.db 0x0d
      002D85 0A                    1873 	.db 0x0a
      002D86 00                    1874 	.db 0x00
                                   1875 	.area CSEG    (CODE)
                                   1876 	.area CONST   (CODE)
      002D87                       1877 ___str_2:
      002D87 4C 4F 41 44 20 3C     1878 	.ascii "LOAD <"
      002D8D 00                    1879 	.db 0x00
                                   1880 	.area CSEG    (CODE)
                                   1881 	.area CONST   (CODE)
      002D8E                       1882 ___str_3:
      002D8E 3E                    1883 	.ascii ">"
      002D8F 0D                    1884 	.db 0x0d
      002D90 0A                    1885 	.db 0x0a
      002D91 00                    1886 	.db 0x00
                                   1887 	.area CSEG    (CODE)
                                   1888 	.area CONST   (CODE)
      002D92                       1889 ___str_4:
      002D92 1B                    1890 	.db 0x1b
      002D93 5B 32 4A              1891 	.ascii "[2J"
      002D96 1B                    1892 	.db 0x1b
      002D97 5B 6D 4C 49 46 45 20  1893 	.ascii "[mLIFE INIT"
             49 4E 49 54
      002DA2 0D                    1894 	.db 0x0d
      002DA3 0A                    1895 	.db 0x0a
      002DA4 00                    1896 	.db 0x00
                                   1897 	.area CSEG    (CODE)
                                   1898 	.area CONST   (CODE)
      002DA5                       1899 ___str_5:
      002DA5 52 45 41 44 59        1900 	.ascii "READY"
      002DAA 0D                    1901 	.db 0x0d
      002DAB 0A                    1902 	.db 0x0a
      002DAC 00                    1903 	.db 0x00
                                   1904 	.area CSEG    (CODE)
                                   1905 	.area CONST   (CODE)
      002DAD                       1906 ___str_6:
      002DAD 44 4F 4E 45 20        1907 	.ascii "DONE "
      002DB2 00                    1908 	.db 0x00
                                   1909 	.area CSEG    (CODE)
                                   1910 	.area CONST   (CODE)
      002DB3                       1911 ___str_7:
      002DB3 46 49 58 45 44        1912 	.ascii "FIXED"
      002DB8 0D                    1913 	.db 0x0d
      002DB9 0A                    1914 	.db 0x0a
      002DBA 00                    1915 	.db 0x00
                                   1916 	.area CSEG    (CODE)
                                   1917 	.area CONST   (CODE)
      002DBB                       1918 ___str_8:
      002DBB 43 59 43 4C 45 32     1919 	.ascii "CYCLE2"
      002DC1 0D                    1920 	.db 0x0d
      002DC2 0A                    1921 	.db 0x0a
      002DC3 00                    1922 	.db 0x00
                                   1923 	.area CSEG    (CODE)
                                   1924 	.area CONST   (CODE)
      002DC4                       1925 ___str_9:
      002DC4 42 52 45 41 4B        1926 	.ascii "BREAK"
      002DC9 0D                    1927 	.db 0x0d
      002DCA 0A                    1928 	.db 0x0a
      002DCB 00                    1929 	.db 0x00
                                   1930 	.area CSEG    (CODE)
                                   1931 	.area CONST   (CODE)
      002DCC                       1932 ___str_10:
      002DCC 54 45 52 4D           1933 	.ascii "TERM"
      002DD0 0D                    1934 	.db 0x0d
      002DD1 0A                    1935 	.db 0x0a
      002DD2 00                    1936 	.db 0x00
                                   1937 	.area CSEG    (CODE)
                                   1938 	.area XINIT   (CODE)
                                   1939 	.area CABS    (ABS,CODE)
