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
                                    370 ;initial                   Allocated to stack - _bp +5
                                    371 ;N                         Allocated to stack - _bp +9
                                    372 ;i                         Allocated to stack - _bp +11
                                    373 ;j                         Allocated to registers r2 r6 
                                    374 ;sloc0                     Allocated to stack - _bp +1
                                    375 ;sloc1                     Allocated to stack - _bp +3
                                    376 ;R                         Allocated with name '_main_R_65536_64'
                                    377 ;------------------------------------------------------------
                                    378 ;	walk.c:134: static volatile __xdata int *R = (__xdata int *)0xfffe;
      002062 90 F5 02         [24]  379 	mov	dptr,#_main_R_65536_64
      002065 74 FE            [12]  380 	mov	a,#0xfe
      002067 F0               [24]  381 	movx	@dptr,a
      002068 04               [12]  382 	inc	a
      002069 A3               [24]  383 	inc	dptr
      00206A F0               [24]  384 	movx	@dptr,a
                                    385 ;	walk.c:65: __idata static const struct node neigh[NMAX] = {
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
      002006 02 26 F9         [24]  458 	ljmp	_main
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
                                    538 ;Allocation info for local variables in function 'bang'
                                    539 ;------------------------------------------------------------
                                    540 ;	walk.c:37: static void bang(void) {
                                    541 ;	-----------------------------------------
                                    542 ;	 function bang
                                    543 ;	-----------------------------------------
      0020FB                        544 _bang:
                           000007   545 	ar7 = 0x07
                           000006   546 	ar6 = 0x06
                           000005   547 	ar5 = 0x05
                           000004   548 	ar4 = 0x04
                           000003   549 	ar3 = 0x03
                           000002   550 	ar2 = 0x02
                           000001   551 	ar1 = 0x01
                           000000   552 	ar0 = 0x00
                                    553 ;	walk.c:38: (void)puts("Memory error");
      0020FB 90 3F BE         [24]  554 	mov	dptr,#___str_0
      0020FE 75 F0 80         [24]  555 	mov	b,#0x80
      002101 12 2C 05         [24]  556 	lcall	_puts
                                    557 ;	walk.c:39: reset();
                                    558 ;	walk.c:41: return;
                                    559 ;	walk.c:42: }
      002104 02 20 F8         [24]  560 	ljmp	_reset
                                    561 ;------------------------------------------------------------
                                    562 ;Allocation info for local variables in function 'update'
                                    563 ;------------------------------------------------------------
                                    564 ;cur                       Allocated to stack - _bp -5
                                    565 ;j                         Allocated to stack - _bp -6
                                    566 ;t                         Allocated to stack - _bp +1
                                    567 ;sloc0                     Allocated to stack - _bp +4
                                    568 ;sloc1                     Allocated to stack - _bp +6
                                    569 ;------------------------------------------------------------
                                    570 ;	walk.c:80: static int update(struct node *t, struct node *cur, char j) {
                                    571 ;	-----------------------------------------
                                    572 ;	 function update
                                    573 ;	-----------------------------------------
      002107                        574 _update:
      002107 C0 10            [24]  575 	push	_bp
      002109 85 81 10         [24]  576 	mov	_bp,sp
      00210C C0 82            [24]  577 	push	dpl
      00210E C0 83            [24]  578 	push	dph
      002110 C0 F0            [24]  579 	push	b
      002112 E5 81            [12]  580 	mov	a,sp
      002114 24 05            [12]  581 	add	a,#0x05
      002116 F5 81            [12]  582 	mov	sp,a
                                    583 ;	walk.c:81: t->r = cur->r + neigh[j].r;
      002118 E5 10            [12]  584 	mov	a,_bp
      00211A 24 FB            [12]  585 	add	a,#0xfb
      00211C F8               [12]  586 	mov	r0,a
      00211D 86 02            [24]  587 	mov	ar2,@r0
      00211F 08               [12]  588 	inc	r0
      002120 86 03            [24]  589 	mov	ar3,@r0
      002122 08               [12]  590 	inc	r0
      002123 86 04            [24]  591 	mov	ar4,@r0
      002125 8A 82            [24]  592 	mov	dpl,r2
      002127 8B 83            [24]  593 	mov	dph,r3
      002129 8C F0            [24]  594 	mov	b,r4
      00212B E5 10            [12]  595 	mov	a,_bp
      00212D 24 04            [12]  596 	add	a,#0x04
      00212F F8               [12]  597 	mov	r0,a
      002130 12 2C C4         [24]  598 	lcall	__gptrget
      002133 F6               [12]  599 	mov	@r0,a
      002134 A3               [24]  600 	inc	dptr
      002135 12 2C C4         [24]  601 	lcall	__gptrget
      002138 08               [12]  602 	inc	r0
      002139 F6               [12]  603 	mov	@r0,a
      00213A E5 10            [12]  604 	mov	a,_bp
      00213C 24 FA            [12]  605 	add	a,#0xfa
      00213E F8               [12]  606 	mov	r0,a
      00213F E6               [12]  607 	mov	a,@r0
      002140 26               [12]  608 	add	a,@r0
      002141 25 E0            [12]  609 	add	a,acc
      002143 FD               [12]  610 	mov	r5,a
      002144 24 22            [12]  611 	add	a,#_neigh
      002146 F9               [12]  612 	mov	r1,a
      002147 87 07            [24]  613 	mov	ar7,@r1
      002149 09               [12]  614 	inc	r1
      00214A 87 06            [24]  615 	mov	ar6,@r1
      00214C E5 10            [12]  616 	mov	a,_bp
      00214E 24 04            [12]  617 	add	a,#0x04
      002150 F8               [12]  618 	mov	r0,a
      002151 EF               [12]  619 	mov	a,r7
      002152 26               [12]  620 	add	a,@r0
      002153 FF               [12]  621 	mov	r7,a
      002154 EE               [12]  622 	mov	a,r6
      002155 08               [12]  623 	inc	r0
      002156 36               [12]  624 	addc	a,@r0
      002157 FE               [12]  625 	mov	r6,a
      002158 A8 10            [24]  626 	mov	r0,_bp
      00215A 08               [12]  627 	inc	r0
      00215B 86 82            [24]  628 	mov	dpl,@r0
      00215D 08               [12]  629 	inc	r0
      00215E 86 83            [24]  630 	mov	dph,@r0
      002160 08               [12]  631 	inc	r0
      002161 86 F0            [24]  632 	mov	b,@r0
      002163 EF               [12]  633 	mov	a,r7
      002164 12 2A B9         [24]  634 	lcall	__gptrput
      002167 A3               [24]  635 	inc	dptr
      002168 EE               [12]  636 	mov	a,r6
      002169 12 2A B9         [24]  637 	lcall	__gptrput
                                    638 ;	walk.c:82: t->c = cur->c + neigh[j].c;
      00216C A8 10            [24]  639 	mov	r0,_bp
      00216E 08               [12]  640 	inc	r0
      00216F E5 10            [12]  641 	mov	a,_bp
      002171 24 06            [12]  642 	add	a,#0x06
      002173 F9               [12]  643 	mov	r1,a
      002174 74 02            [12]  644 	mov	a,#0x02
      002176 26               [12]  645 	add	a,@r0
      002177 F7               [12]  646 	mov	@r1,a
      002178 E4               [12]  647 	clr	a
      002179 08               [12]  648 	inc	r0
      00217A 36               [12]  649 	addc	a,@r0
      00217B 09               [12]  650 	inc	r1
      00217C F7               [12]  651 	mov	@r1,a
      00217D 08               [12]  652 	inc	r0
      00217E 09               [12]  653 	inc	r1
      00217F E6               [12]  654 	mov	a,@r0
      002180 F7               [12]  655 	mov	@r1,a
      002181 74 02            [12]  656 	mov	a,#0x02
      002183 2A               [12]  657 	add	a,r2
      002184 FA               [12]  658 	mov	r2,a
      002185 E4               [12]  659 	clr	a
      002186 3B               [12]  660 	addc	a,r3
      002187 FB               [12]  661 	mov	r3,a
      002188 8A 82            [24]  662 	mov	dpl,r2
      00218A 8B 83            [24]  663 	mov	dph,r3
      00218C 8C F0            [24]  664 	mov	b,r4
      00218E 12 2C C4         [24]  665 	lcall	__gptrget
      002191 FA               [12]  666 	mov	r2,a
      002192 A3               [24]  667 	inc	dptr
      002193 12 2C C4         [24]  668 	lcall	__gptrget
      002196 FB               [12]  669 	mov	r3,a
      002197 ED               [12]  670 	mov	a,r5
      002198 24 22            [12]  671 	add	a,#_neigh
      00219A 24 02            [12]  672 	add	a,#0x02
      00219C F9               [12]  673 	mov	r1,a
      00219D 87 04            [24]  674 	mov	ar4,@r1
      00219F 09               [12]  675 	inc	r1
      0021A0 87 05            [24]  676 	mov	ar5,@r1
      0021A2 EC               [12]  677 	mov	a,r4
      0021A3 2A               [12]  678 	add	a,r2
      0021A4 FA               [12]  679 	mov	r2,a
      0021A5 ED               [12]  680 	mov	a,r5
      0021A6 3B               [12]  681 	addc	a,r3
      0021A7 FB               [12]  682 	mov	r3,a
      0021A8 E5 10            [12]  683 	mov	a,_bp
      0021AA 24 06            [12]  684 	add	a,#0x06
      0021AC F8               [12]  685 	mov	r0,a
      0021AD 86 82            [24]  686 	mov	dpl,@r0
      0021AF 08               [12]  687 	inc	r0
      0021B0 86 83            [24]  688 	mov	dph,@r0
      0021B2 08               [12]  689 	inc	r0
      0021B3 86 F0            [24]  690 	mov	b,@r0
      0021B5 EA               [12]  691 	mov	a,r2
      0021B6 12 2A B9         [24]  692 	lcall	__gptrput
      0021B9 A3               [24]  693 	inc	dptr
      0021BA EB               [12]  694 	mov	a,r3
      0021BB 12 2A B9         [24]  695 	lcall	__gptrput
                                    696 ;	walk.c:84: if (t->r < 0) t->r += ROWS;
      0021BE A8 10            [24]  697 	mov	r0,_bp
      0021C0 08               [12]  698 	inc	r0
      0021C1 86 82            [24]  699 	mov	dpl,@r0
      0021C3 08               [12]  700 	inc	r0
      0021C4 86 83            [24]  701 	mov	dph,@r0
      0021C6 08               [12]  702 	inc	r0
      0021C7 86 F0            [24]  703 	mov	b,@r0
      0021C9 12 2C C4         [24]  704 	lcall	__gptrget
      0021CC FD               [12]  705 	mov	r5,a
      0021CD A3               [24]  706 	inc	dptr
      0021CE 12 2C C4         [24]  707 	lcall	__gptrget
      0021D1 FC               [12]  708 	mov	r4,a
      0021D2 EE               [12]  709 	mov	a,r6
      0021D3 30 E7 1D         [24]  710 	jnb	acc.7,00104$
      0021D6 74 30            [12]  711 	mov	a,#0x30
      0021D8 2D               [12]  712 	add	a,r5
      0021D9 FF               [12]  713 	mov	r7,a
      0021DA E4               [12]  714 	clr	a
      0021DB 3C               [12]  715 	addc	a,r4
      0021DC FE               [12]  716 	mov	r6,a
      0021DD A8 10            [24]  717 	mov	r0,_bp
      0021DF 08               [12]  718 	inc	r0
      0021E0 86 82            [24]  719 	mov	dpl,@r0
      0021E2 08               [12]  720 	inc	r0
      0021E3 86 83            [24]  721 	mov	dph,@r0
      0021E5 08               [12]  722 	inc	r0
      0021E6 86 F0            [24]  723 	mov	b,@r0
      0021E8 EF               [12]  724 	mov	a,r7
      0021E9 12 2A B9         [24]  725 	lcall	__gptrput
      0021EC A3               [24]  726 	inc	dptr
      0021ED EE               [12]  727 	mov	a,r6
      0021EE 12 2A B9         [24]  728 	lcall	__gptrput
      0021F1 80 27            [24]  729 	sjmp	00105$
      0021F3                        730 00104$:
                                    731 ;	walk.c:85: else if (t->r >= ROWS) t->r -= ROWS;
      0021F3 C3               [12]  732 	clr	c
      0021F4 ED               [12]  733 	mov	a,r5
      0021F5 94 30            [12]  734 	subb	a,#0x30
      0021F7 EC               [12]  735 	mov	a,r4
      0021F8 64 80            [12]  736 	xrl	a,#0x80
      0021FA 94 80            [12]  737 	subb	a,#0x80
      0021FC 40 1C            [24]  738 	jc	00105$
      0021FE ED               [12]  739 	mov	a,r5
      0021FF 24 D0            [12]  740 	add	a,#0xd0
      002201 FD               [12]  741 	mov	r5,a
      002202 EC               [12]  742 	mov	a,r4
      002203 34 FF            [12]  743 	addc	a,#0xff
      002205 FC               [12]  744 	mov	r4,a
      002206 A8 10            [24]  745 	mov	r0,_bp
      002208 08               [12]  746 	inc	r0
      002209 86 82            [24]  747 	mov	dpl,@r0
      00220B 08               [12]  748 	inc	r0
      00220C 86 83            [24]  749 	mov	dph,@r0
      00220E 08               [12]  750 	inc	r0
      00220F 86 F0            [24]  751 	mov	b,@r0
      002211 ED               [12]  752 	mov	a,r5
      002212 12 2A B9         [24]  753 	lcall	__gptrput
      002215 A3               [24]  754 	inc	dptr
      002216 EC               [12]  755 	mov	a,r4
      002217 12 2A B9         [24]  756 	lcall	__gptrput
      00221A                        757 00105$:
                                    758 ;	walk.c:86: if (t->c < 0) t->c += COLS;
      00221A E5 10            [12]  759 	mov	a,_bp
      00221C 24 06            [12]  760 	add	a,#0x06
      00221E F8               [12]  761 	mov	r0,a
      00221F 86 82            [24]  762 	mov	dpl,@r0
      002221 08               [12]  763 	inc	r0
      002222 86 83            [24]  764 	mov	dph,@r0
      002224 08               [12]  765 	inc	r0
      002225 86 F0            [24]  766 	mov	b,@r0
      002227 12 2C C4         [24]  767 	lcall	__gptrget
      00222A A3               [24]  768 	inc	dptr
      00222B 12 2C C4         [24]  769 	lcall	__gptrget
      00222E 30 E7 35         [24]  770 	jnb	acc.7,00109$
      002231 E5 10            [12]  771 	mov	a,_bp
      002233 24 06            [12]  772 	add	a,#0x06
      002235 F8               [12]  773 	mov	r0,a
      002236 86 82            [24]  774 	mov	dpl,@r0
      002238 08               [12]  775 	inc	r0
      002239 86 83            [24]  776 	mov	dph,@r0
      00223B 08               [12]  777 	inc	r0
      00223C 86 F0            [24]  778 	mov	b,@r0
      00223E 12 2C C4         [24]  779 	lcall	__gptrget
      002241 FE               [12]  780 	mov	r6,a
      002242 A3               [24]  781 	inc	dptr
      002243 12 2C C4         [24]  782 	lcall	__gptrget
      002246 FF               [12]  783 	mov	r7,a
      002247 74 C0            [12]  784 	mov	a,#0xc0
      002249 2E               [12]  785 	add	a,r6
      00224A FE               [12]  786 	mov	r6,a
      00224B E4               [12]  787 	clr	a
      00224C 3F               [12]  788 	addc	a,r7
      00224D FF               [12]  789 	mov	r7,a
      00224E E5 10            [12]  790 	mov	a,_bp
      002250 24 06            [12]  791 	add	a,#0x06
      002252 F8               [12]  792 	mov	r0,a
      002253 86 82            [24]  793 	mov	dpl,@r0
      002255 08               [12]  794 	inc	r0
      002256 86 83            [24]  795 	mov	dph,@r0
      002258 08               [12]  796 	inc	r0
      002259 86 F0            [24]  797 	mov	b,@r0
      00225B EE               [12]  798 	mov	a,r6
      00225C 12 2A B9         [24]  799 	lcall	__gptrput
      00225F A3               [24]  800 	inc	dptr
      002260 EF               [12]  801 	mov	a,r7
      002261 12 2A B9         [24]  802 	lcall	__gptrput
      002264 80 55            [24]  803 	sjmp	00110$
      002266                        804 00109$:
                                    805 ;	walk.c:87: else if (t->c >= COLS) t->c -= COLS;
      002266 E5 10            [12]  806 	mov	a,_bp
      002268 24 06            [12]  807 	add	a,#0x06
      00226A F8               [12]  808 	mov	r0,a
      00226B 86 82            [24]  809 	mov	dpl,@r0
      00226D 08               [12]  810 	inc	r0
      00226E 86 83            [24]  811 	mov	dph,@r0
      002270 08               [12]  812 	inc	r0
      002271 86 F0            [24]  813 	mov	b,@r0
      002273 12 2C C4         [24]  814 	lcall	__gptrget
      002276 FE               [12]  815 	mov	r6,a
      002277 A3               [24]  816 	inc	dptr
      002278 12 2C C4         [24]  817 	lcall	__gptrget
      00227B FF               [12]  818 	mov	r7,a
      00227C C3               [12]  819 	clr	c
      00227D EE               [12]  820 	mov	a,r6
      00227E 94 C0            [12]  821 	subb	a,#0xc0
      002280 EF               [12]  822 	mov	a,r7
      002281 64 80            [12]  823 	xrl	a,#0x80
      002283 94 80            [12]  824 	subb	a,#0x80
      002285 40 34            [24]  825 	jc	00110$
      002287 E5 10            [12]  826 	mov	a,_bp
      002289 24 06            [12]  827 	add	a,#0x06
      00228B F8               [12]  828 	mov	r0,a
      00228C 86 82            [24]  829 	mov	dpl,@r0
      00228E 08               [12]  830 	inc	r0
      00228F 86 83            [24]  831 	mov	dph,@r0
      002291 08               [12]  832 	inc	r0
      002292 86 F0            [24]  833 	mov	b,@r0
      002294 12 2C C4         [24]  834 	lcall	__gptrget
      002297 FE               [12]  835 	mov	r6,a
      002298 A3               [24]  836 	inc	dptr
      002299 12 2C C4         [24]  837 	lcall	__gptrget
      00229C FF               [12]  838 	mov	r7,a
      00229D EE               [12]  839 	mov	a,r6
      00229E 24 40            [12]  840 	add	a,#0x40
      0022A0 FE               [12]  841 	mov	r6,a
      0022A1 EF               [12]  842 	mov	a,r7
      0022A2 34 FF            [12]  843 	addc	a,#0xff
      0022A4 FF               [12]  844 	mov	r7,a
      0022A5 E5 10            [12]  845 	mov	a,_bp
      0022A7 24 06            [12]  846 	add	a,#0x06
      0022A9 F8               [12]  847 	mov	r0,a
      0022AA 86 82            [24]  848 	mov	dpl,@r0
      0022AC 08               [12]  849 	inc	r0
      0022AD 86 83            [24]  850 	mov	dph,@r0
      0022AF 08               [12]  851 	inc	r0
      0022B0 86 F0            [24]  852 	mov	b,@r0
      0022B2 EE               [12]  853 	mov	a,r6
      0022B3 12 2A B9         [24]  854 	lcall	__gptrput
      0022B6 A3               [24]  855 	inc	dptr
      0022B7 EF               [12]  856 	mov	a,r7
      0022B8 12 2A B9         [24]  857 	lcall	__gptrput
      0022BB                        858 00110$:
                                    859 ;	walk.c:89: if (g[t->r][t->c] == 0xaa) return 0;
      0022BB A8 10            [24]  860 	mov	r0,_bp
      0022BD 08               [12]  861 	inc	r0
      0022BE 86 82            [24]  862 	mov	dpl,@r0
      0022C0 08               [12]  863 	inc	r0
      0022C1 86 83            [24]  864 	mov	dph,@r0
      0022C3 08               [12]  865 	inc	r0
      0022C4 86 F0            [24]  866 	mov	b,@r0
      0022C6 12 2C C4         [24]  867 	lcall	__gptrget
      0022C9 FE               [12]  868 	mov	r6,a
      0022CA A3               [24]  869 	inc	dptr
      0022CB 12 2C C4         [24]  870 	lcall	__gptrget
      0022CE FF               [12]  871 	mov	r7,a
      0022CF C0 06            [24]  872 	push	ar6
      0022D1 C0 07            [24]  873 	push	ar7
      0022D3 90 00 C0         [24]  874 	mov	dptr,#0x00c0
      0022D6 12 2A D4         [24]  875 	lcall	__mulint
      0022D9 AE 82            [24]  876 	mov	r6,dpl
      0022DB AF 83            [24]  877 	mov	r7,dph
      0022DD 15 81            [12]  878 	dec	sp
      0022DF 15 81            [12]  879 	dec	sp
      0022E1 EE               [12]  880 	mov	a,r6
      0022E2 24 00            [12]  881 	add	a,#_g
      0022E4 FE               [12]  882 	mov	r6,a
      0022E5 EF               [12]  883 	mov	a,r7
      0022E6 34 41            [12]  884 	addc	a,#(_g >> 8)
      0022E8 FF               [12]  885 	mov	r7,a
      0022E9 E5 10            [12]  886 	mov	a,_bp
      0022EB 24 06            [12]  887 	add	a,#0x06
      0022ED F8               [12]  888 	mov	r0,a
      0022EE 86 82            [24]  889 	mov	dpl,@r0
      0022F0 08               [12]  890 	inc	r0
      0022F1 86 83            [24]  891 	mov	dph,@r0
      0022F3 08               [12]  892 	inc	r0
      0022F4 86 F0            [24]  893 	mov	b,@r0
      0022F6 12 2C C4         [24]  894 	lcall	__gptrget
      0022F9 FC               [12]  895 	mov	r4,a
      0022FA A3               [24]  896 	inc	dptr
      0022FB 12 2C C4         [24]  897 	lcall	__gptrget
      0022FE FD               [12]  898 	mov	r5,a
      0022FF EC               [12]  899 	mov	a,r4
      002300 2E               [12]  900 	add	a,r6
      002301 F5 82            [12]  901 	mov	dpl,a
      002303 ED               [12]  902 	mov	a,r5
      002304 3F               [12]  903 	addc	a,r7
      002305 F5 83            [12]  904 	mov	dph,a
      002307 E0               [24]  905 	movx	a,@dptr
      002308 FF               [12]  906 	mov	r7,a
      002309 BF AA 05         [24]  907 	cjne	r7,#0xaa,00114$
      00230C 90 00 00         [24]  908 	mov	dptr,#0x0000
      00230F 80 59            [24]  909 	sjmp	00116$
      002311                        910 00114$:
                                    911 ;	walk.c:90: else if (g[t->r][t->c] != 0x55) bang();
      002311 A8 10            [24]  912 	mov	r0,_bp
      002313 08               [12]  913 	inc	r0
      002314 86 82            [24]  914 	mov	dpl,@r0
      002316 08               [12]  915 	inc	r0
      002317 86 83            [24]  916 	mov	dph,@r0
      002319 08               [12]  917 	inc	r0
      00231A 86 F0            [24]  918 	mov	b,@r0
      00231C 12 2C C4         [24]  919 	lcall	__gptrget
      00231F FE               [12]  920 	mov	r6,a
      002320 A3               [24]  921 	inc	dptr
      002321 12 2C C4         [24]  922 	lcall	__gptrget
      002324 FF               [12]  923 	mov	r7,a
      002325 C0 06            [24]  924 	push	ar6
      002327 C0 07            [24]  925 	push	ar7
      002329 90 00 C0         [24]  926 	mov	dptr,#0x00c0
      00232C 12 2A D4         [24]  927 	lcall	__mulint
      00232F AE 82            [24]  928 	mov	r6,dpl
      002331 AF 83            [24]  929 	mov	r7,dph
      002333 15 81            [12]  930 	dec	sp
      002335 15 81            [12]  931 	dec	sp
      002337 EE               [12]  932 	mov	a,r6
      002338 24 00            [12]  933 	add	a,#_g
      00233A FE               [12]  934 	mov	r6,a
      00233B EF               [12]  935 	mov	a,r7
      00233C 34 41            [12]  936 	addc	a,#(_g >> 8)
      00233E FF               [12]  937 	mov	r7,a
      00233F E5 10            [12]  938 	mov	a,_bp
      002341 24 06            [12]  939 	add	a,#0x06
      002343 F8               [12]  940 	mov	r0,a
      002344 86 82            [24]  941 	mov	dpl,@r0
      002346 08               [12]  942 	inc	r0
      002347 86 83            [24]  943 	mov	dph,@r0
      002349 08               [12]  944 	inc	r0
      00234A 86 F0            [24]  945 	mov	b,@r0
      00234C 12 2C C4         [24]  946 	lcall	__gptrget
      00234F FC               [12]  947 	mov	r4,a
      002350 A3               [24]  948 	inc	dptr
      002351 12 2C C4         [24]  949 	lcall	__gptrget
      002354 FD               [12]  950 	mov	r5,a
      002355 EC               [12]  951 	mov	a,r4
      002356 2E               [12]  952 	add	a,r6
      002357 F5 82            [12]  953 	mov	dpl,a
      002359 ED               [12]  954 	mov	a,r5
      00235A 3F               [12]  955 	addc	a,r7
      00235B F5 83            [12]  956 	mov	dph,a
      00235D E0               [24]  957 	movx	a,@dptr
      00235E FF               [12]  958 	mov	r7,a
      00235F BF 55 02         [24]  959 	cjne	r7,#0x55,00148$
      002362 80 03            [24]  960 	sjmp	00115$
      002364                        961 00148$:
      002364 12 20 FB         [24]  962 	lcall	_bang
      002367                        963 00115$:
                                    964 ;	walk.c:92: return 1;
      002367 90 00 01         [24]  965 	mov	dptr,#0x0001
      00236A                        966 00116$:
                                    967 ;	walk.c:93: }
      00236A 85 10 81         [24]  968 	mov	sp,_bp
      00236D D0 10            [24]  969 	pop	_bp
      00236F 22               [24]  970 	ret
                                    971 ;------------------------------------------------------------
                                    972 ;Allocation info for local variables in function 'walk'
                                    973 ;------------------------------------------------------------
                                    974 ;nstart                    Allocated to registers 
                                    975 ;cur                       Allocated to stack - _bp +10
                                    976 ;t                         Allocated to stack - _bp +14
                                    977 ;j                         Allocated to stack - _bp +18
                                    978 ;f                         Allocated to registers r3 
                                    979 ;sloc0                     Allocated to stack - _bp +1
                                    980 ;sloc1                     Allocated to stack - _bp +2
                                    981 ;sloc2                     Allocated to stack - _bp +3
                                    982 ;sloc3                     Allocated to stack - _bp +17
                                    983 ;sloc4                     Allocated to stack - _bp +4
                                    984 ;sloc5                     Allocated to stack - _bp +5
                                    985 ;sloc6                     Allocated to stack - _bp +6
                                    986 ;sloc7                     Allocated to stack - _bp +7
                                    987 ;------------------------------------------------------------
                                    988 ;	walk.c:95: static void walk(struct node *nstart) {
                                    989 ;	-----------------------------------------
                                    990 ;	 function walk
                                    991 ;	-----------------------------------------
      002370                        992 _walk:
      002370 C0 10            [24]  993 	push	_bp
      002372 E5 81            [12]  994 	mov	a,sp
      002374 F5 10            [12]  995 	mov	_bp,a
      002376 24 12            [12]  996 	add	a,#0x12
      002378 F5 81            [12]  997 	mov	sp,a
      00237A AD 82            [24]  998 	mov	r5,dpl
      00237C AE 83            [24]  999 	mov	r6,dph
      00237E AF F0            [24] 1000 	mov	r7,b
                                   1001 ;	walk.c:99: cur = *nstart;
      002380 E5 10            [12] 1002 	mov	a,_bp
      002382 24 0A            [12] 1003 	add	a,#0x0a
      002384 F9               [12] 1004 	mov	r1,a
      002385 FA               [12] 1005 	mov	r2,a
      002386 7B 00            [12] 1006 	mov	r3,#0x00
      002388 7C 40            [12] 1007 	mov	r4,#0x40
      00238A C0 01            [24] 1008 	push	ar1
      00238C 74 04            [12] 1009 	mov	a,#0x04
      00238E C0 E0            [24] 1010 	push	acc
      002390 E4               [12] 1011 	clr	a
      002391 C0 E0            [24] 1012 	push	acc
      002393 C0 05            [24] 1013 	push	ar5
      002395 C0 06            [24] 1014 	push	ar6
      002397 C0 07            [24] 1015 	push	ar7
      002399 8A 82            [24] 1016 	mov	dpl,r2
      00239B 8B 83            [24] 1017 	mov	dph,r3
      00239D 8C F0            [24] 1018 	mov	b,r4
      00239F 12 2B 72         [24] 1019 	lcall	___memcpy
      0023A2 E5 81            [12] 1020 	mov	a,sp
      0023A4 24 FB            [12] 1021 	add	a,#0xfb
      0023A6 F5 81            [12] 1022 	mov	sp,a
      0023A8 D0 01            [24] 1023 	pop	ar1
                                   1024 ;	walk.c:101: process:
      0023AA E5 10            [12] 1025 	mov	a,_bp
      0023AC 24 06            [12] 1026 	add	a,#0x06
      0023AE F8               [12] 1027 	mov	r0,a
      0023AF A6 01            [24] 1028 	mov	@r0,ar1
      0023B1 E5 10            [12] 1029 	mov	a,_bp
      0023B3 24 0E            [12] 1030 	add	a,#0x0e
      0023B5 FE               [12] 1031 	mov	r6,a
      0023B6 E5 10            [12] 1032 	mov	a,_bp
      0023B8 24 03            [12] 1033 	add	a,#0x03
      0023BA F8               [12] 1034 	mov	r0,a
      0023BB A6 01            [24] 1035 	mov	@r0,ar1
      0023BD E5 10            [12] 1036 	mov	a,_bp
      0023BF 24 05            [12] 1037 	add	a,#0x05
      0023C1 F8               [12] 1038 	mov	r0,a
      0023C2 A6 01            [24] 1039 	mov	@r0,ar1
      0023C4 E5 10            [12] 1040 	mov	a,_bp
      0023C6 24 04            [12] 1041 	add	a,#0x04
      0023C8 F8               [12] 1042 	mov	r0,a
      0023C9 A6 06            [24] 1043 	mov	@r0,ar6
      0023CB 89 02            [24] 1044 	mov	ar2,r1
      0023CD A8 10            [24] 1045 	mov	r0,_bp
      0023CF 08               [12] 1046 	inc	r0
      0023D0 A6 06            [24] 1047 	mov	@r0,ar6
      0023D2 A8 10            [24] 1048 	mov	r0,_bp
      0023D4 08               [12] 1049 	inc	r0
      0023D5 08               [12] 1050 	inc	r0
      0023D6 A6 01            [24] 1051 	mov	@r0,ar1
      0023D8 74 02            [12] 1052 	mov	a,#0x02
      0023DA 29               [12] 1053 	add	a,r1
      0023DB F8               [12] 1054 	mov	r0,a
      0023DC                       1055 00101$:
                                   1056 ;	walk.c:102: g[cur.r][cur.c] = 0xaa;
      0023DC C0 02            [24] 1057 	push	ar2
      0023DE 87 02            [24] 1058 	mov	ar2,@r1
      0023E0 09               [12] 1059 	inc	r1
      0023E1 87 05            [24] 1060 	mov	ar5,@r1
      0023E3 19               [12] 1061 	dec	r1
      0023E4 C0 06            [24] 1062 	push	ar6
      0023E6 C0 01            [24] 1063 	push	ar1
      0023E8 C0 00            [24] 1064 	push	ar0
      0023EA C0 02            [24] 1065 	push	ar2
      0023EC C0 05            [24] 1066 	push	ar5
      0023EE 90 00 C0         [24] 1067 	mov	dptr,#0x00c0
      0023F1 12 2A D4         [24] 1068 	lcall	__mulint
      0023F4 AA 82            [24] 1069 	mov	r2,dpl
      0023F6 AD 83            [24] 1070 	mov	r5,dph
      0023F8 15 81            [12] 1071 	dec	sp
      0023FA 15 81            [12] 1072 	dec	sp
      0023FC D0 00            [24] 1073 	pop	ar0
      0023FE D0 01            [24] 1074 	pop	ar1
      002400 EA               [12] 1075 	mov	a,r2
      002401 24 00            [12] 1076 	add	a,#_g
      002403 FF               [12] 1077 	mov	r7,a
      002404 ED               [12] 1078 	mov	a,r5
      002405 34 41            [12] 1079 	addc	a,#(_g >> 8)
      002407 FC               [12] 1080 	mov	r4,a
      002408 86 02            [24] 1081 	mov	ar2,@r0
      00240A 08               [12] 1082 	inc	r0
      00240B 86 05            [24] 1083 	mov	ar5,@r0
      00240D 18               [12] 1084 	dec	r0
      00240E EA               [12] 1085 	mov	a,r2
      00240F 2F               [12] 1086 	add	a,r7
      002410 F5 82            [12] 1087 	mov	dpl,a
      002412 ED               [12] 1088 	mov	a,r5
      002413 3C               [12] 1089 	addc	a,r4
      002414 F5 83            [12] 1090 	mov	dph,a
      002416 74 AA            [12] 1091 	mov	a,#0xaa
      002418 F0               [24] 1092 	movx	@dptr,a
                                   1093 ;	walk.c:103: printf("\033[%d;%dHo", cur.r + 4, cur.c + 1);
      002419 86 02            [24] 1094 	mov	ar2,@r0
      00241B 08               [12] 1095 	inc	r0
      00241C 86 05            [24] 1096 	mov	ar5,@r0
      00241E 18               [12] 1097 	dec	r0
      00241F 74 01            [12] 1098 	mov	a,#0x01
      002421 2A               [12] 1099 	add	a,r2
      002422 FF               [12] 1100 	mov	r7,a
      002423 E4               [12] 1101 	clr	a
      002424 3D               [12] 1102 	addc	a,r5
      002425 FC               [12] 1103 	mov	r4,a
      002426 87 02            [24] 1104 	mov	ar2,@r1
      002428 09               [12] 1105 	inc	r1
      002429 87 05            [24] 1106 	mov	ar5,@r1
      00242B 19               [12] 1107 	dec	r1
      00242C 74 04            [12] 1108 	mov	a,#0x04
      00242E 2A               [12] 1109 	add	a,r2
      00242F FA               [12] 1110 	mov	r2,a
      002430 E4               [12] 1111 	clr	a
      002431 3D               [12] 1112 	addc	a,r5
      002432 FD               [12] 1113 	mov	r5,a
      002433 C0 02            [24] 1114 	push	ar2
      002435 C0 01            [24] 1115 	push	ar1
      002437 C0 00            [24] 1116 	push	ar0
      002439 C0 07            [24] 1117 	push	ar7
      00243B C0 04            [24] 1118 	push	ar4
      00243D C0 02            [24] 1119 	push	ar2
      00243F C0 05            [24] 1120 	push	ar5
      002441 74 CB            [12] 1121 	mov	a,#___str_1
      002443 C0 E0            [24] 1122 	push	acc
      002445 74 3F            [12] 1123 	mov	a,#(___str_1 >> 8)
      002447 C0 E0            [24] 1124 	push	acc
      002449 74 80            [12] 1125 	mov	a,#0x80
      00244B C0 E0            [24] 1126 	push	acc
      00244D 12 2C 8B         [24] 1127 	lcall	_printf
      002450 E5 81            [12] 1128 	mov	a,sp
      002452 24 F9            [12] 1129 	add	a,#0xf9
      002454 F5 81            [12] 1130 	mov	sp,a
      002456 D0 00            [24] 1131 	pop	ar0
      002458 D0 01            [24] 1132 	pop	ar1
      00245A D0 02            [24] 1133 	pop	ar2
      00245C D0 06            [24] 1134 	pop	ar6
                                   1135 ;	walk.c:130: return;
      00245E D0 02            [24] 1136 	pop	ar2
                                   1137 ;	walk.c:105: next:
      002460                       1138 00102$:
                                   1139 ;	walk.c:106: printf("\033[2;1H% 8d% 8d% 8d", sp, cur.r, cur.c);
      002460 C0 02            [24] 1140 	push	ar2
      002462 86 07            [24] 1141 	mov	ar7,@r0
      002464 08               [12] 1142 	inc	r0
      002465 86 04            [24] 1143 	mov	ar4,@r0
      002467 18               [12] 1144 	dec	r0
      002468 87 02            [24] 1145 	mov	ar2,@r1
      00246A 09               [12] 1146 	inc	r1
      00246B 87 05            [24] 1147 	mov	ar5,@r1
      00246D 19               [12] 1148 	dec	r1
      00246E C0 06            [24] 1149 	push	ar6
      002470 C0 02            [24] 1150 	push	ar2
      002472 C0 01            [24] 1151 	push	ar1
      002474 C0 00            [24] 1152 	push	ar0
      002476 C0 07            [24] 1153 	push	ar7
      002478 C0 04            [24] 1154 	push	ar4
      00247A C0 02            [24] 1155 	push	ar2
      00247C C0 05            [24] 1156 	push	ar5
      00247E 90 F5 00         [24] 1157 	mov	dptr,#_sp
      002481 E0               [24] 1158 	movx	a,@dptr
      002482 C0 E0            [24] 1159 	push	acc
      002484 A3               [24] 1160 	inc	dptr
      002485 E0               [24] 1161 	movx	a,@dptr
      002486 C0 E0            [24] 1162 	push	acc
      002488 74 D5            [12] 1163 	mov	a,#___str_2
      00248A C0 E0            [24] 1164 	push	acc
      00248C 74 3F            [12] 1165 	mov	a,#(___str_2 >> 8)
      00248E C0 E0            [24] 1166 	push	acc
      002490 74 80            [12] 1167 	mov	a,#0x80
      002492 C0 E0            [24] 1168 	push	acc
      002494 12 2C 8B         [24] 1169 	lcall	_printf
      002497 E5 81            [12] 1170 	mov	a,sp
      002499 24 F7            [12] 1171 	add	a,#0xf7
      00249B F5 81            [12] 1172 	mov	sp,a
      00249D D0 00            [24] 1173 	pop	ar0
      00249F D0 01            [24] 1174 	pop	ar1
      0024A1 D0 02            [24] 1175 	pop	ar2
      0024A3 D0 06            [24] 1176 	pop	ar6
                                   1177 ;	walk.c:108: for (j = 0, f = 0; j < NMAX; j++) {
      0024A5 7B 00            [12] 1178 	mov	r3,#0x00
      0024A7 C0 00            [24] 1179 	push	ar0
      0024A9 E5 10            [12] 1180 	mov	a,_bp
      0024AB 24 12            [12] 1181 	add	a,#0x12
      0024AD F8               [12] 1182 	mov	r0,a
      0024AE 76 00            [12] 1183 	mov	@r0,#0x00
      0024B0 D0 00            [24] 1184 	pop	ar0
                                   1185 ;	walk.c:130: return;
      0024B2 D0 02            [24] 1186 	pop	ar2
                                   1187 ;	walk.c:108: for (j = 0, f = 0; j < NMAX; j++) {
      0024B4                       1188 00120$:
      0024B4 C0 00            [24] 1189 	push	ar0
      0024B6 E5 10            [12] 1190 	mov	a,_bp
      0024B8 24 12            [12] 1191 	add	a,#0x12
      0024BA F8               [12] 1192 	mov	r0,a
      0024BB B6 08 00         [24] 1193 	cjne	@r0,#0x08,00160$
      0024BE                       1194 00160$:
      0024BE D0 00            [24] 1195 	pop	ar0
      0024C0 40 03            [24] 1196 	jc	00161$
      0024C2 02 25 42         [24] 1197 	ljmp	00106$
      0024C5                       1198 00161$:
                                   1199 ;	walk.c:109: if (!update(&t, &cur, j)) continue;
      0024C5 C0 02            [24] 1200 	push	ar2
      0024C7 C0 00            [24] 1201 	push	ar0
      0024C9 E5 10            [12] 1202 	mov	a,_bp
      0024CB 24 06            [12] 1203 	add	a,#0x06
      0024CD F8               [12] 1204 	mov	r0,a
      0024CE C0 01            [24] 1205 	push	ar1
      0024D0 E5 10            [12] 1206 	mov	a,_bp
      0024D2 24 07            [12] 1207 	add	a,#0x07
      0024D4 F9               [12] 1208 	mov	r1,a
      0024D5 E6               [12] 1209 	mov	a,@r0
      0024D6 F7               [12] 1210 	mov	@r1,a
      0024D7 09               [12] 1211 	inc	r1
      0024D8 77 00            [12] 1212 	mov	@r1,#0x00
      0024DA 09               [12] 1213 	inc	r1
      0024DB 77 40            [12] 1214 	mov	@r1,#0x40
      0024DD D0 01            [24] 1215 	pop	ar1
      0024DF D0 00            [24] 1216 	pop	ar0
      0024E1 8E 04            [24] 1217 	mov	ar4,r6
      0024E3 7D 00            [12] 1218 	mov	r5,#0x00
      0024E5 7F 40            [12] 1219 	mov	r7,#0x40
      0024E7 C0 06            [24] 1220 	push	ar6
      0024E9 C0 03            [24] 1221 	push	ar3
      0024EB C0 02            [24] 1222 	push	ar2
      0024ED C0 01            [24] 1223 	push	ar1
      0024EF C0 00            [24] 1224 	push	ar0
      0024F1 85 00 F0         [24] 1225 	mov	b,ar0
      0024F4 E5 10            [12] 1226 	mov	a,_bp
      0024F6 24 12            [12] 1227 	add	a,#0x12
      0024F8 F8               [12] 1228 	mov	r0,a
      0024F9 E6               [12] 1229 	mov	a,@r0
      0024FA C0 E0            [24] 1230 	push	acc
      0024FC A8 F0            [24] 1231 	mov	r0,b
      0024FE 85 00 F0         [24] 1232 	mov	b,ar0
      002501 E5 10            [12] 1233 	mov	a,_bp
      002503 24 07            [12] 1234 	add	a,#0x07
      002505 F8               [12] 1235 	mov	r0,a
      002506 E6               [12] 1236 	mov	a,@r0
      002507 C0 E0            [24] 1237 	push	acc
      002509 08               [12] 1238 	inc	r0
      00250A E6               [12] 1239 	mov	a,@r0
      00250B C0 E0            [24] 1240 	push	acc
      00250D 08               [12] 1241 	inc	r0
      00250E E6               [12] 1242 	mov	a,@r0
      00250F C0 E0            [24] 1243 	push	acc
      002511 8C 82            [24] 1244 	mov	dpl,r4
      002513 8D 83            [24] 1245 	mov	dph,r5
      002515 8F F0            [24] 1246 	mov	b,r7
      002517 12 21 07         [24] 1247 	lcall	_update
      00251A AD 82            [24] 1248 	mov	r5,dpl
      00251C AF 83            [24] 1249 	mov	r7,dph
      00251E E5 81            [12] 1250 	mov	a,sp
      002520 24 FC            [12] 1251 	add	a,#0xfc
      002522 F5 81            [12] 1252 	mov	sp,a
      002524 D0 00            [24] 1253 	pop	ar0
      002526 D0 01            [24] 1254 	pop	ar1
      002528 D0 02            [24] 1255 	pop	ar2
      00252A D0 03            [24] 1256 	pop	ar3
      00252C D0 06            [24] 1257 	pop	ar6
      00252E D0 02            [24] 1258 	pop	ar2
      002530 ED               [12] 1259 	mov	a,r5
      002531 4F               [12] 1260 	orl	a,r7
      002532 60 01            [24] 1261 	jz	00105$
                                   1262 ;	walk.c:110: f++;
      002534 0B               [12] 1263 	inc	r3
      002535                       1264 00105$:
                                   1265 ;	walk.c:108: for (j = 0, f = 0; j < NMAX; j++) {
      002535 C0 00            [24] 1266 	push	ar0
      002537 E5 10            [12] 1267 	mov	a,_bp
      002539 24 12            [12] 1268 	add	a,#0x12
      00253B F8               [12] 1269 	mov	r0,a
      00253C 06               [12] 1270 	inc	@r0
      00253D D0 00            [24] 1271 	pop	ar0
      00253F 02 24 B4         [24] 1272 	ljmp	00120$
      002542                       1273 00106$:
                                   1274 ;	walk.c:113: if (f) {
      002542 EB               [12] 1275 	mov	a,r3
      002543 70 03            [24] 1276 	jnz	00163$
      002545 02 26 7A         [24] 1277 	ljmp	00115$
      002548                       1278 00163$:
                                   1279 ;	walk.c:114: while (1) {
      002548                       1280 00112$:
                                   1281 ;	walk.c:115: j = rand() % NMAX;
      002548 C0 02            [24] 1282 	push	ar2
      00254A C0 06            [24] 1283 	push	ar6
      00254C C0 02            [24] 1284 	push	ar2
      00254E C0 01            [24] 1285 	push	ar1
      002550 C0 00            [24] 1286 	push	ar0
      002552 12 29 DC         [24] 1287 	lcall	_rand
      002555 AD 82            [24] 1288 	mov	r5,dpl
      002557 AF 83            [24] 1289 	mov	r7,dph
      002559 74 08            [12] 1290 	mov	a,#0x08
      00255B C0 E0            [24] 1291 	push	acc
      00255D E4               [12] 1292 	clr	a
      00255E C0 E0            [24] 1293 	push	acc
      002560 8D 82            [24] 1294 	mov	dpl,r5
      002562 8F 83            [24] 1295 	mov	dph,r7
      002564 12 2C E0         [24] 1296 	lcall	__modsint
      002567 AD 82            [24] 1297 	mov	r5,dpl
      002569 15 81            [12] 1298 	dec	sp
      00256B 15 81            [12] 1299 	dec	sp
      00256D D0 00            [24] 1300 	pop	ar0
      00256F D0 01            [24] 1301 	pop	ar1
      002571 D0 02            [24] 1302 	pop	ar2
      002573 D0 06            [24] 1303 	pop	ar6
      002575 8D 04            [24] 1304 	mov	ar4,r5
                                   1305 ;	walk.c:116: if (!update(&t, &cur, j)) continue;
      002577 C0 00            [24] 1306 	push	ar0
      002579 E5 10            [12] 1307 	mov	a,_bp
      00257B 24 05            [12] 1308 	add	a,#0x05
      00257D F8               [12] 1309 	mov	r0,a
      00257E C0 01            [24] 1310 	push	ar1
      002580 E5 10            [12] 1311 	mov	a,_bp
      002582 24 07            [12] 1312 	add	a,#0x07
      002584 F9               [12] 1313 	mov	r1,a
      002585 E6               [12] 1314 	mov	a,@r0
      002586 F7               [12] 1315 	mov	@r1,a
      002587 09               [12] 1316 	inc	r1
      002588 77 00            [12] 1317 	mov	@r1,#0x00
      00258A 09               [12] 1318 	inc	r1
      00258B 77 40            [12] 1319 	mov	@r1,#0x40
      00258D D0 01            [24] 1320 	pop	ar1
      00258F E5 10            [12] 1321 	mov	a,_bp
      002591 24 04            [12] 1322 	add	a,#0x04
      002593 F8               [12] 1323 	mov	r0,a
      002594 86 02            [24] 1324 	mov	ar2,@r0
      002596 7D 00            [12] 1325 	mov	r5,#0x00
      002598 7F 40            [12] 1326 	mov	r7,#0x40
      00259A D0 00            [24] 1327 	pop	ar0
      00259C C0 06            [24] 1328 	push	ar6
      00259E C0 02            [24] 1329 	push	ar2
      0025A0 C0 01            [24] 1330 	push	ar1
      0025A2 C0 00            [24] 1331 	push	ar0
      0025A4 C0 04            [24] 1332 	push	ar4
      0025A6 85 00 F0         [24] 1333 	mov	b,ar0
      0025A9 E5 10            [12] 1334 	mov	a,_bp
      0025AB 24 07            [12] 1335 	add	a,#0x07
      0025AD F8               [12] 1336 	mov	r0,a
      0025AE E6               [12] 1337 	mov	a,@r0
      0025AF C0 E0            [24] 1338 	push	acc
      0025B1 08               [12] 1339 	inc	r0
      0025B2 E6               [12] 1340 	mov	a,@r0
      0025B3 C0 E0            [24] 1341 	push	acc
      0025B5 08               [12] 1342 	inc	r0
      0025B6 E6               [12] 1343 	mov	a,@r0
      0025B7 C0 E0            [24] 1344 	push	acc
      0025B9 8A 82            [24] 1345 	mov	dpl,r2
      0025BB 8D 83            [24] 1346 	mov	dph,r5
      0025BD 8F F0            [24] 1347 	mov	b,r7
      0025BF 12 21 07         [24] 1348 	lcall	_update
      0025C2 AD 82            [24] 1349 	mov	r5,dpl
      0025C4 AF 83            [24] 1350 	mov	r7,dph
      0025C6 E5 81            [12] 1351 	mov	a,sp
      0025C8 24 FC            [12] 1352 	add	a,#0xfc
      0025CA F5 81            [12] 1353 	mov	sp,a
      0025CC D0 00            [24] 1354 	pop	ar0
      0025CE D0 01            [24] 1355 	pop	ar1
      0025D0 D0 02            [24] 1356 	pop	ar2
      0025D2 D0 06            [24] 1357 	pop	ar6
      0025D4 D0 02            [24] 1358 	pop	ar2
      0025D6 ED               [12] 1359 	mov	a,r5
      0025D7 4F               [12] 1360 	orl	a,r7
      0025D8 70 03            [24] 1361 	jnz	00164$
      0025DA 02 25 48         [24] 1362 	ljmp	00112$
      0025DD                       1363 00164$:
                                   1364 ;	walk.c:118: if (!stpush(&cur)) bang();
      0025DD 8A 04            [24] 1365 	mov	ar4,r2
      0025DF 7D 00            [12] 1366 	mov	r5,#0x00
      0025E1 7F 40            [12] 1367 	mov	r7,#0x40
      0025E3 8C 82            [24] 1368 	mov	dpl,r4
      0025E5 8D 83            [24] 1369 	mov	dph,r5
      0025E7 8F F0            [24] 1370 	mov	b,r7
      0025E9 C0 06            [24] 1371 	push	ar6
      0025EB C0 02            [24] 1372 	push	ar2
      0025ED C0 01            [24] 1373 	push	ar1
      0025EF C0 00            [24] 1374 	push	ar0
      0025F1 12 29 19         [24] 1375 	lcall	_stpush
      0025F4 E5 82            [12] 1376 	mov	a,dpl
      0025F6 85 83 F0         [24] 1377 	mov	b,dph
      0025F9 D0 00            [24] 1378 	pop	ar0
      0025FB D0 01            [24] 1379 	pop	ar1
      0025FD D0 02            [24] 1380 	pop	ar2
      0025FF D0 06            [24] 1381 	pop	ar6
      002601 45 F0            [12] 1382 	orl	a,b
      002603 70 13            [24] 1383 	jnz	00110$
      002605 C0 06            [24] 1384 	push	ar6
      002607 C0 02            [24] 1385 	push	ar2
      002609 C0 01            [24] 1386 	push	ar1
      00260B C0 00            [24] 1387 	push	ar0
      00260D 12 20 FB         [24] 1388 	lcall	_bang
      002610 D0 00            [24] 1389 	pop	ar0
      002612 D0 01            [24] 1390 	pop	ar1
      002614 D0 02            [24] 1391 	pop	ar2
      002616 D0 06            [24] 1392 	pop	ar6
      002618                       1393 00110$:
                                   1394 ;	walk.c:119: cur = t;
      002618 C0 02            [24] 1395 	push	ar2
      00261A C0 00            [24] 1396 	push	ar0
      00261C A8 10            [24] 1397 	mov	r0,_bp
      00261E 08               [12] 1398 	inc	r0
      00261F C0 01            [24] 1399 	push	ar1
      002621 E5 10            [12] 1400 	mov	a,_bp
      002623 24 07            [12] 1401 	add	a,#0x07
      002625 F9               [12] 1402 	mov	r1,a
      002626 E6               [12] 1403 	mov	a,@r0
      002627 F7               [12] 1404 	mov	@r1,a
      002628 09               [12] 1405 	inc	r1
      002629 77 00            [12] 1406 	mov	@r1,#0x00
      00262B 09               [12] 1407 	inc	r1
      00262C 77 40            [12] 1408 	mov	@r1,#0x40
      00262E D0 01            [24] 1409 	pop	ar1
      002630 A8 10            [24] 1410 	mov	r0,_bp
      002632 08               [12] 1411 	inc	r0
      002633 08               [12] 1412 	inc	r0
      002634 86 02            [24] 1413 	mov	ar2,@r0
      002636 7B 00            [12] 1414 	mov	r3,#0x00
      002638 7F 40            [12] 1415 	mov	r7,#0x40
      00263A D0 00            [24] 1416 	pop	ar0
      00263C C0 06            [24] 1417 	push	ar6
      00263E C0 02            [24] 1418 	push	ar2
      002640 C0 01            [24] 1419 	push	ar1
      002642 C0 00            [24] 1420 	push	ar0
      002644 74 04            [12] 1421 	mov	a,#0x04
      002646 C0 E0            [24] 1422 	push	acc
      002648 E4               [12] 1423 	clr	a
      002649 C0 E0            [24] 1424 	push	acc
      00264B 85 00 F0         [24] 1425 	mov	b,ar0
      00264E E5 10            [12] 1426 	mov	a,_bp
      002650 24 07            [12] 1427 	add	a,#0x07
      002652 F8               [12] 1428 	mov	r0,a
      002653 E6               [12] 1429 	mov	a,@r0
      002654 C0 E0            [24] 1430 	push	acc
      002656 08               [12] 1431 	inc	r0
      002657 E6               [12] 1432 	mov	a,@r0
      002658 C0 E0            [24] 1433 	push	acc
      00265A 08               [12] 1434 	inc	r0
      00265B E6               [12] 1435 	mov	a,@r0
      00265C C0 E0            [24] 1436 	push	acc
      00265E 8A 82            [24] 1437 	mov	dpl,r2
      002660 8B 83            [24] 1438 	mov	dph,r3
      002662 8F F0            [24] 1439 	mov	b,r7
      002664 12 2B 72         [24] 1440 	lcall	___memcpy
      002667 E5 81            [12] 1441 	mov	a,sp
      002669 24 FB            [12] 1442 	add	a,#0xfb
      00266B F5 81            [12] 1443 	mov	sp,a
      00266D D0 00            [24] 1444 	pop	ar0
      00266F D0 01            [24] 1445 	pop	ar1
      002671 D0 02            [24] 1446 	pop	ar2
      002673 D0 06            [24] 1447 	pop	ar6
                                   1448 ;	walk.c:120: goto process;
      002675 D0 02            [24] 1449 	pop	ar2
      002677 02 23 DC         [24] 1450 	ljmp	00101$
      00267A                       1451 00115$:
                                   1452 ;	walk.c:124: printf("\033[%d;%dH.", cur.r + 4, cur.c + 1);
      00267A 86 05            [24] 1453 	mov	ar5,@r0
      00267C 08               [12] 1454 	inc	r0
      00267D 86 07            [24] 1455 	mov	ar7,@r0
      00267F 18               [12] 1456 	dec	r0
      002680 0D               [12] 1457 	inc	r5
      002681 BD 00 01         [24] 1458 	cjne	r5,#0x00,00166$
      002684 0F               [12] 1459 	inc	r7
      002685                       1460 00166$:
      002685 87 03            [24] 1461 	mov	ar3,@r1
      002687 09               [12] 1462 	inc	r1
      002688 87 04            [24] 1463 	mov	ar4,@r1
      00268A 19               [12] 1464 	dec	r1
      00268B 74 04            [12] 1465 	mov	a,#0x04
      00268D 2B               [12] 1466 	add	a,r3
      00268E FB               [12] 1467 	mov	r3,a
      00268F E4               [12] 1468 	clr	a
      002690 3C               [12] 1469 	addc	a,r4
      002691 FC               [12] 1470 	mov	r4,a
      002692 C0 06            [24] 1471 	push	ar6
      002694 C0 02            [24] 1472 	push	ar2
      002696 C0 01            [24] 1473 	push	ar1
      002698 C0 00            [24] 1474 	push	ar0
      00269A C0 05            [24] 1475 	push	ar5
      00269C C0 07            [24] 1476 	push	ar7
      00269E C0 03            [24] 1477 	push	ar3
      0026A0 C0 04            [24] 1478 	push	ar4
      0026A2 74 E8            [12] 1479 	mov	a,#___str_3
      0026A4 C0 E0            [24] 1480 	push	acc
      0026A6 74 3F            [12] 1481 	mov	a,#(___str_3 >> 8)
      0026A8 C0 E0            [24] 1482 	push	acc
      0026AA 74 80            [12] 1483 	mov	a,#0x80
      0026AC C0 E0            [24] 1484 	push	acc
      0026AE 12 2C 8B         [24] 1485 	lcall	_printf
      0026B1 E5 81            [12] 1486 	mov	a,sp
      0026B3 24 F9            [12] 1487 	add	a,#0xf9
      0026B5 F5 81            [12] 1488 	mov	sp,a
      0026B7 D0 00            [24] 1489 	pop	ar0
      0026B9 D0 01            [24] 1490 	pop	ar1
      0026BB D0 02            [24] 1491 	pop	ar2
      0026BD D0 06            [24] 1492 	pop	ar6
                                   1493 ;	walk.c:126: if (!stpop(&cur)) goto term;
      0026BF C0 00            [24] 1494 	push	ar0
      0026C1 E5 10            [12] 1495 	mov	a,_bp
      0026C3 24 03            [12] 1496 	add	a,#0x03
      0026C5 F8               [12] 1497 	mov	r0,a
      0026C6 86 04            [24] 1498 	mov	ar4,@r0
      0026C8 7D 00            [12] 1499 	mov	r5,#0x00
      0026CA 7F 40            [12] 1500 	mov	r7,#0x40
      0026CC D0 00            [24] 1501 	pop	ar0
      0026CE 8C 82            [24] 1502 	mov	dpl,r4
      0026D0 8D 83            [24] 1503 	mov	dph,r5
      0026D2 8F F0            [24] 1504 	mov	b,r7
      0026D4 C0 06            [24] 1505 	push	ar6
      0026D6 C0 02            [24] 1506 	push	ar2
      0026D8 C0 01            [24] 1507 	push	ar1
      0026DA C0 00            [24] 1508 	push	ar0
      0026DC 12 29 7A         [24] 1509 	lcall	_stpop
      0026DF E5 82            [12] 1510 	mov	a,dpl
      0026E1 85 83 F0         [24] 1511 	mov	b,dph
      0026E4 D0 00            [24] 1512 	pop	ar0
      0026E6 D0 01            [24] 1513 	pop	ar1
      0026E8 D0 02            [24] 1514 	pop	ar2
      0026EA D0 06            [24] 1515 	pop	ar6
      0026EC 45 F0            [12] 1516 	orl	a,b
      0026EE 60 03            [24] 1517 	jz	00167$
      0026F0 02 24 60         [24] 1518 	ljmp	00102$
      0026F3                       1519 00167$:
                                   1520 ;	walk.c:130: return;
                                   1521 ;	walk.c:131: }
      0026F3 85 10 81         [24] 1522 	mov	sp,_bp
      0026F6 D0 10            [24] 1523 	pop	_bp
      0026F8 22               [24] 1524 	ret
                                   1525 ;------------------------------------------------------------
                                   1526 ;Allocation info for local variables in function 'main'
                                   1527 ;------------------------------------------------------------
                                   1528 ;initial                   Allocated to stack - _bp +5
                                   1529 ;N                         Allocated to stack - _bp +9
                                   1530 ;i                         Allocated to stack - _bp +11
                                   1531 ;j                         Allocated to registers r2 r6 
                                   1532 ;sloc0                     Allocated to stack - _bp +1
                                   1533 ;sloc1                     Allocated to stack - _bp +3
                                   1534 ;R                         Allocated with name '_main_R_65536_64'
                                   1535 ;------------------------------------------------------------
                                   1536 ;	walk.c:133: int main(void) {
                                   1537 ;	-----------------------------------------
                                   1538 ;	 function main
                                   1539 ;	-----------------------------------------
      0026F9                       1540 _main:
      0026F9 C0 10            [24] 1541 	push	_bp
      0026FB E5 81            [12] 1542 	mov	a,sp
      0026FD F5 10            [12] 1543 	mov	_bp,a
      0026FF 24 0C            [12] 1544 	add	a,#0x0c
      002701 F5 81            [12] 1545 	mov	sp,a
                                   1546 ;	walk.c:139: i0 = 1;
      002703 78 21            [12] 1547 	mov	r0,#_i0
      002705 76 01            [12] 1548 	mov	@r0,#0x01
                                   1549 ;	walk.c:141: IT0 = 1;
                                   1550 ;	assignBit
      002707 D2 88            [12] 1551 	setb	_IT0
                                   1552 ;	walk.c:142: EX0 = 1;
                                   1553 ;	assignBit
      002709 D2 A8            [12] 1554 	setb	_EX0
                                   1555 ;	walk.c:143: EA = 1;
                                   1556 ;	assignBit
      00270B D2 AF            [12] 1557 	setb	_EA
                                   1558 ;	walk.c:145: srand(*R);
      00270D 90 F5 02         [24] 1559 	mov	dptr,#_main_R_65536_64
      002710 E0               [24] 1560 	movx	a,@dptr
      002711 FE               [12] 1561 	mov	r6,a
      002712 A3               [24] 1562 	inc	dptr
      002713 E0               [24] 1563 	movx	a,@dptr
      002714 FF               [12] 1564 	mov	r7,a
      002715 8E 82            [24] 1565 	mov	dpl,r6
      002717 8F 83            [24] 1566 	mov	dph,r7
      002719 E0               [24] 1567 	movx	a,@dptr
      00271A FE               [12] 1568 	mov	r6,a
      00271B A3               [24] 1569 	inc	dptr
      00271C E0               [24] 1570 	movx	a,@dptr
      00271D FF               [12] 1571 	mov	r7,a
      00271E 8E 82            [24] 1572 	mov	dpl,r6
      002720 8F 83            [24] 1573 	mov	dph,r7
      002722 12 2A A0         [24] 1574 	lcall	_srand
                                   1575 ;	walk.c:146: stinit();
      002725 12 29 10         [24] 1576 	lcall	_stinit
                                   1577 ;	walk.c:148: puts("\033[2J\033[?25l");
      002728 90 3F F2         [24] 1578 	mov	dptr,#___str_4
      00272B 75 F0 80         [24] 1579 	mov	b,#0x80
      00272E 12 2C 05         [24] 1580 	lcall	_puts
                                   1581 ;	walk.c:150: while (i0) {
      002731 E5 10            [12] 1582 	mov	a,_bp
      002733 24 05            [12] 1583 	add	a,#0x05
      002735 F9               [12] 1584 	mov	r1,a
      002736 FF               [12] 1585 	mov	r7,a
      002737 E5 10            [12] 1586 	mov	a,_bp
      002739 24 09            [12] 1587 	add	a,#0x09
      00273B F8               [12] 1588 	mov	r0,a
      00273C E4               [12] 1589 	clr	a
      00273D F6               [12] 1590 	mov	@r0,a
      00273E 08               [12] 1591 	inc	r0
      00273F F6               [12] 1592 	mov	@r0,a
      002740                       1593 00107$:
      002740 78 21            [12] 1594 	mov	r0,#_i0
      002742 E6               [12] 1595 	mov	a,@r0
      002743 70 03            [24] 1596 	jnz	00169$
      002745 02 28 F9         [24] 1597 	ljmp	00109$
      002748                       1598 00169$:
                                   1599 ;	walk.c:151: for (i = 0; i < ROWS; i++)
      002748 7B 00            [12] 1600 	mov	r3,#0x00
      00274A 7C 00            [12] 1601 	mov	r4,#0x00
      00274C A8 10            [24] 1602 	mov	r0,_bp
      00274E 08               [12] 1603 	inc	r0
      00274F E4               [12] 1604 	clr	a
      002750 F6               [12] 1605 	mov	@r0,a
      002751 08               [12] 1606 	inc	r0
      002752 F6               [12] 1607 	mov	@r0,a
                                   1608 ;	walk.c:152: for (j = 0; j < COLS; j++)
      002753                       1609 00121$:
      002753 A8 10            [24] 1610 	mov	r0,_bp
      002755 08               [12] 1611 	inc	r0
      002756 C0 01            [24] 1612 	push	ar1
      002758 E5 10            [12] 1613 	mov	a,_bp
      00275A 24 03            [12] 1614 	add	a,#0x03
      00275C F9               [12] 1615 	mov	r1,a
      00275D E6               [12] 1616 	mov	a,@r0
      00275E 24 00            [12] 1617 	add	a,#_g
      002760 F7               [12] 1618 	mov	@r1,a
      002761 08               [12] 1619 	inc	r0
      002762 E6               [12] 1620 	mov	a,@r0
      002763 34 41            [12] 1621 	addc	a,#(_g >> 8)
      002765 09               [12] 1622 	inc	r1
      002766 F7               [12] 1623 	mov	@r1,a
      002767 D0 01            [24] 1624 	pop	ar1
      002769 7A 00            [12] 1625 	mov	r2,#0x00
      00276B 7E 00            [12] 1626 	mov	r6,#0x00
      00276D                       1627 00110$:
                                   1628 ;	walk.c:153: g[i][j] = 0x55;
      00276D E5 10            [12] 1629 	mov	a,_bp
      00276F 24 03            [12] 1630 	add	a,#0x03
      002771 F8               [12] 1631 	mov	r0,a
      002772 EA               [12] 1632 	mov	a,r2
      002773 26               [12] 1633 	add	a,@r0
      002774 F5 82            [12] 1634 	mov	dpl,a
      002776 EE               [12] 1635 	mov	a,r6
      002777 08               [12] 1636 	inc	r0
      002778 36               [12] 1637 	addc	a,@r0
      002779 F5 83            [12] 1638 	mov	dph,a
      00277B 74 55            [12] 1639 	mov	a,#0x55
      00277D F0               [24] 1640 	movx	@dptr,a
                                   1641 ;	walk.c:152: for (j = 0; j < COLS; j++)
      00277E 0A               [12] 1642 	inc	r2
      00277F BA 00 01         [24] 1643 	cjne	r2,#0x00,00170$
      002782 0E               [12] 1644 	inc	r6
      002783                       1645 00170$:
      002783 C3               [12] 1646 	clr	c
      002784 EA               [12] 1647 	mov	a,r2
      002785 94 C0            [12] 1648 	subb	a,#0xc0
      002787 EE               [12] 1649 	mov	a,r6
      002788 64 80            [12] 1650 	xrl	a,#0x80
      00278A 94 80            [12] 1651 	subb	a,#0x80
      00278C 40 DF            [24] 1652 	jc	00110$
                                   1653 ;	walk.c:151: for (i = 0; i < ROWS; i++)
      00278E A8 10            [24] 1654 	mov	r0,_bp
      002790 08               [12] 1655 	inc	r0
      002791 74 C0            [12] 1656 	mov	a,#0xc0
      002793 26               [12] 1657 	add	a,@r0
      002794 F6               [12] 1658 	mov	@r0,a
      002795 E4               [12] 1659 	clr	a
      002796 08               [12] 1660 	inc	r0
      002797 36               [12] 1661 	addc	a,@r0
      002798 F6               [12] 1662 	mov	@r0,a
      002799 0B               [12] 1663 	inc	r3
      00279A BB 00 01         [24] 1664 	cjne	r3,#0x00,00172$
      00279D 0C               [12] 1665 	inc	r4
      00279E                       1666 00172$:
      00279E C3               [12] 1667 	clr	c
      00279F EB               [12] 1668 	mov	a,r3
      0027A0 94 30            [12] 1669 	subb	a,#0x30
      0027A2 EC               [12] 1670 	mov	a,r4
      0027A3 64 80            [12] 1671 	xrl	a,#0x80
      0027A5 94 80            [12] 1672 	subb	a,#0x80
      0027A7 40 AA            [24] 1673 	jc	00121$
                                   1674 ;	walk.c:155: initial.r = rand() % ROWS;
      0027A9 E5 10            [12] 1675 	mov	a,_bp
      0027AB 24 05            [12] 1676 	add	a,#0x05
      0027AD F8               [12] 1677 	mov	r0,a
      0027AE C0 07            [24] 1678 	push	ar7
      0027B0 C0 01            [24] 1679 	push	ar1
      0027B2 C0 00            [24] 1680 	push	ar0
      0027B4 12 29 DC         [24] 1681 	lcall	_rand
      0027B7 AD 82            [24] 1682 	mov	r5,dpl
      0027B9 AE 83            [24] 1683 	mov	r6,dph
      0027BB 74 30            [12] 1684 	mov	a,#0x30
      0027BD C0 E0            [24] 1685 	push	acc
      0027BF E4               [12] 1686 	clr	a
      0027C0 C0 E0            [24] 1687 	push	acc
      0027C2 8D 82            [24] 1688 	mov	dpl,r5
      0027C4 8E 83            [24] 1689 	mov	dph,r6
      0027C6 12 2C E0         [24] 1690 	lcall	__modsint
      0027C9 AD 82            [24] 1691 	mov	r5,dpl
      0027CB AE 83            [24] 1692 	mov	r6,dph
      0027CD 15 81            [12] 1693 	dec	sp
      0027CF 15 81            [12] 1694 	dec	sp
      0027D1 D0 00            [24] 1695 	pop	ar0
      0027D3 D0 01            [24] 1696 	pop	ar1
      0027D5 A6 05            [24] 1697 	mov	@r0,ar5
      0027D7 08               [12] 1698 	inc	r0
      0027D8 A6 06            [24] 1699 	mov	@r0,ar6
      0027DA 18               [12] 1700 	dec	r0
                                   1701 ;	walk.c:156: initial.c = rand() % COLS;
      0027DB 74 02            [12] 1702 	mov	a,#0x02
      0027DD 29               [12] 1703 	add	a,r1
      0027DE F8               [12] 1704 	mov	r0,a
      0027DF C0 01            [24] 1705 	push	ar1
      0027E1 C0 00            [24] 1706 	push	ar0
      0027E3 12 29 DC         [24] 1707 	lcall	_rand
      0027E6 AD 82            [24] 1708 	mov	r5,dpl
      0027E8 AE 83            [24] 1709 	mov	r6,dph
      0027EA 74 C0            [12] 1710 	mov	a,#0xc0
      0027EC C0 E0            [24] 1711 	push	acc
      0027EE E4               [12] 1712 	clr	a
      0027EF C0 E0            [24] 1713 	push	acc
      0027F1 8D 82            [24] 1714 	mov	dpl,r5
      0027F3 8E 83            [24] 1715 	mov	dph,r6
      0027F5 12 2C E0         [24] 1716 	lcall	__modsint
      0027F8 AD 82            [24] 1717 	mov	r5,dpl
      0027FA AE 83            [24] 1718 	mov	r6,dph
      0027FC 15 81            [12] 1719 	dec	sp
      0027FE 15 81            [12] 1720 	dec	sp
      002800 D0 00            [24] 1721 	pop	ar0
      002802 A6 05            [24] 1722 	mov	@r0,ar5
      002804 08               [12] 1723 	inc	r0
      002805 A6 06            [24] 1724 	mov	@r0,ar6
      002807 18               [12] 1725 	dec	r0
                                   1726 ;	walk.c:158: puts("\033[2J\033[?25l");
      002808 90 3F F2         [24] 1727 	mov	dptr,#___str_4
      00280B 75 F0 80         [24] 1728 	mov	b,#0x80
      00280E C0 00            [24] 1729 	push	ar0
      002810 12 2C 05         [24] 1730 	lcall	_puts
      002813 D0 00            [24] 1731 	pop	ar0
      002815 D0 01            [24] 1732 	pop	ar1
                                   1733 ;	walk.c:159: printf("\033[1;1H% 8u% 8d% 8d", N, initial.r, initial.c);
      002817 86 05            [24] 1734 	mov	ar5,@r0
      002819 08               [12] 1735 	inc	r0
      00281A 86 06            [24] 1736 	mov	ar6,@r0
      00281C 18               [12] 1737 	dec	r0
      00281D 87 03            [24] 1738 	mov	ar3,@r1
      00281F 09               [12] 1739 	inc	r1
      002820 87 04            [24] 1740 	mov	ar4,@r1
      002822 19               [12] 1741 	dec	r1
      002823 C0 01            [24] 1742 	push	ar1
      002825 C0 05            [24] 1743 	push	ar5
      002827 C0 06            [24] 1744 	push	ar6
      002829 C0 03            [24] 1745 	push	ar3
      00282B C0 04            [24] 1746 	push	ar4
      00282D E5 10            [12] 1747 	mov	a,_bp
      00282F 24 09            [12] 1748 	add	a,#0x09
      002831 F8               [12] 1749 	mov	r0,a
      002832 E6               [12] 1750 	mov	a,@r0
      002833 C0 E0            [24] 1751 	push	acc
      002835 08               [12] 1752 	inc	r0
      002836 E6               [12] 1753 	mov	a,@r0
      002837 C0 E0            [24] 1754 	push	acc
      002839 74 FD            [12] 1755 	mov	a,#___str_5
      00283B C0 E0            [24] 1756 	push	acc
      00283D 74 3F            [12] 1757 	mov	a,#(___str_5 >> 8)
      00283F C0 E0            [24] 1758 	push	acc
      002841 74 80            [12] 1759 	mov	a,#0x80
      002843 C0 E0            [24] 1760 	push	acc
      002845 12 2C 8B         [24] 1761 	lcall	_printf
      002848 E5 81            [12] 1762 	mov	a,sp
      00284A 24 F7            [12] 1763 	add	a,#0xf7
      00284C F5 81            [12] 1764 	mov	sp,a
      00284E D0 01            [24] 1765 	pop	ar1
      002850 D0 07            [24] 1766 	pop	ar7
                                   1767 ;	walk.c:161: walk(&initial);
      002852 8F 04            [24] 1768 	mov	ar4,r7
      002854 7D 00            [12] 1769 	mov	r5,#0x00
      002856 7E 40            [12] 1770 	mov	r6,#0x40
      002858 8C 82            [24] 1771 	mov	dpl,r4
      00285A 8D 83            [24] 1772 	mov	dph,r5
      00285C 8E F0            [24] 1773 	mov	b,r6
      00285E C0 07            [24] 1774 	push	ar7
      002860 C0 01            [24] 1775 	push	ar1
      002862 12 23 70         [24] 1776 	lcall	_walk
      002865 D0 01            [24] 1777 	pop	ar1
      002867 D0 07            [24] 1778 	pop	ar7
                                   1779 ;	walk.c:163: for (i = 0; i < ROWS; i++)
      002869 E5 10            [12] 1780 	mov	a,_bp
      00286B 24 0B            [12] 1781 	add	a,#0x0b
      00286D F8               [12] 1782 	mov	r0,a
      00286E E4               [12] 1783 	clr	a
      00286F F6               [12] 1784 	mov	@r0,a
      002870 08               [12] 1785 	inc	r0
      002871 F6               [12] 1786 	mov	@r0,a
      002872 7B 00            [12] 1787 	mov	r3,#0x00
      002874 7C 00            [12] 1788 	mov	r4,#0x00
                                   1789 ;	walk.c:164: for (j = 0; j < COLS; j++)
      002876                       1790 00126$:
      002876 E5 10            [12] 1791 	mov	a,_bp
      002878 24 03            [12] 1792 	add	a,#0x03
      00287A F8               [12] 1793 	mov	r0,a
      00287B EB               [12] 1794 	mov	a,r3
      00287C 24 00            [12] 1795 	add	a,#_g
      00287E F6               [12] 1796 	mov	@r0,a
      00287F EC               [12] 1797 	mov	a,r4
      002880 34 41            [12] 1798 	addc	a,#(_g >> 8)
      002882 08               [12] 1799 	inc	r0
      002883 F6               [12] 1800 	mov	@r0,a
      002884 7A 00            [12] 1801 	mov	r2,#0x00
      002886 7E 00            [12] 1802 	mov	r6,#0x00
      002888                       1803 00114$:
                                   1804 ;	walk.c:165: if (g[i][j] != 0xaa) bang();
      002888 E5 10            [12] 1805 	mov	a,_bp
      00288A 24 03            [12] 1806 	add	a,#0x03
      00288C F8               [12] 1807 	mov	r0,a
      00288D EA               [12] 1808 	mov	a,r2
      00288E 26               [12] 1809 	add	a,@r0
      00288F F5 82            [12] 1810 	mov	dpl,a
      002891 EE               [12] 1811 	mov	a,r6
      002892 08               [12] 1812 	inc	r0
      002893 36               [12] 1813 	addc	a,@r0
      002894 F5 83            [12] 1814 	mov	dph,a
      002896 E0               [24] 1815 	movx	a,@dptr
      002897 FD               [12] 1816 	mov	r5,a
      002898 BD AA 02         [24] 1817 	cjne	r5,#0xaa,00174$
      00289B 80 1B            [24] 1818 	sjmp	00115$
      00289D                       1819 00174$:
      00289D C0 07            [24] 1820 	push	ar7
      00289F C0 06            [24] 1821 	push	ar6
      0028A1 C0 04            [24] 1822 	push	ar4
      0028A3 C0 03            [24] 1823 	push	ar3
      0028A5 C0 02            [24] 1824 	push	ar2
      0028A7 C0 01            [24] 1825 	push	ar1
      0028A9 12 20 FB         [24] 1826 	lcall	_bang
      0028AC D0 01            [24] 1827 	pop	ar1
      0028AE D0 02            [24] 1828 	pop	ar2
      0028B0 D0 03            [24] 1829 	pop	ar3
      0028B2 D0 04            [24] 1830 	pop	ar4
      0028B4 D0 06            [24] 1831 	pop	ar6
      0028B6 D0 07            [24] 1832 	pop	ar7
      0028B8                       1833 00115$:
                                   1834 ;	walk.c:164: for (j = 0; j < COLS; j++)
      0028B8 0A               [12] 1835 	inc	r2
      0028B9 BA 00 01         [24] 1836 	cjne	r2,#0x00,00175$
      0028BC 0E               [12] 1837 	inc	r6
      0028BD                       1838 00175$:
      0028BD C3               [12] 1839 	clr	c
      0028BE EA               [12] 1840 	mov	a,r2
      0028BF 94 C0            [12] 1841 	subb	a,#0xc0
      0028C1 EE               [12] 1842 	mov	a,r6
      0028C2 64 80            [12] 1843 	xrl	a,#0x80
      0028C4 94 80            [12] 1844 	subb	a,#0x80
      0028C6 40 C0            [24] 1845 	jc	00114$
                                   1846 ;	walk.c:163: for (i = 0; i < ROWS; i++)
      0028C8 74 C0            [12] 1847 	mov	a,#0xc0
      0028CA 2B               [12] 1848 	add	a,r3
      0028CB FB               [12] 1849 	mov	r3,a
      0028CC E4               [12] 1850 	clr	a
      0028CD 3C               [12] 1851 	addc	a,r4
      0028CE FC               [12] 1852 	mov	r4,a
      0028CF E5 10            [12] 1853 	mov	a,_bp
      0028D1 24 0B            [12] 1854 	add	a,#0x0b
      0028D3 F8               [12] 1855 	mov	r0,a
      0028D4 06               [12] 1856 	inc	@r0
      0028D5 B6 00 02         [24] 1857 	cjne	@r0,#0x00,00177$
      0028D8 08               [12] 1858 	inc	r0
      0028D9 06               [12] 1859 	inc	@r0
      0028DA                       1860 00177$:
      0028DA E5 10            [12] 1861 	mov	a,_bp
      0028DC 24 0B            [12] 1862 	add	a,#0x0b
      0028DE F8               [12] 1863 	mov	r0,a
      0028DF C3               [12] 1864 	clr	c
      0028E0 E6               [12] 1865 	mov	a,@r0
      0028E1 94 30            [12] 1866 	subb	a,#0x30
      0028E3 08               [12] 1867 	inc	r0
      0028E4 E6               [12] 1868 	mov	a,@r0
      0028E5 64 80            [12] 1869 	xrl	a,#0x80
      0028E7 94 80            [12] 1870 	subb	a,#0x80
      0028E9 40 8B            [24] 1871 	jc	00126$
                                   1872 ;	walk.c:167: N++;
      0028EB E5 10            [12] 1873 	mov	a,_bp
      0028ED 24 09            [12] 1874 	add	a,#0x09
      0028EF F8               [12] 1875 	mov	r0,a
      0028F0 06               [12] 1876 	inc	@r0
      0028F1 B6 00 02         [24] 1877 	cjne	@r0,#0x00,00179$
      0028F4 08               [12] 1878 	inc	r0
      0028F5 06               [12] 1879 	inc	@r0
      0028F6                       1880 00179$:
      0028F6 02 27 40         [24] 1881 	ljmp	00107$
      0028F9                       1882 00109$:
                                   1883 ;	walk.c:170: EA = 0;
                                   1884 ;	assignBit
      0028F9 C2 AF            [12] 1885 	clr	_EA
                                   1886 ;	walk.c:172: puts("\033[2J\033[?25h");
      0028FB 90 40 10         [24] 1887 	mov	dptr,#___str_6
      0028FE 75 F0 80         [24] 1888 	mov	b,#0x80
      002901 12 2C 05         [24] 1889 	lcall	_puts
                                   1890 ;	walk.c:176: __endasm;
      002904 02 00 00         [24] 1891 	ljmp	0
                                   1892 ;	walk.c:178: return 0;
      002907 90 00 00         [24] 1893 	mov	dptr,#0x0000
                                   1894 ;	walk.c:179: }
      00290A 85 10 81         [24] 1895 	mov	sp,_bp
      00290D D0 10            [24] 1896 	pop	_bp
      00290F 22               [24] 1897 	ret
                                   1898 ;------------------------------------------------------------
                                   1899 ;Allocation info for local variables in function 'stinit'
                                   1900 ;------------------------------------------------------------
                                   1901 ;	walk.c:181: static void stinit(void) {
                                   1902 ;	-----------------------------------------
                                   1903 ;	 function stinit
                                   1904 ;	-----------------------------------------
      002910                       1905 _stinit:
                                   1906 ;	walk.c:182: sp = -1;
      002910 90 F5 00         [24] 1907 	mov	dptr,#_sp
      002913 74 FF            [12] 1908 	mov	a,#0xff
      002915 F0               [24] 1909 	movx	@dptr,a
      002916 A3               [24] 1910 	inc	dptr
      002917 F0               [24] 1911 	movx	@dptr,a
                                   1912 ;	walk.c:183: return;
                                   1913 ;	walk.c:184: }
      002918 22               [24] 1914 	ret
                                   1915 ;------------------------------------------------------------
                                   1916 ;Allocation info for local variables in function 'stpush'
                                   1917 ;------------------------------------------------------------
                                   1918 ;t                         Allocated to registers r5 r6 r7 
                                   1919 ;------------------------------------------------------------
                                   1920 ;	walk.c:186: static int stpush(struct node *t) {
                                   1921 ;	-----------------------------------------
                                   1922 ;	 function stpush
                                   1923 ;	-----------------------------------------
      002919                       1924 _stpush:
      002919 AD 82            [24] 1925 	mov	r5,dpl
      00291B AE 83            [24] 1926 	mov	r6,dph
      00291D AF F0            [24] 1927 	mov	r7,b
                                   1928 ;	walk.c:187: if (sp == (SMAX - 1)) return 0;
      00291F 90 F5 00         [24] 1929 	mov	dptr,#_sp
      002922 E0               [24] 1930 	movx	a,@dptr
      002923 FB               [12] 1931 	mov	r3,a
      002924 A3               [24] 1932 	inc	dptr
      002925 E0               [24] 1933 	movx	a,@dptr
      002926 FC               [12] 1934 	mov	r4,a
      002927 BB FF 07         [24] 1935 	cjne	r3,#0xff,00102$
      00292A BC 23 04         [24] 1936 	cjne	r4,#0x23,00102$
      00292D 90 00 00         [24] 1937 	mov	dptr,#0x0000
      002930 22               [24] 1938 	ret
      002931                       1939 00102$:
                                   1940 ;	walk.c:188: sp++;
      002931 90 F5 00         [24] 1941 	mov	dptr,#_sp
      002934 74 01            [12] 1942 	mov	a,#0x01
      002936 2B               [12] 1943 	add	a,r3
      002937 F0               [24] 1944 	movx	@dptr,a
      002938 E4               [12] 1945 	clr	a
      002939 3C               [12] 1946 	addc	a,r4
      00293A A3               [24] 1947 	inc	dptr
      00293B F0               [24] 1948 	movx	@dptr,a
                                   1949 ;	walk.c:189: stack[sp] = *t;
      00293C 90 F5 00         [24] 1950 	mov	dptr,#_sp
      00293F E0               [24] 1951 	movx	a,@dptr
      002940 FB               [12] 1952 	mov	r3,a
      002941 A3               [24] 1953 	inc	dptr
      002942 E0               [24] 1954 	movx	a,@dptr
      002943 FC               [12] 1955 	mov	r4,a
      002944 EB               [12] 1956 	mov	a,r3
      002945 2B               [12] 1957 	add	a,r3
      002946 FB               [12] 1958 	mov	r3,a
      002947 EC               [12] 1959 	mov	a,r4
      002948 33               [12] 1960 	rlc	a
      002949 FC               [12] 1961 	mov	r4,a
      00294A EB               [12] 1962 	mov	a,r3
      00294B 2B               [12] 1963 	add	a,r3
      00294C FB               [12] 1964 	mov	r3,a
      00294D EC               [12] 1965 	mov	a,r4
      00294E 33               [12] 1966 	rlc	a
      00294F FC               [12] 1967 	mov	r4,a
      002950 EB               [12] 1968 	mov	a,r3
      002951 24 00            [12] 1969 	add	a,#_stack
      002953 FB               [12] 1970 	mov	r3,a
      002954 EC               [12] 1971 	mov	a,r4
      002955 34 65            [12] 1972 	addc	a,#(_stack >> 8)
      002957 FC               [12] 1973 	mov	r4,a
      002958 7A 00            [12] 1974 	mov	r2,#0x00
      00295A 74 04            [12] 1975 	mov	a,#0x04
      00295C C0 E0            [24] 1976 	push	acc
      00295E E4               [12] 1977 	clr	a
      00295F C0 E0            [24] 1978 	push	acc
      002961 C0 05            [24] 1979 	push	ar5
      002963 C0 06            [24] 1980 	push	ar6
      002965 C0 07            [24] 1981 	push	ar7
      002967 8B 82            [24] 1982 	mov	dpl,r3
      002969 8C 83            [24] 1983 	mov	dph,r4
      00296B 8A F0            [24] 1984 	mov	b,r2
      00296D 12 2B 72         [24] 1985 	lcall	___memcpy
      002970 E5 81            [12] 1986 	mov	a,sp
      002972 24 FB            [12] 1987 	add	a,#0xfb
      002974 F5 81            [12] 1988 	mov	sp,a
                                   1989 ;	walk.c:190: return 1;
      002976 90 00 01         [24] 1990 	mov	dptr,#0x0001
                                   1991 ;	walk.c:191: }
      002979 22               [24] 1992 	ret
                                   1993 ;------------------------------------------------------------
                                   1994 ;Allocation info for local variables in function 'stpop'
                                   1995 ;------------------------------------------------------------
                                   1996 ;t                         Allocated to registers r5 r6 r7 
                                   1997 ;------------------------------------------------------------
                                   1998 ;	walk.c:193: static int stpop(struct node *t) {
                                   1999 ;	-----------------------------------------
                                   2000 ;	 function stpop
                                   2001 ;	-----------------------------------------
      00297A                       2002 _stpop:
      00297A AD 82            [24] 2003 	mov	r5,dpl
      00297C AE 83            [24] 2004 	mov	r6,dph
      00297E AF F0            [24] 2005 	mov	r7,b
                                   2006 ;	walk.c:194: if (sp == -1) return 0;
      002980 90 F5 00         [24] 2007 	mov	dptr,#_sp
      002983 E0               [24] 2008 	movx	a,@dptr
      002984 FB               [12] 2009 	mov	r3,a
      002985 A3               [24] 2010 	inc	dptr
      002986 E0               [24] 2011 	movx	a,@dptr
      002987 FC               [12] 2012 	mov	r4,a
      002988 BB FF 07         [24] 2013 	cjne	r3,#0xff,00102$
      00298B BC FF 04         [24] 2014 	cjne	r4,#0xff,00102$
      00298E 90 00 00         [24] 2015 	mov	dptr,#0x0000
      002991 22               [24] 2016 	ret
      002992                       2017 00102$:
                                   2018 ;	walk.c:195: *t = stack[sp];
      002992 EB               [12] 2019 	mov	a,r3
      002993 2B               [12] 2020 	add	a,r3
      002994 FB               [12] 2021 	mov	r3,a
      002995 EC               [12] 2022 	mov	a,r4
      002996 33               [12] 2023 	rlc	a
      002997 FC               [12] 2024 	mov	r4,a
      002998 EB               [12] 2025 	mov	a,r3
      002999 2B               [12] 2026 	add	a,r3
      00299A FB               [12] 2027 	mov	r3,a
      00299B EC               [12] 2028 	mov	a,r4
      00299C 33               [12] 2029 	rlc	a
      00299D FC               [12] 2030 	mov	r4,a
      00299E EB               [12] 2031 	mov	a,r3
      00299F 24 00            [12] 2032 	add	a,#_stack
      0029A1 FB               [12] 2033 	mov	r3,a
      0029A2 EC               [12] 2034 	mov	a,r4
      0029A3 34 65            [12] 2035 	addc	a,#(_stack >> 8)
      0029A5 FC               [12] 2036 	mov	r4,a
      0029A6 7A 00            [12] 2037 	mov	r2,#0x00
      0029A8 74 04            [12] 2038 	mov	a,#0x04
      0029AA C0 E0            [24] 2039 	push	acc
      0029AC E4               [12] 2040 	clr	a
      0029AD C0 E0            [24] 2041 	push	acc
      0029AF C0 03            [24] 2042 	push	ar3
      0029B1 C0 04            [24] 2043 	push	ar4
      0029B3 C0 02            [24] 2044 	push	ar2
      0029B5 8D 82            [24] 2045 	mov	dpl,r5
      0029B7 8E 83            [24] 2046 	mov	dph,r6
      0029B9 8F F0            [24] 2047 	mov	b,r7
      0029BB 12 2B 72         [24] 2048 	lcall	___memcpy
      0029BE E5 81            [12] 2049 	mov	a,sp
      0029C0 24 FB            [12] 2050 	add	a,#0xfb
      0029C2 F5 81            [12] 2051 	mov	sp,a
                                   2052 ;	walk.c:196: sp--;
      0029C4 90 F5 00         [24] 2053 	mov	dptr,#_sp
      0029C7 E0               [24] 2054 	movx	a,@dptr
      0029C8 24 FF            [12] 2055 	add	a,#0xff
      0029CA FE               [12] 2056 	mov	r6,a
      0029CB A3               [24] 2057 	inc	dptr
      0029CC E0               [24] 2058 	movx	a,@dptr
      0029CD 34 FF            [12] 2059 	addc	a,#0xff
      0029CF FF               [12] 2060 	mov	r7,a
      0029D0 90 F5 00         [24] 2061 	mov	dptr,#_sp
      0029D3 EE               [12] 2062 	mov	a,r6
      0029D4 F0               [24] 2063 	movx	@dptr,a
      0029D5 EF               [12] 2064 	mov	a,r7
      0029D6 A3               [24] 2065 	inc	dptr
      0029D7 F0               [24] 2066 	movx	@dptr,a
                                   2067 ;	walk.c:197: return 1;
      0029D8 90 00 01         [24] 2068 	mov	dptr,#0x0001
                                   2069 ;	walk.c:198: }
      0029DB 22               [24] 2070 	ret
                                   2071 	.area CSEG    (CODE)
                                   2072 	.area CONST   (CODE)
                                   2073 	.area CONST   (CODE)
      003FBE                       2074 ___str_0:
      003FBE 4D 65 6D 6F 72 79 20  2075 	.ascii "Memory error"
             65 72 72 6F 72
      003FCA 00                    2076 	.db 0x00
                                   2077 	.area CSEG    (CODE)
                                   2078 	.area CONST   (CODE)
      003FCB                       2079 ___str_1:
      003FCB 1B                    2080 	.db 0x1b
      003FCC 5B 25 64 3B 25 64 48  2081 	.ascii "[%d;%dHo"
             6F
      003FD4 00                    2082 	.db 0x00
                                   2083 	.area CSEG    (CODE)
                                   2084 	.area CONST   (CODE)
      003FD5                       2085 ___str_2:
      003FD5 1B                    2086 	.db 0x1b
      003FD6 5B 32 3B 31 48 25 20  2087 	.ascii "[2;1H% 8d% 8d% 8d"
             38 64 25 20 38 64 25
             20 38 64
      003FE7 00                    2088 	.db 0x00
                                   2089 	.area CSEG    (CODE)
                                   2090 	.area CONST   (CODE)
      003FE8                       2091 ___str_3:
      003FE8 1B                    2092 	.db 0x1b
      003FE9 5B 25 64 3B 25 64 48  2093 	.ascii "[%d;%dH."
             2E
      003FF1 00                    2094 	.db 0x00
                                   2095 	.area CSEG    (CODE)
                                   2096 	.area CONST   (CODE)
      003FF2                       2097 ___str_4:
      003FF2 1B                    2098 	.db 0x1b
      003FF3 5B 32 4A              2099 	.ascii "[2J"
      003FF6 1B                    2100 	.db 0x1b
      003FF7 5B 3F 32 35 6C        2101 	.ascii "[?25l"
      003FFC 00                    2102 	.db 0x00
                                   2103 	.area CSEG    (CODE)
                                   2104 	.area CONST   (CODE)
      003FFD                       2105 ___str_5:
      003FFD 1B                    2106 	.db 0x1b
      003FFE 5B 31 3B 31 48 25 20  2107 	.ascii "[1;1H% 8u% 8d% 8d"
             38 75 25 20 38 64 25
             20 38 64
      00400F 00                    2108 	.db 0x00
                                   2109 	.area CSEG    (CODE)
                                   2110 	.area CONST   (CODE)
      004010                       2111 ___str_6:
      004010 1B                    2112 	.db 0x1b
      004011 5B 32 4A              2113 	.ascii "[2J"
      004014 1B                    2114 	.db 0x1b
      004015 5B 3F 32 35 68        2115 	.ascii "[?25h"
      00401A 00                    2116 	.db 0x00
                                   2117 	.area CSEG    (CODE)
                                   2118 	.area XINIT   (CODE)
                                   2119 	.area CABS    (ABS,CODE)
