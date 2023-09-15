                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module disp
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _timer0_intr
                                     13 	.globl _init_disp
                                     14 	.globl _init_timer0
                                     15 	.globl _init_intr
                                     16 	.globl _clear_gpo
                                     17 	.globl _init_gpo
                                     18 	.globl _printf
                                     19 	.globl _CY
                                     20 	.globl _AC
                                     21 	.globl _F0
                                     22 	.globl _RS1
                                     23 	.globl _RS0
                                     24 	.globl _OV
                                     25 	.globl _FL
                                     26 	.globl _P
                                     27 	.globl _TF2
                                     28 	.globl _EXF2
                                     29 	.globl _RCLK
                                     30 	.globl _TCLK
                                     31 	.globl _EXEN2
                                     32 	.globl _TR2
                                     33 	.globl _C_T2
                                     34 	.globl _CP_RL2
                                     35 	.globl _T2CON_7
                                     36 	.globl _T2CON_6
                                     37 	.globl _T2CON_5
                                     38 	.globl _T2CON_4
                                     39 	.globl _T2CON_3
                                     40 	.globl _T2CON_2
                                     41 	.globl _T2CON_1
                                     42 	.globl _T2CON_0
                                     43 	.globl _PT2
                                     44 	.globl _PS
                                     45 	.globl _PT1
                                     46 	.globl _PX1
                                     47 	.globl _PT0
                                     48 	.globl _PX0
                                     49 	.globl _RD
                                     50 	.globl _WR
                                     51 	.globl _T1
                                     52 	.globl _T0
                                     53 	.globl _INT1
                                     54 	.globl _INT0
                                     55 	.globl _TXD
                                     56 	.globl _RXD
                                     57 	.globl _P3_7
                                     58 	.globl _P3_6
                                     59 	.globl _P3_5
                                     60 	.globl _P3_4
                                     61 	.globl _P3_3
                                     62 	.globl _P3_2
                                     63 	.globl _P3_1
                                     64 	.globl _P3_0
                                     65 	.globl _EA
                                     66 	.globl _ET2
                                     67 	.globl _ES
                                     68 	.globl _ET1
                                     69 	.globl _EX1
                                     70 	.globl _ET0
                                     71 	.globl _EX0
                                     72 	.globl _P2_7
                                     73 	.globl _P2_6
                                     74 	.globl _P2_5
                                     75 	.globl _P2_4
                                     76 	.globl _P2_3
                                     77 	.globl _P2_2
                                     78 	.globl _P2_1
                                     79 	.globl _P2_0
                                     80 	.globl _SM0
                                     81 	.globl _SM1
                                     82 	.globl _SM2
                                     83 	.globl _REN
                                     84 	.globl _TB8
                                     85 	.globl _RB8
                                     86 	.globl _TI
                                     87 	.globl _RI
                                     88 	.globl _T2EX
                                     89 	.globl _T2
                                     90 	.globl _P1_7
                                     91 	.globl _P1_6
                                     92 	.globl _P1_5
                                     93 	.globl _P1_4
                                     94 	.globl _P1_3
                                     95 	.globl _P1_2
                                     96 	.globl _P1_1
                                     97 	.globl _P1_0
                                     98 	.globl _TF1
                                     99 	.globl _TR1
                                    100 	.globl _TF0
                                    101 	.globl _TR0
                                    102 	.globl _IE1
                                    103 	.globl _IT1
                                    104 	.globl _IE0
                                    105 	.globl _IT0
                                    106 	.globl _P0_7
                                    107 	.globl _P0_6
                                    108 	.globl _P0_5
                                    109 	.globl _P0_4
                                    110 	.globl _P0_3
                                    111 	.globl _P0_2
                                    112 	.globl _P0_1
                                    113 	.globl _P0_0
                                    114 	.globl _B
                                    115 	.globl _A
                                    116 	.globl _ACC
                                    117 	.globl _PSW
                                    118 	.globl _TH2
                                    119 	.globl _TL2
                                    120 	.globl _RCAP2H
                                    121 	.globl _RCAP2L
                                    122 	.globl _T2MOD
                                    123 	.globl _T2CON
                                    124 	.globl _IP
                                    125 	.globl _P3
                                    126 	.globl _IE
                                    127 	.globl _P2
                                    128 	.globl _SBUF
                                    129 	.globl _SCON
                                    130 	.globl _P1
                                    131 	.globl _TH1
                                    132 	.globl _TH0
                                    133 	.globl _TL1
                                    134 	.globl _TL0
                                    135 	.globl _TMOD
                                    136 	.globl _TCON
                                    137 	.globl _PCON
                                    138 	.globl _DPH
                                    139 	.globl _DPL
                                    140 	.globl _SP
                                    141 	.globl _P0
                                    142 	.globl _column
                                    143 	.globl _ddata
                                    144 	.globl _dcol
                                    145 	.globl _gpo
                                    146 	.globl _putchar
                                    147 	.globl _getchar
                                    148 ;--------------------------------------------------------
                                    149 ; special function registers
                                    150 ;--------------------------------------------------------
                                    151 	.area RSEG    (ABS,DATA)
      000000                        152 	.org 0x0000
                           000080   153 _P0	=	0x0080
                           000081   154 _SP	=	0x0081
                           000082   155 _DPL	=	0x0082
                           000083   156 _DPH	=	0x0083
                           000087   157 _PCON	=	0x0087
                           000088   158 _TCON	=	0x0088
                           000089   159 _TMOD	=	0x0089
                           00008A   160 _TL0	=	0x008a
                           00008B   161 _TL1	=	0x008b
                           00008C   162 _TH0	=	0x008c
                           00008D   163 _TH1	=	0x008d
                           000090   164 _P1	=	0x0090
                           000098   165 _SCON	=	0x0098
                           000099   166 _SBUF	=	0x0099
                           0000A0   167 _P2	=	0x00a0
                           0000A8   168 _IE	=	0x00a8
                           0000B0   169 _P3	=	0x00b0
                           0000B8   170 _IP	=	0x00b8
                           0000C8   171 _T2CON	=	0x00c8
                           0000C9   172 _T2MOD	=	0x00c9
                           0000CA   173 _RCAP2L	=	0x00ca
                           0000CB   174 _RCAP2H	=	0x00cb
                           0000CC   175 _TL2	=	0x00cc
                           0000CD   176 _TH2	=	0x00cd
                           0000D0   177 _PSW	=	0x00d0
                           0000E0   178 _ACC	=	0x00e0
                           0000E0   179 _A	=	0x00e0
                           0000F0   180 _B	=	0x00f0
                                    181 ;--------------------------------------------------------
                                    182 ; special function bits
                                    183 ;--------------------------------------------------------
                                    184 	.area RSEG    (ABS,DATA)
      000000                        185 	.org 0x0000
                           000080   186 _P0_0	=	0x0080
                           000081   187 _P0_1	=	0x0081
                           000082   188 _P0_2	=	0x0082
                           000083   189 _P0_3	=	0x0083
                           000084   190 _P0_4	=	0x0084
                           000085   191 _P0_5	=	0x0085
                           000086   192 _P0_6	=	0x0086
                           000087   193 _P0_7	=	0x0087
                           000088   194 _IT0	=	0x0088
                           000089   195 _IE0	=	0x0089
                           00008A   196 _IT1	=	0x008a
                           00008B   197 _IE1	=	0x008b
                           00008C   198 _TR0	=	0x008c
                           00008D   199 _TF0	=	0x008d
                           00008E   200 _TR1	=	0x008e
                           00008F   201 _TF1	=	0x008f
                           000090   202 _P1_0	=	0x0090
                           000091   203 _P1_1	=	0x0091
                           000092   204 _P1_2	=	0x0092
                           000093   205 _P1_3	=	0x0093
                           000094   206 _P1_4	=	0x0094
                           000095   207 _P1_5	=	0x0095
                           000096   208 _P1_6	=	0x0096
                           000097   209 _P1_7	=	0x0097
                           000090   210 _T2	=	0x0090
                           000091   211 _T2EX	=	0x0091
                           000098   212 _RI	=	0x0098
                           000099   213 _TI	=	0x0099
                           00009A   214 _RB8	=	0x009a
                           00009B   215 _TB8	=	0x009b
                           00009C   216 _REN	=	0x009c
                           00009D   217 _SM2	=	0x009d
                           00009E   218 _SM1	=	0x009e
                           00009F   219 _SM0	=	0x009f
                           0000A0   220 _P2_0	=	0x00a0
                           0000A1   221 _P2_1	=	0x00a1
                           0000A2   222 _P2_2	=	0x00a2
                           0000A3   223 _P2_3	=	0x00a3
                           0000A4   224 _P2_4	=	0x00a4
                           0000A5   225 _P2_5	=	0x00a5
                           0000A6   226 _P2_6	=	0x00a6
                           0000A7   227 _P2_7	=	0x00a7
                           0000A8   228 _EX0	=	0x00a8
                           0000A9   229 _ET0	=	0x00a9
                           0000AA   230 _EX1	=	0x00aa
                           0000AB   231 _ET1	=	0x00ab
                           0000AC   232 _ES	=	0x00ac
                           0000AD   233 _ET2	=	0x00ad
                           0000AF   234 _EA	=	0x00af
                           0000B0   235 _P3_0	=	0x00b0
                           0000B1   236 _P3_1	=	0x00b1
                           0000B2   237 _P3_2	=	0x00b2
                           0000B3   238 _P3_3	=	0x00b3
                           0000B4   239 _P3_4	=	0x00b4
                           0000B5   240 _P3_5	=	0x00b5
                           0000B6   241 _P3_6	=	0x00b6
                           0000B7   242 _P3_7	=	0x00b7
                           0000B0   243 _RXD	=	0x00b0
                           0000B1   244 _TXD	=	0x00b1
                           0000B2   245 _INT0	=	0x00b2
                           0000B3   246 _INT1	=	0x00b3
                           0000B4   247 _T0	=	0x00b4
                           0000B5   248 _T1	=	0x00b5
                           0000B6   249 _WR	=	0x00b6
                           0000B7   250 _RD	=	0x00b7
                           0000B8   251 _PX0	=	0x00b8
                           0000B9   252 _PT0	=	0x00b9
                           0000BA   253 _PX1	=	0x00ba
                           0000BB   254 _PT1	=	0x00bb
                           0000BC   255 _PS	=	0x00bc
                           0000BD   256 _PT2	=	0x00bd
                           0000C8   257 _T2CON_0	=	0x00c8
                           0000C9   258 _T2CON_1	=	0x00c9
                           0000CA   259 _T2CON_2	=	0x00ca
                           0000CB   260 _T2CON_3	=	0x00cb
                           0000CC   261 _T2CON_4	=	0x00cc
                           0000CD   262 _T2CON_5	=	0x00cd
                           0000CE   263 _T2CON_6	=	0x00ce
                           0000CF   264 _T2CON_7	=	0x00cf
                           0000C8   265 _CP_RL2	=	0x00c8
                           0000C9   266 _C_T2	=	0x00c9
                           0000CA   267 _TR2	=	0x00ca
                           0000CB   268 _EXEN2	=	0x00cb
                           0000CC   269 _TCLK	=	0x00cc
                           0000CD   270 _RCLK	=	0x00cd
                           0000CE   271 _EXF2	=	0x00ce
                           0000CF   272 _TF2	=	0x00cf
                           0000D0   273 _P	=	0x00d0
                           0000D1   274 _FL	=	0x00d1
                           0000D2   275 _OV	=	0x00d2
                           0000D3   276 _RS0	=	0x00d3
                           0000D4   277 _RS1	=	0x00d4
                           0000D5   278 _F0	=	0x00d5
                           0000D6   279 _AC	=	0x00d6
                           0000D7   280 _CY	=	0x00d7
                                    281 ;--------------------------------------------------------
                                    282 ; overlayable register banks
                                    283 ;--------------------------------------------------------
                                    284 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        285 	.ds 8
                                    286 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        287 	.ds 8
                                    288 ;--------------------------------------------------------
                                    289 ; internal ram data
                                    290 ;--------------------------------------------------------
                                    291 	.area DSEG    (DATA)
                                    292 ;--------------------------------------------------------
                                    293 ; overlayable items in internal ram 
                                    294 ;--------------------------------------------------------
                                    295 ;--------------------------------------------------------
                                    296 ; Stack segment in internal ram 
                                    297 ;--------------------------------------------------------
                                    298 	.area	SSEG
      000033                        299 __start__stack:
      000033                        300 	.ds	1
                                    301 
                                    302 ;--------------------------------------------------------
                                    303 ; indirectly addressable internal ram data
                                    304 ;--------------------------------------------------------
                                    305 	.area ISEG    (DATA)
      000021                        306 _gpo::
      000021                        307 	.ds 1
      000022                        308 _dcol::
      000022                        309 	.ds 8
      00002A                        310 _ddata::
      00002A                        311 	.ds 8
      000032                        312 _column::
      000032                        313 	.ds 1
                                    314 ;--------------------------------------------------------
                                    315 ; absolute internal ram data
                                    316 ;--------------------------------------------------------
                                    317 	.area IABS    (ABS,DATA)
                                    318 	.area IABS    (ABS,DATA)
                                    319 ;--------------------------------------------------------
                                    320 ; bit data
                                    321 ;--------------------------------------------------------
                                    322 	.area BSEG    (BIT)
                                    323 ;--------------------------------------------------------
                                    324 ; paged external ram data
                                    325 ;--------------------------------------------------------
                                    326 	.area PSEG    (PAG,XDATA)
                                    327 ;--------------------------------------------------------
                                    328 ; external ram data
                                    329 ;--------------------------------------------------------
                                    330 	.area XSEG    (XDATA)
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
      002000 02 20 11         [24]  354 	ljmp	__sdcc_gsinit_startup
      002003 32               [24]  355 	reti
      002004                        356 	.ds	7
      00200B 02 21 51         [24]  357 	ljmp	_timer0_intr
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
                                    371 ;	disp.c:38: __idata const uint8_t dcol[8] = {
      00206A 78 22            [12]  372 	mov	r0,#_dcol
      00206C 76 01            [12]  373 	mov	@r0,#0x01
      00206E 78 23            [12]  374 	mov	r0,#(_dcol + 0x0001)
      002070 76 02            [12]  375 	mov	@r0,#0x02
      002072 78 24            [12]  376 	mov	r0,#(_dcol + 0x0002)
      002074 76 04            [12]  377 	mov	@r0,#0x04
      002076 78 25            [12]  378 	mov	r0,#(_dcol + 0x0003)
      002078 76 08            [12]  379 	mov	@r0,#0x08
      00207A 78 26            [12]  380 	mov	r0,#(_dcol + 0x0004)
      00207C 76 10            [12]  381 	mov	@r0,#0x10
      00207E 78 27            [12]  382 	mov	r0,#(_dcol + 0x0005)
      002080 76 20            [12]  383 	mov	@r0,#0x20
      002082 78 28            [12]  384 	mov	r0,#(_dcol + 0x0006)
      002084 76 40            [12]  385 	mov	@r0,#0x40
      002086 78 29            [12]  386 	mov	r0,#(_dcol + 0x0007)
      002088 76 80            [12]  387 	mov	@r0,#0x80
                                    388 	.area GSFINAL (CODE)
      00208A 02 20 0E         [24]  389 	ljmp	__sdcc_program_startup
                                    390 ;--------------------------------------------------------
                                    391 ; Home
                                    392 ;--------------------------------------------------------
                                    393 	.area HOME    (CODE)
                                    394 	.area HOME    (CODE)
      00200E                        395 __sdcc_program_startup:
      00200E 02 21 8D         [24]  396 	ljmp	_main
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
                                    407 ;	disp.c:8: int putchar(int c) __naked {
                                    408 ;	-----------------------------------------
                                    409 ;	 function putchar
                                    410 ;	-----------------------------------------
      00208D                        411 _putchar:
                                    412 ;	naked function: no prologue.
                                    413 ;	disp.c:13: __endasm;
      00208D E5 82            [12]  414 	mov	a, dpl
      00208F 02 00 30         [24]  415 	ljmp	0x0030
                                    416 ;	disp.c:14: }
                                    417 ;	naked function: no epilogue.
                                    418 ;------------------------------------------------------------
                                    419 ;Allocation info for local variables in function 'getchar'
                                    420 ;------------------------------------------------------------
                                    421 ;	disp.c:16: int getchar(void) __naked {
                                    422 ;	-----------------------------------------
                                    423 ;	 function getchar
                                    424 ;	-----------------------------------------
      002092                        425 _getchar:
                                    426 ;	naked function: no prologue.
                                    427 ;	disp.c:22: __endasm;
      002092 12 00 32         [24]  428 	lcall	0x0032
      002095 F5 82            [12]  429 	mov	dpl, a
      002097 75 83 00         [24]  430 	mov	dph, #0
      00209A 22               [24]  431 	ret
                                    432 ;	disp.c:23: }
                                    433 ;	naked function: no epilogue.
                                    434 ;------------------------------------------------------------
                                    435 ;Allocation info for local variables in function 'init_gpo'
                                    436 ;------------------------------------------------------------
                                    437 ;	disp.c:54: void init_gpo(void) {
                                    438 ;	-----------------------------------------
                                    439 ;	 function init_gpo
                                    440 ;	-----------------------------------------
      00209B                        441 _init_gpo:
                           000007   442 	ar7 = 0x07
                           000006   443 	ar6 = 0x06
                           000005   444 	ar5 = 0x05
                           000004   445 	ar4 = 0x04
                           000003   446 	ar3 = 0x03
                           000002   447 	ar2 = 0x02
                           000001   448 	ar1 = 0x01
                           000000   449 	ar0 = 0x00
                                    450 ;	disp.c:55: P1_7 = 0;
                                    451 ;	assignBit
      00209B C2 97            [12]  452 	clr	_P1_7
                                    453 ;	disp.c:56: P2 = GPO_BASE_H;
      00209D 75 A0 F0         [24]  454 	mov	_P2,#0xf0
                                    455 ;	disp.c:57: gpo = (ppd_uint8_t)GPO_BASE_L;
      0020A0 78 21            [12]  456 	mov	r0,#_gpo
      0020A2 76 00            [12]  457 	mov	@r0,#0x00
                                    458 ;	disp.c:58: CLEAR_GPO;
      0020A4 78 21            [12]  459 	mov	r0,#_gpo
      0020A6 74 06            [12]  460 	mov	a,#0x06
      0020A8 26               [12]  461 	add	a,@r0
      0020A9 F8               [12]  462 	mov	r0,a
      0020AA 74 FF            [12]  463 	mov	a,#0xff
      0020AC F2               [24]  464 	movx	@r0,a
      0020AD 78 21            [12]  465 	mov	r0,#_gpo
      0020AF E6               [12]  466 	mov	a,@r0
      0020B0 F8               [12]  467 	mov	r0,a
      0020B1 E4               [12]  468 	clr	a
      0020B2 F2               [24]  469 	movx	@r0,a
      0020B3 78 21            [12]  470 	mov	r0,#_gpo
      0020B5 E6               [12]  471 	mov	a,@r0
      0020B6 04               [12]  472 	inc	a
      0020B7 F8               [12]  473 	mov	r0,a
      0020B8 E4               [12]  474 	clr	a
      0020B9 F2               [24]  475 	movx	@r0,a
      0020BA 78 21            [12]  476 	mov	r0,#_gpo
      0020BC 74 02            [12]  477 	mov	a,#0x02
      0020BE 26               [12]  478 	add	a,@r0
      0020BF F8               [12]  479 	mov	r0,a
      0020C0 E4               [12]  480 	clr	a
      0020C1 F2               [24]  481 	movx	@r0,a
      0020C2 78 21            [12]  482 	mov	r0,#_gpo
      0020C4 74 03            [12]  483 	mov	a,#0x03
      0020C6 26               [12]  484 	add	a,@r0
      0020C7 F8               [12]  485 	mov	r0,a
      0020C8 E4               [12]  486 	clr	a
      0020C9 F2               [24]  487 	movx	@r0,a
      0020CA 78 21            [12]  488 	mov	r0,#_gpo
      0020CC 74 04            [12]  489 	mov	a,#0x04
      0020CE 26               [12]  490 	add	a,@r0
      0020CF F8               [12]  491 	mov	r0,a
      0020D0 E4               [12]  492 	clr	a
      0020D1 F2               [24]  493 	movx	@r0,a
      0020D2 78 21            [12]  494 	mov	r0,#_gpo
      0020D4 74 05            [12]  495 	mov	a,#0x05
      0020D6 26               [12]  496 	add	a,@r0
      0020D7 F8               [12]  497 	mov	r0,a
      0020D8 E4               [12]  498 	clr	a
      0020D9 F2               [24]  499 	movx	@r0,a
                                    500 ;	disp.c:60: return;
                                    501 ;	disp.c:61: }
      0020DA 22               [24]  502 	ret
                                    503 ;------------------------------------------------------------
                                    504 ;Allocation info for local variables in function 'clear_gpo'
                                    505 ;------------------------------------------------------------
                                    506 ;	disp.c:63: void clear_gpo(void) {
                                    507 ;	-----------------------------------------
                                    508 ;	 function clear_gpo
                                    509 ;	-----------------------------------------
      0020DB                        510 _clear_gpo:
                                    511 ;	disp.c:64: CLEAR_GPO;
      0020DB 78 21            [12]  512 	mov	r0,#_gpo
      0020DD 74 06            [12]  513 	mov	a,#0x06
      0020DF 26               [12]  514 	add	a,@r0
      0020E0 F8               [12]  515 	mov	r0,a
      0020E1 74 FF            [12]  516 	mov	a,#0xff
      0020E3 F2               [24]  517 	movx	@r0,a
      0020E4 78 21            [12]  518 	mov	r0,#_gpo
      0020E6 E6               [12]  519 	mov	a,@r0
      0020E7 F8               [12]  520 	mov	r0,a
      0020E8 E4               [12]  521 	clr	a
      0020E9 F2               [24]  522 	movx	@r0,a
      0020EA 78 21            [12]  523 	mov	r0,#_gpo
      0020EC E6               [12]  524 	mov	a,@r0
      0020ED 04               [12]  525 	inc	a
      0020EE F8               [12]  526 	mov	r0,a
      0020EF E4               [12]  527 	clr	a
      0020F0 F2               [24]  528 	movx	@r0,a
      0020F1 78 21            [12]  529 	mov	r0,#_gpo
      0020F3 74 02            [12]  530 	mov	a,#0x02
      0020F5 26               [12]  531 	add	a,@r0
      0020F6 F8               [12]  532 	mov	r0,a
      0020F7 E4               [12]  533 	clr	a
      0020F8 F2               [24]  534 	movx	@r0,a
      0020F9 78 21            [12]  535 	mov	r0,#_gpo
      0020FB 74 03            [12]  536 	mov	a,#0x03
      0020FD 26               [12]  537 	add	a,@r0
      0020FE F8               [12]  538 	mov	r0,a
      0020FF E4               [12]  539 	clr	a
      002100 F2               [24]  540 	movx	@r0,a
      002101 78 21            [12]  541 	mov	r0,#_gpo
      002103 74 04            [12]  542 	mov	a,#0x04
      002105 26               [12]  543 	add	a,@r0
      002106 F8               [12]  544 	mov	r0,a
      002107 E4               [12]  545 	clr	a
      002108 F2               [24]  546 	movx	@r0,a
      002109 78 21            [12]  547 	mov	r0,#_gpo
      00210B 74 05            [12]  548 	mov	a,#0x05
      00210D 26               [12]  549 	add	a,@r0
      00210E F8               [12]  550 	mov	r0,a
      00210F E4               [12]  551 	clr	a
      002110 F2               [24]  552 	movx	@r0,a
                                    553 ;	disp.c:66: return;
                                    554 ;	disp.c:67: }
      002111 22               [24]  555 	ret
                                    556 ;------------------------------------------------------------
                                    557 ;Allocation info for local variables in function 'init_intr'
                                    558 ;------------------------------------------------------------
                                    559 ;	disp.c:69: void init_intr(void) {
                                    560 ;	-----------------------------------------
                                    561 ;	 function init_intr
                                    562 ;	-----------------------------------------
      002112                        563 _init_intr:
                                    564 ;	disp.c:70: DIS_TR0;
                                    565 ;	assignBit
      002112 C2 8C            [12]  566 	clr	_TR0
                                    567 ;	disp.c:71: ET0 = 1;
                                    568 ;	assignBit
      002114 D2 A9            [12]  569 	setb	_ET0
                                    570 ;	disp.c:72: EA  = 1;
                                    571 ;	assignBit
      002116 D2 AF            [12]  572 	setb	_EA
                                    573 ;	disp.c:74: return;
                                    574 ;	disp.c:75: }
      002118 22               [24]  575 	ret
                                    576 ;------------------------------------------------------------
                                    577 ;Allocation info for local variables in function 'init_timer0'
                                    578 ;------------------------------------------------------------
                                    579 ;	disp.c:77: void init_timer0(void) {
                                    580 ;	-----------------------------------------
                                    581 ;	 function init_timer0
                                    582 ;	-----------------------------------------
      002119                        583 _init_timer0:
                                    584 ;	disp.c:78: DIS_TR0;
                                    585 ;	assignBit
      002119 C2 8C            [12]  586 	clr	_TR0
                                    587 ;	disp.c:79: TMOD = 0x01;
      00211B 75 89 01         [24]  588 	mov	_TMOD,#0x01
                                    589 ;	disp.c:80: TH0 = 0xf8;
      00211E 75 8C F8         [24]  590 	mov	_TH0,#0xf8
                                    591 ;	disp.c:81: TL0 = 0x00;
      002121 75 8A 00         [24]  592 	mov	_TL0,#0x00
                                    593 ;	disp.c:83: return;
                                    594 ;	disp.c:84: }
      002124 22               [24]  595 	ret
                                    596 ;------------------------------------------------------------
                                    597 ;Allocation info for local variables in function 'init_disp'
                                    598 ;------------------------------------------------------------
                                    599 ;j                         Allocated to registers r7 
                                    600 ;------------------------------------------------------------
                                    601 ;	disp.c:86: void init_disp(void) {
                                    602 ;	-----------------------------------------
                                    603 ;	 function init_disp
                                    604 ;	-----------------------------------------
      002125                        605 _init_disp:
                                    606 ;	disp.c:89: gpo[4] = 0u;
      002125 78 21            [12]  607 	mov	r0,#_gpo
      002127 74 04            [12]  608 	mov	a,#0x04
      002129 26               [12]  609 	add	a,@r0
      00212A F8               [12]  610 	mov	r0,a
      00212B E4               [12]  611 	clr	a
      00212C F2               [24]  612 	movx	@r0,a
                                    613 ;	disp.c:90: gpo[5] = 0u;
      00212D 78 21            [12]  614 	mov	r0,#_gpo
      00212F 74 05            [12]  615 	mov	a,#0x05
      002131 26               [12]  616 	add	a,@r0
      002132 F8               [12]  617 	mov	r0,a
      002133 E4               [12]  618 	clr	a
      002134 F2               [24]  619 	movx	@r0,a
                                    620 ;	disp.c:91: gpo[GPO_OE] = 0xcfu;
      002135 78 21            [12]  621 	mov	r0,#_gpo
      002137 74 06            [12]  622 	mov	a,#0x06
      002139 26               [12]  623 	add	a,@r0
      00213A F8               [12]  624 	mov	r0,a
      00213B 74 CF            [12]  625 	mov	a,#0xcf
      00213D F2               [24]  626 	movx	@r0,a
                                    627 ;	disp.c:93: column = 0u;
      00213E 78 32            [12]  628 	mov	r0,#_column
      002140 76 00            [12]  629 	mov	@r0,#0x00
                                    630 ;	disp.c:95: for (j = 0u; j < 8u; j++)
      002142 7F 00            [12]  631 	mov	r7,#0x00
      002144                        632 00102$:
                                    633 ;	disp.c:96: ddata[j] = 0u;
      002144 EF               [12]  634 	mov	a,r7
      002145 24 2A            [12]  635 	add	a,#_ddata
      002147 F8               [12]  636 	mov	r0,a
      002148 76 00            [12]  637 	mov	@r0,#0x00
                                    638 ;	disp.c:95: for (j = 0u; j < 8u; j++)
      00214A 0F               [12]  639 	inc	r7
      00214B BF 08 00         [24]  640 	cjne	r7,#0x08,00115$
      00214E                        641 00115$:
      00214E 40 F4            [24]  642 	jc	00102$
                                    643 ;	disp.c:98: return;
                                    644 ;	disp.c:99: }
      002150 22               [24]  645 	ret
                                    646 ;------------------------------------------------------------
                                    647 ;Allocation info for local variables in function 'timer0_intr'
                                    648 ;------------------------------------------------------------
                                    649 ;t                         Allocated to registers r7 
                                    650 ;------------------------------------------------------------
                                    651 ;	disp.c:101: void timer0_intr(void) __interrupt TF0_VECTOR __using 1 {
                                    652 ;	-----------------------------------------
                                    653 ;	 function timer0_intr
                                    654 ;	-----------------------------------------
      002151                        655 _timer0_intr:
                           00000F   656 	ar7 = 0x0f
                           00000E   657 	ar6 = 0x0e
                           00000D   658 	ar5 = 0x0d
                           00000C   659 	ar4 = 0x0c
                           00000B   660 	ar3 = 0x0b
                           00000A   661 	ar2 = 0x0a
                           000009   662 	ar1 = 0x09
                           000008   663 	ar0 = 0x08
      002151 C0 E0            [24]  664 	push	acc
      002153 C0 D0            [24]  665 	push	psw
      002155 75 D0 08         [24]  666 	mov	psw,#0x08
                                    667 ;	disp.c:104: DIS_TR0;
                                    668 ;	assignBit
      002158 C2 8C            [12]  669 	clr	_TR0
                                    670 ;	disp.c:106: t = column & 7u;
      00215A 78 32            [12]  671 	mov	r0,#_column
      00215C 86 0F            [24]  672 	mov	ar7,@r0
      00215E 53 0F 07         [24]  673 	anl	ar7,#0x07
                                    674 ;	disp.c:107: gpo[4] = dcol[t];
      002161 78 21            [12]  675 	mov	r0,#_gpo
      002163 74 04            [12]  676 	mov	a,#0x04
      002165 26               [12]  677 	add	a,@r0
      002166 F9               [12]  678 	mov	r1,a
      002167 EF               [12]  679 	mov	a,r7
      002168 24 22            [12]  680 	add	a,#_dcol
      00216A F8               [12]  681 	mov	r0,a
      00216B E6               [12]  682 	mov	a,@r0
      00216C F3               [24]  683 	movx	@r1,a
                                    684 ;	disp.c:108: gpo[5] = ddata[t];
      00216D 78 21            [12]  685 	mov	r0,#_gpo
      00216F 74 05            [12]  686 	mov	a,#0x05
      002171 26               [12]  687 	add	a,@r0
      002172 F9               [12]  688 	mov	r1,a
      002173 EF               [12]  689 	mov	a,r7
      002174 24 2A            [12]  690 	add	a,#_ddata
      002176 F8               [12]  691 	mov	r0,a
      002177 E6               [12]  692 	mov	a,@r0
      002178 F3               [24]  693 	movx	@r1,a
                                    694 ;	disp.c:109: column++;
      002179 78 32            [12]  695 	mov	r0,#_column
      00217B E6               [12]  696 	mov	a,@r0
      00217C 78 32            [12]  697 	mov	r0,#_column
      00217E 04               [12]  698 	inc	a
      00217F F6               [12]  699 	mov	@r0,a
                                    700 ;	disp.c:111: TH0 = 0xf8;
      002180 75 8C F8         [24]  701 	mov	_TH0,#0xf8
                                    702 ;	disp.c:112: TL0 = 0x00;
      002183 75 8A 00         [24]  703 	mov	_TL0,#0x00
                                    704 ;	disp.c:114: EN_TR0;
                                    705 ;	assignBit
      002186 D2 8C            [12]  706 	setb	_TR0
                                    707 ;	disp.c:116: return;
                                    708 ;	disp.c:117: }
      002188 D0 D0            [24]  709 	pop	psw
      00218A D0 E0            [24]  710 	pop	acc
      00218C 32               [24]  711 	reti
                                    712 ;	eliminated unneeded push/pop dpl
                                    713 ;	eliminated unneeded push/pop dph
                                    714 ;	eliminated unneeded push/pop b
                                    715 ;------------------------------------------------------------
                                    716 ;Allocation info for local variables in function 'main'
                                    717 ;------------------------------------------------------------
                                    718 ;j                         Allocated to registers r7 
                                    719 ;cycle                     Allocated to registers 
                                    720 ;------------------------------------------------------------
                                    721 ;	disp.c:119: void main(void) {
                                    722 ;	-----------------------------------------
                                    723 ;	 function main
                                    724 ;	-----------------------------------------
      00218D                        725 _main:
                           000007   726 	ar7 = 0x07
                           000006   727 	ar6 = 0x06
                           000005   728 	ar5 = 0x05
                           000004   729 	ar4 = 0x04
                           000003   730 	ar3 = 0x03
                           000002   731 	ar2 = 0x02
                           000001   732 	ar1 = 0x01
                           000000   733 	ar0 = 0x00
                                    734 ;	disp.c:123: init_gpo();
      00218D 12 20 9B         [24]  735 	lcall	_init_gpo
                                    736 ;	disp.c:124: clear_gpo();
      002190 12 20 DB         [24]  737 	lcall	_clear_gpo
                                    738 ;	disp.c:125: init_disp();
      002193 12 21 25         [24]  739 	lcall	_init_disp
                                    740 ;	disp.c:127: for (j = 1u; j < 8u; j++)
      002196 7F 01            [12]  741 	mov	r7,#0x01
      002198                        742 00113$:
                                    743 ;	disp.c:128: ddata[j] = ddata[j - 1u] + 1u;
      002198 EF               [12]  744 	mov	a,r7
      002199 24 2A            [12]  745 	add	a,#_ddata
      00219B F9               [12]  746 	mov	r1,a
      00219C EF               [12]  747 	mov	a,r7
      00219D 14               [12]  748 	dec	a
      00219E 24 2A            [12]  749 	add	a,#_ddata
      0021A0 F8               [12]  750 	mov	r0,a
      0021A1 E6               [12]  751 	mov	a,@r0
      0021A2 04               [12]  752 	inc	a
      0021A3 F7               [12]  753 	mov	@r1,a
                                    754 ;	disp.c:127: for (j = 1u; j < 8u; j++)
      0021A4 0F               [12]  755 	inc	r7
      0021A5 BF 08 00         [24]  756 	cjne	r7,#0x08,00156$
      0021A8                        757 00156$:
      0021A8 40 EE            [24]  758 	jc	00113$
                                    759 ;	disp.c:130: init_timer0();
      0021AA 12 21 19         [24]  760 	lcall	_init_timer0
                                    761 ;	disp.c:131: init_intr();
      0021AD 12 21 12         [24]  762 	lcall	_init_intr
                                    763 ;	disp.c:133: EN_TR0;
                                    764 ;	assignBit
      0021B0 D2 8C            [12]  765 	setb	_TR0
                                    766 ;	disp.c:135: for (cycle = 0u; ; cycle++) {
      0021B2 7E 00            [12]  767 	mov	r6,#0x00
      0021B4 7F 00            [12]  768 	mov	r7,#0x00
      0021B6                        769 00117$:
                                    770 ;	disp.c:136: printf("%0.4x\r\n", cycle);
      0021B6 C0 07            [24]  771 	push	ar7
      0021B8 C0 06            [24]  772 	push	ar6
      0021BA C0 06            [24]  773 	push	ar6
      0021BC C0 07            [24]  774 	push	ar7
      0021BE 74 4F            [12]  775 	mov	a,#___str_0
      0021C0 C0 E0            [24]  776 	push	acc
      0021C2 74 35            [12]  777 	mov	a,#(___str_0 >> 8)
      0021C4 C0 E0            [24]  778 	push	acc
      0021C6 74 80            [12]  779 	mov	a,#0x80
      0021C8 C0 E0            [24]  780 	push	acc
      0021CA 12 22 6B         [24]  781 	lcall	_printf
      0021CD E5 81            [12]  782 	mov	a,sp
      0021CF 24 FB            [12]  783 	add	a,#0xfb
      0021D1 F5 81            [12]  784 	mov	sp,a
      0021D3 D0 06            [24]  785 	pop	ar6
      0021D5 D0 07            [24]  786 	pop	ar7
                                    787 ;	disp.c:138: do {
      0021D7 7D 00            [12]  788 	mov	r5,#0x00
      0021D9                        789 00105$:
                                    790 ;	disp.c:172: __endasm;
      0021D9 00               [12]  791 	nop
      0021DA 00               [12]  792 	nop
      0021DB 00               [12]  793 	nop
      0021DC 00               [12]  794 	nop
      0021DD 00               [12]  795 	nop
      0021DE 00               [12]  796 	nop
      0021DF 00               [12]  797 	nop
      0021E0 00               [12]  798 	nop
      0021E1 00               [12]  799 	nop
      0021E2 00               [12]  800 	nop
      0021E3 00               [12]  801 	nop
      0021E4 00               [12]  802 	nop
      0021E5 00               [12]  803 	nop
      0021E6 00               [12]  804 	nop
      0021E7 00               [12]  805 	nop
      0021E8 00               [12]  806 	nop
      0021E9 00               [12]  807 	nop
      0021EA 00               [12]  808 	nop
      0021EB 00               [12]  809 	nop
      0021EC 00               [12]  810 	nop
      0021ED 00               [12]  811 	nop
      0021EE 00               [12]  812 	nop
      0021EF 00               [12]  813 	nop
      0021F0 00               [12]  814 	nop
      0021F1 00               [12]  815 	nop
      0021F2 00               [12]  816 	nop
      0021F3 00               [12]  817 	nop
      0021F4 00               [12]  818 	nop
      0021F5 00               [12]  819 	nop
      0021F6 00               [12]  820 	nop
      0021F7 00               [12]  821 	nop
      0021F8 00               [12]  822 	nop
                                    823 ;	disp.c:173: j++;
      0021F9 0D               [12]  824 	inc	r5
                                    825 ;	disp.c:174: } while (j);
      0021FA ED               [12]  826 	mov	a,r5
                                    827 ;	disp.c:176: for (j = 0u; j < 8u; j++) {
      0021FB 70 DC            [24]  828 	jnz	00105$
      0021FD FD               [12]  829 	mov	r5,a
      0021FE                        830 00115$:
                                    831 ;	disp.c:177: if (!j) ddata[j]++;
      0021FE ED               [12]  832 	mov	a,r5
      0021FF 70 0A            [24]  833 	jnz	00109$
      002201 ED               [12]  834 	mov	a,r5
      002202 24 2A            [12]  835 	add	a,#_ddata
      002204 F9               [12]  836 	mov	r1,a
      002205 E7               [12]  837 	mov	a,@r1
      002206 FC               [12]  838 	mov	r4,a
      002207 04               [12]  839 	inc	a
      002208 F7               [12]  840 	mov	@r1,a
      002209 80 0D            [24]  841 	sjmp	00116$
      00220B                        842 00109$:
                                    843 ;	disp.c:178: else ddata[j] = ddata[j - 1u] + 1u;
      00220B ED               [12]  844 	mov	a,r5
      00220C 24 2A            [12]  845 	add	a,#_ddata
      00220E F9               [12]  846 	mov	r1,a
      00220F ED               [12]  847 	mov	a,r5
      002210 14               [12]  848 	dec	a
      002211 24 2A            [12]  849 	add	a,#_ddata
      002213 F8               [12]  850 	mov	r0,a
      002214 E6               [12]  851 	mov	a,@r0
      002215 FC               [12]  852 	mov	r4,a
      002216 04               [12]  853 	inc	a
      002217 F7               [12]  854 	mov	@r1,a
      002218                        855 00116$:
                                    856 ;	disp.c:176: for (j = 0u; j < 8u; j++) {
      002218 0D               [12]  857 	inc	r5
      002219 BD 08 00         [24]  858 	cjne	r5,#0x08,00160$
      00221C                        859 00160$:
      00221C 40 E0            [24]  860 	jc	00115$
                                    861 ;	disp.c:135: for (cycle = 0u; ; cycle++) {
      00221E 0E               [12]  862 	inc	r6
                                    863 ;	disp.c:182: return;
      00221F BE 00 94         [24]  864 	cjne	r6,#0x00,00117$
      002222 0F               [12]  865 	inc	r7
                                    866 ;	disp.c:183: }
      002223 80 91            [24]  867 	sjmp	00117$
                                    868 	.area CSEG    (CODE)
                                    869 	.area CONST   (CODE)
                                    870 	.area CONST   (CODE)
      00354F                        871 ___str_0:
      00354F 25 30 2E 34 78         872 	.ascii "%0.4x"
      003554 0D                     873 	.db 0x0d
      003555 0A                     874 	.db 0x0a
      003556 00                     875 	.db 0x00
                                    876 	.area CSEG    (CODE)
                                    877 	.area XINIT   (CODE)
                                    878 	.area CABS    (ABS,CODE)
