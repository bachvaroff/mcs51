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
      006500                        323 _queue:
      006500                        324 	.ds 36864
      00F500                        325 _hp:
      00F500                        326 	.ds 2
      00F502                        327 _tp:
      00F502                        328 	.ds 2
      00F504                        329 _main_R_65536_63:
      00F504                        330 	.ds 2
                                    331 ;--------------------------------------------------------
                                    332 ; absolute external ram data
                                    333 ;--------------------------------------------------------
                                    334 	.area XABS    (ABS,XDATA)
                                    335 ;--------------------------------------------------------
                                    336 ; external initialized ram data
                                    337 ;--------------------------------------------------------
                                    338 	.area XISEG   (XDATA)
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
      002003 02 20 EC         [24]  355 	ljmp	_int0
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
                                    378 ;R                         Allocated with name '_main_R_65536_63'
                                    379 ;------------------------------------------------------------
                                    380 ;	walk.c:132: static volatile __xdata int *R = (__xdata int *)0xfffe;
      002062 90 F5 04         [24]  381 	mov	dptr,#_main_R_65536_63
      002065 74 FE            [12]  382 	mov	a,#0xfe
      002067 F0               [24]  383 	movx	@dptr,a
      002068 04               [12]  384 	inc	a
      002069 A3               [24]  385 	inc	dptr
      00206A F0               [24]  386 	movx	@dptr,a
                                    387 ;	walk.c:65: __idata static const struct node neigh[NMAX] = {
      00206B 78 22            [12]  388 	mov	r0,#_neigh
      00206D 76 FE            [12]  389 	mov	@r0,#0xfe
      00206F 08               [12]  390 	inc	r0
      002070 76 FF            [12]  391 	mov	@r0,#0xff
      002072 78 24            [12]  392 	mov	r0,#(_neigh + 0x0002)
      002074 76 03            [12]  393 	mov	@r0,#0x03
      002076 08               [12]  394 	inc	r0
      002077 76 00            [12]  395 	mov	@r0,#0x00
      002079 78 26            [12]  396 	mov	r0,#(_neigh + 0x0004)
      00207B 76 FE            [12]  397 	mov	@r0,#0xfe
      00207D 08               [12]  398 	inc	r0
      00207E 76 FF            [12]  399 	mov	@r0,#0xff
      002080 78 28            [12]  400 	mov	r0,#(_neigh + 0x0006)
      002082 76 FE            [12]  401 	mov	@r0,#0xfe
      002084 08               [12]  402 	inc	r0
      002085 76 FF            [12]  403 	mov	@r0,#0xff
      002087 78 2A            [12]  404 	mov	r0,#(_neigh + 0x0008)
      002089 76 03            [12]  405 	mov	@r0,#0x03
      00208B 08               [12]  406 	inc	r0
      00208C 76 00            [12]  407 	mov	@r0,#0x00
      00208E 78 2C            [12]  408 	mov	r0,#(_neigh + 0x000a)
      002090 76 FE            [12]  409 	mov	@r0,#0xfe
      002092 08               [12]  410 	inc	r0
      002093 76 FF            [12]  411 	mov	@r0,#0xff
      002095 78 2E            [12]  412 	mov	r0,#(_neigh + 0x000c)
      002097 76 03            [12]  413 	mov	@r0,#0x03
      002099 08               [12]  414 	inc	r0
      00209A 76 00            [12]  415 	mov	@r0,#0x00
      00209C 78 30            [12]  416 	mov	r0,#(_neigh + 0x000e)
      00209E 76 03            [12]  417 	mov	@r0,#0x03
      0020A0 08               [12]  418 	inc	r0
      0020A1 76 00            [12]  419 	mov	@r0,#0x00
      0020A3 78 32            [12]  420 	mov	r0,#(_neigh + 0x0010)
      0020A5 76 FF            [12]  421 	mov	@r0,#0xff
      0020A7 08               [12]  422 	inc	r0
      0020A8 76 FF            [12]  423 	mov	@r0,#0xff
      0020AA 78 34            [12]  424 	mov	r0,#(_neigh + 0x0012)
      0020AC 76 00            [12]  425 	mov	@r0,#0x00
      0020AE 08               [12]  426 	inc	r0
      0020AF 76 00            [12]  427 	mov	@r0,#0x00
      0020B1 78 36            [12]  428 	mov	r0,#(_neigh + 0x0014)
      0020B3 76 00            [12]  429 	mov	@r0,#0x00
      0020B5 08               [12]  430 	inc	r0
      0020B6 76 00            [12]  431 	mov	@r0,#0x00
      0020B8 78 38            [12]  432 	mov	r0,#(_neigh + 0x0016)
      0020BA 76 FF            [12]  433 	mov	@r0,#0xff
      0020BC 08               [12]  434 	inc	r0
      0020BD 76 FF            [12]  435 	mov	@r0,#0xff
      0020BF 78 3A            [12]  436 	mov	r0,#(_neigh + 0x0018)
      0020C1 76 01            [12]  437 	mov	@r0,#0x01
      0020C3 08               [12]  438 	inc	r0
      0020C4 76 00            [12]  439 	mov	@r0,#0x00
      0020C6 78 3C            [12]  440 	mov	r0,#(_neigh + 0x001a)
      0020C8 76 00            [12]  441 	mov	@r0,#0x00
      0020CA 08               [12]  442 	inc	r0
      0020CB 76 00            [12]  443 	mov	@r0,#0x00
      0020CD 78 3E            [12]  444 	mov	r0,#(_neigh + 0x001c)
      0020CF 76 00            [12]  445 	mov	@r0,#0x00
      0020D1 08               [12]  446 	inc	r0
      0020D2 76 00            [12]  447 	mov	@r0,#0x00
      0020D4 78 40            [12]  448 	mov	r0,#(_neigh + 0x001e)
      0020D6 76 01            [12]  449 	mov	@r0,#0x01
      0020D8 08               [12]  450 	inc	r0
      0020D9 76 00            [12]  451 	mov	@r0,#0x00
                                    452 	.area GSFINAL (CODE)
      0020DB 02 20 06         [24]  453 	ljmp	__sdcc_program_startup
                                    454 ;--------------------------------------------------------
                                    455 ; Home
                                    456 ;--------------------------------------------------------
                                    457 	.area HOME    (CODE)
                                    458 	.area HOME    (CODE)
      002006                        459 __sdcc_program_startup:
      002006 02 26 D9         [24]  460 	ljmp	_main
                                    461 ;	return from main will return to caller
                                    462 ;--------------------------------------------------------
                                    463 ; code
                                    464 ;--------------------------------------------------------
                                    465 	.area CSEG    (CODE)
                                    466 ;------------------------------------------------------------
                                    467 ;Allocation info for local variables in function 'putchar'
                                    468 ;------------------------------------------------------------
                                    469 ;c                         Allocated to registers 
                                    470 ;------------------------------------------------------------
                                    471 ;	walk.c:8: int putchar(int c) __naked {
                                    472 ;	-----------------------------------------
                                    473 ;	 function putchar
                                    474 ;	-----------------------------------------
      0020DE                        475 _putchar:
                                    476 ;	naked function: no prologue.
                                    477 ;	walk.c:13: __endasm;
      0020DE E5 82            [12]  478 	mov	a, dpl
      0020E0 02 00 30         [24]  479 	ljmp	0x0030
                                    480 ;	walk.c:14: }
                                    481 ;	naked function: no epilogue.
                                    482 ;------------------------------------------------------------
                                    483 ;Allocation info for local variables in function 'getchar'
                                    484 ;------------------------------------------------------------
                                    485 ;	walk.c:16: int getchar(void) __naked {
                                    486 ;	-----------------------------------------
                                    487 ;	 function getchar
                                    488 ;	-----------------------------------------
      0020E3                        489 _getchar:
                                    490 ;	naked function: no prologue.
                                    491 ;	walk.c:22: __endasm;
      0020E3 12 00 32         [24]  492 	lcall	0x0032
      0020E6 F5 82            [12]  493 	mov	dpl, a
      0020E8 75 83 00         [24]  494 	mov	dph, #0
      0020EB 22               [24]  495 	ret
                                    496 ;	walk.c:23: }
                                    497 ;	naked function: no epilogue.
                                    498 ;------------------------------------------------------------
                                    499 ;Allocation info for local variables in function 'int0'
                                    500 ;------------------------------------------------------------
                                    501 ;	walk.c:27: void int0(void) __interrupt IE0_VECTOR __using 1 {
                                    502 ;	-----------------------------------------
                                    503 ;	 function int0
                                    504 ;	-----------------------------------------
      0020EC                        505 _int0:
                           00000F   506 	ar7 = 0x0f
                           00000E   507 	ar6 = 0x0e
                           00000D   508 	ar5 = 0x0d
                           00000C   509 	ar4 = 0x0c
                           00000B   510 	ar3 = 0x0b
                           00000A   511 	ar2 = 0x0a
                           000009   512 	ar1 = 0x09
                           000008   513 	ar0 = 0x08
      0020EC C0 D0            [24]  514 	push	psw
      0020EE 75 D0 08         [24]  515 	mov	psw,#0x08
                                    516 ;	walk.c:28: i0 = 0;
      0020F1 78 21            [12]  517 	mov	r0,#_i0
      0020F3 76 00            [12]  518 	mov	@r0,#0x00
                                    519 ;	walk.c:29: }
      0020F5 D0 D0            [24]  520 	pop	psw
      0020F7 32               [24]  521 	reti
                                    522 ;	eliminated unneeded push/pop dpl
                                    523 ;	eliminated unneeded push/pop dph
                                    524 ;	eliminated unneeded push/pop b
                                    525 ;	eliminated unneeded push/pop acc
                                    526 ;------------------------------------------------------------
                                    527 ;Allocation info for local variables in function 'reset'
                                    528 ;------------------------------------------------------------
                                    529 ;	walk.c:31: static void reset(void) __naked {
                                    530 ;	-----------------------------------------
                                    531 ;	 function reset
                                    532 ;	-----------------------------------------
      0020F8                        533 _reset:
                                    534 ;	naked function: no prologue.
                                    535 ;	walk.c:34: __endasm;
      0020F8 43 87 02         [24]  536 	orl	pcon, #2
                                    537 ;	walk.c:35: }
                                    538 ;	naked function: no epilogue.
                                    539 ;------------------------------------------------------------
                                    540 ;Allocation info for local variables in function 'bang'
                                    541 ;------------------------------------------------------------
                                    542 ;	walk.c:37: static void bang(void) {
                                    543 ;	-----------------------------------------
                                    544 ;	 function bang
                                    545 ;	-----------------------------------------
      0020FB                        546 _bang:
                           000007   547 	ar7 = 0x07
                           000006   548 	ar6 = 0x06
                           000005   549 	ar5 = 0x05
                           000004   550 	ar4 = 0x04
                           000003   551 	ar3 = 0x03
                           000002   552 	ar2 = 0x02
                           000001   553 	ar1 = 0x01
                           000000   554 	ar0 = 0x00
                                    555 ;	walk.c:38: (void)puts("Memory error");
      0020FB 90 40 53         [24]  556 	mov	dptr,#___str_0
      0020FE 75 F0 80         [24]  557 	mov	b,#0x80
      002101 12 2C 9A         [24]  558 	lcall	_puts
                                    559 ;	walk.c:39: reset();
                                    560 ;	walk.c:41: return;
                                    561 ;	walk.c:42: }
      002104 02 20 F8         [24]  562 	ljmp	_reset
                                    563 ;------------------------------------------------------------
                                    564 ;Allocation info for local variables in function 'update'
                                    565 ;------------------------------------------------------------
                                    566 ;cur                       Allocated to stack - _bp -5
                                    567 ;j                         Allocated to stack - _bp -6
                                    568 ;t                         Allocated to stack - _bp +1
                                    569 ;sloc0                     Allocated to stack - _bp +4
                                    570 ;sloc1                     Allocated to stack - _bp +6
                                    571 ;------------------------------------------------------------
                                    572 ;	walk.c:84: static int update(struct node *t, struct node *cur, char j) {
                                    573 ;	-----------------------------------------
                                    574 ;	 function update
                                    575 ;	-----------------------------------------
      002107                        576 _update:
      002107 C0 10            [24]  577 	push	_bp
      002109 85 81 10         [24]  578 	mov	_bp,sp
      00210C C0 82            [24]  579 	push	dpl
      00210E C0 83            [24]  580 	push	dph
      002110 C0 F0            [24]  581 	push	b
      002112 E5 81            [12]  582 	mov	a,sp
      002114 24 05            [12]  583 	add	a,#0x05
      002116 F5 81            [12]  584 	mov	sp,a
                                    585 ;	walk.c:85: t->r = cur->r + neigh[j].r;
      002118 E5 10            [12]  586 	mov	a,_bp
      00211A 24 FB            [12]  587 	add	a,#0xfb
      00211C F8               [12]  588 	mov	r0,a
      00211D 86 02            [24]  589 	mov	ar2,@r0
      00211F 08               [12]  590 	inc	r0
      002120 86 03            [24]  591 	mov	ar3,@r0
      002122 08               [12]  592 	inc	r0
      002123 86 04            [24]  593 	mov	ar4,@r0
      002125 8A 82            [24]  594 	mov	dpl,r2
      002127 8B 83            [24]  595 	mov	dph,r3
      002129 8C F0            [24]  596 	mov	b,r4
      00212B E5 10            [12]  597 	mov	a,_bp
      00212D 24 04            [12]  598 	add	a,#0x04
      00212F F8               [12]  599 	mov	r0,a
      002130 12 2D 59         [24]  600 	lcall	__gptrget
      002133 F6               [12]  601 	mov	@r0,a
      002134 A3               [24]  602 	inc	dptr
      002135 12 2D 59         [24]  603 	lcall	__gptrget
      002138 08               [12]  604 	inc	r0
      002139 F6               [12]  605 	mov	@r0,a
      00213A E5 10            [12]  606 	mov	a,_bp
      00213C 24 FA            [12]  607 	add	a,#0xfa
      00213E F8               [12]  608 	mov	r0,a
      00213F E6               [12]  609 	mov	a,@r0
      002140 26               [12]  610 	add	a,@r0
      002141 25 E0            [12]  611 	add	a,acc
      002143 FD               [12]  612 	mov	r5,a
      002144 24 22            [12]  613 	add	a,#_neigh
      002146 F9               [12]  614 	mov	r1,a
      002147 87 07            [24]  615 	mov	ar7,@r1
      002149 09               [12]  616 	inc	r1
      00214A 87 06            [24]  617 	mov	ar6,@r1
      00214C E5 10            [12]  618 	mov	a,_bp
      00214E 24 04            [12]  619 	add	a,#0x04
      002150 F8               [12]  620 	mov	r0,a
      002151 EF               [12]  621 	mov	a,r7
      002152 26               [12]  622 	add	a,@r0
      002153 FF               [12]  623 	mov	r7,a
      002154 EE               [12]  624 	mov	a,r6
      002155 08               [12]  625 	inc	r0
      002156 36               [12]  626 	addc	a,@r0
      002157 FE               [12]  627 	mov	r6,a
      002158 A8 10            [24]  628 	mov	r0,_bp
      00215A 08               [12]  629 	inc	r0
      00215B 86 82            [24]  630 	mov	dpl,@r0
      00215D 08               [12]  631 	inc	r0
      00215E 86 83            [24]  632 	mov	dph,@r0
      002160 08               [12]  633 	inc	r0
      002161 86 F0            [24]  634 	mov	b,@r0
      002163 EF               [12]  635 	mov	a,r7
      002164 12 2B 4E         [24]  636 	lcall	__gptrput
      002167 A3               [24]  637 	inc	dptr
      002168 EE               [12]  638 	mov	a,r6
      002169 12 2B 4E         [24]  639 	lcall	__gptrput
                                    640 ;	walk.c:86: t->c = cur->c + neigh[j].c;
      00216C A8 10            [24]  641 	mov	r0,_bp
      00216E 08               [12]  642 	inc	r0
      00216F E5 10            [12]  643 	mov	a,_bp
      002171 24 06            [12]  644 	add	a,#0x06
      002173 F9               [12]  645 	mov	r1,a
      002174 74 02            [12]  646 	mov	a,#0x02
      002176 26               [12]  647 	add	a,@r0
      002177 F7               [12]  648 	mov	@r1,a
      002178 E4               [12]  649 	clr	a
      002179 08               [12]  650 	inc	r0
      00217A 36               [12]  651 	addc	a,@r0
      00217B 09               [12]  652 	inc	r1
      00217C F7               [12]  653 	mov	@r1,a
      00217D 08               [12]  654 	inc	r0
      00217E 09               [12]  655 	inc	r1
      00217F E6               [12]  656 	mov	a,@r0
      002180 F7               [12]  657 	mov	@r1,a
      002181 74 02            [12]  658 	mov	a,#0x02
      002183 2A               [12]  659 	add	a,r2
      002184 FA               [12]  660 	mov	r2,a
      002185 E4               [12]  661 	clr	a
      002186 3B               [12]  662 	addc	a,r3
      002187 FB               [12]  663 	mov	r3,a
      002188 8A 82            [24]  664 	mov	dpl,r2
      00218A 8B 83            [24]  665 	mov	dph,r3
      00218C 8C F0            [24]  666 	mov	b,r4
      00218E 12 2D 59         [24]  667 	lcall	__gptrget
      002191 FA               [12]  668 	mov	r2,a
      002192 A3               [24]  669 	inc	dptr
      002193 12 2D 59         [24]  670 	lcall	__gptrget
      002196 FB               [12]  671 	mov	r3,a
      002197 ED               [12]  672 	mov	a,r5
      002198 24 22            [12]  673 	add	a,#_neigh
      00219A 24 02            [12]  674 	add	a,#0x02
      00219C F9               [12]  675 	mov	r1,a
      00219D 87 04            [24]  676 	mov	ar4,@r1
      00219F 09               [12]  677 	inc	r1
      0021A0 87 05            [24]  678 	mov	ar5,@r1
      0021A2 EC               [12]  679 	mov	a,r4
      0021A3 2A               [12]  680 	add	a,r2
      0021A4 FA               [12]  681 	mov	r2,a
      0021A5 ED               [12]  682 	mov	a,r5
      0021A6 3B               [12]  683 	addc	a,r3
      0021A7 FB               [12]  684 	mov	r3,a
      0021A8 E5 10            [12]  685 	mov	a,_bp
      0021AA 24 06            [12]  686 	add	a,#0x06
      0021AC F8               [12]  687 	mov	r0,a
      0021AD 86 82            [24]  688 	mov	dpl,@r0
      0021AF 08               [12]  689 	inc	r0
      0021B0 86 83            [24]  690 	mov	dph,@r0
      0021B2 08               [12]  691 	inc	r0
      0021B3 86 F0            [24]  692 	mov	b,@r0
      0021B5 EA               [12]  693 	mov	a,r2
      0021B6 12 2B 4E         [24]  694 	lcall	__gptrput
      0021B9 A3               [24]  695 	inc	dptr
      0021BA EB               [12]  696 	mov	a,r3
      0021BB 12 2B 4E         [24]  697 	lcall	__gptrput
                                    698 ;	walk.c:88: if (t->r < 0) t->r += ROWS;
      0021BE A8 10            [24]  699 	mov	r0,_bp
      0021C0 08               [12]  700 	inc	r0
      0021C1 86 82            [24]  701 	mov	dpl,@r0
      0021C3 08               [12]  702 	inc	r0
      0021C4 86 83            [24]  703 	mov	dph,@r0
      0021C6 08               [12]  704 	inc	r0
      0021C7 86 F0            [24]  705 	mov	b,@r0
      0021C9 12 2D 59         [24]  706 	lcall	__gptrget
      0021CC FD               [12]  707 	mov	r5,a
      0021CD A3               [24]  708 	inc	dptr
      0021CE 12 2D 59         [24]  709 	lcall	__gptrget
      0021D1 FC               [12]  710 	mov	r4,a
      0021D2 EE               [12]  711 	mov	a,r6
      0021D3 30 E7 1D         [24]  712 	jnb	acc.7,00104$
      0021D6 74 30            [12]  713 	mov	a,#0x30
      0021D8 2D               [12]  714 	add	a,r5
      0021D9 FF               [12]  715 	mov	r7,a
      0021DA E4               [12]  716 	clr	a
      0021DB 3C               [12]  717 	addc	a,r4
      0021DC FE               [12]  718 	mov	r6,a
      0021DD A8 10            [24]  719 	mov	r0,_bp
      0021DF 08               [12]  720 	inc	r0
      0021E0 86 82            [24]  721 	mov	dpl,@r0
      0021E2 08               [12]  722 	inc	r0
      0021E3 86 83            [24]  723 	mov	dph,@r0
      0021E5 08               [12]  724 	inc	r0
      0021E6 86 F0            [24]  725 	mov	b,@r0
      0021E8 EF               [12]  726 	mov	a,r7
      0021E9 12 2B 4E         [24]  727 	lcall	__gptrput
      0021EC A3               [24]  728 	inc	dptr
      0021ED EE               [12]  729 	mov	a,r6
      0021EE 12 2B 4E         [24]  730 	lcall	__gptrput
      0021F1 80 27            [24]  731 	sjmp	00105$
      0021F3                        732 00104$:
                                    733 ;	walk.c:89: else if (t->r >= ROWS) t->r -= ROWS;
      0021F3 C3               [12]  734 	clr	c
      0021F4 ED               [12]  735 	mov	a,r5
      0021F5 94 30            [12]  736 	subb	a,#0x30
      0021F7 EC               [12]  737 	mov	a,r4
      0021F8 64 80            [12]  738 	xrl	a,#0x80
      0021FA 94 80            [12]  739 	subb	a,#0x80
      0021FC 40 1C            [24]  740 	jc	00105$
      0021FE ED               [12]  741 	mov	a,r5
      0021FF 24 D0            [12]  742 	add	a,#0xd0
      002201 FD               [12]  743 	mov	r5,a
      002202 EC               [12]  744 	mov	a,r4
      002203 34 FF            [12]  745 	addc	a,#0xff
      002205 FC               [12]  746 	mov	r4,a
      002206 A8 10            [24]  747 	mov	r0,_bp
      002208 08               [12]  748 	inc	r0
      002209 86 82            [24]  749 	mov	dpl,@r0
      00220B 08               [12]  750 	inc	r0
      00220C 86 83            [24]  751 	mov	dph,@r0
      00220E 08               [12]  752 	inc	r0
      00220F 86 F0            [24]  753 	mov	b,@r0
      002211 ED               [12]  754 	mov	a,r5
      002212 12 2B 4E         [24]  755 	lcall	__gptrput
      002215 A3               [24]  756 	inc	dptr
      002216 EC               [12]  757 	mov	a,r4
      002217 12 2B 4E         [24]  758 	lcall	__gptrput
      00221A                        759 00105$:
                                    760 ;	walk.c:90: if (t->c < 0) t->c += COLS;
      00221A E5 10            [12]  761 	mov	a,_bp
      00221C 24 06            [12]  762 	add	a,#0x06
      00221E F8               [12]  763 	mov	r0,a
      00221F 86 82            [24]  764 	mov	dpl,@r0
      002221 08               [12]  765 	inc	r0
      002222 86 83            [24]  766 	mov	dph,@r0
      002224 08               [12]  767 	inc	r0
      002225 86 F0            [24]  768 	mov	b,@r0
      002227 12 2D 59         [24]  769 	lcall	__gptrget
      00222A A3               [24]  770 	inc	dptr
      00222B 12 2D 59         [24]  771 	lcall	__gptrget
      00222E 30 E7 35         [24]  772 	jnb	acc.7,00109$
      002231 E5 10            [12]  773 	mov	a,_bp
      002233 24 06            [12]  774 	add	a,#0x06
      002235 F8               [12]  775 	mov	r0,a
      002236 86 82            [24]  776 	mov	dpl,@r0
      002238 08               [12]  777 	inc	r0
      002239 86 83            [24]  778 	mov	dph,@r0
      00223B 08               [12]  779 	inc	r0
      00223C 86 F0            [24]  780 	mov	b,@r0
      00223E 12 2D 59         [24]  781 	lcall	__gptrget
      002241 FE               [12]  782 	mov	r6,a
      002242 A3               [24]  783 	inc	dptr
      002243 12 2D 59         [24]  784 	lcall	__gptrget
      002246 FF               [12]  785 	mov	r7,a
      002247 74 C0            [12]  786 	mov	a,#0xc0
      002249 2E               [12]  787 	add	a,r6
      00224A FE               [12]  788 	mov	r6,a
      00224B E4               [12]  789 	clr	a
      00224C 3F               [12]  790 	addc	a,r7
      00224D FF               [12]  791 	mov	r7,a
      00224E E5 10            [12]  792 	mov	a,_bp
      002250 24 06            [12]  793 	add	a,#0x06
      002252 F8               [12]  794 	mov	r0,a
      002253 86 82            [24]  795 	mov	dpl,@r0
      002255 08               [12]  796 	inc	r0
      002256 86 83            [24]  797 	mov	dph,@r0
      002258 08               [12]  798 	inc	r0
      002259 86 F0            [24]  799 	mov	b,@r0
      00225B EE               [12]  800 	mov	a,r6
      00225C 12 2B 4E         [24]  801 	lcall	__gptrput
      00225F A3               [24]  802 	inc	dptr
      002260 EF               [12]  803 	mov	a,r7
      002261 12 2B 4E         [24]  804 	lcall	__gptrput
      002264 80 55            [24]  805 	sjmp	00110$
      002266                        806 00109$:
                                    807 ;	walk.c:91: else if (t->c >= COLS) t->c -= COLS;
      002266 E5 10            [12]  808 	mov	a,_bp
      002268 24 06            [12]  809 	add	a,#0x06
      00226A F8               [12]  810 	mov	r0,a
      00226B 86 82            [24]  811 	mov	dpl,@r0
      00226D 08               [12]  812 	inc	r0
      00226E 86 83            [24]  813 	mov	dph,@r0
      002270 08               [12]  814 	inc	r0
      002271 86 F0            [24]  815 	mov	b,@r0
      002273 12 2D 59         [24]  816 	lcall	__gptrget
      002276 FE               [12]  817 	mov	r6,a
      002277 A3               [24]  818 	inc	dptr
      002278 12 2D 59         [24]  819 	lcall	__gptrget
      00227B FF               [12]  820 	mov	r7,a
      00227C C3               [12]  821 	clr	c
      00227D EE               [12]  822 	mov	a,r6
      00227E 94 C0            [12]  823 	subb	a,#0xc0
      002280 EF               [12]  824 	mov	a,r7
      002281 64 80            [12]  825 	xrl	a,#0x80
      002283 94 80            [12]  826 	subb	a,#0x80
      002285 40 34            [24]  827 	jc	00110$
      002287 E5 10            [12]  828 	mov	a,_bp
      002289 24 06            [12]  829 	add	a,#0x06
      00228B F8               [12]  830 	mov	r0,a
      00228C 86 82            [24]  831 	mov	dpl,@r0
      00228E 08               [12]  832 	inc	r0
      00228F 86 83            [24]  833 	mov	dph,@r0
      002291 08               [12]  834 	inc	r0
      002292 86 F0            [24]  835 	mov	b,@r0
      002294 12 2D 59         [24]  836 	lcall	__gptrget
      002297 FE               [12]  837 	mov	r6,a
      002298 A3               [24]  838 	inc	dptr
      002299 12 2D 59         [24]  839 	lcall	__gptrget
      00229C FF               [12]  840 	mov	r7,a
      00229D EE               [12]  841 	mov	a,r6
      00229E 24 40            [12]  842 	add	a,#0x40
      0022A0 FE               [12]  843 	mov	r6,a
      0022A1 EF               [12]  844 	mov	a,r7
      0022A2 34 FF            [12]  845 	addc	a,#0xff
      0022A4 FF               [12]  846 	mov	r7,a
      0022A5 E5 10            [12]  847 	mov	a,_bp
      0022A7 24 06            [12]  848 	add	a,#0x06
      0022A9 F8               [12]  849 	mov	r0,a
      0022AA 86 82            [24]  850 	mov	dpl,@r0
      0022AC 08               [12]  851 	inc	r0
      0022AD 86 83            [24]  852 	mov	dph,@r0
      0022AF 08               [12]  853 	inc	r0
      0022B0 86 F0            [24]  854 	mov	b,@r0
      0022B2 EE               [12]  855 	mov	a,r6
      0022B3 12 2B 4E         [24]  856 	lcall	__gptrput
      0022B6 A3               [24]  857 	inc	dptr
      0022B7 EF               [12]  858 	mov	a,r7
      0022B8 12 2B 4E         [24]  859 	lcall	__gptrput
      0022BB                        860 00110$:
                                    861 ;	walk.c:93: if (g[t->r][t->c] == 0xaa) return 0;
      0022BB A8 10            [24]  862 	mov	r0,_bp
      0022BD 08               [12]  863 	inc	r0
      0022BE 86 82            [24]  864 	mov	dpl,@r0
      0022C0 08               [12]  865 	inc	r0
      0022C1 86 83            [24]  866 	mov	dph,@r0
      0022C3 08               [12]  867 	inc	r0
      0022C4 86 F0            [24]  868 	mov	b,@r0
      0022C6 12 2D 59         [24]  869 	lcall	__gptrget
      0022C9 FE               [12]  870 	mov	r6,a
      0022CA A3               [24]  871 	inc	dptr
      0022CB 12 2D 59         [24]  872 	lcall	__gptrget
      0022CE FF               [12]  873 	mov	r7,a
      0022CF C0 06            [24]  874 	push	ar6
      0022D1 C0 07            [24]  875 	push	ar7
      0022D3 90 00 C0         [24]  876 	mov	dptr,#0x00c0
      0022D6 12 2B 69         [24]  877 	lcall	__mulint
      0022D9 AE 82            [24]  878 	mov	r6,dpl
      0022DB AF 83            [24]  879 	mov	r7,dph
      0022DD 15 81            [12]  880 	dec	sp
      0022DF 15 81            [12]  881 	dec	sp
      0022E1 EE               [12]  882 	mov	a,r6
      0022E2 24 00            [12]  883 	add	a,#_g
      0022E4 FE               [12]  884 	mov	r6,a
      0022E5 EF               [12]  885 	mov	a,r7
      0022E6 34 41            [12]  886 	addc	a,#(_g >> 8)
      0022E8 FF               [12]  887 	mov	r7,a
      0022E9 E5 10            [12]  888 	mov	a,_bp
      0022EB 24 06            [12]  889 	add	a,#0x06
      0022ED F8               [12]  890 	mov	r0,a
      0022EE 86 82            [24]  891 	mov	dpl,@r0
      0022F0 08               [12]  892 	inc	r0
      0022F1 86 83            [24]  893 	mov	dph,@r0
      0022F3 08               [12]  894 	inc	r0
      0022F4 86 F0            [24]  895 	mov	b,@r0
      0022F6 12 2D 59         [24]  896 	lcall	__gptrget
      0022F9 FC               [12]  897 	mov	r4,a
      0022FA A3               [24]  898 	inc	dptr
      0022FB 12 2D 59         [24]  899 	lcall	__gptrget
      0022FE FD               [12]  900 	mov	r5,a
      0022FF EC               [12]  901 	mov	a,r4
      002300 2E               [12]  902 	add	a,r6
      002301 F5 82            [12]  903 	mov	dpl,a
      002303 ED               [12]  904 	mov	a,r5
      002304 3F               [12]  905 	addc	a,r7
      002305 F5 83            [12]  906 	mov	dph,a
      002307 E0               [24]  907 	movx	a,@dptr
      002308 FF               [12]  908 	mov	r7,a
      002309 BF AA 05         [24]  909 	cjne	r7,#0xaa,00114$
      00230C 90 00 00         [24]  910 	mov	dptr,#0x0000
      00230F 80 59            [24]  911 	sjmp	00116$
      002311                        912 00114$:
                                    913 ;	walk.c:94: else if (g[t->r][t->c] != 0x55) bang();
      002311 A8 10            [24]  914 	mov	r0,_bp
      002313 08               [12]  915 	inc	r0
      002314 86 82            [24]  916 	mov	dpl,@r0
      002316 08               [12]  917 	inc	r0
      002317 86 83            [24]  918 	mov	dph,@r0
      002319 08               [12]  919 	inc	r0
      00231A 86 F0            [24]  920 	mov	b,@r0
      00231C 12 2D 59         [24]  921 	lcall	__gptrget
      00231F FE               [12]  922 	mov	r6,a
      002320 A3               [24]  923 	inc	dptr
      002321 12 2D 59         [24]  924 	lcall	__gptrget
      002324 FF               [12]  925 	mov	r7,a
      002325 C0 06            [24]  926 	push	ar6
      002327 C0 07            [24]  927 	push	ar7
      002329 90 00 C0         [24]  928 	mov	dptr,#0x00c0
      00232C 12 2B 69         [24]  929 	lcall	__mulint
      00232F AE 82            [24]  930 	mov	r6,dpl
      002331 AF 83            [24]  931 	mov	r7,dph
      002333 15 81            [12]  932 	dec	sp
      002335 15 81            [12]  933 	dec	sp
      002337 EE               [12]  934 	mov	a,r6
      002338 24 00            [12]  935 	add	a,#_g
      00233A FE               [12]  936 	mov	r6,a
      00233B EF               [12]  937 	mov	a,r7
      00233C 34 41            [12]  938 	addc	a,#(_g >> 8)
      00233E FF               [12]  939 	mov	r7,a
      00233F E5 10            [12]  940 	mov	a,_bp
      002341 24 06            [12]  941 	add	a,#0x06
      002343 F8               [12]  942 	mov	r0,a
      002344 86 82            [24]  943 	mov	dpl,@r0
      002346 08               [12]  944 	inc	r0
      002347 86 83            [24]  945 	mov	dph,@r0
      002349 08               [12]  946 	inc	r0
      00234A 86 F0            [24]  947 	mov	b,@r0
      00234C 12 2D 59         [24]  948 	lcall	__gptrget
      00234F FC               [12]  949 	mov	r4,a
      002350 A3               [24]  950 	inc	dptr
      002351 12 2D 59         [24]  951 	lcall	__gptrget
      002354 FD               [12]  952 	mov	r5,a
      002355 EC               [12]  953 	mov	a,r4
      002356 2E               [12]  954 	add	a,r6
      002357 F5 82            [12]  955 	mov	dpl,a
      002359 ED               [12]  956 	mov	a,r5
      00235A 3F               [12]  957 	addc	a,r7
      00235B F5 83            [12]  958 	mov	dph,a
      00235D E0               [24]  959 	movx	a,@dptr
      00235E FF               [12]  960 	mov	r7,a
      00235F BF 55 02         [24]  961 	cjne	r7,#0x55,00148$
      002362 80 03            [24]  962 	sjmp	00115$
      002364                        963 00148$:
      002364 12 20 FB         [24]  964 	lcall	_bang
      002367                        965 00115$:
                                    966 ;	walk.c:96: return 1;
      002367 90 00 01         [24]  967 	mov	dptr,#0x0001
      00236A                        968 00116$:
                                    969 ;	walk.c:97: }
      00236A 85 10 81         [24]  970 	mov	sp,_bp
      00236D D0 10            [24]  971 	pop	_bp
      00236F 22               [24]  972 	ret
                                    973 ;------------------------------------------------------------
                                    974 ;Allocation info for local variables in function 'walk'
                                    975 ;------------------------------------------------------------
                                    976 ;nstart                    Allocated to registers r5 r6 r7 
                                    977 ;cur                       Allocated to stack - _bp +5
                                    978 ;t                         Allocated to stack - _bp +9
                                    979 ;j                         Allocated to stack - _bp +13
                                    980 ;r                         Allocated to registers r2 r3 
                                    981 ;sloc0                     Allocated to stack - _bp +15
                                    982 ;sloc1                     Allocated to stack - _bp +1
                                    983 ;sloc2                     Allocated to stack - _bp +2
                                    984 ;------------------------------------------------------------
                                    985 ;	walk.c:99: static void walk(struct node *nstart) {
                                    986 ;	-----------------------------------------
                                    987 ;	 function walk
                                    988 ;	-----------------------------------------
      002370                        989 _walk:
      002370 C0 10            [24]  990 	push	_bp
      002372 E5 81            [12]  991 	mov	a,sp
      002374 F5 10            [12]  992 	mov	_bp,a
      002376 24 0D            [12]  993 	add	a,#0x0d
      002378 F5 81            [12]  994 	mov	sp,a
                                    995 ;	walk.c:104: if (!qadd(nstart)) bang();
      00237A AD 82            [24]  996 	mov	r5,dpl
      00237C AE 83            [24]  997 	mov	r6,dph
      00237E AF F0            [24]  998 	mov	r7,b
      002380 C0 07            [24]  999 	push	ar7
      002382 C0 06            [24] 1000 	push	ar6
      002384 C0 05            [24] 1001 	push	ar5
      002386 12 28 FE         [24] 1002 	lcall	_qadd
      002389 E5 82            [12] 1003 	mov	a,dpl
      00238B 85 83 F0         [24] 1004 	mov	b,dph
      00238E D0 05            [24] 1005 	pop	ar5
      002390 D0 06            [24] 1006 	pop	ar6
      002392 D0 07            [24] 1007 	pop	ar7
      002394 45 F0            [12] 1008 	orl	a,b
      002396 70 0F            [24] 1009 	jnz	00102$
      002398 C0 07            [24] 1010 	push	ar7
      00239A C0 06            [24] 1011 	push	ar6
      00239C C0 05            [24] 1012 	push	ar5
      00239E 12 20 FB         [24] 1013 	lcall	_bang
      0023A1 D0 05            [24] 1014 	pop	ar5
      0023A3 D0 06            [24] 1015 	pop	ar6
      0023A5 D0 07            [24] 1016 	pop	ar7
      0023A7                       1017 00102$:
                                   1018 ;	walk.c:105: g[nstart->r][nstart->c] = 0xaa;
      0023A7 8D 82            [24] 1019 	mov	dpl,r5
      0023A9 8E 83            [24] 1020 	mov	dph,r6
      0023AB 8F F0            [24] 1021 	mov	b,r7
      0023AD 12 2D 59         [24] 1022 	lcall	__gptrget
      0023B0 FB               [12] 1023 	mov	r3,a
      0023B1 A3               [24] 1024 	inc	dptr
      0023B2 12 2D 59         [24] 1025 	lcall	__gptrget
      0023B5 FC               [12] 1026 	mov	r4,a
      0023B6 C0 07            [24] 1027 	push	ar7
      0023B8 C0 06            [24] 1028 	push	ar6
      0023BA C0 05            [24] 1029 	push	ar5
      0023BC C0 03            [24] 1030 	push	ar3
      0023BE C0 04            [24] 1031 	push	ar4
      0023C0 90 00 C0         [24] 1032 	mov	dptr,#0x00c0
      0023C3 12 2B 69         [24] 1033 	lcall	__mulint
      0023C6 AB 82            [24] 1034 	mov	r3,dpl
      0023C8 AC 83            [24] 1035 	mov	r4,dph
      0023CA 15 81            [12] 1036 	dec	sp
      0023CC 15 81            [12] 1037 	dec	sp
      0023CE D0 05            [24] 1038 	pop	ar5
      0023D0 D0 06            [24] 1039 	pop	ar6
      0023D2 D0 07            [24] 1040 	pop	ar7
      0023D4 EB               [12] 1041 	mov	a,r3
      0023D5 24 00            [12] 1042 	add	a,#_g
      0023D7 FB               [12] 1043 	mov	r3,a
      0023D8 EC               [12] 1044 	mov	a,r4
      0023D9 34 41            [12] 1045 	addc	a,#(_g >> 8)
      0023DB FC               [12] 1046 	mov	r4,a
      0023DC 74 02            [12] 1047 	mov	a,#0x02
      0023DE 2D               [12] 1048 	add	a,r5
      0023DF FD               [12] 1049 	mov	r5,a
      0023E0 E4               [12] 1050 	clr	a
      0023E1 3E               [12] 1051 	addc	a,r6
      0023E2 FE               [12] 1052 	mov	r6,a
      0023E3 8D 82            [24] 1053 	mov	dpl,r5
      0023E5 8E 83            [24] 1054 	mov	dph,r6
      0023E7 8F F0            [24] 1055 	mov	b,r7
      0023E9 12 2D 59         [24] 1056 	lcall	__gptrget
      0023EC FD               [12] 1057 	mov	r5,a
      0023ED A3               [24] 1058 	inc	dptr
      0023EE 12 2D 59         [24] 1059 	lcall	__gptrget
      0023F1 FE               [12] 1060 	mov	r6,a
      0023F2 ED               [12] 1061 	mov	a,r5
      0023F3 2B               [12] 1062 	add	a,r3
      0023F4 F5 82            [12] 1063 	mov	dpl,a
      0023F6 EE               [12] 1064 	mov	a,r6
      0023F7 3C               [12] 1065 	addc	a,r4
      0023F8 F5 83            [12] 1066 	mov	dph,a
      0023FA 74 AA            [12] 1067 	mov	a,#0xaa
      0023FC F0               [24] 1068 	movx	@dptr,a
                                   1069 ;	walk.c:107: process:
      0023FD E5 10            [12] 1070 	mov	a,_bp
      0023FF 24 05            [12] 1071 	add	a,#0x05
      002401 F9               [12] 1072 	mov	r1,a
      002402 24 02            [12] 1073 	add	a,#0x02
      002404 F8               [12] 1074 	mov	r0,a
      002405 C0 00            [24] 1075 	push	ar0
      002407 A8 10            [24] 1076 	mov	r0,_bp
      002409 08               [12] 1077 	inc	r0
      00240A A6 01            [24] 1078 	mov	@r0,ar1
      00240C D0 00            [24] 1079 	pop	ar0
      00240E E5 10            [12] 1080 	mov	a,_bp
      002410 24 09            [12] 1081 	add	a,#0x09
      002412 FE               [12] 1082 	mov	r6,a
      002413 FD               [12] 1083 	mov	r5,a
      002414 74 02            [12] 1084 	mov	a,#0x02
      002416 2E               [12] 1085 	add	a,r6
      002417 FC               [12] 1086 	mov	r4,a
      002418                       1087 00103$:
                                   1088 ;	walk.c:108: if (!qget(&cur)) goto term;
      002418 C0 05            [24] 1089 	push	ar5
      00241A 89 02            [24] 1090 	mov	ar2,r1
      00241C 7B 00            [12] 1091 	mov	r3,#0x00
      00241E 7D 40            [12] 1092 	mov	r5,#0x40
      002420 8A 82            [24] 1093 	mov	dpl,r2
      002422 8B 83            [24] 1094 	mov	dph,r3
      002424 8D F0            [24] 1095 	mov	b,r5
      002426 C0 06            [24] 1096 	push	ar6
      002428 C0 05            [24] 1097 	push	ar5
      00242A C0 04            [24] 1098 	push	ar4
      00242C C0 01            [24] 1099 	push	ar1
      00242E C0 00            [24] 1100 	push	ar0
      002430 12 29 EE         [24] 1101 	lcall	_qget
      002433 E5 82            [12] 1102 	mov	a,dpl
      002435 85 83 F0         [24] 1103 	mov	b,dph
      002438 D0 00            [24] 1104 	pop	ar0
      00243A D0 01            [24] 1105 	pop	ar1
      00243C D0 04            [24] 1106 	pop	ar4
      00243E D0 05            [24] 1107 	pop	ar5
      002440 D0 06            [24] 1108 	pop	ar6
      002442 D0 05            [24] 1109 	pop	ar5
      002444 45 F0            [12] 1110 	orl	a,b
      002446 70 03            [24] 1111 	jnz	00158$
      002448 02 26 D3         [24] 1112 	ljmp	00115$
      00244B                       1113 00158$:
                                   1114 ;	walk.c:109: r = rand() & 0x001f;
      00244B C0 06            [24] 1115 	push	ar6
      00244D C0 05            [24] 1116 	push	ar5
      00244F C0 04            [24] 1117 	push	ar4
      002451 C0 01            [24] 1118 	push	ar1
      002453 C0 00            [24] 1119 	push	ar0
      002455 12 2A 71         [24] 1120 	lcall	_rand
      002458 AA 82            [24] 1121 	mov	r2,dpl
      00245A D0 00            [24] 1122 	pop	ar0
      00245C D0 01            [24] 1123 	pop	ar1
      00245E D0 04            [24] 1124 	pop	ar4
      002460 D0 05            [24] 1125 	pop	ar5
      002462 D0 06            [24] 1126 	pop	ar6
      002464 53 02 1F         [24] 1127 	anl	ar2,#0x1f
      002467 7B 00            [12] 1128 	mov	r3,#0x00
                                   1129 ;	walk.c:110: if (r < 16) {
      002469 C3               [12] 1130 	clr	c
      00246A EA               [12] 1131 	mov	a,r2
      00246B 94 10            [12] 1132 	subb	a,#0x10
      00246D EB               [12] 1133 	mov	a,r3
      00246E 64 80            [12] 1134 	xrl	a,#0x80
      002470 94 80            [12] 1135 	subb	a,#0x80
      002472 50 4F            [24] 1136 	jnc	00109$
                                   1137 ;	walk.c:111: if (!qadd(&cur)) bang();
      002474 C0 05            [24] 1138 	push	ar5
      002476 89 03            [24] 1139 	mov	ar3,r1
      002478 8B 02            [24] 1140 	mov	ar2,r3
      00247A 7B 00            [12] 1141 	mov	r3,#0x00
      00247C 7D 40            [12] 1142 	mov	r5,#0x40
      00247E 8A 82            [24] 1143 	mov	dpl,r2
      002480 8B 83            [24] 1144 	mov	dph,r3
      002482 8D F0            [24] 1145 	mov	b,r5
      002484 C0 06            [24] 1146 	push	ar6
      002486 C0 05            [24] 1147 	push	ar5
      002488 C0 04            [24] 1148 	push	ar4
      00248A C0 01            [24] 1149 	push	ar1
      00248C C0 00            [24] 1150 	push	ar0
      00248E 12 28 FE         [24] 1151 	lcall	_qadd
      002491 E5 82            [12] 1152 	mov	a,dpl
      002493 85 83 F0         [24] 1153 	mov	b,dph
      002496 D0 00            [24] 1154 	pop	ar0
      002498 D0 01            [24] 1155 	pop	ar1
      00249A D0 04            [24] 1156 	pop	ar4
      00249C D0 05            [24] 1157 	pop	ar5
      00249E D0 06            [24] 1158 	pop	ar6
      0024A0 D0 05            [24] 1159 	pop	ar5
      0024A2 45 F0            [12] 1160 	orl	a,b
      0024A4 60 03            [24] 1161 	jz	00160$
      0024A6 02 24 18         [24] 1162 	ljmp	00103$
      0024A9                       1163 00160$:
      0024A9 C0 06            [24] 1164 	push	ar6
      0024AB C0 05            [24] 1165 	push	ar5
      0024AD C0 04            [24] 1166 	push	ar4
      0024AF C0 01            [24] 1167 	push	ar1
      0024B1 C0 00            [24] 1168 	push	ar0
      0024B3 12 20 FB         [24] 1169 	lcall	_bang
      0024B6 D0 00            [24] 1170 	pop	ar0
      0024B8 D0 01            [24] 1171 	pop	ar1
      0024BA D0 04            [24] 1172 	pop	ar4
      0024BC D0 05            [24] 1173 	pop	ar5
      0024BE D0 06            [24] 1174 	pop	ar6
                                   1175 ;	walk.c:112: goto process;
      0024C0 02 24 18         [24] 1176 	ljmp	00103$
      0024C3                       1177 00109$:
                                   1178 ;	walk.c:115: printf("\033[%d;%dH.", cur.r + 4, cur.c + 1);
      0024C3 C0 05            [24] 1179 	push	ar5
      0024C5 86 02            [24] 1180 	mov	ar2,@r0
      0024C7 08               [12] 1181 	inc	r0
      0024C8 86 03            [24] 1182 	mov	ar3,@r0
      0024CA 18               [12] 1183 	dec	r0
      0024CB 74 01            [12] 1184 	mov	a,#0x01
      0024CD 2A               [12] 1185 	add	a,r2
      0024CE FA               [12] 1186 	mov	r2,a
      0024CF E4               [12] 1187 	clr	a
      0024D0 3B               [12] 1188 	addc	a,r3
      0024D1 FF               [12] 1189 	mov	r7,a
      0024D2 87 03            [24] 1190 	mov	ar3,@r1
      0024D4 09               [12] 1191 	inc	r1
      0024D5 87 05            [24] 1192 	mov	ar5,@r1
      0024D7 19               [12] 1193 	dec	r1
      0024D8 74 04            [12] 1194 	mov	a,#0x04
      0024DA 2B               [12] 1195 	add	a,r3
      0024DB FB               [12] 1196 	mov	r3,a
      0024DC E4               [12] 1197 	clr	a
      0024DD 3D               [12] 1198 	addc	a,r5
      0024DE FD               [12] 1199 	mov	r5,a
      0024DF C0 06            [24] 1200 	push	ar6
      0024E1 C0 05            [24] 1201 	push	ar5
      0024E3 C0 04            [24] 1202 	push	ar4
      0024E5 C0 01            [24] 1203 	push	ar1
      0024E7 C0 00            [24] 1204 	push	ar0
      0024E9 C0 02            [24] 1205 	push	ar2
      0024EB C0 07            [24] 1206 	push	ar7
      0024ED C0 03            [24] 1207 	push	ar3
      0024EF C0 05            [24] 1208 	push	ar5
      0024F1 74 60            [12] 1209 	mov	a,#___str_1
      0024F3 C0 E0            [24] 1210 	push	acc
      0024F5 74 40            [12] 1211 	mov	a,#(___str_1 >> 8)
      0024F7 C0 E0            [24] 1212 	push	acc
      0024F9 74 80            [12] 1213 	mov	a,#0x80
      0024FB C0 E0            [24] 1214 	push	acc
      0024FD 12 2D 20         [24] 1215 	lcall	_printf
      002500 E5 81            [12] 1216 	mov	a,sp
      002502 24 F9            [12] 1217 	add	a,#0xf9
      002504 F5 81            [12] 1218 	mov	sp,a
      002506 D0 00            [24] 1219 	pop	ar0
      002508 D0 01            [24] 1220 	pop	ar1
      00250A D0 04            [24] 1221 	pop	ar4
      00250C D0 05            [24] 1222 	pop	ar5
                                   1223 ;	walk.c:116: printf("\033[2;1H% 8d% 8d% 8d% 8d", hp, tp, cur.r, cur.c);
      00250E 86 07            [24] 1224 	mov	ar7,@r0
      002510 08               [12] 1225 	inc	r0
      002511 86 03            [24] 1226 	mov	ar3,@r0
      002513 18               [12] 1227 	dec	r0
      002514 87 02            [24] 1228 	mov	ar2,@r1
      002516 09               [12] 1229 	inc	r1
      002517 87 05            [24] 1230 	mov	ar5,@r1
      002519 19               [12] 1231 	dec	r1
      00251A C0 05            [24] 1232 	push	ar5
      00251C C0 04            [24] 1233 	push	ar4
      00251E C0 01            [24] 1234 	push	ar1
      002520 C0 00            [24] 1235 	push	ar0
      002522 C0 07            [24] 1236 	push	ar7
      002524 C0 03            [24] 1237 	push	ar3
      002526 C0 02            [24] 1238 	push	ar2
      002528 C0 05            [24] 1239 	push	ar5
      00252A 90 F5 02         [24] 1240 	mov	dptr,#_tp
      00252D E0               [24] 1241 	movx	a,@dptr
      00252E C0 E0            [24] 1242 	push	acc
      002530 A3               [24] 1243 	inc	dptr
      002531 E0               [24] 1244 	movx	a,@dptr
      002532 C0 E0            [24] 1245 	push	acc
      002534 90 F5 00         [24] 1246 	mov	dptr,#_hp
      002537 E0               [24] 1247 	movx	a,@dptr
      002538 C0 E0            [24] 1248 	push	acc
      00253A A3               [24] 1249 	inc	dptr
      00253B E0               [24] 1250 	movx	a,@dptr
      00253C C0 E0            [24] 1251 	push	acc
      00253E 74 6A            [12] 1252 	mov	a,#___str_2
      002540 C0 E0            [24] 1253 	push	acc
      002542 74 40            [12] 1254 	mov	a,#(___str_2 >> 8)
      002544 C0 E0            [24] 1255 	push	acc
      002546 74 80            [12] 1256 	mov	a,#0x80
      002548 C0 E0            [24] 1257 	push	acc
      00254A 12 2D 20         [24] 1258 	lcall	_printf
      00254D E5 81            [12] 1259 	mov	a,sp
      00254F 24 F5            [12] 1260 	add	a,#0xf5
      002551 F5 81            [12] 1261 	mov	sp,a
      002553 D0 00            [24] 1262 	pop	ar0
      002555 D0 01            [24] 1263 	pop	ar1
      002557 D0 04            [24] 1264 	pop	ar4
      002559 D0 05            [24] 1265 	pop	ar5
      00255B D0 06            [24] 1266 	pop	ar6
                                   1267 ;	walk.c:118: for (j = 0; j < NMAX; j++)
      00255D C0 00            [24] 1268 	push	ar0
      00255F E5 10            [12] 1269 	mov	a,_bp
      002561 24 0D            [12] 1270 	add	a,#0x0d
      002563 F8               [12] 1271 	mov	r0,a
      002564 76 00            [12] 1272 	mov	@r0,#0x00
      002566 D0 00            [24] 1273 	pop	ar0
                                   1274 ;	walk.c:128: return;
      002568 D0 05            [24] 1275 	pop	ar5
                                   1276 ;	walk.c:118: for (j = 0; j < NMAX; j++)
      00256A                       1277 00116$:
                                   1278 ;	walk.c:119: if (update(&t, &cur, j)) {
      00256A C0 05            [24] 1279 	push	ar5
      00256C C0 00            [24] 1280 	push	ar0
      00256E A8 10            [24] 1281 	mov	r0,_bp
      002570 08               [12] 1282 	inc	r0
      002571 C0 01            [24] 1283 	push	ar1
      002573 A9 10            [24] 1284 	mov	r1,_bp
      002575 09               [12] 1285 	inc	r1
      002576 09               [12] 1286 	inc	r1
      002577 E6               [12] 1287 	mov	a,@r0
      002578 F7               [12] 1288 	mov	@r1,a
      002579 09               [12] 1289 	inc	r1
      00257A 77 00            [12] 1290 	mov	@r1,#0x00
      00257C 09               [12] 1291 	inc	r1
      00257D 77 40            [12] 1292 	mov	@r1,#0x40
      00257F D0 01            [24] 1293 	pop	ar1
      002581 D0 00            [24] 1294 	pop	ar0
      002583 8E 03            [24] 1295 	mov	ar3,r6
      002585 7D 00            [12] 1296 	mov	r5,#0x00
      002587 7F 40            [12] 1297 	mov	r7,#0x40
      002589 C0 06            [24] 1298 	push	ar6
      00258B C0 04            [24] 1299 	push	ar4
      00258D C0 01            [24] 1300 	push	ar1
      00258F C0 00            [24] 1301 	push	ar0
      002591 85 00 F0         [24] 1302 	mov	b,ar0
      002594 E5 10            [12] 1303 	mov	a,_bp
      002596 24 0D            [12] 1304 	add	a,#0x0d
      002598 F8               [12] 1305 	mov	r0,a
      002599 E6               [12] 1306 	mov	a,@r0
      00259A C0 E0            [24] 1307 	push	acc
      00259C A8 F0            [24] 1308 	mov	r0,b
      00259E 85 00 F0         [24] 1309 	mov	b,ar0
      0025A1 A8 10            [24] 1310 	mov	r0,_bp
      0025A3 08               [12] 1311 	inc	r0
      0025A4 08               [12] 1312 	inc	r0
      0025A5 E6               [12] 1313 	mov	a,@r0
      0025A6 C0 E0            [24] 1314 	push	acc
      0025A8 08               [12] 1315 	inc	r0
      0025A9 E6               [12] 1316 	mov	a,@r0
      0025AA C0 E0            [24] 1317 	push	acc
      0025AC 08               [12] 1318 	inc	r0
      0025AD E6               [12] 1319 	mov	a,@r0
      0025AE C0 E0            [24] 1320 	push	acc
      0025B0 8B 82            [24] 1321 	mov	dpl,r3
      0025B2 8D 83            [24] 1322 	mov	dph,r5
      0025B4 8F F0            [24] 1323 	mov	b,r7
      0025B6 12 21 07         [24] 1324 	lcall	_update
      0025B9 AD 82            [24] 1325 	mov	r5,dpl
      0025BB AF 83            [24] 1326 	mov	r7,dph
      0025BD E5 81            [12] 1327 	mov	a,sp
      0025BF 24 FC            [12] 1328 	add	a,#0xfc
      0025C1 F5 81            [12] 1329 	mov	sp,a
      0025C3 D0 00            [24] 1330 	pop	ar0
      0025C5 D0 01            [24] 1331 	pop	ar1
      0025C7 D0 04            [24] 1332 	pop	ar4
      0025C9 D0 06            [24] 1333 	pop	ar6
      0025CB ED               [12] 1334 	mov	a,r5
      0025CC 4F               [12] 1335 	orl	a,r7
      0025CD D0 05            [24] 1336 	pop	ar5
      0025CF 70 03            [24] 1337 	jnz	00161$
      0025D1 02 26 B9         [24] 1338 	ljmp	00117$
      0025D4                       1339 00161$:
                                   1340 ;	walk.c:120: if (!qadd(&t)) bang();
      0025D4 8D 02            [24] 1341 	mov	ar2,r5
      0025D6 7B 00            [12] 1342 	mov	r3,#0x00
      0025D8 7F 40            [12] 1343 	mov	r7,#0x40
      0025DA 8A 82            [24] 1344 	mov	dpl,r2
      0025DC 8B 83            [24] 1345 	mov	dph,r3
      0025DE 8F F0            [24] 1346 	mov	b,r7
      0025E0 C0 06            [24] 1347 	push	ar6
      0025E2 C0 05            [24] 1348 	push	ar5
      0025E4 C0 04            [24] 1349 	push	ar4
      0025E6 C0 01            [24] 1350 	push	ar1
      0025E8 C0 00            [24] 1351 	push	ar0
      0025EA 12 28 FE         [24] 1352 	lcall	_qadd
      0025ED E5 82            [12] 1353 	mov	a,dpl
      0025EF 85 83 F0         [24] 1354 	mov	b,dph
      0025F2 D0 00            [24] 1355 	pop	ar0
      0025F4 D0 01            [24] 1356 	pop	ar1
      0025F6 D0 04            [24] 1357 	pop	ar4
      0025F8 D0 05            [24] 1358 	pop	ar5
      0025FA D0 06            [24] 1359 	pop	ar6
      0025FC 45 F0            [12] 1360 	orl	a,b
      0025FE 70 17            [24] 1361 	jnz	00111$
      002600 C0 06            [24] 1362 	push	ar6
      002602 C0 05            [24] 1363 	push	ar5
      002604 C0 04            [24] 1364 	push	ar4
      002606 C0 01            [24] 1365 	push	ar1
      002608 C0 00            [24] 1366 	push	ar0
      00260A 12 20 FB         [24] 1367 	lcall	_bang
      00260D D0 00            [24] 1368 	pop	ar0
      00260F D0 01            [24] 1369 	pop	ar1
      002611 D0 04            [24] 1370 	pop	ar4
      002613 D0 05            [24] 1371 	pop	ar5
      002615 D0 06            [24] 1372 	pop	ar6
      002617                       1373 00111$:
                                   1374 ;	walk.c:121: g[t.r][t.c] = 0xaa;
      002617 C0 05            [24] 1375 	push	ar5
      002619 C0 00            [24] 1376 	push	ar0
      00261B A8 06            [24] 1377 	mov	r0,ar6
      00261D 86 03            [24] 1378 	mov	ar3,@r0
      00261F 08               [12] 1379 	inc	r0
      002620 86 07            [24] 1380 	mov	ar7,@r0
      002622 D0 00            [24] 1381 	pop	ar0
      002624 C0 06            [24] 1382 	push	ar6
      002626 C0 05            [24] 1383 	push	ar5
      002628 C0 04            [24] 1384 	push	ar4
      00262A C0 01            [24] 1385 	push	ar1
      00262C C0 00            [24] 1386 	push	ar0
      00262E C0 03            [24] 1387 	push	ar3
      002630 C0 07            [24] 1388 	push	ar7
      002632 90 00 C0         [24] 1389 	mov	dptr,#0x00c0
      002635 12 2B 69         [24] 1390 	lcall	__mulint
      002638 AB 82            [24] 1391 	mov	r3,dpl
      00263A AF 83            [24] 1392 	mov	r7,dph
      00263C 15 81            [12] 1393 	dec	sp
      00263E 15 81            [12] 1394 	dec	sp
      002640 D0 00            [24] 1395 	pop	ar0
      002642 D0 01            [24] 1396 	pop	ar1
      002644 D0 04            [24] 1397 	pop	ar4
      002646 D0 05            [24] 1398 	pop	ar5
      002648 D0 06            [24] 1399 	pop	ar6
      00264A EB               [12] 1400 	mov	a,r3
      00264B 24 00            [12] 1401 	add	a,#_g
      00264D FB               [12] 1402 	mov	r3,a
      00264E EF               [12] 1403 	mov	a,r7
      00264F 34 41            [12] 1404 	addc	a,#(_g >> 8)
      002651 FF               [12] 1405 	mov	r7,a
      002652 C0 00            [24] 1406 	push	ar0
      002654 A8 04            [24] 1407 	mov	r0,ar4
      002656 86 02            [24] 1408 	mov	ar2,@r0
      002658 08               [12] 1409 	inc	r0
      002659 86 05            [24] 1410 	mov	ar5,@r0
      00265B EA               [12] 1411 	mov	a,r2
      00265C 2B               [12] 1412 	add	a,r3
      00265D F5 82            [12] 1413 	mov	dpl,a
      00265F ED               [12] 1414 	mov	a,r5
      002660 3F               [12] 1415 	addc	a,r7
      002661 F5 83            [12] 1416 	mov	dph,a
      002663 74 AA            [12] 1417 	mov	a,#0xaa
      002665 F0               [24] 1418 	movx	@dptr,a
                                   1419 ;	walk.c:122: printf("\033[%d;%dHo", t.r + 4, t.c + 1);
      002666 A8 04            [24] 1420 	mov	r0,ar4
      002668 86 05            [24] 1421 	mov	ar5,@r0
      00266A 08               [12] 1422 	inc	r0
      00266B 86 07            [24] 1423 	mov	ar7,@r0
      00266D D0 00            [24] 1424 	pop	ar0
      00266F 0D               [12] 1425 	inc	r5
      002670 BD 00 01         [24] 1426 	cjne	r5,#0x00,00163$
      002673 0F               [12] 1427 	inc	r7
      002674                       1428 00163$:
      002674 C0 00            [24] 1429 	push	ar0
      002676 A8 06            [24] 1430 	mov	r0,ar6
      002678 86 02            [24] 1431 	mov	ar2,@r0
      00267A 08               [12] 1432 	inc	r0
      00267B 86 03            [24] 1433 	mov	ar3,@r0
      00267D D0 00            [24] 1434 	pop	ar0
      00267F 74 04            [12] 1435 	mov	a,#0x04
      002681 2A               [12] 1436 	add	a,r2
      002682 FA               [12] 1437 	mov	r2,a
      002683 E4               [12] 1438 	clr	a
      002684 3B               [12] 1439 	addc	a,r3
      002685 FB               [12] 1440 	mov	r3,a
      002686 C0 06            [24] 1441 	push	ar6
      002688 C0 05            [24] 1442 	push	ar5
      00268A C0 04            [24] 1443 	push	ar4
      00268C C0 01            [24] 1444 	push	ar1
      00268E C0 00            [24] 1445 	push	ar0
      002690 C0 05            [24] 1446 	push	ar5
      002692 C0 07            [24] 1447 	push	ar7
      002694 C0 02            [24] 1448 	push	ar2
      002696 C0 03            [24] 1449 	push	ar3
      002698 74 81            [12] 1450 	mov	a,#___str_3
      00269A C0 E0            [24] 1451 	push	acc
      00269C 74 40            [12] 1452 	mov	a,#(___str_3 >> 8)
      00269E C0 E0            [24] 1453 	push	acc
      0026A0 74 80            [12] 1454 	mov	a,#0x80
      0026A2 C0 E0            [24] 1455 	push	acc
      0026A4 12 2D 20         [24] 1456 	lcall	_printf
      0026A7 E5 81            [12] 1457 	mov	a,sp
      0026A9 24 F9            [12] 1458 	add	a,#0xf9
      0026AB F5 81            [12] 1459 	mov	sp,a
      0026AD D0 00            [24] 1460 	pop	ar0
      0026AF D0 01            [24] 1461 	pop	ar1
      0026B1 D0 04            [24] 1462 	pop	ar4
      0026B3 D0 05            [24] 1463 	pop	ar5
      0026B5 D0 06            [24] 1464 	pop	ar6
                                   1465 ;	walk.c:128: return;
      0026B7 D0 05            [24] 1466 	pop	ar5
                                   1467 ;	walk.c:122: printf("\033[%d;%dHo", t.r + 4, t.c + 1);
      0026B9                       1468 00117$:
                                   1469 ;	walk.c:118: for (j = 0; j < NMAX; j++)
      0026B9 C0 00            [24] 1470 	push	ar0
      0026BB E5 10            [12] 1471 	mov	a,_bp
      0026BD 24 0D            [12] 1472 	add	a,#0x0d
      0026BF F8               [12] 1473 	mov	r0,a
      0026C0 06               [12] 1474 	inc	@r0
      0026C1 E5 10            [12] 1475 	mov	a,_bp
      0026C3 24 0D            [12] 1476 	add	a,#0x0d
      0026C5 F8               [12] 1477 	mov	r0,a
      0026C6 B6 08 00         [24] 1478 	cjne	@r0,#0x08,00164$
      0026C9                       1479 00164$:
      0026C9 D0 00            [24] 1480 	pop	ar0
      0026CB 50 03            [24] 1481 	jnc	00165$
      0026CD 02 25 6A         [24] 1482 	ljmp	00116$
      0026D0                       1483 00165$:
                                   1484 ;	walk.c:125: goto process;
      0026D0 02 24 18         [24] 1485 	ljmp	00103$
                                   1486 ;	walk.c:127: term:
      0026D3                       1487 00115$:
                                   1488 ;	walk.c:128: return;
                                   1489 ;	walk.c:129: }
      0026D3 85 10 81         [24] 1490 	mov	sp,_bp
      0026D6 D0 10            [24] 1491 	pop	_bp
      0026D8 22               [24] 1492 	ret
                                   1493 ;------------------------------------------------------------
                                   1494 ;Allocation info for local variables in function 'main'
                                   1495 ;------------------------------------------------------------
                                   1496 ;initial                   Allocated to stack - _bp +5
                                   1497 ;N                         Allocated to stack - _bp +9
                                   1498 ;i                         Allocated to stack - _bp +11
                                   1499 ;j                         Allocated to registers r2 r6 
                                   1500 ;sloc0                     Allocated to stack - _bp +1
                                   1501 ;sloc1                     Allocated to stack - _bp +3
                                   1502 ;R                         Allocated with name '_main_R_65536_63'
                                   1503 ;------------------------------------------------------------
                                   1504 ;	walk.c:131: int main(void) {
                                   1505 ;	-----------------------------------------
                                   1506 ;	 function main
                                   1507 ;	-----------------------------------------
      0026D9                       1508 _main:
      0026D9 C0 10            [24] 1509 	push	_bp
      0026DB E5 81            [12] 1510 	mov	a,sp
      0026DD F5 10            [12] 1511 	mov	_bp,a
      0026DF 24 0C            [12] 1512 	add	a,#0x0c
      0026E1 F5 81            [12] 1513 	mov	sp,a
                                   1514 ;	walk.c:137: i0 = 1;
      0026E3 78 21            [12] 1515 	mov	r0,#_i0
      0026E5 76 01            [12] 1516 	mov	@r0,#0x01
                                   1517 ;	walk.c:139: IT0 = 1;
                                   1518 ;	assignBit
      0026E7 D2 88            [12] 1519 	setb	_IT0
                                   1520 ;	walk.c:140: EX0 = 1;
                                   1521 ;	assignBit
      0026E9 D2 A8            [12] 1522 	setb	_EX0
                                   1523 ;	walk.c:141: EA = 1;
                                   1524 ;	assignBit
      0026EB D2 AF            [12] 1525 	setb	_EA
                                   1526 ;	walk.c:143: srand(*R);
      0026ED 90 F5 04         [24] 1527 	mov	dptr,#_main_R_65536_63
      0026F0 E0               [24] 1528 	movx	a,@dptr
      0026F1 FE               [12] 1529 	mov	r6,a
      0026F2 A3               [24] 1530 	inc	dptr
      0026F3 E0               [24] 1531 	movx	a,@dptr
      0026F4 FF               [12] 1532 	mov	r7,a
      0026F5 8E 82            [24] 1533 	mov	dpl,r6
      0026F7 8F 83            [24] 1534 	mov	dph,r7
      0026F9 E0               [24] 1535 	movx	a,@dptr
      0026FA FE               [12] 1536 	mov	r6,a
      0026FB A3               [24] 1537 	inc	dptr
      0026FC E0               [24] 1538 	movx	a,@dptr
      0026FD FF               [12] 1539 	mov	r7,a
      0026FE 8E 82            [24] 1540 	mov	dpl,r6
      002700 8F 83            [24] 1541 	mov	dph,r7
      002702 12 2B 35         [24] 1542 	lcall	_srand
                                   1543 ;	walk.c:144: qinit();
      002705 12 28 F0         [24] 1544 	lcall	_qinit
                                   1545 ;	walk.c:146: puts("\033[2J\033[?25l");
      002708 90 40 8B         [24] 1546 	mov	dptr,#___str_4
      00270B 75 F0 80         [24] 1547 	mov	b,#0x80
      00270E 12 2C 9A         [24] 1548 	lcall	_puts
                                   1549 ;	walk.c:148: while (i0) {
      002711 E5 10            [12] 1550 	mov	a,_bp
      002713 24 05            [12] 1551 	add	a,#0x05
      002715 F9               [12] 1552 	mov	r1,a
      002716 FF               [12] 1553 	mov	r7,a
      002717 E5 10            [12] 1554 	mov	a,_bp
      002719 24 09            [12] 1555 	add	a,#0x09
      00271B F8               [12] 1556 	mov	r0,a
      00271C E4               [12] 1557 	clr	a
      00271D F6               [12] 1558 	mov	@r0,a
      00271E 08               [12] 1559 	inc	r0
      00271F F6               [12] 1560 	mov	@r0,a
      002720                       1561 00107$:
      002720 78 21            [12] 1562 	mov	r0,#_i0
      002722 E6               [12] 1563 	mov	a,@r0
      002723 70 03            [24] 1564 	jnz	00169$
      002725 02 28 D9         [24] 1565 	ljmp	00109$
      002728                       1566 00169$:
                                   1567 ;	walk.c:149: for (i = 0; i < ROWS; i++)
      002728 7B 00            [12] 1568 	mov	r3,#0x00
      00272A 7C 00            [12] 1569 	mov	r4,#0x00
      00272C A8 10            [24] 1570 	mov	r0,_bp
      00272E 08               [12] 1571 	inc	r0
      00272F E4               [12] 1572 	clr	a
      002730 F6               [12] 1573 	mov	@r0,a
      002731 08               [12] 1574 	inc	r0
      002732 F6               [12] 1575 	mov	@r0,a
                                   1576 ;	walk.c:150: for (j = 0; j < COLS; j++)
      002733                       1577 00121$:
      002733 A8 10            [24] 1578 	mov	r0,_bp
      002735 08               [12] 1579 	inc	r0
      002736 C0 01            [24] 1580 	push	ar1
      002738 E5 10            [12] 1581 	mov	a,_bp
      00273A 24 03            [12] 1582 	add	a,#0x03
      00273C F9               [12] 1583 	mov	r1,a
      00273D E6               [12] 1584 	mov	a,@r0
      00273E 24 00            [12] 1585 	add	a,#_g
      002740 F7               [12] 1586 	mov	@r1,a
      002741 08               [12] 1587 	inc	r0
      002742 E6               [12] 1588 	mov	a,@r0
      002743 34 41            [12] 1589 	addc	a,#(_g >> 8)
      002745 09               [12] 1590 	inc	r1
      002746 F7               [12] 1591 	mov	@r1,a
      002747 D0 01            [24] 1592 	pop	ar1
      002749 7A 00            [12] 1593 	mov	r2,#0x00
      00274B 7E 00            [12] 1594 	mov	r6,#0x00
      00274D                       1595 00110$:
                                   1596 ;	walk.c:151: g[i][j] = 0x55;
      00274D E5 10            [12] 1597 	mov	a,_bp
      00274F 24 03            [12] 1598 	add	a,#0x03
      002751 F8               [12] 1599 	mov	r0,a
      002752 EA               [12] 1600 	mov	a,r2
      002753 26               [12] 1601 	add	a,@r0
      002754 F5 82            [12] 1602 	mov	dpl,a
      002756 EE               [12] 1603 	mov	a,r6
      002757 08               [12] 1604 	inc	r0
      002758 36               [12] 1605 	addc	a,@r0
      002759 F5 83            [12] 1606 	mov	dph,a
      00275B 74 55            [12] 1607 	mov	a,#0x55
      00275D F0               [24] 1608 	movx	@dptr,a
                                   1609 ;	walk.c:150: for (j = 0; j < COLS; j++)
      00275E 0A               [12] 1610 	inc	r2
      00275F BA 00 01         [24] 1611 	cjne	r2,#0x00,00170$
      002762 0E               [12] 1612 	inc	r6
      002763                       1613 00170$:
      002763 C3               [12] 1614 	clr	c
      002764 EA               [12] 1615 	mov	a,r2
      002765 94 C0            [12] 1616 	subb	a,#0xc0
      002767 EE               [12] 1617 	mov	a,r6
      002768 64 80            [12] 1618 	xrl	a,#0x80
      00276A 94 80            [12] 1619 	subb	a,#0x80
      00276C 40 DF            [24] 1620 	jc	00110$
                                   1621 ;	walk.c:149: for (i = 0; i < ROWS; i++)
      00276E A8 10            [24] 1622 	mov	r0,_bp
      002770 08               [12] 1623 	inc	r0
      002771 74 C0            [12] 1624 	mov	a,#0xc0
      002773 26               [12] 1625 	add	a,@r0
      002774 F6               [12] 1626 	mov	@r0,a
      002775 E4               [12] 1627 	clr	a
      002776 08               [12] 1628 	inc	r0
      002777 36               [12] 1629 	addc	a,@r0
      002778 F6               [12] 1630 	mov	@r0,a
      002779 0B               [12] 1631 	inc	r3
      00277A BB 00 01         [24] 1632 	cjne	r3,#0x00,00172$
      00277D 0C               [12] 1633 	inc	r4
      00277E                       1634 00172$:
      00277E C3               [12] 1635 	clr	c
      00277F EB               [12] 1636 	mov	a,r3
      002780 94 30            [12] 1637 	subb	a,#0x30
      002782 EC               [12] 1638 	mov	a,r4
      002783 64 80            [12] 1639 	xrl	a,#0x80
      002785 94 80            [12] 1640 	subb	a,#0x80
      002787 40 AA            [24] 1641 	jc	00121$
                                   1642 ;	walk.c:153: initial.r = rand() % ROWS;
      002789 E5 10            [12] 1643 	mov	a,_bp
      00278B 24 05            [12] 1644 	add	a,#0x05
      00278D F8               [12] 1645 	mov	r0,a
      00278E C0 07            [24] 1646 	push	ar7
      002790 C0 01            [24] 1647 	push	ar1
      002792 C0 00            [24] 1648 	push	ar0
      002794 12 2A 71         [24] 1649 	lcall	_rand
      002797 AD 82            [24] 1650 	mov	r5,dpl
      002799 AE 83            [24] 1651 	mov	r6,dph
      00279B 74 30            [12] 1652 	mov	a,#0x30
      00279D C0 E0            [24] 1653 	push	acc
      00279F E4               [12] 1654 	clr	a
      0027A0 C0 E0            [24] 1655 	push	acc
      0027A2 8D 82            [24] 1656 	mov	dpl,r5
      0027A4 8E 83            [24] 1657 	mov	dph,r6
      0027A6 12 2D 75         [24] 1658 	lcall	__modsint
      0027A9 AD 82            [24] 1659 	mov	r5,dpl
      0027AB AE 83            [24] 1660 	mov	r6,dph
      0027AD 15 81            [12] 1661 	dec	sp
      0027AF 15 81            [12] 1662 	dec	sp
      0027B1 D0 00            [24] 1663 	pop	ar0
      0027B3 D0 01            [24] 1664 	pop	ar1
      0027B5 A6 05            [24] 1665 	mov	@r0,ar5
      0027B7 08               [12] 1666 	inc	r0
      0027B8 A6 06            [24] 1667 	mov	@r0,ar6
      0027BA 18               [12] 1668 	dec	r0
                                   1669 ;	walk.c:154: initial.c = rand() % COLS;
      0027BB 74 02            [12] 1670 	mov	a,#0x02
      0027BD 29               [12] 1671 	add	a,r1
      0027BE F8               [12] 1672 	mov	r0,a
      0027BF C0 01            [24] 1673 	push	ar1
      0027C1 C0 00            [24] 1674 	push	ar0
      0027C3 12 2A 71         [24] 1675 	lcall	_rand
      0027C6 AD 82            [24] 1676 	mov	r5,dpl
      0027C8 AE 83            [24] 1677 	mov	r6,dph
      0027CA 74 C0            [12] 1678 	mov	a,#0xc0
      0027CC C0 E0            [24] 1679 	push	acc
      0027CE E4               [12] 1680 	clr	a
      0027CF C0 E0            [24] 1681 	push	acc
      0027D1 8D 82            [24] 1682 	mov	dpl,r5
      0027D3 8E 83            [24] 1683 	mov	dph,r6
      0027D5 12 2D 75         [24] 1684 	lcall	__modsint
      0027D8 AD 82            [24] 1685 	mov	r5,dpl
      0027DA AE 83            [24] 1686 	mov	r6,dph
      0027DC 15 81            [12] 1687 	dec	sp
      0027DE 15 81            [12] 1688 	dec	sp
      0027E0 D0 00            [24] 1689 	pop	ar0
      0027E2 A6 05            [24] 1690 	mov	@r0,ar5
      0027E4 08               [12] 1691 	inc	r0
      0027E5 A6 06            [24] 1692 	mov	@r0,ar6
      0027E7 18               [12] 1693 	dec	r0
                                   1694 ;	walk.c:156: puts("\033[2J\033[?25l");
      0027E8 90 40 8B         [24] 1695 	mov	dptr,#___str_4
      0027EB 75 F0 80         [24] 1696 	mov	b,#0x80
      0027EE C0 00            [24] 1697 	push	ar0
      0027F0 12 2C 9A         [24] 1698 	lcall	_puts
      0027F3 D0 00            [24] 1699 	pop	ar0
      0027F5 D0 01            [24] 1700 	pop	ar1
                                   1701 ;	walk.c:157: printf("\033[1;1H% 8u% 8d% 8d", N, initial.r, initial.c);
      0027F7 86 05            [24] 1702 	mov	ar5,@r0
      0027F9 08               [12] 1703 	inc	r0
      0027FA 86 06            [24] 1704 	mov	ar6,@r0
      0027FC 18               [12] 1705 	dec	r0
      0027FD 87 03            [24] 1706 	mov	ar3,@r1
      0027FF 09               [12] 1707 	inc	r1
      002800 87 04            [24] 1708 	mov	ar4,@r1
      002802 19               [12] 1709 	dec	r1
      002803 C0 01            [24] 1710 	push	ar1
      002805 C0 05            [24] 1711 	push	ar5
      002807 C0 06            [24] 1712 	push	ar6
      002809 C0 03            [24] 1713 	push	ar3
      00280B C0 04            [24] 1714 	push	ar4
      00280D E5 10            [12] 1715 	mov	a,_bp
      00280F 24 09            [12] 1716 	add	a,#0x09
      002811 F8               [12] 1717 	mov	r0,a
      002812 E6               [12] 1718 	mov	a,@r0
      002813 C0 E0            [24] 1719 	push	acc
      002815 08               [12] 1720 	inc	r0
      002816 E6               [12] 1721 	mov	a,@r0
      002817 C0 E0            [24] 1722 	push	acc
      002819 74 96            [12] 1723 	mov	a,#___str_5
      00281B C0 E0            [24] 1724 	push	acc
      00281D 74 40            [12] 1725 	mov	a,#(___str_5 >> 8)
      00281F C0 E0            [24] 1726 	push	acc
      002821 74 80            [12] 1727 	mov	a,#0x80
      002823 C0 E0            [24] 1728 	push	acc
      002825 12 2D 20         [24] 1729 	lcall	_printf
      002828 E5 81            [12] 1730 	mov	a,sp
      00282A 24 F7            [12] 1731 	add	a,#0xf7
      00282C F5 81            [12] 1732 	mov	sp,a
      00282E D0 01            [24] 1733 	pop	ar1
      002830 D0 07            [24] 1734 	pop	ar7
                                   1735 ;	walk.c:159: walk(&initial);
      002832 8F 04            [24] 1736 	mov	ar4,r7
      002834 7D 00            [12] 1737 	mov	r5,#0x00
      002836 7E 40            [12] 1738 	mov	r6,#0x40
      002838 8C 82            [24] 1739 	mov	dpl,r4
      00283A 8D 83            [24] 1740 	mov	dph,r5
      00283C 8E F0            [24] 1741 	mov	b,r6
      00283E C0 07            [24] 1742 	push	ar7
      002840 C0 01            [24] 1743 	push	ar1
      002842 12 23 70         [24] 1744 	lcall	_walk
      002845 D0 01            [24] 1745 	pop	ar1
      002847 D0 07            [24] 1746 	pop	ar7
                                   1747 ;	walk.c:161: for (i = 0; i < ROWS; i++)
      002849 E5 10            [12] 1748 	mov	a,_bp
      00284B 24 0B            [12] 1749 	add	a,#0x0b
      00284D F8               [12] 1750 	mov	r0,a
      00284E E4               [12] 1751 	clr	a
      00284F F6               [12] 1752 	mov	@r0,a
      002850 08               [12] 1753 	inc	r0
      002851 F6               [12] 1754 	mov	@r0,a
      002852 7B 00            [12] 1755 	mov	r3,#0x00
      002854 7C 00            [12] 1756 	mov	r4,#0x00
                                   1757 ;	walk.c:162: for (j = 0; j < COLS; j++)
      002856                       1758 00126$:
      002856 E5 10            [12] 1759 	mov	a,_bp
      002858 24 03            [12] 1760 	add	a,#0x03
      00285A F8               [12] 1761 	mov	r0,a
      00285B EB               [12] 1762 	mov	a,r3
      00285C 24 00            [12] 1763 	add	a,#_g
      00285E F6               [12] 1764 	mov	@r0,a
      00285F EC               [12] 1765 	mov	a,r4
      002860 34 41            [12] 1766 	addc	a,#(_g >> 8)
      002862 08               [12] 1767 	inc	r0
      002863 F6               [12] 1768 	mov	@r0,a
      002864 7A 00            [12] 1769 	mov	r2,#0x00
      002866 7E 00            [12] 1770 	mov	r6,#0x00
      002868                       1771 00114$:
                                   1772 ;	walk.c:163: if (g[i][j] != 0xaa) bang();
      002868 E5 10            [12] 1773 	mov	a,_bp
      00286A 24 03            [12] 1774 	add	a,#0x03
      00286C F8               [12] 1775 	mov	r0,a
      00286D EA               [12] 1776 	mov	a,r2
      00286E 26               [12] 1777 	add	a,@r0
      00286F F5 82            [12] 1778 	mov	dpl,a
      002871 EE               [12] 1779 	mov	a,r6
      002872 08               [12] 1780 	inc	r0
      002873 36               [12] 1781 	addc	a,@r0
      002874 F5 83            [12] 1782 	mov	dph,a
      002876 E0               [24] 1783 	movx	a,@dptr
      002877 FD               [12] 1784 	mov	r5,a
      002878 BD AA 02         [24] 1785 	cjne	r5,#0xaa,00174$
      00287B 80 1B            [24] 1786 	sjmp	00115$
      00287D                       1787 00174$:
      00287D C0 07            [24] 1788 	push	ar7
      00287F C0 06            [24] 1789 	push	ar6
      002881 C0 04            [24] 1790 	push	ar4
      002883 C0 03            [24] 1791 	push	ar3
      002885 C0 02            [24] 1792 	push	ar2
      002887 C0 01            [24] 1793 	push	ar1
      002889 12 20 FB         [24] 1794 	lcall	_bang
      00288C D0 01            [24] 1795 	pop	ar1
      00288E D0 02            [24] 1796 	pop	ar2
      002890 D0 03            [24] 1797 	pop	ar3
      002892 D0 04            [24] 1798 	pop	ar4
      002894 D0 06            [24] 1799 	pop	ar6
      002896 D0 07            [24] 1800 	pop	ar7
      002898                       1801 00115$:
                                   1802 ;	walk.c:162: for (j = 0; j < COLS; j++)
      002898 0A               [12] 1803 	inc	r2
      002899 BA 00 01         [24] 1804 	cjne	r2,#0x00,00175$
      00289C 0E               [12] 1805 	inc	r6
      00289D                       1806 00175$:
      00289D C3               [12] 1807 	clr	c
      00289E EA               [12] 1808 	mov	a,r2
      00289F 94 C0            [12] 1809 	subb	a,#0xc0
      0028A1 EE               [12] 1810 	mov	a,r6
      0028A2 64 80            [12] 1811 	xrl	a,#0x80
      0028A4 94 80            [12] 1812 	subb	a,#0x80
      0028A6 40 C0            [24] 1813 	jc	00114$
                                   1814 ;	walk.c:161: for (i = 0; i < ROWS; i++)
      0028A8 74 C0            [12] 1815 	mov	a,#0xc0
      0028AA 2B               [12] 1816 	add	a,r3
      0028AB FB               [12] 1817 	mov	r3,a
      0028AC E4               [12] 1818 	clr	a
      0028AD 3C               [12] 1819 	addc	a,r4
      0028AE FC               [12] 1820 	mov	r4,a
      0028AF E5 10            [12] 1821 	mov	a,_bp
      0028B1 24 0B            [12] 1822 	add	a,#0x0b
      0028B3 F8               [12] 1823 	mov	r0,a
      0028B4 06               [12] 1824 	inc	@r0
      0028B5 B6 00 02         [24] 1825 	cjne	@r0,#0x00,00177$
      0028B8 08               [12] 1826 	inc	r0
      0028B9 06               [12] 1827 	inc	@r0
      0028BA                       1828 00177$:
      0028BA E5 10            [12] 1829 	mov	a,_bp
      0028BC 24 0B            [12] 1830 	add	a,#0x0b
      0028BE F8               [12] 1831 	mov	r0,a
      0028BF C3               [12] 1832 	clr	c
      0028C0 E6               [12] 1833 	mov	a,@r0
      0028C1 94 30            [12] 1834 	subb	a,#0x30
      0028C3 08               [12] 1835 	inc	r0
      0028C4 E6               [12] 1836 	mov	a,@r0
      0028C5 64 80            [12] 1837 	xrl	a,#0x80
      0028C7 94 80            [12] 1838 	subb	a,#0x80
      0028C9 40 8B            [24] 1839 	jc	00126$
                                   1840 ;	walk.c:165: N++;
      0028CB E5 10            [12] 1841 	mov	a,_bp
      0028CD 24 09            [12] 1842 	add	a,#0x09
      0028CF F8               [12] 1843 	mov	r0,a
      0028D0 06               [12] 1844 	inc	@r0
      0028D1 B6 00 02         [24] 1845 	cjne	@r0,#0x00,00179$
      0028D4 08               [12] 1846 	inc	r0
      0028D5 06               [12] 1847 	inc	@r0
      0028D6                       1848 00179$:
      0028D6 02 27 20         [24] 1849 	ljmp	00107$
      0028D9                       1850 00109$:
                                   1851 ;	walk.c:168: EA = 0;
                                   1852 ;	assignBit
      0028D9 C2 AF            [12] 1853 	clr	_EA
                                   1854 ;	walk.c:170: puts("\033[2J\033[?25h");
      0028DB 90 40 A9         [24] 1855 	mov	dptr,#___str_6
      0028DE 75 F0 80         [24] 1856 	mov	b,#0x80
      0028E1 12 2C 9A         [24] 1857 	lcall	_puts
                                   1858 ;	walk.c:174: __endasm;
      0028E4 02 00 00         [24] 1859 	ljmp	0
                                   1860 ;	walk.c:176: return 0;
      0028E7 90 00 00         [24] 1861 	mov	dptr,#0x0000
                                   1862 ;	walk.c:177: }
      0028EA 85 10 81         [24] 1863 	mov	sp,_bp
      0028ED D0 10            [24] 1864 	pop	_bp
      0028EF 22               [24] 1865 	ret
                                   1866 ;------------------------------------------------------------
                                   1867 ;Allocation info for local variables in function 'qinit'
                                   1868 ;------------------------------------------------------------
                                   1869 ;	walk.c:179: static void qinit(void) {
                                   1870 ;	-----------------------------------------
                                   1871 ;	 function qinit
                                   1872 ;	-----------------------------------------
      0028F0                       1873 _qinit:
                                   1874 ;	walk.c:180: hp = tp = 0;
      0028F0 90 F5 02         [24] 1875 	mov	dptr,#_tp
      0028F3 E4               [12] 1876 	clr	a
      0028F4 F0               [24] 1877 	movx	@dptr,a
      0028F5 A3               [24] 1878 	inc	dptr
      0028F6 F0               [24] 1879 	movx	@dptr,a
      0028F7 90 F5 00         [24] 1880 	mov	dptr,#_hp
      0028FA F0               [24] 1881 	movx	@dptr,a
      0028FB A3               [24] 1882 	inc	dptr
      0028FC F0               [24] 1883 	movx	@dptr,a
                                   1884 ;	walk.c:181: return;
                                   1885 ;	walk.c:182: }
      0028FD 22               [24] 1886 	ret
                                   1887 ;------------------------------------------------------------
                                   1888 ;Allocation info for local variables in function 'qadd'
                                   1889 ;------------------------------------------------------------
                                   1890 ;t                         Allocated to registers r7 r5 r6 
                                   1891 ;sloc0                     Allocated to stack - _bp +1
                                   1892 ;sloc1                     Allocated to stack - _bp +3
                                   1893 ;sloc2                     Allocated to stack - _bp +5
                                   1894 ;sloc3                     Allocated to stack - _bp +10
                                   1895 ;------------------------------------------------------------
                                   1896 ;	walk.c:184: static int qadd(struct node *t) {
                                   1897 ;	-----------------------------------------
                                   1898 ;	 function qadd
                                   1899 ;	-----------------------------------------
      0028FE                       1900 _qadd:
      0028FE C0 10            [24] 1901 	push	_bp
      002900 E5 81            [12] 1902 	mov	a,sp
      002902 F5 10            [12] 1903 	mov	_bp,a
      002904 24 06            [12] 1904 	add	a,#0x06
      002906 F5 81            [12] 1905 	mov	sp,a
      002908 AF 82            [24] 1906 	mov	r7,dpl
      00290A AD 83            [24] 1907 	mov	r5,dph
      00290C AE F0            [24] 1908 	mov	r6,b
                                   1909 ;	walk.c:185: if (((hp + 1) % QMAX) == tp) return 0;
      00290E 90 F5 00         [24] 1910 	mov	dptr,#_hp
      002911 E0               [24] 1911 	movx	a,@dptr
      002912 FB               [12] 1912 	mov	r3,a
      002913 A3               [24] 1913 	inc	dptr
      002914 E0               [24] 1914 	movx	a,@dptr
      002915 FC               [12] 1915 	mov	r4,a
      002916 A8 10            [24] 1916 	mov	r0,_bp
      002918 08               [12] 1917 	inc	r0
      002919 74 01            [12] 1918 	mov	a,#0x01
      00291B 2B               [12] 1919 	add	a,r3
      00291C F6               [12] 1920 	mov	@r0,a
      00291D E4               [12] 1921 	clr	a
      00291E 3C               [12] 1922 	addc	a,r4
      00291F 08               [12] 1923 	inc	r0
      002920 F6               [12] 1924 	mov	@r0,a
      002921 C0 07            [24] 1925 	push	ar7
      002923 C0 06            [24] 1926 	push	ar6
      002925 C0 05            [24] 1927 	push	ar5
      002927 C0 04            [24] 1928 	push	ar4
      002929 C0 03            [24] 1929 	push	ar3
      00292B E4               [12] 1930 	clr	a
      00292C C0 E0            [24] 1931 	push	acc
      00292E 74 24            [12] 1932 	mov	a,#0x24
      002930 C0 E0            [24] 1933 	push	acc
      002932 A8 10            [24] 1934 	mov	r0,_bp
      002934 08               [12] 1935 	inc	r0
      002935 86 82            [24] 1936 	mov	dpl,@r0
      002937 08               [12] 1937 	inc	r0
      002938 86 83            [24] 1938 	mov	dph,@r0
      00293A 12 2D 75         [24] 1939 	lcall	__modsint
      00293D A8 10            [24] 1940 	mov	r0,_bp
      00293F 08               [12] 1941 	inc	r0
      002940 08               [12] 1942 	inc	r0
      002941 08               [12] 1943 	inc	r0
      002942 A6 82            [24] 1944 	mov	@r0,dpl
      002944 08               [12] 1945 	inc	r0
      002945 A6 83            [24] 1946 	mov	@r0,dph
      002947 15 81            [12] 1947 	dec	sp
      002949 15 81            [12] 1948 	dec	sp
      00294B D0 03            [24] 1949 	pop	ar3
      00294D D0 04            [24] 1950 	pop	ar4
      00294F D0 05            [24] 1951 	pop	ar5
      002951 D0 06            [24] 1952 	pop	ar6
      002953 D0 07            [24] 1953 	pop	ar7
      002955 90 F5 02         [24] 1954 	mov	dptr,#_tp
      002958 E5 10            [12] 1955 	mov	a,_bp
      00295A 24 05            [12] 1956 	add	a,#0x05
      00295C F8               [12] 1957 	mov	r0,a
      00295D E0               [24] 1958 	movx	a,@dptr
      00295E F6               [12] 1959 	mov	@r0,a
      00295F A3               [24] 1960 	inc	dptr
      002960 E0               [24] 1961 	movx	a,@dptr
      002961 08               [12] 1962 	inc	r0
      002962 F6               [12] 1963 	mov	@r0,a
      002963 E5 10            [12] 1964 	mov	a,_bp
      002965 24 03            [12] 1965 	add	a,#0x03
      002967 F8               [12] 1966 	mov	r0,a
      002968 E5 10            [12] 1967 	mov	a,_bp
      00296A 24 05            [12] 1968 	add	a,#0x05
      00296C F9               [12] 1969 	mov	r1,a
      00296D 86 F0            [24] 1970 	mov	b,@r0
      00296F E7               [12] 1971 	mov	a,@r1
      002970 B5 F0 0A         [24] 1972 	cjne	a,b,00109$
      002973 08               [12] 1973 	inc	r0
      002974 86 F0            [24] 1974 	mov	b,@r0
      002976 09               [12] 1975 	inc	r1
      002977 E7               [12] 1976 	mov	a,@r1
      002978 B5 F0 02         [24] 1977 	cjne	a,b,00109$
      00297B 80 02            [24] 1978 	sjmp	00110$
      00297D                       1979 00109$:
      00297D 80 05            [24] 1980 	sjmp	00102$
      00297F                       1981 00110$:
      00297F 90 00 00         [24] 1982 	mov	dptr,#0x0000
      002982 80 64            [24] 1983 	sjmp	00103$
      002984                       1984 00102$:
                                   1985 ;	walk.c:186: queue[hp] = *t;
      002984 8F 02            [24] 1986 	mov	ar2,r7
      002986 8E 07            [24] 1987 	mov	ar7,r6
      002988 EB               [12] 1988 	mov	a,r3
      002989 2B               [12] 1989 	add	a,r3
      00298A FB               [12] 1990 	mov	r3,a
      00298B EC               [12] 1991 	mov	a,r4
      00298C 33               [12] 1992 	rlc	a
      00298D FC               [12] 1993 	mov	r4,a
      00298E EB               [12] 1994 	mov	a,r3
      00298F 2B               [12] 1995 	add	a,r3
      002990 FB               [12] 1996 	mov	r3,a
      002991 EC               [12] 1997 	mov	a,r4
      002992 33               [12] 1998 	rlc	a
      002993 FC               [12] 1999 	mov	r4,a
      002994 EB               [12] 2000 	mov	a,r3
      002995 24 00            [12] 2001 	add	a,#_queue
      002997 FB               [12] 2002 	mov	r3,a
      002998 EC               [12] 2003 	mov	a,r4
      002999 34 65            [12] 2004 	addc	a,#(_queue >> 8)
      00299B FC               [12] 2005 	mov	r4,a
      00299C 7E 00            [12] 2006 	mov	r6,#0x00
      00299E 74 04            [12] 2007 	mov	a,#0x04
      0029A0 C0 E0            [24] 2008 	push	acc
      0029A2 E4               [12] 2009 	clr	a
      0029A3 C0 E0            [24] 2010 	push	acc
      0029A5 C0 02            [24] 2011 	push	ar2
      0029A7 C0 05            [24] 2012 	push	ar5
      0029A9 C0 07            [24] 2013 	push	ar7
      0029AB 8B 82            [24] 2014 	mov	dpl,r3
      0029AD 8C 83            [24] 2015 	mov	dph,r4
      0029AF 8E F0            [24] 2016 	mov	b,r6
      0029B1 12 2C 07         [24] 2017 	lcall	___memcpy
      0029B4 E5 81            [12] 2018 	mov	a,sp
      0029B6 24 FB            [12] 2019 	add	a,#0xfb
      0029B8 F5 81            [12] 2020 	mov	sp,a
                                   2021 ;	walk.c:187: hp = (hp + 1) % QMAX;
      0029BA 90 F5 00         [24] 2022 	mov	dptr,#_hp
      0029BD E0               [24] 2023 	movx	a,@dptr
      0029BE FD               [12] 2024 	mov	r5,a
      0029BF A3               [24] 2025 	inc	dptr
      0029C0 E0               [24] 2026 	movx	a,@dptr
      0029C1 FE               [12] 2027 	mov	r6,a
      0029C2 0D               [12] 2028 	inc	r5
      0029C3 BD 00 01         [24] 2029 	cjne	r5,#0x00,00111$
      0029C6 0E               [12] 2030 	inc	r6
      0029C7                       2031 00111$:
      0029C7 E4               [12] 2032 	clr	a
      0029C8 C0 E0            [24] 2033 	push	acc
      0029CA 74 24            [12] 2034 	mov	a,#0x24
      0029CC C0 E0            [24] 2035 	push	acc
      0029CE 8D 82            [24] 2036 	mov	dpl,r5
      0029D0 8E 83            [24] 2037 	mov	dph,r6
      0029D2 12 2D 75         [24] 2038 	lcall	__modsint
      0029D5 AD 82            [24] 2039 	mov	r5,dpl
      0029D7 AE 83            [24] 2040 	mov	r6,dph
      0029D9 15 81            [12] 2041 	dec	sp
      0029DB 15 81            [12] 2042 	dec	sp
      0029DD 90 F5 00         [24] 2043 	mov	dptr,#_hp
      0029E0 ED               [12] 2044 	mov	a,r5
      0029E1 F0               [24] 2045 	movx	@dptr,a
      0029E2 EE               [12] 2046 	mov	a,r6
      0029E3 A3               [24] 2047 	inc	dptr
      0029E4 F0               [24] 2048 	movx	@dptr,a
                                   2049 ;	walk.c:188: return 1;
      0029E5 90 00 01         [24] 2050 	mov	dptr,#0x0001
      0029E8                       2051 00103$:
                                   2052 ;	walk.c:189: }
      0029E8 85 10 81         [24] 2053 	mov	sp,_bp
      0029EB D0 10            [24] 2054 	pop	_bp
      0029ED 22               [24] 2055 	ret
                                   2056 ;------------------------------------------------------------
                                   2057 ;Allocation info for local variables in function 'qget'
                                   2058 ;------------------------------------------------------------
                                   2059 ;t                         Allocated to registers r5 r6 r7 
                                   2060 ;------------------------------------------------------------
                                   2061 ;	walk.c:191: static int qget(struct node *t) {
                                   2062 ;	-----------------------------------------
                                   2063 ;	 function qget
                                   2064 ;	-----------------------------------------
      0029EE                       2065 _qget:
      0029EE AD 82            [24] 2066 	mov	r5,dpl
      0029F0 AE 83            [24] 2067 	mov	r6,dph
      0029F2 AF F0            [24] 2068 	mov	r7,b
                                   2069 ;	walk.c:192: if (hp == tp) return 0;
      0029F4 90 F5 00         [24] 2070 	mov	dptr,#_hp
      0029F7 E0               [24] 2071 	movx	a,@dptr
      0029F8 FB               [12] 2072 	mov	r3,a
      0029F9 A3               [24] 2073 	inc	dptr
      0029FA E0               [24] 2074 	movx	a,@dptr
      0029FB FC               [12] 2075 	mov	r4,a
      0029FC 90 F5 02         [24] 2076 	mov	dptr,#_tp
      0029FF E0               [24] 2077 	movx	a,@dptr
      002A00 F9               [12] 2078 	mov	r1,a
      002A01 A3               [24] 2079 	inc	dptr
      002A02 E0               [24] 2080 	movx	a,@dptr
      002A03 FA               [12] 2081 	mov	r2,a
      002A04 EB               [12] 2082 	mov	a,r3
      002A05 B5 01 08         [24] 2083 	cjne	a,ar1,00102$
      002A08 EC               [12] 2084 	mov	a,r4
      002A09 B5 02 04         [24] 2085 	cjne	a,ar2,00102$
      002A0C 90 00 00         [24] 2086 	mov	dptr,#0x0000
      002A0F 22               [24] 2087 	ret
      002A10                       2088 00102$:
                                   2089 ;	walk.c:193: *t = queue[tp];
      002A10 E9               [12] 2090 	mov	a,r1
      002A11 29               [12] 2091 	add	a,r1
      002A12 F9               [12] 2092 	mov	r1,a
      002A13 EA               [12] 2093 	mov	a,r2
      002A14 33               [12] 2094 	rlc	a
      002A15 FA               [12] 2095 	mov	r2,a
      002A16 E9               [12] 2096 	mov	a,r1
      002A17 29               [12] 2097 	add	a,r1
      002A18 F9               [12] 2098 	mov	r1,a
      002A19 EA               [12] 2099 	mov	a,r2
      002A1A 33               [12] 2100 	rlc	a
      002A1B FA               [12] 2101 	mov	r2,a
      002A1C E9               [12] 2102 	mov	a,r1
      002A1D 24 00            [12] 2103 	add	a,#_queue
      002A1F F9               [12] 2104 	mov	r1,a
      002A20 EA               [12] 2105 	mov	a,r2
      002A21 34 65            [12] 2106 	addc	a,#(_queue >> 8)
      002A23 FA               [12] 2107 	mov	r2,a
      002A24 7C 00            [12] 2108 	mov	r4,#0x00
      002A26 74 04            [12] 2109 	mov	a,#0x04
      002A28 C0 E0            [24] 2110 	push	acc
      002A2A E4               [12] 2111 	clr	a
      002A2B C0 E0            [24] 2112 	push	acc
      002A2D C0 01            [24] 2113 	push	ar1
      002A2F C0 02            [24] 2114 	push	ar2
      002A31 C0 04            [24] 2115 	push	ar4
      002A33 8D 82            [24] 2116 	mov	dpl,r5
      002A35 8E 83            [24] 2117 	mov	dph,r6
      002A37 8F F0            [24] 2118 	mov	b,r7
      002A39 12 2C 07         [24] 2119 	lcall	___memcpy
      002A3C E5 81            [12] 2120 	mov	a,sp
      002A3E 24 FB            [12] 2121 	add	a,#0xfb
      002A40 F5 81            [12] 2122 	mov	sp,a
                                   2123 ;	walk.c:194: tp = (tp + 1) % QMAX;
      002A42 90 F5 02         [24] 2124 	mov	dptr,#_tp
      002A45 E0               [24] 2125 	movx	a,@dptr
      002A46 FE               [12] 2126 	mov	r6,a
      002A47 A3               [24] 2127 	inc	dptr
      002A48 E0               [24] 2128 	movx	a,@dptr
      002A49 FF               [12] 2129 	mov	r7,a
      002A4A 0E               [12] 2130 	inc	r6
      002A4B BE 00 01         [24] 2131 	cjne	r6,#0x00,00111$
      002A4E 0F               [12] 2132 	inc	r7
      002A4F                       2133 00111$:
      002A4F E4               [12] 2134 	clr	a
      002A50 C0 E0            [24] 2135 	push	acc
      002A52 74 24            [12] 2136 	mov	a,#0x24
      002A54 C0 E0            [24] 2137 	push	acc
      002A56 8E 82            [24] 2138 	mov	dpl,r6
      002A58 8F 83            [24] 2139 	mov	dph,r7
      002A5A 12 2D 75         [24] 2140 	lcall	__modsint
      002A5D AE 82            [24] 2141 	mov	r6,dpl
      002A5F AF 83            [24] 2142 	mov	r7,dph
      002A61 15 81            [12] 2143 	dec	sp
      002A63 15 81            [12] 2144 	dec	sp
      002A65 90 F5 02         [24] 2145 	mov	dptr,#_tp
      002A68 EE               [12] 2146 	mov	a,r6
      002A69 F0               [24] 2147 	movx	@dptr,a
      002A6A EF               [12] 2148 	mov	a,r7
      002A6B A3               [24] 2149 	inc	dptr
      002A6C F0               [24] 2150 	movx	@dptr,a
                                   2151 ;	walk.c:195: return 1;
      002A6D 90 00 01         [24] 2152 	mov	dptr,#0x0001
                                   2153 ;	walk.c:196: }
      002A70 22               [24] 2154 	ret
                                   2155 	.area CSEG    (CODE)
                                   2156 	.area CONST   (CODE)
                                   2157 	.area CONST   (CODE)
      004053                       2158 ___str_0:
      004053 4D 65 6D 6F 72 79 20  2159 	.ascii "Memory error"
             65 72 72 6F 72
      00405F 00                    2160 	.db 0x00
                                   2161 	.area CSEG    (CODE)
                                   2162 	.area CONST   (CODE)
      004060                       2163 ___str_1:
      004060 1B                    2164 	.db 0x1b
      004061 5B 25 64 3B 25 64 48  2165 	.ascii "[%d;%dH."
             2E
      004069 00                    2166 	.db 0x00
                                   2167 	.area CSEG    (CODE)
                                   2168 	.area CONST   (CODE)
      00406A                       2169 ___str_2:
      00406A 1B                    2170 	.db 0x1b
      00406B 5B 32 3B 31 48 25 20  2171 	.ascii "[2;1H% 8d% 8d% 8d% 8d"
             38 64 25 20 38 64 25
             20 38 64 25 20 38 64
      004080 00                    2172 	.db 0x00
                                   2173 	.area CSEG    (CODE)
                                   2174 	.area CONST   (CODE)
      004081                       2175 ___str_3:
      004081 1B                    2176 	.db 0x1b
      004082 5B 25 64 3B 25 64 48  2177 	.ascii "[%d;%dHo"
             6F
      00408A 00                    2178 	.db 0x00
                                   2179 	.area CSEG    (CODE)
                                   2180 	.area CONST   (CODE)
      00408B                       2181 ___str_4:
      00408B 1B                    2182 	.db 0x1b
      00408C 5B 32 4A              2183 	.ascii "[2J"
      00408F 1B                    2184 	.db 0x1b
      004090 5B 3F 32 35 6C        2185 	.ascii "[?25l"
      004095 00                    2186 	.db 0x00
                                   2187 	.area CSEG    (CODE)
                                   2188 	.area CONST   (CODE)
      004096                       2189 ___str_5:
      004096 1B                    2190 	.db 0x1b
      004097 5B 31 3B 31 48 25 20  2191 	.ascii "[1;1H% 8u% 8d% 8d"
             38 75 25 20 38 64 25
             20 38 64
      0040A8 00                    2192 	.db 0x00
                                   2193 	.area CSEG    (CODE)
                                   2194 	.area CONST   (CODE)
      0040A9                       2195 ___str_6:
      0040A9 1B                    2196 	.db 0x1b
      0040AA 5B 32 4A              2197 	.ascii "[2J"
      0040AD 1B                    2198 	.db 0x1b
      0040AE 5B 3F 32 35 68        2199 	.ascii "[?25h"
      0040B3 00                    2200 	.db 0x00
                                   2201 	.area CSEG    (CODE)
                                   2202 	.area XINIT   (CODE)
                                   2203 	.area CABS    (ABS,CODE)
