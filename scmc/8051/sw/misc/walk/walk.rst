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
      000042                        293 __start__stack:
      000042                        294 	.ds	1
                                    295 
                                    296 ;--------------------------------------------------------
                                    297 ; indirectly addressable internal ram data
                                    298 ;--------------------------------------------------------
                                    299 	.area ISEG    (DATA)
      000021                        300 _i0:
      000021                        301 	.ds 1
      000022                        302 _neigh:
      000022                        303 	.ds 32
                                    304 ;--------------------------------------------------------
                                    305 ; absolute internal ram data
                                    306 ;--------------------------------------------------------
                                    307 	.area IABS    (ABS,DATA)
                                    308 	.area IABS    (ABS,DATA)
                                    309 ;--------------------------------------------------------
                                    310 ; bit data
                                    311 ;--------------------------------------------------------
                                    312 	.area BSEG    (BIT)
                                    313 ;--------------------------------------------------------
                                    314 ; paged external ram data
                                    315 ;--------------------------------------------------------
                                    316 	.area PSEG    (PAG,XDATA)
                                    317 ;--------------------------------------------------------
                                    318 ; external ram data
                                    319 ;--------------------------------------------------------
                                    320 	.area XSEG    (XDATA)
      004100                        321 _g:
      004100                        322 	.ds 9216
      006500                        323 _stack:
      006500                        324 	.ds 36864
      00F500                        325 _sp:
      00F500                        326 	.ds 2
      00F502                        327 _main_R_65536_64:
      00F502                        328 	.ds 2
                                    329 ;--------------------------------------------------------
                                    330 ; absolute external ram data
                                    331 ;--------------------------------------------------------
                                    332 	.area XABS    (ABS,XDATA)
                                    333 ;--------------------------------------------------------
                                    334 ; external initialized ram data
                                    335 ;--------------------------------------------------------
                                    336 	.area XISEG   (XDATA)
                                    337 	.area HOME    (CODE)
                                    338 	.area GSINIT0 (CODE)
                                    339 	.area GSINIT1 (CODE)
                                    340 	.area GSINIT2 (CODE)
                                    341 	.area GSINIT3 (CODE)
                                    342 	.area GSINIT4 (CODE)
                                    343 	.area GSINIT5 (CODE)
                                    344 	.area GSINIT  (CODE)
                                    345 	.area GSFINAL (CODE)
                                    346 	.area CSEG    (CODE)
                                    347 ;--------------------------------------------------------
                                    348 ; interrupt vector 
                                    349 ;--------------------------------------------------------
                                    350 	.area HOME    (CODE)
      002000                        351 __interrupt_vect:
      002000 02 20 09         [24]  352 	ljmp	__sdcc_gsinit_startup
      002003 02 20 EC         [24]  353 	ljmp	_int0
                                    354 ;--------------------------------------------------------
                                    355 ; global & static initialisations
                                    356 ;--------------------------------------------------------
                                    357 	.area HOME    (CODE)
                                    358 	.area GSINIT  (CODE)
                                    359 	.area GSFINAL (CODE)
                                    360 	.area GSINIT  (CODE)
                                    361 	.globl __sdcc_gsinit_startup
                                    362 	.globl __sdcc_program_startup
                                    363 	.globl __start__stack
                                    364 	.globl __mcs51_genXINIT
                                    365 	.globl __mcs51_genXRAMCLEAR
                                    366 	.globl __mcs51_genRAMCLEAR
                                    367 ;------------------------------------------------------------
                                    368 ;Allocation info for local variables in function 'main'
                                    369 ;------------------------------------------------------------
                                    370 ;initial                   Allocated to stack - _bp +7
                                    371 ;N                         Allocated to stack - _bp +11
                                    372 ;i                         Allocated to stack - _bp +5
                                    373 ;j                         Allocated to registers r2 r6 
                                    374 ;sloc0                     Allocated to stack - _bp +1
                                    375 ;sloc1                     Allocated to stack - _bp +3
                                    376 ;R                         Allocated with name '_main_R_65536_64'
                                    377 ;------------------------------------------------------------
                                    378 ;	walk.c:133: static volatile __xdata int *R = (__xdata int *)0xfffe;
      002062 90 F5 02         [24]  379 	mov	dptr,#_main_R_65536_64
      002065 74 FE            [12]  380 	mov	a,#0xfe
      002067 F0               [24]  381 	movx	@dptr,a
      002068 04               [12]  382 	inc	a
      002069 A3               [24]  383 	inc	dptr
      00206A F0               [24]  384 	movx	@dptr,a
                                    385 ;	walk.c:59: __idata static const struct node neigh[NMAX] = {
      00206B 78 22            [12]  386 	mov	r0,#_neigh
      00206D 76 FF            [12]  387 	mov	@r0,#0xff
      00206F 08               [12]  388 	inc	r0
      002070 76 FF            [12]  389 	mov	@r0,#0xff
      002072 78 24            [12]  390 	mov	r0,#(_neigh + 0x0002)
      002074 76 FF            [12]  391 	mov	@r0,#0xff
      002076 08               [12]  392 	inc	r0
      002077 76 FF            [12]  393 	mov	@r0,#0xff
      002079 78 26            [12]  394 	mov	r0,#(_neigh + 0x0004)
      00207B 76 FF            [12]  395 	mov	@r0,#0xff
      00207D 08               [12]  396 	inc	r0
      00207E 76 FF            [12]  397 	mov	@r0,#0xff
      002080 78 28            [12]  398 	mov	r0,#(_neigh + 0x0006)
      002082 76 00            [12]  399 	mov	@r0,#0x00
      002084 08               [12]  400 	inc	r0
      002085 76 00            [12]  401 	mov	@r0,#0x00
      002087 78 2A            [12]  402 	mov	r0,#(_neigh + 0x0008)
      002089 76 FF            [12]  403 	mov	@r0,#0xff
      00208B 08               [12]  404 	inc	r0
      00208C 76 FF            [12]  405 	mov	@r0,#0xff
      00208E 78 2C            [12]  406 	mov	r0,#(_neigh + 0x000a)
      002090 76 01            [12]  407 	mov	@r0,#0x01
      002092 08               [12]  408 	inc	r0
      002093 76 00            [12]  409 	mov	@r0,#0x00
      002095 78 2E            [12]  410 	mov	r0,#(_neigh + 0x000c)
      002097 76 00            [12]  411 	mov	@r0,#0x00
      002099 08               [12]  412 	inc	r0
      00209A 76 00            [12]  413 	mov	@r0,#0x00
      00209C 78 30            [12]  414 	mov	r0,#(_neigh + 0x000e)
      00209E 76 FF            [12]  415 	mov	@r0,#0xff
      0020A0 08               [12]  416 	inc	r0
      0020A1 76 FF            [12]  417 	mov	@r0,#0xff
      0020A3 78 32            [12]  418 	mov	r0,#(_neigh + 0x0010)
      0020A5 76 00            [12]  419 	mov	@r0,#0x00
      0020A7 08               [12]  420 	inc	r0
      0020A8 76 00            [12]  421 	mov	@r0,#0x00
      0020AA 78 34            [12]  422 	mov	r0,#(_neigh + 0x0012)
      0020AC 76 01            [12]  423 	mov	@r0,#0x01
      0020AE 08               [12]  424 	inc	r0
      0020AF 76 00            [12]  425 	mov	@r0,#0x00
      0020B1 78 36            [12]  426 	mov	r0,#(_neigh + 0x0014)
      0020B3 76 01            [12]  427 	mov	@r0,#0x01
      0020B5 08               [12]  428 	inc	r0
      0020B6 76 00            [12]  429 	mov	@r0,#0x00
      0020B8 78 38            [12]  430 	mov	r0,#(_neigh + 0x0016)
      0020BA 76 FF            [12]  431 	mov	@r0,#0xff
      0020BC 08               [12]  432 	inc	r0
      0020BD 76 FF            [12]  433 	mov	@r0,#0xff
      0020BF 78 3A            [12]  434 	mov	r0,#(_neigh + 0x0018)
      0020C1 76 01            [12]  435 	mov	@r0,#0x01
      0020C3 08               [12]  436 	inc	r0
      0020C4 76 00            [12]  437 	mov	@r0,#0x00
      0020C6 78 3C            [12]  438 	mov	r0,#(_neigh + 0x001a)
      0020C8 76 00            [12]  439 	mov	@r0,#0x00
      0020CA 08               [12]  440 	inc	r0
      0020CB 76 00            [12]  441 	mov	@r0,#0x00
      0020CD 78 3E            [12]  442 	mov	r0,#(_neigh + 0x001c)
      0020CF 76 01            [12]  443 	mov	@r0,#0x01
      0020D1 08               [12]  444 	inc	r0
      0020D2 76 00            [12]  445 	mov	@r0,#0x00
      0020D4 78 40            [12]  446 	mov	r0,#(_neigh + 0x001e)
      0020D6 76 01            [12]  447 	mov	@r0,#0x01
      0020D8 08               [12]  448 	inc	r0
      0020D9 76 00            [12]  449 	mov	@r0,#0x00
                                    450 	.area GSFINAL (CODE)
      0020DB 02 20 06         [24]  451 	ljmp	__sdcc_program_startup
                                    452 ;--------------------------------------------------------
                                    453 ; Home
                                    454 ;--------------------------------------------------------
                                    455 	.area HOME    (CODE)
                                    456 	.area HOME    (CODE)
      002006                        457 __sdcc_program_startup:
      002006 02 26 FF         [24]  458 	ljmp	_main
                                    459 ;	return from main will return to caller
                                    460 ;--------------------------------------------------------
                                    461 ; code
                                    462 ;--------------------------------------------------------
                                    463 	.area CSEG    (CODE)
                                    464 ;------------------------------------------------------------
                                    465 ;Allocation info for local variables in function 'putchar'
                                    466 ;------------------------------------------------------------
                                    467 ;c                         Allocated to registers 
                                    468 ;------------------------------------------------------------
                                    469 ;	walk.c:8: int putchar(int c) __naked {
                                    470 ;	-----------------------------------------
                                    471 ;	 function putchar
                                    472 ;	-----------------------------------------
      0020DE                        473 _putchar:
                                    474 ;	naked function: no prologue.
                                    475 ;	walk.c:13: __endasm;
      0020DE E5 82            [12]  476 	mov	a, dpl
      0020E0 02 00 30         [24]  477 	ljmp	0x0030
                                    478 ;	walk.c:14: }
                                    479 ;	naked function: no epilogue.
                                    480 ;------------------------------------------------------------
                                    481 ;Allocation info for local variables in function 'getchar'
                                    482 ;------------------------------------------------------------
                                    483 ;	walk.c:16: int getchar(void) __naked {
                                    484 ;	-----------------------------------------
                                    485 ;	 function getchar
                                    486 ;	-----------------------------------------
      0020E3                        487 _getchar:
                                    488 ;	naked function: no prologue.
                                    489 ;	walk.c:22: __endasm;
      0020E3 12 00 32         [24]  490 	lcall	0x0032
      0020E6 F5 82            [12]  491 	mov	dpl, a
      0020E8 75 83 00         [24]  492 	mov	dph, #0
      0020EB 22               [24]  493 	ret
                                    494 ;	walk.c:23: }
                                    495 ;	naked function: no epilogue.
                                    496 ;------------------------------------------------------------
                                    497 ;Allocation info for local variables in function 'int0'
                                    498 ;------------------------------------------------------------
                                    499 ;	walk.c:27: void int0(void) __interrupt IE0_VECTOR __using 1 {
                                    500 ;	-----------------------------------------
                                    501 ;	 function int0
                                    502 ;	-----------------------------------------
      0020EC                        503 _int0:
                           00000F   504 	ar7 = 0x0f
                           00000E   505 	ar6 = 0x0e
                           00000D   506 	ar5 = 0x0d
                           00000C   507 	ar4 = 0x0c
                           00000B   508 	ar3 = 0x0b
                           00000A   509 	ar2 = 0x0a
                           000009   510 	ar1 = 0x09
                           000008   511 	ar0 = 0x08
      0020EC C0 D0            [24]  512 	push	psw
      0020EE 75 D0 08         [24]  513 	mov	psw,#0x08
                                    514 ;	walk.c:28: i0 = 0;
      0020F1 78 21            [12]  515 	mov	r0,#_i0
      0020F3 76 00            [12]  516 	mov	@r0,#0x00
                                    517 ;	walk.c:29: }
      0020F5 D0 D0            [24]  518 	pop	psw
      0020F7 32               [24]  519 	reti
                                    520 ;	eliminated unneeded push/pop dpl
                                    521 ;	eliminated unneeded push/pop dph
                                    522 ;	eliminated unneeded push/pop b
                                    523 ;	eliminated unneeded push/pop acc
                                    524 ;------------------------------------------------------------
                                    525 ;Allocation info for local variables in function 'reset'
                                    526 ;------------------------------------------------------------
                                    527 ;	walk.c:31: static void reset(void) __naked {
                                    528 ;	-----------------------------------------
                                    529 ;	 function reset
                                    530 ;	-----------------------------------------
      0020F8                        531 _reset:
                                    532 ;	naked function: no prologue.
                                    533 ;	walk.c:34: __endasm;
      0020F8 43 87 02         [24]  534 	orl	pcon, #2
                                    535 ;	walk.c:35: }
                                    536 ;	naked function: no epilogue.
                                    537 ;------------------------------------------------------------
                                    538 ;Allocation info for local variables in function 'update'
                                    539 ;------------------------------------------------------------
                                    540 ;cur                       Allocated to stack - _bp -5
                                    541 ;j                         Allocated to stack - _bp -6
                                    542 ;t                         Allocated to stack - _bp +1
                                    543 ;sloc0                     Allocated to stack - _bp +4
                                    544 ;sloc1                     Allocated to stack - _bp +6
                                    545 ;------------------------------------------------------------
                                    546 ;	walk.c:73: static int update(struct node *t, struct node *cur, char j) {
                                    547 ;	-----------------------------------------
                                    548 ;	 function update
                                    549 ;	-----------------------------------------
      0020FB                        550 _update:
                           000007   551 	ar7 = 0x07
                           000006   552 	ar6 = 0x06
                           000005   553 	ar5 = 0x05
                           000004   554 	ar4 = 0x04
                           000003   555 	ar3 = 0x03
                           000002   556 	ar2 = 0x02
                           000001   557 	ar1 = 0x01
                           000000   558 	ar0 = 0x00
      0020FB C0 10            [24]  559 	push	_bp
      0020FD 85 81 10         [24]  560 	mov	_bp,sp
      002100 C0 82            [24]  561 	push	dpl
      002102 C0 83            [24]  562 	push	dph
      002104 C0 F0            [24]  563 	push	b
      002106 E5 81            [12]  564 	mov	a,sp
      002108 24 05            [12]  565 	add	a,#0x05
      00210A F5 81            [12]  566 	mov	sp,a
                                    567 ;	walk.c:74: t->r = cur->r + neigh[j].r;
      00210C E5 10            [12]  568 	mov	a,_bp
      00210E 24 FB            [12]  569 	add	a,#0xfb
      002110 F8               [12]  570 	mov	r0,a
      002111 86 02            [24]  571 	mov	ar2,@r0
      002113 08               [12]  572 	inc	r0
      002114 86 03            [24]  573 	mov	ar3,@r0
      002116 08               [12]  574 	inc	r0
      002117 86 04            [24]  575 	mov	ar4,@r0
      002119 8A 82            [24]  576 	mov	dpl,r2
      00211B 8B 83            [24]  577 	mov	dph,r3
      00211D 8C F0            [24]  578 	mov	b,r4
      00211F E5 10            [12]  579 	mov	a,_bp
      002121 24 04            [12]  580 	add	a,#0x04
      002123 F8               [12]  581 	mov	r0,a
      002124 12 2C D6         [24]  582 	lcall	__gptrget
      002127 F6               [12]  583 	mov	@r0,a
      002128 A3               [24]  584 	inc	dptr
      002129 12 2C D6         [24]  585 	lcall	__gptrget
      00212C 08               [12]  586 	inc	r0
      00212D F6               [12]  587 	mov	@r0,a
      00212E E5 10            [12]  588 	mov	a,_bp
      002130 24 FA            [12]  589 	add	a,#0xfa
      002132 F8               [12]  590 	mov	r0,a
      002133 E6               [12]  591 	mov	a,@r0
      002134 26               [12]  592 	add	a,@r0
      002135 25 E0            [12]  593 	add	a,acc
      002137 FD               [12]  594 	mov	r5,a
      002138 24 22            [12]  595 	add	a,#_neigh
      00213A F9               [12]  596 	mov	r1,a
      00213B 87 07            [24]  597 	mov	ar7,@r1
      00213D 09               [12]  598 	inc	r1
      00213E 87 06            [24]  599 	mov	ar6,@r1
      002140 E5 10            [12]  600 	mov	a,_bp
      002142 24 04            [12]  601 	add	a,#0x04
      002144 F8               [12]  602 	mov	r0,a
      002145 EF               [12]  603 	mov	a,r7
      002146 26               [12]  604 	add	a,@r0
      002147 FF               [12]  605 	mov	r7,a
      002148 EE               [12]  606 	mov	a,r6
      002149 08               [12]  607 	inc	r0
      00214A 36               [12]  608 	addc	a,@r0
      00214B FE               [12]  609 	mov	r6,a
      00214C A8 10            [24]  610 	mov	r0,_bp
      00214E 08               [12]  611 	inc	r0
      00214F 86 82            [24]  612 	mov	dpl,@r0
      002151 08               [12]  613 	inc	r0
      002152 86 83            [24]  614 	mov	dph,@r0
      002154 08               [12]  615 	inc	r0
      002155 86 F0            [24]  616 	mov	b,@r0
      002157 EF               [12]  617 	mov	a,r7
      002158 12 2A CB         [24]  618 	lcall	__gptrput
      00215B A3               [24]  619 	inc	dptr
      00215C EE               [12]  620 	mov	a,r6
      00215D 12 2A CB         [24]  621 	lcall	__gptrput
                                    622 ;	walk.c:75: t->c = cur->c + neigh[j].c;
      002160 A8 10            [24]  623 	mov	r0,_bp
      002162 08               [12]  624 	inc	r0
      002163 E5 10            [12]  625 	mov	a,_bp
      002165 24 06            [12]  626 	add	a,#0x06
      002167 F9               [12]  627 	mov	r1,a
      002168 74 02            [12]  628 	mov	a,#0x02
      00216A 26               [12]  629 	add	a,@r0
      00216B F7               [12]  630 	mov	@r1,a
      00216C E4               [12]  631 	clr	a
      00216D 08               [12]  632 	inc	r0
      00216E 36               [12]  633 	addc	a,@r0
      00216F 09               [12]  634 	inc	r1
      002170 F7               [12]  635 	mov	@r1,a
      002171 08               [12]  636 	inc	r0
      002172 09               [12]  637 	inc	r1
      002173 E6               [12]  638 	mov	a,@r0
      002174 F7               [12]  639 	mov	@r1,a
      002175 74 02            [12]  640 	mov	a,#0x02
      002177 2A               [12]  641 	add	a,r2
      002178 FA               [12]  642 	mov	r2,a
      002179 E4               [12]  643 	clr	a
      00217A 3B               [12]  644 	addc	a,r3
      00217B FB               [12]  645 	mov	r3,a
      00217C 8A 82            [24]  646 	mov	dpl,r2
      00217E 8B 83            [24]  647 	mov	dph,r3
      002180 8C F0            [24]  648 	mov	b,r4
      002182 12 2C D6         [24]  649 	lcall	__gptrget
      002185 FA               [12]  650 	mov	r2,a
      002186 A3               [24]  651 	inc	dptr
      002187 12 2C D6         [24]  652 	lcall	__gptrget
      00218A FB               [12]  653 	mov	r3,a
      00218B ED               [12]  654 	mov	a,r5
      00218C 24 22            [12]  655 	add	a,#_neigh
      00218E 24 02            [12]  656 	add	a,#0x02
      002190 F9               [12]  657 	mov	r1,a
      002191 87 04            [24]  658 	mov	ar4,@r1
      002193 09               [12]  659 	inc	r1
      002194 87 05            [24]  660 	mov	ar5,@r1
      002196 EC               [12]  661 	mov	a,r4
      002197 2A               [12]  662 	add	a,r2
      002198 FA               [12]  663 	mov	r2,a
      002199 ED               [12]  664 	mov	a,r5
      00219A 3B               [12]  665 	addc	a,r3
      00219B FB               [12]  666 	mov	r3,a
      00219C E5 10            [12]  667 	mov	a,_bp
      00219E 24 06            [12]  668 	add	a,#0x06
      0021A0 F8               [12]  669 	mov	r0,a
      0021A1 86 82            [24]  670 	mov	dpl,@r0
      0021A3 08               [12]  671 	inc	r0
      0021A4 86 83            [24]  672 	mov	dph,@r0
      0021A6 08               [12]  673 	inc	r0
      0021A7 86 F0            [24]  674 	mov	b,@r0
      0021A9 EA               [12]  675 	mov	a,r2
      0021AA 12 2A CB         [24]  676 	lcall	__gptrput
      0021AD A3               [24]  677 	inc	dptr
      0021AE EB               [12]  678 	mov	a,r3
      0021AF 12 2A CB         [24]  679 	lcall	__gptrput
                                    680 ;	walk.c:77: if (t->r < 0) t->r += ROWS;
      0021B2 A8 10            [24]  681 	mov	r0,_bp
      0021B4 08               [12]  682 	inc	r0
      0021B5 86 82            [24]  683 	mov	dpl,@r0
      0021B7 08               [12]  684 	inc	r0
      0021B8 86 83            [24]  685 	mov	dph,@r0
      0021BA 08               [12]  686 	inc	r0
      0021BB 86 F0            [24]  687 	mov	b,@r0
      0021BD 12 2C D6         [24]  688 	lcall	__gptrget
      0021C0 FD               [12]  689 	mov	r5,a
      0021C1 A3               [24]  690 	inc	dptr
      0021C2 12 2C D6         [24]  691 	lcall	__gptrget
      0021C5 FC               [12]  692 	mov	r4,a
      0021C6 EE               [12]  693 	mov	a,r6
      0021C7 30 E7 1D         [24]  694 	jnb	acc.7,00104$
      0021CA 74 30            [12]  695 	mov	a,#0x30
      0021CC 2D               [12]  696 	add	a,r5
      0021CD FF               [12]  697 	mov	r7,a
      0021CE E4               [12]  698 	clr	a
      0021CF 3C               [12]  699 	addc	a,r4
      0021D0 FE               [12]  700 	mov	r6,a
      0021D1 A8 10            [24]  701 	mov	r0,_bp
      0021D3 08               [12]  702 	inc	r0
      0021D4 86 82            [24]  703 	mov	dpl,@r0
      0021D6 08               [12]  704 	inc	r0
      0021D7 86 83            [24]  705 	mov	dph,@r0
      0021D9 08               [12]  706 	inc	r0
      0021DA 86 F0            [24]  707 	mov	b,@r0
      0021DC EF               [12]  708 	mov	a,r7
      0021DD 12 2A CB         [24]  709 	lcall	__gptrput
      0021E0 A3               [24]  710 	inc	dptr
      0021E1 EE               [12]  711 	mov	a,r6
      0021E2 12 2A CB         [24]  712 	lcall	__gptrput
      0021E5 80 27            [24]  713 	sjmp	00105$
      0021E7                        714 00104$:
                                    715 ;	walk.c:78: else if (t->r >= ROWS) t->r -= ROWS;
      0021E7 C3               [12]  716 	clr	c
      0021E8 ED               [12]  717 	mov	a,r5
      0021E9 94 30            [12]  718 	subb	a,#0x30
      0021EB EC               [12]  719 	mov	a,r4
      0021EC 64 80            [12]  720 	xrl	a,#0x80
      0021EE 94 80            [12]  721 	subb	a,#0x80
      0021F0 40 1C            [24]  722 	jc	00105$
      0021F2 ED               [12]  723 	mov	a,r5
      0021F3 24 D0            [12]  724 	add	a,#0xd0
      0021F5 FD               [12]  725 	mov	r5,a
      0021F6 EC               [12]  726 	mov	a,r4
      0021F7 34 FF            [12]  727 	addc	a,#0xff
      0021F9 FC               [12]  728 	mov	r4,a
      0021FA A8 10            [24]  729 	mov	r0,_bp
      0021FC 08               [12]  730 	inc	r0
      0021FD 86 82            [24]  731 	mov	dpl,@r0
      0021FF 08               [12]  732 	inc	r0
      002200 86 83            [24]  733 	mov	dph,@r0
      002202 08               [12]  734 	inc	r0
      002203 86 F0            [24]  735 	mov	b,@r0
      002205 ED               [12]  736 	mov	a,r5
      002206 12 2A CB         [24]  737 	lcall	__gptrput
      002209 A3               [24]  738 	inc	dptr
      00220A EC               [12]  739 	mov	a,r4
      00220B 12 2A CB         [24]  740 	lcall	__gptrput
      00220E                        741 00105$:
                                    742 ;	walk.c:79: if (t->c < 0) t->c += COLS;
      00220E E5 10            [12]  743 	mov	a,_bp
      002210 24 06            [12]  744 	add	a,#0x06
      002212 F8               [12]  745 	mov	r0,a
      002213 86 82            [24]  746 	mov	dpl,@r0
      002215 08               [12]  747 	inc	r0
      002216 86 83            [24]  748 	mov	dph,@r0
      002218 08               [12]  749 	inc	r0
      002219 86 F0            [24]  750 	mov	b,@r0
      00221B 12 2C D6         [24]  751 	lcall	__gptrget
      00221E A3               [24]  752 	inc	dptr
      00221F 12 2C D6         [24]  753 	lcall	__gptrget
      002222 30 E7 35         [24]  754 	jnb	acc.7,00109$
      002225 E5 10            [12]  755 	mov	a,_bp
      002227 24 06            [12]  756 	add	a,#0x06
      002229 F8               [12]  757 	mov	r0,a
      00222A 86 82            [24]  758 	mov	dpl,@r0
      00222C 08               [12]  759 	inc	r0
      00222D 86 83            [24]  760 	mov	dph,@r0
      00222F 08               [12]  761 	inc	r0
      002230 86 F0            [24]  762 	mov	b,@r0
      002232 12 2C D6         [24]  763 	lcall	__gptrget
      002235 FE               [12]  764 	mov	r6,a
      002236 A3               [24]  765 	inc	dptr
      002237 12 2C D6         [24]  766 	lcall	__gptrget
      00223A FF               [12]  767 	mov	r7,a
      00223B 74 C0            [12]  768 	mov	a,#0xc0
      00223D 2E               [12]  769 	add	a,r6
      00223E FE               [12]  770 	mov	r6,a
      00223F E4               [12]  771 	clr	a
      002240 3F               [12]  772 	addc	a,r7
      002241 FF               [12]  773 	mov	r7,a
      002242 E5 10            [12]  774 	mov	a,_bp
      002244 24 06            [12]  775 	add	a,#0x06
      002246 F8               [12]  776 	mov	r0,a
      002247 86 82            [24]  777 	mov	dpl,@r0
      002249 08               [12]  778 	inc	r0
      00224A 86 83            [24]  779 	mov	dph,@r0
      00224C 08               [12]  780 	inc	r0
      00224D 86 F0            [24]  781 	mov	b,@r0
      00224F EE               [12]  782 	mov	a,r6
      002250 12 2A CB         [24]  783 	lcall	__gptrput
      002253 A3               [24]  784 	inc	dptr
      002254 EF               [12]  785 	mov	a,r7
      002255 12 2A CB         [24]  786 	lcall	__gptrput
      002258 80 55            [24]  787 	sjmp	00110$
      00225A                        788 00109$:
                                    789 ;	walk.c:80: else if (t->c >= COLS) t->c -= COLS;
      00225A E5 10            [12]  790 	mov	a,_bp
      00225C 24 06            [12]  791 	add	a,#0x06
      00225E F8               [12]  792 	mov	r0,a
      00225F 86 82            [24]  793 	mov	dpl,@r0
      002261 08               [12]  794 	inc	r0
      002262 86 83            [24]  795 	mov	dph,@r0
      002264 08               [12]  796 	inc	r0
      002265 86 F0            [24]  797 	mov	b,@r0
      002267 12 2C D6         [24]  798 	lcall	__gptrget
      00226A FE               [12]  799 	mov	r6,a
      00226B A3               [24]  800 	inc	dptr
      00226C 12 2C D6         [24]  801 	lcall	__gptrget
      00226F FF               [12]  802 	mov	r7,a
      002270 C3               [12]  803 	clr	c
      002271 EE               [12]  804 	mov	a,r6
      002272 94 C0            [12]  805 	subb	a,#0xc0
      002274 EF               [12]  806 	mov	a,r7
      002275 64 80            [12]  807 	xrl	a,#0x80
      002277 94 80            [12]  808 	subb	a,#0x80
      002279 40 34            [24]  809 	jc	00110$
      00227B E5 10            [12]  810 	mov	a,_bp
      00227D 24 06            [12]  811 	add	a,#0x06
      00227F F8               [12]  812 	mov	r0,a
      002280 86 82            [24]  813 	mov	dpl,@r0
      002282 08               [12]  814 	inc	r0
      002283 86 83            [24]  815 	mov	dph,@r0
      002285 08               [12]  816 	inc	r0
      002286 86 F0            [24]  817 	mov	b,@r0
      002288 12 2C D6         [24]  818 	lcall	__gptrget
      00228B FE               [12]  819 	mov	r6,a
      00228C A3               [24]  820 	inc	dptr
      00228D 12 2C D6         [24]  821 	lcall	__gptrget
      002290 FF               [12]  822 	mov	r7,a
      002291 EE               [12]  823 	mov	a,r6
      002292 24 40            [12]  824 	add	a,#0x40
      002294 FE               [12]  825 	mov	r6,a
      002295 EF               [12]  826 	mov	a,r7
      002296 34 FF            [12]  827 	addc	a,#0xff
      002298 FF               [12]  828 	mov	r7,a
      002299 E5 10            [12]  829 	mov	a,_bp
      00229B 24 06            [12]  830 	add	a,#0x06
      00229D F8               [12]  831 	mov	r0,a
      00229E 86 82            [24]  832 	mov	dpl,@r0
      0022A0 08               [12]  833 	inc	r0
      0022A1 86 83            [24]  834 	mov	dph,@r0
      0022A3 08               [12]  835 	inc	r0
      0022A4 86 F0            [24]  836 	mov	b,@r0
      0022A6 EE               [12]  837 	mov	a,r6
      0022A7 12 2A CB         [24]  838 	lcall	__gptrput
      0022AA A3               [24]  839 	inc	dptr
      0022AB EF               [12]  840 	mov	a,r7
      0022AC 12 2A CB         [24]  841 	lcall	__gptrput
      0022AF                        842 00110$:
                                    843 ;	walk.c:82: if (g[t->r][t->c] == 0xaa) return 0;
      0022AF A8 10            [24]  844 	mov	r0,_bp
      0022B1 08               [12]  845 	inc	r0
      0022B2 86 82            [24]  846 	mov	dpl,@r0
      0022B4 08               [12]  847 	inc	r0
      0022B5 86 83            [24]  848 	mov	dph,@r0
      0022B7 08               [12]  849 	inc	r0
      0022B8 86 F0            [24]  850 	mov	b,@r0
      0022BA 12 2C D6         [24]  851 	lcall	__gptrget
      0022BD FE               [12]  852 	mov	r6,a
      0022BE A3               [24]  853 	inc	dptr
      0022BF 12 2C D6         [24]  854 	lcall	__gptrget
      0022C2 FF               [12]  855 	mov	r7,a
      0022C3 C0 06            [24]  856 	push	ar6
      0022C5 C0 07            [24]  857 	push	ar7
      0022C7 90 00 C0         [24]  858 	mov	dptr,#0x00c0
      0022CA 12 2A E6         [24]  859 	lcall	__mulint
      0022CD AE 82            [24]  860 	mov	r6,dpl
      0022CF AF 83            [24]  861 	mov	r7,dph
      0022D1 15 81            [12]  862 	dec	sp
      0022D3 15 81            [12]  863 	dec	sp
      0022D5 EE               [12]  864 	mov	a,r6
      0022D6 24 00            [12]  865 	add	a,#_g
      0022D8 FE               [12]  866 	mov	r6,a
      0022D9 EF               [12]  867 	mov	a,r7
      0022DA 34 41            [12]  868 	addc	a,#(_g >> 8)
      0022DC FF               [12]  869 	mov	r7,a
      0022DD E5 10            [12]  870 	mov	a,_bp
      0022DF 24 06            [12]  871 	add	a,#0x06
      0022E1 F8               [12]  872 	mov	r0,a
      0022E2 86 82            [24]  873 	mov	dpl,@r0
      0022E4 08               [12]  874 	inc	r0
      0022E5 86 83            [24]  875 	mov	dph,@r0
      0022E7 08               [12]  876 	inc	r0
      0022E8 86 F0            [24]  877 	mov	b,@r0
      0022EA 12 2C D6         [24]  878 	lcall	__gptrget
      0022ED FC               [12]  879 	mov	r4,a
      0022EE A3               [24]  880 	inc	dptr
      0022EF 12 2C D6         [24]  881 	lcall	__gptrget
      0022F2 FD               [12]  882 	mov	r5,a
      0022F3 EC               [12]  883 	mov	a,r4
      0022F4 2E               [12]  884 	add	a,r6
      0022F5 F5 82            [12]  885 	mov	dpl,a
      0022F7 ED               [12]  886 	mov	a,r5
      0022F8 3F               [12]  887 	addc	a,r7
      0022F9 F5 83            [12]  888 	mov	dph,a
      0022FB E0               [24]  889 	movx	a,@dptr
      0022FC FF               [12]  890 	mov	r7,a
      0022FD BF AA 05         [24]  891 	cjne	r7,#0xaa,00114$
      002300 90 00 00         [24]  892 	mov	dptr,#0x0000
      002303 80 62            [24]  893 	sjmp	00116$
      002305                        894 00114$:
                                    895 ;	walk.c:83: else if (g[t->r][t->c] != 0x55) {
      002305 A8 10            [24]  896 	mov	r0,_bp
      002307 08               [12]  897 	inc	r0
      002308 86 82            [24]  898 	mov	dpl,@r0
      00230A 08               [12]  899 	inc	r0
      00230B 86 83            [24]  900 	mov	dph,@r0
      00230D 08               [12]  901 	inc	r0
      00230E 86 F0            [24]  902 	mov	b,@r0
      002310 12 2C D6         [24]  903 	lcall	__gptrget
      002313 FE               [12]  904 	mov	r6,a
      002314 A3               [24]  905 	inc	dptr
      002315 12 2C D6         [24]  906 	lcall	__gptrget
      002318 FF               [12]  907 	mov	r7,a
      002319 C0 06            [24]  908 	push	ar6
      00231B C0 07            [24]  909 	push	ar7
      00231D 90 00 C0         [24]  910 	mov	dptr,#0x00c0
      002320 12 2A E6         [24]  911 	lcall	__mulint
      002323 AE 82            [24]  912 	mov	r6,dpl
      002325 AF 83            [24]  913 	mov	r7,dph
      002327 15 81            [12]  914 	dec	sp
      002329 15 81            [12]  915 	dec	sp
      00232B EE               [12]  916 	mov	a,r6
      00232C 24 00            [12]  917 	add	a,#_g
      00232E FE               [12]  918 	mov	r6,a
      00232F EF               [12]  919 	mov	a,r7
      002330 34 41            [12]  920 	addc	a,#(_g >> 8)
      002332 FF               [12]  921 	mov	r7,a
      002333 E5 10            [12]  922 	mov	a,_bp
      002335 24 06            [12]  923 	add	a,#0x06
      002337 F8               [12]  924 	mov	r0,a
      002338 86 82            [24]  925 	mov	dpl,@r0
      00233A 08               [12]  926 	inc	r0
      00233B 86 83            [24]  927 	mov	dph,@r0
      00233D 08               [12]  928 	inc	r0
      00233E 86 F0            [24]  929 	mov	b,@r0
      002340 12 2C D6         [24]  930 	lcall	__gptrget
      002343 FC               [12]  931 	mov	r4,a
      002344 A3               [24]  932 	inc	dptr
      002345 12 2C D6         [24]  933 	lcall	__gptrget
      002348 FD               [12]  934 	mov	r5,a
      002349 EC               [12]  935 	mov	a,r4
      00234A 2E               [12]  936 	add	a,r6
      00234B F5 82            [12]  937 	mov	dpl,a
      00234D ED               [12]  938 	mov	a,r5
      00234E 3F               [12]  939 	addc	a,r7
      00234F F5 83            [12]  940 	mov	dph,a
      002351 E0               [24]  941 	movx	a,@dptr
      002352 FF               [12]  942 	mov	r7,a
      002353 BF 55 02         [24]  943 	cjne	r7,#0x55,00148$
      002356 80 0C            [24]  944 	sjmp	00115$
      002358                        945 00148$:
                                    946 ;	walk.c:84: (void)puts("Memory error");
      002358 90 3F D0         [24]  947 	mov	dptr,#___str_0
      00235B 75 F0 80         [24]  948 	mov	b,#0x80
      00235E 12 2C 17         [24]  949 	lcall	_puts
                                    950 ;	walk.c:85: reset();
      002361 12 20 F8         [24]  951 	lcall	_reset
      002364                        952 00115$:
                                    953 ;	walk.c:88: return 1;
      002364 90 00 01         [24]  954 	mov	dptr,#0x0001
      002367                        955 00116$:
                                    956 ;	walk.c:89: }
      002367 85 10 81         [24]  957 	mov	sp,_bp
      00236A D0 10            [24]  958 	pop	_bp
      00236C 22               [24]  959 	ret
                                    960 ;------------------------------------------------------------
                                    961 ;Allocation info for local variables in function 'walk'
                                    962 ;------------------------------------------------------------
                                    963 ;nstart                    Allocated to registers 
                                    964 ;cur                       Allocated to stack - _bp +10
                                    965 ;t                         Allocated to stack - _bp +14
                                    966 ;j                         Allocated to stack - _bp +18
                                    967 ;f                         Allocated to registers r3 
                                    968 ;sloc0                     Allocated to stack - _bp +1
                                    969 ;sloc1                     Allocated to stack - _bp +2
                                    970 ;sloc2                     Allocated to stack - _bp +3
                                    971 ;sloc3                     Allocated to stack - _bp +17
                                    972 ;sloc4                     Allocated to stack - _bp +4
                                    973 ;sloc5                     Allocated to stack - _bp +5
                                    974 ;sloc6                     Allocated to stack - _bp +6
                                    975 ;sloc7                     Allocated to stack - _bp +7
                                    976 ;------------------------------------------------------------
                                    977 ;	walk.c:91: static void walk(struct node *nstart) {
                                    978 ;	-----------------------------------------
                                    979 ;	 function walk
                                    980 ;	-----------------------------------------
      00236D                        981 _walk:
      00236D C0 10            [24]  982 	push	_bp
      00236F E5 81            [12]  983 	mov	a,sp
      002371 F5 10            [12]  984 	mov	_bp,a
      002373 24 12            [12]  985 	add	a,#0x12
      002375 F5 81            [12]  986 	mov	sp,a
      002377 AD 82            [24]  987 	mov	r5,dpl
      002379 AE 83            [24]  988 	mov	r6,dph
      00237B AF F0            [24]  989 	mov	r7,b
                                    990 ;	walk.c:95: cur = *nstart;
      00237D E5 10            [12]  991 	mov	a,_bp
      00237F 24 0A            [12]  992 	add	a,#0x0a
      002381 F9               [12]  993 	mov	r1,a
      002382 FA               [12]  994 	mov	r2,a
      002383 7B 00            [12]  995 	mov	r3,#0x00
      002385 7C 40            [12]  996 	mov	r4,#0x40
      002387 C0 01            [24]  997 	push	ar1
      002389 74 04            [12]  998 	mov	a,#0x04
      00238B C0 E0            [24]  999 	push	acc
      00238D E4               [12] 1000 	clr	a
      00238E C0 E0            [24] 1001 	push	acc
      002390 C0 05            [24] 1002 	push	ar5
      002392 C0 06            [24] 1003 	push	ar6
      002394 C0 07            [24] 1004 	push	ar7
      002396 8A 82            [24] 1005 	mov	dpl,r2
      002398 8B 83            [24] 1006 	mov	dph,r3
      00239A 8C F0            [24] 1007 	mov	b,r4
      00239C 12 2B 84         [24] 1008 	lcall	___memcpy
      00239F E5 81            [12] 1009 	mov	a,sp
      0023A1 24 FB            [12] 1010 	add	a,#0xfb
      0023A3 F5 81            [12] 1011 	mov	sp,a
      0023A5 D0 01            [24] 1012 	pop	ar1
                                   1013 ;	walk.c:97: process:
      0023A7 E5 10            [12] 1014 	mov	a,_bp
      0023A9 24 06            [12] 1015 	add	a,#0x06
      0023AB F8               [12] 1016 	mov	r0,a
      0023AC A6 01            [24] 1017 	mov	@r0,ar1
      0023AE E5 10            [12] 1018 	mov	a,_bp
      0023B0 24 0E            [12] 1019 	add	a,#0x0e
      0023B2 FE               [12] 1020 	mov	r6,a
      0023B3 E5 10            [12] 1021 	mov	a,_bp
      0023B5 24 03            [12] 1022 	add	a,#0x03
      0023B7 F8               [12] 1023 	mov	r0,a
      0023B8 A6 01            [24] 1024 	mov	@r0,ar1
      0023BA E5 10            [12] 1025 	mov	a,_bp
      0023BC 24 05            [12] 1026 	add	a,#0x05
      0023BE F8               [12] 1027 	mov	r0,a
      0023BF A6 01            [24] 1028 	mov	@r0,ar1
      0023C1 E5 10            [12] 1029 	mov	a,_bp
      0023C3 24 04            [12] 1030 	add	a,#0x04
      0023C5 F8               [12] 1031 	mov	r0,a
      0023C6 A6 06            [24] 1032 	mov	@r0,ar6
      0023C8 89 02            [24] 1033 	mov	ar2,r1
      0023CA A8 10            [24] 1034 	mov	r0,_bp
      0023CC 08               [12] 1035 	inc	r0
      0023CD A6 06            [24] 1036 	mov	@r0,ar6
      0023CF A8 10            [24] 1037 	mov	r0,_bp
      0023D1 08               [12] 1038 	inc	r0
      0023D2 08               [12] 1039 	inc	r0
      0023D3 A6 01            [24] 1040 	mov	@r0,ar1
      0023D5 74 02            [12] 1041 	mov	a,#0x02
      0023D7 29               [12] 1042 	add	a,r1
      0023D8 F8               [12] 1043 	mov	r0,a
      0023D9                       1044 00101$:
                                   1045 ;	walk.c:98: g[cur.r][cur.c] = 0xaa;
      0023D9 C0 02            [24] 1046 	push	ar2
      0023DB 87 02            [24] 1047 	mov	ar2,@r1
      0023DD 09               [12] 1048 	inc	r1
      0023DE 87 05            [24] 1049 	mov	ar5,@r1
      0023E0 19               [12] 1050 	dec	r1
      0023E1 C0 06            [24] 1051 	push	ar6
      0023E3 C0 01            [24] 1052 	push	ar1
      0023E5 C0 00            [24] 1053 	push	ar0
      0023E7 C0 02            [24] 1054 	push	ar2
      0023E9 C0 05            [24] 1055 	push	ar5
      0023EB 90 00 C0         [24] 1056 	mov	dptr,#0x00c0
      0023EE 12 2A E6         [24] 1057 	lcall	__mulint
      0023F1 AA 82            [24] 1058 	mov	r2,dpl
      0023F3 AD 83            [24] 1059 	mov	r5,dph
      0023F5 15 81            [12] 1060 	dec	sp
      0023F7 15 81            [12] 1061 	dec	sp
      0023F9 D0 00            [24] 1062 	pop	ar0
      0023FB D0 01            [24] 1063 	pop	ar1
      0023FD EA               [12] 1064 	mov	a,r2
      0023FE 24 00            [12] 1065 	add	a,#_g
      002400 FF               [12] 1066 	mov	r7,a
      002401 ED               [12] 1067 	mov	a,r5
      002402 34 41            [12] 1068 	addc	a,#(_g >> 8)
      002404 FC               [12] 1069 	mov	r4,a
      002405 86 02            [24] 1070 	mov	ar2,@r0
      002407 08               [12] 1071 	inc	r0
      002408 86 05            [24] 1072 	mov	ar5,@r0
      00240A 18               [12] 1073 	dec	r0
      00240B EA               [12] 1074 	mov	a,r2
      00240C 2F               [12] 1075 	add	a,r7
      00240D F5 82            [12] 1076 	mov	dpl,a
      00240F ED               [12] 1077 	mov	a,r5
      002410 3C               [12] 1078 	addc	a,r4
      002411 F5 83            [12] 1079 	mov	dph,a
      002413 74 AA            [12] 1080 	mov	a,#0xaa
      002415 F0               [24] 1081 	movx	@dptr,a
                                   1082 ;	walk.c:99: printf("\033[%d;%dHo", cur.r + 4, cur.c + 1);
      002416 86 02            [24] 1083 	mov	ar2,@r0
      002418 08               [12] 1084 	inc	r0
      002419 86 05            [24] 1085 	mov	ar5,@r0
      00241B 18               [12] 1086 	dec	r0
      00241C 74 01            [12] 1087 	mov	a,#0x01
      00241E 2A               [12] 1088 	add	a,r2
      00241F FF               [12] 1089 	mov	r7,a
      002420 E4               [12] 1090 	clr	a
      002421 3D               [12] 1091 	addc	a,r5
      002422 FC               [12] 1092 	mov	r4,a
      002423 87 02            [24] 1093 	mov	ar2,@r1
      002425 09               [12] 1094 	inc	r1
      002426 87 05            [24] 1095 	mov	ar5,@r1
      002428 19               [12] 1096 	dec	r1
      002429 74 04            [12] 1097 	mov	a,#0x04
      00242B 2A               [12] 1098 	add	a,r2
      00242C FA               [12] 1099 	mov	r2,a
      00242D E4               [12] 1100 	clr	a
      00242E 3D               [12] 1101 	addc	a,r5
      00242F FD               [12] 1102 	mov	r5,a
      002430 C0 02            [24] 1103 	push	ar2
      002432 C0 01            [24] 1104 	push	ar1
      002434 C0 00            [24] 1105 	push	ar0
      002436 C0 07            [24] 1106 	push	ar7
      002438 C0 04            [24] 1107 	push	ar4
      00243A C0 02            [24] 1108 	push	ar2
      00243C C0 05            [24] 1109 	push	ar5
      00243E 74 DD            [12] 1110 	mov	a,#___str_1
      002440 C0 E0            [24] 1111 	push	acc
      002442 74 3F            [12] 1112 	mov	a,#(___str_1 >> 8)
      002444 C0 E0            [24] 1113 	push	acc
      002446 74 80            [12] 1114 	mov	a,#0x80
      002448 C0 E0            [24] 1115 	push	acc
      00244A 12 2C 9D         [24] 1116 	lcall	_printf
      00244D E5 81            [12] 1117 	mov	a,sp
      00244F 24 F9            [12] 1118 	add	a,#0xf9
      002451 F5 81            [12] 1119 	mov	sp,a
      002453 D0 00            [24] 1120 	pop	ar0
      002455 D0 01            [24] 1121 	pop	ar1
      002457 D0 02            [24] 1122 	pop	ar2
      002459 D0 06            [24] 1123 	pop	ar6
                                   1124 ;	walk.c:129: return;
      00245B D0 02            [24] 1125 	pop	ar2
                                   1126 ;	walk.c:101: next:
      00245D                       1127 00102$:
                                   1128 ;	walk.c:102: printf("\033[2;1H% 8d% 8d% 8d", sp, cur.r, cur.c);
      00245D C0 02            [24] 1129 	push	ar2
      00245F 86 07            [24] 1130 	mov	ar7,@r0
      002461 08               [12] 1131 	inc	r0
      002462 86 04            [24] 1132 	mov	ar4,@r0
      002464 18               [12] 1133 	dec	r0
      002465 87 02            [24] 1134 	mov	ar2,@r1
      002467 09               [12] 1135 	inc	r1
      002468 87 05            [24] 1136 	mov	ar5,@r1
      00246A 19               [12] 1137 	dec	r1
      00246B C0 06            [24] 1138 	push	ar6
      00246D C0 02            [24] 1139 	push	ar2
      00246F C0 01            [24] 1140 	push	ar1
      002471 C0 00            [24] 1141 	push	ar0
      002473 C0 07            [24] 1142 	push	ar7
      002475 C0 04            [24] 1143 	push	ar4
      002477 C0 02            [24] 1144 	push	ar2
      002479 C0 05            [24] 1145 	push	ar5
      00247B 90 F5 00         [24] 1146 	mov	dptr,#_sp
      00247E E0               [24] 1147 	movx	a,@dptr
      00247F C0 E0            [24] 1148 	push	acc
      002481 A3               [24] 1149 	inc	dptr
      002482 E0               [24] 1150 	movx	a,@dptr
      002483 C0 E0            [24] 1151 	push	acc
      002485 74 E7            [12] 1152 	mov	a,#___str_2
      002487 C0 E0            [24] 1153 	push	acc
      002489 74 3F            [12] 1154 	mov	a,#(___str_2 >> 8)
      00248B C0 E0            [24] 1155 	push	acc
      00248D 74 80            [12] 1156 	mov	a,#0x80
      00248F C0 E0            [24] 1157 	push	acc
      002491 12 2C 9D         [24] 1158 	lcall	_printf
      002494 E5 81            [12] 1159 	mov	a,sp
      002496 24 F7            [12] 1160 	add	a,#0xf7
      002498 F5 81            [12] 1161 	mov	sp,a
      00249A D0 00            [24] 1162 	pop	ar0
      00249C D0 01            [24] 1163 	pop	ar1
      00249E D0 02            [24] 1164 	pop	ar2
      0024A0 D0 06            [24] 1165 	pop	ar6
                                   1166 ;	walk.c:104: for (j = 0, f = 0; j < NMAX; j++) {
      0024A2 7B 00            [12] 1167 	mov	r3,#0x00
      0024A4 C0 00            [24] 1168 	push	ar0
      0024A6 E5 10            [12] 1169 	mov	a,_bp
      0024A8 24 12            [12] 1170 	add	a,#0x12
      0024AA F8               [12] 1171 	mov	r0,a
      0024AB 76 00            [12] 1172 	mov	@r0,#0x00
      0024AD D0 00            [24] 1173 	pop	ar0
                                   1174 ;	walk.c:129: return;
      0024AF D0 02            [24] 1175 	pop	ar2
                                   1176 ;	walk.c:104: for (j = 0, f = 0; j < NMAX; j++) {
      0024B1                       1177 00120$:
      0024B1 C0 00            [24] 1178 	push	ar0
      0024B3 E5 10            [12] 1179 	mov	a,_bp
      0024B5 24 12            [12] 1180 	add	a,#0x12
      0024B7 F8               [12] 1181 	mov	r0,a
      0024B8 B6 08 00         [24] 1182 	cjne	@r0,#0x08,00160$
      0024BB                       1183 00160$:
      0024BB D0 00            [24] 1184 	pop	ar0
      0024BD 40 03            [24] 1185 	jc	00161$
      0024BF 02 25 3F         [24] 1186 	ljmp	00106$
      0024C2                       1187 00161$:
                                   1188 ;	walk.c:105: if (!update(&t, &cur, j)) continue;
      0024C2 C0 02            [24] 1189 	push	ar2
      0024C4 C0 00            [24] 1190 	push	ar0
      0024C6 E5 10            [12] 1191 	mov	a,_bp
      0024C8 24 06            [12] 1192 	add	a,#0x06
      0024CA F8               [12] 1193 	mov	r0,a
      0024CB C0 01            [24] 1194 	push	ar1
      0024CD E5 10            [12] 1195 	mov	a,_bp
      0024CF 24 07            [12] 1196 	add	a,#0x07
      0024D1 F9               [12] 1197 	mov	r1,a
      0024D2 E6               [12] 1198 	mov	a,@r0
      0024D3 F7               [12] 1199 	mov	@r1,a
      0024D4 09               [12] 1200 	inc	r1
      0024D5 77 00            [12] 1201 	mov	@r1,#0x00
      0024D7 09               [12] 1202 	inc	r1
      0024D8 77 40            [12] 1203 	mov	@r1,#0x40
      0024DA D0 01            [24] 1204 	pop	ar1
      0024DC D0 00            [24] 1205 	pop	ar0
      0024DE 8E 04            [24] 1206 	mov	ar4,r6
      0024E0 7D 00            [12] 1207 	mov	r5,#0x00
      0024E2 7F 40            [12] 1208 	mov	r7,#0x40
      0024E4 C0 06            [24] 1209 	push	ar6
      0024E6 C0 03            [24] 1210 	push	ar3
      0024E8 C0 02            [24] 1211 	push	ar2
      0024EA C0 01            [24] 1212 	push	ar1
      0024EC C0 00            [24] 1213 	push	ar0
      0024EE 85 00 F0         [24] 1214 	mov	b,ar0
      0024F1 E5 10            [12] 1215 	mov	a,_bp
      0024F3 24 12            [12] 1216 	add	a,#0x12
      0024F5 F8               [12] 1217 	mov	r0,a
      0024F6 E6               [12] 1218 	mov	a,@r0
      0024F7 C0 E0            [24] 1219 	push	acc
      0024F9 A8 F0            [24] 1220 	mov	r0,b
      0024FB 85 00 F0         [24] 1221 	mov	b,ar0
      0024FE E5 10            [12] 1222 	mov	a,_bp
      002500 24 07            [12] 1223 	add	a,#0x07
      002502 F8               [12] 1224 	mov	r0,a
      002503 E6               [12] 1225 	mov	a,@r0
      002504 C0 E0            [24] 1226 	push	acc
      002506 08               [12] 1227 	inc	r0
      002507 E6               [12] 1228 	mov	a,@r0
      002508 C0 E0            [24] 1229 	push	acc
      00250A 08               [12] 1230 	inc	r0
      00250B E6               [12] 1231 	mov	a,@r0
      00250C C0 E0            [24] 1232 	push	acc
      00250E 8C 82            [24] 1233 	mov	dpl,r4
      002510 8D 83            [24] 1234 	mov	dph,r5
      002512 8F F0            [24] 1235 	mov	b,r7
      002514 12 20 FB         [24] 1236 	lcall	_update
      002517 AD 82            [24] 1237 	mov	r5,dpl
      002519 AF 83            [24] 1238 	mov	r7,dph
      00251B E5 81            [12] 1239 	mov	a,sp
      00251D 24 FC            [12] 1240 	add	a,#0xfc
      00251F F5 81            [12] 1241 	mov	sp,a
      002521 D0 00            [24] 1242 	pop	ar0
      002523 D0 01            [24] 1243 	pop	ar1
      002525 D0 02            [24] 1244 	pop	ar2
      002527 D0 03            [24] 1245 	pop	ar3
      002529 D0 06            [24] 1246 	pop	ar6
      00252B D0 02            [24] 1247 	pop	ar2
      00252D ED               [12] 1248 	mov	a,r5
      00252E 4F               [12] 1249 	orl	a,r7
      00252F 60 01            [24] 1250 	jz	00105$
                                   1251 ;	walk.c:106: f++;
      002531 0B               [12] 1252 	inc	r3
      002532                       1253 00105$:
                                   1254 ;	walk.c:104: for (j = 0, f = 0; j < NMAX; j++) {
      002532 C0 00            [24] 1255 	push	ar0
      002534 E5 10            [12] 1256 	mov	a,_bp
      002536 24 12            [12] 1257 	add	a,#0x12
      002538 F8               [12] 1258 	mov	r0,a
      002539 06               [12] 1259 	inc	@r0
      00253A D0 00            [24] 1260 	pop	ar0
      00253C 02 24 B1         [24] 1261 	ljmp	00120$
      00253F                       1262 00106$:
                                   1263 ;	walk.c:109: if (f) {
      00253F EB               [12] 1264 	mov	a,r3
      002540 70 03            [24] 1265 	jnz	00163$
      002542 02 26 80         [24] 1266 	ljmp	00115$
      002545                       1267 00163$:
                                   1268 ;	walk.c:110: while (1) {
      002545                       1269 00112$:
                                   1270 ;	walk.c:111: j = rand() % NMAX;
      002545 C0 02            [24] 1271 	push	ar2
      002547 C0 06            [24] 1272 	push	ar6
      002549 C0 02            [24] 1273 	push	ar2
      00254B C0 01            [24] 1274 	push	ar1
      00254D C0 00            [24] 1275 	push	ar0
      00254F 12 29 EE         [24] 1276 	lcall	_rand
      002552 AD 82            [24] 1277 	mov	r5,dpl
      002554 AF 83            [24] 1278 	mov	r7,dph
      002556 74 08            [12] 1279 	mov	a,#0x08
      002558 C0 E0            [24] 1280 	push	acc
      00255A E4               [12] 1281 	clr	a
      00255B C0 E0            [24] 1282 	push	acc
      00255D 8D 82            [24] 1283 	mov	dpl,r5
      00255F 8F 83            [24] 1284 	mov	dph,r7
      002561 12 2C F2         [24] 1285 	lcall	__modsint
      002564 AD 82            [24] 1286 	mov	r5,dpl
      002566 15 81            [12] 1287 	dec	sp
      002568 15 81            [12] 1288 	dec	sp
      00256A D0 00            [24] 1289 	pop	ar0
      00256C D0 01            [24] 1290 	pop	ar1
      00256E D0 02            [24] 1291 	pop	ar2
      002570 D0 06            [24] 1292 	pop	ar6
      002572 8D 04            [24] 1293 	mov	ar4,r5
                                   1294 ;	walk.c:112: if (!update(&t, &cur, j)) continue;
      002574 C0 00            [24] 1295 	push	ar0
      002576 E5 10            [12] 1296 	mov	a,_bp
      002578 24 05            [12] 1297 	add	a,#0x05
      00257A F8               [12] 1298 	mov	r0,a
      00257B C0 01            [24] 1299 	push	ar1
      00257D E5 10            [12] 1300 	mov	a,_bp
      00257F 24 07            [12] 1301 	add	a,#0x07
      002581 F9               [12] 1302 	mov	r1,a
      002582 E6               [12] 1303 	mov	a,@r0
      002583 F7               [12] 1304 	mov	@r1,a
      002584 09               [12] 1305 	inc	r1
      002585 77 00            [12] 1306 	mov	@r1,#0x00
      002587 09               [12] 1307 	inc	r1
      002588 77 40            [12] 1308 	mov	@r1,#0x40
      00258A D0 01            [24] 1309 	pop	ar1
      00258C E5 10            [12] 1310 	mov	a,_bp
      00258E 24 04            [12] 1311 	add	a,#0x04
      002590 F8               [12] 1312 	mov	r0,a
      002591 86 02            [24] 1313 	mov	ar2,@r0
      002593 7D 00            [12] 1314 	mov	r5,#0x00
      002595 7F 40            [12] 1315 	mov	r7,#0x40
      002597 D0 00            [24] 1316 	pop	ar0
      002599 C0 06            [24] 1317 	push	ar6
      00259B C0 02            [24] 1318 	push	ar2
      00259D C0 01            [24] 1319 	push	ar1
      00259F C0 00            [24] 1320 	push	ar0
      0025A1 C0 04            [24] 1321 	push	ar4
      0025A3 85 00 F0         [24] 1322 	mov	b,ar0
      0025A6 E5 10            [12] 1323 	mov	a,_bp
      0025A8 24 07            [12] 1324 	add	a,#0x07
      0025AA F8               [12] 1325 	mov	r0,a
      0025AB E6               [12] 1326 	mov	a,@r0
      0025AC C0 E0            [24] 1327 	push	acc
      0025AE 08               [12] 1328 	inc	r0
      0025AF E6               [12] 1329 	mov	a,@r0
      0025B0 C0 E0            [24] 1330 	push	acc
      0025B2 08               [12] 1331 	inc	r0
      0025B3 E6               [12] 1332 	mov	a,@r0
      0025B4 C0 E0            [24] 1333 	push	acc
      0025B6 8A 82            [24] 1334 	mov	dpl,r2
      0025B8 8D 83            [24] 1335 	mov	dph,r5
      0025BA 8F F0            [24] 1336 	mov	b,r7
      0025BC 12 20 FB         [24] 1337 	lcall	_update
      0025BF AD 82            [24] 1338 	mov	r5,dpl
      0025C1 AF 83            [24] 1339 	mov	r7,dph
      0025C3 E5 81            [12] 1340 	mov	a,sp
      0025C5 24 FC            [12] 1341 	add	a,#0xfc
      0025C7 F5 81            [12] 1342 	mov	sp,a
      0025C9 D0 00            [24] 1343 	pop	ar0
      0025CB D0 01            [24] 1344 	pop	ar1
      0025CD D0 02            [24] 1345 	pop	ar2
      0025CF D0 06            [24] 1346 	pop	ar6
      0025D1 D0 02            [24] 1347 	pop	ar2
      0025D3 ED               [12] 1348 	mov	a,r5
      0025D4 4F               [12] 1349 	orl	a,r7
      0025D5 70 03            [24] 1350 	jnz	00164$
      0025D7 02 25 45         [24] 1351 	ljmp	00112$
      0025DA                       1352 00164$:
                                   1353 ;	walk.c:114: if (!stpush(&cur)) {
      0025DA 8A 04            [24] 1354 	mov	ar4,r2
      0025DC 7D 00            [12] 1355 	mov	r5,#0x00
      0025DE 7F 40            [12] 1356 	mov	r7,#0x40
      0025E0 8C 82            [24] 1357 	mov	dpl,r4
      0025E2 8D 83            [24] 1358 	mov	dph,r5
      0025E4 8F F0            [24] 1359 	mov	b,r7
      0025E6 C0 06            [24] 1360 	push	ar6
      0025E8 C0 02            [24] 1361 	push	ar2
      0025EA C0 01            [24] 1362 	push	ar1
      0025EC C0 00            [24] 1363 	push	ar0
      0025EE 12 29 2B         [24] 1364 	lcall	_stpush
      0025F1 E5 82            [12] 1365 	mov	a,dpl
      0025F3 85 83 F0         [24] 1366 	mov	b,dph
      0025F6 D0 00            [24] 1367 	pop	ar0
      0025F8 D0 01            [24] 1368 	pop	ar1
      0025FA D0 02            [24] 1369 	pop	ar2
      0025FC D0 06            [24] 1370 	pop	ar6
      0025FE 45 F0            [12] 1371 	orl	a,b
      002600 70 1C            [24] 1372 	jnz	00110$
                                   1373 ;	walk.c:115: (void)puts("Memory error");
      002602 90 3F D0         [24] 1374 	mov	dptr,#___str_0
      002605 75 F0 80         [24] 1375 	mov	b,#0x80
      002608 C0 06            [24] 1376 	push	ar6
      00260A C0 02            [24] 1377 	push	ar2
      00260C C0 01            [24] 1378 	push	ar1
      00260E C0 00            [24] 1379 	push	ar0
      002610 12 2C 17         [24] 1380 	lcall	_puts
      002613 D0 00            [24] 1381 	pop	ar0
      002615 D0 01            [24] 1382 	pop	ar1
      002617 D0 02            [24] 1383 	pop	ar2
      002619 D0 06            [24] 1384 	pop	ar6
                                   1385 ;	walk.c:116: reset();
      00261B 12 20 F8         [24] 1386 	lcall	_reset
      00261E                       1387 00110$:
                                   1388 ;	walk.c:118: cur = t;
      00261E C0 02            [24] 1389 	push	ar2
      002620 C0 00            [24] 1390 	push	ar0
      002622 A8 10            [24] 1391 	mov	r0,_bp
      002624 08               [12] 1392 	inc	r0
      002625 C0 01            [24] 1393 	push	ar1
      002627 E5 10            [12] 1394 	mov	a,_bp
      002629 24 07            [12] 1395 	add	a,#0x07
      00262B F9               [12] 1396 	mov	r1,a
      00262C E6               [12] 1397 	mov	a,@r0
      00262D F7               [12] 1398 	mov	@r1,a
      00262E 09               [12] 1399 	inc	r1
      00262F 77 00            [12] 1400 	mov	@r1,#0x00
      002631 09               [12] 1401 	inc	r1
      002632 77 40            [12] 1402 	mov	@r1,#0x40
      002634 D0 01            [24] 1403 	pop	ar1
      002636 A8 10            [24] 1404 	mov	r0,_bp
      002638 08               [12] 1405 	inc	r0
      002639 08               [12] 1406 	inc	r0
      00263A 86 02            [24] 1407 	mov	ar2,@r0
      00263C 7B 00            [12] 1408 	mov	r3,#0x00
      00263E 7F 40            [12] 1409 	mov	r7,#0x40
      002640 D0 00            [24] 1410 	pop	ar0
      002642 C0 06            [24] 1411 	push	ar6
      002644 C0 02            [24] 1412 	push	ar2
      002646 C0 01            [24] 1413 	push	ar1
      002648 C0 00            [24] 1414 	push	ar0
      00264A 74 04            [12] 1415 	mov	a,#0x04
      00264C C0 E0            [24] 1416 	push	acc
      00264E E4               [12] 1417 	clr	a
      00264F C0 E0            [24] 1418 	push	acc
      002651 85 00 F0         [24] 1419 	mov	b,ar0
      002654 E5 10            [12] 1420 	mov	a,_bp
      002656 24 07            [12] 1421 	add	a,#0x07
      002658 F8               [12] 1422 	mov	r0,a
      002659 E6               [12] 1423 	mov	a,@r0
      00265A C0 E0            [24] 1424 	push	acc
      00265C 08               [12] 1425 	inc	r0
      00265D E6               [12] 1426 	mov	a,@r0
      00265E C0 E0            [24] 1427 	push	acc
      002660 08               [12] 1428 	inc	r0
      002661 E6               [12] 1429 	mov	a,@r0
      002662 C0 E0            [24] 1430 	push	acc
      002664 8A 82            [24] 1431 	mov	dpl,r2
      002666 8B 83            [24] 1432 	mov	dph,r3
      002668 8F F0            [24] 1433 	mov	b,r7
      00266A 12 2B 84         [24] 1434 	lcall	___memcpy
      00266D E5 81            [12] 1435 	mov	a,sp
      00266F 24 FB            [12] 1436 	add	a,#0xfb
      002671 F5 81            [12] 1437 	mov	sp,a
      002673 D0 00            [24] 1438 	pop	ar0
      002675 D0 01            [24] 1439 	pop	ar1
      002677 D0 02            [24] 1440 	pop	ar2
      002679 D0 06            [24] 1441 	pop	ar6
                                   1442 ;	walk.c:119: goto process;
      00267B D0 02            [24] 1443 	pop	ar2
      00267D 02 23 D9         [24] 1444 	ljmp	00101$
      002680                       1445 00115$:
                                   1446 ;	walk.c:123: printf("\033[%d;%dH.", cur.r + 4, cur.c + 1);
      002680 86 05            [24] 1447 	mov	ar5,@r0
      002682 08               [12] 1448 	inc	r0
      002683 86 07            [24] 1449 	mov	ar7,@r0
      002685 18               [12] 1450 	dec	r0
      002686 0D               [12] 1451 	inc	r5
      002687 BD 00 01         [24] 1452 	cjne	r5,#0x00,00166$
      00268A 0F               [12] 1453 	inc	r7
      00268B                       1454 00166$:
      00268B 87 03            [24] 1455 	mov	ar3,@r1
      00268D 09               [12] 1456 	inc	r1
      00268E 87 04            [24] 1457 	mov	ar4,@r1
      002690 19               [12] 1458 	dec	r1
      002691 74 04            [12] 1459 	mov	a,#0x04
      002693 2B               [12] 1460 	add	a,r3
      002694 FB               [12] 1461 	mov	r3,a
      002695 E4               [12] 1462 	clr	a
      002696 3C               [12] 1463 	addc	a,r4
      002697 FC               [12] 1464 	mov	r4,a
      002698 C0 06            [24] 1465 	push	ar6
      00269A C0 02            [24] 1466 	push	ar2
      00269C C0 01            [24] 1467 	push	ar1
      00269E C0 00            [24] 1468 	push	ar0
      0026A0 C0 05            [24] 1469 	push	ar5
      0026A2 C0 07            [24] 1470 	push	ar7
      0026A4 C0 03            [24] 1471 	push	ar3
      0026A6 C0 04            [24] 1472 	push	ar4
      0026A8 74 FA            [12] 1473 	mov	a,#___str_3
      0026AA C0 E0            [24] 1474 	push	acc
      0026AC 74 3F            [12] 1475 	mov	a,#(___str_3 >> 8)
      0026AE C0 E0            [24] 1476 	push	acc
      0026B0 74 80            [12] 1477 	mov	a,#0x80
      0026B2 C0 E0            [24] 1478 	push	acc
      0026B4 12 2C 9D         [24] 1479 	lcall	_printf
      0026B7 E5 81            [12] 1480 	mov	a,sp
      0026B9 24 F9            [12] 1481 	add	a,#0xf9
      0026BB F5 81            [12] 1482 	mov	sp,a
      0026BD D0 00            [24] 1483 	pop	ar0
      0026BF D0 01            [24] 1484 	pop	ar1
      0026C1 D0 02            [24] 1485 	pop	ar2
      0026C3 D0 06            [24] 1486 	pop	ar6
                                   1487 ;	walk.c:125: if (!stpop(&cur)) goto term;
      0026C5 C0 00            [24] 1488 	push	ar0
      0026C7 E5 10            [12] 1489 	mov	a,_bp
      0026C9 24 03            [12] 1490 	add	a,#0x03
      0026CB F8               [12] 1491 	mov	r0,a
      0026CC 86 04            [24] 1492 	mov	ar4,@r0
      0026CE 7D 00            [12] 1493 	mov	r5,#0x00
      0026D0 7F 40            [12] 1494 	mov	r7,#0x40
      0026D2 D0 00            [24] 1495 	pop	ar0
      0026D4 8C 82            [24] 1496 	mov	dpl,r4
      0026D6 8D 83            [24] 1497 	mov	dph,r5
      0026D8 8F F0            [24] 1498 	mov	b,r7
      0026DA C0 06            [24] 1499 	push	ar6
      0026DC C0 02            [24] 1500 	push	ar2
      0026DE C0 01            [24] 1501 	push	ar1
      0026E0 C0 00            [24] 1502 	push	ar0
      0026E2 12 29 8C         [24] 1503 	lcall	_stpop
      0026E5 E5 82            [12] 1504 	mov	a,dpl
      0026E7 85 83 F0         [24] 1505 	mov	b,dph
      0026EA D0 00            [24] 1506 	pop	ar0
      0026EC D0 01            [24] 1507 	pop	ar1
      0026EE D0 02            [24] 1508 	pop	ar2
      0026F0 D0 06            [24] 1509 	pop	ar6
      0026F2 45 F0            [12] 1510 	orl	a,b
      0026F4 60 03            [24] 1511 	jz	00167$
      0026F6 02 24 5D         [24] 1512 	ljmp	00102$
      0026F9                       1513 00167$:
                                   1514 ;	walk.c:129: return;
                                   1515 ;	walk.c:130: }
      0026F9 85 10 81         [24] 1516 	mov	sp,_bp
      0026FC D0 10            [24] 1517 	pop	_bp
      0026FE 22               [24] 1518 	ret
                                   1519 ;------------------------------------------------------------
                                   1520 ;Allocation info for local variables in function 'main'
                                   1521 ;------------------------------------------------------------
                                   1522 ;initial                   Allocated to stack - _bp +7
                                   1523 ;N                         Allocated to stack - _bp +11
                                   1524 ;i                         Allocated to stack - _bp +5
                                   1525 ;j                         Allocated to registers r2 r6 
                                   1526 ;sloc0                     Allocated to stack - _bp +1
                                   1527 ;sloc1                     Allocated to stack - _bp +3
                                   1528 ;R                         Allocated with name '_main_R_65536_64'
                                   1529 ;------------------------------------------------------------
                                   1530 ;	walk.c:132: int main(void) {
                                   1531 ;	-----------------------------------------
                                   1532 ;	 function main
                                   1533 ;	-----------------------------------------
      0026FF                       1534 _main:
      0026FF C0 10            [24] 1535 	push	_bp
      002701 E5 81            [12] 1536 	mov	a,sp
      002703 F5 10            [12] 1537 	mov	_bp,a
      002705 24 0C            [12] 1538 	add	a,#0x0c
      002707 F5 81            [12] 1539 	mov	sp,a
                                   1540 ;	walk.c:138: i0 = 1;
      002709 78 21            [12] 1541 	mov	r0,#_i0
      00270B 76 01            [12] 1542 	mov	@r0,#0x01
                                   1543 ;	walk.c:140: IT0 = 1;
                                   1544 ;	assignBit
      00270D D2 88            [12] 1545 	setb	_IT0
                                   1546 ;	walk.c:141: EX0 = 1;
                                   1547 ;	assignBit
      00270F D2 A8            [12] 1548 	setb	_EX0
                                   1549 ;	walk.c:142: EA = 1;
                                   1550 ;	assignBit
      002711 D2 AF            [12] 1551 	setb	_EA
                                   1552 ;	walk.c:144: srand(*R);
      002713 90 F5 02         [24] 1553 	mov	dptr,#_main_R_65536_64
      002716 E0               [24] 1554 	movx	a,@dptr
      002717 FE               [12] 1555 	mov	r6,a
      002718 A3               [24] 1556 	inc	dptr
      002719 E0               [24] 1557 	movx	a,@dptr
      00271A FF               [12] 1558 	mov	r7,a
      00271B 8E 82            [24] 1559 	mov	dpl,r6
      00271D 8F 83            [24] 1560 	mov	dph,r7
      00271F E0               [24] 1561 	movx	a,@dptr
      002720 FE               [12] 1562 	mov	r6,a
      002721 A3               [24] 1563 	inc	dptr
      002722 E0               [24] 1564 	movx	a,@dptr
      002723 FF               [12] 1565 	mov	r7,a
      002724 8E 82            [24] 1566 	mov	dpl,r6
      002726 8F 83            [24] 1567 	mov	dph,r7
      002728 12 2A B2         [24] 1568 	lcall	_srand
                                   1569 ;	walk.c:145: stinit();
      00272B 12 29 22         [24] 1570 	lcall	_stinit
                                   1571 ;	walk.c:147: puts("\033[2J\033[?25l");
      00272E 90 40 04         [24] 1572 	mov	dptr,#___str_4
      002731 75 F0 80         [24] 1573 	mov	b,#0x80
      002734 12 2C 17         [24] 1574 	lcall	_puts
                                   1575 ;	walk.c:149: while (i0) {
      002737 E5 10            [12] 1576 	mov	a,_bp
      002739 24 07            [12] 1577 	add	a,#0x07
      00273B F9               [12] 1578 	mov	r1,a
      00273C FF               [12] 1579 	mov	r7,a
      00273D E5 10            [12] 1580 	mov	a,_bp
      00273F 24 0B            [12] 1581 	add	a,#0x0b
      002741 F8               [12] 1582 	mov	r0,a
      002742 E4               [12] 1583 	clr	a
      002743 F6               [12] 1584 	mov	@r0,a
      002744 08               [12] 1585 	inc	r0
      002745 F6               [12] 1586 	mov	@r0,a
      002746                       1587 00107$:
      002746 78 21            [12] 1588 	mov	r0,#_i0
      002748 E6               [12] 1589 	mov	a,@r0
      002749 70 03            [24] 1590 	jnz	00169$
      00274B 02 29 0B         [24] 1591 	ljmp	00109$
      00274E                       1592 00169$:
                                   1593 ;	walk.c:150: for (i = 0; i < ROWS; i++)
      00274E 7B 00            [12] 1594 	mov	r3,#0x00
      002750 7C 00            [12] 1595 	mov	r4,#0x00
      002752 A8 10            [24] 1596 	mov	r0,_bp
      002754 08               [12] 1597 	inc	r0
      002755 E4               [12] 1598 	clr	a
      002756 F6               [12] 1599 	mov	@r0,a
      002757 08               [12] 1600 	inc	r0
      002758 F6               [12] 1601 	mov	@r0,a
                                   1602 ;	walk.c:151: for (j = 0; j < COLS; j++)
      002759                       1603 00121$:
      002759 A8 10            [24] 1604 	mov	r0,_bp
      00275B 08               [12] 1605 	inc	r0
      00275C C0 01            [24] 1606 	push	ar1
      00275E E5 10            [12] 1607 	mov	a,_bp
      002760 24 03            [12] 1608 	add	a,#0x03
      002762 F9               [12] 1609 	mov	r1,a
      002763 E6               [12] 1610 	mov	a,@r0
      002764 24 00            [12] 1611 	add	a,#_g
      002766 F7               [12] 1612 	mov	@r1,a
      002767 08               [12] 1613 	inc	r0
      002768 E6               [12] 1614 	mov	a,@r0
      002769 34 41            [12] 1615 	addc	a,#(_g >> 8)
      00276B 09               [12] 1616 	inc	r1
      00276C F7               [12] 1617 	mov	@r1,a
      00276D D0 01            [24] 1618 	pop	ar1
      00276F 7A 00            [12] 1619 	mov	r2,#0x00
      002771 7E 00            [12] 1620 	mov	r6,#0x00
      002773                       1621 00110$:
                                   1622 ;	walk.c:152: g[i][j] = 0x55;
      002773 E5 10            [12] 1623 	mov	a,_bp
      002775 24 03            [12] 1624 	add	a,#0x03
      002777 F8               [12] 1625 	mov	r0,a
      002778 EA               [12] 1626 	mov	a,r2
      002779 26               [12] 1627 	add	a,@r0
      00277A F5 82            [12] 1628 	mov	dpl,a
      00277C EE               [12] 1629 	mov	a,r6
      00277D 08               [12] 1630 	inc	r0
      00277E 36               [12] 1631 	addc	a,@r0
      00277F F5 83            [12] 1632 	mov	dph,a
      002781 74 55            [12] 1633 	mov	a,#0x55
      002783 F0               [24] 1634 	movx	@dptr,a
                                   1635 ;	walk.c:151: for (j = 0; j < COLS; j++)
      002784 0A               [12] 1636 	inc	r2
      002785 BA 00 01         [24] 1637 	cjne	r2,#0x00,00170$
      002788 0E               [12] 1638 	inc	r6
      002789                       1639 00170$:
      002789 C3               [12] 1640 	clr	c
      00278A EA               [12] 1641 	mov	a,r2
      00278B 94 C0            [12] 1642 	subb	a,#0xc0
      00278D EE               [12] 1643 	mov	a,r6
      00278E 64 80            [12] 1644 	xrl	a,#0x80
      002790 94 80            [12] 1645 	subb	a,#0x80
      002792 40 DF            [24] 1646 	jc	00110$
                                   1647 ;	walk.c:150: for (i = 0; i < ROWS; i++)
      002794 A8 10            [24] 1648 	mov	r0,_bp
      002796 08               [12] 1649 	inc	r0
      002797 74 C0            [12] 1650 	mov	a,#0xc0
      002799 26               [12] 1651 	add	a,@r0
      00279A F6               [12] 1652 	mov	@r0,a
      00279B E4               [12] 1653 	clr	a
      00279C 08               [12] 1654 	inc	r0
      00279D 36               [12] 1655 	addc	a,@r0
      00279E F6               [12] 1656 	mov	@r0,a
      00279F 0B               [12] 1657 	inc	r3
      0027A0 BB 00 01         [24] 1658 	cjne	r3,#0x00,00172$
      0027A3 0C               [12] 1659 	inc	r4
      0027A4                       1660 00172$:
      0027A4 C3               [12] 1661 	clr	c
      0027A5 EB               [12] 1662 	mov	a,r3
      0027A6 94 30            [12] 1663 	subb	a,#0x30
      0027A8 EC               [12] 1664 	mov	a,r4
      0027A9 64 80            [12] 1665 	xrl	a,#0x80
      0027AB 94 80            [12] 1666 	subb	a,#0x80
      0027AD 40 AA            [24] 1667 	jc	00121$
                                   1668 ;	walk.c:154: initial.r = rand() % ROWS;
      0027AF E5 10            [12] 1669 	mov	a,_bp
      0027B1 24 07            [12] 1670 	add	a,#0x07
      0027B3 F8               [12] 1671 	mov	r0,a
      0027B4 C0 07            [24] 1672 	push	ar7
      0027B6 C0 01            [24] 1673 	push	ar1
      0027B8 C0 00            [24] 1674 	push	ar0
      0027BA 12 29 EE         [24] 1675 	lcall	_rand
      0027BD AD 82            [24] 1676 	mov	r5,dpl
      0027BF AE 83            [24] 1677 	mov	r6,dph
      0027C1 74 30            [12] 1678 	mov	a,#0x30
      0027C3 C0 E0            [24] 1679 	push	acc
      0027C5 E4               [12] 1680 	clr	a
      0027C6 C0 E0            [24] 1681 	push	acc
      0027C8 8D 82            [24] 1682 	mov	dpl,r5
      0027CA 8E 83            [24] 1683 	mov	dph,r6
      0027CC 12 2C F2         [24] 1684 	lcall	__modsint
      0027CF AD 82            [24] 1685 	mov	r5,dpl
      0027D1 AE 83            [24] 1686 	mov	r6,dph
      0027D3 15 81            [12] 1687 	dec	sp
      0027D5 15 81            [12] 1688 	dec	sp
      0027D7 D0 00            [24] 1689 	pop	ar0
      0027D9 D0 01            [24] 1690 	pop	ar1
      0027DB A6 05            [24] 1691 	mov	@r0,ar5
      0027DD 08               [12] 1692 	inc	r0
      0027DE A6 06            [24] 1693 	mov	@r0,ar6
      0027E0 18               [12] 1694 	dec	r0
                                   1695 ;	walk.c:155: initial.c = rand() % COLS;
      0027E1 74 02            [12] 1696 	mov	a,#0x02
      0027E3 29               [12] 1697 	add	a,r1
      0027E4 F8               [12] 1698 	mov	r0,a
      0027E5 C0 01            [24] 1699 	push	ar1
      0027E7 C0 00            [24] 1700 	push	ar0
      0027E9 12 29 EE         [24] 1701 	lcall	_rand
      0027EC AD 82            [24] 1702 	mov	r5,dpl
      0027EE AE 83            [24] 1703 	mov	r6,dph
      0027F0 74 C0            [12] 1704 	mov	a,#0xc0
      0027F2 C0 E0            [24] 1705 	push	acc
      0027F4 E4               [12] 1706 	clr	a
      0027F5 C0 E0            [24] 1707 	push	acc
      0027F7 8D 82            [24] 1708 	mov	dpl,r5
      0027F9 8E 83            [24] 1709 	mov	dph,r6
      0027FB 12 2C F2         [24] 1710 	lcall	__modsint
      0027FE AD 82            [24] 1711 	mov	r5,dpl
      002800 AE 83            [24] 1712 	mov	r6,dph
      002802 15 81            [12] 1713 	dec	sp
      002804 15 81            [12] 1714 	dec	sp
      002806 D0 00            [24] 1715 	pop	ar0
      002808 A6 05            [24] 1716 	mov	@r0,ar5
      00280A 08               [12] 1717 	inc	r0
      00280B A6 06            [24] 1718 	mov	@r0,ar6
      00280D 18               [12] 1719 	dec	r0
                                   1720 ;	walk.c:157: puts("\033[2J\033[?25l");
      00280E 90 40 04         [24] 1721 	mov	dptr,#___str_4
      002811 75 F0 80         [24] 1722 	mov	b,#0x80
      002814 C0 00            [24] 1723 	push	ar0
      002816 12 2C 17         [24] 1724 	lcall	_puts
      002819 D0 00            [24] 1725 	pop	ar0
      00281B D0 01            [24] 1726 	pop	ar1
                                   1727 ;	walk.c:158: printf("\033[1;1H% 8u% 8d% 8d", N, initial.r, initial.c);
      00281D 86 05            [24] 1728 	mov	ar5,@r0
      00281F 08               [12] 1729 	inc	r0
      002820 86 06            [24] 1730 	mov	ar6,@r0
      002822 18               [12] 1731 	dec	r0
      002823 87 03            [24] 1732 	mov	ar3,@r1
      002825 09               [12] 1733 	inc	r1
      002826 87 04            [24] 1734 	mov	ar4,@r1
      002828 19               [12] 1735 	dec	r1
      002829 C0 01            [24] 1736 	push	ar1
      00282B C0 05            [24] 1737 	push	ar5
      00282D C0 06            [24] 1738 	push	ar6
      00282F C0 03            [24] 1739 	push	ar3
      002831 C0 04            [24] 1740 	push	ar4
      002833 E5 10            [12] 1741 	mov	a,_bp
      002835 24 0B            [12] 1742 	add	a,#0x0b
      002837 F8               [12] 1743 	mov	r0,a
      002838 E6               [12] 1744 	mov	a,@r0
      002839 C0 E0            [24] 1745 	push	acc
      00283B 08               [12] 1746 	inc	r0
      00283C E6               [12] 1747 	mov	a,@r0
      00283D C0 E0            [24] 1748 	push	acc
      00283F 74 0F            [12] 1749 	mov	a,#___str_5
      002841 C0 E0            [24] 1750 	push	acc
      002843 74 40            [12] 1751 	mov	a,#(___str_5 >> 8)
      002845 C0 E0            [24] 1752 	push	acc
      002847 74 80            [12] 1753 	mov	a,#0x80
      002849 C0 E0            [24] 1754 	push	acc
      00284B 12 2C 9D         [24] 1755 	lcall	_printf
      00284E E5 81            [12] 1756 	mov	a,sp
      002850 24 F7            [12] 1757 	add	a,#0xf7
      002852 F5 81            [12] 1758 	mov	sp,a
      002854 D0 01            [24] 1759 	pop	ar1
      002856 D0 07            [24] 1760 	pop	ar7
                                   1761 ;	walk.c:160: walk(&initial);
      002858 8F 04            [24] 1762 	mov	ar4,r7
      00285A 7D 00            [12] 1763 	mov	r5,#0x00
      00285C 7E 40            [12] 1764 	mov	r6,#0x40
      00285E 8C 82            [24] 1765 	mov	dpl,r4
      002860 8D 83            [24] 1766 	mov	dph,r5
      002862 8E F0            [24] 1767 	mov	b,r6
      002864 C0 07            [24] 1768 	push	ar7
      002866 C0 01            [24] 1769 	push	ar1
      002868 12 23 6D         [24] 1770 	lcall	_walk
      00286B D0 01            [24] 1771 	pop	ar1
      00286D D0 07            [24] 1772 	pop	ar7
                                   1773 ;	walk.c:162: for (i = 0; i < ROWS; i++)
      00286F E5 10            [12] 1774 	mov	a,_bp
      002871 24 05            [12] 1775 	add	a,#0x05
      002873 F8               [12] 1776 	mov	r0,a
      002874 E4               [12] 1777 	clr	a
      002875 F6               [12] 1778 	mov	@r0,a
      002876 08               [12] 1779 	inc	r0
      002877 F6               [12] 1780 	mov	@r0,a
      002878 7B 00            [12] 1781 	mov	r3,#0x00
      00287A 7C 00            [12] 1782 	mov	r4,#0x00
                                   1783 ;	walk.c:163: for (j = 0; j < COLS; j++)
      00287C                       1784 00126$:
      00287C E5 10            [12] 1785 	mov	a,_bp
      00287E 24 03            [12] 1786 	add	a,#0x03
      002880 F8               [12] 1787 	mov	r0,a
      002881 EB               [12] 1788 	mov	a,r3
      002882 24 00            [12] 1789 	add	a,#_g
      002884 F6               [12] 1790 	mov	@r0,a
      002885 EC               [12] 1791 	mov	a,r4
      002886 34 41            [12] 1792 	addc	a,#(_g >> 8)
      002888 08               [12] 1793 	inc	r0
      002889 F6               [12] 1794 	mov	@r0,a
      00288A 7A 00            [12] 1795 	mov	r2,#0x00
      00288C 7E 00            [12] 1796 	mov	r6,#0x00
      00288E                       1797 00114$:
                                   1798 ;	walk.c:164: if (g[i][j] != 0xaa) {
      00288E E5 10            [12] 1799 	mov	a,_bp
      002890 24 03            [12] 1800 	add	a,#0x03
      002892 F8               [12] 1801 	mov	r0,a
      002893 EA               [12] 1802 	mov	a,r2
      002894 26               [12] 1803 	add	a,@r0
      002895 F5 82            [12] 1804 	mov	dpl,a
      002897 EE               [12] 1805 	mov	a,r6
      002898 08               [12] 1806 	inc	r0
      002899 36               [12] 1807 	addc	a,@r0
      00289A F5 83            [12] 1808 	mov	dph,a
      00289C E0               [24] 1809 	movx	a,@dptr
      00289D FD               [12] 1810 	mov	r5,a
      00289E BD AA 02         [24] 1811 	cjne	r5,#0xaa,00174$
      0028A1 80 24            [24] 1812 	sjmp	00115$
      0028A3                       1813 00174$:
                                   1814 ;	walk.c:165: (void)puts("Memory error");
      0028A3 90 3F D0         [24] 1815 	mov	dptr,#___str_0
      0028A6 75 F0 80         [24] 1816 	mov	b,#0x80
      0028A9 C0 07            [24] 1817 	push	ar7
      0028AB C0 06            [24] 1818 	push	ar6
      0028AD C0 04            [24] 1819 	push	ar4
      0028AF C0 03            [24] 1820 	push	ar3
      0028B1 C0 02            [24] 1821 	push	ar2
      0028B3 C0 01            [24] 1822 	push	ar1
      0028B5 12 2C 17         [24] 1823 	lcall	_puts
      0028B8 D0 01            [24] 1824 	pop	ar1
      0028BA D0 02            [24] 1825 	pop	ar2
      0028BC D0 03            [24] 1826 	pop	ar3
      0028BE D0 04            [24] 1827 	pop	ar4
      0028C0 D0 06            [24] 1828 	pop	ar6
      0028C2 D0 07            [24] 1829 	pop	ar7
                                   1830 ;	walk.c:166: reset();
      0028C4 12 20 F8         [24] 1831 	lcall	_reset
      0028C7                       1832 00115$:
                                   1833 ;	walk.c:163: for (j = 0; j < COLS; j++)
      0028C7 0A               [12] 1834 	inc	r2
      0028C8 BA 00 01         [24] 1835 	cjne	r2,#0x00,00175$
      0028CB 0E               [12] 1836 	inc	r6
      0028CC                       1837 00175$:
      0028CC C3               [12] 1838 	clr	c
      0028CD EA               [12] 1839 	mov	a,r2
      0028CE 94 C0            [12] 1840 	subb	a,#0xc0
      0028D0 EE               [12] 1841 	mov	a,r6
      0028D1 64 80            [12] 1842 	xrl	a,#0x80
      0028D3 94 80            [12] 1843 	subb	a,#0x80
      0028D5 40 B7            [24] 1844 	jc	00114$
                                   1845 ;	walk.c:162: for (i = 0; i < ROWS; i++)
      0028D7 74 C0            [12] 1846 	mov	a,#0xc0
      0028D9 2B               [12] 1847 	add	a,r3
      0028DA FB               [12] 1848 	mov	r3,a
      0028DB E4               [12] 1849 	clr	a
      0028DC 3C               [12] 1850 	addc	a,r4
      0028DD FC               [12] 1851 	mov	r4,a
      0028DE E5 10            [12] 1852 	mov	a,_bp
      0028E0 24 05            [12] 1853 	add	a,#0x05
      0028E2 F8               [12] 1854 	mov	r0,a
      0028E3 06               [12] 1855 	inc	@r0
      0028E4 B6 00 02         [24] 1856 	cjne	@r0,#0x00,00177$
      0028E7 08               [12] 1857 	inc	r0
      0028E8 06               [12] 1858 	inc	@r0
      0028E9                       1859 00177$:
      0028E9 E5 10            [12] 1860 	mov	a,_bp
      0028EB 24 05            [12] 1861 	add	a,#0x05
      0028ED F8               [12] 1862 	mov	r0,a
      0028EE C3               [12] 1863 	clr	c
      0028EF E6               [12] 1864 	mov	a,@r0
      0028F0 94 30            [12] 1865 	subb	a,#0x30
      0028F2 08               [12] 1866 	inc	r0
      0028F3 E6               [12] 1867 	mov	a,@r0
      0028F4 64 80            [12] 1868 	xrl	a,#0x80
      0028F6 94 80            [12] 1869 	subb	a,#0x80
      0028F8 50 03            [24] 1870 	jnc	00178$
      0028FA 02 28 7C         [24] 1871 	ljmp	00126$
      0028FD                       1872 00178$:
                                   1873 ;	walk.c:169: N++;
      0028FD E5 10            [12] 1874 	mov	a,_bp
      0028FF 24 0B            [12] 1875 	add	a,#0x0b
      002901 F8               [12] 1876 	mov	r0,a
      002902 06               [12] 1877 	inc	@r0
      002903 B6 00 02         [24] 1878 	cjne	@r0,#0x00,00179$
      002906 08               [12] 1879 	inc	r0
      002907 06               [12] 1880 	inc	@r0
      002908                       1881 00179$:
      002908 02 27 46         [24] 1882 	ljmp	00107$
      00290B                       1883 00109$:
                                   1884 ;	walk.c:172: EA = 0;
                                   1885 ;	assignBit
      00290B C2 AF            [12] 1886 	clr	_EA
                                   1887 ;	walk.c:174: puts("\033[2J\033[?25h");
      00290D 90 40 22         [24] 1888 	mov	dptr,#___str_6
      002910 75 F0 80         [24] 1889 	mov	b,#0x80
      002913 12 2C 17         [24] 1890 	lcall	_puts
                                   1891 ;	walk.c:178: __endasm;
      002916 02 00 00         [24] 1892 	ljmp	0
                                   1893 ;	walk.c:180: return 0;
      002919 90 00 00         [24] 1894 	mov	dptr,#0x0000
                                   1895 ;	walk.c:181: }
      00291C 85 10 81         [24] 1896 	mov	sp,_bp
      00291F D0 10            [24] 1897 	pop	_bp
      002921 22               [24] 1898 	ret
                                   1899 ;------------------------------------------------------------
                                   1900 ;Allocation info for local variables in function 'stinit'
                                   1901 ;------------------------------------------------------------
                                   1902 ;	walk.c:183: static void stinit(void) {
                                   1903 ;	-----------------------------------------
                                   1904 ;	 function stinit
                                   1905 ;	-----------------------------------------
      002922                       1906 _stinit:
                                   1907 ;	walk.c:184: sp = -1;
      002922 90 F5 00         [24] 1908 	mov	dptr,#_sp
      002925 74 FF            [12] 1909 	mov	a,#0xff
      002927 F0               [24] 1910 	movx	@dptr,a
      002928 A3               [24] 1911 	inc	dptr
      002929 F0               [24] 1912 	movx	@dptr,a
                                   1913 ;	walk.c:185: return;
                                   1914 ;	walk.c:186: }
      00292A 22               [24] 1915 	ret
                                   1916 ;------------------------------------------------------------
                                   1917 ;Allocation info for local variables in function 'stpush'
                                   1918 ;------------------------------------------------------------
                                   1919 ;t                         Allocated to registers r5 r6 r7 
                                   1920 ;------------------------------------------------------------
                                   1921 ;	walk.c:188: static int stpush(struct node *t) {
                                   1922 ;	-----------------------------------------
                                   1923 ;	 function stpush
                                   1924 ;	-----------------------------------------
      00292B                       1925 _stpush:
      00292B AD 82            [24] 1926 	mov	r5,dpl
      00292D AE 83            [24] 1927 	mov	r6,dph
      00292F AF F0            [24] 1928 	mov	r7,b
                                   1929 ;	walk.c:189: if (sp == (SMAX - 1)) return 0;
      002931 90 F5 00         [24] 1930 	mov	dptr,#_sp
      002934 E0               [24] 1931 	movx	a,@dptr
      002935 FB               [12] 1932 	mov	r3,a
      002936 A3               [24] 1933 	inc	dptr
      002937 E0               [24] 1934 	movx	a,@dptr
      002938 FC               [12] 1935 	mov	r4,a
      002939 BB FF 07         [24] 1936 	cjne	r3,#0xff,00102$
      00293C BC 23 04         [24] 1937 	cjne	r4,#0x23,00102$
      00293F 90 00 00         [24] 1938 	mov	dptr,#0x0000
      002942 22               [24] 1939 	ret
      002943                       1940 00102$:
                                   1941 ;	walk.c:190: sp++;
      002943 90 F5 00         [24] 1942 	mov	dptr,#_sp
      002946 74 01            [12] 1943 	mov	a,#0x01
      002948 2B               [12] 1944 	add	a,r3
      002949 F0               [24] 1945 	movx	@dptr,a
      00294A E4               [12] 1946 	clr	a
      00294B 3C               [12] 1947 	addc	a,r4
      00294C A3               [24] 1948 	inc	dptr
      00294D F0               [24] 1949 	movx	@dptr,a
                                   1950 ;	walk.c:191: stack[sp] = *t;
      00294E 90 F5 00         [24] 1951 	mov	dptr,#_sp
      002951 E0               [24] 1952 	movx	a,@dptr
      002952 FB               [12] 1953 	mov	r3,a
      002953 A3               [24] 1954 	inc	dptr
      002954 E0               [24] 1955 	movx	a,@dptr
      002955 FC               [12] 1956 	mov	r4,a
      002956 EB               [12] 1957 	mov	a,r3
      002957 2B               [12] 1958 	add	a,r3
      002958 FB               [12] 1959 	mov	r3,a
      002959 EC               [12] 1960 	mov	a,r4
      00295A 33               [12] 1961 	rlc	a
      00295B FC               [12] 1962 	mov	r4,a
      00295C EB               [12] 1963 	mov	a,r3
      00295D 2B               [12] 1964 	add	a,r3
      00295E FB               [12] 1965 	mov	r3,a
      00295F EC               [12] 1966 	mov	a,r4
      002960 33               [12] 1967 	rlc	a
      002961 FC               [12] 1968 	mov	r4,a
      002962 EB               [12] 1969 	mov	a,r3
      002963 24 00            [12] 1970 	add	a,#_stack
      002965 FB               [12] 1971 	mov	r3,a
      002966 EC               [12] 1972 	mov	a,r4
      002967 34 65            [12] 1973 	addc	a,#(_stack >> 8)
      002969 FC               [12] 1974 	mov	r4,a
      00296A 7A 00            [12] 1975 	mov	r2,#0x00
      00296C 74 04            [12] 1976 	mov	a,#0x04
      00296E C0 E0            [24] 1977 	push	acc
      002970 E4               [12] 1978 	clr	a
      002971 C0 E0            [24] 1979 	push	acc
      002973 C0 05            [24] 1980 	push	ar5
      002975 C0 06            [24] 1981 	push	ar6
      002977 C0 07            [24] 1982 	push	ar7
      002979 8B 82            [24] 1983 	mov	dpl,r3
      00297B 8C 83            [24] 1984 	mov	dph,r4
      00297D 8A F0            [24] 1985 	mov	b,r2
      00297F 12 2B 84         [24] 1986 	lcall	___memcpy
      002982 E5 81            [12] 1987 	mov	a,sp
      002984 24 FB            [12] 1988 	add	a,#0xfb
      002986 F5 81            [12] 1989 	mov	sp,a
                                   1990 ;	walk.c:192: return 1;
      002988 90 00 01         [24] 1991 	mov	dptr,#0x0001
                                   1992 ;	walk.c:193: }
      00298B 22               [24] 1993 	ret
                                   1994 ;------------------------------------------------------------
                                   1995 ;Allocation info for local variables in function 'stpop'
                                   1996 ;------------------------------------------------------------
                                   1997 ;t                         Allocated to registers r5 r6 r7 
                                   1998 ;------------------------------------------------------------
                                   1999 ;	walk.c:195: static int stpop(struct node *t) {
                                   2000 ;	-----------------------------------------
                                   2001 ;	 function stpop
                                   2002 ;	-----------------------------------------
      00298C                       2003 _stpop:
      00298C AD 82            [24] 2004 	mov	r5,dpl
      00298E AE 83            [24] 2005 	mov	r6,dph
      002990 AF F0            [24] 2006 	mov	r7,b
                                   2007 ;	walk.c:196: if (sp == -1) return 0;
      002992 90 F5 00         [24] 2008 	mov	dptr,#_sp
      002995 E0               [24] 2009 	movx	a,@dptr
      002996 FB               [12] 2010 	mov	r3,a
      002997 A3               [24] 2011 	inc	dptr
      002998 E0               [24] 2012 	movx	a,@dptr
      002999 FC               [12] 2013 	mov	r4,a
      00299A BB FF 07         [24] 2014 	cjne	r3,#0xff,00102$
      00299D BC FF 04         [24] 2015 	cjne	r4,#0xff,00102$
      0029A0 90 00 00         [24] 2016 	mov	dptr,#0x0000
      0029A3 22               [24] 2017 	ret
      0029A4                       2018 00102$:
                                   2019 ;	walk.c:197: *t = stack[sp];
      0029A4 EB               [12] 2020 	mov	a,r3
      0029A5 2B               [12] 2021 	add	a,r3
      0029A6 FB               [12] 2022 	mov	r3,a
      0029A7 EC               [12] 2023 	mov	a,r4
      0029A8 33               [12] 2024 	rlc	a
      0029A9 FC               [12] 2025 	mov	r4,a
      0029AA EB               [12] 2026 	mov	a,r3
      0029AB 2B               [12] 2027 	add	a,r3
      0029AC FB               [12] 2028 	mov	r3,a
      0029AD EC               [12] 2029 	mov	a,r4
      0029AE 33               [12] 2030 	rlc	a
      0029AF FC               [12] 2031 	mov	r4,a
      0029B0 EB               [12] 2032 	mov	a,r3
      0029B1 24 00            [12] 2033 	add	a,#_stack
      0029B3 FB               [12] 2034 	mov	r3,a
      0029B4 EC               [12] 2035 	mov	a,r4
      0029B5 34 65            [12] 2036 	addc	a,#(_stack >> 8)
      0029B7 FC               [12] 2037 	mov	r4,a
      0029B8 7A 00            [12] 2038 	mov	r2,#0x00
      0029BA 74 04            [12] 2039 	mov	a,#0x04
      0029BC C0 E0            [24] 2040 	push	acc
      0029BE E4               [12] 2041 	clr	a
      0029BF C0 E0            [24] 2042 	push	acc
      0029C1 C0 03            [24] 2043 	push	ar3
      0029C3 C0 04            [24] 2044 	push	ar4
      0029C5 C0 02            [24] 2045 	push	ar2
      0029C7 8D 82            [24] 2046 	mov	dpl,r5
      0029C9 8E 83            [24] 2047 	mov	dph,r6
      0029CB 8F F0            [24] 2048 	mov	b,r7
      0029CD 12 2B 84         [24] 2049 	lcall	___memcpy
      0029D0 E5 81            [12] 2050 	mov	a,sp
      0029D2 24 FB            [12] 2051 	add	a,#0xfb
      0029D4 F5 81            [12] 2052 	mov	sp,a
                                   2053 ;	walk.c:198: sp--;
      0029D6 90 F5 00         [24] 2054 	mov	dptr,#_sp
      0029D9 E0               [24] 2055 	movx	a,@dptr
      0029DA 24 FF            [12] 2056 	add	a,#0xff
      0029DC FE               [12] 2057 	mov	r6,a
      0029DD A3               [24] 2058 	inc	dptr
      0029DE E0               [24] 2059 	movx	a,@dptr
      0029DF 34 FF            [12] 2060 	addc	a,#0xff
      0029E1 FF               [12] 2061 	mov	r7,a
      0029E2 90 F5 00         [24] 2062 	mov	dptr,#_sp
      0029E5 EE               [12] 2063 	mov	a,r6
      0029E6 F0               [24] 2064 	movx	@dptr,a
      0029E7 EF               [12] 2065 	mov	a,r7
      0029E8 A3               [24] 2066 	inc	dptr
      0029E9 F0               [24] 2067 	movx	@dptr,a
                                   2068 ;	walk.c:199: return 1;
      0029EA 90 00 01         [24] 2069 	mov	dptr,#0x0001
                                   2070 ;	walk.c:200: }
      0029ED 22               [24] 2071 	ret
                                   2072 	.area CSEG    (CODE)
                                   2073 	.area CONST   (CODE)
                                   2074 	.area CONST   (CODE)
      003FD0                       2075 ___str_0:
      003FD0 4D 65 6D 6F 72 79 20  2076 	.ascii "Memory error"
             65 72 72 6F 72
      003FDC 00                    2077 	.db 0x00
                                   2078 	.area CSEG    (CODE)
                                   2079 	.area CONST   (CODE)
      003FDD                       2080 ___str_1:
      003FDD 1B                    2081 	.db 0x1b
      003FDE 5B 25 64 3B 25 64 48  2082 	.ascii "[%d;%dHo"
             6F
      003FE6 00                    2083 	.db 0x00
                                   2084 	.area CSEG    (CODE)
                                   2085 	.area CONST   (CODE)
      003FE7                       2086 ___str_2:
      003FE7 1B                    2087 	.db 0x1b
      003FE8 5B 32 3B 31 48 25 20  2088 	.ascii "[2;1H% 8d% 8d% 8d"
             38 64 25 20 38 64 25
             20 38 64
      003FF9 00                    2089 	.db 0x00
                                   2090 	.area CSEG    (CODE)
                                   2091 	.area CONST   (CODE)
      003FFA                       2092 ___str_3:
      003FFA 1B                    2093 	.db 0x1b
      003FFB 5B 25 64 3B 25 64 48  2094 	.ascii "[%d;%dH."
             2E
      004003 00                    2095 	.db 0x00
                                   2096 	.area CSEG    (CODE)
                                   2097 	.area CONST   (CODE)
      004004                       2098 ___str_4:
      004004 1B                    2099 	.db 0x1b
      004005 5B 32 4A              2100 	.ascii "[2J"
      004008 1B                    2101 	.db 0x1b
      004009 5B 3F 32 35 6C        2102 	.ascii "[?25l"
      00400E 00                    2103 	.db 0x00
                                   2104 	.area CSEG    (CODE)
                                   2105 	.area CONST   (CODE)
      00400F                       2106 ___str_5:
      00400F 1B                    2107 	.db 0x1b
      004010 5B 31 3B 31 48 25 20  2108 	.ascii "[1;1H% 8u% 8d% 8d"
             38 75 25 20 38 64 25
             20 38 64
      004021 00                    2109 	.db 0x00
                                   2110 	.area CSEG    (CODE)
                                   2111 	.area CONST   (CODE)
      004022                       2112 ___str_6:
      004022 1B                    2113 	.db 0x1b
      004023 5B 32 4A              2114 	.ascii "[2J"
      004026 1B                    2115 	.db 0x1b
      004027 5B 3F 32 35 68        2116 	.ascii "[?25h"
      00402C 00                    2117 	.db 0x00
                                   2118 	.area CSEG    (CODE)
                                   2119 	.area XINIT   (CODE)
                                   2120 	.area CABS    (ABS,CODE)
